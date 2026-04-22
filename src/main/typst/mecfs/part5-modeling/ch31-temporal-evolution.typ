#import "../shared/environments.typ": *

= Temporal Evolution and Disease Trajectories
<ch:temporal-evolution>

The models developed in Chapters @ch:energy-metabolism-models through @ch:integrated-systems describe the instantaneous dynamics of ME/CFS pathophysiology. This chapter extends the analysis to longer timescales: disease onset (days to weeks), symptom fluctuations (hours to days), disease progression (months to years), and treatment response (weeks to months). The temporal perspective reveals how the same underlying mechanisms produce qualitatively different behaviors at different timescales.

#include "../figures/fig-disease-trajectories.typ"

== Disease Onset Models
<sec:disease-onset-models>

=== Triggering Events
<sec:triggering-events>

ME/CFS onset typically follows an identifiable trigger, most commonly acute infection, though physical trauma, surgery, and severe psychological stress are also reported @Chu2019. The model represents triggering events as large perturbations to the integrated system. For infection-triggered onset, the perturbation is a sustained increase in viral load $V(t)$ (Equation @eq:viral-dynamics) over a period of days to weeks. The immune response generates cytokine elevations, which via the neuroimmune pathway (Section @sec:neuroimmune-interactions) affect CNS function, and via the energy--immune coupling (Section @sec:energy-immune-coupling) deplete energy reserves.

The critical question is: why do some individuals recover fully while others develop ME/CFS? The model framework provides two distinct answers.

=== Tipping Point Dynamics
<sec:tipping-point>

If the energy--immune system is bistable (as hypothesized in Chapter @ch:integrated-systems), disease onset corresponds to crossing a separatrix in state space. The pre-infection state determines proximity to this separatrix, and the infection-induced perturbation determines whether it is crossed. The model predicts that individuals with pre-existing subclinical vulnerabilities---slightly reduced mitochondrial function, elevated baseline inflammation, lower cortisol reserve---reside closer to the separatrix and therefore require a smaller perturbation to trigger the transition. This is consistent with epidemiological observations that ME/CFS risk factors include prior immune challenges, genetic predisposition @DecodeME2025, and female sex @lim2020prevalence.

Formally, the separatrix can be characterized by computing the boundary of the basin of attraction for the healthy steady state. Points inside this basin return to health after perturbation; points outside converge to the disease attractor. The basin boundary depends on all system parameters, making it patient-specific. The tipping point model predicts that:

+ The same infection can cause ME/CFS in one individual and full recovery in another, depending on pre-existing parameter values
+ More severe infections (larger perturbations) are more likely to cross the separatrix, consistent with epidemiological evidence suggesting that acute infection severity correlates with risk of post-infectious sequelae
+ Multiple sub-threshold perturbations can progressively erode the basin of attraction (through cumulative parameter damage), eventually causing a transition after a seemingly mild trigger

=== Failure of Recovery Mechanisms
<sec:recovery-failure>

An alternative model, not requiring bistability, posits that ME/CFS onset reflects irreversible damage accumulated during the acute infection. ROS-mediated mitochondrial DNA damage, epigenetic modifications to immune cell precursors @deVega2021dna_methylation, or permanent alterations in microglial priming could shift system parameters to values that no longer support the healthy steady state. In this model, there is only one attractor (the disease state) for the post-infection parameter values, and recovery requires parameter restoration (mitochondrial biogenesis, epigenetic reprogramming) rather than state-space perturbation. The two models make distinct predictions about spontaneous recovery: the bistability model permits recovery through large perturbations, while the damage model requires parameter repair.

=== Consolidated Infection-to-Onset Cascade
<sec:infection-cascade>

The preceding subsections describe the tipping point and recovery failure models separately. This subsection traces a single infection event through all interacting subsystems to show how the cascade produces ME/CFS onset. The walkthrough uses the same patient profile as the tipping point worked example (Section @sec:tipping-point): a 35-year-old female with baseline $alpha_upright("CI") = 0.75$, hs-CRP $= 1.8$ mg/L, and morning cortisol $= 8$ $mu$g/dL (separatrix distance $d_upright("sep") = 0.12$).

*Day 0--3: Acute infection and immune activation.*
Viral infection triggers innate immune activation: NK cells and macrophages engage the pathogen. Activated immune cells consume substantial ATP through the immune energy demand term $J_upright("immune")$ (Equation @eq:energy-immune-coupling). Pro-inflammatory cytokines (TNF-$alpha$, IL-6, IL-1$beta$) rise, peaking at 24--72 hours. Cortisol increases in response but, starting from a low-normal baseline of $8$ $mu$g/dL, the HPA axis reaches its ceiling quickly, limiting the anti-inflammatory brake (Equation @eq:cortisol-immune). For this patient, the immune energy demand increases $J_upright("demand")$ by approximately 30% above baseline during peak infection.

*Day 3--7: Energy depletion and metabolic crisis.*
The 30% increase in total energy demand pushes the system beyond its already-limited production capacity ($alpha_upright("CI") = 0.75$, already mildly impaired). ATP levels fall as demand exceeds production (Equation @eq:atp-balance). Falling ATP triggers the cascade described in the energy metabolism model (Chapter @ch:energy-metabolism-models):
+ AMPK activation signals energy deficit, upregulating glycolysis
+ Increased glycolytic flux produces lactate at lower-than-normal workloads
+ The ETC, pushed harder to compensate, generates elevated ROS (Equation @eq:ros-production): at $alpha_upright("CI") = 0.75$, the ROS factor is $(1 - 0.75) = 0.25$ versus 0.05 in health---a 5-fold increase, which worsens further as infection-mediated oxidative bursts from immune cells add to the ROS load
+ Elevated ROS damages ETC complexes, reducing $alpha_upright("CI")$ from 0.75 toward 0.65 over days

*Day 7--14: The tipping point.*
As $alpha_upright("CI")$ drops from 0.75 to $~$0.65, two critical thresholds approach. First, the ATP synthase cliff effect (Section @sec:cascade-example): the membrane potential $Delta Psi$ falls from $~$145 mV toward 135 mV, producing disproportionate ATP loss. Second, the mitophagy threshold: at $[upright("ATP")] < [upright("ATP")]_(upright("crit,autophagy"))$, the cell can no longer remove damaged mitochondria (Equation @eq:mitophagy), and damaged organelles accumulate.

Simultaneously, the energy--immune vicious cycle engages (Equation @eq:immune-energy-feedback): ATP depletion impairs immune cell function ($k_upright("act")^upright("eff")$ decreases), slowing viral clearance, prolonging immune activation, and sustaining the energy drain. The state-space trajectory crosses the separatrix ($d_upright("sep") = 0.12$, perturbation magnitude $approx 0.18$). The system enters the basin of attraction of the disease state.

*Week 2--4: Infection resolves, disease persists.*
The adaptive immune response eventually clears the virus. Cytokines decline. But the system does not return to its pre-infection state because:
- $alpha_upright("CI")$ has been reduced by ROS-mediated damage (now $~$0.65 instead of 0.75)
- NAD⁺ pool is depleted ($gamma$ reduced from $~$0.85 to $~$0.70) by the sustained metabolic stress
- Mitochondrial quality control is impaired: biogenesis cannot keep pace with accumulated damage at the new, lower ATP level (Equation @eq:biogenesis)
- The energy--immune coupling maintains low-grade immune activation even without the original pathogen, because the depleted energy state impairs immune regulation

The patient experiences persistent fatigue, cognitive dysfunction, and exercise intolerance. The disease attractor is now the stable equilibrium: without intervention, the system will remain there indefinitely.

*What determined the outcome.*
A different patient with $alpha_upright("CI") = 0.90$ and morning cortisol $= 14$ $mu$g/dL (separatrix distance $d_upright("sep") = 0.35$) experiencing the same infection would generate a perturbation of similar magnitude ($~$0.18) but would not cross the separatrix ($0.18 < 0.35$). That patient recovers fully. The difference is not the infection---it is the pre-existing proximity to the tipping point.

#limitation(title: [Infection Cascade Walkthrough])[
This walkthrough is a qualitative trace through the coupled model, not a numerical simulation. The specific timescales (days 0--3, 3--7, etc.) and parameter trajectories ($alpha_upright("CI")$ dropping from 0.75 to 0.65) are illustrative estimates consistent with the model structure and clinical observations, not computed outputs. Quantitative validation requires numerical integration of the full coupled ODE system with infection-specific initial conditions, which has not been performed.
]

== Disease Progression Models
<sec:disease-progression-models>

