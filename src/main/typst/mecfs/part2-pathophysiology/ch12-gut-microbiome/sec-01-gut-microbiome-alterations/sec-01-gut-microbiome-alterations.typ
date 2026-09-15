#import "../../../shared/environments.typ": *

== Gut Microbiome Alterations
<sec:microbiome>

=== Dysbiosis Patterns

Multiple studies have documented consistent patterns of gut microbiome alterations in ME/CFS patients @Giloteaux2016, though no single “ME/CFS signature” has been established.

#include "subsec-01-dysbiosis-patterns/achievements/ach-reduced-microbiome-diversity-in-me-cfs.typ"

#include "subsec-01-dysbiosis-patterns/warnings/warn-replication-status-partially-replicated.typ"

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

#include "subsec-01-dysbiosis-patterns/warnings/warn-ibs-co-morbidity-as-confounding-factor.typ"

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

#include "subsec-02-functional-capacity-changes/achievements/ach-deficient-butyrate-producing-capacity.typ"

#include "subsec-02-functional-capacity-changes/warnings/warn-replication-status-partially-replicated.typ"

=== Multi-Omic Integration: Beyond Taxonomic Profiling
<sec:multi-omic-microbiome>

Traditional 16S rRNA sequencing identifies _which bacteria_ are present but cannot determine _what they are doing_. This distinction matters: two patients with identical bacterial communities may produce entirely different metabolite profiles depending on gene expression, substrate availability, and inter-species interactions. Early ME/CFS microbiome studies relied exclusively on taxonomic profiling and achieved moderate classification accuracy (e.g., 82.93% in Giloteaux et al. @Giloteaux2016). Nagy-Szakal et al. @NagySzakal2017 combined fecal metagenomic and plasma metabolomic profiling, achieving in-sample classification AUC=0.893 with an 8-species bacterial model (cross-validated AUC=0.745). Crucially, their analysis revealed that IBS co-morbidity—not ME/CFS diagnosis—was the dominant driver of bacterial compositional differences, underscoring why metabolomic data are needed to disentangle ME/CFS-specific signatures from IBS confounding.

The most comprehensive multi-omic analysis to date, by Xiong et al. @Xiong2023multiomics, combined shotgun metagenomics with plasma metabolomics in 149 ME/CFS patients (74 short-term, 75 long-term) and 79 healthy controls. Multi-omic integration achieved AUC=0.90 for ME/CFS classification, substantially outperforming species relative abundance alone (AUC=0.73) or metagenomic gene profiles alone (AUC=0.73). The plasma metabolome alone achieved AUC=0.82, already superior to taxonomic profiling. Key discriminating metabolites included sphingomyelins, diacylglycerols, ceramides, and reduced butyrate-related compounds—a metabolic fingerprint invisible to 16S sequencing.

Critically, Xiong et al.\ also revealed a temporal dissociation between dysbiosis and metabolic dysfunction. Short-term ME/CFS patients ($<$4 years) showed pronounced microbial dysbiosis with relatively preserved metabolic profiles, while long-term patients ($>$10 years) had largely resolved microbial dysbiosis but _worsened_ metabolic aberrations and more severe clinical symptoms. This finding suggests that early dysbiosis may initiate metabolic disruptions that become self-sustaining even after partial microbiome normalization—and that metabolomic profiling captures disease progression features that taxonomic surveys miss entirely.

The same group has since extended this program longitudinally with an AI framework. Xiong et al. @Xiong2025BioMapAI followed 153 ME/CFS patients and 96 controls over 3–4 years (515 timepoints) and trained the deep neural network BioMapAI to integrate gut metagenomics, plasma metabolomics, immune profiling, blood laboratories, and 12 clinical symptoms into a single model. The integrated model classified ME/CFS from healthy controls with AUC=0.99 and was validated on held-out data and four independent external cohorts (Guo, Raijmakers, Germain, Che). Its connectivity map identified a dysbiotic microbiome–immune–metabolome crosstalk shared with the earlier cross-sectional analysis — decreased butyrate and branched-chain amino acid pathways, increased tryptophan and benzoate pathways, and heightened inflammatory innate-like T-cell activity — plus a benzoate-to-hippurate shift associated with sleep, emotional, and fatigue symptoms (developed further in @ch:integrative-models; see @ach:biomapai-multi-omics-integration and @hyp:biomapai-dysbiotic-crosstalk-benzoate-hippurate). This longitudinal AI result refines the earlier AUC=0.90 classification and supports the view that ME/CFS has a coordinated cross-compartment signature captured in the metabolome and microbiome together.

=== Butyrate Molecular Mechanisms

Butyrate exerts diverse protective effects through multiple molecular pathways. Hodgkinson 2023 review describes key mechanisms relevant to barrier integrity and inflammation: HDAC inhibition epigenetically downregulates pro-inflammatory gene expression; tight junction proteins (occludin, claudin-1) are enhanced, strengthening intestinal barrier; MUC2 mucus production is stimulated, improving colonocyte protection; NF-$kappa$B signaling is suppressed, reducing cytokine production; and GPR41/GPR43 receptors mediate immune-modulatory effects. These butyrate-mediated actions provide mechanistic basis for observed deficiencies in ME/CFS.

