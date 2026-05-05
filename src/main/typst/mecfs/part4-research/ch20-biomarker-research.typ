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

    - *Emerging large-scale validation panels*: The EpiSwitch CFS test (Myhill et al.\ 2025, _J Transl Med_) @Hunter2025 achieved 92% sensitivity and 98% specificity using a 200-marker 3D genomic profiling model in severe ME/CFS (discovery cohort performance, $n=54$; commercial platform, Oxford BioDynamics; no independent external validation published as of 2026 --- standard discovery-cohort overfitting caveats apply), and the BioQuest project (OMF, launched 2024) @BioQuest2024 aims to analyze approximately 1,000 samples across metabolomics, proteomics, and cytokines with subgrouping as a primary aim.

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

=== Machine Learning Approaches to EBV-Based Diagnosis
<sec:ebv-ml-diagnosis>

Fonseca et al. (2024) applied a Super Learner ensemble algorithm to IgG antibody responses against 3,054 EBV peptide variants, identifying a 26-antibody classifier that distinguished infection-triggered ME/CFS patients from healthy controls with 100% accuracy in the training dataset and 90% in the test dataset @Fonseca2024EBVclassifier. However, the classifier failed to reach target accuracy (85%) when applied to all ME/CFS patients or to those with non-infectious or unknown disease triggers. Despite some EBV peptides showing sequence homology with human proteins (potential molecular mimicry), no significant correlation emerged between antibody importance in the classifier and cross-reactivity potential with host proteins.

The trigger-specificity of this classifier has two implications: diagnostically, it may prove useful as a confirmatory tool specifically for patients reporting infection-linked onset, supporting the clinical assessment of post-infectious ME/CFS. Mechanistically, it reinforces the subtyping paradigm---infection-triggered and non-infection-triggered ME/CFS appear immunologically distinct, and biomarker panels developed in one subgroup should not be assumed to generalize to the other.

#limitation(title: [Small Sample; No Independent Validation])[
The Fonseca study used a single cohort without external validation. The 26-antibody panel has not been tested in an independent population, and the high training accuracy (100%) raises concern about overfitting despite the ensemble approach. EBV seropositivity is nearly universal in adults (>95%), so the classifier must distinguish _patterns_ of anti-EBV antibodies rather than simple presence/absence---a more nuanced signal that may not replicate across laboratories using different peptide arrays.
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

*CSF Proteomics in Post-Viral Neuroinflammation*
Temporal CSF proteomics from herpes simplex encephalitis (HSE) patients provides a prospective model for identifying biomarkers of post-viral neuroinflammation relevant to ME/CFS @Naas2023hse_proteome. Analysis of 890 CSF proteins in 48 HSE patients at three time points (days 0--9, 13--28, and 68+) revealed dynamic pathway activation: acute phase response, antimicrobial pattern recognition, and glycolysis/gluconeogenesis were strongly activated early and resolved by two weeks. Six proteins were significantly reduced in patients who developed anti-NMDAR autoantibodies: procathepsin H, heparin cofactor 2, complement factor I, protein AMBP, apolipoprotein A1, and polymeric immunoglobulin receptor.

Apolipoprotein A1 (ApoA1) is of particular interest as it has been independently associated with NMDAR encephalitis outside the HSE context @Naas2023hse_proteome. ApoA1 is the major protein component of high-density lipoprotein (HDL) and has known anti-inflammatory and neuroprotective functions; its reduction in CSF may indicate impaired neuroprotection or altered lipid metabolism in the CNS compartment. Neurofilament light chain (NFL), a marker of axonal damage, correlated with both impaired neurocognitive recovery and subsequent NMDAR autoantibody development in HSE patients (p=0.006) @Westman2021nfl_nmdar. Whether NFL or ApoA1 are similarly altered in ME/CFS CSF remains untested — this represents a high-priority gap given the documented neuroinflammation in ME/CFS (see Section @sec:cns).

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

=== Digital Physiological Biomarkers
<sec:digital-biomarkers>

Mobile health (mHealth) technologies enable continuous or daily physiological monitoring outside clinical settings, offering an alternative biomarker approach: tracking within-person temporal dynamics rather than relying solely on single-timepoint between-group differences.

A large intensive longitudinal study using this approach (Aitken et al.\ 2026, n=4244 Visible app users with Long COVID, ME/CFS, or other energy-limiting conditions) found that 60-second morning PPG assessments of HR, HRV (RMSSD scaled 0–100), and respiratory rate predicted same-day evening symptom reports @Aitken2026digitalHRV. Multilevel models incorporating both within-person biometric fluctuations and prior-day symptom history achieved AUC values of 0.82 for crash, 0.74 for fatigue, and 0.85 for brain fog using walk-forward cross-validation—higher than models using symptom history alone (AUC 0.78, 0.73, 0.83 respectively). Within-person predictors (daily deviations from individual baselines) were substantially stronger than between-person averages, underscoring the importance of personalized monitoring over population-level thresholds. The study was retrospective in design, analyzing data already collected through a commercial app from self-identified participants; the proportion with clinician-confirmed ME/CFS is not reported.

Potential implications for biomarker strategy (pending prospective validation) include:

    - *Accessibility*: Smartphone-based PPG requires no specialized equipment, which could enable broader deployment if clinical utility is confirmed
    - *Within-person design*: Each patient serves as their own control, sidestepping the between-person heterogeneity that limits single-timepoint biomarker studies
    - *Temporal prediction*: Morning biometrics predict evening symptoms within the same day, though whether this time window is sufficient for actionable crash prevention remains untested
    - *Incremental value*: Biometrics add statistically significant predictive power beyond symptom self-tracking alone, though the magnitude of improvement is modest (AUC improvement of 0.01–0.04 depending on outcome)
    - *Engagement burden*: Daily monitoring (morning PPG + evening symptom survey) requires sustained cognitive and motor capacity that severe and very severe patients may not have; the monitoring itself could trigger cognitive PEM
    - *No demonstrated prevention*: Predictive performance does not establish that acting on predictions reduces crash frequency or improves outcomes; this intervention link is untested

#limitation(title: [Digital Biomarker Validation Gaps])[
Current evidence derives from a single retrospective cohort of self-identified participants using a commercial app; the proportion with ME/CFS specifically (vs.\ Long COVID or other conditions) is not reported. The 60-second PPG protocol did not standardize posture, time since waking, or medication status—key pre-analytical variables for autonomic biomarkers. Prospective validation in clinician-confirmed ME/CFS cohorts with research-grade monitoring is needed. The predictive models have not been tested in new populations (only within-person temporal generalization was evaluated). The study population consisted of self-selected ambulatory app users; severe and very severe patients were effectively excluded. Whether real-time prediction translates to improved clinical outcomes (e.g., crash prevention through pacing guidance) remains undemonstrated. Importantly, a "low risk" prediction should not be interpreted as a safe window to exceed one's energy envelope, given that PEM can lag 24–48 hours beyond any same-day monitoring window @Aitken2026digitalHRV.
]

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

=== Circulating Cell-Free Mitochondrial DNA (ccf-mtDNA)
<sec:ccfmtdna-biomarker>

Circulating cell-free mitochondrial DNA has been reported as a possible _research_ biomarker in post-infectious fatigue states in two preliminary studies, with unexpected directionality. *Clinical status:* ccf-mtDNA measurement by qPCR is exclusively a research assay---no CLIA-certified commercial test, insurance billing code, or established reference range exists. The findings below are relevant to research design and mechanistic understanding, not to current clinical practice. While elevated ccf-mtDNA is an established marker of cell damage and adverse outcomes in acute SARS-CoV-2 infection, chronic Long COVID shows the opposite pattern.

Matits et al.\ @Matits2026cfmtDNA ($n = 228$; EPILOC population-based cohort) found reduced relative ccf-mtDNA in Long COVID patients ($n = 128$) compared to recovered controls ($n = 100$), with the reduction correlating with worse cognition. CRP was inversely associated with ccf-mtDNA levels but showed no independent association with cognition after controlling for ccf-mtDNA, suggesting mitochondrial dynamics are a more proximal correlate of cognitive dysfunction than systemic inflammation. Effect sizes were very small (partial $eta^2 lt.eq 0.02$) and significance was borderline after full covariate adjustment ($p = 0.089$; $p = 0.038$ after excluding high-CRP outliers). A prior study (Szögi et al.\ @Szogi2024cfmtDNA; $n = 5$) also found reduced ccf-mtDNA alongside mitochondrial ultrastructural abnormalities in Long COVID tissue biopsies.

#limitation(title: [ccf-mtDNA Biomarker Utility: Critical Confounds])[
Several factors limit the current utility of ccf-mtDNA as a diagnostic or monitoring biomarker: (1) physically active individuals have higher ccf-mtDNA---deconditioning may explain group differences independently of pathology; (2) anxiety disorders show similarly low ccf-mtDNA, reducing disease specificity; (3) the Matits et al.\ effect size is extremely small (partial $eta^2 = 0.01$--$0.02$), far below what would be needed for individual-level classification; (4) no ME/CFS-specific resting ccf-mtDNA data exist, precluding cross-disease comparison with identical methodology.
]

In ME/CFS, Tsilioni et al.\ @Tsilioni2022exosome found exosome-associated mtDNA elevated after exercise challenge---a different compartment and timing. Whether resting ccf-mtDNA differs between ME/CFS and Long COVID patients is unknown but represents a testable research question (see Section @sec:cross-disease for the cross-disease hypothesis).

#limitation(title: [ccf-mtDNA: Composite Signal from Multiple Sources])[
Blood-based ccf-mtDNA measurements inevitably capture mtDNA released from circulating immune cells, not only from distant tissues. In ME/CFS, T cells show severe mitochondrial dysfunction (failed metabolic reprogramming upon activation @Mandarano2020) and NK cells show impaired metabolic capacity. These dysfunctional immune cells may contribute less mtDNA to the circulating pool---either through reduced mitophagy or through reduced mitochondrial mass overall. Consequently, ccf-mtDNA may partially reflect immune cell mitochondrial health rather than (or in addition to) tissue-level mitophagy status. Treatments that restore immune cell mitochondrial function (e.g., NADH+CoQ10 supplementation) could raise ccf-mtDNA by restoring normal immune cell turnover, independently of any tissue-level mitophagy effect. This composite nature must be considered when interpreting ccf-mtDNA as a biomarker.
]

