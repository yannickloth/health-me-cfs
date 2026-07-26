#import "../../../../shared/environments.typ": *

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

    - *Mild, resolved COVID* (symptoms 4–12 weeks): $~3$ IQ points ($~-0.2$ SD)
    - *Persistent symptoms / Long COVID* ($>=$12 weeks): $~6$ IQ points ($~-0.4$ SD)
    - *ICU admission*: $~9$ IQ points ($~-0.6$ SD)
    - *Reinfection*: additional $~2$ IQ points per episode

Memory, reasoning, and executive function were the most sensitive domains. Earlier variants (original and Alpha) produced larger deficits than Omicron-era infections, and vaccination was associated with a small cognitive advantage. The Long COVID figure ($tilde$6 IQ points) is directly relevant to ME/CFS: many Long COVID patients meeting post-exertional malaise criteria satisfy ME/CFS diagnostic criteria @Komaroff2023, and likely fall at the more severe end of this distribution.

*Objective cognitive slowing.* Zhao et al. @Zhao2024cognitive provided task-based confirmation in a multicenter study (UK and Germany, $n = 270$). Post-COVID patients showed reaction times approximately 3 standard deviations slower than healthy controls on simple reaction time tasks, with 53.5% exceeding 2 SD below normal. Fatigue and depression comorbidities did not fully account for the slowing—paralleling the independence of cognitive dysfunction from mood disorders in ME/CFS @Sebaiti2022cognitive.

*Neuroimaging substrate.* Douaud et al. @Douaud2022brain provided the structural neuroimaging correlate using UK Biobank longitudinal data ($n = 785$, before-and-after design). Even after predominantly mild COVID (96% non-hospitalized), infected individuals showed greater grey matter thickness reduction in the orbitofrontal cortex and parahippocampal gyrus (0.2–2% tissue loss in olfactory-related regions) and greater cognitive decline on complex tasks compared to matched controls. These structural changes in regions critical for memory encoding and executive function may underpin the cognitive deficits observed in both Long COVID and post-infectious ME/CFS.

*ME/CFS vs.\ Long COVID: direct comparison.* Azcue et al. @Azcue2022brainfog conducted the most informative head-to-head comparison ($n = 42$ ME/CFS, $n = 73$ post-COVID). Both conditions shared a core pattern of reduced attention and slower processing, but ME/CFS patients showed significantly worse sustained attention (83.3% vs.\ 56.2% impaired) and visuospatial ability than post-COVID patients. The authors concluded that the conditions share overlapping pathology with different precipitating triggers—consistent with the post-infectious syndrome cluster model discussed in Section @sec:cross-disease.

#speculation(title: [Muscarinic GPCR Autoantibodies as Cognitive Modulators])[
*Certainty: 0.35.*
Azcue et al.\ (2026) found that M1, M3, and M4 muscarinic acetylcholine receptor autoantibody titers positively correlated with verbal and working memory performance in ME/CFS patients ($n=59$) @Azcue2026gpcr. The direction—higher autoantibody titers associated with *better* cognitive performance—is unexpected and requires explanation. Three mutually compatible interpretations exist: (1) muscarinic AAbs may act as partial agonists, weakly stimulating receptors that would otherwise be insufficiently activated by diminished acetylcholine tone; (2) the correlation may reflect compensatory upregulation: patients with more severe cognitive impairment upregulate ACh receptors, and autoantibody production tracks receptor density rather than driving dysfunction; (3) the observed ELISA signal may capture non-pathogenic, low-affinity antibodies that correlate with intact cognitive function rather than causing it.

*Falsifiable predictions:* (a) Functional receptor assays (calcium flux, impedance) should demonstrate whether muscarinic AAbs from ME/CFS sera have agonistic, antagonistic, or null effects on receptor signaling. (b) If muscarinic AAbs are compensatory partial agonists, their depletion via immunoadsorption should transiently worsen verbal/working memory (a testable prediction with existing immunoadsorption trial data). (c) Muscarinic AAb titers should be inversely correlated with CSF acetylcholine metabolites (HVA/MHPG) if the compensatory hypothesis is correct.

*Limitations:* Single study, $n=59$, not yet replicated. The positive direction is counterintuitive given the prevailing view that autoantibodies are generally pathogenic. CellTrend ELISA specificity concerns (see ch07 @sec:autoimmunity) apply. The finding may reflect assay artifacts rather than true receptor biology. Without functional validation, this remains a statistical observation only. Certainty 0.35 — cross-disease indirect evidence from Sjögren's syndrome (muscarinic M3 AAbs as diagnostic biomarkers) provides mechanistic precedent for muscarinic receptor autoantibodies in chronic illness, but the correlation direction in ME/CFS is opposite to the expected pathological pattern.
] <spec:muscarinic-cognition>

#limitation(title: [Post-COVID Cognitive Data: Applicability to ME/CFS])[
The Hampshire et al.\ IQ-equivalent figures @Hampshire2024cognition apply to the general post-COVID population, not specifically to patients meeting ME/CFS criteria. The subset of Long COVID patients with post-exertional malaise likely has more severe cognitive impairment than the group average. Additionally, the IQ-equivalent expression converts composite cognitive scores to a familiar scale but does not represent direct IQ testing; the figures should be interpreted as population-level effect sizes rather than individual-level predictions. The Douaud et al.\ neuroimaging findings @Douaud2022brain predate Omicron and may not fully represent current variant effects.
]

