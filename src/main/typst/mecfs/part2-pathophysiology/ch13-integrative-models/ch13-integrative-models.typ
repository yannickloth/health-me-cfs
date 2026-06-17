#import "../../shared/environments.typ": *

= Integrative Models and Multi-System Pathophysiology
<ch:integrative-models>

== Evidence Level Classification
<tab:evidence-levels>

#table(
  columns: (4fr, 3fr, 3fr, 2fr),
  align: (center, left, left, left),
  stroke: (x: 0.5pt, y: 0.5pt),
  inset: 8pt,
)[
  *Evidence Level*, *Description*, *ME/CFS Status*, *Reliability*
  === === === ===
  #text(weight: "bold")[Established], Replicated across multiple independent cohorts with consistent methodology, Documented in ME/CFS (multiple studies, consistent findings), Highest confidence
  #text(weight: "bold")[Probable], Replicated in at least two cohorts with some methodological differences, Strong suggestive evidence in ME/CFS but requires replication, Moderate-high confidence
  #text(weight: "bold")[Preliminary], Single study or limited replication with consistent findings, Emerging evidence in ME/CFS, requires validation, Moderate confidence
  #text(weight: "bold")[Theoretical], Based on mechanistic inference from related conditions, Hypothesized but not yet tested in ME/CFS, Low confidence
  #text(weight: "bold")[Speculative], Limited mechanistic basis, no direct testing in ME/CFS, Highly uncertain, Lowest confidence
]

This chapter synthesizes multi-system pathophysiology documented in Chapters 6–12 into comprehensive models of ME/CFS. The core challenge in understanding ME/CFS is that individual system abnormalities—mitochondrial dysfunction, immune dysregulation, neurological impairment, cardiovascular deficits, endocrine disruption, gut dysbiosis—co-occur in patterns that suggest coordinated, self-reinforcing mechanisms rather than independent parallel pathology.

#include "sec-01-evidence-level-classification/limitations/lim-methodological-caveat-speculation-densit.typ"

A related caveat concerns the evidential standards applied to different types of claims throughout this paper. Subjective outcome measures (patient-reported fatigue, symptom severity, quality of life) are used as valid evidence when they support biological hypotheses but are critiqued as unreliable when they support interventions the paper argues against (notably in the PACE trial). This asymmetry is a genuine limitation of the paper's methodology, not a principled position: unblinding bias affects all unblinded studies regardless of whether the intervention is behavioural or biological, and the paper's standard should be consistently applied. The reader should note that the same self-report instruments cited as evidence for biological mechanisms elsewhere carry the same epistemological limitations when used in treatment trials. The chapter's historical analysis (Section @sec:historical-arc) attempts to address this asymmetry by presenting the strongest available form of the positions being critiqued before explaining why the critique survives the steelman, but residual asymmetry may remain and should be weighed by the reader.

== Multi-System Integration and Synthesis
<sec:synthesis>

The energy-immune-autonomic triad represents a core integrative framework for ME/CFS. Energy metabolism impairment (Chapter 6) reduces ATP available for immune function and autonomic regulation. Immune activation (Chapter 7) both consumes metabolic resources and disrupts autonomic signaling. Autonomic dysfunction (Chapters 8–10) impairs cerebral blood flow and gut motility, further compromising metabolic and immune function. These three systems form a self-reinforcing cycle where dysfunction in one domain amplifies dysfunction in others.

*Clinical evidence for integration:* The NIH deep phenotyping study (Walitt et al., 2024) identified coordinated abnormalities across these three domains in the same patients. Two-day CPET studies demonstrate functional consequence: reduced work capacity that fails to recover fully after 24 hours, consistent with multi-system impairment rather than isolated muscular defect.

== Systems Biology Perspective on ME/CFS
<sec:systems-biology>

Systems biology approaches ME/CFS as a network of interacting components rather than linear causal chains. The seven-biomarker panel (AMP, cDC1, LYVE1, IGHG2, FN1, VWF, THBS1) achieving 91% diagnostic accuracy demonstrates that ME/CFS pathophysiology spans metabolic, immune, and vascular systems simultaneously. Network analysis suggests these biomarkers represent nodes in a dysregulated network rather than independent markers.

*Therapeutic implication:* Single-target interventions have limited efficacy in complex network diseases. Multi-target approaches (CoQ10 + LDN, mitochondrial support + immune modulation, autonomic support + anti-inflammatory) may achieve better outcomes by simultaneously addressing multiple network nodes.

