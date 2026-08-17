// GenerateSidebar — produce the full unified sidebar navigation as a JSON
// manifest consumed by the <mecfs-sidebar> web component at runtime.
//
// The manifest mirrors quarto's sidebar auto-expansion:
//   part-glob -> chapter dirs (title derived from dir name) -> page files
//               (title from frontmatter)
// Each entry carries a site-root-relative href so the web component can
// compute per-page relative links and highlight the active page.
//
// Run from repo root. Args: webRoot, outputPath.
import java.nio.file.*;
import java.util.*;
import java.util.regex.*;

void main(String[] args) throws Exception {
    var webRoot = Path.of(args.length > 0 ? args[0] : "target/quarto").toAbsolutePath().normalize();
    var outPath = Path.of(args.length > 1 ? args[1] : webRoot.resolve("mecfs-sidebar.json").toString());
    System.out.println("=== GenerateSidebar ===");
    System.out.println("webRoot: " + webRoot);

    // Sidebar sections from _quarto.yml: label -> contents glob
    var sections = new LinkedHashMap<String, String>();
    var directLinks = new ArrayList<String[]>();
    var quarto = Files.readString(webRoot.resolve("_quarto.yml"));
    // Parse sidebar contents block: everything under "contents:" until "format:"
    var sb = Pattern.compile("contents:\\s*\\n([\\s\\S]*?)(?=\\n\\s*format:)", Pattern.MULTILINE).matcher(quarto);
    String sidebarBlock = sb.find() ? sb.group(1) : "";
    // sections: - section: "label" \n contents: glob
    var secM = Pattern.compile("-\\s*section:\\s*\"([^\"]*)\"\\s*\\n\\s*contents:\\s*([^\\n]+)").matcher(sidebarBlock);
    while (secM.find()) {
        sections.put(secM.group(1), secM.group(2).trim());
    }
    // direct links: - text: "label" \n href: path
    var linkM = Pattern.compile("-\\s*text:\\s*\"([^\"]*)\"\\s*\\n\\s*href:\\s*([^\\n]+)").matcher(sidebarBlock);
    while (linkM.find()) {
        directLinks.add(new String[]{ linkM.group(1), linkM.group(2).trim() });
    }

    var root = new ArrayList<Object>();
    for (var e : sections.entrySet()) {
        var section = new LinkedHashMap<String, Object>();
        section.put("type", "section");
        section.put("label", e.getKey());
        // Link the part header to its title page (index.qmd) when one exists.
        var partBase = e.getValue().replaceFirst("/\\*\\*$", "").replaceFirst("/\\*$", "");
        var partIntro = webRoot.resolve(partBase).resolve("index.qmd");
        if (Files.isRegularFile(partIntro)) section.put("href", siteHref(webRoot, partIntro));
        section.put("children", expandGlob(webRoot, e.getValue()));
        root.add(section);
    }
    for (var dl : directLinks) {
        var item = new LinkedHashMap<String, Object>();
        item.put("type", "link");
        item.put("label", dl[0]);
        item.put("href", qmdToHref(dl[1]));
        root.add(item);
    }

    var json = "{\n  \"items\": " + jsonArray(root, 1) + "\n}\n";
    Files.writeString(outPath, json);
    System.out.println("sidebar manifest written: " + outPath);
    System.out.println("sections: " + sections.size() + ", direct links: " + directLinks.size());
    System.out.println("Done.");
}

List<Object> expandGlob(Path webRoot, String glob) throws Exception {
    // glob like "part1-clinical/**" or "z-appendices/**" or explicit dir
    var base = glob.replaceFirst("/\\*\\*$", "").replaceFirst("/\\*$", "");
    var baseDir = webRoot.resolve(base);
    if (!Files.isDirectory(baseDir)) return new ArrayList<Object>();
    var children = new ArrayList<Object>();
    try (var stream = Files.list(baseDir)) {
        var dirs = stream.filter(Files::isDirectory).sorted(Comparator.comparing(p -> p.getFileName().toString())).toList();
        for (var dir : dirs) {
            // chapter dir -> title from dir name; header links to the chapter
            // intro page (index.qmd) when one exists, else to its single page
            // (so single-page items such as a pure-list appendix are clickable).
            var chapter = new LinkedHashMap<String, Object>();
            chapter.put("type", "section");
            chapter.put("label", titleFromPath(dir.getFileName().toString()));
            var intro = dir.resolve("index.qmd");
            if (Files.isRegularFile(intro)) chapter.put("href", siteHref(webRoot, intro));
            var pages = new ArrayList<Object>();
            try (var ps = Files.list(dir)) {
                var qmds = ps.filter(p -> Files.isRegularFile(p) && p.toString().endsWith(".qmd"))
                    .sorted(Comparator.comparing(p -> p.getFileName().toString())).toList();
                for (var qmd : qmds) {
                    if (qmd.getFileName().toString().equals("index.qmd")) continue;
                    var page = new LinkedHashMap<String, Object>();
                    page.put("type", "link");
                    page.put("label", frontmatterTitle(qmd));
                    page.put("href", siteHref(webRoot, qmd));
                    pages.add(page);
                }
            }
            if (!chapter.containsKey("href") && pages.size() == 1) {
                chapter.put("href", ((Map<?, ?>) pages.get(0)).get("href"));
            }
            chapter.put("children", pages);
            children.add(chapter);
        }
    }
    return children;
}

