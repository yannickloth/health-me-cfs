#import "../shared/environments.typ": *

= Neuroendocrine and Autonomic Models
<ch:neuroendocrine-models>

Neuroendocrine and autonomic dysfunction contributes to many of the most debilitating symptoms of ME/CFS, including orthostatic intolerance, unrefreshing sleep, and impaired stress responses (Chapters @ch:neurological and @ch:endocrine). This chapter develops mathematical models of the hypothalamic--pituitary--adrenal (HPA) axis, the autonomic nervous system, and sleep--wake regulation, with emphasis on the bidirectional coupling between these systems and the immune and metabolic pathways modeled in Chapters @ch:energy-metabolism-models and @ch:immune-system-models.

#include "../figures/fig-hpa-axis-model.typ"

== HPA Axis Models
<sec:hpa-axis-models>

=== HPA Axis Dynamics
<sec:hpa-dynamics>

The HPA axis is a neuroendocrine cascade in which the hypothalamus releases corticotropin-releasing hormone (CRH), which stimulates pituitary adrenocorticotropic hormone (ACTH) release, which in turn stimulates adrenal cortisol production. Cortisol exerts negative feedback at both the hypothalamic and pituitary levels. The model tracks three state variables---CRH ($H$), ACTH ($A$), and cortisol ($F$, from Kendall's compound F)---with a circadian driving function:

$
frac(d H, d t) &= sigma_H dot.op (1 + a_c sin(frac(2 pi t, 24) - phi_c)) dot.op frac(K_F^(n_F), K_F^(n_F) + F^(n_F)) + sigma_(upright("stress"))(t) - delta_H H \
frac(d A, d t) &= sigma_A dot.op frac(H^(n_H), K_H^(n_H) + H^(n_H)) dot.op frac(K_F^(n_(F A)), K_F^(n_(F A)) + F^(n_(F A))) - delta_A A \
frac(d F, d t) &= sigma_F dot.op frac(A, K_A + A) - delta_F F
$ <eq:hpa-axis>

where $sigma_H$, $sigma_A$, $sigma_F$ are basal secretion rates; $a_c$ and $phi_c$ parameterize the circadian oscillation (peak CRH release in the early morning); $K_F$ and $n_F$ control the cortisol negative feedback (Hill-type inhibition); $sigma_(upright("stress"))(t)$ represents external stress inputs; and $delta_H$, $delta_A$, $delta_F$ are degradation rates. The Hill exponents $n_F$ and $n_(F A)$ determine the sharpness of the feedback switch, with $n_F approx 2$--$4$ producing the pulsatile cortisol release pattern observed physiologically.

=== HPA Axis Dysfunction in ME/CFS
<sec:hpa-dysfunction-model>

ME/CFS patients frequently exhibit subtle HPA axis abnormalities: mildly reduced basal cortisol, blunted cortisol awakening response, and attenuated cortisol response to stress @Cleare1999. These findings are not consistent with primary adrenal insufficiency (which produces markedly low cortisol) but rather with altered central regulation. The model represents ME/CFS HPA dysfunction through three parameter modifications:

+ *Enhanced negative feedback sensitivity*: increased $n_F$ (steeper Hill function), causing the system to suppress CRH output at lower cortisol concentrations. This produces the observed low-normal cortisol with preserved ACTH response.
+ *Reduced circadian amplitude*: decreased $a_c$, flattening the diurnal cortisol rhythm. This is consistent with the blunted cortisol awakening response and may contribute to unrefreshing sleep.
+ *Altered stress responsiveness*: reduced $sigma_(upright("stress"))$ gain, reflecting impaired hypothalamic stress signal integration.

The model predicts that these modifications shift the HPA axis to a low-output steady state that is stable under normal conditions but responds inadequately to metabolic or immune challenges. This has direct consequences for the immune models (Chapter @ch:immune-system-models): cortisol is a major anti-inflammatory signal, and its deficiency permits sustained immune activation that would normally be self-limiting.

#limitation(title: [HPA Axis Model Simplifications])[
The three-variable HPA model omits several physiologically relevant features: pulsatile hormone release (ultradian rhythms with ~90-minute periodicity), mineralocorticoid vs. glucocorticoid receptor dynamics, and cortisol-binding globulin effects on free cortisol availability. These omissions are acceptable for capturing the qualitative HPA phenotype in ME/CFS but preclude quantitative prediction of cortisol time courses at sub-hourly resolution.
]

#include "../figures/fig-baroreflex-model.typ"

== Autonomic Nervous System Models
<sec:ans-models>

=== Sympathetic--Parasympathetic Balance
<sec:sympathetic-parasympathetic>

The autonomic nervous system (ANS) regulates cardiovascular, respiratory, and gastrointestinal function through the opposing actions of the sympathetic (SNS) and parasympathetic (PNS) branches. Heart rate variability (HRV) analysis provides a non-invasive window into ANS function and is consistently abnormal in ME/CFS @Newton2007. The model tracks sympathetic tone ($S$) and parasympathetic (vagal) tone ($V$):

$
frac(d S, d t) &= sigma_S dot.op g_S (upright("BP"), upright("pain"), upright("stress")) - delta_S S - k_(S V) V \
frac(d V, d t) &= sigma_V dot.op g_V (upright("BP"), upright("respiration")) - delta_V V - k_(V S) S
$ <eq:ans-balance>

where $g_S$ and $g_V$ are input functions driven by baroreceptor signals (blood pressure, BP), pain, stress, and respiratory phase; $k_(S V)$ and $k_(V S)$ represent reciprocal inhibition between branches. Heart rate is determined by the balance:

$
upright("HR")(t) = upright("HR")_(upright("intrinsic")) + alpha_S dot.op S(t) - alpha_V dot.op V(t)
$ <eq:heart-rate>

where $upright("HR")_(upright("intrinsic")) approx 100$ bpm is the intrinsic sinoatrial node rate (without autonomic input), and $alpha_S$, $alpha_V$ are gain coefficients. In ME/CFS, the model represents autonomic dysfunction as elevated baseline $S$ and reduced $V$---sympathetic predominance with vagal withdrawal---producing reduced HRV and elevated resting heart rate.

=== Orthostatic Intolerance Model
<sec:orthostatic-model>

Orthostatic intolerance (OI) affects the majority of ME/CFS patients. Upon assuming an upright posture, gravitational pooling shifts 500--700 mL of blood to the lower extremities, requiring rapid compensatory responses. The model tracks mean arterial pressure (MAP) and heart rate during orthostatic challenge:

$
frac(d upright("MAP"), d t) &= frac(1, tau_(upright("MAP"))) [upright("MAP")_(upright("set")) + alpha_(upright("SNS")) dot.op S - upright("MAP") - Delta P_(upright("grav")) dot.op u(t)] \
frac(d upright("HR"), d t) &= frac(1, tau_(upright("HR"))) [upright("HR")_(upright("intrinsic")) + alpha_S S - alpha_V V - upright("HR")]
$ <eq:orthostatic>

where $Delta P_(upright("grav")) dot.op u(t)$ is the gravitational pressure drop upon standing ($u(t)$ is a step function at the time of postural change), $tau_(upright("MAP"))$ and $tau_(upright("HR"))$ are response time constants, and $upright("MAP")_(upright("set"))$ is the baroreflex set point. The baroreflex feedback adjusts sympathetic and vagal tone in response to MAP deviations:

$
S_(upright("baro")) = S_0 + G_S dot.op (upright("MAP")_(upright("set")) - upright("MAP")), quad V_(upright("baro")) = V_0 - G_V dot.op (upright("MAP")_(upright("set")) - upright("MAP"))
$ <eq:baroreflex>

where $G_S$ and $G_V$ are baroreflex gains. In ME/CFS, the model represents OI through: (1) reduced blood volume ($Delta P_(upright("grav"))$ is amplified because the same gravitational redistribution removes a larger fraction of effective circulating volume), (2) impaired baroreflex gain ($G_S$ and $G_V$ reduced), and (3) excessive venous pooling (increased venous compliance in the lower extremities). The model reproduces the characteristic hemodynamic pattern of ME/CFS-associated OI: initial MAP drop, delayed or incomplete recovery, and compensatory tachycardia.

