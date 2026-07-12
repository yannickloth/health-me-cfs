// ch14k-vascular-brainstorm.typ
// Creative brainstorm: vascular-primary mechanisms, novel treatment targets,
// and mathematical model sketches derived from the 2022-2026 vascular literature.
// Added 2026-04-10.

#import "../../shared/environments.typ": *

== Vascular-Centric Brainstorm: Novel Hypotheses, Treatments, and Mathematical Approaches
<sec:vascular-brainstorm>

The growing vascular pathology literature in ME/CFS opens a set of creative mechanistic questions not yet addressed in the clinical or research literature. This section explores them speculatively.

=== Novel Mechanistic Hypotheses

#hypothesis(title: [The Glycocalyx as a Molecular Pacing Device: Impaired Flow-Mediated Exercise Regulation])[
In healthy subjects, the endothelial glycocalyx acts as a mechanosensor: blood flow-induced shear stress deforms glycocalyx heparan sulphate chains, activating eNOS and producing NO-mediated vasodilation calibrated to local metabolic demand. If glycocalyx degradation (via sheddases, SASP, inflammatory mediators) impairs this mechanosensing, the vascular system loses the ability to accurately calibrate local blood flow to exercise demand.

The predicted consequence: even sub-threshold exertion that should produce proportional local vasodilation instead fails to do so, delivering inadequate oxygen to contracting muscle. This would produce the characteristic ME/CFS pattern of disproportionate post-exertional symptoms at low absolute workloads — not because mitochondria are failing, but because the blood flow regulatory system cannot respond accurately.

_Certainty: 0.30._ Glycocalyx mechanosensing is established physiology; its impairment in ME/CFS is inferred from endothelial dysfunction data, not directly measured.

*Falsifiable predictions:*
    + ME/CFS patients should show blunted flow-mediated dilation responses that are proportionally worse during incremental exercise (not just at rest)
    + Syndecan-1 shedding (glycocalyx damage marker) should correlate with VE/VCO#sub[2] slope on CPET
    + Glycocalyx restoration (sulodexide, or recombinant heparanase inhibitor) should normalise the flow-mediated exercise vasodilation response before improving resting FMD

*Research priority:* Intra-exercise flow-mediated dilation measurement (using Doppler during low-level ergometry) has not been performed in ME/CFS.
] <hyp:glycocalyx-pacing-device>

#hypothesis(title: [Orthostatic Hypocapnia as a Positive Feedback Loop for Microclot Formation])[
The documented orthostatic hypocapnia in ME/CFS (PETCO#sub[2] 26--30~mmHg during tilt ) may contribute to microclot persistence via a novel biochemical pathway: hypocapnia (alkalosis) shifts pH toward higher values. Based on general coagulation physiology (alkalosis-associated coagulopathy is well documented in trauma and critical care settings, though not specifically studied in the orthostatic context), higher pH is expected to activate several coagulation factors and inhibit tissue plasminogen activator (tPA), shifting the balance toward coagulation over fibrinolysis. _No citation specific to the orthostatic/ME/CFS context is available; this link is an inference from general physiology._

In this model, every orthostatic episode in ME/CFS produces: (1) cerebral hypoperfusion via CO#sub[2]-mediated vasoconstriction, (2) mild systemic alkalosis favoring coagulation over fibrinolysis, (3) incremental microclot accumulation, (4) worsened capillary obstruction, (5) worse tissue hypoxia and PEM. Over months to years, this cycle could explain the progressive capillary basement membrane thickening documented in ME/CFS .

_Certainty: 0.20._ Each individual link is physiologically grounded; the integrated cycle in ME/CFS has not been directly tested.

*Falsifiable prediction:* Tilt-induced alkalosis (measured by arterial or capillary pH) should correlate with post-tilt microclot burden (measured by fluorescence microscopy) in a within-patient comparison.
] <hyp:hypocapnia-microclot-loop>

#speculation(title: [Senescent Endothelial Cell Exosomes as Systemic SASP Propagators])[
Senescent cells shed exosomes (senescence-associated extracellular vesicles, SA-EVs) that can induce senescence in adjacent non-senescent cells — the "bystander effect." If senescent endothelial cells in ME/CFS shed SA-EVs into the circulation, these vesicles could:
    (1) induce senescence in distant endothelial beds not directly infected by the initial virus
    (2) suppress NK and T cell function via SASP cytokines carried in the exosome cargo
    (3) transfer procoagulant surface proteins (phosphatidylserine, tissue factor) to circulating platelets

This would explain why ME/CFS cardiovascular pathology is systemic (affecting cerebral, gut, and skeletal muscle vasculature simultaneously) despite localised initial viral injury, and why the disease is self-propagating.

_Certainty: 0.15._ SA-EV biology is an active research field; their role in ME/CFS is entirely speculative. No ME/CFS study has characterised extracellular vesicle senescence markers.

*Research proposal:* Characterise EV cargo in ME/CFS plasma for SA-EV markers (p21, p16, SA-$beta$-galactosidase-containing EVs) and test whether ME/CFS EVs induce senescence in healthy endothelial cells in vitro.
] <spec:saev-propagation>

#hypothesis(title: [RBC Phosphatidylserine Externalisation as a Microclot Nucleation Signal])[
Under oxidative stress, RBC membrane phosphatidylserine (PS) flips from the inner to the outer leaflet — a signal that normally marks old RBCs for phagocytic clearance. PS externalisation also directly activates platelets and promotes fibrin polymerisation on the RBC surface. ME/CFS RBCs show elevated ROS production  and morphological abnormalities consistent with membrane stress (the latter documented in Long COVID RBCs , and inferred by analogy for ME/CFS given shared post-infectious context).

If ME/CFS RBCs externalise PS at elevated rates, they could act as continuous nucleation sites for fibrin microclot formation — explaining the microclot burden documented by Nunes et al.\  without requiring primary coagulation factor defects. This would also explain why microclot burden correlates with RBC morphological abnormality: the RBC membrane defect is the primary driver of microclot nucleation.

_Certainty: 0.30._ PS externalisation on ME/CFS RBCs has not been directly measured; it is inferred from documented ROS elevation and morphological abnormalities.

*Falsifiable prediction:* Annexin-V binding to ME/CFS RBCs (the standard assay for PS externalisation) should be elevated, and should correlate with microclot area in fluorescence microscopy of the same patient sample.
] <hyp:rbc-ps-microclot-nucleation>

#hypothesis(title: [BBB Transport Confounding of TSPO PET Neuroinflammation Findings])[
Peripheral inflammation in ME/CFS may reduce blood-to-brain transport of TSPO PET tracers @Barzon2026TSPOBBB, creating false-negative neuroinflammation findings. Negative TSPO PET results in ME/CFS @Raijmakers2021TSPOCFS may reflect BBB dysfunction rather than absence of central inflammation.

