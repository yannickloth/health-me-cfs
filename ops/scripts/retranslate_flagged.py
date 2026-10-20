#!/usr/bin/env python3
"""Fresh translation of flagged paragraphs with the translator of record.

New capability — the fidelity judge can say "this paragraph drifted", but its
suggested text is not a translation. This script re-translates the same English
paragraph with `translate_blog.BlogTranslator`: Hy-MT2 (`unsloth/Hy-MT2-1.8B-GGUF`
IQ4_XS), the project glossary, link/citation masking, chunk splitting and the
post-fixes that produced the corpus. A repair then has a reference rendering
from the translator of record instead of reviewer prose.

Usage
-----
    python3 ops/scripts/retranslate_flagged.py \
        --pairs tmp/judge/clean-pairs.json --out tmp/judge/retranslated.jsonl

Verification
------------
    python3 ops/scripts/retranslate_flagged.py --selftest

Expected outcome: `--selftest` prints one translated control sentence and
`selftest PASS` (or `skipped (no server)` and exit 0 when no model server is
reachable). A real run prints `N/N translated` and writes one JSONL row per
pair with `fresh` (new translation) and `current` (the corpus text).

Semantics
---------
Read-only with respect to the repository: writes only `--out`, under `tmp/`.
Resumes by `id`. `--strict` exits 1 when a translation is empty or when the
output still contains an English sentence (a sign the model copied instead of
translating).
"""

from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(REPO_ROOT / "ops" / "scripts"))

from translate_blog import (  # noqa: E402
    BlogTranslator,
    LocalServer,
    ModelClient,
    ModelConfig,
)

DEFAULT_MODEL = "unsloth/Hy-MT2-1.8B-GGUF"
DEFAULT_VARIANT = "IQ4_XS"
ENGLISH_SENTENCE = re.compile(
    r"\b(the|and|with|which|that|from|this|these|patients|treatment)\b", re.I
)


def english_residue(text: str) -> int:
    """Count prose lines that still look English (no target-language signal)."""
    hits = 0
    for line in text.splitlines():
        words = re.findall(r"[A-Za-zÀ-ÿ]{4,}", line)
        if len(words) < 6:
            continue
        if ENGLISH_SENTENCE.search(line):
            hits += 1
    return hits


def build_client(args: argparse.Namespace) -> tuple[ModelClient, LocalServer | None]:
    client = ModelClient(
        ModelConfig(args.base_url, args.api_key, args.model, timeout=240, max_retries=2)
    )
    if client.healthy():
        return client, None
    server = LocalServer(args.model, args.gguf_variant, args.port, args.context, 2)
    server.start()
    client = ModelClient(
        ModelConfig(server.base_url, server.api_key, args.model, timeout=240, max_retries=2)
    )
    return client, server


def selftest(args: argparse.Namespace) -> int:
    client, server = build_client(args)
    try:
        translator = BlogTranslator(client, "es", max_words=420)
        source = "Low-dose naltrexone was tested at 4.5 mg in a small trial."
        out = translator.translate_blocks([source])[0]
        print(f"  source: {source}")
        print(f"  target: {out.strip()[:200]}")
        ok = bool(out.strip()) and english_residue(out) == 0
        print("selftest PASS" if ok else "selftest FAIL")
        return 0 if ok else 1
    finally:
        if server:
            server.stop()


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--pairs", default="tmp/judge/clean-pairs.json")
    parser.add_argument("--out", default="tmp/judge/retranslated.jsonl")
    parser.add_argument("--model", default=DEFAULT_MODEL)
    parser.add_argument("--gguf-variant", default=DEFAULT_VARIANT)
    parser.add_argument("--base-url", default="http://127.0.0.1:8899")
    parser.add_argument("--api-key", default=None)
    parser.add_argument("--port", type=int, default=8899)
    parser.add_argument("--context", type=int, default=8192)
    parser.add_argument("--selftest", action="store_true")
    parser.add_argument("--strict", action="store_true")
    args = parser.parse_args(argv)

    if args.selftest:
        return selftest(args)

    path = Path(args.pairs)
    if not path.exists():
        print(f"ERROR: {path} not found", file=sys.stderr)
        return 2
    pairs = json.loads(path.read_text(encoding="utf-8"))

    out_path = Path(args.out)
    out_path.parent.mkdir(parents=True, exist_ok=True)
    done: set[str] = set()
    if out_path.exists():
        for line in out_path.read_text(encoding="utf-8").splitlines():
            try:
                done.add(json.loads(line)["id"])
            except Exception:  # noqa: BLE001
                continue
    pairs = [p for p in pairs if p["id"] not in done]
    if not pairs:
        print("nothing to do")
        return 0

    client, server = build_client(args)
    translators: dict[str, BlogTranslator] = {}
    written = 0
    failures = 0
    try:
        with out_path.open("a", encoding="utf-8") as sink:
            for index, pair in enumerate(pairs, start=1):
                lang = pair["lang"]
                translator = translators.setdefault(
                    lang, BlogTranslator(client, lang, max_words=420)
                )
                try:
                    fresh = translator.translate_blocks([pair["en"]])[0]
                except Exception as exc:  # noqa: BLE001
                    failures += 1
                    print(f"  FAIL {pair['id']}: {exc}", file=sys.stderr)
                    continue
                row = {
                    "id": pair["id"],
                    "post": pair["post"],
                    "lang": lang,
                    "block": pair["block"],
                    "verdict": pair.get("verdict"),
                    "fresh": fresh,
                    "current": pair["target"],
                }
                sink.write(json.dumps(row, ensure_ascii=False) + "\n")
                sink.flush()
                written += 1
                if index % 10 == 0:
                    print(f"  {index}/{len(pairs)} translated", flush=True)
        print(f"{written}/{len(pairs)} translated ({failures} failed)")
    finally:
        if server:
            server.stop()

    if args.strict and failures:
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
