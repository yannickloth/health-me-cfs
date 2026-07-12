# Integration Plan: Exercise Modality Expansion

**Purpose:** Expand Ch. 17 §Safe Movement Approaches with modality-by-modality guidance (water rowing, swimming, recumbent machines, resistance bands) + constant body position criterion as a POTS/ME/CFS safety heuristic.

**Target chapters:** ch17-lifestyle-interventions (Ch. 17 §Exercise and Movement → Safe Movement Approaches)
**Parent topic:** root (user request from paper discussion)

## Pre-identified Hypotheses

| Hypothesis | Preliminary certainty |
|-----------|----------------------|
| Constant body position as the primary safety criterion for POTS+ME/CFS exercise | 0.50 — mechanistically grounded in orthostatic intolerance, not ME/CFS-validated |
| Water rowing as a tolerable modality for mild-moderate ME/CFS | 0.30 — single-source clinician recommendation; no ME/CFS trial |
| Swimming/water exercise reduces PEM via hydrostatic pressure countering orthostatic pooling | 0.35 — clinical trial registered (NCT07454395), no results yet |
| Recumbent vs. upright: a physiological framework for exercise modality selection | 0.55 — well-anchored in POTS/orthostatic intolerance physiology |

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|---|---|---|---|---|
| 1 | Constant body position as POTS/ME/CFS safety criterion | 1 | 0.50 | ✅ done | Hypothesis @hyp:constant-body-position in ch17 |
| 2 | Water rowing modality assessment | 1 | 0.30 | ✅ done | Speculation @spec:water-rowing in ch17 |
| 3 | Swimming/aquatic exercise as ME/CFS-safe modality | 1 | 0.35 | ✅ done | Speculation @spec:adapted-swimming in ch17 |
| 4 | Modality safety classification framework (body position + orthostatic demand) | 1 | 0.55 | ✅ done | Speculation @spec:modality-classification in ch17 |
| 5 | Heart rate response by modality (compound vs. isolated movement) | 2 | 0.40 | ✅ done | Speculation @hyp:compound-vs-isolated-hr in ch17 |
| 6 | Practical protocol for introducing water rowing | 2 | 0.25 | ✅ done | Embedded in @spec:water-rowing protocol outline |

## Commit history
- `ff11566` content(ch17): integrate exercise modality expansion with 9 new environments
- `d79b683` docs(plans): add exercise modality expansion plan and hypothesis subtree

## Phase 1 — Literature Research
- 2 papers found, 2 added to references.bib (Schmid2007WaterImmersion, Hanna1993WaterImmersion)
- 2 annotated bib entries added to appendix-h
- Literature summary: `ops/research/literature-review-exercise-modality-expansion.md`
- Zero papers on: water rowing in ME/CFS, swimming in POTS, resistance bands in ME/CFS, modality selection for dysautonomia

## Phase 2 — Content Development
- Target: ch17-lifestyle-interventions.typ, §Safe Movement Approaches
- 0 new environments added (deferred to Phase 4)
- Cross-refs: ch10-cardiovascular §POTS, hypothesis registry

## Phase 3 — Creative Brainstorming
- Brainstorm file: `ops/brainstorms/brainstorm-exercise-modality-expansion-20260526.md`
- 45 ideas (6 hypotheses, 6 research directions, 4 drug, 5 supplement, 5 non-pharm, 4 combos+access, 5 math models, 4 cross-disease, 5 diagnostic)

## Phase 4b — Retrospective Adaptation
- 6 matches examined, 1 adapted (1 reinforcement, 0 contradiction, 0 ambiguous, 5 no action)
- Reinforcement: "Pool exercises" line (ch17 line 1191) — added @Schmid2007WaterImmersion citation + cross-ref; evidence certainty 0.68, below 0.70 threshold for +0.10 bump
- No action: 4 matches already cross-ref'd to Phase 4 content; 1 unrelated registry mention
- Zero prior overlap for: compound vs. isolated, water rowing — no pre-existing claims

## Phase 4c — Cross-Hypothesis Compatibility
- 135 pairs audited (9 new × 15 existing mechanisms)
- 18 reinforcement, 27 feed-into, 0 conflict, 90 independent
- Longest chain: 5 elements (H2 aquatic-hydrostatic → E5 sympathovagal → H1 constant-position → E3 cerebral hypoperfusion → reduced PEM)
- No certainty bumps applied: all reinforcement is internal consistency (Phase 4b provided the only external evidence bump opportunity, which was below the +0.10 threshold)

## Notes
- Parent of "fitness-maintenance-framework" and "muscle-preservation-bedbound"
- User remark: "Sports where the body position remains constant (no falling/getting up) are barely subject to POTS issues" — this is the anchoring insight
- Cross-reference: ch10-cardiovascular §POTS, ch17 §Safe Movement
- NCT07454395 pending results for swimming trial
