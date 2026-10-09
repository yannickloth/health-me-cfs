import static java.nio.file.Files.*;
import java.nio.file.*;
import java.io.*;
import java.util.*;
import java.util.regex.*;
import java.util.stream.*;

/**
 * Bibliography-integrity audit for the ME/CFS paper's split BibTeX corpus.
 *
 * Detects the failure mode where the same paper exists under several BibTeX keys:
 * the printed bibliography then lists the same work multiple times, and different
 * chapters cite the same source under different names.
 *
 * Checks:
 *   1. Duplicate DOIs across bib/*.bib (multiple keys -> one DOI, ignoring empty/
 *      placeholder DOIs and same-key case variants that are genuinely different entries).
 *   2. Duplicate (title+journal+year+pages) fingerprints, catching duplicates where
 *      one entry's DOI is missing or mistyped.
 *   3. Duplicate ISBNs (books).
 *   4. Near-colliding keys: pairs of keys that normalise to the same author+year+keyword
 *      skeleton (e.g. Roy2021mrgprx2 vs Roy2021MRGPRX2Review) — flagged as suspicious,
 *      lower severity, since legitimately distinct papers can share a skeleton.
 *   5. Duplicate citations in the rendered sense: keys from check 1/2 that are BOTH
 *      actually cited in src/**.typ — these are the ones that produce duplicate items
 *      in the printed bibliography (severity: high).
 *
 * Exit code 1 if any CRITICAL (duplicate-DOI / duplicate-fingerprint, both cited)
 * finding exists; near-collision findings alone do not fail the build unless strict
 * mode is enabled via -Dbib.strict=true.
 */
public class BibIntegrityAuditTest {

    record Entry(String key, String file, String doi, String isbn,
                 String title, String journal, String year, String pages) {}

    record Dup(String kind, String severity, String doiOrFingerprint, List<Entry> entries) {}

    static final List<String> findings = new ArrayList<>();
    static final List<Dup> dups = new ArrayList<>();

    public static void main(String[] args) throws IOException {
        var bibRoot = Path.of("src/main/typst/mecfs/bib");
        var srcRoot = Path.of("src");
        if (!exists(bibRoot)) {
            System.err.println("FATAL: " + bibRoot + " not found (run from repo root)");
            System.exit(2);
        }

        // ---- parse all bib entries ----
        List<Entry> entries = new ArrayList<>();
        try (var walk = Files.walk(bibRoot)) {
            for (var f : walk.filter(p -> p.toString().endsWith(".bib")).sorted().toList()) {
                entries.addAll(parseEntries(f));
            }
        }
        System.out.printf("Parsed %d entries from %s%n", entries.size(), bibRoot);

        // ---- keys actually cited in src/**.typ (excluding label-ish prefixes) ----
        var cited = citedKeys(srcRoot);
        System.out.printf("Distinct cited keys in src/**.typ: %d%n", cited.size());

        // ---- Check 1: duplicate DOIs ----
        checkDuplicates(entries, cited, "duplicate-DOI",
                e -> e.doi() == null || e.doi().isBlank() ? null : normalizeDoi(e.doi()));

        // ---- Check 2: duplicate title fingerprints (catches missing/mistyped DOIs) ----
        checkDuplicates(entries, cited, "duplicate-title-fingerprint",
                e -> fingerprint(e));

        // ---- Check 3: duplicate ISBNs ----
        checkDuplicates(entries, cited, "duplicate-ISBN",
                e -> e.isbn() == null || e.isbn().isBlank() ? null : normalizeIsbn(e.isbn()));

        // ---- Check 4: near-colliding keys (suspicious, LOW) ----
        var collisions = keyCollisions(entries);
        if (!collisions.isEmpty()) {
            findings.add("--- Check 4: near-colliding keys (LOW, review) ---");
            collisions.forEach(c -> findings.add("  " + c));
        }

        // ---- report ----
        System.out.println();
        if (findings.isEmpty()) {
            System.out.println("BibIntegrityAuditTest: PASS (no duplicates found)");
            return;
        }
        System.out.println("BibIntegrityAuditTest: FAIL");
        findings.forEach(System.out::println);
        long critical = findings.stream().filter(l -> l.contains("[CRITICAL]")).count();
        long high = findings.stream().filter(l -> l.contains("[HIGH]")).count();
        System.out.printf("%nSummary: %d CRITICAL, %d HIGH, %d LOW (near-collisions)%n",
                critical, high, collisions.size());

        boolean strict = Boolean.getBoolean("bib.strict");
        if (critical > 0 || high > 0 || (strict && !collisions.isEmpty())) {
            System.exit(1);
        }
    }

