// =============================================================================
// Reducing Chronic Biological Stress Responses
// Author: Yannick Loth
// Date: 2026-05-01
// Purpose: Evidence-based interventions that reduce chronic biological stress
//          signal load. Organized by stress axis. Disease contexts (ME/CFS,
//          Long COVID, ALS, neurodegeneration, aging) cited where evidence
//          originates. Reducing chronic stress response activation is associated
//          with extended healthspan and lifespan across model organisms and
//          chronic disease populations.
// =============================================================================

#set document(
  title: "Reducing Chronic Biological Stress Responses",
  author: "Yannick Loth",
  date: datetime(year: 2026, month: 5, day: 1),
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 3cm, right: 3cm),
  numbering: "1",
)

#set text(font: "Linux Libertine", size: 11pt, lang: "en")
#set par(justify: true, leading: 0.65em)
#set heading(numbering: "1.1")

#show heading.where(level: 1): it => {
  v(1.2em)
  text(size: 14pt, weight: "bold", it)
  v(0.4em)
}
#show heading.where(level: 2): it => {
  v(0.8em)
  text(size: 12pt, weight: "bold", it)
  v(0.3em)
}
#show heading.where(level: 3): it => {
  v(0.6em)
  text(size: 11pt, weight: "bold", style: "italic", it)
  v(0.2em)
}

// ── Callout boxes ─────────────────────────────────────────────────────────────

#let note-box(title: none, body) = {
  rect(
    width: 100%,
    inset: 10pt,
    radius: 3pt,
    stroke: (left: 3pt + rgb("#4a7c9e"), rest: 0.5pt + rgb("#aaaaaa")),
    fill: rgb("#f5f8fb"),
  )[
    #if title != none [*#title* #v(0.3em)]
    #body
  ]
}

#let warning-box(title: none, body) = {
  rect(
    width: 100%,
    inset: 10pt,
    radius: 3pt,
    stroke: (left: 3pt + rgb("#c0392b"), rest: 0.5pt + rgb("#aaaaaa")),
    fill: rgb("#fdf5f4"),
  )[
    #if title != none [*#title* #v(0.3em)]
    #body
  ]
}

#let evidence-box(title: none, body) = {
  rect(
    width: 100%,
    inset: 10pt,
    radius: 3pt,
    stroke: (left: 3pt + rgb("#27ae60"), rest: 0.5pt + rgb("#aaaaaa")),
    fill: rgb("#f4fbf6"),
  )[
    #if title != none [*#title* #v(0.3em)]
    #body
  ]
}

#let rx-box(title: none, body) = {
  rect(
    width: 100%,
    inset: 10pt,
    radius: 3pt,
    stroke: (left: 3pt + rgb("#8e44ad"), rest: 0.5pt + rgb("#aaaaaa")),
    fill: rgb("#faf4fd"),
  )[
    #if title != none [*#title* #v(0.3em)]
    #body
  ]
}

// ── Title ─────────────────────────────────────────────────────────────────────

#align(center)[
  #text(size: 18pt, weight: "bold")[Reducing Chronic Biological Stress Responses]
  #v(0.3em)
  #text(size: 12pt, style: "italic")[Evidence-based interventions targeting upstream stress signals]
  #v(0.2em)
  #text(size: 10pt, fill: rgb("#666666"))[Yannick Loth · 2026-05-01]
]

#v(1em)
#line(length: 100%, stroke: 0.5pt + rgb("#aaaaaa"))
#v(1em)

#outline(indent: 1.5em, depth: 2)

#pagebreak()

// =============================================================================
= Chronic Stress Responses and Healthspan
// =============================================================================

Cellular stress responses evolved as acute protective programs. When sustained
chronically, however, these same programs shorten healthspan and lifespan.
Suppressing the ISR/ATF4 axis downstream of GCN2 extends _Drosophila_ lifespan
[Götz et al. 2025]; parallel evidence from yeast and _C. elegans_ supports
chronic ISR activation as pro-aging [Costa-Mattioli & Walter 2020]. Chronic
mitochondrial oxidative stress accelerates aging biomarkers across human
populations. Persistent autoantibody-mediated receptor dysfunction drives
progressive autonomic deterioration.

The strategy presented here is *upstream reduction of the signals that activate
these programs*, not suppression of the responses themselves. Blanket suppression
is often harmful: acute ISR activation, for instance, prevents DRP1-mediated
mitochondrial fragmentation [Baron et al. 2025] and is protective. The target
is the chronic tonic elevation that occurs when pulsatile responses become
sustained — as observed in post-viral syndromes, neurodegeneration, and aging.

Three primary biological stress axes drive this chronic pathology:

#table(
  columns: (0.9fr, 2fr, 1.1fr),
  align: (left, left, left),
  table.header([*Stress axis*], [*Mechanism*], [*Disease contexts*]),
  [ER stress / ISR (PERK arm)],
    [Misfolded ER proteins → PERK activation → eIF2α phosphorylation → ATF4 suppression of OXPHOS; WASF3 accumulation disrupts mitochondrial respiratory supercomplexes],
    [ME/CFS, ALS, Parkinson's, NASH, aging],
  [Mitochondrial oxidative stress (HRI arm)],
    [ETC dysfunction → Complex I/III ROS → cardiolipin peroxidation → OMA1/DELE1/HRI cascade → ISR; also triggered by herpesvirus-mediated DRP1 fragmentation],
    [ME/CFS, Long COVID, aging, neurodegenerative disease],
  [Immune / autoantibody stress],
    [Pathological IgG against adrenergic/muscarinic receptors and peripheral neurons → chronic receptor overstimulation, neuroinflammation, nociceptive sensitization],
    [ME/CFS, POTS, autoimmune autonomic neuropathy],
)

