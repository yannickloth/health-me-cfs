#import "../../../../shared/environments.typ": *

=== Supercompensation: The Healthy Adaptation Response
<sec:supercompensation>

Supercompensation---the phenomenon whereby the system recovers to a state _better_ than before the perturbation---is the fundamental mechanism of exercise adaptation. In the model, it emerges naturally from the mitochondrial dynamics equations (@eq:mito-dynamics and @eq:biogenesis) when run with healthy parameters.

After a single exertion bout, the net change in healthy mitochondrial mass over the adaptation window $tau_(upright("adapt"))$ is:

$
Delta M_h^(upright("net")) = integral_(t_(upright("ex")))^(t_(upright("ex")) + tau_(upright("adapt"))) (J_(upright("biogenesis"))(s) - k_(upright("fission")) dot.op M_h(s) dot.op r_(upright("damage"))([upright("ROS")](s))) d s
$ <eq:supercompensation>

In healthy individuals, $Delta M_h^(upright("net")) > 0$ because: (1) $J_(upright("biogenesis"))$ is elevated post-exercise (AMPK-driven, with adequate $"NAD"^"+"$); (2) the damage term $r_(upright("damage"))([upright("ROS")])$ is low (ROS remained sub-threshold during exertion); and (3) mitophagy efficiently removes any damaged mitochondria (adequate ATP for autophagy, @eq:mitophagy). The supercompensation window peaks at approximately 48--96 hours post-exertion, consistent with the well-established training adaptation timescale @Hood2009biogenesis @Coffey2017adaptation.

Training adaptation is then modeled as _iterated supercompensation_. Repeated exertion bouts spaced within the supercompensation window produce monotonically increasing $M_h$ (and therefore $J_(upright("production,max"))$):

$
M_h^((n+1)) = M_h^((n)) + Delta M_h^(upright("net"))(n) quad upright("when ") t_(n+1) - t_n in [tau_(min), tau_(max)]
$ <eq:training-adaptation>

where $tau_(min) approx 24$ hours (minimum recovery) and $tau_(max) approx 96$ hours (supercompensation window closure). This is the formal basis of the principle that training requires both adequate stimulus _and_ adequate recovery---a principle that the model will later show is catastrophically violated in ME/CFS.

