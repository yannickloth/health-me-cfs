#!/usr/bin/env python3
"""Translate the tooltip glossary into a new language with the translator of record.

New capability — `translate_blog.py` translates blog prose, and
`retranslate_flagged.py` re-translates flagged paragraphs. Neither handles the
structured glossary JSON, whose entries carry a label, a definition and several
optional prose fields (class, availability, cross-references, dose-zone text)
that the hover tooltip renders. This script produces `glossary-<lang>.json`
from `glossary-en.json` with full key parity, translating only the fields a
reader sees and copying the machine-keyed ones verbatim.

Usage
-----
    python3 ops/scripts/translate_glossary.py --lang es
    python3 ops/scripts/translate_glossary.py --lang pt --limit 5 --force
    python3 ops/scripts/translate_glossary.py --lang es pt --base-url http://127.0.0.1:8899 \
        --api-key sk-unsloth-...

Verification
-----------
    python3 ops/scripts/translate_glossary.py --lang es --limit 20 --force
    python3 -c "import json;d=json.load(open('src/main/resources/glossary-es.json'));print(len(d))"

Expected outcome: a run prints one progress line per batch and ends with
`N entries translated, M copied as-is, F failed`. The output file parses as
JSON, has the same top-level keys as `glossary-en.json`, and every non-alias
entry carries a non-empty label and definition.

Semantics
---------
Resumable: an existing output file is loaded and finished entries are skipped
unless `--force` is given, so an interrupted run costs only the remaining work.
Failures are per entry: a batch that cannot be translated falls back to
one-segment requests and then to the English text, which is counted as failed.
The process exits 0 by default; `--strict` exits 1 when any entry failed.

Fields translated: label, definition, class, also, rx, synonyms, noTooltip, and
doseZones.dose / doseZones.mechanism / doseZones.sideEffects.
Fields copied verbatim: category, generic, brand, sources, alias, therapeuticCategory,
therapeuticDepth, and doseZones.category (machine keys used for colours/labels).

Translated fields are checked mechanically: segment markers must survive, and
every digit run in the source must appear in the output.
"""

from __future__ import annotations

import argparse
import json
import re
import sys
import time
import urllib.error
import urllib.request
from collections import OrderedDict
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[2]
RESOURCES = REPO_ROOT / "src" / "main" / "resources"
EN_PATH = RESOURCES / "glossary-en.json"

DEFAULT_BASE_URL = "http://127.0.0.1:8899"
DEFAULT_MODEL = "unsloth/Hy-MT2-1.8B-GGUF"
DEFAULT_KEY = "sk-unsloth-40c0ea042369861ae5c53f1e5173f8d0"

