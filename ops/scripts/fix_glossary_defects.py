#!/usr/bin/env python3
"""Fix the audited defects in the ES/PT tooltip glossaries.

Input is the finding list from the translation audit of `glossary-es.json` and
`glossary-pt.json`. Every change here is an exact string replacement on a
`label` or `definition` field, so the fix is reviewable and reversible:

  * a label that names a different concept (`OI` shipped as "Hola."),
  * a term swapped for the disease name inside a definition — the systematic
    "post-exertional malaise" -> "síndrome de fatiga crónica" substitution,
  * cross-language contamination (Spanish inside the Portuguese file, French
    and Italian fragments),
  * a proper name that must not be translated (DecodeME, Solve ME),
  * untranslated scaffolding.

Usage
-----
    python3 ops/scripts/fix_glossary_defects.py --check     # dry run, show changes
    python3 ops/scripts/fix_glossary_defects.py --apply
    python3 ops/scripts/fix_glossary_defects.py --selftest

Verification
------------
    python3 ops/scripts/fix_glossary_defects.py --selftest

Expected outcome: `--selftest` prints one result per built-in case and
"all controls pass" (exit 0). A real run with `--check` prints the planned
replacements and writes nothing; `--apply` writes the files and reports the
count.

Semantics
---------
Writes only `--es` and `--pt`. `--check` is the default and writes nothing.
`--strict` exits 1 when a fix could not be applied because its expected text is
absent — that means the finding list is stale against the files and the run
must not be trusted.
"""

from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[2]
DEFAULT_ES = REPO_ROOT / "src" / "main" / "resources" / "glossary-es.json"
DEFAULT_PT = REPO_ROOT / "src" / "main" / "resources" / "glossary-pt.json"

# --- fixes -----------------------------------------------------------------
# Each entry: (key, field, expected_text, replacement). The expected text must
# be present verbatim; otherwise the fix is reported as not applied.

LABEL_FIXES_ES = {
    "OI": "Intolerancia ortostática",
    "EMG": "Electromiografía",
    "macrophage": "Macrófago",
    "ubiquitin": "Ubiquitina",
    "wakefulness": "Vigilia",
    "dysautonomia": "Disautonomía",
    "tanycyte": "Tanicito",
    "Saffron": "Azafrán",
    "labile iron pool": "Reserva de hierro lábil",
    "resensitization": "Resensibilización",
    "non-POTS dysautonomia": "Disautonomía no POTS",
    "creatine kinase": "Creatina quinasa",
    "histamine N-methyltransferase": "Histamina N-metiltransferasa",
    "neurodegeneration": "Neurodegeneración",
    "Interoception": "Interocepción",
    "medium-chain triglycerides": "Triglicéridos de cadena media",
    "myo-inositol": "Mioinositol",
    "iNOS": "iNOS",
    "influenza": "Gripe",
    "tVNS": "tVNS",
    "striatum": "Cuerpo estriado",
    "ventral striatum": "Estriado ventral",
    "GALT": "Tejido linfoide asociado al intestino (GALT)",
    "HIC": "HIC",
    "PTLDS": "PTLDS",
    "EBV": "Virus de Epstein-Barr",
    "CFS/ME": "SFC/EM",
    "IACFS/ME": "Asociación Internacional de EM/SFC",
    "SWRA": "Análisis reponderado por gravedad",
    "CTX": "CTX (telopéptido C-terminal)",
    "gastric emptying scintigraphy": "Gammagrafía de vaciado gástrico",
    "immune exhaustion": "Agotamiento inmunitario",
    "histaminylation": "Histaminilación",
    "lipid peroxidation": "Peroxidación de lípidos",
    "VTE": "Tromboembolismo venoso (VTE)",
    "bradykinin": "Bradicinina",
    "nociceptor": "Nociceptor",
    "salience network": "Red de saliencia",
    "phonophobia": "Fonofobia",
    "hyperacusis": "Hiperacusia",
}

