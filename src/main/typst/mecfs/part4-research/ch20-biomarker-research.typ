#import "../shared/environments.typ": *

= Biomarker Research
<ch:biomarker-research>

The search for reliable biomarkers in ME/CFS has been a central focus of research for decades. The 2024 NIH deep phenotyping study by Walitt et al.\ represents a landmark contribution to this effort, identifying multiple objective biological abnormalities that distinguish PI-ME/CFS patients from healthy controls @walitt2024deep. This chapter reviews the current state of biomarker research, synthesizes findings across multiple biological domains, and discusses the path toward clinically useful diagnostic and prognostic markers.

== Overview of Biomarker Development
<sec:biomarker-overview>

=== Why Biomarkers Are Needed

The absence of validated biomarkers has been one of the most significant obstacles to ME/CFS recognition, research, and treatment:

    - *Diagnostic uncertainty*: Without objective markers, diagnosis relies entirely on clinical criteria and exclusion of other conditions
    - *Stigmatization*: Lack of measurable abnormalities has contributed to the perception of ME/CFS as a psychosomatic condition
    - *Research challenges*: Heterogeneous patient populations (due to imprecise diagnosis) may obscure findings
    - *Treatment development*: Drug development requires objective endpoints for clinical trials
    - *Disability assessment*: Social security and insurance determinations benefit from objective evidence
    - *Subgroup identification*: Biomarkers may identify pathophysiologically distinct subgroups requiring different treatments

=== Types of Biomarkers

Different biomarker types serve different purposes:

==== Diagnostic Biomarkers
Markers that distinguish ME/CFS from healthy individuals and from patients with other fatiguing conditions:

    - High sensitivity (few false negatives)
    - High specificity (few false positives)
    - Practical for clinical use (accessible, affordable)
    - Reproducible across laboratories

==== Prognostic Biomarkers
Markers that predict disease course or outcome:

    - Likelihood of spontaneous improvement
    - Risk of progression to more severe illness
    - Long-term functional outcomes

==== Treatment Response Biomarkers
Markers that predict or monitor response to specific treatments:

    - Baseline markers predicting treatment response
    - Dynamic markers reflecting treatment effects
    - Stratification markers for personalized treatment selection

==== Mechanistic Biomarkers
Markers that reflect underlying pathophysiology:

    - May not be diagnostic but inform disease mechanisms
    - Guide development of targeted therapies
    - Enable subgroup classification

=== Challenges in ME/CFS Biomarker Research

Multiple factors have complicated biomarker identification:

    - *Case definition heterogeneity*: Different diagnostic criteria capture overlapping but distinct populations
    - *Disease heterogeneity*: ME/CFS likely encompasses multiple distinct conditions with different pathophysiology
    - *Illness duration effects*: Biomarkers may differ between early and chronic illness
    - *Severity effects*: Severely affected patients (often excluded from studies) may differ from ambulatory patients
    - *Sex differences*: The NIH study demonstrated distinct abnormalities in men and women
    - *Comorbidities*: Overlapping conditions (POTS, MCAS, fibromyalgia) may confound findings
    - *Small sample sizes*: Many studies underpowered to detect moderate effect sizes
    - *Lack of replication*: Few findings have been consistently replicated across laboratories

=== Convergent Biology Despite Heterogeneity

Despite the challenges listed above, emerging evidence suggests that heterogeneous upstream triggers converge on common downstream pathological pathways, with direct implications for biomarker strategy:

    - *miRNA convergence*: Cheema et al.\ 2023 in _PLOS ONE_ @Cheema2023mirna found that circulating miRNAs, although different between individual patients, target the same specific gene cluster ($p < 0.002$) converging on exercise hyperemia, angiogenesis, antioxidant defenses, and mitochondrial fission. This suggests heterogeneous molecular perturbations funnel into common downstream pathology measurable through functional pathway biomarkers rather than single-molecule markers.

    - *Metabolic convergence*: Naviaux et al.\ 2016 in _PNAS_ @Naviaux2016metabolic showed that despite heterogeneous triggers, the cellular metabolic response was homogeneous—a dauer-like hypometabolic state affecting 20 pathways with 80% of diagnostic metabolites decreased and 94–96% diagnostic accuracy.

  // TODO: needs #table() wrapper
