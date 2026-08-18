#import "../../../../shared/environments.typ": *

=== Pontryagin Maximum Principle Formulation

Define the state vector $bold(x)(t) = (E(t), D(t), I(t), F(t))^top$ representing energy reserves, cumulative damage, immune activation, and fatigue perception respectively, with activity intensity $u(t) in [0, u_max]$ as the control variable. The system dynamics follow from the models in Chapters @ch:energy-metabolism-models and @ch:integrated-systems:

$
dot(bold(x)) = bold(f)(bold(x), u) = mat(
  J_"production"(bold(x)) - J_"demand"(u) - E_"repair"(bold(x));
  k_"damage" dot.op upright("ROS")(u, bold(x)) - k_"repair" dot.op R(bold(x));
  sigma(bold(x), u) - delta_I dot.op I;
  alpha_F dot.op (D + beta_F dot.op I) - gamma_F dot.op F
)
$ <eq:state-dynamics-control>

The patient seeks to maximize total functional capacity over a planning horizon $[0, T]$ while penalizing damage accumulation:

$
J[u] = integral_0^T [ U(u(t)) - lambda_D dot.op D(t) - lambda_F dot.op F(t) ] d t + Phi(bold(x)(T))
$ <eq:pacing-objective>

where $U(u)$ is the utility of activity at intensity $u$, $lambda_D$ and $lambda_F$ are penalty weights for damage and fatigue, and $Phi(bold(x)(T))$ is a terminal cost penalizing unfavorable end-states. The Pontryagin maximum principle yields necessary conditions for the optimal activity schedule $u^*(t)$ through the Hamiltonian:

$
cal(H)(bold(x), u, bold(lambda)) = U(u) - lambda_D D - lambda_F F + bold(lambda)^top bold(f)(bold(x), u)
$ <eq:pacing-hamiltonian>

where the costate variables $bold(lambda)(t)$ satisfy $dot(bold(lambda)) = -partial cal(H) \/ partial bold(x)$. The optimal control satisfies $partial cal(H) \/ partial u = 0$ at interior points and $u^* in {0, u_max}$ on boundaries (bang-bang control).

#include "model-insights/pacing-as-trajectory-optimization.typ"

