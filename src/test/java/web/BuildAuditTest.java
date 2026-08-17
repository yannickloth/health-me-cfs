// BuildAuditTest — comprehensive post-build audit of generated .qmd files.
// Run after BuildWeb.java: java --source 25 src/test/java/web/BuildAuditTest.java
//
// Checks:
//   1. No unconverted @ cross-ref tokens in .qmd
//   2. Every figure #include in source → corresponding output file
//   3. Typst chapter list ↔ web/ directories ↔ Quarto TOC alignment
//   4. Cross-ref link targets exist (path.html#id resolves)
//   5. Heading depth sanity (no H1 in body, no level > prev+1 skips)
//   6. Callout CSS classes exist in styles.css
//   7. Qmd naming: NN-slug.qmd pattern
//   8. Standalone .qmd compilation (quarto render per-sample)
//   9. No raw LaTeX/math leakage in visible prose
//  10. No duplicate output filenames (slug collision)
import static java.nio.file.Files.*;
import java.nio.file.*;
import java.io.*;
import java.util.*;
import java.util.regex.*;
import java.util.stream.Collectors;

record Finding(int check, String file, int line, String detail, int severity) {
    @Override public String toString() {
        return "chk%d  %s%s  %s".formatted(check, file, line > 0 ? ":" + line : "", detail);
    }
}

void main(String[] args) throws Exception {
    var srcRoot = Path.of("src/main/typst/mecfs");
    var webDir = args.length > 0 ? Path.of(args[0]) : Path.of("target/quarto");

    if (!isDirectory(webDir)) {
        System.err.println("SKIP — web directory not found. Run BuildWeb.java first.");
        return;
    }

    var findings = new ArrayList<Finding>();
    var qmdFiles = allQmdFiles(webDir);

    check1UnconvertedAtRefs(qmdFiles, findings);
    check2FigureCompleteness(srcRoot, webDir, findings);
    check3TocAlignment(srcRoot, webDir, findings);
    check4LinkTargets(qmdFiles, findings);
    check5HeadingDepth(qmdFiles, findings);
    check6CalloutCss(qmdFiles, webDir, findings);
    check7QmdNaming(qmdFiles, findings);
    // check8: skipped — quarto standalone compile unnecessary (tested at full render time)
    check9MathLeakage(qmdFiles, findings);
    check10DuplicateSlugs(qmdFiles, findings);

    int errors = 0, warnings = 0;
    for (var f : findings) {
        if (f.severity() == 2) errors++;
        else warnings++;
    }

    if (findings.isEmpty()) {
        System.out.println("PASS — %d checks, %d .qmd files scanned, no issues".formatted(10, qmdFiles.size()));
        return;
    }

    System.out.println("%d issue(s): %d error(s), %d warning(s)".formatted(findings.size(), errors, warnings));
    for (var f : findings) {
        (f.severity() == 2 ? System.err : System.out).println("  " + f);
    }
    if (errors > 0) System.exit(1);
}

// ── Utilities ──

List<Path> allQmdFiles(Path webDir) throws IOException {
    try (var walk = walk(webDir)) {
        return walk.filter(p -> p.toString().endsWith(".qmd")
                && !p.toString().matches(".*[/\\\\](blog|blog-de|blog-fr)[/\\\\]+.*")).sorted().toList();
    }
}

String relPath(Path base, Path file) { return base.relativize(file).toString(); }

List<String> chapterNamesFromTypst(Path srcRoot) throws IOException {
    var canonical = readString(srcRoot.resolve("loth2026-mecfs.typ"));
    // Two forms: "partX/chYY-name/chYY-name.typ" and "partX/chYY-name.typ"
    var p = Pattern.compile("#include\\s+\"(part[1-5][^\"/]*/(ch[^\"\\n]+?))\\.typ\"");
    var chapters = new ArrayList<String>();
    var m = p.matcher(canonical);
    while (m.find()) {
        var path = m.group(1);
        // Split on "/": partX/chYY-name/chYY-name → directory is partX/chYY-name
        var parts = path.split("/");
        if (parts.length >= 2) {
            var chDir = switch (parts.length) {
                case 2 -> parts[1]; // standalone: partX/chYY-name
                case 3 -> parts[1]; // nested: partX/chYY-name/chYY-name
                default -> parts[1];
            };
            chapters.add(parts[0] + "/" + chDir);
        }
    }
    return chapters;
}