*ccf-mtDNA as a candidate treatment response biomarker.*
If ccf-mtDNA reflects mitochondrial quality control status, treatment-induced changes in mitophagy should be traceable. Specific predictions: (a) mitophagy-inducing agents (urolithin A) should produce a transient ccf-mtDNA rise as accumulated damaged mitochondria are cleared, followed by normalization; (b) T3 supplementation in the Low T3 subgroup should gradually raise ccf-mtDNA by restoring ERR$alpha$-mediated mitophagy coordination (Chapter @ch:energy-metabolism, Section @sec:thyroid-mito-regulation); (c) immunoadsorption or plasmapheresis removing pathogenic IgG should raise ccf-mtDNA if IgG-mediated mitochondrial fragmentation was driving the mitophagy block. These predictions are testable in small open-label trials using serial ccf-mtDNA measurement as a secondary endpoint. A well-designed definitive study would use a four-arm design (ME/CFS vs.\ Long COVID vs.\ anxiety disorder vs.\ healthy controls---the anxiety arm is essential because anxiety shows similarly low ccf-mtDNA, testing diagnostic specificity) and measure _both_ free ccf-mtDNA and exosome-associated mtDNA at rest and serially post-exercise to capture compartment-specific dynamics.

== Pain Registries and Databases as Biomarker Data Sources
<sec:pain-registries>

Pain is among the most prevalent symptoms in ME/CFS (80--94% of patients) yet remains one of the least studied areas for biomarker development. Several registries and databases now collect systematic pain data that could support biomarker discovery and pain phenotype stratification.

=== Multi-site Clinical Assessment of ME/CFS (MCAM)

The MCAM study, coordinated by the CDC, enrolled 595 ME/CFS patients and 328 healthy controls from 7 specialty clinics across the United States (2012--2020) @Fall2024COPCsMECFS. Instruments include the Brief Pain Inventory (BPI), PROMIS Pain Scales, CDC Symptom Inventory, SF-36 (bodily pain subscale), and full body maps. The MCAM dataset is the richest existing source of systematically collected ME/CFS pain data using validated instruments: 76.1% of ME/CFS participants had at least one Chronic Overlapping Pain Condition, compared to 17.4% of controls.

=== You + ME Registry

The Solve ME/CFS Initiative's You + ME Registry is a patient-powered research platform with over 4,200 participants (3,033 ME/CFS, 833 long COVID, 473 controls as of 2021), growing at approximately 72 new registrants per week @Ramiller2022YouMERegistry. The mobile app captures longitudinal symptom tracking on a 0--4 severity scale, including pain. The registry is designed to harmonize with other ME/CFS data collection efforts and enables researchers to access de-identified data for analysis.

=== UK ME/CFS Biobank

The UK ME/CFS Biobank at UCL/Royal Free Hospital holds over 600 donors (ME/CFS, MS, and healthy controls) with more than 30,000 blood aliquots linked to clinical phenotyping data, including pain measures @Lacerda2019prevalence. As Europe's first ME/CFS-specific biobank, it provides the infrastructure for correlating pain phenotypes with biological specimens.

=== UK Biobank

The UK Biobank contains population-level data from which researchers have defined high-quality ME/CFS cohorts. Linked pain questionnaire data and health records enable large-scale epidemiological analysis of pain patterns in ME/CFS at a scale impossible with dedicated research cohorts.

#open-question(title: [Can Existing Registries Be Harmonized for Pain Phenotype Subtyping?])[
The MCAM, You + ME Registry, UK ME/CFS Biobank, and UK Biobank all collect pain-related data, but using different instruments, severity scales, and time windows. A key research question is whether these datasets can be harmonized to create a pain phenotype dataset large enough for reliable subgroup identification. Minimum requirements would include: (1) mapping pain variables across registries to a common ontology; (2) testing whether independent registries identify the same cluster structure; and (3) sufficient sample size for interaction analyses (pain phenotype $times$ biomarker $times$ treatment response). Cross-registry harmonization studies in other chronic pain conditions have demonstrated feasibility but required substantial methodological investment.
] <oq:registry-harmonization-pain>

== Emerging Biomarker Candidates from Parallel Multi-Modal Studies (2025--2026)
<sec:emerging-biomarkers-convergence>

Multiple 2025--2026 studies have produced parallel evidence for biomarker candidates across immune, neurological, and vascular compartments. While none have yet achieved clinical validation, the methodological diversity of these studies is encouraging. These studies identify _different_ biological signals in _different_ cohorts using _different_ platforms---this is complementary multi-modal evidence, not convergence on a single mechanism. True convergence would require independent groups identifying the same biomarker abnormality with different methods. The historical failure rate of ME/CFS biomarkers (NK cytotoxicity, cytokine panels, various autoantibody signatures---all initially promising, none clinically validated) should temper expectations.

=== Neuroinflammation Imaging Biomarkers

Yu et al.\ (2026) demonstrated that the neuroinflammation imaging (NII) model applied to diffusion MRI can detect widespread white matter abnormalities in ME/CFS that conventional DTI misses @Yu2026diffusion-neuroinflammation. NII-HR (cerebral edema), NII-RF (cellular infiltration), and NII-FF (axonal reorganization) metrics correlated with mental health, disability, and disease severity in 67 ME/CFS patients vs.\ 67 matched controls. The NII model requires only standard diffusion MRI sequences (no contrast agent, no special hardware), making it potentially translatable to clinical settings if validated in larger cohorts.

=== Complement-Based Subgroup Stratification

Maya et al.\ (2026) identified a complement pQTL-defined inflammatory subgroup in ME/CFS with a high C3/low Bb profile, validated against UK Biobank fatigue phenotypes @Maya2026complement-genetics. Complement protein levels (C3, C4, Bb, C3a, C5a) could serve as a stratification biomarker to identify patients who may benefit from complement-targeted interventions. The genetic basis of the finding (pQTLs) suggests this is a stable trait rather than a transient state.

=== Extracellular Vesicle miRNA Signatures

Seifert et al.\ (2026) identified hsa-let-7b-5p downregulation in EVs from post-COVID ME/CFS patients, correlating with fatigue, pain, and impaired physical functioning @Seifert2026extracellular-vesicles. EV-based biomarkers are advantageous because they reflect inter-cellular communication and may capture compartment-specific pathology. However, the small sample size (n=12 vs 15) and lack of replication limit current utility.

=== Longitudinal Exercise Proteomics

Germain, Hanson, and colleagues (2025) demonstrated that the _pattern_ of proteomic response to exercise---particularly persistent immune/metabolic/neuromuscular dysregulation during the recovery phase---distinguishes ME/CFS from sedentary controls @Germain2025plasma-proteome-exertion. The proteomic signature of PEM (suppressed T/B cell signaling, upregulated glycolysis, disrupted IL-17) captured at 24h post-exercise may serve as an objective PEM biomarker, which is critically needed for clinical trials.

#limitation(title: [Emerging Biomarkers Require Validation])[
None of the biomarker candidates above have been independently validated in external cohorts. The NII model, complement pQTL approach, and longitudinal exercise proteomics design are the most promising due to their methodological rigor and larger sample sizes, but all require replication before clinical application. The EV miRNA findings are discovery-phase only (certainty 0.30) and should be considered hypothesis-generating rather than diagnostic.
] <lim:emerging-biomarkers-validation>

=== Epigenetic and miRNA Biomarker Candidates from the PTPRN2/miR-153-3p Axis
<sec:epigenetic-biomarkers-ptprn2>

A 2026 study by Chalder and Moreau introduces a multi-layer epigenetic biomarker framework for ME/CFS patient stratification @ChalderMoreau2026ptprn2. Three measurement modalities span distinct regulatory levels:

*PTPRN2 saliva methylation:* A hypomethylated CpG site in _PTPRN2_ (protein tyrosine phosphatase receptor type N2) survived multi-factor correction in 54 ME/CFS patients versus 21 sedentary controls and distinguished epigenetic subgroups. The saliva collection modality offers a critical practical advantage: samples can be self-collected at home by severely ill patients who cannot attend clinics @ChalderMoreau2026ptprn2.

*Circulating miR-153-3p:* Reduced blood miR-153-3p correlated with poorer delayed memory recognition in ME/CFS patients, providing a potential biomarker for the memory-specific cognitive symptom domain @ChalderMoreau2026ptprn2. miR-153-3p has independent support as a neurologically relevant miRNA in hippocampal memory, amyloid-beta regulation, and neuroprotection across multiple model systems @Stabile2024mir153memory @LahiriWang2025mir153AD.

*EpiSwitch 3D chromatin conformation:* Pshezhetskiy et al.\ (2025) applied a different epigenetic modality — 3D chromatin conformation — to ME/CFS patients (n=47) versus controls (n=61), achieving 92%/98% sensitivity/specificity in the discovery cohort @Pshezhetskiy2025episwitch. This convergent finding from an entirely different epigenetic measurement approach strengthens the case for biologically distinct patient subgroups.

#open-question(title: [Can Orthogonal Epigenetic Layers Combine for Higher Diagnostic Accuracy?])[
  Each of the three epigenetic modalities — promoter methylation, circulating miRNA, 3D chromatin architecture — captures a distinct regulatory layer. A composite epigenetic score combining all three should, in principle, achieve diagnostic accuracy exceeding any single measurement. Whether this triangulated approach outperforms the individual components in independent cohorts, and whether it stratifies patients in clinically actionable ways (i.e., predicts treatment response or disease course), remains to be tested. The practical challenge is that EpiSwitch uses a proprietary platform currently limited to research settings, while saliva methylation and miRNA can be measured with standard protocols.
] <oq:composite-epi-score>

#speculation(title: [Methylation-Based Subgrouping Predicts Differential Treatment Response])[
  If PTPRN2 hypomethylation reflects chronic sympathoadrenal overload as a primary biological substrate, the hypomethylated subgroup may respond preferentially to autonomic-targeted interventions (pyridostigmine, ivabradine, low-dose clonidine) while the methylation-normal subgroup responds preferentially to immune-targeted interventions (low-dose naltrexone, IVIG). This stratification hypothesis requires prospective validation but could transform treatment trial design by eliminating the dilution of response signal that occurs when heterogeneous patients are randomized without epigenetic stratification.

  (Certainty: 0.30 — mechanistically motivated but entirely untested; no clinical data link methylation status to treatment response in ME/CFS.)
] <spec:methylation-subgrouping-treatment>

#practical-warning(title: [Epigenetic Biomarkers Cannot Yet Support Clinical Decisions])[
  None of the epigenetic biomarker candidates described here (PTPRN2 methylation, miR-153-3p, EpiSwitch panel) have been independently replicated in external ME/CFS cohorts. The Chalder 2026 primary finding derives from n=54 patients using a cross-sectional design with saliva proxy. Reference ranges for clinical use do not exist. Pre-analytical variables (time of collection, saliva contamination, medication effects on methylation) are not established for this specific assay. These findings are research tools only — not diagnostic or prognostic biomarkers for clinical practice.
]

