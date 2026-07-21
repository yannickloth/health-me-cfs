#import "../shared/environments.typ": *

// ch30: Mechanistic Cascade Tracing — From Trigger to Terminal Consequence
// Origin: Gerlier skeletal asymmetry hypothesis (2026-07-21) prompted tracing
// of ALL major hypotheses.

= Mechanistic Cascade Tracing: From Hypothesis to Clinical Probe
<ch:mechanistic-cascade-tracing>

#chapter-abstract[
For every major mechanistic hypothesis in the ME/CFS paper, this chapter traces the full downstream cascade from the proposed trigger to its terminal neurochemical, metabolic, and immunological consequences. At each node: (1) which existing medications could intercept, (2) the expected clinical effect if that node is rate-limiting, and (3) the expected clinical effect if that node is NOT rate-limiting — i.e., what a null response tells you about where the bottleneck really is.

*How to use this chapter:* Look up a hypothesis, follow the cascade from trigger to symptom, note which medication at which node provides the most specific diagnostic information. Each node's null response pushes the bottleneck downstream. A pattern of responses across multiple nodes localizes the lesion.

*Structure:* Each hypothesis is presented in three parts: (a) a cascade diagram in text form (trigger $arrow.r$ step1 $arrow.r$ step2 $arrow.r$ ... $arrow.r$ symptom), (b) at each step, the drug(s) that could intercept, and (c) the differential diagnostic logic: "if drug X works, the lesion is at or above step N; if it doesn't, the lesion is below step N."

*Disclaimer:* This chapter is a constructed mechanistic framework prompted by the Gerlier skeletal asymmetry hypothesis (2026-07-21, personal communication) and extended to all major hypotheses in the paper. Drug-response logic throughout is mechanistic inference — not clinical evidence. No medication listed here should be prescribed based on this chapter alone. Certainty values are the chapter author's assessment based on the supporting evidence for each cascade link. Where not explicitly stated, default certainties apply: 0.25--0.40 for mechanistic-inference content, 0.10 for the Gerlier model (per the paper). Each section closes with a *Consequence* line summarizing practical significance and an *Origin* line identifying provenance.
]

*Abbreviations used throughout:* AAb (autoantibody), AIMM (acquired ischemic mitochondrial myopathy), ATP (adenosine triphosphate), CAP (cholinergic anti-inflammatory pathway), CCI (craniocervical instability), COX-2 (cyclooxygenase-2), CSF (cerebrospinal fluid), DBH (dopamine-beta-hydroxylase), DMF (dimethyl fumarate), DMV (dorsal motor nucleus of vagus), DORA (dual orexin receptor antagonist), ECM (extracellular matrix), ETC (electron transport chain), GPCR (G protein-coupled receptor), hEDS (hypermobile Ehlers-Danlos syndrome), HIF-1α (hypoxia-inducible factor 1 alpha), HRV (heart rate variability), IA (immunoadsorption), IDO (indoleamine 2,3-dioxygenase), IFN-γ (interferon gamma), LDN (low-dose naltrexone), LC-NE (locus coeruleus-norepinephrine), MCAS (mast cell activation syndrome), MMP (matrix metalloproteinase), mTORC1 (mechanistic target of rapamycin complex 1), NAD⁺ (nicotinamide adenine dinucleotide), NCX1 (Na⁺/Ca²⁺ exchanger 1), NE (norepinephrine), NHE1 (Na⁺/H⁺ exchanger 1), NK cell (natural killer cell), NMDA (N-methyl-D-aspartate), NRI (norepinephrine reuptake inhibitor), NTS (nucleus tractus solitarius), OXPHOS (oxidative phosphorylation), PDH (pyruvate dehydrogenase), PDK (pyruvate dehydrogenase kinase), PEM (post-exertional malaise), PFC (prefrontal cortex), PGE2 (prostaglandin E2), PIP2 (phosphatidylinositol 4,5-bisphosphate), PLC-β (phospholipase C beta), POTS (postural orthostatic tachycardia syndrome), ROS (reactive oxygen species), SA node (sinoatrial node), SC (supercomplex), TCA (tricarboxylic acid cycle), TDO (tryptophan 2,3-dioxygenase), TLR4 (Toll-like receptor 4), taVNS (transcutaneous auricular vagus nerve stimulation), VEGF (vascular endothelial growth factor), VLM (ventrolateral medulla), VMAT2 (vesicular monoamine transporter 2).

== Ion Channel Hypotheses

=== TRPM3 Channelopathy
<sec:trpm3-cascade>

*Certainty: 0.55.* The TRPM3 calcium channel defect is the most replicated ion channel finding in ME/CFS (six independent cohorts, @Cabanas2021). The cascade traces PIP2-dependent gating failure through to multi-system consequences.

==== Cascade: PIP2 depletion (GPCR AAb → PLC-β hydrolysis) → TRPM3 calcium influx failure → NK cell cytotoxicity loss, neurotransmitter release impairment, vascular smooth muscle calcium dysregulation → immune dysfunction, fatigue, brain fog, orthostatic intolerance

*Step A1:* PIP2 depletion (membrane-level trigger)
- *Intercept:* Lithium (low-dose, 2--20 mg elemental) — inhibits IMPase, conserves PIP2 @spec:low-dose-lithium
- *If lithium works:* PIP2 depletion is rate-limiting. The lesion is at or above membrane phospholipid regulation. GPCR autoantibody-driven PLC activity is likely the upstream driver.
- *If lithium does NOT work:* PIP2 depletion is not the bottleneck. Either (a) PIP2 levels are normal, (b) TRPM3 has additional defects beyond PIP2-dependence, or (c) the lesion is downstream of PIP2 availability.

*Step A2:* TRPM3 calcium influx failure (channel-level defect)
- *Intercept:* Pregnenolone sulfate — positive allosteric TRPM3 modulator @spec:pregnenolone-ldn-synergy; Naltrexone (LDN, 1--4.5 mg) — in vitro TRPM3 restoration @Cabanas2021
- *If LDN or pregnenolone works:* TRPM3 dysfunction is rate-limiting. The lesion is at the channel level (primary channelopathy) or just above (PIP2-dependent gating failure).
- *If LDN/pregnenolone does NOT work:* TRPM3 ion channel dysfunction is either (a) absent in this patient, (b) present but not LDN-responsive (direct channel-blocking autoantibodies), or (c) not rate-limiting — other channel defects dominate.

*Step A3:* NK cell cytotoxicity loss (immune consequence)
- *Intercept:* Immunoadsorption — removes GPCR autoantibodies upstream; IVIG — broad immunomodulation; Cimetidine — enhances T-cell function (bypasses NK pathway)
- *If cimetidine works but LDN does NOT:* The immune dysfunction node is at T-cell level, not NK/TRPM3-dependent.
- *If IVIG works:* Autoantibody-mediated pathology (upstream of TRPM3) is likely dominant. The channelopathy is secondary.
- *If both IVIG and LDN work:* Both upstream (autoantibody) and downstream (channel) interventions are effective. Priority: treat the autoantibody source for root cause, LDN for symptomatic channel support.

*Step A4:* Neurotransmitter release impairment (neurochemical consequence)
- *Intercept:* Pyridostigmine (Mestinon, 30--60 mg) — enhances cholinergic signaling, bypassing calcium-dependent vesicle release; Atomoxetine — NRI
- *If pyridostigmine works:* Calcium-dependent neurotransmitter release at autonomic ganglia is impaired. The lesion is at the synapse.
- *If pyridostigmine does NOT work and LDN works:* TRPM3 dysfunction exists but the bottleneck is upstream of cholinergic transmission — LDN benefit is through neuroinflammation (TLR4) or immune-cell TRPM3, not synaptic TRPM3.

*Step A5:* Vascular smooth muscle calcium dysregulation (orthostatic consequence)
- *Intercept:* Midodrine (α1 agonist, 2.5--10 mg) — directly constricts vasculature, bypassing Ca²⁺-dependent regulation; Ivabradine — slows HR without Ca²⁺ dependence
- *If midodrine works:* Vasculature is responsive but lacks adequate sympathetic drive. Either sympathetic output is low (CNS catecholamine deficiency) or vascular calcium handling is impaired.
- *If midodrine works AND LDN works:* Both calcium-handling (TRPM3) and vascular tone are abnormal. Consistent with multi-channel dysfunction from PIP2 depletion.
- *If midodrine does NOT work:* The vasculature is unresponsive even to direct α1 stimulation. Severe endothelial dysfunction or hypovolemic orthostatic intolerance.

*Consequence:* LDN response combined with channel-level probes (pregnenolone, lithium) localizes the lesion relative to PIP2, TRPM3, or downstream calcium-dependent effectors.
*Origin:* mechanistic-pathway-tracing, Gerlier 2026-07-21 prompt.

=== TRPV1-Mediated Arteriolar Vasoconstriction (PEM-Driven Pain/Ischemia)
<sec:trpv1-cascade>

*Certainty: 0.50.* TRPV1 is functionally expressed on skeletal muscle arteriolar smooth muscle (Cavanaugh 2011); COX-2/PGE2 amplification loop well-established in pain biology. Direct ME/CFS measurement pending.

==== Cascade: Triggers (exercise/ROS/protons/heat) → TRPV1 activation on skeletal muscle arteriolar smooth muscle → vasoconstriction → tissue ischemia → metabolite accumulation → further TRPV1 sensitization → pain, PEM

*Step B1:* TRPV1 activation on arteriolar smooth muscle
- *Intercept:* NEO6860 (selective TRPV1 antagonist, Phase I/II); Capsaicin (topical, 0.025--0.075%) — desensitizes TRPV1 terminals
- *If capsaicin/NEO6860 works (reduces PEM/pain):* TRPV1-driven arteriolar vasoconstriction is a causal PEM mechanism.
- *If capsaicin/NEO6860 does NOT work:* TRPV1-mediated vasoconstriction is not rate-limiting. Other vasoconstrictive mediators (angiotensin II, endothelin-1) may dominate, or ischemia is from pre-capillary obstruction (microclots, RBC stiffness).

*Step B2:* COX-2/PGE2 amplification (feed-forward loop)
- *Intercept:* Celecoxib (COX-2 inhibitor, 100--200 mg/day); Etoricoxib (30--60 mg/day); LDN — suppresses microglial TRPV1 signaling via TLR4
- *If celecoxib works:* The PGE2 → TRPV1 sensitization loop is driving symptoms. Lesion is at COX-2 amplification.
- *If celecoxib does NOT work:* PGE2-TRPV1 loop is not dominant. COX-2 blockade may worsen resolution failure (blocks SPM synthesis, @sec:um-resolution).

*Step B3:* Ischemia-induced metabolite accumulation (lactate, ROS, protons)
- *Intercept:* Pyridostigmine — increases tissue perfusion; CoQ10 — mitochondrial support, reduces ROS; NAC — glutathione precursor
- *If pyridostigmine works AND capsaicin works:* Both vascular tone and perfusion are abnormal — multi-level vascular dysfunction.
- *If CoQ10/NAC works but capsaicin does NOT:* The lesion is mitochondrial ROS production excess, not TRPV1-driven vasoconstriction.

*Consequence:* TRPV1 antagonism or COX-2 inhibition probes whether PEM pain is vasoconstrictive (TRPV1-driven) or metabolic (ROS-driven). NEO6860 response would validate arteriolar TRPV1 as a causal PEM mechanism.
*Origin:* mechanistic-pathway-tracing.

=== Piezo2 Mechanosensitive Channel Dysfunction in hEDS Overlap
<sec:piezo2-cascade>

*Certainty: 0.30.* Piezo1/Piezo2 are established mechanosensitive channels; their role in ME/CFS hEDS overlap is mechanistically inferred. Not directly measured in ME/CFS.

==== Cascade: Connective tissue laxity (hEDS) → abnormal mechanical forces on sensory neurons, mast cells, and vascular endothelium → Piezo2/Piezo1 overactivation → pathologically elevated mechanosensitive calcium influx → proprioceptive degradation, chronic mast cell degranulation, impaired endothelial mechanotransduction → fatigue, positional pain, orthostatic intolerance, brain fog

*Step C1:* Piezo2 overactivation on sensory neurons (proprioceptive degradation)
- *Intercept:* Physical therapy (cervical stabilization, joint bracing) — reduces mechanical forces; Low-dose amitriptyline (5--10 mg) — NMDA antagonism downstream
- *If bracing/stabilization works:* Piezo2-driven proprioceptive degradation is causally contributing. Mechanical forces — not spontaneous channel dysfunction — drive symptoms.
- *If bracing does NOT work:* Piezo2 dysfunction persists even without mechanical input, or proprioceptive degradation is central (cerebellar, cingulate), not peripheral.

*Step C2:* Piezo1/Piezo2 overactivation on mast cells (mechanically-driven degranulation)
- *Intercept:* Ketotifen (1--2 mg BID) — mast cell stabilizer; Cromolyn (100--200 mg QID); LDN — TLR4 antagonism
- *If ketotifen/cromolyn works:* Mast cell degranulation is occurring. Does not distinguish Piezo-driven from IgE-driven.
- *Differential logic with bracing:* If bracing works AND ketotifen works → Piezo2-driven mast cell degranulation. If bracing works but ketotifen does NOT → mechanosensitive sensory neuron activation, not mast cells.

*Step C3:* Piezo1 on vascular endothelium (impaired NO bioavailability)
- *Intercept:* Midodrine (α1 agonist); Fludrocortisone — volume expansion
- *If fludrocortisone works better than midodrine:* Vascular lesion is likely hypovolemic, not endothelial.
- *If midodrine works but fludrocortisone does NOT:* Vasomotor failure (endothelial NO deficiency from Piezo1 dysfunction) is dominant.

*Consequence:* Bracing response combined with ketotifen distinguishes mechanosensitive from IgE-mediated mast cell activation. If bracing works alone, Piezo2-driven proprioceptive degradation is rate-limiting — treat with mechanical stabilization.
*Origin:* mechanistic-pathway-tracing.

=== Ion Channel Convergence: PIP2 Depletion Model
<sec:ion-channel-convergence>

*Certainty: 0.35.* PIP2 convergence derived from TRPM3/PIP2 co-localization (Eaton-Fitch 2021) and GPCR autoantibody-driven PLC hyperactivity. Multi-channel simultaneous measurement not yet performed in ME/CFS.

==== Cascade: GPCR autoantibody (β2-AR, M2/M4) → persistent PLC-β activation → PIP2 hydrolysis → simultaneous loss of PIP2-dependent channel function (TRPM3, TRPM7, TRPV1, TRPC) → multi-channel convergence on calcium dysregulation → multi-system dysfunction

This convergence hypothesis makes a specific differential prediction: if GPCR autoantibodies drive PIP2 depletion, then immunoadsorption should restore TRPM3 function, reduce TRPV1 sensitization, and improve Piezo2-driven symptoms simultaneously — because all three channels depend on PIP2.

