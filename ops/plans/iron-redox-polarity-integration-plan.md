# Iron Redox Polarity — Integration Plan

**Purpose:** Formalize iron redox handling differences between ME/CFS and Long COVID as a diagnostic differentiator and therapeutic bifurcation guide. ME/CFS = functional iron deficiency (high ferritin, low transferrin saturation). Long COVID = hepcidin-independent dysregulation. The paper already has the hepcidin-iron axis in ch09; this formalizes the polarity into a cross-disease therapeutic bifurcation.

**Target chapters:**
- ch09 (endocrine — hepcidin axis)
- ch14d (cross-disease — LC vs ME/CFS iron polarity)
- ch30 (cascade sections + sec-12 medication reference)

**Pre-identified hypotheses:**
- ME/CFS patients show elevated ferritin with low transferrin saturation (functional iron deficiency) vs Long COVID patients who show elevated serum iron with normal hepcidin. (Certainty ~0.50 from Hanson2024iron)
- The two groups show opposite responses to iron supplementation and iron chelation — treating one with the other's approach harms.

**Parent topic:** cynaera-gaps (Priority 2)
**Date queued:** 2026-07-16

## Phase Reports

### Phase 1 — Literature Research
- 14 papers found (13 new + Swiatczak2022 updated)
- 17 bib keys in immune.bib (6) and long-covid.bib (11)
- Search log: `ops/research/search-log-iron-redox-polarity-2026-07-26.md`
- Literature summary: `ops/research/literature-iron-redox-polarity-2026-07-26.md`
- Bib keys: Swiatczak2022, Hanson2024iron, Kavyani2023Hepcidin, Baklund2021RoutineBlood, vanRensburg2001CFSmetals, Lodemann2026vaccineIron, Sonnweber2022CovILD, KronsteinWiedemann2024RBC, Gietl2024PostCOVIDlab, Kedor2022PostCOVIDfatigue, Yamamoto2023Ferritin, Morita2024ME-CFSphase, Ruscitti2023Ferritin, Sousa2023Ferroptosis, Dufrusine2022Iron5LOX, Mulet2026mitochondrial, Hadidchi2025CFSrisk

### Phase 2 — Evidence Synthesis
- Decision: PROCEED
- Evidence quality: 9 strong (≥0.60), 5 moderate (0.40–0.59), 3 weak (<0.40)
- Cohort overlap: Yamamoto2023 + Morita2024 share Okayama group (Otsuka PI) → counted as 1 independent source
- Clinical relevance: MEDIUM — mechanistic context for treatment decisions. Subset: mild-moderate.
- Standing epistemic checklist: #1 ✓ / #2 ⚠ (all observational) / #3 ✓ / #4 ⚠ (hepcidin paradox has 3 competing explanations) / #5 ⚠ (hepcidin not routine) / #6 ⚠ (clinical-utility tension)

### Phase 3 — Content Development
- 4 environments added to ch14d: @hyp:iron-redox-polarity-diagnostic-bifurcation (cert 0.55), @hyp:erythrocyte-dysfunction-lc-specific (cert 0.45), @spec:iron-ferroptosis-divergent-triggers (cert 0.35), @oq:iron-chelation-vs-supplementation
- ch09 updated: @spec:hepcidin-endocrine-bridge now notes Kavyani2023 low-hepcidin finding
- ch33 updated: @spec:iron-hepcidin-mecfs limitation updated with Kavyani2023 finding
- Hypothesis registry: 4 new entries in "2026-07-26" table
- Files modified: ch14d-cross-disease.typ, ch09-endocrine.typ, ch33-epidemiology-outcomes.typ, hypothesis-registry.typ
- Standing epistemic checklist verified per-claim: #1 ✓ / #2 ⚠ (all observational) / #3 ✓ / #4 ⚠ (ch14d ferroptosis: NTBI redistribution hypothesis acknowledged as paradoxical) / #5 ⚠ (hepcidin/ferroptosis biomarkers not routine) / #6 ⚠ (clinical-utility tension for the therapeutic bifurcation warning)

### Phase 3.5 — Non-Specialist Consequences
- 4 environments verified, all have consequence fields. 1 duplicate removed (ferroptosis had dual consequence fields).

### Phase 4 — Creative Brainstorming
- Brainstorm file: `ops/brainstorms/brainstorm-iron-redox-polarity-2026-07-26.md`
- 19 ideas across all 12 categories + 6 sub-null hypotheses + 9 evidence quality concerns
- Highest-certainty constructive: 1.4 FTR ratio as diagnostic (0.50)
- Central mechanistic thesis: 1.1 Hepcidin-independent ferroportin blockade