=== Repetitive Element RNA Biomarkers: HSAT2 Detection in Biofluids
<sec:hsat2-biomarkers>

Satellite 2 (HSAT2) RNA represents an emerging class of biomarkers based on repetitive element detection in serum and plasma, with validated methods from cancer research immediately applicable to ME/CFS.

*Validated detection methods.*

Two robust methods for HSAT2 quantification in biofluids have been published:

    - *TRAP-ddPCR*: Tandem repeat amplification by nuclease protection combined with droplet digital PCR achieves high-sensitivity detection of serum HSATII RNA @Seimiya2023HSATII. This method uses nuclease protection to preserve repetitive sequences followed by ddPCR quantification, achieving high sensitivity and specificity in cancer discrimination (AUC ≥0.90)
    - *Hybridization capture*: Biotinylated probe hybridization capture for plasma cfDNA HSAT2 @Yoruker2026HSAT2cfDNA enables size-selective detection of specific HSAT2 fragments (95 bp vs 114 bp), with fragment size distribution providing additional discrimination power

*Clinical validation status.*

HSAT2 detection has been validated in cancer cohorts (pancreatic cancer @Seimiya2023HSATII, colon cancer @Yoruker2026HSAT2cfDNA) but *not yet tested in ME/CFS or any fatigue-related condition*. The methods are transferable: TRAP-ddPCR requires standard qPCR equipment plus droplet generation system; hybridization capture requires standard next-generation sequencing library prep.

*Cross-disease retrotransposon activation patterns.*

Retrotransposon activation provides a comparative framework across disease categories. In cancer, HSAT2 serves as a validated biomarker with established detection methods. In post-viral syndromes, endogenous retrovirus (HERV) activation has been documented during and after SARS-CoV-2 infection @Grandi2023HERVcovid @Charvet2023HERV, with HERV-W ENV protein expression correlating with disease severity @Charvet2023HERV. However, *direct HSAT2 measurements in Long COVID, fibrotic diseases, or other post-viral conditions represent a critical research gap* (certainty: 0.45 — established for HERV, absent for HSAT2).

The pattern suggests retrotransposon activation may be a pan-viral or pan-inflammatory response rather than disease-specific. If HSAT2 in ME/CFS mirrors the HSAT2 patterns seen in cancer (high levels correlating with disease stage), this would support a generalized retrotransposon activation mechanism. If HSAT2 patterns in ME/CFS differ (e.g., elevated but stable rather than progressive), this would suggest disease-specific regulatory dynamics.

*Exosome-mediated retrotransposon transfer.*

Evdokimova et al. @Evdokimova2019HSAT2exosome demonstrated that HSAT2 and HERV-K RNAs are selectively packaged into extracellular vesicles and can be transferred to immune cells, inducing immunosuppression. Retroviral transcriptome dynamics in COVID-19 show similar stage-specific HERV activation patterns @Grandi2023HERVcovid, suggesting that EV-mediated retrotransposon transfer may be a shared pathogenic mechanism across viral and fatigue syndromes. The ME/CFS-specific question is whether HSAT2-containing EVs drive the documented immune exhaustion (MDSC expansion, T-cell dysfunction) in the same way they do in cancer.

#clinical-finding(title: [HSAT2 Detection Methods Established for ME/CFS Translation])[
HSAT2 satellite repeat RNA is detectable in serum and plasma using validated methods: (1) TRAP-ddPCR for serum HSATII RNA @Seimiya2023HSATII; (2) biotinylated probe hybridization capture for plasma cfDNA HSAT2 @Yoruker2026HSAT2cfDNA. These methods achieve high sensitivity in cancer discrimination (AUC ≥0.90) and are immediately applicable to ME/CFS cohort studies using standard laboratory equipment.

*Caveat:* Cambier et al. @Cambier2021HSAT2EVs found HSAT2 DNA in EV preparations but not in exosome-enriched immunocapture fractions, suggesting circulating HSAT2 may be protein-complexed rather than exosome-packaged. ME/CFS biomarker studies should distinguish exosome-encapsulated vs protein-complexed HSAT2 fractions.

(Certainty: 0.60 for detection method validation; 0.00 for ME/CFS application — entirely untested.)
] <cf:hsat2-detection-methods>

*Proposed ME/CFS biomarker validation study.*

    - *Phase 1 (Analytical validation)*: Establish reference ranges for serum HSAT2 RNA (TRAP-ddPCR) and plasma cfDNA HSAT2 (hybridization capture) in 100 healthy controls
    - *Phase 2 (Case-control)*: Measure HSAT2 levels in 200 ME/CFS patients (100 post-viral, 100 non-post-viral) vs 100 matched controls; assess diagnostic accuracy (sensitivity, specificity, AUC)
    - *Phase 3 (Subtype stratification)*: Correlate HSAT2 levels with (a) disease duration, (b) severity, (c) immune exhaustion biomarkers (MDSC, T-cell exhaustion), (d) viral serologies (EBV, HHV-6, SARS-CoV-2)
    - *Phase 4 (Longitudinal)*: Track HSAT2 levels over 12 months in 50 patients to assess stability and correlation with symptom fluctuation

*Connection to pathogenic mechanisms.*

If HSAT2 is elevated in ME/CFS, it may serve as both biomarker and pathogenic mediator. Chapter @ch:immune-dysfunction (Section @sec:tier2-research) describes the hypothesis that exosomal HSAT2 drives myeloid-derived suppressor cell expansion and T-cell exhaustion @Evdokimova2019HSAT2exosome. Chapter @ch:genetics-epigenetics (Section @sec:repetitive-element-derepression) describes epigenetic HSAT2 activation pathways via HSF1, CTCF loss, and DNA hypomethylation. Biomarker validation studies should therefore include mechanistic readouts (immune phenotyping, exosome HSAT2 cargo) to distinguish whether HSAT2 is merely elevated or actively driving pathology.

#open-question(title: [Is HSAT2 Elevation in ME/CFS Restricted to Specific Subtypes?])[
  Given the heterogeneous ME/CFS population, HSAT2 elevation may be restricted to (1) post-viral onset patients with documented HSF1 activation, (2) patients with accelerated senescence signatures (epigenetic clock acceleration, telomere shortening, immunosenescence), or (3) patients with specific immune exhaustion phenotypes (MDSC expansion, T-cell exhaustion). If HSAT2 is elevated only in a subset, unstratified case-control studies may miss the signal entirely. Biomarker validation should therefore pre-stratify by onset type, senescence markers, and immune exhaustion status.
] <oq:hsat2-subtype-restriction>

#recommendation(title: [Cross-Disease Diagnostic Specificity Framework: Multi-Modal Retrotransposon Panel])[

If HSAT2 is ME/CFS-specific, a multi-modal panel combining (a) HSAT2 RNA (serum), (b) HSAT2 cfDNA (plasma), (c) exosomal HSAT2/HERV-K, and (d) MDSC frequency would achieve higher diagnostic specificity than any single marker. If HSAT2 is pan-retrotransposon, the panel would need additional disease-specific modifiers (e.g., tissue-specific methylation signatures) to distinguish ME/CFS from cancer/Long COVID.

*Proposed panel components:*

- *Serum HSAT2 RNA*: TRAP-ddPCR quantification @Seimiya2023HSATII
- *Plasma cfDNA HSAT2*: Hybridization capture assay @Yoruker2026HSAT2cfDNA
- *Exosomal HSAT2/HERV-K*: EV isolation + ddPCR or RNA-seq
- *MDSC frequency*: CD33+HLA-DR−/lo immunophenotyping @Veglia2021MDSCDiversity
- *Optional modifiers*: Tissue-specific methylation markers, viral load quantification

*Falsifiable predictions:*

1. A four-marker panel (HSAT2 RNA, HSAT2 cfDNA, EV-HSAT2, MDSC frequency) will achieve AUC ≥0.85 for distinguishing ME/CFS from healthy controls, and AUC ≥0.75 for distinguishing ME/CFS from Long COVID. Individual markers will show lower AUC (HSAT2 RNA alone: 0.65–0.70).

2. The panel will correctly classify ≥90% of cancer patients as non-ME/CFS (HSAT2 progressive kinetics vs ME/CFS plateau pattern), providing a rule-out for malignancy.

3. EBV/CMV-onset ME/CFS patients will show higher combined panel scores than idiopathic-onset ME/CFS, supporting viral trigger hypothesis.

*Research design:* Cross-sectional study with n=200 (100 ME/CFS, 50 Long COVID, 50 cancer controls). Validate analytically, then test in independent replication cohort.

*Limitations:* Panel not yet validated; requires multiple assay platforms. Cross-disease specificity predictions based on kinetics data from cancer only (not ME/CFS/Long COVID). MDSC biomarker in ME/CFS not yet established. Not replicated.
] <pr:multi-modal-retrotransposon-panel>

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

=== TRPM3 Calcium Channel Panel as a Candidate Multi-Parameter Immune Biomarker
<sec:trpm3-biomarker-candidate>

