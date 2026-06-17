#import "../../../../shared/environments.typ": *

=== Small Fiber Neuropathy Coupling

Small fiber neuropathy (SFN)---documented in a subset of ME/CFS patients---reduces peripheral nerve fiber density, paradoxically both reducing normal sensory input and increasing aberrant nociceptive signaling. The model represents SFN as a slow variable modifying the nociceptive input function:

$
frac(d cal(F), d t) = -k_(upright("degen")) dot.op ([upright("ROS")] + alpha_(upright("auto")) dot.op [upright("Ab")]) + k_(upright("regen")) dot.op frac([upright("NGF")] dot.op [upright("ATP")], (K_(upright("NGF")) + [upright("NGF")])(K_(upright("ATP,regen")) + [upright("ATP")]))
$ <eq:sfn-dynamics>

where $cal(F)$ is small fiber density (normalizing between 0 and 1), $k_(upright("degen"))$ is the degeneration rate (driven by oxidative stress and autoantibodies), $k_(upright("regen"))$ is the regeneration rate (dependent on nerve growth factor and ATP availability), and the nociceptive input increases as fiber density decreases below a threshold: $P_(upright("noci")) = P_0 dot.op (1 + beta_(upright("SFN")) dot.op (1 - cal(F)/cal(F)_0)^+)$, where $( dot.op )^+$ denotes the positive part. *The model predicts that SFN is both a consequence and an amplifier of ME/CFS*: ROS and autoantibodies (from the disease) cause fiber loss, and fiber loss increases pain signaling, which increases sympathetic tone and energy demand, worsening the underlying disease. This feedback loop explains why SFN prevalence increases with ME/CFS disease duration.

#include "open-questions/reversibility-of-central-sensitization-in-mecfs.typ"

