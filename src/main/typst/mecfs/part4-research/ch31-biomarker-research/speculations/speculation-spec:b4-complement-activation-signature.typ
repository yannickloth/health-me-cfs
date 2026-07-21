#import "../../../shared/environments.typ": *

#speculation(title: [B4: Complement Activation Signature (CAS) Score])[
*Certainty: 0.30.* Complement activation is documented in ME/CFS (C5a, sC5b-9 elevation) but has not been integrated into a composite score for diagnostic or prognostic use. A complement activation signature (CAS) score combining classical, alternative, and terminal pathway markers could identify the complement-driven endotype and predict response to complement-targeted therapies (sutimlimab, eculizumab).

*Target analytes:*
- Classical pathway: C4d, C1s-C1 inhibitor complexes
- Alternative pathway: Bb, C3bBbP
- Lectin pathway: MASP-1, MASP-2
- Terminal pathway: C5a, sC5b-9 (membrane attack complex)
- Regulators: Factor H, CD59
- Activation product ratios: C3a/C3, C4d/C4 (cleavage ratios more stable than absolute concentrations)

*CAS score formula:*
$"CAS" = w_1 dot z("C4d") + w_2 dot z("C5a") + w_3 dot z("sC5b-9") + w_4 dot z("Bb")$
where weights $w_i$ are derived from principal component analysis in a training cohort, and z-scores are normalized to healthy controls. CAS > 2 indicates significant complement activation requiring further investigation.

*Clinical applications:*
- Identify ME/CFS patients with complement-driven pathology (estimated 20-40% based on existing C5a data)
- Predict response to complement inhibition (CAS-high patients most likely to benefit)
- Monitor complement activation dynamics post-exertion (does CAS increase during PEM?)
- Link complement activation to glycocalyx damage (CAS > 2 predicts elevated syndecan-1)
- Stratify microclot-positive patients: CAS-high microclots may be complement-stabilized (sensitive to complement inhibition) vs CAS-normal microclots (fibrin-dominant, sensitive to anticoagulation alone)

*Key questions:*
1. What proportion of ME/CFS patients have elevated CAS (>2) at rest?
2. Does CAS increase after CPET in ME/CFS vs controls?
3. Does CAS correlate with glycocalyx damage markers (syndecan-1, hyaluronan)?
4. Is the CAS-high phenotype stable over time (trait) or dynamic (state)?

*Limitations:* Complement assays require careful handling (ex vivo activation inflates results); EDTA plasma with rapid centrifugation is essential. No validated CAS threshold exists for any condition; weights must be empirically derived. Complement activation is also elevated in many chronic inflammatory conditions, limiting diagnostic specificity.

*Cross-reference:* Complement activation in ME/CFS (Chapter @ch:immune-dysfunction). POTS complement-glycocalyx speculation (@spec:pots-complement-glycocalyx, Chapter @ch:speculative-hypotheses). Sutimlimab discussion (@spec:c1s-inhibition-emerging, Chapter @ch:emerging-therapies).
] <spec:b4-complement-activation-signature>
