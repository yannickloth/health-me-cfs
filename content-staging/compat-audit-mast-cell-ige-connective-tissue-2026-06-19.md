# Compatibility Audit: Mast Cell IgE → Connective Tissue

**Date:** 2026-06-19
**Agent:** main session (manual audit — project-specific `hypothesis-compatibility-auditor` not available as Task agent)
**New hypotheses audited:** 6

---

## Pairwise Relationship Matrix

| New hypothesis | cert | Existing hypothesis | cert | Relation | Rel Cert | Detail |
|---------------|------|-------------------|------|----------|----------|--------|
| spec:histaminylation-collagen | 0.30 | EBV-Directed Mast Cell Degranulation as MMP-9 Source (S, 0.35) | 0.35 | Reinforcement | 0.60 | Independent MC→CT degradation mechanisms converging on CT weakening |
| spec:histaminylation-collagen | 0.30 | Mast Cell-Targeted MMP Inhibition Protocol (H, 0.50) | 0.50 | Reinforcement | 0.70 | Histaminylation is parallel MMP-independent route to same endpoint |
| spec:acquired-progressive-hypermobility-mc | 0.35 | Matrix Stiffness-Mast Cell Priming (H, 0.45) | 0.45 | Reinforcement | 0.55 | Both are MC→CT degradation positive-feedback loops |
| spec:acquired-progressive-hypermobility-mc | 0.35 | Connective Tissue Disorders as Susceptibility Factor (H, —) | — | Feed-into | 0.60 | Acquired mechanism provides pathway from susceptibility to progression |
| spec:acquired-progressive-hypermobility-mc | 0.35 | EBV-Directed Mast Cell Degranulation as MMP-9 Source (S, 0.35) | 0.35 | Feed-into | 0.65 | EBV→MC→MMP-9 is one trigger pathway feeding acquired hypermobility |
| spec:acquired-progressive-hypermobility-mc | 0.35 | Mechanical Stress-Modulated MC Threshold (H, 0.50) | 0.50 | Reinforcement | 0.50 | Mechanical + biochemical MC activation both feed CT degradation |
| spec:cardiac-ecm-mc-prototype | 0.60 | Mast Cell-Targeted MMP Inhibition Protocol (H, 0.50) | 0.50 | Reinforcement | 0.75 | Cardiac model provides strongest in vivo precedent for MC→MMP→CT |
| spec:cardiac-ecm-mc-prototype | 0.60 | ch39 mast cell-ECM feedback ODE (model) | — | Feed-into | 0.65 | Janicki2006 provides in vivo validation of ODE model parameters |
| spec:periodontitis-ige-ct-model | 0.55 | Mast Cell-Targeted MMP Inhibition Protocol (H, 0.50) | 0.50 | Reinforcement | 0.70 | Periodontitis provides human precedent for doxycycline MMP inhibition |
| spec:periodontitis-ige-ct-model | 0.55 | Post-Exertional MMP Surge (H, 0.55) | 0.55 | Reinforcement | 0.45 | Both propose MMP as mechanistic mediator of CT degradation |
| oq:omalizumab-ct-therapeutic-probe | n/a | NCS-1/Lithium MC Stabilizer (O, 0.20) | 0.20 | Reinforcement | 0.40 | Different routes to MC stabilization: IgE pathway vs GPCR-PIP2 axis |
| oq:ige-pathway-ct-mcas | n/a | NCS-1/Lithium MC Stabilizer (O, 0.20) | 0.20 | Reinforcement | 0.35 | Distinct from lithium mechanism (targets Gαq-PLC, not FcεRI) |
| lim:ct-degradation-non-mc | n/a | Mast Cell-Targeted MMP Inhibition Protocol (H, 0.50) | 0.50 | Conflict | 0.40 | Limitation argues non-MC mechanisms may dominate CT degradation |
| lim:dominant-mc-pathway-non-ige | n/a | oq:omalizumab-ct-therapeutic-probe | n/a | Conflict (constraint) | 0.50 | If IgE is minor pathway, omalizumab probe has low signal |
| lim:ct-degradation-non-mc | n/a | HIF-1alpha Ioform Targeting (H, 0.40) | 0.40 | Reinforcement | 0.35 | Both identify non-MC MMP activation routes (HIF-1α vs metabolic/inflammatory) |

---

## Reinforcement Pairs (R): 8

All reinforcement pairs share convergent mechanisms (MC→CT degradation via MMP, or alternative MC stabilization approaches). None reach the threshold for certainty bumps because:
- New hypotheses are low certainty (0.30–0.60), so mutual reinforcement is within noise
- Both parties in each pair have certainties below the 0.50 feed-in threshold
- Existing higher-certainty hypotheses provide convergent validation but don't constitute independent lab/different-method replication

## Feed-Into Pairs (F): 3

| Chain | Description |
|-------|-------------|
| EBV→MC→MMP-9 → spec:acquired-progressive-hypermobility-mc | EBV is one trigger pathway feeding the broader acquired hypermobility model |
| Cardiac ECM model → ch39 mast cell-ECM ODE | Janicki2006 in vivo data validates ODE model's MC→ECM kinetics |
| CT Susceptibility Hypothesis → spec:acquired-progressive-hypermobility-mc | Acquired mechanism bridges genetic susceptibility to clinical progression |

## Conflict Pairs (C): 2

| Pair | Resolution |
|------|-----------|
| lim:ct-degradation-non-mc vs hyp:mast-cell-MMP-inhibition (0.50) | Productive tension — limitation acknowledges non-MC MMP sources. Both can be true: MC is one contributor among several. The limitation's caveat "MC may be one contributor among several" is the correct framing. |
| lim:dominant-mc-pathway-non-ige vs oq:omalizumab-ct-therapeutic-probe | This is a design constraint, not a fatal contradiction. The omalizumab probe only tests the IgE pathway — this limitation correctly notes that a negative result does not falsify the MC→CT chain itself, only the IgE-specific route. |

## Independent Pairs

The 6 new hypotheses interact with a subset of the ~100+ registry hypotheses. Most registry entries (autoantibody, metabolic, neurological, sleep, genetic hypotheses) are in independent domains with no shared mechanism beyond very general MC-ME/CFS comorbidity. Pairs not listed above are classified as independent with high confidence — no shared upstream mechanisms, common preconditions, or molecular pathways.

## Certainty Adjustment Proposals

**None recommended.** No new hypothesis has certainty ≥ 0.45 AND an existing convergent hypothesis with independent-methods support ≥ 0.50. The per-cycle cap (max one bump across Phases 6+7) would absorb any single eligible bump, and none of the reinforcement pairs meet the "different lab, different method" threshold.

**Justification:**
- spec:cardiac-ecm-mc-prototype (0.60) is the strongest, but it reinforces the broadly framed `hyp:mast-cell-MMP-inhibition` (0.50) rather than converging on a specific independently-supported mechanism
- The cardiac/periodontitis models are cross-disease analogies, not direct ME/CFS replications
- Histaminylation is a novel mechanism with no existing registry convergence partner

## Summary

| Category | Count |
|----------|-------|
| Reinforcement pairs | 8 |
| Feed-into pairs | 3 |
| Conflict pairs | 2 |
| Independent pairs | majority of registry (~90+) |
| Certainty adjustments proposed | 0 |
| Certainty bumps meeting thresholds | 0 |
| Certainty reductions warranted | 0 |
| Tensions flagged | 2 (no resolution needed — both are correctly framed as constraints/limitations) |
