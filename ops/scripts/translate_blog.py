#!/usr/bin/env python3
"""Translate the Quarto blog with a local Hy-MT2 GGUF model.

The agent talks to an OpenAI-compatible llama.cpp server.  By default it starts
one through `unsloth studio run` using:

    unsloth/Hy-MT2-1.8B-GGUF : IQ4_XS

It preserves YAML front matter, Markdown structure, citation keys, cross
references, links, inline code, math, and tables.  Translations are written to
`src/main/quarto/<lang>/blog/posts/.../index.qmd` and are resumable: existing
files are skipped unless `--force` is given.

Examples
--------
Translate everything into European Spanish and European Portuguese:

    python3 ops/scripts/translate_blog.py --langs es pt

Translate one post, re-doing it from scratch:

    python3 ops/scripts/translate_blog.py --langs es --only '*sleep-hangover*' --force

Use an already-running Unsloth server:

    python3 ops/scripts/translate_blog.py --langs pt \
        --base-url http://127.0.0.1:8899 --api-key sk-unsloth-...

Re-translate only the posts that failed a previous run (comma-separated globs):

    python3 ops/scripts/translate_blog.py --langs es pt \
        --only '*autoimmunity*','*weekly-update*' --max-words 300

New capability — there was no blog translation tooling before this script.

Verify
------
    python3 ops/scripts/translate_blog.py --langs es --limit 1 --force

Expected outcome: one translated post at
`src/main/quarto/es/blog/posts/.../index.qmd` whose YAML front matter keeps
`author`, `date`, and `categories`, adds `lang: es`, and whose body preserves
the source's citation, heading, link, table, and math counts. The run prints
`1 translated, 0 failed` and exits 0.

Warn/strict semantics
---------------------
Failures are per post: a post that cannot be translated is skipped, logged to
stderr, and left absent so a later run retries it. The process exits 0 by
default; pass `--strict` to exit 1 when any post failed. Existing translations
are always skipped unless `--force` is given, so reruns are cheap.

The script has no third-party dependencies beyond PyYAML (already used by the
repository's Python tooling).
"""

from __future__ import annotations

import argparse
import json
import os
import re
import signal
import subprocess
import sys
import tempfile
import threading
import time
import urllib.error
import urllib.request
from concurrent.futures import ThreadPoolExecutor, as_completed
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable

try:
    import yaml
except ImportError:  # pragma: no cover - PyYAML is present in the dev env
    yaml = None

REPO_ROOT = Path(__file__).resolve().parents[2]
QUARTO_ROOT = REPO_ROOT / "src" / "main" / "quarto"
EN_POSTS = QUARTO_ROOT / "en" / "blog" / "posts"

LANGUAGE_NAMES = {
    "en": "English",
    "fr": "Français",
    "de": "Deutsch",
    "es": "Español",
    "pt": "Português",
}

DEFAULT_MODEL = "unsloth/Hy-MT2-1.8B-GGUF"
DEFAULT_VARIANT = "IQ4_XS"
DEFAULT_BASE_URL = "http://127.0.0.1:8899"
DEFAULT_PORT = 8899

# ---------------------------------------------------------------------------
# Language configuration
# ---------------------------------------------------------------------------

LANGUAGES: dict[str, dict[str, str]] = {
    "es": {
        "name": "European Spanish",
        "adjective": "Castilian Spanish",
        "code": "es-ES",
        "nav": "🇪🇸 Blog (ES)",
        "rss": "🇪🇸 RSS (ES)",
        "available": "También disponible en",
        "self": "Español",
        "instructions": (
            "Write European Spanish as used in Spain (es-ES), not Latin American "
            "Spanish. Use 'tú' for the reader. Prefer peninsular vocabulary: "
            "'ordenador' (not 'computadora'), 'coche' (not 'carro'), 'móvil' "
            "(not 'celular'), 'conducir' (not 'manejar'), 'residuos' (not "
            "'desechos'), 'probado' (not 'testado'), 'ratón/ratones' for mice."
        ),
        "refusal_markers": ("no puedo traducir", "lo siento", "como modelo"),
    },
    "pt": {
        "name": "European Portuguese",
        "adjective": "European Portuguese",
        "code": "pt-PT",
        "nav": "🇵🇹 Blog (PT)",
        "rss": "🇵🇹 RSS (PT)",
        "available": "Também disponível em",
        "self": "Português",
        "instructions": (
            "Write European Portuguese as used in Portugal (pt-PT), not Brazilian "
            "Portuguese. Use 'está a + infinitivo' rather than the Brazilian gerund. "
            "Use 'num/numa' rather than 'em um/em uma'. Prefer European vocabulary: "
            "'equipa' (not 'equipe'), 'ecrã' (not 'tela'), 'telemóvel' (not "
            "'celular'), 'planeamento' (not 'planejamento'), 'registo' (not "
            "'registro'), 'contacto' (not 'contato'), 'facto' (not 'fato'), "
            "'células imunitárias' (not 'células imunes'), 'astrocitário' (not "
            "'astrocítico'). Avoid 'você' when an impersonal construction is natural."
        ),
        "refusal_markers": ("não posso traduzir", "desculpe", "como modelo"),
    },
}

