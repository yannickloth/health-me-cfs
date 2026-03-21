#import "../shared/environments.typ": *

= Gastrointestinal and Microbiome Dysfunction
<ch:gut-microbiome>

Gastrointestinal symptoms affect the majority of ME/CFS patients, with 50–90% reporting irritable bowel syndrome (IBS)-like symptoms. The gut microbiome—the complex ecosystem of bacteria, archaea, fungi, and viruses inhabiting the intestinal tract—has emerged as a key player in ME/CFS pathophysiology, with bidirectional connections to immune function, metabolism, and the central nervous system.

GI dysmotility is one component of the “Septad” framework of frequently co-occurring conditions in ME/CFS (Section @sec:septad). This chapter examines microbiome alterations, intestinal permeability, motility disorders, and their connections to systemic symptoms.

== Gut Microbiome Alterations
<sec:microbiome>

=== Dysbiosis Patterns

Multiple studies have documented consistent patterns of gut microbiome alterations in ME/CFS patients @Giloteaux2016, though no single “ME/CFS signature” has been established.

#achievement(title: [Reduced Microbiome Diversity in ME/CFS])[
Giloteaux et al. @Giloteaux2016 performed 16S rRNA sequencing on stool samples from 48 ME/CFS patients and 39 healthy controls, finding:

    - Significantly *reduced bacterial diversity* in ME/CFS specimens
    - Reduction in relative abundance and diversity of *Firmicutes* phylum
    - Increased pro-inflammatory species, decreased anti-inflammatory species
    - Machine learning classification achieved 82.93% accuracy distinguishing ME/CFS from controls

This foundational study established that dysbiosis is a reproducible feature of ME/CFS (prospective case-control, n=87, High certainty).
] <ach:microbiome-diversity>

#warning-env(title: [Replication Status: Partially Replicated])[
The Giloteaux et al.\ (2016) finding of reduced bacterial diversity has been directionally confirmed in subsequent studies, but IBS co-morbidity—present in 50–90% of ME/CFS patients—was not controlled in the original study. Nagy-Szakal et al. @NagySzakal2017 demonstrated that IBS status is the strongest driver of microbiome composition differences (see Warning @warn:ibs-confound). Studies not controlling for IBS may overestimate or misattribute microbiome changes to ME/CFS itself. The 82.93% classification accuracy has not been independently validated.
]

*Specific Bacterial Taxa Alterations.*

A 2024 systematic review @MicrobiomeSystematicReview2024 of 11 studies (553 ME/CFS patients, 480 controls) identified consistent patterns:

*Decreased (health-promoting bacteria):*

    - _Faecalibacterium prausnitzii_—major butyrate producer, inversely correlated with fatigue severity
    - _Eubacterium rectale_—butyrate producer
    - _Roseburia_ species—short-chain fatty acid producers
    - Lachnospiraceae family overall
    - Firmicutes phylum (contains most butyrate producers)

*Increased (pro-inflammatory bacteria):*

    - _Enterocloster bolteae_ (formerly _Clostridium bolteae_)—associated with fatigue in multiple sclerosis and autoimmune diseases
    - _Ruminococcus gnavus_—associated with inflammatory bowel disease
    - _Bacteroides_ genus
    - Bacteroidetes phylum overall

#warning-env(title: [IBS Co-Morbidity as Confounding Factor])[
Nagy-Szakal et al. @NagySzakal2017 demonstrated that IBS co-morbidity is the strongest driver of bacterial composition differences in ME/CFS. When analyzing 50 ME/CFS patients with and without IBS:

    - IBS status explained more variance than ME/CFS diagnosis alone
    - Integrating metagenomic and metabolomic data improved ME/CFS classification (AUC=0.836)
    - Studies not controlling for IBS may overestimate or misattribute microbiome changes

Given 50–90% IBS prevalence in ME/CFS, careful phenotyping is essential for research interpretation.
] <warn:ibs-confound>

Recent studies reinforce the microbiome–ME/CFS link.  A 2025
_Scientific Reports_ study confirmed significant compositional
differences (reduced _F.\ prausnitzii_ and _Bifidobacterium_,
enriched _Clostridium_) in CFS versus
controls @GutMicrobialComposition2025
(Appendix @app:research-registry,
Section @sec:registry-gut-composition).  Most notably, an AI platform
integrating stool, blood, and routine lab data achieved 90% diagnostic
accuracy in 249 individuals, the highest reported for any ME/CFS biomarker
panel @JAXmicrobiome2025
(Section @sec:registry-jax-microbiome).  Both studies await independent
blinded multi-site replication.

=== Functional Capacity Changes

Beyond taxonomic alterations, ME/CFS patients show impaired microbiome _function_—the metabolic activities bacteria perform.

#achievement(title: [Deficient Butyrate-Producing Capacity])[
Guo et al. @ButyrateDeficiency2023 performed multi-omic analysis (metagenomics, metabolomics, qPCR) on 106 ME/CFS cases and 91 controls, demonstrating:

    - Reduced capacity for *butyrate synthesis* confirmed across all methodologies
    - _F. prausnitzii_ deficiency correlated with fatigue severity
    - Bacterial network disturbances affecting butyrate-producing community
    - Fecal short-chain fatty acid levels reduced

Butyrate is the primary energy source for colonocytes and has anti-inflammatory, barrier-protective, and neuromodulatory functions. Its deficiency may contribute to intestinal permeability and systemic inflammation (multi-center study, n=197, High certainty).
] <ach:butyrate-deficiency>

#warning-env(title: [Replication Status: Partially Replicated])[
The butyrate deficiency finding (Guo et al.\ 2023, n=197) is the largest study to date and confirmed across multiple methodologies within the study. However, dietary intake—the primary determinant of short-chain fatty acid production—was not controlled. Fiber intake differences between cases and controls could confound butyrate measurements. Earlier smaller studies reported consistent direction of effect but from overlapping research networks.
]

=== Multi-Omic Integration: Beyond Taxonomic Profiling
<sec:multi-omic-microbiome>

Traditional 16S rRNA sequencing identifies _which bacteria_ are present but cannot determine _what they are doing_. This distinction matters: two patients with identical bacterial communities may produce entirely different metabolite profiles depending on gene expression, substrate availability, and inter-species interactions. Early ME/CFS microbiome studies relied exclusively on taxonomic profiling and achieved moderate classification accuracy (e.g., 82.93% in Giloteaux et al. @Giloteaux2016). Nagy-Szakal et al. @NagySzakal2017 combined fecal metagenomic and plasma metabolomic profiling, achieving in-sample classification AUC=0.893 with an 8-species bacterial model (cross-validated AUC=0.745). Crucially, their analysis revealed that IBS co-morbidity—not ME/CFS diagnosis—was the dominant driver of bacterial compositional differences, underscoring why metabolomic data are needed to disentangle ME/CFS-specific signatures from IBS confounding.

The most comprehensive multi-omic analysis to date, by Xiong et al. @Xiong2023multiomics, combined shotgun metagenomics with plasma metabolomics in 149 ME/CFS patients (74 short-term, 75 long-term) and 79 healthy controls. Multi-omic integration achieved AUC=0.90 for ME/CFS classification, substantially outperforming species relative abundance alone (AUC=0.73) or metagenomic gene profiles alone (AUC=0.73). The plasma metabolome alone achieved AUC=0.82, already superior to taxonomic profiling. Key discriminating metabolites included sphingomyelins, diacylglycerols, ceramides, and reduced butyrate-related compounds—a metabolic fingerprint invisible to 16S sequencing.

Critically, Xiong et al.\ also revealed a temporal dissociation between dysbiosis and metabolic dysfunction. Short-term ME/CFS patients ($<$4 years) showed pronounced microbial dysbiosis with relatively preserved metabolic profiles, while long-term patients ($>$10 years) had largely resolved microbial dysbiosis but _worsened_ metabolic aberrations and more severe clinical symptoms. This finding suggests that early dysbiosis may initiate metabolic disruptions that become self-sustaining even after partial microbiome normalization—and that metabolomic profiling captures disease progression features that taxonomic surveys miss entirely.

#warning-env(title: [Replication Status: Not Yet Replicated])[
The Xiong et al.\ (2023) multi-omic integration findings come from a single center (Jackson Laboratory/Bateman Horne Center), though with a large, well-characterized cohort. The temporal dissociation between dysbiosis and metabolic dysfunction is a novel observation that requires independent confirmation. The superior classification performance of multi-omics (AUC=0.90) has not been validated in external cohorts. Several ongoing studies aim to replicate and extend these findings; see Appendix @app:research-registry, Sections @sec:registry-biomapai and @sec:registry-nsu-probiotics.
]