String titleFromPath(String dirName) {
    var name = dirName;
    if (!name.contains(" ")) {
        name = name.replaceAll("[_\\-]+", " ");
        var words = name.split("\\s+");
        var sb = new StringBuilder();
        for (int i = 0; i < words.length; i++) {
            boolean firstLast = i == 0 || i == words.length - 1;
            // A single-letter word is a section/part designator (e.g. the "A"
            // in "Appendix A Terminology"), never a lowercase article.
            boolean singleLetter = words[i].length() == 1;
            if (firstLast || singleLetter || !isNotCapitalized(words[i])) {
                sb.append(capitalizeWord(words[i]));
            } else {
                sb.append(words[i]);
            }
            if (i < words.length - 1) sb.append(" ");
        }
        return sb.toString();
    }
    return name;
}

boolean isNotCapitalized(String w) {
    return switch (w) {
        case "a", "an", "the", "for", "and", "nor", "but", "or", "yet", "so",
             "with", "at", "by", "to", "in", "from", "of", "on" -> true;
        default -> false;
    };
}

String capitalizeWord(String w) {
    if (w.isEmpty()) return w;
    return Character.toUpperCase(w.charAt(0)) + w.substring(1);
}

String frontmatterTitle(Path qmd) throws Exception {
    var src = Files.readString(qmd);
    var m = Pattern.compile("^---\\n[\\s\\S]*?title:\\s*[\"']([^\"']*)[\"']", Pattern.MULTILINE).matcher(src);
    if (m.find()) return m.group(1);
    // fallback to filename
    return titleFromPath(qmd.getFileName().toString().replaceFirst("\\.qmd$", ""));
}

String qmdToHref(String qmdPath) {
    var href = qmdPath.replaceFirst("\\.qmd$", ".html");
    if (href.endsWith("/index.html")) href = href.substring(0, href.length() - "index.html".length());
    return "/" + href;
}

String siteHref(Path webRoot, Path qmd) {
    var rel = webRoot.relativize(qmd).toString().replace('\\', '/');
    var href = rel.replaceFirst("\\.qmd$", ".html");
    if (href.endsWith("/index.html")) href = href.substring(0, href.length() - "index.html".length());
    return "/" + href;
}

String jsonArray(List<?> list, int depth) {
    if (list.isEmpty()) return "[]";
    var pad = "  ".repeat(depth + 1);
    var closePad = "  ".repeat(depth);
    var sb = new StringBuilder();
    sb.append("[\n");
    for (int i = 0; i < list.size(); i++) {
        Object v = list.get(i);
        if (v instanceof Map<?, ?> m) sb.append(pad).append(jsonObj(m, depth + 1));
        else if (v instanceof String s) sb.append(pad).append(jsonStr(s));
        else if (v instanceof List<?> l) sb.append(pad).append(jsonArray(l, depth + 1));
        sb.append(i < list.size() - 1 ? "," : "").append("\n");
    }
    sb.append(closePad).append("]");
    return sb.toString();
}

String jsonObj(Map<?, ?> m, int depth) {
    var pad = "  ".repeat(depth + 1);
    var closePad = "  ".repeat(depth);
    var sb = new StringBuilder();
    sb.append("{\n");
    int i = 0;
    for (var e : m.entrySet()) {
        sb.append(pad).append(jsonStr(String.valueOf(e.getKey()))).append(": ");
        Object v = e.getValue();
        if (v instanceof Map<?, ?> inner) sb.append(jsonObj(inner, depth + 1));
        else if (v instanceof List<?> l) sb.append(jsonArray(l, depth + 1));
        else if (v instanceof String s) sb.append(jsonStr(s));
        sb.append(i < m.size() - 1 ? "," : "").append("\n");
        i++;
    }
    sb.append(closePad).append("}");
    return sb.toString();
}

String jsonStr(String s) {
    if (s == null) return "null";
    var sb = new StringBuilder("\"");
    for (char c : s.toCharArray()) {
        switch (c) {
            case '"' -> sb.append("\\\"");
            case '\\' -> sb.append("\\\\");
            case '\n' -> sb.append("\\n");
            case '\r' -> sb.append("\\r");
            case '\t' -> sb.append("\\t");
            default -> {
                if (c < 0x20) sb.append(String.format("\\u%04x", (int) c));
                else sb.append(c);
            }
        }
    }
    sb.append("\"");
    return sb.toString();
}
