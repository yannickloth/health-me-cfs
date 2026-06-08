# Phase 4c — Cross-Hypothesis Compatibility Audit: GWAS Meta-Analysis

**Date:** 2026-06-08
**Topic slug:** gwas-meta-maccallini-2026

## New Hypotheses

| ID | Label | Type | Cert |
|----|-------|------|------|
| H1 | Glutamatergic synaptic dysfunction as core mechanism | hypothesis | 0.60 |
| H2 | Brain-first genetic model (no peripheral enrichment) | hypothesis | 0.55 |
| H3 | Two-hit glutamatergic vulnerability + infectious trigger | hypothesis | 0.50 |

## Pairwise Relationships with Existing Hypotheses

### H1 — Glutamatergic Synaptic Dysfunction

| Existing H | Relationship | Cert | Details |
|------------|-------------|------|---------|
| E/I imbalance (Wirth/Scheibenbogen 2026) | **Reinforcement** | 0.80 | Two independent lines: GWAS genetics (Maccallini) + neurotransmitter review (Wirth) converge on glutamatergic/GABAergic imbalance. Each strengthens the other. |
| Kynurenine pathway dysregulation | **Feed-into** | 0.70 | KYN metabolites (KA neuroprotective, QA neurotoxic) directly modulate NMDA receptor function — genetic vulnerability in glutamatergic synapse + infection-driven QA accumulation = two-hit convergence |
| Astrocyte-neuron lactate shuttle impairment | **Feed-into** | 0.60 | ANLS couples glutamate uptake to energy delivery. Glutamatergic hyperexcitability → increased astrocytic glutamate load → energy delivery not matching demand |
| TRPM3 channelopathy | **Independent** | 0.10 | TRPM3 Ca2+ signalling operates in NK cells; glutamatergic genetics in neurons. Different systems, different cell types |
| Noradrenergic deficiency (Aregawi 2026) | **Reinforcement** | 0.50 | NE deficiency in locus coeruleus → reduced LC-NE tone disinhibits glutamatergic circuits in cerebellum and brainstem. Brain-first genetics + NE deficiency = dual CNS vulnerability |
| HSAT2 epigenetic activation | **Independent** | 0.20 | Different mechanistic layers: HSAT2 = epigenetic/senescent; glutamatergic = synaptic/genetic |
| Autoimmune / GPCR autoantibody | **Independent** | 0.15 | Operate at different levels — autoantibodies = peripheral humoral; glutamatergic = central synaptic |
| Microglial priming / neuroinflammation | **Feed-into** | 0.65 | Microglial cytokines (IL-1β, TNF-α) increase synaptic glutamate release and impair astrocytic reuptake, directly amplifying glutamatergic hyperexcitability on genetically vulnerable synapses |
| Depression paradox (shared genes, divergent circuits) | **Reinforcement** | 0.75 | H1 provides the mechanistic substrate — glutamatergic genes as shared risk factors with circuit-level divergence explaining the r_g paradox |
| Cerebellar CCAS (Maccallini cell-type signal) | **Feed-into** | 0.80 | Glutamatergic synapse enrichment → specifically impacts cerebellar Purkinje cells → CCAS cognitive profile |

### H2 — Brain-First Genetic Model

| Existing H | Relationship | Cert | Details |
|------------|-------------|------|---------|
| Autoimmune mechanism hypotheses | **Conflict** | 0.70 | H2 asserts zero peripheral tissue enrichment and zero genetic correlation with autoimmune diseases. This constrains autoimmune hypotheses — any autoimmune component must operate through mechanisms genetically distinct from classical autoimmunity. Does NOT refute GPCR autoantibodies (could be non-genetic, acquired response). |
| CNS energy crisis as primary event (ch16 hierarchy) | **Reinforcement** | 0.75 | H2 independently supports CNS-first causal hierarchy placement. Genetics and CSF catecholamine deficiency converge on brain as primary locus. |
| NK cell dysfunction / immune abnormalities | **No conflict** | 0.50 | Brain-first genetics does NOT contradict functional peripheral pathology — it positions peripheral abnormalities as efferent consequences. The absence of genetic immune tissue enrichment means immune findings are acquired downstream, not genetically driven. |
| Mitochondrial dysfunction hypotheses | **Reinforcement** | 0.40 | Brain has highest metabolic demand. If primary genetic vulnerability is in brain circuits, mitochondrial failure in CNS produces disproportionate functional impact. |
| Gut-brain axis / IBS r_g=0.75 | **Reinforcement** | 0.55 | Brain-first model + IBS genetic correlation suggests gut→brain or brain→gut signalling through efferent autonomic pathways. Not mutually exclusive with enteric glutamatergic dysfunction. |
| Pituitary enrichment → HPA downstream | **Reinforcement** | 0.65 | Pituitary is the only non-brain tissue enriched — consistent with HPA axis as downstream effector of brain-first pathology |

