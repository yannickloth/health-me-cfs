#import "../shared/environments.typ": *

= Energy Metabolism and Mitochondrial Function
<ch:energy-metabolism>

Energy production impairment is a central feature of ME/CFS pathophysiology and likely underlies the characteristic fatigue and post-exertional malaise that define the illness. The 2024 NIH deep phenotyping study by Walitt et al.\ provided important metabolomic data from cerebrospinal fluid analysis, documenting alterations in catecholamine and tryptophan pathway metabolites that link energy metabolism dysfunction to neurological symptoms @walitt2024deep. This chapter examines the detailed biochemical processes involved in cellular energy production and the multiple levels at which these processes appear disrupted in ME/CFS.

== Cellular Energy Production Overview
<sec:energy-overview>

=== ATP Synthesis
<sec:atp-synthesis>

Adenosine triphosphate (ATP) is the universal energy currency of cells, powering virtually all cellular processes. ATP is generated through three interconnected pathways:

==== Glycolysis

Glycolysis occurs in the cytoplasm and converts glucose to pyruvate:

    - *Substrate*: One glucose molecule (6 carbons)
    - *Products*: Two pyruvate molecules (3 carbons each), 2 ATP (net), 2 NADH
    - *Oxygen requirement*: None (anaerobic process)
    - *Rate*: Fast but relatively inefficient

Glycolytic intermediates also provide substrates for biosynthetic pathways (amino acids, lipids, nucleotides), making glycolysis central to cellular metabolism beyond energy production.

==== Krebs Cycle (Citric Acid Cycle)

The Krebs cycle occurs in the mitochondrial matrix and completes glucose oxidation:

    - *Substrate*: Acetyl-CoA (derived from pyruvate, fatty acids, or amino acids)
    - *Products per acetyl-CoA*: 3 NADH, 1 FADH#sub[2], 1 GTP (equivalent to ATP), 2 CO#sub[2]
    - *Function*: Generates reducing equivalents (NADH, FADH#sub[2]) for electron transport chain
    - *Regulation*: Controlled by substrate availability, product inhibition, and allosteric regulators

==== Electron Transport Chain and Oxidative Phosphorylation

The electron transport chain (ETC) in the inner mitochondrial membrane generates the majority of cellular ATP:

    - *Complex I (NADH dehydrogenase)*: Accepts electrons from NADH, pumps protons
    - *Complex II (Succinate dehydrogenase)*: Accepts electrons from FADH#sub[2], does not pump protons
    - *Complex III (Cytochrome bc#sub[1])*: Transfers electrons to cytochrome c, pumps protons
    - *Complex IV (Cytochrome c oxidase)*: Transfers electrons to O#sub[2] (forming H#sub[2]O), pumps protons
    - *Complex V (ATP synthase)*: Uses proton gradient to synthesize ATP from ADP + P#sub[i]

Complete oxidation of one glucose molecule yields approximately 30–32 ATP, though actual yield varies with cellular conditions.

// Insert Figure: Normal Energy Production
#include "../figures/fig-energy-production-normal.typ"

// Insert Figure: ME/CFS Energy Production Dysfunction
#include "../figures/fig-energy-production-mecfs.typ"

#include "../figures/fig-energy-cascade-normal.typ"
#include "../figures/fig-energy-cascade-mecfs.typ"
Figures @fig:energy-cascade-normal and @fig:energy-cascade-mecfs illustrate normal ATP production and the multiple impairment points in ME/CFS. ATP deficit cascades into multi-system dysfunction affecting muscle, brain, immune, cardiovascular, and autonomic systems. This multi-system cascade is synthesized with other pathophysiological mechanisms in Chapter @ch:integrative-models, particularly in the discussion of energy-immune-autonomic interactions (Section @sec:synthesis).

=== Normal Energy Metabolism
<sec:normal-metabolism>

==== Baseline ATP Requirements

Different tissues have vastly different energy demands:

    - *Brain*: 20–25% of resting metabolic rate despite 2% of body mass
    - *Heart*: Continuously contracting, requires constant ATP supply
    - *Skeletal muscle*: Variable demand; enormous increase during exercise
    - *Immune cells*: High energy demand during activation
    - *Liver*: Metabolic hub with substantial ATP consumption

The human body produces and consumes approximately 40–70 kg of ATP daily, with turnover occurring every few seconds.

==== Energy Demands During Exertion

Physical activity dramatically increases ATP demand:

    - *Muscle ATP consumption*: Can increase 100-fold during maximal exercise
    - *Immediate energy*: Phosphocreatine provides seconds of buffering
    - *Short-term*: Glycolysis provides rapid but limited ATP
    - *Sustained activity*: Requires oxidative phosphorylation
    - *Substrate shift*: From glucose to increasing fatty acid utilization

==== Recovery Processes

Following exertion, energy systems must be restored:

    - *Oxygen debt repayment*: Elevated metabolism to restore baseline
    - *Phosphocreatine resynthesis*: Rapid recovery (seconds to minutes)
    - *Glycogen resynthesis*: Hours to days depending on depletion
    - *Lactate clearance*: Conversion back to glucose (Cori cycle)
    - *Protein synthesis*: Repair of exercise-induced damage

== Mitochondrial Dysfunction in ME/CFS
<sec:mitochondrial-dysfunction>

Mitochondria are increasingly recognized as central to ME/CFS pathophysiology, with evidence for dysfunction at multiple levels.

=== Evidence for Mitochondrial Impairment
<sec:mito-evidence>

==== Studies Showing Reduced ATP Production

Multiple lines of evidence support impaired ATP generation:

    - *Lymphocyte studies*: Reduced ATP production in peripheral blood mononuclear cells
    - *Muscle biopsies*: Abnormal mitochondrial morphology and function in some patients
    - *Metabolomic profiles*: Patterns consistent with impaired oxidative phosphorylation
    - *Exercise studies*: Early transition to anaerobic metabolism (reduced anaerobic threshold)

*The ATP Profile Test*
One proposed biomarker approach measures:

    - ATP concentration in neutrophils
    - ATP production efficiency
    - Mitochondrial membrane potential

Studies using this approach have found reduced ATP levels and impaired efficiency in ME/CFS patients, though methodological debates continue.

#achievement(title: [Multi-Omics Biomarker Panel: Integrated Energy-Immune-Vascular Dysfunction])[
A landmark 2025 study by Heng et al. @heng2025mecfs, published in _Cell Reports Medicine_, applied multi-omics analysis to 61 ME/CFS patients (Canadian Criteria) matched with 61 healthy controls, revealing coordinated dysfunction across energy metabolism, immune function, and vascular systems. Key energy metabolism findings included elevated adenosine monophosphate (AMP) and adenosine diphosphate (ADP) in white blood cells, with median AMP levels of 312.2 nM in ME/CFS versus 147.2 nM in controls, reduced ATP/ADP ratio consistent with decreased ATP generation and cellular energy stress, and abnormal nicotinamide adenine dinucleotide (NAD#super[+]) metabolism affecting cellular energy production.

The study identified a predictive model comprising seven biological variables that distinguished ME/CFS patients with 85.2% sensitivity, 96.7% specificity, and 91% accuracy. These seven biomarkers span adenosine metabolism (AMP), immune functions (cDC1, LYVE1, IGHG2), and vascular factors (FN1, VWF, THBS1)—demonstrating that energy dysfunction in ME/CFS is not isolated but integrated with immune and vascular abnormalities. This multi-system integration suggests that future treatments may need to target energy metabolism, immune maturation, and vascular health simultaneously. The implications of this coordinated dysfunction for treatment strategy are discussed in Chapter @ch:integrative-models, particularly in the context of the Energy-Immune-Autonomic Triad (Section @sec:synthesis). For the systems biology perspective on this biomarker panel, see Achievement @ach:systems-biomarkers in Chapter @ch:integrative-models.
] <ach:heng-multiomics>

#warning-env(title: [Replication Status])[
Single study (Heng 2025, n=61 pairs) from one Australian center. No independent cohort has replicated the multi-omics biomarker panel or its diagnostic accuracy. The CART-derived 7-biomarker model requires prospective validation in independent populations with diverse demographics and diagnostic criteria before clinical application. Independent replication required.
]

#speculation(title: [Depression and ME/CFS May Share a Stress-Responsive Mitochondrial Failure Mode])[
Cullen et al. @Cullen2026ATP found that cells from young adults with major depression produce paradoxically elevated ATP at rest but show markedly reduced capacity to upscale energy output under metabolic stress—a pattern they term _stress-responsive mitochondrial failure_. This phenotype is conceptually similar to the post-exertional energy collapse in ME/CFS: near-normal baseline function until an energy demand threshold is exceeded, whereupon output fails catastrophically. Whether ME/CFS mitochondria share this specific regulatory defect (rather than, or in addition to, absolute ATP deficiency) remains to be directly tested in ME/CFS populations.
Study: ($n=18$, major depression cohort, Translational Psychiatry 2026, certainty: 0.40; relevance to ME/CFS is speculative).
] <spec:cullen2026-atp-fatigue>

==== Electron Microscopy Findings

Ultrastructural examination of mitochondria has revealed:

    - *Abnormal morphology*: Swollen, disrupted cristae structure
    - *Variable size*: Both enlarged and fragmented mitochondria
    - *Reduced number*: Decreased mitochondrial density in some tissues
    - *Intramuscular abnormalities*: Changes in muscle biopsy specimens

==== Functional Assays

Direct measurement of mitochondrial function shows:

    - *Respirometry*: Reduced oxygen consumption rates in some studies
    - *Enzyme activities*: Variable findings for individual ETC complexes
    - *Membrane potential*: May be altered, affecting ATP synthesis efficiency
    - *Calcium handling*: Impaired mitochondrial calcium uptake

==== Biomarkers of Mitochondrial Dysfunction

Several biomarkers indicate mitochondrial stress:

    - *Lactate*: Elevated at rest or with minimal exertion
    - *Pyruvate*: Altered lactate/pyruvate ratio
    - *Organic acids*: Abnormal urinary organic acid patterns
    - *Acylcarnitines*: Reflecting impaired fatty acid oxidation
    - *Coenzyme Q10*: Sometimes reduced

=== Mechanisms of Mitochondrial Damage
<sec:mito-damage>

==== Oxidative Stress

Reactive oxygen species (ROS) damage mitochondrial components:

    - *Electron leakage*: Complexes I and III leak electrons that generate superoxide
    - *Mitochondrial DNA damage*: mtDNA lacks histones and has limited repair
    - *Protein oxidation*: Damages ETC components
    - *Lipid peroxidation*: Disrupts inner membrane integrity
    - *Vicious cycle*: Damaged mitochondria produce more ROS

// Insert Figure: Normal Oxidative Stress Balance
#include "../figures/fig-oxidative-stress-normal.typ"

// Insert Figure: ME/CFS Oxidative Stress Vicious Cycle
#include "../figures/fig-oxidative-stress-mecfs.typ"

Figures @fig:oxidative-stress-normal and @fig:oxidative-stress-mecfs illustrate how oxidative stress creates a self-perpetuating cycle in ME/CFS, where excessive ROS production (5–10% electron leakage vs.\ normal 2%) combined with depleted antioxidants leads to progressive damage.

==== Calcium Dysregulation

Mitochondria buffer cytosolic calcium and use it for signaling:

    - *Calcium overload*: Excessive mitochondrial calcium triggers permeability transition
    - *ER-mitochondria crosstalk*: Abnormal calcium transfer between organelles
    - *Apoptosis signaling*: Calcium overload can trigger cell death pathways
    - *Enzyme regulation*: Many mitochondrial enzymes are calcium-sensitive

==== Mitochondrial DNA Alterations

Mitochondrial DNA (mtDNA) is vulnerable to damage:

    - *Mutations*: Point mutations accumulate with oxidative stress
    - *Deletions*: Large deletions impair multiple ETC components
    - *Copy number*: Altered mtDNA copy number in some ME/CFS studies
    - *Heteroplasmy*: Mixture of normal and mutant mtDNA

==== Impaired Mitophagy

Mitophagy removes damaged mitochondria:

    - *PINK1/Parkin pathway*: Marks damaged mitochondria for degradation
    - *Impaired clearance*: May allow dysfunctional mitochondria to persist
    - *Accumulation*: Damaged mitochondria continue producing ROS
    - *Quality control failure*: Network of damaged organelles

==== IgG Immune Complex--Mediated Mitochondrial Disruption
<sec:igg-mito-disruption>

While the mechanisms above describe cell-intrinsic pathways of mitochondrial damage, recent evidence demonstrates that circulating immune factors can directly injure mitochondria in vascular endothelial cells. Liu et al.\ (2026) @Liu2026IgGcomplexes isolated IgG immune complexes from post-infectious ME/CFS patients (n=39--40, including 15--16 with post-COVID ME/CFS) and applied them to human umbilical vein endothelial cells (HUVECs), revealing a distinct pattern of mitochondrial injury.

