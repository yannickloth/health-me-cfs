#import "../shared/environments.typ": *

= Energy Metabolism Models
<ch:energy-metabolism-models>

This chapter translates the qualitative understanding of energy metabolism dysfunction in ME/CFS (@ch:energy-metabolism) into formal mathematical models. The models progress from individual metabolic pathways to an integrated energy production system, culminating in a quantitative framework for post-exertional malaise. All models use ordinary differential equations with Michaelis--Menten or Hill-type kinetics (@sec:ode-models); full parameter tables and derivations are in Appendix @app:mathematical-details.

#include "../figures/fig-energy-metabolism-model.typ"

== ATP Production Models
<sec:atp-production-models>

=== Glycolysis Kinetics
<sec:glycolysis-kinetics>

Glycolysis converts glucose to pyruvate through ten enzymatic steps. For modeling purposes, the pathway is reduced to three lumped reactions capturing the key regulatory points: hexokinase (HK), phosphofructokinase-1 (PFK-1), and pyruvate kinase (PK). Each enzyme is modeled with Michaelis--Menten kinetics modified by allosteric regulation:

$
v_(upright("PFK-1")) = V_(max, upright("PFK-1")) dot.op frac([upright("F6P")]^(n_H), K_(0.5)^(n_H) + [upright("F6P")]^(n_H)) dot.op frac(K_i^(upright("ATP")), K_i^(upright("ATP")) + [upright("ATP")]) dot.op frac([upright("AMP")], K_a^(upright("AMP")) + [upright("AMP")])
$ <eq:pfk1>

where $[upright("F6P")]$ is fructose-6-phosphate concentration, $n_H approx 1.5$--$4$ is the Hill coefficient reflecting cooperative kinetics, $K_i^(upright("ATP"))$ is the ATP inhibition constant, and $K_a^(upright("AMP"))$ is the AMP activation constant. PFK-1 is the committed step of glycolysis and the primary site of metabolic regulation: it is inhibited by ATP (the end product) and activated by AMP (a signal of energy deficit). This regulatory logic is central to ME/CFS modeling because it determines how rapidly glycolysis accelerates when oxidative phosphorylation is impaired.

The net glycolytic flux determines pyruvate production and, consequently, the substrate supply to the Krebs cycle. In healthy tissue, the glycolytic rate is tightly coupled to mitochondrial demand. In ME/CFS, evidence of increased lactate production at lower workloads @keller2024cpet suggests that this coupling is disrupted, with glycolysis operating at higher flux relative to oxidative capacity---a pattern consistent with reduced $V_(max)$ of downstream mitochondrial enzymes.

=== Krebs Cycle Model
<sec:krebs-cycle-model>

The Krebs cycle is modeled as a four-reaction lumped system capturing citrate synthase (CS), isocitrate dehydrogenase (IDH), $alpha$-ketoglutarate dehydrogenase ($alpha$-KGDH), and succinate dehydrogenase (SDH, also Complex II of the ETC). The overall cycle flux depends on acetyl-CoA supply, $"NAD"^"+"$ availability, and product inhibition:

$
J_(upright("Krebs")) = V_(max, upright("CS")) dot.op frac([upright("AcCoA")], K_m^(upright("AcCoA")) + [upright("AcCoA")]) dot.op frac([upright("OAA")], K_m^(upright("OAA")) + [upright("OAA")]) dot.op frac([upright("NAD")^+], [upright("NAD")^+] + [upright("NADH")])
$ <eq:krebs-flux>

where the last factor captures the $"NAD"^"+"$/NADH ratio dependence. Metabolomic studies in ME/CFS have identified accumulation of specific Krebs cycle intermediates (citrate, isocitrate) consistent with reduced flux through IDH and $alpha$-KGDH @Germain2020metabolic @Naviaux2016metabolomics. In the model, this is represented by reduced $V_(max)$ values for these enzymes, which can arise from oxidative damage to iron--sulfur clusters, substrate competition from inflammatory metabolites, or epigenetic downregulation of enzyme expression.

=== Electron Transport Chain Model
<sec:etc-model>

The electron transport chain is modeled as a four-complex proton pump driving ATP synthase. The rate of proton pumping by Complex I is:

$
J_(upright("CI")) = V_(max, upright("CI")) dot.op frac([upright("NADH")], K_m^(upright("NADH")) + [upright("NADH")]) dot.op frac([upright("UQ")], K_m^(upright("UQ")) + [upright("UQ")]) dot.op (1 - frac(Delta Psi, Delta Psi_(max)))
$ <eq:complex-i>

where $[upright("UQ")]$ is the ubiquinone (oxidized CoQ10) concentration, $Delta Psi$ is the mitochondrial membrane potential, and the last factor captures thermodynamic backpressure: as the proton gradient builds, further pumping becomes energetically unfavorable. The membrane potential evolves according to:

$
C_m frac(d Delta Psi, d t) = sum_(k in {upright("CI,CIII,CIV")}) n_k J_k - J_(upright("ATP synthase")) - J_(upright("leak"))
$ <eq:membrane-potential>

where $C_m$ is the membrane capacitance, $n_k$ is the number of protons pumped per electron pair by complex $k$, and $J_(upright("leak"))$ represents proton leak across the inner mitochondrial membrane. ATP synthase flux follows:

$
J_(upright("ATP synthase")) = V_(max, upright("F")_1 upright("F")_0) dot.op frac([upright("ADP")][upright("P")_i], K_m^(upright("ADP")) K_m^(upright("P")_i) + [upright("ADP")] K_m^(upright("P")_i) + [upright("P")_i] K_m^(upright("ADP")) + [upright("ADP")][upright("P")_i]) dot.op frac(Delta Psi - Delta Psi_(upright("threshold")), Delta Psi)
$ <eq:atp-synthase>

The threshold term ensures that ATP synthesis requires a minimum proton-motive force ($Delta Psi_(upright("threshold")) approx 100$--$120$ mV). This is significant for ME/CFS because any reduction in ETC complex activity lowers $Delta Psi$, and once $Delta Psi$ approaches the threshold, ATP synthesis drops precipitously---a nonlinear "cliff" effect that may explain the disproportionate symptom severity relative to modest biochemical abnormalities.

=== Integrated Energy Production
<sec:integrated-energy>

The complete energy production model couples glycolysis, the Krebs cycle, and the ETC through shared metabolite pools. The central state variables are:

- $[upright("ATP")]$, $[upright("ADP")]$, $[upright("AMP")]$ (adenine nucleotide pool, conserved: $[upright("ATP")] + [upright("ADP")] + [upright("AMP")] = A_(upright("total"))$)
- $[upright("NAD")^+]$, $[upright("NADH")]$ (nicotinamide nucleotide pool, conserved)
- $[upright("Pyruvate")]$, $[upright("AcCoA")]$, $[upright("OAA")]$ (carbon intermediates)
- $Delta Psi$ (mitochondrial membrane potential)

The ATP balance equation integrates all production and consumption:

$
frac(d[upright("ATP")], d t) = 2 J_(upright("glycolysis")) + J_(upright("ATP synthase")) - J_(upright("demand"))(t)
$ <eq:atp-balance>

where $J_(upright("demand"))(t)$ represents cellular ATP consumption, which varies with activity level. The factor of 2 reflects the net ATP yield per glucose through glycolysis (after subtracting the two ATP invested in the preparatory phase).

== Mitochondrial Dysfunction Models
<sec:mitochondrial-dysfunction-models>

=== Reactive Oxygen Species Production and Damage
<sec:ros-model>

Reactive oxygen species (ROS) are an unavoidable byproduct of electron transport. Superoxide ($upright("O")_2^(bullet-)$) is generated primarily at Complexes I and III when electrons "leak" to molecular oxygen instead of following the normal transfer chain. The ROS production rate increases when electron flow is impeded:

$
J_(upright("ROS")) = k_(upright("ROS")) dot.op [upright("NADH")] dot.op (1 - frac(J_(upright("CI")), J_(upright("CI,max")))) + k_(upright("ROS,CIII")) dot.op [upright("UQH")_2] dot.op (1 - frac(J_(upright("CIII")), J_(upright("CIII,max"))))
$ <eq:ros-production>

where the terms $(1 - J slash J_(max))$ capture the principle that reduced electron flow (due to impaired complexes) leads to increased electron residence time on carriers, increasing the probability of electron leak to oxygen. This creates a positive feedback loop: ETC damage $->$ reduced flux $->$ increased ROS $->$ further ETC damage. The ROS balance includes antioxidant scavenging:

$
frac(d[upright("ROS")], d t) = J_(upright("ROS")) - k_(upright("SOD")) dot.op [upright("SOD")] dot.op [upright("ROS")] - k_(upright("GPx")) dot.op [upright("GPx")] dot.op [upright("ROS")]
$ <eq:ros-balance>

where SOD (superoxide dismutase) and GPx (glutathione peroxidase) are the primary antioxidant enzymes. Oxidative damage accumulates as a function of cumulative ROS exposure, reducing enzyme activities over time and establishing the vicious cycle described qualitatively in @ch:energy-metabolism.

=== Impaired Energy Production in ME/CFS
<sec:impaired-energy>

