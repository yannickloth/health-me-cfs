#import "../shared/environments.typ": *

= Integrated Multi-System Models
<ch:integrated-systems>

The preceding chapters developed models of individual physiological subsystems in isolation. ME/CFS, however, is a multi-system disease: energy metabolism, immune function, neuroendocrine regulation, and autonomic control are coupled through shared substrates, signaling molecules, and feedback loops (@ch:integrative-models). This chapter formalizes the inter-system couplings and constructs an integrated model that captures emergent properties not present in any subsystem alone (@fig:integrated-systems-architecture).

#include "../figures/fig-integrated-systems-architecture.typ"

== Energy--Immune Coupling
<sec:energy-immune-coupling>

The bidirectional coupling between energy metabolism and immune function constitutes the most critical feedback loop in ME/CFS pathophysiology. The coupling operates through two channels.

=== Immune Activation Drains Energy

Activated immune cells consume substantial ATP, as quantified by the immune energy demand term $J_upright("immune")$ (@eq:immune-energy). This demand enters the ATP balance (@eq:atp-balance) directly:

$
frac(d[upright("ATP")], d t) = J_upright("production") - J_upright("basal") - J_upright("activity")(t) - J_upright("immune")(N_a, M_a, T_a)
$ <eq:energy-immune-coupling>

where $J_upright("immune")$ depends on the activated cell populations from the immune model (@ch:immune-system-models). During immune flares, $J_upright("immune")$ can increase several-fold, consuming energy that would otherwise be available for physical and cognitive activity. This provides a mechanistic explanation for the observation that ME/CFS symptoms worsen during infections or immune activation episodes.

=== Energy Deficits Impair Immunity

The reverse coupling is equally important: immune cell function depends on adequate energy supply. NK cell cytotoxicity, T cell proliferation, and antibody production all require ATP. When $[upright("ATP")]$ falls below a functional threshold, immune cell performance degrades:

$
k_upright("act")^upright("eff") = k_upright("act") dot.op frac([upright("ATP")]^2, K_(upright("ATP,immune"))^2 + [upright("ATP")]^2)
$ <eq:immune-energy-feedback>

where $k_upright("act")^upright("eff")$ is the effective immune activation rate and the Hill function (exponent 2) represents the cooperative dependence on ATP availability. This creates the central vicious cycle of ME/CFS: immune activation $->$ energy depletion $->$ impaired immune control $->$ persistent infection/autoimmunity $->$ sustained immune activation. The coupled model predicts that this cycle is self-sustaining above a critical level of immune activation---below this threshold, the healthy state is stable; above it, the system converges to a pathological attractor.

#hypothesis(title: [Bistability of the Energy--Immune Cycle])[
The coupled energy--immune system exhibits bistability: a healthy attractor (low immune activation, adequate energy) and a disease attractor (chronic immune activation, energy deficit) coexist for the same parameter values. The transition from health to disease occurs when a sufficiently strong perturbation (e.g., acute infection) pushes the system past a separatrix into the basin of attraction of the disease state. Recovery requires a perturbation of comparable magnitude in the reverse direction---or a sustained intervention that eliminates the disease attractor entirely by modifying system parameters (e.g., sufficient immunosuppression to break the cycle). This model predicts that: (1) disease onset is triggered by events exceeding a threshold severity, not by any specific pathogen; (2) spontaneous recovery is rare because the disease attractor is stable; and (3) effective treatment must be sustained long enough to shift the system past the separatrix, explaining why brief interventions often fail.

*Certainty*: 0.50. Bistability is a natural consequence of the positive feedback structure and is consistent with the clinical observation that ME/CFS often begins with an acute trigger but persists indefinitely. Direct demonstration of bistability would require longitudinal measurement of both immune and metabolic variables with sufficient temporal resolution to map the state-space trajectory.
]

== Neuroimmune Interactions
<sec:neuroimmune-interactions>

The neuroimmune coupling operates through three pathways, each with distinct timescales.

=== Cytokine Effects on Brain Function

Peripheral cytokines affect CNS function through two mechanisms modeled in @ch:immune-system-models: (1) transport across the blood--brain barrier (@eq:bbb-transport), and (2) activation of vagal afferents that signal to the brainstem @Dantzer2007twenty. Once in the CNS, pro-inflammatory cytokines activate microglia (@eq:microglia), disrupt neurotransmitter synthesis (@eq:tryptophan and @eq:ido-regulation), and alter HPA axis function (through direct effects on hypothalamic CRH neurons). The integrated model connects these pathways:

$
bold(C)_upright("CNS")(t) = P_upright("BBB")(t) dot.op bold(C)_upright("plasma")(t) + bold(T)_upright("active") + bold(C)_upright("local")(mu_1)
$ <eq:neuroimmune-cns>

where $bold(C)_upright("local")(mu_1)$ represents cytokines produced locally by activated microglia. @eq:neuroimmune-cns is a quasi-steady-state approximation of the full transport dynamics (@eq:bbb-transport), valid when CNS cytokine turnover is fast relative to BBB permeability changes. The CNS cytokine environment then modulates neurotransmitter dynamics, autonomic output, and HPA axis function---creating a pathway from peripheral immune activation to cognitive dysfunction, sleep disturbance, and autonomic symptoms.

=== HPA Axis and Immune Regulation

Cortisol from the HPA axis model (@eq:hpa-axis) feeds back to the immune system as a major anti-inflammatory signal:

$
sigma_(upright("cytokine,") i)^upright("eff") = sigma_(upright("cytokine,") i) dot.op frac(K_F^upright("immune"), K_F^upright("immune") + F)
$ <eq:cortisol-immune>

where the cortisol concentration $F$ inhibits pro-inflammatory cytokine production. The reduced cortisol output in ME/CFS (@sec:hpa-dysfunction-model) weakens this inhibitory brake, permitting higher cytokine levels than would otherwise be sustained. This neuroimmune coupling explains why stress management---by reducing cortisol demand---and low-dose hydrocortisone replacement have shown limited benefit in some ME/CFS patients.

=== Vagal Signaling

The vagus nerve provides a rapid bidirectional communication pathway between the periphery and the CNS. Afferent vagal fibers detect peripheral cytokines (particularly IL-1$beta$ and TNF-$alpha$) and transmit inflammatory signals to the nucleus tractus solitarius (NTS) @Marty2008NTS, producing sickness behavior (fatigue, anorexia, social withdrawal). Efferent vagal fibers mediate the cholinergic anti-inflammatory pathway, suppressing macrophage TNF-$alpha$ production through $alpha$7 nicotinic acetylcholine receptors @Huerta2025vagal. The vagal coupling is modeled as:

$
sigma_upright("TNF")^upright("eff") = sigma_upright("TNF") dot.op frac(K_upright("vagal"), K_upright("vagal") + V_upright("efferent"))
$ <eq:vagal-coupling>

where $V_upright("efferent")$ is vagal efferent tone from the ANS model (@eq:ans-balance). Reduced vagal tone in ME/CFS therefore diminishes the cholinergic anti-inflammatory pathway, providing an additional mechanism for sustained peripheral inflammation.

== Cardiovascular--Metabolic Integration
<sec:cardiovascular-metabolic>

Oxygen delivery to tissues depends on cardiac output, blood oxygen content, and microvascular perfusion. The cardiovascular--metabolic coupling links the autonomic model (heart rate, blood pressure) to the energy metabolism model (oxygen-dependent ATP production):

$
upright("DO")_2 = upright("CO") dot.op upright("CaO")_2 = (upright("HR") times upright("SV")) dot.op (1.34 dot.op [upright("Hb")] dot.op upright("SaO")_2 + 0.003 dot.op upright("PaO")_2)
$ <eq:o2-delivery>

where DO₂ is oxygen delivery, CO is cardiac output (heart rate $times$ stroke volume), and CaO₂ is arterial oxygen content. Tissue oxygen extraction determines the available oxygen for mitochondrial respiration:

$
upright("VO")_2 = upright("DO")_2 dot.op upright("O")_2 upright("ER") = upright("DO")_2 dot.op frac(upright("CaO")_2 - upright("CvO")_2, upright("CaO")_2)
$ <eq:o2-consumption>

In ME/CFS, reduced cardiac output (due to autonomic dysfunction and hypovolemia), impaired oxygen extraction (due to microvascular dysfunction or mitochondrial uncoupling), or both can reduce tissue VO₂. The oxygen consumption $upright("VO")_2$ constrains the maximal ETC flux in the energy model: $J_(upright("CIV,max")) prop upright("VO")_2$. Reduced cerebral blood flow has been documented in ME/CFS patients @Novak2022CBFReview, suggesting that the brain may be particularly vulnerable to this cardiovascular--metabolic mismatch.

== Gut--Brain--Immune Axis
<sec:gut-brain-immune-axis>

Gut microbiome alterations in ME/CFS (@ch:gut-microbiome) affect both immune function and CNS signaling through multiple pathways. The integrated model includes three gut-derived signals:

+ *Short-chain fatty acids (SCFAs)*: Butyrate, produced by commensal bacteria, maintains intestinal barrier integrity and exerts anti-inflammatory effects @Folkerts2020butyrate. Reduced butyrate-producing bacteria in ME/CFS @Hsu2025gut is modeled as decreased $[upright("butyrate")]$, which increases intestinal permeability and permits translocation of bacterial products (lipopolysaccharide, LPS) into the circulation.
+ *LPS-driven immune activation*: Translocated LPS activates monocytes/macrophages through TLR4, increasing pro-inflammatory cytokine production. This is an additional input to the cytokine network model (@eq:cytokine-general).
+ *Microbiome-derived neurotransmitter precursors*: Gut bacteria produce tryptophan metabolites, GABA, and other neuroactive compounds that reach the CNS via the vagus nerve or systemic circulation, modulating the neurotransmitter models in @ch:neuroendocrine-models.

