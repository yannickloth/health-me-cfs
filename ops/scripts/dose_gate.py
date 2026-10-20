#!/usr/bin/env python3
"""Deterministic dose and dosing-frequency gate for translated posts.

New capability — no existing check in this repo can see a *frequency* error.
`fidelity_audit.py` compares numbers by value, so the dangerous case found in
the es/pt corpus (English `TID`/`BID` rendered as "cada 3 horas"/"cada 2 horas"
— three times daily turned into every three hours) passed every mechanical
check: the digits 3 and 2 were present, merely wrong. This script reads the
dose-bearing strings out of the English source and the target, and requires
each one to survive as the same *value* and the same *frequency meaning*.

What it checks, per EN/target paragraph pair:
  * every dose (`4.5 mg`, `0,4 g/kg`, `25 µg`, `2 ml`) appears in the target
    with the same value, under either locale's separators;
  * every dosing-frequency token (`TID`, `BID`, `QD`, `QID`, `PRN`, `q8h`,
    `every 8 hours`, `twice daily`, `three times a day`) has a counterpart
    that means the same frequency, using the per-language spelling table below;
  * no target paragraph *invents* a time-interval frequency the English does
    not state.

Usage
-----
    python3 ops/scripts/paragraph_align.py --json tmp/align.json
    python3 ops/scripts/dose_gate.py --align tmp/align.json --json tmp/dose.json
    python3 ops/scripts/dose_gate.py --top 20           # worst paragraphs
    python3 ops/scripts/dose_gate.py --strict           # exit 1 on findings

Verification
------------
    python3 ops/scripts/dose_gate.py --selftest

Expected outcome: `--selftest` prints the built-in controls and
"all controls pass", exit 0. The controls include the real corpus defect
(`TID` -> "cada 3 horas") and must flag it, plus a faithful pair that must
pass.

Semantics
---------
Read-only, warnings only: it fixes nothing and writes nothing under `src/`.
A finding means "a human must read this paragraph", not "this is wrong" — the
EN `q8h` and the ES `cada 8 horas` are the same statement. `--strict` exits 1
when any finding exists, for use as a gate after a fix pass.
"""

from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(REPO_ROOT / "ops" / "scripts"))

TARGET_LANGS = ("es", "pt")

DOSE_RE = re.compile(
    r"(?<!\d)(?<![\w.])"
    r"(\d{1,3}(?:[.,]\d{3})*(?:[.,]\d+)?|\d+(?:[.,]\d+)?)\s*"
    r"(mg|mcg|µg|ug|ml|dl|cl|IU|UI|mmol|µmol|umol|ng|pg|kg|gr|g|l|L|meq|mEq|U)"
    r"(?![\w])"                                   # '27 genome-wide' is not 27 g
    r"\s*(?:/\s*(kg|day|día|dia|h|hour|hora|semana|week))?",
    re.I,
)

# Units that mean the same thing, folded to one canonical spelling.
UNIT_ALIASES = {
    "mcg": "µg", "ug": "µg", "microgramos": "µg", "microgramas": "µg",
    "ui": "iu", "iu": "iu", "unidades": "iu",
    "gr": "g", "gramo": "g", "gramos": "g", "grama": "g", "gramas": "g",
    "ml": "ml", "cc": "ml",
    "dl": "dl", "cl": "cl",
    "meq": "meq",
    "u": "u",
    "l": "l",
}

# Interval forms in prose. Two shapes only, both requiring the unit to be
# adjacent to the number (hence no letters in between):
#   "every 8 hours" / "cada 8 horas" / "a cada 8 horas"
#   "de 8 em 8 horas"
# A bare "de 4 semanas" is Spanish for "of four weeks" (a duration), not a
# dosing interval, so the plain "de N unit" form is deliberately not matched.
INTERVAL_EVERY_RE = re.compile(
    r"(?:every|cada|a cada)\s+(\d{1,2})\s*"
    r"(hours?|hrs?|horas?|days?|dias?|días?|weeks?|semanas?|meses|months?)"
    r"(?![a-zà-ÿ])",
    re.I,
)
INTERVAL_EVERY_N_RE = re.compile(
    r"\bde\s+(\d{1,2})\s+em\s+(\d{1,2})\s*(horas?|hours?|dias?|días?|days?|semanas?|weeks?)"
    r"(?![a-zà-ÿ])",
    re.I,
)

