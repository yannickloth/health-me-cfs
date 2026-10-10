#!/usr/bin/env python3
"""fragment_drift.py — transcript-drift / congruence check for fragment files.

Adapted from Polaris tools/incongruencias_caso.py + fuente_clinica.py epistemics
(BeyondTheProtocol), 2026-10-10.

Verifies the fragment ledger written per the pipeline's Phase 3 fragment rule
(`ops/research/fragments-<topic-slug>-<date>.md`, one line per claim:

    @CiteKey | figure(s) | "literal quoted fragment >=15 chars" | page/section

Checks (deterministic, no LLM):
  1. SOURCE_MISSING    — no PDF found for the cite key under Literature/
                         -> unresolvable; not treated as fabrication.
  2. SOURCE_UNREADABLE — PDF present but text extraction failed -> warn only.
  3. FRAGMENT_DRIFT    — quoted fragment not contained in the extracted PDF text
                         -> copy error, translation substitution, or invented
                         fragment; blocking in strict mode.
  4. FIGURE_MISMATCH   — a listed figure does not appear in the quoted fragment.
  5. FIGURE_ABSENT     — figure not found in the whole source text (soft signal;
                         extraction can mangle tables).
  6. INCONGRUENCE      — same @CiteKey + same page/section with DIFFERENT figure
                         sets (same sample, two numbers). Repeats with the same
                         figures are normal (many claims per paper).

Extraction uses pdftotext (poppler). If it is missing, every check degrades to
SOURCE_UNREADABLE — warn only; that outcome is not an accusation.

Usage:
  python3 ops/scripts/fragment_drift.py [fragment-files...] [--strict] [--literature DIR]
No fragment files given -> all ops/research/fragments-*.md.
"""
from __future__ import annotations

import argparse
import re
import shutil
import subprocess
import sys
import unicodedata
from difflib import SequenceMatcher
from pathlib import Path

FRAGMENT_GLOB = "ops/research/fragments-*.md"
LINE_RE = re.compile(r"^\s*(@[A-Za-z][\w]*)\s*\|([^|]*)\|(.*)$")
YEAR_RE = re.compile(r"\b(1[89]\d{2}|20[0-9]{2}|21[0-9]{2})\b")
FIGURE_RE = re.compile(r"\d+(?:[.,]\d+)?%?")
QUOTED_RE = re.compile(r'"([^"]{15,})"')


def norm(s: str) -> str:
    """NFKD-fold, strip punctuation, collapse whitespace."""
    s = unicodedata.normalize("NFKD", s)
    s = "".join(c for c in s if not unicodedata.combining(c))
    s = s.lower()
    s = re.sub(r"[^a-z0-9%\s]", " ", s)
    return re.sub(r"\s+", " ", s).strip()


def pdf_text(pdf: Path) -> str | None:
    if shutil.which("pdftotext") is None:
        return None
    try:
        out = subprocess.run(
            ["pdftotext", "-q", str(pdf), "-"],
            capture_output=True, text=True, timeout=60,
        )
        return out.stdout if out.returncode == 0 else None
    except (subprocess.TimeoutExpired, OSError):
        return None


class SourceIndex:
    """One cached listing + one cached text per PDF."""

    def __init__(self, lit_root: Path):
        self.root = lit_root
        self.pdfs = sorted(lit_root.rglob("*.pdf")) if lit_root.exists() else []
        self._text: dict[Path, str | None] = {}

    def resolve(self, key: str) -> Path | None:
        stem = key.lstrip("@").lower()
        cands = [p for p in self.pdfs if stem in p.stem.lower()]
        return min(cands, key=lambda p: len(p.stem)) if cands else None

    def text(self, pdf: Path) -> str | None:
        if pdf not in self._text:
            self._text[pdf] = pdf_text(pdf)
        return self._text[pdf]