The gut--brain--immune axis coupling is modeled as:

$
J_upright("LPS") = k_upright("perm") dot.op frac(K_upright("butyrate"), K_upright("butyrate") + [upright("butyrate")]) dot.op [upright("LPS")_upright("gut")]
$ <eq:gut-immune>

where intestinal permeability increases as butyrate decreases, allowing more LPS translocation. The circulating LPS then drives immune activation, which via the neuroimmune pathway affects CNS function. This chain provides a mechanistic link between gut dysbiosis and neurological symptoms in ME/CFS.

=== GI Motility and SIBO Dynamics
<sec:gi-motility-model>

GI dysmotility is a core component of the Septad framework (@sec:septad). Gastric emptying scintigraphy studies report delayed emptying in approximately 60% of tested ME/CFS patients @GastricDysmotility2023, while breath testing identifies SIBO in 48% of those evaluated @SIBOKarhu2023. Gastroparesis and impaired migrating motor complex (MMC) function predispose to small intestinal bacterial overgrowth (SIBO), which in turn drives immune activation and nutrient malabsorption (@ch:gut-microbiome, @sec:sibo). The preceding gut--brain--immune model captures dysbiosis $->$ permeability $->$ LPS translocation but omits motility entirely. This subsection extends the gut compartment to formalize the autonomic $->$ motility $->$ SIBO $->$ immune $+$ energy cascade.

The model tracks three additional state variables: gut motility index $cal(G) in [0,1]$ (where 1 is normal MMC cycling and 0 is complete gastroparesis), small intestinal bacterial load $B_upright("SI")$ (colony-forming units, normalized to healthy baseline $B_(upright("SI,0"))$), and nutrient absorption efficiency $eta in [0,1]$:

$
frac(d cal(G), d t) &= frac(1, tau_(cal(G))) [cal(G)_upright("set")(V, upright("MC")_d) + cal(G)_upright("pro") - cal(G)] \
frac(d B_upright("SI"), d t) &= r_B dot.op B_upright("SI") (1 - frac(B_upright("SI"), K_B(cal(G)))) - delta_upright("MMC") dot.op cal(G)^2 dot.op B_upright("SI") - delta_upright("Abx") dot.op B_upright("SI") \
frac(d eta, d t) &= frac(1, tau_eta) [eta_0 dot.op frac(K_eta, K_eta + B_upright("SI") \/ B_(upright("SI,0"))) - eta]
$ <eq:gi-motility>

In @eq:gi-motility, $cal(G)_upright("pro") >= 0$ represents the prokinetic drug effect (e.g., prucalopride, low-dose erythromycin), which directly augments motility independently of vagal tone; $cal(G)_upright("pro") = 0$ in the absence of prokinetic treatment. The motility set point $cal(G)_upright("set")$ depends on vagal efferent tone $V$ (from the ANS model, @eq:ans-balance) and mast cell degranulation state $upright("MC")_d$ (from the mast cell model, @eq:mast-cell-dynamics):

$
cal(G)_upright("set")(V, upright("MC")_d) = underbrace(frac(V^(n_V), K_V^(n_V) + V^(n_V)), "vagal drive") dot.op underbrace(frac(K_(upright("MC,gut")), K_(upright("MC,gut")) + upright("MC")_d), "mast cell inhibition")
$ <eq:motility-setpoint>

Vagal tone drives motility through the enteric nervous system: reduced vagal output (as in ME/CFS autonomic dysfunction) lowers the motility set point, impairing MMC cycling. Simultaneously, degranulated mast cells in the gut mucosa release histamine and prostaglandins that can disrupt coordinated peristalsis (@ch:gut-microbiome). The Hill coefficient $n_V$ determines the steepness of the vagal drive---a steep response means that modest vagal impairment has disproportionate effects on motility, consistent with the clinical observation that many ME/CFS patients develop gastroparesis despite only moderate autonomic dysfunction.

In the SIBO dynamics (@eq:gi-motility), bacterial growth follows logistic kinetics with a carrying capacity $K_B(cal(G))$ that increases as motility decreases:

$
K_B(cal(G)) = K_(B,upright("min")) + (K_(B,upright("max")) - K_(B,upright("min"))) dot.op (1 - cal(G))
$ <eq:sibo-carrying-capacity>

The MMC clearance term $delta_upright("MMC") dot.op cal(G)^2$ is quadratic in motility, reflecting the fact that effective bacterial sweep requires coordinated phase III contractions---partial motility provides disproportionately less clearance. The antibiotic term $delta_upright("Abx")$ represents rifaximin or herbal antimicrobial treatment (@sec:sibo).

==== Cross-System Coupling

The GI motility model couples to four other subsystems:

+ *SIBO $->$ Immune activation*: Bacterial overgrowth increases luminal LPS concentration. The existing LPS translocation equation (@eq:gut-immune) is extended with a SIBO-dependent source term:
  $
  [upright("LPS")_upright("gut")] = [upright("LPS")_(upright("gut,0"))] dot.op frac(B_upright("SI"), B_(upright("SI,0")))
  $ <eq:lps-sibo>
  This creates a positive feedback loop: autonomic dysfunction $->$ reduced motility $->$ SIBO $->$ increased LPS $->$ immune activation $->$ sickness behavior $->$ further autonomic impairment.

+ *Malabsorption $->$ Energy metabolism*: Reduced nutrient absorption impairs substrate availability for mitochondrial respiration. The absorption efficiency $eta$ modifies the substrate input to the energy model:
  $
  J_upright("substrate") = eta dot.op J_(upright("substrate,0"))
  $ <eq:malabsorption-energy>
  where $J_(upright("substrate,0"))$ is the dietary substrate flux at full absorption. This couples to the energy metabolism model (@ch:energy-metabolism-models) by reducing the maximal glycolytic and fatty acid oxidation rates proportionally. SIBO-mediated fat-soluble vitamin malabsorption (via bile salt deconjugation) and bacterial consumption of B12 are both captured through $eta$ without requiring individual nutrient tracking.

+ *SIBO $->$ Butyrate depletion*: The preceding model treated $[upright("butyrate")]$ as an exogenous parameter. Bacterial overgrowth in the small intestine competes with colonic commensals for fermentable substrates, making butyrate production endogenous. This replaces the static treatment with an explicit ODE:
  $
  frac(d[upright("butyrate")], d t) = sigma_upright("butyrate") dot.op frac(K_upright("SIBO"), K_upright("SIBO") + B_upright("SI") \/ B_(upright("SI,0"))) - delta_upright("butyrate") dot.op [upright("butyrate")]
  $ <eq:sibo-butyrate>
  where $sigma_upright("butyrate")$ is the colonic production rate and the inhibitory Hill term captures substrate competition from SIBO. This links SIBO to gut barrier integrity via @eq:gut-immune: SIBO $->$ reduced butyrate $->$ increased permeability $->$ more LPS translocation, creating a second positive feedback loop that amplifies the immune consequences of dysmotility.

+ *Mast cell $<->$ Motility bidirectional loop*: Histamine released by degranulated mast cells impairs motility (@eq:motility-setpoint), while SIBO-derived LPS and bacterial metabolites can trigger further mast cell activation through TLR signaling. This is captured by the existing mast cell priming equation (@eq:mast-cell-dynamics) receiving LPS as an additional trigger input, creating a self-amplifying MCAS--dysmotility--SIBO triangle.

==== Treatment Predictions

The GI motility model generates testable treatment predictions:

- *Prokinetics* (prucalopride, low-dose erythromycin): increase effective motility via $cal(G)_upright("pro")$ (@eq:gi-motility), bypassing the vagal impairment. The model predicts that prokinetics should reduce SIBO recurrence rate by maintaining MMC clearance ($delta_upright("MMC") dot.op cal(G)^2$ term), consistent with established clinical practice of continuing prokinetics after SIBO eradication to prevent recurrence.
- *Rifaximin*: increases $delta_upright("Abx")$, rapidly reducing $B_upright("SI")$. The model predicts transient improvement followed by relapse if motility remains impaired ($cal(G) < cal(G)_upright("crit")$), because the carrying capacity $K_B(cal(G))$ remains elevated. This formalizes the clinical observation that SIBO frequently recurs after antibiotic treatment unless underlying motility dysfunction is addressed.
- *Mast cell stabilizers + prokinetics*: the model predicts synergy because stabilizers reduce $upright("MC")_d$ (improving motility set point) while prokinetics directly increase $cal(G)$, attacking the dysmotility from both upstream drivers simultaneously.
- *Vagal nerve stimulation*: increases $V$ in the ANS model, which propagates to $cal(G)_upright("set")$ through @eq:motility-setpoint. The model predicts that vagal stimulation should improve GI motility as a secondary benefit beyond its anti-inflammatory effects via the cholinergic pathway (@eq:vagal-coupling).

== Whole-Body Systems Model
<sec:whole-body-model>

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

=== Healthy Baseline and ME/CFS Disease State
<sec:baseline-disease>

The healthy state is defined by parameter values producing physiological steady-state values for all state variables (normal ATP levels, low inflammatory markers, normal cortisol rhythm, balanced autonomic tone). The ME/CFS disease state is obtained by modifying the subset of parameters identified in the individual chapters as disease-relevant (e.g., $alpha_upright("CI")$, $k_upright("exh")$, $n_F$). The integrated model predicts emergent properties of the disease state that are not apparent in subsystem models: for instance, the energy--immune vicious cycle amplifies modest parameter changes into substantial functional impairment, and the neuroimmune coupling propagates peripheral immune activation into CNS symptoms.