- *Intercept:* Immunoadsorption — removes GPCR autoantibodies; BC007 — neutralizes GPCR autoantibodies
- *If immunoadsorption works AND improves all channel-dependent symptoms:* PIP2 convergence model is supported. Root cause is GPCR autoantibodies; ion channel dysfunction is secondary.
- *If immunoadsorption works but only improves ONE symptom domain:* Channels have independent dysfunction mechanisms — not PIP2-dependent convergence.
- *If immunoadsorption does NOT work:* GPCR autoantibodies are either absent, non-pathogenic, or not upstream of channel dysfunction.

*Consequence:* The strongest test of PIP2 convergence: if immunoadsorption simultaneously improves TRPM3, TRPV1, and Piezo2-dependent symptoms, GPCR AAb→PIP2 depletion is the shared upstream mechanism. Otherwise, independent channel dysfunction requires channel-specific treatment.
*Origin:* mechanistic-pathway-tracing.

== Mitochondrial Hypotheses

=== WASF3-Mediated Supercomplex Disruption
<sec:wasf3-cascade>

*Certainty: 0.35.* WASF3 supercomplex disruption documented in cell models (@wang2023wasf3); HIF-1α-driven WASF3 upregulation is mechanistic inference. No interventions tested in ME/CFS.

==== Cascade: WASF3 upregulation (HIF-1α-driven, genetic vulnerability) → mitochondrial respiratory supercomplex (SC I/III/IV) assembly failure → ETC inefficiency → reduced OXPHOS ATP yield → energy deficit → fatigue, PEM

*Step D1:* WASF3 upregulation (genetic trigger → protein expression)
- *Intercept:* Dimethyl fumarate (DMF) — inhibits HIF-1α via NRF2 activation, may reduce WASF3 expression (mechanism: HIF-1α inhibition via NRF2, ch14d)
- *If DMF works:* HIF-1α-driven WASF3 upregulation is present and rate-limiting.
- *If DMF does NOT work:* WASF3 upregulation is driven by non-HIF-1α mechanisms (genetic, epigenetic) or not the dominant bottleneck.

*Step D2:* Respiratory supercomplex assembly failure (structural mitochondrial defect)
- *Intercept:* CoQ10/NADH — bypasses SC inefficiency; L-carnitine — enhances fatty acid oxidation
- *If CoQ10 works dramatically:* SC disruption may be partial — CoQ10 flooding increases electron flux through remaining functional units.
- *If CoQ10 produces only modest benefit:* SC disruption is severe — substrate flooding cannot overcome the assembly defect. Mitochondria need turnover, not cofactor supplementation.

*Step D3:* Reduced OXPHOS ATP yield (bioenergetic consequence)
- *Intercept:* Creatine monohydrate (5 g/day) — phosphocreatine buffer; D-ribose (5--15 g/day); NMN/NR (NAD⁺ precursors)
- *If creatine works:* ATP buffering is insufficient — consistent with reduced steady-state ATP production.
- *If NMN/NR works:* NAD⁺ deficiency is compounding the ETC defect (dual mitochondrial lesion).

*Consequence:* CoQ10 response pattern (dramatic vs. modest) distinguishes functional ETC inefficiency (cofactor-compensable) from structural supercomplex failure (requiring turnover). Combined with DMF response, identifies whether HIF-1α→WASF3 is the transcriptional driver.
*Origin:* mechanistic-pathway-tracing.

=== PDH Inhibition / Pyruvate Dehydrogenase
<sec:pdh-cascade>

*Certainty: 0.40.* PDK-driven PDH inhibition is mechanistically well-grounded in cytokine biology; no direct ME/CFS PDH activity measurement. DCA is investigational.

==== Cascade: PDK upregulation (inflammatory cytokines → PDK1/PDK4 activation) → PDH phosphorylation → pyruvate entry blocked from TCA cycle → glycolytic-ETC uncoupling → lactate accumulation, reduced ATP yield (~83% gated ATP lost) → PEM, anaerobic muscle metabolism at low workload

*Step E1:* PDK upregulation (inflammatory trigger)
- *Intercept:* LDN — anti-neuroinflammatory, reduces cytokine drive; Fluvoxamine — σ1R agonism, reduces inflammatory signaling @sec:sigma1-fluvoxamine
- *If LDN works (reduces lactate, improves AT):* Inflammatory PDK activation is present and driving the metabolic shift.

*Step E2:* PDH phosphorylation (enzymatic block)
- *Intercept:* Dichloroacetate (DCA, investigational) — PDK inhibitor; Thiamine (B1, 100--300 mg/day) — PDH cofactor; Alpha-lipoic acid
- *If thiamine works:* PDH cofactor deficiency. Simple, reversible, nutritional.

*Step E3:* Lactate accumulation / anaerobic shift
- *Intercept:* Mestinon (pyridostigmine) — improves tissue perfusion; Midodrine — improves perfusion pressure
- *If mestinon reduces AT-level lactate:* The anaerobic shift is perfusion-driven, not PDH-driven.

*Consequence:* Mestinon vs. thiamine/DCA response distinguishes perfusion-driven (oxygen delivery) from enzyme-driven (PDH block) anaerobic shift.
*Origin:* mechanistic-pathway-tracing.

=== Acquired Ischemic Mitochondrial Myopathy (AIMM) / Na⁺-Ca²⁺ Cascade
<sec:aimm-cascade>

*Certainty: 0.40.* NHE1→NCX1→mitochondrial Ca²⁺ overload cascade documented in ischemia-reperfusion; AIMM framing from Scheibenbogen and Wirth. MDC002 investigational.

==== Cascade: Capillary hypoperfusion (endothelial dysfunction, microclots, RBC stiffness) → ischemia/reperfusion → anaerobic metabolism → intracellular Na⁺ overload → NHE1 activation → Na⁺/Ca²⁺ exchanger (NCX1) reverse mode → mitochondrial Ca²⁺ overload → mitochondrial structural damage → fatigue, PEM

*Step F1:* Capillary hypoperfusion (vascular trigger)
- *Intercept:* Pyridostigmine — enhances preload and cardiac output @Joseph2022pyridostigmine; Midodrine — increases perfusion pressure; Compression garments
- *If pyridostigmine works (improves VO₂peak):* Preload/cardiac output failure is rate-limiting. The lesion is at the delivery level (Step 1 of energy chain).

*Step F2:* Intracellular Na⁺ overload (ionic consequence)
- *Intercept:* MDC002/Mitodicure (investigational) — targets NHE1 + NCLX @sec:mdc002
- *If MDC002 works in trials (hypothetical):* The Na⁺-Ca²⁺ cascade is causally driving mitochondrial damage.

*Step F3:* Mitochondrial structural damage (acquired myopathy)
- *Intercept:* CoQ10 + L-carnitine; Rapamycin — enhances mitophagy; Urolithin A
- *If rapamycin works:* Damaged mitochondria accumulate and their clearance is impaired (mTORC1-driven autophagy block).
- *If CoQ10 works but rapamycin does NOT:* Mitochondrial damage is functional, not structural.

*Consequence:* Pyridostigmine response tells you the lesion is at the delivery level. Rapamycin response tells you damaged mitochondria have accumulated. Combined, they distinguish vascular-triggered AIMM from mitophagy-deficient AIMM.
*Origin:* mechanistic-pathway-tracing.

=== NAD⁺ Depletion / Metabolic Trap
<sec:nad-cascade>

*Certainty: 0.40.* Tryptophan→NAD⁺ pathway established biochemistry; IDO-driven diversion documented in ME/CFS. NMN/NR not studied in ME/CFS controlled trials.

==== Cascade: IDO/TDO activation (IFN-γ, inflammation) → tryptophan → kynurenine diversion → reduced NAD⁺ synthesis from tryptophan → NAD⁺/NADH ratio decline → sirtuin inhibition, PARP activation, impaired mitochondrial function → fatigue, neuroinflammation

*Step G1:* IDO/TDO activation
- *Intercept:* LDN — reduces microglial IFN-γ drive; Anti-inflammatory interventions (celecoxib, ketotifen)

*Step G2:* NAD⁺ synthesis reduction
- *Intercept:* NMN/NR (250--1000 mg/day); Niacin/Nicotinamide
- *If NMN/NR works:* NAD⁺ deficiency is rate-limiting. Precursor bypasses the tryptophan diversion bottleneck.
- *If NMN/NR does NOT work:* NAD⁺ is not rate-limiting. Consumption excess (PARP, CD38) or downstream ETC failure.

*Step G3:* Sirtuin inhibition / PARP activation
- *Intercept:* Resveratrol (sirtuin activator); NMN/NR; Quercetin (senolytic)
- *If resveratrol works:* Sirtuin signaling is the critical NAD⁺-dependent pathway.

*Consequence:* NMN/NR response distinguishes NAD⁺ synthesis failure from consumption excess. Precursor supplementation only helps if synthesis is the bottleneck.
*Origin:* mechanistic-pathway-tracing.

=== Metabolic Trap: IDO-Kynurenine Pathway
<sec:kynurenine-cascade>

*Certainty: 0.45.* IDO-driven kynurenine pathway dysregulation documented in ME/CFS; tryptophan→serotonin depletion and quinolinic acid→NMDA excitotoxicity mechanistically established.

==== Cascade: Immune activation (IFN-γ, TNF-α) → IDO upregulation → tryptophan → kynurenine → (a) 95--99%: tryptophan diversion → serotonin depletion → mood, sleep, pain amplification + (b) quinolinic acid → NMDA agonism → excitotoxicity, neuroinflammation, cognitive dysfunction + (c) kynurenic acid vs quinolinic acid imbalance → glutamatergic disruption

*Step H1:* IDO upregulation
- *Intercept:* LDN — microglial anti-inflammatory; 1-MT (investigational) — IDO inhibitor

*Step H2a:* Serotonin depletion (~80% reduction in serotonin-available tryptophan)
- *Intercept:* 5-HTP (50--200 mg); Tryptophan (controversial); SSRIs (variable; harm in POTS @mar2014ssripots)
- *If 5-HTP works:* Serotonin depletion is present and rate-limiting.
- *WARNING:* SSRI response heterogeneous; POTS patients may worsen hemodynamically @mar2014ssripots.

*Step H2b:* Quinolinic acid → NMDA excitotoxicity
- *Intercept:* Memantine (5--20 mg); Low-dose amitriptyline (5--10 mg); Ketamine (investigational); Riluzole
- *If memantine works:* NMDA-mediated excitotoxicity is present and rate-limiting. Consistent with two-hit glutamatergic model (@spec:glutamatergic-autonomic-bridge).

*Step H2c:* Kynurenic acid:quinolinic acid imbalance
- *Intercept:* No direct kynurenic acid modulator. Indirect: LDN, CoQ10, NAC
- *Differential logic:* If memantine works better than LDN → excitotoxicity dominates. If LDN works better than memantine → neuroinflammation dominates.

*Consequence:* Memantine vs. LDN head-to-head distinguishes NMDA excitotoxicity (quinolinic acid) from neuroinflammation (microglial). The arm that responds tells you which kynurenine metabolite is driving symptoms.
*Origin:* mechanistic-pathway-tracing.

== Autoimmune Hypotheses

=== GPCR Autoantibody Cascade (β2-AR, M2/M4 mAChR)
<sec:gpcr-cascade>

*Certainty: 0.55.* GPCR autoantibodies documented across ME/CFS, POTS, and Long COVID. Functional pathogenicity confirmed by bioassay and animal passive transfer. Germain 2025 null by Luminex raises assay-sensitivity question.

==== Cascade: Triggering infection → B cell activation → cross-reactive GPCR autoantibody production → (a) β2-AR desensitization/internalization → vasodilation failure, impaired lipolysis, mast cell brake removal → orthostatic intolerance, fatigue; (b) M2/M4 mAChR blockade → impaired vagal signaling → reduced HRV, GI dysmotility, chronotropic incompetence; (c) α1-AR agonism → vasoconstriction with counter-regulatory fatigue → POTS, hypertension; (d) Area postrema access → NTS baroreflex reset → compensatory sympathetic overactivation

*Step I1:* GPCR autoantibody production (B-cell level)
- *Intercept:* Rituximab — B-cell depletion (CD20+); Daratumumab — plasma cell depletion (CD38+); Immunoadsorption — removes circulating AAb; BC007 — neutralizes GPCR AAb
- *If rituximab works:* B-cell-driven autoantibody production is pathogenic. If response is transient → confirms B-cell source but plasma cells drive chronicity.
- *If immunoadsorption/BC007 works but rituximab does NOT:* Autoantibodies are pathogenic but produced by CD20- long-lived plasma cells.
- *If none of these works:* GPCR autoantibodies are either absent, non-pathogenic, or not rate-limiting. See Germain 2025 @Germain2025autoantibody for assay discordance.

*Step I2:* β2-AR desensitization (receptor-level)
- *Intercept:* Ketotifen — stabilizes mast cells, compensating for β2-AR brake removal; MDC002 — may restore β2-AR sensitivity
- *If ketotifen works:* Mast cell hyperactivation from β2-AR desensitization is dominant.

*Step I3:* NTS baroreflex reset (brainstem consequence)
- *Intercept:* Pyridostigmine — enhances remaining vagal/baroreflex tone; Midodrine — direct vasoconstriction; Ivabradine — slows HR
- *If ivabradine works:* Inappropriate sympathetic overactivation from baroreflex reset produces symptomatic tachycardia.

*Step I4:* Cholinergic anti-inflammatory pathway (CAP) blockade
- *Intercept:* taVNS — activates vagal afferents; Nicotine (transdermal) — α7nAChR agonist
- *If taVNS works:* CAP is intact. Lesion is upstream of efferent CAP.
- *If taVNS does NOT work:* CAP effector arm is blocked. Per @spec:cap-autoantibody-blockade: β2-AR AAb on splenic T cells block cholinergic signal transduction.
- *Key differential:* If taVNS fails and immunoadsorption succeeds → CAP blockade is GPCR-AAb-mediated.

*Consequence:* Four pharmacologically distinguishable arms: B-cell source (rituximab), effector β2-AR (ketotifen), NTS baroreflex (pyridostigmine vs. ivabradine), CAP (taVNS pre/post IA). Pattern across these four probes localizes which GPCR AAb target is dominant.
*Origin:* mechanistic-pathway-tracing.

=== ECM1 Autoantibody / Connective Tissue Autoimmunity
<sec:ecm-autoantibody-cascade>

*Certainty: 0.25.* Anti-ECM1 autoantibodies documented in ME/CFS (limited evidence). No clinical trial of ECM-targeting interventions in ME/CFS.

==== Cascade: Autoantibodies against ECM proteins (collagen, periostin, elastin) → impaired collagen crosslinking, elastin degradation, abnormal ECM remodeling → connective tissue weakness → hypermobility, craniocervical instability, vascular fragility, impaired tissue repair

*Step J2:* Impaired collagen crosslinking (ECM-level)
- *Intercept:* Vitamin C (500--2000 mg/day) — prolyl hydroxylase cofactor; Copper — LOX cofactor; Glycine + proline — collagen substrate; Circadian-timed (prolyl hydroxylase circadian optimization model, ch14a)
- *If timed vitamin C + glycine works:* Collagen crosslinking is impaired but biosynthetically rescuable.

