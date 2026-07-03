// ConvertAndSplit — Typst chapter monolith → per-section .qmd files
// Usage: java ConvertAndSplit.java <input.typ> <output-dir>
// CONVENTION: output-dir = partX/chYY-descriptive-name/
// e.g.: java ConvertAndSplit.java src/part3/ch14-mechanism.typ web/part3-treatment/ch14-mechanism-treatment-map/
import static java.nio.file.Files.*;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import static java.nio.file.Paths.*;
import java.io.*;
import java.util.*;
import java.util.regex.*;

void main(String[] args) throws IOException {
    if (args.length < 2) { System.err.println("Usage: java ConvertAndSplit.java <input.typ> <output-dir>"); return; }
    var file = args[0];
    var outDir = args[1];
    var src = readString(get(file));

    System.out.println("= Processing " + file);

    // --- Step 1: Pre-process — convert Typst constructs to Pandoc Markdown ---
    src = src.replaceAll("(?m)^#import.*$\\n?", "");
    src = src.replaceAll("(?m)^//.*$\\n?", "");
    src = src.replaceAll("(?m)^#let\\b.*$\\n?", "");
    src = stripLetBlocks(src);
    src = src.replaceAll("(?m)^#set\\b.*$\\n?", "");
    src = src.replaceAll("(?m)^#show\\b.*$\\n?", "");
    src = src.replaceAll("(?m)^[/.]+figures/fig-[^\"]*\\.typ\"?\\s*$\\n?", "");
    src = src.replaceAll("#include\\s+\"([^\"]*)figures/(fig-[^\"]+)\\.typ\"", "![$2](../../figures/$2.svg)");
    src = src.replaceAll("(?m)^#include.*$\\n?", "");

    // Pre-process multi-line block equations BEFORE italic substitution to prevent
    // subscript patterns like _(upright("text")) from being mangled by the italic regex.
    src = preprocessBlockMath(src);

    // Protect $$...$$  block math from the italic regex (replaces _ which is LaTeX subscript)
    // by temporarily replacing the blocks with indexed placeholders.
    var blockMathPlaceholders = new ArrayList<String>();
    {
        var bm = Pattern.compile("(?s)\\$\\$\n.*?\n\\$\\$(?:[^\n]*)?").matcher(src);
        var bsb = new StringBuffer();
        int bIdx = 0;
        while (bm.find()) {
            blockMathPlaceholders.add(bm.group());
            bm.appendReplacement(bsb, "BLOCKMATH" + bIdx + "");
            bIdx++;
        }
        bm.appendTail(bsb);
        src = bsb.toString();
    }

    // Protect inline $...$ math from the italic regex — scan line by line.
    // Inline math spans only within a single line, so we replace pairs per line.
    var inlineMathPlaceholders = new ArrayList<String>();
    {
        var lines2 = src.split("\n", -1);
        var sb2 = new StringBuilder();
        for (var ln : lines2) {
            var sbLn = new StringBuilder();
            int pos2 = 0;
            while (pos2 < ln.length()) {
                int d1 = ln.indexOf('$', pos2);
                if (d1 < 0) { sbLn.append(ln.substring(pos2)); break; }
                int d2 = ln.indexOf('$', d1 + 1);
                if (d2 < 0) { sbLn.append(ln.substring(pos2)); break; }
                sbLn.append(ln, pos2, d1);
                int idx = inlineMathPlaceholders.size();
                inlineMathPlaceholders.add(ln.substring(d1, d2 + 1));
                sbLn.append("\u0002INLINEMATH").append(idx).append("\u0003");
                pos2 = d2 + 1;
            }
            sb2.append(sbLn).append('\n');
        }
        if (!src.endsWith("\n") && sb2.length() > 0 && sb2.charAt(sb2.length()-1) == '\n')
            sb2.deleteCharAt(sb2.length()-1);
        src = sb2.toString();
    }

    // Typst _italic_ → *italic* (only outside code/math)
    src = src.replaceAll("(?<!`|\"|\\w)_([^_\\s](?:[^_]*[^_\\s])?)_(?!\\w|\"|`)", "*$1*");

    // Restore inline math placeholders
    for (int iIdx = 0; iIdx < inlineMathPlaceholders.size(); iIdx++) {
        src = src.replace("\u0002INLINEMATH" + iIdx + "\u0003", inlineMathPlaceholders.get(iIdx));
    }

    // Restore $$...$$ block math placeholders
    for (int bIdx = 0; bIdx < blockMathPlaceholders.size(); bIdx++) {
        src = src.replace("BLOCKMATH" + bIdx + "", blockMathPlaceholders.get(bIdx));
    }

    // Citations: @key but NOT internal cross-ref prefixes
    src = src.replaceAll("@(sec|subsec|subsubsec|fig|tab|eq|ch|ach|hyp|spec|lim|obs|oq|pred|prop|app|warn|rec|dir|prot|par|def|req|protocol|rem|cont|cf|open|clin|syn|pr)(:|_|-)([a-zA-Z0-9_-]+)", "[#$1-$3](#$1-$3)");
    src = src.replaceAll("@([A-Z][A-Za-z]+\\d{4}[a-zA-Z0-9_]*)", "[@$1]");
    src = src.replaceAll("@([a-z]+\\d{4}[a-zA-Z0-9_]*)", "[@$1]");

    // --- Registry entries: convert #registry-entry(...) to Markdown ---
    src = convertRegistryEntries(src);

    // --- Tables: convert to Markdown pipe tables instead of dropping ---
    src = convertFigureTable(src);
    src = convertTableBlocks(src);
    // Fallback: strip any remaining figure(kind: table, ...) headers not handled above
    src = src.replaceAll("(?s)#figure\\s*\\(\\s*kind\\s*:\\s*table[^,]*,.*?\\)\\s*\\n", "<!-- TABLE -->\n");

    // Strip empty placeholder figure([], kind: table, ...)
    src = src.replaceAll("#figure\\(\\[\\],?\\s*kind:\\s*table[^)]*\\)\\s*(<[a-z][\\w:\\.-]*>)?", "");

    // Strip remaining #figure(...) calls (non-table layout wrappers)
    src = src.replaceAll("#figure\\(", "");
    // Strip #pad(...) layout calls
    src = src.replaceAll("#pad\\([^)]*\\)\\[", "");
    // Strip remaining stray )) from #align(center, ...) calls
    src = src.replaceAll("#align\\(center,\\s*", "");
    src = src.replaceAll("#align\\(\\s*", "");

    // --- Inline formatting ---
    src = src.replaceAll("#strong\\[([^\\]]+?)\\]", "**$1**");
    src = src.replaceAll("#emph\\[([^\\]]+?)\\]", "*$1*");
    src = src.replaceAll("#smallcaps\\[([^\\]]+?)\\]", "$1");
    src = src.replaceAll("#text\\(weight:\\s*\"bold\"\\)\\[([^\\]]+?)\\]", "**$1**");
    src = src.replaceAll("#text\\(style:\\s*\"italic\"\\)\\[([^\\]]+?)\\]", "*$1*");
    src = src.replaceAll("#text\\(style:\\s*\"italic\",\\s*weight:\\s*\"bold\"\\)\\[([^\\]]+?)\\]", "***$1***");
    src = src.replaceAll("#text\\(weight:\\s*\"bold\",\\s*style:\\s*\"italic\"\\)\\[([^\\]]+?)\\]", "***$1***");
    src = src.replaceAll("#text\\([^)]*\\)\\[([^\\]]+?)\\]", "$1");

    // --- Links ---
    src = src.replaceAll("#link\\(\"([^\"]+)\"\\)\\[([^\\]]+?)\\]", "[$2]($1)");
    src = src.replaceAll("#link\\(\"([^\"]+)\"\\)", "<$1>");
    src = src.replaceAll("#link\\(<([^>]+)>\\)\\[([^\\]]+?)\\]", "[$2](#$1)");

    // --- Footnotes → Markdown footnotes ---
    src = convertFootnotes(src);

    // --- Horizontal rules ---
    src = src.replaceAll("#line\\([^)]*\\)", "\n---\n");

    // --- Spacing: #h(...) and #v(...) in prose ---
    src = src.replaceAll("#h\\([^)]*\\)", " ");
    src = src.replaceAll("#v\\([^)]*\\)", "\n");

    // --- Block wrappers ---
    src = src.replaceAll("#block\\([^)]*\\)\\[", "");

    // --- [style=nextline] attribute ---
    src = src.replaceAll("(?m)^\\[style=nextline\\]\\s*$\\n?", "");

    // #quote[...] → blockquote (must run BEFORE encloseEnv which strips ] lines)
    src = quoteToBlockquote(src);

    // --- Environments: fhypothesis MUST run before hypothesis to avoid substring match ---
    src = encloseFhypothesis(src);

    // Bracketed envs: #envname(title: [...])[...] → callout blocks
    // Scientific epistemic environments: distinct callout types for visual differentiation
    src = encloseEnv(src, "achievement-unnumbered", "tip",      "Achievement",      "env-achievement");
    src = encloseEnv(src, "achievement",            "tip",      "Achievement",      "env-achievement");
    src = encloseEnv(src, "speculation",            "caution",  "Speculation",      "env-speculation");
    src = encloseEnv(src, "hypothesis-unnumbered",  "important","Hypothesis",       "env-hypothesis");
    src = encloseEnv(src, "hypothesis",             "important","Hypothesis",       "env-hypothesis");
    src = encloseEnv(src, "warning-unnumbered",     "caution",  "Warning",          "env-warning");
    src = encloseEnv(src, "warning-env",            "caution",  "Warning",          "env-warning");
    src = encloseEnv(src, "limitation-unnumbered",  "warning",  "Limitation",       "env-limitation");
    src = encloseEnv(src, "limitation",             "warning",  "Limitation",       "env-limitation");
    src = encloseEnv(src, "open-question-unnumbered","note",    "Open Question",    "env-open-question");
    src = encloseEnv(src, "open-question",          "note",     "Open Question",    "env-open-question");
    src = encloseEnv(src, "observation-unnumbered", "note",     "Observation",      "env-observation");
    src = encloseEnv(src, "observation",            "note",     "Observation",      "env-observation");
    src = encloseEnv(src, "synthesis-unnumbered",   "tip",      "Synthesis",        "env-synthesis");
    src = encloseEnv(src, "synthesis",              "tip",      "Synthesis",        "env-synthesis");
    src = encloseEnv(src, "clinical-finding-unnumbered","note", "Clinical Finding", "env-clinical-finding");
    src = encloseEnv(src, "clinical-finding",       "note",     "Clinical Finding", "env-clinical-finding");
    src = encloseEnv(src, "recommendation",         "tip",      "Recommendation",   "env-recommendation");
    src = encloseEnv(src, "proposal-unnumbered",    "note",     "Proposal",         "env-proposal");
    src = encloseEnv(src, "proposal",               "note",     "Proposal",         "env-proposal");
    src = encloseEnv(src, "prediction-unnumbered",  "note",     "Prediction",       "env-prediction");
    src = encloseEnv(src, "prediction",             "note",     "Prediction",       "env-prediction");
    src = encloseEnv(src, "key-point",              "tip",      "Key Point",        "env-key-point");
    src = encloseEnv(src, "practical-warning",      "warning",  "Practical Warning","env-practical-warning");
    src = encloseEnv(src, "protocol-unnumbered",    "note",     "Protocol",         "env-protocol");
    src = encloseEnv(src, "protocol",               "note",     "Protocol",         "env-protocol");
    src = encloseEnv(src, "requirement",            "important","Requirement",       "env-requirement");
    src = encloseEnv(src, "model-insight",          "note",     "Model Insight",    "env-model-insight");
    src = encloseEnv(src, "definition",             "note",     "Definition",       "env-definition");
    src = encloseEnv(src, "continuation",           "note",     "Continued",        "");
    src = encloseEnv(src, "remark",                 "note",     "Remark",           "");
    src = encloseEnv(src, "direction",              "note",     "Research Direction","env-direction");
    src = encloseEnv(src, "roadmap",                "note",     "Chapter Roadmap",  "");
    src = encloseEnv(src, "proposition",            "note",     "Proposition",      "");
    src = encloseEnv(src, "assumption-unnumbered",  "note",     "Assumption",       "");
    src = encloseEnv(src, "assumption",             "note",     "Assumption",       "");
    src = encloseEnv(src, "axiom-unnumbered",       "note",     "Axiom",            "");
    src = encloseEnv(src, "axiom",                  "note",     "Axiom",            "");
    src = encloseEnv(src, "theorem",                "note",     "Theorem",          "");
    src = encloseEnv(src, "lemma",                  "note",     "Lemma",            "");
    src = encloseEnv(src, "corollary",              "note",     "Corollary",        "");
    src = encloseEnv(src, "example",                "note",     "Example",          "");
    src = encloseEnv(src, "principle",              "note",     "Principle",        "");
    src = encloseEnv(src, "derivation",             "note",     "Derivation",       "");
    src = encloseEnv(src, "calculation",            "note",     "Calculation",      "");
    src = encloseEnv(src, "conclusion",             "note",     "Conclusion",       "");
    src = encloseEnv(src, "note-env",               "note",     "Note",             "");
    src = encloseEnv(src, "consistency-check",      "note",     "Consistency Check","");

    // #proof[...] (no title: param)
    src = encloseNoTitle(src, "proof", "note", "Proof");

    // #chapter-abstract[...]
    src = src.replaceAll("#chapter-abstract\\[", "\n\n::: {.callout-note}\n### Chapter Abstract\n\n");

    // Close standalone ] lines — replace any line that is just ] or ]<label>
    src = src.replaceAll("(?m)^\\]\\s+(<[a-z][\\w:\\.-]*>)\\s*$", "$1");
    src = src.replaceAll("(?m)^\\].*$", "");

    // #sub[X] → ~X~, #super[X] → ^X^
    src = src.replaceAll("#sub\\[(.+?)\\]", "~$1~");
    src = src.replaceAll("#super\\[(.+?)\\]", "^$1^");

    // Arrows (standalone prose tokens)
    src = src.replace("$arrow.r$",        "→");
    src = src.replace("$arrow.l$",        "←");
    src = src.replace("$arrow.b$",        "↓");
    src = src.replace("$arrow.t$",        "↑");
    src = src.replace("$arrow.double.r$", "⇒");
    src = src.replace("$arrow.double.l$", "⇐");
    src = src.replace("$arrow.r.double$", "⇒");
    src = src.replace("$=>$",             "⇒");
    src = src.replace("$arrow.l.r$",      "↔");
    src = src.replace("$rightarrow.double$", "⇒");
    src = src.replace("$leftarrow.double$",  "⇐");

    // Typst definition list: / term: desc → - **term:** desc
    src = src.replaceAll("(?m)^\\s*/\\s+\\*([^*]+)\\*:(.*)$", "- **$1:**$2");

    // Typst literal dollar signs (\$) → placeholder before math processing
    src = src.replace("\\$", "\uFFFD");

    // Typst math → LaTeX/MathJax math translation
    src = src.replace("$lt.eq$", "$\\leq$");
    src = src.replace("$gt.eq$", "$\\geq$");
    src = src.replace("$lt$", "$<$");
    src = src.replace("$gt$", "$>$");
    src = src.replace("$approx$", "$\\approx$");
    src = src.replace("$times$", "$\\times$");
    src = src.replace("$tilde$", "$\\sim$");
    src = src.replace("$alpha$", "$\\alpha$");
    src = src.replace("$beta$", "$\\beta$");
    src = src.replace("$gamma$", "$\\gamma$");
    src = src.replace("$delta$", "$\\delta$");
    src = src.replace("$mu$", "$\\mu$");
    src = src.replace("$arrow.double.r$", "$\\Rightarrow$");
    src = translateMath(src);
    src = src.replaceAll("\\$([0-9])", "\\$ $1");

    // Restore literal dollar signs
    src = src.replace("\uFFFD", "$");

    // #align(center, table(...)) → just table
    src = src.replaceAll("#align\\(center,\\s*", "");

    // --- Step 2: Parse headings and split into sections ---
    var lines = src.split("\n");
    record Section(String title, String label, List<String> body) {}
    var sections = new ArrayList<Section>();
    List<String> preamble = new ArrayList<>();
    List<String> current = new ArrayList<>();
    String secTitle = null;
    String secLabel = "";
    String chapTitle = "";
    String chapLabel = "";
    boolean inPreamble = true;

    for (var rawLine : lines) {
        var line = rawLine.stripTrailing();
        var stripped = line.strip();

        if (stripped.startsWith("= ") && !stripped.startsWith("== ")) {
            chapTitle = stripHeadingMath(stripped.substring(2).strip().replaceAll("\\s*<[a-z]+:[^>]+>\\s*$", ""));
            var headingLabel = stripped.replaceAll("^=\\s+", "");
            var m = Pattern.compile("<([a-z]+):([^>]+)>").matcher(headingLabel);
            if (m.find()) chapLabel = "<" + m.group(1) + ":" + m.group(2) + ">";
            inPreamble = true;
            continue;
        }
        if (stripped.startsWith("== ") && !stripped.startsWith("=== ")) {
            if (secTitle != null) {
                sections.add(new Section(secTitle, secLabel, new ArrayList<>(current)));
            }
            secTitle = stripHeadingMath(stripped.substring(3).strip().replaceAll("\\s*<[a-z]+:[^>]+>\\s*$", ""));
            var headingLabel = stripped.replaceAll("^==+\\s+", "");
            var m = Pattern.compile("<([a-z]+):([^>]+)>").matcher(headingLabel);
            if (m.find()) secLabel = "<" + m.group(1) + ":" + m.group(2) + ">";
            else secLabel = "";
            current = new ArrayList<>();
            inPreamble = false;
            continue;
        }
        if (inPreamble) {
            if (!stripped.isEmpty() && !stripped.startsWith("<ch:")
                    && !stripped.matches("^<[a-z]+:[^>]+>$")) preamble.add(line);
        } else {
            if (stripped.matches("^<(sec|subsec|subsubsec):[^>]+>$") && secLabel.isEmpty()) {
                secLabel = stripped;
                continue;
            }
            current.add(line);
        }
    }
    if (secTitle != null) sections.add(new Section(secTitle, secLabel, new ArrayList<>(current)));

    if (sections.isEmpty()) {
        var title = !chapTitle.isEmpty() ? chapTitle : "untitled";
        if (chapTitle.isEmpty()) {
            for (var l : preamble) {
                var s = l.strip();
                if (s.matches("^={3,}\\s+.+")) {
                    title = s.replaceAll("^=+\\s+", "").strip();
                    break;
                }
            }
            if (title.equals("untitled")) {
                for (var l : current) {
                    var s = l.strip();
                    if (s.matches("^={3,}\\s+.+")) {
                        title = s.replaceAll("^=+\\s+", "").strip();
                        break;
                    }
                }
            }
            if (title.equals("untitled")) {
                var fname = get(args[0]).getFileName().toString().replaceAll("\\.[^.]+$", "");
                title = fname.replace("-", " ");
            }
        }
        var allLines = new ArrayList<String>();
        allLines.addAll(preamble);
        if (!current.isEmpty()) allLines.addAll(current);
        sections.add(new Section(title, chapLabel, allLines));
    }

    // --- Step 3: Generate .qmd files ---
    int secNum = 1;
    for (var sec : sections) {
        var slugTitle = normalizeUnicode(sec.title());
        var slug = slugTitle.toLowerCase().replaceAll("[^a-z0-9']+", "-").replaceAll("^-|-$", "").replace("'", "");
        var fname = "%02d-%s.qmd".formatted(secNum, slug);
        var path = get(outDir, fname);

        var sb = new StringBuilder();
        sb.append("---\n");
        sb.append("title: \"").append(esc(slugTitle)).append("\"\n");
        sb.append("---\n\n");

        if (secNum == 1 && !preamble.isEmpty() && sections.size() > 1) {
            for (var p : preamble) sb.append(p).append('\n');
            sb.append('\n');
        }

        var headingLine = "## " + slugTitle;
        var headingLabels = new ArrayList<String>();
        var spanAnchors = new ArrayList<String>();
        for (var rawLabel : new String[]{ sec.label(), (secNum == 1 ? chapLabel : "") }) {
            if (rawLabel == null || rawLabel.isEmpty()) continue;
            var converted = rawLabel
                .replaceFirst("^<", "")
                .replaceFirst(">$", "")
                .replaceFirst(":", "-");
            if (rawLabel.matches("^<(sec|subsec|subsubsec):[^>]+>$")) {
                headingLabels.add("{#" + converted + "}");
            } else {
                spanAnchors.add("<span id=\"" + converted + "\"></span>");
            }
        }
        for (var a : spanAnchors) sb.append(a).append('\n');
        for (var l : headingLabels) headingLine += " " + l;
        sb.append(headingLine).append("\n\n");

        String pendingLabel = null;

        for (var line : sec.body) {
            var raw = line;
            var stripped = raw.strip();

            if (!stripped.isEmpty()) {
                int leading = raw.length() - stripped.length();
                if (leading > 2) {
                    raw = " ".repeat(leading / 2) + stripped;
                } else if (leading == 0) {
                    raw = stripped;
                }
            }

            if (stripped.matches("^={3,}\\s+.+")) {
                int eqCount = 0;
                for (int i = 0; i < stripped.length() && stripped.charAt(i) == '='; i++) eqCount++;
                int level = Math.max(1, eqCount);
                var headingText = stripHeadingMath(stripped.substring(eqCount));
                var inlineLabelPattern = Pattern.compile("\\s*<([a-zA-Z][\\w:\\.-]*)>\\s*");
                var inlineMatcher = inlineLabelPattern.matcher(headingText);
                var nonHeadingAnchors = new StringBuilder();
                var headingAttrs = new StringBuilder();
                while (inlineMatcher.find()) {
                    var fullLabel = inlineMatcher.group(1);
                    var converted = fullLabel.replaceFirst(":", "-");
                    if (fullLabel.matches("(sec|subsec|subsubsec):.*")) {
                        headingAttrs.append(" {#").append(converted).append("}");
                    } else {
                        nonHeadingAnchors.append("<span id=\"").append(converted).append("\"></span>\n");
                    }
                }
                headingText = inlineMatcher.replaceAll("");
                headingText = stripHeadingMath(headingText);
                if (nonHeadingAnchors.length() > 0) sb.append(nonHeadingAnchors);
                raw = "#".repeat(level) + headingText + headingAttrs;
                if (pendingLabel != null) {
                    raw = raw + " " + pendingLabel;
                    pendingLabel = null;
                }
            }

            if (raw.strip().matches("^\\$[^$].*[^$]\\$\\s*$")) {
                raw = "$$" + raw.strip().substring(1, raw.strip().length() - 1) + "$$";
            }

            if (raw.strip().matches("^<[a-zA-Z][\\w:\\.-]*>$")) {
                var labelRaw = raw.strip();
                var label = labelRaw
                    .replaceFirst("^<", "{#")
                    .replaceFirst(">$", "}")
                    .replaceFirst(":", "-");
                boolean isHeadingLabel = labelRaw.matches("^<(sec|subsec|subsubsec):[^>]+>$");
                if (isHeadingLabel) {
                    var buf = sb.toString();
                    var linesInBuf = buf.split("\n", -1);
                    int headingIdx = -1;
                    for (int li = linesInBuf.length - 1; li >= 0; li--) {
                        if (linesInBuf[li].isBlank()) continue;
                        if (linesInBuf[li].strip().matches("^#{1,6}\\s+.+")) headingIdx = li;
                        break;
                    }
                    if (headingIdx >= 0) {
                        linesInBuf[headingIdx] = linesInBuf[headingIdx] + " " + label;
                        sb.setLength(0);
                        for (int li = 0; li < linesInBuf.length; li++) {
                            sb.append(linesInBuf[li]);
                            if (li < linesInBuf.length - 1) sb.append('\n');
                        }
                    } else {
                        pendingLabel = label;
                    }
                } else {
                    var anchorId = label.replaceFirst("^\\{#", "").replaceFirst("\\}$", "");
                    sb.append("<span id=\"").append(anchorId).append("\"></span>\n");
                }
                continue;
            }

            if (pendingLabel != null && !stripped.isEmpty()) {
                if (raw.strip().matches("^#{1,6}\\s+.+")) {
                    raw = raw + " " + pendingLabel;
                    pendingLabel = null;
                } else {
                    var anchorId = pendingLabel.replaceFirst("^\\{#", "").replaceFirst("\\}$", "");
                    sb.append("<span id=\"").append(anchorId).append("\"></span>\n");
                    pendingLabel = null;
                }
            }

            raw = raw.replaceAll("(?<!<)\\b(sec|subsec|subsubsec|fig|tab|eq|ch|ach|hyp|spec|lim|obs|oq|pred|prop|app|warn|rec|dir|prot|par|def|req|protocol|rem|cont|cf|open):([a-zA-Z0-9_-]+)([^}\\w-]|$)", "[#$1-$2](#$1-$2)$3");
            raw = raw.replaceAll("(?<!<)\\b(sec|subsec|subsubsec|fig|tab|eq|ch|ach|hyp|spec|lim|obs|oq|pred|prop|app|warn|rec|dir|prot|par|def|req|protocol|rem|cont|cf|open):([a-zA-Z0-9_-]+)$", "[#$1-$2](#$1-$2)");

            raw = raw.replaceAll("<sec:", "{#sec-");
            raw = raw.replaceAll("<subsec:", "{#subsec-");
            raw = raw.replaceAll("<subsubsec:", "{#subsubsec-");
            raw = raw.replaceAll("<ch:", "{#ch-");
            raw = raw.replaceAll("<fig:", "{#fig-");
            raw = raw.replaceAll("<tab:", "{#tab-");
            raw = raw.replaceAll("<eq:", "{#eq-");
            raw = raw.replaceAll("<ach:", "{#ach-");
            raw = raw.replaceAll("<hyp:", "{#hyp-");
            raw = raw.replaceAll("<spec:", "{#spec-");
            raw = raw.replaceAll("<lim:", "{#lim-");
            raw = raw.replaceAll("<obs:", "{#obs-");
            raw = raw.replaceAll("<oq:", "{#oq-");
            raw = raw.replaceAll("<pred:", "{#pred-");
            raw = raw.replaceAll("<prop:", "{#prop-");
            raw = raw.replaceAll("<rec:", "{#rec-");
            raw = raw.replaceAll("<warn:", "{#warn-");
            raw = raw.replaceAll("<dir:", "{#dir-");
            raw = raw.replaceAll("<prot:", "{#prot-");
            raw = raw.replaceAll("<par:", "{#par-");
            raw = raw.replaceAll("<app:", "{#app-");
            raw = raw.replaceAll("<def:", "{#def-");
            raw = raw.replaceAll("<req:", "{#req-");
            raw = raw.replaceAll("<protocol:", "{#protocol-");
            raw = raw.replaceAll("<rem:", "{#rem-");
            raw = raw.replaceAll("<cont:", "{#cont-");
            raw = raw.replaceAll("<cf:", "{#cf-");
            raw = raw.replaceAll("<open:", "{#open-");
            raw = raw.replaceAll("(\\{[#][a-zA-Z][\\w:\\.-]*?)>", "$1}");
            raw = raw.replaceAll("(\\{[#][a-zA-Z][\\w:\\.-]*)>", "$1}");

            sb.append(raw).append('\n');
        }

        var output = sb.toString();
        int openCallouts = 0;
        for (var l : output.split("\n")) {
            if (l.strip().startsWith("::: {")) openCallouts++;
            else if (l.strip().equals(":::")) openCallouts--;
        }
        for (int c = 0; c < openCallouts; c++) {
            output += ":::\n";
        }

        writeString(path, output);
        System.out.println("  " + fname + " (" + sec.body().size() + " lines)");
        secNum++;
    }
    System.out.println("Done — " + (secNum-1) + " sections written.");
}

