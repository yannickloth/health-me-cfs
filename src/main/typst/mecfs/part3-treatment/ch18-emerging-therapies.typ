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

=== Ion Homeostasis Therapeutics: MDC002 (Mitodicure)
<sec:mdc002>

The acquired ischemic mitochondrial myopathy (AIMM) model (Section @sec:sodium-calcium-cascade in Chapter @ch:energy-metabolism) proposes a specific ionic cascade as the *likely* proximal driver of mitochondrial damage in ME/CFS (Hypothesis @hyp:vicious-cycle-integrated): ischaemia → proton accumulation → NHE1 activation → Na#super[+] overload → NCX1 reversal → NCLX block → Ca#super[2+] overload → mitochondrial injury. Because this is an *acquired* ionic pathology rather than a primary genetic mitochondrial disease, it is hypothesised to offer a pharmacologically tractable target: interrupt the ionic cascade, and mitochondrial function should recover.

MDC002, developed by Mitodicure GmbH (Frankfurt, Germany), is an oral small-molecule candidate designed to do exactly this, operating via dual ionic targets in skeletal muscle.

=== Mechanism of Action

MDC002 acts through two synergistic mechanisms:

    / *Na#super[+]/K#super[+]-ATPase stimulation*: MDC002 is designed to activate the sodium-potassium pump, which would correct intracellular sodium overload. By restoring the Na#super[+] gradient, it is predicted to eliminate the thermodynamic drive for NCX1 reversal (the NCX reversal potential $E_"NCX" = 3 E_"Na" - 2 E_"Ca"$ would shift back toward its normal range, restoring forward-mode calcium export).

    / *NCLX activation*: MDC002 is designed to activate the mitochondrial sodium-calcium exchanger NCLX (_SLC8B1_), the primary route of calcium efflux from the mitochondrial matrix. This is predicted to address the second arm of the calcium trap: even if some NCX1 reversal persists, activated NCLX would clear the mitochondrial calcium load.

Together these two mechanisms are designed to address both sides of the calcium accumulation problem simultaneously---reducing calcium influx via NCX1 restoration and increasing calcium efflux via NCLX activation. If successful, restored ionic homeostasis is hypothesised to prevent mitochondrial calcium overload, allow oxidative phosphorylation to recover, and reduce the ROS-driven endothelial damage that perpetuates ischaemia at the vascular level (Section @sec:vicious-cycle). These are mechanistic predictions from the AIMM model; no human pharmacodynamic data confirm these effects.

The compound is distinct from immunotherapies described earlier in this chapter: it does not target autoantibodies or immune activation, and Mitodicure positions it as effective across ME/CFS subtypes regardless of immunological aetiology @Mitodicure2024pipeline. The ionic cascade is proposed to produce the same downstream pathology whether triggered by GPCR autoantibody-mediated vasoconstriction, primary endothelial dysfunction, or other upstream mechanisms; no cross-subtype clinical evidence yet exists to confirm this.

=== Patent Basis and Targets

Three patent applications cover MDC002 and related compounds, specifying three molecular activities:

    + Sodium-hydrogen antiporter 1 (NHE1 / SLC9A1) *inhibitory* activity---reducing the proton-extrusion/sodium-import step that initiates the cascade
    + Phosphodiesterase-7 (PDE7) *inhibitory* activity---PDE7 inhibition elevates cAMP, which enhances Na#super[+]/K#super[+]-ATPase activity via beta-adrenergic signalling pathways and has anti-inflammatory effects on T cells
    + Substituted benzoxazole and benzofuran scaffolds---the chemical class of the lead compound

#speculation(title: [PDE7 Inhibition as Beta-Adrenergic Bypass])[
*Certainty: 0.25.* The PDE7 inhibitory activity is mechanistically notable: PDE7 inhibitors amplify cAMP signalling downstream of beta-2 adrenergic receptors---the same receptors whose autoantibody-mediated dysfunction Scheibenbogen and colleagues identified as an upstream trigger in a subset of patients. If beta-2AdR signalling is impaired (whether by autoantibodies or receptor internalisation), PDE7 inhibition could provide a downstream bypass: cAMP accumulates even when receptor activation is reduced, potentially restoring Na#super[+]/K#super[+]-ATPase stimulation via the intracellular pathway. This convergence between the ionic cascade and the autoantibody hypothesis is speculative; the shared mechanism has not been tested experimentally.
]

=== Development Status and Evidence Base

MDC002 is a preclinical candidate. Key milestones:

    - All mechanistic and lead-compound studies are complete (preclinical)
    - The German Federal Institute for Drugs and Medical Devices (BfArM) has reviewed preclinical data and confirmed they are sufficient to proceed to first-in-human studies (a regulatory safety milestone, not an endorsement of efficacy)
    - GLP toxicology and GLP safety pharmacology studies were planned to initiate following pre-seed financing completed in 2024 (Hesse state grant + EU funding)
    - Phase I first-in-human study was projected for autumn 2025, conditional on timely GLP study completion; confirmed status as of early 2026 is not available in published sources
    - *No human efficacy data are available.* All evidence for efficacy rests on preclinical mechanistic studies and the biological plausibility of the ionic cascade model

The scientific basis---the AIMM hypothesis and its supporting evidence---is peer-reviewed @Scheibenbogen2025muscle @WirthScheibenbogen2021muscle @Petter2022sodium @WirthScheibenbogen2020. The drug itself is novel with no published clinical trial data as of 2026.

#limitation(title: [MDC002: Preclinical Only---No Human Efficacy Data])[
MDC002 has not entered clinical trials as of early 2026. All claims about potential efficacy derive from the mechanistic plausibility of the AIMM model and preclinical (non-human) data. The ionic cascade model is well-supported by independent evidence from MRI sodium quantification @Petter2022sodium, electron microscopy @WirthScheibenbogen2021muscle, and proteomics @Scheibenbogen2025muscle, but no human pharmacodynamic or clinical outcome data for MDC002 exist. Significant uncertainty remains about: (1) whether oral bioavailability is sufficient to achieve therapeutic tissue concentrations; (2) whether correction of the ionic cascade in skeletal muscle will translate to patient-reported outcomes; (3) safety and tolerability in a patient population with impaired stress tolerance and energy metabolism; (4) whether the AIMM mechanism operates in all ME/CFS patients or only the ischaemic/vascular subtype. This entry will require updating as Phase I and II data become available.
]

#open-question(title: [Which ME/CFS Subtype Benefits from Ion Homeostasis Targeting?])[
The AIMM model predicts that patients with demonstrable vascular insufficiency, elevated muscle sodium on MRI, and post-infectious onset are the most likely responders to ionic cascade correction. Patients whose ME/CFS is predominantly autoimmune (elevated GPCR autoantibodies, responding to immunoadsorption) may benefit from the PDE7-inhibitory beta-adrenergic bypass effect of MDC002. Patients with predominantly central mechanisms (neuroinflammation, HPA dysregulation) may not benefit from peripheral ionic correction alone. Stratified trial design using intracellular sodium MRI (@Petter2022sodium methodology), GPCR autoantibody titres, and clinical subtype criteria is warranted.
]

