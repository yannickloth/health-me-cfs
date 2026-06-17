#import "../../../shared/environments.typ": *

== Summary: Integrated Cardiovascular Model
<sec:cv-summary>

Cardiovascular dysfunction in ME/CFS involves multiple interacting abnormalities (@walitt2024deep):

    - *Reduced blood volume*: Hypovolemia compromises cardiac preload and limits cardiac output reserve

    - *Autonomic dysfunction*: Parasympathetic withdrawal reduces HRV and impairs baroreflex function; chronotropic incompetence limits exercise heart rate response

    - *Endothelial dysfunction*: Impaired vasodilation reduces tissue perfusion

    - *Cardiac limitation*: Preload failure and chronotropic incompetence reduce maximal cardiac output

    - *Microcirculatory impairment*: Abnormal capillary perfusion and oxygen extraction limit peripheral oxygen delivery

    - *Exercise intolerance*: The cumulative effect is reduced VO#sub[2]peak and early anaerobic threshold, objectively confirmed by the NIH study

    - *Post-exertional deterioration*: Unique to ME/CFS, the failure to recover exercise capacity on day 2 CPET reflects pathological response to exertion

    - *Orthostatic intolerance*: Blood pressure dysregulation (POTS, NMH, OH) produces symptoms with upright posture

This cardiovascular dysfunction explains much of the disability in ME/CFS: patients cannot sustain physical activity because their cardiovascular system cannot deliver adequate oxygen to meet metabolic demands. The objective documentation of reduced VO#sub[2]peak and chronotropic incompetence in the NIH deep phenotyping study provides biological validation of patients' reported exercise intolerance. These cardiovascular abnormalities integrate with metabolic dysfunction (Chapter @ch:energy-metabolism), autonomic dysfunction (Chapter @ch:neurological), and immune dysregulation (Chapter @ch:immune-dysfunction) to produce the multi-system pathophysiology synthesized in Chapter @ch:integrative-models.

Treatment approaches targeting cardiovascular dysfunction include volume expansion (fludrocortisone, increased fluid and salt intake), direct-acting autonomic agents (midodrine as alpha-agonist for vasoconstriction), and careful activity management to avoid exceeding the reduced aerobic threshold. The efficacy of midodrine (acting directly on peripheral alpha-receptors) is consistent with any model in which peripheral vasoconstriction aids orthostatic tolerance — including simple hypovolemia, peripheral autonomic failure, or central coordination failure. It is not specific evidence for the selective energy dysfunction hypothesis, as multiple mechanistic frameworks predict the same clinical response.

The recognition that cardiovascular abnormalities are objective and measurable helps counter misconceptions that ME/CFS exercise intolerance reflects psychological factors or simple deconditioning. Charlton et al.\ (2026) formalized this argument in the _British Journal of Sports Medicine_, concluding that post-exertional malaise cannot be explained by cardiac deconditioning and calling for a fundamental rethinking of exercise pathophysiology in post-viral illness @Charlton2026pem.

#hypothesis(title: [Motor-Autonomic Coordination Overload Hypothesis])[

Physical activity requires simultaneous CNS coordination of motor output (muscle recruitment, movement planning, proprioceptive feedback) and autonomic regulation (heart rate adjustment, blood pressure maintenance, thermoregulation, respiratory drive). In healthy individuals, these coordination tasks operate efficiently within the brain's energy budget. We hypothesize that in ME/CFS, where CNS energy is the primary bottleneck (Section @sec:selective-dysfunction), motor and autonomic coordination compete for insufficient resources, causing both systems to fail under demand.

*The Dual-Coordination Problem.*
During exercise, the CNS must:

    - *Motor coordination*: Generate movement commands, integrate proprioceptive feedback, maintain balance, adjust force output—all requiring continuous cortical, cerebellar, and spinal processing.
    - *Autonomic coordination*: Increase heart rate, redistribute blood flow, maintain blood pressure during postural changes, regulate respiration, initiate sweating—all requiring brainstem and hypothalamic processing.
    - *Integration*: Coordinate motor and autonomic outputs so that cardiovascular supply matches muscular demand in real time.

In ME/CFS, if total CNS energy available for coordination is reduced, attempting both tasks simultaneously will exceed the available budget sooner than either task alone. This explains the central governor theory observation (@Noakes2004governor, @StClairGibson2004fatigue): the brain limits motor output to protect itself from energy depletion.

*ME/CFS-Specific Predictions.*
This hypothesis explains several puzzling CPET findings:

_Reduced VO#sub[2]peak beyond deconditioning._ The NIH deep phenotyping study documented VO#sub[2]peak reductions exceeding what deconditioning alone would predict @walitt2024deep. If the brain limits motor output to preserve autonomic coordination capacity, peak exercise performance reflects the CNS energy budget, not peripheral muscle capacity.

_Chronotropic incompetence._ The failure to achieve age-predicted maximal heart rate @walitt2024deep may reflect CNS prioritization: under energy constraint, the brain may reduce autonomic drive to the heart in order to preserve motor coordination, or vice versa. The specific pattern of failure depends on which system the CNS prioritizes in a given individual.

_Day-2 CPET deterioration._ The pathognomonic worsening on repeat CPET the following day reflects CNS energy depletion that has not recovered. The first test depletes CNS coordination reserves; insufficient recovery time means the second test starts from a lower baseline, producing objectively worse performance.

_PEM as coordination exhaustion._ Post-exertional malaise may represent the downstream consequence of depleting CNS coordination reserves. Once exhausted, the brain cannot adequately coordinate autonomic function (causing orthostatic symptoms, heart rate irregularity) or motor output (causing weakness, poor coordination), producing the multi-system symptom exacerbation characteristic of PEM.

*Testable Predictions.*

    - *Cognitive-physical interference*: ME/CFS patients should show greater cognitive impairment during physical activity (dual-task paradigm) than healthy controls, reflecting competition for shared CNS resources.
    - *Autonomic-motor trade-off*: During exercise, ME/CFS patients should show an inverse relationship between motor performance and autonomic function quality (e.g., better muscle output correlates with worse HRV, and vice versa).
    - *Separate-task preservation*: Motor tasks without significant autonomic demand (e.g., seated fine motor tasks) and autonomic challenges without motor demand (e.g., passive tilt testing) should each show less impairment than combined motor-autonomic challenges (e.g., exercise).
    - *Pharmacological bypass*: Agents that directly support autonomic function (midodrine, pyridostigmine) should improve exercise tolerance by offloading CNS autonomic coordination, freeing energy for motor output.

*Treatment Implications.*

    - *Pre-treatment with autonomic agents*: Taking autonomic-supporting medications before planned physical activity could extend exercise tolerance by reducing CNS autonomic coordination demands.
    - *Activity design*: Activities that minimize simultaneous motor-autonomic demand (recumbent exercise, swimming) should be better tolerated than upright weight-bearing exercise.
    - *Pacing rationale*: The coordination overload model provides a mechanistic rationale for pacing: staying below the threshold where motor and autonomic demands simultaneously exceed CNS capacity prevents the cascade of coordination failure that produces PEM.

*Limitations.*
The hypothesis assumes CNS energy is the primary constraint, which remains debated. Peripheral factors (mitochondrial dysfunction, reduced blood volume, deconditioning) independently contribute to exercise intolerance. The dual-task prediction requires careful experimental design to distinguish CNS resource competition from general fatigue. Central governor theory itself remains controversial in exercise physiology.

*Certainty:* 0.55 (CPET findings well-documented; CNS coordination mechanism plausible; dual-task predictions testable but not yet tested in ME/CFS)
] <hyp:motor-autonomic-coordination>

#speculation(title: [Small Fiber Neuropathy Increases CNS Metabolic Load])[
Small fiber neuropathy affects approximately 30% of ME/CFS patients @Azcue2023sfn @Azcue2025sfn, creating a bidirectional communication burden between the peripheral nervous system and central nervous system that may amplify energy constraints.

*Afferent Signal Degradation.*
SFN reduces the quality of autonomic afferent signals reaching the CNS—temperature sensing, baroreceptor feedback, visceral sensation. Degraded sensory input increases CNS processing demands to extract meaningful information. Neural systems must increase firing rates quadratically to achieve linear improvements in signal-to-noise ratio @Laughlin2003energy, creating disproportionate metabolic costs when processing noisy peripheral signals. This is analogous to listening to conversation in a noisy environment: the brain expends more energy processing degraded input to achieve adequate perception.

*Efferent Command Amplification.*
When efferent small fibers are damaged, the CNS must generate stronger, more frequent, or redundant autonomic commands to achieve target physiological responses. Fewer functional nerve fibers mean each must be driven harder, or signals must be repeated, increasing the metabolic cost of autonomic control. During orthostatic stress, the CNS may detect inadequate vasoconstriction (via baroreceptor feedback) despite issuing normal commands, triggering escalating compensatory signals that further drain central energy reserves.