String encloseEnv(String s, String typstName, String quartoKind, String displayName, String extraClass) {
    var p = Pattern.compile("#" + Pattern.quote(typstName) + "\\(title:\\s*\\[(.*?)\\]\\)\\[", Pattern.DOTALL);
    var m = p.matcher(s);
    var sb = new StringBuffer();
    var classAttr = extraClass.isEmpty() ? "" : " ." + extraClass;
    while (m.find()) {
        var title = m.group(1);
        m.appendReplacement(sb, "\n\n::: {.callout-" + quartoKind + classAttr + "}\n### " + displayName + ": " + Matcher.quoteReplacement(title) + "\n\n");
    }
    m.appendTail(sb);
    var out = sb.toString();
    out = out.replaceAll("(?m)^\\]$", ":::\n");
    out = out.replaceAll("(?m)^\\] (<[a-z][\\w:\\.-]*>)$", ":::\n$1");
    out = out.replaceAll("(?m)^\\](?!\\)\\[).*$", "");
    return out;
}

String encloseFhypothesis(String s) {
    var p = Pattern.compile("#fhypothesis(?:-unnumbered)?\\(title:\\s*\\[(.*?)\\],\\s*falsifiability:\\s*\\[?(.*?)\\]?,\\s*justification:\\s*\\[?(.*?)\\]?\\)\\[", Pattern.DOTALL);
    var m = p.matcher(s);
    var sb = new StringBuffer();
    while (m.find()) {
        var title = m.group(1);
        var falsifiability = m.group(2);
        var justification = m.group(3);
        var footer = "\n\n**Falsifiability:** *" + falsifiability;
        if (!justification.isEmpty()) footer += " — " + justification;
        footer += "*";
        m.appendReplacement(sb, "\n\n::: {.callout-note}\n### Hypothesis: " + Matcher.quoteReplacement(title) + "\n\n" + Matcher.quoteReplacement(footer) + "\n\n");
    }
    m.appendTail(sb);
    return sb.toString();
}

