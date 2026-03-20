#import "../../../template.typ": *
// Chapter 14j: Selective Energy Dysfunction Hypothesis
// Comprehensive treatment with mathematical rigor

== Selective Energy Dysfunction Hypothesis
<sec:selective-dysfunction>

#open-question(title: [Why Does Hair Grow Normally in Severe ME/CFS?])[
A patient with severe ME/CFS cannot walk to the bathroom, cannot sustain a conversation, cannot tolerate light or sound—yet their hair continues to grow at a normal rate. Their nails grow. Wounds heal. These clinical observations derive from patient self-reports and informal clinical experience; no published study has formally measured hair or nail growth rates in ME/CFS patients. Nevertheless, the consistency of these reports across diverse patient populations poses a fundamental challenge to the “global energy failure” model of ME/CFS: if mitochondrial dysfunction were truly systemic, _all_ energy-dependent processes should be impaired proportionally.

This chapter proposes that ME/CFS represents _selective_ rather than global energy dysfunction—specifically, a CNS coordination failure that impairs demand-responsive, CNS-dependent processes while sparing autonomous local processes that operate independently of central regulation.
]

#limitation(title: [Preserved Processes: Informal Clinical Observation, Not Measured])[
The foundational claim that hair growth, nail growth, and wound healing are preserved in ME/CFS derives from patient self-reports and informal clinical experience. No published study has formally measured hair growth rate, nail growth rate, or wound healing time in ME/CFS patients compared to matched controls. These processes may in fact be subtly impaired without patients noticing, or they may appear preserved because their energy demands are negligible relative to the total energy budget even in health. The “selective vs.\ global” distinction may therefore be a continuum rather than a dichotomy, and the motivating observation could be an artefact of measurement insensitivity.
]

=== Motivation and Clinical Observations

The selective dysfunction hypothesis emerged from a simple observation: processes that require CNS coordination and scale with demand are severely impaired in ME/CFS, while processes that operate autonomously at the local tissue level remain intact.

#keypoint(title: [Preserved vs. Impaired Processes])[
*Preserved* (minimal CNS dependency):

    - Hair growth—local follicle autonomous cycle
    - Nail growth—keratinocyte autonomous proliferation
    - Basic wound healing—local inflammatory cascade
    - Baseline digestion—enteric nervous system (“second brain”)

*Severely impaired* (high CNS dependency):

    - Exercise capacity—requires CNS motor coordination + autonomic scaling
    - Cognitive function—intrinsically CNS-dependent
    - Orthostatic regulation—requires real-time CNS autonomic control
    - Temperature regulation—hypothalamic coordination
    - Sleep architecture—brainstem and cortical orchestration

]

This pattern motivates the formal selective dysfunction hypothesis developed below (Hypothesis @hyp:selective-dysfunction).

=== Formal Framework

We formalize the selective dysfunction hypothesis using three quantitative definitions that enable testable predictions.

#definition-box(title: [CNS-Dependency Index])[
<def:cns-dependency>
For any biological process $P$, define the *CNS-dependency index* $delta_("CNS")(P) in [0,1]$ as:

$
delta_("CNS")(P) = (N_("CNS")(P)) / (N_("total")(P))
$

where $N_("CNS")(P)$ is the number of regulatory signals requiring CNS coordination and $N_("total")(P)$ is the total number of regulatory signals controlling process $P$.

    - $delta_("CNS") = 0$: Fully autonomous (no CNS involvement)
    - $delta_("CNS") = 1$: Fully CNS-dependent (all regulation via CNS)
    - $delta_("CNS") in (0,1)$: Mixed regulation

]

#definition-box(title: [Demand-Responsiveness Index])[
<def:demand-responsiveness>
For process $P$, define the *demand-responsiveness index* $rho(P) in [0, infinity)$ as:

$
rho(P) = (max_{"challenge"} "Output"(P) - "Output"_{"baseline"}(P)) / ("Output"_{"baseline"}(P))
$

where:

    - $rho = 0$: Constant output (no demand scaling)
    - $rho > 0$: Output increases under challenge
    - $rho > 1$: Output can more than double under maximal demand

For standardization to $[0,1]$, we use $tilde(rho)(P) = (rho(P)) / (1 + rho(P))$.

*Note on negative demand-response:* Some processes _decrease_ output under challenge (e.g., digestive function during fight-or-flight response, where blood flow diverts to skeletal muscle). For such processes, we define $rho(P) = 0$ because the selective dysfunction hypothesis specifically addresses _upregulation capacity_—the ability to increase output when demanded. Processes with negative demand-response represent regulatory suppression rather than capacity limitation, and require separate modeling frameworks (not within this hypothesis).
]

#definition-box(title: [Selective Dysfunction Severity])[
<def:dysfunction-severity>
The *predicted dysfunction severity* for process $P$ in ME/CFS is:

$
S(P) = alpha dot delta_("CNS")(P) + beta dot tilde(rho)(P) + gamma dot delta_("CNS")(P) dot tilde(rho)(P)
$

where:

    - $alpha > 0$: Weight for CNS-dependency (main effect)
    - $beta > 0$: Weight for demand-responsiveness (main effect)
    - $gamma > 0$: Weight for interaction (synergistic vulnerability)

The interaction term $gamma dot delta_("CNS") dot tilde(rho)$ captures synergistic vulnerability: processes that are _both_ CNS-dependent _and_ demand-responsive are predicted to be most severely affected.

*Note on range:* $S(P) in [0, alpha + beta + gamma)$. Since $tilde(rho) = rho/(1+rho) < 1$ strictly for any finite $rho$, the supremum $alpha + beta + gamma = 1.5$ is approached but never attained. Values exceeding $1.0$ indicate severe predicted dysfunction (see Table @tab:process-classification).
]

#hypothesis-box(title: [Selective Dysfunction Hypothesis])[
<hyp:selective-dysfunction>
In ME/CFS, dysfunction severity $S_("observed")(P)$ correlates strongly with predicted severity $S(P)$:

$
S_("observed")(P) = S(P) + epsilon
$

where $epsilon$ is residual error. *Working assumption:* $epsilon tilde cal(N)(0, sigma^2)$ (normally distributed with mean zero); this assumption requires validation against empirical data.

*Testable prediction:* Spearman correlation $rho_s$ between $S(P)$ and $S_("observed")(P)$ across processes should satisfy $rho_s > 0.7$ (strong positive correlation).

*Independence requirement:* For this prediction to be independently falsifiable, $delta_("CNS")(P)$ and $tilde(rho)(P)$ must be estimated from sources other than ME/CFS clinical observations—for example, from neuroanatomical pathway counts in healthy individuals and demand-scaling measurements in healthy controls. The current Table @tab:process-classification values are expert estimates that partly reflect the clinical picture the model aims to predict; using them directly would make the correlation circular and non-falsifiable.

*Falsification criterion:* If $rho_s < 0.3$ when tested with independently estimated parameters, the hypothesis is refuted.

*Certainty:* 0.55 (moderate evidence from clinical observations, formal testing required)
]

#limitation(title: [Quantitative Framework: Unfitted Parameters and Circularity Risk])[
The CNS-dependency index $delta_("CNS")$, demand-responsiveness index $tilde(rho)$, and dysfunction severity $S(P)$ are defined mathematically but have never been fitted to empirical data. The parameter values in Table @tab:process-classification are “expert estimates” that partly reflect the clinical picture the model aims to predict — as acknowledged in the independence requirement (line 104). Until $delta_("CNS")$ and $tilde(rho)$ are estimated from independent sources (neuroanatomical pathway counts, healthy-control demand-scaling measurements), the correlation between predicted and observed dysfunction severity is circular. The weights $alpha$, $beta$, $gamma$ have not been estimated from data and the interaction term's contribution is unknown. The framework is therefore a formalised heuristic, not a validated quantitative model.
]

=== Evidence Taxonomy

