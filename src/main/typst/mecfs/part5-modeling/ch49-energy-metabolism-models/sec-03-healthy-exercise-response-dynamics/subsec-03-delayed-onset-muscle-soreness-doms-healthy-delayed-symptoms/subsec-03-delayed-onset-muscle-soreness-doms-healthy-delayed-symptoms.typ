#import "../../../../shared/environments.typ": *

=== Delayed-Onset Muscle Soreness (DOMS): Healthy Delayed Symptoms
<sec:doms-model>

Healthy individuals also experience delayed symptoms after exertion: DOMS peaks 24--72 hours after unaccustomed exercise @Clarkson2002DOMS. This phenomenon shares the delayed timescale of PEM but differs mechanistically in ways that illuminate why PEM is pathological.

DOMS is driven by mechanical micro-damage from eccentric contractions, not by systemic metabolic crisis. The local damage triggers an inflammatory repair cascade:

$
C_(upright("local"))(t) = C_(upright("peak")) dot.op frac((t - t_(upright("ex")))^a dot.op e^(-b(t - t_(upright("ex")))), t_(upright("peak"))^a dot.op e^(-b dot.op t_(upright("peak"))))
$ <eq:doms-inflammation>

where $C_(upright("local"))$ is local cytokine concentration, $t_(upright("peak")) approx 24$--$48$ hours, and parameters $a$, $b$ shape the rise-and-fall profile. Neutrophils infiltrate within hours, followed by macrophage-mediated debris clearance and satellite cell activation peaking at 48--72 hours @Peake2017muscle. The process resolves completely within 5--7 days.

Three features distinguish DOMS from PEM:

+ *Local, not systemic*: DOMS inflammation is confined to the exercised muscle. The systemic cytokine elevation is minimal and self-limiting. In PEM, the inflammatory response is systemic (@ch:immune-system-models).
+ *Self-limiting, no positive feedback*: The DOMS inflammatory cascade follows a programmed rise-and-fall (@eq:doms-inflammation) without the ROS $->$ ETC damage $->$ more ROS positive feedback loop that sustains PEM. The repair machinery has full access to ATP and $"NAD"^"+"$.
+ *Repeated bout effect*: Subsequent identical exertion produces progressively less DOMS @Clarkson2002DOMS, indicating successful adaptation. In ME/CFS, repeated exertion produces equal or _worse_ responses (the energy ratchet, @sec:ratchet-model).

#include "limitations/doms-model-scope.typ"

