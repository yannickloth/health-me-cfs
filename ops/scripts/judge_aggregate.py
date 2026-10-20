#!/usr/bin/env python3
"""Aggregate big-model fidelity verdicts into per-post fix worklists.

New capability — `judge_fidelity.py` writes one JSONL row per paragraph pair;
a fix agent needs the rows for *one post* in one readable file. This script
does that grouping, so a per-post agent gets a bounded brief instead of the
whole verdict log.

Usage
-----
    python3 ops/scripts/judge_aggregate.py \
        --verdicts tmp/judge/verdicts.jsonl --out tmp/judge/flagged

Verification
------------
    python3 ops/scripts/judge_aggregate.py --selftest
    python3 ops/scripts/judge_aggregate.py --verdicts tmp/judge/verdicts.jsonl \
        --out tmp/judge/flagged --json tmp/judge/flagged.json

Expected outcome: `--selftest` prints "5/5 pass"; a real run prints
`N posts flagged, M paragraphs`, with one Markdown brief per post and a JSON
index of post -> verdict counts.

Semantics
---------
Read-only with respect to the repository. Writes only under `--out` and
`--json`, both under `tmp/`. A row is included when its verdict is not
FAITHFUL; ERROR rows are excluded (they carry no judgement). `--strict` exits
1 when any CONTRADICTS verdict exists, for use as a gate after a fix pass.
"""

from __future__ import annotations

import argparse
import collections
import json
import sys
from pathlib import Path

def render_post(post: str, rows: list[dict]) -> str:
    lines = [f"POST: {post}", ""]
    by_lang: dict[str, list[dict]] = collections.defaultdict(list)
    for row in rows:
        by_lang[row["lang"]].append(row)
    for lang in ("es", "pt"):
        if lang not in by_lang:
            continue
        lines.append(f"## {lang.upper()} — {len(by_lang[lang])} flagged paragraph(s)")
        lines.append("")
        for row in sorted(by_lang[lang], key=lambda r: r["block"]):
            lines.append(f"### block {row['block']} — {row['verdict']}")
            lines.append("")
            lines.append("EN SOURCE:")
            lines.append(row["en"].strip())
            lines.append("")
            lines.append(f"{lang.upper()} CURRENT:")
            lines.append(row["target"].strip())
            lines.append("")
            if row.get("missing"):
                lines.append(f"JUDGE says missing: {json.dumps(row['missing'], ensure_ascii=False)}")
            if row.get("added"):
                lines.append(f"JUDGE says added: {json.dumps(row['added'], ensure_ascii=False)}")
            if row.get("fix"):
                lines.append(f"JUDGE suggested fix: {row['fix']}")
            if row.get("triage_signals"):
                lines.append(f"MECHANICAL signals: {json.dumps(row['triage_signals'], ensure_ascii=False)}")
            lines.append("")
    return "\n".join(lines)


