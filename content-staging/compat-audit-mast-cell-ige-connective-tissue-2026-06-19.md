# Compatibility Audit: Mast Cell IgE → Connective Tissue

**Date:** 2026-06-19

## Pairs Found

| New hypothesis | Existing hypothesis | Relationship | Certainty | Rationale |
|---------------|-------------------|-------------|-----------|-----------|
| spec:histaminylation-collagen (0.30) | hyp:mast-cell-MMP-inhibition (ch07, 0.50) | Reinforcement | 0.70 | Independent mechanisms converging on CT degradation |
| spec:cardiac-ecm-mc-prototype (0.60) | ch39 mast cell-ECM feedback ODE | Feed-into | 0.65 | Janicki2006 provides in vivo validation for ODE model |
| spec:acquired-progressive-hypermobility-mc (0.35) | hyp:matrix-stiffness-mast (ch07, 0.45) | Reinforcement | 0.55 | Both describe MC→CT degradation positive-feedback cycles |
| spec:histaminylation-collagen | spec:acquired-progressive-hypermobility-mc | Feed-into | 0.80 | Histaminylation is one mechanism within broader acquired hypermobility model |
| lim:ct-degradation-non-mc | hyp:mast-cell-MMP-inhibition (0.50) | Conflict | 0.40 | Limitation argues non-MC mechanisms may dominate; hypothesis assumes MC primary |
| lim:dominant-mc-pathway-non-ige | oq:omalizumab-ct-therapeutic-probe | Conflict (constraint) | 0.50 | Constrains omalizumab probe interpretability if IgE pathway is minor |
| spec:periodontitis-ige-ct-model (0.55) | ch39 mast cell-ECM feedback ODE | Reinforcement | 0.50 | Periodontitis provides human precedent for MC→MMP→CT chain |

## Summary

| Category | Count |
|----------|-------|
| Reinforcement pairs | 4 |
| Feed-into pairs | 2 |
| Conflict pairs | 2 |
| Independent (examined, close calls) | 0 |

## Certainty Adjustments

None proposed. No new evidence with certainty ≥0.60 that drives cross-hypothesis bumps beyond what was captured in Phase 3/5 integration. Per-cycle cap prevents stacking.