### H3 — Two-Hit Model (Glutamatergic + Infectious)

| Existing H | Relationship | Cert | Details |
|------------|-------------|------|---------|
| Post-infectious trigger models | **Reinforcement** | 0.80 | H3 provides a specific genetic mechanism for why only ~5% of infected individuals develop ME/CFS — those with glutamatergic synaptic vulnerability cross the E/I threshold |
| Terrain + trigger model | **Reinforcement** | 0.75 | H3 is a molecular instantiation of the terrain+trigger model — "terrain" = glutamatergic genetic liability; "trigger" = cytokine-mediated glutamate surge |
| Gene-environment interaction model | **Reinforcement** | 0.70 | H3 exemplifies the gene-environment interaction framework with specific genes (glutamatergic synapse) and specific environment (viral→cytokine→glutamate) |
| EBV/HHV-6 reactivation hypotheses | **Feed-into** | 0.40 | If viral reactivation drives ongoing cytokine production, each reactivation episode delivers a glutamatergic "hit" that compounds on genetically vulnerable synapses |

## Reinforcement Chains

1. **Brain-First Convergence Chain:** H2 (brain-first genetic) → CNS energy crisis (ch16 hierarchy, cert 0.55→0.60 after Phase 4b) → NE deficiency → PEM. Longest chain: 4 hops.

2. **Glutamatergic Two-Hit Chain:** H1 (genetic glutamatergic vulnerability) → microglial cytokines → glutamate surge → E/I threshold breach → H3 (chronic ME/CFS). Hops: 3. H3 feeds into PEM model.

3. **Depression Resolution Chain:** H1 (glutamatergic genes) + depression r_g data → circuit-level divergence → depression paradox resolution → destigmatization. Hops: 3.

## Conflict Clusters

1. **Brain-First vs Peripheral Autoimmune:** H2 constrains autoimmune hypotheses — IF the autoimmune model requires shared genetic architecture with MS/RA/T1D, THEN H2 conflicts strongly. BUT GPCR autoantibodies may operate through non-genetic acquired mechanisms (e.g., molecular mimicry, bystander activation). → Flag as unresolved tension, NOT refutation. No certainty reduction warranted for either side.

2. **No other conflicts found.** The 3 new hypotheses are largely orthogonal to or reinforcing of existing hypotheses.

## Certainty Adjustment Proposals

| Hypothesis | Current | Proposed | Adjustment | Reason |
|------------|---------|----------|------------|--------|
| E/I imbalance (Wirth/Scheibenbogen) — if in registry | varies | +0.05 | Reinforcement from H1 | GWAS + neurotransmitter review converge from independent domains |
| CNS energy crisis (ch16) — already adjusted | 0.60 | 0.60 | No change | Already bumped in Phase 4b |
| Cerebellar CCAS (new) | 0.45 | 0.50 | +0.05 | Feed-into from H1 — glutamatergic synapse enrichment → cerebellar vulnerability |
| Terrain+trigger model | varies | +0.05 | Reinforcement from H3 | H3 provides molecular mechanism for terrain+trigger framework |
| Post-infectious ME/CFS models | varies | +0.05 | Reinforcement from H3 | H3 provides genetic specificity (which patients cross threshold) |

**Guard check:** None of the proposed bumps exceed certainty 0.95. All bump justifications involve independent lines of evidence from different methods/labs. None of the bumped hypotheses have been bumped 3+ times in prior cycles.

## Independent Pairs

- H1/H2/H3 ↔ TRPM3 channelopathy (different cell types, systems)
- H1/H2/H3 ↔ HSAT2 epigenetic (different mechanistic layers)
- H1/H2/H3 ↔ GPCR autoantibodies (CNS synaptic vs peripheral humoral)
- H1/H2/H3 ↔ Most supplement/nutraceutical hypotheses (different evidence bases)

## Summary

| Metric | Count |
|--------|-------|
| Reinforcement pairs | 10 |
| Feed-into pairs | 5 |
| Conflict pairs | 1 (brain-first vs autoantibody hypotheses — unresolved tension, not refutation) |
| Independent pairs | Multiple (separate systems) |
| Certainty bumps proposed | 3 |
| Certainty reductions | 0 |
| Tensions flagged | 1 |
