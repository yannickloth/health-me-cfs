import static java.nio.file.Files.*;
import java.nio.file.*;
import java.io.*;
import java.util.*;
import java.util.regex.*;

record LabelDup(String file, String label, int count) {
    @Override public String toString() {
        return "%s  label <%s> appears %d times".formatted(file, label, count);
    }
}

record BrokenRef(String file, int line, String ref) {
    @Override public String toString() {
        return "%s:%d  broken cross-ref @%s".formatted(file, line, ref);
    }
}

record DanglingInclude(String file, String include) {
    @Override public String toString() {
        return "%s  #include \"%s\" not found".formatted(file, include);
    }
}

record MissingBib(String file, int line, String key) {
    @Override public String toString() {
        return "%s:%d  citation @%s not in bib/*.bib".formatted(file, line, key);
    }
}

void main() throws IOException {
    var srcRoot = Path.of("src/main/typst/mecfs");
    var findings = new ArrayList<String>();

    var allTypFiles = collectTypFiles(srcRoot);

    var resolvedChapters = resolveAllChapters(allTypFiles, srcRoot);
    var allLabels = collectAllLabels(resolvedChapters);

    var dupLabels = checkDuplicateLabels(allTypFiles);
    if (!dupLabels.isEmpty()) {
        findings.add("--- Check 1: Duplicate Labels ---");
        dupLabels.forEach(d -> findings.add("  " + d));
    }

    var brokenRefs = checkBrokenCrossReferences(resolvedChapters, allLabels);
    if (!brokenRefs.isEmpty()) {
        findings.add("--- Check 2: Broken Cross-References ---");
        brokenRefs.forEach(b -> findings.add("  " + b));
    }

    var dangling = checkDanglingIncludes(allTypFiles, srcRoot);
    if (!dangling.isEmpty()) {
        findings.add("--- Check 3: Dangling Includes ---");
        dangling.forEach(d -> findings.add("  " + d));
    }

    var bibKeys = loadBibKeysFromDir(srcRoot.resolve("bib"));
    var missingCits = checkCitationBibConsistency(allTypFiles, srcRoot, bibKeys);
    if (!missingCits.isEmpty()) {
        System.out.println("--- Check 4: Citation-Bib Consistency (warn-only) ---");
        System.out.println("  %d citation(s) not in bib/*.bib (informational)".formatted(missingCits.size()));
    }

    checkPlaceholders(allTypFiles);

    if (!findings.isEmpty()) {
        findings.forEach(System.err::println);
        System.exit(1);
    }
}

String labelRegex = "<([a-z]+:[a-zA-Z0-9_.-]+)>";
String labelFnRegex = "#label\\(\"([a-z]+:[a-zA-Z0-9_.-]+)\"\\)";
String crossRefPrefixes = "(?:sec|ch|subsec|subsubsec|fig|tab|eq|hyp|spec|oq|ach|pred|prop|lim|warn|rec|dir|obs|app|def|req|protocol|rem|cont|cf|open):";

List<Path> collectTypFiles(Path root) throws IOException {
    var files = new ArrayList<Path>();
    try (var stream = walk(root).sorted()) {
        stream.filter(p -> p.toString().endsWith(".typ"))
              .filter(p -> !p.getFileName().toString().startsWith("."))
              .filter(p -> !p.startsWith(root.resolve("figures")))
              .filter(p -> !p.startsWith(root.resolve("fonts")))
              .filter(p -> !p.startsWith(root.resolve("packages")))
              .filter(p -> !p.startsWith(root.resolve("tmp")))
              .forEach(files::add);
    }
    return files;
}

List<Path> chapterFiles(List<Path> allFiles, Path srcRoot) {
    return allFiles.stream()
        .filter(p -> {
            var rel = srcRoot.relativize(p).toString();
            return rel.startsWith("part") && (rel.endsWith(".typ") && !rel.contains("/part"));
        })
        .toList();
}

Map<Path, String> resolveAllChapters(List<Path> allFiles, Path srcRoot) throws IOException {
    var result = new LinkedHashMap<Path, String>();
    for (var f : chapterFiles(allFiles, srcRoot)) {
        result.put(f, resolveIncludes(f, srcRoot));
    }
    return result;
}

Set<String> collectAllLabels(Map<Path, String> chapters) {
    var labels = new HashSet<String>();
    var p = Pattern.compile(labelRegex);
    var pFn = Pattern.compile(labelFnRegex);
    for (var content : chapters.values()) {
        var lines = content.split("\n");
        for (var line : lines) {
            var stripped = line.strip();
            if (stripped.startsWith("//")) continue;
            var m = p.matcher(stripped);
            while (m.find()) labels.add(m.group(1));
            var mFn = pFn.matcher(stripped);
            while (mFn.find()) labels.add(mFn.group(1));
        }
    }
    try (var figStream = walk(srcRoot.resolve("figures"))) {
        for (var f : figStream.filter(fp -> fp.toString().endsWith(".typ")).toList()) {
            var content = readString(f);
            var m = p.matcher(content);
            while (m.find()) labels.add(m.group(1));
        }
    } catch (Exception e) {}
    try (var appStream = walk(srcRoot.resolve("appendices"))) {
        for (var f : appStream.filter(fp -> fp.toString().endsWith(".typ")).toList()) {
            var content = readString(f);
            var m = p.matcher(content);
            while (m.find()) labels.add(m.group(1));
        }
    } catch (Exception e) {}
    return labels;
}