String encloseNoTitle(String s, String typstName, String quartoKind, String displayName) {
    var p = Pattern.compile("#" + Pattern.quote(typstName) + "\\[", Pattern.DOTALL);
    var m = p.matcher(s);
    var sb = new StringBuffer();
    while (m.find()) {
        m.appendReplacement(sb, "\n\n::: {.callout-" + quartoKind + "}\n### " + displayName + "\n\n");
    }
    m.appendTail(sb);
    return sb.toString();
}

String replaceClosingBracket(String s, String envName) {
    return s;
}

String quoteToBlockquote(String s) {
    var sb = new StringBuilder();
    var lines = s.split("\n");
    boolean inQuote = false;
    int quoteDepth = 0;
    for (var line : lines) {
        if (line.strip().startsWith("#quote[")) {
            sb.append("> ").append(line.strip().substring(7)).append('\n');
            inQuote = true;
            quoteDepth = 1;
        } else if (inQuote) {
            for (int i = 0; i < line.length(); i++) {
                if (line.charAt(i) == '[') quoteDepth++;
                else if (line.charAt(i) == ']') quoteDepth--;
            }
            if (quoteDepth <= 0) {
                inQuote = false;
                var remaining = line.substring(line.lastIndexOf(']') + 1).strip();
                if (!remaining.isEmpty()) sb.append("> ").append(remaining).append('\n');
            } else {
                sb.append("> ").append(line.strip()).append('\n');
            }
        } else {
            sb.append(line).append('\n');
        }
    }
    return sb.toString();
}