LANGUAGES = {
    "es": {
        "name": "European Spanish (es-ES)",
        "instructions": (
            "Write European Spanish as used in Spain, not Latin American Spanish. "
            "Use an impersonal, clinical register. Use 'tú' only where the source "
            "addresses the reader directly."
        ),
        "terms": {
            "ME/CFS": "EM/SFC",
            "myalgic encephalomyelitis": "encefalomielitis miálgica",
            "chronic fatigue syndrome": "síndrome de fatiga crónica",
            "post-exertional malaise": "malestar post-esfuerzo",
            "brain fog": "niebla cerebral",
            "microglia": "microglía",
            "astrocyte": "astrocito",
            "neuroinflammation": "neuroinflamación",
            "blood-brain barrier": "barrera hematoencefálica",
            "cerebrospinal fluid": "líquido cefalorraquídeo",
            "small fibre neuropathy": "neuropatía de fibras pequeñas",
            "orthostatic intolerance": "intolerancia ortostática",
            "norepinephrine": "noradrenalina",
            "mast cell": "mastocito",
            "mitochondrial": "mitocondrial",
            "oxidative stress": "estrés oxidativo",
            "inflammasome": "inflamasoma",
            "cytokine": "citocina",
            "T cell": "linfocito T",
            "B cell": "linfocito B",
            "NK cell": "célula NK",
            "low-dose naltrexone": "naltrexona en dosis bajas",
            "graded exercise therapy": "terapia de ejercicio gradual",
            "cognitive behavioural therapy": "terapia cognitivo-conductual",
            "energy envelope": "envelope energético",
        },
        "fixes": [
            (r"\bmicroglias\b", "microglías"),
            (r"\bmicroglia\b", "microglía"),
            (r"\bastrocitos?\b", lambda m: m.group(0)),
        ],
    },
    "pt": {
        "name": "European Portuguese (pt-PT)",
        "instructions": (
            "Write European Portuguese as used in Portugal, not Brazilian Portuguese. "
            "Use 'está a + infinitivo' rather than the gerund. Use 'num/numa' rather "
            "than 'em um/em uma'. Use an impersonal, clinical register."
        ),
        "terms": {
            "ME/CFS": "EM/SFC",
            "myalgic encephalomyelitis": "encefalomielite miálgica",
            "chronic fatigue syndrome": "síndrome de fadiga crónica",
            "post-exertional malaise": "mal-estar pós-esforço",
            "brain fog": "névoa cerebral",
            "microglia": "microglia",
            "astrocyte": "astrócito",
            "neuroinflammation": "neuroinflamação",
            "blood-brain barrier": "barreira hematoencefálica",
            "cerebrospinal fluid": "líquido cefalorraquidiano",
            "small fibre neuropathy": "neuropatia de fibras pequenas",
            "orthostatic intolerance": "intolerância ortostática",
            "norepinephrine": "noradrenalina",
            "mast cell": "mastócito",
            "mitochondrial": "mitocondrial",
            "oxidative stress": "stress oxidativo",
            "inflammasome": "inflamassoma",
            "cytokine": "citocina",
            "T cell": "linfócito T",
            "B cell": "linfócito B",
            "NK cell": "célula NK",
            "low-dose naltrexone": "naltrexona em doses baixas",
            "graded exercise therapy": "terapia de exercício gradual",
            "cognitive behavioural therapy": "terapia cognitivo-comportamental",
            "energy envelope": "envelope de energia",
        },
        "fixes": [
            (r"\bequipe\b", "equipa"),
            (r"\bregistro\b", "registo"),
            (r"\bcontato\b", "contacto"),
            (r"\bplanejamento\b", "planeamento"),
        ],
    },
}

SYSTEM_PROMPT = """You are a senior medical translator and terminologist. Translate from English into {language}.

Hard rules:
- Output only the numbered translations, one per marker, in order.
- Keep the markers <<<1>>>, <<<2>>>, ... exactly as written.
- Preserve numbers, units, doses, statistics, and chemical notation EXACTLY as in
  the source. Do not reformat decimals: write 0.5, 0.3, 1.0 and 0.80 with a
  period, never with a comma. Never drop or round a digit.
- Do not translate gene symbols, protein abbreviations, trial names, drug generic
  names, or acronyms such as {acronyms}. Keep them as in the source.
- Use precise, natural medical language. Do not simplify the science.
- {instructions}
- Required terminology:{terms}
"""

USER_PROMPT = """Translate each segment into {language}.

{segments}
"""

TRANSLATABLE = ("label", "definition", "class", "also", "rx")
MARKER = re.compile(r"<<<\s*(\d+)\s*>>>")


def load_json(path: Path) -> OrderedDict:
    return json.loads(path.read_text(encoding="utf-8"), object_pairs_hook=OrderedDict)


def dump_json(path: Path, data: OrderedDict) -> None:
    text = json.dumps(data, ensure_ascii=False, indent=2) + "\n"
    tmp = path.with_suffix(path.suffix + ".tmp")
    tmp.write_text(text, encoding="utf-8")
    tmp.replace(path)


def digit_runs(text: str) -> list[str]:
    return re.findall(r"\d+", text)


