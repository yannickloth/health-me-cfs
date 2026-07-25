// BuildWeb — regenerate Quarto .qmd files from Typst sources
// Uses TypstToQmd backend (regex or AST) in-process for max performance.
// Run from project root (not web/).
import static java.nio.file.Files.*;
import static java.nio.file.StandardCopyOption.*;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import static java.nio.file.Paths.*;
import java.io.*;
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
    var executor = Executors.newFixedThreadPool(workers);
    var globalXrefs = new ConcurrentHashMap<String, String[]>();
    int[] totalSections = {0};
    int[] completed = {0};

    var futures = new ArrayList<Future<TypstToQmd.ConversionResult>>();
    for (var task : tasks) {
        futures.add(executor.submit(() -> {
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
        }));
    }

    for (var f : futures) {
        try { f.get(); } catch (ExecutionException e) {
            System.err.println("ERROR: " + e.getCause().getMessage());
            executor.shutdown();
            System.exit(1);
        }
    }
    executor.shutdown();
    executor.awaitTermination(5, TimeUnit.MINUTES);
    System.out.println();

    int totalFiles = 0;
    try (var walk = java.nio.file.Files.walk(webRoot)) {
        totalFiles = (int) walk.filter(p -> p.toString().endsWith(".qmd")).count();
    }

    System.out.println();
    System.out.println("Done: " + tasks.size() + " chapters processed, " + totalFiles + " .qmd files generated");

    // --- Cross-reference resolution ---
    System.out.println();
    System.out.println("=== cross-references ===");
    resolveCrossRefs(webRoot, globalXrefs);

    // --- Citation resolution: replace [@Key] with formatted text + ref list ---
    System.out.println();
    System.out.println("=== citations ===");
    var bibDir = srcRoot.resolve("bib");
    var bibliography = loadBibliography(bibDir);
    System.out.println("  loaded " + bibliography.size() + " bib entries from " + (int) list(bibDir).filter(f -> f.toString().endsWith(".bib")).count() + " files");
    resolveCitations(webRoot, bibliography);

    // --- Figures: compile each .typ -> .svg in parallel ---
    var figSrcDir = srcRoot.resolve("figures");
    var figOutDir = webRoot.resolve("figures");
    createDirectories(figOutDir);
    System.out.println();
    System.out.println("=== figures ===");

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
    System.out.println("  " + figCount + " figures compiled");

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
    System.out.println("  " + bibCount + " files copied -> web/bib/ (citations pre-resolved)");

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
    } catch (IOException ignored) {}
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

// ── Citation resolution ──

record BibEntry(String author, String year, String title, String journal, String raw) {}

// Load all .bib files, merge into key→entry map (no duplicates exist — verified).
HashMap<String, BibEntry> loadBibliography(Path bibDir) throws IOException {
    var map = new HashMap<String, BibEntry>();
    try (var stream = list(bibDir)) {
        for (var f : stream.filter(p -> p.toString().endsWith(".bib")).toList()) {
            var content = readString(f);
            var entryPat = Pattern.compile("@\\w+\\{([^,]+),", Pattern.MULTILINE);
            var em = entryPat.matcher(content);
            while (em.find()) {
                var key = em.group(1).strip();
                // Extract fields: author, year, title, journal
                // Find closing } of this entry (next @ or end)
                int start = em.end();
                int end = content.indexOf("\n}", start);
                if (end < 0) {
                    int nextAt = content.indexOf("\n@", start);
                    end = nextAt >= 0 ? nextAt : content.length();
                }
                var body = content.substring(start, end);
                var author = extractBibField(body, "author");
                var year = extractBibField(body, "year");
                var title = extractBibField(body, "title");
                var journal = extractBibField(body, "journal");
                if (year.isEmpty()) year = extractBibField(body, "date");
                map.put(key, new BibEntry(author, year, title, journal, body));
            }
        }
    }
    return map;
}

String extractBibField(String body, String fieldName) {
    var p = Pattern.compile(Pattern.quote(fieldName) + "\\s*=\\s*\\{([^}]*(?:\\{[^}]*\\}[^}]*)*)\\}", Pattern.MULTILINE);
    var m = p.matcher(body);
    if (m.find()) {
        var val = m.group(1).strip();
        // Strip LaTeX commands and braces
        val = val.replaceAll("\\\\text(?:sc|bf|it|rm)\\{([^}]*)\\}", "$1");
        val = val.replaceAll("[{}]", "");
        val = val.replaceAll("\\\\&", "&");
        val = val.replaceAll("\\\\%", "%");
        val = val.trim();
        return val;
    }
    return "";
}

