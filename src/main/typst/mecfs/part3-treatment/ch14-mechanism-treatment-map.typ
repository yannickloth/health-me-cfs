#import "../shared/environments.typ": *

= Mechanism–Treatment Map
<ch:mechanism-treatment-map>

This chapter serves as the navigational entry point to Part III. It answers a single question: *for each known ME/CFS mechanism, what treatment options exist?*

The map is organised by causal tier, as established in Chapter @ch:causal-hierarchy. Tier 1 mechanisms are those with evidence of trigger-capability — they can initiate ME/CFS independently from a healthy baseline. Tier 2 mechanisms are amplifiers: real, documented processes that worsen or perpetuate disease but cannot initiate it alone. The distinction matters therapeutically: *in theory*, addressing Tier 1 mechanisms could produce remission in some patients; addressing Tier 2 mechanisms primarily reduces disease burden and prevents further deterioration. This is the *theoretical expectation* of the causal model — no controlled trial has yet demonstrated durable remission from any Tier 1-targeted intervention.

#key-point(title: [How to Use This Chapter])[
*For clinicians and patients*, this chapter functions as a diagnostic checklist. The overview table below (@tab:mechanism-overview) shows all mechanisms at a glance with their tier, treatment priority, and coverage count. For each active mechanism, proceed to the corresponding section for the full treatment list. Guidance on how to assess which mechanisms are active in a given patient is in Chapter @ch:integrative-treatment (phenotyping protocol, Section @sec:phenotyping-imperative).

*For navigation*, each treatment listed links to the chapter where it is discussed in full. Evidence levels and energy categories (A/B/C) are defined in Chapter @ch:integrative-treatment.

*For research planning*, the last section (@sec:mechanism-coverage-gaps) identifies which mechanisms have no targeted treatments — the most urgent research gaps.

*Scope note:* This map catalogues mechanism-targeted and substrate-level interventions. It does not include purely symptom-management approaches (e.g., pain medications, sleep aids) unless those share a mechanistic rationale with the listed mechanisms. Treatments are included regardless of current regulatory or access status; many listed under Tier 1 are investigational or not clinically accessible outside research centres — see the Evidence column for each entry.
]

#warning-env(title: [This Map Does Not Replace Clinical Judgement])[
The presence of a treatment in this table does not constitute a recommendation to use it. Mechanism activation must be assessed per patient. Evidence levels range from robust RCT data to single case reports. Energy category and crash risk must be evaluated before any trial. See Chapter @ch:integrative-treatment for the full safety framework, including phenotyping protocol, micro-dosing imperative, and severity-based gating.

*Priority ratings* in the overview table reflect theoretical remission potential × evidence tractability — they do *not* encode evidence strength alone. A 5-star Tier 1 mechanism with multiple failed controlled trials may rank higher than a 3-star Tier 2 mechanism with strong symptom-reduction evidence, because the former has higher *theoretical upside* if the right intervention is found.
]

== Mechanism Overview
<sec:mechanism-overview>

The table below provides a one-page view of all ME/CFS mechanisms, their causal tier, therapeutic priority, and the number of interventions currently available. Treatment priority reflects two factors: (1) whether targeting the mechanism could produce remission vs. symptom reduction (theoretical), and (2) current evidence base and treatment tractability. *Energy categories* A/B/C refer to the patient energy cost of the intervention, not evidence strength — see Chapter @ch:integrative-treatment for definitions. A#super[\*] denotes a treatment whose metabolic profile is Category A but that is not yet clinically available (investigational only).

