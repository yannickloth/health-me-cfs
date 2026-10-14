// QmdQualityAuditTest — audit generated .qmd files for heading hierarchy, unclosed
// callouts, raw Typst leakage, broken citation format, and cross-ref format issues.
//
// Requires: .qmd files already generated (run BuildWeb.java first).
// Run: java --source 25 src/test/java/web/QmdQualityAuditTest.java [web-dir]

import static java.nio.file.Files.*;
import java.nio.file.*;
import java.util.*;
import java.util.regex.*;

record QualityFinding(int check, String file, int line, String detail) {
    @Override public String toString() {
        return "chk%d  %s:%d  %s".formatted(check, file, line, detail);
    }
}

void main(String[] args) throws Exception {
    var webDir = args.length > 0 ? Path.of(args[0]) : Path.of("target/quarto");
    if (!isDirectory(webDir)) {
        System.err.println("SKIP — web directory not found: " + webDir);
        System.err.println("Run BuildWeb.java first to generate .qmd files.");
        return;
    }

    var findings = new ArrayList<QualityFinding>();
    int filesScanned = 0;

    try (var stream = walk(webDir)) {
        for (var path : stream.filter(p -> p.toString().endsWith(".qmd")).sorted().toList()) {
            var relPath = webDir.relativize(path).toString();
            if (relPath.startsWith("blog/") || relPath.contains("/blog/posts/")) continue;
            filesScanned++;
            var lines = readAllLines(path);
            auditFile(lines, relPath, findings);
        }
    }

    if (findings.isEmpty()) {
        System.out.println("PASS — %d .qmd files scanned, no quality issues found".formatted(filesScanned));
        return;
    }

    System.err.println("FAIL — %d quality issue(s) in %d .qmd files:".formatted(findings.size(), filesScanned));
    for (var f : findings) System.err.println("  " + f);
    System.exit(1);
}

Pattern yamlBoundary = Pattern.compile("^---\\s*$");
Pattern fencedCode = Pattern.compile("^```");
Pattern htmlCommentOpen = Pattern.compile("<!--");
Pattern htmlCommentClose = Pattern.compile("-->");

