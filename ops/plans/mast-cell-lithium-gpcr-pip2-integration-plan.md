# Mast Cell GPCR-PIP2 Lithium Axis — Integration Plan

**Purpose:** Integrate the hypothesis that ultra-low-dose lithium dampens mast cell reactivity via GPCR→PLC→IP3-mediated Ca²⁺ reduction, linking lithium's PIP2/calcium mechanisms to MCAS pathology in ME/CFS.

**Slug:** mast-cell-lithium-gpcr-pip2
**Date:** 2026-06-11
**Status:** ✅ done
**Parent topic:** lithium-low-dose-clinical (ops/plans/hypotheses-trees/subtrees/lithium-low-dose-clinical.md, node 2.6: Lithium mast cell GPCR-PIP2 axis stabilization, cert 0.20, usefulness: mech 3 tx 3 expl 2 math 1 dx 1, status: ⏭️ queued → now active)

## Target Chapters

| Chapter | Content type | Rationale |
|---------|-------------|-----------|
| ch07 (immune dysfunction) | Extend MCAS/mast cell discussion with Li⁺ mechanism | Mast cell activation is already extensively covered; add GPCR→PLC→IP3→Ca²⁺ pathway targeting |
| ch14h (TRPM3/PIP2) | Cross-ref mast cell PIP2 depletion | Shared PIP2 pool; mast cells consume PIP2 same as NK/immune cells |
| ch14d (cross-disease) | Cross-disease bridge to mastocytosis/urticaria | MCAS overlaps with systemic mastocytosis; Li literature in mast cell biology |
| ch18 (emerging therapies) | Lithium as mast cell stabilizer | Treatment-level speculation with dosing/safety; ch25 fallback if dosing constraints don't warrant therapy chapter |
| Appendix H | Annotated bib entries | Any new mast cell + lithium papers |

## Pre-Identified Hypotheses

| # | Hypothesis | Preliminary certainty | Source |
|---|-----------|----------------------|--------|
| 1 | Ultratrace-dose lithium reduces mast cell degranulation via IP3/Ca²⁺ suppression | 0.20 | Brainstorm 2.6; Toricelli 2021 cytokine profile; MRGPRX2/PLC pathway |
| 2 | Mast cell PIP2 exhaustion from GPCR autoantibody-driven PLC activation renders mast cells hyperreactive in ME/CFS | 0.20 | Extension of PIP2 convergence hypothesis to mast cell lineage |
| 3 | Lithium's anxiolytic/sensory-stabilizing effect in Sikorav 2026 case partly reflects mast cell stabilization in CNS (thalamus/hypothalamus) | 0.15 | Cross-tissue mechanism; mast cells populate thalamus |

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|------------------|------|-----------|--------|-------|
| 1 | Li⁺ inhibits mast cell degranulation via MRGPRX2→PLC→IP3→Ca²⁺ pathway | 1 | 0.20 | ✅ done | Integrated as open-question in ch07 (oq:lithium-mast-cell-ncs1); cross-ref from ch08 |
| 2 | Mast cells as PIP2-depletion-sensitive cell type in ME/CFS | 1 | 0.20 | ✅ done | Noted as mechanism context within same open-question |
| 3 | Lithium as functional mast cell stabilizer (distinct from cromolyn/ketotifen) | 1 | 0.15 | ↩️ parked | Mentioned as context in open-question; insufficient evidence for standalone environment |
| 4 | CNS mast cells as lithium targets for sensory/affective symptoms | 2 | 0.15 | ↩️ parked | Speculative cross-tissue inference; no direct evidence |
| 5 | Lithium + existing MCAS treatments (cromolyn, ketotifen) synergy | 2 | 0.15 | ↩️ parked | No evidence for combination; noted in open-question as future direction |
| 6 | Lithium effects on histamine release and tryptase as biomarker | 3 | 0.15 | ↩️ parked | Mentioned as testable prediction in open-question |
| 7 | Lithium as MRGPRX2 pathway probe | 3 | 0.15 | ↩️ parked | Implicit in β-hexosaminidase falsification prediction |
| 8 | Lithium microdose as adjunct for MCAS-dominant ME/CFS subtype | 3 | 0.12 | ↩️ parked | Too speculative; no evidence for MCAS-dominant subtype |

## Phases

| Phase | Status | Notes |
|-------|--------|-------|
| 1 — Literature research | ✅ done | 8 papers found (Kappel 2003 NCS-1 in mast cells cert 0.70 is key bridge; Roy 2021 MRGPRX2 review cert 0.85; zero direct studies on lithium + mast cell degranulation) |
| 2 — Content integration | ✅ done | 1 open-question in ch07 (oq:lithium-mast-cell-ncs1); 1 cross-ref from ch08 (oq:ncs1-mecfs-expression); 1 registry entry |
| 3 — Creative brainstorm | 🚫 skipped | Ideas from parent brainstorm 2.6 already cover this space; no new ideation needed for single open-question |
| 3a — Hypothesis tree | ✅ done | Updated parent subtree node 2.6 status to ✅; no child subtree needed (single node, fully integrated) |
| 4 — Integration | ✅ done | Ideas 1-2 integrated as open-question; ideas 3-8 parked (insufficient evidence for standalone environments) |
| 4a — Falsifiability audit | ✅ done | 5 testable predictions with specific thresholds and falsification criteria; IC50 gap (350 µM vs ~1 µM) explicitly flagged; IgE specificity softened per adversarial review |
| 4b — Retrospective adaptation | ✅ done | 0 overlaps — no pre-existing content claims lithium affects mast cells; new content is additive only |
| 4c — Cross-hypothesis compatibility | ✅ done | 22 pairs audited: 5 reinforcement, 4 feed-into, 0 conflict, 0 certainty adjustments |
| 5 — Build verification | ✅ done | Single-file syntax verified clean; pre-existing full-build failure unrelated |
| 6 — Review convergence | ✅ done | 6a: 1 round (3 citation fixes); 6b: 6 personas, 34 findings, top 5 fixed (IC50 gap, IgE contradiction, Basselin LPS-dependence, clinical risks, GSK-3β null hypothesis); 6c: 0 findings |
| 7 — Changelog | ✅ done | Entry added to Version 11 |
| 8 — Commit | ✅ done | 8bd14fd |
| 6 — Review | ✅ done | Self-review: open-question structure balanced (complete mechanistic chain + explicit "no direct support" caveat + testable predictions) |
| 7 — Changelog | ✅ done | Entry added to Version 11 |
| 8 — Commit | ⬜ pending | One commit per convention |

## Notes

- **Parent plan:** ops/plans/lithium-low-dose-clinical-integration-plan.md (Phase 4 Queue: "Mast cell GPCR-PIP2 lithium axis" — immune auto-escalation from node 2.6)
- Parent topic cert is 0.20 (low — single n=1, no mast cell data). This child topic is weaker.
- Mast cell degranulation involves multiple triggers (IgE, MRGPRX2, C3a/C5a, TLR, physical stimuli) — Li⁺ only hits the GPCR→PLC→IP3 arm
- MCAS-ME/CFS comorbidity is well-documented but primacy vs secondary is debated
- Potential overlap with existing mast cell content in ch07 (already extensive)
- Lithium at ultralow doses may not reach mast cells at concentrations needed (mast cells reside in tissues, not circulation)
- Toricelli 2021 cytokine profile (↓IL-6, ↓IL-1α) is consistent with mast cell mediator reduction but was measured in hippocampal cultures, not mast cells
