#import "../../../../shared/environments.typ": *

=== Microcirculation
<sec:microcirculation>

==== Capillary Perfusion

The microcirculation delivers oxygen and nutrients to tissues and removes metabolic waste:

    - *Red cell deformability*: Impaired RBC flexibility may impede capillary transit @Saha2019
    - *Microclot obstruction*: Amyloid-resistant fibrinaloid microclots may occlude microcapillaries, impairing perfusion @Nunes2022microclots

==== Oxygen Extraction

Peripheral oxygen extraction findings in ME/CFS appear contradictory across studies, likely reflecting patient heterogeneity or methodological differences:

    - *Contradictory findings*: Some studies report widened arteriovenous O#sub[2] difference (increased extraction compensating for reduced cardiac output), while others report impaired extraction consistent with mitochondrial limitation; these contradictions may reflect distinct patient subgroups
    - *Near-infrared spectroscopy*: Abnormal muscle oxygenation kinetics during exercise and delayed recovery are documented by NIRS, consistent with both delivery and utilization abnormalities @keller2024cpet

==== Tissue Hypoxia

Inadequate oxygen delivery produces tissue hypoxia:

    - *Muscle hypoxia*: Contributes to weakness and post-exertional symptoms
    - *Cerebral hypoperfusion*: Causes cognitive dysfunction (see Chapter @ch:neurological)
    - *Lactate accumulation*: Results from anaerobic metabolism
    - *Symptom generation*: Hypoxia-sensitive nociceptors may trigger pain

==== Cerebral Blood Flow During Orthostatic Stress
<sec:cerebral-orthostatic>

While tissue hypoxia affects multiple organs, the brain is particularly vulnerable to perfusion deficits during orthostatic challenge. Van Campen and colleagues have systematically characterized cerebral blood flow (CBF) abnormalities in ME/CFS through a series of rigorous studies using transcranial Doppler during tilt-table testing @VanCampenEtAl2020 @VanCampenEtAl2021 @VanCampenEtAl2023 @VanCampenEtAl2024.

#achievement(title: [Near-Universal CBF Decline in ME/CFS])[
Van Campen et al. @VanCampenEtAl2020 demonstrated that ME/CFS patients show reduced cerebral blood flow during head-up tilt testing even in the absence of hypotension or tachycardia. The findings are striking in their consistency across orthostatic phenotypes (percentages represent distinct, non-overlapping subgroups stratified by vital sign response):

    - *82%* of patients with normal HR/BP showed abnormal CBF reduction
    - *98%* of patients with delayed orthostatic hypotension showed abnormal CBF
    - *100%* of patients meeting POTS criteria showed abnormal CBF
    - End-tilt CBF reduction: *26% in ME/CFS vs.\ 7% in controls* (3.7-fold greater)

Abnormal CBF reduction thus occurs across all orthostatic presentations—even in patients with entirely normal vital signs. In the largest study to date (n=534), *91% of ME/CFS patients* with normal HR and BP responses demonstrated abnormal cardiac output and CBF reduction during tilt @VanCampenEtAl2024, indicating that standard orthostatic vital signs miss the primary pathology in most patients.
] <ach:cbf-decline>

#warning-env(title: [Replication Status: Single Research Group])[
All van Campen CBF studies originate from a single Dutch referral center using the same tilt-table protocol and transcranial Doppler methodology @VanCampenEtAl2020 @VanCampenEtAl2021 @VanCampenEtAl2023 @VanCampenEtAl2024. While internally consistent across multiple publications (n=107 to n=534), no independent research group has replicated these findings using equivalent methodology. The sequential publication pattern from one center may give the appearance of independent replication but represents a single group's cohort. Independent replication with standardized protocols at other centers is essential. See also the related CBF findings in Chapter @ch:neurological (Achievement @ach:cbf-universal).
]

*Clinical Implications of CBF Findings*

The cognitive symptoms during orthostatic stress—including brain fog, difficulty concentrating, and word-finding problems—correlate directly with the degree of cerebral hypoperfusion @VanCampenEtAl2023. Patients often report that cognitive function worsens progressively during prolonged standing and improves rapidly upon assuming a recumbent position. This positional dependence of cognitive symptoms provides clinical evidence for the cerebrovascular contribution to ME/CFS neurological dysfunction.