=== Perturbation Responses
<sec:perturbation-responses>

The whole-body model is validated by simulating responses to standardized perturbations and comparing with clinical observations:

+ *Exercise challenge*: A pulse increase in $J_upright("demand")$ produces transient ATP depletion. In the healthy model, all variables return to baseline within hours. In the ME/CFS model, the perturbation triggers the PEM cascade (@sec:pem-modeling), with secondary immune activation and delayed symptom worsening---reproducing the two-day CPET findings @keller2024cpet.
+ *Infection challenge*: A pulse increase in viral load $V$ activates the immune response. In the healthy model, the infection is cleared and the immune system returns to baseline. In the ME/CFS model, the immune response is sluggish (due to NK cell exhaustion and energy limitation), clearing the infection more slowly and producing a larger and more prolonged inflammatory response---consistent with the clinical observation that infections cause prolonged relapses in ME/CFS patients.
+ *Stress challenge*: A pulse increase in $sigma_upright("stress")$ activates the HPA axis. In the healthy model, cortisol rises appropriately and returns to baseline. In the ME/CFS model, the cortisol response is blunted, providing insufficient anti-inflammatory feedback, and the stress-induced sympathetic activation exacerbates autonomic symptoms.

== Symptom Generation Mechanisms
<sec:symptom-generation>

The integrated model generates physiological state trajectories, but clinical relevance requires mapping these to symptoms. Symptom generation functions translate state variables to symptom severity scores:

$
upright("Fatigue")(t) &= w_1 dot.op (1 - [upright("ATP")] \/ [upright("ATP")]_upright("healthy")) + w_2 dot.op bold(C)_upright("pro")(t) + w_3 dot.op (1 - F \/ F_upright("healthy")) \
upright("Pain")(t) &= w_4 dot.op bold(C)_upright("pro")(t) + w_5 dot.op mu_1(t) + w_6 dot.op [upright("ROS")](t) \
upright("Cognitive")(t) &= w_7 dot.op bold(C)_upright("CNS")(t) + w_8 dot.op (1 - [upright("DA")] \/ [upright("DA")]_upright("healthy")) + w_9 dot.op (1 - upright("CBF") \/ upright("CBF")_upright("healthy"))
$ <eq:symptom-mapping>

where $bold(C)_upright("pro") = [upright("IL-6")] + [upright("TNF-")alpha] + [upright("IL-1")beta]$ is the aggregate pro-inflammatory cytokine level, CBF is cerebral blood flow (proportional to cardiac output and cerebrovascular regulation), and $w_1, dots, w_9$ are symptom-weighting coefficients estimated from patient-reported outcome correlations. These mapping functions are deliberately linear and phenomenological: they do not claim to model the neurobiology of symptom perception but provide a pragmatic interface between the mechanistic model and clinical observations.

#limitation(title: [Symptom Mapping Limitations])[
The linear symptom generation functions are a major simplification. Symptom perception involves central sensitization, psychological modulation, and threshold effects that are not captured. The weighting coefficients ($w_i$) are likely patient-specific and may change over time (e.g., central sensitization increases pain perception for a given inflammatory stimulus). These functions should be interpreted as first-order approximations that enable model--data comparison, not as models of symptom generation per se.
]

#open-question(title: [Emergent Cycling Behavior])[
Does the coupled multi-system model produce endogenous oscillations (symptom cycling) without external perturbation? The positive feedback loops (energy--immune, neuroimmune) combined with delayed negative feedback (cortisol, anti-inflammatory cytokines) create the mathematical conditions for limit cycle oscillations. If such oscillations emerge, they would provide a mechanistic explanation for the relapse--remission pattern observed in many ME/CFS patients, independent of identifiable triggers. Numerical exploration of the full model is required to determine whether the ME/CFS parameter regime produces stable limit cycles, chaotic dynamics, or a stable fixed point with amplified response to perturbations.
]

== Extended Subsystem Couplings
<sec:extended-couplings>

The subsystem models developed in @ch:energy-metabolism-models and @ch:neuroendocrine-models have been expanded with mast cell dynamics (@sec:mast-cell-model), coagulation (@sec:coagulation-model), mitochondrial quality control (@sec:mitochondrial-dynamics), metabolic flexibility (@sec:lactate-kinetics), BH₄ competition (@sec:bh4-competition), cerebrovascular autoregulation (@sec:cbf-autoregulation), and central sensitization (@sec:central-sensitization-model). This section formalizes the additional couplings these subsystems introduce into the integrated model.

=== Mast Cell--Energy--Autonomic Triangle

Mast cell degranulation couples to both the autonomic and energy subsystems simultaneously. Histamine-mediated vasodilation reduces MAP, triggering compensatory sympathetic activation (@eq:baroreflex). The sympathetic surge increases cardiac energy demand while the mast cell inflammatory mediators impose an immune energy cost (@eq:immune-energy). *The model reveals a three-way interaction invisible to verbal reasoning*: a mast cell flare simultaneously depletes the energy budget (mediator clearance + immune activation + sympathetic compensation), worsens orthostatic intolerance (vasodilation + tachycardia), and drives neuroinflammation (TNF-$alpha$, IL-6 from mast cells crossing the BBB). The integrated model quantifies the total energy cost of a single mast cell flare as $E_upright("MC") = integral_0^(tau_upright("flare")) (J_(upright("immune,MC")) + J_(upright("SNS,comp")) + J_upright("clearance")) , d t$, which for moderate flares consumes 15--25% of the daily energy budget, explaining why ME/CFS patients with MCAS comorbidity have substantially reduced activity tolerance.

=== Coagulation--Oxygenation--Mitochondrial Cascade

Microclot burden reduces effective oxygen delivery (@eq:o2-microclot), which reduces maximal ETC flux ($J_(upright("CIV,max")) prop upright("DO")_2^upright("eff")$). Reduced ETC flux increases ROS production (@eq:ros-production), which damages endothelial cells, increasing tissue factor expression and promoting further coagulation. This cascade creates a slow positive feedback loop operating on timescales of days to weeks---*a feedback loop that only becomes apparent when the coagulation and energy models are coupled*. The model predicts that the cascade has a threshold: below a critical microclot burden $M_c^*$, fibrinolysis keeps pace with formation; above $M_c^*$, the feedback loop becomes self-sustaining. This threshold is patient-specific, depending on fibrinolytic capacity (PAI-1 levels), inflammatory state, and baseline mitochondrial reserve.

=== Connective Tissue and Vascular Compliance
<sec:eds-coupling>

Hypermobile Ehlers--Danlos syndrome (hEDS) is overrepresented among ME/CFS patients. The biomechanical consequences of connective tissue laxity enter the model through modified vascular compliance parameters. Increased venous compliance ($C_v$) amplifies gravitational blood pooling during orthostatic stress:

$
Delta V_upright("pool") = C_v dot.op rho g dot.op h_upright("column"), quad C_v^upright("hEDS") = kappa dot.op C_v^upright("normal"), quad kappa in [1.3, 2.0]
$ <eq:eds-vascular>

where $C_v$ is venous compliance (volume/pressure), $rho g h_upright("column")$ is the gravitational hydrostatic pressure over column height $h_upright("column")$, and $kappa$ is the compliance amplification factor in hEDS. The increased pooling volume enters the orthostatic model (@eq:orthostatic) as a larger effective $Delta P_upright("grav")$, requiring greater compensatory sympathetic activation to maintain MAP. *The model predicts---uniquely through quantitative analysis---that hEDS patients have a narrower energy envelope* because the energy cost of maintaining upright posture is amplified: greater sympathetic drive means higher cardiac work, and the compensatory tachycardia consumes additional ATP. For $kappa = 1.5$, the model predicts a 10--20% reduction in energy available for activity during upright hours, independent of any mitochondrial or immune dysfunction. This provides a quantitative explanation for why hEDS patients with ME/CFS tend toward greater severity: the connective tissue deficit imposes a permanent energy tax on postural maintenance.

Additionally, increased joint laxity raises proprioceptive error, which the autonomic system compensates for through increased muscle co-contraction. This adds a term $J_upright("proprioceptive") = e_upright("co-contract") dot.op (1 - upright("stability") \/ upright("stability")_0)$ to the energy demand, further narrowing the energy envelope.

=== Epigenetic State as a Slow Variable
<sec:epigenetic-dynamics>

DNA methylation and histone modification changes have been documented in ME/CFS @deVega2021dna_methylation and likely contribute to disease persistence. The preceding models treat disease parameters (e.g., $alpha_upright("CI")$, $k_upright("exh")$, $n_F$) as fixed constants. In reality, these parameters are partially determined by the epigenetic state, which itself evolves on timescales of months to years in response to the disease state.

The epigenetic state vector $bold(cal(E)) = (cal(M), cal(A))$ comprises a methylation index $cal(M)$ and a histone acetylation index $cal(A)$, each normalized to $[0, 1]$. These indices modulate key disease parameters:

$
alpha_upright("CI")(cal(E)) &= alpha_(upright("CI,0")) dot.op (1 - epsilon_upright("CI") dot.op cal(M)) \
k_upright("exh")(cal(E)) &= k_(upright("exh,0")) dot.op (1 + epsilon_upright("exh") dot.op cal(M)) \
J_upright("biogenesis")(cal(E)) &= J_(upright("biogenesis,0")) dot.op (1 + epsilon_upright("bio") dot.op cal(A))
$ <eq:epigenetic-modulation>

where the $epsilon$ coefficients quantify the sensitivity of each parameter to epigenetic state. The epigenetic state evolves in response to the disease state itself:

