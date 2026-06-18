// SplitBib — split monolithic references.bib into per-topic .bib files
// based on the research_stream field in each entry.
//
// Streams are mapped to ~20 file-level categories. Both the Typst build
// and the Quarto web build consume the same split files.
//
// Output: bib/ directory (relative to project root) with one .bib per category.
// Typst: #bibliography(("bib/sleep.bib", "bib/immune.bib", ...), style: "ieee")
// Quarto: _quarto.yml lists bib/*.bib files; Nix build copies them to web/bib/
//
// Run from project root: java --source 25 src/main/java/web/SplitBib.java
import java.io.*;
import java.nio.file.*;
import java.util.*;
import java.util.regex.*;

void main() throws IOException {
    var bibPath = Path.of("src/main/typst/mecfs/references.bib");
    var outDir  = Path.of("src/main/typst/mecfs/bib");

    long t0 = System.currentTimeMillis();

    var entries = parseBibEntries(bibPath);
    System.out.println("Parsed " + entries.size() + " BibTeX entries");

    Files.createDirectories(outDir);

    var buckets = new LinkedHashMap<String, List<BibEntry>>();
    for (var e : entries) {
        var cat = streamToCategory(e.stream());
        buckets.computeIfAbsent(cat, k -> new ArrayList<>()).add(e);
    }

    var sortedCats = new ArrayList<>(buckets.keySet());
    sortedCats.sort(String::compareTo);

    for (var cat : sortedCats) {
        var list = buckets.get(cat);
        var path = outDir.resolve(cat + ".bib");
        writeBibFile(path, list);
        System.out.println("  " + cat + ".bib: " + list.size() + " entries");
    }

    System.out.println("\nDone: " + entries.size() + " entries → " + sortedCats.size()
                       + " files in " + (System.currentTimeMillis() - t0) + " ms");

    System.out.println("\nFile list for Typst #bibliography:");
    var sb = new StringBuilder("#bibliography((");
    for (int i = 0; i < sortedCats.size(); i++) {
        if (i > 0) sb.append(", ");
        sb.append("\"bib/").append(sortedCats.get(i)).append(".bib\"");
    }
    sb.append("), style: \"ieee\")");
    System.out.println(sb);

    System.out.println("\nFile list for _quarto.yml:");
    System.out.println("bibliography:");
    for (var cat : sortedCats) {
        System.out.println("  - bib/" + cat + ".bib");
    }
}