Patient-derived IgG induced mitochondrial fragmentation---a shift from elongated, networked mitochondria toward small, punctate organelles---detectable by confocal microscopy. Notably, this fragmentation did not result in bioenergetic collapse: Seahorse extracellular flux analysis showed that total ATP generation was maintained, with increased spare respiratory capacity and glycolytic compensation. This pattern suggests a stress adaptation response rather than outright energy failure, consistent with the clinical observation that ME/CFS patients maintain basal cellular function but fail under metabolic demand (@sec:energy-consequences).

#achievement(title: [IgG Transfer Reproduces Mitochondrial Pathology in Endothelial Cells])[
Liu et al.\ (2026) @Liu2026IgGcomplexes demonstrated that IgG immune complexes purified from ME/CFS patient sera are sufficient to induce mitochondrial fragmentation and inflammatory cytokine secretion (IL-1$beta$) when applied to healthy endothelial cells. This "transfer experiment" establishes that a circulating humoral factor---not cell-intrinsic defects---can drive the mitochondrial structural abnormalities observed in ME/CFS. Mass spectrometry proteomics revealed disease-specific signatures in the IgG complexes: classic ME/CFS IgG was enriched in extracellular matrix reorganisation pathways, while post-COVID ME/CFS IgG was enriched in hemostasis and blood clot formation pathways.
] <ach:igg-mito-transfer>

#warning-env(title: [Replication Status and Limitations])[
The mitochondrial fragmentation effect was predominantly observed in female patients; male-specific mechanisms remain unexplored. The HUVEC model relies heavily on glycolysis, which may mask oxidative phosphorylation effects that would manifest in more OXPHOS-dependent tissues (skeletal muscle, neurons). The IgG purification method did not effectively capture pentameric IgM, which may carry additional pathogenic activity. Not all ME/CFS patients' IgG induced fragmentation, consistent with disease heterogeneity. Independent replication is pending.
]

Several features distinguish this finding from the WASF3 pathway described below. While WASF3 acts through ER stress to disrupt Complex IV assembly (a cell-intrinsic mechanism), IgG-mediated fragmentation represents an extrinsic, immune-driven pathway that alters mitochondrial morphology without targeting specific respiratory chain complexes. The two mechanisms are not mutually exclusive: IgG-induced mitochondrial stress could trigger ER stress, which in turn upregulates WASF3, creating a convergent pathway toward mitochondrial dysfunction. This immune--metabolic bridge connects to the autoantibody and immune complex evidence in @ch:immune-dysfunction (@sec:autoimmunity) and to the endothelial dysfunction evidence in @ch:cardiovascular (@sec:endothelial).

==== WASF3 and ER Stress: A Specific Molecular Mechanism

A 2023 study by Wang et al., using muscle biopsies from the NIH intramural ME/CFS cohort, identified a specific molecular pathway linking cellular stress to mitochondrial dysfunction @wang2023wasf3.

#achievement(title: [ER Stress–WASF3–Mitochondrial Dysfunction Pathway: Druggable Mechanism])[
A 2023 study by Wang et al. @wang2023wasf3, using muscle biopsies from the NIH intramural ME/CFS cohort, identified a specific molecular pathway linking cellular stress to mitochondrial dysfunction. WASF3 (Wiskott-Aldrich syndrome protein family member 3) was significantly elevated in ME/CFS patient muscle biopsies compared to controls. This protein, when overexpressed, localizes to mitochondria and disrupts respiratory chain function.

The study revealed a mechanistic chain: endoplasmic reticulum (ER) stress activation drives increased WASF3 expression, which then translocates to mitochondria where it interferes with respiratory chain supercomplex assembly, particularly affecting Complex IV (cytochrome c oxidase), resulting in decreased oxygen consumption and reduced exercise endurance. Critically, pharmacologic inhibition of ER stress in patient-derived cells improved mitochondrial function, suggesting this pathway represents a potentially druggable target. ER stress modulators or WASF3 inhibitors could restore normal mitochondrial respiration.

The WASF3 mechanism provides a molecular explanation for several ME/CFS features: viral infection can trigger ER stress through viral protein accumulation (explaining post-infectious onset), once established ER stress can become self-perpetuating (explaining chronic persistence), and Complex IV impairment directly limits oxidative capacity (explaining exercise intolerance and reduced VO#sub[2]peak observed in CPET studies). This finding bridges the gap between cellular stress responses and the clinical manifestation of exercise intolerance, providing mechanistic support for the energy deficit model of ME/CFS.
] <ach:wasf3-mechanism>

#warning-env(title: [Replication Status])[
Single study (Hwang 2023) from the NIH intramural ME/CFS cohort. While the mechanism was validated in cell culture (pharmacologic ER stress inhibition rescued mitochondrial function), no independent cohort has replicated the WASF3 elevation finding in ME/CFS muscle biopsies. The “druggable target” claim remains preclinical. Independent replication in patient tissue is required before therapeutic development.
]

A 2025 muscle biopsy study in long COVID and ME/CFS patients confirmed
elevated WASF3 and ER stress markers with decreased Complex IV subunits,
and critically demonstrated that these abnormalities differ from bed
rest-induced deconditioning @SkeletalMuscle2025longCOVID
(Appendix @app:research-registry,
Section @sec:registry-skeletal-muscle).  A multi-modal study in
_Cell Reports Medicine_ further showed reduced ATP/ADP ratios in
immune cells, linking energy deficits to immune
dysfunction @CellReportsMedicine2025MECFS
(Section @sec:registry-cell-reports-medicine).

=== Consequences of Energy Deficits
<sec:energy-consequences>

==== Cellular Function Impairment

Inadequate ATP affects all cellular processes:

    - *Ion pumps*: Na#super[+]/K#super[+]-ATPase consumes 20–40% of cellular ATP
    - *Protein synthesis*: Highly energy-intensive process
    - *Cell signaling*: Many signaling pathways require ATP
    - *Membrane function*: Active transport and vesicle trafficking

==== Tissue-Specific Effects

Different tissues manifest energy deficits differently:

*Muscle*

    - Weakness and fatigue with minimal exertion
    - Early lactate accumulation
    - Delayed recovery from activity
    - Post-exertional pain and soreness

*Brain*

    - Cognitive dysfunction (“brain fog”)
    - Reduced neurotransmitter synthesis
    - Impaired synaptic function
    - Vulnerability to excitotoxicity

*Immune Cells*

    - Impaired T cell activation (requires metabolic reprogramming)
    - Reduced NK cell cytotoxicity
    - Abnormal cytokine production
    - Ineffective pathogen clearance

==== Connection to Post-Exertional Malaise

Mitochondrial dysfunction provides a compelling explanation for PEM:

    - *Limited reserve*: Baseline energy production is already compromised
    - *Exercise stress*: Activity depletes already-limited ATP stores
    - *Oxidative burst*: Exercise generates additional ROS, damaging mitochondria further
    - *Delayed recovery*: Impaired mitophagy and biogenesis slow restoration
    - *Cumulative damage*: Each exertion may worsen mitochondrial function
    - *Symptom cascade*: Energy deficit affects multiple organ systems

// Insert Figure: Normal Exercise Response
#include "../figures/fig-pem-normal.typ"

// Insert Figure: ME/CFS Post-Exertional Malaise
#include "../figures/fig-pem-mecfs.typ"

Figures @fig:pem-normal and @fig:pem-mecfs illustrate the critical distinction between normal exercise response (rapid recovery, positive adaptation) and ME/CFS PEM (ATP crisis, maladaptive inflammatory cascade, delayed deterioration). Repeated PEM episodes cause progressive decline.

*The Effort-Performance Disconnect: Physiological Mechanisms*

The profound subjective experience described in Section @sec:pem—the sensation of “giving everything” yet achieving minimal output—has direct physiological correlates that distinguish ME/CFS from psychological disorders or deconditioning.

*Central Nervous System Effort Signaling:*

The brain's effort-generating systems appear to function normally or even hyperactivate in ME/CFS:

    - *Motor cortex activation*: fMRI studies suggest normal or increased motor cortex activation during attempted movement
    - *Catecholamine mobilization attempts*: The brain attempts to mobilize energy reserves through sympathetic activation
    - *Subjective intensity*: The sense of maximal effort reflects genuine CNS activation and stress response engagement
    - *Central command*: Motor planning and initiation circuits generate normal or excessive drive

The Walitt et al.\ 2024 NIH study documented altered effort preference rather than reduced effort capability @walitt2024deep. ME/CFS patients can generate effort signals, but the consequences of doing so (PEM) appropriately modify behavior. This represents adaptive learning, not primary motivation deficit.

*Peripheral Energy Production Failure:*

Despite normal or excessive central drive, peripheral tissues cannot respond proportionally:

    - *Mitochondrial ATP deficit*: Muscle cells cannot generate sufficient ATP to sustain contraction despite receiving motor neuron signals
    - *Ion pump failure*: Inadequate ATP impairs Na#super[+]/K#super[+]-ATPase function, disrupting muscle excitability and contraction
    - *Calcium handling impairment*: Energy-dependent calcium reuptake into sarcoplasmic reticulum fails, preventing muscle relaxation and subsequent contraction
    - *Metabolite accumulation*: Lactate, hydrogen ions, and other metabolites accumulate rapidly, triggering muscle pain and afferent signaling
    - *Neuromuscular transmission stress*: Repeated activation with insufficient recovery depletes neurotransmitter and impairs synaptic function

*Cardiovascular Oxygen Delivery Limitations:*

The two-day CPET data demonstrate that oxygen delivery and utilization fail during and after exertion @keller2024cpet:

    - *Chronotropic incompetence*: Heart rate fails to increase appropriately, limiting cardiac output
    - *Reduced stroke volume*: Autonomic dysfunction impairs venous return and cardiac filling
    - *Impaired oxygen extraction*: Oxygen pulse (VO#sub[2]/HR) declines on Day 2, suggesting reduced tissue oxygen uptake
    - *Ventilatory limitation*: Reduced ventilation limits oxygen availability even when respiratory muscles receive motor commands

*The Subjective-Objective Mismatch Explained:*

This creates a situation unique to ME/CFS:

    - *Central effort generation*: Brain generates normal or maximal effort signals $arrow.r$ subjectively feels like “giving everything”

    - *Peripheral energy failure*: Muscles receive commands but cannot execute due to ATP deficit, ion pump failure, oxygen delivery limitation $arrow.r$ minimal force production, minimal work output

    - *Afferent feedback*: Massive signaling from muscle (metabolite accumulation, tissue hypoxia, cellular stress) returns to brain $arrow.r$ reinforces sensation of extreme exertion

    - *Autonomic stress response*: Sympathetic activation (elevated heart rate, norepinephrine release attempt) further intensifies subjective sense of emergency

    - *Observable output*: Despite all this internal activation and distress, actual work performed is minimal $arrow.r$ external observers see “not trying hard enough”

*Learned Helplessness as Accurate Pattern Recognition:*

The development of learned helplessness in ME/CFS differs fundamentally from learned helplessness in depression:

    - *Accurate perception*: Patients accurately perceive that their maximal effort does not produce expected outcomes—this is not a cognitive distortion but a direct experiential truth

    - *Appropriate behavioral adaptation*: Reducing effort expenditure after learning it produces crashes represents adaptive learning, not pathological avoidance

    - *Physiological validation*: Two-day CPET objectively documents that effort Day 1 produces measurable impairment Day 2, validating patient perception

    - *Controllability assessment*: In classic learned helplessness paradigms, outcomes are truly uncontrollable; in ME/CFS, outcomes are controllable through limitation (pacing works), making the adaptation rational

The psychological distress arises not from cognitive distortion but from accurate recognition of one's physiological limitations in a world structured around normal energy availability. The helplessness is _realistic_—patients genuinely cannot reliably produce normal output despite normal or excessive subjective effort expenditure.

*Vulnerability as Physiological Reality:*

The sense of extreme vulnerability—“I wouldn't amount to shit in a fight”—reflects accurate assessment of current physiological capacity:

    - *Energy unavailability for defense*: Fight-or-flight responses require massive ATP mobilization; ME/CFS patients cannot sustain this
    - *Delayed consequences*: Any acute energy expenditure (fleeing danger, defending self) would trigger severe PEM, leaving the patient even more vulnerable for days to weeks afterward
    - *Dependence on others*: Inability to reliably generate protective physical responses creates realistic dependence
    - *Identity disruption*: For patients previously defined by physical capability, this represents genuine loss, not negative self-perception

This vulnerability is not imagined or exaggerated—it is a direct consequence of documented metabolic, cardiovascular, and mitochondrial dysfunction that prevents reliable energy mobilization on demand.

==== Exercise-Induced Metabolic Failure: Two-Day CPET Evidence

The most compelling objective evidence for exercise-induced metabolic failure comes from two-day cardiopulmonary exercise testing (CPET) protocols. Unlike single-day assessments that may be confounded by deconditioning or effort, the two-day protocol documents the failure to reproduce initial performance after 24 hours—a hallmark of post-exertional malaise @keller2024cpet.

*Two-Day CPET Protocol and Rationale*

The two-day CPET protocol requires maximal exercise tests on consecutive days, separated by 24 hours. Healthy individuals and those with deconditioning typically maintain or slightly improve performance on Day 2 after familiarization with the protocol. In contrast, ME/CFS patients show consistent, reproducible declines.

#achievement(title: [Two-Day CPET: Objective Validation of Post-Exertional Malaise])[
In the largest rigorous two-day CPET study to date, Keller and colleagues examined 84 ME/CFS participants (Canadian Criteria) and 71 sedentary controls across multiple sites @keller2024cpet. The study design included a matched subset (55 pairs) controlled for sex, age, and baseline aerobic capacity, allowing assessment of whether observed abnormalities were attributable to deconditioning.

ME/CFS participants demonstrated consistent, reproducible declines in multiple cardiopulmonary parameters on Day 2: peak oxygen consumption (VO#sub[2]peak) declined by 5.3% (p \< 0.01), work output by 5.5% (p \< 0.01), ventilation by 7.8% (p \< 0.01), heart rate by 2.6% (p \< 0.05), oxygen pulse by 4.0% (p \< 0.05), and anaerobic threshold VO#sub[2] by 6.7% (p \< 0.05). In contrast, control participants showed no significant changes in any parameter between Day 1 and Day 2.

Critically, when ME/CFS participants were matched with controls having identical baseline VO#sub[2]peak (aerobic capacity), the abnormal Day 2 responses persisted, demonstrating that impaired recovery is not attributable to fitness level but represents a disease-specific pathophysiological process. This provides the most rigorous objective validation of post-exertional malaise to date, distinguishing ME/CFS from deconditioning and validating PEM as a reproducible biological phenomenon rather than subjective experience.
] <ach:two-day-cpet>

#warning-env(title: [Replication Status: Partially Replicated])[
The two-day CPET abnormality has been observed in earlier smaller studies (Snell 2013, Stevens 2014), and Keller 2024 is the largest and most rigorously controlled. However, all major studies originate from overlapping research networks. Fully independent replication by groups without prior involvement would strengthen confidence.
]