#figure(
  table(
    columns: (2fr, 0.5fr, 2.5fr, 0.4fr, 1fr),
    fill: (_, row) => if row == 0 { rgb("#2c3e50") } else if calc.odd(row) { luma(245) } else { white },
    stroke: (_, row) => if row == 0 { none } else { 0.3pt + luma(200) },
    [#text(fill: white, weight: "bold")[*Mechanism*]],
    [#text(fill: white, weight: "bold")[*Tier*]],
    [#text(fill: white, weight: "bold")[*Priority*]],
    [#text(fill: white, weight: "bold")[*N°*]],
    [#text(fill: white, weight: "bold")[*Section*]],

    [GPCR Autoantibody Cascade], [T1], [★★★★★ — remission-capable; highest unmet need], [7], [@sec:map-gpcr],
    [Metabolic Safe Mode Lock], [T1], [★★★★★ — remission-capable; near-zero pharmacological coverage], [8], [@sec:map-metabolic-safe-mode],
    [CNS Energy Crisis], [T1], [★★★★☆ — remission-capable; neuromodulation pipeline growing], [15], [@sec:map-cns-energy],
    [TRPM3 Channelopathy], [T1], [★★★★☆ — remission-capable; LDN validated in vitro; underexplored], [2], [@sec:map-trpm3],
    [Dysautonomia / ANS Dysfunction], [T2], [★★★★☆ — most tractable Tier 2; multiple approved options], [16], [@sec:map-dysautonomia],
    [Mast Cell–Energy Loop], [T2], [★★★☆☆ — high tractability; reduces burden + crash frequency], [8], [@sec:map-mast-cell],
    [Oxidative Stress Vicious Cycle], [T2], [★★★☆☆ — broadly addressable; foundational for energy recovery], [12], [@sec:map-oxidative],
    [NAD⁺ Depletion Spiral], [T2], [★★★☆☆ — direct substrates available; Category A], [7], [@sec:map-nad],
    [Viral Reactivation / Immune Exhaustion], [T2], [★★☆☆☆ — antivirals available but high toxicity; difficult subgroup], [5], [@sec:map-viral],
    [Gut Dysbiosis], [T2], [★★☆☆☆ — tractable but systemic impact limited without Tier 1 resolution], [8], [@sec:map-gut],
    [Endothelial Activation / Microclotting], [T2], [★★☆☆☆ — emerging procedures; RCT evidence weak], [6], [@sec:map-endothelial],
    [Epigenetic Consolidation], [T2], [★☆☆☆☆ — _critical gap_: explains treatment resistance; near-zero coverage], [2], [@sec:map-epigenetic],
  ),
  caption: [ME/CFS mechanism overview — causal tier, therapeutic priority, and available treatment count. Priority ratings reflect remission potential × evidence tractability. N° = number of interventions listed in the corresponding section.],
  kind: table,
) <tab:mechanism-overview>

== Tier 1: Trigger-Capable Root Causes
<sec:map-tier1>

These are the mechanisms for which there is evidence of independent disease-initiation capability. Targeting them represents the highest-yield therapeutic strategy, but most Tier 1 treatments carry significant evidence uncertainty or cost.

=== GPCR Autoantibody Cascade
<sec:map-gpcr>

Autoantibodies against β2-adrenergic receptors and muscarinic M3/M4 receptors are hypothesised to drive endothelial dysfunction, autonomic dysregulation, and neuroinflammation. Prevalence estimates range 29–91% across studies — a spread reflecting assay heterogeneity and varying cut-offs rather than a stable biomarker @Scheibenbogen2018immunoadsorption @Loebel2016. Uncontrolled immunoadsorption series show high response rates (~70%), but controlled RCTs of rituximab, efgartigimod, and plasma exchange targeting the same mechanism have all returned negative primary endpoints. The mechanistic hypothesis remains plausible and clinically important; it has not yet been confirmed by a positive sham-controlled trial.

#figure(
  table(
    columns: (2fr, 1.2fr, 1fr, 0.8fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(245) } else { white },
    [*Treatment*], [*Mechanism of action*], [*Category*], [*Energy*], [*Evidence*],

    [Immunoadsorption], [IgG + EV depletion], [Procedure], [C], [Trial — ~70% response @Scheibenbogen2018immunoadsorption],
    [Daratumumab], [CD38+ plasma cell depletion], [Biologic], [C], [Trial — ~60% response, 8–9 mo latency],
    [BC007], [β2-AR autoantibody neutralisation], [Biologic], [C], [Phase I/II],
    [Rituximab], [Anti-CD20 B-cell depletion], [Biologic], [C], [Trial — RCT negative overall; subset signal],
    [Efgartigimod], [FcRn blocker → IgG half-life ↓], [Biologic], [C], [Trial — Phase 2 RCT _negative_],
    [Plasma exchange (TPE)], [Autoantibody + mediator removal], [Procedure], [C], [Trial — Phase 2 RCT _negative_],
    [IVIG], [Immune modulation, autoantibody dilution], [Biologic], [C], [Clinical, off-label],
  ),
  caption: [Treatments targeting GPCR autoantibody cascade],
  kind: table,
) <tab:map-gpcr>

=== TRPM3 Channelopathy
<sec:map-trpm3>

Post-viral dysfunction of the TRPM3 calcium channel impairs NK cell function, neuronal signalling, vascular tone regulation, and pancreatic insulin secretion. The 2026 Sasso multi-site study confirmed this as a consistent finding. LDN's restoration of TRPM3-like ionic currents in NK cells from ME/CFS patients has been demonstrated in vitro @Cabanas2021.

#figure(
  table(
    columns: (2fr, 1.2fr, 1fr, 0.8fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(245) } else { white },
    [*Treatment*], [*Mechanism of action*], [*Category*], [*Energy*], [*Evidence*],

    [LDN (low-dose naltrexone)], [μ-opioid block → TRPM3 calcium flux restored], [Medication], [B], [Clinical, off-label; RCT underway @Younger2014LDN],
    [Pregnenolone sulfate], [Direct TRPM3 agonist], [Supplement], [B], [Experimental; mechanistic rationale only],
  ),
  caption: [Treatments targeting TRPM3 channelopathy],
  kind: table,
) <tab:map-trpm3>

=== CNS Energy Crisis
<sec:map-cns-energy>

Central nervous system hypometabolism driven by neuroinflammation, neurovascular uncoupling, or direct mitochondrial dysfunction. Supported by PET/SPECT hypometabolism studies and CSF catecholamine precursor deficits @Walitt2024NIH. Note: that study's authors interpret the findings in terms of altered effort signalling rather than primary metabolic pathology; the "energy crisis" framing is one valid reading of the data, not the only one. The CNS energy crisis produces downstream autonomic dysfunction, immune dyscoordination, endocrine disruption, and sleep fragmentation.

#figure(
  table(
    columns: (2fr, 1.2fr, 1fr, 0.8fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(245) } else { white },
    [*Treatment*], [*Mechanism of action*], [*Category*], [*Energy*], [*Evidence*],

    [MDC002 (Mitodicure)], [Na⁺/K⁺-ATPase + NCLX + NHE1/PDE7 → mitochondrial Ca²⁺ rescue], [Medication], [A#super[\*]], [Phase I — safety only; no efficacy data; not prescribable],
    [LDN], [TLR4 antagonism → microglial activation ↓], [Medication], [B], [Clinical, off-label],
    [PEA (palmitoylethanolamide)], [PPAR-α → mast cell + neuroinflammation ↓], [Supplement], [B], [Clinical, off-label],
    [Low-dose aripiprazole], [Dopaminergic / microglial modulation], [Medication], [C], [Clinical, off-label; pharmacogenomics required],
    [Memantine], [NMDA antagonism → glutamatergic excess ↓], [Medication], [B], [Experimental; fibromyalgia evidence],
    [tVNS / taVNS], [Cholinergic anti-inflammatory + ANS reset + CBF ↑], [Neuromodulation], [A], [RCT feasibility done; active RCTs ongoing],
    [rTMS (repetitive TMS)], [Cortical excitability, dopamine, motor circuit modulation], [Neuromodulation], [B], [Pilot n=15, 2025; no sham-RCT yet],
    [tDCS], [Prefrontal cortical excitability modulation], [Neuromodulation], [B], [Long COVID RCT _negative_; no ME/CFS RCT],
    [HBOT], [Mitochondrial ATP ↑, thalamic connectivity restoration, O₂ delivery], [Procedure], [B], [2025 RCT promising],
    [Photobiomodulation (PBM)], [Cytochrome c oxidase activation → CCO NO inhibition ↓], [Physical], [A], [Feasibility trial registered (NCT06145867)],
    [Nicotine (transdermal)], [α7-nAChR → cholinergic anti-inflammatory pathway], [Neuromodulation], [B], [Experimental (n=4 case series)],
    [Pembrolizumab], [PD-1 checkpoint → T-cell exhaustion reversal], [Biologic], [C], [Phase 1 (Long COVID, n=15)],
    [Psilocybin], [5-HT2A, DMN reset, kynurenine pathway (speculative)], [Psychedelic], [B], [Experimental; no ME/CFS RCT],
    [Temelimab], [HERV-W ENV neutralisation → neuroinflammation ↓], [Biologic], [C], [Trial — Phase 2 RCT _negative_],
    [Far-infrared sauna (Waon therapy)], [CBF ↑, mitochondrial function ↑, autophagy normalisation], [Physical], [A/B], [Japanese clinical series; caution with POTS],
  ),
  caption: [Treatments targeting CNS energy crisis],
  kind: table,
) <tab:map-cns-energy>

=== Metabolic Safe Mode Lock
<sec:map-metabolic-safe-mode>

An evolutionarily conserved metabolic suppression programme — initiated by infection or trauma — that fails to disengage. Maintained by itaconate shunt activation, IDO upregulation (kynurenine pathway diversion of tryptophan), mitochondrial fission, and self-reinforcing immune activation.

#figure(
  table(
    columns: (2fr, 1.2fr, 1fr, 0.8fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(245) } else { white },
    [*Treatment*], [*Mechanism of action*], [*Category*], [*Energy*], [*Evidence*],

    [MDC002 (Mitodicure)], [Ion homeostasis restoration → AIMM reversal], [Medication], [A#super[\*]], [Phase I — safety only; no efficacy data; not prescribable],
    [NAD⁺ precursors (NR/NMN)], [Kynurenine bypass + PARP substrate replenishment], [Supplement], [A], [Clinical use; emerging Long COVID data],
    [Rapamycin (sirolimus)], [mTOR inhibition → autophagy/mitophagy restored, immune brake], [Medication], [B/C], [Pilot — ~34% ITT response],
    [Metformin], [AMPK activation → mitochondrial biogenesis], [Medication], [B], [Off-label; studied in Long COVID],
    [Berberine], [AMPK activation (Complex I inhibition)], [Supplement], [B], [Experimental; _caution_ — AMPK role may be protective],
    [Ketogenic diet], [Ketone bodies bypass glycolytic bottlenecks; NAD⁺-dependent OXPHOS ↑], [Dietary], [A], [Feasibility study; no outcome improvement shown],
    [5-HTP], [IDO bypass → direct serotonin precursor], [Supplement], [B], [Clinical; _serotonin syndrome risk_ with SSRIs/SNRIs/MAOIs],
    [Thiamine (TTFD form)], [PDH cofactor; restores pyruvate → acetyl-CoA flux], [Supplement], [A], [Clinical; TTFD form preferred for BBB crossing],
  ),
  caption: [Treatments targeting metabolic safe mode lock],
  kind: table,
) <tab:map-metabolic-safe-mode>

== Tier 2: Amplifier Mechanisms
<sec:map-tier2>

These mechanisms cannot initiate ME/CFS independently but substantially worsen and perpetuate it once established. Addressing them reduces symptom burden, prevents crashes, and may improve tolerance of Tier 1-targeted treatments.

=== NAD⁺ Depletion Spiral
<sec:map-nad>

PARP hyperactivation from oxidative damage, CD38-mediated consumption by immune cells, and impaired kynurenine pathway conversion collectively deplete the NAD⁺ pool, amplifying energy failure and immune cell exhaustion.

#figure(
  table(
    columns: (2fr, 1.2fr, 1fr, 0.8fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(245) } else { white },
    [*Treatment*], [*Mechanism of action*], [*Category*], [*Energy*], [*Evidence*],

    [NR (nicotinamide riboside)], [NAD⁺ precursor; NAMPT-independent pathway], [Supplement], [A], [Clinical use; Long COVID emerging data],
    [NMN (nicotinamide mononucleotide)], [NAD⁺ precursor; NMN transporter pathway], [Supplement], [A], [Clinical use],
    [NADH], [Direct Complex I electron donor], [Supplement], [A], [RCT: Castro-Marrero 2021, n=207 (with CoQ10)],
    [CoQ10 (ubiquinol)], [ETC support → PARP activation demand ↓], [Supplement], [A], [Clinical use; multiple studies],
    [Riboflavin (B2)], [FAD precursor for Complex II], [Supplement], [A], [Clinical use],
    [Spermidine], [Mitophagy via PINK1/PRKN + histone acetylation], [Supplement], [A], [Experimental; human cognition data emerging],
    [Urolithin A], [Mitophagy via lysosomal clearance of damaged mitochondria], [Supplement], [A], [Experimental; no ME/CFS trials],
  ),
  caption: [Treatments targeting NAD⁺ depletion spiral],
  kind: table,
) <tab:map-nad>

=== Oxidative Stress Vicious Cycle
<sec:map-oxidative>

Reactive oxygen species peroxidise cardiolipin, destabilising ETC supercomplexes and causing further electron leak — a self-amplifying loop. Elevated lipid peroxidation, 8-isoprostanes, and protein carbonyls are documented in ME/CFS @Maes2009CoQ10.

#figure(
  table(
    columns: (2fr, 1.2fr, 1fr, 0.8fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(245) } else { white },
    [*Treatment*], [*Mechanism of action*], [*Category*], [*Energy*], [*Evidence*],

    [CoQ10 (ubiquinol)], [Antioxidant at ETC Complex II–III; lipid peroxidation ↓], [Supplement], [A], [Clinical; multiple studies],
    [NAC (N-acetyl cysteine)], [Glutathione precursor; ROS scavenger], [Supplement], [A], [Clinical use],
    [Alpha-lipoic acid (ALA)], [Nrf2 activator; mitochondrial antioxidant; start low (paradoxical worsening risk)], [Supplement], [A/B], [Clinical use],
    [Omega-3 (EPA/DHA)], [Membrane lipid protection; cardiolipin preservation], [Supplement], [A], [Clinical use],
    [Quercetin], [Nrf2 activator; mast cell stabiliser], [Supplement], [A/B], [Clinical use],
    [Curcumin], [NF-κB inhibition; Nrf2 activation (bioavailability issue)], [Supplement], [A/B], [Clinical use; enhanced formulation required],
    [Vitamin D3], [Immune regulation + antioxidant response], [Supplement], [A], [Clinical; target 40–60 ng/mL],
    [Zinc (glycinate)], [SOD cofactor; gut barrier + antioxidant], [Supplement], [A], [Clinical use],
    [Resveratrol], [Sirtuin/AMPK activator; mitochondrial biogenesis], [Supplement], [A/B], [Experimental],
    [PQQ], [Mitochondrial biogenesis stimulator], [Supplement], [A], [Preliminary evidence only],
    [Photobiomodulation], [CCO activation → NO inhibition ↓ → electron transport ↑], [Physical], [A], [Feasibility trial registered],
    [HBOT], [Oxidative stress ↓; mitochondrial ATP ↑; O₂ delivery restoration], [Procedure], [B], [2025 RCT promising],
  ),
  caption: [Treatments targeting oxidative stress vicious cycle],
  kind: table,
) <tab:map-oxidative>