String convertFootnotes(String s) {
    var footnotes = new ArrayList<String>();
    var sb = new StringBuilder();
    int i = 0;
    while (i < s.length()) {
        int pos = s.indexOf("#footnote[", i);
        if (pos < 0) { sb.append(s.substring(i)); break; }
        sb.append(s, i, pos);
        int bracketDepth = 1;
        int j = pos + 10;
        while (j < s.length() && bracketDepth > 0) {
            char c = s.charAt(j);
            if (c == '[') bracketDepth++;
            else if (c == ']') bracketDepth--;
            j++;
        }
        int fnNum = footnotes.size() + 1;
        var content = s.substring(pos + 10, j - 1).strip();
        footnotes.add(content);
        sb.append("[^").append(fnNum).append("]");
        i = j;
    }
    if (!footnotes.isEmpty()) {
        sb.append("\n\n");
        for (int k = 0; k < footnotes.size(); k++) {
            sb.append("[^").append(k + 1).append("]: ").append(footnotes.get(k)).append("\n");
        }
    }
    return sb.toString();
}

String esc(String s) { return s.replace("\"", "\\\""); }

// Pre-process multi-line block equations: $\ncontent\n$ → $$\ntranslated\n$$ {#eq-label}
String preprocessBlockMath(String src) {
    var lines = src.split("\n", -1);
    var out = new StringBuilder();
    int i = 0;
    while (i < lines.length) {
        var line = lines[i];
        var stripped = line.strip();
        // Detect standalone $ line (block math open)
        if (stripped.equals("$")) {
            // Collect content lines until closing $
            var contentLines = new ArrayList<String>();
            String labelSuffix = "";
            i++;
            boolean closed = false;
            while (i < lines.length) {
                var cl = lines[i];
                var cls = cl.strip();
                // Closing $ possibly with label: $ <eq:something>
                if (cls.equals("$") || cls.matches("^\\$\\s*<[^>]+>\\s*$")) {
                    // Extract label if present
                    var lm = Pattern.compile("<([^>]+)>").matcher(cls);
                    if (lm.find()) {
                        var lbl = lm.group(1).replaceFirst(":", "-");
                        labelSuffix = " {#" + lbl + "}";
                    }
                    i++;
                    closed = true;
                    break;
                }
                contentLines.add(cl);
                i++;
            }
            if (!closed) {
                // Not a proper block eq — emit as-is
                out.append("$\n");
                for (var cl : contentLines) out.append(cl).append('\n');
            } else {
                var mathContent = String.join("\n", contentLines);
                var translated = translateTypstMathContent(mathContent);
                // Wrap aligned equations (containing &) in \begin{aligned}...\end{aligned}
                if (translated.contains("&")) {
                    translated = "\\begin{aligned}\n" + translated + "\n\\end{aligned}";
                }
                out.append("$$\n").append(translated).append("\n$$").append(labelSuffix).append('\n');
            }
        } else {
            out.append(line).append('\n');
            i++;
        }
    }
    // Remove trailing newline added by loop if source didn't end with one
    var result = out.toString();
    if (!src.endsWith("\n") && result.endsWith("\n")) {
        result = result.substring(0, result.length() - 1);
    }
    return result;
}

// Translate Typst math content (without surrounding $ delimiters) to LaTeX.
// Used by both preprocessBlockMath (block equations) and translateMath (inline).
String translateTypstMathContent(String math) {
    // 1. upright("text") → \text{text}  (must be first, before generic "..." handling)
    math = math.replaceAll("upright\\(\"([^\"]+)\"\\)", "\\\\text{$1}");
    // upright(bareword) without quotes → \text{bareword}
    math = math.replaceAll("upright\\(([A-Za-z][A-Za-z0-9_-]*)\\)", "\\\\text{$1}");

    // 2. Bare quoted strings in math → \text{...}  (only if not already \text{...})
    math = math.replaceAll("(?<!\\\\text\\{[^}]*)\"([^\"]+)\"", "\\\\text{$1}");

    // 3. Symbol replacements — operators and arrows
    math = math
        .replace("dot.op",         "\\cdot")
        .replace("times.op",       "\\times")
        .replace("plus.minus",     "\\pm")
        .replace("eq.not",         "\\neq")
        .replace("gt.eq",          "\\geq")
        .replace("lt.eq",          "\\leq")
        .replace("arrow.l.r",      "\\leftrightarrow")
        .replace("arrow.double.r", "\\Rightarrow")
        .replace("arrow.double.l", "\\Leftarrow")
        .replace("arrow.r.double", "\\Rightarrow")
        .replace("arrow.r",        "\\rightarrow")
        .replace("arrow.l",        "\\leftarrow")
        .replace("arrow.b",        "\\downarrow")
        .replace("arrow.t",        "\\uparrow")
        .replace("nothing",        "\\emptyset")
        .replace("#h(1em)",        "\\quad")
        .replace("slash",          "/")
        .replace("infinity",       "\\infty")
        .replace("partial",        "\\partial")
        .replace("nabla",          "\\nabla")
        .replace("parallel",       "\\parallel")
        .replace("perp",           "\\perp")
        .replace("forall",         "\\forall")
        .replace("exists",         "\\exists")
        .replace("approx",         "\\approx");
    // .op suffix — strip Typst "op" variant marker (sim.op, ~.op, etc.) after known symbols handled above
    math = math.replaceAll("(\\\\(?:sim|approx|cdot|times|pm|leq|geq|neq))\\.op\\b", "$1");
    math = math.replaceAll("\\.op\\b", "");
    math = math.replaceAll("(?<![a-zA-Z\\\\])bullet(?![a-zA-Z])", "\\\\bullet");
    math = math.replaceAll("(?<![a-zA-Z\\\\])ast(?![a-zA-Z])",    "\\\\ast");
    math = math.replaceAll("(?<![a-zA-Z\\\\])prop(?![a-zA-Z])",   "\\\\propto");
    math = math.replaceAll("(?<![a-zA-Z\\\\])equiv(?![a-zA-Z])",  "\\\\equiv");
    math = math.replaceAll("(?<![a-zA-Z\\\\])cong(?![a-zA-Z])",   "\\\\cong");
    math = math.replaceAll("(?<![a-zA-Z\\\\])prec(?![a-zA-Z])",   "\\\\prec");
    math = math.replaceAll("(?<![a-zA-Z\\\\])succ(?![a-zA-Z])",   "\\\\succ");

    // 4. Standalone "in" symbol (not part of a word like "infty" or "int") — must come after "infinity"
    math = math.replaceAll("(?<![a-zA-Z\\\\])in(?![a-zA-Z])", "\\\\in");

    // 5. "not" / "and" / "or" as logic symbols — standalone only
    math = math.replaceAll("(?<![a-zA-Z\\\\])not(?![a-zA-Z])", "\\\\neg");
    math = math.replaceAll("(?<![a-zA-Z\\\\])and(?![a-zA-Z])", "\\\\wedge");
    math = math.replaceAll("(?<![a-zA-Z\\\\])or(?![a-zA-Z])", "\\\\vee");

    // 6. "sim" standalone → \sim (avoid matching "sigma", "epsilon", etc.)
    math = math.replaceAll("(?<![a-zA-Z\\\\])sim(?![a-zA-Z])", "\\\\sim");

    // 7. Uppercase Greek letters (before lowercase, since names are prefix-free here)
    math = math.replaceAll("(?<![a-zA-Z\\\\])Delta(?![a-zA-Z])",   "\\\\Delta");
    math = math.replaceAll("(?<![a-zA-Z\\\\])Psi(?![a-zA-Z])",     "\\\\Psi");
    math = math.replaceAll("(?<![a-zA-Z\\\\])Sigma(?![a-zA-Z])",   "\\\\Sigma");
    math = math.replaceAll("(?<![a-zA-Z\\\\])Lambda(?![a-zA-Z])",  "\\\\Lambda");
    math = math.replaceAll("(?<![a-zA-Z\\\\])Omega(?![a-zA-Z])",   "\\\\Omega");
    math = math.replaceAll("(?<![a-zA-Z\\\\])Gamma(?![a-zA-Z])",   "\\\\Gamma");
    math = math.replaceAll("(?<![a-zA-Z\\\\])Theta(?![a-zA-Z])",   "\\\\Theta");
    math = math.replaceAll("(?<![a-zA-Z\\\\])Pi(?![a-zA-Z])",      "\\\\Pi");
    math = math.replaceAll("(?<![a-zA-Z\\\\])Phi(?![a-zA-Z])",     "\\\\Phi");
    math = math.replaceAll("(?<![a-zA-Z\\\\])Chi(?![a-zA-Z])",     "\\\\Chi");
    math = math.replaceAll("(?<![a-zA-Z\\\\])Xi(?![a-zA-Z])",      "\\\\Xi");
    math = math.replaceAll("(?<![a-zA-Z\\\\])Eta(?![a-zA-Z])",     "\\\\Eta");

    // 7b. Typst alternate Greek variants (before standard Greek replacement)
    math = math.replace("phi.alt", "\\varphi");
    math = math.replace("psi.alt", "\\psi");
    math = math.replace("epsilon.alt", "\\varepsilon");
    math = math.replace("theta.alt", "\\vartheta");

    // 8. Lowercase Greek letters (via existing helper, which already guards against prefix matches)
    math = replaceGreekLetters(math);

    // 9. Function wrappers: tilde(X) → \tilde{X}, hat(X) → \hat{X}, etc.
    //    Use iterative replacement to handle nesting.
    math = replaceFunctionWrapper(math, "tilde",  "\\tilde");
    math = replaceFunctionWrapper(math, "hat",    "\\hat");
    math = replaceFunctionWrapper(math, "bar",    "\\bar");
    math = replaceFunctionWrapper(math, "bold",   "\\mathbf");
    math = replaceFunctionWrapper(math, "cal",    "\\mathcal");
    math = replaceFunctionWrapper(math, "bb",     "\\mathbb");
    math = replaceFunctionWrapper(math, "norm",   "\\|", "\\|");
    math = replaceFunctionWrapper(math, "abs",    "|",   "|");
    math = replaceFunctionWrapper(math, "floor",  "\\lfloor ", " \\rfloor");
    math = replaceFunctionWrapper(math, "ceil",   "\\lceil ",  " \\rceil");
    math = replaceFunctionWrapper(math, "exp",    "\\exp(", ")");
    math = replaceFunctionWrapper(math, "ln",     "\\ln(",  ")");
    math = replaceFunctionWrapper(math, "log",    "\\log(", ")");
    math = replaceFunctionWrapper(math, "max",    "\\max(", ")");
    math = replaceFunctionWrapper(math, "min",    "\\min(", ")");
    math = replaceFunctionWrapper(math, "sup",    "\\sup(", ")");
    math = replaceFunctionWrapper(math, "inf",    "\\inf(", ")");

    // 10. set operators: subset, supset, inter, union  (must come before generic word replacements)
    math = math.replace("subset", "\\subset");
    math = math.replace("supset", "\\supset");
    math = math.replaceAll("(?<![a-zA-Z\\\\])inter(?![a-zA-Z])", "\\\\cap");
    math = math.replaceAll("(?<![a-zA-Z\\\\])union(?![a-zA-Z])", "\\\\cup");
    math = math.replace("times", "\\times");

    // 11. Parenthesized subscripts/superscripts: _(expr) → _{expr} and ^(expr) → ^{expr}
    //     Iterate to handle nested cases from inside out.
    math = convertParenGroupsToLatex(math);

    // 12. frac(a, b) → \frac{a}{b} — iterative to handle nesting
    math = convertFracCalls(math);

    // 13. Operator names that may remain after subscript conversion
    math = math.replaceAll("(?<![a-zA-Z\\\\])sum(?![a-zA-Z])",      "\\\\sum");
    math = math.replaceAll("(?<![a-zA-Z\\\\])prod(?![a-zA-Z])",     "\\\\prod");
    math = math.replaceAll("(?<![a-zA-Z\\\\])lim(?![a-zA-Z])",      "\\\\lim");
    // integral: Typst uses full word "integral"; int is shorthand — both → \int
    math = math.replaceAll("(?<![a-zA-Z\\\\])integral(?![a-zA-Z])", "\\\\int");
    // int: watch out for "\\in" already replaced; only replace bare "int"
    math = math.replaceAll("(?<![a-zA-Z\\\\])int(?![a-zA-Z])",      "\\\\int");
    // quad spacing
    math = math.replaceAll("(?<![a-zA-Z\\\\])quad(?![a-zA-Z])", "\\\\quad ");
    // \ line breaks in multi-line aligned equations: Typst uses single \ , LaTeX uses \\
    math = math.replaceAll("(?<!\\\\)\\\\(?!\\\\|[a-zA-Z{])", "\\\\\\\\");

    // 14. Cleanup
    math = math.replaceAll("\\bspace\\b\\s*", "");

    // 15. Fix underscores inside \text{...}: \text{ECM_q} → \text{ECM}_{q}
    //     MathJax requires _ to be a math subscript operator, not literal inside \text{}.
    //     Pattern: \text{word_rest} → \text{word}_{rest}  (handles one underscore)
    math = fixUnderscoresInText(math);

    // 16. Fix superscripts inside \text{^{N}X}: \text{^{31}P} → {}^{31}\text{P}
    math = math.replaceAll("\\\\text\\{\\^\\{([^}]+)\\}([^}]*)\\}", "{}^{$1}\\\\text{$2}");
    // Also handle \text{^N X} without braces around N
    math = math.replaceAll("\\\\text\\{\\^([A-Za-z0-9]+)([^}]*)\\}", "{}^{$1}\\\\text{$2}");

    return math;
}