*Tryptophan Metabolism Alterations.*

The gut microbiome significantly modulates tryptophan availability, with gut enterochromaffin cells producing $>$90% of the body's serotonin. ME/CFS patients show disrupted tryptophan pathways @Kavyani2022kynurenine @Abujrais2024tryptophan:

    - Reduced circulating serotonin and kynurenine affecting neurotransmission @Simonato2021tryptophan—notably, these changes appeared independent of cytokine levels, suggesting tryptophan dysregulation may be a primary feature rather than secondary to inflammation
    - Altered kynurenine pathway metabolites—lower 3-hydroxykynurenine and 3-hydroxyanthranilic acid, with elevated kynurenine/3HK ratios @Abujrais2024tryptophan
    - Kynurenine pathway hyperactivation may deplete NAD#super[+] via PARP activation, contributing to energy deficits @Dehhaghi2022kynurenine @Dehhaghi2022AD
    - Disrupted indole derivative production (aryl hydrocarbon receptor ligands)

*IDO2-Mediated Tryptophan Diversion.*

Post-infectious immune activation may further deplete tryptophan availability through upregulation of indoleamine 2,3-dioxygenase 2 (IDO2), which diverts tryptophan into the kynurenine pathway. Two lines of evidence support this mechanism in post-COVID patients: Guo et al.\ found persistently elevated IDO2 expression in peripheral blood mononuclear cells, associated with reduced intracellular tryptophan and impaired mitochondrial function @Guo2023kynurenine; Rus et al.\ independently confirmed kynurenine pathway activation with reduced serotonin synthesis and elevated neurotoxic metabolites @Rus2025. Wirth and Scheibenbogen#footnote[Currently available as a preprint; not yet peer-reviewed.] proposed that this IDO2-driven tryptophan diversion—simultaneously depleting serotonin and generating neurotoxic kynurenine derivatives—may link post-infectious immune activation to neurocognitive symptoms @WirthScheibenbogen2025Neurotransmitter. Whether this mechanism also impairs gut–brain signaling via reduced enterochromaffin serotonin (see Section @sec:gut-brain) remains an untested extension of their framework.

=== Gut-Brain Axis
<sec:gut-brain>

The gut-brain axis comprises bidirectional communication between the intestinal microbiome and central nervous system through four major pathways:

    - *Neural pathway*: Vagus nerve (primary) and spinal afferents
    - *Immune pathway*: Cytokine signaling, gut-associated lymphoid tissue (GALT)
    - *Hormonal pathway*: Neurotransmitters produced by or modulated by microbiota (serotonin, GABA, dopamine precursors)
    - *Metabolic pathway*: Short-chain fatty acids, tryptophan metabolites, bile acids

*Vagal Nerve Signaling.*

The vagus nerve connects the gut microbiome directly to brainstem nuclei controlling autonomic function, inflammation, and mood. Proposed mechanisms in ME/CFS:

    - Viral infections may damage vagal afferents, impairing gut-brain communication
    - Dysbiosis alters vagal signaling patterns
    - Reduced vagal tone (common in ME/CFS) impairs anti-inflammatory cholinergic pathway
    - Bidirectional dysfunction is evident: brain inflammation degrades gut function while gut dysfunction worsens neurological symptoms. The temporal and causal relationships remain unresolved. Longitudinal studies are needed to determine which comes first or whether both result from a common upstream cause. This bidirectional gut-brain interaction is one of several such cycles in ME/CFS, as discussed in Section @sec:unifying-mechanisms of Chapter @ch:integrative-models.

*Enterochromaffin Cell–Vagal Serotonergic Pathway.*

A specific mechanism linking gut dysbiosis to vagal impairment involves the enterochromaffin cell–vagal signaling pathway. Three established findings motivate this hypothesis:

    - *Neuropod cell–vagal synapses*: Kaelberer et al.\ demonstrated that enteroendocrine “neuropod cells” form direct synaptic connections with vagal afferent neurons, using glutamate for rapid gut-to-brain signaling @Kaelberer2018.
    - *Serotonin–vagal activation*: Enterochromaffin cells release serotonin that activates vagal afferents via 5-HT#sub[3] receptors @Barton2023 @Barton2025, linking gut serotonin availability to vagal tone.
    - *Butyrate–serotonin link*: Butyrate enhances serotonin production in enterochromaffin cells @Barton2025, and ME/CFS patients show deficient butyrate-producing bacteria (Achievement @ach:butyrate-deficiency).

Combining these observations leads to a hypothesis: butyrate deficiency in ME/CFS may reduce enterochromaffin serotonin release, which could in turn diminish vagal afferent signaling. However, no study has directly measured enterochromaffin serotonin output in ME/CFS patients, so this chain remains inferential. Wirth and Scheibenbogen's broader framework of neurotransmitter dysregulation in post-infectious illness @WirthScheibenbogen2025Neurotransmitter provides theoretical support, but the specific gut–vagal link proposed here extends beyond their analysis.

#open-question(title: [Gut Serotonin–Vagal–Cardiovascular Link])[
Does gut dysbiosis-mediated reduction in enterochromaffin serotonin release impair vagal afferent signaling sufficiently to reduce efferent vagal tone to the heart and cardiovascular system? If confirmed, this gut–serotonin–vagal–cardiovascular chain would represent a concrete mechanism by which microbiome alterations directly contribute to orthostatic intolerance and autonomic dysfunction in ME/CFS (see Chapter @ch:cardiovascular).
] <oq:gut-serotonin-vagal>

*Microbial Neurotransmitter Production.*

Intestinal bacteria synthesize or modulate multiple neuroactive compounds:

    - *Serotonin*: $>$90% of body's serotonin produced in gut; peripheral serotonin depletion has been reported in ME/CFS patients @Simonato2021tryptophan, while mouse models suggest central serotonergic hyperactivity may also occur @Lee2024serotonin—raising the possibility of compartmentalized dysregulation, though cross-species validation is needed
    - *GABA*: Produced by _Lactobacillus_ and _Bifidobacterium_ species
    - *Dopamine precursors*: Generated by intestinal bacteria
    - *Short-chain fatty acids*: Cross blood-brain barrier, modulate microglial function

=== Intestinal Permeability
<sec:leaky-gut>

Intestinal permeability (“leaky gut”) refers to impaired barrier function allowing bacterial products to enter systemic circulation.

#achievement(title: [Evidence of Bacterial Translocation in ME/CFS])[
A 2023 study @GutPermeability2023 measured intestinal permeability markers in ME/CFS patients compared to fibromyalgia patients and healthy controls:

    - Significantly *elevated zonulin-1 (ZO-1)* in ME/CFS versus controls
    - Elevated *lipopolysaccharide (LPS)* and soluble CD14 (sCD14)
    - *67% of ME/CFS patients* showed increased IgA against LPS
    - *40% showed increased IgM against LPS* (versus 0% in controls)
    - IgA levels correlated with illness severity

This provides direct evidence of intestinal barrier dysfunction and bacterial product translocation in ME/CFS (case-control, High certainty).
] <ach:bacterial-translocation>

#warning-env(title: [Replication Status: Partially Replicated])[
The bacterial translocation finding (2023 study) is consistent with earlier publications by Maes and colleagues showing elevated LPS and immune activation markers. However, the research groups overlap substantially, limiting the independence of replication. Additionally, the study measured zonulin using a commercial ELISA kit; recent methodological reviews have raised concerns about zonulin assay specificity, as some kits may cross-react with complement C3 @GutPermeability2023. Independent replication with validated permeability assays (e.g., lactulose/mannitol ratio) would strengthen these findings.
]

*Severity Stratification: Critical Knowledge Gap.*

While baseline gut barrier dysfunction has been established in ME/CFS populations @GutPermeability2023, a critical question remains unanswered: *Do severe/bedbound patients exhibit higher baseline permeability markers than mild/moderate patients?*

The Maes et al.\ study @GutPermeability2023 did not stratify participants by disease severity, leaving uncertainty about whether zonulin, LPS, and sCD14 elevations correlate with functional impairment. This gap is significant because severity-dependent gut barrier dysfunction would suggest distinct pathophysiological mechanisms and treatment priorities for different patient subgroups.

