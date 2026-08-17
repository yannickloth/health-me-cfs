// GenerateSiteIndex — regenerate quarto's site-level files (search.json,
// sitemap.xml, robots.txt) from rendered HTML in target/site/, replicating
// quarto 1.8.26's exact output byte-for-byte.
//
// Run from project root. Reads rendered HTML pages; writes site index files.
import java.io.*;
import java.nio.file.*;
import java.util.*;
import java.util.regex.*;

void main(String[] args) throws IOException {
    var siteDir = Path.of(args.length > 0 ? args[0] : "target/site").toAbsolutePath().normalize();
    var siteUrl = args.length > 1 ? args[1] : "https://yannickloth.github.io/health-me-cfs/";

    System.out.println("=== GenerateSiteIndex ===");
    System.out.println("siteDir: " + siteDir);
    System.out.println("siteUrl: " + siteUrl);
    System.out.println();

    // Collect all rendered HTML files under _site (excluding _site/lib/, search dirs)
    var htmlFiles = new ArrayList<Path>();
    try (var stream = Files.walk(siteDir)) {
        stream.filter(p -> Files.isRegularFile(p))
              .filter(p -> p.toString().endsWith(".html"))
              .filter(p -> !p.toString().contains("/lib/"))
              .forEach(htmlFiles::add);
    }
    htmlFiles.sort(Comparator.comparing(Path::toString));
    System.out.println("Rendered HTML files: " + htmlFiles.size());

    // Quarto renders the navbar from _quarto.yml in each isolated unit. Links
    // to pages outside the unit (blog indexes, FAQ, about) keep their .qmd
    // extension because quarto only rewrites hrefs whose target is in the same
    // project. Rewrite every href="...qmd" to .html in the merged site so all
    // navigation links resolve.
    rewriteQmdLinks(htmlFiles);
    System.out.println("Rewrote .qmd navigation links to .html.");

    var searchDocs = new ArrayList<Map<String, Object>>();
    var sitemapUrls = new ArrayList<String>();

    // Determine each page's navbar parent text (the merge-navbar-crumbs prefix).
    // Pages under en/blog -> "🇬🇧 Blog (EN)", de/blog -> "🇩🇪 Blog (DE)",
    // fr/blog -> "🇫🇷 Blog (FR)", everything else (paper) -> "Home".
    for (var file : htmlFiles) {
        String rel = siteDir.relativize(file).toString().replace('\\', '/');
        String href = rel.replaceFirst("\\.html$", "").endsWith("/index")
            ? rel.replaceFirst("/index\\.html$", "/")  // not used here
            : rel;
        // objectID uses the .html href (quarto uses the outputFile path)
        String objHref = rel;
        // crumbs computed from rendered breadcrumbs + navbar merge
        var html = Files.readString(file);
        var crumbs = extractBreadcrumbs(html);
        String navbarText = navbarTextFor(rel);
        if (navbarText != null && crumbs != null && !crumbs.isEmpty()) {
            if (!crumbs.get(0).equals(navbarText)) {
                var merged = new ArrayList<String>();
                merged.add(navbarText);
                merged.addAll(crumbs);
                crumbs = merged;
            }
        }

        var doc = new SimpleDom(html);
        // title
        String title = doc.querySelectorText("h1.title");
        if (title == null) {
            title = doc.querySelectorText("main h1");
        }
        if (title == null) title = "";

        // remove title-block-header, toc, script/style
        doc.removeElementById("title-block-header");
        doc.removeElements("nav[role=\"doc-toc\"]");
        doc.removeElements("script");
        doc.removeElements("style");

        var sections = doc.querySelectorAll("section.level2, section.footnotes");
        if (!sections.isEmpty()) {
            var mainEl = doc.querySelector("main.content");
            var pageText = new ArrayList<String>();
            if (mainEl != null) {
                var firstEl = mainEl.firstElementChild();
                if (firstEl != null) {
                    var headings = firstEl.querySelectorAll("h1, h2, h3, h4, h5, h6");
                    for (var h : headings) h.remove();
                    String trimmed = firstEl.textContent().trim();
                    if (!trimmed.isEmpty()) pageText.add(trimmed);
                    firstEl.remove();
                }
                var paragraphNodes = mainEl.querySelectorAll("> p, > div.cell");
                for (var p : paragraphNodes) {
                    String t = p.textContent().trim();
                    if (!t.isEmpty()) pageText.add(t);
                    p.remove();
                }
            }
            var forced = doc.querySelectorAll(".quarto-include-in-search-index");
            for (var fi : forced) {
                String t = fi.textContent().trim();
                if (!t.isEmpty()) pageText.add(t);
            }
            if (!pageText.isEmpty()) {
                searchDocs.add(doc(objHref, objHref, title, "", encodeHtml(String.join("\n", pageText)), crumbs));
            }
            for (var section : sections) {
                String sid = section.id();
                if (sid == null || sid.isEmpty()) continue;
                var h2 = section.querySelector("h2");
                String sectionTitle = h2 != null ? h2.textContent() : "";
                String hrefWithAnchor = objHref + "#" + sid;
                String sectionText = section.textContent().trim();
                if (sectionText.isEmpty()) continue;
                searchDocs.add(doc(hrefWithAnchor, hrefWithAnchor, title, sectionTitle, encodeHtml(sectionText), crumbs));
            }
        } else {
            var main2 = doc.querySelector("main");
            if (main2 != null) {
                String mainText = main2.textContent().trim();
                if (!mainText.isEmpty()) {
                    searchDocs.add(doc(objHref, objHref, title, "", encodeHtml(mainText), crumbs));
                }
            }
        }

        // sitemap entry
        if (crumbs != null && !rel.startsWith("en/blog/")) { // include all, quartz includes all pages
        }
        sitemapUrls.add(siteUrl + rel);
    }

    // Write search.json
    writeSearchJson(siteDir, searchDocs);
    writeSitemap(siteDir, siteUrl, sitemapUrls);
    writeRobots(siteDir, siteUrl);

    // Generate listings.json from blog post frontmatter
    var webSrcDir = Path.of(args.length > 2 ? args[2] : "src/main/quarto").toAbsolutePath().normalize();
    generateListings(siteDir, webSrcDir);

    System.out.println("search.json entries: " + searchDocs.size());
    System.out.println("sitemap urls: " + sitemapUrls.size());
    System.out.println("Done.");
}

