#!/usr/bin/env python3
"""Paragraph-level fidelity triage for the ES/PT blog translations.

New capability — `fidelity_audit.py` checks whole-post parity; it cannot say
*which paragraph* to judge. This script ranks individual aligned paragraph
pairs (from `paragraph_align.py`) with deterministic signals only, so the
expensive layers (back-translation, big-model judge) run on a few hundred
paragraphs instead of 8410.

Signals per pair: locale-normalised number equality (value-shifting is the
highest-stakes class in this corpus), citation-key equality, sentence-count
ratio, length ratio, English residue, cognate overlap (a translation that
retransmits the same content shares cognates with its source), and
repeated-block detection inside a post.

Usage
-----
    python3 ops/scripts/paragraph_align.py --json tmp/align.json
    python3 ops/scripts/paragraph_triage.py --align tmp/align.json --json tmp/triage.json
    python3 ops/scripts/paragraph_triage.py --top 40            # print worst pairs
    python3 ops/scripts/paragraph_triage.py --hard-only \
        --json tmp/triage-hard.json      # deterministic defects: agents fix these
    python3 ops/scripts/paragraph_triage.py --soft-only \
        --json tmp/triage-soft.json      # semantic class: judge_fidelity.py judges these

Verification
------------
    python3 ops/scripts/paragraph_triage.py --only '*sleep-hangover*'
    python3 ops/scripts/paragraph_triage.py --selftest

Expected outcome: one ranked list with a numeric `score`, the `signals` that
produced it, and a summary `ranked N pairs, M above threshold`. `--selftest`
prints the built-in positive/negative control results; it must report
"all controls pass".

Semantics
---------
Read-only, warnings only. It fixes nothing and writes nothing under `src/`.
Scores are triage hints, not verdicts: a high score means "judge this
paragraph", not "this paragraph is wrong". `--strict` exits 1 when any pair
*in the selected mode* scores at or above `--threshold`; under `--hard-only`
or `--soft-only` a pair excluded by the mode filter cannot trip it.
"""

from __future__ import annotations

import argparse
import json
import re
import sys
from collections import Counter
from fnmatch import fnmatch
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(REPO_ROOT / "ops" / "scripts"))

import fidelity_audit as fa  # noqa: E402  reuse locale + word rules

SENT_SPLIT = re.compile(r"(?<=[.!?])\s+")
WORD_RE = re.compile(r"[A-Za-zÀ-ÖØ-öø-ÿ]+")
CITE_RE = re.compile(r"\[[^\]]*@[^\]]+\]")
NUM_RE = re.compile(r"\d+(?:[.,]\d+)*")

# Stopwords for both source and target so cognate overlap is not swamped
# by function words.
STOP = set(
    """the of and in to is are was were be been being with that this it for as on at by an
    a you your your not but from they them their there then than when where which who what how
    all any some more most less least just also very so such no nor too can will would may
    might must shall should have has had do does did about into over under between during
    la el los las le les de del en con para por que se su sus lo al un una unos unas el
    os as um uma dos das em no na do da que quem como mais menos muito pouco já não ser
    está estão sua seu seus suas de e o a os as dos das num em numa""".split()
)

# Suffix folding so 'metabolismo'/'metabolism' and 'función'/'function' meet.
SUFFIXES = (
    "ismos", "ismo", "isms", "ization", "isation", "ción", "ção", "tion",
    "dades", "dad", "ties", "ty", "ments", "ment", "mico",
    "ical", "icales", "ais", "ales", "ous", "osas", "osos",
)

# Signals that *prove* a deterministic defect (a missing value, a copied
# run, a length collapse). The remaining signals (cognate overlap) are only
# a hint that meaning drifted: they route attention, they do not adjudicate.
# That split is what makes the two downstream layers economical: hard-signal
# pairs go to fix agents, soft-only pairs go to the big-model judge.
HARD_SIGNALS = frozenset(
    {
        "numbers_dropped",
        "numbers_invented",
        "citations_dropped",
        "citations_invented",
        "verbatim_copy",
        "english_residue",
        "sentence_shrink",
        "length_shrink",
        "sentence_growth",
        "length_growth",
    }
)


def has_hard(signals: dict[str, object]) -> bool:
    return bool(HARD_SIGNALS & set(signals))