=== Stable vs. Progressive Disease
<sec:stable-progressive>

ME/CFS trajectories vary substantially: some patients remain at a stable severity level for years, others progressively worsen, and a minority improve spontaneously @Brurberg2014. The integrated model explains these trajectories through the balance between damage accumulation and repair:

$
frac(d D_upright("total"), d t) = k_upright("damage") dot.op [upright("ROS")] + k_upright("immune_damage") dot.op bold(C)_upright("pro") - k_upright("repair") dot.op frac([upright("ATP")], K_upright("repair") + [upright("ATP")])
$ <eq:damage-accumulation>

where $D_upright("total")$ is aggregate tissue damage (encompassing mitochondrial damage, neuronal injury, endothelial dysfunction), $k_upright("damage")$ and $k_upright("immune_damage")$ are damage rates from oxidative stress and inflammation respectively, and $k_upright("repair")$ is the ATP-dependent repair rate. Three regimes emerge:

+ *Stable disease*: damage and repair rates are balanced ($d D_upright("total") \/ d t approx 0$). The patient remains at a constant severity level determined by the equilibrium damage.
+ *Progressive worsening*: damage exceeds repair ($d D_upright("total") \/ d t > 0$), often because the energy deficit limits repair capacity. The resulting damage further impairs energy production, creating a slow positive feedback loop that produces gradual decline over months to years.
+ *Gradual improvement*: repair exceeds damage ($d D_upright("total") \/ d t < 0$), possible when successful pacing or treatment reduces ROS and inflammation sufficiently for repair processes to dominate. This predicts that sustained activity management is a prerequisite for recovery, consistent with the energy envelope theory @jason2012energy.

=== Relapse--Remission Patterns
<sec:relapse-remission>

Many ME/CFS patients experience cyclical symptom patterns with periods of relative improvement followed by relapse. The integrated model can produce such patterns through two mechanisms.

*Exogenous cycling*: External perturbations (infections, physical overexertion, hormonal cycles) periodically push the system away from its steady state, producing transient symptom flares followed by partial recovery. The severity and duration of each relapse depend on the perturbation magnitude and the system's recovery capacity. Repeated perturbations before full recovery produce a "staircase" pattern of progressive worsening---each cycle reaches a lower functional nadir than the previous one.

*Endogenous oscillations*: As noted in Chapter @ch:integrated-systems, the feedback structure of the coupled system may produce limit cycle oscillations without external perturbation. If the ME/CFS parameter regime places the system near a Hopf bifurcation, small noise can excite large-amplitude oscillations with irregular periodicity, producing the apparently random symptom fluctuations reported by patients.

=== The Energy Ratchet: A Discrete Event Model
<sec:ratchet-model>

The continuous damage model (Equation @eq:damage-accumulation) captures gradual progression but does not represent the discrete, step-wise decline observed in ME/CFS. While infections are a major trigger (Speculation~@spec:infection-damage-ratchet), the ratchet pattern extends to any event that forces energy expenditure beyond the recoverable envelope: PEM-inducing overexertion, surgical stress, emotional trauma, or hormonal shifts. We therefore formalise a general _energy ratchet_ as a hybrid dynamical system combining continuous inter-event repair dynamics with discrete event-triggered damage jumps.

#include "../figures/fig-energy-ratchet.typ"

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

#limitation(title: [Within-Person vs.\ Between-Person Recovery Scaling])[
The recovery scaling (Equation @eq:recovery-scaling) describes _within-person_ dynamics: how recovery time changes as a single patient's functional capacity $B$ evolves over the disease course. It does not predict that sicker patients recover more slowly than milder patients _in cross-sectional comparison_. Indeed, Moore et al. found no significant difference in post-CPET recovery time across baseline symptom severity levels ($F = 1.12$, $p = 0.33$) @Moore2023recovery. This null result is consistent with the model: between-person variation in $delta_0$, $alpha$, $r(B)$, and $K_upright("repair")$ may dominate over the within-person $B$-dependence, and the CPET protocol itself excludes the most severely affected patients who cannot exercise, truncating the severity range over which the scaling would be most pronounced. Empirical validation requires longitudinal within-person tracking across severity transitions---data that do not yet exist but that home-visit protocols such as ACHTSAM @Fricke2026achtsam and instruments such as FUNCAP @Sommerfelt2024FUNCAP (designed to avoid floor effects at the extreme end) may enable.
]

#limitation(title: [Regime Boundaries Are Approximate])[
The boundaries $B_upright("cliff") approx 0.65$ and $B_upright("collapse") approx 0.10$ are estimated from the ch27 worked examples ($alpha_upright("CI")$ values mapped to $B$) and the NAD#super[+] depletion threshold ($gamma < 0.7$). The true boundaries are patient-specific, depending on individual mitochondrial reserve, antioxidant capacity, and NAD#super[+] metabolism. Numerical integration of the full coupled ODE system (Equations @eq:atp-synthase, @eq:biogenesis, @eq:mitophagy with patient-specific parameters) would yield precise $tau_upright("rec")(B)$ curves; the piecewise description here captures the qualitative regime structure.
]

Survey data from Norway ($n = 586$) confirm the clinical heterogeneity that the extended classification aims to capture: among very severe patients, 17% required tube feeding, 43% had swallowing difficulties, 60% could not tolerate normal speech volume, and 76% never received visitors @Sommerfelt2023NorwaySevere. These functional milestones provide candidate anchors for calibrating the sub-level thresholds $theta_upright("es")$ and band width $w$.

===== Consequences of the Nonlinear Recovery Scaling

The steep $tau_upright("rec")$ increase through the cliff regime and the high constant in the floor regime have several implications for clinical management, monitoring, and model refinement.

#hypothesis-box(title: [The Biological Shadow: Biomarkers Improve Before Function])[
At extremely severe levels, the piecewise recovery scaling (Table @tab:recovery-regimes) predicts a temporal dissociation between biological and functional improvement. Blood biomarkers (8-OHdG, cell-free mitochondrial DNA, inflammatory cytokines, HRV metrics) should begin improving weeks to months before the patient or caregiver can detect any functional change. At moderate severity ($B approx 0.50$), the same biomarkers and functional capacity improve approximately in parallel. In the cliff regime, the lag grows steeply with decreasing $B$; in the floor regime, the lag plateaus at a high constant. _(Certainty: 0.50.)_ This is a direct consequence of the ATP synthase threshold nonlinearity and the collapsed biogenesis/mitophagy machinery at low $B$. The Jahanbani 2024 $n = 1$ trajectory is consistent with prolonged biological improvement preceding functional milestones @Jahanbani2024severity.

*Clinical implication:* The absence of visible functional improvement in an extremely severe patient does not mean the treatment is failing. Clinicians and caregivers should monitor biological markers rather than functional milestones to assess treatment efficacy at this end of the spectrum.

*Falsifiable prediction:* A longitudinal study of $gt.eq 20$ extremely severe patients with monthly paired biological and functional assessments over $gt.eq 12$ months should show statistically significant biomarker improvement preceding functional improvement by $gt.eq 2$ months at ES-D/E, versus $lt.eq 2$ weeks at moderate severity. Falsified if biomarker and functional trajectories are synchronous at all severity levels.
] <hyp:biological-shadow>

#hypothesis-box(title: [Recovery Horizon: A Computable Patience Metric])[
The piecewise recovery scaling (Table @tab:recovery-regimes) enables computation of the expected time for a patient at a given $B$ to traverse one sub-level band. In the cliff regime, $tau_upright("rec")$ rises steeply; in the floor regime, it plateaus at a high constant. Both are dramatically longer than in the plateau regime where healthy and mild patients reside. The qualitative pattern:

#figure(
  table(
    columns: (auto, auto, auto, auto),
    [*Sub-level*], [*$B$ (midpoint)*], [*Regime*], [*Recovery horizon (qualitative)*],
    [Mild], [0.70], [Plateau], [Days to weeks --- $tau_upright("rec")$ set by $r$ alone; ATP near-maximal],
    [Moderate], [0.50], [Cliff], [Weeks to months --- ATP cliff amplifies every $Delta B$ loss],
    [Severe], [0.25], [Cliff (steep)], [Months --- near $Delta Psi$ threshold; disproportionate $tau_upright("rec")$ rise],
    [ES-A], [0.09], [Floor], [Months to years --- repair machinery collapsed; high constant $tau_upright("rec")$],
    [ES-C], [0.05], [Floor], [Years --- similar per-band cost to ES-A; constant floor regime],
    [ES-E], [0.01], [Floor], [Years --- same floor constant; not quadratically worse than ES-C],
  ),
  caption: [Qualitative recovery horizon per severity band. Unlike the $1\/B^2$ approximation, the biophysical model predicts a floor in per-band recovery cost at extremely severe levels rather than unbounded divergence.],
) <tab:recovery-horizon>

