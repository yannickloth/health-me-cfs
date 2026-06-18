// SplitBib — split monolithic references.bib into per-part .bib files
// for the Quarto web build (which cannot handle a single large .bib).
//
// Strategy:
//   1. Parse all BibTeX entries from src/main/typst/mecfs/references.bib
//   2. Scan each part's .typ files (once) for @citekey references
//   3. Assign each entry to every part that cites it (duplication is fine;
//      Quarto's citeproc deduplicates at render time)
//   4. Entries cited by no part go into shared.bib
//   5. Write split files to web/bib/
//
// Run from project root: java --source 25 src/main/java/web/SplitBib.java
import java.io.*;
import java.nio.file.*;
import java.util.*;
import java.util.regex.*;

void main() throws IOException {
    var bibPath = Path.of("src/main/typst/mecfs/references.bib");
    var srcRoot = Path.of("src/main/typst/mecfs");
    var outDir  = Path.of("web/bib");

    long t0 = System.currentTimeMillis();

    var entries = parseBibEntries(bibPath);
    System.out.println("Parsed " + entries.size() + " BibTeX entries ("
                       + (System.currentTimeMillis() - t0) + " ms)");

    var bibKeys = new HashSet<String>();
    for (var e : entries) bibKeys.add(e.key());

    var dirs = List.of("part1-clinical", "part2-pathophysiology", "part3-treatment",
                       "part4-research", "part5-modeling", "appendices", "shared");

    var citePat = Pattern.compile("@([A-Za-z][A-Za-z0-9_:./-]*)");
    var dirCitations = new LinkedHashMap<String, Set<String>>();

    for (var dir : dirs) {
        long td = System.currentTimeMillis();
        var keys = new HashSet<String>();
        var dirPath = srcRoot.resolve(dir);
        if (!Files.isDirectory(dirPath)) continue;
        try (var walk = Files.walk(dirPath)) {
            var typFiles = walk.filter(p -> p.toString().endsWith(".typ")).toList();
            for (var f : typFiles) {
                var content = Files.readString(f);
                var m = citePat.matcher(content);
                while (m.find()) {
                    var k = m.group(1);
                    if (bibKeys.contains(k)) keys.add(k);
                }
            }
        }
        dirCitations.put(dir, keys);
        System.out.println("  " + dir + ": " + keys.size() + " keys ("
                           + (System.currentTimeMillis() - td) + " ms)");
    }

    var sharedKeys = dirCitations.getOrDefault("shared", Set.of());

    record PartDef(String srcDir, String bibName) {}
    var parts = List.of(
        new PartDef("part1-clinical",        "part1-clinical.bib"),
        new PartDef("part2-pathophysiology",  "part2-pathophysiology.bib"),
        new PartDef("part3-treatment",        "part3-treatment.bib"),
        new PartDef("part4-research",         "part4-research.bib"),
        new PartDef("part5-modeling",         "part5-modeling.bib"),
        new PartDef("appendices",            "appendices.bib")
    );

    Files.createDirectories(outDir);

    var assigned = new HashSet<String>();
    var partEntries = new LinkedHashMap<String, List<BibEntry>>();
    for (var p : parts) partEntries.put(p.bibName(), new ArrayList<>());

    for (var entry : entries) {
        for (var p : parts) {
            var partKeys = dirCitations.getOrDefault(p.srcDir(), Set.of());
            if (partKeys.contains(entry.key()) || sharedKeys.contains(entry.key())) {
                partEntries.get(p.bibName()).add(entry);
                assigned.add(entry.key());
            }
        }
    }

    var unassigned = new ArrayList<BibEntry>();
    for (var entry : entries) {
        if (!assigned.contains(entry.key())) unassigned.add(entry);
    }

    for (var p : parts) {
        writeBibFile(outDir.resolve(p.bibName()), partEntries.get(p.bibName()));
        System.out.println("  " + p.bibName() + ": " + partEntries.get(p.bibName()).size() + " entries");
    }

    writeBibFile(outDir.resolve("shared.bib"), unassigned);
    System.out.println("  shared.bib: " + unassigned.size() + " entries (uncited)");

    int total = parts.stream().mapToInt(p -> partEntries.get(p.bibName()).size()).sum()
                + unassigned.size();
    System.out.println("\nDone: " + entries.size() + " source entries → "
                       + (parts.size() + 1) + " files (" + total + " total incl. duplicates)"
                       + " in " + (System.currentTimeMillis() - t0) + " ms");
}

record BibEntry(String key, String rawText) {}

List<BibEntry> parseBibEntries(Path bibPath) throws IOException {
    var lines = Files.readAllLines(bibPath);
    var entries = new ArrayList<BibEntry>();
    var entryStart = Pattern.compile("^@(\\w+)\\{([^,]+),\\s*$");

    var commentBuf = new ArrayList<String>();
    var entryBuf = new StringBuilder();
    String currentKey = null;
    int braceDepth = 0;
    boolean inEntry = false;

    for (var line : lines) {
        if (!inEntry) {
            var stripped = line.strip();
            if (stripped.startsWith("%") || stripped.isEmpty()) {
                commentBuf.add(line);
                continue;
            }
            var m = entryStart.matcher(stripped);
            if (m.matches()) {
                currentKey = m.group(2).trim();
                inEntry = true;
                braceDepth = 1;
                if (!commentBuf.isEmpty()) {
                    while (!commentBuf.isEmpty() && commentBuf.getFirst().strip().isEmpty())
                        commentBuf.removeFirst();
                    for (var c : commentBuf) entryBuf.append(c).append('\n');
                }
                commentBuf.clear();
                entryBuf.append(line);
                continue;
            }
            commentBuf.clear();
            continue;
        }

        entryBuf.append('\n').append(line);
        for (int i = 0; i < line.length(); i++) {
            char c = line.charAt(i);
            if (c == '{') braceDepth++;
            else if (c == '}') {
                braceDepth--;
                if (braceDepth == 0) {
                    entries.add(new BibEntry(currentKey, entryBuf.toString()));
                    entryBuf.setLength(0);
                    currentKey = null;
                    inEntry = false;
                    break;
                }
            }
        }
    }
    return entries;
}

void writeBibFile(Path path, List<BibEntry> entries) throws IOException {
    var sb = new StringBuilder();
    for (int i = 0; i < entries.size(); i++) {
        if (i > 0) sb.append("\n\n");
        sb.append(entries.get(i).rawText());
    }
    sb.append('\n');
    Files.writeString(path, sb.toString());
}
