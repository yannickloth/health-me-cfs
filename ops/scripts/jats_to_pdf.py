#!/usr/bin/env python3
"""Render a JATS XML full text to PDF with Typst.

Replaces / extends
------------------
New capability. Publishers (Wiley, PMC, MDPI, Europe PMC render endpoints)
answer automated requests with bot-challenge HTML, so a publisher PDF cannot
always be filed for an INCLUDED paper. Europe PMC still serves the complete
JATS full text from the EBI REST host, which is not challenge-gated. This
script turns that full text into a readable PDF archive so Phase 1 keeps a
verifiable full-text artifact on disk instead of degrading to abstract-only.

Provenance rule: a PDF produced here is NOT the publisher's typeset PDF. The
search log must record the provenance string for every paper filed this way.

Usage
-----
    python3 ops/scripts/jats_to_pdf.py <input.xml> <output.pdf>

Verify
------
    python3 ops/scripts/jats_to_pdf.py /tmp/x.xml /tmp/x.pdf
    file /tmp/x.pdf      -> "PDF document"
    pdfinfo /tmp/x.pdf   -> Pages >= 2
    pdftotext /tmp/x.pdf - | head -20   -> paper title present

Semantics
---------
Warn, never silent: an element the converter cannot represent is skipped and
counted, and the count is printed on stderr. Exit code 0 on a written PDF,
1 when the JATS body is empty or Typst fails to compile.
"""

import re
import subprocess
import sys
import tempfile
from pathlib import Path
from xml.etree import ElementTree as ET

TYPST_SPECIALS = re.compile(r"([\\#$*_`<>@\[\]~])")


def esc(text: str) -> str:
    """Escape Typst markup specials in a plain-text run."""
    return TYPST_SPECIALS.sub(r"\\\1", text)


def localname(tag: str) -> str:
    return tag.rsplit("}", 1)[-1]


def find_all(elem, name):
    return [e for e in elem.iter() if localname(e.tag) == name]


def first(elem, name):
    for e in elem.iter():
        if localname(e.tag) == name:
            return e
    return None


def text_of(elem) -> str:
    if elem is None:
        return ""
    return re.sub(r"\s+", " ", "".join(elem.itertext())).strip()


def inline(elem) -> str:
    """Serialize an element's inline content to Typst markup."""
    if elem is None:
        return ""
    parts = []
    if elem.text:
        parts.append(esc(elem.text))
    for child in elem:
        name = localname(child.tag)
        inner = inline(child)
        if name in ("italic", "i"):
            parts.append(f"#emph[{inner}]")
        elif name in ("bold", "b"):
            parts.append(f"#strong[{inner}]")
        elif name in ("sup", "xref", "ext-link", "uri"):
            parts.append(inner)
        elif name in ("sub",):
            parts.append(inner)
        else:
            parts.append(inner)
        if child.tail:
            parts.append(esc(child.tail))
    return "".join(parts)


def front_matter(root) -> list[str]:
    out = []
    front = first(root, "front")
    if front is None:
        return out
    title = first(front, "article-title")
    journal = text_of(first(front, "journal-title"))
    doi = None
    for e in find_all(front, "article-id"):
        if e.get("pub-id-type") == "doi":
            doi = text_of(e)
    year = None
    for e in find_all(front, "year"):
        year = text_of(e)
        break
    vol = text_of(first(front, "volume"))
    issue = text_of(first(front, "issue"))
    fpage = text_of(first(front, "fpage"))
    lpage = text_of(first(front, "lpage"))

    if title is not None:
        out.append(f"#align(center)[#text(size: 15pt, weight: \"bold\")[{inline(title)}]]")
        out.append("")
    authors = []
    for contrib in find_all(front, "contrib"):
        if contrib.get("contrib-type") not in (None, "author"):
            continue
        surname = text_of(first(contrib, "surname"))
        given = text_of(first(contrib, "given-names"))
        if surname:
            authors.append(f"{surname} {given}".strip())
    if authors:
        out.append(f"#align(center)[{esc('; '.join(authors))}]")
        out.append("")
    meta = []
    if journal is not None:
        meta.append(f"*{esc(journal)}*")
    loc = ""
    if year:
        loc += year
    if vol:
        loc += f";{vol}"
    if issue:
        loc += f"({issue})"
    if fpage:
        loc += f":{fpage}"
        if lpage:
            loc += f"-{lpage}"
    if loc:
        meta.append(esc(loc))
    if doi:
        meta.append(f"DOI: {esc(doi)}")
    if meta:
        out.append(f"#align(center)[{', '.join(meta)}]")
        out.append("")
    out.append("#line(length: 100%)")
    out.append("")

    for abstract in find_all(front, "abstract"):
        atype = abstract.get("abstract-type") or "Abstract"
        out.append(f"= {esc(atype.capitalize())}")
        for p in abstract:
            if localname(p.tag) == "p":
                out.append(inline(p))
                out.append("")
            elif localname(p.tag) == "title":
                out.append(f"*{inline(p)}*")
                out.append("")
    return out


