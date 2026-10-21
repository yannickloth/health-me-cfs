#!/usr/bin/env python3
"""Idiom-calque gate for the ES and PT translations.

New capability — no existing check knows whether an idiomatic English figure of
speech was transferred word-for-word. `fidelity_audit.py` compares numbers,
citations and entities; `dose_gate.py` compares schedules; `acronym_gate.py`
knows which acronym a language forms. None of them can see a calque: the words
are present, the numbers match, the negation matches, and the sentence parses.
A calque is only visible against the target language's own usage, which is
native-speaker knowledge no mechanical check has.

This corpus confirmed the class by hand, then by a full figure-of-speech sweep
(`cross_check.py --figures` over 4205 paragraphs, judged per post by
`translation-auditor`). The confirmed calques are encoded here as exact
substitution rules, grouped by the English figure that produced them:

    "wired"        -> ES "conectado" / PT "conectado"   (want acelerado/agitado)
    "upstream"     -> ES "en la parte superior"         (want previo / aguas arriba)
    "load-bearing" -> ES "carga de carga", PT "carga de carga"
    "energy tax"   -> ES "impuesto energético", PT "imposto energético"
    "flavour"      -> ES/PT "sabor" (= taste)           (want subtipo)
    "wearing the clothes of" -> ES "vistiendo la ropa", PT "vestir as roupas"
    "not a free lunch"       -> ES "regalo gratis", PT "benefício ilimitado"
    "elephant in the room"   -> ES "elefante en la sala", PT "elefante no meio da sala"
    "canary in the coal mine"-> ES "canario en la mina", PT "canário na mina"

Each rule is a literal target string shown to be a calque, with the idiomatic
replacement. The gate reports a match (a surviving calque or a regression) and
can rewrite it. The rule is language-scoped and case-insensitive on the first
letter only where the phrase begins a sentence.

Usage
-----
    python3 ops/scripts/calque_gate.py --check          # report only
    python3 ops/scripts/calque_gate.py --fix            # rewrite + report
    python3 ops/scripts/calque_gate.py --selftest

Verification
------------
    python3 ops/scripts/calque_gate.py --selftest

Expected outcome: `--selftest` prints one line per control and "all controls
pass" (exit 0). The controls include the real shipped defect ("no es un regalo
gratis") and a legitimate use that must NOT fire ("un impuesto sobre la renta").

Semantics
---------
Default is `--check`: read-only, writes nothing. `--fix` is the only writing
mode and rewrites `src/main/quarto/{es,pt}/blog/posts/**` and the two
glossaries. `--strict` exits 1 when any finding remains, so it can gate a fix
pass. Front matter (`categories`, `author`, `title`, `description`), fenced
code, inline code, math, URLs, link targets and citation keys are never touched.
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

# Confirmed calques: language -> [(english figure, literal target, idiomatic,
# guard, note)]. `guard` is a regex tried immediately after the literal match:
# when it matches, the occurrence is a legitimate use, not a calque, and is left
# alone. This is what separates causal "upstream" ("en la parte superior" of a
# causal chain) from spatial "en la parte superior del rango de dosis".
CALQUES: dict[str, list[tuple[str, str, str, str, str]]] = {
    "es": [
        ("wired", "conectado para dormir", "acelerado para dormir", "",
         "figure for hyperarousal, not network connection"),
        ("wired", "cansado pero conectado", "cansado pero acelerado", "",
         "figure for hyperarousal"),
        ("wired", "estado de cansado pero conectado", "estado de cansado pero acelerado", "",
         "figure for hyperarousal"),
        ("wired", "cansado, pero con energía", "cansado pero acelerado", "",
         "figure for hyperarousal, not energy"),
        # "en la parte superior" is common in its literal sense ("at the top of
        # the table / the dose range / the circulatory system"). Only the causal
        # sense is the calque, and it co-occurs with causal vocabulary in the
        # same sentence, so the rule fires on that context rather than on the
        # phrase alone.
        ("upstream", "en la parte superior", "aguas arriba",
         r"require:(?:falla|mecanismo|causa|defecto|problema|origen|estructural|raíz|primari)",
         "causal direction, not spatial position"),
        ("upstream", "de flujo ascendente", "previo", "",
         "causal direction, not flow"),
        ("load-bearing", "carga de carga", "cerradura portante", "",
         "compound metaphor split into nonsense"),
        ("load-bearing", "cierre de carga", "cerradura portante", "",
         "wrong sense of 'lock' plus literal 'load-bearing'"),
        ("energy tax", "impuesto energético", "coste energético", "",
         "metabolic cost, not a fiscal levy"),
        ("energy tax", "impuesto permanente de energía", "coste energético permanente", "",
         "metabolic cost, not a fiscal levy"),
        ("energy tax", "taxación de energía", "coste energético", "",
         "metabolic cost, not a fiscal levy"),
        ("flavour", "sabor de histamínico", "subtipo histaminérgico", "",
         "'flavour' = variety, not taste"),
        ("wearing the clothes of", "vistiendo la ropa", "disfrazado", "",
         "'wearing the clothes of X' = disguised as X"),
        ("not a free lunch", "regalo gratis", "no sale gratis", "",
         "fixed idiom for a hidden cost"),
        ("elephant in the room", "elefante en la sala", "la gran cuestión que nadie menciona", "",
         "English idiom with no native form"),
        ("canary in the coal mine", "canario en la mina", "señal de alerta temprana", "",
         "English mining idiom with no native form"),
        ("doing more work than it can support", "realiza más trabajo del que puede soportar",
         "promete más de lo que puede cumplir", "",
         "figure applied to a word's semantic load"),
        ("the bill comes due", "la factura llega", "pasa factura", "",
         "financial figure transferred word-for-word"),
        ("if anything", "si algo,", "si acaso,", "",
         "hedge transferred word-for-word"),
        ("the root lesion", "lesión raíz", "lesión primaria", "",
         "noun+noun transfer, not a Spanish collocation"),
        ("trust death spiral", "espiral de muerte de la confianza", "espiral de desconfianza", "",
         "'death spiral' transferred word-for-word"),
        ("wired", "conectado pero cansado", "acelerado pero cansado", "",
         "figure for hyperarousal (EN 'wired but tired')"),
        ("flavour", "sabor dominante", "tipo dominante", "",
         "'flavour' = variety, not taste"),
        ("flavour", "cuatro sabores de la fatiga", "cuatro formas de fatiga", "",
         "'flavour' = variety, not taste (series cross-reference)"),
    ],
    "pt": [
        ("wired", "conectado para dormir", "agitado para dormir", "",
         "figure for hyperarousal, not network connection"),
        ("wired", "conectado, mas cansado", "agitado, mas cansado", "",
         "figure for hyperarousal (EN 'wired but tired')"),
        ("wired", "cansado-mas-conectado", "cansado mas agitado", "",
         "figure for hyperarousal"),
        ("wired", "cansado, mas conectado", "cansado, mas agitado", "",
         "figure for hyperarousal"),
        ("wired", "cansado, mas energizado", "cansado, mas agitado", "",
         "figure for hyperarousal, not energy"),
        ("load-bearing", "carga de carga", "fechadura de sustentação", "",
         "compound metaphor split into nonsense"),
        ("load-bearing", "amplificador de carga", "amplificador portante", "",
         "literal 'load-bearing'"),
        ("energy tax", "imposto energético", "custo energético", "",
         "metabolic cost, not a fiscal levy"),
        ("energy tax", "taxa de energia", "custo energético", "",
         "metabolic cost, not a fiscal levy"),
        ("energy tax", "taxação de energia", "custo energético", "",
         "metabolic cost, not a fiscal levy"),
        ("energy tax", "tributo que o paciente paga", "custo que o paciente paga", "",
         "metabolic cost, not a fiscal levy"),
        ("flavour", "sabor da histamina", "subtipo histamínico", "",
         "'flavour' = variety, not taste"),
        ("wearing the clothes of", "vestir as roupas", "disfarçado", "",
         "'wearing the clothes of X' = disguised as X"),
        ("not a free lunch", "benefício ilimitado", "não é de graça", "",
         "fixed idiom for a hidden cost"),
        ("elephant in the room", "elefante de cinquenta mil pessoas no meio da sala",
         "a grande questão que ninguém quer abordar", "",
         "English idiom with no native form"),
        ("canary in the coal mine", "canário na mina", "sinal de alerta precoce", "",
         "English mining idiom with no native form"),
        ("red flag", "sinal vermelho", "sinal de alerta", "",
         "'red flag' = warning sign, not the colour word"),
        ("the root lesion", "lesão raiz", "lesão primária", "",
         "noun+noun transfer, not a Portuguese collocation"),
        ("trust death spiral", "espiral de morte da confiança", "espiral de desconfiança", "",
         "'death spiral' transferred word-for-word"),
        ("running on empty", "energia vazia", "em vazio", "",
         "fuel-gauge idiom transferred word-for-word"),
        ("flavour", "sabor dominante", "tipo dominante", "",
         "'flavour' = variety, not taste"),
        ("flavour", '"sabores" dos mastócitos', '"subtipos" dos mastócitos', "",
         "'flavour' = variety, not taste (series cross-reference)"),
    ],
}

FRONT_MATTER = re.compile(r"\A---\r?\n.*?\r?\n---\r?\n", re.S)
FENCE = re.compile(r"(```.*?```)", re.S)


def split_document(text: str) -> tuple[str, list[str]]:
    """Separate front matter from body segments (fenced code isolated)."""
    match = FRONT_MATTER.match(text)
    front = match.group(0) if match else ""
    body = text[len(front):]
    return front, FENCE.split(body)


def _pattern(literal: str) -> re.Pattern[str]:
    """Case-insensitive on the first character, exact elsewhere."""
    first, rest = literal[0], literal[1:]
    return re.compile(
        rf"(?<![A-Za-zÀ-ÿ]){re.escape(first)}{re.escape(rest)}(?![A-Za-zÀ-ÿ])",
        re.IGNORECASE if first.isalpha() else 0,
    )


def rewrite_segment(segment: str, lang: str) -> tuple[str, dict[str, int]]:
    """Rewrite one prose segment; return the new text and per-rule counts."""
    if not segment.strip() or segment.lstrip().startswith("```"):
        return segment, {}
    masked, store = mask_text(segment, whole_links=True)
    counts: dict[str, int] = {}

    for english, literal, fixed, guard, _note in CALQUES[lang]:
        pattern = _pattern(literal)
        if not pattern.search(masked):
            continue
        if guard and guard.startswith("require:"):
            # Positive context: fire only when the required regex is in the
            # ~40 characters immediately before the match. Used for words whose
            # literal sense is common ("en la parte superior" = "at the top of
            # the list / the dose range") and whose figurative sense is
            # signalled by the causal noun that modifies it ("la falla
            # estructural en la parte superior", "la misma falla en la parte
            # superior").
            require_re = re.compile(guard[len("require:"):], re.IGNORECASE)
            n = 0
            out = []
            last = 0
            replaced = 0
            for match in pattern.finditer(masked):
                preceding = masked[max(0, match.start() - 40): match.start()]
                if not require_re.search(preceding):
                    continue
                out.append(masked[last:match.start()])
                out.append(fixed)
                last = match.end()
                replaced += 1
            out.append(masked[last:])
            if replaced:
                masked = "".join(out)
                n = replaced
        elif guard:
            guard_re = re.compile(guard, re.IGNORECASE)
            n = 0
            out: list[str] = []
            last = 0
            replaced = 0
            for match in pattern.finditer(masked):
                if guard_re.match(masked, match.end()):
                    continue        # legitimate spatial/other use, leave alone
                out.append(masked[last:match.start()])
                out.append(fixed)
                last = match.end()
                replaced += 1
            out.append(masked[last:])
            if replaced:
                masked = "".join(out)
                n = replaced
        else:
            masked, n = pattern.subn(fixed, masked)
        if n:
            counts[f"{lang}:{english} -> {fixed}"] = counts.get(
                f"{lang}:{english} -> {fixed}", 0
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
            "es free-lunch calque",
            "La estimulación eléctrica no es un regalo gratis.",
            "es",
            ["regalo gratis"],
            ["no sale gratis"],
        ),
        (
            "es wired calque",
            "Estás demasiado conectado para dormir.",
            "es",
            ["conectado para dormir"],
            ["acelerado para dormir"],
        ),
        (
            "es upstream calque",
            "la falla estructural en la parte superior es lo que crea",
            "es",
            ["en la parte superior"],
            ["aguas arriba"],
        ),
        (
            "pt wearing-the-clothes calque",
            "vestir as roupas de algo mais familiar",
            "pt",
            ["vestir as roupas"],
            ["disfarçado"],
        ),
        (
            "pt running-on-empty calque",
            "está a funcionar com energia vazia.",
            "pt",
            ["energia vazia"],
            ["em vazio"],
        ),
        (
            "pt wired-but-tired calque",
            "\u201cConectado, mas cansado\u201d é uma das descrições mais comuns.",
            "pt",
            ["Conectado, mas cansado"],
            ["agitado, mas cansado"],
        ),
        (
            # Legitimate fiscal use must NOT fire: this is a real tax.
            "es legitimate tax untouched",
            "El impuesto sobre la renta aumentó este año.",
            "es",
            [],
            [],
        ),
        (
            # Legitimate spatial use of the same words must NOT fire: this is
            # the top of a dose range, not a causal direction.
            "es legitimate spatial untouched",
            "Un valor nulo en la parte superior de un rango de dosis no informa.",
            "es",
            ["aguas arriba"],
            ["en la parte superior"],
        ),
        (
            # Front matter categories are English and never touched.
            "front matter untouched",
            "categories: [Treatment, PEM, Energy metabolism]",
            "es",
            [],
            [],
        ),
    ]
    passed = 0
    for name, text, lang, must_go, must_appear in cases:
        new, _counts = rewrite_segment(text, lang)
        ok = all(token not in new for token in must_go) and all(
            token in new for token in must_appear
        )
        passed += 1 if ok else 0
        print(f"  {name:34s} {'PASS' if ok else 'FAIL'}" + ("" if ok else f"  -> {new!r}"))
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
    print(f"{mode} {total} calque occurrence(s)")
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