# Terms that small translation models routinely get wrong.  Only entries whose
# source phrase occurs in a chunk are injected into the prompt for that chunk.
GLOSSARY: dict[str, dict[str, str]] = {
    "es": {
        "ME/CFS": "EM/SFC",
        "myalgic encephalomyelitis": "encefalomielitis miálgica",
        "chronic fatigue syndrome": "síndrome de fatiga crónica",
        "post-exertional malaise": "malestar post-esfuerzo",
        "post-exertional neuroimmune exhaustion": "agotamiento neuroinmunitario post-esfuerzo",
        "orthostatic intolerance": "intolerancia ortostática",
        "orthostatic tachycardia": "taquicardia ortostática",
        "brain fog": "niebla cerebral",
        "glymphatic system": "sistema glifático",
        "glymphatic clearance": "aclaramiento glifático",
        "glymphatic flow": "flujo glifático",
        "aquaporin-4": "acuaporina-4",
        "astrocyte": "astrocito",
        "microglia": "microglía",
        "neuroinflammation": "neuroinflamación",
        "mast cell": "mastocito",
        "autoantibody": "autoanticuerpo",
        "mitochondria": "mitocondria",
        "mitochondrial dysfunction": "disfunción mitocondrial",
        "oxidative stress": "estrés oxidativo",
        "reactive oxygen species": "especies reactivas de oxígeno",
        "norepinephrine": "noradrenalina",
        "HPA axis": "eje hipotálamo-hipófisis-suprarrenal",
        "vagus nerve": "nervio vago",
        "blood-brain barrier": "barrera hematoencefálica",
        "cerebrospinal fluid": "líquido cefalorraquídeo",
        "slow-wave sleep": "sueño de ondas lentas",
        "sleep inertia": "inercia del sueño",
        "alpha-delta sleep": "sueño alfa-delta",
        "thalamus": "tálamo",
        "brainstem": "tronco encefálico",
        "basal ganglia": "ganglios basales",
        "cytokine": "citocina",
        "interleukin": "interleucina",
        "T cell": "linfocito T",
        "B cell": "linfocito B",
        "NK cell": "célula NK",
        "Epstein-Barr virus": "virus de Epstein-Barr",
        "low-dose naltrexone": "naltrexona en dosis bajas",
        "ivabradine": "ivabradina",
        "midodrine": "midodrina",
        "fludrocortisone": "fludrocortisona",
        "pyridostigmine": "piridostigmina",
        "modafinil": "modafinilo",
        "methylphenidate": "metilfenidato",
        "antihistamine": "antihistamínico",
        "ketotifen": "ketotifeno",
        "cromolyn": "cromoglicato",
        "guanfacine": "guanfacina",
        "clonidine": "clonidina",
        "folate": "folato",
        "ferritin": "ferritina",
        "thyroid": "tiroides",
        "small fibre neuropathy": "neuropatía de fibras pequeñas",
        "tilt table test": "prueba de mesa basculante",
        "pupillometry": "pupilometría",
        "heart rate variability": "variabilidad de la frecuencia cardíaca",
        "dysbiosis": "disbiosis",
        "intestinal permeability": "permeabilidad intestinal",
        "hydrogen sulfide": "sulfuro de hidrógeno",
        "kynurenine": "quinurenina",
        "tryptophan": "triptófano",
        "glycolysis": "glucólisis",
        "fatty acid oxidation": "oxidación de ácidos grasos",
        "lactate": "lactato",
        "pyruvate": "piruvato",
        "TCA cycle": "ciclo del ácido tricarboxílico",
        "complex I": "complejo I",
        "graded exercise therapy": "terapia de ejercicio gradual",
        "cognitive behavioural therapy": "terapia cognitivo-conductual",
        "energy envelope": "envelope energético",
        "spoon theory": "teoría de las cucharas",
        "crash": "crisis",
        "flare": "brote",
        "healthcare": "atención sanitaria",
        "general practitioner": "médico de familia",
        "hangover": "resaca",
        "waste clearance": "eliminación de residuos",
        "mouse model": "modelo en ratón",
        "mouse models": "modelos en ratones",
        "mice": "ratones",
        "rat model": "modelo en rata",
        "rat models": "modelos en ratas",
        "rats": "ratas",
        "disregulation": "desregulación",
        "dysregulation": "desregulación",
        "cell body": "cuerpo celular",
        "astrocytic endfeet": "pies astrocitarios",
        "endfeet": "pies astrocitarios",
        "basement membrane": "membrana basal",
        "perivascular basement membrane": "membrana basal perivascular",
        "fibrotic": "fibrótico",
        "tubes": "tubos",
        "plumbing": "tuberías",
        "ADHD": "TDAH",
        "attention-deficit/hyperactivity disorder": "trastorno por déficit de atención e hiperactividad (TDAH)",
        "inflammasome": "inflamasoma",
        "multi-pathway": "multivía",
        "cross-disease": "transversal entre enfermedades",
        "post-inflammatory": "postinflamatorio",
        "immune system": "sistema inmunitario",
    },
    "pt": {
        "ME/CFS": "EM/SFC",
        "myalgic encephalomyelitis": "encefalomielite miálgica",
        "chronic fatigue syndrome": "síndrome de fadiga crónica",
        "post-exertional malaise": "mal-estar pós-esforço",
        "post-exertional neuroimmune exhaustion": "exaustão neuroimunitária pós-esforço",
        "orthostatic intolerance": "intolerância ortostática",
        "orthostatic tachycardia": "taquicardia ortostática",
        "brain fog": "névoa cerebral",
        "glymphatic system": "sistema glifático",
        "glymphatic clearance": "depuração glifática",
        "glymphatic flow": "fluxo glifático",
        "aquaporin-4": "aquaporina-4",
        "astrocyte": "astrócito",
        "microglia": "microglia",
        "neuroinflammation": "neuroinflamação",
        "mast cell": "mastócito",
        "autoantibody": "autoanticorpo",
        "mitochondria": "mitocôndria",
        "mitochondrial dysfunction": "disfunção mitocondrial",
        "oxidative stress": "stress oxidativo",
        "reactive oxygen species": "espécies reativas de oxigénio",
        "norepinephrine": "noradrenalina",
        "HPA axis": "eixo hipotálamo-hipófise-suprarrenal",
        "vagus nerve": "nervo vago",
        "blood-brain barrier": "barreira hematoencefálica",
        "cerebrospinal fluid": "líquido cefalorraquidiano",
        "slow-wave sleep": "sono de ondas lentas",
        "sleep inertia": "inércia do sono",
        "alpha-delta sleep": "sono alfa-delta",
        "thalamus": "tálamo",
        "brainstem": "tronco cerebral",
        "basal ganglia": "gânglios da base",
        "cytokine": "citocina",
        "interleukin": "interleucina",
        "T cell": "linfócito T",
        "B cell": "linfócito B",
        "NK cell": "célula NK",
        "Epstein-Barr virus": "vírus de Epstein-Barr",
        "low-dose naltrexone": "naltrexona em doses baixas",
        "ivabradine": "ivabradina",
        "midodrine": "midodrina",
        "fludrocortisone": "fludrocortisona",
        "pyridostigmine": "piridostigmina",
        "modafinil": "modafinilo",
        "methylphenidate": "metilfenidato",
        "antihistamine": "anti-histamínico",
        "ketotifen": "ketotifeno",
        "cromolyn": "cromoglicato",
        "guanfacine": "guanfacina",
        "clonidine": "clonidina",
        "folate": "folato",
        "ferritin": "ferritina",
        "thyroid": "tiróide",
        "small fibre neuropathy": "neuropatia de fibras pequenas",
        "tilt table test": "teste de inclinação",
        "pupillometry": "pupilometria",
        "heart rate variability": "variabilidade da frequência cardíaca",
        "dysbiosis": "disbiose",
        "intestinal permeability": "permeabilidade intestinal",
        "hydrogen sulfide": "sulfureto de hidrogénio",
        "kynurenine": "quinurenina",
        "tryptophan": "triptofano",
        "glycolysis": "glicólise",
        "fatty acid oxidation": "oxidação de ácidos gordos",
        "lactate": "lactato",
        "pyruvate": "piruvato",
        "TCA cycle": "ciclo do ácido tricarboxílico",
        "complex I": "complexo I",
        "graded exercise therapy": "terapia de exercício gradual",
        "cognitive behavioural therapy": "terapia cognitivo-comportamental",
        "energy envelope": "envelope de energia",
        "spoon theory": "teoria das colheres",
        "crash": "crise",
        "flare": "exacerbação",
        "healthcare": "cuidados de saúde",
        "general practitioner": "médico de família",
        "hangover": "ressaca",
        "waste clearance": "depuração de resíduos",
        "mouse model": "modelo em ratinho",
        "mouse models": "modelos em ratinhos",
        "mice": "ratinhos",
        "rat model": "modelo em rata",
        "rat models": "modelos em ratas",
        "rats": "ratas",
        "disregulation": "desregulação",
        "dysregulation": "desregulação",
        "cell body": "corpo celular",
        "astrocytic endfeet": "pés astrocitários",
        "endfeet": "pés astrocitários",
        "basement membrane": "membrana basal",
        "perivascular basement membrane": "membrana basal perivascular",
        "fibrotic": "fibrótica",
        "tubes": "tubos",
        "plumbing": "tubagem",
        "ADHD": "PHDA",
        "attention-deficit/hyperactivity disorder": "perturbação de hiperatividade e défice de atenção (PHDA)",
        "inflammasome": "inflamassoma",
        "multi-pathway": "multivias",
        "cross-disease": "transversal entre doenças",
        "post-inflammatory": "pós-inflamatório",
        "immune system": "sistema imunitário",
    },
}