#warning-box(title: [Table Values Are Illustrative, Not Independent Validation])[
The $delta_("CNS")$ and $tilde(rho)$ values in Table @tab:process-classification are expert estimates that partly reflect the clinical picture the model aims to predict. *Using these values to test the correlation $rho_s > 0.7$ would be circular and non-falsifiable.* Independent validation requires estimating parameters from sources outside ME/CFS clinical observations (e.g., neuroanatomical pathway counts in healthy individuals). The table illustrates the model's framework and internal consistency; it does _not_ constitute evidence for or against the hypothesis. See Predictions @pred:hair-follicle–@pred:cognitive-hierarchy for independently testable predictions.
]

Table @tab:process-classification classifies biological processes by their predicted and observed dysfunction status.



caption: [Process classification by CNS-dependency and demand-responsiveness with predicted and observed dysfunction in ME/CFS.],
<tab:process-classification>
#table(
  columns: (auto, auto, auto, auto, auto, auto),
  // TODO: fix columns

[*Process*], [$delta_("CNS")$], [$tilde(rho)$], [*Predicted $S$*], [*Observed*], [*Certainty*],

table.cell(colspan: 6)[_Preserved processes (low $delta_("CNS")$, low $rho$)_],

[Hair growth#super[†]], [0.1], [0.0], [0.06], [Preserved], [0.4],

[Nail growth#super[†]], [0.1], [0.0], [0.06], [Preserved], [0.4],

[Wound healing (basic)], [0.2], [0.2], [0.24], [Preserved], [0.6],

[Digestion (baseline)#super[‡]], [0.3], [0.2], [0.30], [Variable], [0.5],

table.cell(colspan: 6)[_Impaired processes (high $delta_("CNS")$ and/or high $rho$)_],

[Exercise capacity], [0.8], [0.8], [1.14], [Severe], [0.9],

[Cognitive function], [1.0], [0.5], [1.05], [Severe], [0.9],

[Orthostatic regulation], [0.9], [0.7], [1.14], [Severe], [0.85],

[Temperature regulation], [0.8], [0.4], [0.81], [Moderate-Severe], [0.7],

[Sleep architecture], [0.9], [0.3], [0.80], [Severe], [0.8],

[Immune response to challenge], [0.5], [0.7], [0.79], [Dysregulated], [0.65],

)

*Notes:* $S$ calculated with $alpha = 0.6$, $beta = 0.5$, $gamma = 0.4$. Values $>1.0$ indicate severe predicted dysfunction (additive model; theoretical supremum $= alpha + beta + gamma = 1.5$, never attained since $tilde(rho) < 1$ strictly). Certainty reflects confidence in classification based on literature review.

#super[†] Hair and nail growth: Certainty 0.4 reflects that “preserved” status is based on patient self-reports and informal clinical experience; no formal study has measured growth rates in ME/CFS patients.

#super[‡] Digestion (baseline): The $tilde(rho) = 0.2$ value reflects demand-up scaling under normal eating conditions. The fight-or-flight suppression of digestion (a negative demand-response) is modeled separately as $rho = 0$ per the convention in Definition @def:demand-responsiveness.


<obs:demand-response>
ME/CFS patients consistently show _preserved baseline function_ with _impaired challenge response_:

    - Orthostatic challenge: 91–100% show abnormal CBF reduction during tilt-table testing, with 3-fold greater reduction than controls @VanCampenEtAl2020
    - Exercise challenge: 2-day CPET reveals decline on day 2 (vs. improvement in controls) @keller2024cpet
    - Cognitive challenge: Fatigue elevated 24–48h post-cognitive task @VanCampen2023PEM

This pattern is diagnostic: baseline function is maintained, but the system cannot scale to meet increased demand. This is precisely what the selective dysfunction model predicts for high-$rho$ processes.
=== Causal Structure

Figure @fig:selective-dysfunction-dag presents the causal structure for selective dysfunction. The key feature is the absence of clinically significant causal paths from the CNS energy crisis node to preserved autonomous processes. Note: the figure includes a feedback edge from exercise intolerance to CNS energy crisis (representing PEM-induced CNS burden, certainty 0.35), which introduces a cycle; the structure is therefore a _causal diagram_ rather than a strict directed acyclic graph (DAG).

#include "../../../figures/fig-selective-dysfunction-dag.typ"

The causal diagram encodes the following claims with certainty-weighted edges:

    - *Triggers $arrow.r$ CNS Energy Crisis* (certainty: 0.65–0.70): Viral infection, immune dysregulation, or severe stress initiates CNS energy deficit @Komaroff2023
    - *CNS Crisis $arrow.r$ Cognitive Dysfunction* (certainty: 0.85): Direct effect of brain hypometabolism @Nakatomi2014neuroinflammation @walitt2024deep
    - *CNS Crisis $arrow.r$ Autonomic Control Failure* (certainty: 0.80): Impaired CNS signaling disrupts autonomic regulation @VanCampenEtAl2020
    - *Autonomic Failure $arrow.r$ Orthostatic Intolerance* (certainty: 0.75): Secondary to failed cardiovascular coordination @VanCampenEtAl2020
    - *Sub-threshold edge: CNS $arrow.r$ Autonomous Processes*: Hair/nails ($delta_("CNS") = 0.1$, $tilde(rho) = 0$: $S = 0.06$) and wound healing ($delta_("CNS") = 0.2$, $tilde(rho) = 0.2$: $S = 0.24$) all fall in the preserved range of Table @tab:process-classification; all yield $S lt.eq 0.24$, well below the lowest impaired process ($S = 0.79$, immune response to challenge)

=== Mechanistic Sub-Hypotheses

Three hypotheses (certainty $gt.eq 0.45$) and two speculations (certainty $< 0.45$) explain _why_ CNS might be selectively vulnerable. These mechanisms are not mutually exclusive; multiple pathways may act additively in individual patients.

==== Astrocyte Energy Gate Hypothesis

The astrocyte-neuron lactate shuttle (ANLS) provides 30–50% of neuronal ATP @Pellerin1994 @Magistretti2018. Unlike peripheral tissues with direct glucose access, neurons depend on astrocytes to convert glucose to lactate and shuttle it via monocarboxylate transporters (MCT2/MCT4).

#speculation(title: [Astrocyte Energy Gate])[
<spec:astrocyte-gate>
Dysfunction in the astrocyte-neuron lactate shuttle causes CNS-specific energy failure while peripheral tissues (with direct glucose access) remain unaffected.

*Mechanism:*

// TODO: align environment
$
L_n &= k_("MCT") dot [L_a] dot f("transporter integrity")  

E_n &= g(L_n, "mitochondrial function")
$

where $L_n$ = neuronal lactate uptake, $L_a$ = astrocyte lactate concentration, $k_("MCT")$ = MCT transporter efficiency, $E_n$ = neuronal ATP production.

*ME/CFS hypothesis:* Reduced $k_("MCT")$ or impaired $f(dot)$ $=>$ $L_n arrow.b$ despite normal $L_a$ $=>$ CNS-specific energy deficit.

*Certainty:* 0.4 (plausible mechanism from neuroscience; no direct ME/CFS evidence)
]

Figure @fig:astrocyte-lactate-shuttle illustrates the ANLS mechanism and proposed dysfunction site.

#include "../../../figures/fig-astrocyte-lactate-shuttle.typ"

==== CNS Energy Triage Hypothesis

Under energy scarcity, the CNS may implement a hardwired priority hierarchy that preserves vital functions at the expense of “luxury” cognitive processes.

#hypothesis-box(title: [CNS Energy Triage])[
<hyp:energy-triage>
The CNS implements a priority-based energy allocation system under scarcity:

    - *Tier 1* (never sacrificed): Brainstem vital functions — $E_("min") = 0.30 dot E_("total")$
    - *Tier 2*: Sensory processing — $E_("threshold") = 0.50 dot E_("total")$
    - *Tier 3*: Motor coordination — $E_("threshold") = 0.60 dot E_("total")$
    - *Tier 4*: Memory consolidation — $E_("threshold") = 0.70 dot E_("total")$
    - *Tier 5*: Executive function — $E_("threshold") = 0.85 dot E_("total")$
    - *Tier 6* (first sacrificed): Complex cognition — $E_("threshold") = 0.95 dot E_("total")$

*Note on threshold values:* The $E_("min")$ and $E_("threshold")$ fractions (0.30, 0.50, 0.60, 0.70, 0.85, 0.95) are _model parameters estimated for heuristic purposes_, not empirically derived values. They reflect qualitative evidence about neural energy priorities @Magistretti2018 but have not been measured directly in ME/CFS or in healthy humans.

*Prediction:* Cognitive symptoms should follow the inverse hierarchy. Complex cognition fails first; vital functions never fail.

*Clinical correlation:* “Brain fog” (executive dysfunction, Tier 5–6) is among the earliest and most prominent symptoms, consistent with these tiers being sacrificed first.

*Certainty:* 0.5 (consistent with observed symptom hierarchy; formal testing needed)
]

