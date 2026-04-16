#import "../shared/environments.typ": *

= Neurological and Neurocognitive Dysfunction
<ch:neurological>

Neurological abnormalities represent one of the most consistently documented features of ME/CFS and provide critical insight into the pathophysiology of this complex disorder. The landmark NIH deep phenotyping study by Walitt et al.\ (2024) provided unprecedented detail on central nervous system dysfunction, identifying specific brain regions, neurotransmitter abnormalities, and mechanisms underlying the characteristic fatigue and cognitive impairment of ME/CFS @walitt2024deep.

== Central Nervous System Abnormalities
<sec:cns>

=== Brain Structure and Function

==== Structural Neuroimaging Findings

Multiple neuroimaging studies have documented structural brain abnormalities in ME/CFS patients, though findings have varied across studies due to differences in patient populations, imaging protocols, and analytical methods @Lee2024neuroimaging.

*White Matter Abnormalities*
Several studies have reported increased white matter hyperintensities (WMH) in ME/CFS patients compared to healthy controls @Lange1999mri @Zeineh2015white. These hyperintensities, visible on T2-weighted and FLAIR MRI sequences, may indicate demyelination, axonal loss, or microvascular damage. The distribution of WMH in ME/CFS patients tends to involve periventricular white matter, subcortical regions, and frontal and temporal lobes. Zeineh et al. @Zeineh2015white identified increased fractional anisotropy in the right arcuate fasciculus, which correlated with disease severity (r=0.649, p=0.0015), providing anatomical substrate for the cognitive dysfunction observed in ME/CFS.

The clinical significance of these findings remains debated, as similar changes occur with normal aging and various medical conditions. However, the presence of WMH in younger ME/CFS patients suggests pathological processes beyond typical age-related changes @Lange1999mri @Zeineh2015white.

==== Diffusion-Based Neuroinflammation Imaging
<sec:nii-neuroinflammation>

Yu et al.\ (2026) applied an advanced neuroinflammation imaging (NII) model to diffusion MRI data from 67 ME/CFS patients and 67 matched healthy controls, providing the first in vivo evidence of widespread white matter neuroinflammation in ME/CFS @Yu2026diffusion-neuroinflammation. The NII model, which estimates tissue microstructure parameters beyond conventional diffusion tensor imaging (DTI), revealed three key abnormalities: reduced NII-HR (consistent with cerebral edema), reduced NII-RF (consistent with cellular infiltration), and increased NII-FF (consistent with axonal reorganisation).

#achievement(title: [Widespread White Matter Neuroinflammation Detected by Advanced Diffusion MRI])[
*Certainty: 0.60.* n=67 per group with rigorous matching; NII model substantially more sensitive than conventional DTI; findings correlate with clinical measures; Human Brain Mapping is a reputable specialty journal. Not independently replicated. @Yu2026diffusion-neuroinflammation

The critical methodological advance is that conventional DTI metrics showed minimal group differences, while NII metrics revealed widespread abnormalities. This resolves a longstanding inconsistency in ME/CFS neuroimaging---prior DTI studies produced mixed results, which may have reflected insufficient sensitivity of the standard DTI model rather than absence of pathology. The NII model's parameters map more directly onto tissue-level processes (edema, cellular infiltration, axonal change), providing a clearer window into the biological substrate of white matter abnormalities.

The NII findings are consistent with neuroinflammation, though they cannot definitively distinguish neuroinflammation from other white matter pathologies (demyelination, ischemia, neurodegeneration). However, the pattern---cerebral edema, cellular infiltration, and axonal reorganisation---aligns with the neuroinflammatory cascade described in the integrated model @sec:glial, and is consistent with the peripheral immune remodeling and blood-brain barrier dysfunction documented elsewhere @sec:bbb @sec:immune-remodeling.

*Limitations:* Cross-sectional design precludes causal inference; single-center study; NII model requires validation in independent ME/CFS cohorts; the neuroinflammation interpretation, while plausible, is inferential rather than directly confirmed by histopathology.
] <ach:nii-neuroinflammation>

=== CSF Proteomics: Complement, Coagulation, and Clinical Heterogeneity
<sec:csf-proteome-mecfs>

Brag{\'e}e et al.\ (2026) performed CSF proteomics on 31 ME/CFS patients, quantifying 902 proteins and correlating findings with clinical features @Bragée2026csf-proteome. The most striking finding was the enrichment of neutrophil degranulation and platelet activation pathways in POTS-positive patients, alongside complement cascade and coagulation pathway enrichment in severe cases.

This CSF compartment data is valuable because it samples the central nervous system directly, avoiding the confounds of blood-brain barrier permeability that complicate blood-based biomarker interpretation. The convergence of complement and coagulation pathway enrichment in the CSF with the peripheral blood findings of immune remodeling and vascular dysfunction @sec:immune-remodeling suggests that the same fundamental processes---immune dysregulation, complement activation, and coagulation cascade engagement---operate across both peripheral and central compartments.

#limitation(title: [CSF Proteomics Without Controls])[
*Certainty: 0.35.* n=31 ME/CFS patients with no healthy control group; ratio-based within-group analysis only; single-center; Scientific Reports is mid-tier. The absence of a control group means differential expression between patients and healthy individuals cannot be established; only within-patient severity associations are possible. These findings require validation in an independent cohort with matched controls.
] <lim:csf-proteome-no-controls>

*Gray Matter Volume Changes*
Voxel-based morphometry (VBM) studies have identified regional brain abnormalities in ME/CFS patients, though findings vary across cohorts @Puri2012VBM @Finkelmeyer2017VBM @Shan2020JTMneuroimaging. Documented changes include gray matter differences in the parahippocampal gyrus, occipital regions, amygdala, and insula, alongside white matter volume reductions in the brainstem and temporal regions. No single pattern has been consistently replicated across studies, reflecting the clinical heterogeneity of ME/CFS.

Despite this heterogeneity, the presence of structural brain differences in regions involved in memory, interoception, and autonomic regulation supports a neuroanatomical basis for cognitive and autonomic dysfunction in ME/CFS @Shan2020JTMneuroimaging.

==== Functional Neuroimaging: The NIH Deep Phenotyping Study
<sec:nih-fmri>

The 2024 NIH study by Walitt et al.\ employed functional MRI during motor tasks to identify specific brain regions with abnormal activation patterns in PI-ME/CFS patients @walitt2024deep. This study, involving 17 PI-ME/CFS patients and 21 matched healthy controls, provided the most rigorous functional neuroimaging data to date.

*Temporal-Parietal Junction Dysfunction*

#achievement(title: [Temporal-Parietal Junction Dysfunction and Effort Miscalculation])[
Walitt et al. @walitt2024deep identified abnormally reduced activity in the temporal-parietal junction (TPJ) during effort-based decision-making tasks in PI-ME/CFS patients. The TPJ is a heteromodal association cortex that integrates information from multiple sensory modalities and plays essential roles in agency and intention attribution, effort allocation decisions, attentional reorienting, social cognition, and bodily self-consciousness. This dysfunction provides a neuroanatomical substrate for the characteristic mismatch between perceived capability and actual performance that defines ME/CFS, suggesting the brain genuinely perceives effort requirements inaccurately rather than exhibiting malingering or simple deconditioning.
] <ach:tpj-dysfunction>

#warning-env(title: [Replication Status])[
Single study (Walitt 2024, n=17 PI-ME/CFS vs.\ 21 controls). This finding derives from the NIH deep phenotyping study—the first to examine TPJ function in ME/CFS. The small sample size limits generalizability. Independent replication in a larger cohort and across ME/CFS subtypes is required before TPJ dysfunction can be considered an established feature.
]

*Motor Cortex Hyperactivity*
Paradoxically, while the TPJ showed reduced activation, the motor cortex demonstrated sustained hyperactivity during fatiguing grip tasks in ME/CFS patients @walitt2024deep. The motor cortex remained abnormally active despite declining grip force output, yet electromyography showed no evidence of peripheral muscle fatigue. This dissociation between central motor drive and peripheral performance reveals inefficient neural recruitment patterns requiring excessive cortical activation for submaximal force production.

This pattern indicates that fatigue in ME/CFS originates centrally rather than peripherally @walitt2024deep. The motor cortex continues to “try harder” even as actual force production declines, suggesting a breakdown in the feedback mechanisms that normally calibrate effort to output.

*Effort Preference Alteration: A New Paradigm*
Perhaps the most conceptually important finding from the NIH study was the identification of altered effort preference as a defining feature of PI-ME/CFS, distinct from physical fatigue (muscle exhaustion) or central fatigue (reduced motor cortex output). Walitt et al.\ proposed that:

#quote[
“Fatigue may arise from a mismatch between what someone thinks they can achieve and what their bodies perform.”
]

This reconceptualization has profound implications for understanding ME/CFS. First, the brain genuinely perceives effort requirements inaccurately, leading to appropriate behavioral responses to faulty signals; this rules out malingering or simple deconditioning. Second, the TPJ normally synthesizes multiple information streams—interoceptive, proprioceptive, and motivational—to generate effort estimates, but this integration fails in ME/CFS. Third, the brain may be responding to genuine danger signals such as inflammation or metabolic dysfunction while miscalibrating the protective response. Finally, interventions targeting effort perception and decision-making networks may prove more effective than those addressing peripheral fatigue.

#hypothesis(title: [Maladaptive Sickness Behavior Program])[
*Certainty: 0.50.* ME/CFS symptoms may represent an evolutionarily conserved “sickness behavior” program—normally protective during acute infection—that becomes chronically activated due to persistent immune signaling. The TPJ, which normally integrates inflammatory signals with effort allocation decisions, may misinterpret chronic low-grade inflammation as ongoing acute illness, inappropriately suppressing activity to “conserve resources” for an immune battle that has already concluded (or that persists at subclinical levels). This would explain why the fatigue feels so viscerally “real” and protective to patients: the brain is executing a legitimate survival program, but one triggered by faulty or persistent signals rather than current metabolic necessity.
] <hyp:maladaptive-sickness-behavior>

*Risk-Based Decision-Making Impairment*
During behavioral tasks requiring risk assessment and effort allocation, ME/CFS patients demonstrated reduced selection of “hard” task options even when rewards were equivalent, difficulty sustaining effort on extended tasks, and altered subjective perception of task difficulty @walitt2024deep. Notably, motivation levels remained normal despite reduced effort output.

These findings indicate that the problem lies not in willingness to exert effort (motivation) but in the neural computation of what constitutes acceptable effort levels @walitt2024deep.

==== PET Scan Metabolic Findings

Positron emission tomography (PET) studies have revealed regional hypometabolism in ME/CFS patients, indicating reduced glucose utilization and neuronal activity @Chaudhuri2004fatigue. Commonly affected regions include brainstem nuclei (potentially explaining autonomic dysfunction), basal ganglia (correlating with motor symptoms and fatigue), medial prefrontal cortex (associated with executive dysfunction), and posterior parietal cortex (linked to attention and spatial processing deficits).

The pattern of hypometabolism overlaps significantly with regions showing structural and functional abnormalities, consistent with a coherent picture of multifocal brain dysfunction.

#limitation(title: [Neuroimaging Correlation $eq.not$ Causation])[
Correlation of imaging findings does not establish that these brain abnormalities cause ME/CFS symptoms, nor which abnormality precedes others. Temporal precedence, reverse causation (systemic illness causing brain changes), and potential confounders (medication effects, deconditioning, sleep disruption) require further investigation through longitudinal and interventional neuroimaging studies.
]

==== SPECT Perfusion Abnormalities

Single-photon emission computed tomography (SPECT) studies have documented reduced regional cerebral blood flow (rCBF) in ME/CFS patients @vanCampen2020severity. Characteristic findings include global reduction in cortical perfusion (10–15% below controls), focal hypoperfusion in temporal, frontal, and parietal regions, correlation between perfusion deficits and cognitive symptom severity, and exacerbation of perfusion abnormalities following physical or cognitive exertion.

The persistence of perfusion deficits across multiple studies and imaging modalities is consistent with cerebrovascular dysfunction contributing to ME/CFS symptoms.

#limitation(title: [Central Catecholamine Findings: Single Study, Small Sample])[
The CSF catecholamine data (reduced HVA, DHPG, epinephrine) derive entirely from the NIH deep phenotyping study (Walitt 2024, n=17 PI-ME/CFS vs.\ 21 controls). Key epistemic boundaries:

    - No prior or subsequent study has performed lumbar puncture with catecholamine analysis in ME/CFS; the findings are unreplicated.
    - The cohort was restricted to post-infectious ME/CFS; whether catecholamine deficiency characterises gradual-onset or non-viral ME/CFS is unknown.
    - CSF catecholamine levels are influenced by medications, sleep timing, activity levels, and lumbar puncture technique—confounders that single-study designs cannot fully control.
    - The direction of causality is unestablished: low catecholamines may _result from_ reduced physical activity, sleep disruption, or chronic illness rather than _causing_ ME/CFS symptoms.

]

=== Brain as Energy Coordination Bottleneck
<sec:brain-bottleneck>

The convergence of regional hypometabolism (PET), hypoperfusion (SPECT), neuroinflammation, and catecholamine deficiency raises a fundamental question: is brain dysfunction in ME/CFS _secondary_ to systemic illness, or could it be _primary_—the bottleneck limiting whole-body function?

#speculation(title: [CNS Energy Crisis as Primary Dysfunction])[
*Certainty: 0.40.* The near-universal presence of cognitive dysfunction, documented brain hypometabolism @Chaudhuri2004fatigue, and neuroinflammation with 45–199% elevation in key regions @Nakatomi2014neuroinflammation suggest CNS energy crisis may be the primary pathophysiological event. Failure of the brain to coordinate peripheral demand-responsive processes could explain the selective pattern of dysfunction observed in ME/CFS, where autonomous processes (hair growth, nail growth, baseline cellular metabolism) remain intact while CNS-coordinated responses (exercise capacity, orthostatic tolerance, immune adaptation) are severely impaired.

*Testable prediction:* CNS-targeted interventions (microglial modulation, catecholamine restoration, cerebral perfusion enhancement) should outperform periphery-only interventions (mitochondrial cofactors without CNS penetration, peripheral immune modulation) on global symptom burden in randomised comparative trials. Falsified if periphery-targeted treatments produce equivalent or greater whole-body improvement without CNS-specific effects. See @hyp:cascade-neuroinflammatory for the detailed causal cascade prediction.
] <spec:cns-primary>

==== Evidence for Brain-Centric Model

Several observations support the brain as primary bottleneck:

    - *Universal cognitive involvement*: Brain fog and cognitive dysfunction are present in nearly all ME/CFS patients, regardless of primary symptom presentation or disease severity @walitt2024deep

    - *Disproportionate brain energy demand*: The brain comprises 2% of body mass but consumes 20–25% of resting energy @Magistretti2018, making it uniquely vulnerable to energy constraint

    - *Cascading coordination failure*: The brain coordinates peripheral demand responses via autonomic signaling; CNS energy deficit would impair this coordination across multiple organ systems simultaneously

    - *Catecholamine deficiency*: Reduced CSF catecholamines (Section @sec:neurotransmitters) directly impair the signaling required for demand-response mobilization throughout the body

    - *Neuroinflammation evidence*: Nakatomi et al. @Nakatomi2014neuroinflammation documented 45–199% elevation in neuroinflammatory markers across six brain regions (cingulate cortex, hippocampus, amygdala, thalamus, midbrain, pons), with inflammation severity correlating directly with cognitive impairment and pain. While replication of these PET findings remains incomplete (see Section @sec:glial), the magnitude and regional distribution suggest potential CNS-specific pathology warranting further investigation

==== Autonomic Dysfunction as Downstream Effect

If the brain cannot maintain adequate energy for autonomic coordination, peripheral organs would have energy _available_ but lack the _signals_ to mobilize it appropriately. This explains several key observations:

    - *Pharmacological bypass efficacy*: Midodrine, fludrocortisone, and other autonomic-supporting medications can partially restore function—the peripheral targets respond when appropriately stimulated, suggesting the dysfunction is in _coordination_ rather than _peripheral capacity_

    - *Demand-response failure pattern*: Baseline function often preserved while challenge responses fail; the CNS cannot orchestrate the coordinated scaling required for physiological stress

    - *Preservation of autonomous processes*: Truly local processes (hair follicle cycling, which operates an independent internal Cori cycle) continue unaffected because they don't require CNS coordination

==== Cerebral Blood Flow: The Central Vulnerability

Van Campen and colleagues have systematically documented cerebral blood flow (CBF) abnormalities during orthostatic stress that support the brain-centric model @VanCampenEtAl2020 @VanCampenEtAl2021 @VanCampenEtAl2023 @VanCampenEtAl2024:

#achievement(title: [Near-Universal CBF Decline During Orthostatic Challenge])[
In a series of studies using transcranial Doppler during tilt-table testing, van Campen et al.\ demonstrated that *91% of ME/CFS patients* (488/534) with normal heart rate and blood pressure responses show abnormal cerebral blood flow and cardiac output reduction during orthostatic challenge @VanCampenEtAl2024. The magnitude of CBF decline is approximately *3.7-fold greater* than healthy controls (26% vs.\ 7% reduction at end-tilt) @VanCampenEtAl2020. Furthermore, CBF remains reduced even after returning to supine position, with recovery correlating to disease severity rather than hemodynamic parameters @VanCampenEtAl2021. For detailed breakdown by orthostatic phenotype, see Achievement @ach:cbf-decline in Chapter @ch:cardiovascular.
] <ach:cbf-universal>

#warning-env(title: [Replication Status: Single Research Group])[
All CBF findings derive from a sequential publication series by van Campen and colleagues at a single Dutch referral center (4 papers, 2020–2024). While the large cumulative sample (n=534) and consistent methodology strengthen internal validity, no independent research group has replicated these transcranial Doppler findings during tilt-table testing. The appearance of replication across multiple publications reflects one group's expanding cohort, not independent confirmation. Independent replication at other centers with different equipment and patient populations is essential.
]

<obs:cbf-symptoms>
ME/CFS symptom severity correlates directly with the degree of CBF reduction during tilt testing @VanCampenEtAl2023. Patients with greater CBF decline report worse fatigue, cognitive dysfunction, and orthostatic symptoms. The absence of compensatory cerebral vasodilation despite reduced cardiac output suggests possible endothelial dysfunction contributing to cerebrovascular vulnerability @VanCampenEtAl2024.
The brain's high metabolic demand and sensitivity to perfusion deficits may make cerebral blood flow the “canary in the coal mine” for systemic energy coordination dysfunction. Standard vital sign monitoring during orthostatic challenge misses this pathology—normal heart rate and blood pressure do not exclude significant cerebrovascular compromise.

See Chapter @ch:energy-metabolism Section @sec:selective-energy-dysfunction for integration with the selective energy dysfunction hypothesis, and Chapter @ch:cardiovascular Section @sec:cerebral-orthostatic for detailed cerebrovascular findings.

=== Neurotransmitter Abnormalities
<sec:neurotransmitters>

The structural and functional brain abnormalities described above correlate with specific neurochemical deficits identified in the NIH deep phenotyping study, providing mechanistic links between imaging findings and clinical symptoms.

==== Catecholamine Pathway Dysregulation: CSF Findings

The NIH deep phenotyping study provided the first direct evidence linking cerebrospinal fluid (CSF) catecholamine abnormalities to ME/CFS symptoms @walitt2024deep. This represents a major advance in understanding the neurochemical basis of the disease.

*Reduced CSF Catecholamines*

#achievement(title: [Central Catecholamine Deficiency in ME/CFS])[
The 2024 NIH deep phenotyping study provided the first direct evidence from cerebrospinal fluid analysis linking central catecholamine abnormalities to ME/CFS symptoms @walitt2024deep. Lumbar puncture analysis revealed significantly reduced concentrations of catecholamines and their metabolites in ME/CFS patients compared to healthy controls, including lower levels of homovanillic acid (HVA, the primary dopamine metabolite), reduced DHPG (3,4-dihydroxyphenylglycol, indicating decreased central noradrenergic activity), and decreased epinephrine levels.

The DHPG finding is particularly significant because it is the primary intraneuronal metabolite of norepinephrine produced within noradrenergic neurons. Low CSF DHPG specifically indicates reduced norepinephrine turnover in the central nervous system, pointing to hypofunction of the locus coeruleus and other noradrenergic nuclei.
] <ach:catecholamine-deficit>

#warning-env(title: [Replication Status])[
Single study (Walitt 2024). This represents the first-ever direct CSF catecholamine measurement in ME/CFS. No prior or subsequent study has performed lumbar puncture with catecholamine analysis in an ME/CFS cohort. The invasiveness of CSF collection limits feasibility of large-scale replication. Independent confirmation is essential, particularly given the small sample size of the NIH cohort.
]

*Clinical Correlations*

<obs:catecholamine-symptoms>
Walitt et al. @walitt2024deep established direct correlations between CSF catecholamine levels and clinical measures. Lower catecholamines correlated with reduced grip strength endurance and slower reaction times (motor performance), catecholamine deficits predicted reduced selection of “hard” tasks in decision-making paradigms (effort-related behaviors), memory and executive function scores correlated with dopamine metabolite levels (cognitive impairment), and subjective fatigue ratings inversely correlated with norepinephrine concentrations (fatigue severity).

These correlations suggest, for the first time in direct CSF measurement, a biochemical pathway linking specific neurotransmitter abnormalities to the core symptoms of ME/CFS.
// Insert Figure: Normal Catecholamine Synthesis
#include "../figures/fig-catecholamine-normal.typ"

// Insert Figure: ME/CFS Catecholamine Synthesis Failure
#include "../figures/fig-catecholamine-mecfs.typ"

Figures @fig:catecholamine-normal and @fig:catecholamine-mecfs illustrate the catecholamine synthesis pathway and two major bottlenecks in ME/CFS: (1) tyrosine hydroxylase impairment due to ATP deficit and BH#sub[4] depletion, and (2) dopamine $beta$-hydroxylase impairment due to vitamin C depletion.

*Mechanistic Implications*
Central catecholamine deficiency could explain multiple ME/CFS features @walitt2024deep. Dopamine and norepinephrine are essential for maintaining arousal, motivation, and sustained attention; deficiency produces profound fatigue without peripheral cause. The prefrontal cortex depends on optimal dopamine levels for working memory and executive function, where both excess and deficiency impair cognition. Since norepinephrine is the primary neurotransmitter of the sympathetic nervous system, central norepinephrine deficiency could produce the autonomic abnormalities characteristic of ME/CFS. Dopamine mediates reward anticipation and motivation, so deficiency could explain the reduced effort allocation observed in behavioral tasks. Finally, physical exertion depletes catecholamines; if baseline levels are already low, even modest activity could produce profound neurotransmitter deficits and symptom exacerbation, explaining post-exertional malaise @walitt2024deep.

==== Tryptophan Pathway Alterations

Metabolomic profiling of CSF in the NIH study also revealed abnormalities in tryptophan metabolism @walitt2024deep. Tryptophan is the precursor for both serotonin and the kynurenine pathway, making its metabolism relevant to mood, cognition, and immune function.

*Kynurenine Pathway Dysregulation*
The kynurenine pathway metabolizes approximately 95% of dietary tryptophan and produces metabolites with diverse neuroactive effects. Quinolinic acid, an NMDA receptor agonist and excitotoxin, may contribute to neuroinflammation and cognitive dysfunction when elevated. Kynurenic acid, an NMDA receptor antagonist with neuroprotective properties, can become imbalanced with quinolinic acid, disrupting glutamatergic neurotransmission. Additionally, 3-hydroxykynurenine generates reactive oxygen species, potentially contributing to oxidative stress.

Immune activation, particularly interferon-gamma, stimulates the kynurenine pathway, providing a link between the immune abnormalities and neurological symptoms observed in ME/CFS @Dehhaghi2022kynurenine @Kavyani2022kynurenine.

The glutamatergic dimension of kynurenine pathway dysregulation acquires additional significance in light of the DecodeME GWAS findings. The genome-wide significant loci include _SHISA6_ (excitatory synaptic transmission at glutamatergic synapses) and _UNC13C_ (glutamatergic synaptic transmission), while _CA10_ and _DCC_ are associated with neuronal development in brain regions governing autonomic regulation (Section @sec:decodeme-genes of Chapter @ch:genetics-epigenetics). This convergence of genetic evidence (constitutional vulnerability in glutamatergic circuits) with metabolomic evidence (kynurenine-mediated disruption of glutamate/GABA balance) suggests a two-hit model: genetically vulnerable glutamatergic circuits are tipped into dysfunction by infection-driven quinolinic acid accumulation, and the resulting excitatory/inhibitory imbalance is maintained by chronic low-grade neuroinflammation. The Glutamatergic--Autonomic Bridge hypothesis (Chapter @ch:integrative-models, Hypothesis @hyp:glutamatergic-autonomic-bridge) formalises this model and identifies glutamatergic modulators (memantine, riluzole) as testable therapeutic candidates.

// Insert Figure: Normal Tryptophan Metabolism
#include "../figures/fig-tryptophan-normal.typ"

// Insert Figure: ME/CFS Tryptophan Dysregulation
#include "../figures/fig-tryptophan-mecfs.typ"

Figures @fig:tryptophan-normal and @fig:tryptophan-mecfs illustrate tryptophan metabolism dysregulation in ME/CFS. While normally approximately 95% of tryptophan is metabolized via the kynurenine pathway, inflammation-driven IDO overactivation can substantially increase this proportion. If kynurenine pathway flux increases to approximately 99% (a plausible estimate based on the magnitude of IDO upregulation observed in inflammatory conditions), this seemingly modest 4 percentage-point shift would dramatically reduce serotonin-available tryptophan from 5% to 1%—an 80% reduction in serotonin precursor availability—while quinolinic acid accumulation reaches toxic levels.

*Serotonin Synthesis*
Diversion of tryptophan into the kynurenine pathway reduces availability for serotonin synthesis. Under conditions of IDO-driven inflammatory activation, up to 90% of tryptophan is catabolized through the kynurenine pathway @Dehhaghi2022kynurenine @Dehhaghi2022AD, leaving substantially less for serotonin synthesis. The estimated 80% reduction in serotonin-available tryptophan (derived from IDO upregulation magnitude documented in inflammatory states) may contribute to sleep disturbances, mood symptoms, pain amplification, and cognitive impairment observed in ME/CFS.

*Enterochromaffin-Vagal Pathway: Gut-Serotonin-Brain Connection*

Emerging research by Wirth and Scheibenbogen (2025) @WirthScheibenbogen2025Neurotransmitter provides a mechanistic framework linking gut dysbiosis to central serotonergic dysfunction through the enterochromaffin-vagal pathway. This pathway offers a novel perspective on serotonin regulation in ME/CFS:

#hypothesis(title: [Enterochromaffin-Vagal Serotonin Pathway in ME/CFS])[
*Certainty: 0.40.* The enterochromaffin-vagal pathway may represent a critical gut-brain communication axis disrupted in ME/CFS. Enterochromaffin cells in the gut epithelium synthesize and release serotonin in response to mechanical stimulation and short-chain fatty acids (particularly butyrate). This serotonin activates 5-HT3 receptors on vagal afferent neurons, providing tonic input to the brainstem. In ME/CFS, gut dysbiosis and reduced butyrate production may impair enterochromaffin serotonin synthesis, leading to reduced vagal afferent signaling and downstream autonomic dysfunction.

*Supporting evidence:*

    - Gut dysbiosis with reduced butyrate-producing bacteria is well-documented in ME/CFS @Giloteaux2016 @Hsu2025gut
    - Enterochromaffin cells require butyrate as a substrate for serotonin synthesis @Barton2025
    - Vagal tone (measured by HRV) is consistently reduced in ME/CFS patients @Escorihuela2020hrv @walitt2024deep
    - The pathway explains how gut dysfunction could contribute to autonomic symptoms

