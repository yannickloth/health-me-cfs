#import "../../../../shared/environments.typ": *

=== Temporal Evolution of PEM
<sec:pem-temporal>

The characteristic delay of PEM (typically 12--72 hours post-exertion) is explained in the model by the timescale of secondary damage processes. The immediate metabolic perturbation (ATP depletion, lactate accumulation) resolves within hours as demand returns to baseline. However, the ROS-mediated damage and inflammatory response triggered by the metabolic crisis evolve on slower timescales:

$
D(t) = D_0 + k_(upright("damage")) integral_0^t [upright("ROS")](s) dot.op bb(1)_([upright("ROS")](s) > upright("ROS")_(upright("threshold"))) d s
$ <eq:pem-delay>

where $D(t)$ is cumulative oxidative damage, $k_(upright("damage"))$ is the damage rate constant, and the indicator function $bb(1)$ ensures that damage accumulates only when ROS exceeds the antioxidant buffering capacity. The PEM symptom intensity is modeled as a function of $D(t)$ with a delay reflecting the time required for molecular damage to manifest as functional impairment. This delay is consistent with the inflammatory mediator kinetics: cytokine production peaks 6--24 hours after tissue damage, and downstream effects (edema, sensitization) follow with further delay.

