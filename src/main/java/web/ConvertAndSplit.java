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
    // Strip bare figure path lines (broken includes left from Typst source refactoring)
    src = src.replaceAll("(?m)^[/.]+figures/fig-[^\"]*\\.typ\"?\\s*$\\n?", "");
    // Convert figure includes: #include "../figures/fig-xxx.typ" → ![Figure](figures/fig-xxx.svg)
    src = src.replaceAll("#include\\s+\"([^\"]*)figures/(fig-[^\"]+)\\.typ\"", "![$2](figures/$2.svg)");
    // Strip any remaining #include lines (outside figures)
    src = src.replaceAll("(?m)^#include.*$\\n?", "");

    // Typst _italic_ → *italic* (only outside code/math)
    src = src.replaceAll("(?<!`|\"|\\w)_([^_\\s](?:[^_]*[^_\\s])?)_(?!\\w|\"|`)", "*$1*");

    // Citations: @key but NOT internal cross-ref prefixes
    // Cross-references with @: convert to Quarto crossref syntax @sec-xyz
    src = src.replaceAll("@(ch|sec|subsec|fig|tab|eq|ach|hyp|spec|lim|obs|oq|pred|prop|app)(:|_)([a-zA-Z0-9_-]+)", "@$1-$3");
    // Only convert actual BibTeX citation keys: @AuthorYear(suffix)
    src = src.replaceAll("@([A-Z][A-Za-z]+\\d{4}[a-zA-Z0-9]*)", "[@$1]");
    src = src.replaceAll("@([a-z]+\\d{4}[a-zA-Z0-9]*)", "[@$1]");

    // Strip #figure(kind: table, ...) — Typst tables don't convert to Pandoc
    src = src.replaceAll("(?s)#figure\\s*\\(\\s*kind\\s*:\\s*table[^,]*,.*?\\)\\s*\\n", "<!-- TABLE -->\n");
    // Strip #figure(table\n...), #figure(table(...)...) — table as first arg
    src = removeFigureTable(src);
    // Strip #table(...) blocks — same issue
    src = src.replaceAll("(?s)#table\\(.*?\\)\\s*\\n", "<!-- TABLE -->\n");
    // Strip remaining stray )) from #align(center, ...) calls
    src = src.replaceAll("#align\\(center,\\s*", "");
    src = src.replaceAll("#align\\(\\s*", "");

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

    // #chapter-abstract[...]
    src = src.replaceAll("#chapter-abstract\\[", "::: {.callout-note}\n### Chapter Abstract\n\n");
    // Close standalone ] lines — replace any line that is just ] or ]<label>
    // But only do this for genuine env closings, not stray brackets.
    // Stray ] lines inside table/figure blocks cause fenced div errors.
    // Remove all remaining ] lines entirely to avoid Pandoc OOM.
    src = src.replaceAll("(?m)^\\].*$", "");

    // #quote[...] → blockquote
    src = quoteToBlockquote(src);

    // #sub[X] → ~X~, #super[X] → ^X^
    src = src.replaceAll("#sub\\[(.+?)\\]", "~$1~");
    src = src.replaceAll("#super\\[(.+?)\\]", "^$1^");

    // Italic _text_ → *text* (but not inside math $$...$$)
    // Too complex, skip for now — _ is rare in headings anyway

    // Arrows
    src = src.replace("$arrow.r$", "→");
    src = src.replace("$arrow.l$", "←");

    // Typst math → LaTeX/MathJax math translation
    src = src.replaceAll("upright\\(\"([^\"]+)\"\\)", "\\text{$1}");  // upright("X") → \text{X}
    src = src.replaceAll("dot\\.op\\s+", "\\cdot ");                    // dot.op → \cdot
    src = src.replaceAll("space\\s+", "");                              // space → (discard)

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
            if (!stripped.isEmpty() && !stripped.startsWith("<ch:")) preamble.add(line);
        } else {
            if (stripped.startsWith("<sec:") && secLabel.isEmpty()) {
                secLabel = stripped;
                continue; // don't keep label in body — it goes in the YAML-block section heading
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
        var slug = sec.title().toLowerCase().replaceAll("[^a-z0-9']+", "-").replaceAll("^-|-$", "").replace("'", "");
        var fname = "%02d-%s.qmd".formatted(secNum, slug);
        var path = get(outDir, fname);

        var sb = new StringBuilder();
        sb.append("---\n");
        sb.append("title: \"").append(esc(sec.title())).append("\"\n");
        sb.append("---\n\n");

        // Preamble goes on first section page
        // Skip preamble when it matches body (solo-section fallback — all content is body)
        if (secNum == 1 && !preamble.isEmpty() && sections.size() > 1) {
            for (var p : preamble) sb.append(p).append('\n');
            sb.append('\n');
        }

        var headingLine = "## " + sec.title();
        var labels = new ArrayList<String>();
        if (!sec.label().isEmpty()) {
            labels.add(sec.label()
                .replaceFirst("^<", "{#")
                .replaceFirst(">$", "}")
                .replaceFirst(":", "-"));
        }
        // On first section page, also attach chapter label so cross-refs resolve
        if (secNum == 1 && !chapLabel.isEmpty()) {
            labels.add(chapLabel
                .replaceFirst("^<", "{#")
                .replaceFirst(">$", "}")
                .replaceFirst(":", "-"));
        }
        for (var l : labels) headingLine += " " + l;
        sb.append(headingLine).append("\n\n");

        for (var line : sec.body) {
            var raw = line;
            var stripped = raw.strip();

            // Normalize indentation: 4+ spaces → 2 spaces (prevents code blocks)
            if (!stripped.isEmpty() && raw.length() - stripped.length() >= 4) {
                raw = "  " + stripped;
            }

            // Promote heading levels BEFORE other conversions
            // Match ===, ====, ===== (but not == which are section-level, already ##)
            if (stripped.matches("^={3,}\\s+.+")) {
                int eqCount = 0;
                for (int i = 0; i < stripped.length() && stripped.charAt(i) == '='; i++) eqCount++;
                int level = 1 + eqCount; // === → level 4 (####), ==== → level 5 (#####)
                // Wait — should be: === → ### (3), ==== → #### (4). So: level = eqCount
                level = Math.max(1, eqCount);
                raw = "#".repeat(level) + stripped.substring(eqCount);
            }

            // Convert standalone $...$ display math lines to $$...$$
            if (raw.strip().matches("^\\$[^$].*[^$]\\$\\s*$")) {
                raw = "$$" + raw.strip().substring(1, raw.strip().length() - 1) + "$$";
            }

            // Handle <label> on its own line — attach to previous heading
            if (raw.strip().matches("^<[a-zA-Z][\\w:\\.-]*>$")) {
                var label = raw.strip()
                    .replaceFirst("^<", "{#")
                    .replaceFirst(">$", "}")
                    .replaceFirst(":", "-");
                // Replace trailing newline of last sb line with " " + label + "\n"
                var buf = sb.toString();
                if (buf.endsWith("\n")) {
                    sb.setLength(0);
                    sb.append(buf.substring(0, buf.length() - 1));
                    sb.append(' ').append(label).append('\n');
                } else {
                    sb.append(' ').append(label).append('\n');
                }
                continue;
            }

            // Convert bare cross-ref labels: sec:xyz → @sec-xyz (Quarto crossref)
            // Must NOT be inside angle brackets (<sec:xyz> — those get {#sec-xyz} later)
            raw = raw.replaceAll("(?<!<)\\b(sec|ch|subsec|fig|tab|eq|ach|hyp|spec|lim|obs|oq|pred|prop|app):([a-zA-Z0-9_-]+)([^}\\w-]|$)", "@$1-$2$3");
            raw = raw.replaceAll("(?<!<)\\b(sec|ch|subsec|fig|tab|eq|ach|hyp|spec|lim|obs|oq|pred|prop|app):([a-zA-Z0-9_-]+)$", "@$1-$2");

            // Convert inline labels: <sec:xyz> → {#sec-xyz}
            // Also handle bare labels (after @ stripped): sec:xyz → {#sec-xyz}
            raw = raw.replaceAll("<sec:", "{#sec-");
            raw = raw.replaceAll("<subsec:", "{#subsec-");
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
            // Close trailing > on inline label conversions
            raw = raw.replaceAll("(\\{[#][a-zA-Z][\\w:\\.-]*?)>", "$1}");

            // Close only label-style angle brackets: {...> becomes {...}
            raw = raw.replaceAll("\\{[#a-z][\\w:-]+>", "$0".replace(">", "}")); // doesn't work, doing it differently
            // Actually just fix the pattern: {#sec-xyz> → {#sec-xyz}
            raw = raw.replaceAll("(\\{[#][a-zA-Z][\\w:\\.-]*)>", "$1}");

            sb.append(raw).append('\n');
        }

        writeString(path, sb.toString());
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
    // Also handle ] <label> pattern
    out = out.replaceAll("(?m)^\\] <[a-z][\\w:\\.-]*>$", ":::");
    // Remove any remaining ] lines that weren't closed
    out = out.replaceAll("(?m)^\\].*$", "");
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

// Remove #figure( table(...), caption: [...], ) blocks.
// Uses simple paren depth counting to handle nested ().
String removeFigureTable(String s) {
    var sb = new StringBuilder();
    int i = 0;
    while (i < s.length()) {
        int pos = s.indexOf("#figure(", i);
        if (pos < 0) { sb.append(s.substring(i)); break; }
        sb.append(s, i, pos);
        // Check if next non-whitespace token is 'table'
        int afterParen = pos + 8; // after "#figure("
        while (afterParen < s.length() && Character.isWhitespace(s.charAt(afterParen))) afterParen++;
        boolean isTable = s.regionMatches(afterParen, "table", 0, 5)
            && (afterParen + 5 >= s.length() || !Character.isLetterOrDigit(s.charAt(afterParen + 5)));
        if (!isTable) {
            sb.append("#figure(");
            i = pos + 8;
            continue;
        }
        // Skip to end of #figure(...) by counting parens
        int depth = 1;
        int j = pos + 7; // start inside the opening (
        while (j < s.length() && depth > 0) {
            char c = s.charAt(j);
            if (c == '(') depth++;
            else if (c == ')') depth--;
            j++;
        }
        sb.append("<!-- TABLE -->\n");
        // Also consume trailing newline
        if (j < s.length() && s.charAt(j) == '\n') j++;
        i = j;
    }
    return sb.toString();
}
