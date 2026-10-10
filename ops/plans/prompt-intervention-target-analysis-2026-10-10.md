# Prompt for DeepSeek-4.1-Flash session — Intervention-Target Analysis on the ME/CFS Causal Model

Copy everything between the horizontal rules into the new session.

---

You are working in the repository at `/home/nicky/code/health-me-cfs`, a Nix-hermetic Typst book on ME/CFS with formal causal models. Your task: convert the existing causal model into a prioritized intervention-target report. You produce ONE new file. You do not edit any existing file.

## Hard rules (non-negotiable)

1. NEVER fabricate a citation, paper, number, node, edge, or file path. If you cannot find it in the repo, write "NOT FOUND" and move on.
2. Read-only on everything under `src/`, `models/`, `patients/`, `contents/`. You may create exactly ONE new file: `ops/research/intervention-target-analysis-2026-10-10.md`. You may create scratch scripts only under `/tmp/`.
3. Every claim in your report that comes from the book must carry a source pointer: file path + section/chapter (e.g. `ch50, sec on PDH inhibition` or `models/dag/ne-deficit-axis/ne-deficit-axis.yaml, node BH4`).
4. Certainty values are ordinal bands: Low 0.2–0.4, Medium 0.5–0.7, High 0.8–1.0. Never average or sum them into fake precision; propagate by taking the MINIMUM along a causal chain.
5. Do not run `nix build`. Do not run `git commit`. Do not touch the network.
6. If any phase below cannot be executed with repo data, say so explicitly in the report under a "Limitations" heading instead of filling gaps with speculation.
7. Report style: schematic, tables and lists over prose, short phrases. No filler.

## Context (verify before trusting)

- Formal models (machine-readable, YAML): `models/dag/ne-deficit-axis/ne-deficit-axis.yaml`, `models/epc/pem-cascade/pem-cascade.yaml`. Check `models/` for others; the set may have grown.
- Part V modeling chapters: `src/main/typst/mecfs/part5-modeling/` — especially `ch55-predictive-applications/` which already contains `sec-08-global-sensitivity-analysis-and-drug-target-ranking`, `sec-09-network-controllability-and-minimum-intervention-sets`, `sec-10-model-predicted-treatment-candidates`. READ THESE FIRST. Your job is to extend and cross-reference, not duplicate.
- Pathophysiology: `src/main/typst/mecfs/part2-pathophysiology/` (ch07–ch21). Note especially `ch19-causal-hierarchy` and `ch20-universal-mechanisms`.
- Treatments: `src/main/typst/mecfs/part3-treatment/` (ch22–ch34). Note `ch22-mechanism-treatment-map`, `ch30-medications-systems`, `ch31-supplements-nutraceuticals`, `ch33-emerging-therapies`.
- Hypothesis registry: `src/main/typst/mecfs/part4-research/hypothesis-registry.typ`.
- Proposed studies: `src/main/typst/mecfs/part4-research/ch47-proposed-studies/`.
- Patient case data: `patients/` (six cases: aeiuno, amy-cordy, marie, sven, ursula, yannick).

## Phase 0 — Inventory (write into report section "0. Existing coverage")

List what ch55 sec-08/09/10 already conclude: which drug targets are already ranked, which intervention sets are already proposed. Everything you produce later must be marked OVERLAP (already in ch55) or NEW.

## Phase 1 — Node and edge inventory (report section "1. Model inventory")

1. Parse every `*.yaml` under `models/`. Write a Python script under `/tmp/` (PyYAML is available; verify with `python3 -c "import yaml"`) that extracts: node id, label, compartment, certainty, edges with direction.
2. Supplement from the Typst sources: grep `src/main/typst/mecfs/part5-modeling/` and `part2-pathophysiology/ch19-causal-hierarchy/` for causal nodes not present in the YAML files. List them separately as "prose-only nodes (not yet formalized)".
3. Output: one table. Columns: node id | label | compartment | certainty | source | formalized (YAML/prose).

## Phase 2 — Intervention map (report section "2. Intervention map")