#note-box(title: "The ISR as integrator")[
  The *Integrated Stress Response* (ISR) — four eIF2α kinases (PERK, GCN2,
  HRI, PKR) converging on ATF4 — sits downstream of both the ER stress and
  mitochondrial oxidative stress axes. PERK responds to ER protein misfolding;
  HRI responds to cardiolipin damage and mitochondrial ROS; PKR responds to
  viral dsRNA. Chronically elevated ISR suppresses OXPHOS subunit synthesis
  via ATF4, creating a metabolic ceiling [Costa-Mattioli & Walter 2020;
  Le et al. 2025].

  Upstream reduction of ISR triggers is preferred over direct ISR blockade.
  Direct ISR suppressors (ISRIB, guanabenz) block the protective kinase arm
  that prevents DRP1-mediated mitochondrial fragmentation [Baron et al. 2025].
]

// =============================================================================
= Stress Axis 1: ER Stress (PERK Arm)
// =============================================================================

Endoplasmic reticulum stress — accumulation of misfolded proteins — activates
PERK, which phosphorylates eIF2α and drives ATF4 transcription. WASF3 protein
accumulates under chronic ER stress and disrupts mitochondrial respiratory
supercomplexes; this mechanism has been identified in ME/CFS skeletal muscle
biopsies [Gorman et al. 2023, _PNAS_ 120(34):e2302738120, n=14] and is
consistent with ER stress pathology observed in ALS, Parkinson's disease,
and NASH.

The primary intervention strategy is *chemical chaperone supplementation* to
reduce ER protein misfolding load and thereby attenuate PERK activation.

== TUDCA (Tauroursodeoxycholic acid)

#evidence-box(title: "Mechanism")[
  Bile acid derivative that acts as a chemical chaperone in the ER lumen,
  reducing unfolded protein accumulation and suppressing the unfolded protein
  response (UPR) / PERK arm of the ISR. In ME/CFS cell cultures, chemical
  chaperone treatment partially restored mitochondrial function [Gorman et al.
  2023]; TUDCA is the clinical-grade ER chaperone used in neurological and
  metabolic trials.
]

- *Target*: PERK arm — ER protein misfolding load
- *Dose*: 500--750 mg/day
- *Evidence*:
  - ALS: Paganoni et al. 2022 (_New Engl J Med_, n=137 RCT) — slowed disease
    progression combined with riluzole
  - NASH: multiple positive trials
  - Parkinson's: ER stress protection in patient-derived neurons
  - ME/CFS: mechanistic inference from Gorman 2023; no RCT
- *Availability*: OTC supplement (iHerb, Amazon, health stores)
- *Safety*: Well-tolerated bile acid derivative; mild GI effects at higher
  doses; caution with pre-existing biliary disease
- *Priority*: ★★★

// =============================================================================
= Stress Axis 2: Mitochondrial Oxidative Stress (HRI Arm)
// =============================================================================

Mitochondrial dysfunction generates ROS at Complex I and Complex III. ROS
peroxidizes cardiolipin in the inner mitochondrial membrane, triggering the
OMA1/DELE1/HRI cascade — the mitochondrial arm of the ISR. A separate upstream
route: HHV-6-encoded miR-aU14 inhibits host miR-30 → activates the p53/DRP1
axis → DRP1-mediated mitochondrial fragmentation → HRI activation [Hennig,
Prusty et al. 2022, _Nature_ 605:539--544].

Four OTC agents target this axis at different points, ordered from
closest-to-source to most distal:

== GlyNAC (Glycine + N-Acetylcysteine)

#evidence-box(title: "Mechanism")[
  Replenishes glutathione (GSH) — the primary mitochondrial and cytosolic
  antioxidant. Glycine is a rate-limiting GSH synthesis substrate; NAC
  provides cysteine, the other limiting precursor. Glycine also supports
  one-carbon metabolism and mitochondrial protein synthesis. Together they
  address GSH depletion at both substrate-limitation steps.
]

- *Target*: Mitochondrial and systemic GSH replenishment; upstream of HRI
- *Dose*: Glycine 3 g + NAC 3 g/day (or combined GlyNAC product)
- *Evidence*:
  - Long COVID: Sekhar 2022 (_Antioxidants_, n=12) — corrected GSH deficiency,
    reduced oxidative stress, improved fatigue and exercise capacity
  - Aging: Kumar & Sekhar 2021 (_Clin Transl Med_) — GSH correction and
    mitochondrial improvement in older adults
- *Availability*: OTC; NAC at pharmacies; glycine as bulk powder
- *Safety*: Excellent; NAC may cause mild GI upset; avoid high-dose NAC
  with nitroglycerin (pharmacodynamic interaction)
- *Priority*: ★★★

== MitoQ (Mitoquinone)

#evidence-box(title: "Mechanism")[
  CoQ10 analog linked to a triphenylphosphonium cation, which drives ~1000×
  accumulation in the mitochondrial matrix. Quenches ROS at the point of
  generation (Complex I/III leak) before cardiolipin peroxidation and
  OMA1/DELE1/HRI activation. Mechanistically more potent than systemic CoQ10
  due to matrix-targeted delivery.
]

- *Target*: Mitochondrial matrix ROS — upstream of cardiolipin peroxidation
- *Dose*: 10--20 mg/day
- *Evidence*:
  - Long COVID: Campagnolo et al. 2023 (_Free Radic Biol Med_, n=12 pilot)
  - Pre-clinical cardiovascular, aging, and neurodegeneration models
- *Availability*: OTC (mitoq.com, online retailers)
- *Safety*: Well-tolerated; mild GI effects; no major drug interactions reported
- *Priority*: ★★

== CoQ10 Ubiquinol

#evidence-box(title: "Mechanism")[
  Endogenous electron shuttle between Complex I/II and Complex III. CoQ10
  deficiency increases electron leak and ROS production. Ubiquinol (reduced
  form) has better bioavailability than ubiquinone above age ~40, where
  endogenous conversion efficiency declines.
]