*Implications:*

    - Provides mechanistic link between gut dysbiosis and autonomic dysfunction
    - Suggests butyrate supplementation and vagal stimulation as complementary therapies
    - Explains why some ME/CFS patients have gastrointestinal symptoms alongside autonomic dysfunction
    - Offers testable predictions for future research (e.g., butyrate supplementation improving HRV)

*Limitations:*

    - Preprint status (not yet peer-reviewed)
    - Enterochromaffin serotonin release not directly measured in ME/CFS
    - Causality not established (could be reverse: vagal dysfunction → dysbiosis)
    - Peripheral vs. central serotonin are distinct pools with different functions

] <hyp:enterochromaffin-vagal>

==== Serotonergic Dysfunction

<obs:serotonin>
Beyond tryptophan diversion, multiple lines of evidence indicate primary serotonergic abnormalities in ME/CFS. PET imaging has demonstrated reduced serotonin transporter (5-HTT) density in the rostral anterior cingulate cortex @Yamamoto2004serotonin. Additional findings include abnormal responses to serotonergic challenge tests, correlations between serotonin markers and fatigue severity, and variable responses to serotonergic medications. The serotonergic system's role in regulating sleep, mood, pain perception, and autonomic function positions it as a plausible contributor to the multisystem dysfunction of ME/CFS.

A preclinical model by Lee et al. (2024) provides complementary evidence from the opposite direction: rather than serotonin depletion via kynurenine diversion, serotonergic _hyperactivity_ may also produce ME/CFS-like pathophysiology @Lee2024serotonin. Using high-dose fluoxetine to induce elevated serotonin in mouse dorsal raphe nuclei and hypothalamus, the study demonstrated that chronic serotonergic excess produced severe fatigue, enhanced pain sensitivity, anxiety-like behaviour, and HPA axis dysfunction. The mechanism involved functional loss of 5-HT1A autoreceptors---the inhibitory feedback receptors that normally limit serotonin release---rather than quantitative receptor changes. This autoreceptor desensitisation amplified serotonergic signalling in limbic regions, producing a hyperserotonergia that paradoxically mimics the symptom profile attributed to serotonin _deficiency_ in other models.

#speculation(title: [Bidirectional Serotonin Dysregulation in ME/CFS])[
*Certainty: 0.25.* The coexistence of evidence for both serotonin depletion (tryptophan diversion via kynurenine pathway) and serotonin excess (5-HT1A desensitisation) in ME/CFS models suggests that serotonergic dysfunction may be _bidirectional_ rather than unidirectional. Different compartments or brain regions may experience opposite perturbations simultaneously: peripheral serotonin pools depleted by IDO-driven tryptophan diversion while central raphe-limbic circuits become hyperactive due to 5-HT1A autoreceptor dysfunction. If correct, this explains the heterogeneous and sometimes paradoxical responses of ME/CFS patients to serotonergic medications (SSRIs helping some patients while worsening others). This remains a preclinical observation in mice; direct measurement of regional serotonergic tone in ME/CFS patients has not been performed.
] <spec:bidirectional-serotonin>

==== Dopaminergic Dysfunction

<obs:dopamine>
Dopamine abnormalities extend beyond the CSF catecholamine findings to include measurably reduced basal ganglia activation during reward-processing tasks @Miller2014dopamine. Functional MRI shows that reduced activation of the right caudate nucleus and globus pallidus correlates significantly with mental fatigue severity ($r^2 = 0.49$, $p = 0.001$). The overlap between ME/CFS fatigue and the motivational symptoms observed in dopaminergic disorders (Parkinson's disease, interferon-induced fatigue) supports a shared mechanism of inflammatory cytokine-mediated disruption of basal ganglia dopamine availability.
==== Norepinephrine and the Locus Coeruleus

The locus coeruleus (LC), the primary source of brain norepinephrine, plays critical roles in arousal and sleep-wake regulation, attention and cognitive flexibility, stress responses, and autonomic nervous system modulation.

#hypothesis(title: [Locus Coeruleus Dysfunction in ME/CFS])[
*Certainty: 0.35.* LC dysfunction may explain the constellation of arousal, attention, and autonomic abnormalities in ME/CFS. The CSF catecholamine abnormalities documented in ME/CFS—including reduced DOPA, DOPAC, and DHPG—are consistent with impaired norepinephrine synthesis or turnover originating in LC neurons @walitt2024deep. Candidate mechanisms include: neuroinflammation affecting LC neurons; autoantibodies targeting adrenergic receptors @Loebel2016; metabolic stress impairing catecholamine synthesis; and chronic stress-induced LC dysregulation. No study has directly measured LC structure or function in ME/CFS; this hypothesis is extrapolated from CSF biomarker data and autoimmune findings.
] <hyp:lc-dysfunction>

==== GABAergic and Glutamatergic Imbalance

<obs:gaba-glut>
Magnetic resonance spectroscopy (MRS) studies have identified regional neurochemical abnormalities consistent with altered excitatory/inhibitory balance in ME/CFS @Godlewska2025MRS. Findings across studies include elevated glutamate or glutamine (Glx) in some brain regions alongside reduced GABA concentrations in others, with regional variations reflecting disease heterogeneity. This excitatory/inhibitory imbalance may contribute to sensory hypersensitivity, cognitive dysfunction, sleep disturbances, and fatigue amplification. Notably, MRS findings differ between ME/CFS and Long COVID despite clinical overlap, suggesting distinct neurochemical pathophysiologies.
==== Cholinergic Dysfunction

Acetylcholine abnormalities in ME/CFS have received less attention but may contribute to cognitive impairment (particularly memory), autonomic dysfunction (parasympathetic arm), sleep architecture abnormalities, and muscle function @Loebel2016 @walitt2024deep.

Autoantibodies against muscarinic acetylcholine receptors have been identified in some ME/CFS patients @Loebel2016, providing a potential autoimmune mechanism for cholinergic dysfunction.

=== Sleep Architecture and Inter-Regional Coordination
<sec:sleep-architecture>

Sleep disturbances, particularly unrefreshing sleep despite adequate duration, affect up to 95% of ME/CFS patients. While subjective complaints are nearly universal, objective polysomnographic findings show more subtle alterations: longer sleep latency, reduced sleep efficiency, increased Stage 3 sleep in adults, and altered sleep microstructure @Jackson2023sleep. The paradox—severe subjective sleep dysfunction with modest objective changes—suggests the problem may lie not in sleep duration or stage percentages, but in the _coordination_ required to generate and maintain normal sleep architecture.

==== Energy Costs of Sleep Architecture Coordination

Normal sleep architecture requires sophisticated inter-regional brain coordination orchestrated primarily through thalamo-cortical circuits. During non-REM sleep, slow oscillations ( 1 Hz) originate in the anterior thalamus and precede neocortical slow oscillations, while sleep spindles ( 12–14 Hz) detected in thalamic nuclei precede their neocortical counterparts @Fernandez2022thalamus. This sequence—convergent cortical downstates leading thalamic downstates, which then trigger spindles projected back to cortex during the down-to-upstate transition—coordinates memory consolidation across distributed brain regions @Jiang2024ripples.

Sleep spindle generation itself is metabolically demanding. Thalamic reticular nucleus (TRN) neurons must generate rhythmic bursts at 12–14 Hz, which requires sustained calcium channel activity, neurotransmitter synthesis and release, and coordinated inhibition of thalamocortical relay neurons. The cortex must then respond appropriately, amplifying spindles and coupling them with hippocampal ripples for memory consolidation. This inter-regional choreography demands substantial ATP and coordinated neurotransmitter systems.

Similarly, REM sleep requires brainstem activation (particularly cholinergic nuclei), thalamic relay, cortical activation approaching waking levels, and simultaneous motor inhibition via brainstem circuits. The transitions between sleep stages—requiring coordinated deactivation of one set of circuits and activation of another—may be particularly energy-intensive.

#hypothesis(title: [Sleep Architecture Failure Hypothesis])[
*Certainty: 0.50.*

In ME/CFS, CNS energy deficits and metabolic dysfunction prevent the sustained inter-regional coordination required for normal sleep architecture, resulting in fragmented sleep microstructure despite adequate total sleep time.

*Mechanism.*
The hypothesis proposes that sleep architecture fragmentation in ME/CFS reflects energy-limited coordination failure:

    - *Spindle generation deficit*: Thalamic reticular nucleus neurons cannot sustain the metabolic demands of rhythmic 12–14 Hz burst firing, reducing sleep spindle density and power

    - *Slow-wave coordination failure*: Thalamo-cortical circuits cannot maintain synchronized slow oscillations across brain regions, fragmenting slow-wave sleep architecture

    - *Stage transition impairment*: The coordinated network reconfiguration required for sleep stage transitions (more demanding than within-stage maintenance) fails preferentially, increasing sleep fragmentation

    - *Inter-regional coherence reduction*: EEG coherence between brain regions declines during sleep, reflecting impaired functional connectivity @Sherlin2011coherence

    - *PEM-induced worsening*: During post-exertional malaise, when CNS energy deficits intensify, sleep architecture fragmentation worsens proportionally

*Supporting evidence.*
Jackson et al. @Jackson2023sleep meta-analyzed objective sleep data from 801 adults and 477 adolescents with ME/CFS, confirming altered sleep microstructure despite the subjective-objective paradox. Adult patients showed reduced sleep efficiency, altered stage distribution (decreased Stage 2, increased Stage 3), and longer sleep latency—patterns consistent with coordination difficulties rather than simple sleep deprivation.

Sherlin et al. @Sherlin2011coherence demonstrated that EEG spectral coherence distinguishes CFS patients from both healthy controls and depressed patients with 100% accuracy for unmedicated CFS patients. The involvement of bilateral temporal lobes in 9 of 10 coherence factors suggests widespread inter-regional connectivity disruption, supporting the coordination failure hypothesis.

Sleep fragmentation studies show that chronic fragmentation impairs brain energy metabolism to an extent similar to total sleep deprivation, with lower glucose uptake in cortex and hippocampus @Baud2016fragmentation. In ME/CFS, the causal arrow may reverse: primary metabolic dysfunction fragments sleep, which further worsens metabolism in a vicious cycle.

*Testable predictions.*

    - Sleep spindle density and power correlate inversely with ME/CFS symptom severity and biomarkers of CNS dysfunction
    - Slow-wave sleep fragmentation (not just total SWS percentage) correlates with measures of metabolic dysfunction (e.g., cerebral lactate on MRS)
    - Sleep architecture fragmentation worsens 24–72 hours post-exertion, tracking PEM time course
    - Sleep stage transition frequency increases (shorter, more fragmented sleep stages) compared to healthy controls, even when stage percentages appear normal
    - Inter-regional EEG coherence during sleep is reduced in ME/CFS patients, particularly in frequency bands critical for sleep oscillations (delta, sigma)
    - Interventions improving cerebral metabolism (e.g., mitochondrial support) improve objective sleep microstructure, not just subjective sleep quality

*Treatment implications.*
If sleep architecture failure reflects energy-limited coordination, interventions should target: (1) circadian optimization—maximizing sleep opportunity during the circadian nadir when sleep pressure is highest; (2) metabolic support—mitochondrial cofactors (CoQ10, NADH) during evening hours may improve overnight cerebral metabolism @CastroMarrero2021CoQ10; (3) sleep stage-specific support—low-dose gabapentin or pregabalin may reduce thalamo-cortical excitability demands while supporting spindle generation; (4) glymphatic enhancement—sleep position (lateral decubitus), avoiding late caffeine, and sleep continuity strategies; (5) pacing-sleep integration—recognizing that sleep quality worsens predictably during PEM can guide activity management.

*Limitations.*
This hypothesis has moderate certainty (0.50). No published studies have quantified spindle density or power in ME/CFS with simultaneous metabolic measures. Coherence data exists for waking but not sleep EEG. Alternative explanations include primary brainstem pathology, autonomic dysfunction, or circadian disruption rather than energy limitation. Causality direction remains unclear: does poor metabolism fragment sleep, or does fragmented sleep worsen metabolism?
] <hyp:sleep-architecture-failure>

==== Thalamic T-Type Calcium Channels and Alpha-Delta Sleep Intrusion
<sec:thalamic-calcium-sleep>

The thalamus is not merely a relay station for sleep oscillations—it is their primary _generator_. T-type voltage-gated calcium channels (CaV3.1, the predominant thalamic isoform) are the principal conductance underlying thalamic delta oscillations. CaV3.1 knockout mice show markedly reduced NREM sleep and altered sleep oscillations, establishing CaV3.1 as the critical molecular substrate for delta wave generation @Crunelli2006thalamicTtype. During deep NREM sleep, CaV3.1 channels in thalamocortical relay neurons generate the low-threshold Ca#super[2+] spikes that underlie 0.5--4 Hz delta oscillations --- the dominant EEG rhythm of restorative slow-wave sleep.

Alpha-delta sleep (intrusion of alpha waves, normally associated with wakefulness, into delta sleep) has been documented in fibromyalgia and reported in ME/CFS. Vijayan et al.\ (2015) developed a computational thalamocortical model demonstrating how alterations in three ionic currents --- the hyperpolarization-activated cation current (I#sub[h]), GABA#sub[B]-mediated K#super[+] conductance, and background K#super[+] leak --- transform thalamic delta oscillations into alpha-delta patterns @Vijayan2015alphaDelta. Crucially, the T-type Ca#super[2+] channels (CaV3) providing the low-threshold calcium spikes are the substrate on which these disruptions act: altering the balance of competing currents shifts the oscillation away from CaV3-dependent delta and toward alpha frequency.

#hypothesis(title: [Thalamic T-Type Calcium Channel Disruption as a Mechanism of Alpha-Delta Sleep in ME/CFS])[
*Certainty: 0.35.*

In a subset of ME/CFS patients, disruption of thalamic T-type Ca#super[2+] channel (CaV3.1) function---whether from neuroinflammation, altered membrane lipid composition, autoimmune targeting, or systemic channelopathy---may generate the alpha-delta sleep intrusion pattern that underlies non-restorative sleep.

*Proposed mechanism:*

    - CaV3.1 channels generate low-threshold Ca#super[2+] spikes that drive delta oscillations in thalamocortical relay neurons
    - Neuroinflammation, oxidative stress, or channelopathy shifts the balance of competing ionic currents (I#sub[h], GABA#sub[B]-K#super[+], background K#super[+] leak), as modeled by Vijayan et al.\ @Vijayan2015alphaDelta
    - Delta oscillations are replaced by alpha-frequency activity --- patients experience subjectively non-restorative sleep despite adequate total sleep time
    - Sleep spindle generation (dependent on thalamic reticular nucleus burst firing) is also impaired, as it shares the same thalamocortical circuit

*Connection to systemic channelopathy:*

If TRPM3 dysfunction in ME/CFS reflects a systemic channelopathy affecting ion channels across multiple tissues (Section @sec:trpm3-hypotheses), thalamic CaV3.1 channels represent a plausible additional target. The same upstream mechanisms proposed for TRPM3 dysfunction (post-viral channel remodeling, autoimmune targeting, epigenetic downregulation, membrane lipid disruption) could in principle disrupt CaV3.1 gating. This would create a mechanistic link between the immune arm of calcium dysfunction (TRPM3 in NK cells) and the sleep arm (CaV3.1 in thalamus) --- suggesting these are not independent comorbidities but manifestations of the same root pathology.

*Important limitation:* No study has directly measured CaV3.1 expression or function in ME/CFS patients. The thalamic calcium channel hypothesis for ME/CFS is extrapolated from fibromyalgia sleep models and basic CaV3.1 neuroscience; whether it applies to ME/CFS specifically is untested.

*Testable predictions.*

    - ME/CFS patients with alpha-delta sleep EEG pattern should show more severe non-restorative sleep symptoms than those without it
    - T-type Ca#super[2+] channel blockers (ethosuximide, zonisamide, low-dose pregabalin) should convert alpha-delta to delta sleep in affected ME/CFS patients and improve sleep quality (objective measure: increased delta power on PSG)
    - Thalamic neurochemistry (MRS) in ME/CFS patients with alpha-delta sleep should differ from those without it, consistent with altered I#sub[h]/GABA#sub[B]/K#super[+] balance
    - If TRPM3 channelopathy is systemic, TRPM3 dysfunction severity (measured in NK cells) should correlate with severity of alpha-delta sleep intrusion

*Treatment implication:* Ethosuximide (a selective T-type Ca#super[2+] channel blocker used in absence epilepsy) and zonisamide reduce CaV3.1-dependent burst firing. Low-dose use in ME/CFS patients with documented alpha-delta sleep is a testable research hypothesis, not a recommendation; adverse effects include sedation, GI upset, and --- at higher doses --- cognitive effects that may be particularly poorly tolerated in ME/CFS.
] <hyp:thalamic-calcium-sleep>

#open-question(title: [Ethosuximide and Zonisamide: Which Direction Does T-Type Block Go?])[
The mechanistic direction for T-type calcium channel blockers in ME/CFS sleep is genuinely uncertain, and the uncertainty matters clinically:

*If alpha-delta arises from insufficient T-type current for delta generation:* CaV3.1 is already hypoactive (reduced by energy failure or systemic channelopathy) and further blocking with ethosuximide would worsen delta generation and deepen non-restorative sleep. This is the likely scenario if the Wirth energy failure model applies to thalamic metabolism.

*If alpha-delta arises from residual T-type burst firing at the wrong frequency:* CaV3.1 still fires but now generates alpha-frequency bursts instead of delta (due to altered Ih/GABAB balance per the Vijayan 2015 model @Vijayan2015alphaDelta). In this case, selective T-type suppression might specifically dampen the aberrant alpha component while leaving delta largely intact.

*Zonisamide as a dual-mechanism option:* Unlike ethosuximide (selective T-type block), zonisamide also blocks sodium channels and enhances GABA-A signaling. The GABA-A enhancement could address the GABAB/K#super[+] conductance imbalance in Vijayan's alpha-delta model independently of T-type block. Antioxidant properties (free radical scavenging) of zonisamide could additionally reduce the neuroinflammatory milieu affecting thalamic membrane properties.

*Research design:* A single-dose crossover study (ethosuximide 250 mg vs. placebo, overnight PSG) measuring delta power and alpha-delta index would directly answer the direction question. If delta increases and alpha intrusion decreases, the alpha component is T-channel-mediated. If delta decreases, T-channels are needed for delta generation and the drug worsens sleep. This is a low-cost mechanistically decisive trial that would either support or refute the thalamic calcium hypothesis.

_Not a clinical recommendation._ Both agents have significant adverse effect profiles. This is a research question only.
] <oq:ch08-ethosuximide-direction>

#speculation(title: [Sleep EEG Delta/Alpha Ratio as a Non-Invasive Thalamic Calcium Proxy])[
If thalamic CaV3.1 dysfunction underlies alpha-delta sleep in ME/CFS, the NREM delta/alpha power ratio serves as a non-invasive functional proxy for thalamic calcium channel activity. This is measurable with consumer home EEG devices. Longitudinal tracking of the delta/alpha ratio could:

    - Serve as a pharmacodynamic biomarker for calcium-targeted treatments: does T-type modulation shift the ratio?
    - Predict PEM episodes: does the delta/alpha ratio worsen in the nights preceding a crash?
    - Subtype patients by sleep calcium phenotype: consistent alpha-delta vs. normal sleep architecture on home EEG
    - Replace expensive PSG for longitudinal tracking at the cost of reduced spatial resolution

The advantage over laboratory sleep study is scalability; the disadvantage is that frontal consumer-grade EEG does not provide thalamic source-localization. The ratio measure is correlational, not mechanistically validated.

*Falsifiable predictions:* (a) NREM delta/alpha ratio measured by home EEG should correlate with ME/CFS severity scores across patients. (b) The ratio should worsen during PEM and recover during post-PEM rest. (c) Interventions that improve thalamic calcium function (T-type modulators, improved metabolic support of thalamic tissue) should shift the ratio toward higher delta/lower alpha.

(Certainty: 0.35. The delta/alpha ratio as an EEG severity marker is established in fibromyalgia; whether it serves as a thalamic calcium proxy in ME/CFS specifically is extrapolation.)
] <spec:ch08-sleep-eeg-proxy>

=== Glial Cell Dysfunction
<sec:glial>

Beyond neurons and neurotransmitters, glial cells play critical support roles in brain function. Dysfunction in these cells may contribute to the neuroinflammation mentioned in catecholamine synthesis impairment and broader CNS pathology.

==== Microglial Activation and Neuroinflammation

Microglia, the resident immune cells of the central nervous system, have emerged as key players in ME/CFS neuroinflammation. Evidence for microglial activation includes elevated markers in CSF (soluble CD14, chitotriosidase), PET imaging showing increased translocator protein (TSPO) binding in specific brain regions @Nakatomi2014neuroinflammation, correlation between neuroinflammatory markers and symptom severity, and persistence of microglial activation years after initial infection.

#warning-env(title: [Replication Status and Specificity of TSPO-PET Findings])[
The Nakatomi et al.\ 2014 study (n=9) reported 45--199% higher TSPO binding in six brain regions @Nakatomi2014neuroinflammation. However, Raijmakers et al.\ (2022) found _no_ significant differences in TSPO binding between 9 CFS patients and 9 controls using the same tracer @Raijmakers2021neuroinflammation\---and observed a _negative_ correlation between binding and symptom severity, opposite to Nakatomi's findings. Both studies used only 9 patients with a first-generation tracer known for poor signal-to-noise ratio.

Beyond replication failure, the interpretation of TSPO signal as "neuroinflammation" faces fundamental specificity concerns. Nutma et al.\ (2023) demonstrated that TSPO is a reliable marker of activated microglia in rodent models but _not_ in human neurodegenerative diseases @Nutma2023TSPO. In human MS lesions, only approximately 40% of TSPO signal originates from microglia/macrophages; the remainder comes from astrocytes, endothelial cells, and other cell types. TSPO elevation indicates metabolic changes and energy production, not necessarily classical inflammation. No truly TSPO-negative brain reference region exists, complicating quantification. These limitations apply to all ME/CFS TSPO-PET studies and mean that even positive findings cannot be interpreted as definitive evidence of microglial activation.
]

<obs:omdal2026-null-nfl>
A case-control study ($n=48$ per group, median 69 weeks post-infection) found no
significant differences in circulating neurofilament light (NfL) or GFAP between
long-COVID patients and recovered controls @Omdal2026LongCovidNeuroinflammation,
suggesting that neuronal injury detectable via standard blood biomarkers is not a
universal feature of long COVID. This null finding does not exclude localised
microglial activation: NfL and GFAP primarily reflect neuronal injury, whereas
PET imaging studies demonstrating elevated TSPO binding in ME/CFS detect
glial inflammation without overt neurodegeneration @Nakatomi2014neuroinflammation.
Study: (case-control, $n=96$, Scientific Reports 2026, certainty: 0.55).
Chronic microglial activation, when present, can produce sustained release of pro-inflammatory cytokines (IL-1$beta$, TNF-$alpha$, IL-6), oxidative stress through reactive oxygen species production, glutamate release contributing to excitotoxicity, disruption of synaptic pruning and plasticity, and blood-brain barrier dysfunction @Frank2024S1Priming @Nakatomi2014neuroinflammation.

*HSE as a Prospective Window into Post-Viral Neuroinflammation*

The Omdal null NfL finding contrasts with results from herpes simplex encephalitis (HSE), where CSF neurofilament light chain levels correlate with both impaired neurocognitive recovery (rho=-0.36, p=0.020) and subsequent development of anti-NMDAR autoantibodies (p=0.006) @Westman2021nfl_nmdar. Westman et al.\ propose a causative chain: acute viral brain tissue damage (measured by NFL) $arrow.r$ NMDAR antigen release $arrow.r$ autoimmunization $arrow.r$ prolonged CSF proinflammatory response $arrow.r$ persistent neurocognitive dysfunction. In HSE, 24.5% of patients develop anti-NMDAR IgG antibodies, which appear only after 3 months and are associated with dramatically impaired cognitive recovery @Westman2016nmdar_hse.

#speculation(title: [Subclinical Neuroinflammation Without Overt Neuronal Injury])[
*Certainty: 0.30.* The distinction between HSE (positive NfL) and long COVID (null NfL per Omdal) may reflect a spectrum of neuronal injury severity: HSE causes frank tissue necrosis, while lower-grade neurotropic infections or systemic inflammation may produce microglial activation without sufficient neuronal damage to elevate circulating NfL. This does not exclude the autoimmune sequence — if subclinical BBB disruption allows antigen exposure to peripheral immune cells, autoantibody generation could occur without the massive neuronal death characteristic of HSE. Temporal CSF proteomics in HSE patients has identified dynamic pathway activation and specific protein signatures (including reduced apolipoprotein A1 and complement factor I) distinguishing patients who develop NMDAR autoimmunity @Naas2023hse_proteome. Whether similar CSF proteomic signatures exist in ME/CFS patients remains untested (see Section @sec:hsv1-hse for detailed HSE evidence).

*Testable prediction:* CSF proteomic profiling in ME/CFS patients with cognitive dysfunction would reveal pathway activation signatures overlapping with the NMDAR-autoimmunity-associated profiles identified in HSE, despite normal or near-normal NfL levels. Falsified if ME/CFS CSF proteomics show no overlap with the Naas et al.\ HSE signature.
] <spec:subclinical-neuroinflammation>

*Circulating mitochondrial DNA and cognitive function.*
An emerging line of evidence connects mitochondrial dynamics to cognitive impairment independently of classical inflammatory markers. In a population-based Long COVID cohort ($n = 228$), Matits et al.\ @Matits2026cfmtDNA found that general cognition score correlated positively with relative circulating cell-free mitochondrial DNA (ccf-mtDNA): less ccf-mtDNA was associated with worse cognition. Notably, CRP showed no independent association with cognition after controlling for ccf-mtDNA, suggesting mitochondrial dynamics may be a more proximal correlate of cognitive dysfunction than systemic inflammation. The authors propose that impaired mitophagy leads to intracellular accumulation of damaged mitochondria, depriving neurons and glia of adequate energy supply while failing to generate the extracellular mtDNA signal. Effect sizes were small; causal direction is unknown. Whether this pattern extends to ME/CFS cognitive impairment---where brain fog severity shows weak correlation with peripheral inflammatory markers but strong association with central metabolic dysfunction @Nakatomi2014neuroinflammation\ ---is an open question. The astrocyte energy gate hypothesis (Section @sec:astrocyte-energy-gate) offers a mechanistic explanation: if astrocyte mitochondria are damaged, lactate shuttle capacity is reduced, and the resulting neuronal energy deficit manifests as cognitive dysfunction. Systemic ccf-mtDNA would correlate with this deficit because astrocyte mitochondrial health is part of the global mitochondrial quality control picture, whereas CRP reflects hepatic acute-phase response with no direct relationship to astrocyte-specific metabolism. This explanation is speculative: no study has directly measured astrocyte mitochondrial health alongside ccf-mtDNA in ME/CFS or Long COVID. An important alternative: physical fitness independently predicts both ccf-mtDNA levels (via exercise-stimulated release) and cognitive function, so the ccf-mtDNA--cognition correlation may be entirely confounded by activity level without requiring any direct mitochondrial--cognitive link. Additionally, the Matits partial correlation that eliminates CRP may reflect multicollinearity between two weakly predictive variables (both $eta^2 lt.eq 0.02$) rather than true causal proximity.

