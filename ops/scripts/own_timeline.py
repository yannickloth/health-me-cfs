#!/usr/bin/env python3
"""own_timeline.py — longitudinal own-data timeline (Polaris biomarcadores analog).

Joins a patient's self-reported records into one timeline:
  - daily medication/supplement intake YAMLs  (self-reported/medications/*.yaml)
  - regimen reference + titration history     (medications/_reference.yaml)
  - wide medication log CSV                   (tracking/medication-log.csv)
  - daily symptom YAMLs                       (self-reported/symptoms/**/*.yaml)

Doctrine (inherited from Polaris biomarcadores.py):
  - Joins only; interprets nothing. Stores value + flag only — no meaning assigned.
  - Unknown item names are NOT silently dropped: they land on the
    CONFIRM list (por-confirmar) for the patient to validate.
  - A parsed-but-suspicious value goes to the confirm list with low confidence.

Usage:
  python3 ops/scripts/own_timeline.py [--patient yannick] [--kind all|meds|symptoms]
                                      [--json] [--strict]
Output: ops/research/own-timeline-<patient>-<date>.md (or JSON with --json).
"""
from __future__ import annotations

import argparse
import csv
import json
import re
import sys
from collections import defaultdict
from datetime import date
from pathlib import Path

import yaml

VITAL_KEY_RE = re.compile(
    r"(heart_rate|blood_pressure|bp(_sys|_dia)?|spo2|temperature|weight|hr_bpm)", re.I
)
DOSE_RE = re.compile(r"(\d+(?:[.,]\d+)?)\s*(mg|mcg|µg|ug|g|iu|ui|ml|drops?)\b", re.I)
COUNT_KEYS = ("count_taken", "typical_daily_count")


def load_yaml(path: Path):
    try:
        return yaml.safe_load(path.read_text())
    except Exception as e:  # noqa: BLE001 — report; the run continues
        return {"__parse_error__": str(e)}


def norm_item(name: str) -> str:
    n = re.sub(r"\s+", " ", str(name)).strip().lower()
    n = re.sub(r"\(.*?\)", "", n).strip()
    return n


def parse_dose(dose) -> tuple[str, str] | None:
    if dose is None:
        return None
    m = DOSE_RE.search(str(dose))
    if not m:
        return None
    return m.group(1).replace(",", "."), m.group(2).lower()


def iter_vitals(node, out, prefix=""):
    if isinstance(node, dict):
        for k, v in node.items():
            key = f"{prefix}.{k}" if prefix else str(k)
            if prefix.startswith("weather"):  # weather temps are not vitals
                continue
            if VITAL_KEY_RE.search(str(k)) and isinstance(v, (int, float)):
                out.append((key, v))
            else:
                iter_vitals(v, out, key)
    elif isinstance(node, list):
        for i, v in enumerate(node):
            iter_vitals(v, out, prefix)


class Timeline:
    def __init__(self):
        self.meds: list[dict] = []        # {date, item, value, unit, taken, src}
        self.symptoms: list[dict] = []    # {date, item, value, src}
        self.vitals: list[dict] = []      # {date, item, value, src}
        self.dose_changes: list[dict] = []
        self.confirm: list[str] = []      # por-confirmar
        self.skipped: list[str] = []

    def add_med(self, d, item, value, unit, src, taken=None):
        self.meds.append({"date": d, "item": item, "value": value,
                          "unit": unit, "taken": taken, "src": str(src)})


def ingest_meds_yaml(tl: Timeline, path: Path):
    data = load_yaml(path)
    if "__parse_error__" in data:
        tl.skipped.append(f"{path}: parse error — {data['__parse_error__']}")
        return
    d = str(data.get("date") or path.stem)
    for it in data.get("intake", []) or []:
        if not isinstance(it, dict) or not it.get("name"):
            continue
        item = norm_item(it["name"])
        val, unit = parse_dose(it.get("dose")) or (None, "")
        if it.get("dose") is not None and val is None:
            tl.confirm.append(f"{path}: dose '{it['dose']}' for '{item}' has no recognizable unit")
        count = it.get("count_taken")
        if val is not None:
            tl.add_med(d, item, val, unit, path.name, it.get("taken"))
        if isinstance(count, (int, float)):
            tl.add_med(d, f"{item}#count", count, "count", path.name, it.get("taken"))


def ingest_reference(tl: Timeline, path: Path):
    data = load_yaml(path)
    if "__parse_error__" in data:
        tl.skipped.append(f"{path}: parse error")
        return
    for reg in data.get("regimen", []) or []:
        if not isinstance(reg, dict):
            continue
        item = norm_item(reg.get("name", ""))
        for t in reg.get("titration", []) or []:
            if not isinstance(t, dict):
                continue
            val, unit = parse_dose(t.get("dose")) or (None, "")
            if val is not None:
                tl.dose_changes.append({"item": item, "value": val, "unit": unit,
                                        "from": str(t.get("from")), "to": str(t.get("to")),
                                        "src": path.name})


