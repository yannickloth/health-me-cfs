# Integration Plan: Peripheral Serotonin Depletion in ME/CFS

**Purpose:** Evaluate and integrate evidence on peripheral (gut-derived) serotonin depletion as a pathophysiological mechanism in ME/CFS, Long COVID, and POTS. Serotonin produced in the gut (~90% of body total) regulates mitochondrial function, blood flow, vagal nerve activation, gut function, inflammation control — functions directly relevant to ME/CFS symptoms.

**Source:** Brain Inflammation Collab Substack (2026-06-25) — "Serotonin: A Gut Feeling It's More Than a Neurotransmitter"

**Topic slug:** `peripheral-serotonin-depletion`

**Target chapters:**
- ch06 (immune/neuroimmune) — serotonin's anti-inflammatory roles
- ch09 (mitochondrial/bioenergetics) — serotonin effects on energy metabolism
- ch13 (integrative models) — convergent mechanism
- ch14d (cross-disease) — Long COVID / POTS overlap
- ch17 (non-pharmacological interventions) — gut-targeted interventions
- ch25 (biomarkers) — serum/platelet serotonin as biomarker

**Pre-identified hypotheses:** None yet — to be populated after Phase 1.

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| — | (populated after Phase 1) | — | — | ⬜ pending | — |

**Phase 1:** 14 papers found; bib keys (VERIFIED): wong2023serotonin, thorpe2026serotonin, bai2024serotonin, taenzer2023urine, mathe2025noserotonin, anderson2024serotonin, raij2024serotonin, che2025innate, wirth2026neurotransmitter, gunning2016pots, raziq2021serotonin, mar2014ssripots, locasso2024serotonin, paredes2019serotonin. Search log: content-staging/search-log-peripheral-serotonin-depletion-2026-06-26.md

**Phase 2:** 14 papers (8 strong ≥0.60, 4 medium 0.40–0.59, 1 weak, 1 null). Decision: **PROCEED**. Clinical relevance: MEDIUM. Contradictions: 1 pair (Mathé/Wong — compartment-explained, non-fundamental).

**Phase 3:** Environments added:
- ch13: `hyp:peripheral-serotonin-convergence` (certainty 0.60) — multi-system convergence point
- ch14d: `spec:cross-disease-serotonin-convergence` (certainty 0.50) — cross-disease evidence
- ch11: enhanced IDO2 section with wong2023serotonin, che2025innate, raij2024serotonin, gunning2016pots, mar2014ssripots citations
- Hypothesis registry: 1 new entry (peripheral serotonin depletion)

Files modified/created:
- `src/main/typst/mecfs/part2-pathophysiology/ch13-integrative-models/sec-01-misc/subsec-09-peripheral-serotonin-multi-compartment/hypotheses/hyp-peripheral-serotonin-multi-compartment-convergence.typ` (new)
- `src/main/typst/mecfs/part2-pathophysiology/ch13-integrative-models/ch13-integrative-models.typ` (modified)
- `src/main/typst/mecfs/part2-pathophysiology/ch14-speculative-hypotheses/ch14d-cross-disease.typ` (modified)
- `src/main/typst/mecfs/part2-pathophysiology/ch11-gut-microbiome.typ` (modified)
- `src/main/typst/mecfs/part4-research/hypothesis-registry.typ` (modified)

**Phase 3a build:** PASS (3 errors fixed)

**Phase 3.5:** 2 environments verified, both have consequence fields. ch11 enhancement: citations only.

**Phase 4:** 61 ideas generated across all 12 categories. Brainstorm at `content-staging/brainstorm-peripheral-serotonin-depletion-2026-06-26.md`

**Phase 4a:** Subtree `subtrees/peripheral-serotonin-depletion.md` written with 23 representative nodes; root index updated.

**Phase 5:** 61 ideas triaged: T1=17, T2=20, T3=6, critical=17.
- Integrated critical categories into existing environments (enhanced limitations in ch13 hypothesis; created null-hypothesis OQ)
- Tier 1/2 ideas: most deferred to future cycles due to scale; baseline Phase 3 environments already capture core claims
- ch13: enhanced limitations (dietary confound, platelet activation, reference ranges, cross-condition extrapolation); added `oq:serotonin-null-hypothesis`
- ch14d: added falsifiable prediction to cross-disease speculation

**Phase 5a:** 3 environments audited (2 in ch13, 1 in ch14d). 1 fully falsifiable, 1 unfalsifiable fixed (prediction added to ch14d spec), 1 exempt (open-question).
**Phase 5b build:** PASS

**Phase 6:** M matches examined, N adapted (see below)

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none