Among emerging biomarker approaches, functional ion channel assays represent a mechanistic strategy: measuring the channel dysfunction (TRPM3 Ca#super[2+] influx), its intermediate consequence (intracellular calcium handling), and the functional outcome (NK cell cytotoxicity) in a single workflow.

The proposed panel (Section @sec:trpm3-biomarker-panel) measures: (a) TRPM3-dependent Ca#super[2+] flux amplitude after pregnenolone sulfate stimulation; (b) TRPM7-dependent Ca#super[2+] influx slope; (c) NK cytotoxicity against K562 targets. TRPM3 dysfunction has been validated across six studies including a multi-site validation (Sasso et al.\ 2026, n=78) @Sasso2026trpm3; TRPM7 dysfunction was reported in a smaller preliminary study (du Preez et al.\ 2023, n=9) @DuPreez2023trpm7. The panel's diagnostic performance as a composite has not been tested.

#open-question(title: [CRISPR-Based TRPM3 Reporter for High-Throughput Drug Discovery])[
The TRPM3 functional assay pipeline currently relies on patient-derived NK cells --- a supply-constrained, variable-quality biological resource requiring repeated blood draws from ME/CFS patients who may be severely ill. A stable, genetically controlled assay system would enable high-throughput drug screening.

*Proposed research tool:* A cell line engineered to co-express (a) TRPM3 promoter driving GFP (expression readout) and (b) TRPM3-GCaMP fusion protein (functional calcium flux readout). When applied to ME/CFS patient iPSC-derived NK cells differentiated in this reporter framework, the system could simultaneously measure TRPM3 protein expression (GFP fluorescence) and channel function (GCaMP Ca#super[2+] signal), enabling systematic compound library screening for TRPM3 function restoration.

*Why this matters for ME/CFS:* The known pharmacological tools for TRPM3 modulation (pregnenolone sulfate, CIM0216, nifedipine, naltrexone) were identified serendipitously, not through systematic screening. A reporter cell line could identify novel TRPM3 modulators from existing approved drug libraries (drug repurposing) --- a more efficient path to the clinic than de novo drug development.

_Research priority:_ Medium-high. This is not a near-term clinical biomarker, but a research infrastructure investment that could accelerate the entire TRPM3 therapeutics pipeline.
] <oq:ch20-crispr-trpm3-reporter>

== Architecture C Diagnostic Concepts
<sec:architecture-c-diagnostics>

The metabolic reserve hypothesis (@sec:architecture-c-metabolic-reserve) suggests several diagnostic approaches targeting reserve measurement and risk stratification. These range from immediately implementable screening panels to research-stage cellular assays.

=== Composite Metabolic Reserve Score (MRS)
<subsec:metabolic-reserve-score>

A clinically practical composite score estimating metabolic reserve from available measurements:

$ "MRS" = w_1 dot ("ferritin" / 100) + w_2 dot ("BH4" / "BH4"_"ref") + w_3 dot ("VO"_2 "max" / "VO"_2 "max"_"predicted") + w_4 dot ("CBF" / "CBF"_"ref") + w_5 dot (1 - "ND"_"burden") $

where $"ND"_"burden"$ = sum of binary indicators (ADHD = 0.15, ASD = 0.20, hEDS = 0.10, migraine = 0.05, GCH1 homozygous = 0.10).

*Practical challenge:* BH4 and CBF are not routine clinical measures. A simplified version using only ferritin + VO#sub[2]max + neurodivergent diagnosis could be implemented in primary care as a screening tool. However, the simplified version currently lacks calibrated weights, clinical cut-off values, and actionable interpretation guidance — a GP receiving a raw score would have no evidence-based threshold for deciding intervention intensity.

*Use case:* Identify high-risk individuals before infection (prevention) and stratify treatment intensity (lowest MRS = most aggressive metabolic support per @sec:severity-stratified-reserve-protocol).

#limitation(title: [MRS Formula Encodes the Hypothesis It Purports to Test])[
The $"ND"_"burden"$ term directly reduces the composite score for neurodivergent patients, encoding the Architecture C hypothesis (neurodivergence reduces metabolic reserve) into the diagnostic instrument. The MRS cannot fail to show lower values for neurodivergent patients because the formula guarantees it. Empirical validation requires calibrating $"ND"_"burden"$ weights against independently measured metabolic outcomes (PBMC spare respiratory capacity, CPET performance) rather than assuming them a priori. Until weights are empirically derived, the MRS is a hypothesis-structuring tool, not a validated diagnostic.
]

#speculation(title: [Composite Metabolic Reserve Score for Risk Stratification])[
  *Certainty: 0.20.* A composite score weighting ferritin, BH4 status, VO#sub[2]max, cerebral blood flow, and neurodivergent burden could predict ME/CFS risk and guide treatment stratification. Weight calibration requires the prospective study (@sec:prospective-metabolic-phenotyping). A simplified version (ferritin + VO#sub[2]max + neurodivergent diagnosis) could be piloted now using retrospective data. Concept is sound; weight calibration entirely untested. Not yet replicated.
] <spec:metabolic-reserve-score>

=== MtDNA Haplogroup as a Reserve Stratifier

The composite Metabolic Reserve Score above could be extended by incorporating mtDNA haplogroup as a biological anchor for the reserve estimate. Billing-Ross et al. @BillingRoss2016mtDNA demonstrated that haplogroups J, U, and H associate with distinct symptom severity profiles in established ME/CFS (certainty 0.45; see Section @spec:mtdna-haplogroup-symptoms in Chapter @sec:cross-disease). Haplogroup determination is a one-time, low-cost test (targeted mtDNA sequencing or consumer genomics panels such as 23andMe). Adding haplogroup as a reserve-modifier node — haplogroup H as lower reserve ceiling, haplogroup U as higher reserve floor — could improve individual-level risk stratification within the MRS framework.

#speculation(title: [Composite Reserve Index Including Haplogroup as a Trial Stratifier])[
*(Certainty: 0.40 — haplogroup effect on symptom severity documented in one cohort; use as trial stratifier is untested but operationally feasible.)*

Current ME/CFS trials suffer from phenotypic heterogeneity that reduces statistical power. A Composite Reserve Index combining: (a) Seahorse PBMC spare respiratory capacity (SRC, Watt/10#super[6] cells); (b) mtDNA haplogroup classification (H vs. U/J categorical); (c) post-exertional plasma lactate:pyruvate ratio at 24h post 6-minute walk test; and (d) mtDNA copy number per cell — could serve as a stratification variable in trial arms. Participants with Reserve Index below median could be assigned to reserve-enhancing interventions; those above median could be assigned to other mechanistic targets.

*Falsifiable prediction:* A Composite Reserve Index will explain ≥15% of variance in 2-day CPET day-2 VO#sub[2]max decrement in ME/CFS cohorts (n ≥ 100), exceeding the variance explained by any single component alone. *Limitations:* No study has assembled this composite; haplogroup H's reserve-ceiling effect is inferred from symptom associations, not directly from CPET data. The L/P ratio measure requires calibration across labs. Not yet replicated.
]

#open-question(title: [Post-Exertional Lactate:Pyruvate Ratio as a Haplogroup-Sensitive Coupling Proxy])[
The plasma lactate:pyruvate (L/P) ratio reflects the cytosolic NADH:NAD#super[+] ratio and rises when OXPHOS is bottlenecked upstream of Complex I/III. In ME/CFS, where pyruvate dehydrogenase suppression and elevated post-exertional lactate are documented, the delta-L/P ratio (measured before and 24h after submaximal exertion) may serve as a cheap, repeatable proxy for coupling efficiency.

If haplogroup H's tighter coupling produces less reserve against exertional ATP demand spikes, haplogroup H ME/CFS patients should show a greater post-exertional Δ(L/P) than haplogroup U/J patients at matched baseline severity. This would make Δ(L/P) both a coupling biomarker and a haplogroup-sensitive stratification tool.

*Testable prediction:* Δ(L/P ratio) at 24h post 6-minute walk test will be ≥ 2× higher in haplogroup H ME/CFS patients than haplogroup U/J patients at matched PEM severity scores. Failure to observe a haplogroup-stratified difference would suggest that coupling efficiency, even if haplogroup-influenced, does not translate into measurable plasma L/P differences at the whole-body level.
]

=== Urinary Neopterin:Biopterin Ratio as Non-Invasive BH4 Screen
<subsec:neopterin-biopterin-screen>

Neopterin is produced when GTP cyclohydrolase I activity is diverted toward immune activation rather than BH4 synthesis. An elevated neopterin:biopterin ratio indicates both immune activation AND BH4 depletion --- both relevant to Architecture C.

*Practical advantages:* Non-invasive urine collection, can be done at home and mailed. HPLC measurement is standard and cheap (~\$30--50 per sample at specialty labs).

*Current limitations:* No validated clinical reference range exists for ME/CFS populations; HPLC pteridine measurement has no CPT/INAMI billing code in most countries; and elevated neopterin also occurs in renal failure, HIV, and active malignancy, creating false-positive risk in patients with these comorbidities.

*Interpretation:* High ratio = high immune activation + low BH4 = low metabolic reserve = candidate for BH4 support (@subsec:sapropterin-bh4, @subsubsec:bh4-recycling-support).

#speculation(title: [Neopterin:Biopterin Ratio as Architecture C Screening Biomarker])[
  *Certainty: 0.40.* If the BH4 convergent bottleneck hypothesis is correct (@spec:bh4-convergent-bottleneck), the urinary neopterin:biopterin ratio should be elevated across ALL predisposing conditions (ADHD, ASD, hEDS, migraine), not just post-infection. This would make it a universal Architecture C screening biomarker available at ~\$30--50 per test. Biochemistry well-established; whether this ratio predicts ME/CFS risk or treatment response is untested. Not yet replicated.
] <spec:neopterin-biopterin-screen>

=== Pre-Infection Risk Screening Protocol for Neurodivergent Patients
<subsec:pre-infection-screening>

For patients with known neurodivergent diagnoses, a tiered screening protocol could identify those at highest metabolic reserve risk:

*Tier 1 (any primary care, ~\$100):* Ferritin (target $> 100$ ng/mL), CBC with differential, vitamin D (target $> 50$ ng/mL), CRP, ESR.

_Interpretation:_ Ferritin $< 100$ ng/mL → consider iron repletion per @subsec:iron-repletion-neurodivergent. Vitamin D $< 50$ ng/mL → supplement to target. Elevated CRP/ESR → investigate active inflammation before attributing to ME/CFS predisposition. Normal results do not exclude low metabolic reserve — Tier 1 captures only the most accessible markers.

*Tier 2 (specialist, ~\$300):* Urinary neopterin:biopterin ratio, tilt table or NASA lean test (CBF proxy) (note: tilt table testing is a cardiology/autonomic specialty procedure requiring referral in most health systems; the NASA lean test is a simpler office-based alternative), serum zinc/copper/B12/folate, CPET if ambulatory (VO#sub[2]max, anaerobic threshold).

*Tier 3 (research only, ~\$2,000+):* GCH1 genotyping, FDG-PET (cerebral glucose metabolism), PBMC respirometry.

*Actionability:* Tier 1 is implementable today. Tier 2 requires specialist referral. Tier 3 is research-only.

#speculation(title: [Tiered Pre-Infection Screening for ME/CFS Risk in Neurodivergent Patients])[
  *Certainty: 0.30.* A tiered screening approach could identify neurodivergent patients at highest metabolic reserve risk before viral illness, enabling preventive intervention (iron repletion, BH4 support, perfusion optimization). Tier 1 is available and cheap; Tier 2 requires specialist access; Tier 3 is research-only. Individual tests are validated; the composite screening approach and the prediction that it would reduce post-infectious ME/CFS incidence is unvalidated. Not yet replicated.
] <spec:pre-infection-screening>

== HSAT2 and HERV-K Exosomal Biomarkers
<sec:hsat2-biomarker>

The HSAT2/HERV-K exosomal hypothesis @spec:hsat2-exosome-mdsc @spec:hsat2-postviral-memory proposes a molecular mechanism for chronic ME/CFS immune suppression. If confirmed, it generates a specific set of measurable biomarkers that could stratify patients, guide treatment selection, and serve as pharmacodynamic endpoints in trials.

#speculation(title: [Plasma Exosomal HSAT2 + HERV-K Panel as a Patient Stratification Biomarker])[