=== Mast Cell–Energy Loop
<sec:map-mast-cell>

Bidirectional activation: mast cell mediators worsen energy state; energy failure activates mast cells. This loop amplifies neuroinflammation, gut permeability, pain, and cognitive dysfunction. Mast cell activation does NOT produce PEM independently; it requires pre-existing energy dysfunction to drive the PEM cycle.

#figure(
  table(
    columns: (2fr, 1.2fr, 1fr, 0.8fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(245) } else { white },
    [*Treatment*], [*Mechanism of action*], [*Category*], [*Energy*], [*Evidence*],

    [H1 antihistamines (cetirizine, loratadine)], [H1 receptor blockade], [Medication], [B], [Clinical],
    [H2 antihistamines (famotidine, cimetidine)], [H2 blockade + immune modulation], [Medication], [B], [Clinical],
    [Cromolyn sodium], [Mast cell stabiliser; degranulation inhibition], [Medication], [B], [Clinical, off-label],
    [Ketotifen], [Mast cell stabiliser + H1 blocker], [Medication], [B], [Clinical, off-label],
    [Quercetin], [Mast cell stabiliser; Nrf2], [Supplement], [A/B], [Clinical use],
    [PEA], [PPAR-α → mast cell membrane stabilisation], [Supplement], [B], [Clinical, off-label],
    [Amitriptyline (low-dose)], [Mast cell mediator inhibition + sleep], [Medication], [B], [Clinical],
    [Low-histamine diet], [Reduced histamine load; degranulation triggers ↓], [Dietary], [A], [Lifestyle; 2–4 week trial recommended],
  ),
  caption: [Treatments targeting mast cell–energy loop],
  kind: table,
) <tab:map-mast-cell>

