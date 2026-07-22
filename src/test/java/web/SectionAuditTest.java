// SectionAuditTest — verify every Typst section at every heading level has body content.
// Walks src/main/typst/mecfs/ recursively resolving #include directives.
// Run: java --source 25 src/test/java/web/SectionAuditTest.java

import static java.nio.file.Files.*;
import java.nio.file.*;
import java.io.*;
import java.util.*;
import java.util.regex.*;

record Finding(String file, int line, String level, String heading, String issue) {
    @Override public String toString() {
        return "%s:%d  %s  %s  [%s]".formatted(file, line, level, heading, issue);
    }
}

void main() throws IOException {
    var srcRoot = Path.of("src/main/typst/mecfs");
    var findings = audit(srcRoot);

    if (findings.isEmpty()) {
        System.out.println("PASS — all %d sections have content".formatted(totalSections));
        return;
    }

    System.err.println("FAIL — %d of %d sections have issues:".formatted(findings.size(), totalSections));
    findings.forEach(f -> System.err.println("  " + f));
    System.exit(1);
}

int totalSections = 0;

List<Finding> audit(Path srcRoot) throws IOException {
    var findings = new ArrayList<Finding>();

    try (var dirs = list(srcRoot)) {
        for (var dir : dirs.sorted().toList()) {
            var dirName = dir.getFileName().toString();
            if (!dirName.startsWith("part") && !dirName.startsWith("z-") && !dirName.equals("shared"))
                continue;
            if (!isDirectory(dir)) continue;

            try (var files = list(dir)) {
                for (var file : files.sorted().toList()) {
                    var fname = file.getFileName().toString();
                    if (!fname.endsWith(".typ")) continue;
                    if (fname.startsWith(".")) continue;
                    if (fname.startsWith("part")) continue;

                    var resolved = resolveIncludes(file, srcRoot);
                    auditContent(resolved, fname, dirName, findings);
                }
            }
        }
    }
    return findings;
}

void auditContent(String content, String fname, String partName, List<Finding> findings) {
    var lines = content.split("\n");
    auditRecursive(lines, 0, lines.length, 1, fname, findings);
}

void auditRecursive(String[] lines, int start, int end, int minLevel, String fname, List<Finding> findings) {
    if (start >= end) return;

    int i = start;
    while (i < end) {
        var ln = lines[i].strip();
        if (!isHeading(ln, minLevel)) { i++; continue; }

        int lev = headingLevel(ln);
        String h = headingText(ln);
        totalSections++;

        // Cascade headings are self-contained summaries; sub-steps carry the content
        if (h.startsWith("Cascade:")) {
            // advance past this heading, skip empty check, recurse for sub-headings, then jump to next sibling
            int cascadeBodyEnd = end;
            for (int j = i + 1; j < end; j++) {
                var next = lines[j].strip();
                if (isHeading(next, 1) && headingLevel(next) <= lev) { cascadeBodyEnd = j; break; }
            }
            auditRecursive(lines, i + 1, cascadeBodyEnd, lev + 1, fname, findings);
            i = cascadeBodyEnd;
            continue;
        }

        int bodyStart = i + 1; // line number for error reporting
        i++; 

        // Find body span: until next heading at same or higher level
        int bodyEnd = end;
        for (int j = i; j < end; j++) {
            var next = lines[j].strip();
            if (isHeading(next, 1) && headingLevel(next) <= lev) { bodyEnd = j; break; }
        }

        // Count non-comment, non-label, non-structural body lines
        int body = 0;
        for (int j = i; j < bodyEnd; j++) {
            var s = lines[j].strip();
            if (isHeading(s, 1)) continue;
            if (s.isEmpty() || s.startsWith("//") || s.startsWith("#include") || isLabelLine(s)) continue;
            body++;
        }

        if (body == 0) {
            findings.add(new Finding(fname, bodyStart, "#".repeat(lev), h, "EMPTY"));
        }

        // Recurse for deeper headings within this section's body
        auditRecursive(lines, i, bodyEnd, lev + 1, fname, findings);

        i = bodyEnd;
    }
}

// -- Heading helpers --

boolean isHeading(String s, int minLevel) {
    if (minLevel > 6) return false;
    return s.matches("^={" + minLevel + ",6}\\s+.+");
}

int headingLevel(String s) {
    return (int) s.chars().takeWhile(c -> c == '=').count();
}

String headingText(String s) {
    return s.replaceAll("^=+\\s+|\\s*<[a-z]+:[^>]+>\\s*$", "").strip();
}

boolean isLabelLine(String s) {
    return s.matches("^<[a-zA-Z][\\w:\\.-]*>$");
}

// -- Include resolution (from BuildWeb.java) --

String resolveIncludes(Path file, Path srcRoot) throws IOException {
    var content = readString(file);
    var parent = file.getParent();
    var p = Pattern.compile("#include\\s+\"([^\"]+)\"");
    var m = p.matcher(content);
    var sb = new StringBuilder();
    while (m.find()) {
        var relPath = m.group(1);
        if (relPath.contains("figures/")) {
            m.appendReplacement(sb, Matcher.quoteReplacement(m.group()));
            continue;
        }
        var target = parent.resolve(relPath).normalize();
        if (!target.startsWith(srcRoot)) {
            m.appendReplacement(sb, "");
            continue;
        }
        try {
            var included = resolveIncludes(target, srcRoot);
            m.appendReplacement(sb, Matcher.quoteReplacement(included));
        } catch (NoSuchFileException e) {
            m.appendReplacement(sb, "");
        }
    }
    m.appendTail(sb);
    return sb.toString();
}
