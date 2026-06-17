#import "../../../../shared/environments.typ": *

=== The Energy Ratchet: A Discrete Event Model
<sec:ratchet-model>

The continuous damage model (Equation @eq:damage-accumulation) captures gradual progression but does not represent the discrete, step-wise decline observed in ME/CFS. While infections are a major trigger (Speculation~@spec:infection-damage-ratchet), the ratchet pattern extends to any event that forces energy expenditure beyond the recoverable envelope: PEM-inducing overexertion, surgical stress, emotional trauma, or hormonal shifts. We therefore formalise a general _energy ratchet_ as a hybrid dynamical system combining continuous inter-event repair dynamics with discrete event-triggered damage jumps.

../../../../figures/fig-energy-ratchet.typ"

==== State Variables and Inter-Event Dynamics

Let $B(t) in [0,1]$ denote baseline functional capacity (1 = healthy, 0 = complete disability) and let damaging events (infections, PEM crashes, surgeries, major stressors) arrive at discrete times $t_1 < t_2 < dots.c$. Between events, the system evolves under continuous repair:

$
frac(d B, d t) = r(B) dot.op frac([upright("ATP")], K_upright("repair") + [upright("ATP")]) dot.op (B_max (t) - B(t)), quad t in (t_k, t_(k+1))
$ <eq:ratchet-interevent>

where $r(B)$ is a repair rate that decreases with accumulated damage (reflecting reduced regenerative capacity), $[upright("ATP")] \/ (K_upright("repair") + [upright("ATP")])$ is the energy-dependent repair term from Equation @eq:damage-accumulation, and $B_max (t)$ is the current _ceiling_---the maximum baseline the system can recover to, which is itself modified by each damaging event (see below). The key asymmetry is that $B$ relaxes toward $B_max$, but $B_max$ can only decrease.

==== Damaging Events: The Ratchet Jump Map

At each event time $t_k$, two discrete updates occur:

$
B_max (t_k^+) &= B_max (t_k^-) - delta_k \
B(t_k^+) &= B(t_k^-) - Delta_k
$ <eq:ratchet-jump-ceiling>

where $delta_k > 0$ is the _irreversible ceiling loss_---the permanent downward ratchet step---and $Delta_k > delta_k$ is the total acute functional drop (which includes the reversible component that can be partially recovered between events). Both values are clamped so that $B$ and $B_max$ remain in $[0,1]$. The irreversible fraction depends on event severity $S_k$, event duration $tau_k$, and the patient's current damage state:

$
delta_k = delta_0 dot.op S_k dot.op (1 + alpha sum_(j<k) delta_j) dot.op (1 - e^(-tau_k \/ tau_upright("crit")))
$ <eq:ratchet-irreversible-loss>

Here $delta_0$ is a baseline vulnerability parameter (patient-specific), $alpha gt.eq 0$ controls _damage sensitisation_ (prior damage amplifies future damage, producing accelerating decline), and $tau_upright("crit")$ is a critical event duration beyond which damage saturates. In the general model, $delta_0$ and $tau_upright("crit")$ may differ by event type (e.g., $delta_0^upright("inf")$ for infections, $delta_0^upright("PEM")$ for overexertion); for parsimony, we present the single-parameter form here. The term $(1 + alpha sum_(j<k) delta_j)$ formalises the positive feedback loop identified in the qualitative model: for infections, this captures microglial priming and immune exhaustion; for overexertion events, it captures progressive mitochondrial damage and reduced metabolic reserve. In both cases, each event leaves the system more vulnerable to the next.

==== Recovery Dynamics and Asymmetry

Between events, Equation @eq:ratchet-interevent drives $B(t) -> B_max$ exponentially with effective time constant:

$
tau_upright("rec") (B) = frac(1, r(B)) dot.op frac(K_upright("repair") + [upright("ATP")], [upright("ATP")])
$ <eq:ratchet-recovery-time>