== Mitophagy-Enhancing Compounds
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

// ===== New sections added 2026-03-26: Spooniverse gap-fill =====

== Rapamycin (Sirolimus) --- First Human Pilot Data
<subsec:rapamycin-updated>

Rapamycin inhibits mTOR (mechanistic target of rapamycin), a master regulator of cellular metabolism, growth, and autophagy. A theoretical rationale for ME/CFS has existed for several years; a 2025 uncontrolled pilot study provides the first human data on rapamycin in this population.

== Mechanism of Action
<subsubsec:rapamycin-mechanism>

mTOR hyperactivation suppresses autophagy---the cellular recycling process that clears damaged organelles, misfolded proteins, and dysfunctional mitochondria. Rapamycin is a sensitive CYP3A4 and P-glycoprotein substrate; co-administration with CYP3A4 inhibitors (azole antifungals, macrolides, some antivirals) substantially elevates blood levels and must be avoided unless doses are adjusted under specialist supervision. Oral rapamycin has highly variable bioavailability (approximately 15%) with food substantially altering absorption; once-weekly off-label dosing at 6 mg is far below transplant immunosuppression doses, but even intermittent mTOR inhibition produces measurable immunosuppression. Rapamycin is used off-label in ME/CFS; its approved indications are organ transplant rejection prophylaxis and lymphangioleiomyomatosis.

#speculation(title: [Proposed Mechanisms of Rapamycin in ME/CFS])[
*Certainty: 0.25.* Ruan et al. (2025) reported autophagy impairment markers (reduced LC3-II, elevated p62) in ME/CFS patients @Ruan2025rapamycin, though caution is warranted: these markers were measured in peripheral blood cells from the same uncontrolled pilot study that assessed treatment outcomes, and PBMC autophagy markers may not reflect autophagy flux in the skeletal muscle, neurons, and other parenchymal tissues where dysfunction is hypothesised to matter. Elevated p62 can indicate either blocked autophagy flux or increased substrate production (e.g., from oxidative stress); distinguishing these requires a bafilomycin challenge assay, which was not performed. If autophagy impairment is real and tissue-relevant, proposed mechanisms include: (1) *mitophagy restoration* --- clearing dysfunctional mitochondria to reduce energy deficit and ROS generation; (2) *immunomodulation* --- shifting T-cell balance toward regulatory phenotypes via mTORC1 suppression; (3) *senolysis* --- reducing cellular senescence and the senescence-associated secretory phenotype (SASP), though direct evidence of elevated senescence markers in ME/CFS has not been independently established. The unifying "TorS" paradigm proposes mTOR hyperactivation as a shared mechanism across post-acute infection syndromes @BarTana2025mTOR; this is a single speculative proposal, not a consensus framework. These mechanisms are extrapolated from aging biology and oncology; none has been validated in ME/CFS-specific experimental models.
]

== Clinical Evidence
<subsubsec:rapamycin-evidence>

#warning-env(title: [Rapamycin: Uncontrolled Pilot Only])[
The Ruan 2025 study has no placebo arm. The response rate cannot be distinguished from natural fluctuation, regression to the mean, or placebo effect without an RCT. Of 86 enrolled patients, only 40 completed the full 90-day protocol (53% attrition); the 74.3% figure is computed from full-protocol completers, not from all enrolled patients, introducing severe selection bias toward tolerators. Rapamycin carries known risks even at low doses: delayed wound healing, mucositis, dyslipidaemia, insulin resistance, and infection reactivation risk (including EBV and HHV-6, commonly reactivated in ME/CFS). Use outside a clinical trial or specialist supervision is not appropriate.
]

Ruan et al.\ (2025) conducted the first dedicated ME/CFS rapamycin pilot study across six clinical sites @Ruan2025rapamycin. Of 86 patients enrolled, 40 completed the full 90-day protocol (53% attrition). On an intention-to-treat basis, approximately 34% of enrolled patients (29 of 86, assuming all dropouts as non-responders) could be considered responders; 74.3% of full-protocol completers reported improvement in fatigue and PEM. These two figures --- 34% vs.\ 74.3% --- bound the true response rate; the honest denominator depends on why patients dropped out (intolerance vs.\ logistical withdrawal). Autophagy markers (LC3-II, p62) changed in the same direction as reported symptoms in responders; this is a consistency finding within an uncontrolled study, not independent mechanistic validation, and it is compatible with general immunosuppression producing both effects. No serious adverse events were observed with the once-weekly protocol.

mTOR inhibition also suppresses protein synthesis, which may be counterproductive in patients with significant muscle atrophy. The once-weekly protocol is intended to allow partial mTOR re-activation between doses; rapamycin's half-life is approximately 62 hours @Ruan2025rapamycin, meaning trough levels accumulate at steady state and the drug-free interval is limited. The claim of true pulsed inhibition should be regarded as a design intent rather than a confirmed pharmacokinetic outcome. If rapamycin produces benefit primarily through general immunosuppression rather than specific autophagy restoration, the dose-schedule rationale loses its specificity advantage over other immunomodulatory agents.

*Evidence Grade*: C --- single uncontrolled pilot (53% attrition; ~34% ITT response); mechanistically grounded; placebo-controlled trial required

== Autonomic Neuromodulation: Stellate Ganglion Block
<sec:stellate-ganglion-block>

The stellate ganglion is a bilateral cervical sympathetic ganglion (fusion of the inferior cervical and first thoracic ganglia at the C7--T1 level) providing sympathetic innervation to the head, neck, upper limbs, and heart. In clinical practice, stellate ganglion block (SGB) injects local anaesthetic at the C6 or C7 level (anterior to the ganglion proper) rather than directly at T1, because the C7--T1 approach carries pneumothorax risk. Transient Horner syndrome (ptosis, miosis, anhidrosis) is an expected consequence of a correctly placed block, not simply a complication.

== Rationale in ME/CFS and Long COVID
<subsubsec:sgb-rationale>

Several features of ME/CFS and Long COVID suggest sympathetic hyperactivation as a potentially treatable contributor. HRV studies in ME/CFS show a trend toward reduced parasympathetic tone, though findings are heterogeneous across studies and methodologies, and some cohorts show no significant sympatho-vagal difference from controls. Orthostatic tachycardia (POTS), present in a substantial minority of ME/CFS patients, is in part driven by sympathetic dysregulation. Liu and Duricka hypothesised that Long COVID fatigue, brain fog, and orthostatic intolerance resemble "sickness behaviour" perpetuated by autonomic dysregulation, and that neuromodulation at the sympathetic chain could interrupt this cycle @Liu2022SGB.

#speculation(title: [SGB Mechanism Hypothesis: Sympathetic Reset])[
*Certainty: 0.20.* The proposed causal chain is: infection → sustained sympathetic hyperactivation → vasoconstriction → endothelial hypoperfusion → symptom perpetuation; SGB interrupts the chain by temporarily blocking sympathetic output at C6--C7. Two aspects of this chain require scrutiny. First, endothelial hypoperfusion in ME/CFS may be driven by microclot obstruction, glycocalyx disruption, or primary endothelial dysfunction rather than by sympathetic vasoconstriction, in which case SGB would treat a downstream variable rather than a proximal cause. Second, local anaesthetic SGB lasts 6--12 hours; for a transient blockade to produce lasting benefit, the sympathetic hyperactivation must constitute a positive feedback loop that, once interrupted, does not re-establish itself. The neuroplasticity basis for such hysteresis in the sympathetic chain has not been demonstrated in ME/CFS or Long COVID.
]

