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

=== Machine Learning Approaches to EBV-Based Diagnosis
<sec:ebv-ml-diagnosis>

Fonseca et al. (2024) applied a Super Learner ensemble algorithm to IgG antibody responses against 3,054 EBV peptide variants, identifying a 26-antibody classifier that distinguished infection-triggered ME/CFS patients from healthy controls with 100% accuracy in the training dataset and 90% in the test dataset @Fonseca2024EBVclassifier. However, the classifier failed to reach target accuracy (85%) when applied to all ME/CFS patients or to those with non-infectious or unknown disease triggers. Despite some EBV peptides showing sequence homology with human proteins (potential molecular mimicry), no significant correlation emerged between antibody importance in the classifier and cross-reactivity potential with host proteins.

The trigger-specificity of this classifier has two implications: diagnostically, it may prove useful as a confirmatory tool specifically for patients reporting infection-linked onset, supporting the clinical assessment of post-infectious ME/CFS. Mechanistically, it reinforces the subtyping paradigm---infection-triggered and non-infection-triggered ME/CFS appear immunologically distinct, and biomarker panels developed in one subgroup should not be assumed to generalise to the other.

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

A large intensive longitudinal study using this approach (Aitken et al.\ 2026, n=4244 Visible app users with Long COVID, ME/CFS, or other energy-limiting conditions) found that 60-second morning PPG assessments of HR, HRV (RMSSD scaled 0–100), and respiratory rate predicted same-day evening symptom reports @Aitken2026digitalHRV. Multilevel models incorporating both within-person biometric fluctuations and prior-day symptom history achieved AUC values of 0.82 for crash, 0.74 for fatigue, and 0.85 for brain fog using walk-forward cross-validation—higher than models using symptom history alone (AUC 0.78, 0.73, 0.83 respectively). Within-person predictors (daily deviations from individual baselines) were substantially stronger than between-person averages, underscoring the importance of personalized monitoring over population-level thresholds. The study was retrospective in design, analysing data already collected through a commercial app from self-identified participants; the proportion with clinician-confirmed ME/CFS is not reported.

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
If ccf-mtDNA reflects mitochondrial quality control status, treatment-induced changes in mitophagy should be traceable. Specific predictions: (a) mitophagy-inducing agents (urolithin A) should produce a transient ccf-mtDNA rise as accumulated damaged mitochondria are cleared, followed by normalisation; (b) T3 supplementation in the Low T3 subgroup should gradually raise ccf-mtDNA by restoring ERR$alpha$-mediated mitophagy coordination (Chapter @ch:energy-metabolism, Section @sec:thyroid-mito-regulation); (c) immunoadsorption or plasmapheresis removing pathogenic IgG should raise ccf-mtDNA if IgG-mediated mitochondrial fragmentation was driving the mitophagy block. These predictions are testable in small open-label trials using serial ccf-mtDNA measurement as a secondary endpoint. A well-designed definitive study would use a four-arm design (ME/CFS vs.\ Long COVID vs.\ anxiety disorder vs.\ healthy controls---the anxiety arm is essential because anxiety shows similarly low ccf-mtDNA, testing diagnostic specificity) and measure _both_ free ccf-mtDNA and exosome-associated mtDNA at rest and serially post-exercise to capture compartment-specific dynamics.

== Pain Registries and Databases as Biomarker Data Sources
<sec:pain-registries>

Pain is among the most prevalent symptoms in ME/CFS (80--94% of patients) yet remains one of the least studied areas for biomarker development. Several registries and databases now collect systematic pain data that could support biomarker discovery and pain phenotype stratification.

=== Multi-site Clinical Assessment of ME/CFS (MCAM)

The MCAM study, coordinated by the CDC, enrolled 595 ME/CFS patients and 328 healthy controls from 7 specialty clinics across the United States (2012--2020) @Fall2024COPCsMECFS. Instruments include the Brief Pain Inventory (BPI), PROMIS Pain Scales, CDC Symptom Inventory, SF-36 (bodily pain subscale), and full body maps. The MCAM dataset is the richest existing source of systematically collected ME/CFS pain data using validated instruments: 76.1% of ME/CFS participants had at least one Chronic Overlapping Pain Condition, compared to 17.4% of controls.

=== You + ME Registry

