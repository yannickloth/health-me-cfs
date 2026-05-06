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
The documented orthostatic hypocapnia in ME/CFS (PETCO#sub[2] 26--30~mmHg during tilt @VanCampen2023co2cbf) may contribute to microclot persistence via a novel biochemical pathway: hypocapnia (alkalosis) shifts pH toward higher values. Based on general coagulation physiology (alkalosis-associated coagulopathy is well documented in trauma and critical care settings, though not specifically studied in the orthostatic context), higher pH is expected to activate several coagulation factors and inhibit tissue plasminogen activator (tPA), shifting the balance toward coagulation over fibrinolysis. _No citation specific to the orthostatic/ME/CFS context is available; this link is an inference from general physiology._

In this model, every orthostatic episode in ME/CFS produces: (1) cerebral hypoperfusion via CO#sub[2]-mediated vasoconstriction, (2) mild systemic alkalosis favoring coagulation over fibrinolysis, (3) incremental microclot accumulation, (4) worsened capillary obstruction, (5) worse tissue hypoxia and PEM. Over months to years, this cycle could explain the progressive capillary basement membrane thickening documented in ME/CFS @Wust2024capillary.

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
Under oxidative stress, RBC membrane phosphatidylserine (PS) flips from the inner to the outer leaflet — a signal that normally marks old RBCs for phagocytic clearance. PS externalisation also directly activates platelets and promotes fibrin polymerisation on the RBC surface. ME/CFS RBCs show elevated ROS production @Saha2019 and morphological abnormalities consistent with membrane stress (the latter documented in Long COVID RBCs @GrauRBC2024longcovid, and inferred by analogy for ME/CFS given shared post-infectious context).

If ME/CFS RBCs externalise PS at elevated rates, they could act as continuous nucleation sites for fibrin microclot formation — explaining the microclot burden documented by Nunes et al.\ @NunesPlatelets2022mecfs without requiring primary coagulation factor defects. This would also explain why microclot burden correlates with RBC morphological abnormality: the RBC membrane defect is the primary driver of microclot nucleation.

_Certainty: 0.30._ PS externalisation on ME/CFS RBCs has not been directly measured; it is inferred from documented ROS elevation and morphological abnormalities.

*Falsifiable prediction:* Annexin-V binding to ME/CFS RBCs (the standard assay for PS externalisation) should be elevated, and should correlate with microclot area in fluorescence microscopy of the same patient sample.
] <hyp:rbc-ps-microclot-nucleation>

=== Novel Treatment Proposals

#open-question(title: [Senolytics in ME/CFS: Dasatinib + Quercetin Pilot Trial Design])[
If virus-induced endothelial senescence is causal @Nunes2026endothelialSenescence, senolytics represent a rationally-targeted intervention. The dasatinib + quercetin (D+Q) combination has the strongest senolytic evidence in other conditions. A pragmatic ME/CFS pilot design:

*Design:* Intermittent dosing (D 100~mg + Q 1000~mg orally for 2 consecutive days per month for 3 months) — the intermittent protocol used in IPF trials, chosen because senolytics need only be present when killing senescent cells, and chronic dosing risks off-target toxicity (dasatinib is a BCR-ABL inhibitor with haematological and pleural effusion risks).

*Primary outcome:* SASP markers at 3 months (GDF-15, IL-6, IL-8, syndecan-1 as glycocalyx shedding index).

*Secondary outcomes:* EndoPAT reactive hyperemia index, 6-minute walk distance, SF-36 vitality, CPET peak VO#sub[2].

*Safety monitoring:* Complete blood count at each cycle (dasatinib myelosuppression risk), pleural effusion symptoms.

*Key eligibility:* Post-infectious ME/CFS (to select for virus-induced endothelial senescence) with elevated SASP marker baseline. Navitoclax (a BCL-2/XL inhibitor with a distinct senolytic mechanism from D+Q) would be a future escalation if D+Q shows inadequate SASP reduction, given its different target profile — though thrombocytopenia risk from BCL-XL inhibition requires dose modification protocols.

This design generates mechanistic data (does senolytic treatment reduce SASP in ME/CFS?) and safety data regardless of clinical outcome.

*Prescription note:* Dasatinib is a BCR-ABL tyrosine kinase inhibitor licensed for leukaemia. Off-label prescribing requires oncology familiarity with its safety profile; it is not appropriate for GP-level off-label use. The dosing detail above describes a *research protocol*, not a clinical recommendation for individual patients outside a supervised trial.
] <oq:senolytics-mecfs-trial>

