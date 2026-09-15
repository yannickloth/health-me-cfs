#import "../../../../shared/environments.typ": *

=== Stable vs. Progressive Disease
<sec:stable-progressive>

ME/CFS trajectories vary substantially: some patients remain at a stable severity level for years, others progressively worsen, and a minority improve spontaneously @Brurberg2014. The integrated model explains these trajectories through the balance between damage accumulation and repair:

$
frac(d D_upright("total"), d t) = k_upright("damage") dot.op [upright("ROS")] + k_upright("immune_damage") dot.op bold(C)_upright("pro") - k_upright("repair") dot.op frac([upright("ATP")], K_upright("repair") + [upright("ATP")])
$ <eq:damage-accumulation>

where $D_upright("total")$ is aggregate tissue damage (encompassing mitochondrial damage, neuronal injury, endothelial dysfunction), $k_upright("damage")$ and $k_upright("immune_damage")$ are damage rates from oxidative stress and inflammation respectively, and $k_upright("repair")$ is the ATP-dependent repair rate. Three regimes emerge:

+ *Stable disease*: damage and repair rates are balanced ($d D_upright("total") \/ d t approx 0$). The patient remains at a constant severity level determined by the equilibrium damage.
+ *Progressive worsening*: damage exceeds repair ($d D_upright("total") \/ d t > 0$), often because the energy deficit limits repair capacity. The resulting damage further impairs energy production, creating a slow positive feedback loop that produces gradual decline over months to years.
+ *Gradual improvement*: repair exceeds damage ($d D_upright("total") \/ d t < 0$), possible when successful pacing or treatment reduces ROS and inflammation sufficiently for repair processes to dominate. This predicts that sustained activity management is a prerequisite for recovery, consistent with the energy envelope theory @jason2012energy.

