// BuildWeb — regenerate Quarto .qmd files from Typst sources
// One command: java BuildWeb.java && quarto render
//
// Run from web/ directory.
// Source struct: src/main/java/web/BuildWeb.java, ConvertAndSplit.java
// Typst sources: src/main/typst/mecfs/
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
    // Each entry: (sourcePartDir, webPartDir, exclude files matching)
    record PartMapping(String srcDir, String webDir, List<String> exclude) {}
    var mappings = List.of(
        new PartMapping("part1-clinical", "part1-clinical", List.of("part1-intro.typ")),
        new PartMapping("part2-pathophysiology", "part2-pathophysiology", List.of("part2-intro.typ")),
        new PartMapping("part3-treatment", "part3-treatment", List.of("part3-intro.typ")),
        new PartMapping("part4-research", "part4-research", List.of("part4-intro.typ", "hypothesis-registry.typ", "negative-trials.typ")),
        new PartMapping("part5-modeling", "part5-modeling", List.of("part5-intro.typ"))
    );

    int totalFiles = 0;
    int totalChapters = 0;

    for (var m : mappings) {
        var srcDir = srcRoot.resolve(m.srcDir());
        var webDir = webRoot.resolve(m.webDir());

        var excludeSet = new HashSet<>(m.exclude());

        System.out.println("=== " + m.srcDir() + " ===");
        createDirectories(webDir); // ensure exists (not tracked in git)
        // Clear existing chapter subdirectories
        try (var stream = list(webDir)) {
            for (var entry : stream.toList()) {
                if (isDirectory(entry) && !entry.getFileName().toString().startsWith(".")) {
                    deleteRecursive(entry);
                    System.out.println("  removed: " + entry.getFileName());
                }
            }
        }

        // Process each Typst chapter file
        try (var stream = list(srcDir)) {
            var chapFiles = stream
                .filter(f -> f.getFileName().toString().endsWith(".typ"))
                .filter(f -> !excludeSet.contains(f.getFileName().toString()))
                .filter(f -> !isDirectory(f))
                .sorted()
                .toList();

            for (var ch : chapFiles) {
                var chName = ch.getFileName().toString().replace(".typ", "");
                var outDir = webDir.resolve(chName);

                System.out.println("  " + chName + " → " + m.webDir() + "/" + chName);
                totalChapters++;

                createDirectories(outDir);

                // Run ConvertAndSplit
                var cmd = new String[]{
                    "java", "--enable-preview", "--source", "21",
                    casPath.toString(),
                    ch.toAbsolutePath().toString(),
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
                    // Output just the count
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

            var cmd = new String[]{
                "java", "--enable-preview", "--source", "21",
                casPath.toString(),
                app.toAbsolutePath().toString(),
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

            var cmd = new String[]{
                "java", "--enable-preview", "--source", "21",
                casPath.toString(),
                sf.toAbsolutePath().toString(),
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
