// SimpleDom — minimal HTML DOM parser emulating the subset of the DOM API
// needed to replicate quarto's search-index text extraction.
// textContent() mimics browser semantics: concatenates all descendant text
// nodes in document order, decoding entities, no separators inserted.
import java.util.*;
import java.util.regex.*;

final class SimpleDom {
    private final Node root;

    SimpleDom(String html) {
        this.root = Node.parse(html);
    }

    String querySelectorText(String css) {
        var n = querySelector(css);
        return n != null ? n.textContent() : null;
    }

    Node querySelector(String css) {
        for (var n : root.allNodes()) {
            if (n != root && matches(n, css, root)) return n;
        }
        return null;
    }

    List<Node> querySelectorAll(String css) {
        var out = new ArrayList<Node>();
        for (var n : root.allNodes()) {
            if (n != root && matches(n, css, root)) out.add(n);
        }
        return out;
    }

    void removeElementById(String id) {
        for (var n : root.allNodes()) {
            if (Objects.equals(n.id(), id)) { n.remove(); return; }
        }
    }

    void removeElements(String css) {
        for (var n : querySelectorAll(css)) n.remove();
    }

    // Very limited CSS: tag, tag.attr, tag[attr="val"], tag#id, "> child" suffix
    private boolean matches(Node n, String css, Node context) {
        if (css.contains(",")) {
            for (var part : css.split(",")) {
                if (matches(n, part.trim(), context)) return true;
            }
            return false;
        }
        // Handle "> p" child combinator (direct child of context)
        if (css.startsWith("> ")) {
            return n.parent() == context && matches(n, css.substring(2).trim(), context);
        }
        var m = Pattern.compile("^(\\w+)?(?:\\.([\\w-]+))?(?:\\[([^\\]]+)\\])?(?:#([\\w-]+))?$").matcher(css.trim());
        if (!m.matches()) return false;
        String tag = m.group(1);
        String cls = m.group(2);
        String attr = m.group(3);
        String id = m.group(4);
        if (tag != null && !tag.equals(n.tagName())) return false;
        if (id != null && !id.equals(n.id())) return false;
        if (cls != null && !n.hasClass(cls)) return false;
        if (attr != null) {
            var am = Pattern.compile("([\\w-]+)=\"([^\"]*)\"").matcher(attr);
            if (am.matches()) {
                String av = n.attr(am.group(1));
                if (av == null || !av.equals(am.group(2))) return false;
            } else if (!n.hasAttr(attr)) return false;
        }
        return true;
    }

    static final class Node {
        String tag;
        String text;
        Map<String, String> attrs = new LinkedHashMap<>();
        List<Node> children = new ArrayList<>();
        Node parent;
        boolean removed;

        Node(String tag) { this.tag = tag; }

        static Node parse(String html) {
            // Stack-based HTML parser: handles opening/closing/self-closing tags
            // and text nodes. Wrapped in a synthetic root.
            Node root = new Node("#root");
            Node cur = root;
            var tagPat = Pattern.compile("<(/)?([a-zA-Z][a-zA-Z0-9]*)([^>]*?)(/)?>");
            var m = tagPat.matcher(html);
            int last = 0;
            while (m.find()) {
                if (m.start() > last) {
                    String text = html.substring(last, m.start());
                    if (!text.isEmpty()) {
                        var tn = new Node("#text");
                        tn.text = decode(text);
                        tn.parent = cur;
                        cur.children.add(tn);
                    }
                }
                boolean closing = m.group(1) != null;
                String tag = m.group(2);
                String attrs = m.group(3);
                boolean selfClosing = m.group(4) != null;
                if (closing) {
                    // pop up to matching tag
                    cur = closeTag(cur, tag);
                } else {
                    var n = new Node(tag);
                    parseAttrs(attrs, n.attrs);
                    n.parent = cur;
                    cur.children.add(n);
                    if (!selfClosing && !voidElement(tag)) {
                        cur = n;
                    }
                }
                last = m.end();
            }
            if (last < html.length()) {
                String text = html.substring(last);
                if (!text.isEmpty()) {
                    var tn = new Node("#text");
                    tn.text = decode(text);
                    tn.parent = cur;
                    cur.children.add(tn);
                }
            }
            return root;
        }

        static void parseAttrs(String raw, Map<String, String> out) {
            var am = Pattern.compile("([\\w-]+)(?:\\s*=\\s*\"([^\"]*)\")?").matcher(raw);
            while (am.find()) {
                out.put(am.group(1), am.group(2) != null ? decode(am.group(2)) : "");
            }
        }