void auditFile(List<String> lines, String relPath, List<QualityFinding> findings) {
    boolean inYaml = false;
    boolean inCodeBlock = false;
    boolean inHtmlComment = false;

    // Check 6: heading hierarchy
    var headingPat = Pattern.compile("^(#{1,6})\\s+(.+)$");
    var lastLevelAtLine = new int[lines.size()];
    Arrays.fill(lastLevelAtLine, 0);
    int prevLevel = 0;
    int calloutDepth = 0;

    for (int i = 0; i < lines.size(); i++) {
        var line = lines.get(i);
        if (yamlBoundary.matcher(line).matches() && !inYaml && i == 0) { inYaml = true; continue; }
        if (inYaml && yamlBoundary.matcher(line).matches()) { inYaml = false; continue; }
        if (fencedCode.matcher(line).matches()) { inCodeBlock = !inCodeBlock; continue; }
        if (inCodeBlock || inYaml) continue;

        if (line.strip().startsWith("::: {")) calloutDepth++;
        else if (line.strip().equals(":::")) calloutDepth = Math.max(0, calloutDepth - 1);

        var hm = headingPat.matcher(line);
        if (hm.matches() && calloutDepth == 0) {
            int lev = hm.group(1).length();
            if (prevLevel > 0 && lev > prevLevel + 1) {
                findings.add(new QualityFinding(6, relPath, i + 1,
                    "heading level skip: \"%s\" at level %d, expected level <= %d"
                        .formatted(hm.group(2), lev, prevLevel + 1)));
            }
            if (lev > 1) {
                int ancestor = 0;
                for (int j = i - 1; j >= 0; j--) {
                    var p = headingPat.matcher(lines.get(j));
                    if (p.matches() && p.group(1).length() == lev - 1) { ancestor = lev - 1; break; }
                }
                if (ancestor == 0 && prevLevel > 0 || (ancestor > 0 && prevLevel > 0 && lev > prevLevel + 1)) {
                }
            }
            prevLevel = lev;
        }
    }

    // Check 7: unclosed callouts
    {
        inYaml = false;
        inCodeBlock = false;
        int nested = 0;
        var calloutOpen  = Pattern.compile("^\\s*:::\\s*\\{.*\\.callout-.*\\}\\s*$");
        var calloutClose = Pattern.compile("^\\s*:::\\s*$");
        for (int i = 0; i < lines.size(); i++) {
            var line = lines.get(i);
            if (yamlBoundary.matcher(line).matches() && !inYaml && i == 0) { inYaml = true; continue; }
            if (inYaml && yamlBoundary.matcher(line).matches()) { inYaml = false; continue; }
            if (fencedCode.matcher(line).matches()) { inCodeBlock = !inCodeBlock; continue; }
            if (inCodeBlock || inYaml) continue;
            if (calloutOpen.matcher(line).matches()) nested++;
            else if (calloutClose.matcher(line).matches() && !line.contains("{") && nested > 0) nested--;
        }
        if (nested > 0) {
            findings.add(new QualityFinding(7, relPath, 1,
                "%d unclosed callout(s)".formatted(nested)));
        }
    }

    // Check 8: raw Typst leakage
    {
        inYaml = false;
        inCodeBlock = false;
        inHtmlComment = false;
        var typstLeak = Pattern.compile("#(figure\\(|table\\(|include |import |set |show |let |bibliography)");
        for (int i = 0; i < lines.size(); i++) {
            var line = lines.get(i);
            if (yamlBoundary.matcher(line).matches() && !inYaml && i == 0) { inYaml = true; continue; }
            if (inYaml && yamlBoundary.matcher(line).matches()) { inYaml = false; continue; }
            if (fencedCode.matcher(line).matches()) { inCodeBlock = !inCodeBlock; continue; }
            if (inCodeBlock || inYaml) continue;
            if (htmlCommentOpen.matcher(line).find()) inHtmlComment = true;
            if (inHtmlComment) { if (htmlCommentClose.matcher(line).find()) inHtmlComment = false; continue; }
            if (inHtmlComment) continue;

            var m = typstLeak.matcher(line);
            while (m.find()) {
                findings.add(new QualityFinding(8, relPath, i + 1,
                    "raw Typst syntax: #%s".formatted(m.group(1).replace("(", "").strip())));
            }
        }
    }

    // Check 9: broken citation format
    {
        inYaml = false;
        inCodeBlock = false;
        var bareCite = Pattern.compile(
            "(?<!\\[)@([A-Z][a-z]+\\d{4}\\b)(?!\\s*\\])");
        var emailPat = Pattern.compile("[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}");
        for (int i = 0; i < lines.size(); i++) {
            var line = lines.get(i);
            if (yamlBoundary.matcher(line).matches() && !inYaml && i == 0) { inYaml = true; continue; }
            if (inYaml && yamlBoundary.matcher(line).matches()) { inYaml = false; continue; }
            if (fencedCode.matcher(line).matches()) { inCodeBlock = !inCodeBlock; continue; }
            if (inCodeBlock || inYaml) continue;
            if (emailPat.matcher(line).find()) continue;

            var m = bareCite.matcher(line);
            while (m.find()) {
                findings.add(new QualityFinding(9, relPath, i + 1,
                    "bare citation key: @%s — should be [@%s]".formatted(m.group(1), m.group(1))));
            }
        }
    }

    // Check 10: cross-ref format validator
    {
        inYaml = false;
        inCodeBlock = false;
        var colonRef = Pattern.compile("@([a-z]+:[a-zA-Z0-9_-]+)");
        var angleRef = Pattern.compile("<(sec|ch|subsec|fig|tab|eq|hyp|spec|oq|ach|pred|prop|lim|obs|warn|rec|dir|app):[^>]+>");
        for (int i = 0; i < lines.size(); i++) {
            var line = lines.get(i);
            if (yamlBoundary.matcher(line).matches() && !inYaml && i == 0) { inYaml = true; continue; }
            if (inYaml && yamlBoundary.matcher(line).matches()) { inYaml = false; continue; }
            if (fencedCode.matcher(line).matches()) { inCodeBlock = !inCodeBlock; continue; }
            if (inCodeBlock || inYaml) continue;

            var cm = colonRef.matcher(line);
            while (cm.find()) {
                findings.add(new QualityFinding(10, relPath, i + 1,
                    "colon-form cross-ref: @%s — should use dash form @%s"
                        .formatted(cm.group(1), cm.group(1).replace(':', '-'))));
            }

            var am = angleRef.matcher(line);
            while (am.find()) {
                findings.add(new QualityFinding(10, relPath, i + 1,
                    "angle-bracket cross-ref: <%s> — should use Quarto {#%s} format"
                        .formatted(am.group(), am.group().replace(':', '-'))));
            }
        }
    }

    // Check 11: YAML frontmatter double-quoted scalars with invalid escapes.
    // Quarto's YAML parser aborts the whole unit on one bad escape, so a Typst
    // escaped space (`\ `) leaking into a `title:` breaks the web build.
    // Validate every quoted scalar in the frontmatter block.
    {
        if (lines.isEmpty() || !yamlBoundary.matcher(lines.get(0)).matches()) return;
        var scalar = Pattern.compile("^([A-Za-z0-9_.-]+):\\s*\"((?:[^\"\\\\]|\\\\.)*)\"\\s*$");
        for (int i = 1; i < lines.size(); i++) {
            var line = lines.get(i);
            if (yamlBoundary.matcher(line).matches()) break;
            var m = scalar.matcher(line);
            if (!m.matches()) continue;
            var s = m.group(2);
            int j = 0;
            while (j < s.length()) {
                if (s.charAt(j) != '\\') { j++; continue; }
                var c = j + 1 < s.length() ? s.charAt(j + 1) : '\0';
                if (c == 'x') { if (!hexAt(s, j + 2, 2)) { yamlEscapeFinding(findings, relPath, i + 1, line, j); break; } j += 4; continue; }
                if (c == 'u') { if (!hexAt(s, j + 2, 4)) { yamlEscapeFinding(findings, relPath, i + 1, line, j); break; } j += 6; continue; }
                if (c == 'U') { if (!hexAt(s, j + 2, 8)) { yamlEscapeFinding(findings, relPath, i + 1, line, j); break; } j += 10; continue; }
                if (YAML_ESCAPES.indexOf(c) < 0) { yamlEscapeFinding(findings, relPath, i + 1, line, j); break; }
                j += 2;
            }
        }
    }
}

static final String YAML_ESCAPES = "\\\"'/0abtnvfreNLP";

boolean hexAt(String s, int at, int len) {
    if (at + len > s.length()) return false;
    for (int k = at; k < at + len; k++) {
        var c = s.charAt(k);
        if (!((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || (c >= 'A' && c <= 'F'))) return false;
    }
    return true;
}

void yamlEscapeFinding(List<QualityFinding> findings, String relPath, int lineNo, String line, int at) {
    var s = line.substring(line.indexOf('"') + 1);
    var esc = at + 1 < s.length() ? String.valueOf(s.charAt(at + 1)) : "";
    findings.add(new QualityFinding(11, relPath, lineNo,
        "invalid YAML escape in double-quoted scalar: '\\%s' in %s — Quarto aborts the unit"
            .formatted(esc, line.strip())));
}