*Testable Predictions.*

    - Intraepidermal nerve fiber density (IENFD) should inversely correlate with brainstem and hypothalamic glucose uptake (FDG-PET) during autonomic challenges such as tilt testing ($r < -0.5$ expected).
    - ME/CFS patients with confirmed SFN should demonstrate worse cognitive fatigue and brain fog than those without SFN, controlling for pain severity and autonomic dysfunction magnitude.
    - Treatment of autoimmune SFN with IVIG should reduce CNS metabolic burden measurable by PET or MR spectroscopy, with corresponding improvements in cognitive symptoms.
    - Corneal nerve fiber tortuosity (measured non-invasively via corneal confocal microscopy) should correlate with CNS lactate accumulation and cognitive impairment.
    - Cognitive load should exacerbate autonomic dysfunction more severely in SFN-positive patients, reflecting competition for limited CNS energy resources.

*Treatment Implications.*
If this hypothesis is correct, treating SFN may reduce CNS metabolic burden and improve cognitive symptoms even without direct CNS interventions. The non-length-dependent SFN pattern documented in ME/CFS @Azcue2023sfn suggests autoimmune etiology, potentially responsive to immunomodulation. Case series (low certainty) suggest IVIG improves pain and autonomic symptoms in autoimmune SFN @Liu2020IVIG @Oaklander2016autoimmuneSFN, though randomized controlled trials in idiopathic SFN have shown mixed results. The distinct autoimmune pattern in ME/CFS-associated SFN may predict better immunotherapy response than idiopathic cases.

*Limitations.*
No studies have directly measured CNS metabolic demand in relation to SFN severity in ME/CFS. SFN and cognitive dysfunction may share common causes (e.g., autoimmunity or inflammation) rather than having a causal relationship. The relative contribution of SFN to overall CNS energy constraints is unknown and may be minor compared to other factors.

*Current Evidence.*
Azcue et al.\ documented that ME/CFS patients show prolonged heat response latencies indicating C-fiber dysfunction, with 31% meeting POTS criteria @Azcue2023sfn. A follow-up study using corneal confocal microscopy demonstrated increased small fiber tortuosity in ME/CFS compared to controls ($F=6.80$, $p < 0.01$), with tortuosity serving as the primary discriminator between patients and controls (AUC$=0.720$) @Azcue2025sfn. The non-length-dependent pattern (upper and lower extremities equally affected) distinguishes ME/CFS-associated SFN from metabolic neuropathies like diabetic neuropathy; by analogy with other immune-mediated neuropathies @Oaklander2016autoimmuneSFN, this distribution pattern is consistent with immune-mediated damage, though the specific antigens targeted in ME/CFS have not been identified. The connection between reduced parasympathetic activation and worse cognitive performance @Azcue2023sfn provides indirect support for peripheral-CNS interface dysfunction, though directionality remains uncertain.

*Certainty:* 0.40 (SFN prevalence established; CNS metabolic mechanism speculative)
] <spec:sfn-interface-failure>


#hypothesis(title: [Vascular Pathology as the Primary Initiating Event in ME/CFS])[
The temporal, structural, and interventional evidence is _consistent with_ a model in which vascular and microvascular dysfunction precedes and causes mitochondrial damage, rather than representing a downstream consequence of primary mitochondrial failure. This temporal ordering is the hypothesis, not an established finding: the current evidence is cross-sectional, and the causal direction remains unconfirmed.

*Evidence for vascular primacy:*
    + *Temporal sequence*: Early post-COVID syndrome is dominated by microvascular disturbance (microclots, inflammatory capillary changes), with mitochondrial structural damage appearing later and selectively in patients who develop ME/CFS @ScheibenbogenWirth2024sarcopenia
    + *Mechanistic chain*: Capillary hypoperfusion $arrow.r$ ischaemia/reperfusion $arrow.r$ proton accumulation $arrow.r$ NHE1 sodium influx $arrow.r$ NCX1 reversal $arrow.r$ mitochondrial Ca#super[(2+)] overload $arrow.r$ mitochondrial structural damage (Section @sec:sodium-calcium-cascade in @ch:energy-metabolism)
    + *Structural irreversibility*: Collagen IV deposition and basement membrane thickening in skeletal muscle capillaries @Wust2024capillary represent structural (not merely functional) pathology not explained as consequences of mitochondrial failure
    + *Cell-autonomous RBC sensing failure*: ME/CFS RBCs fail to sense and respond to tissue hypoxia @GuoRBC2025microfluidic — a defect independent of target tissue mitochondrial state
    + *Interventional evidence*: Correcting preload failure pharmacologically (pyridostigmine) improves peak VO#sub[2] and cardiac output @Joseph2022pyridostigmine — consistent with a model in which preload failure contributes to exercise limitation. Note: pyridostigmine acts via cholinergic autonomic mechanisms, not direct vascular effects; its benefit is consistent with multiple models (autonomic, vascular, mixed) and does not differentially confirm vascular primacy over other explanations

