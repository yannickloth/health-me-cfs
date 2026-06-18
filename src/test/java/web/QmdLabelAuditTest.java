// QmdLabelAuditTest — verify generated .qmd files have no orphaned {#...} label tags.
//
// Orphaned = {#some-id} on its own line, or {#some-id} at the start of a non-heading line.
// In Quarto, {#id} must be on the same line as its heading (## Heading {#id}) or inside
// a fenced-div opener (::: {#id}). Anywhere else it renders as visible text.
//
// Requires: .qmd files already generated (run BuildWeb.java first).
// Run: java --source 25 src/test/java/web/QmdLabelAuditTest.java [web-dir]

import static java.nio.file.Files.*;
import java.nio.file.*;
import java.util.*;
import java.util.regex.*;

record LabelFinding(String file, int line, String content, String issue) {
    @Override public String toString() {
        return "%s:%d  %s  [%s]".formatted(file, line, content.strip(), issue);
    }
}

void main(String[] args) throws Exception {
    var webDir = args.length > 0 ? Path.of(args[0]) : Path.of("web");
    if (!isDirectory(webDir)) {
        System.err.println("SKIP — web directory not found: " + webDir);
        System.err.println("Run BuildWeb.java first to generate .qmd files.");
        return;
    }

    var findings = new ArrayList<LabelFinding>();
    int filesScanned = 0;

    var labelOnOwnLine = Pattern.compile("^\\s*\\{#[a-zA-Z][\\w.-]*\\}\\s*$");
    var labelStartOfLine = Pattern.compile("^\\s*\\{#[a-zA-Z][\\w.-]*\\}\\s+\\S");
    var headingWithLabel = Pattern.compile("^\\s*#{1,6}\\s+.+\\{#[a-zA-Z][\\w.-]*\\}\\s*$");
    var fencedDivWithLabel = Pattern.compile("^\\s*:::\\s*\\{.*#[a-zA-Z][\\w.-]*.*\\}\\s*$");
    var htmlAnchor = Pattern.compile("^\\s*<span\\s+id=");
    var yamlFrontMatter = Pattern.compile("^---\\s*$");

    try (var stream = walk(webDir)) {
        for (var path : stream.filter(p -> p.toString().endsWith(".qmd")).sorted().toList()) {
            filesScanned++;
            var lines = readAllLines(path);
            var relPath = webDir.relativize(path).toString();
            boolean inYaml = false;

            for (int i = 0; i < lines.size(); i++) {
                var line = lines.get(i);

                if (yamlFrontMatter.matcher(line).matches()) {
                    inYaml = !inYaml;
                    continue;
                }
                if (inYaml) continue;

                if (labelOnOwnLine.matcher(line).matches()) {
                    findings.add(new LabelFinding(relPath, i + 1, line,
                        "orphaned label on own line — must be on heading or fenced-div line"));
                    continue;
                }

                if (labelStartOfLine.matcher(line).matches()
                        && !headingWithLabel.matcher(line).matches()
                        && !fencedDivWithLabel.matcher(line).matches()
                        && !htmlAnchor.matcher(line).matches()) {
                    findings.add(new LabelFinding(relPath, i + 1, line,
                        "label at start of non-heading line — renders as visible text"));
                }
            }
        }
    }

    if (findings.isEmpty()) {
        System.out.println("PASS — %d .qmd files scanned, no orphaned labels found".formatted(filesScanned));
        return;
    }

    System.err.println("FAIL — %d orphaned label(s) in %d .qmd files:".formatted(findings.size(), filesScanned));
    for (var f : findings) System.err.println("  " + f);
    System.exit(1);
}
