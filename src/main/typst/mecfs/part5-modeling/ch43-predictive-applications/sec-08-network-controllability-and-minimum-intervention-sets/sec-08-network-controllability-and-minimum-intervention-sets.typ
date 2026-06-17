#import "../../../shared/environments.typ": *

== Network Controllability and Minimum Intervention Sets
<sec:network-controllability>

The integrated ODE system defines a directed network where nodes are state variables and edges are nonzero entries in the Jacobian $bold(J) = partial bold(f) \/ partial bold(x)$. Network control theory @Liu2011Controllability provides tools to determine the minimum set of nodes that must be directly influenced to drive the system from one state to another.

#include "subsec-01-structural-controllability-analysis/subsec-01-structural-controllability-analysis.typ"
#include "subsec-02-optimal-driver-node-selection/subsec-02-optimal-driver-node-selection.typ"