_(Certainty: 0.45.)_ Treatment trials in extremely severe patients that use standard 3--6 month endpoints will systematically fail to detect genuine improvement, even for effective interventions. Quantitative calibration requires numerical integration of the coupled ODE system with patient-specific parameters.

*Falsifiable prediction:* Within-person recovery time plotted against $B$ on a log-log scale should show two slope changes: a steepening in the cliff regime ($B approx 0.15$--$0.65$) and a flattening in the floor regime ($B lt.eq 0.10$). A pure power law ($tau prop 1\/B^n$ with constant $n$) at all severity levels is falsified by the piecewise biophysics.
] <hyp:recovery-horizon>

#hypothesis-box(title: [Damage Prevention Dominance Below the Severe Threshold])[
The ratchet asymmetry at the extremely severe end has a quantifiable consequence for therapeutic priorities. In the floor regime, recovery from any crash takes the same very long time $tau_upright("rec") approx K_upright("repair") \/ (r_min dot.op [upright("ATP")]_min)$ regardless of the patient's exact $B$ within that regime. But the crash itself is acute (hours to days). This asymmetry means that every single preventable damaging event saves months to years of recovery time. In the cliff regime (moderate through severe), the asymmetry is even steeper: a crash at $B = 0.25$ costs _disproportionately_ more than the same crash at $B = 0.50$ because the $Delta Psi$ threshold nonlinearity amplifies every $B$ drop. _(Certainty: 0.55.)_

The model predicts that for patients in the cliff and floor regimes, the dominant therapeutic modality is not any drug or supplement but rather the prevention of the next damaging event: infection prevention (masking, antivirals), sensory environment control (darkness, silence), and strict elimination of all avoidable physiological stressors. This is consistent with existing clinical practice for this population but provides the biophysical justification.

*Falsifiable prediction:* In a matched cohort, the ratio of 5-year trajectory benefit (event-sparing vs.\ event-exposed) should increase with decreasing $B$, with the steepest increase in the cliff regime and a plateau in the floor regime.
] <hyp:damage-prevention-dominance>

#speculation(title: [Rate-of-Change Biomarker: $d B\/d t$ as Primary Outcome for Extremely Severe Patients])[
Since functional milestones are separated by very long time intervals at the bottom of the scale (floor regime, Table @tab:recovery-regimes), threshold-crossing outcomes are insensitive. The model suggests that the instantaneous rate of recovery $d B\/d t$ is the informative quantity:
$
d B \/ d t = r(B) dot.op frac([upright("ATP")], K_upright("repair") + [upright("ATP")]) dot.op (B_max - B(t))
$
At low $B$, $d B\/d t$ is small but nonzero if the patient is improving. A composite "recovery rate index" derived from the slopes of 3--5 biomarkers (HRV trend, cytokine decline rate, oxidative marker reduction rate) could serve as a surrogate endpoint for clinical trials in this population. _(Certainty: 0.40.)_

*Falsifiable prediction:* In a 12-month study of $gt.eq 15$ extremely severe patients receiving consistent supportive care, a composite biomarker slope should be positive in $gt.eq 50%$ of patients who show no detectable functional change.
] <spec:recovery-rate-index>

#speculation(title: [Therapeutic Threshold: A Minimum $B$ Below Which Standard Repair Is Impractically Slow])[
In the floor regime ($B lt.eq B_upright("collapse")$), the recovery time per band is approximately constant: $T_upright("band") approx w dot.op K_upright("repair") \/ (r_min dot.op [upright("ATP")]_min)$. If $T_upright("band")$ exceeds a practical observation limit (say 10 years), even one sub-level improvement is undetectable within a clinical timeframe. Whether the floor regime produces recovery times this long depends on the values of $r_min$ and $[upright("ATP")]_min$, which are currently uncalibrated. _(Certainty: 0.35.)_

This does _not_ mean the patient cannot improve---it means that improvement through endogenous repair may be too slow to observe within clinical timeframes. Note the distinction from the floor regime's uniform per-band recovery time: the therapeutic threshold is not a separate regime but rather the question of whether the floor regime's constant $T_upright("band")$ exceeds practical limits. If $T_upright("band") < 10$ years, floor-regime patients recover very slowly but observably; if $T_upright("band") > 10$ years, recovery via endogenous repair is functionally imperceptible and interventions that bypass or dramatically enhance the repair pathway (e.g., by increasing $r_min$) become necessary. These interventions are currently unavailable for ME/CFS.

*Falsifiable prediction:* Falsified if patients at Bell score 0--3 (estimated $B < 0.01$) show functional improvement at rates within an order of magnitude of patients at Bell score 10--15 ($B approx 0.05$) when given the same intervention.
] <spec:therapeutic-threshold>

#speculation(title: [Repair Starvation Trap: A Secondary Attractor at Very Low $B$])[
The floor regime reveals a potential positive feedback loop. As $B$ decreases within the floor, repair remains at $r_min$; the patient spends more time at low $B$, during which ongoing chronic damage (ROS, inflammation from Equation @eq:damage-accumulation) continues to erode $B_max$. Below a critical $B_upright("trap")$, the continuous damage rate may exceed the diminished repair capacity even in the absence of discrete events:
$
r(B) dot.op frac([upright("ATP")], K_upright("repair") + [upright("ATP")]) dot.op (B_max - B) < k_upright("damage") dot.op [upright("ROS")] + k_upright("immune_damage") dot.op bold(C)_upright("pro") quad forall B < B_upright("trap")
$
If this condition holds, the patient is trapped in inexorable decline regardless of event prevention. Escape requires either dramatically reducing chronic damage (aggressive anti-inflammatory intervention), dramatically enhancing $r(B)$, or external input bypassing endogenous repair. _(Certainty: 0.40.)_ Some extremely severe patients decline progressively despite maximally protective environments, consistent with being below $B_upright("trap")$.

*Falsifiable prediction:* Patients at the very bottom of ES-E in maximally protective environments (no discrete events for $gt.eq 12$ months) should still show decline if below $B_upright("trap")$. Falsified if all such patients stabilise or improve.
] <spec:repair-starvation-trap>

// Note: The ATP floor concept is now incorporated into the piecewise biophysical model
// as the third regime of Equation @eq:atp-piecewise (floor: B ≤ B_floor, [ATP] ≈ [ATP]_min).
// The former speculation @spec:atp-floor is subsumed by this formal treatment.
// The falsifiable prediction (slope change on log-log plot) is captured in the
// recovery horizon hypothesis @hyp:recovery-horizon.

#limitation(title: [Piecewise Model Limitations])[
The piecewise recovery model (Equations @eq:atp-piecewise, @eq:repair-piecewise) replaces the earlier linear approximations with biophysically grounded functions, but the regime boundaries ($B_upright("cliff")$, $B_upright("collapse")$) are estimated from worked examples, not measured. The shapes of $phi.alt(B)$ and $psi(B)$ within the cliff regime are qualitatively constrained by the ATP synthase threshold equation and the AMPK/NAD#super[+] competition but not numerically integrated. The extremely severe population is exceptionally difficult to study @Sommerfelt2023NorwaySevere, and validation requires home-visit protocols such as ACHTSAM @Fricke2026achtsam. Numerical integration of the full coupled ODE system (Chapters @ch:energy-metabolism-models through @ch:integrated-systems) with patient-specific parameters would yield precise $tau_upright("rec")(B)$ curves, including the exact location and sharpness of the cliff-to-floor transition.
]

Each severity transition is a one-way gate _within the ratchet model as formulated_: once $B_max$ drops below a threshold, the inter-event dynamics (Equation @eq:ratchet-interevent) cannot restore it, since $B(t)$ relaxes toward $B_max$ but never exceeds it. Reversal would require mechanisms that increase $B_max$ itself---mitochondrial biogenesis, epigenetic reprogramming, or immune reconstitution---which are outside the current model's scope but could be incorporated as an upward jump map if empirical evidence for such recovery emerges.

==== Trajectory Classes

The model generates four qualitatively distinct trajectory classes depending on the parameter regime:

+ *Stable ratchet* ($alpha approx 0$, long inter-event intervals): Each event produces a small, roughly constant ceiling loss $delta_k approx delta_0 S_k$. Decline is linear in the number of events. A patient experiencing one major event per year with $delta_0 S = 0.03$ would transition from mild to moderate in approximately 13 events ($~$13 years).

+ *Accelerating ratchet* ($alpha > 0$): Damage sensitisation produces convex-downward trajectories where later events cause progressively larger steps. This matches the clinical observation that patients often report "I used to bounce back from colds, but now each one hits harder" and "I could do that activity last year but now it crashes me."

+ *Incomplete-recovery cascade* (short inter-event intervals): Even without damage sensitisation, frequent events prevent full recovery ($t_(k+1) - t_k << tau_upright("rec")$). The effective trajectory drops faster than $B_max$ alone, producing rapid functional decline. This predicts that event frequency is as important as event severity for disease progression---a patient who repeatedly exceeds their energy envelope by small amounts may decline faster than one who experiences a single severe infection.

+ *Arrested ratchet* (successful event prevention): If damaging events are prevented ($delta_k = 0$), the ceiling $B_max$ is preserved and $B(t)$ relaxes toward it. For infections, this means aggressive prevention (masking, antivirals); for overexertion, it means strict pacing within the energy envelope. The model predicts that both strategies are disease-modifying, consistent with Speculation~@spec:infection-damage-ratchet and the energy envelope theory @jason2012energy.

==== Relationship to the Continuous Damage Model

The ratchet model (Equations @eq:ratchet-interevent, @eq:ratchet-jump-ceiling, and~@eq:ratchet-irreversible-loss) and the continuous damage model (Equation @eq:damage-accumulation) describe the same underlying biology at different levels of abstraction. The continuous model is appropriate when damage sources (ROS, chronic inflammation) are approximately constant; the ratchet model is appropriate when discrete events---infections, PEM crashes, surgical or emotional trauma---dominate the damage profile. For patients experiencing both chronic damage and periodic discrete events, the two can be composed: the continuous ODE governs inter-event drift in $B(t)$, while the jump map handles event-triggered steps. This yields a piecewise-deterministic Markov process when event arrival times are modelled stochastically (e.g., infections as a Poisson process at rate $lambda_upright("inf")$). PEM crashes are less naturally Poisson---a patient who has just crashed is unlikely to overexert again immediately---so a renewal process with a refractory period may be more appropriate for exertion-triggered events.

#limitation(title: [Ratchet Model: Parameter Identifiability])[
The model introduces patient-specific parameters ($delta_0$, $alpha$, $r(B)$, $tau_upright("crit")$) that cannot currently be measured directly. Calibration would require longitudinal functional capacity data spanning multiple damaging events per patient, with pre- and post-event measurements---data that do not yet exist for ME/CFS cohorts. Until such data are available, the model's quantitative predictions (e.g., years to severity transition) should be regarded as illustrative rather than calibrated. The model's primary value is qualitative: it identifies event frequency, event duration, and damage sensitisation as the key parameters governing disease trajectory, and it makes the testable prediction that ceiling loss $delta_k$ increases with cumulative prior damage.
]

== Daily and Weekly Symptom Dynamics
<sec:daily-dynamics>

=== Circadian Influences
<sec:circadian-influences>

ME/CFS symptoms show circadian variation, with most patients reporting worse symptoms in the morning (consistent with blunted cortisol awakening response) and a relative improvement in the late afternoon @cambras2018circadian. The model produces this pattern through the circadian terms in the HPA axis (Equation @eq:hpa-axis) and sleep--wake models (Equation @eq:sleep-wake). The flattened cortisol rhythm ($a_c$ reduced) means that the morning cortisol peak is insufficient to suppress overnight inflammatory accumulation, producing morning symptom peaks. As the circadian alerting signal $C(t)$ rises through the day, it partially compensates, producing the afternoon improvement.

=== Activity--Symptom Relationships
<sec:activity-symptom>

The relationship between activity and symptoms in ME/CFS is nonlinear and delayed, making it difficult for patients to identify safe activity levels. The model formalizes this relationship through the energy envelope framework (Section @sec:energy-envelope-model). For a given activity profile $phi(t)$, the model predicts:

$
upright("Symptom")(t + tau_upright("PEM")) = f(integral_0^t J_upright("demand") (s) d s, space E_upright("budget"), space [upright("ATP")](t), space bold(C)_upright("pro") (t))
$ <eq:activity-symptom>

where $tau_upright("PEM") in [12, 72]$ hours is the PEM delay and $f$ is a threshold function that produces minimal symptoms when cumulative demand stays below $E_upright("budget")$ but escalates rapidly above it. This nonlinear threshold explains the common patient experience that small increases in activity beyond a critical level produce disproportionately large symptom responses.

== Response to Specific Stimuli
<sec:stimuli-response>

=== Physical Exertion
<sec:physical-exertion-response>

Physical exertion produces the most well-characterized stimulus--response relationship in ME/CFS via the two-day CPET protocol @keller2024cpet. The model simulates a standardized exercise test as a ramping $J_upright("demand") (t)$ function.

*Healthy temporal profile.*
In healthy individuals, the model (Section @sec:healthy-exercise-response) predicts a multi-timescale response that serves as the baseline against which ME/CFS deviations are measured. (1) _Immediate recovery_ (0--2 hours): ATP and lactate return to baseline as metabolic demand normalizes; this is the fast timescale of metabolic kinetics. (2) _Delayed-onset muscle soreness_ (24--72 hours): local inflammatory repair of mechanical micro-damage peaks at 24--48 hours (Equation @eq:doms-inflammation); this is self-limiting and confined to the exercised tissue, producing soreness without systemic symptoms. (3) _Supercompensation_ (48--96 hours): AMPK-driven mitochondrial biogenesis produces a net increase in healthy mitochondrial mass ($Delta M_h^upright("net") > 0$, Equation @eq:supercompensation), leaving the system _stronger_ than before the exertion. The fact that the model reproduces these well-established healthy timescales---without parameter fitting, purely from the interaction of its fast (metabolic), intermediate (inflammatory), and slow (biogenesis) ODE components---constitutes a face validation of the model framework before it is applied to ME/CFS.

*ME/CFS temporal profile.*
In ME/CFS, each of the three healthy timescales is pathologically altered. Key model predictions, validated against CPET data:

+ *Reduced peak VO₂*: Limited by both cardiovascular (reduced CO) and metabolic (reduced ETC capacity) constraints
+ *Early anaerobic threshold*: Transition to glycolytic dominance at lower workloads because oxidative capacity ceiling is reduced
+ *Day-2 decrement*: The model predicts that ROS-mediated damage from day-1 exertion reduces ETC capacity by 5--15% on day 2, lowering peak VO₂ and anaerobic threshold. This is the pathological counterpart of healthy DOMS: where healthy individuals experience local, self-limiting inflammation, ME/CFS patients experience systemic ROS-mediated ETC damage that worsens capacity rather than repairing tissue
+ *Prolonged recovery*: The model predicts that post-exercise ATP and cytokine levels require 48--96 hours to return to pre-exercise baseline, versus $<24$ hours for metabolic normalization in healthy controls. The 48--96 hour window that produces supercompensation in health (Section @sec:supercompensation) instead produces net mitochondrial loss ($Delta M_h^upright("net") < 0$)---the anti-supercompensation phenomenon that is the hallmark of the disease (Section @sec:branch-point)

=== Cognitive Exertion
<sec:cognitive-exertion-response>

Cognitive exertion increases brain ATP demand by 10--20% above baseline (versus 5--10-fold increases for intense physical exercise in skeletal muscle). Despite the smaller absolute demand, the brain is particularly vulnerable because it has minimal energy reserves and depends on continuous aerobic metabolism. The model predicts that cognitive PEM is mediated by the same energy depletion mechanism as physical PEM but manifests at lower total energy expenditure because brain tissue is operating closer to its metabolic ceiling.

=== Infections
<sec:infection-response>

Intercurrent infections are the most common trigger for ME/CFS relapses. The model simulates infection as a combined perturbation: increased $V(t)$, increased immune activation ($N_a$, $T_e$, cytokines), and increased energy demand ($J_upright("immune")$). In the ME/CFS model, the immune response is both delayed (slower NK cell and T cell activation due to exhaustion and energy limitation) and prolonged (impaired viral clearance extends the infectious period), resulting in greater cumulative damage. The model predicts that the severity of relapse depends on the product of infection intensity and duration, suggesting that early antiviral intervention could reduce relapse severity.

=== Environmental Factors
<sec:environmental-response>

