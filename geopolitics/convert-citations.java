import java.nio.file.*;
import java.util.*;
import java.util.regex.*;

void main(String... args) throws Exception {
    Path filepath = Paths.get("/home/nicky/code/health-me-cfs/geopolitics/linkedin-article-de.md");
    String content = Files.readString(filepath);

    // Map from URL -> reference number (1-based)
    Map<String, Integer> urlToNum = new LinkedHashMap<>();
    // Ordered list of URLs for the reference section
    List<String> orderedUrls = new ArrayList<>();

    // Pattern: a parenthetical group containing one or more markdown links
    // Matches: ([text](url); [text](url)) or ([text](url))
    // The parenthetical must contain at least one markdown link with http URL
    Pattern citationGroupPattern = Pattern.compile(
        "\\((" +
          "\\[[^\\]]*\\]\\(https?://[^)]+\\)" +  // first link
          "(?:[ ]*;[ ]*\\[[^\\]]*\\]\\(https?://[^)]+\\))*" +  // optional more links
        ")\\)"
    );

    // Pattern to extract individual markdown links from a group
    Pattern singleLinkPattern = Pattern.compile(
        "\\[[^\\]]*\\]\\((https?://[^)]+)\\)"
    );

    // First pass: collect all URLs and assign numbers in document order
    Matcher groupMatcher = citationGroupPattern.matcher(content);
    while (groupMatcher.find()) {
        String group = groupMatcher.group(1);
        Matcher linkMatcher = singleLinkPattern.matcher(group);
        while (linkMatcher.find()) {
            String url = linkMatcher.group(1);
            if (!urlToNum.containsKey(url)) {
                orderedUrls.add(url);
                urlToNum.put(url, orderedUrls.size());
            }
        }
    }

    System.out.println("Found " + orderedUrls.size() + " unique URLs");

    // Second pass: replace each citation group with [N][M]... notation
    StringBuffer sb = new StringBuffer();
    groupMatcher.reset();
    while (groupMatcher.find()) {
        String group = groupMatcher.group(1);
        Matcher linkMatcher = singleLinkPattern.matcher(group);
        StringBuilder replacement = new StringBuilder();
        while (linkMatcher.find()) {
            String url = linkMatcher.group(1);
            int num = urlToNum.get(url);
            replacement.append("[").append(num).append("]");
        }
        groupMatcher.appendReplacement(sb, Matcher.quoteReplacement(replacement.toString()));
    }
    groupMatcher.appendTail(sb);

    String modified = sb.toString();

    // Strip trailing italics and trailing horizontal rules to re-append at the end
    // The file ends with:
    //   ---
    //   *disclaimer line*
    //   ---
    //   ---
    //   *another disclaimer*
    // We want to preserve those after the reference list.
    // Find the first "---" separator that comes after the main content (before disclaimers)
    // Strategy: find everything from the last "---\n\n*" block onward and keep it as suffix

    // Find the position of the first "---" that precedes the italic disclaimer paragraphs at the end
    // The disclaimers start with "*Jedes..." and "*Dieser Artikel..."
    // We look for the pattern: \n---\n\n*Jedes
    int disclaimerStart = modified.indexOf("\n---\n\n*Jedes");
    String mainContent;
    String suffix;
    if (disclaimerStart >= 0) {
        mainContent = modified.substring(0, disclaimerStart);
        suffix = modified.substring(disclaimerStart);
    } else {
        // Fallback: just append at end
        mainContent = modified;
        suffix = "";
    }

    // Remove trailing whitespace/newlines from main content
    mainContent = mainContent.stripTrailing();

    // Build reference list
    StringBuilder refs = new StringBuilder();
    refs.append("\n\n---\n\n## Quellen\n\n");
    for (int i = 0; i < orderedUrls.size(); i++) {
        refs.append("[").append(i + 1).append("] ").append(orderedUrls.get(i)).append("\n");
    }

    String result = mainContent + refs.toString() + suffix;

    Files.writeString(filepath, result);
    System.out.println("Written to: " + filepath);
    System.out.println("Result length (chars): " + result.length());
    System.out.println("Reference count: " + orderedUrls.size());
}