The ratchet asymmetry emerges because $tau_upright("rec")$ increases as $B$ decreases---sicker patients recover more slowly (reduced ATP availability impairs repair). If the inter-event interval $t_(k+1) - t_k < 3 tau_upright("rec")$, the patient has not recovered to within approximately 5% of $B_max$ before the next hit (exact fraction depends on how $r(B)$ and $[upright("ATP")]$ vary during recovery; the 5% estimate assumes roughly constant effective rate), producing the "staircase" pattern described in Section @sec:relapse-remission. In this regime, the effective baseline drops faster than the ceiling alone would predict, because each event strikes before recovery is complete. This applies equally to closely-spaced PEM crashes (e.g., a patient repeatedly exceeding their energy envelope) and to recurrent infections.

==== Severity Transitions and Critical Thresholds

Clinical severity levels correspond to threshold values of $B$:

$
upright("Severity")(t) = cases(
  upright("mild") & B(t) > theta_upright("mod"),
  upright("moderate") & theta_upright("sev") < B(t) lt.eq theta_upright("mod"),
  upright("severe") & theta_upright("vs") < B(t) lt.eq theta_upright("sev"),
  upright("very severe") & B(t) lt.eq theta_upright("vs")
)
$ <eq:ratchet-severity>

with approximate thresholds $theta_upright("mod") approx 0.6$, $theta_upright("sev") approx 0.35$, $theta_upright("vs") approx 0.15$ (to be calibrated against functional capacity scores).

===== Extended Severity Classification for the Extremely Severe Range

The standard four-level classification (Equation @eq:ratchet-severity) collapses all patients below $theta_upright("vs")$ into a single category. Jahanbani et al. proposed a finer-grained scale that subdivides the very severe range into five extremely severe sub-levels (A through E, with E the most profound) @Jahanbani2024severity. This reflects clinical observations that patients at the bottom of the severity spectrum exhibit meaningful differences in functional capacity---ability to communicate, tolerate sensory input, or take nutrition orally---that the coarse classification obscures. The model accommodates this refinement by partitioning the very severe range into equal-width bands:

$
upright("Sub-level")(t) = cases(
  upright("VS") & theta_upright("es") < B(t) lt.eq theta_upright("vs"),
  upright("ES-A") & theta_upright("es") - w < B(t) lt.eq theta_upright("es"),
  upright("ES-B") & theta_upright("es") - 2w < B(t) lt.eq theta_upright("es") - w,
  upright("ES-C") & theta_upright("es") - 3w < B(t) lt.eq theta_upright("es") - 2w,
  upright("ES-D") & theta_upright("es") - 4w < B(t) lt.eq theta_upright("es") - 3w,
  upright("ES-E") & B(t) lt.eq theta_upright("es") - 4w
)
$ <eq:ratchet-severity-extended>

with $theta_upright("es") approx 0.10$ and band width $w = theta_upright("es") \/ 5 = 0.02$ (thresholds to be calibrated against the Jahanbani functional descriptors). The equal-width partition is deliberate: it is not the _thresholds_ that need a nonlinear transformation, because the _dynamics_ already supply the compression.

===== Biophysically Grounded Recovery Asymmetry

The recovery time constant (Equation @eq:ratchet-recovery-time) depends on both the repair rate $r(B)$ and the energy-dependent repair term:

$
tau_upright("rec") (B) = frac(1, r(B)) dot.op frac(K_upright("repair") + [upright("ATP")](B), [upright("ATP")](B))
$

Rather than assuming linear proportionalities ($[upright("ATP")] prop B$, $r prop B$), both relationships can be derived from the biophysics already in the model (Chapter @ch:energy-metabolism-models).

====== $[upright("ATP")](B)$: Three Regimes from the ATP Synthase Threshold

The ATP synthase equation (Equation @eq:atp-synthase) gives ATP production as a function of the mitochondrial membrane potential $Delta Psi$:

$
J_upright("ATP synthase") prop frac(Delta Psi - Delta Psi_upright("threshold"), Delta Psi)
$

where $Delta Psi_upright("threshold") approx 110$ mV. Since $Delta Psi$ depends on ETC complex activity (which maps to $B$ through $alpha_upright("CI")$), steady-state ATP is a piecewise function of $B$ with three regimes:

$
[upright("ATP")](B) approx cases(
  [upright("ATP")]_max quad & B > B_upright("cliff") quad & "(plateau: " Delta Psi ">>" Delta Psi_upright("threshold") ")",
  [upright("ATP")]_max dot.op phi.alt(B) quad & B_upright("floor") < B lt.eq B_upright("cliff") quad & "(cliff: steep " Delta Psi "drop)",
  [upright("ATP")]_min quad & B lt.eq B_upright("floor") quad & "(floor: cell-survival minimum)"
)
$ <eq:atp-piecewise>

where $phi.alt(B)$ is the strongly nonlinear cliff function derived from the $Delta Psi$ dependence on Complex I capacity. From the worked example in Section @sec:etc-model: a 35% Complex I impairment ($alpha_upright("CI"): 1.0 -> 0.65$) produces a 39% ATP synthase flux reduction---disproportionate because $Delta Psi$ approaches $Delta Psi_upright("threshold")$. This disproportionality _is_ the cliff. Below $B_upright("floor")$, cells maintain $[upright("ATP")]_min$ (estimated at 15--30% of healthy levels from the ischaemia literature) to avoid apoptosis.

The approximate regime boundaries, mapped from the $alpha_upright("CI")$ values in the ch27 worked examples to the $B$ scale:

- $B_upright("cliff") approx 0.65$: above this, $Delta Psi$ is well above threshold ($> 145$ mV), ATP is near-maximal, and small changes in $B$ produce small ATP changes (quasi-plateau)
- $B_upright("floor") approx 0.05$: below this, $Delta Psi$ is at or below threshold, ATP synthase is minimal, and the cell operates on glycolytic ATP with an apoptosis-prevention floor

====== $r(B)$: Biogenesis--Mitophagy Balance

The repair rate $r(B)$ is not a free parameter but the net output of two ATP-dependent processes already modelled in Chapter @ch:energy-metabolism-models:

*Biogenesis* (Equation @eq:biogenesis): $J_upright("biogenesis") = v_upright("bio") dot.op frac([upright("AMPK")_a], K_upright("AMPK") + [upright("AMPK")_a]) dot.op frac([upright("NAD")^+], K_upright("SIRT1") + [upright("NAD")^+])$

This is a product of two Hill functions with _opposing_ energy dependencies: energy deficit activates AMPK (promoting biogenesis) but depletes NAD#super[+] (inhibiting SIRT1). The net result is a non-monotonic hump: biogenesis peaks at intermediate energy deficit and collapses at severe deficit when NAD#super[+] depletion dominates.

*Mitophagy* (Equation @eq:mitophagy): $J_upright("mitophagy") prop frac([upright("ATP")], K_upright("ATP,autophagy") + [upright("ATP")])$

Autophagy requires ATP. Below the critical threshold $[upright("ATP")]_upright("crit,autophagy")$, quality control collapses: damaged mitochondria accumulate because the energy for cleanup is precisely what the damaged organelles fail to produce.

The effective repair rate is therefore:

$
r(B) approx cases(
  r_max dot.op (1 - B\/B_upright("cliff")) quad & B > B_upright("cliff") quad & "(healthy: mild deficit, AMPK rising, NAD" upright("+") " adequate)",
  r_max dot.op psi(B) quad & B_upright("collapse") < B lt.eq B_upright("cliff") quad & "(cliff zone: competing AMPK/NAD" upright("+") " signals)",
  r_min quad & B lt.eq B_upright("collapse") quad & "(collapse: NAD" upright("+") " depleted, mitophagy stalled)"
)
$ <eq:repair-piecewise>

where $psi(B)$ captures the biogenesis hump---initially rising as AMPK activates, then falling as NAD#super[+] depletion dominates---and $B_upright("collapse") approx 0.10$--$0.15$ is the threshold where Chapter @ch:energy-metabolism-models predicts quality control failure ($gamma < 0.7$, $J_upright("biogenesis") < J_upright("mitophagy,eff")$).

====== Recovery Scaling by Regime

Substituting the biophysical functions (Equations @eq:atp-piecewise and @eq:repair-piecewise) into the recovery time constant:

$
tau_upright("rec") (B) = frac(1, r(B)) dot.op frac(K_upright("repair") + [upright("ATP")](B), [upright("ATP")](B))
$ <eq:recovery-scaling>