#limitation(title: [Two-Day CPET: Biomarker Utility Limitations])[
Critical analysis of the Keller 2024 data reveals important limitations for diagnostic or biomarker utility @MECFSScience2024exercise. While the group-level Day 2 decline is statistically significant, the VO#sub[2]peak decline ($-5.1%$ in ME/CFS versus $-2%$ in controls) represents a moderate effect size with substantial overlap between groups---many individual ME/CFS patients show no Day 2 decline, and some controls show declines in the ME/CFS range. The Bell Disability Scale, commonly used to measure ME/CFS functional capacity, showed near-zero correlation with CPET parameters ($rho = -0.009$ for VO#sub[2]peak), suggesting that exercise testing captures a dimension of pathophysiology that is largely independent of patient-reported disability @MECFSScience2024exercise.

Additionally, the mecfsscience.org analysis#footnote[mecfsscience.org is a non-peer-reviewed science communication site; see Chapter @ch:genetics-epigenetics for a fuller characterization of this source.] identified three methodological concerns in the broader two-day CPET literature @MECFSScience2024discrepancies: (1) conflicting data values appearing in different publications from the same dataset, (2) improbable clustering of zero-difference results in some analyses, and (3) circular reasoning in patient/control separation where the criterion for group assignment overlaps with the outcome variable. These concerns do not invalidate the finding of Day 2 decline but suggest the effect size and diagnostic specificity may be overstated in some publications.

The two-day CPET is therefore best understood as a research tool demonstrating the biological reality of PEM at the group level, rather than as a clinical diagnostic test for individual patients.
]

===== Deconditioning Cannot Explain ME/CFS Exercise Intolerance
<sec:deconditioning-refutation>

A persistent alternative explanation for exercise intolerance in ME/CFS is that patients are merely deconditioned from inactivity. NASA bed rest studies provide a direct test of this hypothesis @MECFSScience2024deconditioning. In controlled bed rest experiments, prolonged immobilisation produces measurable deconditioning---but the resulting phenotype differs qualitatively from ME/CFS:

    - *Magnitude:* Bed rest deconditioning produces mild fatigue that is readily distinguished from the profound energy failure in ME/CFS
    - *Reversibility:* Deconditioning reverses rapidly with reconditioning programmes; ME/CFS exercise intolerance does not respond to graded exercise and may worsen (see Chapter @ch:symptom-management for evidence against GET)
    - *VO#sub[2]max range:* ME/CFS patients' aerobic capacity typically falls in the 10th--25th percentile of population norms---reduced, but within the range of sedentary individuals rather than in the severely deconditioned range @MECFSScience2024deconditioning @keller2024cpet. This overlap complicates the distinction: the VO#sub[2]max values of ME/CFS patients and sedentary but healthy controls overlap substantially, meaning that aerobic capacity alone cannot differentiate between deconditioning and ME/CFS-specific pathology. The Day 2 CPET decline (Achievement @ach:two-day-cpet) provides the additional discriminating evidence.
    - *Birth cohort evidence:* As reviewed by mecfsscience.org, prospective birth cohort studies show no association between pre-illness physical activity levels and subsequent development of ME/CFS, arguing against a deconditioning pathway @MECFSScience2024deconditioning

===== The Boom-and-Bust Myth
<sec:boom-bust-myth>

The "boom-and-bust" behavioural model posits that ME/CFS patients alternate between overexertion on "good days" and prolonged recovery, maintaining illness through a maladaptive activity pattern. This model underpins cognitive behavioural therapy (CBT) approaches and graded exercise therapy (GET) recommendations. However, multiple accelerometer studies measuring objective physical activity patterns have found no support for this model @MECFSScience2024boombust:

    - Objective activity monitoring shows ME/CFS patients maintain remarkably stable, low activity levels rather than the peaks and troughs predicted by boom-and-bust theory
    - Symptom exacerbations (crashes) occur without preceding activity spikes, indicating they reflect PEM biology triggered by normal daily activities rather than behavioural overexertion
    - The data are more consistent with a pathologically low activity threshold for triggering PEM than with pathologically high activity levels, suggesting the boom-and-bust model misidentifies the source of the problem

An alternative interpretation deserves consideration: the stable low activity levels observed in accelerometer studies may themselves reflect successful adaptive behavior by patients who have learned to pace effectively. On this reading, the absence of boom-bust peaks is evidence that pacing works, not that the boom-bust pattern never existed. Longitudinal studies capturing the transition from early illness (before pacing is learned) to established illness would help distinguish between these interpretations.

These findings support the interpretation that PEM is a biological phenomenon better managed through pacing-based approaches (Chapter @ch:symptom-management) than through behavioural modification via CBT or GET.

*Impairment Severity Worsening*

Based on anaerobic threshold criteria, impairment classification shifted dramatically:

    - *Day 1*: 14% classified as severely impaired
    - *Day 2*: 27% classified as severely impaired (nearly doubled)

This demonstrates that exertional stress unmasks or exacerbates functional impairment.

*Mechanistic Interpretation*

The two-day CPET findings are consistent with the mitochondrial dysfunction framework:

    - *VO#sub[2]peak decline*: Reduced maximal oxygen consumption indicates impaired oxidative metabolism at the tissue level—either reduced oxygen delivery (cardiovascular), oxygen extraction (cellular uptake), or oxygen utilization (mitochondrial dysfunction)

    - *Anaerobic threshold shift*: Earlier reliance on anaerobic metabolism suggests mitochondria cannot meet energy demands through oxidative phosphorylation, forcing premature lactate production

    - *O#sub[2] pulse reduction*: Oxygen pulse (VO#sub[2]/heart rate) reflects stroke volume or oxygen extraction; its decline suggests either cardiac dysfunction or impaired peripheral oxygen utilization

    - *Ventilatory dysfunction*: Reduced ventilation at maximal effort may reflect central respiratory drive impairment (consistent with brainstem/autonomic dysfunction) or metabolic signaling abnormalities

    - *Chronotropic incompetence*: Reduced heart rate response indicates autonomic nervous system dysregulation affecting cardiac control

*Autonomic Dysregulation as Primary Mechanism*

Keller and colleagues concluded that *autonomic nervous system dysregulation* affecting blood flow and oxygen delivery represents the primary mechanism linking these abnormalities @keller2024cpet. This integrates with the Walitt study's findings of reduced central catecholamines (Section @sec:catecholamine-metabolism)—catecholamines are essential for autonomic cardiovascular regulation during exercise.

*Complementarity with Walitt 2024 NIH Study*

The two-day CPET findings complement the NIH deep phenotyping study @walitt2024deep:

    - *Walitt*: Documented reduced CSF catecholamines, altered effort preference due to temporoparietal junction dysfunction, metabolic abnormalities, and single-day CPET showing reduced VO#sub[2]peak and chronotropic incompetence
    - *Keller*: Demonstrated that exercise Day 1 produces measurable physiological impairment on Day 2, validating PEM as a reproducible phenomenon with objective correlates

Together, these studies establish that:

    - Central catecholamine deficiency impairs effort generation and autonomic control
    - Exertional stress on Day 1 further compromises already-limited energy metabolism
    - Recovery processes fail to restore baseline function within 24 hours
    - The functional impairment is measurable, reproducible, and distinct from deconditioning

*Clinical Implications for Activity Management*

The two-day CPET findings provide a quantitative foundation for pacing strategies:

    - *Heart rate thresholds*: Staying below anaerobic threshold (often estimated as AT $-$15 bpm) may prevent Day 2 impairment
    - *Recovery periods*: Activity sufficient to trigger metabolic stress requires \>24 hours for restoration
    - *Graded exercise therapy contraindication*: Progressive increases in exertion worsen measurable physiological function rather than improving fitness
    - *Disability documentation*: Two-day CPET provides objective, reproducible evidence of functional impairment for benefits/insurance claims

*Recovery Kinetics Beyond 24 Hours*

While the Keller study assessed only 24-hour recovery, clinical observations and Cornell Center research suggest full restoration requires approximately *13 days* for ME/CFS patients compared to $tilde$2 days for sedentary controls. This prolonged recovery period likely reflects:

    - Impaired mitophagy delaying removal of damaged mitochondria
    - Reduced mitochondrial biogenesis slowing replacement
    - Persistent oxidative stress from the exertional episode
    - Systemic inflammation triggered by metabolic stress

== Selective Energy Dysfunction: The CNS-Dependency Hypothesis
<sec:selective-energy-dysfunction>

While the preceding sections document energy production impairment across multiple tissues, emerging evidence suggests ME/CFS may not represent _global_ cellular energy failure but rather _selective_ dysfunction affecting primarily CNS-dependent and demand-responsive processes while sparing autonomous steady-state peripheral functions.

#hypothesis(title: [Selective Energy Dysfunction])[
ME/CFS involves selective impairment of CNS-dependent and demand-responsive processes while sparing autonomous steady-state peripheral functions. This pattern suggests either primary brain energy dysfunction affecting downstream coordination, or failure of demand-response coupling mechanisms, rather than uniform global cellular energy failure.

Cerebral blood flow during orthostatic challenge exemplifies this selectivity: 91% of patients with normal resting hemodynamics show abnormal CBF reduction during demand @VanCampenEtAl2024, while baseline perfusion is often preserved. Brain hypometabolism has also been documented @Nakatomi2014neuroinflammation, though replication remains incomplete (see Chapter @ch:neurological Section @sec:glial). Together, these findings support coordination failure rather than global energy deficit as the underlying pathophysiology.
] <hyp:selective-energy>

#hypothesis(title: [Immune Cell Energy Starvation Creates a Viral Persistence Niche])[

*Certainty: 0.40.* Supported by documented T cell metabolic dysfunction in ME/CFS @Mandarano2020 and the established bioenergetic requirements of cytotoxic killing. However, the causal link between immune cell energy deficit and viral persistence has not been directly tested in ME/CFS.

This hypothesis proposes that the mitochondrial dysfunction documented in ME/CFS immune cells @Mandarano2020 is not merely a symptom but a _cause_ of viral persistence: metabolically impaired T cells and NK cells lack sufficient ATP to sustain cytotoxic function, creating a permissive niche where virus-harbouring cells survive despite immune recognition. This generates a self-reinforcing trap: viral persistence $arrow.r$ chronic immune activation $arrow.r$ T cell exhaustion and metabolic failure $arrow.r$ inadequate viral clearance $arrow.r$ more persistence.

