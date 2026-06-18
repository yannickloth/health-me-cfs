import static java.nio.file.Files.*;
import java.io.IOException;
import java.nio.file.*;
import java.time.LocalDate;
import java.util.*;
import java.util.regex.*;
import java.util.stream.*;

record BlogFinding(String file, String issue, int level) {
    @Override public String toString() {
        return "%s  %s".formatted(file, issue);
    }
}

void main(String[] args) throws Exception {
    var blogDir = args.length > 0 ? Path.of(args[0]) : Path.of("web", "blog");
    if (!isDirectory(blogDir)) {
        System.err.println("SKIP — blog directory not found: " + blogDir);
        return;
    }

    var findings = new ArrayList<BlogFinding>();
    var postsDir = blogDir.resolve("posts");
    if (!isDirectory(postsDir)) {
        System.err.println("SKIP — blog posts directory not found: " + postsDir);
        return;
    }

    List<Path> postDirs;
    try (var stream = list(postsDir)) {
        postDirs = stream.filter(Files::isDirectory)
            .filter(d -> isRegularFile(d.resolve("index.qmd")))
            .sorted()
            .toList();
    }

    int filesScanned = 0;
    var datesUsed = new HashMap<String, List<String>>();

    for (var postDir : postDirs) {
        var qmd = postDir.resolve("index.qmd");
        var relPath = blogDir.relativize(qmd).toString();
        var lines = readAllLines(qmd);
        filesScanned++;

        var fmEnd = -1;
        var fmStart = -1;
        for (int i = 0; i < lines.size(); i++) {
            if (lines.get(i).strip().equals("---")) {
                if (fmStart == -1) fmStart = i;
                else { fmEnd = i; break; }
            }
        }

        // Check 11: Front matter validation
        if (fmStart == -1 || fmEnd == -1) {
            findings.add(new BlogFinding(relPath, "no YAML front matter (missing --- markers)", 2));
            continue;
        }

        var fmLines = lines.subList(fmStart + 1, fmEnd);
        var required = Map.of(
            "title:", "title",
            "date:", "date",
            "description:", "description",
            "categories:", "categories",
            "author:", "author"
        );
        var missing = new ArrayList<String>();
        for (var key : required.keySet()) {
            boolean found = false;
            for (var fl : fmLines) {
                if (fl.strip().startsWith(key)) { found = true; break; }
            }
            if (!found) missing.add(required.get(key));
        }
        if (!missing.isEmpty()) {
            findings.add(new BlogFinding(relPath, "missing front matter field(s): " + String.join(", ", missing), 2));
        }

        // Check 12: Date validation
        for (var fl : fmLines) {
            var s = fl.strip();
            if (s.startsWith("date:")) {
                var raw = s.substring(5).strip();
                raw = raw.replaceAll("^\"|\"$", "").replaceAll("^'|'$", "");
                if (raw.isEmpty()) {
                    findings.add(new BlogFinding(relPath, "empty date field", 2));
                } else if (!raw.matches("\\d{4}-\\d{2}-\\d{2}")) {
                    findings.add(new BlogFinding(relPath, "date not in YYYY-MM-DD format: " + raw, 2));
                } else {
                    var d = LocalDate.parse(raw);
                    var tomorrow = LocalDate.now().plusDays(1);
                    if (d.isAfter(tomorrow)) {
                        findings.add(new BlogFinding(relPath, "date is in the future: " + raw + " (scheduled)", 1));
                    }
                    datesUsed.computeIfAbsent(raw, k -> new ArrayList<>()).add(relPath);
                }
            }
        }

        // Check 13: Broken link detection
        var linkPattern = Pattern.compile("\\[([^]]*)\\]\\(([^)]*)\\)");
        var bareUrlPattern = Pattern.compile("(?<![\\[(])\\bhttps?://[^\\s)\\]>]+");
        var bodyLines = lines.subList(fmEnd + 1, lines.size());

        for (int i = 0; i < bodyLines.size(); i++) {
            var line = bodyLines.get(i);
            var lineNum = fmEnd + 1 + i + 1; // 1-indexed

            // Check markdown links
            var m = linkPattern.matcher(line);
            while (m.find()) {
                var url = m.group(2).strip();
                if (url.isEmpty()) {
                    findings.add(new BlogFinding(relPath + ":" + lineNum, "empty URL in link [" + m.group(1) + "]", 2));
                    continue;
                }
                if (url.contains(" ")) {
                    findings.add(new BlogFinding(relPath + ":" + lineNum, "URL contains spaces: " + url, 2));
                }
                if (url.contains("<") || url.contains(">")) {
                    findings.add(new BlogFinding(relPath + ":" + lineNum, "URL contains angle brackets: " + url, 2));
                }
                if (url.startsWith("http://") || url.startsWith("https://")) {
                    var afterProtocol = url.substring(url.indexOf("://") + 3);
                    if (afterProtocol.startsWith("//")) {
                        findings.add(new BlogFinding(relPath + ":" + lineNum, "URL has double slashes after domain: " + url, 2));
                    }
                    var slashIdx = afterProtocol.indexOf('/');
                    var domain = slashIdx >= 0 ? afterProtocol.substring(0, slashIdx) : afterProtocol;
                    if (!domain.contains(".")) {
                        findings.add(new BlogFinding(relPath + ":" + lineNum, "URL missing TLD: " + url, 2));
                    }
                }
                if (url.startsWith("../") || url.startsWith("/")) {
                    Path target;
                    if (url.startsWith("../")) {
                        target = qmd.getParent().resolve(url).normalize();
                    } else {
                        target = blogDir.resolve(url.substring(1)).normalize();
                    }
                    if (!exists(target)) {
                        findings.add(new BlogFinding(relPath + ":" + lineNum, "internal link target not found: " + url + " (resolved: " + target + ")", 2));
                    }
                }
            }

            // Check bare URLs (not inside a markdown link)
            var bm = bareUrlPattern.matcher(line);
            while (bm.find()) {
                var start = bm.start();
                var preChar = start > 0 ? line.charAt(start - 1) : ' ';
                if (preChar != '(') {
                    findings.add(new BlogFinding(relPath + ":" + lineNum, "bare URL in text (should be wrapped in angle brackets or markdown link): " + bm.group(), 1));
                }
            }
        }
    }

    // Duplicate date check (warning only)
    for (var entry : datesUsed.entrySet()) {
        if (entry.getValue().size() > 1) {
            findings.add(new BlogFinding(
                String.join(", ", entry.getValue()),
                "duplicate date: " + entry.getKey(),
                1
            ));
        }
    }

    var errors = findings.stream().filter(f -> f.level() == 2).toList();
    var warnings = findings.stream().filter(f -> f.level() == 1).toList();

    if (errors.isEmpty() && warnings.isEmpty()) {
        System.out.println("PASS — %d blog posts scanned, no issues found".formatted(filesScanned));
        return;
    }

    if (errors.isEmpty()) {
        System.out.println("PASS — %d blog posts scanned, %d warning(s):".formatted(filesScanned, warnings.size()));
    } else {
        System.err.println("FAIL — %d error(s), %d warning(s) in %d blog posts:".formatted(errors.size(), warnings.size(), filesScanned));
    }
    if (!errors.isEmpty()) {
        System.err.println("\nErrors:");
        for (var f : errors) System.err.println("  " + f);
    }
    if (!warnings.isEmpty()) {
        System.err.println("\nWarnings:");
        for (var f : warnings) System.err.println("  " + f);
    }
    if (!errors.isEmpty()) System.exit(1);
}