=== Viral Reactivation and Immune Exhaustion
<sec:map-viral>

Reactivation of latent herpesvirus infections (EBV, HHV-6, CMV) in an immunocompromised state depletes immune resources, perpetuates cytokine burden, exhausts T cells, and potentially drives autoimmunity through molecular mimicry.

#figure(
  table(
    columns: (2fr, 1.2fr, 1fr, 0.8fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(245) } else { white },
    [*Treatment*], [*Mechanism of action*], [*Category*], [*Energy*], [*Evidence*],

    [Valacyclovir], [HSV/EBV antiviral; reduced reactivation burden], [Antiviral], [B/C], [Clinical, off-label; Montoya subset evidence],
    [Valganciclovir], [HHV-6/CMV antiviral; high toxicity], [Antiviral], [C], [Clinical, off-label; highest crash risk],
    [Cimetidine], [T-reg suppression + antiviral PK synergy (↑ acyclovir levels)], [Medication], [B], [Clinical],
    [Leronlimab (CCR5 block)], [Non-classical monocyte inflammatory pathway ↓], [Biologic], [C], [Trial — Phase 2 RCT _negative_; CCR5+ subset signal],
    [Pembrolizumab], [PD-1 checkpoint → exhausted T-cell restoration], [Biologic], [C], [Phase 1 (Long COVID, n=15)],
  ),
  caption: [Treatments targeting viral reactivation and immune exhaustion],
  kind: table,
) <tab:map-viral>