For every YAML node, determine whether Part III contains an intervention that moves that node in the therapeutic direction. Method: search `src/main/typst/mecfs/part3-treatment/` with `rg -i` for the node's biological keywords (e.g. for node `BH4`: "BH4", "tetrahydrobiopterin", "sapropterin"; for `NE_deficit`: "norepinephrine", "reboxetine", "atomoxetine", "duloxetine", "methylphenidate"). Classify each node:

- `EXISTS-SAFE`: intervention discussed in Part III with acceptable safety profile for ME/CFS (check ch23/ch30 for PEM-risk warnings; any intervention that increases exertion tolerance without fixing upstream metabolism is a PEM HAZARD, not safe).
- `EXISTS-RISKY`: exists but flagged unsafe, contraindicated, or PEM-triggering in the text.
- `EXISTS-UNTESTED`: plausible intervention mentioned but only in ch33-emerging-therapies or hypothesis environments.
- `NONE`: no intervention found anywhere in Part III.

Output: table. Columns: node id | class | intervention name(s) | source (chapter/section) | PEM-hazard flag (yes/no).

## Phase 3 — Leverage ranking (report section "3. Leverage ranking")

1. Extend your `/tmp/` script: build the directed graph from the YAML edges. For each node, compute the set of downstream-reachable terminal symptom nodes. Terminal symptom nodes to use (match by label, case-insensitive, substring match allowed): PEM / post-exertional malaise, cognitive dysfunction / brain fog, orthostatic intolerance, pain, sleep dysfunction, fatigue. If a YAML model has no edges to these, note it and rank within that model's own terminal nodes.
2. Leverage score per node = count of distinct reachable terminal symptom nodes, tie-broken by node certainty (higher certainty first), then by upstream position (fewer ancestors first).
3. Propagation guard: for each node, also record the minimum certainty along its strongest path to each symptom (chain-min rule from rule 4). A high-leverage node reachable only through Low-certainty edges must be flagged `LOW-CONFIDENCE PATH`.
4. Output: ranked table. Columns: rank | node | reachable symptoms (n + names) | node certainty | min path certainty | confidence flag.

## Phase 4 — The two lists (report section "4. Action lists")

Join Phase 2 and Phase 3 on node id. Produce:

- **List A — Trial candidates**: top 10 nodes by leverage with class EXISTS-SAFE or EXISTS-UNTESTED. For each: intervention, target node, expected downstream symptoms affected, certainty chain, OVERLAP/NEW vs ch55.
- **List B — Research gaps**: top 10 nodes by leverage with class NONE or only EXISTS-RISKY. For each: why no intervention exists (per the text), what kind of molecule/therapy would be needed, OVERLAP/NEW vs ch47-proposed-studies.

For every entry in both lists, add a falsifiable prediction: the cheapest measurable observation that would kill the idea (e.g. "if CSF NE normalizes but cognition does not improve within 4 weeks on reboxetine, the NE→cognition edge is wrong or insufficient"). Each prediction needs: measurement, timeframe, kill criterion.

## Phase 5 — Patient cross-check (report section "5. Patient applicability")

Skim each `patients/<name>/` directory (read index/README/summary files first; do not read every file). For each List A entry, mark which of the six patients show evidence in their case data of the target node's pathway being active (e.g. hyperadrenergic POTS → NE-axis nodes relevant). Table: intervention | patient | supporting evidence in case file | contraindication flags. If a patient's directory has no usable summary, write "case data not assessable" for that row — do not infer.

## Phase 6 — Write the report

Write `ops/research/intervention-target-analysis-2026-10-10.md` with sections 0–5 exactly as above, plus:

- Header: date, one-paragraph purpose, method summary (5 lines max).
- Section "6. Limitations": every place you hit missing data, prose-only formalization gaps, or certainty chains too weak to act on.
- Section "7. Recommended next step for a human": the single highest-value entry from List A and the single highest-value entry from List B, with one sentence each on why.

## Verification before finishing

1. `python3 /tmp/<your-script>` runs without error and its output matches the tables in the report.
2. `git status --short` shows exactly ONE new file: the report. Nothing else modified. If anything else changed, revert it.
3. Re-read the report once: every table row has a source pointer or an explicit NOT FOUND. Remove any row that does not.

Final message back: report path, counts (nodes inventoried, List A entries, List B entries, OVERLAP vs NEW split), and the two recommended next steps from section 7. Nothing else.

---
