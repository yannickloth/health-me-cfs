#import "../../../../shared/environments.typ": *

=== Orthostatic Intolerance Model
<sec:orthostatic-model>

Orthostatic intolerance (OI) affects the majority of ME/CFS patients. Upon assuming an upright posture, gravitational pooling shifts 500--700 mL of blood to the lower extremities, requiring rapid compensatory responses. The model tracks mean arterial pressure (MAP) and heart rate during orthostatic challenge:

$
frac(d upright("MAP"), d t) &= frac(1, tau_(upright("MAP"))) [upright("MAP")_(upright("set")) + alpha_(upright("SNS")) dot.op S - upright("MAP") - Delta P_(upright("grav")) dot.op u(t)] \
frac(d upright("HR"), d t) &= frac(1, tau_(upright("HR"))) [upright("HR")_(upright("intrinsic")) + alpha_S S - alpha_V V - upright("HR")]
$ <eq:orthostatic>

where $Delta P_(upright("grav")) dot.op u(t)$ is the gravitational pressure drop upon standing ($u(t)$ is a step function at the time of postural change), $tau_(upright("MAP"))$ and $tau_(upright("HR"))$ are response time constants, and $upright("MAP")_(upright("set"))$ is the baroreflex set point. The baroreflex feedback adjusts sympathetic and vagal tone in response to MAP deviations:

$
S_(upright("baro")) = S_0 + G_S dot.op (upright("MAP")_(upright("set")) - upright("MAP")), quad V_(upright("baro")) = V_0 - G_V dot.op (upright("MAP")_(upright("set")) - upright("MAP"))
$ <eq:baroreflex>

where $G_S$ and $G_V$ are baroreflex gains. In ME/CFS, the model represents OI through: (1) reduced blood volume ($Delta P_(upright("grav"))$ is amplified because the same gravitational redistribution removes a larger fraction of effective circulating volume), (2) impaired baroreflex gain ($G_S$ and $G_V$ reduced), and (3) excessive venous pooling (increased venous compliance in the lower extremities). The model reproduces the characteristic hemodynamic pattern of ME/CFS-associated OI: initial MAP drop, delayed or incomplete recovery, and compensatory tachycardia.