*Mechanistic Basis.*
Cytotoxic killing is among the most energy-intensive immune functions: degranulation, perforin pore formation, and granzyme delivery each require substantial ATP. Mandarano et al.\ demonstrated that ME/CFS CD8+ T cells fail to switch from oxidative phosphorylation to glycolysis upon activation (the Warburg effect) @Mandarano2020. Without this metabolic reprogramming, effector function is impaired even if the cell correctly recognizes its target. The Kol et al.\ FIP data @Kol2026fipv provide indirect support: antiviral treatment reduced viral load but did not eliminate virus from lymphocytes, suggesting host immunity is needed for final clearance—and if that immunity is metabolically compromised, clearance never completes.

*Testable Predictions.*

    - In vitro supplementation with metabolic support (D-ribose, CoQ10, or mitochondria-targeted antioxidants such as MitoQ) will restore ME/CFS NK cell and CD8+ T cell cytotoxic function in killing assays against virus-infected target cells.
    - ME/CFS patients on combined antiviral + metabolic support therapy will show greater viral clearance (measured by pathogen-specific PCR or T-SPOT) than patients on antiviral therapy alone.
    - The degree of T cell metabolic impairment (measured by Seahorse metabolic flux analysis) will inversely correlate with viral clearance efficiency in longitudinal studies.
    - Patients with the most severe NK cell metabolic dysfunction will show the highest persistent viral antigen levels.

*Falsifiability.*
This hypothesis would be falsified if (a) restoring immune cell metabolism via in vitro supplementation does not improve cytotoxic function against virus-infected targets, or (b) ME/CFS patients with documented viral persistence show normal immune cell bioenergetics. It would also be weakened if antiviral monotherapy achieves complete viral clearance without metabolic support, suggesting the energy deficit is not rate-limiting for clearance.

*Treatment Implications.*
If confirmed, this hypothesis argues that antiviral therapy alone is insufficient—it must be combined with metabolic support targeting immune cell mitochondria. This reframes mitochondrial supplementation (CoQ10, NAD#super[+] precursors, D-ribose) not merely as energy support for the patient, but as _immune-enabling therapy_ that restores the body's ability to clear persistent infection. It also provides mechanistic rationale for the Selective Energy Dysfunction hypothesis (Hypothesis @hyp:selective-energy): immune surveillance is a demand-responsive, CNS-coordinated process that fails under energy constraint.

*Limitations.*
The hypothesis assumes viral persistence is a primary driver in a substantial proportion of ME/CFS cases, which may not hold for non-viral-onset subgroups. The in vitro prediction (metabolic supplementation restoring killing) may not translate to in vivo efficacy due to bioavailability and tissue distribution constraints. The self-reinforcing loop makes it difficult to determine which arm (metabolic failure or viral persistence) is primary.
] <hyp:immune-energy-starvation-niche>

=== Evidence for Selectivity

The distinction between _preserved_ and _impaired_ processes follows a consistent pattern:

*Impaired Processes (CNS-Dependent + Demand-Responsive)*

    - *Voluntary muscle exertion*: Requires motor cortex coordination + scaling to demand
    - *Cognitive effort*: Inherently CNS-based + scales with task complexity
    - *Orthostatic adaptation*: Requires autonomic coordination + responds to positional demand
    - *Adaptive immune responses*: Requires CNS-immune signaling + scales to antigen challenge
    - *Temperature regulation*: Requires hypothalamic coordination + responds to environmental demands

*Preserved Processes (Truly Autonomous + Locally Controlled)*

<obs:preserved-autonomous>
Clinical observation suggests the following autonomous, locally-controlled processes continue at apparently normal rates in ME/CFS despite severe systemic symptoms:

    - *Hair follicle cycling*: Operates independent internal Cori cycle; no CNS coordination required
    - *Nail growth*: Locally controlled keratin synthesis
    - *Baseline cellular metabolism*: Homeostatic processes not requiring demand scaling
    - *Wound healing under occlusion*: Locally mediated by growth factors
    - *Basal immune surveillance*: Constitutive function not requiring coordinated scaling

Formal documentation of these observations is lacking in the ME/CFS literature, representing a gap requiring systematic validation. However, their apparent preservation contrasts markedly with profound impairment of CNS-coordinated demand-responsive functions. If global mitochondrial dysfunction were present, these energy-requiring processes should also be impaired.
*Critical Implication*
If ME/CFS were global mitochondrial dysfunction, all energy-requiring processes—including hair growth—should be affected proportionally. The preservation of truly autonomous peripheral processes suggests the pathology may lie in _energy coordination and allocation_ rather than _energy production capacity_ per se.

=== The Demand-Response Failure Pattern

A consistent finding across multiple physiological systems is preserved baseline function with impaired challenge response @VanCampenEtAl2020 @VanCampenEtAl2024 @keller2024cpet:

    - *Cardiovascular*: Resting cardiac parameters often normal; profound dysfunction during orthostatic or exercise challenge (Section @sec:cerebral-orthostatic)
    - *Cognitive*: Basic language comprehension preserved; executive function and working memory (high-demand) severely impaired @walitt2024deep
    - *Autonomic*: Baseline HRV present; blunted response to physiological challenges
    - *Cerebral perfusion*: 91% of patients with normal resting HR/BP show abnormal cerebral blood flow reduction during tilt testing @VanCampenEtAl2024

This pattern is consistent with intact energy production capacity but impaired ability to _mobilize_ energy in response to demand—a coordination failure rather than a production failure.

=== Mechanistic Implications

#speculation(title: [Brain as Energy Coordination Bottleneck])[
The near-universal cognitive dysfunction and documented brain hypometabolism @Nakatomi2014neuroinflammation @walitt2024deep suggest CNS energy crisis may be the primary pathophysiological event. The brain consumes 20–25% of resting energy despite comprising only 2% of body mass (Section @sec:normal-metabolism), making it uniquely vulnerable to energy constraint. Failure of the brain to coordinate peripheral demand-responsive processes could explain the selective dysfunction pattern: autonomous processes continue because they don't require CNS coordination, while CNS-coordinated responses (exercise capacity, orthostatic tolerance, cognitive effort) fail because the coordinating organ itself is energy-depleted.

This model explains why pharmacological bypass of autonomic coordination (midodrine, fludrocortisone) can partially restore orthostatic function—the peripheral targets respond when appropriately stimulated, suggesting the dysfunction is in _coordination_ rather than _peripheral capacity_.
] <spec:brain-energy-bottleneck>

See Chapter @ch:neurological Section @sec:brain-bottleneck for expanded discussion of brain-centric pathophysiology, and Chapter @ch:cardiovascular Section @sec:cerebral-orthostatic for cerebral blood flow evidence during orthostatic challenge.

=== Therapeutic Implications of Selective Dysfunction

If ME/CFS involves selective coordination failure rather than global energy production deficit, treatment strategies should prioritize:

    - *CNS-targeted interventions*: Compounds that cross the blood-brain barrier and support brain energy metabolism specifically, rather than systemic mitochondrial supplements that may not reach the CNS at therapeutic concentrations

    - *Autonomic coordination bypass*: Pharmacological agents that directly activate peripheral targets, bypassing impaired CNS signaling (e.g., midodrine for vasoconstriction, fludrocortisone for volume expansion, droxidopa for norepinephrine replacement)

    - *Demand management*: Strict pacing to remain within the envelope of available coordination capacity, rather than attempting to increase energy production through exercise or stimulants

#speculation(title: [CNS Penetration as Limiting Factor])[
This reframing suggests that failed trials of systemic energy supplements (CoQ10, carnitine, B-vitamins) may reflect inadequate CNS penetration rather than incorrect therapeutic targets. If brain energy coordination is the primary bottleneck, supplements that do not cross the blood-brain barrier at therapeutic concentrations would be expected to show limited efficacy regardless of their peripheral effects. This hypothesis is testable through comparative trials of CNS-penetrant versus non-penetrant formulations of the same compounds.
] <spec:cns-penetration>

#speculation(title: [NETosis as Metabolic Sink Contributing to Energy Depletion])[
NETosis requires substantial NADPH oxidase activity, chromatin decondensation,
and membrane remodelling—all energy-intensive processes. In a system where
mitochondria already show stress-responsive failure @Cullen2026ATP, ongoing
NETosis @Krinsky2023 may act as a metabolic drain that competes with normal
cellular energy demands. This creates a potential vicious cycle: energy depletion
impairs NET clearance (DNase production requires cellular energy), accumulated NETs
drive further inflammation, and inflammation increases energy demand.

Study: (mechanistic reasoning, certainty: 0.30, untested).
] <spec:netosis-metabolic-sink>

#limitation(title: [Selective Energy Dysfunction: Preserved Processes Not Formally Documented])[
The “selective vs.\ global” energy dysfunction distinction rests on the claim that hair growth, nail growth, and wound healing are preserved in ME/CFS. As noted in the observation above, formal documentation of these preserved processes is lacking — the claim derives from patient self-reports and clinical impression, not from controlled measurement. Processes classified as “preserved” also have much lower absolute energy demands than those classified as “impaired,” meaning a moderate global energy deficit could produce the same clinical pattern without any selectivity mechanism. For quantitative analysis of this alternative explanation, see the selective dysfunction framework in Section @sec:selective-dysfunction.
]

See Part III for detailed treatment protocols, particularly Chapter @ch:medications-mechanisms for pharmacological approaches and Chapter @ch:symptom-management for symptom-specific interventions.

=== Subtype Considerations
<sec:selective-subtypes>

The selective dysfunction pattern may manifest differently across patient subgroups. Some patients show primarily CNS-energy deficit (cognitive and autonomic symptoms predominating with relatively preserved peripheral muscle function), while others show primarily peripheral demand-response failure (exercise intolerance and orthostatic symptoms with relatively preserved cognition at rest). These patterns may represent different points along a continuum or distinct pathophysiological subtypes requiring tailored interventions.

Formal subtype analysis based on the selective dysfunction framework is developed in Chapter @ch:speculative-hypotheses Section @sec:selective-dysfunction, including quantitative predictions for dysfunction severity across processes based on their CNS-dependency and demand-responsiveness.
== Oxidative and Nitrosative Stress
<sec:oxidative-stress>

Oxidative and nitrosative stress are consistently documented in ME/CFS and likely contribute to both mitochondrial dysfunction and symptom generation.

=== Reactive Oxygen Species (ROS)
<sec:ros>

==== Sources of ROS in ME/CFS

Multiple sources generate excess ROS:

    - *Mitochondrial electron leakage*: Primary source during normal metabolism
    - *NADPH oxidase*: Activated by immune stimulation
    - *Xanthine oxidase*: Generates superoxide during purine metabolism
    - *Uncoupled eNOS*: Produces superoxide instead of NO
    - *Inflammatory cells*: Respiratory burst during immune activation

==== Damage to Cellular Components

ROS damage multiple targets:

    - *DNA*: Base modifications, strand breaks, mutations
    - *Proteins*: Carbonylation, cross-linking, loss of function
    - *Lipids*: Peroxidation of membrane phospholipids
    - *Carbohydrates*: Glycation reactions

==== Antioxidant System Dysfunction

The antioxidant defense system may be compromised:

    - *Glutathione*: Often reduced in ME/CFS; critical for detoxification
    - *Superoxide dismutase (SOD)*: Variable findings
    - *Catalase*: May be reduced
    - *Vitamins C and E*: Nutritional antioxidants may be depleted
    - *Thioredoxin system*: Important for protein redox balance

=== Reactive Nitrogen Species
<sec:rns>

==== Nitric Oxide Metabolism

Nitric oxide (NO) has complex roles in ME/CFS:

    - *Normal functions*: Vasodilation, neurotransmission, immune defense
    - *iNOS induction*: Inflammatory cytokines induce high NO production
    - *NO excess*: Can inhibit mitochondrial respiration
    - *eNOS uncoupling*: Produces superoxide instead of NO

==== Peroxynitrite Formation