== Clinical Evidence
<subsubsec:sgb-evidence>

Three publications report outcomes after SGB in Long COVID patients. Liu & Duricka 2022 (J Neuroimmunol; _n_ = 2) is a two-patient case report in which both patients improved across fatigue, PEM, cognitive dysfunction, and sleep @Liu2022SGB. Pearson et al.\ 2023 (Cureus; _n_ = 41) is a retrospective cohort from a chronic pain practice in which 86% reported symptom reduction; there is no control group @Pearson2023SGB. Duricka & Liu 2024 (Autonomic Neuroscience) is a retrospective chart review from the same group as the 2022 paper, confirming improvements in fatigue, PEM, cognition, and mood @Duricka2024SGB. Two of the three publications originate from the same authors, so this represents two independent data sources, not three.

#warning-env(title: [SGB: No Controlled Trial Data])[
All published SGB data in Long COVID are uncontrolled retrospective series or case reports. No randomised, sham-controlled trial has been conducted. Placebo response rates for invasive procedures are substantial (typically 30--50% in procedural pain literature). The procedure requires specialist training and carries procedural risks including haematoma, nerve injury, pneumothorax, and hoarseness or vocal cord paresis from recurrent laryngeal nerve involvement. Transient Horner syndrome (ptosis, miosis, anhidrosis) is an expected consequence of correct technique, not an adverse event. These data do not support routine clinical use.
]

Patients with objective evidence of sympathetic hyperactivation (resting tachycardia, reduced HRV, POTS, cold extremities) are sometimes proposed as more plausible candidates, based on mechanistic reasoning rather than comparative clinical data; no subgroup trial exists and this remains an untested hypothesis.

*Evidence Grade*: D --- limited to uncontrolled case series; mechanistically plausible; sham-controlled trial warranted

== Endothelial Restoration: Sulodexide
<sec:sulodexide>

Sulodexide (Aterina) is a highly purified glycosaminoglycan mixture (80% fast-moving heparin fraction, 20% dermatan sulphate) used in European vascular medicine. Its relevance to Long COVID and ME/CFS derives from endothelial glycocalyx restoration.

== Mechanism
<subsubsec:sulodexide-mechanism>

Endothelial glycocalyx damage in Long COVID has been documented directly by intravital microscopy and indirectly via plasma syndecan-1 shedding @Charfeddine2022sulodexide. Whether the same mechanism operates in ME/CFS outside Long COVID has not been directly measured; the overlap in microclot and endothelial findings makes it a plausible inference but not an established fact.

#speculation(title: [Glycocalyx Disruption Cascade and Sulodexide Rationale])[
*Certainty: 0.30.* When the endothelial glycocalyx is disrupted, the following downstream consequences are predicted by vascular biology: increased vascular permeability, platelet and leukocyte adhesion promoting thromboinflammation, loss of shear-stress mechanosensing impairing flow-dependent vasodilation, and exposure of subendothelial collagen promoting microclot formation. These are established vascular pathophysiology findings in glycocalyx-damaged endothelium generally; their contribution to ME/CFS symptom production is inferred, not demonstrated. Sulodexide replenishes heparan sulphate and dermatan sulphate glycocalyx components, and also exerts direct anticoagulant and anti-inflammatory effects independent of glycocalyx restoration. The clinical outcomes in the Charfeddine trial may therefore reflect anticoagulant and anti-inflammatory activity rather than glycocalyx-specific restoration.
]

== Clinical Evidence
<subsubsec:sulodexide-evidence>

Charfeddine et al.\ (2022) conducted the TUN-EndCOV study, a multi-centre controlled trial in Long COVID patients with persistent cardiac symptoms @Charfeddine2022sulodexide:

    - *Design*: 290 patients; sulodexide (_n_ = 144) vs.\ untreated controls (_n_ = 146)
    - *Duration*: 21 days
    - *Results*: Sulodexide group showed significantly greater improvement in endothelial function (thermal imaging), chest pain resolution (83.7% vs.\ 43.6%), and palpitation resolution (85.2% vs.\ 52.9%)
    - *Limitations*: Not blinded; no placebo; symptom outcomes subjective; specific to cardiac-symptom subgroup of Long COVID

#limitation(title: [Limited ME/CFS-Specific Data])[
Neither the Charfeddine trial nor a second trial by Gonzalez-Ochoa et al.\ (2024, _n_ ≈ 100) enrolled ME/CFS patients by diagnostic criteria. The relevance depends on whether ME/CFS patients share the endothelial glycocalyx disruption seen in Long COVID---a reasonable hypothesis given overlapping microclot and endothelial findings, but not directly tested.
]

#warning-env(title: [Anticoagulant Properties; Regulatory Status])[
Sulodexide has antithrombotic and anticoagulant properties. Patients already on therapeutic anticoagulation (warfarin, direct oral anticoagulants) or with bleeding disorders should not use sulodexide without haematology input, as the combination may be contraindicated. Patients co-administering aspirin, fish oil, antihistamines with antiplatelet effects, or other supplements affecting coagulation face additive bleeding risk and should discuss this with their prescriber. Oral bioavailability is approximately 6%, substantially lower than the parenteral form used in some European guidelines for acute indications; whether 50 LSU orally achieves meaningful systemic glycocalyx repletion is not definitively established. Sulodexide is not approved in the US; the supplement form (EndoProtek) is not subject to pharmaceutical quality controls and may not be pharmacokinetically equivalent to the licensed preparation used in clinical trials.
]

*Evidence Grade*: C --- controlled trial positive for Long COVID cardiac subgroup; ME/CFS extrapolation requires validation

== Viral Persistence: Maraviroc and Pravastatin
<sec:maraviroc-pravastatin>

Patterson et al.\ proposed that a subset of Long COVID and ME/CFS patients harbour persistent spike protein or viral antigens in non-classical monocytes, activating a monocytic-endothelial-platelet axis that sustains inflammation @Patterson2023maraviroc. This hypothesis is contested: independent researchers have challenged the flow cytometry gating methodology used to classify non-classical monocyte subsets and whether spike-protein persistence in monocytes has been reliably demonstrated by laboratories other than Patterson's. The controversy concerns the measurement technique itself, not only sample size. If the hypothesis is correct, treatment is motivated by a combination of:

    - *Maraviroc* (CCR5 antagonist): Blocks CCR5-mediated monocyte migration and activation; CCR5 is upregulated on non-classical monocytes in Long COVID
    - *Pravastatin* (or atorvastatin): Pleiotropic anti-inflammatory and endothelial-stabilising effects; reduces monocyte activation through NF-κB pathways

== Evidence
<subsubsec:maraviroc-evidence>