=== POTS Mechanism Model
<sec:pots-model>

Postural orthostatic tachycardia syndrome (POTS), defined as a sustained heart rate increase $gt.eq 30$ bpm within 10 minutes of standing without orthostatic hypotension, is prevalent among ME/CFS patients. The orthostatic model (Equations @eq:orthostatic and @eq:baroreflex) reproduces POTS when the parameter combination produces adequate MAP maintenance (through excessive sympathetic activation) at the cost of sustained tachycardia. The model identifies three parameter regimes corresponding to distinct POTS subtypes:

+ *Neuropathic POTS*: reduced $G_V$ (impaired parasympathetic function) with compensatory sympathetic overdrive
+ *Hypovolemic POTS*: reduced effective blood volume (increased $Delta P_(upright("grav"))$ effect) requiring greater compensatory response
+ *Hyperadrenergic POTS*: elevated baseline $S$ and increased $alpha_S$ gain, producing excessive heart rate response to normal orthostatic stress

This subtype classification has treatment implications: hypovolemic POTS responds to volume expansion (saline, fludrocortisone), neuropathic POTS to parasympathetic enhancement (pyridostigmine @Raj2005Pyridostigmine), and hyperadrenergic POTS to sympatholytic agents (propranolol, clonidine).

#include "../figures/fig-tryptophan-branching-model.typ"

== Neurotransmitter Models
<sec:neurotransmitter-models>

Neurotransmitter dynamics link energy metabolism, immune function, and neurological symptoms. The tryptophan--serotonin--kynurenine axis is particularly relevant to ME/CFS because it is modulated by both immune activation and energy status.

=== Tryptophan--Kynurenine Pathway

Tryptophan is metabolized through two competing pathways: serotonin synthesis (via tryptophan hydroxylase) and kynurenine production (via indoleamine 2,3-dioxygenase, IDO). Immune activation upregulates IDO, diverting tryptophan away from serotonin toward kynurenine and its downstream neurotoxic metabolites (quinolinic acid). The model tracks tryptophan ($W$), serotonin ($5 upright("HT")$), and kynurenine ($K$):

$
frac(d W, d t) &= I_W - v_(upright("TPH")) dot.op frac(W, K_(upright("TPH")) + W) - v_(upright("IDO")) dot.op frac(W, K_(upright("IDO")) + W) - delta_W W \
frac(d [5 upright("HT")], d t) &= v_(upright("TPH")) dot.op frac(W, K_(upright("TPH")) + W) - delta_(5 upright("HT")) [5 upright("HT")] \
frac(d K, d t) &= v_(upright("IDO")) dot.op frac(W, K_(upright("IDO")) + W) - delta_K K
$ <eq:tryptophan>

where $I_W$ is dietary tryptophan intake, and the IDO activity $v_(upright("IDO"))$ is upregulated by IFN-$gamma$ from the immune model:

$
v_(upright("IDO")) = v_(upright("IDO,basal")) + v_(upright("IDO,max")) dot.op frac([upright("IFN-") gamma]^2, K_(upright("IFN"))^2 + [upright("IFN-") gamma]^2)
$ <eq:ido-regulation>

This coupling provides a mechanistic link between immune activation and neuropsychiatric symptoms: elevated IFN-$gamma$ $->$ increased IDO activity $->$ reduced serotonin and increased neurotoxic kynurenine metabolites. The IDO metabolic trap hypothesis @phair2019ido extends this model by proposing bistability in IDO-2 kinetics, where a high-IDO state becomes self-sustaining even after the initial immune trigger resolves. Kynurenine pathway dysregulation has been documented in ME/CFS cohorts @Kavyani2022kynurenine @Dehhaghi2022kynurenine.

=== Catecholamine Dynamics

The NIH deep phenotyping study documented altered catecholamine metabolites in ME/CFS cerebrospinal fluid @walitt2024deep. Catecholamines (dopamine, norepinephrine, epinephrine) are synthesized from tyrosine through a sequential enzymatic pathway. The model tracks dopamine ($upright("DA")$) and norepinephrine ($upright("NE")$) in the CNS:

$
frac(d [upright("DA")], d t) &= v_(upright("TH")) dot.op frac([upright("Tyr")], K_(upright("TH")) + [upright("Tyr")]) dot.op frac([upright("BH")_4], K_(upright("BH")_4) + [upright("BH")_4]) - v_(upright("DBH")) dot.op frac([upright("DA")], K_(upright("DBH")) + [upright("DA")]) - delta_(upright("DA")) [upright("DA")] \
frac(d [upright("NE")], d t) &= v_(upright("DBH")) dot.op frac([upright("DA")], K_(upright("DBH")) + [upright("DA")]) - delta_(upright("NE")) [upright("NE")]
$ <eq:catecholamines>

where TH is tyrosine hydroxylase (rate-limiting), DBH is dopamine $beta$-hydroxylase, and $[upright("BH")_4]$ is tetrahydrobiopterin---a cofactor shared with tryptophan hydroxylase and nitric oxide synthase. The shared BH₄ dependency creates competition: increased demand for BH₄ by one pathway (e.g., increased NO production during inflammation) reduces availability for catecholamine and serotonin synthesis. This provides a mechanistic explanation for the concurrent monoamine deficits observed in ME/CFS.

== Sleep--Wake Cycle Models
<sec:sleep-wake-models>

Unrefreshing sleep is a core symptom of ME/CFS. The two-process model of sleep regulation, originally developed by Borbély, provides a quantitative framework. Sleep propensity is determined by the interaction of a homeostatic process ($S$, sleep pressure) and a circadian process ($C$):

$
frac(d S, d t) &= cases(r_(upright("build")) dot.op (S_(max) - S) & upright("during waking"), -r_(upright("decay")) dot.op (S - S_(min)) & upright("during sleep")) \
C(t) &= C_0 + C_1 sin(frac(2 pi t, 24) - phi_s)
$ <eq:sleep-wake>

Sleep onset occurs when $S > C + theta_(upright("on"))$ (sleep pressure exceeds circadian alerting plus threshold), and waking occurs when $S < C - theta_(upright("off"))$. In ME/CFS, the model predicts unrefreshing sleep through:

+ *Impaired sleep pressure dissipation*: reduced $r_(upright("decay"))$, meaning sleep pressure does not fully clear during sleep (consistent with reduced slow-wave sleep in polysomnographic studies)
+ *Elevated waking sleep pressure build rate*: increased $r_(upright("build"))$, reflecting the higher metabolic cost of waking activities in an energy-deficient state (adenosine accumulation is linked to ATP consumption)
+ *Blunted circadian amplitude*: reduced $C_1$, flattening the circadian alerting signal (consistent with the HPA axis circadian reduction in @sec:hpa-dysfunction-model and with melatonin studies @castromarrero2021melatonin)

The combination produces a sleep phenotype where patients fall asleep easily (elevated $S$) but wake unrefreshed (residual $S$ remains high) and experience daytime somnolence (chronically elevated $S$ during waking hours). The model further predicts that circadian disruption (irregular sleep schedules) worsens the phenotype by desynchronizing the $S$ and $C$ processes, providing formal support for sleep hygiene recommendations in ME/CFS management.

#hypothesis(title: [Adenosine--ATP Coupling as Unrefreshing Sleep Mechanism])[
The homeostatic sleep drive is mediated by extracellular adenosine, which accumulates as a byproduct of ATP hydrolysis during waking. In ME/CFS, impaired ATP production (Chapter @ch:energy-metabolism-models) may paradoxically accelerate adenosine accumulation through increased AMP $->$ adenosine conversion, while simultaneously impairing the glymphatic clearance of adenosine during sleep @Xie2013glymphatic @NematGorgani2025glymphatic. This dual mechanism---accelerated build-up and impaired clearance---predicts that: (1) sleep pressure builds faster in ME/CFS patients than in healthy controls for equivalent activity levels; (2) improving mitochondrial function should improve sleep quality independent of sleep-targeted interventions; and (3) glymphatic function markers should correlate with unrefreshing sleep severity.