When superoxide and NO react, they form peroxynitrite (ONOO#super[-]):

    - *Highly reactive*: More damaging than either parent molecule
    - *Protein nitration*: 3-nitrotyrosine formation (documented in ME/CFS)
    - *Lipid oxidation*: Damages membrane integrity
    - *Mitochondrial inhibition*: Irreversibly damages ETC complexes

==== Effects on Energy Metabolism

Nitrosative stress specifically impairs energy production:

    - *Complex I inhibition*: NO competitively inhibits oxygen binding
    - *Complex IV inhibition*: NO binds cytochrome c oxidase
    - *Aconitase inactivation*: Impairs Krebs cycle
    - *Glyceraldehyde-3-phosphate dehydrogenase*: Inhibited by peroxynitrite

=== Lipid Peroxidation
<sec:lipid-peroxidation>

==== Membrane Damage

Lipid peroxidation disrupts cellular membranes:

    - *Polyunsaturated fatty acids*: Primary targets of peroxidation
    - *Chain reactions*: One initiation event triggers multiple peroxidations
    - *Membrane fluidity*: Peroxidation rigidifies membranes
    - *Permeability changes*: Membranes become leaky

==== Isoprostanes and Other Markers

Lipid peroxidation products serve as biomarkers:

    - *F#sub[2]-isoprostanes*: Prostaglandin-like compounds from arachidonic acid peroxidation
    - *Malondialdehyde (MDA)*: End product of peroxidation
    - *4-hydroxynonenal (4-HNE)*: Reactive aldehyde that modifies proteins
    - *Oxidized LDL*: Marker of lipoprotein oxidation

Studies have found elevated markers of lipid peroxidation in ME/CFS patients, supporting the role of oxidative stress.

== Metabolic Pathways Affected
<sec:metabolic-pathways>

=== Amino Acid Metabolism
<sec:amino-acid>

==== Tryptophan Metabolism: NIH Study Findings

The NIH deep phenotyping study documented significant abnormalities in tryptophan metabolism in cerebrospinal fluid @walitt2024deep. Tryptophan is an essential amino acid that serves as precursor for:

    - *Serotonin*: Via tryptophan hydroxylase pathway
    - *Melatonin*: Via serotonin N-acetyltransferase
    - *Kynurenine pathway metabolites*: Via indoleamine 2,3-dioxygenase (IDO)

*The Kynurenine Pathway*
Approximately 95% of dietary tryptophan is metabolized through the kynurenine pathway:

    - *Tryptophan → Kynurenine*: Rate-limiting step; induced by inflammatory cytokines (IFN-$gamma$)
    - *Kynurenine → Kynurenic acid*: Neuroprotective branch (NMDA antagonist)
    - *Kynurenine → 3-hydroxykynurenine → Quinolinic acid*: Neurotoxic branch
    - *Quinolinic acid*: NMDA receptor agonist, excitotoxin, pro-oxidant

*ME/CFS Kynurenine Pathway Abnormalities*

    - Increased IDO activity (driven by inflammation)
    - Elevated kynurenine/tryptophan ratio
    - Increased neurotoxic metabolites (quinolinic acid, 3-HK)
    - Reduced neuroprotective metabolites (kynurenic acid) in some studies
    - Depletion of tryptophan available for serotonin synthesis

==== Implications for Neurotransmitter Production

Tryptophan diversion into the kynurenine pathway reduces serotonin synthesis:

    - *Serotonin depletion*: May contribute to mood symptoms, pain, sleep disturbance
    - *Melatonin reduction*: May explain sleep-wake cycle disruption
    - *Quinolinic acid excess*: May cause excitotoxicity and cognitive dysfunction
    - *Oxidative stress*: 3-hydroxykynurenine generates free radicals

==== Other Amino Acid Abnormalities

Metabolomic studies have identified broader amino acid disturbances:

    - *Branched-chain amino acids*: Often altered; important for muscle metabolism
    - *Glutamate/glutamine*: Excitatory neurotransmitter precursors
    - *Glycine*: Inhibitory neurotransmitter, glutathione precursor
    - *Cysteine*: Rate-limiting for glutathione synthesis

==== Homocysteine and Methylation Cycle

#hypothesis(title: [Homocysteine-Mediated ETC Disruption as a Contributing Mechanism])[
Elevated homocysteine — whether arising from methylenetetrahydrofolate reductase (MTHFR) polymorphisms,
B12 or folate deficiency, or post-viral methylation depletion — may contribute to the mitochondrial
dysfunction documented in ME/CFS through direct inhibition of electron transport chain (ETC) complexes.

Mechanistic evidence from cardiovascular and neurological models documents that
hyperhomocysteinemia (HHcy) reduces activities of ETC complexes I–V in cardiac and neural tissue,
generates reactive oxygen species (ROS) through both direct auto-oxidation and secondary ETC impairment,
and depletes mitochondrial antioxidant defenses (superoxide dismutase, catalase) @Kaplan2020.
Additionally, the reactive metabolite homocysteine thiolactone causes N-homocysteinylation of
cytochrome c, directly disrupting electron transfer @Kaplan2020.

Clinically, Regland et al.\ found that all 12 FM/CFS patients examined showed elevated cerebrospinal
fluid (CSF) homocysteine (with normal serum levels), and that CSF homocysteine correlated positively
with fatiguability severity @Regland1997. This CNS-compartment-specific elevation suggests
that routine serum homocysteine testing may underdetect a metabolically relevant abnormality in a
subset of ME/CFS patients.

A separate genetic predisposition pathway involves MTHFR C677T polymorphism, which reduces enzyme
activity to 25–67% of normal, impairing remethylation of homocysteine to methionine @Zarembska2023.
Disrupted one-carbon metabolism from MTHFR dysfunction also affects mitochondrial DNA methylation,
with downstream consequences for OXPHOS gene expression @Zarembska2023.

*Testable predictions:* (1) ME/CFS patients with MTHFR TT genotype should show higher CSF
homocysteine than CT or CC genotype patients. (2) CSF homocysteine levels should correlate with
ETC complex activity in PBMCs in the same patients. (3) MTHFR-guided B12/folate supplementation
should preferentially reduce fatigue in ME/CFS patients with confirmed elevated CSF homocysteine.

*Limitations:* The ETC inhibition data are from animal and in vitro cardiovascular/neurological
models, not from ME/CFS patients. The Regland 1997 CSF study has n=12 and no control group. The
proposed MTHFR–HHcy–ETC–fatigue causal chain, while mechanistically coherent, has not been
tested as an integrated pathway in ME/CFS.

(Certainty: Low; animal/in vitro mechanism + single small clinical study; not yet independently replicated.)
] <hyp:homocysteine-etc-disruption>

=== Lipid Metabolism
<sec:lipid-metabolism>

==== Fatty Acid Oxidation Defects

Fatty acids are the primary fuel for sustained activity:

    - *Carnitine shuttle*: Transports fatty acids into mitochondria
    - *Beta-oxidation*: Sequential removal of 2-carbon units
    - *Acetyl-CoA generation*: Feeds into Krebs cycle

ME/CFS abnormalities include:

    - Reduced carnitine levels in some patients
    - Elevated acylcarnitines suggesting incomplete oxidation
    - Impaired utilization of fatty acids during exercise
    - Earlier shift to glucose oxidation

==== Membrane Lipid Alterations

Cell membrane composition affects function:

    - *Phospholipid changes*: Altered fatty acid profiles
    - *Reduced omega-3 fatty acids*: May affect inflammation and membrane fluidity
    - *Oxidized lipids*: Accumulate due to peroxidation
    - *Cholesterol*: May affect membrane rigidity and signaling

==== Ceramide Metabolism

Ceramides are signaling lipids with metabolic effects:

    - *Elevated ceramides*: Found in some ME/CFS studies
    - *Insulin resistance*: Ceramides impair insulin signaling
    - *Mitochondrial effects*: Can promote apoptosis
    - *Inflammation link*: Produced in response to inflammatory signals

=== Carbohydrate Metabolism
<sec:carbohydrate>

==== Glucose Utilization

Abnormal glucose handling occurs in ME/CFS:

    - *Hypoglycemia symptoms*: Reported by many patients, though blood glucose often normal
    - *Impaired glucose uptake*: May affect specific tissues
    - *Altered insulin sensitivity*: Variable findings
    - *Post-prandial symptoms*: Reactive responses to meals

==== Lactate Accumulation

Elevated lactate indicates reliance on anaerobic metabolism:

    - *Resting lactate*: May be elevated in some patients
    - *Exercise lactate*: Earlier and greater accumulation
    - *Recovery*: Slower lactate clearance
    - *Brain lactate*: Elevated on MR spectroscopy in some studies

*Clinical Phenomenology: Similarities to Athletic Post-Exercise States.*

The chronic lactate accumulation and reliance on anaerobic metabolism in ME/CFS produces a muscle metabolic state remarkably similar to what elite athletes experience temporarily after exhausting physical efforts:

    - *Muscle cramping*: ATP depletion prevents proper muscle relaxation; magnesium and calcium handling disrupted
    - *“Ready for cramps” sensation*: Persistent partial ATP deficit maintains muscles in pre-cramp tension state
    - *Metabolic acidosis*: Lactate accumulation creates acidic intracellular environment
    - *Delayed recovery*: Impaired lactate clearance prolongs metabolic stress

The critical difference: athletes experience this state transiently after intense exertion and recover within hours to days; ME/CFS patients exist in this state continuously, even at rest or after minimal activity.

This parallel has practical treatment implications. Sports medicine recovery protocols—electrolyte replacement, magnesium supplementation, ATP precursors (D-ribose), lactate clearance strategies—may provide symptomatic benefit by addressing the chronic metabolic stress state. See Appendix the Sports Medicine Parallel discussion for detailed discussion of how this clinical insight informed treatment protocol development.

ME/CFS muscle pathophysiology may be understood as a state of continuous post-exercise metabolic stress without the triggering exercise. Interventions that support athletic recovery from intense exertion may provide baseline metabolic support for ME/CFS patients:

    - Oral rehydration solutions for blood volume and lactate clearance
    - Magnesium for ATP synthesis and muscle relaxation
    - Acetyl-L-carnitine to restore fat oxidation capacity
    - D-ribose as direct ATP building block

This framework suggests ME/CFS patients require continuous application of recovery protocols, not as performance enhancement but as compensatory support for chronically impaired energy metabolism.
==== Insulin Sensitivity

Insulin resistance features in some ME/CFS patients:

    - *Hyperinsulinemia*: Compensatory insulin excess
    - *Impaired glucose tolerance*: Abnormal oral glucose tolerance tests
    - *Metabolic syndrome overlap*: Shared features in some patients
    - *Inflammation link*: Cytokines promote insulin resistance

== Catecholamine Metabolism: NIH Study Findings
<sec:catecholamine-metabolism>

The NIH deep phenotyping study provided groundbreaking data on catecholamine abnormalities in cerebrospinal fluid @walitt2024deep, establishing a direct link between neurotransmitter metabolism and ME/CFS symptoms.

=== CSF Catecholamine Findings

==== Reduced Catecholamine Levels

Lumbar puncture analysis revealed significantly reduced central catecholamines:

    - *Dopamine metabolites*: Lower homovanillic acid (HVA)
    - *Norepinephrine metabolites*: Reduced 3-methoxy-4-hydroxyphenylglycol (MHPG)
    - *Implications*: Central catecholamine synthesis or turnover is impaired

==== Correlation with Symptoms

The study established direct correlations between CSF catecholamines and clinical measures:

    - *Motor performance*: Lower catecholamines correlated with reduced grip strength
    - *Effort behaviors*: Predicted reduced selection of difficult tasks
    - *Cognitive function*: Correlated with memory and executive function deficits
    - *Fatigue severity*: Inverse correlation with norepinephrine markers

=== Catecholamine Synthesis Pathway

Understanding the pathway illuminates potential dysfunction points:

    - *Tyrosine → L-DOPA*: Tyrosine hydroxylase (rate-limiting, requires tetrahydrobiopterin)
    - *L-DOPA → Dopamine*: Aromatic amino acid decarboxylase (requires pyridoxal phosphate)
    - *Dopamine → Norepinephrine*: Dopamine $beta$-hydroxylase (requires copper, ascorbate)
    - *Norepinephrine → Epinephrine*: PNMT (primarily in adrenal medulla)

=== Potential Mechanisms of Catecholamine Deficiency

==== Cofactor Deficiencies

Catecholamine synthesis requires multiple cofactors:

    - *Tetrahydrobiopterin (BH4)*: Essential for tyrosine hydroxylase; depleted by oxidative stress
    - *Iron*: Required by tyrosine hydroxylase
    - *Pyridoxal phosphate (B6)*: Required for decarboxylation
    - *Ascorbate (Vitamin C)*: Required for dopamine $beta$-hydroxylase
    - *Copper*: Required for dopamine $beta$-hydroxylase

==== Oxidative Stress Effects

Oxidative stress can impair catecholamine metabolism:

    - *BH4 oxidation*: Converts active BH4 to inactive BH2
    - *Enzyme damage*: Oxidative modification of synthetic enzymes
    - *Catecholamine oxidation*: Auto-oxidation generates more ROS
    - *Neuromelanin formation*: Oxidized catecholamines form potentially toxic aggregates

==== Inflammation Effects

Inflammatory cytokines affect catecholamine metabolism:

    - *GTP cyclohydrolase induction*: Initially increases BH4 but depletes with chronic inflammation
    - *Altered enzyme expression*: Cytokines modify gene expression
    - *Competition for BH4*: Increased iNOS activity consumes BH4
    - *Microglial activation*: Affects local neurotransmitter metabolism

=== Functional Consequences

==== Dopamine Deficiency

Reduced dopamine affects multiple systems:

    - *Motivation and reward*: Dopamine mediates reward anticipation
    - *Motor function*: Contributes to motor initiation and execution
    - *Cognition*: Essential for working memory and executive function
    - *Mood*: Contributes to anhedonia and depression symptoms

