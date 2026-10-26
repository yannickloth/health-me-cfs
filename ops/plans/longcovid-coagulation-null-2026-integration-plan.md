# Integration Plan: Long-COVID Coagulation Null Result — HemaSphere 2026

**Slug:** `longcovid-coagulation-null-2026`
**Driving paper:** Fraser E, Ng K, Hasan N, et al. "No evidence of hypercoagulability, altered fibrinolysis, or increased fibrin(ogen) microaggregates in never-hospitalized long COVID." *HemaSphere* 2026;10(10). DOI: 10.1002/hem3.70501. CC-BY.
**Origin:** standalone `/integrate-topic` (user-supplied DOI), 2026-10-26.

## Purpose

The paper reports a null result for the microclot / hypercoagulability hypothesis in never-hospitalized long COVID. The book currently states a prothrombotic, procoagulant state in ME/CFS (ch11 sec-05) and treats fibrin microclots as an established Long-COVID-to-ME/CFS extension. A well-powered negative study is contradicting evidence at the same mechanism node, so evidence-visibility symmetry requires it to appear in the published text — either as a constraint on the existing claim or as an `#open-question`/`#limitation`.

## Target chapters

- ch11 sec-05 coagulation and rheological abnormalities (primary: `subsec-05-hypercoagulability`, `subsec-05-fibrin-deposition-and-microclot-biology`)
- ch20 sec-06 family-6 coagulation/haematological (biomarker-family status)
- ch16 comparative nosology (Long COVID vs ME/CFS divergence, if the contrast is diagnostic)
- ch11 sec-09 summary integrated cardiovascular model (only if the null changes the integrated model)

## Pre-identified hypotheses

- H1: Hypercoagulability is not a universal feature of post-acute sequelae; it may be severity/hospitalization-dependent or assay-dependent. (preliminary certainty ~0.35)
- H2: Fibrin(ogen) microaggregate burden is not elevated in ambulatory long COVID measured by the specific assay used. (preliminary ~0.35)
- H3: The ME/CFS microclot findings (Nunes 2022, Pretorius/Kell) are not contradicted because the populations and assays differ. (preliminary ~0.30)
- H4: Coagulation abnormality, if present, is a downstream amplifier in a subset rather than a core mechanism. (preliminary ~0.30)

## Tracking table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 0 | Driving paper: null hypercoagulability / fibrinolysis / microaggregate result in never-hospitalized LC | prospective cohort | 0.51 | 🔄 in progress | Phase 2 PROCEED; open-question framing |
| H1 | Hypercoagulability not universal; severity/assay dependent | prospective cohort | ~0.35 | ⬜ pending | Phase 4/5 |
| H2 | Microaggregate burden not elevated by this assay | prospective cohort | ~0.35 | ⬜ pending | Phase 4/5 |
| H3 | ME/CFS microclot findings not contradicted (population/assay differ) | prospective cohort | ~0.30 | ⬜ pending | Phase 4/5 |
| H4 | Coagulation as downstream amplifier in a subset | prospective cohort | ~0.30 | ⬜ pending | Phase 4/5 |
| B1.1 | Composition-not-abundance reconciliation | T1 | 0.35 | ✅ integrated | `spec:microclot-composition-not-abundance`; 0.40→0.35 in Phase 5a (Booyens fibrinogen signal is LC-IOH-dominant) |
| B1.2 | Severity-and-time-gated microaggregates (PEM-triggered) | T1 | 0.30 | ✅ integrated | merged into `spec:peri-exertional-microaggregate-spike` |
| B1.3 | Platelet priming without fibrin-pathway activation | T1 | 0.35 | ✅ integrated | `spec:platelet-priming-without-fibrin-activation` |
| B2.1 | Calibrated blinded cross-validation (decisive experiment) | T1 | n/a | ✅ integrated | the falsifiable prediction inside `oq:fibrinogen-microaggregate-abundance` |
| B2.2 | Peri-exertional serial microaggregate sampling | T1 | n/a | ✅ integrated | the falsifiable prediction inside `spec:peri-exertional-microaggregate-spike` |
| B3.1 | Colchicine — anti-inflammatory + anti-amyloid | T1 | 0.20 | ✅ integrated | `oq:non-anticoagulant-arms-signal` + ch24 `sec:trial-level-null-dissociation` |
| B3.2 | Famotidine + loratadine — mast-cell redirect | T1 | 0.25 | ✅ integrated | same environments as B3.1 |
| B4.1 | NAC + vitamin C targeting fibrinogen oxidation | T3 | 0.15 | ↩️ tree-only | Tier 3 — available for future cycles |
| B4.2 | Fibrinolytic enzymes (nattokinase/lumbrokinase) | T3 | 0.05 | ↩️ tree-only | Tier 3 — deliberate NEGATIVE entry; steers away from enzymes |
| B5.1 | Compression + leg elevation for venous stasis | T2 | 0.20 | 🚫 skipped | no evidence in this cycle bears on venous stasis |
| B6.1 | Antihistamine combo as accessible lever | T3 | 0.15 | ↩️ tree-only | Tier 3 — available for future cycles |
| B6.2 | Private-pay microclot testing as access harm | T1 | 0.45 | ✅ integrated | `warn:microclot-testing-commercial-harm` |
| B7.1 | Severity-gated time-dependent microaggregate ODE | T2 | 0.30 | 🚫 skipped | formal-model integration is a separate pipeline stage |
| B7.2 | Split DAG microclot node into abundance + composition | T1 | 0.35 | 🚫 skipped | formal-model integration is a separate pipeline stage; recorded for a future formalization cycle |
| B8.1 | Sepsis/DIC as positive control, severity-acuteness marker | T1 | 0.35 | ✅ integrated | merged into `spec:microaggregate-acuteness-marker` |
| B9.1 | Fibrinogen-PTM signature biomarker | T1 | 0.30 | ✅ integrated | consequence paragraph of `spec:microclot-composition-not-abundance` |
| B9.2 | Peri-exertional microaggregate delta as crash biomarker | T1 | 0.25 | ✅ integrated | merged into `spec:peri-exertional-microaggregate-spike` |
| B10.1 | Positive abundance literature as unblinded artifact | T1 | 0.50 | ✅ integrated | `lim:microclot-quantification-unvalidated` |
| B10.2 | Mechanism severity-restricted to acute critical illness | T1 | 0.35 | ✅ integrated | merged into `spec:microaggregate-acuteness-marker` |
| B10.3 | Inflammation/mast-cell, not coagulation, is the lever | T1 | 0.35 | 🚫 skipped | reassessed 0.50→0.35; nominal, non-durable, open-label signals do not support it. Negative reading recorded in `oq:non-anticoagulant-arms-signal` |
| B11.1 | Full null — which existing claims must be revised | T1 | 0.40 | ✅ integrated | ch11 aggregator prose + ch20 family-6 status |
| B11.2 | Null is narrow — defeats abundance, not composition | T1 | 0.45 | ✅ integrated | band-rule argument in `oq:fibrinogen-microaggregate-abundance` |
| B11.3 | Null not yet decisive — one good negative vs several poor positives | T1 | 0.45 | ✅ integrated | `oq:null-decisiveness-and-design` |
| B12.1 | Cohort-composition mismatch (LC null vs ME/CFS positives) | T1 | 0.50 | ✅ integrated | `lim:cohort-mismatch-lc-versus-mecfs` |
| B12.2 | Pre-analytical artifact — frozen samples | T1 | 0.40 | ✅ integrated | merged into `oq:null-decisiveness-and-design` and the Booyens caveat in `spec:microclot-composition-not-abundance` |
| B12.3 | Single timepoint, underpowered subgroup, null ≠ absence | T1 | 0.45 | ✅ integrated | merged into `oq:null-decisiveness-and-design` |