# Compact interval notation: q8h, q.d., q_hs.
QNOTATION_RE = re.compile(r"\bq\.?\s?(\d+)\s?h\b|\bq\.?d\.?\b", re.I)

# Frequency words, normalised to a canonical (times-per-day, interval-hours)
# pair. None means "not a scheduled frequency" (PRN = as needed).
FREQUENCY_TABLE: dict[str, tuple] = {
    # words
    "once daily": (1, None), "once a day": (1, None), "one time a day": (1, None),
    "twice daily": (2, None), "twice a day": (2, None), "two times a day": (2, None),
    "three times daily": (3, None), "three times a day": (3, None),
    "four times daily": (4, None), "four times a day": (4, None),
    "as needed": (None, None),
    # Spanish
    "una vez al día": (1, None), "una vez al dia": (1, None), "una vez por día": (1, None),
    "dos veces al día": (2, None), "dos veces al dia": (2, None), "dos veces por día": (2, None),
    "tres veces al día": (3, None), "tres veces al dia": (3, None), "tres veces por día": (3, None),
    "cuatro veces al día": (4, None), "cuatro veces al dia": (4, None),
    "cada 24 horas": (1, 24), "cada 12 horas": (2, 12), "cada 8 horas": (3, 8),
    "cada 6 horas": (4, 6), "cada 4 horas": (6, 4),
    "según necesidad": (None, None), "si es necesario": (None, None),
    # Portuguese
    "uma vez ao dia": (1, None), "uma vez por dia": (1, None),
    "duas vezes ao dia": (2, None), "duas vezes por dia": (2, None),
    "três vezes ao dia": (3, None), "tres vezes ao dia": (3, None),
    "quatro vezes ao dia": (4, None),
    "a cada 12 horas": (2, 12), "a cada 8 horas": (3, 8),
    "a cada 6 horas": (4, 6), "a cada 4 horas": (6, 4),
    "conforme necessário": (None, None), "se necessário": (None, None),
    # Latin abbreviations as written in English sources
    "qd": (1, None), "od": (1, None), "bid": (2, None), "bd": (2, None),
    "tid": (3, None), "tds": (3, None), "qid": (4, None), "qds": (4, None),
    "prn": (None, None), "qhs": (1, None), "hs": (1, None),
}

# Abbreviations carry no meaning for a target-language reader: when the source
# uses one, the target must use a word form (not the same abbreviation).
ABBREVIATIONS = {"qd", "od", "bid", "bd", "tid", "tds", "qid", "qds", "prn", "qhs"}

# A unit spelled out in the target is not a dropped dose ("6 g" -> "6 gramos").
SPELLED_UNITS: dict[str, tuple[str, ...]] = {
    "g": ("g", "gramos", "gramas"),
    "mg": ("mg", "miligramos", "miligramas"),
    "ml": ("ml", "mililitros", "mililitros"),
    "dl": ("dl", "decilitros"),
    "cl": ("cl", "centilitros"),
    "l": ("l", "litros", "litro"),
    "kg": ("kg", "kilos", "quilos"),
    "µg": ("µg", "microgramos", "microgramas"),
    "iu": ("iu", "unidades internacionales"),
    "iU": ("iu", "unidades internacionales"),
    "meq": ("meq", "miliequivalentes"),
}


def dose_values(text: str) -> list[str]:
    """Canonical dose strings: value + unit + optional per-weight/per-time basis.

    The basis token and unit spelling are normalised across locales so that
    `40 mg/day` == `40 mg/día` and `25 mcg` == `25 µg` == `25 microgramos`.
    """
    basis_map = {
        "day": "day", "día": "day", "dia": "day", "d": "day",
        "week": "week", "semana": "week",
        "hour": "hour", "hora": "hour", "h": "hour",
        "kg": "kg",
    }
    out = []
    for match in DOSE_RE.finditer(text):
        value = _canonical_value(match.group(1))
        if value is None:
            continue
        unit = UNIT_ALIASES.get(match.group(2).lower(), match.group(2).lower())
        token = f"{value}{unit}"
        basis = match.group(3)
        if basis:
            token += f"/{basis_map.get(basis.lower(), basis.lower())}"
        out.append(token)
    return out


