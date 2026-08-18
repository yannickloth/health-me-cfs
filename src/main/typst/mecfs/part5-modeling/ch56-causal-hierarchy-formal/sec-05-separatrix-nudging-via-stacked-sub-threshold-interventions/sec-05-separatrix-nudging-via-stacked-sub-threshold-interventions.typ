#import "../../../shared/environments.typ": *

== Separatrix Nudging via Stacked Sub-Threshold Interventions
<sec:separatrix-nudging>

The multi-hit model from Chapter @ch:causal-hierarchy predicts disease onset when the combined perturbation across parameters exceeds a threshold---the separatrix in the dynamical system. This works bidirectionally: if each therapeutic intervention achieves a fraction of its individual escape threshold, stacking multiple sub-threshold improvements with positive synergistic interactions can cross the separatrix for recovery.

The generalized k-parameter escape condition:

$ sum_(j=1)^(k) frac(Delta theta_j, Delta theta_j^"trig") + sum_(i < j) gamma_(i j) dot frac(Delta theta_i, Delta theta_i^"trig") dot frac(Delta theta_j, Delta theta_j^"trig") >= 1 $

where $Delta theta_j$ is the therapeutic improvement in parameter $j$, $Delta theta_j^"trig"$ is the single-parameter escape threshold, and $gamma_(i j)$ are pairwise synergy coefficients (quantifiable using the Chou-Talalay combination index framework @Chou2010synergy).

This formalizes the clinical intuition behind "kitchen sink" protocols---not as shotgun empiricism, but as a mathematically principled strategy where the model _predicts_ that the combination must exceed a quantitative threshold.

#figure(
  table(
    columns: (3fr, 1fr, 1fr, 3fr),
    align: (left, center, center, left),
    stroke: 0.5pt,

    [*Intervention*], [*Target*], [*Frac.*], [*Mechanism*],

    [Antihistamine (H1/H2)], [MCAS amplifier], [0.15], [Reduces mast cell--mediated inflammation],
    [CoQ10 + NR/NMN], [$alpha_"CI"$], [0.25], [Restores electron transport + NAD#super[+] pool],
    [Low-dose naltrexone], [$k_"exh"$], [0.20], [Reduces immune exhaustion, modulates TLR4],
    [Anti-inflammatory (omega-3)], [$C_"pro"$], [0.15], [Lowers cytokine burden],
    [Gut support (probiotics)], [$k_"perm"$], [0.05], [Reduces LPS translocation],
    [Endothelial support], [Perfusion], [0.10], [Improves tissue oxygen delivery],
  ),
  caption: [Candidate sub-threshold intervention stack. Fractions are illustrative estimates of single-parameter escape threshold coverage. Synergistic terms ($gamma_(i j)$) may contribute an additional 0.10--0.20.],
) <tab:intervention-stack>

The additive total ($approx 0.90$) falls just short of the threshold, but synergistic terms---particularly $gamma_("CI","LDN") approx 0.15$ (energy restoration enhances LDN's immunomodulatory effect) and $gamma_("MCAS","CI") approx 0.10$ (reducing mast cell activation decreases metabolic drain)---may push the total past 1.0.

#include "hypotheses/hyp-separatrix-nudging.typ"

// =============================================================================
// SECTION 6: CRITICAL SLOWING DOWN MONITORING
// =============================================================================

