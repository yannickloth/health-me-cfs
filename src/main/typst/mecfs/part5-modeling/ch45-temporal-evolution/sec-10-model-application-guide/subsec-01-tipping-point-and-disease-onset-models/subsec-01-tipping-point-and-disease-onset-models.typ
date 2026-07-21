#import "../../../../shared/environments.typ": *

=== Tipping Point and Disease Onset Models

*Measurements required.*
Pre-infection baseline: mitochondrial respiratory capacity (Seahorse assay or muscle biopsy oximetry), hs-CRP, IL-6, morning cortisol. During acute infection: serial viral load (PCR), daily cytokine panel (TNF-$alpha$, IL-6, IL-10), daily fatigue VAS score. Post-infection: repeat baseline panel at 4, 8, and 12 weeks to determine whether the system has returned to the pre-infection attractor or settled at a new steady state.

*How to use.*
Compute the basin of attraction boundary (separatrix) from the energy--immune bistability model (Chapter @ch:integrated-systems) using the patient's pre-infection parameter values. Overlay the infection-induced state-space trajectory. If the trajectory crosses the separatrix, the model predicts ME/CFS onset; if it remains within the healthy basin, full recovery is expected. The separatrix distance $d_upright("sep")$---computed as the Euclidean distance from the patient's pre-infection state to the nearest separatrix point---serves as a risk score.

*Worked example.*
A 35-year-old female presents with baseline Complex I activity $alpha_upright("CI") = 0.75$ (mildly reduced), hs-CRP $= 1.8$ mg/L (low-grade inflammation), and morning cortisol $= 8$ $mu$g/dL (low-normal). The model places her separatrix distance at $d_upright("sep") = 0.12$ (low margin). An acute COVID-19 infection produces a state-space displacement of magnitude $0.18$ along the energy--immune axes. Since $0.18 > 0.12$, the trajectory crosses the separatrix, and the model predicts transition to the disease attractor. Post-infection monitoring at week 8 confirms persistent fatigue (VAS $> 6$), elevated IL-6 ($> 4$ pg/mL), and reduced ATP synthesis ($< 70%$ of pre-infection baseline), consistent with the disease steady state.

*Inter-model dependencies.*
The tipping point model depends on the bistability analysis from Chapter @ch:integrated-systems for the separatrix computation, on the viral dynamics model (Chapter @ch:immune-system-models) for infection trajectory magnitude, and on the energy--immune coupling model for the state-space geometry. It feeds into the damage accumulation model (Section @sec:stable-progressive) by setting initial conditions for the post-onset trajectory, and into the energy ratchet model (Section @sec:ratchet-model) by establishing the initial ceiling $B_max (t_0)$.

*Falsification criteria.*
The tipping point model is falsified if: (1) patients with large separatrix distance ($d_upright("sep") > 0.3$) develop ME/CFS after mild infections at rates comparable to high-risk individuals; (2) patients with identical pre-infection parameters show no dose--response relationship between infection severity and ME/CFS onset probability; (3) the bistability model fails validation (Chapter @ch:integrated-systems), eliminating the separatrix entirely.

*Clinical implications.*
The separatrix distance $d_upright("sep")$ identifies individuals at elevated risk for post-infectious ME/CFS _before_ infection occurs. High-risk individuals ($d_upright("sep") < 0.15$) could be prioritized for aggressive infection prevention (vaccination, antivirals), early intervention during acute illness (rest, anti-inflammatory support), and close post-infection monitoring. The model does not prescribe a specific treatment but identifies the _window_ (during and immediately after acute infection) and the _target_ (preventing the state-space trajectory from crossing the separatrix) for preventive intervention.