Temperature extremes, chemical exposures, and sensory overload are reported ME/CFS triggers. The model represents these as perturbations to specific subsystems: temperature extremes alter metabolic rate and autonomic demand; chemical exposures (volatile organic compounds, fragrances) can trigger mast cell activation and neuroinflammation @Frioni2024MCAS; sensory overload increases CNS energy demand and sympathetic activation. The common pathway is an increase in total energy demand $J_upright("demand")$ above the reduced energy envelope, triggering the PEM cascade.

== Treatment Response Modeling
<sec:treatment-response-modeling>

=== Time Course of Improvement
<sec:improvement-timecourse>

Treatment responses in ME/CFS are characteristically slow, with meaningful improvement often requiring weeks to months. The model explains this through the timescales of parameter recovery:

+ *Fast* (hours to days): Direct pharmacological effects---e.g., symptom relief from analgesics, blood pressure support from fludrocortisone, heart rate reduction from beta-blockers. These modify $J_upright("demand")$ or compensatory variables without addressing underlying dysfunction.
+ *Medium* (weeks to months): Repair of accumulated damage---mitochondrial biogenesis ($tau ~ 2$--$4$ weeks), immune system remodeling ($tau ~ 4$--$8$ weeks), neuroplastic changes ($tau ~ 6$--$12$ weeks). These modify the damage variable $D_upright("total")$, gradually improving system capacity.
+ *Slow* (months to years): Epigenetic reprogramming, immune cell lineage reconstitution (after B cell depletion, new naive B cells repopulate over 6--12 months @Fluge2011rituximab), and neuroendocrine axis resetting.

The model predicts that treatments targeting fast timescale effects (symptom management) provide immediate but limited benefit, while treatments targeting medium and slow timescale processes (disease modification) show delayed onset but potentially greater magnitude of improvement.

=== Combination Therapy Effects
<sec:combination-therapy>

The integrated model enables simulation of multi-target interventions. Combination therapy can produce synergistic effects when interventions target complementary pathways. For example, the model predicts that combining CoQ10 (increasing ETC capacity) with an anti-inflammatory agent (reducing $J_upright("immune")$) produces greater ATP surplus than either alone, because the energy freed from reduced immune demand is processed more efficiently through the enhanced ETC. Formally, synergy occurs when:

$
Delta [upright("ATP")]_(upright("A+B")) > Delta [upright("ATP")]_upright("A") + Delta [upright("ATP")]_upright("B")
$ <eq:synergy>

The model identifies the parameter combinations most likely to produce synergy, providing a rational basis for combination therapy design rather than empirical trial-and-error.

== Long-Term Trajectories
<sec:long-term-trajectories>

Long-term outcomes in ME/CFS are variable. Meta-analyses suggest that full recovery occurs in approximately 5% of patients, while 20--30% show some improvement, and the remainder remain stable or worsen @Brurberg2014. The model reproduces these statistics through patient-to-patient variation in parameters. Monte Carlo simulation with parameter distributions derived from population data generates a distribution of trajectories:

+ *Recovery* ($~$5%): Patients whose parameters place them near the separatrix boundary, where spontaneous fluctuations or modest interventions can push the system back to the healthy attractor
+ *Improvement* ($~$25%): Patients where damage accumulation is slow ($k_upright("damage")$ low) and repair is sufficient to gradually reduce $D_upright("total")$, especially with effective pacing
+ *Stable* ($~$50%): Patients at approximate damage--repair equilibrium, whose severity depends on management quality
+ *Progressive* ($~$20%): Patients where damage outpaces repair, often due to severe energy deficit limiting repair capacity or repeated perturbations (infections, overexertion) preventing equilibrium

#limitation(title: [Long-Term Prediction Uncertainty])[
Long-term trajectory predictions are highly sensitive to parameter values and perturbation history, both of which are poorly characterized for individual patients. The trajectory distribution above should be interpreted as a population-level statistical prediction, not as a prognosis for any individual patient. Personalized trajectory prediction requires longitudinal data collection over months to years with sufficient biomarker resolution to constrain patient-specific parameters---a capability not yet available in clinical practice.
]

== Critical Slowing Down and Early Warning Signals
<sec:critical-slowing-down>

Near bifurcation points---the tipping points where the system transitions between attractors---dynamical systems exhibit a universal phenomenon called _critical slowing down_: the rate at which the system returns to equilibrium after small perturbations decreases as the bifurcation is approached. This phenomenon, well-established in ecology, climate science, and financial systems, has direct clinical applications for ME/CFS.

=== Mathematical Basis

The recovery rate from perturbation is determined by the dominant eigenvalue $lambda_1$ of the Jacobian matrix $bold(J) = partial bold(f) \/ partial bold(x)$ evaluated at the current steady state. At a saddle-node bifurcation (where the disease attractor is created or destroyed), $lambda_1 -> 0$. As the system approaches the bifurcation---whether through parameter drift (disease progression) or state-space proximity to the separatrix (accumulation of perturbations)---the recovery time $tau_upright("recovery") = -1 \/ upright("Re")(lambda_1)$ diverges.

*This produces measurable early warning signals that are a direct and unique consequence of the mathematical model*:

+ *Increased autocorrelation*: As $lambda_1 -> 0$, the autocorrelation of physiological time series (HRV, activity level, symptom scores) at lag $Delta t$ increases: $rho(Delta t) = e^(lambda_1 Delta t) -> 1$. The system "remembers" perturbations longer because it returns to baseline more slowly.
+ *Increased variance*: Fluctuations grow because the restoring force weakens: $upright("Var")(x) prop sigma^2 \/ (2 |lambda_1|) -> infinity$, where $sigma^2$ is the noise intensity.
+ *Flickering*: Near the bifurcation, noise-driven excursions occasionally reach the alternative attractor, producing brief "flickers" of the alternative state before the system returns. In ME/CFS, this manifests as intermittent symptom spikes of unusual character or duration.
+ *Asymmetric recovery*: Recovery from positive perturbations (toward the separatrix) slows more than recovery from negative perturbations (away from the separatrix), producing a skewed perturbation response.

=== Clinical Application: Crash Prediction

The early warning signals above are, in principle, detectable from wearable sensor data (continuous heart rate, accelerometry, skin conductance) without requiring blood draws or clinic visits. The model predicts that *24--48 hours before a PEM crash, patients near the energy envelope threshold should show*:

- Rising autocorrelation in resting heart rate (HR recovery after standing or minor exertion slows)
- Increasing variance in step count or activity level (more erratic activity patterns)
- Reduced HRV (reflecting the narrowing margin between current state and the PEM threshold)
- Elevated resting HR trend (sympathetic compensation for shrinking energy reserve)

*This prediction is uniquely generated by the mathematical model*: without the bifurcation framework, there is no theoretical basis for expecting these specific statistical signatures to precede crashes, nor for specifying the 24--48 hour timescale (which derives from the eigenvalue dynamics near the energy envelope threshold). A smartphone application implementing these detectors could warn patients to reduce activity before the crash threshold is crossed, potentially preventing PEM episodes. Retrospective validation against existing wearable datasets with crash annotations would constitute a strong test of the model.

=== Recovery Proximity Detection

The same early warning signals operate in reverse near recovery transitions. A patient approaching the separatrix from the disease side (improving toward recovery) should show increasing autocorrelation and variance in the _disease-state_ variables---paradoxically appearing less stable just before recovery. The model predicts that this "recovery instability" is a positive prognostic sign: the system is losing commitment to the disease attractor. Clinicians and patients aware of this prediction would interpret transient symptom instability during recovery differently---as a sign of approaching transition rather than deterioration.

== Hysteresis and the Intervention Window
<sec:hysteresis-analysis>

Hysteresis occurs when the path from health to disease differs from the path from disease to health. In the ME/CFS model, hysteresis arises from two sources: (1) the saddle-node bifurcation structure of the energy--immune system (structural hysteresis), and (2) the epigenetic consolidation of disease parameters (parametric hysteresis, Section @sec:epigenetic-dynamics).

=== Structural Hysteresis

In a bistable system, the disease attractor appears at a critical parameter value $theta_upright("onset")$ (saddle-node bifurcation) but does not disappear until a different value $theta_upright("recovery") != theta_upright("onset")$. The hysteresis width $Delta theta = |theta_upright("recovery") - theta_upright("onset")|$ quantifies how much further the system must be pushed for recovery compared to onset. For the energy--immune subsystem, the model predicts:

$
Delta alpha_upright("CI") = alpha_upright("CI")^upright("recovery") - alpha_upright("CI")^upright("onset") > 0
$ <eq:hysteresis-width>

