#import "../../../../../shared/environments.typ": *

#proposal(title: [GPCR Antibody-Receptor Binding and Internalization ODE — Predicting Receptor Availability and Signaling Output])[
*Certainty: 0.30.* Extend the GPCR AAb ODE (ch28) with three-state receptor dynamics: free R(t), AAb-occupied R(t), internalized R_int(t). Signaling output S(t) depends on whether AAb is agonistic or antagonistic. Binding: d[AAb·R]/dt = k_on·AAb·R − k_off·[AAb·R] − k_int·[AAb·R]. Internalization rate k_int depends on β-arrestin bias (epitope-specific). The model captures the cell-based functional data from Fedorowski 2017/Kharraziha 2020: different autoantibody profiles produce different signaling/internalization ratios. @Fedorowski2017Antiadrenergic @Kharraziha2020GPCRseverity

*Testable prediction.* Patients with internalization-biased autoantibodies (rapid k_int) have worse autonomic function (fewer functional receptors). Immunoadsorption removes AAb → R recovers on timescale of days (receptor recycling from intracellular pools). Recovery is faster for receptors with high recycling rates (β2-AR recycles quickly, M3 slowly). The model explains variable autonomic improvement after IA.

*Existing model context.* Extends ch28 GPCR AAb ODE; requires receptor-specific kinetics.

*Falsifiable prediction.* RCT (n≥40, IA vs sham) will show COMPASS-31 between-group difference ≥15 points and receptor recovery time under 14 days for β2-AR. Falsified if COMPASS-31 difference under 10 points or receptor recovery ≥21 days.
] <prop:gpcr-binding-internalization-ode>