The ME/CFS disease state is modeled by modifying healthy-state parameters at specific points supported by experimental evidence:

+ *Reduced Complex I activity*: $V_(max, upright("CI"))^(upright("ME/CFS")) = alpha_(upright("CI")) dot.op V_(max, upright("CI"))^(upright("healthy"))$ with $alpha_(upright("CI")) in [0.5, 0.8]$, consistent with findings of impaired Complex I function in ME/CFS lymphocytes @Tomas2017
+ *Increased proton leak*: $J_(upright("leak"))^(upright("ME/CFS")) = beta dot.op J_(upright("leak"))^(upright("healthy"))$ with $beta in [1.5, 3.0]$, reducing the fraction of proton-motive force available for ATP synthesis
+ *Reduced $"NAD"^"+"$ pool*: $[upright("NAD")^+]_(upright("total"))^(upright("ME/CFS")) = gamma dot.op [upright("NAD")^+]_(upright("total"))^(upright("healthy"))$ with $gamma in [0.6, 0.9]$, consistent with abnormal NAD#super[+] metabolism documented in ME/CFS white blood cells @heng2025mecfs (note: Heng 2025 found NAD#super[+] _elevated_ in PBMCs, suggesting substrate backup; the $gamma < 1$ assumption applies to energy-intensive tissues where depletion is predicted but not yet measured)
+ *Elevated baseline ROS*: $[upright("ROS")]_0^(upright("ME/CFS")) > [upright("ROS")]_0^(upright("healthy"))$, consistent with oxidative stress biomarkers

The model predicts that these parameter changes produce a new steady state with reduced ATP production, elevated lactate, and increased sensitivity to metabolic perturbation---qualitatively matching the ME/CFS metabolic phenotype described by Naviaux @Naviaux2016metabolomics and Germain et al. @Germain2020metabolic.

#limitation(title: [Parameter Uncertainty in Energy Models])[
The impairment factors ($alpha_(upright("CI"))$, $beta$, $gamma$) are constrained by in vitro studies on isolated cells, primarily lymphocytes and muscle biopsy samples. Whether these values accurately represent in vivo mitochondrial function across tissues remains uncertain. Patient-level variation in these parameters likely contributes to the clinical heterogeneity of ME/CFS.
]

== Healthy Exercise Response Dynamics
<sec:healthy-exercise-response>

Before modeling the pathological response to exertion in ME/CFS, it is essential to model the healthy response. This serves two purposes. First, it provides *face validation* of the model: the same equations that will be used to describe ME/CFS pathophysiology must, with healthy parameters ($alpha_(upright("CI")) = 1.0$, $beta = 1.0$, $gamma = 1.0$), reproduce the well-characterized dynamics of normal exercise physiology---a literature far more quantitatively constrained than ME/CFS. If the model fails this baseline test, it cannot be trusted for disease modeling. Second, it establishes the precise *branch point* where healthy and pathological responses diverge, clarifying which parameter changes convert a physiological process into a disease mechanism.

=== Healthy Exertion--Recovery Cycle
<sec:healthy-exertion-recovery>

With healthy parameters, the model predicts a three-phase response to a moderate exertion pulse $phi(t)$ (@eq:demand-exertion). The key quantity is the _metabolic headroom ratio_:

$
R_(upright("headroom")) = frac(J_(upright("production,max")) - J_(upright("demand,peak")), J_(upright("production,max")))
$ <eq:headroom>

In healthy individuals performing moderate exercise, $R_(upright("headroom")) approx 0.3$--$0.5$: the ETC has substantial reserve capacity above peak demand. This headroom determines the entire downstream response.

*Phase 1: Exertion (minutes to hours).* ATP demand rises but remains within production capacity ($R_(upright("headroom")) > 0$). The ATP balance (@eq:atp-balance) shows a transient dip---typically $<10%$ from baseline---that is rapidly compensated by increased ETC flux and glycolytic upregulation. Lactate rises modestly (@eq:lactate-dynamics) due to the glycolytic contribution but remains below the lactate threshold for moderate exercise. ROS production increases transiently (@eq:ros-production) because ETC flux increases, but the increase is proportional and remains within antioxidant buffering capacity: $[upright("ROS")](t) < upright("ROS")_(upright("threshold"))$ throughout, so the damage indicator function in @eq:pem-delay evaluates to zero. *No cumulative oxidative damage accumulates.*

*Phase 2: Immediate recovery (0--2 hours post-exertion).* As demand returns to baseline, lactate is cleared via the Cori cycle ($v_(upright("clear"))$ term in @eq:lactate-dynamics) with a half-life of approximately 15--30 minutes @Brooks2018lactate. ATP returns to baseline within minutes. ROS returns to steady-state levels as ETC flux normalizes. The metabolic perturbation resolves completely within 1--2 hours, consistent with the rapid metabolic recovery observed in healthy exercise studies.

*Phase 3: Adaptation (6--96 hours post-exertion).* The transient metabolic stress, although fully resolved at the whole-cell level, has triggered signaling cascades that operate on slower timescales. AMPK, activated during the ATP dip, initiates PGC-1$alpha$-mediated mitochondrial biogenesis (@eq:biogenesis). Because the healthy cell has adequate $"NAD"^"+"$ ($gamma = 1.0$), the SIRT1 pathway is fully functional, and the biogenesis rate $J_(upright("biogenesis"))$ is high. Simultaneously, the brief ROS transient---below the damage threshold but above resting levels---acts as a hormetic signal, upregulating antioxidant enzyme expression (a well-characterized phenomenon in exercise physiology). The net result over the subsequent 48--96 hours is a _supercompensation_: healthy mitochondrial mass $M_h$ overshoots its pre-exercise value.

=== Supercompensation: The Healthy Adaptation Response
<sec:supercompensation>

Supercompensation---the phenomenon whereby the system recovers to a state _better_ than before the perturbation---is the fundamental mechanism of exercise adaptation. In the model, it emerges naturally from the mitochondrial dynamics equations (@eq:mito-dynamics and @eq:biogenesis) when run with healthy parameters.

After a single exertion bout, the net change in healthy mitochondrial mass over the adaptation window $tau_(upright("adapt"))$ is:

$
Delta M_h^(upright("net")) = integral_(t_(upright("ex")))^(t_(upright("ex")) + tau_(upright("adapt"))) (J_(upright("biogenesis"))(s) - k_(upright("fission")) dot.op M_h(s) dot.op r_(upright("damage"))([upright("ROS")](s))) d s
$ <eq:supercompensation>

In healthy individuals, $Delta M_h^(upright("net")) > 0$ because: (1) $J_(upright("biogenesis"))$ is elevated post-exercise (AMPK-driven, with adequate $"NAD"^"+"$); (2) the damage term $r_(upright("damage"))([upright("ROS")])$ is low (ROS remained sub-threshold during exertion); and (3) mitophagy efficiently removes any damaged mitochondria (adequate ATP for autophagy, @eq:mitophagy). The supercompensation window peaks at approximately 48--96 hours post-exertion, consistent with the well-established training adaptation timescale @Hood2009biogenesis @Coffey2017adaptation.

Training adaptation is then modeled as _iterated supercompensation_. Repeated exertion bouts spaced within the supercompensation window produce monotonically increasing $M_h$ (and therefore $J_(upright("production,max"))$):

$
M_h^((n+1)) = M_h^((n)) + Delta M_h^(upright("net"))(n) quad upright("when ") t_(n+1) - t_n in [tau_(min), tau_(max)]
$ <eq:training-adaptation>

where $tau_(min) approx 24$ hours (minimum recovery) and $tau_(max) approx 96$ hours (supercompensation window closure). This is the formal basis of the principle that training requires both adequate stimulus _and_ adequate recovery---a principle that the model will later show is catastrophically violated in ME/CFS.

=== Delayed-Onset Muscle Soreness (DOMS): Healthy Delayed Symptoms
<sec:doms-model>

Healthy individuals also experience delayed symptoms after exertion: DOMS peaks 24--72 hours after unaccustomed exercise @Clarkson2002DOMS. This phenomenon shares the delayed timescale of PEM but differs mechanistically in ways that illuminate why PEM is pathological.

DOMS is driven by mechanical micro-damage from eccentric contractions, not by systemic metabolic crisis. The local damage triggers an inflammatory repair cascade:

$
C_(upright("local"))(t) = C_(upright("peak")) dot.op frac((t - t_(upright("ex")))^a dot.op e^(-b(t - t_(upright("ex")))), t_(upright("peak"))^a dot.op e^(-b dot.op t_(upright("peak"))))
$ <eq:doms-inflammation>

where $C_(upright("local"))$ is local cytokine concentration, $t_(upright("peak")) approx 24$--$48$ hours, and parameters $a$, $b$ shape the rise-and-fall profile. Neutrophils infiltrate within hours, followed by macrophage-mediated debris clearance and satellite cell activation peaking at 48--72 hours @Peake2017muscle. The process resolves completely within 5--7 days.

Three features distinguish DOMS from PEM:

+ *Local, not systemic*: DOMS inflammation is confined to the exercised muscle. The systemic cytokine elevation is minimal and self-limiting. In PEM, the inflammatory response is systemic (@ch:immune-system-models).
+ *Self-limiting, no positive feedback*: The DOMS inflammatory cascade follows a programmed rise-and-fall (@eq:doms-inflammation) without the ROS $->$ ETC damage $->$ more ROS positive feedback loop that sustains PEM. The repair machinery has full access to ATP and $"NAD"^"+"$.
+ *Repeated bout effect*: Subsequent identical exertion produces progressively less DOMS @Clarkson2002DOMS, indicating successful adaptation. In ME/CFS, repeated exertion produces equal or _worse_ responses (the energy ratchet, @sec:ratchet-model).

#limitation(title: [DOMS Model Scope])[
The DOMS model here is deliberately simplified, capturing only the inflammatory repair timeline to contrast with PEM. A complete model of eccentric exercise-induced muscle damage would require mechanical tissue damage terms, satellite cell proliferation kinetics, and extracellular matrix remodeling---beyond the scope of this metabolic framework.
]

=== The Branch Point: Where Health Becomes Disease
<sec:branch-point>

The healthy and pathological exercise responses diverge at a single identifiable point: whether exertion-induced ROS exceeds the antioxidant buffering threshold $upright("ROS")_(upright("threshold"))$. This threshold determines whether the indicator function in @eq:pem-delay activates:

- *Below threshold* ($R_(upright("headroom")) >> 0$, healthy): ROS transient is buffered $->$ no cumulative damage $->$ biogenesis dominates $->$ supercompensation $->$ adaptation
- *Above threshold* ($R_(upright("headroom")) lt.eq 0$, ME/CFS): ROS exceeds buffering $->$ cumulative ETC damage $->$ further reduced capacity $->$ impaired repair (ATP-dependent mitophagy fails) $->$ net mitochondrial loss $->$ *anti-supercompensation*

This branch point can be expressed as a critical headroom ratio $R_(upright("crit"))$ below which the damage indicator activates:

$
R_(upright("headroom")) > R_(upright("crit")) => Delta M_h^(upright("net")) > 0 quad upright("(adaptation)"), quad R_(upright("headroom")) < R_(upright("crit")) => Delta M_h^(upright("net")) < 0 quad upright("(damage)")
$ <eq:branch-point>

*This constitutes a first validation of the model*: the same equations that describe ME/CFS pathophysiology, when parameterized with healthy values, reproduce the well-characterized temporal dynamics of normal exercise physiology---immediate metabolic recovery in minutes, DOMS peaking at 24--72 hours, and supercompensation at 48--96 hours. These timescales are not fitted; they emerge from the interaction of metabolic kinetics (fast), inflammatory cascades (intermediate), and biogenesis (slow) that the model captures through its multi-timescale ODE structure.

Furthermore, the branch-point analysis provides the formal mechanistic basis for the clinical observation that graded exercise therapy (GET) harms ME/CFS patients @Geraghty2019GET: the same exertion stimulus that produces $Delta M_h^(upright("net")) > 0$ in health (training effect) produces $Delta M_h^(upright("net")) < 0$ in ME/CFS (progressive damage). The intervention is not merely ineffective---it is _mathematically predicted_ to worsen the disease, because it repeatedly applies a stimulus that pushes the system further from recovery rather than toward it.

#hypothesis(title: [Supercompensation Failure as the Mechanistic Basis of Exercise Intolerance])[
The defining feature of ME/CFS exercise intolerance is not the immediate metabolic response to exertion (which is qualitatively similar to healthy fatigue) but the failure of the post-exertional adaptation process: $Delta M_h^(upright("net")) < 0$ after exertion instead of $Delta M_h^(upright("net")) > 0$. This hypothesis predicts that: (1) mitochondrial DNA copy number decreases in ME/CFS patients 72 hours after standardized exercise but increases in matched healthy controls; (2) PGC-1$alpha$ target gene expression fails to upregulate post-exercise in ME/CFS despite adequate AMPK activation (indicating a SIRT1/$"NAD"^"+"$ bottleneck); (3) interventions that restore $"NAD"^"+"$ pools (e.g., NR supplementation) should partially restore the supercompensation response before improving exercise tolerance directly; and (4) the repeated bout effect (DOMS attenuation with training) is absent or inverted in ME/CFS patients.

*Certainty*: 0.50. The exercise physiology framework is well-established, and the mitochondrial dynamics model is internally consistent. The predictions are specific and testable by combining two-day CPET with pre/post mtDNA quantification and PGC-1$alpha$ gene expression profiling. However, direct measurement of in vivo mitochondrial biogenesis rates post-exercise in ME/CFS has not been performed.
] <hyp:supercompensation-failure>

== Post-Exertional Malaise Modeling
<sec:pem-modeling>

=== Exertion-Induced Metabolic Crisis
<sec:exertion-crisis>

Post-exertional malaise (PEM) is the hallmark symptom of ME/CFS: a disproportionate and delayed worsening of symptoms following physical, cognitive, or emotional exertion. The energy metabolism model provides a mechanistic framework for PEM. During exertion, ATP demand increases:

$
J_(upright("demand"))(t) = J_(upright("basal")) + J_(upright("exertion")) dot.op phi(t)
$ <eq:demand-exertion>

where $phi(t)$ is the exertion profile (e.g., a pulse of duration $tau_(upright("ex"))$). In healthy individuals, the ETC increases flux to match demand, maintaining $[upright("ATP")]$ within a narrow physiological range---the Phase 1 response described in @sec:healthy-exertion-recovery, where $R_(upright("headroom")) > 0$ (@eq:headroom) ensures that production capacity exceeds demand. In the ME/CFS model, the reduced $V_(max)$ values limit the maximum achievable flux, causing $[upright("ATP")]$ to fall when demand exceeds the impaired capacity ($R_(upright("headroom")) lt.eq 0$):

$
[upright("ATP")](t) = [upright("ATP")]_0 - integral_0^t (J_(upright("demand"))(s) - J_(upright("production"))(s)) d s quad upright("when ") J_(upright("demand")) > J_(upright("production,max"))
$ <eq:atp-depletion>

The critical difference in ME/CFS is not the depletion itself but the recovery. Two-day CPET studies demonstrate that ME/CFS patients show reduced peak oxygen consumption on day 2 compared to day 1, whereas healthy controls maintain or improve performance @keller2024cpet ---the supercompensation response formalized in @sec:supercompensation. This recovery failure is modeled through the ROS feedback loop: exertion-induced ATP depletion $->$ compensatory increase in ETC flux $->$ increased ROS production $->$ further ETC damage $->$ reduced recovery capacity. In terms of the branch-point analysis (@sec:branch-point), ME/CFS patients operate below $R_(upright("crit"))$, converting what would be an adaptive stimulus into a damaging one ($Delta M_h^(upright("net")) < 0$, @eq:supercompensation).

=== Temporal Evolution of PEM
<sec:pem-temporal>

The characteristic delay of PEM (typically 12--72 hours post-exertion) is explained in the model by the timescale of secondary damage processes. The immediate metabolic perturbation (ATP depletion, lactate accumulation) resolves within hours as demand returns to baseline. However, the ROS-mediated damage and inflammatory response triggered by the metabolic crisis evolve on slower timescales:

$
D(t) = D_0 + k_(upright("damage")) integral_0^t [upright("ROS")](s) dot.op bb(1)_([upright("ROS")](s) > upright("ROS")_(upright("threshold"))) d s
$ <eq:pem-delay>

where $D(t)$ is cumulative oxidative damage, $k_(upright("damage"))$ is the damage rate constant, and the indicator function $bb(1)$ ensures that damage accumulates only when ROS exceeds the antioxidant buffering capacity. The PEM symptom intensity is modeled as a function of $D(t)$ with a delay reflecting the time required for molecular damage to manifest as functional impairment. This delay is consistent with the inflammatory mediator kinetics: cytokine production peaks 6--24 hours after tissue damage, and downstream effects (edema, sensitization) follow with further delay.

=== Energy Envelope Model
<sec:energy-envelope-model>

The energy envelope concept @jason2012energy @jason2009energy is formalized as a constraint on cumulative daily energy expenditure. Define the available energy budget $E_(upright("budget"))$ as the maximum sustainable daily ATP turnover without triggering PEM:

$
E_(upright("budget")) = integral_0^(24 upright("h")) J_(upright("production,max"))(t) d t - E_(upright("basal")) - E_(upright("repair"))
$ <eq:energy-envelope>

where $E_(upright("basal"))$ is the minimum energy required for vital functions and $E_(upright("repair"))$ is the energy allocated to ongoing cellular repair. The energy envelope for activity is $E_(upright("budget"))$; exceeding it triggers the PEM cascade. In ME/CFS, all three terms are unfavorable: $J_(upright("production,max"))$ is reduced, $E_(upright("basal"))$ may be increased (due to chronic immune activation), and $E_(upright("repair"))$ is elevated (due to ongoing oxidative damage). Pacing strategies aim to keep cumulative daily expenditure below $E_(upright("budget"))$, which the model predicts will prevent PEM episodes and, over time, may allow partial recovery of mitochondrial function by reducing ROS-mediated damage.