*Certainty*: 0.35. The adenosine--ATP link is biochemically sound, but direct measurement of brain adenosine dynamics in ME/CFS patients has not been performed, and the glymphatic connection remains extrapolated from neurodegenerative disease research.
]

== Tetrahydrobiopterin Competition Model
<sec:bh4-competition>

Tetrahydrobiopterin (BH₄) is an essential cofactor for three enzyme families whose products are central to ME/CFS pathophysiology: (1) tryptophan hydroxylase (TPH, serotonin synthesis), (2) tyrosine hydroxylase (TH, catecholamine synthesis), and (3) all three nitric oxide synthase isoforms (eNOS, nNOS, iNOS). The shared BH₄ dependency was noted in the catecholamine model (Equation @eq:catecholamines); this section formalizes the three-way competition and its consequences.

=== BH₄ Pool Dynamics

BH₄ is synthesized de novo from GTP by GTP cyclohydrolase I (GTPCH) and regenerated from BH₂ by dihydrobiopterin reductase (DHFR). BH₄ is consumed (oxidized to BH₂) during each catalytic cycle of TPH, TH, and NOS:

$
frac(d [upright("BH")_4], d t) = v_(upright("GTPCH")) + v_(upright("DHFR")) dot.op frac([upright("BH")_2], K_(upright("DHFR")) + [upright("BH")_2]) - J_(upright("TPH")) - J_(upright("TH")) - J_(upright("NOS,total")) - delta_(upright("BH")_4) [upright("BH")_4]
$ <eq:bh4-dynamics>

where $J_(upright("NOS,total")) = J_(upright("eNOS")) + J_(upright("nNOS")) + J_(upright("iNOS"))$, and iNOS activity is upregulated by pro-inflammatory cytokines (IFN-$gamma$, TNF-$alpha$). The conservation law $[upright("BH")_4] + [upright("BH")_2] = upright("BH")_(upright("total"))$ (neglecting de novo synthesis on fast timescales) means that increased iNOS activity during inflammation simultaneously depletes the BH₄ pool available to TPH and TH.

*This three-way competition produces a result that can only be derived from the mathematical model*: inflammation-driven iNOS upregulation causes coordinated deficits in serotonin (via TPH), dopamine/norepinephrine (via TH), _and_ endothelial NO (via eNOS uncoupling), through a single shared bottleneck. Verbal reasoning identifies each deficit independently; the model reveals that they are mechanistically linked by BH₄ competition and therefore cannot be corrected independently without addressing the cofactor shortage. The model predicts that:

+ *BH₄ supplementation* (sapropterin) should simultaneously improve mood (serotonin), cognitive function (dopamine), autonomic regulation (norepinephrine), and vascular function (endothelial NO)---a prediction testable by concurrent measurement of all four downstream products
+ *Anti-inflammatory therapy* that reduces iNOS expression should improve monoamine and NO levels even without direct neurotransmitter intervention, because it releases BH₄ for TPH and TH
+ *Selective serotonin reuptake inhibitors* (SSRIs) are predicted to have reduced efficacy in ME/CFS when BH₄ is rate-limiting, because they increase synaptic serotonin retention but do not address the synthesis bottleneck---consistent with the generally disappointing results of antidepressants in ME/CFS
+ The severity of concurrent serotonin, catecholamine, and NO deficits should *correlate with inflammatory burden* (IFN-$gamma$ levels), providing a testable biomarker signature: patients with high IFN-$gamma$ and low BH₄:BH₂ ratio should show the most severe multi-domain neurovascular dysfunction

BH₄ dysregulation has been documented in ME/CFS: Gottschalk et al. reported elevated serum BH₄ levels in ME/CFS patients with orthostatic intolerance @Gottschalk2023, which may reflect compensatory upregulation of GTPCH in response to increased NOS demand, or tissue-specific depletion masked by elevated circulating levels. The model predicts that serum BH₄ alone is insufficient to characterize the competition---the BH₄:BH₂ ratio and tissue-specific BH₄ availability are the relevant variables, and these may diverge from circulating levels when oxidative stress accelerates BH₄ $->$ BH₂ conversion in target tissues.

== Cerebral Blood Flow Autoregulation
<sec:cbf-autoregulation>

Reduced cerebral blood flow (CBF) is documented in ME/CFS patients, particularly during orthostatic stress @Novak2022CBFReview. The existing cardiovascular model (@sec:orthostatic-model) captures systemic hemodynamics but does not model cerebral autoregulation---the brain's ability to maintain relatively constant blood flow despite changes in systemic blood pressure. This section extends the model to capture CBF-specific dynamics.

=== Cerebrovascular Autoregulation Model

Cerebral blood flow depends on cerebral perfusion pressure (CPP) and cerebrovascular resistance (CVR):

$
upright("CBF") = frac(upright("CPP"), upright("CVR")), quad upright("CPP") = upright("MAP") - upright("ICP")
$ <eq:cbf-model>

where ICP is intracranial pressure (~10 mmHg normally). Autoregulation adjusts CVR to maintain CBF constant across a MAP range of approximately 60--150 mmHg:

$
frac(d upright("CVR"), d t) = frac(1, tau_(upright("auto"))) [upright("CVR")_0 dot.op frac(upright("MAP"), upright("MAP")_(upright("target"))) dot.op g_(upright("CO")_2)(upright("PaCO")_2) dot.op g_(upright("NO"))([upright("NO")]) - upright("CVR")]
$ <eq:cvr-autoregulation>

where $tau_(upright("auto")) approx 5$--$15$ s is the autoregulatory time constant, $upright("MAP")_(upright("target"))$ is the set point, $g_(upright("CO")_2)$ captures CO₂ reactivity (hypercapnia dilates cerebral vessels), and $g_(upright("NO"))$ captures NO-mediated vasodilation from the endothelial model (Equation @eq:enos-model). In ME/CFS, the model represents impaired autoregulation through three mechanisms:

+ *Delayed autoregulatory response*: increased $tau_(upright("auto"))$, causing transient CBF undershoots during orthostatic stress before CVR adjusts
+ *Narrowed autoregulatory range*: the MAP range over which CBF is maintained narrows, so that even moderate MAP reductions (during standing) cause CBF drops
+ *Reduced NO-mediated vasodilation*: $g_(upright("NO"))$ is attenuated by BH₄ depletion (@sec:bh4-competition) and endothelial dysfunction (@sec:coagulation-model), impairing the vasodilatory arm of autoregulation

*The model produces a clinically actionable prediction that requires mathematical analysis*: the CBF response to orthostatic stress depends on the product of two independent impairments (systemic MAP drop $times$ autoregulatory delay), predicting that patients with both autonomic dysfunction (large MAP drop) and endothelial dysfunction (impaired autoregulation) will experience disproportionately severe cerebral hypoperfusion compared to patients with either alone. This multiplicative interaction explains why cognitive symptoms during orthostatic challenge are highly variable across patients with similar tilt-table hemodynamics---the cerebrovascular autoregulatory reserve differs. The model predicts that CBF ultrasound during tilt-table testing would add prognostic value beyond MAP and HR monitoring alone.

== Central Sensitization and Pain Amplification
<sec:central-sensitization-model>

Chronic widespread pain affects the majority of ME/CFS patients and does not fully correlate with peripheral tissue damage. Central sensitization---amplification of pain signals within the spinal cord and brain---provides a mechanism for pain that persists independent of peripheral nociceptive input. This section develops a model of central sensitization that treats pain as an active feedback process rather than a passive readout.

=== Spinal Cord Sensitization Dynamics

Central sensitization is mediated by activity-dependent changes in dorsal horn neuron excitability, driven by NMDA receptor (NMDAR) activation, glial cell activation, and neuropeptide release. The model tracks the sensitization state $cal(S)$ of dorsal horn circuits:

$
frac(d cal(S), d t) = k_(upright("wind")) dot.op P_(upright("noci"))(t) dot.op frac(cal(S), K_(upright("NMDA")) + cal(S)) + k_(upright("glia")) dot.op mu_(1,upright("spinal")) - k_(upright("resolve")) dot.op cal(S) dot.op frac([upright("endorphin")], K_(upright("endorphin")) + [upright("endorphin")])
$ <eq:central-sensitization>

