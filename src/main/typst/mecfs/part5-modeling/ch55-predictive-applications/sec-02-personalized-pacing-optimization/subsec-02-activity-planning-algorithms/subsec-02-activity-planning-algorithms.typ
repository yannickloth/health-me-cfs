#import "../../../../shared/environments.typ": *

=== Activity Planning Algorithms

Given $E_"budget"(t)$ and a set of planned activities with estimated energy costs, an optimization algorithm can schedule activities to maximize function while respecting the energy constraint:

$
max_(phi(t)) integral_0^T U(phi(t)) , d t quad upright("subject to") quad integral_0^T J_"demand"(phi(t)) , d t lt.eq integral_0^T E_"budget"(t) , d t
$ <eq:pacing-optimization>

where $U(phi(t))$ is a utility function reflecting the value of activities to the patient and $T$ is the planning horizon (typically one day). The constraint is the energy envelope. Additional constraints can encode PEM dynamics: not only must total daily expenditure stay below $E_"budget"$, but peak instantaneous demand must stay below $J_"production,max"$ to avoid acute ATP depletion, and recovery periods of minimum duration must separate activity bouts. This optimization problem is a constrained scheduling problem solvable with standard methods (linear programming for simplified versions, dynamic programming for time-dependent constraints).

