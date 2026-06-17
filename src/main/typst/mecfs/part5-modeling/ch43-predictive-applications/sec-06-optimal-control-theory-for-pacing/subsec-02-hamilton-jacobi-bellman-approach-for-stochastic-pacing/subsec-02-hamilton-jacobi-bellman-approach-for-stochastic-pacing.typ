#import "../../../../shared/environments.typ": *

=== Hamilton--Jacobi--Bellman Approach for Stochastic Pacing

In practice, energy availability is stochastic: sleep quality, infections, and environmental stressors introduce unpredictable variation. The stochastic extension replaces the deterministic ODE with a stochastic differential equation and solves the Hamilton--Jacobi--Bellman (HJB) equation for the value function $V(bold(x), t)$:

$
-frac(partial V, partial t) = max_u [ U(u) - lambda_D D - lambda_F F + (nabla V)^top bold(f)(bold(x), u) + frac(1, 2) upright("tr")(bold(Sigma)^top nabla^2 V , bold(Sigma)) ]
$ <eq:hjb-pacing>

where $bold(Sigma)$ is the noise covariance matrix. The HJB solution yields a _feedback policy_ $u^*(bold(x), t)$: the optimal activity level as a function of the current physiological state, adaptable in real time. This is precisely what wearable-integrated pacing systems would implement.

#include "model-insights/safety-margins-from-stochastic-optimization.typ"