# Conservative whole-word corrections after generation.  These catch the most
# common variant leaks without rewriting legitimate quotations.
POST_FIXES: dict[str, list[tuple[str, str]]] = {
    "es": [
        (r"\btestada\b", "probada"),
        (r"\btestado\b", "probado"),
        (r"\btestadas\b", "probadas"),
        (r"\btestados\b", "probados"),
        (r"\bdisregulación\b", "desregulación"),
        (r"\bdesechos\b", "residuos"),
        (r"\bdesecho\b", "residuo"),
        (r"\bcomputadora\b", "ordenador"),
        (r"\bcarro\b", "coche"),
        (r"\bmanejar\b", "conducir"),
        (r"\bahorita\b", "ahora"),
        (r"\bustedes\b", "vosotros"),
        (r"\bdeterioración\b", "deterioro"),
        (r"\bcuerpo móvil\b", "cuerpo celular"),
        (r"\bfibrotica\b", "fibrótica"),
        (r"\bsus medicamentos\b", "tus medicamentos"),
        (r"\bsu sueño\b", "tu sueño"),
        (r"\bsu cerebro\b", "tu cerebro"),
        (r"\bsu cuerpo\b", "tu cuerpo"),
        (r"\bsu salud\b", "tu salud"),
        (r"\bADHD\b", "TDAH"),
        (r"\binflammasoma\b", "inflamasoma"),
        (r"\bal carga\b", "la carga"),
        (r"\bmulti-vía\b", "multivía"),
        (r"\bLa TDAH\b", "El TDAH"),
        (r"\bla TDAH\b", "el TDAH"),
    ],
    "pt": [
        (r"\bequipe\b", "equipa"),
        (r"\btela\b", "ecrã"),
        (r"\bplanejamento\b", "planeamento"),
        (r"\bregistro\b", "registo"),
        (r"\bcontato\b", "contacto"),
        (r"\bfato\b", "facto"),
        (r"\bem um\b", "num"),
        (r"\bem uma\b", "numa"),
        (r"\bpesadez\b", "peso"),
        (r"\bintersticials\b", "intersticiais"),
        (r"\bastrocíticos\b", "astrocitários"),
        (r"\bcélulas imunes\b", "células imunitárias"),
        (r"\bchamadas de telefone\b", "chamadas telefónicas"),
        (r"\bcorpo telemóvel\b", "corpo celular"),
        (r"\bmembrana do basement\b", "membrana basal"),
        (r"\bfibrotica\b", "fibrótica"),
        (r"\bcrônic([oa]s?)\b", r"crónic\1"),
        (r"\bADHD\b", "PHDA"),
        (r"\binflamassoma\b", "inflamassoma"),
        (r"\bmulti-via\b", "multivias"),
    ],
}

SYSTEM_PROMPT = """You are a senior medical translator and editor. Translate from English into {language}.

Hard rules:
- Output only the translation. No preface, notes, or explanations.
- Preserve Markdown exactly: headings, lists, tables, bold/italic, block quotes, and blank-line structure.
- Keep every placeholder such as ⟦0⟧ exactly as written and in the same position.
- Do not translate author names, journal titles, citation keys, URLs, or standard abbreviations (ME/CFS, PEM, POTS, ATP, DNA, RNA, MRI).
- Keep numbers, units, dates, and statistical notation unchanged.
- Use precise, natural medical language for an intelligent patient and clinician audience. Do not simplify the science.
- Keep the source register and tone, including rhetorical questions and first-person passages.
- {instructions}
"""

