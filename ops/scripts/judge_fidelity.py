#!/usr/bin/env python3
"""Big-model fidelity judge for translated blog paragraphs (VRAM-gated).

New capability — the lexical triage (`paragraph_triage.py`) can prove that a
number, citation, or word run is missing; it is structurally blind to semantic
inversion ('patients improved' -> 'patients worsened' scores 0.00). This script
is the capability step-up for that class: a large local model judges each
EN/target paragraph pair as FAITHFUL / DRIFT / OMIT / ADD / CONTRADICTS and
proposes the exact replacement sentence.

It judges a *worklist*, not the whole corpus: feed it the ranked output of
`paragraph_triage.py` (soft-signal pairs first).

Model: `unsloth/LFM2.5-24B-A2B-GGUF` quant `IQ3_XXS` (8.5 GiB), started
through `unsloth studio run` using the same server code as `translate_blog.py`.

VRAM gate: this session's own model server holds ~9.7 GiB and unloads after
900 s idle. The script therefore refuses to load the judge model until
`nvidia-smi` reports at least `--min-free-mib` free, polling every
`--poll-seconds`. Do not issue agent/model requests while it runs: they reload
the session model, steal the VRAM, and stall both.

Usage
-----
    python3 ops/scripts/paragraph_align.py --json tmp/align.json
    python3 ops/scripts/paragraph_triage.py --align tmp/align.json --json tmp/triage.json
    python3 ops/scripts/paragraph_triage.py --align tmp/align.json --json tmp/triage.json --soft-only
    nohup python3 -u ops/scripts/judge_fidelity.py \
        --pairs tmp/judge/semantic-sweep.json --out tmp/judge/verdicts.jsonl \
        > /tmp/opencode/judge.log 2>&1 &

Verification
------------
    python3 ops/scripts/judge_fidelity.py --selftest

Expected outcome: the controls print a verdict per case, the faithful pair
must come back FAITHFUL, the inverted pair must come back CONTRADICTS, the
omitting pair must come back OMIT. Selftest does not need the GPU gate because
it uses `--min-free-mib 0` against an already-running server if one is given;
without a server it prints `skipped (no server)` and exits 0.

Semantics
---------
Read-only with respect to the repository: it writes only `--out` (JSONL, under
`tmp/`), never `src/`. Verdicts are advisory for a human or a fix agent; the
script never edits a translation. It resumes: ids already present in `--out`
are skipped, so reruns add only new judgments. `--strict` exits 1 if any
verdict is CONTRADICTS (CI gate after a fix pass).
"""

from __future__ import annotations

import argparse
import json
import re
import subprocess
import sys
import threading
import time
import urllib.error
import urllib.request
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(REPO_ROOT / "ops" / "scripts"))

from translate_blog import LocalServer, ModelClient, ModelConfig  # noqa: E402

DEFAULT_MODEL = "unsloth/LFM2.5-24B-A2B-GGUF"
DEFAULT_VARIANT = "IQ3_XXS"

VERDICTS = ("FAITHFUL", "DRIFT", "OMIT", "ADD", "CONTRADICTS")

SYSTEM = """You are a strict translation-fidelity judge for medical text.

You receive one English source paragraph and its translation (Spanish or
Portuguese). Decide whether the translation carries the same claims.

Verdicts:
- FAITHFUL: every claim, qualifier, number, and named entity matches. Natural
  idiomatic rewriting is FAITHFUL, not a defect.
- DRIFT: a claim's strength, scope, comparison direction, or certainty changed
  (for example 'may improve' -> 'improves', 'twice the rate' -> 'more
  common', 'candidate mechanism' -> 'established mechanism').
- OMIT: content present in English is missing (a clause, qualifier, number,
  citation anchor, named entity, or whole sentence).
- ADD: the translation asserts something the English does not say.
- CONTRADICTS: a statement means the opposite of the English (polarity,
  causality, subject/object, increase/decrease, who-does-what).

Rules:
- Terminology differences are NOT defects when they are standard target-language
  usage (EM/SFC, TDAH, PHDA, glifático, mastocito/mastócito, noradrenalina).
- Acronyms, identifiers, author names, journal names, URLs, citation keys, and
  formulas are expected to stay as written; do not report them.
- Locale number formatting is expected (es-ES/pt-PT write 1.000 and 0,5).
  Statistical notation keeps its df/argument separators (F(1,18)).
- Judge meaning, not style. Never propose stylistic rewording.
- Quote exact fragments from the translation for missing/added/opposite items.
  If a fix is needed, give the corrected target sentence verbatim, keeping
  citation keys, links, math, and Markdown untouched.

Answer with a single JSON object only:
{"verdict":"FAITHFUL|DRIFT|OMIT|ADD|CONTRADICTS","missing":[...],"added":[...],
 "fix":"<replacement sentence, empty string if none>","reason":"<one short line>"}"""

