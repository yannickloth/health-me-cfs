#import "../../../../shared/environments.typ": *

#proposal(title: [Inflammatory Routing Disruption as a Bifurcation Model in PEM Dynamics])[
*Certainty: 0.25 (model formalism; parameter estimation requires PEM blood NfL data that do not yet exist).*

Chayama et al.\ @Chayama2026BrainClearance demonstrate that acute inflammation (LPS) causes a switch in clearance routing from normal border drainage to bloodstream leakage. In ME/CFS, PEM involves a cytokine surge that may trigger this same routing disruption. A bifurcation model captures the threshold-dependent nature of this switch:

*State variable:* $R_i(t)$ = routing state for compartment $i$ ($R_i = 0$: normal border drainage; $R_i = 1$: bloodstream leakage)
*Driver:* $I(t)$ = systemic inflammation level (IL-6, TNF-alpha concentration)

$ (d R_i)/(d t) = alpha dot sigma(I(t) - I_{"thresh,i"}) dot (1 - R_i) - beta dot R_i $

where $sigma(z) = 1/(1 + e^{-k_{"thresh"} dot z})$ is a sigmoid switching function, $I_{"thresh,i"}$ is the inflammation threshold for routing disruption in compartment $i$, $alpha$ is the activation rate, and $beta$ is the recovery rate.

*ME/CFS implications:*
- $I_{"thresh,i"}$ may be reduced in ME/CFS (sensitized BBB, chronic neuroinflammation)
- $beta$ may be reduced (slow recovery, consistent with 70x structural recovery timescale)
- Hysteresis possible: $R_i$ may remain elevated after $I(t)$ returns to baseline
- Repeated PEM episodes may cause chronic $R_i$ elevation (structural remodeling of clearance routes)

*Falsifiable prediction:* Single PEM episode causes transient routing disruption ($R_i arrow.r 1$) with recovery time tau = 1/beta. Repeated PEM reduces $I_{"thresh"}$ (sensitization). Anti-inflammatory pretreatment raises $I_{"thresh"}$, preventing routing disruption.

*Limitations:* LPS threshold data from acute mouse model; human PEM cytokine magnitudes may be orders of magnitude below the LPS threshold. Bifurcation structure is speculative. No human PEM routing disruption data exist.
] <prop:inflammatory-routing-bifurcation>
