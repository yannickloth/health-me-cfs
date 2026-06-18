// TagBibStreams — assign research_stream to untagged BibTeX entries
//
// For entries WITHOUT research_stream:
//   1. Check which .typ files cite them → infer topic from directory
//   2. Fall back to keywords/title pattern matching
//
// Run from project root: java --source 25 src/main/java/web/TagBibStreams.java
import java.io.*;
import java.nio.file.*;
import java.util.*;
import java.util.regex.*;

void main() throws IOException {
    var bibPath = Path.of("src/main/typst/mecfs/references.bib");
    var srcRoot = Path.of("src/main/typst/mecfs");

    var lines = Files.readAllLines(bibPath);

    var citingParts = buildCitationMap(srcRoot);

    var entryStart = Pattern.compile("^@(\\w+)\\{([^,]+),\\s*$");
    var streamField = Pattern.compile("^\\s*research_stream\\s*=");
    var keywordsField = Pattern.compile("^\\s*keywords\\s*=\\s*\\{([^}]+)\\}");
    var titleField = Pattern.compile("^\\s*title\\s*=\\s*\\{(.+?)\\}");

    int tagged = 0;
    int alreadyTagged = 0;
    int total = 0;
    var output = new ArrayList<String>();

    String currentKey = null;
    boolean hasStream = false;
    boolean inEntry = false;
    int braceDepth = 0;
    var entryLines = new ArrayList<String>();
    String entryKeywords = "";
    String entryTitle = "";

    for (var line : lines) {
        if (!inEntry) {
            var m = entryStart.matcher(line.strip());
            if (m.matches()) {
                currentKey = m.group(2).trim();
                inEntry = true;
                braceDepth = 1;
                hasStream = false;
                entryLines.clear();
                entryLines.add(line);
                entryKeywords = "";
                entryTitle = "";
                total++;
                continue;
            }
            output.add(line);
            continue;
        }

        entryLines.add(line);

        if (streamField.matcher(line).find()) hasStream = true;

        var km = keywordsField.matcher(line);
        if (km.find()) entryKeywords = km.group(1).toLowerCase();

        var tm = titleField.matcher(line);
        if (tm.find()) entryTitle = tm.group(1).toLowerCase();

        for (int i = 0; i < line.length(); i++) {
            char c = line.charAt(i);
            if (c == '{') braceDepth++;
            else if (c == '}') {
                braceDepth--;
                if (braceDepth == 0) {
                    if (hasStream) {
                        alreadyTagged++;
                        output.addAll(entryLines);
                    } else {
                        var stream = inferStream(currentKey, entryKeywords, entryTitle, citingParts);
                        var inserted = insertStream(entryLines, stream);
                        output.addAll(inserted);
                        tagged++;
                    }
                    inEntry = false;
                    break;
                }
            }
        }
    }

    Files.write(bibPath, output);
    System.out.println("Total: " + total + ", already tagged: " + alreadyTagged
                       + ", newly tagged: " + tagged);
}

Map<String, Set<String>> buildCitationMap(Path srcRoot) throws IOException {
    var citePat = Pattern.compile("@([A-Za-z][A-Za-z0-9_:./-]*)");
    var map = new HashMap<String, Set<String>>();

    var dirs = List.of(
        "part1-clinical", "part2-pathophysiology", "part3-treatment",
        "part4-research", "part5-modeling", "appendices", "shared"
    );

    for (var dir : dirs) {
        var dirPath = srcRoot.resolve(dir);
        if (!Files.isDirectory(dirPath)) continue;
        try (var walk = Files.walk(dirPath)) {
            var typFiles = walk.filter(p -> p.toString().endsWith(".typ")).toList();
            for (var f : typFiles) {
                var content = Files.readString(f);
                var m = citePat.matcher(content);
                while (m.find()) {
                    map.computeIfAbsent(m.group(1), k -> new HashSet<>()).add(dir);
                }
            }
        }
    }
    return map;
}