== Unifying Mechanisms Across Systems
<sec:unifying-mechanisms>

Several mechanisms operate across multiple systems to maintain chronic illness:

*Vicious cycles:* Metabolic dysfunction impairs immune clearance; chronic inflammation consumes metabolic resources; autonomic dysfunction reduces cerebral perfusion needed for repair. Each cycle self-reinforces, creating path dependency.

*Multi-lock hypothesis:* Multiple independent failure modes must be addressed simultaneously. Breaking one lock (e.g., mitochondrial support) may be insufficient if other locks (autoantibodies, autonomic dysfunction) remain engaged.

*Cycle dynamics:* Critical transitions explain sudden deteriorations and non-linear progression. Small perturbations may trigger large state changes when near thresholds.

*Research questions:* Distinguishing which mechanisms are primary drivers vs. secondary consequences remains challenging. Longitudinal studies tracking biomarker trajectories from acute onset are needed.

=== The Unified Post-Infectious Model: Impaired Physiological Resilience
<sec:unified-post-infectious-model>

Watton and Prusty @Watton2026unified have proposed a comprehensive reframing of ME/CFS as a disorder of impaired physiological resilience within post-infectious disease biology. This unified model integrates findings across immunological, vascular, metabolic, and virological domains into a single overarching framework centred on loss of adaptive capacity.

#include "sec-01-misc/subsec-01-the-unified-post-infectious-model-impair/achievements/ach-unified-mechanistic-model-of-me-cfs.typ"

#include "sec-01-misc/subsec-01-the-unified-post-infectious-model-impair/open-questions/oq-mechanistic-convergence-vs-divergence-ac.typ"

=== The Historical Arc: From Post-Infectious Framing to Biological Re-Framing
<sec:historical-arc>

The Watton--Prusty review @Watton2026unified provides a historical analysis contextualising current biological models within the broader evolution of ME/CFS understanding. This review synthesis should be read alongside primary historical sources and the responses of researchers whose work is critiqued. (Certainty: 0.45 — a review synthesis, not original historical research)

*Early post-infectious framing.* Descriptions of illness consistent with ME date to mid-20th-century epidemic outbreaks, most notably the Royal Free Hospital outbreak in London (1955). These accounts documented prolonged post-infectious disability with neurological and autonomic features, establishing an initial biomedical framing. The outbreak affected 292 staff members over several months and was investigated by multiple clinicians who concluded it represented an organic encephalomyelitis. However, in 1970, McEvedy and Beard retrospectively reclassified the Royal Free and other outbreaks as "mass psychogenic illness" — a records review, not an epidemiological investigation. This reclassification has itself been contested: physicians involved in the outbreak disputed the psychogenic interpretation, and a 2020 re-examination (Parsons, *Medical Humanities*) argued the psychogenic diagnosis reflected gendered assumptions about women's health rather than dispassionate analysis. Nevertheless, the reclassification introduced an enduring scepticism that influenced subsequent research priorities and funding allocations. The episode illustrates how explanatory frameworks, once established in the absence of definitive laboratory tests, can persist beyond the evidence that originally supported them — a pattern relevant to both the psychogenic and the biological framings of ME/CFS. @Watton2026unified

*The strongest case for the biopsychosocial model.* Engel's biopsychosocial (BPS) model, properly understood, was conceived as an *extension* of biomedical reasoning — not a replacement. It proposed that health and disease arise from interactions between biological, psychological, and social factors, with biological processes remaining a central component. Applied to ME/CFS, the strongest form of the BPS argument holds: (a) all chronic illnesses, not just ME/CFS, involve interaction between biological pathology and psychological/social adaptation — the question is one of weighting, not category; (b) in the absence of validated biomarkers, a model incorporating reversible perpetuating factors (deconditioning, activity avoidance, illness beliefs) is a reasonable clinical framework rather than an ideological position — it provides clinicians with actionable treatment targets while biological research continues; (c) the original PACE protocol included therapist-guided, patient-negotiated activity targets with explicit instructions not to push beyond tolerated limits, which is more nuanced than simple "graded exercise"; (d) pre-PACE trials (Fulcher and White 1997; Powell et al. 2001) showed benefit on both subjective and some objective measures, and these findings deserve engagement rather than omission; and (e) the 2021 Cochrane review of exercise therapy for CFS (Larun et al.) concluded that exercise therapy probably reduces fatigue — a finding consistent with, not contradicted by, the PACE data, and one that must be weighed against the patient survey evidence of harm for a complete picture. @Watton2026unified