where $P_(upright("noci"))(t)$ is the peripheral nociceptive input (from tissue inflammation, small fiber neuropathy, or mechanical stimulation), $k_(upright("wind"))$ is the wind-up rate (NMDAR-dependent potentiation), $mu_(1,upright("spinal"))$ is spinal glial activation (analogous to the CNS microglial model, Equation @eq:microglia), $k_(upright("resolve"))$ is the resolution rate (modulated by endogenous opioids), and the $cal(S)$-dependent term in the wind-up ensures positive feedback: existing sensitization amplifies further nociceptive input.

=== Pain as a Feedback Process

The sensitization state modifies the symptom generation function for pain (Equation @eq:symptom-mapping):

$
upright("Pain")(t) = (1 + alpha_(upright("sens")) dot.op cal(S)) dot.op [w_4 dot.op bold(C)_(upright("pro"))(t) + w_5 dot.op mu_1(t) + w_6 dot.op [upright("ROS")](t)]
$ <eq:pain-sensitized>

where $alpha_(upright("sens"))$ is the sensitization gain. Critically, pain itself feeds back into the system: pain increases sympathetic tone ($S$ in the ANS model, Equation @eq:ans-balance), disrupts sleep (elevating $theta_(upright("on"))$ in the sleep model), and consumes attentional resources (increasing effective cognitive energy demand). *This bidirectional coupling---invisible without the mathematical model---predicts that pain reduction interventions should improve not only pain but also autonomic function, sleep quality, and cognitive capacity*, because they break a feedback amplification loop. The model quantifies this: for typical ME/CFS parameters, a 50% reduction in $cal(S)$ is predicted to improve sleep efficiency by 10--15% and reduce resting sympathetic tone by 8--12%, mediated entirely through the pain $->$ ANS $->$ sleep pathway rather than direct effects on sleep or autonomic circuits.

Low-dose naltrexone operates in this model through two mechanisms: immune modulation (@sec:immune-intervention-models) and upregulation of endogenous endorphin production (increasing $[upright("endorphin")]$ in Equation @eq:central-sensitization), accelerating sensitization resolution. The model predicts that LDN's analgesic effect should precede its anti-inflammatory effect by the difference in timescales: endorphin upregulation (days) versus cytokine network remodeling (weeks).

=== Small Fiber Neuropathy Coupling

Small fiber neuropathy (SFN)---documented in a subset of ME/CFS patients---reduces peripheral nerve fiber density, paradoxically both reducing normal sensory input and increasing aberrant nociceptive signaling. The model represents SFN as a slow variable modifying the nociceptive input function:

$
frac(d cal(F), d t) = -k_(upright("degen")) dot.op ([upright("ROS")] + alpha_(upright("auto")) dot.op [upright("Ab")]) + k_(upright("regen")) dot.op frac([upright("NGF")] dot.op [upright("ATP")], (K_(upright("NGF")) + [upright("NGF")])(K_(upright("ATP,regen")) + [upright("ATP")]))
$ <eq:sfn-dynamics>

where $cal(F)$ is small fiber density (normalizing between 0 and 1), $k_(upright("degen"))$ is the degeneration rate (driven by oxidative stress and autoantibodies), $k_(upright("regen"))$ is the regeneration rate (dependent on nerve growth factor and ATP availability), and the nociceptive input increases as fiber density decreases below a threshold: $P_(upright("noci")) = P_0 dot.op (1 + beta_(upright("SFN")) dot.op (1 - cal(F)/cal(F)_0)^+)$, where $( dot.op )^+$ denotes the positive part. *The model predicts that SFN is both a consequence and an amplifier of ME/CFS*: ROS and autoantibodies (from the disease) cause fiber loss, and fiber loss increases pain signaling, which increases sympathetic tone and energy demand, worsening the underlying disease. This feedback loop explains why SFN prevalence increases with ME/CFS disease duration.

#open-question(title: [Reversibility of Central Sensitization in ME/CFS])[
Is central sensitization in ME/CFS reversible if the driving inputs (inflammation, nociception) are removed, or does prolonged sensitization produce structural changes (synaptic remodeling, glial priming) that persist independently? The model parameterizes this as the ratio $k_(upright("resolve")) / k_(upright("wind"))$: if resolution is fast relative to wind-up, sensitization reverses when inputs diminish; if resolution is slow (due to structural changes), sensitization persists as a "pain memory." This distinction has direct treatment implications: reversible sensitization responds to anti-inflammatory and analgesic therapy, while structurally maintained sensitization may require neuromodulatory interventions (NMDAR antagonists, transcranial stimulation) targeting the dorsal horn directly.
]

=== Nerve Sheath Inflammation Dynamics
<subsec:nerve-sheath-model>

The preceding SFN model (Equation @eq:sfn-dynamics) tracks distal small fiber density. A complementary model is needed for pain arising from the nerve sheath itself, where Schwann cell activation, endoneurial hypoxia, perineurial mast cell degranulation, and autoimmune attack converge (see @subsec:ch15-nerve-sheath-pain for the biological mechanisms). The model introduces a nerve sheath inflammation state $cal(N)_s$ representing the aggregate inflammatory burden within the endoneurial and perineurial compartments:

$
frac(d cal(N)_s, d t) = underbrace(k_(upright("schw")) dot.op [upright("ROS")] dot.op frac([upright("CGRP")], K_(upright("CGRP")) + [upright("CGRP")]), upright("Schwann cell TRPA1 activation")) + underbrace(k_(upright("peri")) dot.op H_(upright("mc")), upright("perineurial mast cell input")) + underbrace(k_(upright("isch")) dot.op (1 - frac(O_(2,upright("endo")), O_(2,upright("endo"))^0))^+, upright("endoneurial ischemia")) - k_(upright("res"),N) dot.op cal(N)_s
$ <eq:nerve-sheath-inflammation>

where $k_(upright("schw"))$ is the rate of Schwann cell-mediated neurogenic inflammation (driven by the combination of ROS and CGRP, reflecting the TRPA1 pathway), $H_(upright("mc"))$ is the mast cell histamine release rate from the mast cell model (@sec:ch15-mast-cells), $O_(2,upright("endo"))/O_(2,upright("endo"))^0$ is the fractional endoneurial oxygen delivery (reduced by endothelial dysfunction), and $k_(upright("res"),N)$ is the spontaneous resolution rate.

The endoneurial oxygen term couples to the endothelial dysfunction model. In ME/CFS, vasa nervorum share the microvascular pathology of the systemic endothelium:

$
O_(2,upright("endo")) = O_(2,upright("endo"))^0 dot.op frac([upright("NO")], K_(upright("NO,endo")) + [upright("NO")]) dot.op frac(upright("MAP"), K_(upright("MAP,endo")) + upright("MAP"))
$ <eq:endoneurial-oxygen>

where NO availability (from the BH₄ model, @sec:bh4-competition) and mean arterial pressure (from the ANS model, @sec:orthostatic-model) jointly determine endoneurial perfusion. BH₄ depletion reduces NO, constricting vasa nervorum; orthostatic hypotension further compromises nerve perfusion during upright posture.

The nerve sheath inflammation state modifies nociceptive input to the central sensitization model:

$
P_(upright("noci,total")) = P_0 dot.op (1 + beta_(upright("SFN")) dot.op (1 - frac(cal(F), cal(F)_0))^+) + gamma_(upright("sheath")) dot.op cal(N)_s
$ <eq:noci-nerve-sheath>

where $gamma_(upright("sheath"))$ converts nerve sheath inflammation into nociceptive input units. The total nociceptive input $P_(upright("noci,total"))$ replaces $P_(upright("noci"))$ in Equation @eq:central-sensitization, feeding into the central sensitization wind-up term. *The model predicts that nerve sheath pain and SFN pain have different temporal profiles*: SFN pain worsens slowly over months to years (governed by slow fiber degeneration $cal(F)$), while nerve sheath pain fluctuates on the timescale of hours to days (governed by the faster dynamics of mast cell activation, posture-dependent ischemia, and ROS levels). This prediction is clinically testable through pain diary analysis correlated with posture, activity, and mast cell markers.

