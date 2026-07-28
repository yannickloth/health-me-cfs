// RegexConversion — Typst-to-qmd converter using regex-based translation.
// Refactored from ConvertAndSplit.java: same logic, in-process API, no subprocess overhead.
import static java.nio.file.Files.*;
import java.nio.file.Path;
import static java.nio.file.Paths.*;
import java.io.*;
import java.util.*;
import java.util.regex.*;

final class RegexConversion implements TypstToQmd {

    @Override
    public ConversionResult convert(String src, Path outDir) throws IOException {
        var xref = new ArrayList<String[]>();

        src = convertFindingsGroup(src);

        // --- Step 1: Pre-process ---
        src = src.replaceAll("(?m)^#import.*$\\n?", "");
        src = src.replaceAll("(?m)^//.*$\\n?", "");
        src = src.replaceAll("(?m)^#let\\b.*$\\n?", "");
        src = stripLetBlocks(src);
        src = src.replaceAll("(?m)^#set\\b.*$\\n?", "");
        src = src.replaceAll("(?m)^#show\\b.*$\\n?", "");
        src = stripShowRuleBodies(src);
        src = src.replaceAll("(?m)^[/.]+figures/fig-[^\"]*\\.typ\"?\\s*$\\n?", "");
        src = src.replaceAll("#include\\s+\"([^\"]*)figures/(fig-[^\"]+)\\.typ\"", "![$2](../../figures/$2.svg)");
        src = src.replaceAll("(?m)^#include.*$\\n?", "");

        src = preprocessBlockMath(src);

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

        src = src.replaceAll("(?<!`|\"|\\w)_([^_\\s](?:[^_]*[^_\\s])?)_(?!\\w|\"|`)", "*$1*");
        src = src.replaceAll("(?m)^- \\*([^*]+?):\\*", "- **$1:**");

        for (int iIdx = 0; iIdx < inlineMathPlaceholders.size(); iIdx++) {
            src = src.replace("\u0002INLINEMATH" + iIdx + "\u0003", inlineMathPlaceholders.get(iIdx));
        }
        for (int bIdx = 0; bIdx < blockMathPlaceholders.size(); bIdx++) {
            src = src.replace("BLOCKMATH" + bIdx + "", blockMathPlaceholders.get(bIdx));
        }

        src = src.replaceAll("@(sec|subsec|subsubsec|fig|tab|eq|ch|ach|hyp|spec|lim|obs|oq|pred|prop|app|warn|rec|dir|prot|par|def|req|protocol|rem|cont|cf|open|clin|syn|pr)(:|_|-)([a-zA-Z0-9_-]+)", "@$1-$3");
        src = src.replaceAll("@([A-Z][A-Za-z]+\\d{4}[a-zA-Z0-9_]*)", "[@$1]");
        src = src.replaceAll("@([a-z]+\\d{4}[a-zA-Z0-9_]*)", "[@$1]");

        src = convertRegistryEntries(src);
        src = convertFigureTable(src);
        src = convertTableBlocks(src);
        src = src.replaceAll("(?s)#figure\\s*\\(\\s*kind\\s*:\\s*table[^,]*,.*?\\)\\s*\\n", "<!-- TABLE -->\n");
        src = src.replaceAll("#figure\\(\\[\\],?\\s*kind:\\s*table[^)]*\\)\\s*(<[a-z][\\w:\\.-]*>)?", "");
        src = src.replaceAll("#figure\\(", "");
        src = src.replaceAll("#pad\\([^)]*\\)\\[", "");
        src = src.replaceAll("#align\\(center,\\s*", "");
        src = src.replaceAll("#align\\(\\s*", "");
        src = src.replaceAll("\\)\\[(?=\\n*:::)", "");
        src = src.replaceAll("\\)\\[\\s*$", "");
        src = src.replaceAll("\\bcenter\\)\\s*\\[", "");

        src = src.replaceAll("#strong\\[([^\\]]+?)\\]", "**$1**");
        src = src.replaceAll("#emph\\[([^\\]]+?)\\]", "*$1*");
        src = src.replaceAll("#smallcaps\\[([^\\]]+?)\\]", "$1");
        src = src.replaceAll("#text\\(weight:\\s*\"bold\"\\)\\[([^\\]]+?)\\]", "**$1**");
        src = src.replaceAll("#text\\(style:\\s*\"italic\"\\)\\[([^\\]]+?)\\]", "*$1*");
        src = src.replaceAll("#text\\(style:\\s*\"italic\",\\s*weight:\\s*\"bold\"\\)\\[([^\\]]+?)\\]", "***$1***");
        src = src.replaceAll("#text\\(weight:\\s*\"bold\",\\s*style:\\s*\"italic\"\\)\\[([^\\]]+?)\\]", "***$1***");
        src = src.replaceAll("#text\\([^)]*\\)\\[([^\\]]+?)\\]", "$1");

        src = src.replaceAll("#link\\(\"([^\"]+)\"\\)\\[([^\\]]+?)\\]", "[$2]($1)");
        src = src.replaceAll("#link\\(\"([^\"]+)\"\\)", "<$1>");
        src = src.replaceAll("#link\\(<([^>]+)>\\)\\[([^\\]]+?)\\]", "[$2](#$1)");
        src = src.replaceAll("#link\\(([^,]+),\\s*([^)]+)\\)", "[$2]($1)");
        src = src.replaceAll("#doc-date\\.display\\(\"[^\"]+\"\\)", "");
        src = src.replaceAll("#doc-date\\.year\\(\\)", "");
        src = src.replaceAll("#str\\([^)]+\\)", "");

        src = convertFootnotes(src);
        src = src.replaceAll("#line\\([^)]*\\)", "\n---\n");
        src = src.replaceAll("#h\\([^)]*\\)", " ");
        src = src.replaceAll("#v\\([^)]*\\)", "\n");
        src = convertSymTokens(src);
        src = src.replaceAll("#block\\([^)]*\\)\\[", "");
        src = src.replaceAll("#block\\[", "");
        src = src.replaceAll("(?m)^\\[style=nextline\\]\\s*$\\n?", "");
        src = quoteToBlockquote(src);

        src = encloseFhypothesis(src);

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

        src = encloseNoTitle(src, "proof", "note", "Proof");
        src = encloseNoTitle(src, "proposal", "note", "Proposal");
        src = encloseNoTitle(src, "open-question", "note", "Open Question");
        src = encloseNoTitle(src, "limitation", "warning", "Limitation");
        src = encloseNoTitle(src, "practical-warning", "warning", "Practical Warning");
        src = encloseNoTitle(src, "recommendation", "tip", "Recommendation");
        src = encloseNoTitle(src, "observation", "note", "Observation");
        src = encloseNoTitle(src, "synthesis", "tip", "Synthesis");
        src = encloseNoTitle(src, "speculation", "caution", "Speculation");
        src = encloseNoTitle(src, "hypothesis", "important", "Hypothesis");
        src = encloseNoTitle(src, "clinical-finding", "note", "Clinical Finding");
        src = encloseNoTitle(src, "prediction", "note", "Prediction");
        src = encloseNoTitle(src, "model-insight", "note", "Model Insight");
        src = encloseNoTitle(src, "definition", "note", "Definition");
        src = encloseNoTitle(src, "direction", "note", "Research Direction");
        src = encloseNoTitle(src, "requirement", "important", "Requirement");
        src = encloseNoTitle(src, "protocol", "note", "Protocol");
        src = encloseNoTitle(src, "warning-env", "caution", "Warning");
        src = encloseNoTitle(src, "achievement", "tip", "Achievement");
        src = encloseNoTitle(src, "key-point", "tip", "Key Point");
        src = src.replaceAll("#chapter-abstract\\[", "\n\n::: {.callout-note}\n### Chapter Abstract\n\n");
        src = src.replaceAll("(?m)^\\]\\s+(<[a-z][\\w:\\.-]*>)\\s*$", "$1");
        src = src.replaceAll("(?m)^\\].*$", "");
        src = src.replaceAll("(?m)^\\[(=|/|-)[^]]*\\],.*$", "");
        src = src.replaceAll("#sub\\[(.+?)\\]", "~$1~");
        src = src.replaceAll("#super\\[(.+?)\\]", "^$1^");

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

        src = src.replaceAll("(?m)^\\s*/\\s+\\*([^*]+)\\*:(.*)$", "- **$1:**$2");
        src = src.replaceAll("\n(?!\n)([^- \n][^\n]*)\n(- \\*\\*)", "\n$1\n\n$2");

        src = src.replace("\\$", "\uFFFD");

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

        src = src.replace("\uFFFD", "$");
        src = src.replaceAll("#align\\(center,\\s*", "");

        // --- Step 2: Parse headings and split ---
        var lines = src.split("\n");
        record Section(String title, String label, List<String> body) {}
        var sections = new ArrayList<Section>();
        List<String> preamble = new ArrayList<>();
        List<String> current = new ArrayList<>();
        String secTitle = null;
        String secLabel = "";
        String chapTitle = "";
        String chapLabel = "";
        List<String> preambleLabels = new ArrayList<>();
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
                if (stripped.matches("^<[a-z]+:[^>]+>$") && !stripped.matches("^<(sec|subsec|subsubsec):[^>]+>$"))
                    preambleLabels.add(stripped);
                else
                    preamble.add(line);
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
            var allLines = new ArrayList<String>();
            allLines.addAll(preamble);
            if (!current.isEmpty()) allLines.addAll(current);
            sections.add(new Section(title, chapLabel, allLines));
        }