#include "subsec-04-butyrate-molecular-mechanisms/warnings/warn-replication-status-not-yet-replicated.typ"

*Tryptophan Metabolism Alterations.*

The gut microbiome significantly modulates tryptophan availability, with gut enterochromaffin cells producing $>$90% of the body's serotonin. ME/CFS patients show disrupted tryptophan pathways @Kavyani2022kynurenine @Abujrais2024tryptophan:

    - Reduced circulating serotonin and kynurenine affecting neurotransmission @Simonato2021tryptophan—notably, these changes appeared independent of cytokine levels, suggesting tryptophan dysregulation may be a primary feature rather than secondary to inflammation
    - Altered kynurenine pathway metabolites—lower 3-hydroxykynurenine and 3-hydroxyanthranilic acid, with elevated kynurenine/3HK ratios @Abujrais2024tryptophan
    - Kynurenine pathway hyperactivation may deplete NAD#super[+] via PARP activation, contributing to energy deficits @Dehhaghi2022kynurenine @Dehhaghi2022AD
    - Disrupted indole derivative production (aryl hydrocarbon receptor ligands) — see Hypothesis @hyp:ahr-gut-microbiome-axis

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

    - Viral infections may damage vagal afferents, impairing gut-brain communication @woo2023vagusinflammation
    - Dysbiosis alters vagal signaling patterns
    - Reduced vagal tone (common in ME/CFS) impairs anti-inflammatory cholinergic pathway @tracey2002inflammatoryreflex @bonaz2018vagusmicrobiota
    - Bidirectional dysfunction is evident: brain inflammation degrades gut function while gut dysfunction worsens neurological symptoms. The temporal and causal relationships remain unresolved. Longitudinal studies are needed to determine which comes first or whether both result from a common upstream cause. This bidirectional gut-brain interaction is one of several such cycles in ME/CFS, as discussed in Section @sec:unifying-mechanisms of Chapter @ch:integrative-models.

*Enterochromaffin Cell–Vagal Serotonergic Pathway.*

A specific mechanism linking gut dysbiosis to vagal impairment involves the enterochromaffin cell–vagal signaling pathway. Three established findings motivate this hypothesis:

    - *Neuropod cell–vagal synapses*: Kaelberer et al.\ demonstrated that enteroendocrine “neuropod cells” form direct synaptic connections with vagal afferent neurons, using glutamate for rapid gut-to-brain signaling @Kaelberer2018.
    - *Serotonin–vagal activation*: Enterochromaffin cells release serotonin that activates vagal afferents via 5-HT#sub[3] receptors @Barton2023 @Barton2025, linking gut serotonin availability to vagal tone.
    - *Butyrate–serotonin link*: Butyrate enhances serotonin production in enterochromaffin cells @Barton2025, and ME/CFS patients show deficient butyrate-producing bacteria (Achievement @ach:butyrate-deficiency).

Combining these observations leads to a hypothesis: butyrate deficiency in ME/CFS may reduce enterochromaffin serotonin release, which could in turn diminish vagal afferent signaling. However, no study has directly measured enterochromaffin serotonin output in ME/CFS patients, so this chain remains inferential. Wirth and Scheibenbogen's broader framework of neurotransmitter dysregulation in post-infectious illness @WirthScheibenbogen2025Neurotransmitter provides theoretical support, but the specific gut–vagal link proposed here extends beyond their analysis.

#include "subsec-05-gut-brain-axis/open-questions/oq-gut-serotonin-vagal-cardiovascular-link.typ"

#include "subsec-05-gut-brain-axis/speculations/spec-the-gut-vagal-aging-triad-butyrate-defic.typ"

#include "subsec-05-gut-brain-axis/speculations/spec-butyrate-deficient-hypoxia-signaling-as-.typ"

#include "subsec-05-gut-brain-axis/speculations/spec-muc2-deficiency-amplifies-vagal-afferent.typ"

#include "subsec-05-gut-brain-axis/speculations/spec-butyrate-mediated-treg-failure-drives-au.typ"

#include "subsec-05-gut-brain-axis/speculations/spec-butyrate-zonulin-dynamics-explain-wheat-.typ"

*The AhR-Tryptophan-Gut-Microbiome Axis.* Beyond the kynurenine pathway, gut-microbial tryptophan and indole metabolites signal through the aryl-hydrocarbon receptor (AhR), a ligand-activated transcription factor that regulates intestinal barrier integrity and systemic immune tone. Direct ME/CFS evidence (Esteban et al.\ @Esteban2026AhRGutMicrobiome) found altered stool AhR-agonist activity specifically associated with neurocognitive symptoms; the mechanism, its evidence base, and its open questions are developed below.

#include "subsec-13-ahr-gut-microbiome-axis/achievements/ach-esteban2026-ahr-neurocognitive.typ"