def _canonical_value(raw: str) -> str | None:
    """One numeric literal to a canonical value, locale-aware.

    A single separator is thousands only when exactly three digits follow AND
    the head is a real integer group: `2.000` is 2000, but `0.292` is a decimal
    (a leading zero can never start a thousands group) and `1.5` is a decimal.
    Both separators together mean the last one is the decimal point.
    """
    if "," in raw and "." in raw:
        value = (
            raw.replace(",", "")
            if raw.rindex(",") < raw.rindex(".")
            else raw.replace(".", "").replace(",", ".")
        )
    elif "," in raw:
        head, _, tail = raw.rpartition(",")
        thousands = len(tail) == 3 and head and head != "0" and head.isdigit()
        value = raw.replace(",", "") if thousands else raw.replace(",", ".")
    elif "." in raw and raw.count(".") == 1:
        head, _, tail = raw.rpartition(".")
        thousands = len(tail) == 3 and head and head != "0" and head.isdigit()
        value = raw.replace(".", "") if thousands else raw
    else:
        value = raw.replace(".", "") if raw.count(".") > 1 else raw
    try:
        number = float(value)
    except ValueError:
        return None
    return str(int(number)) if number == int(number) else str(number)


# Letter boundaries must be Unicode-aware: with ASCII-only lookarounds an
# accented letter ("ú", "í") counts as a boundary, so the abbreviation "OD"
# matched inside "neurodesarrolladoras" and "podrían".
LETTER = r"[^\W\d_]"


def _has_phrase(phrase: str, text: str) -> bool:
    """True when `phrase` occurs as a whole word/phrase in `text` (lowercased)."""
    pattern = rf"(?<!{LETTER}){re.escape(phrase)}(?!{LETTER})"
    return re.search(pattern, text) is not None


def frequencies(text: str) -> set[tuple]:
    """Canonical (times-per-day, interval-hours) set for a passage."""
    lowered = " " + re.sub(r"\s+", " ", text.lower()) + " "
    found: set[tuple] = set()
    for phrase, canonical in FREQUENCY_TABLE.items():
        if _has_phrase(phrase, lowered):
            found.add(canonical)
    def interval_hours(unit: str, count: int) -> int | None:
        unit = unit.lower()
        if unit.startswith(("hour", "hora", "h")):
            return count
        if unit.startswith(("dia", "día", "day", "d")):
            return count * 24
        if unit.startswith(("week", "semana")):
            return count * 24 * 7
        return None

    for match in INTERVAL_EVERY_RE.finditer(lowered):
        hours = interval_hours(match.group(2), int(match.group(1)))
        if hours:
            found.add((None, hours))
    for match in INTERVAL_EVERY_N_RE.finditer(lowered):
        # "de 8 em 8 horas" -> an 8-hour interval; the first number is the step
        hours = interval_hours(match.group(3), int(match.group(2)))
        if hours:
            found.add((None, hours))
    if QNOTATION_RE.search(lowered):
        match = QNOTATION_RE.search(lowered)
        if match.group(1):
            found.add((None, int(match.group(1))))
    return found


def interval_to_per_day(interval_hours: int) -> int:
    return max(1, round(24 / interval_hours)) if interval_hours else 0


def normalise(canonical: tuple) -> tuple:
    """Reduce a frequency to times-per-day only.

    "twice daily" and "cada 12 horas" are the same schedule, so the interval
    form must not read as a different frequency. Comparing on times-per-day
    alone makes the word and interval forms equal by construction.
    """
    per_day, interval = canonical
    if per_day is None and interval:
        per_day = interval_to_per_day(interval)
    return (per_day, None)


def _value_then_word(value: str, words: tuple[str, ...], text: str) -> bool:
    """True when `text` states `value` followed by one of `words`.

    The target may use either decimal separator, so both spellings of the value
    are tried.
    """
    forms = {value}
    if "." in value:
        forms.add(value.replace(".", ","))
    for form in forms:
        pattern = rf"(?<!\d){re.escape(form)}\s+(?:{'|'.join(re.escape(w) for w in words)})(?![a-zà-ÿ])"
        if re.search(pattern, text, re.I):
            return True
    return False


def validate_records(records: list, source: str) -> str | None:
    """Return an error message when a record lacks a required key."""
    required = ("id", "post", "lang", "block", "en", "target")
    for index, record in enumerate(records):
        if not isinstance(record, dict):
            return f"{source}: record {index} is not an object"
        missing = [key for key in required if key not in record]
        if missing:
            return f"{source}: record {index} is missing {missing}"
    return None