*Tier column is provisional, derived from brainstorm certainty only. Final tier is assigned in Phase 5 triage after Phase 4a usefulness scoring (Tier 1 = cert ≥0.45 OR any usefulness ≥3; Tier 2 = cert 0.20–0.44 and max usefulness ≤2; Tier 3 = cert <0.20 and max usefulness ≤2). Rows B2.1 and B2.2 are research proposals with no chapter environment, so they carry `research` instead of a tier.*

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|

## Notes

- Related plan: `ops/plans/microclot-thromboelastography-mecfs-2026-integration-plan.md` (positive-direction TEG/microclot article, decision PENDING). This cycle is the contradicting-evidence counterpart; cross-reference, do not merge.
- Existing positive-direction content: `ch11/sec-05/subsec-05-hypercoagulability` (Nunes 2022 TEG + microclots, Nunes 2024 proteomics, Heng 2025), `subsec-05-fibrin-deposition-and-microclot-biology` (Kruger 2022, Nunes 2023 review).
- Visibility-symmetry obligation: if the null is integrated, the existing positive claims must carry the contradiction inline, not only in a report.
- `registry/scrape-registry.md` has no entry for this DOI (checked 2026-10-26); Wiley returns HTTP 403 to plain fetch — BrowserOS neo or PMC may be needed for the PDF.

## Phase tracking

| Phase | State | One-line outcome |
|---|---|---|
| 0 | RAN | this plan file |
| 1 | RAN | search log, 8 new bib keys, Appendix H section, 8/10 PDFs filed |
| 2 | RAN | synthesis, 3 contradictions, PROCEED, Active Caps |
| 3 | RAN | 4 environments, 2 aggregators, ch20 family-6, 4 registry rows |
| 3a | RAN | `typst compile` exit 0 |
| 3b | RAN | safety gate: 4 gated, 0 blocked, 3 warnings |
| 3.5 | RAN | `*Consequence:*` present in all 4 |
| 4 | RAN | brainstorm, 26 ideas, all 12 categories |
| 4a | RAN | subtree, 26 nodes, tier derivation |
| 5 | RAN | 8 environments, 8 registry rows |
| 5d | LEGIT-SKIP | no anticoagulant entry exists in ch30; triage table recorded |
| 5c | RAN | ch24 `sec:trial-level-null-dissociation` |
| 5b | RAN | `typst compile` exit 0 |
| 5a | RAN | 42 fragments, 0 drift, 16 findings resolved |
| 5z | RAN | 14 glossary entries × 5 languages; parity 20/20 |
| 6 | RAN | 16 edit sites, 0 bumps, 2 removals recorded |
| 7 | RAN | 38 pairs, 0 bumps, 0 reductions, 3 tensions |
| 8 | RAN | `nix build` exit 0; 67 files staged by explicit path |
| 9 | RAN | net certainty 0.00; 8 falsifiable; flags NONE |
| 10 | RAN | 7 inconsistencies, 6 fixed, 1 deferred; `tmp/coherence-audit-…` |
| 10a | RAN | `@syn:longcovid-coagulation-null-2026-model`, 13 envs condensed, registry row |
| 10b | RAN | no framing propagation needed (0 coagulation terms in abstract/reading guide) |
| 11 | RAN | FULL tier: 11a 2 rounds, 11b 2 passes (0 HIGH), 11c 2 rounds — CONVERGED |

## Phase 1 record

- **Papers found:** 10 included (613 unique records screened, 12 framing queries F1–F9 + Q10–Q12).
- **Bib entries added:** 7 to `src/main/typst/mecfs/bib/vascular.bib`
  (`Fraser2026LCcoagulation`, `Pretorius2021LCantiplasmin`,
  `Pretorius2022LCmicroclotPrevalence`, `Turner2023FlowCytometry`,
  `Booyens2026POTSPTM`, `Schofield2024microclotsDIC`, `Cochrane2023Plasmapheresis`,
  `StimulateICP2026rivaroxaban`). Two papers already existed and were reused, not
  duplicated: `NunesPlatelets2022mecfs`, `Saleem2026MicroclotProfiling`.
- **Annotated bibliography:** new section `sec:bib-longcovid-coagulation-null` in
  `appendices/appendix-h-annotated-bibliography.typ` (8 entries; Saleem 2026 is annotated
  earlier in the appendix and is not duplicated).
- **PDFs filed:** 8 of 10 as publisher PDFs via the PMC OA S3 mirror
  (`pmc-oa-opendata.s3.amazonaws.com/PMC<id>.1/PMC<id>.1.pdf`). PDF unavailable and
  recorded per paper: `Saleem2026MicroclotProfiling`, `StimulateICP2026rivaroxaban`
  (both not open access).
- **Search log:** `ops/research/search-log-longcovid-coagulation-null-2026-2026-10-26.md`.
- **Scrape registry:** updated with the 11 source URLs.
- **New tool:** `ops/scripts/jats_to_pdf.py` (JATS full text → Typst → PDF), created when
  the publisher PDF routes were blocked. Retained as the fallback for future cycles.

## Phase 2 record

- **Synthesis:** `tmp/synthesis-longcovid-coagulation-null-2026-2026-10-26.md`.
- **Verdict:** PROCEED. 8 papers ≥0.40, 3 papers ≥0.60, 0% below 0.40, evidence not
  uniformly null.
- **Contradictions:** C1 microclot abundance (band rule → `#open-question`);
  C2 treatment implication (weighted toward the trial, no recommendation);
  C3 terminology "microclots" vs amyloid fibrin(ogen) aggregates (name once, use the
  descriptive term).
- **Clinical relevance:** HIGH (negative). Removes anticoagulation and apheresis from
  the justified-option list; removes microclot burden from the candidate-biomarker list.
- **Decision auditability:** PRISMA-lite complete, with the truncated-idlist coverage
  caveat recorded.
- **Standing epistemic checklist:** #1 ✓ / #2 ✓ / #3 ✓ / #4 ⚠ / #5 ✓ / #6 ⚠ / #7 ⚠.

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

## Decision

**PROCEED** (Phase 2, 2026-10-26). Framing locked: microclot abundance presented as
`#open-question` (band rule); treatment claims weighted toward STIMULATE-ICP and
therefore negative; terminology objection named once; the null result placed inside the
existing positive claims in ch11 sec-05, not only in a separate section.

## Phase 4 record

- **Brainstorm:** `ops/brainstorms/brainstorm-longcovid-coagulation-null-2026-2026-10-26.md`
  — 26 ideas, all twelve categories (mandatory 10–12 carry 9 ideas).
- **Top-ranked:** 1.1 composition-not-abundance (0.50); 10.3 inflammation/mast-cell rather than
  coagulation is the lever (0.50); 11.1 full-null revision list (0.40).
- **Discipline check:** no anticoagulation, fibrinolytic or plasmapheresis proposal appears as a
  positive idea. Idea 4.2 is the deliberate negative entry.
- **Plan rows:** 26 added to the tracking table as B1.1–B12.3, all `⬜ pending`.
- **Subtree:** `ops/plans/hypotheses-trees/subtrees/longcovid-coagulation-null-2026.md` — 26 nodes,
  tier derivation recorded, 3 nodes (4.1, 4.2, 6.1) fall to Tier 3 and stay tree-only.

## Phase 3 record

- **Environments created:** 4, in canonical typed subdirs.
  - `oq:fibrinogen-microaggregate-abundance` (ch11, `subsec-05-hypercoagulability/open-questions/`)
  - `lim:microclot-quantification-unvalidated` (ch11, `subsec-05-hypercoagulability/warnings/`)
  - `oq:microclot-burden-severity-restricted` (ch11, `subsec-05-fibrin-deposition-and-microclot-biology/open-questions/`)
  - `lim:anticoagulation-no-trial-support` (ch11, `subsec-05-fibrin-deposition-and-microclot-biology/warnings/`)
