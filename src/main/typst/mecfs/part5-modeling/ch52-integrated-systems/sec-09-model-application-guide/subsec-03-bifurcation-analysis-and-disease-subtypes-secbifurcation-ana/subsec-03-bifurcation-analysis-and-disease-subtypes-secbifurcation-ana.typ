#import "../../../../shared/environments.typ": *

=== Bifurcation Analysis and Disease Subtypes (@sec:bifurcation-analysis)

*Measurements required.*
Subtype classification requires a _multi-domain biomarker panel_ measured concurrently:
(1) Metabolic axis: peak VO₂ from CPET, lactate at anaerobic threshold, acylcarnitine profile.
(2) Immune axis: cytokine panel (6-plex), NK cell function, T cell exhaustion markers (PD-1, Tim-3), autoantibody screen.
(3) Neuroendocrine axis: cortisol rhythm (4-point salivary), HRV, BH₄:BH₂ ratio.
(4) Cardiovascular axis: tilt-table or active standing test with transcranial Doppler (CBF during orthostatic challenge).
The model predicts that no single biomarker distinguishes subtypes---the _pattern_ across domains determines attractor assignment.

*Worked example.*
Patient A: peak VO₂ = 16 mL/kg/min (severely reduced), lactate threshold at 40 W (very low), near-normal cytokine panel, normal CAR. Model classification: *metabolic-dominant attractor*. Predicted best responders to: CoQ10, NAD⁺ precursors, d-ribose. Patient B: peak VO₂ = 26 mL/kg/min (mildly reduced), but IL-6 = 12 pg/mL (3$times$ normal), NK cytotoxicity at 15% (vs. 40% normal), PD-1⁺ CD8⁺ T cells = 45% (vs. 15%). Model classification: *immune-dominant attractor*. Predicted best responders to: LDN, daratumumab (if autoantibody-positive), rintatolimod.

*Falsification criteria.*
The multi-attractor hypothesis predicts that patient clustering by multi-omics data should reveal discrete clusters (not a continuous spectrum) corresponding to the model-derived attractors. *Falsified if*: unsupervised clustering of comprehensive multi-domain biomarker data reveals a continuous distribution rather than distinct clusters, or if the clusters that emerge do not correspond to differential treatment responses.

*Clinical implications.*
The subtype model provides a rational basis for treatment stratification. The key clinical prediction is *target inversion*: the top drug target in one subtype is irrelevant in another ($alpha_upright("CI")$ has sensitivity $S_T = 0.35$ in metabolic-dominant but $S_T = 0.04$ in immune-dominant). This means that _the same treatment should be prescribed or withheld depending on subtype classification_, not given to all ME/CFS patients. The model predicts that unselected clinical trials (mixing subtypes) will show small average effect sizes even for treatments highly effective in the target subtype---explaining the historical pattern of ME/CFS trial failures and providing a path forward through biomarker-stratified trial design.