def walk_body(elem, depth: int, out: list[str], skipped: list[str]) -> None:
    for child in elem:
        name = localname(child.tag)
        if name == "sec":
            title = None
            for sub in child:
                if localname(sub.tag) == "title":
                    title = sub
                    break
            if title is not None:
                level = "=" * min(depth, 5)
                out.append(f"{level} {inline(title)}")
                out.append("")
            walk_body(child, depth + 1, out, skipped)
        elif name == "p":
            body = inline(child)
            if body:
                out.append(body)
                out.append("")
        elif name == "title":
            continue
        elif name == "fig":
            cap = first(child, "caption")
            if cap is not None:
                out.append(f"#quote(block: true)[*Figure.* {inline(cap)}]")
                out.append("")
            else:
                skipped.append("fig(no caption)")
        elif name == "table-wrap":
            cap = first(child, "caption")
            label = text_of(first(child, "label"))
            if cap is not None:
                out.append(f"#quote(block: true)[*{esc(label) or 'Table'}.* {inline(cap)}]")
                out.append("")
            else:
                skipped.append("table(no caption)")
        elif name in ("list",):
            for item in child:
                if localname(item.tag) == "list-item":
                    out.append(f"- {inline(item)}")
            out.append("")
        elif name in ("disp-formula", "disp-quote", "boxed-text", "supplementary-material"):
            skipped.append(name)
        elif name in ("caption", "label"):
            continue
        else:
            walk_body(child, depth, out, skipped)


def back_matter(root) -> list[str]:
    out = []
    back = first(root, "back")
    if back is None:
        return out
    for ref_list in find_all(back, "ref-list"):
        out.append("= References")
        out.append("")
        n = 0
        for ref in ref_list:
            if localname(ref.tag) != "ref":
                continue
            n += 1
            body = text_of(ref)
            if body:
                out.append(f"{n}. {esc(body)}")
                out.append("")
    return out


def build_typ(root) -> tuple[str, list[str]]:
    skipped: list[str] = []
    body = first(root, "body")
    lines = front_matter(root)
    if body is not None:
        walk_body(body, 1, lines, skipped)
    lines += back_matter(root)
    return "\n".join(lines), skipped


def main(argv: list[str]) -> int:
    if len(argv) != 3:
        print(__doc__, file=sys.stderr)
        return 1
    src, dst = Path(argv[1]), Path(argv[2])
    root = ET.fromstring(src.read_text(encoding="utf-8", errors="replace"))
    markup, skipped = build_typ(root)
    if len(markup.strip()) < 500:
        print(f"error: extracted body too small ({len(markup)} chars) for {src}", file=sys.stderr)
        return 1
    preamble = (
        "#set page(paper: \"a4\", margin: 2.2cm, numbering: \"1\")\n"
        "#set text(size: 10pt, hyphenate: true)\n"
        "#set par(justify: true, leading: 0.6em)\n"
        "#set heading(numbering: \"1.1\")\n"
    )
    dst.parent.mkdir(parents=True, exist_ok=True)
    with tempfile.NamedTemporaryFile("w", suffix=".typ", delete=False, encoding="utf-8") as fh:
        fh.write(preamble + markup)
        typ_path = fh.name
    proc = subprocess.run(
        ["typst", "compile", "--root", "/", typ_path, str(dst.resolve())],
        capture_output=True,
        text=True,
    )
    Path(typ_path).unlink(missing_ok=True)
    if proc.returncode != 0:
        print(proc.stderr.strip(), file=sys.stderr)
        return 1
    if skipped:
        print(f"warn: skipped elements in {src.name}: {sorted(set(skipped))}", file=sys.stderr)
    print(f"wrote {dst}")
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))