- **Prose edits:** both ch11 subsection aggregators (opening claim softened; new "Where the
  procoagulant account is contradicted" block; stale "no controlled trial data exist" line
  corrected against STIMULATE-ICP; composition-not-abundance paragraph; severity-gradient
  paragraph). `ch20/sec-06-family-6` microclot bullet, evidence status and severity line updated.
- **Fragments:** `ops/research/fragments-longcovid-coagulation-null-2026-2026-10-26.md` — 34
  quantitative fragments verified against the filed PDFs/abstracts.
- **Registry:** 4 rows in `part4-research/hypothesis-registry.typ` under
  `= Entries added 2026-10-26: Long-COVID coagulation null result and the microclot evidence base`.
- **Build:** `typst compile` exit 0 after Phase 3 and again after Phase 3.5.

## Phase 5 record

- **Environments created:** 8, all in canonical typed subdirs, all carrying
  `(Origin: brainstorm.)`.
  - `subsec-05-fibrin-deposition-and-microclot-biology/speculations/`:
    `spec:microclot-composition-not-abundance` (0.35 after Phase 5a),
    `spec:platelet-priming-without-fibrin-activation` (0.35),
    `spec:microaggregate-acuteness-marker` (0.35),
    `spec:peri-exertional-microaggregate-spike` (0.30).
  - `subsec-05-hypercoagulability/`:
    `oq:null-decisiveness-and-design`, `lim:cohort-mismatch-lc-versus-mecfs`,
    `warn:microclot-testing-commercial-harm`, `oq:non-anticoagulant-arms-signal`.
- **Registry:** 8 rows appended under
  `= Entries added 2026-10-26 (Phase 5): Long-COVID coagulation null research directions`.

### Phase 5d — Pathway-to-drug / ch30 cascade: LEGIT-SKIP

**Condition that fired:** the cycle introduces no drug-intervention mechanism. Phase 5's
environments concern assay validity, cohort scope, abundance-vs-composition, platelet
priming, and acuteness. No new cascade node is created, so the ch30 cascade section and the
`sec-12` / `sec-09` / `sec-13` integration steps have nothing to integrate.

**Verification performed (not assumed):** searched ch30
(`part3-treatment/ch30-*`) for every drug class implicated by this cycle —
anticoagulants, antiplatelets, fibrinolytic enzymes, colchicine, famotidine, loratadine,
plasmapheresis. **No anticoagulant or antiplatelet drug entry exists in ch30**, so there is
no existing drug entry to cross-reference and no cascade trace to write. Consequently
`ops/integration-guides/pathway-drug-trace-longcovid-coagulation-null-2026.md` is **not
created**; creating it would invent a cascade that the evidence does not support.

**ch30 triage table (Phase 5, per-idea):**

| Tier | Count | Ideas |
|---|---|---|
| Full cascade (new ch30 section) | 0 | — |
| Cascade trace (`ops/`) | 0 | — |
| Drug-indexed (existing drug entry only) | 1 | `oq:non-anticoagulant-arms-signal` — routed to Phase 5c instead, because the colchicine and famotidine-loratadine arms are medication-response material, not a mechanism cascade |
| Citation cross-ref only | 2 | `spec:microclot-composition-not-abundance`, `spec:platelet-priming-without-fibrin-activation` — both name a drug class as a *future test*, with no ch30 target to attach to |
| None | 9 | the remaining nine environments |

### Phase 5c — Differential analysis

`part3-treatment/ch24-medication-response-reference/sec-05-null-ladder/subsec-trial-level-null-dissociation/`
— ~1,695 words, 7 `====` subsections, label `<sec:trial-level-null-dissociation>`, included
from `sec-05-null-ladder.typ`. Written by `medication-differential-analyst`; rendering
verified. Covers what the rivaroxaban null and the two nominally positive non-anticoagulant
arms do and do not reveal about the underlying mechanism.

### Phase 5b — Build check

`typst compile --root . src/main/typst/mecfs/loth2026-mecfs.typ` → exit 0, re-verified after
Phase 5c, after the `@sec:h2-comparison` cross-reference fix, and after Phase 5a edits.

## Phase 5a record — Falsifiability sweep

**Deviation:** the `falsifiability-auditor` subagent failed with
`Insufficient Balance (request_id: ae229443-1b9d-451f-998f-a2227b526a26)`. The sweep ran
inline in the main session instead. Recorded as a capability deviation, not a waiver.

**Artifact:** `tmp/falsifiability-audit-longcovid-coagulation-null-2026.md`.

- **Environments audited:** 12 (4 from Phase 3, 8 from Phase 5).
- **Gate environments** (`#speculation`, per the Phase 5a gate): 4 of 4 have a specific,
  testable prediction with an explicit refutation condition.
- **Normative/definitional exemptions ruled explicitly:** 4 files carry no falsifiable
  prediction and were ruled exempt *by name* — `lim:microclot-quantification-unvalidated`
  (assay-validity limitation, states its own resolution condition), `lim:anticoagulation-no-trial-support`
  (inference limitation, resolution implicit in "untested in ME/CFS"),
  `lim:cohort-mismatch-lc-versus-mecfs` (scope limitation; a closing-evidence sentence was
  added), `warn:microclot-testing-commercial-harm` (prescriptive warning, empirical premises
  cited).
- **Stage 1 (citation existence):** 9 keys resolved against Europe PMC — 8 new plus
  `NunesPlatelets2022mecfs`. 9 exists / 0 fabricated / 0 unresolvable / 0 unparseable.
  **One pre-existing defect found and fixed:** `Saleem2026MicroclotProfiling` carried DOI
  `10.1097/MBC.0000000000001278`, which resolves to an unrelated 2024 rituximab/acquired von
  Willebrand paper. Corrected to `10.1097/MBC.0000000000001439` in `bib/long-covid.bib` and in
  the rendered Appendix H DOI link, with the author tail corrected to the registry record.
- **Stage 2 (claim vs fragment):** 42 fragments, `fragment_drift.py --strict` → 0 drift,
  0 incongruence, 0 figure mismatch.
  - Ledger converted from markdown-table to the canonical one-line-per-claim format so the
    deterministic gate can parse it (previously parsed 0 rows).
  - `fragment_drift.py` resolver extended to match the cite key against the parent directory
    name, because 216 abstract-only papers stored as `Literature/<cat>/<Key>/abstract.txt`
    resolved to SOURCE_MISSING and escaped verification entirely.
  - Gate caught a reconstructed (non-verbatim) Booyens group-size quote — replaced with the
    verbatim abstract sentence.
- **Findings fixed:** 3 blocking, 9 warning, 4 note. The substantive one:
  `spec:microclot-composition-not-abundance` claimed "extensive ... post-translational
  modifications on fibrinogen" without the group distribution. Booyens reports the fibrinogen
  signal concentrated in Long COVID with initial orthostatic hypotension, while pre-COVID POTS
  — the group closest to a non-COVID post-infectious illness — showed *fewer* fibrinogen
  modifications, and the samples underwent two freeze-thaw cycles that can themselves generate
  PTMs. Certainty lowered 0.40 → 0.35 and the environment now states that the ME/CFS arm is an
  inference from the weakest-supported direction of the source data.
- **Also corrected:** "no control comparison at all" for the 80-patient series (false — Table 3
  carries a control/healthy scoring band, but no quantified comparison) in three environments;
  "one resting sample" (the source says one sample at a single study visit, not "at rest");
  Schofield's DIC odds ratio presented without flagging that its confidence interval runs from
  6.3 to 6721.1; "no efficacy data at all" for fibrinolytic enzymes; "no study reports
  inter-rater agreement" (not stated by Cochrane); "amyloid-resistant" attributed to Nunes
  (resistance is Pretorius 2021); and the peri-exertional prediction stated for ME/CFS generally
  while testable only in mild-to-moderate disease.

## Phase 5z record — Glossary review

**Method:** extracted acronym and capitalised-term candidates from the 16 `.typ` files this
cycle touched, then diffed them case-insensitively against the 1,604 existing keys.

