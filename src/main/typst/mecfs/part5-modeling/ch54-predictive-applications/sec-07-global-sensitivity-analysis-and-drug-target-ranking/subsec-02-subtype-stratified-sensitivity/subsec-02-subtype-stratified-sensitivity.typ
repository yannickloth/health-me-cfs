#import "../../../../shared/environments.typ": *

=== Subtype-Stratified Sensitivity

The four disease attractors identified in Section @sec:bifurcation-analysis define distinct subtypes with different sensitivity profiles. Performing GSA within each attractor basin reveals subtype-specific drug targets:

- *Metabolic-dominant* (Attractor B): $alpha_"CI"$ dominates ($S_T approx 0.35$); mitochondrial-targeted therapies (CoQ10, NAD⁺ precursors, methylene blue) predicted most effective
- *Immune-dominant* (Attractor C): $k_"exh"$ and cytokine production rates dominate; immunomodulators (LDN, rintatolimod, daratumumab per Equation @eq:daratumumab) predicted most effective
- *Autonomic-dominant*: baroreflex gain $G_"baro"$ and blood volume $V_"blood"$ dominate; volume expansion and autonomic agents (fludrocortisone, midodrine, pyridostigmine) predicted most effective. GI motility $cal(G)_"set"$ (Equation @eq:motility-setpoint) shows elevated sensitivity in this subtype ($S_T approx 0.09$) because vagal impairment propagates to SIBO-mediated immune activation and malabsorption; prokinetics and SIBO eradication are predicted as high-value co-interventions
- *Severe/locked* (Attractor D): epigenetic modification rates (Equation @eq:epigenetic-evolution) dominate ($S_T approx 0.20$); epigenetic modifiers or high-intensity combination therapy required

#include "model-insights/subtype-specific-target-inversion.typ"

