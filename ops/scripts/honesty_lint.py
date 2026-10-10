#!/usr/bin/env python3
"""honesty_lint.py — deterministic strong-claim linter for .typ sources.

Adapted from Polaris tools/honestidad_lint.py (BeyondTheProtocol), 2026-10-10.

Finds lines that make STRONG claims (absolutes, option-killing negatives)
without an evidence stamp on the same line (citation, hedge, or explicit
stamp). It catches a class of pattern, not all falsehood — it is one layer
only — not the whole safety case.

Modes:
  default  WARN  — print findings, exit 0 (measure false positives first)
  --strict        — print findings, exit 1 (enable only after FP measurement)

Inputs: file paths as arguments. No arguments → changed .typ files via git
(staged+unstaged diff vs HEAD + untracked), matching the pipeline's
changed-file collection.

Polaris doctrine (keep with the script):
  - Start in warn mode; move to strict only after measured false-positive rate.
  - Never silence a trigger wholesale; refine patterns instead.
"""
from __future__ import annotations

import argparse
import re
import subprocess
import sys
from pathlib import Path

# ---- Strong-claim triggers -------------------------------------------------
TRIGGERS: list[tuple[str, str]] = [
    # (tag, regex)
    ("absolute",        r"\balways\b"),
    ("absolute",        r"\bnever\b"),
    ("absolute",        r"\ball patients\b"),
    ("absolute",        r"\bevery patient\b"),
    ("absolute",        r"\bwithout exception\b"),
    ("absolute",        r"\binvariably\b"),
    ("absolute",        r"\bimpossible\b"),
    ("absolute",        r"\bproven\b"),
    ("absolute",        r"\bdisproven\b"),
    ("absolute",        r"\bdefinitively\b"),
    ("absolute",        r"\bundoubtedly\b"),
    ("absolute",        r"\bcertainly\b"),
    ("absolute",        r"\bguarantee(s|d)?\b"),
    ("absolute",        r"\bconclusively\b"),
    ("absolute",        r"\bthe only (treatment|therapy|explanation|cause|mechanism)\b"),
    ("absolute",        r"\bfully explains\b"),
    ("absolute",        r"\bcompletely (explains|accounts for|resolves|abrogates|prevents)\b"),
    ("absolute",        r"\bno evidence whatsoever\b"),
    ("absolute",        r"\bcurative\b"),
    ("neg-killer",      r"\bdoes not work\b"),
    ("neg-killer",      r"\bdoesn't work\b"),
    ("neg-killer",      r"\bcannot treat\b"),
    ("neg-killer",      r"\bis not effective\b"),
    ("neg-killer",      r"\bare not effective\b"),
    ("neg-killer",      r"\bno benefit\b"),
    ("neg-killer",      r"\bshould be abandoned\b"),
    ("neg-killer",      r"\bis useless\b"),
    ("neg-killer",      r"\bno role\b"),
]

# ---- Evidence stamps that exempt a line ------------------------------------
STAMPS: list[str] = [
    r"@[A-Za-z][A-Za-z0-9_]*",                # Typst citation @CiteKey
    r"\bmay\b", r"\bmight\b", r"\bcould\b",
    r"\bsuggest(s|ed|ing)?\b",
    r"\bappear(s|ed)?\b",
    r"\bpossible\b", r"\bpossibly\b",
    r"\bprobable\b", r"\blikely\b", r"\bunlikely\b",
    r"\bhypothes(is|ize|ized|ise|ised|es)\b",
    r"\bspeculat(e|es|ed|ive|ion)\b",
    r"\bproposed?\b",
    r"\bplausible\b",
    r"\bconsistent with\b",
    r"\bunknown\b", r"\buncertain(t)?\b",
    r"\bsome\b", r"\bseveral\b", r"\bmany\b",
    r"\bin vitro\b", r"\bin vivo\b", r"\bin (mice|rats|cells|silico)\b",
    r"\bpreliminary\b",
    r"\bnot yet\b",
    r"\bremains?\b",
    r"\[verificado\]|\[verified\]|\[literatura\]|\[literature\]|\[supuesto\]|\[assumption\]|\[incierto\]",
    r"\bcertainty\b", r"\btier:", r"\bCap\b",
    r"\bcontra(s|ry)?\b",  # "contrary", "contrasts" soften
]

TRIGGER_RES = [(tag, re.compile(pat)) for tag, pat in TRIGGERS]
STAMP_RE = re.compile("|".join(STAMPS), re.IGNORECASE)
COMMENT_RE = re.compile(r"^\s*//")

SKIP_PREFIXES = ("#", "<")  # headings, labels, function-ish lines starting with #


def changed_typ_files() -> list[Path]:
    def run(cmd: list[str]) -> list[str]:
        try:
            out = subprocess.run(cmd, capture_output=True, text=True, check=True).stdout
            return [l for l in out.splitlines() if l.endswith(".typ")]
        except subprocess.CalledProcessError:
            return []
    files = run(["git", "diff", "--name-only", "HEAD"]) + run(["git", "ls-files", "--others", "--exclude-standard"])
    return sorted(set(files))


def scan_file(path: Path) -> list[tuple[int, str, str]]:
    findings: list[tuple[int, str, str]] = []
    in_code = False
    try:
        lines = path.read_text().splitlines()
    except (UnicodeDecodeError, OSError):
        return findings
    for no, line in enumerate(lines, 1):
        if line.strip().startswith("```"):
            in_code = not in_code
            continue
        if in_code or COMMENT_RE.match(line):
            continue
        if line.lstrip().startswith(SKIP_PREFIXES):
            continue
        m = None
        tag = ""
        for t, rx in TRIGGER_RES:
            m = rx.search(line)
            if m:
                tag = t
                break
        if not m:
            continue
        if STAMP_RE.search(line):
            continue
        findings.append((no, tag, line.strip()[:120]))
    return findings


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    ap.add_argument("files", nargs="*", help=".typ files to scan (default: git-changed)")
    ap.add_argument("--strict", action="store_true", help="exit 1 when findings exist")
    args = ap.parse_args()

    files = [Path(f) for f in args.files] if args.files else changed_typ_files()
    if not files:
        print("honesty_lint: no files to scan (no args, no git changes)")
        return 0

    total = 0
    for f in files:
        if not f.exists():
            print(f"honesty_lint: missing file {f}")
            continue
        for no, tag, text in scan_file(f):
            total += 1
            print(f"{f}:{no}: [{tag}] {text}")

    mode = "STRICT" if args.strict else "WARN"
    print(f"honesty_lint: {total} finding(s) in {len(files)} file(s) — mode {mode}")
    if args.strict and total:
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