// Replace [@Key] with formatted citation text. Collects per-page refs and
// appends a reference list at the end of each .qmd file.
void resolveCitations(Path webRoot, Map<String, BibEntry> bib) throws IOException {
    var citeToken = Pattern.compile("\\[@([A-Za-z][A-Za-z0-9_:.-]+)\\]");
    var multiCite = Pattern.compile("\\[@([A-Za-z][A-Za-z0-9_:.-]+)\\s*;\\s*@([A-Za-z][A-Za-z0-9_:.-]+)\\]");
    var citePage = Pattern.compile("\\[@([A-Za-z][A-Za-z0-9_:.-]+)\\s+p\\.?\\s*(\\d+)\\]");
    int[] totalCounts = {0};
    int filesChanged = 0;
    var missing = new HashSet<String>();

    List<Path> qmdFiles;
    try (var walk = walk(webRoot)) {
        qmdFiles = walk.filter(f -> f.toString().endsWith(".qmd")).sorted().toList();
    }

    for (var qmd : qmdFiles) {
        var src = readString(qmd);
        var usedKeys = new LinkedHashSet<String>();
        boolean changed = false;

        // First pass: collect all citation keys used on this page
        var mc = multiCite.matcher(src);
        while (mc.find()) {
            usedKeys.add(mc.group(1));
            usedKeys.add(mc.group(2));
            changed = true;
        }
        var cp = citePage.matcher(src);
        while (cp.find()) {
            usedKeys.add(cp.group(1));
            changed = true;
        }
        var ct = citeToken.matcher(src);
        while (ct.find()) {
            usedKeys.add(ct.group(1));
            changed = true;
        }

        if (!changed) continue;

        // Second pass: replace citation tokens
        var result = new StringBuilder();
        boolean inYaml = false, inFence = false;
        for (var line : src.split("\n", -1)) {
            var s = line.strip();
            if ("---".equals(s)) { inYaml = !inYaml; result.append(line).append('\n'); continue; }
            if (inYaml) { result.append(line).append('\n'); continue; }
            if (s.startsWith("```") || s.startsWith("~~~")) { inFence = !inFence; result.append(line).append('\n'); continue; }
            if (inFence) { result.append(line).append('\n'); continue; }

            var rewritten = line;

            // Multi-citation: [@key1; @key2] → (Author1, Year1; Author2, Year2)
            rewritten = rewriteMultiCite(rewritten, bib, totalCounts);
            // Page citation: [@key p. 42] → (Author, Year, p. 42)
            rewritten = rewritePageCite(rewritten, bib, totalCounts);
            // Single citation: [@key] → (Author, Year)
            rewritten = rewriteSingleCite(rewritten, bib, totalCounts, missing);

            result.append(rewritten).append('\n');
        }

        // Append reference list
        if (!usedKeys.isEmpty()) {
            result.append("\n\n## References\n\n");
            int idx = 1;
            for (var key : usedKeys) {
                var entry = bib.get(key);
                if (entry == null) continue;
                var ref = formatReference(idx, key, entry);
                result.append(ref).append("\n\n");
                idx++;
            }
        }

        writeString(qmd, result.toString());
        filesChanged++;
        totalCounts[0] += usedKeys.size();
    }

    System.out.println("  resolved " + totalCounts[0] + " citations across " + filesChanged + " files");
    if (!missing.isEmpty()) {
        System.out.println("  " + missing.size() + " unresolved citation key(s):");
        for (var m : missing) System.out.println("    ? " + m);
    }
}

String rewriteMultiCite(String line, Map<String, BibEntry> bib, int[] counter) {
    var p = Pattern.compile("\\[@([A-Za-z][A-Za-z0-9_:.-]+)\\s*;\\s*@([A-Za-z][A-Za-z0-9_:.-]+)\\]");
    var m = p.matcher(line);
    var sb = new StringBuilder();
    while (m.find()) {
        var e1 = bib.get(m.group(1));
        var e2 = bib.get(m.group(2));
        if (e1 != null && e2 != null) {
            var repl = "(" + shortAuthor(e1.author()) + ", " + e1.year()
                + "; " + shortAuthor(e2.author()) + ", " + e2.year() + ")";
            m.appendReplacement(sb, Matcher.quoteReplacement(repl));
        } else {
            m.appendReplacement(sb, Matcher.quoteReplacement(m.group()));
            if (e1 == null) counter[0] = counter[0] + 1;
            if (e2 == null) counter[0] = counter[0] + 1;
        }
    }
    m.appendTail(sb);
    return sb.toString();
}