Figure @fig:energy-triage-hierarchy visualizes the triage hierarchy with the typical ME/CFS energy threshold.

#include "../../../figures/fig-energy-triage-hierarchy.typ"

==== Blood-Brain Barrier Vulnerability Hypothesis

The blood-brain barrier (BBB) creates a unique vulnerability: damage signals may accumulate in the CNS while peripheral clearance continues normally.

#hypothesis-box(title: [BBB Compartmentalization])[
<hyp:bbb-vulnerability>
The BBB traps mitochondrial damage markers and limits cofactor delivery, causing CNS-specific accumulation of dysfunction.

*Steady-state model:*

$
[M]_("CSF") = [M]_("blood") + (R_("production")) / (P_("BBB") dot k_("clear"))
$

where $[M]$ = damage marker concentration (mass/volume), $R_("production")$ = CNS production rate (mass/volume/time), $P_("BBB") dot k_("clear")$ = effective BBB-mediated clearance rate (1/time), and $[M]_("blood")$ = peripheral (blood) concentration treated as a fixed boundary condition set by systemic clearance. At steady state, CNS production is balanced by BBB-mediated efflux of the excess above blood levels.

*Ratio consequence:* $\dfrac{[M]_("CSF")}{[M]_("blood")} = 1 + \dfrac{R_("production")}{P_("BBB") dot k_("clear") dot [M]_("blood")}$. In healthy subjects this ratio is near $1$; in ME/CFS, reduced $P_("BBB")$ or elevated $R_("production")$ drives it above $1$, indicating CNS-specific accumulation.

*ME/CFS prediction:* If $P_("BBB")$ is reduced or $R_("production")$ elevated, the CSF/blood ratio increases, indicating CNS-specific accumulation.

*Testable:* Measure mtDNA, 8-OHdG, or other damage markers in paired CSF and blood samples. Elevated CSF/blood ratio supports hypothesis.

*Certainty:* 0.45 (BBB dysfunction documented in neuroinflammation @Nakatomi2014neuroinflammation; ME/CFS-specific data limited)
]

==== Sickness Behavior Persistence Hypothesis

Evolutionary sickness behavior programs target _behavioral outputs_ (requiring CNS) while sparing truly autonomous processes.

#hypothesis-box(title: [Sickness Behavior Stuck On])[
<hyp:sickness-behavior>
ME/CFS represents a sickness behavior program that fails to disengage, chronically suppressing CNS-mediated behavioral outputs while leaving autonomous local processes unaffected.

*Activation function:*

$
"SB"(t) = op("sigm")(sum_(i) w_i dot ["cytokine"_i](t) - theta)
$

where $op("sigm")(x) = 1/(1+e^(-x))$ is the logistic sigmoid function (distinct from standard deviation $sigma$ used elsewhere in this chapter), $w_i$ are cytokine weights, and $theta$ is the activation threshold.

*Normal state:* Acute infection elevates cytokines $=>$ SB activates $=>$ infection resolves $=>$ cytokines normalize $=>$ SB deactivates.

*ME/CFS state:* Chronic low-grade immune activation maintains $sum w_i dot ["cytokine"_i] > theta$ indefinitely $=>$ SB persists.

*Evolutionary logic:* Sickness behavior evolved to suppress _behavioral_ energy expenditure during infection. Hair growth has no behavioral component and was never targeted by this program.

*Certainty:* 0.55 (strong evolutionary logic; moderate mechanistic support from neuroimaging @Nakatomi2014neuroinflammation)
]

==== Partial Torpor Trap Hypothesis

ME/CFS may represent incomplete engagement of torpor-like metabolic suppression mechanisms.

#speculation(title: [Partial Torpor Trap])[
<spec:torpor>
ME/CFS involves partial engagement of torpor/hibernation pathways with failed arousal, trapping patients in a low-metabolic state.

*Torpor engagement dynamics:*

$
(d("MR")) / (d t) = -k_T dot T_("signal") + k_A dot A_("signal") - lambda("MR" - "MR"_0)
$

where MR = metabolic rate, $T_("signal")$ = torpor induction signal, $A_("signal")$ = arousal signal, $k_T, k_A > 0$ are signal gain coefficients (distinct from the $alpha, beta$ weights in the $S(P)$ formula), $lambda > 0$ is a restoring rate constant, and $"MR"_0$ is the baseline metabolic rate. The restoring term $-lambda("MR" - "MR"_0)$ ensures a bounded steady state at $"MR"^* = "MR"_0 + (k_A A - k_T T)/lambda$.

*Normal torpor:* $k_T T > k_A A$ during entry (MR suppressed below $"MR"_0$); $k_A A > k_T T$ during arousal (MR restored toward $"MR"_0$).

*ME/CFS state:* $k_T T > k_A A$ chronically, so $"MR"^* < "MR"_0$ (trapped in partial suppression).

*Testable markers:* Torpor-associated molecules (H#sub[2]S, adenosine, orexin) may be dysregulated.

*Certainty:* 0.35 (speculative; inspired by emerging torpor biology research @Hrvatin2020torpor @Takahashi2020torpor)
]

=== Testable Predictions

The selective dysfunction hypothesis generates specific, falsifiable predictions.

#prediction(title: [Hair Follicle Mitochondrial Function])[
<pred:hair-follicle>
*Hypothesis:* Hair follicle mitochondria are functionally normal in ME/CFS patients.

*Measurement:* Mitochondrial respiration (oxygen consumption rate, OCR) in plucked hair follicle cells.

*Statistical design:*

    - Test type: Equivalence test (TOST procedure)
    - Equivalence margin: $delta = 0.2 times macron(x)_("control")$ (20% of control mean)
    - Sample size: $n = 40$ per group (power = 0.8, $alpha = 0.05$)
    - Outcome: ME/CFS OCR equivalent to control OCR

*Interpretation:*

    - If confirmed: Strong support for selective (not global) mitochondrial dysfunction
    - If refuted (ME/CFS OCR significantly lower): Global dysfunction model supported

*Feasibility:* Hair follicle collection is minimally invasive; mitochondrial respiration assays are established.
]

#prediction(title: [CSF-to-Blood Lactate Gradient])[
<pred:csf-lactate>
*Hypothesis:* CSF lactate is elevated relative to blood lactate in ME/CFS, indicating impaired lactate shuttling in CNS.

*Measurement:* Paired CSF and blood lactate concentrations.

*Statistical design:*

    - Test type: Two-sample $t$-test on ratio $[L]_("CSF")/[L]_("blood")$
    - Expected effect size: Cohen's $d gt.eq 0.5$ (medium effect)
    - Sample size: $n = 64$ per group (power = 0.8, $alpha = 0.05$)
    - Outcome: Ratio elevated in ME/CFS vs. controls

*Interpretation:*

    - If confirmed: Supports astrocyte energy gate hypothesis
    - If refuted: Lactate shuttle not primary mechanism

]

#prediction(title: [Peripheral ATP During PEM])[
<pred:peripheral-atp>
*Hypothesis:* Peripheral muscle ATP is preserved during PEM crashes (dysfunction is coordination failure, not local energy deficit).

*Measurement:* #super[31]P-MRS of skeletal muscle during provoked PEM.