[- *Genetic convergence*: Birch], [Younger 2025 in _J Transl Med_ @Birch2025precision identified gene-level heterogeneity but convergence on impaired energy production, reduced stress resilience, and vulnerability to post-exertional metabolic failure.],

    - *Emerging large-scale validation panels*: The EpiSwitch CFS test (Myhill et al.\ 2025, _J Transl Med_) @Hunter2025 achieved 92% sensitivity and 98% specificity using a 200-marker 3D genomic profiling model in severe ME/CFS, and the BioQuest project (OMF, launched 2024) @BioQuest2024 aims to analyze approximately 1,000 samples across metabolomics, proteomics, and cytokines with subgrouping as a primary aim.

  // TODO: needs #table() wrapper
[The practical implication of these convergence patterns is that biomarker strategies should target convergent downstream pathways (energy metabolism, vascular function, immune dysregulation) rather than seeking a single upstream marker. As argued by Birch], [Younger @Birch2025precision, multi-marker panels stratifying patients by endotype are more likely to succeed than individual biomarkers applied to the entire population.],

#limitation(title: [ME/CFS Biomarker Research: No Validated Diagnostic Biomarker Exists])[
Despite decades of research and multiple candidate markers, no biomarker or biomarker panel has achieved clinical validation for ME/CFS diagnosis. Critical limitations:

    - The NIH deep phenotyping study @walitt2024deep, while methodologically rigorous, enrolled only 17 PI-ME/CFS patients; all findings require large-scale replication before diagnostic claims can be made.
    - Published multi-marker panels reporting $>$90% sensitivity/specificity have not been independently validated in diverse populations; performance in discovery cohorts routinely exceeds performance in external validation.
    - Biomarker-disease associations documented in this chapter (cytokine profiles, NK cell dysfunction, metabolomic signatures) demonstrate group-level differences; individual-level diagnostic accuracy remains uncertain for all candidates.
    - The convergence patterns described (miRNA, metabolic, genetic) are derived from separate studies using different cohorts, criteria, and methodologies; no single study has demonstrated convergence across all domains in the same patients.
    - Commercial biomarker tests currently marketed for ME/CFS lack independent validation and should not be interpreted as diagnostic.

]

== Key Biomarkers from the NIH Deep Phenotyping Study
<sec:nih-biomarkers>

The Walitt et al.\ study provides a template for comprehensive biomarker identification, employing rigorous methodology with 17 PI-ME/CFS patients and 21 matched controls @walitt2024deep. The multi-domain assessment identified several categories of potential biomarkers.

=== Cerebrospinal Fluid Biomarkers

==== Catecholamine Metabolites
CSF analysis revealed significantly reduced catecholamine levels:

    - *Homovanillic acid (HVA)*: Primary dopamine metabolite; reduced in PI-ME/CFS
    - *3-methoxy-4-hydroxyphenylglycol (MHPG)*: Norepinephrine metabolite; reduced
    - *Clinical correlation*: Levels correlated with motor performance, effort behaviors, and fatigue severity
    - *Biomarker potential*: Objective, measurable, correlates with symptoms

==== Tryptophan Pathway Metabolites
Altered tryptophan metabolism documented:

    - Kynurenine pathway metabolite abnormalities
    - Potential serotonin precursor depletion
    - Links immune activation to neurological symptoms

=== Immune Biomarkers

==== B Cell Population Shifts
Characteristic pattern documented:

    - *Increased naïve B cells*: Elevated compared to controls
    - *Decreased switched memory B cells*: Reduced class-switched memory population
    - *Interpretation*: Pattern suggests chronic antigenic stimulation
    - *Diagnostic potential*: Specific pattern may distinguish ME/CFS from other conditions

==== Sex-Specific Immune Markers
Striking differences between sexes:

    - *Males*: Altered T cell activation markers, innate immunity changes
    - *Females*: Abnormal B cell proliferation, distinct white blood cell patterns
    - *Implications*: Biomarkers may need sex-specific interpretation

=== Autonomic Biomarkers

==== Heart Rate Variability
Reduced HRV documented:

    - Diminished overall variability (SDNN)
    - Reduced high-frequency power (parasympathetic marker)
    - Non-invasive, widely available measurement
    - Correlates with symptom severity

==== Baroreflex Sensitivity
Impaired baroreflex function:

    - Reduced cardiovagal gain
    - Indicates parasympathetic dysfunction
    - Objective, quantifiable measure

=== Cardiopulmonary Biomarkers

==== Exercise Testing Parameters
CPET abnormalities:

    - *Reduced VO#sub[2]peak*: Objective measure of aerobic capacity
    - *Chronotropic incompetence*: Inadequate heart rate response
    - *Two-day decline*: Failure to reproduce performance (highly specific)
    - *Reduced anaerobic threshold*: Earlier reliance on anaerobic metabolism

=== Neuroimaging Biomarkers