def strip_accents(text: str) -> str:
    import unicodedata

    return "".join(
        ch for ch in unicodedata.normalize("NFD", text) if unicodedata.category(ch) != "Mn"
    )


def fold(word: str) -> str:
    """Fold a cognate to a comparable stem: accents off, target suffixes trimmed."""
    stem = strip_accents(word.lower())
    for suffix in SUFFIXES:
        if stem.endswith(suffix) and len(stem) - len(suffix) >= 4:
            return stem[: len(stem) - len(suffix)]
    return stem


def content_tokens(text: str) -> set[str]:
    tokens = {fold(w) for w in WORD_RE.findall(text)}
    return {t for t in tokens if len(t) >= 4 and t not in STOP}


def strip_prose(text: str) -> str:
    """Remove protected spans so only translatable prose is measured."""
    text = re.sub(r"```.*?```", " ", text, flags=re.S)
    text = re.sub(r"\$\$.*?\$\$", " ", text, flags=re.S)
    # Inline math is a notation boundary: `f \in (0,1)` is a mathematical
    # interval, so its literals are not translatable prose numbers.
    text = re.sub(r"\$[^$\n]+\$", " ", text)
    text = re.sub(r"!?\[(?:[^\[\]]|\[[^\]]*\])*\]\([^)]*\)", " ", text)
    text = re.sub(CITE_RE, " ", text)
    text = re.sub(r"https?://\S+", " ", text)
    text = re.sub(r"`[^`\n]+`", " ", text)
    text = re.sub(r"^\s*>.*$", " ", text, flags=re.M)
    return text


# Ordinal words: 'Part 1' -> 'Primera parte' loses the digit and is faithful.
ORDINALS: dict[str, dict[str, str]] = {
    "es": {"primer": "1", "primera": "1", "primero": "1", "primeros": "1", "primeras": "1",
           "segund": "2", "tercer": "3", "terceros": "3", "cuart": "4", "quint": "5",
           "sext": "6", "séptim": "7", "octav": "8", "noven": "9", "décim": "10",
           "undécim": "11", "duodécim": "12"},
    "pt": {"primeir": "1", "primeiros": "1", "primeiras": "1", "segund": "2", "terceir": "3",
           "quart": "4", "quint": "5", "sext": "6", "sétim": "7", "oitav": "8", "non": "9",
           "décim": "10", "undécim": "11", "duodécim": "12"},
    "en": {"first": "1", "second": "2", "third": "3", "fourth": "4", "fifth": "5",
           "sixth": "6", "seventh": "7", "eighth": "8", "ninth": "9", "tenth": "10",
           "eleventh": "11", "twelfth": "12"},
}


def ordinal_allowance(text: str, lang: str) -> Counter:
    """Count ordinal words so a digit rendered as an ordinal is not 'dropped'."""
    out: Counter = Counter()
    lowered = strip_accents(text.lower())
    for stem, value in ORDINALS.get(lang, {}).items():
        count = len(re.findall(rf"(?<![a-z]){re.escape(stem)}[a-z]*", lowered))
        if count:
            out[value] += count
    return out


def numeric_key(token: str, lang: str) -> str:
    """Canonical numeric value of a token, for locale-agnostic comparison.

    es/pt write 0,5 and 200.000 where en writes 0.5 and 200,000, so tokens are
    compared by value. A group of exactly three digits after the first
    separator is a thousands separator only when the leading group is not '0'
    (0,088 can only be a decimal). Values carrying both separators
    (1,234.56 / 1.234,56) are stripped of their thousands separator before the
    decimal separator is normalised, so the two locales compare equal.
    """
    if lang == "en":
        # en: comma = thousands, dot = decimal
        if "," in token and "." in token:
            return token.replace(",", "")
        if "," in token:
            groups = token.split(",")
            if len(groups[0]) <= 3 and all(len(g) == 3 for g in groups[1:]):
                return "".join(groups)          # 200,000
            return token.replace(",", ".")      # defensive: 1,5 -> 1.5
        return token
    # es/pt: dot = thousands, comma = decimal
    if "." in token and "," in token:
        return token.replace(".", "").replace(",", ".")
    if "." in token:
        parts = token.split(".")
        if len(parts[0]) <= 3 and parts[0] != "0" and all(len(p) == 3 for p in parts[1:]):
            return "".join(parts)               # 200.000
        return token
    if "," in token:
        return token.replace(",", ".")          # 0,5 -> 0.5
    return token


