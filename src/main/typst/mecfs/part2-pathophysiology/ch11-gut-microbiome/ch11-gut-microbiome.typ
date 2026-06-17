#import "../../shared/environments.typ": *

= Gastrointestinal and Microbiome Dysfunction
<ch:gut-microbiome>

Gastrointestinal symptoms affect the majority of ME/CFS patients, with 50–90% reporting irritable bowel syndrome (IBS)-like symptoms. The gut microbiome—the complex ecosystem of bacteria, archaea, fungi, and viruses inhabiting the intestinal tract—has emerged as a key player in ME/CFS pathophysiology, with bidirectional connections to immune function, metabolism, and the central nervous system.

GI dysmotility is one component of the “Septad” framework of frequently co-occurring conditions in ME/CFS (Section @sec:septad). This chapter examines microbiome alterations, intestinal permeability, motility disorders, and their connections to systemic symptoms.

== Gut Microbiome Alterations
<sec:microbiome>

=== Dysbiosis Patterns

Multiple studies have documented consistent patterns of gut microbiome alterations in ME/CFS patients @Giloteaux2016, though no single “ME/CFS signature” has been established.

#include "sec-01-misc/subsec-01-dysbiosis-patterns/achievements/ach-reduced-microbiome-diversity-in-me-cfs.typ"

#include "sec-01-misc/subsec-01-dysbiosis-patterns/warnings/warn-replication-status-partially-replicated.typ"

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

#include "sec-01-misc/subsec-01-dysbiosis-patterns/warnings/warn-ibs-co-morbidity-as-confounding-factor.typ"

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

#include "sec-01-misc/subsec-02-functional-capacity-changes/achievements/ach-deficient-butyrate-producing-capacity.typ"

#include "sec-01-misc/subsec-02-functional-capacity-changes/warnings/warn-replication-status-partially-replicated.typ"

=== Multi-Omic Integration: Beyond Taxonomic Profiling
<sec:multi-omic-microbiome>

Traditional 16S rRNA sequencing identifies _which bacteria_ are present but cannot determine _what they are doing_. This distinction matters: two patients with identical bacterial communities may produce entirely different metabolite profiles depending on gene expression, substrate availability, and inter-species interactions. Early ME/CFS microbiome studies relied exclusively on taxonomic profiling and achieved moderate classification accuracy (e.g., 82.93% in Giloteaux et al. @Giloteaux2016). Nagy-Szakal et al. @NagySzakal2017 combined fecal metagenomic and plasma metabolomic profiling, achieving in-sample classification AUC=0.893 with an 8-species bacterial model (cross-validated AUC=0.745). Crucially, their analysis revealed that IBS co-morbidity—not ME/CFS diagnosis—was the dominant driver of bacterial compositional differences, underscoring why metabolomic data are needed to disentangle ME/CFS-specific signatures from IBS confounding.

The most comprehensive multi-omic analysis to date, by Xiong et al. @Xiong2023multiomics, combined shotgun metagenomics with plasma metabolomics in 149 ME/CFS patients (74 short-term, 75 long-term) and 79 healthy controls. Multi-omic integration achieved AUC=0.90 for ME/CFS classification, substantially outperforming species relative abundance alone (AUC=0.73) or metagenomic gene profiles alone (AUC=0.73). The plasma metabolome alone achieved AUC=0.82, already superior to taxonomic profiling. Key discriminating metabolites included sphingomyelins, diacylglycerols, ceramides, and reduced butyrate-related compounds—a metabolic fingerprint invisible to 16S sequencing.

Critically, Xiong et al.\ also revealed a temporal dissociation between dysbiosis and metabolic dysfunction. Short-term ME/CFS patients ($<$4 years) showed pronounced microbial dysbiosis with relatively preserved metabolic profiles, while long-term patients ($>$10 years) had largely resolved microbial dysbiosis but _worsened_ metabolic aberrations and more severe clinical symptoms. This finding suggests that early dysbiosis may initiate metabolic disruptions that become self-sustaining even after partial microbiome normalization—and that metabolomic profiling captures disease progression features that taxonomic surveys miss entirely.

=== Butyrate Molecular Mechanisms

Butyrate exerts diverse protective effects through multiple molecular pathways. Hodgkinson 2023 review describes key mechanisms relevant to barrier integrity and inflammation: HDAC inhibition epigenetically downregulates pro-inflammatory gene expression; tight junction proteins (occludin, claudin-1) are enhanced, strengthening intestinal barrier; MUC2 mucus production is stimulated, improving colonocyte protection; NF-$kappa$B signaling is suppressed, reducing cytokine production; and GPR41/GPR43 receptors mediate immune-modulatory effects. These butyrate-mediated actions provide mechanistic basis for observed deficiencies in ME/CFS.