==== Functional MRI Findings
Brain activity abnormalities:

    - *Reduced TPJ activity*: During effort-based tasks
    - *Motor cortex hyperactivity*: Despite declining performance
    - *Altered effort perception*: Neural correlates of fatigue

== Metabolomic Biomarkers
<sec:metabolomic>

Metabolomics—the comprehensive study of small molecule metabolites—has emerged as a promising approach to ME/CFS biomarker discovery.

=== Key Metabolomic Studies

==== Naviaux et al. Studies
Landmark metabolomic investigations found:

    - Hypometabolic state resembling “dauer” (C. elegans survival mode)
    - Abnormalities in sphingolipid, phospholipid, and purine metabolism
    - Reduced metabolites across multiple pathways
    - Pattern suggesting coordinated metabolic downregulation

==== Amino Acid Profile Abnormalities
Multiple studies report altered amino acids:

    - *Branched-chain amino acids*: Often reduced
    - *Glutamine/glutamate*: Altered ratios
    - *Tryptophan*: Reduced (diverted to kynurenine pathway)
    - *Arginine*: May be depleted (NO synthesis)

==== Lipid Metabolism Markers
Abnormal lipid profiles:

    - Altered phosphatidylcholine species
    - Abnormal ceramide levels
    - Changed fatty acid profiles
    - Reduced omega-3 fatty acids in some studies

==== TCA Cycle Metabolites
Krebs cycle abnormalities:

    - Altered citrate, isocitrate, succinate levels
    - Suggests impaired oxidative metabolism
    - Correlates with mitochondrial dysfunction hypothesis

==== RBC Glutathione

Reduced glutathione is among the most replicated specific oxidative stress findings in ME/CFS, documented in both erythrocytes and brain tissue. Shungu et al.\ (2012) found significantly reduced cortical glutathione via MRS, correlating with physical functioning and energy levels, with pilot data showing NAC normalized glutathione and symptoms @Shungu2012glutathione. Clinical audits of mitochondrial support protocols in ME/CFS patients consistently identify glutathione depletion as part of the oxidative stress profile @Myhill2012audit. Glutathione functions both as a biomarker of oxidative burden and as a treatment target: N-acetylcysteine (NAC) is used to replenish glutathione precursors.

==== CoQ10 and Acylcarnitine Profile

Coenzyme Q10 (CoQ10) deficiency has been documented in ME/CFS: Maes et al.\ (2009) found that 44.8% of patients had plasma CoQ10 below the lowest control value, with lower CoQ10 correlating with fatigue, autonomic, and neurocognitive symptoms ($n = 58$) @Maes2009CoQ10. CoQ10 has been proposed as both a biomarker of mitochondrial electron transport chain dysfunction and a marker of treatment response @CastroMarrero2021CoQ10.

Acylcarnitine profiles reflect fatty acid beta-oxidation capacity via the carnitine shuttle. Long-chain acylcarnitines (C18:1, C18:2) are 30–40% lower in ME/CFS patients compared to controls, suggesting reduced carnitine palmitoyltransferase-I (CPT-I) activity and impaired mitochondrial fatty acid import @Reuter2011. Reduced free carnitine and total carnitine are also documented, correlating with functional capacity @Plioplys1995carnitine.

=== Synthesis of Metabolomic Findings

==== Common Patterns
Despite methodological differences, several patterns emerge:

    - Hypometabolic signature (reduced metabolites across pathways)
    - Impaired energy metabolism
    - Oxidative stress markers
    - Altered lipid metabolism

==== Subgroup Differences
Metabolomic studies may identify subgroups:

    - Different metabolic signatures in different patients
    - Potential for metabolomics-based classification
    - Treatment response prediction

==== Clinical Utility
Current status:

    - Not yet validated for clinical diagnosis
    - Research tool for understanding pathophysiology
    - Potential for future diagnostic panels
    - Requires standardization and replication

== Immunological Biomarkers
<sec:immunological-biomarkers>

=== Cytokine Profiles

==== Studies Identifying Cytokine Patterns
Numerous studies have examined cytokines in ME/CFS:

    - *Early illness*: More consistent elevation of pro-inflammatory cytokines
    - *Chronic illness*: More variable, often normalized
    - *Specific cytokines*: IL-1, IL-6, TNF-$alpha$, IFN-$gamma$ variably elevated
    - *Cytokine networks*: Pattern analysis may be more informative than individual cytokines

==== Variability and Consistency
Challenges in cytokine research:

    - Different assays with different sensitivities
    - Timing of blood draw (diurnal variation)
    - Recent activity effects
    - Heterogeneous patient populations