USER = """Judge this pair. English source first, then the translation.

ENGLISH SOURCE:
{en}

TRANSLATION ({lang}):
{target}
{signals}

Return only the JSON object."""

SIGNAL_HINT = "\nMechanical triage already flagged these signals (verify them, they may be artifacts): {signals}\n"

SELFTEST_CASES = [
    {
        "name": "faithful",
        "en": "In the trial, 42 of 100 patients improved by 30% on the 48-hour follow-up, which supports the mitochondrial hypothesis. The effect was not sustained after 12 weeks.",
        "target": "En el ensayo, 42 de 100 pacientes mejoraron un 30% en el seguimiento de 48 horas, lo que respalda la hipótesis mitocondrial. El efecto no se sostuvo tras 12 semanas.",
        "expect": "FAITHFUL",
    },
    {
        "name": "inverted",
        "en": "In the trial, 42 of 100 patients improved by 30% on the 48-hour follow-up, which supports the mitochondrial hypothesis. The effect was not sustained after 12 weeks.",
        "target": "En el ensayo, 42 de 100 pacientes empeoraron un 30% en el seguimiento de 48 horas, lo que refuta la hipótesis mitocondrial. El efecto se sostuvo tras 12 semanas.",
        "expect": "CONTRADICTS",
    },
    {
        "name": "omitted",
        "en": "In the trial, 42 of 100 patients improved by 30% on the 48-hour follow-up, which supports the mitochondrial hypothesis. The effect was not sustained after 12 weeks.",
        "target": "En el ensayo, los pacientes mejoraron en el seguimiento, lo que respalda la hipótesis mitocondrial. El efecto no se sostuvo.",
        "expect": "OMIT",
    },
]


def free_vram_mib() -> int:
    try:
        out = subprocess.run(
            ["nvidia-smi", "--query-gpu=memory.free", "--format=csv,noheader,nounits"],
            capture_output=True, text=True, timeout=20,
        ).stdout.strip()
        return int(out.splitlines()[0])
    except Exception:  # noqa: BLE001
        return 0


def wait_for_vram(min_free: int, poll: int, max_minutes: int) -> bool:
    deadline = time.time() + max_minutes * 60
    printed = False
    while time.time() < deadline:
        free = free_vram_mib()
        if free >= min_free:
            print(f"[gate] {free} MiB free; proceeding")
            return True
        if not printed:
            print(f"[gate] waiting for VRAM: {free} MiB free, need {min_free} MiB "
                  f"(the session model unloads after ~900 s idle)")
            printed = True
        time.sleep(poll)
    print(f"[gate] timed out after {max_minutes} min; aborting", file=sys.stderr)
    return False


def parse_verdict(text: str) -> dict[str, object] | None:
    match = re.search(r"\{.*\}", text, re.S)
    if not match:
        return None
    try:
        data = json.loads(match.group(0))
    except json.JSONDecodeError:
        return None
    verdict = str(data.get("verdict", "")).upper().strip()
    if verdict not in VERDICTS:
        return None
    return {
        "verdict": verdict,
        "missing": data.get("missing") or [],
        "added": data.get("added") or [],
        "fix": str(data.get("fix") or ""),
        "reason": str(data.get("reason") or ""),
    }


def judge_pair(client: ModelClient, pair: dict[str, object], model: str) -> dict[str, object]:
    signals = pair.get("signals") or {}
    # Paragraphs are truncated to 3500 chars: the 8.5 GiB judge model runs with
    # a 4096-token context on a 12 GiB GPU, so a 1500-word block would overflow
    # the KV budget. Median blocks are ~600 chars; a truncated tail is judged
    # in the following paragraph window.
    user = USER.format(
        en=pair["en"][:3500],
        lang=pair["lang"],
        target=pair["target"][:3500],
        signals=SIGNAL_HINT.format(signals=json.dumps(signals)) if signals else "",
    )
    last: Exception | None = None
    for attempt in range(3):
        try:
            raw = client.complete(SYSTEM, user, max_tokens=420)
            verdict = parse_verdict(raw)
            if verdict is None:
                raise ValueError(f"unparseable verdict: {raw[:160]!r}")
            return {
                "id": pair["id"], "post": pair["post"], "lang": pair["lang"],
                "block": pair["block"], "triage_signals": signals,
                "triage_score": pair.get("score", 0), **verdict,
            }
        except Exception as exc:  # noqa: BLE001
            last = exc
            user = USER.format(
                en=pair["en"][:3500], lang=pair["lang"], target=pair["target"][:3500],
                signals="\n\nAnswer with JSON only. No prose.",
            )
            time.sleep(2 * (attempt + 1))
    return {
        "id": pair["id"], "post": pair["post"], "lang": pair["lang"],
        "block": pair["block"], "verdict": "ERROR", "reason": str(last)[:200],
    }