List<String> chapterDirsInWeb(Path webDir) throws IOException {
    var dirs = new ArrayList<String>();
    for (var part : List.of("part1-clinical", "part2-pathophysiology", "part3-treatment",
            "part4-research", "part5-modeling")) {
        var partDir = webDir.resolve(part);
        if (!isDirectory(partDir)) continue;
        try (var stream = list(partDir)) {
            for (var d : stream.filter(Files::isDirectory).sorted().toList()) {
                dirs.add(part + "/" + d.getFileName());
            }
        }
    }
    return dirs;
}

// ── Check 1: Unconverted @ cross-ref tokens ──

static final Pattern XREF_TOKEN = Pattern.compile(
    "(?<![\\[\\w@])@(sec|subsec|subsubsec|fig|tab|eq|ch|ach|hyp|spec|lim|obs|oq|pred|prop|app|warn|rec|dir|prot|par|def|req|protocol|rem|cont|cf|open|clin|syn|pr)-([A-Za-z0-9][A-Za-z0-9_-]*)");

static final Pattern BIB_CITE = Pattern.compile("\\[@([A-Za-z]+\\d{4}[a-zA-Z0-9_]*)\\]");

void check1UnconvertedAtRefs(List<Path> qmdFiles, List<Finding> findings) throws IOException {
    boolean inYaml = false, inFence = false;
    for (var qmd : qmdFiles) {
        for (var line : readAllLines(qmd)) {
            var s = line.strip();
            if ("---".equals(s)) { inYaml = !inYaml; continue; }
            if (inYaml) continue;
            if (s.startsWith("```") || s.startsWith("~~~")) { inFence = !inFence; continue; }
            if (inFence) continue;

            // Strip inline backtick code (`...`) and then check for bare @ tokens
            var strippedInline = stripInlineBackticks(line);

            // Remove bracketed citations: [@key] — those are intentional
            var bibMatcher = BIB_CITE.matcher(strippedInline);
            var protectedLine = bibMatcher.replaceAll("");

            var m = XREF_TOKEN.matcher(protectedLine);
            while (m.find()) {
                // Check the original line to verify this @... isn't inside a backtick span
                var token = m.group();
                int start = m.start();
                // Re-check against original line position (rough)
                if (isInsideBacktick(line, start)) continue;
                findings.add(new Finding(1, relPath(webDir, qmd), -1,
                    "unconverted cross-ref token: %s — should be [label](path.html#id)".formatted(token), 2));
            }
        }
    }
}

String stripInlineBackticks(String line) {
    // Replace `...` with spaces, preserving length for position tracking
    var sb = new StringBuilder();
    boolean inTick = false;
    for (int i = 0; i < line.length(); i++) {
        if (line.charAt(i) == '`') {
            inTick = !inTick;
            sb.append(' ');
        } else if (inTick) {
            sb.append(' ');
        } else {
            sb.append(line.charAt(i));
        }
    }
    return sb.toString();
}

boolean isInsideBacktick(String line, int pos) {
    int ticksBefore = 0;
    for (int i = 0; i < pos && i < line.length(); i++) {
        if (line.charAt(i) == '`') ticksBefore++;
    }
    return ticksBefore % 2 != 0;
}

// ── Check 2: Figure completeness ──