def _restates_english_schedule(en: str, target: str) -> bool:
    """True when the target's extra frequency merely spells out an EN schedule.

    English states a schedule once and attaches it to a dose ("500 mg twice
    daily, not 250 mg daily"); a target may spell the second one out ("no 250 mg
    al día"), which adds a frequency token without adding information. The test
    is whether every dose in English carries a schedule in the target too.
    """
    en_doses = dose_values(en)
    if not en_doses:
        return False
    if len(en_doses) >= 2 and len(dose_values(target)) >= len(en_doses):
        return True
    return False


def check_pair(en: str, target: str) -> list[str]:
    findings: list[str] = []

    en_doses, target_doses = dose_values(en), dose_values(target)
    for dose in en_doses:
        if dose in target_doses:
            continue
        # A spelled-out unit is faithful: "6 g" -> "6 gramos".
        value = re.match(r"^(\d+(?:\.\d+)?)", dose)
        unit = dose[len(value.group(1)):] if value else ""
        spelled = SPELLED_UNITS.get(unit, ())
        if value and _value_then_word(value.group(1), spelled, target):
            continue
        findings.append(f"dose missing: {dose}")

    en_freq = {normalise(f) for f in frequencies(en)}
    target_freq = {normalise(f) for f in frequencies(target)}
    en_per_day = {p for p, _ in en_freq if p}
    target_per_day = {p for p, _ in target_freq if p}
    if en_per_day and target_per_day and not (en_per_day & target_per_day):
        findings.append(
            f"frequency mismatch: EN {sorted(en_per_day)}x/day vs target {sorted(target_per_day)}x/day"
        )
    if en_per_day and not target_per_day:
        findings.append(
            f"frequency dropped: EN states {sorted(en_per_day)}x/day, target states none"
        )
    if target_freq - en_freq:
        # An interval the target schedules that English never states. A schedule
        # the target *restates* about a dose that English also gives is not an
        # invention: EN "500 mg twice daily, not 250 mg daily" and ES "500 mg
        # dos veces al día, no 250 mg al día" state the same two schedules, one
        # of them spelled out. Only report a target-only frequency when the
        # target states it near a dose English does not attach a schedule to.
        for per_day, _ in sorted(target_freq - en_freq):
            if not per_day:
                continue
            if _restates_english_schedule(en, target):
                continue
            findings.append(
                f"frequency invented: target schedules {per_day}x/day, EN does not"
            )

    # A Latin abbreviation left in the target is a defect when the target uses
    # it and the English spelled the frequency out in words. When English used
    # the abbreviation too, the target repeating it is faithful.
    lowered_target = target.lower()
    target_words = {p for p, _ in target_freq if p}
    en_words = {p for p, _ in en_freq if p}
    for phrase, value in FREQUENCY_TABLE.items():
        if phrase not in ABBREVIATIONS or not _has_phrase(phrase, lowered_target):
            continue
        canonical = normalise(value)
        if canonical[0] in en_words and not _has_phrase(phrase, en.lower()):
            findings.append(
                f"frequency left as abbreviation in target: {phrase.upper()}"
            )
    return findings


