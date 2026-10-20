#!/usr/bin/env python3
"""Second-translator cross-check for high-risk paragraphs.

New capability — every reviewer in this repo is either the same model that
produced the translation or a judge judging text it did not write. This script
adds an *independent* signal: a different translation model (TranslateGemma)
re-translates the English paragraph, and the two target renderings are compared
on the facts that must not drift — numbers, units, dosing frequencies, negation
counts, and named entities. Agreement is evidence; disagreement is a worklist.

It is not a translator of record and never writes to `src/`. It answers one
question per paragraph: "do two unrelated MT systems agree on what matters?"

Usage
-----
    python3 ops/scripts/cross_check.py --pairs tmp/judge/crossval.json \
        --out tmp/judge/crossval.jsonl --port 8902

Verification
------------
    python3 ops/scripts/cross_check.py --selftest

Expected outcome: `--selftest` runs the comparator on built-in pairs (no
server needed) and prints "all controls pass". A real run prints
`N/N checked, M disagree` and writes one JSONL row per paragraph.

Semantics
---------
Read-only. Writes only `--out` (under tmp/). A row is written with
`agree: false` when a high-risk fact differs between the corpus rendering and
the cross-check rendering; those rows are a review worklist, not defects.
`--strict` exits 1 when any disagreement exists.
"""

from __future__ import annotations

import argparse
import json
import re
import sys
import urllib.request
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / "scripts"))

import dose_gate as dg  # noqa: E402

NUMBER_RE = re.compile(r"\d+(?:[.,]\d+)*")
NEGATIONS = {
    "no", "not", "never", "none", "neither", "nor", "without", "cannot", "can't",
    "sin", "nunca", "ningún", "ningun", "ninguna", "tampoco", "nada", "sem",
    "não", "nao", "nenhum", "nenhuma", "jamais",
}
CAP_TOKEN_RE = re.compile(r"\b[A-Z][A-Za-z0-9-]{2,}\b")
ENTITY_STOP = {
    "The", "This", "That", "These", "Those", "There", "Then", "They", "It",
    "In", "If", "For", "And", "But", "Not", "All", "Any", "One", "Two",
    "What", "Why", "How", "When", "Where", "Which", "Who", "You", "Your",
    "Our", "We", "It", "A", "An", "ME", "CFS",
}


def numbers(text: str) -> list[str]:
    """Comparable numeric values, locale- and format-normalised.

    Erases presentation differences a second translator may legitimately
    introduce: `2000`, `2.000`, `2,000` and `2 000` are one value; `1,234.56`
    and `1.234,56` are one value. A `K`/`M` suffix is expanded (`€2K` == `€2000`).
    """
    cleaned = text.replace("\u00a0", " ").replace("\u202f", " ")
    cleaned = re.sub(r"(?<=\d)\s+(?=\d{3}\b)", "", cleaned)      # 2 000 -> 2000
    values: dict[int, str] = {}

    # An elided currency range carries one suffix for both ends ("€2–5K" =
    # €2 000–5 000). It cannot be expanded from the first number alone, so the
    # whole range is treated as opaque: both renderings of a paragraph write
    # the same elided form, and a partial value would create a false mismatch.
    # The span must include the leading number, which the lookbehind excludes.
    elided = re.compile(r"(\d+(?:[.,]\d+)?)\s*[–—-]\s*(\d+(?:[.,]\d+)?)\s*[KM]\b")
    ranges = [
        (match.start(1), match.end(2)) for match in elided.finditer(cleaned)
    ]

    def in_elided_range(position: int) -> bool:
        return any(start <= position < stop for start, stop in ranges)

    for match in NUMBER_RE.finditer(cleaned):
        if in_elided_range(match.start()):
            continue
        value = _normalise_number(match.group(0))
        if value is not None:
            values[match.start()] = value
    for match in re.finditer(r"(?<![\w.])(\d+(?:[.,]\d+)?)\s*([KM])\b", cleaned):
        if in_elided_range(match.start()):
            continue
        value = _normalise_number(match.group(1))
        if value is None:
            continue
        factor = 1000 if match.group(2).upper() == "K" else 1_000_000
        try:
            values[match.start()] = str(int(float(value) * factor))
        except ValueError:
            continue
    return sorted(set(values.values()))