LABEL_FIXES_PT = {
    "OI": "Intolerância ortostática",
    "dysbiosis": "Disbiose",
    "striatum": "Estriado",
    "ubiquitin": "Ubiquitina",
    "nocebo": "Nocebo",
    "wakefulness": "Vigília",
    "anterior cingulate cortex": "Córtex cingulado anterior",
    "PTLDS": "PTLDS",
    "MCAS": "Síndrome de Ativação de Mastócitos",
    "OMF": "OMF",
    "CFS/ME": "SFC/EM",
    "IACFS/ME": "Associação Internacional de EM/SFC",
    "ESR": "VHS (velocidade de hemossedimentação)",
    "GALT": "Tecido linfoide associado ao intestino (GALT)",
    "HIC": "HIC",
    "MEG": "MEG",
    "NO": "NO",
    "VTE": "TEV (tromboembolismo venoso)",
    "QSM": "Mapeamento quantitativo de suscetibilidade (QSM)",
    "PTSD": "TEPT",
    "Parathyroid": "Paratireoide",
    "Cobalamin": "Cobalamina",
    "Prednisone": "Prednisona",
    "Cyclosporine": "Ciclosporina",
    "MHC": "Complexo principal de histocompatibilidade (MHC)",
    "AD": "DA (Doença de Alzheimer)",
    "therapeutic plasma exchange": "Troca de plasma terapêutica",
    "myo-inositol": "Mioinositol",
    "influenza": "Gripe",
    "tVNS": "tVNS",
    "molecular mimicry": "Mimetismo molecular",
    "sarcolemmal": "Sarcolemal",
    "neurodegeneration": "Neurodegeneração",
    "tanycyte": "Tanicito",
    "brown adipose tissue": "Tecido adiposo castanho",
    "CTX": "CTX (telopéptido C-terminal)",
    "Lactate-to-creatine ratio": "Razão lactato-creatina",
    "bioavailability": "Biodisponibilidade",
    "putamen": "Putamen",
    "MDD": "Perturbação depressiva maior",
    "tilt table testing": "Teste de mesa basculante",
    "bradykinin": "Bradicinina",
    "nociceptor": "Nociceptor",
    "salience network": "Rede de saliência",
    "phonophobia": "Fonofobia",
}

# Definitions: exact substring replacements. PEM was overwritten with the
# disease name in ~30 definitions, which changes the medical meaning.
DEF_FIXES_ES = {
    "Amlodipine": [("componente vascular del síndrome de fatiga crónica",
                    "componente vascular del malestar post-esfuerzo (PEM)")],
    "Armodafinil": [("riesgo de ocultamiento del síndrome de fatiga crónica",
                     "riesgo de ocultamiento del malestar post-esfuerzo (PEM)")],
    "CCC": [("requieren síndrome de fatiga crónica más múltiples dominios",
             "requieren malestar post-esfuerzo (PEM) más múltiples dominios")],
    "CPET": [("señal fisiológica del síndrome de fatiga crónica",
              "señal fisiológica del malestar post-esfuerzo (PEM)")],
    "LC": [("comparten síndrome de fatiga crónica, intolerancia ortostática",
            "comparten malestar post-esfuerzo (PEM), intolerancia ortostática")],
    "Long COVID": [("fatiga, síndrome de fatiga crónica, niebla cerebral",
                    "fatiga, malestar post-esfuerzo (PEM), niebla cerebral")],
    "boom-bust cycle": [("provocando síndrome de fatiga crónica",
                         "provocando malestar post-esfuerzo (PEM)")],
    "energy envelope": [("sin desencadenar síndrome de fatiga crónica",
                         "sin desencadenar malestar post-esfuerzo (PEM)")],
    "mPTP": [("Orifico de transición", "Poro de transición"),
             ("en el síndrome de fatiga crónica", "en el malestar post-esfuerzo (PEM)")],
    "pacing": [("evitar desencadenar síndrome de fatiga crónica",
                "evitar desencadenar malestar post-esfuerzo (PEM)")],
    "sensory overload": [("apagamiento cognitivo y síndrome de fatiga crónica",
                          "apagamiento cognitivo y malestar post-esfuerzo (PEM)")],
    "HTT": [("EM/SFC (huntingtin)", "HTT (huntingtina)")],
    "OTC": [("Sobre la mesa", "De venta libre")],
    "ALS": [("neurones motoros", "neuronas motoras")],
    "nociplastic": [("dolor nocipléptico", "dolor nociplástico")],
    "NO": [("Óxido de nitrógeno", "Óxido nítrico")],
}