#hypothesis(title: [ATP Threshold Model of PEM])[
Post-exertional malaise occurs when cellular ATP concentration falls below a critical threshold $[upright("ATP")]_(upright("crit"))$ that triggers a coordinated cellular stress response, including activation of AMPK signaling, upregulation of inflammatory pathways, and engagement of the cell danger response @Naviaux2014cdr. The delay in PEM onset reflects the time required for these secondary processes to produce symptomatic effects. This model predicts that: (1) PEM severity correlates with the depth and duration of ATP depletion below threshold; (2) interventions that raise $[upright("ATP")]_(upright("crit"))$ (e.g., metabolic substrate provision) would reduce PEM susceptibility; and (3) the threshold is individually variable, explaining inter-patient differences in exercise tolerance.

*Certainty*: 0.45. The ATP depletion mechanism is well-supported by CPET data @keller2024cpet, but the specific threshold model and its connection to the cell danger response remain to be validated by direct measurement of intracellular ATP during and after exertion.
]

== Response to Metabolic Interventions
<sec:metabolic-intervention-models>

The energy metabolism model can simulate the effects of interventions targeting specific parameters. Three examples illustrate the approach.

=== CoQ10 Supplementation

Coenzyme Q10 (ubiquinone) functions as an electron carrier between Complexes I/II and Complex III. Supplementation increases the ubiquinone pool $[upright("UQ")]_(upright("total"))$, which the model predicts will increase Complex I flux (@eq:complex-i) and reduce ROS production at Complex III. The predicted effect is modest in the model---a 5--15% increase in maximal ATP production rate for the parameter ranges consistent with typical supplementation doses---which aligns with the small but statistically significant improvements reported in clinical trials @CastroMarrero2021CoQ10.

=== $"NAD"^"+"$ Precursor Supplementation

Supplementation with nicotinamide riboside or nicotinamide mononucleotide increases the total $"NAD"^"+"$ pool, modeled by increasing $[upright("NAD")^+]_(upright("total"))$. The model predicts that this increases Krebs cycle flux (through the $"NAD"^"+"$/NADH ratio term in @eq:krebs-flux) and shifts the ROS balance favorably. The predicted magnitude of benefit depends on the degree of baseline $"NAD"^"+"$ depletion ($gamma$ parameter), suggesting that patients with lower baseline $"NAD"^"+"$ levels would show greater response — a testable prediction for treatment stratification. No ME/CFS-specific NAD#super[+] precursor RCT has been published (as of 2026); the closest evidence is Schreiber 2025 ($n = 900$, nicotinamide 1000 mg/day in post-COVID, significant symptom reduction).

=== Prediction Limitations

#limitation(title: [Intervention Model Scope])[
The metabolic intervention models assume that the primary effect of supplementation is on the targeted metabolite pool, neglecting absorption, distribution, and metabolism of the supplement itself. Pharmacokinetic modeling of supplement bioavailability would be required for quantitative dose--response predictions. Furthermore, the models do not account for potential off-target effects or interactions between supplements.
]

== Lactate Kinetics and Metabolic Flexibility
<sec:lactate-kinetics>

Lactate is not merely a metabolic waste product but a signaling molecule and alternative fuel substrate. In ME/CFS, early lactate accumulation at low workloads---documented by reduced anaerobic threshold on CPET @keller2024cpet ---reflects impaired metabolic flexibility: the inability to match fuel oxidation to demand. A lactate kinetics model captures this dysfunction explicitly.

=== Lactate Production and Clearance

Lactate ($L$) is produced from pyruvate by lactate dehydrogenase (LDH) when pyruvate supply exceeds mitochondrial oxidative capacity, and cleared by hepatic gluconeogenesis (Cori cycle) and oxidation in heart and slow-twitch muscle:

$
frac(d[L], d t) = v_(upright("LDH")) dot.op frac([upright("Pyruvate")], K_(upright("LDH")) + [upright("Pyruvate")]) dot.op frac([upright("NADH")], K_(upright("NADH,LDH")) + [upright("NADH")]) - v_(upright("clear")) dot.op frac([L], K_(upright("clear")) + [L])
$ <eq:lactate-dynamics>

where $v_(upright("LDH"))$ is the maximal LDH forward rate and $v_(upright("clear"))$ is the maximal lactate clearance rate. The NADH dependence ensures that LDH activity increases when the mitochondrial NADH/$"NAD"^"+"$ ratio is elevated---precisely the condition produced by impaired ETC function. In ME/CFS, the model predicts elevated steady-state lactate through two mechanisms: increased production (high cytosolic NADH due to ETC bottleneck) and potentially reduced clearance (hepatic energy deficit limiting gluconeogenesis).

=== Metabolic Flexibility Model

Metabolic flexibility---the capacity to switch between glucose and fatty acid oxidation according to substrate availability and demand---is governed by the Randle cycle (glucose--fatty acid cycle). The fuel selection ratio $Phi$ determines the fraction of ATP derived from fatty acid $beta$-oxidation versus glycolysis:

$
Phi = frac(J_(beta"-ox"), J_(beta"-ox") + J_(upright("glycolysis"))) = frac(v_(upright("CPT-I")) dot.op [upright("Acyl-CoA")] slash (K_(upright("CPT")) + [upright("Acyl-CoA")]), v_(upright("CPT-I")) dot.op [upright("Acyl-CoA")] slash (K_(upright("CPT")) + [upright("Acyl-CoA")]) + J_(upright("glycolysis")))
$ <eq:fuel-selection>

where CPT-I (carnitine palmitoyltransferase I) is the rate-limiting enzyme for fatty acid entry into mitochondria, inhibited by malonyl-CoA (an intermediate of fatty acid synthesis that signals energy surplus). The respiratory exchange ratio (RER), measurable by CPET, is a direct readout of $Phi$: RER $= 1.0$ indicates pure carbohydrate oxidation ($Phi = 0$), RER $= 0.7$ indicates pure fat oxidation ($Phi = 1$).

In ME/CFS, impaired metabolic flexibility manifests as: (1) higher resting RER (reduced fat oxidation at rest), (2) earlier transition to RER $> 1.0$ during exercise (premature reliance on anaerobic glycolysis), and (3) slower RER recovery post-exercise. The model attributes this inflexibility to reduced CPT-I activity (limiting fat entry into mitochondria), $"NAD"^"+"$ depletion (reducing $beta$-oxidation flux), and impaired AMPK signaling (the master metabolic sensor that normally promotes fat oxidation during energy deficit).

Lactate itself feeds back on metabolism through the lactate receptor GPR81 (hydroxycarboxylic acid receptor 1), which inhibits lipolysis and reduces free fatty acid availability. This creates a secondary positive feedback loop---*a result visible only through the mathematical model*: impaired oxidative capacity $->$ lactate accumulation $->$ GPR81 activation $->$ reduced fatty acid supply $->$ further reliance on glycolysis $->$ more lactate. Verbal reasoning identifies each link individually but cannot determine whether the loop is self-sustaining or self-limiting; the ODE model resolves this by computing the loop gain, which exceeds unity when $alpha_(upright("CI")) < 0.65$, predicting a bistable metabolic state.

$
[upright("FFA")]_(upright("available")) = [upright("FFA")]_(upright("basal")) dot.op frac(K_(upright("GPR81")), K_(upright("GPR81")) + [L])
$ <eq:gpr81-feedback>

=== Carnitine Dynamics

Free carnitine ($upright("Car")_f$) is required for CPT-I-mediated fatty acid transport. Acylcarnitine accumulation---documented in ME/CFS metabolomics @Germain2020metabolic ---sequesters the carnitine pool:

$
[upright("Car")_f] + [upright("Acyl-Car")] = upright("Car")_(upright("total")), quad frac(d[upright("Acyl-Car")], d t) = J_(beta"-ox,entry") - J_(beta"-ox,completion")
$ <eq:carnitine-balance>

When $beta$-oxidation completion is impaired (due to $"NAD"^"+"$ depletion or CoA sequestration), acylcarnitines accumulate, depleting free carnitine and further limiting fat oxidation. This provides a mechanistic rationale for L-carnitine supplementation and predicts---*uniquely from the model*---that its efficacy depends on whether the primary bottleneck is carnitine availability (responsive) or downstream $beta$-oxidation capacity (less responsive). Sensitivity analysis distinguishes these regimes: when $partial J_(beta"-ox") slash partial [upright("Car")_f] >> partial J_(beta"-ox") slash partial v_(beta"-ox")$, carnitine supplementation is predicted to help; when the inequality reverses, $"NAD"^"+"$ repletion is the higher-priority intervention.

== Mitochondrial Dynamics and Quality Control
<sec:mitochondrial-dynamics>

The preceding models treat mitochondria as a homogeneous enzyme pool. In reality, individual mitochondria vary in functional capacity, and cellular energy production depends on the balance between healthy and damaged organelles maintained by quality control processes: fission (division), fusion (merging), mitophagy (selective removal of damaged mitochondria), and biogenesis (creation of new mitochondria).

=== Fission--Fusion Balance

Mitochondrial morphology is dynamically regulated. Fusion (mediated by mitofusins MFN1/2 and OPA1) creates interconnected networks that share metabolites and buffer local damage. Fission (mediated by DRP1) segregates damaged portions for removal by mitophagy. The model tracks healthy ($M_h$) and damaged ($M_d$) mitochondrial mass:

$
frac(d M_h, d t) &= J_(upright("biogenesis")) + k_(upright("fusion")) dot.op M_h dot.op M_d dot.op p_(upright("rescue")) - k_(upright("fission")) dot.op M_h dot.op r_(upright("damage"))([upright("ROS")]) - d_h M_h \
frac(d M_d, d t) &= k_(upright("fission")) dot.op M_h dot.op r_(upright("damage"))([upright("ROS")]) + k_(upright("fusion")) dot.op M_h dot.op M_d dot.op (1 - p_(upright("rescue"))) - J_(upright("mitophagy")) - d_d M_d
$ <eq:mito-dynamics>

where $J_(upright("biogenesis"))$ is the rate of new mitochondrial production (regulated by PGC-1$alpha$, itself activated by AMPK and SIRT1), $p_(upright("rescue"))$ is the probability that fusion with a healthy mitochondrion rescues a damaged one, $r_(upright("damage"))([upright("ROS")])$ is the ROS-dependent damage rate, and $J_(upright("mitophagy"))$ is the rate of selective removal of damaged mitochondria via the PINK1/Parkin pathway.

=== Mitophagy and PINK1/Parkin Pathway

Mitophagy rate depends on both the signal (PINK1 accumulation on depolarized mitochondria) and the cellular capacity for autophagy:

$
J_(upright("mitophagy")) = v_(upright("mitophagy")) dot.op frac(M_d, K_(upright("PINK1")) + M_d) dot.op frac([upright("ATP")], K_(upright("ATP,autophagy")) + [upright("ATP")])
$ <eq:mitophagy>

The ATP dependence is critical: autophagy is an energy-requiring process. When ATP is depleted (as in ME/CFS), mitophagy is impaired, allowing damaged mitochondria to accumulate despite adequate PINK1 signaling. This creates a quality control failure---*an insight that emerges only from the coupled model*: the cell cannot remove its malfunctioning organelles because the energy required for cleanup is precisely what the malfunctioning organelles fail to produce. Verbal reasoning identifies the paradox qualitatively; the model quantifies the threshold $[upright("ATP")]_(upright("crit,autophagy"))$ below which quality control collapses, producing a sharp transition from manageable damage to runaway accumulation.

=== Biogenesis and PGC-1$alpha$ Regulation

Mitochondrial biogenesis is regulated by PGC-1$alpha$, which is activated by AMPK (sensing energy deficit) and SIRT1 (sensing $"NAD"^"+"$ availability):

$
J_(upright("biogenesis")) = v_(upright("bio")) dot.op frac([upright("AMPK")_a], K_(upright("AMPK")) + [upright("AMPK")_a]) dot.op frac([upright("NAD")^+], K_(upright("SIRT1")) + [upright("NAD")^+])
$ <eq:biogenesis>

where $[upright("AMPK")_a]$ is activated AMPK (which increases when the AMP/ATP ratio rises). In ME/CFS, biogenesis faces a paradox: energy deficit activates AMPK (promoting biogenesis) but depletes $"NAD"^"+"$ (inhibiting SIRT1-mediated PGC-1$alpha$ deacetylation). *The model resolves this competing-signal problem quantitatively*: the net biogenesis rate is a product of two Hill functions with opposing dependencies on energy status. The model predicts patient-specific outcomes: patients with preserved $"NAD"^"+"$ pools maintain biogenesis and stabilize ($J_(upright("biogenesis")) > J_(upright("mitophagy,eff"))$), while those with severe $"NAD"^"+"$ depletion ($gamma < 0.7$) lose the ability to replace damaged mitochondria, crossing a tipping point into progressive decline. This threshold cannot be identified by verbal reasoning because it depends on the precise shape of both Hill functions and their interaction.

The effective $V_(max)$ of each ETC complex in the energy production model (@sec:etc-model) is now proportional to healthy mitochondrial mass: $V_(max, upright("CI"))^(upright("eff")) = alpha_(upright("CI")) dot.op V_(max, upright("CI")) dot.op M_h slash M_(upright("total"))$. This coupling means that the fission--fusion--mitophagy--biogenesis cycle directly determines energy production capacity on timescales of days to weeks, bridging the gap between acute metabolic dynamics (hours) and long-term disease progression (months).

#hypothesis(title: [Mitochondrial Quality Control Failure as Disease Maintenance Mechanism])[
ME/CFS persistence reflects a failure of mitochondrial quality control rather than ongoing external damage. The energy deficit created by initial mitochondrial injury impairs both mitophagy (ATP-dependent) and biogenesis ($"NAD"^"+"$-dependent), preventing replacement of damaged organelles. This self-maintaining loop---identified through the coupled ODE model (@eq:mito-dynamics and @eq:biogenesis)---predicts that: (1) interventions targeting mitophagy directly (urolithin A, spermidine) may break the cycle even without addressing the original trigger; (2) $"NAD"^"+"$ precursor supplementation should improve biogenesis markers (mtDNA copy number, PGC-1$alpha$ activity) before improving energy capacity; and (3) patients with preserved mitophagy flux (measurable via mitophagy reporters in lymphocytes) should have better prognosis.

*Certainty*: 0.40. The quality control framework is well-established in mitochondrial biology and neurodegenerative disease, but its specific application to ME/CFS awaits direct measurement of mitophagy and biogenesis rates in patient tissues.
]

== Model Application Guide
<sec:energy-model-application>

This section provides, for each model in this chapter, the measurements required to parameterize and validate it, a worked example with representative parameter values, explicit inter-model dependencies, the rationale for model scope, falsification criteria, and clinical implications.

=== Glycolysis Kinetics (@eq:pfk1)

