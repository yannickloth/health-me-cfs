#import "../shared/environments.typ": *

= Mathematical Model Details <app:mathematical-details>

This appendix provides the complete mathematical specifications for the models developed in Part V, including full parameter tables, derivations of key results, numerical methods, and sensitivity analysis procedures. Readers should consult the corresponding chapters for biological context and interpretation.

== Complete Model Equations <sec:complete-equations>

=== Energy Metabolism Model

The energy metabolism model (Chapter @ch:energy-metabolism-models) comprises 8 state variables. The complete ODE system is:

$
frac(d[upright("ATP")], d t) &= 2 J_upright("glyc") + J_upright("ATPsyn") - J_upright("demand")(t) \
frac(d[upright("ADP")], d t) &= J_upright("demand")(t) - 2 J_upright("glyc") - J_upright("ATPsyn") + J_("AK,fwd") - J_("AK,rev") \
frac(d[upright("AMP")], d t) &= J_("AK,rev") - J_("AK,fwd") \
frac(d[upright("NADH")], d t) &= 2 J_upright("glyc") + 3 J_upright("Krebs") - J_upright("CI") \
frac(d[upright("Pyr")], d t) &= J_upright("glyc") - J_upright("PDH") \
frac(d Delta Psi, d t) &= frac(1, C_m)(4 J_upright("CI") + 4 J_upright("CIII") + 2 J_upright("CIV") - n_upright("ATP") J_upright("ATPsyn") - J_upright("leak")) \
frac(d[upright("ROS")], d t) &= J_upright("ROS") - k_upright("SOD")[upright("SOD")][upright("ROS")] - k_upright("GPx")[upright("GPx")][upright("ROS")] \
frac(d D, d t) &= k_D [upright("ROS")] dot.op bb(1)_([upright("ROS")] > upright("ROS")_upright("thr")) - k_upright("rep") frac([upright("ATP")], K_upright("rep") + [upright("ATP")])
$ <eq:app-energy-odes>

where the proton stoichiometry coefficients (4, 4, 2) are the number of protons pumped per electron pair by Complexes I, III, and IV respectively (total 10 H⁺ per NADH), $n_upright("ATP") approx 8/3$ is the H⁺/ATP ratio of ATP synthase, $J_upright("AK")$ denotes the adenylate kinase equilibrium ($2 upright("ADP") arrows.lr upright("ATP") + upright("AMP")$, $K_upright("eq") approx 0.44$), and $J_upright("PDH")$ is the pyruvate dehydrogenase flux linking glycolysis to the Krebs cycle. The conservation constraints $[upright("ATP")] + [upright("ADP")] + [upright("AMP")] = A_upright("total")$ and $[upright("NAD")]^+ + [upright("NADH")] = N_upright("total")$ reduce the independent variables to 6. The adenylate kinase equilibrium is maintained by setting $J_("AK,fwd") - J_("AK,rev") = k_upright("AK")(K_upright("eq")[upright("ADP")^2] - [upright("ATP")][upright("AMP")])$.

=== Energy Metabolism Parameter Table

Table @tab:energy-params lists all parameters with healthy baseline values, ME/CFS ranges, units, and sources. Parameter values are drawn from published enzymology, metabolomics, and CPET data where available; parameters without direct experimental constraints are indicated.

#figure(
  table(
    columns: (auto, auto, auto, auto, auto),
    [*Parameter*], [*Healthy*], [*ME/CFS*], [*Units*], [*Source*],
    [$V_(max, upright("PFK-1"))$], [1.2], [1.2], [mM/min], [Enzymology],
    [$K_(0.5)^(upright("F6P"))$], [0.1], [0.1], [mM], [Enzymology],
    [$n_H$ (PFK-1)], [2.5], [2.5], [--], [Enzymology],
    [$K_i^(upright("ATP"))$], [1.0], [1.0], [mM], [Enzymology],
    [$V_(max, upright("CI"))$], [1.0], [0.5--0.8], [mM/min], [@Tomas2017],
    [$K_m^(upright("NADH"))$], [0.05], [0.05], [mM], [Enzymology],
    [$Delta Psi_upright("threshold")$], [110], [110], [mV], [Biophysics],
    [$J_("leak,0")$], [0.05], [0.075--0.15], [mM/min], [Estimated],
    [$A_upright("total")$], [8.0], [8.0], [mM], [Physiology],
    [$N_upright("total")$], [1.0], [0.6--0.9], [mM], [@heng2025mecfs (PBMC data; tissue value predicted)],
    [$k_upright("ROS")$], [0.01], [0.01], [min⁻¹], [Estimated],
    [$k_upright("SOD")$], [10.0], [10.0], [mM⁻¹min⁻¹], [Enzymology],
    [$k_D$], [0.001], [0.001], [min⁻¹], [Estimated],
    [$k_upright("rep")$], [0.005], [0.005], [min⁻¹], [Estimated],
  ),
  caption: [Energy metabolism model parameters.]
) <tab:energy-params>