==== Correlation with Symptoms
When correlations are found:

    - Higher cytokines often correlate with greater severity
    - Cytokine patterns may predict symptom clusters
    - Post-exertional changes in cytokines documented

==== CCL2 (MCP-1) and Symptom Severity

Montoya et al.\ (2017, $n = 192$) identified CCL2 (monocyte chemoattractant protein-1) among the cytokines most strongly correlating with ME/CFS symptom severity @Montoya2017. CCL2 drives monocyte and T-cell recruitment and reflects ongoing innate immune activation; its severity correlation makes it one of the stronger candidate immunological biomarkers from the cytokine literature.

==== Neopterin: Macrophage Activation Marker

Neopterin, a pteridine produced by macrophages in response to IFN-$gamma$ stimulation, has been reported elevated in ME/CFS cohorts @Maksoud2023. As a non-specific marker of IFN-$gamma$-driven macrophage activation, elevated neopterin is consistent with the type-I/II interferon evidence base in ME/CFS, though it has not been validated as a diagnostic marker.

==== CRP and ESR: Diagnostically Informative Normal Findings

C-reactive protein (CRP) and erythrocyte sedimentation rate (ESR) are typically *normal* in ME/CFS despite significant symptom burden. This normal finding is itself diagnostically important: it distinguishes ME/CFS from active inflammatory conditions such as rheumatoid arthritis, systemic lupus erythematosus, and active infection, all of which produce CRP and ESR elevation. Clinicians frequently misinterpret normal CRP as evidence against organic disease; in ME/CFS, normal CRP is part of the expected biomarker profile rather than a disconfirmatory finding @Maksoud2023.

=== Cell Function Markers

==== NK Cell Activity
One of the most replicated findings:

    - Reduced cytotoxic function in most studies
    - 40–60% reduction compared to controls
    - Correlates with severity in some studies
    - Functional assay more informative than cell counts

==== T Cell Markers
Various abnormalities reported:

    - Exhaustion markers (PD-1, Tim-3)
    - Altered CD4/CD8 ratios (inconsistent direction)
    - Reduced regulatory T cell function
    - Th1/Th2 imbalance

==== B Cell Profiles
NIH study findings highlight B cell importance:

    - Naïve/memory B cell ratio shift
    - Chronic antigenic stimulation pattern
    - Potential autoantibody-producing populations

==== IgG Subclass Panel

IgG subclass deficiency, particularly IgG3 deficiency, is found in a subset of ME/CFS patients and is clinically actionable: documented subclass deficiency can inform consideration of IVIG supplementation in refractory cases @Maksoud2023. Testing includes IgG1–IgG4 quantification; IgG3 is the primary antiviral subclass and may reflect impaired antiviral immune responses.

#limitation(title: [IgG Subclass Deficiency in ME/CFS: Prevalence Uncertain])[
The prevalence of IgG subclass deficiency in ME/CFS is not firmly established; studies are small and heterogeneous. Subclass deficiency alone does not constitute a diagnostic biomarker for ME/CFS. Clinical decisions regarding IVIG based on subclass deficiency require full immunological evaluation and specialist input.
]

=== Mast Cell Mediator Biomarkers
<subsec:mast-cell-biomarkers>

Mast cell activation is increasingly recognized as a comorbidity in ME/CFS (estimated 17–25% prevalence @Rohrhofer2025mecfsmast), and mast cell mediators represent a distinct biomarker category with both diagnostic and mechanistic value. Standard serum tryptase—the traditional mast cell activation marker—has limited sensitivity in ME/CFS-relevant presentations: in a prospective POTS cohort ($n = 69$), Kohno et al. @Kohno2021potsmast found tryptase elevated in only 9% of patients with mast cell activation, compared to 52% for histamine/methylhistamine and 36% for prostaglandin D#sub[2].

==== Urinary Mast Cell Mediator Panel

Urinary mediators offer the most practical approach for detecting mast cell activation in ME/CFS, particularly for energy-limited patients unable to reach a clinic during acute episodes @Voelker2024urinemast. A paired baseline-to-acute measurement protocol provides superior diagnostic accuracy over absolute values @Voelker2025biomarkersmast:

    - *N-methylhistamine (NMH):* Histamine metabolite; diagnostic ratio $gt.eq$1.29 (acute/baseline). Collected via 24-hour or spot urine. Dietary histamine intake can cause $tilde$30% elevation, requiring standardized collection conditions.
    - *Leukotriene E4 (LTE4):* Shows greatest average acute elevation ($tilde$36-fold in acute events); diagnostic ratio $gt.eq$1.36. Not mast-cell-specific (also produced by eosinophils, basophils).
    - *2,3-dinor-11$beta$-PGF2$alpha$:* Prostaglandin D#sub[2] metabolite; diagnostic ratio $gt.eq$1.31; mean ratio $tilde$7.28 in acute events. Maeda et al. @Maeda2017pgdm demonstrated that urinary tetranor-PGDM is specifically elevated in food allergy patients ($n = 9$) versus other allergic diseases, suggesting relative specificity for intestinal mast cell activation—though this finding requires replication in non-IgE mast cell activation.