// Replace func(content) → prefix{content}suffix  (simple single-arg wrapper, non-nested).
// Handles one level of nesting by scanning for matching paren.
String replaceFunctionWrapper(String math, String funcName, String prefix) {
    return replaceFunctionWrapper(math, funcName, prefix + "{", "}");
}

String replaceFunctionWrapper(String math, String funcName, String open, String close) {
    // Only match funcName( not preceded by a letter (avoid matching e.g. "exp" inside "inexperience")
    var sb = new StringBuilder();
    int i = 0;
    var pattern = "(?<![a-zA-Z\\\\])" + Pattern.quote(funcName) + "\\(";
    var pat = Pattern.compile(pattern);
    var m = pat.matcher(math);
    int last = 0;
    while (m.find()) {
        sb.append(math, last, m.start());
        // Find matching closing paren
        int start = m.end(); // position after '('
        int depth = 1;
        int j = start;
        while (j < math.length() && depth > 0) {
            char c = math.charAt(j);
            if (c == '(') depth++;
            else if (c == ')') depth--;
            j++;
        }
        var content = math.substring(start, j - 1);
        sb.append(open).append(content).append(close);
        last = j;
    }
    sb.append(math.substring(last));
    return sb.toString();
}

// Convert _(expr) → _{expr} and ^(expr) → ^{expr}, handling nested parens iteratively.
String convertParenGroupsToLatex(String math) {
    // Iterate until no more changes (handles nesting inside-out due to regex greediness)
    String prev;
    int maxIter = 20;
    do {
        prev = math;
        // Replace _( non-paren-content ) — innermost first via non-capturing of nested parens
        math = math.replaceAll("_\\(([^()]*)\\)", "_{$1}");
        math = math.replaceAll("\\^\\(([^()]*)\\)", "^{$1}");
        maxIter--;
    } while (!math.equals(prev) && maxIter > 0);
    return math;
}

// Convert frac(a, b) → \frac{a}{b}, handling nested frac calls iteratively.
String convertFracCalls(String math) {
    // Iterative: keep replacing until no more frac( found
    int maxIter = 20;
    while (math.contains("frac(") && maxIter-- > 0) {
        var sb = new StringBuilder();
        int i = 0;
        boolean found = false;
        while (i < math.length()) {
            int pos = math.indexOf("frac(", i);
            if (pos < 0) { sb.append(math.substring(i)); break; }
            // Make sure it's not "\\frac" already
            if (pos > 0 && math.charAt(pos - 1) == '\\') {
                sb.append(math, i, pos + 5);
                i = pos + 5;
                continue;
            }
            sb.append(math, i, pos);
            // Find matching ) for frac(
            int argStart = pos + 5; // after 'frac('
            // Extract first arg (up to top-level comma), skipping quoted strings and {} groups
            int depth = 1;
            int braceDepth = 0;
            int j = argStart;
            int commaPos = -1;
            while (j < math.length() && depth > 0) {
                char c = math.charAt(j);
                if (c == '"') {
                    // skip over quoted string
                    j++;
                    while (j < math.length() && math.charAt(j) != '"') j++;
                } else if (c == '{') braceDepth++;
                else if (c == '}') { if (braceDepth > 0) braceDepth--; }
                else if (c == '(') depth++;
                else if (c == ')') depth--;
                else if (c == ',' && depth == 1 && braceDepth == 0 && commaPos < 0) commaPos = j;
                j++;
            }
            int closePos = j - 1; // position of matching ')'
            if (commaPos < 0 || commaPos >= closePos) {
                // Malformed — emit as-is
                sb.append("frac(");
                i = pos + 5;
                continue;
            }
            var arg1 = math.substring(argStart, commaPos).strip();
            var arg2 = math.substring(commaPos + 1, closePos).strip();
            sb.append("\\frac{").append(arg1).append("}{").append(arg2).append("}");
            i = closePos + 1;
            found = true;
        }
        math = sb.toString();
        if (!found) break;
    }
    return math;
}

String translateMath(String s) {
    var sb = new StringBuilder();
    int i = 0;
    while (i < s.length()) {
        int dollar = s.indexOf('$', i);
        if (dollar < 0) { sb.append(s.substring(i)); break; }
        sb.append(s, i, dollar);
        // Inline math must not span newlines — find closing $ on the same line only.
        int lineEnd = s.indexOf('\n', dollar);
        int end = s.indexOf('$', dollar + 1);
        if (end < 0 || (lineEnd >= 0 && end > lineEnd)) {
            // No closing $ on same line — treat as literal $
            sb.append('$');
            i = dollar + 1;
            continue;
        }
        var math = s.substring(dollar + 1, end);
        math = translateTypstMathContent(math);
        sb.append('$').append(math).append('$');
        i = end + 1;
    }
    return sb.toString();
}

String replaceGreekLetters(String math) {
    String[][] greekLetters = {
        {"epsilon", "\\epsilon"}, {"omega", "\\omega"}, {"lambda", "\\lambda"},
        {"theta", "\\theta"}, {"kappa", "\\kappa"}, {"sigma", "\\sigma"},
        {"alpha", "\\alpha"}, {"gamma", "\\gamma"}, {"delta", "\\delta"},
        {"tilde", "\\sim"},
        {"beta", "\\beta"}, {"zeta", "\\zeta"},
        {"eta", "\\eta"},
        {"mu", "\\mu"}, {"nu", "\\nu"}, {"xi", "\\xi"}, {"pi", "\\pi"},
        {"psi", "\\psi"}, {"rho", "\\rho"}, {"tau", "\\tau"}, {"phi", "\\phi"}, {"chi", "\\chi"},
    };
    for (var pair : greekLetters) {
        math = math.replaceAll("(?<=^|[^a-zA-Z\\\\{])" + pair[0] + "(?=[^a-zA-Z}]|$)", Matcher.quoteReplacement(pair[1]));
    }
    return math;
}