def selftest(args: argparse.Namespace) -> int:
    client = ModelClient(ModelConfig(args.base_url, args.api_key, args.model, timeout=60))
    if not client.healthy():
        print("skipped (no server)")
        return 0
    passed = 0
    for case in SELFTEST_CASES:
        pair = {"id": f"selftest|{case['name']}", "post": "selftest", "lang": "es",
                "block": 0, "en": case["en"], "target": case["target"], "signals": {}, "score": 0}
        result = judge_pair(client, pair, args.model)
        ok = result.get("verdict") == case["expect"]
        passed += 1 if ok else 0
        print(f"  control {case['name']:10s} verdict {result.get('verdict'):12s} "
              f"expect {case['expect']:12s} {'PASS' if ok else 'FAIL'}  {result.get('reason','')[:70]}")
    print(f"selftest {passed}/{len(SELFTEST_CASES)} pass")
    return 0 if passed == len(SELFTEST_CASES) else 1


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--pairs", default="tmp/judge/semantic-sweep.json")
    parser.add_argument("--out", default="tmp/judge/verdicts.jsonl")
    parser.add_argument("--model", default=DEFAULT_MODEL)
    parser.add_argument("--gguf-variant", default=DEFAULT_VARIANT)
    parser.add_argument("--base-url", default="http://127.0.0.1:8899")
    parser.add_argument("--api-key", default=None)
    parser.add_argument("--port", type=int, default=8899)
    parser.add_argument("--context", type=int, default=4096)
    parser.add_argument("--jobs", type=int, default=2)
    parser.add_argument("--min-free-mib", type=int, default=10000)
    parser.add_argument("--poll-seconds", type=int, default=60)
    parser.add_argument("--max-wait-minutes", type=int, default=360)
    parser.add_argument("--limit", type=int)
    parser.add_argument("--no-gate", action="store_true")
    parser.add_argument("--selftest", action="store_true")
    parser.add_argument("--strict", action="store_true")
    args = parser.parse_args(argv)

    if args.selftest:
        return selftest(args)

    pairs_path = Path(args.pairs)
    if not pairs_path.exists():
        print(f"ERROR: {pairs_path} not found", file=sys.stderr)
        return 2
    pairs = json.loads(pairs_path.read_text(encoding="utf-8"))
    pairs.sort(key=lambda p: (-float(p.get("score", 0)), p["post"]))

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
    if args.limit:
        pairs = pairs[: args.limit]
    print(f"{len(pairs)} pairs to judge ({len(done)} already done)")
    if not pairs:
        return 0

    if not args.no_gate and not wait_for_vram(args.min_free_mib, args.poll_seconds, args.max_wait_minutes):
        return 3

    server: LocalServer | None = None
    base_url, api_key = args.base_url, args.api_key
    client = ModelClient(ModelConfig(base_url, api_key, args.model, timeout=120))
    if not client.healthy():
        server = LocalServer(args.model, args.gguf_variant, args.port, args.context, max(2, args.jobs))
        server.start()
        base_url, api_key = server.base_url, server.api_key
        print(f"[judge] model ready at {base_url}")
        client = ModelClient(ModelConfig(base_url, api_key, args.model, timeout=120))

    counts: dict[str, int] = {}
    lock = threading.Lock()
    written = 0
    try:
        with out_path.open("a", encoding="utf-8") as sink:
            with ThreadPoolExecutor(max_workers=args.jobs) as pool:
                futures = [pool.submit(judge_pair, client, pair, args.model) for pair in pairs]
                for index, future in enumerate(as_completed(futures), start=1):
                    result = future.result()
                    with lock:
                        sink.write(json.dumps(result, ensure_ascii=False) + "\n")
                        sink.flush()
                        written += 1
                        counts[result["verdict"]] = counts.get(result["verdict"], 0) + 1
                        if index % 25 == 0 or index == len(pairs):
                            print(f"[judge] {index}/{len(pairs)} {counts}")
    finally:
        if server:
            server.stop()

    print(f"wrote {written} verdicts to {out_path}")
    print("verdict totals:", counts)
    if args.strict and counts.get("CONTRADICTS"):
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