- *Target*: ETC efficiency; reduces electron-leak-driven ROS
- *Dose*: 200--400 mg/day ubiquinol
- *Evidence*:
  - ME/CFS: Maes et al. 2009 (_Neuro Endocrinol Lett_, n=58); Castro-Marrero
    et al. 2015 (_Antioxid Redox Signal_, n=207) — modest positive signals on
    fatigue and cognitive measures
  - Statin-associated myopathy: multiple trials
- *Availability*: OTC — pharmacies everywhere
- *Safety*: Excellent; mild blood pressure lowering; may reduce warfarin
  efficacy (monitor INR)
- *Priority*: ★★

== Omega-3 DHA/EPA

#evidence-box(title: "Mechanism")[
  DHA (docosahexaenoic acid) incorporates into cardiolipin in the inner
  mitochondrial membrane over weeks. Higher DHA content reduces cardiolipin
  susceptibility to peroxidation — the initiating signal for the OMA1/DELE1/HRI
  cascade. This is a structural, preventive intervention rather than an
  acute antioxidant.
]

- *Target*: Cardiolipin composition — prevents the OMA1/DELE1/HRI trigger
- *Dose*: ≥1 g combined EPA+DHA/day; higher DHA:EPA ratio preferred
- *Onset*: Slow — weeks to significant membrane incorporation
- *Availability*: OTC — pharmacies everywhere
- *Safety*: Excellent at standard doses; mild antiplatelet effect at >3 g/day
- *Priority*: ★

// =============================================================================
= Stress Axis 3: Immune / Autoantibody Stress
// =============================================================================

A distinct stress axis involves pathological IgG autoantibodies targeting
autonomic receptors and peripheral neurons, generating chronic stress via
receptor overstimulation, neuroinflammation, and nociceptive sensitization.
This is documented most thoroughly in ME/CFS and postural orthostatic
tachycardia syndrome (POTS), with overlap into other autoimmune autonomic
neuropathies.

#table(
  columns: (1.5fr, 1.5fr, 1fr),
  align: (left, left, left),
  table.header([*Target*], [*Functional effect*], [*Evidence*]),
  [β2-adrenergic receptor (β2AR)], [Chronic overstimulation → receptor downregulation → orthostatic intolerance], [Scheibenbogen et al. 2018; Loebel et al. 2016],
  [M3/M4 muscarinic receptors], [Autonomic dysregulation; overlap with POTS phenotype], [Scheibenbogen et al. 2018],
  [DRG neurons (IgG passive transfer)], [Nociceptive sensitization; small fiber neuropathy phenotype], [Giannoccaro et al. 2023; Üçeyler et al. 2023],
)

== OTC Options (Limited)

Direct autoantibody removal requires medical intervention (see below). OTC
options address downstream inflammation:

- *Low-dose naltrexone (LDN)* (1.5--4.5 mg/day, off-label, requires Rx):
  transient μ-opioid receptor blockade → TLR4 antagonism → microglial
  activation reduction. Addresses downstream neuroinflammation, not the
  autoantibody source. Evidence: Younger et al. 2013 (_Arthritis Rheumatol_,
  fibromyalgia RCT n=30); Younger & Mackey 2014 (_Pain Med_, ME/CFS
  open-label n=10).

- *Omega-3 DHA/EPA* (see Axis 2): anti-inflammatory; modestly reduces
  autoantibody-driven neuroinflammation. Not specific to autoantibody removal.

- *Vitamin D* (maintain 50--80 nmol/L): immunomodulatory; observational
  association with autoimmune regulation. Evidence is indirect.

#rx-box(title: "Prescription-only options (mechanistically specific)")[
  - *IVIG*: dilutes pathological IgG; modest positive signals in ME/CFS
    [Rowe et al. 1997, _Ann Intern Med_; Straus et al. 1990, _Ann Intern Med_];
    also used in autoimmune autonomic neuropathy.

  - *Immunoadsorption*: removes IgG by extracorporeal apheresis; pilot results
    in ME/CFS [Scheibenbogen et al. 2018, _PLOS ONE_]. Not widely available
    outside specialized centers.

  - *Rituximab* (anti-CD20): eliminates autoantibody-producing B cells. ME/CFS
    RCT [Fluge et al. 2019, _PLOS ONE_] was negative overall; may have subgroup
    signal in patients with autoantibody evidence. Used in autoimmune neuropathy.
]

// =============================================================================
= Viral Reactivation as Upstream ISR Trigger
// =============================================================================

Herpesvirus reactivation — particularly HHV-6 — represents an upstream ISR
trigger that OTC antioxidants cannot address. The molecular mechanism is
characterized: HHV-6-encoded miR-aU14 inhibits host miR-30 → activates
p53/DRP1 → DRP1-mediated mitochondrial fragmentation → HRI activation
[Hennig, Prusty et al. 2022, _Nature_ 605:539--544]. This pathway is
independent of ROS and is not attenuated by antioxidant supplementation.

#warning-box(title: "Antioxidants do not suppress viral miRNA activity")[
  GlyNAC, MitoQ, and CoQ10 reduce mitochondrial ROS *downstream* of the HHV-6
  trigger. They cannot prevent viral miR-aU14 from activating the p53/DRP1
  axis. When herpesvirus reactivation is the primary upstream driver, the ISR
  trigger persists regardless of antioxidant supplementation.
]

#rx-box(title: "Prescription antivirals (where herpesvirus reactivation is confirmed)")[
  - *Valacyclovir* 1--3 g/day: active against HHV-6; used in chronic fatigue
    populations by Montoya group (Stanford).
  - *Valganciclovir* 900 mg/day: more potent HHV-6 coverage; Montoya et al.
    2013 (_J Med Virol_) pilot — fatigue improvement in patients with elevated
    HHV-6/EBV titers. Significant toxicity risk (myelosuppression); requires
    monitoring.

  Appropriate only with laboratory confirmation (plasma HHV-6 DNA PCR or
  serially rising IgM titers). Empirical use without testing is not justified.
]