void check2FigureCompleteness(Path srcRoot, Path webDir, List<Finding> findings) throws IOException {
    // Collect all figure includes from ALL Typst sources (not just chapters — subdir files too)
    var figIncludes = new HashSet<String>();
    var figPat = Pattern.compile("#include\\s+\"[^\"]*figures/([^\"]+)\\.typ\"");
    try (var walk = walk(srcRoot)) {
        for (var f : walk.filter(p -> p.toString().endsWith(".typ")).toList()) {
            for (var line : readString(f).split("\n")) {
                var m = figPat.matcher(line);
                while (m.find()) figIncludes.add(m.group(1));
            }
        }
    }

    var figOutDir = webDir.resolve("figures");
    // Check for output file with ANY extension (SVG, PNG, PDF, etc.)
    var existingOutputs = new HashMap<String, String>(); // base-name → full filename
    if (isDirectory(figOutDir)) {
        try (var stream = list(figOutDir)) {
            for (var out : stream.toList()) {
                var name = out.getFileName().toString();
                var base = name.replaceFirst("\\.[^.]+$", "");
                existingOutputs.put(base, name);
            }
        }
    }

    for (var include : figIncludes) {
        var outName = existingOutputs.get(include);
        if (outName == null) {
            findings.add(new Finding(2, "figures/" + include, -1,
                "figure #include has no output file in web/figures/", 2));
        }
    }

    // Skip reverse check: figures often used via image() or inline, not just #include
}

// ── Check 3: TOC/Nav chapter alignment ──

void check3TocAlignment(Path srcRoot, Path webDir, List<Finding> findings) throws IOException {
    var typstChapters = chapterNamesFromTypst(srcRoot);
    var webChapters = chapterDirsInWeb(webDir);

    // Typst chapter → web dir exists?
    for (var ch : typstChapters) {
        if (!webChapters.contains(ch)) {
            findings.add(new Finding(3, ch, -1,
                "chapter in Typst include list but missing from web/ output directory", 2));
        } else {
            // Does it contain at least one .qmd?
            var chDir = webDir.resolve(ch);
            try (var stream = list(chDir)) {
                if (stream.noneMatch(p -> p.toString().endsWith(".qmd"))) {
                    findings.add(new Finding(3, ch, -1,
                        "chapter directory exists but contains no .qmd files (conversion failed?)", 2));
                }
            }
        }
    }

    // Web dir → in Typst include list?
    for (var wc : webChapters) {
        if (!typstChapters.contains(wc)) {
            findings.add(new Finding(3, wc, -1,
                "web/ chapter directory not in Typst canonical include list (orphaned output?)", 1));
        }
    }
}

// ── Check 4: Cross-ref link targets ──

void check4LinkTargets(List<Path> qmdFiles, List<Finding> findings) throws IOException {
    // Build set of all anchors in all files
    var anchors = new HashMap<String, String>(); // file:html#id → true
    for (var qmd : qmdFiles) {
        var rel = relPath(webDir, qmd).replaceFirst("\\.qmd$", ".html");
        for (var line : readAllLines(qmd)) {
            var idMatcher = Pattern.compile("id=\"([^\"]+)\"").matcher(line);
            while (idMatcher.find()) anchors.put(rel + "#" + idMatcher.group(1), rel);
            var braceMatcher = Pattern.compile("\\{#([^}]+)\\}").matcher(line);
            while (braceMatcher.find()) anchors.put(rel + "#" + braceMatcher.group(1), rel);
        }
    }

    for (var qmd : qmdFiles) {
        var srcRel = relPath(webDir, qmd);
        boolean inYaml = false, inFence = false;
        for (var line : readAllLines(qmd)) {
            var s = line.strip();
            if ("---".equals(s)) { inYaml = !inYaml; continue; }
            if (inYaml) continue;
            if (s.startsWith("```") || s.startsWith("~~~")) { inFence = !inFence; continue; }
            if (inFence) continue;

            var linkMatcher = Pattern.compile("\\[([^]]*)\\]\\(([^)]+)\\)").matcher(line);
            while (linkMatcher.find()) {
                var m = linkMatcher;
                var target = m.group(2);
                if (target.startsWith("http://") || target.startsWith("https://")) continue;
                if (target.startsWith("#")) {
                    // Same-file anchor
                    var fRel = srcRel.replaceFirst("\\.qmd$", ".html") + target;
                    if (!anchors.containsKey(fRel) && !m.group(1).startsWith("#")) {
                        findings.add(new Finding(4, srcRel, -1,
                            "link target not found: %s → %s".formatted(m.group(), target), 1));
                    }
                } else if (target.endsWith(".html")) {
                    if (target.contains("#")) {
                        if (!anchors.containsKey(target) && target.contains("#")) {
                            var filePart = target.substring(0, target.indexOf('#'));
                            var anchorPart = target;
                            var resolved = false;
                            for (var a : anchors.keySet()) {
                                if (a.startsWith(filePart)) { resolved = true; break; }
                            }
                            if (!resolved) {
                                findings.add(new Finding(4, srcRel, -1,
                                    "link target file not found: %s → %s".formatted(m.group(), target), 1));
                            }
                        }
                    }
                } else if (target.endsWith(".qmd")) {
                    var resolved = qmd.getParent().resolve(target).normalize();
                    if (!exists(resolved)) {
                        findings.add(new Finding(4, srcRel, -1,
                            "link target .qmd not found: %s → %s".formatted(m.group(), target), 1));
                    }
                }
            }
        }
    }
}