String rewritePageCite(String line, Map<String, BibEntry> bib, int[] counter) {
    var p = Pattern.compile("\\[@([A-Za-z][A-Za-z0-9_:.-]+)\\s+p\\.?\\s*(\\d+)\\]");
    var m = p.matcher(line);
    var sb = new StringBuilder();
    while (m.find()) {
        var entry = bib.get(m.group(1));
        if (entry != null) {
            var repl = "(" + shortAuthor(entry.author()) + ", " + entry.year() + ", p. " + m.group(2) + ")";
            m.appendReplacement(sb, Matcher.quoteReplacement(repl));
        } else {
            m.appendReplacement(sb, Matcher.quoteReplacement(m.group()));
            counter[0] = counter[0] + 1;
        }
    }
    m.appendTail(sb);
    return sb.toString();
}

String rewriteSingleCite(String line, Map<String, BibEntry> bib, int[] counter, Set<String> missing) {
    var p = Pattern.compile("(?<!; )\\[@([A-Za-z][A-Za-z0-9_:.-]+)\\](?!,\\s*\\d{4})");
    var m = p.matcher(line);
    var sb = new StringBuilder();
    while (m.find()) {
        var entry = bib.get(m.group(1));
        if (entry != null) {
            var repl = "(" + shortAuthor(entry.author()) + ", " + entry.year() + ")";
            m.appendReplacement(sb, Matcher.quoteReplacement(repl));
        } else {
            missing.add(m.group(1));
            m.appendReplacement(sb, Matcher.quoteReplacement(m.group()));
        }
    }
    m.appendTail(sb);
    return sb.toString();
}

// Short author: "Smith, John A and Jones, Bob" → "Smith et al." (if >1 author)
//              "Smith, John A" → "Smith"
String shortAuthor(String author) {
    if (author == null || author.isBlank()) return "???";
    // Split on " and " to count authors
    var authors = author.split("\\s+and\\s+");
    var first = authors[0].strip();
    // Take last name (first comma-separated token)
    int comma = first.indexOf(',');
    var lastName = comma >= 0 ? first.substring(0, comma).strip() : first;
    if (authors.length == 1) return lastName;
    if (authors.length == 2) {
        var second = authors[1].strip();
        int c2 = second.indexOf(',');
        var last2 = c2 >= 0 ? second.substring(0, c2).strip() : second;
        return lastName + " & " + last2;
    }
    return lastName + " et al.";
}

// Format a reference list entry: "1. Smith, J. (2024). Title. *Journal*."
String formatReference(int num, String key, BibEntry entry) {
    var sb = new StringBuilder();
    sb.append(num).append(". ");
    // Format authors as "LastName, F. M., LastName, F. M."
    var author = entry.author();
    if (author != null && !author.isBlank()) {
        var formatted = formatAuthorList(author);
        sb.append(formatted);
    }
    sb.append(" (").append(entry.year()).append("). ");
    sb.append(entry.title());
    if (entry.journal() != null && !entry.journal().isBlank()) {
        sb.append(". *").append(entry.journal()).append("*");
    }
    sb.append(".");
    return sb.toString();
}

String formatAuthorList(String author) {
    var authors = author.split("\\s+and\\s+");
    var parts = new ArrayList<String>();
    for (var a : authors) {
        a = a.strip();
        int comma = a.indexOf(',');
        if (comma >= 0) {
            var last = a.substring(0, comma).strip();
            var first = a.substring(comma + 1).strip();
            // Abbreviate first names: "John A" → "J. A."
            var initials = new StringBuilder();
            for (var part : first.split("\\s+")) {
                if (!part.isEmpty()) initials.append(part.charAt(0)).append(". ");
            }
            parts.add(last + ", " + initials.toString().strip());
        } else {
            parts.add(a);
        }
    }
    return String.join(", ", parts) + ". ";
}
