#import "../shared/environments.typ": *

= Experimental and Emerging Therapies
<ch:emerging-therapies>

// TODO: Content pending migration from LaTeX

=== Transcranial Magnetic Stimulation in ME/CFS
<subsubsec:tms-mecfs>

// TODO: Content pending migration from LaTeX

== PEM Prevention Strategies
<subsec:pem-prevention>

// TODO: Content pending migration from LaTeX

=== Emergency PEM Protocol
<subsubsec:emergency-pem-protocol>

// TODO: Content pending migration from LaTeX

== Reversibility Windows
<subsec:reversibility-windows>

// TODO: Content pending migration from LaTeX

== Cycle Gain Measurement
<subsec:cycle-gain-measurement>

// TODO: Content pending migration from LaTeX

== Glutamatergic Modulation
<subsec:glutamatergic-modulation>

The DecodeME GWAS identification of glutamatergic synapse genes (_SHISA6_, _UNC13C_) at genome-wide significant or near-significant loci, combined with kynurenine pathway evidence for excitatory/inhibitory imbalance (Chapter @ch:neurological, Section @sec:neurotransmitters), identifies glutamatergic modulation as a genetically-grounded therapeutic target for ME/CFS @DecodeME2025 @MECFSScience2025decodeme2.

=== Memantine (NMDA Receptor Antagonist)
<subsubsec:memantine>

Memantine is an uncompetitive NMDA receptor antagonist approved for moderate-to-severe Alzheimer's disease. Its mechanism---blocking excessive glutamatergic excitation while preserving physiological signalling---is potentially relevant to the excitatory/inhibitory imbalance hypothesised in ME/CFS autonomic circuits (Hypothesis @hyp:glutamatergic-autonomic-bridge, Chapter @ch:integrative-models).

*Rationale:*

    - NMDA receptors are overactivated by quinolinic acid (kynurenine pathway product elevated during neuroinflammation)
    - DecodeME glutamatergic synapse genes suggest constitutional vulnerability to excitotoxicity
    - Memantine has shown benefit in fibromyalgia (which shares genetic architecture with ME/CFS: _OLFM4_ and _DCC_ appear in both GWAS)
    - Favourable safety profile; well-tolerated; minimal sedation compared to other NMDA modulators

*Proposed trial design:*

    - Population: ME/CFS patients meeting CCC criteria, stratified by DecodeME neuronal-gene PRS (high vs. low)
    - Intervention: Memantine 5 mg titrated to 10--20 mg over 4 weeks
    - Primary outcome: Composite autonomic dysfunction score (HRV, orthostatic heart rate, symptom questionnaire)
    - Secondary outcomes: Cognitive function (processing speed, working memory), fatigue severity, PEM frequency
    - Duration: 12 weeks double-blind, 12 weeks open-label extension
    - Key analysis: Interaction between PRS stratum and treatment effect (pharmacogenomic signal)

#warning-env(title: [No ME/CFS Trial Data])[
Memantine has not been tested in any ME/CFS clinical trial. The rationale is based on genetic evidence (DecodeME), metabolomic evidence (kynurenine pathway), and analogy to fibromyalgia. Preclinical validation of the glutamatergic hypothesis in ME/CFS-relevant models would strengthen the case for proceeding to a human trial. Any trial should include careful PEM monitoring as a safety endpoint, as NMDA modulation could theoretically worsen symptoms in some patients.
]

=== Mitophagy-Enhancing Compounds
<subsubsec:mitophagy-enhancers>

The DecodeME identification of autophagy genes (_FBXL4_ for mitophagy, _CCPG1_ for ER-phagy) at or near genome-wide significance suggests that impaired organelle quality control may contribute to ME/CFS in a genetically defined subset (Hypothesis @hyp:mitophagy-vulnerability, Chapter @ch:genetics-epigenetics) @MECFSScience2025decodeme2.