The urinary collection window extends to 5 hours post-symptom onset (versus 1–4 hours for serum tryptase), and home collection eliminates the need for clinic visits during acute episodes. Random urine panels are commercially available through reference laboratories @Voelker2024urinemast.

==== Application to Food-Triggered Mast Cell Activation

For ME/CFS patients with suspected food-triggered mast cell activation (see Section @subsec:food-mast-cell), paired urinary mediator testing during elimination-rechallenge protocols represents a potential diagnostic approach: collect baseline urine on a neutral day, then repeat collection 4–6 hours after a controlled food challenge. Elevated ratios in one or more mediators would support mast cell activation by the specific food. This protocol has not been prospectively validated in ME/CFS or MCAS populations, but the underlying mediator assays are clinically validated and the paired design controls for inter-individual variability @Voelker2025biomarkersmast.

#limitation(title: [Mast Cell Mediator Biomarkers: Current Limitations])[
Urinary mast cell mediators (NMH, LTE4, PGD#sub[2] metabolite) are not diagnostic of MCAS in isolation—they require concurrent clinical symptoms across $gt.eq$2 organ systems and treatment response for a complete MCAS diagnosis @Gulen2024mcascriteria @Castells2024mcasreview. LTE4 and PGD#sub[2] metabolites are produced by multiple immune cell types, limiting mast-cell specificity. Normal reference ranges have not been independently validated in ME/CFS populations. The paired food challenge mediator protocol described above is a proposed diagnostic approach based on established mediator assays; it has not been validated as a standalone diagnostic test for food-triggered MCAS.
] <lim:mast-cell-biomarkers>

== Neurological Biomarkers
<sec:neurological-biomarkers>

=== Brain Imaging Markers

==== Structural MRI
Documented abnormalities:

    - White matter hyperintensities (variable)
    - Regional gray matter volume changes
    - Brainstem abnormalities in some studies

==== Functional MRI
NIH study and others show:

    - Altered activation patterns during tasks
    - TPJ dysfunction during effort tasks
    - Connectivity changes
    - Potential for task-based biomarkers

==== PET and SPECT
Metabolic and perfusion imaging:

    - Regional hypometabolism
    - Reduced cerebral blood flow
    - Neuroinflammation markers (TSPO binding)

=== CSF Findings

Beyond the NIH catecholamine findings:

    - Elevated inflammatory markers in some studies
    - Altered protein profiles
    - Potential autoantibodies
    - Oligoclonal bands in subset

*Cerebrospinal Fluid Homocysteine*
Regland et al.\ reported elevated CSF homocysteine in all 12 FM/CFS patients examined, with
significant correlation to fatiguability, while serum levels were normal @Regland1997.
This CSF–serum discordance, if confirmed in larger ME/CFS-specific cohorts, would make CSF
homocysteine a candidate CNS-compartment biomarker for a subset of patients with prominent
neurocognitive and fatigue symptoms. The systematic review by Maksoud et al.\ (2023) of 101
ME/CFS biomarker studies did not identify homocysteine among biomarker candidates, reflecting
the absence of larger validation studies rather than a confirmed negative finding @Maksoud2023.

A future biomarker validation study could examine: serum vs CSF homocysteine, MTHFR genotype,
serum and CSF B12, and clinical fatigue severity scores simultaneously across ME/CFS, long-COVID,
and healthy control populations.

*Serum Homocysteine and Methylmalonic Acid (MMA)*
Serum homocysteine and methylmalonic acid (MMA) complete the B12/folate/methylation picture begun by the CSF finding above. Elevated serum homocysteine indicates impaired methylation, which may arise from B12 deficiency, folate deficiency, or MTHFR gene variants. MMA is the functional marker of cellular B12 deficiency: serum B12 concentrations can appear normal while tissue-level deficiency exists, but elevated MMA unmasks this functional shortfall. Both markers are accessible via standard laboratory testing and provide direct mechanistic context for the CSF homocysteine finding reported by Regland et al.\ @Regland1997.

=== Autonomic Function Tests