// Rewrite all href="...qmd" -> href="...html" in rendered HTML. Only applies
// to <a href> attributes whose value ends in .qmd; leaves all other links
// (external, .html, .pdf, anchors) untouched.
void rewriteQmdLinks(List<Path> htmlFiles) throws IOException {
    var href = Pattern.compile("href=\"([^\"]*?)\\.qmd\"");
    for (var file : htmlFiles) {
        var html = Files.readString(file);
        var rewritten = href.matcher(html).replaceAll(m -> "href=\"" + m.group(1) + ".html\"");
        if (!rewritten.equals(html)) {
            Files.writeString(file, rewritten);
        }
    }
}

// --- Listings ---
void generateListings(Path siteDir, Path webSrcDir) throws IOException {
    var entries = new ArrayList<Map<String, Object>>();
    // Blog indexes + main index. Each lists the same-language blog posts.
    // main index lists EN posts (matching quarto's index.qmd listing).
    addListing(entries, webSrcDir, "/en/blog/index.html", webSrcDir.resolve("en/blog"));
    addListing(entries, webSrcDir, "/de/blog/index.html", webSrcDir.resolve("de/blog"));
    addListing(entries, webSrcDir, "/fr/blog/index.html", webSrcDir.resolve("fr/blog"));
    addListing(entries, webSrcDir, "/index.html", webSrcDir.resolve("en/blog"));
    writeListings(siteDir, entries);
    System.out.println("listings.json entries: " + entries.size());
}

void addListing(List<Map<String, Object>> out, Path webSrcDir, String listingPath, Path blogDir) throws IOException {
    var posts = new ArrayList<Post>();
    var postsDir = blogDir.resolve("posts");
    if (!Files.isDirectory(postsDir)) return;
    try (var stream = Files.walk(postsDir)) {
        var files = stream.filter(p -> Files.isRegularFile(p) && p.getFileName().toString().equals("index.qmd")).toList();
        for (var f : files) {
            var src = Files.readString(f);
            var fm = frontmatter(src);
            String date = fm.get("date");
            String title = fm.get("title");
            var rel = webSrcDir.relativize(f).toString().replace('\\', '/');
            rel = rel.replaceFirst("\\.qmd$", ".html");
            var p = new Post("/" + rel, date, title);
            posts.add(p);
        }
    }
    posts.sort((a, b) -> {
        String ad = a.date != null ? a.date : "";
        String bd = b.date != null ? b.date : "";
        int c = bd.compareTo(ad); // date desc
        if (c != 0) return c;
        String at = a.title != null ? a.title : "";
        String bt = b.title != null ? b.title : "";
        return at.compareTo(bt); // title asc
    });
    var items = new ArrayList<String>();
    for (var p : posts) items.add(p.path);
    var m = new LinkedHashMap<String, Object>();
    m.put("listing", listingPath);
    m.put("items", items);
    out.add(m);
}

Map<String, String> frontmatter(String src) {
    var m = new LinkedHashMap<String, String>();
    var matcher = Pattern.compile("^---\n([\\s\\S]*?)\n---").matcher(src);
    if (!matcher.find()) return m;
    var fm = matcher.group(1);
    var titleMatcher = Pattern.compile("title:\\s*[\"']([^\"']*)[\"']").matcher(fm);
    if (titleMatcher.find()) m.put("title", titleMatcher.group(1));
    var dateMatcher = Pattern.compile("date:\\s*[\"']([^\"']*)[\"']").matcher(fm);
    if (dateMatcher.find()) m.put("date", dateMatcher.group(1));
    return m;
}

record Post(String path, String date, String title) {}

