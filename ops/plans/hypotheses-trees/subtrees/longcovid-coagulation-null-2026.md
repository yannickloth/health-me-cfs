# Hypothesis Subtree: Long-COVID Coagulation Null Result and the Microclot Question

**Origin:** `/integrate-topic https://onlinelibrary.wiley.com/doi/10.1002/hem3.70501`
**Brainstorm file:** `ops/brainstorms/brainstorm-longcovid-coagulation-null-2026-2026-10-26.md`
**Plan file:** `ops/plans/longcovid-coagulation-null-2026-integration-plan.md`
**Date:** 2026-10-26
**Parent topic:** root (standalone invocation)
**Child subtrees:** (none yet)

**Integration decision:** PROCEED — all twelve categories brainstormed. Phase 3 environments
already written before the brainstorm: `oq:fibrinogen-microaggregate-abundance`,
`lim:microclot-quantification-unvalidated`, `oq:microclot-burden-severity-restricted`,
`lim:anticoagulation-no-trial-support`.

**Framing lock carried from Phase 2:** microclot abundance is an `#open-question`, not a claim;
treatment claims weighted toward STIMULATE-ICP and therefore negative; terminology objection
named once; the null placed inside the existing positive claims.

## Nodes

| ID | Title | Env | Cert | mech | tx | expl | math | dx | Status | Children |
|----|-------|-----|------|------|----|------|------|----|--------|----------|
| 12.1 | Cohort-composition mismatch (LC null vs ME/CFS positives) | limitation | 0.50 | 2 | 0 | 5 | 1 | 2 | ✅ | — |
| 1.1 | Composition-not-abundance reconciliation | speculation | 0.35 | 5 | 2 | 4 | 3 | 4 | ✅ | — |
| 10.1 | Positive abundance literature as unblinded artifact | limitation | 0.50 | 1 | 0 | 4 | 0 | 2 | ✅ | — |
| 10.3 | Inflammation/mast-cell, not coagulation, is the lever | — | 0.35 | 3 | 3 | 3 | 0 | 0 | 🚫 | — |
| 10.2 | Mechanism severity-restricted to acute critical illness | speculation | 0.35 | 3 | 0 | 4 | 1 | 2 | ✅ | — |
| 11.2 | Null is narrow — defeats abundance, not composition | open-question | 0.45 | 3 | 1 | 4 | 1 | 1 | ✅ | — |
| 11.3 | Null not yet decisive — one good negative vs several poor positives | open-question | 0.45 | 2 | 0 | 3 | 1 | 1 | ✅ | — |
| 12.3 | Single timepoint, underpowered subgroup, null ≠ absence | open-question | 0.45 | 1 | 0 | 3 | 1 | 1 | ✅ | — |
| 6.2 | Private-pay microclot testing as unvalidated-access harm | warning-env | 0.45 | 1 | 0 | 2 | 0 | 1 | ✅ | — |
| 1.2 | Severity-and-time-gated microaggregates (PEM-triggered) | speculation | 0.30 | 4 | 1 | 4 | 3 | 3 | ✅ | — |
| 8.1 | Sepsis/DIC as positive control, severity-acuteness marker | speculation | 0.35 | 4 | 0 | 3 | 1 | 3 | ✅ | — |
| 11.1 | Full null — which existing claims must be revised | limitation | 0.40 | 1 | 0 | 3 | 0 | 0 | ✅ | — |
| 12.2 | Pre-analytical artifact — frozen samples | open-question | 0.40 | 2 | 0 | 3 | 0 | 1 | ✅ | — |
| 1.3 | Platelet priming without fibrin-pathway activation | speculation | 0.35 | 4 | 1 | 3 | 2 | 3 | ✅ | — |
| 7.2 | Split DAG microclot node into abundance + composition | — | 0.35 | 4 | 0 | 2 | 5 | 2 | 🚫 | — |
| 7.1 | Severity-gated time-dependent microaggregate ODE | — | 0.30 | 3 | 0 | 2 | 5 | 1 | 🚫 | — |
| 9.1 | Fibrinogen-PTM signature biomarker | speculation | 0.30 | 4 | 1 | 3 | 1 | 5 | ✅ | — |
| 3.2 | Famotidine + loratadine — mast-cell redirect | open-question | 0.25 | 2 | 2 | 1 | 0 | 0 | ✅ | — |
| 9.2 | Peri-exertional microaggregate delta as crash biomarker | speculation | 0.25 | 3 | 0 | 3 | 1 | 4 | ✅ | — |
| 3.1 | Colchicine — anti-inflammatory + anti-amyloid | open-question | 0.20 | 2 | 2 | 1 | 0 | 0 | ✅ | — |
| 5.1 | Compression + leg elevation for venous stasis | — | 0.20 | 2 | 1 | 1 | 0 | 0 | 🚫 | — |
| 4.1 | NAC + vitamin C targeting fibrinogen oxidation | open-question | 0.15 | 2 | 1 | 1 | 0 | 0 | ↩️ | — |
| 6.1 | Antihistamine combo as accessible lever | open-question | 0.15 | 1 | 2 | 0 | 0 | 0 | ↩️ | — |
| 4.2 | Fibrinolytic enzymes (nattokinase/lumbrokinase) | open-question | 0.05 | 1 | 0 | 1 | 0 | 0 | ↩️ | — |
| 2.1 | Calibrated blinded cross-validation (decisive experiment) | prediction | n/a | 3 | 0 | 2 | 0 | 5 | ✅ | — |
| 2.2 | Peri-exertional serial microaggregate sampling | prediction | n/a | 3 | 0 | 3 | 1 | 4 | ✅ | — |

