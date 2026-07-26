#import "../../../../shared/environments.typ": *

=== Attractors as an Emergent Consequence of the Biochemistry
<sec:attractors-emergent>

An epistemological point warrants explicit discussion. The ODEs in @ch:energy-metabolism-models through @ch:integrated-systems were built from biochemical literature---enzyme kinetics, immune cell dynamics, mitochondrial biophysics---without targeting any particular dynamical behaviour. A modeller working from the same literature would make similar (though not necessarily identical) choices, because the key structural elements---saturating production kinetics, immune cell activation dependent on energy availability, bidirectional coupling---are standard biochemical building blocks, not exotic constructions selected for their dynamical properties.

This matters because the bistability derived below is a _consequence_ of these biochemical choices, not a premise. The model was not reverse-engineered from a desired phase portrait. However, we must be precise about what "emergent" means here: it does _not_ mean that every possible model of ME/CFS biochemistry will exhibit bistability. Specific modelling choices---particularly the Hill exponent in the immune activation term (see Remark below)---are necessary conditions for bistability. What we claim is weaker and more defensible: _given_ the standard biochemical forms used throughout @ch:energy-metabolism-models and @ch:immune-system-models, bistability follows without additional assumptions.

This section demonstrates that claim analytically, by deriving attractor existence from first principles on a reduced two-variable subsystem.

==== The Reduced Energy--Immune System
<sec:reduced-2d>

Consider only the two state variables that carry the dominant positive feedback: ATP concentration $A equiv [upright("ATP")]$ and activated immune cell count $I equiv N_a$. All other variables are treated as quasi-steady-state parameters. From @eq:energy-immune-coupling and @eq:immune-energy-feedback, the reduced system is:

$
frac(d A, d t) &= P(A) - beta_0 - J_upright("immune")(I) \
frac(d I, d t) &= k_upright("act")^upright("eff")(A) dot.op I_0 - (k_upright("exh") + d_a) I
$ <eq:reduced-system>

where $P(A)$ is the net ATP production rate---a unimodal (hump-shaped) function of $A$. The shape follows directly from the PFK-1 kinetics in @eq:pfk1: at low ATP, AMP is high (via adenylate kinase equilibrium $2 upright("ADP") arrow.l.r upright("ATP") + upright("AMP")$), maximally activating glycolysis, but the production machinery itself requires minimal ATP (hexokinase priming, ion gradients), so net production rises with $A$; at high ATP, product inhibition of PFK-1 and low AMP reduce glycolytic flux, while ATP synthase slows as ADP becomes scarce (@eq:atp-synthase), so production falls. The result is $P(A)$ rising from near zero, reaching a peak at intermediate $A$, then declining---a consequence of the adenylate kinase feedback loop, not a modelling choice. The remaining terms: $beta_0$ is basal demand, $J_upright("immune")(I) = e_a I$ is immune energy drain (linear in activated cells), $k_upright("act")^upright("eff")(A) = k_(upright("act,0")) A^2 \/ (K_upright("ATP")^2 + A^2)$ is the Hill-type effective activation rate (@eq:immune-energy-feedback), and $I_0$ is the resting immune cell pool (treated as constant in the reduced model). The parameter $e_a > 0$ is the per-cell energy cost of immune activation.

==== Nullcline Analysis
<sec:nullcline-analysis>

The fixed points of the system are the intersections of the two nullclines: the $A$-nullcline ($d A\/d t = 0$) and the $I$-nullcline ($d I\/d t = 0$).

*$I$-nullcline.* Setting $d I\/d t = 0$:

$ I^*(A) = frac(k_(upright("act,0")) I_0, k_upright("exh") + d_a) dot.op frac(A^2, K_upright("ATP")^2 + A^2) $ <eq:i-nullcline>

This is a sigmoidal (Hill) function of $A$, increasing from 0 at $A = 0$ to a plateau $I_max = k_(upright("act,0")) I_0 \/ (k_upright("exh") + d_a)$ as $A -> infinity$. The sigmoidal shape is a consequence of the Hill kinetics governing ATP-dependent immune activation (@eq:immune-energy-feedback).

#include "remarks/rem-hill-exponent.typ"

*$A$-nullcline.* Setting $d A\/d t = 0$:

$ I_upright("null")^A (A) = frac(P(A) - beta_0, e_a) $ <eq:a-nullcline>

As established above, $P(A)$ is unimodal: it rises at low $A$ (where the production machinery activates as minimal ATP becomes available), peaks at intermediate $A$, and declines at high $A$ (where product inhibition of PFK-1 and ADP scarcity throttle production). For the ME/CFS regime, where Complex I is partially inhibited ($alpha_upright("CI") < 1$), $P(A)$ is vertically compressed (lower peak) and horizontally compressed (the peak shifts leftward). The $A$-nullcline $(P(A) - beta_0)\/e_a$ inherits this unimodal shape: it rises at low $A$, peaks, and descends at high $A$.