*Step J3:* ECM degradation (MMP-driven)
- *Intercept:* Doxycycline (low-dose, 20 mg BID) — MMP-9 inhibitor; Ketotifen — reduces mast cell tryptase→MMP; DMF — reduces HIF-1α-driven MMP-3

*Consequence:* Doxycycline (MMP-9 inhibitor) combined with DMF (HIF-1α inhibitor) distinguishes mast-cell-driven from hypoxic-transcriptional ECM degradation.
*Origin:* mechanistic-pathway-tracing.

== Neuroinflammatory Hypotheses

=== Microglial Priming Cascade
<sec:microglial-cascade>

*Certainty: 0.50.* Microglial activation in ME/CFS supported by TSPO-PET evidence and LDN response patterns. Four downstream arms are mechanistically distinct.

==== Cascade: Triggering infection → microglial priming (TLR4, DAMP, epigenetic) → primed microglia → chronic low-grade IL-1β, TNF-α, PGE2 → (a) hypothalamic → orexin suppression → fatigue, unrefreshing sleep; (b) basal ganglia → dopamine impairment → anhedonia, effort-allocation deficit; (c) brainstem → NTS/VLM dysfunction → autonomic instability; (d) prefrontal cortex → cognitive dysfunction, brain fog

*Step K1:* Microglial TLR4/P2X7/DAMP activation
- *Intercept:* LDN — TLR4 antagonist; Minocycline — microglial inhibitor; PEA — PPAR-α agonist; Luteolin/quercetin
- *If LDN works:* TLR4-mediated microglial activation is rate-limiting (per ch24 LDN differential).
- *If minocycline works but LDN does NOT:* Microglial activation through non-TLR4 pathways (P2X7, C5aR, IFN-γR).

*Step K2a:* Hypothalamic inflammation → orexin neuron suppression
- *Intercept:* OX2R agonists (danavorexton, TAK-861/oveporexton); Pitolisant — H3 antagonist
- *If OX2R agonist works (hypothetical):* Orexin neuron suppression is the specific bottleneck. Receptors are intact — orexin deficiency is functional (cytokine-suppression), not structural.

*Step K2b:* Basal ganglia → dopamine synthesis/transport impairment
- *Intercept:* Aripiprazole (low-dose, 0.25--2 mg) — D2/D3 partial agonist; Methylphenidate — DAT/NET inhibitor; Bupropion
- *If aripiprazole works:* Dopaminergic dysfunction in basal ganglia/PFC is rate-limiting. Lesion is at D2/D3 receptor signaling.
- *If aripiprazole does NOT work:* Dopamine signaling is not the bottleneck. Selective noradrenergic defect (@ach:catecholamine-deficit) may spare dopaminergic neurons; or TPJ dysfunction (@ach:tpj-dysfunction) is upstream of dopamine.
- *Critical differential:* If aripiprazole works → lesion at or above dopamine signaling. If aripiprazole fails → lesion BELOW D2/D3 (VMAT2, ATP-dependent release, or downstream circuits).

*Step K2d:* Prefrontal cortex → cognitive dysfunction
- *Intercept:* Guanfacine — α2A agonist, enhances PFC connectivity; Memantine — NMDA antagonist; Low-dose amitriptyline
- *If guanfacine works:* PFC noradrenergic deficit (@ach:catecholamine-deficit) is the cognitive bottleneck.
- *If both guanfacine AND memantine work:* Dual NE/glutamate PFC dysfunction — may reflect two-hit model (@spec:glutamatergic-autonomic-bridge).

*Consequence:* The microglial cascade has four pharmacologically distinguishable arms: orexin (OX2R agonists), dopamine (aripiprazole), autonomic (pyridostigmine/midodrine), and cognition (guanfacine/memantine). LDN response tells you microglia are primed; which downstream medication works tells you which brain region bears the neuroinflammatory consequence.
*Origin:* mechanistic-pathway-tracing.

=== Brainstem Neuroinflammation Cascade
<sec:brainstem-cascade>

*Certainty: 0.40.* Brainstem neuroinflammation hypothesized from TSPO-PET data, GPCR AAb area postrema access models, and autonomic symptom convergence. No direct medullary histopathology in ME/CFS.

==== Cascade: GPCR AAb / viral components access area postrema → brainstem microglial activation → dorsolateral medulla (NTS, VLM, DMV) inflammation → (a) baroreflex impairment → compensatory sympathetic overactivation; (b) vagal efferent dysfunction → reduced HRV; (c) respiratory chemoreflex dysfunction; (d) ascending LC-NE dysfunction

*Step L1:* Brainstem microglial activation
- *Intercept:* Same as Step K1. Brainstem microglia may be less accessible to peripheral drugs.
- *If minocycline works but LDN does NOT:* Brainstem neuroinflammation present but TLR4-independent.

*Step L2b:* Vagal efferent dysfunction → reduced HRV
- *Intercept:* Pyridostigmine — enhances vagal tone; taVNS
- *If pyridostigmine does NOT improve HRV:* Vagal efferent pathway non-functional — either severe DMV damage, ganglionic AChR autoantibodies (@spec:ganglionic-achr-mecfs), or vagal nerve structural damage.

*Consequence:* LDN response distinguishes inflammatory (baroreflex) from structural medullary pathology. Combined with ganglionic AChR testing, identifies whether vagal lesion is brainstem (LDN-responsive) or ganglionic (immune-responsive).
*Origin:* mechanistic-pathway-tracing.

=== Glymphatic Failure Cascade
<sec:glymphatic-cascade>

*Certainty: 0.45.* Glymphatic dysfunction supported by ME/CFS alpha-delta sleep data and LC-NE vasomotion coupling models. No direct CSF flow measurement in ME/CFS.

==== Cascade: Alpha-delta sleep / impaired LC-NE vasomotion coupling → glymphatic CSF clearance failure → interstitial waste accumulation (amyloid, tau, quinolinic acid, ECM fragments) → neuroinflammation + cognitive dysfunction + "toxic" morning headache

*Step M1:* LC-NE vasomotion coupling failure (glymphatic pump)
- *Intercept:* Melatonin (0.5--3 mg at bedtime); LDN (at bedtime); Prazosin (α1 antagonist — hypotension risk in POTS)

*Step M2:* Interstitial waste accumulation
- *Intercept:* Sleep optimization (supine position); DORAs — CAUTION: may impair glymphatic clearance @Zhu2025noradrenergicGlymphatic

*Step M3:* Neurotoxin accumulation → neuroinflammation
- *Intercept:* LDN (anti-neuroinflammatory). Continuous vs. episodic improvement pattern distinguishes glymphatic accumulation from microglial priming.

*Consequence:* Supine sleep position response (mechanical glymphatic outflow) vs. LDN response (anti-neuroinflammatory) distinguishes CSF stagnation from microglial priming. Determines whether treatment is positional/hygiene-based or pharmacological.
*Origin:* mechanistic-pathway-tracing.

== Connective Tissue Hypotheses

=== HIF-1α-Mediated Connective Tissue Remodeling
<sec:hif1a-ct-cascade>

*Certainty: 0.45.* HIF-1α stabilization supported by indirect evidence (ROS elevation). MMP-3/MMP-9 upregulation and collagen IV capillary deposition documented. DMF not studied for this indication in ME/CFS.

==== Cascade: Chronic oxidative stress (ROS) → prolyl hydroxylase inhibition → HIF-1α stabilization → (a) MMP-3/MMP-9 upregulation → collagen/elastin degradation → ligament laxity; (b) VEGF upregulation → capillary basement membrane thickening (collagen IV) → impaired diffusion; (c) Altered ECM composition → mast cell activation

*Step N1:* Prolyl hydroxylase inhibition (ROS → HIF-1α gate)
- *Intercept:* Vitamin C (500--2000 mg) — PHD cofactor; Alpha-ketoglutarate; Circadian timing — align with peak PHD activity (prolyl hydroxylase circadian optimization, ch14a); NAC — reduces ROS
- *If timed vitamin C + NAC works:* ROS-mediated PHD inhibition is the CT lesion. The weakness is metabolic/ROS-driven, not genetic.

*Step N2:* MMP upregulation → collagen/elastin degradation
- *Intercept:* Doxycycline (20 mg BID) — MMP-9 inhibitor; DMF — HIF-1α inhibitor

*Step N3:* Capillary basement membrane thickening
- *Intercept:* Pyridostigmine — improves perfusion despite diffusion barrier; Belzutifan — HIF-2α inhibitor

*Consequence:* Vitamin C + NAC response distinguishes metabolic/ROS-driven connective tissue weakness from genetic (EDS). If timed cofactors restore collagen, the weakness is acquired and potentially reversible.
*Origin:* mechanistic-pathway-tracing.

=== Craniocervical Instability (CCI) Cascade
<sec:cci-cascade>

*Certainty: 0.45.* CCI documented in ME/CFS-hEDS overlap populations (30--57% hypermobility prevalence). Cervical collar diagnostic trial has no controlled data but strong mechanistic rationale.

==== Cascade: Ligament laxity (hEDS, acquired from HIF-1α MMP degradation) → craniocervical junction instability → (a) brainstem/upper cervical cord compression; (b) vertebral artery compression; (c) CSF flow obstruction; (d) Sympathetic chain compression at C1-C2; (e) Vagus nerve stretch

*Step O1:* Ligament laxity → CJ instability
- *Intercept:* Cervical collar trial (Aspen/Miami J) — external stabilization; Physical therapy; Prolotherapy/PRP (investigational)
- *If cervical collar produces dramatic improvement:* CCI is present and rate-limiting. Response to collar strongly suggests surgical fusion evaluation.

*Step O2a:* Brainstem compression → myelopathic symptoms
- *Intercept:* Surgical decompression + fusion (definitive); Steroids (caution — corticosteroids contraindicated @hyp:steroid-hpa-trust-breaking)

*Step O2d:* Sympathetic chain compression → dysautonomia
- *Differential:* If collar resolves dizziness/headaches but NOT POTS → autonomic symptoms are from non-mechanical or non-cervical mechanism (GPCR AAb, brainstem neuroinflammation, thoracolumbar sympathetic chain @spec:ch08-thoracolumbar-sympathetic-irritation).

*Consequence:* Cervical collar response is the highest-yield diagnostic probe for CCI. Differential between collar response for dizziness vs. orthostatic symptoms distinguishes brainstem compression from non-mechanical autonomic dysfunction, guiding treatment toward surgery vs. immunomodulation.
*Origin:* mechanistic-pathway-tracing.

=== hEDS/Connective Tissue Quality Cascade
<sec:heds-cascade>

*Certainty: 0.45.* hEDS/HSD prevalence in ME/CFS is 30--57% vs. 10--15% general population. Four downstream cascades share connective tissue quality as common substrate.

==== Cascade: Genetic collagen/ECM protein variants (or acquired ECM degradation) → tissue laxity → (a) venous compliance → venous pooling → orthostatic intolerance; (b) joint hypermobility → proprioceptive dysfunction → chronic pain, functional CCI; (c) dural laxity → CSF leak; (d) vascular fragility

*Step P1:* Venous compliance → venous pooling
- *Intercept:* Compression garments (abdominal + leg); Midodrine — venoconstriction; Fludrocortisone — volume expansion
- *Differential:* If fludrocortisone works regardless of Beighton score → hypovolemia is dominant, not venous compliance. If compression works only in high-Beighton → venous compliance (CT quality) is the specific driver.

*Step P2:* Proprioceptive dysfunction → functional CCI
- *Intercept:* Physical therapy (proprioceptive retraining); Bracing/taping; Low-dose amitriptyline

*Step P3:* CSF leak → intracranial hypotension
- *Intercept:* Epidural blood patch (diagnostic + therapeutic); Caffeine; Horizontal positioning

*Consequence:* Compression garments vs. fludrocortisone response in high-Beighton patients distinguishes venous compliance (CT quality, compression-responsive) from hypovolemia (RAAS paradox, fludrocortisone-responsive).
*Origin:* mechanistic-pathway-tracing.

== Autonomic Hypotheses

=== POTS Subtypes: Neuropathic, Hyperadrenergic, Hypovolemic
<sec:pots-cascade>

*Certainty: 0.55.* POTS subtypes clinically validated in general POTS populations. Application to ME/CFS-POTS overlap supported by autonomic testing data.

==== Cascade by subtype:
Neuropathic: Peripheral sympathetic denervation → venous pooling → compensatory tachycardia → POTS
Hyperadrenergic: Central sympathetic overactivation → norepinephrine spillover → tachycardia + hypertension → POTS
Hypovolemic: RAAS paradox → blood volume deficiency → preload failure → compensatory tachycardia → POTS

*Step Q1:* Neuropathic POTS
- *Intercept:* Midodrine — α1 agonism; Pyridostigmine — enhances ganglionic transmission
- *If midodrine works AND supine NE is normal/low:* Decisive for neuropathic POTS.

*Step Q2:* Hyperadrenergic POTS
- *Intercept:* Beta-blockers (propranolol, bisoprolol); Clonidine — α2-agonist; Guanfacine
- *If beta-blocker works AND supine NE is elevated:* Hyperadrenergic POTS with appropriate receptor response.
- *Critical differential:* If beta-blocker reduces HR but worsens fatigue → β2-AR blockade impairs lipolysis. Ivabradine is the better probe.

*Step Q3:* Hypovolemic POTS
- *Intercept:* Fludrocortisone; Increased salt (6--10 g/day) + water (3L/day); IV saline (acute)
- *If fludrocortisone works:* RAAS paradox is present. Consistent with @hyp:bradykinin-raas.

*Consequence:* Supine NE + midodrine response distinguishes the three POTS subtypes. Subtype determines treatment.
*Origin:* mechanistic-pathway-tracing.

=== Vagal Dysfunction Cascade
<sec:vagal-cascade>

*Certainty: 0.40.* Reduced vagal tone documented in ME/CFS via HRV studies. Enterochromaffin-vagal pathway hypothesized by Wirth and Scheibenbogen.

==== Cascade: Enterochromaffin-vagal pathway (gut dysbiosis → low butyrate → reduced EC serotonin → impaired 5-HT3-mediated vagal afferent signaling) → reduced vagal efferent tone → (a) chronotropic incompetence, (b) reduced HRV, (c) impaired GI motility, (d) reduced cholinergic anti-inflammatory pathway → systemic inflammation

*Step R1:* Gut dysbiosis → low butyrate → reduced EC serotonin
- *Intercept:* Sodium butyrate / tributyrin; Probiotics targeting butyrate-producing species
- *If butyrate improves HRV:* The enteric-chromaffin-vagal pathway is present and rate-limiting.
- *If butyrate does NOT improve HRV:* Enterochromaffin cells may be damaged (Long-COVID pattern @wong2023serotonin), or dysfunction is in efferent transmission.