        // --- Step 3: Generate .qmd files ---
        int secNum = 1;
        for (var sec : sections) {
            var slugTitle = secNum == 1 && !chapTitle.isEmpty() ? chapTitle : normalizeUnicode(sec.title());
            var slug = slugTitle.toLowerCase().replaceAll("[^a-z0-9']+", "-").replaceAll("^-|-$", "").replace("'", "");
            var fname = "%02d-%s.qmd".formatted(secNum, slug);
            var path = outDir.resolve(fname);

            var sb = new StringBuilder();
            sb.append("---\n");
            sb.append("title: \"").append(esc(slugTitle)).append("\"\n");
            sb.append("---\n\n");

            if (secNum == 1 && !preamble.isEmpty() && sections.size() > 1) {
                for (var p : preamble) sb.append(p).append('\n');
                sb.append('\n');
            }

            var headingLabels = new ArrayList<String>();
            var spanAnchors = new ArrayList<String>();
            for (var rawLabel : new String[]{ sec.label(), (secNum == 1 ? chapLabel : "") }) {
                if (rawLabel == null || rawLabel.isEmpty()) continue;
                boolean isChapLabel = rawLabel.equals(chapLabel);
                var linkText = (isChapLabel && !chapTitle.isEmpty()) ? chapTitle : slugTitle;
                var converted = rawLabel
                    .replaceFirst("^<", "")
                    .replaceFirst(">$", "")
                    .replaceFirst(":", "-");
                if (rawLabel.matches("^<(sec|subsec|subsubsec):[^>]+>$")) {
                    headingLabels.add(converted);
                    xref.add(new String[]{ converted, path.toAbsolutePath().toString(), linkText });
                } else {
                    spanAnchors.add("<span id=\"" + converted + "\"></span>");
                    xref.add(new String[]{ converted, path.toAbsolutePath().toString(), linkText });
                }
            }
            for (var rawLabel : preambleLabels) {
                var converted = rawLabel
                    .replaceFirst("^<", "")
                    .replaceFirst(">$", "")
                    .replaceFirst(":", "-");
                spanAnchors.add("<span id=\"" + converted + "\"></span>");
                var linkText = (rawLabel.startsWith("<ch:") && !chapTitle.isEmpty()) ? chapTitle : slugTitle;
                xref.add(new String[]{ converted, path.toAbsolutePath().toString(), linkText });
            }
            for (var l : headingLabels) spanAnchors.add("<span id=\"" + l + "\"></span>");
            for (var a : spanAnchors) sb.append(a).append('\n');
            sb.append('\n');

            String pendingLabel = null;
            String lastCalloutTitle = slugTitle;
            boolean prevOpenedCallout = false;
            boolean prevLineWasDashItem = false;

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

                var calloutTitleMatch = Pattern.compile("^#{3,6}\\s+(.+)$").matcher(stripped);
                if (prevOpenedCallout && calloutTitleMatch.matches()) {
                    var ct = calloutTitleMatch.group(1).strip();
                    int colon = ct.indexOf(": ");
                    if (colon >= 0) ct = ct.substring(colon + 2).strip();
                    if (!ct.isEmpty()) lastCalloutTitle = ct;
                }
                prevOpenedCallout = stripped.startsWith("::: {");

                if (stripped.matches("^={3,}\\s+.+")) {
                    int eqCount = 0;
                    for (int iq = 0; iq < stripped.length() && stripped.charAt(iq) == '='; iq++) eqCount++;
                    int level = Math.max(2, eqCount - 1);
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
                    var headingTextClean = headingText.strip();
                    lastCalloutTitle = headingTextClean;
                    var haMatcher = Pattern.compile("\\{#([^}]+)\\}").matcher(headingAttrs.toString());
                    while (haMatcher.find()) {
                        xref.add(new String[]{ haMatcher.group(1), path.toAbsolutePath().toString(), headingTextClean });
                    }
                    var nhaMatcher = Pattern.compile("id=\"([^\"]+)\"").matcher(nonHeadingAnchors.toString());
                    while (nhaMatcher.find()) {
                        xref.add(new String[]{ nhaMatcher.group(1), path.toAbsolutePath().toString(), headingTextClean });
                    }
                    var htc = headingText.stripLeading();
                    if (htc.startsWith("✓ ")) {
                        headingText = " <span class=\"response-mark positive\" aria-hidden=\"true\">✓</span>" + htc.substring(1);
                    } else if (htc.startsWith("✗ ")) {
                        headingText = " <span class=\"response-mark negative\" aria-hidden=\"true\">✗</span>" + htc.substring(1);
                    }
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
                        var hid = label.replaceFirst("^\\{#", "").replaceFirst("\\}$", "");
                        xref.add(new String[]{ hid, path.toAbsolutePath().toString(), lastCalloutTitle });
                    } else {
                        var anchorId = label.replaceFirst("^\\{#", "").replaceFirst("\\}$", "");
                        sb.append("<span id=\"").append(anchorId).append("\"></span>\n");
                        xref.add(new String[]{ anchorId, path.toAbsolutePath().toString(), lastCalloutTitle });
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
                        xref.add(new String[]{ anchorId, path.toAbsolutePath().toString(), lastCalloutTitle });
                        pendingLabel = null;
                    }
                }

