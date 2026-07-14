#import "../../../../shared/environments.typ": *

=== Reactive Oxygen Species Production and Damage
<sec:ros-model>

Reactive oxygen species (ROS) are an unavoidable byproduct of electron transport. Superoxide ($upright("O")_2^(bullet-)$) is generated primarily at Complexes I and III when electrons "leak" to molecular oxygen instead of following the normal transfer chain. The ROS production rate increases when electron flow is impeded:

$
J_(upright("ROS")) = k_(upright("ROS")) dot.op [upright("NADH")] dot.op (1 - frac(J_(upright("CI")), J_(upright("CI,max")))) + k_(upright("ROS,CIII")) dot.op [upright("UQH")_2] dot.op (1 - frac(J_(upright("CIII")), J_(upright("CIII,max"))))
$ <eq:ros-production>

where the terms $(1 - J slash J_(max))$ capture the principle that reduced electron flow (due to impaired complexes) leads to increased electron residence time on carriers, increasing the probability of electron leak to oxygen. This creates a positive feedback loop: ETC damage $->$ reduced flux $->$ increased ROS $->$ further ETC damage. The ROS balance includes antioxidant scavenging:

$
frac(d[upright("ROS")], d t) = J_(upright("ROS")) - k_(upright("SOD")) dot.op [upright("SOD")] dot.op [upright("ROS")] - k_(upright("GPx")) dot.op [upright("GPx")] dot.op [upright("ROS")]
$ <eq:ros-balance>

where SOD (superoxide dismutase) and GPx (glutathione peroxidase) are the primary antioxidant enzymes. Oxidative damage accumulates as a function of cumulative ROS exposure, reducing enzyme activities over time and establishing the vicious cycle described qualitatively in @ch:energy-metabolism.