*Step R2:* Impaired vagal afferent signaling → reduced vagal efferent tone
- *Intercept:* Pyridostigmine — AChE inhibitor, enhances efferent tone; taVNS — electrical vagal stimulation
- *If pyridostigmine works AND taVNS works:* Vagal pathway intact across its full arc. Lesion is upstream of the vagus (enteric).
- *If neither works:* Vagal efferent pathway is non-functional — ganglionic AChR AAb, severe DMV damage.

*Consequence:* Butyrate + pyridostigmine + taVNS distinguishes three vagal lesion levels: enteric (butyrate-responsive), central (taVNS-responsive), and ganglionic (pyridostigmine-responsive if synapses intact; neither if AChR AAb blocks).
*Origin:* mechanistic-pathway-tracing.

== Gerlier Skeletal Asymmetry 4-Pathway Model

*Certainty: 0.10.* This model was proposed by Colette Marie Gerlier (2026-07-21, personal communication). The entire cascade from skeletal asymmetry → multi-organ dysautonomia has zero direct ME/CFS evidence. Included because (a) it generates specific, low-cost, falsifiable predictions (shoe lift, EOS radiography, COMPASS-31), (b) if validated, a simple mechanical intervention could be disease-modifying, and (c) its 4-pathway convergence on the dopaminergic node provides specific diagnostic logic.

*Consequence for this entire section:* The 2-week shoe lift trial is the highest-yield probe. If positive (reduced standing PEM, improved COMPASS-31), a mechanical trigger IS contributing. If negative, asymmetry may be non-contributory — direct attention to biochemical/autoimmune hypotheses.
*Origin: Gerlier 2026-07-21, personal communication; pathway tracing by mechanistic inference.*

=== Pathway 1: Compensatory Muscle Overuse → Anaerobic Metabolism
<sec:gerlier-pathway1>

==== Cascade: Fixed skeletal asymmetry (rotoscoliosis, pelvic obliquity >10 mm, DAMI/ILMI) → chronic compensatory postural muscle overuse → elevated basal energy consumption (~5--10% above normal in standing/walking) → continuous low-grade ATP drain → breached critical ATP threshold (@sec:sodium-calcium-cascade) → anaerobic shift, intracellular Na⁺ overload, NCX1 reverse, mitochondrial Ca²⁺ overload → PEM from trivial activity

*Step G1a:* Fixed skeletal asymmetry (mechanical trigger)
- *Intercept:* Shoe lift (if LLD); Custom orthotics; Postural physiotherapy
- *If shoe lift reduces standing/walking PEM within days:* Skeletal asymmetry is mechanically and directly driving PEM. Strongest evidence for Gerlier hypothesis in an individual.
- *If shoe lift does NOT reduce PEM:* Asymmetry is not functionally contributing to PEM, or compensatory patterns are fixed/learned.

*Step G1b:* Compensatory muscle overuse → ATP drain
- *Intercept:* CoQ10, creatine, L-carnitine — mitochondrial support; NMN/NR; LDN
- *If CoQ10/creatine reduces PEM when shoe lift does NOT:* The bottleneck is ATP *production* capacity, not ATP *consumption* rate.
- *If shoe lift works but CoQ10 does NOT:* Asymmetry-driven demand is the bottleneck; mitochondrial capacity is adequate.

*Step G1c:* Anaerobic shift / Na⁺-Ca²⁺ cascade
- *Intercept:* MDC002/Mitodicure — targets NHE1 + NCLX @sec:mdc002

=== Pathway 2: Sympathetic Chain Irritation → Multi-Organ Dysautonomia
<sec:gerlier-pathway2>

==== Cascade: Rotoscoliosis/vertebral rotation → mechanical compression/irritation of paravertebral sympathetic chain (T1--L2) → (a) acute compression → irritative firing → hyperadrenergic state; (b) chronic compression → conduction block → denervation hypersensitivity; (c) organ-specific dysfunction: T5--T9 → gastroparesis; T10-L1 → RAAS dysregulation; T1--T4 → cardiac

*Step G2a:* Sympathetic chain compression
- *Intercept:* Shoe lift / postural correction; Osteopathic manipulation (CAUTION — unstable CCI)
- *If shoe lift improves COMPASS-31:* Mechanical compression of sympathetic chain was driving autonomic dysfunction. Gerlier Pathway 2-specific evidence.

*Step G2b:* Organ-specific dysautonomia
- *Intercept:* Pyridostigmine — enhances remaining cholinergic tone in GI; Domperidone; Midodrine for cardiac
- *Differential:* Cardiac-predominant vs. GI-predominant vs. renal maps to specific vertebral levels of compression.

=== Pathway 3: Mechanical Nerve Compression → Pain, Paresthesia
<sec:gerlier-pathway3>

==== Cascade: Asymmetric fascial tension → altered nerve glide planes → compression of peripheral nerves at mechanical pinch points (lateral femoral cutaneous, sciatic, pudendal) → chronic low-grade compression neuropathy → fluctuating paresthesia, positional allodynia

*Step G3a:* Mechanical nerve compression at pinch points
- *Intercept:* Shoe lift / postural correction; Nerve glide exercises; Targeted nerve blocks (diagnostic)
- *If shoe lift reduces paresthesia/allodynia:* The compression neuropathy is mechanically reversible.

*Step G3b:* Central sensitization amplification
- *Intercept:* LDN; Low-dose amitriptyline (5--10 mg); Gabapentin/pregabalin
- *If LDN works for pain but shoe lift does NOT:* Central sensitization is the bottleneck — peripheral trigger correction is insufficient.
- *If shoe lift + LDN works better than either alone:* Dual pathology — peripheral mechanical trigger AND central sensitization amplifier.

=== Pathway 4: Cervical Aging Spiral → Functional CCI + Proprioceptive Degradation
<sec:gerlier-pathway4>

==== Cascade: Pelvic obliquity → lumbar/thoracic countercurves → cervical tilt → chronic subclinical neck muscle overwork → premature fatigue of cervical stabilizers → proprioceptive degradation at craniocervical junction → functional CCI → dizziness, headache, brain fog, visual disturbances

*Step G4a:* Cervical tilt → chronic neck muscle overwork
- *Intercept:* Shoe lift; Cervical bracing/taping; Ergonomic optimization
- *If shoe lift reduces neck pain/cervical symptoms:* The cervical muscle overwork is driven by pelvic asymmetry below. Gerlier Pathway 4-specific evidence.

*Step G4b:* Proprioceptive degradation → functional CCI
- *Intercept:* Proprioceptive retraining; Visual-vestibular integration therapy; Low-dose aripiprazole
- *If proprioceptive retraining, NOT collar, works:* The CCI is functional (proprioceptive), not structural (ligamentous).
- *If cervical collar works:* The CCI has a structural component.

=== Gerlier 4-Pathway Convergence: The Dopaminergic Node (Why Aripiprazole)
<sec:gerlier-dopamine-node>

*Certainty: 0.15.* The 4-pathway convergence on dopamine makes this model testable. However, evidence for each upstream pathway is near-zero (cert 0.10 overall), and dopamine dysfunction is also predicted by better-supported hypotheses.

==== Cascade: Gerlier 4-pathway convergence at the CNS dopaminergic system:
Pathway 1 (muscle overuse) → ATP drain → microglial activation → basal ganglia dopamine synthesis impairment
Pathway 2 (sympathetic chain) → NE overdrive → DBH overactivity → dopamine pool depletion → inability to synthesize dopamine for basal ganglia and PFC
Pathway 3 (nerve compression) → chronic nociceptive input → central sensitization → microglial/astrocytic → cytokine-mediated dopamine suppression
Pathway 4 (functional CCI) → brainstem compression → ascending dopaminergic pathway disruption (VTA → PFC, SNc → striatum)

*Step Z1:* The dopaminergic convergence node
- *Intercept:* Aripiprazole (low-dose, 0.25--2 mg) — D2/D3 partial agonist; Amantadine; Methylphenidate
- *If aripiprazole works:* The dopaminergic node IS the bottleneck. The lesion is at or above the dopamine receptor level.
- *If aripiprazole does NOT work:* The bottleneck is BELOW the dopamine receptor. Either presynaptic (synthesis, DAT), downstream signaling (cAMP/PKA), or upstream in a non-dopaminergic Gerlier pathway.

*Step Z2:* Distinguishing which pathway drives the dopaminergic deficit
- *If aripiprazole works AND shoe lift works AND midodrine works → Pathway 2 (sympathetic chain) confirmed.*
- *If aripiprazole works AND shoe lift does NOT work → non-Gerlier dopamine driver, or Pathway 3/4.*
- *If aripiprazole works AND cervical bracing works → Pathway 4 (functional CCI) likely.*
- *If aripiprazole works AND LDN works → Shared neuroinflammatory convergence.*
- *If aripiprazole does NOT work but shoe lift works:* Gerlier drives symptoms through non-dopaminergic pathway (direct ATP depletion, autonomic/vascular, or mechanical pain).

*Step Z3:* What a null aripiprazole response means
A patient with documented skeletal asymmetry and aripiprazole non-response has one of: (1) ATP drain so severe dopamine modulation cannot compensate; (2) sympathetic compression → cardiovascular/vascular autonomic dysfunction, not dopaminergic; (3) pain → nociceptive-level, not dopaminergic, treatment needed; (4) asymmetry is present but non-contributory.

*Step Z4:* What a STRONG aripiprazole response means
A patient with skeletal asymmetry showing dramatic improvement on low-dose aripiprazole has: (1) dopaminergic dysfunction at D2/D3 that WAS rate-limiting; (2) one or more Gerlier pathways driving dopaminergic dysfunction upstream; (3) receptors present and responsive; (4) a mechanical-pathway → dopamine pathway that is testable via combination probes.

*Consequence:* Aripiprazole response in a patient with documented skeletal asymmetry AND positive shoe lift trial represents multi-level evidence for the Gerlier model. However, aripiprazole-positive/shoe-lift-negative patterns are also predicted by better-supported models. Diagnostic specificity comes from the COMBINATION of mechanical AND dopaminergic probes.
*Origin: Gerlier 2026-07-21; dopaminergic convergence tracing by mechanistic inference.*

== Integrative Models

=== Energy Ratchet / Hysteresis Model
<sec:ratchet-cascade>

*Certainty: 0.40.* Progressive loss of work capacity across PEM episodes is clinically observed. Epigenetic scarring and recovery capital depletion are mechanistic inferences. No direct longitudinal measurement in ME/CFS.

==== Cascade: Repeated PEM episodes → progressive lowering of "crash threshold" → residual damage (epigenetic marks, mitochondrial damage, microglial priming, HSC exhaustion) → recovery incomplete → work capacity ratchets downward → treatment resistance increases with illness duration

*Step S1:* PEM episode → residual damage accumulation
- *Intercept:* PEM prevention (pacing, HR monitoring); Antioxidants (CoQ10, NAC) during exertion; Rapamycin — enhances mitophagy between episodes
- *If pacing prevents progressive decline:* The ratchet is PEM-event-driven.

*Step S2:* Epigenetic scarring → treatment resistance
- *Intercept:* Early intervention (before scarring accumulates) per @spec:recovery-capital
- *Testable prediction:* Shorter illness duration patients should respond to interventions that fail in longer-duration patients.

*Consequence:* Temporal probe: same intervention succeeding in recently-ill but failing in long-duration patient suggests the ratchet has hardened the disease state. Argues for early aggressive intervention.
*Origin:* mechanistic-pathway-tracing.

=== Energy Triage / Selective Energy Dysfunction
<sec:triage-cascade>

*Certainty: 0.45.* Pattern of preserved baseline function with catastrophic demand failure documented in ME/CFS (2-day CPET). CNS energy crisis model @spec:cns-primary.

==== Cascade: Cellular energy shortage → selective ATP allocation → deprioritization of "non-essential" functions (exercise capacity, immune adaptation, orthostatic tolerance, cognitive effort) → preservation of "essential" functions (basal metabolism, hair/nail growth) → pattern of preserved baseline with catastrophic failure under demand

*Step T1:* ATP allocation switch (metabolic triage)
- *Intercept:* CoQ10, B-vitamins, L-carnitine — increase total ATP pool; Pacing; Stress reduction
- *If mitochondrial cofactors do NOT increase functional capacity:* ATP pool is fixed. Mitophagy + biogenesis needed.

*Step T2:* Selective preservation: basal function preserved, demand functions fail
- *Pharmacological bypass of demand-response pathways (midodrine, pyridostigmine, aripiprazole). The pattern of which works is the diagnostic probe:*
  - Midodrine works → adrenergic signaling ATP-triage-deprioritized.
  - Pyridostigmine works → cholinergic signaling ATP-triage-deprioritized.
  - Aripiprazole works → dopaminergic signaling ATP-triage-deprioritized.
  - All three work → broad CNS energy crisis.
  - None work → dysfunction is pharmacological (receptor blockade), not energetic.

*Consequence:* Pattern of which bypass works identifies which demand-response system is being selectively ATP-deprioritized.
*Origin:* mechanistic-pathway-tracing.

== Cross-Hypothesis Convergence Patterns

=== The Dopamine Convergence Node
<sec:dopamine-convergence>

*Certainty: 0.35.* Convergence of multiple hypotheses on dopamine dysfunction is a structural feature of the model space, not an empirical finding. Each contributing hypothesis has its own evidence base.

Multiple hypotheses converge on basal ganglia/PFC dopamine dysfunction:
- *TRPM3 channelopathy:* TRPM3 calcium → VMAT2 vesicular loading → dopamine packaging impaired.
- *Microglial neuroinflammation:* Cytokines → BH4 depletion → tyrosine hydroxylase failure → reduced dopamine synthesis.
- *GPCR autoantibodies:* β2-AR AAb on LC → NE deficiency → reduced VTA dopamine neuron activation.
- *Kynurenine pathway:* Quinolinic acid → NMDA excitotoxicity in striatum → D2 receptor internalization.
- *Central NE deficiency:* DBH ATP-dependence → NE synthesis failure spares DA (@ach:catecholamine-deficit), but chronic NE deficiency → compensatory DA overdrive → D2 desensitization.
- *Gerlier Pathway 2:* Sympathetic chain compression → NE overdrive → DBH overactivity → dopamine pool depletion.

THE DIAGNOSTIC PROBE: Aripiprazole tells you dopamine IS rate-limiting. Distinguishing WHICH upstream driver requires combining with:
- LDN response → neuroinflammation-driven
- Immunoadsorption response → autoantibody-driven
- Memantine response → kynurenine/excitotoxicity-driven
- Atomoxetine/NRI response → NE deficiency-driven
- Shoe lift response → Gerlier Pathway 2

If aripiprazole works and ONLY shoe lift works (no LDN, no IA, no memantine): dopamine lesion is specifically from Gerlier Pathway 2.

*Consequence:* Aripiprazole is the convergence probe — it tells you dopamine dysfunction is rate-limiting but not WHY. Probe COMBINATIONS are diagnostic.
*Origin:* mechanistic-pathway-tracing.

