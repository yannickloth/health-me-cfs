#import "../../../../shared/environments.typ": *

=== Spinal Cord Sensitization Dynamics

Central sensitization is mediated by activity-dependent changes in dorsal horn neuron excitability, driven by NMDA receptor (NMDAR) activation, glial cell activation, and neuropeptide release. The model tracks the sensitization state $cal(S)$ of dorsal horn circuits:

$
frac(d cal(S), d t) = k_(upright("wind")) dot.op P_(upright("noci"))(t) dot.op frac(cal(S), K_(upright("NMDA")) + cal(S)) + k_(upright("glia")) dot.op mu_(1,upright("spinal")) - k_(upright("resolve")) dot.op cal(S) dot.op frac([upright("endorphin")], K_(upright("endorphin")) + [upright("endorphin")])
$ <eq:central-sensitization>

where $P_(upright("noci"))(t)$ is the peripheral nociceptive input (from tissue inflammation, small fiber neuropathy, or mechanical stimulation), $k_(upright("wind"))$ is the wind-up rate (NMDAR-dependent potentiation), $mu_(1,upright("spinal"))$ is spinal glial activation (analogous to the CNS microglial model, Equation @eq:microglia), $k_(upright("resolve"))$ is the resolution rate (modulated by endogenous opioids), and the $cal(S)$-dependent term in the wind-up ensures positive feedback: existing sensitization amplifies further nociceptive input.