*Exosomal mtDNA as a molecular substrate for PEM kindling.*
The kindling hypothesis (Section @sec:pem-kindling) proposes that each PEM episode lowers the threshold for subsequent episodes through progressive neuronal sensitisation, but lacks a specific molecular mechanism. The Tsilioni et al.\ @Tsilioni2022exosome finding may provide one: exercise-triggered exosomal mtDNA release activates microglia (demonstrated in vitro to produce IL-1$beta$), and primed microglia have a lower activation threshold for subsequent stimuli. Each PEM episode would thus release exosomal mtDNA $arrow.r$ prime microglia $arrow.r$ lower the threshold for the next episode. This creates a molecular kindling loop: exosomal mtDNA is the kindling signal, microglial priming is the substrate, and IL-1$beta$ is the effector. Since mtDNA is also recognised by mast cell TLR9 and MRGPRX2, exercise-released mtDNA exosomes could simultaneously engage the mast cell--microglia amplification loop, creating a dual amplification circuit for each PEM episode. If ME/CFS patients release more exosomal mtDNA per exertion than Long COVID patients (consistent with the Tsilioni vs.\ Matits pattern), this would explain why some ME/CFS patients show relentless progressive deterioration through kindling while some Long COVID patients stabilise at a moderate disability level.

#hypothesis(title: [Glial Maturation Window and Pediatric Recovery])[

*Certainty: 0.45.* Adolescent ME/CFS patients may benefit from a developmental window during which active microglial remodeling can reset pathological activation states—a mechanism unavailable to adult patients whose glial maturation is complete. The certainty level reflects: (1) the Nakatomi et al.\ 2014 PET findings documenting microglial activation have not been consistently replicated; (2) the proposed mechanism extrapolates from developmental neuroscience to ME/CFS pathophysiology; (3) testable predictions can directly address these uncertainties through age-stratified neuroimaging studies.

*Background: Adolescent Microglial Maturation*

Microglia undergo dramatic functional reorganization during adolescence, performing complex developmental tasks beyond their immune surveillance role. From embryonic neuronal migration to adolescent circuit refinement, immune signaling molecules serve as a common language allowing microglia to modulate brain function in both health and disease @Dziabis2022microglia.

Three critical periods define microglial contributions to neural development: embryonic wiring, early postnatal synaptic pruning (peak near birth continuing into late-20s), and adolescent circuit refinement @Dziabis2022microglia. During adolescence specifically, microglia mediate experience-dependent synaptic pruning through complement-mediated mechanisms, with C3 binding to CR3 receptors facilitating selective synapse elimination. This process exhibits sex-specific patterns and regional variation, with particularly robust activity in prefrontal cortex and nucleus accumbens @ScienceAdvances2024adolescent @PMC11758907synapse.

Crucially, transient microglial deficiency during adolescence—but not adulthood—produces lasting cognitive impairments, identifying adolescence as a sensitive period for prefrontal microglia to act on cognitive development @ScienceAdvances2024adolescent. The developmental program requires coordinated microglial activity for proper circuit maturation, with major transitions largely complete by early 20s.

*Application to ME/CFS: The Reset Hypothesis*

If ME/CFS involves chronic microglial activation locked in a pro-inflammatory state (as suggested by Nakatomi et al.\ PET findings @Nakatomi2014neuroinflammation), then adolescent microglial remodeling may provide a natural mechanism for resolution:

    - *Active turnover*: Adolescent microglia undergo programmed replacement and phenotypic switching as part of circuit refinement, potentially eliminating pathologically activated cells

    - *Developmental override signals*: The hormonal and neurochemical milieu of adolescence (BDNF elevation, sex hormones, growth factors) provides strong pro-plasticity signals that may override inflammatory set-points

    - *Synaptic reorganization*: Pathological neuroinflammatory states often involve aberrant synaptic connections; adolescent pruning may eliminate these circuits while preserving functional connectivity

    - *Adult lock-in*: After developmental windows close ( age 25), microglia lose plasticity for wholesale phenotypic switching, becoming locked in their current activation state without the developmental cues that enable adolescent reset

This framework explains why pediatric ME/CFS shows substantially higher recovery rates (estimated 54–94% in studies of mild-moderate cases) compared to adult-onset disease where recovery is rare @Rowe2019pediatric. The critical variable is not disease duration but rather whether onset occurs before or after completion of microglial maturation.

*Testable Predictions*

This hypothesis generates specific, falsifiable predictions:

    - *Age-dependent neuroinflammation*: Longitudinal PET imaging should show declining microglial activation in recovering adolescents but persistent activation in adults with similar disease duration

    - *Transition age threshold*: Recovery rates should decline sharply around age 22–25 (completion of prefrontal maturation) rather than showing gradual age-related decline

    - *Biomarker trajectories*: CSF inflammatory markers (sCD14, chitotriosidase) should normalize in recovering adolescents but remain elevated in non-recovering adults

    - *Microglial turnover markers*: Adolescent patients should show elevated markers of microglial turnover (CSF1R expression, fractalkine signaling) compared to adults

    - *Severity interactions*: Hypothesis predicts age matters less if microglial activation is mild (can resolve spontaneously) but becomes critical if activation is severe (requires active remodeling to clear)

*Treatment Implications*

If adolescent microglial plasticity enables recovery, then therapeutically inducing similar plasticity in adults might improve outcomes:

    - *CSF-1R inhibitors*: Drugs like PLX5622 or pexidartinib force microglial turnover by depleting existing populations and promoting repopulation from progenitors. This mimics the natural turnover occurring during adolescence, potentially resetting activation states @MDPI2024microglial.

    - *Fasting-mimicking diets*: Prolonged fasting promotes microglial autophagy and phenotypic switching, potentially enabling transition from pro-inflammatory to surveillance phenotypes without complete depletion

    - *BDNF enhancement*: Brain-derived neurotrophic factor drives developmental plasticity; strategies to boost BDNF (exercise within energy envelope, ketogenic diet, certain medications) may partially reopen plasticity windows

    - *Timing considerations*: Interventions targeting microglial reset may be most effective in younger adults (under 30) where some residual developmental plasticity remains, with diminishing returns in older patients

*Integration with Broader ME/CFS Pathophysiology*

This hypothesis complements rather than contradicts other mechanistic proposals. Microglial activation may be downstream of initial triggers (viral infection, autoantibodies, autonomic dysfunction) while still representing a critical perpetuating factor. The developmental window hypothesis specifically addresses _why recovery patterns differ by age_ rather than explaining disease initiation.

The glial maturation window may interact synergistically with other proposed pediatric advantages: immune memory pruning (Hypothesis @hyp:immune-pruning, if present), greater HSC regenerative capacity, higher baseline recovery capital (Speculation @spec:recovery-capital), and incomplete epigenetic aging.

*Limitations and Uncertainties*

Several important caveats apply:

    - The Nakatomi et al.\ microglial activation findings have not been consistently replicated; if microglial activation is not a universal ME/CFS feature, this hypothesis applies only to a subset

    - The proposed mechanism assumes glial maturation windows close around age 25, but individual variation exists; some adults may retain plasticity longer

    - Pediatric recovery may reflect multiple mechanisms simultaneously; isolating the specific contribution of microglial remodeling requires longitudinal studies with neuroimaging

    - CSF-1R inhibitor strategies carry significant risks (meningitis, visual changes) and remain experimental; safety in ME/CFS populations is unknown

*Research Priorities*

To test this hypothesis rigorously:

    - *Age-stratified longitudinal neuroimaging*: Serial PET scans in adolescent vs adult ME/CFS tracking microglial activation trajectories over 2–5 years

    - *CSF biomarker studies*: Compare inflammatory markers and microglial turnover signatures across age groups and recovery status

    - *Preclinical models*: Post-viral fatigue models in adolescent vs adult mice to test whether developmental microglia enable recovery

    - *Treatment trials*: Small pilot studies of CSF-1R modulation in carefully selected adult ME/CFS patients with documented microglial activation

This hypothesis provides a mechanistic framework for understanding one component of the pediatric recovery advantage while suggesting potential therapeutic strategies for adult patients.

] <hyp:glial-maturation-window>

==== Astrocyte Abnormalities and the Astrocyte Energy Gate
<sec:astrocyte-energy-gate>

Astrocytes perform essential functions including neurotransmitter uptake and recycling, blood-brain barrier maintenance, metabolic support for neurons, synaptic modulation, and ion homeostasis. Astrocyte dysfunction in ME/CFS may contribute to impaired glutamate clearance and excitotoxicity, reduced metabolic support for neurons, blood-brain barrier compromise, and abnormal synaptic transmission. Elevated GFAP (glial fibrillary acidic protein) in some ME/CFS patients suggests astrocyte reactivity, though findings have been inconsistent.

Beyond these recognized roles, astrocytes occupy a uniquely critical position in brain energy metabolism that may constitute a central vulnerability in ME/CFS. The following hypothesis develops this metabolic dimension in detail.

*The Astrocyte-Neuron Lactate Shuttle: Normal Physiology*

The brain consumes 20–25% of the body's glucose despite comprising only 2% of body mass @Belanger2011. A substantial fraction of this energy reaches neurons not as glucose directly, but via the *astrocyte-neuron lactate shuttle* (ANLS), first described by Pellerin and Magistretti @Pellerin1994. In this system, glutamate released during synaptic transmission is taken up by astrocytes via excitatory amino acid transporters (EAATs), triggering astrocytic glucose uptake through GLUT1 transporters and subsequent glycolysis. Astrocytes convert glucose to pyruvate and then to lactate via lactate dehydrogenase A (LDHA), which preferentially catalyzes the pyruvate-to-lactate direction. This lactate is then exported from astrocytes through monocarboxylate transporter 4 (MCT4, a low-affinity, high-capacity exporter) and imported into neurons through MCT2 (a high-affinity importer) @Pierre2005. Within neurons, LDHB converts lactate back to pyruvate for oxidative phosphorylation in mitochondria.

This architecture elegantly couples neuronal energy supply to neuronal activity: when a synapse fires, the glutamate released simultaneously signals the local astrocyte to increase energy delivery @Magistretti2018. Lactate provides an estimated 30–50% of neuronal ATP under physiological conditions @Magistretti2018, and this fraction likely increases during periods of intense neural activity when neurons' own glycolytic capacity is insufficient.

Several features make this shuttle critical rather than merely supplementary:

    - *Activity coupling:* The glutamate-triggered mechanism ensures energy supply scales with demand at the single-synapse level
    - *Metabolic specialization:* Neurons preferentially express LDHB (favoring lactate $\to$ pyruvate) while astrocytes express LDHA (favoring pyruvate $\to$ lactate), creating directional metabolic flow @Kim2025ANLS
    - *Antioxidant protection:* By outsourcing glycolysis to astrocytes, neurons can direct more glucose through the pentose phosphate pathway for glutathione regeneration, protecting against oxidative damage
    - *Signaling function:* Lactate also acts as a signaling molecule via the hydroxycarboxylic acid receptor 1 (HCAR1/GPR81), modulating neuronal excitability and synaptic plasticity @Magistretti2018

*Important Nuance: Neuronal Metabolic Flexibility*

The classical ANLS model has been refined by recent evidence demonstrating that neurons possess greater metabolic flexibility than originally assumed. Single-cell RNA sequencing studies reveal that neurons express both LDHA and LDHB, not exclusively LDHB @Kim2025ANLS. Neurons can directly take up and oxidize glucose, particularly during high-demand states. LDHB-deficient neurons maintain stable energy metabolism under physiological glucose conditions, suggesting compensatory pathways exist.

However, this flexibility has limits. During high-frequency neural activity—precisely the conditions of cognitive exertion—direct neuronal glucose oxidation may prove insufficient, and astrocyte-derived lactate becomes the critical marginal fuel source. This distinction between _basal_ sufficiency and _demand-responsive_ insufficiency is central to the hypothesis that follows.

#speculation(title: [Astrocyte Energy Gate])[
*Certainty: 0.35.* We hypothesize that dysfunction in the astrocyte-neuron lactate shuttle creates a *metabolic bottleneck*—an “energy gate”—that produces CNS-specific energy failure in ME/CFS while peripheral tissues with direct glucose access remain unaffected.

*Three Candidate Mechanisms*

The energy gate may fail at any of three nodes, singly or in combination:

    - *Astrocyte glucose uptake impairment (GLUT1 dysfunction):* Reduced GLUT1 expression or function on astrocytes limits the raw substrate entering the shuttle. GLUT1 deficiency syndrome demonstrates that impaired astrocytic glucose transport causes seizures, cognitive impairment, and brain hypometabolism—features that partially overlap with ME/CFS neurological symptoms. Neuroinflammatory mediators (IL-1$beta$, TNF-$alpha$) documented in ME/CFS can downregulate GLUT1 expression.

    - *Lactate production impairment (glycolytic defects):* Reactive astrogliosis—documented via elevated GFAP in ME/CFS—involves metabolic reprogramming that may paradoxically impair effective lactate delivery. While reactive astrocytes initially upregulate glycolysis, chronic neuroinflammation shifts astrocyte metabolism toward a state where mitochondrial dysfunction reduces overall metabolic efficiency. Inflammatory cytokines can alter pyruvate dehydrogenase kinase (PDK) activity, disrupting the glycolysis/oxidative phosphorylation balance within astrocytes themselves.

    - *Lactate transport impairment (MCT dysfunction):* Downregulation of MCT4 (astrocyte export) or MCT2 (neuronal import) directly restricts lactate flow. This mechanism has the strongest precedent in other neurological diseases: MCT1/MCT4 downregulation reduces neuronal lactate supply by approximately 60% @Kim2025ANLS. In Alzheimer's disease, decreased expression of MCT1, MCT2, and MCT4 is documented. In amyotrophic lateral sclerosis, reduced MCT1 in oligodendrocytes precedes motor neuron degeneration. In temporal lobe epilepsy, MCT2 redistribution and MCT4 reduction are observed in epileptic foci.

*Why This Creates Selective Dysfunction*

The energy gate hypothesis explains why CNS function fails while peripheral tissues remain functional:

    - *CNS vulnerability:* Neurons depend on the ANLS for a substantial portion of their activity-dependent energy supply. No other cell type in the body has this intermediary requirement for its primary fuel.
    - *Peripheral independence:* Skeletal muscle, cardiac muscle, and peripheral tissues express GLUT4 (insulin-responsive) and can directly oxidize glucose without astrocytic intermediation. Hair follicles operate autonomous local Cori cycles, recycling lactate within the follicular unit without CNS coordination.
    - *Demand-dependence:* The ANLS is most critical during cognitive exertion (when glutamate release surges trigger proportional lactate demand). This explains why cognitive symptoms worsen with mental effort while resting cognition may remain closer to normal—a hallmark of ME/CFS “brain fog.”

This mechanism connects directly to the selective energy dysfunction hypothesis (Section @sec:selective-dysfunction), which predicts that high CNS-dependency ($alpha$) and high demand-responsiveness ($rho$) processes should be most impaired. The ANLS provides the _specific molecular mechanism_ through which this selective vulnerability operates.

*Certainty Assessment*

This speculation integrates well-established neuroscience (ANLS physiology: high certainty) with speculative application to ME/CFS (low-to-moderate certainty). No study has directly measured ANLS flux, MCT expression, or astrocyte-specific glycolytic rates in ME/CFS patients. The hypothesis is graded at *certainty 0.35*: mechanistically plausible, consistent with indirect evidence, but requiring direct experimental validation.
] <spec:astrocyte-energy-gate>

*Supporting Evidence: Brain Lactate Elevation*

While no study has directly assayed ANLS function in ME/CFS, magnetic resonance spectroscopy (MRS) studies provide indirect evidence consistent with impaired brain energy metabolism:

    - *7T MRS (2025):* Godlewska et al. @Godlewska2025MRS found elevated lactate in the pregenual anterior cingulate cortex (pgACC: 1.52 vs.\ 1.22 mM, $p = 0.003$) and dorsal ACC (d ACC) of ME/CFS patients (n=24) compared to healthy controls (n=24), using ultra-high-field 7 Tesla MRS. Notably, ME/CFS and Long COVID patients showed _different_ neurochemical profiles despite similar clinical presentations.

    - *Whole-brain MRS (2020):* Mueller et al. @Mueller2020MRS documented elevated lactate-to-creatine ratios in the right insula, thalamus, and cerebellum (n=15 ME/CFS vs.\ n=15 controls), with brain temperature increases correlated with lactate elevations—suggesting neuroinflammation drives metabolic shifts.

    - *Mitochondrial review (2025):* Syed et al. @Syed2025 synthesize evidence of elevated CSF lactate, impaired ATP synthesis, and increased glycolytic activity in ME/CFS, consistent with oxidative stress and conditions favoring anaerobic metabolism.

#warning-env(title: [Interpreting Elevated Brain Lactate])[
Elevated brain lactate in ME/CFS is consistent with the energy gate hypothesis but does not uniquely support it. At least three interpretations are possible:

    - *ANLS dysfunction:* Lactate accumulates in astrocytes because it cannot be efficiently exported to or utilized by neurons (supports the energy gate hypothesis)
    - *Mitochondrial dysfunction:* Neuronal mitochondria cannot oxidize lactate efficiently, causing backpressure (supports a downstream mitochondrial hypothesis)
    - *Anaerobic shift:* Increased glycolysis due to hypoperfusion or oxygen limitation produces excess lactate (supports a vascular hypothesis)

These mechanisms are not mutually exclusive and may operate simultaneously. Distinguishing between them requires studies that measure not just lactate levels but lactate _flux_ between cellular compartments—technically challenging but feasible with advanced #super[13]C-MRS techniques.
]

*Testable Predictions*

The astrocyte energy gate hypothesis generates specific, falsifiable predictions that distinguish it from alternative explanations:

    - *CSF lactate gradient:* If astrocytes produce lactate but neurons cannot utilize it, the CSF lactate/blood lactate ratio should be elevated in ME/CFS (astrocyte-derived lactate accumulating in extracellular space). In mitochondrial disorders affecting the CNS, a CSF/blood lactate ratio $> 0.91$ indicates central origin @Syed2025.  

    _Prediction:_ ME/CFS patients will show CSF/blood lactate ratio $> 0.91$, distinguishing CNS-origin lactate from peripheral sources.

    - *MCT expression profiling:* Post-mortem or biopsy studies should reveal reduced MCT2 (neuronal) and/or MCT4 (astrocyte) expression in ME/CFS brain tissue, particularly in regions showing functional deficits (prefrontal cortex, anterior cingulate).  

    _Prediction:_ MCT2/MCT4 expression reduced $gt.eq$30% vs.\ matched controls.

    - *Astrocyte-specific metabolomics:* Single-cell or spatial transcriptomics of ME/CFS brain tissue should show altered expression of glycolytic enzymes (hexokinase, phosphofructokinase, LDHA) and glucose transporters (GLUT1) in astrocytes specifically.  

    _Prediction:_ Astrocyte glycolytic gene expression altered while neuronal oxidative genes remain intact.

    - *Exogenous lactate challenge:* If the bottleneck is at the glucose $\to$ lactate step (mechanisms 1 or 2 above), then providing exogenous lactate should partially bypass the gate and improve cognitive function. If the bottleneck is at MCT transport (mechanism 3), exogenous lactate should not help.  

    _Prediction:_ IV sodium lactate infusion during cognitive testing will improve performance in a subgroup of ME/CFS patients.

    - *Ketone body bypass:* Ketone bodies ($beta$-hydroxybutyrate, acetoacetate) enter neurons via MCT2 and are metabolized directly in neuronal mitochondria, bypassing the astrocyte glycolysis step entirely @Jang2024Ketone. If the energy gate is at the astrocyte level, ketones should preferentially benefit CNS symptoms.  

    _Prediction:_ Ketogenic diet or exogenous ketone supplementation will improve cognitive symptoms disproportionately to peripheral fatigue symptoms.

    - *Activity-dependent worsening:* Since the ANLS is most critical during high neural activity (when glutamate-triggered demand surges), the energy gate should cause greater deficits during cognitive exertion than at rest.  

    _Prediction:_ The difference between resting and task-evoked brain lactate (measured by functional MRS) will be larger in ME/CFS than controls—reflecting both increased demand signaling and impaired supply response.

*Treatment Implications*

The energy gate framework suggests several therapeutic strategies, ordered by plausibility and feasibility:

    - *Ketogenic diet or exogenous ketones:* By providing $beta$-hydroxybutyrate directly to neurons via MCT2, this approach bypasses the astrocyte glycolysis step entirely. The ketogenic diet has established neuroprotective effects in epilepsy (where MCT dysfunction is documented) and emerging evidence in psychiatric disorders associated with brain energy dysfunction @Jang2024Ketone. _This represents the most immediately testable intervention._

    - *Exogenous lactate supplementation:* Sodium lactate infusion or oral lactate has shown cognitive benefits in Alzheimer's disease models by restoring hippocampal and CSF lactate concentrations. In ME/CFS, this could bypass impaired astrocyte glycolysis (mechanisms 1–2) but would not help if MCT2 transport is the bottleneck (mechanism 3).

    - *MCT upregulation:* Exercise and certain pharmacological agents can upregulate MCT expression. However, exercise intolerance in ME/CFS limits this approach. Pharmacological MCT modulators remain experimental.

    - *Anti-neuroinflammatory strategies:* If chronic neuroinflammation drives astrocyte metabolic reprogramming and MCT downregulation, targeting neuroinflammation at its source may restore ANLS function. Low-dose naltrexone (LDN), which modulates microglial activation, could theoretically improve astrocyte metabolic function through reduced neuroinflammatory signaling.

    - *Astrocyte-targeted delivery:* Emerging drug delivery technologies using astrocyte-specific targeting (e.g., nanoparticles with GFAP-binding peptides) could deliver metabolic support directly to astrocytes, enhancing glycolytic capacity or MCT expression without systemic effects.

*Limitations and Alternative Explanations*

Several important caveats apply to this hypothesis:

    - *No direct evidence in ME/CFS:* No study has measured ANLS flux, MCT expression, or astrocyte-specific glycolytic rates in ME/CFS patients. The hypothesis rests entirely on indirect evidence (elevated brain lactate, documented neuroinflammation) and analogy to other neurological conditions.

    - *Elevated lactate is ambiguous:* As noted above, elevated brain lactate has at least three interpretations. The ANLS dysfunction interpretation is not uniquely supported by current data.

    - *The ANLS itself is debated:* While the ANLS is well-established, its quantitative contribution remains contested. Some evidence suggests neurons can sustain activity through direct glucose oxidation alone, at least under non-demanding conditions @Kim2025ANLS. The hypothesis is strongest for high-demand cognitive states.

    - *Downstream mitochondrial dysfunction:* Even if lactate reaches neurons normally, impaired neuronal mitochondria (a well-documented finding in ME/CFS @Syed2025) would produce similar symptoms. The energy gate and mitochondrial hypotheses are not mutually exclusive but have different treatment implications.

    - *GLUT1 paradox:* Recent studies show that astrocyte-specific GLUT1 reduction can _paradoxically improve_ brain glucose metabolism, suggesting compensatory mechanisms may complicate predictions based on simple GLUT1 downregulation.

    - *Small sample sizes:* The MRS studies supporting brain lactate elevation in ME/CFS have samples of n=15–24, which limits statistical power and generalizability. Larger, multi-site replication studies are needed.

For the relationship between the astrocyte energy gate and the broader selective energy dysfunction framework, including formal mathematical treatment and additional predictions, see Section @sec:selective-dysfunction, specifically the astrocyte energy gate sub-hypothesis (@spec:astrocyte-gate).

==== Astrocytes as the Brain's T3 Factory: A Dual Vulnerability
<sec:astrocyte-t3-factory>

The astrocyte energy gate hypothesis above addresses astrocytes' role as metabolic intermediaries for neurons. However, astrocytes serve a second critical function that has received less attention in the ME/CFS context: they are the brain's primary producers of active thyroid hormone (T3).

Type 2 deiodinase (DIO2)---the enzyme that converts inactive T4 to active T3---is expressed approximately 50-fold higher in astrocytes than in any other brain cell type. In the normal paracrine signaling model, T4 crosses the blood-brain barrier via OATP1C1 transporters, enters astrocyte end-feet, is converted to T3 by DIO2, and is then released into the extracellular space for uptake by neurons via MCT8 transporters @Bianco2018DIO2. Approximately 50% of adult brain T3 is produced locally through this astrocytic pathway; the remainder comes from circulating T3.

#speculation(title: [Astrocyte Dual-Failure: Energy Gate and T3 Factory Collapse])[
*Certainty: 0.35.* Astrocyte dysfunction in ME/CFS may simultaneously impair both the lactate shuttle (energy gate, Speculation @spec:astrocyte-energy-gate) and local T3 production. If reactive, metabolically stressed astrocytes have reduced DIO2 activity, the brain experiences a *hidden hypothyroidism* that is invisible to all blood tests---because it arises from impaired local conversion rather than reduced circulating hormone levels.

This creates a convergent failure: neurons receive inadequate metabolic fuel (impaired lactate shuttle) AND inadequate trophic/plasticity signaling (impaired T3 supply) from the same dysfunctional cell type. The consequences of reduced brain T3 compound the energy deficit: T3 drives mitochondrial biogenesis via PGC-1$alpha$, promotes oligodendrocyte differentiation for myelin maintenance, upregulates BDNF for synaptic plasticity, and modulates microglial phenotype toward anti-inflammatory surveillance states (Section @sec:thyroid-neuroplasticity). Without adequate astrocytic T3 production, all of these processes are impaired simultaneously.

Importantly, this local brain T3 deficit is independent of and additive with the systemic Low T3 Syndrome documented in ME/CFS (Section @sec:thyroid): cytokine-mediated DIO2 suppression reduces both circulating T3 (via liver/kidney DIO1) and brain T3 (via astrocytic DIO2). The DIO2 Thr92Ala polymorphism (present in ~50% of the population), which further impairs astrocytic DIO2 function, would exacerbate this hidden brain hypothyroidism in carriers.

*Testable predictions*

  - ME/CFS patients should show reduced brain T3 relative to serum T3 if measured (requires post-mortem tissue or advanced imaging). The brain/serum T3 ratio should be lower in ME/CFS than in controls.
  - DIO2 Thr92Ala carriers with ME/CFS should have more severe cognitive dysfunction than non-carriers at equivalent serum T3 levels, because their astrocytic T3 production is doubly compromised (genetic + inflammatory).
  - Interventions that rescue astrocyte function (e.g., reduced GFAP reactivity, improved astrocyte metabolism) should simultaneously improve both brain energy delivery (cognitive endurance under load) AND markers of brain T3 sufficiency (BDNF levels, oligodendrocyte-related myelin markers).

*Limitations*

  - No study has directly measured astrocytic DIO2 activity in ME/CFS brain tissue.
  - The "dual failure" framing is a narrative device based on co-localization of two functions in one cell type, not an independently testable claim beyond the two individual hypotheses (energy gate failure + DIO2 impairment). The simpler explanation---that stressed astrocytes lose multiple functions---generates the same predictions. Independent impairment of each pathway cannot be excluded.
  - Brain T3 measurement in living patients is not currently feasible with standard clinical tools.
] <spec:astrocyte-dual-failure>

==== Oligodendrocyte Function

Oligodendrocytes produce the myelin sheaths essential for rapid nerve conduction. Potential abnormalities include demyelination contributing to white matter hyperintensities, impaired remyelination capacity, oxidative damage to oligodendrocytes, and disrupted axon-glial signaling.

#open-question(title: [Oligodendrocyte Contribution to White Matter Changes])[
Do the white matter changes observed on MRI in ME/CFS patients reflect oligodendrocyte dysfunction? No studies have directly examined oligodendrocyte pathology in ME/CFS, and the mechanisms linking white matter hyperintensities to oligodendrocyte function remain to be elucidated.
] <q:oligodendrocyte>

==== Post-Viral CNS Reprogramming

The preceding sections document microglial activation, astrocyte dysfunction, and neuroinflammatory cascades in ME/CFS. A critical question is why these states persist long after the triggering infection resolves. Emerging evidence from trained immunity research suggests that a single viral infection can permanently alter glial cell function through epigenetic mechanisms.

#speculation(title: [Post-Viral CNS Reprogramming Hypothesis])[
*Certainty: 0.40.*

