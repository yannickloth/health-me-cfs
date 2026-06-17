#import "../../../../shared/environments.typ": *

=== CSF Proteomics: Complement, Coagulation, and Clinical Heterogeneity
<sec:csf-proteome-mecfs>

Bragee et al.\ (2026) performed CSF proteomics on 31 ME/CFS patients, quantifying 902 proteins and correlating findings with clinical features @Bragée2026csf-proteome. The most striking finding was the enrichment of neutrophil degranulation and platelet activation pathways in POTS-positive patients, alongside complement cascade and coagulation pathway enrichment in severe cases.

This CSF compartment data is valuable because it samples the central nervous system directly. However, the absence of a control group limits interpretation: the pathway enrichments (neutrophil degranulation, platelet activation, complement cascade, coagulation) are associated with clinical features _within_ the ME/CFS group but cannot be established as different from healthy individuals. Furthermore, complement and coagulation proteins are among the most abundant plasma proteins, and blood contamination is a dominant confound in CSF proteomics---if BBB permeability is increased in ME/CFS (as documented in Section @sec:bbb-vulnerability), plasma protein leakage would be expected and does not necessarily indicate CNS-compartment-specific pathology. Within-group severity correlations are directionally consistent with peripheral blood findings but cannot establish cross-compartment convergence without a control group.

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

The persistence of perfusion deficits across multiple studies and imaging modalities is consistent with cerebrovascular dysfunction contributing to ME/CFS symptoms. Cataldo et al.\ (2026, n=186) confirm this extends to Long COVID: ASL MRI revealed increased spatial coefficient of variation (sCOV) indicating delayed arterial transit and global microvascular dysfunction — despite preserved cerebral blood flow, suggesting the pathology is microvascular efficiency rather than gross perfusion deficit @Cataldo2026cerebrovascularLC.

#limitation(title: [Central Catecholamine Findings: Expanding Evidence, Remaining Gaps])[
The CSF catecholamine data derive primarily from two NIH Clinical Center analyses of overlapping cohorts: Walitt 2024 (n=17 PI-ME/CFS) and Aregawi 2026 (n=16 PI-ME/CFS, n=34 PASC, n=32 Parkinson's disease, n=40 healthy volunteers) @Walitt2024NIH @Aregawi2026Noradrenergic. Aregawi et al. extended the 2024 findings by constructing novel composite pathway indices (NE + DHPG + MHPG for noradrenergic; DA + DOPAC + HVA for dopaminergic), adding PASC and Parkinson's disease comparator groups, and reporting CSF MHPG levels for the first time in PI-ME/CFS or PASC. Key epistemic boundaries:

    - Both studies originate from the same NIH Clinical Center; no independent replication at a different institution has been performed.
    - The cohorts were restricted to post-infectious ME/CFS; whether noradrenergic deficiency characterises gradual-onset or non-viral ME/CFS is unknown.
    - CSF catecholamine levels are influenced by medications, sleep timing, activity levels, and lumbar puncture technique — though Aregawi et al. demonstrated the NE Pathway abnormality persisted after removing patients on tricyclics, amphetamines, venlafaxine, or duloxetine.
    - The direction of causality is unestablished: low central norepinephrine may _result from_ reduced physical activity, sleep disruption, or chronic illness rather than _causing_ ME/CFS symptoms. Prolonged inactivity reduces CSF NE turnover in healthy individuals, and ME/CFS patients are among the most sedentary clinical populations. Neither the Walitt 2024 nor Aregawi 2026 cohorts included deconditioning-matched controls, a confound that has not been experimentally eliminated. The correlation pattern is consistent with this alternative: NE Pathway correlates with handgrip endurance (a readout of physical conditioning, rho=0.62) but not with orthostatic measures (the symptom domain most directly linked to NE physiology), a dissociation expected if low CSF NE tracks deconditioning rather than driving pathophysiology.
    - Adrenergic dysfunction is broadly supported: a systematic review and meta-analysis by Hendrix et al. (2025) confirmed adrenergic dysfunction across ME/CFS and fibromyalgia, though with heterogeneous measures and outcomes @Hendrix2025AdrenergicDysfunction.
    - The Hendrix 2025 meta-analysis reports elevated catecholamines and altered receptor function — the opposite pattern from the low CSF NE Pathway reported by Aregawi 2026. This tension (elevated peripheral NE vs. reduced central NE) is consistent with the central-peripheral mismatch model but could also reflect different populations, measurement timing, or NE redistribution rather than production failure.

]