// =============================================================================
= Master Summary
// =============================================================================

#table(
  columns: (0.4fr, 1.5fr, 1fr, 1.2fr, 0.7fr, 0.6fr),
  align: (center, left, left, left, center, center),
  table.header(
    [*Rank*], [*Agent*], [*Stress axis*], [*Closest human evidence*], [*Rx?*], [*Priority*]
  ),
  [1], [TUDCA 500--750 mg/day], [ER stress (PERK)], [ALS RCT (Paganoni 2022); ME/CFS mechanism (Gorman 2023)], [No], [★★★],
  [2], [GlyNAC (Gly 3 g + NAC 3 g)], [Mito ROS (HRI)], [Long COVID pilot (Sekhar 2022); aging cohort], [No], [★★★],
  [3], [MitoQ 10--20 mg/day], [Mito ROS (HRI)], [Long COVID pilot (Campagnolo 2023)], [No], [★★],
  [4], [CoQ10 ubiquinol 200--400 mg], [Mito ROS (ETC)], [ME/CFS trials (Maes 2009; Castro-Marrero 2015)], [No], [★★],
  [5], [Omega-3 DHA ≥1 g/day], [Cardiolipin (HRI)], [Mechanistic inference; general mitochondrial biology], [No], [★],
  [6], [LDN 1.5--4.5 mg/day], [Neuroinflammation], [Fibromyalgia RCT (Younger 2013); ME/CFS open-label], [Yes], [★★],
  [7], [Valacyclovir / valganciclovir], [Herpesvirus reactivation], [Montoya 2013 (select patients)], [Yes], [★★],
  [8], [IVIG / immunoadsorption], [Autoantibody removal], [ME/CFS: Rowe 1997; Scheibenbogen 2018], [Yes], [★★],
)

// =============================================================================
= Population-Stratified Protocols
// =============================================================================

#warning-box(title: "Clinical review required")[
  The dosing and contraindication information below summarizes available evidence
  and known safety signals. It does not substitute for individual medical
  assessment. Consult a physician or pharmacist before initiating any supplement
  in children, pregnant or breastfeeding individuals, patients on prescription
  medications, or patients with organ dysfunction.
]

The five OTC agents differ substantially in their population-specific safety
profiles. The table below summarizes dosing, contraindications, and key drug
interactions by population group.

== TUDCA

#table(
  columns: (1.2fr, 1fr, 2fr),
  align: (left, left, left),
  table.header([*Population*], [*Dose*], [*Notes*]),
  [Adults (18--65)], [500--750 mg/day], [Standard range; split dose (morning + evening) reduces GI effects],
  [Older adults (65+)], [500 mg/day], [Start low; hepatic clearance may be reduced; monitor for GI tolerance],
  [Children (under 18)], [Not established], [No pediatric safety data; do not use without specialist guidance],
  [Pregnancy], [Avoid], [UDCA (the deconjugated form) is used therapeutically in intrahepatic cholestasis of pregnancy under medical supervision — but TUDCA specifically lacks pregnancy safety data; do not self-initiate],
  [Breastfeeding], [Avoid], [Bile acids enter breast milk; unknown infant exposure risk],
  [Biliary disease], [Contraindicated], [TUDCA affects bile acid pool; avoid in biliary obstruction, cholangitis, gallstone disease],
  [Hepatic dysfunction], [Use with caution], [Hepatic metabolism; monitor liver enzymes in moderate-severe hepatic impairment],
)

*Drug interactions:*
- Antacids containing aluminum or magnesium: reduce TUDCA absorption — separate by ≥2 hours
- Cyclosporine: TUDCA may alter cyclosporine absorption (bile acid transporter effects)
- Oral contraceptives / estrogens: hepatic bile acid metabolism may be altered; monitor
- No significant interactions with most common medications at standard doses

== GlyNAC (Glycine + N-Acetylcysteine)

#table(
  columns: (1.2fr, 1fr, 2fr),
  align: (left, left, left),
  table.header([*Population*], [*Dose*], [*Notes*]),
  [Adults (18--65)], [Glycine 3 g + NAC 3 g/day], [Can be taken together; powder form cheapest; start with 1--2 g each and titrate up over 2 weeks to reduce GI upset],
  [Older adults (65+)], [Glycine 3 g + NAC 3 g/day], [Evidence specifically from aging cohorts (Kumar 2021) supports this exact dose; renal function check if eGFR below 30],
  [Children (6--17)], [Glycine: weight-based (∼50 mg/kg); NAC: lower limit (600--1200 mg/day in divided doses)], [Pediatric NAC evidence from mucolytic and acetaminophen overdose use; chronic stress reduction use lacks pediatric data],
  [Children (under 6)], [Not established], [No chronic supplementation data; NAC IV used in clinical emergency only],
  [Pregnancy], [NAC: generally considered low risk; glycine: food-grade amino acid], [NAC used therapeutically in acetaminophen overdose in pregnancy; chronic supplementation data lacking; discuss with obstetrician before use],
  [Breastfeeding], [NAC: likely compatible; glycine: food-grade], [Both present in breast milk physiologically; supplemental doses — no controlled data; low-risk assessment from available pharmacology],
  [Renal impairment], [Reduce NAC dose], [NAC and metabolites renally cleared; eGFR below 30 → reduce to 600 mg NAC/day or alternate-day dosing],
  [Asthma], [Use with caution], [Inhaled NAC is a bronchospasm trigger; oral NAC at low doses generally safe but monitor in severe asthma],
)