==== Norepinephrine Deficiency

Reduced norepinephrine affects:

    - *Arousal*: Norepinephrine maintains wakefulness and alertness
    - *Attention*: Required for sustained and selective attention
    - *Autonomic function*: Central norepinephrine modulates autonomic outflow
    - *Stress response*: Mediates appropriate responses to stressors

== The “Metabolic Trap” Hypothesis
<sec:metabolic-trap>

Several researchers have proposed that ME/CFS involves metabolic “traps” — stable dysfunctional states that persist even after the initial trigger resolves.

=== IDO Metabolic Trap

One prominent hypothesis involves tryptophan metabolism:

    - *Trigger*: Infection induces IFN-$gamma$, activating IDO
    - *Tryptophan depletion*: IDO diverts tryptophan from serotonin to kynurenine
    - *Kynurenine effects*: Metabolites may perpetuate immune activation
    - *Feedback loop*: Chronic activation maintains the altered state

=== The “Dauer” Hypothesis

Drawing on C. elegans biology, some researchers propose ME/CFS represents a hypometabolic survival state:

    - *Dauer state*: Nematode survival mode with reduced metabolism
    - *Human analog*: ME/CFS as a protective metabolic downregulation
    - *Persistence*: The hypometabolic state becomes self-perpetuating
    - *Treatment implications*: May require specific signals to exit the state

== Compartmental Energy Models
<sec:compartmental-energy>

Recent evidence suggests ME/CFS may represent _selective_ rather than global energy dysfunction. The observation that certain processes (hair growth, nail growth, basic wound healing) remain intact despite severe systemic symptoms challenges the assumption of uniform mitochondrial failure.

=== CNS-Specific vs. Global Dysfunction

The selective energy dysfunction hypothesis proposes that ME/CFS preferentially affects:

    - *CNS-dependent processes*: Functions requiring central coordination (cognition, autonomic regulation, motor control)
    - *Demand-responsive processes*: Functions that must scale with physiological challenge (exercise capacity, orthostatic regulation)

While sparing:

    - *Autonomous local processes*: Hair follicle cycling, keratinocyte proliferation, basic wound healing
    - *Constant-output processes*: Functions that operate at steady state without demand scaling

=== Evidence for Compartmentalization

Several findings support compartmental rather than global dysfunction:

    - *Preserved peripheral ATP at rest*: 31P-MRS studies show variable findings, with some patients showing normal resting muscle ATP despite symptoms
    - *Demand-response failure*: 91–100% of ME/CFS patients show abnormal cerebral blood flow reduction during orthostatic challenge—3-fold greater than controls @Novak2022—yet baseline perfusion may be preserved
    - *Brain-specific hypometabolism*: PET and SPECT studies reveal regional brain hypometabolism without corresponding peripheral findings @Nakatomi2014neuroinflammation
    - *Pharmacological bypass effectiveness*: Direct-acting agents like midodrine can restore function that CNS coordination cannot achieve, suggesting intact peripheral machinery

=== The Astrocyte-Neuron Lactate Shuttle

The brain's unique metabolic architecture may explain CNS-specific vulnerability. Unlike peripheral tissues with direct glucose access, neurons depend on astrocytes to provide lactate via the astrocyte-neuron lactate shuttle (ANLS) @Pellerin1994 @Magistretti2018:

    - Astrocytes take up glucose and convert it to lactate
    - Lactate is exported via MCT4 transporters
    - Neurons import lactate via MCT2 transporters
    - Lactate oxidation provides 30–50% of neuronal ATP @Belanger2011

Dysfunction in this shuttle—from MCT transporter impairment, astrocyte pathology, or neuroinflammation—could cause CNS-specific energy failure while peripheral tissues (with direct glucose access) remain functional.

#key-point(title: [Compartmental Model Implications])[
If energy dysfunction is compartmentalized rather than global:

    - Peripheral mitochondrial biomarkers may underestimate CNS dysfunction
    - Treatment strategies should prioritize CNS-penetrant approaches
    - Subtyping may depend on which compartment shows primary dysfunction

See Section @sec:selective-dysfunction for comprehensive treatment of the selective dysfunction hypothesis with formal mathematical framework.
]

== Potential Interventions
<sec:energy-interventions>

=== Mitochondrial Support

==== Cofactors and Substrates

Supporting mitochondrial function may help:

    - *Coenzyme Q10*: Electron carrier in ETC; antioxidant
    - *L-carnitine/acetyl-L-carnitine*: Fatty acid transport; neuroprotection
    - *B vitamins*: Cofactors for multiple metabolic enzymes
    - *Magnesium*: Required for ATP utilization
    - *D-ribose*: Substrate for ATP synthesis
    - *Alpha-lipoic acid*: Antioxidant; mitochondrial cofactor

==== Mitochondrial-Targeted Therapies

Emerging approaches target mitochondria specifically:

    - *MitoQ*: Mitochondria-targeted antioxidant
    - *SS-31 (Elamipretide)*: Cardiolipin-binding peptide
    - *Nicotinamide riboside*: NAD#super[+] precursor
    - *Urolithin A*: Promotes mitophagy

=== Antioxidants

==== Glutathione Support

Restoring glutathione may be beneficial:

    - *N-acetylcysteine (NAC)*: Provides cysteine for glutathione synthesis (a dose-response trial using brain MRS is underway; see Appendix @app:research-registry, Section @sec:registry-cornell-nac)
    - *Liposomal glutathione*: May improve absorption
    - *Glycine supplementation*: Second rate-limiting substrate
    - *Selenium*: Required for glutathione peroxidase

==== Other Antioxidants

    - *Vitamin C*: Water-soluble antioxidant; cofactor for catecholamine synthesis
    - *Vitamin E*: Fat-soluble membrane antioxidant
    - *Polyphenols*: Plant-derived antioxidants (resveratrol, quercetin)
    - *Melatonin*: Potent antioxidant with mitochondrial effects

=== Addressing Catecholamine Deficiency

==== Precursor Support

Supporting neurotransmitter synthesis:

    - *Tyrosine*: Catecholamine precursor
    - *Phenylalanine*: Converted to tyrosine
    - *BH4 support*: Sapropterin or folate to support BH4 recycling
    - *Cofactors*: Iron, B6, vitamin C, copper

==== Pharmacological Approaches

Medications affecting catecholamine systems:

    - *Stimulants*: Methylphenidate, amphetamines (increase catecholamine release)
    - *Bupropion*: Norepinephrine-dopamine reuptake inhibitor
    - *SNRIs*: Serotonin-norepinephrine reuptake inhibitors
    - *MAO-B inhibitors*: Reduce dopamine breakdown

== Microcirculation and Oxygen Delivery
<sec:microcirculation-oxygen>

The energy crisis in ME/CFS begins upstream of mitochondrial ATP synthesis. Multiple independent research groups have documented vascular and microcirculatory dysfunction that directly impairs substrate and oxygen availability, creating a pre-mitochondrial bottleneck.

=== Endothelial Dysfunction

Scherbakov et al. @Scherbakov2020 found endothelial dysfunction (ED) in 51% of ME/CFS patients using peripheral arterial tonometry (EndoPAT). This early indicator of vascular disease correlates with systemic atherosclerosis risk and predicts cardiovascular events. Haffke et al. @Haffke2023fmd measured flow-mediated dilation (FMD), the gold-standard non-invasive endothelial function test, and found severely impaired responses in ME/CFS patients (5.1% vs 8.2% in healthy controls, $p < 0.0001$). This indicates reduced nitric oxide (NO) bioavailability and impaired vasodilatory capacity.

Blauensteiner et al. @Blauensteiner2021mirna identified five endothelial-regulating microRNAs (miR-21, miR-34a, miR-92a, miR-126, miR-200c) with altered expression in up to 60% of ME/CFS patients. All five microRNAs are key regulators of the NO pathway and endothelial function. This suggests dysfunction at the molecular level controlling vascular biology.

=== Red Blood Cell Deformability and Rheology

Red blood cell function is critical for oxygen delivery: RBCs must deform to traverse narrow capillaries and must maintain membrane fluidity to exchange gases efficiently. Saha et al. @Saha2019 studied ME/CFS patient RBCs using ektacytometry and rheological analysis, finding:

    - Higher capillary entry time (approximately 12% longer)
    - Lower transit velocity through capillaries (approximately 17% reduced)
    - Lower elongation index on deformation (approximately 14% reduced membrane deformability)
    - Lower membrane fluidity (approximately 30% reduced)
    - Higher reactive oxygen species (ROS) production (approximately 30% elevated)

Critically, recovering ME/CFS patients showed normalization of these parameters, suggesting that RBC dysfunction is a reversible consequence of the disease rather than a primary genetic defect. The combination of reduced deformability and elevated ROS creates a cascade: stiff RBCs move slower through capillaries, allowing more time for oxidative damage, further reducing deformability and oxygen delivery.

=== Capillary Structural Pathology

Wust et al. @Wust2024capillary conducted electron microscopy studies of muscle capillaries from ME/CFS patients and documented structural abnormalities: massive collagen IV deposition in the capillary basement membrane, thickening and narrowing of capillary passageways, and physical barriers to oxygen diffusion. These are not functional abnormalities but anatomical obstructions—capillaries cannot transport oxygen effectively due to structural remodeling. This represents a mechanical bottleneck independent of mitochondrial function.

=== Brain Microvascular Insufficiency

Godlewska et al. @Godlewska2025MRS used 7-Tesla magnetic resonance spectroscopy (7T MRS) in 24 ME/CFS patients to measure brain lactate levels at high spatial resolution. They found elevated brain lactate in the pregenual anterior cingulate cortex (pACC) and dorsal anterior cingulate cortex (d ACC)—regions critical for mood, pain processing, and autonomic regulation. Elevated brain lactate reflects anaerobic metabolism in brain tissue, consistent with localized microvascular insufficiency in these regions.

=== Integration: Substrate Delivery Failure

Together, these findings identify a pre-mitochondrial energy bottleneck: endothelial dysfunction reduces perfusion pressure, RBC deformability limits capillary transit, structural capillary pathology blocks oxygen diffusion, and localized brain insufficiency impairs central regulatory systems. Cells cannot generate energy efficiently when they cannot access substrates, regardless of mitochondrial capacity. This substrate delivery failure occurs independent of and before any mitochondrial defect.

== Energy Utilization Beyond ATP Production
<sec:energy-utilization>

Even when ATP is produced, cells in ME/CFS may have impaired ability to use that ATP effectively. This is mechanistically distinct from ATP production defects and requires different intervention strategies.

=== The Sodium-Calcium Overload Cascade
<sec:sodium-calcium-cascade>

Wirth and Scheibenbogen @WirthScheibenbogen2020 integrated emerging evidence into a model of ion homeostasis failure in ME/CFS. The cascade begins with hypoperfusion (Section @sec:microcirculation-oxygen), which forces cells into anaerobic metabolism. Anaerobic metabolism generates protons as a byproduct. Accumulating protons increase the activity of the sodium-hydrogen exchanger (NHE1), which extrudes protons by importing sodium. Under normal aerobic conditions, the Na#super[+]/K#super[+]-ATPase can clear this sodium, but under hypoperfusion and ATP limitation, this pump becomes saturated and dysfunctional.

When the Na#super[+]/K#super[+]-ATPase fails to maintain the inward sodium gradient, the plasma membrane sodium-calcium exchanger NCX1 (SLC8A1)---which operates electrogenically in a 3 Na#super[+]:1 Ca#super[2+] exchange---reverses direction. In forward mode NCX1 imports three sodium ions to export one calcium ion; in reverse mode (driven by elevated intracellular Na#super[+]) it imports one calcium ion per cycle. The thermodynamic reversal point is set by the NCX reversal potential $E_"NCX" = 3 E_"Na" - 2 E_"Ca"$, where $E_"Na"$ and $E_"Ca"$ are the Nernst potentials for Na#super[+] and Ca#super[2+] respectively. As intracellular Na#super[+] rises, $E_"Na"$ shifts positive, lowering $E_"NCX"$ below the resting membrane potential and driving sustained reverse-mode calcium import.

Critically, the mitochondrial sodium-calcium exchanger NCLX (SLC8B1)---the primary route of calcium efflux from the mitochondrial matrix---is simultaneously impaired: NCLX imports Na#super[+] to export Ca#super[2+], so cytoplasmic sodium overload reduces its driving force. Sodium accumulation therefore traps calcium inside mitochondria via two independent routes: influx through reversed NCX1 and blocked efflux through NCLX. The combined result is mitochondrial calcium overload, direct damage to the electron transport chain, amplified ROS production, and further ATP depletion---reinforcing the original sodium overload.