Quantifiable autonomic biomarkers:

    - *Tilt table testing*: POTS, NMH, OH patterns
    - *Heart rate variability*: Multiple parameters
    - *Sudomotor function*: QSART abnormalities
    - *Pupillometry*: Altered light reflexes

==== Renin and Aldosterone: RAAS Dysregulation

Renin-angiotensin-aldosterone system (RAAS) dysregulation is documented in POTS and ME/CFS, typically presenting as low renin with low-to-normal aldosterone despite evidence of reduced circulating volume — a paradoxical failure of the normal compensatory RAAS response @Miwa2017 @Raj2005. This pattern contributes to orthostatic intolerance and is clinically actionable: fludrocortisone (a mineralocorticoid) targets the aldosterone pathway to augment sodium retention and expand plasma volume. Paired plasma renin activity and serum aldosterone, interpreted together with orthostatic testing results, constitute useful biomarkers in the autonomic evaluation of ME/CFS patients with prominent orthostatic intolerance.

=== Cognitive Testing Patterns

Neuropsychological profiles:

    - Processing speed reduction (most consistent)
    - Attention and working memory deficits
    - Variable memory findings
    - Pattern different from depression or anxiety

== Genomic and Epigenetic Biomarkers
<sec:genomic-biomarkers>

=== Gene Expression Signatures

==== Peripheral Blood Transcriptomics
Multiple studies have examined gene expression:

    - Differential expression of immune-related genes
    - Metabolic gene abnormalities
    - Mitochondrial gene expression changes
    - Potential diagnostic signatures

==== Sex-Specific Gene Expression
NIH study found distinct patterns:

    - Different genes differentially expressed in men vs. women
    - Muscle biopsy gene expression differences
    - Supports sex-specific disease mechanisms

=== miRNA Profiles

MicroRNAs regulate gene expression:

    - Altered circulating miRNA profiles in ME/CFS
    - May reflect underlying pathway dysregulation
    - Potential for minimally invasive biomarkers
    - Requires further validation

=== DNA Methylation Patterns

Epigenetic modifications:

    - Altered methylation at specific sites
    - May reflect environmental exposures or disease state
    - Potential for stable biomarkers
    - Early-stage research

=== Clinical Utility

Current status of genomic biomarkers:

    - Research tools primarily
    - Not yet validated for clinical use
    - Potential for future multi-marker panels
    - May enable personalized treatment selection

== Proteomic Biomarkers
<sec:proteomic>

=== Protein Expression Patterns

Mass spectrometry-based proteomics:

    - Altered plasma/serum protein profiles
    - Inflammatory proteins frequently identified
    - Complement components
    - Coagulation factors

=== Autoantibody Panels

Functionally significant autoantibodies:

    - *Anti-$beta$-adrenergic receptor*: 25–30% of patients
    - *Anti-muscarinic receptor*: Significant subset
    - *Anti-neuronal antibodies*: Variable findings
    - *Diagnostic potential*: May identify autoimmune subgroup

=== Diagnostic Potential

Proteomics status:

    - Multiple candidate proteins identified
    - Replication across studies limited
    - Potential for panel-based diagnosis
    - Autoantibody testing closest to clinical use

=== Coagulation and Microclot Biomarkers
<subsec:coagulation-biomarkers>

Coagulation system dysregulation has emerged as an active area of ME/CFS biomarker research, driven primarily by Pretorius and colleagues' identification of fibrin amyloid microclots in Long COVID and ME/CFS. Nunes et al.\ (2022) demonstrated hyperactivated platelets and fibrinaloid microclots in ME/CFS plasma, with microclot area more than 10-fold greater than in healthy controls and approximately 80% of participants showing platelet hyperactivation @Nunes2022microclots. Proteomics analysis further revealed dysregulation of the coagulation cascade, endothelial dysfunction markers, and complement machinery @Nunes2024coagulation.

Key candidate coagulation biomarkers:

    - *D-Dimer*: Elevated in a subset of ME/CFS patients; reflects fibrin degradation and microclot turnover
    - *PAI-1 (plasminogen activator inhibitor-1)*: Elevated PAI-1 impairs fibrinolysis, allowing microclot persistence in the microvasculature
    - *Von Willebrand Factor (VWF)*: Marker of endothelial activation; elevated in endothelial injury
    - *Fibrinogen*: Precursor to fibrin microclots; elevated levels support clot formation propensity
    - *Soluble P-Selectin*: Platelet and endothelial activation marker; elevated in ME/CFS in some studies

