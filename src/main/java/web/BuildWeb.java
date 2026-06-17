// BuildWeb — regenerate Quarto .qmd files from Typst sources
// One command: java BuildWeb.java && quarto render
//
// Run from project root (not web/).
// Source struct: partX/chXX-name/chXX-name.typ (aggregator) + includes
// Output: web/part*/ch*/, web/z-appendices/, web/_shared/
import static java.nio.file.Files.*;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import static java.nio.file.Paths.*;
import java.io.*;
import java.util.*;

void main(String[] args) throws IOException, InterruptedException {
    var srcRoot = Path.of("src/main/typst/mecfs").toAbsolutePath().normalize();
    var javaDir = Path.of("src/main/java/web").toAbsolutePath().normalize();
    var webRoot = Path.of("web").toAbsolutePath().normalize();
    var casPath = javaDir.resolve("ConvertAndSplit.java");

    System.out.println("srcRoot: " + srcRoot);
    System.out.println("webRoot: " + webRoot);
    System.out.println();

    // --- Mapping: typst-source-dir → web-output-dir ---
    record PartMapping(String srcDir, String webDir) {}
    var mappings = List.of(
        new PartMapping("part1-clinical", "part1-clinical"),
        new PartMapping("part2-pathophysiology", "part2-pathophysiology"),
        new PartMapping("part3-treatment", "part3-treatment"),
        new PartMapping("part4-research", "part4-research"),
        new PartMapping("part5-modeling", "part5-modeling")
    );

    int totalFiles = 0;
    int totalChapters = 0;

    for (var m : mappings) {
        var srcDir = srcRoot.resolve(m.srcDir());
        var webDir = webRoot.resolve(m.webDir());

        System.out.println("=== " + m.srcDir() + " ===");
        createDirectories(webDir);
        // Clear existing chapter subdirectories
        try (var stream = list(webDir)) {
            for (var entry : stream.toList()) {
                if (isDirectory(entry) && !entry.getFileName().toString().startsWith(".")) {
                    deleteRecursive(entry);
                    System.out.println("  removed: " + entry.getFileName());
                }
            }
        }

        // Collect chapter subdirectories
        try (var stream = list(srcDir)) {
            var chapDirs = stream
                .filter(f -> isDirectory(f) && f.getFileName().toString().startsWith("ch"))
                .filter(f -> !f.getFileName().toString().startsWith("."))
                .sorted()
                .toList();

            for (var chDir : chapDirs) {
                var chName = chDir.getFileName().toString();
                var outDir = webDir.resolve(chName);

                // Find the aggregator .typ file (matches directory basename)
                Path aggFile = null;
                var preambleFiles = new ArrayList<Path>();
                try (var chStream = list(chDir)) {
                    var typFiles = chStream
                        .filter(f -> f.getFileName().toString().endsWith(".typ"))
                        .filter(f -> !isDirectory(f))
                        .sorted()
                        .toList();
                    for (var tf : typFiles) {
                        var fn = tf.getFileName().toString();
                        if (fn.equals(chName + ".typ")) { aggFile = tf; }
                        else if (fn.endsWith("-preamble.typ") || fn.equals("intro-preamble.typ")) { preambleFiles.add(tf); }
                    }
                }

                // Multi-fragment chapters: no single aggregator, concat all .typ + preambles
                if (aggFile == null) {
                    try (var chStream = list(chDir)) {
                        var typFiles = chStream
                            .filter(f -> f.getFileName().toString().endsWith(".typ"))
                            .filter(f -> !isDirectory(f))
                            .sorted()
                            .toList();
                        if (typFiles.isEmpty()) {
                            System.out.println("  SKIP " + chName + " (no .typ files)");
                            continue;
                        }
                        // Concat preambles first, then all .typ files into a temp file
                        var tmpContent = new StringBuilder();
                        for (var pf : preambleFiles) { tmpContent.append(readString(pf)).append('\n'); }
                        for (var tf : typFiles) { tmpContent.append(readString(tf)).append('\n'); }
                        aggFile = createTempFile("buildweb-", ".typ");
                        writeString(aggFile, tmpContent.toString());
                        aggFile.toFile().deleteOnExit();
                    }
                }

                // Resolve #include directives: read aggregator, inline included files, write to temp
                {
                    var resolved = resolveIncludes(aggFile, srcRoot);
                    var resolvedFile = createTempFile("buildweb-", ".typ");
                    writeString(resolvedFile, resolved);
                    resolvedFile.toFile().deleteOnExit();
                    aggFile = resolvedFile;
                }

                System.out.println("  " + chName + " → " + m.webDir() + "/" + chName);
                totalChapters++;

                createDirectories(outDir);

                var cmd = new String[]{
                    "java", "--enable-preview", "--source", "21",
                    casPath.toString(),
                    aggFile.toAbsolutePath().toString(),
                    outDir.toAbsolutePath().toString()
                };
                var proc = new ProcessBuilder(cmd)
                    .directory(webRoot.toFile())
                    .redirectErrorStream(true)
                    .start();

                var output = new String(proc.getInputStream().readAllBytes());
                int exitCode = proc.waitFor();

                // Count output files
                try (var outStream = list(outDir)) {
                    var files = outStream.filter(f -> f.toString().endsWith(".qmd")).toList();
                    totalFiles += files.size();
                    if (!output.contains("Done")) {
                        System.out.println("    " + files.size() + " sections");
                    }
                }
                if (exitCode != 0) {
                    System.out.println("    ERROR (exit " + exitCode + "):");
                    output.lines().forEach(l -> System.out.println("    " + l));
                }
            }
        }
        System.out.println();
    }

    // --- Appendices ---
    System.out.println("=== appendices ===");
    var webAppDir = webRoot.resolve("z-appendices");
    createDirectories(webAppDir); // ensure exists (not tracked in git)
    // Clear existing subdirectories
    try (var stream = list(webAppDir)) {
        for (var entry : stream.toList()) {
            if (isDirectory(entry) && !entry.getFileName().toString().startsWith(".")) {
                deleteRecursive(entry);
                System.out.println("  removed: " + entry.getFileName());
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

            System.out.println("  " + appName + " → z-appendices/" + appName);
            totalChapters++;

            createDirectories(outDir);

            // Resolve includes
            var resolvedAppContent = resolveIncludes(app, srcRoot);
            var resolvedAppFile = createTempFile("buildweb-", ".typ");
            writeString(resolvedAppFile, resolvedAppContent);
            resolvedAppFile.toFile().deleteOnExit();

            var cmd = new String[]{
                "java", "--enable-preview", "--source", "21",
                casPath.toString(),
                resolvedAppFile.toAbsolutePath().toString(),
                outDir.toAbsolutePath().toString()
            };
            var proc = new ProcessBuilder(cmd)
                .directory(webRoot.toFile())
                .redirectErrorStream(true)
                .start();

            var output = new String(proc.getInputStream().readAllBytes());
            int exitCode = proc.waitFor();

            try (var outStream = list(outDir)) {
                var files = outStream.filter(f -> f.toString().endsWith(".qmd")).toList();
                totalFiles += files.size();
            }
            if (exitCode != 0) {
                System.out.println("    ERROR (exit " + exitCode + "): " + output);
            }
        }
    }

    // --- Shared ---
    System.out.println();
    System.out.println("=== shared → _shared/ ===");
    var webSharedDir = webRoot.resolve("_shared");
    createDirectories(webSharedDir); // ensure exists (not tracked in git)
    // Clear existing .qmd files (but keep _metadata.yml)
    try (var stream = list(webSharedDir)) {
        for (var entry : stream.toList()) {
            if (entry.toString().endsWith(".qmd")) {
                deleteIfExists(entry);
            }
        }
    }
    var sharedSrcDir = srcRoot.resolve("shared");
    try (var stream = list(sharedSrcDir)) {
        var _sharedFiles = stream
            .filter(f -> f.getFileName().toString().endsWith(".typ"))
            .filter(f -> !isDirectory(f))
            .sorted()
            .toList();

        for (var sf : _sharedFiles) {
            var sName = sf.getFileName().toString().replace(".typ", "");

            System.out.println("  " + sName + " → _shared/");
            totalChapters++;

            createDirectories(webSharedDir);

            // Resolve includes
            var resolvedSharedContent = resolveIncludes(sf, srcRoot);
            var resolvedSharedFile = createTempFile("buildweb-", ".typ");
            writeString(resolvedSharedFile, resolvedSharedContent);
            resolvedSharedFile.toFile().deleteOnExit();

            var cmd = new String[]{
                "java", "--enable-preview", "--source", "21",
                casPath.toString(),
                resolvedSharedFile.toAbsolutePath().toString(),
                webSharedDir.toAbsolutePath().toString()
            };
            var proc = new ProcessBuilder(cmd)
                .directory(webRoot.toFile())
                .redirectErrorStream(true)
                .start();

            var output = new String(proc.getInputStream().readAllBytes());
            int exitCode = proc.waitFor();

            try (var outStream = list(webSharedDir)) {
                totalFiles += (int) outStream.filter(f -> f.toString().endsWith(".qmd")).count();
            }
            if (exitCode != 0) {
                System.out.println("    ERROR (exit " + exitCode + "): " + output);
            }
        }
    }

    System.out.println();
    System.out.println("Done: " + totalChapters + " chapters processed, " + totalFiles + " .qmd files generated");

    // --- Figures: compile each .typ → .svg ---
    var figSrcDir = srcRoot.resolve("figures");
    var figOutDir = webRoot.resolve("figures");
    createDirectories(figOutDir);
    System.out.println();
    System.out.println("=== figures ===");
    int figCount = 0;
    try (var stream = list(figSrcDir)) {
        var figFiles = stream
            .filter(f -> f.getFileName().toString().endsWith(".typ"))
            .sorted()
            .toList();
        for (var fig : figFiles) {
            var svgName = fig.getFileName().toString().replace(".typ", ".svg");
            var svgPath = figOutDir.resolve(svgName);
            var cmd = new String[]{"typst", "compile", fig.toAbsolutePath().toString(), svgPath.toAbsolutePath().toString()};
            var proc = new ProcessBuilder(cmd)
                .redirectErrorStream(true)
                .start();
            var exitCode = proc.waitFor();
            if (exitCode == 0) {
                figCount++;
            } else {
                System.out.println("  ERROR: " + fig.getFileName());
            }
        }
    }
    System.out.println("  " + figCount + " figures compiled");

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
            return; // already gone
        }
    }
    try {
        deleteIfExists(dir);
    } catch (IOException ignored) {}
}

// Resolve #include "relative/path.typ" directives recursively.
// Paths are relative to the included file's parent directory.
String resolveIncludes(Path file, Path srcRoot) throws IOException {
    var content = readString(file);
    var parent = file.getParent();
    // Match #include "path/to/file.typ" — may be relative with ../ or direct
    var p = java.util.regex.Pattern.compile("#include\\s+\"([^\"]+)\"");
    var m = p.matcher(content);
    var sb = new StringBuilder();
    while (m.find()) {
        var relPath = m.group(1);
        var target = parent.resolve(relPath).normalize();
        // Guard against escaping srcRoot
        if (!target.startsWith(srcRoot)) {
            m.appendReplacement(sb, "");
            continue;
        }
        try {
            var included = resolveIncludes(target, srcRoot);
            m.appendReplacement(sb, java.util.regex.Matcher.quoteReplacement(included));
        } catch (NoSuchFileException e) {
            // File doesn't exist — leave include in place (ConvertAndSplit strips it)
            m.appendReplacement(sb, "");
        }
    }
    m.appendTail(sb);
    return sb.toString();
}
