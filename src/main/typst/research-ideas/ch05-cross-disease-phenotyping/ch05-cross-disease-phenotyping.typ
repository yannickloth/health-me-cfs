#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Chapter 5: The ME/CFS–Long COVID Deep Phenotyping Contrast
// Type: Study Design
// =============================================================================

= The ME/CFS–Long COVID Deep Phenotyping Contrast Study
<ch:cross-disease-phenotyping>

#chapter-abstract[
ME/CFS and Long COVID share substantial pathophysiology, a fact discussed throughout the main paper but never systematically exploited for mechanistic dissection. A single study comparing ME/CFS, Long COVID, and healthy controls on an identical deep phenotyping panel would generate a per-parameter differential table worth more than a hundred single-disease studies. The parameters where the two diseases differ identify ME/CFS-specific mechanisms; the parameters where they are identical identify shared downstream effectors.
]

== Motivation

The ME/CFS–Long COVID overlap is documented in Ch36 (Translational Findings) and cross-referenced throughout the paper. But every existing comparison is post-hoc — comparing results from different studies with different protocols, different cohorts, different assays, and different labs. This produces the same problem as any meta-analysis: heterogeneity in methodology is confounded with heterogeneity in disease biology.

A single study running the same deep phenotyping panel on all three groups eliminates methodological confounding. The resulting table — "X differs in ME/CFS but not Long COVID; Y differs in both; Z is identical" — is a mechanistic dissection tool of exceptional power.

== Study Design

=== Cohorts

1. ME/CFS (n = 50), meeting IOM 2015 criteria, stratified by severity (mild/moderate/severe), duration (< 3 years, 3–10 years, > 10 years), and trigger type (viral, non-viral, gradual onset).

2. Long COVID (n = 50), meeting WHO case definition, post-SARS-CoV-2 infection, stratified by duration (< 1 year, 1–2 years, > 2 years) and initial COVID severity (mild, moderate, severe/hospitalized).

3. Healthy controls (n = 50), age- and sex-matched to the combined disease cohort.

Inclusion: age 18–65, no current acute infection, no immunosuppressive therapy within 3 months, no known autoimmune disease other than in the context of ME/CFS or Long COVID.

=== Deep Phenotyping Panel

The panel is drawn directly from the 20 mechanism families (Ch17), selecting the highest-certainty marker for each family where assay availability permits.

*Energy metabolism.* CPET with gas exchange (VO2max, anaerobic threshold, VO2 at VT1); resting and post-exercise lactate; MRS for brain lactate; PBMC Seahorse assay (basal and maximal OCR, spare respiratory capacity, glycolytic rate).

*Redox.* Plasma glutathione (GSH/GSSG ratio); lipid peroxidation (8-isoprostane, MDA); protein carbonylation; 8-OHdG (oxidative DNA damage).

*Immune function.* NK cell cytotoxicity assay (K562 target, 4 effector:target ratios); flow cytometry panel: T cell subsets (CD4, CD8, naïve/memory/effector/exhausted), NK subsets, B cell subsets, monocyte subsets (classical/non-classical), dendritic cell frequency; plasma cytokine panel (27-plex).

*Autoimmunity.* GPCR autoantibody panel (β1, β2, M3, M4, α1); ANA with pattern; TRPM3 autoantibody; functional autoantibody assay (cardiomyocyte bioassay).

*Coagulation.* Microclot assay (fluorescence microscopy with amyloid-binding dyes); thromboelastography; D-dimer, fibrinogen.

*Vascular/endothelial.* Flow-mediated dilation; EndoPAT reactive hyperemia index; plasma VEGF, sICAM-1, sVCAM-1, endothelin-1.

*Autonomic.* Tilt table test with beat-to-beat blood pressure and HRV; 24h Holter for HRV time and frequency domain; quantitative sudomotor axon reflex test (QSART); skin biopsy for intraepidermal nerve fiber density (IENFD).

*Neuroendocrine.* Salivary cortisol awakening response and diurnal profile; thyroid panel (TSH, fT4, fT3, rT3); sex hormone panel (estradiol, testosterone, progesterone, SHBG); IGF-1.

*Neurological.* Brain MRI (T1, T2, FLAIR, DTI); resting-state fMRI; TSPO-PET (subset, n = 15 per group) for microglial activation; CSF (subset, n = 15 per group) for catecholamines, cytokines, neurofilament light chain, GFAP.

*Metabolomics.* Plasma and CSF metabolomics (LC-MS untargeted); targeted tryptophan/kynurenine pathway panel; NAD+ metabolome panel.

