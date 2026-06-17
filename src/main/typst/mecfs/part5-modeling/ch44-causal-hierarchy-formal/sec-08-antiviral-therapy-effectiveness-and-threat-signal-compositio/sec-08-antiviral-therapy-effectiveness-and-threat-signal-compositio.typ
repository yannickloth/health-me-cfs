#import "../../../shared/environments.typ": *

== Antiviral Therapy Effectiveness and Threat Signal Composition
<sec:antiviral-threat>

The safe mode threat signal $cal(T) = w_"cyto" dot C_"pro" + w_"ROS" dot ["ROS"] + w_"LPS" dot ["LPS"] + w_V dot V$ provides a quantitative framework for understanding why antiviral therapy produces inconsistent results across ME/CFS trials.

Antiviral therapy reduces the $w_V dot V$ component of $cal(T)$. This disengages safe mode _only if_ the viral load term is the dominant contributor to $cal(T)$---that is, in early disease where cytokine and ROS contributions have not yet escalated. In late disease, $w_"cyto" dot C_"pro"$ and $w_"ROS" dot ["ROS"]$ dominate $cal(T)$, and eliminating $V$ entirely reduces $cal(T)$ by only $approx w_V / (w_"cyto" + w_"ROS" + w_"LPS" + w_V) approx 20%$---insufficient to cross the safe mode disengagement threshold.

This explains the divergent results of antiviral trials. Lerner et al.\ showed benefit from long-term valacyclovir in EBV-positive patients @Lerner2007valacyclovir @Lerner2002valacyclovir, while Montoya et al.\ found that valganciclovir benefit was confined to a subgroup with high baseline viral titers @Montoya2013valganciclovir. The model predicts that the responding subgroups are those with high $w_V dot V / cal(T)$ ratios---where viral load is a disproportionate contributor to the total threat signal. This is consistent with Hornig et al.'s finding that cytokine profiles in ME/CFS differ markedly between short-duration ($< 3$ years) and long-duration ($> 3$ years) disease @Hornig2015, suggesting that the composition of $cal(T)$ shifts over time as the model predicts.

#include "hypotheses/hyp-antiviral-threat.typ"

// =============================================================================
// SECTION 9: CROSS-IDEA SYNTHESIS
// =============================================================================