$
frac(d cal(M), d t) &= k_upright("DNMT") dot.op bold(C)_upright("pro") dot.op (1 - cal(M)) - k_upright("demeth") dot.op cal(M) \
frac(d cal(A), d t) &= k_upright("HAT") dot.op frac([upright("AcCoA")], K_upright("AcCoA") + [upright("AcCoA")]) dot.op (1 - cal(A)) - k_upright("HDAC") dot.op cal(A) - k_upright("SIRT") dot.op frac([upright("NAD")^+], K_upright("SIRT") + [upright("NAD")^+]) dot.op cal(A)
$ <eq:epigenetic-evolution>

where pro-inflammatory cytokines promote DNA methylation (DNMT upregulation), acetyl-CoA availability limits histone acetylation (HAT activity), and SIRT1/SIRT3 (NAD⁺-dependent deacetylases) modulate histone state. *This model produces hysteresis---a phenomenon that can only be identified through dynamical systems analysis*: the disease state promotes epigenetic changes that stabilize the disease parameters, which in turn maintain the disease state. Even if the original trigger (e.g., viral infection) is fully resolved, the epigenetic state $bold(cal(E))$ may have shifted to values that keep the system in the disease attractor. Recovery then requires not just removing the trigger but reversing the epigenetic changes---a process that operates on the slow timescale $tau_upright("epi") ~ 1 \/ k_upright("demeth") ~$ months to years.

The hysteresis width---the difference between the perturbation required to trigger disease onset and the intervention required for recovery---is determined by the epigenetic coupling strengths $epsilon$. *The model predicts that early intervention (before epigenetic consolidation) requires substantially less therapeutic intensity than late intervention*, formalizing the clinical intuition of an "intervention window" in the first months after disease onset.

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
- *Epigenetic* (2 variables): $cal(M)$, $cal(A)$

The total system now comprises approximately 64 state variables. The additional 19 variables (relative to the initial 45-variable model) capture mast cell/histamine dynamics, coagulation, mitochondrial quality control, metabolic flexibility, neurovascular regulation, pain processing, epigenetic memory, and GI motility/SIBO dynamics. While the system is larger, its modular structure (each subsystem has $lt.eq 5$ coupling variables with others) maintains computational tractability: the Jacobian is sparse, enabling efficient numerical integration and bifurcation analysis.

== Bifurcation Analysis and Disease Subtypes
<sec:bifurcation-analysis>

The integrated model's nonlinear feedback structure implies the existence of multiple steady states (attractors) for certain parameter ranges. Bifurcation analysis---systematic exploration of how the number and character of attractors change as parameters vary---provides the most powerful application of the mathematical framework, yielding results that are inaccessible to verbal reasoning alone.

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

#remark(title: [The Hill Exponent Is a Modelling Choice])[
The cooperativity exponent $n = 2$ in @eq:immune-energy-feedback is a modelling choice with consequences for bistability. With $n = 1$ (standard Michaelis--Menten), the $I$-nullcline becomes a hyperbolic function lacking the inflection point that enables triple intersection with the $A$-nullcline; the system is then monostable for all parameter values. With $n gt.eq 2$, the $I$-nullcline is sigmoidal and triple intersection becomes possible.

The choice of $n = 2$ is motivated by immunometabolism: immune cell activation involves cooperative processes (receptor clustering, signalling threshold effects, metabolic reprogramming switches) that produce ultrasensitive responses @Ferrell1996ultrasensitivity. T cell activation in particular exhibits a switch-like dependence on TCR signal strength, well-described by Hill kinetics with $n = 1.5$--$3$ @Altan-Bonnet2005. However, $n = 1$ cannot be excluded a priori for all immune cell types, and the bistability result depends on this choice. The analysis below should therefore be read as: _if_ ATP-dependent immune activation is cooperative ($n gt.eq 2$), _then_ bistability follows from the feedback structure.
] <rem:hill-exponent>

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

#proposition(title: [Bistability of the Energy--Immune Subsystem])[
Under ME/CFS parameters ($alpha_upright("CI") = 0.65$, $k_upright("exh") = 0.15 "day"^(-1)$, $k_upright("recov") = 0.04 "day"^(-1)$) and with cooperative immune activation ($n = 2$, @rem:hill-exponent), the reduced system (@eq:reduced-system) has exactly three fixed points: two stable fixed points (nodes or spirals) and one saddle.
] <prop:bistability>

#proof[
_Step 1: A positively invariant region exists._ Since $A$ and $I$ represent physical concentrations, the positive quadrant $A gt.eq 0$, $I gt.eq 0$ is preserved by the dynamics (at $A = 0$: $dot(A) = P(0) - beta_0 gt.eq 0$ when $I = 0$; at $I = 0$: $dot(I) = k_upright("act")^upright("eff")(A) dot.op I_0 > 0$ for $A > 0$). For the upper bounds, choose $A_max$ so that $P(A_max) < beta_0$ (guaranteed by PFK-1 product inhibition at high ATP) and let $I_max = k_(upright("act,0")) I_0 \/ (k_upright("exh") + d_a)$ (the $I$-nullcline plateau). Define the trapping region as the set bounded by $I = 0$, $A = A_max$, $I = I_max$, and the $A$-nullcline curve $I = (P(A) - beta_0)\/e_a$ on the left (which lies to the left of the ascending limb and satisfies $dot(A) > 0$ in its interior). On the upper boundary $I = I_max$: $dot(I) < 0$ because immune clearance $(k_upright("exh") + d_a)I$ exceeds activation at the plateau. On $A = A_max$: $dot(A) = P(A_max) - beta_0 - e_a I < 0$. On $I = 0$: $dot(I) > 0$. On the left boundary (the $A$-nullcline curve): by construction $dot(A) = 0$ on this curve and $dot(A) > 0$ immediately to its right, so trajectories cannot exit leftward. This trapping region $cal(R)$ is positively invariant and contains all three fixed points.

_Step 2: Exactly three fixed points._ Fixed points are intersections of the $I$-nullcline and $A$-nullcline. The $I$-nullcline (@eq:i-nullcline) is strictly monotone increasing (derivative always positive for $A > 0$). The $A$-nullcline (@eq:a-nullcline) is unimodal: it has exactly one local maximum (inherited from the unimodal $P(A)$) and is therefore composed of two monotone pieces---an ascending limb and a descending limb. On any interval where both curves are monotone in the same direction, they can intersect at most once (by the monotonicity of their difference). The ascending limb of the $A$-nullcline and the $I$-nullcline are both increasing, giving at most one intersection; the descending limb of the $A$-nullcline intersects the still-increasing $I$-nullcline at most once (again by monotonicity of the difference). A third intersection can occur in the transition region near the peak. Thus at most three intersections total.

The lower bound uses the intermediate value theorem on the difference $h(A) = I_upright("null")^A (A) - I^*(A)$. Near $A = 0$: $P(0) approx 0$ (the production machinery requires some ATP), so $I_upright("null")^A (0) approx -beta_0\/e_a < 0$ while $I^*(0) = 0$, giving $h(0) < 0$. As $A$ increases, $P(A)$ rises (ascending limb of the unimodal production function) and eventually $P(A) - beta_0 > e_a I^*(A)$, making $h > 0$: the $A$-nullcline rises above the $I$-nullcline. By the IVT, at least one crossing occurs on the ascending limb (the disease fixed point). On the descending limb at high $A$, $P(A)$ falls back below $beta_0$ while $I^*(A) > 0$, so $h < 0$ again: at least one crossing on the descending limb (the healthy fixed point). This gives at least two crossings. The third crossing (the saddle) arises when @eq:bistability-inequality holds: the condition ensures that near the peak of the $A$-nullcline, the $A$-nullcline slope exceeds the $I$-nullcline slope, creating a fold where the $I$-nullcline overtakes the $A$-nullcline from below, producing an additional sign change in $h$. Numerical evaluation at the stated ME/CFS parameter values (@app:mathematical-details) confirms that three crossings occur. Combined with the upper bound of three: *exactly three*.

_Step 3: Jacobian and eigenvalue classification._ At each fixed point $(A^*, I^*)$, the Jacobian is:

$ J = mat(P'(A^*), -e_a; display(frac(2 k_(upright("act,0")) I_0 K_upright("ATP")^2 A^*, (K_upright("ATP")^2 + A^(*2))^2)), -(k_upright("exh") + d_a)) equiv mat(f_A, f_I; g_A, g_I) $ <eq:jacobian-2d>

The trace is $tau = f_A + g_I = P'(A^*) - (k_upright("exh") + d_a)$ and the determinant is $Delta = f_A g_I - f_I g_A$. Since $f_I = -e_a < 0$ and $g_A > 0$ for all $A^* > 0$, the cross-coupling term $-f_I g_A = e_a g_A > 0$ always contributes positively to $Delta$.

*Healthy fixed point* $(A_H, I_H)$, on the descending limb of the $A$-nullcline: $P'(A_H) < 0$, so $f_A < 0$. The trace $tau = P'(A_H) - (k_upright("exh") + d_a) < 0$ (both terms negative). The determinant $Delta = |P'(A_H)|(k_upright("exh") + d_a) + e_a g_A > 0$. Negative trace and positive determinant: *stable* (node or spiral).

*Disease fixed point* $(A_D, I_D)$, on the ascending limb of the $A$-nullcline: $P'(A_D) > 0$, so $f_A > 0$. The determinant sign follows from the nullcline crossing geometry. At this intersection, the $I$-nullcline is steeper than the $A$-nullcline (the $I$-nullcline crosses from below as $A$ increases). In terms of Jacobian entries, this means $g_A \/ |g_I| > P'(A_D) \/ e_a$, i.e., $e_a g_A > P'(A_D)(k_upright("exh") + d_a)$, ensuring $Delta > 0$. For the trace: $tau = P'(A_D) - (k_upright("exh") + d_a) < 0$ requires $P'(A_D) < k_upright("exh") + d_a$. Both quantities have units of (time)$""^(-1)$ in the non-dimensionalised system. This condition holds when $A_D$ lies in the region where the ascending slope of $P$ is moderate, which is the case for the stated ME/CFS parameter values (verified numerically in @app:mathematical-details). Negative trace and positive determinant: *stable* (node or spiral).

*Saddle point* $(A_s, I_s)$, near the peak of the $A$-nullcline: here the $I$-nullcline is _less steep_ than the $A$-nullcline (the $A$-nullcline crosses the $I$-nullcline from below as $A$ increases---the opposite crossing direction). This gives $P'(A_s) \/ e_a > g_A \/ (k_upright("exh") + d_a)$, so $P'(A_s)(k_upright("exh") + d_a) > e_a g_A$, making $Delta = -P'(A_s)(k_upright("exh") + d_a) + e_a g_A < 0$. Negative determinant: eigenvalues have opposite signs, confirming an *unstable saddle*.

_Step 4: Index theory consistency._ By the planar fixed-point index theorem applied to the trapping region $cal(R)$ (Step 1), the sum of indices of all interior fixed points must equal $+1$. Stable nodes/spirals have index $+1$; saddles have index $-1$. Three fixed points with indices $+1, -1, +1$ sum to $+1$. $checkmark$
]

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

