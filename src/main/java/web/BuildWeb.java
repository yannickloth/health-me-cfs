// BuildWeb — regenerate Quarto .qmd files from Typst sources
// Uses TypstToQmd backend (regex or AST) in-process for max performance.
// Run from project root (not web/).
import static java.nio.file.Files.*;
import static java.nio.file.StandardCopyOption.*;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import static java.nio.file.Paths.*;
import java.io.*;
import java.time.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.regex.*;

void main(String[] args) throws IOException, InterruptedException {
    var srcRoot = Path.of("src/main/typst/mecfs").toAbsolutePath().normalize();
    var webRoot = Path.of("web").toAbsolutePath().normalize();
    var fontPath = srcRoot.resolve("fonts");

    System.out.println("srcRoot: " + srcRoot);
    System.out.println("webRoot: " + webRoot);
    System.out.println();

    String backendEnv = System.getenv("BUILDWEB_BACKEND");
    TypstToQmd backend = ("ast".equals(backendEnv))
        ? new AstConversion(srcRoot, fontPath)
        : new RegexConversion();
    System.out.println("Backend: " + backend.getClass().getSimpleName());
    System.out.println();

    // --- Mapping: typst-source-dir -> web-output-dir ---
    record PartMapping(String srcDir, String webDir) {}
    var mappings = List.of(
        new PartMapping("part1-clinical", "part1-clinical"),
        new PartMapping("part2-pathophysiology", "part2-pathophysiology"),
        new PartMapping("part3-treatment", "part3-treatment"),
        new PartMapping("part4-research", "part4-research"),
        new PartMapping("part5-modeling", "part5-modeling")
    );

    // Chapter discovery from canonical include list
    var canonical = readString(srcRoot.resolve("loth2026-mecfs.typ"));
    var includePat = Pattern.compile("#include\\s+\"((part[1-5][^\"/]*)/(ch[^\"]+\\.typ))\"");
    var chaptersByPart = new LinkedHashMap<String, List<String>>();
    var im = includePat.matcher(canonical);
    while (im.find()) {
        chaptersByPart.computeIfAbsent(im.group(2), k -> new ArrayList<>()).add(im.group(1));
    }

    // --- Thread pool for parallel chapter conversion ---
    int workers = Runtime.getRuntime().availableProcessors();
    System.out.println("Workers: " + workers);
    System.out.println();

    record ChapterTask(String chName, Path outDir, Path resolvedFile) {}
    var tasks = new ArrayList<ChapterTask>();

    // --- Part chapters ---
    for (var m : mappings) {
        var webDir = webRoot.resolve(m.webDir());
        System.out.println("=== " + m.srcDir() + " ===");
        createDirectories(webDir);
        try (var stream = list(webDir)) {
            for (var entry : stream.toList()) {
                if (isDirectory(entry) && !entry.getFileName().toString().startsWith(".")) {
                    deleteRecursive(entry);
                }
            }
        }

        var chapterIncludes = chaptersByPart.getOrDefault(m.srcDir(), List.of());
        for (var relInclude : chapterIncludes) {
            var aggFile = srcRoot.resolve(relInclude);
            if (!exists(aggFile)) {
                System.out.println("  SKIP " + relInclude + " (not found)");
                continue;
            }
            var chName = aggFile.getFileName().toString().replaceFirst("\\.typ$", "");
            var outDir = webDir.resolve(chName);

            var resolved = resolveIncludes(aggFile, srcRoot);
            var resolvedFile = createTempFile("buildweb-", ".typ");
            writeString(resolvedFile, resolved);
            resolvedFile.toFile().deleteOnExit();

            System.out.println("  " + chName + " -> " + m.webDir() + "/" + chName);
            createDirectories(outDir);
            tasks.add(new ChapterTask(chName, outDir, resolvedFile));
        }
        System.out.println();
    }

    // --- Appendices ---
    System.out.println("=== appendices ===");
    var webAppDir = webRoot.resolve("z-appendices");
    createDirectories(webAppDir);
    try (var stream = list(webAppDir)) {
        for (var entry : stream.toList()) {
            if (isDirectory(entry) && !entry.getFileName().toString().startsWith(".")) {
                deleteRecursive(entry);
            }
        }
    }
    var appSrcDir = srcRoot.resolve("appendices");
    try (var stream = list(appSrcDir)) {
        var appFiles = stream
            .filter(f -> f.getFileName().toString().startsWith("appendix-"))
            .filter(f -> f.getFileName().toString().endsWith(".typ"))
            .filter(f -> !isDirectory(f))
            .sorted()
            .toList();
        for (var app : appFiles) {
            var appName = app.getFileName().toString().replace(".typ", "");
            var outDir = webAppDir.resolve(appName);
            System.out.println("  " + appName + " -> z-appendices/" + appName);
            createDirectories(outDir);
            var resolved = resolveIncludes(app, srcRoot);
            var resolvedFile = createTempFile("buildweb-", ".typ");
            writeString(resolvedFile, resolved);
            resolvedFile.toFile().deleteOnExit();
            tasks.add(new ChapterTask(appName, outDir, resolvedFile));
        }
    }
    System.out.println();

    // --- Shared ---
    System.out.println("=== shared -> _shared/ ===");
    var webSharedDir = webRoot.resolve("_shared");
    createDirectories(webSharedDir);
    try (var stream = list(webSharedDir)) {
        for (var entry : stream.toList()) {
            if (entry.toString().endsWith(".qmd")) deleteIfExists(entry);
        }
    }
    var sharedSrcDir = srcRoot.resolve("shared");
    try (var stream = list(sharedSrcDir)) {
        var sharedFiles = stream
            .filter(f -> f.getFileName().toString().endsWith(".typ"))
            .filter(f -> !isDirectory(f))
            .filter(f -> !f.getFileName().toString().equals("environments.typ"))
            .filter(f -> !f.getFileName().toString().equals("tables.typ"))
            .sorted()
            .toList();
        for (var sf : sharedFiles) {
            var sName = sf.getFileName().toString().replace(".typ", "");
            System.out.println("  " + sName + " -> _shared/");
            createDirectories(webSharedDir);
            var resolved = resolveIncludes(sf, srcRoot);
            var resolvedFile = createTempFile("buildweb-", ".typ");
            writeString(resolvedFile, resolved);
            resolvedFile.toFile().deleteOnExit();
            tasks.add(new ChapterTask(sName, webSharedDir, resolvedFile));
        }
    }
    System.out.println();

    // --- Execute chapter conversion in parallel ---
    System.out.println("=== converting " + tasks.size() + " chapters in parallel ===");
    var phaseStart = System.currentTimeMillis();
    var executor = Executors.newFixedThreadPool(workers);
    var globalXrefs = new ConcurrentHashMap<String, String[]>();
    int[] totalSections = {0};
    int[] completed = {0};

    var futures = new ArrayList<Future<TypstToQmd.ConversionResult>>();
    var errors = new ConcurrentLinkedQueue<String>();
    for (var task : tasks) {
        futures.add(executor.submit(() -> {
            try {
                var src = readString(task.resolvedFile());
                var result = backend.convert(src, task.outDir());
                for (var entry : result.xrefs()) {
                    globalXrefs.putIfAbsent(entry[0], entry);
                }
                synchronized (totalSections) { totalSections[0] += result.sectionCount(); }
                synchronized (completed) {
                    int done = ++completed[0];
                    System.out.print("\r  " + done + "/" + tasks.size() + " chapters");
                }
                return result;
            } catch (Exception e) {
                errors.add(task.chName() + ": " + e.getMessage());
                return null;
            }
        }));
    }

    for (var f : futures) {
        try { f.get(); } catch (ExecutionException e) {
            errors.add(e.getCause().getMessage());
        }
    }
    executor.shutdown();
    executor.awaitTermination(5, TimeUnit.MINUTES);
    System.out.println();

    if (!errors.isEmpty()) {
        System.err.println("ERRORS during conversion (" + errors.size() + "):");
        for (var e : errors) System.err.println("  " + e);
        System.exit(1);
    }

    int totalFiles = 0;
    try (var walk = java.nio.file.Files.walk(webRoot)) {
        totalFiles = (int) walk.filter(p -> p.toString().endsWith(".qmd")).count();
    }

    System.out.println();
    System.out.println("Done: " + tasks.size() + " chapters processed, " + totalFiles + " .qmd files generated (" + phaseMs(phaseStart) + ")");

    // --- Cross-reference resolution ---
    System.out.println();
    System.out.println("=== cross-references ===");
    phaseStart = System.currentTimeMillis();
    resolveCrossRefs(webRoot, globalXrefs);
    System.out.println("  (" + phaseMs(phaseStart) + ")");

    // --- Figures: compile each .typ -> .svg in parallel ---
    var figSrcDir = srcRoot.resolve("figures");
    var figOutDir = webRoot.resolve("figures");
    createDirectories(figOutDir);
    System.out.println();
    System.out.println("=== figures ===");
    phaseStart = System.currentTimeMillis();

    var figExecutor = Executors.newFixedThreadPool(workers);
    var figFutures = new ArrayList<Future<Boolean>>();
    try (var stream = list(figSrcDir)) {
        var figFiles = stream
            .filter(f -> f.getFileName().toString().endsWith(".typ"))
            .sorted()
            .toList();
        for (var fig : figFiles) {
            figFutures.add(figExecutor.submit(() -> {
                var svgName = fig.getFileName().toString().replace(".typ", ".svg");
                var svgPath = figOutDir.resolve(svgName);
                var fontPathStr = fontPath.toAbsolutePath().toString();
                var cmd = new String[]{"typst", "compile", "--font-path", fontPathStr,
                    fig.toAbsolutePath().toString(), svgPath.toAbsolutePath().toString()};
                var proc = new ProcessBuilder(cmd)
                    .redirectErrorStream(true)
                    .start();
                int exitCode = proc.waitFor();
                return exitCode == 0;
            }));
        }
    }

    int figCount = 0;
    for (var f : figFutures) {
        try { if (f.get()) figCount++; } catch (ExecutionException e) {
            System.err.println("  ERROR: figure compile failed: " + e.getCause().getMessage());
        }
    }
    figExecutor.shutdown();
    figExecutor.awaitTermination(5, TimeUnit.MINUTES);
    System.out.println("  " + figCount + " figures compiled (" + phaseMs(phaseStart) + ")");

    // --- Bib files: keep for Quarto config compatibility, but citations already resolved ---
    System.out.println();
    System.out.println("=== bib ===");
    var bibSrc = srcRoot.resolve("bib");
    var bibDst = webRoot.resolve("bib");
    deleteRecursive(bibDst);
    createDirectories(bibDst);
    int bibCount = 0;
    try (var stream = list(bibSrc)) {
        for (var bib : stream.filter(f -> f.getFileName().toString().endsWith(".bib")).toList()) {
            copy(bib, bibDst.resolve(bib.getFileName()));
            bibCount++;
        }
    }
    System.out.println("  " + bibCount + " files copied -> web/bib/");

    // --- JS assets ---
    System.out.println();
    System.out.println("=== js assets ===");
    var jsSrcDir = Path.of("src/main/js");
    var jsDstDir = webRoot;
    int jsCount = 0;
    try (var stream = list(jsSrcDir)) {
        for (var jsFile : stream.filter(f -> f.getFileName().toString().endsWith(".js")).toList()) {
            copy(jsFile, jsDstDir.resolve(jsFile.getFileName()), REPLACE_EXISTING);
            jsCount++;
            System.out.println("  " + jsFile.getFileName() + " -> web/");
        }
    }
    System.out.println("  " + jsCount + " file(s) copied");

    System.out.println();
    System.out.println("Next: quarto render");
}