Viral infection causes persistent epigenetic reprogramming of astrocytes and microglia, creating a lasting shift in CNS metabolism that persists long after viral clearance. This mechanism—analogous to “trained immunity” in peripheral innate immune cells—may explain why ME/CFS becomes chronic following acute infection.

*Trained immunity and epigenetic memory.*
Trained immunity refers to the capacity of innate immune cells to develop long-lasting functional memory following initial stimulation @Humer2025TrainedImmunityMECFS. Unlike adaptive immune memory mediated by lymphocyte clonal expansion, trained immunity operates through persistent epigenetic modifications—particularly histone marks such as H3K4me1 and H3K27ac at inflammatory gene promoters—that prime cells for enhanced responses to subsequent stimuli. Humer et al.\ advocate trained immunity as a contributing factor to ME/CFS pathogenesis, proposing that post-infectious epigenetic reprogramming of innate immune cells produces a hyperresponsive phenotype that sustains chronic inflammation @Humer2025TrainedImmunityMECFS.

*Microglial epigenetic reprogramming.*
Wendeln et al.\ demonstrated in a landmark _Nature_ study that peripheral inflammatory stimuli induce long-lasting epigenetic reprogramming of brain microglia @Wendeln2018InnateImmuneMemoryBrain. Trained microglia develop enhanced H3K4me1 marks at inflammatory gene loci that persist for months after the initial stimulus and exacerbate subsequent neurological pathology. This immune memory operates through metabolic reprogramming: activated microglia shift from oxidative phosphorylation to aerobic glycolysis, and this metabolic phenotype becomes epigenetically stabilized @Nirakis2025MetabolicRegulationMicroglial. The persistence of these marks means that a single viral infection could establish a “new normal” of microglial function that outlasts the infection by years.

*Viral reprogramming of glial metabolism.*
Rodrigues et al.\ demonstrate that neurotropic viruses—including SARS-CoV-2, HIV-1, and Zika virus—directly infect astrocytes and microglia, causing metabolic shifts from oxidative phosphorylation to glycolysis with consequent NLRP3 inflammasome activation @Rodrigues2025ViralReprogrammingGlialMetabolism. This metabolic reprogramming is not merely a transient response to active infection; it persists because the glycolytic shift triggers epigenetic modifications that stabilize the pro-inflammatory phenotype. The result is a self-sustaining cycle: viral infection $arrow.r$ metabolic shift $arrow.r$ epigenetic stabilization $arrow.r$ chronic neuroinflammation.

This mechanism has direct relevance to the astrocyte energy gate hypothesis (Section @sec:astrocyte-energy-gate): if viral infection reprograms astrocytes to favor glycolysis over oxidative phosphorylation, lactate production via the astrocyte-neuron lactate shuttle may be disrupted. Astrocytes locked in a glycolytic-inflammatory phenotype may consume glucose for their own inflammatory signaling rather than converting it to lactate for neuronal use.

*Broader epigenetic landscape in ME/CFS.*
Apostolou and Ros\'en document over 12,000 altered CpG methylation sites in ME/CFS patients, with particular enrichment at immune and metabolic gene loci @Apostolou2024EpigeneticReprogrammingMECFS. They propose that latent herpesviruses (particularly EBV) employ long-term epigenetic strategies that may permanently alter host cell function. Complementing this, Iu et al.\ demonstrate that CD8#super[+] T cells in ME/CFS exhibit epigenetic predisposition toward terminal exhaustion, with exhaustion markers upregulated following exercise challenge @iu2024tcell_exhaustion—linking immune reprogramming directly to post-exertional malaise.

*Testable predictions.*

    - Post-infectious ME/CFS patients should show distinct microglial epigenetic signatures (elevated H3K4me1/H3K27ac at inflammatory loci) compared to gradual-onset patients, detectable via CSF-derived microglia or post-mortem analysis
    - Astrocyte metabolic profiles (measurable via MRS glutamate/glutamine ratios) should differ between post-viral and non-viral ME/CFS subtypes
    - Epigenetic modifiers targeting trained immunity (e.g., histone methyltransferase inhibitors, mTOR pathway modulators) should preferentially benefit post-infectious ME/CFS
    - Early antiviral or anti-inflammatory intervention during acute infection should reduce ME/CFS incidence by preventing epigenetic stabilization
    - CSF cytokine profiles should show trained immunity signatures (enhanced IL-6, TNF-$alpha$ responses to ex vivo stimulation) in post-infectious but not gradual-onset patients

*Treatment implications.*
If post-viral CNS reprogramming drives chronic ME/CFS, therapeutic strategies should target epigenetic reversal rather than symptomatic suppression: (1) epigenetic modifiers that can cross the BBB and reset microglial histone marks; (2) metabolic interventions that shift astrocytes back from glycolysis to oxidative phosphorylation; (3) microglial depletion and repopulation via CSF-1R inhibition (see Section @hyp:glial-maturation-window), which may generate microglia without the trained immunity epigenetic marks; (4) early intervention protocols during acute viral illness to prevent epigenetic stabilization.

*Limitations.*
This hypothesis has certainty 0.40. No study has directly measured trained immunity epigenetic marks in ME/CFS patient microglia. The evidence is synthesized from trained immunity research in neurodegenerative diseases @Wendeln2018InnateImmuneMemoryBrain @Zhang2025TrainedImmunityNeurological, viral glial reprogramming @Rodrigues2025ViralReprogrammingGlialMetabolism, and ME/CFS epigenetic profiling @Apostolou2024EpigeneticReprogrammingMECFS. The mechanism may not explain gradual-onset ME/CFS without clear viral trigger. Individual variation in epigenetic susceptibility and viral tropism could produce heterogeneous responses.
] <spec:post-viral-cns-reprogramming>

=== Integrated Neuroinflammatory Cascade Model

The diverse neurological abnormalities documented in ME/CFS—neurotransmitter depletion, microglial activation, autonomic dysregulation—may not be independent pathologies but rather interconnected components of a unified cascade originating from the central nervous system.

#hypothesis(title: [Neuroinflammatory Cascade: From CNS to Peripheral Symptoms])[
*Certainty: 0.50.* We propose an integrated cascade model in which neuroinflammatory dysfunction serves as an upstream driver of both central and peripheral ME/CFS pathology @MCMC2024Neurometabolic @NIH2024MECFSRoadmap:

*Cascade pathway*

_Infection or immune challenge:_ Initial infection (EBV, enterovirus, or other trigger) activates innate immunity and produces transient CNS inflammation through multiple routes (direct viral CNS invasion, systemic inflammatory cytokines crossing BBB, peripheral immune cell infiltration).

_Sleep disruption and impaired glymphatic clearance:_ Acute neuroinflammation disrupts sleep architecture and circadian regulation. Critically, sleep loss impairs the glymphatic system—the brain's waste clearance mechanism dependent on aquaporin-4 water channels in astrocytes. During sleep, the glymphatic system increases interstitial space and clears accumulated metabolic byproducts. Without adequate sleep, toxic protein aggregates (misfolded proteins, amyloid, tau) accumulate in the parenchyma.

_Persistent neuroinflammation and microglial priming:_ Impaired glymphatic clearance allows accumulation of pathogen-associated molecular patterns (PAMPs) and damage-associated molecular patterns (DAMPs), which sustain microglial activation. Primed microglia become hyperresponsive to subsequent stimuli, producing exaggerated cytokine responses (IL-1$beta$, TNF-$alpha$, IL-6) to minor perturbations.

_Central neurotransmitter depletion:_ Sustained neuroinflammation and microglial activation reduce synthesis of catecholamines and serotonin through multiple mechanisms: (1) inflammatory cytokines inhibit tyrosine hydroxylase and tryptophan hydroxylase expression, (2) oxidative stress from microglia-derived reactive oxygen species damages the enzymes and their cofactors, (3) catecholamine reuptake is impaired by cytokine-mediated transporter dysfunction, (4) metabolic depletion reduces substrate availability for neurotransmitter synthesis.

_Central neurological dysfunction:_ Catecholamine and serotonin depletion produce multiple consequences: effort-related dysfunction (hyperdopaminergic responses to exertion trigger rapid catecholamine depletion, producing the post-exertional symptom surge characteristic of PEM), cognitive dysfunction (prefrontal catecholamine depletion impairs attention, working memory, and executive function), and sickness behavior activation (inflammatory cytokines and depleted monoamines trigger the evolutionarily conserved sickness behavior program—fatigue, anhedonia, reduced activity tolerance—which is protective but becomes maladaptive when persistent).

_Autonomic dysregulation:_ Depleted brainstem catecholamine systems (particularly the locus coeruleus) and impaired parasympathetic signaling (reduced acetylcholine availability) produce observable autonomic dysfunction: reduced heart rate variability, abnormal blood pressure regulation (orthostatic intolerance, POTS-like features), impaired vagal anti-inflammatory signaling, and loss of normal sympatho-parasympathetic balance.

_Peripheral symptom manifestation:_ The combination of catecholamine depletion, sickness behavior, and autonomic dysregulation produce the characteristic ME/CFS symptom constellation: profound fatigue, post-exertional malaise, cognitive dysfunction, pain, and orthostatic intolerance.

_Metabolic dysfunction and amplification loop:_ Forced inactivity (due to neurologically-driven inability to exert), medication effects (many treatments deplete catecholamines further), and chronic systemic inflammation drive metabolic dysfunction: mitochondrial ATP production declines, lactate accumulation increases, metabolic flexibility is impaired. Metabolic dysfunction itself produces inflammatory signals (lactate, damaged mitochondria) that amplify neuroinflammation. This creates a positive feedback loop: neuroinflammation → peripheral symptoms → reduced activity → metabolic dysfunction → amplified neuroinflammation.

*Key assumptions*

This cascade model rests on a critical causal assumption: *central nervous system dysfunction is causally primary*, driving peripheral manifestations rather than resulting from them. Alternative causal hierarchies are biologically plausible. For example, if primary immune dysfunction (impaired viral clearance, B cell dysfunction, autoantibody production) drives disease, peripheral pathology would come first, and CNS involvement would be secondary. Similarly, if metabolic dysfunction (mitochondrial ATP depletion, lactate accumulation) is the primary driver, neurological changes might reflect metabolic rather than neuroinflammatory etiology. These alternative models would predict different therapeutic hierarchies and treatment response patterns. The cascade model specifically predicts that CNS-targeted interventions (sleep restoration, microglial modulation, catecholamine restoration) should be foundational to treatment, whereas peripheral organ-targeted therapy (cardiac drugs for POTS, antivirals for presumed viral persistence) would be less effective if peripheral dysfunction is secondary. Testing this assumption requires comparative treatment trials: if CNS-first approaches produce superior outcomes to periphery-first approaches in randomized trials, the cascade model's assumption is supported; if peripheral approaches are equally or more effective, the causality assumption is questioned.

*Key implications of this model*

This cascade model positions _central neurological dysfunction as upstream of peripheral symptoms_ rather than secondary to them. If correct, it suggests fundamentally different therapeutic strategies than those targeting peripheral organs:

    - *Sleep is disease-modifying:* Sleep disruption perpetuates the cascade by impairing glymphatic clearance. Interventions that restore sleep (sleep hygiene, low-dose sedating agents, circadian restoration) may directly interrupt neuroinflammation, not merely improve symptoms.

    - *Microglial modulation is central:* Interventions targeting microglial activation (CSF-1R inhibition as discussed in Section @hyp:glial-maturation-window, fasting-mimicking diets promoting microglial turnover) may provide disease-modifying benefit.

    - *Catecholamine restoration requires CNS targeting:* Peripheral catecholamine replacement (standard treatments for POTS) may be ineffective if the primary problem is CNS depletion and impaired synthesis. Centrally-acting drugs (L-DOPA, levodopa with carbidopa to cross BBB, dopamine agonists) might be more effective than peripheral sympathomimetics.

    - *Breaking the positive feedback loop is critical:* Preventing forced inactivity through appropriate pacing prevents the metabolic dysfunction that amplifies neuroinflammation. This aligns with clinical observations that strict pacing produces better long-term outcomes than progressive exercise approaches.

] <hyp:cascade-neuroinflammatory>

#limitation(title: [Kindling Analogy: Neurological Extrapolation Without ME/CFS Data])[
The PEM kindling hypothesis (below) applies a concept from epilepsy and substance abuse neuroscience to ME/CFS by analogy. No study has measured progressive microglial priming, cumulative threshold reduction, or kindling-like neural sensitisation in ME/CFS patients. The quantitative model parameters ($alpha = 1.5$, exponential decay) are illustrative, not empirically derived, and the model has not been fitted to patient data. Alternative explanations for progressive worsening—deconditioning, psychological avoidance learning, cumulative tissue damage—have not been excluded.
]

=== Post-Exertional Malaise and the Kindling Hypothesis
<sec:pem-kindling>

The clinical observation that each crash lowers the threshold for the next crash—that activities previously tolerated trigger worse symptoms as disease progresses—parallels a phenomenon well-established in neurology: kindling.

#hypothesis(title: [Post-Exertional Malaise Kindling and Progressive Sensitization])[
*Certainty: 0.45.* We propose that PEM represents a form of neurobiological kindling in which repeated neuroinflammatory activation progressively lowers the threshold for triggering symptom exacerbations @Nakatomi2014neuroinflammation @MCMC2024Neurometabolic @NIH2024MECFSRoadmap.

*Kindling mechanism*

_Initial exertion:_ An activity requiring catecholamine-dependent effort (physical exertion, cognitive demanding tasks, emotional stress, or infection) triggers acute catecholamine release from depleted stores. If CNS catecholamine availability is already compromised by neuroinflammation, even a modest exertion produces a substantial percentage depletion of the remaining pool.

_Threshold and collapse:_ The neuronal systems dependent on catecholamines cannot function effectively once availability drops below a critical threshold. This produces the acute collapse characteristic of PEM: sudden fatigue, cognitive shutdown, pain, orthostatic intolerance.

_Microglial priming from exertion:_ The acute catecholamine depletion and cellular stress from exertion act as a DAMP (damage-associated molecular pattern), priming already-activated microglia further. Additionally, the metabolic disruption during exertion (increased lactate, ROS production, cellular damage) provides more inflammatory signals.

_Lowered threshold post-exertion:_ Following a PEM episode, microglial priming increases. The threshold for the next crash ($T_2$) is lower than the threshold before ($T_1$): activities that previously could be tolerated now trigger crashes because less catecholamine depletion is required to cross the now-lower threshold.

_Progressive sensitization:_ With repeated PEM episodes, this kindling process repeats: T(n) \< T(n-1). Each crash further primes microglia, further sensitizes the system, further lowers the threshold. Over time, trivial activities trigger crashes. Some patients reach a state where standing, conversations, or eating triggers symptoms.

*Quantitative model*

Let T(n) be the activity threshold at time n (e.g., kcal expended before triggering PEM):

    - Initial state: T(0) = baseline (e.g., 500 kcal before crash triggered)
    - First crash: Exertion approaching T(0) triggers depletion below critical threshold, PEM occurs, microglial priming increases by factor $alpha$
    - Post-crash state: T(1) = T(0) / $alpha$ (threshold lowered by priming factor)
    - Second crash: Exertion of magnitude T(1) triggers symptoms; microglial priming increases further
    - Recursive decline: T(n) = T(n-1) / $alpha$ = T(0) / $alpha$#super[n]

With priming factor $alpha$ = 1.5 (a 50% lowering per crash), the progression would be:
T(0) = 500 kcal → T(1) = 333 kcal → T(2) = 222 kcal → T(5) = 65 kcal

_Note on model parameters:_ The priming factor $alpha$ and the specific threshold values shown (500, 333, 222, 65 kcal-equivalent) are illustrative only and not empirically derived. The actual value of $alpha$ is unknown and likely varies substantially between patients depending on baseline microglial activation state, genetic factors affecting neuroinflammatory response, and disease duration. These example values are presented solely to demonstrate the exponential relationship between crash number and threshold reduction. Any quantitative application of this model requires direct empirical measurement of individual patient thresholds over time.

*Clinical and prognostic implications*

This kindling model explains several critical clinical observations:

_Crash begets crashes:_ The threshold-lowering effect means that a single exertion event doesn't just cause temporary symptoms but permanently alters the disease trajectory by priming for future crashes. This has profound implications for disease modification.

_Strict pacing prevents further sensitization:_ If exertions are carefully limited to sub-threshold levels (well below the current threshold T(n)), no additional crash occurs and microglial priming does not increase further. This prevents the recursive threshold decline. In this framework, strict pacing is not merely symptomatic management but disease-modifying—it halts the progressive sensitization process. Patients who maintain strict pacing may stabilize at their current threshold; those who allow repeated crashes will worsen progressively.

_Infections produce major priming events:_ Each infection represents a major immunological and neuroinflammatory event. In the kindling framework, infection reactivation (EBV, HHV-6) or new infection produces substantial microglial priming, equivalent to multiple PEM episodes. This explains the clinical pattern that infections mark step-wise deterioration in ME/CFS—they reset the kindling process upward.

_Recovery becomes progressively harder:_ In early disease (low n, high T(n)), exertions are still available that don't trigger crashes; nervous system can gradually rebuild reserves. As kindling progresses (high n, low T(n)), almost all activities trigger crashes; positive feedback dominates. Recovery requires not just stopping new crashes but actively deprimming microglia. This becomes increasingly difficult as the patient becomes more sensitized.

_Early intervention is critical:_ At disease onset (low n), the threshold has not dropped far. Early application of strict pacing and anti-neuroinflammatory interventions could potentially prevent the recursive decline. Later, after many crashes, the threshold has dropped far and recovery requires intensive deprimming. This suggests that early aggressive management (e.g., immediate bed rest, microglial suppression, infection prevention, metabolic support) following disease onset might prevent chronic progression, whereas late intervention faces an already-sensitized nervous system.

*Treatment implications*

If the kindling hypothesis is correct:

_Strict pacing is disease-modifying:_ Currently, pacing is recommended as symptomatic management. The kindling model suggests it should be recognized as disease-modifying—directly interrupting the progressive sensitization process. Patients who maintain pacing avoid further kindling and preserve their remaining threshold. Those who do not may see progressive functional decline.

_Blocking new kindling triggers is critical:_ Infections are major microglial priming events. Preventing infections (FFP2 masking in high-transmission periods, prophylactic antivirals if options become available, rapid treatment of infections) becomes disease-modifying therapy because it prevents the threshold-lowering spike from infection-induced microglial activation.

_Active deprimming requires intervention:_ Merely halting new crashes (pacing) prevents further decline but doesn't reverse existing kindling. If the hypothesis is correct, therapies that actively reverse microglial priming (CSF-1R inhibition to deplete and regenerate microglia, fasting-promoting interventions to reset glial metabolism, neuroplasticity-promoting therapies like low-dose BDNF or photobiomodulation) might restore threshold to baseline over time.

_Pharmacological anti-kindling agents:_ Notably, the very agents developed to prevent kindling in epilepsy may have direct relevance. In epilepsy research, anti-kindling refers to preventing the progressive lowering of seizure thresholds through repeated subthreshold stimulation---the exact analogy proposed for PEM. Several agents demonstrate genuine anti-kindling properties (preventing sensitization development) rather than merely anticonvulsant effects (suppressing established seizures):

  - *Levetiracetam* binds synaptic vesicle protein 2A (SV2A) and shows the strongest anti-kindling evidence of any agent in animal epilepsy models---uniquely, its anti-kindling effects in rat amygdala kindling persist even after drug discontinuation, suggesting true disease modification rather than symptom suppression @Lynch2004levetiracetam. Whether this translates to anti-kindling effects in the proposed PEM context remains entirely unvalidated. Levetiracetam also demonstrates superior microglial suppression compared to valproate and carbamazepine @Itoh2019levetiracetam, directly addressing the microglial priming mechanism proposed in the kindling hypothesis. Its cognitive profile is clean (no impairment), though behavioral effects (irritability in ~13--17%) require monitoring.

  - *Lithium* inhibits GSK-3$beta$ (Ki: 1--2 mM) and is associated with grey matter volume increases of up to 2.56% at 10--12 weeks on MRI---the only mood stabilizer to show this effect @Lyoo2010lithium (though volume changes on MRI may reflect glial proliferation, dendritic branching, or water content shifts rather than neurogenesis per se, and lithium's effects on aquaporin channels could contribute). It upregulates BDNF by 10--28% at subtherapeutic concentrations in cell culture @Dwivedi2016lithiumBDNF, induces mTOR-independent autophagy via inositol monophosphatase inhibition @Sarkar2005lithiumAutophagy, and suppresses microglial activation through TLR4/NF-$kappa$B inhibition in animal models @Wang2022lithiumNeuroinflammation. A 2024 observational meta-analysis found lithium use associated with lower Alzheimer's risk (RR 0.59) and all-cause dementia (RR 0.66), though confounding by surveillance bias in medically monitored psychiatric patients cannot be excluded @Damiano2024lithiumDementia. A Long COVID trial (JAMA Network Open 2024, n=unclear for dose-escalation sub-study) found that doses of 40--45 mg/day (serum 0.18--0.49 mEq/L) improved cognitive dysfunction and fatigue in a post-hoc dose-escalation analysis, while lower doses (10--15 mg/day) were largely ineffective @Guttuso2024lithiumLongCOVID.

  - *Valproic acid (Depakine)* inhibits class I HDACs (IC50 ~0.4 mM for HDAC1), inducing widespread epigenetic reprogramming affecting >1,300 genes @Gottlicher2001VPA. Most remarkably, a randomized controlled trial demonstrated that valproate reopens developmental critical periods in adults---participants acquired absolute pitch, a skill normally learnable only in early childhood @Gervain2013VPA. This creates a transient window of heightened epigenetic plasticity during which neural circuits can be reshaped by experience or training. Valproate also demonstrates general anti-sensitization properties extending beyond epilepsy to opioid and psychostimulant sensitization @Gomes2004VPAantiSensitization. However, working memory impairment and the risk of valproate-induced reversible cognitive decline (VIRCD, mean onset latency 6.87 years) @Armon2023VIRCD are significant concerns for patients already experiencing cognitive dysfunction.

  - *Lamotrigine* reduces presynaptic glutamate release via sodium channel blockade, upregulates both BDNF and Bcl-2, and is widely considered the most cognitive-sparing anticonvulsant---with evidence for actual cognitive enhancement (improved attention and working memory) @Aldenkamp2001lamotrigine @Khan2023lamotrigine. Its neuroprotective profile without cognitive penalty makes it theoretically attractive for ME/CFS patients where brain fog is a cardinal symptom.

These agents represent pharmacological tools that could potentially be repurposed for the specific anti-kindling application proposed in the PEM kindling hypothesis. The distinction between suppression (controlling symptoms while on drug) and true circuit modification (persistent change after withdrawal) is critical: only levetiracetam shows convincing evidence for the latter in kindling models. See Chapter @ch:emerging-therapies for detailed treatment considerations and Chapter @ch:integrated-systems (Section @sec:neuroplasticity-attractor) for the formal attractor dynamics model that predicts multiplicative combination effects from multi-target interventions.

*Falsification criteria*

The kindling hypothesis makes specific predictions that can be empirically refuted. The hypothesis would be falsified by:

    - *Absence of cumulative threshold reduction:* If longitudinal studies controlling for overall disease progression show that repeated PEM episodes do not produce measurable cumulative lowering of subsequent thresholds, the kindling mechanism would be unsupported. For example, if two patient groups with similar baseline disease duration and severity show the same activity threshold despite vastly different crash histories, kindling-mediated threshold reduction would be unlikely.

    - *Reversibility of thresholds after prolonged rest:* If extended rest periods (3+ months) with strict activity limitation consistently restore pre-crash thresholds to baseline levels, this would suggest sensitization is reversible rather than kindling-like. True kindling produces cumulative, largely irreversible changes; reversible sensitization would point to different mechanisms (e.g., temporary glial activation without permanent priming).

    - *Absence of microglial correlates:* If microglial markers (CSF1-R positron emission tomography imaging, cerebrospinal fluid inflammatory mediators, or microglial activation markers) show no correlation with PEM crash history, threshold reduction, or disease severity, this would weaken the proposed microglial mechanism. Conversely, finding these markers elevated equally in patients with few versus many crashes would suggest microglial involvement is secondary rather than driving kindling.

    - *Lack of threshold reduction with infection-equivalent priming:* If experimental immune activation (e.g., viral challenge or endotoxin administration) that triggers robust microglial and systemic inflammatory responses does not produce measurable threshold lowering in animal models of ME/CFS-like disease, the kindling mechanism would be questionable.

] <hyp:pem-kindling-sensitization>

#speculation(title: [Pharmacological Critical Period Reopening for ME/CFS Circuit Reset])[
*Certainty: 0.30.* The adult brain's inability to rewire maladaptive neuroinflammatory circuits may be a treatable barrier to ME/CFS recovery. If ME/CFS involves epigenetically locked microglial activation states and pathological synaptic configurations established during the acute phase, then pharmacologically reopening developmental critical periods---combined with targeted rehabilitation---could enable circuit-level reorganization normally impossible in the adult brain.

*Mechanistic basis*

Three distinct pharmacological pathways can enhance adult neuroplasticity:

_HDAC inhibition (valproate):_ Valproate removes epigenetic brakes on plasticity by inhibiting class I HDACs. In a randomized controlled trial, healthy adults on valproate (500--1000 mg/day for 15 days) acquired absolute pitch---a skill normally only learnable during the childhood critical period @Gervain2013VPA. The mechanism involves dramatic chromatin reorganization at enhancer regions and retrotransposon elements, creating a transient window during which neural circuits become reshapeable by experience. In the visual cortex, valproate restores ocular dominance plasticity that is normally absent in adults. Applied to ME/CFS, this suggests that valproate could create windows during which maladaptive neuroinflammatory circuits become susceptible to remodeling by concurrent anti-inflammatory or rehabilitative interventions.

_GSK-3$beta$ inhibition (lithium):_ Lithium disinhibits multiple transcription factors (CREB, HSF-1, $beta$-catenin), promoting neurogenesis, dendritic remodeling, and new synapse formation. Grey matter increases of 2.56% peak at 10--12 weeks @Lyoo2010lithium, with regional increases up to 10--15% in the cingulate gyrus. These structural changes correlate with clinical improvement (Spearman $rho$ = $minus$0.59 for depression) and are not observed with other mood stabilizers or antipsychotics. Lithium's additional mTOR-independent autophagy induction (via inositol monophosphatase inhibition) @Sarkar2005lithiumAutophagy could simultaneously clear accumulated cellular debris from chronically stressed neurons.

_Thyroid hormone augmentation:_ T3 is the primary signal driving oligodendrocyte precursor cell differentiation into mature myelinating oligodendrocytes. In stroke models, T3-treated mice achieved high functional scores in 73% of cases versus 9% vehicle-treated, without changes in infarct volume---demonstrating plasticity enhancement rather than tissue preservation. T3 also increases dendritic spine density (both mushroom-type and thin spines) and shifts the excitatory/inhibitory balance toward excitation by upregulating GluR2 while downregulating GAD 65/67. In ME/CFS, documented Low T3 Syndrome (Section @sec:thyroid) means that the brain may be operating with actively repressed plasticity genes---unliganded thyroid receptors recruit corepressors that actively suppress transcription, making hypothyroidism worse than mere absence of activation.

*The "window + guide" model*

Critical period reopening alone is insufficient---it creates vulnerability to both beneficial and harmful reorganization. The model requires two components: (1) a plasticity-enhancing agent to open the window, and (2) concurrent targeted input to guide reorganization toward healthy circuit configurations. Possible guided inputs include anti-neuroinflammatory agents (redirecting microglial phenotype during the plastic window), structured cognitive rehabilitation (rebuilding prefrontal circuits), graded autonomic reconditioning (resetting baroreflex setpoints), and sensory enrichment protocols.

