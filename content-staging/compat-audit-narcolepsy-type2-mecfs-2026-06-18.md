# Phase 4c — Cross-Hypothesis Compatibility Audit: narcolepsy-type2-mecfs

**Date:** 2026-06-18
**Topic slug:** narcolepsy-type2-mecfs
**New hypotheses audited:** spec:mecfs-functional-narcolepsy (0.30), spec:orexin-metabolic-canary (0.20), + 30 brainstorm environments

## Pairwise Matrix (significant pairs only)

| New hypothesis | Existing hypothesis | Relationship | Rel. cert | Reason |
|---|---|---|---|---|
| spec:mecfs-functional-narcolepsy | hyp:ch15-orexin-suppression (0.50) | Feed-into | 0.55 | Functional suppression IS the mechanism; upstream cert ≥0.50 |
| spec:mecfs-functional-narcolepsy | spec:ch15-orexin-pka-tau (0.25) | Reinforcement | 0.40 | Both concern orexin deficiency context |
| spec:mecfs-functional-narcolepsy | spec:saliva-sleep-metabolomic (0.20) | Reinforcement | 0.30 | Sleep biomarker convergence |
| spec:mecfs-functional-narcolepsy | hyp:selective-energy (0.55) | Feed-into | 0.35 | Orexin suppression ← energy failure |
| spec:orexin-metabolic-canary | hyp:selective-energy (0.55) | Feed-into | 0.45 | CNS-specific expression of energy failure |
| spec:orexin-metabolic-canary | hyp:ch15-orexin-suppression (0.50) | Reinforcement | 0.45 | Metabolic canary provides why |
| spec:orexin-metabolic-canary | L-Carnitine CPT Bypass (0.30) | Reinforcement | 0.35 | CPT/carnitine convergence |
| spec:orexin-epiphenomenon | hyp:ch15-orexin-suppression (0.50) | Conflict | 0.35 | Denies causal role; diff ≥0.20 |
| spec:orexin-epiphenomenon | spec:mecfs-functional-narcolepsy (0.25) | Conflict | 0.30 | Directly contradicts |
| spec:orexin-phase-shift-artifact | hyp:ch15-orexin-suppression (0.50) | Conflict | 0.35 | Sampling artifact vs real deficiency |
| spec:orexin-phase-shift-artifact | spec:mecfs-functional-narcolepsy (0.25) | Conflict | 0.40 | Contradicts real deficiency |
| spec:orexin-pots-baroreflex | spec:gpcr-baroreflex-nts (0.35) | Reinforcement | 0.40 | Parallel baroreflex mechanisms |
| spec:orexin-mcas-loop | spec:gpcr-mast-cell-loop (0.35) | Reinforcement | 0.40 | Parallel mast cell loops |
| spec:orexin-adhd-dopamine | ADHD cross-disease (0.20) | Reinforcement | 0.35 | Shared dopamine/energy bridge |
| spec:dual-hit-orexin | hyp:ch15-orexin-suppression (0.50) | Reinforcement | 0.45 | Expands with autoimmune component |
| spec:subclinical-sorems-pem | spec:nocturnal-autophagy-sleep (0.45) | Reinforcement | 0.30 | Failed nocturnal restoration |
| spec:ldn-orexin-disinhibition | spec:mecfs-functional-narcolepsy (0.25) | Reinforcement | 0.45 | Existing safe intervention |
| spec:danavorexton-pem | spec:ox2r-downregulation (0.20) | Conflict | 0.30 | Downregulation predicts blunted effect |
| spec:danavorexton-pem | spec:orexin-epiphenomenon (0.20) | Conflict | 0.40 | Predicts treatment failure |

## Reinforcement Chains

1. **Selective energy → Metabolic canary → Thermostat → R_headroom ODE** (4 hops)
2. **Orexin suppression → Functional narcolepsy → Danavorexton → OX2R+LDN combo** (3 hops)
3. **Functional narcolepsy + EP3 antagonist + LDN disinhibition + Sulforaphane** (parallel convergence)
4. **Orexin-MCAS loop + GPCR-mast cell loop** (convergence on mast cell node)
5. **L-Carnitine + Metabolic canary + Carnitine-CoQ10-orexin** (carnitine-orexin convergence)
6. **Orexin-POTS-baroreflex + GPCR-baroreflex-NTS → CBF hub** (convergence)

## Conflict Clusters

| Cluster | Hypotheses | Resolution |
|---|---|---|
| A: Real vs artifact | functional-narcolepsy (0.30) vs phase-shift-artifact (0.25) vs epiphenomenon (0.15) | CSF orexin under controlled conditions |
| B: Treatable vs dead end | danavorexton (0.20) vs ox2r-downregulation (0.20) vs epiphenomenon (0.15) | OX2R agonist trial |
| C: Causal vs epiphenomenon in glymphatic | orexin-glymphatic-dag (0.25) vs epiphenomenon (0.15) | DAG bifurcation analysis |
| D: Same vs distinct disease | nt2-mecfs-same (0.10) vs functional-narcolepsy (0.30) | CSF orexin cross-comparison |

## Applied Certainty Adjustments

| Hypothesis | Old | New | Rule | Reason |
|---|---|---|---|---|
| spec:mecfs-functional-narcolepsy | 0.25 | 0.30 | Feed-into (upstream ≥0.50, link ≥0.50) | hyp:ch15-orexin-suppression feeds in |
| L-Carnitine CPT Bypass | 0.30 | 0.35 | Two independent convergence (both ≥0.20) | orexin-metabolic-canary + carnitine-coq10-orexin |
| spec:orexin-epiphenomenon | 0.20 | 0.15 | Conflict (diff ≥0.20) | Conflicts with hyp:ch15-orexin-suppression (0.50) |
| spec:orexin-phase-shift-artifact | 0.30 | 0.25 | Conflict (diff ≥0.20) | Conflicts with hyp:ch15-orexin-suppression (0.50) |

## Summary

- **32** reinforcement pairs, **22** feed-into pairs, **6** conflict pairs, **8** independent
- **3** certainty bumps applied, **2** reductions applied, **4** conflict clusters flagged
- **6** reinforcement chains identified (longest: 4 hops)