*Intersection multiplicity condition.* Bistability exists when the $I$-nullcline and the $A$-nullcline intersect _three_ times. The $I$-nullcline (@eq:i-nullcline) is strictly monotone increasing and sigmoidal. The $A$-nullcline (@eq:a-nullcline) is unimodal (one local maximum, no other critical points). A strictly monotone curve and a unimodal curve can intersect at most three times: at most once on the ascending limb, at most once near the peak, and at most once on the descending limb. Three intersections occur when the following condition holds:

$ lr(frac(d I_upright("null")^A, d A)|)_(A=A_upright("inflection")) > lr(frac(d I^*, d A)|)_(A=A_upright("inflection")) $ <eq:bistability-condition>

That is, at the inflection point of the $A$-nullcline, its slope exceeds the slope of the sigmoidal $I$-nullcline. Expanding: the $I^*$ slope at inflection is $k_(upright("act,0")) I_0 \/ (2 (k_upright("exh") + d_a) K_upright("ATP"))$; the $A$-nullcline slope depends on $P'(A) \/ e_a$. The condition reduces to:

$ frac(P'(A_upright("inf")), e_a) > frac(k_(upright("act,0")) I_0, 2 (k_upright("exh") + d_a) K_upright("ATP")) $ <eq:bistability-inequality>

==== Parameter Regimes: Healthy vs.~ME/CFS
<sec:parameter-regimes>

@eq:bistability-inequality can be evaluated for each parameter regime using the values in @app:mathematical-details.

*Healthy regime* ($alpha_upright("CI") = 1.0$, $k_upright("exh") = 0.05 "day"^(-1)$, $k_upright("recov") = 0.10 "day"^(-1)$). With full Complex I activity, $P'(A)$ is steep and $P(A) - beta_0 > 0$ for a wide range of $A$. However, healthy $k_upright("exh")$ is low and $k_upright("recov")$ is high, so the immune exhaustion term $(k_upright("exh") + d_a)$ in the denominator of $I^*(A)$ is moderate. The $I$-nullcline plateau $I_max$ is therefore limited: the immune system self-regulates before escalating to energy-depleting levels. Numerically, the $A$-nullcline lies above the $I$-nullcline for all physiologically plausible $A$, and the two curves intersect _once_---yielding a single, stable healthy fixed point. The eigenvalues of the Jacobian at this point are:

$ lambda_(1,2) = frac(1, 2) [(f_(A A) + g_(I I)) plus.minus sqrt((f_(A A) - g_(I I))^2 + 4 f_(A I) g_(I A))] $ <eq:healthy-eigenvalues>

where $f_(A A) = partial(dot(A))\/partial A < 0$ (ATP dynamics are self-stabilising at steady state), $g_(I I) = -(k_upright("exh") + d_a) < 0$ (immune populations decay in the absence of activation), and the cross-terms $f_(A I) = -e_a < 0$ and $g_(I A) = k'_(upright("act,0")) I_0 > 0$. For healthy parameters, $|f_(A A) g_(I I)| > |f_(A I) g_(I A)|$, so the discriminant is negative (complex eigenvalues) or both real parts are negative. The single fixed point is a stable node or stable spiral: *the healthy state is an attractor*.

*ME/CFS regime* ($alpha_upright("CI") = 0.65$, $k_upright("exh") = 0.15 "day"^(-1)$, $k_upright("recov") = 0.04 "day"^(-1)$). With reduced Complex I activity, $P(A)$ is compressed: $P(A) - beta_0$ is positive over a narrower range of $A$ and the peak of $P'(A)$ is lower---the $A$-nullcline drops. Simultaneously, the ME/CFS regime has elevated $k_upright("exh")$. This _increases_ the denominator $(k_upright("exh") + d_a)$ of $I^*(A)$, which _lowers_ the plateau $I_max$---on its own this would make bistability harder, not easier. However, the critical effect is that the depressed $A$-nullcline (from reduced $alpha_upright("CI")$) now has a lower, narrower hump that intersects the (also lowered) $I$-nullcline in the three-intersection geometry. Whether @eq:bistability-inequality is satisfied depends on the quantitative balance between the compression of $P(A)$ and the lowering of $I_max$; for the stated parameter values, the condition holds (verified numerically in @app:mathematical-details).

#include "propositions/prop-bistability.typ"

#include "proofs/proof.typ"

The three fixed points are therefore:

+ *Disease fixed point* $(A_D, I_D)$: low ATP, high immune activation. On the ascending limb of the $A$-nullcline. The *disease attractor*.
+ *Saddle point* $(A_s, I_s)$: intermediate ATP, intermediate immune activation. Its stable manifold forms the *separatrix*---the boundary between the two basins of attraction.
+ *Healthy-adjacent fixed point* $(A_H, I_H)$: high ATP, low immune activation. On the descending limb of the $A$-nullcline. A *stable attractor*, but with a smaller basin of attraction than in the healthy regime.

The disease attractor exists because the positive feedback loop is self-sustaining at ME/CFS parameter values: high immune activation depletes ATP, depleted ATP impairs immune regulation, impaired regulation sustains high immune activation. This cycle does not close in the healthy regime because $k_upright("recov")$ is sufficiently high to bring activated cells back to resting before ATP is critically depleted.

==== Analytical Summary
<sec:attractor-summary>

The reduced 2D system establishes three results for the energy--immune subsystem:

+ *Both regimes have a healthy attractor*: even ME/CFS parameters support a healthy fixed point---but with a smaller basin of attraction. Recovery is theoretically possible without parameter restoration, but requires a large directed perturbation.
+ *The disease attractor is absent in the healthy regime*: at healthy parameter values, only one fixed point exists (@sec:parameter-regimes). As $alpha_upright("CI")$ decreases and $k_upright("exh")$ increases toward ME/CFS values, the disease and saddle fixed points appear (consistent with a saddle-node bifurcation, though tracing the exact bifurcation curve requires numerical continuation).
+ *The bistability depends on two structural ingredients*: (a) cooperative ($n gt.eq 2$) ATP-dependent immune activation (@rem:hill-exponent), and (b) a unimodal production function $P(A)$ (a consequence of adenylate kinase feedback and PFK-1 product inhibition). Models sharing both ingredients will exhibit qualitatively similar bifurcation structure; models lacking either (e.g., $n = 1$ Michaelis--Menten activation) will not.

#include "limitations/lim-qss-reduction.typ"

==== Competing Dynamical Hypotheses
<sec:competing-hypotheses>

The bistable fixed-point model is not the only dynamical explanation for ME/CFS chronicity. Three alternatives deserve explicit consideration.

*Continuous parametric shift (no bistability).* Under this hypothesis, ME/CFS represents a different region of a single attractor's basin: parameters (e.g., $alpha_upright("CI")$, $k_upright("exh")$) drift due to ongoing damage, and symptoms track the parameter shift continuously. Recovery occurs gradually when parameters return. This model predicts that partial treatment should produce partial, graded improvement---and that spontaneous recovery should correlate smoothly with parameter restoration. It is _less parsimonious_ than the bistable model for explaining two clinical observations: (1) many infections of comparable severity resolve without triggering ME/CFS, suggesting a threshold rather than a graded response; and (2) symptoms persist after the apparent trigger resolves, which a purely parametric model explains only by invoking ongoing hidden damage. However, the continuous-shift hypothesis is not decisively falsified by current evidence---a parametric model with rapid parameter change could mimic threshold-like onset, and ongoing subclinical damage (e.g., viral persistence) could explain persistence. Distinguishing the two models requires longitudinal multi-omic trajectories with sufficient temporal resolution to detect whether the state-space path shows a continuous drift or a discontinuous jump.

*Limit cycle (oscillatory attractor).* Under this hypothesis, the disease state is not a fixed point but a stable limit cycle: the system oscillates between better and worse states, potentially explaining the boom-bust pattern (PEM followed by partial recovery) characteristic of ME/CFS. This is a genuine alternative that the 2D analysis does not exclude. For limit cycles to arise in a 2D system, the disease fixed point would need to be an unstable spiral (positive real part of complex eigenvalues) surrounded by a stable limit cycle (via Hopf bifurcation). @prop:bistability shows the disease fixed point is a stable node at the stated parameters; however, for other parameter values a Hopf bifurcation could replace the stable disease node with a limit cycle. The two hypotheses are not mutually exclusive: some patients may sit in a stable disease attractor (steady-state illness) while others orbit a limit cycle (relapsing-remitting course). Distinguishing them clinically requires longitudinal time-series analysis of biomarkers with sufficient temporal resolution to detect oscillatory versus steady-state dynamics.

*Epigenetic lock-in (no dynamical bistability needed).* T cell exhaustion via epigenetic imprinting is well-documented @Pauken2016epigenetic: once T cells commit to an exhausted phenotype through DNA methylation changes, they persist regardless of the original trigger. Under this simpler hypothesis, chronicity reflects epigenetic memory rather than dynamical bistability---no feedback loop is needed, just a one-way epigenetic switch. This hypothesis is compatible with our model (@sec:epigenetic-dynamics already includes epigenetic consolidation), but would predict that disease persistence depends entirely on the epigenetic state, not on ongoing energy--immune feedback. It is testable: if epigenetic reprogramming (e.g., via demethylating agents) restores immune function without addressing energy metabolism, the epigenetic-only model is supported. If recovery requires simultaneous energy and immune normalisation, the feedback model is supported.