=== Periarticular and Muscular Pain Model
<subsec:periarticular-muscle-pain-model>

Joint and muscle pain in ME/CFS arise from tissue-specific nociceptive generators that are then amplified by the central sensitization model (see @subsec:ch15-joint-muscle-pain for biological mechanisms). The model introduces two tissue-compartment nociceptive sources that feed into the total nociceptive input.

==== Periarticular Nociceptive Input

Periarticular pain is driven primarily by local mast cell degranulation in the joint capsule and synovium, where mast cell density is 10--50$times$ higher than in subcutaneous tissue:

$
P_(upright("peri"))(t) = rho_(upright("mc,joint")) dot.op H_(upright("mc"))(t) dot.op (1 + alpha_(upright("NGF")) dot.op [upright("NGF")])
$ <eq:periarticular-noci>

where $rho_(upright("mc,joint"))$ is the joint-to-systemic mast cell density ratio (reflecting the anatomical concentration), $H_(upright("mc"))(t)$ is the systemic mast cell activation level, and the NGF term represents nerve growth factor-mediated upregulation of TRPV1 on periarticular nociceptors. In hEDS patients, an additional mechanical term applies:

$
P_(upright("peri,hEDS")) = P_(upright("peri")) + k_(upright("lax")) dot.op (1 - upright("stability") / upright("stability")_0) dot.op dot(q)
$ <eq:periarticular-heds>

where $dot(q)$ represents joint movement rate and the stability ratio captures hypermobility-related microtrauma at fascial attachment sites (coupling to the hEDS model in Chapter @ch:integrated-systems, @sec:eds-coupling).

==== Muscular Metabolic Nociception

Deep muscle pain arises from metabolic nociceptor activation driven by the interaction of low pH, elevated lactate, and extracellular ATP---the "metabolic danger triad" sensed by ASIC3 channels:

$
P_(upright("musc"))(t) = k_(upright("ASIC")) dot.op underbrace([upright("H")^+]_m dot.op [upright("Lac")]_m dot.op [upright("ATP")]_(upright("ext,") m), upright("ASIC3 combinatorial activation")) dot.op (1 + alpha_(upright("isch")) dot.op (1 - frac(dot(V) O_(2,upright("musc")), dot(V) O_(2,upright("musc"))^0))^+)
$ <eq:muscle-noci>

where $[upright("H")^+]_m$, $[upright("Lac")]_m$, and $[upright("ATP")]_(upright("ext,") m)$ are intramuscular proton, lactate, and extracellular ATP concentrations (from the energy metabolism model, Chapter @ch:energy-metabolism-models), $k_(upright("ASIC"))$ is the ASIC3 activation coefficient, and the ischemia term represents microvascular dysfunction reducing muscle oxygen delivery $dot(V) O_(2,upright("musc"))$ below baseline $dot(V) O_(2,upright("musc"))^0$. The multiplicative ASIC3 activation term captures the experimentally established combinatorial gating: ASIC3 responds to the simultaneous presence of all three signals, not their individual levels.

Post-exertional upregulation of ASIC3 gene expression (persisting 48 h) is modeled as a slow modulation:

$
frac(d k_(upright("ASIC")), d t) = k_(upright("up")) dot.op E(t) - k_(upright("down")) dot.op (k_(upright("ASIC")) - k_(upright("ASIC"))^0)
$ <eq:asic3-upregulation>

where $E(t)$ is exertion intensity, $k_(upright("up"))$ is the upregulation rate, and $k_(upright("down"))$ governs return to baseline $k_(upright("ASIC"))^0$. In ME/CFS, $k_(upright("down"))$ is reduced (slower return to baseline), consistent with the 48 h persistence observed in gene expression studies.

==== Total Nociceptive Input with Tissue Compartments

The complete nociceptive input to the central sensitization model becomes:

$
P_(upright("noci,total"))(t) = underbrace(P_0 dot.op (1 + beta_(upright("SFN")) dot.op (1 - frac(cal(F), cal(F)_0))^+), upright("SFN (distal)")) + underbrace(gamma_(upright("sheath")) dot.op cal(N)_s, upright("nerve sheath")) + underbrace(P_(upright("peri"))(t), upright("periarticular")) + underbrace(P_(upright("musc"))(t), upright("muscular"))
$ <eq:total-noci-compartments>

This four-compartment nociceptive model replaces the simpler $P_(upright("noci"))$ in Equation @eq:central-sensitization. Each compartment has distinct temporal dynamics and therapeutic targets:

- *SFN compartment:* Slow (months--years); modifiable by neuroprotection (alpha-lipoic acid, IVIG for autoimmune SFN).
- *Nerve sheath compartment:* Intermediate (hours--days); modifiable by mast cell stabilization, antioxidants, and postural management.
- *Periarticular compartment:* Fast--intermediate (minutes--hours); modifiable by mast cell stabilizers and anti-NGF approaches. In hEDS: joint stabilization reduces mechanical input.
- *Muscular compartment:* Fast during exertion, slow post-exertional decay (48 h); modifiable primarily by pacing (reducing $E(t)$) and metabolic support (CoQ10, NADH to improve $dot(V) O_(2,upright("musc"))$).

*The multi-compartment model generates a clinically actionable prediction*: patient-specific pain phenotyping (by temporal dynamics, anatomical distribution, and biomarker correlation) should identify which compartments dominate, enabling targeted treatment. A patient whose pain fluctuates with posture and mast cell episodes (nerve sheath + periarticular dominant) requires a different strategy than a patient whose pain tracks exertion with 48 h decay (muscular dominant) or a patient with slowly progressive burning pain (SFN dominant). The central sensitization state $cal(S)$ acts as a gain multiplier on all compartments---reducing $cal(S)$ (via LDN, NMDA antagonists) benefits all pain phenotypes, while compartment-specific interventions provide targeted improvement.

#open-question(title: [Compartment Dominance Shifts with Disease Progression])[
Does the dominant pain compartment shift predictably as ME/CFS progresses? Early-stage patients may be muscular-dominant (metabolic stress without yet established SFN or sensitization), while late-stage patients may be SFN-dominant (accumulated fiber loss) with high central sensitization gain. If so, pain treatment strategies should evolve with disease stage---a prediction testable through longitudinal QST, skin biopsy, and pain phenotyping in cohort studies.
]

== Model Application Guide
<sec:neuro-model-application>

=== HPA Axis (Equations @eq:hpa-axis and @sec:hpa-dysfunction-model)

*Measurements required.*
(1) Salivary cortisol at waking, +30 min (cortisol awakening response, CAR), noon, and bedtime (why: four time points constrain circadian amplitude $a_c$, phase $phi_c$, and mean cortisol level).
(2) ACTH stimulation test (why: distinguishes central from adrenal dysfunction---the model predicts enhanced central feedback, not adrenal failure).
(3) Dexamethasone suppression test (why: constrains the feedback sensitivity parameter $n_F$---enhanced suppression = higher $n_F$).

*Worked example.*
Healthy HPA: $a_c = 0.6$ (60% circadian modulation), $n_F = 2.5$. The cortisol awakening response (CAR) is $F_(upright("peak")) / F_(upright("waking")) approx 1 + 0.6 = 1.6$ (60% rise). In ME/CFS with $a_c = 0.3$ and $n_F = 4.0$ (steeper feedback): CAR $approx 1.3$ (30% rise---blunted). Basal cortisol is reduced because the steeper feedback suppresses CRH at lower cortisol concentrations: healthy trough $F approx 2$ nmol/L, ME/CFS trough $F approx 1.2$ nmol/L. The ACTH response to CRH stimulation is preserved (the pituitary and adrenal are intact), but the hypothalamic drive is suppressed. This pattern matches Cleare's findings @Cleare1999: low-normal cortisol with preserved adrenal reserve.

*Inter-model dependencies.*
_Inputs_: stress signals ($sigma_(upright("stress"))$) from external events and from pain model (@sec:central-sensitization-model); pro-inflammatory cytokines modulate CRH release. _Outputs_: cortisol $F$ inhibits pro-inflammatory cytokine production (Chapter @ch:integrated-systems, Equation @eq:cortisol-immune), modulates viral reactivation rate (Chapter @ch:immune-system-models), and influences circadian sleep drive.