def numbers(text: str, lang: str) -> Counter:
    # Statistical df notation (F(1,18), F1,18, t(24)) is notation, not quantity.
    cleaned = fa.STAT_DF_RE.sub(" ", re.sub(CITE_RE, " ", text))
    return Counter(numeric_key(tok, lang) for tok in NUM_RE.findall(cleaned))


def citation_keys(text: str) -> Counter:
    keys: Counter = Counter()
    for chunk in CITE_RE.findall(text):
        for part in chunk[1:-1].split(";"):
            part = part.strip()
            if part.startswith("@"):
                keys[part[1:]] += 1
    return keys


# Abbreviations whose period is not a sentence boundary. 'Ch. 16', 'vs. 20%',
# 'et al.' and 'e.g.' inflate the EN count when split naively, producing a
# spurious 'sentence_shrink' flag against faithful translations.
ABBREVIATIONS = (
    "ch", "vs", "et al", "eg", "ie", "etc", "fig", "no", "st", "dr", "prof",
    "approx", "e.g", "i.e", "cf", "p", "sec", "mg", "kg", "hr", "day",
)


def sentences(text: str) -> int:
    prose = strip_prose(text)
    for abbr in ABBREVIATIONS:
        prose = re.sub(rf"\b{re.escape(abbr)}\.", f"{abbr}\u0000", prose, flags=re.I)
    return len([s for s in SENT_SPLIT.split(prose.strip()) if s.strip()])


def ngrams(word: str, size: int = 4) -> set[str]:
    return {word[i : i + size] for i in range(max(0, len(word) - size + 1))}


def cognate_overlap(en: str, target: str) -> float:
    """Fraction of EN content words that have a cognate-looking partner in target.

    Character 4-grams tolerate the systematic p/f-, initial-i-, and suffix
    shifts of Romance loans (patients/pacientes, hypothesis/hipótesis,
    function/función), which stem folding misses.
    """
    en_tokens = content_tokens(en)
    target_tokens = content_tokens(target)
    if not en_tokens:
        return 1.0
    target_grams: set[str] = set()
    for token in target_tokens:
        target_grams |= ngrams(token)
        target_grams.add(token)
    matched = 0
    for token in en_tokens:
        if token in target_tokens:
            matched += 1
            continue
        grams = ngrams(token)
        if grams and (grams & target_grams):
            matched += 1
    return matched / len(en_tokens)


def verbatim_ratio(en: str, target: str) -> tuple[float, int]:
    """Fraction of target content words copied verbatim from the English source.

    A faithful translation shares acronyms and names (LDN, ATP, patient
    surnames) but almost no ordinary words; a machine-translation leftover
    shares a whole run of them. Words identical in both languages ('motor',
    'control', 'virus') are legitimate, so the absolute shared count matters
    as much as the ratio: a 3-word heading sharing 2 cognates is not a defect.
    """
    def tokens(text: str) -> set[str]:
        out = set()
        for word in WORD_RE.findall(text):
            if len(word) < 4:
                continue
            if word.isupper():          # acronyms are legitimately shared
                continue
            lowered = word.lower()
            if lowered in STOP:
                continue
            out.add(lowered)
        return out

    en_tokens = tokens(strip_prose(en))
    target_tokens = tokens(strip_prose(target))
    if not target_tokens:
        return 0.0, 0
    shared = en_tokens & target_tokens
    return len(shared) / len(target_tokens), len(shared)


def english_residue(target: str, lang: str) -> list[str]:
    prose = strip_prose(target).lower()
    hits = []
    for word in fa.EN_ONLY_WORDS[lang]:
        if re.search(rf"(?<![a-zà-ÿ]){re.escape(word)}(?![a-zà-ÿ])", prose):
            hits.append(word)
    return hits


