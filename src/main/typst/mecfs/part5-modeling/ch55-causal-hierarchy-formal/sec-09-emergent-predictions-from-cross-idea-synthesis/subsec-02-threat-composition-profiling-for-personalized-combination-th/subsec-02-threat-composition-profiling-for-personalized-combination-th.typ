#import "../../../../shared/environments.typ": *

=== Threat Composition Profiling for Personalized Combination Therapy

The threat signal composition analysis (Section @sec:antiviral-threat) and separatrix nudging framework (Section @sec:separatrix-nudging) combine to suggest a _personalized_ intervention stack: measure the relative contributions of $w_"cyto" dot C_"pro"$, $w_"ROS" dot ["ROS"]$, $w_"LPS" dot ["LPS"]$, and $w_V dot V$ to each patient's $cal(T)$, then select the combination that maximally reduces the dominant components.

A patient with $w_V dot V / cal(T) > 0.4$ (viral-dominant) would receive: antivirals + anti-inflammatory + metabolic support. A patient with $w_"LPS" dot ["LPS"] / cal(T) > 0.3$ (gut-dominant) would receive: gut restoration + anti-inflammatory + metabolic support. The separatrix nudging framework predicts which combinations reach the escape threshold for each patient's specific threat profile.

#include "hypotheses/hyp-threat-guided-therapy.typ"