String inferStream(String key, String keywords, String title, Map<String, Set<String>> citingParts) {
    var combined = (keywords + " " + title).toLowerCase();

    if (matches(combined, "sleep", "circadian", "melatonin", "insomnia", "polysomnography",
                "actigraphy", "nap", "restorative", "alpha intrusion", "dora", "orexin")) return "sleep";
    if (matches(combined, "glymphatic", "csf", "brain clearance", "perivascular")) return "brain-clearance";
    if (matches(combined, "mitochond", "atp", "oxidative phosphorylation", "electron transport",
                "krebs", "citric acid", "nad+", "nadh", "coq10", "ubiquinol", "carnitine",
                "creatine", "pdh", "pyruvate dehydrogenase")) return "energy-metabolism";
    if (matches(combined, "autoantibod", "autoimmun", "b cell", "rituximab", "igg",
                "molecular mimicry", "lupus", "sle")) return "autoimmunity";
    if (matches(combined, "mast cell", "mcas", "histamine", "tryptase", "prostaglandin d2",
                "leukotriene")) return "mast-cell";
    if (matches(combined, "neuroinflam", "microglia", "astrocyte", "tspo", "pet imaging",
                "brain fog", "cognitive", "central sensitiz")) return "neuroinflammation";
    if (matches(combined, "cytokine", "interleukin", "il-6", "il-1", "tnf", "interferon",
                "nk cell", "t cell", "cd4", "cd8", "immune", "inflamm")) return "immune-inflammation";
    if (matches(combined, "pots", "orthostatic", "tachycardia", "dysautonomia", "autonomic",
                "barorefl", "heart rate variab", "hrv", "blood pressure")) return "autonomic-cardiovascular";
    if (matches(combined, "exercise", "pem", "post-exertion", "cpet", "vo2",
                "anaerobic threshold", "two-day", "2-day")) return "exercise-pem";
    if (matches(combined, "hpa", "cortisol", "acth", "hypothalamic", "thyroid", "tsh",
                "endocrin", "hormone", "testosterone", "estrogen", "progesterone",
                "growth hormone")) return "endocrine";
    if (matches(combined, "gut", "microbiom", "dysbiosis", "intestin", "butyrate",
                "permeability", "sibo", "ibs", "leaky")) return "gut-microbiome";
    if (matches(combined, "genetic", "gwas", "snp", "polymorphism", "epigenetic",
                "methylat", "dna methyl", "histone", "mirna")) return "genetics-epigenetics";
    if (matches(combined, "long covid", "post-covid", "sars-cov-2", "pasc",
                "post-acute")) return "long-covid";
    if (matches(combined, "connective tissue", "ehlers", "heds", "hypermobil",
                "collagen", "joint")) return "connective-tissue";
    if (matches(combined, "ion channel", "trpm", "trpv", "trpa", "piezo", "calcium channel",
                "channelopathy", "pip2")) return "ion-channels";
    if (matches(combined, "vascular", "endotheli", "perfusion", "blood flow",
                "blood volume", "hypovolemia", "cerebral blood")) return "vascular";
    if (matches(combined, "pain", "fibromyalgia", "nocicepti", "hyperalgesia",
                "allodynia")) return "pain-fibromyalgia";
    if (matches(combined, "stigma", "psychogenic", "psychosomatic", "delegitim",
                "illness belief", "biopsychosocial")) return "stigma-psychosocial";
    if (matches(combined, "biomarker", "diagnostic", "diagnostic criteria", "case definition",
                "fukuda", "icc", "canadian consensus")) return "diagnosis-biomarkers";
    if (matches(combined, "epidemiolog", "prevalence", "incidence", "cohort study",
                "longitudinal", "prognosis", "natural history", "recovery")) return "epidemiology";
    if (matches(combined, "treatment", "medication", "supplement", "intervention",
                "pharmacolog", "rintatolimod", "ampligen", "low dose naltrexone",
                "ldn")) return "treatments";
    if (matches(combined, "rehabilit", "pacing", "graded exercise", "activity management",
                "energy envelope", "occupational therapy")) return "rehabilitation-pacing";
    if (matches(combined, "model", "ode", "differential equation", "simulation",
                "computational", "mathematical", "dynamical system")) return "modeling";
    if (matches(combined, "virus", "herpes", "ebv", "hhv", "enterovirus", "infection",
                "pathogen", "viral persist")) return "viral-infection";
    if (matches(combined, "lithium")) return "lithium";
    if (matches(combined, "glp-1", "semaglutide", "liraglutide", "incretin",
                "glucagon-like")) return "glp1";
    if (matches(combined, "vagal", "vagus", "stimulat")) return "vagal-stimulation";
    if (matches(combined, "severe", "bedbound", "housebound", "very severe")) return "severe-mecfs";
    if (matches(combined, "pediatric", "adolescent", "child")) return "pediatric";
    if (matches(combined, "pregnancy", "reproductive", "menstrual", "fertility")) return "reproductive-health";

    var parts = citingParts.getOrDefault(key, Set.of());
    if (parts.contains("part5-modeling")) return "modeling";
    if (parts.contains("part1-clinical") && parts.size() == 1) return "clinical-general";
    if (parts.contains("part2-pathophysiology") && parts.size() == 1) return "pathophysiology-general";
    if (parts.contains("part3-treatment") && parts.size() == 1) return "treatments";
    if (parts.contains("part4-research") && parts.size() == 1) return "research-general";
    if (parts.contains("appendices") && parts.size() == 1) return "reference-general";

    return "general";
}

boolean matches(String text, String... terms) {
    for (var t : terms) {
        if (text.contains(t)) return true;
    }
    return false;
}

List<String> insertStream(List<String> entryLines, String stream) {
    var result = new ArrayList<String>();
    boolean inserted = false;
    for (int i = 0; i < entryLines.size(); i++) {
        var line = entryLines.get(i);
        result.add(line);
        if (!inserted && i == 0) {
            // Look ahead for the indentation pattern
            String indent = "  ";
            if (entryLines.size() > 1) {
                var next = entryLines.get(1);
                var m = Pattern.compile("^(\\s+)").matcher(next);
                if (m.find()) indent = m.group(1);
            }
            // Insert after last field before closing }
            // Actually, insert before closing brace
        }
    }

    // Strategy: find the last line with a field assignment, insert after it
    result.clear();
    int lastFieldIdx = -1;
    String indent = "  ";
    for (int i = 0; i < entryLines.size(); i++) {
        var stripped = entryLines.get(i).strip();
        if (stripped.matches("\\w+\\s*=.*")) {
            lastFieldIdx = i;
            var m = Pattern.compile("^(\\s+)").matcher(entryLines.get(i));
            if (m.find()) indent = m.group(1);
        }
    }

    for (int i = 0; i < entryLines.size(); i++) {
        result.add(entryLines.get(i));
        if (i == lastFieldIdx) {
            // Ensure previous line ends with comma
            var prev = result.get(result.size() - 1);
            if (!prev.stripTrailing().endsWith(",")) {
                result.set(result.size() - 1, prev.stripTrailing() + ",");
            }
            result.add(indent + "research_stream = {" + stream + "}");
        }
    }
    return result;
}