Patterson et al.\ (2023) — the same group that proposed the hypothesis — reported outcomes in 18 participants (case series) receiving maraviroc 300 mg twice daily plus pravastatin 10 mg daily @Patterson2023maraviroc:

    - Significant clinical improvement across neurological, autonomic, respiratory, and fatigue domains at 6--12 weeks
    - Significant reductions in vascular biomarkers sCD40L and VEGF
    - No serious adverse events

A Phase III RCT (maraviroc + atorvastatin, _n_ = 252) was underway at the time of writing; results should be consulted before drawing conclusions. An important confound in the Patterson case series is that pravastatin alone has well-documented NF-κB-mediated anti-inflammatory and endothelial-protective effects independent of CCR5; any benefit in the combination cannot be attributed to maraviroc specifically without a pravastatin-monotherapy arm. Maraviroc is approved as an antiretroviral for CCR5-tropic HIV-1; its use here is off-label.

#warning-env(title: [Case Series Limitations; Conflict of Interest; Drug Safety])[
The Patterson 2023 paper is an uncontrolled case series from the group that proposed the hypothesis. A 2024 corrigendum (PMID 38813382) corrected conflict of interest disclosures; the principals have reported financial relationships with the diagnostic laboratory that markets the non-classical monocyte assay used in this protocol, which should be weighed when interpreting the results. Maraviroc carries a black-box hepatotoxicity warning in the US prescribing information. Liver function tests (ALT, AST, bilirubin) should be obtained at baseline and monitored during treatment; if hepatotoxicity signs develop (jaundice, right upper quadrant pain, marked transaminase elevation), maraviroc must be discontinued. Maraviroc is a CYP3A4 substrate: concomitant use with CYP3A4 inhibitors (azoles, macrolides, some antivirals) requires dose reduction to 150 mg twice daily, while CYP3A4 inducers require dose increase to 600 mg twice daily. Standard 300 mg dosing should not be assumed safe in patients on interacting medications. Pravastatin was chosen in the Patterson protocol because it is not a CYP3A4 substrate; however, pravastatin is a P-glycoprotein substrate and maraviroc is a P-gp inhibitor, which may elevate pravastatin exposure; this interaction has not been characterised in this combination. Substitution with atorvastatin or simvastatin (CYP3A4 substrates) introduces additional interaction risks. Statin class risk of myopathy and rhabdomyolysis is relevant in ME/CFS patients with documented mitochondrial and muscular pathology. Phase III trial results are needed before clinical adoption.
]

*Evidence Grade*: D --- single uncontrolled case series; Phase III RCT ongoing; not recommended outside trial settings

== Immune Checkpoint Therapy: Pembrolizumab
<sec:pembrolizumab>

T-cell exhaustion---characterised by upregulated PD-1 and reduced cytotoxic capacity---has been documented in ME/CFS and Long COVID (Chapter @ch:immune-dysfunction). Pembrolizumab is an anti-PD-1 monoclonal antibody approved for multiple cancers; it releases the brakes on exhausted T cells by blocking the PD-1 inhibitory checkpoint. Use in ME/CFS or Long COVID is off-label and investigational only.

A critical unresolved question is whether PD-1-mediated T-cell exhaustion in ME/CFS is pathological or protective. In cancer, exhaustion is driven by tumour PD-L1 expression and represents a failure of immune surveillance. In ME/CFS, PD-1 upregulation may be a physiological brake on chronic immune activation, and releasing it could provoke uncontrolled autoreactivity or cytokine storm rather than beneficial immune restoration. The Phase 1 trial is specifically designed to characterise this risk before larger exposures.

The NINDS-sponsored Phase 1 trial PD1-PASC I (_n_ = 15, open-label) is investigating pembrolizumab in Long COVID patients with T-cell exhaustion. At the time of writing this was the first immune-checkpoint intervention to reach clinical trial stage in this population; readers should verify current trial status.

#warning-env(title: [Serious Immune-Related Adverse Events; Autoimmune Comorbidity Risk])[
Anti-PD-1 therapies carry a well-characterised risk of immune-related adverse events (irAEs): autoimmune pneumonitis, colitis, hepatitis, endocrinopathies, and --- in rare but documented cases --- fatal outcomes. Informed consent for the NINDS trial explicitly encompasses potentially fatal irAEs; this risk level acceptable in advanced cancer may not be acceptable in a non-life-threatening condition. ME/CFS patients with pre-existing autoimmune conditions (lupus, Sjögren's syndrome, inflammatory arthritis) are at substantially elevated irAE risk and would likely be excluded from the Phase 1 trial; the results may not generalise to autoimmune-overlap patients. This intervention must not be used outside a clinical trial.
]

*Evidence Grade*: E --- Phase 1 only; mechanistically motivated; clinical trial context only

== Psychedelic and Neuromodulatory Approaches
<sec:psychedelic-neuromodulatory>

== Psilocybin
<subsec:psilocybin>

Psilocybin is a 5-HT2A serotonin receptor agonist that produces acute psychedelic effects and --- more durably --- appears to reduce default-mode-network activity and promote dendritic spine growth in preclinical models. Whether "default-mode-network hyperactivity" is a consistent ME/CFS finding is contested: some neuroimaging studies show hypoactivation rather than hyperactivation, and the relationship to brain fog symptoms has not been established causally. Putative mechanistic relevance to ME/CFS includes serotonergic modulation of the tryptophan/kynurenine pathway (Chapter @ch:neurological) and preclinical anti-inflammatory effects via 5-HT2A signalling. However, 5-HT2A agonism does not directly modulate kynurenine pathway enzymes (IDO, TDO, KMO); any interaction between serotonergic and kynurenine dysregulation would be indirect and speculative.

There are no controlled trial data in ME/CFS. Available evidence consists of a single case report by Chopra et al.\ (2024) of a patient who self-administered psilocybin combined with MDMA and reported significant symptom improvement @Chopra2024psilocybin --- the combination makes it impossible to attribute the effect to psilocybin alone --- and a small pilot study by Bornemann et al.\ (Front Psychiatry, 2024) suggesting potential benefit for Long COVID neuropsychiatric symptoms.

#warning-env(title: [Legal Status, PEM Risk, and Drug Interactions])[
Psilocybin remains a Schedule I substance in most jurisdictions. Psychedelic sessions involve 4--6 hours of sustained cognitive and physiological activation; in severe and very severe ME/CFS this level of exertion is very likely to trigger significant post-exertional deterioration and is contraindicated. Any investigation in moderate ME/CFS must monitor for PEM as a primary safety endpoint. Psilocybin should not be combined with SSRIs or SNRIs without specialist guidance: SSRIs cause pharmacodynamic blunting of psychedelic effects via 5-HT2A downregulation, and the addition of a direct 5-HT2A agonist (psilocin, the active metabolite) to serotonin-elevating agents carries a clinically recognised risk of serotonin syndrome, not merely a theoretical one. Additionally, patients with a personal or family history of psychosis, schizophrenia, or bipolar disorder are considered contraindicated for psychedelic administration due to risk of triggering or exacerbating a psychotic episode; this is a standard exclusion criterion in clinical psilocybin research and must be assessed before any trial participation. The Chopra 2024 case used MDMA co-administration, a combination with additional serotonergic and cardiovascular risks not representative of psilocybin alone.
]

