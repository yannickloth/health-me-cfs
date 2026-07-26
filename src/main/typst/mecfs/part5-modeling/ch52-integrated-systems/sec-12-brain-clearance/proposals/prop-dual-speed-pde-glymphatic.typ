#import "../../../../shared/environments.typ": *

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
