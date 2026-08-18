#import "../../../../../shared/environments.typ": *

#speculation(title: [Repair Starvation Trap: A Secondary Attractor at Very Low $B$])[
The floor regime reveals a potential positive feedback loop. As $B$ decreases within the floor, repair remains at $r_min$; the patient spends more time at low $B$, during which ongoing chronic damage (ROS, inflammation from Equation @eq:damage-accumulation) continues to erode $B_max$. Below a critical $B_upright("trap")$, the continuous damage rate may exceed the diminished repair capacity even in the absence of discrete events:
$
r(B) dot.op frac([upright("ATP")], K_upright("repair") + [upright("ATP")]) dot.op (B_max - B) < k_upright("damage") dot.op [upright("ROS")] + k_upright("immune_damage") dot.op bold(C)_upright("pro") quad forall B < B_upright("trap")
$
If this condition holds, the patient is trapped in inexorable decline regardless of event prevention. Escape requires either dramatically reducing chronic damage (aggressive anti-inflammatory intervention), dramatically enhancing $r(B)$, or external input bypassing endogenous repair. _(Certainty: 0.40.)_ Some extremely severe patients decline progressively despite maximally protective environments, consistent with being below $B_upright("trap")$.

*Falsifiable prediction:* Patients at the very bottom of ES-E in maximally protective environments (no discrete events for $gt.eq 12$ months) should still show decline if below $B_upright("trap")$. Falsified if all such patients stabilise or improve.
] <spec:repair-starvation-trap>
