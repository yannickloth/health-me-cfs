#import "../../../../shared/environments.typ": *

=== Ordinary Differential Equations
<sec:ode-models>

Ordinary differential equations (ODEs) describe the time evolution of state variables (concentrations, cell counts, hormone levels) under the assumption that spatial variation within compartments is negligible. For a state vector $bold(x)(t) in RR^n$ and parameter vector $bold(theta) in RR^p$, a general ODE system takes the form:

$ frac(d bold(x), d t) = bold(f)(bold(x)(t), bold(theta), t), quad bold(x)(0) = bold(x)_0 $ <eq:general-ode>

ODE models are the primary framework used in Chapters @ch:energy-metabolism-models through @ch:neuroendocrine-models because they balance biological fidelity with mathematical tractability. The key assumptions are: (1) well-mixed compartments (e.g., plasma cytokine concentrations are uniform), (2) deterministic dynamics (stochastic fluctuations are negligible at the population level), and (3) continuous state variables (justified when molecule counts are large).

For ME/CFS-relevant systems, ODEs capture enzyme kinetics (Michaelis--Menten), receptor--ligand binding (Hill functions), and feedback regulation (inhibition/activation cascades). The Michaelis--Menten rate law, used extensively in energy metabolism models (Chapter @ch:energy-metabolism-models), describes enzyme-catalyzed reactions:

$ v = frac(V_"max" [S], K_m + [S]) $ <eq:michaelis-menten>

where $v$ is the reaction rate, $V_"max"$ is the maximum velocity, $[S]$ is the substrate concentration, and $K_m$ is the Michaelis constant (substrate concentration at half-maximum velocity).