*Testable predictions*

  - Valproate or lithium administered alongside anti-neuroinflammatory therapy (e.g., LDN, levetiracetam) should produce greater and more durable symptom improvement than either alone---specifically, Central Sensitization Inventory scores should decrease by >30% with combination versus $lt$15% with anti-inflammatory alone.
  - PET neuroimaging (TSPO ligand) should show greater reduction in microglial activation when plasticity-enhancing agents are combined with microglial modulators than with modulators alone.
  - Improvements achieved during pharmacological plasticity windows should show greater persistence after drug withdrawal than improvements from symptomatic treatment alone.

*Limitations*

  - The critical period reopening evidence comes from a single small trial in healthy adults @Gervain2013VPA; no replication exists, and applicability to pathological states is unproven.
  - Valproate's cognitive side effects (working memory impairment) may compound ME/CFS brain fog, potentially making the treatment window counterproductive if not carefully managed.
  - No animal model exists for testing critical period reopening in post-infectious neuroinflammatory conditions.
  - The "window + guide" concept is theoretically appealing but operationally complex: timing the plasticity window, selecting the guide intervention, and preventing harmful rewiring are all unsolved problems.
] <spec:critical-period-reopening>

#speculation(title: [Low-Dose Lithium as Neuroprotective Agent in ME/CFS])[
*Certainty: 0.40.* Lithium at doses far below conventional psychiatric ranges (40--45 mg/day lithium aspartate or 5--20 mg elemental lithium via lithium orotate) may provide neuroprotection, microglial modulation, and autophagy enhancement in ME/CFS without the cognitive and renal side effects associated with standard dosing.

*Evidence base*

_Long COVID trial:_ A 2024 JAMA Network Open randomized trial tested lithium aspartate in Long COVID patients @Guttuso2024lithiumLongCOVID. *The primary RCT endpoint was negative*: low doses (10--15 mg/day) did not improve cognition or fatigue versus placebo. A non-randomised, open-label dose-escalation sub-study found that 40--45 mg/day achieving serum concentrations of 0.18--0.49 mEq/L produced improvements in cognitive dysfunction and fatigue---but this signal is hypothesis-generating, not a demonstration of efficacy (open-label design, subject to placebo effect and expectation bias). *Extrapolation to ME/CFS*: estimates suggest 30--50% of Long COVID patients meet IOM ME/CFS criteria, meaning 50--70% do not. The positive sub-study signal could originate entirely from the non-ME/CFS fraction (e.g., SARS-CoV-2-specific neuropathology, organ damage), which limits applicability to ME/CFS @Guttuso2024lithiumLongCOVID.

_Subtherapeutic neuroprotection:_ In cortical neurons, lithium at 0.02 mM increased intracellular BDNF by 10%; in hippocampal neurons, increases of 28% were observed at subtherapeutic concentrations @Dwivedi2016lithiumBDNF. Even doses 400-fold below conventional clinical ranges show neuroprotective potential in Alzheimer's models. A microdose trial (300 $mu$g/day for 15 months) stabilized MMSE scores in Alzheimer's patients while placebo declined from ~20 to ~14.

_Brain lithium depletion:_ A 2025 Nature study found lithium was the only metal significantly reduced in the brain of individuals with mild cognitive impairment, raising the possibility that lithium functions as an essential neuroprotective micronutrient @Bhatt2025lithiumBrain.

*Proposed ME/CFS mechanisms*

At sub-therapeutic doses, lithium likely acts through: (1) partial GSK-3$beta$ inhibition sufficient for BDNF upregulation and Wnt/$beta$-catenin activation without complete enzyme blockade; (2) inositol monophosphatase inhibition driving mTOR-independent autophagy, potentially clearing accumulated cellular debris; (3) partial TLR4/NF-$kappa$B suppression reducing microglial pro-inflammatory signaling; and (4) NLRP3 inflammasome modulation (shown in preclinical models; not yet demonstrated in ME/CFS patients). These converging mechanisms address multiple nodes of ME/CFS pathophysiology: neuroinflammation, impaired autophagy, reduced neurotrophic support, and grey matter loss.

*Testable predictions*

  - ME/CFS patients treated with lithium orotate (10--20 mg elemental, ~equivalent to 40--45 mg lithium aspartate) for 8--12 weeks should show improvement on cognitive testing (specifically processing speed and working memory) compared to baseline.
  - Serum BDNF levels should increase measurably at these sub-therapeutic doses.
  - If structural MRI is feasible, grey matter volume should not decline (and may increase) over 6--12 months of treatment.

*Safety considerations*

Even at low doses, lithium requires monitoring of thyroid function (TSH) and renal function (creatinine), as it inhibits thyroid hormone release and is renally cleared. The documented Low T3 Syndrome in ME/CFS (Section @sec:thyroid) creates a specific interaction: lithium's suppression of thyroid function could worsen an already-compromised thyroid axis. This argues for concurrent thyroid monitoring and potentially prophylactic T3 co-supplementation in ME/CFS patients on even low-dose lithium.

#warning-env(title: [Lithium Safety: Drug Interactions and Contraindications])[
Although lithium orotate is sold over-the-counter as a supplement, this does *not* imply it is safe to self-initiate. Even at low doses:

    - *Drug interactions*: Several drug classes substantially raise lithium levels and can precipitate toxicity---all are common in ME/CFS:
        - *NSAIDs* (ibuprofen, naproxen, diclofenac): reduce renal lithium clearance via prostaglandin inhibition; avoid or monitor closely
        - *ACE inhibitors / ARBs* (lisinopril, enalapril, losartan, valsartan): reduce lithium clearance via renin-angiotensin system; enhanced monitoring required
        - *Thiazide diuretics* (hydrochlorothiazide, indapamide---sometimes used for POTS): reduce lithium clearance more than ACE inhibitors; highest-risk combination; relative contraindication
        - *Beta-blockers* (propranolol, metoprolol---often used for POTS): reduce T4→T3 conversion via peripheral deiodinase inhibition; compound the lithium-induced thyroid suppression in ME/CFS patients already with Low T3 Syndrome
        - *SSRIs / SNRIs* (sertraline, duloxetine---prescribed for comorbid depression): low but real risk of serotonin syndrome at initiation or dose increase; monitor for agitation, myoclonus, hyperthermia
        - *Antibiotics* (metronidazole, tetracyclines---sometimes used for SIBO or co-infections): can raise lithium concentrations; check serum level if co-prescribed
    - *Renal impairment*: Contraindicated if eGFR < 30 mL/min. Baseline renal function must be checked before initiation.
    - *Dehydration risk*: Diarrhoea, excessive sweating, or reduced fluid intake (common during PEM crashes) requires temporary dose reduction or interruption, as lithium is renally cleared and dehydration concentrates serum levels.
    - *Thyroid monitoring specifics*: TSH alone is insufficient---free T3 (fT3) must be explicitly ordered as it is not included in standard thyroid panels. The mechanism of concern is lithium's suppression of T4→T3 conversion, which can reduce fT3 while TSH remains normal.
    - *Do not self-initiate*: Physician baseline evaluation including renal function, fT3/TSH, and comprehensive medication review is required before starting any lithium formulation.
]

*Limitations*

  - The Long COVID trial is not directly in ME/CFS; overlap with ME/CFS populations is substantial but not complete.
  - Lithium orotate (the supplement form) lacks the pharmacokinetic characterization of lithium carbonate; claims of superior BBB penetration via OATP1A2 transport require verification.
  - No ME/CFS-specific lithium trial exists; historical attempts used standard psychiatric dosing and were negative.
] <spec:low-dose-lithium>

== Autonomic Nervous System Dysfunction
<sec:ans-pathophysiology>

Autonomic dysfunction is nearly universal in ME/CFS and contributes substantially to disability. The NIH deep phenotyping study provided quantitative documentation of specific autonomic abnormalities @walitt2024deep.

=== Sympathetic vs. Parasympathetic Imbalance
<sec:autonomic-imbalance>

==== Heart Rate Variability Studies

Heart rate variability (HRV) provides a non-invasive window into autonomic function. The NIH study documented significantly diminished HRV in PI-ME/CFS patients compared to controls @walitt2024deep. These changes included reduced overall variability (lower standard deviation of NN intervals or SDNN, reflecting decreased overall autonomic modulation), diminished high-frequency power (reduced HF-HRV, specifically reflecting decreased parasympathetic or vagal activity), altered low-frequency power (changes in LF-HRV, influenced by both sympathetic and parasympathetic activity), and abnormal LF/HF ratio (suggesting sympathovagal imbalance).

*Clinical Implications of Reduced HRV*
Diminished HRV in ME/CFS correlates with greater fatigue severity (Escorihuela et al., n=45: RMSSD p=0.027, HFnu p=0.007 @Escorihuela2020hrv), worse orthostatic intolerance, impaired cognitive function, reduced exercise capacity, and poorer quality of life.

Low HRV is also an independent predictor of cardiovascular morbidity and mortality in other populations, raising concerns about long-term cardiovascular outcomes in ME/CFS.

==== Baroreflex Sensitivity

The baroreflex maintains blood pressure stability through rapid adjustments in heart rate and vascular tone. The NIH study found diminished baroreflex cardiovagal gain in ME/CFS patients @walitt2024deep, indicating impaired ability to modulate heart rate in response to blood pressure changes, reduced parasympathetic responsiveness, delayed cardiovascular adaptation to postural changes, and vulnerability to orthostatic stress.

*Baroreflex Testing Methods*
Several methods assess baroreflex function. Spontaneous baroreflex analysis calculates the relationship between spontaneous blood pressure and R-R interval fluctuations. The Valsalva maneuver assesses heart rate and blood pressure responses to standardized straining. Neck suction or pressure directly stimulates carotid baroreceptors, while pharmacological methods use vasoactive drugs to manipulate blood pressure.

==== Evidence for Decreased Parasympathetic Activity

Multiple lines of evidence converge on parasympathetic (vagal) dysfunction as a central feature of ME/CFS autonomic abnormalities. Reduced HRV high-frequency power provides a direct measure of cardiac vagal modulation. Diminished baroreflex sensitivity, which is primarily mediated by vagal mechanisms, further supports this dysfunction. Pupillary abnormalities reveal altered pupil responses to light (parasympathetically mediated), while gastrointestinal dysmotility reflects vagal nerve dysregulation of gut function. Additionally, reduced respiratory sinus arrhythmia indicates impaired vagally mediated heart rate variation with breathing.

The NIH study explicitly concluded that the autonomic findings indicated “decreased parasympathetic activity” @walitt2024deep, providing a unifying explanation for many ME/CFS symptoms.

==== Sympathetic Nervous System Abnormalities

While parasympathetic dysfunction is prominent, sympathetic abnormalities also occur. Resting sympathetic overactivity manifests as elevated norepinephrine spillover and increased muscle sympathetic nerve activity. Despite this elevated baseline, sympathetic reactivity is impaired, showing blunted responses to stressors. Regional sympathetic dysfunction produces variable activation across different vascular beds, while catecholamine dysregulation affects synthesis, release, and clearance.

*Reconciling central vs.\ peripheral norepinephrine:* An apparent contradiction exists between reduced central (CNS) norepinephrine documented in CSF @walitt2024deep and elevated peripheral norepinephrine spillover. This likely reflects compartmentalization: central noradrenergic systems (locus coeruleus, brain norepinephrine) are separate from peripheral sympathetic nervous system activity. One proposed mechanism is that central deficiency could plausibly impair the brain's regulation of the sympathetic nervous system, leading to dysregulated peripheral sympathetic output—elevated at rest but unable to respond appropriately to challenges. This dissociation between central and peripheral catecholamine compartments is well-established in autonomic physiology.

The combination of elevated baseline sympathetic activity with reduced reactivity creates a rigid, poorly adaptive autonomic system unable to respond appropriately to physiological challenges.

=== Mechanisms of Orthostatic Intolerance
<sec:orthostatic-mechanisms>

Orthostatic intolerance (OI) affects an estimated 70–90% of ME/CFS patients and manifests as postural orthostatic tachycardia syndrome (POTS), neurally mediated hypotension (NMH), orthostatic hypotension (OH), or combinations of these conditions.

Dysautonomia and POTS are components of the “Septad” framework of frequently co-occurring conditions in ME/CFS (Section @sec:septad). Small fiber neuropathy, another Septad component, may underlie autonomic dysfunction in a subset of patients, emphasizing the need for comprehensive evaluation of these interrelated pathophysiologies.

==== Blood Volume Abnormalities

Reduced blood volume is well-documented in ME/CFS and contributes to orthostatic intolerance @Streeten1998blood. Streeten and Bell documented that red blood cell mass was significantly reduced (p\<0.001) in 93.8% of female patients and 50% of male patients, with plasma volume subnormal in 52.6%. This total blood volume decrease compromises cardiovascular reserve through mechanisms possibly involving renin-angiotensin-aldosterone system dysfunction, reduced erythropoietin, or increased capillary permeability.

Hypovolemia reduces cardiac preload, compromising stroke volume and cardiac output, particularly during orthostatic stress.

==== Vascular Dysfunction

Multiple vascular abnormalities contribute to orthostatic intolerance. Impaired venoconstriction reduces the ability to mobilize venous blood during standing, leading to excessive venous pooling as blood accumulates in dependent vessels. Arterial dysregulation produces abnormal resistance vessel responses, while endothelial dysfunction impairs nitric oxide bioavailability.

==== Adrenergic Receptor Dysfunction

Abnormalities in adrenergic receptor function may explain some autonomic symptoms. Beta-adrenergic receptor autoantibodies have been identified in subsets of ME/CFS patients @Loebel2016 and may either activate or block receptors. Loebel et al.\ found that 29.5% of ME/CFS patients (n=268) had elevated autoantibodies against $beta$2, M3, and/or M4 receptors. Antibodies against $beta$2 adrenergic and M3 muscarinic receptors (both vasodilators) could explain vasoconstriction and hypoxemia observed in ME/CFS. Alpha-adrenergic abnormalities produce altered vasoconstrictor responses, while receptor desensitization may result from chronic catecholamine exposure downregulating receptors. Additionally, post-receptor signaling defects in G-protein coupling or second messenger systems may contribute to dysfunction.

==== Renin-Angiotensin-Aldosterone System

The RAAS regulates blood volume and pressure through sodium and water retention, vasoconstriction, and sympathetic activation.

Abnormalities in ME/CFS may include reduced aldosterone response to orthostatic stress, impaired renin secretion, altered angiotensin II sensitivity, and inappropriate natriuresis.

== Peripheral Nervous System
<sec:peripheral-nervous>

=== Small Fiber Neuropathy
<sec:sfn>

Small fiber neuropathy (SFN) affects thinly myelinated A-delta fibers and unmyelinated C fibers, which mediate pain, temperature, and autonomic functions. SFN has emerged as a significant finding in ME/CFS.

==== Skin Biopsy Findings

Punch skin biopsies with intraepidermal nerve fiber density (IENFD) measurement represent the gold standard for SFN diagnosis:

    - *Reduced IENFD*: Multiple studies report decreased nerve fiber density in ME/CFS patients @Oaklander2013sfn @Grayston2019sfn
    - *Correlation with symptoms*: Lower IENFD correlates with pain severity and autonomic dysfunction
    - *Distal predominance*: Typical length-dependent pattern with greater abnormalities in feet than thighs
    - *Prevalence*: Estimates range from 30--80% of ME/CFS patients meeting criteria for SFN, with the wide range reflecting variability in diagnostic methods (skin biopsy IENFD vs sudomotor testing), disease definition heterogeneity, and whether fibromyalgia-overlapping cohorts are included @Oaklander2022SFN @Grayston2019sfn. Oaklander et al. @Oaklander2013sfn found 41% of fibromyalgia patients (overlapping with ME/CFS) had reduced IENFD diagnostic for SFN. A meta-analysis by Grayston et al. @Grayston2019sfn reported 49% pooled prevalence (95% CI: 38-60%) of small fiber pathology in fibromyalgia across 8 studies

==== Autonomic Testing

Quantitative sudomotor axon reflex testing (QSART) and related methods assess small fiber autonomic function:

    - *Reduced sweat output*: Indicating sudomotor dysfunction
    - *Abnormal sweat gland innervation*: On skin biopsy analysis
    - *Correlation with orthostatic intolerance*: SFN may contribute to autonomic dysregulation

==== Pain Mechanisms

SFN may explain chronic pain in ME/CFS through:

    - *Neuropathic pain*: Burning, tingling, electric shock sensations
    - *Allodynia*: Pain from normally non-painful stimuli
    - *Hyperalgesia*: Exaggerated pain responses
    - *Central sensitization*: Peripheral nerve damage may trigger central pain amplification

==== Potential Causes of SFN in ME/CFS

    - Autoimmune mechanisms (ganglioside antibodies, sodium channel antibodies)
    - Metabolic dysfunction (mitochondrial, oxidative stress)
    - Chronic inflammation
    - Microvascular abnormalities affecting nerve blood supply
    - Direct viral damage (in post-infectious cases)

=== Nerve Conduction Studies

==== Electrophysiological Findings

Standard nerve conduction studies (NCS) assess large myelinated fiber function and are typically normal in ME/CFS, consistent with selective small fiber involvement. However, some studies report:

    - Subtle prolongation of distal latencies
    - Reduced compound muscle action potential amplitudes
    - Abnormal F-wave parameters
    - Changes suggesting subclinical demyelination

==== Implications

The contrast between abnormal small fiber findings and relatively preserved large fiber function suggests:

    - Selective vulnerability of small fibers to ME/CFS pathophysiology
    - Potential autoimmune targeting of specific nerve fiber populations
    - Metabolic or oxidative stress preferentially affecting unmyelinated fibers
    - Different pathophysiology from typical diabetic or inflammatory neuropathies

=== Treatment of Small Fiber Neuropathy
<sec:sfn-treatment>

#limitation(title: [Clinical Context, Not Treatment Advice])[
The treatment guidance below is provided for clinical context within a pathophysiology chapter. All medications listed are prescription-only (several off-label in ME/CFS). Prescribers should consult current neuropathic pain guidelines (e.g. Finnerup et al.\ 2015 @Finnerup2015neuropathic) and the patient's full medication list before initiation. This is not a substitute for individualised clinical assessment.
]

Management of SFN in ME/CFS requires addressing both symptomatic relief and underlying mechanisms. Treatment strategies must be adapted for ME/CFS-specific considerations including medication sensitivity and post-exertional malaise.

==== First-Line Neuropathic Pain Medications

*Gabapentinoids.*
Gabapentin and pregabalin remain first-line treatments for neuropathic pain based on NeuPSIG guidelines @Finnerup2015neuropathic. Dosing recommendations below derive from these guidelines and clinical experience; individual titration is essential:

    - *Gabapentin*: Start 100–300 mg at bedtime; titrate slowly to 900–3600 mg/day in divided doses
    - *Pregabalin*: Start 25–75 mg at bedtime; titrate to 150–600 mg/day in divided doses
    - *Mechanism*: Bind alpha-2-delta subunit of voltage-gated calcium channels, reducing excitatory neurotransmitter release
    - *Benefits*: Also improve sleep quality and may reduce central sensitization
    - *ME/CFS considerations*: Start at lower doses due to common medication sensitivity; sedation may help or hinder depending on individual sleep patterns

*Serotonin-Norepinephrine Reuptake Inhibitors (SNRIs).*
Duloxetine has FDA approval for diabetic peripheral neuropathy @Finnerup2015neuropathic:

    - *Duloxetine*: Start 20–30 mg daily; target 60 mg daily (range 30–120 mg)
    - *Venlafaxine*: Alternative SNRI; 150–225 mg/day extended-release
    - *Mechanism*: Enhance descending pain inhibition pathways via norepinephrine and serotonin
    - *Additional benefits*: May help comorbid depression and fatigue in some patients
    - *Cautions*: Discontinuation syndrome with abrupt cessation; may increase blood pressure

*Tricyclic Antidepressants.*
Low-dose tricyclics provide analgesic effects independent of antidepressant action:

    - *Amitriptyline*: Start 10 mg at bedtime; titrate to 25–75 mg (lower than antidepressant doses)
    - *Nortriptyline*: Less sedating alternative; 10–75 mg at bedtime
    - *Mechanism*: Block norepinephrine reuptake, sodium channels, and NMDA receptors
    - *Benefits*: Improve sleep architecture; long clinical experience
    - *Cautions*: Anticholinergic effects (dry mouth, constipation, urinary retention); cardiac effects at higher doses; morning sedation

==== Topical Treatments

Topical agents provide targeted relief with minimal systemic effects—particularly valuable in medication-sensitive ME/CFS patients:

*Lidocaine.*

    - *5% lidocaine patches*: Apply to painful areas for up to 12 hours daily
    - *Mechanism*: Blocks sodium channels in peripheral nerves, reducing ectopic firing
    - *Advantages*: Minimal systemic absorption; can be cut to size; well-tolerated
    - *Limitations*: Localized effect only; works best for focal pain

*Capsaicin.*

    - *Low-concentration cream (0.025–0.075%)*: Apply 3–4 times daily
    - *High-concentration patch (8%)*: Single application by healthcare provider; effects last 3 months
    - *Mechanism*: Depletes substance P from peripheral nerve endings; defunctionalizes TRPV1-expressing nociceptors. TRPV1 is sensitized by prostaglandins via EP1 and IP receptors @Moriyama2005 and by its own activation via a COX2 feed-forward loop @Li2021, making chronic sensitization self-sustaining without repeated external triggers; capsaicin desensitization interrupts this loop
    - *Cautions*: Initial burning sensation (usually diminishes with regular use); avoid mucous membranes and eyes

==== Treatment of Underlying Causes

*Autoimmune SFN.*
When SFN has an autoimmune etiology (suggested by anti-ganglioside or anti-sodium channel antibodies), immunomodulation may be beneficial @Oaklander2016autoimmuneSFN:

    - *IVIG*: 0.4 g/kg/day for 5 days, then monthly maintenance; case series evidence (low certainty) suggests improvement in pain and autonomic symptoms in autoimmune SFN, though RCT data are lacking @Liu2020IVIG
    - *Corticosteroids*: Short courses for acute flares; long-term use limited by side effects
    - *Other immunomodulators*: Rituximab, azathioprine, mycophenolate in refractory cases
    - *ME/CFS relevance*: Given autoimmune hypotheses in ME/CFS, autoimmune SFN testing should be considered in patients with prominent neuropathic features

#limitation(title: [Small Fiber Neuropathy: Prevalence Extrapolated from Fibromyalgia])[
SFN prevalence estimates in ME/CFS (30–60%) derive largely from fibromyalgia cohorts with assumed overlap rather than ME/CFS-specific studies. Key data gaps:

    - The most-cited prevalence data (Oaklander 2013, Grayston 2019 meta-analysis) studied fibromyalgia patients, not ME/CFS cohorts selected by ME/CFS diagnostic criteria.
    - No large-scale study has determined IENFD in a well-characterised ME/CFS cohort with appropriate controls.
    - Treatment recommendations (alpha-lipoic acid, acetyl-L-carnitine, IVIG for autoimmune SFN) are extrapolated from diabetic neuropathy or case series; none have been tested in ME/CFS-specific trials.
    - The causal relationship between SFN and ME/CFS symptoms is unestablished—SFN may be an independent comorbidity rather than a mechanistic contributor.

]

*Metabolic and Nutritional Support.*
Several supplements may support nerve regeneration. Note that evidence derives primarily from diabetic neuropathy populations; efficacy in ME/CFS-associated SFN has not been specifically studied:

    - *Alpha-lipoic acid*: 600–1800 mg daily; demonstrated efficacy in diabetic neuropathy RCTs @Ziegler2006ALA; antioxidant and mitochondrial cofactor
    - *Acetyl-L-carnitine*: 1500–3000 mg daily; supports neuronal energy metabolism; RCT evidence in diabetic neuropathy showing improved pain and nerve regeneration @Sima2005ALCAR
    - *B vitamins*: B12 (methylcobalamin 1000–5000 mcg), B6 (avoid excess \>100 mg/day, which can cause neuropathy), B1 (benfotiamine 300–600 mg)
    - *Mechanism*: Support mitochondrial function, reduce oxidative stress, provide nerve membrane substrates

#warning-env(title: [Vitamin B6 Toxicity])[
While B6 deficiency can cause neuropathy, excess pyridoxine supplementation (typically \>200 mg/day chronically) can paradoxically cause a sensory neuropathy. Patients should not exceed 100 mg/day without medical supervision, and B6 levels should be checked if neuropathy worsens with supplementation.
]

==== ME/CFS-Specific Considerations

Treatment of SFN in ME/CFS requires adaptation for this population:

    - *Start low, go slow*: Begin at 25–50% of typical starting doses due to medication sensitivity
    - *Single changes*: Add or adjust one medication at a time to identify responses
    - *Sedation balance*: Sedating medications (gabapentin, amitriptyline) may help sleep but worsen daytime fatigue
    - *Autonomic effects*: Many neuropathic pain medications affect autonomic function; monitor orthostatic symptoms
    - *PEM awareness*: Exercise-based therapies sometimes recommended for neuropathy are contraindicated in ME/CFS due to PEM risk
    - *Topical preference*: Consider topical agents first given lower systemic burden

==== Treatment Algorithm

The following algorithm represents a proposed approach synthesized from NeuPSIG guidelines @Finnerup2015neuropathic and clinical experience with ME/CFS patients. It is not a validated clinical guideline:

    - *Diagnosis confirmation*: Skin biopsy for IENFD; autonomic testing; screen for treatable causes (diabetes, B12 deficiency, autoantibodies)
    - *Address underlying causes*: Treat autoimmune SFN with immunomodulation; correct nutritional deficiencies
    - *First-line symptomatic*: Topical lidocaine for focal pain; low-dose gabapentinoid or TCA at bedtime
    - *Second-line*: Add SNRI if inadequate response; consider combination therapy (e.g., gabapentinoid + TCA)
    - *Adjunctive support*: Alpha-lipoic acid, acetyl-L-carnitine for neuroprotection (extrapolated from diabetic neuropathy evidence)
    - *Refractory cases*: Pain medicine referral; interventional options; IVIG trial if autoimmune markers present

#open-question(title: [SFN Reversibility in ME/CFS])[
Can small fiber neuropathy in ME/CFS patients be reversed with appropriate treatment? Case reports suggest IENFD can normalize after treating underlying conditions (e.g., autoimmune SFN with IVIG, diabetic SFN with glucose control). If ME/CFS-associated SFN has an autoimmune or inflammatory basis, early immunomodulation might prevent permanent nerve damage. Longitudinal studies with serial skin biopsies in treated patients would clarify whether nerve regeneration is achievable.
]

== Blood-Brain Barrier Dysfunction
<sec:bbb>

The blood-brain barrier (BBB) normally restricts entry of cells, pathogens, and molecules from the bloodstream into the brain parenchyma. BBB dysfunction may contribute to neuroinflammation and neurological symptoms in ME/CFS.

=== Evidence for Permeability Changes

    - *CSF/serum albumin ratio*: Elevated in some ME/CFS patients, indicating increased permeability
    - *Neuroimaging markers*: Subtle gadolinium enhancement suggesting leakage
    - *Peripheral inflammatory markers in CSF*: Cytokines and chemokines crossing the barrier
    - *Autoantibodies in CNS*: Entry of pathogenic antibodies

=== Consequences for Neuroinflammation

BBB dysfunction permits:

    - *Peripheral immune cell infiltration*: T cells, monocytes entering brain tissue
    - *Cytokine entry*: Peripheral inflammatory mediators reaching the CNS
    - *Autoantibody access*: Receptor-targeting antibodies affecting neural function
    - *Pathogen penetration*: Viral particles or antigens entering the brain

=== Transport Dysfunction