*Evidence Grade*: D --- zero ME/CFS trial data; anecdotal Long COVID evidence only; legal and safety barriers; mechanistically interesting

== Guanfacine and N-Acetylcysteine (Cognitive Protocol)
<subsec:guanfacine-nac>

Guanfacine is a selective α₂A-adrenergic agonist used in ADHD and PTSD. Its cognitive action derives from α₂A receptor stimulation in the prefrontal cortex, which strengthens working memory circuits by reducing noisy background firing. Beyond this prefrontal action, guanfacine acts at peripheral α₂ receptors in the brainstem vasomotor centre, reducing sympathetic outflow --- the mechanism underlying its antihypertensive effect. N-acetylcysteine (NAC) is a glutathione precursor with antioxidant and anti-inflammatory properties.

No published peer-reviewed trial data were identified in PubMed. Evidence is limited to case series and community reports. The proposed combination targets cognitive symptoms via complementary pathways: guanfacine potentially addressing noradrenergic prefrontal hypofunction (which, if it contributes to brain fog, is a hypothesis rather than an established mechanism in ME/CFS), and NAC potentially reducing oxidative stress and neuroinflammation consistent with the oxidative stress evidence base (Chapter @ch:energy-metabolism). A note on alternative interpretation: the combination has not been tested with a guanfacine-only arm, so benefit cannot be attributed to either component individually.

#warning-env(title: [Guanfacine: Orthostatic Hypotension, Discontinuation, and Off-Label Use])[
Guanfacine is a centrally-acting α₂-agonist with clinically significant cardiovascular effects beyond its prefrontal cognitive action: it reduces blood pressure and heart rate via brainstem vasomotor centre suppression. In ME/CFS patients with POTS or orthostatic intolerance, guanfacine may worsen orthostatic hypotension and is best initiated only under medical supervision with baseline and follow-up blood pressure and heart rate monitoring. Abrupt discontinuation causes rebound sympathetic activation (hypertension, tachycardia, agitation) --- a class effect shared with clonidine --- and a slow taper (e.g., dose reduction of approximately 25% every 1--2 weeks) is required. Use is off-label in ME/CFS. No specific dose has been validated in ME/CFS by a clinical trial; dosing reported in community case series (typically 1--2 mg nightly, extended-release formulation) reflects individual clinical decisions, not established evidence, and should not be adopted without prescriber guidance. Guanfacine half-life is approximately 17--18 hours (immediate release) or 18 hours (extended release); evening dosing is typically chosen to leverage peak sedation overnight and minimise daytime blood pressure effects.
]

*Evidence Grade*: D --- no controlled trial; mechanistically grounded; requires individual clinical evaluation with autonomic monitoring

== Nicotine Transdermal Patch
<subsec:nicotine-patch>

Nicotine activates nicotinic acetylcholine receptors (nAChRs), including α₇-nAChR, which plays significant roles in neuroimmune regulation (the "cholinergic anti-inflammatory pathway"), autonomic function, and prefrontal cognitive processing.

Leitzke (2023, Bioelectronic Medicine) proposed nAChR dysfunction as a unifying mechanism for Long COVID symptoms and reported a case series (_n_ = 4) showing improvement with 7.5 mg/day transdermal nicotine. Patient community surveys report high self-reported response rates, but these are uncontrolled self-report data from self-selected populations and cannot be interpreted as evidence of efficacy.

#warning-env(title: [Cardiovascular Caution; Drug Interactions; Addictive Potential])[
Nicotine is a cardiovascular stimulant. In POTS patients with already elevated sympathetic tone and resting tachycardia, nicotine may worsen tachycardia and hypertension. Transdermal nicotine produces sustained systemic levels, increasing cardiovascular exposure relative to intermittent dosing. Use is off-label in ME/CFS; the approved indication is smoking cessation.

*CYP1A2 and smoking transition note:* The CYP1A2 induction commonly attributed to "nicotine" in clinical interactions guidance is produced by polycyclic aromatic hydrocarbons in tobacco smoke, not by nicotine itself. Transdermal nicotine does not meaningfully induce CYP1A2. However, this creates a clinically important reverse interaction: patients who stop smoking and transition to the nicotine patch will experience CYP1A2 *de-induction* as hydrocarbon induction wanes. Plasma levels of CYP1A2 substrates (fluvoxamine, duloxetine, clozapine, olanzapine, theophylline) may rise significantly during the smoking-cessation transition period and should be monitored.

Nicotine is a developmental neurotoxin via nAChR activation and must not be used in pregnancy or while breastfeeding. Nicotine is addictive; risk-benefit assessment is required before initiation, particularly in patients with cardiovascular comorbidities. Nicotine withdrawal symptoms (irritability, cognitive impairment, autonomic fluctuation) overlap substantially with ME/CFS symptoms and could be misattributed to disease activity during cessation.
]

*Evidence Grade*: D --- case series only; mechanistically motivated; cardiovascular risk monitoring required


// ===== Additional gap-fill sections added 2026-03-26 =====

== Cytokine-Targeted Biologics
<sec:cytokine-targeted>

== Tocilizumab (IL-6 Receptor Blockade)
<subsec:tocilizumab>

Tocilizumab (Actemra) is a monoclonal antibody blocking the IL-6 receptor, approved for rheumatoid arthritis, giant cell arteritis, and cytokine release syndrome. Its use in Long COVID or ME/CFS is off-label, extrapolated from the IL-6 elevation hypothesis. IL-6 has been reported as elevated in some ME/CFS cohorts, though the literature is heterogeneous: Hornig et al. (2015) found IL-6 elevation only in patients with short illness duration ($lt.eq$3 years), not in long-duration patients, illustrating that "elevated in a subset" does not imply a consistent, reliable treatment target across the population.

A 2022 case report by Visvabharathy et al. described a rheumatoid arthritis patient who developed post-COVID fatigue and brain fog @Visvabharathy2022tocilizumab. Discontinuing tocilizumab (already prescribed for her RA) provoked symptom relapse; resuming it achieved resolution. An important confound is that stopping tocilizumab in an RA patient could independently provoke an RA flare producing fatigue, brain fog, and malaise indistinguishable from Long COVID symptoms; the case report does not fully resolve this alternative explanation. The observation is suggestive but cannot be interpreted as proof-of-concept for IL-6-driven Long COVID without an RA-free comparator.

No RCT of tocilizumab specifically for Long COVID fatigue syndrome or ME/CFS exists as of early 2026. A controlled trial with pre-stratification by serum IL-6 levels would be needed to determine whether IL-6 elevation is causally linked to symptoms rather than a non-specific inflammatory epiphenomenon.