# Terms whose numeral is part of the name (LGI1, CHI3L1, "1-specificity") are
# routinely dropped by the translator. Mask them behind a placeholder, translate
# the surrounding text, then restore the exact token.
NUMERIC_TERM = re.compile(
    r"\b(?:[A-Za-z]{1,6}[\-‑]?\d+[A-Za-z0-9\-]*|\d+[\-‑][A-Za-z][A-Za-z\-]*)\b"
)
PLACEHOLDER = "\u2986{}\u2987"


def mask_numeric_terms(text: str) -> tuple[str, list[str]]:
    store: list[str] = []

    def add(match: re.Match[str]) -> str:
        store.append(match.group(0))
        return PLACEHOLDER.format(len(store) - 1)

    return NUMERIC_TERM.sub(add, text), store


def restore_numeric_terms(text: str, store: list[str]) -> str:
    for index, value in enumerate(store):
        text = text.replace(PLACEHOLDER.format(index), value)
    return text


def decode_entities(text: str) -> str:
    """Decode numeric HTML entities the source uses for punctuation.

    `&#x2013;` (en dash) and `&#x2019;` (right single quote) resolve to real
    characters in the target, so their digits must not count as content.
    """
    import html

    return html.unescape(text)


def segments_for(entry: dict) -> list[tuple[tuple, str]]:
    """Return (path, text) pairs for every translatable string in an entry."""
    out: list[tuple[tuple, str]] = []
    for field in TRANSLATABLE:
        value = entry.get(field)
        if isinstance(value, str) and value.strip():
            out.append(((field,), value))
    for i, syn in enumerate(entry.get("synonyms") or []):
        if isinstance(syn, str) and syn.strip():
            out.append((("synonyms", i), syn))
    for i, nt in enumerate(entry.get("noTooltip") or []):
        if isinstance(nt, str) and nt.strip():
            out.append((("noTooltip", i), nt))
    for i, zone in enumerate(entry.get("doseZones") or []):
        for field in ("dose", "mechanism", "sideEffects"):
            value = zone.get(field)
            if isinstance(value, str) and value.strip():
                out.append((("doseZones", i, field), value))
    return out


def set_path(entry: dict, path: tuple, value: str) -> None:
    if len(path) == 1:
        entry[path[0]] = value
    elif len(path) == 2:
        entry[path[0]][path[1]] = value
    else:
        entry[path[0]][path[1]][path[2]] = value


class Client:
    def __init__(self, base_url: str, api_key: str, model: str, timeout: int = 180):
        self.base_url = base_url.rstrip("/")
        self.api_key = api_key
        self.model = model
        self.timeout = timeout
        self.requests = 0

    def complete(self, system: str, user: str, max_tokens: int, retries: int = 3) -> str:
        payload = {
            "model": self.model,
            "messages": [
                {"role": "system", "content": system},
                {"role": "user", "content": user},
            ],
            "temperature": 0.12,
            "top_p": 0.9,
            "max_tokens": max_tokens,
            "stream": False,
        }
        data = json.dumps(payload).encode("utf-8")
        last: Exception | None = None
        for attempt in range(retries):
            try:
                request = urllib.request.Request(
                    self.base_url + "/v1/chat/completions",
                    data=data,
                    headers={
                        "Content-Type": "application/json",
                        "Authorization": f"Bearer {self.api_key}",
                    },
                )
                with urllib.request.urlopen(request, timeout=self.timeout) as response:
                    body = json.load(response)
                self.requests += 1
                choice = body["choices"][0]
                if choice.get("finish_reason") == "length":
                    raise RuntimeError("truncated")
                content = (choice["message"].get("content") or "").strip()
                if not content:
                    raise RuntimeError("empty response")
                return content
            except Exception as exc:  # noqa: BLE001
                last = exc
                time.sleep(1.0 * (attempt + 1))
        raise RuntimeError(f"request failed: {last}")

    def healthy(self) -> bool:
        try:
            request = urllib.request.Request(
                self.base_url + "/v1/models",
                headers={"Authorization": f"Bearer {self.api_key}"},
            )
            with urllib.request.urlopen(request, timeout=5) as response:
                return response.status == 200
        except Exception:  # noqa: BLE001
            return False