#figure(
  table(
    columns: (auto, auto, auto, auto, auto),
    [*Regime*], [*$B$ range*], [*$[upright("ATP")]$*], [*$r(B)$*], [*$tau_upright("rec")$ behaviour*],
    [Plateau], [$> B_upright("cliff") approx 0.65$], [$approx [upright("ATP")]_max$], [Moderate (rising)], [Slow, roughly constant --- recovery timescale set by $r$ alone],
    [Cliff], [$B_upright("collapse") < B lt.eq B_upright("cliff")$], [Steep drop ($phi.alt$)], [Hump then decline ($psi$)], [Rapid increase --- small $B$ drops cause disproportionate $tau_upright("rec")$ increase],
    [Floor], [$lt.eq B_upright("collapse") approx 0.10$], [$approx [upright("ATP")]_min$], [$approx r_min$ (collapsed)], [$tau_upright("rec") approx "const" \/ r_min$ --- very long, set by collapsed repair machinery],
  ),
  caption: [Recovery time constant behaviour in three biophysical regimes. The cliff regime produces the steepest $tau_upright("rec")$ increase because both $[upright("ATP")]$ and $r(B)$ decline simultaneously.],
) <tab:recovery-regimes>

In the *cliff regime* ($B approx 0.15$--$0.65$, encompassing moderate through severe), both $[upright("ATP")]$ and $r(B)$ decline with $B$, producing a steep rise in $tau_upright("rec")$. The exact exponent depends on the shapes of $phi.alt$ and $psi$, which are determined by the ETC threshold nonlinearity and the AMPK/NAD#super[+] competition respectively. The order of magnitude is consistent with the $1\/B^2$ estimate from the linear approximation, but the cliff shape makes it locally _steeper_ than $1\/B^2$ near the $Delta Psi$ threshold.

In the *floor regime* ($B lt.eq 0.10$, extremely severe), $[upright("ATP")]$ plateaus at $[upright("ATP")]_min$ and $r(B)$ has collapsed to $r_min$. Recovery time is high but no longer divergent---instead, $tau_upright("rec") approx K_upright("repair") \/ (r_min dot.op [upright("ATP")]_min)$, a large constant. This has a clinical consequence: transitions between adjacent extremely severe sub-levels take approximately equal (very long) times, rather than the quadratically expanding times predicted by the linear approximation. The difference is that between ES-D and ES-E, the patient has hit the biophysical floor---the system cannot get worse in terms of per-unit recovery cost, even though it can still get worse in terms of absolute functional capacity.

The practical consequence across the full range: a moderate patient ($B approx 0.50$, in the cliff zone) already experiences significantly prolonged recovery compared to a mild patient ($B approx 0.70$, near the plateau), because the ATP cliff amplifies every functional drop. By the severe range ($B approx 0.25$), recovery times have risen by at least an order of magnitude. In the extremely severe range ($B lt.eq 0.10$), the floor regime means recovery times are extremely long but approximately uniform per band---consistent with the observation that patients at ES-C, ES-D, and ES-E all show similarly slow (near-imperceptible) improvement @Jahanbani2024severity, without ES-E being dramatically worse than ES-C in rate of improvement per se.

The model therefore predicts that transitions between adjacent extremely severe sub-levels are clinically hard to distinguish not because the underlying biology is static, but because the recovery timescale exceeds typical observation windows. This is an emergent property of the biophysics---the ATP synthase threshold equation, the AMPK/NAD#super[+] competition in biogenesis, and the ATP-dependent mitophagy collapse produce the compression without requiring any fitting assumptions.

#include "limitations/within-person-vs-between-person-recovery-scaling.typ"

#include "limitations/regime-boundaries-are-approximate.typ"

#include "limitations/ratchet-recovery-vs-attractor-escape-what-tauuprightrec-actu.typ"

Survey data from Norway ($n = 586$) confirm the clinical heterogeneity that the extended classification aims to capture: among very severe patients, 17% required tube feeding, 43% had swallowing difficulties, 60% could not tolerate normal speech volume, and 76% never received visitors @Sommerfelt2023NorwaySevere. These functional milestones provide candidate anchors for calibrating the sub-level thresholds $theta_upright("es")$ and band width $w$.

===== Consequences of the Nonlinear Recovery Scaling