Petter et al. @Petter2022sodium provided the first direct _in vivo_ quantification using #super[23]Na-MRI in ME/CFS patients ($n = 6$ per group). Baseline intracellular sodium was elevated across all five lower-leg muscle compartments (12.20 mM vs 9.38 mM in anterior extensors; $p = 0.0034$). Post-exercise sodium accumulation was greater in ME/CFS, and intracellular sodium correlated inversely with hand-grip strength ($p = 0.0319$)---a quantitative link between the ionic signature and functional impairment. Wirth et al. @WirthScheibenbogen2021muscle extended these findings with electron microscopy showing subsarcolemmal mitochondrial damage preferentially localised at sites of calcium influx, consistent with NCLX-mediated calcium trapping.

Scheibenbogen and Wirth @Scheibenbogen2025muscle synthesised accumulated histological, MRI, and proteomic data into the concept of *acquired ischemic mitochondrial myopathy* (AIMM): a disease phenotype in which post-infectious vascular dysfunction produces chronic muscle ischaemia, driving the NHE1 → Na#super[+] overload → NCX1 reversal → NCLX block → calcium overload → mitochondrial damage cycle as a self-reinforcing acquired pathology, distinct from primary genetic mitochondrial diseases. Proteomics confirmed reduced expression of Na#super[+]/K#super[+]-ATPase subunits (weakened sodium clearance capacity) and upregulated ENaC expression (sodium-sensing retention), indicating the dysfunction involves sustained pathological remodelling at the protein level. The AIMM framing has a direct therapeutic implication: an acquired ionic myopathy is potentially reversible through pharmacological correction of the sodium/calcium overload, without requiring genetic intervention (see Section @sec:mdc002 in Chapter @ch:emerging-therapies).

=== TRPM3 Ion Channel Dysfunction

Cabanas et al. @Cabanas2024trpm3 studied TRPM3 calcium channels in natural killer (NK) cells from ME/CFS patients and found reduced calcium influx amplitude and prolonged half-time (slower kinetics). TRPM3 is critical for NK cell calcium signaling and cytotoxic function. Importantly, low-dose naltrexone (LDN) restored TRPM3-dependent calcium influx in patient NK cells in vitro, suggesting a reversible pharmacological mechanism. Sasso et al. @Sasso2026trpm3 extended these findings with large-scale validation confirming the TRPM3 dysfunction across broader patient populations.

=== WASF3 and ER Stress-Induced Metabolic Switching

Wang et al. @wang2023wasf3 (cross-referenced as WASF3 studies in Chapter @ch:mechanistic-studies) identified endoplasmic reticulum (ER) stress upregulation of WASF3 (Wiskott-Aldrich syndrome protein family member 3). WASF3 simultaneously disrupts respiratory supercomplex assembly (impairing OXPHOS efficiency) and promotes actin polymerization, driving a forced switch toward glycolysis. Muscle biopsies from ME/CFS patients showed elevated WASF3 expression, confirming ER stress-mediated metabolic reprogramming.

This represents a cell-autonomous mechanism: ER stress—triggered by calcium overload, oxidative stress, or viral persistence—activates a program that simultaneously reduces OXPHOS capacity while increasing glycolytic flux. Even if mitochondria are structurally intact, WASF3-mediated disruption of supercomplexes reduces their efficiency.

=== Distinction: Production vs. Utilization Defects

These mechanisms reveal a critical distinction: ATP production defects (failing mitochondria, substrate delivery) are different from ATP utilization defects (ion pump failure, calcium overload, forced metabolic switching). Both limit cellular energy availability, but they require different therapeutic targets. A patient with sodium-calcium overload may have normal mitochondrial capacity but cannot function because ion homeostasis is broken. A patient with WASF3-driven supercomplex disruption may have sufficient ATP but inefficient energy use due to forced glycolysis.

== Immune-Metabolic Crosstalk Maintaining the Energy Crisis
<sec:immune-metabolic-crosstalk>

Immune activation is not independent of metabolic dysfunction—instead, immune-mediated pathways actively maintain and amplify the energy crisis. This creates a feedback loop where immune activation perpetuates energy failure.

=== Tryptophan-Kynurenine Metabolism and NAD#super[+] Depletion

The tryptophan-kynurenine pathway is one of the primary immune-activated routes of tryptophan catabolism. Elevated kynurenine production is associated with chronic immune activation (elevated IFN-gamma, TNF-alpha). However, the balance of kynurenine metabolites matters: normal kynurenine metabolism feeds into NAD#super[+] synthesis, supporting mitochondrial energy production; imbalanced metabolism produces neurotoxic metabolites while depleting NAD#super[+].

A recent metabolomics study @Abujrais2024tryptophan (published in ACS Chemical Neuroscience) profiled tryptophan metabolism in ME/CFS plasma and found higher 3-hydroxykynurenine (a neurotoxic branch product), lower kynurenic acid (neuroprotective, NAD#super[+]-producing), and lower quinolinic acid (a neurotoxic NMDA agonist that also feeds NAD#super[+] synthesis via QPRT). The net effect: immune-mediated tryptophan catabolism is diverted away from NAD#super[+] synthesis and toward neurotoxic branches. This directly links immune activation to NAD#super[+] depletion and impaired mitochondrial function.

=== T-Cell Exhaustion with Metabolic Reprogramming

Iu et al. @iu2024tcell_exhaustion (published in PNAS) profiled CD8#super[+] T cell epigenetics and metabolism in ME/CFS, finding that T cells are epigenetically primed toward an exhausted phenotype (high PD-1, TIM-3, LAG-3) while simultaneously showing altered metabolic reprogramming. Post-exercise, this metabolic dysregulation worsened. This suggests T cells cannot sustain normal metabolic flexibility in response to immune demands, contributing to both the dysfunctional immune response and persistent metabolic strain.

=== Exaggerated Innate Immune Response with Metabolic Consequences

Che, Hornig, and Lipkin @Che2025 (published in npj Metabolic Health and Disease) documented an exaggerated innate immune response to standard challenges in ME/CFS. Their metabolomic data showed that immune activation is associated with impaired citric acid cycle (TCA cycle) flux and reduced beta-oxidation capacity. Mechanistically, IFN-gamma (elevated in their cohort) accelerates tryptophan degradation via indoleamine 2,3-dioxygenase (IDO), directly linking innate immune state to NAD#super[+] depletion and energy failure.

=== Oxidative Stress in Immune Cells

Paul and Bhatt @PaulBhatt2025oxidative (published in PNAS) measured reactive oxygen species (ROS) in circulating lymphocytes from ME/CFS and Long COVID patients. They found elevated ROS in memory T cells, with striking sex differences: females showed higher ROS production and T-cell hyperproliferation; males showed evidence of mitochondrial lipid oxidative damage. Critically, metformin treatment attenuated T-cell hyperproliferation in vitro, suggesting ROS-driven immune dysregulation may be pharmacologically reversible.

=== Multi-Omics Integration: The Full Picture

The Heng 2025 multi-omics study @heng2025mecfs integrated cellular ATP profiling with plasma proteomics from 61 matched pairs, revealing coordinated abnormalities: elevated AMP and ADP with a reduced ATP/ADP ratio (indicating cellular energy stress), altered immune cell subsets skewed toward less mature effector populations, and elevated vascular dysfunction markers (VWF, fibronectin, thrombospondin-1). A 7-biomarker panel spanning these three domains achieved 91% diagnostic accuracy (Section @sec:systems-biology in Chapter @ch:integrative-models).

These findings were substantially extended by Hoel et al.\ (2026) @Hoel2026proteome, who applied aptamer-based proteomics (SomaScan, 7,326 aptamers targeting 6,493 proteins) to serum from 50 ME/CFS patients and 29 healthy controls. Their analysis revealed a striking metabolic enzyme signature: key glycolytic enzymes—glyceraldehyde-3-phosphate dehydrogenase (GAPDH), fructose-bisphosphate aldolase A (ALDOA), and L-lactate dehydrogenase B chain (LDHB)—were among the most significantly reduced intracellular proteins in ME/CFS serum. Since these enzymes are normally abundant in skeletal muscle, their reduced circulating levels suggest decreased muscle protein turnover or altered cellular release patterns rather than simple enzyme deficiency. Notably, ATP synthase inhibitory factor 1 (ATP5IF1), which regulates mitochondrial ATP hydrolysis under hypoxic conditions, was also reduced, consistent with the mitochondrial stress protection deficit described in Section @sec:mitochondrial-dysfunction.

Complementing the intracellular enzyme reductions, Hoel et al.\ found chronically elevated metabolic stress hormones: FGF-21 was significantly higher in ME/CFS patients, validated by ELISA in an extended cohort (n = 212 ME/CFS, n = 66 HC), with women showing a particularly significant elevation. GDF-15, leptin, resistin, and fatty acid-binding proteins FABP3 and FABP4 were also elevated. FGF-21 and GDF-15 are “exerkines” that normally rise transiently during intense exercise to coordinate systemic energy adaptation @Hoel2026proteome. Their chronic elevation in ME/CFS—in the absence of intense exercise—suggests a state of persistent metabolic emergency signaling, as though the body is continuously experiencing the energy crisis of maximal exertion at rest. This pattern connects to the clinical observation that ME/CFS patients describe exhaustion disproportionate to activity level: their metabolic stress signaling reflects a genuine cellular energy crisis, not a perceptual distortion.

Together, these studies demonstrate that energy metabolism dysfunction in ME/CFS is not limited to mitochondrial abnormalities but extends to a coordinated shift in the circulating metabolic landscape: reduced intracellular metabolic enzymes, elevated stress hormones, and altered secretory patterns spanning multiple tissues. Breaking this cycle may require simultaneous intervention at multiple levels—addressing both the mitochondrial energy deficit and the chronic stress signaling that perpetuates it.

== The Multi-Level Vicious Cycle
<sec:vicious-cycle>

Integrating findings from vascular, metabolic, and immune domains reveals a multi-level positive feedback loop where dysfunction at any level amplifies all others. This model, synthesized by Wirth, Scheibenbogen, and colleagues, explains both the severity and persistence of the energy crisis.

=== The Cycle in Detail

The vicious cycle operates as follows:

    - *Vascular dysfunction* (Section @sec:microcirculation-oxygen): Endothelial dysfunction, RBC deformability impairment, and capillary remodeling reduce oxygen and substrate delivery to tissue.

    - *Ischemia*: Reduced oxygen availability forces cells toward anaerobic metabolism, producing lactate and protons.

    - *Proton accumulation*: Intracellular acidosis increases sodium-hydrogen exchanger (NHE1) activity, importing sodium to extrude protons.

    - *Sodium overload*: Na#super[+]/K#super[+]-ATPase is insufficient to clear accumulated sodium, particularly under ATP limitation.

    - *NCX1 reversal + NCLX block*: Elevated intracellular Na#super[+] shifts the NCX1 reversal potential, driving reverse-mode calcium import. Simultaneously, sodium overload reduces the driving force of the mitochondrial calcium exporter NCLX (SLC8B1), trapping calcium in the mitochondrial matrix.

    - *Calcium overload*: Cytoplasmic and mitochondrial calcium accumulate via these two independent mechanisms, causing direct mitochondrial damage at subsarcolemmal sites, further impairing ATP production.

    - *Mitochondrial dysfunction*: Damaged mitochondria produce less ATP and more ROS.

    - *ROS amplification*: Elevated ROS damages endothelial cells, further impairing vascular function; damages Na#super[+]/K#super[+]-ATPase, reducing sodium clearance; and damages RBC membranes, further reducing deformability.

    - *Return to step 1*: ROS-mediated vascular damage perpetuates the original ischemia.

This is not a linear pathway with a beginning and end. Rather, it is a positive feedback loop where each step amplifies the next, and dysfunction propagates in all directions simultaneously.

=== Multi-Level Integration

Critically, this cycle operates at multiple biological levels simultaneously:

    / *Vascular level*: Endothelial dysfunction → reduced perfusion
    / *Cellular level*: Ischemia → anaerobic metabolism, ion dysregulation, mitochondrial damage
    / *Molecular level*: ROS, calcium, sodium dysregulation → persistent vascular and mitochondrial injury
    / *Immune level*: Immune activation accelerates tryptophan catabolism (NAD#super[+] depletion) and oxidative stress, perpetuating energy failure

No single level can be addressed in isolation. A therapeutic intervention that improves mitochondrial function alone, without addressing vascular dysfunction or ion dysregulation, will have limited impact because ROS and calcium overload will continue to damage mitochondria. Similarly, anti-inflammatory therapy alone cannot restore energy if vascular dysfunction persists. Effective treatment likely requires simultaneous multi-level intervention.

=== Evidence for the Integrated Cycle

Appelman et al. @Appelman2024muscle (published in Nature Communications) studied muscle mitochondrial function before and after post-exertional malaise (PEM). They found that exercise triggered reductions in OXPHOS capacity and succinate dehydrogenase (SDH) activity, consistent with mitochondrial damage during PEM. Importantly, this occurred despite normal cardiopulmonary responses during exercise—the heart and lungs functioned normally, confirming that the energy crisis is peripheral (muscle) and mitochondrial, not cardiopulmonary.

Syed et al. @Syed2025 (published in Physiology) provided a comprehensive review of mitochondrial dysfunction across ME/CFS literature, synthesizing evidence from biochemistry, imaging, genetics, and clinical studies. Their analysis supports the multi-level model: mitochondrial pathology is real and well-documented, but its severity and persistence are amplified by upstream vascular, immune, and ion dysregulation.

#hypothesis(title: [The Multi-Level Energy Crisis and Vicious Cycle in ME/CFS])[

ME/CFS pathophysiology is fundamentally a multi-level positive feedback loop where vascular dysfunction → ischemia → ion dysregulation → mitochondrial damage → ROS → vascular amplification, perpetuated by immune-mediated NAD#super[+] depletion and metabolic reprogramming. Unlike linear models predicting clear breakpoints for intervention, this cycle requires multi-level therapeutic targeting. Evidence comes from multiple independent research groups documenting vascular pathology (Scherbakov, Haffke, Wust, Mueller), ion dysregulation (Wirth, Scheibenbogen), mitochondrial damage (Appelman), and immune-metabolic coupling (Che, Hornig, Lipkin; Paul, Bhatt; Germain). The cycle is consistent with both symptom severity (multiple simultaneous failures) and disease persistence (mutual amplification). Scheibenbogen and Wirth @Scheibenbogen2025muscle formalised this as a proposed framework termed AIMM, noting that its acquired character implies potential reversibility---a claim that itself awaits direct human validation. *Falsifiable predictions*: (1) combination interventions targeting ≥2 cycle levels will produce greater sustained benefit than mono-target approaches in RCT comparison; (2) patients with elevated intracellular muscle sodium by #super[23]Na-MRI will show greater response to ion-homeostasis-correcting therapies than patients with normal sodium; (3) correcting sodium overload alone will attenuate but not fully resolve the cycle. Certainty: 0.55 (mechanistic evidence for individual cycle components comes from multiple independent groups; the integrated positive feedback loop is logical inference not yet demonstrated in a single interventional study; the ion cascade sub-component rests primarily on one small pilot @Petter2022sodium requiring independent replication; AIMM reversibility is an untested sub-claim).

] <hyp:vicious-cycle-integrated>

#limitation(title: [Multi-Level Vicious Cycle: Integrated Loop Not Demonstrated])[
The vicious cycle model (vascular $\to$ ischemia $\to$ ion dysregulation $\to$ mitochondrial damage $\to$ ROS $\to$ vascular amplification) integrates findings from multiple independent research groups, but no single study has demonstrated the complete loop operating in ME/CFS patients. Each link is supported by evidence from separate cohorts using different methodologies. The integration is logical inference, not empirical demonstration. Positive feedback loops are inherently difficult to distinguish from parallel independent dysfunctions that happen to co-occur. The therapeutic implication that multi-level targeting is required has not been tested against sequential single-target intervention.
]