def apply_fixes(text: str, lang: str) -> str:
    for pattern, repl in LANGUAGES[lang]["fixes"]:
        text = re.sub(pattern, repl, text, flags=re.IGNORECASE)
    return text


def translate_segments(client: Client, lang: str, texts: list[str]) -> list[str]:
    cfg = LANGUAGES[lang]
    terms = "\n- " + "\n- ".join(f"{k} → {v}" for k, v in cfg["terms"].items())
    acronyms = "ME/CFS, PEM, POTS, TSPO, PET, MRI, CNS, CSF, IL-6, CRP, DNA, RNA"
    system = SYSTEM_PROMPT.format(
        language=cfg["name"],
        instructions=cfg["instructions"],
        terms=terms,
        acronyms=acronyms,
    )
    body = "\n\n".join(f"<<<{i + 1}>>>\n{t}" for i, t in enumerate(texts))
    user = USER_PROMPT.format(language=cfg["name"], segments=body)
    words = sum(len(t.split()) for t in texts)
    max_tokens = min(4096, max(256, int(words * 3.2) + 160))
    output = client.complete(system, user, max_tokens)
    matches = list(MARKER.finditer(output))
    if len(matches) != len(texts):
        raise RuntimeError(f"expected {len(texts)} markers, got {len(matches)}")
    result = []
    for i, match in enumerate(matches):
        start = match.end()
        end = matches[i + 1].start() if i + 1 < len(matches) else len(output)
        result.append(output[start:end].strip())
    return result


def translate_entry(client: Client, lang: str, entry: dict) -> tuple[int, list[str]]:
    """Translate one entry, retrying per segment.

    Returns (segments translated, unresolved paths). A segment is retried alone
    (up to three attempts) because the numeric guard rejects a rendering that
    drops or merges a digit — for example "protein 1" losing its "1". Only when
    every attempt fails is the path reported and the English text kept, so one
    hard segment cannot discard a whole entry.
    """
    pairs = segments_for(entry)
    if not pairs:
        return 0, []

    def check(path: tuple, source: str, value: str) -> str | None:
        value = restore_numeric_terms(value, masked[source])
        value = apply_fixes(value, lang)
        if not value:
            return None
        # Compare digit tokens, not the literal string: number punctuation is
        # locale dependent (11,800 vs 11.800) and the source uses numeric HTML
        # entities such as &#x2013; that resolve to real characters.
        expected = digit_runs(decode_entities(source))
        if [d for d in expected if d not in digit_runs(value)]:
            return None
        return value

    texts = [text for _, text in pairs]
    masked: dict[str, list[str]] = {}
    outbound: list[str] = []
    for text in texts:
        masked_text, store = mask_numeric_terms(text)
        masked[text] = store
        outbound.append(masked_text)
    resolved: dict[int, str] = {}
    try:
        for i, value in enumerate(translate_segments(client, lang, outbound)):
            checked = check(pairs[i][0], texts[i], value)
            if checked:
                resolved[i] = checked
    except Exception:  # noqa: BLE001 - fall through to per-segment retry
        pass

    unresolved: list[str] = []
    for i, (path, source) in enumerate(pairs):
        if i in resolved:
            continue
        for attempt in range(3):
            try:
                value = translate_segments(client, lang, [outbound[i]])[0]
            except Exception:  # noqa: BLE001
                continue
            checked = check(path, source, value)
            if checked:
                resolved[i] = checked
                break
        else:
            unresolved.append(".".join(str(p) for p in path))

    for i, (path, _) in enumerate(pairs):
        if i in resolved:
            set_path(entry, path, resolved[i])
    return len(resolved), unresolved