*Drug interactions:*
- *Nitroglycerin / nitrates*: major interaction — NAC potentiates vasodilation, causing severe hypotension and headache; avoid combination
- *Warfarin*: NAC may modestly increase anticoagulant effect; monitor INR if starting high-dose NAC
- *Activated charcoal*: adsorbs NAC; separate by >2 hours (relevant in emergency contexts)
- Glycine has no known significant drug interactions at supplemental doses

== MitoQ

#table(
  columns: (1.2fr, 1fr, 2fr),
  align: (left, left, left),
  table.header([*Population*], [*Dose*], [*Notes*]),
  [Adults (18--65)], [10--20 mg/day], [Take with food; morning dosing preferred],
  [Older adults (65+)], [10 mg/day], [Start low; pharmacokinetic data in elderly limited],
  [Children (under 18)], [Not established], [No pediatric data; do not use],
  [Pregnancy], [Avoid], [No human pregnancy safety data; lipophilic cation with mitochondrial accumulation — unknown fetal effects],
  [Breastfeeding], [Avoid], [No data; lipophilic — likely breast milk penetration],
  [Hepatic dysfunction], [Use with caution], [Hepatic metabolism; limited data in impairment],
)

*Drug interactions:*
- *Warfarin*: CoQ10 analogs may reduce warfarin efficacy (CoQ10 structural similarity); monitor INR
- *Chemotherapy*: mitochondria-targeted compounds may theoretically alter tumor cell sensitivity to certain chemotherapeutic agents; avoid concurrent use without oncologist review
- *Antihypertensives*: mild additive blood pressure lowering possible; monitor in patients already on antihypertensives
- No major interactions identified in published human trials

== CoQ10 Ubiquinol

#table(
  columns: (1.2fr, 1fr, 2fr),
  align: (left, left, left),
  table.header([*Population*], [*Dose*], [*Notes*]),
  [Adults (18--40)], [200 mg/day ubiquinone or ubiquinol], [Endogenous conversion from ubiquinone to ubiquinol adequate; ubiquinone is cheaper and equivalent],
  [Adults (over 40)], [200--400 mg/day ubiquinol], [Conversion efficiency declines with age; ubiquinol form preferred; take with fatty meal for absorption],
  [Older adults (65+)], [300--400 mg/day ubiquinol], [Higher dose often needed; absorption variable; split dosing may improve bioavailability],
  [Children (2--17)], [1--3 mg/kg/day], [Pediatric use mainly in mitochondrial disease; OTC stress-reduction use lacks specific pediatric safety data; low intrinsic toxicity],
  [Children (under 2)], [Consult specialist], [No OTC supplementation data; mitochondrial disease contexts require specialist dosing],
  [Pregnancy], [Generally considered safe], [Observational data reassuring; used in preeclampsia prevention trials; no teratogenicity signals; discuss with obstetrician for continuous use],
  [Breastfeeding], [Likely compatible], [CoQ10 present physiologically in breast milk; supplemental levels not expected to harm infant],
  [Statin users], [200--400 mg/day], [Statins deplete endogenous CoQ10; supplementation widely recommended in statin-associated myopathy],
)

*Drug interactions:*
- *Warfarin*: well-documented interaction — CoQ10 reduces warfarin efficacy (vitamin K-like structural effect); monitor INR when starting or stopping; INR may need upward adjustment
- *Antihypertensives*: mild additive blood pressure lowering; monitor in patients on antihypertensive therapy
- *Chemotherapy (doxorubicin)*: CoQ10 may reduce cardiotoxicity but also potentially alter drug efficacy; oncologist review required
- *Thyroid medications*: CoQ10 may improve thyroid hormone utilization; monitor thyroid function if on levothyroxine

== Omega-3 DHA/EPA

#table(
  columns: (1.2fr, 1fr, 2fr),
  align: (left, left, left),
  table.header([*Population*], [*Dose*], [*Notes*]),
  [Adults (18--65)], [≥1 g EPA+DHA/day], [2--3 g/day for anti-inflammatory effects; higher DHA:EPA ratio preferred for cardiolipin incorporation; take with fatty meal],
  [Older adults (65+)], [2--3 g EPA+DHA/day], [Cardiovascular benefit evidence strongest in this group; higher dose for anti-inflammatory effect],
  [Children (4--17)], [0.5--1 g EPA+DHA/day], [Well-established pediatric safety; important for neurodevelopment; DHA particularly important],
  [Children (1--3)], [100--150 mg DHA/day], [Pediatric AI (Adequate Intake) reference; supplement if diet low in oily fish],
  [Infants (under 1 year)], [Via breast milk or formula], [DHA supplementation via maternal diet or DHA-enriched formula; do not give separate fish oil supplements to infants],
  [Pregnancy], [200--300 mg DHA/day minimum; higher supported], [DHA supplementation in pregnancy is recommended and well-evidenced for fetal brain development; EPA+DHA 1--2 g/day is safe; fish oil preferred over single-compound supplements; avoid high-dose cod liver oil (vitamin A toxicity risk)],
  [Breastfeeding], [200--300 mg DHA/day], [DHA concentrates in breast milk; supplementation benefits infant neurodevelopment; well-established safety],
  [Antiplatelet / anticoagulant users], [≤1 g/day without physician review], [Mild antiplatelet effect at >3 g/day; clinically significant bleeding risk increase remains debated; monitor if on warfarin, aspirin, clopidogrel],
  [Fish allergy], [Algal DHA supplements], [Algae-sourced DHA/EPA available and equivalent; eliminates fish protein allergen risk],
)

*Drug interactions:*
- *Warfarin*: mild antiplatelet effect; clinically significant INR elevation mainly at doses >3 g/day; monitor INR if dose >1 g/day in anticoagulated patients
- *Aspirin / clopidogrel / ticagrelor*: additive antiplatelet effect; risk of bleeding at higher doses; doses ≤1 g/day generally safe in combination
- *Antihypertensives*: mild additive blood pressure lowering; generally beneficial
- *Cyclosporine*: omega-3 may improve cyclosporine nephrotoxicity profile; relevant in transplant patients
- *Diabetes medications*: high-dose fish oil may slightly raise fasting glucose in some individuals; monitor if on antidiabetics