#limitation(title: [Microclot Hypothesis: Replication Pending])[
The fibrin amyloid microclot hypothesis is an active but not-yet-fully-replicated research area. Studies to date involve small cohorts, and the microclot detection methodology (fluorescence microscopy of platelet-poor plasma) requires standardization. The causal relationship between microclots and ME/CFS symptoms remains to be established. These biomarkers should not be used for clinical diagnosis outside of research settings.
]

=== Viral Reactivation Biomarkers
<subsec:viral-reactivation-biomarkers>

Viral reactivation testing serves two roles in ME/CFS: differential diagnosis (distinguishing active infection from post-infectious ME/CFS) and ongoing surveillance of viral persistence or reactivation as a disease driver. The Montoya group documented HHV-6 and EBV reactivation in subsets of ME/CFS patients, with antiviral treatment trials based on this rationale @Montoya2017.

Key viral reactivation biomarkers:

    - *EBV VCA IgG*: Epstein-Barr virus viral capsid antigen antibody; elevated in prior infection (near-universal). *EA-D IgG* (early antigen): Elevated titers suggest recent reactivation. *EBNA IgG* (nuclear antigen): Typically present after resolved primary infection; low or absent EBNA with high VCA suggests atypical or reactivated infection.
    - *HHV-6 IgG and IgM*: Human herpesvirus-6 serology; IgM elevation or rising IgG titers indicate reactivation. PCR (plasma or PBMC) is more specific for active replication but less sensitive for latent/chromosomally integrated HHV-6.
    - *SARS-CoV-2 Nucleocapsid IgG*: Distinguishes prior infection from vaccination-only immunity (vaccines generate spike antibodies only; nucleocapsid antibodies arise only from infection). This distinction is clinically relevant in Long COVID/ME/CFS overlap cases to confirm SARS-CoV-2 as the triggering infection.

#limitation(title: [Viral Serology: Specificity and Interpretation Challenges])[
EBV and HHV-6 serology has poor specificity for active reactivation: the vast majority of adults are seropositive for both viruses, and antibody titers fluctuate widely without clinical disease. PCR is more specific for active replication but is insensitive for latent or chromosomally integrated virus (ciHHV-6). No standardized threshold distinguishes clinically significant reactivation from background seropositivity. Viral reactivation testing should be interpreted alongside clinical context and not used as a standalone diagnostic criterion.
]

== Composite Biomarker Panels
<sec:composite-biomarkers>

=== Multi-Omics Approaches

Integrating multiple biomarker types:

    - Combining metabolomics, proteomics, transcriptomics
    - Machine learning for pattern recognition
    - May capture disease complexity better than single markers
    - Requires large, well-characterized cohorts

=== Machine Learning Applications

Computational approaches to biomarker discovery:

    - Random forests, neural networks for classification
    - Feature selection to identify most informative markers
    - Integration of clinical and molecular data
    - Cross-validation to prevent overfitting

=== Diagnostic Accuracy

Published multi-marker panels:

    - Some report $>$90% sensitivity and specificity
    - Independent validation often shows lower performance
    - Need for prospective validation in diverse populations
    - Comparison to clinical diagnosis as gold standard problematic

=== Commercial Tests Available

Current commercial offerings:

    - Several proprietary tests marketed
    - Limited independent validation
    - Variable acceptance by clinicians and insurers
    - Ongoing development of improved panels

== Functional Biomarkers
<sec:functional-biomarkers>

=== Two-Day CPET Protocol

Perhaps the most specific biomarker for ME/CFS:

    - *Methodology*: Maximal exercise testing on consecutive days
    - *Finding*: 10–25% decline in VO#sub[2]peak, AT, work capacity on Day 2
    - *Specificity*: Healthy controls and patients with other conditions reproduce or improve
    - *Physiological basis*: Reflects post-exertional malaise objectively
    - *Limitations*: Requires specialized equipment, may exacerbate symptoms

=== NASA Lean Test

Simple orthostatic assessment:

    - Patient leans against wall for 10 minutes
    - Heart rate and blood pressure monitored
    - Identifies POTS and other orthostatic disorders
    - Accessible, low-tech screening tool

=== Cognitive Testing

Standardized neuropsychological assessment:

    - Processing speed measures (e.g., Symbol Digit Modalities Test)
    - Attention tests (e.g., continuous performance tasks)
    - Pattern of deficits may distinguish from depression
    - Sensitive to post-exertional cognitive deterioration

== Clinical Workup Biomarkers: Exclusion and Comorbidity
<sec:clinical-workup-biomarkers>

A critical category of biomarkers in ME/CFS evaluation are those used not to diagnose ME/CFS but to: (a) exclude common mimics, (b) identify actionable comorbidities, and (c) complete the diagnostic picture. Normal results from these tests are informative and expected in ME/CFS; abnormal results identify conditions requiring independent management.