        static Node closeTag(Node cur, String tag) {
            Node c = cur;
            while (c != null) {
                if (c.tag.equals(tag)) {
                    return c.parent != null ? c.parent : c;
                }
                c = c.parent;
            }
            return cur;
        }

        static boolean voidElement(String tag) {
            return switch (tag) {
                case "area", "base", "br", "col", "embed", "hr", "img", "input",
                     "link", "meta", "param", "source", "track", "wbr" -> true;
                default -> false;
            };
        }

        String tagName() { return tag.equals("#root") || tag.equals("#text") ? "" : tag; }
        boolean isText() { return tag.equals("#text"); }

        String id() { return attrs.get("id"); }
        boolean hasClass(String c) {
            String v = attrs.get("class");
            return v != null && Arrays.asList(v.split("\\s+")).contains(c);
        }
        String attr(String name) { return attrs.get(name); }
        boolean hasAttr(String name) { return attrs.containsKey(name); }
        Node parent() { return parent; }
        List<Node> children() { return children; }
        Node firstElementChild() {
            for (var c : children) if (!c.isText() && !c.removed) return c;
            return null;
        }
        void remove() {
            this.removed = true;
            if (parent != null) {
                parent.children.remove(this);
                parent = null;
            }
        }
        boolean removed() { return removed; }

        Node querySelector(String css) {
            for (var n : allNodes()) {
                if (n != this && !n.isText() && !n.removed && matchTagAttrClassId(n, css, this)) return n;
            }
            return null;
        }
        List<Node> querySelectorAll(String css) {
            var out = new ArrayList<Node>();
            for (var n : allNodes()) {
                if (n != this && !n.isText() && !n.removed && matchTagAttrClassId(n, css, this)) out.add(n);
            }
            return out;
        }

        // For inner queries (h2 within section, headings within firstEl)
        private boolean matchTagAttrClassId(Node n, String css, Node context) {
            if (css.contains(",")) {
                for (var part : css.split(",")) {
                    if (matchTagAttrClassId(n, part.trim(), context)) return true;
                }
                return false;
            }
            if (css.startsWith("> ")) {
                return n.parent == context && matchTagAttrClassId(n, css.substring(2).trim(), context);
            }
            var m = Pattern.compile("^(\\w+)?(?:\\.([\\w-]+))?(?:\\[([^\\]]+)\\])?(?:#([\\w-]+))?$").matcher(css.trim());
            if (!m.matches()) return false;
            String tag = m.group(1);
            String cls = m.group(2);
            String attr = m.group(3);
            String id = m.group(4);
            if (tag != null && !tag.equals(n.tag)) return false;
            if (id != null && !id.equals(n.id())) return false;
            if (cls != null && !n.hasClass(cls)) return false;
            if (attr != null) {
                var am = Pattern.compile("([\\w-]+)=\"([^\"]*)\"").matcher(attr);
                if (am.matches()) {
                    String av = n.attr(am.group(1));
                    if (av == null || !av.equals(am.group(2))) return false;
                } else if (!n.hasAttr(attr)) return false;
            }
            return true;
        }

        String textContent() {
            var sb = new StringBuilder();
            textInto(sb);
            return sb.toString();
        }
        private void textInto(StringBuilder sb) {
            if (isText()) { sb.append(text); return; }
            for (var c : children) {
                c.textInto(sb);
            }
        }

        List<Node> allNodes() {
            var out = new ArrayList<Node>();
            allInto(out);
            return out;
        }
        private void allInto(List<Node> out) {
            out.add(this);
            for (var c : children) c.allInto(out);
        }
    }

    static String decode(String s) {
        var sb = new StringBuilder(s.length());
        var m = Pattern.compile("&(#?[xX]?[0-9a-fA-F]+|amp|lt|gt|quot|apos|nbsp);").matcher(s);
        int last = 0;
        while (m.find()) {
            sb.append(s, last, m.start());
            String ent = m.group(1);
            if (ent.startsWith("#")) {
                int code;
                if (ent.startsWith("#x") || ent.startsWith("#X")) {
                    code = Integer.parseInt(ent.substring(2), 16);
                } else {
                    code = Integer.parseInt(ent.substring(1));
                }
                sb.appendCodePoint(code);
            } else {
                switch (ent) {
                    case "amp" -> sb.append('&');
                    case "lt" -> sb.append('<');
                    case "gt" -> sb.append('>');
                    case "quot" -> sb.append('"');
                    case "apos" -> sb.append('\'');
                    case "nbsp" -> sb.append('\u00A0');
                }
            }
            last = m.end();
        }
        sb.append(s, last, s.length());
        return sb.toString();
    }
}