// =============================================================================
= Suggested Starting Protocols by Population
// =============================================================================

Add agents sequentially — one new agent every 4 weeks — so any adverse effect
or benefit can be attributed. Allow *6--8 weeks total* before assessing whether
the stack is producing a measurable effect.

== Healthy adults (18--65, not pregnant)

#note-box(title: "Minimal stack")[
  *TUDCA* 500 mg/day + *GlyNAC* (glycine 3 g + NAC 3 g/day)

  Complementary mechanisms: ER stress reduction (PERK) + mitochondrial GSH
  replenishment (HRI). Lowest-risk entry point; supported by disease-adjacent
  human trials.
]

#note-box(title: "Extended stack (add sequentially if tolerated)")[
  - Week 4: add *MitoQ* 10 mg/day — mitochondria-targeted ROS quenching
  - Week 8: add *CoQ10 ubiquinol* 200 mg/day — ETC efficiency
  - Week 12: add *Omega-3 DHA/EPA* ≥1 g/day — cardiolipin structural protection
]

== Adults over 65

#note-box(title: "Minimal stack")[
  *TUDCA* 500 mg/day (lower end; monitor GI) + *GlyNAC* (glycine 3 g + NAC
  3 g/day) + *CoQ10 ubiquinol* 300 mg/day

  CoQ10 is included from the start in this group: endogenous synthesis declines
  substantially with age, making deficiency more likely. NAC: check renal
  function first (eGFR below 30 → reduce NAC to 600 mg/day).
]

#note-box(title: "Extended stack")[
  - Week 4: add *Omega-3 DHA/EPA* 2 g/day — cardiolipin protection +
    cardiovascular benefit (evidence strongest in this age group)
  - Week 8: add *MitoQ* 10 mg/day if tolerated
]

== Children (6--17)

#note-box(title: "Minimal stack")[
  *Omega-3 DHA/EPA* 0.5--1 g/day (well-established pediatric safety and
  neurodevelopmental benefit)

  GlyNAC at weight-based glycine dose (~50 mg/kg/day) + NAC 600--1200 mg/day
  may be added for children with documented oxidative stress or post-viral
  fatigue, but only under physician supervision — chronic stress-reduction use
  lacks pediatric trial data.
]

#warning-box(title: "TUDCA and MitoQ: not for children")[
  No pediatric safety data exists for TUDCA or MitoQ. Do not use in children
  without specialist guidance.
]

== Children under 6

#note-box(title: "Only Omega-3")[
  *Omega-3 DHA* at age-appropriate AI dose (100--150 mg DHA/day for ages 1--3;
  physician guidance for infants). All other agents in this protocol lack
  pediatric safety data for this age group and should not be used.
]

== Pregnancy

#warning-box(title: "Physician review required before any supplementation")[
  The safety profile changes substantially during pregnancy. Default to the
  most conservative approach and discuss with an obstetrician.
]

#note-box(title: "Generally supported")[
  *Omega-3 DHA* 200--300 mg/day minimum (fetal brain development; well-evidenced
  and widely recommended). Higher doses (1--2 g/day EPA+DHA) are supported by
  obstetric literature. Prefer fish oil over cod liver oil (avoid excess
  vitamin A).
]

#note-box(title: "Low-risk, discuss with obstetrician")[
  *NAC* (part of GlyNAC): used therapeutically in pregnancy for acetaminophen
  overdose; chronic supplementation data lacking; generally considered low-risk
  based on pharmacology. *Glycine*: food-grade amino acid; no teratogenicity
  signals. Discuss before initiating GlyNAC as a supplement course.
]

#warning-box(title: "Avoid during pregnancy")[
  - *TUDCA*: no pregnancy safety data; avoid
  - *MitoQ*: no pregnancy safety data; lipophilic cation with mitochondrial
    accumulation; unknown fetal effects; avoid
  - *CoQ10*: generally considered safe (used in preeclampsia prevention trials)
    but discuss with obstetrician before continuous use
]

== Breastfeeding

#note-box(title: "Supported")[
  *Omega-3 DHA* 200--300 mg/day — concentrates in breast milk; benefits infant
  neurodevelopment; well-established safety.
]

#note-box(title: "Likely compatible, monitor infant")[
  *GlyNAC*: NAC and glycine present physiologically in breast milk; supplemental
  doses present low theoretical risk; no controlled data. *CoQ10*: present
  physiologically; supplemental levels not expected to harm infant.
]

#warning-box(title: "Avoid while breastfeeding")[
  *TUDCA*: bile acids enter breast milk; unknown infant exposure risk. *MitoQ*:
  lipophilic; likely breast milk penetration; no data.
]

== On anticoagulants (warfarin / acenocoumarol)

#note-box(title: "Use with INR monitoring")[
  - *CoQ10*: reduces warfarin efficacy (vitamin K-like structural effect) —
    monitor INR when starting or stopping; dose adjustment may be needed
  - *Omega-3* at doses above 1 g/day: mild antiplatelet effect; monitor INR
  - *MitoQ*: similar CoQ10 structural interaction; monitor INR
  - *GlyNAC*: NAC may modestly increase anticoagulant effect at high doses;
    monitor INR
  - *TUDCA*: no significant warfarin interaction at standard doses
]

== On statins

#note-box(title: "CoQ10 prioritized")[
  Statins inhibit the mevalonate pathway, depleting endogenous CoQ10. Start
  with *CoQ10 ubiquinol* 200--400 mg/day as the first addition (not MitoQ
  alone). GlyNAC and Omega-3 are also appropriate. TUDCA has no statin
  interaction.
]