#warning-env(title: [Black-Box Warnings; Immunosuppression Risk; Off-Label Status])[
Tocilizumab carries US black-box warnings for (1) serious infections (including tuberculosis reactivation; screening required before initiation) and (2) gastrointestinal perforation, which is a class risk for IL-6R blockers relevant even outside the inflammatory bowel disease context. Tocilizumab broadly suppresses IL-6 signalling, impairing the acute phase response to infection. ME/CFS patients already show evidence of NK cell dysfunction and impaired viral clearance; adding IL-6R blockade may further compromise infection surveillance. CRP is suppressed by tocilizumab and cannot be relied upon as an infection marker during treatment; alternative infection indicators (ferritin, procalcitonin, clinical signs) must be used. Use in Long COVID or ME/CFS is off-label. This drug requires IV infusion in a clinical setting and cannot be self-administered.
]

*Evidence Grade*: D --- single case report with RA confound; mechanism plausible in IL-6-elevated subgroup only; controlled trial absent

== Negative Trials: Inconclusive and Failed Biologics
<sec:negative-trials>

Several targeted biological therapies have been tested in randomised controlled trials and failed their primary endpoints. These negative results are scientifically important: they constrain viable hypotheses and protect patients from pursuing ineffective treatments. In each case, interpreting what the failure means --- and what it does not mean --- matters as much as the result itself.

== Efgartigimod (FcRn Blocker)
<subsec:efgartigimod>

Efgartigimod (Vyvgart; argenx) is an IgG1 Fc fragment that blocks the neonatal Fc receptor (FcRn), accelerating IgG catabolism and substantially reducing circulating IgG (all four subclasses). Effects on IgA, IgM, and IgE are less pronounced because these isotypes have lower FcRn dependence. The mechanism is distinct from immunoadsorption: rather than physically removing antibodies, efgartigimod reduces their half-life systemically.

The rationale: if pathogenic IgG autoantibodies (GPCR-fAbs, anti-nuclear, others) drive ME/CFS and Long COVID symptoms, reducing all circulating IgG via FcRn blockade should produce symptomatic improvement.

*Outcome:* The Phase 2 RCT (NCT05633407) failed to meet its primary endpoint. An open-label extension was subsequently terminated. Peer-reviewed publication of full results is pending as of early 2026.

#limitation(title: [Interpreting the Negative Result])[
A negative primary endpoint in a heterogeneous, unstratified trial does not disprove a biomarker-defined hypothesis. Plausible explanations for failure: (1) relevant autoantibodies may be locally produced in tissues (e.g., CNS, peripheral nerve) rather than circulating freely --- FcRn blockade reduces circulating IgG half-life but cannot address locally produced antibodies; (2) the trial enrolled a clinically heterogeneous population without pre-stratification for autoantibody positivity --- patients without detectable autoantibodies are structural non-responders who dilute any real signal; (3) sufficient IgG reduction may not have been achieved to neutralise the pathogenic fraction. *When peer-reviewed results are published*, the responder subgroup analysis stratified by baseline GPCR autoantibody titres will be the critical read-out. If the autoantibody-positive subgroup shows no benefit even after adequate IgG reduction, the circulating IgG autoantibody hypothesis would be substantially weakened and alternative mechanisms should be prioritised.
]

*Evidence Grade*: D --- Phase 2 RCT negative on primary endpoint; peer-reviewed results pending

== Temelimab (Anti-HERV-W-Env)
<subsec:temelimab>

Temelimab (GeNeuro/Theranexus) is a monoclonal antibody targeting the envelope protein of human endogenous retrovirus-W (HERV-W ENV). The rationale rests on compelling biological evidence that SARS-CoV-2 reactivates this ancient retroviral sequence, whose expressed protein is pro-inflammatory and neurotoxic.

*Biological foundation:* Charvet et al. (iScience, 2023) demonstrated HERV-W ENV expression in peripheral blood cells of 221 COVID-19 patients across multiple variants, with expression levels correlating with disease severity @Charvet2023HERV. Giménez-Orenga et al. (Front Immunol, 2022) showed persistent HERV-W ENV antigenemia in post-COVID patients, with anti-SARS-CoV-2 IgE strongly correlated with physical dysfunction ($r = -0.81$, $p < 0.01$) @GimenezOrenga2022HERV. The HERV-W hypothesis is also relevant to ME/CFS outside Long COVID: endogenous retroviral activation has been proposed as a contributor to neuroinflammation in ME/CFS following other viral triggers.

*Outcome:* The GNC-501 Phase 2 trial (GeNeuro/Theranexus; _n_ = 203) tested temelimab in Long COVID patients with persistent neuropsychiatric symptoms. The trial failed its primary endpoint. Peer-reviewed publication of results is pending as of early 2026.

#limitation(title: [Interpreting the Negative Result; Residual Uncertainty])[
The negative result is compatible with several interpretations that do not require abandoning the HERV-W hypothesis: (1) HERV-W ENV may have caused irreversible damage to oligodendrocytes or neurons that antibody blockade in circulation cannot reverse --- temelimab neutralises circulating protein but cannot address prior structural injury or intracellular viral sequences; (2) the trial population was likely not pre-stratified for HERV-W ENV serum positivity, meaning patients without active expression would be non-responders by definition; (3) HERV-W may be one of several parallel neuroinflammatory drivers, and blocking it alone is insufficient. However, an alternative interpretation deserves equal consideration: HERV-W expression is elevated in multiple sclerosis, schizophrenia, bipolar disorder, and Long COVID, which raises the possibility that HERV-W upregulation is a non-specific marker of immune activation rather than a causal driver. A failed Phase 2 trial increases the prior probability of this epiphenomenon explanation. *When peer-reviewed results are published*, the HERV-W ENV serum level stratified analysis will be critical; a null result in the ENV-positive subgroup would substantially weaken the causal hypothesis.
]

*Evidence Grade*: D --- Phase 2 RCT negative; HERV-W biology well-established; biomarker-stratified re-trial may be warranted

== Leronlimab (CCR5-Blocking Antibody)
<subsec:leronlimab>

Leronlimab (PRO 140; CytoDyn) is a humanised monoclonal antibody that binds and blocks CCR5. Its rationale in Long COVID overlaps with maraviroc's (Section @sec:maraviroc-pravastatin): CCR5 is upregulated on non-classical monocytes in Long COVID, and CCR5 blockade may reduce monocyte-driven inflammation and viral antigen persistence.

Gaylis et al. (Clin Infect Dis, 2022) conducted a double-blind RCT in 54 Long COVID patients (_n_ = 26 leronlimab, _n_ = 28 placebo) @Gaylis2022leronlimab. The trial missed its primary endpoint. A post-hoc subgroup analysis identified 14 of 26 treated patients who showed concurrent CCR5 upregulation on blood cell surfaces and symptomatic improvement; the 12 treated non-responders showed neither. Post-hoc subgroup identification in a failed trial is a well-established source of false positives: the "responder" classification was defined after unblinding, and multiple potential stratifiers (age, symptom severity, time since infection) could produce apparent subgroups by chance at this sample size.