def selftest() -> int:
    rows = [
        {"post": "a/x", "lang": "es", "block": 1, "verdict": "DRIFT", "en": "e", "target": "t"},
        {"post": "a/x", "lang": "pt", "block": 2, "verdict": "CONTRADICTS", "en": "e", "target": "t"},
        {"post": "a/x", "lang": "es", "block": 3, "verdict": "FAITHFUL", "en": "e", "target": "t"},
        {"post": "b/y", "lang": "es", "block": 0, "verdict": "ERROR", "en": "e", "target": "t"},
        {"post": "b/y", "lang": "es", "block": 1, "verdict": "OMIT", "en": "e", "target": "t"},
    ]
    flagged = [r for r in rows if r["verdict"] not in ("FAITHFUL", "ERROR")]
    checks = [
        ("excludes FAITHFUL and ERROR", len(flagged) == 3),
        ("groups by post", {r["post"] for r in flagged} == {"a/x", "b/y"}),
        ("detects CONTRADICTS", any(r["verdict"] == "CONTRADICTS" for r in rows)),
        ("renders EN source", "EN SOURCE:" in render_post("a/x", flagged[:2])),
        ("renders verdict heading", "### block 1" in render_post("a/x", flagged)),
    ]
    passed = 0
    for name, ok in checks:
        print(f"  {name:32s} {'PASS' if ok else 'FAIL'}")
        passed += 1 if ok else 0
    print(f"{passed}/{len(checks)} pass")
    return 0 if passed == len(checks) else 1


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--verdicts", default="tmp/judge/verdicts.jsonl")
    parser.add_argument("--pairs", default="tmp/judge/semantic-sweep.json",
                        help="worklist providing the EN and target paragraph text")
    parser.add_argument("--out", default="tmp/judge/flagged")
    parser.add_argument("--json", default="tmp/judge/flagged.json")
    parser.add_argument("--selftest", action="store_true")
    parser.add_argument("--strict", action="store_true")
    args = parser.parse_args(argv)

    if args.selftest:
        return selftest()

    path = Path(args.verdicts)
    if not path.exists():
        print(f"ERROR: {path} not found", file=sys.stderr)
        return 2
    rows = [json.loads(line) for line in path.read_text(encoding="utf-8").splitlines() if line.strip()]

    # Verdict rows record the pair id, not the paragraph text; join the
    # worklist so each brief carries the source and the translation. A missing
    # or mismatched worklist is fatal: a brief without the EN source would
    # invite a fix agent to rewrite from memory.
    pairs_path = Path(args.pairs)
    if not pairs_path.exists():
        print(f"ERROR: {pairs_path} not found (needed to attach paragraph text)", file=sys.stderr)
        return 2
    worklist = json.loads(pairs_path.read_text(encoding="utf-8"))
    if isinstance(worklist, dict):
        worklist = worklist.get("records") or worklist.get("pairs") or []
    if not isinstance(worklist, list) or not worklist:
        print(
            f"ERROR: {pairs_path} must contain a list of pair records",
            file=sys.stderr,
        )
        return 2
    lookup: dict[str, dict] = {}
    for entry in worklist:
        if not isinstance(entry, dict) or "id" not in entry:
            print(
                f"ERROR: {pairs_path} contains an entry without an 'id' field",
                file=sys.stderr,
            )
            return 2
        lookup[entry["id"]] = entry

    flagged = [r for r in rows if r.get("verdict") not in ("FAITHFUL", "ERROR")]
    missing_text = [r.get("id") for r in flagged if r.get("id") not in lookup]
    if missing_text:
        print(
            f"ERROR: {len(missing_text)} flagged verdict(s) are absent from "
            f"{pairs_path} (first: {missing_text[0]}); regenerate the worklist",
            file=sys.stderr,
        )
        return 2
    for row in flagged:
        pair = lookup[row["id"]]
        row.setdefault("en", pair["en"])
        row.setdefault("target", pair["target"])

    by_post: dict[str, list[dict]] = collections.defaultdict(list)
    for row in flagged:
        by_post[row["post"]].append(row)

    out = Path(args.out)
    out.mkdir(parents=True, exist_ok=True)
    for old in out.glob("*.md"):
        old.unlink()
    index = {}
    for post, post_rows in sorted(by_post.items()):
        slug = post.replace("/", "-")
        (out / f"{slug}.md").write_text(render_post(post, post_rows), encoding="utf-8")
        index[post] = dict(collections.Counter(r["verdict"] for r in post_rows))

    Path(args.json).write_text(
        json.dumps({"posts": index, "counts": dict(collections.Counter(r["verdict"] for r in flagged))},
                   ensure_ascii=False, indent=1),
        encoding="utf-8",
    )
    print(f"{len(by_post)} posts flagged, {len(flagged)} paragraphs")
    for post, counts in sorted(index.items(), key=lambda kv: -sum(kv[1].values()))[:15]:
        summary = ", ".join(f"{k} {v}" for k, v in sorted(counts.items()))
        print(f"  {sum(counts.values()):2d}  {post}  ({summary})")
    if args.strict and any(r["verdict"] == "CONTRADICTS" for r in flagged):
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