=== Endothelial Activation and Microclotting
<sec:map-endothelial>

Thromboinflammation, endothelial dysfunction, and microclot formation cause tissue hypoxia, cerebral hypoperfusion, and exercise intolerance. This mechanism requires an upstream inflammatory trigger; it amplifies rather than initiates disease.

#figure(
  table(
    columns: (2fr, 1.2fr, 1fr, 0.8fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(245) } else { white },
    [*Treatment*], [*Mechanism of action*], [*Category*], [*Energy*], [*Evidence*],

    [HELP apheresis], [Fibrinogen precipitation + microclot removal], [Procedure], [C], [Trial — uncontrolled retrospective, Long COVID n=31],
    [Plasma exchange (TPE)], [Microclot + mediator + autoantibody removal], [Procedure], [C], [Trial — Phase 2 RCT _negative_],
    [Sulodexide], [Endothelial glycocalyx restoration], [Medication], [B], [Experimental],
    [Statin + ARB combination], [Endothelial protection + anti-inflammatory], [Medication], [B], [Experimental],
    [Triple anticoagulant protocol], [Microclot dissolution (aspirin + clopidogrel + apixaban)], [Medication], [C], [Experimental; _high bleeding risk_; single-group origin (Pretorius/Kell); not guideline-supported; significant medicolegal exposure for prescribing clinicians],
    [Omega-3 (EPA/DHA)], [Anti-platelet aggregation; endothelial membrane protection], [Supplement], [A], [Clinical use],
  ),
  caption: [Treatments targeting endothelial activation and microclotting],
  kind: table,
) <tab:map-endothelial>

