#!/usr/bin/env python3
"""Idiomatic-acronym gate for the ES and PT translations.

New capability — no existing check knows which acronym a target language
actually uses. `fidelity_audit.py` accepts any acronym that survives, and the
judge has no dictionary, so an English acronym can stay in Spanish prose
forever. This corpus proves the gap: 181 Spanish and 180 Portuguese paragraphs
used `PEM` (post-exertional malaise) against zero uses of the idiomatic `MPE`,
even though every one of them is otherwise translated.

The rule is the one a native editor applies: use the acronym the target
language actually forms from its own term, expand it on first use, and make the
article agree with the acronym's gender.

    es-ES: PEM -> MPE (malestar post-esfuerzo, masculine: "el MPE")
           ADHD -> TDAH, PTSD -> TEPT, IBS -> SII (feminine: "la SII")
    pt-PT: PEM -> MPE (mal-estar pós-esforço, masculine: "o MPE")
           ADHD -> PHDA (feminine), PTSD -> PSPT (feminine), IBS -> SII

Acronyms that are already international in both languages are left alone, with
the reason recorded in KEEP: ME/CFS becomes EM/SFC (already enforced
elsewhere), while POTS, MCAS, LDH, CRP and drug names are used unchanged in
Spanish and Portuguese clinical writing.

Usage
-----
    python3 ops/scripts/acronym_gate.py --check          # report only
    python3 ops/scripts/acronym_gate.py --fix            # rewrite + report
    python3 ops/scripts/acronym_gate.py --selftest

Verification
------------
    python3 ops/scripts/acronym_gate.py --selftest

Expected outcome: `--selftest` prints one line per control and
"all controls pass" (exit 0). The controls include the real defect (bare `PEM`
in Spanish prose) and the article case ("la PEM" -> "el MPE").

Semantics
---------
Default is `--check`: read-only, writes nothing. `--fix` is the only writing
mode and rewrites `src/main/quarto/{es,pt}/blog/posts/**` and the two
glossaries. `--strict` exits 1 when any finding remains, so it can gate a fix
pass. Front matter (`categories`, `author`, `title`, `description`), fenced
code, inline code, math, URLs, link targets and citation keys are never
touched.
"""

from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(REPO_ROOT / "ops" / "scripts"))

from translate_blog import mask_text, restore_text  # noqa: E402

QUARTO = REPO_ROOT / "src" / "main" / "quarto"
RESOURCES = REPO_ROOT / "src" / "main" / "resources"

# language -> {english acronym: (target acronym, expansion, gender)}
IDIOMS: dict[str, dict[str, tuple[str, str, str]]] = {
    "es": {
        "PEM": ("MPE", "malestar post-esfuerzo", "m"),
        "ADHD": ("TDAH", "trastorno por déficit de atención e hiperactividad", "m"),
        "PTSD": ("TEPT", "trastorno de estrés postraumático", "m"),
        "IBS": ("SII", "síndrome del intestino irritable", "f"),
    },
    "pt": {
        "PEM": ("MPE", "mal-estar pós-esforço", "m"),
        "ADHD": ("PHDA", "perturbação de hiperatividade e défice de atenção", "f"),
        "PTSD": ("PSPT", "perturbação de stress pós-traumático", "f"),
        "IBS": ("SII", "síndrome do intestino irritável", "f"),
    },
}

# Acronyms deliberately kept in their international form, with the reason.
KEEP = {
    "POTS": "used unchanged in es-ES and pt-PT clinical writing",
    "MCAS": "used unchanged; the translated expansion is given on first use",
    "CRP": "international lab abbreviation (PCR in es, PCR in pt)",
    "LDH": "international enzyme abbreviation",
    "ATP": "international",
    "DNA": "international; ADN is used in prose where expanded",
    "RNA": "international",
}

#Articles that must agree with the acronym's gender.
FEMININE_ARTICLES = {
    "es": {"el": "la", "del": "de la", "un": "una", "al": "a la"},
    "pt": {"o": "a", "do": "da", "no": "na", "um": "uma", "ao": "à"},
}
MASCULINE_ARTICLES = {
    "es": {"la": "el", "de la": "del", "una": "un", "a la": "al"},
    "pt": {"a": "o", "da": "do", "na": "no", "uma": "um", "à": "ao"},
}

