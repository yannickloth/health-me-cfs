#import "../../../../shared/environments.typ": *

=== Model Architecture
<sec:model-architecture>

The whole-body model couples the four subsystem models through the interaction variables identified above. The complete state vector comprises:

- *Energy metabolism* (8 variables): $[upright("ATP")]$, $[upright("ADP")]$, $[upright("NADH")]$, $[upright("NAD")^+]$, $[upright("Pyruvate")]$, $Delta Psi$, $[upright("ROS")]$, $D$
- *Immune system* (12 variables): $N_r$, $N_a$, $N_e$, $T_n$, $T_e$, $T_m$, $T_upright("ex")$, $B_a$, $P$, $[upright("Ab")]$, $M_a$, $V$ (viral load)
- *Cytokines* (6 variables): $[upright("IL-1")beta]$, $[upright("IL-6")]$, $[upright("TNF-")alpha]$, $[upright("IFN-")gamma]$, $[upright("IL-10")]$, $[upright("TGF-")beta]$
- *Neuroendocrine* (8 variables): $H$, $A$, $F$, $W$, $[5 upright("HT")]$, $K$, $[upright("DA")]$, $[upright("NE")]$
- *Autonomic/cardiovascular* (4 variables): $S$, $V_upright("vagal")$, MAP, HR
- *Sleep* (2 variables): $S_upright("sleep")$, $C$
- *Gut* (5 variables): $[upright("butyrate")]$, $[upright("LPS")]$, $cal(G)$ (motility index), $B_upright("SI")$ (SIBO load), $eta$ (absorption efficiency)

The total system comprises approximately 45 state variables governed by coupled ODEs. Note that several symbols are reused across subsystems ($S$ for sympathetic tone and sleep pressure; $V$ for vagal tone and viral load); the subscripted forms ($S_upright("sleep")$, $V_upright("vagal")$) are used in the integrated model to resolve ambiguity. While large, this system is modest compared to genome-scale metabolic models (thousands of variables) and computationally tractable with standard numerical solvers.