String phaseMs(long start) { return (System.currentTimeMillis() - start) + "ms"; }

void deleteRecursive(Path dir) throws IOException {
    if (isDirectory(dir)) {
        try (var stream = list(dir)) {
            for (var entry : stream.toList()) {
                deleteRecursive(entry);
            }
        } catch (NoSuchFileException e) {
            return;
        }
    }
    try {
        deleteIfExists(dir);
    } catch (NoSuchFileException ignored) {
        // already gone — normal race condition
    } catch (java.nio.file.DirectoryNotEmptyException ignored) {
        // may have been re-created between list and delete — non-critical
    }
}

static final String XREF_PREFIXES =
    "sec|subsec|subsubsec|fig|tab|eq|ch|ach|hyp|spec|lim|obs|oq|pred|prop|app|warn|rec|dir|prot|par|def|req|protocol|rem|cont|cf|open|clin|syn|pr";

// resolveCrossRefs now takes the in-memory registry directly (no _xref.tsv re-read pass).
// Still writes .qmd files to disk because they were written by the backends,
// but reads them for the rewrite pass. Future: backends could return pre-resolved content.
void resolveCrossRefs(Path webRoot, Map<String, String[]> registry) throws IOException {
    System.out.println("  registry: " + registry.size() + " anchors");

    var tokenPat = Pattern.compile("(?<![\\[\\w@])@(" + XREF_PREFIXES + ")-([A-Za-z0-9][A-Za-z0-9_-]*)");
    var missing = new TreeSet<String>();
    int fileCount = 0;

    List<Path> qmdFiles;
    try (var walk = walk(webRoot)) {
        qmdFiles = walk.filter(f -> f.toString().endsWith(".qmd")).sorted().toList();
    }

    for (var qmd : qmdFiles) {
        var src = readString(qmd);
        var outLines = new ArrayList<String>();
        boolean inFence = false;
        boolean changed = false;
        for (var line : src.split("\n", -1)) {
            var trimmed = line.strip();
            if (trimmed.startsWith("```") || trimmed.startsWith("~~~")) {
                inFence = !inFence;
                outLines.add(line);
                continue;
            }
            if (inFence || !line.contains("@")) {
                outLines.add(line);
                continue;
            }
            var resolved = rewriteLine(line, tokenPat, registry, qmd, missing);
            if (!resolved.equals(line)) changed = true;
            outLines.add(resolved);
        }
        if (changed) {
            writeString(qmd, String.join("\n", outLines));
            fileCount++;
        }
    }

    System.out.println("  rewrote links in " + fileCount + " files");
    if (!missing.isEmpty()) {
        System.out.println("  " + missing.size() + " unresolved anchor(s) degraded to plain text:");
        for (var m : missing) System.out.println("    ? " + m);
    }
}