=== Immune System Model

The immune model (Chapter @ch:immune-system-models) comprises 12 state variables for cell populations and 6 for cytokines. The NK cell, T cell, and B cell dynamics are specified by Equations @eq:nk-dynamics and @eq:bcell-dynamics. The cytokine network is defined by the production and degradation terms in Equation @eq:cytokine-general. Full parameter tables for the immune model follow the same format as Table @tab:energy-params; key parameters are listed below.

#figure(
  table(
    columns: (auto, auto, auto, auto, auto),
    [*Parameter*], [*Healthy*], [*ME/CFS*], [*Units*], [*Source*],
    [$s_N$ (NK production)], [50], [50], [cells/$mu$L/day], [Physiology],
    [$k_("act,0")$ (NK)], [0.2], [0.2], [day⁻¹], [Estimated],
    [$k_upright("exh")$ (NK)], [0.05], [0.1--0.2], [day⁻¹], [@Hardcastle2016],
    [$k_upright("recov")$ (NK)], [0.1], [0.03--0.07], [day⁻¹], [Estimated],
    [$delta_("IL-6")$], [0.5], [0.5], [h⁻¹], [Pharmacokinetics],
    [$delta_upright("TNF")$], [0.7], [0.7], [h⁻¹], [Pharmacokinetics],
    [$d_P$ (plasma cell)], [0.003], [0.003], [day⁻¹], [Immunology],
    [$lambda_0$ (reactivation)], [0.001], [0.005--0.02], [day⁻¹], [Estimated],
  ),
  caption: [Selected immune model parameters.]
) <tab:immune-params>

=== Neuroendocrine Model

The HPA axis (Equation @eq:hpa-axis), autonomic (Equation @eq:ans-balance), neurotransmitter (Equations @eq:tryptophan and @eq:catecholamines), and sleep--wake (Equation @eq:sleep-wake) models contribute 14 additional state variables. Key parameters:

#figure(
  table(
    columns: (auto, auto, auto, auto, auto),
    [*Parameter*], [*Healthy*], [*ME/CFS*], [*Units*], [*Source*],
    [$sigma_H$ (CRH)], [10], [10], [pg/mL/h], [Endocrinology],
    [$a_c$ (circadian)], [0.4], [0.15--0.25], [--], [@cambras2018circadian],
    [$n_F$ (feedback)], [2.0], [3.0--4.0], [--], [@Cleare1999],
    [$delta_F$ (cortisol)], [0.08], [0.08], [h⁻¹], [Pharmacokinetics],
    [$G_S$ (baroreflex)], [0.5], [0.2--0.4], [bpm/mmHg], [@Newton2007],
    [$r_upright("decay")$ (sleep)], [0.05], [0.02--0.04], [h⁻¹], [Estimated],
    [$v_("IDO,basal")$], [0.01], [0.01], [mM/h], [@Kavyani2022kynurenine],
  ),
  caption: [Selected neuroendocrine model parameters.]
) <tab:neuro-params>

== Parameter Estimation Methods <sec:parameter-estimation>

=== Maximum Likelihood Estimation

For the energy metabolism model, parameters are estimated by minimizing the weighted residual sum of squares between model predictions and CPET-derived measurements (peak VO₂, anaerobic threshold, lactate kinetics). The objective function is:

$
cal(L)(bold(theta)) = -frac(1, 2) sum_(i=1)^(N) lr([ frac((y_i - hat(y)_i (bold(theta)))^2, sigma_i^2) + log(2 pi sigma_i^2) ])
$ <eq:app-mle>

where $y_i$ are observed values, $hat(y)_i (bold(theta))$ are model predictions at parameter vector $bold(theta)$, and $sigma_i$ are measurement standard deviations. Optimization uses the Nelder--Mead simplex algorithm for initial exploration followed by gradient-based refinement (L-BFGS-B with box constraints on biologically plausible parameter ranges).

=== Bayesian Inference

Bayesian parameter estimation uses informative priors derived from published literature. For each parameter $theta_j$, the prior distribution encodes existing knowledge:

- *Well-characterized parameters* (enzyme $K_m$ values, degradation rates): Log-normal priors with mean and variance from published enzymology
- *Moderately characterized parameters* (impairment factors $alpha_upright("CI")$, $beta$): Uniform priors on biologically plausible ranges
- *Poorly characterized parameters* (symptom weighting coefficients): Weakly informative half-normal priors

Posterior sampling uses the No-U-Turn Sampler (NUTS), a variant of Hamiltonian Monte Carlo that automatically tunes the step size and trajectory length. Convergence is assessed by the $hat(R)$ statistic ($hat(R) < 1.01$ required) and effective sample size ($n_upright("eff") > 400$ per chain). Four independent chains of 2000 post-warmup samples each are used.