Beyond passive permeability, active transport systems at the BBB may be dysfunctional:

    - *Glucose transporters*: Potentially explaining cerebral hypometabolism
    - *Amino acid transporters*: Affecting neurotransmitter precursor availability
    - *Drug efflux pumps*: Altering CNS drug concentrations
    - *Receptor-mediated transcytosis*: Impaired transport of essential molecules

#hypothesis(title: [Autoantibodies Causally Drive Neurological Dysfunction in Long COVID])[
Guedes de S\'a et al. @GuedesDeSa2024 identified diverse autoantibodies against nervous system targets in Long COVID patients with neurological symptoms, using proteome-wide arrays covering $>$21000 human proteins. Critically, passive transfer of purified patient IgG to mice reproduced the donors' neurological phenotypes—including pain hypersensitivity, balance loss, and disorientation—establishing causal sufficiency. Autoantibodies targeted pontine tissue, meninges, spinal cord, and sciatic nerve; meningeal reactivity correlated with headache and sciatic reactivity with disorientation. If this mechanism extends to post-viral ME/CFS with prominent neurological symptoms, it would identify a distinct autoimmune endotype where autoantibody removal (plasmapheresis, IVIG, rituximab) would be the mechanistically appropriate intervention.

*Testable prediction:* ME/CFS patients with prominent neurological features should show higher titres of anti-pons and anti-meningeal autoantibodies than those with predominantly fatigue-dominant presentation.

*Treatment implication:* Plasmapheresis, IVIG, or B-cell depletion (rituximab) should be evaluated in ME/CFS patients with documented anti-nervous system autoantibodies.
Study: (preprint, passive transfer demonstrated, certainty: 0.60, not yet independently replicated).
] <hyp:guedesde-sa2024-autoab-neuro>

#hypothesis(title: [Spike Protein Primes Brain Innate Immunity, Lowering the Neuroinflammatory Threshold])[
Frank et al. @Frank2024S1Priming demonstrated that prior S1 spike subunit
exposure sensitises brain innate immunity in rats, producing protracted potentiation
of neuroinflammatory responses—MhcII$alpha$, Nlrp3, and Tlr4 upregulation
persisting 7 days—and exaggerated reactions to subsequent immune challenges.
S1 reduced baseline corticosteroid levels in brain tissue, disinhibiting TLR-driven
innate immune pathways. If this priming mechanism operates in humans, even minor
infections or physiological stressors following SARS-CoV-2 could trigger
disproportionate neuroinflammatory cascades in long COVID and post-COVID ME/CFS
patients, explaining symptom relapse after minor immune challenges and the
characteristic neurological component of post-exertional malaise.

*Testable prediction:* Long COVID patients should show elevated cerebrospinal
fluid neuroinflammation markers specifically after minor intercurrent infections, with
the magnitude correlating with the interval since primary SARS-CoV-2 infection and
residual S1 antigen burden.

*Treatment implication:* Reducing S1-driven TLR4 signalling (e.g., via
TLR4 antagonists or anti-neuroinflammatory agents) could lower the neuroinflammatory
threshold before the next immune challenge.
Study: (rat model, Brain Behavior Immunity 2024, certainty: 0.55; human translation pending).
] <hyp:frank2024-s1-priming>

Direct measurement of neuroinflammatory activity in ME/CFS and Long COVID via dual PET-MRI is currently underway, with preliminary pilot data from existing PET studies suggesting elevated microglial activation in multiple brain regions @Nakatomi2014neuroinflammation, and ongoing work aiming to establish the causal relationship between glial activation and objective cognitive impairment @VanElzakker2024NeuroinflammationProject.

=== Blood-Brain Barrier as CNS Vulnerability Factor
<sec:bbb-vulnerability>

While the preceding subsections address BBB permeability and transport dysfunction from the perspective of what enters or exits the CNS, the BBB may create _unique vulnerability_ for CNS tissues in ME/CFS through mechanisms that paradoxically stem from the barrier's protective function.

#speculation(title: [Blood-Brain Barrier Vulnerability Hypothesis])[
*Certainty: 0.35.*

The blood-brain barrier creates CNS-specific vulnerability in ME/CFS through three converging mechanisms: (1) trapping damage signals that trigger persistent neuroinflammation, (2) limiting access to mitochondrial cofactors needed for repair, and (3) preventing the rapid mitochondrial turnover possible in peripheral dividing cells.

*Mechanism 1: Trapping neuroinflammatory signals.*
Mitochondrial dysfunction leads to mitochondrial DNA (mtDNA) leakage into the cytoplasm, activating the cGAS-STING pathway and triggering type I interferon and pro-inflammatory cytokine production @mtDNA_cGAS_STING_2024. In peripheral tissues, the resulting inflammation can be resolved through immune cell infiltration and clearance. In the CNS, however, the BBB restricts immune cell access. When neuronal or glial mtDNA activates cGAS-STING signaling in microglia and astrocytes, the resulting neuroinflammation becomes _trapped_—peripheral immune cells that might otherwise regulate or resolve the inflammation cannot readily cross the barrier. This may explain the persistent microglial activation documented in ME/CFS PET studies @Nakatomi2014neuroinflammation: once initiated by mtDNA leak, neuroinflammation perpetuates because the BBB prevents clearance mechanisms available to peripheral tissues.

*Mechanism 2: Limited cofactor access for mitochondrial repair.*
Mitochondrial function requires continuous supply of cofactors (CoQ10, NAD#super[+]/NADH, B vitamins), which reach peripheral tissues relatively easily via systemic circulation but face BBB transport limitations. CoQ10 can cross the BBB via SR-B1 and RAGE receptors but is simultaneously effluxed back to blood via LRP-1/LDLR receptors, creating net-negative brain uptake in many conditions @CoQ10_BBB_2025. Only methylcobalamin (the active B12 form) crosses without biotransformation via specific cubam receptors @methylcobalamin_BBB_2024; the common supplement form cyanocobalamin requires conversion before CNS entry. NAD#super[+] has a short half-life (1–2 hours) and limited BBB penetration @intranasal_NAD_2024. The consequence: oral supplementation that improves peripheral mitochondrial function may have minimal CNS effects.

*Mechanism 3: Constrained mitochondrial turnover in post-mitotic cells.*
Neurons do not divide after development. Brain synaptic mitochondrial proteins have a median half-life of 25.7 days versus hepatic mitochondrial proteins at 3.5 days—a 7-fold difference @mitochondrial_halflife_neurons_2023. Damaged mitochondria at distal synapses must travel potentially meters back to the soma for mitophagy, and may accumulate dysfunction where energy demand is highest. In contrast, peripheral dividing cells replace entire cells every few days, diluting mitochondrial damage across generations. CNS mitochondria thus accumulate damage _faster_ than they can be repaired or replaced.

*Convergence.*
These three mechanisms converge: mitochondrial dysfunction leads to mtDNA leak; mtDNA activates cGAS-STING neuroinflammation; the BBB prevents immune clearance so inflammation persists; the BBB limits cofactor supply so repair is constrained; and the neuronal post-mitotic state prevents turnover from diluting damage. The result is progressive CNS dysfunction even when peripheral tissues stabilize—explaining why cognitive symptoms may persist despite improved muscle function or reduced systemic inflammation.

*Testable predictions.*

    - CSF should show higher concentrations of mitochondrial DAMPs (mtDNA fragments, 8-OHdG) relative to blood, reflecting faster CNS damage accumulation
    - BBB-penetrant supplement forms (methylcobalamin, liposomal CoQ10, intranasal NAD#super[+]) should improve cognitive symptoms more than standard forms at equivalent doses
    - Intranasal delivery of mitochondrial-targeted compounds should show cognitive benefits where oral forms do not, as intranasal delivery bypasses the BBB via olfactory and trigeminal pathways @intranasal_NAD_2024
    - Patients with higher CSF/serum albumin ratios (greater BBB permeability @Natelson_BBB_MECFS_2001) should paradoxically show _lower_ neuroinflammation, as increased permeability allows partial immune clearance
    - CSF should show elevated STING pathway activation markers (cGAMP, phospho-TBK1) correlating with cognitive symptom severity

*Treatment implications.*
If this hypothesis is correct, therapeutic strategies should prioritize: (1) BBB-penetrant cofactor formulations (methylcobalamin over cyanocobalamin, liposomal CoQ10, BBB-penetrant antioxidants such as MitoQ or idebenone); (2) intranasal delivery of NAD#super[+], NMN, or glutathione; (3) cGAS-STING pathway inhibition to reduce trapped neuroinflammation; (4) mitophagy-enhancing compounds (urolithin A, spermidine) to help neurons clear damaged mitochondria.

*Limitations.*
This hypothesis has certainty 0.35. It synthesizes mechanisms documented in neurodegenerative diseases and applies them to ME/CFS by analogy—no study has directly measured cGAS-STING activation, CSF mtDNA levels, or mitochondrial turnover rates in ME/CFS patients. BBB permeability is heterogeneous across ME/CFS patients @Natelson_BBB_MECFS_2001, and if some patients have highly permeable BBB, the trapping mechanism may not apply universally. Genetic polymorphisms in BBB transporters may create substantial patient-to-patient variability. Despite these limitations, the hypothesis is testable and generates specific predictions evaluable in cohorts with CSF access.
] <spec:bbb-vulnerability>

=== Meningitis as a Model for Acute BBB-Neuroinflammatory Injury in ME/CFS
<sec:meningitis-bbb>

Bacterial meningitis provides a natural model of acute, severe BBB disruption combined with intense neuroinflammation—the same two pathological processes documented in ME/CFS, but compressed into days rather than developing over months to years. The overlap is not merely superficial: the specific molecular pathways engaged in meningitis converge with those implicated in ME/CFS across at least five mechanistic domains.

==== Convergent Neuroinflammatory Pathways

*Microglial activation and the “second hit” hypothesis.*
ME/CFS serum directly activates human HMC3 microglial cells via the ATG13/RAGE axis, triggering reactive oxygen and nitric oxide production @Gottschalk2022ATG13. The neuroglial failure hypothesis proposes dysfunctional glia as a common denominator linking PEM to decreased cerebral blood flow @RenzPolster2022. If ME/CFS microglia are already primed or activated—as the ATG13/RAGE findings and PET imaging data suggest @Gottschalk2022ATG13 @Nakatomi2014neuroinflammation—a meningitis infection would represent a potent “second hit.” Primed microglia in other neuroinflammatory contexts show exaggerated responses to subsequent insults, a phenomenon well-documented in traumatic brain injury and neurodegeneration research. If this generalises to ME/CFS, patients would experience disproportionately severe neuroinflammation from meningitis compared to immunologically na\"ive individuals.

*Oxidative and nitrosative stress.*
Peroxynitrite (from superoxide + nitric oxide) is a central mediator of brain damage in bacterial meningitis, causing lipid peroxidation, DNA single-strand breaks, PARP activation, and endothelial dysfunction @Scheld1999oxidative. ME/CFS patients show elevated markers of the same oxidative/nitrosative stress pathways—malondialdehyde, protein carbonyls, and nitrotyrosine—as documented in the NO/ONOO#super[-] cycle model @Pall2000Peroxynitrite @PaulBhatt2025oxidative. The PARP activation $\to$ NAD#super[+] depletion cascade, proposed as a fatigue mechanism in ME/CFS via kynurenine-mediated quinolinic acid accumulation @Dehhaghi2022kynurenine, links oxidative stress to energy metabolism failure in both conditions.

*Mitochondrial dysfunction.*
In severe bacterial meningitis, non-ischaemic mitochondrial dysfunction (elevated lactate/pyruvate ratio $>$30 with normal pyruvate) occurs more commonly than ischaemia @Schwerk2015meningitis. This parallels the ME/CFS mitochondrial phenotype: impaired oxidative phosphorylation and elevated lactate in the absence of frank ischaemia @Myhill2009mitochondrial @Tomas2017. The initiating insult differs (bacterial toxins vs.\ unclear trigger), but the bioenergetic failure pattern is analogous.

*Kynurenine pathway activation.*
Bacterial meningitis activates IDO, producing significantly elevated CSF kynurenine and quinolinic acid ($P\<0.01$), with quinolinic acid causing NMDA receptor-mediated excitotoxicity @Midtbo2014meningitis. This IDO activation is specific to bacterial meningitis; viral meningitis showed no significant kynurenine pathway activation. ME/CFS involves kynurenine pathway dysregulation with impaired NAD#super[+] production via this route @Kavyani2022kynurenine @Dehhaghi2022kynurenine. Both conditions thus show kynurenine-mediated NAD#super[+] depletion, though the direction of pathway dysregulation may differ (acute hyperactivation in meningitis vs.\ chronic dysregulation in ME/CFS).

*Endothelial dysfunction and microclots.*
Meningococcal sepsis causes endotheliopathy with microthrombi formation through LPS-driven endothelial activation—a well-established clinical feature of invasive meningococcal disease. ME/CFS shows fibrinolysis-resistant amyloid-type microclots in platelet-poor plasma at burdens significantly exceeding controls @VanderLinden2023microclots. The downstream pathology—microcapillary blockage causing tissue hypoperfusion—is shared. A meningitis episode in an ME/CFS patient with pre-existing endothelial dysfunction and microclots would compound vascular compromise at both macro- and microvascular levels.

==== Glymphatic System: The Mast Cell–CSF Flow Axis
<sec:glymphatic-meningitis>

The glymphatic system—the brain's waste clearance pathway, dependent on perivascular CSF flow driven by AQP4-rich astrocytic endfeet—is disrupted in both conditions through distinct but converging mechanisms.

*Meningitis-induced glymphatic failure.*
Pneumococcal meningitis causes progressive retraction of astrocytic endfeet from the vascular endothelium and misplacement of AQP4 water channels, preventing CSF-interstitial fluid exchange @Pinas2022glymphatic. This leads to accumulation of bacterial toxins and metabolic waste in CSF compartments, with downstream microglial activation, brain damage, and memory impairment. The authors proposed glymphatic dysfunction as “a new pathomechanism in pneumococcal meningitis” explaining long-term neurological sequelae.

*ME/CFS glymphatic dysfunction.*
Impaired glymphatic waste clearance is proposed as a key contributor to ME/CFS, with toxic buildup contributing to cognitive symptoms and fatigue @Perrin2025glymphatic. Cerebral blood flow abnormalities cause hypoxia, which further impairs glymphatic function (Section @sec:cerebral-blood-flow).

*The dural mast cell bridge.*
A landmark 2025 study demonstrated that dural mast cells regulate CSF dynamics at arachnoid cuff exit (ACE) points @Christodoulides2024meningitis. During bacterial meningitis, mast cell activation redirects CSF flow, recruits neutrophils, and limits bacterial invasion; mice lacking dural mast cells had impaired immune responses and higher brain bacterial loads.

#speculation(title: [MCAS-Mediated Glymphatic Impairment via Dural Mast Cell Dysfunction])[
*Certainty: 0.25.*

If dural mast cells regulate CSF dynamics at ACE points @Christodoulides2024meningitis, then chronic mast cell dysfunction—as in the ME/CFS-associated MCAS phenotype (Section @sec:mcas)—could disrupt CSF flow regulation at these exit points, directly impairing glymphatic clearance. This would connect mast cell pathology to waste accumulation and cognitive symptoms via a non-inflammatory mechanism, distinct from the systemic inflammatory effects of mast cell mediator release. The certainty is low because the Christodoulides et al.\ finding is from a murine model, has not been replicated, and the extension to chronic MCAS is entirely extrapolated—no study has examined dural mast cell function in ME/CFS or MCAS patients.

*Testable prediction:* ME/CFS patients with comorbid MCAS show reduced CSF flow velocity (phase-contrast MRI) or impaired glymphatic clearance markers compared to ME/CFS patients without MCAS, and mast cell stabiliser treatment partially restores CSF flow metrics. Falsified if MCAS-positive and MCAS-negative ME/CFS patients show equivalent glymphatic function on imaging.
] <spec:mcas-glymphatic>

#speculation(title: [Meningitis as Disproportionate Neurological Threat in ME/CFS: The Double Vulnerability Hypothesis])[
*Certainty: 0.35.*

ME/CFS patients face compounding vulnerability to meningitis through five converging mechanisms that amplify both infection severity and post-infectious neurological damage:

    - *Easier pathogen entry*: Pre-existing BBB compromise (Section @sec:bbb) permits faster bacterial penetration of the CNS, reducing the time window for peripheral immune containment
    - *Slower immune clearance*: NK cell dysfunction @Caligiuri1987nk @EatonFitch2019 and CD8#super[+] T cell exhaustion @iu2024tcell_exhaustion impair pathogen clearance, extending the duration of active CNS infection
    - *Exaggerated neuroinflammation*: Primed microglia @Gottschalk2022ATG13 produce disproportionate inflammatory responses to the meningitis “second hit,” causing greater neuronal damage per unit of infection
    - *Impaired glymphatic recovery*: Pre-existing AQP4 misplacement or mast cell-mediated CSF flow dysfunction @Christodoulides2024meningitis @Pinas2022glymphatic prevents effective clearance of inflammatory debris after infection resolution, prolonging neuroinflammation
    - *Ratchet-effect baseline decline*: Within the infection ratchet model (Speculation @spec:infection-damage-ratchet), meningitis would represent a uniquely large “step” due to direct CNS involvement, potentially producing severe and permanent functional decline—with the Q Fever Fatigue Syndrome literature (98.9% PEM at 10 years @Spronk2023qfever) demonstrating that bacterial infections can cause persistent post-infectious disability comparable to or exceeding viral triggers

The mathematical structure of this compounding vulnerability is illustrative rather than calibrated, but clarifies the logic: if BBB compromise reduces containment time by factor $alpha < 1$, immune dysfunction reduces clearance rate by factor $beta < 1$, and microglial priming amplifies neuroinflammation by factor $gamma > 1$, the resulting neurological damage scales as $tilde gamma / (alpha dot beta)$ relative to an immunocompetent individual. Under the assumption of independence (see Limitations below), even modest impairments in each domain ($alpha = 0.7$, $beta = 0.6$, $gamma = 1.5$) would suggest $tilde 3.6times$ greater neurological injury—an order-of-magnitude estimate, not a calibrated prediction.

*Testable predictions.*

    - ME/CFS patients who contract meningitis should show worse Glasgow Outcome Scale scores at 6 months compared to age-matched non-ME/CFS meningitis patients
    - Post-meningitis ME/CFS patients should show greater PET-documented microglial activation than either condition alone
    - CSF inflammatory markers (IL-1$beta$, TNF-$alpha$, quinolinic acid) should be disproportionately elevated in ME/CFS patients during acute meningitis relative to their peripheral inflammatory burden
    - ME/CFS patients with documented MCAS should show worse post-meningitis cognitive outcomes than ME/CFS patients without MCAS, reflecting mast cell-mediated glymphatic impairment

*Clinical implication.*
This hypothesis strengthens the case for infection prevention as disease-modifying therapy in ME/CFS. Meningococcal vaccination is safe in CFS populations (adjusted OR 1.06 @Magnus2009meningococcal) and patients mount adequate vaccine responses @Prinsen2012vaccine. Given the theoretical compounding vulnerability, ME/CFS patients—particularly those with documented BBB abnormalities, MCAS, or severe immune dysfunction—may benefit from meningococcal vaccination beyond standard population-level indications, a recommendation that should be discussed with the treating physician.

*Limitations.*
No study has examined meningitis outcomes in ME/CFS patients. The compounding vulnerability model is entirely theoretical, constructed from independent findings that have never been tested in combination. The multiplicative damage estimate assumes independence of the contributing factors, which may not hold: BBB compromise and immune dysfunction may be causally linked rather than independent multipliers. The model also assumes that ME/CFS immune dysfunction is sufficiently severe to measurably impair bacterial defense, which is plausible but undemonstrated for meningococcal disease specifically.
] <spec:meningitis-double-vulnerability>

== Cerebral Blood Flow Abnormalities
<sec:cerebral-blood-flow>

Cerebral blood flow (CBF) abnormalities are among the most consistently documented findings in ME/CFS and likely contribute substantially to cognitive symptoms.

// Insert Figure: Normal Cerebral Blood Flow
#include "../figures/fig-cerebral-hypoperfusion-normal.typ"

// Insert Figure: ME/CFS Cerebral Hypoperfusion
#include "../figures/fig-cerebral-hypoperfusion-mecfs.typ"

Figures @fig:cerebral-hypoperfusion-normal and @fig:cerebral-hypoperfusion-mecfs illustrate how multiple mechanisms reduce cerebral blood flow in ME/CFS (30–40 mL/100g/min vs.\ normal 50–60 mL/100g/min, a 40% reduction).

=== Reduced Regional Blood Flow

Multiple neuroimaging modalities have demonstrated CBF reductions @vanCampen2020severity:

    - *Global hypoperfusion*: 10–20% reduction in total cerebral blood flow (measured by SPECT and Doppler ultrasound)
    - *Regional deficits*: Particularly in frontal, temporal, and parietal regions
    - *Brainstem hypoperfusion*: Potentially explaining autonomic dysfunction @Barnden2011brainstem
    - *Subcortical abnormalities*: Basal ganglia and thalamic hypoperfusion

Van Campen et al. @vanCampen2020severity documented that 90% of ME/CFS patients (n=429) showed abnormal CBF reduction (\>13%) during head-up tilt testing, with end-tilt CBF reduction of 26% in ME/CFS patients versus only 7% in controls (n=44). Importantly, this occurred even in the absence of hypotension or tachycardia, indicating intrinsic cerebrovascular dysfunction rather than solely cardiovascular causes.

=== Correlation with Cognitive Symptoms

CBF reductions correlate with specific cognitive deficits:

    - Frontal hypoperfusion → executive dysfunction, working memory impairment
    - Temporal hypoperfusion → verbal memory deficits, language processing difficulties
    - Parietal hypoperfusion → attention deficits, spatial processing impairment
    - Global hypoperfusion → processing speed reduction, mental fatigue

=== Mechanisms of Cerebral Hypoperfusion

The cerebral hypoperfusion documented above likely results from multiple converging mechanisms:

    - *Reduced cardiac output*: Secondary to autonomic dysfunction (Section @sec:ans-pathophysiology) and blood volume deficits @Streeten1998blood
    - *Impaired cerebral autoregulation*: Inability to maintain CBF across blood pressure changes @Barnden2011brainstem
    - *Endothelial dysfunction*: Reduced nitric oxide-mediated vasodilation
    - *Increased cerebrovascular resistance*: Vasoconstriction or structural changes
    - *Neurovascular uncoupling*: Failure of blood flow to match metabolic demand

The integration of autonomic dysfunction, reduced blood volume, and direct cerebrovascular pathology creates a multifactorial reduction in brain perfusion that correlates with cognitive symptom severity. This multifactorial integration is characteristic of ME/CFS pathophysiology and is discussed in the context of multi-system interactions in Chapter @ch:integrative-models, Section @sec:synthesis.

=== Exacerbation with Exertion

Importantly, cerebral perfusion abnormalities worsen following physical or cognitive exertion:

    - Further CBF reductions post-exercise
    - Prolonged recovery of normal perfusion
    - Correlation with post-exertional malaise severity
    - Potential contribution to cognitive "crashes" following activity

=== The Brainstem Autonomic Loop Hypothesis
<sec:brainstem-autonomic-loop>

The convergence of brainstem neuroinflammation (Yu et al.\ 2026 NII imaging @Yu2026diffusion-neuroinflammation), brainstem functional connectivity changes (Faro et al.\ 2024 @Faro2024connectivity), cerebral hypoperfusion, and autonomic dysfunction suggests a three-node vicious cycle that may maintain ME/CFS pathology.

#hypothesis(title: [Brainstem Autonomic Loop: Neuroinflammation as Both Cause and Consequence of Vascular-Immune Failure])[
*Certainty: 0.40.* Based on convergent neuroimaging (NII, fMRI), autonomic testing, and CSF proteomics evidence; mechanism consistent with established vagal anti-inflammatory pathway biology. Not directly tested as a unified hypothesis in ME/CFS. @Yu2026diffusion-neuroinflammation @Faro2024connectivity @Bragée2026csf-proteome

The brainstem (medulla, pons) contains autonomic centers---nucleus tractus solitarius, dorsal motor nucleus of vagus, rostral ventrolateral medulla---that regulate heart rate, blood pressure, and cerebral blood flow. Neuroinflammation in the brainstem would: (1) impair autonomic output, reducing vagal tone and the cholinergic anti-inflammatory pathway; (2) produce cerebral hypoperfusion through impaired autoregulation; (3) allow peripheral immune activation to proceed unchecked due to loss of vagal immune restraint.

Simultaneously, reduced autonomic output produces hypovolemia and hypoperfusion, causing cerebral ischemia and metabolic stress that further drives neuroinflammation. Peripheral immune activation generates cytokines that cross the blood-brain barrier, amplifying brainstem neuroinflammation. This three-node cycle---brainstem neuroinflammation $arrow.l.r$ autonomic failure $arrow.l.r$ peripheral immune-vascular dysfunction---creates a self-sustaining state consistent with the bistability described in the energy-immune coupling model.

The Faro et al.\ finding of increased cuneiform nucleus--medulla functional connectivity in ME/CFS @Faro2024connectivity may reflect compensatory activation of this impaired brainstem circuit. POTS+ patients (Brag{\'e}e et al.\ 2026 @Bragée2026csf-proteome) showing neutrophil degranulation and platelet activation in CSF may represent the most extreme manifestation of this loop, where autonomic collapse permits full peripheral immune activation to penetrate the CNS compartment.

*Testable predictions:*
    + NII metrics in brainstem white matter tracts will correlate more strongly with autonomic function tests (HRV, tilt table response) than with cognitive tests
    + POTS+ patients will show worse brainstem NII metrics than non-POTS patients
    + Improving vagal tone (transcutaneous VNS) will reduce peripheral inflammatory markers only in patients with brainstem NII abnormalities
] <hyp:brainstem-autonomic-loop>

== Auditory Processing Dysfunction and Tinnitus
<sec:auditory-dysfunction>

Auditory symptoms represent an underrecognized but significant neurological manifestation of ME/CFS, with convergent evidence from functional, epidemiological, systematic, and anatomical studies establishing auditory dysfunction as a documented feature of the disease.

=== Prevalence and Epidemiology

#achievement(title: [Tinnitus-ME/CFS Epidemiological Association])[
Schubert et al. @Schubert2021 provided the first large-scale epidemiological evidence linking ME/CFS to tinnitus in a population-based cohort of 124,609 individuals from the Dutch Lifelines study. ME/CFS patients demonstrated 1.57 times higher odds (OR 1.568, p\<0.05) of experiencing constant tinnitus compared to healthy controls, identifying ME/CFS as a novel disease associate for tinnitus beyond traditional audiological causes such as noise exposure, age-related hearing loss, and cardiovascular disease.
] <ach:schubert2021-tinnitus>

This finding aligns with earlier cohort studies and patient surveys reporting tinnitus prevalence ranging from 48% to 78% in ME/CFS patients, substantially higher than the 10–15% prevalence in the general population.

#achievement(title: [Systematic Evidence for Auditory Dysfunction])[
A 2024 systematic review by Skare et al. @Skare2024 synthesized evidence from 172 articles (1990–2024) documenting ear abnormalities across ME/CFS, fibromyalgia, long-COVID syndrome, postural orthostatic tachycardia syndrome (PoTS), and related conditions. The review identified cochlear complaints—including tinnitus, hearing loss, and hyperacusis—as the most frequent auditory findings in ME/CFS. Four pathophysiological mechanisms were proposed: (1) viral effects on cochlear or central auditory structures, (2) vascular impairment reducing blood flow to the cochlea and brainstem, (3) autoimmune reactions targeting inner ear antigens, and (4) oxidative stress damaging cochlear hair cells and auditory neurons.
] <ach:skare2024-ear>

The systematic review recommended that all ME/CFS patients with audiological complaints receive ENT consultation and formal audiometry to assess the nature and severity of auditory dysfunction.

