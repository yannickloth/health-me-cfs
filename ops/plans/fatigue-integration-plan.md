# Integration Plan: Fatigue (Core Symptom)

**Purpose:** Integrate fatigue as a standalone core symptom in ch03 (Core Symptoms) — its definition, prevalence, subtypes/phenotypes, objective vs subjective measurement, and its relationship to PEM and to other core symptoms. Distinct from the fatigue–PEM relationship (already integrated in sec-01-pem) and from the fatigue-vs-inflammation mechanism (Omdal plan, ch06/ch15).

**Topic slug:** fatigue (provisional: fatigue-core-symptom)
**Date:** 2026-08-11
**Cycle mode:** CLEAN
**Parent topic:** root (standalone)

**Target chapters:**
- `src/main/typst/mecfs/part1-clinical/ch03-core-symptoms/sec-00-fatigue/` — NEW standalone fatigue section (definition, prevalence, subtypes, measurement, meralation to PEM)
- `src/main/typst/mecfs/part4-research/hypothesis-registry.typ` — new registry entries
- `ops/plans/hypotheses-trees/` — subtree + root index (Phase 4a)

**Pre-identified hypotheses (provisional, to be validated by Phase 1):**
- Fatigue is the most prevalent and disabling core symptom in ME/CFS (near-universal) — provisional
- ME/CFS fatigue has qualitative features distinct from normal/organic fatigue (post-exertional, not relieved by rest, profound) — reinforcement of ch03/sec-01-pem axioms
- Objective vs subjective fatigue measurement dissociate; consensus on a validated fatigue instrument is lacking — open-question candidate

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|---|---|---|---|---|
| 1 | Fatigue is near-universal, cardinal core symptom | 1 | 0.75 | ✅ done | #achievement @ach:fatigue-severity-benchmark; ch03 sec-00-fatigue subsec-02 |
| 2 | ME/CFS fatigue qualitatively distinct from normal fatigue | 1 | 0.60 | ✅ done | @clf:fatigue-vs-fatigability + @clf:central-fatigability (definitional/objective) |
| 3 | Objective vs subjective fatigue measurement dissociation | 2 | 0.50 | ✅ done | #open-question @oq:fatigue-subjective-objective |
| 4 | Fatigue subtypes/phenotypes within ME/CFS | 3 | 0.60–0.65 | ✅ done | @hyp:fatigue-embedded-clusters + @hyp:severity-subgroups (Phase 3) |

## Phase 5 triage (brainstorm ideas → disposition)
| Idea | Disposition |
|------|-------------|
| I-001 (embedded clusters) | 🔵 covered → ⏭️ dedup: already integrated as @hyp:fatigue-embedded-clusters (Phase 3); registration entry in registry |
| I-002 (fatigability distinct) | 🔵 covered → ⏭️ dedup: already integrated as @clf:fatigue-vs-fatigability + @clf:central-fatigability |
| I-003 (severity subgroups) | 🔵 covered → ⏭️ dedup: already integrated as @hyp:severity-subgroups |
| I-004/005/006/007 (research directions) | ⬜ tree-only (parked for future cycles) — recorded in subtree, NOT chapter text |
| I-008–I-011, I-014 | ⬜ tree-only / parked |
| I-012 (effort-reframe) | ⬜ tree-only (cert 0.10, parked) |
| I-013 (null: subjective-objective concordant) | ⬜ tree-only — balanced by @oq:fatigue-subjective-objective; not integrated as a claim |

ch30 tier: NONE (definitional/clinical-symptom topic — no ≥3-step biochemical drug-interception cascade). 5d/5c LEGIT-SKIP expected.

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

Synthesis artifact: `tmp/synthesis-fatigue-2026-08-11.md`. Phase 2 decision recorded 2026-08-11 (10 papers, 0 null, 0 <0.40 → PROCEED, clinical relevance HIGH).

## Certainty Bump Log (Phases 6, 7)
| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|---|---|---|---|---|---|
| (none) | 6 | — | — | 0 | Phase 6 = zero-edit adaptation (additive measurement/severity content, no contradicted/reinforced pre-existing certainty-carrying claim); no bump. |
| (none) | 7 | — | — | 0 | Phase 7 = zero-overlap (3 new entries orthogonal to mechanistic/symptom-structure registry body); no reinforcement/conflict → no bumps/reductions. |

## Notes

**Related plans (prior work, do not duplicate):**
- `ops/plans/fatigue-pem-relationship-integration-plan.md` (2026-08-11, commit 0f57a6a1) — fatigue-vs-PEM definitional/dissociation structure, already in ch03 sec-01-pem. This plan does NOT re-run that; it covers fatigue *as its own symptom* (sec-00).
- `ops/plans/fatigue-no-inflammation-omdal-2026-integration-plan.md` (status 🔵 in progress at commit, 2026-06-01) — fatigue-vs-CNS-inflammation *mechanism* in ch06/ch15. Scope guard: mechanism, not clinical symptom treatment.
- `ops/plans/exercise-recovery-pem-integration-plan.md` (2026-05) — PEM recovery/CPET; do not re-add.