#limitation(title: [Leronlimab vs Maraviroc: Same Target, Conflicting Signals])[
Both leronlimab and maraviroc target CCR5 but through different mechanisms (monoclonal antibody vs. small-molecule allosteric antagonist). The leronlimab RCT failed its primary endpoint but suggests a CCR5-responsive subgroup exists. The maraviroc case series showed benefit in an uncontrolled setting. Neither result resolves whether CCR5 blockade is genuinely effective. *The Phase III maraviroc RCT (n = 252) is the most important pending trial to resolve this question.* If positive, it would retrospectively strengthen the leronlimab responder signal, suggesting the CCR5 pathway is real but patient stratification (by non-classical monocyte CCR5 expression or spike antigen status) is required to achieve sufficient power. If negative, it would indicate the CCR5 signal is a statistical artefact of small uncontrolled studies.
]

*Evidence Grade*: D --- RCT negative on primary endpoint; post-hoc subgroup signal (high false-positive risk in post-hoc analysis of failed trial); Phase III maraviroc trial the critical test

= Emerging Metabolic Interventions
<sec:emerging-metabolic>

== GLP-1 Receptor Agonists (Semaglutide, Tirzepatide)
<subsec:glp1-agonists>

GLP-1 receptor agonists --- semaglutide (Ozempic/Wegovy) and tirzepatide (Mounjaro/Zepbound, a dual GLP-1/GIP agonist) --- are approved for type 2 diabetes and obesity. Their use in ME/CFS or Long COVID is off-label. Proposed mechanisms of relevance, all extrapolated from non-ME/CFS literature:

#speculation(title: [GLP-1 Agonist Mechanisms Extrapolated to ME/CFS])[
*Certainty: 0.20.* None of the following mechanisms has been validated in ME/CFS or Long COVID patients; each is inferred from the drug's known pharmacology in other disease contexts. (1) *Anti-inflammatory*: GLP-1R activation suppresses NF-κB-driven cytokine production in macrophages and microglia in preclinical and diabetic-population studies. (2) *Mast cell modulation*: GLP-1R is expressed on mast cells in preclinical models; agonism reduces degranulation in vitro; whether this translates to clinically meaningful MCAS suppression at therapeutic doses in humans is untested. (3) *Neuroprotection*: GLP-1R agonism promotes BDNF and reduces neuroinflammatory markers in Parkinson's disease and metabolic syndrome studies; early-phase trials in Parkinson's have shown modest signal (Athauda et al., 2017); Phase 3 Alzheimer's data were not yet published as of March 2026. (4) *Mitochondrial effects*: GLP-1R signalling activates AMPK/PGC-1α pathways in metabolic tissue; mitochondrial relevance in ME/CFS is speculative. (5) *Endothelial protection*: Reduces endothelial inflammation in cardiovascular trials. A multi-target rationale spanning five distinct mechanisms increases the prior probability that at least one will contribute --- but it also complicates falsifiability: a negative trial could be attributed to insufficient effect on any one mechanism while leaving the others intact.
]

A tirzepatide trial in Long COVID (_n_ ≈ 1,000, enrollment reportedly completed December 2025) is the largest prospective GLP-1 trial in this population; results are pending. A positive result in Long COVID would be important for ME/CFS but would not directly license GLP-1 use in ME/CFS patients without a Long COVID history; Long COVID and ME/CFS share clinical features but are not the same population, and a separate ME/CFS trial would be needed to extend any finding. The trial's secondary outcomes (which symptom domains respond, correlation with baseline inflammatory or metabolic markers) will determine whether subgroup-enriched ME/CFS trials are warranted.

#warning-env(title: [Black-Box Warnings; GI Risk; Off-Label Status])[
Semaglutide and tirzepatide carry US black-box warnings for thyroid C-cell tumours; they are contraindicated in patients with a personal or family history of medullary thyroid carcinoma (MTC) or multiple endocrine neoplasia type 2 (MEN2). Pancreatitis is a recognised adverse effect; these drugs should be used with extreme caution in patients with a history of pancreatitis or elevated amylase/lipase. GLP-1 agonists slow gastric emptying; in ME/CFS patients with dysautonomic gastrointestinal symptoms or small-fibre neuropathy, this may worsen nausea, bloating, and gastroparesis-like symptoms. GLP-1 agonists delay absorption of co-administered oral medications; drugs with narrow therapeutic windows (levothyroxine, oral immunosuppressants) may show altered absorption kinetics. Rapid weight regain occurs upon discontinuation. These are injectable medications (except oral semaglutide) requiring regular administration. Use in ME/CFS or Long COVID is off-label.
]

#limitation(title: [No Peer-Reviewed Controlled Data Available])[
As of March 2026, no peer-reviewed controlled trial data exist for GLP-1 agonists specifically in ME/CFS or Long COVID. The tirzepatide Long COVID trial results are pending. The biological rationale is plausible but entirely unvalidated by controlled human data in the target population.
]

*Evidence Grade*: D --- off-label; no peer-reviewed controlled data in ME/CFS or Long COVID; mechanistically plausible; major trial results pending

== Ornithine and Aspartate (LOLA)
<subsec:lola>

L-ornithine L-aspartate (LOLA) enhances ammonia detoxification via two routes: ornithine enters the urea cycle (stimulating carbamoyl phosphate synthetase), and aspartate feeds the TCA cycle and the argininosuccinate synthesis pathway.

#speculation(title: [Ammonia Hypothesis for ME/CFS Metabolic Subtype])[
*Certainty: 0.10.* Xiao et al. (2025) explored through computational modelling the possibility that impaired oxidative phosphorylation in ME/CFS generates subclinical hyperammonaemia via incomplete amino acid catabolism, and proposed LOLA as a potential intervention. No human data confirm that ME/CFS patients have elevated blood or breath ammonia. An important counter-argument: ammonia produced in peripheral tissues (particularly skeletal muscle during exercise) is normally cleared by the liver via the urea cycle, which has substantial spare capacity. Clinically significant hyperammonaemia requires either a very large peripheral ammonia burden or impaired hepatic urea cycle function; neither has been demonstrated in ME/CFS. A controlled trial would first need to confirm elevated ammonia in ME/CFS patients relative to controls before LOLA's therapeutic rationale could be evaluated. LOLA is contraindicated in severe renal impairment, as the substrate load can paradoxically worsen hyperammonaemia when renal urea clearance is impaired.
]

*Evidence Grade*: E --- computational modelling only; no clinical trial data; subclinical hyperammonaemia in ME/CFS unconfirmed

== Antiviral Monoclonal Antibodies: Awaiting Results
<sec:antiviral-mab>

Two anti-SARS-CoV-2 monoclonal antibodies appear in emerging therapy databases in the context of Long COVID and persistent viral antigen.

== Pemivibart (Pemgarda)
<subsec:pemivibart>

Pemivibart (AER002) is an anti-spike monoclonal antibody. A UCSF randomised controlled trial (_n_ = 36) investigated whether anti-spike antibody administration could reduce persistent spike protein antigen in Long COVID patients and thereby reduce symptoms. Results were presented at a spring 2025 symposium but have not been published in peer-reviewed form as of March 2026.

*What the trial will establish:* If pemivibart reduces persistent spike antigen and that reduction correlates with symptom improvement, it would provide the strongest direct evidence to date that spike protein persistence is a causal driver of Long COVID symptoms --- not just a biomarker. This would open a dedicated treatment pathway for the spike-persistence subgroup and inform the viral persistence sections of Chapters @ch:emerging-therapies and @ch:immune-dysfunction. Conversely, if antigen is reduced but symptoms are not, it would suggest that spike persistence is a downstream effect of immune dysregulation rather than its cause, shifting therapeutic priority toward upstream immune repair.