#hypothesis(title: [Severity-Dependent Baseline Gut Permeability])[
*Certainty: 0.50.* The individual supporting observations (CBF reduction by severity, cytokine-severity correlations, reduced cortisol in severe patients, POTS comorbidity) are moderately well-established, but their _integration_ into a unified severity-stratified permeability model has not been directly tested. Certainty is set at 0.50 rather than the originally proposed 0.65 to reflect this untested integration.

Severe ME/CFS patients likely exhibit _higher_ baseline permeability markers than mild/moderate patients, mediated by four convergent mechanisms:

    - *Chronic splanchnic dysregulation*: Severe patients demonstrate exaggerated vascular dysregulation during minimal stress. van Campen et al. @VanCampen2020SeverityCPET documented 27% reduction in cerebral blood flow during 20-degree head-up tilt in severe ME/CFS patients, compared to 7% in healthy controls. Given that splanchnic vessels receive lower circulatory priority than cerebral vessels during sympathetic activation, severe patients likely experience chronic low-grade splanchnic hypoperfusion during routine activities (postural changes, cognitive work, meals), leading to sustained gut barrier stress rather than episodic exercise-induced spikes.

    - *Cytokine-mediated barrier disruption*: Montoya et al. @Montoya2017 established that 17 cytokines correlate linearly with ME/CFS disease severity, 13 of which are proinflammatory. Several of these—particularly IL-1$beta$, IL-6, and IFN-$gamma$—are known to disrupt tight junction proteins through direct effects on occludin and ZO-1 expression @Montoya2017. In severe patients with sustained cytokine elevation, this creates a potential _bidirectional cycle_: cytokines disrupt tight junctions $arrow.r$ LPS translocation increases $arrow.r$ TLR4 activation amplifies cytokine production $arrow.r$ further barrier compromise. This self-sustaining loop may explain why disease severity tends to increase over time in some patients.

    - *Impaired barrier repair capacity*: A comprehensive biomarker examination of severely ill (housebound) ME/CFS patients @Komaroff2021severe revealed significantly lower morning salivary cortisol (median 0.20 mcg/dL vs.\ 0.45 mcg/dL in controls, p=0.002) and reduced serum albumin. Cortisol is essential for tight junction protein expression and barrier maintenance; albumin reflects protein nutritional status necessary for epithelial cell regeneration. Severe patients' reduced capacity for barrier repair may allow wheat-induced or hypoperfusion-induced permeability to persist longer than in ambulatory patients.

    - *POTS comorbidity and splanchnic pooling*: Approximately 45% of severely ill ME/CFS patients exhibit orthostatic intolerance @Komaroff2021severe, suggesting substantial overlap with postural orthostatic tachycardia syndrome (POTS). In POTS, the splanchnic vascular bed—which contains up to 30% of total blood volume—exhibits excessive abdominal blood pooling even in supine and resting positions. This chronic pooling can paradoxically reduce effective splanchnic perfusion during activity, as blood accumulates in distended vessels rather than perfusing capillary beds. For severe ME/CFS patients with POTS features, baseline gut hypoperfusion may be a chronic condition rather than an activity-triggered event.

] <hyp:severity-gut-permeability>

#speculation(title: [Chronic vs.\ Episodic Permeability Models])[
We propose the *Severity-Dependent Barrier Dysfunction Model* to describe the transition from episodic exercise-triggered permeability in mild/moderate patients to chronic sustained barrier compromise in severe/bedbound ME/CFS. Based on converging lines of evidence, this model distinguishes two distinct patterns:

*Mild-Moderate Pattern (Episodic):*

    - Baseline zonulin/LPS mildly elevated or normal between exertions
    - Acute permeability spikes triggered by intentional exercise (walking, cycling)
    - Splanchnic hypoperfusion occurs during discrete activity bouts
    - LPS translocation causes post-exercise inflammatory surges (PEM)
    - Recovery periods allow partial barrier restoration
    - Wheat elimination prevents exercise-induced permeability amplification

*Severe-Bedbound Pattern (Chronic Sustained):*

    - Baseline zonulin/LPS chronically elevated (new homeostatic set point)
    - Minimal activities (cognitive work, postural changes, meals) cause micro-exacerbations
    - Chronic low-grade splanchnic hypoperfusion from baseline autonomic dysfunction
    - Low cortisol and nutritional deficits prevent overnight barrier repair
    - Cytokine-barrier bidirectional cycle becomes self-sustaining
    - Wheat elimination may reduce symptom “noise floor” rather than preventing acute PEM

*Testable Predictions:*

    - Plasma zonulin and LPS will stratify by severity: mild $<$ moderate $<$ severe
    - I-FABP (intestinal injury marker) will be chronically elevated in severe patients at rest, not just post-exercise
    - LPS fluctuations in severe patients will correlate with minimal daily activities (30-minute cognitive tasks, postural changes) measurable at 2–4 hour post-activity intervals
    - Wheat elimination in severe patients will show gradual baseline LPS reduction over 12+ weeks, rather than acute post-exercise LPS prevention seen in ambulatory patients

*Treatment Implications:*
This model suggests wheat elimination may benefit severe/bedbound patients _without requiring exercise testing_, as chronic baseline permeability—not exercise-induced spikes—may be the primary driver of sustained endotoxemia. However, response patterns may differ: ambulatory patients may experience acute PEM reduction, while severe patients may notice gradual quality-of-life improvements within severe functional limitations.
] <spec:chronic-episodic-barrier>

==== Clinical Vignettes: Contrasting Barrier Patterns.

To illustrate the distinction between episodic and chronic barrier dysfunction patterns proposed by the Severity-Dependent Barrier Dysfunction Model, consider two representative cases:

*Patient A (Ambulatory, Mild-Moderate):* A 35-year-old woman with mild ME/CFS maintains part-time work from home. She experiences predictable post-exertional malaise 24–48 hours after intentional exercise attempts (e.g., 15-minute walks). Between activity bouts, she reports baseline fatigue but manageable cognitive function. After wheat elimination, she notes that exercise-induced symptom exacerbations become milder and shorter in duration, suggesting successful prevention of exercise-triggered gut barrier failure and subsequent LPS-mediated inflammation.

*Patient B (Bedbound, Severe):* A 42-year-old man with severe ME/CFS is bedbound 22+ hours daily. He experiences continuous baseline symptoms (severe fatigue, cognitive impairment, nausea) with micro-exacerbations triggered by minimal activities such as 10 minutes of reading, sitting upright for meals, or brief conversations. No intentional exercise is possible. After wheat elimination, he reports a gradual reduction in symptom “noise floor” over 12–16 weeks—baseline nausea decreases, cognitive fog lightens slightly—but he remains functionally bedbound, consistent with chronic baseline permeability reduction rather than prevention of discrete exercise-induced LPS spikes.

These vignettes align with the Severity-Dependent Barrier Dysfunction Model: Patient A exhibits episodic barrier stress with recovery capacity, while Patient B demonstrates chronic sustained barrier compromise from minimal daily activities combined with impaired repair mechanisms.

*Mechanism of Barrier Dysfunction.*

Tight junction proteins (occludin, claudins, zonula occludens) normally seal the paracellular space between enterocytes. In ME/CFS:

    - Zonulin (prehaptoglobin-2) is released in response to gliadin, bacteria, or other triggers
    - Zonulin loosens tight junctions, increasing paracellular permeability
    - Gram-negative bacterial LPS enters mesenteric lymph nodes and bloodstream
    - LPS triggers TLR4-mediated immune activation and cytokine release
    - Chronic low-grade endotoxemia may drive systemic inflammation

*Exercise-Induced Barrier Dysfunction and Synergistic Effects.*

Beyond chronic dietary and dysbiotic factors, acute exertion may further compromise intestinal barrier function through splanchnic hypoperfusion. Intense physical exercise diverts blood flow from the splanchnic circulation to working muscles, causing transient intestinal ischemia lasting 20–60 minutes @vanWijck2011. This ischemic insult triggers:

    - Increased intestinal epithelial cell damage (elevated I-FABP biomarker) @March2017
    - Acute increase in paracellular permeability @vanWijck2011
    - LPS translocation from the intestinal lumen

In patients with pre-existing wheat-induced barrier dysfunction (via gliadin-mediated zonulin release or ATI-mediated inflammation), exercise-induced ischemia may create a synergistic amplification: the wheat-primed baseline permeability is further compromised by exercise-induced ischemia, resulting in excessive endotoxin translocation. This synergistic mechanism may explain why some ME/CFS patients report disproportionate PEM exacerbation following exercise, particularly when wheat consumption occurs in the hours or days preceding physical activity. See @sec:food-sensitivities-wheat for clinical evidence and therapeutic implications of this potential interaction.

