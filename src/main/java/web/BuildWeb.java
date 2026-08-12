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
import java.util.concurrent.atomic.*;
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

            // Glossary: generate QMD directly from JSON instead of Typst regex conversion
            if (appName.contains("terminology")) {
                generateGlossaryQmd(outDir);
            } else {
                var resolved = resolveIncludes(app, srcRoot);
                var resolvedFile = createTempFile("buildweb-", ".typ");
                writeString(resolvedFile, resolved);
                resolvedFile.toFile().deleteOnExit();
                tasks.add(new ChapterTask(appName, outDir, resolvedFile));
            }
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
    var totalSections = new AtomicInteger(0);
    var completed = new AtomicInteger(0);

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
                totalSections.addAndGet(result.sectionCount());
                int done = completed.incrementAndGet();
                System.out.print("\r  " + done + "/" + tasks.size() + " chapters");
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

    System.out.println();
    System.out.println("Done: " + tasks.size() + " chapters processed, " + totalSections.get() + " sections (" + phaseMs(phaseStart) + ")");

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
    var jsSrcDir = Path.of("src/main/web");
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

    // --- glossary.{json,fr,de}.json ---
    System.out.println();
    System.out.println("=== glossary.json ===");
    var glossaryFiles = new String[] { "glossary.json", "glossary-fr.json", "glossary-de.json" };
    for (var gf : glossaryFiles) {
        var gSrc = Path.of("src/main/resources/" + gf).toAbsolutePath().normalize();
        var gDst = webRoot.resolve(gf);
        copy(gSrc, gDst, REPLACE_EXISTING);
        System.out.println("  src/main/resources/" + gf + " -> web/" + gf);
    }

    // --- Static HTML assets (redirects etc.) ---
    System.out.println();
    System.out.println("=== static html assets ===");
    var htmlSrcDir = Path.of("src/main/web").toAbsolutePath().normalize();
    int htmlCount = 0;
    if (isDirectory(htmlSrcDir)) {
        try (var stream = walk(htmlSrcDir)) {
            for (var f : stream.filter(Files::isRegularFile).sorted().toList()) {
                var rel = htmlSrcDir.relativize(f);
                var dst = webRoot.resolve(rel);
                createDirectories(dst.getParent());
                copy(f, dst, REPLACE_EXISTING);
                htmlCount++;
            }
        }
    }
    System.out.println("  " + htmlCount + " file(s) copied -> web/");

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
            var link = relLink(qmd, Path.of(target[1]), id);
            var label = target[2] == null || target[2].isBlank() ? humanize(prefix, id) : target[2];
            if (label.contains("/home/") || label.startsWith("/")) label = humanize(prefix, id);
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
        var fromAbs = fromQmd.toAbsolutePath().normalize();
        var toAbs = toQmd.toAbsolutePath().normalize();
        if (fromAbs.equals(toAbs)) {
            return "#" + id;
        }
        var rel = fromAbs.getParent()
            .relativize(toAbs).normalize().toString();
        rel = rel.replace(File.separatorChar, '/');
        if (!rel.endsWith(".qmd") && !rel.endsWith(".html")) {
            rel = rel + ".html";
        }
        rel = rel.replaceFirst("\\.qmd$", ".html");
        return rel + "#" + id;
    }

    String humanize(String prefix, String id) {
        var body = id.substring(prefix.length() + 1).replace('-', ' ').replace('_', ' ').strip();
        if (body.contains("/") || body.startsWith("home/")) return id;
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

// --- Glossary QMD generation ---
// Reads glossary.json directly to produce the QMD glossary page,
// bypassing the Typst regex converter which cannot handle data-driven files.

void generateGlossaryQmd(Path outDir) throws IOException {
    var glossarySrc = Path.of("src/main/resources/glossary.json").toAbsolutePath().normalize();
    var rawJson = readString(glossarySrc);
    var entries = parseGlossaryJson(rawJson);

    var sb = new StringBuilder();
    sb.append("---\n");
    sb.append("title: \"Glossary of Medical and Scientific Terms\"\n");
    sb.append("---\n\n");
    sb.append("<span id=\"app-glossary\"></span>\n\n");
    sb.append("This glossary defines medical, biochemical, immunological, ");
    sb.append("and statistical terms used throughout this document. ");
    sb.append("Terms are organized alphabetically. ");
    sb.append("Where a term is used in a specialized sense specific to ");
    sb.append("ME/CFS research, the ME/CFS-specific usage is indicated.\n\n");

    String currentGroup = "";
    for (var entry : entries) {
        var group = entry.group();
        if (!group.equals(currentGroup)) {
            currentGroup = group;
            sb.append("## ").append(group).append("\n\n");
        }
        sb.append("**").append(entry.label()).append("**: ")
          .append(entry.definition()).append("\n\n");
    }

    writeString(outDir.resolve("01-glossary-of-medical-and-scientific-terms.qmd"), sb.toString());
}

record GlossaryEntry(String label, String definition, String group) {}

List<GlossaryEntry> parseGlossaryJson(String json) {
    var entries = new ArrayList<GlossaryEntry>();
    var excludedCategories = Set.of(
        "medication", "supplement", "medication_class", "vitamin", "brand"
    );
    var groupDict = Map.ofEntries(
        Map.entry("A", "A"), Map.entry("B", "B"), Map.entry("C", "C"),
        Map.entry("D", "D–E"), Map.entry("E", "D–E"),
        Map.entry("F", "F–G"), Map.entry("G", "F–G"),
        Map.entry("H", "H–I"), Map.entry("I", "H–I"),
        Map.entry("J", "J"),
        Map.entry("K", "K–M"), Map.entry("L", "K–M"), Map.entry("M", "K–M"),
        Map.entry("N", "N–O"), Map.entry("O", "N–O"),
        Map.entry("P", "P–R"), Map.entry("Q", "P–R"), Map.entry("R", "P–R"),
        Map.entry("S", "S–T"), Map.entry("T", "S–T"),
        Map.entry("U", "U–Z"), Map.entry("V", "U–Z"), Map.entry("W", "U–Z"),
        Map.entry("X", "U–Z"), Map.entry("Y", "U–Z"), Map.entry("Z", "U–Z")
    );

    // Minimal streaming JSON parser — handles the flat glossary structure.
    // We extract top-level string keys, then their { } object values.
    // State machine: finding key → reading value → collecting "label"/"definition"/"category" fields.

    record ParsedEntry(String label, String definition, String category) {}
    var parsed = new ArrayList<ParsedEntry>();

    int i = json.indexOf('{') + 1; // skip opening brace of root
    int len = json.length();

    while (i < len) {
        char c = json.charAt(i);
        if (Character.isWhitespace(c)) { i++; continue; }
        if (c == '}') break; // end of root
        if (c == ',') { i++; continue; }

        // Read key
        var keyStart = json.indexOf('"', i) + 1;
        var keyEnd = json.indexOf('"', keyStart);
        var rawKey = json.substring(keyStart, keyEnd);
        i = keyEnd + 1;

        // Skip to ':'
        while (i < len && json.charAt(i) != ':') i++;
        i++; // skip ':'

        // If key is "_meta_", skip its object entirely
        if ("_meta_".equals(rawKey)) {
            while (i < len && json.charAt(i) != '{') i++;
            i = skipJsonObject(json, i);
            continue;
        }

        // Read object value
        while (i < len && json.charAt(i) != '{') i++;
        var valueStart = i;
        i = skipJsonObject(json, valueStart);

        var objStr = json.substring(valueStart, i);
        String label = rawKey;
        String definition = "";
        String category = "";

        // Extract fields from the object string
        label = extractJsonString(objStr, "label");
        if (label == null || label.isEmpty()) label = rawKey;

        definition = extractJsonString(objStr, "definition");
        if (definition == null || definition.isEmpty()) continue;

        category = extractJsonString(objStr, "category");
        if (category == null) category = "";

        parsed.add(new ParsedEntry(label, definition, category));
    }

    // Filter excluded categories and sort
    for (var p : parsed) {
        if (excludedCategories.contains(p.category())) continue;
        var sortKey = p.label().toLowerCase();
        if (sortKey.startsWith("a ")) sortKey = sortKey.substring(2);
        if (sortKey.startsWith("an ")) sortKey = sortKey.substring(3);
        if (sortKey.startsWith("the ")) sortKey = sortKey.substring(4);

        var firstChar = p.label().substring(0, 1).toUpperCase();
        var group = Character.isDigit(firstChar.charAt(0)) ? "#"
            : groupDict.getOrDefault(firstChar, firstChar);

        entries.add(new GlossaryEntry(p.label(), p.definition(), group));
    }

    entries.sort(Comparator.comparing(GlossaryEntry::label, String.CASE_INSENSITIVE_ORDER));
    return entries;
}

int skipJsonObject(String json, int start) {
    int depth = 1;
    int i = start + 1;
    boolean inString = false;
    while (i < json.length() && depth > 0) {
        char c = json.charAt(i);
        if (inString) {
            if (c == '\\') { i += 2; continue; }
            if (c == '"') inString = false;
        } else {
            if (c == '"') inString = true;
            else if (c == '{' || c == '[') depth++;
            else if (c == '}' || c == ']') depth--;
        }
        i++;
    }
    return i;
}

String extractJsonString(String objStr, String key) {
    var pattern = Pattern.compile("\"" + Pattern.quote(key) + "\"\\s*:\\s*\"([^\"]*)\"");
    var m = pattern.matcher(objStr);
    if (m.find()) {
        var val = m.group(1);
        // Unescape simple escapes
        val = val.replace("\\\"", "\"").replace("\\\\", "\\").replace("\\n", "\n");
        return val;
    }
    return null;
}