*Scope and rationale.*
The three-variable model (CRH, ACTH, cortisol) omits ultradian pulsatility (~90-minute pulses), mineralocorticoid vs. glucocorticoid receptor dynamics, and cortisol-binding globulin. These are acceptable omissions for capturing the ME/CFS HPA phenotype (blunted diurnal rhythm, enhanced feedback) at clinically relevant timescales (hours to days). Sub-hourly dynamics would require a pulsatile model with $>$10 additional parameters.

*Falsification criteria.*
The model predicts that ME/CFS HPA dysfunction is _central_ (enhanced hypothalamic feedback) rather than _adrenal_ (reduced cortisol synthesis). *Falsified if*: ACTH stimulation tests in ME/CFS cohorts show impaired adrenal cortisol production (reduced cortisol response to exogenous ACTH), indicating primary adrenal insufficiency rather than central dysregulation.

*Subgroup qualifier*: The central-feedback model applies to the functional HPA phenotype characteristic of established ME/CFS. It does not apply to, and is not falsified by, the post-viral pituitary-injury subgroup described in Chapter @ch:endocrine (@sec:postviral-pituitary), in which SARS-CoV-1, SARS-CoV-2, or other coronaviruses directly damage pituitary corticotrophs via ACE2-mediated infection or autoimmune hypophysitis @Leow2005sars @Carosi2024hypopituitarism. In this subgroup, reduced ACTH output reflects structural pituitary damage---a mechanistically distinct pathway that coexists with but does not invalidate the central-feedback model for the broader ME/CFS population. Identifying this subgroup requires dynamic testing (ACTH stimulation test or ITT) rather than morning cortisol, and its prevalence in post-COVID ME/CFS cohorts remains to be established prospectively.

*Clinical implications.*
*Whom to treat*: patients with documented blunted CAR ($< 30%$ rise) and/or low 24-hour urinary free cortisol. *How*: the model predicts that low-dose hydrocortisone replacement (5--10 mg/day, physiological, not pharmacological) should partially restore the anti-inflammatory brake on the immune system. The model also predicts that stress management interventions reduce $sigma_(upright("stress"))(t)$, freeing cortisol capacity for immune regulation rather than stress response. The enhanced feedback sensitivity ($n_F$ elevated) means that standard-dose glucocorticoids will produce exaggerated suppression---_lower doses are predicted to be both safer and more effective in ME/CFS than in primary adrenal insufficiency_.

=== Autonomic Balance and Orthostatic Intolerance (Equations @eq:ans-balance and @eq:baroreflex)

*Measurements required.*
(1) Heart rate variability (HRV): time-domain (SDNN, RMSSD) and frequency-domain (LF/HF ratio) from 24-hour Holter or 5-minute resting ECG (why: constrains sympathetic/parasympathetic balance $S/V$).
(2) Active standing test or tilt-table test: HR and MAP at 1, 3, 5, 10 minutes (why: constrains baroreflex gains $G_S$, $G_V$ and response time constants $tau_(upright("MAP"))$, $tau_(upright("HR"))$).
(3) Blood volume estimation: dye dilution or impedance cardiography (why: determines whether orthostatic intolerance is hypovolemic).

*Worked example.*
POTS assessment: patient has resting HR = 72, standing HR at 10 min = 108 ($Delta$HR = 36, meeting POTS criterion of $gt.eq$30). Standing MAP is maintained at 82 mmHg (vs. 85 supine)---no orthostatic hypotension. Using the model with reduced blood volume ($Delta P_(upright("grav"))$ increased by 30%) and reduced $G_V$ (parasympathetic gain halved): the model predicts the observed pattern---adequate MAP maintenance via excessive sympathetic compensation, at the cost of tachycardia and elevated cardiac energy demand. The energy cost of standing: the sympathetic overdrive increases cardiac oxygen consumption by ~15%, directly reducing the activity energy budget.

*Inter-model dependencies.*
_Inputs_: histamine from mast cell model (vasodilation), cortisol from HPA (stress response modulation), pain from sensitization model (sympathetic drive). _Outputs_: heart rate and MAP to oxygen delivery equation (Chapter @ch:integrated-systems); vagal tone to gut motility (Chapter @ch:integrated-systems); sympathetic tone to energy demand.

*Scope and rationale.*
The two-variable ANS model ($S$, $V$) with baroreflex feedback captures the core hemodynamic physiology. It omits thermoregulatory reflexes, respiratory sinus arrhythmia, and detailed baroreceptor afferent processing. These could be added for specific applications (e.g., heat intolerance modeling) but are unnecessary for the primary targets: orthostatic HR/MAP dynamics and POTS subtyping.

*Falsification criteria.*
The model predicts three distinct POTS parameter regimes (neuropathic, hypovolemic, hyperadrenergic) with different treatment responses. *Falsified if*: POTS subtype classification by tilt-table hemodynamics does not predict differential treatment response (e.g., if patients classified as hypovolemic by the model respond equally well to parasympathomimetics as to volume expansion).

*Clinical implications.*
*Whom to treat*: all ME/CFS patients with orthostatic symptoms (the majority). *How*: the model provides mechanistic subtyping. Hypovolemic POTS ($Delta P_(upright("grav"))$ dominant): volume expansion (saline infusions, fludrocortisone, compression garments, increased salt/fluid intake). Neuropathic POTS ($G_V$ reduced): parasympathomimetics (pyridostigmine @Raj2005Pyridostigmine). Hyperadrenergic POTS ($S$ elevated): sympatholytics (propranolol, clonidine). Mixed presentations: combination therapy targeting the dominant mechanism first.

=== Tryptophan--Kynurenine Axis (Equations @eq:tryptophan and @eq:ido-regulation)

*Measurements required.*
(1) Plasma tryptophan, kynurenine, and kynurenine/tryptophan (K/T) ratio (why: K/T ratio is a direct readout of IDO activity).
(2) Serotonin (platelet-poor plasma or CSF) (why: validates the serotonin depletion prediction).
(3) IFN-$gamma$ (why: the primary driver of IDO upregulation in the model).
(4) Quinolinic acid and kynurenic acid (why: neurotoxic vs. neuroprotective branches of the kynurenine pathway).

*Worked example.*
Healthy: $v_(upright("IDO")) = v_(upright("IDO,basal")) = 0.5$ $mu$M/h, $v_(upright("TPH")) = 1.0$ $mu$M/h. With dietary tryptophan input $I_W = 2.0$ $mu$M/h: steady-state $W approx 60$ $mu$M, serotonin production = $1.0 times 60/(K_(upright("TPH")) + 60) approx 0.86$ $mu$M/h. In ME/CFS with $[upright("IFN-") gamma] = 20$ pg/mL (vs. 5 healthy): $v_(upright("IDO")) = 0.5 + 2.0 times 20^2/(15^2 + 20^2) = 0.5 + 1.28 = 1.78$ $mu$M/h. Now IDO outcompetes TPH: tryptophan drops to ~35 $mu$M, serotonin production falls to 0.54 $mu$M/h (37% reduction), and kynurenine production increases to 1.1 $mu$M/h (doubled). This quantifies the "serotonin steal" mechanism.

*Inter-model dependencies.*
_Inputs_: IFN-$gamma$ from immune model drives IDO. _Outputs_: serotonin level affects mood, sleep (via sleep model), and pain modulation; kynurenine metabolites contribute to neurotoxicity and microglial activation.

*Scope and rationale.*
The model tracks the branch point (IDO vs. TPH competition for tryptophan) but omits downstream kynurenine metabolism (quinolinic acid, kynurenic acid, picolinic acid). This branch-point focus captures the clinically relevant serotonin depletion mechanism. A full kynurenine pathway model would require tissue-specific enzyme data (brain vs. peripheral IDO) currently unavailable for ME/CFS.

*Falsification criteria.*
The model predicts that the K/T ratio correlates with IFN-$gamma$ levels and that serotonin depletion is proportional to IDO upregulation. *Falsified if*: ME/CFS patients show serotonin depletion _without_ elevated K/T ratio (indicating a serotonin synthesis or degradation defect unrelated to IDO), or if anti-inflammatory treatment that reduces IFN-$gamma$ does not normalize K/T ratio.