*Biomarkers of Intestinal Permeability.*

    - *Zonulin*: Tight junction modulator; elevated suggests active barrier dysfunction
    - *LPS (lipopolysaccharide)*: Bacterial endotoxin; elevated indicates translocation
    - *sCD14*: Soluble form of LPS receptor; marker of monocyte activation
    - *Intestinal fatty acid-binding protein (I-FABP)*: Enterocyte damage marker
    - *Anti-LPS antibodies (IgA, IgM, IgG)*: Indicate immune response to translocated endotoxin

=== Intestinal Barrier Dysfunction and Secondary Metabolic Consequences
<sec:gut-metabolic-cascade>

Beyond bacterial translocation, intestinal barrier dysfunction may contribute to ME/CFS through impaired nutrient absorption, particularly amino acids critical for mitochondrial function and nitric oxide synthesis.

*Microbiome–Mast Cell Bidirectional Regulation.*
<par:microbiome-mast-cell>

The gut microbiome and intestinal mast cells engage in bidirectional communication that is directly relevant to the MCAS–ME/CFS overlap @DeZuani2018mastmicrobiota @Papa2025mastmicrobiome. In the suppressive direction, microbial short-chain fatty acids—particularly butyrate and propionate—are potent mast cell stabilizers. Folkerts et al. @Folkerts2020butyrate demonstrated that butyrate achieves up to 90% inhibition of IgE-mediated human mast cell degranulation, acting through histone deacetylase (HDAC) inhibition rather than through GPR41/GPR43 receptors. Mechanistically, butyrate epigenetically downregulates the tyrosine kinases BTK ($-$2.12-fold), SYK ($-$2.84-fold), and LAT ($-$4.6-fold)—critical transducers of Fc$epsilon.alt$RI-mediated signaling. Propionate showed comparable inhibitory potency, while acetate had no effect. This finding directly links the butyrate-producer deficiency documented in ME/CFS (Achievement @ach:butyrate-deficiency) to a mechanistic pathway for mast cell dysregulation: reduced microbial butyrate production removes an epigenetic brake on mast cell activation.

In the pro-inflammatory direction, dysbiotic microbiomes can actively promote mast cell activation through multiple routes. Certain gut bacteria express histidine decarboxylase (HDC) and produce histamine directly within the intestinal lumen. Barcik et al. @Barcik2019histamine demonstrated this for _Lactobacillus reuteri_, which carries a complete chromosomal _hdc_ gene cluster; other known HDC-expressing gut commensals include _Enterococcus faecalis_ and certain _Escherichia coli_ strains @DeZuani2018mastmicrobiota. Barcik et al.\ showed that bacterial histamine secretion in the gut can influence immune responses systemically, including in the lung, demonstrating that gut-derived microbial histamine has effects beyond the intestinal tract. Additionally, lipopolysaccharide (LPS) from gram-negative bacteria—elevated in ME/CFS due to bacterial translocation (Achievement @ach:bacterial-translocation)—directly stimulates mast cell activation and upregulates tryptase, chymase, and pro-inflammatory cytokine expression @DeZuani2018mastmicrobiota.

This bidirectional relationship creates a potential vicious cycle in ME/CFS: dysbiosis reduces butyrate-mediated mast cell suppression while simultaneously increasing pro-inflammatory microbial signals (histamine, LPS), leading to mast cell hyperactivation. Activated mast cells then release proteases and histamine that damage the intestinal barrier @GutPermeability2023, further promoting bacterial translocation and worsening dysbiosis. This cycle may contribute to the observation that MCAS diagnoses are far more common _after_ ME/CFS onset (16.7%) than before it (2.8%) @Frioni2025MCAS—if progressive loss of butyrate-producing commensals gradually removes the epigenetic restraint on mast cell activation, MCAS could emerge as a secondary development rather than a pre-existing comorbidity. It also suggests that microbiome restoration (targeted probiotics, prebiotics, or FMT; see Section @sec:fmt) could have mast cell-stabilizing effects independent of pharmacological interventions, by restoring endogenous butyrate production.

#warning-env(title: [Evidence Limitations: Microbiome–Mast Cell Axis])[
The butyrate–mast cell inhibition data (Folkerts et al.\ 2020) derive from _in vitro_ and _ex vivo_ models using millimolar butyrate concentrations. While these concentrations are physiological in the colonic lumen, circulating butyrate levels are substantially lower, and whether systemic butyrate concentrations in ME/CFS patients are sufficient to modulate mast cell activity _in vivo_ remains undemonstrated. The proposed vicious cycle (dysbiosis $\to$ reduced butyrate $\to$ mast cell activation $\to$ barrier damage $\to$ worsened dysbiosis) has not been tested longitudinally in ME/CFS cohorts. No study has simultaneously measured fecal butyrate levels, mast cell activation markers, and microbiome composition in ME/CFS patients.

Certainty: Low–Moderate. Individual mechanistic components are well-established; their integration into a self-reinforcing cycle in ME/CFS is plausible but unvalidated.
]

#hypothesis(title: [MCAS/HIT $arrow.r$ Barrier Dysfunction $arrow.r$ Mitochondrial Failure Cascade])[
In patients with mast cell activation syndrome (MCAS) or histamine intolerance (HIT), a pathophysiological cascade may contribute to ME/CFS symptoms:

    - *MCAS/HIT activation*: Mast cell degranulation releases histamine, proteases (tryptase, chymase), and inflammatory mediators in the intestinal mucosa
    - *Barrier disruption*: Mast cell-derived proteases damage tight junction proteins; histamine increases paracellular permeability via H1 receptor-mediated cytoskeletal changes @GutPermeability2023
    - *Amino acid malabsorption*: Impaired intestinal absorption reduces bioavailability of:
    
        - L-citrulline and L-arginine (NO synthesis precursors)
        - Glycine, glutamate, cysteine (glutathione precursors)
        - Branched-chain amino acids (mitochondrial substrates)
    
    - *NO synthesis impairment*: Reduced arginine/citrulline availability $arrow.r$ decreased nitric oxide production $arrow.r$ endothelial dysfunction, impaired vasodilation, POTS exacerbation
    - *TCA cycle dysfunction*: Malate deficiency (often supplemented with citrulline-malate) impairs TCA cycle flux; documented in ME/CFS metabolomics @Yamano2016tca_urea
    - *Secondary mitochondrial failure*: Combined NO pathway and TCA cycle impairment $arrow.r$ reduced ATP production $arrow.r$ ME/CFS fatigue phenotype

This cascade may explain why patients with MCAS/HIT comorbidity show particularly robust responses to amino acid supplementation—they are correcting malabsorption-induced deficiencies rather than primary metabolic defects.
] <hyp:gut-mito-cascade>

#warning-env(title: [Evidence Limitations])[
This cascade hypothesis integrates multiple established observations but has not been directly validated:

    - Intestinal amino acid absorption has not been directly measured in ME/CFS patients
    - The link between MCAS and amino acid malabsorption is mechanistically plausible but unconfirmed
    - Response to amino acid supplementation could reflect direct metabolic support rather than malabsorption correction
    - Yamano et al. @Yamano2016tca_urea documented TCA cycle metabolite deficiencies in ME/CFS but did not assess intestinal function

Certainty: Low (hypothesis level).
]

*Supporting Evidence.*

Several lines of evidence support this cascade model:

    - *Metabolomic deficiencies*: Yamano et al. @Yamano2016tca_urea found significantly reduced plasma citrulline, malate, and isocitrate in ME/CFS patients compared to controls
    - *Mast cells and barrier function*: Mast cell activation directly increases intestinal permeability through multiple mechanisms @GutPermeability2023
    - *MCAS-ME/CFS overlap*: 10–50% of ME/CFS patients have MCAS features (Section @sec:septad)
    - *Amino acid supplementation response*: Clinical reports suggest some ME/CFS patients show significant improvement with L-citrulline-malate, NAC, and other amino acid protocols
    - *Glutathione deficiency*: Shungu et al. @Shungu2012glutathione demonstrated reduced cortical glutathione in ME/CFS with correlation to physical functioning; pilot NAC supplementation normalized glutathione levels

*NO Dysfunction as a Central Mechanism.*
<par:no-dysfunction>

