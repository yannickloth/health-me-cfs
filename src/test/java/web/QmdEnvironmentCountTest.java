// QmdEnvironmentCountTest — verify every Typst environment instance survives conversion to .qmd.
//
// For each chapter: resolves #include directives in Typst source, counts environment instances
// (e.g., #observation(title: ...), #hypothesis(title: ...), etc.), then counts the corresponding
// callout headings (### Observation:, ### Hypothesis:, etc.) in the generated .qmd files.
// Mismatches indicate lost environments during conversion.
//
// Requires: .qmd files already generated (run BuildWeb.java first).
// Run: java --source 25 src/test/java/web/QmdEnvironmentCountTest.java [web-dir]

import static java.nio.file.Files.*;
import java.nio.file.*;
import java.util.*;
import java.util.regex.*;

record EnvMapping(String typstName, String displayName) {}

record CountMismatch(String chapter, String envType, int typstCount, int qmdCount) {
    @Override public String toString() {
        return "%s  %s  typst=%d  qmd=%d  (delta=%d)".formatted(
            chapter, envType, typstCount, qmdCount, qmdCount - typstCount);
    }
}

void main(String[] args) throws Exception {
    var srcRoot = Path.of("src/main/typst/mecfs");
    var webDir = args.length > 0 ? Path.of(args[0]) : Path.of("web");

    if (!isDirectory(webDir)) {
        System.err.println("SKIP — web directory not found: " + webDir);
        return;
    }

    var envMappings = List.of(
        new EnvMapping("achievement",       "Achievement"),
        new EnvMapping("speculation",       "Speculation"),
        new EnvMapping("hypothesis",        "Hypothesis"),
        new EnvMapping("warning-env",       "Warning"),
        new EnvMapping("limitation",        "Limitation"),
        new EnvMapping("open-question",     "Open Question"),
        new EnvMapping("observation",       "Observation"),
        new EnvMapping("clinical-finding",  "Clinical Finding"),
        new EnvMapping("recommendation",    "Recommendation"),
        new EnvMapping("proposal",          "Proposal"),
        new EnvMapping("prediction",        "Prediction"),
        new EnvMapping("key-point",         "Key Point"),
        new EnvMapping("practical-warning", "Practical Warning"),
        new EnvMapping("protocol",          "Protocol")
    );

    var mismatches = new ArrayList<CountMismatch>();
    int chaptersChecked = 0;

    var partDirs = List.of(
        "part1-clinical", "part2-pathophysiology", "part3-treatment",
        "part4-research", "part5-modeling"
    );

    for (var partName : partDirs) {
        var srcDir = srcRoot.resolve(partName);
        var webPartDir = webDir.resolve(partName);
        if (!isDirectory(srcDir) || !isDirectory(webPartDir)) continue;

        try (var stream = list(srcDir)) {
            var chapDirs = stream
                .filter(f -> isDirectory(f) && f.getFileName().toString().startsWith("ch"))
                .sorted()
                .toList();

            for (var chDir : chapDirs) {
                var chName = chDir.getFileName().toString();
                var webChDir = webPartDir.resolve(chName);
                if (!isDirectory(webChDir)) continue;

                var resolved = resolveChapter(chDir, srcRoot);
                if (resolved == null) continue;
                chaptersChecked++;

                var qmdContent = readAllQmd(webChDir);

                for (var env : envMappings) {
                    int typstCount = countTypstEnv(resolved, env.typstName());
                    int qmdCount = countQmdCallout(qmdContent, env.displayName());
                    if (typstCount != qmdCount) {
                        mismatches.add(new CountMismatch(
                            partName + "/" + chName, env.displayName(), typstCount, qmdCount));
                    }
                }
            }
        }
    }

    // Also check appendices
    var appSrcDir = srcRoot.resolve("appendices");
    var appWebDir = webDir.resolve("z-appendices");
    if (isDirectory(appSrcDir) && isDirectory(appWebDir)) {
        try (var stream = list(appSrcDir)) {
            for (var appFile : stream.filter(f -> f.toString().endsWith(".typ")).sorted().toList()) {
                var appName = appFile.getFileName().toString().replaceAll("\\.typ$", "");
                var webAppChDir = appWebDir.resolve(appName);
                if (!isDirectory(webAppChDir)) continue;

                var resolved = resolveIncludes(appFile, srcRoot);
                chaptersChecked++;

                var qmdContent = readAllQmd(webAppChDir);
                for (var env : envMappings) {
                    int typstCount = countTypstEnv(resolved, env.typstName());
                    int qmdCount = countQmdCallout(qmdContent, env.displayName());
                    if (typstCount != qmdCount) {
                        mismatches.add(new CountMismatch(
                            "appendices/" + appName, env.displayName(), typstCount, qmdCount));
                    }
                }
            }
        }
    }

    if (mismatches.isEmpty()) {
        System.out.println("PASS — %d chapters checked, all environment counts match".formatted(chaptersChecked));
        return;
    }

    System.err.println("FAIL — %d environment count mismatch(es) across %d chapters:".formatted(
        mismatches.size(), chaptersChecked));
    for (var m : mismatches) System.err.println("  " + m);
    System.exit(1);
}