USER_PROMPT = """Translate the following segments into {language}. Keep the segment markers <<<1>>>, <<<2>>>, ... exactly as they are and in order.

{segments}
"""

# ---------------------------------------------------------------------------
# Markdown helpers
# ---------------------------------------------------------------------------


def is_protected(block: str) -> bool:
    """True when a block must not be sent to the model."""
    s = block.strip()
    if not s:
        return True
    if s.startswith("```") or s.startswith("~~~"):
        return True
    if s.startswith("$$"):
        return True
    if re.fullmatch(r":::+.*", s) and "\n" not in s:
        return True
    if re.fullmatch(r"(-{3,}|\*{3,}|_{3,})", s):
        return True
    if s.startswith("<!--"):
        return True
    if re.match(r"</?[A-Za-z][^>]*>", s) and "\n" not in s:
        return True
    return False


def is_table(block: str) -> bool:
    lines = block.strip().splitlines()
    if len(lines) < 2:
        return False
    if not lines[0].lstrip().startswith("|"):
        return False
    return bool(re.match(r"^\s*\|?[\s:|-]+\|?\s*$", lines[1]))


def mask_text(text: str, whole_links: bool = False) -> tuple[str, list[str]]:
    """Replace fragile spans with ⟦n⟧ placeholders."""
    store: list[str] = []

    def add(value: str) -> str:
        store.append(value)
        return f"⟦{len(store) - 1}⟧"

    if whole_links:
        # Fallback mode: protect the complete link/image so the small model
        # cannot drop its destination.  Labels stay in the source language.
        text = re.sub(
            r"!\[[^\]]*\]\([^)]+\)",
            lambda m: add(m.group(0)),
            text,
        )
        text = re.sub(
            r"(?<!!)\[(?:[^\[\]]|\[[^\]]*\])*\]\([^)]+\)",
            lambda m: add(m.group(0)),
            text,
        )
    else:
        # Image targets, then link targets (labels stay translatable).
        text = re.sub(
            r"(!\[[^\]]*\]\()([^)]+)(\))",
            lambda m: m.group(1) + add(m.group(2)) + m.group(3),
            text,
        )
        text = re.sub(
            r"(?<!!)(\[(?:[^\[\]]|\[[^\]]*\])*\]\()([^)]+)(\))",
            lambda m: m.group(1) + add(m.group(2)) + m.group(3),
            text,
        )
    # Pandoc citations, cross-references, inline code, inline math, URLs.
    text = re.sub(r"\[[^\]]*@[^\]]+\]", lambda m: add(m.group(0)), text)
    text = re.sub(r"@(?:sec|fig|tbl|eq)-[A-Za-z0-9:_-]+", lambda m: add(m.group(0)), text)
    text = re.sub(r"`[^`\n]+`", lambda m: add(m.group(0)), text)
    text = re.sub(r"\$[^$\n]+\$", lambda m: add(m.group(0)), text)
    text = re.sub(r"https?://[^\s)\]>]+", lambda m: add(m.group(0)), text)
    text = re.sub(r"<[^>]+>", lambda m: add(m.group(0)), text)
    text = re.sub(r"\{[.#][^}\n]*\}", lambda m: add(m.group(0)), text)
    return text, store


def restore_text(text: str, store: list[str]) -> tuple[str, bool]:
    remaining = set(range(len(store)))
    for index in range(len(store)):
        token = f"⟦{index}⟧"
        if token in text:
            text = text.replace(token, store[index])
            remaining.discard(index)
    return text, not remaining


def placeholders_missing(text: str) -> list[int]:
    return [int(n) for n in re.findall(r"⟦(\d+)⟧", text)]


def glossary_hint(text: str, lang: str) -> str:
    lower = text.lower()
    hits: list[str] = []
    for source, target in GLOSSARY[lang].items():
        if source.lower() in lower:
            hits.append(f"{source} → {target}")
    if not hits:
        return ""
    # Keep prompts small; the most common terms are listed first in the table.
    return "Required terminology:\n- " + "\n- ".join(hits[:24])


def post_fix(text: str, lang: str) -> str:
    # Any near-miss for "glymphatic" becomes the correct glifático/glifática.
    def glymphatic(match: re.Match[str]) -> str:
        suffix = match.group(1)
        value = "glifátic" + suffix
        return value[:1].upper() + value[1:] if match.group(0)[:1].isupper() else value

    text = re.sub(r"\bgl(?!if)\w{0,6}[áa]tic([oa]s?)\b", glymphatic, text, flags=re.IGNORECASE)
    for pattern, replacement in POST_FIXES[lang]:
        text = re.sub(pattern, replacement, text, flags=re.IGNORECASE)
    return text


def split_markdown_blocks(body: str) -> list[str]:
    """Split on blank lines while keeping fenced code, math, and div fences intact."""
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
        if fence is None and not math_fence and stripped.startswith(":::"):
            flush()
            blocks.append(line)
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


def table_row_ok(source: str, output: str) -> bool:
    src = [line for line in source.strip().splitlines() if line.strip()]
    out = [line for line in output.strip().splitlines() if line.strip()]
    if len(src) != len(out):
        return False
    for s, o in zip(src, out):
        if re.match(r"^\s*\|?[\s:|-]+\|?\s*$", s):
            if not re.match(r"^\s*\|?[\s:|-]+\|?\s*$", o):
                return False
        elif s.count("|") != o.count("|"):
            return False
    return True


def list_shape_ok(source: str, output: str) -> bool:
    src = [line for line in source.splitlines() if line.strip()]
    out = [line for line in output.splitlines() if line.strip()]
    if len(src) != len(out):
        return False
    for s, o in zip(src, out):
        m = re.match(r"^\s*([-*+]|\d+[.)])\s+", s)
        if m and not re.match(r"^\s*" + re.escape(m.group(1)) + r"\s+", o):
            return False
    return True


