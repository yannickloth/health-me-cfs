#import "../../../../shared/environments.typ": *

=== Dosing Optimization
<sec:dosing-optimization>

For a given treatment, the model can predict the optimal dose by simulating dose--response relationships. The pharmacokinetic--pharmacodynamic (PK-PD) interface links drug plasma concentration $C_"drug"(t)$ (from standard PK models) to parameter modifications in the pathophysiology model. For example, CoQ10 supplementation modifies $["UQ"]_"total"$ as:

$
["UQ"]_"total"(t) = ["UQ"]_"baseline" + Delta["UQ"]_max dot.op frac(C_"CoQ10"(t), K_"CoQ10" + C_"CoQ10"(t))
$ <eq:pkpd-coq10>

where $C_"CoQ10"(t)$ follows oral absorption and distribution kinetics. The model predicts the steady-state ATP improvement as a function of daily dose, identifying the dose above which additional supplementation provides negligible benefit (saturation) and below which the effect is indistinguishable from placebo.

