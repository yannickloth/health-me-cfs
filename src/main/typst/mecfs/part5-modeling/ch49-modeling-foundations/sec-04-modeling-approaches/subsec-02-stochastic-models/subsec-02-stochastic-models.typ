#import "../../../../shared/environments.typ": *

=== Stochastic Models

When the number of molecules or cells is small---as in NK cell cytotoxicity assays or viral reactivation events---stochastic effects become important. The chemical master equation describes the probability $P(bold(x), t)$ of the system being in state $bold(x)$ at time $t$:

$ frac(partial P(bold(x), t), partial t) = sum_(j=1)^(M) [ a_j (bold(x) - bold(nu)_j) P(bold(x) - bold(nu)_j, t) - a_j (bold(x)) P(bold(x), t) ] $ <eq:master-equation>

where $a_j (bold(x))$ is the propensity function for reaction $j$ and $bold(nu)_j$ is the stoichiometry vector. In practice, the master equation is solved via the Gillespie algorithm (stochastic simulation algorithm), which generates exact sample trajectories. Stochastic models are used in Chapter @ch:immune-system-models for viral reactivation dynamics, where the transition from latent to lytic infection is a rare event governed by small numbers of viral genomes.