*(Certainty: 0.65 for technical feasibility; 0.40 for clinical utility — the measurement is straightforward, the clinical relevance remains to be established.)*

HSAT2 and HERV-K envelope RNA can be measured in plasma extracellular vesicles by qRT-PCR or ddPCR following size-exclusion chromatography EV isolation. Evdokimova et al.\ @Evdokimova2019HSAT2exosome demonstrated this in Ewing sarcoma plasma at cohort scale (n=49). The protocol is transferable to ME/CFS research cohorts using existing biobanked plasma in principle, but adaptation requires several critical steps not yet published.

*Technical precedent — TRAP-ddPCR:* Kishikawa et al.\ established that circulating HSATII RNA is measurable in human serum using TRAP-ddPCR (Tandem Repeat Amplification by nuclease Protection followed by droplet digital PCR) @Kishikawa2016HSATIIserum. This method overcomes the heterogeneous amplicon problem inherent to repetitive sequence PCR by collecting homogeneous protected core fragments before quantification. In pancreatic cancer (n=20+20 training, n=10+10+10 validation), AUC was 0.91 (training) and 0.90 (validation); 5/7 early-stage cases were detected with normal CA19-9. Median HSATII in serum: 14.75 versus 3.17 copies/µL (cancer vs control). This is currently the only published validated method for circulating HSATII RNA quantification. The Evdokimova preprint extends this to plasma EV fractions in a cancer context; the TRAP-ddPCR method in ME/CFS plasma remains to be adapted.

*ddPCR vs qRT-PCR for low-abundance targets:* For EV-packaged satellite RNA at non-cancer concentrations (expected far below the 14.75 copies/µL seen in pancreatic cancer), ddPCR is the necessary platform: it provides absolute quantification without standard curves, has lower coefficient of variation than qRT-PCR, and can detect targets at fewer than 1 copy/µL where qRT-PCR gives variable signal. TRAP-ddPCR is thus the starting platform for any ME/CFS HSAT2 biomarker study.

*EV isolation approach:* Size exclusion chromatography (CL-6B Sepharose, 20 mL bed volume) outperforms differential ultracentrifugation for EV purity. For HSAT2 RNA (a long repeat transcript, not a small ncRNA), large EV fractions (greater than 200 nm microvesicles) may be more relevant than small EVs (smaller than 200 nm exosomes), but this size-dependence has not been characterized for HSAT2 cargo.

*Pre-analytical variables (critical for multi-site standardization):* Hemolysis is the dominant confounder for EV RNA — erythrocyte miRNAs contaminate the EV fraction and hemolysis degrades EV integrity; hemolysis must be assessed quantitatively (not visually) as an exclusion criterion. Two-step centrifugation (300×g then 2500×g) before snap-freezing is standard to remove platelet-derived EVs. Up to three freeze-thaw cycles have negligible impact; more than three compromise RNA yield; single-use aliquots at −80°C are the standard. Samples must be processed within 2–4 h of collection for EV-RNA integrity.

A two-marker panel (HSAT2 + HERV-K) with HERV-W as a negative-specificity control could:

    - Identify a "HSAT2-high" subgroup (~hypothetical 30% of patients) with an active exosomal immunosuppressive loop
    - Distinguish this subgroup from HSAT2-low patients who may have alternative immunopathology
    - Correlate with MDSC frequency and NK cytotoxicity as functional validation
    - Serve as a pharmacodynamic endpoint for NRTI @oq:nrti-hsat2 or methyl-donor @spec:methyl-donor-hsat2 interventions

*Falsifiable prediction:* A two-marker panel (HSAT2 + HERV-K env) measured by TRAP-ddPCR in plasma EV fractions will distinguish a subgroup of ME/CFS patients from matched healthy controls with AUROC > 0.75 in n ≥ 100 cohort. If no subgroup is detectable above control levels, the exosomal loop mechanism is not operative in ME/CFS at clinically relevant concentrations.

*Limitations:* No published protocol exists for EV-packaged HSAT2 RNA from human plasma in any non-cancer clinical population; adaptation from the Kishikawa serum method is required. All prediction values (AUC estimates, effect sizes, subgroup prevalences) are extrapolated from cancer; effect sizes in chronic post-viral settings may be far smaller — potentially below the detection limit of current methods. Standardization of EV isolation and RNA quantification varies across laboratories; multi-site studies require harmonized protocols including hemolysis grading, two-step centrifugation, aliquoting schema, and TRAP-ddPCR primer sets. Not replicated in any chronic disease context. The Evdokimova preprint EV-HSAT2 finding in Ewing sarcoma plasma remains unpublished in a peer-reviewed journal.
] <spec:hsat2-biomarker-panel>
#hypothesis(title: [CD33+HLA-DR− MDSC Frequency as a Functional Readout of the HSAT2 Loop])[


*(Certainty: 0.50 — MDSC flow cytometry is established in oncology; the question is whether the HSAT2-loop mechanism is operative in ME/CFS.)*

If the exosomal HSAT2 loop drives MDSC expansion in ME/CFS @hyp:mdsc-nk-bridge, then CD33+HLA-DR− cell frequency in peripheral blood is a direct readout of the loop's activity. This cell population:

    - Is routinely measurable by flow cytometry with standard panels
    - Is already used as a biomarker in oncology immunotherapy monitoring
    - Would be expected to correlate inversely with NK cytotoxicity — the most replicated ME/CFS finding
    - Could serve as an eligibility criterion and pharmacodynamic endpoint for HSAT2-targeted interventions

*Evidence gap — no ME/CFS MDSC data:* No published immunophenotyping study in ME/CFS has measured MDSCs. The 2024 NIH deep-phenotyping study (Walitt et al., Nature Communications), the 2024 Frontiers in Immunology ME/CFS biology review, and all other ME/CFS immune studies found through systematic search do not report MDSC quantification. Whether MDSC frequencies are elevated, normal, or reduced in ME/CFS is currently unknown. This is the most critical gap for this hypothesis.

*Proxy populations in order of relevance:* Post-COVID at 5 months (BeliakovanBethell 2022, already in bib): M-MDSC 0.9 ± 0.2% vs 0.2 ± 0.09% in uninfected controls — the most temporally analogous proxy, indicating persistent immunosuppression after viral resolution. Chronic HCV MDSC expansion (Goh 2016, already in bib): establishes the pattern in a chronic viral disease without spontaneous resolution. SLE patients: CD14+HLA-DR−/low M-MDSC significantly elevated versus controls, correlating with disease activity score SLEDAI (r = 0.547, p < 0.01) and iNOS-dependent suppression mechanism @Wang2019SLEMDSC. These proxies support the plausibility of persistent MDSC elevation in chronic post-viral immune states, but cross-disease extrapolation is uncertain.

*Healthy adult reference range:* M-MDSC (CD14+HLA-DR−/lo): approximately 0.2–0.5% of PBMCs in healthy adults. Reference ranges are sex- and age-stratified; younger and female individuals have slightly higher frequencies @Wang2019SLEMDSC.

*Standardization requirements for multi-site studies:* The current best standardization framework is the EuroFlow 2022 Salminen et al.\ protocol (Frontiers in Immunology 2022): a validated 11-color and 14-color panel for innate myeloid cells with a 4-hour processing window, EDTA and heparin both acceptable, inter-center CV ~5%, and age/sex-stratified reference ranges from 116 healthy donors. CD33 gating is the primary source of inter-lab variability; fluorescence-minus-one (FMO) controls or an internal monocyte-negative gate are required for HLA-DR threshold setting @Veglia2021MDSCDiversity. PBMC preparation by density gradient loses PMN-MDSCs (co-separated with red blood cells); whole blood assays are preferred when PMN-MDSC quantification is needed. Four-hour processing window from venipuncture is the standard.

*Falsifiable prediction:* CD33+HLA-DR− MDSC frequency will be elevated > 1.5× in ≥ 30% of ME/CFS patients versus matched healthy controls; MDSC frequency will correlate inversely with NK cytotoxicity in the same sample (Spearman ρ < −0.4). If MDSC frequency is normal in ME/CFS blood, the MDSC-bridge model is not operative.

*Limitations:* No ME/CFS MDSC data exists; the hypothesis is entirely proxy-based. MDSC quantification is technically sensitive to sample handling, processing time, and gating strategy — the 4-hour processing window must be maintained and FMO controls included in every run. Whether ME/CFS MDSCs carry HSAT2 RNA (as in Evdokimova's Ewing sarcoma EVs) would need to be confirmed with PrimeFlow RNA assay or equivalent in-situ method. The iNOS-dependent suppression mechanism documented in SLE @Wang2019SLEMDSC may differ from the arginase/ROS mechanism reported in post-COVID contexts @BeliakovanBethell2022MDSCPostCOVID — ME/CFS suppression mechanism is entirely unknown. Replication status: not replicated (no ME/CFS data).
] <hyp:mdsc-biomarker>

#speculation(title: [EuroFlow-Standardised CD33+HLA-DR− MDSC Panel as a Clinical-Grade ME/CFS Biomarker])[

*(Certainty: 0.30 — EuroFlow standardisation validated in oncology/haematology; zero ME/CFS MDSC data exist; transferred by analogy to post-COVID MDSC precedent; readiness contingent on first-in-ME/CFS measurement.)*

The EuroFlow Consortium published a validated 11-color and 14-color innate myeloid cell panel (Salminen et al., Frontiers in Immunology 2022) with established inter-centre coefficients of variation $lt.eq 15%$, age- and sex-stratified reference ranges from 116 healthy donors, a 4-hour processing window from venipuncture, and compatibility with both EDTA and heparin. The CD33+HLA-DR^− MDSC gate within this panel is the same gate documented to be elevated in post-COVID patients at 5 months @BeliakovanBethell2022MDSCPostCOVID and in cancer @Veglia2021MDSCDiversity. The standardization represents a solved technical problem — the remaining gap is the ME/CFS-specific measurement.

Once MDSC frequency is measured in a first ME/CFS cohort using the EuroFlow protocol, it can immediately be compared against: (a) the healthy donor reference ranges from the EuroFlow study itself; (b) the post-COVID MDSC data @BeliakovanBethell2022MDSCPostCOVID; (c) any concurrently measured NK cytotoxicity and plasma arginase-1 (functional validation). This makes the EuroFlow panel the highest-priority single-experiment gap closure in the HSAT2 biomarker pipeline — low additional methodological development required because the protocol is already validated.

The EuroFlow panel would serve three purposes: (1) establish whether MDSC elevation exists in ME/CFS; (2) stratify patients into MDSC-high and MDSC-low subgroups for targeted therapy trials; (3) serve as a pharmacodynamic endpoint for any MDSC-targeting intervention (tadalafil, citrulline, LDIL2).