**Scope guard:** This cycle covers the clinical *symptom* treatment of fatigue (definition/measurement/prevalence/subtypes) in ch03; it deliberately avoids (a) the fatigue-vs-PEM dissociation structure (sec-01-pem, done), and (b) the fatigue-vs-inflammation biochemical mechanism (Omdal, ch06/ch15). Any mechanistic claim that emerges with a specifiable ≥3-step cascade routes via ch30 Category Router in Phase 3/5d.

## Phase Ledger (Phase 12.5 completion gate — populated by governor)
| Phase | State | Evidence |
|---|---|---|
| 0 | RAN | this plan created + validated (tracking table rows present, no empty statuses); scope confirmed by user (Standalone ch03 fatigue section) |
| 1 | RAN | ops/research/search-log-fatigue-2026-08-11.md + literature + integration-guide; 10 bib entries (diagnosis-assessment.bib); 10 appendix-h sections; scrape-registry updated; keys verified case-exact |
| 2 | RAN | tmp/synthesis-fatigue-2026-08-11.md; decision PROCEED + Active Caps; clinical relevance HIGH |
| 3 | RAN | sec-00-fatigue/ (9 envs + 4 subsec aggregators + synthesis); hypothesis-registry +3 entries; 8 citations resolve |
| 3a | RAN | build PASS (0 errors) after Phase 3; fixed #hypothesis-box→#hypothesis + import depths |
| 3b | RAN | non-treatment topic → severity-only gate; all 9 envs severity-covered (6 added at gate); 0 blocked |
| 3.5 | RAN | 9/9 envs have one plain-language *Consequence:* |
| 4 | RAN | ops/brainstorms/brainstorm-fatigue-2026-08-11.md (14 ideas, origin-tagged) |
| 4a | RAN | subtrees/fatigue.md (14 nodes) + root index row |
| 5 | RAN | triage: I-001/002/003 dedup covered by Phase 3 envs; research directions tree-only; ch30 tier NONE |
| 5d | LEGIT-SKIP | no ≥3-step drug-interception cascade (clinical-symptom topic) |
| 5c | LEGIT-SKIP | non-pharmacological (no medication) |
| 5b | RAN | build PASS (0 errors) after Phase 5 |
| 5a | RAN | falsifiability-auditor: 2 hypotheses tightened to fully-falsifiable; registry aligned; 0 unfalsifiable |
| 5z | RAN | glossary: "Fatigability" added to src/main/resources/glossary.json (1301 keys, valid) |
| 6 | RAN | tmp/synonym-map-fatigue.md; zero-edit adaptation (additive content; criterion recitations undisturbed); 0 bumps |
| 7 | RAN | tmp/compat-audit; 3 new entries independent (0 reinforcement/feed-in/conflict); bump log 0 |
| 8 | RAN | final build PASS (0 errors); cycle files staged by explicit path |
| 9 | RAN | quality flags NONE (no BLOAT/WEAK-EVIDENCE/CLINICAL-RISK/G-UNSUSTAINED); net certainty +9 envs; 3 falsifiable predictions |
| 10 | RAN | tmp/coherence-audit; 1 framing fix (sec-00 intro vs sec-01 PEM-hallmark); 0 contradictions |
| 10a | RAN | #synthesis <syn:fatigue-not-unitary> (subsec-04); cert 0.60-0.65 annotation |
| 10b | LEGIT-SKIP | no framing implication (downstream symptom-structure synthesis) |
| 11 | RAN | adversarial review-fix-build converged Round 1 (0 CRITICAL/HIGH); SLOW-CONVERGENCE not fired |
| 12 | RAN | changelog v7.15 added (changelog-tspo-pet-section.typ, per established per-cycle pattern) |
| 12.5 | RAN | this ledger — 0 OMISSION |
| 13 | RAN | commit eb2ea1e2 (content(fatigue-ch03), 30 files, +1667 lines); post-commit build PASS 0 err; shared-file entries verified in HEAD (glossary Fatigability, registry fatigue block, 10 bib keys); scratch pointers wip/fatigue-pre3 + -pre6 deleted; foreign parallel file src/main/js/glossary-tooltip.js left unstaged per user decision |

Verification: build 0 errors at all checkpoints (3a, 5b, 8, after 10a/11); 8/8 citations resolve case-exact; every new hypothesis has falsifiable prediction; every new env has Consequence + Severity applicability; registry updated (3 entries aligned to chapter labels); glossary JSON valid.