meaning that Complex I activity must be restored to a level _above_ the value at which disease was triggered, not merely to the trigger value. *This asymmetry is invisible without the bifurcation diagram*: verbal reasoning about positive feedback loops identifies that the disease is self-sustaining but cannot quantify how much intervention overshoot is required for recovery. The model computes $Delta alpha_upright("CI")$ as a function of the feedback strengths, providing a quantitative recovery target.

=== Parametric Hysteresis and the Intervention Window

Epigenetic consolidation (Section @sec:epigenetic-dynamics) adds a second layer of hysteresis that increases over time. The methylation index $cal(M)$ evolves toward values that stabilize the disease attractor, progressively widening the hysteresis loop. This predicts an *intervention window*: the period after disease onset during which the epigenetic contribution to hysteresis is still small, and recovery requires only modest intervention above the structural hysteresis threshold.

The model estimates the intervention window duration as the time required for $cal(M)$ to reach half its equilibrium disease value:

$
tau_upright("window") approx frac(ln 2, k_upright("DNMT") dot.op overline(C)_upright("pro"))
$ <eq:intervention-window>

where $overline(C)_upright("pro")$ is the mean pro-inflammatory cytokine level in the disease state. For typical parameter values, $tau_upright("window") ~ 3$--$12$ months, consistent with clinical observations that early intervention (within the first year of ME/CFS) is associated with better outcomes. After the intervention window closes, recovery requires both sufficient perturbation to cross the structural separatrix _and_ sustained intervention to reverse epigenetic changes---a process operating on the slow timescale $tau_upright("epi")$.

*This intervention window concept is a unique product of the coupled dynamical model*: it emerges from the interaction of two timescales (fast state dynamics and slow epigenetic dynamics) that cannot be analyzed without formal mathematical treatment. It provides a quantitative basis for the clinical urgency of early diagnosis and treatment in ME/CFS.

== Endogenous Oscillations and Hopf Bifurcation
<sec:oscillation-analysis>

The open question posed in Chapter @ch:integrated-systems ---whether the coupled model produces endogenous oscillations---can be addressed through Hopf bifurcation analysis. A Hopf bifurcation occurs when a pair of complex conjugate eigenvalues of the Jacobian crosses the imaginary axis, destabilizing a fixed point and creating a limit cycle (periodic orbit).

=== Conditions for Oscillation

The ME/CFS model contains the structural requirements for Hopf bifurcation: positive feedback loops (energy--immune, mast cell--energy, coagulation--oxygenation, SIBO--immune--motility) combined with delayed negative feedback (cortisol suppression of inflammation, IL-10 anti-inflammatory signaling, sleep-mediated repair). The imaginary part of the critical eigenvalue pair determines the oscillation period:

$
T_upright("osc") = frac(2 pi, |upright("Im")(lambda_upright("crit"))|) = frac(2 pi, omega_0)
$ <eq:oscillation-period>

Preliminary analysis of the reduced energy--immune--HPA subsystem (6 variables: $[upright("ATP")]$, $N_a$, $bold(C)_upright("pro")$, $F$, $[upright("ROS")]$, $D$) identifies a Hopf bifurcation when the cortisol feedback gain $n_F$ exceeds a critical value while the energy--immune coupling strength is in the intermediate range. The predicted oscillation period is:

$
T_upright("osc") approx 2 pi sqrt(frac(tau_upright("cortisol") dot.op tau_upright("immune"), upright("gain")_upright("loop"))) ~ 2 upright("--") 6 upright(" weeks")
$ <eq:predicted-period>

where $tau_upright("cortisol") ~ 1$ day (HPA axis response), $tau_upright("immune") ~ 1$--$2$ weeks (cytokine network remodeling), and $upright("gain")_upright("loop")$ is the total loop gain. This 2--6 week period is consistent with the relapse--remission cycling reported by many ME/CFS patients who describe "good weeks and bad weeks" without identifiable external triggers.

=== Oscillation as a Biomarker

*If endogenous oscillations exist, the oscillation period itself becomes a model-derived biomarker*:

- *Shorter period* indicates higher loop gain (more active disease dynamics)---symptom fluctuations are rapid and intense
- *Longer period* indicates lower loop gain (attenuated feedback)---slow, gradual waxing and waning
- *Period changes over time* signal parameter drift: shortening period indicates approaching instability; lengthening period indicates the system is moving away from the Hopf bifurcation (toward stable disease or toward recovery)
- *Loss of periodicity* can signal either recovery (the oscillation amplitude shrinks to zero as the system stabilizes in the healthy attractor) or transition to chaos (if the system crosses a period-doubling cascade)

Detecting and characterizing these oscillations requires longitudinal symptom tracking with sufficient temporal resolution (daily or finer) over multiple oscillation periods (months). Wearable devices and electronic symptom diaries provide the data streams; spectral analysis (Fourier transform, wavelet analysis) provides the detection methods. The model predicts specific spectral signatures distinguishable from random fluctuation and from exogenous cycling (which would correlate with identifiable triggers).

=== Stochastic Resonance and Noise-Assisted Recovery
<sec:stochastic-resonance>

In bistable systems driven by noise, a phenomenon called _stochastic resonance_ occurs: moderate noise can facilitate transitions between attractors that would be impossible in a deterministic system. Applied to ME/CFS, this predicts that random physiological fluctuations (minor infections, hormonal cycles, sleep variations) can occasionally push a patient from the disease attractor into the basin of attraction of the healthy state---but only if the patient is sufficiently close to the separatrix.

The Kramers escape rate from the disease attractor is:

$
r_upright("escape") = frac(omega_0 omega_b, 2 pi) exp(-frac(2 Delta U, sigma^2))
$ <eq:kramers-rate>

where $omega_0$ is the oscillation frequency at the attractor, $omega_b$ is the curvature at the saddle point (separatrix), $Delta U$ is the effective potential barrier height (distance from attractor to separatrix), and $sigma^2$ is the noise intensity. *This equation produces three predictions unique to the mathematical framework*:

+ *Spontaneous recovery rate depends exponentially on disease severity*: patients deep in the disease attractor (high $Delta U$) have astronomically low escape probability, while those near the separatrix can recover spontaneously---consistent with the $~$5% spontaneous recovery rate
+ *Optimal noise intensity exists*: too little noise $->$ no escape; too much noise $->$ the system is destabilized before reaching the healthy basin and falls back. This predicts that there is an optimal level of mild physiological perturbation that maximizes recovery probability---neither complete rest nor aggressive stimulation
+ *Hormonal cycling may assist recovery*: for female patients, the menstrual cycle provides periodic perturbations of fixed amplitude and frequency. If this perturbation amplitude is near optimal for stochastic resonance, it could explain potential sex differences in spontaneous recovery rates---a testable prediction

#speculation(title: [Therapeutic Perturbation Protocols])[
If stochastic resonance operates in ME/CFS, carefully calibrated periodic perturbations might facilitate recovery in patients near the separatrix. A "perturbation protocol" would involve controlled, mild physiological challenges (brief cold exposure, short exercise below anaerobic threshold, intermittent fasting) at frequencies tuned to the system's natural oscillation period. The model predicts that the optimal perturbation amplitude is proportional to $sqrt(sigma^2_upright("optimal")) prop sqrt(Delta U \/ upright("gain")_upright("loop"))$---patient-specific and calculable from model parameters. This hypothesis predicts that: (1) patients near the separatrix (identified by critical slowing down signals) would benefit most; (2) patients deep in the disease attractor would not respond; and (3) perturbation frequency matching the endogenous oscillation period $T_upright("osc")$ would be most effective.

*Certainty*: 0.25. Stochastic resonance is well-established in physics and neuroscience but has not been demonstrated in disease dynamics. The practical challenges of estimating separatrix proximity and optimal perturbation parameters in individual patients are substantial. This concept should be considered a research direction, not a treatment recommendation.
]

== Model Application Guide
<sec:temporal-model-application>

This section consolidates practical guidance for each temporal model: what to measure, how to use the model, worked examples, inter-model dependencies, falsification criteria, and clinical implications.

=== Tipping Point and Disease Onset Models

*Measurements required.*
Pre-infection baseline: mitochondrial respiratory capacity (Seahorse assay or muscle biopsy oximetry), hs-CRP, IL-6, morning cortisol. During acute infection: serial viral load (PCR), daily cytokine panel (TNF-$alpha$, IL-6, IL-10), daily fatigue VAS score. Post-infection: repeat baseline panel at 4, 8, and 12 weeks to determine whether the system has returned to the pre-infection attractor or settled at a new steady state.

