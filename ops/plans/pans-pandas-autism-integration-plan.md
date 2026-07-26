# Integration Plan: PANS/PANDAS-Autism Convergence

- **Topic:** PANS/PANDAS as an immune-mediated neuropsychiatric syndrome and its convergence with autism-spectrum presentations — a worked example of mechanism-based stratification over syndromic labelling
- **Origin:** User observation — increasing numbers of children diagnosed with autism later evaluated for PANS after sudden behavioural regression; question of whether PANS-autism convergence supports the paper's central argument
- **Phase-0 note:** MIXED tree — parallel cycles active (ch34, ch39). No shared-branch WIP commits. Rollback = `git checkout <ref> -- <file>`. Commit scoped by explicit file list.
- **Purpose:** Integrate PANS/PANDAS into the paper as (a) a comparative model in the cross-disease chapter, (b) a worked example of Architecture B (acquired neuropsychiatric phenotype from immune insult), and (c) an anchor for a broader "neuroimmune encephalopathy spectrum" concept connecting PANS, post-infectious ME/CFS, Long COVID, and a subset of regressive-autism cases.

## Target Chapters

- `ch14d-cross-disease.typ` — primary: Architecture B strengthening, autoimmune encephalitis section expansion, new neuroimmune encephalopathy spectrum subsection
- `ch16-comparative-nosology.typ` — secondary: PANS/PANDAS as comparator in post-infectious row
- `ch19-causal-hierarchy.typ` — potential: molecular mimicry pathway specificity (streptococcal → basal ganglia)
- `ch08-immune-dysfunction` — potential: autoantibody mechanism (anti-basal ganglia, anti-neuronal)

## Pre-Identified Hypotheses

| # | Idea | Preliminary certainty | Notes |
|---|------|----------------------|-------|
| H1 | PANS as Architecture B existence proof: infection → autoantibody → acquired neuropsychiatric phenotype → reversible | 0.55 | Well established in PANS literature; IVIG/plasmapheresis response rates documented |
| H2 | Neuroimmune encephalopathy spectrum: PANS, post-infectious ME/CFS, Long COVID neurocognitive, subset regressive autism share infection→autoantibody→circuit-specific dysfunction pipeline | 0.25 | Speculative — no direct comparative studies; different circuits, same disease class |
| H3 | Subset of "regressive autism" is undiagnosed PANS — anti-basal ganglia / anti-neuronal antibodies in children diagnosed ASD with acute regression | 0.20 | Requires direct testing; some case series exist |

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1 | PANS as Architecture B existence proof | 1 | 0.55 | ⬜ pending | Primary integration target — ch14d |
| 2 | Neuroimmune encephalopathy spectrum | 2 | 0.25 | ⬜ pending | Speculative subsection in ch14d |
| 3 | PANS as comparative model in ch16 | 2 | 0.55 | ⬜ pending | Post-infectious row addition |
| 4 | Undiagnosed PANS in "regressive autism" | 2 | 0.20 | ⬜ pending | Open question / speculation only |
| 5 | Streptococcal → basal ganglia molecular mimicry as specific subset of ME/CFS autoimmune pathway | 3 | 0.15 | ⬜ pending | Already-partial via H5 in autoimmune subtree; update only |

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|-----------|-------|----------|----------|---|--------|
| `spec:neuroimmune-encephalopathy-spectrum` | 6 | 0.25 | 0.30 | +0.05 | PANS provides molecularly characterised anchor member for NES framework; reduces purely speculative nature of disease-class claim. Under PARTIAL cap (max 0.45). |
| `oq:subclinical-autoimmunity` | 6 | N/A | N/A | N/A | Cross-reference to PANS precedent added (assay-limitation parallel); open-question has no cert value to bump. |

## Phase 7 — Cross-Hypothesis Compatibility

*Audit date:* 2026-07-26
*Compatibility audit:* `tmp/compat-audit-pans-pandas-autism-2026-07-26.md`

### Reinforcement Clusters

| Cluster | Hypotheses | Shared Theme | Cluster Cert. |
|---------|-----------|--------------|---------------|
| R1 | `spec:pans-pandas-architecture-b`, `hyp:dopamine-adhd-secondary` | Acquired neuropsychiatric phenotype existence proof + ME/CFS mechanism | 0.40 |
| R2 | `spec:neuroimmune-encephalopathy-spectrum`, ch16 PANS prose, `spec:ptlds-mecfs-mechanisms` | Post-infectious disease class framework | 0.45 |
| R3 | `spec:haplogroup-u-adhd-mecfs`, `spec:mtdna-haplogroup-symptoms` | mtDNA haplogroup phenotypic modulation in ME/CFS | 0.33 |