== Numerical Methods <sec:numerical-methods>

=== ODE Integration

The stiff ODE systems arising from the coupled multi-system model (42 state variables) are integrated using implicit methods. The recommended solver is the Radau IIA method (5th-order, L-stable), which handles the wide range of timescales present in the model (milliseconds for enzyme kinetics to hours for cytokine dynamics) without requiring manual timescale separation. Absolute and relative error tolerances are set to $10^(-8)$ and $10^(-6)$ respectively.

For the stochastic viral reactivation model, the Gillespie stochastic simulation algorithm (SSA) is used for the latent-to-lytic transition, coupled to deterministic ODE integration for the subsequent immune response. The hybrid scheme switches from SSA to ODE at the moment of reactivation, using the SSA-generated viral load as an initial condition for the ODE system.

=== Steady-State Computation

Steady states of the ODE system satisfy $bold(f)(bold(x)^*, bold(theta)) = bold(0)$. These are computed using Newton's method with analytical Jacobian. Stability is determined by the eigenvalues of the Jacobian evaluated at $bold(x)^*$: the steady state is stable if all eigenvalues have negative real part, and unstable otherwise. Bifurcation analysis (continuation of steady states as parameters vary) is performed using pseudo-arclength continuation to trace solution branches through turning points and detect Hopf bifurcations.

== Sensitivity Analysis Results <sec:sensitivity-analysis>

Global sensitivity analysis uses Sobol indices computed via Saltelli's sampling scheme. For each output of interest (e.g., steady-state ATP, PEM severity after standardized exertion), the first-order index $S_i$ quantifies the fraction of output variance attributable to parameter $theta_i$ alone, and the total-order index $S_(T i)$ includes contributions from all interactions involving $theta_i$:

$
S_i &= frac(upright("Var")(bb(E)[Y | theta_i]), upright("Var")(Y)) \
S_(T i) &= 1 - frac(upright("Var")(bb(E)[Y | bold(theta)_(tilde i)]), upright("Var")(Y))
$ <eq:sobol-indices>

where $bold(theta)_(tilde i)$ denotes all parameters except $theta_i$. A sample size of $N(2p+2)$ model evaluations is required, where $p$ is the number of parameters and $N >= 1000$ for convergent estimates. For the full 42-variable model with approximately 60 parameters, this requires ~122,000 model evaluations---computationally feasible given the sub-second integration time per evaluation.

Parameters with $S_(T i) < 0.01$ are classified as insensitive and can be fixed at nominal values without affecting model predictions. Parameters with $S_i > 0.1$ are classified as influential and are prioritized for experimental measurement.

== Structural Identifiability <sec:structural-identifiability>

Structural identifiability analysis determines whether model parameters can be uniquely estimated from the available output measurements, assuming noise-free data of arbitrary quantity. For the energy metabolism model, the measured outputs are $[upright("ATP")]$, $[upright("lactate")]$ (derived from $[upright("Pyr")]$), and VO₂ (proportional to $J_upright("CIV")$). Using the differential algebra approach, we construct the input--output equations by eliminating unmeasured state variables. Parameters appearing independently in the coefficients of these equations are structurally identifiable; parameters appearing only in combinations are structurally unidentifiable (only the combination can be estimated).

Analysis of the energy metabolism model reveals that: (1) $V_(max, upright("CI"))$ and $K_m^(upright("NADH"))$ are individually identifiable from VO₂ data; (2) $k_upright("ROS")$ and $k_upright("SOD")$ are identifiable only as the ratio $k_upright("ROS") \/ k_upright("SOD")$ from ROS-related outputs; (3) the damage parameters $k_D$ and $k_upright("rep")$ are identifiable from longitudinal day-1/day-2 CPET data but not from single-time-point measurements. These identifiability results guide experimental design: measuring ROS directly (rather than inferring from downstream markers) would resolve the $k_upright("ROS") \/ k_upright("SOD")$ ambiguity.

== Code Availability <sec:code-availability>

The mathematical models described in Part V are specified as systems of ordinary differential equations with explicit parameter definitions (this appendix). Implementation in any scientific computing environment (Python/SciPy, MATLAB, Julia/DifferentialEquations.jl, R/deSolve) is straightforward from the equations provided. No proprietary software is required. The parameter tables in this appendix provide all values needed to reproduce the models.

For reproducibility, the recommended implementation stack is:

- *ODE integration*: Julia with DifferentialEquations.jl (Radau5 solver) or Python with SciPy `solve_ivp` (Radau method)
- *Bayesian inference*: Stan (via CmdStan or PyStan) for NUTS sampling, or Julia with Turing.jl
- *Sensitivity analysis*: SALib (Python) for Sobol index computation
- *Bifurcation analysis*: AUTO-07p or MatCont (MATLAB) for continuation