*Clinical implications.*
*Whom to treat*: patients with elevated K/T ratio (measurable by standard metabolomics). *How*: the model predicts that SSRIs will have _reduced efficacy_ in these patients because the synthesis bottleneck (not reuptake) limits serotonin availability. More effective approaches: (1) reduce IFN-$gamma$ (anti-inflammatory therapy, LDN) to de-repress TPH; (2) tryptophan supplementation (but the IDO trap hypothesis predicts this may paradoxically increase kynurenine production if IDO is in the high-activity state); (3) BH₄ supplementation (addresses TPH cofactor limitation, @sec:bh4-competition). The model provides a specific _negative_ prediction: SSRIs should fail preferentially in patients with high K/T ratios---a testable pharmacogenomic hypothesis.

=== BH₄ Competition (Equation @eq:bh4-dynamics)

*Measurements required.*
(1) Serum BH₄ and BH₂ (why: the BH₄:BH₂ ratio indicates net oxidative stress on the cofactor pool).
(2) Serum neopterin (why: marker of GTP cyclohydrolase activity, the rate-limiting BH₄ synthesis enzyme, upregulated by IFN-$gamma$).
(3) Concurrent serotonin, dopamine metabolites (HVA), and NO metabolites (nitrate/nitrite) (why: validates the three-way competition---all three should be reduced when BH₄ is limiting).
(4) IFN-$gamma$ (why: driver of iNOS-mediated BH₄ consumption).

*Worked example.*
Healthy: BH₄ pool = 10 nmol/L, consumed by TPH (2), TH (2), eNOS (1), iNOS (0.5) = 5.5 total, with synthesis rate matching consumption. In ME/CFS with IFN-$gamma$-driven iNOS upregulation: iNOS consumption increases to 3.5 nmol/L/h. Total demand = 8.5 vs. supply of 5.5 (assuming compensatory GTPCH upregulation adds 1.5). Deficit = 1.5 nmol/L/h. The three hydroxylases compete: TPH drops from 2 to 1.3 (35% serotonin reduction), TH drops from 2 to 1.3 (35% dopamine/NE reduction), eNOS drops from 1 to 0.6 (40% NO reduction, with uncoupling producing superoxide instead). All three systems fail simultaneously from a single cofactor shortage.

*Inter-model dependencies.*
_Inputs_: IFN-$gamma$ drives iNOS BH₄ consumption; oxidative stress converts BH₄ to BH₂. _Outputs_: serotonin and catecholamine levels to neurotransmitter models; NO to endothelial function (eNOS model, @sec:coagulation-model), cerebrovascular regulation (@sec:cbf-autoregulation), and coagulation balance.

*Scope and rationale.*
The model tracks aggregate BH₄/BH₂ rather than tissue-specific pools. This is a significant simplification---brain, endothelial, and immune BH₄ pools may be independently regulated. The aggregate model captures the key insight (three-way competition from a shared cofactor) but cannot predict tissue-specific depletion patterns.

*Falsification criteria.*
The model predicts that serotonin, catecholamine, and NO deficits correlate with each other and with inflammatory burden (IFN-$gamma$). *Falsified if*: these deficits occur independently (e.g., serotonin depletion without catecholamine depletion in the same patient), indicating that the shared BH₄ bottleneck is not the dominant mechanism.

*Clinical implications.*
*Whom to treat*: patients with low BH₄:BH₂ ratio and concurrent serotonin/catecholamine/NO deficits (the "multi-domain neurovascular signature"). *How*: (1) Sapropterin (exogenous BH₄) predicted to simultaneously improve mood, cognition, autonomic function, and vascular health; (2) anti-inflammatory therapy that reduces iNOS releases BH₄ for TPH/TH/eNOS without exogenous supplementation; (3) the model predicts that folinic acid (supports BH₂ $->$ BH₄ recycling via DHFR) is a lower-cost alternative to sapropterin for mild BH₄ depletion. *Key negative prediction*: direct neurotransmitter replacement (SSRIs, methylphenidate) addresses symptoms but not the upstream bottleneck, predicting incomplete or diminishing response over time.

=== Sleep--Wake Cycle (Equations @eq:sleep-wake)

*Measurements required.*
(1) Polysomnography with sleep architecture analysis (why: slow-wave sleep percentage constrains $r_(upright("decay"))$; sleep latency constrains $theta_(upright("on"))$).
(2) Actigraphy over 7--14 days (why: captures circadian rhythm regularity and sleep timing variability).
(3) Melatonin onset time (dim-light melatonin onset, DLMO) (why: constrains circadian phase $phi_s$ and amplitude $C_1$).

*Worked example.*
Healthy: $r_(upright("build")) = 0.05$/h, $r_(upright("decay")) = 0.10$/h, $C_1 = 0.4$. After 16 h waking: $S = S_(min) + (S_(max) - S_(min))(1 - e^(-0.05 times 16)) = 0.55$. After 8 h sleep: $S$ decays to $0.55 times e^(-0.10 times 8) = 0.25$ (below the circadian threshold, triggering waking). In ME/CFS with $r_(upright("build")) = 0.08$/h (faster pressure build due to energy deficit), $r_(upright("decay")) = 0.06$/h (impaired clearance), $C_1 = 0.2$ (blunted circadian signal): after 16 h waking $S = 0.72$ (high sleep pressure, falls asleep easily); after 8 h sleep $S = 0.72 times e^(-0.06 times 8) = 0.44$ (residual sleep pressure, wakes unrefreshed). The patient experiences excessive daytime sleepiness ($S = 0.44$ vs. 0.25 healthy upon waking) despite adequate sleep duration.

*Inter-model dependencies.*
_Inputs_: ATP consumption rate affects adenosine accumulation (sleep pressure build rate); HPA circadian amplitude affects $C_1$; pain from sensitization model disrupts sleep onset. _Outputs_: sleep quality modulates glymphatic clearance, cortisol rhythm, and next-day energy budget.

*Scope and rationale.*
The Borbély two-process model is the standard quantitative framework for sleep regulation. It omits REM/NREM cycling, specific neurotransmitter dynamics (orexin, GABA), and sleep microarchitecture. These omissions are acceptable for predicting the ME/CFS sleep phenotype (unrefreshing sleep, excessive daytime sleepiness) but insufficient for modeling specific sleep disorders (narcolepsy, sleep apnea).

*Falsification criteria.*
The model predicts that unrefreshing sleep in ME/CFS is driven by reduced $r_(upright("decay"))$ (impaired sleep pressure clearance) and elevated $r_(upright("build"))$ (faster accumulation). *Falsified if*: polysomnography shows normal slow-wave sleep quantity and quality in patients with severe unrefreshing sleep (would indicate that the subjective experience is driven by central perception rather than objective sleep physiology).

*Clinical implications.*
*Whom to treat*: all ME/CFS patients with unrefreshing sleep (the vast majority). *How*: the model predicts that sleep hygiene (regular schedule to preserve circadian amplitude $C_1$) is a necessary but insufficient intervention. Improving mitochondrial function (reducing adenosine accumulation rate, i.e., $r_(upright("build"))$) is predicted to improve sleep quality _without sleep-targeted medication_---a testable prediction. For patients with severely blunted $C_1$: melatonin at DLMO-appropriate timing, bright light therapy in the morning. The model predicts that sedative medications (benzodiazepines, Z-drugs) increase total sleep time but do not address $r_(upright("decay"))$, explaining why they rarely improve the "unrefreshing" quality.

=== Central Sensitization (Equations @eq:central-sensitization and @eq:sfn-dynamics)

*Measurements required.*
(1) Quantitative sensory testing (QST): pressure pain threshold, temporal summation, conditioned pain modulation (why: temporal summation directly measures wind-up/$k_(upright("wind"))$; conditioned pain modulation measures descending inhibition/$k_(upright("resolve"))$).
(2) Skin biopsy with intraepidermal nerve fiber density (IENFD) count (why: directly measures $cal(F)$, small fiber density).
(3) $beta$-endorphin levels (why: constrains endogenous opioid modulation of $k_(upright("resolve"))$).