def ingest_csv(tl: Timeline, path: Path):
    with path.open() as fh:
        for row in csv.DictReader(fh):
            d = (row.get("date") or "").strip()
            for col, v in row.items():
                if col in ("date", "day", "notes") or v in (None, ""):
                    continue
                unit = "count"
                cm = re.search(r"_(mg|iu|ui)$", col)
                if cm:
                    unit = cm.group(1)
                if re.fullmatch(r"\d+(\.\d+)?", str(v).strip()):
                    tl.add_med(d, col, str(v).strip(), unit, path.name)


def ingest_symptoms(tl: Timeline, path: Path):
    data = load_yaml(path)
    if "__parse_error__" in data:
        tl.skipped.append(f"{path}: parse error")
        return
    d = str(data.get("date") or path.stem)
    syms = data.get("symptoms") or {}
    if isinstance(syms, dict):
        for k, v in syms.items():
            if isinstance(v, (int, float, str)) and str(v).lower() != "not_scored":
                tl.symptoms.append({"date": d, "item": norm_item(k), "value": v,
                                    "src": path.name})
            elif isinstance(v, dict):  # nested: capture severity/present/outcome enums
                for kk in ("severity", "present", "outcome", "description"):
                    vv = v.get(kk)
                    if isinstance(vv, (int, float, str)):
                        tl.symptoms.append({"date": d, "item": f"{norm_item(k)}.{kk}",
                                            "value": vv, "src": path.name})
    vit: list[tuple[str, object]] = []
    iter_vitals(data, vit)
    for key, v in vit:
        tl.vitals.append({"date": d, "item": key, "value": v, "src": path.name})


def render_md(tl: Timeline, patient: str, out: Path):
    by_date = defaultdict(list)
    for m in tl.meds:
        by_date[m["date"]].append(
            f"  - {m['item']}: {m['value']} {m['unit']}" + ("" if m["taken"] in (None, True) else " (taken: no)"))
    lines = [
        f"# Own-data timeline — {patient}",
        f"# generated {date.today()} by ops/scripts/own_timeline.py — values only, no interpretation",
        "",
        "## Medication/supplement intake (per day)",
    ]
    for d in sorted(by_date):
        lines.append(f"- {d}")
        lines.extend(by_date[d])
    lines += ["", "## Symptom scores (per day)"]
    sby = defaultdict(list)
    for s in tl.symptoms:
        sby[s["date"]].append(f"  - {s['item']}: {s['value']}")
    for d in sorted(sby):
        lines.append(f"- {d}")
        lines.extend(sby[d])
    lines += ["", "## Vitals seen in notes"]
    for v in tl.vitals:
        lines.append(f"- {v['date']} {v['item']}: {v['value']} ({v['src']})")
    lines += ["", "## Dose changes (from _reference titration)"]
    for dc in sorted(tl.dose_changes, key=lambda x: (x["item"], x["from"])):
        lines.append(f"- {dc['item']}: {dc['value']} {dc['unit']} from {dc['from']} to {dc['to'] or 'open'}")
    lines += ["", "## CONFIRM list (por-confirmar — items to validate)"]
    lines += [f"- {c}" for c in tl.confirm] or ["- (empty)"]
    if tl.skipped:
        lines += ["", "## Skipped (parse errors)"]
        lines += [f"- {s}" for s in tl.skipped]
    out.write_text("\n".join(lines) + "\n")


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    ap.add_argument("--patient", default=None, help="patient dir name (default: all)")
    ap.add_argument("--kind", choices=["all", "meds", "symptoms"], default="all")
    ap.add_argument("--json", action="store_true")
    ap.add_argument("--strict", action="store_true", help="exit 1 if the CONFIRM list is non-empty")
    args = ap.parse_args()

    root = Path("patients")
    patients = [p for p in ([root / args.patient] if args.patient else sorted(root.iterdir()))
                if p.is_dir()]
    if not patients:
        print("own_timeline: no patient dirs found")
        return 0

    for pdir in patients:
        tl = Timeline()
        sr = pdir / "self-reported"
        if args.kind in ("all", "meds"):
            for f in sorted((sr / "medications").glob("*.yaml")) if (sr / "medications").exists() else []:
                if f.name == "_reference.yaml":
                    ingest_reference(tl, f)
                else:
                    ingest_meds_yaml(tl, f)
            csvf = sr / "tracking" / "medication-log.csv"
            if csvf.exists():
                ingest_csv(tl, csvf)
        if args.kind in ("all", "symptoms"):
            for f in sorted((sr / "symptoms").rglob("*.yaml")):
                ingest_symptoms(tl, f)

        if args.json:
            print(json.dumps({
                "patient": pdir.name, "meds": tl.meds, "symptoms": tl.symptoms,
                "vitals": tl.vitals, "dose_changes": tl.dose_changes,
                "confirm": tl.confirm, "skipped": tl.skipped}, default=str, indent=1))
            continue
        out = Path(f"ops/research/own-timeline-{pdir.name}-{date.today():%Y%m%d}.md")
        render_md(tl, pdir.name, out)
        print(f"own_timeline: {pdir.name} — {len(tl.meds)} med rows, {len(tl.symptoms)} symptom rows, "
              f"{len(tl.vitals)} vitals, {len(tl.dose_changes)} titration steps, "
              f"CONFIRM={len(tl.confirm)} → {out}")

    if args.strict:
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