Barzon et al.\ (2026) analyzed 358 TSPO PET scans across three tracers ([11C]-PK11195, [18F]-DPA714, [11C]-PBR28) and demonstrated that peripheral inflammation (elevated CRP) correlates with reduced tracer brain influx rate constant (K1). This effect was consistent across all tracers tested, indicating a fundamental BBB transport limitation rather than tracer-specific issue.

If ME/CFS involves systemic inflammation (as suggested by plasma proteomics and cytokine studies), TSPO PET may systematically under-detect brain microglial activation in ME/CFS patients. This confounding factor complicates interpretation of the single published ME/CFS TSPO-PET study, which found no significant difference in TSPO binding between ME/CFS patients and healthy controls @Raijmakers2021TSPOCFS.

Under this hypothesis, three interpretations of negative TSPO PET findings in ME/CFS are possible:
1. *No neuroinflammation*: ME/CFS pathology is entirely peripheral (muscle, bone marrow, immune system) without central microglial involvement
2. *Masked neuroinflammation*: Central microglial activation exists but TSPO tracer cannot reach it due to BBB transport limitation caused by systemic inflammation
3. *Mixed pathology*: Peripheral immune activation drives symptoms via non-neuroinflammatory mechanisms (e.g., vagal signaling, peripheral afferent sensitization) while central inflammation is present but invisible to TSPO-PET

*Falsifiable prediction:* TSPO tracer brain influx rate (K1) will be lower in ME/CFS patients compared to healthy controls, particularly during PEM flare-ups when peripheral inflammation is expected to be highest. Patients with highest CRP or plasma cytokine levels will show lowest brain TSPO K1 values. If K1 values are normal in ME/CFS, BBB transport confounding is not the explanation for negative TSPO-PET findings.

*Limitations:* No study has directly measured TSPO tracer K1 (brain influx rate) in ME/CFS. Barzon et al.\ (2026) finding was in depression and schizophrenia patients, not ME/CFS. Replication status: BBB transport limitation well-established across three tracers; ME/CFS application untested. Single negative ME/CFS TSPO-PET study @Raijmakers2021TSPOCFS did not measure K1 and cannot distinguish between "no inflammation" and "masked inflammation" interpretations.
] <hyp:bbb-tspo-confounding>

#hypothesis(title: [Peripheral-Inflation, Central-Starvation: Resource Reallocation Hypothesis])[
The paradoxical pattern suggested by preliminary Michelle James data (elevated peripheral TSPO, decreased brain TSPO) may reflect a resource reallocation mechanism: systemic inflammation drives massive TSPO upregulation in peripheral immune cells (monocytes in bone marrow, muscle macrophages), while mitochondrial dysfunction in brain microglia prevents compensatory TSPO upregulation. The brain's high energy demand (20--25% of resting metabolism) combined with ME/CFS mitochondrial impairment may exhaust capacity for microglial activation, leaving CNS "immune-quiet" despite peripheral inflammation driving symptoms via vagal and humoral signaling.

Under this hypothesis:
- *Peripheral inflammation*: Drives TSPO upregulation in immune-accessible tissues (bone marrow, muscle, spleen) where cells still have mitochondrial capacity
- *Central starvation*: Mitochondrial dysfunction in brain microglia limits ability to upregulate TSPO even if microglia are "activated" in a functional sense
- *Pathophysiological implication*: ME/CFS symptoms are driven by peripheral immune activation (vagal signaling, afferent sensitization) rather than central neuroinflammation, explaining why negative TSPO PET findings coexist with systemic inflammation

This model predicts that treatments reducing peripheral immune activation (immunomodulators, senolytics) should improve symptoms without changing brain TSPO signal, and that mitochondrial support therapies may fail to improve brain TSPO binding because mitochondrial dysfunction limits capacity for activation.

*Evidence Link:*
- Direct: Michelle James preliminary data (conference-only) shows peripheral TSPO elevation with brain signal decrease
- Direct: Barzon 2026 shows peripheral inflammation reduces TSPO tracer brain influx (BBB transport confounding)
- Direct: Heng 2025 shows immune cell energy deficits (reduced ATP/ADP ratio)
- Supporting: Van Campen 2020-2024 series shows 91% of ME/CFS patients have CBF decline during orthostasis
- Supporting: Walitt 2024 shows central catecholamine deficiency in ME/CFS

*Certainty:* 0.25 (Mechanistically plausible; Michelle James data not peer-reviewed; alternative explanations exist)

*Falsifiable predictions:*
1. ME/CFS patients should show elevated TSPO signal in bone marrow, spleen, and postural muscles on whole-body TSPO PET, with brain signal equal to or below healthy controls
2. TSPO expression in ME/CFS peripheral monocytes should be elevated (flow cytometry), while brain microglia from post-mortem tissue (if available) should show normal or reduced TSPO
3. Peripheral inflammation markers (CRP, IL-6, TNF-alpha) should correlate positively with peripheral TSPO signal but negatively with brain TSPO signal (supporting trade-off hypothesis)
4. If peripheral TSPO elevation drives symptoms, treatments that reduce peripheral immune activation (immunomodulators, senolytics) should improve symptoms without changing brain TSPO signal

*Alternative interpretation:* The observed brain signal decrease could be BBB transport limitation (Barzon 2026 mechanism) rather than true absence of microglial activation. This can be distinguished by measuring tracer influx rate K1 directly.
] <hyp:peripheral-inflation-central-starvation>

=== Novel Treatment Proposals

#open-question(title: [Senolytics in ME/CFS: Dasatinib + Quercetin Pilot Trial Design])[
If virus-induced endothelial senescence is causal , senolytics represent a rationally-targeted intervention. The dasatinib + quercetin (D+Q) combination has the strongest senolytic evidence in other conditions. A pragmatic ME/CFS pilot design:

*Design:* Intermittent dosing (D 100~mg + Q 1000~mg orally for 2 consecutive days per month for 3 months) — the intermittent protocol used in IPF trials, chosen because senolytics need only be present when killing senescent cells, and chronic dosing risks off-target toxicity (dasatinib is a BCR-ABL inhibitor with haematological and pleural effusion risks).

*Primary outcome:* SASP markers at 3 months (GDF-15, IL-6, IL-8, syndecan-1 as glycocalyx shedding index).

*Secondary outcomes:* EndoPAT reactive hyperemia index, 6-minute walk distance, SF-36 vitality, CPET peak VO#sub[2].

*Safety monitoring:* Complete blood count at each cycle (dasatinib myelosuppression risk), pleural effusion symptoms.

*Key eligibility:* Post-infectious ME/CFS (to select for virus-induced endothelial senescence) with elevated SASP marker baseline. Navitoclax (a BCL-2/XL inhibitor with a distinct senolytic mechanism from D+Q) would be a future escalation if D+Q shows inadequate SASP reduction, given its different target profile — though thrombocytopenia risk from BCL-XL inhibition requires dose modification protocols.

