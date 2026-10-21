#!/usr/bin/env python3
"""Mechanical fidelity audit of translated Quarto blog posts.

New capability — no fidelity audit tool existed before this script. It is the
cheap first stage of translation review: it finds the objectively checkable
defects (dropped numbers, lost citations, untranslated English, language
register leakage, glossary-term drift) so the expensive semantic review
(`sonnet-general`, one post at a time) only has reasoning left to do.

Usage
-----
    python3 ops/scripts/fidelity_audit.py                     # all posts, es + pt
    python3 ops/scripts/fidelity_audit.py --only '*sleep*'    # subset
    python3 ops/scripts/fidelity_audit.py --json tmp/findings.json

Verification
------------
    python3 ops/scripts/fidelity_audit.py --only '*sleep-hangover*'

Expected outcome: one line per post with a finding count, and a summary line
`audited N posts, M with findings`. Exit status is 0 whenever every post was
readable (1 only with `--strict`, when any post has findings).

Semantics
---------
Warnings only. Every finding is reported, never fixed — this script is
read-only. It writes nothing into `src/`. `--strict` turns findings into a
non-zero exit status for CI use.
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
QUARTO = REPO_ROOT / "src" / "main" / "quarto"
EN_POSTS = QUARTO / "en" / "blog" / "posts"

# ---------------------------------------------------------------------------
# Target-language configuration
# ---------------------------------------------------------------------------

# Function words that have no same-spelling identity in the target language.
EN_ONLY_WORDS: dict[str, list[str]] = {
    "es": """the and with from that these those their there they been being had
    not your all will would should could may might must about after before
    between during under over into upon than when where which while what how why
    who whose such only also very just like other every both own many much more
    most less least been being out off yet still well our its his
    part life set system information run high low new old day
    time year week month night sleep brain body pain doctor patient drug dose
    effect blood heart cell energy fatigue exercise treatment study research
    symptom diagnosis disease condition therapy when these those people make
    takes gets give know need seen used shown found based given taken """.split(),
    "pt": """the and with from that these those their there they been being had
    not your all will would should could may might must about after before
    between during under over into upon than when where which while what how why
    who whose such only very just other every both own many much most less least
    out off yet still well his were set system information test run
    high low new old day time year week month night sleep brain body pain
    doctor patient drug effect blood heart cell energy fatigue exercise
    treatment study research symptom diagnosis disease condition therapy people
    make takes gets give know need seen used shown found based given taken """.split(),
}

# Curated false friends and register leakage.  (source_en_pattern, target_pattern, code)
FALSE_FRIENDS: dict[str, list[tuple[str, str, str]]] = {
    "es": [
        (r"\bactually\b", r"\bactualmente\b", "ES 'actualmente' = 'currently', not 'actually'"),
        (r"\beventually\b", r"\beventualmente\b", "ES 'eventualmente' = 'possibly', not 'eventually'"),
        (r"\bembarrassed\b", r"\bembarazada\b", "ES 'embarazada' = 'pregnant'"),
        (r"\bassist(?:ed|ing|s)?\b", r"\basist(?:e|ir|iendo|ido)\b", "ES 'asistir' = 'to attend'"),
        (r"\bconstipat(?:ed|ion)\b", r"\bconstipad[oa]\b", "ES/PT 'constipado' check target idiom"),
        (r"\bintoxicated\b", r"\bintoxicad[oa]\b", "EN 'intoxicated' = drunk; ES 'intoxicado' = poisoned"),
        # Calque-audit classes (2026-10-21 sweep). Each fires only when the EN
        # figure and the defective rendering share a block.
        (r"\bmasking\b", r"\bmascar\b", "ES 'mascar' = to chew; masking = 'enmascarar'"),
        (r"\bpriming\b", r"\bpreparad[oa]\b", "ES 'priming' (pharmacology) = 'cebado', not 'preparado'"),
        (r"\bflavou?rs?\b", r"\bsabores?\b", "ES 'sabor' = taste; 'flavour' (variety) = 'tipo/variante'"),
        (r"\ballostatic\b", r"\balloster", "double-l 'alloster…' is not Spanish: allostatic = 'alostático', allosteric = 'alostérico'"),
        (r"\benvelope\b", r"sobre energético|\bdel sobre\b|\bel sobre\b", "energy envelope = 'envolvente (energética)', not 'sobre'"),
        (r"\bhangover\b", r"efecto secundario", "hangover = 'resaca', not 'efecto secundario'"),
        (r"tipping point", r"punto de partida", "tipping point = 'punto de inflexión'; 'punto de partida' = starting point (inverts the claim)"),
        (r"\bbaseline\b", r"punto de partida", "baseline (measurement) = 'línea base'"),
        (r"\bcompounds\b", r"compit[ei]\b", "'X compounds Y' = X worsens Y ('agrava'), not 'compite' (competes)"),
        (r"disinhibition", r"disinhibici", "'disinhibición' is not a Spanish word: 'desinhibición'"),
        (r"\ballopregnanolone\b", r"allopregnanolona", "transliteration drops one l: 'alopregnanolona'"),
    ],
    "pt": [
        (r"\bactually\b", r"\batualmente\b", "PT 'atualmente' = 'currently', not 'actually'"),
        (r"\beventually\b", r"\beventualmente\b", "PT 'eventualmente' = 'occasionally', not 'eventually'"),
        (r"\boffice\b", r"\boficina\b", "PT 'oficina' = workshop, not office"),
        (r"\bembarrassed\b", r"\bembaraçad[oa]\b", "PT 'embaraçado' is acceptable; verify context"),
        (r"\bassist(?:ed|ing|s)?\b", r"\bassist(?:e|iu|indo|ido)\b", "PT 'assistir' = to watch/attend"),
        (r"\bconstipat(?:ed|ion)\b", r"\bconstipad[oa]\b", "PT 'constipado' = a cold, not constipation"),
        (r"\bsoap\b", r"\bsopa\b", "PT 'sopa' = soap; EN soup is 'sopa' too, check sense"),
        # Calque-audit classes (2026-10-21 sweep).
        (r"\bflavou?rs?\b", r"\bsabores?\b", "PT 'sabor' = taste; 'flavour' (variety) = 'tipo'"),
        (r"\bpriming\b", r"\bpreparo\b", "PT 'priming' (pharmacology) = 'cebamento', not 'preparo'"),
        (r"\bprovable\b", r"\bprovável\b", "PT 'provável' = probable; provable = 'demonstrável'"),
        (r"\ballostatic\b", r"\balloster", "double-l 'alloster…' is not Portuguese: allostatic = 'alostático', allosteric = 'alostérico'"),
        (r"tipping point", r"ponto de queda|ponto de partida", "tipping point = 'ponto de viragem' (pt-PT)"),
        (r"\bflushing\b", r"arrepiament", "flushing = 'rubor', not 'arrepiamento' (goosebumps)"),
        (r"tipping point|turning point|flip", r"virada", "pt-PT uses 'viragem'; 'virada' is Brazilian"),
    ],
}

# Peninsular / European variants the small model keeps leaking from.
REGISTER: dict[str, list[tuple[str, str]]] = {
    "es": [
        (r"\bcomputadora\b", "LatAm for 'ordenador'"),
        (r"\bcarro\b", "LatAm for 'coche'"),
        (r"\b(?:el|un|tu|su|este|ese)\s+celular\b", "'el celular' = LatAm phone; Spain uses 'móvil' (adjective 'cuerpo celular' is fine)"),
        (r"\bmanejar\b", "LatAm for 'conducir'"),
        (r"\bahorita\b", "LatAm diminutive"),
        (r"\bustedes\b", "LatAm/neutral plural; Spain prefers 'vosotros'"),
        (r"\b(?:vos|tenés|sabés|querés|podés|venís|hacés|decís)\b", "voseo (Argentina/Uruguay)"),
        (r"\btestad[oa]s?\b|\btestar\b", "'testar'/'testado' is LatAm-flavoured; Spain uses 'probar'"),
        (r"\bdesechos?\b", "LatAm; Spain uses 'residuos'"),
        (r"[a-záéíóú]ção\b", "PT suffix '-ção' in Spanish text"),
        (r"\b\w*[ãõ]\w*\b", "PT nasal diacritics in Spanish text"),
        (r"\bç\w*\b|\b\w+ç\w*\b", "'ç' is Portuguese, not Spanish"),
        (r"\bcosteo\b|\bcostear\b", "LatAm; Spain uses 'coste'"),
    ],
    "pt": [
        (r"\b(?:planejamento|planejamentos)\b", "BR for 'planeamento'"),
        (r"\bregistro\b", "BR for 'registo'"),
        (r"\bcontato\b", "BR for 'contacto'"),
        (r"\bfato\b", "BR for 'facto'"),
        (r"\b(?:a|uma|sua)\s+tela\b", "'a tela' = BR screen; pt-PT uses 'ecrã'"),
        (r"\b(?:o|um|seu|no|teu)\s+celular\b", "'o celular' = BR phone; pt-PT uses 'telemóvel' (adjective 'corpo celular' is fine)"),
        (r"\bequipe\b", "BR for 'equipa'"),
        (r"\ba gente\b", "BR 'a gente'"),
        (r"\bcrônic[oa]s?\b|\bfenômen\w*\b|\bgêner\w*\b|\bheróic\w*\b", "BR circumflex spelling"),
        (r"est(?:á|ão|ou|amos|ava|avam)\s+\w+(?:ando|endo|indo)", "BR progressive; pt-PT uses 'a + infinitivo'"),
        (r"\b[a-záéíóúâêôãõç]+ción\b", "ES suffix '-ción' in Portuguese text"),
        (r"\b\w*ñ\w*\b", "'ñ' is Spanish, not Portuguese"),
        (r"\bvocês\b|\bvocê\b", "BR-flavoured address; pt-PT prefers impersonal (report only)"),
        (r"\bmolecada\b|\bmoleque\b", "BR idiom"),
        (r"\bônibus\b|\bgeladeira\b|\bsorvete\b", "BR vocabulary"),
    ],
}

# Canonical glossary mapping used for term-consistency counting.
TERMS: dict[str, list[tuple[str, str, str]]] = {
    "es": [
        ("ME/CFS", r"\bEM/SFC\b", r"\bME/CFS\b"),
        ("post-exertional malaise", r"malestar post-esfuerzo", r"post-exertional malaise"),
        ("orthostatic", r"ortostátic", r"orthostatic"),
        ("glymphatic", r"glifátic", r"glymphatic|glinfátic\w*|glímnátic\w*|glicmátic\w*|glimfátic\w*|glímfátic\w*|glifmátic\w*"),
        ("mast cell", r"mastocit", r"mast cell"),
        ("autoantibody", r"autoanticuerp", r"autoantibod"),
        ("cytokine", r"citocin", r"cytokin"),
        ("norepinephrine", r"noradrenalin", r"norepinephrin"),
        ("blood-brain barrier", r"hematoencefálic", r"blood-brain barrier"),
        ("cerebrospinal", r"cefalorraquíde", r"cerebrospinal"),
        ("T cell", r"linfocito[s]? T\b|células? T\b", r"T cell"),
        ("B cell", r"linfocito[s]? B\b|células? B\b", r"B cell"),
        ("thyroid", r"tiroid", r"thyroid"),
        ("dysbiosis", r"disbiosis", r"dysbiosis"),
        ("glycolysis", r"glucólis", r"glycolys"),
        ("ADHD", r"\bTDAH\b", r"\bADHD\b"),
        ("mitochondri", r"mitocondri", r"mitochondri"),
        ("neuroinflammation", r"neuroinflamaci", r"neuroinflammation"),
        ("microglia", r"microgl[íi]a", r"microglia\b"),
    ],
    "pt": [
        ("ME/CFS", r"\bEM/SFC\b", r"\bME/CFS\b"),
        ("post-exertional malaise", r"mal-estar pós-esforço", r"post-exertional malaise"),
        ("orthostatic", r"ortostátic", r"orthostatic"),
        ("glymphatic", r"glifátic", r"glymphatic|glinfátic\w*|glímnátic\w*|glicmátic\w*|glimfátic\w*|glímfátic\w*|glifmátic\w*"),
        ("mast cell", r"mastócit", r"mast cell"),
        ("autoantibody", r"autoanticorp", r"autoantibod"),
        ("cytokine", r"citocin", r"cytokin"),
        ("norepinephrine", r"noradrenalin", r"norepinephrin"),
        ("blood-brain barrier", r"hematoencefálic", r"blood-brain barrier"),
        ("cerebrospinal", r"cefalorraquidi", r"cerebrospinal"),
        ("T cell", r"linfócit[oa]s? T\b|células? T\b", r"T cell"),
        ("B cell", r"linfócit[oa]s? B\b|células? B\b", r"B cell"),
        ("thyroid", r"tir[óo]id", r"thyroid"),
        ("dysbiosis", r"disbiose", r"dysbiosis"),
        ("glycolysis", r"glicólise", r"glycolys"),
        ("ADHD", r"\bPHDA\b", r"\bADHD\b"),
        ("mitochondri", r"mitoc[ôo]ndri", r"mitochondri"),
        ("neuroinflammation", r"neuroinflamaç", r"neuroinflammation"),
        ("microglia", r"microglia", ""),
    ],
}

FRONT_RE = re.compile(r"\A---\r?\n(.*?)\r?=\n---\r?\n?", re.DOTALL)
CITATION_RE = re.compile(r"\[[^\]]*@[^\]]+\]")
CODE_RE = re.compile(r"`[^`\n]+`")
MATH_INLINE_RE = re.compile(r"\$[^$\n]+\$")
URL_RE = re.compile(r"https?://[^\s)\]>]+")
LINK_RE = re.compile(r"\]\(([^)\s]+)\)")
NUM_RE = re.compile(r"\d+(?:[.,]\d+)*")
WORD_RE = re.compile(r"[A-Za-zÀ-ÖØ-öø-ÿ]+")


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
    return blocks


def split_front(text: str) -> tuple[str, str]:
    match = re.match(r"\A---\r?\n(.*?)\r?\n---\r?\n?", text, re.DOTALL)
    if not match:
        return "", text
    return match.group(1), text[match.end():]


def clean_body(body: str) -> str:
    """Body with the untouchable spans blanked out.

    Removes code fences, display math, inline code, inline math, citations,
    URLs, every link/image (label and target: slugs and URLs are not
    translatable material), and italic spans (journal names stay English).
    """
    text, _ = mask_protected(body)
    text = re.sub(r"\x00\d+\x00", " ", text)
    # Italic runs (*Journal Name*) are names, not prose.
    text = re.sub(r"(?<!\*)\*(?!\*)[^*\n]+\*(?!\*)(?!\*)", " ", text)
    # 'Catch-22' is an idiom; target languages render it without the number.
    text = re.sub(r"catch[\s-]*22", " ", text, flags=re.I)
    return text


def front_fields(front: str) -> dict[str, object]:
    fields: dict[str, object] = {}
    for key in ("title", "description", "author", "date", "lang"):
        m = re.search(rf"^{key}:\s*(.*)$", front, re.M)
        if m:
            fields[key] = m.group(1).strip().strip('"')
    m = re.search(r"^categories:\s*\[(.*?)\]", front, re.M | re.S)
    if m:
        fields["categories"] = [x.strip() for x in m.group(1).split(",") if x.strip()]
    return fields


def citations(body: str) -> Counter:
    keys: Counter = Counter()
    for chunk in CITATION_RE.findall(body):
        inner = chunk[1:-1]
        for part in inner.split(";"):
            part = part.strip()
            if part.startswith("@"):
                keys[part[1:]] += 1
    return keys


# Locales use opposite separators; small integers are often spelled out.
NUM_WORDS: dict[str, dict[str, str]] = {
    "en": {"one": "1", "two": "2", "three": "3", "four": "4", "five": "5",
           "six": "6", "seven": "7", "eight": "8", "nine": "9", "ten": "10",
           "eleven": "11", "twelve": "12"},
    "es": {"un": "1", "una": "1", "uno": "1", "dos": "2", "tres": "3",
           "cuatro": "4", "cinco": "5", "seis": "6", "siete": "7", "ocho": "8",
           "nueve": "9", "diez": "10", "once": "11", "doce": "12"},
    "pt": {"um": "1", "uma": "1", "dois": "2", "duas": "2", "três": "3",
           "quatro": "4", "cinco": "5", "seis": "6", "sete": "7", "oito": "8",
           "nove": "9", "dez": "10", "onze": "11", "doze": "12"},
}


def canon_token(tok: str, lang: str) -> str:
    if "." not in tok and "," not in tok:
        return tok
    if lang == "en":
        return tok.replace(",", "") if "," in tok else tok
    if "," in tok and "." in tok:
        return tok.replace(".", "").replace(",", ".")
    if "." in tok:
        parts = tok.split(".")
        if len(parts) > 1 and len(parts[0]) <= 3 and all(len(p) == 3 for p in parts[1:]):
            return "".join(parts)  # 1.037 is a thousands separator in es/pt
        return tok
    return tok.replace(",", ".")  # 8,1 -> 8.1


# Statistical degrees-of-freedom notation: F(1,18), t(24), F1,18. These are
# notation arguments, not quantities — locale conversion (F1,18 -> F(1,18))
# is faithful, so the number ledger must not read them as values.
STAT_DF_RE = re.compile(
    r"\b[FfTtZz]\(\s*\d+(?:\s*[,;]\s*\d+)+\s*\)|\b[FfTt]\d+(?:\s*[,;]\s*\d+)+"
)


def numbers(text: str, lang: str) -> Counter:
    cleaned = STAT_DF_RE.sub(" ", CITATION_RE.sub(" ", text))
    return Counter(canon_token(t, lang) for t in NUM_RE.findall(cleaned))


def spelled(text: str, lang: str) -> Counter:
    out: Counter = Counter()
    lowered = text.lower()
    for word, value in NUM_WORDS[lang].items():
        count = len(re.findall(rf"(?<![A-Za-zÀ-ÿ]){re.escape(word)}(?![A-Za-zÀ-ÿ])", lowered))
        if count:
            out[value] += count
    return out


def reconcile(missing: Counter, allowance: Counter) -> Counter:
    """Cancel numeric gaps covered by a spelled-out form in the other language."""
    out = Counter(missing)
    for value, need in list(out.items()):
        usable = allowance.get(value, 0)
        if usable:
            out[value] = max(0, need - usable)
            if out[value] == 0:
                del out[value]
    return out


def word_hits(text: str, words: list[str], skip: set[str] | None = None) -> Counter:
    found: Counter = Counter()
    lowered = text.lower()
    skip = skip or set()
    for word in set(words) - skip:
        count = len(re.findall(rf"(?<![A-Za-zÀ-ÿ]){re.escape(word)}(?![A-Za-zÀ-ÿ])", lowered))
        if count:
            found[word] += count
    return found


def ngram_leak(source_words: list[str], target: str) -> list[str]:
    """English 8-word runs preserved verbatim in the translation."""
    target_tokens = WORD_RE.findall(target)
    target_join = " ".join(t.lower() for t in target_tokens)
    leaks: list[str] = []
    source_join = " ".join(t.lower() for t in source_words)
    for i in range(0, max(0, len(source_words) - 7)):
        gram = " ".join(source_words[i : i + 8]).lower()
        if gram in target_join:
            leaks.append(gram)
    return leaks[:8]


def heading_language(en_blocks: list[str], target_blocks: list[str]) -> list[str]:
    issues: list[str] = []
    en_headings = [b for b in en_blocks if b.lstrip().startswith("#")]
    target_headings = [b for b in target_blocks if b.lstrip().startswith("#")]
    for index, source in enumerate(en_headings):
        if index >= len(target_headings):
            break
        source_words = {w.lower() for w in WORD_RE.findall(source)}
        target_words = {w.lower() for w in WORD_RE.findall(target_headings[index])}
        if len(source_words) >= 3 and source_words == target_words:
            issues.append(f"untranslated heading: {source.strip()[:60]!r}")
    return issues


def block_alignment(en_blocks: list[str], target_blocks: list[str]) -> list[str]:
    issues: list[str] = []
    if len(en_blocks) != len(target_blocks):
        issues.append(f"block count en={len(en_blocks)} target={len(target_blocks)}")
        return issues
    for index, (source, target) in enumerate(zip(en_blocks, target_blocks)):
        src_words = len(source.split())
        tgt_words = len(target.split())
        if src_words >= 12 and tgt_words < src_words * 0.4:
            issues.append(
                f"block {index} shrank {src_words}->{tgt_words} words: "
                f"{source.strip()[:50]!r}"
            )
    return issues


def audit_post(
    en_text: str, target_text: str, lang: str, en_name: str
) -> list[str]:
    issues: list[str] = []
    en_front, en_body = split_front(en_text)
    tr_front, tr_body = split_front(target_text)
    en_fields = front_fields(en_front)
    tr_fields = front_fields(tr_front)

    # Front matter contract.
    if tr_fields.get("lang") != lang:
        issues.append(f"front matter lang={tr_fields.get('lang')!r}, expected {lang!r}")
    for key in ("author", "date"):
        if en_fields.get(key) != tr_fields.get(key):
            issues.append(f"front matter {key} changed: {en_fields.get(key)!r} -> "
                           f"{tr_fields.get(key)!r}")
    if en_fields.get("categories") != tr_fields.get("categories"):
        issues.append("front matter categories changed (must stay English)")
    title = str(tr_fields.get("title", ""))
    if title == str(en_fields.get("title", "")):
        issues.append(f"title not translated: {title[:60]!r}")
    description = str(tr_fields.get("description", ""))
    if description == str(en_fields.get("description", "")):
        issues.append("description not translated")
    if str(en_fields.get("description", "")).endswith("...") and not description.endswith("..."):
        issues.append("description lost its truncation ellipsis")

    en_clean = clean_body(en_body)
    tr_clean = clean_body(tr_body)
    en_blocks = split_blocks(en_body)
    tr_blocks = split_blocks(tr_body)

    issues += block_alignment(en_blocks, tr_blocks)
    issues += heading_language(en_blocks, tr_blocks)

    # Citations and links must be identical multisets.
    en_cites, tr_cites = citations(en_body), citations(tr_body)
    missing = en_cites - tr_cites
    extra = tr_cites - en_cites
    if missing:
        issues.append("citations dropped: " + ", ".join(sorted(missing)))
    if extra:
        issues.append("citations invented: " + ", ".join(sorted(extra)))

    en_links = Counter(LINK_RE.findall(en_body))
    tr_links = Counter(LINK_RE.findall(tr_body))
    if en_links - tr_links:
        issues.append("link targets dropped: " + ", ".join(sorted(en_links - tr_links)))
    if tr_links - en_links:
        issues.append("link targets changed: " + ", ".join(sorted(tr_links - en_links)))

    # Numbers must match exactly after locale normalisation (8,1 == 8.1) and
    # allowing small integers spelled out in the target language.
    en_nums, tr_nums = numbers(en_clean, "en"), numbers(tr_clean, lang)
    dropped = reconcile(en_nums - tr_nums, spelled(tr_clean, lang))
    invented = reconcile(tr_nums - en_nums, spelled(en_clean, "en"))
    if dropped:
        issues.append("numbers dropped: " + ", ".join(sorted(dropped)[:12]))
    if invented:
        issues.append("numbers invented: " + ", ".join(sorted(invented)[:12]))

    # Untranslated English.  All-caps acronyms carried over from EN (NEED, EMS,
    # POTS, LDN ...) are shared vocabulary, not leftovers.
    acronyms = {w.lower() for w in re.findall(r"\b[A-Z]{2,}\b", en_body)}
    hits = word_hits(tr_clean, EN_ONLY_WORDS[lang], acronyms)
    if hits:
        issues.append("untranslated English words: " + ", ".join(f"{w}x{c}" for w, c in hits.most_common(12)))

    # Register / false-friend leakage.
    for pattern, note in REGISTER[lang]:
        matches = re.findall(pattern, tr_clean, re.I)
        if matches:
            issues.append(f"{note}: " + ", ".join(sorted(set(m.lower() for m in matches))[:8]))
    # False friends must co-occur in the SAME block: 'actual' in paragraph 2 and
    # 'actualmente' in paragraph 7 is not a false friend, it is 'currently'.
    for en_pattern, target_pattern, note in FALSE_FRIENDS[lang]:
        hits = sum(
            1
            for src_block, tgt_block in zip(en_blocks, tr_blocks)
            if re.search(en_pattern, clean_body(src_block), re.I)
            and re.search(target_pattern, clean_body(tgt_block), re.I)
        )
        if hits:
            issues.append(f"possible false friend in {hits} block(s) ({note})")

    # Verbatim English runs.
    leaks = ngram_leak(WORD_RE.findall(en_clean), tr_clean)
    if leaks:
        issues.append(f"{len(leaks)} verbatim 8-word English run(s): " + "; ".join(leaks[:3]))

    # Glossary term consistency.
    for source, canonical, forbidden in TERMS[lang]:
        # Terms containing capitals (T cell, ME/CFS) need case-sensitive,
        # word-bounded matching: case-insensitive 'T cell' matches 'that cell'.
        flags = 0 if any(c.isupper() for c in source) else re.I
        if len(re.findall(rf"\b{re.escape(source)}\b", en_clean, flags)) == 0:
            continue
        good = len(re.findall(canonical, tr_clean, re.I))
        bad = len(re.findall(forbidden, tr_clean, re.I)) if forbidden else 0
        if bad:
            issues.append(f"untranslated term {source!r} kept {bad}x (want {canonical})")
        if good == 0 and bad == 0:
            issues.append(f"term {source!r} present in EN but no canonical target form found")

    # Preface leakage.
    body_open = tr_body.strip()[:80].lower()
    if re.match(r"^(traduc|translation|aquí está|aqui está)", body_open):
        issues.append("translation preface left in body")

    return issues


def en_value(tok: str) -> str:
    """Parse a number the English way: ',' thousands, '.' decimal."""
    if "." in tok and "," in tok:
        return tok.replace(",", "")
    if "," in tok:
        return tok.replace(",", "")
    return tok


def local_value(tok: str) -> str:
    """Parse the way es-ES / pt-PT writes numbers: '.' thousands, ',' decimal."""
    if "." in tok and "," in tok:
        return tok.replace(".", "").replace(",", ".")
    if "." in tok:
        parts = tok.split(".")
        if parts[0] == "0":
            return tok  # 0.088 can only be a decimal written in the Anglophone way
        if len(parts) > 1 and len(parts[0]) <= 3 and all(len(p) == 3 for p in parts[1:]):
            return "".join(parts)
        return tok
    if "," in tok:
        return tok.replace(",", ".")
    return tok


def euro_format(value: str) -> str:
    """Render a canonical value ('1234.56') with es-ES / pt-PT separators."""
    int_part, _, frac = value.partition(".")
    groups: list[str] = []
    while len(int_part) > 3:
        groups.insert(0, int_part[-3:])
        int_part = int_part[:-3]
    groups.insert(0, int_part)
    out = ".".join(groups)
    if frac:
        out += "," + frac
    return out


def mask_protected(body: str) -> tuple[str, list[str]]:
    """Blank out code fences, math, citations, code spans, links, and URLs.

    Operates on the raw text so blank lines and layout survive untouched.
    """
    store: list[str] = []

    def add(text: str) -> str:
        store.append(text)
        return f"\x00{len(store) - 1}\x00"

    text = body
    text = re.sub(r"^\s*(```|~~~).*?^\s*\1\s*$", lambda m: add(m.group(0)), text, flags=re.M | re.S)
    text = re.sub(r"\$\$.*?\$\$", lambda m: add(m.group(0)), text, flags=re.S)
    # Formula lines shown as quotes, e.g. '> p_response(t) = p_0 * K_M / (K_M + M(t))'.
    # These are equations, not prose, and stay byte-identical across languages.
    text = re.sub(r"^>[^\n]*\b\w+\([^\n)]*\)[^\n]*$", lambda m: add(m.group(0)) if "_" in m.group(0) else m.group(0), text, flags=re.M)
    # Links, including the nested-bracket form [[label]](target) used by the
    # companion-article footers.  The slug inside the target is not prose.
    text = re.sub(r"!?\[(?:[^\[\]]|\[[^\]]*\])*\]\([^)]*\)", lambda m: add(m.group(0)), text)
    # Parenthetical citation blocks, e.g. (Groven et al. 2021[@Key]) — prose-adjacent
    # author-year material that must be byte-identical, so it is not auditable prose.
    text = re.sub(r"\((?:[^()\n]*@[^()\n]*)\)", lambda m: add(m.group(0)), text)
    text = re.sub(r"`[^`\n]+`", lambda m: add(m.group(0)), text)
    text = re.sub(r"\$[^$\n]+\$", lambda m: add(m.group(0)), text)
    text = CITATION_RE.sub(lambda m: add(m.group(0)), text)
    text = URL_RE.sub(lambda m: add(m.group(0)), text)
    return text, store


def unmask(text: str, store: list[str]) -> str:
    def repl(match: re.Match[str]) -> str:
        return store[int(match.group(1))]

    return re.sub(r"\x00(\d+)\x00", repl, text)


def fix_numbers(en_body: str, tr_body: str, lang: str) -> tuple[str, int]:
    """Rewrite target numbers to es-ES / pt-PT separators, value by value."""
    en_masked, _ = mask_protected(en_body)
    counter = Counter(en_value(t) for t in NUM_RE.findall(CITATION_RE.sub(" ", en_masked)))

    masked, store = mask_protected(tr_body)

    def repl(match: re.Match[str]) -> str:
        token = match.group(0)
        if "." not in token and "," not in token:
            return token
        for candidate in (local_value(token), en_value(token)):
            if counter.get(candidate, 0) > 0:
                counter[candidate] -= 1
                if counter[candidate] == 0:
                    del counter[candidate]
                return euro_format(candidate)
        return token

    fixed = NUM_RE.sub(repl, masked)
    return unmask(fixed, store), sum(
        1 for a, b in zip(tr_body.split("\n"), fixed.split("\n")) if a != b
    )


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--langs", nargs="+", default=["es", "pt"])
    parser.add_argument("--only", help="comma-separated globs / substrings")
    parser.add_argument("--json", help="write findings JSON here")
    parser.add_argument("--strict", action="store_true", help="exit 1 on any finding")
    parser.add_argument("--quiet", action="store_true")
    parser.add_argument(
        "--fix-numbers",
        action="store_true",
        help="rewrite target numbers to es-ES / pt-PT separators (value-matched)",
    )
    args = parser.parse_args(argv)

    posts = sorted(EN_POSTS.rglob("index.qmd"))
    if args.only:
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

    report: list[dict[str, object]] = []
    flagged = 0
    for post in posts:
        relative = post.relative_to(EN_POSTS).parent
        en_text = post.read_text(encoding="utf-8")
        _en_front, en_body_only = split_front(en_text)
        entry: dict[str, object] = {"post": str(relative), "issues": {}}
        post_findings = 0
        for lang in args.langs:
            target = QUARTO / lang / "blog" / "posts" / relative / "index.qmd"
            if not target.exists():
                entry["issues"][lang] = [f"missing translation file: {target}"]
                post_findings += 1
                continue
            target_text = target.read_text(encoding="utf-8")
            if args.fix_numbers:
                front, body = split_front(target_text)
                fixed_body, changed = fix_numbers(en_body_only, body, lang)
                if changed:
                    fixed = f"---\n{front}\n---\n{fixed_body}"
                    tmp = target.with_suffix(".qmd.tmp")
                    tmp.write_text(fixed, encoding="utf-8")
                    tmp.replace(target)
                    target_text = fixed
                    entry["number_lines_fixed"] = entry.get("number_lines_fixed", 0) + changed
            found = audit_post(en_text, target_text, lang, str(relative))
            entry["issues"][lang] = found
            post_findings += len(found)
        if post_findings:
            flagged += 1
        report.append(entry)
        if not args.quiet:
            counts = {lang: len(v) for lang, v in entry["issues"].items()}
            print(f"{relative}  {counts}")

    if args.json:
        Path(args.json).write_text(json.dumps(report, indent=1), encoding="utf-8")

    print(f"audited {len(posts)} posts, {flagged} with findings")
    if args.strict and flagged:
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