List<LabelDup> checkDuplicateLabels(List<Path> allTypFiles) {
    var result = new ArrayList<LabelDup>();
    var p = Pattern.compile(labelRegex);
    var pFn = Pattern.compile(labelFnRegex);
    for (var f : allTypFiles) {
        try {
            var fname = srcRoot.relativize(f).toString();
            var content = readString(f);
            var counts = new HashMap<String, Integer>();
            var lines = content.split("\n");
            for (var line : lines) {
                var stripped = line.strip();
                if (stripped.startsWith("//")) continue;
                var m = p.matcher(stripped);
                while (m.find()) counts.merge(m.group(1), 1, Integer::sum);
                var mFn = pFn.matcher(stripped);
                while (mFn.find()) counts.merge(mFn.group(1), 1, Integer::sum);
            }
            for (var e : counts.entrySet()) {
                if (e.getValue() > 1) result.add(new LabelDup(fname, e.getKey(), e.getValue()));
            }
        } catch (Exception e) {}
    }
    return result;
}

List<BrokenRef> checkBrokenCrossReferences(Map<Path, String> chapters, Set<String> allLabels) {
    var result = new ArrayList<BrokenRef>();
    var refP = Pattern.compile("@(" + crossRefPrefixes + "[a-zA-Z0-9_-]+(?:\\.[a-zA-Z0-9_-]+)*)");
    for (var entry : chapters.entrySet()) {
        var fname = srcRoot.relativize(entry.getKey()).toString();
        var lines = entry.getValue().split("\n");
        for (int i = 0; i < lines.length; i++) {
            var line = lines[i];
            var stripped = line.strip();
            if (stripped.startsWith("//")) continue;
            var m = refP.matcher(line);
            while (m.find()) {
                var ref = m.group(1).replaceAll("[.,;:!?)]+$", "");
                if (!allLabels.contains(ref)) result.add(new BrokenRef(fname, i + 1, ref));
            }
        }
    }
    return result;
}

Path srcRoot = Path.of("src/main/typst/mecfs");

List<DanglingInclude> checkDanglingIncludes(List<Path> allTypFiles, Path root) throws IOException {
    var result = new ArrayList<DanglingInclude>();
    var p = Pattern.compile("#include\\s+\"([^\"]+)\"");
    for (var f : allTypFiles) {
        var content = readString(f);
        var m = p.matcher(content);
        while (m.find()) {
            var inc = m.group(1);
            if (inc.contains("figures/")) continue;
            var target = f.getParent().resolve(inc).normalize();
            if (!exists(target)) {
                result.add(new DanglingInclude(root.relativize(f).toString(), inc));
            }
        }
    }
    return result;
}

Set<String> loadBibKeys(Path bibPath) throws IOException {
    var keys = new HashSet<String>();
    var content = readString(bibPath);
    var p = Pattern.compile("@\\w+\\{([^,]+),");
    var m = p.matcher(content);
    while (m.find()) keys.add(m.group(1));
    return keys;
}

Set<String> loadBibKeysFromDir(Path bibDir) throws IOException {
    var keys = new HashSet<String>();
    try (var stream = walk(bibDir, 1)) {
        for (var f : stream.filter(p -> p.toString().endsWith(".bib")).toList()) {
            keys.addAll(loadBibKeys(f));
        }
    }
    return keys;
}

List<MissingBib> checkCitationBibConsistency(List<Path> allTypFiles, Path root, Set<String> bibKeys) throws IOException {
    var result = new ArrayList<MissingBib>();
    var citeP = Pattern.compile("@([A-Z][a-zA-Z0-9]+\\d{4}[a-zA-Z0-9]*)");
    for (var f : allTypFiles) {
        var content = readString(f);
        var lines = content.split("\n");
        for (int i = 0; i < lines.length; i++) {
            var line = lines[i];
            var stripped = line.strip();
            if (stripped.startsWith("//")) continue;
            var m = citeP.matcher(line);
            while (m.find()) {
                var key = m.group(1);
                if (key.matches(crossRefPrefixes + "[a-zA-Z0-9_.-]+")) continue;
                if (!bibKeys.contains(key)) result.add(new MissingBib(root.relativize(f).toString(), i + 1, key));
            }
        }
    }
    return result;
}

void checkPlaceholders(List<Path> allTypFiles) throws IOException {
    int todoCount = 0;
    int placeholderDoiCount = 0;

    for (var f : allTypFiles) {
        var content = readString(f);
        todoCount += countOccurrences(content, "// TODO");
        todoCount += countOccurrences(content, "/* TODO");
        todoCount += countOccurrences(content, "FIXME");
        todoCount += countOccurrences(content, "HACK");
        placeholderDoiCount += countOccurrences(content, "10.xxxx/xxxXXXXX");
    }

    int baselineTodo = 5;
    int baselineDoi = 1;

    System.out.println("INFO — " + todoCount + " TODO/FIXME/HACK markers" +
        (todoCount > baselineTodo ? " (WARNING: increased from baseline " + baselineTodo + ")" : " (baseline " + baselineTodo + ")") +
        ", " + placeholderDoiCount + " placeholder DOI" +
        (placeholderDoiCount > baselineDoi ? " (WARNING: increased from baseline " + baselineDoi + ")" : " (baseline " + baselineDoi + ")"));
}

int countOccurrences(String text, String pattern) {
    int count = 0;
    int idx = 0;
    while ((idx = text.indexOf(pattern, idx)) != -1) {
        count++;
        idx += pattern.length();
    }
    return count;
}

String resolveIncludes(Path file, Path root) throws IOException {
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
        if (!target.startsWith(root)) {
            m.appendReplacement(sb, "");
            continue;
        }
        try {
            var included = resolveIncludes(target, root);
            m.appendReplacement(sb, Matcher.quoteReplacement(included));
        } catch (NoSuchFileException e) {
            m.appendReplacement(sb, "");
        }
    }
    m.appendTail(sb);
    return sb.toString();
}