#include "sec-01-misc/subsec-04-butyrate-molecular-mechanisms/warnings/warn-replication-status-not-yet-replicated.typ"

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

#include "sec-01-misc/subsec-05-gut-brain-axis/open-questions/oq-gut-serotonin-vagal-cardiovascular-link.typ"

#include "sec-01-misc/subsec-05-gut-brain-axis/speculations/spec-the-gut-vagal-aging-triad-butyrate-defic.typ"

#include "sec-01-misc/subsec-05-gut-brain-axis/speculations/spec-butyrate-deficient-hypoxia-signaling-as-.typ"

#include "sec-01-misc/subsec-05-gut-brain-axis/speculations/spec-muc2-deficiency-amplifies-vagal-afferent.typ"

#include "sec-01-misc/subsec-05-gut-brain-axis/speculations/spec-butyrate-mediated-treg-failure-drives-au.typ"

#include "sec-01-misc/subsec-05-gut-brain-axis/speculations/spec-butyrate-zonulin-dynamics-explain-wheat-.typ"

*Microbial Neurotransmitter Production.*

Intestinal bacteria synthesize or modulate multiple neuroactive compounds:

    - *Serotonin*: $>$90% of body's serotonin produced in gut; peripheral serotonin depletion has been reported in ME/CFS patients @Simonato2021tryptophan, while mouse models suggest central serotonergic hyperactivity may also occur @Lee2024serotonin—raising the possibility of compartmentalized dysregulation, though cross-species validation is needed
    - *GABA*: Produced by _Lactobacillus_ and _Bifidobacterium_ species
    - *Dopamine precursors*: Generated by intestinal bacteria
    - *Short-chain fatty acids*: Cross blood-brain barrier, modulate microglial function

=== Intestinal Permeability
<sec:leaky-gut>

Intestinal permeability (“leaky gut”) refers to impaired barrier function allowing bacterial products to enter systemic circulation.

#include "sec-01-misc/subsec-06-intestinal-permeability/achievements/ach-evidence-of-bacterial-translocation-in-m.typ"

#include "sec-01-misc/subsec-06-intestinal-permeability/warnings/warn-replication-status-partially-replicated.typ"

#include "sec-01-misc/subsec-06-intestinal-permeability/warnings/warn-limited-data-on-tissue-resident-lymphocy.typ"

*Severity Stratification: Critical Knowledge Gap.*

While baseline gut barrier dysfunction has been established in ME/CFS populations @GutPermeability2023, a critical question remains unanswered: *Do severe/bedbound patients exhibit higher baseline permeability markers than mild/moderate patients?*

The Maes et al.\ study @GutPermeability2023 did not stratify participants by disease severity, leaving uncertainty about whether zonulin, LPS, and sCD14 elevations correlate with functional impairment. This gap is significant because severity-dependent gut barrier dysfunction would suggest distinct pathophysiological mechanisms and treatment priorities for different patient subgroups.

#include "sec-01-misc/subsec-06-intestinal-permeability/hypotheses/hyp-severity-dependent-baseline-gut-permeabi.typ"

#include "sec-01-misc/subsec-06-intestinal-permeability/speculations/spec-chronic-vs-episodic-permeability-models.typ"

==== Clinical Vignettes: Contrasting Barrier Patterns.

To illustrate the distinction between episodic and chronic barrier dysfunction patterns proposed by the Severity-Dependent Barrier Dysfunction Model, consider two representative cases:

*Patient A (Ambulatory, Mild-Moderate):* A 35-year-old woman with mild ME/CFS maintains part-time work from home. She experiences predictable post-exertional malaise 24–48 hours after intentional exercise attempts (e.g., 15-minute walks). Between activity bouts, she reports baseline fatigue but manageable cognitive function. After wheat elimination, she notes that exercise-induced symptom exacerbations become milder and shorter in duration, suggesting successful prevention of exercise-triggered gut barrier failure and subsequent LPS-mediated inflammation.