Nitric oxide (NO) is essential for vascular regulation, mitochondrial function, and immune signaling. In the MCAS-barrier-mitochondrial cascade:

    - *L-Arginine pathway*: Arginine $arrow.r^("NOS")$ NO + citrulline
    - *Citrulline recycling*: Citrulline is converted back to arginine in the “citrulline-NO cycle”
    - *ME/CFS abnormality*: Low citrulline/arginine availability $arrow.r$ substrate-limited NO production
    - *Downstream effects*:
    
        - Endothelial dysfunction and impaired vasodilation
        - Reduced blood flow during exertion (contributes to PEM)
        - Impaired mitochondrial biogenesis (NO regulates PGC-1$alpha$)
        - Orthostatic intolerance (POTS exacerbation)
    

*Therapeutic Implications.*

If this cascade is operative in a subset of ME/CFS patients:

    - *MCAS/HIT treatment*: Stabilizing mast cells (H1/H2 blockade, quercetin, ketotifen) may reduce barrier damage
    - *Amino acid supplementation*: L-citrulline-malate may be more effective than L-arginine (bypasses hepatic first-pass, provides TCA cycle substrate)
    - *Glutathione support*: NAC supplementation addresses documented deficiency
    - *Barrier restoration*: Targeting tight junction repair (butyrate, zinc carnosine, collagen) may improve absorption
    - *Phenotype identification*: Patients with confirmed MCAS/HIT + low amino acid panel may be candidates for targeted intervention

*Research Needs.*

Validating this cascade requires:

    - Direct measurement of intestinal amino acid absorption in ME/CFS (stable isotope studies)
    - Correlation of barrier permeability markers with amino acid levels
    - Controlled trials of amino acid supplementation stratified by MCAS/HIT status
    - Longitudinal assessment of barrier function, amino acids, and symptoms during MCAS treatment

== Gastrointestinal Dysfunction
<sec:gi-dysfunction>

=== Irritable Bowel Syndrome Overlap

IBS and ME/CFS show profound overlap, complicating both diagnosis and treatment.

*Prevalence.*

    - *50–90% of ME/CFS patients* meet criteria for IBS (median 51%)
    - Cluster analysis: 59.6% of ME/CFS patients have “abdominal discomfort syndrome”
    - IBS patients have *5-fold higher odds* of having CFS compared to general population
    - IBS-Constipation (IBS-C) subtype shows higher ME/CFS association than IBS-Diarrhea

*Clinical Significance.*
ME/CFS patients with comorbid IBS demonstrate:

    - More severe fatigue
    - Poorer appetite
    - Increased abdominal pain
    - Greater overall symptom burden

=== Motility Disorders

==== Gastroparesis

Delayed gastric emptying is common in ME/CFS and contributes significantly to symptom burden.

<obs:gastroparesis-prevalence>
A 2023 gastric emptying scintigraphy study @GastricDysmotility2023 in ME/CFS patients (n=40) demonstrated:

    - *72% showed delayed liquid-phase emptying*
    - *38% showed delayed solid-phase emptying*
    - Degree of delay correlated significantly with symptom severity
    - Both liquid and solid delay increased with more severe ME/CFS
    - Lower proximal stomach accommodation after meals
    - Larger fasting antral area (suggesting visceral hypersensitivity)

Symptom profiles resembled functional dyspepsia, though autonomic dysfunction likely contributes (cross-sectional, n=40, Medium certainty).
*Autonomic Connection.*

Gastroparesis in ME/CFS is likely secondary to autonomic dysfunction:

    - Parasympathetic dysfunction associated with delayed gastric emptying
    - Vagal nerve impairment reduces gastric motility
    - Sympathetic hyperactivation may inhibit digestive function
    - Dysautonomia disrupts coordinated antral contractions

*Symptoms.*

    - Early satiety (75% of ME/CFS patients)
    - Postprandial fullness and bloating
    - Nausea (35%)
    - Abdominal pain (45%)
    - Vomiting (in severe cases)

==== Small Intestinal Bacterial Overgrowth (SIBO)
<sec:sibo>

SIBO occurs when excessive bacteria colonize the small intestine, which is normally relatively sterile. It is increasingly recognized as a major contributor to ME/CFS gastrointestinal symptoms.

<obs:sibo-prevalence>
A retrospective analysis of ME/CFS patients referred for breath testing found:

    - 479 patients referred; 367 completed hydrogen-methane breath tests
    - *48% SIBO-positive when excluding equivocal results* (152/316)
    - 41% SIBO-positive overall (including equivocal as negative)
    - 45% SIBO-negative
    - 14% equivocal
    - Predictive factors: older age, IBS diagnosis

This suggests a substantial proportion of ME/CFS patients have bacterial overgrowth, though the retrospective design and referral bias (patients referred for breath testing likely had more GI symptoms) limit generalizability (retrospective chart review; 479 referred, 367 with usable results, 316 conclusive; Medium certainty) @SIBOKarhu2023.
*Pathophysiology: Migrating Motor Complex Dysfunction.*

The migrating motor complex (MMC) is a cyclic pattern of electromechanical activity that “sweeps” bacteria from the small intestine to the colon during fasting.

    - MMC occurs every 90–120 minutes during fasting
    - Controlled by Interstitial Cells of Cajal linking smooth muscle to enteric nervous system
    - Studies suggest most patients with abnormal MMC develop duodenal bacterial overgrowth
    - MMC dysfunction allows bacteria to accumulate in small intestine

*Factors impairing MMC in ME/CFS:*

    - *Autonomic dysfunction*: Vagal impairment reduces MMC activity
    - *Post-infectious autoimmunity*: Anti-CdtB and anti-vinculin antibodies (from prior gastroenteritis) damage Interstitial Cells of Cajal
    - *Chronic stress*: Sympathetic activation suppresses MMC
    - *Hypothyroidism*: Modulates enteric nervous system function
    - *Medications*: Opioids, anticholinergics impair motility

*SIBO Subtypes.*

Different bacterial populations produce different gases, leading to distinct clinical presentations:



#figure(
  table(
    columns: (auto, auto, auto, auto),
    // TODO: fix columnsllll@}

    [*Subtype*], [*Gas Produced*], [*Predominant Symptoms*], [*Treatment Focus*],

    [Hydrogen-dominant], [H#sub[2]], [Diarrhea], [Rifaximin],

    [Methane (IMO)], [CH#sub[4]], [Constipation], [Rifaximin + neomycin],

    [Hydrogen sulfide (ISO)], [H#sub[2]S], [Diarrhea, gas, odor], [Bismuth, targeted antibiotics],
  ),
  caption: [SIBO Subtypes and Clinical Presentations],
) <tab:sibo-subtypes>


{IMO = Intestinal Methanogen Overgrowth; ISO = Intestinal Sulfide Overproduction.}


    - *Hydrogen-dominant*: Most common; E. coli, Klebsiella, other hydrogen producers
    - *Methane-dominant (IMO)*: Archaea (_Methanobrevibacter smithii_) convert H#sub[2] to CH#sub[4]; slows transit time, causes constipation
    - *Hydrogen sulfide (ISO)*: Sulfate-reducing bacteria; associated with diarrhea; NOT detected by standard H#sub[2]/CH#sub[4] tests (requires Trio-Smart 3-gas test)

*Diagnosis: Breath Testing.*

Breath testing remains the primary non-invasive diagnostic method for SIBO.

*Protocol:*

    - Substrate: Glucose (50–75g) or lactulose (10g)
    - Measurements: Every 15 minutes for 120 minutes
    - End-expiratory breath samples analyzed for H#sub[2], CH#sub[4] (and H#sub[2]S if available)

*Interpretation:*

    - *Hydrogen*: Rise $gt.eq$20 ppm above baseline
    - *Methane*: $gt.eq$10 ppm at any point
    - *Hydrogen sulfide*: $gt.eq$3 ppm at any point (Trio-Smart criteria)

*Glucose vs Lactulose:*

    - Glucose absorbed in proximal small intestine (more specific for SIBO)
    - Lactulose reaches colon (may yield false positives)
    - Glucose preferred for diagnosis; lactulose may detect distal SIBO

=== Digestive Function

Beyond motility, ME/CFS patients may have impaired digestive capacity:

    - *Pancreatic enzyme insufficiency*: Reduced lipase, protease, amylase secretion
    - *Bile acid malabsorption*: Impaired fat digestion; contributes to diarrhea
    - *Nutrient malabsorption*: Consequent to SIBO, intestinal permeability, and enzyme deficiency
    - *Hypochlorhydria*: Reduced gastric acid (sometimes from PPI overuse) predisposes to SIBO

== Metabolites and Short-Chain Fatty Acids
<sec:metabolites>

Short-chain fatty acids (SCFAs) are produced by bacterial fermentation of dietary fiber and have profound effects on host physiology.

=== Butyrate

Butyrate is the most metabolically important SCFA, with multiple functions relevant to ME/CFS:

    - *Colonocyte energy*: Primary fuel source for colonic epithelium
    - *Barrier function*: Strengthens tight junctions, reduces permeability
    - *Anti-inflammatory*: Inhibits NF-$kappa$B, reduces pro-inflammatory cytokines
    - *Immune modulation*: Promotes regulatory T cell differentiation
    - *Neuromodulation*: Crosses blood-brain barrier, affects microglial function
    - *Epigenetic effects*: Histone deacetylase inhibitor

*Butyrate deficiency in ME/CFS* (see Achievement @ach:butyrate-deficiency) may contribute to:

    - Increased intestinal permeability
    - Chronic low-grade inflammation
    - Impaired immune regulation
    - Neuroinflammation

=== Acetate and Propionate

    - *Acetate*: Most abundant SCFA; enters systemic circulation; substrate for lipogenesis; appetite regulation
    - *Propionate*: Gluconeogenic substrate; cholesterol-lowering effects; modulates immune function

== Treatment Approaches
<sec:gi-treatment>

Treatment of gastrointestinal dysfunction in ME/CFS requires addressing multiple interrelated issues: motility, bacterial overgrowth, permeability, and microbiome composition.

=== SIBO Treatment

==== Antibiotics

*Rifaximin (Xifaxan):*

    - Non-absorbed antibiotic targeting small intestine
    - *Dosing*: 550 mg three times daily (1650 mg/day) for 14 days
    - Effective for hydrogen-dominant SIBO
    - Systematic reviews confirm efficacy and safety
    - *Limitation*: Some patients relapse after completing course

*Neomycin:*

    - More effective against methane-producing archaea
    - Often combined with rifaximin for IMO (methane-dominant)
    - *Dosing*: 500 mg twice daily for 14 days (with rifaximin)

*Metronidazole:*

    - Used for hydrogen sulfide SIBO
    - Alternative when rifaximin unavailable or failed
    - More systemic side effects

#warning-env(title: [SIBO Recurrence])[
SIBO frequently recurs after antibiotic treatment, particularly if underlying motility dysfunction is not addressed. Addressing root causes (MMC dysfunction, autonomic impairment) and using prokinetics post-treatment may reduce recurrence.
]

==== Herbal Antimicrobials

<obs:herbal-sibo>
A 2014 retrospective study @HerbalSIBO2014 compared herbal antimicrobials to rifaximin in 104 SIBO patients:

    - *Herbal therapy*: 46% breath test normalization
    - *Rifaximin*: 34% breath test normalization
    - Herbal therapy at least as effective as rifaximin in this cohort
    - 57% of rifaximin non-responders achieved normalization with subsequent herbal therapy

Herbal antimicrobials may represent an alternative for patients preferring non-pharmaceutical approaches or with antibiotic intolerance. However, this was a retrospective, non-randomized comparison; RCT validation is needed before concluding equivalence (retrospective cohort, n=104, Medium certainty).
*Effective herbal agents:*

    - *Berberine*: Reduces pathogenic bacteria, improves intestinal barrier; more effective against hydrogen-producing bacteria
    - *Allicin* (garlic extract): Antibacterial, antifungal; most effective against methane-producing microbes
    - *Oregano oil*: Active constituents carvacrol (55–85%) and thymol; disrupts bacterial cell membranes; preserves beneficial _Lactobacillus_ and _Bifidobacterium_
    - *Neem*: Broad-spectrum antimicrobial

*Protocol:*

    - Typical duration: 4–6 weeks
    - Often two agents combined (e.g., berberine + oregano oil)
    - Reassess with breath testing after treatment

*Contraindications and Interactions:*

    - *Berberine*: Inhibits CYP3A4, CYP2D6, and CYP2C9 enzymes; may increase levels of many medications including anticoagulants, immunosuppressants, and statins; contraindicated in pregnancy
    - *Oregano oil*: May lower blood pressure; caution with antihypertensives; avoid in pregnancy
    - *Garlic/allicin*: Antiplatelet effects; avoid with anticoagulants (warfarin, aspirin); discontinue 7–10 days before surgery
    - *General*: All herbal antimicrobials should be used under medical supervision; drug-herb interactions are common

==== Elemental Diet

Elemental diets provide pre-digested nutrients (amino acids, simple sugars, minimal fat) that are absorbed in the proximal small intestine, effectively “starving” bacteria of fermentable substrates.

<obs:elemental-diet>
Multiple studies demonstrate high efficacy:

    - Classic study @PimentelElemental2004: 80% breath test normalization at 14 days, 85% at 21 days
    - Recent 2025 study @ElementalDiet2025 with palatable formulation: *83% SIBO eradication*
    - 100% normalization in hydrogen-SIBO (n=6)
    - 58% normalization in IMO (n=12)
    - 66% symptom improvement in those who normalized

Elemental diet is highly effective but requires motivation due to taste and restrictive nature (clinical trials, Medium-High certainty).
*Protocol:*

    - Duration: 14 days exclusive elemental diet (may extend to 21 days if still abnormal at day 15)
    - Formulas: Vivonex Plus, mBIOTA Elemental (newer palatable formulation)
    - Caloric intake based on individual requirements
    - Gradual reintroduction of regular foods over 2 weeks after completion

=== Prokinetics
<subsec:prokinetics>

Prokinetic agents stimulate gastrointestinal motility and may help prevent SIBO recurrence by restoring MMC function.

    - *Low-dose erythromycin* (50–100 mg at bedtime): Motilin receptor agonist; stimulates MMC. Tachyphylaxis develops with continuous use; drug holidays recommended (3 weeks on, 1 week off).

    - *Prucalopride* (Motegrity): Selective 5-HT#sub[4] receptor agonist; FDA-approved for chronic constipation. May be more effective for idiopathic gastroparesis.

    - *Metoclopramide* (Reglan): Dopamine D2 antagonist; only FDA-approved medication for gastroparesis. *Warning*: Risk of tardive dyskinesia with prolonged use.

    - *Domperidone*: Dopamine antagonist; not available in US (requires FDA expanded access). Cardiac monitoring required (QT prolongation risk).

#warning-env(title: [Prokinetic Limitations])[
Prokinetics have limited effectiveness as monotherapy for gastroparesis. They are most useful for:

    - Preventing SIBO recurrence after successful eradication
    - Mild-to-moderate gastroparesis
    - Combined with dietary modifications

They do not cure underlying autonomic dysfunction and require careful monitoring for side effects.
]

=== Dietary Interventions

==== Low-FODMAP Diet

FODMAPs (Fermentable Oligosaccharides, Disaccharides, Monosaccharides, And Polyols) are poorly absorbed carbohydrates that are fermented by gut bacteria, producing gas and drawing water into the intestine.

*Evidence:*

    - Multiple RCTs demonstrate efficacy for IBS symptoms
    - Limited direct evidence in ME/CFS, but given 50–90% IBS overlap, likely beneficial for GI symptoms
    - One fibromyalgia study (n=38) showed significant reduction in gut symptoms and widespread pain after 4 weeks

*Implementation:*

    - *Elimination phase* (2–6 weeks): Strict avoidance of high-FODMAP foods
    - *Reintroduction phase*: Systematic testing of individual FODMAP groups
    - *Personalization phase*: Long-term diet based on individual tolerances

*Requires dietitian guidance* for proper implementation; not intended as permanent restriction.

==== Gastroparesis Diet

    - Small, frequent meals (5–6 per day)
    - Low-fat (fat delays gastric emptying)
    - Low-fiber during flares (fiber delays emptying)
    - Well-cooked, soft foods
    - Avoid lying down after meals
    - Liquid calories if solid food poorly tolerated

=== Probiotics and Prebiotics

==== Probiotic Evidence in ME/CFS

*Lactobacillus casei strain Shirota:*

    - 48 ME/CFS patients, 8 weeks: Significant decrease in anxiety scores versus placebo
    - Follow-up study (39 patients, 2 months): Significant reduction in anxiety symptoms
    - No change in depression scores

