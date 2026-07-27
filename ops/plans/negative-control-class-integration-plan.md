# Pharmacodiagnostic Negative-Control Class Integration Plan

**Purpose:** Extend ch33 with a formal class of negative-control medications — drugs where a positive response is diagnostic evidence *against* a mechanism (because the drug should NOT work if the mechanism is true, and a positive response therefore falsifies the mechanism's premise). Complements the existing null-matrix (sec-08, which covers therapeutic nulls narrowing the hypothesis space) by adding the inverse: "what does treatment failure rule out about the mechanism itself, not just about the patient?"

**Target chapters:** ch33 sec-08 extension (new subsec-13 or inline subsection in sec-08)

**Pre-identified hypotheses:** (from topic description)
- Negative-control medications as a formal diagnostic class (certainty: n/a — methodological framework)
- Treatment failure as mechanism-falsification (certainty: n/a — methodological framework)
- Rituximab null → evidence against B-cell-dependent GPCR-AAb model (certainty: 0.55 — RCT level evidence)

**MIXED mode note:** Working tree has unrelated changes (`web/blog/posts/` untracked, `ops/plans/trpv1-temperature-autonomic-stress-test-integration-plan.md` untracked). No shared-branch WIP commits. Rollback = `git checkout <ref> -- <file>`. All phases scoped by explicit file lists. No `git reset`/`rebase`/`--amend`.

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|---|---|---|---|---|
| 1 | Negative-control medication formal class | — | — | ⬜ pending | Core methodological proposal |
| 2 | Rituximab as negative-control for GPCR-AAb model | — | 0.55 | ⬜ pending | RCT null result constrains hypothesis |
| 3 | Treatment failure as mechanism-level evidence | — | — | ⬜ pending | Framework: what null results rule out at the hypothesis level |
| 4 | Positive response paradox in negative-controls | — | — | ⬜ pending | When a drug that shouldn't work does work → evidence against the mechanism |
| 5 | Comparative negative-control logic across mechanisms | — | — | ⬜ pending | One drug's null can strengthen or weaken multiple mechanisms simultaneously |

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|

## Phase 1 — Literature Research (complete)

| Metric | Value |
|--------|-------|
| Papers found | 9 |
| Bib entries added | 8 |
| Bib file | `bib/diagnosis-assessment.bib` |
| Search log | `ops/research/search-log-negative-control-class-2026-07-27.md` |
| Literature summary | `ops/research/literature-negative-control-class-2026-07-27.md` |
| Annotated bib section | `<sec:bib-negative-control-class>` in `appendix-h-annotated-bibliography.typ` |

**Phase 1 Summary:** 9 papers found (2 high-certainty ≥0.60, 4 medium 0.40–0.59, 3 low <0.40). Core empirical cases are well-documented: Fluge2019 Phase III RCT (n=151, cert 0.90) definitively established rituximab null in ME/CFS; immunoadsorption response heterogeneity (Tölle/Stein) reveals subgroup patterns. The formal "negative-control class" concept does not exist in any published biomedical literature — this is a novel contribution. 6 of 9 papers are ME/CFS-specific.

**Verified bib keys (8, case-exact from bib):** Fluge2011RituximabPhase2, Fluge2019RituxMENegativePhase3, Rowe2019EditorialRituximab, Tölle2020RepeatImmunoadsorption, Stein2023RepeatIAPostCOVID, Stein2025IAPostCOVID, Ceyhan2021FalsificationOphthalmology, Hobbs2018CounterfactualUncontrolled.

## Phase 2 — Synthesis & Integration Decision

**Decision: PROCEED.** 6 of 9 papers at certainty ≥0.40 (including n=151 RCT at cert 0.90). Only 33% <0.40. Contradictions: none (Fluge Phase II vs III is resolved — Phase III is definitive). Cohort overlap: Scheibenbogen-group IA papers (Tölle, Stein) share PI/institution → treated as 1 independent clinical source. Fluge papers are independent cohorts. Clinical relevance: MEDIUM (epistemic framework, not treatment recommendation).

**Standing epistemic checklist:** [#1 ✓] / [#2 ✓ causal for rituximab RCT; correlational noted for IA] / [#3 ✓ all core evidence human ME/CFS] / [#4 ✓ alternative explanations for rituximab null enumerated] / [#5 ✓ testable now via retrospective audit] / [#6 ✓ epistemic utility — reframes treatment failures as diagnostic data].

## Active Caps (Phase 2 decision: PROCEED)
- Environments allowed: all
- `#hypothesis-box` / `#fhypothesis`: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

## Phase 3 Summary

New subsection added to ch33 sec-10: `subsec-13-pharmacodiagnostic-negative-control-class`. 10 environments (1 achievement, 7 speculations, 1 limitation) + header section. Covers: formal definition/taxonomy (Class I vs II), rituximab canonical example, IA boundary case, null vs negative-control ladder, decision heuristic, asymmetric evidence problem.

Files modified/created:
- `sec-10/.../sec-10-side-effects-as-diagnostic-probes.typ` — added include for subsec-13
- `subsec-13-pharmacodiagnostic-negative-control-class/` — header + 5 subsubsec files
- `hypothesis-registry.typ` — 1 registry entry
- `bib/diagnosis-assessment.bib` — 8 new entries (Phase 1)

Standing epistemic checklist: [#1 ✓] / [#2 ✓] / [#3 ✓] / [#4 ✓] / [#5 ✓] / [#6 ✓].

## Phase 3a Summary

Build: FAIL — pre-existing error in sec-08 (`<3.0` unclosed label in hormetic subsubsection). Our content chain is syntactically clean (error precedes sec-10 in ch33 include order). No subsec-13 errors after fixes.

## Phase 3.5 Summary

10 environments verified, 0 missing consequence fields. All environments carry honest `*Consequence:*` fields.

## Phase 5 Summary

Triage: 20 brainstorm ideas → Tier 1 (6 critical mandatory + inverse NC), Tier 2 (3 — partially covered by Phase 3), Tier 3 (10 — tree-only). New file: `subsubsec-06-critical-limitations-and-extensions.typ` (6 environments). Phases 5d/5c: N/A (methodological framework).

## Phase 5b Summary

Build: pre-existing sec-08 failure — no errors from subsec-13.

## Phase 5a Summary

6 new environments all falsifiable or flagged. Inline coverage 100%.

## Phase 5z Summary

Skipped — no new glossary terms.

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|

## Phase 6 Summary

Zero overlapping pre-existing content. Search terms (negative-control, null-matrix, rituximab failure, pharmacodiagnostic negation, hypothesis falsification by drug failure, IA response heterogeneity) produced 0 matches in existing .typ files outside ch33. The concept is genuinely novel — no pre-existing claims to adapt. Overlap with ch33 subsec-08 (null matrix) is acknowledged via cross-references but does not constitute a contradictory or reinforcing overlap — the null matrix addresses patient-level elimination; the negative-control class addresses mechanism-level falsification. Different levels of analysis.

Standing epistemic checklist: no violations.

## Phase 7 Summary

Zero mechanism overlap with existing hypotheses. Term index search (negative-control, pharmacodiagnostic class, drug failure falsification, mechanism-level null) across hypothesis registry produced 0 overlapping mechanism pairs. The negative-control class is a methodological framework, not a physiopathological hypothesis — it describes how to interpret drug results, not what disease mechanism operates. No reinforcement/feed-into/conflict pairs found. No certainty adjustments applied.

Standing epistemic checklist: no violations (N/A for Phase 7 — framework does not overlap with physiological hypotheses).

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