*Statistical design:*

    - Test type: Repeated measures ANOVA (baseline vs. PEM)
    - Expected: No significant decline in muscle ATP during PEM
    - Comparison: CNS metabolic markers (via PET/MRS) should decline while peripheral markers remain stable

*Interpretation:*

    - If confirmed: Dysfunction is CNS coordination failure, not peripheral energy deficit
    - If refuted (peripheral ATP drops): Global depletion model supported

]

#prediction(title: [Direct Stimulation vs. Voluntary Contraction])[
<pred:direct-stim>
*Hypothesis:* Direct electrical stimulation of muscles produces greater force than voluntary contraction in ME/CFS patients.

*Rationale:* If dysfunction is CNS coordination failure, bypassing CNS via direct stimulation should restore output.

*Measurement:* Compare force production: voluntary maximal contraction vs. electrical stimulation.

*Expected:* $F_("electrical") / F_("voluntary") > 1$ in ME/CFS (vs. ratio $approx 1$ in controls).

*Interpretation:*

    - If confirmed: Peripheral muscle capable; CNS drive impaired
    - If refuted: Peripheral muscle intrinsically impaired

]

#prediction(title: [Cognitive Triage Hierarchy])[
<pred:cognitive-hierarchy>
*Hypothesis:* Cognitive impairment in ME/CFS follows the inverse of the energy triage hierarchy.

*Measurement:* Cognitive battery assessing each tier:

    - Tier 6 (complex cognition): Abstract reasoning, creativity
    - Tier 5 (executive function): Planning, multitasking, attention
    - Tier 4 (memory): Working memory, recall
    - Tier 3 (motor coordination): Fine motor, reaction time
    - Tier 2 (sensory processing): Basic perception

*Expected:* Impairment severity: Tier 6 \> Tier 5 \> Tier 4 \> Tier 3 \> Tier 2.

*Statistical test:* Ordinal regression testing hierarchy effect.
]

=== Subtype Classification Model

The selective dysfunction framework suggests natural subtypes based on primary compartment affected.

#speculation(title: [Selective Dysfunction Subtypes])[
<spec:subtypes>
ME/CFS can be classified into subtypes based on which compartment shows primary dysfunction:

*Input features (with measurement basis):*

    - $x_1$: CSF catecholamine deficit (z-score relative to healthy controls)
    
        - Measurement: CSF dopamine, norepinephrine, serotonin metabolites
        - Reference: NIH deep phenotyping study found significant CSF catecholamine reductions @walitt2024deep
    
    - $x_2$: Orthostatic CBF reduction (% decline from supine to upright)
    
        - Measurement: Transcranial Doppler during tilt-table test
        - Reference: Controls show $tilde$5–10% reduction; ME/CFS shows $tilde$20–30% (3-fold greater) @VanCampenEtAl2020
    
    - $x_3$: Muscle ATP deficit at rest (% below control mean)
    
        - Measurement: #super[31]P-MRS of quadriceps or forearm
        - Reference: Variable findings in literature; some studies show 20–40% reduction @Wirth2021muscle @Jammes2021muscle
    
    - $x_4$: Neuroimaging abnormality score (composite z-score)
    
        - Measurement: PET neuroinflammation markers, fMRI activation patterns, MRS metabolites
        - Reference: Nakatomi et al.\ found 45–199% elevation in neuroinflammation markers @Nakatomi2014neuroinflammation
    

*Proposed classification rules (preliminary thresholds):*

The following thresholds are _preliminary estimates_ based on effect sizes in the literature. They require empirical validation through clustering analysis on a multi-biomarker cohort before clinical application.

*Note on units:* Thresholds use z-scores ($sigma$) for standardized measures and absolute percentages (%) for CBF changes, reflecting conventions in respective literatures.

$
"Subtype A (CNS-Primary)" &: x_1 < -1.5 sigma and x_4 > 2 sigma and x_3 > -0.5 sigma \
& #h(1em) "(CNS markers abnormal, peripheral spared)" \
"Subtype B (Autonomic-Primary)" &: x_2 > 25% and x_1 > -1.0 sigma \
& #h(1em) "(OI dominant, CNS markers near-normal)" \
"Subtype C (Peripheral-Primary)" &: x_3 < -1.5 sigma and x_1 > -1.0 sigma and x_4 < 1 sigma \
& #h(1em) "(Muscle deficit primary, CNS spared)" \
"Subtype D (Global/Advanced)" &: gt.eq 3 "of" {x_1 < -1.5 sigma, x_2 > 25%, x_3 < -1.5 sigma, x_4 > 2 sigma} \
& #h(1em) "(Multi-system involvement)"
$

*Threshold rationale:*

    - $-1.5sigma$: Corresponds to approximately the 7th percentile of control distribution—outside normal variation
    - $2sigma$: Corresponds to approximately the 98th percentile—clearly elevated
    - $25%$ CBF reduction: Approximately 2.5$times$ the normal orthostatic response (note: this is an absolute percentage, not a z-score, reflecting how CBF changes are typically reported in the literature)

*Subtype E (Unclassified):* Patients meeting fewer than 3 criteria for Subtype D and not meeting full criteria for Subtypes A, B, or C are classified as *Subtype E (Unclassified/Sub-threshold)*. This category captures early-stage disease, atypical presentations, or patients whose biomarkers fall in the moderate range below all classification thresholds. Subtype E is expected to be common under this preliminary scheme and should be a priority for threshold revision during validation.

*Overlap precedence:* When a patient meets criteria for multiple subtypes:

    - If $gt.eq 3$ criteria met $=>$ classify as Subtype D (Global) regardless of other matches
    - Otherwise, convert all features to z-scores for comparison (convert the CBF percentage $x_2$ to a z-score using the control distribution mean and SD before comparing magnitude); assign to the subtype with the largest absolute z-score deviation; if tied, prioritize CNS-Primary $\>$ Autonomic-Primary $\>$ Peripheral-Primary (reflecting the hypothesis that CNS dysfunction is upstream)
    - Document secondary subtype features for treatment consideration

*Validation protocol required:*

    - Collect multi-biomarker panel in $n gt.eq 200$ ME/CFS patients (sample size rationale: with 4 subtypes and 4 input features, minimum 50 patients per subtype needed for stable cluster estimation; $n = 200$ provides robustness against unequal subtype prevalence and allows 10% holdout for validation, with $k$-fold cross-validation to compensate for small holdout size)
    - Perform unsupervised clustering (k-means, hierarchical) to identify natural groupings
    - Compare data-driven clusters to proposed subtypes
    - Calculate sensitivity/specificity for each classification rule
    - Refine thresholds based on ROC analysis to optimize classification accuracy

*Treatment implications (contingent on validation):*

    - Subtype A: CNS-penetrant compounds, intranasal delivery, neuroinflammation-targeted therapy
    - Subtype B: Autonomic modulators (midodrine, pyridostigmine), volume expansion
    - Subtype C: Mitochondrial support, muscle-targeted interventions. *Warning:* Graded exercise is contraindicated in ME/CFS due to PEM risk even when CNS markers appear spared; any activity increase requires careful symptom monitoring and pacing principles @NICE2021mecfs
    - Subtype D: Multi-system approach, sequential targeting of dominant compartments

*Certainty:* 0.35 (framework theoretically motivated; all thresholds are preliminary estimates requiring empirical validation before any clinical application)
]

#limitation(title: [Subtype Classification: No Empirical Validation])[
The four-subtype classification (CNS-Primary, Autonomic-Primary, Peripheral-Primary, Global/Advanced) has not been tested against patient data. The classification thresholds ($-1.5sigma$, $2sigma$, $25%$ CBF reduction) are preliminary estimates, not data-derived cut-points. No multi-biomarker cohort study has simultaneously measured CSF catecholamines, orthostatic CBF, muscle ATP, and neuroimaging abnormalities in ME/CFS patients to determine whether natural clusters correspond to these proposed subtypes. The Subtype E (Unclassified) category may capture the majority of patients, rendering the classification clinically impractical. Treatment stratification based on these subtypes is entirely hypothetical.
]