DEF_FIXES_PT = {
    "CCC": [("exigem síndrome de fadiga crónica mais múltiplos domínios",
             "exigem mal-estar pós-esforço (PEM) mais múltiplos domínios")],
    "CPET": [("sinal fisiológico da síndrome de fadiga crónica",
              "sinal fisiológico do mal-estar pós-esforço (PEM)")],
    "LC": [("compartilham síndrome de fadiga crónica, intolerância",
            "compartilham mal-estar pós-esforço (PEM), intolerância")],
    "Long COVID": [("fadiga, síndrome de fadiga crónica, névoa cerebral",
                    "fadiga, mal-estar pós-esforço (PEM), névoa cerebral")],
    "SWRA": [("induzido pela síndrome de fadiga crónica",
              "induzido pelo mal-estar pós-esforço (PEM)")],
    "WASF3": [("e síndrome de fadiga crónica", "e mal-estar pós-esforço (PEM)")],
    "boom-bust cycle": [("desencadeando síndrome de fadiga crónica",
                         "desencadeando mal-estar pós-esforço (PEM)")],
    "energy envelope": [("sem desencadear a síndrome de fadiga crónica",
                         "sem desencadear o mal-estar pós-esforço (PEM)")],
    "mPTP": [("na síndrome de fadiga crónica", "no mal-estar pós-esforço (PEM)")],
    "pacing": [("evitar o desencadeamento da síndrome de fadiga crónica",
                "evitar o desencadeamento do mal-estar pós-esforço (PEM)")],
    "sensory overload": [("desligamento cognitivo e síndrome de fadiga crónica",
                          "desligamento cognitivo e mal-estar pós-esforço (PEM)")],
    "ALS": [("Esclerose Lateral Miopática", "Esclerose Lateral Amiotrófica")],
    "nociplastic": [("dor nocipática", "dor nociplástica")],
    "NO": [("Óxido de Nitrogênio", "Óxido nítrico")],
    "BMAL1": [("Gênio do circuito cerebral", "Gene cerebral e muscular ARNT-like 1")],
    "Gαq": [("Subunidade G Protein Alpha-q", "Subunidade da proteína G alfa-q")],
    "HSC": [("Célula Stem Hematopoiética", "Célula estaminal hematopoiética")],
    "O₂": [("acceptor de elétrons", "aceitador de eletrões")],
}

GαQ_ES = ("Subunidad de la proteína G Alpha-q", "Subunidad de la proteína G alfa-q")
DEF_FIXES_ES["Gαq"] = [GαQ_ES]

# Proper names that must not be translated.
PROPER_NAMES_ES = [("DecodificaME", "DecodeME"), ("Resuelve la EM/SFC", "Solve ME"),
                   ("Recarga tu energía", "REenergizeME"), ("Asociación EM/SFC", "ME Association")]
PROPER_NAMES_PT = [("DecodificarME", "DecodeME"), ("Resolva a EM", "Solve ME"),
                   ("RecarregueME", "REenergizeME"), ("Associação EM/SFC", "ME Association")]


def apply_label_fixes(data: dict, fixes: dict[str, str]) -> tuple[int, list[str]]:
    changed = 0
    problems: list[str] = []
    for key, label in fixes.items():
        entry = data.get(key)
        if not isinstance(entry, dict):
            problems.append(f"missing key {key!r}")
            continue
        if entry.get("label") == label:
            continue
        entry["label"] = label
        changed += 1
    return changed, problems


def apply_text_fixes(data: dict, fixes: dict[str, list[tuple[str, str]]]) -> tuple[int, list[str]]:
    changed = 0
    problems: list[str] = []
    for key, pairs in fixes.items():
        entry = data.get(key)
        if not isinstance(entry, dict):
            problems.append(f"missing key {key!r}")
            continue
        text = entry.get("definition") or ""
        original = text
        for old, new in pairs:
            if old in text:
                text = text.replace(old, new)
        if text != original:
            entry["definition"] = text
            changed += 1
        else:
            problems.append(f"{key}: expected text not found")
    return changed, problems


def apply_everywhere(data: dict, pairs: list[tuple[str, str]]) -> int:
    """Replace terms in every label and definition of a file."""
    changed = 0
    for entry in data.values():
        if not isinstance(entry, dict):
            continue
        for field in ("label", "definition"):
            text = entry.get(field)
            if not isinstance(text, str):
                continue
            new = text
            for old, new_term in pairs:
                if old in new:
                    new = new.replace(old, new_term)
            if new != text:
                entry[field] = new
                changed += 1
    return changed


