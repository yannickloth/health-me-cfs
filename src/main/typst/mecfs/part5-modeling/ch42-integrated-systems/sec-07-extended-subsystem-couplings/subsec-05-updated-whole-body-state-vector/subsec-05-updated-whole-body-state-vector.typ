#import "../../../../shared/environments.typ": *

=== Updated Whole-Body State Vector
<sec:updated-state-vector>

The extended model incorporates the new subsystem variables:

- *Energy metabolism* (12 variables): original 8 $+$ $[L]$ (lactate), $Phi$ (fuel selection), $M_h$, $M_d$ (mitochondrial mass)
- *Immune system* (17 variables): original 12 $+$ $upright("MC")_r$, $upright("MC")_p$, $upright("MC")_d$ (mast cells), $[upright("His")]$ (histamine), PGD₂
- *Cytokines* (6 variables): unchanged
- *Coagulation* (3 variables): $[upright("Fbn")]$, $M_c$ (microclot burden), $[upright("Pls")]$ (plasmin)
- *Neuroendocrine* (10 variables): original 8 $+$ $[upright("BH")_4]$, $[upright("NO")]$
- *Autonomic/cardiovascular* (5 variables): original 4 $+$ CBF
- *Pain/sensitization* (2 variables): $cal(S)$ (sensitization state), $cal(F)$ (fiber density)
- *Sleep* (2 variables): unchanged
- *Gut* (5 variables): unchanged
- *Epigenetic* (n+1 variables): $bold(cal(M))$ (n per-locus methylation entries) and $cal(A)$ (histone acetylation). For the integrated ODE, the scalar summary $overline(cal(M))$ is used as a compressed approximation; see @oq:consolidation-directionality for the full vector specification.

The total system now comprises approximately 64 state variables. The additional 19 variables (relative to the initial 45-variable model) capture mast cell/histamine dynamics, coagulation, mitochondrial quality control, metabolic flexibility, neurovascular regulation, pain processing, epigenetic memory, and GI motility/SIBO dynamics. While the system is larger, its modular structure (each subsystem has $lt.eq 5$ coupling variables with others) maintains computational tractability: the Jacobian is sparse, enabling efficient numerical integration and bifurcation analysis.