*Bifidobacterium infantis 35624:*

    - 35 ME/CFS patients, 8 weeks
    - Significantly *reduced inflammatory markers*: CRP, IL-6, TNF-$alpha$
    - 71% showed reduced pro-inflammatory markers
    - Symptom reduction in 3 separate RCTs

#key-point(title: [Strain-Specific Probiotic Selection])[
Probiotic effects are highly strain-specific—a well-established principle in microbiology. _B. infantis_ 35624 shows strongest evidence for reducing inflammation in ME/CFS, while _L. casei_ Shirota may preferentially improve anxiety. Generic “probiotic” recommendations are unlikely to be helpful; strain selection should be evidence-based.
] <key:probiotic-strain>

#warning-env(title: [Probiotic Cautions])[

    - Not all strains are equally effective; many commercial products lack evidence
    - Effects may be transient (requiring ongoing use)
    - Individual responses vary substantially
    - Quality and viability of commercial products inconsistent
    - Some patients report worsening with probiotics (particularly with SIBO)

]

==== Prebiotics

Prebiotics are non-digestible fibers that selectively feed beneficial bacteria:

    - Fructo-oligosaccharides (FOS)
    - Galacto-oligosaccharides (GOS)
    - Inulin
    - Resistant starch

*Caution in SIBO*: Prebiotics may worsen symptoms in patients with active SIBO by feeding overgrown bacteria. Generally better tolerated after SIBO eradication.

=== Fecal Microbiota Transplantation
<sec:fmt>

FMT represents the most radical microbiome intervention—complete ecosystem replacement rather than supplementation.

#speculation(title: [FMT for ME/CFS])[
*Certainty: 0.25.* One completed pilot RCT (n=11) showed no symptomatic benefit, though dose may have been suboptimal. Two larger placebo-controlled trials are ongoing (Comeback, n=80; RESTORE ME, n=160); results expected 2026+. FMT is classified as speculation pending these results.

Rationale for FMT in ME/CFS:

    - Restores microbial diversity impossible to achieve with probiotics alone
    - Transfers not just bacteria but bacteriophages, fungi, and metabolites
    - Donor microbiome may provide missing metabolic functions (butyrate production, tryptophan metabolism)
    - May reset gut-immune interactions

] <spec:fmt>

*Current Evidence:*

    - *Finnish pilot study (2023)*: Randomized, double-blind, placebo-controlled (n=11). FMT was safe but did *not* relieve symptoms or improve quality of life. However, dose may have been suboptimal (30g vs 70g typically needed).
    - *Norwegian “Comeback” study*: Randomized, double-blind, placebo-controlled (n=80). Completed enrollment March 2025; results expected 2026.
    - *RESTORE ME study*: Placebo-controlled (n=160); underway since 2020.

#limitation(title: [FMT: Association Established, Causality Not Proven])[
FMT for ME/CFS remains *experimental*. The data do not currently support a causal link between dysbiosis and ME/CFS symptoms:

    - One negative pilot study (small sample, potentially underdosed)
    - Large trials ongoing but not yet reported
    - Dysbiosis in ME/CFS is association, not proven causality—both may result from shared upstream mechanisms (e.g., autonomic dysfunction reducing gut motility)
    - Long-term safety of FMT not fully established

Await results of adequately powered trials before considering FMT for ME/CFS.
]

== Integration with Other ME/CFS Pathophysiology
<sec:gi-integration>

Gastrointestinal dysfunction interconnects with other ME/CFS mechanisms (these connections are synthesized into comprehensive multi-system models in Chapter @ch:integrative-models):

    - *Immune dysfunction* (Chapter @ch:immune-dysfunction): Intestinal permeability drives LPS-mediated immune activation; GALT dysregulation affects systemic immunity

    - *Autonomic dysfunction* (Chapter @ch:neurological): Vagal impairment causes gastroparesis and MMC dysfunction; dysautonomia and GI symptoms bidirectionally reinforce each other. A specific gut–vagal mechanism may operate through enterochromaffin cell serotonin release affecting vagal afferent signaling (Section @sec:gut-brain), with potential downstream effects on cardiovascular autonomic function (Chapter @ch:cardiovascular)

    - *MCAS* (Section @sec:septad): Bidirectional microbiome–mast cell regulation operates through butyrate-mediated epigenetic suppression and dysbiosis-driven histamine/LPS activation (\hyperref[par:microbiome-mast-cell]{Microbiome–Mast Cell Bidirectional Regulation}, Section @sec:gut-metabolic-cascade); mast cells in gut mucosa affect motility and permeability, with potential interactions with SIBO

    - *Energy metabolism* (Chapter @ch:energy-metabolism): Butyrate deficiency reduces colonocyte energy; malabsorption impairs nutrient availability for mitochondrial function

    - *Neurological symptoms*: Gut-brain axis dysfunction contributes to cognitive impairment, mood disturbance, and autonomic symptoms

#open-question(title: [Causality in Gut-ME/CFS Relationship])[
Critical unresolved questions:

    - Does dysbiosis _cause_ ME/CFS symptoms, or is it a _consequence_ of the disease?
    - Can correcting microbiome alterations improve ME/CFS outcomes?
    - Which comes first: autonomic dysfunction causing dysmotility, or gut dysfunction driving autonomic symptoms?
    - Would microbiome-targeted therapies be disease-modifying or merely symptomatic?

Answering these questions requires interventional studies with objective outcome measures beyond symptom questionnaires.
] <oq:gut-causality>

=== Gut-Brain Metabolic Coupling
<sec:gut-brain-metabolic>

The preceding sections establish that ME/CFS patients show reduced butyrate-producing bacteria (Achievement @ach:butyrate-deficiency), disrupted tryptophan metabolism, and impaired gut-brain axis signaling (Section @sec:gut-brain). Separately, evidence from neuroimaging demonstrates brain hypometabolism in ME/CFS (see Chapter @ch:neurological). The following speculation proposes a mechanistic link between these observations.

#speculation(title: [Gut-Brain Energy Theft Hypothesis])[
In ME/CFS, a dysbiotic microbiome may actively divert energy substrates away from the central nervous system, contributing to or worsening brain hypometabolism and cognitive dysfunction. This “energy theft” operates through several convergent mechanisms:

*Bacterial Substrate Competition.*
The human gut harbors approximately $10^(13)$ bacteria, collectively constituting a metabolically active organ that consumes host nutrients. Under normal conditions, commensal bacteria provide net metabolic benefits—fermenting indigestible fiber into short-chain fatty acids, synthesizing vitamins, and supporting immune homeostasis. However, when dysbiosis shifts the community toward pathobionts and away from mutualists, this metabolic balance may reverse. Pathogenic and opportunistic bacteria preferentially consume simple sugars (glucose, amino acids) that would otherwise be absorbed by the host for systemic distribution, including to the brain @Guo2025nutrient. In ME/CFS, where total energy availability is already compromised (Chapter @ch:energy-metabolism), even modest bacterial diversion of substrates could meaningfully reduce CNS energy supply.

*Butyrate Deficiency and Brain Energy.*
Butyrate is not merely a colonocyte fuel—it crosses the blood-brain barrier and serves as a preferred energy substrate for astrocytes, outcompeting acetate in cerebral cortical tissue @Ameen2024butyrate. Astrocytes are central to the brain's metabolic support network, providing neurons with lactate and other substrates via the astrocyte-neuron lactate shuttle. The well-documented butyrate producer deficiency in ME/CFS (Achievement @ach:butyrate-deficiency) therefore has implications beyond gut health: reduced circulating butyrate may deprive astrocytes of a key energy substrate, impairing their capacity to support neuronal metabolism.

*Tryptophan Diversion.*
Gut bacteria metabolize tryptophan through multiple pathways, reducing systemic availability of this essential amino acid. In ME/CFS, dysbiosis-associated kynurenine pathway hyperactivation diverts tryptophan away from serotonin synthesis (see Section @sec:gut-brain and @Kavyani2022kynurenine @Abujrais2024tryptophan). Beyond serotonin depletion, this diversion depletes NAD+ precursors via quinolinic acid accumulation, further compromising cellular energy metabolism in the brain.

*Inflammation Tax.*
Dysbiosis-driven intestinal permeability (Achievement @ach:bacterial-translocation) results in LPS translocation and chronic low-grade endotoxemia. The immune response to translocated bacterial products imposes a significant metabolic cost: pro-inflammatory cytokine production, acute phase protein synthesis, and immune cell activation collectively consume glucose and amino acids that would otherwise support CNS function @ElSehrawy2025gutbrain. This “inflammation tax” compounds the direct substrate competition, creating a double burden on the already constrained energy budget.