**Result:** 25 candidates, 11 filtered (common English words, hyphenation artifacts such as
`STIMULATE-` and `COVID-to-`, trial names, `ME` as part of ME/CFS), **14 added**. 14 is below
the >20 guard, so no user pause was required.

| Key | Category | Why it is needed |
|---|---|---|
| `Microaggregate` | concept | the object the cycle is about; also carries `microclot` as a synonym, which resolves the terminology objection (C3) in the tooltip itself |
| `Thromboelastography` | method | the TEG result is cited repeatedly; the definition states that it measures clot mechanics, not fibrin turnover |
| `Fibrinolysis` | pathway | used without expansion throughout |
| `Fibrin` | protein | used without expansion; fibre density is a measured variable |
| `Anticoagulant` | medication_class | the class the null result rules out |
| `Rivaroxaban` | medication | named drug with a trial result; `Colchicine`, `Famotidine`, `Loratadine` already existed |
| `Plasmapheresis` | treatment | the intervention with no randomised evidence |
| `Post-translational modification` | concept | the surviving composition hypothesis rests on it |
| `CYP3A4` | enzyme | drug-interaction warning for the colchicine arm |
| `P-selectin` | molecule | soluble form was normal in the null cohort; surface form is the testable variable |
| `PAI-1` | enzyme | measured and normal in the null cohort |
| `Fatigue Assessment Scale` | measurement | primary endpoint of STIMULATE-ICP, with its 4-point threshold |
| `CD40L` | molecule | the one marker that moved and then lost significance after adjustment |
| `Von Willebrand factor` | protein | measured and normal in the null cohort |

**All five language files updated.** The parity test
(`src/test/js/glossary-parity.test.js`) requires every EN key to exist in `de`, `fr`, `es`
and `pt`, so the 14 definitions were translated rather than copied, using each file's
established terminology (`EM/SFC`, `COVID long`/`COVID persistente`/`COVID longa`,
`Mikroaggregat`, `microagrégat`, `microagregado`). 70 entries total.

**Verification:** `node --test src/test/js/glossary-tooltip.test.js
src/test/js/glossary-parity.test.js` → 20 pass, 0 fail. `git diff --stat` → 627 insertions,
0 deletions across the five files. Counts: en/de/es/pt 1,604 → 1,618; fr 1,625 → 1,639.
0 synonym/key collisions.

**Defect caught and fixed:** the first write round-tripped `es` and `pt` through
`indent=2`, but those files use `indent=1`, which produced a 26,197-line whitespace diff.
Both were reverted from git and re-applied format-preserving; the final diff is additive only.

## Phase 6 record — Retrospective adaptation

**Synonym map:** `tmp/synonym-map-longcovid-coagulation-null-2026.md` (12 concepts, 60+ variants).

**Pass A (semantic).** 7 `zg query` calls. The index was stale (70% coverage, 1,820 files
added since indexing); it was queried as-is and **not** rebuilt, because rebuilding a
persistent index requires explicit user authorization. Results returned
`served_from_current_index`, which is sufficient for candidate discovery.

**Pass B (exact).** One `rg` sweep with 22 literal terms over `src/main/typst/mecfs/**/*.typ`:
**156 files** carry at least one hit.

**Budget.** The skill caps examination at 30 matches. 30 candidate files were examined in
full; **126 files were not examined** and are recorded as *sweep truncated — 126 matches
unexamined*. Truncation is not exclusion: the prioritisation order put hypothesis
environments, treatment recommendations, biomarker discussions and drug warnings first, and
Phase 11 review agents can still reach the remainder. Files under `contents/` (legacy LaTeX)
were excluded because they are not built.

**Evidence Quality Floor applied.** No included paper reaches 0.70, so no +0.10 bump was
available. Fraser (0.51), Pretorius 2021 (0.51), Pretorius 2022 (0.47), Turner (0.47),
Booyens (0.47) and Schofield (0.45) permit citation insertion and inline caveats only, with no
certainty change. STIMULATE-ICP and Cochrane (both 0.68) permit full adaptation and at most
one +0.05 bump each, but neither supports a *reinforcing* bump for any pre-existing claim, so
no bump was taken. **Certainty Bump Log remains empty for Phase 6, by rule, not by omission.**

**Safety/inefficacy override applied.** Four pre-existing passages recommended, selected for,
or predicted benefit from anticoagulation or fibrinolysis. All four now carry the trial
result, because an inefficacy signal is surfaced regardless of its own certainty tier:
`ch19` amplifier mechanisms; `ch51` model application guide (the *whom to treat* rule);
`ch51` endothelial model; `ch14i` microclot prediction.

**Removals recorded (Never silently delete).** The ch36 biomarker subsection claimed
"approximately 80% of participants showing platelet hyperactivation" attributed to Nunes
2022. The 80% figure is not in that paper — the paper reports a mean spreading score of
2.72 ± 1.24 against 1.00, PAC-1/CD62P hyperactivation, and roughly half of participants
outside the normal range for R; "over 80%" appears in the paper only in a cited HHV-6 study.
The sentence was rewritten to the verified numbers. File:
`part4-research/ch36-biomarker-research/proteomic-biomarkers/coagulation-and-microclot-biom/coagulation-and-microclot-biom.typ`.
The word "documented" became "reported" in three places (ch11 sec-02, ch14k, ch14h) because
the controlled count did not reproduce excess abundance.

**Adapted files (13 files, 16 edit sites):**

| File | Relation | Action |
|---|---|---|
| `ch36/.../coagulation-and-microclot-biom.typ` | contradiction | corrected misattributed 80% figure; added controlled-null caveat with Fraser + Cochrane + assay limitation |
| `ch36/.../limitation-microclot-hypothesis-replication-pendin.typ` | reinforcement | added Fraser and Cochrane; made explicit that replication is not a formality |
| `ch19/sec-03-amplifier-mechanisms.typ` | contradiction (inefficacy) | caveat that the anticoagulant and fibrinolytic arms are not trial-supported |
| `ch11/sec-02/subsec-02-endothelial-dysfunction.typ` (`spec:hif2a-microclot-vwf`) | contradiction | noted that vWF antigen and aggregate burden were comparable in the controlled cohort |
| `ch51/sec-09/subsec-06-.../` | contradiction (inefficacy) | *whom to treat* markers all failed to separate groups; selection rule demoted to model output |
| `ch51/sec-08/subsec-03-endothelial-dysfunction-model.typ` | contradiction | fibrinolytic prediction qualified against the failed anticoagulant arm |
| `ch25/.../compendium.typ` (Lumbrokinase) | contradiction (inefficacy) | status-of-target paragraph: burden not shown in excess, no controlled efficacy data, bleeding risk |
| `ch25/.../compendium.typ` (factor Xa finding) | reinforcement | rivaroxaban null instantiates the predicted "apixaban fails" branch |
| `ch22/.../subsec-05-map-endothelial.typ` (TPE row) | reinforcement | added Cochrane: no randomised study in post-COVID condition |
| `ch22/.../subsec-05-map-endothelial.typ` (triple anticoagulant row) | reinforcement | added the rivaroxaban failure to an already-cautioned row |
| `ch14i/.../ch14i-clinical-brainstorm.typ` (`hyp:microclot`, `pred:microclot`) | contradiction | abundance qualifier + status paragraph: intervention arm failed, correlation arm untested |
| `ch14k/.../ch14k-vascular-brainstorm.typ` (`hyp:rbc-ps-microclot-nucleation`) | ambiguous | nucleation hypothesis retained; abundance premise flagged as contested |
| `ch24/.../spec-paf-platelet-microclot-modulation.typ` | reinforcement | construct "contested" now cites Fraser and Cochrane |
| `ch33/.../ch33-emerging-therapies.typ` (`spec:microclot-net-dnase`) | ambiguous | anticoagulant resistance supported by the trial; excess burden not supported |
| `ch14h/.../ch14h-trpm3-channelopathy.typ` (`spec:lpa-microclot-trpv1-triangle`) | contradiction | "documented" → "reported" + abundance caveat; D-dimer and anticoagulation components flagged |