=== Treatment Implications

The selective dysfunction hypothesis has immediate treatment implications.

==== Pharmacological Bypass Evidence

<obs:midodrine>
Midodrine (direct $alpha_1$-adrenergic agonist) improves orthostatic symptoms in patients with POTS and orthostatic intolerance—conditions highly comorbid with ME/CFS—by directly stimulating peripheral vasculature, bypassing CNS autonomic coordination @Ojha2024pediatricPOTS.

*Implication:* If peripheral targets were intrinsically dysfunctional, pharmacological bypass would not restore function. Midodrine effectiveness provides evidence consistent with intact peripheral machinery and impaired CNS coordination—though this inference is from a POTS-comorbid population and does not rule out a degree of peripheral dysfunction in ME/CFS more broadly.

This is consistent with the selective dysfunction model: the dominant problem may be signaling/coordination rather than end-organ failure.
==== Therapeutic Strategy

#keypoint(title: [Treatment Strategy from Selective Dysfunction Model])[

    - *CNS-targeted delivery*: Intranasal or intrathecal routes may outperform oral for CNS-targeted compounds
    - *Pharmacological bypass*: Direct-acting agents that bypass CNS coordination (midodrine, direct muscle stimulation)
    - *Reduce CNS energy demands*: Pacing as CNS energy management, not just “activity reduction”
    - *Subtype-specific targeting*: Match intervention to primary dysfunction compartment (see subtype classification, Speculation @spec:subtypes)

]

For mechanism-specific treatment implications, see Section @subsec:related-hypotheses, where each of the ten related hypotheses includes dedicated treatment and limitations paragraphs.

=== Compartmental Energy Model

Figure @fig:compartmental-energy-model presents the four-compartment energy model with CNS as the coordination bottleneck.

#include "../../../figures/fig-compartmental-energy-model.typ"

#keypoint(title: [Model Interpretation])[
The CNS compartment serves dual roles:

    - *Primary dysfunction site*: Brain hypometabolism, catecholamine deficiency
    - *Coordination bottleneck*: Secondary failures in autonomic and peripheral compartments result from impaired CNS signaling, not local energy deficits

Autonomous processes bypass the CNS entirely and remain functional. This explains why:

    - Hair grows normally (no CNS coordination required)
    - Midodrine works (bypasses CNS, directly stimulates periphery)
    - PEM affects demand-responsive but not baseline functions

]

=== Related Hypotheses Extending the Framework
<subsec:related-hypotheses>

The selective dysfunction framework generates 10 related hypotheses and speculations (7 hypotheses with certainty $gt.eq 0.45$; 3 speculations with certainty $< 0.45$) that extend, complement, or refine specific aspects of the core model. Each targets a specific mechanism, comorbidity, or clinical pattern.

==== Sleep Architecture Failure Hypothesis

#hypothesis-box(title: [Sleep Architecture CNS Coordination Failure])[
<hyp:sleep-architecture>
ME/CFS sleep disturbance results from impaired CNS coordination of sleep stage transitions rather than local sleep circuitry dysfunction.

*Relationship to parent hypothesis:* Extends CNS coordination failure to explain non-restorative sleep.

*Mechanism:* Normal sleep requires orchestrated inter-regional coordination across brainstem, thalamus, and cortex for stage transitions (REM $arrow.l.r$ NREM, N1 $\to$ N2 $\to$ N3), with thalamic slow oscillations leading cortical downstates before spindle generation @Fernandez2022thalamus. CNS energy deficit may preserve baseline sleep drive while impairing the sustained metabolic demands of coordinated transitions, producing the characteristic paradox of unrefreshing sleep despite near-normal total duration—documented in objective polysomnographic meta-analysis of 801 ME/CFS patients @Jackson2023sleep.

*Testable prediction:* Sleep spindle density (requiring thalamocortical coordination) correlates negatively with CNS dysfunction markers (CSF catecholamine deficit, brain hypometabolism).

*Statistical test:* Pearson correlation between spindle density and CSF neurotransmitter levels; expected $r \< -0.5$ in ME/CFS cohort.

*Novelty:* Partial—sleep disturbance is established; CNS coordination framing is new.

*Certainty:* 0.50 (moderate)

*Treatment implications.*
If sleep architecture failure reflects energy-limited coordination, interventions should reduce coordination demands and support metabolic capacity: (1) sleep continuity over total duration—fragmented sleep amplifies the metabolic cost of stage transitions @Baud2016fragmentation; (2) metabolic support during evening hours such as CoQ10 and NADH supplementation to support overnight cerebral energy availability @CastroMarrero2021CoQ10; (3) pacing-sleep integration, recognizing that sleep architecture worsens predictably during PEM so activity should be limited in the 12–24 hours before intended sleep; (4) avoidance of late-day cognitive exertion and stimulants that elevate baseline CNS arousal and increase stage-transition cost.

*Limitations.*
This hypothesis has certainty 0.50. No published studies have directly quantified sleep spindle density or slow-wave coherence in ME/CFS alongside simultaneous CNS metabolic measures. Existing polysomnographic literature characterizes macrostructural stage percentages rather than the microstructural coordination markers predicted here @Jackson2023sleep. Alternative explanations include primary brainstem pathology, pain-mediated fragmentation, and autonomic disruption during sleep independent of energy limitation. Causality direction is unclear: energy limitation may fragment sleep, while fragmented sleep independently worsens brain energy metabolism @Baud2016fragmentation, creating a potential vicious cycle.
]

==== Gut-Brain Energy Theft Hypothesis

#speculation(title: [Microbiome-Induced CNS Energy Depletion])[
<spec:gut-brain-theft>
Dysbiotic gut microbiome increases CNS metabolic burden through chronic immune activation, “stealing” energy from cognitive function.

*Relationship to parent hypothesis:* Adds upstream mechanism for CNS energy budget depletion.

*Mechanism:* Gut dysbiosis is consistently documented in ME/CFS @Hsu2025gut. The proposed cascade: dysbiosis $\to$ increased gut permeability $\to$ systemic endotoxemia $\to$ sustained low-grade neuroinflammation @Nakatomi2014neuroinflammation $\to$ elevated CNS baseline energy cost $\to$ reduced budget available for demand-response. Bidirectional gut-brain signaling via vagal afferents @Kaelberer2018 further provides a rapid channel through which gut dysbiosis could amplify CNS metabolic demand.

*Testable prediction:* Microbiome diversity (Shannon index) correlates negatively with brain hypometabolism severity (PET rCMRglc reduction).

*Statistical test:* Multiple regression controlling for disease duration and severity; expected partial $r \< -0.4$.

*Novelty:* Yes—mechanistic link between established dysbiosis and CNS energy deficit.

*Certainty:* 0.40 (plausible mechanism; correlational evidence only)

*Limitations.*
This speculation has certainty 0.40. Dysbiosis in ME/CFS is established @Hsu2025gut but is likely partly secondary to reduced physical activity, altered diet, and medication use rather than a primary driver. The multi-step cascade from gut permeability to CNS hypometabolism involves each link being individually plausible but none directly demonstrated in ME/CFS in sequence. PET neuroinflammation data exists @Nakatomi2014neuroinflammation but has not been correlated with microbiome composition in the same patients. Probiotic and dietary interventions correcting dysbiosis show inconsistent cognitive benefits in ME/CFS, providing weak causal support for the energy-theft mechanism.
]

==== GPCR Autoantibody Inefficiency Hypothesis

#hypothesis-box(title: [Autoantibody-Induced Autonomic Inefficiency])[
<hyp:gpcr-inefficiency>
G-protein coupled receptor (GPCR) autoantibodies impair autonomic signal transduction efficiency, requiring greater CNS effort to achieve the same peripheral output.

*Relationship to parent hypothesis:* Mechanistic explanation for autonomic demand-response failure.