*Falsifiable prediction:* EuroFlow-standardised MDSC frequency in a ME/CFS cohort ($n gt.eq 50$) will show inter-lab coefficient of variation $lt.eq 15%$ across $gt.eq 2$ sites (clinical-grade precision confirmed). MDSC frequency will be elevated > 1.5× above the EuroFlow healthy donor reference range in $gt.eq 30%$ of ME/CFS patients; this subgroup will show inverse correlation with NK cytotoxicity (Spearman $rho < -0.4$). If MDSC frequency falls within the healthy reference range in ME/CFS, the MDSC-bridge model is not operative.

*Limitations:* No ME/CFS MDSC data exists; this is the foundational measurement. PBMC density gradient preparation loses PMN-MDSCs; whole-blood processing is preferred for completeness. ME/CFS patients have variable blood draw tolerance; the 4-hour processing window may require bedside phlebotomy at specialist centers. Not replicated in ME/CFS (no data).

] <spec:euroflow-mdsc-mecfs>

#open-question(title: [Does Plasma Exosomal HSAT2 Level Track Clinical State Longitudinally?])[


Is exosomal HSAT2 a *state* marker (rises with PEM, crashes; falls during stable periods) or a *trait* marker (chronically elevated regardless of symptom fluctuation)? The answer would determine whether HSAT2 measurement should be used at a fixed timepoint or longitudinally.

If state marker: HSAT2 could serve as an objective PEM biomarker, complementing exercise proteomics @Germain2025plasma-proteome-exertion. Serial sampling around CPET (0 h, 24 h, 48 h, 72 h) would test the PEM amplification hypothesis @spec:hsat2-pem-amplification.

If trait marker: HSAT2 would be most useful for patient stratification and subgrouping, not as a dynamic readout.

Both scenarios are compatible with the exosomal loop model; the distinction has different implications for study design and clinical utility.
] <oq:hsat2-longitudinal>

#open-question(title: [EuroFlow MDSC + EV HSAT2 Dual-Readout Cross-Sectional Study: Proposed Design])[

The single highest-yield study to simultaneously validate the MDSC-bridge hypothesis and the EV HSAT2 biomarker is a dual-readout cross-sectional design. Proposed design: 100 ME/CFS (Canadian Consensus Criteria), 50 Long COVID (WHO 4-week definition with persistent fatigue and PEM), and 50 healthy matched controls. Primary measurements at a single blood draw: (1) EuroFlow-standardised CD33+HLA-DR^− MDSC frequency (EuroFlow Salminen 2022 protocol; see @spec:euroflow-mdsc-mecfs); (2) plasma EV HSAT2 load by TRAP-ddPCR adapted from @Kishikawa2016HSATIIserum; (3) NK cytotoxicity (K562 target, CD107a degranulation assay, 4 h turnaround); (4) plasma arginase-1 activity (colorimetric assay). Secondary: HERV-K env RNA in plasma EVs (confirmatory); EuroFlow Treg frequency (to assess Treg:MDSC ratio).

*What this study would establish:* (a) Whether MDSC elevation exists in ME/CFS (resolves the primary gap); (b) whether EV HSAT2 and MDSC co-cluster in a defined subgroup (proposed "HSAT2-high" subgroup, approximately 30% predicted); (c) how ME/CFS and Long COVID MDSC profiles compare (cross-condition prediction); (d) whether the four-marker panel (MDSC frequency, EV HSAT2, arginase-1, NK cytotoxicity) is clinically discriminatory. The study is achievable in a single-site haematology/immunology setting with a ME/CFS clinical cohort — no animal models, no CPET required.

*Falsifiable prediction:* MDSC frequency and EV HSAT2 load will co-cluster in $gt.eq 30%$ of ME/CFS patients but $< 5%$ of healthy controls (defining the "HSAT2-high" subgroup). MDSC frequency in Long COVID with PEM phenotype will not differ significantly from ME/CFS (within $plus.minus 20%$), but both will exceed Long COVID without PEM.

*Limitations:* EV HSAT2 TRAP-ddPCR from plasma is not commercially available; a research laboratory adapted from the Kishikawa serum cancer protocol is required. 200 participants is achievable for a well-networked ME/CFS research center but requires a biobank or active recruitment with 4-hour sample processing. Long COVID case definition heterogeneity (WHO vs. NICE vs. national criteria) requires pre-specification. Not yet attempted.

] <oq:hsat2-mdsc-cross-sectional>

#open-question(title: [Within-Patient PEM Challenge with Serial EV HSAT2 Timecourse: Proposed Design])[

The `spec:hsat2-pem-amplification` hypothesis predicts that plasma EV HSAT2 rises after exertion in ME/CFS and tracks PEM severity. A within-patient challenge design would directly test this. Proposed design: 20 mild-to-moderate ME/CFS patients (not severe or very severe — CPET is contraindicated in the latter); 2-day CPET (Day 1 and Day 2; the standard ME/CFS CPET paradigm); serial blood draws at 0 h (pre-CPET), 2 h (immediate post-CPET), 4 h, 24 h, 48 h, and 72 h. Each timepoint: TRAP-ddPCR for plasma EV HSAT2; EuroFlow MDSC frequency; NK cytotoxicity (if logistics permit). PEM symptom diary (DePaul Symptom Questionnaire) completed at each timepoint. Wearable HR monitor to document exertion intensity.

This study resolves the state-vs-trait question @oq:hsat2-longitudinal and tests the PEM amplification hypothesis @spec:hsat2-pem-amplification with the direct molecular readout. It also provides the temporal pattern needed to optimise the fold-change diagnostic @spec:hsat2-cpet-fold-change (which timepoint is most discriminatory?).

*Feasibility constraints:* CPET is contraindicated in severe/very-severe ME/CFS; recruitment must use validated severity stratification (FUNCAP or equivalent). The 6-return-visit protocol (0 h baseline + 5 post-CPET draws) requires patient transport management and possible home phlebotomy. A modified step-test (3-minute step-test at fixed HR percentage) could replace CPET for accessibility; however, the established 2-day CPET paradigm is more rigorous for standardisation.

*Falsifiable prediction:* EV HSAT2 will rise $gt.eq 2$-fold above baseline at 24–48 h, peaking at or near the subjective PEM nadir (established at 24–48 h in most ME/CFS patients). MDSC frequency will rise at 48–72 h (downstream of the EV HSAT2 peak). If HSAT2 does not rise above baseline at any timepoint, the PEM-amplification model is not supported.

*Limitations:* CPET causes harm in some ME/CFS patients even at sub-maximal intensity; stringent inclusion/exclusion criteria and post-CPET monitoring protocols are mandatory. Serial blood draws add logistical burden; EV HSAT2 TRAP-ddPCR requires immediate processing or validated freezing protocols (pre-analytical variable control). 20 patients provides limited statistical power; a 40-patient design would be preferred if feasibility permits. Not yet attempted.

] <oq:hsat2-pem-challenge>

#speculation(title: [Two-Marker Plasma Panel: EV HSAT2 + Arginase-1 Activity as Combined Diagnostic and Mechanistic Readout])[


*(Certainty: 0.35 — both markers individually supported; combined AUC advantage untested.)*

The HSAT2 exosomal loop proposes two measurable outputs: (1) EV-packaged HSAT2 RNA (the causal signal, upstream) and (2) MDSC arginase-1 activity (the functional effector, downstream). Measuring both simultaneously in the same plasma sample provides: an RNA-cargo signal (detectable by TRAP-ddPCR @Kishikawa2016HSATIIserum, adapted to ME/CFS plasma) and an enzyme-activity signal (arginase-1 ELISA or colorimetric assay, readily available). The two markers are mechanistically non-redundant — HSAT2 identifies the loop driver; arginase-1 confirms its immunosuppressive output.

A combined panel (EV HSAT2 + plasma arginase-1) would be: (a) more specific than either marker alone — patients with elevated HSAT2 but normal arginase-1 would not have functional MDSC activation; (b) useful as a pharmacodynamic readout for any intervention targeting the MDSC arm (PDE5 inhibitors, arginase inhibitors, citrulline) versus the epigenetic arm (NR, methyl donors); (c) potentially cheaper than HERV-K serology or comprehensive immune panel.

*Falsifiable prediction:* Combined panel AUC (EV HSAT2 + arginase-1) ≥ 0.85 for ME/CFS versus controls in n ≥ 50; each single marker AUC ≤ 0.75. The markers will be correlated (ρ > 0.4) within patients but not in controls.

*Limitations:* Plasma arginase-1 has multiple sources beyond MDSCs (liver, granulocytes, haemolysis); specificity for MDSC-derived arginase requires cell-type confirmation. TRAP-ddPCR for plasma EV HSAT2 requires method development beyond the serum protocol. Combined panel has not been tested in any chronic disease. Not replicated.
] <spec:hsat2-arginase-panel>

#speculation(title: [Post-PEM EV HSAT2 Fold-Change as a Superior Diagnostic vs Baseline Absolute Level])[


*(Certainty: 0.30 — fold-change diagnostic superiority is established for other dynamic biomarkers; HSAT2-specific data absent.)*

Baseline EV HSAT2 may be insufficient to discriminate ME/CFS from controls if the HSAT2 loop is only intermittently active. An exertional challenge (standardized CPET or step test) followed by serial EV HSAT2 measurement would test the PEM amplification hypothesis @spec:hsat2-pem-amplification and simultaneously generate a fold-change biomarker. The fold-change (24 h post-CPET / pre-CPET) would capture the dynamic responsiveness of the HSAT2 loop to physiological stress — expected elevated in ME/CFS and normal in healthy controls.

This parallels the 2-day CPET paradigm already used for ME/CFS diagnosis (second-day VO2 decline), extending it to a molecular readout. The fold-change approach also addresses inter-individual baseline variability in absolute HSAT2 levels.

*Falsifiable prediction:* The fold-change ratio (24 h post-CPET EV HSAT2 / pre-CPET EV HSAT2) will discriminate ME/CFS from controls with AUC ≥ 0.80; baseline absolute EV HSAT2 alone will produce AUC ≤ 0.70 in the same cohort. The fold-change will correlate with self-reported PEM severity at 48 h (ρ > 0.5).

*Limitations:* CPET is contraindicated in severe ME/CFS; a modified step-test protocol would be needed for broader applicability. Serial EV HSAT2 measurement adds protocol complexity and cost. Pre-analytical variable standardization (processing within 2–4 h of venipuncture) must be maintained across all timepoints. Not replicated.
] <spec:hsat2-cpet-fold-change>

#open-question(title: [ECM1 Autoantibodies as an ME/CFS Autoimmune Subgroup Stratification Marker?])[

