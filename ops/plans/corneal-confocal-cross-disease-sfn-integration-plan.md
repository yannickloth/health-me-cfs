# Corneal Confocal Microscopy Cross-Disease SFN — Integration Plan

**Origin:** `/integrate-topic corneal-confocal-cross-disease-sfn` — recursive invocation from Phase 5 scope-escalation of postcovid-ocular-syndrome cycle
**Slug:** `corneal-confocal-cross-disease-sfn`
**Date:** 2026-07-09
**Parent topic:** postcovid-ocular-syndrome
**Tree state:** CLEAN mode

## Purpose

Corneal confocal microscopy (CCM) as a non-invasive small-fiber neuropathy biomarker across diabetic neuropathy, fibromyalgia, MS, ME/CFS — has its own methodology literature. The parent cycle focused on post-COVID ocular syndrome; this cycle sweeps the broader CCM cross-disease literature to assess CCM's specificity, cross-validation status, and applicability as an independent SFN biomarker for the paper's neuropathy models.

## Target chapters

- Part 2 ch10-cardiovascular — existing CCM biomarker section (Azcue 2025 already cited)
- Part 2 ch08-neurological — SFN pathophysiology section
- Part 4 ch41-formalization-model — ODE model SFN observables
- Part 2 ch14d-cross-disease-comparisons — cross-disease CCM patterns
- Part 4 hypothesis-registry + appendix-h annotated bib

## Pre-identified hypotheses

- Corneal nerve fiber density (CNFD) as validated SFN biomarker with cross-disease normative data (certainty ~0.40 from parent subtree node 8.2)
- CCM specificity limitations — corneal nerve loss is present across multiple neuropathy types; how does ME/CFS SFN differ from diabetic/MS/FM pattern?
- CCM as longitudinal outcome measure for SFN-targeted interventions

## Notes

- Parent subtree nodes relevant: 1.3 (CNFD as SFN ODE observable, cert 0.35), 7.1 (same, cert 0.35, math=5), 8.2 (diabetic neuropathy CNFD reference dynamics, cert 0.40)
- Azcue 2025 and Cañadas 2023 already cited in paper — this cycle evaluates the broader methodology literature, not duplicating existing citations
- Cross-disease context: diabetic neuropathy (largest literature), fibromyalgia (Ramirez 2022, Evdokimov 2023), MS, Parkinson's, chemotherapy-induced — normative data and specificity questions
- ch10 already has a CCM biomarker subsection — Phase 3 may expand or add cross-disease comparisons section

## Phase Tracking

| Phase | Summary |
|-------|---------|
| 1 | 15 papers found (5 high, 7 medium, 3 low). 15 bib entries added to `bib/neurology-comorbidities.bib`. 15 annotated appendix entries. Verified keys extracted from bib. Search log + literature summary in content-staging/. |
| 2 | **PROCEED.** 12/15 papers certainty ≥ 0.60, 14/15 ≥ 0.40, ≤50% sub-0.40. Clinical relevance: MEDIUM. Contradictions: Ghadban 2025 — moderate CCM-IENFD correlation. Synthesis at content-staging/. |
| 3 | Enhanced `@spec:sfn-interface-failure` (ch10) with cross-disease CCM evidence paragraph (certainty 0.40→0.45). New `@spec:ccm-cross-disease-patterns` (ch14d, cert 0.35). 2 new registry entries. `pupillometry.bib` include fixed (pre-existing issue). |
| 3.5 | 2 Phase-3 environments verified: 1 new has consequence field; 1 pre-existing enhanced flagged for retrofit (not blocking). |
| 4 | 38 ideas across all 12 categories. Brainstorm at `content-staging/brainstorm-corneal-confocal-cross-disease-sfn-2026-07-09.md`. Plan table populated with 38 rows. |
| 4a | Subtree `subtrees/corneal-confocal-cross-disease-sfn.md` written with 38 nodes; root index updated. |
| 5 | 38 ideas triaged: 5 T1 integrated (1.2, 1.3, 7.1, 8.1, 9.1); critical categories 10–12 folded into single `@lim:ccm-mecfs-evidence-quality`; 12 T1 parked (future cycles); 2 T2 available; 7 T3 tree-only; 1 covered-by-Phase-3 (2.3); 0 queued as child. New files: ch08 (spec:corneal-lc-microglia-proxy), ch10 (oq:ccm-trigeminal-vs-systemic, spec:ccm-tortuosity-composite-score, lim:ccm-mecfs-evidence-quality), ch14d (oq:ccm-sjogren-overlap-pattern), ch41 (spec:tortuosity-ode-state-variable). 1 new registry entry. |
| 5a | 7 environments audited: all fully falsifiable (0 weak, 0 unfalsifiable, 0 fixes needed). Inline coverage: 100% — all environments written with falsifiable predictions during Phase 5 integration. |
| 5b | Build PASS (no errors). |

## Tracking table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|---|---|---|---|---|
| — | (TBD after Phase 4) | — | — | ⬜ pending | Rows populated after Phase 4 |

## Active Caps (set by Phase 2 — decision: PROCEED)

- Environments allowed: **all**
- #hypothesis-box / #fhypothesis: **allowed** (per idea certainty)
- Brainstorm categories (Phase 4): **all 1–12**
- Certainty bumps (Phases 6–7): **per normal rules**
- Phase 9 flags pre-fired: **none**