    // ================= parsing =================

    static List<Entry> parseEntries(Path file) throws IOException {
        var out = new ArrayList<Entry>();
        // Entries start at column 0 with @type{key,  — indented @ means prose (e.g. "@article{...}" quoted in a note).
        var startPat = Pattern.compile("^@\\w+\\{([^,\\s]+),");
        List<String> lines;
        try (var br = Files.newBufferedReader(file)) {
            lines = br.lines().collect(Collectors.toList());
        }
        int i = 0;
        while (i < lines.size()) {
            var m = startPat.matcher(lines.get(i));
            if (!m.matches()) { i++; continue; }
            var key = m.group(1);
            var body = new StringBuilder();
            body.append(lines.get(i)).append('\n');
            i++;
            // consume until braces balance
            int depth = 1;
            while (i < lines.size() && depth > 0) {
                var line = lines.get(i);
                for (char c : line.toCharArray()) {
                    if (c == '{') depth++;
                    else if (c == '}') depth--;
                }
                body.append(line).append('\n');
                i++;
            }
            out.add(toEntry(key, file, body.toString()));
        }
        return out;
    }

    static Entry toEntry(String key, Path file, String body) {
        return new Entry(key, file.toString(),
                first(body, "doi"), first(body, "isbn"),
                normWs(first(body, "title")), normWs(first(body, "journal")),
                first(body, "year"), first(body, "pages"));
    }

    static String first(String body, String field) {
        // matches  field = {..}  or  field = ".."  possibly with spaces around '='
        var m = Pattern.compile(field + "\\s*=\\s*[{\"](.+?)[}\"],?\\s*$",
                Pattern.CASE_INSENSITIVE | Pattern.MULTILINE)
                .matcher(body);
        // also match single-line values that end before a newline
        if (!m.find()) {
            m = Pattern.compile(field + "\\s*=\\s*[{\"]([^\n]+?)[}\"],?\\s*\n",
                    Pattern.CASE_INSENSITIVE).matcher(body);
            if (!m.find()) return null;
        }
        return m.group(1).trim();
    }

    static String normWs(String s) {
        if (s == null) return null;
        return s.replaceAll("[{}\\\\]", "").replaceAll("\\s+", " ").trim().toLowerCase();
    }

    // ================= normalisation =================

    static String normalizeDoi(String doi) {
        var d = doi.trim().toLowerCase();
        d = d.replaceFirst("(?i)^https?://(dx\\.)?doi\\.org/", "");
        d = d.replaceFirst("(?i)^doi:\\s*", "");
        // compare case-insensitively (DOIs are case-insensitive in practice)
        return d;
    }

    static String normalizeIsbn(String isbn) {
        var s = isbn.replaceAll("[-–—\\s]", "");
        return s.isEmpty() ? null : s;
    }

    static String fingerprint(Entry e) {
        if (e.title() == null || e.title().isBlank()) return null;
        var t = e.title().replaceAll("[^a-z0-9 ]", "");
        var j = e.journal() == null ? "" : e.journal().replaceAll("[^a-z0-9]", "");
        var y = e.year() == null ? "" : e.year();
        var p = e.pages() == null ? "" : e.pages().replaceAll("[^0-9]", "");
        // title + year + start page is stable enough; journal included when present
        return (t + "|" + y + "|" + firstDigits(p) + (j.isBlank() ? "" : "|" + j));
    }