*Mechanism:* Autoantibodies to $beta$-adrenergic and muscarinic cholinergic receptors, identified in ME/CFS patients @Loebel2016, may act as partial agonists or modulators that reduce signal amplification in autonomic efferent pathways. The CNS must then increase output intensity to compensate, raising energy cost per unit of autonomic control. Depletion of autoantibody-producing plasma cells with daratumumab has shown clinical improvement in a case series @scheibenbogen2024daratumumab, providing preliminary evidence consistent with a causal role.

*Testable prediction:* Presence of GPCR autoantibodies correlates with increased CNS metabolic cost during autonomic challenge (PET during tilt-table).

*Statistical test:* Two-sample $t$-test comparing CNS glucose uptake change (supine $arrow.r$ upright) in AAb+ vs.\ AAb- patients; expected Cohen's $d > 0.5$.

*Novelty:* Moderate—AAbs documented in $tilde 30$% of patients @Loebel2016; efficiency framing is new.

*Certainty:* 0.45 (AAbs present but causal role unproven)

*Treatment implications.*
If GPCR autoantibodies impair autonomic signal efficiency, antibody-reducing strategies merit investigation: (1) plasmapheresis for rapid reduction of circulating autoantibody load; (2) B-cell depletion as a mechanistic target, though the rituximab phase III trial failed in an unselected cohort @Fluge2015rituximab_rct, suggesting AAb-positive subgroup stratification may be required for benefit; (3) plasma cell depletion with daratumumab, which targets longer-lived antibody-secreting cells and has shown case-series evidence @scheibenbogen2024daratumumab; (4) beta-adrenergic receptor modulation to partially compensate for impaired signaling efficiency.

*Limitations.*
This hypothesis has certainty 0.45. GPCR autoantibodies are found in approximately 30% of ME/CFS patients @Loebel2016, leaving the majority without this mechanism. Causal status remains disputed: antibodies may be epiphenomenal rather than pathogenic. The rituximab randomized controlled trial, which depletes B cells rather than plasma cells, failed to demonstrate benefit in an unselected cohort @Fluge2015rituximab_rct, providing indirect evidence against autoantibodies as a universal mechanism. The proposed "increased CNS effort" framing has not been tested directly with neuroimaging during autonomic challenge stratified by autoantibody status.
]

==== Small Fiber Neuropathy Interface Failure

#speculation(title: [SFN Increases CNS Coordination Load])[
<spec:sfn-interface>
Small fiber neuropathy (SFN) found in $tilde$30% of ME/CFS patients @Azcue2025sfn increases CNS metabolic load by requiring compensatory signaling to maintain autonomic control.

*Relationship to parent hypothesis:* SFN as amplifier of peripheral-CNS communication cost.

*Mechanism:* SFN degrades signal fidelity at the peripheral nerve level, with objective evidence from skin punch biopsy showing reduced intraepidermal nerve fiber density (IENFD) @Oaklander2013sfn. The CNS must then send stronger, more frequent, or redundant signals to achieve target autonomic output, raising energy expenditure for regulation. This compensatory signaling pattern is documented in other conditions with peripheral neuropathy @Oaklander2016autoimmuneSFN, where central gain increases to offset peripheral signal loss.

*Testable prediction:* SFN severity (IENFD, intraepidermal nerve fiber density) correlates with CNS metabolic cost during autonomic challenge.

*Statistical test:* Correlation between IENFD and brainstem/hypothalamic glucose uptake during tilt; expected $r < -0.5$ (lower IENFD = higher CNS cost).

*Novelty:* Yes—SFN documented but relationship to CNS burden unexplored.

*Certainty:* 0.40 (SFN prevalence established; mechanism speculative)

*Limitations.*
This speculation has certainty 0.40. SFN prevalence in ME/CFS is established at approximately 30% @Azcue2025sfn, but the proposed mechanism—that impaired peripheral signal fidelity increases CNS metabolic cost—has not been directly tested. No study has correlated IENFD with CNS glucose uptake or brainstem metabolic demand in ME/CFS. SFN may be a secondary consequence of autonomic dysregulation or reduced activity rather than a primary amplifier of CNS burden. The 70% of patients without SFN must have other mechanisms for exercise intolerance, limiting this hypothesis to a subgroup explanation.
]

==== Circadian Energy Distribution Failure

#hypothesis-box(title: [Circadian Misallocation of Energy Budget])[
<hyp:circadian-failure>
Suprachiasmatic nucleus (SCN) dysfunction impairs circadian allocation of the CNS energy budget, explaining “second wind” phenomena and worsening symptoms at predicted low-energy times.

*Relationship to parent hypothesis:* Temporal dimension of energy allocation failure.

*Mechanism:* The SCN normally orchestrates circadian allocation of metabolic resources across the 24-hour cycle, including modulation of hepatic glucose production, cortisol rhythm, and CNS arousal @van2012circadian. Circadian rhythm abnormalities are documented in ME/CFS, including dissociation between body temperature and melatonin secretion rhythms @williams2001circadian and disrupted autonomic circadian patterns @cambras2018circadian. The proposed consequence: SCN dysfunction causes temporal mismatch in energy availability—energy peaks when demand is low (late-night “second wind”) and is depleted when demand is highest (morning/afternoon crashes) @mccarthy2022circadian.

*Testable prediction:* Circadian misalignment (dim-light melatonin onset phase shift) correlates with symptom severity fluctuation amplitude across the day.

*Statistical test:* Correlation between DLMO phase delay and variance in hourly symptom scores; expected $r > 0.5$.

*Novelty:* Partial—circadian disruption documented; energy allocation framing is new.

*Certainty:* 0.50 (circadian abnormalities established; causal link to energy requires testing)

*Treatment implications.*
If SCN dysfunction causes temporal energy misallocation, chronotherapeutic interventions may partially restore circadian alignment: (1) melatonin timed to individual DLMO phase to re-anchor the circadian energy distribution @castromarrero2021melatonin; (2) bright light therapy in the morning to strengthen SCN entrainment signals; (3) behavioral chronotherapy—scheduling cognitively or physically demanding activities at the patient's individually observed peak energy window rather than social norms; (4) stabilizing the sleep-wake cycle, since irregular timing perpetuates SCN desynchrony and amplifies the mismatch.

*Limitations.*
This hypothesis has certainty 0.50. Circadian abnormalities in ME/CFS are established @cambras2018circadian @williams2001circadian, but whether SCN dysfunction is primary or secondary to activity restriction, altered light exposure, or sleep fragmentation is unknown. The “second wind” pattern, while common in patient reports, has not been characterized with simultaneous objective metabolic measures. DLMO phase studies correlating with intraday symptom variance are lacking in ME/CFS. Prior chronotherapy trials (melatonin and light therapy) have not demonstrated robust symptomatic benefit @williams2002therapy, though these were not designed around the energy-allocation framing tested here.
]

==== MCAS Energy Crisis Amplifier

#hypothesis-box(title: [Mast Cell Activation Amplifies CNS Energy Deficit])[
<hyp:mcas-amplifier>
Mast cell activation syndrome (MCAS) episodes trigger acute inflammatory cascades that amplify CNS energy deficit, worsening PEM and cognitive crashes.

*Relationship to parent hypothesis:* Explains episodic worsening and high MCAS comorbidity.

*Mechanism:* MCAS degranulation releases histamine, cytokines, and prostaglandins @Frioni2025MCAS that penetrate the blood-brain barrier and activate neuroinflammatory cascades via mast cell–microglia signaling @Zhang2024MastBrain @Lakatos2025mastMicroglia. The proposed cascade: mast cell degranulation $\to$ neuroactive mediator release $\to$ neuroinflammation spike $\to$ acute CNS energy demand increase $\to$ exceeds the already-limited budget $\to$ crash.

*Testable prediction:* Tryptase elevation (MCAS marker) during crashes correlates with crash severity and CNS metabolic decline.

*Statistical test:* Paired measurements (baseline vs.\ crash) showing correlated tryptase and PET hypometabolism changes; expected $r > 0.6$.

*Novelty:* Yes—MCAS–ME/CFS comorbidity recognized @Frioni2025MCAS but mechanistic link to CNS energy unexplored.

