# Pathway-to-Drug Trace: Noradrenergic Full Axis

**Hypothesis:** A selective central norepinephrine deficit arises from one or more upstream nodes (copper-dependent DBH synthesis, BH4 cofactor supply, ATP-dependent vesicular release, NET reuptake capacity, adrenergic-receptor autoantibody, locus-coeruleus inflammation) and produces downstream sleep, pain, and cognitive consequences.
**Cascades certainty:** 0.30–0.45 (per node) | **ch30 category:** sec-06 (autonomic/NE signalling) + sec-04 (neuroinflammatory, LC arm) | **Date:** 2026-09-28

## Cascade Branches

### Branch A — Synthesis node (copper → DBH → NE)

*Cascade:* dietary/functional copper deficit → reduced copper delivery to DBH → reduced dopamine β-hydroxylation → low NE with preserved dopamine → reduced central noradrenergic tone (@Lutsenko2019CopperNoradrenergic; human proof-of-concept: congenital DBH deficiency @Senard2006DBHdeficiency).

| Step | Node | Drug(s) | Drug cert | Specificity | Cumulative cert | Chapter file? |
|------|------|---------|-----------|-------------|-----------------|---------------|
| A1 | Copper/DBH | copper (only if deficient) | 0.30 | 0.5 | 0.15 | ops-only (safety) |
| A2 | Downstream of DBH | droxidopa (L-DOPS) | 0.30 | 0.6 | 0.18 | ops-only |

### Branch B — Cofactor node (BH4 → TH flux)

*Cascade:* oxidative stress → BH4 oxidation to BH2 → reduced tyrosine hydroxylase flux → reduced catecholamine synthesis → NE (and DA) deficit (@Rivera2017BH4deficiency).

| Step | Node | Drug(s) | Drug cert | Specificity | Cumulative cert | Chapter file? |
|------|------|---------|-----------|-------------|-----------------|---------------|
| B1 | BH4 supply | sapropterin (BH4) | 0.25 | 0.4 | 0.10 | ops-only |
| B2 | Downstream | droxidopa | 0.30 | 0.6 | 0.18 | ops-only |

### Branch C — Release node (ATP → vesicle → NE)

*Cascade:* low neuronal ATP → impaired vesicular proton gradient/VMAT2 loading and local activity-driven ATP for exocytosis → reduced NE release per action potential (@Rangaraju2014ActivityDrivenATPsynapse).

| Step | Node | Drug(s) | Drug cert | Specificity | Cumulative cert | Chapter file? |
|------|------|---------|-----------|-------------|-----------------|---------------|
| C1 | Synaptic NE dwell | atomoxetine, solriamfetol | 0.45 | 0.7 | 0.31 | full cascade (existing @sec:noradrenergic-node; sec-12 entries exist) |
| C2 | Postsynaptic PFC | guanfacine (α2A) | 0.45 | 0.6 | 0.27 | full cascade (@spec:guanfacine-a2a-pfc) |

### Branch D — Reuptake node (NET genotype)

*Cascade:* SLC6A2 loss-of-function → reduced surface NET → altered synaptic NE clearance → orthostatic intolerance (@Hahn2003SLC6A2NET).

| Step | Node | Drug(s) | Drug cert | Specificity | Cumulative cert | Chapter file? |
|------|------|---------|-----------|-------------|-----------------|---------------|
| D1 | NET | atomoxetine (NRI) | 0.45 | 0.7 | 0.31 | full cascade |
| D2 | NET | reboxetine/viloxazine (NRI) | 0.30 | 0.7 | 0.21 | ops-only |

### Branch E — Receptor node (adrenergic autoantibody)

*Cascade:* adrenergic-receptor autoantibody → altered receptor activation → reduced effective noradrenergic signalling independent of NE supply (@Hartwig2020Beta2AdrenergicIgG; assay @Hall2022GPCRAutoantibodiesPOTS).

| Step | Node | Drug(s) | Drug cert | Specificity | Cumulative cert | Chapter file? |
|------|------|---------|-----------|-------------|-----------------|---------------|
| E1 | Autoantibody | immunoadsorption / IVIG | 0.25 | 0.4 | 0.10 | ops-only |
| E2 | Receptor signalling | guanfacine (α2A, postsynaptic) | 0.45 | 0.5 | 0.20 | ops-only |

### Branch F — Locus coeruleus (neuroinflammation)

*Cascade:* neuroinflammation → LC dysfunction → reduced noradrenergic projection output (@Ahmad2026LocusCoeruleusMS). Pruned: no LC-specific drug; cumulative cert < 0.05 for an intercepting agent.

## Differential Predictions

| Drug→node pair | If works | If fails | Inference cert | Off-target confounds | Discriminating? |
|----------------|----------|----------|----------------|---------------------|-----------------|
| Droxidopa → below-DBH | NE synthesis can be restored by DBH/VMAT2 bypass | Bottleneck is AADC or postsynaptic | 0.25 | Peripheral α1 vasoconstriction; supine HTN | Partial (probe for pre/post-DBH) |
| Atomoxetine → NET | NE release is present but under-sustained | Lesion presynaptic (synthesis) or postsynaptic | 0.30 | Some DAT affinity; POTS tachycardia | Yes vs droxidopa |
| Guanfacine → PFC α2A | PFC signalling is the cognitive bottleneck | Cognitive lesion non-noradrenergic | 0.30 | Hypotension/sedation | Yes vs atomoxetine |
| Copper → DBH | Synthesis node is copper-limited | Copper not rate-limiting | 0.15 | Hepatotoxicity; only deficiency-gated | Ops-only |

## Discriminating Probes

- **Droxidopa (bypasses DBH) vs atomoxetine (requires releasable NE):** if droxidopa works but atomoxetine does not → presynaptic synthesis/storage lesion; if atomoxetine works but droxidopa does not → release-and-reuptake intact, lesion downstream.
- **Atomoxetine (presynaptic) vs guanfacine (postsynaptic α2A):** if atomoxetine fails but guanfacine works → postsynaptic PFC α2A node; if atomoxetine works but guanfacine does not → presynaptic release is the bottleneck.
- No clean discriminator exists between copper and BH4 branches — both converge on synthesis and both lack ME/CFS data.

## Pruned Branches

- Branch F (LC neuroinflammation): cumulative cert < 0.05 for an intercepting drug — pruned.
- Branch A/B sub-steps (copper, sapropterin): cumulative cert 0.10–0.18 — held ops-only (below chapter threshold); copper also safety-gated.

## Note

Cross-references: @sec:noradrenergic-node (existing selectivity node), @syn:noradrenergic-full-axis-model, @oq:noradrenergic-node-localisation-panel. This trace is the inverse of a drug→mechanism differential: it starts from the mechanism and asks which drug response localises the bottleneck.