### Phase 5 — Tiered Integration
- 19 ideas triaged: 6 integrated (Tier 1: 1.1–1.6), 12 tree-only (1.7 covered-by-limitations, 2.1–2.12), 1 Tier 3 (2.5)
- 6 environments added to ch14d: @spec:hepcidin-independent-ferroportin-blockade (cert 0.40), @spec:temporal-phase-shift-iron (cert 0.35), @spec:monocyte-ferroptosis-amplifier (cert 0.30), @pred:ferritin-tsat-ratio-diagnostic (cert 0.40), @spec:deferiprone-functional-iron-deficiency (cert 0.30), @lim:iron-redox-null-hypotheses
- Registry: 6 new entries in "2026-07-26 — Brainstorm-Derived" table
- No Gate A/B/C escalations needed
- Phase 5c: skipped (non-pharmacological topic)
- Phase 5d: skipped (no cascade-with-drug-interception points)
- Files modified: ch14d-cross-disease.typ, hypothesis-registry.typ
- Standing epistemic checklist: #1 ✓ / #2 ⚠ (all still observational) / #3 ✓ / #4 ✓ (null hypotheses explicitly enumerated) / #5 ⚠ / #6 ⚠ (deferiprone speculation carries prominent safety warnings)

### Phase 5b — Intermediate Build
- My files PASS. Pre-existing failures: Braga2023neuroCOVID (missing bib key), ch06 bracket error (unrelated to this topic).

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1.1 | Hepcidin-Independent Ferroportin Blockade | 1 | 0.40 | ✅ integrated | @spec:hepcidin-independent-ferroportin-blockade, ch14d |
| 1.2 | Temporal Phase-Shift: ME/CFS = Late-Stage LC Iron | 1 | 0.35 | ✅ integrated | @spec:temporal-phase-shift-iron, ch14d |
| 1.3 | Monocyte Epigenetic Reprogramming as Ferroptosis Amplifier | 1 | 0.30 | ✅ integrated | @spec:monocyte-ferroptosis-amplifier, ch14d |
| 1.4 | Ferritin:TSAT Ratio as Diagnostic Differentiator | 1 | 0.40 | ✅ integrated | 🡓 reassessed from 0.50; @pred:ferritin-tsat-ratio-diagnostic, ch14d |
| 1.5 | Deferiprone Pilot Trial for Functional Iron Deficiency | 1 | 0.30 | ✅ integrated | @spec:deferiprone-functional-iron-deficiency, ch14d |
| 1.6 | Null Hypotheses (N1–N6) | — | n/a | ✅ integrated | @lim:iron-redox-null-hypotheses, ch14d |
| 1.7 | Evidence Quality Concerns (Q1–Q9) | — | n/a | ⏭️ covered | Phase 3 env limitations already cover quality concerns |
| 2.1 | Comparative Iron Panel Study Design | 2 | 0.45 | ↩️ tree-only | Tier 2 — research proposal |
| 2.2 | Temporal Iron Trajectory in Post-COVID ME/CFS | 2 | 0.30 | ↩️ tree-only | Tier 2 — 🡓 reassessed from 0.35 |
| 2.3 | Ceruloplasmin-Copper-Iron Triangle | 2 | 0.30 | ↩️ tree-only | Tier 2 |
| 2.4 | Clinical Decision Support Tool | 2 | 0.30 | ↩️ tree-only | Tier 2 — 🡓 reassessed from 0.40 |
| 2.5 | Hepcidin Agonist for Iron Redistribution | 3 | 0.15 | ↩️ tree-only | Tier 3 — cert <0.20, max use ≤2 |
| 2.6 | Hemochromatosis Crossover Genetics | 2 | 0.30 | ↩️ tree-only | Tier 2 |
| 2.7 | IRP1/IRP2 Activity in ME/CFS PBMCs | 2 | 0.35 | ↩️ tree-only | Tier 2 |
| 2.8 | LCN2/NGAL as Iron-Trapping Mediator | 2 | 0.20 | ↩️ tree-only | Tier 2 |
| 2.9 | Treatment-Stratification Algorithm | 2 | 0.30 | ↩️ tree-only | Tier 2 — 🡓 reassessed from 0.40 |
| 2.10 | 3-Month Post-COVID Iron Panel as Predictive Biomarker | 2 | 0.35 | ↩️ tree-only | Tier 2 |
| 2.11 | Fe-S Cluster Failure as Ferroptosis Substrate | 2 | 0.25 | ↩️ tree-only | Tier 2 |
| 2.12 | Sex-Stratified Iron Phenotyping | 2 | 0.20 | ↩️ tree-only | Tier 2 |

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| | | | | | |

## Notes
- MIXED mode — no shared-branch WIP commits; rollback via `git checkout <ref> -- <file>`
- Existing paper already has extensive iron/hepcidin/ferritin content (ch06, ch09, ch12, ch14b, ch14d, ch30, ch33)
- Key baseline content: @spec:hepcidin-endocrine-bridge (ch09, cert 0.40), @spec:iron-dysregulation-hepcidin-ferroptosis (ch06, cert 0.50), @spec:danazol-hepcidin (ch14b, cert 0.25)
- The gap is specifically: (1) ME/CFS vs LC iron *polarity* — differential diagnosis framing; (2) therapeutic bifurcation — treating one with the other's approach harms; (3) formal ch14d cross-disease section
