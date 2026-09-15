#import "../../../../shared/environments.typ": *

=== Structural Controllability Analysis

The system $dot(bold(x)) = bold(f)(bold(x)) + bold(B)bold(u)$ is structurally controllable if the controllability matrix $[bold(B) quad bold(J)bold(B) quad bold(J)^2bold(B) quad dots.h quad bold(J)^(n-1)bold(B)]$ has full rank, where $bold(B)$ is the input matrix specifying which state variables are directly modifiable by treatment. For the 64-variable model, the minimum number of independent driver nodes (directly treated variables) required for full controllability is determined by the maximum matching in the bipartite graph representation of $bold(J)$.

Analysis of the Jacobian structure at the disease attractor predicts that the ME/CFS system requires a minimum of *4--6 independent driver nodes* for full controllability, depending on the attractor. The predicted minimum driver sets are:

+ *5-node set*: ${alpha_"CI", C_"pro", upright("CRH"), G_"baro", upright("BH4")}$---one node per major subsystem (metabolic, immune, neuroendocrine, autonomic, neurotransmitter)
+ *4-node set* (if BBB permeability is co-treated): ${alpha_"CI", C_"pro", P_0, G_"baro"}$---BBB modification effectively controls central inflammation indirectly, eliminating the need for a separate neuroendocrine driver
+ *6-node set* (severe/locked attractor): adds epigenetic state $M$ (Equation @eq:epigenetic-evolution) and mast cell threshold $K_"MC"$ as additional required drivers due to the self-reinforcing feedback loops that lock this attractor

#include "model-insights/minimum-treatment-cocktail-size.typ"