*Testable Predictions.*

    - Dysbiosis severity (measured by reduced butyrate-producer abundance or increased pathobiont load) should correlate with degree of CNS hypometabolism on FDG-PET imaging.
    - Microbiome restoration interventions (FMT, targeted probiotics; see Section @sec:fmt and Speculation @spec:fmt) should improve cognitive function, with effect size proportional to microbiome normalization.
    - Fecal butyrate levels should correlate with plasma butyrate and, in turn, with brain metabolic markers (MR spectroscopy NAA/Cr ratios or FDG-PET regional uptake).
    - Post-prandial cognitive worsening (commonly reported by patients as “food coma” or post-meal brain fog) should correlate with markers of bacterial fermentation and small intestinal bacterial load.
    - Periods of reduced caloric intake or fasting may temporarily improve cognitive clarity by reducing bacterial substrate availability—though this must be weighed against the risks of caloric restriction in an energy-depleted condition.

*Treatment Implications.*
This framework suggests that cognitive symptoms in ME/CFS may be partially addressable through microbiome-targeted interventions:

    - *Targeted probiotics*: Supplementation with butyrate-producing strains (_F.\ prausnitzii_, _E.\ rectale_) to restore SCFA production and potentially brain butyrate supply.
    - *Prebiotics*: Dietary fiber substrates (resistant starch, inulin) that selectively feed butyrate producers.
    - *SIBO treatment*: Reducing small intestinal bacterial overgrowth (Section @sec:sibo) may decrease proximal glucose competition.
    - *Direct butyrate supplementation*: Oral sodium butyrate or tributyrin to bypass microbial production deficits.

*Limitations.*

    - The correlation between dysbiosis and cognitive symptoms does not establish causation—both may result from a common upstream mechanism (e.g., autonomic dysfunction reducing gut motility).
    - Quantitative modeling of bacterial substrate consumption relative to host needs has not been performed; the “theft” may be quantitatively trivial compared to total host energy flux.
    - Current evidence for butyrate as a brain fuel comes primarily from animal models @Ameen2024butyrate; human relevance at physiological concentrations remains to be confirmed.
    - Individual variation in microbiome composition, diet, and metabolic rate makes population-level predictions difficult.

*Certainty:* 0.40. This is a speculative integrative hypothesis synthesizing established individual findings into a novel mechanistic framework. Direct validation through the testable predictions above is needed before clinical application.
] <spec:gut-brain-energy-theft>

=== The Oral Microbiome: An Underexplored Compartment
<sec:oral-microbiome>

ME/CFS microbiome research has focused almost exclusively on the intestinal tract. The oral microbiome---a distinct ecological niche harboring over 700 bacterial species---remains virtually unstudied in ME/CFS, despite well-established evidence that oral dysbiosis drives systemic inflammation in other conditions @Hasan2025periodontal @Hajishengallis2021periodontal.

Periodontitis affects approximately 47% of U.S.\ adults @Hasan2025periodontal. The disease provides a chronic portal for bacterial entry into the bloodstream: periodontal pathogens such as _Porphyromonas gingivalis_ and _Aggregatibacter actinomycetemcomitans_ disseminate via ulcerated pocket epithelium, triggering systemic elevations in CRP, IL-6, TNF-α, and IL-1β---the same inflammatory mediators consistently elevated in ME/CFS (Chapter @ch:immune-dysfunction) @Hasan2025periodontal @Hajishengallis2015periodontal. Notably, _P.\ gingivalis_ functions as a "keystone pathogen," manipulating complement and TLR crosstalk to disable immune clearance while sustaining inflammation @Hajishengallis2015periodontal\---a strategy that could compound the immune dysregulation already present in ME/CFS.

Three pathways make the oral-systemic connection potentially relevant to ME/CFS:

    - *Endothelial dysfunction*: Periodontal bacteremia promotes atherosclerotic plaque formation and impairs endothelial function @Hasan2025periodontal @Tattar2025periodontal, overlapping with the vascular dysfunction documented in ME/CFS (Chapter @ch:cardiovascular).
    - *Neuroinflammation*: _P.\ gingivalis_ gingipains cross the blood-brain barrier, promote amyloid-β accumulation, and drive microglial activation @Dominy2019gingipains. These mechanisms parallel the neuroinflammation documented in ME/CFS (Chapter @ch:neurological).
    - *Autoimmunity via citrullination*: _P.\ gingivalis_ citrullinates host peptides, generating neoantigens that trigger autoimmune responses---the established "two-hit" model for rheumatoid arthritis @Hasan2025periodontal. Whether citrullination could contribute to the GPCR autoantibodies observed in ME/CFS (Section @sec:cardiac-function) is unknown but mechanistically plausible.

#open-question(title: [Is the Oral Microbiome an Overlooked Inflammatory Reservoir in ME/CFS?])[
No study has assessed periodontal disease prevalence, oral microbiome composition, or oral-origin systemic inflammatory burden in ME/CFS patients. Several factors suggest this gap deserves attention:

    - Severe ME/CFS patients report inability to maintain oral hygiene (teeth brushing described as exhausting; Section @sec:severe-reality), creating conditions favourable for periodontal disease progression.
    - The resulting chronic low-grade bacteremia would add to the systemic inflammatory load from intestinal barrier dysfunction (Section @sec:leaky-gut), potentially compounding the "inflammation tax" described in Speculation @spec:gut-brain-energy-theft.
    - Periodontal treatment is a modifiable intervention: scaling and root planing reduces systemic CRP and IL-6 @Tattar2025periodontal, and could theoretically reduce inflammatory burden in ME/CFS without pharmacological intervention.

Key research questions:

    - Is periodontal disease prevalence elevated in ME/CFS compared to age/sex-matched controls?
    - Does oral microbiome composition differ in ME/CFS, and does it correlate with systemic inflammatory markers?
    - Does periodontal treatment reduce systemic inflammatory markers or improve symptoms in ME/CFS patients?
    - Is there a severity gradient, with more severe patients (who have greater self-care limitations) showing worse periodontal status and higher oral-origin inflammatory burden?
] <oq:oral-microbiome>

#speculation(title: [The Oral Dysbiosis--Disability Vicious Cycle])[
In severe ME/CFS, a self-reinforcing cycle may operate between disability and oral health deterioration:

    + Severe fatigue and post-exertional malaise limit capacity for dental hygiene (teeth brushing, flossing, dental visits)
    + Neglected oral hygiene permits periodontal disease development and progression
    + Periodontal disease establishes chronic bacteremia and systemic inflammation (elevated TNF-α, IL-1β, IL-6, CRP) @Hasan2025periodontal @Hajishengallis2021periodontal
    + Additional inflammatory burden worsens ME/CFS symptoms (fatigue, cognitive dysfunction, immune activation)
    + Worsened symptoms further reduce self-care capacity, completing the cycle

This cycle is notable because it is *entirely modifiable* through external intervention: caregiver-assisted oral hygiene, domiciliary dental services, or professional dental care adapted for energy-limited patients. If the cycle contributes meaningfully to symptom burden, periodontal management represents a low-risk, non-pharmacological intervention that could reduce systemic inflammation.

*Testable predictions:*

    - ME/CFS symptom severity should correlate with periodontal disease markers (pocket depth, attachment loss, bleeding on probing) after controlling for age, smoking, and diabetes.
    - Implementation of assisted oral hygiene protocols in severe ME/CFS patients should reduce systemic CRP and IL-6 within 3--6 months.
    - Periodontal treatment in ME/CFS patients with comorbid periodontitis should produce greater symptom improvement than in ME/CFS patients without periodontitis.

*Limitations:*

    - The cycle is hypothesised by analogy from periodontitis research in other chronic conditions; no ME/CFS-specific data exist.
    - The inflammatory contribution from oral sources may be quantitatively trivial compared to gut-derived endotoxemia and other inflammatory sources in ME/CFS.
    - Dental procedures themselves can trigger PEM in severe patients, complicating the intervention.

*Certainty:* 0.30. The individual links (disability → poor oral hygiene; periodontal disease → systemic inflammation) are well-established, but the complete cycle and its clinical significance in ME/CFS are entirely speculative.
] <spec:oral-dysbiosis-cycle>