def looks_untranslated(source: str, output: str, lang: str) -> bool:
    if len(source.split()) < 8:
        return False
    if source.strip() == output.strip():
        return True
    common = {"the", "and", "that", "with", "from", "this", "which", "have", "not"}
    out_words = {w.lower() for w in re.findall(r"[A-Za-z]+", output)}
    src_words = {w.lower() for w in re.findall(r"[A-Za-z]+", source)}
    overlap = len((out_words & src_words) & common)
    return overlap >= 4 and len(output.split()) > 0.9 * len(source.split())


# ---------------------------------------------------------------------------
# Model client
# ---------------------------------------------------------------------------


@dataclass
class ModelConfig:
    base_url: str
    api_key: str | None
    model: str
    temperature: float = 0.15
    top_p: float = 0.9
    repeat_penalty: float = 1.05
    timeout: int = 240
    max_retries: int = 3


class TranslationError(RuntimeError):
    pass


class ModelClient:
    def __init__(self, config: ModelConfig):
        self.config = config

    def _post(self, payload: dict) -> dict:
        data = json.dumps(payload).encode("utf-8")
        headers = {"Content-Type": "application/json"}
        if self.config.api_key:
            headers["Authorization"] = f"Bearer {self.config.api_key}"
        request = urllib.request.Request(
            self.config.base_url.rstrip("/") + "/v1/chat/completions",
            data=data,
            headers=headers,
            method="POST",
        )
        with urllib.request.urlopen(request, timeout=self.config.timeout) as response:
            return json.load(response)

    def complete(
        self, system: str, user: str, max_tokens: int, extra: dict | None = None
    ) -> str:
        payload = {
            "model": self.config.model,
            "messages": [
                {"role": "system", "content": system},
                {"role": "user", "content": user},
            ],
            "temperature": self.config.temperature,
            "top_p": self.config.top_p,
            "repeat_penalty": self.config.repeat_penalty,
            "max_tokens": max_tokens,
            "stream": False,
        }
        if extra:
            # Caller-supplied sampling/template options. The judge uses this to
            # disable a reasoning model's thinking mode: with thinking on, the
            # output cap is spent inside the reasoning and no verdict is emitted.
            payload.update(extra)
        last_error: Exception | None = None
        for attempt in range(self.config.max_retries):
            try:
                result = self._post(payload)
                choice = result["choices"][0]
                content = (choice["message"].get("content") or "").strip()
                if choice.get("finish_reason") == "length":
                    raise TranslationError("response truncated (finish_reason=length)")
                if not content:
                    raise TranslationError("empty response")
                return content
            except Exception as exc:  # noqa: BLE001 - retry network/model errors
                last_error = exc
                time.sleep(1.5 * (attempt + 1))
        raise TranslationError(f"model request failed: {last_error}")

    def healthy(self) -> bool:
        request = urllib.request.Request(
            self.config.base_url.rstrip("/") + "/v1/models",
            headers={"Authorization": f"Bearer {self.config.api_key}"}
            if self.config.api_key
            else {},
        )
        try:
            with urllib.request.urlopen(request, timeout=5) as response:
                return response.status == 200
        except Exception:  # noqa: BLE001
            return False


def wait_for_server(base_url: str, api_key: str | None, model: str, seconds: int) -> bool:
    deadline = time.time() + seconds
    while time.time() < deadline:
        if ModelClient(ModelConfig(base_url, api_key, model, timeout=5)).healthy():
            return True
        time.sleep(1)
    return False


class LocalServer:
    """Start and stop `unsloth studio run` for the Hy-MT2 GGUF."""

    def __init__(self, model: str, variant: str, port: int, context: int, parallel: int):
        self.model = model
        self.variant = variant
        self.port = port
        self.context = context
        self.parallel = parallel
        self.process: subprocess.Popen[str] | None = None
        self.api_key: str | None = None
        self._ready = threading.Event()
        self._lines: list[str] = []
        self._log_path = Path(tempfile.gettempdir()) / "mecfs-translate-server.log"

    @property
    def base_url(self) -> str:
        return f"http://127.0.0.1:{self.port}"

    def _reader(self) -> None:
        assert self.process and self.process.stdout
        with self._log_path.open("w", encoding="utf-8") as log:
            for line in self.process.stdout:
                log.write(line)
                log.flush()
                self._lines.append(line.rstrip())
                # Unsloth may move to the next free port when the requested one
                # is occupied; always follow the URL it actually prints.
                match = re.search(r"https?://127\.0\.0\.1:(\d+)", line)
                if match:
                    self.port = int(match.group(1))
                match = re.search(r"API Key:\s+(sk-[A-Za-z0-9_-]+)", line)
                if match:
                    self.api_key = match.group(1)
                    self._ready.set()

    def start(self) -> None:
        cmd = [
            "unsloth",
            "studio",
            "run",
            "--model",
            self.model,
            "--gguf-variant",
            self.variant,
            "--api-only",
            "--host",
            "127.0.0.1",
            "--port",
            str(self.port),
            "--parallel",
            str(self.parallel),
            "-c",
            str(self.context),
            "--no-cloudflare",
            "--silent",
        ]
        env = os.environ.copy()
        env.setdefault("HF_HUB_DISABLE_PROGRESS_BARS", "1")
        self.process = subprocess.Popen(
            cmd,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            text=True,
            bufsize=1,
            env=env,
            start_new_session=True,
        )
        threading.Thread(target=self._reader, daemon=True).start()
        deadline = time.time() + 420
        while time.time() < deadline:
            if self._ready.is_set() and self.api_key:
                client = ModelClient(
                    ModelConfig(self.base_url, self.api_key, self.model, timeout=10)
                )
                if client.healthy():
                    return
            if self.process.poll() is not None:
                tail = "\n".join(self._lines[-20:])
                raise TranslationError(
                    f"unsloth studio exited early (code {self.process.returncode}).\n{tail}\n"
                    f"See {self._log_path}"
                )
            time.sleep(1)
        raise TranslationError(
            f"model server did not become ready within 7 minutes. See {self._log_path}"
        )

    def stop(self) -> None:
        if not self.process or self.process.poll() is not None:
            return
        try:
            os.killpg(os.getpgid(self.process.pid), signal.SIGTERM)
            self.process.wait(timeout=20)
        except Exception:  # noqa: BLE001
            try:
                os.killpg(os.getpgid(self.process.pid), signal.SIGKILL)
            except Exception:  # noqa: BLE001
                pass