String streamToCategory(String stream) {
    if (stream == null || stream.isEmpty()) return "general";
    var s = stream.toLowerCase();

    if (s.contains("sleep") || s.contains("circadian") || s.contains("cryotherapy")
        || s.contains("dora") || s.contains("lemborexant") || s.contains("orexin")
        || s.equals("exosome-sleep-reversal")) return "sleep";

    if (s.contains("glymphatic") || s.contains("brain-clearance") || s.contains("csf-drainage")) return "brain-clearance";

    if (s.contains("energy-metabolism") || s.contains("krebs") || s.contains("nad-")
        || s.contains("creatine") || s.contains("pgc1a") || s.contains("pdk-muscle")
        || s.contains("mitochond") || s.contains("mtor") || s.contains("q10")
        || s.contains("ubiquinol") || s.contains("funcap") || s.contains("cofactor")
        || s.equals("riboflavin-metabolism") || s.equals("nrf2-pathway")) return "energy-metabolism";

    if (s.contains("autoimmun") || s.contains("sle-mecfs") || s.contains("schizophrenia-autoantibod")
        || s.contains("ant-autoantibod") || s.contains("tissue-specific-autoantibod")
        || s.contains("gpcr-autoantibod") || s.contains("lc-autoantibodies")
        || s.contains("monocyte-dc")) return "autoimmunity";

    if (s.contains("mast-cell") || s.contains("mcas") || s.contains("mastcell")
        || s.contains("isr") || s.contains("histamine")) return "mast-cell";

    if (s.contains("neuroinflam") || s.contains("neuroimmune") || s.contains("tspo")
        || s.contains("kynurenine") || s.contains("central-noradrenergic")
        || s.contains("neuroimaging")) return "neuroinflammation";

    if (s.contains("inflamm") || s.contains("cytokine") || s.contains("immune")
        || s.contains("cd4-tcell") || s.contains("nets-dnase") || s.contains("blood-immune")
        || s.contains("hsat2") || s.contains("mdsc") || s.contains("splicing")) return "immune";

    if (s.contains("pots") || s.contains("autonomic") || s.contains("dysautonomia")
        || s.contains("ans-aging") || s.contains("barorefl")) return "autonomic-cardiovascular";

    if (s.contains("exercise") || s.contains("pem") || s.contains("cpet")) return "exercise-pem";

    if (s.contains("endocrin") || s.contains("progesterone") || s.contains("hpa")
        || s.contains("thyroid") || s.contains("pregnancy") || s.contains("reproductive")) return "endocrine-reproductive";

    if (s.contains("gut") || s.contains("microbiom") || s.contains("butyrate")
        || s.contains("gi,") || s.equals("gi") || s.contains("dysmotility")
        || s.contains("ibs")) return "gut-microbiome";

    if (s.contains("genetic") || s.contains("gwas") || s.contains("epigenetic")
        || s.contains("methylat") || s.contains("lower-baseline")) return "genetics-epigenetics";

    if (s.contains("long-covid") || s.contains("post-covid") || s.contains("sars-cov")
        || s.contains("pasc") || s.contains("post-infectious")
        || s.contains("methylprednisolone-long")) return "long-covid";

    if (s.contains("connective") || s.contains("heds") || s.contains("hypermobil")
        || s.contains("collagen") || s.contains("may-thurner")) return "connective-tissue";

    if (s.contains("ion-channel") || s.contains("trpm") || s.contains("trp-")
        || s.contains("calcium-channelopathy") || s.contains("pip2")
        || s.contains("lithium")) return "ion-channels-lithium";

    if (s.contains("vascular") || s.contains("endotheli") || s.contains("hif")
        || s.contains("perfusion") || s.contains("hypoxia")) return "vascular";

    if (s.contains("pain") || s.contains("fibromyalgia") || s.contains("central-sensitiz")) return "pain-fibromyalgia";

    if (s.contains("stigma") || s.contains("psychogenic") || s.contains("psychosocial")) return "stigma";

    if (s.contains("biomarker") || s.contains("diagnos") || s.contains("septad")
        || s.contains("voice-biomarker") || s.contains("severity-classif")
        || s.contains("mecfs-consensus") || s.contains("assessment")
        || s.contains("fatigue,") || s.equals("fatigue")) return "diagnosis-assessment";

    if (s.contains("epidemiolog") || s.contains("prevalence") || s.contains("prognosis")
        || s.contains("bimodal-onset") || s.contains("mecfs-epidemiology")) return "epidemiology";

    if (s.contains("treatment") || s.contains("medication") || s.contains("supplement")
        || s.contains("taurine") || s.contains("vagal") || s.contains("land-rowing")
        || s.contains("muscle-preservation") || s.contains("heat-cold")
        || s.contains("rehabilitation") || s.contains("pacing") || s.contains("severe-mecfs")
        || s.contains("stream-1-severe") || s.contains("severe-me")
        || s.contains("weight-management") || s.contains("vitamin-k")
        || s.contains("glp") || s.contains("precisionlife")) return "treatments";

    if (s.contains("model") || s.contains("ode") || s.contains("simulation")
        || s.contains("unified-mechanistic") || s.contains("cartography")) return "modeling";

    if (s.contains("virus") || s.contains("herpes") || s.contains("ebv")
        || s.contains("hhv") || s.contains("viral") || s.contains("pathogen")) return "viral-infection";

    if (s.contains("adhd") || s.contains("cognit") || s.contains("depression")
        || s.contains("neurology") || s.contains("pediatric")) return "neurology-comorbidities";

    if (s.contains("wirth") || s.contains("universal-mechanisms")
        || s.contains("pathophysiology") || s.contains("pathology")
        || s.contains("senescence") || s.contains("stress-response")) return "pathophysiology-general";

    if (s.contains("dermatolog") || s.contains("lichen")) return "dermatology";

    if (s.equals("general") || s.equals("clinical-general") || s.equals("research-general")
        || s.equals("reference-general") || s.equals("fourel-corrections")) return "general";

    return "general";
}

record BibEntry(String key, String stream, String rawText) {}

List<BibEntry> parseBibEntries(Path bibPath) throws IOException {
    var lines = Files.readAllLines(bibPath);
    var entries = new ArrayList<BibEntry>();
    var entryStart = Pattern.compile("^@(\\w+)\\{([^,]+),\\s*$");
    var streamPat = Pattern.compile("research_stream\\s*=\\s*\\{([^}]+)\\}");

    var commentBuf = new ArrayList<String>();
    var entryBuf = new StringBuilder();
    String currentKey = null;
    String currentStream = "";
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
                currentStream = "";
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

        var sm = streamPat.matcher(line);
        if (sm.find()) currentStream = sm.group(1);

        for (int i = 0; i < line.length(); i++) {
            char c = line.charAt(i);
            if (c == '{') braceDepth++;
            else if (c == '}') {
                braceDepth--;
                if (braceDepth == 0) {
                    entries.add(new BibEntry(currentKey, currentStream, entryBuf.toString()));
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