String stripHeadingMath(String s) {
    var sb = new StringBuilder();
    int i = 0;
    while (i < s.length()) {
        int dollar = s.indexOf('$', i);
        if (dollar < 0) { sb.append(s.substring(i)); break; }
        sb.append(s, i, dollar);
        int end = s.indexOf('$', dollar + 1);
        if (end < 0) { sb.append(s.substring(dollar)); break; }
        var math = s.substring(dollar + 1, end);
        sb.append(latexMathToUnicode(math));
        i = end + 1;
    }
    return sb.toString();
}

String latexMathToUnicode(String math) {
    return math
        .replace("\\alpha",  "\u03B1")
        .replace("\\beta",   "\u03B2")
        .replace("\\gamma",  "\u03B3")
        .replace("\\delta",  "\u03B4")
        .replace("\\epsilon","\u03B5")
        .replace("\\theta",  "\u03B8")
        .replace("\\kappa",  "\u03BA")
        .replace("\\lambda", "\u03BB")
        .replace("\\mu",     "\u03BC")
        .replace("\\nu",     "\u03BD")
        .replace("\\pi",     "\u03C0")
        .replace("\\rho",    "\u03C1")
        .replace("\\sigma",  "\u03C3")
        .replace("\\tau",    "\u03C4")
        .replace("\\phi",    "\u03C6")
        .replace("\\chi",    "\u03C7")
        .replace("\\psi",    "\u03C8")
        .replace("\\omega",  "\u03C9")
        .replace("\\Gamma",  "\u0393")
        .replace("\\Delta",  "\u0394")
        .replace("\\Theta",  "\u0398")
        .replace("\\Lambda", "\u039B")
        .replace("\\Sigma",  "\u03A3")
        .replace("\\Omega",  "\u03A9")
        .replace("\\zeta",   "\u03B6")
        .replace("\\eta",    "\u03B7")
        .replace("\\xi",     "\u03BE")
        .replace("\\varepsilon","\u03B5")
        .replace("\\vartheta","\u03D1")
        .replace("\\varphi", "\u03C6")
        .replace("\\rightarrow", "\u2192")
        .replace("\\leftarrow",  "\u2190")
        .replace("\\leftrightarrow","\u2194")
        .replace("\\Rightarrow", "\u21D2")
        .replace("\\geq",    "\u2265")
        .replace("\\leq",    "\u2264")
        .replace("\\neq",    "\u2260")
        .replace("\\cdot",   "\u22C5")
        .replace("\\pm",     "\u00B1")
        .replace("\\approx", "\u2248")
        .replace("\\text{", "")
        .replace("}", "")
        .replace("^+", "\u207A")
        .replace("^2", "\u00B2")
        .replace("^3", "\u00B3")
        .replace("_0", "\u2080")
        .replace("_1", "\u2081")
        .replace("_2", "\u2082")
        .replace("_i", "\u1D62")
        .replace("\\cap", "\u2229")
        .replace("\\cup", "\u222A")
        .replace("\\subset", "\u2282")
        .replace("\\supset", "\u2283")
        .replace("\\times", "\u00D7")
        .replace("\\mathcal{", "")
        .replace("\\mathbf{", "")
        .replace("\\emptyset", "\u2205")
        .replace("\\sim", "\u223C")
        .replaceAll("\\\\?\\bspace\\b", "")
        .replaceAll("\\\\s*bolde?r?\\{|\\\\s*cal\\{", "")
        .replace("\"", "");
}

String normalizeUnicode(String s) {
    return s
        .replace('\u2013', '-')
        .replace('\u2014', '-')
        .replace('\u2018', '\'')
        .replace('\u2019', '\'')
        .replace('\u201c', '"')
        .replace('\u201d', '"');
}

// Convert #registry-entry(...) blocks to Markdown definition list / table.
// Each entry becomes a compact 2-column table: field label | value.
String convertRegistryEntries(String s) {
    var sb = new StringBuilder();
    int i = 0;
    while (i < s.length()) {
        int pos = s.indexOf("#registry-entry(", i);
        if (pos < 0) { sb.append(s.substring(i)); break; }
        sb.append(s, i, pos);

        // Find matching )
        int bodyStart = pos + 16;
        int depth = 1;
        int end = bodyStart;
        while (end < s.length() && depth > 0) {
            char c = s.charAt(end);
            if (c == '(') depth++;
            else if (c == ')') depth--;
            end++;
        }
        String body = s.substring(bodyStart, end - 1);

        // Extract named args and positional arg (name is positional first)
        var args = extractRegistryArgs(body);
        String name = args.getOrDefault("_name", "");
        String type = args.getOrDefault("type", "H");
        String certainty = args.getOrDefault("certainty", "---");
        String evidence = args.getOrDefault("evidence", "");
        String citations = args.getOrDefault("citations", "");
        String mechanism = args.getOrDefault("mechanism", "");
        String chapterRef = args.getOrDefault("chapter-ref", "");
        String prediction = args.getOrDefault("prediction", "");
        String treatment = args.getOrDefault("treatment", "");
        String limitation = args.getOrDefault("limitation", "");

        // Render as a styled HTML card
        var out = new StringBuilder();
        String certStr = certainty.equals("---") ? "—" : "p=" + certainty;
        String typeLabel = switch (type) {
            case "H"  -> "Hypothesis";
            case "S"  -> "Speculation";
            case "OQ" -> "Open Question";
            case "P"  -> "Prediction";
            default   -> type;
        };
        out.append("\n<div class=\"registry-entry registry-").append(type).append("\">\n");
        out.append("<div class=\"registry-header\">")
           .append("<span class=\"registry-badge\">").append(typeLabel).append(" ").append(certStr).append("</span>")
           .append("<span class=\"registry-name\">").append(cleanCellContent(name)).append("</span>")
           .append("</div>\n");
        out.append("<dl class=\"registry-fields\">\n");
        if (!evidence.isBlank())   out.append("<dt>Evidence</dt><dd>").append(cleanCellContent(evidence)).append("</dd>\n");
        if (!citations.isBlank())  out.append("<dt>Citations</dt><dd>").append(cleanCellContent(citations)).append("</dd>\n");
        if (!mechanism.isBlank())  out.append("<dt>Mechanism</dt><dd>").append(cleanCellContent(mechanism)).append("</dd>\n");
        if (!chapterRef.isBlank()) out.append("<dt>Chapter ref</dt><dd>").append(cleanCellContent(chapterRef)).append("</dd>\n");
        if (!prediction.isBlank()) out.append("<dt>Prediction</dt><dd>").append(cleanCellContent(prediction)).append("</dd>\n");
        if (!treatment.isBlank())  out.append("<dt>Treatment</dt><dd>").append(cleanCellContent(treatment)).append("</dd>\n");
        if (!limitation.isBlank()) out.append("<dt>Limitation</dt><dd>").append(cleanCellContent(limitation)).append("</dd>\n");
        out.append("</dl>\n</div>\n");

        sb.append(out);
        i = end;
        while (i < s.length() && s.charAt(i) == '\n') { i++; }
    }
    return sb.toString();
}

// Extract arguments from #registry-entry(...) body.
// Returns map with "_name" for positional first arg, and named args by key.
Map<String, String> extractRegistryArgs(String body) {
    var result = new LinkedHashMap<String, String>();
    int i = 0;
    boolean firstArg = true;
    while (i < body.length()) {
        while (i < body.length() && Character.isWhitespace(body.charAt(i))) i++;
        if (i >= body.length()) break;

        // Skip // comments
        if (i + 1 < body.length() && body.charAt(i) == '/' && body.charAt(i+1) == '/') {
            while (i < body.length() && body.charAt(i) != '\n') i++;
            continue;
        }

        // Named arg: word: value
        var namedPat = java.util.regex.Pattern.compile("^([a-z][a-z0-9-]*)\\s*:");
        var m = namedPat.matcher(body.substring(i));
        if (m.find()) {
            String key = m.group(1);
            i += m.end();
            while (i < body.length() && body.charAt(i) == ' ') i++;
            // Value is either "string" or [content]
            if (i < body.length() && body.charAt(i) == '"') {
                int start = i + 1;
                int end = body.indexOf('"', start);
                if (end < 0) end = body.length();
                result.put(key, body.substring(start, end));
                i = end + 1;
            } else if (i < body.length() && body.charAt(i) == '[') {
                int start = i + 1;
                int depth = 1;
                int end = start;
                while (end < body.length() && depth > 0) {
                    char c = body.charAt(end);
                    if (c == '[') depth++;
                    else if (c == ']') depth--;
                    end++;
                }
                result.put(key, body.substring(start, end - 1));
                i = end;
            }
            while (i < body.length() && (body.charAt(i) == ',' || body.charAt(i) == ' ')) i++;
            continue;
        }

        // Positional [content] arg (name)
        if (body.charAt(i) == '[') {
            int start = i + 1;
            int depth = 1;
            int end = start;
            while (end < body.length() && depth > 0) {
                char c = body.charAt(end);
                if (c == '[') depth++;
                else if (c == ']') depth--;
                end++;
            }
            if (firstArg) {
                result.put("_name", body.substring(start, end - 1));
                firstArg = false;
            }
            i = end;
            while (i < body.length() && (body.charAt(i) == ',' || body.charAt(i) == ' ')) i++;
            continue;
        }

        i++;
    }
    return result;
}