*The PACE trial: evidence, critique, and contested interpretation.* The PACE trial (2011, $n = 641$) tested CBT and graded exercise therapy (GET) against specialist medical care and adaptive pacing therapy for CFS/ME, reporting that CBT and GET were "moderately effective." The trial has since become one of the most heavily scrutinised studies in modern medicine. Subsequent critiques by patients, independent researchers, and investigative journalists identified: outcome switching (post-hoc relaxation of recovery thresholds such that a participant could deteriorate on two primary outcomes and still be classified as "recovered"), reliance on subjective outcomes in an unblinded trial (participants knew which treatment they received), and claims of recovery that were inconsistent with objective measures (the 6-minute walk test showed no clinically significant between-group difference at final follow-up). Freedom of Information tribunal rulings compelled data release; independent reanalyses of the trial data (by Alem Matthees, and by Wilshire et al.) demonstrated that the originally reported treatment effects were substantially attenuated or eliminated when the protocol-specified outcomes and thresholds were used. These critiques led to the 2021 revision of UK NICE guidance, which removed GET as a recommended treatment and reframed CBT as supportive rather than curative. @Watton2026unified

*Counterpoints that must be weighed.* The PACE investigators maintain that: (a) the primary outcomes specified in the published protocol differed from those in the earlier trial registration, but both were published and available for comparison; (b) unblinding is inherent to any behavioural intervention trial and affects all such studies — singling out PACE applies a standard not consistently applied to other unblinded ME/CFS research; (c) self-report outcomes are the standard primary endpoints in most ME/CFS and chronic pain trials, including many studies cited favourably elsewhere in this paper — the epistemological problem of unblinding is universal in behavioural research, not unique to PACE; and (d) the 2021 NICE committee was subject to significant lobbying and parliamentary pressure from patient advocacy groups, raising the question of whether the reversal reflected pure evidential reassessment or also political dynamics — the same question the paper asks of PACE's original adoption, and one that should be symmetrically applied. Other national guidelines (Australian, Dutch) retained graded exercise recommendations after 2021. The NICE reversal is not the universal consensus the term "reversal" implies. @Watton2026unified

*The broader lesson — symmetrically stated.* ME/CFS illustrates two symmetrical risks in clinical reasoning: the risk of prematurely adopting explanatory models because they are convenient, scalable, or professionally reassuring (applicable to the BPS-as-applied, just as the BPS model might argue that premature adoption of unreplicated biological models carries the same risk), and the risk of dismissing treatment approaches before their evidence is fully and fairly evaluated. The availability of an explanation, whether psychosocial or biological, should not be conflated with its validity. In conditions of uncertainty, explanatory frameworks should remain continuously accountable to evolving evidence, with the same standards of scrutiny applied regardless of whether the framework supports or challenges the reader's prior beliefs. @Watton2026unified

*From chronic underfunding to mechanistic investigation.* The longstanding absence of definitive biomarkers or targeted therapies reflects, in part, a persistent mismatch between disease burden and biomedical investment. For decades, ME/CFS research lacked the funding to support large, well-phenotyped cohorts or to test systems-level hypotheses. The emergence of Long-COVID changed this: within months, unprecedented funding, infrastructure, and interdisciplinary efforts were mobilised, enabling more detailed investigation of biological processes relevant to ME/CFS. This investment demonstrated that post-infectious biological signals are detectable when studied at adequate scale — a finding that does not, on its own, resolve whether prior null results reflected insufficient methodology, genuine biological heterogeneity, or both. The Long-COVID experience suggests that increased investment in ME/CFS research is warranted, but the specific claims of the unified model must be judged on their own evidence, not on the funding differential. @Watton2026unified

*Additional historical context and limitations.* This historical analysis is a review synthesis, not original historical research. The PACE trial's original investigators maintain that methodological criticisms are overstated, and their published responses deserve engagement alongside the critiques. The McEvedy and Beard reclassification of the Royal Free outbreak has itself been challenged on methodological and sociological grounds. Engel's original BPS framework was developed to counter biomedical reductionism, and some ME/CFS researchers have argued that the paper's own multi-system model is broadly compatible with BPS principles, differing primarily in the weighting assigned to biological versus psychological factors. Readers should weigh the full record — trial protocols, reanalyses, investigator responses, independent critiques, and the 2021 NICE revision — when forming conclusions about this period of ME/CFS history. A steelman of any position is a prerequisite for a durable critique.