This design generates mechanistic data (does senolytic treatment reduce SASP in ME/CFS?) and safety data regardless of clinical outcome.

*Prescription note:* Dasatinib is a BCR-ABL tyrosine kinase inhibitor licensed for leukaemia. Off-label prescribing requires oncology familiarity with its safety profile; it is not appropriate for GP-level off-label use. The dosing detail above describes a *research protocol*, not a clinical recommendation for individual patients outside a supervised trial.
] <oq:senolytics-mecfs-trial>

#open-question(title: [Glycocalyx Restoration as Prevention: Early Post-COVID Intervention])[
The Scheibenbogen-Wirth temporal model  implies that early post-COVID vascular intervention might prevent ME/CFS progression. Sulodexide (glycocalyx precursor) has an established safety record and showed endothelial function improvement in Long COVID within 21 days .

*Research proposal:* A prevention trial enrolling COVID-19 patients within 4 weeks of infection who show early markers of endothelial glycocalyx shedding (plasma syndecan-1 $>$ 30~ng/mL), randomised to sulodexide 500~LSU daily for 90 days vs.\ placebo. Primary outcome: ME/CFS incidence at 6 months (by consensus criteria). If the vascular-primary model is correct, early glycocalyx restoration should reduce ME/CFS incidence by interrupting the capillary damage-to-mitochondrial injury cascade before it becomes structural.

This trial design is feasible with existing infrastructure, uses an approved medication, and would simultaneously test the vascular-primary causal hypothesis and provide clinical benefit data.
] <oq:glycocalyx-prevention-trial>

#open-question(title: [P2X3 Antagonism + Volume Expansion: Combination Targeting Orthostatic Symptom Amplifiers])[
The orthostatic symptom burden in ME/CFS appears to be amplified by at least two independent mechanisms: preload failure (reduced blood volume, venous pooling) and carotid body sensitisation (exaggerated hypoxic/hypercapnic reflexes driving dysfunctional breathing during orthostasis ). Current management addresses only the first (fludrocortisone, midodrine, IV saline).

A combination intervention targeting both:
    - *Volume expansion*: Oral rehydration or fludrocortisone to address preload failure
    - *P2X3 antagonism* (gefapixant): To reduce carotid body sensitisation and attenuate orthostatic hypocapnia

The hypothesis is that the two components are additive because they target mechanistically independent amplifiers. Orthostatic symptoms would be expected to improve more with the combination than either alone, measurable by tilt-table PETCO#sub[2] trajectories and OI symptom scores.
] <oq:p2x3-volume-combo>

=== Endothelial Senescence as Unifying Mechanism (Long COVID ↔ ME/CFS)

#hypothesis(title: [Endothelial Senescence as Unifying Mechanism in ME/CFS and Long COVID])[
Nunes et al.~@Nunes2026endothelialsenescence propose that acute viral infection induces endothelial dysfunction and senescence at blood-brain barrier, cerebral arteries, gastrointestinal tract, and skeletal muscle.
The endothelial senescence-associated secretory phenotype (SASP) is characterized by proinflammatory, prooxidative, procoagulant, and vasoconstriction-prone properties.
Critically, authors distinguish endothelial dysfunction from coagulopathy: SASP is procoagulant but does not equate to overt clotting disorder @McAlpine2026 @Nunes2026endothelialsenescence.
Study: (hypothesis framework, no primary data, certainty: Low).
Testable predictions: (1) senescent endothelial cells accumulate in ME/CFS/Long COVID patients; (2) SASP factors elevated in plasma; (3) immune dysfunction prevents clearance of senescent cells; (4) senolytic therapy improves symptoms.
] <hyp:nunes2026endothelialsenescence>

=== Vascular Dysfunction Biomarkers in ME/CFS (First Direct Evidence)

#achievement(title: [Vascular Dysfunction Biomarkers in ME/CFS])[
Heng et al.~@heng2025mecfs conducted multimodal analysis of ME/CFS patients, identifying elevated plasma proteins associated with thrombus formation and vascular reactivity.
Importantly, study distinguishes vascular endothelial dysfunction from overt coagulopathy, aligning with both McAlpine @McAlpine2026 in Long COVID and Nunes @Nunes2026endothelialsenescence theoretical framework.
The study also documented immune cell energy deficits (reduced ATP/ADP ratio) and T/NK subset skewing, providing cross-system evidence of ME/CFS pathophysiology.
Study: (multimodal design, proteomics, certainty: Medium-High).
] <ach:heng2025-vascular>

=== Cross-Disease Comparison: Long COVID Vascular Biomarkers

#clinical-finding(title: [Long COVID: Vascular Biomarkers Correlate with Cognitive and Psychiatric Symptoms])[
McAlpine et al.~@McAlpine2026 found that vascular biomarkers in neuropsychiatric Long COVID differ from recovered controls and acute COVID-19.
Elevated endothelial adhesion markers (sL-selectin, ADAMTS13, sP-selectin, sICAM-1) and vascular reactivity proteins (fetuin, α-2 macroglobulin) characterize Long COVID vascular pathology. Note: ADAMTS13 is a VWF-cleaving protease primarily synthesized in hepatic stellate cells; its elevation reflects thrombotic risk rather than direct endothelial adhesion.
Importantly, coagulation markers (D-dimer, fibrinogen) did not differ from recovered controls, supporting endothelial dysfunction WITHOUT overt coagulopathy.
These vascular biomarkers correlated with cognitive measures (fluency, verbal learning, memory) and psychiatric symptoms (depression, anxiety), linking endothelial dysfunction to "brain fog."
Study: (n=50 Long COVID, n=29 recovered controls, n=28 acute COVID-19, certainty: Medium-High).
] <clinical-findings:mcAlpine2026-cognitive-correlations>

=== Novel Hypotheses from Vascular Biomarker Findings

#hypothesis(title: [Endothelial Adhesion Markers as Cognitive Performance Modulators in ME/CFS])[
McAlpine et al.\ @McAlpine2026 demonstrated that elevated endothelial adhesion markers (sP-selectin, sICAM-1, sL-selectin, ADAMTS13) correlate with impaired cognitive performance in Long COVID, including reduced verbal fluency, learning, and memory. If ME/CFS shares the same endothelial dysfunction pathophysiology , the same biomarker-cognition relationship should hold.

The proposed mechanism: endothelial activation increases vascular permeability and reduces cerebral perfusion efficiency through microvascular adhesion and inflammatory signaling. This could explain "brain fog" and cognitive processing speed deficits in ME/CFS through a vascular-mediated pathway rather than primary neural damage.

_Certainty: 0.40._ The biomarker-cognition correlation is established in Long COVID; ME/CFS extrapolation is inferred from shared endothelial dysfunction patterns but not yet tested.

