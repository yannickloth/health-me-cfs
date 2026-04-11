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

=== Research Priority Matrix

The following priorities are ranked by mechanistic novelty $times$ clinical impact / feasibility:

    + *Senescent cell burden in ME/CFS tissue*: p21/p16 immunostaining in skin punch or muscle biopsies — fundamental unknowns for the senescence hypothesis; low risk, moderate cost
    + *HVR measurement in ME/CFS*: Replicate El-Medany carotid body protocol @ElMedany2024carotid in ME/CFS cohorts — 30~min test per patient, no intervention risk
    + *Intra-exercise FMD*: Glycocalyx mechanosensing assessment during low-level ergometry — novel methodology, requires Doppler expertise
    + *PS externalisation on ME/CFS RBCs*: Annexin-V flow cytometry — 2~h assay from standard blood draw, links RBC oxidative damage to microclot nucleation
    + *Longitudinal post-COVID biopsy series*: Serial muscle biopsy at 3, 6, 12~months post-infection stratified by ME/CFS development — the definitive test of vascular-primary temporal model; invasive but scientifically decisive
    + *D+Q pilot senolytic trial*: 30~patients, 3~months, primary endpoint SASP markers — feasibility trial that could be initiated rapidly