=== Dysautonomia and ANS Dysfunction
<sec:map-dysautonomia>

Orthostatic intolerance, POTS, impaired cerebral autoregulation, and parasympathetic/sympathetic imbalance perpetuate cerebral hypoperfusion and exercise intolerance. Documented in the majority of ME/CFS patients; one of the most tractable Tier 2 targets.

#figure(
  table(
    columns: (2fr, 1.2fr, 1fr, 0.8fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(245) } else { white },
    [*Treatment*], [*Mechanism of action*], [*Category*], [*Energy*], [*Evidence*],

    [Pyridostigmine (Mestinon)], [AChE inhibitor → vagal tone ↑, HR ↓], [Medication], [B], [Clinical, off-label; paradoxical worsening at high doses],
    [Fludrocortisone], [Mineralocorticoid → plasma volume expansion], [Medication], [B/C], [Clinical; potassium monitoring required],
    [Midodrine], [α1-agonist → vasoconstriction ↑], [Medication], [B/C], [Clinical],
    [Ivabradine], [HCN channel → HR reduction (POTS)], [Medication], [B], [Clinical, off-label],
    [Propranolol / metoprolol], [β-blocker for hyperadrenergic POTS], [Medication], [B], [Clinical],
    [High sodium + electrolytes], [Plasma volume loading], [Supplement], [A], [Clinical; 8–12 g sodium daily; _contraindicated in hypertension, heart failure, renal disease_],
    [Compression garments], [Venous return ↑; orthostatic pooling ↓], [Physical], [A], [Clinical],
    [Stellate ganglion block (SGB)], [Sympathetic denervation C6–C7; vasoconstriction ↓; ANS reset], [Procedure], [B], [Trial — uncontrolled case series; no RCT],
    [tVNS / taVNS], [Parasympathetic tone ↑; sympathetic ↓; HRV ↑], [Neuromodulation], [A], [RCT feasibility; ongoing RCTs],
    [Guanfacine], [α2A-AR agonism → sympathetic ↓; prefrontal cortex ↑], [Medication], [B], [Experimental; no RCT],
    [Nicotine (transdermal)], [α7-nAChR → cholinergic anti-inflammatory + ANS], [Neuromodulation], [B], [Experimental (n=4)],
    [Acupuncture], [ANS modulation; HRV ↑; NF-κB ↓], [Physical], [A/B], [Pilot RCTs; symptom-focused evidence],
    [Far-infrared sauna (Waon)], [CBF ↑; vascular function ↑; mitochondrial O₂ consumption ↑], [Physical], [A/B], [Japanese clinical series; _caution in severe dysautonomia_],
    [Cold water immersion / cryotherapy], [ANS reset; sympathetic recalibration], [Physical], [A/B], [Pilot n=32; _safety caution in POTS/dysautonomia_],
    [Taurine], [Mitochondrial membrane stabilisation; autonomic support], [Supplement], [A], [Clinical use],
    [Magnesium (glycinate/taurate)], [NMDA modulation; 300+ enzyme cofactor; ANS support], [Supplement], [A], [Clinical; moderate evidence],
  ),
  caption: [Treatments targeting dysautonomia and ANS dysfunction],
  kind: table,
) <tab:map-dysautonomia>

=== Gut Dysbiosis
<sec:map-gut>

Butyrate-producer depletion → intestinal permeability ↑ → LPS translocation → systemic and neuroinflammatory immune activation. Whether severe dysbiosis (antibiotic-induced, post-gastroenteritis) can be a trigger-capable mechanism in a subset remains an open question.

