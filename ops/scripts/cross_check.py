#!/usr/bin/env python3
"""Figure-of-speech (calque) triage plus second-translator cross-check.

Extends the cross-check with a *mechanical* calque detector. A calque — an
idiom or metaphor transferred word-for-word instead of rendered with the target
language's own expression — is invisible to every other check in this repo: the
numbers match, the citation keys match, the negation matches, and the small
model that produced the corpus reads both languages well enough to satisfy a
judge. Four calques were confirmed by hand in this corpus ("not a free lunch"
-> "no es un regalo gratis") and found by chance, not by any check.

The detector has two deterministic signals and combines them into a worklist:

  * a **figure-of-speech candidate** in the English paragraph — a fixed
    expression, proverb, verb-plus-particle phrasal idiom, metaphor written as
    a literal noun phrase, sports/gambling/military figure, body or nature
    imagery, or an English-specific intensifier or hedge (FIGURES below);
  * a **lexical-closeness score** between the ES and PT renderings of the same
    English block. A word-for-word transfer makes both machine translators
    converge on the same words ("no es un regalo gratis" / "não é um presente
    grátis"), so the two targets become near-identical in a way faithful prose,
    which inflects and word-orders differently, does not.

Two independent MT systems agreeing on the *figurative* wording is the signal;
neither the source nor either target alone can show a calque.

The cross-check path is unchanged: with `--pairs` and a TranslateGemma server
it re-translates the English and compares facts that must not drift (numbers,
units, dosing frequencies, negation, entities).

Usage
-----
    # Calque triage (no server): score every aligned paragraph pair.
    python3 ops/scripts/paragraph_align.py --json tmp/align.json
    python3 ops/scripts/cross_check.py --figures --align tmp/align.json \\
        --out tmp/figures.json

    # Second-translator cross-check (needs the TranslateGemma server on 8902).
    python3 ops/scripts/cross_check.py --pairs tmp/judge/crossval.json \\
        --out tmp/judge/crossval.jsonl --port 8902

Verification
------------
    python3 ops/scripts/cross_check.py --selftest

Expected outcome: `--selftest` runs the comparator AND the figure detector on
built-in pairs (no server needed) and prints "all controls pass". A figures run
prints `N paragraph(s), M with a figure candidate` and writes the ranked
worklist; a cross-check run prints `N/N checked, M disagree` and writes one
JSONL row per paragraph.

Semantics
---------
Read-only. Writes only `--out` (under tmp/). In figures mode a row is written
for any pair whose English carries a figure candidate; `score` ranks how much
the figure was transferred. A candidate is a worklist entry, not a defect — a
figure the target language shares legitimately ("double-blind", "red flag") is
not a calque. `--strict` exits 1 when any disagreement exists (cross-check) or
any candidate is found (figures), for use as a gate.
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


# ---------------------------------------------------------------------------
# Figure-of-speech (calque) triage
# ---------------------------------------------------------------------------
#
# FIGURES holds the fixed expressions, phrasal idioms, metaphors and
# intensifiers that a literal translator can transfer word-for-word. It is a
# curated inventory, not a parser: the categories follow the auditor's
# checklist (idiom, proverb, phrasal verb, metaphor-as-noun, sports/military
# figure, body/nature imagery, intensifier/hedge). Multi-word entries are
# matched case-insensitively as whole phrases; each carries a stable label so
# the worklist says *which* figure fired.
#
# The list is deliberately broad. A broad list produces candidates, not
# verdicts: the judge (translation-auditor) decides which were transferred. A
# narrow list silently misses the class, which is how the shipped calques got
# through.
FIGURE_INVENTORY: dict[str, tuple[str, ...]] = {
    "idiom": (
        "not a free lunch", "free lunch", "no free lunch", "a free ride",
        "the bill comes due", "the bill came due", "pay the price",
        "the price you pay", "comes at a price", "at what cost",
        "at all costs", "cost an arm and a leg", "the whole nine yards",
        "the last straw", "a blessing in disguise", "the tip of the iceberg",
        "a slippery slope", "the elephant in the room", "the silver lining",
        "a double-edged sword", "a catch-22", "catch-22", "a chicken-and-egg",
        "the writing on the wall", "read the writing on the wall",
        "the blind leading the blind", "a bitter pill", "a mixed bag",
        "a smoking gun", "the crux of", "a game changer", "a ballpark figure",
        "sets the stage", "opens the door", "closes the door", "the bottom line",
        "against the clock", "a level playing field", "the fine print",
        "the devil is in the detail", "a grey area", "a red herring",
        "the thin end of the wedge", "a house of cards", "a gold standard",
        "worth its weight in gold", "in the same boat", "a wild goose chase",
        "a red flag", "red flag", "double-blind", "double blind",
    ),
    "proverb": (
        "the proof of the pudding", "you reap what you sow",
        "put the cart before the horse", "the exception proves the rule",
        "correlation does not imply causation is not",
        "one swallow does not make a summer", "don't count your chickens",
        "you can't have your cake and eat it",
    ),
    "phrasal": (
        "boils down to", "boil down to", "comes down to", "come down to",
        "kicks in", "kick in", "sits with", "sit with", "pushes through",
        "push through", "lands on", "land on", "turns out", "turn out",
        "pans out", "pan out", "plays out", "play out", "ends up", "end up",
        "adds up to", "add up to", "piles up", "pile up", "weighs in",
        "weigh in", "holds up", "hold up", "breaks down", "break down",
        "drills down", "drill down", "pins down", "pin down", "nails down",
        "nail down", "zeros in", "zero in", "comes up", "come up",
        "gives rise", "give rise", "amounts to", "amount to",
        "stems from", "stem from", "hinges on", "hinge on", "rests on",
        "rest on", "rides on", "ride on", "comes with", "come with",
        "goes with", "go with", "carries over", "carry over",
        "falls short", "fall short", "holds water", "hold water",
        "stands out", "stand out", "fits the bill", "fit the bill",
        "cuts both ways", "cut both ways", "cuts against",
        "runs the risk", "run the risk", "takes its toll", "take its toll",
        "comes to grips", "grapples with", "grapple with", "swallows up",
        "doles out", "hand out", "hands out", "does the work",
        "doing the work", "does the heavy lifting", "doing the heavy lifting",
        "does more work", "doing more work", "does the talking",
        "wearing the clothes", "wear the clothes", "wears the clothes",
    ),
    "metaphor": (
        "the wall", "hits a wall", "hitting a wall", "hits the wall",
        "the glass ceiling", "the ceiling", "the floor", "the bottleneck",
        "the snowball", "snowball effect", "the domino effect", "the cascade",
        "the tipping point", "the breaking point", "the point of no return",
        "the leash", "on a leash", "off the leash", "the switch",
        "flips a switch", "flip a switch", "the brake", "the brakes",
        "the accelerator", "the gas pedal", "the fuel", "runs on",
        "the engine", "the machinery", "the plumbing", "under the hood",
        "the search space", "the rabbit hole", "down the rabbit hole",
        "the tightrope", "walking a tightrope", "the map", "the territory",
        "the ground truth", "the bridge", "the gap", "the chasm",
        "the wall of immunity", "the firewall", "the seatbelt", "the alarm",
        "the smoke alarm", "the canary in the coal mine", "the tripwire",
        "the reset button", "the dimmer switch", "the thermostat",
        "the well runs dry", "runs dry", "the reservoir", "the bucket",
        "the drain", "down the drain", "the leak", "the floodgates",
        "the spark", "sparks a", "the seed", "the root", "the soil",
        "the tapestry", "the thread", "the fabric",
    ),
    "sports_military": (
        "moving the goalposts", "moves the goalposts", "the goalposts",
        "on the back foot", "on the front foot", "a level playing field",
        "in the same ballpark", "the ball is in", "the home stretch",
        "a curveball", "throws a curveball", "a slam dunk", "the ballpark",
        "the endgame", "the long game", "in the trenches", "on the front line",
        "the front line", "friendly fire", "the battle", "the war on",
        "the arms race", "the ammunition", "the arsenal", "the target",
        "the silver bullet", "the magic bullet", "the blunt instrument",
        "the sledgehammer", "the shotgun", "the sniper",
    ),
    "body_nature": (
        "at arm's length", "at arms length", "in the dark", "in the loop",
        "out of the loop", "keeps the lights on", "in the spotlight",
        "under the radar", "under the microscope", "under the hood",
        "in the crosshairs", "on the same page", "off the table",
        "on the table", "out of the box", "outside the box",
        "a shot in the dark", "a gut feeling", "a gut reaction",
        "the gut", "the heart of", "the backbone", "the lifeblood",
        "the fabric of", "the wheels come off", "the wheels fall off",
        "gains traction", "gains ground", "loses ground", "in the weeds",
        "the low-hanging fruit", "a needle in a haystack", "a can of worms",
        "a canary in the coal mine", "the tip of the spear",
    ),
    "intensifier": (
        "by no means", "by all means", "at all", "hardly", "scarcely",
        "barely", "for what it's worth", "for what it is worth",
        "in and of itself", "if anything", "at best", "at worst",
        "at the very least", "to say the least", "needless to say",
        "goes without saying", "little more than", "nothing short of",
        "far from", "as a rule", "at the end of the day",
        "when all is said and done", "by and large", "of course",
        "let alone", "not least", "in no small part", "par for the course",
        "the name of the game", "a matter of", "a question of",
    ),
}

# Figures the target language legitimately shares: an established loan or an
# international metaphor. Transferring these is correct, not a calque, so a
# candidate on this list is downgraded (kept in the worklist at weight 0) so a
# reviewer sees it was considered and cleared.
INTERNATIONAL_FIGURES = frozenset(
    {
        "double-blind", "red flag", "in vitro", "in vivo", "gold standard",
        "immune system", "the immune system", "trigger", "biomarker",
        "game changer", "catch-22", "the elephant in the room",
        "a smoking gun", "the tip of the iceberg",
    }
)

# Compiled once: (label, phrase, regex).
_FIGURE_MATCHERS: list[tuple[str, str, re.Pattern[str]]] = [
    (
        label,
        phrase,
        re.compile(rf"(?<![A-Za-z]){re.escape(phrase)}(?![A-Za-z])", re.I),
    )
    for label, phrases in FIGURE_INVENTORY.items()
    for phrase in phrases
]

DASHES = "–—-"
PUNCT_RE = re.compile(rf"[^\w\s{re.escape(DASHES)}]|[{re.escape(DASHES)}]", re.U)
WS_RE = re.compile(r"\s+")


def figure_candidates(en: str) -> list[tuple[str, str]]:
    """Every (label, phrase) figure candidate in an English paragraph.

    Longer phrases win over their own sub-phrases: 'a red flag' and 'red flag'
    are one transfer decision, not two, so only the longest match per span is
    kept. Distinct figures in the same paragraph are all reported.
    """
    matched: list[tuple[int, int, str, str]] = []
    for label, phrase, pattern in _FIGURE_MATCHERS:
        for found in pattern.finditer(en):
            matched.append((found.start(), found.end(), label, phrase.lower()))
    # Longest match wins on overlap; ties keep the first seen.
    matched.sort(key=lambda m: (m[0], -(m[1] - m[0])))
    kept: list[tuple[int, int, str, str]] = []
    for start, end, label, phrase in matched:
        if any(start < k_end and end > k_start for k_start, k_end, _, _ in kept):
            continue
        kept.append((start, end, label, phrase))
    seen: set[str] = set()
    hits: list[tuple[str, str]] = []
    for _, _, label, phrase in sorted(kept, key=lambda k: k[0]):
        if phrase in seen:
            continue
        seen.add(phrase)
        hits.append((label, phrase))
    return hits


def _surface_tokens(text: str) -> list[str]:
    """Lowercased word tokens with punctuation and dashes stripped."""
    return [t for t in WS_RE.split(PUNCT_RE.sub(" ", text.lower())) if t]


def lexical_closeness(es: str, pt: str) -> float:
    """Token-sequence closeness between two renderings of the same EN block.

    Both languages inflect, so an exact token overlap under-counts (Spanish
    'pacientes' and Portuguese 'pacientes' match, but 'mejoran'/'melhoram' do
    not). Character trigrams absorb the inflection. The score is the mean of
    token Jaccard and trigram Jaccard, in [0, 1]: near 1 means the two MT
    systems produced nearly the same words, the signature of a literal
    transfer.
    """
    a, b = _surface_tokens(es), _surface_tokens(pt)
    if not a or not b:
        return 0.0
    ta, tb = set(a), set(b)
    token_j = len(ta & tb) / len(ta | tb)

    def grams(tokens: list[str]) -> set[str]:
        out: set[str] = set()
        for token in tokens:
            out |= {token[i : i + 3] for i in range(max(0, len(token) - 2))}
        return out

    ga, gb = grams(a), grams(b)
    gram_j = len(ga & gb) / len(ga | gb) if (ga | gb) else 1.0
    return round((token_j + gram_j) / 2, 3)


def figure_score(
    en: str, es: str | None, pt: str | None
) -> tuple[float, dict[str, object]]:
    """Rank a block for calque review from its English figure candidates.

    `es`/`pt` are the two target renderings of the same English block when
    both exist (they are what make the closeness signal possible). The score
    rewards an English figure plus lexical convergence, and it stays high when
    a figure was transferred identically into both languages.
    """
    candidates = figure_candidates(en)
    signals: dict[str, object] = {}
    if not candidates:
        return 0.0, signals

    labels = sorted({label for label, _ in candidates})
    phrases = [phrase for _, phrase in candidates]
    signals["figure_candidates"] = phrases
    signals["figure_labels"] = labels

    score = 1.0 + 0.5 * (len(candidates) - 1)      # more figures, more risk
    if "intensifier" in labels:
        # Intensifiers are the weakest class (a hedge can transfer harmlessly).
        score = max(1.0, score - 0.5)

    if es is not None and pt is not None:
        closeness = lexical_closeness(es, pt)
        signals["es_pt_closeness"] = closeness
        if closeness >= 0.62:
            score += 1.5                            # both MT systems converged
        elif closeness >= 0.50:
            score += 0.75

    if all(
        any(phrase.lower() in fig or fig in phrase.lower() for fig in INTERNATIONAL_FIGURES)
        for phrase in phrases
    ):
        score *= 0.3                                # shared figure, not a calque

    return round(score, 2), signals


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

    # Figure-of-speech controls. These prove the calque detector fires and,
    # just as important, that it stays quiet on plain prose. The 'real-calque'
    # control is the shipped defect from this corpus, reconstructed: the English
    # idiom, and the two literal renderings the two MT systems produced.
    figure_cases = [
        (
            "real-calque-detected",
            "Electrical muscle stimulation is not a free lunch.",
            "La estimulación muscular eléctrica no es un regalo gratis.",
            "A estimulação muscular elétrica não é um presente grátis.",
            True,
        ),
        (
            "phrasal-idiom-detected",
            "It all boils down to energy availability.",
            "Todo se reduce a la disponibilidad de energía.",
            "Tudo se resume à disponibilidade de energia.",
            True,
        ),
        (
            "metaphor-noun-detected",
            "When the dose is doing the work, the effect looks real.",
            "Cuando la dosis hace el trabajo, el efecto parece real.",
            "Quando a dose faz o trabalho, o efeito parece real.",
            True,
        ),
        (
            "plain-prose-silent",
            "The trial measured fatigue after exercise in 42 patients.",
            "El ensayo midió la fatiga tras el ejercicio en 42 pacientes.",
            "O ensaio mediu a fadiga após o exercício em 42 pacientes.",
            False,
        ),
        (
            "international-figure-downgraded",
            "The study was double-blind and used a red flag threshold.",
            "El estudio fue doble ciego y usó un umbral de bandera roja.",
            "O estudo foi duplo-cego e usou um limiar de bandeira vermelha.",
            True,
        ),
    ]
    fig_passed = 0
    for name, en, es, pt, expect_candidate in figure_cases:
        score, signals = figure_score(en, es, pt)
        has_candidate = bool(signals.get("figure_candidates"))
        # 'international-figure-downgraded' is a candidate (it must appear in
        # the worklist) but the score must be de-risked below the plain ones.
        ok = has_candidate == expect_candidate
        if name == "international-figure-downgraded":
            ok = ok and score <= 0.7
        fig_passed += 1 if ok else 0
        print(
            f"  control {name:30s} score {score:5.2f} "
            f"cand={'yes' if has_candidate else 'no '} "
            f"{'PASS' if ok else 'FAIL'}"
        )

    total = len(cases) + len(figure_cases)
    passed += fig_passed
    print("all controls pass" if passed == total else f"{passed}/{total} pass")
    return 0 if passed == total else 1


def run_figures(args: argparse.Namespace) -> int:
    """Calque triage over an alignment file; writes a ranked JSON worklist."""
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

    # Index the two target renderings by (post, block) so the closeness signal
    # compares ES against PT for the *same* English block.
    by_block: dict[tuple[str, int], dict[str, str]] = {}
    en_by_block: dict[tuple[str, int], str] = {}
    en_words: dict[tuple[str, int], int] = {}
    for record in records:
        key = (record["post"], record["block"])
        by_block.setdefault(key, {})[record["lang"]] = record["target"]
        en_by_block[key] = record["en"]
        en_words[key] = record.get("en_words", len(record["en"].split()))

    scored: list[dict[str, object]] = []
    candidates = 0
    for (post, block), langs in by_block.items():
        en = en_by_block[(post, block)]
        score, signals = figure_score(en, langs.get("es"), langs.get("pt"))
        if not signals:
            continue
        candidates += 1
        scored.append(
            {
                "post": post,
                "block": block,
                "score": score,
                "en_words": en_words[(post, block)],
                "en": en,
                "es": langs.get("es", ""),
                "pt": langs.get("pt", ""),
                **signals,
            }
        )
    scored.sort(key=lambda item: (-item["score"], item["post"], item["block"]))
    flagged = [item for item in scored if item["score"] >= args.threshold]

    out_path = Path(args.figures_json)
    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text(
        json.dumps(
            {
                "blocks": len(by_block),
                "with_candidate": candidates,
                "flagged": len(flagged),
                "threshold": args.threshold,
                "records": scored,
            },
            ensure_ascii=False,
            indent=1,
        ),
        encoding="utf-8",
    )

    from collections import Counter

    label_counts: Counter = Counter()
    for item in scored:
        for label in item.get("figure_labels", []):
            label_counts[label] += 1

    print(
        f"{len(by_block)} paragraph(s), {candidates} with a figure candidate, "
        f"{len(flagged)} at or above {args.threshold} -> {out_path}"
    )
    print("candidates by class: " + ", ".join(
        f"{label} {count}" for label, count in label_counts.most_common()
    ))
    print(f"top {args.top} blocks by calque score:")
    for item in scored[: args.top]:
        phrases = ", ".join(item["figure_candidates"][:3])
        print(
            f"  {item['score']:5.2f} {item['post'][:40]}#{item['block']} "
            f"[{phrases}]"
        )
    if args.strict and flagged:
        return 1
    return 0


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--pairs", default="tmp/judge/crossval.json")
    parser.add_argument("--out", default="tmp/judge/crossval.jsonl")
    parser.add_argument("--base-url", default="http://127.0.0.1:8902")
    parser.add_argument("--model", default="translategemma")
    parser.add_argument("--limit", type=int)
    parser.add_argument("--strict", action="store_true")
    parser.add_argument("--selftest", action="store_true")
    parser.add_argument(
        "--figures", action="store_true",
        help="calque triage mode: score every aligned paragraph pair from "
        "--align with the figure-of-speech detector (no server needed)",
    )
    parser.add_argument(
        "--align", default="tmp/align.json",
        help="paragraph-align output (figures mode)",
    )
    parser.add_argument(
        "--figures-json", default="tmp/figures.json",
        help="JSON worklist output (figures mode)",
    )
    parser.add_argument("--top", type=int, default=25)
    parser.add_argument("--threshold", type=float, default=1.0)
    args = parser.parse_args(argv)

    if args.selftest:
        return selftest()

    if args.figures:
        return run_figures(args)

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