### Feed-Into Chains

| Chain | Nodes | Cumul. Cert. | Mechanism Trace |
|-------|-------|-------------|-----------------|
| C1 | `spec:pans-pandas-architecture-b`→`spec:neuroimmune-encephalopathy-spectrum` | 0.30 | PANS as molecularly characterised anchor member → NES disease class plausibility |
| C2 | `spec:neuroimmune-encephalopathy-spectrum`→`hyp:dopamine-adhd-secondary` | 0.30 | NES disease class framework → dopamine hypothesis as ME/CFS-specific circuit instantiation |
| C3 | `spec:ptlds-mecfs-mechanisms`→`spec:neuroimmune-encephalopathy-spectrum` | 0.30 | PTLDS as bacterial-trigger parallel to PANS within NES framework |
| C4 | `spec:haplogroup-u-adhd-mecfs`→`hyp:dopamine-adhd-secondary` | 0.20 | Mitochondrial reserve modulated by haplogroup → dopamine system energy budget → effort-invigoration |

### Certainty Adjustments Proposed

| Hypothesis | Current | Proposed | Δ | Reason |
|------------|---------|----------|---|--------|
| — | — | — | — | No bumps applied. 3 candidates evaluated and rejected: (1) `spec:pans-pandas-architecture-b`↔`hyp:dopamine-adhd-secondary`: meta-level reinforcement, not convergent mechanism; speculative pair guard (both <0.40). (2) `spec:haplogroup-u-adhd-mecfs`↔`spec:mtdna-haplogroup-symptoms`: same underlying evidence, not independent lines. (3) `spec:neuroimmune-encephalopathy-spectrum`: already received Phase 6 bump; one-per-cycle limit. |

### Conflicts

| Group | Hypotheses | Type | Resolution |
|-------|-----------|------|------------|
| — | — | — | No conflicts identified across 12 pairwise comparisons. All new hypotheses compatible with existing — operate at complementary levels of analysis (disease-class vs. circuit/vs. mechanism). |

## Phase 2 — Integration Decision: PARTIAL

- **Date:** 2026-07-26
- **Reasoning:** ≥2 papers with discounted cert ≥0.40 and ≥1 with raw cert ≥0.60 (PROCEED gate met). But 55% of papers (15/27) have discounted cert <0.40 (PARTIAL trigger). PANS papers heavily discounted by population weight (0.50 — "other disease model"). Autism convergence papers stronger (maternal Ab-ASD: 0.563, Croen 2008: 0.525). Contradictions resolvable: IVIG-works/doesn't-work pattern supports stratification argument.
- **Papers:** 27 total (17 PANS/PANDAS, 10 autism convergence). 9 strong/medium (≥0.40), 18 weak (<0.40), 3 null, 6 evidence gaps.
- **Clinical relevance: MEDIUM** — mechanistic context, no direct ME/CFS data. Subset: unknown.
- **Standing epistemic checklist:** #1 ⚠ (RCT not replicated) / #2 ⚠ (field polarization) / #3 ⚠ (small N) / #4 ✓ (PANDAS mechanism stronger than competing) / #5 ⚠ (pediatric, not ME/CFS) / #6 ⚠ (off-label experience for PANS only, not ME/CFS)

### Active Caps (set by Phase 2 — decision: PARTIAL)

- Environments allowed: speculation/open-question/limitation ONLY
- #hypothesis-box / #fhypothesis: FORBIDDEN even if idea cert ≥0.45 or Phase 7 bump crosses 0.45
- Brainstorm categories (Phase 4): 1–2 + 10–12 ONLY (skip 3–9 — drug/supplement ideas premature)
- Certainty bumps (Phases 6–7): capped — no bump may cross 0.45
- Phase 9 flags pre-fired: WEAK-EVIDENCE

## Notes

- Existing stub: `ops/plans/hypotheses-trees/subtrees/autoimmune-pandas.md` — merge/expand, don't duplicate
- Gap analysis (`cynaera-gaps`) rated this low priority ("narrow pediatric autoimmune model") — upgrade justified by user's observation of autism-convergence relevance
- Distinction: this is NOT about "healing PANS heals autism" — it's about mechanism-based stratification revealing that some "autism" diagnoses are immune-mediated encephalopathy producing autism-like symptoms
- Updates `ops/plans/cynaera-gaps-for-investigation-2026-07-16.md` to reflect priority upgrade after integration