def parse_fragments(path: Path):
    rows = []
    for no, line in enumerate(path.read_text().splitlines(), 1):
        if not line.strip() or line.lstrip().startswith("#"):
            continue
        m = LINE_RE.match(line)
        if not m:
            continue
        key, figs_field, rest = m.group(1), m.group(2), m.group(3)
        q = QUOTED_RE.search(rest)
        fragment = q.group(1) if q else ""
        page_tail = rest[q.end():].lstrip("| ") if q else rest.lstrip("| ")  # page/section comes AFTER the quote
        figs = [f for f in FIGURE_RE.findall(figs_field + " " + fragment)
                if not YEAR_RE.fullmatch(f)]
        rows.append({
            "file": path, "line": no, "key": key,
            "figs": figs,
            "page": page_tail.strip() or "-",
            "fragment": fragment, "raw": line.strip()[:110],
        })
    return rows


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    ap.add_argument("files", nargs="*", help="fragment ledger files (default: all ops/research/fragments-*.md)")
    ap.add_argument("--literature", default="Literature", help="root dir holding source PDFs")
    ap.add_argument("--strict", action="store_true", help="exit 1 on FRAGMENT_DRIFT or INCONGRUENCE")
    args = ap.parse_args()

    frag_files = [Path(f) for f in args.files] or sorted(Path().glob(FRAGMENT_GLOB))
    if not frag_files:
        print("fragment_drift: no fragment ledgers found — nothing to check")
        return 0
    src = SourceIndex(Path(args.literature))
    if not src.pdfs:
        print(f"fragment_drift: no PDFs under '{args.literature}' — SOURCE checks degrade to unresolvable")

    rows = []
    for f in frag_files:
        if f.exists():
            rows.extend(parse_fragments(f))
        else:
            print(f"fragment_drift: missing file {f}")
    if not rows:
        print("fragment_drift: no fragment rows parsed")
        return 0

    verdicts: list[str] = []
    n_drift = n_incong = 0
    pages_seen: dict[tuple[str, str], frozenset[str]] = {}

    for r in rows:
        pdf = src.resolve(r["key"])
        if pdf is None:
            verdicts.append(f'{r["file"]}:{r["line"]}: [SOURCE_MISSING] {r["key"]} — no PDF in {src.root}/ (unresolvable, not an accusation)')
            continue
        text = src.text(pdf)
        if text is None:
            verdicts.append(f'{r["file"]}:{r["line"]}: [SOURCE_UNREADABLE] {pdf.name} — pdftotext failed/missing; check by hand')
            continue
        n_frag, n_text = norm(r["fragment"]), norm(text)
        if n_frag and n_frag not in n_text:
            ratio = max((SequenceMatcher(None, n_frag, n_text[i:i + len(n_frag)]).ratio()
                         for i in range(0, max(1, len(n_text) - len(n_frag)), 200)), default=0)
            verdicts.append(f'{r["file"]}:{r["line"]}: [FRAGMENT_DRIFT] {r["key"]} — fragment not in source (near-match {ratio:.0%}): "{r["fragment"][:80]}..."')
            n_drift += 1
            continue
        for fig in r["figs"]:
            if fig not in r["fragment"]:
                verdicts.append(f'{r["file"]}:{r["line"]}: [FIGURE_MISMATCH] {r["key"]} figure {fig} not in quoted fragment')
            elif fig.replace(",", ".") not in n_text and fig not in text:
                verdicts.append(f'{r["file"]}:{r["line"]}: [FIGURE_ABSENT] {r["key"]} figure {fig} not found in source text (soft — tables may extract badly)')
        # congruence: same key + same page/section must not carry different figure sets
        slot = (r["key"], norm(r["page"]))
        figset = frozenset(r["figs"])
        if slot in pages_seen and pages_seen[slot] != figset:
            verdicts.append(f'{r["file"]}:{r["line"]}: [INCONGRUENCE] {r["key"]} on "{r["page"]}" lists figures {sorted(figset)} but earlier line(s) list {sorted(pages_seen[slot])} — same sample, two numbers?')
            n_incong += 1
        elif slot in pages_seen:
            verdicts.append(f'{r["file"]}:{r["line"]}: [DUPLICATE] {r["key"]} on "{r["page"]}" repeats an identical figure set — drop one or split the page field')
        pages_seen[slot] = figset

    print("\n".join(verdicts) if verdicts else "fragment_drift: all parsed fragments verified against sources")
    print(f"fragment_drift: {len(rows)} fragment row(s), {len(verdicts)} finding(s) ({n_drift} drift, {n_incong} incongruence) — mode {'STRICT' if args.strict else 'WARN'}")
    if args.strict and (n_drift or n_incong):
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