*How to use.*
Compute the basin of attraction boundary (separatrix) from the energy--immune bistability model (Chapter @ch:integrated-systems) using the patient's pre-infection parameter values. Overlay the infection-induced state-space trajectory. If the trajectory crosses the separatrix, the model predicts ME/CFS onset; if it remains within the healthy basin, full recovery is expected. The separatrix distance $d_upright("sep")$---computed as the Euclidean distance from the patient's pre-infection state to the nearest separatrix point---serves as a risk score.

*Worked example.*
A 35-year-old female presents with baseline Complex I activity $alpha_upright("CI") = 0.75$ (mildly reduced), hs-CRP $= 1.8$ mg/L (low-grade inflammation), and morning cortisol $= 8$ $mu$g/dL (low-normal). The model places her separatrix distance at $d_upright("sep") = 0.12$ (low margin). An acute COVID-19 infection produces a state-space displacement of magnitude $0.18$ along the energy--immune axes. Since $0.18 > 0.12$, the trajectory crosses the separatrix, and the model predicts transition to the disease attractor. Post-infection monitoring at week 8 confirms persistent fatigue (VAS $> 6$), elevated IL-6 ($> 4$ pg/mL), and reduced ATP synthesis ($< 70%$ of pre-infection baseline), consistent with the disease steady state.

*Inter-model dependencies.*
The tipping point model depends on the bistability analysis from Chapter @ch:integrated-systems for the separatrix computation, on the viral dynamics model (Chapter @ch:immune-system-models) for infection trajectory magnitude, and on the energy--immune coupling model for the state-space geometry. It feeds into the damage accumulation model (Section @sec:stable-progressive) by setting initial conditions for the post-onset trajectory, and into the energy ratchet model (Section @sec:ratchet-model) by establishing the initial ceiling $B_max (t_0)$.

*Falsification criteria.*
The tipping point model is falsified if: (1) patients with large separatrix distance ($d_upright("sep") > 0.3$) develop ME/CFS after mild infections at rates comparable to high-risk individuals; (2) patients with identical pre-infection parameters show no dose--response relationship between infection severity and ME/CFS onset probability; (3) the bistability model fails validation (Chapter @ch:integrated-systems), eliminating the separatrix entirely.

*Clinical implications.*
The separatrix distance $d_upright("sep")$ identifies individuals at elevated risk for post-infectious ME/CFS _before_ infection occurs. High-risk individuals ($d_upright("sep") < 0.15$) could be prioritized for aggressive infection prevention (vaccination, antivirals), early intervention during acute illness (rest, anti-inflammatory support), and close post-infection monitoring. The model does not prescribe a specific treatment but identifies the _window_ (during and immediately after acute infection) and the _target_ (preventing the state-space trajectory from crossing the separatrix) for preventive intervention.

=== Damage Accumulation and Energy Ratchet Models

*Measurements required.*
Longitudinal functional capacity: 6-minute walk test or step count (monthly), self-reported activity level (daily via wearable). Biomarkers of damage: 8-OHdG (oxidative DNA damage), cell-free mitochondrial DNA, neurofilament light chain (neuronal damage). Energy status: resting metabolic rate, lactate at standardized workload. Event log: dates and severity of infections, PEM crashes, surgeries, and major stressors (patient diary).

*How to use.*
Calibrate the ratchet model (Equations @eq:ratchet-interevent and @eq:ratchet-irreversible-loss) from the patient's event history. Fit $delta_0$, $alpha$, and $r(B)$ to the observed trajectory of functional capacity $B(t)$ over at least 3 damaging events. Once calibrated, simulate forward: given the patient's current $B$ and $B_max$, predict how many additional events of a given severity can occur before the next severity threshold is crossed. This provides a quantitative basis for event prevention urgency.

*Worked example.*
A patient diagnosed 3 years ago has experienced 5 documented infections and an estimated 20 PEM crashes. Functional capacity has declined from $B_0 = 0.72$ (mild) to $B = 0.48$ (approaching moderate threshold at $theta_upright("mod") = 0.6$; current ceiling $B_max = 0.55$). Fitting the ratchet model yields $delta_0 = 0.025$, $alpha = 0.8$ (moderate damage sensitisation). Forward simulation predicts that 3 more infections of similar severity will drop $B_max$ below $0.35$ (severe threshold) within 2 years, whereas strict event prevention (reducing infection rate by 80% through masking and antivirals) extends the time to severe threshold to $> 8$ years. The model quantifies the stakes of infection prevention for this specific patient.

*Inter-model dependencies.*
The ratchet model takes initial conditions from the tipping point model (Section @sec:tipping-point). The repair rate $r(B)$ depends on ATP availability from the energy metabolism models (Chapter @ch:energy-metabolism-models). Damage sensitisation parameter $alpha$ connects to immune exhaustion (Chapter @ch:immune-system-models) and microglial priming (Chapter @ch:neuroendocrine-models). The continuous damage model (Equation @eq:damage-accumulation) provides the inter-event drift dynamics when chronic ROS/inflammation is significant.

*Falsification criteria.*
The ratchet model is falsified if: (1) patients show no correlation between event frequency and rate of functional decline over 2+ years of prospective tracking; (2) damage sensitisation ($alpha > 0$) is not observed---i.e., later events produce the same or smaller ceiling losses as earlier ones; (3) functional capacity spontaneously exceeds $B_max$ without identifiable disease-modifying intervention (this would violate the one-way ceiling constraint).

*Clinical implications.*
The ratchet model provides the quantitative case for aggressive event prevention as disease-modifying therapy. For each patient, the model computes: (a) current ceiling $B_max$ and remaining margin to the next severity threshold, (b) expected events per year given current lifestyle and infection exposure, (c) projected time to severity transition under current conditions vs. with enhanced prevention. This transforms the abstract advice "avoid crashes" into a concrete risk quantification. Patients with high $alpha$ (strong damage sensitisation) and low remaining margin benefit most from aggressive prevention strategies.

=== Critical Slowing Down and Early Warning Signals

*Measurements required.*
Continuous physiological time series from wearables: heart rate (beat-to-beat for HRV), accelerometry (step count, activity patterns), skin temperature. Daily symptom diary: fatigue, cognitive function, pain (0--10 scales). Minimum monitoring duration: 4 weeks for autocorrelation estimation, 3+ months for oscillation period detection. Sampling: heart rate at $gt.eq 1$ Hz; activity at 1-minute epochs; symptoms at least daily.

*How to use.*
Compute rolling-window statistics from the wearable time series: (1) lag-1 autocorrelation $rho_1$ of detrended resting heart rate (window = 7 days, step = 1 day); (2) variance of daily step count (window = 14 days); (3) spectral power ratio (low-frequency to high-frequency HRV). Rising $rho_1$ and variance signal approach to a bifurcation (crash or severity transition). Declining $rho_1$ and variance during recovery signal retreat from the bifurcation. Threshold alerts: if $rho_1$ exceeds 0.85 (up from a patient-specific baseline of $~$0.5--0.7), issue a crash warning.

*Worked example.*
A patient wears a heart rate monitor and logs daily symptoms for 8 weeks. During weeks 1--5, resting HR autocorrelation is $rho_1 = 0.62 plus.minus 0.05$ and step-count variance is $1200 plus.minus 200 "steps"^2 / "day"^2$. During week 6, $rho_1$ rises to $0.78$ and variance increases to $2100 "steps"^2 / "day"^2$. The model flags this as an early warning signal. The patient reduces activity by 30%. By week 7, $rho_1$ returns to $0.65$ and no PEM crash occurs. Without the warning, the patient's planned weekend activity would likely have exceeded the energy envelope, triggering a multi-day crash.

*Inter-model dependencies.*
Early warning signal detection requires the bifurcation structure computed in Chapter @ch:integrated-systems (which eigenvalues approach zero, and at what parameter values). The autocorrelation predictions derive from the Jacobian eigenvalues of the full integrated model. Crash prediction feeds into the energy ratchet model: each prevented crash is a prevented ratchet step, directly slowing disease progression.

*Falsification criteria.*
The early warning signal model is falsified if: (1) prospective monitoring shows no increase in autocorrelation or variance in the 24--72 hours before documented PEM crashes (tested in $gt.eq 20$ patients over $gt.eq 50$ crash events); (2) the statistical signatures are indistinguishable from random fluctuation (receiver operating characteristic AUC $< 0.6$ for crash prediction); (3) the predicted 24--48 hour warning timescale is wrong by more than an order of magnitude.