=== The Noradrenergic Selectivity Node
<sec:noradrenergic-node>

*Certainty: 0.40.* Selective noradrenergic defect (CSF NE↓, DA preserved per @ach:catecholamine-deficit) is a replicated finding from NIH deep phenotyping, though single-center and n=16--17.

The selective noradrenergic defect creates a specific test:
- Atomoxetine (NRI) should improve fatigue and PEM if NE deficiency is rate-limiting.
- Atomoxetine may NOT improve cognitive symptoms if DA system is intact or cognitive bottleneck is glutamatergic.
- If atomoxetine does NOT work BUT aripiprazole works → lesion is downstream of NE: DBH failure produces NE deficiency but spares DA, and DA deficiency is rate-limiting.

=== The Perfusion-Delivery vs. Mitochondrial-Production Node
<sec:perfusion-vs-mito-node>

Distinguishing whether the energy bottleneck is oxygen delivery or mitochondrial utilization:
- *Probes:* Pyridostigmine (improves perfusion → delivery), CoQ10/NMN (improves mitochondrial function → production).
- *If pyridostigmine works but CoQ10 does NOT:* Bottleneck is at delivery (Step 1). Mitochondria can produce ATP when they get oxygen.
- *If CoQ10 works but pyridostigmine does NOT:* Bottleneck is at mitochondrial production.
- *If both work:* Both delivery and production impaired.
- *If neither works:* Bottleneck at ATP utilization (ANT export, creatine phosphate shuttle, or triage allocation).

=== The Mechanical-vs-Biochemical Dichotomy (Gerlier vs. Autoimmune/Metabolic)
<sec:mechanical-vs-biochemical>

The diagnostic probes that distinguish mechanical from biochemical drivers:
- *Shoe lift:* If it works → mechanical driver. HIGH SPECIFICITY for Gerlier cascade.
- *Cervical collar:* If it works → CCI or functional CCI (Pathway 4).
- *Immunoadsorption / BC007:* If it works → autoimmune driver.
- *LDN:* If it works → neuroinflammation or TRPM3. Not specific alone.
- *Aripiprazole (the convergence probe):* Works for BOTH Gerlier and biochemical dopamine dysfunction — does not distinguish. Must be combined with above probes.

== Side Effects as Diagnostic Probes
<sec:side-effects-diagnostic>

*Certainty: 0.30.* The diagnostic logic below is mechanistic inference from known pharmacology applied to documented ME/CFS pathophysiology. Drug-specific side-effect-to-mechanism mappings are extrapolated from general pharmacology; none has been validated as a diagnostic tool in ME/CFS cohorts.

The chapter above uses *therapeutic response* — whether a drug works — to localize the bottleneck. But every patient who tries a drug also generates a *side-effect profile*, and that profile contains orthogonal diagnostic information about which systems are intact enough to produce the reaction, which are dysregulated enough to amplify it, and which are too damaged to respond at all. A side effect is the body revealing which regulatory brakes are missing.

=== Five Diagnostic Patterns in Adverse Drug Reactions

*Pattern 1 — Exaggerated therapeutic effect.* The target system was already operating at critical margin, and the drug pushes it over the edge.

- *LDN causing severe sedation in a subset:* The orexin/arousal system was already barely functional. Microglial TLR4 blockade removes the last excitatory drive to orexin neurons → unopposed sleep pressure. Implies hypothalamic neuroinflammation was actively suppressing orexin — consistent with the orexin-suppression model (@sec:microglial-cascade Step K2a). This patient needs orexin support (pitolisant, OX2R agonist), not orexin suppression (DORA).
- *Beta-blockers worsening fatigue beyond HR reduction:* β2-AR blockade impairs lipolysis — the primary fatty acid mobilization pathway. If fatigue worsens on propranolol beyond what ivabradine produces at matched HR, the patient was relying on β2-AR-mediated lipid metabolism to compensate for impaired glucose oxidation. Implies mitochondrial glucose-to-ATP conversion is compromised (PDH, ETC) and fatty acid oxidation is the metabolic fallback. β2-AR blockade removes the fallback → energy collapse. Consistent with PDH inhibition (@sec:pdh-cascade) or WASF3 supercomplex disruption (@sec:wasf3-cascade).
- *Midodrine producing severe hypertension at minimal dose (2.5 mg):* α1 receptors are hypersensitive — textbook denervation hypersensitivity. Confirms neuropathic POTS (sympathetic denervation → upregulated postsynaptic α1 receptors) rather than hyperadrenergic POTS (which would show α1 desensitization from chronic NE overstimulation). Diagnostic: supine NE should be low, and the patient should have poor endogenous vasoconstriction (cold extremities, venous pooling) despite the hypertensive reaction to exogenous agonist.
- *Pramipexole (sifrol) causing nausea and dizziness at RLS starting dose (0.125–0.25 mg):* Nausea is D2/D3 agonism in the area postrema (chemoreceptor trigger zone, outside the blood-brain barrier). Dizziness is orthostatic hypotension from combined peripheral D2-mediated vasodilation and central D2-mediated sympathetic suppression. At the minimal dose used for RLS, these side effects indicate: (a) D2/D3 receptors are supersensitive in both the area postrema (nausea) and cardiovascular regulatory centres (dizziness) — the same supersensitivity that makes low-dose D2 agonism effective also makes it produce side effects at doses that are subclinical in Parkinson's patients; (b) the orthostatic intolerance system is already operating at critical margin — even weak peripheral vasodilation + mild central sympathetic suppression is enough to decompensate it. Diagnostic: this patient's dopaminergic system is hypersensitive (consistent with chronic dopamine deficiency → postsynaptic D2/D3 upregulation in multiple brain regions). The orthostatic intolerance is dopaminergically vulnerable — if pramipexole causes dizziness at 0.125 mg, the patient's haemodynamic stability depends on intact central sympathetic outflow, and any D2-mediated suppression tips the balance. Implies the patient has neuropathic POTS (already-compensated sympathetic tone) or dopamine-dependent cardiovascular regulation. If nausea is present but dizziness is absent → D2 receptors are supersensitive in the area postrema but cardiovascular D2/D3 signalling is either desensitized or non-functional — an unexpected dissociation. If neither nausea nor dizziness occurs at therapeutic doses → D2/D3 receptors in area postrema and cardiovascular centres are too damaged or desensitized to respond (Pattern 5 — absent expected side effect), which would make D2 agonism ineffective for any indication in this patient.
- *Ketotifen causing severe sedation or hypersomnia at 0.5--1 mg:* Ketotifen is a mast cell stabilizer with H1 antagonist activity. At standard MCAS doses (1--2 mg BID), sedation is expected as the H1 component suppresses histaminergic wakefulness. Sedation at 0.5 mg (pediatric dose) implies: (a) the histaminergic arousal system is already barely functional — minimal H1 blockade collapses remaining wakefulness, consistent with the orexin suppression model (@sec:microglial-cascade Step K2a); or (b) ketotifen's mast-cell stabilizing effect is additionally suppressing a compensatory mast-cell-driven arousal mechanism (histamine released from CNS mast cells was the only thing keeping the patient awake). Diagnostic: this patient's wakefulness depends on histaminergic tone from mast cell degranulation — they are being "held awake" by their own MCAS. If ketotifen reduces MCAS symptoms (flushing, GI, pruritus) without sedation → the mast-cell stabilizing benefit is achieved at a dose below the H1 sedation threshold; H1 receptors are intact but not hypersensitive. If ketotifen produces NO effect (no MCAS improvement, no sedation) → either mast cells are not rate-limiting for symptoms, or ketotifen cannot access CNS mast cells at this dose. The dissociation of MCAS benefit vs sedation identifies whether mast cells are driving symptoms or just co-occurring.

*Pattern 2 — Paradoxical reaction.* The target system has a regulatory inversion — the expected response is reversed.

- *LDN causing depression, suicidal ideation, or agitation (the "paradoxical reactor" phenotype):* Opioid system dysregulation at the receptor or downstream signaling level. Brief opioid blockade at low-dose naltrexone should trigger compensatory endorphin upregulation and improved mood. Instead, blockade triggers dysphoria — implying: (a) the endogenous opioid system is tonically active to compensate for chronic pain or inflammation, and removing that compensation unmasks a severe deficit; (b) the patient may have a genetic variant in OPRM1 (μ-opioid receptor) altering naltrexone binding kinetics; or (c) the TLR4 antagonism is not the dominant LDN effect in this patient — the opioid receptor interaction dominates and goes the wrong direction. Diagnostic: this patient should NOT receive any opioid-modulating medication. Their pain and mood regulation depend on intact opioid tone. The adverse reaction itself identifies them as opioid-dependent for homeostasis.
- *Fludrocortisone worsening orthostatic symptoms:* Expected: volume expansion → improved preload → reduced orthostatic tachycardia. Paradoxical worsening implies: (a) the volume expansion is causing excessive venous pooling rather than increased cardiac preload (venous compliance from connective tissue laxity is the dominant vascular defect — volume goes to the legs, not the heart); (b) fludrocortisone-induced hypokalemia is worsening vascular smooth muscle function; or (c) aldosterone-sensitive sodium channels in the brain (circumventricular organs) are triggering a central sympathetic overactivation that exceeds the peripheral volume benefit. Diagnostic: this patient has connective-tissue-driven venous pooling, not hypovolemic POTS. Compression garments should work; fludrocortisone should not.
- *IVIG causing transient worsening (immune activation flare) before improvement:* IVIG neutralizes circulating autoantibodies and modulates Fc receptors on immune cells. An initial worsening — increased fatigue, flu-like symptoms, brain fog — is expected as immune complexes form and complement is activated during autoantibody neutralization (Herxheimer-like). If the flare resolves within 48--72 hours and is followed by sustained improvement → GPCR autoantibody-mediated pathology is present and IVIG is effective. Diagnostic: the flare itself confirms autoantibody presence — the body is mounting an immune response to the neutralized complexes. If the flare does NOT resolve (>7 days of worsening) → either: (a) the patient cannot tolerate complement activation (complement regulatory protein deficiency, @spec:complement-pem-biphasic), (b) mast cell activation is being triggered by immune complex formation (C3a/C5a anaphylatoxin release → mast cell degranulation), consistent with the complement-mast cell amplification loop (@spec:complement-mast-cell-loop). If IVIG produces NO response AND no flare → either no GPCR AAb present, or the AAb are not rate-limiting, or the IgG preparation does not contain the relevant idiotypes. The absence of any immune reaction to a foreign IgG preparation suggests profound immune exhaustion or tolerance.
- *IVIG or rituximab producing no change in symptom trajectory over 6+ months:* Expected: if autoantibodies drive symptoms, removing or neutralizing them should improve symptoms within weeks to months. Complete non-response implies: (a) autoantibodies are not present or not rate-limiting, (b) autoantibodies are present but downstream tissue damage is irreversible (neural loss, fibrosis, epigenetic consolidation), (c) the relevant autoantibodies are IgM (rituximab spares plasma cells, and pre-existing IgM-producing plasma cells are not depleted), or (d) autoantibody production is ongoing from a sanctuary site not accessible to IVIG/rituximab (CSF compartment, lymph node, bone marrow niche). Diagnostic: non-response to both IVIG AND rituximab effectively excludes circulating IgG autoantibody-mediated pathology as the dominant mechanism. The lesion is either upstream of autoantibody production (T-cell, persistent antigen) or downstream of antibody-mediated damage (irreversible tissue-level changes). If rituximab produces no response but IVIG does → rituximab spares long-lived plasma cells that produce the relevant AAb; the AAb source is a non-dividing plasma cell pool. Daratumumab (anti-CD38, depletes plasma cells) should be considered.
- *Famotidine or cimetidine causing depression or suicidal ideation:* H2 receptor antagonists normally suppress gastric acid without CNS effects at standard doses. The emergence of psychiatric adverse effects implies: (a) H2 receptors in the CNS are playing a compensatory role for mood regulation — blocking them removes a histaminergic mood-stabilizing effect that was compensating for a serotonergic or dopaminergic deficit; (b) the patient has a paradoxical CNS histamine response (H2 agonism normally pro-cognitive, so blockade should not be depressogenic unless brain histamine tone is inverted); or (c) the H2 blocker is altering gut-brain axis signalling in a patient whose mood is gut-dependent (microbiome-mediated serotonin synthesis depends on gastric pH for precursor absorption). Diagnostic: this patient has the "paradoxical reactor" phenotype extended to the histaminergic system — consistent with opioid/histamine cross-sensitization (@sec:paradoxical-reactor). This patient should avoid all H2 antagonists. Furthermore, if famotidine causes depression but cimetidine does not → the effect is drug-specific (not class-wide), ruling out H2 receptor mechanism and implicating an off-target effect of the specific molecule — cimetidine's T-cell enhancement may be protective via immune-mediated mood regulation. If cimetidine causes depression but famotidine does not → the effect is through CYP450-mediated drug interactions (cimetidine inhibits CYP1A2, 2D6, 3A4, altering antidepressant or endogenous steroid metabolism), not H2 blockade.

*Pattern 3 — Unexpected off-target effect.* A system the drug wasn't supposed to affect reveals latent vulnerability.