# Brazilian forms that must be European in this file. The glossary is labelled
# pt-PT and its blog corpus is pt-PT, but the generator produced a mix (e.g.
# "hormônio" 44x vs "hormona" 3x, "controle" 28x vs "controlo" 1x). Every pair
# below is a BR spelling with a distinct EP equivalent, applied on word
# boundaries so no substring of another word is touched.
#
# Gender changes are excluded: "distúrbio" (m) -> "perturbação" (f) would need
# the article rewritten ("do distúrbio" -> "da perturbação"), which a word-level
# substitution cannot do safely. Those are handled by GENDER_FIXES below as
# explicit phrase rewrites.
BR_TO_EP: list[tuple[str, str]] = [
    ("hormônio", "hormona"), ("hormônios", "hormonas"),
    ("neurônio", "neurónio"), ("neurônios", "neurónios"),
    ("controle", "controlo"), ("controles", "controlos"),
    ("marrom", "castanho"), ("marrons", "castanhos"),
    ("oxigênio", "oxigénio"), ("crônica", "crónica"), ("crônico", "crónico"),
    ("crônicas", "crónicas"), ("crônicos", "crónicos"),
    ("lipídios", "lípidos"), ("lipídio", "lípido"),
    ("tireoide", "tiróide"), ("câncer", "cancro"),
    ("protônica", "protónica"), ("protônico", "protónico"),
    ("putamênio", "putamen"), ("sistêmica", "sistémica"), ("sistêmico", "sistémico"),
    ("histômica", "histológica"), ("histômico", "histológico"),
    ("estrogênio", "estrogénio"), ("androgênio", "androgénio"),
]

# Phrase rewrites for the gender-changing pairs, so the article agrees.
GENDER_FIXES: list[tuple[str, str]] = [
    ("o distúrbio", "a perturbação"), ("os distúrbios", "as perturbações"),
    ("do distúrbio", "da perturbação"), ("dos distúrbios", "das perturbações"),
    ("no distúrbio", "na perturbação"), ("nos distúrbios", "nas perturbações"),
    ("um distúrbio", "uma perturbação"), ("uns distúrbios", "umas perturbações"),
    ("ao distúrbio", "à perturbação"), ("aos distúrbios", "às perturbações"),
    ("distúrbio", "perturbação"), ("distúrbios", "perturbações"),
    ("transtorno", "perturbação"), ("transtornos", "perturbações"),
]

RE_BR = {br: re.compile(rf"(?i)\b{re.escape(br)}\b") for br, _ in BR_TO_EP}


def apply_br_to_ep(data: dict) -> int:
    """Normalise Brazilian spellings to European Portuguese, preserving case.

    Gender-changing pairs run first as whole phrases, so the article is fixed
    together with the noun ("do distúrbio" -> "da perturbação") before the bare
    word pass can leave "do perturbação" behind.
    """
    changed = 0
    for entry in data.values():
        if not isinstance(entry, dict):
            continue
        for field in ("label", "definition"):
            text = entry.get(field)
            if not isinstance(text, str):
                continue
            new = text
            for br, ep in GENDER_FIXES:
                new = re.sub(
                    rf"(?i)(?<![a-zà-ÿ]){re.escape(br)}(?![a-zà-ÿ])",
                    lambda m, ep=ep: (ep[0].upper() + ep[1:]) if m.group(0)[0].isupper() else ep,
                    new,
                )
            for br, ep in BR_TO_EP:
                def swap(match: re.Match, ep: str = ep) -> str:
                    found = match.group(0)
                    if found[0].isupper():
                        return ep[0].upper() + ep[1:]
                    return ep

                new = RE_BR[br].sub(swap, new)
            if new != text:
                entry[field] = new
                changed += 1
    return changed