ECM1 (extracellular matrix protein 1) autoantibodies are present in approximately 75% of vulvar lichen sclerosus cases and function as near-pathognomonic markers for LS @Oyama2022LSGeneticInterplay @Paganelli2025LSCytokines. ECM1 regulates basement membrane integrity, angiogenesis, and immune cell trafficking; its disruption sustains local Th1 inflammation through neoantigenic exposure. If lichen sclerosus co-occurs in ME/CFS patients at elevated frequency (see Section @sec:lichen-sclerosus-immune-terrain), ECM1 autoantibody status could serve as a stratification biomarker for the autoimmune-terrain subgroup in ME/CFS research cohorts.

*What would establish this:* A targeted add-on to any ME/CFS biobank study — ELISA-based ECM1 autoantibody measurement in existing serum — to assess: (a) whether ECM1-Ab prevalence in ME/CFS exceeds population background (approximately 2–5% in unselected adults); (b) whether ECM1-Ab positivity correlates with ME/CFS immune markers (anti-muscarinic antibodies, elevated Th1 cytokines, low NK cytotoxicity); (c) whether ECM1-Ab-positive ME/CFS patients show higher rates of co-diagnosed LS, Sjögren's, or SLE. This is minimal-cost translational research: no new patient recruitment required if biobanked serum exists.
] <oq:ecm1-autoantibody-mecfs>

#open-question(title: [Could ME/CFS Skin Biopsy Senescence Score Serve as a Tissue-Level Validation Biomarker for the HSAT2 Stromal Hypothesis?])[


If EV-delivered HSAT2 drives CENPA mislocalization → senescence in p53-intact fibroblasts @Jeffery2021CENPAp53 @spec:cenpa-senescence-stromal, then ME/CFS skin biopsies should show an elevated burden of senescent fibroblasts (p16^INK4a+, SA-β-gal+) compared to age-matched controls. A histological "senescence score" from a 4 mm punch biopsy would be: (a) measurable with standard laboratory staining; (b) independent of blood-based EV HSAT2 assays; (c) a tissue-level validation of the blood-based EV hypothesis.

Senescent fibroblast burden also correlates with the SASP — the downstream inflammatory output predicted by the CENPA-senescence chain. This links the skin biopsy readout to systemic inflammatory markers (IL-6, IL-8, MMP-3) that are elevated in ME/CFS.

*What would establish this:* A 4 mm skin biopsy study (20 ME/CFS, 20 age-matched controls) with p16^INK4a immunohistochemistry + SA-β-gal histochemistry + intracellular HSAT2 RNA-FISH. AUC ≥ 0.70 for p16+SA-β-gal+ fibroblast burden would support the stromal hypothesis. Co-localization of HSAT2-positive and p16+ cells in the same biopsy would provide the strongest evidence.
] <oq:skin-senescence-biopsy>

#open-question(title: [Skin Biopsy CENPA/p53/Senescence Study: Proposed Protocol for Tissue-Level HSAT2 Validation])[

The `spec:cenpa-senescence-stromal` hypothesis predicts that ME/CFS skin fibroblasts accumulate above a stochastic threshold of HSAT2 exposure and enter p53-dependent senescence @Jeffery2021CENPAp53. A formal 4 mm punch biopsy study would provide: (a) tissue-level confirmation of the blood-based EV HSAT2 hypothesis without requiring plasma HSAT2 measurement; (b) a histological endpoint measurable with standard laboratory staining available in any pathology department; (c) a readout distinct from blood-based immunophenotyping (MDSC flow, NK assay), enabling triangulation from a different compartment.

*Proposed study design:* 20 ME/CFS patients (CCC 2003 criteria; mild-to-moderate severity) and 20 age-and-sex-matched healthy controls; single 4 mm punch biopsy from non-sun-exposed skin (inner upper arm); primary endpoints: (1) p16^INK4a immunohistochemistry (senescent fibroblast fraction); (2) SA-β-galactosidase histochemistry (confirmatory senescence marker); (3) RNA-FISH for intracellular HSAT2 (presence and per-cell burden). Secondary: CENPA immunofluorescence (localization at centromeres vs. mis-localized foci); correlation of biopsy senescence score with concurrent plasma EV HSAT2 (if available from same visit).

*The three-way co-localization test:* the strongest evidence for the hypothesis would be fibroblasts that are (a) HSAT2 RNA-positive, (b) CENPA-mis-localized (non-centromeric foci), and (c) p16^INK4a-positive — all in the same cell. Single-cell co-localization would provide the most direct support for the causal chain.

*Feasibility:* 4 mm punch biopsy is a routine dermatological procedure (local anaesthetic; minimal scarring). p16 IHC and SA-β-gal are standard pathology assays. RNA-FISH for HSAT2 requires a research laboratory (not standard clinical pathology), but protocols exist adapted from cancer tissue studies. CENPA immunofluorescence on paraffin-fixed tissue requires validated antibodies (anti-CENPA rabbit monoclonal, e.g., Abcam ab13939). Total biopsy processing per participant: approximately 2–3 pathology working days.

*Falsifiable prediction:* ME/CFS skin biopsies will show $gt.eq 2$-fold elevation in p16+SA-β-gal+ fibroblasts versus age-matched controls; HSAT2 RNA-positive fibroblasts will correlate with p16+ burden within the ME/CFS group (Spearman $rho > 0.5$). If senescence score is normal in ME/CFS fibroblasts, the CENPA→senescence stromal pathway is not operative in accessible tissue.

*Limitations:* Skin biopsy may not reflect the tissue where the HSAT2 mechanism is most active (immune cells, muscle fibroblasts, or perivascular tissue). Senescent fibroblast accumulation increases with age independently of ME/CFS — age-matched controls are essential and a narrow age range ($plus.minus 5$ years) is preferred. CENPA FISH protocol for paraffin-embedded tissue requires optimization. Not yet attempted in ME/CFS.

] <oq:hsat2-skin-biopsy-protocol>

=== MtDNA Haplogroup as a Reserve Stratifier <subsec:haplogroup-reserve-stratifier>

#speculation(title: [Composite Reserve Index Including Haplogroup as Trial Stratifier])[

A single biomarker of mitochondrial reserve capacity captures only one dimension of a multi-component threshold. A composite reserve index — combining Seahorse spare respiratory capacity (SRC) from PBMCs, haplogroup assignment, post-exertional lactate-to-pyruvate (L/P) ratio, and mtDNA copy number — could explain substantially more variance in post-exertional functional decrement than any individual component alone @BillingRoss2016mtDNA @Venter2019mtDNA @Naviaux2014cdr.

*Mechanistic rationale:* SRC reflects functional reserve at the cellular level; haplogroup modifies reserve set-point via ETC coupling efficiency; post-exertional L/P ratio captures the metabolic shift under real-world demand; mtDNA copy number reflects compensatory biogenesis. Together these dimensions index different layers of the reserve hierarchy @Naviaux2016metabolomics.

*Falsifiable prediction:* A composite reserve index explains ≥15% of variance in 2-day CPET decrement (day-2 VO2max reduction), exceeding the predictive power of any single component in multivariate regression on n ≥ 100 ME/CFS patients with full battery available.

*Current status:* Components have been individually associated with ME/CFS severity but no composite index has been assembled or tested. Feasibility requires coordinated biospecimen collection with concurrent CPET. (Certainty: 0.25 — individual components have indirect support but have never been combined; correlated components could produce less predictive power than any individual component, not more. Composite index untested.)

*Limitations:* No existing ME/CFS dataset contains all four components simultaneously. Assembly requires prospective coordination; post-hoc retrospective combination of components measured in different studies is methodologically problematic. Haplogroup effect sizes are small in existing data.

] <spec:composite-reserve-index>

#open-question(title: [Post-Exertional L/P Ratio as Haplogroup-Sensitive Coupling Proxy])[

Lactate-to-pyruvate ratio at 24 hours post-exertion is a plasma-accessible proxy for mitochondrial coupling efficiency, reflecting the balance between glycolytic flux and oxidative phosphorylation under demand. If haplogroup modifies ETC coupling efficiency as proposed, haplogroups with tighter coupling (H) versus looser coupling (U, J, T) should show differentially elevated Δ(L/P) after standardized submaximal exertion @BillingRoss2016mtDNA.

*Proposed study:* Paired plasma L/P measurement before and 24 hours after 6-minute walk test (6MWT) in ME/CFS patients stratified by haplogroup (H vs U/J). Haplogroup H patients are predicted to show ≥2× greater Δ(L/P ratio) at matched disease severity and matched exertion dose.

*Feasibility:* 6MWT is standardized and low-risk compared to CPET; L/P ratio requires only plasma lactate and pyruvate (standard assays available at most hospital biochemistry laboratories). Haplogroup determination from a saliva sample or existing PBMC DNA. Not yet attempted in ME/CFS.

*Relevance:* If confirmed, post-exertional L/P ratio stratified by haplogroup would provide a low-cost, clinically accessible biomarker component for trial enrollment criteria and pacing guidance, requiring no specialized equipment beyond a standard biochemistry panel.

] <oq:lactate-pyruvate-haplogroup>

== ISR Biomarker Panel: Tissue-Specific Integrated Stress Response Readouts
<sec:isr-biomarker-panel>

The ISR/GCN2--ATF4 pathway is mechanistically implicated in ME/CFS pathophysiology (Chapter @ch:energy-metabolism, Section @sec:isr-context-dependence), but the tissue compartmentalisation hypothesis (@hyp:isr-compartmentalisation) predicts that blood-based ISR markers will be uninformative. This section describes ISR biomarkers ranging from clinically accessible serum analytes to research-stage tissue assays.

#hypothesis(title: [GDF15 as a Peripheral Readout of Tissue-Specific ISR Activation in ME/CFS])[
*Certainty: 0.55.*
GDF15 (growth differentiation factor 15) is a canonical ATF4 transcriptional target, synthesised primarily in metabolically stressed tissues (skeletal muscle, liver, brain) in response to ISR activation. Critically, GDF15 is a secreted protein that crosses tissue compartments into serum, making it a *peripheral readout of tissue-level ISR* --- directly addressing the biomarker failure predicted by compartmentalisation (@hyp:isr-compartmentalisation). GDF15 is robustly elevated in mitochondrial diseases, where ATF4 is constitutively active, and serves as the primary clinical biomarker for mitochondrial myopathy severity @CostaMattioli2020ISRReview.

Beyond its role as a biomarker, GDF15 is pharmacologically active: it signals through GFRAL receptors in the area postrema and nucleus tractus solitarius, producing nausea, anorexia, reduced activity, and fatigue --- symptoms that overlap extensively with ME/CFS. If GDF15 is chronically elevated in ME/CFS due to persistent ATF4 activity, it may directly contribute to symptoms rather than merely reflecting the underlying pathology.