=== Functional Auditory Processing Deficits

Beyond subjective tinnitus complaints, objective evidence demonstrates specific auditory processing impairments in ME/CFS patients.

#achievement(title: [Selective Auditory Processing Impairment])[
Johnson et al. @Johnson1996 demonstrated modality-specific cognitive impairment in a controlled comparison of 20 CFS patients, 20 multiple sclerosis (MS) patients, and 20 healthy controls. CFS patients showed differential impairment on auditory versus visual processing tasks, while MS patients showed equal impairment on both modalities. This pattern suggests specific dysfunction in central auditory pathways rather than general cognitive slowing, distinguishing the ME/CFS cognitive profile from the more global impairment observed in other neurological conditions.
] <ach:johnson1996-auditory>

Functional MRI studies have further documented that CFS patients recruit additional or atypical brain regions during cognitive and sensory tasks compared to controls @deLange2004fMRI, requiring greater neural resources to achieve equivalent task performance. This pattern of compensatory over-recruitment reflects inefficient neural processing consistent with the broader energy-limitation framework.

=== Neuroanatomical Substrate: Brainstem Dysfunction

The functional auditory deficits and elevated tinnitus prevalence in ME/CFS are explained by documented structural and functional abnormalities in brainstem regions critical for auditory processing.

#achievement(title: [Brainstem Structural Abnormalities])[
Nelson et al. @Nelson2021 synthesized MRI evidence from 11 studies demonstrating structural and functional brainstem abnormalities in ME/CFS patients. The brainstem contains the primary central auditory pathway structures:

    - *Cochlear nucleus* (medulla) — receives input from cochlear nerve; first central processing station
    - *Superior olivary complex* (pons) — sound localization via interaural time and intensity differences
    - *Lateral lemniscus* — ascending auditory pathway connecting lower and upper brainstem
    - *Inferior colliculus* (midbrain) — integration of ascending auditory information before thalamic relay

Dysfunction in these structures provides a neuroanatomical substrate explaining both the auditory processing deficits documented by Johnson et al. @Johnson1996 and the increased tinnitus prevalence observed by Schubert et al. @Schubert2021.
] <ach:nelson2021-brainstem>

Importantly, brainstem abnormalities in ME/CFS extend beyond auditory pathways to include autonomic control centers (see Section @sec:ans-pathophysiology), arousal systems (locus coeruleus), and sensory integration regions. This explains the co-occurrence of auditory symptoms with autonomic dysfunction, sleep disturbances, and sensory hypersensitivity—all manifestations of brainstem pathology.

=== Central vs. Peripheral Auditory Pathology

<obs:central-auditory>
The convergence of functional deficits @Johnson1996, population-level tinnitus prevalence @Schubert2021, systematic evidence @Skare2024, and brainstem MRI abnormalities @Nelson2021 suggests predominantly *central (brainstem)* rather than peripheral (cochlear) auditory pathology in ME/CFS. This distinction has important therapeutic implications: neurological approaches targeting brainstem dysfunction, cerebral perfusion, and neuroinflammation may be more effective than peripheral ENT interventions focused solely on the cochlea or middle ear.
Evidence supporting central over peripheral pathology includes:

    - Auditory processing deficits may occur without peripheral hearing loss on audiometry
    - Tinnitus severity often fluctuates with orthostatic stress and cerebral hypoperfusion
    - Auditory symptoms co-occur with other brainstem-mediated dysfunction (autonomic, arousal, sensory)
    - Hyperacusis (sound sensitivity) suggests central gain dysregulation rather than peripheral damage
    - Auditory symptoms are part of broader post-exertional malaise rather than isolated ear pathology

=== Proposed Mechanisms

Based on the systematic review by Skare et al. @Skare2024 and integration with established ME/CFS pathophysiology, four mechanisms likely contribute to auditory dysfunction (this exemplifies the multi-mechanism pattern characteristic of ME/CFS symptoms, as discussed in Chapter @ch:integrative-models):

*Viral Effects.*
Direct viral damage to cochlear structures or central auditory pathways may occur during acute infection. This is particularly relevant for post-infectious ME/CFS onset, where viral neurotropism (e.g., EBV, HHV-6) could affect brainstem auditory nuclei. Acute onset of tinnitus following infection supports this mechanism.

*Vascular Impairment.*
Reduced cerebral blood flow documented in ME/CFS (Section @sec:cerebral-blood-flow) likely affects the highly vascularized cochlea and brainstem auditory centers. The stria vascularis in the cochlea maintains the ionic gradient essential for sound transduction and is metabolically active, making it vulnerable to hypoperfusion. Fluctuating tinnitus severity correlating with orthostatic stress supports vascular involvement.

*Autoimmune Reactions.*
Antibodies targeting inner ear antigens (anti-cochlin, anti-HSP70) or auditory brainstem structures may produce autoimmune inner ear disease (AIED). This mechanism aligns with broader autoimmune theories of ME/CFS and suggests potential benefit from immunomodulatory treatment in select patients.

*Oxidative Stress.*
Reactive oxygen species generated by mitochondrial dysfunction and neuroinflammation can damage cochlear hair cells and auditory neurons. The cochlea has high metabolic demands and limited antioxidant capacity, making it vulnerable to oxidative damage. This mechanism connects auditory dysfunction to the mitochondrial pathology documented in ME/CFS.

=== Clinical Implications

==== Assessment Recommendations

Based on the documented prevalence and clinical significance of auditory dysfunction:

    - *Routine screening*: All ME/CFS patients should be screened for tinnitus, hearing loss, hyperacusis, and auditory processing difficulties
    - *Formal audiometry*: Patients reporting auditory symptoms should receive comprehensive audiological evaluation
    - *ENT consultation*: Rule out treatable peripheral causes (cerumen impaction, otosclerosis, Ménière's disease)
    - *Central auditory testing*: Consider auditory brainstem response (ABR) testing to assess central pathways
    - *Correlation with ME/CFS severity*: Document whether auditory symptoms fluctuate with overall disease activity, orthostatic stress, and post-exertional malaise

==== Treatment Considerations

Given the proposed central pathology:

    - *Address underlying ME/CFS pathophysiology*: Optimize cerebral perfusion (salt/fluid loading for orthostatic intolerance), treat neuroinflammation, support mitochondrial function
    - *Symptomatic management*: Sound therapy (white noise, tinnitus masking), cognitive-behavioral therapy for tinnitus distress (distinct from CBT as ME/CFS treatment)
    - *Avoid ototoxic medications*: Many drugs can worsen tinnitus (aminoglycosides, loop diuretics, high-dose aspirin, certain chemotherapies)
    - *Consider immunomodulation*: In patients with evidence of autoimmune component (autoantibodies, inflammatory markers)
    - *Antioxidant support*: Alpha-lipoic acid, CoQ10, N-acetylcysteine (extrapolated from evidence in age-related hearing loss and noise-induced damage)

#warning-env(title: [Tinnitus as PEM Symptom])[
Many ME/CFS patients report that tinnitus intensity increases during post-exertional malaise or correlates with fatigue severity. This pattern suggests tinnitus may function as a real-time indicator of energy depletion or cerebral hypoperfusion. Patients should be educated to recognize worsening tinnitus as a potential warning sign to rest and avoid further exertion.
]

=== Research Gaps

Despite the convergent evidence for auditory dysfunction in ME/CFS, significant gaps remain:

    - *Causality*: Cross-sectional designs cannot determine whether ME/CFS causes auditory dysfunction, auditory dysfunction contributes to ME/CFS symptoms, or a common mechanism produces both
    - *Subtype correlation*: Unknown whether auditory symptoms predict specific ME/CFS subgroups or correlate with particular biomarkers
    - *Treatment trials*: No randomized controlled trials of auditory-targeted interventions in ME/CFS populations
    - *Mechanism validation*: The four proposed mechanisms (viral, vascular, autoimmune, oxidative) require experimental validation
    - *Reversibility*: Unknown whether treating underlying ME/CFS pathophysiology can reverse auditory dysfunction
    - *Longitudinal trajectory*: Natural history of auditory symptoms in ME/CFS not systematically documented

#open-question(title: [Central Auditory Gain and Sensory Hypersensitivity])[
Hyperacusis (sound sensitivity) in ME/CFS may reflect dysregulated central gain in auditory processing pathways. The brainstem and auditory cortex normally adjust sensitivity (gain) based on environmental demands and context. In ME/CFS, chronic neuroinflammation, altered neurotransmitter levels, or thalamic dysfunction may inappropriately increase central auditory gain, amplifying all sounds and making normal environmental noise intolerable. This would parallel central sensitization in pain pathways. Testing this hypothesis with objective measures of auditory gain (acoustic reflex thresholds, loudness discomfort levels, auditory brainstem response) could clarify mechanisms and guide treatment targeting central gain normalization rather than peripheral protection.
]

=== Multiple Chemical Sensitivity (MCS) and TRP Sensitization

Multiple chemical sensitivity (MCS) co-occurs with ME/CFS at elevated rates. One mechanistic
model proposes that MCS reflects peripheral sensitization of TRPV1 and TRPA1 by prior
inflammation or oxidative stress, lowering their activation thresholds below ordinary chemical
concentrations @Molot2023. TRPA1 is the primary sensor for fragrances, allyl
isothiocyanate-containing compounds, and volatile organic chemicals; TRPV1 responds to
capsaicin-like molecules and thermal/acid stimuli @Macpherson2007. In ME/CFS, chronic elevated
ROS and prostaglandin production (Section @sec:ch15-oxidative-stress) could provide the
sensitizing milieu. Competing models for MCS include limbic/olfactory kindling, toxicant-induced
loss of tolerance (TILT), and central olfactory sensitization; none are mutually exclusive with
peripheral TRP sensitization. The TRPV1-mast cell axis (Section @sec:ch15-mast-cells) provides
an additional mechanism by which chemical stimuli could trigger mast cell degranulation without
neuronal firing, contributing to the systemic responses observed in some ME/CFS patients.

=== Proprioceptive Dysfunction and Piezo2 Mechanosensation

Proprioceptive dysfunction --- manifesting as impaired sense of body position, unsteady
gait, and motor incoordination --- has a specific mechanosensory substrate. Piezo2 is the
primary mechanotransducer for light touch, vibration, and proprioception in mammals, as
established by human loss-of-function mutations producing profound proprioceptive ataxia
@Szczot2018.

Two distinct genetic directions point toward Piezo2 as potentially relevant in ME/CFS,
though they predict different phenotypes. Loss-of-function mutations reduce proprioception,
potentially explaining motor incoordination in some patients. Gain-of-function Piezo2
variants (Piezo2-CRAMPED syndrome: hypermobility, tactile allodynia, scoliosis) predict
heightened mechanosensitivity --- features overlapping with hEDS overrepresented in ME/CFS.
These are opposite mechanistic directions and cannot both be true simultaneously; which
direction, if either, applies in ME/CFS is entirely unknown. Whether any form of Piezo2
dysregulation contributes to ME/CFS symptoms remains unstudied as of 2026.

== Cognitive Dysfunction: Clinical Manifestations
<sec:cognitive-clinical>

The neurological abnormalities described above manifest clinically as characteristic patterns of cognitive dysfunction, often described by patients as “brain fog.”

=== Domains of Impairment

==== Processing Speed

Slowed information processing is perhaps the most consistent cognitive finding, manifesting as delayed reaction times, slower performance on timed tasks, reduced ability to keep up with rapid conversations, and difficulty with time-pressured activities.

The meta-analysis by Aoun Sebaiti et al.\ identifies processing speed as the most impaired domain in ME/CFS, with a large effect size of $g = -0.82$ (reading speed) @Sebaiti2022cognitive. The multi-site MCAM study confirms this using objective CogState testing across seven US clinics ($n = 426$): processing _speed_ was significantly slower in ME/CFS (Cohen's $d = 0.3$–$0.7$ depending on task complexity), while _accuracy_ was not meaningfully different from healthy controls @Lange2024cognitive. This dissociation—impaired speed with preserved accuracy—suggests that the underlying neural circuitry remains functionally intact but operates with reduced metabolic throughput, consistent with the energy limitation model developed later in this chapter.

==== Attention and Concentration

Attention and concentration deficits include difficulty sustaining attention, easy distractibility, impaired divided attention (multitasking), and reduced attentional capacity under stress.

Sustained attention shows a large effect size ($g = -0.75$) in the meta-analytic evidence @Sebaiti2022cognitive. A head-to-head comparison between ME/CFS and post-COVID patients found that 83.3% of ME/CFS patients showed sustained attention impairment versus 56.2% in post-COVID—a statistically significant difference suggesting that ME/CFS may produce more severe attentional deficits than Long COVID at comparable illness assessment points @Azcue2022brainfog.

==== Memory

Memory impairments encompass working memory deficits (holding information “online”), impaired short-term memory encoding, word-finding difficulties, and variable long-term memory retrieval.

Quantitative evidence shows moderate effect sizes across memory domains: visuo-spatial immediate memory $g = -0.55$, episodic verbal memory (storage and retrieval) $g = -0.55$ to $-0.67$, and visual memory recovery similarly impaired @Sebaiti2022cognitive. Importantly, cognitive dysfunction in ME/CFS is independent of comorbid mood disorders and is not explained by poor effort or motivation—a finding replicated across the meta-analytic literature and consistent with the MCAM multi-site results @Lange2024cognitive @Sebaiti2022cognitive.

#hypothesis(title: [Memory Triage Consequence])[
*Certainty: 0.55.*

Memory encoding is substantially more energy-expensive than memory retrieval, predicting that ME/CFS patients should show disproportionate encoding deficits relative to retrieval impairment—a pattern consistent with CNS energy triage.

*Differential energy costs of memory operations.*
Hippocampal memory encoding requires long-term potentiation (LTP), involving NMDA receptor activation, calcium-dependent signaling cascades, new protein synthesis, and structural synaptic remodeling @Kandel2014memory. These processes are metabolically demanding: encoding a new memory trace requires de novo gene expression, dendritic spine growth, and synaptic protein trafficking. Retrieval, by contrast, reactivates existing synaptic patterns through pattern completion in CA3 networks—a process that uses established circuits without requiring new protein synthesis or structural modification @Dudai2015consolidation.

Quantitative estimates suggest that LTP-associated protein synthesis increases local energy consumption by 30–50% above baseline in hippocampal neurons, whereas pattern completion during retrieval operates within normal metabolic parameters. Working memory maintenance in prefrontal cortex similarly requires sustained neuronal firing against inhibitory currents, creating continuous metabolic demand proportional to the number of items held in mind @Constantinidis2018working.

*Predicted pattern in ME/CFS.*
If CNS energy is limited, the brain should sacrifice high-cost encoding operations before low-cost retrieval operations—a “memory triage.” This predicts:

    - *Encoding $>$ retrieval impairment*: Patients should show greater difficulty forming new memories than accessing old ones. Standardized testing should reveal disproportionate deficits on encoding-dependent tasks (learning new word lists, forming new associations) relative to recognition or cued recall of previously encoded material
    - *Working memory $>$ long-term retrieval*: Sustained prefrontal firing for working memory maintenance is metabolically costly; retrieving consolidated long-term memories from distributed cortical stores is less so
    - *Encoding degrades with exertion*: During PEM, when CNS energy deficits intensify, new memory formation should decline more steeply than the ability to recall previously consolidated information
    - *Context-dependent encoding failure*: Encoding in metabolically demanding contexts (noisy environments, multitasking, social interaction) should fail preferentially, as these conditions compete for the limited energy budget

*Supporting evidence.*
The meta-analysis by Sebaiti et al. @Sebaiti2022cognitive documents memory impairment in ME/CFS with moderate effect sizes ($g = -0.55$ to $-0.67$), but existing studies have not systematically separated encoding from retrieval. Clinical observation consistently reports that ME/CFS patients struggle more with forming new memories (“I can't take in new information”) than with accessing established knowledge (“I remember things from before I got sick”). Patients frequently describe intact recognition (“I know I've seen this before”) with impaired free recall of recently encountered material—precisely the pattern predicted by encoding-selective energy limitation.

*Treatment implications.*
If encoding is selectively impaired by energy limitation, compensatory strategies should emphasize: (1) reducing encoding load through external memory aids (notes, recordings, photographs) rather than relying on internal encoding; (2) scheduling new learning during peak energy windows; (3) using spaced repetition to distribute encoding costs across multiple low-demand sessions; (4) leveraging recognition over recall (multiple-choice formats, visual cues) when possible.

*Limitations.*
This hypothesis has certainty 0.55. The differential energy cost of encoding versus retrieval is well established in neuroscience, but the specific prediction of disproportionate encoding impairment in ME/CFS awaits formal testing with paradigms designed to isolate encoding from retrieval. Existing neuropsychological batteries typically conflate encoding and retrieval in composite “memory” scores. Confounds include attention deficits (which impair encoding indirectly), medication effects, and sleep disruption (which impairs memory consolidation independently of encoding).
] <hyp:memory-triage-consequence>

==== Executive Function

Executive function deficits present as planning and organization difficulties, impaired cognitive flexibility, reduced problem-solving ability, and difficulty with complex decision-making.

Meta-analytic evidence indicates a smaller effect size for executive function ($g = -0.42$) compared to processing speed and attention @Sebaiti2022cognitive, while instrumental functions (language, praxis) appear consistently preserved. This pattern—moderate executive dysfunction with severe processing speed impairment—is discussed further in the CNS energy triage model (Section @sec:cns-energy-triage-clinical). Notably, the MCAM study found that complex tasks requiring both executive function and learning efficiency showed larger effect sizes ($d = 0.6$–$0.7$) than simple tasks @Lange2024cognitive, suggesting that standardized neuropsychological measures may underestimate the real-world executive burden when tasks are novel and unstructured.

=== Quantifying Cognitive Impairment: Population-Scale Evidence
<subsec:cognitive-quantification>

While cognitive dysfunction in ME/CFS has been documented for decades, recent large-scale studies provide the most precise quantification to date, and parallel findings from post-COVID research offer convergent evidence.

==== ME/CFS Meta-Analytic Evidence

The systematic review by Aoun Sebaiti et al. @Sebaiti2022cognitive synthesized 764 studies (1988–2019) using PRISMA and MOOSE guidelines. The meta-analytic effect sizes reveal a characteristic cognitive signature:

    - *Reading speed*: $g = -0.82$ ($p = 0.0001$)—the largest impairment
    - *Sustained attention*: $g = -0.75$
    - *Visuo-spatial immediate memory*: $g = -0.55$ ($p = 0.007$)
    - *Episodic verbal memory*: $g = -0.55$ to $-0.67$
    - *Executive function*: $g = -0.42$
    - *Instrumental functions*: preserved

This profile—severe processing speed and attentional deficits, moderate memory impairment, relatively spared executive function on standardized tests, and intact instrumental function—is distinct from depression, anxiety, and neurodegenerative disease patterns, supporting ME/CFS cognitive dysfunction as a specific neurological entity rather than a nonspecific consequence of fatigue or mood disturbance.

==== Multi-Site Objective Assessment

The MCAM cognitive substudy @Lange2024cognitive, the largest US multi-site objective cognitive assessment in ME/CFS ($n = 426$ across seven specialty clinics, 2013–2019), confirmed the meta-analytic findings using the CogState Brief Screening Battery. The key finding was the speed–accuracy dissociation: information processing speed was significantly slower in ME/CFS at most timepoints (Cohen's $d = 0.3$–$0.5$ for simple tasks, $d = 0.6$–$0.7$ for complex tasks), while performance accuracy did not differ meaningfully between groups. This dissociation has diagnostic implications: speed-based cognitive measures are more sensitive than accuracy-based measures for detecting ME/CFS cognitive dysfunction.

A notable finding was that a single intense exercise session did not produce additional cognitive deficits beyond those attributable to the clinical visit itself @Lange2024cognitive. This somewhat counterintuitive result may reflect the fact that the cognitive assessment visit was itself sufficiently taxing to bring patients to their cognitive floor, making exercise-induced additional deterioration difficult to detect.

==== Post-COVID Cognitive Decline: Convergent Evidence
<subsubsec:postcovid-cognitive>

The COVID-19 pandemic has generated large-scale cognitive data that both parallels and illuminates ME/CFS findings:

*Population-scale IQ-equivalent losses.* Hampshire et al. @Hampshire2024cognition assessed 112,964 participants from the UK REACT study—the largest community-based study of post-COVID cognition. Cognitive deficits, expressed as IQ-scale equivalents, showed a graded dose–response relationship with illness severity:

    - *Mild, resolved COVID* (symptoms 4–12 weeks): $tilde$3 IQ points ($tilde$$-0.2$ SD)
    - *Persistent symptoms / Long COVID* ($gt.eq$12 weeks): $tilde$6 IQ points ($tilde$$-0.4$ SD)
    - *ICU admission*: $tilde$9 IQ points ($tilde$$-0.6$ SD)
    - *Reinfection*: additional $tilde$2 IQ points per episode

Memory, reasoning, and executive function were the most sensitive domains. Earlier variants (original and Alpha) produced larger deficits than Omicron-era infections, and vaccination was associated with a small cognitive advantage. The Long COVID figure ($tilde$6 IQ points) is directly relevant to ME/CFS: many Long COVID patients meeting post-exertional malaise criteria satisfy ME/CFS diagnostic criteria @Komaroff2023, and likely fall at the more severe end of this distribution.

*Objective cognitive slowing.* Zhao et al. @Zhao2024cognitive provided task-based confirmation in a multicenter study (UK and Germany, $n = 270$). Post-COVID patients showed reaction times approximately 3 standard deviations slower than healthy controls on simple reaction time tasks, with 53.5% exceeding 2 SD below normal. Fatigue and depression comorbidities did not fully account for the slowing—paralleling the independence of cognitive dysfunction from mood disorders in ME/CFS @Sebaiti2022cognitive.

*Neuroimaging substrate.* Douaud et al. @Douaud2022brain provided the structural neuroimaging correlate using UK Biobank longitudinal data ($n = 785$, before-and-after design). Even after predominantly mild COVID (96% non-hospitalized), infected individuals showed greater grey matter thickness reduction in the orbitofrontal cortex and parahippocampal gyrus (0.2–2% tissue loss in olfactory-related regions) and greater cognitive decline on complex tasks compared to matched controls. These structural changes in regions critical for memory encoding and executive function may underpin the cognitive deficits observed in both Long COVID and post-infectious ME/CFS.

*ME/CFS vs.\ Long COVID: direct comparison.* Azcue et al. @Azcue2022brainfog conducted the most informative head-to-head comparison ($n = 42$ ME/CFS, $n = 73$ post-COVID). Both conditions shared a core pattern of reduced attention and slower processing, but ME/CFS patients showed significantly worse sustained attention (83.3% vs.\ 56.2% impaired) and visuospatial ability than post-COVID patients. The authors concluded that the conditions share overlapping pathology with different precipitating triggers—consistent with the post-infectious syndrome cluster model discussed in Section @sec:cross-disease.

#limitation(title: [Post-COVID Cognitive Data: Applicability to ME/CFS])[
The Hampshire et al.\ IQ-equivalent figures @Hampshire2024cognition apply to the general post-COVID population, not specifically to patients meeting ME/CFS criteria. The subset of Long COVID patients with post-exertional malaise likely has more severe cognitive impairment than the group average. Additionally, the IQ-equivalent expression converts composite cognitive scores to a familiar scale but does not represent direct IQ testing; the figures should be interpreted as population-level effect sizes rather than individual-level predictions. The Douaud et al.\ neuroimaging findings @Douaud2022brain predate Omicron and may not fully represent current variant effects.
]

=== Social and Emotional Dysfunction
<subsec:social-emotional-dysfunction>

While less frequently discussed in clinical literature, social and emotional impairments represent significant sources of disability in ME/CFS and are direct consequences of the neurometabolic dysfunction documented above.

#limitation(title: [Social-Emotional Phenomenology: Clinical Observation, Not Empirical Research])[
The social disability descriptions in this section (social interaction as painful exertion, flat affect, relationship conflict as insurmountable barrier, environmental control as survival mechanism) are based on clinical observation and patient self-report. No published study has validated “social exhaustion,” “affective energy expenditure,” or “interpersonal metabolic cost” as measurable constructs in ME/CFS. The proposed neurobiological explanations (catecholamine depletion $\to$ social withdrawal) are mechanistically plausible but represent inference, not demonstrated cause-and-effect. Alternative explanations—comorbid depression, social anxiety disorder, learned avoidance—have not been formally excluded in the populations described.
]

*Note on evidence base:* The detailed phenomenology described in this section is based primarily on extensive clinical observation and patient reports rather than systematic empirical research. While the underlying neurobiological mechanisms (catecholamine depletion, prefrontal hypometabolism, TPJ dysfunction) are well-documented @walitt2024deep, the specific social and emotional manifestations described below await formal validation through patient surveys, qualitative research, and prospective studies. This section should be considered a synthesis of clinical observation with established neuroscience, not yet a body of peer-reviewed ME/CFS-specific research on social disability.

==== Social Interaction as Metabolically Demanding Activity

Social interaction requires the simultaneous coordination of multiple high-energy cognitive and neurological processes:

    - *Language processing and production*: Real-time comprehension, response formulation, word retrieval, and articulation
    - *Working memory load*: Tracking conversational context, remembering prior statements, maintaining coherent narrative threads
    - *Executive function demands*: Monitoring social cues, adjusting behavior in real-time, inhibiting inappropriate responses
    - *Sensory integration*: Simultaneous processing of facial expressions, vocal prosody, body language, and environmental context
    - *Motor control for affect generation*: Voluntary and involuntary facial expressions, eye contact, postural adjustments, vocal modulation
    - *Reward system engagement*: Dopamine-mediated reward processing that makes social interaction inherently reinforcing in healthy individuals

When ATP production is impaired and catecholamine levels are low (as documented in the NIH study @walitt2024deep), these processes cannot be sustained. The brain experiences social demands as it would physical exertion beyond capacity: as painful, threatening, something to avoid.

==== Clinical Presentation: Social Interaction as Painful Exertion

Many ME/CFS patients report that social interaction feels actively _painful_ rather than merely tiring:

    - Subjective experience identical to being forced to perform physical exercise while exhausted
    - Approach characterized by “minimize the pain”—engage only as much as absolutely necessary
    - Absence of enjoyment or reward, even in interactions that would previously have been pleasurable
    - Duration often measured in minutes before exhaustion becomes overwhelming
    - Post-social crashes (cognitive and physical PEM) lasting hours to days

This pattern may persist for decades and often predates formal ME/CFS diagnosis, suggesting it reflects fundamental metabolic limitations rather than secondary depression or psychological withdrawal.

==== Flat Affect and Energy Conservation

Generating and displaying emotional affect is metabolically expensive:

    - *Muscular activation*: Smiling, animated facial expressions, and expressive body language require continuous motor control
    - *Neurochemical substrates*: Emotional expression requires adequate dopamine for motivation and reward signaling
    - *Prefrontal-limbic coordination*: Generating contextually appropriate affect requires coordination between multiple brain regions

When energy is scarce, the brain prioritizes survival functions over social signaling. The result is observable flat affect—patients appear emotionally unexpressive, disengaged, or “unhappy” even when not experiencing negative emotion. This is *not* conscious suppression or masking; it reflects genuine inability to generate the energetic and neurochemical processes required for emotional expression.

==== Interpersonal Consequences and Misattribution