#figure(
  table(
    columns: (2fr, 1.2fr, 1fr, 0.8fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(245) } else { white },
    [*Treatment*], [*Mechanism of action*], [*Category*], [*Energy*], [*Evidence*],

    [Probiotics (Lactobacillus/Bifidobacterium)], [Microbiome modulation; barrier support], [Supplement], [A], [Clinical use],
    [Saccharomyces boulardii], [Post-antibiotic microbiome restoration], [Supplement], [A], [Clinical use],
    [Prebiotics (RS2, inulin)], [Butyrate-producer substrate; _contraindicated in SIBO_], [Supplement], [A], [Clinical use],
    [Butyrate / tributyrin], [SCFA → colonocyte fuel + enterochromaffin–vagal signal], [Supplement], [A], [Clinical; strong mechanistic rationale],
    [L-Glutamine], [Gut barrier integrity; enterocyte fuel], [Supplement], [A], [Clinical use],
    [Low-FODMAP diet], [Dysbiosis and IBS symptom management], [Dietary], [A], [Clinical; 50–60% response in IBS comorbidity],
    [Zinc (low-dose)], [Tight junction integrity; gut barrier], [Supplement], [A], [Clinical use],
    [FMT (fecal microbiota transplant)], [Microbiome reset], [Procedure], [B/C], [Experimental; no ME/CFS RCT],
  ),
  caption: [Treatments targeting gut dysbiosis],
  kind: table,
) <tab:map-gut>

=== Epigenetic Consolidation
<sec:map-epigenetic>

DNA methylation changes and histone modifications observed in ME/CFS patients may stabilise disease-promoting gene expression patterns. This is a hypothesis, not a confirmed mechanism: the observed methylation differences are cross-sectional and could reflect consequences of illness state, medication, or activity level rather than causal drivers @Trivedi2018methylation. If valid, this mechanism would help explain why some patients who partially respond to Tier 1 interventions do not fully recover. A falsifiable prediction: methylation-stratified treatment trials should show that patients with high "consolidation signatures" fail treatments that low-signature patients respond to.

#figure(
  table(
    columns: (2fr, 1.2fr, 1fr, 0.8fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(245) } else { white },
    [*Treatment*], [*Mechanism of action*], [*Category*], [*Energy*], [*Evidence*],

    [Rapamycin], [mTOR inhibition → epigenetic aging ↓; histone modifications], [Medication], [B/C], [Pilot — ~34% ITT; cross-tier mechanism],
    [Spermidine], [Histone acetylation modulation; autophagy induction], [Supplement], [A], [Experimental; pre-clinical only],
  ),
  caption: [Treatments targeting epigenetic consolidation],
  kind: table,
) <tab:map-epigenetic>

#open-question(title: [Epigenetic Consolidation: A Major Therapeutic Gap])[
Of all documented ME/CFS mechanisms, epigenetic consolidation has the fewest targeted treatment options. No approved therapy has been tested for its epigenetic effects in ME/CFS. Rapamycin and spermidine have relevant mechanisms but have not been studied in this context. The causal role of epigenetic changes in ME/CFS remains unproven — observed methylation differences @Trivedi2018methylation are cross-sectional and could be consequences rather than causes of disease. If the causal direction were confirmed, epigenetic modifiers (HDAC inhibitors, DNMT inhibitors, dietary polyamines) would become testable candidates. The key open question: are the methylation signatures observed in ME/CFS driving disease persistence, or reflecting it?
] <oq:epigenetic-gap>

== Cross-Tier and Mechanism-Agnostic Interventions
<sec:map-cross-tier>

Some interventions target multiple mechanisms simultaneously, or address disease burden independently of a specific mechanism. These are listed separately to avoid duplication across tier sections.