void writeListings(Path siteDir, List<Map<String, Object>> entries) throws IOException {
    var sb = new StringBuilder();
    sb.append("[\n");
    for (int i = 0; i < entries.size(); i++) {
        sb.append(jsonObject(entries.get(i), 1));
        if (i < entries.size() - 1) sb.append(",");
        sb.append("\n");
    }
    sb.append("]\n");
    Files.writeString(siteDir.resolve("listings.json"), sb.toString());
}

String navbarTextFor(String rel) {
    if (rel.startsWith("en/blog/")) return "🇬🇧 Blog (EN)";
    if (rel.startsWith("de/blog/")) return "🇩🇪 Blog (DE)";
    if (rel.startsWith("fr/blog/")) return "🇫🇷 Blog (FR)";
    return "Home";
}

List<String> extractBreadcrumbs(String html) {
    var navMatcher = Pattern.compile("<nav[^>]*quarto-page-breadcrumbs[^>]*>(.*?)</nav>", Pattern.DOTALL).matcher(html);
    if (!navMatcher.find()) return null;
    String nav = navMatcher.group(1);
    var result = new ArrayList<String>();
    var liMatcher = Pattern.compile("<li[^>]*breadcrumb-item[^>]*>(.*?)</li>", Pattern.DOTALL).matcher(nav);
    while (liMatcher.find()) {
        String inner = stripTags(liMatcher.group(1)).trim();
        if (!inner.isEmpty()) result.add(unescape(inner));
    }
    return result;
}

Map<String, Object> doc(String objectID, String href, String title, String section, String text, List<String> crumbs) {
    var m = new LinkedHashMap<String, Object>();
    m.put("objectID", objectID);
    m.put("href", href);
    m.put("title", title);
    m.put("section", section);
    m.put("text", text);
    if (crumbs != null) m.put("crumbs", crumbs);
    return m;
}

String encodeHtml(String value) {
    return value.replace("<", "&lt;").replace(">", "&gt;");
}

String stripTags(String s) {
    return s.replaceAll("<[^>]+>", "");
}

String unescape(String s) {
    return s.replace("&amp;", "&").replace("&lt;", "<").replace("&gt;", ">")
            .replace("&quot;", "\"").replace("&#39;", "'").replace("&#x27;", "'")
            .replace("&nbsp;", " ").replace("&ndash;", "–").replace("&mdash;", "—")
            .replace("&#160;", " ");
}

void writeSearchJson(Path siteDir, List<Map<String, Object>> docs) throws IOException {
    String json = jsonStringify(docs);
    Files.writeString(siteDir.resolve("search.json"), json);
}

void writeSitemap(Path siteDir, String siteUrl, List<String> urls) throws IOException {
    var sb = new StringBuilder();
    sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n");
    sb.append("<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">\n");
    for (var u : urls) {
        sb.append("  <url>\n");
        sb.append("    <loc>").append(u).append("</loc>\n");
        sb.append("    <lastmod>").append(lastMod()).append("</lastmod>\n");
        sb.append("  </url>\n");
    }
    sb.append("</urlset>\n");
    Files.writeString(siteDir.resolve("sitemap.xml"), sb.toString());
}

void writeRobots(Path siteDir, String siteUrl) throws IOException {
    Files.writeString(siteDir.resolve("robots.txt"), "Sitemap: " + siteUrl + "sitemap.xml\n");
}

String lastMod() {
    return java.time.Instant.now().toString();
}

String jsonStringify(List<Map<String, Object>> docs) {
    var sb = new StringBuilder();
    sb.append("[\n");
    for (int i = 0; i < docs.size(); i++) {
        sb.append(jsonObject(docs.get(i), 1));
        if (i < docs.size() - 1) sb.append(",");
        sb.append("\n");
    }
    sb.append("]\n");
    return sb.toString();
}

String jsonObject(Map<String, Object> m, int indent) {
    var pad = "  ".repeat(indent);
    var padInner = "  ".repeat(indent + 1);
    var sb = new StringBuilder();
    sb.append(pad).append("{\n");
    int i = 0;
    for (var e : m.entrySet()) {
        sb.append(padInner).append(jsonStr(e.getKey())).append(": ");
        Object v = e.getValue();
        if (v instanceof String s) sb.append(jsonStr(s));
        else if (v instanceof List<?> list) sb.append(jsonArray(list, indent + 1));
        sb.append(i < m.size() - 1 ? "," : "").append("\n");
        i++;
    }
    sb.append(pad).append("}");
    return sb.toString();
}

String jsonArray(List<?> list, int indent) {
    var sb = new StringBuilder("[");
    for (int i = 0; i < list.size(); i++) {
        sb.append(jsonStr((String) list.get(i)));
        if (i < list.size() - 1) sb.append(", ");
    }
    sb.append("]");
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
            case '\b' -> sb.append("\\b");
            case '\f' -> sb.append("\\f");
            default -> {
                if (c < 0x20) sb.append(String.format("\\u%04x", (int) c));
                else sb.append(c);
            }
        }
    }
    sb.append("\"");
    return sb.toString();
}