=== Neuroimmune Classification Framework
<sec:neuroimmune-classification>

#include "sec-01-misc/subsec-03-neuroimmune-classification-framework/achievements/ach-pots-me-cfs-and-long-covid-converge-on-s.typ"

#include "sec-01-misc/subsec-03-neuroimmune-classification-framework/hypotheses/hyp-gpcr-autoantibodies-as-a-shared-transdia.typ"

{{/* H4: GPCR AAb → mast cell sensitization loop (Tier 2, cert 0.35) */}}
#include "sec-01-misc/subsec-03-neuroimmune-classification-framework/speculations/spec-gpcr-autoantibody-mediated-mast-cell-sen.typ"

{{/* H6: CAP-autoantibody blockade (Tier 1, cert 0.40) */}}
#include "sec-01-misc/subsec-03-neuroimmune-classification-framework/speculations/spec-cholinergic-anti-inflammatory-pathway-bl.typ"

== Research Questions and Future Directions
<sec:questions>

Key unanswered questions in ME/CFS pathophysiology:

1. What is the temporal sequence of system failures? Do metabolic, immune, and autonomic abnormalities appear simultaneously or sequentially?
2. Which vicious cycles are primary drivers vs. secondary consequences?
3. How do pathophysiological mechanisms differ between severity levels and disease subtypes?
4. What biomarkers predict treatment response to specific interventions?
5. Can early intervention prevent transition from acute to chronic ME/CFS?

These questions frame research priorities for the coming decade.

=== Achievement: Seven-Biomarker Systems Panel
<ach:systems-biomarkers>

The identification of a seven-biomarker panel (AMP, cDC1, LYVE1, IGHG2, FN1, VWF, THBS1) that achieves 91% diagnostic accuracy represents a major achievement in ME/CFS research. This panel demonstrates that ME/CFS is a multi-system disease with coordinated abnormalities across metabolic, immune, and vascular domains.

*Significance:* This biomarker panel provides first objective diagnostic test with high specificity, enabling earlier diagnosis and treatment initiation. The multi-system nature of the panel validates integrative models developed in this chapter and suggests that effective treatments will need to address multiple systems simultaneously.

== Additional Integrative Topics

=== Carotid Body Dysfunction in ME/CFS
<sec:carotid-body-mecfs>

Carotid body chemoreceptor dysfunction may contribute to autonomic abnormalities and exercise intolerance in ME/CFS. Preliminary evidence suggests altered chemosensitivity to hypoxia and hypercapnia, potentially explaining abnormal ventilatory responses and dysregulated autonomic tone.

*Evidence:* Studies reporting abnormal ventilatory responses to exercise in ME/CFS may reflect carotid body chemoreceptor dysfunction. Peripheral chemoreceptor hypersensitivity could contribute to sympathetic overactivation and POTS.

*Research need:* Direct measurement of carotid body activity in ME/CFS patients vs. controls during rest and exercise.

=== Integrated Microglia Theory (IMT) in ME/CFS
<sec:imt-mecfs>

The Integrated Microglia Theory proposes that microglial priming and dysfunction underlies multiple ME/CFS symptoms. Activated microglia release pro-inflammatory cytokines, impair glymphatic clearance, and disrupt neurotransmitter balance.

*Evidence:* TSPO PET imaging shows microglial activation in ME/CFS. This activation may explain central fatigue, cognitive impairment, and sleep disruption through multiple pathways.

*Therapeutic implication:* Microglial modulators (LDN, minocycline) and interventions promoting glymphatic clearance may be particularly relevant.

=== Novel Frameworks for ME/CFS Pathophysiology
<sec:novel-frameworks>

Recent research has proposed several novel frameworks:

*Trained immunity:* Innate immune cells may retain epigenetic memory of initial infection, maintaining pro-inflammatory state long after pathogen clearance.

*Metabolic memory:* Epigenetic changes in mitochondrial and metabolic genes may perpetuate energy production impairment independent of ongoing triggers.