#limitation(title: [Quasi-Steady-State Reduction])[
The 2D analysis treats 62 state variables as quasi-steady-state (QSS) parameters. This is justified when the omitted variables equilibrate faster than the two retained variables. For many omitted variables this holds: cytokine half-lives are minutes to hours, membrane potential equilibrates in milliseconds, and metabolite pools turn over in seconds @Eissing2011. However, some omitted variables---notably epigenetic modifications ($tau_upright("epi") tilde.op$ months) and immune cell exhaustion ($tau_upright("exh") tilde.op$ weeks)---operate on _slower_ timescales than ATP and activated immune cells. These slow variables act as slowly drifting parameters in the reduced system rather than fast slaves; their effect is to slowly move the bifurcation point, not to alter the existence of bistability at a given parameter snapshot. Nonetheless, the qualitative conclusions---bistability exists, healthy parameters support one attractor, ME/CFS parameters support two---should be regarded as analytically demonstrated for the 2D subsystem and conjectured for the full model until verified by numerical continuation analysis (AUTO, MATCONT). Quantitative claims (exact bifurcation thresholds, basin sizes) require the full system.
] <lim:qss-reduction>

==== Competing Dynamical Hypotheses
<sec:competing-hypotheses>

The bistable fixed-point model is not the only dynamical explanation for ME/CFS chronicity. Three alternatives deserve explicit consideration.

*Continuous parametric shift (no bistability).* Under this hypothesis, ME/CFS represents a different region of a single attractor's basin: parameters (e.g., $alpha_upright("CI")$, $k_upright("exh")$) drift due to ongoing damage, and symptoms track the parameter shift continuously. Recovery occurs gradually when parameters return. This model predicts that partial treatment should produce partial, graded improvement---and that spontaneous recovery should correlate smoothly with parameter restoration. It is _less parsimonious_ than the bistable model for explaining two clinical observations: (1) many infections of comparable severity resolve without triggering ME/CFS, suggesting a threshold rather than a graded response; and (2) symptoms persist after the apparent trigger resolves, which a purely parametric model explains only by invoking ongoing hidden damage. However, the continuous-shift hypothesis is not decisively falsified by current evidence---a parametric model with rapid parameter change could mimic threshold-like onset, and ongoing subclinical damage (e.g., viral persistence) could explain persistence. Distinguishing the two models requires longitudinal multi-omic trajectories with sufficient temporal resolution to detect whether the state-space path shows a continuous drift or a discontinuous jump.

*Limit cycle (oscillatory attractor).* Under this hypothesis, the disease state is not a fixed point but a stable limit cycle: the system oscillates between better and worse states, potentially explaining the boom-bust pattern (PEM followed by partial recovery) characteristic of ME/CFS. This is a genuine alternative that the 2D analysis does not exclude. For limit cycles to arise in a 2D system, the disease fixed point would need to be an unstable spiral (positive real part of complex eigenvalues) surrounded by a stable limit cycle (via Hopf bifurcation). @prop:bistability shows the disease fixed point is a stable node at the stated parameters; however, for other parameter values a Hopf bifurcation could replace the stable disease node with a limit cycle. The two hypotheses are not mutually exclusive: some patients may sit in a stable disease attractor (steady-state illness) while others orbit a limit cycle (relapsing-remitting course). Distinguishing them clinically requires longitudinal time-series analysis of biomarkers with sufficient temporal resolution to detect oscillatory versus steady-state dynamics.

*Epigenetic lock-in (no dynamical bistability needed).* T cell exhaustion via epigenetic imprinting is well-documented @Pauken2016epigenetic: once T cells commit to an exhausted phenotype through DNA methylation changes, they persist regardless of the original trigger. Under this simpler hypothesis, chronicity reflects epigenetic memory rather than dynamical bistability---no feedback loop is needed, just a one-way epigenetic switch. This hypothesis is compatible with our model (@sec:epigenetic-dynamics already includes epigenetic consolidation), but would predict that disease persistence depends entirely on the epigenetic state, not on ongoing energy--immune feedback. It is testable: if epigenetic reprogramming (e.g., via demethylating agents) restores immune function without addressing energy metabolism, the epigenetic-only model is supported. If recovery requires simultaneous energy and immune normalisation, the feedback model is supported.

=== Steady-State Multiplicity

The energy--immune coupling alone (@eq:energy-immune-coupling and @eq:immune-energy-feedback) produces bistability for a range of parameter values, as hypothesized in @sec:energy-immune-coupling. The extended model, with additional positive feedback loops (mast cell--energy, coagulation--oxygenation, epigenetic--parameter), is expected to produce richer attractor structure. Numerical continuation methods (e.g., AUTO, MATCONT) applied to the steady-state equations $bold(f)(bold(x)^*, bold(theta)) = bold(0)$ can map the complete bifurcation diagram.

*The central prediction of bifurcation analysis, impossible without the mathematical model*: the integrated system supports not one but multiple distinct disease attractors, each corresponding to a different ME/CFS phenotype:

+ *Immune-dominant attractor*: high cytokine levels, elevated exhausted T cells, near-normal mitochondrial parameters. Patients in this attractor present with immune-mediated symptoms (lymphadenopathy, sore throat, flu-like malaise) and respond preferentially to immunomodulatory therapy.
+ *Metabolic-dominant attractor*: low ATP, elevated lactate, impaired metabolic flexibility, near-normal immune markers. Patients present with exercise intolerance and PEM as primary complaints and respond to mitochondrial support.
+ *Neurovascular-dominant attractor*: impaired CBF autoregulation, BH₄ depletion, autonomic dysfunction, moderate energy and immune impairment. Patients present with cognitive dysfunction, orthostatic intolerance, and pain as primary symptoms.
+ *Severe/locked attractor*: all subsystems degraded, epigenetic consolidation complete. This attractor has the deepest basin of attraction and the highest intervention threshold for escape.

Each attractor has a characteristic biomarker signature derivable from the model's steady-state equations. This subtyping is mechanistic: it derives from the mathematical structure of the coupled ODEs, not from statistical clustering of symptoms. The model predicts that patients within the same attractor basin should respond similarly to targeted interventions, providing a rational basis for treatment stratification.

An important caveat: the discrete-attractor subtype model competes with the alternative that ME/CFS heterogeneity forms a continuous spectrum, as proposed by symptom-based severity models @Nacul2020naturalhistory @Jason2010subtypes. These are empirically distinguishable: discrete attractors predict clusters in multi-omics data with gaps between them, while a continuous spectrum predicts a smooth distribution. Current data are insufficient to discriminate (most studies lack the multi-domain simultaneous measurements the model requires), and the truth may be intermediate: discrete attractors with noisy parameter variation producing apparent continuity within each basin.

=== Separatrix Topology and Recovery Paths

The separatrices---boundaries between basins of attraction---determine the minimum perturbation required for state transitions. The separatrix between the healthy and each disease attractor defines the "tipping point" for disease onset; the separatrix between a disease attractor and the healthy state defines the recovery threshold. *A key model prediction*: these separatrices are not symmetric. Due to epigenetic hysteresis (@sec:epigenetic-dynamics), the recovery separatrix lies further from the disease attractor than the onset separatrix lies from the healthy state. This means recovery requires a larger sustained perturbation (i.e., more intensive intervention) than the original trigger that caused disease onset---formalizing the clinical observation that ME/CFS is easy to trigger and hard to reverse.

The separatrix topology also predicts transitions between disease subtypes: a patient in the immune-dominant attractor who experiences additional mitochondrial insult (e.g., from sustained ROS damage) may transition to the severe/locked attractor without passing through the healthy state. The model maps the conditions under which such inter-attractor transitions occur, identifying the parameter trajectories that lead to progressive worsening.

=== Parameter Sensitivity of Bifurcation Structure

Not all parameters equally influence the bifurcation structure. The codimension of each bifurcation point indicates how many parameters must be simultaneously varied to produce the bifurcation. Low-codimension bifurcations (saddle-node, transcritical) are robust and clinically relevant; high-codimension bifurcations require improbable parameter coincidences. Preliminary analysis of the reduced energy--immune subsystem identifies $alpha_upright("CI")$ (Complex I activity) and $k_upright("exh")$ (immune exhaustion rate) as the two parameters with the strongest influence on the saddle-node bifurcation that creates/destroys the disease attractor. This suggests that interventions targeting these parameters---mitochondrial protectants and immune checkpoint modulators---have the greatest potential to qualitatively change the disease dynamics rather than merely shifting the system within its current attractor.