# Adjectives that must agree with the acronym's gender after a rewrite. This is
# a closed list, not a grammar engine: only the forms that actually follow these
# acronyms in the corpus ("la PEM completa" -> "el MPE completo").
ADJECTIVE_AGREEMENT: dict[str, dict[str, str]] = {
    "es": {"completa": "completo", "severa": "severo", "retrasada": "retrasado",
           "prolongada": "prolongado", "intensa": "intenso", "profunda": "profundo"},
    "pt": {"completa": "completo", "severa": "severo", "atrasada": "atrasado",
           "prolongada": "prolongado", "intensa": "intenso", "profunda": "profundo"},
}

FRONT_MATTER = re.compile(r"\A---\r?\n.*?\r?\n---\r?\n", re.S)
FENCE = re.compile(r"(```.*?```)", re.S)
ENGLISH_SECTION = re.compile(r"<!--.*?-->", re.S)


def split_document(text: str) -> tuple[str, list[str]]:
    """Separate front matter from body segments (fenced code isolated)."""
    match = FRONT_MATTER.match(text)
    front = match.group(0) if match else ""
    body = text[len(front):]
    return front, FENCE.split(body)


def rewrite_segment(segment: str, lang: str) -> tuple[str, dict[str, int]]:
    """Rewrite one prose segment; return the new text and per-rule counts."""
    if not segment.strip() or segment.lstrip().startswith("```"):
        return segment, {}
    masked, store = mask_text(segment, whole_links=True)
    counts: dict[str, int] = {}

    for english, (target, _expansion, gender) in IDIOMS[lang].items():
        if not re.search(rf"\b{re.escape(english)}\b", masked):
            continue

        # 1. Article agreement on the already-idiomatic acronym.
        if re.search(rf"\b{re.escape(target)}\b", masked):
            table = FEMININE_ARTICLES[lang] if gender == "f" else MASCULINE_ARTICLES[lang]
            for article, correct in sorted(table.items(), key=lambda kv: -len(kv[0])):
                pattern = rf"(?i)(?<![a-zà-ÿ]){re.escape(article)}\s+({re.escape(target)})\b"
                masked, n = re.subn(pattern, rf"{correct} \1", masked)
                if n:
                    counts[f"{lang}:article {article} {target}"] = counts.get(
                        f"{lang}:article {article} {target}", 0
                    ) + n

        # 2. Article agreement carried over from the English acronym.
        table = FEMININE_ARTICLES[lang] if gender == "f" else MASCULINE_ARTICLES[lang]
        for article, correct in table.items():
            pattern = rf"(?i)(?<![a-zà-ÿ]){re.escape(article)}\s+{re.escape(english)}\b"
            masked, n = re.subn(pattern, rf"{correct} {target}", masked)
            if n:
                counts[f"{lang}:{article} {english}->{correct} {target}"] = n

        # 3. Adjectives that follow the acronym and must agree with its gender.
        if gender == "m":
            for wrong, right in ADJECTIVE_AGREEMENT[lang].items():
                masked = re.sub(
                    rf"\b{re.escape(target)}\s+{re.escape(wrong)}\b",
                    f"{target} {right}",
                    masked,
                )

        # 4. The bare acronym.
        masked, n = re.subn(
            rf"(?i)(?<![A-Za-z0-9]){re.escape(english)}(?![A-Za-z0-9])", target, masked
        )
        if n:
            counts[f"{lang}:{english}->{target}"] = counts.get(
                f"{lang}:{english}->{target}", 0
            ) + n

    if not counts:
        return segment, {}
    restored, _complete = restore_text(masked, store)
    return restored, counts


def scan_corpus(langs: list[str], fix: bool) -> tuple[dict[str, int], list[str]]:
    totals: dict[str, int] = {}
    problems: list[str] = []
    for lang in langs:
        root = QUARTO / lang / "blog" / "posts"
        if not root.exists():
            problems.append(f"{root} not found")
            continue
        for path in sorted(root.rglob("index.qmd")):
            text = path.read_text(encoding="utf-8")
            front, segments = split_document(text)
            new_segments: list[str] = []
            changed = False
            for segment in segments:
                new, counts = rewrite_segment(segment, lang)
                if counts:
                    changed = True
                    for key, value in counts.items():
                        scoped = f"corpus {key}"
                        totals[scoped] = totals.get(scoped, 0) + value
                new_segments.append(new)
            if changed and fix:
                path.write_text(front + "".join(new_segments), encoding="utf-8")
    return totals, problems