#clinical-finding(title: [Incomplete CBF Recovery After Orthostatic Stress])[
CBF reduction persists even after returning to supine position. Van Campen et al. @VanCampenEtAl2021 documented CBF reduction of $-29%$ at end-tilt, improving to only $-16%$ post-tilt. The degree of recovery correlated with disease severity rather than hemodynamic parameters, suggesting the CBF abnormality reflects intrinsic cerebrovascular or metabolic dysfunction rather than simple hemodynamic failure.
] <obs:cbf-recovery>

*Absence of Compensatory Vasodilation*

A particularly significant finding is the near 1:1 relationship between cardiac output reduction and CBF reduction in ME/CFS patients @VanCampenEtAl2024. In healthy individuals, reduced cardiac output triggers compensatory cerebral vasodilation to maintain brain perfusion. The absence of this compensation in ME/CFS suggests possible endothelial dysfunction affecting cerebrovascular autoregulation. This may represent a critical vulnerability: the brain cannot protect itself from systemic hemodynamic perturbations.

*Mechanisms of Cerebral Hypoperfusion*

Multiple mechanisms likely contribute to orthostatic cerebral hypoperfusion in ME/CFS. Evidence strength varies: *(documented)* = directly measured in ME/CFS studies; *(inferred)* = logically derived from observed relationships; *(hypothesized)* = proposed mechanism not yet directly tested.

    - *Reduced cardiac output* *(documented)*: Preload failure and chronotropic incompetence limit systemic perfusion pressure; directly measured in tilt studies showing parallel CO and CBF reduction @VanCampenEtAl2024 (see Section @sec:cardiac-output)
    - *Impaired cerebral autoregulation* *(inferred)*: Failure of compensatory vasodilation during reduced perfusion pressure; inferred from near 1:1 CO-CBF relationship where healthy controls show compensatory vasodilation @VanCampenEtAl2024 @Medow2024cerebralautoregulation
    - *Endothelial dysfunction* *(hypothesized)*: May impair nitric oxide-mediated vasodilation; suggested by absence of compensatory response but not directly measured in CBF studies
    - *Autonomic dysregulation* *(documented)*: Impaired sympathetic vasoconstriction in peripheral vascular beds allows excessive venous pooling; documented via HRV and catecholamine studies (see Chapter @ch:neurological Section @sec:autonomic-imbalance)
    - *Blood volume deficit* *(documented)*: Reduced circulating volume exacerbates orthostatic hemodynamic stress; documented in multiple studies showing 10–15% blood volume reduction (see Section @sec:blood-volume)
    - *Orthostatic hypocapnia* *(documented)*: Van Campen et al.\ (2023) @VanCampen2023co2cbf quantified PETCO#sub[2] during tilt in 535 female ME/CFS patients: end-tilt PETCO#sub[2] was 26–30~mmHg vs.\ 36±3~mmHg in controls. CO#sub[2] reactivity slopes were preserved, meaning the hypocapnia drives CBF reduction via normal cerebrovascular reactivity — orthostatic hypocapnia functions as a physiological amplifier: reduced cardiac output causes ventilation/perfusion mismatch, PETCO#sub[2] falls, CO#sub[2]-sensitive cerebral vessels constrict, and CBF falls further than systemic haemodynamics alone would predict @Badhwar2025brainbloodflow @Medow2024cerebralautoregulation. This mechanism may explain why CBF reductions (26–31%) consistently exceed systemic cardiac output reduction in ME/CFS tilt studies

In mast cell disorder patients, Novak et al.\ documented 20–24% reduction in orthostatic cerebral blood flow velocity using transcranial Doppler @Novak2022. Given the substantial overlap between mast cell activation and ME/CFS, histamine-mediated vasodilation during orthostatic stress may contribute to cerebral hypoperfusion in some patients. The combination of reduced blood volume, impaired vasoconstriction, and potentially histamine-induced vasodilation creates multiple mechanisms converging on inadequate cerebral perfusion during upright posture.

*Integration with Selective Energy Dysfunction Hypothesis*

The profound and consistent CBF reduction during orthostatic challenge exemplifies the broader pattern of _preserved baseline function with impaired challenge response_ characteristic of ME/CFS (see Chapter @ch:energy-metabolism Section @sec:selective-energy-dysfunction). Resting cerebral perfusion may be adequate, but the system cannot maintain CBF during the increased demand of orthostatic stress. The brain—with its high energy demands and critical dependence on continuous perfusion—may serve as the “canary in the coal mine” for systemic energy coordination dysfunction.

See Chapter @ch:neurological Section @sec:brain-bottleneck for discussion of brain-centric pathophysiology and the role of CBF abnormalities in the broader ME/CFS disease model.