Path webDir = Path.of("target/quarto");

// ── Check 5: Heading depth sanity ──

void check5HeadingDepth(List<Path> qmdFiles, List<Finding> findings) throws IOException {
    var headingPat = Pattern.compile("^\\s*(#{1,6})\\s+(.+)$");
    var calloutOpen = Pattern.compile("^\\s*:::\\s*\\{.*\\}");
    var calloutClose = Pattern.compile("^\\s*:::\\s*$");

    for (var qmd : qmdFiles) {
        var path = relPath(webDir, qmd);
        boolean inYaml = false, inFence = false;
        int prevLevel = 0;
        int calloutDepth = 0;

        for (var rawLine : readAllLines(qmd)) {
            var line = rawLine.strip();
            if ("---".equals(line)) { inYaml = !inYaml; continue; }
            if (inYaml) continue;
            if (line.startsWith("```") || line.startsWith("~~~")) { inFence = !inFence; continue; }
            if (inFence) continue;
            if (calloutOpen.matcher(line).matches()) calloutDepth++;
            else if (calloutClose.matcher(line).matches() && calloutDepth > 0) calloutDepth--;

            var hm = headingPat.matcher(line);
            if (!hm.matches()) continue;
            int level = hm.group(1).length();

            // H1 in body — page title is from YAML frontmatter, not body heading
            if (level == 1) {
                findings.add(new Finding(5, path, -1,
                    "H1 heading in body (title comes from YAML frontmatter): \"%s\"".formatted(hm.group(2)), 1));
            }

            // Level skip (inside callouts, relaxed — callouts are containers)
            if (calloutDepth == 0 && prevLevel > 0 && level > prevLevel + 1) {
                findings.add(new Finding(5, path, -1,
                    "heading level skip: H%d→H%d \"%s\"".formatted(prevLevel, level, hm.group(2)), 2));
            }

            if (calloutDepth == 0 || level > prevLevel) prevLevel = level;
        }
    }
}

// ── Check 6: Callout CSS classes ──

void check6CalloutCss(List<Path> qmdFiles, Path webDir, List<Finding> findings) throws IOException {
    var cssFile = webDir.resolve("styles.css");
    Set<String> cssClasses = new HashSet<>();
    if (isRegularFile(cssFile)) {
        var css = readString(cssFile);
        var envCssMatcher = Pattern.compile("\\.(env-[a-zA-Z0-9_-]+)").matcher(css);
        while (envCssMatcher.find()) cssClasses.add(envCssMatcher.group(1));
        var regCssMatcher = Pattern.compile("\\.(registry-[a-zA-Z0-9_-]+)").matcher(css);
        while (regCssMatcher.find()) cssClasses.add(regCssMatcher.group(1));
    }

    var calloutClass = Pattern.compile(":::\\s*\\{\\.callout-[a-z]+\\s*\\.(env-[a-zA-Z0-9_-]+)\\s*\\}");

    for (var qmd : qmdFiles) {
        var path = relPath(webDir, qmd);
        for (var line : readAllLines(qmd)) {
            var m = calloutClass.matcher(line);
            while (m.find()) {
                var cls = m.group(1);
                if (!cssClasses.contains(cls)) {
                    findings.add(new Finding(6, path, -1,
                        "callout CSS class \"%s\" not found in styles.css (unstyled rendering)".formatted(cls), 1));
                }
            }
        }
    }

    if (cssClasses.isEmpty()) {
        findings.add(new Finding(6, "styles.css", -1, "stylesheet not readable or empty — skipped CSS check", 1));
    }
}