String rewriteLine(String line, Pattern tokenPat, Map<String, String[]> registry,
                   Path qmd, Set<String> missing) {
    var seg = Pattern.compile("`[^`]*`|\\$[^$\\n]+\\$");
    var protector = seg.matcher(line);
    var sb = new StringBuilder();
    int last = 0;
    while (protector.find()) {
        sb.append(rewriteSegment(line.substring(last, protector.start()), tokenPat, registry, qmd, missing));
        sb.append(protector.group());
        last = protector.end();
    }
    sb.append(rewriteSegment(line.substring(last), tokenPat, registry, qmd, missing));
    return sb.toString();
}

String rewriteSegment(String text, Pattern tokenPat, Map<String, String[]> registry,
                      Path qmd, Set<String> missing) {
    var m = tokenPat.matcher(text);
    var sb = new StringBuilder();
    while (m.find()) {
        var prefix = m.group(1);
        var id = prefix + "-" + m.group(2);
        String replacement;
        var target = registry.get(id);
        if (target != null) {
            var link = relLink(qmd, Path.of(target[0]), id);
            var label = target[1] == null || target[1].isBlank() ? humanize(prefix, id) : target[1];
            replacement = "[" + label + "](" + link + ")";
        } else {
            missing.add(id);
            replacement = humanize(prefix, id);
        }
        m.appendReplacement(sb, Matcher.quoteReplacement(replacement));
    }
    m.appendTail(sb);
    return sb.toString();
}

String relLink(Path fromQmd, Path toQmd, String id) {
    if (fromQmd.toAbsolutePath().normalize().equals(toQmd.toAbsolutePath().normalize())) {
        return "#" + id;
    }
    var rel = fromQmd.toAbsolutePath().getParent()
        .relativize(toQmd.toAbsolutePath()).normalize().toString();
    rel = rel.replace(File.separatorChar, '/');
    rel = rel.replaceFirst("\\.qmd$", ".html");
    return rel + "#" + id;
}

String humanize(String prefix, String id) {
    var body = id.substring(prefix.length() + 1).replace('-', ' ').replace('_', ' ').strip();
    return body.isEmpty() ? id : body;
}

HashMap<Path, String> resolvedCache = new HashMap<>();

String resolveIncludes(Path file, Path srcRoot) throws IOException {
    // Memoize: shared files (environments.typ etc.) are included in many chapters
    var cached = resolvedCache.get(file);
    if (cached != null) return cached;
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
    var result = sb.toString();
    resolvedCache.put(file, result);
    return result;
}