*Candidates:*

    - *Urolithin A*: A gut microbial metabolite that activates mitophagy via the PINK1/Parkin pathway. Commercially available as a supplement (Mitopure). Phase I/II trials in healthy elderly have demonstrated improved mitochondrial function and exercise capacity. No ME/CFS data exist.
    - *Nicotinamide riboside (NR)*: NAD+ precursor that enhances mitophagy through SIRT1/SIRT3 activation. Commercially available. One small ME/CFS pilot (Campagnolo et al.) showed non-significant trends toward improvement. NAD+ depletion has been documented in ME/CFS.
    - *Spermidine*: Polyamine that induces autophagy via multiple pathways (ATG5 acetylation, TFEB activation). Available as supplement. Epidemiological data associate higher spermidine intake with longevity and reduced cardiovascular disease. No ME/CFS data.

*Pharmacogenomic stratification:* All three compounds could be tested in a basket trial design stratifying patients by _FBXL4_ and _CCPG1_ genotype. If the mitophagy vulnerability hypothesis is correct, benefit should be concentrated in patients carrying autophagy risk variants, enabling a precision medicine approach.

#limitation(title: [Hypothesis-Driven, Not Evidence-Based])[
These treatment proposals derive from genetic association data (DecodeME) and mechanistic reasoning, not from clinical trials in ME/CFS. The _FBXL4_ locus is sub-threshold in the main DecodeME analysis, and gene assignment is not definitive. Mitophagy-enhancing compounds have not been tested in any ME/CFS trial. Preclinical validation (demonstrating target engagement and efficacy in ME/CFS-relevant cellular or animal models) should precede human trials. The proposed pharmacogenomic stratification requires access to DecodeME genotype data. These are research proposals, not clinical recommendations.
]

== Unified Autonomic Treatment Approach
<subsec:unified-autonomic>

The Diagnostic Mirage hypothesis (Speculation @spec:diagnostic-mirage, Chapter @ch:integrative-models) proposes that ME/CFS, POTS, hEDS, and MCAS may represent phenotypic fragments of a single autonomic vulnerability. If correct, treating the underlying autonomic dysfunction should improve all four "conditions" simultaneously, and a unified approach may outperform the current clinical practice of stacking separate treatments for each diagnosis.

*Candidate unified approaches:*

    - *Transcutaneous vagus nerve stimulation (tVNS):* Modulates both autonomic tone (parasympathetic enhancement) and neuroinflammation. Multi-site RCT currently recruiting for ME/CFS. Could simultaneously improve autonomic symptoms (POTS), inflammatory mediator release (MCAS), and central sensitisation (cognitive symptoms, pain).
    - *Pyridostigmine:* Acetylcholinesterase inhibitor enhancing parasympathetic tone. Used for POTS; may also reduce neuroinflammation via the cholinergic anti-inflammatory pathway. The LIFT trial (LDN + pyridostigmine) tests a combination that targets both autonomic regulation and immune modulation.
    - *Integrated protocol:* Rather than prescribing fludrocortisone for POTS, physiotherapy for hEDS, antihistamines for MCAS, and pacing for ME/CFS as independent treatments, an integrated protocol would target autonomic regulation as the upstream driver and measure outcomes across all four diagnostic categories simultaneously.

#speculation(title: [Unified Autonomic Protocol Trial Design])[

*Certainty: 0.25.* A pragmatic clinical trial could test the unified hypothesis directly. Enroll patients meeting criteria for ME/CFS plus at least one of POTS, hEDS, or MCAS. Randomise to either "unified autonomic approach" (tVNS + pyridostigmine + structured autonomic rehabilitation) or "standard stacked care" (separate treatments per each diagnosis). Primary outcome: composite disability score. Key secondary: proportion of patients showing improvement across $gt.eq$3 of 4 diagnostic categories simultaneously. If the unified approach produces coordinated improvement across categories while stacked care does not, this supports the single-syndrome hypothesis and could transform clinical practice.

*Limitations:* Pragmatic trials sacrifice internal validity for external validity. The unified intervention is complex, making it difficult to attribute effects to specific components. Ethical concerns about withholding established treatments in the control arm could be addressed by using add-on design (standard care + unified vs. standard care alone).
] <spec:unified-autonomic-trial>