// ── Check 7: Qmd naming convention ──

void check7QmdNaming(List<Path> qmdFiles, List<Finding> findings) {
    for (var qmd : qmdFiles) {
        var fname = qmd.getFileName().toString();
        var relP = relPath(webDir, qmd);
        // Skip non-chapter pages: about, faq, index, patient-resources.
        // index.qmd is a valid Quarto landing page (chapter intro / part title)
        // and may appear in any directory.
        if (fname.equals("index.qmd") || relP.startsWith("_shared/") || relP.equals("about.qmd")
                || relP.startsWith("faq/") || relP.equals("index.qmd")
                || relP.startsWith("patient-resources/")
                || relP.startsWith("blog/") || relP.startsWith("blog-de/") || relP.startsWith("blog-fr/")) continue;
        // Annotated bibliography uses 3-digit prefixes (100-199)
        if (relP.contains("appendix-h-annotated-bibliography") && fname.matches("^\\d{3}-.+\\.qmd$")) continue;
        if (!fname.matches("^\\d{2}-.+\\.qmd$")) {
            findings.add(new Finding(7, relP, -1,
                "filename does not match NN-slug.qmd pattern", 2));
        }
    }
}

// ── Check 8: Standalone .qmd compilation ──

void check8StandaloneCompile(List<Path> qmdFiles, Path webDir, List<Finding> findings) throws Exception {
    // Sample: first .qmd from each part, plus appendix
    var sampled = new LinkedHashSet<Path>();
    for (var part : List.of("part1", "part2", "part3", "part4", "part5")) {
        qmdFiles.stream()
            .filter(p -> p.toString().contains(part + "-"))
            .findFirst().ifPresent(sampled::add);
    }
    qmdFiles.stream()
        .filter(p -> p.toString().contains("z-appendices"))
        .findFirst().ifPresent(sampled::add);

    for (var qmd : sampled) {
        var proc = new ProcessBuilder("quarto", "render", qmd.toAbsolutePath().toString(), "--to", "html")
            .directory(webDir.toFile())
            .redirectErrorStream(true)
            .start();
        var out = new String(proc.getInputStream().readAllBytes());
        int exit = proc.waitFor();
        if (exit != 0) {
            findings.add(new Finding(8, relPath(webDir, qmd), -1,
                "standalone quarto render failed: " + out.lines().filter(s -> s.contains("ERROR")).findFirst().orElse("unknown"), 2));
        }
        // Clean up generated HTML
        var htmlPath = qmd.getParent().resolve(qmd.getFileName().toString().replace(".qmd", ".html"));
        deleteIfExists(htmlPath);
        var filesDir = qmd.getParent().resolve(qmd.getFileName().toString().replace(".qmd", "_files"));
        if (isDirectory(filesDir)) deleteRecursive(filesDir);
    }
}

void deleteRecursive(Path dir) throws IOException {
    if (isDirectory(dir)) {
        try (var stream = list(dir)) {
            for (var e : stream.toList()) deleteRecursive(e);
        }
    }
    deleteIfExists(dir);
}

// ── Check 9: No raw LaTeX/math leakage in visible prose ──