== On antihypertensives

#note-box(title: "Monitor blood pressure")[
  CoQ10, MitoQ, and Omega-3 all have mild additive blood pressure lowering
  effects. Monitor blood pressure when adding any of these in patients already
  on antihypertensive therapy; medication dose adjustment may be needed.
]

== When to involve a physician

#note-box(title: "Physician referral triggers")[
  - Suspected herpesvirus reactivation → test first (HHV-6 DNA PCR, IgM
    titers); then consider antivirals
  - Autonomic dysfunction with autoantibody profile → IVIG or immunoadsorption
    referral
  - Neuropathic pain with small fiber neuropathy features → IgG-DRG axis;
    immunotherapy evaluation
  - LDN — requires prescription; initiate with GP or specialist
  - Any child under 18 using more than Omega-3 → physician supervision required
  - Pregnancy or breastfeeding — discuss all supplements with obstetrician
]

// =============================================================================
= What to Expect: Observable Effects
// =============================================================================

Most effects of these agents are gradual and indirect — they reduce a chronic
biological load rather than producing an acute pharmacological response. Do not
expect effects comparable to stimulants, analgesics, or acute medications.
Observable changes emerge over weeks as cellular stress levels fall and
mitochondrial function partially recovers.

#warning-box(title: "Absence of dramatic effects is normal")[
  These are upstream modulators, not symptom-relief drugs. A person with no
  significant ER stress or mitochondrial dysfunction will notice little. Effects
  are most perceptible in individuals where these pathways are meaningfully
  dysregulated.
]

== Expected positive effects by agent

#table(
  columns: (1fr, 1.5fr, 1fr),
  align: (left, left, left),
  table.header([*Agent*], [*Observable effects (where reported)*], [*Onset*]),
  [TUDCA],
    [Reduction in post-exertional malaise intensity; improved GI comfort (bile acid normalization); possibly improved sleep quality in populations with ER stress-driven neurological symptoms],
    [4--12 weeks],
  [GlyNAC],
    [Reduced fatigue and post-exertional exhaustion; improved cognitive clarity ("brain fog" reduction); improved exercise tolerance in Long COVID cohort (Sekhar 2022); mild mood stabilization (glycine is a glycinergic inhibitory neurotransmitter)],
    [4--8 weeks],
  [MitoQ],
    [Reduced fatigue; improved exercise recovery time; possibly reduced muscle pain after exertion; mild blood pressure lowering],
    [4--8 weeks],
  [CoQ10 ubiquinol],
    [Reduced fatigue; improved exercise tolerance; reduced muscle weakness (particularly in statin-associated myopathy); mild blood pressure lowering],
    [6--12 weeks],
  [Omega-3 DHA/EPA],
    [Reduced joint and muscle inflammation; improved mood (EPA component — well-evidenced antidepressant effect at ≥1 g EPA/day); improved cardiovascular markers; cardiolipin protection effects are structural and not directly felt],
    [8--16 weeks (cardiolipin incorporation is slow)],
)

== Effects that are not directly perceptible

Several mechanisms of action produce no subjective signal even when working:

- *Cardiolipin composition change* (Omega-3): occurs in mitochondrial membranes over weeks; reduces future peroxidation risk but produces no acute sensation
- *ER chaperone activity* (TUDCA): reduction in PERK phosphorylation is a cellular event with no direct subjective correlate; effect is felt as reduced downstream consequences (fatigue, PEM)
- *HRI kinase suppression* (GlyNAC, MitoQ): as above — the ISR reduction is molecular; the experienced signal is less fatigue and faster recovery

== Adverse effects to watch for

#table(
  columns: (1fr, 1.5fr, 1fr),
  align: (left, left, left),
  table.header([*Agent*], [*Common adverse effects*], [*Stop if*]),
  [TUDCA],
    [Mild nausea, loose stools, bloating (especially at higher doses); GI effects usually resolve after 1--2 weeks],
    [Jaundice, severe abdominal pain, known biliary obstruction],
  [NAC (in GlyNAC)],
    [Nausea, vomiting, diarrhea (particularly on empty stomach); sulfurous odor in urine; headache at high doses],
    [Severe GI reaction; bronchospasm in asthma; taking nitroglycerin],
  [Glycine (in GlyNAC)],
    [Generally very well tolerated; mild drowsiness at high doses (glycinergic effect) — take evening dose at bedtime],
    [No documented serious adverse effects at supplemental doses],
  [MitoQ],
    [Mild nausea; loose stools; occasional headache],
    [Persistent GI disturbance; on chemotherapy without oncologist review],
  [CoQ10 ubiquinol],
    [Mild nausea, GI upset (take with fatty meal); insomnia if taken late evening (energizing effect in some); mild blood pressure lowering],
    [On warfarin without INR monitoring; unexplained bruising],
  [Omega-3 DHA/EPA],
    [Fishy aftertaste / burping (use enteric-coated or refrigerate); mild GI upset; mild antiplatelet effect at high doses],
    [Unexplained bleeding; scheduled surgery (stop 1--2 weeks before)],
)

== Timeline overview

#table(
  columns: (1fr, 2fr),
  align: (left, left),
  table.header([*Timepoint*], [*What may be noticeable*]),
  [Week 1--2], [GI adjustment effects (nausea, loose stools) — usually transient; these are tolerability signals, not efficacy signals],
  [Week 4--6], [First fatigue reduction signals possible (GlyNAC, CoQ10); glycine-associated sleep improvement possible within days if taken before bed],
  [Week 8--10], [Clearer fatigue and exercise recovery improvement if protocol is working; mood improvement from EPA component of Omega-3],
  [Week 12+], [Full mitochondrial membrane remodeling (cardiolipin/Omega-3); cumulative ER stress reduction; maximum effect of the stack],
  [No change at 12 weeks], [Reconsider whether this stress axis is active in this individual; consider testing (GDF15, FGF21, GSH levels if available); seek physician review],
)