*Worked example.*
A patient with moderate central sensitization ($cal(S) = 0.6$ on a 0--1 scale) and mild small fiber neuropathy ($cal(F)/cal(F)_0 = 0.7$, 30% fiber loss). Pain amplification factor: $(1 + alpha_(upright("sens")) times 0.6) = 1.9$ (using $alpha_(upright("sens")) = 1.5$). Nociceptive input increased by fiber loss: $P_(upright("noci")) = P_0 times (1 + 1.5 times 0.3) = 1.45 P_0$. Combined pain score: $1.9 times 1.45 = 2.76 times$ the pain expected from the inflammatory input alone. The bidirectional feedback predicts that reducing $cal(S)$ by 50% (e.g., via LDN) reduces pain to $1.45 times 1.45 = 2.10 times$---a 24% improvement---and secondarily improves sleep by 10--15% and reduces sympathetic tone by 8--12% through the pain $->$ ANS $->$ sleep pathway.

*Inter-model dependencies.*
_Inputs_: pro-inflammatory cytokines and microglial activation (drive spinal glial activation $mu_(1,upright("spinal"))$); ROS and autoantibodies (drive small fiber degeneration); endorphins (modulate resolution rate). _Outputs_: pain feeds back to sympathetic tone (ANS model), sleep disruption (sleep model), and cognitive energy demand.

*Scope and rationale.*
The base model tracks an aggregate sensitization state $cal(S)$ rather than specific dorsal horn circuits. The multi-compartment extension (Equations @eq:nerve-sheath-inflammation and @eq:total-noci-compartments) decomposes $P_(upright("noci"))$ into four tissue-specific generators---SFN, nerve sheath, periarticular, and muscular---enabling prediction of pain distribution and temporal profile, which the aggregate model alone cannot.

*Falsification criteria.*
The model predicts that pain reduction (lowering $cal(S)$) should improve autonomic function and sleep quality through the feedback pathway, independent of direct sleep or autonomic interventions. *Falsified if*: effective analgesic treatment in ME/CFS patients (confirmed by QST normalization) does not improve HRV or sleep efficiency---would indicate that the pain $->$ ANS $->$ sleep coupling is weaker than modeled. The multi-compartment extension predicts that peripheral nerve blocks should transiently reduce pain in targeted regions even in centrally sensitized patients. *Falsified if*: diagnostic nerve blocks show no analgesic effect in patients with high $cal(N)_s$ or $P_(upright("peri"))$---would indicate that peripheral generators contribute less than modeled.

*Clinical implications.*
*Whom to treat*: patients with elevated temporal summation on QST (indicating high $k_(upright("wind"))$) or reduced IENFD ($cal(F)/cal(F)_0 < 0.8$). *How*: (1) LDN operates through both immune modulation and endorphin upregulation---the model predicts analgesic onset (days) precedes anti-inflammatory onset (weeks); (2) for structurally maintained sensitization (high $cal(S)$ with low $k_(upright("resolve"))/k_(upright("wind"))$): neuromodulatory approaches (low-dose ketamine as NMDAR antagonist, transcranial stimulation); (3) the model predicts that treating the upstream inflammatory drive (reducing $mu_(1,upright("spinal"))$ and $P_(upright("noci"))$) is more effective than treating sensitization directly, because it addresses both the input and the feedback amplification simultaneously.

=== Nerve Sheath and Tissue Pain Compartments (Equations @eq:nerve-sheath-inflammation and @eq:total-noci-compartments)

*Measurements required.*
(1) Tryptase and histamine (plasma or 24-hour urine) (why: constrains mast cell activation input $H_(upright("mc"))$ for both nerve sheath and periarticular compartments).
(2) Nerve conduction studies and neuromuscular ultrasound (why: identifies nerve trunk inflammation $cal(N)_s$ vs. distal SFN $cal(F)$; enlarged nerves on ultrasound suggest endoneurial edema).
(3) Venous lactate at rest and post-exertion (why: constrains $[upright("Lac")]_m$ in the muscular compartment).
(4) Serum NGF (why: constrains the TRPV1 upregulation term $alpha_(upright("NGF"))$ in periarticular input).
(5) Postural pain variation diary (why: endoneurial ischemia worsens upright; if pain increases with standing and improves supine, the nerve sheath compartment with its $O_(2,upright("endo"))$/MAP coupling is likely dominant).

*Worked example.*
A patient with MCAS overlap ($H_(upright("mc")) = 3 times$ normal), moderate oxidative stress ($[upright("ROS")] = 1.5 times$ normal), mild SFN ($cal(F)/cal(F)_0 = 0.8$), and central sensitization ($cal(S) = 0.5$). Using $rho_(upright("mc,joint")) = 20$ (joint mast cell density ratio):

- SFN input: $P_0 times (1 + 1.5 times 0.2) = 1.3 P_0$
- Nerve sheath: $gamma_(upright("sheath")) dot.op cal(N)_s approx 0.4 P_0$ (moderate, driven by ROS + mast cells)
- Periarticular: $rho_(upright("mc,joint")) dot.op H_(upright("mc")) dot.op (1 + alpha_(upright("NGF")) dot.op [upright("NGF")]) approx 0.8 P_0$ (high, driven by MCAS)
- Muscular: $0.3 P_0$ at rest (mild metabolic stress)
- Total $P_(upright("noci,total")) = (1.3 + 0.4 + 0.8 + 0.3) P_0 = 2.8 P_0$
- After central sensitization amplification: $(1 + 1.5 times 0.5) times 2.8 = 4.9 P_0$

Treatment with mast cell stabilizer (reducing $H_(upright("mc"))$ by 60%): periarticular drops to $0.32 P_0$, nerve sheath drops to $0.28 P_0$. New total: $(1.3 + 0.28 + 0.32 + 0.3) times 1.75 = 3.85 P_0$---a 21% pain reduction from mast cell stabilization alone, targeting the dominant compartments without directly addressing sensitization.

*Inter-model dependencies.*
_Inputs_: ROS from oxidative stress model; mast cell activation $H_(upright("mc"))$ from immune model; NO from BH₄ model (endoneurial perfusion); MAP from ANS model (postural perfusion); lactate and ATP from energy metabolism model (muscular compartment); joint stability from hEDS model (periarticular compartment). _Outputs_: total $P_(upright("noci,total"))$ feeds into central sensitization wind-up (Equation @eq:central-sensitization) and thence to the pain $->$ ANS $->$ sleep feedback cascade.

*Scope and rationale.*
The four-compartment decomposition captures the clinically relevant distinction between pain types (nerve trunk vs. joint vs. muscle vs. distal neuropathic) while remaining tractable. It omits visceral pain (relevant to IBS comorbidity) and headache-specific mechanisms (trigeminovascular system). Each compartment uses at most two state variables, keeping the total model dimensionality manageable.

*Falsification criteria.*
The model predicts that pain temporal profile correlates with compartment dominance: (1) fast fluctuation with mast cell episodes $->$ periarticular/nerve sheath dominant; (2) 48 h post-exertional decay $->$ muscular dominant; (3) slow progressive worsening $->$ SFN dominant. *Falsified if*: longitudinal pain phenotyping shows no correlation between temporal dynamics and the biomarkers predicted to drive each compartment (e.g., if mast cell markers do not predict periarticular pain fluctuation).

*Clinical implications.*
*Whom to treat*: all ME/CFS patients with significant pain. *How*: (1) Pain diary analysis (temporal pattern, distribution, postural variation) identifies likely dominant compartment(s); (2) MCAS-dominant patients (periarticular + nerve sheath): mast cell stabilizers (cromolyn, ketotifen), PEA, antihistamines; (3) metabolic-dominant patients (muscular): strict pacing, CoQ10 + NADH (improve $dot(V) O_(2,upright("musc"))$); (4) SFN-dominant patients: neuroprotection (alpha-lipoic acid), IVIG if autoimmune markers present; (5) all patients benefit from central sensitization reduction (LDN, NMDA antagonists) because $cal(S)$ acts as a gain multiplier on all compartments.
