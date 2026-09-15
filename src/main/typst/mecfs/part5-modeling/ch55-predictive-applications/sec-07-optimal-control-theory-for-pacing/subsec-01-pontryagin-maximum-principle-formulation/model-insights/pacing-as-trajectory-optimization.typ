#import "../../../../../shared/environments.typ": *

#model-insight(title: [Pacing as Trajectory Optimization])[
The optimal control formulation reveals that optimal pacing is _not_ simply "stay below a fixed energy budget." The costate variable $lambda_E(t)$ (shadow price of energy) varies dynamically: energy is more valuable when damage is accumulating or immune activation is high. The model predicts *state-dependent pacing rules*: (1) rest more aggressively when immune markers are elevated (the energy "price" is higher because repair costs are rising), (2) front-load activity early in the day when energy reserves are highest (convex cost structure makes this optimal), and (3) avoid activity entirely during the 24--72 h post-infectious window (the damage rate $k_"damage"$ is transiently elevated). These rules emerge from the mathematics and cannot be derived from static energy envelope reasoning alone.
]
