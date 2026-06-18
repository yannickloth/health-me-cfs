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
    src = src.replaceAll("(?m)^#set\\b.*$\\n?", "");
    src = src.replaceAll("(?m)^#show\\b.*$\\n?", "");
    // Strip bare figure path lines (broken includes left from Typst source refactoring)
    src = src.replaceAll("(?m)^[/.]+figures/fig-[^\"]*\\.typ\"?\\s*$\\n?", "");
    // Convert figure includes: #include "../figures/fig-xxx.typ" → ![Figure](figures/fig-xxx.svg)
    src = src.replaceAll("#include\\s+\"([^\"]*)figures/(fig-[^\"]+)\\.typ\"", "![$2](../../figures/$2.svg)");
    // Strip any remaining #include lines (outside figures)
    src = src.replaceAll("(?m)^#include.*$\\n?", "");

    // Typst _italic_ → *italic* (only outside code/math)
    src = src.replaceAll("(?<!`|\"|\\w)_([^_\\s](?:[^_]*[^_\\s])?)_(?!\\w|\"|`)", "*$1*");

    // Citations: @key but NOT internal cross-ref prefixes
    // All cross-ref prefixes → HTML anchor links (website project, not book — native @sec- doesn't resolve cross-file)
    src = src.replaceAll("@(sec|subsec|subsubsec|fig|tab|eq|ch|ach|hyp|spec|lim|obs|oq|pred|prop|app|warn|rec|dir|prot|par|def|req|protocol|rem|cont|cf|open)(:|_|-)([a-zA-Z0-9_-]+)", "[#$1-$3](#$1-$3)");
    // Only convert actual BibTeX citation keys: @AuthorYear(suffix)
    src = src.replaceAll("@([A-Z][A-Za-z]+\\d{4}[a-zA-Z0-9_]*)", "[@$1]");
    src = src.replaceAll("@([a-z]+\\d{4}[a-zA-Z0-9_]*)", "[@$1]");

    // Strip #figure(kind: table, ...) — Typst tables don't convert to Pandoc
    src = src.replaceAll("(?s)#figure\\s*\\(\\s*kind\\s*:\\s*table[^,]*,.*?\\)\\s*\\n", "<!-- TABLE -->\n");
    // Strip #figure(table\n...), #figure(table(...)...) — table as first arg
    src = removeFigureTable(src);
    // Strip #table(...) blocks — use bracket counting like removeFigureTable
    src = removeTableBlocks(src);
    // Strip remaining #figure(...) calls (non-table layout wrappers)
    src = src.replaceAll("#figure\\(", "");
    // Strip #pad(...) layout calls
    src = src.replaceAll("#pad\\([^)]*\\)\\[", "");
    // Strip remaining stray )) from #align(center, ...) calls
    src = src.replaceAll("#align\\(center,\\s*", "");
    src = src.replaceAll("#align\\(\\s*", "");

    // #quote[...] → blockquote (must run BEFORE encloseEnv which strips ] lines)
    src = quoteToBlockquote(src);

    // Bracketed envs: #achievement(title: [...])[...] → simple unstyled block (no fenced divs to avoid OOM)
    // Just extract text between [!...]
    src = encloseEnv(src, "achievement",   "note",   "Achievement");
    src = encloseEnv(src, "speculation",   "note",   "Speculation");
    src = encloseEnv(src, "hypothesis",    "note",   "Hypothesis");
    src = encloseEnv(src, "warning-env",   "caution","Warning");
    src = encloseEnv(src, "limitation",    "warning","Limitation");
    src = encloseEnv(src, "open-question", "note",   "Open Question");
    src = encloseEnv(src, "observation",   "note",   "Observation");
    src = encloseEnv(src, "clinical-finding", "note","Clinical Finding");
    src = encloseEnv(src, "recommendation","note",   "Recommendation");
    src = encloseEnv(src, "proposal",      "note",   "Proposal");
    src = encloseEnv(src, "prediction",    "note",   "Prediction");
    src = encloseEnv(src, "key-point",     "tip",    "Key Point");
    src = encloseEnv(src, "practical-warning", "warning", "Practical Warning");
    src = encloseEnv(src, "protocol",       "note",   "Protocol");

    // #chapter-abstract[...]
    src = src.replaceAll("#chapter-abstract\\[", "::: {.callout-note}\n### Chapter Abstract\n\n");

    // Close standalone ] lines — replace any line that is just ] or ]<label>
    // Preserve labels from ] <label> lines as standalone label lines.
    src = src.replaceAll("(?m)^\\]\\s+(<[a-z][\\w:\\.-]*>)\\s*$", "$1");
    // Remove remaining ] lines entirely to avoid Pandoc OOM.
    src = src.replaceAll("(?m)^\\].*$", "");

    // #sub[X] → ~X~, #super[X] → ^X^
    src = src.replaceAll("#sub\\[(.+?)\\]", "~$1~");
    src = src.replaceAll("#super\\[(.+?)\\]", "^$1^");

    // Italic _text_ → *text* (but not inside math $$...$$)
    // Too complex, skip for now — _ is rare in headings anyway

    // Arrows
    src = src.replace("$arrow.r$", "→");
    src = src.replace("$arrow.l$", "←");

    // Typst definition list: / term: desc → - **term:** desc
    src = src.replaceAll("(?m)^\\s*/\\s+\\*([^*]+)\\*:(.*)$", "- **$1:**$2");

    // Typst literal dollar signs (\$) → placeholder before math processing
    src = src.replace("\\$", "\uFFFD");

    // Typst math → LaTeX/MathJax math translation
    // Standalone math tokens (pre-translateMath, for tokens used outside $...$ blocks)
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
    // Typst math commands — translate within $...$ blocks to avoid prose collisions
    src = translateMath(src);
    // Prevent MathJax misparsing when closing $ is immediately followed by a digit
    src = src.replaceAll("\\$([0-9])", "\\$ $1");

    // Restore literal dollar signs
    src = src.replace("\uFFFD", "$");

    // #align(center, table(...)) → just table
    src = src.replaceAll("#align\\(center,\\s*", "");
    // Remove stray #align leftover closing parens
    // (leave tables as-is — Pandoc won't parse them, but they render as raw HTML)

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
            chapTitle = stripped.substring(2).strip().replaceAll("\\s*<[a-z]+:[^>]+>\\s*$", "");
            // Extract label from heading line if present
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
            secTitle = stripped.substring(3).strip().replaceAll("\\s*<[a-z]+:[^>]+>\\s*$", "");
            // If label was on heading line, extract it as secLabel
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

    // Handle files with no == sections: output single file from preamble + post-chapter lines.
    // Also triggers for include-only aggregator files that have a = heading but no body,
    // or that are pure include aggregators with no content at all.
    if (sections.isEmpty()) {
        var title = !chapTitle.isEmpty() ? chapTitle : "untitled";
        // If chapTitle is empty, try to derive from first === or ==== heading
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
            // Still untitled: derive from input filename
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

        // Preamble goes on first section page
        // Skip preamble when it matches body (solo-section fallback — all content is body)
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

            // Normalize indentation: halve leading spaces to prevent code blocks
            // (Typst uses 4-space or tab indentation; Markdown needs 2-space for nesting)
            if (!stripped.isEmpty()) {
                int leading = raw.length() - stripped.length();
                if (leading > 2) {
                    raw = " ".repeat(leading / 2) + stripped;
                } else if (leading == 0) {
                    raw = stripped;
                }
            }

            // Promote heading levels BEFORE other conversions
            // Match ===, ====, ===== (but not == which are section-level, already ##)
            if (stripped.matches("^={3,}\\s+.+")) {
                int eqCount = 0;
                for (int i = 0; i < stripped.length() && stripped.charAt(i) == '='; i++) eqCount++;
                int level = 1 + eqCount; // === → level 4 (####), ==== → level 5 (#####)
                // Wait — should be: === → ### (3), ==== → #### (4). So: level = eqCount
                level = Math.max(1, eqCount);
                var headingText = stripped.substring(eqCount);
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
                if (nonHeadingAnchors.length() > 0) sb.append(nonHeadingAnchors);
                raw = "#".repeat(level) + headingText + headingAttrs;
                if (pendingLabel != null) {
                    raw = raw + " " + pendingLabel;
                    pendingLabel = null;
                }
            }

            // Convert standalone $...$ display math lines to $$...$$
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

            // Convert bare cross-ref labels to HTML anchor links (website project — no native cross-file resolution)
            raw = raw.replaceAll("(?<!<)\\b(sec|subsec|subsubsec|fig|tab|eq|ch|ach|hyp|spec|lim|obs|oq|pred|prop|app|warn|rec|dir|prot|par|def|req|protocol|rem|cont|cf|open):([a-zA-Z0-9_-]+)([^}\\w-]|$)", "[#$1-$2](#$1-$2)$3");
            raw = raw.replaceAll("(?<!<)\\b(sec|subsec|subsubsec|fig|tab|eq|ch|ach|hyp|spec|lim|obs|oq|pred|prop|app|warn|rec|dir|prot|par|def|req|protocol|rem|cont|cf|open):([a-zA-Z0-9_-]+)$", "[#$1-$2](#$1-$2)");

            // Convert inline labels: <sec:xyz> → {#sec-xyz}
            // Also handle bare labels (after @ stripped): sec:xyz → {#sec-xyz}
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
            // Close trailing > on inline label conversions
            raw = raw.replaceAll("(\\{[#][a-zA-Z][\\w:\\.-]*?)>", "$1}");

            // Close only label-style angle brackets: {...> becomes {...}
            raw = raw.replaceAll("\\{[#a-z][\\w:-]+>", "$0".replace(">", "}")); // doesn't work, doing it differently
            // Actually just fix the pattern: {#sec-xyz> → {#sec-xyz}
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

// Replace #envname(title: [...])[...] → fenced div with proper closing :::
String encloseEnv(String s, String typstName, String quartoKind, String displayName) {
    var p = Pattern.compile("#" + typstName + "\\(title:\\s*\\[(.*?)\\]\\)\\[", Pattern.DOTALL);
    var m = p.matcher(s);
    var sb = new StringBuffer();
    while (m.find()) {
        var title = m.group(1);
        m.appendReplacement(sb, "::: {.callout-" + quartoKind + "}\n### " + displayName + ": " + Matcher.quoteReplacement(title) + "\n\n");
        // Find the matching closing ] and replace with ::: followed by \n
    }
    m.appendTail(sb);
    var out = sb.toString();
    // Replace standalone ] lines with ::: to close the fenced div
    out = out.replaceAll("(?m)^\\]$", ":::");
    // Handle ] <label> pattern — preserve label as standalone line after :::
    out = out.replaceAll("(?m)^\\] (<[a-z][\\w:\\.-]*>)$", ":::\n$1");
    // Remove remaining ] lines — but NOT ])[  which is a title-close + body-open for multi-line titles
    out = out.replaceAll("(?m)^\\](?!\\)\\[).*$", "");
    return out;
}

// Close the [ of a matched env — simplistic but works for non-nested brackets
String replaceClosingBracket(String s, String envName) {
    // Already handled by encloseEnv
    return s;
}

// #quote[...] → blockquote. Handles multi-line quotes.
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
            // Count brackets
            for (int i = 0; i < line.length(); i++) {
                if (line.charAt(i) == '[') quoteDepth++;
                else if (line.charAt(i) == ']') quoteDepth--;
            }
            if (quoteDepth <= 0) {
                inQuote = false;
                // Add the attribution part if any (after the closing ])
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

String esc(String s) { return s.replace("\"", "\\\""); }

// Translate Typst math commands to LaTeX within $...$ and $$...$$ blocks.
// Avoids matching prose words like "subset" or "cal" outside math mode.
String translateMath(String s) {
    var sb = new StringBuilder();
    int i = 0;
    while (i < s.length()) {
        int dollar = s.indexOf('$', i);
        if (dollar < 0) { sb.append(s.substring(i)); break; }
        sb.append(s, i, dollar);
        // Find matching closing $
        int end = s.indexOf('$', dollar + 1);
        if (end < 0) { sb.append(s.substring(dollar)); break; }
        var math = s.substring(dollar + 1, end);
        math = math
            .replace("subset", "\\subset")
            .replace("supset", "\\supset")
            .replace("inter", "\\cap")
            .replace("union", "\\cup")
            .replace("eq.not", "\\neq")
            .replace("gt.eq", "\\geq")
            .replace("lt.eq", "\\leq")
            .replace("nothing", "\\emptyset")
            .replace("arrow.l.r", "\\leftrightarrow")
            .replace("arrow.double.r", "\\Rightarrow")
            .replace("arrow.r", "\\rightarrow")
            .replace("arrow.l", "\\leftarrow")
            .replace("dot.op", "\\cdot")
            .replace("plus.minus", "\\pm")
            .replace("tilde", "\\sim")
            .replace("alpha", "\\alpha")
            .replace("beta", "\\beta")
            .replace("gamma", "\\gamma")
            .replace("delta", "\\delta")
            .replace("epsilon", "\\epsilon")
            .replace("zeta", "\\zeta")
            .replace("eta", "\\eta")
            .replace("theta", "\\theta")
            .replace("kappa", "\\kappa")
            .replace("lambda", "\\lambda")
            .replace("mu", "\\mu")
            .replace("nu", "\\nu")
            .replace("xi", "\\xi")
            .replace("pi", "\\pi")
            .replace("rho", "\\rho")
            .replace("sigma", "\\sigma")
            .replace("tau", "\\tau")
            .replace("phi", "\\phi")
            .replace("chi", "\\chi")
            .replace("omega", "\\omega")
            .replace("cal(", "\\mathcal{")
            .replace("bold(", "\\mathbf{")
            .replaceAll("upright\\(\"([^\"]+)\"\\)", "\\\\text{$1}")
            .replace("#h(1em)", "\\quad")
            .replaceAll("\\bspace\\b\\s*", "");
        sb.append('$').append(math).append('$');
        i = end + 1;
    }
    return sb.toString();
}

// Normalize confusable Unicode characters in titles to ASCII equivalents.
// Preserves semantic intent — en-dash stays as hyphen in source but page content unchanged.
String normalizeUnicode(String s) {
    return s
        .replace('\u2013', '-')  // en dash
        .replace('\u2014', '-')  // em dash → hyphen
        .replace('\u2018', '\'') // left single quote
        .replace('\u2019', '\'') // right single quote
        .replace('\u201c', '"')  // left double quote
        .replace('\u201d', '"'); // right double quote
}

// Remove #figure( table(...), caption: [...], ) blocks.
// Uses simple paren depth counting to handle nested ().
String removeFigureTable(String s) {
    var sb = new StringBuilder();
    int i = 0;
    while (i < s.length()) {
        int pos = s.indexOf("#figure(", i);
        if (pos < 0) { sb.append(s.substring(i)); break; }
        sb.append(s, i, pos);
        // Check if 'table' appears as an argument (possibly after keyword args like placement:)
        int afterParen = pos + 8;
        while (afterParen < s.length() && Character.isWhitespace(s.charAt(afterParen))) afterParen++;
        boolean isTable = s.regionMatches(afterParen, "table", 0, 5)
            && (afterParen + 5 >= s.length() || !Character.isLetterOrDigit(s.charAt(afterParen + 5)));
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
                }
            }
        }
        if (!isTable) {
            sb.append("#figure(");
            i = pos + 8;
            continue;
        }
        // Skip to end of #figure(...) by counting parens
        int depth = 1;
        int j = pos + 8; // start after "#figure(" opening paren
        while (j < s.length() && depth > 0) {
            char c = s.charAt(j);
            if (c == '(') depth++;
            else if (c == ')') depth--;
            j++;
        }
        sb.append("<!-- TABLE -->\n");
        // Consume optional whitespace + <label> after closing ), preserve label
        int labelStart = j;
        while (j < s.length() && s.charAt(j) == ' ') j++;
        if (j < s.length() && s.charAt(j) == '<') {
            int labelEnd = s.indexOf('>', j);
            if (labelEnd >= 0 && labelEnd < s.length()) {
                var tableLabel = s.substring(j, labelEnd + 1);
                sb.append(tableLabel).append('\n');
                j = labelEnd + 1;
            }
        }
        // Consume trailing newline
        if (j < s.length() && s.charAt(j) == '\n') j++;
        i = j;
    }
    return sb.toString();
}

// Remove standalone #table(...) and #table(...)[...] blocks using bracket counting.
String removeTableBlocks(String s) {
    var sb = new StringBuilder();
    int i = 0;
    while (i < s.length()) {
        int pos = s.indexOf("#table(", i);
        if (pos < 0) { sb.append(s.substring(i)); break; }
        sb.append(s, i, pos);
        // Count parens to find end of #table(...)
        int depth = 1;
        int j = pos + 7; // after "#table("
        while (j < s.length() && depth > 0) {
            char c = s.charAt(j);
            if (c == '(') depth++;
            else if (c == ')') depth--;
            j++;
        }
        // After closing ), check for optional [content] block
        while (j < s.length() && s.charAt(j) == ' ') j++;
        if (j < s.length() && s.charAt(j) == '[') {
            int bracketDepth = 1;
            j++;
            while (j < s.length() && bracketDepth > 0) {
                char c = s.charAt(j);
                if (c == '[') bracketDepth++;
                else if (c == ']') bracketDepth--;
                j++;
            }
        }
        sb.append("<!-- TABLE -->\n");
        while (j < s.length() && s.charAt(j) == ' ') j++;
        if (j < s.length() && s.charAt(j) == '\n') j++;
        i = j;
    }
    return sb.toString();
}