_Certainty: 0.45._ Evidence for vascular primacy is strengthening but remains circumstantial for the causal direction claim. The temporal model from Scheibenbogen and Wirth is the strongest argument (early PCS vascular-only, later ME/CFS mitochondrial), but requires prospective cohort confirmation. Some patients may have primary mitochondrial pathology without preceding vascular disease (e.g., those with genetic mitochondrial variants).

*Falsifiable predictions:*
    + Prospective early post-COVID cohort studies should show vascular abnormalities (microclots, endothelial dysfunction) preceding mitochondrial structural changes in muscle biopsies, with mitochondrial changes only in those who progress to ME/CFS
    + Vascular-targeted interventions (sulodexide, glycocalyx restoration) implemented early in post-COVID course should reduce ME/CFS incidence
    + Correcting microvascular obstruction (e.g., targeted fibrinolysis) should normalise mitochondrial energetics in ME/CFS patients with demonstrable capillary obstruction

*Limitations:* No prospective biopsy-series from early to chronic ME/CFS exists; the Wirth/Scheibenbogen temporal model comes from cross-sectional comparison, not longitudinal tracking; some mitochondrial defects (WASF3) may be primary.
] <hyp:vascular-primary-mecfs>

#hypothesis(title: [Failed Angiogenic Compensation as the Transition Mechanism from Post-COVID to ME/CFS])[
Flaskamp et al.\ (2022) @Flaskamp2022endothelial demonstrated that post-COVID serum (without ME/CFS) retains the capacity to induce angiogenic tube formation in endothelial cells in vitro, while ME/CFS serum selectively loses this response. This failed angiogenic compensation may represent the biological transition point: post-COVID patients who retain vascular repair capacity recover; those in whom this mechanism fails progress to ME/CFS.

_Certainty: 0.30._ The in vitro finding is from a single study with small numbers; the clinical implication (failed angiogenesis as the transition event) is extrapolated, not directly tested.

*Falsifiable predictions:*
    + Longitudinal sampling of post-COVID patients before and after ME/CFS development should show loss of angiogenic serum activity coinciding with clinical deterioration
    + Angiogenic capacity of patient serum should correlate inversely with capillary basement membrane thickness on biopsy
    + Pro-angiogenic interventions (e.g., VEGF-based approaches, hypoxia-inducible factor stabilisers) should attenuate ME/CFS development in at-risk post-COVID patients if given early

*CAUTION regarding VEGF-based approaches:* The Ribeiro et al.\ (2026) @Ribeiro2026HIF2alpha findings complicate the straightforward pro-angiogenic rationale. In post-viral ME/CFS specifically, VEGF elevation from sustained HIF-2$alpha$ activation may itself be pathological — driving capillary permeability rather than angiogenesis. Exogenous VEGF or HIF stabilisation (which also increases HIF-2$alpha$) could *worsen* endothelial barrier dysfunction in patients whose HIF-2$alpha$ is already pathologically active (Section @sec:hif2a-endothelial). This means pro-angiogenic strategies must be stratified: patients with elevated VEGF/vWF (HIF-2$alpha$-active phenotype) would be harmed, while those with blunted VEGF (HIF-inert phenotype) might benefit. VEGF or sFlt-1 measurement is recommended before any pro-angiogenic intervention.

*Limitations:* Single in vitro study; serum angiogenic activity is a composite of many factors; mechanism of selective angiogenic failure in ME/CFS is not established. The HIF-2$alpha$ stratification caveat is theoretical — no interventional data exist.
] <hyp:failed-angiogenesis-mecfs>

#include "subsec-09-neuroimmune-pots-autoimmune-evidence-and-genetic-predisposit/subsec-09-neuroimmune-pots-autoimmune-evidence-and-genetic-predisposit.typ"

#include "subsec-09-speculative-endothelial-diagnostics-and-therapeutics/subsec-09-speculative-endothelial-diagnostics-and-therapeutics.typ"

#include "subsec-09-vasomotor-dysfunction-and-thermoregulatory-failure/subsec-09-vasomotor-dysfunction-and-thermoregulatory-failure.typ"