*Patient B (Bedbound, Severe):* A 42-year-old man with severe ME/CFS is bedbound 22+ hours daily. He experiences continuous baseline symptoms (severe fatigue, cognitive impairment, nausea) with micro-exacerbations triggered by minimal activities such as 10 minutes of reading, sitting upright for meals, or brief conversations. No intentional exercise is possible. After wheat elimination, he reports a gradual reduction in symptom “noise floor” over 12–16 weeks—baseline nausea decreases, cognitive fog lightens slightly—but he remains functionally bedbound, consistent with chronic baseline permeability reduction rather than prevention of discrete exercise-induced LPS spikes.

These vignettes align with the Severity-Dependent Barrier Dysfunction Model: Patient A exhibits episodic barrier stress with recovery capacity, while Patient B demonstrates chronic sustained barrier compromise from minimal daily activities combined with impaired repair mechanisms.

#include "sec-01-misc/subsec-07-clinical-vignettes-contrasting-barrier-p/hypotheses/hyp-tissue-resident-t-cell-dysfunction-links.typ"

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

#include "sec-01-misc/subsec-08-intestinal-barrier-dysfunction-and-secon/warnings/warn-evidence-limitations-microbiome-mast-cel.typ"

*Microbiome–ECM Interactions.*

#include "sec-01-misc/subsec-08-intestinal-barrier-dysfunction-and-secon/speculations/spec-gut-microbiome-ecm-degradation-immune-ac.typ"

#include "sec-01-misc/subsec-08-intestinal-barrier-dysfunction-and-secon/speculations/spec-ecm-fragment-microbiome-bidirectional-me.typ"

#include "sec-01-misc/subsec-08-intestinal-barrier-dysfunction-and-secon/hypotheses/hyp-mcas-hit-arrow-r-barrier-dysfunction-arr.typ"

#include "sec-01-misc/subsec-08-intestinal-barrier-dysfunction-and-secon/warnings/warn-evidence-limitations.typ"

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
An earlier conference abstract @Pimentel2000SIBOcfs (Pimentel et al.\ 2000; n=31 CFS patients; Low certainty 0.25 --- conference abstract only, not peer-reviewed as full paper) reported 77% SIBO positivity by lactulose hydrogen breath test and a double-blind RCT of neomycin versus placebo. The study was underpowered and showed no significant difference between arms; breath test normalization correlated with symptom improvement in responders. This historically early finding is consistent with the direction of the Karhu 2023 data but should be interpreted with caution given study design limitations.

*Pathophysiology: Migrating Motor Complex Dysfunction.*

The migrating motor complex (MMC) is a cyclic pattern of electromechanical activity that “sweeps” bacteria from the small intestine to the colon during fasting.

    - MMC occurs every 90–120 minutes during fasting
    - Controlled by Interstitial Cells of Cajal linking smooth muscle to enteric nervous system
    - Studies suggest most patients with abnormal MMC develop duodenal bacterial overgrowth
    - MMC dysfunction allows bacteria to accumulate in small intestine

*Factors impairing MMC in ME/CFS:*

    - *Enteric nervous system dysfunction*: The small bowel MMC is driven autonomously by the enteric nervous system, not by the vagus nerve. Deloose et al. @Deloose2012MMCreview established that the vagus modulates gastric MMC phase III but does _not_ regulate small bowel MMC periodicity. Consequently, enteric neuropathy—rather than vagal dysfunction—is the primary autonomic mechanism for small bowel MMC failure. Motilin and ghrelin signaling disruption are additional pathways.
    - *Autonomic dysfunction (gastric phase)*: Vagal impairment reduces gastric MMC phase III amplitude and can delay gastroduodenal propagation, but this does not account for small bowel SIBO-predisposing MMC failure directly.
    - *Post-infectious autoimmunity*: Anti-CdtB and anti-vinculin antibodies (from prior gastroenteritis) damage Interstitial Cells of Cajal
    - *Chronic stress*: Sympathetic activation suppresses MMC
    - *Hypothyroidism*: Modulates enteric nervous system function
    - *Medications*: Opioids, anticholinergics impair motility

*SIBO Subtypes.*

Different bacterial populations produce different gases, leading to distinct clinical presentations:



#figure(
  table(
    columns: (auto, auto, auto, auto),
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

===== Hydrogen Sulfide as a Gut-Derived Mitochondrial Toxin <sec:h2s-mitochondrial-toxin>

Hydrogen sulfide (H#sub[2]S) produced by intestinal sulfate-reducing bacteria (_Desulfovibrio_, _Bilophila wadsworthia_, _Fusobacterium_) directly inhibits mitochondrial Complex IV (cytochrome _c_ oxidase) by binding to its binuclear CuB/heme~a#sub[3] active site --- the same site targeted by cyanide @Nicholls2013sulfideCOX. The inhibition is biphasic and partially reversible, but at the micromolar concentrations produced by bacterial overgrowth, it chronically reduces ATP output without causing acute cell death.

#include "sec-01-misc/subsec-04-small-intestinal-bacterial-overgrowth-si/hypotheses/hyp-gut-derived-h-sub-2.typ"

#include "sec-01-misc/subsec-04-small-intestinal-bacterial-overgrowth-si/warnings/warn-sulfur-containing-supplement-caution.typ"

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

#include "sec-01-misc/subsec-04-small-intestinal-bacterial-overgrowth-si/limitations/lim-breath-test-validity-esnm-anms-critical-.typ"

=== Digestive Function

Beyond motility, ME/CFS patients may have impaired digestive capacity:

    - *Pancreatic enzyme insufficiency*: Reduced lipase, protease, amylase secretion
    - *Bile acid malabsorption*: Impaired fat digestion; contributes to diarrhea
    - *Nutrient malabsorption*: Consequent to SIBO, intestinal permeability, and enzyme deficiency
    - *Hypochlorhydria*: Reduced gastric acid (sometimes from PPI overuse) predisposes to SIBO

*SIBO Subtype–Specific Nutritional Deficits.*

Wielgosz-Grochowska et al. @Wielgosz2024SIBOnutrition (n=67 newly diagnosed SIBO patients; observational, single-centre, Medium certainty 0.45; not ME/CFS-specific) found that deficiency burden varies significantly by SIBO subtype:

    - *H+/M+ mixed subtype* (51% of cohort): Lowest serum vitamin D, lowest serum ferritin — highest nutritional deficiency burden of all three subtypes; also had highest dietary fat intake
    - *M+ methane-dominant* (31%): Elevated folate (bacterial production), reduced fiber intake; >70% consumed excessive fat
    - *H+ hydrogen-dominant* (18%): Primarily reduced lactose tolerance
    - All subtypes: 87–97% were below the vitamin D adequate intake threshold

These findings suggest SIBO patients with mixed H+/M+ phenotype — likely the most severe subtype — should be evaluated for vitamin D deficiency and iron depletion as a standard part of workup. Given the 48% SIBO prevalence in ME/CFS patients (Karhu 2023 @SIBOKarhu2023), subtype-stratified nutritional assessment is clinically relevant.

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

#include "sec-01-misc/subsec-02-antibiotics/warnings/warn-sibo-recurrence.typ"

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

#include "sec-01-misc/subsec-05-prokinetics/warnings/warn-prokinetic-limitations.typ"

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

    - ME/CFS arm of a three-population double-blind RCT (48 female ME/CFS patients, 8 weeks) @Groeger2013Bifido. Note: the same paper studied psoriasis and ulcerative colitis cohorts; the ME/CFS results represent one arm of a multi-population study and have not been independently replicated in ME/CFS specifically.
    - Significantly *reduced inflammatory markers*: CRP (p=0.0285), IL-6, TNF-$alpha$ vs placebo
    - 71% showed reduced pro-inflammatory markers
    - Fatigue was not a primary outcome; inflammatory marker reduction is the key finding
    - Replication status: not independently replicated in ME/CFS

*Venturini 2019 Pilot (n=15)*: L. rhamnosus GG probiotic trial showed immune modulation and mood improvement without significant fatigue change. Note: small pilot, limited evidence.

*Multi-strain synbiotic (STOP-FATIGUE trial):*

    - 26 post-COVID ME/CFS patients, RCT, 3 months @Ranisavljev2025synbiotic
    - Combination: _L. rhamnosus_ DSM 32550 + _L. plantarum_ DSM 34532 + _B. lactis_ DSM 32269 + _B. longum_ DSM 32946 + FOS + zinc
    - Significant reduction in *post-exertional malaise* (p=0.02) — PEM was not the primary endpoint; general fatigue (the pre-specified primary outcome) did not reach significance. With multiple secondary endpoints measured, the PEM result is subject to multiple-comparisons uncertainty and should be considered exploratory. Additionally, the synbiotic contained zinc and FOS as well as four bacterial strains; the effect cannot be attributed to the probiotic component alone without arm separation.
    - Increased brain choline and creatine on spectroscopy (exploratory neuroimaging finding)
    - Limitation: small sample, post-COVID ME/CFS specifically; multi-component formulation; replication in a single-strain or zinc-free arm needed

#key-point(title: [Strain-Specific Probiotic Selection])[
Probiotic effects are highly strain-specific—a well-established principle in microbiology. _B. infantis_ 35624 shows anti-inflammatory evidence in one small ME/CFS-arm RCT (not independently replicated), while _L. casei_ Shirota may preferentially improve anxiety. Generic “probiotic” recommendations are unlikely to be helpful; strain selection should be evidence-based. Both findings await independent replication in adequately powered ME/CFS-specific trials.
] <key:probiotic-strain>

#include "sec-01-misc/subsec-10-probiotic-evidence-in-me-cfs/warnings/warn-probiotic-cautions.typ"

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

#include "sec-01-misc/subsec-12-fecal-microbiota-transplantation/speculations/spec-fmt-for-me-cfs.typ"

*Current Evidence:*

    - *Finnish pilot study (Salonen et al.\ 2023)*: Randomized, double-blind, placebo-controlled (n=11; 5 FMT, 6 autologous placebo) @Salonen2023FMT. Colonoscopy delivery. FMT was safe but did *not* improve fatigue (VAS, MFIS) or quality of life. The study was grossly underpowered and did not assess microbiota engraftment; the negative result is informative but not definitive.
    - *Norwegian “Comeback” study (Skjevling et al.\ 2024)*: Randomized, double-blind, donor FMT vs autologous placebo (n=80); 12-month follow-up @Skjevling2024FMTprotocol. Primary endpoint: FSS improvement #sym.gt 1.2 points at 3 months. Includes metagenomic sequencing, HRV, and cognitive testing. Results expected 2026.
    - *RESTORE ME study*: Placebo-controlled (n=160); underway since 2020.

#include "sec-01-misc/subsec-12-fecal-microbiota-transplantation/limitations/lim-fmt-association-established-causality-no.typ"

== Integration with Other ME/CFS Pathophysiology
<sec:gi-integration>

Gastrointestinal dysfunction interconnects with other ME/CFS mechanisms (these connections are synthesized into comprehensive multi-system models in Chapter @ch:integrative-models):

    - *Immune dysfunction* (Chapter @ch:immune-dysfunction): Intestinal permeability drives LPS-mediated immune activation; GALT dysregulation affects systemic immunity

    - *Autonomic dysfunction* (Chapter @ch:neurological): Vagal impairment causes gastroparesis and MMC dysfunction; dysautonomia and GI symptoms bidirectionally reinforce each other. A specific gut–vagal mechanism may operate through enterochromaffin cell serotonin release affecting vagal afferent signaling (Section @sec:gut-brain), with potential downstream effects on cardiovascular autonomic function (Chapter @ch:cardiovascular)

    - *MCAS* (Section @sec:septad): Bidirectional microbiome–mast cell regulation operates through butyrate-mediated epigenetic suppression and dysbiosis-driven histamine/LPS activation (Microbiome–Mast Cell Bidirectional Regulation, Section @sec:gut-metabolic-cascade); mast cells in gut mucosa affect motility and permeability, with potential interactions with SIBO

    - *Energy metabolism* (Chapter @ch:energy-metabolism): Butyrate deficiency reduces colonocyte energy; malabsorption impairs nutrient availability for mitochondrial function

    - *Neurological symptoms*: Gut-brain axis dysfunction contributes to cognitive impairment, mood disturbance, and autonomic symptoms

=== Cross-Condition Evidence: ME/CFS, Long COVID, Fibromyalgia

Butyrate deficiency shows evidence of cross-condition consistency across ME/CFS, Long COVID, and fibromyalgia. Kim 2026 documented shared butyrate deficiency between Long COVID and ME/CFS patients, suggesting common pathophysiological mechanisms. Watai 2025 environmental sensitivity illnesses demonstrate shared butyrate deficiency pattern across related conditions. Wang 2024 clinical evidence confirms consistency across these conditions. These findings support broader relevance of butyrate mechanisms in functional disorders.

#include "sec-01-misc/subsec-01-cross-condition-evidence-me-cfs-long-cov/warnings/warn-evidence-limitations-cross-condition-con.typ"

#include "sec-01-misc/subsec-01-cross-condition-evidence-me-cfs-long-cov/hypotheses/hyp-colonocyte-energy-crisis-propagates-to-m.typ"

#include "sec-01-misc/subsec-01-cross-condition-evidence-me-cfs-long-cov/hypotheses/hyp-butyrate-gpr41-43-vagal-signaling-defici.typ"

#include "sec-01-misc/subsec-01-cross-condition-evidence-me-cfs-long-cov/hypotheses/hyp-butyrate-tryptophan-competition-creates-.typ"

=== Gut-Brain Metabolic Coupling
<sec:gut-brain-metabolic>

The preceding sections establish that ME/CFS patients show reduced butyrate-producing bacteria (Achievement @ach:butyrate-deficiency), disrupted tryptophan metabolism, and impaired gut-brain axis signaling (Section @sec:gut-brain). Separately, evidence from neuroimaging demonstrates brain hypometabolism in ME/CFS (see Chapter @ch:neurological). The following speculation proposes a mechanistic link between these observations.

#include "sec-01-misc/subsec-02-gut-brain-metabolic-coupling/speculations/spec-gut-brain-energy-theft-hypothesis.typ"

=== The Oral Microbiome: An Underexplored Compartment
<sec:oral-microbiome>

ME/CFS microbiome research has focused almost exclusively on the intestinal tract. The oral microbiome---a distinct ecological niche harboring over 700 bacterial species---remains virtually unstudied in ME/CFS, despite well-established evidence that oral dysbiosis drives systemic inflammation in other conditions @Hasan2025periodontal @Hajishengallis2021periodontal.

Periodontitis affects approximately 47% of U.S.\ adults @Hasan2025periodontal. The disease provides a chronic portal for bacterial entry into the bloodstream: periodontal pathogens such as _Porphyromonas gingivalis_ and _Aggregatibacter actinomycetemcomitans_ disseminate via ulcerated pocket epithelium, triggering systemic elevations in CRP, IL-6, TNF-α, and IL-1β---the same inflammatory mediators consistently elevated in ME/CFS (Chapter @ch:immune-dysfunction) @Hasan2025periodontal @Hajishengallis2015periodontal. Notably, _P.\ gingivalis_ functions as a "keystone pathogen," manipulating complement and TLR crosstalk to disable immune clearance while sustaining inflammation @Hajishengallis2015periodontal\---a strategy that could compound the immune dysregulation already present in ME/CFS.

Three pathways make the oral-systemic connection potentially relevant to ME/CFS:

    - *Endothelial dysfunction*: Periodontal bacteremia promotes atherosclerotic plaque formation and impairs endothelial function @Hasan2025periodontal @Tattar2025periodontal, overlapping with the vascular dysfunction documented in ME/CFS (Chapter @ch:cardiovascular).
    - *Neuroinflammation*: _P.\ gingivalis_ gingipains cross the blood-brain barrier, promote amyloid-β accumulation, and drive microglial activation @Dominy2019gingipains. These mechanisms parallel the neuroinflammation documented in ME/CFS (Chapter @ch:neurological).
    - *Autoimmunity via citrullination*: _P.\ gingivalis_ citrullinates host peptides, generating neoantigens that trigger autoimmune responses---the established "two-hit" model for rheumatoid arthritis @Hasan2025periodontal. Whether citrullination could contribute to the GPCR autoantibodies observed in ME/CFS (Section @sec:cardiac-function) is unknown but mechanistically plausible.

#include "sec-01-misc/subsec-03-the-oral-microbiome-an-underexplored-com/open-questions/oq-is-the-oral-microbiome-an-overlooked-inf.typ"

#include "sec-01-misc/subsec-03-the-oral-microbiome-an-underexplored-com/speculations/spec-the-oral-dysbiosis-disability-vicious-cy.typ"

#include "sec-01-misc/subsec-03-the-oral-microbiome-an-underexplored-com/speculations/spec-chronobiologically-timed-butyrate-supple.typ"

#include "sec-01-misc/subsec-03-the-oral-microbiome-an-underexplored-com/speculations/spec-muc2-promoting-botanical-combination.typ"

#include "sec-01-misc/subsec-03-the-oral-microbiome-an-underexplored-com/open-questions/oq-should-butyrate-colonocyte-energy-compet.typ"
#include "sec-01-misc/subsec-03-the-oral-microbiome-an-underexplored-com/speculations/spec-exosome-gut-microbiome-bidirectional-cro.typ"

#include "sec-01-misc/subsec-03-the-oral-microbiome-an-underexplored-com/speculations/spec-fasting-upr-gut-liver-axis-er-stress-in-.typ"

#include "sec-01-misc/subsec-03-the-oral-microbiome-an-underexplored-com/speculations/spec-gut-microbiome-lipid-mediator-axis-spm-p.typ"
