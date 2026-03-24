#import "../shared/environments.typ": *

= Integrated Multi-System Models
<ch:integrated-systems>

The preceding chapters developed models of individual physiological subsystems in isolation. ME/CFS, however, is fundamentally a multi-system disease: energy metabolism, immune function, neuroendocrine regulation, and autonomic control are coupled through shared substrates, signaling molecules, and feedback loops (@ch:integrative-models). This chapter formalizes the inter-system couplings and constructs an integrated model that captures emergent properties not present in any subsystem alone.

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

The total system comprises approximately 42 state variables governed by coupled ODEs. Note that several symbols are reused across subsystems ($S$ for sympathetic tone and sleep pressure; $V$ for vagal tone and viral load); the subscripted forms ($S_upright("sleep")$, $V_upright("vagal")$) are used in the integrated model to resolve ambiguity. While large, this system is modest compared to genome-scale metabolic models (thousands of variables) and computationally tractable with standard numerical solvers.

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
Delta V_upright("pool") = C_v dot.op Delta P_upright("grav") dot.op h_upright("column"), quad C_v^upright("hEDS") = kappa dot.op C_v^upright("normal"), quad kappa in [1.3, 2.0]
$ <eq:eds-vascular>

where $h_upright("column")$ is the hydrostatic column height and $kappa$ is the compliance amplification factor in hEDS. The increased pooling volume enters the orthostatic model (@eq:orthostatic) as a larger effective $Delta P_upright("grav")$, requiring greater compensatory sympathetic activation to maintain MAP. *The model predicts---uniquely through quantitative analysis---that hEDS patients have a narrower energy envelope* because the energy cost of maintaining upright posture is amplified: greater sympathetic drive means higher cardiac work, and the compensatory tachycardia consumes additional ATP. For $kappa = 1.5$, the model predicts a 10--20% reduction in energy available for activity during upright hours, independent of any mitochondrial or immune dysfunction. This provides a quantitative explanation for why hEDS patients with ME/CFS tend toward greater severity: the connective tissue deficit imposes a permanent energy tax on postural maintenance.

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
frac(d cal(A), d t) &= k_upright("HAT") dot.op frac([upright("AcCoA")], K_upright("AcCoA") + [upright("AcCoA")]) dot.op (1 - cal(A)) - k_upright("HDAC") dot.op cal(A) + k_upright("SIRT") dot.op frac([upright("NAD")^+], K_upright("SIRT") + [upright("NAD")^+])
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
- *Gut* (2 variables): unchanged
- *Epigenetic* (2 variables): $cal(M)$, $cal(A)$

The total system now comprises approximately 64 state variables. The additional 22 variables (relative to the initial 42-variable model) capture mast cell/histamine dynamics, coagulation, mitochondrial quality control, metabolic flexibility, neurovascular regulation, pain processing, epigenetic memory, and GI motility/SIBO dynamics. While the system is larger, its modular structure (each subsystem has $lt.eq 5$ coupling variables with others) maintains computational tractability: the Jacobian is sparse, enabling efficient numerical integration and bifurcation analysis.

== Bifurcation Analysis and Disease Subtypes
<sec:bifurcation-analysis>

The integrated model's nonlinear feedback structure implies the existence of multiple steady states (attractors) for certain parameter ranges. Bifurcation analysis---systematic exploration of how the number and character of attractors change as parameters vary---provides the most powerful application of the mathematical framework, yielding results that are fundamentally inaccessible without formal modeling.

=== Steady-State Multiplicity

The energy--immune coupling alone (@eq:energy-immune-coupling and @eq:immune-energy-feedback) produces bistability for a range of parameter values, as hypothesized in @sec:energy-immune-coupling. The extended model, with additional positive feedback loops (mast cell--energy, coagulation--oxygenation, epigenetic--parameter), is expected to produce richer attractor structure. Numerical continuation methods (e.g., AUTO, MATCONT) applied to the steady-state equations $bold(f)(bold(x)^*, bold(theta)) = bold(0)$ can map the complete bifurcation diagram.

*The central prediction of bifurcation analysis, impossible without the mathematical model*: the integrated system supports not one but multiple distinct disease attractors, each corresponding to a different ME/CFS phenotype:

+ *Immune-dominant attractor*: high cytokine levels, elevated exhausted T cells, near-normal mitochondrial parameters. Patients in this attractor present with immune-mediated symptoms (lymphadenopathy, sore throat, flu-like malaise) and respond preferentially to immunomodulatory therapy.
+ *Metabolic-dominant attractor*: low ATP, elevated lactate, impaired metabolic flexibility, near-normal immune markers. Patients present with exercise intolerance and PEM as primary complaints and respond to mitochondrial support.
+ *Neurovascular-dominant attractor*: impaired CBF autoregulation, BH₄ depletion, autonomic dysfunction, moderate energy and immune impairment. Patients present with cognitive dysfunction, orthostatic intolerance, and pain as primary symptoms.
+ *Severe/locked attractor*: all subsystems degraded, epigenetic consolidation complete. This attractor has the deepest basin of attraction and the highest intervention threshold for escape.

Each attractor has a characteristic biomarker signature derivable from the model's steady-state equations, enabling classification of individual patients into subtypes. *This subtyping is mechanistic, not phenomenological*: it derives from the mathematical structure of the coupled ODEs, not from statistical clustering of symptoms. The model predicts that patients within the same attractor basin should respond similarly to targeted interventions, providing a rational basis for treatment stratification.

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