def score_pair(en: str, target: str, lang: str) -> tuple[float, dict[str, object]]:
    """Composite triage score. Higher = judge this paragraph first."""
    signals: dict[str, object] = {}
    score = 0.0

    en_nums = numbers(strip_prose(en), "en")
    tgt_nums = numbers(strip_prose(target), lang)
    # Allow spelled-out numbers and ordinals ('Part 1' -> 'Primera parte').
    dropped = fa.reconcile(
        en_nums - tgt_nums,
        fa.spelled(strip_prose(target), lang) + ordinal_allowance(strip_prose(target), lang),
    )
    invented = fa.reconcile(
        tgt_nums - en_nums,
        fa.spelled(strip_prose(en), "en") + ordinal_allowance(strip_prose(en), "en"),
    )
    if dropped:
        score += 3.0
        signals["numbers_dropped"] = sorted(dropped)
    if invented:
        score += 2.0
        signals["numbers_invented"] = sorted(invented)

    en_cites = citation_keys(en)
    tgt_cites = citation_keys(target)
    if en_cites - tgt_cites:
        score += 3.0
        signals["citations_dropped"] = sorted(en_cites - tgt_cites)
    if tgt_cites - en_cites:
        score += 3.0
        signals["citations_invented"] = sorted(tgt_cites - en_cites)

    en_sents, tgt_sents = sentences(en), sentences(target)
    if en_sents and tgt_sents:
        ratio = tgt_sents / en_sents
        if ratio < 0.7:
            score += 2.5
            signals["sentence_shrink"] = round(ratio, 2)
        elif ratio > 1.5:
            score += 1.0
            signals["sentence_growth"] = round(ratio, 2)

    en_words, tgt_words = len(en.split()), len(target.split())
    if en_words and tgt_words:
        ratio = tgt_words / en_words
        if ratio < 0.6:
            score += 2.5
            signals["length_shrink"] = round(ratio, 2)
        elif ratio > 1.9:
            score += 1.0
            signals["length_growth"] = round(ratio, 2)

    # Verbatim copying is the strongest lexical signal of untranslated material:
    # a faithful translation shares acronyms and names, not ordinary words.
    # Require an absolute count too, so short headings of true cognates pass.
    verbatim, shared = verbatim_ratio(en, target)
    if shared >= 5 and verbatim >= 0.35:
        score += 3.0
        signals["verbatim_copy"] = round(verbatim, 2)
    elif shared >= 4 and verbatim >= 0.20:
        score += 1.5
        signals["verbatim_copy"] = round(verbatim, 2)

    residue = english_residue(target, lang)
    if residue:
        score += min(1.0, 0.25 * len(residue))
        signals["english_residue"] = residue[:8]

    overlap = cognate_overlap(en, target)
    if overlap < 0.25 and en_words > 25:
        score += 2.0
        signals["low_cognate_overlap"] = round(overlap, 3)
    elif overlap < 0.40:
        score += 0.75
        signals["weak_cognate_overlap"] = round(overlap, 3)

    return round(score, 2), signals


