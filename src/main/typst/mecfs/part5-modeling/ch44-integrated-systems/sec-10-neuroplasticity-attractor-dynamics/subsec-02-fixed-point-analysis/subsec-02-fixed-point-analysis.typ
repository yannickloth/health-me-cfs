#import "../../../../shared/environments.typ": *

=== Fixed-Point Analysis

Setting all derivatives to zero and all interventions to zero ($u = 0$), the system has two classes of fixed points:

*Healthy fixed point:* $(K^*, T^*, M^*, E^*) = (0, T_0, 0, 0)$ --- no kindling, normal T3, quiescent microglia, no epigenetic locking. Stability requires $P(t) = 0$ (no PEM events).

*Disease fixed point:* A non-trivial equilibrium exists where kindling, T3 depletion, microglial activation, and epigenetic consolidation are all elevated and mutually sustaining. At this fixed point:

$
K^* = frac(alpha P^*, gamma) , quad M^* = frac(eta K^* + theta(1 - T^* slash T_0), nu) , quad T^* = frac(delta T_0, delta + epsilon M^*) , quad E^* = frac(kappa M^*, kappa M^* + lambda_0)
$

The disease fixed point is stable when the loop gains reinforce each other: microglial activation ($M$) suppresses T3, which increases microglial activation further (loop 2); kindling ($K$) increases $M$, which increases $E$, which prevents resolution of $M$ (loops 1+3). The Jacobian eigenvalues at the disease fixed point determine stability and timescale separation.