The Solve ME/CFS Initiative's You + ME Registry is a patient-powered research platform with over 4,200 participants (3,033 ME/CFS, 833 long COVID, 473 controls as of 2021), growing at approximately 72 new registrants per week @Ramiller2022YouMERegistry. The mobile app captures longitudinal symptom tracking on a 0--4 severity scale, including pain. The registry is designed to harmonise with other ME/CFS data collection efforts and enables researchers to access de-identified data for analysis.

=== UK ME/CFS Biobank

The UK ME/CFS Biobank at UCL/Royal Free Hospital holds over 600 donors (ME/CFS, MS, and healthy controls) with more than 30,000 blood aliquots linked to clinical phenotyping data, including pain measures @Lacerda2019prevalence. As Europe's first ME/CFS-specific biobank, it provides the infrastructure for correlating pain phenotypes with biological specimens.

=== UK Biobank

The UK Biobank contains population-level data from which researchers have defined high-quality ME/CFS cohorts. Linked pain questionnaire data and health records enable large-scale epidemiological analysis of pain patterns in ME/CFS at a scale impossible with dedicated research cohorts.

#open-question(title: [Can Existing Registries Be Harmonised for Pain Phenotype Subtyping?])[
The MCAM, You + ME Registry, UK ME/CFS Biobank, and UK Biobank all collect pain-related data, but using different instruments, severity scales, and time windows. A key research question is whether these datasets can be harmonised to create a pain phenotype dataset large enough for reliable subgroup identification. Minimum requirements would include: (1) mapping pain variables across registries to a common ontology; (2) testing whether independent registries identify the same cluster structure; and (3) sufficient sample size for interaction analyses (pain phenotype $times$ biomarker $times$ treatment response). Cross-registry harmonisation studies in other chronic pain conditions have demonstrated feasibility but required substantial methodological investment.
] <oq:registry-harmonisation-pain>

== Emerging Biomarker Candidates from Parallel Multi-Modal Studies (2025--2026)
<sec:emerging-biomarkers-convergence>

Multiple 2025--2026 studies have produced parallel evidence for biomarker candidates across immune, neurological, and vascular compartments. While none have yet achieved clinical validation, the methodological diversity of these studies is encouraging. It should be noted that these studies identify _different_ biological signals in _different_ cohorts using _different_ platforms---this is complementary multi-modal evidence, not convergence on a single mechanism. True convergence would require independent groups identifying the same biomarker abnormality with different methods. The historical failure rate of ME/CFS biomarkers (NK cytotoxicity, cytokine panels, various autoantibody signatures---all initially promising, none clinically validated) should temper expectations.

=== Neuroinflammation Imaging Biomarkers

Yu et al.\ (2026) demonstrated that the neuroinflammation imaging (NII) model applied to diffusion MRI can detect widespread white matter abnormalities in ME/CFS that conventional DTI misses @Yu2026diffusion-neuroinflammation. NII-HR (cerebral edema), NII-RF (cellular infiltration), and NII-FF (axonal reorganisation) metrics correlated with mental health, disability, and disease severity in 67 ME/CFS patients vs.\ 67 matched controls. The NII model requires only standard diffusion MRI sequences (no contrast agent, no special hardware), making it potentially translatable to clinical settings if validated in larger cohorts.

=== Complement-Based Subgroup Stratification

Maya et al.\ (2026) identified a complement pQTL-defined inflammatory subgroup in ME/CFS with a high C3/low Bb profile, validated against UK Biobank fatigue phenotypes @Maya2026complement-genetics. Complement protein levels (C3, C4, Bb, C3a, C5a) could serve as a stratification biomarker to identify patients who may benefit from complement-targeted interventions. The genetic basis of the finding (pQTLs) suggests this is a stable trait rather than a transient state.

=== Extracellular Vesicle miRNA Signatures

Seifert et al.\ (2026) identified hsa-let-7b-5p downregulation in EVs from post-COVID ME/CFS patients, correlating with fatigue, pain, and impaired physical functioning @Seifert2026extracellular-vesicles. EV-based biomarkers are advantageous because they reflect inter-cellular communication and may capture compartment-specific pathology. However, the small sample size (n=12 vs 15) and lack of replication limit current utility.

=== Longitudinal Exercise Proteomics

Germain, Hanson, and colleagues (2025) demonstrated that the _pattern_ of proteomic response to exercise---particularly persistent immune/metabolic/neuromuscular dysregulation during the recovery phase---distinguishes ME/CFS from sedentary controls @Germain2025plasma-proteome-exertion. The proteomic signature of PEM (suppressed T/B cell signaling, upregulated glycolysis, disrupted IL-17) captured at 24h post-exercise may serve as an objective PEM biomarker, which is critically needed for clinical trials.

