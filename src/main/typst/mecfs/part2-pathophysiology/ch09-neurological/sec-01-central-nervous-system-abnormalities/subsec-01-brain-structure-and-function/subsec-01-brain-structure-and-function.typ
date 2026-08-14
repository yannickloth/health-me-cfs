#import "../../../../shared/environments.typ": *

=== Brain Structure and Function


==== Structural Neuroimaging Findings

Multiple neuroimaging studies have documented structural brain abnormalities in ME/CFS patients, though findings have varied across studies due to differences in patient populations, imaging protocols, and analytical methods @Lee2024neuroimaging.

*White Matter Abnormalities*
Several studies have reported increased white matter hyperintensities (WMH) in ME/CFS patients compared to healthy controls @Lange1999mri @Zeineh2015white. These hyperintensities, visible on T2-weighted and FLAIR MRI sequences, may indicate demyelination, axonal loss, or microvascular damage. The distribution of WMH in ME/CFS patients tends to involve periventricular white matter, subcortical regions, and frontal and temporal lobes. Zeineh et al. @Zeineh2015white identified increased fractional anisotropy in the right arcuate fasciculus, which correlated with disease severity (r=0.649, p=0.0015), providing anatomical substrate for the cognitive dysfunction observed in ME/CFS.

The clinical significance of these findings remains debated, as similar changes occur with normal aging and various medical conditions. However, the presence of WMH in younger ME/CFS patients suggests pathological processes beyond typical age-related changes @Lange1999mri @Zeineh2015white.

==== Diffusion-Based White Matter Abnormality Imaging
<sec:nii-neuroinflammation>

Yu et al.\ (2026) applied an advanced neuroinflammation imaging (NII) model to diffusion MRI data from 67 ME/CFS patients and 67 matched healthy controls @Yu2026diffusion-neuroinflammation. The NII model estimates tissue microstructure parameters beyond conventional diffusion tensor imaging (DTI) and revealed three abnormalities: reduced NII-HR (consistent with cerebral edema), reduced NII-RF (consistent with cellular infiltration), and increased NII-FF (consistent with axonal reorganisation). These parameters cannot definitively distinguish neuroinflammation from other white matter pathologies---chronic cerebral hypoperfusion (documented in 90% of ME/CFS patients, Section @sec:cerebral-blood-flow) could produce the same pattern through ischemia-reperfusion injury without any immune mechanism.

#achievement(title: [Widespread White Matter Abnormalities Detected by Advanced Diffusion MRI])[
*Certainty: 0.35.* n=67 per group with rigorous matching; NII model substantially more sensitive than conventional DTI; findings correlate with clinical measures; Human Brain Mapping is a reputable specialty journal. Not independently replicated. Certainty at 0.35 (not 0.45) because: single-center cross-sectional study; NII model has not been validated in independent ME/CFS cohorts or against histopathology in any disease; the "neuroinflammation" interpretation is one of several plausible explanations (ischemia, demyelination, neurodegeneration could produce identical NII signatures); conventional DTI showing minimal differences could indicate NII is oversensitive rather than that DTI missed real pathology; hypoperfusion already well-documented in ME/CFS provides an equally parsimonious explanation without any novel model. @Yu2026diffusion-neuroinflammation

The critical methodological advance is that conventional DTI metrics showed minimal group differences, while NII metrics revealed widespread abnormalities. This resolves a longstanding inconsistency in ME/CFS neuroimaging---prior DTI studies produced mixed results, which may have reflected insufficient sensitivity of the standard DTI model rather than absence of pathology. The NII model's parameters map more directly onto tissue-level processes (edema, cellular infiltration, axonal change), providing a clearer window into the biological substrate of white matter abnormalities.

The NII findings are broadly consistent with neuroinflammation, chronic hypoperfusion, or a combination. The cerebral hypoperfusion extensively documented in ME/CFS (Section @sec:cerebral-blood-flow: 10--20% global CBF reduction, 90% of patients with abnormal tilt-test CBF) provides a parsimonious alternative explanation: ischemia-reperfusion injury from episodic hypoperfusion could produce the edema, cellular infiltration, and axonal reorganisation patterns observed without requiring an immune mechanism. Distinguishing neuroinflammation from ischemia will require either histopathological correlation or multi-modal imaging (e.g., TSPO-PET combined with NII).

NII analysis is a research technique performed with specialised post-processing software; it is not available through clinical radiology departments, and standard diffusion MRI cannot substitute.

*Limitations:* Cross-sectional design precludes causal inference; single-center study; NII model requires validation in independent ME/CFS cohorts; the neuroinflammation interpretation, while plausible, is inferential rather than directly confirmed by histopathology; hypoperfusion (already well-documented in ME/CFS) is an equally parsimonious explanation for the observed NII parameters.
] <ach:nii-neuroinflammation>


#open-question(title: [Brainstem Volume Direction Contradicts Across Cohorts])[
*Certainty: N/A — the direction of any brainstem volume difference is unresolved.* A proof-of-concept multimodal MRI study (Vienna, n=26 ME/CFS / 27 controls) reported *reduced* brainstem volume including the pons in patients: $beta$=-0.10% eTIV (95% CI -0.18 to -0.02, $p$=0.013, FDR-$p$=0.039) @Bader2026Hypoxia. Deep grey matter and whole-brain parenchymal fraction did not differ (FDR 0.98), indicating a brainstem-specific, not global, atrophic signal. By contrast, an independent 7T MRI study from the Griffith University lab reported *larger* brainstem volumes in ME/CFS and long COVID (pons $p$=0.003, superior cerebellar peduncle $p$=0.009, whole brainstem $p$=0.005) @Thapaliya2023Brainstem. These two findings point in opposite directions.

The contradiction is not resolved by study quality alone: both use structural MRI in ME/CFS cohorts. Per the integration decision for this topic, the direction is presented as an open question rather than weighted toward either study. The cohort-overlap caveat matters: Thapaliya2023, Barnden2018, and Thapaliya2022 originate from the same Griffith laboratory cluster, so they are not independent replications of each other @Thapaliya2023Brainstem @Barnden2018T1Brainstem @Thapaliya2022brain. Accounting for this, the net independent clusters number two (Vienna reduced vs. Griffith larger) with opposite directions.

*Replication status:* Each direction rests on a single independent research group; not reconciled across independent labs.

*Severity applicability:* Unknown — neither cohort stratified brainstem volume by disease severity; any relationship between brainstem volume direction and symptom burden is untested.

*Limitations:* Proof-of-concept and modest sample in the Vienna study; possible methodological differences (field strength 3T vs 7T, segmentation pipelines, cohort composition); no study yet measures brainstem volume and function (e.g., connectivity, metabolite levels) in the same patients to reconcile direction with symptom burden.

*Falsifiable prediction:* A multi-site study using harmonised segmentation across an adequate sample will determine whether brainstem volume is reduced, increased, or unchanged in ME/CFS, and whether any direction correlates with severity, disease duration, or brainstem-specific symptoms (autonomic dysfunction, dyspnoea, sleep disturbance). The open question is resolved once independent labs using comparable methods obtain a consistent direction.

*Consequence:* The two groups' opposite results mean we cannot yet trust any single claim about brainstem size in ME/CFS — knowing the true direction matters because a consistent structural brainstem finding would point to a specific site of pathology and help reconcile the many brainstem-related symptoms patients report.
] <oq:brainstem-volume-direction>
