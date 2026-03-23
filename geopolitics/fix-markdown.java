///usr/bin/env java --source 25 "$0" "$@"; exit $?

import module java.base;

void main(String[] args) throws Exception {
    var filePath = Path.of("/home/nicky/code/health-me-cfs/geopolitics/linkedin-article-fr.md");
    var content = Files.readString(filePath, StandardCharsets.UTF_8);

    // Map from URL -> reference number (insertion order)
    var urlToNumber = new LinkedHashMap<String, Integer>();
    var counter = new int[]{0};

    // Pattern: parenthetical containing one or more markdown links with http URLs, separated by " ; "
    // Matches: ([text](url) ; [text](url))  or  ([text](url))
    var linkPattern = Pattern.compile(
        "\\((" +
            "(?:\\[[^\\]]*\\]\\(https?://[^)]+\\))" +
            "(?:\\s*;\\s*(?:\\[[^\\]]*\\]\\(https?://[^)]+\\)))*" +
        ")\\)"
    );

    // Pattern to extract individual URLs from within a citation group
    var singleLink = Pattern.compile("\\[[^\\]]*\\]\\((https?://[^)]+)\\)");

    var result = new StringBuilder();
    int lastEnd = 0;
    var matcher = linkPattern.matcher(content);

    while (matcher.find()) {
        result.append(content, lastEnd, matcher.start());

        var innerText = matcher.group(1);
        var linkMatcher = singleLink.matcher(innerText);
        var numbers = new ArrayList<Integer>();
        while (linkMatcher.find()) {
            var url = linkMatcher.group(1);
            urlToNumber.computeIfAbsent(url, k -> ++counter[0]);
            numbers.add(urlToNumber.get(url));
        }

        // Replace entire (...) with [1][2] etc.
        var sb = new StringBuilder();
        for (var n : numbers) {
            sb.append("[").append(n).append("]");
        }
        result.append(sb);

        lastEnd = matcher.end();
    }
    result.append(content, lastEnd, content.length());

    // Build the reference section
    var refSection = new StringBuilder();
    refSection.append("\n---\n\n## Références\n\n");
    for (var entry : urlToNumber.entrySet()) {
        refSection.append("[").append(entry.getValue()).append("] ")
                  .append(entry.getKey()).append("\n");
    }

    // Insert reference section before the final disclaimers block.
    // The disclaimers start with: ---\n\n*Chaque événement
    var body = result.toString();
    var disclaimerMarker = "---\n\n*Chaque événement";
    var markerIdx = body.lastIndexOf(disclaimerMarker);

    String finalContent;
    if (markerIdx >= 0) {
        finalContent = body.substring(0, markerIdx)
                     + refSection
                     + "\n"
                     + body.substring(markerIdx);
    } else {
        // Fallback: append at end
        System.err.println("WARNING: disclaimer marker not found, appending at end");
        finalContent = body + refSection;
    }

    Files.writeString(filePath, finalContent, StandardCharsets.UTF_8);
    System.out.println("Done.");
    System.out.println("Unique references: " + urlToNumber.size());
    System.out.println("Output length (chars): " + finalContent.length());
}