#open-question(title: [Glycocalyx Restoration as Prevention: Early Post-COVID Intervention])[
The Scheibenbogen-Wirth temporal model @ScheibenbogenWirth2024sarcopenia implies that early post-COVID vascular intervention might prevent ME/CFS progression. Sulodexide (glycocalyx precursor) has an established safety record and showed endothelial function improvement in Long COVID within 21 days @Charfeddine2022sulodexide.

*Research proposal:* A prevention trial enrolling COVID-19 patients within 4 weeks of infection who show early markers of endothelial glycocalyx shedding (plasma syndecan-1 $>$ 30~ng/mL), randomised to sulodexide 500~LSU daily for 90 days vs.\ placebo. Primary outcome: ME/CFS incidence at 6 months (by consensus criteria). If the vascular-primary model is correct, early glycocalyx restoration should reduce ME/CFS incidence by interrupting the capillary damage-to-mitochondrial injury cascade before it becomes structural.

This trial design is feasible with existing infrastructure, uses an approved medication, and would simultaneously test the vascular-primary causal hypothesis and provide clinical benefit data.
] <oq:glycocalyx-prevention-trial>

#open-question(title: [P2X3 Antagonism + Volume Expansion: Combination Targeting Orthostatic Symptom Amplifiers])[
The orthostatic symptom burden in ME/CFS appears to be amplified by at least two independent mechanisms: preload failure (reduced blood volume, venous pooling) and carotid body sensitisation (exaggerated hypoxic/hypercapnic reflexes driving dysfunctional breathing during orthostasis @ElMedany2024carotid). Current management addresses only the first (fludrocortisone, midodrine, IV saline).

A combination intervention targeting both:
    - *Volume expansion*: Oral rehydration or fludrocortisone to address preload failure
    - *P2X3 antagonism* (gefapixant): To reduce carotid body sensitisation and attenuate orthostatic hypocapnia

The hypothesis is that the two components are additive because they target mechanistically independent amplifiers. Orthostatic symptoms would be expected to improve more with the combination than either alone, measurable by tilt-table PETCO#sub[2] trajectories and OI symptom scores.
] <oq:p2x3-volume-combo>

=== Endothelial Senescence as Unifying Mechanism (Long COVID ↔ ME/CFS)

#hypothesis(title: [Endothelial Senescence as Unifying Mechanism in ME/CFS and Long COVID])[
Nunes et al.~\cite{Nunes2026endothelialsenescence} propose that acute viral infection induces endothelial dysfunction and senescence at blood-brain barrier, cerebral arteries, gastrointestinal tract, and skeletal muscle.
The endothelial senescence-associated secretory phenotype (SASP) is characterized by proinflammatory, prooxidative, procoagulant, and vasoconstriction-prone properties.
Critically, authors distinguish endothelial dysfunction from coagulopathy: SASP is procoagulant but does not equate to overt clotting disorder~\cite{McAlpine2026,Nunes2026}.
Study: (hypothesis framework, no primary data, certainty: Low).
Testable predictions: (1) senescent endothelial cells accumulate in ME/CFS/Long COVID patients; (2) SASP factors elevated in plasma; (3) immune dysfunction prevents clearance of senescent cells; (4) senolytic therapy improves symptoms.
] <hyp:nunes2026endothelialsenescence>

=== Vascular Dysfunction Biomarkers in ME/CFS (First Direct Evidence)

#achievement(title: [Vascular Dysfunction Biomarkers in ME/CFS])[
Heng et al.~\cite{Heng2025} conducted multimodal analysis of ME/CFS patients, identifying elevated plasma proteins associated with thrombus formation and vascular reactivity.
Importantly, study distinguishes vascular endothelial dysfunction from overt coagulopathy, aligning with both McAlpine~\cite{McAlpine2026} in Long COVID and Nunes'~\cite{Nunes2026endothelialsenescence} theoretical framework.
The study also documented immune cell energy deficits (reduced ATP/ADP ratio) and T/NK subset skewing, providing cross-system evidence of ME/CFS pathophysiology.
Study: (n=[SPECIFY from full paper], multimodal design, proteomics, certainty: Medium-High).
] <ach:heng2025-vascular>

=== Cross-Disease Comparison: Long COVID Vascular Biomarkers