#hypothesis(title: [ME/CFS as a Multi-Attractor Disease])[
ME/CFS is not a single disease with a spectrum of severity but a collection of distinct dynamical states (attractors) in a coupled multi-system model. Different attractors correspond to clinically recognizable subtypes with distinct dominant pathophysiology. Disease onset, progression, and recovery are transitions between attractors governed by separatrix geometry. This hypothesis predicts that: (1) patient clustering by multi-omics data should reveal clusters corresponding to model-derived attractors; (2) treatment response should be subtype-specific and predictable from model-derived biomarker signatures; (3) spontaneous recovery occurs preferentially in patients near separatrix boundaries (identifiable by critical slowing down signals, @ch:temporal-evolution); and (4) progressive worsening reflects inter-attractor transitions toward deeper basins. *This hypothesis is uniquely generated by mathematical modeling*: verbal descriptions of ME/CFS heterogeneity cannot distinguish between a continuous spectrum and discrete attractors, but the mathematical structure of the coupled ODE system makes a specific prediction resolvable by bifurcation analysis.

*Certainty*: 0.40. Bistability of the energy--immune subsystem is well-supported by the feedback structure; multi-stability of the full 64-variable system requires numerical verification. The correspondence between mathematical attractors and clinical subtypes remains to be validated against multi-omics patient data.
]

== Model Application Guide
<sec:integrated-model-application>

The integrated models in this chapter formalize couplings between subsystems. This section provides application guidance for the key coupling models and the whole-body system.

=== Energy--Immune Coupling and Bistability (@eq:energy-immune-coupling and @eq:immune-energy-feedback)

*Measurements required.*
(1) Concurrent metabolic and immune panels: CPET-derived peak VO₂ _and_ cytokine panel (IL-6, TNF-$alpha$, IFN-$gamma$, IL-10) from the same time point (why: the coupling model requires both axes simultaneously---isolated metabolic or immune data cannot constrain the bidirectional feedback).
(2) Immune cell activation markers: CD38⁺/HLA-DR⁺ T cells (why: activated T cell counts determine $J_upright("immune")$, the immune energy drain).
(3) Symptom worsening during intercurrent infection (documented prospectively) (why: validates the prediction that immune flares cause energy depletion and symptom amplification through the coupling).

*Worked example.*
A patient with moderate ME/CFS: $[upright("ATP")]_upright("ss") = 4.0$ mM, $N_a = 50$ cells/$mu$L, $bold(C)_upright("pro") = 25$ pg/mL. Immune energy demand: $J_upright("immune") = e_a times 50 + e_M times 30 + e_T times 40 approx 0.15 times J_(upright("production,max"))$ (15% of maximal ATP production consumed by immune cells). During a viral reactivation flare: $N_a -> 120$, $bold(C)_upright("pro") -> 60$ pg/mL. Immune energy demand triples to $0.45 times J_(upright("production,max"))$. With $J_(upright("production,max"))$ already at 60% of healthy, the remaining energy budget for activity: $0.60 - 0.45 - 0.35_upright("basal") = -0.20$ (negative---the patient cannot meet basal metabolic needs during the flare, explaining the bed-bound "crash" state). The reverse coupling: at $[upright("ATP")] = 3.0$ mM (during the crash), effective immune activation rate drops to $k_upright("act")^upright("eff") = k_upright("act") times 3.0^2 \/ (2.5^2 + 3.0^2) = 0.59 times k_upright("act")$ (41% impaired), slowing viral clearance and prolonging the flare.

*Inter-model dependencies.*
This coupling is the central hub of the integrated model. _Inputs from_: all immune models (@ch:immune-system-models) and all energy models (@ch:energy-metabolism-models). _Outputs to_: determines the effective energy budget available for activity (@ch:predictive-applications), infection response dynamics (@ch:temporal-evolution), and the bistability/attractor structure (@sec:bifurcation-analysis).

*Scope and rationale.*
The coupling uses a single aggregate $J_upright("immune")$ rather than cell-type-specific energy costs. Per-cell energy consumption values ($e_r$, $e_a$, etc.) come from immunometabolism literature (activated lymphocytes consume $~$10$times$ more glucose than resting). The Hill function (exponent 2) for ATP-dependent immune function is a parsimonious choice capturing cooperative ATP dependence without overfitting.

*Falsification criteria.*
The bistability hypothesis predicts that the disease state is a stable attractor---sustained even after the triggering perturbation resolves. *Falsified if*: removing ME/CFS-specific parameter modifications (e.g., by a hypothetical intervention restoring $alpha_upright("CI")$ to healthy values while maintaining disease-state immune activation) causes the system to _spontaneously_ return to health. Bistability requires that the disease state persist even with one subsystem normalized---the vicious cycle maintains itself through the remaining coupling. A single-intervention cure would disprove bistability. Also falsified if longitudinal state-space trajectories (requiring concurrent metabolic and immune measurements at $gt.eq$6 time points over 6 months) show a continuous gradient rather than discrete attractor clustering.

*Clinical implications.*
The bistability model has a critical treatment implication: *brief interventions are predicted to fail*. Because the disease attractor is stable, a treatment that temporarily improves energy or suppresses inflammation will be followed by relapse once treatment stops---the system returns to the disease attractor. Effective treatment must either: (1) be sustained long enough for the system to cross the separatrix (requiring simultaneous energy improvement _and_ immune suppression above a threshold intensity), or (2) modify system parameters (not just state variables) to eliminate the disease attractor entirely. This explains the consistent ME/CFS clinical experience of relapse after promising short-term treatment responses.

=== Gut--Brain--Immune Axis and GI Motility/SIBO (@eq:gut-immune and @eq:sibo-butyrate)

*Measurements required.*
(1) Lactulose/mannitol breath test or SIBO-specific breath test (glucose or lactulose) (why: validates SIBO presence and $B_upright("SI")$ level).
(2) Fecal calprotectin (why: intestinal inflammation marker).
(3) Fecal short-chain fatty acid profile, especially butyrate (why: constrains $[upright("butyrate")]$).
(4) Gastric emptying scintigraphy (why: directly measures motility index $cal(G)$).
(5) Plasma LPS or LPS-binding protein (why: validates gut permeability and LPS translocation).
(6) Serum zonulin (why: marker of tight junction integrity, inversely related to butyrate-mediated barrier protection).

*Worked example.*
A patient with vagal tone $V = 40%$ of healthy and moderate mast cell activation ($upright("MC")_d = 0.3$). Motility set point from @eq:motility-setpoint: $cal(G)_upright("set") = (0.4^2 \/ (0.5^2 + 0.4^2)) times (1.0 \/ (1.0 + 0.3)) = 0.39 times 0.77 = 0.30$ (vs. 0.80 healthy). With $cal(G) = 0.30$, SIBO carrying capacity from @eq:sibo-carrying-capacity: $K_B = K_(B,upright("min")) + (K_(B,upright("max")) - K_(B,upright("min"))) times 0.70 = 1 + 99 times 0.70 = 70.3 times B_(upright("SI,0"))$---the small intestine can sustain 70$times$ normal bacterial load. MMC clearance: $delta_upright("MMC") times 0.30^2 = 0.09 times delta_upright("MMC")$ (91% reduced). Combined: SIBO is virtually inevitable. Adding prucalopride ($cal(G)_upright("pro") = 0.25$): effective $cal(G) = 0.55$, reducing $K_B$ to 46$times$ normal and increasing clearance to $0.30 times delta_upright("MMC")$---a 3-fold improvement that may be sufficient to prevent SIBO recurrence after antibiotic eradication.

*Inter-model dependencies.*
_Inputs_: vagal tone from ANS model; mast cell state from immune model; bacterial load affects butyrate production. _Outputs_: LPS translocation drives immune activation (cytokine network); malabsorption ($eta$) reduces energy substrate availability; butyrate depletion increases gut permeability. Four cross-system feedback loops are formalized in @sec:gi-motility-model.

*Scope and rationale.*
The gut model tracks motility, SIBO load, and absorption efficiency but omits microbiome composition (hundreds of species), bile acid metabolism, and enteric nervous system detail. This captures the key ME/CFS-relevant dynamics (autonomic $->$ dysmotility $->$ SIBO $->$ immune activation $+$ malabsorption) at a level parameterizable from clinical tests.

*Falsification criteria.*
The model predicts that (1) SIBO prevalence correlates with vagal impairment (measurable via HRV) and mast cell activation markers; (2) prokinetic-maintained motility prevents SIBO recurrence after antibiotic eradication. *Falsified if*: SIBO recurrence rate is independent of motility index (i.e., patients with restored motility relapse at the same rate as those without), or if SIBO eradication does not reduce systemic inflammatory markers.

*Clinical implications.*
*Whom to treat*: ME/CFS patients with GI symptoms, positive SIBO breath test, or low fecal butyrate. *How*: the model predicts a specific treatment sequence: (1) eradicate SIBO with rifaximin; (2) maintain motility with prokinetic (prucalopride or low-dose erythromycin) to prevent recurrence; (3) treat underlying mast cell activation (stabilizers) and restore vagal tone (vagal nerve stimulation) for durable benefit. The model predicts that rifaximin alone without prokinetic maintenance has $>$70% relapse rate within 6 months (because the motility deficit persists and $K_B$ remains elevated).

=== Bifurcation Analysis and Disease Subtypes (@sec:bifurcation-analysis)