                raw = raw.replaceAll("(?<!<)\\b(sec|subsec|subsubsec|fig|tab|eq|ch|ach|hyp|spec|lim|obs|oq|pred|prop|app|warn|rec|dir|prot|par|def|req|protocol|rem|cont|cf|open):([a-zA-Z0-9_-]+)([^}\\w-]|$)", "@$1-$2$3");
                raw = raw.replaceAll("(?<!<)\\b(sec|subsec|subsubsec|fig|tab|eq|ch|ach|hyp|spec|lim|obs|oq|pred|prop|app|warn|rec|dir|prot|par|def|req|protocol|rem|cont|cf|open):([a-zA-Z0-9_-]+)$", "@$1-$2");

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

                boolean isDashItem = stripped.startsWith("- ");
                if (isDashItem && !prevLineWasDashItem) sb.append('\n');
                if (!stripped.isEmpty()) prevLineWasDashItem = isDashItem;

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

            var known = new HashSet<String>();
            for (var e : xref) known.add(e[0]);
            var anchorScan = Pattern.compile("\\{#([A-Za-z][\\w:-]*)\\}|id=\"([A-Za-z][\\w:-]*)\"").matcher(output);
            while (anchorScan.find()) {
                var aid = anchorScan.group(1) != null ? anchorScan.group(1) : anchorScan.group(2);
                if (known.add(aid)) {
                    xref.add(new String[]{ aid, path.toAbsolutePath().toString(), "" });
                }
            }

