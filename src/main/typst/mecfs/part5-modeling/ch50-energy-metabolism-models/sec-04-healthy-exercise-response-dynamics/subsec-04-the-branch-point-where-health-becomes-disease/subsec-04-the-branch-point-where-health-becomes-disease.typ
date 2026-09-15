#import "../../../../shared/environments.typ": *

=== The Branch Point: Where Health Becomes Disease
<sec:branch-point>

The healthy and pathological exercise responses diverge at a single identifiable point: whether exertion-induced ROS exceeds the antioxidant buffering threshold $upright("ROS")_(upright("threshold"))$. This threshold determines whether the indicator function in @eq:pem-delay activates:

- *Below threshold* ($R_(upright("headroom")) >> 0$, healthy): ROS transient is buffered $->$ no cumulative damage $->$ biogenesis dominates $->$ supercompensation $->$ adaptation
- *Above threshold* ($R_(upright("headroom")) lt.eq 0$, ME/CFS): ROS exceeds buffering $->$ cumulative ETC damage $->$ further reduced capacity $->$ impaired repair (ATP-dependent mitophagy fails) $->$ net mitochondrial loss $->$ *anti-supercompensation*

This branch point can be expressed as a critical headroom ratio $R_(upright("crit"))$ below which the damage indicator activates:

$
R_(upright("headroom")) > R_(upright("crit")) => Delta M_h^(upright("net")) > 0 quad upright("(adaptation)"), quad R_(upright("headroom")) < R_(upright("crit")) => Delta M_h^(upright("net")) < 0 quad upright("(damage)")
$ <eq:branch-point>

*This constitutes a first validation of the model*: the same equations that describe ME/CFS pathophysiology, when parameterized with healthy values, reproduce the well-characterized temporal dynamics of normal exercise physiology---immediate metabolic recovery in minutes, DOMS peaking at 24--72 hours, and supercompensation at 48--96 hours. These timescales are not fitted; they emerge from the interaction of metabolic kinetics (fast), inflammatory cascades (intermediate), and biogenesis (slow) that the model captures through its multi-timescale ODE structure.

Furthermore, the branch-point analysis provides the formal mechanistic basis for the clinical observation that graded exercise therapy (GET) harms ME/CFS patients @Geraghty2019GET: the same exertion stimulus that produces $Delta M_h^(upright("net")) > 0$ in health (training effect) produces $Delta M_h^(upright("net")) < 0$ in ME/CFS (progressive damage). The intervention is not merely ineffective---it is _mathematically predicted_ to worsen the disease, because it repeatedly applies a stimulus that pushes the system further from recovery rather than toward it.

#include "hypotheses/hyp-supercompensation-failure.typ"