*Measurements required.*
Subtype classification requires a _multi-domain biomarker panel_ measured concurrently:
(1) Metabolic axis: peak VO₂ from CPET, lactate at anaerobic threshold, acylcarnitine profile.
(2) Immune axis: cytokine panel (6-plex), NK cell function, T cell exhaustion markers (PD-1, Tim-3), autoantibody screen.
(3) Neuroendocrine axis: cortisol rhythm (4-point salivary), HRV, BH₄:BH₂ ratio.
(4) Cardiovascular axis: tilt-table or active standing test with transcranial Doppler (CBF during orthostatic challenge).
The model predicts that no single biomarker distinguishes subtypes---the _pattern_ across domains determines attractor assignment.

*Worked example.*
Patient A: peak VO₂ = 16 mL/kg/min (severely reduced), lactate threshold at 40 W (very low), near-normal cytokine panel, normal CAR. Model classification: *metabolic-dominant attractor*. Predicted best responders to: CoQ10, NAD⁺ precursors, d-ribose. Patient B: peak VO₂ = 26 mL/kg/min (mildly reduced), but IL-6 = 12 pg/mL (3$times$ normal), NK cytotoxicity at 15% (vs. 40% normal), PD-1⁺ CD8⁺ T cells = 45% (vs. 15%). Model classification: *immune-dominant attractor*. Predicted best responders to: LDN, daratumumab (if autoantibody-positive), rintatolimod.

*Falsification criteria.*
The multi-attractor hypothesis predicts that patient clustering by multi-omics data should reveal discrete clusters (not a continuous spectrum) corresponding to the model-derived attractors. *Falsified if*: unsupervised clustering of comprehensive multi-domain biomarker data reveals a continuous distribution rather than distinct clusters, or if the clusters that emerge do not correspond to differential treatment responses.

*Clinical implications.*
The subtype model provides a rational basis for treatment stratification. The key clinical prediction is *target inversion*: the top drug target in one subtype is irrelevant in another ($alpha_upright("CI")$ has sensitivity $S_T = 0.35$ in metabolic-dominant but $S_T = 0.04$ in immune-dominant). This means that _the same treatment should be prescribed or withheld depending on subtype classification_, not given to all ME/CFS patients. The model predicts that unselected clinical trials (mixing subtypes) will show small average effect sizes even for treatments highly effective in the target subtype---explaining the historical pattern of ME/CFS trial failures and providing a path forward through biomarker-stratified trial design.

=== Whole-Body 64-Variable Model (@sec:whole-body-model)

*How to use the model.*
The 64-variable model is not intended for bedside use. Its applications are:
(1) _In silico hypothesis testing_: simulate "what if" scenarios (e.g., what happens if Complex I activity is restored but immune activation persists?) to identify which interventions are necessary vs. sufficient.
(2) _Sensitivity analysis_: identify which parameters most influence which symptoms across the heterogeneous patient population (@ch:predictive-applications).
(3) _Virtual clinical trial design_: generate virtual patient populations, simulate treatment responses, and optimize trial design before committing to expensive real trials.
(4) _Prediction generation_: the model generates specific, falsifiable predictions (e.g., the multiplicative VO₂ impairment, the 4--6 driver node minimum for controllability, the intervention window duration) that can be tested independently of the full model.

*What the model captures and what it omits.*
_Captured_: energy metabolism (glycolysis, Krebs, ETC, ROS, mitochondrial dynamics, metabolic flexibility, lactate), immune function (NK, T, B cells, cytokines, mast cells, coagulation), neuroendocrine (HPA, ANS, neurotransmitters, BH₄, sleep, pain/sensitization, CBF autoregulation), gut (motility, SIBO, permeability), connective tissue (EDS/vascular compliance), and epigenetics (methylation, acetylation). _Omitted_: microRNA networks, intracellular signaling cascades (NF-$kappa$B, JAK-STAT, mTOR), detailed receptor pharmacology, tissue-specific heterogeneity (e.g., brain vs. muscle mitochondria), individual microbiome species, and reproductive hormone effects. These omissions reflect data availability: adding them would increase parameter count beyond what current ME/CFS datasets can constrain.

*Falsification criteria for the integrated model.*
The integrated model's central prediction is _emergent multi-system dysfunction from modest individual impairments_ (the multiplicative interaction principle). *Falsified if*: comprehensive multi-system profiling reveals that ME/CFS patients have _one_ severely impaired system with others unaffected (additive, not multiplicative, pathology), or if correcting a single system (e.g., normalizing immune function alone) produces complete remission (would disprove the multi-system coupling requirement).

== Neuroplasticity Attractor Dynamics
<sec:neuroplasticity-attractor>

The preceding sections model ME/CFS as a multi-system disease with coupled energy--immune--neuroendocrine dynamics. This section extends the framework to incorporate neuroplasticity, central sensitization, and thyroid hormone interactions---formalizing the "pathological attractor state" concept from the clinical brainstorm (Speculation @spec:attractor-landscape).

#limitation(title: [Conceptual Scaffold, Not Quantitative Model])[
The ODE system presented below is a *conceptual scaffold*: it formalizes the hypothesized causal structure (which variables affect which, and in what direction) but contains no empirically constrained parameters. No ME/CFS-specific measurement exists for any rate constant in the model. The mathematical formalism serves three purposes: (1) forcing explicit specification of causal links rather than verbal hand-waving; (2) deriving qualitative predictions (e.g., multiplicative combination effects) that follow logically from the assumed structure; and (3) identifying what measurements would be needed to constrain the model. It does NOT provide quantitative predictions, and the fixed-point analysis describes what the model implies IF its structure is correct---not what will happen in patients. The verbal summary of the model's content is: "kindling, T3 depletion, microglial activation, and epigenetic locking may reinforce each other; treating multiple ones simultaneously may work better than treating one at a time." The ODE formalism adds one genuinely novel prediction beyond this verbal statement: that combination effects should be *multiplicative* (detectable as interaction terms in factorial trials), not merely additive. Readers should evaluate whether the mathematical apparatus is justified by this single additional prediction.
]

=== Multi-Loop Feedback Model

The core observation motivating this model is that ME/CFS appears to be maintained by multiple self-reinforcing feedback loops operating simultaneously. None of the proposed loops has been demonstrated as a complete closed loop in ME/CFS patients---each is assembled from cross-disease evidence (see individual hypothesis limitations in Chapters @ch:neurological and @ch:endocrine). The model therefore explores the *consequences* of assuming these loops exist, not their existence per se. The neuroplasticity-relevant loops are:

$
"Loop 1 (Kindling):" quad &upright("PEM") arrow.r upright("microglial priming") arrow.r upright("lower threshold") arrow.r upright("more PEM") \
"Loop 2 (T3 depletion):" quad &upright("inflammation") arrow.r arrow.b upright("DIO2") arrow.r arrow.b upright("T3") arrow.r arrow.b upright("BDNF") arrow.r upright("M1 microglia") arrow.r upright("inflammation") \
"Loop 3 (Epigenetic lock):" quad &upright("chronic inflammation") arrow.r upright("HDAC-mediated silencing") arrow.r arrow.b upright("plasticity genes") \
"Loop 4 (Energy failure):" quad &arrow.b upright("T3") arrow.r arrow.b upright("mitochondrial OXPHOS") arrow.r arrow.b upright("ATP") arrow.r upright("impaired immune regulation")
$

We formalize these as a coupled ODE system. Let $K$ represent the kindling state (cumulative microglial priming), $T$ the effective brain T3 level, $M$ the microglial activation level, and $E$ the epigenetic consolidation depth:

$
frac(d K, d t) &= alpha dot.op P(t) - beta dot.op K dot.op u_upright("AK")(t) - gamma dot.op K \
frac(d T, d t) &= delta dot.op (T_0 - T) - epsilon dot.op M dot.op T + zeta dot.op u_upright("T3")(t) \
frac(d M, d t) &= eta dot.op K + theta dot.op (1 - T slash T_0) - mu dot.op M dot.op u_upright("AI")(t) - nu dot.op M \
frac(d E, d t) &= kappa dot.op M dot.op (1 - E) - lambda_0 dot.op E - lambda_1 dot.op E dot.op u_upright("HDAC")(t)
$ <eq:neuroplasticity-attractor>

where:

- $P(t)$ is the PEM event rate (crashes per unit time)
- $u_upright("AK")(t)$ is the anti-kindling intervention strength (e.g., levetiracetam)
- $u_upright("T3")(t)$ is the exogenous T3 supplementation rate
- $u_upright("AI")(t)$ is the anti-inflammatory intervention strength (e.g., LDN, levetiracetam)
- $u_upright("HDAC")(t)$ is the HDAC inhibitor intervention strength (e.g., valproate)
- $T_0$ is the healthy baseline brain T3 level
- Greek letters ($alpha, beta, gamma, delta, epsilon, zeta, eta, theta, mu, nu, kappa, lambda_0, lambda_1$) are rate constants; all are positive. Parameter estimation requires longitudinal multi-biomarker data not currently available for ME/CFS (see Limitation box at end of section)

=== Fixed-Point Analysis

Setting all derivatives to zero and all interventions to zero ($u = 0$), the system has two classes of fixed points:

*Healthy fixed point:* $(K^*, T^*, M^*, E^*) = (0, T_0, 0, 0)$ --- no kindling, normal T3, quiescent microglia, no epigenetic locking. Stability requires $P(t) = 0$ (no PEM events).

*Disease fixed point:* A non-trivial equilibrium exists where kindling, T3 depletion, microglial activation, and epigenetic consolidation are all elevated and mutually sustaining. At this fixed point:

$
K^* = frac(alpha P^*, gamma) , quad M^* = frac(eta K^* + theta(1 - T^* slash T_0), nu) , quad T^* = frac(delta T_0, delta + epsilon M^*) , quad E^* = frac(kappa M^*, kappa M^* + lambda_0)
$

The disease fixed point is stable when the loop gains reinforce each other: microglial activation ($M$) suppresses T3, which increases microglial activation further (loop 2); kindling ($K$) increases $M$, which increases $E$, which prevents resolution of $M$ (loops 1+3). The Jacobian eigenvalues at the disease fixed point determine stability and timescale separation.

=== The "Combination Cliff" Prediction
<sec:combination-cliff>

The most consequential prediction of this model concerns the effect of multi-target interventions. Define the *effective loop gain* $G$ as the product of individual loop gains:

$
G = G_1 dot.op G_2 dot.op G_3 dot.op G_4
$

where each $G_i$ depends on the corresponding intervention: $G_1(u_upright("AK"))$, $G_2(u_upright("T3"))$, $G_3(u_upright("HDAC"))$, $G_4(u_upright("AI"))$. The disease attractor is stable when $G > 1$ and unstable when $G < 1$.

Each intervention reduces its corresponding loop gain: $G_i(u_i) = G_i(0) dot.op (1 - u_i slash u_(i,max))$ (linear dose-response for simplicity). The total intervention effect is *multiplicative*, not additive:

$
G(bold(u)) = product_(i=1)^4 G_i(0) dot.op (1 - u_i / u_(i,max))
$

This multiplicative structure predicts a *combination cliff*: if the disease attractor requires $G > 1$ for stability, then addressing each loop partially can push $G$ below 1 even though no single loop is fully broken. Suppose each untreated loop has gain $G_i(0) = 1.5$ (50% amplification per cycle). Four untreated loops give $G = 1.5^4 = 5.06$ (strongly stable attractor). Reducing each loop gain by 40% ($G_i arrow.r 0.6 dot.op G_i(0) = 0.9$):

$
G = 0.9^4 = 0.66 < 1 quad "(attractor collapses)"
$

while addressing only one loop ($G_1 arrow.r 0.9$, others unchanged):

$
G = 0.9 dot.op 1.5^3 = 3.04 quad "(attractor persists)"
$

#speculation(title: [Multiplicative Combination Effect in ME/CFS Treatment])[
*Certainty: 0.35.* The multi-loop attractor model predicts that combination treatments targeting $gt.eq$ 3 independent feedback loops should produce dramatically larger effect sizes than any single intervention---not through pharmacological synergy but through attractor destabilization. Specifically: (a) a factorial trial design (e.g., 2$times$2$times$2 for lithium $times$ T3 $times$ levetiracetam) should show a significant three-way interaction term, where the triple combination effect exceeds the sum of individual and pairwise effects; (b) there exists a critical number of loops ($N_upright("crit")$) below which interventions produce negligible benefit and above which they produce disproportionate improvement.

*Post-hoc fitting caveat:* The observation that single-agent ME/CFS trials have historically shown modest effects is consistent with the attractor model but cannot be cited as evidence FOR the model, since the model was constructed partly to explain this observation. Alternative explanations for single-agent trial failures---disease heterogeneity, underpowered trials, wrong drug targets, wrong patient selection---are equally or more parsimonious and are not excluded by the model.

*Falsification:* If a well-powered factorial combination trial targeting three mechanistically independent loops shows purely additive effects (no significant interaction terms), the multiplicative attractor model would be falsified in favor of a simpler additive damage model. If the trial shows no benefit from any arm, the underlying loop hypotheses (not just the integration framework) are weakened.
] <spec:combination-cliff>

=== PEM Threshold Recovery Model
<sec:pem-threshold-recovery>

The PEM kindling hypothesis (Section @sec:pem-kindling, Chapter @ch:neurological) proposed that each crash lowers the subsequent PEM threshold: $T(n) = T(0) slash alpha^n$. With anti-kindling therapy, a recovery term appears:

$
T(n+1) = frac(T(n), alpha) + beta dot.op (T_max - T(n))
$ <eq:pem-threshold-recovery>

where $beta$ is the anti-kindling recovery rate (e.g., from levetiracetam or lithium). At steady state ($T(n+1) = T(n) = T_upright("ss")$), rearranging gives:

$
T_upright("ss") = frac(beta dot.op T_max, 1 - 1 slash alpha + beta)
$

*Clinical interpretation:*

- For any $alpha > 1$ and $beta > 0$, $T_upright("ss") > 0$ --- anti-kindling therapy always prevents complete collapse.
- The steady-state threshold increases with $beta$ (stronger anti-kindling) and decreases with $alpha$ (more severe kindling per crash).
- If $beta = 0$ (no treatment): $T_upright("ss") = 0$ --- inevitable collapse to zero threshold (severe disease).
- The clinically meaningful question is whether $T_upright("ss")$ exceeds a functional threshold $T_upright("func")$ below which activities of daily living become impossible.

For the illustrative values from the original hypothesis ($alpha = 1.5$), anti-kindling alone ($beta = 0.3$) gives:

$
T_upright("ss") = frac(0.3 dot.op T_max, 1 - 0.667 + 0.3) = frac(0.3 dot.op T_max, 0.633) approx 0.47 dot.op T_max
$

With strict pacing reducing $alpha$ from 1.5 to 1.2 (fewer and milder crashes), the combined effect yields:

$
T_upright("ss") = frac(0.3 dot.op T_max, 1 - 0.833 + 0.3) = frac(0.3 dot.op T_max, 0.467) approx 0.64 dot.op T_max
$

This predicts stabilization at approximately 64% of maximum threshold---a substantial functional improvement that depends critically on both pacing (reducing $alpha$) and pharmacological anti-kindling (increasing $beta$). Pacing alone ($beta = 0$) gives $T_upright("ss") = 0$; anti-kindling alone ($alpha = 1.5$, $beta = 0.3$) gives $T_upright("ss") approx 0.47 dot.op T_max$. The combination achieves more than either alone because pacing reduces the denominator while anti-kindling increases the numerator.

=== T3-Neuroplasticity Phase Space
<sec:t3-plasticity-phase>

The T3-neuroplasticity interaction can be visualized as a 2D phase plane with coordinates ($T$, $Pi$), where $T$ is the effective brain T3 concentration and $Pi$ is the neuroplasticity capacity (0 = fully locked, 1 = fully plastic):

$
frac(d T, d t) &= sigma dot.op (T_0 - T) - rho dot.op (1 - Pi) dot.op T + u_upright("T3") \
frac(d Pi, d t) &= phi dot.op T slash T_0 dot.op (1 - Pi) - omega_0 dot.op Pi - omega_1 dot.op (1 - T slash T_0) dot.op Pi + u_upright("Li")
$ <eq:t3-plasticity>

where:

- $sigma$: natural T3 homeostasis rate
- $rho$: inflammation-mediated T3 suppression (stronger when plasticity is low, i.e., neuroinflammation is high)
- $phi$: T3-driven plasticity enhancement (via BDNF, LTP)
- $omega_0$: baseline plasticity decay rate (natural turnover of plastic synaptic connections)
- $omega_1$: additional plasticity loss from T3 deficiency (epigenetic locking, reduced BDNF)
- $u_upright("T3")$: exogenous T3 supplementation
- $u_upright("Li")$: lithium-driven plasticity enhancement (GSK-3$beta$ inhibition, BDNF, autophagy)

At the healthy equilibrium ($u = 0$), $Pi_0$ and $T^*$ are determined simultaneously from the coupled nullclines. Setting $d Pi / d t = 0$ at $T = T_0$ gives $Pi_0 = phi / (phi + omega_0)$, but substituting into $d T / d t = 0$ yields a residual $-rho (1 - Pi_0) T_0 eq.not 0$ since $Pi_0 < 1$. The true healthy fixed point therefore has $T^* < T_0$, shifted slightly below the nominal setpoint by the baseline plasticity-mediated suppression term. When $rho$ is small relative to $sigma$ (strong T3 homeostasis), $T^* approx T_0$ and $Pi_0 approx phi / (phi + omega_0)$ remains a good approximation. The disease equilibrium is at a substantially lower $(T^("disease"), Pi^("disease"))$ where low T3 and low plasticity mutually reinforce each other. A separatrix divides the two basins.

*Treatment vectors in phase space:*

- T3 supplementation: pushes the state rightward (toward normal $T$)
- Lithium: pushes the state upward (toward normal $Pi$)
- The separatrix determines the *minimum combination* of T3 and lithium needed to escape the disease attractor

The model predicts that: (1) T3 alone is insufficient if plasticity is too locked (the system slides back along the $T$-nullcline); (2) lithium alone is insufficient if T3 is too low to support BDNF-mediated plasticity; (3) the combination crosses the separatrix that neither alone can cross---the quintessential multi-loop effect formalized in Section @sec:combination-cliff.

#limitation(title: [Neuroplasticity Attractor Model: Parameter Uncertainty])[
All parameters in the neuroplasticity attractor model (@eq:neuroplasticity-attractor, @eq:pem-threshold-recovery, @eq:t3-plasticity) are illustrative. No ME/CFS-specific measurements of kindling rates, DIO2 suppression kinetics, microglial priming dynamics, or epigenetic consolidation timescales exist. The model's value lies in its qualitative predictions (multiplicative combination effects, threshold behaviors, separatrix crossing) rather than quantitative forecasts. Parameterization requires longitudinal multi-biomarker studies tracking kindling state (PEM threshold), T3 levels, inflammatory markers, and cognitive function simultaneously with sufficient temporal resolution to fit ODE dynamics.
]