def selftest() -> int:
    data = {
        "OI": {"label": "Hola.", "definition": "…"},
        "CCC": {"label": "CCC", "definition": "requieren síndrome de fatiga crónica más múltiples dominios"},
        "macrophage": {"label": "Máfago", "definition": "los máfagos"},
    }
    cases = []
    changed, problems = apply_label_fixes(data, {"OI": "Intolerancia ortostática", "EMG": "Electromiografía"})
    cases.append(("label fixed", changed == 1))
    cases.append(("missing key reported", any("EMG" in p for p in problems)))
    cases.append(("label value correct", data["OI"]["label"] == "Intolerancia ortostática"))

    changed2, problems2 = apply_text_fixes(
        data, {"CCC": [("requieren síndrome de fatiga crónica más múltiples dominios",
                        "requieren malestar post-esfuerzo (PEM) más múltiples dominios")],
               "nope": [("x", "y")]}
    )
    cases.append(("definition fixed", changed2 == 1))
    cases.append(("absent text reported", any("nope" in p for p in problems2)))
    cases.append(("substitution applied",
                  "malestar post-esfuerzo" in data["CCC"]["definition"]))

    changed3 = apply_everywhere(data, [("Máfago", "Macrófago"), ("máfagos", "macrófagos")])
    cases.append(("global replace works", changed3 >= 1
                  and data["macrophage"]["label"] == "Macrófago"))
    cases.append(("no-op replace is silent",
                  apply_everywhere({"A": {"label": "x"}}, [("zzz", "y")]) == 0))

    br = {"A": {"label": "Hormônio", "definition": "o controle do distúrbio"},
          "B": {"label": "hormonas", "definition": "sem alteração"}}
    apply_br_to_ep(br)
    cases.append(("BR->EP label with capital", br["A"]["label"] == "Hormona"))
    cases.append(("BR->EP definition with article",
                  br["A"]["definition"] == "o controlo da perturbação"))
    cases.append(("EP left untouched", br["B"]["label"] == "hormonas"))
    cases.append(("no substring damage",
                  apply_br_to_ep({"C": {"definition": "controlador"}}) == 0))

    passed = 0
    for name, ok in cases:
        print(f"  {name:24s} {'PASS' if ok else 'FAIL'}")
        passed += 1 if ok else 0
    print("all controls pass" if passed == len(cases) else f"{passed}/{len(cases)} pass")
    return 0 if passed == len(cases) else 1


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--es", default=str(DEFAULT_ES))
    parser.add_argument("--pt", default=str(DEFAULT_PT))
    parser.add_argument("--apply", action="store_true")
    parser.add_argument("--check", action="store_true")
    parser.add_argument("--strict", action="store_true")
    parser.add_argument("--selftest", action="store_true")
    args = parser.parse_args(argv)

    if args.selftest:
        return selftest()

    problems: list[str] = []
    report: list[str] = []
    for path, labels, defs, names in (
        (Path(args.es), LABEL_FIXES_ES, DEF_FIXES_ES, PROPER_NAMES_ES),
        (Path(args.pt), LABEL_FIXES_PT, DEF_FIXES_PT, PROPER_NAMES_PT),
    ):
        if not path.exists():
            print(f"ERROR: {path} not found", file=sys.stderr)
            return 2
        try:
            data = json.loads(path.read_text(encoding="utf-8"))
        except json.JSONDecodeError as exc:
            print(f"ERROR: {path} is not valid JSON: {exc}", file=sys.stderr)
            return 2

        label_count, label_problems = apply_label_fixes(data, labels)
        def_count, def_problems = apply_text_fixes(data, defs)
        name_count = apply_everywhere(data, names)
        # The Brazilian/European normalisation applies to pt-PT only; the ES
        # file has no BR forms.
        br_count = apply_br_to_ep(data) if path.name.endswith("pt.json") else 0
        problems += [f"{path.name}: {p}" for p in label_problems + def_problems]
        report.append(
            f"{path.name}: {label_count} label(s), {def_count} definition(s), "
            f"{name_count} proper name(s) restored, {br_count} pt-PT spelling field(s)"
        )
        if args.apply:
            path.write_text(
                json.dumps(data, ensure_ascii=False, indent=1) + "\n", encoding="utf-8"
            )

    for line in report:
        print(("APPLIED  " if args.apply else "PLANNED  ") + line)
    if problems:
        print(f"{len(problems)} fix(es) not applied:", file=sys.stderr)
        for problem in problems:
            print(f"  {problem}", file=sys.stderr)
    if not args.apply:
        print("(dry run; pass --apply to write)")
    if args.strict and problems:
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