*Falsifiable predictions:*
    + ME/CFS patients should show the same inverse correlation between sP-selectin/sICAM-1 levels and cognitive test performance (fluency, memory) as observed in Long COVID
    + Vascular biomarker levels should correlate with functional MRI measures of cerebral blood flow velocity
    + Anti-adhesion therapy (targeting P-selectin or ICAM-1) should improve cognitive processing speed before improving subjective fatigue

*Research priority:* Cross-sectional ME/CFS cohort measurement of endothelial adhesion markers vs comprehensive cognitive battery — directly tests whether Long COVID biomarker-cognition pattern extends to ME/CFS.
] <hyp:endothelial-adhesion-cognition>

#speculation(title: [α1-Acid Glycoprotein as Protective Cognitive Biomarker])[
McAlpine et al.\ @McAlpine2026 found that lower α1-acid glycoprotein (AGP) levels were strongly associated with poorer verbal memory, verbal learning, fluency, depression, and anxiety in Long COVID. This inverse relationship (higher AGP = better cognition) is unexpected, as AGP is typically considered an acute-phase reactant.

Potential interpretations:
    (1) AGP may have neuroprotective properties in chronic post-viral states independent of its role as an inflammatory marker
    (2) Low AGP could reflect chronic immune exhaustion or dysregulated acute-phase response
    (3) AGP might modulate endothelial permeability or neuroinflammation through unknown pathways

If this pattern holds in ME/CFS, AGP could serve as both a prognostic cognitive biomarker and a therapeutic target (supplementation or upregulation strategies).

_Certainty: 0.25._ The inverse AGP-cognition relationship is observed in Long COVID; ME/CFS relevance is entirely speculative. No mechanistic studies explain AGP's neuroprotective role.

*Research proposal:* Measure AGP levels in ME/CFS patients vs controls and correlate with cognitive performance. Conduct in vitro studies of AGP's effects on neuronal survival, endothelial permeability, and neuroinflammation models.
] <spec:agp-cognitive-protection>

#hypothesis(title: [Temporal Evolution of Vascular Biomarkers Predicts ME/CFS Recovery Trajectory])[
McAlpine et al.\ @McAlpine2026 found that vascular biomarker dysregulation normalized in a "late Long COVID" cohort (>3 years post-infection), while cognitive and psychiatric symptoms persisted in some individuals. This suggests a dissociation between acute vascular inflammation and chronic symptom maintenance.

If ME/CFS follows a similar temporal pattern:
    (1) Acute phase (0-12 months): Endothelial activation markers elevated, correlate with symptom severity
    (2) Subacute phase (1-3 years): Vascular markers partially normalize, but microstructural capillary damage persists
    (3) Chronic phase (>3 years): Vascular biomarkers return to baseline, but secondary consequences (mitochondrial dysfunction, dysautonomia, neuroinflammation) become primary drivers

This model predicts that anti-inflammatory or endothelial-protective interventions would only be effective in early disease stages, while later-stage ME/CFS requires addressing downstream damage.

_Certainty: 0.35._ Temporal evolution pattern observed in Long COVID; ME/CFS temporal trajectory not characterized. The dissociation hypothesis is plausible but untested.

*Falsifiable predictions:*
    + Longitudinal ME/CFS cohorts should show declining endothelial biomarker levels over time despite persistent symptoms in chronic cases
    + Early-stage ME/CFS patients (less than 12 months) should respond better to anti-endothelial therapies than chronic-stage patients (greater than 3 years)
    + Vascular biomarker levels should predict treatment response to senolytics or glycocalyx restoration therapies

*Research priority:* Longitudinal ME/CFS cohort with serial vascular biomarker measurement at 6, 12, 24, and 36 months post-onset — maps disease trajectory and identifies therapeutic windows.
] <hyp:vascular-biomarker-temporal>

=== Novel Treatment Proposals from Vascular Findings

#open-question(title: [Anti-Adhesion Therapy for Cognitive Symptoms in ME/CFS])[
If endothelial adhesion markers (sP-selectin, sICAM-1, sL-selectin) mediate cognitive impairment through vascular inflammation as suggested by McAlpine et al.\ @McAlpine2026, then targeting these pathways could improve cognitive function.

*Potential agents:*
    - *Crizanlizumab* (anti-P-selectin monoclonal antibody): Approved for sickle cell vaso-occlusive crises; directly targets P-selectin-mediated platelet adhesion
    - *Alicaforsen* (ICAM-1 antisense): Investigational for inflammatory conditions; reduces ICAM-1 expression on endothelium
    - *Small molecule selectin inhibitors*: Oral agents targeting selectin-mediated leukocyte rolling

*Proposed ME/CFS pilot design:*
    - *Population*: ME/CFS patients with elevated endothelial adhesion markers (sP-selectin >75th percentile)
    - *Intervention*: Crizanlizumab 5~mg/kg IV at weeks 0, 2, 4, then monthly for 6 months total
    - *Primary outcome*: Cognitive performance change (GNA battery: fluency, memory, processing speed)
    - *Secondary outcomes*: Vascular biomarker levels, brain fog VAS scores, fatigue severity scales

*Rationale*: If endothelial adhesion drives cognitive dysfunction via reduced cerebral perfusion or neuroinflammation, then blocking this pathway should improve cognitive metrics independent of fatigue improvement. This would establish a mechanistic link and identify patients who might benefit from anti-adhesion therapy.

*Safety considerations*: Crizanlizumab has established safety profile in sickle cell; monitor for infusion reactions, thrombocytopenia, and infection risk. Alicaforsen has more limited safety data but oral bioavailability offers advantage.

*Prescription note*: Both agents are off-label for ME/CFS. Crizanlizumab requires hematology/oncology prescribing familiarity. Alicaforsen remains investigational.
] <oq:anti-adhesion-therapy-cognitive>

#open-question(title: [Biomarker-Guided ME/CFS Subtype Stratification for Targeted Therapy])[
McAlpine et al.\ @McAlpine2026 suggest that vascular biomarkers correlate with specific symptom domains (cognition, psychiatric symptoms) in Long COVID. This implies that ME/CFS patients could be stratified by biomarker profiles into mechanistically distinct subtypes:

*Proposed ME/CFS vascular subtypes:*
    - *Endothelial Adhesion-Dominant*: Elevated sP-selectin/sICAM-1 → cognitive impairment, brain fog; target with anti-adhesion therapy
    - *Angiogenic Failure-Dominant*: Reduced angiogenic capacity markers (VEGF, angiopoietin) → exercise intolerance, PEM; target with pro-angiogenic agents
    - *Glycocalyx Damage-Dominant*: Elevated syndecan-1, heparanase → dysautonomia, orthostatic intolerance; target with glycocalyx restoration
    - *Senescence-Dominant*: Elevated p21/p16, SASP cytokines → multisystem symptoms; target with senolytics