// =============================================================================
= Limitations
// =============================================================================

#warning-box(title: "Important caveats")[
  - *ISR bidirectionality*: SARS-CoV-2 N2b domain suppresses PKR-mediated ISR
    activation [Aloise et al. 2023, _PLOS Pathog_]. In some post-COVID patients,
    ISR may be suppressed rather than elevated. ISR-reduction strategies may be
    inappropriate in that subgroup. The pathogen trigger is typically unknown.

  - *Tissue compartmentalization*: ISR may be active in muscle and CNS tissue
    but not in peripheral blood [Omdal et al. 2026 — null result for peripheral
    stress markers in Long COVID fatigue, n=48]. Circulating ISR biomarkers
    (GDF15, FGF21) have limited diagnostic utility.

  - *No powered RCTs* in post-viral or chronic fatigue populations exist for
    most of these agents in this mechanistic context. Evidence is mechanistic
    inference + disease-adjacent data. All recommendations are preliminary and
    should be reviewed by a physician before implementation.

  - *ISRIB and direct ISR suppressors are NOT recommended*: They block the
    protective kinase activity that prevents DRP1-mediated mitochondrial
    fragmentation [Baron et al. 2025] and would likely harm patients where
    ISR is already suppressed.

  - *Götz 2025 (Drosophila preprint)*: The lifespan-extension data cited in the
    overview is an unreviewed preprint, contradicts prior yeast/_C. elegans_
    findings, and requires peer-reviewed vertebrate replication.
]

// =============================================================================
= References
// =============================================================================

#set par(hanging-indent: 1.5em)

*ISR pathway, aging, and healthspan*

Götz MS et al. "Suppression rather than activation of the integrated-stress-response
(GCN2--ATF4) pathway extends lifespan in the fly." _bioRxiv_ preprint, 2025.
[UNREVIEWED PREPRINT; _Drosophila_ only]

Costa-Mattioli M, Walter P. "The integrated stress response: from mechanism to
disease." _Science_. 2020;368(6489):eaat5314.

Le QH et al. "eIF2α phosphorylation--ATF4 axis-mediated transcriptional
reprogramming mitigates mitochondrial impairment during ER stress." _Mol Cells_.
2025.

Altintas O et al. "General control nonderepressible 2 (GCN2) as a therapeutic
target in age-related diseases." _Front Aging_. 2024.

Baron KR et al. "Pharmacologic ISR kinase activation promotes mitochondrial
elongation." _eLife_. 2025.

*ER stress interventions*

Gorman GS et al. [Wang P-Y et al.] "WASF3 disrupts mitochondrial respiration and
may mediate exercise intolerance in ME/CFS." _PNAS_. 2023;120(34):e2302738120.

Paganoni S et al. "Trial of sodium phenylbutyrate--taurursodiol for ALS." _New
Engl J Med_. 2022;387:1113--1123.

*Mitochondrial oxidative stress interventions*

Sekhar RV. "GlyNAC supplementation improves glutathione deficiency, oxidative
stress, mitochondrial dysfunction, inflammation, and aging hallmarks in Long
COVID patients." _Antioxidants_. 2022.

Kumar P, Sekhar RV. "Glycine and N-acetylcysteine (GlyNAC) supplementation in
older adults improves glutathione deficiency, oxidative stress, mitochondrial
dysfunction, inflammation, insulin resistance, endothelial dysfunction, genotoxicity,
muscle strength, and cognition." _Clin Transl Med_. 2021;11(3):e372.

Campagnolo N et al. "Mitochondria-targeted antioxidant supplementation in Long
COVID." _Free Radic Biol Med_. 2023. [pilot, n=12]

Maes M et al. "Coenzyme Q10 deficiency in ME/CFS." _Neuro Endocrinol Lett_.
2009;30(4):470--476.

Castro-Marrero J et al. "Does oral coenzyme Q10 plus NADH supplementation improve
fatigue and biochemical parameters in ME/CFS?" _Antioxid Redox Signal_.
2015;22(8):679--685.

*Viral reactivation*

Hennig T, Prusty AB et al. "Selective inhibition of miRNA processing by a
herpesvirus-encoded miRNA." _Nature_. 2022;605:539--544.

Kasimir F et al. "Virus specific and anti-neuronal immune responses in
post-COVID conditions." _Front Neurol_. 2022.

Montoya JG et al. "Valganciclovir for active herpesvirus infection in
ME/CFS." _J Med Virol_. 2013.

Aloise C et al. "SARS-CoV-2 nucleocapsid N2b domain suppresses PKR-mediated ISR
activation." _PLOS Pathog_. 2023.

*Autoantibodies and immune stress*

Scheibenbogen C et al. "Immunoadsorption to remove β2-adrenergic receptor
antibodies in CFS/ME." _PLOS ONE_. 2018;13(3):e0193672.

Loebel M et al. "Deficient EBV-specific B- and T-cell response in patients with
CFS/ME." _PLOS ONE_. 2014.

Giannoccaro MP et al. "Patients with ME/CFS have IgG antibodies against neuronal
targets." _Brain_. 2023.

Fluge Ø et al. "B-lymphocyte depletion in patients with ME/CFS." _PLOS ONE_.
2019.

*Naltrexone*

Younger J, Parkitny L, McLain D. "The use of low-dose naltrexone (LDN) as a
novel anti-inflammatory treatment for chronic pain." _Clin Rheumatol_. 2014.

*IVIG*

Rowe PC et al. "Intravenous immunoglobulin for ME/CFS." _Ann Intern Med_. 1997.

*ISR null result (peripheral blood)*

Omdal R et al. "Cellular stress markers and fatigue in Long COVID." 2026.
[peripheral blood, n=48; null result]