String resolveChapter(Path chDir, Path srcRoot) throws Exception {
    var chName = chDir.getFileName().toString();

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
            if (fn.equals(chName + ".typ")) aggFile = tf;
            else if (fn.endsWith("-preamble.typ") || fn.equals("intro-preamble.typ"))
                preambleFiles.add(tf);
        }
    }

    if (aggFile == null) {
        try (var chStream = list(chDir)) {
            var typFiles = chStream
                .filter(f -> f.getFileName().toString().endsWith(".typ"))
                .filter(f -> !isDirectory(f))
                .sorted()
                .toList();
            if (typFiles.isEmpty()) return null;
            var sb = new StringBuilder();
            for (var pf : preambleFiles) sb.append(readString(pf)).append('\n');
            for (var tf : typFiles) sb.append(readString(tf)).append('\n');
            return resolveIncludesFromString(sb.toString(), chDir, srcRoot);
        }
    }

    return resolveIncludes(aggFile, srcRoot);
}

int countTypstEnv(String content, String typstName) {
    int count = 0;
    var pattern = "#" + typstName + "(title:";
    int idx = 0;
    while ((idx = content.indexOf(pattern, idx)) >= 0) {
        count++;
        idx += pattern.length();
    }
    return count;
}

int countQmdCallout(String content, String displayName) {
    int count = 0;
    var heading = "### " + displayName + ":";
    var lines = content.split("\n");
    boolean inCallout = false;
    for (var line : lines) {
        if (line.strip().startsWith("::: {.callout-")) inCallout = true;
        else if (line.strip().equals(":::")) inCallout = false;
        if (inCallout && line.strip().startsWith(heading)) count++;
    }
    return count;
}

String readAllQmd(Path dir) throws Exception {
    var sb = new StringBuilder();
    try (var stream = walk(dir)) {
        for (var path : stream.filter(p -> p.toString().endsWith(".qmd")).sorted().toList()) {
            sb.append(readString(path)).append('\n');
        }
    }
    return sb.toString();
}

String resolveIncludes(Path file, Path srcRoot) throws Exception {
    var content = readString(file);
    return resolveIncludesFromString(content, file.getParent(), srcRoot);
}

String resolveIncludesFromString(String content, Path baseDir, Path srcRoot) throws Exception {
    var p = Pattern.compile("#include\\s+\"([^\"]+)\"");
    var m = p.matcher(content);
    var sb = new StringBuilder();
    while (m.find()) {
        var relPath = m.group(1);
        if (relPath.contains("figures/")) {
            m.appendReplacement(sb, Matcher.quoteReplacement(m.group()));
            continue;
        }
        var target = baseDir.resolve(relPath).normalize();
        if (!target.startsWith(srcRoot)) {
            m.appendReplacement(sb, "");
            continue;
        }
        try {
            var included = resolveIncludes(target, srcRoot);
            m.appendReplacement(sb, Matcher.quoteReplacement(included));
        } catch (java.nio.file.NoSuchFileException e) {
            m.appendReplacement(sb, "");
        }
    }
    m.appendTail(sb);
    return sb.toString();
}