def batch_entries(items: list[tuple[str, dict]], max_words: int = 340) -> list[list[tuple[str, dict]]]:
    batches, current, words = [], [], 0
    for key, entry in items:
        size = sum(len(t.split()) for _, t in segments_for(entry)) or 1
        if current and words + size > max_words:
            batches.append(current)
            current, words = [], 0
        current.append((key, entry))
        words += size
    if current:
        batches.append(current)
    return batches


def main(argv=None) -> int:
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--lang", nargs="+", required=True, choices=sorted(LANGUAGES))
    parser.add_argument("--force", action="store_true", help="retranslate existing entries")
    parser.add_argument("--limit", type=int, help="translate at most N entries per language")
    parser.add_argument("--batch-words", type=int, default=340)
    parser.add_argument("--base-url", default=DEFAULT_BASE_URL)
    parser.add_argument("--api-key", default=DEFAULT_KEY)
    parser.add_argument("--model", default=DEFAULT_MODEL)
    parser.add_argument("--strict", action="store_true")
    parser.add_argument("--dry-run", action="store_true")
    args = parser.parse_args(argv)

    source = load_json(EN_PATH)
    client = Client(args.base_url, args.api_key, args.model)
    if not args.dry_run and not client.healthy():
        print(f"ERROR: no model server at {args.base_url}", file=sys.stderr)
        return 2

    status = 0
    for lang in args.lang:
        out_path = RESOURCES / f"glossary-{lang}.json"
        existing = load_json(out_path) if out_path.exists() else OrderedDict()
        result: OrderedDict = OrderedDict()

        pending: list[tuple[str, dict]] = []
        copied = 0
        for key, entry in source.items():
            if key.startswith("_"):
                result[key] = entry
                continue
            if entry.get("alias") or not entry.get("definition"):
                result[key] = entry  # alias stub or non-defined entry: copy verbatim
                copied += 1
                continue
            done = existing.get(key)
            if (not args.force) and isinstance(done, dict) and done.get("definition"):
                result[key] = done
                copied += 1
            else:
                pending.append((key, entry))

        if args.limit:
            pending = pending[: args.limit]
        print(f"{lang}: {len(pending)} to translate, {copied} reused, {len(result)} carried over")

        if args.dry_run:
            for key, entry in pending[:10]:
                print(f"  would translate {key}")
            continue

        batches = batch_entries(pending, args.batch_words)
        done_count = failed = 0
        for index, batch in enumerate(batches, 1):
            for key, entry in batch:
                translated = json.loads(json.dumps(entry))
                try:
                    _, unresolved = translate_entry(client, lang, translated)
                    if unresolved:
                        # Keep the entry but record the English-kept fields.
                        result[key] = translated
                        failed += 1
                        print(f"  PARTIAL {key}: kept English for {', '.join(unresolved)}", file=sys.stderr)
                    else:
                        result[key] = translated
                        done_count += 1
                except Exception as exc:  # noqa: BLE001
                    result[key] = entry
                    failed += 1
                    print(f"  FAIL {key}: {exc}", file=sys.stderr)
            if index % 5 == 0 or index == len(batches):
                ordered = OrderedDict((k, result[k]) for k in source.keys() if k in result)
                dump_json(out_path, ordered)
                print(f"  [{index}/{len(batches)}] translated={done_count} failed={failed} requests={client.requests}")

        ordered = OrderedDict((k, result[k]) for k in source.keys() if k in result)
        missing = [k for k in source if k not in ordered]
        if missing:
            print(f"ERROR: {len(missing)} keys missing, e.g. {missing[:5]}", file=sys.stderr)
            status = 1
        dump_json(out_path, ordered)
        print(f"{lang}: {done_count} entries translated, {copied} copied as-is, {failed} failed -> {out_path}")
        if failed and args.strict:
            status = 1
    return status


if __name__ == "__main__":
    raise SystemExit(main())