The combination of social withdrawal and flat affect creates predictable interpersonal difficulties:

    - *Misinterpretation as contempt or disinterest*: Observers lacking context for the patient's energy deficit often interpret flat affect and minimal engagement as disdain, superiority, or lack of care
    - *Relationship damage*: Colleagues, friends, and family members feel rejected, judged, or dismissed when the actual issue is metabolic incapacity
    - *Emotional contagion*: Others interacting with ME/CFS patients often become unhappy or uncomfortable themselves, unable to understand the patient's apparent lack of positive affect
    - *Inability to explain*: The exhaustion that prevents social engagement also impairs the cognitive and communication capacity needed to explain the problem (“explaining why I'm too tired to talk requires energy to talk”)
    - *Vicious cycle*: Negative reactions from others increase the stress and energy demand of social interaction, further reducing capacity

Patients are frequently blamed for “attitude problems,” “not trying,” or “not caring” when the actual issue is neurometabolic failure to generate expected social signals.

==== The Communication Double-Bind

ME/CFS patients face an impossible situation regarding social interaction:

    - Employment and relationships require communication and social engagement
    - Communication and social engagement are painfully exhausting and worsen symptoms
    - Avoiding social interaction damages relationships and is misinterpreted as contempt
    - Explaining the difficulty requires the very communication capacity that is depleted
    - There is no winning strategy—only choices between different types of harm

==== Relationship Conflict as Insurmountable Barrier

The energy deficit affecting social interaction becomes critically limiting when relationships encounter even minor conflict or tension:

    - *Conflict management requires peak cognitive resources*: Navigating disagreements, processing emotions, formulating diplomatic responses, regulating one's own reactions, and sustaining conversation through discomfort all require executive function, emotional regulation, and sustained attention—precisely the capacities most impaired in ME/CFS

    - *Minor conflicts become insurmountable*: What healthy individuals would consider trivial relationship friction (scheduling disagreements, differing preferences, minor miscommunications) becomes _impossibly difficult to manage_ when cognitive and emotional resources are depleted

    - *Relationship attrition*: Friendships require ongoing maintenance, occasional conflict resolution, and emotional investment. When any conflict—however minor—exceeds available energy, relationships deteriorate and are eventually abandoned

    - *Selection for low-maintenance relationships only*: Only relationships requiring absolutely minimal effort, zero conflict, and no emotional complexity can be sustained. This severely restricts social connection to a vanishingly small subset of potential relationships

    - *Inability to repair*: Even when patients recognize that a relationship is worth preserving, they lack the energy to engage in the repair conversations necessary to resolve issues. The relationship fails not from lack of desire but from metabolic inability to execute repair

    - *Compounding isolation*: As relationships with any degree of complexity or occasional friction are abandoned due to inability to manage conflict, social networks contract to near-zero. Patients become profoundly isolated not from preference but from inability to meet the basic energy demands of relationship maintenance

    - *Loss of deep connections*: The inability to engage seriously in friendship—to invest emotional energy, navigate normal ups and downs, work through misunderstandings—means that only the most superficial relationships can survive. Patients lose access to the deep, meaningful connections that require tolerance for occasional difficulty

    - *Present but disengaged*: Even when patients are physically able to attend activities or gatherings, the constant underlying exhaustion limits how intensely they can engage with others. They are there in body but cannot fully participate emotionally or socially. This creates a perceptible distance that has no apparent reason—others sense the patient is “holding back” or “not really there,” but the actual cause (metabolic inability to engage more deeply) is invisible

    - *Engagement intensity limited by energy, not desire*: The degree of warmth, enthusiasm, investment, and genuine connection patients can offer is capped by available energy, not by their feelings toward others. Friendships that would otherwise be close remain distant because the patient cannot sustain the energy for deeper engagement, creating unexplained coldness that damages the relationship despite the patient's genuine care

    - *Inability to develop meaningful feelings*: The energy limitation affects not only the expression of feelings but the development of feelings themselves. Emotional attachment, fondness, care, and affection require sustained interaction, shared experiences, emotional investment, and cognitive processing to develop. When energy constraints prevent this sustained engagement, feelings toward others remain shallow or fail to develop beyond superficial acquaintance. Patients find themselves unable to develop the deep care and emotional connection that would normally arise in friendships, creating a profound sense of emotional emptiness and isolation even when physically surrounded by potential friends

    - *Social interactions as potential threats*: The knowledge that any conflict or difficulty is insurmountable leads to a defensive posture where many interactions are experienced as _opportunities to be aggressed_. Since patients lack the energy to manage disagreement, navigate misunderstanding, or repair relationship damage, any interaction carries the risk of creating a problem they cannot solve. This produces preventive behavior—emotional guardedness, avoidance of deeper topics, reluctance to express needs or preferences—that further impedes the ability to connect with others. Patients become hypervigilant for potential conflict and withdraw preemptively to avoid situations they cannot metabolically handle, creating a self-protective isolation that others perceive as coldness or lack of trust

*Clinical significance:* The inability to manage even minimally conflictual relationships represents a major, under-recognized source of social disability in ME/CFS. *This cannot be understated*: patients lose friendships, partnerships, and entire social networks not because relationships are unimportant to them, but because the cognitive and emotional energy required to navigate normal relationship dynamics exceeds available capacity.

The defensive stance toward social interaction—experiencing interactions as potential threats and adopting preventive behaviors—is not paranoia or social anxiety disorder. It is a rational response to genuine incapacity. When any disagreement or misunderstanding represents an insurmountable problem due to energy deficit, hypervigilance and preemptive withdrawal become adaptive survival strategies, though they further entrench isolation.

Critically, _the feeling alone is sufficient to drive protective behavior_. Patients do not need to consciously analyze the risk or make deliberate decisions to withdraw—the subjective experience of interactions as threatening automatically triggers defensive responses. This emotional reality shapes behavior independent of objective threat assessment, making the social disability self-reinforcing: the feeling of vulnerability produces protective isolation, which prevents connection, which maintains isolation.

==== Environmental Control as Survival Mechanism

The energy deficit necessitates a level of environmental control that is incompatible with normal social spontaneity and fundamentally at odds with what others experience as “the joy of life”:

    - *Need for high control*: Patients require predictability, structure, and control over their environment to prevent energy-depleting surprises. Unforeseen events, changes in plans, unexpected social demands, or environmental chaos each represent potential energy expenditures that may trigger crashes

    - *Incompatibility with spontaneity*: What healthy individuals experience as joyful spontaneity—surprise visits, impromptu plans, playful chaos, unexpected adventures—registers for ME/CFS patients as threatening unpredictability requiring energy they do not have

    - *Others' joy as patient's stress*: When others behave in ways they enjoy—being spontaneous, playful, or socially unpredictable—they create a more energetically demanding environment for patients. The very behaviors that make life feel vibrant and enjoyable for healthy people increase the metabolic burden and stress for patients beyond what they can afford to manage

    - *Inability to “let go”*: Patients cannot easily relax control over their environment because this control is _almost vital_ to avoid exhaustion and crashes. What appears as rigidity, controlling behavior, or inability to be spontaneous is actually a survival mechanism—without environmental control, energy expenditure becomes unpredictable and unmanageable

    - *Social consequences*: Others perceive the need for control as rigidity, inflexibility, being “no fun,” or being controlling. Patients are seen as unable to enjoy life, overly cautious, or anxiety-driven when the actual issue is metabolic necessity

    - *The paradox of joy*: Patients are often told to “relax,” “let go,” “be spontaneous,” or “just have fun”—but these very behaviors require energy reserves they do not possess. The inability to engage in joyful spontaneity is not psychological resistance but physiological impossibility

*The fundamental incompatibility:* Normal social life thrives on a degree of unpredictability, spontaneity, and flexibility that ME/CFS patients cannot metabolically afford. The environmental control necessary for survival (avoiding crashes, managing energy) is experienced by others as joyless rigidity. Patients must choose between:

    - Maintaining control to prevent crashes (perceived as controlling, rigid, unable to have fun)
    - Allowing spontaneity to please others (risking energy depletion, crashes, worsening disability)

There is no middle ground when energy reserves are this limited. The choice to maintain control is not preference or personality—it is metabolic necessity masquerading as behavioral rigidity.

*The Energy Poverty Analogy.*
The psychological state of ME/CFS patients living with severe energy deficit is analogous to the lived experience of people in extreme financial poverty:

    - *Constant precariousness*: Just as very poor people live under constant financial stress knowing that any unforeseen expense—even an insignificant 20–50€\ debt—could trigger a cascade of catastrophic consequences (eviction, utility shutoff, inability to afford food or medical care), ME/CFS patients live under constant metabolic stress knowing that any unforeseen energy expenditure can trigger crashes that eliminate function for days, weeks, or permanently

    - *Inability to absorb shocks*: People with financial reserves can absorb unexpected expenses without crisis. People with energy reserves can absorb unexpected demands without crashing. Those living at the edge—whether financial or metabolic—have no buffer. Every unexpected demand is a potential catastrophe

    - *Hypervigilance as survival*: The poor must constantly monitor their finances, avoid any unnecessary spending, and maintain rigid control over their budget to prevent disaster. ME/CFS patients must constantly monitor their energy, avoid any unnecessary expenditure, and maintain rigid control over their environment to prevent crashes. Both behaviors appear as anxiety or rigidity to those with adequate resources but are rational responses to genuine scarcity

    - *Incomprehension from the resourced*: People with financial security cannot understand why the poor seem so anxious about “small” expenses or why they cannot “just relax” about money. People with energy reserves cannot understand why ME/CFS patients seem so anxious about “small” demands or why they cannot “just relax” and be spontaneous. The invisible nature of the deficit makes the defensive behavior appear irrational

    - *Poverty trap dynamics*: Financial poverty creates conditions that perpetuate poverty (stress impairs decision-making, lack of resources prevents investment in improvement). Energy poverty creates conditions that perpetuate energy deficit (stress depletes energy, lack of reserves prevents activities that might improve capacity). Both are self-reinforcing traps difficult to escape

    - *Judgment and blame*: The poor are blamed for being “too cautious,” “no fun,” unable to enjoy life, overly anxious, or having a scarcity mindset. ME/CFS patients are blamed for being controlling, rigid, unable to be spontaneous, overly anxious, or having a fearful personality. In both cases, the behavior is adaptive to genuine scarcity, not a character flaw

*Clinical significance:* Understanding ME/CFS energy management through the lens of poverty economics helps clarify why patients exhibit behaviors that appear rigid or controlling to healthy observers. The “energy poverty” framework explains the hypervigilance, need for control, inability to tolerate unpredictability, and constant stress as rational adaptations to living at the metabolic edge. Just as telling someone in extreme financial poverty to “stop worrying about money and have fun” is tone-deaf and unhelpful, telling ME/CFS patients to “relax,” “let go,” or “be spontaneous” fundamentally misunderstands their metabolic reality.

Even when patients _can_ attend activities, the pervasive exhaustion creates an invisible barrier to genuine engagement. Others perceive this as emotional distance, lack of interest, or “holding back”—but it reflects metabolic incapacity, not psychological withdrawal. The patient may desperately want to engage more warmly, more deeply, with more enthusiasm and investment, but the energy simply does not exist. This creates relationships that feel inexplicably cold or distant despite no apparent reason, as the actual limitation (energy deficit) is invisible to observers.

This pattern is distinct from social anxiety or avoidant personality disorder—patients often desperately _want_ connection but physiologically _cannot_ sustain the energy expenditure relationships require, particularly when any degree of conflict or complexity arises.

==== Neurobiological Basis

The social and emotional impairments described above are explained by the documented neurological abnormalities:

    - *Catecholamine depletion*: Low dopamine and norepinephrine impair both reward processing (making social interaction unrewarding) and the motivation to engage socially
    - *Prefrontal hypometabolism*: Reduced energy availability in prefrontal regions impairs the executive functions required for social cognition
    - *Effort-reward miscalculation*: TPJ dysfunction causes the brain to perceive social interaction as high-cost, low-reward activity
    - *Cerebral hypoperfusion*: Reduced blood flow limits the brain's capacity to sustain the metabolic demands of complex social processing
    - *ATP depletion*: Fundamental energy insufficiency makes any sustained cognitive activity painful

==== Clinical Significance

Social withdrawal and flat affect in ME/CFS are *metabolic symptoms*, not personality traits, character flaws, or pure psychiatric conditions.

*For patients:* If social interaction feels painful, if you feel no enjoyment in activities that once brought pleasure, if others tell you that you seem “unhappy” or “unengaged”—these are recognized manifestations of the neurometabolic dysfunction documented in ME/CFS research. This is not your fault. You are not antisocial, cold, or broken. Your brain lacks the energy and neurochemical substrates required for normal social and emotional functioning.

*For clinicians and caregivers:* Patients who appear disengaged, flat, or “unmotivated” for social interaction are not exhibiting “behavioral problems.” They are conserving severely limited energy reserves. Pressure to “be more social” or “act happier” is equivalent to demanding that someone with severe anemia run a marathon. The physiology does not support the demand.

*For researchers:* The social and emotional dysfunction in ME/CFS deserves systematic study alongside more commonly recognized cognitive domains. Validated instruments for assessing “social exhaustion,” “affective energy expenditure,” and “interpersonal metabolic cost” would help quantify this significant source of disability.
#warning-env(title: [Harmful Advice: The “Power of Positive Thinking”])[
Some clinicians, family members, friends, and caregivers, despite good intentions, offer advice to ME/CFS patients that is not only unhelpful but actively harmful and insulting:

*The harmful message:*

    - “You need to be more optimistic”
    - “Believing you will get better will make you better”
    - “Your attitude is holding you back”
    - “The mind-body connection means positive thinking can heal you”
    - “You need to stop focusing on your symptoms”

*Why this is harmful:*

    - *Blames the patient for their illness*: This framing implies that patients are sick because they are not trying hard enough to think positively, placing moral responsibility for a metabolic disease on the patient's psychological state

    - *Contradicts objective evidence*: The 2024 NIH study documented measurable neurological abnormalities—low catecholamines, TPJ dysfunction, cerebral hypoperfusion, T-cell exhaustion. These are not created or maintained by “negative thinking” and cannot be resolved by “optimism”

    - *Ignores patient experience*: Decades of lived experience show that ME/CFS patients who maintain hope, who try every treatment, who remain optimistic, still worsen or remain severely ill. The disease trajectory is independent of psychological attitude

    - *Dismissive and insulting*: Telling someone with documented metabolic dysfunction that their attitude is the problem is equivalent to telling a diabetic that believing their pancreas works will make it produce insulin. It dismisses the physiological reality of the disease

    - *Adds psychological burden*: Patients already carry immense guilt and self-blame (“Why can't I do what I used to do? Why am I letting everyone down?”). Being told their illness persists because they are not optimistic _enough_ adds psychological torment to physical suffering

    - *Prevents appropriate treatment*: When clinicians attribute symptoms to psychological factors, they fail to investigate and treat the underlying metabolic, immunological, and neurological dysfunction

    - *Gaslighting*: This advice constitutes medical gaslighting—denying the patient's lived reality and documented physiological abnormalities in favor of a psychosomatic explanation that places blame on the patient

*The reality:*

    - ME/CFS patients are not sick because they lack optimism
    - Positive thinking does not reverse catecholamine depletion, mitochondrial dysfunction, or immune exhaustion
    - Many patients maintain hope and optimism for _decades_ while their condition worsens—their attitude did not prevent deterioration
    - The mind-body connection exists, but it does not mean that metabolic diseases can be thought away
    - Encouraging appropriate pacing, realistic expectations, and acceptance of limitations is more therapeutic than false promises that optimism will cure metabolic dysfunction

*For clinicians:* If you find yourself telling ME/CFS patients to “be more optimistic” or attributing their symptoms to psychological factors, recognize that you are:

    - Contradicting objective research evidence
    - Causing psychological harm
    - Failing to provide appropriate medical care
    - Perpetuating the decades of medical gaslighting that has defined ME/CFS patient experience

The appropriate clinical response is to acknowledge the physiological reality of the disease, validate the patient's experience, support symptom management and pacing, and avoid placing the burden of recovery on the patient's psychological state.
]

=== Fluctuation and Post-Exertional Cognitive Malaise

A characteristic feature distinguishing ME/CFS cognitive dysfunction from other conditions is its marked fluctuation, including hour-to-hour and day-to-day variability, worsening with physical, cognitive, or emotional exertion, delayed deterioration (cognitive “payback”), and improvement with rest that rarely returns to premorbid baseline.

=== CNS Energy Crisis as Primary Event
<sec:cns-energy-crisis>

The selective energy dysfunction hypothesis (Section @sec:selective-dysfunction) proposes that neurological symptoms in ME/CFS reflect _primary_ CNS energy failure rather than downstream effects of systemic dysfunction. Several observations support this framing:

    - *CNS-specific findings*: Neuroinflammation (45–199% elevation in key regions @Nakatomi2014neuroinflammation), catecholamine deficiency in CSF, and regional hypometabolism are documented in the CNS specifically, not as reflections of peripheral dysfunction

    - *Preserved autonomous processes*: Hair growth, nail growth, and basal cardiac automaticity—processes that operate locally without CNS coordination—remain intact even in severe ME/CFS, arguing against global metabolic failure

    - *Demand-response failure*: The pattern of preserved baseline function with impaired challenge response (91–100% show abnormal CBF reduction during orthostatic challenge @Novak2022) is consistent with a CNS coordination bottleneck rather than peripheral end-organ dysfunction

    - *Cognitive triage hierarchy*: The observation that complex cognition and executive function (“brain fog”) are affected before motor coordination or sensory processing suggests an energy triage system that sacrifices “luxury” cognitive functions first

    - *Astrocyte vulnerability*: The brain's unique metabolic architecture—with neurons depending on astrocytes for lactate via the ANLS (Section @sec:astrocyte-energy-gate)—may create CNS-specific vulnerability not present in peripheral tissues with direct glucose access @Pellerin1994 @Magistretti2018

This perspective has treatment implications: interventions that bypass CNS coordination (e.g., direct-acting autonomic agents like midodrine) or that specifically target CNS metabolism may be more effective than peripheral mitochondrial support alone.

#limitation(title: [Brain-Centric Model: CNS Primacy Not Demonstrated])[
Multiple sections of this chapter frame CNS dysfunction as the “primary bottleneck” or “upstream driver” of ME/CFS symptoms. This causal hierarchy has not been established:

    - No longitudinal study has demonstrated that neurological abnormalities _precede_ peripheral immune, metabolic, or autonomic dysfunction in ME/CFS onset.
    - Alternative causal orderings are equally plausible: primary immune dysfunction driving secondary neuroinflammation, or primary metabolic failure producing secondary CNS changes.
    - The “demand-response failure” pattern (preserved baseline with impaired challenge response) is also predicted by peripheral models (e.g., mitochondrial dysfunction limiting peak capacity).
    - Pharmacological bypass evidence (midodrine efficacy) supports autonomic _involvement_ but does not establish CNS _primacy_—peripheral autonomic failure would produce identical responses.
    - The cascade model, kindling hypothesis, and energy triage model are internally consistent but rest on untested causal assumptions; internal consistency is not evidence of causal direction.

]

=== CNS Energy Triage: A Hierarchical Model of Brain Fog
<sec:cns-energy-triage-clinical>

#speculation(title: [CNS Energy Triage Hypothesis])[
*Certainty: 0.35.* The brain may operate a hardwired energy prioritization system during metabolic scarcity, explaining why ME/CFS cognitive dysfunction follows a characteristic pattern rather than producing uniform degradation across all domains.

*Neuroscience of brain energy prioritization.*
The human brain comprises approximately 2% of body mass yet consumes 20–25% of resting metabolic energy, with goal-directed cognition requiring only an additional $tilde$5% above resting homeostatic costs @Jamadar2025metabolic. This tight energy budget means that even modest metabolic deficits—such as those produced by impaired astrocyte-neuron lactate shuttling (Section @sec:astrocyte-energy-gate)—could disproportionately affect the most energy-intensive neural processes.

Not all brain regions have equal metabolic demands. The prefrontal and frontoparietal association cortices, which support executive function, cognitive flexibility, and novel problem-solving, exhibit the highest _relative metabolic cost_—defined as energy utilization exceeding baseline activity levels @Jamadar2025metabolic. In contrast, brainstem nuclei governing vital functions (respiration, cardiovascular regulation, arousal) and primary sensory cortices operate with lower relative metabolic overhead, relying on phylogenetically older, more energy-efficient circuits.

*Evidence from metabolic disruption models.*
Two natural experiments demonstrate hierarchical cognitive shutdown under energy scarcity:

    - *Hypoglycemia:* Acute reduction in brain glucose supply impairs complex higher-order cognitive processes at higher glucose thresholds and to a greater extent than lower-level functions. Executive functions show large effect sizes ($d > 0.8$) during hypoglycemia @Graveling2013hypoglycemia, consistent with the prefrontal cortex's elevated metabolic sensitivity.

    - *Anesthesia:* General anesthetics produce a hierarchical disconnection pattern in which prefrontal and association cortices are affected first, while primary sensory processing and thalamocortical connectivity remain preserved. Mashour characterizes this as preferential failure of “rich club” network hubs with greater metabolic demands @Mashour2024anesthesia—an “airport in a snowstorm” analogy where the most connected, most metabolically expensive nodes fail first.

Furthermore, prolonged cognitive work causes glutamate accumulation specifically in the lateral prefrontal cortex, making further executive function activation progressively more metabolically costly @Wiehler2022glutamate. This suggests a built-in mechanism by which the brain curtails its most expensive operations when metabolic capacity is strained.

*Application to ME/CFS.*
We speculate that ME/CFS produces a chronic version of this triage state. If total available CNS energy is reduced—whether through astrocyte dysfunction, reduced cerebral blood flow, or neuroinflammation—the brain may engage the same prioritization hierarchy that normally activates only during acute metabolic crises. The proposed triage order, from most to least protected, would be:

    - Brainstem vital functions (preserved even in severe ME/CFS)
    - Basic sensory processing (usually intact)
    - Language comprehension (impaired only in severe cases)
    - Motor coordination (degraded in moderate-severe disease)
    - Memory consolidation (commonly affected)
    - Executive function and cognitive flexibility (affected early, often prominently)

This maps to the formal energy triage hypothesis developed in Section @sec:selective-dysfunction (specifically Hypothesis @hyp:energy-triage), but here we emphasize the clinical neuroscience basis rather than the mathematical framework.

*An important caveat from meta-analytic evidence.*
The largest meta-analysis of cognitive impairment in ME/CFS (33 studies, $n = 1{,}086$) reveals that the observed pattern is more nuanced than a simple “executive function fails first” model @Sebaiti2022cognitive. Processing speed shows the largest impairment ($g = -0.82$), followed by sustained attention ($g = -0.75$), then memory domains ($g = -0.55$ to $-0.67$), with executive function showing a smaller effect ($g = 0.42$) and instrumental functions preserved. This is important: processing speed is _more_ impaired than executive function on standard neuropsychological measures.

This apparent discrepancy may be reconciled by recognizing that processing speed is a _global_ measure of neural efficiency degraded by any reduction in brain energy delivery, not a specific cognitive tier. It reflects the overall metabolic throughput of cortical circuits rather than a discrete cognitive function. Additionally, standardized tests of executive function (e.g., Trail Making Test Part B) involve relatively routinized operations that may not capture the full metabolic cost of genuinely novel, unstructured problem-solving. The energy triage model predicts that _novel, complex, integrative_ cognitive operations fail first—not necessarily the specific neuropsychological domain labeled “executive function” in test batteries.

*Testable predictions.*
If the CNS energy triage model is correct, the following should hold:

    - Novel tasks are impaired more than practiced routines at matched difficulty
    - Working memory (high-energy encoding) fails before recognition memory (lower-energy pattern completion), as formalized in Hypothesis @hyp:memory-triage
    - Cognitive hierarchy of impairment maps to regional metabolic demand on FDG-PET
    - Severity progression follows the triage order: mild ME/CFS shows primarily executive/speed deficits; severe ME/CFS additionally shows language and motor involvement
    - Interventions that bypass energy-expensive processing (routinization, external cognitive scaffolding) should preferentially improve function

*Treatment implications.*
If the brain operates in chronic triage mode, the therapeutic strategy shifts from “try harder” to “reduce the load”: (1) _routinize_ daily activities to shift them from energy-expensive prefrontal control to energy-efficient basal ganglia automaticity; (2) use external cognitive scaffolding (lists, alarms, decision templates) to offload executive demands; (3) schedule cognitively demanding tasks during peak energy windows when triage thresholds are temporarily relaxed; (4) explore metabolic interventions (ketone supplementation, cerebral blood flow optimization) that may expand the total energy budget and raise triage thresholds across all tiers.

*Limitations.*
This hypothesis faces several challenges: (1) the meta-analytic evidence does not cleanly support executive function as the most impaired domain @Sebaiti2022cognitive; (2) the triage hierarchy has not been directly tested in ME/CFS with tasks specifically designed to probe each tier; (3) alternative explanations for the cognitive pattern exist, including neuroinflammation-mediated cytokine effects on specific circuits @Bansal2025cognitive, tryptophan pathway diversion, and autonomic-mediated cerebral hypoperfusion; (4) the model may oversimplify what is likely a multi-mechanism process. The triage framework should be understood as one contributing mechanism among several, not a complete explanation for ME/CFS cognitive dysfunction.
] <spec:cns-energy-triage>

== Summary: An Integrated Neurological Model
<sec:neuro-summary>

The evidence from the NIH deep phenotyping study and decades of prior research supports an integrated model of neurological dysfunction in ME/CFS @walitt2024deep. An initiating trigger such as infection or other stressor disrupts central nervous system homeostasis. Microglial activation persists beyond acute illness, producing chronic low-grade neuroinflammation. Catecholamine and tryptophan pathway abnormalities develop, affecting dopamine, norepinephrine, and serotonin signaling (neurotransmitter dysregulation). The temporal-parietal junction and related regions fail to accurately process effort-related information (integrative brain dysfunction). Parasympathetic withdrawal and sympathetic dysregulation produce cardiovascular and multi-organ effects (autonomic dysfunction). Reduced cerebral blood flow limits brain metabolic capacity (cerebrovascular compromise). Finally, fatigue, cognitive dysfunction, orthostatic intolerance, and other symptoms emerge from these converging abnormalities as the clinical manifestations.

This model explains why ME/CFS patients experience fatigue fundamentally different from normal tiredness: the brain's basic mechanisms for perceiving, estimating, and responding to effort are dysfunctional. Treatment approaches targeting these specific neurological abnormalities may prove more effective than those addressing peripheral fatigue or deconditioning.

#warning-env(title: [Stimulant Contraindication and Metabolic Paradox])[
Stimulants (amphetamines, methylphenidate, modafinil) are generally *contraindicated* in ME/CFS despite their effectiveness in other fatigue conditions. While they may temporarily mask fatigue by artificially boosting alertness and motivation, they do not address the underlying energy deficit and may enable activity levels that exceed the patient's true physiological capacity. This can precipitate post-exertional malaise (PEM) and potentially cause permanent deterioration. The neurological model presented here explains why: stimulants affect perceived effort and motivation (downstream of the TPJ dysfunction) without correcting the fundamental mismatch between the brain's effort calculations and actual metabolic capacity. Patients may feel capable of activity that their bodies cannot sustain, leading to crashes. This differs fundamentally from stimulant use in conditions like ADHD or narcolepsy, where the underlying metabolic machinery is intact.

A further concern specific to ME/CFS is a _metabolic paradox_ created by stimulant-induced appetite suppression. Catecholaminergic stimulants (including methylphenidate and amphetamines) suppress hunger signals through dopamine and norepinephrine pathways @Volkow2012brain. In a patient with already-impaired energy metabolism, this suppression of compensatory hunger—the body's attempt to increase substrate availability in the face of cellular energy deficit—removes a critical homeostatic signal. The patient feels less hungry not because their energy needs are met, but because the medication has silenced the hunger circuit. The result is that patients may further reduce caloric intake at precisely the time when metabolic support is most needed. Clinicians using stimulants in selected ME/CFS patients (see Chapter @ch:symptom-management) should actively monitor body weight and encourage structured meal schedules independent of appetite perception.
]