def _normalise_number(token: str) -> str | None:
    """One numeric token to a canonical string, or None when unparsable.

    The ambiguous case is a single separator: `2.000` and `2,000` are thousands
    (three trailing digits after a non-zero head), while `0.292` and `1.5` are
    decimals — a leading zero can never start a thousands group. Both
    separators together mean the last one is the decimal point.
    """
    if "," in token and "." in token:
        value = token.replace(",", "") if token.rindex(",") < token.rindex(".") else token.replace(".", "").replace(",", ".")
    elif "," in token:
        head, _, tail = token.rpartition(",")
        thousands = len(tail) == 3 and head and head != "0" and head.isdigit()
        value = token.replace(",", "") if thousands else token.replace(",", ".")
    elif "." in token and token.count(".") == 1:
        head, _, tail = token.rpartition(".")
        thousands = len(tail) == 3 and head and head != "0" and head.isdigit()
        value = token.replace(".", "") if thousands else token
    else:
        value = token.replace(".", "") if token.count(".") > 1 else token
    try:
        number = float(value)
    except ValueError:
        return None
    return str(int(number)) if number == int(number) else str(number)


def negation_count(text: str) -> int:
    words = re.findall(r"[A-Za-zÀ-ÿ']+", text.lower())
    return sum(1 for word in words if word in NEGATIONS)


def entities(text: str) -> set[str]:
    return {token for token in CAP_TOKEN_RE.findall(text) if token not in ENTITY_STOP}


SPELLED_UNIT_VALUES = {
    "g": "1", "gramos": "1", "gramas": "1",
    "mg": "0.001", "miligramos": "0.001", "miligramas": "0.001",
    "kg": "1000", "kilos": "1000", "quilos": "1000",
}


def canonical_dose(dose: str) -> str:
    """Reduce a dose to value+unit, tolerating units spelled out in the target."""
    match = re.match(r"^(\d+(?:\.\d+)?)(.*)$", dose)
    if not match:
        return dose
    value, unit = match.group(1), match.group(2)
    unit = unit.lower()
    for spelled, factor in sorted(SPELLED_UNIT_VALUES.items(), key=lambda kv: -len(kv[0])):
        if not unit.startswith(spelled):
            continue
        try:
            grams = float(value) * float(factor)
        except ValueError:
            return dose
        grams_text = int(grams) if grams == int(grams) else grams
        return f"{grams_text}g" + unit[len(spelled):]
    return dose


def compare(en: str, corpus: str, cross: str) -> list[str]:
    """Facts on which the two renderings disagree."""
    issues: list[str] = []

    corpus_nums, cross_nums = numbers(corpus), numbers(cross)
    if corpus_nums != cross_nums:
        only_corpus = [n for n in corpus_nums if n not in cross_nums]
        only_cross = [n for n in cross_nums if n not in corpus_nums]
        if only_corpus or only_cross:
            issues.append(f"numbers differ: corpus-only {only_corpus}, cross-only {only_cross}")

    # Negation parity, not count: Spanish and Portuguese express the same
    # negation with more words ("no ... ninguno", "não ... nada") and with
    # contractions, so an exact count is noise. Present-vs-absent is the signal.
    corpus_neg, cross_neg = negation_count(corpus) > 0, negation_count(cross) > 0
    if corpus_neg != cross_neg:
        issues.append(
            f"negation presence differs: corpus={'yes' if corpus_neg else 'no'}, "
            f"cross={'yes' if cross_neg else 'no'}"
        )

    corpus_doses = {canonical_dose(d) for d in dg.dose_values(corpus)}
    cross_doses = {canonical_dose(d) for d in dg.dose_values(cross)}
    if corpus_doses != cross_doses:
        only_corpus = sorted(corpus_doses - cross_doses)
        only_cross = sorted(cross_doses - corpus_doses)
        issues.append(f"doses differ: corpus-only {only_corpus}, cross-only {only_cross}")

    corpus_freq = {dg.normalise(f) for f in dg.frequencies(corpus)}
    cross_freq = {dg.normalise(f) for f in dg.frequencies(cross)}
    corpus_day = {p for p, _ in corpus_freq if p}
    cross_day = {p for p, _ in cross_freq if p}
    if corpus_day != cross_day and (corpus_day or cross_day):
        issues.append(f"dosing frequency differs: corpus {sorted(corpus_day)}, cross {sorted(cross_day)}")

    # Named entities present in English should appear in both renderings.
    en_entities = entities(en)
    if en_entities:
        missing_corpus = en_entities - entities(corpus)
        missing_cross = en_entities - entities(cross)
        if missing_corpus and not missing_cross and corpus_doses == cross_doses:
            issues.append(
                f"entity missing from corpus but present in cross-check: "
                f"{sorted(missing_corpus)[:6]}"
            )

    return issues


def translate(base_url: str, model: str, text: str, lang: str, timeout: int = 180) -> str:
    code = {"es": "es-ES", "pt": "pt-PT"}[lang]
    payload = {
        "model": model,
        "messages": [{"role": "user", "content": text}],
        "chat_template_kwargs": {"source_lang_code": "en-GB", "target_lang_code": code},
        "temperature": 0.1,
        "max_tokens": min(2048, max(256, len(text.split()) * 4)),
        "stream": False,
    }
    request = urllib.request.Request(
        base_url.rstrip("/") + "/v1/chat/completions",
        data=json.dumps(payload).encode("utf-8"),
        headers={"Content-Type": "application/json"},
        method="POST",
    )
    with urllib.request.urlopen(request, timeout=timeout) as response:
        result = json.load(response)
    return (result["choices"][0]["message"].get("content") or "").strip()