#limitation(title: [Awaiting Published Results])[
Results of the pemivibart Long COVID trial (_n_ = 36) are unpublished as of March 2026. The mechanistic premise --- persistent spike antigen driving symptoms --- is compatible with published evidence of spike protein detection months post-infection, but the frequency of persistent antigen and its causal role remain debated. Additional interpretive complexity: if spike persistence is a consequence of immune failure to clear antigen rather than an independent driver of symptoms, then antibody-mediated clearance would remove a biomarker without addressing the upstream immune dysfunction.
]

*Evidence Grade*: E --- unpublished trial; peer-reviewed results awaited

== Sipavibart (Kavigale)
<subsec:sipavibart>

Sipavibart (AZD3152; AstraZeneca) is an anti-spike monoclonal antibody approved for COVID-19 pre-exposure prophylaxis in immunocompromised individuals. The SUPERNOVA Phase 3 trial (Lancet Infect Dis, 2025; _n_ = 3,349) demonstrated efficacy for preventing symptomatic COVID-19 in immunocompromised patients --- *not* for treating Long COVID or ME/CFS.

Sipavibart has been listed in some emerging therapy databases as a Long COVID candidate. This classification reflects the speculative possibility that preventing new COVID-19 infections in immunocompromised and severely ill ME/CFS patients could prevent further immune deterioration. This is extrapolation, not a tested therapeutic claim: no trial of sipavibart for established Long COVID or ME/CFS exists. Its inclusion here is to clarify this distinction and prevent patient misinterpretation.

*Evidence Grade*: E --- not a Long COVID or ME/CFS treatment; included to clarify misclassification in some secondary databases

== Neuroinflammation Targeting: Bezisterim (NE3107)
<sec:bezisterim>

Bezisterim (NE3107; INmune Bio) is a selective inhibitor of the inflammatory branch of NF-κB signalling, designed to reduce neuroinflammation without broadly suppressing the immune system. According to INmune Bio's pharmacological characterisation, NE3107 inhibits the TNF-α- and IL-1β-driven inflammatory NF-κB cascade while preserving ERK-mediated neurotrophic and insulin-sensitising signalling and sparing anti-viral interferon responses. The selectivity claim is based on preclinical and in vitro data; whether this selectivity profile is maintained at therapeutic doses in humans has not been independently confirmed.

The ADDRESS-LC trial (NCT06847191) is a Phase 2/3 RCT of bezisterim in Long COVID, funded by a \$13.1M US Department of Defense CDMRP award. The trial was actively enrolling as of early 2026.

A positive result would provide the first controlled evidence that selective NF-κB neuroinflammation dampening is sufficient to improve Long COVID outcomes. Given the PET imaging evidence of microglial activation in ME/CFS (Chapter @ch:neurological), a positive bezisterim trial in Long COVID would motivate a directly analogous ME/CFS trial targeting patients with elevated neuroinflammatory burden. A negative result would require careful interpretation: it would not definitively refute the neuroinflammatory hypothesis for ME/CFS, because failure could reflect insufficient CNS drug exposure, wrong patient enrichment, or the disease having become self-sustaining independent of ongoing neuroinflammation rather than neuroinflammation being absent. What a negative result would justify is deprioritising NF-κB-specific neuroinflammation as a single-agent target in favour of upstream or multi-mechanism interventions.

#limitation(title: [Awaiting Trial Results; MOA Caveat])[
No efficacy data are available for bezisterim in Long COVID or ME/CFS as of March 2026. The selectivity characterisation (NF-κB inhibition with ERK preservation) derives from the drug developer's studies; independent pharmacological validation is not yet available in the published literature.
]

*Evidence Grade*: E --- Phase 2/3 trial ongoing; no published efficacy data; mechanistically plausible for neuroinflammatory subtype; selectivity characterisation pending independent validation

= Plasma Exchange (Therapeutic Plasma Exchange)
<sec:plasma-exchange>

Therapeutic plasma exchange (TPE, also called plasmapheresis) removes a patient's plasma and replaces it with donor albumin or fresh frozen plasma, thereby eliminating circulating proteins including autoantibodies, inflammatory mediators, fibrinogen, and microclots. The rationale for ME/CFS and Long COVID rests on the autoantibody hypothesis: if pathogenic GPCR-fAbs or other IgG autoantibodies drive symptoms (Section @sec:immunoadsorption), removing plasma should provide at least transient relief.

*Pre-2025 evidence:* Kiprov et al. (F1000Research, 2021) published a single case report (_n_ = 1) of a 68-year-old male with long-haul COVID who received multiple TPE sessions and returned to normal activities @Kiprov2021plasmapheresis. Inflammatory macrophage markers diminished, NK cell and cytotoxic CD8 T-cell markers increased, and the patient reported functional recovery. This proof-of-concept case stimulated wider interest in apheresis approaches.

*The sham-controlled trial (2025):* España-Cueto et al. (Nature Communications, 2025) conducted the first sham-controlled randomised trial of TPE in post-COVID condition (_n_ = 50; 25 TPE, 25 sham) @EspanaCueto2025plasmaexchange. Participants received six sessions over seventeen days. Both arms had comparable safety profiles. The TPE arm showed no improvement over sham on the primary composite outcome (functional status, symptomatology, quality of life, neurocognitive symptoms) or the prespecified secondary endpoints. The trial population was clinically heterogeneous; participants were not pre-stratified by autoantibody positivity.

#warning-env(title: [First Sham-Controlled Trial Was Negative: Significant Implications for Apheresis Rationale])[
The España-Cueto trial is methodologically the strongest study of plasma exchange in this population and its result was negative. This is important context for the autoantibody-removal hypothesis more broadly: a non-sham-controlled procedure like TPE is particularly susceptible to placebo effects, and the sham control was necessary to isolate the specific effect of plasma removal. The negative primary endpoint result significantly weakens the case for uncontrolled apheresis as a first-line intervention.

However, the trial does not definitively refute the autoantibody hypothesis. Two limitations constrain interpretation: (1) the trial was not enriched for patients with detectable GPCR-fAbs or other autoantibodies --- patients without pathogenic autoantibodies are structural non-responders, and their inclusion dilutes the signal; (2) TPE removes autoantibodies transiently, but if the B-cell source of autoantibody production is not addressed, titres rebound within weeks. More selective approaches --- immunoadsorption targeting specific antibody classes, or B-cell-depleting therapies upstream --- remain under investigation. *When biomarker-stratified sub-group analyses from this trial are published, the response pattern in autoantibody-positive vs. autoantibody-negative participants will be the most informative read-out for the hypothesis.*
]

*Note:* For immunoadsorption (a related but distinct apheresis approach targeting IgG specifically), see Section @sec:immunoadsorption.

*Evidence Grade*: B --- sham-controlled Phase II RCT (_n_ = 50), negative primary endpoint; autoantibody-unselected population; subgroup data pending