#figure(
  table(
    columns: (2fr, 1.5fr, 0.8fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(245) } else { white },
    [*Treatment*], [*Primary targets*], [*Energy*], [*Evidence*],

    [Pacing / energy envelope management], [Prevents Tier 2 amplification cascade; avoids PEM-driven worsening], [A], [Core clinical practice; validated by 2-day CPET @keller2024cpet],
    [Sleep optimisation (environment + schedule)], [Tiers 1+2: CNS recovery, immune regulation, ANS restoration], [A], [Clinical consensus],
    [CPAP (if OSA comorbid)], [Tier 2: sleep fragmentation ↓; dysautonomia ↓; treats comorbidity only], [A/B], [Clinical; does _not_ resolve core ME/CFS],
    [Mediterranean / anti-inflammatory diet], [Tier 2: oxidative stress ↓, gut barrier ↑, mast cell load ↓], [A], [Lifestyle; no ME/CFS RCT],
    [MCT oil], [Ketone substrate; bypasses glycolytic bottleneck], [A], [Supplement; no ME/CFS RCT],
    [Rapamycin (sirolimus)], [Tier 1 (immune brake) + Tier 2 (mitophagy, epigenetic aging ↓)], [B/C], [Pilot — ~34% ITT response],
    [GLP-1 agonists (semaglutide)], [Neuroinflammation ↓ + metabolic + vagal tone], [B/C], [Experimental; Long COVID signal],
    [LOLA (L-ornithine L-aspartate)], [Ammonia detoxification + mitochondrial substrate], [A/B], [Experimental],
    [Perrin technique (lymphatic drainage)], [Glymphatic clearance of CNS neurotoxins; ANS normalisation], [A], [Very low evidence; mechanistically plausible],
    [CA inhibitors (acetazolamide / topiramate)], [CSF volume reduction / intracranial pressure normalisation; topiramate adds TRPV1–mast cell modulation], [B/C], [IIH Class I evidence (acetazolamide); no ME/CFS trial; cognitive worsening concern @Mitchell2025drugComparison @Medow2024acetazolamideMECFS; see @sec:csf-drainage-synergy],
    [Acupuncture], [ANS, neuroinflammation, pain; see @sec:map-dysautonomia], [A/B], [Pilot RCTs],
    [Melatonin], [Sleep + antioxidant + immune modulation; start 0.5 mg — higher doses may worsen sleep], [A/B], [Clinical use],
    [B-vitamin complex (B1, B2, B6, B9, B12)], [Methylation; mitochondrial cofactors; neurotransmitter synthesis], [A], [Clinical use; MTHFR genotype relevant for B9/B12],
    [Tocilizumab (anti-IL-6R)], [Cytokine dysregulation (Tier 1/2 boundary)], [C], [Off-label; _1 case report only_],
    [Amifampridin (3,4-DAP)], [Neuromuscular junction; voltage-gated Ca²⁺ channel modulation], [B], [Experimental],
    [Graded motor imagery / mirror therapy], [Central sensitisation; pain-movement coupling (strong evidence in CRPS; no ME/CFS RCT)], [A], [High in CRPS; _absent in ME/CFS_],
  ),
  caption: [Cross-tier and mechanism-agnostic interventions],
  kind: table,
) <tab:map-cross-tier>

== Coverage Gaps and Research Priorities
<sec:mechanism-coverage-gaps>

#limitation(title: [Mechanisms Without Adequate Treatment Coverage])[
The following mechanisms have either no targeted treatments or treatments with evidence so preliminary that patients effectively have no proven options:

*Critical gap — Epigenetic consolidation (Tier 2):* No targeted therapy exists. This mechanism may explain why patients who successfully reduce Tier 1 drivers (e.g., antibody depletion via immunoadsorption) do not fully recover: the epigenetic landscape maintains the disease state. Until epigenetic-targeted treatments enter ME/CFS trials, this represents the largest single therapeutic blind spot.

*Significant gap — Metabolic safe mode lock (Tier 1):* MDC002 is the only treatment targeting this mechanism specifically. The itaconate shunt and IDO-driven tryptophan diversion have no approved pharmacological antagonists in clinical use for ME/CFS.

*Significant gap — TRPM3 channelopathy (Tier 1):* Only two interventions listed (LDN and pregnenolone sulfate). The channelopathy affects NK cells, neurons, vascular smooth muscle, and pancreatic beta cells simultaneously; a single treatment targeting only one tissue will likely be insufficient.

*Emerging gap — Neuromodulation:* tVNS is the most clinically advanced non-pharmacological neuromodulation approach, but rTMS, tDCS, and photobiomodulation all lack sham-controlled ME/CFS RCTs. These are low-risk, non-invasive interventions that are under-investigated relative to their mechanistic rationale.
]

#direction(title: [Highest-Priority Treatment Research Directions])[
Based on the coverage analysis above, the following research directions offer the greatest potential for therapeutic advance:

1. *Epigenetic modifier trials:* Investigate epigenetic reprogramming agents (safe HDAC modulators, dietary compounds such as spermidine) in ME/CFS patients with confirmed epigenetic signatures
2. *TRPM3 agonist trials:* Controlled trial of pregnenolone sulfate as a direct TRPM3 agonist, stratified by TRPM3 function assay (patch-clamp NK cell assessment)
3. *tVNS RCT in ME/CFS:* Escalate from Long COVID feasibility data to a dedicated ME/CFS sham-controlled RCT targeting both ANS and neuroinflammatory outcomes
4. *rTMS with adapted protocol:* Sham-controlled RCT addressing the retention challenge identified in the 2025 Corlier pilot (home-based or reduced session frequency design)
5. *Rapamycin biomarker-stratified trial:* Enrich for mTOR-activation signature or epigenetic aging score to identify the responder subpopulation within the ~34% ITT signal
6. *Combination Tier 1 targeting:* Assess whether simultaneous targeting of two Tier 1 mechanisms (e.g., immunoadsorption + LDN for GPCR + TRPM3) produces additive benefit
]