*Certainty:* 0.45 (high comorbidity documented; mechanistic testing needed)

*Treatment implications.*
If MCAS episodes amplify CNS energy deficits, reducing mast cell activation load should attenuate crash severity: (1) mast cell stabilizers (cromoglicate, ketotifen) as daily prophylaxis to reduce baseline degranulation @Frioni2025MCAS; (2) combined H1 and H2 antihistamines to limit downstream neuroinflammatory signaling; (3) trigger identification and avoidance (heat, stress, certain foods, fragrances) to prevent crash amplification; (4) low-histamine dietary strategies during crash recovery to reduce ongoing mast cell stimulation; (5) serum tryptase and urinary prostaglandin D#sub[2] measurement during crashes to confirm MCAS contribution in individual patients @Frioni2025MCAS.

*Limitations.*
This hypothesis has certainty 0.45. The MCAS–ME/CFS comorbidity rate is estimated at 20–60% depending on diagnostic criteria @Frioni2025MCAS, but serum tryptase is frequently within the normal range even during confirmed MCAS episodes, making biochemical verification unreliable. The proposed mechanism—that mast cell mediators increase CNS energy demand enough to precipitate crashes—has not been tested with simultaneous tryptase measurement and neuroimaging. MCAS may also produce fatigue and cognitive symptoms through histamine receptor activation and direct neurological effects independent of the selective energy dysfunction framework, making mechanistic attribution difficult.
]

==== Memory Triage Consequence Hypothesis

#hypothesis-box(title: [Hierarchical Memory Impairment from Energy Triage])[
<hyp:memory-triage>
The energy triage hierarchy predicts differential memory impairment: encoding (high-energy) fails before retrieval (lower-energy).

*Relationship to parent hypothesis:* Specific prediction from the CNS energy triage framework.

*Mechanism:* Hippocampal memory encoding requires long-term potentiation (LTP), involving NMDA receptor activation, calcium-dependent signaling cascades, de novo protein synthesis, and structural synaptic remodeling @Kandel2014memory @Dudai2015consolidation. Working memory maintenance additionally requires sustained prefrontal neuronal firing against inhibitory currents, proportional to item load @Constantinidis2018working. Retrieval, by contrast, primarily reactivates existing synaptic patterns through pattern completion in CA3 networks—a lower-energy process requiring no new protein synthesis. Under CNS energy scarcity, encoding is sacrificed before retrieval.

*Testable prediction:* ME/CFS patients show greater impairment in encoding than retrieval on standardized memory tests (e.g., CVLT: learning slope vs.\ delayed recall).

*Statistical test:* Within-subjects comparison of z-scored encoding vs.\ retrieval; expected encoding impairment $>$ retrieval impairment (paired $t$-test, $p < 0.01$).

*Novelty:* Partial—memory impairment established; encoding/retrieval asymmetry prediction is new.

*Certainty:* 0.55 (strong theoretical basis; testable with existing neuropsychological tools)

*Treatment implications.*
If encoding is selectively impaired by CNS energy limitation, compensatory strategies should reduce encoding demands: (1) external memory aids (notes, recordings, photographs) to bypass the need for internal encoding; (2) scheduling new learning during individually identified peak energy windows; (3) spaced repetition to distribute encoding costs across multiple low-demand sessions, reducing single-session metabolic requirements; (4) recognition over recall formats (multiple-choice, visual cues) to leverage the relatively preserved pattern completion mechanism.

*Limitations.*
This hypothesis has certainty 0.55. The differential energy cost of encoding versus retrieval is well established in basic neuroscience @Kandel2014memory @Dudai2015consolidation, but the specific prediction of disproportionate encoding impairment in ME/CFS awaits formal testing. Standard neuropsychological batteries typically conflate encoding and retrieval in composite memory scores @Sebaiti2022cognitive; paradigms designed to isolate the two components are needed. Attention deficits, which impair encoding indirectly by reducing the depth of initial processing, and sleep fragmentation, which impairs memory consolidation independently of encoding energy, represent significant confounds.
]

==== Motor-Autonomic Coordination Overload

#hypothesis-box(title: [Parallel Coordination Failure Under Exercise])[
<hyp:motor-autonomic-overload>
Exercise requires simultaneous CNS coordination of motor output and autonomic scaling (HR, BP, respiration). Under CNS energy deficit, parallel coordination fails, explaining exercise intolerance despite preserved individual systems at rest.

*Relationship to parent hypothesis:* Explains why demand-response fails specifically during combined motor-autonomic challenges.

*Mechanism:* Motor coordination and autonomic scaling both demand CNS energy. Two-day cardiopulmonary exercise testing documents that ME/CFS patients show reproducibly greater metabolic impairment on day 2 than day 1, consistent with exhaustion of CNS coordination capacity under repeated demand @keller2024cpet. Impaired cerebral blood flow regulation during orthostatic challenge—found in 91–100% of patients @VanCampenEtAl2020—further supports failure of CNS-mediated cardiovascular coordination under demand. At rest or with single tasks, the residual energy budget suffices. During exercise, when motor and autonomic coordination occur simultaneously, total demand exceeds the budget $\to$ coordination failure $\to$ PEM @walitt2024deep.

*Testable prediction:* ME/CFS patients show greater impairment on combined motor+autonomic tasks (exercise) than either task in isolation (cognitive challenge or paced breathing).

*Statistical test:* Interaction effect in 2$times$2 design (motor: yes/no $times$ autonomic: yes/no); expected significant interaction, $eta^2 > 0.10$.

*Novelty:* Moderate—exercise intolerance is core symptom; parallel coordination framing is new.

*Certainty:* 0.55 (strong clinical correlation; formal interaction testing needed)

*Treatment implications.*
If parallel coordination failure explains exercise intolerance, management strategies should limit combined motor-autonomic demand: (1) heart rate-guided activity pacing to keep cardiovascular demand below the threshold that triggers coordination failure; (2) avoiding cognitive exertion immediately before or during physical activity, which adds concurrent demand to an already-loaded system; (3) two-day CPET as an objective marker of the coordination failure threshold, informing individualized activity ceilings @keller2024cpet; (4) symptom-limited rather than fixed-increment graded activity protocols, since fixed increments ignore the patient's coordination threshold.

*Limitations.*
This hypothesis has certainty 0.55. The prediction of a significant interaction effect between motor and autonomic demand in a formal 2$times$2 design has not been tested. Peripheral skeletal muscle pathology—including impaired oxygen extraction documented in ME/CFS deep phenotyping @walitt2024deep—provides an independent explanation for exercise intolerance that does not require CNS coordination failure as the primary bottleneck. Post-exertional malaise may confound assessment: patients who exercise to test the hypothesis suffer delayed symptom worsening that makes attribution of the primary failure point difficult.
]

==== Post-Viral CNS Metabolic Reprogramming

#speculation(title: [Persistent Astrocyte Metabolic Shift Post-Infection])[
<spec:post-viral-reprogram>
Viral infection triggers persistent astrocyte metabolic reprogramming toward a “reactive” state with reduced lactate shuttle efficiency, causing chronic CNS energy deficit.

*Relationship to parent hypothesis:* Viral trigger mechanism for astrocyte energy gate dysfunction.

*Mechanism:* Astrocytes supply neurons with lactate through the astrocyte-neuron lactate shuttle (ANLS), providing 30–50% of neuronal ATP under activity @Pellerin1994 @Magistretti2018. Acute viral infection may activate astrocytes toward a reactive phenotype, downregulating monocarboxylate transporters (MCT1/MCT4) and lactate dehydrogenase, reducing ANLS efficiency. Neuroinflammation is documented in ME/CFS by PET imaging @Nakatomi2014neuroinflammation, consistent with a persistent reactive glial state. Unlike normal post-infectious recovery, ME/CFS may involve failure to revert astrocytes to baseline (“stuck” reactive phenotype).

