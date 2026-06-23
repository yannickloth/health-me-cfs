#import "../../../../shared/environments.typ": *

=== Stochastic Resonance and Noise-Assisted Recovery
<sec:stochastic-resonance>

In bistable systems driven by noise, a phenomenon called _stochastic resonance_ occurs: moderate noise can facilitate transitions between attractors that would be impossible in a deterministic system. Applied to ME/CFS, this predicts that random physiological fluctuations (minor infections, hormonal cycles, sleep variations) can occasionally push a patient from the disease attractor into the basin of attraction of the healthy state---but only if the patient is sufficiently close to the separatrix.

The Kramers escape rate from the disease attractor is:

$
r_upright("escape") = frac(omega_0 omega_b, 2 pi) exp(-frac(2 Delta U, sigma^2))
$ <eq:kramers-rate>

where $omega_0$ is the oscillation frequency at the attractor, $omega_b$ is the curvature at the saddle point (separatrix), $Delta U$ is the effective potential barrier height (distance from attractor to separatrix), and $sigma^2$ is the noise intensity. *This equation produces three predictions unique to the mathematical framework*:

+ *Spontaneous recovery rate depends exponentially on disease severity*: patients deep in the disease attractor (high $Delta U$) have astronomically low escape probability, while those near the separatrix can recover spontaneously---consistent with the $~$5% spontaneous recovery rate
+ *Optimal noise intensity exists*: too little noise $->$ no escape; too much noise $->$ the system is destabilized before reaching the healthy basin and falls back. This predicts that there is an optimal level of mild physiological perturbation that maximizes recovery probability---neither complete rest nor aggressive stimulation
+ *Hormonal cycling may assist recovery*: for female patients, the menstrual cycle provides periodic perturbations of fixed amplitude and frequency. If this perturbation amplitude is near optimal for stochastic resonance, it could explain potential sex differences in spontaneous recovery rates---a testable prediction

#include "speculations/therapeutic-perturbation-protocols.typ"