*Research design*: Multi-biomarker panel (endothelial adhesion, angiogenic, glycocalyx, senescence markers) measured in ME/CFS cohort (n=200+). Cluster analysis identifies biomarker-defined subtypes. Each subtype receives targeted therapy in randomized arms.

*Clinical implications*: Biomarker-guided subtype identification could explain heterogeneous treatment responses in ME/CFS, enable precision medicine approaches, and improve clinical trial design by reducing unstratified patient enrollment.

*Implementation challenges*: Requires validated assay panels for all biomarker classes; cost considerations for multi-marker testing; potential overlap between subtypes (patients may have mixed profiles).
] <oq:biomarker-guided-subtyping>

=== Research Priority Matrix

The following priorities are ranked by mechanistic novelty $times$ clinical impact / feasibility:

    + *Senescent cell burden in ME/CFS tissue*: p21/p16 immunostaining in skin punch or muscle biopsies — fundamental unknowns for the senescence hypothesis; low risk, moderate cost
    + *HVR measurement in ME/CFS*: Replicate El-Medany carotid body protocol  in ME/CFS cohorts — 30~min test per patient, no intervention risk
    + *Intra-exercise FMD*: Glycocalyx mechanosensing assessment during low-level ergometry — novel methodology, requires Doppler expertise
    + *PS externalisation on ME/CFS RBCs*: Annexin-V flow cytometry — 2~h assay from standard blood draw, links RBC oxidative damage to microclot nucleation
    + *Longitudinal post-COVID biopsy series*: Serial muscle biopsy at 3, 6, 12~months post-infection stratified by ME/CFS development — the definitive test of vascular-primary temporal model; invasive but scientifically decisive
    + *D+Q pilot senolytic trial*: 30~patients, 3~months, primary endpoint SASP markers — feasibility trial that could be initiated rapidly

=== Mathematical Model Sketch: Vascular-Mitochondrial Bistable Loop

The following ODE sketch formalises the Scheibenbogen-Wirth  vascular-to-mitochondrial causal chain as a dynamical system. It is intended as a framework for future quantitative modelling, not a calibrated simulation.

Let:
- $V(t)$ = microvascular flow adequacy (dimensionless, 0 = complete obstruction, 1 = normal)
- $M(t)$ = mitochondrial structural integrity (dimensionless, 0 = full damage, 1 = intact)
- $"Na"(t)$ = intracellular sodium concentration (mM)
- $"Ca"(t)$ = intramitochondrial calcium concentration ($mu$M)

The coupled system:

$
(d V)/(d t) = r_V dot (1 - V) - delta_V dot C_"clot"(t) - delta_"ROS" dot F(M)
$

$
(d M)/(d t) = -k_"Ca" dot "Ca"(t) + r_M dot V(t) dot (1 - M)
$

$
(d "Na")/(d t) = k_"NHE1" dot (1 - V) / V_0 - k_"NKA" dot M dot "Na"
$

$
(d "Ca")/(d t) = k_"NCX" dot "Na"^2 - k_"NCLX" dot M dot "Ca" - k_"out"
$

Where:
- $r_V$ = vascular repair rate (driven by angiogenic capacity; reduced in ME/CFS )
- $delta_V dot C_"clot"$ = microclot-driven capillary obstruction
- $delta_"ROS" dot F(M)$ = ROS from damaged mitochondria further impairing endothelium
- $k_"NHE1" dot (1 - V)/V_0$ = sodium influx proportional to ischaemic hypoperfusion
- $k_"NKA" dot M dot "Na"$ = Na/K-ATPase clearance dependent on mitochondrial integrity
- $k_"NCX" dot "Na"^2$ = reverse-mode NCX calcium import (quadratic sodium dependence from thermodynamics)
- $k_"NCLX" dot M dot "Ca"$ = mitochondrial calcium efflux blocked by damaged NCLX

*Conjectured behaviour (not proven):* This system is constructed to be _consistent with_ bistability. For low initial microclot burden and intact $r_V$, a fixed-point analysis would predict return to $(V, M, "Na", "Ca") = (1, 1, "Na"_0, "Ca"_0)$ — healthy state. Once microclot burden exceeds a threshold and/or angiogenic repair capacity ($r_V$) is sufficiently reduced, the structure of the equations allows a second stable fixed point at low $V$, low $M$, elevated $"Na"$ and $"Ca"$. Whether the system actually exhibits bistability — and for what parameter ranges — requires numerical bifurcation analysis and empirical parameter estimation, neither of which has been performed. _This is a structural conjecture, not a demonstrated result._

*Therapeutic implication from the model:* If bistability is confirmed by analysis, interventions that simultaneously reduce microclot burden (restoring $V$) AND prevent ROS-mediated endothelial damage (the $delta_"ROS"$ term) AND restore angiogenic repair ($r_V$) would be needed to shift the system back to the healthy attractor. This would predict combination therapy superiority over single-agent approaches. However, this prediction is only as strong as the model's assumptions and the yet-to-be-estimated parameters. The prediction should be treated as a hypothesis-generating result, not a clinically actionable conclusion.

*Research direction:* Parameter estimation for this system requires: (1) longitudinal measurement of microclot burden and capillary flow (to calibrate $delta_V$), (2) serial measurement of intracellular sodium by #super[23]Na-MRI before and during therapeutic intervention (to calibrate $k_"NHE1"$ and $k_"NKA"$), (3) mitochondrial membrane potential measurements in patient biopsies (to estimate $M(t)$ directly).

#limitation(title: [Mathematical Model Limitations])[
This ODE system is entirely speculative and constructed to be *consistent with* bistability, not to demonstrate it. No parameter values have been empirically estimated from ME/CFS patient data. Whether the system actually exhibits bistability — and for what parameter ranges — requires numerical bifurcation analysis and empirical parameter estimation, neither of which has been performed. The therapeutic implications and phase-transition predictions are hypothesis-generating, not clinically actionable, until the model is validated.
] <lim:vascular-mitochondrial-odel-unvalidated>

=== Research Priority Matrix

The following priorities are ranked by mechanistic novelty $times$ clinical impact / feasibility:

    + *Senescent cell burden in ME/CFS tissue*: p21/p16 immunostaining in skin punch or muscle biopsies — fundamental unknowns for the senescence hypothesis; low risk, moderate cost
    + *HVR measurement in ME/CFS*: Replicate El-Medany carotid body protocol  in ME/CFS cohorts — 30~min test per patient, no intervention risk
    + *Intra-exercise FMD*: Glycocalyx mechanosensing assessment during low-level ergometry — novel methodology, requires Doppler expertise
    + *PS externalisation on ME/CFS RBCs*: Annexin-V flow cytometry — 2~h assay from standard blood draw, links RBC oxidative damage to microclot nucleation
    + *Longitudinal post-COVID biopsy series*: Serial muscle biopsy at 3, 6, 12~months post-infection stratified by ME/CFS development — the definitive test of vascular-primary temporal model; invasive but scientifically decisive
    + *D+Q pilot senolytic trial*: 30~patients, 3~months, primary endpoint SASP markers — feasibility trial that could be initiated rapidly



