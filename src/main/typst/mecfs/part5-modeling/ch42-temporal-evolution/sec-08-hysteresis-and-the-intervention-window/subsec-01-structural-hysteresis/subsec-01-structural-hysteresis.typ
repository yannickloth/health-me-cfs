#import "../../../../shared/environments.typ": *

=== Structural Hysteresis

In a bistable system, the disease attractor appears at a critical parameter value $theta_upright("onset")$ (saddle-node bifurcation) but does not disappear until a different value $theta_upright("recovery") != theta_upright("onset")$. The hysteresis width $Delta theta = |theta_upright("recovery") - theta_upright("onset")|$ quantifies how much further the system must be pushed for recovery compared to onset. For the energy--immune subsystem, the model predicts:

$
Delta alpha_upright("CI") = alpha_upright("CI")^upright("recovery") - alpha_upright("CI")^upright("onset") > 0
$ <eq:hysteresis-width>

meaning that Complex I activity must be restored to a level _above_ the value at which disease was triggered, not merely to the trigger value. *This asymmetry is invisible without the bifurcation diagram*: verbal reasoning about positive feedback loops identifies that the disease is self-sustaining but cannot quantify how much intervention overshoot is required for recovery. The model computes $Delta alpha_upright("CI")$ as a function of the feedback strengths, providing a quantitative recovery target.

