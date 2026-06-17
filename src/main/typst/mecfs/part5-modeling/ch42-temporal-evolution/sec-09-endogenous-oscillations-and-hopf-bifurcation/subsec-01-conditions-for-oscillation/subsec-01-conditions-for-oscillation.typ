#import "../../../../shared/environments.typ": *

=== Conditions for Oscillation

The ME/CFS model contains the structural requirements for Hopf bifurcation: positive feedback loops (energy--immune, mast cell--energy, coagulation--oxygenation, SIBO--immune--motility) combined with delayed negative feedback (cortisol suppression of inflammation, IL-10 anti-inflammatory signaling, sleep-mediated repair). The imaginary part of the critical eigenvalue pair determines the oscillation period:

$
T_upright("osc") = frac(2 pi, |upright("Im")(lambda_upright("crit"))|) = frac(2 pi, omega_0)
$ <eq:oscillation-period>

Preliminary analysis of the reduced energy--immune--HPA subsystem (6 variables: $[upright("ATP")]$, $N_a$, $bold(C)_upright("pro")$, $F$, $[upright("ROS")]$, $D$) identifies a Hopf bifurcation when the cortisol feedback gain $n_F$ exceeds a critical value while the energy--immune coupling strength is in the intermediate range. The predicted oscillation period is:

$
T_upright("osc") approx 2 pi sqrt(frac(tau_upright("cortisol") dot.op tau_upright("immune"), upright("gain")_upright("loop"))) ~ 2 upright("--") 6 upright(" weeks")
$ <eq:predicted-period>

where $tau_upright("cortisol") ~ 1$ day (HPA axis response), $tau_upright("immune") ~ 1$--$2$ weeks (cytokine network remodeling), and $upright("gain")_upright("loop")$ is the total loop gain. This 2--6 week period is consistent with the relapse--remission cycling reported by many ME/CFS patients who describe "good weeks and bad weeks" without identifiable external triggers.