=== May Thurner Syndrome: Venous Compression as a Vascular Substrate

#speculation(title: [May Thurner Syndrome as an Anatomical Substrate for ME/CFS Cardiovascular Pathology])[
*Certainty: 0.25.* May Thurner syndrome (MTS)—compression of the left common iliac vein by the overlying right common iliac artery—warrants investigation as a mechanical contributor to ME/CFS cardiovascular pathology. No direct MTS-ME/CFS evidence exists; the connection is inferred from overlapping pathophysiology.

*Pathways from iliac compression to ME/CFS.*
- *Asymmetric preload failure.* MTS sequesters ~5--10% of effective blood volume in the left lower extremity, compounding the 10--15% total blood volume deficit documented in ME/CFS @Newton2016. Unlike de novo hypovolemia, MTS-driven preload failure is mechanically asymmetric and gravity-dependent—worsening specifically during upright posture. This could explain why some ME/CFS patients show left-leg-predominant edema and disproportionate orthostatic symptoms.
- *IJV flow amplification.* Hartung et al. demonstrated that MTS patients lose 36% of internal jugular vein flow velocity on moving from supine to upright, versus 24% in controls @Hartung2019CerebralVenousReturn. If an ME/CFS patient with pre-existing cerebral hypoperfusion also has MTS, the upright IJV flow reduction is predicted to be synergistic (interaction effect, not merely additive), potentially driving greater cognitive symptoms and PEM than either condition alone. Note that "synergistic" is a structural prediction from cerebrovascular physiology, not an empirically observed effect---the specific magnitude of interaction is unknown.
- *Glycocalyx shedding feedback loop.* Sustained venous hypertension from MTS damages the endothelial glycocalyx, increasing capillary permeability and plasma extravasation—which further depletes circulating volume, increases orthostatic intolerance, and triggers compensatory sympathetic activation. The cycle is: MTS → venous hypertension → glycocalyx shedding → capillary leak → worsened hypovolemia → worse orthostasis → more sympathetic activation → venous pooling → back to MTS (Section @spec:venous-stasis-glymphatic).
- *Autonomic remodeling.* Anderson et al. found reduced HRV, impaired Valsalva response, elevated plasma norepinephrine, and 45% orthostatic hypotension prevalence in MTS patients @Anderson2021AutonomicDysfunction. The COMPASS-31 autonomic score in MTS (34.2) overlaps with ME/CFS ranges, suggesting MTS alone can produce autonomic dysfunction resembling ME/CFS—and when both are present, autonomic pathology may be amplified.

*Treatment evidence as indirect validation.* Iliac vein stenting improves fatigue in 32--68% of MTS patients, with SF-36 vitality gains of 19 points @Wolpert2020IliacStentingOutcomes @OSullivan2018StentingQoL @Ferreira2023VenousCompressionReview. While these patients did not have ME/CFS, the magnitude of improvement exceeds what would be expected from regression to the mean or placebo, suggesting venous drainage can be a reversible fatigue contributor.

*Falsifiable predictions.* At least two of these must be confirmed for the MTS-ME/CFS link to merit clinical investigation: MTS prevalence on CT venography >35% in ME/CFS (vs. 22--24% general population); upright IJV flow velocity lower in MTS+ vs. MTS− ME/CFS, controlling for orthostatic severity; DTI-ALPS glymphatic index inversely correlated with iliac vein compression severity; stenting improves SF-36 vitality ≥10 points in MTS+ ME/CFS vs. sham or medical management.

*Limitations.* Anatomical MTS may be incidental. Reversible venous fatigue is distinct from ME/CFS fatigue. No study has screened an ME/CFS cohort for MTS. Stenting carries procedural risks (thrombosis, stent migration, bleeding). Causal counter-argument: if MTS is causal, why don't 22--24% of the general population with anatomical MTS have ME/CFS? MTS must be a co-factor, not a cause, amplifying existing ME/CFS pathology rather than generating it de novo. Screening carries radiation burden (CT venography), overdiagnosis risk, and is not feasible for bedbound patients. No validated cutoff for what degree of compression is clinically significant in ME/CFS exists; the >50% stenosis threshold used in interventional MTS literature may not apply to orthostatic/neurocognitive outcomes.

*Research priority.* Systematic CT venography or MRV screening of an ME/CFS cohort (n ≥ 200), stratified by orthostatic severity.
] <spec:mts-vascular-substrate>

=== Hypoxia-Mediated Mechanisms

#speculation(title: [HIF Pathway Inertia: Failure of Hypoxic Adaptation in ME/CFS])[
_Certainty: 0.50._ ME/CFS may involve a failure of HIF-1$alpha$ stabilization and transcriptional programme activation despite chronic tissue hypoxia. Under normal physiology, tissue hypoxia triggers HIF-1$alpha$ stabilization, transcriptional activation of >200 target genes including EPO (erythropoiesis), VEGF (angiogenesis), GLUT1 (glycolysis), and BNIP3 (mitophagy). The predicted consequence: ME/CFS patients show blunted EPO and VEGF responses to hypoxia, with miRNA-mediated silencing of the HIF transcriptional programme @Kaczmarek2023miRNAhypoxia. Winkler et al. reported normal basal EPO in ME/CFS, suggesting the deficit may be in *inducibility* rather than baseline production @Winkler2004.

*Subtype qualification:* The pattern may differ by disease subtype. The HIF-2$alpha$ post-viral evidence suggests that post-viral ME/CFS patients may show *elevated* basal VEGF (from sustained HIF-2$alpha$) rather than blunted VEGF, while gradual-onset patients may show the predicted blunted pattern (Section @sec:hif2a-endothelial in @ch:cardiovascular). The HIF inertia hypothesis should be understood as primarily describing the HIF-1$alpha$ arm; the HIF-2$alpha$ arm may follow a separate, subtype-dependent trajectory. Future hypoxia-challenge studies should therefore measure both HIF isoforms and stratify by onset type.

*Falsifiable predictions:*
    + ME/CFS patients exposed to mild normobaric hypoxia (FiO#sub[2] 0.14, 2~h) will show peak plasma EPO elevation less than 60% of control median and peak VEGF elevation less than 50% of control median at 4--8~h
    + ME/CFS PBMCs under 1% O#sub[2] for 6~h will show leq 2-fold induction of HIF-1$alpha$ target genes (EPO, VEGF, PDK1, BNIP3) vs geq 5-fold in healthy PBMCs
    + Baseline miRNA-155/-210 levels will correlate with blunted HIF response (corr coeff leq -0.5 for peak EPO fold-change) and classify responders vs non-responders with AUC geq 0.80

*Limitations.* HIF-1$alpha$ protein measurement is technically challenging (rapid proteasomal degradation on reoxygenation); miRNA-HIF interaction data are from in vitro models, not patient tissue. Blunted inducibility is inferred from single-timepoint basal EPO measurements — serial hypoxia-challenge data do not exist.
] <spec:hif-pathway-inertia>