== Summary: Integrated Metabolic Model
<sec:metabolism-summary>

This chapter and the broader document identify over thirty distinct mechanisms affecting energy creation, delivery, and utilization in ME/CFS. These range from well-established biochemical pathways through documented dysfunctions to emerging hypotheses. The following taxonomy organizes all identified mechanisms by evidence status.

=== Normal ATP Synthesis Pathways

Five baseline energy systems supply cellular ATP under normal conditions. All are relevant to ME/CFS because each represents a potential point of failure:

    / *Glycolysis*: Cytoplasmic, anaerobic conversion of glucose to pyruvate yielding 2 ATP and 2 NADH per glucose (Section @sec:atp-synthesis).
    / *Krebs cycle (TCA cycle)*: Mitochondrial matrix oxidation of acetyl-CoA generating 3 NADH, 1 FADH#sub[2], and 1 GTP per turn (Section @sec:atp-synthesis).
    / *Electron transport chain and oxidative phosphorylation*: Inner mitochondrial membrane complexes I–V producing 30–32 ATP per glucose via the proton gradient (Section @sec:atp-synthesis).
    / *Fatty acid $beta$-oxidation*: Carnitine-shuttle-dependent mitochondrial degradation of long-chain fatty acids into acetyl-CoA units (Section @sec:lipid-metabolism).
    / *Phosphocreatine buffering*: Immediate ATP regeneration from phosphocreatine, operating on a timescale of seconds (Section @sec:normal-metabolism).

=== Documented Energy Dysfunctions

The following dysfunctions are supported by peer-reviewed evidence at the level of established or probable findings:

    / *Impaired mitochondrial ATP production*: Reduced ATP in lymphocytes/PBMCs, abnormal mitochondrial morphology on electron microscopy, and reduced oxygen consumption rates across multiple studies (Section @sec:mito-evidence).

    / *Elevated AMP/ADP with reduced ATP/ADP ratio*: Heng et al.\ 2025 multi-omics study ($n=61$) documented elevated AMP (median 312.2 nM vs 147.2 nM controls) and reduced ATP generation in white blood cells @heng2025mecfs (Section @sec:mito-evidence).

    / *WASF3–ER stress–Complex IV pathway*: Viral ER stress elevates WASF3, which translocates to mitochondria and disrupts respiratory chain supercomplex assembly, specifically impairing Complex IV @wang2023wasf3 (Section @sec:mito-damage).

    / *Reactive oxygen species vicious cycle*: Electron leakage at Complexes I and III (5–10% in ME/CFS vs normal 2%) damages mitochondrial DNA, proteins, and membranes, producing further ROS in a self-amplifying loop (Section @sec:ros).

    / *Nitrosative stress*: Excess NO and peroxynitrite inhibit Complex I, Complex IV, and aconitase, directly impairing both the ETC and TCA cycle (Section @sec:rns).

    / *Glutathione depletion*: Reduced cortical glutathione correlating with physical functioning ($rho=0.506$) and energy ($rho=0.606$) @Shungu2012glutathione (Section @sec:oxidative-stress).

    / *TCA cycle intermediate deficiencies*: Significantly reduced plasma citrulline, malate, and isocitrate; diagnostic pyruvate/isocitrate and ornithine/citrulline ratios @Yamano2016tca_urea (Chapter @ch:gut-microbiome).

    / *Pyruvate dehydrogenase dysfunction*: Impaired conversion of pyruvate to acetyl-CoA at the TCA cycle entry point; thiamine and lipoic acid are cofactors (Section @sec:energy-interventions).

    / *Fatty acid oxidation defects*: Reduced carnitine levels, elevated acylcarnitines suggesting incomplete oxidation, and premature shift to glucose utilization during exercise (Section @sec:lipid-metabolism).

    / *CoQ10 deficiency*: Significantly lower plasma CoQ10 with 44.8% of patients below the lowest control value; correlates with fatigue, autonomic symptoms, and cognitive dysfunction @Maes2009CoQ10 (Section @sec:energy-interventions).

    / *NAD#super[+]/NADH dysregulation*: Abnormal NAD#super[+] metabolism documented in ME/CFS white blood cells, impairing Complex I function, glycolysis, and TCA cycle activity @heng2025mecfs (Section @sec:mito-evidence).

    / *Immune cell metabolic dysfunction*: CD8#super[+] T cells show failed Warburg-effect transition: reduced mitochondrial membrane potential and inability to switch from oxidative phosphorylation to glycolysis upon activation @Mandarano2020 (Chapter @ch:immune-dysfunction).

    / *Lactate accumulation and anaerobic shift*: Earlier and greater lactate accumulation during exercise, elevated resting and brain lactate, slower post-exercise clearance, and leftward-shifted anaerobic threshold (Section @sec:carbohydrate).

    / *Brain lactate elevation*: Elevated ventricular and regional brain lactate on MR spectroscopy, with lactate-to-creatine ratio increases in right insula, thalamus, and cerebellum @Shungu2012glutathione (Section @sec:compartmental-energy).

    / *Oxygen delivery impairment*: Fibrinaloid microclots ($>$10-fold greater burden), reduced red blood cell mass (93.8% of female patients below normal), impaired flow-mediated dilation, and 91% abnormal cerebral blood flow reduction during tilt testing (Chapter @ch:cardiovascular).

    / *Catecholamine deficiency*: Reduced CSF dopamine metabolites (HVA) and norepinephrine metabolites (MHPG) @walitt2024deep, impairing autonomic cardiovascular regulation and energy mobilization on demand (Section @sec:catecholamine-metabolism).

    / *Na#super[+]/K#super[+]-ATPase impairment*: Elevated baseline intracellular muscle sodium (12.2 mM vs 9.4 mM, $p=0.003$) with greater post-exercise accumulation, suggesting ion pump failure secondary to ATP deficit @Petter2022sodium (Chapter @ch:supplements).

=== Hypothesized Energy Mechanisms

The following mechanisms are proposed but not yet confirmed. Where explicitly assessed, certainty levels are noted:

    / *Selective energy dysfunction (CNS-dependency hypothesis)*: ME/CFS selectively impairs CNS-dependent and demand-responsive processes while sparing autonomous steady-state functions, suggesting an energy _allocation_ problem rather than a global production deficit (Section @sec:selective-energy-dysfunction).

    / *Astrocyte-neuron lactate shuttle dysfunction \normalfont{(certainty 0.35)}*: Neuroinflammation may reprogram astrocytes toward a glycolytic-inflammatory phenotype, reducing lactate transfer to neurons via MCT2/MCT4 downregulation and explaining coexistent elevated brain lactate with cognitive dysfunction (Section @sec:compartmental-energy; Chapter @ch:neurological).

    / *Cell danger response*: Cells remain stuck in a defensive metabolic mode—reduced mitochondrial function, altered purinergic signaling, maintained inflammatory readiness—that evolved as a protective response but fails to terminate @Naviaux2014cdr (Section @sec:metabolic-trap).

    / *Hypometabolic dauer state*: ME/CFS as a hypometabolic survival state analogous to the _C. elegans_ dauer state, with ${tilde}$80% of metabolic pathways suppressed and a ${tilde}$2-year threshold separating potentially reversible early disease from entrenched hypometabolism (Section @sec:metabolic-trap).

    / *Ketone bypass hypothesis*: Beta-hydroxybutyrate and acetoacetate may bypass blocked TCA cycle steps and the impaired ANLS by entering neurons directly via MCT1/MCT2, potentially benefiting patients with TCA (but not ETC) defects (Chapter @ch:speculative-hypotheses).

    / *Purinergic signaling dysregulation*: Extracellular ATP acting as danger signal via sensitized P2X/P2Y receptors may explain delayed PEM through exercise-induced massive inappropriate danger signaling and NLRP3 inflammasome activation (Chapter @ch:speculative-hypotheses).

    / *Succinate as metabolic danger signal*: Succinate accumulation from impaired oxidative phosphorylation activates NLRP3 inflammasome and stabilizes HIF-1$alpha$, creating a self-reinforcing glycolytic-inflammatory loop (Chapter @ch:symptom-mechanisms).

    / *IDO metabolic trap*: IFN-$gamma$-activated IDO diverts tryptophan to the kynurenine pathway, producing neurotoxic metabolites that perpetuate immune activation, maintaining the metabolic diversion in a self-sustaining loop (Section @sec:metabolic-trap).

    / *Metabolic flexibility loss*: Inability to switch between fuel sources (glucose, fatty acids, ketones) based on availability and demand, potentially addressable through time-restricted eating protocols (Chapter @ch:emerging-therapies).

    / *Arginine-citrulline/NO cycle dysfunction*: Low citrulline/arginine availability produces substrate-limited NO synthesis, impairing vasodilation, mitochondrial biogenesis (via PGC-1$alpha$), and endothelial function @Yamano2016tca_urea (Chapter @ch:gut-microbiome).

    / *Thyroid hormone resistance*: Suboptimal T4$\to$T3 conversion and possible reduced expression of thyroid hormone transporters (MCT8, MCT10), impairing basal metabolic rate and mitochondrial biogenesis (Chapter @ch:endocrine).

Therapeutic interventions targeting these energy deficits—including mitochondrial cofactors, substrates, and biogenesis signals—are discussed in Section @sec:energy-interventions and extensively in #link(<part:treatment>)[Part III (Treatment and Management)].



This metabolic dysfunction interacts bidirectionally with immune dysfunction (Chapter @ch:immune-dysfunction) and neurological abnormalities (Chapter @ch:neurological): inflammation impairs metabolism, metabolic dysfunction impairs immune cell function, and energy deficits affect brain function. Chapter @ch:integrative-models synthesizes these bidirectional interactions into comprehensive models of ME/CFS pathophysiology, examining how metabolic dysfunction participates in vicious cycles (Section @sec:unifying-mechanisms) and contributes to the multi-lock state that perpetuates chronic illness (Section @sec:synthesis).