#limitation(title: [Emerging Biomarkers Require Validation])[
None of the biomarker candidates above have been independently validated in external cohorts. The NII model, complement pQTL approach, and longitudinal exercise proteomics design are the most promising due to their methodological rigour and larger sample sizes, but all require replication before clinical application. The EV miRNA findings are discovery-phase only (certainty 0.30) and should be considered hypothesis-generating rather than diagnostic.
] <lim:emerging-biomarkers-validation>

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

*Practical challenge:* BH4 and CBF are not routine clinical measures. A simplified version using only ferritin + VO#sub[2]max + neurodivergent diagnosis could be implemented in primary care as a screening tool.

*Use case:* Identify high-risk individuals before infection (prevention) and stratify treatment intensity (lowest MRS = most aggressive metabolic support per @sec:severity-stratified-reserve-protocol).

#speculation(
  title: "Composite Metabolic Reserve Score for Risk Stratification",
  label: <spec:metabolic-reserve-score>,
  certainty: 0.20,
)[
  A composite score weighting ferritin, BH4 status, VO#sub[2]max, cerebral blood flow, and neurodivergent burden could predict ME/CFS risk and guide treatment stratification. Weight calibration requires the prospective study (@sec:prospective-metabolic-phenotyping). A simplified version (ferritin + VO#sub[2]max + neurodivergent diagnosis) could be piloted now using retrospective data. Concept is sound; weight calibration entirely untested. Not yet replicated.
]

=== Urinary Neopterin:Biopterin Ratio as Non-Invasive BH4 Screen
<subsec:neopterin-biopterin-screen>

Neopterin is produced when GTP cyclohydrolase I activity is diverted toward immune activation rather than BH4 synthesis. An elevated neopterin:biopterin ratio indicates both immune activation AND BH4 depletion --- both relevant to Architecture C.

*Practical advantages:* Non-invasive urine collection, can be done at home and mailed. HPLC measurement is standard and cheap (~\$30--50 per sample at specialty labs).

*Interpretation:* High ratio = high immune activation + low BH4 = low metabolic reserve = candidate for BH4 support (@subsec:sapropterin-bh4, @subsubsec:bh4-recycling-support).

#speculation(
  title: "Neopterin:Biopterin Ratio as Architecture C Screening Biomarker",
  label: <spec:neopterin-biopterin-screen>,
  certainty: 0.40,
)[
  If the BH4 convergent bottleneck hypothesis is correct (@spec:bh4-convergent-bottleneck), the urinary neopterin:biopterin ratio should be elevated across ALL predisposing conditions (ADHD, ASD, hEDS, migraine), not just post-infection. This would make it a universal Architecture C screening biomarker available at ~\$30--50 per test. Biochemistry well-established; whether this ratio predicts ME/CFS risk or treatment response is untested. Not yet replicated.
]

=== Pre-Infection Risk Screening Protocol for Neurodivergent Patients
<subsec:pre-infection-screening>

For patients with known neurodivergent diagnoses, a tiered screening protocol could identify those at highest metabolic reserve risk:

*Tier 1 (any primary care, ~\$100):* Ferritin (target $> 100$ ng/mL), CBC with differential, vitamin D (target $> 50$ ng/mL), CRP, ESR.

*Tier 2 (specialist, ~\$300):* Urinary neopterin:biopterin ratio, tilt table or NASA lean test (CBF proxy), serum zinc/copper/B12/folate, CPET if ambulatory (VO#sub[2]max, anaerobic threshold).

*Tier 3 (research only, ~\$2,000+):* GCH1 genotyping, FDG-PET (cerebral glucose metabolism), PBMC respirometry.

*Actionability:* Tier 1 is implementable today. Tier 2 requires specialist referral. Tier 3 is research-only.

#speculation(
  title: "Tiered Pre-Infection Screening for ME/CFS Risk in Neurodivergent Patients",
  label: <spec:pre-infection-screening>,
  certainty: 0.30,
)[
  A tiered screening approach could identify neurodivergent patients at highest metabolic reserve risk before viral illness, enabling preventive intervention (iron repletion, BH4 support, perfusion optimization). Tier 1 is available and cheap; Tier 2 requires specialist access; Tier 3 is research-only. Individual tests are validated; the composite screening approach and the prediction that it would reduce post-infectious ME/CFS incidence is unvalidated. Not yet replicated.
]