- *Pyridostigmine causing severe GI cramping/diarrhea at 30 mg:* Acetylcholine accumulation at muscarinic receptors in the gut. Expected at higher doses, but severe at minimal dose implies: (a) acetylcholinesterase activity is already reduced (from inflammation, oxidative stress, or genetic AChE variants) → less enzyme available to degrade ACh, so AChE inhibition has outsized effect; or (b) the gut has upregulated muscarinic receptor density or sensitivity in compensation for reduced vagal tone → the tissue is primed to overreact to ACh. Diagnostic: start at 10--15 mg. If GI sensitivity persists, the gut cholinergic system is hypersensitive — consistent with enteric denervation and compensatory receptor upregulation.
- *Aripiprazole causing akathisia at 0.5 mg:* D2/D3 partial agonism at minimal dose producing motor restlessness. Expected at antipsychotic doses (5--30 mg) but not at microdoses. Implies: (a) D2 receptors are supersensitive (upregulated from chronic dopamine deficiency) — the same receptor state that makes aripiprazole effective at microdoses also makes it produce akathisia at microdoses; (b) the patient's dopaminergic deficit is severe enough that the partial agonist's intrinsic activity at 0.5 mg exceeds what the system can buffer. Diagnostic: this patient has severe dopamine deficiency — the akathisia confirms the receptor pathology. Consider even lower starting dose (0.1 mg liquid titration) or switching to a different dopamine strategy (amantadine, which increases release rather than agonizing receptors directly).
- *Duloxetine or amitriptyline causing severe anticholinergic toxicity (confusion, dry mouth, constipation, urinary retention) at low antidepressant doses:* Duloxetine (SNRI) has minimal direct anticholinergic effect; amitriptyline (TCA) blocks M1 muscarinic receptors. If anticholinergic symptoms appear with duloxetine (which should not produce them), an unexpected off-target system is vulnerable — either: (a) the patient has subclinical acetylcholinesterase deficiency (AChE genetic variant) → baseline synaptic ACh is already high, so even the weak indirect anticholinergic effect of NE-mediated inhibition of cholinergic neurons is sufficient to push the system over threshold; or (b) duloxetine is unmasking undiagnosed Sjögren's syndrome (sicca + anticholinergic effect = severe dry mouth, blurred vision, dysphagia). If amitriptyline produces severe sedation at 5--10 mg (not 25--50 mg) → H1 receptor supersensitivity; this patient's histaminergic wakefulness drive is easily suppressed, consistent with orexin/histamine dysfunction. Diagnostic: both agents probe NE/5-HT reuptake function but amitriptyline additionally probes H1 and M1 receptor tone. The specific side-effect ceiling identifies which receptor system has the least functional reserve.
- *Gabapentin or pregabalin causing severe sedation, cognitive impairment, or ataxia at minimal doses (100--300 mg gabapentin, 25--50 mg pregabalin):* Gabapentinoids bind the α2δ subunit of voltage-gated calcium channels (CaV), reducing neurotransmitter release. At these doses, therapeutic effect on neuropathic pain should not yet be achieved — the side effects appear before any analgesic ceiling is reached, implying the α2δ-containing CaV channels are hypersensitive or already upregulated. In ME/CFS, this pattern could mean: (a) the patient has central sensitization so severe that even minimal CaV channel blockade produces disproportionate CNS depression — consistent with TRPM3-dependent calcium dysregulation driving compensatory CaV upregulation; or (b) gabapentinoids are hitting a system that is already calcium-starved — reducing Ca²⁺ influx further tips neurons below their minimum activation threshold. If the patient experiences paradoxical agitation on gabapentin → GABA synthesis is altered (gabapentin increases GABA via GAD activation; if GAD is dysfunctional, glutamate accumulation → paradoxical excitation). Diagnostic: this patient has severe central sensitization. Gabapentinoids cannot be titrated to effective doses — consider PEA (PPAR-α, no calcium channel effect), LDN, or ketamine (NMDA block) for neuropathic pain instead.

*Pattern 4 — Tolerability ceiling imposed by a specific system.* The drug works but cannot be titrated because side effect Y from system Z appears first. The ceiling identifies which system has the least reserve.

- *Ivabradine limited by bradycardia before POTS HR symptom control is achieved:* The SA node's intrinsic firing rate reserve is exhausted. The sinus node is operating near its lower functional limit even at rest — consistent with intrinsic SA node dysfunction (possibly from cardiac NCX1 reversal, @spec:ch10-cardiac-ncx-reversal) or ganglionic cholinergic overactivity. Diagnostic: the chronotropic incompetence is not purely autonomic — there is also a structural/ionic SA node limitation.
- *Guanfacine limited by hypotension before cognitive benefit:* α2A-mediated central sympathetic suppression reduces BP below tolerable threshold. The sympathetic nervous system is maintaining blood pressure — remove even a fraction of central sympathetic outflow and BP crashes. Diagnostic: the patient is sympathetically dependent for hemodynamics. Midodrine (peripheral α1 agonism) should be co-administered to maintain BP while guanfacine provides prefrontal cognitive benefit. Without midodrine, guanfacine's cognitive benefit is inaccessible because hemodynamics collapse first.
- *Memantine limited by brain fog/sedation before glutamatergic benefit:* NMDA antagonism reduces excitatory neurotransmission broadly — not just at pathological quinolinic-acid-driven synapses but at normal glutamatergic circuits. If sedation appears at doses below therapeutic range for cognitive improvement, the patient's glutamatergic system has insufficient reserve — basal glutamate tone is already low (consistent with regional brain hypometabolism on FDG-PET, @sec:cns) and further NMDA blockade tips cognition over a cliff. Diagnostic: this patient needs glutamatergic tone enhancement, not reduction. The cognitive dysfunction is from insufficient excitation, not excessive quinolinic-acid-driven excitation. Kynurenine pathway may be producing kynurenic acid (NMDA antagonist) dominance rather than quinolinic acid (NMDA agonist) excess.
- *Methylphenidate limited by tachycardia, insomnia, or post-dose crash before cognitive benefit:* Methylphenidate blocks NET and DAT, raising synaptic NE and DA. In a patient reliant on NE reuptake for maintaining baseline catecholamine tone, reuptake blockade causes sympathetic overactivation (tachycardia exceeding POTS tolerance, anxiety, vasoconstriction) at doses where DAT occupancy is still suboptimal for cognitive benefit. The +7% REE increase from methylphenidate in an already energy-compromised patient produces a net negative energy balance — the brain works but the body depletes faster. Post-dose crash from dopamine depletion after reuptake block wears off creates a binge-crash pattern that maps onto PEM. Diagnostic: this patient's cognitive dysfunction is from NE deficiency (the drug worked on cognition but the sympathetic side effects prevent titration), confirming the noradrenergic hypothesis (@ach:catecholamine-deficit). The specific ceiling (tachycardia vs crash vs insomnia) identifies the weakest link in NE/DA homeostatic capacity. If tachycardia is first ceiling → hyperadrenergic POTS component; atomoxetine (pure NRI) should be tried, since it produces less HR increase while still correcting prefrontal NE deficiency. If crash is first ceiling → DA depletion is primary; add CoQ10/NADH for mitochondrial ATP regeneration capacity. If insomnia is first ceiling → DAT occupancy is too high for the patient's orexin drive; split dosing or switch to modafinil (DAT block without the hypothalamic arousal overdrive of full NDRI).
- *Amphetamines (dextroamphetamine, lisdexamfetamine) causing severe post-dose crash indistinguishable from PEM:* Amphetamines deplete vesicular dopamine via VMAT2 inhibition and reverse DAT/NET direction, releasing catecholamines from terminals. In a patient with borderline intact dopaminergic terminals (subclinical VMAT2 deficiency), a single dose of amphetamine depletes the remaining vesicular stores — the crash is genuine monoamine depletion, not just receptor downregulation. This crash is pharmacologically indistinguishable from a PEM episode: extreme fatigue, mental depression, sleep EEG changes lasting 3--4 weeks. Diagnostic: amphetamine-induced crash confirms VMAT2 terminal compromise. The patient's dopaminergic system cannot sustain the catecholamine demand of a releasing agent — implying fewer surviving terminals (consistent with Liu 2026 VMAT2 PET in long COVID) and fragile vesicular storage. This patient should NEVER receive amphetamines again. The strong response-to-total-crash trajectory is a high-specificity pharmacodiagnostic for VMAT2 pathology. If amphetamines produce NO response (no cognitive benefit AND no crash) → two possibilities: (a) DAT is already saturated or absent (severe terminal loss beyond what VMAT2 PET would show), or (b) the dopamine system is not the bottleneck — the cognitive dysfunction is from a non-dopaminergic mechanism (glutamatergic, cholinergic, or inflammatory).
- *Modafinil/armodafinil dose-limited by insomnia or next-day fatigue, not by lack of efficacy:* Modafinil blocks DAT (raising synaptic DA) and activates histaminergic and orexin systems. Insomnia at doses above 100 mg implies the orexin/histamine arousal axis is hypersensitive — small increases in extracellular DA via DAT block are sufficient to fully activate a system that was already at threshold (consistent with the orexin-suppression model: the system is turned off at baseline, not broken, and DAT block releases the brake). Next-day fatigue (not insomnia) implies delayed metabolic cost catching up — the +7% REE from elevated wakefulness depletes already-limited energy reserves overnight. Diagnostic: distinct from methylphenidate crash; modafinil's DAT-only action means NE is not involved. If insomnia is the ceiling → orexin/histamine tone is intact and DA-sensitive → try pitolisant (H3 inverse agonist, releases endogenous histamine without DAT-mediated DA increase). If next-day fatigue (not insomnia) is the ceiling → energy reserve is the bottleneck, not arousal; add mitochondrial support before retrying. If modafinil produces NO response (no benefit, no insomnia, no crash) → DAT dysfunction — the transporter is absent, blocked by autoantibodies, or genetically non-functional — making all DAT-targeting strategies futile.
- *Solriamfetol dose-limited by BP/HR elevation without cognitive benefit:* Solriamfetol is a pure DNRI (selective DA/NE reuptake inhibitor) with no releasing activity. If systolic BP or HR increase appears at sub-therapeutic doses for cognition, the patient's noradrenergic system is intact and responsive — NE reuptake inhibition produces the expected sympathetic effect but at the wrong dose window. The dissociation (cardiovascular response but no cognitive response) localizes the cognitive deficit: the prefrontal NE system is either desensitized (α2A receptors downregulated from chronic stress/inflammation) or anatomically disconnected (white-matter loss in PFC-cingulate tracts). Diagnostic: NE is available at the synapse but the prefrontal cortex cannot use it — consistent with the prefrontal hypometabolism model (@ach:catecholamine-deficit). Guanfacine (direct α2A agonism, bypassing endogenous NE release) should be tried: it directly stimulates postsynaptic α2A receptors on prefrontal pyramidal neurons irrespective of NE release. If guanfacine works where solriamfetol did not → confirms the lesion is postsynaptic receptor function, not presynaptic NE availability. If solriamfetol produces cognitive benefit with no BP/HR effect → the NE system is intact and tone is normal — the cognitive dysfunction is DA-mediated (the DNRI's DA component is providing the benefit), not NE-deficiency. Switch to a pure DRI or L-DOPA.
- *Pitolisant dose-limited by insomnia or headache before cognitive/mast cell benefit:* Pitolisant is an H3 inverse agonist that releases endogenous histamine and promotes M1→M2 microglial polarization. Insomnia at low doses (4.5--9 mg) implies the histaminergic arousal system is already near its activation threshold — the H3 brake is barely on and removing even a fraction releases histamine enough to disrupt sleep. The histaminergic system is intact but suprachiasmatically or orexin-driven suppressed. Diagnostic: this patient's sleep-wake cycle is on a hair trigger — consistent with orexin suppression model (orexin neurons are actively inhibited by microglial inflammation; removing the H3 brake releases histamine and counteracts the orexin deficit during wake but cannot be sustained during sleep). If headache is the ceiling → histamine-mediated vasodilation is the limiting factor; consistent with vascular hyper-reactivity (MCAS component). If pitolisant improves cognitive AND mast-cell symptoms → histaminergic anti-inflammatory mechanism (M1→M2 switch) confirmed. If pitolisant produces NO response at all → the histaminergic system is not the bottleneck — either H3 receptors are downregulated or histamine synthesis is depleted (rare: histidine deficiency or HNMT overactivity).
- *Valganciclovir dose-limited by bone marrow suppression before antiviral effect:* Valganciclovir inhibits viral DNA polymerase in EBV, HHV-6, CMV. Bone marrow suppression (neutropenia, anemia, thrombocytopenia) is dose-dependent. If neutropenia (ANC dropping below 1,500) occurs at subtherapeutic doses for antiviral effect (below 900 mg/day), the bone marrow has no haematopoietic reserve — implying chronic inflammation-driven myelosuppression, haematopoietic stem cell exhaustion, or cytokine-mediated suppression of granulopoiesis. Diagnostic: this patient cannot support an intensive antiviral trial without G-CSF support or marrow-protective strategies. If bone marrow suppression is absent even at full therapeutic doses (1,800 mg/day) → marrow reserve is intact, HSC pool is healthy — excludes HSC-level pathology and chronic myelosuppression as components of their ME/CFS. If valganciclovir causes renal toxicity (creatinine rise) at low doses → renal function is already compromised; acyclovir (renally cleared) cannot be safely dosed either. The pattern of which organ system hits its ceiling first (bone marrow vs kidney vs GI) identifies the weakest organ system in that patient — which may itself be a clue to their dominant pathology.
- *Valacyclovir dose-limited by CNS effects (confusion, hallucination) or renal toxicity:* Valacyclovir is renally cleared; CNS effects appear when renal clearance is impaired and acyclovir accumulates. If confusion or hallucinations occur at standard doses (1,000 mg TID) → renal clearance is subnormal even if serum creatinine is within normal range (creatinine can remain normal until ~50% GFR loss). Cystatin C should be measured to detect occult renal impairment. Diagnostic: this patient has subclinical renal insufficiency undetected by standard labs. The CNS toxicity is a pharmacodiagnostic for renal reserve, not CNS vulnerability. If CNS effects occur despite normal cystatin C and CrCl → blood-brain barrier integrity is compromised (neuroinflammation increases BBB permeability to acyclovir), or the patient is a CYP poor metabolizer with abnormally high valacyclovir-to-acyclovir conversion. If valacyclovir causes no renal or CNS effects at full dose after 6+ months → renal clearance and BBB integrity are intact — excludes both renal compromise and significant BBB disruption as components of their ME/CFS.
- *DORA (daridorexant, suvorexant, lemborexant) producing sleep paralysis or complex sleep behaviours before sleep maintenance improvement:* DORAs block OX1R/OX2R orexin receptors, suppressing wakefulness drive. Sleep paralysis (consciousness during REM atonia) or complex behaviours (sleep-walking) occur because orexin is not just a wake promoter — it also gates REM-NREM transitions and suppresses motor activity during REM. If sleep paralysis occurs at low doses (25 mg daridorexant) → the patient's orexin tone is critically low at baseline (consistent with the orexin-suppression model, @sec:microglial-cascade Step K2a); orexin receptor blockade pushes a system that was already near REM-entry threshold over the edge. Diagnostic: this patient has borderline narcolepsy-level orexin deficiency. A CSF orexin-A measurement is warranted. DORAs are contraindicated — this patient needs orexin agonism (pitolisant, OX2R agonist), not antagonism. If DORAs improve sleep maintenance without sleep paralysis → orexin tone is normal; the benefit comes from suppressing pathological nocturnal orexin surges, not from blocking absent orexin. If DORAs produce NO effect on sleep maintenance → orexin tone is so low that receptor blockade produces no further suppression (floor effect); consistent with severe orexin deficiency — the DORA is blocking receptors that are no longer being activated endogenously.
- *Trazodone dose-limited by next-day sedation or orthostatic hypotension before sleep initiation benefit:* Trazodone at 25--50 mg blocks 5-HT2A, H1, and α1 receptors. Next-day sedation at 50 mg → H1 receptor supersensitivity or slow CYP2D6 metabolism (the active metabolite mCPP accumulates). If the patient has severe morning fatigue on trazodone but sleep quality improves → the glymphatic benefit (slow-wave sleep enhancement via 5-HT2A blockade) is achieved but H1-mediated next-day sedation erases daytime function. The sedation ceiling identifies that H1 tone is the limiting system. Orthostatic hypotension at 25 mg → α1 receptor blockade is clinically significant; the patient's BP depends on α1 adrenergic tone (consistent with neuropathic POTS). If the patient tolerates trazodone 25 mg without next-day sedation → H1 receptors are desensitized (chronic histamine exposure from MCAS), and CYP2D6 metabolism is normal. This patient should try higher doses for slow-wave sleep enhancement. If trazodone produces priapism → a rare pharmacodiagnostic for intact α1-mediated vascular smooth muscle function in penile arteries (does not generalize as a systemic probe).
- *Low-dose doxepin (3--6 mg) producing no sedation improvement for sleep maintenance:* Doxepin at 3--6 mg is a pure H1 antagonist (no serotonergic/noradrenergic activity at this dose). If it fails to improve sleep maintenance → H1-mediated histaminergic arousal is not the cause of nocturnal awakenings. The awakenings are from a non-histaminergic mechanism: (a) orexin surges (consistent with orexin-suppression model — the system oscillates between suppression and rebound activation), (b) adrenergic surges (hyperadrenergic POTS, nocturnal sympathetic activation), or (c) pain-driven awakenings. If doxepin provides excellent sleep maintenance at 3 mg → histaminergic arousal is the dominant cause of awakenings; consistent with MCAS with CNS involvement (nocturnal mast cell degranulation → histamine release → arousal). If doxepin causes next-day sedation at 3 mg → H1 receptors are supersensitive, consistent with histaminergic insufficiency (not excess) — histamine is needed for daytime wakefulness and minimal blockade tips the patient into hypersomnia.
- *Melatonin (0.5--3 mg) producing paradoxical alertness or fragmented sleep:* Melatonin normally advances circadian phase and reduces sleep latency. Paradoxical alertness implies: (a) the patient's circadian phase is so severely delayed that melatonin given at the "normal" bedtime is hitting a phase where melatonin receptors are desensitized (the patient's endogenous melatonin peak is at 4 AM, not 11 PM); (b) melatonin is being metabolized abnormally (CYP1A2 ultra-rapid metabolizer → short duration of action triggers rebound arousal); or (c) the patient has a melatonin receptor polymorphism (MTNR1B variant) altering signalling direction. If melatonin causes vivid nightmares → melatonin disinhibits REM sleep in a patient with pre-existing REM sleep dysregulation (consistent with α-delta sleep, @sec:cns sleep section). If melatonin produces NO effect on sleep latency at 3 mg → either: (a) the patient's sleep-onset insomnia is not circadian (it is hyperarousal-driven — orexin/noradrenergic), (b) the pineal gland is producing maximal endogenous melatonin already (supplementation cannot add), or (c) MT1/MT2 receptors are downregulated from chronic exogenous supplementation or inflammation.