def selftest() -> tuple[int, int]:
    """Controls: a faithful pair must score low, three injected errors must rank high."""
    en = (
        "In the trial, 42 of 100 patients improved by 30% on the 48-hour "
        "follow-up, which supports the mitochondrial hypothesis [@Smith2020mt]. "
        "The effect was not sustained after 12 weeks."
    )
    faithful_es = (
        "En el ensayo, 42 de 100 pacientes mejoraron un 30% en el seguimiento "
        "de 48 horas, lo que respalda la hipótesis mitocondrial [@Smith2020mt]. "
        "El efecto no se sostuvo tras 12 semanas."
    )
    dropped_es = (
        "En el ensayo, los pacientes mejoraron en el seguimiento, lo que "
        "respalda la hipótesis mitocondrial. El efecto no se sostuvo."
    )
    inverted_es = (
        "En el ensayo, 42 de 100 pacientes empeoraron un 30% en el seguimiento "
        "de 48 horas, lo que refuta la hipótesis mitocondrial [@Smith2020mt]. "
        "El efecto se sostuvo tras 12 semanas."
    )
    english_es = (
        "In the trial, 42 of 100 patients improved by 30% on the 48-hour "
        "follow-up, which supports the hypothesis [@Smith2020mt]. El efecto "
        "no se sostuvo tras 12 semanas."
    )
    cases = {
        "faithful": (faithful_es, "low"),
        "dropped_numbers_citations": (dropped_es, "high"),
        "inverted_claim": (inverted_es, "low"),
        "untranslated_english": (english_es, "high"),
    }
    results = {
        name: score_pair(en, text, "es")[0] for name, (text, _) in cases.items()
    }
    passed = 0
    total = 0
    for name, (text, expect) in cases.items():
        total += 1
        score = results[name]
        ok = (score < 2.0) if expect == "low" else (score >= 2.0)
        # 'inverted_claim' is semantic: lexical signals are structurally blind
        # to it, so it is EXPECTED to score low. It is asserted as a control in
        # its own right - if the lexical layer ever starts scoring inversions
        # high, the score_pair weights have changed and this must be revisited.
        if name == "inverted_claim":
            ok = score < 2.0
            print(
                f"  control {name:26s} score {score:5.2f} expect low  "
                f"{'PASS' if ok else 'FAIL'} (lexical layer blind; judge required)"
            )
            passed += 1 if ok else 0
            continue
        print(f"  control {name:26s} score {score:5.2f} expect {expect:4s} {'PASS' if ok else 'FAIL'}")
        passed += 1 if ok else 0
    return passed, total


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--align", default="tmp/align.json")
    parser.add_argument("--json", default="tmp/triage.json")
    parser.add_argument("--only", help="comma-separated globs / substrings")
    parser.add_argument("--top", type=int, default=25)
    parser.add_argument("--threshold", type=float, default=2.0)
    parser.add_argument("--strict", action="store_true")
    parser.add_argument("--selftest", action="store_true")
    parser.add_argument(
        "--hard-only",
        action="store_true",
        help="keep only pairs with a deterministic hard signal (fix-agent worklist)",
    )
    parser.add_argument(
        "--soft-only",
        action="store_true",
        help="keep only pairs with no hard signal (big-model judge worklist)",
    )
    args = parser.parse_args(argv)
    if args.hard_only and args.soft_only:
        parser.error("--hard-only and --soft-only are mutually exclusive")

    if args.selftest:
        passed, total = selftest()
        verdict = "all controls pass" if passed == total else f"{passed}/{total} pass"
        print(verdict)
        return 0 if passed == total else 1

    path = Path(args.align)
    if not path.exists():
        print(f"ERROR: {path} not found; run paragraph_align.py first", file=sys.stderr)
        return 2
    data = json.loads(path.read_text(encoding="utf-8"))
    records = data["records"]

    if args.only:
        patterns = [p.strip() for p in args.only.split(",") if p.strip()]
        records = [
            r
            for r in records
            if any(fnmatch(r["post"], pat) or pat in r["post"] for pat in patterns)
        ]

    scored: list[dict[str, object]] = []
    for record in records:
        if record["guard"]:
            continue
        score, signals = score_pair(record["en"], record["target"], record["lang"])
        if not signals:
            continue
        scored.append(
            {
                "id": record["id"],
                "post": record["post"],
                "lang": record["lang"],
                "block": record["block"],
                "score": score,
                "signals": signals,
                "en_words": record["en_words"],
                "en": record["en"],
                "target": record["target"],
            }
        )
    scored.sort(key=lambda item: (-item["score"], item["post"]))

    mode = "all"
    if args.hard_only:
        scored = [item for item in scored if has_hard(item["signals"])]
        mode = "hard-only"
    elif args.soft_only:
        scored = [item for item in scored if not has_hard(item["signals"])]
        mode = "soft-only"

    flagged = [item for item in scored if item["score"] >= args.threshold]
    Path(args.json).write_text(
        json.dumps(
            {
                "mode": mode,
                "scored": len(scored),
                "pairs_scoreable": sum(1 for r in records if not r["guard"]),
                "threshold": args.threshold,
                "flagged": len(flagged),
                "by_post": dict(
                    Counter(r["post"] for r in flagged).most_common(25)
                ),
                "records": scored,
            },
            ensure_ascii=False,
            indent=1,
        ),
        encoding="utf-8",
    )

    print(f"ranked {len(scored)} pairs ({mode}), {len(flagged)} above {args.threshold}")
    print(f"top {args.top} paragraph pairs by triage score:")
    for item in scored[: args.top]:
        keys = ",".join(sorted(item["signals"]))
        print(
            f"  {item['score']:5.2f} {item['lang']} {item['post'][:38]}#{item['block']} "
            f"[{keys}]"
        )
    print("worst posts:")
    for post, count in Counter(r["post"] for r in flagged).most_common(8):
        print(f"  {count:3d} {post}")
    if args.strict and flagged:
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