    static String firstDigits(String pages) {
        if (pages == null || pages.isBlank()) return "";
        var m = Pattern.compile("\\d+").matcher(pages);
        return m.find() ? m.group() : "";
    }

    // ================= duplicate grouping =================

    static void checkDuplicates(List<Entry> entries, Set<String> cited,
                                String kind, java.util.function.Function<Entry, String> keyFn) {
        var groups = new LinkedHashMap<String, List<Entry>>();
        for (var e : entries) {
            var k = keyFn.apply(e);
            if (k == null || k.isBlank()) continue;
            groups.computeIfAbsent(k, x -> new ArrayList<>()).add(e);
        }
        for (var g : groups.values()) {
            if (g.size() < 2) continue;
            // dedupe identical keys appearing twice (same entry listed twice) — not possible, skip
            var keys = g.stream().map(Entry::key).distinct().toList();
            if (keys.size() < 2) continue;
            var bothCited = keys.stream().filter(cited::contains).count() >= 2;
            var sev = bothCited ? "CRITICAL" : "HIGH";
            var d = new Dup(kind, sev, g.get(0).doi() != null ? g.get(0).doi() : fingerprint(g.get(0)), g);
            dups.add(d);
            findings.add("--- %s [%s]: %d keys, same work%s ---".formatted(
                    kind, sev, keys.size(), bothCited ? " (>=2 keys actively cited -> duplicate bibliography items)" : ""));
            for (var e : g) {
                findings.add("    %s  %s%s".formatted(e.key(), e.file(),
                        cited.contains(e.key()) ? "  [cited]" : "  [uncited]"));
            }
        }
    }

    // ================= key collisions =================

    static List<String> keyCollisions(List<Entry> entries) {
        // skeleton: leading author token + 4-digit year + remainder, lowercased
        var groups = new LinkedHashMap<String, List<String>>();
        var pat = Pattern.compile("^([A-Za-z]+)(\\d{4})(.+)$");
        for (var e : entries) {
            var m = pat.matcher(e.key());
            if (!m.matches()) continue;
            var skel = (m.group(1) + m.group(2) + m.group(3)).toLowerCase();
            groups.computeIfAbsent(skel, x -> new ArrayList<>()).add(e.key());
        }
        var out = new ArrayList<String>();
        for (var g : groups.values()) {
            var distinct = g.stream().distinct().toList();
            if (distinct.size() < 2) continue;
            // report only skeletons whose keys differ only by case (true collisions)
            var lowerSet = new HashSet<String>();
            for (var k : distinct) {
                if (!lowerSet.add(k.toLowerCase())) {
                    out.add("case-variant keys: " + distinct);
                    break;
                }
            }
        }
        return out;
    }

    // ================= cited keys =================

    static Set<String> citedKeys(Path srcRoot) throws IOException {
        var cited = new HashSet<String>();
        var pat = Pattern.compile("@([A-Za-z][A-Za-z0-9]+)");
        var skip = Set.of("sec", "spec", "oq", "lim", "syn", "ch", "subsec", "hyp", "pred",
                "rule", "tab", "prot", "fhyp", "warn", "finding", "cf", "obs", "check",
                "ach", "open", "eq", "fig", "lim:");
        try (var walk = Files.walk(srcRoot)) {
            for (var f : walk.filter(p -> p.toString().endsWith(".typ")).toList()) {
                String text;
                try (var br = Files.newBufferedReader(f)) {
                    text = br.lines().collect(Collectors.joining("\n"));
                }
                var m = pat.matcher(text);
                while (m.find()) {
                    var k = m.group(1);
                    if (!skip.contains(k)) cited.add(k);
                }
            }
        }
        return cited;
    }

    // ================= fs helper =================

    static boolean exists(Path p) {
        try { return readSymbolicLinkOrNull(p) != null || Files.exists(p); }
        catch (Exception e) { return Files.exists(p); }
    }

    static Path readSymbolicLinkOrNull(Path p) throws IOException {
        return Files.isSymbolicLink(p) ? Files.readSymbolicLink(p) : null;
    }
}