*Testable prediction:* Post-mortem or biopsy astrocyte gene expression shows persistent reactive markers (GFAP, complement C3, IL-1$alpha$) and downregulated metabolic genes (LDH, MCT) in ME/CFS vs.\ controls.

*Statistical test:* Differential expression analysis; expected fold-change $> 2$ for reactive markers, $< 0.5$ for metabolic genes.

*Novelty:* Moderate—viral trigger and neuroinflammation established; persistent astrocyte metabolic shift is novel.

*Certainty:* 0.40 (mechanistically plausible; astrocyte-specific testing limited in ME/CFS)

*Limitations.*
This speculation has certainty 0.40. No published studies have directly measured astrocyte MCT1/MCT4 density, lactate dehydrogenase expression, or lactate shuttle capacity in ME/CFS brain tissue. Post-mortem ME/CFS brain studies are extremely scarce, and in vivo biopsy of CNS tissue is not clinically feasible. The reactive astrocyte A1/A2 nomenclature used here is contested in the current literature, with more context-dependent phenotypic spectra now recognized. PET neuroinflammation findings @Nakatomi2014neuroinflammation implicate activated glia but cannot distinguish astrocytic from microglial contributions. Evidence for viral-induced persistent astrocyte metabolic reprogramming derives from animal models and has not been replicated in human ME/CFS post-mortem or in vitro tissue.
]

==== Subtype Progression Hypothesis

#hypothesis-box(title: [CNS-Primary to Global Subtype Progression])[
<hyp:subtype-progression>
ME/CFS may progress from CNS-primary dysfunction (Subtype A) to global/multi-system involvement (Subtype D) over time as secondary cascades develop.

*Relationship to parent hypothesis:* Temporal evolution of the subtype classification framework.

*Mechanism:* Initial CNS dysfunction causes chronic elevation of autonomic regulatory demands, which over time may produce secondary peripheral abnormalities through sustained sympathetic overactivation and oxidative stress. Onset pattern data shows early ME/CFS presenting predominantly with neurological and autonomic features @Jason2019onset, while longer-duration ME/CFS increasingly shows multi-system metabolic and vascular involvement @heng2025mecfs. The proposed sequence: initial CNS dysfunction $\to$ chronic autonomic overload $\to$ secondary cardiovascular and peripheral damage $\to$ expansion from CNS-primary (Subtype A) to global (Subtype D) dysfunction.

*Testable prediction:* Longitudinal biomarker data shows progression: initially elevated $x_4$ (CNS) only, later additional abnormalities in $x_1$, $x_2$, $x_3$ (autonomic, peripheral).

*Statistical test:* Survival analysis: time to progression from Subtype A to Subtype D. Expected median progression time: 3–5 years (_estimated from informal clinical observation; no systematic longitudinal data available; this parameter requires empirical derivation_).

*Novelty:* Yes—subtype progression rarely studied in ME/CFS literature.

*Certainty:* 0.45 (progression observed clinically; systematic longitudinal data lacking)

*Treatment implications.*
If ME/CFS follows a CNS-primary-to-global progression trajectory, early-stage intervention may prevent cascade to multi-system involvement: (1) aggressive energy management and pacing from diagnosis onset to limit cumulative CNS coordination stress; (2) regular multi-system biomarker monitoring (autonomic, cardiovascular, metabolic) to detect early secondary involvement before it consolidates @heng2025mecfs; (3) prioritizing treatment of CNS-primary features (orthostatic dysfunction, cognitive support) before they produce downstream peripheral consequences; (4) the hypothesis implies that treatments effective for early-stage (Subtype A) disease may be less effective once global involvement is established, providing a clinical rationale for aggressive early intervention.

*Limitations.*
This hypothesis has certainty 0.45\@. Systematic longitudinal biomarker data spanning the proposed progression timeline is lacking in ME/CFS. Natural history studies are confounded by changes in diagnostic criteria, healthcare access, treatment effects, and selection bias in cohort enrollment. Subtype classification based on compartment-specific biomarkers is not yet validated or standardized. Progression may alternatively reflect worsening of a single pathological process rather than cascade to new compartments. The clinical impression that longer-duration disease shows more multi-system involvement @Jason2019onset may partly reflect cumulative diagnostic recognition of pre-existing comorbidities rather than true disease spread.
]

=== Integration with Existing Hypotheses

The selective dysfunction hypothesis integrates with and extends existing models:

    - *Metabolic Safe Mode* (Section @sec:safe-mode): Selective dysfunction specifies _which_ systems the safe mode affects (CNS-dependent, demand-responsive) and _which_ it spares (autonomous)

    - *Glymphatic Clearance Failure* (Section @sec:glymphatic): Provides mechanism for CNS-specific waste accumulation within the BBB vulnerability sub-hypothesis

    - *Autonomic Dysfunction* (Chapter @ch:cardiovascular): Reframes as CNS coordination failure rather than peripheral autonomic pathology

    - *Mitochondrial Dysfunction* (Chapter @ch:energy-metabolism): Constrains location—mitochondrial dysfunction may be CNS-specific or CNS-predominant rather than global

#limitation(title: [Selective Dysfunction Framework: Alternative Explanations Not Excluded])[
The selective dysfunction hypothesis provides an internally consistent framework, but alternative explanations for the same clinical pattern have not been excluded:

    - *Scale artifact*: Processes classified as “preserved” (hair, nail growth) have much lower absolute energy demands than “impaired” processes (exercise, cognition). A global but moderate energy deficit (e.g., 30% reduction) could spare low-demand processes while disabling high-demand ones — no selectivity mechanism required.
    - *Peripheral contributions*: Impaired skeletal muscle oxygen extraction, documented in NIH deep phenotyping @walitt2024deep, provides an alternative peripheral explanation for exercise intolerance that does not require CNS coordination failure as the primary bottleneck.
    - *Post-hoc fitting*: The 17 hypotheses and speculations in this chapter were developed to explain known ME/CFS features. No prediction from this framework has been tested prospectively.

]

=== Limitations and Uncertainties

#warning-box(title: [Limitations])[

    - *Parameter estimation*: The $delta_("CNS")$ and $rho$ values in Table @tab:process-classification are estimated, not empirically derived
    - *Interaction complexity*: The additive model with interaction may oversimplify nonlinear relationships
    - *Heterogeneity*: ME/CFS likely includes multiple pathophysiological subtypes; not all may fit this model
    - *Causal direction*: The DAG assumes CNS dysfunction causes peripheral symptoms; reverse or bidirectional causation possible
    - *Evidence gaps*: Direct tests of the hypothesis (hair follicle mitochondria, CSF lactate gradients) have not been performed

]

=== Summary

The selective energy dysfunction hypothesis proposes that ME/CFS preferentially affects CNS-dependent, demand-responsive biological processes while sparing autonomous local processes. This explains the paradox of preserved hair growth alongside severe functional impairment.

*Key features:*

    - Formal quantification via CNS-dependency ($delta_("CNS")$) and demand-responsiveness ($rho$) indices
    - Causal diagram with certainty-weighted edges (contains a feedback cycle; not a strict DAG)
    - Three mechanistic hypotheses (Hypothesis @hyp:energy-triage: CNS energy triage; Hypothesis @hyp:bbb-vulnerability: BBB vulnerability; Hypothesis @hyp:sickness-behavior: sickness behavior persistence) and two speculations (Speculation @spec:astrocyte-gate: astrocyte energy gate; Speculation @spec:torpor: partial torpor trap) explaining CNS selective vulnerability
    - Ten related hypotheses and speculations extending the framework to sleep, gut-brain axis, autoantibodies, SFN, circadian rhythms, MCAS, memory, exercise physiology, post-viral reprogramming, and disease progression
    - Specific, falsifiable predictions with statistical designs
    - Natural subtype classification based on primary dysfunction compartment
    - Treatment implications including pharmacological bypass, CNS-targeted delivery, and mechanism-specific interventions

*Overall certainty:* 0.55 (moderate)—hypothesis is consistent with clinical observations and supported by converging evidence from brain metabolism, autonomic dysfunction, and preserved autonomous function literature. Formal testing of predictions required.