// Convert #figure( table(...), caption: [...] ) blocks to Markdown pipe tables.
// Uses the SAME detection logic as the original removeFigureTable but converts instead of dropping.
String convertFigureTable(String s) {
    var sb = new StringBuilder();
    int i = 0;
    while (i < s.length()) {
        int pos = s.indexOf("#figure(", i);
        if (pos < 0) { sb.append(s.substring(i)); break; }
        sb.append(s, i, pos);
        int afterParen = pos + 8;
        while (afterParen < s.length() && Character.isWhitespace(s.charAt(afterParen))) afterParen++;
        boolean isTable = s.regionMatches(afterParen, "table", 0, 5)
            && (afterParen + 5 >= s.length() || !Character.isLetterOrDigit(s.charAt(afterParen + 5)));
        if (!isTable && s.regionMatches(afterParen, "kind:", 0, 5)) {
            int v = afterParen + 5;
            while (v < s.length() && s.charAt(v) == ' ') v++;
            isTable = s.regionMatches(v, "table", 0, 5)
                && (v + 5 >= s.length() || !Character.isLetterOrDigit(s.charAt(v + 5)));
        }
        if (!isTable) {
            int searchEnd = Math.min(s.length(), pos + 200);
            for (int k = afterParen; k < searchEnd; k++) {
                if (s.charAt(k) == ',' || s.charAt(k) == '\n') {
                    int next = k + 1;
                    while (next < searchEnd && Character.isWhitespace(s.charAt(next))) next++;
                    if (s.regionMatches(next, "table", 0, 5)
                        && (next + 5 >= s.length() || !Character.isLetterOrDigit(s.charAt(next + 5)))) {
                        isTable = true;
                        break;
                    }
                    if (s.regionMatches(next, "kind:", 0, 5)) {
                        int v = next + 5;
                        while (v < searchEnd && s.charAt(v) == ' ') v++;
                        if (s.regionMatches(v, "table", 0, 5)
                            && (v + 5 >= s.length() || !Character.isLetterOrDigit(s.charAt(v + 5)))) {
                            isTable = true;
                            break;
                        }
                    }
                }
            }
        }
        if (!isTable) {
            sb.append("#figure(");
            i = pos + 8;
            continue;
        }
        int depth = 1;
        int j = pos + 8;
        while (j < s.length() && depth > 0) {
            char c = s.charAt(j);
            if (c == '(') depth++;
            else if (c == ')') depth--;
            j++;
        }
        var figureContent = s.substring(pos + 8, j - 1);

        // Check for optional [content] block after closing )
        int afterClose = j;
        while (afterClose < s.length() && s.charAt(afterClose) == ' ') afterClose++;
        String outerBracketContent = null;
        if (afterClose < s.length() && s.charAt(afterClose) == '[') {
            int bd = 1;
            int bStart = afterClose + 1;
            int bEnd = bStart;
            while (bEnd < s.length() && bd > 0) {
                char c = s.charAt(bEnd);
                if (c == '[') bd++;
                else if (c == ']') bd--;
                bEnd++;
            }
            outerBracketContent = s.substring(bStart, bEnd - 1);
            j = bEnd;
        }

        // Extract caption — use bracket-depth scan to handle nested brackets (e.g., $[...]$ math)
        String caption = extractBracketArg(figureContent, "caption:");

        // Find inner table and convert
        String tableContent = outerBracketContent != null ? outerBracketContent : figureContent;
        String md = extractAndConvertTable(tableContent);

        if (md != null) {
            if (caption != null && !caption.isBlank()) {
                sb.append(md).append("\n: ").append(cleanCellContent(caption)).append("\n\n");
            } else {
                sb.append(md).append("\n");
            }
        } else {
            sb.append("<!-- TABLE (conversion failed) -->\n");
        }

        // Consume optional whitespace + <label> after figure
        while (j < s.length() && s.charAt(j) == ' ') j++;
        if (j < s.length() && s.charAt(j) == '<') {
            int labelEnd = s.indexOf('>', j);
            if (labelEnd >= 0) {
                var tableLabel = s.substring(j, labelEnd + 1);
                sb.append(tableLabel).append('\n');
                j = labelEnd + 1;
            }
        }
        if (j < s.length() && s.charAt(j) == '\n') j++;
        i = j;
    }
    return sb.toString();
}

// Convert standalone #table(...) blocks to Markdown pipe tables.
String convertTableBlocks(String s) {
    var sb = new StringBuilder();
    int i = 0;
    while (i < s.length()) {
        int pos = s.indexOf("#table(", i);
        if (pos < 0) { sb.append(s.substring(i)); break; }
        sb.append(s, i, pos);
        int depth = 1;
        int j = pos + 7;
        while (j < s.length() && depth > 0) {
            char c = s.charAt(j);
            if (c == '(') depth++;
            else if (c == ')') depth--;
            j++;
        }
        var tableBody = s.substring(pos + 7, j - 1);

        // Check for optional [content] block
        int afterClose = j;
        while (afterClose < s.length() && s.charAt(afterClose) == ' ') afterClose++;
        String bracketContent = null;
        if (afterClose < s.length() && s.charAt(afterClose) == '[') {
            int bd = 1;
            int bStart = afterClose + 1;
            int bEnd = bStart;
            while (bEnd < s.length() && bd > 0) {
                char c = s.charAt(bEnd);
                if (c == '[') bd++;
                else if (c == ']') bd--;
                bEnd++;
            }
            bracketContent = s.substring(bStart, bEnd - 1);
            j = bEnd;
        }

        var md = typstTableToMarkdown(tableBody, bracketContent);
        sb.append(md).append("\n");

        while (j < s.length() && s.charAt(j) == ' ') j++;
        if (j < s.length() && s.charAt(j) == '\n') j++;
        i = j;
    }
    return sb.toString();
}

// Find #table(...) inside content and convert it
String extractAndConvertTable(String content) {
    int tPos = content.indexOf("table(");
    if (tPos < 0) tPos = content.indexOf("#table(");
    if (tPos < 0) return null;

    int parenStart = content.indexOf('(', tPos);
    if (parenStart < 0) return null;

    int depth = 1;
    int j = parenStart + 1;
    while (j < content.length() && depth > 0) {
        char c = content.charAt(j);
        if (c == '(') depth++;
        else if (c == ')') depth--;
        j++;
    }
    var tableBody = content.substring(parenStart + 1, j - 1);

    // Check for [content] after table(...)
    int afterClose = j;
    while (afterClose < content.length() && content.charAt(afterClose) == ' ') afterClose++;
    String bracketContent = null;
    if (afterClose < content.length() && content.charAt(afterClose) == '[') {
        int bd = 1;
        int bStart = afterClose + 1;
        int bEnd = bStart;
        while (bEnd < content.length() && bd > 0) {
            char c = content.charAt(bEnd);
            if (c == '[') bd++;
            else if (c == ']') bd--;
            bEnd++;
        }
        bracketContent = content.substring(bStart, bEnd - 1);
    }

    return typstTableToMarkdown(tableBody, bracketContent);
}

String typstTableToMarkdown(String tableBody, String bracketContent) {
    int numCols = detectColumnCount(tableBody);
    var cells = extractTableCells(tableBody);

    if (bracketContent != null && !bracketContent.isBlank()) {
        var bracketCells = extractBracketCells(bracketContent);
        if (!bracketCells.isEmpty()) cells = bracketCells;
    }

    if (cells.isEmpty()) return "<!-- TABLE (no cells found) -->";
    if (numCols == 0) numCols = cells.size();
    if (numCols == 0) return "<!-- TABLE (no columns) -->";

    var rows = new ArrayList<List<String>>();
    var currentRow = new ArrayList<String>();
    for (var cell : cells) {
        currentRow.add(cell);
        if (currentRow.size() == numCols) {
            rows.add(new ArrayList<>(currentRow));
            currentRow.clear();
        }
    }
    if (!currentRow.isEmpty()) {
        while (currentRow.size() < numCols) currentRow.add("");
        rows.add(currentRow);
    }

    if (rows.isEmpty()) return "<!-- TABLE (no rows) -->";

    var sb = new StringBuilder();
    sb.append('\n');

    var header = rows.get(0);
    sb.append("|");
    for (var h : header) sb.append(" ").append(cleanCellContent(h)).append(" |");
    sb.append("\n|");
    for (int c = 0; c < numCols; c++) sb.append("---|");
    sb.append("\n");

    for (int r = 1; r < rows.size(); r++) {
        var row = rows.get(r);
        sb.append("|");
        for (var cell : row) sb.append(" ").append(cleanCellContent(cell)).append(" |");
        sb.append("\n");
    }

    return sb.toString();
}

int detectColumnCount(String tableBody) {
    var colPat = Pattern.compile("columns:\\s*\\(([^)]+)\\)");
    var m = colPat.matcher(tableBody);
    if (m.find()) return m.group(1).split(",").length;
    var colNumPat = Pattern.compile("columns:\\s*(\\d+)");
    m = colNumPat.matcher(tableBody);
    if (m.find()) return Integer.parseInt(m.group(1));
    return 0;
}

List<String> extractTableCells(String body) {
    var cells = new ArrayList<String>();
    int i = 0;
    while (i < body.length()) {
        while (i < body.length() && Character.isWhitespace(body.charAt(i))) i++;
        if (i >= body.length()) break;

        if (matchesKeywordArg(body, i)) {
            i = skipKeywordArg(body, i);
            continue;
        }

        if (body.regionMatches(i, "table.header(", 0, 13)) {
            int hStart = i + 13;
            int hDepth = 1;
            int hEnd = hStart;
            while (hEnd < body.length() && hDepth > 0) {
                char c = body.charAt(hEnd);
                if (c == '(') hDepth++;
                else if (c == ')') hDepth--;
                hEnd++;
            }
            cells.addAll(extractCellsFromContent(body.substring(hStart, hEnd - 1)));
            i = hEnd;
            while (i < body.length() && (body.charAt(i) == ',' || Character.isWhitespace(body.charAt(i)))) i++;
            continue;
        }

        if (body.regionMatches(i, "table.cell(", 0, 11)) {
            int tcStart = i + 11;
            int tcDepth = 1;
            int tcEnd = tcStart;
            while (tcEnd < body.length() && tcDepth > 0) {
                char c = body.charAt(tcEnd);
                if (c == '(') tcDepth++;
                else if (c == ')') tcDepth--;
                tcEnd++;
            }
            var cellArgs = body.substring(tcStart, tcEnd - 1);
            int colspan = 1;
            var csPat = Pattern.compile("colspan:\\s*(\\d+)");
            var csm = csPat.matcher(cellArgs);
            if (csm.find()) colspan = Integer.parseInt(csm.group(1));

            int afterTc = tcEnd;
            while (afterTc < body.length() && Character.isWhitespace(body.charAt(afterTc))) afterTc++;
            String cellContent = "";
            if (afterTc < body.length() && body.charAt(afterTc) == '[') {
                int bd = 1;
                int bStart = afterTc + 1;
                int bEnd = bStart;
                while (bEnd < body.length() && bd > 0) {
                    char c = body.charAt(bEnd);
                    if (c == '[') bd++;
                    else if (c == ']') bd--;
                    bEnd++;
                }
                cellContent = body.substring(bStart, bEnd - 1);
                i = bEnd;
            } else {
                i = tcEnd;
            }
            cells.add(cellContent);
            for (int c = 1; c < colspan; c++) cells.add("");
            while (i < body.length() && (body.charAt(i) == ',' || Character.isWhitespace(body.charAt(i)))) i++;
            continue;
        }

        if (body.charAt(i) == '[') {
            int bd = 1;
            int start = i + 1;
            int end = start;
            while (end < body.length() && bd > 0) {
                char c = body.charAt(end);
                if (c == '[') bd++;
                else if (c == ']') bd--;
                end++;
            }
            cells.add(body.substring(start, end - 1));
            i = end;
            while (i < body.length() && (body.charAt(i) == ',' || Character.isWhitespace(body.charAt(i)))) i++;
            continue;
        }

        i++;
    }
    return cells;
}