            writeString(path, output);
            secNum++;
        }

        return new ConversionResult(xref, secNum - 1);
    }

    // ---- All helper methods from ConvertAndSplit.java, verbatim ----

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

    String convertSymTokens(String s) {
        return s
            .replace("#sym.plus.minus", "±")
            .replace("#sym.arrow.r", "→")
            .replace("#sym.arrow.l", "←")
            .replace("#sym.arrow.t", "↑")
            .replace("#sym.arrow.b", "↓")
            .replace("#sym.arrow.r.double", "⇒")
            .replace("#sym.arrow.double.r", "⇒")
            .replace("#sym.arrow.double.l", "⇐")
            .replace("#sym.arrow.l.r", "↔")
            .replace("#sym.beta", "β")
            .replace("#sym.alpha", "α")
            .replace("#sym.gamma", "γ")
            .replace("#sym.delta", "δ")
            .replace("#sym.mu", "μ")
            .replace("#sym.lt.eq", "≤")
            .replace("#sym.gt.eq", "≥")
            .replace("#sym.approx", "≈")
            .replace("#sym.lt", "<")
            .replace("#sym.gt", ">")
            .replace("#sym.times", "×")
            .replace("#sym.percent", "%")
            .replace("#sym.xmark", "✗")
            .replace("#sym.checkmark", "✓")
            .replace("#sym.bullet", "•")
            .replace("#sym.arrow", "→")
            .replace("#sym.gt.double", "»")
            .replace("#sym.lt.double", "«")
            .replace("#sym.gt.eq", "≥")
            .replace("#sym.dot.op", "·")
            .replace("#sym.times.op", "×")
            .replace("#sym.eq.not", "≠")
            .replace("#sym.nothing", "∅")
            .replace("#sym.infinity", "∞");
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

    String preprocessBlockMath(String src) {
        var lines = src.split("\n", -1);
        var out = new StringBuilder();
        int i = 0;
        while (i < lines.length) {
            var line = lines[i];
            var stripped = line.strip();
            if (stripped.equals("$")) {
                var contentLines = new ArrayList<String>();
                String labelSuffix = "";
                i++;
                boolean closed = false;
                while (i < lines.length) {
                    var cl = lines[i];
                    var cls = cl.strip();
                    if (cls.equals("$") || cls.matches("^\\$\\s*<[^>]+>\\s*$")) {
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
                    out.append("$\n");
                    for (var cl : contentLines) out.append(cl).append('\n');
                } else {
                    var mathContent = String.join("\n", contentLines);
                    var translated = translateTypstMathContent(mathContent);
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
        var result = out.toString();
        if (!src.endsWith("\n") && result.endsWith("\n")) {
            result = result.substring(0, result.length() - 1);
        }
        return result;
    }

    String translateTypstMathContent(String math) {
        math = math.replaceAll("upright\\(\"([^\"]+)\"\\)", "\\\\text{$1}");
        math = math.replaceAll("upright\\(([A-Za-z][A-Za-z0-9_-]*)\\)", "\\\\text{$1}");
        math = math.replaceAll("(?<!\\\\text\\{[^}]*)\"([^\"]+)\"", "\\\\text{$1}");
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
        math = math.replaceAll("(\\\\(?:sim|approx|cdot|times|pm|leq|geq|neq))\\.op\\b", "$1");
        math = math.replaceAll("\\.op\\b", "");
        math = math.replaceAll("(?<![a-zA-Z\\\\])bullet(?![a-zA-Z])", "\\\\bullet");
        math = math.replaceAll("(?<![a-zA-Z\\\\])ast(?![a-zA-Z])",    "\\\\ast");
        math = math.replaceAll("(?<![a-zA-Z\\\\])prop(?![a-zA-Z])",   "\\\\propto");
        math = math.replaceAll("(?<![a-zA-Z\\\\])equiv(?![a-zA-Z])",  "\\\\equiv");
        math = math.replaceAll("(?<![a-zA-Z\\\\])cong(?![a-zA-Z])",   "\\\\cong");
        math = math.replaceAll("(?<![a-zA-Z\\\\])prec(?![a-zA-Z])",   "\\\\prec");
        math = math.replaceAll("(?<![a-zA-Z\\\\])succ(?![a-zA-Z])",   "\\\\succ");
        math = math.replaceAll("(?<![a-zA-Z\\\\])in(?![a-zA-Z])", "\\\\in");
        math = math.replaceAll("(?<![a-zA-Z\\\\])not(?![a-zA-Z])", "\\\\neg");
        math = math.replaceAll("(?<![a-zA-Z\\\\])and(?![a-zA-Z])", "\\\\wedge");
        math = math.replaceAll("(?<![a-zA-Z\\\\])or(?![a-zA-Z])", "\\\\vee");
        math = math.replaceAll("(?<![a-zA-Z\\\\])sim(?![a-zA-Z])", "\\\\sim");
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
        math = math.replace("phi.alt", "\\varphi");
        math = math.replace("psi.alt", "\\psi");
        math = math.replace("epsilon.alt", "\\varepsilon");
        math = math.replace("theta.alt", "\\vartheta");
        math = replaceGreekLetters(math);
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
        math = math.replace("subset", "\\subset");
        math = math.replace("supset", "\\supset");
        math = math.replaceAll("(?<![a-zA-Z\\\\])inter(?![a-zA-Z])", "\\\\cap");
        math = math.replaceAll("(?<![a-zA-Z\\\\])union(?![a-zA-Z])", "\\\\cup");
        math = math.replace("times", "\\times");
        math = convertParenGroupsToLatex(math);
        math = convertFracCalls(math);
        math = math.replaceAll("(?<![a-zA-Z\\\\])sum(?![a-zA-Z])",      "\\\\sum");
        math = math.replaceAll("(?<![a-zA-Z\\\\])prod(?![a-zA-Z])",     "\\\\prod");
        math = math.replaceAll("(?<![a-zA-Z\\\\])lim(?![a-zA-Z])",      "\\\\lim");
        math = math.replaceAll("(?<![a-zA-Z\\\\])integral(?![a-zA-Z])", "\\\\int");
        math = math.replaceAll("(?<![a-zA-Z\\\\])int(?![a-zA-Z])",      "\\\\int");
        math = math.replaceAll("(?<![a-zA-Z\\\\])quad(?![a-zA-Z])", "\\\\quad ");
        math = math.replaceAll("(?<!\\\\)\\\\(?!\\\\|[a-zA-Z{])", "\\\\\\\\");
        math = math.replaceAll("\\bspace\\b\\s*", "");
        math = fixUnderscoresInText(math);
        math = math.replaceAll("\\\\text\\{\\^\\{([^}]+)\\}([^}]*)\\}", "{}^{$1}\\\\text{$2}");
        math = math.replaceAll("\\\\text\\{\\^([A-Za-z0-9]+)([^}]*)\\}", "{}^{$1}\\\\text{$2}");
        return math;
    }

    String replaceFunctionWrapper(String math, String funcName, String prefix) {
        return replaceFunctionWrapper(math, funcName, prefix + "{", "}");
    }

    String replaceFunctionWrapper(String math, String funcName, String open, String close) {
        var sb = new StringBuilder();
        int i = 0;
        var pattern = "(?<![a-zA-Z\\\\])" + Pattern.quote(funcName) + "\\(";
        var pat = Pattern.compile(pattern);
        var m = pat.matcher(math);
        int last = 0;
        while (m.find()) {
            sb.append(math, last, m.start());
            int start = m.end();
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

    String convertParenGroupsToLatex(String math) {
        String prev;
        int maxIter = 20;
        do {
            prev = math;
            math = math.replaceAll("_\\(([^()]*)\\)", "_{$1}");
            math = math.replaceAll("\\^\\(([^()]*)\\)", "^{$1}");
            maxIter--;
        } while (!math.equals(prev) && maxIter > 0);
        return math;
    }

    String convertFracCalls(String math) {
        int maxIter = 20;
        while (math.contains("frac(") && maxIter-- > 0) {
            var sb = new StringBuilder();
            int i = 0;
            boolean found = false;
            while (i < math.length()) {
                int pos = math.indexOf("frac(", i);
                if (pos < 0) { sb.append(math.substring(i)); break; }
                if (pos > 0 && math.charAt(pos - 1) == '\\') {
                    sb.append(math, i, pos + 5);
                    i = pos + 5;
                    continue;
                }
                sb.append(math, i, pos);
                int argStart = pos + 5;
                int depth = 1;
                int braceDepth = 0;
                int j = argStart;
                int commaPos = -1;
                while (j < math.length() && depth > 0) {
                    char c = math.charAt(j);
                    if (c == '"') {
                        j++;
                        while (j < math.length() && math.charAt(j) != '"') j++;
                    } else if (c == '{') braceDepth++;
                    else if (c == '}') { if (braceDepth > 0) braceDepth--; }
                    else if (c == '(') depth++;
                    else if (c == ')') depth--;
                    else if (c == ',' && depth == 1 && braceDepth == 0 && commaPos < 0) commaPos = j;
                    j++;
                }
                int closePos = j - 1;
                if (commaPos < 0 || commaPos >= closePos) {
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
            int lineEnd = s.indexOf('\n', dollar);
            int end = s.indexOf('$', dollar + 1);
            if (end < 0 || (lineEnd >= 0 && end > lineEnd)) {
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

    String convertRegistryEntries(String s) {
        var sb = new StringBuilder();
        int i = 0;
        while (i < s.length()) {
            int pos = s.indexOf("#registry-entry(", i);
            if (pos < 0) { sb.append(s.substring(i)); break; }
            sb.append(s, i, pos);
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
            var out = new StringBuilder();
            String certStr = certainty.equals("---") ? "\u2014" : "p=" + certainty;
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

    Map<String, String> extractRegistryArgs(String body) {
        var result = new LinkedHashMap<String, String>();
        int i = 0;
        boolean firstArg = true;
        while (i < body.length()) {
            while (i < body.length() && Character.isWhitespace(body.charAt(i))) i++;
            if (i >= body.length()) break;
            if (i + 1 < body.length() && body.charAt(i) == '/' && body.charAt(i+1) == '/') {
                while (i < body.length() && body.charAt(i) != '\n') i++;
                continue;
            }
            var namedPat = java.util.regex.Pattern.compile("^([a-z][a-z0-9-]*)\\s*:");
            var m = namedPat.matcher(body.substring(i));
            if (m.find()) {
                String key = m.group(1);
                i += m.end();
                while (i < body.length() && body.charAt(i) == ' ') i++;
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
                            int v2 = next + 5;
                            while (v2 < searchEnd && s.charAt(v2) == ' ') v2++;
                            if (s.regionMatches(v2, "table", 0, 5)
                                && (v2 + 5 >= s.length() || !Character.isLetterOrDigit(s.charAt(v2 + 5)))) {
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
            String caption = extractBracketArg(figureContent, "caption:");
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
        for (int c2 = 0; c2 < numCols; c2++) sb.append("---|");
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
                for (int c2 = 1; c2 < colspan; c2++) cells.add("");
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
        var lines = content.split("\n");
        for (var line : lines) {
            var trimmed = line.strip();
            if (trimmed.isEmpty()) continue;
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

    String stripLetBlocks(String src) {
        var sb = new StringBuilder();
        var lines = src.split("\n", -1);
        int i = 0;
        while (i < lines.length) {
            var line = lines[i];
            if (line.stripLeading().startsWith("#let") && line.contains("{")) {
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
        if (sb.length() > 0 && sb.charAt(sb.length() - 1) == '\n'
                && (src.isEmpty() || src.charAt(src.length() - 1) != '\n')) {
            sb.deleteCharAt(sb.length() - 1);
        }
        return sb.toString();
    }

    String stripShowRuleBodies(String src) {
        var sb = new StringBuilder();
        int i = 0;
        while (i < src.length()) {
            int pos = src.indexOf("#show", i);
            if (pos < 0) { sb.append(src.substring(i)); break; }
            int lineEnd = src.indexOf('\n', pos);
            int arrowPos = src.indexOf("=>", pos);
            if (arrowPos < 0 || (lineEnd >= 0 && arrowPos > lineEnd)) {
                sb.append(src, i, lineEnd + 1);
                i = lineEnd + 1;
                continue;
            }
            sb.append(src, i, pos);
            int afterArrow = arrowPos + 2;
            while (afterArrow < src.length() && Character.isWhitespace(src.charAt(afterArrow))) afterArrow++;
            int bodyEnd;
            if (afterArrow < src.length() && src.charAt(afterArrow) == '{') {
                int depth = 1;
                bodyEnd = afterArrow + 1;
                while (bodyEnd < src.length() && depth > 0) {
                    char c = src.charAt(bodyEnd);
                    if (c == '{') depth++;
                    else if (c == '}') depth--;
                    bodyEnd++;
                }
            } else {
                bodyEnd = src.indexOf('\n', afterArrow);
                if (bodyEnd < 0) bodyEnd = src.length();
            }
            if (bodyEnd < src.length() && src.charAt(bodyEnd) == '\n') bodyEnd++;
            i = bodyEnd;
        }
        return sb.toString();
    }

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

    String fixUnderscoresInText(String math) {
        var sb = new StringBuilder();
        int i = 0;
        while (i < math.length()) {
            int pos = math.indexOf("\\text{", i);
            if (pos < 0) { sb.append(math.substring(i)); break; }
            sb.append(math, i, pos);
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
        s = translateMath(s);
        s = s.replaceAll("[a-z][a-z0-9]*:@(sec|subsec|subsubsec|hyp|spec|lim|obs|oq|pred|prop|rec|warn|dir|prot|def|req|rem|open|clin|syn|pr)(?::)([a-zA-Z0-9_-]+)", "<a href=\"#$1-$2\">$1-$2</a>");
        s = s.replaceAll("`(sec|subsec|subsubsec|hyp|spec|lim|obs|oq|pred|prop|rec|warn|dir|prot|def|req|rem|open|clin|syn|pr):([a-zA-Z0-9_-]+)`", "<a href=\"#$1-$2\">$1-$2</a>");
        s = s.replaceAll("@(sec|subsec|subsubsec|hyp|spec|lim|obs|oq|pred|prop|rec|warn|dir|prot|def|req|rem|open|clin|syn|pr):([a-zA-Z0-9_-]+)", "<a href=\"#$1-$2\">$1-$2</a>");
        s = s.replaceAll("<(sec|subsec|subsubsec|fig|tab|eq|ch|ach|hyp|spec|lim|obs|oq|pred|prop|app|warn|rec|dir|prot|par|def|req|protocol|rem|cont|cf|open):([a-zA-Z0-9_-]+)>", "");
        s = s.replace("|", "\\|");
        s = s.replaceAll("\\s*\\n\\s*", " ");
        return s;
    }

    String convertFindingsGroup(String s) {
        var out = new StringBuilder();
        int i = 0;
        while (i < s.length()) {
            int pos = s.indexOf("#finding(", i);
            if (pos < 0) { out.append(s.substring(i)); break; }
            out.append(s, i, pos);
            int parenDepth = 1;
            int j = pos + 9;
            while (j < s.length() && parenDepth > 0) {
                var c = s.charAt(j);
                if (c == '(') parenDepth++;
                else if (c == ')') parenDepth--;
                j++;
            }
            var rawCall = s.substring(pos, j);
            out.append(convertFinding(rawCall));
            i = j;
        }
        return out.toString();
    }

    static final Pattern FINDING_HEAD = Pattern.compile("#finding\\(\\s*claim:\\s*\\[");

    String convertFinding(String rawCall) {
        var hm = FINDING_HEAD.matcher(rawCall);
        if (!hm.find()) return rawCall;
        var fields = new LinkedHashMap<String, String>();
        var currentField = "claim";
        var depth = 1;
        int fieldStart = hm.end();
        for (int j = fieldStart; j < rawCall.length() && depth > 0; j++) {
            var c = rawCall.charAt(j);
            if (c == '[') depth++;
            else if (c == ']') depth--;
            if (depth == 0) {
                fields.put(currentField, processFindingValue(rawCall.substring(fieldStart, j)));
                j++;
                while (j < rawCall.length() && (rawCall.charAt(j) == ',' || Character.isWhitespace(rawCall.charAt(j)))) j++;
                if (j < rawCall.length()) {
                    var tail = rawCall.substring(j);
                    var fMatcher = Pattern.compile("^([a-z]+)\\s*:\\s*\\[").matcher(tail);
                    if (fMatcher.find()) {
                        currentField = fMatcher.group(1);
                        fieldStart = j + fMatcher.end();
                        depth = 1;
                        j = fieldStart - 1;
                    }
                }
            }
        }
        var claim = fields.getOrDefault("claim", "");
        var explanation = fields.getOrDefault("explanation", "");
        var certainty = fields.getOrDefault("certainty", "");
        var dntu = fields.getOrDefault("dntu", "");
        var action = fields.getOrDefault("action", "");
        var level = fields.getOrDefault("level", "");
        var html = new StringBuilder();
        html.append("<div class=\"env-finding\">\n");
        html.append("<h5 class=\"env-finding-heading\">Finding — ").append(claim).append("</h5>\n");
        html.append("<div class=\"env-finding-body\">\n");
        if (!explanation.isEmpty()) {
            html.append("  <div class=\"env-finding-explanation\">").append(explanation).append("</div>\n");
        }
        html.append("  <dl class=\"env-finding-fields\">\n");
        html.append("    <dt>Certainty</dt><dd>").append(certainty).append("</dd>\n");
        if (!dntu.isEmpty()) html.append("    <dt>Does NOT tell us</dt><dd>").append(dntu).append("</dd>\n");
        if (!action.isEmpty()) html.append("    <dt>Action</dt><dd>").append(action).append("</dd>\n");
        html.append("    <dt>Level of action</dt><dd>").append(level).append("</dd>\n");
        html.append("  </dl>\n</div>\n</div>");
        return html.toString();
    }

    String processFindingValue(String raw) {
        var s = raw;
        s = s.replaceAll("#strong\\[([^\\]]+)\\]", "**$1**");
        s = s.replaceAll("#link\\(\"([^\"]+)\"\\)\\[([^\\]]+)\\]", "[$2]($1)");
        return s;
    }
}