*Measurements required.* (1) Fructose-6-phosphate concentration $[upright("F6P")]$: measured by targeted metabolomics on muscle biopsy or blood (why: primary substrate determining glycolytic flux). (2) ATP and AMP concentrations: measured by $"^{31}P"-"MRS"$ in vivo or metabolomics (why: allosteric regulators of PFK-1 that determine how rapidly glycolysis responds to energy deficit). (3) Lactate and pyruvate at graded exercise intensities: measured by blood sampling during CPET (why: the lactate/pyruvate ratio at a given workload validates the model's prediction of glycolytic flux).

*Worked example.* Consider a patient with moderate ME/CFS. At rest: $[upright("F6P")] = 0.15$ mM, $[upright("ATP")] = 4.5$ mM (vs. 5.0 mM healthy), $[upright("AMP")] = 0.3$ mM (vs. 0.1 mM healthy). Using $V_(max, upright("PFK-1")) = 1.2$ mM/min, $n_H = 2.5$, $K_(0.5) = 0.12$ mM, $K_i^(upright("ATP")) = 3.0$ mM, $K_a^(upright("AMP")) = 0.15$ mM:

$
v_(upright("PFK-1")) = 1.2 dot.op frac(0.15^(2.5), 0.12^(2.5) + 0.15^(2.5)) dot.op frac(3.0, 3.0 + 4.5) dot.op frac(0.3, 0.15 + 0.3) approx 0.29 upright(" mM/min")
$

For a healthy individual ($[upright("ATP")] = 5.0$, $[upright("AMP")] = 0.1$): $v approx 0.18$ mM/min. The ME/CFS patient has ~60% higher glycolytic flux at rest due to the lower ATP (releasing PFK-1 inhibition) and higher AMP (activating PFK-1)---consistent with the elevated resting lactate observed clinically.

*Inter-model dependencies.* _Inputs_: ATP and AMP concentrations from the integrated energy production model (@sec:integrated-energy). _Outputs_: pyruvate production rate, which feeds the Krebs cycle model (@sec:krebs-cycle-model) and lactate kinetics (@sec:lactate-kinetics).

*Scope and rationale.* Glycolysis involves ten enzymatic steps. The model lumps these into three regulated nodes (HK, PFK-1, PK) because PFK-1 is the committed regulatory step and the primary determinant of glycolytic flux under allosteric control. The remaining seven enzymes operate near equilibrium under physiological conditions and do not independently constrain flux. This simplification is standard in metabolic modeling @Naviaux2016metabolomics and is appropriate when the question is "how much glycolytic flux?" rather than "which intermediate accumulates?"

*Falsification criteria.* The model predicts that ME/CFS patients with lower $[upright("ATP")]/[upright("AMP")]$ ratios should have proportionally higher resting glycolytic flux (measurable as lactate production rate). *Falsified if*: (1) patients with documented low ATP/AMP ratios show _normal_ glycolytic flux (would indicate PFK-1 regulation is not the dominant mechanism); or (2) lactate production during submaximal exercise does not correlate with the model-predicted flux after adjusting for $[upright("ATP")]$, $[upright("AMP")]$, and $[upright("F6P")]$.

*Clinical implications.* Patients whose glycolytic flux is disproportionately elevated (measured lactate exceeds model prediction for their mitochondrial impairment level) may benefit from interventions that improve mitochondrial oxidative capacity (CoQ10, $"NAD"^"+"$ precursors) rather than glycolytic support. Conversely, patients with normal glycolytic flux despite low ATP suggest an alternative bottleneck (substrate supply, mitochondrial mass) rather than regulatory dysfunction.

=== Krebs Cycle (@eq:krebs-flux)

*Measurements required.* (1) Plasma citrate and isocitrate concentrations: metabolomics (why: accumulation indicates reduced IDH flux, the model's primary ME/CFS-specific prediction). (2) $"NAD"^"+"$/NADH ratio: measurable in blood cells by enzymatic assays (why: directly enters the flux equation). (3) Acetyl-CoA and oxaloacetate: less accessible clinically but measurable in muscle biopsy (why: substrate availability).

*Worked example.* Healthy steady state: $J_(upright("Krebs")) = V_(max, upright("CS")) dot.op 0.8 dot.op 0.9 dot.op 0.85 = 0.61 dot.op V_(max, upright("CS"))$ (using typical saturation fractions for each substrate). In ME/CFS with $gamma = 0.7$ (30% $"NAD"^"+"$ depletion): the $[upright("NAD")^+]/([upright("NAD")^+] + [upright("NADH")])$ term drops from 0.85 to approximately 0.60, reducing Krebs flux to $0.61 -> 0.43 dot.op V_(max, upright("CS"))$---a 30% flux reduction from a 30% $"NAD"^"+"$ depletion. This nonlinear proportionality (nearly 1:1 here) holds only when the other substrates are not rate-limiting; if acetyl-CoA is also reduced (e.g., from impaired fatty acid oxidation), the combined deficit is multiplicative.

*Inter-model dependencies.* _Inputs_: pyruvate from glycolysis (via acetyl-CoA), $"NAD"^"+"$/NADH from the ETC model. _Outputs_: NADH production (drives ETC), $"CO"_2$ production, intermediate accumulation patterns.

*Scope and rationale.* The eight-step Krebs cycle is lumped to four reactions at the regulatory nodes (CS, IDH, $alpha$-KGDH, SDH). This captures the rate-limiting steps documented in ME/CFS metabolomics (citrate and isocitrate accumulation @Germain2020metabolic) while keeping the parameter count tractable.

*Falsification criteria.* The model predicts that Krebs cycle flux is reduced primarily by $"NAD"^"+"$ depletion and IDH/$alpha$-KGDH impairment. *Falsified if*: metabolomic profiling reveals that Krebs cycle intermediate patterns in ME/CFS are inconsistent with reduced IDH/$alpha$-KGDH flux (e.g., if citrate is _depleted_ rather than accumulated, suggesting citrate synthase is the bottleneck).

*Clinical implications.* Patients with high citrate/isocitrate ratios on metabolomics are predicted to respond to $"NAD"^"+"$ precursor supplementation (restoring the limiting cofactor). Patients with normal Krebs intermediates but low ATP suggest the bottleneck lies downstream (ETC) rather than in the cycle itself.

=== Electron Transport Chain (@eq:complex-i and @eq:atp-synthase)

*Measurements required.* (1) Peak VO₂ from CPET: directly constrains $V_(max, upright("CI"))$ and overall ETC capacity (why: VO₂ is the terminal electron acceptor flux). (2) CoQ10 levels: serum ubiquinone/ubiquinol measurement (why: determines $[upright("UQ")]$ in the model). (3) Two-day CPET decrement: the day-2 vs. day-1 VO₂ difference constrains the ROS-mediated damage rate (why: the decrement reflects acute ETC damage from exertion). (4) $"^{31}P"-"MRS"$: provides in vivo measurement of phosphocreatine recovery time, directly related to mitochondrial oxidative capacity.

*Worked example.* A patient has $alpha_(upright("CI")) = 0.65$ (35% Complex I impairment). Using the ETC model with healthy $Delta Psi_(max) = 180$ mV and $Delta Psi_(upright("threshold")) = 110$ mV: healthy steady-state $Delta Psi approx 160$ mV, giving ATP synthase a driving force of $(160 - 110)/160 = 31%$ of maximum. With $alpha_(upright("CI")) = 0.65$, reduced proton pumping lowers $Delta Psi$ to $approx 135$ mV, giving a driving force of $(135 - 110)/135 = 19%$---a 39% reduction in ATP synthase flux from a 35% Complex I impairment. This disproportionate effect is the "cliff" nonlinearity: near the threshold, small $Delta Psi$ drops cause large ATP synthesis drops.

*Inter-model dependencies.* _Inputs_: NADH from glycolysis and Krebs cycle, $[upright("UQ")]$ (modifiable by CoQ10 supplementation). _Outputs_: ATP production rate (to ATP balance equation), ROS production (to oxidative stress model), $Delta Psi$ (determines mitophagy signaling via PINK1). The oxygen consumption rate $J_(upright("CIV"))$ is constrained by $"DO"_2$ from the cardiovascular model (@ch:integrated-systems).

*Scope and rationale.* The ETC is modeled as four complexes plus ATP synthase, omitting complex subunit detail and supramolecular organization. This level captures the bioenergetically relevant behavior: proton pumping, membrane potential dynamics, and the threshold nonlinearity. Subunit-level modeling would require structural biology data not available for ME/CFS tissues.

*Falsification criteria.* The model predicts a nonlinear (convex) relationship between Complex I impairment and ATP production loss, with a cliff near $Delta Psi_(upright("threshold"))$. *Falsified if*: $"^{31}P"-"MRS"$ studies in ME/CFS patients reveal a _linear_ relationship between mitochondrial impairment indices and functional ATP production, or if the predicted cliff effect at $alpha_(upright("CI")) approx 0.6$ is not observed (patients with moderate impairment show proportional, not disproportionate, ATP loss).

*Clinical implications.* The cliff effect implies that patients near the threshold ($alpha_(upright("CI")) approx 0.6$--$0.7$) have the most to gain from even modest mitochondrial support: a small improvement in Complex I activity produces a disproportionate ATP increase. Patients well above threshold ($alpha_(upright("CI")) > 0.8$) will show minimal response to mitochondrial supplements (their $Delta Psi$ is already well above threshold), while those well below ($alpha_(upright("CI")) < 0.5$) may not respond because the deficit is too large for supplements to bridge. *Treatment implication*: CoQ10/$"NAD"^"+"$ supplementation should be most effective in moderate, not mild or severe, metabolic impairment.

=== Reactive Oxygen Species (@eq:ros-production and @eq:ros-balance)

*Measurements required.* (1) Oxidative stress biomarkers: F2-isoprostanes (lipid peroxidation), 8-OHdG (DNA oxidation), protein carbonyls (why: downstream indicators of cumulative ROS exposure). (2) Antioxidant enzyme activity: SOD and GPx in erythrocytes or lymphocytes (why: $k_(upright("SOD"))$ and $k_(upright("GPx"))$ directly). (3) Glutathione ratio (GSH/GSSG): reflects real-time redox state.

*Worked example.* With $alpha_(upright("CI")) = 0.65$, ETC flux drops to 65% of maximum, so the Complex I ROS term becomes $k_(upright("ROS")) dot.op [upright("NADH")] dot.op (1 - 0.65) = 0.35 dot.op k_(upright("ROS")) dot.op [upright("NADH")]$ versus $k_(upright("ROS")) dot.op [upright("NADH")] dot.op (1 - 0.95) = 0.05$ in health. ROS production is ~7-fold higher. If antioxidant capacity is unchanged, steady-state $[upright("ROS")]$ increases proportionally, explaining the elevated oxidative stress markers consistently found in ME/CFS.

*Inter-model dependencies.* _Inputs_: ETC flux ratios ($J_(upright("CI"))/J_(upright("CI,max"))$) from ETC model. _Outputs_: ROS feeds into damage accumulation (@ch:temporal-evolution), mitochondrial dynamics (fission--fusion balance), PEM cascade (@sec:pem-modeling), and small fiber neuropathy (@ch:neuroendocrine-models).

*Scope and rationale.* ROS biology involves dozens of reactive species and defense systems. The model uses a single aggregate $[upright("ROS")]$ with two scavenging enzymes (SOD, GPx). This is appropriate for capturing the qualitative dynamics (positive feedback between ETC impairment and ROS) but insufficient for distinguishing between specific oxidative damage pathways.

*Falsification criteria.* *Falsified if*: ME/CFS patients with documented Complex I impairment show _normal_ oxidative stress biomarkers (would indicate that antioxidant compensation fully neutralizes the predicted ROS increase, requiring model revision to include adaptive antioxidant upregulation).

*Clinical implications.* Patients with high oxidative stress markers relative to their degree of mitochondrial impairment have inadequate antioxidant defense (low SOD/GPx) and may benefit from targeted antioxidant supplementation (glutathione precursors, selenium for GPx cofactor). Patients with proportionate markers are already compensating and would benefit more from reducing ROS production at source (improving ETC flux) than from antioxidant supplementation.

=== Post-Exertional Malaise and Energy Envelope (@eq:demand-exertion and @eq:energy-envelope)

*Measurements required.* (1) Two-day CPET: peak VO₂, anaerobic threshold, day-2 decrement (why: directly constrains $J_(upright("production,max"))$ and the ROS-mediated damage magnitude). (2) Resting metabolic rate by indirect calorimetry (why: constrains $E_(upright("basal"))$). (3) Daily activity data from wearable accelerometry/HR monitor (why: estimates $J_(upright("demand"))(t)$ for energy envelope calculation). (4) CRP, cytokine panel (why: estimates $E_(upright("repair"))$ through the immune energy demand). (5) Patient-reported PEM onset timing and severity after standardized exertion (why: constrains $tau_(upright("PEM"))$ and the damage threshold).

*Worked example.* A patient with peak VO₂ = 18 mL/kg/min (healthy age-matched: 35) has $J_(upright("production,max")) approx 51%$ of normal. Resting metabolic rate = 1500 kcal/day ($E_(upright("basal"))$). With elevated CRP suggesting $E_(upright("repair")) approx 200$ kcal/day (vs. ~50 healthy). Available energy budget:

$
E_(upright("budget")) = (0.51 times 2400) - 1500 - 200 = 1224 - 1500 - 200 = -476 upright(" kcal/day")
$

A _negative_ budget means the patient cannot meet basic metabolic demands at this severity level, explaining why severe ME/CFS patients experience symptoms at rest. In practice, the body reduces $E_(upright("basal"))$ (hypometabolism) and $E_(upright("repair"))$ (deferred repair, accumulating damage) to achieve a precarious balance. For a moderate patient with peak VO₂ = 25 mL/kg/min: $E_(upright("budget")) = (0.71 times 2400) - 1500 - 100 = 104$ kcal/day---approximately 1 hour of light activity.

*Inter-model dependencies.* _Inputs_: $J_(upright("production,max"))$ from ETC model, $E_(upright("repair"))$ from immune energy demand (@ch:immune-system-models), damage variables from ROS model. _Outputs_: PEM triggering threshold feeds temporal dynamics (@ch:temporal-evolution), pacing optimization (@ch:predictive-applications).

*Scope and rationale.* The PEM model addresses _why_ exertion causes delayed symptom worsening in ME/CFS but not in healthy individuals. The healthy baseline (@sec:healthy-exercise-response) establishes what _should_ happen after exertion; the PEM model describes what happens instead when the branch-point condition $R_(upright("headroom")) < R_(upright("crit"))$ (@eq:branch-point) is met. It deliberately omits the neural and psychological components of exercise intolerance (central fatigue, kinesiophobia) to focus on the metabolic mechanism. These omissions are acknowledged in the ATP Threshold Hypothesis (certainty: 0.45).

*Falsification criteria.* The model predicts that PEM severity correlates with the product of exertion intensity and duration above the patient's anaerobic threshold, mediated by ATP depletion depth. *Falsified if*: (1) PEM severity does not correlate with measured ATP depletion (by $"^{31}P"-"MRS"$) during and after exertion; (2) interventions that demonstrably improve mitochondrial ATP capacity (confirmed by CPET improvement) do not reduce PEM susceptibility; or (3) the 12--72 h delay cannot be explained by the ROS/inflammatory cascade timescale (alternative mechanisms such as central sensitization dominate).

*Clinical implications.* The energy envelope calculation gives a _patient-specific daily activity budget_. Clinicians can use CPET-derived peak VO₂ and resting metabolic rate to compute $E_(upright("budget"))$ and translate it to practical units (steps, minutes of activity at specified heart rate zones). Patients with negative budgets require strict rest; those with small positive budgets benefit from structured pacing within the budget. The model predicts that interventions increasing $J_(upright("production,max"))$ (mitochondrial support) or decreasing $E_(upright("repair"))$ (anti-inflammatory treatment) both widen the energy envelope, suggesting combination benefit.

=== Healthy Baseline and Branch Point (@eq:headroom and @eq:branch-point)

*Measurements required.* (1) Peak VO₂ and anaerobic threshold from CPET in both patients and age-matched healthy controls (why: constrains $J_(upright("production,max"))$ and enables computation of $R_(upright("headroom"))$). (2) Pre- and post-exercise mtDNA copy number at 24, 48, and 72 hours in both groups (why: directly tests $Delta M_h^(upright("net")) > 0$ in health vs. $Delta M_h^(upright("net")) < 0$ in ME/CFS). (3) Post-exercise PGC-1$alpha$ and AMPK phosphorylation in PBMCs (why: distinguishes between adequate AMPK signaling with $"NAD"^"+"$ bottleneck vs. upstream signaling failure). (4) DOMS severity and timeline via VAS in healthy controls performing eccentric exercise (why: validates the local inflammatory model timeline, @eq:doms-inflammation).

*Worked example.* A healthy individual with peak VO₂ = 35 mL/kg/min performs moderate exercise at 60% peak ($J_(upright("demand,peak")) = 0.6 dot.op J_(upright("production,max"))$). Headroom ratio: $R_(upright("headroom")) = (1 - 0.6) = 0.40$. At $alpha_(upright("CI")) = 1.0$, the ROS production factor is $(1 - 0.95) = 0.05$ (5% electron leak), well within buffering: $[upright("ROS")] < upright("ROS")_(upright("threshold"))$, $D(t) = D_0$ (no damage). Over the next 72 hours, $J_(upright("biogenesis"))$ rises (AMPK-driven) while $r_(upright("damage"))$ remains at baseline, yielding $Delta M_h^(upright("net")) > 0$: supercompensation.

Now consider a moderate ME/CFS patient with peak VO₂ = 25 mL/kg/min performing the same absolute workload. Because $J_(upright("production,max"))$ is reduced ($alpha_(upright("CI")) = 0.70$), this exercise represents 85% of capacity: $R_(upright("headroom")) = 0.15$. The ROS factor is $(1 - 0.70) = 0.30$, exceeding the threshold. Over 72 hours: $D(t) > D_0$ (cumulative damage), biogenesis is impaired ($"NAD"^"+"$ depleted, $gamma = 0.75$), and $Delta M_h^(upright("net")) < 0$: anti-supercompensation. The same absolute effort that improves the healthy individual worsens the patient.

*Inter-model dependencies.* _Inputs_: $J_(upright("production,max"))$ from ETC model, $alpha_(upright("CI"))$ from mitochondrial dysfunction parameters, ROS threshold from antioxidant model. _Outputs_: $R_(upright("headroom"))$ determines PEM triggering (@sec:pem-modeling), $Delta M_h^(upright("net"))$ sign feeds long-term trajectories (@ch:temporal-evolution), branch point informs pacing optimization (@ch:predictive-applications).

*Scope and rationale.* The healthy baseline model serves two roles: face validation (reproducing known exercise physiology timescales from the same equations used for ME/CFS) and branch-point identification (the critical $R_(upright("headroom"))$ below which adaptation becomes damage). It deliberately simplifies DOMS to its inflammatory timeline and omits the full complexity of exercise training adaptation (periodization, fiber-type specificity, neural adaptation) to focus on the metabolic branch point relevant to ME/CFS.

*Falsification criteria.* *Falsified if*: (1) the model with healthy parameters fails to reproduce the known 48--96 hour supercompensation timescale (would indicate that the biogenesis ODE timescale is miscalibrated); (2) ME/CFS patients show _positive_ $Delta M_h^(upright("net"))$ after standardized exertion (mtDNA copy number rises at 72 hours), indicating that supercompensation failure is not a feature of the disease; or (3) the branch point cannot be identified as a function of $R_(upright("headroom"))$---i.e., patients with high and low headroom show the same post-exertional response, refuting the threshold model.

*Clinical implications.* The branch-point analysis quantifies the minimum $R_(upright("headroom"))$ required for exertion to be adaptive rather than damaging. This provides a patient-specific _safe exercise threshold_: the intensity level below which the exertion response resembles healthy adaptation rather than PEM. Clinicians can estimate $R_(upright("headroom"))$ from CPET data and prescribe activity levels that stay above $R_(upright("crit"))$, potentially enabling limited exercise training in patients with sufficient reserve while protecting those without it. The model predicts that interventions increasing $J_(upright("production,max"))$ (e.g., CoQ10, $"NAD"^"+"$ precursors) would raise $R_(upright("headroom"))$ and potentially restore the supercompensation response before improving exercise tolerance directly.

=== Mitochondrial Quality Control (@eq:mito-dynamics and @eq:biogenesis)

*Measurements required.* (1) Mitochondrial DNA copy number in PBMCs: qPCR (why: proxy for total mitochondrial mass $M_h + M_d$). (2) Mitophagy flux: measurable via mitophagy reporter assays in lymphocytes or by PINK1/Parkin protein levels (why: constrains $J_(upright("mitophagy"))$). (3) PGC-1$alpha$ activity: gene expression or protein level in PBMCs (why: constrains $J_(upright("biogenesis"))$). (4) Urinary 8-OHdG or mtDNA damage assay (why: proxy for $M_d/M_(upright("total"))$ ratio).

*Worked example.* A patient with $gamma = 0.65$ (35% $"NAD"^"+"$ depletion) and $[upright("ATP")] = 3.5$ mM (vs. 5.0 healthy). Biogenesis rate: $J_(upright("biogenesis")) prop f_(upright("AMPK"))(0.3/3.5) dot.op f_(upright("SIRT1"))(0.65) approx 0.75 dot.op 0.55 = 0.41$ of healthy rate. Mitophagy rate: $J_(upright("mitophagy")) prop f_(upright("PINK1"))(M_d) dot.op f_(upright("ATP"))(3.5) approx 0.8 dot.op 0.60 = 0.48$ of healthy rate. If damage production requires mitophagy capacity $> 0.5$ of healthy to maintain equilibrium, this patient is below the quality control threshold: damaged mitochondria accumulate, progressively reducing $M_h/M_(upright("total"))$ and worsening energy deficit.

*Inter-model dependencies.* _Inputs_: $[upright("ATP")]$ from energy balance (determines mitophagy capacity), $[upright("NAD")^+]$ (determines biogenesis via SIRT1), $[upright("ROS")]$ (determines damage rate). _Outputs_: effective $V_(max)$ for all ETC complexes (proportional to $M_h/M_(upright("total"))$), bridging acute metabolic dynamics (hours) to disease progression (months).

*Scope and rationale.* The model tracks aggregate healthy and damaged mitochondrial mass, not individual organelles. This captures the quality control logic (biogenesis vs. mitophagy balance) while omitting spatial organization (perinuclear vs. peripheral mitochondria), which would require spatially explicit models beyond current ME/CFS data resolution.

*Falsification criteria.* The model predicts a threshold $[upright("ATP")]_(upright("crit,autophagy"))$ below which mitophagy collapses and damaged mitochondria accumulate. *Falsified if*: patients with severe ATP depletion show _normal_ mitophagy flux (e.g., normal PINK1/Parkin processing in lymphocytes), indicating that mitophagy is not ATP-limited in practice. Also falsified if $"NAD"^"+"$ supplementation improves biogenesis markers (mtDNA copy number, PGC-1$alpha$) _without_ requiring prior ATP restoration (would indicate SIRT1, not ATP, is the sole bottleneck).

*Clinical implications.* The model predicts two patient subtypes within the metabolic-dominant phenotype: (1) patients with preserved quality control ($M_h/M_(upright("total")) > 0.7$, adequate mitophagy) who respond to substrate support (CoQ10, $"NAD"^"+"$); and (2) patients with quality control failure ($M_h/M_(upright("total")) < 0.5$, impaired mitophagy) who require interventions targeting mitophagy directly (urolithin A, spermidine) _before_ substrate support can be effective. Measuring mitophagy markers distinguishes these groups and guides treatment sequencing.

=== Lactate Kinetics and Metabolic Flexibility (@eq:lactate-dynamics and @eq:gpr81-feedback)

*Measurements required.* (1) Resting and exercise lactate: blood sampling at rest and during graded exercise (why: calibrates the lactate production/clearance balance). (2) Respiratory exchange ratio (RER) at rest and during CPET (why: directly measures $Phi$, the fuel selection ratio). (3) Acylcarnitine profile: metabolomics (why: elevated acylcarnitines indicate impaired $beta$-oxidation and carnitine sequestration). (4) Free carnitine level (why: determines whether carnitine supplementation targets the actual bottleneck).

*Worked example.* A patient with $alpha_(upright("CI")) = 0.60$ (below the bistability threshold of 0.65 identified by the GPR81 feedback model). Resting lactate = 2.8 mM (vs. 1.0 healthy), RER = 0.92 (vs. 0.82 healthy, indicating shifted toward carbohydrate oxidation). The GPR81 feedback reduces FFA availability: $[upright("FFA")]_(upright("available")) = [upright("FFA")]_(upright("basal")) dot.op K_(upright("GPR81"))/(K_(upright("GPR81")) + 2.8) approx 0.42 dot.op [upright("FFA")]_(upright("basal"))$ (using $K_(upright("GPR81")) approx 2$ mM). With $<50%$ of normal FFA supply, fat oxidation is severely curtailed, forcing further glycolytic reliance and more lactate---the self-sustaining metabolic loop.

*Inter-model dependencies.* _Inputs_: pyruvate from glycolysis, NADH/$"NAD"^"+"$ from ETC, free carnitine from carnitine balance. _Outputs_: lactate feeds back via GPR81 to FFA supply, affecting fuel selection. RER is a direct model output comparable to CPET data.

*Scope and rationale.* The model captures the Randle cycle (glucose--fatty acid competition) and carnitine shuttle but omits ketone body metabolism and amino acid oxidation. These are quantitatively minor during the submaximal activities relevant to ME/CFS patients and would add parameters without improving predictive power for the target observations (lactate, RER).

*Falsification criteria.* The model predicts a bistable metabolic state when $alpha_(upright("CI")) < 0.65$ (loop gain $> 1$). *Falsified if*: patients with $alpha_(upright("CI")) < 0.65$ do not show the predicted metabolic lock (persistently elevated lactate and RER even at rest), or if experimental GPR81 blockade does not restore metabolic flexibility in a patient with the predicted bistable profile.

*Clinical implications.* The model distinguishes two metabolic phenotypes requiring different interventions: (1) patients above the bistability threshold ($alpha_(upright("CI")) > 0.65$): metabolic inflexibility is reversible with mitochondrial support alone; (2) patients below threshold ($alpha_(upright("CI")) < 0.65$): the GPR81 feedback loop is self-sustaining and requires either breaking the loop (GPR81 antagonism, if available) or simultaneously improving ETC capacity _and_ providing alternative fat delivery (medium-chain triglycerides, which bypass CPT-I). The acylcarnitine profile distinguishes carnitine-responsive patients (elevated acylcarnitines with low free carnitine) from those needing $"NAD"^"+"$ repletion (elevated acylcarnitines with adequate free carnitine).

== Consolidated Cascade Example
<sec:cascade-example>

The preceding worked examples illustrate each subsystem in isolation. In ME/CFS, however, the subsystems interact: impairment at one level propagates through the others. This section traces the cascade for a single patient to show how modest individual deficits compound into severe energy failure.

*Patient profile.* A moderate ME/CFS patient with 35% Complex I impairment ($alpha_(upright("CI")) = 0.65$) and 30% $"NAD"^"+"$ depletion ($gamma = 0.7$).

*Step 1: Electron transport chain --- the cliff effect.* The ATP synthase driving force depends on how far the mitochondrial membrane potential $Delta Psi$ exceeds its minimum operating threshold ($Delta Psi_(upright("threshold")) approx 110$ mV). From @eq:atp-synthase:

$
upright("Driving force") = frac(Delta Psi - Delta Psi_(upright("threshold")), Delta Psi)
$

In health, $Delta Psi approx 160$ mV: driving force $= (160 - 110)/160 = 31%$ of theoretical maximum. With $alpha_(upright("CI")) = 0.65$, reduced proton pumping lowers $Delta Psi$ to $approx 135$ mV: driving force $= (135 - 110)/135 = 19%$ of maximum. This is a *39% reduction* in ATP synthase output from 35% Complex I damage---disproportionate because the nonlinear threshold term amplifies impairment as $Delta Psi$ approaches $Delta Psi_(upright("threshold"))$.

*Step 2: Krebs cycle --- $"NAD"^"+"$ bottleneck.* The Krebs cycle flux depends on $"NAD"^"+"$ availability through @eq:krebs-flux:

$
J_(upright("Krebs")) prop frac([upright("NAD")^+], [upright("NAD")^+] + [upright("NADH")])
$

In health, this ratio $approx 0.85$. With $gamma = 0.7$ (30% $"NAD"^"+"$ depletion), the ratio drops to $approx 0.60$. Reduction: $(0.85 - 0.60)/0.85 = 29%$. The Krebs cycle feeds electrons to the ETC via NADH, so this 29% reduction in Krebs output _further_ reduces the already-impaired ETC flux. The two deficits compound multiplicatively: effective ATP production is approximately $0.61 times 0.71 = 0.43$ of healthy---a *57% total reduction* from two individually moderate impairments.

*Step 3: Reactive oxygen species --- amplified damage.* ROS production scales with unused ETC capacity (@eq:ros-production):

$
J_(upright("ROS")) prop 1 - frac(J_(upright("CI")), J_(upright("CI,max")))
$

In health, Complex I runs at ~95% capacity: ROS factor $= 1 - 0.95 = 0.05$. At $alpha_(upright("CI")) = 0.65$: ROS factor $= 1 - 0.65 = 0.35$. Ratio: $0.35/0.05 =$ *7-fold increase* in ROS production. This elevated ROS damages ETC complexes further, creating a positive feedback loop that the antioxidant system must counterbalance. If antioxidant capacity is not proportionally upregulated, oxidative damage accumulates, progressively reducing $alpha_(upright("CI"))$ and deepening the deficit.

*Combined picture.* Two individually moderate deficits (35% Complex I impairment, 30% $"NAD"^"+"$ depletion) produce: 57% reduced ATP production (multiplicative), 7-fold elevated ROS (self-reinforcing damage), and an energy envelope so narrow that ordinary activities trigger PEM. This cascade explains why ME/CFS severity is often disproportionate to any single measurable abnormality---it is the _interaction_ between subsystems that generates the clinical phenotype.

#limitation(title: [Cascade Example Assumptions])[
This example treats the three effects as independent multiplicative factors. In the full coupled ODE system (@ch:integrated-systems), the interactions are more complex: ROS-mediated damage reduces $alpha_(upright("CI"))$ over time, $"NAD"^"+"$ depletion affects both Krebs and ETC flux, and the membrane potential depends on all proton-pumping complexes, not just Complex I. The multiplicative approximation is a pedagogical simplification; the true cascade dynamics require numerical simulation of the coupled system.
]