#speculation(title: [The Altitude Paradox: Biphasic Response to Hypoxia in ME/CFS])[
_Certainty: 0.40._ Moderate altitude (1500--2500~m) may trigger beneficial hypoxic conditioning via mild HIF-1$alpha$ stabilization, improved mitochondrial efficiency, and increased erythropoiesis — an adaptive response similar to intermittent hypoxic training in athletes @Gangwar2019IHTaltitude. However, higher altitude (>3000~m) may overwhelm the impaired cerebral autoregulation documented in ME/CFS, producing disproportionate cerebral hypoperfusion, worsening cognitive symptoms, and triggering PEM @Medow2024cerebralautoregulation @Badhwar2025brainbloodflow. This biphasic dose-response curve predicts a narrow therapeutic window: moderate hypoxia may benefit, severe hypoxia harms.

*Falsifiable predictions:*
    + ME/CFS patients exposed to simulated altitude at 2000~m (FiO#sub[2] 0.165) for 2~h will show composite cognitive score improvement $>=0.5$~SD (CANTAB/COGBAT) and CBFv within 10% of pre-exposure baseline on NIRS
    + The same patients exposed to 3500~m (FiO#sub[2] 0.135) will show cognitive score decline $>=0.5$~SD, CBFv decline above 20%, and PEM incidence at least 50% at 24~h
    + ETCO#sub[2] decline at 3500~m will exceed the alveolar gas equation prediction by >=3~mmHg, confirming intact hypoxic ventilatory response but inadequate vasodilatory compensation

*Limitations.* No altitude-chamber study exists in ME/CFS. The dose-response curve is extrapolated from healthy altitude physiology and POTS/hypocapnia studies. Individual variability in hypoxic ventilatory response may mask group effects.
] <spec:altitude-paradox>

#synthesis(title: [HIF-1$alpha$ Pathway Inertia as a Candidate Adaptive-Failure Mechanism in ME/CFS])[
The hypoxia environments across this chapter and the energy-metabolism and core-mechanistic chapters assemble a *candidate* mechanism — one whose every component is itself inferred from other conditions or is an untested prediction, not drawn from direct ME/CFS measurement — distinct from the post-viral HIF-2$alpha$ endothelial story (@sec:hif2a-endothelial) and from the VEGF-convergence synthesis (@syn:vegf-pathway-convergence): a *failure of the HIF-1$alpha$ adaptive programme itself*. The organising claim, labelled HIF pathway inertia (@spec:hif-pathway-inertia) — though "inertia" strictly fits only the failed-to-*switch-off* mode and is a loose fit for the failed-to-*switch-on* (blunted-induction) mode, so read it as an umbrella for HIF-1$alpha$ *adaptive failure* in either direction — is the hypothesis that, *if* ME/CFS tissues experience chronic hypoxia, they may fail to mount, or fail to switch off, the normal HIF-1$alpha$ transcriptional response, which would produce the paradox of hypoxia without adequate glycolytic/angiogenic adaptation (neither the chronic hypoxia nor the HIF-response failure has been directly measured in ME/CFS). Three speculative extensions cohere around this — each multiply determined and none an ME/CFS observation. First, the *altitude paradox* (@spec:altitude-paradox): a predicted, untested biphasic dose-response in which mild hypoxia might retrain a sluggish HIF response while higher altitude harms via failed cerebral autoregulation. Second, *PEM as maladaptive HIF persistence* (@spec:pem-hif-maladaptation): the mirror-image speculation in which exertion-induced HIF activation fails to *deactivate* on reoxygenation — but PEM is itself driven by immune, metabolic, and autonomic factors, so this would at most be one contributing thread. Third, a downstream *HIF-1$alpha$–mitochondria–ECM triad* (@hyp:hif1alpha-mito-ecm-triad, @hyp:hif1alpha-connective-tissue) inferred largely from tendinopathy analogy, in which sustained HIF-1$alpha$ suppresses oxidative phosphorylation and drives MMP-mediated connective-tissue remodelling. A gut-derived modulator, butyrate-mediated HIF-1$alpha$ stabilisation via HDAC inhibition (@spec:butyrate-hif1a), links microbiome state to this axis. If the mechanism is real, its adaptive-*failure* framing points to therapeutic corollaries about *retraining or restoring dynamic range* — intermittent hypoxic training, breathing retraining, and (with explicit caution) HIF-PH inhibitors — developed as investigational proposals in the treatment chapters. Where the mechanism would plausibly apply, if at all, is an autonomic/post-exertional subset rather than all patients.

The honest status is that HIF-1$alpha$ pathway inertia is a *unifying hypothesis in search of its confirming measurement*: no study has measured the post-exertional HIF-1$alpha$ target-gene time course in ME/CFS, no altitude-chamber study exists, and the ECM-triad rests on tendinopathy and connective-tissue analogy rather than primary ME/CFS tissue. The model's value is that its two failure modes make *opposite, discriminable* predictions (blunted induction versus failed de-activation) that a single post-CPET transcriptional time-course study could separate — and that it explicitly competes with, rather than assumes, the alternative that tissue hypoxia in ME/CFS is adequately compensated and the pathology lies elsewhere. Where the HIF-1$alpha$ and HIF-2$alpha$ arms meet — whether, *assuming either isoform is causally involved in ME/CFS at all* (which has not been demonstrated), early disease is HIF-1$alpha$-driven and late disease HIF-2$alpha$-driven — is left as the open question already posed in @syn:vegf-pathway-convergence, not re-adjudicated here.

*Consequence:* This proposes that part of ME/CFS may be the body's low-oxygen "adaptation switch" being stuck — either failing to turn on when it should or failing to turn off after exertion — which would reframe post-exertional crashes as a metabolic state that won't reset and would make "retraining" approaches (carefully dosed intermittent hypoxia, breathing techniques) worth formally testing; but every step is currently inferred from other tissues and conditions, so the immediate payoff is a specific before/after-exercise gene-expression experiment that would confirm or refute it, not a treatment.
] <syn:hif1a-pathway-inertia-model>

=== HIF-2$alpha$ Mechanism and Endothelial Dysfunction Subtyping