# ---------------------------------------------------------------------------
# Translator
# ---------------------------------------------------------------------------


class BlogTranslator:
    def __init__(self, client: ModelClient, lang: str, max_words: int = 420):
        self.client = client
        self.lang = lang
        self.config = LANGUAGES[lang]
        self.max_words = max_words
        self.requests = 0
        self.context = ""
        self._lock = threading.Lock()

    # -- model calls --------------------------------------------------------

    def _translate_segments(
        self,
        segments: list[str],
        context: str = "",
        mask: bool = True,
        whole_links: bool = False,
    ) -> list[str]:
        masked = []
        stores = []
        for segment in segments:
            if mask:
                value, store = mask_text(segment, whole_links=whole_links)
            else:
                value, store = segment, []
            masked.append(value)
            stores.append(store)

        hint = glossary_hint("\n".join(segments) + " " + context, self.lang)
        system = SYSTEM_PROMPT.format(
            language=self.config["name"], instructions=self.config["instructions"]
        )
        background = context or self.context
        if background:
            system += (
                "\nDocument context for terminology and tone "
                "(do not translate or repeat it):\n"
                + background.strip()[:600]
                + "\n"
            )
        if hint:
            system += "\n" + hint + "\n"
        body = "\n\n".join(
            f"<<<{index + 1}>>>\n{segment}" for index, segment in enumerate(masked)
        )
        user = USER_PROMPT.format(language=self.config["name"], segments=body)
        words = sum(len(s.split()) for s in masked)
        max_tokens = min(4096, max(256, int(words * 3.4) + 128))
        output = self.client.complete(system, user, max_tokens)
        with self._lock:
            self.requests += 1

        marker = re.compile(r"<<<\s*(\d+)\s*>>>")
        matches = list(marker.finditer(output))
        if len(matches) != len(segments):
            raise TranslationError(
                f"expected {len(segments)} segment markers, got {len(matches)}"
            )
        translated: list[str] = []
        for index, match in enumerate(matches):
            start = match.end()
            end = matches[index + 1].start() if index + 1 < len(matches) else len(output)
            value = output[start:end].strip()
            if mask:
                value, complete = restore_text(value, stores[index])
                if not complete:
                    raise TranslationError(
                        f"placeholder lost in segment {index + 1}: "
                        f"{placeholders_missing(value)}"
                    )
            translated.append(value)
        return translated

    def _single(self, segment: str, context: str = "", attempts: int = 4) -> str:
        last: Exception | None = None
        for attempt in range(attempts):
            try:
                value = self._translate_segments([segment], context)[0]
                value = post_fix(value, self.lang)
                if looks_untranslated(segment, value, self.lang) and attempt < attempts - 1:
                    raise TranslationError("output looks untranslated")
                if segment.count("](") != value.count("]("):
                    raise TranslationError("link count changed")
                if not value:
                    raise TranslationError("empty translation")
                return value
            except Exception as exc:  # noqa: BLE001
                last = exc
                time.sleep(1.0 * (attempt + 1))

        # Keep links intact by shielding the complete link, at the cost of
        # leaving its label in English.  Better a live link than a lost one.
        for attempt in range(2):
            try:
                value = self._translate_segments([segment], context, whole_links=True)[0]
                value = post_fix(value, self.lang)
                if segment.count("](") == value.count("](") and value:
                    return value
            except Exception as exc:  # noqa: BLE001
                last = exc
            time.sleep(1.0 * (attempt + 1))

        # Last resort: let the model see the raw citation keys and URLs.  This
        # fixes the rare segment where masking itself confuses a small model.
        citations = re.findall(r"\[[^\]]*@[^\]]+\]", segment)
        for attempt in range(3):
            try:
                value = self._translate_segments([segment], context, mask=False)[0]
                value = post_fix(value, self.lang)
                if all(citation in value for citation in citations) and value:
                    return value
            except Exception as exc:  # noqa: BLE001
                last = exc
            time.sleep(1.0 * (attempt + 1))
        raise TranslationError(f"segment failed after {attempts} attempts: {last}")

    def translate_blocks(self, blocks: list[str]) -> list[str]:
        """Translate a run of Markdown blocks, splitting on failures."""
        if not blocks:
            return []
        try:
            values = self._translate_segments(blocks)
            result = []
            for source, value in zip(blocks, values):
                value = post_fix(value, self.lang)
                if is_table(source) and not table_row_ok(source, value):
                    raise TranslationError("table structure changed")
                if re.search(r"^\s*([-*+]|\d+[.)])\s+", source, re.M) and not list_shape_ok(
                    source, value
                ):
                    raise TranslationError("list structure changed")
                if len(re.findall(r"^\s*#{1,6}\s+", source, re.M)) != len(
                    re.findall(r"^\s*#{1,6}\s+", value, re.M)
                ):
                    raise TranslationError("heading structure changed")
                if source.count("](") != value.count("]("):
                    raise TranslationError("link structure changed")
                result.append(value)
            return result
        except Exception:  # noqa: BLE001
            if len(blocks) == 1:
                return [self._single(blocks[0])]
            middle = len(blocks) // 2
            return self.translate_blocks(blocks[:middle]) + self.translate_blocks(
                blocks[middle:]
            )

    # -- document -----------------------------------------------------------

    def translate_front_matter(self, front: str, title: str | None) -> str:
        description = None
        if yaml is not None:
            try:
                description = (yaml.safe_load(front) or {}).get("description")
            except Exception:  # noqa: BLE001
                description = None
        lines = front.splitlines()
        output: list[str] = []
        has_lang = False
        for line in lines:
            stripped = line.strip()
            if stripped.startswith("lang:"):
                has_lang = True
                output.append(f"lang: {self.lang}")
                continue
            if re.match(r"^(title|description):", stripped):
                key = stripped.split(":", 1)[0]
                if yaml is not None:
                    try:
                        value = yaml.safe_load(line).get(key)
                    except Exception:  # noqa: BLE001
                        value = stripped.split(":", 1)[1].strip().strip('"').strip("'")
                else:
                    value = stripped.split(":", 1)[1].strip().strip('"').strip("'")
                if not isinstance(value, str):
                    output.append(line)
                    continue
                if key == "title":
                    context = description if isinstance(description, str) else ""
                else:
                    context = title if isinstance(title, str) else ""
                translated = self._single(value, context=context)
                translated = translated.replace("\n", " ").strip()
                if translated.startswith('"') and translated.endswith('"'):
                    translated = translated[1:-1]
                output.append(f"{key}: {json.dumps(translated, ensure_ascii=False)}")
                continue
            output.append(line)
        if not has_lang:
            output.append(f"lang: {self.lang}")
        return "\n".join(output)

    def translate_document(self, text: str) -> str:
        match = re.match(r"\A---\r?\n(.*?)\r?\n---\r?\n?", text, re.DOTALL)
        if not match:
            raise TranslationError("missing YAML front matter")
        front = match.group(1)
        body = text[match.end() :]

        title = None
        if yaml is not None:
            try:
                title = yaml.safe_load(front).get("title")
            except Exception:  # noqa: BLE001
                title = None

        if isinstance(title, str):
            self.context = title
        translated_front = self.translate_front_matter(front, title)

        blocks = split_markdown_blocks(body)
        output_blocks: list[str] = []

        run: list[str] = []
        run_indices: list[int] = []

        def flush() -> None:
            nonlocal run, run_indices
            if not run:
                return
            translated = self.translate_blocks(run)
            for index, value in zip(run_indices, translated):
                output_blocks[index] = value
            run = []
            run_indices = []

        for index, block in enumerate(blocks):
            output_blocks.append(block)
            if not block.strip() or is_protected(block):
                flush()
                continue
            words = len(block.split())
            if words > self.max_words and not is_table(block):
                flush()
                # Split very long prose at sentence boundaries.
                sentences = re.split(r"(?<=[.!?])\s+", block)
                pieces: list[str] = []
                current = ""
                for sentence in sentences:
                    if current and len((current + " " + sentence).split()) > self.max_words:
                        pieces.append(current)
                        current = sentence
                    else:
                        current = f"{current} {sentence}".strip()
                if current:
                    pieces.append(current)
                output_blocks[index] = " ".join(self.translate_blocks(pieces))
                continue
            run.append(block)
            run_indices.append(index)
            if sum(len(item.split()) for item in run) >= self.max_words:
                flush()
        flush()

        translated_body = "\n\n".join(block for block in output_blocks if block.strip())
        result = f"---\n{translated_front}\n---\n\n{translated_body.strip()}\n"
        return result


