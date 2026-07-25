# Pharmacodiagnostic Matrix Integration Plan

**Purpose:** Integrate the Grand Exhaustive Pharmacodiagnostic Matrix concept — a cross-hypothesis drug-response constraint-satisfaction method extending ch30's cascade tracing — into the paper. The matrix indexes every medication against every mechanistic hypothesis, using multi-drug response patterns to localize bottlenecks without new assays.

**Target chapters:** ch30 (mechanistic cascade tracing), ch24 (medications by system), ch18 (mechanism-treatment map)

**Pre-identified hypotheses:** (from research idea file)
- Cross-hypothesis drug-response constraint satisfaction (certainty: n/a — methodological proposal)
- Multi-drug response pattern yields bottleneck localization (certainty: n/a — methodological proposal)

**MIXED mode note:** Working tree has unrelated changes (`src/main/java/web/BuildWeb.java` modified, `memory-system.md` untracked). No shared-branch WIP commits. Rollback = `git checkout <ref> -- <file>`. All phases scoped by explicit file lists. No `git reset`/`rebase`/`--amend`.

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|---|---|---|---|---|
| 1 | Cross-hypothesis drug-response matrix as diagnostic method | — | — | ⬜ pending | From research idea — core proposal |
| 2 | Multi-trial constraint satisfaction for bottleneck localization | — | — | ⬜ pending | From research idea — algorithm component |
| 3 | Retrospective pharmacodiagnostic signal extraction | — | — | ⬜ pending | From research idea — clinical application |
| 4 | Population-level bottleneck distribution analysis | — | — | ⬜ pending | From research idea — research application |

## Phase 1 — Literature Research (complete)

| Metric | Value |
|--------|-------|
| Papers found | 16 |
| Bib entries added | 16 |
| Bib file | `bib/diagnosis-assessment.bib` |
| Search log | `ops/research/search-log-pharmacodiagnostic-matrix-2026-07-25.md` |
| Literature summary | `ops/research/literature-pharmacodiagnostic-matrix-2026-07-25.md` |
| Annotated bib section | `<sec:bib-pharmacodiagnostic-matrix>` in `appendix-h-annotated-bibliography.typ` |

## Phase 1 Summary

16 papers found (5 high-certainty ≥0.60, 9 medium-certainty 0.40–0.59, 2 low-certainty <0.40). Bib entries: `diagnosis-assessment.bib` (16 new). Annotated bib: `appendix-h` section `<sec:bib-pharmacodiagnostic-matrix>`. Search log: `ops/research/search-log-pharmacodiagnostic-matrix-2026-07-25.md`. Literature summary: `ops/research/literature-pharmacodiagnostic-matrix-2026-07-25.md`.

**Verified bib keys (16, case-exact from bib):** Laragh1988DiagnosisExJuvantibus, Samuel2019Nof1Hypertension, Samuel2023Nof1RCT, Monini2006SilentReflux, Friston2023ComputationalPsychiatry, Schwartenbeck2016ComputationalPhenotyping, Strauss2021DiseasePhenotypes, Scheibenbogen2018Immunoadsorption, Wirth2021SkeletalMuscle, Kim2023SjogrenFatigue, FalagueraVera2020PressurePoint, Hu2024ParkinsonSubtyping, Zhang2022RuxolitinibHLH, Schaaf2024ReinforcementLearning, Ravichandran2024ActiveLearning, Newberry2016DiagnosisGout.

## Phase 3 Summary

1 new section added to ch30: `sec-13-pharmacodiagnostic-matrix` — "The Pharmacodiagnostic Matrix — Formal Multi-Drug Diagnostic Inference." Content spans: motivation (sequential algorithm → constraint satisfaction), core mechanism (response matrix, constraint scoring), methodological precedents (6 papers cited), information structure, clinical applications (immediate/prospective/research), implementation proposal, and 3 open questions (parameter stability, labeling bias, validation cohort).

Files modified:
- `src/main/typst/mecfs/part3-treatment/ch30-mechanistic-cascade-tracing/ch30-mechanistic-cascade-tracing.typ` — added include for sec-13
- `src/main/typst/mecfs/part3-treatment/ch30-mechanistic-cascade-tracing/sec-13-pharmacodiagnostic-matrix/sec-13-pharmacodiagnostic-matrix.typ` — new section (117 lines, 1 proposal, 3 open-questions, 1 practical-warning)
- `src/main/typst/mecfs/part3-treatment/ch24-medications-systems/sec-interpreting-treatment-responses/speculations/spec-medication-as-probe-justification.typ` — added cross-reference to `@sec:pharmacodiagnostic-matrix`
- `src/main/typst/mecfs/part3-treatment/ch18-mechanism-treatment-map/directions/dir-highest-priority-treatment-research-directions.typ` — added research direction #7
- `src/main/typst/mecfs/part4-research/hypothesis-registry.typ` — added 2026-07-25 entries table (4 rows)

Standing epistemic checklist verified per-claim:
- [#1 ✓] — all citations verified in bib (case-exact grep)
- [#2 N/A] — no mechanistic causality claims (methodological framework)
- [#3 N/A] — no model system evidence
- [#4 ✓] — competing methods acknowledged (no alternative framework identified for multi-drug cross-hypothesis matrix in ME/CFS)
- [#5 ⚠] — testable NOW (retrospective validation feasible) but requires infrastructure
- [#6 ⚠] — clinical-utility tension: framework valuable but unvalidated

## Phase 3a Summary

Build: PASS (5 iterations — math delimiter, enumlist, warning-box, label fixes)

## Phase 3.5 Summary

4 environments verified, 0 missing consequence fields, 0 added.

**Decision: PROCEED** — 5 papers ≥0.60, 16 total, only 2 (12.5%) <0.40. Strong methodological foundations in hypertension pharmacodiagnostics, N-of-1 Bayesian methods, response-based stratified treatment, and computational phenotyping. No paper directly describes a multi-drug cross-hypothesis matrix — the concept is novel synthesis. No contradictions. Clinical relevance: MEDIUM (methodological framework, not direct treatment). Synthesis: `tmp/synthesis-pharmacodiagnostic-matrix-2026-07-25.md`.

**Standing epistemic checklist:** [#1 ✓] / [#2 N/A] / [#3 N/A] / [#4 ✓] / [#5 ⚠ testability NOW but requires infrastructure] / [#6 ⚠ clinical-utility tension — framework structures existing practice but not validated].

**Cohort overlap:** None detected — papers span hypertension, HLH, Parkinson's, computational psychiatry, gout, Sjögren's, fibromyalgia, and ME/CFS across different labs and decades.

## Active Caps (Phase 2 decision: PROCEED)
- Environments allowed: all
- `#hypothesis-box` / `#fhypothesis`: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