*Viral integration:* Persistent viral elements (endogenous retroviruses, EBV episomes) may maintain immune activation through low-level antigen expression.

=== Wheat-Primed Exercise Intolerance
<sec:wheat-primed-exercise>

The wheat-primed exercise hypothesis proposes that gliadin-mediated intestinal barrier dysfunction creates vulnerability to exercise-induced ischemia and endotoxemia. Wheat exposure compromises tight junctions; exercise then triggers increased intestinal permeability and bacterial translocation, amplifying PEM.

*Mechanism:* Gliadin increases zonulin and intestinal permeability. Exercise in this compromised state allows bacterial products (LPS) to enter circulation more readily, triggering systemic inflammation and severe PEM.

*Clinical implication:* Wheat elimination may reduce PEM severity in susceptible patients, particularly those with concurrent gastrointestinal symptoms.

=== Butyrate-Microbiome Combination Therapy
<sec:tributyrin-biome-combo>

Combined butyrate supplementation with microbiome-targeted interventions may enhance efficacy through synergistic mechanisms. Butyrate provides anti-inflammatory and gut barrier support, while microbiome modulation increases endogenous butyrate production and microbial diversity.

*Evidence:* Butyrate reduces inflammation via HDAC inhibition and strengthens tight junctions. Probiotics and prebiotics increase microbial butyrate production. Combining exogenous butyrate with microbiome support may achieve additive benefits.

*Clinical application:* Sodium butyrate 500–750 mg/day plus probiotic supplementation targeting butyrate-producing species.

=== MDC002: Additional Clinical Considerations

The MDC002 hypothesis extends to clinical observations beyond basic mechanism:

*Progressive nature:* The ionic myopathy may worsen over time as sodium handling becomes increasingly dysregulated.
*Treatment resistance:* Patients with established ionic remodeling may be less responsive to standard ME/CFS treatments.
*Biomarker potential:* Serum markers of sodium handling (NHE1 activity) could serve as diagnostic markers.

=== Sigma-1 Fluvoxamine: Extended Mechanisms

The Sigma-1 fluvoxamine approach has additional theoretical benefits:

*Neurosteroid regulation:* S1R modulates neurosteroid synthesis, potentially addressing multiple neurotransmitter imbalances simultaneously.
*Mitochondrial protection:* S1R agonism may directly protect mitochondria from calcium overload and oxidative stress.
*Autonomic stabilization:* S1R effects on autonomic nuclei could reduce POTS and orthostatic symptoms.

== Integrative Speculations

=== Recovery Capital: Finite Biological Reserves
<spec:recovery-capital>

*Certainty: 0.30.* The Recovery Capital model proposes that ME/CFS patients begin with finite biological reserves that deplete over time with crashes and chronic illness. Recovery potential may not be static but represents a continuum that can be objectively measured.

*Mechanistic basis:* Each crash episode and month of illness depletes reserves through multiple pathways: stem cell exhaustion, epigenetic hardening, autoantibody establishment, neural pathway consolidation. Early aggressive intervention—before significant reserve depletion—may have greater efficacy than same interventions applied later.

*Clinical implications:* Pediatric outcomes may partly reflect timing advantage (shorter illness duration before intervention). Front-loading treatment trades methodological clarity for potential preservation of intervention window.

*Testable predictions:*
1. Early-stage patients will show greater treatment response than late-stage patients with similar protocols.
2. Biomarkers of regenerative capacity will decline with illness duration and crash frequency.
3. Aggressive early intervention will preserve recovery potential better than conservative stepwise approaches.

=== Glutamatergic-Autonomic Bridge
<spec:glutamatergic-autonomic-bridge>

*Certainty: 0.35.* DecodeME GWAS identified glutamatergic genes (SHISA6, UNC13C) and neuronal development genes (CA10, DCC) associated with ME/CFS. This suggests a two-hit model: genetically vulnerable glutamatergic circuits are tipped into dysfunction by infection-driven quinolinic acid accumulation.

*Mechanistic basis:* Kynurenine pathway activation produces quinolinic acid, an NMDA agonist. In genetically vulnerable glutamatergic circuits, this creates excitatory/inhibitory imbalance. Simultaneously, disrupted neuronal development impairs autonomic regulatory centers, creating convergence between glutamatergic dysfunction and autonomic dysregulation.

*Therapeutic candidates:* Memantine (NMDA antagonist), riluzole (glutamate release inhibitor), and pregnenolone (S1R agonist with NMDA effects) may address this convergence.