# ---------------------------------------------------------------------------
# Validation and orchestration
# ---------------------------------------------------------------------------


def validate_document(source: str, output: str) -> list[str]:
    warnings: list[str] = []
    for name, pattern in (
        ("citations", r"\[[^\]]*@[^\]]+\]"),
        ("headings", r"^#{1,6}\s+"),
        ("links", r"\]\("),
        ("table delimiters", r"^\|[ :|-]+\|$"),
        ("horizontal rules", r"^---$"),
        ("display math", r"\$\$"),
        ("code fences", r"^```"),
    ):
        left = len(re.findall(pattern, source, re.M))
        right = len(re.findall(pattern, output, re.M))
        if left != right:
            warnings.append(f"{name}: source={left} output={right}")
    source_words = len(source.split())
    output_words = len(output.split())
    if source_words and not (0.65 <= output_words / source_words <= 1.75):
        warnings.append(
            f"word ratio {output_words / source_words:.2f} "
            f"({source_words} -> {output_words})"
        )
    return warnings


def atomic_write(path: Path, content: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    temporary = path.with_suffix(path.suffix + ".tmp")
    temporary.write_text(content, encoding="utf-8")
    temporary.replace(path)


def iter_posts(only: str | None) -> list[Path]:
    import fnmatch

    posts = sorted(EN_POSTS.rglob("index.qmd"))
    if only:
        patterns = [item.strip() for item in only.split(",") if item.strip()]
        posts = [
            p
            for p in posts
            if any(
                fnmatch.fnmatch(str(p), pattern)
                or fnmatch.fnmatch(str(p.relative_to(EN_POSTS)), pattern)
                or pattern in str(p)
                for pattern in patterns
            )
        ]
    return posts


def ensure_index(lang: str) -> None:
    """Create the language blog index and metadata if they do not exist."""
    blog = QUARTO_ROOT / lang / "blog"
    blog.mkdir(parents=True, exist_ok=True)
    meta = blog / "_metadata.yml"
    if not meta.exists():
        meta.write_text(
            f"sidebar: false\nnumber-sections: false\nlang: {lang}\n", encoding="utf-8"
        )
    index = blog / "index.qmd"
    if index.exists():
        return
    config = LANGUAGES[lang]
    links = []
    for code in ("en", "fr", "de", "es", "pt"):
        if code == lang:
            links.append(config["self"])
        else:
            links.append(f"[{LANGUAGE_NAMES[code]}](/{code}/blog/)")
    index.write_text(
        "\n".join(
            [
                "---",
                'title: "Blog"',
                f"lang: {lang}",
                "listing:",
                "  contents: posts",
                "  sort:",
                '    - "date desc"',
                '    - "title asc"',
                "  type: default",
                "  categories: true",
                "  feed: true",
                "  filter-ui: true",
                "  sort-ui: true",
                "  page-size: 100",
                "  date-format: iso",
                "page-layout: full",
                "---",
                "",
                "::: {.blog-lang-links}",
                f"{config['available']}: " + " · ".join(links),
                ":::",
                "",
            ]
        ),
        encoding="utf-8",
    )


def main(argv: Iterable[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--langs", nargs="+", default=["es", "pt"], choices=sorted(LANGUAGES))
    parser.add_argument("--only", help="glob or substring filter for post paths")
    parser.add_argument("--limit", type=int, help="translate at most N posts per language")
    parser.add_argument("--force", action="store_true", help="overwrite existing translations")
    parser.add_argument("--dry-run", action="store_true", help="show what would be translated")
    parser.add_argument("--model", default=DEFAULT_MODEL)
    parser.add_argument("--gguf-variant", default=DEFAULT_VARIANT)
    parser.add_argument("--base-url", default=DEFAULT_BASE_URL)
    parser.add_argument("--api-key", default=os.environ.get("UNSLOTH_API_KEY"))
    parser.add_argument("--port", type=int, default=DEFAULT_PORT)
    parser.add_argument("--context", type=int, default=16384)
    parser.add_argument("--parallel", type=int, default=4)
    parser.add_argument("--jobs", type=int, default=4, help="posts translated concurrently")
    parser.add_argument("--max-words", type=int, default=420)
    parser.add_argument("--no-start-server", action="store_true")
    parser.add_argument("--strict", action="store_true", help="exit non-zero on any failure")
    args = parser.parse_args(argv)

    posts = iter_posts(args.only)
    if args.limit:
        posts = posts[: args.limit]
    if not posts:
        print("No posts matched.", file=sys.stderr)
        return 2

    for lang in args.langs:
        ensure_index(lang)

    server: LocalServer | None = None
    api_key = args.api_key
    base_url = args.base_url
    if not wait_for_server(base_url, api_key, args.model, seconds=8):
        if args.no_start_server:
            print(f"ERROR: no model server at {base_url}", file=sys.stderr)
            return 2
        if args.base_url != DEFAULT_BASE_URL:
            print(
                f"ERROR: {base_url} is not reachable and auto-start only binds "
                f"127.0.0.1:{DEFAULT_PORT}",
                file=sys.stderr,
            )
            return 2
        print(f"Starting {args.model} ({args.gguf_variant}) on port {args.port} ...")
        server = LocalServer(
            args.model,
            args.gguf_variant,
            args.port,
            args.context,
            max(args.parallel, args.jobs),
        )
        try:
            server.start()
        except TranslationError as exc:
            print(f"ERROR: {exc}", file=sys.stderr)
            return 2
        base_url = server.base_url
        api_key = server.api_key
        print(f"Model ready; API key acquired from server log.")

    client = ModelClient(
        ModelConfig(base_url=base_url, api_key=api_key, model=args.model)
    )

    total = len(posts) * len(args.langs)
    done = 0
    failures: list[tuple[str, str, str]] = []
    counter_lock = threading.Lock()

    def run_post(post: Path, lang: str) -> tuple[str, float, int, list[str]]:
        relative = post.relative_to(EN_POSTS)
        destination = QUARTO_ROOT / lang / "blog" / "posts" / relative
        started = time.time()
        translator = BlogTranslator(client, lang, max_words=args.max_words)
        source = post.read_text(encoding="utf-8")
        translated = translator.translate_document(source)
        warnings = validate_document(source, translated)
        if any(not item.startswith("word ratio") for item in warnings):
            raise TranslationError("structure check failed: " + "; ".join(warnings))
        atomic_write(destination, translated)
        return f"{lang}:{relative.parent}", time.time() - started, translator.requests, warnings

    try:
        for lang in args.langs:
            print(f"\n=== {LANGUAGES[lang]['name']} ({lang}) ===")
            pending: list[Path] = []
            for post in posts:
                relative = post.relative_to(EN_POSTS)
                destination = QUARTO_ROOT / lang / "blog" / "posts" / relative
                label = f"{lang}:{relative.parent}"
                if destination.exists() and not args.force:
                    done += 1
                    print(f"[{done}/{total}] skip  {label}")
                elif args.dry_run:
                    done += 1
                    print(f"[{done}/{total}] would translate {label}")
                else:
                    pending.append(post)

            if not pending:
                continue
            if args.jobs <= 1:
                for post in pending:
                    try:
                        label, elapsed, requests, warnings = run_post(post, lang)
                        with counter_lock:
                            done += 1
                        note = f"  ({'; '.join(warnings)})" if warnings else ""
                        print(
                            f"[{done}/{total}] ok    {label}  "
                            f"{elapsed:.0f}s, {requests} req{note}"
                        )
                    except Exception as exc:  # noqa: BLE001
                        relative = post.relative_to(EN_POSTS)
                        label = f"{lang}:{relative.parent}"
                        with counter_lock:
                            done += 1
                        failures.append((lang, str(relative.parent), str(exc)))
                        print(f"[{done}/{total}] FAIL  {label}: {exc}", file=sys.stderr)
            else:
                with ThreadPoolExecutor(max_workers=args.jobs) as pool:
                    futures = {pool.submit(run_post, post, lang): post for post in pending}
                    for future in as_completed(futures):
                        post = futures[future]
                        relative = post.relative_to(EN_POSTS)
                        label = f"{lang}:{relative.parent}"
                        try:
                            label, elapsed, requests, warnings = future.result()
                            with counter_lock:
                                done += 1
                            note = f"  ({'; '.join(warnings)})" if warnings else ""
                            print(
                                f"[{done}/{total}] ok    {label}  "
                                f"{elapsed:.0f}s, {requests} req{note}"
                            )
                        except Exception as exc:  # noqa: BLE001
                            with counter_lock:
                                done += 1
                            failures.append((lang, str(relative.parent), str(exc)))
                            print(f"[{done}/{total}] FAIL  {label}: {exc}", file=sys.stderr)
    finally:
        if server:
            server.stop()

    print(f"\nDone: {done - len(failures)} translated, {len(failures)} failed.")
    for lang, post, error in failures:
        print(f"  FAILED {lang}:{post}: {error}", file=sys.stderr)
    if failures:
        print("Re-run with --force --only '<post>' after fixing the cause.", file=sys.stderr)
        return 1 if args.strict else 0
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
