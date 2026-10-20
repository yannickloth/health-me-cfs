#!/usr/bin/env python3
"""Align EN blog paragraphs with their ES/PT translations for fidelity triage.

New capability — there was no paragraph-level alignment tool before this
script. Structure parity is already proven (block, citation, heading, link,
number counts match), so block index is a safe alignment key. This script
emits those aligned pairs so a triage scorer (Jev, embeddings, back-
translation) can rank which paragraphs need a semantic judgement, instead of
feeding all 268 files through a judge model.

Usage
-----
    python3 ops/scripts/paragraph_align.py                       # all posts, es + pt
    python3 ops/scripts/paragraph_align.py --only '*ldn*'        # subset
    python3 ops/scripts/paragraph_align.py --json tmp/align.json --min-words 12

Verification
------------
    python3 ops/scripts/paragraph_align.py --only '*sleep-hangover*' --json tmp/a.json
    python3 -c "import json; d=json.load(open('tmp/a.json')); print(len(d['pairs']))"

Expected outcome: one record per aligned paragraph pair, each with `post`,
`lang`, `block`, `en`, `target`, `en_words`, and a `guard` flag that is true
when the block contains only protected material (code, math, citations,
links, URLs, formula quotes) and must not be scored. `pairs` count equals the
number of translatable blocks; skipped posts are reported, never silent.

Semantics
---------
Read-only. Writes nothing under `src/`. Blocks that do not align 1:1
(block-count mismatch) are reported as `misaligned` and excluded, because a
shifted alignment would produce false scores. `--strict` exits 1 when any
post is misaligned.
"""

from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[2]
QUARTO = REPO_ROOT / "src" / "main" / "quarto"
EN_POSTS = QUARTO / "en" / "blog" / "posts"

PROTECTED_ONLY = re.compile(
    r"^[\s|:.>*#`$()\[\]@/\\{}=+–—-]*$"
)  # nothing but structure characters


def split_front(text: str) -> tuple[str, str]:
    match = re.match(r"\A---\r?\n(.*?)\r?\n---\r?\n?", text, re.DOTALL)
    if not match:
        return "", text
    return match.group(1), text[match.end():]


def split_blocks(body: str) -> list[str]:
    """Blank-line blocks, keeping fenced code and display math intact."""
    blocks: list[str] = []
    current: list[str] = []
    fence: str | None = None
    math_fence = False

    def flush() -> None:
        nonlocal current
        if current:
            blocks.append("\n".join(current))
            current = []

    for line in body.splitlines():
        stripped = line.strip()
        if not stripped and fence is None and not math_fence:
            flush()
            continue
        current.append(line)
        if stripped.startswith("```") or stripped.startswith("~~~"):
            marker = stripped[:3]
            if fence is None:
                fence = marker
            elif stripped.startswith(fence):
                fence = None
        elif stripped == "$$":
            math_fence = not math_fence
    flush()
    return [block for block in blocks if block.strip()]


def guard(block: str) -> bool:
    """True when the block has no translatable prose to score."""
    text = re.sub(r"```.*?```", "", block, flags=re.S)
    text = re.sub(r"\$\$.*?\$\$", "", text, flags=re.S)
    text = re.sub(r"!?\[(?:[^\[\]]|\[[^\]]*\])*\]\([^)]*\)", "", text)
    text = re.sub(r"\[[^\]]*@[^\]]+\]", "", text)
    text = re.sub(r"https?://\S+", "", text)
    text = re.sub(r"`[^`\n]+`", "", text)
    text = re.sub(r"\$[^$\n]+\$", "", text)
    text = re.sub(r"^>[^\n]+$", "", text, flags=re.M)      # formula / quote lines
    text = re.sub(r"^#{1,6}\s*", "", text, flags=re.M)
    text = re.sub(r"[*_]", "", text)
    words = re.findall(r"[A-Za-zÀ-ÖØ-öø-ÿ]{4,}", text)
    return len(words) < 3


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--langs", nargs="+", default=["es", "pt"])
    parser.add_argument("--only", help="comma-separated globs / substrings")
    parser.add_argument("--json", default="tmp/align.json")
    parser.add_argument("--min-words", type=int, default=8)
    parser.add_argument("--strict", action="store_true")
    args = parser.parse_args(argv)

    posts = sorted(EN_POSTS.rglob("index.qmd"))
    if args.only:
        from fnmatch import fnmatch

        patterns = [p.strip() for p in args.only.split(",") if p.strip()]
        posts = [
            p
            for p in posts
            if any(
                fnmatch(str(p), pat)
                or fnmatch(str(p.relative_to(EN_POSTS)), pat)
                or pat in str(p)
                for pat in patterns
            )
        ]

    pairs: list[dict[str, object]] = []
    misaligned: list[str] = []
    for post in posts:
        relative = post.relative_to(EN_POSTS).parent
        en_blocks = split_blocks(split_front(post.read_text(encoding="utf-8"))[1])
        for lang in args.langs:
            target = QUARTO / lang / "blog" / "posts" / relative / "index.qmd"
            if not target.exists():
                misaligned.append(f"{lang}:{relative} (missing file)")
                continue
            blocks = split_blocks(split_front(target.read_text(encoding="utf-8"))[1])
            if len(blocks) != len(en_blocks):
                misaligned.append(
                    f"{lang}:{relative} en={len(en_blocks)} target={len(blocks)}"
                )
                continue
            for index, (en_block, target_block) in enumerate(zip(en_blocks, blocks)):
                en_words = len(en_block.split())
                if en_words < args.min_words:
                    continue
                pairs.append(
                    {
                        "id": f"{lang}|{relative}|{index}",
                        "post": str(relative),
                        "lang": lang,
                        "block": index,
                        "en": en_block,
                        "target": target_block,
                        "en_words": en_words,
                        "guard": guard(en_block) or guard(target_block),
                    }
                )

    out = Path(args.json)
    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(
        json.dumps(
            {
                "posts": len(posts),
                "pairs": len(pairs),
                "scoreable": sum(1 for p in pairs if not p["guard"]),
                "misaligned": misaligned,
                "records": pairs,
            },
            ensure_ascii=False,
            indent=1,
        ),
        encoding="utf-8",
    )

    print(
        f"aligned {len(pairs)} paragraph pairs from {len(posts)} posts "
        f"({sum(1 for p in pairs if not p['guard'])} scoreable)"
    )
    for note in misaligned[:10]:
        print(f"  MISALIGNED {note}", file=sys.stderr)
    if args.strict and misaligned:
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