*Clinical implications.*
Early warning signals enable _preventive pacing_: reducing activity before rather than after a crash. The model predicts that this is disease-modifying (each prevented crash preserves the ratchet ceiling $B_max$). Implementation requires: (a) a wearable device with continuous HR monitoring, (b) software computing rolling autocorrelation and variance, (c) patient-facing alerts calibrated to individual baselines. The clinical trial design is straightforward: randomize crash-prone patients to alert vs. no-alert groups and compare PEM frequency, severity, and functional trajectory over 6--12 months.

=== Hysteresis and Intervention Window

*Measurements required.*
Disease duration (time since onset). Epigenetic markers: global DNA methylation (LINE-1 assay), gene-specific methylation at ME/CFS-associated loci (e.g., glucocorticoid receptor NR3C1, immune regulatory genes @deVega2021dna_methylation). Cytokine levels for estimating methylation rate parameter $k_upright("DNMT") dot.op overline(C)_upright("pro")$. Functional capacity trajectory (is the patient stable, improving, or worsening?).

*How to use.*
Estimate the intervention window $tau_upright("window")$ from Equation @eq:intervention-window using the patient's mean pro-inflammatory cytokine level. Compare disease duration to $tau_upright("window")$: if duration $< tau_upright("window")$, the patient is within the intervention window and recovery requires only crossing the structural hysteresis gap $Delta alpha_upright("CI")$. If duration $>> tau_upright("window")$, epigenetic consolidation has widened the hysteresis loop, and treatment must address both state-space displacement and epigenetic reprogramming.

*Worked example.*
A patient develops ME/CFS after EBV reactivation. At month 4 post-onset, mean IL-6 is $6$ pg/mL. Using $k_upright("DNMT") = 0.015 "month"^(-1)$ per pg/mL, the model estimates $tau_upright("window") = ln 2 \/ (0.015 times 6) approx 7.7$ months. The patient is within the intervention window. The structural hysteresis width $Delta alpha_upright("CI") = 0.08$ means Complex I activity must be restored 8% above onset threshold. A mitochondrial support protocol (CoQ10 300 mg/day, D-ribose, pacing) is initiated. At month 3 of treatment (month 7 post-onset, still within the window), the patient shows meaningful improvement with ATP synthesis rising 12% from nadir. Had treatment been delayed to month 18 post-onset ($> 2 tau_upright("window")$), the model predicts that epigenetic methylation would have approximately doubled the effective hysteresis width, requiring more aggressive and prolonged intervention for equivalent improvement.

*Inter-model dependencies.*
The hysteresis model requires the bifurcation diagram from Chapter @ch:integrated-systems for structural hysteresis width, the epigenetic dynamics model (Section @sec:epigenetic-dynamics in Chapter @ch:integrated-systems) for parametric hysteresis evolution, and cytokine data from the immune models (Chapter @ch:immune-system-models) for methylation rate estimation. It informs treatment response modeling (Section @sec:treatment-response-modeling) by predicting treatment magnitude requirements as a function of disease duration.

*Falsification criteria.*
The intervention window model is falsified if: (1) treatment response does not correlate with disease duration---i.e., patients treated at 5 years respond as well as those treated at 5 months, controlling for severity; (2) ME/CFS-associated epigenetic changes do not show progressive consolidation over the first 1--2 years (measured in a longitudinal methylation study); (3) the predicted window duration ($tau_upright("window") ~ 3$--$12$ months) is inconsistent with clinical data on early vs. late treatment efficacy.

*Clinical implications.*
The intervention window model provides the strongest model-derived argument for early diagnosis and treatment. It predicts that each month of delay narrows the treatment response, not because the patient is "getting used to being sick" but because epigenetic consolidation physically widens the barrier to recovery. For clinicians: prioritize early, aggressive treatment within the first year post-onset. For health systems: reduce diagnostic delay @CastroMarrero2022prognosis as a disease-modifying intervention at the population level. For patients: the model quantifies why "wait and see" is not a neutral strategy.

=== Oscillation Analysis and Stochastic Resonance

*Measurements required.*
Daily symptom scores (fatigue, pain, cognitive function) for $gt.eq 3$ months (to capture multiple oscillation periods). Weekly cytokine panel (TNF-$alpha$, IL-6, IL-10) and morning cortisol for at least 8 weeks. Continuous wearable data (HR, activity) for spectral analysis. Menstrual cycle tracking for female patients (to separate endogenous oscillations from hormonal cycling).

*How to use.*
Apply spectral analysis (Lomb--Scargle periodogram for unevenly sampled data, wavelet transform for non-stationary signals) to the symptom and biomarker time series. Identify dominant spectral peaks and compare their periods to the model prediction of $T_upright("osc") approx 2$--$6$ weeks. If a peak is present, estimate loop gain from the period (Equation @eq:predicted-period). Track period changes over time to assess disease trajectory: shortening period signals increasing instability; lengthening period signals stabilisation.

*Worked example.*
A patient records daily fatigue scores for 6 months. Lomb--Scargle analysis reveals a spectral peak at period $T = 3.2$ weeks ($p < 0.01$ vs. red noise null). Using Equation @eq:predicted-period with $tau_upright("cortisol") = 1$ day and $tau_upright("immune") = 10$ days, the estimated loop gain is $upright("gain")_upright("loop") approx 4 pi^2 tau_upright("cortisol") tau_upright("immune") \/ T^2 approx 0.78$. After 3 months of LDN therapy (which modulates immune feedback gain), repeat analysis shows the period has lengthened to $T = 4.8$ weeks, corresponding to reduced loop gain of $0.35$---a quantitative measure of treatment effect on the underlying dynamical structure.

*Inter-model dependencies.*
The oscillation analysis requires the Jacobian eigenvalues from the full integrated model (Chapter @ch:integrated-systems), cortisol dynamics from the HPA axis model (Chapter @ch:neuroendocrine-models), and immune feedback timescales from the cytokine network model (Chapter @ch:immune-system-models). The stochastic resonance analysis additionally requires the bistability model for attractor depth $Delta U$ and the noise characterisation from daily physiological variability.

*Falsification criteria.*
The Hopf bifurcation oscillation model is falsified if: (1) longitudinal symptom tracking in $gt.eq 50$ ME/CFS patients (daily data, $gt.eq 6$ months) reveals no spectral peaks in the 2--6 week range above red noise; (2) observed oscillations correlate entirely with identifiable exogenous triggers (infections, menstrual cycle, activity patterns) with no residual endogenous component; (3) treatments that reduce immune feedback gain (as measured by cytokine response to standardised challenge) do not alter oscillation period. The stochastic resonance prediction is falsified if spontaneous recovery rates show no relationship to disease severity (attractor depth) after controlling for disease duration.

*Clinical implications.*
If validated, oscillation period becomes a non-invasive biomarker of disease dynamics obtainable from symptom diaries and wearables alone. Clinicians could track treatment efficacy through period changes rather than waiting months for functional capacity improvement. The stochastic resonance concept, while speculative, suggests that some degree of controlled physiological variability (not strict rest, not aggressive exercise) may be optimal for patients near the recovery threshold---providing theoretical support for graded activity approaches _only for patients near the separatrix_, while predicting harm for patients deep in the disease attractor. This patient-specific prediction distinguishes the model-based approach from one-size-fits-all exercise recommendations.

=== Scope and Rationale

The temporal models in this chapter were selected to capture phenomena that the instantaneous models of Chapters @ch:energy-metabolism-models through @ch:integrated-systems cannot explain: why some individuals develop ME/CFS after infection while others recover (tipping point dynamics), why disease severity changes over months to years (damage accumulation and ratchet), why symptoms fluctuate on multi-week timescales (endogenous oscillations), why early treatment produces better outcomes (intervention window and hysteresis), and why sudden transitions occur between severity levels (bifurcation analysis). These phenomena are reported consistently in patient surveys and clinical studies but have lacked formal mechanistic explanations.

The chapter does not model _every_ temporal phenomenon in ME/CFS. Notably absent are: intra-day energy fluctuations beyond the circadian model (which would require coupling to meal timing, thermoregulation, and postural changes at minute-to-hour timescales), the specific dynamics of immune reconstitution after B-cell depletion therapy (which would require a dedicated lymphocyte population model at finer resolution than Chapter @ch:immune-system-models provides), and the multi-generational epigenetic transmission of ME/CFS risk (which would require a population genetics framework). These are identified as directions for future model development where clinical data become available to constrain them.