List<String> extractBracketCells(String content) {
    var cells = new ArrayList<String>();
    // Bracket content uses comma-separated values, each line may have multiple cells
    // The cells are bare text separated by commas, NOT wrapped in [...]
    var lines = content.split("\n");
    for (var line : lines) {
        var trimmed = line.strip();
        if (trimmed.isEmpty()) continue;
        // Split on comma that's followed by a space and not inside nested brackets
        int depth = 0;
        int cellStart = 0;
        for (int i = 0; i <= trimmed.length(); i++) {
            if (i == trimmed.length() || (trimmed.charAt(i) == ',' && depth == 0)) {
                var cell = trimmed.substring(cellStart, i).strip();
                if (!cell.isEmpty()) cells.add(cell);
                cellStart = i + 1;
            } else if (trimmed.charAt(i) == '[') {
                depth++;
            } else if (trimmed.charAt(i) == ']') {
                depth--;
            }
        }
    }
    return cells;
}

boolean matchesKeywordArg(String body, int pos) {
    for (var kw : List.of("columns:", "align:", "stroke:", "inset:", "fill:", "gutter:")) {
        if (body.regionMatches(pos, kw, 0, kw.length())) return true;
    }
    return false;
}

int skipKeywordArg(String body, int pos) {
    int j = pos;
    while (j < body.length() && body.charAt(j) != ':') j++;
    j++;
    while (j < body.length() && Character.isWhitespace(body.charAt(j))) j++;
    if (j >= body.length()) return j;

    if (body.charAt(j) == '(') {
        int depth = 1;
        j++;
        while (j < body.length() && depth > 0) {
            if (body.charAt(j) == '(') depth++;
            else if (body.charAt(j) == ')') depth--;
            j++;
        }
    } else {
        while (j < body.length() && body.charAt(j) != ',' && body.charAt(j) != '\n') {
            if (body.charAt(j) == '(') {
                int depth = 1;
                j++;
                while (j < body.length() && depth > 0) {
                    if (body.charAt(j) == '(') depth++;
                    else if (body.charAt(j) == ')') depth--;
                    j++;
                }
            } else {
                j++;
            }
        }
    }
    while (j < body.length() && (body.charAt(j) == ',' || Character.isWhitespace(body.charAt(j)))) j++;
    return j;
}

List<String> extractCellsFromContent(String content) {
    var cells = new ArrayList<String>();
    int i = 0;
    while (i < content.length()) {
        while (i < content.length() && Character.isWhitespace(content.charAt(i))) i++;
        if (i >= content.length()) break;
        if (content.charAt(i) == '[') {
            int bd = 1;
            int start = i + 1;
            int end = start;
            while (end < content.length() && bd > 0) {
                char c = content.charAt(end);
                if (c == '[') bd++;
                else if (c == ']') bd--;
                end++;
            }
            cells.add(content.substring(start, end - 1));
            i = end;
            while (i < content.length() && (content.charAt(i) == ',' || Character.isWhitespace(content.charAt(i)))) i++;
        } else {
            i++;
        }
    }
    return cells;
}

// Strip remaining multi-line #let blocks: #let name(...) = { ... } spanning multiple lines.
// The single-line regex already removed `#let name = value` forms; this removes block forms.
String stripLetBlocks(String src) {
    var sb = new StringBuilder();
    var lines = src.split("\n", -1);
    int i = 0;
    while (i < lines.length) {
        var line = lines[i];
        // Detect a #let block form: line starts with #let and contains '{'
        if (line.stripLeading().startsWith("#let") && line.contains("{")) {
            // Count brace depth; consume lines until balanced
            int depth = 0;
            while (i < lines.length) {
                for (char c : lines[i].toCharArray()) {
                    if (c == '{') depth++;
                    else if (c == '}') depth--;
                }
                i++;
                if (depth <= 0) break;
            }
            continue;
        }
        sb.append(line).append("\n");
        i++;
    }
    // Remove trailing extra newline added by the loop
    if (sb.length() > 0 && sb.charAt(sb.length() - 1) == '\n'
            && (src.isEmpty() || src.charAt(src.length() - 1) != '\n')) {
        sb.deleteCharAt(sb.length() - 1);
    }
    return sb.toString();
}

// Extract the [...] content of a named argument like "caption: [...]" using bracket-depth scanning.
// Returns the content inside the brackets, or null if not found.
String extractBracketArg(String s, String argName) {
    int pos = s.indexOf(argName);
    if (pos < 0) return null;
    int k = pos + argName.length();
    while (k < s.length() && s.charAt(k) == ' ') k++;
    if (k >= s.length() || s.charAt(k) != '[') return null;
    int depth = 1;
    int start = k + 1;
    int end = start;
    while (end < s.length() && depth > 0) {
        char c = s.charAt(end);
        if (c == '[') depth++;
        else if (c == ']') depth--;
        end++;
    }
    return s.substring(start, end - 1);
}

// Fix underscores inside \text{...} blocks.
// \text{ECM_q} → \text{ECM}_{q}
// \text{MC_act} → \text{MC}_{\text{act}}
// Multiple underscores: \text{k_on_rate} → \text{k}_{on\_rate} (simplified: first _ splits)
String fixUnderscoresInText(String math) {
    var sb = new StringBuilder();
    int i = 0;
    while (i < math.length()) {
        int pos = math.indexOf("\\text{", i);
        if (pos < 0) { sb.append(math.substring(i)); break; }
        sb.append(math, i, pos);
        // Find matching closing }
        int contentStart = pos + 6;
        int depth = 1;
        int j = contentStart;
        while (j < math.length() && depth > 0) {
            char c = math.charAt(j);
            if (c == '{') depth++;
            else if (c == '}') depth--;
            j++;
        }
        var content = math.substring(contentStart, j - 1);
        // Check if content contains underscore (not preceded by backslash)
        int uPos = -1;
        for (int k = 0; k < content.length(); k++) {
            if (content.charAt(k) == '_' && (k == 0 || content.charAt(k-1) != '\\')) {
                uPos = k;
                break;
            }
        }
        if (uPos >= 0) {
            var before = content.substring(0, uPos);
            var after = content.substring(uPos + 1);
            // If "after" is a single word/token, use _{\text{after}}; else _{after}
            boolean afterIsWord = after.matches("[A-Za-z0-9]+");
            if (afterIsWord && after.length() > 1) {
                sb.append("\\text{").append(before).append("}_{\\text{").append(after).append("}}");
            } else {
                sb.append("\\text{").append(before).append("}_{").append(after).append("}");
            }
        } else {
            sb.append("\\text{").append(content).append("}");
        }
        i = j;
    }
    return sb.toString();
}

String cleanCellContent(String cell) {
    var s = cell.strip();
    s = s.replaceAll("#strong\\[([^\\]]+?)\\]", "**$1**");
    s = s.replaceAll("#emph\\[([^\\]]+?)\\]", "*$1*");
    s = s.replaceAll("#text\\(weight:\\s*\"bold\"\\)\\[([^\\]]+?)\\]", "**$1**");
    s = s.replaceAll("#text\\(style:\\s*\"italic\"\\)\\[([^\\]]+?)\\]", "*$1*");
    s = s.replaceAll("#text\\([^)]*\\)\\[([^\\]]+?)\\]", "$1");
    s = s.replaceAll("#sub\\[([^\\]]+?)\\]", "~$1~");
    s = s.replaceAll("#super\\[([^\\]]+?)\\]", "^$1^");
    s = s.replaceAll("#link\\(\"([^\"]+)\"\\)\\[([^\\]]+?)\\]", "[$2]($1)");
    s = s.replaceAll("#link\\(\"([^\"]+)\"\\)", "<$1>");
    // Translate Typst inline math in cell/caption content
    s = translateMath(s);
    // Convert Typst cross-refs in chapter-ref / registry fields (used in HTML <dd> context → use <a>).
    //   ch14b:@spec:foo-bar  →  <a href="#spec-foo-bar">spec-foo-bar</a>  (strips chapter prefix)
    //   `spec:foo-bar`       →  <a href="#spec-foo-bar">spec-foo-bar</a>  (backtick-quoted)
    //   @spec:foo-bar        →  <a href="#spec-foo-bar">spec-foo-bar</a>
    s = s.replaceAll("[a-z][a-z0-9]*:@(sec|subsec|subsubsec|hyp|spec|lim|obs|oq|pred|prop|rec|warn|dir|prot|def|req|rem|open|clin|syn|pr)(?::)([a-zA-Z0-9_-]+)", "<a href=\"#$1-$2\">$1-$2</a>");
    s = s.replaceAll("`(sec|subsec|subsubsec|hyp|spec|lim|obs|oq|pred|prop|rec|warn|dir|prot|def|req|rem|open|clin|syn|pr):([a-zA-Z0-9_-]+)`", "<a href=\"#$1-$2\">$1-$2</a>");
    s = s.replaceAll("@(sec|subsec|subsubsec|hyp|spec|lim|obs|oq|pred|prop|rec|warn|dir|prot|def|req|rem|open|clin|syn|pr):([a-zA-Z0-9_-]+)", "<a href=\"#$1-$2\">$1-$2</a>");
    s = s.replaceAll("<(sec|subsec|subsubsec|fig|tab|eq|ch|ach|hyp|spec|lim|obs|oq|pred|prop|app|warn|rec|dir|prot|par|def|req|protocol|rem|cont|cf|open):([a-zA-Z0-9_-]+)>", "");
    s = s.replace("|", "\\|");
    s = s.replaceAll("\\s*\\n\\s*", " ");
    return s;
}
