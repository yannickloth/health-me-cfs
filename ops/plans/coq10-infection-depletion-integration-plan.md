# CoQ10 Infection-Driven Depletion Integration Plan

**Purpose:** Evaluate whether documented CoQ10 deficiency in ME/CFS (Maes 2009) can be causally linked to *ongoing pathogen-induced oxidative consumption* — i.e., depletion as an active infection-driven process rather than a static deficiency or a purely mitochondrial-biogenesis defect. Distinct from the treatment-focused `q10-ubiquinol` plan.

**Relationship to existing work:** `q10-ubiquinol-integration-plan.md` covers CoQ10 as a mitochondrial-support supplement (dose-response, bioavailability, ubiquinol vs ubiquinone). This plan covers the *upstream cause* of the deficiency — the depletion mechanism — not supplementation.

**Target chapters (provisional, pending Phase 2):**
- Part 2: ch06/ch16 (mitochondrial dysfunction, oxidative stress) — depletion mechanism
- Part 2: ch07 (immune/viral reactivation) — pathogen-driven oxidative load
- Part 4: hypothesis registry (infection→CoQ10-consumption causal hypothesis)

**Pre-identified hypotheses:**
- Ongoing pathogen persistence/reactivation drives sustained ROS → accelerated CoQ10 oxidative consumption (preliminary certainty: unknown, to be set Phase 2)
- CoQ10 deficiency is (partly) a consequence of infection-driven consumption rather than solely a biogenesis defect

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed (core causal hypothesis is indirect → cap individual certainty ~0.40)
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

## Phase progress
- Phase 1: 10 papers → `bib/immune.bib` (keys: Maes2009CoQ10, Maes2009IOandNS, Maes2011DepressionCFS, Morris2013CoQ10, Morris2014Mito, Maes2014OSEs, Schreiner2020HHV6Mito, Maes2021Reification, Al-Hakeim2023LongCOVIDOx, Laredj2014CoQBiosynth); appendix-h appended; search log `ops/research/search-log-coq10-infection-depletion-2026-07-17.md`.
- Phase 2: 5 strong, 5 medium, 0 weak, 0 null. Decision **PROCEED**. Clinical relevance MEDIUM. Contradictions: 1 pair (consumption vs biosynthesis, ≤0.15 band → present both).

**Tracking table:**

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|------------------|------|----------|--------|-------|
| P3 | Infection-driven oxidative consumption of CoQ10 | 1 | 0.40 | ✅ done | Phase 3 → @spec:coq10-infection-consumption (ch07) |
| P3 | Consumption vs biosynthesis discrimination | crit | n/a | ✅ done | Phase 3 → @oq:coq10-consumption-vs-biosynthesis (ch07) |
| 9.1/9.2 | Ubiquinol:ubiquinone redox ratio + MDA/CoQ10 index biomarker | 1 | 0.45 | ⬜ pending | Phase 5 → #prediction; distinguishes consumption from biosynthesis |
| 10.1/11.1 | Null: CoQ10 deficiency may be mild/nonspecific epiphenomenon | crit | 0.50 | ⬜ pending | Phase 5 → #limitation (epistemic balance) |
| 1.1 | Consumption>regeneration as core defect | — | 0.30 | ⏭️ covered | covered-by @spec:coq10-infection-consumption |
| 7.2 | DAG consumption vs biosynthesis | — | 0.35 | ⏭️ covered | covered-by @oq:coq10-consumption-vs-biosynthesis |
| 8.1 | Long COVID antioxidant-depletion parallel | — | 0.40 | ⏭️ covered | already cited in @spec (Al-Hakeim2023LongCOVIDOx) |
| 12.1/12.2/12.4 | Evidence-quality concerns | — | — | ⏭️ covered | covered in @spec limitation + @oq |
| 1.2–8.3 (rest) | see subtree | 2/3 | ≤0.40 | ↩️ tree-only | recorded in subtree for future cycles |

**Notes (continued):**
- Phase 4: brainstorm `ops/brainstorms/brainstorm-coq10-infection-depletion-2026-07-17.md`, 44 ideas (6 hyp, 8 tx, 30 other).
- Phase 4a: subtree `subtrees/coq10-infection-depletion.md`, 44 nodes; root index updated (4 integrated).
- Phase 5: 2 new environments (@pred:coq10-redox-biomarker Tier-1 + null #limitation critical-cat) in ch07; rest covered-by/tree-only.
- Phase 5a: 6 environments audited (3 fully falsifiable, 0 weak, 0 unfalsifiable, 3 N/A OQ/limitation). No fixes needed.
- Phase 6: 1 reinforcement (ch30 biomarker — added @Maes2009CoQ10 cite + cross-refs, fixed run-on sentences); ch06-sec10/ch15 overlaps noted, no action (already cover CoQ10 as antioxidant/treatment; incoming cert 0.55 = citation-only tier, no bumps). Synonym map not needed (single-mechanism topic).
- Phase 7: 6 pairs audited (3 reinforcement, 3 feed-into, 0 conflict); 0 bumps (shared upstream driver → not independent convergence), 0 reductions. Compat audit `tmp/compat-audit-coq10-infection-depletion-2026-07-17.md`.
- Phase 5 integration deliberately disciplined: 2 new environments (1 Tier-1 biomarker prediction + 1 critical-category null limitation); remainder covered-by Phase 3 or tree-only. Rationale: MEDIUM relevance, indirect evidence — avoid bloat.

**Notes:**
- MIXED tree — a parallel `glycolytic-reprogramming-tickborne` cycle is active. No shared-branch WIP commits; rollback = `git checkout <ref> -- <file>` (NEVER reset/rebase/amend); all phases scoped by explicit file lists, NOT `git diff`.
- Shared files this cycle may touch: `bib/immune.bib` or `bib/general.bib`, `appendix-h-annotated-bibliography.typ`, `hypothesis-registry.typ`, `shared/changelog.typ`. Track added entries by key/label.
- Parent topic: root (standalone). Related: `q10-ubiquinol`, `oxidative-stress` (if present).
