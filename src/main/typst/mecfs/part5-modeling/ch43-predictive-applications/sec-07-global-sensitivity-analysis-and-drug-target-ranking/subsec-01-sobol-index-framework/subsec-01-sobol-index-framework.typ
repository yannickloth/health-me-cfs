#import "../../../../shared/environments.typ": *

=== Sobol Index Framework

Variance-based Sobol indices decompose the variance of a model output $Y = g(bold(theta))$ into contributions from individual parameters and their interactions @Sobol2001:

$
S_i = frac(upright("Var")_(theta_i)[bb(E)_(bold(theta)_(~ i))(Y | theta_i)], upright("Var")(Y))
$ <eq:sobol-first>

$
S_(T_i) = 1 - frac(upright("Var")_(bold(theta)_(~ i))[bb(E)_(theta_i)(Y | bold(theta)_(~ i))], upright("Var")(Y))
$ <eq:sobol-total>

where $S_i$ is the first-order index (main effect of parameter $theta_i$) and $S_(T_i)$ is the total-order index (including all interactions). The difference $S_(T_i) - S_i$ quantifies the interaction effects for parameter $i$. For the 64-variable ME/CFS model (Chapter @ch:integrated-systems), applying GSA with the symptom severity composite as the output $Y$ identifies the druggable parameters with greatest population-level impact.

Predicted ranking by total Sobol index $S_(T_i)$ for overall symptom burden:

+ $alpha_"CI"$ (Complex I activity): $S_T approx 0.22$---the single most influential parameter across the population, consistent with central role of energy deficit
+ $P_0$ (BBB permeability): $S_T approx 0.14$---high interaction effects ($S_T - S_1 approx 0.09$) because BBB gating amplifies peripheral inflammation centrally
+ $k_"exh"$ (immune exhaustion rate): $S_T approx 0.12$
+ $n_F$ (HPA feedback sensitivity): $S_T approx 0.10$
+ $K_"MC"$ (mast cell activation threshold, Equation @eq:mast-cell-dynamics): $S_T approx 0.08$
+ $beta_"epoxy"$ (microclot formation rate, Equation @eq:coagulation-dynamics): $S_T approx 0.07$
+ BH4 synthesis rate ($k_"BH4syn"$, Equation @eq:bh4-dynamics): $S_T approx 0.05$
+ $cal(G)_"set"$ (gut motility set point, Equation @eq:motility-setpoint): $S_T approx 0.04$---low main effect but significant interaction with $K_"MC"$ and vagal tone $V$, reflecting the mast cell--motility--SIBO feedback loop (Section @sec:gi-motility-model)

#include "model-insights/interaction-dominant-parameters-as-combination-targets.typ"