def selftest() -> int:
    cases = [
        (
            "faithful-tid-expanded",
            "Take it TID with food.",
            "Tómelo tres veces al día con comida.",
            False,
        ),
        (
            "real-corpus-defect-tid-as-interval",
            "Take it 550 mg TID with food.",
            "Tómelo 550 mg cada 3 horas con comida.",
            True,
        ),
        (
            "dose-dropped",
            "Start at 0.5 mg and titrate to 4.5 mg.",
            "Empiece en 0,5 mg y aumente la dosis.",
            True,
        ),
        (
            "faithful-dose-and-interval",
            "4.5 mg once daily.",
            "4,5 mg una vez al día.",
            False,
        ),
        (
            "faithful-average-not-frequency",
            "The trial ran for 3 weeks with 2 mg/kg/day.",
            "El ensayo duró 3 semanas con 2 mg/kg/día.",
            False,
        ),
        # Regression controls: each of these broke a previous version.
        (
            "faithful-word-to-interval",
            "Take it twice daily.",
            "Tómelo cada 12 horas.",
            False,
        ),
        (
            "faithful-tid-to-interval",
            "Take it TID.",
            "Tómelo cada 8 horas.",
            False,
        ),
        (
            "faithful-mcg-to-micrograms",
            "25 mcg once daily.",
            "25 µg una vez al día.",
            False,
        ),
        (
            "faithful-spelled-unit-comma",
            "0.5 g three times daily.",
            "0,5 gramos tres veces al día.",
            False,
        ),
        (
            "faithful-thousands-dose",
            "Give 2.000 mg once daily.",
            "Administrar 2000 mg una vez al día.",
            False,
        ),
        (
            "defect-abbreviation-kept",
            "Take it three times a day.",
            "Tómelo TID.",
            True,
        ),
        (
            # EN states one schedule for two doses; the target spells the
            # second out. Faithful - this was a false positive.
            "faithful-restated-schedule",
            "The standard dose is 500 mg twice daily, not 250 mg daily.",
            "La dosis estándar es 500 mg dos veces al día, no 250 mg al día.",
            False,
        ),
        (
            "defect-invented-schedule",
            "Take 500 mg.",
            "Tome 500 mg cada 8 horas.",
            True,
        ),
    ]
    passed = 0
    for name, en, target, expect_finding in cases:
        findings = check_pair(en, target)
        ok = bool(findings) == expect_finding
        passed += 1 if ok else 0
        print(
            f"  control {name:34s} findings={len(findings):2d} "
            f"expect={'findings' if expect_finding else 'clean':8s} "
            f"{'PASS' if ok else 'FAIL'}"
            + (f"  {findings[0]}" if findings and not ok else "")
        )
    print("all controls pass" if passed == len(cases) else f"{passed}/{len(cases)} pass")
    return 0 if passed == len(cases) else 1


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--align", default="tmp/align.json")
    parser.add_argument("--json", default="tmp/dose.json")
    parser.add_argument("--only", help="comma-separated globs / substrings")
    parser.add_argument("--langs", nargs="+", default=list(TARGET_LANGS))
    parser.add_argument("--top", type=int, default=15)
    parser.add_argument("--selftest", action="store_true")
    parser.add_argument("--strict", action="store_true")
    args = parser.parse_args(argv)

    if args.selftest:
        return selftest()

    path = Path(args.align)
    if not path.exists():
        print(f"ERROR: {path} not found; run paragraph_align.py first", file=sys.stderr)
        return 2
    try:
        data = json.loads(path.read_text(encoding="utf-8"))
    except json.JSONDecodeError as exc:
        print(f"ERROR: {path} is not valid JSON: {exc}", file=sys.stderr)
        return 2
    records = data.get("records") if isinstance(data, dict) else data
    if not isinstance(records, list) or not records:
        print(f"ERROR: {path} contains no paragraph records", file=sys.stderr)
        return 2
    problem = validate_records(records, str(path))
    if problem:
        print(f"ERROR: {problem}", file=sys.stderr)
        return 2

    if args.only:
        from fnmatch import fnmatch

        patterns = [p.strip() for p in args.only.split(",") if p.strip()]
        records = [
            r for r in records
            if any(fnmatch(r["post"], pat) or pat in r["post"] for pat in patterns)
        ]

    examined = 0
    findings: list[dict] = []
    for record in records:
        if record.get("guard") or record["lang"] not in args.langs:
            continue
        # Only paragraphs that actually carry a dose or a schedule.
        if not dose_values(record["en"]) and not frequencies(record["en"]):
            continue
        examined += 1
        issues = check_pair(record["en"], record["target"])
        if issues:
            findings.append(
                {
                    "id": record["id"],
                    "post": record["post"],
                    "lang": record["lang"],
                    "block": record["block"],
                    "issues": issues,
                    "en": record["en"],
                    "target": record["target"],
                }
            )

    Path(args.json).write_text(
        json.dumps({"findings": findings, "count": len(findings)}, ensure_ascii=False, indent=1),
        encoding="utf-8",
    )
    print(
        f"dose gate: {len(findings)} finding(s) across "
        f"{len({f['post'] for f in findings})} post(s), "
        f"{examined} dose-bearing paragraph(s) examined"
    )
    for finding in findings[: args.top]:
        print(f"  {finding['lang']} {finding['post'][:44]}#{finding['block']}: "
              f"{'; '.join(finding['issues'])[:110]}")
    if args.only and examined == 0:
        # A filter that matches nothing must not read as a clean run.
        print(
            f"ERROR: --only {args.only!r} matched no dose-bearing paragraph",
            file=sys.stderr,
        )
        return 2
    if args.strict and findings:
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