*Epigenetics.* PBMC DNA methylation array (EPIC 850K); telomere length (qPCR); histone modification ChIP-seq (subset).

*Gut.* Stool 16S rRNA sequencing; plasma LPS-binding protein; plasma zonulin; SCFA quantification.

*Proteostasis.* Plasma ATG13; serum HSP70; ubiquitinated protein quantification.

*Cell death/senescence.* Senescence-associated β-galactosidase in PBMCs; SASP cytokine panel; TUNEL assay for apoptosis.

*Purinergic.* Plasma ATP (rapid processing); CD73/CD39 expression in PBMCs by flow cytometry.

*Structural.* Near-infrared spectroscopy (NIRS) with repeated arterial occlusion for muscle oxidative capacity; muscle biopsy (subset) for mitochondrial structure (EM), fiber typing, capillary density.

=== Analysis Plan

*Primary analysis.* For each parameter, two-group comparisons (ME/CFS vs HC, Long COVID vs HC, ME/CFS vs Long COVID) with correction for multiple comparisons (Benjamini-Hochberg FDR).

*Differential matrix.* A 3-column table: Parameter | ME/CFS vs HC | Long COVID vs HC | ME/CFS vs LC. Each cell is ↑ (elevated), ↓ (reduced), or ns (not significant). The pattern of significant differences across columns reveals:

- *ME/CFS-specific.* Parameter abnormal in ME/CFS vs HC but not in Long COVID vs HC → mechanism specific to ME/CFS, not shared post-viral syndrome.
- *Long COVID-specific.* Parameter abnormal in Long COVID vs HC but not in ME/CFS → mechanism specific to SARS-CoV-2 pathophysiology.
- *Shared.* Both abnormal vs HC, not different from each other → shared downstream effector mechanism.
- *Discordant.* Both abnormal vs HC but in opposite directions → mechanistically divergent despite symptomatic similarity.

*Subgroup analyses.* ME/CFS viral-onset vs post-COVID ME/CFS (distinguishing trigger-specific from disease-specific); ME/CFS short vs long duration (distinguishing early amplifiers from late consequences); ME/CFS by severity; Long COVID by duration since infection.

*Network analysis.* Construct a correlation network of all parameters for each group. Identify modules and hub nodes. Compare network topology across groups to identify where the disease process reorganizes physiological coupling (systems that are normally coupled become decoupled, or vice versa).

=== The Differential Table as a Mechanistic Dissection Tool

The differential table answers questions that no single-disease study can:

- Is microclot formation a shared downstream consequence of both diseases (both abnormal, no difference) or an ME/CFS-specific phenomenon?
- Is NK cytotoxicity exhaustion MeViral vs post-COVID — or is it a shared post-viral signature that SARS-CoV-2 produces less of?
- Do the two diseases differ in which TCA cycle intermediates are depleted — suggesting different metabolic bottlenecks despite similar symptomatology?
- Does the tryptophan/kynurenine pathway diverge at different branch points, indicating different upstream immune signals driving the same metabolic shift?

== Expected Outputs

1. A publicly available deep phenotyping dataset of exceptional breadth, suitable for secondary analysis by any research group worldwide.

2. The definitive differential table of ME/CFS vs Long COVID, resolving the years of post-hoc comparisons.

3. Identification of ME/CFS-specific mechanisms that would be missed by studying Long COVID alone — and vice versa.

4. Mechanistic clustering: which parameters group together, and do the groups differ between diseases?

== Feasibility

*Cost.* High — the full panel requires a well-funded center with CPET, MRI, PET, metabolomics, and flow cytometry capabilities. Estimated USD 2-5 million for 150 participants with the full panel, substantially less for a reduced panel.

*Effort.* High — multi-disciplinary team required (exercise physiologist, immunologist, neurologist, radiologist, metabolomics specialist).

*Rationale for investment.* This single study replaces the need for dozens of separate studies comparing individual parameters between diseases. The per-parameter cost is low because all parameters are measured in the same participants, and the cross-referencing value is multiplicative, not additive.

*Priority parameters (reduced panel).* If budget is constrained, prioritize the highest-discriminating parameters: CPET, NK cytotoxicity, GPCR autoantibodies, tilt table + HRV, microclot assay, CSF catecholamines, metabolomics, and DNA methylation.

== Consequence

#key-point[
The ME/CFS–Long COVID deep phenotyping contrast is the highest-signal study design available that does not require developing any new assay or discovering any new mechanism. It exploits the natural experiment of two post-infectious syndromes with overlapping but non-identical pathophysiology to identify what is shared and what is distinct. The differential table it produces would be the single most informative dataset in the ME/CFS literature.
]