=== Thyroid Function Panel

Thyroid function assessment (TSH, Free T3, Free T4) is mandatory in any ME/CFS workup to exclude hypothyroidism, the most important and common mimic of ME/CFS fatigue. Hashimoto's thyroiditis (identified by elevated thyroid peroxidase antibodies, TPO-Ab) represents both a mimic and a comorbidity: it can coexist with ME/CFS without causing the full symptom profile, and its identification enables targeted management. Thyroid function is typically normal in ME/CFS; however, normal thyroid function is a necessary component of diagnostic certainty rather than a dismissible negative finding.

=== Ferritin (Iron Stores)

Iron deficiency, defined by low serum ferritin even with normal hemoglobin and serum iron, is a common, actionable, and frequently missed contributor to fatigue. Standard laboratory reference ranges for ferritin (typically $gt.eq 12$--15 ng/mL) are insufficiently sensitive for symptom-resolution purposes: most ME/CFS-experienced clinicians use a functional target of $gt.eq 50$ ng/mL for ferritin, consistent with evidence that symptoms persist in iron-deficient states below this level. Ferritin should be included in all ME/CFS workups; iron repletion to this target is low-risk and may provide meaningful symptom benefit in deficient patients.

=== Vitamin D (25-OH Vitamin D)

Vitamin D deficiency is highly prevalent in ME/CFS, exacerbated by activity limitations, indoor confinement, and sun avoidance. 25-OH vitamin D has immune-modulating effects mechanistically relevant to ME/CFS pathophysiology, including regulation of T-cell function and cytokine production. Standard thresholds apply: deficiency $lt$ 20 ng/mL, insufficiency 20--29 ng/mL. Correction of deficiency is recommended as standard of care.

#limitation(title: [Vitamin D Supplementation: No Consistent Symptom Improvement in ME/CFS])[
Despite the biological plausibility and high prevalence of deficiency, supplementation trials in ME/CFS have not demonstrated consistent improvement in core ME/CFS symptoms (fatigue, PEM, cognitive dysfunction) beyond correction of deficiency-related general health effects. Vitamin D correction is warranted for general health but should not be presented to patients as a primary ME/CFS treatment.
]

== Biomarker Validation and Standardization
<sec:biomarker-validation>

=== Replication Requirements

For a biomarker to be clinically useful:

    - Replication in independent cohorts
    - Consistent findings across laboratories
    - Validation in diverse patient populations
    - Demonstration of clinical utility (changing management)

=== Standardization Efforts

Ongoing initiatives:

    - *Case definition harmonization*: Using consistent diagnostic criteria
    - *Biobanking*: Standardized sample collection and storage
    - *Assay standardization*: Consistent methodologies across sites
    - *Data sharing*: Collaborative analysis of combined datasets

=== Path to Clinical Implementation

Steps required:

    - Discovery phase (identifying candidate biomarkers)
    - Verification (confirming in independent samples)
    - Validation (large-scale, multi-site studies)
    - Clinical utility studies (demonstrating impact on outcomes)
    - Regulatory approval (for diagnostic claims)
    - Implementation (clinical adoption, insurance coverage)

== Summary: Current State and Future Directions
<sec:biomarker-summary>

The NIH deep phenotyping study represents a paradigm for rigorous biomarker research in ME/CFS @walitt2024deep. Key findings with biomarker potential include:

    - *CSF catecholamine metabolites*: Reduced HVA and MHPG correlating with symptoms; invasive but highly specific

    - *B cell population shifts*: Increased naïve, decreased switched memory B cells suggesting chronic antigenic stimulation; accessible via routine blood draw

    - *Autonomic parameters*: Reduced HRV and baroreflex sensitivity; non-invasive, widely available technology

    - *CPET abnormalities*: Reduced VO#sub[2]peak, chronotropic incompetence, and especially Day 2 decline; objective, physiologically meaningful

    - *Neuroimaging findings*: TPJ dysfunction and motor cortex hyperactivity; research tool with potential clinical application

    - *Sex-specific patterns*: Different immune markers in men vs. women; critical for biomarker interpretation

The path forward requires:

    - Large-scale replication of NIH study findings
    - Development of practical, accessible biomarker panels
    - Validation across diverse patient populations
    - Integration of multiple biomarker types for improved accuracy
    - Demonstration of clinical utility for diagnosis and treatment selection

The era of “no objective findings” in ME/CFS is ending. The challenge now is translating research discoveries into clinically useful tools that improve patient care.