*Pattern 5 — Absence of an expected side effect.* The system that should produce the side effect is too damaged to respond.

- *Midodrine producing no piloerection (goosebumps) or scalp tingling at therapeutic doses:* α1 receptors on piloerector muscles and scalp vasculature are not responding. These are the most accessible clinical readouts of peripheral α1 receptor function. If midodrine raises BP but produces no piloerection, the vascular α1 receptors are functional but the cutaneous α1 receptors are denervated or desensitized — suggests a length-dependent sympathetic neuropathy (longest fibers to skin affected first). Diagnostic: confirms neuropathic POTS with small-fiber-predominant sympathetic denervation pattern. Skin biopsy for intraepidermal nerve fiber density (IENFD) should show reduction in lower extremities.
- *Caffeine producing no tachycardia or alertness:* Adenosine A2A receptors are desensitized from chronic overstimulation (patient has been self-medicating with caffeine for years), or the sympathetic nervous system cannot mount a catecholamine response to adenosine blockade. If caffeine produces no HR increase AND midodrine works → the sympathetic effector pathway is functional (α1 receptors respond to direct agonist) but the central sympathetic activation from adenosine blockade fails — consistent with central catecholamine deficiency (@ach:catecholamine-deficit).
- *Antihistamines producing no sedation:* Histamine H1 receptors in the CNS are already saturated or desensitized from chronic mast cell degranulation. The absence of the expected sedative side effect of first-generation antihistamines (diphenhydramine, hydroxyzine) implies: (a) the histaminergic arousal system is tonically suppressed — consistent with chronic mast cell activation maintaining high CNS histamine exposure, leading to H1 receptor downregulation; or (b) the orexin/histamine arousal axis is non-functional (consistent with orexin suppression model). Diagnostic: this patient has MCAS with CNS involvement. The absence of antihistamine sedation is a biomarker of chronic CNS histamine exposure.
- *Droxidopa producing no improvement in orthostatic symptoms:* Droxidopa is a synthetic NE precursor that crosses the BBB and is converted to NE by aromatic L-amino acid decarboxylase (AADC) in both central and peripheral neurons. Expected effect: increased NE → peripheral vasoconstriction → reduced orthostatic tachycardia. If droxidopa produces no orthostatic improvement → AADC activity is deficient or NE stores cannot be loaded (VMAT2 dysfunction) — the precursor arrives but cannot be converted or stored. If midodrine works but droxidopa does not → the lesion is presynaptic (NE synthesis/storage), not postsynaptic (α1 receptor). Confirms the catecholamine synthesis deficit model (@ach:catecholamine-deficit) and is consistent with VMAT2 terminal loss. If droxidopa causes supine hypertension without orthostatic benefit → AADC is active and NE is being synthesized, but the postsynaptic vasculature is desensitized — consistent with hyperadrenergic POTS (α1 receptors downregulated from chronic NE overstimulation). Diagnostic: droxidopa probes NE synthesis capacity; midodrine probes α1 receptor function. Together they distinguish presynaptic vs postsynaptic noradrenergic lesions.
- *Corticosteroids (prednisone, methylprednisolone, hydrocortisone) producing rapid improvement followed by severe crash on taper:* Expected: corticosteroids suppress inflammation broadly → symptom improvement within hours to days. Rapid improvement confirms that inflammation is driving symptoms — but the improvement does not distinguish viral, autoimmune, or mast-cell-mediated inflammation. The crash on taper is the diagnostic signal: if the patient crashes within 24--48 hours of dose reduction → the HPA axis is suppressed and cannot produce endogenous cortisol to compensate (iatrogenic adrenal insufficiency from even short-course steroids, consistent with underlying HPA axis dysfunction, @sec:hpa-axis). If the patient shows no improvement at all → inflammation is not rate-limiting for their current symptom state, or the inflammation is steroid-resistant (NF-κB-independent pathways, inflammasome-driven). Diagnostic: corticosteroid response localizes inflammation as present and rate-limiting but does not identify the source. The crash-on-taper identifies HPA axis fragility — this patient cannot produce endogenous glucocorticoids under stress.
- *CoQ10, NADH, creatine, or L-carnitine producing paradoxical fatigue worsening (not improvement):* These supplements support mitochondrial ATP production (ETC shuttle, electron donor, ATP buffer, fatty acid shuttle). Paradoxical worsening implies: (a) the mitochondrial defect is downstream of the supplementation point — the ETC is so damaged that increasing substrate flux generates ROS without ATP → oxidative stress worsens; (b) carnitine worsening → fatty acid oxidation is already maximal and pushing more substrate through β-oxidation generates lipid peroxides (consistent with impaired antioxidant capacity, low glutathione); or (c) CoQ10 worsening → Complex III is the bottleneck — pushing electrons into Complex I/II without functioning Complex III → electron leak → superoxide production. Diagnostic: absence of improvement is non-informative (common: mitochondrial supplements fail in patients whose bottleneck is not at the supplemented node). Worsening is informative: the supplementation node is intact but the downstream pathway is blocked — adding substrate increases ROS, not ATP. Discontinue and test the next node in the ETC. If CoQ10 worsens → try creatine (bypasses ETC entirely for ATP buffering). If carnitine worsens → try MCT oil (medium-chain triglycerides bypass carnitine-dependent transport).
- *L-DOPA/carbidopa producing severe nausea or orthostatic hypotension at 1/4 tablet (6.25/25 mg):* L-DOPA is converted to dopamine by AADC. Nausea is D2 agonism in area postrema; OH is peripheral D2-mediated vasodilation + central D2 sympathetic suppression. At 1/4 of the Parkinson's starting dose, these effects imply: (a) AADC activity is high (rapid peripheral conversion to dopamine before carbidopa blocks it) — or the patient is taking L-DOPA without adequate carbidopa co-administration; (b) D2 receptors are supersensitive (same receptor upregulation pattern seen with pramipexole and aripiprazole) — confirming chronic dopamine deficiency across multiple dopaminergic drugs; (c) the patient's orthostatic system is dopaminergically vulnerable — confirms neuropathic POTS with dopamine-dependent sympathetic tone. If L-DOPA produces cognitive benefit without nausea/OH → the DA deficiency is severe enough that the AADC step is rate-limiting (not enough endogenous L-DOPA substrate), but D2 receptors are not supersensitive — an intermediate dopamine deficiency phenotype. If L-DOPA produces NO cognitive benefit at all → the lesion is not at the DA synthesis level; either D2/D3 receptors are absent/desensitized, or the cognitive dysfunction is not dopaminergic.
- *Selegiline (MAO-B inhibitor) causing serotonin syndrome at subtherapeutic dose or interacting with previously cleared SSRI:* MAO-B inhibitors prevent dopamine degradation. Serotonin syndrome with a previously-tolerated SSRI after starting selegiline implies: (a) the prior SSRI was being metabolized by MAO-A (now also inhibited at higher selegiline doses, since MAO-B selectivity is lost above 10 mg/day); or (b) the patient is a CYP2D6 poor metabolizer → selegiline accumulates → MAO-A inhibition → serotonin accumulation. If the patient had stopped the SSRI 14 days ago but still develops serotonin syndrome → the SSRI or its active metabolite had an unusually long half-life (fluoxetine/norfluoxetine: 4--16 days), and 14 days was insufficient washout. Diagnostic: selegiline toxicity reveals CYP2D6 metabolizer status if dose was ≤10 mg/day, or washout adequacy if dose >10 mg/day. Never prescribe MAOIs in ME/CFS without genotyping CYP2D6 and verifying complete SSRI washout with a negative serum drug level.
- *Corticosteroid non-response despite high inflammatory markers:* If CRP/ESR are elevated and corticosteroids produce no symptom improvement → the inflammation is steroid-resistant. Distinguish: (a) inflammasome-driven inflammation (NLRP3 → IL-1β, IL-18 — corticosteroids do not suppress the inflammasome; colchicine or anakinra would work); (b) complement-driven inflammation (C3a/C5a anaphylatoxins — corticosteroids do not suppress complement activation; C1 inhibitor or eculizumab would work); (c) mast-cell-driven inflammation (histamine, tryptase, prostaglandins — corticosteroids partially suppress but mast cell stabilizers are more specific); or (d) the inflammation is a downstream consequence, not the driver — treating it doesn't change the disease trajectory. Diagnostic: steroid non-response despite systemic inflammation shifts focus to inflammasome/complement/mast-cell pathways.
- *Dimethyl fumarate (DMF) producing severe flushing or GI intolerance before Nrf2 benefit:* DMF activates Nrf2 (antioxidant master regulator). Flushing is prostaglandin D2-mediated from mast cell degranulation (DMF non-specifically activates hydroxycarboxylic acid receptor 2 on mast cells). If flushing is severe at 120 mg → mast cells are hyper-reactive. Pre-treat with aspirin (COX inhibitor, blocks PGD2 production) — if aspirin prevents DMF flushing, the mechanism is mast-cell PGD2 release, confirming MCAS. GI intolerance → gut Nrf2 activation causes initial oxidative shift in enterocytes; if GI symptoms persist beyond 2 weeks, gut mucosa cannot adapt. Diagnostic: DMF flushing is a mast cell probe. Mild flushing is expected and non-informative. Severe flushing → active MCAS. Flushing prevented by aspirin → confirms prostaglandin-mediated MCAS (PGD2 subtype), distinct from histamine-mediated MCAS.
- *BC007 or immunoadsorption producing complete non-response:* Both remove GPCR autoantibodies (BC007 via aptamer neutralization, IA via physical removal). Complete non-response after adequate cycles implies: (a) GPCR AAbs are not present in this patient (should be confirmed by pre-treatment AAb panel), (b) GPCR AAbs are present but not rate-limiting — downstream damage is irreversible, or (c) the relevant AAbs are IgM (not removed by IA protein A columns) or rapidly regenerated from a protected plasma cell pool. If BC007 works where IA did not → the relevant AAbs are not removed by protein A columns (IgG3 subclass or IgA), or IA removed them but synthesis outpaced clearance — BC007 neutralizes faster than the body can produce new AAbs. If IA works where BC007 did not → the AAb target is not one of BC007's known aptamers (BC007 targets specific GPCR AAbs). Diagnostic: BC007 response vs IA response narrows the AAb subtype and identifies whether the dominant mechanism is circulating antibody or tissue-bound antibody.

=== Synthesis: Response + Reaction = Bidirectional Probe

The therapeutic response tells you which node in the cascade is *broken* — the drug compensated for a deficit, localizing the lesion. The side-effect profile tells you which nodes are *intact enough to react* — and which are so damaged they cannot even produce the expected adverse response. Together, the response and the reaction bracket the lesion:

| Drug | Positive response tells you | Side effect tells you |
|---|---|---|
| LDN | Neuroinflammation/TRPM3 present | Sedation → orexin critically low. Dysphoria → opioid-dependent homeostasis. No response to either → TLR4/opioid systems non-functional or non-contributory |
| Midodrine | Vasculature α1-responsive | Hypertension at minimal dose → denervation hypersensitivity (neuropathic POTS). No piloerection → length-dependent sympathetic neuropathy. No BP response at all → α1 receptors absent/blocked (GPCR AAb) |
| Pyridostigmine | Cholinergic signaling intact at ganglia | Severe GI cramping → gut muscarinic hypersensitivity (enteric denervation). No HRV improvement → vagal efferent pathway non-functional |
| Aripiprazole | Dopamine D2/D3 signaling rate-limiting | Akathisia at microdose → severe dopamine deficiency with supersensitive receptors. No response AND no side effects → D2/D3 system is neither deficient nor responsive (off-target lesion) |
| Pramipexole | RLS relief → D2/D3 postsynaptic receptors intact and responsive | Nausea + dizziness at RLS dose → D2/D3 supersensitivity in area postrema + cardiovascular centres (chronic DA deficiency → receptor upregulation). If nausea without dizziness → D2 receptors supersensitive in area postrema only; cardiovascular D2/D3 desensitized (atypical dissociation). If no nausea AND no dizziness at full dose → D2/D3 in area postrema and cardiovascular centres are too damaged to respond (Pattern 5 — D2 agonism ineffective in this patient for any indication) |
| Beta-blockers | HR reduction without fatigue worsening → sympathetic overactivation isolated to HR, not metabolism | Fatigue worsens → β2-AR lipolysis was metabolic fallback. Implies PDH/ETC glucose-to-ATP impairment |
| Fludrocortisone | Hypovolemia present (RAAS paradox) | Worsening orthostasis → venous pooling dominant (CT laxity), not hypovolemia. Hypokalemia at standard dose → renal aldosterone sensitivity intact despite central RAAS paradox (RAAS defect localized to renin) |
| Memantine | NMDA excitotoxicity rate-limiting | Sedation at low dose → basal glutamate tone already low. Implies kynurenic acid dominance, not quinolinic acid excess |
| Caffeine | — | No tachycardia → central sympathetic activation failure (CNS NE deficiency). No alertness → adenosine A2A receptors desensitized |
| Antihistamines (H1: cetirizine, fexofenadine, loratadine, rupatadine) | MCAS symptom reduction → mast cell degranulation is rate-limiting for flushing, pruritus, GI, rhinitis | No sedation at 4× dose → CNS H1 receptors desensitized from chronic mast cell histamine exposure (MCAS with CNS involvement). Dose-dependent somnolence → H1 receptors are intact and responsive; MCAS is peripheral-only (BBB intact). Rupatadine response at standard dose where other H1s require 4× → PAF antagonism component is providing benefit → PAF is rate-limiting for mast-cell-driven symptoms, not histamine alone |
| Ketotifen | Mast cell degranulation rate-limiting for MCAS symptoms | Severe sedation at 0.5 mg → histaminergic wakefulness depends on mast-cell-derived histamine (patient is "held awake" by MCAS). No sedation + MCAS improvement → H1 receptors intact but ketotifen benefits via mast cell stabilization, not H1 block. No effect at all → mast cells not rate-limiting |
| Famotidine/Cimetidine | H2 receptor-blocked → gastric histamine or T-cell modulation (cimetidine) is rate-limiting | Depression/suicidal ideation → "paradoxical reactor" phenotype extended to histaminergic system. If famotidine causes depression but cimetidine does not → off-target effect, not H2 class effect. If cimetidine causes depression but famotidine does not → CYP450-mediated drug interaction (endogenous steroid or antidepressant metabolism altered) |
| Cromolyn sodium | Gut mast cell degranulation rate-limiting for GI symptoms | No GI benefit → gut mast cells are not the dominant source of systemic MCAS (CNS or systemic mast cells dominate), or cromolyn cannot access the relevant mucosal layer. No GI side effects at all → gut mucosa is either intact and non-reactive, or so damaged it cannot mount a response to the topical agent |
| DORA (daridorexant) | Suppress pathological nocturnal orexin surges → sleep maintenance | Sleep paralysis at low dose → orexin tone critically low (borderline narcolepsy); DORA contraindicated — need orexin agonism. No effect on sleep → orexin tone already at floor (severe deficiency). No sleep paralysis + improved maintenance → orexin tone normal |
| Trazodone | 5-HT2A blockade → slow-wave sleep enhancement → glymphatic support | Next-day sedation at 50 mg → H1 supersensitivity or slow CYP2D6 metabolism. OH at 25 mg → α1 adrenergic dependence for BP (neuropathic POTS). No next-day sedation → H1 desensitized (MCAS); CYP2D6 normal |
| Doxepin (low-dose) | Pure H1 antagonism → sleep maintenance | Excellent sleep at 3 mg → histaminergic arousal is dominant cause of awakenings (MCAS with CNS involvement). No effect → awakenings are non-histaminergic (orexin, adrenergic, or pain-driven). Next-day sedation at 3 mg → H1 supersensitivity; histaminergic insufficiency, not excess |
| Melatonin | Circadian phase advancement → sleep latency | Paradoxical alertness → severely delayed circadian phase or CYP1A2 ultra-rapid metabolism. Vivid nightmares → REM sleep disinhibition (α-delta sleep). No effect at 3 mg → sleep-onset insomnia is hyperarousal-driven (not circadian), pineal output already maximal, or MT1/MT2 downregulated |
| Methylphenidate | Cognitive benefit → NE deficiency rate-limiting (DBH/LC-NE pathway) | Tachycardia ceiling → hyperadrenergic POTS; atomoxetine preferred (pure NRI). Crash ceiling → DA depletion + mitochondrial ATP deficit; add CoQ10/NADH. Insomnia ceiling → DAT occupancy too high for orexin drive; switch to modafinil |
| Amphetamines | Immediate cognitive/energy response → VMAT2-dependent DA release intact | Severe post-dose crash (PEM-like, weeks-long) → VMAT2 terminal compromise; confirms Liu 2026 DTBZ PET pattern. Never re-challenge. No response + no crash → DAT absent/saturated or DA system not rate-limiting |
| Modafinil/Armodafinil | DAT-mediated DA increase | Insomnia ceiling → orexin/histamine axis intact + DA-sensitive; try pitolisant. Next-day fatigue ceiling → energy reserve is bottleneck. No response → DAT dysfunctional (absent/blocked/AAb) |
| Solriamfetol | DA component of DNRI → cognitive benefit | BP/HR ceiling with no cognitive benefit → prefrontal α2A desensitization (NE available but PFC cannot use it); try guanfacine. Cognitive benefit with no BP/HR → DA system is the bottleneck, not NE |
| Pitolisant | Histaminergic anti-inflammatory (M1→M2) + cognitive | Insomnia ceiling → histaminergic system on hair trigger (consistent with orexin suppression model). Headache ceiling → histamine-mediated vasodilation (MCAS vascular hyper-reactivity). No response → histaminergic system not bottleneck (H3 downregulation or histamine depletion) |
| IVIG | GPCR AAb present + rate-limiting | Transient flare (48--72h) → confirms AAb neutralization + complement activation; flare persistence >7 days → complement-MCAS amplification loop. No flare + no response → no AAb, AAb not rate-limiting, or profound immune exhaustion |
| Rituximab | B-cell depletion effective → AAb from dividing plasmablasts | No response → AAb from long-lived plasma cells (rituximab-spared); try daratumumab. Transient response (weeks→relapse) → B-cell repopulation re-drives AAb; AAb are rate-limiting but source regenerates |
| Valacyclovir | Herpesvirus reactivation is rate-limiting → viral DNA polymerase active | No renal/CNS side effects despite high doses → renal clearance + BBB intact. If no response despite adequate dose/duration → EBV/HHV-6 reactivation is not rate-limiting for this patient OR virus is in sanctuary site (CNS, DRG) not accessible to oral acyclovir. Renal toxicity at standard dose → renal function severely impaired; switch to foscarnet (non-renal clearance) if antiviral trial essential |
| Valganciclovir | Broad-spectrum antiviral response (HHV-6, CMV, EBV) → herpesvirus replication is rate-limiting. Response where valacyclovir failed → EBV/HHV-6 in tissue sanctuary accessed by ganciclovir but not acyclovir | Bone marrow suppression (neutropenia, anemia, thrombocytopenia) at subtherapeutic doses → bone marrow reserve is already exhausted (consistent with chronic inflammation-driven myelosuppression or HSC exhaustion). Severe GI at standard dose → gut mucosa is inflamed/reactive (MCAS or enteric viral replication). No bone marrow suppression despite high doses → bone marrow reserve intact, HSC pool preserved — excludes HSC-level pathology. No response after 12-week trial → herpesvirus replication is not rate-limiting in this patient, regardless of PCR/HIT status |
| Gabapentin/Pregabalin | Neuropathic pain relief → α2δ-CaV channels functional + rate-limiting for pain | Severe sedation/cognitive at minimal dose → central sensitization so severe that minimal CaV blockade collapses CNS activation; α2δ channels upregulated from chronic calcium dysregulation. Paradoxical agitation → GAD dysfunction (glutamate accumulation). Tolerability ceiling → consider PEA, LDN, or ketamine instead |
| Duloxetine | NE/5-HT reuptake beneficial → noradrenergic or serotonergic deficiency is rate-limiting for pain/cognition/mood | Anticholinergic symptoms (not expected from duloxetine) → subclinical AChE deficiency or undiagnosed Sjögren's. Severe nausea at 30 mg → 5-HT3 receptor hypersensitivity in gut (serotonergic gut hypersensitivity; consistent with 5-HT depletion peripherally + receptor upregulation gut). No response + no side effects → NE/5-HT systems are neither deficient nor responsive; lesion is non-monoaminergic |
| Amitriptyline | NE/5-HT reuptake + H1 + M1 antagonism → pain, sleep, glymphatic benefit | Severe sedation at 5--10 mg → H1 receptor supersensitivity; histaminergic wakefulness drive is fragile (consistent with orexin/histamine dysfunction). Anticholinergic at low dose → M1 receptor supersensitivity (compensatory upregulation from low basal ACh). No sedation at 25 mg → H1 receptors desensitized (chronic histamine exposure from MCAS) |
| Atomoxetine | Pure NE reuptake inhibition → cognitive benefit | Tachycardia/BP increase with cognitive benefit → NE deficiency confirmed; prefrontal α2A intact. No cognitive benefit despite BP/HR → prefrontal NE system is postsynaptically desensitized (α2A downregulated); lesion is at receptor, not at NE synthesis. Guanfacine should work |
| Droxidopa | NE synthesis from precursor → orthostatic improvement | No orthostatic benefit + midodrine works → presynaptic NE synthesis/storage deficit (AADC or VMAT2). Confirms catecholamine synthesis deficit model. Supine HTN without orthostatic benefit → postsynaptic α1 desensitization (hyperadrenergic POTS). Midodrine + droxidopa together: presynaptic vs postsynaptic noradrenergic lesion resolved |
| L-DOPA/Carbidopa | DA synthesis from L-DOPA → cognitive/motor benefit | Severe nausea/OH at 1/4 tablet → D2 supersensitivity (same pattern as pramipexole and aripiprazole); DA deficiency confirmed across multiple drug classes. No cognitive benefit → lesion not at DA synthesis; D2/D3 absent/desensitized or cognitive dysfunction is non-dopaminergic |
| Corticosteroids | Broad anti-inflammatory response → inflammation is rate-limiting | Rapid improvement → inflammation drives symptoms (does not distinguish viral/autoimmune/mast cell). Crash on taper → HPA axis fragile; iatrogenic adrenal insufficiency. No improvement → steroid-resistant inflammation (inflammasome, complement, mast cell) or inflammation is downstream, not causal |
| CoQ10 / L-carnitine / D-ribose (mitochondrial supplements) | Mitochondrial substrate supplementation → ATP improvement | Worsening, not improvement → downstream ETC bottleneck; substrate flux increases ROS, not ATP. CoQ10 worsen → Complex III block. Carnitine worsen → lipid peroxide overload (low glutathione). D-ribose worsen → hypoglycemia (insufficient gluconeogenesis). Absence of benefit → bottleneck not at supplemented node |
| BC007 / Immunoadsorption (IA) | GPCR AAb removal → autoimmune component rate-limiting | Complete non-response → GPCR AAbs absent or not rate-limiting. BC007 works where IA fails → AAb subtype not removed by protein A (IgG3, IgA) or synthesis outpaces IA clearance. IA works where BC007 fails → AAb target not among BC007 aptamers |
| DMF (dimethyl fumarate) | Nrf2 activation → antioxidant/anti-inflammatory | Severe flushing at 120 mg → mast cell hyper-reactivity. Flushing prevented by aspirin → confirms PGD2-mediated MCAS (distinct from histamine-mediated MCAS). GI persists >2 weeks → gut mucosa cannot adapt to Nrf2 shift |
| Aspirin / NSAIDs | COX-1/COX-2 inhibition → pain/inflammation reduction | Worsening of MCAS symptoms → COX inhibition triggers mast cell histamine release (HIT/MCAS patients). Flushing prevented by aspirin before DMF → confirms mast cell PGD2 pathway. No pain benefit → pain is non-inflammatory (neuropathic, central sensitization) |
| Minocycline / Doxycycline | Anti-microglial, anti-astrocyte, MMP-9 inhibition | Severe vestibular symptoms (minocycline) → CNS vestibular system vulnerable (consistent with brainstem neuroinflammation). Photosensitivity (doxycycline) → intact drug metabolism, skin photosensitivity. No anti-inflammatory benefit at subantimicrobial doses → MMP-9 or microglial activation is not rate-limiting |

*Consequence:* Every medication trial in ME/CFS should track not just "did it work?" but also "what side effects appeared and at what dose?" and "what expected side effects were ABSENT?" The pattern of which systems react and which don't is as informative as the therapeutic response. A patient who gets severe akathisia at 0.5 mg aripiprazole has just had their dopamine receptor sensitivity measured without a PET scan. A patient who gets no piloerection from midodrine has just had their peripheral sympathetic nerve fiber integrity tested without a skin biopsy. This is pharmacology as functional neurophysiology — the drug IS the diagnostic test.

*Origin:* mechanistic-pathway-tracing, prompted by user question 2026-07-21.

== Synthesis: Differential Diagnostic Algorithm
<sec:synthesis-algorithm>

*Certainty: 0.25.* This algorithm is a constructed framework from mechanistic-pathway-tracing logic. Never tested prospectively in patients. Individual probes have their own evidence bases at varying certainty; the COMBINATION logic linking them into a diagnostic sequence is entirely inferential.

*Step 1 — The first probe:* LDN (energy-neutral, broadest coverage: neuroinflammation + TRPM3 + orexin + endorphin). If response → neuroinflammation/TRPM3 present.

*Step 2 — Distinguishing neuroinflammation source:* If LDN+ → try taVNS. If taVNS+ → CAP intact, vagal afferent deficit. If taVNS- → CAP blocked (GPCR AAb likely). Try IA/BC007.

*Step 3 — The noradrenergic/dopaminergic probe:* If fatigue + cognitive + PEM dominant → try atomoxetine (NRI). If atomoxetine+ → NE deficiency rate-limiting. If atomoxetine- → try aripiprazole. If aripiprazole+ → DA dysfunction rate-limiting (lesion at or above D2/D3). If aripiprazole- → lesion below D2/D3 or non-dopaminergic.

*Step 4 — The energy bottleneck probe:* If PEM/exercise dominant → try CoQ10 + pyridostigmine sequentially. CoQ10+ → mitochondrial level. Pyridostigmine+ → delivery level. Distinguish per @sec:perfusion-vs-mito-node.

*Step 5 — The mechanical probe:* If positional modulation OR physical asymmetry on examination → try shoe lift (2-week trial). Response → Gerlier 4-pathway confirmed. Map pathway contributions per @sec:gerlier-dopamine-node.

*Step 6 — Synthesis:* Combine responses across steps 1-5 to localize the lesion and identify root cause candidates. Crucially, also incorporate the side-effect profile from each drug trialed (Section @sec:side-effects-diagnostic) — which expected side effects were exaggerated, absent, or paradoxical. The therapeutic response tells you what's broken; the side-effect profile tells you what's intact and where the regulatory margin is thinnest. The pattern of responses — not any single response — is the diagnostic tool.

*Consequence:* This 6-step sequence is the practical output of the entire chapter. Start with the broadest, safest, most energy-neutral probe (LDN). Use each response to narrow the diagnostic field. At each step, a null response is as informative as a positive one — it pushes the bottleneck downstream and eliminates classes of upstream mechanisms. The goal is not to find "the" medication but to localize "the" level at which pathology is rate-limiting in that patient. This is diagnostic pharmacology — treatment as measurement.
*Origin:* mechanistic-pathway-tracing, prompted by Gerlier 2026-07-21.