*Testable predictions:*
1. ME/CFS patients will show abnormal glutamate/GABA ratios in CSF.
2. Genetic variants at SHISA6/UNC13C will correlate with symptom severity and autonomic measures.
3. NMDA antagonists will improve both cognitive and autonomic symptoms in genotyped subgroups.

=== Amitriptyline Signal Hypothesis
<spec:amitriptyline-signal>

*Certainty: 0.30.* DecodeME GWAS found r_g = 0.61 between ME/CFS and amitriptyline use, comparable to depression correlation (r_g = 0.60). This may reflect more than confounding: amitriptyline's NMDA antagonism targets same glutamatergic circuits identified at DecodeME genome-wide significant loci.

*Mechanistic basis:* Amitriptyline at low doses (5 mg) acts primarily as NMDA antagonist rather than antidepressant. Low-dose amitriptyline may thus act on genetically-identified neural substrates in ME/CFS, not merely palliate symptoms.

*Clinical implications:* Explains why low-dose amitriptyline shows efficacy in ME/CFS where standard antidepressant doses fail. Suggests precision psychiatry approach: target specific receptor abnormalities rather than treating fatigue generically as depression.

*Testable predictions:*
1. ME/CFS patients with SHISA6/UNC13C variants will respond preferentially to low-dose amitriptyline.
2. Amitriptyline response will correlate with glutamatergic biomarker profiles.
3. NMDA antagonists (memantine) will show similar efficacy patterns.

=== HSC Exhaustion Hypothesis
<spec:hsc-exhaustion>

*Certainty: 0.25.* Repeated inflammatory stress of PEM episodes—each triggering acute immune activation and cytokine release—may deplete hematopoietic stem cell (HSC) reserves over time. Accelerated HSC exhaustion would impair regenerative capacity and contribute to treatment resistance.

*Mechanistic basis:* Each crash represents an acute inflammatory event requiring rapid immune cell production. Chronic repeated activation may accelerate HSC turnover, leading to premature exhaustion. NF-κB activation (documented in ME/CFS immune cells) is a key pathway driving HSC stress.

*Evidence parallels:* HSC exhaustion patterns are documented in chronic infections and inflammatory diseases. ME/CFS patients show evidence of immune exhaustion phenotypes.

*Therapeutic implication:* Interventions reducing crash severity and frequency may preserve HSC function more than any direct HSC-targeted approach. Anti-inflammatory strategies targeting cytokine storms may be protective.

*Testable predictions:*
1. ME/CFS patients will show reduced HSC diversity in bone marrow samples.
2. Crash frequency and severity will correlate with HSC exhaustion markers.
3. Anti-inflammatory prophylaxis during high-risk activities will preserve HSC function.

=== Peptic Ulcer Parallel Hypothesis
<spec:peptic-ulcer-parallel>

*Certainty: 0.30.* Peptic ulcer disease was historically attributed to "stress" until Marshall and Warren identified H. pylori as bacterial cause with simple antibiotic cure. This history provides a template for ME/CFS: a complex syndrome assumed psychosomatic may have a persistent biological "molecular switch" maintaining it.

*ME/CFS candidates for molecular switch:* Three potential mechanisms may maintain ME/CFS independently of original trigger:
1. TRPM3 ion channel dysfunction affecting calcium signalling across immune, neuronal, and metabolic cells.
2. Epigenetic methylation changes at regulatory genes (gain at some loci, loss at others — in cancer via global DNMT3B redistribution; in ME/CFS more targeted, with HSAT2-specific loss-meCpG proposed) that persist after the triggering infection resolves (see the unified vector model, Chapter @ch:causal-hierarchy-formal @oq:consolidation-directionality).

*Clinical implication:* Each candidate predicts a different "eradication therapy": TRPM3-restoring drugs, methylation restoration strategies (methyl-donor support for loss-dominant patients, passive demethylation for gain-dominant patients — direction-dependent, not unidirectional targeting), or mitophagy enhancers. All share peptic ulcer pattern: simple persistent factor maintaining complex disease.

*Research priority:* Identifying which molecular switch is operative in individual patients could enable precision medicine approaches.

=== Diagnostic Mirage Hypothesis
<spec:diagnostic-mirage>

