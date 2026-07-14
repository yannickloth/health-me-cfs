#import "../shared/environments.typ": *

=== Brain Clearance Architecture: Multi-Compartment Glymphatic Model

#proposal(title: [Multi-Compartment ODE Model of Regional Clearance with Yang 2026 Exit Route Kinetics])[
*Certainty: 0.30 (model formalism; parameter values from mouse data).*

The paper's existing glymphatic framework treats clearance as a single-compartment process. Chayama et al.\ (2026) @Chayama2026BrainClearance demonstrate that brain-derived proteins drain through anatomically distinct compartments (dorsal dura, dorsal skull, basal skull, cribriform plate, nasal cavity) with different kinetics ($k_{"skull"} = -0.008$, $k_{"dura"} = 0.127--0.261$). A multi-compartment ODE model can capture this architecture:

*State variables:*
- $Q_{"dorsal"}(t)$: waste in dorsal drainage compartment (cortex $arrow.r$ dorsal dura/skull)
- $Q_{"basal"}(t)$: waste in basal drainage compartment (striatum $arrow.r$ basal skull/nasal)
- $Q_{"skull"}(t)$: waste in skull marrow compartment (slow outflow)
- $Q_{"nasal"}(t)$: waste in nasal/cribriform compartment (rapid turnover)
- $Q_{"blood"}(t)$: waste leaked into bloodstream (inflammation-induced rerouting)

*Governing equations:*
$ (d Q_{"dorsal"})/(d t) = G_{"dorsal"} - k_{"dorsal"} dot Q_{"dorsal"} + k_{"inflam,dorsal"}(t) dot Q_{"blood"} $
$ (d Q_{"basal"})/(d t) = G_{"basal"} - k_{"basal"} dot Q_{"basal"} + k_{"inflam,basal"}(t) dot Q_{"blood"} $
$ (d Q_{"skull"})/(d t) = G_{"skull"} - k_{"skull"} dot Q_{"skull"} $
$ (d Q_{"nasal"})/(d t) = G_{"nasal"} - k_{"nasal"} dot Q_{"nasal"} $
$ (d Q_{"blood"})/(d t) = sum_{"i"} k_{"inflam,i"}(t) dot Q_{"i"} - k_{"clear,blood"} dot Q_{"blood"} $

*ME/CFS parameter modifications:*
- $k_{"dorsal"}, k_{"basal"}, k_{"skull"}, k_{"nasal"}$: reduced from normal (glymphatic impairment)
- $k_{"inflam,i"}(t)$: spikes during PEM (inflammation function of cytokine levels)
- $G_i$: may be normal or elevated (mitochondrial dysfunction increases waste per ATP produced)

*Testable predictions:*
1. Regional symptom patterns (executive vs. memory vs. sensorimotor brain fog) correlate with compartment-specific $k_i$ impairment
2. PEM severity correlates with peak $k_{"inflam,i"}(t)$ magnitude
3. Treatment effect heterogeneity predicted by which compartment's $k_i$ improves (NE-targeted: dorsal/advective; AQP4-targeted: diffuse/slow; anti-inflammatory: reduces $k_{"inflam"}$)

*Limitations:* Compartment kinetic constants extrapolated from mouse data. Human compartment boundaries may differ. Requires MR-AIV compartment-resolved velocity measurements for parameter estimation, which do not yet exist for ME/CFS.
] <prop:multi-compartment-glymphatic-ode>

#proposal(title: [Dual-Speed Advection-Diffusion PDE Model with ME/CFS Parameter Modifications])[
*Certainty: 0.25 (model formalism; spatial parameterization requires Toscano 2026 MR-AIV data).*

Toscano et al. (2026) identified two glymphatic transport modes: fast advective perivascular flow ($tilde$3 $mu$m/s, LC-NE vasomotion-driven) and slow diffusive interstitial transport ($tilde$0.1 $mu$m/s, AQP4-mediated). Chayama et al.\ @Chayama2026BrainClearance add compartmentalized exit routes. Combining these into a spatial advection-diffusion PDE:

$ (partial C_{"fast"})/(partial t) + nabla dot (v_{"fast"} dot C_{"fast"}) = -k_{"ex"} dot (C_{"fast"} - C_{"slow"}) + S_{"fast"} $
$ (partial C_{"slow"})/(partial t) = nabla dot (D_{"slow"} nabla C_{"slow"}) + k_{"ex"} dot (C_{"fast"} - C_{"slow"}) - k_{"exit"} dot C_{"slow"} + S_{"slow"} $

Where $v_{"fast"}(x,t)$ is the advective velocity (NE oscillation amplitude-dependent), $D_{"slow"}$ is the effective diffusion coefficient (AQP4-dependent), and $k_{"exit"}$ is the compartment-specific exit rate from the slow compartment to border drainage routes (incorporating Yang/Chayama compartmental kinetics).

*ME/CFS modifications:*
- $v_{"fast"}$ reduced (LC-NE oscillation impairment, Section @sec:ch15-ne-vasomotion)
- $D_{"slow"}$ reduced (AQP4 depolarization, Section @sec:ch15-glymphatic)
- $k_{"exit"}$ compartment-specific reduction depending on which border compartment is impaired

*Predictions:*
1. Advective-dominant impairment patients (low $v_{"fast"}$, preserved $D_{"slow"}$) respond to NE-targeted treatments
2. Diffusive-dominant impairment patients (low $D_{"slow"}$, preserved $v_{"fast"}$) respond to AQP4-targeted treatments
3. Dual impairment requires combination therapy

*Limitations:* Requires 3D MR-AIV velocity field data for spatial parameter estimation. PDE discretization introduces numerical errors. No ME/CFS spatial glymphatic data exist.
] <prop:dual-speed-pde-glymphatic>

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