**Examined, no action (14 files, reasons):** `ch26/warn-immobility-complications-vte...`
(immobility VTE prophylaxis — a different clinical question from microclot treatment; the
null does not bear on it); `ch26/sec-03-days-two-seven`, `ch27/subsec-06`,
`ch31-supplements`, `ch08` ×3 (anticoagulant mentions are drug-interaction warnings, not
microclot claims); `ch17/ch14d` (fibrin microclot named once inside a complement-POTS list);
`ch17/ch14a`, `ch14b`, `ch14e` (lexical only); `ch11/sec-09` (prospective-cohort prediction,
not an abundance claim); `ch51/subsec-01` and `subsec-02` (model equations — a formalization
choice, not a claim to annotate); `ch55` ×2 (nattokinase already carries certainty 0.07);
`appendix-i` (trial registry entry describes a trial, not an efficacy claim); `ch37` trials
(factual listing).

**Report.**

```
Phase 6 complete: 30 matches examined, 16 adapted
  Reinforcement:  5 edits (0 certainty bumps; all incoming < 0.70)
  Contradiction:  9 edits (0 reductions — every contradicted claim sits below the
                  0.60 floor for numeric reduction; 4 inefficacy overrides applied)
  Ambiguous:      2 edits
  No action:      14 overlaps deferred (P too tangential / different clinical question /
                  formalization rather than claim / already floor-capped)
  Truncated:      126 matches unexamined (156 files hit, 30 examined)
  Skipped:        0
  Synonym map:    tmp/synonym-map-longcovid-coagulation-null-2026.md
```

**Standing epistemic checklist:** #4 ⚠ unchanged (two competing explanations still equally
evidenced, now stated in ch36 as well); #6 ⚠ unchanged; #7 ⚠ unchanged. No new violation.

**Build after Phase 6:** `typst compile` exit 0; all six inserted caveat phrases confirmed in
the rendered text with `pdftotext`.

## Phase 7 record — Cross-hypothesis compatibility

**Artifact:** `tmp/compat-audit-longcovid-coagulation-null-2026-2026-10-26.md` (disposable
scratch, gitignored).

**Execution.** Inline in the main session, as the skill requires. No agent was spawned.

**Registry population.** 405 table rows parsed, **398 unique labels**. Word-boundary matching for
PAI-1, CD40L, von Willebrand factor, fibrinolysis, thrombin and factor Xa returned **zero**
entries. The registry therefore contains exactly **one** pre-existing coagulation hypothesis:
`spec:paf-platelet-microclot-modulation` (ch24, cert 0.30). The topic opens a mechanism space
rather than joining a populated one, so most relationships are internal to the 12 new entries.

**Semantic pass.** 8 `zg query` calls with `--glob '*hypothesis-registry*'`. The index is stale
(`served_from_current_index`; background refresh 5237/7525) and was queried as-is, **not
rebuilt** — rebuilding a persistent index needs explicit user authorization. Retrieval quality on
the coagulation terms was poor: the exemplar query returned glycocalyx mechanosensing, *Babesia*
haptoglobin, skull-border B-cell tolerance, NRF2/HIF-2α and microglial NLRP3. The semantic pass
produced **zero candidates that the literal index did not already contain**. Recorded as an
index-staleness limitation, not as evidence of absence.

**Literal pass.** 68 new↔existing and 59 new↔new candidate pairs. Three further pairs were added
by mechanism knowledge where the registry describes the link without coagulation vocabulary
(TSP-1 as a platelet α-granule protein; the glymphatic entry says "PEM" rather than
"post-exertional"; aggregate burden vs platelet surface activation). 130 pairs considered,
**38 confirmed**, **92 rejected as lexical-only**, **0 unexamined** — far below the 200-pair cap.

**Classes.** 15 reinforcement, 16 feed-into, 3 conflict/tension, 4 independent. No pair first
called independent was reclassified after the upstream-mechanism check.

**Reinforcement chains (longest 3 hops).**

1. `lim:microclot-quantification-unvalidated` → `oq:fibrinogen-microaggregate-abundance` →
   `spec:microclot-composition-not-abundance` → `oq:null-decisiveness-and-design`.
2. `lim:anticoagulation-no-trial-support` → `oq:non-anticoagulant-arms-signal` →
   `oq:h2-autocrine-mast-cell-brake`.
3. `lim:cohort-mismatch-lc-versus-mecfs` → `oq:null-decisiveness-and-design` →
   `warn:microclot-testing-commercial-harm`.
4. `spec:microaggregate-acuteness-marker` → `oq:microclot-burden-severity-restricted` →
   `spec:peri-exertional-microaggregate-spike`.

**Reinforcement cluster:** `{oq:fibrinogen-microaggregate-abundance,
lim:microclot-quantification-unvalidated, oq:null-decisiveness-and-design,
warn:microclot-testing-commercial-harm}` — all four agree that the count cannot currently be used
as evidence or as a test.

**Tensions flagged (no certainty change).**

| # | Pair | Nature | Status |
|---|---|---|---|
| C1 | `spec:paf-platelet-microclot-modulation` ↔ `warn:microclot-testing-commercial-harm` | a drug speculation rests on the construct the warning says cannot carry a treatment decision | resolved in text — Phase 6 already inserted the Fraser and Cochrane caveats into the PAF file |
| C2 | `oq:non-anticoagulant-arms-signal` ↔ `spec:famotidine-gastric-ph-microbiome-histamine` | two mechanisms for the same drug (H2 immune brake vs acid suppression / microbiome) | unresolved; no study discriminates them |
| C3 | `spec:peri-exertional-microaggregate-spike` ↔ `oq:null-decisiveness-and-design` | scope of the null: a resting sample cannot see a post-exertional state | unresolved and productive; it generates the serial-sampling decisive test |

**Certainty adjustments: 0 bumps, 0 reductions.** This is the rule-driven answer, not an
omission:

- The +0.05 convergence rule needs two independent evidence lines. All 12 entries derive from one
  paper set (Fraser, STIMULATE-ICP, Cochrane, Schofield, Booyens, Nunes). One line, not two.
- The +0.05 feed-into rule needs an upstream **hypothesis** at ≥0.50. Every upstream node is an
  `oq`/`lim`/`warn` with certainty **n/a**.
- The −0.05 conflict rule needs a certainty-bearing weaker side. A3's weaker side is 0.30 against
  a limitation with n/a; A6 has no numeric weaker side; C3 is a scope tension between two n/a
  nodes.
- Reinforcement between speculations below 0.30–0.35 never bumps.

Phase 6 also took 0 bumps, so the per-cycle cap (≤1 bump per hypothesis across Phases 6+7) is
untouched and no hypothesis is at risk of the Phase 9 G-UNSUSTAINED-CERTAINTY flag. **Certainty
Bump Log stays empty for Phase 7.**

**Registry update.** One `compat note longcovid-coagulation-null-2026` row appended to the Phase 5
table, matching the format used by every prior cycle. The row deliberately does **not** carry the
`tmp/` audit path, because `ops/AGENTS.md` rule 4 forbids pipeline paths in the published
document; earlier cycles do carry them, which is a pre-existing convention violation not repeated
here.

**Build after Phase 7:** `typst compile` exit 0.

**Report.**

```
Phase 7 complete: 38 pairs audited (12 new↔existing, 26 new↔new)
  Reinforcement:  15 pairs (4 chains built: longest 3 hops)
  Feed-into:      16 pairs
  Conflict:        3 pairs (0 mutually exclusive groups, 3 overlapping tensions C1 C2 C3)
  Independent:     4 pairs (0 reclassified from initial assessment)
  Certainty adjusted: 0 bumps, 0 reductions, 3 tensions flagged (no change)
  Rejected lexical: 92 pairs
  Plan file updated: ops/plans/longcovid-coagulation-null-2026-integration-plan.md
```