## Tier derivation

| Tier | Rule | Nodes |
|---|---|---|
| 1 | cert ≥0.45 OR any usefulness ≥3 | 1.1, 1.2, 1.3, 2.1, 2.2, 6.2, 7.1, 7.2, 8.1, 9.1, 9.2, 10.1, 10.2, 10.3, 11.1, 11.2, 11.3, 12.1, 12.2, 12.3 |
| 2 | cert 0.20–0.44 and max usefulness ≤2 | 3.1, 3.2, 5.1 |
| 3 | cert <0.20 and max usefulness ≤2 | 4.1, 4.2, 6.1 (tree only, `↩️`) |

Nodes 4.1, 4.2 and 6.1 fall to Tier 3 and are recorded here only; they are not added to
chapter text this cycle. Node 4.2 is a deliberate *negative* entry — the null result argues
against fibrinolytic enzymes and the node exists to steer patients away from them.

## Notes on scoring

- `expl` 5 on node 12.1 is the highest score in the subtree: the cohort mismatch (never-hospitalized
  Long COVID versus mixed ME/CFS cohorts) explains why the null and the positives can both be
  correct, which no other single fact in this evidence base does.
- `math` 5 on nodes 7.1 and 7.2: both propose concrete formal-model changes (a severity-gated
  formation-minus-clearance term; a split of one DAG node into abundance and composition edges
  carrying opposite certainty).
- `dx` 5 on node 9.1: a fibrinogen post-translational-modification signature is the only candidate
  biomarker in this subtree that survives the abundance null, because it does not require the
  particles to be more numerous.
- `tx` is 0 for every node that proposes no intervention, and never exceeds 3. No node in this
  subtree reaches a treatment recommendation, by design: the driving evidence is a negative trial.

## Promotion candidates (Phase 5 gate)

- Node 3.1 (colchicine) and node 3.2 (famotidine-loratadine) are Tier 2 drug ideas and require the
  Instruction H drug-interaction pre-check before integration. Both rest on nominal, non-durable
  signals from a single open-label trial.
- Node 5.1 (compression + leg elevation) is Tier 2, non-pharmacological, and needs no interaction
  check.

## Phase 5 outcome — node to environment mapping

19 nodes integrated, 4 skipped with reason, 3 tree-only. Several nodes were merged into one
environment rather than each getting its own; the merge is recorded here so the count is
auditable.

| Node(s) | Landed as | Note |
|---|---|---|
| 12.1 | `lim:cohort-mismatch-lc-versus-mecfs` | direct |
| 1.1 | `spec:microclot-composition-not-abundance` | cert 0.40 → 0.35 in Phase 5a |
| 10.1 | `lim:microclot-quantification-unvalidated` | direct |
| 10.2, 8.1 | `spec:microaggregate-acuteness-marker` | merged: both are the acute-phase severity reading |
| 11.2 | `oq:fibrinogen-microaggregate-abundance` (Phase 3) | "null is narrow" is the band-rule argument in that environment |
| 11.3, 12.3, 12.2 | `oq:null-decisiveness-and-design` | merged: design weight, single timepoint, pre-analytical handling |
| 6.2 | `warn:microclot-testing-commercial-harm` | direct |
| 1.2, 9.2, 2.2 | `spec:peri-exertional-microaggregate-spike` | merged: PEM-triggered burden, crash biomarker, serial sampling |
| 1.3 | `spec:platelet-priming-without-fibrin-activation` | direct |
| 9.1 | `spec:microclot-composition-not-abundance` (consequence) | the chemistry panel *is* the biomarker proposal |
| 3.1, 3.2 | `oq:non-anticoagulant-arms-signal` + ch24 `sec:trial-level-null-dissociation` | merged: both arms are one question |
| 11.1 | ch11 aggregator prose + ch20 family-6 status | integrated as prose, not as an environment |
| 2.1 | `oq:fibrinogen-microaggregate-abundance` falsifiable prediction | integrated as the decisive experiment |
| 4.1, 4.2, 6.1 | — | Tier 3, tree only |

### Skipped nodes and why

- **10.3 — inflammation/mast-cell, not coagulation, is the lever.** Reassessed 0.50 → 0.35 and
  not integrated. The only support is the nominal colchicine and famotidine-loratadine signals
  from STIMULATE-ICP, which are below the trial's own clinically meaningful threshold, do not
  survive the 24-week washout, and come from an open-label design. Promoting "inflammation is
  the lever" from those numbers would overstate them; the weaker negative reading is what
  `oq:non-anticoagulant-arms-signal` records.
- **7.1, 7.2 — formal model changes** (severity-gated ODE term; split the DAG microclot node into
  abundance and composition edges). Both are real, and 7.2 is the cleanest formal expression of
  this cycle's finding, but Part V model integration is a separate pipeline stage and no model
  file is in scope here. Recorded so a future formalization cycle can pick them up.
- **5.1 — compression and leg elevation.** Nothing in this evidence base bears on venous stasis,
  so the node has no support to integrate and no refutation to record.