#include "subsec-13-ahr-gut-microbiome-axis/hypotheses/hyp-ahr-gut-microbiome-axis.typ"

#include "subsec-13-ahr-gut-microbiome-axis/open-questions/oq-ahr-causality-subgroup.typ"

#include "subsec-13-ahr-gut-microbiome-axis/warnings/lim-ahr-evidence-subgroup-specific.typ"

*Microbial Neurotransmitter Production.*

Intestinal bacteria synthesize or modulate multiple neuroactive compounds:

    - *Serotonin*: $>$90% of body's serotonin produced in gut; peripheral serotonin depletion has been reported in ME/CFS patients @Simonato2021tryptophan, while mouse models suggest central serotonergic hyperactivity may also occur @Lee2024serotonin—raising the possibility of compartmentalized dysregulation, though cross-species validation is needed
    - *GABA*: Produced by _Lactobacillus_ and _Bifidobacterium_ species
    - *Dopamine precursors*: Generated by intestinal bacteria
    - *Short-chain fatty acids*: Cross blood-brain barrier, modulate microglial function

=== Intestinal Permeability
<sec:leaky-gut>

Intestinal permeability (“leaky gut”) refers to impaired barrier function allowing bacterial products to enter systemic circulation.

#include "subsec-06-intestinal-permeability/achievements/ach-evidence-of-bacterial-translocation-in-m.typ"

#include "subsec-06-intestinal-permeability/warnings/warn-replication-status-partially-replicated.typ"

#include "subsec-06-intestinal-permeability/warnings/warn-limited-data-on-tissue-resident-lymphocy.typ"

*Severity Stratification: Critical Knowledge Gap.*

While baseline gut barrier dysfunction has been established in ME/CFS populations @GutPermeability2023, a critical question remains unanswered: *Do severe/bedbound patients exhibit higher baseline permeability markers than mild/moderate patients?*

The Maes et al.\ study @GutPermeability2023 did not stratify participants by disease severity, leaving uncertainty about whether zonulin, LPS, and sCD14 elevations correlate with functional impairment. This gap is significant because severity-dependent gut barrier dysfunction would suggest distinct pathophysiological mechanisms and treatment priorities for different patient subgroups.

#include "subsec-06-intestinal-permeability/hypotheses/hyp-severity-dependent-baseline-gut-permeabi.typ"

#include "subsec-06-intestinal-permeability/speculations/spec-chronic-vs-episodic-permeability-models.typ"

==== Clinical Vignettes: Contrasting Barrier Patterns.

To illustrate the distinction between episodic and chronic barrier dysfunction patterns proposed by the Severity-Dependent Barrier Dysfunction Model, consider two representative cases:

*Patient A (Ambulatory, Mild-Moderate):* A 35-year-old woman with mild ME/CFS maintains part-time work from home. She experiences predictable post-exertional malaise 24–48 hours after intentional exercise attempts (e.g., 15-minute walks). Between activity bouts, she reports baseline fatigue but manageable cognitive function. After wheat elimination, she notes that exercise-induced symptom exacerbations become milder and shorter in duration, suggesting successful prevention of exercise-triggered gut barrier failure and subsequent LPS-mediated inflammation.

*Patient B (Bedbound, Severe):* A 42-year-old man with severe ME/CFS is bedbound 22+ hours daily. He experiences continuous baseline symptoms (severe fatigue, cognitive impairment, nausea) with micro-exacerbations triggered by minimal activities such as 10 minutes of reading, sitting upright for meals, or brief conversations. No intentional exercise is possible. After wheat elimination, he reports a gradual reduction in symptom “noise floor” over 12–16 weeks—baseline nausea decreases, cognitive fog lightens slightly—but he remains functionally bedbound, consistent with chronic baseline permeability reduction rather than prevention of discrete exercise-induced LPS spikes.

These vignettes align with the Severity-Dependent Barrier Dysfunction Model: Patient A exhibits episodic barrier stress with recovery capacity, while Patient B demonstrates chronic sustained barrier compromise from minimal daily activities combined with impaired repair mechanisms.

#include "subsec-07-clinical-vignettes-contrasting-barrier-p/hypotheses/hyp-tissue-resident-t-cell-dysfunction-links.typ"

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

#include "subsec-08-intestinal-barrier-dysfunction-and-secon/warnings/warn-evidence-limitations-microbiome-mast-cel.typ"

*Microbiome–ECM Interactions.*

#include "subsec-08-intestinal-barrier-dysfunction-and-secon/speculations/spec-gut-microbiome-ecm-degradation-immune-ac.typ"

#include "subsec-08-intestinal-barrier-dysfunction-and-secon/speculations/spec-ecm-fragment-microbiome-bidirectional-me.typ"

#include "subsec-08-intestinal-barrier-dysfunction-and-secon/hypotheses/hyp-mcas-hit-arrow-r-barrier-dysfunction-arr.typ"

#include "subsec-08-intestinal-barrier-dysfunction-and-secon/warnings/warn-evidence-limitations.typ"

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

