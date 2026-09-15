#import "../../../../../shared/environments.typ": *

#hypothesis(title: [A Cross-Layer Coordination Signature, Not Any Single Marker, Defines ME/CFS])[
BioMapAI's principal-coordinate analysis showed that each omics layer analyzed alone leaves ME/CFS patients largely indistinguishable from healthy controls — the microbiome, the plasma metabolome, and the immune profile each overlap substantially; only integration separates the groups with high accuracy @Xiong2025BioMapAI. Two readings are possible, and the model alone cannot distinguish them:

- A *coordination* reading: what is pathological is a rewiring of the normal *correlated relationships* across compartments — the association structure is abnormal even though each layer's marginal distribution is largely preserved.
- A *concatenation* reading (the simpler, reductionist alternative): the integrated model wins for a purely technical reason — more feed-in features give it greater statistical capacity to detect a set of individually-weak main effects, requiring *no* cross-layer coordination at all.

The paper's PCoA demonstrates only that marginals are non-separating; it does not show the cross-layer correlations are themselves rewired. An integrated AUC can exceed any single layer even when there is zero true cross-layer interaction. The coordination-signature hypothesis is therefore *contingent and untested*: the "rewiring" interpretation would need to survive a test that separates interaction effects from summed single-layer main effects, which the reported analysis does not perform.

This reframes the biomarker search from "find the one abnormal node" to "test whether the *association pattern* across nodes adds value beyond the individual layers," and it is consistent with the discrepancy framework's finding that single-resting-measurement domains miss the disease (@syn:subjective-measurable-discrepancy-index). But it does not automatically make the strong "coordination" claim true.

Certainty: 0.35 — the observation that single layers are non-discriminative while integration works is real and reported, but the strong form (that the *cross-layer correlation structure* is pathological and diagnostic) has not been demonstrated and may reflect only additive feature power. Severity applicability: unknown — model cohort not severity-stratified.

*Falsifiable prediction:* In an independent multi-omics ME/CFS cohort, to discriminate the interpretations the analysis must use *two* baselines, not just each single layer: (a) each single omics layer alone should fail to separate patients from controls; (b) a flat *feature-concatenation* model (all features as one input vector, no interaction modeling) should be meaningfully worse than a model that explicitly models cross-layer interactions. If feature concatenation matches the interaction model, the "coordination/rewiring" hypothesis collapses to additive main effects and should be rejected; if a single omics layer alone discriminates as well as integration, the disease is better described by a single-compartment signature.

*Consequence:* Until the interaction-versus-concatenation test is run, the honest claim is only "integration works better than any single layer" — which is a methodological demonstration, not proof that ME/CFS is defined by a cross-layer coordination structure. The decades-old "no validated biomarker" finding is not thereby reframed as a "wrong measurement strategy" unless replication succeeds and overfitting is excluded.
] <hyp:coordination-signature-defines-mecfs>
