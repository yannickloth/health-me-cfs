#import "../../../../shared/environments.typ": *

=== Plasma Cell Depletion (Daratumumab)

Daratumumab, an anti-CD38 monoclonal antibody, targets plasma cells directly---unlike rituximab, which depletes only CD20⁺ B cells and spares CD20⁻ plasma cells. A pilot study reported a 60% response rate in ME/CFS patients with elevated GPCR autoantibodies @Fluge2025daratumumab. The model represents daratumumab as simultaneous depletion of both $B_a$ and $P$ populations:

$
frac(d P, d t)|_(upright("dara")) = k_(upright("plasma")) B_a - d_P P - k_(upright("dara")) dot.op C_(upright("dara"))(t) dot.op P
$ <eq:daratumumab>

where $k_(upright("dara")) dot.op C_(upright("dara"))(t)$ is the drug-mediated killing rate. *The model yields a quantitative prediction impossible without the mathematics*: clinical response to daratumumab should appear faster than rituximab by a factor of approximately $d_P^(-1) \/ tau_(upright("dara"))$, where $d_P^(-1)$ is the natural plasma cell half-life (months to years) and $tau_(upright("dara"))$ is the daratumumab-mediated depletion time constant (days to weeks). For typical parameter values, the model predicts a response latency of 2--6 weeks for daratumumab versus 3--6 months for rituximab. Furthermore, the model predicts that daratumumab will show a clearer dose--response relationship because it acts directly on the autoantibody-producing cells, whereas rituximab's effect is indirect and delayed through the plasma cell half-life bottleneck.

