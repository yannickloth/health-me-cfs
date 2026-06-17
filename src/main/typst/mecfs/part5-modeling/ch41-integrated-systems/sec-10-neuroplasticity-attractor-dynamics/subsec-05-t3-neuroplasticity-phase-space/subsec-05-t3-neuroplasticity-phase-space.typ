#import "../../../../shared/environments.typ": *

=== T3-Neuroplasticity Phase Space
<sec:t3-plasticity-phase>

The T3-neuroplasticity interaction can be visualized as a 2D phase plane with coordinates ($T$, $Pi$), where $T$ is the effective brain T3 concentration and $Pi$ is the neuroplasticity capacity (0 = fully locked, 1 = fully plastic):

$
frac(d T, d t) &= sigma dot.op (T_0 - T) - rho dot.op (1 - Pi) dot.op T + u_upright("T3") \
frac(d Pi, d t) &= phi dot.op T slash T_0 dot.op (1 - Pi) - omega_0 dot.op Pi - omega_1 dot.op (1 - T slash T_0) dot.op Pi + u_upright("Li")
$ <eq:t3-plasticity>

where:

- $sigma$: natural T3 homeostasis rate
- $rho$: inflammation-mediated T3 suppression (stronger when plasticity is low, i.e., neuroinflammation is high)
- $phi$: T3-driven plasticity enhancement (via BDNF, LTP)
- $omega_0$: baseline plasticity decay rate (natural turnover of plastic synaptic connections)
- $omega_1$: additional plasticity loss from T3 deficiency (epigenetic locking, reduced BDNF)
- $u_upright("T3")$: exogenous T3 supplementation
- $u_upright("Li")$: lithium-driven plasticity enhancement (GSK-3$beta$ inhibition, BDNF, autophagy)

At the healthy equilibrium ($u = 0$), $Pi_0$ and $T^*$ are determined simultaneously from the coupled nullclines. Setting $d Pi / d t = 0$ at $T = T_0$ gives $Pi_0 = phi / (phi + omega_0)$, but substituting into $d T / d t = 0$ yields a residual $-rho (1 - Pi_0) T_0 eq.not 0$ since $Pi_0 < 1$. The true healthy fixed point therefore has $T^* < T_0$, shifted slightly below the nominal setpoint by the baseline plasticity-mediated suppression term. When $rho$ is small relative to $sigma$ (strong T3 homeostasis), $T^* approx T_0$ and $Pi_0 approx phi / (phi + omega_0)$ remains a good approximation. The disease equilibrium is at a substantially lower $(T^("disease"), Pi^("disease"))$ where low T3 and low plasticity mutually reinforce each other. A separatrix divides the two basins.

*Treatment vectors in phase space:*

- T3 supplementation: pushes the state rightward (toward normal $T$)
- Lithium: pushes the state upward (toward normal $Pi$)
- The separatrix determines the *minimum combination* of T3 and lithium needed to escape the disease attractor

The model predicts that: (1) T3 alone is insufficient if plasticity is too locked (the system slides back along the $T$-nullcline); (2) lithium alone is insufficient if T3 is too low to support BDNF-mediated plasticity; (3) the combination crosses the separatrix that neither alone can cross---the quintessential multi-loop effect formalized in Section @sec:combination-cliff.

#include "limitations/neuroplasticity-attractor-model-parameter-uncertainty.typ"

