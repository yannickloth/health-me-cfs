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
    var webDir = args.length > 0 ? Path.of(args[0]) : Path.of("web");
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
            if (relPath.startsWith("blog/")) continue;
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
            "(?<!\\[)@([A-Z][a-z]+\\d{4}|[a-z]+\\d{4})(?!\\])");
        var alreadyBracketed = Pattern.compile("\\[@[A-Za-z]+\\d{4}\\]");
        var emailPat = Pattern.compile("[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}");
        for (int i = 0; i < lines.size(); i++) {
            var line = lines.get(i);
            if (yamlBoundary.matcher(line).matches() && !inYaml && i == 0) { inYaml = true; continue; }
            if (inYaml && yamlBoundary.matcher(line).matches()) { inYaml = false; continue; }
            if (fencedCode.matcher(line).matches()) { inCodeBlock = !inCodeBlock; continue; }
            if (inCodeBlock || inYaml) continue;
            if (emailPat.matcher(line).find()) continue;
            if (alreadyBracketed.matcher(line).find()) continue;

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
}