*Certainty: 0.35.* POTS, hEDS, and MCAS may represent phenotypic fragments of a single underlying autonomic vulnerability rather than distinct comorbid conditions. Current diagnostic fragmentation into separate specialties (cardiology, genetics, immunology) may create a "diagnostic mirage" where a single underlying mechanism is mischaracterized as multiple disorders.

*Mechanistic basis:* Genetic and physiological evidence suggests shared autonomic dysregulation underlies these conditions. POTS diagnostic criteria (≥30 bpm HR increase) has poor specificity (10–15% of healthy controls meet it). Comorbidity rates between these conditions in ME/CFS are higher than expected by chance.

*Clinical implication:* Integrated autonomic assessment may identify a single pathophysiology explaining multiple symptom clusters. Treatment targeting shared mechanisms may be more effective than condition-specific approaches.

*Testable predictions:*
1. Patients meeting multiple criteria (POTS + hEDS + MCAS) will share underlying genetic variants.
2. Autonomic function tests will show correlated abnormalities across conditions.
3. Targeted autonomic therapy will improve symptoms across all three conditions simultaneously.

#include "sec-01-misc/subsec-06-diagnostic-mirage-hypothesis/open-questions/oq-genetic-subtypes-in-me-cfs.typ"

=== Speculative Model Extensions and Diagnostic Integration

#include "sec-01-misc/subsec-07-speculative-model-extensions-and-diagnos/speculations/spec-extracellular-vesicle-mediated-cdr-propa.typ"

#include "sec-01-misc/subsec-07-speculative-model-extensions-and-diagnos/speculations/spec-ev-mediated-intercellular-communication-.typ"

#include "sec-01-misc/subsec-07-speculative-model-extensions-and-diagnos/open-questions/oq-state-dependent-cdr-dynamics-with-stress.typ"

#include "sec-01-misc/subsec-07-speculative-model-extensions-and-diagnos/open-questions/oq-pem-hysteresis-loop-quantification.typ"

#include "sec-01-misc/subsec-07-speculative-model-extensions-and-diagnos/speculations/spec-stochastic-cdr-state-transitions-with-in.typ"

#include "sec-01-misc/subsec-07-speculative-model-extensions-and-diagnos/open-questions/oq-multi-modal-biomarker-panel-for-post-inf.typ"

#include "sec-01-misc/subsec-07-speculative-model-extensions-and-diagnos/speculations/spec-lipid-raft-dynamics-coupled-to-mitochond.typ"

=== Connective Tissue Disorder Parallels and ECM Pathology

The high comorbidity between ME/CFS and hypermobile Ehlers-Danlos syndrome (hEDS) suggests shared pathophysiology involving extracellular matrix (ECM) regulation, hypoxia signaling, and connective tissue mechanics. The following hypotheses explore cross-disease parallels that may inform ME/CFS mechanisms and treatment approaches.

#include "sec-01-misc/subsec-08-connective-tissue-disorder-parallels-and/hypotheses/hyp-hif-1alpha-mitochondrial-ecm-self-reinfo.typ"

#include "sec-01-misc/subsec-08-connective-tissue-disorder-parallels-and/speculations/spec-systemic-tendinopathy-as-distinct-me-cfs.typ"

#include "sec-01-misc/subsec-08-connective-tissue-disorder-parallels-and/speculations/spec-tendinopathy-as-me-cfs-model-hif-1alpha-.typ"

#include "sec-01-misc/subsec-08-connective-tissue-disorder-parallels-and/speculations/spec-diabetic-microangiopathy-and-me-cfs-base.typ"

#include "sec-01-misc/subsec-08-connective-tissue-disorder-parallels-and/speculations/spec-marfan-syndrome-mechanical-failure-model.typ"

#include "sec-01-misc/subsec-08-connective-tissue-disorder-parallels-and/speculations/spec-scleroderma-me-cfs-tissue-specific-ecm-d.typ"

#include "sec-01-misc/subsec-08-connective-tissue-disorder-parallels-and/speculations/spec-alzheimer-disease-mmp-mediated-ecm-degra.typ"

== Inflammation Source Interaction Network: Extended Causal DAG
<sec:inflammation-source-dag>

#include "sec-08-inflammation-source-interaction-network-/speculations/spec-inflammation-source-interaction-network-.typ"

#include "sec-08-inflammation-source-interaction-network-/speculations/spec-resolution-failure-as-a-candidate-chroni.typ"