**Standing epistemic checklist:** #1 ⚠ one live mechanism competition is now carried by two
entries (C2, famotidine); #4 ⚠ unchanged; #7 ⚠ unchanged. No new violation.

## Phase 8 record — Build verification

**Pre-build staging (mandatory).** 67 files staged by explicit path: 32 `.typ`, 5 glossary
JSON, 2 bib, 3 `ops/` artifacts, 1 registry/scrape file, 10 `Literature/` PDF directories, and the
new scripts. `git add -A` was not used. Nothing under `tmp/` was staged. Verified with
`git status --porcelain`: 0 unstaged, 0 untracked remaining.

**Build.** `nix build` → **exit 0**, no errors. Output `result/loth2026-mecfs.pdf`: 7,045 pages,
44.3 MB. New content confirmed in the rendered text (`pdftotext`): the trial-level null
dissociation heading and the abundance open question are present.

**Citation keys.** Every new key resolves case-exact from the split `bib/*.bib`; the Phase 5a
Europe PMC verification covered 9 keys, and the build resolves all 8 new `vascular.bib` keys plus
the corrected `Saleem2026MicroclotProfiling` DOI.

**Fix iterations:** 0. First build passed.

**Report:** Phase 8 complete: build PASS. Intermediate build checks at Phase 3a: PASS, Phase 5b:
PASS.

## Phase 9 record — Integration quality assessment

**Quality summary appended to:** `tmp/synthesis-longcovid-coagulation-null-2026-2026-10-26.md`
(section 5).

| Metric | Value |
|---|---|
| Net certainty change, Phases 6–7 | **0.00** (Phase 5a reduction 0.40→0.35 sits outside this window) |
| Reinforcement : contradiction ratio (Phase 6) | **5 : 9 = 0.56**; contradictions deferred below the 0.40 floor: **0** |
| New falsifiable predictions | **8** (4 speculations + 4 open questions) |
| Paper length delta, `.typ` only | **+13,504 / −951 = net +12,553 words**; 549 added, 20 deleted lines |
| Tier distribution | **T1 20 · T2 3 · T3 3** (77% Tier 1) |
| Clinical relevance (Phase 2) | **HIGH (negative)** |
| Honesty lint | **85 findings / 32 files; 8 on lines added this cycle** |

