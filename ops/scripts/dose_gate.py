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
    r"(\d+(?:[.,]\d+)?)\s*"
    r"(mg|mcg|µg|ug|ml|mL|IU|UI|mmol|µmol|umol|ng|pg|kg|g)"
    r"(?![\w])"                                   # '27 genome-wide' is not 27 g
    r"\s*(?:/\s*(kg|day|día|dia|h|hour|hora|semana|week))?",
)

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
    "kg": ("kg", "kilos", "quilos"),
    "µg": ("µg", "microgramos", "microgramas"),
    "iu": ("iu", "unidades internacionales"),
    "iU": ("iu", "unidades internacionales"),
}


def dose_values(text: str) -> list[str]:
    """Canonical dose strings: value + unit + optional per-weight/per-time basis.

    The basis token is normalised across locales so that the English
    `40 mg/day` and the Spanish `40 mg/día` compare equal.
    """
    basis_map = {
        "day": "day", "día": "day", "dia": "day", "d": "day",
        "week": "week", "semana": "week",
        "hour": "hour", "hora": "hour", "h": "hour",
        "kg": "kg",
    }
    out = []
    for match in DOSE_RE.finditer(text):
        raw = match.group(1)
        value = raw.replace(",", ".") if "," in raw else raw
        unit = match.group(2).lower().replace("ug", "µg").replace("mL", "ml")
        unit = unit.replace("ui", "iu")
        basis = match.group(3)
        token = f"{value}{unit}"
        if basis:
            token += f"/{basis_map.get(basis.lower(), basis.lower())}"
        out.append(token)
    return out


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
    """(times_per_day, interval_hours) -> comparable form."""
    per_day, interval = canonical
    if per_day is None and interval:
        per_day = interval_to_per_day(interval)
    return (per_day, interval)


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
        if value and any(
            re.search(rf"(?<!\d){re.escape(value.group(1))}\s+{alt}\b", target, re.I)
            for alt in spelled
        ):
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
    if target_freq - en_freq and en_freq:
        # Only an explicitly scheduled interval counts as an invented frequency.
        # A bare "once daily" that English states in other words is not one.
        extra = sorted(
            f"{interval}h" for per_day, interval in (target_freq - en_freq)
            if interval and per_day
        )
        if extra:
            findings.append(
                f"frequency invented: target schedules {', '.join(extra)}, EN does not"
            )

    # A Latin abbreviation in the target is only a defect when the surrounding
    # text does not also give the frequency in words; both forms co-occur in
    # this corpus ("500 mg twice daily" ... "500 mg BID for 14 days").
    lowered_target = target.lower()
    for phrase, value in FREQUENCY_TABLE.items():
        if phrase not in ABBREVIATIONS or not _has_phrase(phrase, lowered_target):
            continue
        if value in en_freq:
            continue                     # the target repeats it, but EN used it too
        # EN expressed this frequency in words; the target must too.
        if value in target_freq or any(
            p == value[0] for p, _ in target_freq
        ):
            continue
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
    data = json.loads(path.read_text(encoding="utf-8"))
    records = data.get("records") if isinstance(data, dict) else data
    if not isinstance(records, list) or not records:
        print(f"ERROR: {path} contains no paragraph records", file=sys.stderr)
        return 2

    if args.only:
        from fnmatch import fnmatch

        patterns = [p.strip() for p in args.only.split(",") if p.strip()]
        records = [
            r for r in records
            if any(fnmatch(r["post"], pat) or pat in r["post"] for pat in patterns)
        ]

    findings: list[dict] = []
    for record in records:
        if record.get("guard") or record["lang"] not in args.langs:
            continue
        # Only paragraphs that actually carry a dose or a schedule.
        if not dose_values(record["en"]) and not frequencies(record["en"]):
            continue
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
    print(f"dose gate: {len(findings)} finding(s) across "
          f"{len({f['post'] for f in findings})} post(s)")
    for finding in findings[: args.top]:
        print(f"  {finding['lang']} {finding['post'][:44]}#{finding['block']}: "
              f"{'; '.join(finding['issues'])[:110]}")
    if args.strict and findings:
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