#hypothesis(title: [HIF-2$alpha$ Sustained Activation as the Molecular Basis for Post-Viral Endothelial Dysfunction])[
Ribeiro et al.\ (2026) @Ribeiro2026HIF2alpha demonstrated that SARS-CoV-2 spike S1 protein drives a dichotomous hypoxia-inducible factor response in endothelial cells: transient HIF-1$alpha$ activation followed by sustained HIF-2$alpha$ nuclear localization persisting for days, with VEGF overproduction, intercellular gap formation, and increased permeability rescued by belzutifan. This establishes a direct molecular pathway from viral protein exposure to chronic endothelial dysfunction — relevant beyond COVID-19, as multiple viruses exploit HIF-2$alpha$ for replication (HCV @Couteaudier2025HIF2HCV, RSV @Morris2025HIFRSV) and the antiviral signalling protein IRF3 directly regulates HIF-$alpha$ cytoplasmic retention @Deng2026IRF3HIFalpha. The sustained HIF-2$alpha$ mechanism explains several features of post-viral ME/CFS: (1) endothelial dysfunction in the ~70% of patients without $beta_2$AR autoantibodies @Stein2025ImmunoadsorptionPostCOVIDMECFS, the mechanism of which has been unexplained; (2) persistence of vascular dysfunction after viral clearance; (3) the pattern of microvascular impairment documented by OCT-A and retinal vessel analysis.

_Certainty: 0.55._ The mechanistic chain from spike → sustained HIF-2$alpha$ → barrier impairment is established in vitro (Ribeiro2026, cert 0.50). Antiviral-HIF linkage (Deng2026IRF3HIFalpha, cert 0.65) and viral HIF exploitation (Couteaudier2025HIF2HCV, cert 0.55) provide convergent support. Direct ME/CFS endothelial HIF-2$alpha$ measurements are lacking.

*Falsifiable predictions:*
    + Nuclear HIF-2$alpha$ protein is elevated in dermal endothelial cells from post-viral ME/CFS patients vs healthy controls (skin biopsy IHC)
    + Post-viral ME/CFS patients (but not gradual-onset) show elevated plasma VEGF, vWF, and sFlt-1 compared to healthy controls
    + Belzutifan reduces VEGF and improves endothelial function (FMD) in post-viral ME/CFS: predicted effect size ΔFMD ≥ 20% over 8 weeks

*Research priority:* Skin biopsy or PBMC nuclear fraction for HIF-2$alpha$ IHC combined with plasma VEGF, vWF, sFlt-1 panel — cross-sectional post-viral ME/CFS (n=40) vs gradual-onset (n=20) vs healthy (n=20).
] <hyp:hif2a-sustained-postviral>

#speculation(title: [Exercise-Induced HIF-2$alpha$ Dynamics Differentiate Post-Viral from Gradual-Onset ME/CFS])[
If post-viral ME/CFS involves sustained HIF-2$alpha$ activation (Section @hyp:hif2a-sustained-postviral), a single bout of maximal exercise (CPET) should produce distinct temporal profiles of nuclear HIF-1$alpha$ and HIF-2$alpha$ in PBMCs across subtypes. Prediction: healthy controls show transient HIF-1$alpha$ nuclear peak at 0~h post-CPET returning to baseline by 2~h; post-viral ME/CFS shows delayed HIF-2$alpha$ nuclear rise at 24--48~h persisting at 48~h; gradual-onset ME/CFS shows an intermediate pattern. This could serve as a dynamic functional test analogous to the glucose tolerance test. *Certainty: 0.55* (temporal HIF dynamics after exercise are unmeasured in ME/CFS; the prediction follows from Ribeiro2026 in vitro kinetics applied to the post-exertional context).

*Falsifiable:* In serial PBMC nuclear fractions collected before and after CPET (baseline, 0 h, 2 h, 6 h, 24 h, 48 h), post-viral ME/CFS shows HIF-2\$alpha\$ AUC at 2 fold controls over 0-48h, with sustained elevation at 48 h (p less than 0.01).
] <spec:hif2a-cpet-dynamics>

#speculation(title: [sFlt-1:PlGF Ratio as Anti-Angiogenic Biomarker in Post-Viral ME/CFS, Analogous to Preeclampsia])[
In preeclampsia, HIF-2$alpha$ activation drives excessive sFlt-1 (soluble VEGFR1, an anti-angiogenic VEGF trap) production, causing systemic endothelial dysfunction. The sFlt-1:PlGF ratio is validated clinically for preeclampsia diagnosis and risk stratification. A parallel mechanism may operate in post-viral ME/CFS: viral-triggered HIF-2$alpha$ activation may produce elevated sFlt-1 that functionally neutralises VEGF, creating an anti-angiogenic state despite normal or elevated total VEGF levels. The net effect would be impaired angiogenic compensation — consistent with the failed angiogenic response of ME/CFS serum @Flaskamp2022endothelial. *Certainty: 0.45* (sFlt-1:HIF-2$alpha$ link in preeclampsia is established; no ME/CFS sFlt-1 data exist).

*Falsifiable:* sFlt-1:PlGF ratio is elevated in post-viral ME/CFS vs controls (mean ratio $gt.eq$38 vs $lt.eq$38 in controls), correlating with PEM severity and impaired angiogenic serum activity. Ratio normalises in patients who respond to belzutifan.
] <spec:sflt1-plgf-biomarker>

#speculation(title: [PEM as Maladaptive Persistence of HIF-Mediated Metabolic Suppression])[
_Certainty: 0.50._ PEM may not be merely tissue damage from ischaemia-reperfusion injury after exertion @Kell2022IRinjury but a maladaptive persistence of the HIF-mediated hypoxic metabolic programme. HIF-1$alpha$ normally suppresses oxidative phosphorylation (PDK1 inhibits pyruvate dehydrogenase), shifts metabolism to glycolysis, and induces a hibernation-mimetic state that conserves ATP during hypoxia @Hoel2021metabolicphenotypes. In ME/CFS, this programme may fail to deactivate upon reoxygenation — cells remain locked in a hypoxic metabolic state despite adequate oxygen, producing sustained lactate production, impaired oxidative ATP synthesis, and prolonged recovery. miRNA-mediated HIF stabilisation may underlie this persistence @Kaczmarek2023miRNAhypoxia.

*Falsifiable predictions:*
    + After submaximal exercise, ME/CFS PBMCs will show prolonged HIF-1$alpha$ target gene expression (PDK1, BNIP3, LDHA) at 24--48~h compared to controls where expression returns to baseline by 6~h
    + PDH activity will be $<=70$% of pre-exercise baseline at 24~h and 48~h post-exercise in ME/CFS vs $>90$% at 24~h in controls
    + Serum lactate remains $>=2$~mmol/L above pre-exercise baseline at 24~h post-exercise in ME/CFS and correlates with sustained HIF target gene expression ($r >= 0.5$)

*Limitations.* Post-exercise HIF target gene time-course has not been measured in ME/CFS. The hibernation-mimetic model is derived from ischaemia-reperfusion and cardiac preconditioning literature, not primary ME/CFS studies. PBMC findings may not reflect muscle or brain tissue.
] <spec:pem-hif-maladaptation>
