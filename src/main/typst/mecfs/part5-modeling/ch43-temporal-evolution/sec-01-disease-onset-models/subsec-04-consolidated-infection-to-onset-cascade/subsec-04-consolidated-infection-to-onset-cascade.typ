#import "../../../../shared/environments.typ": *

=== Consolidated Infection-to-Onset Cascade
<sec:infection-cascade>

The preceding subsections describe the tipping point and recovery failure models separately. This subsection traces a single infection event through all interacting subsystems to show how the cascade produces ME/CFS onset. The walkthrough uses the same patient profile as the tipping point worked example (Section @sec:tipping-point): a 35-year-old female with baseline $alpha_upright("CI") = 0.75$, hs-CRP $= 1.8$ mg/L, and morning cortisol $= 8$ $mu$g/dL (separatrix distance $d_upright("sep") = 0.12$).

*Day 0--3: Acute infection and immune activation.*
Viral infection triggers innate immune activation: NK cells and macrophages engage the pathogen. Activated immune cells consume substantial ATP through the immune energy demand term $J_upright("immune")$ (Equation @eq:energy-immune-coupling). Pro-inflammatory cytokines (TNF-$alpha$, IL-6, IL-1$beta$) rise, peaking at 24--72 hours. Cortisol increases in response but, starting from a low-normal baseline of $8$ $mu$g/dL, the HPA axis reaches its ceiling quickly, limiting the anti-inflammatory brake (Equation @eq:cortisol-immune). For this patient, the immune energy demand increases $J_upright("demand")$ by approximately 30% above baseline during peak infection.

*Day 3--7: Energy depletion and metabolic crisis.*
The 30% increase in total energy demand pushes the system beyond its already-limited production capacity ($alpha_upright("CI") = 0.75$, already mildly impaired). ATP levels fall as demand exceeds production (Equation @eq:atp-balance). Falling ATP triggers the cascade described in the energy metabolism model (Chapter @ch:energy-metabolism-models):
+ AMPK activation signals energy deficit, upregulating glycolysis
+ Increased glycolytic flux produces lactate at lower-than-normal workloads
+ The ETC, pushed harder to compensate, generates elevated ROS (Equation @eq:ros-production): at $alpha_upright("CI") = 0.75$, the ROS factor is $(1 - 0.75) = 0.25$ versus 0.05 in health---a 5-fold increase, which worsens further as infection-mediated oxidative bursts from immune cells add to the ROS load
+ Elevated ROS damages ETC complexes, reducing $alpha_upright("CI")$ from 0.75 toward 0.65 over days

*Day 7--14: The tipping point.*
As $alpha_upright("CI")$ drops from 0.75 to $~$0.65, two critical thresholds approach. First, the ATP synthase cliff effect (Section @sec:cascade-example): the membrane potential $Delta Psi$ falls from $~$145 mV toward 135 mV, producing disproportionate ATP loss. Second, the mitophagy threshold: at $[upright("ATP")] < [upright("ATP")]_(upright("crit,autophagy"))$, the cell can no longer remove damaged mitochondria (Equation @eq:mitophagy), and damaged organelles accumulate.

Simultaneously, the energy--immune vicious cycle engages (Equation @eq:immune-energy-feedback): ATP depletion impairs immune cell function ($k_upright("act")^upright("eff")$ decreases), slowing viral clearance, prolonging immune activation, and sustaining the energy drain. The state-space trajectory crosses the separatrix ($d_upright("sep") = 0.12$, perturbation magnitude $approx 0.18$). The system enters the basin of attraction of the disease state.

*Week 2--4: Infection resolves, disease persists.*
The adaptive immune response eventually clears the virus. Cytokines decline. But the system does not return to its pre-infection state because:
- $alpha_upright("CI")$ has been reduced by ROS-mediated damage (now $~$0.65 instead of 0.75)
- NAD⁺ pool is depleted ($gamma$ reduced from $~$0.85 to $~$0.70) by the sustained metabolic stress
- Mitochondrial quality control is impaired: biogenesis cannot keep pace with accumulated damage at the new, lower ATP level (Equation @eq:biogenesis)
- The energy--immune coupling maintains low-grade immune activation even without the original pathogen, because the depleted energy state impairs immune regulation

The patient experiences persistent fatigue, cognitive dysfunction, and exercise intolerance. The disease attractor is now the stable equilibrium: without intervention, the system will remain there indefinitely.

*What determined the outcome.*
A different patient with $alpha_upright("CI") = 0.90$ and morning cortisol $= 14$ $mu$g/dL (separatrix distance $d_upright("sep") = 0.35$) experiencing the same infection would generate a perturbation of similar magnitude ($~$0.18) but would not cross the separatrix ($0.18 < 0.35$). That patient recovers fully. The difference is not the infection---it is the pre-existing proximity to the tipping point.

#include "limitations/infection-cascade-walkthrough.typ"