The steep $tau_upright("rec")$ increase through the cliff regime and the high constant in the floor regime have several implications for clinical management, monitoring, and model refinement.

#include "hypotheses/hyp-biological-shadow.typ"

#include "hypotheses/hyp-recovery-horizon.typ"

#include "key-points/three-recovery-timescales-demand-reduction-damage-reduction-.typ"

#include "hypotheses/hyp-damage-prevention-dominance.typ"

#include "speculations/spec-recovery-rate-index.typ"

#include "speculations/spec-therapeutic-threshold.typ"

#include "speculations/spec-repair-starvation-trap.typ"

// Note: The ATP floor concept is now incorporated into the piecewise biophysical model
// as the third regime of Equation @eq:atp-piecewise (floor: B ≤ B_floor, [ATP] ≈ [ATP]_min).
// The former speculation @spec:atp-floor is subsumed by this formal treatment.
// The falsifiable prediction (slope change on log-log plot) is captured in the
// recovery horizon hypothesis @hyp:recovery-horizon.

#include "limitations/piecewise-model-limitations.typ"

Each severity transition is a one-way gate _within the ratchet model as formulated_: once $B_max$ drops below a threshold, the inter-event dynamics (Equation @eq:ratchet-interevent) cannot restore it, since $B(t)$ relaxes toward $B_max$ but never exceeds it. Reversal would require mechanisms that increase $B_max$ itself---mitochondrial biogenesis, epigenetic reprogramming, or immune reconstitution---which are outside the current model's scope but could be incorporated as an upward jump map if empirical evidence for such recovery emerges.

==== Trajectory Classes

The model generates four qualitatively distinct trajectory classes depending on the parameter regime:

+ *Stable ratchet* ($alpha approx 0$, long inter-event intervals): Each event produces a small, roughly constant ceiling loss $delta_k approx delta_0 S_k$. Decline is linear in the number of events. A patient experiencing one major event per year with $delta_0 S = 0.03$ would transition from mild to moderate in approximately 13 events ($~$13 years).

+ *Accelerating ratchet* ($alpha > 0$): Damage sensitisation produces convex-downward trajectories where later events cause progressively larger steps. This matches the clinical observation that patients often report "I used to bounce back from colds, but now each one hits harder" and "I could do that activity last year but now it crashes me."

+ *Incomplete-recovery cascade* (short inter-event intervals): Even without damage sensitisation, frequent events prevent full recovery ($t_(k+1) - t_k << tau_upright("rec")$). The effective trajectory drops faster than $B_max$ alone, producing rapid functional decline. This predicts that event frequency is as important as event severity for disease progression---a patient who repeatedly exceeds their energy envelope by small amounts may decline faster than one who experiences a single severe infection.

+ *Arrested ratchet* (successful event prevention): If damaging events are prevented ($delta_k = 0$), the ceiling $B_max$ is preserved and $B(t)$ relaxes toward it. For infections, this means aggressive prevention (masking, antivirals); for overexertion, it means strict pacing within the energy envelope. The model predicts that both strategies are disease-modifying, consistent with Speculation~@spec:infection-damage-ratchet and the energy envelope theory @jason2012energy.

==== Relationship to the Continuous Damage Model

The ratchet model (Equations @eq:ratchet-interevent, @eq:ratchet-jump-ceiling, and~@eq:ratchet-irreversible-loss) and the continuous damage model (Equation @eq:damage-accumulation) describe the same underlying biology at different levels of abstraction. The continuous model is appropriate when damage sources (ROS, chronic inflammation) are approximately constant; the ratchet model is appropriate when discrete events---infections, PEM crashes, surgical or emotional trauma---dominate the damage profile. For patients experiencing both chronic damage and periodic discrete events, the two can be composed: the continuous ODE governs inter-event drift in $B(t)$, while the jump map handles event-triggered steps. This yields a piecewise-deterministic Markov process when event arrival times are modelled stochastically (e.g., infections as a Poisson process at rate $lambda_upright("inf")$). PEM crashes are less naturally Poisson---a patient who has just crashed is unlikely to overexert again immediately---so a renewal process with a refractory period may be more appropriate for exertion-triggered events.

#include "limitations/ratchet-model-parameter-identifiability.typ"