#clinical-finding(title: [Long COVID: Vascular Biomarkers Correlate with Cognitive and Psychiatric Symptoms])[
McAlpine et al.~\cite{McAlpine2026} found that vascular biomarkers in neuropsychiatric Long COVID differ from recovered controls and acute COVID-19.
Elevated endothelial adhesion markers (sL-selectin, ADAMTS13, sP-selectin, sICAM-1) and vascular reactivity proteins (fetuin, α-2 macroglobulin) characterize Long COVID vascular pathology. Note: ADAMTS13 is a VWF-cleaving protease primarily synthesized in hepatic stellate cells; its elevation reflects thrombotic risk rather than direct endothelial adhesion.
Importantly, coagulation markers (D-dimer, fibrinogen) did not differ from recovered controls, supporting endothelial dysfunction WITHOUT overt coagulopathy.
These vascular biomarkers correlated with cognitive measures (fluency, verbal learning, memory) and psychiatric symptoms (depression, anxiety), linking endothelial dysfunction to "brain fog."
Study: (n=50 Long COVID, n=29 recovered controls, n=28 acute COVID-19, certainty: Medium-High).
] <clinical-findings:mcAlpine2026-cognitive-correlations>

=== Novel Hypotheses from Vascular Biomarker Findings

#hypothesis(title: [Endothelial Adhesion Markers as Cognitive Performance Modulators in ME/CFS])[
McAlpine et al.\ ~\cite{McAlpine2026} demonstrated that elevated endothelial adhesion markers (sP-selectin, sICAM-1, sL-selectin, ADAMTS13) correlate with impaired cognitive performance in Long COVID, including reduced verbal fluency, learning, and memory. If ME/CFS shares the same endothelial dysfunction pathophysiology @Heng2025, the same biomarker-cognition relationship should hold.

The proposed mechanism: endothelial activation increases vascular permeability and reduces cerebral perfusion efficiency through microvascular adhesion and inflammatory signaling. This could explain "brain fog" and cognitive processing speed deficits in ME/CFS through a vascular-mediated pathway rather than primary neural damage.

_Certainty: 0.40._ The biomarker-cognition correlation is established in Long COVID; ME/CFS extrapolation is inferred from shared endothelial dysfunction patterns but not yet tested.

*Falsifiable predictions:*
    + ME/CFS patients should show the same inverse correlation between sP-selectin/sICAM-1 levels and cognitive test performance (fluency, memory) as observed in Long COVID
    + Vascular biomarker levels should correlate with functional MRI measures of cerebral blood flow velocity
    + Anti-adhesion therapy (targeting P-selectin or ICAM-1) should improve cognitive processing speed before improving subjective fatigue

*Research priority:* Cross-sectional ME/CFS cohort measurement of endothelial adhesion markers vs comprehensive cognitive battery — directly tests whether Long COVID biomarker-cognition pattern extends to ME/CFS.
] <hyp:endothelial-adhesion-cognition>

#speculation(title: [α1-Acid Glycoprotein as Protective Cognitive Biomarker])[
McAlpine et al.\ ~\cite{McAlpine2026} found that lower α1-acid glycoprotein (AGP) levels were strongly associated with poorer verbal memory, verbal learning, fluency, depression, and anxiety in Long COVID. This inverse relationship (higher AGP = better cognition) is unexpected, as AGP is typically considered an acute-phase reactant.

Potential interpretations:
    (1) AGP may have neuroprotective properties in chronic post-viral states independent of its role as an inflammatory marker
    (2) Low AGP could reflect chronic immune exhaustion or dysregulated acute-phase response
    (3) AGP might modulate endothelial permeability or neuroinflammation through unknown pathways

If this pattern holds in ME/CFS, AGP could serve as both a prognostic cognitive biomarker and a therapeutic target (supplementation or upregulation strategies).

_Certainty: 0.25._ The inverse AGP-cognition relationship is observed in Long COVID; ME/CFS relevance is entirely speculative. No mechanistic studies explain AGP's neuroprotective role.

*Research proposal:* Measure AGP levels in ME/CFS patients vs controls and correlate with cognitive performance. Conduct in vitro studies of AGP's effects on neuronal survival, endothelial permeability, and neuroinflammation models.
] <spec:agp-cognitive-protection>

#hypothesis(title: [Temporal Evolution of Vascular Biomarkers Predicts ME/CFS Recovery Trajectory])[
McAlpine et al.\ ~\cite{McAlpine2026} found that vascular biomarker dysregulation normalized in a "late Long COVID" cohort (>3 years post-infection), while cognitive and psychiatric symptoms persisted in some individuals. This suggests a dissociation between acute vascular inflammation and chronic symptom maintenance.

