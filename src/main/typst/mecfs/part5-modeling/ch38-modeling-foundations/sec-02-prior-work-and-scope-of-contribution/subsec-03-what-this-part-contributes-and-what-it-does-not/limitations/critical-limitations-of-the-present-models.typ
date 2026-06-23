#import "../../../../../shared/environments.typ": *

#limitation(title: [Critical Limitations of the Present Models])[
*No computational implementation.* The models are presented as systems of equations, not as validated simulations. No numerical solutions, parameter fitting to patient data, or sensitivity analyses are reported. The models are a theoretical framework, not computational results. Whether the integrated system actually produces the predicted emergent behaviors (bistability, limit cycles, PEM dynamics) remains to be demonstrated through numerical exploration.

*Standard mathematical techniques.* The individual subsystem models use well-established biochemical modeling methods---Michaelis--Menten kinetics, Hill functions, compartmental ODE systems. The novelty lies in the application to ME/CFS and the inter-system integration, not in the mathematical methods themselves.

*Parameter uncertainty.* Most model parameters are constrained by in vitro studies on isolated cells (primarily lymphocytes and muscle biopsies). Whether these values accurately represent in vivo function across tissues is uncertain. The 64-variable integrated model has on the order of 220--270 parameters; current ME/CFS datasets cannot robustly constrain this many parameters simultaneously.

*Validation gap.* No model in this part has been validated against independent patient data. The perturbation response analyses (Chapter @ch:integrated-systems, Section @sec:perturbation-responses) describe expected qualitative behaviors but do not constitute quantitative validation. Bridging this gap requires the large-scale longitudinal datasets currently under development (e.g., DecodeME @DecodeME2025).

*Scope relative to biology.* Even at 64 state variables, the model omits substantial biology: microRNA networks, detailed neurotransmitter receptor pharmacology, intracellular signaling cascades (e.g., NF-$kappa$B, JAK-STAT), and tissue-specific heterogeneity. The model is a simplification designed for tractability, not a comprehensive digital twin.
]
