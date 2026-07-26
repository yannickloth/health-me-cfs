#import "../../../../shared/environments.typ": *

=== Combination Therapy Effects
<sec:combination-therapy>

The integrated model enables simulation of multi-target interventions. Combination therapy can produce synergistic effects when interventions target complementary pathways. For example, the model predicts that combining CoQ10 (increasing ETC capacity) with an anti-inflammatory agent (reducing $J_upright("immune")$) produces greater ATP surplus than either alone, because the energy freed from reduced immune demand is processed more efficiently through the enhanced ETC. Formally, synergy occurs when:

$
Delta [upright("ATP")]_(upright("A+B")) > Delta [upright("ATP")]_upright("A") + Delta [upright("ATP")]_upright("B")
$ <eq:synergy>

The model identifies the parameter combinations most likely to produce synergy, providing a rational basis for combination therapy design rather than empirical trial-and-error.