*Testable prediction:* Serum GDF15 will be elevated in ME/CFS versus matched controls with effect size 0.4--0.7. GDF15 will rise post-CPET in ME/CFS but not in healthy controls, tracking ATF4-induction temporal kinetics. GDF15 will correlate with PEM frequency and severity scores. If GDF15 is not elevated at baseline or does not rise post-exertion → tissue ISR hypothesis weakened.

*Limitation:* GDF15 is non-specific: it rises with ageing, BMI, cardiovascular disease, and exercise generally. Absolute levels require age- and BMI-matching. The prediction is not diagnostic specificity but quantitative correlation with ISR activity in ME/CFS tissue. (Not yet replicated specifically for this ISR hypothesis.)
] <hyp:gdf15-isr-readout>

#speculation(title: [Serum GDF15/FGF21 Ratio as a Scalable ISR Activity Index for ME/CFS Trials])[
*Certainty: 0.45.*
FGF21 (fibroblast growth factor 21) is a second canonical ATF4 target secreted by liver and muscle, also responsive to ISR activation @Le2025ATF4Mitochondria. GDF15/FGF21 ratio may offer greater ISR-specificity than either alone: FGF21 also responds to ketogenic state, prolonged exercise, and fasting independently of ISR, while GDF15 is more specifically driven by mitochondrial stress. A GDF15/FGF21 ratio elevated above fasting-exercise baseline would implicate ISR specifically.

*Testable prediction:* GDF15/FGF21 ratio is elevated in ME/CFS patients versus sedentary controls after controlling for BMI, age, fasting state, and activity. The ratio rises and returns to (elevated) baseline in healthy controls within 24 hours post-CPET; ME/CFS patients show persistent ratio elevation at 48 hours. This ratio constitutes a pharmacodynamic endpoint for ISR-modulating interventions.

*Limitation:* GDF15/FGF21 ratio has not been validated as an ISR index in any human study. Ratio variability depends on metabolic state; standardised fasting conditions are required. (Not yet replicated.)
] <spec:gdf15-fgf21-ratio>

=== Tissue ISR Panel (Muscle Biopsy)
<sec:tissue-isr-panel>

#open-question(title: [Tissue ISR Panel as a Gold-Standard ME/CFS Biomarker])[
A panel of ISR activation markers in skeletal muscle biopsy constitutes the highest-confidence readout of ME/CFS ISR pathophysiology but is not scalable to clinical use. The panel includes: phospho-eIF2α (Ser51), ATF4 immunohistochemistry, WASF3 protein (validated in ME/CFS n=14 @wang2023wasf3), CHOP (DDIT3) mRNA, GADD34 (PPP1R15A) mRNA, ASNS mRNA, and FGF21/GDF15 mRNA. This panel would define an "ISR-positive" tissue signature distinguishing ME/CFS from deconditioning and depression.

*What this would establish:* Tissue ISR panel sensitivity/specificity; correlation between tissue signature and symptom severity; whether tissue signature predicts response to ISR-modulating interventions.

*Feasibility:* Muscle biopsy is invasive but clinically routine. Existing ME/CFS biopsy programs (NIH cohort, Davis/Stanford, UK Biobank) could add this panel. ChIP-seq requires ~50 mg tissue; IHC/Western are straightforward. (Certainty of diagnostic utility: 0.50.)
] <oq:tissue-isr-panel>

=== HHV-6 miR-aU14 Plasma Exosome Assay
<sec:mir-au14-exosome>

#open-question(title: [miR-aU14 in Plasma Exosomes as a Herpesvirus-Triggered ME/CFS Stratification Biomarker])[
HHV-6 miR-aU14 drives mitochondrial fragmentation via the miR-30--p53--DRP1 axis @Hennig2022HHV6miRNA and has been detected in ME/CFS post-mortem CNS tissue including dorsal root ganglia @Kasimir2022HHV6Tissue. If measurable in plasma extracellular vesicles, miR-aU14 would stratify patients into HHV-6-reactivating versus non-reactivating subgroups, predicting response to ISR-modulating interventions (@hyp:isr-bidirectional) and antiviral treatment (Chapter @ch:emerging-therapies).

*Technical approach:* EV isolation from plasma (size exclusion chromatography) followed by miRNA sequencing adapted from @Hennig2022HHV6miRNA. Key challenge: distinguishing virion-packaged from exosome-packaged miR-aU14 (latent vs active reactivation). (Certainty: 0.50 for technical feasibility; 0.35 for clinical utility.)
] <oq:mir-au14-exosome>

=== Functional PBMC ISR Challenge Assay
<sec:pbmc-isr-challenge>

#open-question(title: [PBMC Ex Vivo ISR Challenge for ISR Resolution Capacity Assessment])[
The Omdal null result @Omdal2026LCFatigueStress establishes that baseline PBMC ISR markers are uninformative. However, the *dynamics* of ISR resolution may still differ. A functional assay would expose PBMCs to acute ER stressor (thapsigargin 200 nM, 30 min, then washout) and measure phospho-eIF2α kinetics over 0--6 hours.

If GADD34/PP1 dephosphorylation is impaired in ME/CFS (@hyp:pem-biphasic-isr), PBMCs may show delayed resolution even with identical baselines --- converting a null static biomarker into a positive functional biomarker. Most valuable as a pharmacodynamic surrogate endpoint in ISR-modulating drug trials rather than as a diagnostic test. (Certainty of positive result: 0.40.)
] <oq:pbmc-isr-challenge>

=== Additional ISR Biomarker Candidates <sec:isr-additional-biomarkers>

#open-question(title: [tRNA Charging Assay for Subclinical Amino Acid Stress Detection])[
GCN2 activation requires uncharged (deacylated) tRNAs rather than direct amino acid sensing. A tRNA microarray-based charging assay could detect subclinical amino acid stress insufficiently severe to alter plasma amino acid levels but sufficient to activate GCN2-ISR. If ME/CFS patients have a subset-specific pattern of partially uncharged tRNAs (particularly isoleucyl-, leucyl-, or methionyl-tRNA) this would provide direct mechanistic evidence for GCN2-arm ISR activation independent of PERK.

*Feasibility:* Acylation-sensitive microarray platforms (using oxidation-dependent differential hybridization) have been developed for bacteria and yeast; mammalian adaptations exist in research contexts. Bulk tRNA charging state can be estimated from ribosome profiling (elongation stalling patterns) as an indirect approach. Neither has been applied to ME/CFS PBMCs or muscle. Certainty: 0.20 — technically feasible but requires significant adaptation for clinical use.
] <oq:trna-charging-isr>

#open-question(title: [PET Imaging with ISR-Specific Tracers for Non-Invasive CNS ISR Detection])[
All current ISR measurements in ME/CFS require tissue biopsy — muscle, skin, or CSF. CNS ISR is currently unmeasurable non-invasively. [^18^F]-labelled tracers targeting ATF4 transcriptional targets (ASNS, SLC7A11) or eIF2B activity are in early development in cancer imaging contexts. If validated for CNS use, these tracers would transform ME/CFS neuroimaging: brainstem ISR activation in NTS/locus coeruleus (postulated from HHV-6 tissue data @Kasimir2022HHV6Tissue) would be directly visualizable without biopsy.

*Research priority:* High mechanistic impact if tracer development succeeds; currently pre-clinical. PET-based measurement would also test the H10 hypothesis (@oq:isr-brainstem-autonomic) that brainstem ISR explains autonomic dysfunction. Certainty: 0.30 (dependent on tracer development; 5–10 year horizon).
] <oq:pet-isr-tracers>

#open-question(title: [Skin Biopsy Combined Panel: IENFD + ATF4 IHC + Mast Cell Tryptase])[
Skin biopsy for intraepidermal nerve fibre density (IENFD) is already in clinical use for small-fibre neuropathy (SFN) diagnosis in ME/CFS. DRG sensory neurons projecting to skin are a likely ISR-affected compartment (@spec:isr-drg-sfn if validated). A combined three-marker skin biopsy — (a) IENFD (SFN quantification), (b) ATF4 immunohistochemistry in dermal fibroblasts and perivascular cells, (c) mast cell tryptase density — would provide a multi-mechanism tissue readout from a single 3mm punch biopsy.

*Advantages:* Minimally invasive; skin is accessible; existing SFN biopsy infrastructure can be extended. ATF4 IHC protocols are established in cancer pathology. Mast cell quantification provides the MCAS overlap readout simultaneously.

*What would be needed:* ATF4 antibody validation in normal human skin fibroblasts; reference range development in healthy controls; correlation study with muscle biopsy ISR panel to establish skin as a surrogate tissue. Certainty: 0.40 — technically feasible extension of existing protocols; correlation with muscle ISR unknown.
] <oq:skin-isr-biopsy>

#open-question(title: [ATF4 Expression in Skin Mast Cells as an MCAS-Subgroup ISR Biomarker])[
In ME/CFS patients with concurrent MCAS (~25% of the population @Rohrhofer2025mecfsmast), skin mast cells represent an accessible tissue compartment for measuring ISR activity at the immune--stromal interface. The PERK--eIF2α--ATF4 axis is functional in mast cells @Wang2017SHP2MastCellPERK, and mast cell UPR is constitutively active due to the secretory burden of granule-rich mast cell biology @Wilhelm2017MCLUPRProteotoxic. If MCAS-pattern chronic degranulation amplifies PERK activation (via cumulative ER calcium depletion @Soboloff2002ERCalciumMastCell), ATF4 should be elevated in mast cells in ME/CFS+MCAS patients compared to ME/CFS-only controls, providing a tissue-level readout of the MCAS--ISR loop (@spec:mcas-isr-crosstalk).

*What this would test:* The skin biopsy three-marker panel already proposed (@oq:skin-isr-biopsy) includes mast cell tryptase density. Extending it with mast cell-specific ATF4 IHC (co-staining tryptase+ cells for ATF4) would add the ISR readout within the same biopsy at minimal additional cost.

*Predicted result:* In ME/CFS+MCAS patients, tryptase+ mast cells will show higher ATF4 nuclear localisation compared to ME/CFS-only patients and healthy controls. If no MCAS-dependent ATF4 difference is observed → MCAS--ISR crosstalk hypothesis not supported.

*Limitation:* ATF4 antibody validation in normal dermal mast cells is required before this assay is interpretable. Skin mast cell ISR may not reflect muscle or CNS ISR given different kinase activation patterns. Certainty: 0.20 — mechanistic rationale present; no direct pilot data in ME/CFS skin mast cells.
] <oq:mast-cell-atf4-biopsy>