**Honesty-lint adjudication.** 1 fixed (Appendix H conclusion now attributes the finding: "the
authors report no laboratory evidence…"), 0 stamped, 7 justified as verbatim titles, inclusion
criteria, population restrictions, a counterfactual antecedent, and trial-scope statements. The
remaining 77 findings are pre-existing content reached by whole-file scanning, not introduced
here.

**Quality flags: NONE.** `BLOAT` does not fire (12 environments and 8 falsifiable predictions
against a 2,000-word gross-addition trigger); `WEAK-EVIDENCE` does not fire (PROCEED, 0% of papers
below 0.40); `CLINICAL-RISK` does not fire (Phase 3b searches done, severity applicability stated
in every treatment-facing environment, colchicine and famotidine interactions named);
`G-UNSUSTAINED-CERTAINTY` does not fire (0 bumps); `HONESTY-LINT` does not fire (all added-line
findings adjudicated). `SLOW-CONVERGENCE` is computed after Phase 11.

**Report:** Phase 9 complete: net certainty 0.00; R:C 5:9 with 0 deferred; 8 falsifiable
predictions; net +12,553 `.typ` words; tiers 20/3/3; clinical relevance HIGH (negative). Honesty
lint: 85 findings, 8 on added lines — 1 fixed, 0 stamped, 7 justified. Quality flags: NONE.

## Phase 10 record — Cross-chapter coherence

**Artifact:** `tmp/coherence-audit-longcovid-coagulation-null-2026-2026-10-26.md`
**Scope:** 32 modified or added `.typ` files — ch11 (2 subsections), ch17 (ch14e, ch14h, ch14i,
ch14k), ch19, ch20, ch22, ch24 (2 files), ch25, ch33, ch36, ch51 (2 files), Appendix H, registry.

| Check | Result |
|---|---|
| 1 Certainty consistency | PASS — 4 new speculations match the registry; 8 `n/a` entries carry no number; ch20 `Probable` agrees with the marker-level reading in ch11 |
| 2 Terminology consistency | PASS after 2 fixes — microclot/microaggregate rule stated once; `long COVID` → `Long COVID` in ch33 |
| 3 Cross-reference web | PASS — `typst compile` exit 0 proves every live reference resolves; 1 inert backticked match is pre-existing |
| 4 Narrative coherence | PASS after 1 fix — 9 treatment sites checked against the current ch11 mechanism text; ch14e carried two stale anticoagulant suggestions |
| 5 Contradiction detection | PASS after 3 fixes — ch11 Nunes 2023 abundance sentence, ch14e ×2 |
| 6 Evidence-to-claim calibration | PASS — nothing new outranks its evidence base; Family 6 stays `Probable` |
| 7 Consequence presence | 13/13 new environments compliant; 4 files with pre-existing environments flagged retrofit-needed (≈196), ledgered |

**Fixes applied (6 fix sites across 5 files, all structural alignment — no new claim, citation, or certainty):**

1. `ch33-emerging-therapies.typ` — `long COVID` → `Long COVID` in book prose.
2. `lim-microclot-quantification-unvalidated.typ` — one paragraph stating the microclot
   (construct) / microaggregate (measured object) usage rule.
3. `subsec-trial-level-null-dissociation.typ` — "Microclot aggregates" → "Microaggregates".
4. `ch14e-2025-research.typ` — two treatment bullets (low-dose aspirin; nattokinase or low-dose
   anticoagulation) now carry the trial caveat and `@lim:anticoagulation-no-trial-support`.
5. `subsec-05-fibrin-deposition-and-microclot-biology.typ` — the Nunes 2023 "significantly above
   healthy controls" sentence now names the contest and links `@oq:fibrinogen-microaggregate-abundance`.

**Deferred:** 1 — the pre-existing backticked `@spec:peripheral-vs-central-autonomic-fork` in
Appendix H (inert text; making it live would break the build because the label exists only as a
registry row).

**Verification:** `typst compile --root .` → exit 0 after the final edit.

**Report:** Phase 10 complete: 12 chapter trees audited, 7 inconsistencies found, 6 fixed, 1
deferred, 0 require user decision. Standing epistemic checklist: no violations.

## Phase 10a record — High-level synthesis

**Trigger:** automatic per the standing default (≥2 environments jointly argue a convergent
point). 13 environments exist this cycle; no user question was asked.

**Artifact:** `#synthesis` environment `@syn:longcovid-coagulation-null-2026-model`, added at the
end of `subsec-05-hypercoagulability/subsec-05-hypercoagulability.typ` — the placement rule for a
single-chapter integration ("after the last environment, before the next major section heading").

**Content:** 6 sentences condensing the 13 environments into one convergent claim. It
cross-references 4 environments (`@oq:fibrinogen-microaggregate-abundance`,
`@lim:microclot-quantification-unvalidated`, `@spec:microclot-composition-not-abundance`,
`@oq:null-decisiveness-and-design`), distinguishes what the evidence supports (marker-level
procoagulant profile; compositional signal) from what remains speculative (composition in ME/CFS;
any severity-restricted abundance), states the central open question, and carries a
`*Consequence:*` field. No new citation and no new certainty.

**Registry:** new table `= Entries added 2026-10-26 (Phase 10a): synthesis` with one row
(`syn longcovid-coagulation-null-2026-model`, `Phase 10a / N/A`).

**Verification:** `typst query "<syn:longcovid-coagulation-null-2026-model>"` returns one figure
with `kind: synthesis`; `typst compile` exit 0.

**Report:** Phase 10a complete: synthesis `@syn:longcovid-coagulation-null-2026-model` added to
ch11, condensing 13 environments into a convergent model. Standing epistemic checklist: no
violations.

## Phase 10b record — Strategic-framing propagation

**Synthesis content type** (decision matrix): *methodological / epistemic constraint* (a null
randomised test plus a replication gap), with a secondary *treatment strategy implication*
(the one clean single-target probe failed).

| Framing layer | Check | Result |
|---|---|---|
| `shared/abstract.typ` | contains no coagulation, microclot, fibrin or anticoagulation term (grep: 0 matches) | nothing to propagate — the abstract makes no claim this cycle constrains |
| `shared/reading-guide.typ` | 0 matches for the same terms | nothing to propagate |
| ch19 causal hierarchy, amplifier inventory | Phase 6 already added the contest inline ("The abundance of that burden is contested… normal D-dimer and PAI-1") | already reflected |
| ch19 root-cause assessments | the coagulation chain is an amplifier, not a root-cause candidate; no assessment to revise | no action |
| ch13 / ch15 unified model | no coagulation arrow is load-bearing in the unified model | no action |
| ch25 sec-12 drug-indexed compendium | Phase 5c/6 already carries the trial status and the burden caveat on the nattokinase and anticoagulant rows | already reflected |

**Outcome:** no framing propagation needed. The synthesis is a constraint on a downstream
mechanism and a negative treatment finding, not a change to the paper's trigger-versus-amplifier
classification, its root-cause ranking, or its clinical strategy headline. Per the procedure this
is a valid outcome, not a skip.

**Report:** Phase 10b complete: 0 framing layers updated (abstract: no, ch19 intro: already
reflected, ch19 root causes: none applicable, reading guide: no, ch13: no). Build: not re-run for
this phase because no file was edited; the Phase 11 build below covers the tree.

## Phase 11 record — Review to convergence

**Artifact:** `tmp/convergence-report-longcovid-coagulation-null-2026-2026-10-26.md`
**Tier: FULL** — multi-chapter, PROCEED, 13 new environments, treatment content.

**Capability deviation (recorded):** the review skills and every subagent are unavailable
(`Insufficient Balance`; probe request_id `ea2d742a-0695-4876-b86f-e9455d27b1ac`). All three
passes ran inline in the main session with separate lenses and separate fix sets. The
same-agent-verification caveat is recorded in the report and cannot be removed without working
subagents. This is a deviation, not a waiver.

| Pass | Rounds | Findings | Fixed | Status |
|---|---|---|---|---|
| 11a content/consistency | 2 | 2 (1 HIGH, 1 LOW) | 2 | CONVERGED |
| 11b adversarial (6 personas) | 2 | 1 MEDIUM, 0 HIGH, 0 CRITICAL | 0 (scope boundary) | CONVERGED |
| 11c Typst structural | 2 | 0 | 0 | CONVERGED |

**11a fixes:** (A1, HIGH) Appendix H said the contradicting cohort "used flow cytometry"; it used
blinded confocal microscopy — corrected against the source PDF. (A2, LOW) ch24 redundancy
rewritten.

**11a consequence audit:** 13/13 new environments compliant; 4 files with ≈196 pre-existing
environments flagged retrofit-candidates (ledgered).

**11b MEDIUM (recorded, not fixed):** no guidance for a patient already taking an anticoagulant.
Withdrawing a prescription is a prescriber decision outside the book's scope; the existing
warnings already say a positive test is not a reason to start.

**Gate C:** does not fire — no finding identified a distinct missing topic.

**Post-convergence:** `SLOW-CONVERGENCE` does not fire (all three passes converged in 2).

**Build:** `nix build` exit 0; `result/loth2026-mecfs.pdf` 7,047 pages. Four fixed strings
confirmed in `pdftotext` output.

**Report:** Phase 11 complete: 11a 2 rounds / 2 findings fixed / CONVERGED; 11b 2 passes / 0
HIGH / 0 CRITICAL / 1 MEDIUM recorded / CONVERGED; 11c 2 rounds / 0 findings / CONVERGED.

## Phase 12 record — Integration summary

**Topic slug:** `longcovid-coagulation-null-2026`
**Decision:** PROCEED (Phase 2). 10 papers included, 8 at ≥0.40, 3 at ≥0.60, 0% below 0.40.
**Driving source:** Fraser E, Ng K, Hasan N, et al. "No evidence of hypercoagulability, altered
fibrinolysis, or increased fibrin(ogen) microaggregates in never-hospitalized long COVID."
_HemaSphere_ 2026;10(10):e70501. DOI 10.1002/hem3.70501. PMID 42903049. PMC13680132. CC-BY.
Integrated — full text obtained from the PMC OA mirror, PDF filed.

**Environments added (13):**

| Label | Type | Location |
|---|---|---|
| `oq:fibrinogen-microaggregate-abundance` | open question | ch11/sec-05/hypercoagulability |
| `lim:microclot-quantification-unvalidated` | limitation | ch11/sec-05/hypercoagulability |
| `oq:null-decisiveness-and-design` | open question | ch11/sec-05/hypercoagulability |
| `lim:cohort-mismatch-lc-versus-mecfs` | limitation | ch11/sec-05/hypercoagulability |
| `warn:microclot-testing-commercial-harm` | warning | ch11/sec-05/hypercoagulability |
| `oq:non-anticoagulant-arms-signal` | open question | ch11/sec-05/hypercoagulability |
| `spec:microclot-composition-not-abundance` | speculation 0.35 | ch11/sec-05/fibrin-deposition |
| `spec:platelet-priming-without-fibrin-activation` | speculation 0.35 | ch11/sec-05/fibrin-deposition |
| `spec:microaggregate-acuteness-marker` | speculation 0.35 | ch11/sec-05/fibrin-deposition |
| `spec:peri-exertional-microaggregate-spike` | speculation 0.30 | ch11/sec-05/fibrin-deposition |
| `oq:microclot-burden-severity-restricted` | open question | ch11/sec-05/fibrin-deposition |
| `lim:anticoagulation-no-trial-support` | limitation | ch11/sec-05/fibrin-deposition |
| `sec:trial-level-null-dissociation` | prose subsection | ch24/sec-05/null-ladder |
| `syn:longcovid-coagulation-null-2026-model` | synthesis | ch11/sec-05/hypercoagulability |

**Chapters touched (12):** ch11 (sec-02 endothelial, sec-05 ×2 subsections), ch17 (ch14e, ch14h,
ch14i, ch14k), ch19 (amplifier mechanisms), ch20 (Family 6), ch22 (Tier-2 endothelial map), ch24
(null ladder), ch25 (sec-12 compendium), ch33 (emerging therapies), ch36 (coagulation biomarker),
ch51 (×2 model sections), Appendix H, hypothesis registry.

**Bib:** 8 new keys (`Fraser2026LCcoagulation`, `Pretorius2021LCantiplasmin`,
`Pretorius2022LCmicroclotPrevalence`, `Turner2023FlowCytometry`, `Booyens2026POTSPTM`,
`Schofield2024microclotsDIC`, `Cochrane2023Plasmapheresis`, `StimulateICP2026rivaroxaban`);
2 keys reused, not duplicated. Appendix H section `sec:bib-longcovid-coagulation-null`.
**Registry:** 13 rows (12 content + 1 synthesis) plus a compatibility note.
**Glossary:** 14 entries × 5 languages (70 total); parity 20/20.

**Key finding:** a well-controlled prospective cohort of 151 never-hospitalised Long COVID
participants found no coagulation abnormality on any prespecified readout, including microaggregate
number, area and fibrin fibre density. The integration keeps the marker-level ME/CFS procoagulant
findings, retires microclot *abundance* as a candidate biomarker, and replaces it with the narrower
compositional claim. The one large randomised test of an anticoagulant in this population
(STIMULATE-ICP, n=778) produced no fatigue benefit, so anticoagulation, fibrinolysis and
apheresis lose their rationale for ME/CFS.

**Why it matters:** the book previously presented microclot burden as a probable mechanism and a
biomarker candidate, and some chapters suggested anticoagulant or fibrinolytic treatment. That
advice was not supported by a controlled trial and is now contradicted by one. The correction is
negative but actionable: it removes a paid test and a bleeding-risk intervention from the
justified-option list.

**Phase 9 quality flags:** NONE. Net certainty change 0.00. R:C 5:9 with 0 contradictions deferred
below the 0.40 floor. 8 new falsifiable predictions. Tier distribution 20/3/3. Clinical relevance
HIGH (negative).

**Provenance note:** the driving source was integrated from full text, not from an anecdote. No
patient anecdote was used in this cycle.

## Phase 12.5 — Phase Ledger (completion gate)

Walked phase by phase. Every row resolves to `RAN`, `LEGIT-SKIP` or `WAIVED`. **0 OMISSION,
0 WAIVED.** Row 13 is recorded immediately after the commit that this gate authorises, because
a commit hash cannot exist before the gate clears.

| Phase | State | Evidence |
|---|---|---|
| 0 | RAN | `ops/plans/longcovid-coagulation-null-2026-integration-plan.md` — purpose, targets, 26-row tracking table, bump log, Active Caps, Decision PROCEED, `## Phase tracking`. |
| 1 | RAN | `ops/research/search-log-longcovid-coagulation-null-2026-2026-10-26.md` (12 queries, 613 screened, 10 included); 8 new bib keys in `bib/vascular.bib`; Appendix H `sec:bib-longcovid-coagulation-null`; 8/10 PDFs filed at `Literature/<category>/<BibKey>/<BibKey>.pdf`; 2 recorded unavailable (`Saleem2026TEGreview`, `StimulateICP2026rivaroxaban`, both not open access); `registry/scrape-registry.md` updated. Deviation: inline after two subagent aborts. |
| 2 | RAN | `tmp/synthesis-longcovid-coagulation-null-2026-2026-10-26.md`; 3 contradictions; gate complete; **PROCEED** with all four threshold conditions; `## Active Caps` in plan. |
| 3 | RAN | 4 environments in canonical typed subdirs + both ch11 subsection aggregators + ch20 Family 6; 4 registry rows. |
| 3a | RAN | `typst compile --root .` exit 0; all 4 titles present in output text. |
| 3b | RAN | `tmp/safety-gate-longcovid-coagulation-null-2026.md` — 4 gated, 0 blocked, 3 warnings; rivaroxaban env ran the full checklist incl. 3 live Europe PMC searches. |
| 3.5 | RAN | `*Consequence:*` present in 4/4 (2 added, 2 normalised); recompiled exit 0. |
| 4 | RAN | `ops/brainstorms/brainstorm-longcovid-coagulation-null-2026-2026-10-26.md` — 26 ideas, all 12 categories, 26/26 rationale + prediction + certainty. |
| 4a | RAN | `ops/plans/hypotheses-trees/subtrees/longcovid-coagulation-null-2026.md` (26 nodes, tier derivation) + root index row. |
| 5 | RAN | 8 environments + 8 registry rows; certainty→environment table applied; 2 sub-0.20 ideas kept out of chapters. |
| 5b | RAN | `typst compile` exit 0 after every edit round (5c, 5a, cross-reference fix). |
| 5c | RAN | `ch24/sec-05-null-ladder/subsec-trial-level-null-dissociation/` — 1,695 words, label `sec:trial-level-null-dissociation`, included from `sec-05-null-ladder.typ:44`. |
| 5d | LEGIT-SKIP | Condition fired: the cycle introduces no drug-intervention cascade node. Verified by search, not assumed — `part3-treatment/ch30-*` contains no anticoagulant, antiplatelet, fibrinolytic, colchicine, famotidine, loratadine or plasmapheresis entry. Triage table recorded; `ops/integration-guides/pathway-drug-trace-…` deliberately not created. |
| 5a | RAN | `tmp/falsifiability-audit-longcovid-coagulation-null-2026.md` — 12 environments, 4/4 speculations carry refutation conditions, 42 fragments with `fragment_drift.py --strict` 0 drift, 16 findings resolved. Deviation: `falsifiability-auditor` failed (`Insufficient Balance`), report reconstructed and re-verified mechanically. |
| 5z | RAN | 14 glossary entries × 5 languages (70); counts 1604→1618 (fr 1625→1639); parity 20 pass / 0 fail; additive only (+627/−0). |
| 6 | RAN | `tmp/synonym-map-longcovid-coagulation-null-2026.md`; 22 terms, 156 files hit, 30 examined / 126 truncated (budget); 16 edit sites across 13 files; **0 bumps** by rule (no paper ≥0.70); 2 removals recorded (misattributed 80% figure; "documented"→"reported"). |
| 7 | RAN | `tmp/compat-audit-longcovid-coagulation-null-2026-2026-10-26.md`; 130 pairs, 38 confirmed / 92 lexical / 0 unexamined; 15 reinforcement, 16 feed-into, 3 conflict, 4 independent; registry compat note; **0 bumps, 0 reductions, 3 tensions**. |
| 8 | RAN | 67 files staged by explicit path; `nix build` exit 0; 7,045 pages; content confirmed in `pdftotext`; 0 fix iterations. |
| 9 | RAN | Quality summary appended to the synthesis file; net certainty 0.00; R:C 5:9, 0 deferred; 8 falsifiable; net +12,553 `.typ` words; tiers 20/3/3; **flags NONE**; honesty lint 85 findings / 8 on added lines — 1 fixed, 0 stamped, 7 justified. |
| 10 | RAN | `tmp/coherence-audit-longcovid-coagulation-null-2026-2026-10-26.md`; 7 checks, 32 files; 7 inconsistencies, 6 fixed, 1 deferred, 0 user decisions; retrofit item ledgered. |
| 10a | RAN | `@syn:longcovid-coagulation-null-2026-model` in ch11 hypercoagulability; 13 environments condensed; registry row; label queryable as `kind: synthesis`. Auto-added per standing default. |
| 10b | RAN | No framing propagation needed — verified: 0 coagulation terms in `abstract.typ` and `reading-guide.typ`; ch19 amplifier inventory and ch25 compendium already carry the constraint. Valid outcome per procedure. |
| 11 | RAN | `tmp/convergence-report-longcovid-coagulation-null-2026-2026-10-26.md`; FULL tier; 11a 2 rounds (1 HIGH + 1 LOW fixed), 11b 2 passes (0 HIGH, 0 CRITICAL, 1 MEDIUM recorded), 11c 2 rounds (0 findings) — **CONVERGED**. Deviation: all subagents `Insufficient Balance`, so the three passes ran inline; same-agent caveat recorded. |
| 12 | RAN | `## Phase 12 record` above (no `changelog.typ` exists). |
| 12.5 | RAN | This ledger. |
| 13 | RAN | Commit `5412ce6c` — `feat(coagulation): integrate the long-COVID coagulation null result`; 68 files, staged by explicit path, nothing from `tmp/`; post-commit `nix build` 0 errors, 7,047 pages, working tree clean. |

**Gate verification (independent):** `nix build` → exit 0, `result/loth2026-mecfs.pdf` 7,047 pages,
0 `error:` lines. Registry holds 13 rows for this cycle. 13/13 new environments carry
`*Consequence:*`. 4/4 speculations and 4/4 open questions carry `Falsifiable prediction`.
8 PDFs filed, 2 unavailability reasons recorded. Every citation resolves in the full build.

**Report:** Phase 12.5 completion gate: 24 phases RAN, 1 LEGIT-SKIP (5d — no ch30 cascade node
exists for this topic), 0 WAIVED, **0 OMISSION**. Build: PASS. Ledger clean — Phase 13 may
proceed.