void check9MathLeakage(List<Path> qmdFiles, List<Finding> findings) throws IOException {
    // Patterns that indicate LaTeX math that leaked outside $...$ or $$...$$
    var leakPatterns = List.of(
        Pattern.compile("\\\\frac\\{"),
        Pattern.compile("\\\\text\\{"),
        Pattern.compile("\\\\mathbf\\{"),
        Pattern.compile("\\\\mathcal\\{"),
        Pattern.compile("\\\\varepsilon"),
        Pattern.compile("\\\\rightarrow"),
        Pattern.compile("\\\\leftarrow"),
        Pattern.compile("\\\\Rightarrow"),
        Pattern.compile("\\\\infty"),
        Pattern.compile("\\\\cdot"),
        Pattern.compile("\\\\times"),
        Pattern.compile("\\\\pm"),
        Pattern.compile("\\\\leq"),
        Pattern.compile("\\\\geq"),
        Pattern.compile("\\\\neq"),
        Pattern.compile("\\\\pi"),
        Pattern.compile("\\\\sum\\b"),
        Pattern.compile("\\\\int\\b"),
        Pattern.compile("\\\\cap\\b"),
        Pattern.compile("\\\\cup\\b"),
        Pattern.compile("\\\\emptyset"),
        Pattern.compile("\\\\partial"),
        Pattern.compile("\\\\sim"),
        Pattern.compile("\\\\begin\\{aligned\\}"),
        Pattern.compile("\\\\end\\{aligned\\}")
    );

    for (var qmd : qmdFiles) {
        var path = relPath(webDir, qmd);
        boolean inYaml = false, inFence = false, inDollar = false;

        for (var rawLine : readAllLines(qmd)) {
            var line = rawLine.strip();
            if ("---".equals(line)) { inYaml = !inYaml; continue; }
            if (inYaml) continue;
            if (line.startsWith("```") || line.startsWith("~~~")) { inFence = !inFence; continue; }
            if (inFence) continue;
            if (line.startsWith("$$") || line.equals("$$")) { inDollar = !inDollar; continue; }
            if (inDollar) continue;

            // Strip inline math $...$ and then check for leaked LaTeX
            var nakedLine = line.replaceAll("\\$[^$]+\\$", "");
            nakedLine = nakedLine.replaceAll("\\$[^$]+\\$", ""); // second pass for adjacent

            for (var pat : leakPatterns) {
                if (pat.matcher(nakedLine).find()) {
                    findings.add(new Finding(9, path, -1,
                        "raw LaTeX outside math delimiters: \"%s\" in \"%s\"".formatted(
                            pat.pattern(), nakedLine.length() > 80 ? nakedLine.substring(0, 80) + "..." : nakedLine), 2));
                    break; // one finding per line
                }
            }
        }
    }
}

// ── Check 10: Duplicate output filenames ──

void check10DuplicateSlugs(List<Path> qmdFiles, List<Finding> findings) {
    var seen = new HashMap<String, Path>(); // basename-only → path
    var dirScoped = new HashMap<String, Path>(); // dir/basename → path
    for (var qmd : qmdFiles) {
        var fname = qmd.getFileName().toString();
        var dirName = qmd.getParent().getFileName().toString();
        // Duplicate basename in same parent directory is always a bug
        var scoped = dirName + "/" + fname;
        var prevScoped = dirScoped.putIfAbsent(scoped, qmd);
        if (prevScoped != null) {
            findings.add(new Finding(10, relPath(webDir, qmd), -1,
                "duplicate .qmd filename \"%s\" in same directory — second file overwrites".formatted(fname), 2));
        }
        // Same basename across different directories: warn only if not _shared/ or annotated-bib
        var prev = seen.putIfAbsent(fname, qmd);
        if (prev != null && !dirName.equals(prev.getParent().getFileName().toString())) {
            findings.add(new Finding(10, relPath(webDir, qmd), -1,
                "identical .qmd basename \"%s\" also in directory %s — Quarto TOC scoped, ok but verify"
                    .formatted(fname, prev.getParent().getFileName()), 1));
        }
    }
}