def selftest() -> int:
    cases = [
        (
            "agree",
            "Take 500 mg twice daily for 14 days.",
            "Tome 500 mg dos veces al día durante 14 días.",
            "Tome 500 mg duas vezes ao dia durante 14 dias.",
            False,
        ),
        (
            "frequency-disagrees",
            "Take 500 mg twice daily for 14 days.",
            "Tome 500 mg cada dos horas durante 14 días.",
            "Tome 500 mg duas vezes ao dia durante 14 dias.",
            True,
        ),
        (
            "dose-disagrees",
            "Start at 4.5 mg once daily.",
            "Empiece con 4,5 mg una vez al día.",
            "Empiece con 45 mg una vez al día.",
            True,
        ),
        (
            "negation-disagrees",
            "This is not a treatment.",
            "Este es un tratamiento.",
            "Este não é um tratamento.",
            True,
        ),
        (
            "numbers-agree-locale",
            "About 30% of 1,200 patients.",
            "Alrededor del 30% de 1.200 pacientes.",
            "Cerca de 30% de 1.200 pacientes.",
            False,
        ),
    ]
    passed = 0
    for name, en, corpus, cross, expect in cases:
        issues = compare(en, corpus, cross)
        ok = bool(issues) == expect
        passed += 1 if ok else 0
        print(f"  control {name:22s} issues={len(issues):2d} {'PASS' if ok else 'FAIL'}"
              + (f"  {issues[0][:70]}" if issues and not ok else ""))
    print("all controls pass" if passed == len(cases) else f"{passed}/{len(cases)} pass")
    return 0 if passed == len(cases) else 1


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--pairs", default="tmp/judge/crossval.json")
    parser.add_argument("--out", default="tmp/judge/crossval.jsonl")
    parser.add_argument("--base-url", default="http://127.0.0.1:8902")
    parser.add_argument("--model", default="translategemma")
    parser.add_argument("--limit", type=int)
    parser.add_argument("--strict", action="store_true")
    parser.add_argument("--selftest", action="store_true")
    args = parser.parse_args(argv)

    if args.selftest:
        return selftest()

    path = Path(args.pairs)
    if not path.exists():
        print(f"ERROR: {path} not found", file=sys.stderr)
        return 2
    try:
        pairs = json.loads(path.read_text(encoding="utf-8"))
    except json.JSONDecodeError as exc:
        print(f"ERROR: {path} is not valid JSON: {exc}", file=sys.stderr)
        return 2
    if isinstance(pairs, dict):
        pairs = pairs.get("records") or []
    if not isinstance(pairs, list) or not pairs:
        print(f"ERROR: {path} contains no paragraph records", file=sys.stderr)
        return 2
    required = ("id", "post", "lang", "block", "en", "target")
    for index, pair in enumerate(pairs):
        if not isinstance(pair, dict):
            print(f"ERROR: {path}: record {index} is not an object", file=sys.stderr)
            return 2
        missing = [key for key in required if key not in pair]
        if missing:
            print(f"ERROR: {path}: record {index} is missing {missing}", file=sys.stderr)
            return 2
    if args.limit:
        pairs = pairs[: args.limit]

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

    checked = disagree = errors = 0
    with out_path.open("a", encoding="utf-8") as sink:
        for index, pair in enumerate(pairs, start=1):
            try:
                cross = translate(args.base_url, args.model, pair["en"], pair["lang"])
            except Exception as exc:  # noqa: BLE001
                errors += 1
                print(f"  ERROR {pair['id']}: {exc}", file=sys.stderr)
                continue
            issues = compare(pair["en"], pair["target"], cross)
            checked += 1
            disagree += 1 if issues else 0
            sink.write(json.dumps({
                "id": pair["id"], "post": pair["post"], "lang": pair["lang"],
                "block": pair["block"], "agree": not issues, "issues": issues,
                "corpus": pair["target"], "cross": cross, "en": pair["en"],
            }, ensure_ascii=False) + "\n")
            sink.flush()
            if index % 25 == 0:
                print(f"  {index}/{len(pairs)} checked, {disagree} disagree", flush=True)

    print(f"{checked}/{len(pairs)} checked, {disagree} disagree, {errors} errors -> {out_path}")
    if errors:
        print(f"WARNING: {errors} paragraph(s) could not be cross-checked", file=sys.stderr)
    if args.strict and (disagree or errors):
        # A gate must not go green on paragraphs it never checked.
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