If ME/CFS follows a similar temporal pattern:
    (1) Acute phase (0-12 months): Endothelial activation markers elevated, correlate with symptom severity
    (2) Subacute phase (1-3 years): Vascular markers partially normalize, but microstructural capillary damage persists
    (3) Chronic phase (>3 years): Vascular biomarkers return to baseline, but secondary consequences (mitochondrial dysfunction, dysautonomia, neuroinflammation) become primary drivers

This model predicts that anti-inflammatory or endothelial-protective interventions would only be effective in early disease stages, while later-stage ME/CFS requires addressing downstream damage.

_Certainty: 0.35._ Temporal evolution pattern observed in Long COVID; ME/CFS temporal trajectory not characterized. The dissociation hypothesis is plausible but untested.

*Falsifiable predictions:*
    + Longitudinal ME/CFS cohorts should show declining endothelial biomarker levels over time despite persistent symptoms in chronic cases
    + Early-stage ME/CFS patients (<12 months) should respond better to anti-endothelial therapies than chronic-stage patients (>3 years)
    + Vascular biomarker levels should predict treatment response to senolytics or glycocalyx restoration therapies

*Research priority:* Longitudinal ME/CFS cohort with serial vascular biomarker measurement at 6, 12, 24, and 36 months post-onset — maps disease trajectory and identifies therapeutic windows.
] <hyp:vascular-biomarker-temporal>

=== Novel Treatment Proposals from Vascular Findings

#open-question(title: [Anti-Adhesion Therapy for Cognitive Symptoms in ME/CFS])[
If endothelial adhesion markers (sP-selectin, sICAM-1, sL-selectin) mediate cognitive impairment through vascular inflammation as suggested by McAlpine et al.\ ~\cite{McAlpine2026}, then targeting these pathways could improve cognitive function.

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
McAlpine et al.\ ~\cite{McAlpine2026} suggest that vascular biomarkers correlate with specific symptom domains (cognition, psychiatric symptoms) in Long COVID. This implies that ME/CFS patients could be stratified by biomarker profiles into mechanistically distinct subtypes:

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
    + *HVR measurement in ME/CFS*: Replicate El-Medany carotid body protocol @ElMedany2024carotid in ME/CFS cohorts — 30~min test per patient, no intervention risk
    + *Intra-exercise FMD*: Glycocalyx mechanosensing assessment during low-level ergometry — novel methodology, requires Doppler expertise
    + *PS externalisation on ME/CFS RBCs*: Annexin-V flow cytometry — 2~h assay from standard blood draw, links RBC oxidative damage to microclot nucleation
    + *Longitudinal post-COVID biopsy series*: Serial muscle biopsy at 3, 6, 12~months post-infection stratified by ME/CFS development — the definitive test of vascular-primary temporal model; invasive but scientifically decisive
    + *D+Q pilot senolytic trial*: 30~patients, 3~months, primary endpoint SASP markers — feasibility trial that could be initiated rapidly

=== Mathematical Model Sketch: Vascular-Mitochondrial Bistable Loop

The following ODE sketch formalises the Scheibenbogen-Wirth @ScheibenbogenWirth2024sarcopenia vascular-to-mitochondrial causal chain as a dynamical system. It is intended as a framework for future quantitative modelling, not a calibrated simulation.

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
- $r_V$ = vascular repair rate (driven by angiogenic capacity; reduced in ME/CFS @Flaskamp2022endothelial)
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
    + *HVR measurement in ME/CFS*: Replicate El-Medany carotid body protocol @ElMedany2024carotid in ME/CFS cohorts — 30~min test per patient, no intervention risk
    + *Intra-exercise FMD*: Glycocalyx mechanosensing assessment during low-level ergometry — novel methodology, requires Doppler expertise
    + *PS externalisation on ME/CFS RBCs*: Annexin-V flow cytometry — 2~h assay from standard blood draw, links RBC oxidative damage to microclot nucleation
    + *Longitudinal post-COVID biopsy series*: Serial muscle biopsy at 3, 6, 12~months post-infection stratified by ME/CFS development — the definitive test of vascular-primary temporal model; invasive but scientifically decisive
    + *D+Q pilot senolytic trial*: 30~patients, 3~months, primary endpoint SASP markers — feasibility trial that could be initiated rapidly