def scan_glossaries(langs: list[str], fix: bool) -> tuple[dict[str, int], list[str]]:
    totals: dict[str, int] = {}
    problems: list[str] = []
    for lang in langs:
        path = RESOURCES / f"glossary-{lang}.json"
        if not path.exists():
            problems.append(f"{path} not found")
            continue
        try:
            data = json.loads(path.read_text(encoding="utf-8"))
        except json.JSONDecodeError as exc:
            problems.append(f"{path} is not valid JSON: {exc}")
            continue
        changed = 0
        for key, entry in data.items():
            if key == "_meta" or not isinstance(entry, dict):
                continue
            for field in ("label", "definition", "also"):
                value = entry.get(field)
                texts = value if isinstance(value, list) else [value]
                if not any(isinstance(t, str) for t in texts):
                    continue
                new_texts = []
                for text in texts:
                    if not isinstance(text, str):
                        new_texts.append(text)
                        continue
                    new, counts = rewrite_segment(text, lang)
                    if counts:
                        changed += 1
                        for name, value_count in counts.items():
                            scoped = f"glossary {name}"
                            totals[scoped] = totals.get(scoped, 0) + value_count
                    new_texts.append(new)
                if new_texts != texts:
                    entry[field] = new_texts if isinstance(value, list) else new_texts[0]
        if changed and fix:
            path.write_text(
                json.dumps(data, ensure_ascii=False, indent=1) + "\n", encoding="utf-8"
            )
    return totals, problems


def selftest() -> int:
    cases = [
        (
            "es bare PEM",
            "Para cuando llega la PEM completa, el daño ya está hecho.",
            "es",
            ["la PEM", "PEM"],
            ["el MPE completo"],
        ),
        (
            "es first-mention expansion",
            "El malestar post-esfuerzo (PEM) es el síntoma cardinal.",
            "es",
            ["(PEM)"],
            ["(MPE)"],
        ),
        (
            "pt bare PEM",
            "Quando chega a PEM completa, o dano já está feito.",
            "pt",
            ["a PEM"],
            ["o MPE"],
        ),
        (
            "es IBS feminine",
            "Se asocia con el IBS en un 56,9%.",
            "es",
            ["el IBS"],
            ["la SII"],
        ),
        (
            "pt ADHD",
            "O ADHD é uma perturbação do neurodesenvolvimento.",
            "pt",
            ["ADHD"],
            ["PHDA"],
        ),
        (
            "kept acronym untouched",
            "El POTS y el MCAS aparecen con frecuencia.",
            "es",
            [],
            [],
        ),
        (
            # Link labels and destinations are protected: masking the whole
            # link is what keeps a small model from dropping its target.
            "link left untouched",
            "Ver [PEM](../pem/) y https://example.org/PEM.",
            "es",
            ["MPE"],
            ["[PEM](../pem/)"],
        ),
    ]
    passed = 0
    for name, text, lang, must_go, must_appear in cases:
        new, _counts = rewrite_segment(text, lang)
        ok = all(token not in new for token in must_go) and all(
            token in new for token in must_appear
        )
        passed += 1 if ok else 0
        print(f"  {name:30s} {'PASS' if ok else 'FAIL'}" + ("" if ok else f"  -> {new!r}"))
    print("all controls pass" if passed == len(cases) else f"{passed}/{len(cases)} pass")
    return 0 if passed == len(cases) else 1


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--langs", nargs="+", default=["es", "pt"])
    parser.add_argument("--fix", action="store_true", help="rewrite the files")
    parser.add_argument("--check", action="store_true", help="report only (default)")
    parser.add_argument("--strict", action="store_true")
    parser.add_argument("--selftest", action="store_true")
    args = parser.parse_args(argv)

    if args.selftest:
        return selftest()

    if args.fix and args.check:
        parser.error("--fix and --check are mutually exclusive")

    corpus, problems = scan_corpus(args.langs, fix=args.fix)
    glossaries, gloss_problems = scan_glossaries(args.langs, fix=args.fix)
    problems += gloss_problems

    mode = "FIXED" if args.fix else "FOUND"
    total = sum(corpus.values()) + sum(glossaries.values())
    print(f"{mode} {total} non-idiomatic acronym occurrence(s)")
    for name, count in sorted({**corpus, **glossaries}.items()):
        print(f"  {count:5d}  {name}")
    if problems:
        print(f"{len(problems)} problem(s):", file=sys.stderr)
        for problem in problems:
            print(f"  {problem}", file=sys.stderr)
        return 2
    if args.strict and total:
        print("strict: findings remain", file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
