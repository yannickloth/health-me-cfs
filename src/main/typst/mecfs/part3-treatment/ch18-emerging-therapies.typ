#import "../shared/environments.typ": *

= Experimental and Emerging Therapies
<ch:emerging-therapies>

This chapter explores therapies at the frontier of ME/CFS treatment---approaches with theoretical rationale but limited clinical validation. Some represent extensions of established medical science; others venture into more speculative territory. The heterogeneous nature of ME/CFS suggests that different patients may require fundamentally different interventions, making this exploratory landscape particularly relevant.

#observation(title: [Clinician Quick Reference: Actionability by Intervention Category])[
*Available now (off-label, with supportive evidence):*
- CoQ10 200~mg + NADH 20~mg daily: Highest-quality current evidence (RCT n=207 @CastroMarrero2021CoQ10); appropriate for discussion with all patients
- Pyridostigmine 30--60~mg: Two positive controlled hemodynamic studies @Joseph2022pyridostigmine @Squires2023pyridostigmine; appropriate for patients with documented orthostatic intolerance or preload failure
- Low-dose naltrexone 1.5--4.5~mg: Convergent evidence across fibromyalgia and ME/CFS case series; reasonable to offer patients unresponsive to first-line symptomatic management (see Chapter @sec:sigma1-fluvoxamine)
- Fluvoxamine 25~mg: Sigma-1 receptor agonism with small ME/CFS trial support (see Chapter @sec:sigma1-fluvoxamine)

*Active clinical trials (consider referring eligible patients):*
- Vericiguat (NCT05697640, Charité Berlin): Ion homeostasis via sGC stimulation
- Trimetazidine (TRI-ME, Australia): Metabolic cytoprotection

*Requires specialist referral / institutional setting:*
- Transcranial magnetic stimulation (rTMS): Neurological specialist; inpatient preferred for moderate-severe patients
- Immunotherapy approaches (IVIG, immunoadsorption): Immunology/rheumatology

*Research-stage only (do not offer clinically):*
- MDC002 (Mitodicure): Preclinical only as of early 2026
- Rimeporide, ranolazine for AIMM: No ME/CFS trial data
- Emergency PEM Protocol: Hypothesis-driven; discuss mechanism with patient; not a validated clinical protocol
- Cycle gain measurement: Research proposal only

*Not recommended outside formal research:*
- Stem cell therapy (marketed variants): No evidence; significant harm potential
- HBOT: Insufficient ME/CFS-specific evidence
]

== Novel Therapeutic Frameworks
<sec:novel-frameworks>

Before examining specific interventions, several overarching conceptual frameworks offer novel approaches to treatment design.

#hypothesis(title: [Metabolic State Transition])[
*Certainty: 0.25.* ME/CFS may represent a stable but maladaptive metabolic state---analogous to cellular "hibernation" or the evolutionarily conserved sickness behavior response that became pathologically persistent. The body entered a low-energy conservation mode in response to an initial trigger (infection, trauma, severe stress) but failed to receive or respond to the "all clear" signal to return to normal metabolism. If true, effective treatment may require interventions that trigger metabolic state transitions rather than symptom suppression. Candidate approaches include:

- Controlled metabolic stressors (fasting, hypoxia, temperature extremes) that force cellular adaptation
- Interventions targeting metabolic switching pathways (AMPK activation, mTOR modulation)
- Circadian rhythm reset protocols combining light therapy, meal timing, and temperature cues

This framework suggests that gradual, gentle interventions may perpetuate the maladaptive state, while carefully designed acute challenges might catalyze transition---though the risks of such approaches in a population with impaired stress tolerance are substantial. *Falsifiable prediction*: Protocols that include a controlled metabolic stressor (e.g., a single 24-hour fast or brief hypoxic exposure) will outperform matched controls receiving pacing alone on 6-month SF-36 PF score in a prospective trial.
]

#hypothesis(title: [Cellular Danger Response Persistence])[
*Certainty: 0.25.* Robert Naviaux's cell danger response (CDR) hypothesis @Naviaux2014cdr proposes that cells remain stuck in a defensive metabolic mode characterized by reduced mitochondrial function, altered purinergic signaling, and maintained inflammatory readiness. The CDR evolved as a protective response to threats, but in ME/CFS, the "threat resolved" signal may never arrive or may not be recognized. Therapeutic implications include:

- Antipurinergic therapy (suramin showed promise in an autism pilot trial @Naviaux2018suraminpilot; ME/CFS trials have not been conducted)
- Modulating extracellular ATP signaling through P2X/P2Y receptor antagonists
- Reducing triggers that maintain CDR activation (chronic infections, gut dysbiosis, environmental toxins)
- Flavonoids with antipurinergic properties (quercetin, luteolin) as accessible alternatives

*Falsifiable prediction*: A sham-controlled trial of antipurinergic therapy in ME/CFS will show significant reduction in post-exertional symptom severity relative to sham, with effect size SMD #sym.gt 0.4.
]

#hypothesis(title: [Glymphatic Dysfunction and Neuroinflammatory Persistence])[
*Certainty: 0.20.* Sleep in ME/CFS is characteristically non-restorative despite adequate duration. The glymphatic system---the brain's waste clearance mechanism---operates primarily during deep sleep @Xie2013glymphatic. If glymphatic function is impaired, neuroinflammatory debris may accumulate, perpetuating microglial activation and cognitive dysfunction. Testable interventions include:

- Sleep architecture optimization targeting slow-wave sleep (when glymphatic clearance peaks)
- Sleep position modification (lateral sleeping may enhance glymphatic flow)
- Agents that improve glymphatic function (low-dose naltrexone reduces neuroinflammation; specific anesthetics enhance glymphatic clearance in animal models)
- Timing of hydration (adequate fluids without excessive evening intake)
- Omega-3 fatty acids (AQP4 water channel function depends on membrane composition)

*Contested model:* The glymphatic hypothesis has been challenged on methodological grounds. Smith and Verkman (2018) argued that the evidence for bulk convective cerebrospinal fluid flow through perivascular spaces---the proposed mechanism---relies on experimental artefacts (dye injection techniques) and is inconsistent with the known physical properties of brain parenchyma; diffusion rather than bulk flow may explain tracer spread @SmithVerkman2018glymphatic. This critique does not invalidate the association between SWS and cognitive recovery, but challenges the specific glymphatic mechanism. If the critique is correct, interventions targeting aquaporin-4 (AQP4) water channels directly would be less relevant, while interventions improving SWS quality for other reasons (melatonin, sleep hygiene) remain valid.

*Falsifiable prediction*: ME/CFS patients with objectively impaired slow-wave sleep (polysomnography SWS #sym.lt 10% of TST) will show higher neuroinflammatory markers (PET or MRS) and greater cognitive impairment than ME/CFS patients with preserved SWS, independent of total sleep time. This prediction holds regardless of whether the mechanism is glymphatic bulk flow or SWS-dependent diffusion enhancement.
]

#limitation(title: [Emerging Therapies: Pre-Validation Evidence Throughout])[
All interventions in this chapter are experimental or unvalidated for ME/CFS. Key epistemic boundaries apply to the entire chapter:

- No intervention described below has been tested in a randomized, placebo-controlled trial specifically in ME/CFS unless explicitly stated. Open-label designs, case series, and single-arm pilots dominate the evidence base.
- The "metabolic state transition," "cell danger response persistence," and "glymphatic dysfunction" therapeutic frameworks are hypothesis-driven; treatment protocols derived from them are speculative extrapolations, not evidence-based protocols.
- Cross-condition extrapolation (e.g., FMT efficacy from _C.~difficile_ infection, non-invasive VNS from migraine, HBOT from wound healing) does not establish efficacy in ME/CFS; the shared-symptom assumption underlying such transfers may be incorrect.
- Supplement and peptide therapies (BPC-157, thymosin alpha-1) often lack human pharmacokinetic data; dosing, bioavailability, and safety profiles are incompletely characterized.
]

=== Transcranial Magnetic Stimulation in ME/CFS
<subsubsec:tms-mecfs>

Repetitive transcranial magnetic stimulation (rTMS) delivers brief, focused magnetic pulses through the skull to modulate cortical excitability. It is FDA-approved for treatment-resistant depression and has established efficacy in fibromyalgia and chronic pain. Its application to ME/CFS remains investigational, but a convergence of neurophysiological evidence and early clinical data warrants detailed examination.

*Neurophysiological Rationale*

TMS used as a _diagnostic_ probe---not a therapy---has revealed objectively abnormal motor cortex function in CFS patients. Samii et al. found that after exercise, healthy controls showed motor evoked potential (MEP) amplitudes at 218% of baseline, while CFS patients reached only 126%---a near-absence of the normal post-exercise facilitation response @Samii1996TMS. Starr et al. confirmed significantly higher resting motor thresholds (reduced cortical excitability) and absent post-exercise MEP facilitation in CFS @Starr2000TMS. Davey et al. demonstrated that motor performance deficits correlated with changes in corticospinal excitability, supporting a neurophysiological rather than psychological basis for motor dysfunction @Davey2003TMS.

These findings establish that the motor cortex in ME/CFS is hypoexcitable and fails to modulate normally in response to physiological challenge---precisely the kind of dysfunction that rTMS is designed to address.

*Clinical Evidence in ME/CFS*

All therapeutic studies to date come from two related Japanese research groups and lack sham controls:

- *Kakuda et al. (2016)*: Case series, n=7 (5 completed). High-frequency rTMS to left dorsolateral prefrontal cortex (DLPFC) over 3 days. Most patients showed improvement on Visual Analogue Scale fatigue and Brief Fatigue Inventory. Two required intensity reduction for mild adverse reactions @Kakuda2016rTMS.

- *Yang et al. (2020)*: Open-label, n=22 (9 severe, 13 mild). 10~Hz high-frequency rTMS to prefrontal cortex. Fatigue improved regardless of baseline severity, with significant VAS reductions at discharge and 2-week follow-up @Yang2020rTMS.

- *Miwa & Inoue (2023)*: Open-label, n=30. Dual-target intermittent theta burst stimulation (iTBS) to left DLPFC and left primary motor cortex (M1), 600 pulses per site, 10 sessions over 2-week hospitalization. Results: 67% achieved ≥2-point improvement on performance status; orthostatic intolerance resolved in 83% (10/12); disequilibrium resolved in 88% (15/17); pain improved in 70% (7/10). Median performance status decreased from 7 to 5 (p#sym.lt 0.01) @Miwa2023rTMS.

- *Miwa (2025)*: Extension study, n=13 treated of 160 assessed. Same dual-target iTBS protocol. 85% (11/13) recovered balance function. Static disequilibrium prevalence 25%, kinetic 44% in the assessed cohort @Miwa2025rTMS.

#limitation(title: [Absence of Sham-Controlled Evidence])[
No sham-controlled trial of rTMS has been conducted in ME/CFS. The total therapeutic sample across all studies is approximately 72 patients, drawn from two related groups in Japan. TMS produces expectancy effects (the coil clicks, the scalp tingles, patients know they are receiving "brain stimulation"), making open-label results vulnerable to placebo confounding. Sham TMS uses an identical-appearing coil angled away from the scalp or a purpose-built sham coil that reproduces auditory and tactile sensations without delivering cortical stimulation. Until sham-controlled data are available, the ME/CFS-specific results cannot establish efficacy. No dedicated ME/CFS rTMS trial is currently registered on ClinicalTrials.gov.
] <lim:tms-no-sham>

*Indirect Evidence from Fibromyalgia*

The fibromyalgia literature provides the strongest indirect support for rTMS in ME/CFS, given the substantial symptom overlap between the two conditions. Critically, this evidence _does_ survive sham control:

- *Toh et al. (2022) meta-analysis*: 11 sham-controlled RCTs, 303 patients. rTMS was superior to sham for pain (SMD = −0.35, p=0.01) and quality of life (SMD = −0.51, p=0.0003). No significant effect on depression or anxiety @Toh2022fibrorTMS.

- *Su et al. (2021) meta-analysis*: 18 RCTs, 643 patients. Significant reduction in disease impact (SMD = −0.700), pain, depression, and anxiety. Effects persisted at 1.5--3 months follow-up @Su2021fibrorTMS.

- *Lefaucheur et al. (2020) guidelines*: Assigned *Level B evidence (probable efficacy)* for high-frequency rTMS of left M1 or DLPFC in fibromyalgia @Lefaucheur2020NIBS. ME/CFS was not separately graded due to insufficient evidence.

The fibromyalgia evidence demonstrates that rTMS produces real, sham-controlled effects on pain and quality of life in a related condition---but the effect sizes are modest, and it remains unknown whether these effects extend to the cardinal features of ME/CFS (post-exertional malaise, immune dysfunction, autonomic failure) that distinguish it from fibromyalgia.

#speculation(title: [rTMS as Neuromodulatory Intervention for ME/CFS Motor and Autonomic Dysfunction])[
The convergence of (1)~objectively demonstrated motor cortex hypoexcitability in ME/CFS @Samii1996TMS @Starr2000TMS @Davey2003TMS, (2)~consistent improvement in orthostatic intolerance and disequilibrium in open-label dual-target rTMS @Miwa2023rTMS @Miwa2025rTMS, and (3)~sham-controlled efficacy for pain and function in the overlapping condition of fibromyalgia @Toh2022fibrorTMS @Su2021fibrorTMS suggests that rTMS targeting DLPFC and M1 may address specific neurological components of ME/CFS---particularly autonomic dysregulation, vestibular dysfunction, and central fatigue perception. The dual-target approach (DLPFC for executive and fatigue-perception circuits; M1 for motor cortex excitability restoration) has a stronger mechanistic rationale than single-target protocols.

*Testable prediction*: A sham-controlled trial of dual-target iTBS in ME/CFS, stratified by baseline orthostatic intolerance severity, would show significant improvement in tilt-table tolerance and disequilibrium in the active group versus sham, with effect sizes comparable to or exceeding the fibromyalgia pain literature (SMD #sym.gt 0.35). If sham-controlled effects are absent or negligible, the open-label results should be attributed to placebo/expectancy.

*What this would not address*: rTMS targets cortical and corticospinal circuits. It has no direct mechanism to correct the peripheral immune dysfunction (NK cell cytotoxicity, T cell exhaustion), mitochondrial impairment, or gut dysbiosis documented in ME/CFS. Even if effective for neurological symptoms, rTMS would likely need to be combined with interventions targeting these other domains. There is also no evidence that rTMS prevents or mitigates post-exertional malaise.

*Certainty*: 0.30 (low). Mechanistic rationale is sound but direct ME/CFS evidence is entirely open-label, from a single country, with small samples.
] <spec:tms-mecfs>

*Practical Considerations for ME/CFS Patients*

#warning-env(title: [TMS Access and Safety in ME/CFS])[
rTMS requires attendance at a clinical facility for repeated sessions (typically 10--20 over 2--4 weeks), which imposes significant ambulatory and orthostatic demands on patients with limited upright tolerance. The Miwa protocol addresses this through inpatient hospitalization, but outpatient protocols may be poorly tolerated by moderate-to-severe patients. No study has assessed whether rTMS sessions trigger post-exertional malaise. Standard contraindications include metallic cranial implants, personal history of epilepsy, and pregnancy. Seizure risk with standard parameters is low (#sym.lt 0.1%) but has not been specifically evaluated in the context of ME/CFS neuroinflammation. NICE does not recommend TMS for ME/CFS symptom management.
]

== PEM Prevention Strategies
<subsec:pem-prevention>

=== Mechanistic Foundation: The 24--72 Hour Window

Post-exertional malaise exhibits a characteristic delayed onset, with symptoms typically peaking 24--72 hours after the triggering activity (see Chapter @ch:core-symptoms, @sec:pem for detailed mechanistic discussion). This delay creates both a challenge and an opportunity: the window between exertion and symptom onset represents a potential intervention period to abort or mitigate the crash cascade.

The delay mechanisms most amenable to intervention include:

*Tier 1: Primary Intervention Targets.*

- *ATP depletion cascade*: Cells maintain apparent function during exertion through phosphocreatine and glycolytic buffering, but underlying ATP pools progressively deplete. When ATP falls below approximately 30% of normal (estimated from general cellular bioenergetics) 24--48h post-exertion, catastrophic multi-system failure occurs. _Intervention target_: Provide ATP substrates to prevent threshold crossing.

- *Mitochondrial removal-regeneration gap*: Exercise-induced ROS damage triggers mitophagy (initiation 6--12h, peak overnight), removing damaged mitochondria before biogenesis replaces them (initial recovery 24--72h, complete turnover 10--15 days). During this period, functional mitochondrial mass drops 30--50% (theoretical estimate based on removal-before-replacement dynamics), creating energy crisis. _Intervention target_: Accelerate biogenesis, minimize oxidative damage.

- *NAD#super[+] depletion via PARP activation*: DNA damage from exercise activates PARP enzymes, consuming NAD+ at 100--1000× normal rates (extrapolated from general PARP biochemistry). Since NAD+ is required for ATP synthesis, this creates a vicious cycle reaching critical depletion at 24--72h. _Intervention target_: Provide NAD+ precursors immediately.

- *Delayed-type immune activation*: Exercise releases damage-associated molecular patterns (DAMPs) triggering cytokine production that peaks 24--48h post-stimulus in classical DTH patterns. _Intervention target_: Modulate immune activation in the 12--24h window.

#hypothesis(title: [Dual Pathway Requirement for PEM Prevention])[
*Certainty: 0.20.* Anti-inflammatory interventions alone are insufficient for PEM prevention because the core dysfunction is ATP production failure---this follows logically from the mechanism. *Whether energy restoration alone is sufficient, or whether cascade interruption is also required, remains untested.* The hypothesis that both pathways must be addressed rests on two theoretical considerations:

+ *Energy restoration (ATP/NAD#super[+] support)*: Required because ATP depletion is the initiating driver (mechanistically established)
+ *Cascade interruption (anti-inflammatory/antioxidant)*: Hypothetically required because unchecked inflammatory cascades might (a) cause secondary ATP depletion through cytokine-mediated mitochondrial dysfunction, or (b) create symptoms independent of energy status through direct tissue damage

*Falsifiable prediction*: In a factorial trial, the ATP/NAD#super[+] support arm alone will achieve #sym.lt 30% PEM severity reduction, while the combined arm will achieve #sym.gt 50% reduction, demonstrating necessity of cascade interruption in addition to energy substrate provision. *Empirical question:* Could ATP/NAD#super[+] support alone achieve 60--80% severity reduction, or is anti-inflammatory intervention necessary? This requires comparative trials. Until then, addressing both pathways simultaneously represents the most mechanistically complete approach.
] <hyp:pem-dual-pathway>

=== Emergency PEM Protocol
<subsubsec:emergency-pem-protocol>

#warning-env(title: [Not a Validated Clinical Protocol — Research Framework Only])[
The following protocol has *never been tested* in a clinical trial. No randomized controlled trial, observational study, or even systematic case series has evaluated this combination of interventions for PEM prevention in ME/CFS. The protocol is a mechanistically-reasoned research proposal, assembled from individual components with safety data in other contexts. It should not be adopted as standard clinical practice. Patients should discuss any supplement or medication use with their physician before implementing any component. The specific doses, timing windows, and phase structure are illustrative of the mechanistic rationale, not validated prescriptions.
]

#practical-warning(title: [Prerequisites Before Using This Protocol])[
This protocol involves 8--14 supplements/medications across 3 phases with meal-timing constraints. Patients experiencing active cognitive PEM or who cannot independently prepare medications should NOT attempt this protocol without caregiver support. For patients who cannot reliably prepare doses: rest and hydration alone (Phase 1 only) are the appropriate minimum. Phase stopping criteria: if no symptom improvement compared to typical crash pattern by Day 4, the protocol has not worked --- do not increase doses; continue standard pacing.
]

*Clinical context:* For patients who must undergo unavoidable exertion (medical procedures, essential activities, emergency situations), can targeted interventions immediately post-exertion reduce PEM severity or prevent onset?

*Evidence tier:* _Hypothesis-driven, mechanistically justified, pending RCT validation._ Individual components have safety data from other contexts. The integrated protocol represents rational polypharmacy targeting identified mechanisms but lacks direct testing in ME/CFS PEM.

*Rationale:* The 24--72h delay between exertion and symptom peak provides an intervention window. If ATP depletion, mitochondrial damage, NAD+ exhaustion, and immune activation initiate the cascade, aggressive multi-target support immediately post-exertion might prevent threshold crossing and abort symptom development.

*Phase 1: Immediate Post-Exertion (0--2 Hours).*

_Goal_: Prevent ATP threshold crossing; minimize oxidative damage; provide NAD+ substrate; initiate parasympathetic recovery.

- *ATP substrate provision*:
  - *D-ribose* 10--15~g: Ribose is the sugar backbone of ATP; provides direct substrate for ATP resynthesis. An open-label, uncontrolled survey (n=257) reported 61% improvement in energy @Teitelbaum2012ribose; the absence of a control group prevents distinguishing specific from placebo effects, and the lead author has commercial interests in supplement products. *CONTRAINDICATION*: Diabetes, hypoglycemia (paradoxically lowers blood glucose)---see warning in Chapter @ch:action-mild-moderate
  - *Citrulline-malate* 3--6~g: Dual mechanism---malate replenishes depleted TCA cycle intermediates (documented deficiency in ME/CFS @Yamano2016tca_urea); citrulline supports urea cycle/ammonia detoxification. 31P-MRS evidence in healthy subjects shows 34% increased oxidative ATP production @Bendahan2002citrulline; extrapolation to ME/CFS is inferential
  - *Creatine* 5~g: Buffers ATP via phosphocreatine system; provides immediate energy reserve
  - *Medium-chain triglycerides (MCT oil)* 15--30~mL: Rapidly absorbed, bypasses damaged mitochondrial complexes; provides ketones as alternative fuel
  - Dissolve ribose, citrulline-malate, and creatine in water or juice; take MCT oil separately or mixed in beverage

- *NAD+ precursor loading*:
  - *Nicotinamide riboside (NR)* or *NMN* 1000--2000~mg: High-dose NAD+ precursor to prevent PARP-induced NAD+ bankruptcy
  - Rationale: PARP activation begins immediately post-exertion; NAD+ pools must be maintained to support both DNA repair AND ATP synthesis

- *High-dose antioxidant buffer*:
  - *N-acetylcysteine (NAC)* 1200--1800~mg: Glutathione precursor; scavenges ROS. Targets documented 36% brain glutathione deficiency in ME/CFS @Shungu2012glutathione, replicated with 7T MRS @Godlewska2021glutathione. First oral NAC crosses BBB and elevates brain GSH. Pilot data suggest symptom improvement at 1800~mg/day @Shungu2016NACtrial; NIH RCT ongoing (NCT04542161)
  - *Vitamin C* 2000--3000~mg: Regenerates other antioxidants; supports BH4 recycling
  - *Alpha-lipoic acid* 600~mg: Mitochondrial antioxidant; regenerates glutathione
  - Rationale: Exercise-induced ROS damage peaks in first hours; antioxidant support minimizes mitochondrial damage requiring later removal
  - #warning-env(title: [Antioxidant-Mitophagy Trade-off])[High-dose antioxidants (NAC, ALA, Vitamin C) may blunt PINK1/Parkin-mediated mitophagy, because ROS and mild mitochondrial membrane depolarisation are required signals for mitophagy initiation @Ristow2009oxidativehormesis. Scavenging these signals in Phase 1 (0--2h) could interfere with Phase 2 damaged-mitochondria removal, potentially prolonging the functional deficit. The protocol simultaneously prescribes Urolithin A (mitophagy activator) in Phase 2 to compensate, but the net interaction is untested. Conservative option: reduce antioxidant dose and duration, limiting high-dose antioxidants to the first 2--4 hours only.]

- *Vagal activation* (parasympathetic recovery):
  - Deep diaphragmatic breathing: 6 breaths/minute for 10--20 minutes
  - Cold water face immersion: 30--60 seconds (triggers dive reflex, potent vagal activation)
  - Transcutaneous auricular VNS device if available: 30--60 minutes
  - Rationale: Activates parasympathetic "rest-and-digest" mode; shifts from sympathetic stress response to recovery state

- *Complete rest protocol*:
  - Horizontal position immediately; no further activity
  - Minimal sensory stimulation (dim lights, quiet environment)
  - No cognitive demands (no reading, screens, conversation)
  - Hydration: 500~mL electrolyte solution (ORS or sports drink)

*Phase 2: Early Cascade Prevention (2--24 Hours).*

_Goal_: Sustain ATP support; accelerate damaged mitochondria removal; prevent immune cascade initiation; maintain antioxidant coverage.

- *Continued ATP substrate provision*:
  - D-ribose 5~g every 4--6 hours (total 15--20~g/day)
  - Citrulline-malate 3~g twice daily (6~g/day total): Maintains TCA cycle substrate availability
  - MCT oil 15~mL twice daily
  - Rationale: Basal metabolism continues consuming ATP; sustained substrate provision prevents progressive depletion

- *Sustained NAD+ support*:
  - NR or NMN 500~mg twice daily (morning and early afternoon)
  - Rationale: PARP activity continues during DNA repair phase; NAD+ pools must remain adequate

- *Mitophagy enhancement*:
  - *Urolithin A* 500--1000~mg evening: Activates PINK1/Parkin mitophagy pathway; accelerates damaged mitochondria removal
  - Rationale: Faster clearance of damaged mitochondria reduces the depth of the functional deficit

- *Sustained antioxidant coverage*:
  - NAC 600~mg twice daily (morning, evening)
  - Vitamin C 1000~mg twice daily
  - Alpha-lipoic acid 300~mg once daily

- *Sleep optimization* (critical for glymphatic clearance):
  - Melatonin 0.5--3~mg 1--2h before bed
  - Magnesium glycinate 300--400~mg evening
  - Prioritize 8--10h sleep opportunity; sleep quality determines glymphatic waste clearance

- *Strict rest enforcement*:
  - No additional physical, cognitive, or emotional exertion
  - Cancel non-essential activities for 24--48h minimum
  - Rationale: Any additional ATP demand during this critical window may push cells over the threshold

*Phase 3: Delayed Immune Cascade Window (12--72 Hours).*

_Goal_: Modulate immune activation; support mitochondrial biogenesis; maintain energy substrates until crisis window passes.

- *Anti-inflammatory support*:
  - *Omega-3 fatty acids* 2--4~g EPA+DHA daily: Reduces pro-inflammatory cytokine production
  - *Curcumin* 500--1000~mg twice daily: NF-κB inhibition; reduces inflammatory signaling
  - *Optional: Low-dose ibuprofen or naproxen* (if no contraindications): 200--400~mg ibuprofen twice daily or 220~mg naproxen twice daily for 2--3 days

#practical-warning(title: [NSAIDs and Fludrocortisone: Do Not Combine Without Physician Oversight])[
NSAIDs and fludrocortisone: Combining NSAIDs with fludrocortisone significantly increases the risk of fluid retention, hypertension, and GI bleeding. Do not use Phase 3 NSAIDs if the patient is on fludrocortisone — contact a physician first.
]

  - Rationale: Immune cascade peaks at 24--48h; anti-inflammatory support during this window may reduce symptom severity
  - CAUTION: NSAIDs alone are insufficient; must be combined with energy support

- *Mitochondrial biogenesis support* (begin Day 2--3):
  - Continue NR/NMN 500~mg twice daily (supports PGC-1α activation)
  - *PQQ* 20~mg morning: Mitochondrial biogenesis support
  - *Acetyl-L-carnitine* 1000~mg morning: Fatty acid transport; mitochondrial support
  - Rationale: Accelerating biogenesis may shorten the period of functional mitochondrial deficit

- *Continued ATP support* (Days 2--5):
  - D-ribose 5~g 2--3 times daily
  - MCT oil 15~mL once or twice daily
  - Adequate hydration: 2--3L fluids daily with electrolytes

- *Vagal toning* (daily):
  - Breathing exercises: 10--20 minutes twice daily
  - Humming/singing (stimulates vagus nerve)
  - Cold exposure if tolerated (brief cold shower, cold pack on neck)
  - Rationale: Sustained parasympathetic activation opposes inflammatory cascades

- *Progressive rest reduction*:
  - Days 1--2: Complete rest, horizontal as much as possible
  - Days 3--5: Gradual return to minimal essential activities only
  - Days 5--7: Resume normal baseline pacing (NOT normal activity---return to pre-exertion energy envelope)
  - Monitor for delayed crash; if symptoms emerge despite protocol, extend rest period

=== Monitoring and Outcome Assessment

- *Symptom tracking*: Daily ratings (0--10 scale) for:
  - Fatigue/energy level
  - Cognitive function (brain fog, processing speed)
  - Pain/myalgia
  - Orthostatic symptoms
  - Overall functional capacity

- *PEM timeline documentation*:
  - Record symptom onset time (hours post-exertion)
  - Peak severity day
  - Duration until return to baseline

- *Comparative assessment*: If protocol is used multiple times, compare:
  - PEM severity with vs. without protocol
  - Recovery duration with vs. without protocol
  - Proportion of exertions that result in full crashes vs. mitigated symptoms

- *Physiological markers* (if available):
  - Heart rate variability (HRV): Indicates autonomic recovery
  - Resting heart rate: Should return to baseline if crash prevented
  - Orthostatic vital signs: Improvement indicates successful mitigation

=== Safety Considerations

- *Contraindications*:
  - D-ribose: Diabetes (may lower blood sugar); monitor glucose
  - MCT oil: Severe liver disease; start low dose (15~mL) to assess GI tolerance
  - High-dose NAC: Active peptic ulcer (theoretical risk); asthma (rare bronchospasm risk)
  - Creatine: Kidney disease (theoretical concern; human data shows safety)
  - NSAIDs: GI ulcers, kidney disease, cardiovascular disease, aspirin allergy

- *Drug interactions*:
  - NAC: May reduce nitroglycerin efficacy
  - Alpha-lipoic acid: May lower blood glucose; monitor if diabetic or on diabetes medications
  - Omega-3 fatty acids: Blood thinning effect; use caution with anticoagulants (warfarin, etc.)
  - NSAIDs: Avoid with anticoagulants, other NSAIDs, corticosteroids
  - NR/NMN: Theoretical interaction with PARPi cancer drugs (avoid combination)
  - #warning-env(title: [Interactions with Common ME/CFS Co-prescriptions])[Patients with ME/CFS are frequently prescribed the following medications, which interact with Emergency PEM Protocol components: *Fludrocortisone* (mineralocorticoid for POTS) — NSAIDs reduce its natriuretic efficacy and increase sodium retention; do not combine NSAIDs with fludrocortisone without physician oversight. *Midodrine* (alpha-agonist for POTS) — no direct pharmacokinetic interactions identified; hemodynamic monitoring advised during protocol. *Low-dose naltrexone (LDN)* — no direct interaction with protocol components; LDN's opioid receptor blockade is unaffected by supplement stack. *Beta-blockers* (used for POTS and tachycardia) — high-dose magnesium may mildly potentiate antihypertensive effects; cold water face immersion (vagal activation step) may cause greater heart rate depression in patients on beta-blockers; use cold exposure cautiously. *Antihistamines* (H1/H2 for MCAS) — no direct interaction; concurrent use during protocol is acceptable. *Pyridostigmine* — NAC and high-dose antioxidants have no known interaction; the cholinergic anti-inflammatory effect of pyridostigmine is independent of protocol mechanism.]

- *Tolerability issues*:
  - D-ribose: Sweet taste; some report transient hypoglycemia symptoms (take with food if occurs)
  - MCT oil: GI distress (diarrhea, nausea) if dose too high initially; start 15~mL, increase gradually
  - High-dose NAC: Nausea, sulfur smell/taste; take with food
  - Creatine: Some experience bloating or water retention

- *Cost considerations*:
  - Single emergency use: approximately \$30--50 for all supplements
  - D-ribose (bulk powder): \$25--35 for 250~g (sufficient for multiple uses)
  - NR/NMN (high-dose): \$1.50--3 per 1000~mg dose
  - Other components: \$10--20 for emergency supply
  - More affordable than lost function from severe multi-week crash

=== Evidence Tier and Qualification

#warning-env(title: [Hypothesis-Driven Protocol Pending Validation])[
This protocol is *mechanistically justified but clinically unvalidated*. No randomized controlled trials have tested whether post-exertion interventions reduce ME/CFS PEM severity or duration. However, unlike purely speculative approaches, this protocol targets identified biological mechanisms with plausible intervention windows:

*Mechanistic support*:
- ATP depletion as PEM driver: Documented in Heng 2025 @heng2025mecfs
- Mitochondrial damage-regeneration gap: Matches 13-day CPET recovery timeline @keller2024cpet
- NAD+ depletion via PARP: Established pathway with ME/CFS abnormalities @heng2025mecfs
- Delayed immune activation: Gene expression shows 24--72h cytokine peaks post-exercise

*Component evidence*:
- D-ribose: Small ME/CFS studies show benefit; widely used in sports medicine
- NAD+ precursors: Raise NAD+ levels in humans; Long COVID trial shows cognitive benefit subset
- Antioxidants: NAC, vitamin C, ALA have safety data; reduce oxidative stress markers
- Mitophagy enhancers: Urolithin A shows mitochondrial benefits in human aging trials
- Anti-inflammatories: Omega-3, curcumin, NSAIDs have established effects

*What this protocol is NOT*:
- NOT a substitute for pacing (prevention remains superior to mitigation)
- NOT validated by clinical trials in ME/CFS PEM
- NOT appropriate for regular use to enable routine overexertion
- NOT guaranteed to work (individual variation in mechanisms likely)

*Appropriate use cases*:
- Unavoidable medical procedures (surgery, imaging, emergency care)
- Essential life events (family emergencies, legal obligations)
- Accidental overexertion despite careful pacing
- Situations where crash prevention is critical (e.g., before important medical appointment)

This protocol represents rational therapeutic design based on identified pathophysiology. It is offered for informed patient-physician decision-making, with the understanding that the individual supplement components have established safety profiles at these doses in other populations, while the integrated protocol's efficacy is unproven. Note: the comparison to "unmitigated severe PEM" as the counterfactual cannot currently be quantified — whether protocol-with-unknown-efficacy is better than careful rest-alone is itself untested. Patients using this protocol should document outcomes to contribute to collective knowledge about efficacy.
]

=== Future Research Directions

To validate and optimize this approach:

+ *Proof-of-concept RCT*: 60--80 ME/CFS patients randomized to full protocol vs. placebo immediately post-standardized exertion (submaximal CPET or standardized activity). Primary outcome: PEM severity (area under curve, days 1--7). Secondary outcomes: symptom onset timing, recovery duration, proportion with aborted crashes.

+ *Mechanism validation*: Serial biomarkers (ATP/ADP/AMP, NAD+/NADH, oxidative stress markers, cytokines) at baseline, immediately post-exertion, +6h, +24h, +48h, +72h in protocol vs. control groups. Correlate biomarker trajectories with symptom outcomes.

+ *Component necessity testing*: Factorial design or systematic component removal to identify which elements are critical vs. redundant. Is ATP support alone sufficient? Must all three phases be present?

+ *Timing optimization*: Test early intervention (0--2h) vs. delayed intervention (6--12h) vs. continuous (0--72h). Identify minimum effective intervention window.

+ *Personalization*: Metabolomics or genetic profiling to identify patient subsets most likely to respond. Are NAD+ metabolism SNPs predictive? Does baseline lactate predict D-ribose response?

+ *Real-world effectiveness*: Observational cohort of patients using protocol for unavoidable exertions with detailed symptom tracking. Patient-reported outcomes may precede formal RCTs.

The mechanistic plausibility and low risk profile support early pilot testing. Given the severe impact of PEM on ME/CFS patients' lives, developing validated prevention strategies represents a high-priority research direction.

=== Personalized Metabolomics-Guided Protocol (Future Direction)
<subsec:metabolomics-protocol>

*Concept:* Use post-exercise metabolomics to identify individual metabolic bottlenecks, then target repletion.

*Proposed research protocol:*

+ Baseline metabolomics (plasma/serum) before CPET
+ Serial samples: 30 min, 2 hours, 6 hours post-CPET
+ Identify metabolites showing #sym.gt 30% decline
+ Cluster patients by depletion patterns
+ Targeted repletion trial: provide individualized supplementation
+ Measure whether Day 2 CPET deterioration is reduced

*Hypothetical examples:*

- *Carnitine depletion pattern*: Supplement with L-carnitine 2--3~g/day
- *Glutathione depletion pattern*: Aggressive NAC + glycine + selenium
- *Purine nucleotide depletion*: D-ribose 5--15~g/day + magnesium
- *Tryptophan/kynurenine imbalance*: Consider IDO inhibition (experimental)

*Current status:* Not clinically available. Metabolomics is expensive and requires specialized facilities. However, if pilot studies show promise, standardized metabolic phenotyping could eventually become accessible.

=== Clinical Implementation Guidance

==== Patient Selection

- *Autonomic-Metabolic Protocol*: Mild-to-moderate patients; orthostatic symptoms; cognitive dysfunction
- *Mitochondrial Turnover Protocol*: Patients with severe PEM, prolonged recovery; not for severely affected patients initially
- *Post-Exertion Emergency*: Any severity when unavoidable exertion necessary
- *Metabolomics-Guided*: Research setting only currently

==== Sequencing

For patients trying multiple approaches:

+ Start with lowest-risk interventions: circadian stabilization, vagal toning, basic antioxidants
+ Add Autonomic-Metabolic Protocol after 4--8 weeks if tolerated
+ Consider Mitochondrial Turnover Protocol after 12 weeks if stable
+ Reserve Post-Exertion Emergency for specific situations

==== Monitoring and Adjustment

- Symptom diaries: daily ratings of energy, PEM, cognitive function
- Heart rate variability tracking (if accessible): indicates autonomic function improvement
- Functional measures: steps per day, activity duration before PEM
- Blood work: Baseline and 3-month CBC, CMP, iron studies, homocysteine (if using methylated B vitamins)
- Discontinue or reduce dose if: increased anxiety, insomnia, worsening symptoms beyond initial adjustment period

==== Integration with Standard Care

These protocols complement, not replace:

- Strict pacing (the evidence-based foundation)
- Sleep optimization
- Treatment of comorbidities (POTS, MCAS, etc.)
- Nutritional adequacy
- Psychological support

=== Research Priorities

To validate and refine these protocols:

+ *Pilot safety trial*: Autonomic-Metabolic Protocol in 20--30 ME/CFS patients; primary outcome: safety and tolerability; secondary: symptom measures at 12 weeks

+ *Mechanistic study*: Serial biomarkers (catecholamines, oxidative stress markers, mitochondrial function assays) before/during/after protocol; correlate with symptom response

+ *Two-day CPET as outcome*: Repeat CPET at 6 months; measure if Day 2 deterioration is reduced in treatment arm vs. control

+ *Metabolomics phenotyping*: Post-exercise metabolomics in 50--100 patients; identify metabolic subgroups; test if subgroup-specific interventions work better than one-size-fits-all

+ *Comparative effectiveness*: Autonomic-Metabolic Protocol vs. Mitochondrial Turnover Protocol vs. combined; which works best for whom?

The two-day CPET provides the objective outcome measure that has long been lacking in ME/CFS research, making these trials feasible and interpretable.

== Antiretroviral Repurposing: Targeting HSAT2/HERV-K Reverse Transcriptase
<sec:antiretroviral-hsat2>

#open-question(title: [NRTI Repurposing for HSAT2 Loop Interruption in ME/CFS])[


Two independent mechanistic rationales for NRTIs converge on ME/CFS:

*Rationale 1 — HERV-K RT inhibition in the exosomal loop:* Evdokimova et al.\ @Evdokimova2019HSAT2exosome demonstrated that AZT (zidovudine, an NRTI) reduces HSAT2 *accumulation* in EV-recipient fibroblasts by approximately 1.6-fold. This effect is attributed to inhibition of HERV-K reverse transcriptase activity (HERV-K elements co-packaged in EVs encode functional RT), which may facilitate HERV-K cDNA production or HSAT2 amplification in recipient cells via RT-dependent mechanisms. *Importantly, HSAT2 itself is transcribed by RNA polymerase II, not by reverse transcriptase — AZT cannot directly inhibit HSAT2 transcription.* The AZT effect on HSAT2 accumulation is therefore indirect, operating through HERV-K RT inhibition.

*Rationale 2 — LINE-1 RT inhibition via cGAS-STING:* De Cecco et al.\ @DeCecco2019LINE1 demonstrated in aged mouse tissues and human skin biopsies that LINE-1 retrotransposons are derepressed in senescent cells and produce cytoplasmic cDNA that activates cGAS-STING → type-I interferon, driving the senescence-associated secretory phenotype. Lamivudine suppressed this LINE-1/cGAS-STING/IFN-I pathway in aged tissues, reducing the senescence-associated inflammatory burden. If ME/CFS involves LINE-1 derepression as part of the stress-driven repeat derepression landscape (see @spec:hsat2-inflammaging), lamivudine could reduce cGAS-STING activation independently of the HERV-K/HSAT2 exosomal loop — a distinct, additive target.

Together these rationales suggest lamivudine as the NRTI most likely to address both targets: HERV-K RT inhibition and LINE-1/cGAS-STING suppression. AZT has a poor tolerability profile (hematological toxicity, mitochondrial off-target effects); TDF is better-tolerated but lacks the LINE-1 suppression data. Lamivudine has an excellent safety profile across decades of HIV use and was the NRTI used by De Cecco 2019 in the anti-inflammaging context.

If the HSAT2 exosomal loop is operative in ME/CFS @spec:hsat2-exosome-mdsc, NRTI use could theoretically reduce the loop amplitude. This is a *research-stage question*, not a treatment recommendation. Several obstacles make direct translation premature:
    - AZT reduces HSAT2 by only 1.6×; lamivudine and TDF efficacy against HSAT2 EV accumulation is not yet tested
    - HSAT2 in ME/CFS plasma EVs has not been measured — the target mechanism may not exist at relevant concentrations
    - Mitochondrial off-target toxicity of NRTIs (particularly AZT and d4T) is relevant in ME/CFS given documented mitochondrial dysfunction; lamivudine and TDF have lower pol-γ affinity
    - No ME/CFS-specific NRTI trial has reported HERV-K or HSAT2 biomarker outcomes

*Testable design:* Open-label pilot (n = 20, HSAT2-high by plasma EV assay [note: no CLIA-certified or commercial HSAT2 EV assay exists as of 2026; patient selection requires a research collaborating laboratory using RT-qPCR on isolated EVs, adapted from @Evdokimova2019HSAT2exosome methods]), lamivudine 150 mg/day × 12 weeks (chosen for both HERV-K and LINE-1 rationale and superior tolerability). Primary endpoints: plasma exosomal HSAT2, HERV-K env RNA, and plasma cGAMP/IFN-β (cGAS-STING activation). Secondary: NK cytotoxicity, MDSC frequency, FUNCAP, fatigue NRS. Safety monitoring (detailed below).

*Before any clinical use:* Measurement of HSAT2 in ME/CFS plasma EVs to confirm the target is present; mitochondrial toxicity profiling in ME/CFS cell lines; HBV status (see warnings below).

#practical-warning(title: [NRTI Safety for ME/CFS Research Protocols])[
*Agent selection note:* The testable design above proposes lamivudine as the preferred NRTI (HERV-K + LINE-1 rationale, superior tolerability). The TDF-specific warnings below remain relevant if TDF is used instead; they are included because TDF appeared in earlier versions of this protocol and because some research teams may prefer TDF for HSAT2 EV work.

*Lamivudine-specific:* Lamivudine is virologically active against HBV. HBsAg and anti-HBc must be tested pre-enrolment; HBsAg-positive patients require hepatology co-management. On discontinuation, hepatitis B reactivation can occur weeks to months later in HBV-infected patients — a hepatology handoff plan is mandatory.

*TDF-specific — HBV reactivation on discontinuation:* TDF is virologically active against HBV. Stopping TDF without continuation of an HBV-active regimen can trigger HBV reactivation leading to acute-on-chronic liver failure. HBsAg-positive patients require hepatology co-management throughout and after trial completion.

*TDF-specific — Renal tubular toxicity:* TDF causes proximal tubular dysfunction (Fanconi syndrome) manifesting as normoglycaemic glycosuria, hypophosphataemia, hypokalaemia, and aminoaciduria *before* serum creatinine rises. Monitoring serum creatinine alone is insufficient; require urine glucose, serum phosphate, and potassium monthly. Patients with eGFR < 60 mL/min/1.73 m² should be excluded.

*TDF-specific — Bone mineral density:* TDF causes measurable BMD loss (~1–2% per year); DEXA at baseline and 12 weeks is required.

*NRTI class — Mitochondrial toxicity:* All NRTIs inhibit mitochondrial DNA polymerase γ (pol-γ) to varying degrees. AZT and d4T carry the highest risk; TDF and lamivudine have lower pol-γ affinity but non-zero residual risk. In ME/CFS with proposed mitochondrial dysfunction, monitor serum lactate before and during treatment. Lactic acidosis is a rare but potentially fatal NRTI class effect.

*Drug interactions relevant to ME/CFS protocols:* NSAIDs compete with TDF at renal OAT1/OAT3 transporters, raising TDF plasma levels and nephrotoxicity risk. Fludrocortisone (used in POTS management) alters renal tubular handling; concurrent TDF amplifies tubular stress. Lamivudine does not share the OAT1/OAT3 interaction, making it preferable for patients on NSAIDs or fludrocortisone.
]
] <oq:nrti-hsat2>

#open-question(title: [Could a Lamivudine + NR + Pacing "Inflammaging Package" Simultaneously Target HERV-K/LINE-1, NAD+ Depletion, and Epigenetic Amplification?])[

#practical-warning(title: [Research-Stage Only — Access Barriers])[Lamivudine is licensed for HIV and chronic hepatitis B in Belgium/EU; off-label use for ME/CFS is not reimbursed and requires a physician willing to prescribe it. Access is practically unavailable to most patients (~€30/month generic; INAMI/RIZIV reimburses only for licensed indications). NR is OTC (~€60–80/month). This combination has not been tested in ME/CFS or any chronic fatigue condition.]

The three core targets of the HSAT2 inflammaging model — HERV-K/LINE-1 retrotransposon activation, NAD+/SIRT1-axis failure, and cumulative PEM-driven HSAT2 amplification — map onto three available interventions: lamivudine (NRTI, suppresses HERV-K RT activity and LINE-1/cGAS-STING @oq:nrti-hsat2 @DeCecco2019LINE1); NR (NAD+ precursor, restores SIRT1/SUV39H1-mediated H3K9me3 maintenance @spec:nr-nmn-hsat2); and strict pacing (prevents HSF1-mediated HSAT2 amplification per exertional event @spec:pacing-hsat2-prophylaxis). Each addresses a different failure mode; the combination is mechanistically non-redundant and collectively covers the three principal entry points for HSAT2 derepression.

The combination is referred to as an "inflammaging package" because its three targets map onto the three features of the DeCecco 2019 inflammaging model applied to ME/CFS: retrotransposon derepression (lamivudine target), NAD+ depletion (NR target), and epigenetic insult accumulation (pacing target).

*Mechanistic non-redundancy check:* Lamivudine acts on RT-dependent amplification (HERV-K, LINE-1 cDNA); NR acts on the SIRT1 deacetylase that maintains H3K9me3; pacing reduces the frequency of HSF1-triggering events. If any single mechanism dominates, single-agent intervention should be equally effective; if the gain product $alpha gamma$ in the MDSC×EV model requires all three failure modes simultaneously, the combination is superior @spec:hsat2-mdsc-ode-model.

*Falsifiable prediction:* A 24-week open-label pilot (lamivudine 150 mg/day + NR 1 g/day + pacing protocol, n = 20, HSAT2-high by plasma EV assay) will reduce plasma IFN-α2 by $gt.eq 30%$ AND EV HSAT2 by $gt.eq 25%$ AND improve NK cytotoxicity by $gt.eq 15%$. Single-agent arms in a concurrent cohort will each achieve $< 15%$ improvement on the composite endpoint.

*Limitations:* Lamivudine access in Belgium/EU for ME/CFS requires an off-label prescriber and patient self-funding — a practical barrier that limits generalizability. Combination pharmacodynamic interactions are unknown; concurrent NR and lamivudine metabolic interactions have not been studied. Pacing adherence measurement requires wearable data; poor adherence would confound the intervention arm. Not replicated in any disease context.

] <oq:hsat2-inflammaging-package>

#speculation(title: [Tadalafil (PDE5 Inhibitor) as MDSC Arginase-1 Depleter to Rescue NK Cytotoxicity])[


*(Certainty: 0.25 — PDE5 inhibitor MDSC depletion/differentiation established in oncology; ME/CFS application not tested.)*

Phosphodiesterase-5 (PDE5) inhibitors (sildenafil, tadalafil) are established MDSC-depleting agents in oncology: they reduce MDSC arginase-1 and iNOS expression, promoting MDSC differentiation into mature myeloid cells, and have been shown to restore T-cell and NK function in tumor-bearing mice and cancer patients. The arginase-1/L-arginine mechanism @Goh2016HCVMDSCArginase is the same pathway proposed to suppress NK cytotoxicity in ME/CFS via MDSC expansion @hyp:mdsc-nk-bridge.

If M-MDSCs are expanded in ME/CFS and suppress NK function via arginase-1, tadalafil (5 mg/day, the lowest approved dose, approved for BPH) could reduce arginase-1 activity, restore L-arginine, and recover NK cytotoxicity. Tadalafil has a favorable safety profile at 5 mg daily; it is generic and widely available (though not reimbursed for ME/CFS in Belgium/EU — off-label private prescription required). This would not address upstream HSAT2 derepression but would target the functional effector arm of the proposed immunosuppressive loop.

*Falsifiable prediction:* Tadalafil 5 mg/day × 8 weeks in ME/CFS will reduce plasma arginase-1 activity by ≥ 25% and increase NK cytotoxicity (CD107a flow assay) by ≥ 20%. MDSC frequency (CD33+HLA-DR−/lo) should decrease. If neither arginase-1 nor NK cytotoxicity changes, MDSCs are not the operative NK suppressor.

*Limitations:* PDE5 inhibitor MDSC data are from cancer contexts; mechanism may differ in chronic post-viral settings. Hypotension risk at 5 mg/day is low but relevant in ME/CFS patients with POTS/OI. Belgian/EU access requires specialist off-label prescription; INAMI/RIZIV will not reimburse for ME/CFS. No ME/CFS clinical data. Not replicated.
] <spec:tadalafil-mdsc-nk>

#practical-warning(title: [Anti-PD-L1 / Checkpoint Blockade: Strictly Research-Stage — Not a Clinical Direction])[
PD-1/PD-L1 checkpoint inhibitors (atezolizumab, durvalumab, pembrolizumab) cause severe or life-threatening immune-related adverse events (irAEs) in 20–60% of cancer patients (grade 3–4 in 20–35%). Documented irAEs include autoimmune pneumonitis, colitis, hepatitis, myocarditis, and severe endocrinopathies. In ME/CFS, where immune checkpoint signaling is already dysregulated @Iu2024CD8Exhaustion @EatonFitch2024ImmuneExhaustion and where MCAS, mast cell activation, and autoimmune comorbidities are common, the irAE risk profile is unpredictable and potentially worse than in cancer. No ME/CFS clinical trial of any checkpoint inhibitor is ongoing or planned as of 2026. These agents must not be used outside a prospective clinical trial with a full institutional review process and safety monitoring board. Certainty that benefit would outweigh harm: 0.10 — listed for mechanistic completeness only.
]

#open-question(title: [Could Checkpoint Blockade (Anti-PD-L1) Reverse ME/CFS T-Cell and NK Exhaustion?])[


Iu et al.\ @Iu2024CD8Exhaustion identified PD-L1/2 upregulation on ME/CFS monocytes as a proximate suppressor of CD8+ T-cell function; Eaton-Fitch et al.\ @EatonFitch2024ImmuneExhaustion confirmed shared PD-1/CTLA-4 dysregulation in ME/CFS and Long COVID. In oncology, anti-PD-L1 checkpoint blockade (atezolizumab, durvalumab) reverses T-cell exhaustion and restores anti-tumor immunity.

The question of whether checkpoint blockade could be repurposed in ME/CFS is a legitimate mechanistic question, but with profound safety constraints: (1) checkpoint blockade carries 15–25% risk of serious immune-related adverse events (irAEs) including pneumonitis, colitis, hepatitis, and severe endocrinopathies; (2) ME/CFS patients may have exaggerated irAE susceptibility if underlying mast cell or autoimmune predisposition is present; (3) if T-cell exhaustion in ME/CFS is driven by EV-cargo programming rather than antigen-driven exhaustion @hyp:tcell-exhaust-ev-downstream, checkpoint reversal would be temporarily effective but would not address the upstream cause. This is a research question only, not a clinical direction.

*What would be needed:* Pre-clinical ME/CFS patient PBMC data showing PD-1 checkpoint blockade restores CD8+ and NK function ex vivo without producing inflammatory overshoot. Safety data from checkpoint blockade in any chronic non-malignant fatigue condition would be required before any clinical consideration.
] <oq:checkpoint-blockade-mecfs>

#speculation(title: [Low-Dose Interleukin-2 to Rebalance Treg/MDSC Suppressive Pressure in ME/CFS])[

#practical-warning(title: [Specialist Supervision Mandatory])[IL-2 at any dose requires an immunologist or oncologist experienced with IL-2 administration. This is not a self-manageable or GP-prescribable intervention. The evidence base is from autoimmune diseases (TICO, TRANSREG, REMPLIC trials); no ME/CFS data exist.]

*(Certainty: 0.20 — low-dose IL-2 Treg expansion well-documented in autoimmune trials; ME/CFS-specific application speculative; mechanism requires MDSC data that does not yet exist.)*

In ME/CFS, the immunosuppressive milieu is proposed to involve two converging pressures: M-MDSC expansion suppressing NK and CD8+ T-cell function via arginase-1 and TGF-β @spec:hsat2-exosome-mdsc @BeliakovanBethell2022MDSCPostCOVID, and T-cell checkpoint upregulation limiting anti-viral and anti-tumour immunity @EatonFitch2024ImmuneExhaustion. Low-dose interleukin-2 (LDIL2) — at 1–3 MIU subcutaneous, far below the supra-pharmacological doses used in cancer — selectively expands Tregs without significant effector T-cell activation, as demonstrated across several autoimmune disease trials (type 1 diabetes, SLE, ANCA vasculitis). The hypothesis here is mechanistically different from its autoimmune rationale: in ME/CFS, the intent would not be to suppress autoreactive effector cells but to rebalance the Treg:MDSC ratio — shifting the suppressive tone from non-specific MDSC-driven suppression (which suppresses NK and CD8+ indiscriminately) toward Treg-mediated regulatory suppression (which is more targeted).

Whether LDIL2 would increase or decrease MDSC activity in ME/CFS is the key uncertainty: in some autoimmune contexts LDIL2 reduces MDSC frequency (by improving the cytokine environment for MDSC differentiation), but in others it may not affect MDSCs. If MDSCs are the primary suppressive population in ME/CFS and Tregs are secondarily reduced, LDIL2 could improve immune regulation while simultaneously reducing non-specific suppression. If Tregs are already adequate, LDIL2 provides no benefit and carries regulatory cytokine risk.

*Access (Belgium/EU):* LDIL2 (Proleukin, aldesleukin) is licensed for renal cell carcinoma and melanoma at high doses; low-dose off-label use has been used in autoimmune trials but is not commercially available in a low-dose formulation. Access in Belgium would require a hospital pharmacy preparation or compassionate use protocol — practically unavailable to most patients without an academic immunology center willing to provide it.

*Falsifiable prediction:* LDIL2 1 MIU sc on days 1–5 then weekly × 8 weeks in ME/CFS will increase the Treg:M-MDSC ratio by $gt.eq 50%$ (flow cytometry), reduce arginase-1 plasma activity by $gt.eq 15%$, and increase NK cytotoxicity by $gt.eq 15%$. If MDSCs are unchanged or increase, LDIL2 is not indicated in this context.

*Limitations:* No ME/CFS LDIL2 data exist. The Treg:MDSC rebalancing hypothesis requires ME/CFS MDSC data that are currently absent. Regulatory IL-2 programs (TICA, TRANSREG trials) showed inconsistent Treg expansion across autoimmune conditions; ME/CFS is a different immune context. Risk of flu-like symptoms, injection site reactions, and potential PEM exacerbation from systemic cytokine administration must be included in any trial protocol. Not replicated.

] <spec:ldil2-treg-mdsc>

== Evaluating Emerging Therapies
<sec:evaluating-therapies>

=== Risk-Benefit Assessment

Experimental therapies vary enormously in risk profile:

- *Low risk*: Breathing exercises, dietary modifications, widely-used supplements
- *Moderate risk*: Prescription medications with established safety profiles, probiotics
- *Higher risk*: Immunosuppressants, invasive procedures, poorly-characterized compounds

=== Evidence Hierarchy

- *Strongest*: Randomized controlled trials in ME/CFS patients
- *Moderate*: Open-label studies in ME/CFS, RCTs in related conditions
- *Preliminary*: Case reports, mechanistic rationale, patient community reports
- *Speculative*: Theoretical extrapolation from basic science

=== Access Pathways

- Clinical trials (ClinicalTrials.gov lists ongoing studies)
- Compassionate use / expanded access programs
- Off-label prescription (requires willing physician)
- Medical tourism (significant risks regarding quality and safety)

== Reversibility Windows
<subsec:reversibility-windows>

A critical question for patients evaluating any intervention---experimental or established---is: _What is realistically achievable?_ Understanding which pathological mechanisms are reversible versus irreversible guides treatment selection, prevents wasted resources on futile interventions, and enables patients to set appropriate expectations.

The cycle dynamics framework (Chapter @ch:core-symptoms, @sec:pem, "Ratchet Effect") identifies seven irreversibility mechanisms. Not all are equally entrenched, and treatment windows exist where aggressive intervention may reverse seemingly permanent dysfunction. This section provides a mechanism-by-mechanism analysis of reversibility potential.

=== Time-Dependent Reversibility: The Decay Model

A critical insight is that many mechanisms transition from _reversible_ to _irreversible_ over time. Acute mitochondrial dysfunction in early disease may be 80% reversible through enhanced biogenesis and repair, but after years of sustained dysfunction, accumulated mtDNA mutations and organelle loss create damage that cannot be fully corrected.

This time-dependency can be represented conceptually as exponential decay:

$ R(t) = R_0 e^(-lambda t) $
<eq:reversibility-decay>

where $R(t)$ = reversibility fraction at time $t$ (proportion of dysfunction that remains correctable), $R_0$ = initial reversibility (at onset), $lambda$ = decay constant, and $t$ = time since onset (years).

#warning-env(title: [Illustrative Model — Parameters Not Empirically Calibrated])[
The parameters $R_0$ and $lambda$ in this model have not been measured in ME/CFS patients. No study has quantified "reversibility fraction" prospectively. The values below ($R_0 = 0.9$, $lambda = 0.2$ yr#super[-1]) are illustrative assumptions chosen to demonstrate the qualitative principle that early intervention likely offers higher recovery potential than late intervention. They should not be taken as predictive of any individual patient's prognosis. Do not use these calculations to advise patients on their recovery probability.
]

*Illustrative Calculation (hypothetical, not predictive):* Consider two patients with comparable mitochondrial dysfunction severity:

- *Patient A*: 6 months of illness, $R(0.5) = 0.9 times e^(-0.2 times 0.5) approx 0.81$ (illustrative: 81% of dysfunction potentially reversible)
- *Patient B*: 5 years of illness, $R(5) = 0.9 times e^(-0.2 times 5) approx 0.33$ (illustrative: 33% of dysfunction potentially reversible)

These numbers are model outputs from assumed parameters, not empirical measurements. The qualitative implication — that earlier intervention likely offers more reversibility potential — has face validity based on general principles of tissue repair, but has not been tested in ME/CFS specifically. This framework explains why early intervention is likely critical, but individual prognosis requires clinical assessment, not formula calculation.

*Clinical implication (from qualitative principle, not the model):* The general principle that earlier intervention tends to offer higher reversibility potential is grounded in tissue-repair biology, even if the specific decay model above is uncalibrated. Duration should factor into prognosis discussions. The guidance that follows (Tier 1-3 framework) is based on this qualitative reasoning, not on the exponential decay equation's numerical outputs: specific percentage thresholds should not be extracted from that equation for individual patients.

=== Reversibility Classification: Three-Tier Framework

*Tier 1: Highly Reversible (Intervention Window: Weeks to Months).*

These mechanisms maintain dysfunction through active, ongoing processes that can be interrupted:

#figure(
  table(
    columns: (auto, auto, auto, auto),
    table.header(
      [*Mechanism*], [*Why Reversible*], [*Intervention*], [*Timeline*]
    ),
    [GPCR autoantibodies (circulating)], [Antibodies cleared in weeks if production stops; not structurally damaging], [Immunoadsorption, BC007, daratumumab (plasma cell depletion)], [2--6 months],
    [Acute immune activation], [Cytokine half-lives measured in hours; no permanent tissue damage if brief], [Anti-inflammatory interventions, LDN, omega-3, biologics], [2--8 weeks],
    [Metabolic substrate depletion], [NAD+, ATP, cofactors regenerate rapidly if supply provided], [NAD+ precursors, D-ribose, CoQ10, B vitamins], [2--12 weeks],
    [Functional autonomic dysregulation], [Neurotransmitter deficits reversible; no neuronal death], [Fludrocortisone, midodrine, L-tyrosine, BH4 support], [4--12 weeks],
    [Acute epigenetic changes], [Recent histone modifications reverse spontaneously or with intervention], [HDAC inhibitors (experimental), NAD+ precursors (sirtuin activation)], [3--6 months],
  ),
  caption: [Highly Reversible Pathological Mechanisms. *Clinical implication*: Early aggressive intervention (disease duration #sym.lt 2--3 years) targeting these mechanisms has higher probability of substantial improvement than later intervention. (Illustrative goal: 30--60% function restoration — this range is not evidence-based; see the warning in Section @subsec:reversibility-windows on illustrative percentage targets.) Example of best-documented outcome: Daratumumab responders achieving SF-36 scores of 80--95 @Fluge2025daratumumab.]
)
<tab:reversible-tier1>

*Key principle*: _The earlier the intervention, the more reversible._ Mechanisms in Tier 1 become Tier 2 (partially reversible) after years of persistence, as secondary irreversible changes accumulate.

*Tier 2: Partially Reversible (Intervention Window: Months to Years).*

These mechanisms involve structural damage or cellular reprogramming, but residual regenerative capacity exists:

#figure(
  table(
    columns: (auto, auto, auto, auto),
    table.header(
      [*Mechanism*], [*Partial Reversibility*], [*Intervention*], [*Realistic Gain*]
    ),
    [Mitochondrial loss (moderate)], [Biogenesis replaces lost mitochondria, but slowly; limited by cellular capacity], [PQQ, NAD+ precursors, exercise mimetics (metformin), strict pacing], [10--30% improvement over 6--12 months],
    [Established epigenetic silencing], [Some changes reversible with aggressive intervention; others locked], [HDAC inhibitors (vorinostat---high risk), prolonged NAD+ support], [Variable; 0--40% improvement],
    [Microglial priming (moderate)], [Primed microglia can de-activate with sustained anti-inflammatory environment], [LDN, omega-3, curcumin, avoid inflammatory triggers], [Gradual; 10--25% cognitive improvement over 6--12 months],
    [Central sensitization (early)], [Neuroplasticity allows some desensitization; incomplete reversal], [Graded sensory exposure, LDN, avoid opioids, pain psychology], [20--40% pain reduction; rarely complete resolution],
    [Muscle deconditioning], [Muscle rebuilds with careful progressive loading below PEM threshold], [Isometric exercises, very gradual reconditioning (see Chapter @ch:action-mild-moderate)], [Return to 50--70% of pre-illness strength (if PEM avoided)],
  ),
  caption: [Partially Reversible Pathological Mechanisms. *Clinical implication*: Modest functional gains (10--40%) achievable even in established disease (3--10 years duration), but require sustained intervention (6--24 months) and risk of PEM during recovery. Example: Bedbound → housebound, or housebound → house-limited with part-time seated work.]
)
<tab:reversible-tier2>

*Key principle*: _Improvement is incremental and slow._ Patients and clinicians must maintain realistic expectations: 20--30% functional improvement is life-changing (severe → moderate severity) but not "cure."

*Tier 3: Irreversible or Minimally Reversible (Intervention Unlikely to Help).*

These mechanisms involve permanent structural damage, cell death, or deeply entrenched reprogramming beyond current therapeutic reach:

#figure(
  table(
    columns: (auto, auto, auto),
    table.header(
      [*Mechanism*], [*Why Irreversible*], [*Management Strategy*]
    ),
    [Extensive mitochondrial loss (#sym.gt 50--70%)], [Biogenesis capacity overwhelmed; residual mitochondria insufficient to power cell; cell death occurs], [*Accept functional limits*; focus on preventing further loss; maximize function of remaining capacity],
    [High mtDNA mutation burden], [Mutations replicate with each division; dysfunctional mitochondria proliferate faster than healthy ones (clonal expansion)], [*Prevent additional oxidative damage*; antioxidant support; strict pacing; no curative intervention exists],
    [Severe central sensitization (chronic #sym.gt 5--10 years)], [Permanent cortical reorganization; structural brain changes; glial scar formation], [*Symptom management only*; pain psychology; avoid exacerbating factors; LDN may help but no reversal],
    [Neuronal loss], [Neurons do not regenerate; lost cognitive/autonomic function permanent], [*Compensatory strategies*; cognitive aids; environmental modifications; treat residual neuroinflammation to prevent progression],
    [Deep epigenetic locking (#sym.gt 10 years)], [Chromatin compaction; DNA methylation stable across cell divisions; difficult to reverse without cell replacement], [*Experimental only*; high-dose HDAC inhibitors (severe side effects); reprogramming strategies (future research)],
    [Autoimmune memory (long-lived plasma cells in bone marrow)], [Plasma cells live decades; continuously secrete autoantibodies even if B cells depleted], [*Plasma cell targeting* (daratumumab); otherwise, requires repeated immunoadsorption every 6--12 months indefinitely],
  ),
  caption: [Irreversible or Minimally Reversible Mechanisms. *Clinical implication*: In very severe, long-duration disease (#sym.gt 10--15 years, very severe severity), substantial recovery is unlikely. Realistic goal: stabilization and 5--15% improvement. Prevents false hope from "miracle cure" promises while maintaining motivation for achievable gains. Example: Very severe bedbound → severe bedbound but able to tolerate more visitors, less sensory sensitivity.]
)
<tab:reversible-tier3>

*Key principle*: _Futility recognition prevents harm._ Pursuing aggressive, high-risk interventions (experimental stem cells, overseas clinics) when irreversible mechanisms dominate wastes resources and may worsen condition through travel stress, procedure complications, or false hope followed by despair.

=== Clinical Decision Framework: Matching Intervention to Reversibility Tier

*Step 1: Estimate Reversibility Profile.*

Based on disease duration, severity, and biomarkers, estimate which tier dominates:

- *High reversibility potential* (Tier 1 dominant):
  - Disease duration #sym.lt 3 years
  - Mild to moderate severity
  - Documented active inflammation (elevated cytokines, autoantibodies)
  - Recent onset or recent worsening (suggests active process, not burnout)
  - Rapid fluctuations (good days vs bad days---indicates functional not structural)

- *Moderate reversibility potential* (Tier 2 dominant):
  - Disease duration 3--10 years
  - Moderate to severe severity
  - Stable dysfunction (few good days; consistent severe symptoms)
  - Some biomarker abnormalities but not extreme
  - History of partial responses to interventions (suggests residual capacity)

- *Low reversibility potential* (Tier 3 dominant):
  - Disease duration #sym.gt 10--15 years
  - Very severe severity (bedbound, severe sensory sensitivity, minimal tolerance)
  - Complete treatment non-response (tried #sym.gt 10 interventions, zero benefit)
  - Evidence of structural damage (brain MRI changes, severe autonomic failure despite treatment, extreme cognitive impairment)
  - Progressive worsening despite aggressive pacing

*Step 2: Match Treatment Intensity to Reversibility Tier.*

#figure(
  table(
    columns: (auto, auto, auto),
    table.header(
      [*Reversibility Tier*], [*Recommended Approach*], [*Avoid*]
    ),
    [*High (Tier 1)*], [*Aggressive, multi-target intervention*; justify moderate-to-high risk for high potential gain; immunotherapy, multi-target metabolic protocols, consider experimental trials], [Conservative "wait and see"; missed window may allow transition to Tier 2],
    [*Moderate (Tier 2)*], [*Sustained, patient intervention*; low-to-moderate risk; long timelines (6--24 months); supplement stacks, LDN, pacing optimization, gradual reconditioning], [High-risk experimental interventions with severe side effects (benefit unlikely to justify risk)],
    [*Low (Tier 3)*], [*Stabilization and symptom management*; prevent further decline; quality of life focus; palliative approach; low-risk supportive care only], [Aggressive interventions; travel for experimental treatments; false hope from "miracle cures"; high-risk procedures],
  ),
  caption: [Treatment Intensity by Reversibility Tier]
)
<tab:treatment-intensity-matching>

*Step 3: Set Realistic Goals by Tier.*

#warning-env(title: [Percentage Improvement Targets Are Illustrative, Not Evidence-Based])[
The percentage improvement ranges below (30--60%, 10--30%, 5--15%) are illustrative estimates of relative improvement potential between tiers — not validated clinical predictions. No ME/CFS trial has produced these specific figures; they are derived from clinical reasoning about reversibility, not from outcome data. Individual prognosis depends on factors these tiers cannot capture (subtype, comorbidities, available treatments, social support). Use these ranges to communicate the _relative_ principle that earlier-stage disease likely has higher recovery potential, not as specific promises to patients.
]

- *Tier 1 (higher reversibility)*: Illustrative goal = substantial functional improvement (possibly 30--60%), possibly remission
  - Example: Moderate ME/CFS (housebound 3 days/week) → Mild ME/CFS (working part-time, occasional social activities)
  - Aggressive intervention justified if evidence-based options exist; higher expected value compared to later tiers

- *Tier 2 (moderate reversibility)*: Illustrative goal = meaningful functional improvement (possibly 10--30%)
  - Example: Severe (bedbound 80% of time) → Moderate-severe (housebound, can attend medical appointments, short visits)
  - Sustained effort justified; meaningful quality of life gains
  - Not "cure," but life-changing for patient and caregivers

- *Tier 3 (lower reversibility)*: Illustrative goal = stabilization + targeted symptom improvement (possibly 5--15% in specific domains)
  - Example: Very severe (bedbound, severe sensory sensitivity) → Very severe (bedbound, but tolerates 30-minute visitor vs 10 minutes; less severe pain)
  - Focus on quality of life within severe constraints
  - Prevent false hope; validate suffering while maintaining realistic optimism

=== The "20% Rule": Why Modest Improvement Is Life-Changing

Patients, families, and even clinicians often underestimate the impact of 15--25% functional improvement in severe ME/CFS:

#observation(title: [Functional Severity Transitions])[
The severity categories (mild, moderate, severe, very severe) are not linear. Small percentage gains can shift categories:

- *Very severe → Severe* (20% improvement):
  - Before: Bedbound 23 hours/day, cannot tolerate light/sound, requires feeding assistance
  - After: Bedbound 18--20 hours/day, can tolerate low light and whispered conversation for 30 minutes, can self-feed soft foods
  - Impact: Restores dignity, reduces caregiver burden, enables minimal social connection

- *Severe → Moderate-severe* (25% improvement):
  - Before: Housebound, bedbound 60% of day, cannot attend appointments, washing hair triggers crash
  - After: Can attend medical appointments with wheelchair, shower 2×/week without severe crash, sit upright for meals
  - Impact: Access to medical care, basic hygiene, participates in family life

- *Moderate → Mild-moderate* (30% improvement):
  - Before: Cannot work, grocery shopping triggers 3-day crash, housebound 2--3 days/week
  - After: Part-time remote work (10--15 hours/week), can grocery shop with rest breaks, attends important family events
  - Impact: Financial independence, social participation, purpose and identity beyond illness

The "20% rule": In severe disease, 20% functional improvement is not "minimal"---it may represent the difference between complete dependence and partial independence, between social isolation and meaningful connection, between hopelessness and purpose.

Patients should be encouraged to pursue interventions with 20% expected benefit, not dismiss them as "not enough."
] <obs:functional-transitions>

=== Avoiding the Reversibility Trap: When Hope Becomes Harm

#warning-env(title: [The Reversibility Trap])[
The reversibility framework creates a paradox: understanding that some mechanisms are reversible may drive patients to pursue increasingly aggressive, risky interventions in pursuit of full recovery---even when their reversibility profile (Tier 3, low potential) predicts minimal benefit.

*Red flags for reversibility trap*:
- Pursuing experimental treatments overseas despite very severe disease and #sym.gt 15 years duration
- Spending life savings on unproven interventions when Tier 3 profile predicts #sym.lt 10% benefit probability
- Refusing to accept limitations, constantly seeking "one more treatment"
- Severe crashes from travel to clinics, worsening baseline in pursuit of cure
- Family conflict over "giving up" vs realistic goal-setting

*Clinical guidance*:
- Validate patient's desire for improvement while acknowledging irreversibility realities
- Frame stabilization and modest gains as success, not failure
- Discuss opportunity cost: resources spent on futile high-risk interventions vs quality-of-life improvements (better wheelchair, home modifications, caregiver support)
- Psychological support for grief over permanent losses
- Distinguish "false hope" (unproven promises of cure) from "realistic hope" (achievable 10--20% gains)

*Key message*: Accepting irreversibility is not "giving up"---it is strategic resource allocation to maximize achievable gains while preventing harm from futile, high-risk interventions.
]

=== Future Directions: Expanding Reversibility Windows

Current limitations in reversibility may not be permanent. Research directions that could shift Tier 3 mechanisms to Tier 2:

+ *Epigenetic reprogramming*: Safer HDAC inhibitors, targeted chromatin remodeling, cellular reprogramming factors
+ *Mitochondrial replacement*: Mitochondrial transplantation, induced mitochondrial biogenesis beyond current limits
+ *Neuroplasticity enhancement*: Brain stimulation protocols, neuroplasticity drugs, targeted rehabilitation
+ *Senescent cell clearance*: Senolytics to remove dysfunctional cells blocking regeneration
+ *Stem cell therapies*: True regenerative potential (not current mesenchymal stem cell "immune modulation")

Until these become clinically validated, the reversibility framework as outlined represents current realistic boundaries.

#observation(title: [Reversibility-Guided Treatment Philosophy])[
The reversibility windows framework generates a treatment philosophy:

+ *Early aggressive intervention* (Tier 1): Justify moderate-to-high risk for high potential gain; don't "wait and see"
+ *Sustained moderate intervention* (Tier 2): Patient, low-risk, long-timeline approaches; 10--30% gains are meaningful
+ *Stabilization and quality of life* (Tier 3): Prevent harm from futile interventions; accept limitations; maximize achievable gains
+ *Always*: Pacing as disease-modifying therapy across all tiers

This framework prevents two harmful extremes:
- *Therapeutic nihilism*: "Nothing works, don't bother trying" (ignores Tier 1 and 2 reversibility)
- *Unrealistic optimism*: "Full recovery is always possible with enough effort" (ignores Tier 3 irreversibility)

The middle path: Evidence-based hope matched to individual reversibility potential.
]

#observation(title: [The Desperation-Exploitation Gradient])[
Severe, treatment-resistant illness creates vulnerability to exploitation. The ME/CFS patient community has been targeted by:
- Unproven stem cell treatments at overseas clinics
- High-cost "personalized medicine" protocols with little evidence
- Supplements with exaggerated claims
- Practitioners promoting theories rejected by mainstream medicine

While maintaining openness to novel approaches, patients should apply skepticism proportional to claims, cost, and risk. Red flags include: guarantees of cure, pressure to commit quickly, inability to provide outcome data, and hostility to questions.
]

== Cycle Gain Measurement
<subsec:cycle-gain-measurement>

The vicious cycle framework (Chapter @ch:core-symptoms, @sec:pem) identifies "cycle gain" as the amplification factor within each pathophysiological loop. When $G > 1$, each iteration amplifies dysfunction; when $G < 1$, the system naturally dampens toward baseline. Quantifying individual patients' cycle gain could transform prognosis and treatment planning.

=== The Cycle Gain Concept

#hypothesis(title: [Cycle Gain as Prognostic Biomarker])[
Recovery kinetics following standardized exertion may predict long-term disease trajectory.

*Theoretical definition*: The cycle gain $G$ represents net amplification across a vicious cycle. In control theory, for a feedback loop with $n$ sequential processes, the net loop gain is the product of individual gains:
$ G = product_(i=1)^(n) g_i $
where $g_i$ is the gain of each component process (ROS generation, mitochondrial damage, biogenesis impairment, etc.). This multiplicative relationship is standard in feedback systems analysis @Alon2006systems.

*Critical threshold*: $G = 1$ represents a bifurcation point:
- $G < 1$: System naturally dampens perturbations (stable, self-correcting)
- $G > 1$: Perturbations amplify with each iteration (unstable, self-reinforcing)

*Proposed clinical proxy*: We hypothesize that recovery time after standardized exertion _correlates with_ (but does not define) cycle gain. This correlation requires empirical validation. The mapping between recovery time and $G$ proposed in @tab:cycle-gain-prognosis is a testable hypothesis, not an established relationship.

*Evidence Grade*: C (control theory foundation established; ME/CFS application hypothetical)
]

#warning-env(title: [Avoiding Circular Reasoning])[
Cycle gain ($G$) is a theoretical construct representing feedback loop amplification. Recovery time is a proposed _proxy measure_ that may correlate with $G$. The hypothesis is falsifiable: if recovery time does not predict long-term trajectory or treatment response, the proxy is invalid regardless of whether the underlying cycle gain concept is correct.
]

=== Proposed Measurement Protocol

A standardized protocol to measure cycle gain:

*Baseline Assessment (Day 0).*
- Blood draw: ATP, ADP, AMP, lactate, pyruvate, NAD+/NADH ratio
- Symptom assessment: Bell Disability Scale, 7-day symptom diary
- Functional status documentation

*Standardized Exertion (Day 1--2).*
- Two-day cardiopulmonary exercise testing (2-day CPET) per Vermeulen protocol
- Alternative for milder cases: 6-minute walk test at self-selected "comfortable" pace

*Recovery Kinetics (Days 1--28).*
- Blood draws: +30 min, +2h, +24h, +48h, +7 days, +14 days, +28 days
- Daily symptom diaries
- Primary outcome: Time to return to 90% of baseline on Bell Scale

*Proposed Cycle Gain Proxy.*
A clinical proxy for cycle gain could be derived from recovery dynamics:

$ G_"proxy" = frac("Peak symptom severity" times "Recovery time", "Exertion magnitude" times "Baseline function") $

#warning-env(title: [G_proxy Is a Conceptual Heuristic, Not a Theoretically Derived Quantity])[
This formula is an ad hoc construct that captures the qualitative intuition that higher cycle gain should produce larger, longer responses to equivalent exertion. It is *not* derived from the control-theoretic definition of loop gain ($G = product_(i=1)^(n) g_i$), and the two quantities ($G_"proxy"$ and $G$) are not equivalent. The formula has not been validated against any biological measurement; the choice of linear rather than logarithmic or threshold-based form is arbitrary; and the units (if computed numerically) would depend on measurement scales in ways that make cross-patient comparison undefined without standardization. The $G_"proxy"$ notation is retained for continuity with the cycle dynamics framework in Chapter @ch:core-symptoms, but readers should treat it as a label for a research proposal, not a measured quantity.
]

*Calibration*: Healthy control reference values must be established empirically. We hypothesize $G_"healthy" approx 0.2$--$0.4$ based on typical post-exercise recovery (1--3 days), but this requires measurement in validation studies. Note that even if the proxy formula proves empirically predictive, the inferred $G$ values would be proxy-specific (not the true loop gain).

*Alternative operationalizations*: Time to 90% symptom return alone (simpler, more reliable); area-under-curve symptom severity over 14 days; ratio of Day 2 CPET VO#sub[2peak] to Day 1 VO#sub[2peak] (objective, established methodology). Any of these may prove superior to the composite formula above.

=== Clinical Interpretation

#figure(
  table(
    columns: (auto, auto, auto, auto),
    table.header(
      [*Cycle Gain (Proxy)*], [*Recovery Time*], [*2-Year Prognosis*#super[\*]], [*Treatment Implications*]
    ),
    [$G < 0.7$], [#sym.lt 5 days], [Higher recovery potential], [Conservative management; emphasize pacing],
    [$G = 0.7$--$1.0$], [5--10 days], [Moderate recovery potential], [Moderate intervention; address reversible components],
    [$G = 1.0$--$1.5$], [10--21 days], [Lower recovery potential], [Aggressive multi-target therapy; break cycle amplification],
    [$G > 1.5$], [#sym.gt 21 days], [Poor recovery potential], [Intensive intervention required; consider experimental protocols],
  ),
  caption: [Proposed Cycle Gain Classification and Prognosis (Hypothetical---Requires Validation). #super[\*]Specific prognosis percentages removed as they were not empirically derived. The qualitative relationship (longer recovery → poorer prognosis) is hypothesized based on disease chronicity patterns @Cairns2005prognosis but the quantitative mapping to $G$ values requires prospective validation. *Evidence Grade: D* (entire classification scheme is theoretical).]
)
<tab:cycle-gain-prognosis>

#warning-env(title: [Testing Risk])[
The 2-day CPET required for accurate cycle gain measurement may trigger prolonged crashes in susceptible patients. Protocol safeguards:
- Exclude very severe patients (Bell #sym.lt 20) from testing
- Provide 2-week rest period post-testing with monitoring
- Informed consent must communicate potential for temporary worsening
]

=== Research Priorities

+ *Validation study*: Prospective cohort (n ≥ 100) correlating cycle gain measurement with 2-year outcome
+ *Biomarker correlation*: Does ATP/ADP ratio change predict clinical recovery time? (r #sym.gt 0.5 expected)
+ *Treatment response prediction*: Do patients with $G < 1$ show #sym.gt 3× higher response rate to interventions?
+ *Simplified protocol*: Develop point-of-care ATP test + 14-day symptom diary for primary care use

*Evidence Grade*: D (proposed methodology; requires validation)

== Glutamatergic Modulation
<subsec:glutamatergic-modulation>

The DecodeME GWAS identification of glutamatergic synapse genes (_SHISA6_, _UNC13C_) at genome-wide significant or near-significant loci, combined with kynurenine pathway evidence for excitatory/inhibitory imbalance (Chapter @ch:neurological, Section @sec:neurotransmitters), identifies glutamatergic modulation as a genetically-grounded therapeutic target for ME/CFS @DecodeME2025 @MECFSScience2025decodeme2.

=== Memantine (NMDA Receptor Antagonist)
<subsubsec:memantine>

Memantine is an uncompetitive NMDA receptor antagonist approved for moderate-to-severe Alzheimer's disease. Its mechanism---blocking excessive glutamatergic excitation while preserving physiological signaling---is potentially relevant to the excitatory/inhibitory imbalance hypothesized in ME/CFS autonomic circuits (Hypothesis @hyp:glutamatergic-autonomic-bridge, Chapter @ch:integrative-models).

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

*Architecture C perspective.* In the metabolic reserve framework (@sec:architecture-c-metabolic-reserve), glutamate excitotoxicity represents a demand-side reserve reducer: excess excitatory signaling increases baseline Na#super[+]/K#super[+]-ATPase demand, consuming ATP that would otherwise contribute to cognitive or physical headroom. Neurodivergent brains --- particularly those on the autism spectrum --- show altered glutamate/GABA ratios with excess excitatory tone. Low-dose NMDA antagonism could reduce this background metabolic cost without affecting peak cognitive capacity, effectively increasing $R_"headroom"$ by reducing $J_"demand,baseline"$ rather than increasing $J_"production,max"$.

#speculation(title: [Low-Dose Memantine as Demand-Side Metabolic Reserve Intervention])[
*Certainty: 0.20.* Low-dose memantine (5--10 mg) in ME/CFS patients with documented glutamate/GABA imbalance or ASD comorbidity could reduce baseline neural metabolic cost and increase functional headroom. This targets a different parameter than mitochondrial supplements (which target production capacity): memantine reduces demand. Case reports of memantine benefit in ME/CFS exist but are uncontrolled. Well-tolerated at low doses in autism trials. The certainty is low because no controlled data support this specific mechanism in ME/CFS, and the glutamate/GABA imbalance in ME/CFS is itself not well-established. Not yet replicated.
] <spec:memantine-demand-reduction>

=== Ion Homeostasis Therapeutics: MDC002 (Mitodicure)
<sec:mdc002>

The acquired ischemic mitochondrial myopathy (AIMM) model (Section @sec:sodium-calcium-cascade in Chapter @ch:energy-metabolism) proposes a specific ionic cascade as the *likely* proximal driver of mitochondrial damage in ME/CFS (Hypothesis @hyp:vicious-cycle-integrated): ischaemia → proton accumulation → NHE1 activation → Na#super[+] overload → NCX1 reversal → NCLX block → Ca#super[2+] overload → mitochondrial injury. Because this is an *acquired* ionic pathology rather than a primary genetic mitochondrial disease, it is hypothesized to offer a pharmacologically tractable target: interrupt the ionic cascade, and mitochondrial function should recover.

MDC002, developed by Mitodicure GmbH (Frankfurt, Germany), is an oral small-molecule candidate designed to do exactly this, operating via dual ionic targets in skeletal muscle.

=== Mechanism of Action

MDC002 acts through two synergistic mechanisms:

    / *Na#super[+]/K#super[+]-ATPase stimulation*: MDC002 is designed to activate the sodium-potassium pump, which would correct intracellular sodium overload. By restoring the Na#super[+] gradient, it is predicted to eliminate the thermodynamic drive for NCX1 reversal (the NCX reversal potential $E_"NCX" = 3 E_"Na" - 2 E_"Ca"$ would shift back toward its normal range, restoring forward-mode calcium export).

    / *NCLX activation*: MDC002 is designed to activate the mitochondrial sodium-calcium exchanger NCLX (_SLC8B1_), the primary route of calcium efflux from the mitochondrial matrix. This is predicted to address the second arm of the calcium trap: even if some NCX1 reversal persists, activated NCLX would clear the mitochondrial calcium load.

Together these two mechanisms are designed to address both sides of the calcium accumulation problem simultaneously---reducing calcium influx via NCX1 restoration and increasing calcium efflux via NCLX activation. If successful, restored ionic homeostasis is hypothesized to prevent mitochondrial calcium overload, allow oxidative phosphorylation to recover, and reduce the ROS-driven endothelial damage that perpetuates ischaemia at the vascular level (Section @sec:vicious-cycle). These are mechanistic predictions from the AIMM model; no human pharmacodynamic data confirm these effects.

The compound is distinct from immunotherapies described earlier in this chapter: it does not target autoantibodies or immune activation, and Mitodicure positions it as effective across ME/CFS subtypes regardless of immunological etiology @Mitodicure2024pipeline. The ionic cascade is proposed to produce the same downstream pathology whether triggered by GPCR autoantibody-mediated vasoconstriction, primary endothelial dysfunction, or other upstream mechanisms; no cross-subtype clinical evidence yet exists to confirm this.

=== Patent Basis and Targets

Three patent applications cover MDC002 and related compounds, specifying three molecular activities:

    + Sodium-hydrogen antiporter 1 (NHE1 / SLC9A1) *inhibitory* activity---reducing the proton-extrusion/sodium-import step that initiates the cascade
    + Phosphodiesterase-7 (PDE7) *inhibitory* activity---PDE7 inhibition elevates cAMP, which enhances Na#super[+]/K#super[+]-ATPase activity via beta-adrenergic signaling pathways and has anti-inflammatory effects on T cells
    + Substituted benzoxazole and benzofuran scaffolds---the chemical class of the lead compound

#speculation(title: [PDE7 Inhibition as Beta-Adrenergic Bypass])[
*Certainty: 0.25.* The PDE7 inhibitory activity is mechanistically notable: PDE7 inhibitors amplify cAMP signaling downstream of beta-2 adrenergic receptors---the same receptors whose autoantibody-mediated dysfunction Scheibenbogen and colleagues identified as an upstream trigger in a subset of patients. If beta-2AdR signaling is impaired (whether by autoantibodies or receptor internalization), PDE7 inhibition could provide a downstream bypass: cAMP accumulates even when receptor activation is reduced, potentially restoring Na#super[+]/K#super[+]-ATPase stimulation via the intracellular pathway. This convergence between the ionic cascade and the autoantibody hypothesis is speculative; the shared mechanism has not been tested experimentally.
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

=== Orthogonal Calcium Correction: LDN + MDC002 Combination Rationale
<sec:ldn-mdc002-combination>

#speculation(title: [LDN + MDC002 as Subtype A and Subtype B Convergence Therapy])[
The Calcium Subtype A/B framework (Section @sec:calcium-subtypes) identifies two mechanistically distinct calcium pathways in ME/CFS: Subtype A (energy failure $arrow.r$ NCX reversal $arrow.r$ Ca#super[2+] overload, targeted by MDC002) and Subtype B (primary TRPM3 channelopathy $arrow.r$ impaired Ca#super[2+] signaling, targeted by LDN). Many patients may express both pathways simultaneously: chronic TRPM3 dysfunction impairs immune surveillance, sustaining viral persistence and inflammatory burden, which eventually produces hypoperfusion, energy failure, and NCX reversal.

*Proposed combination rationale:* LDN and MDC002 modulate calcium in opposite directions in different compartments, and in so doing are predicted to be complementary rather than redundant:

    - LDN *restores* Ca#super[2+] entry in immune cells (TRPM3 arm): reverses impaired NK degranulation, corrects frustrated immune response, reduces inflammatory drive
    - MDC002 *prevents* Ca#super[2+] toxicity in muscle cells (NCX arm): restores Na#super[+]/K#super[+]-ATPase, reverses NCX1 reversal, prevents PEM-triggered calcium overload

These mechanisms act on distinct tissues, distinct channels, and move calcium in opposite physiological directions. No pharmacokinetic interaction is predicted. Both have favorable safety profiles individually.

*Falsifiable predictions:* (a) Patients receiving LDN+MDC002 combination should show improvement in both NK cytotoxicity (TRPM3 arm) AND post-exercise intracellular sodium accumulation on #super[23]Na-MRI (NCX arm), whereas monotherapy improves only one endpoint. (b) Subtype A-dominant patients (high intracellular sodium, normal TRPM3) respond to MDC002 alone; Subtype B-dominant patients (abnormal TRPM3, normal sodium accumulation) respond to LDN alone; mixed patients require the combination.

#warning-env(title: [Research Rationale Only --- Not a Clinical Protocol])[
This combination has never been tested in humans. MDC002 is a preclinical compound with no human pharmacokinetic or safety data. LDN has clinical use in ME/CFS and fibromyalgia with acceptable safety; combining it with an untested compound is not clinically appropriate outside of a formal research protocol. This rationale is presented to motivate trial design, not to guide patient self-experimentation.
]

(Certainty: 0.40. Individual mechanisms are supported; the combination is mechanistic inference without empirical support. Not yet tested in ME/CFS.)
] <spec:ch18-ldn-mdc002-combination>

=== Bridging Therapies: Targeting the AIMM Cascade While Awaiting MDC002
<sec:aimm-bridging>

MDC002 targets the AIMM ionic cascade with high specificity, but it remains in preclinical development as of early 2026. Several existing or investigational compounds act on overlapping nodes of the same cascade and may provide partial benefit in the interim. None has been designed specifically for the AIMM mechanism; none has been tested in a trial explicitly targeting ionic homeostasis in ME/CFS. Their relevance is mechanistic, not established.

#limitation(title: [AIMM Is One of Several Competing Mechanistic Frameworks])[
The AIMM cascade is the organizing hypothesis for this section, but at least three other frameworks offer alternative explanations for ME/CFS energy failure, each suggesting different intervention priorities. Naviaux's cell danger response (CDR) and purinergic signaling model @Naviaux2014cdr proposes that extracellular ATP and purinergic receptor activation maintain a persistent cellular defense state; its primary intervention target is antipurinergic therapy rather than ionic cascade correction. Phair's itaconate shunt hypothesis proposes that immune-metabolic reprogramming diverts citrate to itaconate production via aconitase inhibition, producing functional TCA cycle arrest; its intervention target is upstream of the ionic cascade. Systrom's preload failure model identifies abnormal oxygen extraction and hemodynamic insufficiency as primary drivers, rather than downstream ionic pathology. The bridging agents below are framed through the AIMM lens, but their documented benefits (pyridostigmine in hemodynamic OI, CoQ10 in fatigue) are equally compatible with these alternative frameworks. Readers should not conclude that benefit from a bridging agent constitutes evidence for the AIMM mechanism specifically.
]

The AIMM cascade (Section @sec:sodium-calcium-cascade) proceeds as: ischaemia → proton accumulation → NHE1 activation → Na#super[+] overload → NCX1 reversal → mitochondrial Ca#super[2+] overload → OXPHOS failure. Bridging candidates act at different nodes:

#figure(
  table(
    columns: (auto, auto, auto, auto),
    align: (left, left, left, left),
    table.header(
      [*Compound*], [*AIMM node targeted*], [*ME/CFS evidence*], [*Availability*],
    ),
    [Pyridostigmine], [Na#super[+]/K#super[+]-ATPase (indirect, via ACh)], [2 positive trials], [Off-label, available],
    [CoQ10 + NADH], [Mitochondrial ETC (upstream of Ca#super[2+] overload)], [RCT n=207], [OTC, available],
    [Vericiguat], [sGC/cGMP → vasodilation + mitochondrial protection], [Active RCT (NCT05697640)], [Trial enrolment],
    [Rimeporide], [NHE1 direct inhibitor], [None], [Investigational only],
    [Ranolazine], [Late Na#super[+] current → reduces Ca#super[2+] overload], [None], [Off-label (approved angina)],
    [Nimodipine], [VGCC → reduces NCX1 reverse-mode drive], [Case series only], [Off-label, available],
    [Trimetazidine], [Mitochondrial metabolic protection], [Active RCT (TRI-ME, Australia)], [Trial enrolment],
    [Carnosine / beta-alanine], [Proton buffering → reduces NHE1 activation drive], [None], [OTC, available],
    [Magnesium], [NCLX cofactor; reduces NCX1 reverse-mode], [Observational only], [OTC, available],
    [Taurine], [Mitochondrial Ca#super[2+] membrane stabilization], [None], [OTC, available],
  ),
  caption: [Compounds with mechanistic relevance to the AIMM cascade, grouped by AIMM node. Evidence grades reflect ME/CFS-specific data only; all are investigational for this indication unless noted.],
) <tbl:aimm-bridging>

==== Compounds with ME/CFS Trial Data

*Pyridostigmine* (acetylcholinesterase inhibitor) enhances cholinergic tone, which stimulates Na#super[+]/K#super[+]-ATPase via muscarinic signaling. Its primary indication in ME/CFS is hemodynamic orthostatic intolerance, where two controlled studies have produced positive results. Joseph et al.\ (2022) demonstrated improved preload failure on invasive cardiopulmonary exercise testing @Joseph2022pyridostigmine, and Squires et al.\ (2023) documented improved long-term exercise capacity (oxygen uptake efficiency slope, pulmonary vascular capacitance) @Squires2023pyridostigmine. These results suggest pyridostigmine acts on vascular physiology relevant to the ischaemic component of the AIMM model, though the mechanism has not been characterized at the ionic level. Its inclusion in the autonomic arm of the LIFT trial (low-dose naltrexone + pyridostigmine) tests an additional immunomodulatory hypothesis via the cholinergic anti-inflammatory pathway.

*CoQ10 + NADH* acts downstream of the ionic cascade, supporting mitochondrial electron transport capacity in the context of energy deficit rather than blocking the ionic trigger. Castro-Marrero et al.\ (2021) conducted a prospective RCT (n=207) of 200 mg CoQ10 + 20 mg NADH daily for 12 weeks and reported significant reductions in cognitive fatigue (p#sym.lt 0.001), improvements in overall fatigue impact (FIS-40, p=0.022), and quality of life (SF-36, p#sym.lt 0.05), with benefits persisting four weeks post-treatment @CastroMarrero2021CoQ10. This represents the highest-quality current evidence for a mitochondrial-support intervention in ME/CFS. CoQ10 bioavailability is formulation-dependent; crystal-modified ubiquinone achieves approximately 75% better absorption than standard crystalline formulations.

==== Active Clinical Trials

*Vericiguat* is a soluble guanylate cyclase (sGC) stimulator approved for heart failure with reduced ejection fraction. By elevating cGMP independently of nitric oxide availability, it produces vasodilation, reduces cardiac preload, and has demonstrated mitochondrial protective effects in preclinical cardiac ischaemia models. Its relevance to ME/CFS derives from the vascular insufficiency component of the AIMM model: if endothelial NO bioavailability is impaired (the mechanism proposed in Section @sec:endothelial), sGC stimulation could partially compensate. The Scheibenbogen group (Charité Berlin) holds a patent application on sGC stimulators for ME/CFS treatment and has registered a clinical trial (NCT05697640) testing vericiguat in ME/CFS patients. No efficacy results are published as of early 2026.

*Trimetazidine* is a mitochondrial cytoprotective agent that shifts cardiac and skeletal muscle metabolism from fatty acid oxidation toward glucose oxidation, reducing oxygen demand per unit of ATP produced. An Australian RCT (TRI-ME) is testing trimetazidine in ME/CFS; results are not yet available. *Regulatory and sport note*: Trimetazidine is not approved by the FDA (not available in the United States) and is listed by WADA as a prohibited substance in-competition and out-of-competition; patients in competitive sport cannot use it legally.

==== Mechanistically Relevant, No ME/CFS Data

*Rimeporide* is the most direct NHE1 inhibitor with human safety data (Phase Ib completed in Duchenne muscular dystrophy). NHE1 is the second step of the AIMM cascade; its inhibition would directly block the proton-extrusion/Na#super[+]-import exchange that initiates intracellular sodium overload. No ME/CFS trial of rimeporide is registered.

*Ranolazine* (approved for refractory angina) inhibits the late persistent sodium current (late I#sub[Na]), reducing cytosolic Na#super[+] accumulation and thereby decreasing the thermodynamic drive for NCX1 reversal. The mechanism is upstream of but distinct from NHE1 inhibition. No ME/CFS data exist.

*Nimodipine* (dihydropyridine calcium channel blocker approved for subarachnoid haemorrhage) blocks voltage-gated Ca#super[2+] channels, reducing extracellular Ca#super[2+] influx that could sustain NCX1 reverse-mode operation. Its relevance is indirect; one published case series describes ME/CFS symptom improvement with nimodipine, but no controlled evidence exists.

*Carnosine* (or its precursor *beta-alanine*) acts as an intracellular proton buffer. By reducing cytosolic proton accumulation upstream of NHE1 activation, it could theoretically reduce the stimulus for NHE1-mediated sodium import. This is mechanistically the furthest upstream of any bridging candidate. No ME/CFS trials exist.

*Magnesium* is a required cofactor for Na#super[+]/K#super[+]-ATPase and NCLX function; deficiency impairs both calcium extrusion pathways. Magnesium deficiency has been reported in ME/CFS cohorts, and repleting deficiency (via oral or intravenous supplementation) is low-risk and widely practiced. Whether supraphysiological magnesium produces additional benefit beyond correcting deficiency is uncharacterized.

#warning-env(title: [AIMM Bridging Agents: Mechanistic Rationale Only])[
None of the agents in Table @tbl:aimm-bridging has been tested in a trial designed to target the AIMM ionic cascade in ME/CFS. Evidence for pyridostigmine and CoQ10+NADH comes from ME/CFS trials with different mechanistic framing (hemodynamic and mitochondrial support, respectively). Rimeporide, ranolazine, and carnosine have no ME/CFS data at all. Extrapolating from mechanism to clinical recommendation in a population with impaired stress tolerance and complex drug sensitivity is not supported. These agents are presented to illustrate mechanistic convergence with MDC002 and to identify research priorities, not to guide clinical decision-making.
]

#open-question(title: [Which AIMM Cascade Node is the Best Bridging Target?])[
MDC002 targets Na#super[+]/K#super[+]-ATPase and NCLX simultaneously. Existing compounds target individual nodes: NHE1 (rimeporide, ranolazine), Na#super[+]/K#super[+]-ATPase (pyridostigmine), NCX1 reverse-mode (nimodipine), proton accumulation (carnosine), and mitochondrial downstream (CoQ10, trimetazidine). A mechanistic head-to-head trial design — randomizing patients to agents targeting different cascade nodes — would identify which node is rate-limiting for clinical improvement. This has not been attempted. The answer would also inform MDC002's trial design: if proton-buffering upstream interventions produce benefit, it suggests the NHE1 activation step is accessible; if downstream mitochondrial support is more effective, it suggests the calcium overload step is the binding constraint.
] <oq:aimm-cascade-node>

== Neuromuscular Junction Modulation: Amifampridin (3,4-DAP)
<sec:amifampridin>

Amifampridin (3,4-diaminopyridine) is a voltage-gated potassium channel blocker approved for Lambert-Eaton myasthenic syndrome (LEMS), where it enhances acetylcholine release at the neuromuscular junction by prolonging presynaptic action potentials. Its relevance to ME/CFS and post-COVID fatigue derives from the hypothesis that neuromuscular transmission failure contributes to the pathological fatigability observed in these conditions.

Boehmeke (2024) reported a collective case series of five post-COVID syndrome patients treated with amifampridin, incorporating double-blind discontinuation trials with alternating three-day periods of active medication versus placebo @Boehmeke2024amifampridin. All five participants demonstrated improvement on the Bell Disability Scale, measuring alertness, physical capacity, and work capacity. Pathologically increased sleep requirement normalized during treatment. In the blinded discontinuation phase, two of five participants showed clear deterioration on placebo, confirming the drug effect beyond open-label response.

#warning-env(title: [Amifampridin: Minimal Evidence Base])[
This is a case series of five patients with no control group beyond the within-subject discontinuation design. Only two of five participants showed confirmed blinded response, and the three-day crossover periods may be too short for adequate washout. The mechanism connecting potassium channel blockade at the neuromuscular junction to post-COVID fatigue has not been characterized. Amifampridin carries risks of seizures (dose-dependent), paresthesias, and gastrointestinal symptoms. Its use in post-COVID or ME/CFS is off-label and not supported by current evidence for clinical adoption outside a research setting.
]

*Evidence Grade*: D --- single n=5 case series with partial blinded confirmation; mechanistically interesting (NMJ modulation); RCT required

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

== Metabolic Reserve Interventions
<sec:metabolic-reserve-interventions>

The metabolic reserve hypothesis (@sec:architecture-c-metabolic-reserve) identifies several pharmacological targets for increasing $R_"headroom"$ — either by improving energy production capacity or by reducing the metabolic cost of baseline function. The following interventions are speculative but based on established pharmacology applied to a novel indication. None of these interventions has been validated for ME/CFS. Clinicians should treat this section as a research-stage landscape rather than a prescribing guide — all require specialist discussion, off-label consent where applicable, and individual risk-benefit assessment.

=== Sapropterin (Kuvan) — BH4 Supplementation
<subsec:sapropterin-bh4>

*Mechanism:* Synthetic BH4 (6R-BH4), FDA-approved for phenylketonuria. Simultaneously supports dopamine synthesis, serotonin synthesis, and nitric oxide-mediated cerebral perfusion — directly addressing the proposed BH4 convergent bottleneck (@spec:bh4-convergent-bottleneck).

*Evidence:* Williams 2025 case series ($n = 5$) documented ADHD symptom improvement with low-dose BH4 (0.088–0.292 mg/kg/day) @Williams2025GCH1BH4. ColpaniFilho 2025 systematic review consistently found low BH4 in ASD @ColpaniFilho2025BH4ASD. No ME/CFS trials exist.

*Target population:* GCH1 rs841 homozygous ME/CFS patients (genotype-guided); neurodivergent ME/CFS patients with documented low serum biopterin or elevated neopterin:biopterin ratio. GCH1 genotyping is not a standard clinical test — it requires research-laboratory sequencing or direct-to-consumer genomic testing (e.g., 23andMe raw data includes rs841), with no routine ordering pathway or insurance billing code in most health systems.

*Risk:* Low to moderate. Well-characterized safety profile from decades of PKU use. Main risk: if NO production increases systemically before cerebral autoregulation adapts, transient hypotension is possible. Cost is prohibitive for most patients globally (~\$1,000–3,000/month without insurance), making this effectively inaccessible outside well-insured health systems. The OTC BH4-recycling stack (@subsubsec:bh4-recycling-support) is a partial alternative at ~\$20/month.

#warning-env(title: [Sapropterin Is Research-Stage for ME/CFS])[
No ME/CFS trial data exist for sapropterin. The rationale is entirely derived from the BH4 convergent bottleneck hypothesis (certainty 0.35). The evidence base consists of a 5-patient ADHD case series and ASD observational data. Off-label use should not be attempted without specialist supervision, BH4/neopterin baseline measurement, and monitoring for hypotension. Cost may be prohibitive.
]

#speculation(title: [BH4 Supplementation as Metabolic Reserve Intervention in ME/CFS])[
*Certainty: 0.30*

If BH4 depletion is indeed the convergent bottleneck linking predisposing conditions to ME/CFS (@spec:bh4-convergent-bottleneck), sapropterin supplementation in BH4-depleted ME/CFS patients should improve both cognitive function (via dopamine/serotonin) and orthostatic tolerance (via NO-mediated cerebral perfusion). GCH1 rs841 homozygotes (~4% of the population) represent a genotype-guided target population analogous to pharmacogenomic approaches in oncology. The prediction is testable in a small crossover trial ($n = 20$, GCH1-stratified) measuring cognitive performance, tilt-table response, and urinary neopterin:biopterin ratio before and after 8 weeks of low-dose sapropterin. Not yet replicated — zero ME/CFS-specific data.
] <spec:sapropterin-mecfs>

=== Low-Dose Methylphenidate with Enforced Pacing Protocol
<subsec:methylphenidate-pacing>

_Rationale:_ The Vernon 2025 survey data (77% brain fog improvement, $-1.5%$ PEM effect; @Vernon2025PNAS) and the Architecture C stimulant analysis (@pred:stimulant-pacing-interaction) suggest that the net PEM-neutral effect masks two opposing subgroups. Reframing methylphenidate not as a fatigue treatment but as a cognitive efficiency intervention — paired with enforced pacing to prevent activity escalation — may capture the $R_"headroom"$ benefit while avoiding the PEM risk.

_Mechanism:_ Low-dose methylphenidate (5–10 mg, not the standard ADHD dose of 20–60 mg) increases synaptic dopamine availability, reducing the metabolic cost per unit of cognitive output. At low doses, methylphenidate may additionally maintain Parkin-mediated mitophagy and reduce mitochondrial ROS (@Almutairi2024mitoadhd), providing a direct mitochondrial benefit beyond catecholamine efficiency.

_Protocol:_ Combine low-dose methylphenidate with mandatory pacing structure: time-limited cognitive blocks (25 minutes), mandatory 10-minute rest between blocks, maximum 4 blocks per session, maximum 2 sessions per day (mild ME/CFS). The medication provides the cognitive efficiency; the pacing prevents activity escalation.

_Target population:_ ME/CFS patients with ADHD comorbidity or documented catecholamine deficiency (Walitt 2024 CSF metabolites; @Walitt2024NIH).

_Risk:_ Moderate. Requires careful behavioral monitoring — the subjective improvement creates strong temptation to exceed the pacing protocol. Standard methylphenidate cardiovascular monitoring applies. The pacing component requires external accountability (timer apps, caregiver support) because ADHD patients cannot reliably self-pace. Titration: start at 5 mg immediate-release, morning only. Increase by 2.5 mg weekly if tolerated, not exceeding 10 mg. Expected time-to-response for cognitive efficiency: 1–2 weeks. Monitor: resting heart rate, blood pressure, and PEM diary at baseline, 2 weeks, and 4 weeks. In ME/CFS patients with baseline tachycardia or POTS, obtain cardiology clearance before initiation.

#warning-env(title: [Stimulant Use in ME/CFS Requires Strict Pacing Discipline])[
Without enforced pacing, stimulants in ME/CFS risk enabling activity escalation that worsens PEM. The Vernon 2025 finding of -1.5% PEM effect is a population average that likely conceals increased PEM in patients who escalated activity. This protocol is untested as an integrated intervention. Patients and prescribers must agree on non-negotiable pacing limits before initiation.
]

#speculation(title: [Methylphenidate + Pacing as Cognitive Reserve Protocol])[
*Certainty: 0.40*

If behavioral demand is held constant by strict pacing, low-dose methylphenidate should increase cognitive $R_"headroom"$ by reducing $J_"demand"$ for equivalent output — predicting lower PEM frequency in compliant patients compared to untreated controls. A crossover trial ($n = 30$, ADHD + ME/CFS) randomizing methylphenidate vs placebo with identical pacing protocols and PEM diary monitoring would test this directly. The critical comparison is PEM frequency, not fatigue scores — the prediction is that PEM decreases only when activity does not escalate. Partially supported by the Vernon 2025 data pattern @Vernon2025PNAS but never tested as an integrated protocol. Not yet replicated.
] <spec:methylphenidate-pacing-protocol>

=== Iron Repletion to Ferritin >100 ng/mL in Neurodivergent ME/CFS
<subsec:iron-repletion-neurodivergent>

_Rationale:_ Iron serves as a dual bottleneck in neurodivergent ME/CFS: it is a cofactor for mitochondrial Complex I/II function AND for tyrosine hydroxylase (dopamine synthesis). Standard ferritin thresholds ($> 30$ ng/mL) may be insufficient for neurodivergent brains with higher catecholamine demand. The ADHD literature suggests ferritin $< 50$ ng/mL is suboptimal; some clinicians target $> 100$ ng/mL (@DelRosso2026ironNeurodevelopmental).

_Mechanism:_ Iron repletion simultaneously improves two Architecture C reserve reducers — mitochondrial energy production capacity ($J_"production,max"$) and dopaminergic efficiency (reducing $J_"demand"$ for equivalent cognitive output). This makes iron unique among metabolic reserve interventions: it shifts both terms of the $R_"headroom"$ equation favourably.

_Protocol:_ Oral iron bisglycinate (preferred for tolerability), titrated to ferritin $> 100$ ng/mL with transferrin saturation monitoring. For patients intolerant to oral iron: IV ferric carboxymaltose (single infusion, avoids gastrointestinal burden relevant to bedbound patients). Monitor ferritin and transferrin saturation every 3 months; stop if transferrin saturation $> 45%$. Also pause supplementation if ferritin exceeds 200 ng/mL — overshoot beyond the target range increases iron overload risk without demonstrated additional benefit.

_Target population:_ All neurodivergent ME/CFS patients with ferritin $< 100$ ng/mL. Broader application to all ME/CFS patients with ferritin below this threshold is reasonable given the low risk profile.

_Risk:_ Low if monitored. Iron overload risk managed with transferrin saturation monitoring. Gastrointestinal side effects common with oral forms (mitigate with bisglycinate form, every-other-day dosing). Contraindicated in haemochromatosis carriers.

#warning-env(title: [Ferritin >100 ng/mL Target Is Clinical Opinion, Not Trial-Validated])[
The $> 100$ ng/mL target derives from ADHD clinical practice and expert opinion, not from ME/CFS randomized trials. Standard hematological thresholds ($> 30$ ng/mL) are sufficient to exclude iron deficiency anemia. The higher target is based on the rationale that neurodivergent brains require more iron for dopamine synthesis, but this threshold has not been validated for ME/CFS outcomes. Iron supplementation above standard thresholds should be discussed with a physician.
]

#hypothesis(title: [Higher Ferritin Targets for Neurodivergent ME/CFS])[
*Certainty: 0.50*

Iron repletion to ferritin $> 100$ ng/mL in neurodivergent ME/CFS patients with baseline ferritin $30$–$100$ ng/mL should improve both fatigue scores and cognitive function by simultaneously augmenting mitochondrial capacity and dopaminergic efficiency. This is the most immediately actionable prediction from Architecture C: cheap (~\$5–15/month oral), widely available, well-tolerated, and measurable via routine blood tests. A pragmatic RCT ($n = 60$, ME/CFS + neurodivergent, ferritin $30$–$100$) randomizing aggressive repletion (target $> 100$) vs standard care (target $> 30$) with 6-month follow-up on fatigue, cognitive function, and PEM frequency would be definitive. Not yet replicated — no ME/CFS-specific trial targeting higher ferritin thresholds exists. @DelRosso2026ironNeurodevelopmental
] <hyp:iron-repletion-higher-target>

== Unified Autonomic Treatment Approach
<subsec:unified-autonomic>

The Diagnostic Mirage hypothesis (Speculation @spec:diagnostic-mirage, Chapter @ch:integrative-models) proposes that ME/CFS, POTS, hEDS, and MCAS may represent phenotypic fragments of a single autonomic vulnerability. If correct, treating the underlying autonomic dysfunction should improve all four "conditions" simultaneously, and a unified approach may outperform the current clinical practice of stacking separate treatments for each diagnosis.

*Candidate unified approaches:*

    - *Transcutaneous vagus nerve stimulation (tVNS):* Modulates both autonomic tone (parasympathetic enhancement) and neuroinflammation. Multi-site RCT currently recruiting for ME/CFS. Could simultaneously improve autonomic symptoms (POTS), inflammatory mediator release (MCAS), and central sensitization (cognitive symptoms, pain). *Important mechanistic caveat:* the vagus nerve is not a uniform cable but a multi-fascicle mixed nerve containing three fiber populations with different activation thresholds — large myelinated A-fibers (lowest threshold; includes laryngeal efferents, explaining voice hoarseness as a common tVNS side effect), smaller myelinated B-fibers (preganglionic autonomic efferents: heart rate, bronchomotor tone, gut motility), and unmyelinated C-fibers (numerically dominant; slow visceral/inflammatory signals, highest threshold) @Bu2026VNSReview. The anti-inflammatory C-fiber pathway is therefore not simply "dialled up" by increasing intensity — robust C-fiber recruitment at cervical VNS sites typically requires parameters that also fully engage A- and B-fiber populations. Electrode placement, pulse width, frequency, and duty cycle all determine which fiber classes are actually recruited under a given protocol, and studies rarely report this. Cross-study comparisons of tVNS "effects on inflammation" or "fatigue" are therefore difficult to interpret without knowing the fiber-class engagement profile @Bu2026VNSReview.
    - *Pyridostigmine:* Acetylcholinesterase inhibitor enhancing parasympathetic tone. Used for POTS; may also reduce neuroinflammation via the cholinergic anti-inflammatory pathway. The LIFT trial (LDN + pyridostigmine) tests a combination that targets both autonomic regulation and immune modulation. The fiber-selectivity framework raises the speculative possibility that pyridostigmine — by amplifying ACh at neuroeffector junctions — might potentiate whatever vagal efferent signal is present, reducing the reliance on reaching C-fiber recruitment thresholds. This is untested and would require the B-fiber efferent pathway to deliver ACh to the same macrophage targets (alpha-7 nAChR on splenic macrophages via the splenic nerve relay) as C-fiber-mediated pathways — an anatomical assumption that has not been validated @Bu2026VNSReview.
    - *Integrated protocol:* Rather than prescribing fludrocortisone for POTS, physiotherapy for hEDS, antihistamines for MCAS, and pacing for ME/CFS as independent treatments, an integrated protocol would target autonomic regulation as the upstream driver and measure outcomes across all four diagnostic categories simultaneously.

#speculation(title: [Unified Autonomic Protocol Trial Design])[

*Certainty: 0.25.* A pragmatic clinical trial could test the unified hypothesis directly. Enroll patients meeting criteria for ME/CFS plus at least one of POTS, hEDS, or MCAS. Randomise to either "unified autonomic approach" (tVNS + pyridostigmine + structured autonomic rehabilitation) or "standard stacked care" (separate treatments per each diagnosis). Primary outcome: composite disability score. Key secondary: proportion of patients showing improvement across $gt.eq$3 of 4 diagnostic categories simultaneously. If the unified approach produces coordinated improvement across categories while stacked care does not, this supports the single-syndrome hypothesis and could transform clinical practice.

*Limitations:* Pragmatic trials sacrifice internal validity for external validity. The unified intervention is complex, making it difficult to attribute effects to specific components. Ethical concerns about withholding established treatments in the control arm could be addressed by using add-on design (standard care + unified vs. standard care alone).
] <spec:unified-autonomic-trial>

#speculation(title: [The "Wrong Fibers" Hypothesis: VNS Non-Response as a Fibre-Selectivity Artifact])[

*Certainty: 0.30.* ME/CFS VNS trials report highly variable outcomes. The fiber-selectivity framework (Bu et al. 2026 @Bu2026VNSReview) offers one possible explanation: responders may be those whose primary pathology is B-fiber-mediated (autonomic dysregulation — POTS, HRV abnormalities, heart rate control), while non-responders may be those whose pathology is primarily C-fiber-mediated (chronic inflammatory signaling, immune dysregulation). At standard clinical parameters, VNS devices engage A and B fibers effectively but C-fibers poorly — so a patient whose ME/CFS pathology is predominantly inflammatory might not receive the therapeutic signal they need.

Important caveats on the evidence: The Natelson pilot @NatelsonTVNS2022 cited here (57% response, n=14, open-label, preprint) cannot distinguish drug effect from placebo response — ME/CFS trials routinely show 24% placebo response rates, and an uncontrolled 57% figure may reflect mostly placebo. The "variability" this hypothesis explains may be statistical noise rather than a real treatment-responder signal. The same fiber-selectivity logic that explains non-response should also call into question what the positive responses represent: if standard-parameter tVNS engages primarily A/B fibers, positive responses in the "inflammatory-dominant" group cannot be attributed to C-fiber anti-inflammatory mechanisms either.

*Existing evidence:* Yu et al.\ (2022) showed that low baseline vagal tone (HF-HRV < 200 ms#super[2]) predicted response to taVNS in POTS @Yu2022 — consistent with B-fiber-mediated autonomic supplementation, though a ceiling effect in patients with normal vagal tone is an equally parsimonious explanation. No ME/CFS study has measured inflammatory biomarker response to VNS stratified by stimulation parameters or fiber-class engagement.

*Testable prediction:* In a tVNS trial with concurrent compound nerve action potential (CNAP) monitoring, C-fiber-confirmed engagement will predict anti-inflammatory response (IL-6, TNF-alpha reduction) while A/B-only engagement will predict autonomic but not inflammatory improvement. ME/CFS patients phenotyped as autonomic-dominant will respond to B-fiber-range parameters; immune-dominant patients will require C-fiber-range parameters. *Not yet replicated; rests on one mechanistic review paper; no ME/CFS trial data.*

*Limitations:* Alternative explanations for VNS response variability — ME/CFS heterogeneity in etiology, disease stage, and comorbidity profile — are at least as parsimonious as the fiber-selectivity hypothesis and require no novel assumptions. Pure autonomic-vs-inflammatory subtype separation does not exist in clinical reality: most ME/CFS patients have mixed features, which limits the predictive value of this framework. The CNAP monitoring required for direct fiber-class confirmation is not available in clinical settings. The validated subtyping tool ("autonomic-dominant vs. immune-dominant") this hypothesis requires does not exist.
] <spec:vns-wrong-fibres>

#speculation(title: [Gut Microbiome Restoration as Indirect Vagal C-Fibre Therapy])[

*Certainty: 0.40.* The butyrate → enterochromaffin (EC) cell serotonin → vagal afferent pathway described in Chapters @ch:gut-microbiome and @ch:energy-metabolism can be reinterpreted, in fiber-selectivity terms, as a natural route for activating predominantly unmyelinated vagal afferent terminals in the gut mucosa. Kaelberer et al. (2018) established that EC cells form glutamatergic synapses with vagal afferent neurons @Kaelberer2018; these mucosal vagal afferent terminals are predominantly unmyelinated (C-fiber class). Therefore, restoring butyrate-producing bacteria (via FMT, targeted probiotics, or dietary fiber) may increase vagal C-fiber afferent input to the brainstem via a physiological chemosensory route.

An important structural distinction: this pathway engages the *afferent* arm of the vagal inflammatory reflex (C-fiber sensory input to the nucleus tractus solitarius, NTS), whereas VNS devices primarily engage the *efferent* arm (B-fiber output to splenic macrophages). Whether increasing afferent C-fiber input reliably drives efferent anti-inflammatory output depends on whether the NTS-to-dorsal motor nucleus signaling cascade is intact in ME/CFS — which has not been established. If central autonomic processing is dysfunctional (as autonomic models of ME/CFS suggest), augmenting afferent input alone may not produce the expected anti-inflammatory output.

Compared to electrical stimulation, chemosensory C-fiber activation may avoid off-target A- and B-fiber co-recruitment, though serotonin's wide receptor distribution (5-HT3, 5-HT4, and others throughout the gut and cardiovascular system) means "specificity" is limited in practice. EC-cell serotonin release is modulated by meal composition, gut motility, and microbiome activity — all tunable without electrical hardware, but also less precisely controllable.

*Existing evidence:* ME/CFS is associated with reduced Faecalibacterium prausnitzii, reduced fecal butyrate, and increased intestinal permeability. Barton et al. (2025) demonstrated that butyrate enhances EC-cell serotonin production in preclinical models @Barton2025. Kaelberer et al. (2018) established that EC-cell serotonin directly activates vagal afferents via synaptic coupling @Kaelberer2018.

*Testable prediction:* Successful microbiome restoration (documented increase in fecal butyrate and EC-cell serotonin markers) will increase vagal afferent tone, measurable as improvement in HRV high-frequency power or vagal evoked potential amplitude, in addition to GI and inflammatory improvements. Patients who achieve butyrate restoration but NOT vagal tone improvement are unlikely to show systemic anti-inflammatory benefit, suggesting the butyrate effect is mediated through vagal C-fiber afferents rather than systemic absorption. *Not yet replicated in ME/CFS.*

*Limitations:* The butyrate → EC-cell serotonin → vagal afferent chain is established in preclinical models; direct human validation in ME/CFS is lacking. The critical afferent-to-efferent step — whether increased NTS vagal input drives downstream anti-inflammatory efferent output in ME/CFS — is unvalidated and could fail if central autonomic processing is already impaired. Serotonin has complex bidirectional roles in ME/CFS: increased gut serotonin may worsen visceral hypersensitivity, promote intestinal permeability, or trigger mast cell activation in susceptible patients — this is a meaningful safety concern, not a minor caveat, and any deliberate attempt to increase gut serotonin via this pathway should be approached cautiously. FMT carries procedural risks. Dietary fiber interventions vary substantially in their butyrate output by microbiome composition. The EC-cell serotonin pathway is one of multiple gut-brain communication routes, and isolating its specific contribution to systemic inflammatory outcomes is methodologically difficult.
] <spec:gut-vagal-cfibre>

#speculation(title: [Vagal C-Fibre Afferent Deafferentation Maintains the Neuroinflammatory Set-Point])[
*Certainty: 0.40.* The "wrong fibers" hypothesis (Speculation @spec:vns-wrong-fibres) addresses the _device_ side of VNS non-response. This speculation addresses the _patient_ side: vagal C-fiber afferents may be structurally damaged in ME/CFS, creating a vicious cycle independent of stimulation parameters.

Vagal C-fiber afferents from gut, liver, and spleen communicate peripheral inflammatory status to the brainstem nucleus tractus solitarius (NTS). Small fiber neuropathy (SFN), documented in 40--60% of ME/CFS patients, preferentially affects unmyelinated C-fibers. If vagal C-fibers are damaged:

+ The efferent anti-inflammatory reflex is inadequately triggered because the brainstem does not receive the "periphery is inflamed" signal.
+ Sickness behavior persists without resolution because the sensory arm cannot relay the "inflammation resolved" signal.
+ The resulting vicious cycle --- peripheral inflammation $arrow.r$ C-fiber damage $arrow.r$ reduced afferent signaling $arrow.r$ impaired anti-inflammatory reflex $arrow.r$ more inflammation --- is self-sustaining and invisible to standard autonomic testing (which assesses A/B-fiber-mediated cardiovagal reflexes, not C-fiber afferent function).

The gut--vagal pathway is particularly vulnerable: butyrate deficiency (documented in ME/CFS microbiome studies) reduces enterochromaffin cell signaling to vagal afferents. Kaelberer et al.\ (2018) demonstrated that enteroendocrine cells form glutamatergic synapses with vagal neurons @Kaelberer2018; these mucosal vagal afferent terminals are predominantly unmyelinated C-fibers. Reduced butyrate thus compounds the structural C-fiber deficit with a functional chemosensory deficit.

*Testable predictions (contingent on the assumption that cutaneous SFN severity correlates with vagal C-fiber involvement --- see Limitations):*
+ If the SFN--vagal correlation holds, ME/CFS patients with SFN (reduced intraepidermal nerve fiber density, IENFD) should show lower vagal C-fiber conduction (measurable via late-component vagal evoked potentials, latency >50~ms), higher peripheral inflammatory markers, and poorer response to standard-parameter VNS, compared to ME/CFS patients without SFN.
+ VNS response in SFN-positive patients would be limited to autonomic endpoints (HRV, heart rate) mediated by myelinated B-fibers, which are relatively spared in SFN, while inflammatory endpoints (IL-6, TNF-$alpha$) would show no improvement.

*Limitations:* Vagal C-fiber conduction measurement is technically challenging and not standardized. The assumption that SFN severity in skin biopsy reflects vagal C-fiber involvement is an extrapolation --- vagal afferents traverse different anatomical compartments than cutaneous sensory fibers, and the correlation between IENFD and vagal fiber integrity has not been established. The vicious cycle model, while logically coherent, could be confounded by the simpler explanation that systemic inflammation directly impairs the efferent anti-inflammatory pathway at the brainstem level, independent of afferent input.
] <spec:cfibre-deafferentation>

#hypothesis(title: [Alpha-7 nAChR Agonists as Pharmacological VNS Bypass])[
*Certainty: 0.45.* The fiber-selectivity problem (Speculation @spec:vns-wrong-fibres) and the C-fiber deafferentation hypothesis (Speculation @spec:cfibre-deafferentation) both converge on a practical limitation: electrical VNS may fail to activate the anti-inflammatory pathway because it cannot reliably engage C-fibers. A pharmacological alternative bypasses the fiber-selectivity problem entirely by directly activating the downstream effector: the alpha-7 nicotinic acetylcholine receptor ($alpha$7 nAChR) on macrophages.

The cholinergic anti-inflammatory pathway terminates at $alpha$7 nAChR on splenic and tissue-resident macrophages, where ACh binding suppresses NF-$kappa$B translocation and reduces TNF-$alpha$, IL-6, and HMGB1 release. Selective $alpha$7 agonists activate this endpoint regardless of how the vagal signal fails upstream --- whether by device limitation, fiber damage, or central processing dysfunction.

*Candidate agents:*
- *GTS-21 (DMXB-A):* Selective $alpha$7 partial agonist. Reduced TNF-$alpha$ and IL-6 in human endotoxemia models. Phase~II completed in schizophrenia (cognitive endpoints). Never tested in ME/CFS or any post-infectious fatigue syndrome.
- *Galantamine:* Acetylcholinesterase inhibitor with $alpha$7 positive allosteric modulator activity. FDA-approved for Alzheimer's disease with established safety profile. Low starting dose (4~mg BID) with slow titration. Nausea and GI effects are dose-limiting but manageable.

*Testable predictions:*
+ An $alpha$7 nAChR agonist (GTS-21 or galantamine) will reduce TNF-$alpha$ and IL-6 in ME/CFS patients with elevated baseline inflammatory markers, with an effect size $gt.eq$ standard-parameter tVNS, without the cardiovascular side effects (hoarseness, bradycardia) of VNS.
+ The anti-inflammatory effect will be independent of SFN status --- unlike VNS, which is predicted to fail in SFN-positive patients (Speculation @spec:cfibre-deafferentation), pharmacological $alpha$7 activation bypasses the damaged afferent pathway entirely.
+ In the existing pyridostigmine framework (Section @sec:pyridostigmine), galantamine would provide both the downstream ACh amplification (AChE inhibition, like pyridostigmine) _and_ direct $alpha$7 modulation --- potentially superior to pyridostigmine for the anti-inflammatory endpoint while retaining the autonomic benefit.

*Limitations:* GTS-21 is not commercially available outside research settings. Galantamine was tested in the largest ME/CFS pharmacological RCT to date (Blacker et al.\ 2004, $n = 434$, four doses, 35 centres) with a definitive null result on all outcome measures @Blacker2004. That trial tested galantamine as an AChE inhibitor for cognitive and fatigue endpoints; the present hypothesis reframes galantamine's potential via its $alpha$7 PAM activity, which was not the mechanistic rationale of the 2004 trial and was not measured. Whether the $alpha$7 mechanism can succeed where AChE inhibition failed is an open question, not a demonstrated distinction. Galantamine's cholinergic side effects (nausea, diarrhoea, bradycardia) overlap with common ME/CFS symptoms and may limit tolerability. The $alpha$7 nAChR mechanism assumes that the downstream macrophage pathway is intact in ME/CFS --- if macrophage $alpha$7 receptor expression is downregulated by chronic inflammation, pharmacological activation may be insufficient. The comparison to VNS efficacy is speculative; a head-to-head trial would be required to validate the predicted superiority.

#warning-env(title: [Research-Stage Hypothesis])[
This hypothesis identifies pharmacological targets, not clinical recommendations. GTS-21 has never been tested in ME/CFS. Galantamine was tested in ME/CFS (Blacker 2004, $n = 434$) but as an AChE inhibitor, not for its $alpha$7 nAChR activity --- the anti-inflammatory mechanism proposed here was not evaluated. Galantamine is approved for Alzheimer's disease; its use in ME/CFS for the proposed $alpha$7 mechanism would be off-label and should only be considered in the context of a clinical trial or under specialist supervision with explicit informed consent regarding off-label status.
]
] <hyp:alpha7-pharmacological-vns>

// ===== New sections added 2026-03-26: Spooniverse gap-fill =====

== Rapamycin (Sirolimus) --- First Human Pilot Data
<subsec:rapamycin-updated>

Rapamycin inhibits mTOR (mechanistic target of rapamycin), a master regulator of cellular metabolism, growth, and autophagy. A theoretical rationale for ME/CFS has existed for several years; a 2025 uncontrolled pilot study provides the first human data on rapamycin in this population.

=== Mechanism of Action
<subsubsec:rapamycin-mechanism>

mTOR hyperactivation suppresses autophagy---the cellular recycling process that clears damaged organelles, misfolded proteins, and dysfunctional mitochondria. Rapamycin is a sensitive CYP3A4 and P-glycoprotein substrate; co-administration with CYP3A4 inhibitors (azole antifungals, macrolides, some antivirals) substantially elevates blood levels and must be avoided unless doses are adjusted under specialist supervision. Oral rapamycin has highly variable bioavailability (approximately 15%) with food substantially altering absorption; once-weekly off-label dosing at 6 mg is far below transplant immunosuppression doses, but even intermittent mTOR inhibition produces measurable immunosuppression. Rapamycin is used off-label in ME/CFS; its approved indications are organ transplant rejection prophylaxis and lymphangioleiomyomatosis.

#speculation(title: [Proposed Mechanisms of Rapamycin in ME/CFS])[
*Certainty: 0.25.* Ruan et al. (2025) reported autophagy impairment markers (reduced LC3-II, elevated p62) in ME/CFS patients @Ruan2025rapamycin, though caution is warranted: these markers were measured in peripheral blood cells from the same uncontrolled pilot study that assessed treatment outcomes, and PBMC autophagy markers may not reflect autophagy flux in the skeletal muscle, neurons, and other parenchymal tissues where dysfunction is hypothesized to matter. Elevated p62 can indicate either blocked autophagy flux or increased substrate production (e.g., from oxidative stress); distinguishing these requires a bafilomycin challenge assay, which was not performed. If autophagy impairment is real and tissue-relevant, proposed mechanisms include: (1) *mitophagy restoration* --- clearing dysfunctional mitochondria to reduce energy deficit and ROS generation; (2) *immunomodulation* --- shifting T-cell balance toward regulatory phenotypes via mTORC1 suppression; (3) *senolysis* --- reducing cellular senescence and the senescence-associated secretory phenotype (SASP), though direct evidence of elevated senescence markers in ME/CFS has not been independently established. The unifying "TorS" paradigm proposes mTOR hyperactivation as a shared mechanism across post-acute infection syndromes @BarTana2025mTOR; this is a single speculative proposal, not a consensus framework. These mechanisms are extrapolated from aging biology and oncology; none has been validated in ME/CFS-specific experimental models.
]

=== Clinical Evidence
<subsubsec:rapamycin-evidence>

Ruan et al.\ (2025) conducted the first dedicated ME/CFS rapamycin pilot study across six clinical sites @Ruan2025rapamycin. Of 86 patients enrolled, 40 completed the full 90-day protocol (53% attrition). On an intention-to-treat basis, approximately 34% of enrolled patients (29 of 86, assuming all dropouts as non-responders) could be considered responders; 74.3% of full-protocol completers reported improvement in fatigue and PEM. These two figures --- 34% vs.\ 74.3% --- bound the true response rate; the honest denominator depends on why patients dropped out (intolerance vs.\ logistical withdrawal). Autophagy markers (LC3-II, p62) changed in the same direction as reported symptoms in responders; this is a consistency finding within an uncontrolled study, not independent mechanistic validation, and it is compatible with general immunosuppression producing both effects. No serious adverse events were observed with the once-weekly protocol.

mTOR inhibition also suppresses protein synthesis, which may be counterproductive in patients with significant muscle atrophy. The once-weekly protocol is intended to allow partial mTOR re-activation between doses; rapamycin's half-life is approximately 62 hours @Ruan2025rapamycin, meaning trough levels accumulate at steady state and the drug-free interval is limited. The claim of true pulsed inhibition should be regarded as a design intent rather than a confirmed pharmacokinetic outcome. If rapamycin produces benefit primarily through general immunosuppression rather than specific autophagy restoration, the dose-schedule rationale loses its specificity advantage over other immunomodulatory agents.

#warning-env(title: [Rapamycin: Uncontrolled Pilot Only])[
The Ruan 2025 study has no placebo arm. The response rate cannot be distinguished from natural fluctuation, regression to the mean, or placebo effect without an RCT. Of 86 enrolled patients, only 40 completed the full 90-day protocol (53% attrition); the 74.3% figure is computed from full-protocol completers, not from all enrolled patients, introducing severe selection bias toward tolerators. Rapamycin carries known risks even at low doses: delayed wound healing, mucositis, dyslipidaemia, insulin resistance, and infection reactivation risk (including EBV and HHV-6, commonly reactivated in ME/CFS). Use outside a clinical trial or specialist supervision is not appropriate.
]

*Evidence Grade*: C --- single uncontrolled pilot (53% attrition; ~34% ITT response); mechanistically grounded; placebo-controlled trial required

== Autonomic Neuromodulation: Stellate Ganglion Block
<sec:stellate-ganglion-block>

The stellate ganglion is a bilateral cervical sympathetic ganglion (fusion of the inferior cervical and first thoracic ganglia at the C7--T1 level) providing sympathetic innervation to the head, neck, upper limbs, and heart. In clinical practice, stellate ganglion block (SGB) injects local anaesthetic at the C6 or C7 level (anterior to the ganglion proper) rather than directly at T1, because the C7--T1 approach carries pneumothorax risk. Transient Horner syndrome (ptosis, miosis, anhidrosis) is an expected consequence of a correctly placed block, not simply a complication.

=== Rationale in ME/CFS and Long COVID
<subsubsec:sgb-rationale>

Several features of ME/CFS and Long COVID suggest sympathetic hyperactivation as a potentially treatable contributor. HRV studies in ME/CFS show a trend toward reduced parasympathetic tone, though findings are heterogeneous across studies and methodologies, and some cohorts show no significant sympatho-vagal difference from controls. Orthostatic tachycardia (POTS), present in a substantial minority of ME/CFS patients, is in part driven by sympathetic dysregulation. Liu and Duricka hypothesized that Long COVID fatigue, brain fog, and orthostatic intolerance resemble "sickness behavior" perpetuated by autonomic dysregulation, and that neuromodulation at the sympathetic chain could interrupt this cycle @Liu2022SGB.

#speculation(title: [SGB Mechanism Hypothesis: Sympathetic Reset])[
*Certainty: 0.20.* The proposed causal chain is: infection → sustained sympathetic hyperactivation → vasoconstriction → endothelial hypoperfusion → symptom perpetuation; SGB interrupts the chain by temporarily blocking sympathetic output at C6--C7. Two aspects of this chain require scrutiny. First, endothelial hypoperfusion in ME/CFS may be driven by microclot obstruction, glycocalyx disruption, or primary endothelial dysfunction rather than by sympathetic vasoconstriction, in which case SGB would treat a downstream variable rather than a proximal cause. Second, local anaesthetic SGB lasts 6--12 hours; for a transient blockade to produce lasting benefit, the sympathetic hyperactivation must constitute a positive feedback loop that, once interrupted, does not re-establish itself. The neuroplasticity basis for such hysteresis in the sympathetic chain has not been demonstrated in ME/CFS or Long COVID.
]

=== Clinical Evidence
<subsubsec:sgb-evidence>

Three publications report outcomes after SGB in Long COVID patients. Liu & Duricka 2022 (J Neuroimmunol; _n_ = 2) is a two-patient case report in which both patients improved across fatigue, PEM, cognitive dysfunction, and sleep @Liu2022SGB. Pearson et al.\ 2023 (Cureus; _n_ = 41) is a retrospective cohort from a chronic pain practice in which 86% reported symptom reduction; there is no control group @Pearson2023SGB. Duricka & Liu 2024 (Autonomic Neuroscience) is a retrospective chart review from the same group as the 2022 paper, confirming improvements in fatigue, PEM, cognition, and mood @Duricka2024SGB. Two of the three publications originate from the same authors, so this represents two independent data sources, not three.

#warning-env(title: [SGB: No Controlled Trial Data])[
All published SGB data in Long COVID are uncontrolled retrospective series or case reports. No randomized, sham-controlled trial has been conducted. Placebo response rates for invasive procedures are substantial (typically 30--50% in procedural pain literature). The procedure requires specialist training and carries procedural risks including hematoma, nerve injury, pneumothorax, and hoarseness or vocal cord paresis from recurrent laryngeal nerve involvement. Transient Horner syndrome (ptosis, miosis, anhidrosis) is an expected consequence of correct technique, not an adverse event. These data do not support routine clinical use.
]

Patients with objective evidence of sympathetic hyperactivation (resting tachycardia, reduced HRV, POTS, cold extremities) are sometimes proposed as more plausible candidates, based on mechanistic reasoning rather than comparative clinical data; no subgroup trial exists and this remains an untested hypothesis.

*Evidence Grade*: D --- limited to uncontrolled case series; mechanistically plausible; sham-controlled trial warranted

== Endothelial Restoration: Sulodexide
<sec:sulodexide>

Sulodexide (Aterina) is a highly purified glycosaminoglycan mixture (80% fast-moving heparin fraction, 20% dermatan sulphate) used in European vascular medicine. Its relevance to Long COVID and ME/CFS derives from endothelial glycocalyx restoration.

=== Mechanism
<subsubsec:sulodexide-mechanism>

Endothelial glycocalyx damage in Long COVID has been documented directly by intravital microscopy and indirectly via plasma syndecan-1 shedding @Charfeddine2022sulodexide. Whether the same mechanism operates in ME/CFS outside Long COVID has not been directly measured; the overlap in microclot and endothelial findings makes it a plausible inference but not an established fact.

#speculation(title: [Glycocalyx Disruption Cascade and Sulodexide Rationale])[
*Certainty: 0.30.* When the endothelial glycocalyx is disrupted, the following downstream consequences are predicted by vascular biology: increased vascular permeability, platelet and leukocyte adhesion promoting thromboinflammation, loss of shear-stress mechanosensing impairing flow-dependent vasodilation, and exposure of subendothelial collagen promoting microclot formation. These are established vascular pathophysiology findings in glycocalyx-damaged endothelium generally; their contribution to ME/CFS symptom production is inferred, not demonstrated. Sulodexide replenishes heparan sulphate and dermatan sulphate glycocalyx components, and also exerts direct anticoagulant and anti-inflammatory effects independent of glycocalyx restoration. The clinical outcomes in the Charfeddine trial may therefore reflect anticoagulant and anti-inflammatory activity rather than glycocalyx-specific restoration.
]

=== Clinical Evidence
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
Sulodexide has antithrombotic and anticoagulant properties. Patients already on therapeutic anticoagulation (warfarin, direct oral anticoagulants) or with bleeding disorders should not use sulodexide without hematology input, as the combination may be contraindicated. Patients co-administering aspirin, fish oil, antihistamines with antiplatelet effects, or other supplements affecting coagulation face additive bleeding risk and should discuss this with their prescriber. Oral bioavailability is approximately 6%, substantially lower than the parenteral form used in some European guidelines for acute indications; whether 50 LSU orally achieves meaningful systemic glycocalyx repletion is not definitively established. Sulodexide is not approved in the US; the supplement form (EndoProtek) is not subject to pharmaceutical quality controls and may not be pharmacokinetically equivalent to the licensed preparation used in clinical trials.
]

*Evidence Grade*: C --- controlled trial positive for Long COVID cardiac subgroup; ME/CFS extrapolation requires validation

== Acute Antivirals for Long COVID Prevention: Negative Evidence
<sec:paxlovid-longcovid>

A common clinical assumption has been that early antiviral treatment of acute SARS-CoV-2 infection might prevent the development of Long COVID. Durstenfeld et al. (2024) tested this hypothesis in an observational cohort of 4,684 participants from the COVID Citizen Science study, of whom 988 (21.1%) received nirmatrelvir (Paxlovid) during acute infection @Durstenfeld2024paxlovid. Long COVID symptoms at 90+ days occurred in 16.1% of the treatment group versus 14.0% of controls---no statistically significant reduction. Symptom recurrence ("Paxlovid rebound") was not associated with subsequent Long COVID risk.

This negative finding is clinically important: it refutes the assumption that viral persistence during acute infection is the sole driver of Long COVID, and by extension challenges the simplest viral persistence models for post-infectious ME/CFS. If acute viral load reduction were sufficient to prevent chronic sequelae, nirmatrelvir should have shown benefit. The result is consistent with models in which immune dysregulation, autoimmune priming, or tissue-resident viral reservoirs established early in infection persist independently of circulating viral levels.

#limitation(title: [Observational Design])[
This is an observational study with potential selection bias (sicker patients may have been more likely to receive nirmatrelvir). The cohort was predominantly vaccinated, white, and college-educated, limiting generalisability. The study cannot exclude a small protective effect below the detection threshold, and the 90-day symptom assessment may miss later-onset Long COVID.
]

== Endothelial HDL Proteome Modulation: Statin/ARB Combination
<sec:hdl-statin-arb>

Grote et al. (2024) explored a combination of statins (HMG-CoA reductase inhibitors) and angiotensin II receptor blockers (ARBs) as a therapeutic approach for post-COVID syndrome based on HDL proteome analysis @Grote2024HDLproteome. In 16 patients (8 with post-COVID syndrome, 8 with post-vaccination syndrome), quantitative proteomics revealed abnormal HDL composition---elevated hemoglobin and cytoskeletal proteins compared to healthy controls---with no significant differences between PCS and PVS groups. Following six weeks of combined statin/ARB therapy, treatment reduced expression of inflammatory cytokines and adhesion molecules in endothelial cells, and upregulated HDL-associated proteins FAM3C, ATP6AP2, and ADAM10.

The rationale connects to the endothelial dysfunction documented in ME/CFS and Long COVID (Chapter @ch:cardiovascular): disrupted renin-angiotensin system signaling and cholesterol metabolism dysfunction may contribute to endothelial activation and vascular inflammation. Statin/ARB combination addresses both pathways simultaneously.

#warning-env(title: [Very Preliminary; No Control Group])[
This is an uncontrolled study with 16 participants. No placebo arm, no blinding, and no clinical outcome measures beyond proteomics and questionnaires. Both statins and ARBs have well-characterized pleiotropic effects (anti-inflammatory, endothelial-protective) that could account for symptomatic improvement independently of HDL proteome correction. The finding that PCS and PVS patients had identical HDL abnormalities is interesting but may reflect shared endothelial dysfunction rather than a specific spike-protein-mediated mechanism. Larger controlled trials with clinical endpoints are required before this can be considered a treatment approach.
]

*Evidence Grade*: D --- n=16 uncontrolled proteomics study; mechanistically interesting; RCT required

== Viral Persistence: Maraviroc and Pravastatin
<sec:maraviroc-pravastatin>

Patterson et al.\ proposed that a subset of Long COVID and ME/CFS patients harbour persistent spike protein or viral antigens in non-classical monocytes, activating a monocytic-endothelial-platelet axis that sustains inflammation @Patterson2023maraviroc. This hypothesis is contested: independent researchers have challenged the flow cytometry gating methodology used to classify non-classical monocyte subsets and whether spike-protein persistence in monocytes has been reliably demonstrated by laboratories other than Patterson's. The controversy concerns the measurement technique itself, not only sample size. If the hypothesis is correct, treatment is motivated by a combination of:

    - *Maraviroc* (CCR5 antagonist): Blocks CCR5-mediated monocyte migration and activation; CCR5 is upregulated on non-classical monocytes in Long COVID
    - *Pravastatin* (or atorvastatin): Pleiotropic anti-inflammatory and endothelial-stabilizing effects; reduces monocyte activation through NF-κB pathways

=== Evidence
<subsubsec:maraviroc-evidence>

Patterson et al.\ (2023) — the same group that proposed the hypothesis — reported outcomes in 18 participants (case series) receiving maraviroc 300 mg twice daily plus pravastatin 10 mg daily @Patterson2023maraviroc:

    - Significant clinical improvement across neurological, autonomic, respiratory, and fatigue domains at 6--12 weeks
    - Significant reductions in vascular biomarkers sCD40L and VEGF
    - No serious adverse events

A Phase III RCT (maraviroc + atorvastatin, _n_ = 252) was underway at the time of writing; results should be consulted before drawing conclusions. An important confound in the Patterson case series is that pravastatin alone has well-documented NF-κB-mediated anti-inflammatory and endothelial-protective effects independent of CCR5; any benefit in the combination cannot be attributed to maraviroc specifically without a pravastatin-monotherapy arm. Maraviroc is approved as an antiretroviral for CCR5-tropic HIV-1; its use here is off-label.

#warning-env(title: [Case Series Limitations; Conflict of Interest; Drug Safety])[
The Patterson 2023 paper is an uncontrolled case series from the group that proposed the hypothesis. A 2024 corrigendum (PMID 38813382) corrected conflict of interest disclosures; the principals have reported financial relationships with the diagnostic laboratory that markets the non-classical monocyte assay used in this protocol, which should be weighed when interpreting the results. Maraviroc carries a black-box hepatotoxicity warning in the US prescribing information. Liver function tests (ALT, AST, bilirubin) should be obtained at baseline and monitored during treatment; if hepatotoxicity signs develop (jaundice, right upper quadrant pain, marked transaminase elevation), maraviroc must be discontinued. Maraviroc is a CYP3A4 substrate: concomitant use with CYP3A4 inhibitors (azoles, macrolides, some antivirals) requires dose reduction to 150 mg twice daily, while CYP3A4 inducers require dose increase to 600 mg twice daily. Standard 300 mg dosing should not be assumed safe in patients on interacting medications. Pravastatin was chosen in the Patterson protocol because it is not a CYP3A4 substrate; however, pravastatin is a P-glycoprotein substrate and maraviroc is a P-gp inhibitor, which may elevate pravastatin exposure; this interaction has not been characterized in this combination. Substitution with atorvastatin or simvastatin (CYP3A4 substrates) introduces additional interaction risks. Statin class risk of myopathy and rhabdomyolysis is relevant in ME/CFS patients with documented mitochondrial and muscular pathology. Phase III trial results are needed before clinical adoption.
]

*Evidence Grade*: D --- single uncontrolled case series; Phase III RCT ongoing; not recommended outside trial settings

== Immune Checkpoint Therapy: Pembrolizumab
<sec:pembrolizumab>

T-cell exhaustion---characterized by upregulated PD-1 and reduced cytotoxic capacity---has been documented in ME/CFS and Long COVID (Chapter @ch:immune-dysfunction). Pembrolizumab is an anti-PD-1 monoclonal antibody approved for multiple cancers; it releases the brakes on exhausted T cells by blocking the PD-1 inhibitory checkpoint. Use in ME/CFS or Long COVID is off-label and investigational only.

A critical unresolved question is whether PD-1-mediated T-cell exhaustion in ME/CFS is pathological or protective. In cancer, exhaustion is driven by tumor PD-L1 expression and represents a failure of immune surveillance. In ME/CFS, PD-1 upregulation may be a physiological brake on chronic immune activation, and releasing it could provoke uncontrolled autoreactivity or cytokine storm rather than beneficial immune restoration. The Phase 1 trial is specifically designed to characterize this risk before larger exposures.

The NINDS-sponsored Phase 1 trial PD1-PASC I (_n_ = 15, open-label) is investigating pembrolizumab in Long COVID patients with T-cell exhaustion. At the time of writing this was the first immune-checkpoint intervention to reach clinical trial stage in this population; readers should verify current trial status.

#warning-env(title: [Serious Immune-Related Adverse Events; Autoimmune Comorbidity Risk])[
Anti-PD-1 therapies carry a well-characterized risk of immune-related adverse events (irAEs): autoimmune pneumonitis, colitis, hepatitis, endocrinopathies, and --- in rare but documented cases --- fatal outcomes. Informed consent for the NINDS trial explicitly encompasses potentially fatal irAEs; this risk level acceptable in advanced cancer may not be acceptable in a non-life-threatening condition. ME/CFS patients with pre-existing autoimmune conditions (lupus, Sjögren's syndrome, inflammatory arthritis) are at substantially elevated irAE risk and would likely be excluded from the Phase 1 trial; the results may not generalize to autoimmune-overlap patients. This intervention must not be used outside a clinical trial.
]

*Evidence Grade*: E --- Phase 1 only; mechanistically motivated; clinical trial context only

== Psychedelic and Neuromodulatory Approaches
<sec:psychedelic-neuromodulatory>

== Psilocybin
<subsec:psilocybin>

Psilocybin is a 5-HT2A serotonin receptor agonist that produces acute psychedelic effects and --- more durably --- appears to reduce default-mode-network activity and promote dendritic spine growth in preclinical models. Whether "default-mode-network hyperactivity" is a consistent ME/CFS finding is contested: some neuroimaging studies show hypoactivation rather than hyperactivation, and the relationship to brain fog symptoms has not been established causally. Putative mechanistic relevance to ME/CFS includes serotonergic modulation of the tryptophan/kynurenine pathway (Chapter @ch:neurological) and preclinical anti-inflammatory effects via 5-HT2A signaling. However, 5-HT2A agonism does not directly modulate kynurenine pathway enzymes (IDO, TDO, KMO); any interaction between serotonergic and kynurenine dysregulation would be indirect and speculative.

There are no controlled trial data in ME/CFS. Available evidence consists of a single case report by Chopra et al.\ (2024) of a patient who self-administered psilocybin combined with MDMA and reported significant symptom improvement @Chopra2024psilocybin --- the combination makes it impossible to attribute the effect to psilocybin alone --- and an observational Reddit-based investigation by Bobak et al.\ (2025) @Bobak2025psilocybin suggesting potential benefit for Long COVID neuropsychiatric symptoms (78% of 110 self-reporting users described improvement).

#warning-env(title: [Legal Status, PEM Risk, and Drug Interactions])[
Psilocybin remains a Schedule I substance in most jurisdictions. Psychedelic sessions involve 4--6 hours of sustained cognitive and physiological activation; in severe and very severe ME/CFS this level of exertion is very likely to trigger significant post-exertional deterioration and is contraindicated. Any investigation in moderate ME/CFS must monitor for PEM as a primary safety endpoint. Psilocybin should not be combined with SSRIs or SNRIs without specialist guidance: SSRIs cause pharmacodynamic blunting of psychedelic effects via 5-HT2A downregulation, and the addition of a direct 5-HT2A agonist (psilocin, the active metabolite) to serotonin-elevating agents carries a clinically recognized risk of serotonin syndrome, not merely a theoretical one. Additionally, patients with a personal or family history of psychosis, schizophrenia, or bipolar disorder are considered contraindicated for psychedelic administration due to risk of triggering or exacerbating a psychotic episode; this is a standard exclusion criterion in clinical psilocybin research and must be assessed before any trial participation. The Chopra 2024 case used MDMA co-administration, a combination with additional serotonergic and cardiovascular risks not representative of psilocybin alone.
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

Leitzke (2023) @Leitzke2023nAChR proposed nAChR dysfunction as a unifying mechanism for Long COVID symptoms and reported a case series (_n_ = 4) showing improvement with 7.5 mg/day transdermal nicotine. Patient community surveys report high self-reported response rates, but these are uncontrolled self-report data from self-selected populations and cannot be interpreted as evidence of efficacy.

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

Tocilizumab (Actemra) is a monoclonal antibody blocking the IL-6 receptor, approved for rheumatoid arthritis, giant cell arteritis, and cytokine release syndrome. Its use in Long COVID or ME/CFS is off-label, extrapolated from the IL-6 elevation hypothesis. IL-6 has been reported as elevated in some ME/CFS cohorts, though the literature is heterogeneous: Hornig et al. (2015) @Hornig2015 found IL-6 elevation only in patients with short illness duration ($lt.eq$3 years), not in long-duration patients, illustrating that "elevated in a subset" does not imply a consistent, reliable treatment target across the population.

A 2022 case report by Visvabharathy et al. described a rheumatoid arthritis patient who developed post-COVID fatigue and brain fog @Visvabharathy2022tocilizumab. Discontinuing tocilizumab (already prescribed for her RA) provoked symptom relapse; resuming it achieved resolution. An important confound is that stopping tocilizumab in an RA patient could independently provoke an RA flare producing fatigue, brain fog, and malaise indistinguishable from Long COVID symptoms; the case report does not fully resolve this alternative explanation. The observation is suggestive but cannot be interpreted as proof-of-concept for IL-6-driven Long COVID without an RA-free comparator.

No RCT of tocilizumab specifically for Long COVID fatigue syndrome or ME/CFS exists as of early 2026. A controlled trial with pre-stratification by serum IL-6 levels would be needed to determine whether IL-6 elevation is causally linked to symptoms rather than a non-specific inflammatory epiphenomenon.

#warning-env(title: [Black-Box Warnings; Immunosuppression Risk; Off-Label Status])[
Tocilizumab carries US black-box warnings for (1) serious infections (including tuberculosis reactivation; screening required before initiation) and (2) gastrointestinal perforation, which is a class risk for IL-6R blockers relevant even outside the inflammatory bowel disease context. Tocilizumab broadly suppresses IL-6 signaling, impairing the acute phase response to infection. ME/CFS patients already show evidence of NK cell dysfunction and impaired viral clearance; adding IL-6R blockade may further compromise infection surveillance. CRP is suppressed by tocilizumab and cannot be relied upon as an infection marker during treatment; alternative infection indicators (ferritin, procalcitonin, clinical signs) must be used. Use in Long COVID or ME/CFS is off-label. This drug requires IV infusion in a clinical setting and cannot be self-administered.
]

*Evidence Grade*: D --- single case report with RA confound; mechanism plausible in IL-6-elevated subgroup only; controlled trial absent

== Negative Trials: Inconclusive and Failed Biologics
<sec:negative-trials>

Several targeted biological therapies have been tested in randomized controlled trials and failed their primary endpoints. These negative results are scientifically important: they constrain viable hypotheses and protect patients from pursuing ineffective treatments. In each case, interpreting what the failure means --- and what it does not mean --- matters as much as the result itself.

== Efgartigimod (FcRn Blocker)
<subsec:efgartigimod>

Efgartigimod (Vyvgart; argenx) is an IgG1 Fc fragment that blocks the neonatal Fc receptor (FcRn), accelerating IgG catabolism and substantially reducing circulating IgG (all four subclasses). Effects on IgA, IgM, and IgE are less pronounced because these isotypes have lower FcRn dependence. The mechanism is distinct from immunoadsorption: rather than physically removing antibodies, efgartigimod reduces their half-life systemically.

The rationale: if pathogenic IgG autoantibodies (GPCR-fAbs, anti-nuclear, others) drive ME/CFS and Long COVID symptoms, reducing all circulating IgG via FcRn blockade should produce symptomatic improvement.

*Outcome:* The Phase 2 RCT (NCT05633407) failed to meet its primary endpoint. An open-label extension was subsequently terminated. Peer-reviewed publication of full results is pending as of early 2026. *Contextual note:* The efgartigimod failure is one of several data points complicating the autoantibody hypothesis: the Anft 2025 @Anft2025immunoadsorption independent-centre immunoadsorption study also showed successful autoantibody elimination without significant symptom improvement. However, efgartigimod's mechanism (accelerated IgG catabolism) differs from immunoadsorption (physical removal), and the trial was unstratified—see @hyp:immune-reset for discussion of how IgG depletion route may matter.

#limitation(title: [Interpreting the Negative Result])[
A negative primary endpoint in a heterogeneous, unstratified trial does not disprove a biomarker-defined hypothesis. Plausible explanations for failure: (1) relevant autoantibodies may be locally produced in tissues (e.g., CNS, peripheral nerve) rather than circulating freely --- FcRn blockade reduces circulating IgG half-life but cannot address locally produced antibodies; (2) the trial enrolled a clinically heterogeneous population without pre-stratification for autoantibody positivity --- patients without detectable autoantibodies are structural non-responders who dilute any real signal; (3) sufficient IgG reduction may not have been achieved to neutralise the pathogenic fraction. *When peer-reviewed results are published*, the responder subgroup analysis stratified by baseline GPCR autoantibody titres will be the critical read-out. If the autoantibody-positive subgroup shows no benefit even after adequate IgG reduction, the circulating IgG autoantibody hypothesis would be substantially weakened and alternative mechanisms should be prioritized.
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
*Certainty: 0.20.* None of the following mechanisms has been validated in ME/CFS or Long COVID patients; each is inferred from the drug's known pharmacology in other disease contexts. (1) *Anti-inflammatory*: GLP-1R activation suppresses NF-κB-driven cytokine production in macrophages and microglia in preclinical and diabetic-population studies. (2) *Mast cell modulation*: GLP-1R is expressed on mast cells in preclinical models; agonism reduces degranulation in vitro; whether this translates to clinically meaningful MCAS suppression at therapeutic doses in humans is untested. (3) *Neuroprotection*: GLP-1R agonism promotes BDNF and reduces neuroinflammatory markers in Parkinson's disease and metabolic syndrome studies; early-phase trials in Parkinson's have shown modest signal (Athauda et al., 2017) @Athauda2017exenatide; Phase 3 Alzheimer's data were not yet published as of March 2026. (4) *Mitochondrial effects*: GLP-1R signaling activates AMPK/PGC-1α pathways in metabolic tissue; mitochondrial relevance in ME/CFS is speculative. (5) *Endothelial protection*: Reduces endothelial inflammation in cardiovascular trials. A multi-target rationale spanning five distinct mechanisms increases the prior probability that at least one will contribute --- but it also complicates falsifiability: a negative trial could be attributed to insufficient effect on any one mechanism while leaving the others intact.
]

A tirzepatide trial in Long COVID (_n_ ≈ 1,000, enrollment reportedly completed December 2025) is the largest prospective GLP-1 trial in this population; results are pending. A positive result in Long COVID would be important for ME/CFS but would not directly license GLP-1 use in ME/CFS patients without a Long COVID history; Long COVID and ME/CFS share clinical features but are not the same population, and a separate ME/CFS trial would be needed to extend any finding. The trial's secondary outcomes (which symptom domains respond, correlation with baseline inflammatory or metabolic markers) will determine whether subgroup-enriched ME/CFS trials are warranted.

#warning-env(title: [Black-Box Warnings; GI Risk; Off-Label Status])[
Semaglutide and tirzepatide carry US black-box warnings for thyroid C-cell tumors; they are contraindicated in patients with a personal or family history of medullary thyroid carcinoma (MTC) or multiple endocrine neoplasia type 2 (MEN2). Pancreatitis is a recognized adverse effect; these drugs should be used with extreme caution in patients with a history of pancreatitis or elevated amylase/lipase. GLP-1 agonists slow gastric emptying; in ME/CFS patients with dysautonomic gastrointestinal symptoms or small-fiber neuropathy, this may worsen nausea, bloating, and gastroparesis-like symptoms. GLP-1 agonists delay absorption of co-administered oral medications; drugs with narrow therapeutic windows (levothyroxine, oral immunosuppressants) may show altered absorption kinetics. Rapid weight regain occurs upon discontinuation. These are injectable medications (except oral semaglutide) requiring regular administration. Use in ME/CFS or Long COVID is off-label.
]

#limitation(title: [No Peer-Reviewed Controlled Data Available])[
As of March 2026, no peer-reviewed controlled trial data exist for GLP-1 agonists specifically in ME/CFS or Long COVID. The tirzepatide Long COVID trial results are pending. The biological rationale is plausible but entirely unvalidated by controlled human data in the target population.
]

*Evidence Grade*: D --- off-label; no peer-reviewed controlled data in ME/CFS or Long COVID; mechanistically plausible; major trial results pending

== Ornithine and Aspartate (LOLA)
<subsec:lola>

L-ornithine L-aspartate (LOLA) enhances ammonia detoxification via two routes: ornithine enters the urea cycle (stimulating carbamoyl phosphate synthetase), and aspartate feeds the TCA cycle and the argininosuccinate synthesis pathway.

#speculation(title: [Ammonia Hypothesis for ME/CFS Metabolic Subtype])[
*Certainty: 0.10.* Xiao et al. (2025) explored through computational modeling the possibility that impaired oxidative phosphorylation in ME/CFS generates subclinical hyperammonaemia via incomplete amino acid catabolism, and proposed LOLA as a potential intervention. No human data confirm that ME/CFS patients have elevated blood or breath ammonia. An important counter-argument: ammonia produced in peripheral tissues (particularly skeletal muscle during exercise) is normally cleared by the liver via the urea cycle, which has substantial spare capacity. Clinically significant hyperammonaemia requires either a very large peripheral ammonia burden or impaired hepatic urea cycle function; neither has been demonstrated in ME/CFS. A controlled trial would first need to confirm elevated ammonia in ME/CFS patients relative to controls before LOLA's therapeutic rationale could be evaluated. LOLA is contraindicated in severe renal impairment, as the substrate load can paradoxically worsen hyperammonaemia when renal urea clearance is impaired.
]

*Evidence Grade*: E --- computational modeling only; no clinical trial data; subclinical hyperammonaemia in ME/CFS unconfirmed

== Antiviral Monoclonal Antibodies: Awaiting Results
<sec:antiviral-mab>

Two anti-SARS-CoV-2 monoclonal antibodies appear in emerging therapy databases in the context of Long COVID and persistent viral antigen.

== Pemivibart (Pemgarda)
<subsec:pemivibart>

Pemivibart (AER002) is an anti-spike monoclonal antibody. A UCSF randomized controlled trial (_n_ = 36) investigated whether anti-spike antibody administration could reduce persistent spike protein antigen in Long COVID patients and thereby reduce symptoms. Results were presented at a spring 2025 symposium but have not been published in peer-reviewed form as of March 2026.

*What the trial will establish:* If pemivibart reduces persistent spike antigen and that reduction correlates with symptom improvement, it would provide the strongest direct evidence to date that spike protein persistence is a causal driver of Long COVID symptoms --- not just a biomarker. This would open a dedicated treatment pathway for the spike-persistence subgroup and inform the viral persistence sections of Chapter @ch:immune-dysfunction. Conversely, if antigen is reduced but symptoms are not, it would suggest that spike persistence is a downstream effect of immune dysregulation rather than its cause, shifting therapeutic priority toward upstream immune repair.

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

Bezisterim (NE3107; INmune Bio) is a selective inhibitor of the inflammatory branch of NF-κB signaling, designed to reduce neuroinflammation without broadly suppressing the immune system. According to INmune Bio's pharmacological characterisation, NE3107 inhibits the TNF-α- and IL-1β-driven inflammatory NF-κB cascade while preserving ERK-mediated neurotrophic and insulin-sensitising signaling and sparing anti-viral interferon responses. The selectivity claim is based on preclinical and in vitro data; whether this selectivity profile is maintained at therapeutic doses in humans has not been independently confirmed.

The ADDRESS-LC trial (NCT06847191) is a Phase 2/3 RCT of bezisterim in Long COVID, funded by a \$13.1M US Department of Defense CDMRP award. The trial was actively enrolling as of early 2026.

A positive result would provide the first controlled evidence that selective NF-κB neuroinflammation dampening is sufficient to improve Long COVID outcomes. Given the PET imaging evidence of microglial activation in ME/CFS (Chapter @ch:neurological), a positive bezisterim trial in Long COVID would motivate a directly analogous ME/CFS trial targeting patients with elevated neuroinflammatory burden. A negative result would require careful interpretation: it would not definitively refute the neuroinflammatory hypothesis for ME/CFS, because failure could reflect insufficient CNS drug exposure, wrong patient enrichment, or the disease having become self-sustaining independent of ongoing neuroinflammation rather than neuroinflammation being absent. What a negative result would justify is deprioritizing NF-κB-specific neuroinflammation as a single-agent target in favor of upstream or multi-mechanism interventions.

#limitation(title: [Awaiting Trial Results; MOA Caveat])[
No efficacy data are available for bezisterim in Long COVID or ME/CFS as of March 2026. The selectivity characterisation (NF-κB inhibition with ERK preservation) derives from the drug developer's studies; independent pharmacological validation is not yet available in the published literature.
]

*Evidence Grade*: E --- Phase 2/3 trial ongoing; no published efficacy data; mechanistically plausible for neuroinflammatory subtype; selectivity characterisation pending independent validation

= Plasma Exchange (Therapeutic Plasma Exchange)
<sec:plasma-exchange>

Therapeutic plasma exchange (TPE, also called plasmapheresis) removes a patient's plasma and replaces it with donor albumin or fresh frozen plasma, thereby eliminating circulating proteins including autoantibodies, inflammatory mediators, fibrinogen, and microclots. The rationale for ME/CFS and Long COVID rests on the autoantibody hypothesis: if pathogenic GPCR-fAbs or other IgG autoantibodies drive symptoms (Section @sec:immunoadsorption), removing plasma should provide at least transient relief.

*Pre-2025 evidence:* Kiprov et al. (F1000Research, 2021) published a single case report (_n_ = 1) of a 68-year-old male with long-haul COVID who received multiple TPE sessions and returned to normal activities @Kiprov2021plasmapheresis. Inflammatory macrophage markers diminished, NK cell and cytotoxic CD8 T-cell markers increased, and the patient reported functional recovery. This proof-of-concept case stimulated wider interest in apheresis approaches.

*The sham-controlled trial (2025):* España-Cueto et al. (Nature Communications, 2025) conducted the first sham-controlled randomized trial of TPE in post-COVID condition (_n_ = 50; 25 TPE, 25 sham) @EspanaCueto2025plasmaexchange. Participants received six sessions over seventeen days. Both arms had comparable safety profiles. The TPE arm showed no improvement over sham on the primary composite outcome (functional status, symptomatology, quality of life, neurocognitive symptoms) or the prespecified secondary endpoints. The trial population was clinically heterogeneous; participants were not pre-stratified by autoantibody positivity.

#warning-env(title: [First Sham-Controlled Trial Was Negative: Significant Implications for Apheresis Rationale])[
The España-Cueto trial is methodologically the strongest study of plasma exchange in this population and its result was negative. This is important context for the autoantibody-removal hypothesis more broadly: a non-sham-controlled procedure like TPE is particularly susceptible to placebo effects, and the sham control was necessary to isolate the specific effect of plasma removal. The negative primary endpoint result significantly weakens the case for uncontrolled apheresis as a first-line intervention.

However, the trial does not definitively refute the autoantibody hypothesis. Two limitations constrain interpretation: (1) the trial was not enriched for patients with detectable GPCR-fAbs or other autoantibodies --- patients without pathogenic autoantibodies are structural non-responders, and their inclusion dilutes the signal; (2) TPE removes autoantibodies transiently, but if the B-cell source of autoantibody production is not addressed, titres rebound within weeks. More selective approaches --- immunoadsorption targeting specific antibody classes, or B-cell-depleting therapies upstream --- remain under investigation. *When biomarker-stratified sub-group analyses from this trial are published, the response pattern in autoantibody-positive vs. autoantibody-negative participants will be the most informative read-out for the hypothesis.*
]

*Note:* For immunoadsorption (a related but distinct apheresis approach targeting IgG specifically), see Section @sec:immunoadsorption.

*Evidence Grade*: B --- sham-controlled Phase II RCT (_n_ = 50), negative primary endpoint; autoantibody-unselected population; subgroup data pending

== HELP Apheresis (Heparin-Induced Extracorporeal LDL/Fibrinogen Precipitation)
<sec:help-apheresis>

HELP apheresis is a distinct approach from TPE that targets microclots and fibrinogen specifically rather than replacing plasma wholesale. Blood is drawn, plasma separated from red blood cells, and plasma run through a sub-filter containing heparin (400,000~IU per session---20$times$ the standard oral dose, but remaining within the filter with minimal systemic entry). The heparin binds and precipitates fibrinogen and fibrinaloid microclots, which are then removed. Filtered plasma is reunited with red blood cells and returned to the patient.

*Protocol:* 2.5--4 litres of plasma filtered per session, 3--4 hours per session, typically 4--5 weekly sessions. Cost approximately 1,400~EUR per session in Germany; available in Germany, Switzerland, and Cyprus @Jaeger2022help.

*Evidence:* Bücker et al.\ (2023) @Bucker2023apheresis reported outcomes in 31 Long~COVID patients receiving a median of 5 HELP apheresis sessions (presented at International Society for Apheresis, Berlin; conference abstract only). Overall patient-rated status improved from "bad" (median 2/5) pre-treatment to "good" (median 4/5) at follow-up. Side effects occurred in 1 of 144 sessions (0.7%---one episode of low blood pressure). 83% of patients would recommend the treatment.

#limitation(title: [HELP Apheresis Evidence Limitations])[
No ME/CFS-specific data for HELP apheresis have been published; all available evidence derives from Long COVID cohorts. No sham-controlled trials exist for HELP apheresis in ME/CFS or Long~COVID. The Bücker data are unblinded and based on patient self-report. Given the strongly negative result of the sham-controlled TPE trial (España-Cueto et al. 2025), placebo effects from invasive blood-filtering procedures must be considered. Cost and geographic access present significant barriers.
]

== Triple Anticoagulant Therapy (Pretorius Protocol)
<sec:triple-anticoagulant>

An alternative pharmaceutical approach to microclot burden does not _remove_ existing microclots but prevents formation of _new_ ones, allowing the body's endogenous fibrinolytic pathways to gradually clear the pre-existing clot burden over time.

*Components:* Aspirin 75~mg once daily + clopidogrel 75~mg once daily + apixaban 5~mg twice daily + pantoprazole 40~mg once daily (gastric protection). Duration: 2--6 months @Pretorius2023triple.

*Evidence:* Pretorius et al. (2023) treated 91 Long~COVID patients with this protocol. 80% reported significant improvement (patient-rated on an unvalidated scale; no control arm or validated outcome measure); over one-third reported "considerable improvement that made all the difference." Most experienced only mild bruising. One patient suffered gastrointestinal bleeding requiring transfusion.

#warning-env(title: [Triple Anticoagulant Therapy Carries Serious Bleeding Risk])[
Anticoagulant therapy can cause internal bleeding, which may be life-threatening. This protocol must only be prescribed and monitored by a physician experienced in anticoagulation management. Patients must be screened for bleeding risk factors. Regular monitoring of platelet count and coagulation parameters is essential. The protocol should never be self-prescribed based on patient reports of benefit.
]

#limitation(title: [Pretorius Protocol Evidence Limitations])[
The primary evidence source (@Pretorius2023triple) is a medRxiv preprint that has not undergone peer review. The 91-patient study was uncontrolled and unblinded. Microclots are not validated as a diagnostic biomarker; patient selection was clinical rather than biomarker-stratified. The 80% improvement rate exceeds typical placebo response rates but cannot exclude placebo effects without a sham control. The single GI bleed ($tilde$1% rate) may underestimate real-world bleeding risk outside a research setting.
]

= Post-Parasitic ME/CFS: Subtype-Specific Treatment Considerations
<ch:post-parasitic-treatment>

The Bergen Giardia outbreak cohort (Chapter @ch:immune-dysfunction, Section @sec:parasites-post-infectious) established that intestinal parasitic infection can trigger ME/CFS that persists for at least a decade. Whether a patient's ME/CFS was triggered by a parasitic infection has direct treatment implications that are distinct from the general ME/CFS treatment landscape: specific mechanistic targets become plausible, certain comorbidity phenotypes are more likely, and one documented prevention opportunity exists that has no equivalent in post-viral ME/CFS.

This section addresses the treatment implications of post-parasitic ME/CFS specifically. The general ME/CFS treatment protocols (Chapters @ch:urgent-action-severe through @ch:supplements) apply to this subtype in full; what follows are considerations _additional to_ or _prioritized within_ that general framework for patients with confirmed or probable parasitic onset.

#limitation(title: [No Clinical Trials in Post-Parasitic ME/CFS; All Below Is Mechanistic Inference])[
No randomized controlled trial has been conducted specifically in patients with post-parasitic ME/CFS. The Bergen cohort provides epidemiological and immunological characterization but no intervention data. Treatment recommendations in this section are mechanistic extrapolations from general ME/CFS literature and from the pathophysiology of the proposed parasite-specific mechanisms (Chapter @ch:immune-dysfunction). They should be applied with the same caution as all other experimental interventions in this chapter.
] <lim:post-parasitic-no-trials>

== The Acute Prevention Window: Confirmed Parasitic Infection
<sec:parasite-prevention-window>

The most actionable treatment implication of the parasite–ME/CFS literature is a prevention opportunity that exists only before ME/CFS establishes. If intestinal parasitic infections trigger ME/CFS via an immune dysregulation cascade that eventually becomes self-sustaining, then aggressive, confirmed eradication of the parasite during the acute infection phase may prevent ME/CFS from developing.

The Bergen data establish that a substantial fraction of Giardia-infected patients do not develop ME/CFS — approximately 74% of laboratory-confirmed cases did not develop the condition at 3 years @Wensaas2012giardia5yr. The question of whether treatment timing within the acute phase predicts ME/CFS conversion has not been studied directly (see Open Question @oq:parasite-prevention), but standard clinical practice recommends prompt eradication therapy regardless of ME/CFS risk, making this a zero-cost opportunity.

*Clinical implications for acute parasitic infection:*

- *Confirmed eradication is essential.* Symptomatic resolution alone does not confirm parasite clearance. Standard of care for Giardia duodenalis includes stool PCR or antigen testing 4–6 weeks post-treatment to confirm eradication; if first-line treatment (metronidazole or tinidazole) fails, second-line therapy (albendazole, combination metronidazole + quinacrine) should be pursued. Persistent low-level Giardia infection — below symptomatic threshold but sufficient to maintain immune activation — is a plausible ME/CFS-sustaining mechanism that confirmed-eradication testing can rule out.

- *Early post-infection monitoring.* Patients who develop persistent fatigue, post-exertional malaise, or orthostatic symptoms in the 3–12 months following a documented intestinal parasitic infection should be evaluated for ME/CFS using standard diagnostic criteria (Chapter @ch:diagnostic-criteria). Early recognition avoids the compounding harm of misdiagnosis and inappropriate activity recommendations.

- *No evidence supports prophylactic antiparasitic therapy in established ME/CFS.* The inciting trigger vs.\ sustaining mechanism distinction (Section @sec:parasites-post-infectious) means that antiparasitic treatment in a patient who cleared their infection years ago carries negligible theoretical benefit for ME/CFS itself. Prescribing empirical antiparasitic therapy to ME/CFS patients without documented active infection is not supported by any evidence and exposes patients to unnecessary drug side effects.

#warning-env(title: [Empirical Antiparasitic Therapy Is Not Indicated in Established ME/CFS])[
Metronidazole, tinidazole, albendazole, and other antiparasitic agents carry adverse effect profiles (metronidazole: peripheral neuropathy with prolonged use, disulfiram-like reaction with alcohol, CYP2C9 inhibition; albendazole: hepatotoxicity, neutropenia requiring monitoring) that are not justified in the absence of documented active parasitic infection. Ivermectin, which has no evidence base in ME/CFS treatment and is not active against the intestinal protozoa most relevant to post-infectious ME/CFS (Giardia, Cryptosporidium), should not be prescribed for ME/CFS under the mistaken belief that it addresses a parasitic etiology. Claims that ME/CFS is broadly caused by parasitic infection and should be treated empirically with antiparasitic agents are not supported by the scientific evidence reviewed in this document.
] <warn:no-empirical-antiparasitic>

== Cromolyn + LDN Combination for MCAS-ME/CFS Overlap
<sec:cromolyn-ldn-mcas>

#speculation(title: [Cromolyn + LDN: Opposing Calcium Modulation in Different Cell Types for MCAS-ME/CFS Overlap])[
In patients with concurrent MCAS and ME/CFS, two distinct calcium dysregulations are proposed:

    - Mast cells: _excessive_ Ca#super[2+] entry driving pathological degranulation (histamine, tryptase, prostaglandin D#sub[2] release)
    - NK cells / immune cells: _insufficient_ Ca#super[2+] entry through dysfunctional TRPM3, impairing cytotoxic degranulation

Cromolyn sodium (mast cell stabilizer) suppresses Ca#super[2+] influx into mast cells via blockade of the plasma membrane calcium channel involved in IgE-independent degranulation, reducing pathological mediator release. LDN restores TRPM3-dependent Ca#super[2+] entry in NK cells, restoring immune cytotoxicity.

The combination is mechanistically complementary because the two drugs move calcium in opposite directions in different cell types: suppressing pathological calcium signaling in mast cells while restoring physiological calcium signaling in immune cells. This bidirectional calcium modulation cannot be achieved by either agent alone.

*Clinical context:* MCAS+ME/CFS overlap is estimated at 10--50%; both agents have acceptable safety profiles (cromolyn is not systemically absorbed at meaningful concentrations; LDN is well-tolerated). The combination therefore represents a low-risk mechanistic trial candidate for this subgroup.

*Falsifiable predictions:* (a) MCAS+ME/CFS patients receiving cromolyn+LDN should show improved NK cytotoxicity (LDN TRPM3 effect) AND reduced urinary N-methylhistamine/tryptase (cromolyn mast cell effect) simultaneously. (b) Neither agent alone achieves both endpoints. (c) Clinical response should correlate with baseline evidence of both TRPM3 dysfunction and MCAS biochemical activity.

#warning-env(title: [Research Rationale Only])[
This combination has not been evaluated in any clinical trial for MCAS-ME/CFS overlap. Cromolyn and LDN are both used clinically but for different indications. Their combination is untested and should not be adopted without clinical supervision. Cromolyn must be used as the oral formulation (not inhaled) for systemic mast cell effects; oral bioavailability is very low and dosing for systemic MCAS effect is not standardized.
]

(Certainty: 0.35. Individual mechanisms are documented; the combination is mechanistic inference.)
] <spec:ch18-cromolyn-ldn-mcas>

== Ketotifen + Famotidine: First-Line Domain 6 Oral Combination
<sec:ketotifen-famotidine-domain6>

#hypothesis(title: [Ketotifen + Famotidine as a Targeted First-Line Combination for Domain 6-Positive ME/CFS])[
*(Certainty: 0.55 -- supported by high POTS/MCAS triad therapy response data; no ME/CFS-specific RCT for this combination.)*

For ME/CFS patients with confirmed Domain 6 positivity (mast cell / histaminergic dysregulation, Section @sec:domain6-mast-cell), a low-cost oral combination of ketotifen and famotidine addresses complementary receptor targets with distinct pharmacological profiles and low interaction risk.

*Mechanistic rationale:*

    - *Ketotifen (1--2 mg at bedtime)*: First-generation H1 antihistamine with additional mast cell stabilizing activity (inhibits degranulation independently of H1 blockade). Unlike cetirizine or loratadine, ketotifen crosses the blood-brain barrier and may address hypothalamic mast cell activation @Theoharides2024ANS. Its mast cell-stabilizing effect reduces mediator release before it occurs (prophylactic), whereas H1 blockade acts on already-released histamine (reactive). Known to reduce PEM frequency in retrospective MCAS analysis @Weinstock2024Ketotifen.
    - *Famotidine (20--40 mg twice daily)*: H2 antihistamine that targets cardiac H2 receptors (reducing histamine-driven palpitations and tachycardia), gastric H2 receptors (reducing histamine-driven GI symptoms), and has documented anti-inflammatory effects independent of H2 blockade that were observed in Long COVID RCT signals. Famotidine + H1 combination in Long COVID patients with ME/CFS features produced "improvement in energy and cognitive function" with worsening on discontinuation @Davis2023.

*Distinction from cromolyn+LDN combination (Section @sec:cromolyn-ldn-mcas):* Cromolyn+LDN targets the mast cell--TRPM3/NK axis; ketotifen+famotidine targets the H1/H2 receptor axis plus mast cell stabilization. The two approaches are mechanistically complementary and can be combined in refractory cases. Ketotifen+famotidine is the simpler, lower-cost first-line option; cromolyn+LDN is appropriate when NK cell dysfunction is documented (Domain 1 overlap).

*Starting doses for ME/CFS sensitivity:* Ketotifen 0.5 mg (half a 1 mg tablet) at bedtime for 2 weeks; if tolerated, increase to 1 mg. Famotidine 20 mg once with dinner for 2 weeks; if tolerated, increase to twice daily. The sedating effect of ketotifen often improves sleep quality, which is a secondary benefit in ME/CFS.

*Monitoring:* Baseline and 4-week COMPASS-31 score (autonomic symptom severity). Urinary N-methylhistamine at baseline and 8 weeks (confirm mast cell mediator reduction). If significant sedation from ketotifen limits daytime function, switch to loratadine 10 mg (less sedating, less mast-cell-stabilizing) as H1 component.

*Interactions:* Ketotifen may enhance sedation from CNS depressants, antiemetics (particularly metoclopramide), and other antihistamines. Famotidine has minimal drug interactions at standard doses but may affect atazanavir absorption if relevant. Both are generally well-tolerated in ME/CFS populations.

#warning-env(title: [No ME/CFS RCT for this Combination Exists])[
No randomized controlled trial has evaluated ketotifen + famotidine in ME/CFS. The 77--95% PEM reduction rates reported by @Weinstock2024Ketotifen come from an uncontrolled retrospective analysis; placebo response, natural fluctuation, and selection bias cannot be excluded. The Steinberg 1996 terfenadine (H1 monotherapy) RCT was negative @Steinberg1996 -- H1 alone is insufficient. H1+H2 combination is the minimum effective approach based on mechanistic reasoning and available case evidence. Physician supervision is required.
]

*Stopping criteria:* Discontinue ketotifen if sedation remains functionally impairing after 4 weeks despite dose reduction to 0.5 mg. Discontinue the combination if no symptom improvement (COMPASS-31 reduction < 15%) after 12 weeks at full dose. Discontinue immediately if paradoxical agitation, QTc-prolonging arrhythmia, or hypersensitivity reaction occurs. Do not discontinue abruptly in patients with suspected mast cell-dependent stability; taper ketotifen over 2 weeks if discontinuing after prolonged use.

*Evidence grade:* D+ (clinical convention + retrospective case data + mechanistic rationale; no prospective controlled ME/CFS trial).
] <hyp:ketotifen-famotidine-first-line>

== Post-Parasitic MCAS Phenotype
<sec:post-parasitic-mcas>

The post-parasitic mast cell priming speculation (Speculation @spec:parasite-mcas-priming, Chapter @ch:immune-dysfunction) proposes that acute Giardia infection may permanently sensitize intestinal mast cells, producing a post-parasitic MCAS phenotype characterized by food intolerances, chemical sensitivities, flushing, autonomic instability, and fatigue that began after the acute parasitic infection.

Clinically, this phenotype is indistinguishable from MCAS from any other cause — the same diagnostic criteria apply and the same treatments are used. The treatment protocols for MCAS in ME/CFS are covered in full in Section @sec:allergies-mast-cells. The contribution of this section is to heighten index of suspicion: patients with parasitic-onset ME/CFS who have not yet been evaluated for MCAS should be screened, particularly if their symptom profile includes the following features that commenced or worsened after the acute infection:

- New-onset food intolerances or reactions to foods previously well-tolerated
- Flushing, urticaria, or pruritis without identifiable allergic trigger
- Gastrointestinal cramping, diarrhea, or nausea disproportionate to any residual GI pathology
- Chemical or environmental sensitivities (fragrance, cleaning products, smoke) of new onset
- Rapid worsening of orthostatic symptoms specifically after eating (postprandial hypotension may be exacerbated by mast cell mediator release)

*Diagnostic approach:* Serum tryptase (baseline; elevated in systemic mastocytosis, sometimes elevated in MCAS) and 24-hour urinary N-methylhistamine and prostaglandin D₂ metabolites (during a symptomatic period) are the most accessible initial investigations. The AAAAI/EAACI 2020 consensus criteria for MCAS diagnosis require: (1) episodic symptoms consistent with mast cell mediator release; (2) a rise in serum tryptase from baseline of #sym.gt 20% + 2 ng/mL during a symptomatic episode, or elevation of other mast cell mediators; (3) symptomatic response to mast cell-directed therapy.

*If MCAS criteria are met,* the full mast cell treatment protocol applies (Section @sec:allergies-mast-cells). A therapeutic trial of H1 + H2 antihistamine combination prior to formal diagnosis is reasonable given the safety profile of these agents, though this should be done under clinical supervision — H2 blockers can affect heart rate and interact with other medications. This recommendation is based on mechanistic inference from Speculation @spec:parasite-mcas-priming and lacks direct evidence in post-parasitic ME/CFS specifically (Evidence Grade E).

== Duodenal Mucosal Repair
<sec:duodenal-mucosal-repair>

Wensaas et al.\ (2018) documented persistent duodenal histological changes — villous atrophy and intraepithelial lymphocytosis — in a subset of Bergen cohort patients at 10 years post-infection @Wensaas2018giardia10yr. In patients with these changes, ongoing mucosal barrier dysfunction could maintain chronic LPS translocation and systemic immune activation as a sustaining ME/CFS mechanism (Open Question @oq:duodenal-microbiome).

This represents a potentially targetable structural abnormality, but only in the subset with documented ongoing histological damage. The key clinical principle is that intervention should follow confirmed investigation, not be applied empirically.

*Investigative pathway:*

Patients with post-parasitic ME/CFS and prominent GI symptoms, particularly duodenal-type symptoms (early satiety, epigastric discomfort, nausea, malabsorption of fats), should have coeliac disease excluded (anti-tissue transglutaminase IgA with total IgA; duodenal biopsy if serology is positive or IgA deficiency is present). If coeliac disease is excluded and symptoms persist, upper endoscopy with duodenal biopsy can assess for persistent villous atrophy and intraepithelial lymphocytosis attributable to post-infectious pathology.

*Intervention if ongoing mucosal pathology is confirmed:*

- *Elemental or semi-elemental diet:* Provides complete nutrition in a pre-digested, low-antigen form, reducing mucosal immune stimulation. Used in small bowel Crohn's disease as mucosal healing induction therapy; no controlled data in post-parasitic ME/CFS but mechanistically applicable if mucosal inflammation is confirmed. Typically used as a 6–8 week induction period while conventional anti-inflammatory treatment is initiated. Not appropriate as a long-term dietary strategy without specialist supervision.

- *L-glutamine supplementation:* *Requires physician supervision and baseline liver and renal function testing before initiating.* Glutamine is the primary metabolic fuel of enterocytes and is required for tight junction protein synthesis (claudin-1, occludin, ZO-1). Supplementation at 0.5 g/kg/day has been studied in intestinal barrier dysfunction contexts including critical illness, chemotherapy-related mucositis, and inflammatory bowel disease, with mixed but suggestive results. In the context of post-parasitic villous atrophy, glutamine may support enterocyte regeneration and barrier repair. Evidence specifically in post-parasitic ME/CFS does not exist. *Contraindications:* Glutamine must not be used in patients with hepatic encephalopathy or significant renal impairment (eGFR #sym.lt 30 mL/min/1.73 m²), as impaired nitrogen handling can worsen encephalopathy or contribute to uremia.

- *Zinc supplementation:* Zinc deficiency impairs intestinal barrier function and mucosal immune competence; zinc supplementation at 20–40 mg elemental zinc/day is used in WHO diarrheal disease protocols and has evidence for reducing intestinal permeability in small trials of inflammatory bowel disease. In the context of confirmed villous atrophy with possible micronutrient malabsorption, zinc status should be checked and repleted. *Safety note:* The EU Tolerable Upper Intake Level (UL) for zinc in adults is 25 mg/day; doses above this threshold require clinical justification (e.g.\ confirmed deficiency or documented malabsorption) and should not be self-prescribed. Prolonged supplementation above 25 mg/day induces copper deficiency by competitive absorption inhibition, which can cause sideroblastic anemia and peripheral neuropathy. If zinc is supplemented at ≥ 25 mg/day for more than 4 weeks, co-supplementation with 1–2 mg elemental copper/day and periodic serum copper/ceruloplasmin monitoring are warranted.

#limitation(title: [Duodenal Mucosal Repair: No ME/CFS Trial Data])[
No clinical trial has tested elemental diet, glutamine, or zinc specifically for post-parasitic ME/CFS with confirmed ongoing mucosal pathology. The interventions described above are mechanistically grounded in intestinal barrier physiology and have evidence bases in related conditions, but efficacy and effect size in this specific context are unknown. The critical clinical gate is confirmation of ongoing mucosal pathology by biopsy before these interventions are pursued.
]

*Evidence Grade*: E --- mechanistically motivated; extrapolated from intestinal barrier literature; no ME/CFS-specific trial data; applicable only in patients with confirmed ongoing mucosal pathology

== IDO1/Kynurenine Pathway Targeting in Post-Parasitic ME/CFS
<sec:post-parasitic-ido1>

The IDO1 kynurenine shunt speculation (Speculation @spec:parasite-ido1-kynurenine, Chapter @ch:immune-dysfunction) proposes that intestinal parasitic infection may epigenetically prime IDO1 overexpression, creating a persistent kynurenine shunt that drives neuroinflammation and cognitive dysfunction in post-parasitic ME/CFS. This is a speculative mechanistic model with no direct human evidence, but it maps onto a therapeutic target — IDO1 inhibition — that has existing pharmacological tools developed for oncology.

*Epacadostat* (INCB024360; Incyte) is a selective IDO1 enzyme inhibitor developed as an oncological immunotherapy agent; it failed to improve outcomes in Phase 3 melanoma trials, but the clinical experience demonstrated that IDO1 inhibition at therapeutic doses is achievable and reasonably well-tolerated in humans. Mechanistically, epacadostat reduces kynurenine production from tryptophan, which would — if the IDO1 hypothesis is correct — reduce quinolinic acid (a neurotoxic NMDA agonist), increase tryptophan availability for serotonin synthesis, and reduce neuroinflammatory kynurenine pathway metabolites.

*Why this is not yet a clinical recommendation:*

- The foundational premise — that IDO1 is persistently overexpressed in post-parasitic ME/CFS intestinal macrophages — has not been demonstrated.
- The kynurenine/tryptophan ratio has not been measured longitudinally in the Bergen cohort or any post-parasitic ME/CFS cohort.
- Epacadostat's Phase 3 oncology failures reflected synergy failure with pembrolizumab, not IDO1 inhibition failure per se; its standalone safety profile is not a barrier, but use in ME/CFS would be entirely off-label without any ME/CFS pharmacodynamic data.
- The IDO1 mechanism, if active, would be one of several parallel sustaining mechanisms; IDO1 inhibition alone might not produce meaningful clinical improvement even if the pathway is overactive.

*What would change this assessment:* A cross-sectional study measuring the kynurenine/tryptophan ratio in Bergen cohort ME/CFS patients vs non-ME/CFS exposed controls (a low-cost serum assay, feasible within a Bergen biobank recontact study — see Open Question @oq:bergen-biobank-recontact) is the minimal threshold for moving this from speculation to investigable hypothesis. A positive result (elevated ratio in PI-CFS vs non-CFS exposed) would justify a small proof-of-concept trial.

*Currently:* IDO1 inhibition in post-parasitic ME/CFS is not recommended outside of a future clinical trial specifically designed to test this mechanism in a biomarker-selected population (elevated kynurenine/tryptophan ratio at baseline).

*Evidence Grade*: E --- purely mechanistic; no clinical data; dependent on biomarker evidence that does not yet exist

== GPCR Autoantibody Assessment for Immunoadsorption Selection
<sec:post-parasitic-autoantibody-screen>

The molecular mimicry speculation (Speculation @spec:giardia-molecular-mimicry, Chapter @ch:immune-dysfunction) proposes that Giardia VSP epitopes may prime GPCR autoantibody production via molecular mimicry. If correct, a subset of post-parasitic ME/CFS patients would have elevated anti-muscarinic and/or anti-β₂-adrenergic receptor autoantibodies — the same targets studied in the broader ME/CFS autoimmunity literature @Loebel2016.

This has an immediately actionable implication: post-parasitic ME/CFS patients being evaluated for immunoadsorption (Section @sec:immunoadsorption) or rituximab should have GPCR autoantibody profiling as part of their pre-treatment workup, using the same autoantibody panel applied in the broader ME/CFS autoimmune subtype literature. If autoantibodies are present, post-parasitic patients are eligible for the same immunoadsorption protocols as post-viral autoimmune-phenotype patients; the trigger (parasitic vs.\ viral) does not change the treatment target if the endpoint is the same (GPCR autoantibody reduction).

This does not require any new treatment development — it requires application of existing protocols to a population that has not yet been systematically screened.

*Diagnostic gate:* GPCR autoantibody testing (anti-M3R, anti-M4R, anti-β₁-adrenergic, anti-β₂-adrenergic IgG) is not widely available in routine clinical settings; in Europe, the Charité laboratory (Berlin) has operated this assay in research contexts. Before this becomes a standard clinical recommendation, GPCR autoantibody profiling in a post-parasitic ME/CFS cohort — ideally the Bergen cohort — is needed to establish prevalence and clinical correlation.

*Evidence Grade*: E --- mechanistically motivated; no data on GPCR autoantibody prevalence in post-parasitic ME/CFS; feasible as a targeted biomarker screening study

= Physical and Device-Based Interventions Under Investigation
<ch:physical-device-therapies>

This chapter section covers physical device therapies and biophysical approaches that are used by ME/CFS patients or proposed by patient community contacts, but for which the evidence base is insufficient to recommend routine clinical use. They are presented here to provide accurate framing for patients and clinicians who encounter them, and to identify what evidence would be needed before a stronger recommendation could be made.

== Pulsed Electromagnetic Field Therapy (PEMF / BEMER)
<sec:pemf-bemer>

Pulsed electromagnetic field (PEMF) devices deliver low-frequency, low-intensity electromagnetic fields to tissue with the proposed mechanism of improving microcirculation by stimulating vasomotion — the spontaneous rhythmic contraction of precapillary arterioles that drives capillary perfusion independent of cardiac output. The BEMER device (Bio-Electro-Magnetic-Energy-Regulation; BEMER Group AG) is the most widely used commercial PEMF whole-body device in Europe and has CE Class IIa and FDA 510(k) Class II clearance as a muscle stimulator. These regulatory clearances attest to device safety, not clinical efficacy.

*Proposed mechanisms:* PEMF stimulates the nitric oxide/eNOS pathway in vascular endothelium — calcium/calmodulin binding activates endothelial NO synthase, increasing NO release and arteriolar relaxation. Additional mechanisms include adenosine A2A receptor upregulation (cAMP elevation, anti-inflammatory) and voltage-gated calcium channel activation. These are biologically coherent mechanisms with basic science support @Flatscher2023PEMF, but their operation in ME/CFS microvascular pathophysiology is untested.

*Clinical evidence — direct ME/CFS data:* None. No published RCT has enrolled ME/CFS patients.

*Closest analogues:*

- *Fibromyalgia (BEMER-specific RCT, negative — the largest controlled study):* Multanen et al.\ (2018) conducted the largest BEMER-specific controlled trial — a crossover RCT in 108 fibromyalgia patients @Multanen2018BEMER. Pain scores decreased equally in both active and sham arms. The conclusion was unambiguous: BEMER was not effective for pain or functioning in fibromyalgia. This is the most directly relevant controlled study and it is negative.

- *Multiple sclerosis fatigue (BEMER-specific RCT, positive short-term but not sustained):* Piatkowski et al.\ (2009) randomized 37 MS patients to BEMER vs sham, 8 minutes twice daily for 12 weeks @Piatkowski2009BEMER. The Modified Fatigue Impact Scale (MFIS) and Fatigue Severity Scale (FSS) improved significantly at 12 weeks. However, at 6-week follow-up after stopping therapy, no significant between-group difference remained — effects did not persist after discontinuation.

- *Post-COVID fatigue (case reports only):* Two case reports describe PEMF use in post-COVID fatigue patients @Wagner2022PEMFpostCOVID, but single-patient observations cannot distinguish device effect from natural recovery or concurrent interventions.

*Independent systematic review:* Hug & Röösli (2012) conducted a systematic review of whole-body PEMF devices without industry funding and concluded that "scientific evidence for therapeutic effects of whole-body PEMF devices is insufficient" @HugRoosli2012PEMF.

*ME/CFS-specific concerns:* No published study has assessed whether PEMF sessions trigger post-exertional malaise. One post-COVID case reported transient post-session fatigue after the first treatment @Wagner2022PEMFpostCOVID. Given ME/CFS patients' vulnerability to PEM from physical stimulation, any trial of PEMF should begin with the shortest available session duration, with a carer or support person present for the first session, and with PEM symptoms monitored for 48 hours afterwards.

#limitation(title: [PEMF/BEMER: Insufficient Evidence in ME/CFS; Negative Fibromyalgia RCT])[
The BEMER device's largest controlled trial (fibromyalgia, n=108) was negative @Multanen2018BEMER. No ME/CFS trial exists. The MS fatigue trial showed effects that did not persist after stopping therapy @Piatkowski2009BEMER. The proposed microcirculation mechanism has biological plausibility @Flatscher2023PEMF but has not been tested in the ME/CFS context. PEM risk is uncharacterized. Marketing claims ("scientifically proven," "up to 30% microcirculation improvement") substantially exceed what peer-reviewed evidence supports.
]

*Evidence Grade*: E/D --- no ME/CFS data; negative BEMER RCT in overlapping condition; plausible mechanism; PEM risk unknown

== Earthing/Grounding
<sec:earthing-grounding>

"Earthing" or "grounding" refers to direct physical contact with the Earth's surface electrical potential, typically via conductive mattress overlays, grounding sheets, or barefoot contact with soil. The proposed mechanism is transfer of the Earth's surface electrons to the body, hypothesized to act as antioxidants neutralising reactive oxygen species, normalize cortisol circadian rhythms, and shift autonomic tone toward parasympathetic dominance.

The theoretical hooks to ME/CFS pathophysiology are real: sympathetic excess and low heart rate variability are well-documented in ME/CFS, cortisol dysregulation occurs in a subset of patients, and chronic oxidative stress and neuroinflammation are proposed mechanisms. If the proposed autonomic and anti-inflammatory effects were real and reproducible, they would be mechanistically relevant.

However, the entire published evidence base on earthing originates from a single network of financially conflicted authors — James Oschman, Gaétan Chevalier, and Stephen Sinatra — who are contractors, shareholders, or founders of EarthFx Inc. (the commercial entity that produces and sells earthing products) @Oschman2015earthing. This constitutes a closed citation loop with no independent replication. The best-designed study is a stepped-wedge cluster trial (n=16) @Chevalier2019earthingRCT, which is substantially underpowered and unreplicated. The foundational mechanism — free electron antioxidant transfer via direct contact with the Earth's surface — lacks independent biophysical validation.

#open-question(title: [Earthing and Autonomic Modulation: Does Any Effect Persist Beyond Relaxation?])[
If earthing genuinely produces a shift in autonomic tone toward parasympathetic dominance, this would be mechanistically relevant to ME/CFS given well-documented sympathetic excess. A sham-controlled crossover study in ME/CFS patients measuring HRV before and after grounded vs ungrounded sleep sessions (using validated continuous HRV monitoring) would be the minimal test of this specific claim in the relevant population. This has not been done. The two barriers to taking this more seriously are: (1) the entire evidence base is COI-contaminated with no independent replication, and (2) the flagship proposed mechanism (electron antioxidant transfer) has no established biophysical basis.
] <oq:earthing-autonomic>

*Evidence Grade*: E --- no ME/CFS trials; entire evidence base from single conflicted author network; no independent replication; mechanism unvalidated

== Muscle Oxygenation Monitoring (NIRS / Moxy Monitor) as a Pacing Tool
<sec:nirs-moxy-pacing>

This section addresses NIRS-based muscle oxygenation monitoring not as a treatment, but as a potential physiological monitoring approach for activity management in ME/CFS. The distinction is important: NIRS provides an objective measure of a documented ME/CFS pathophysiology (impaired muscle O₂ utilisation); whether that measurement can guide pacing to prevent PEM is a separate question.

*The underlying pathophysiology — well-supported:* Near-infrared spectroscopy (NIRS) measures muscle oxygen saturation (SmO₂) non-invasively by detecting oxyhemoglobin and deoxyhemoglobin in tissue. Multiple independent groups have documented abnormalities using NIRS and related methods in ME/CFS:

- McCully & Natelson (1999) found significantly slower post-exercise O₂ resaturation time constants in CFS patients (46.5 vs 29.4 seconds) — suggesting impaired oxidative metabolism or autonomic dysregulation of muscle blood flow @McCully1999NIRS.
- Vermeulen & Vermeulen van Eck (2014) documented decreased O₂ extraction at peak exercise via cardiopulmonary exercise testing (peak extraction 10.8 vs 13.5 ml/100ml in women; 13.7 vs 19.5 ml/100ml in men) — peripheral extraction failure independent of delivery @Vermeulen2014O2extraction.
- Miller et al.\ (2015) applied NIRS during a submaximal handgrip test in 16 ME/CFS vs 16 controls and found reduced hemoglobin changes at comparable perceived exertion, proposing NIRS as a PEM risk stratification tool @Miller2015NIRS.
- In Long COVID — which substantially overlaps with ME/CFS — Colosio et al.\ (2023) and Jamieson et al.\ (2024) independently confirmed reduced NIRS-measured oxidative capacity (time constants 38.7 vs 24.6 seconds; p=0.001), with the Colosio study confirming reduced mitochondrial complex activity on biopsy @Colosio2023LongCOVIDNIRS @Jamieson2024LongCOVIDNIRS.

*The Moxy Monitor specifically:* The Moxy Monitor (Fortiori Design LLC) is a consumer-grade wrist-worn NIRS device validated for exercise physiology applications in healthy subjects @Feldmann2019Moxy. It outputs continuous SmO₂ (%) during activity. It has not been tested in ME/CFS research or clinical settings; its validity is established only in healthy subjects with adipose tissue thickness ≤15~mm.

*As a pacing tool — speculative:* Heart-rate-based pacing (staying below the anaerobic threshold, typically estimated as 60% of age-predicted maximum HR) is the evidence-based approach to activity management in ME/CFS. The theoretical case for SmO₂-based pacing is that the anaerobic threshold transition — where cells switch from aerobic to anaerobic metabolism — produces a characteristic SmO₂ drop that could serve as a real-time PEM-prevention signal that is more physiologically direct than heart rate. However:

- No study has validated SmO₂-guided pacing in ME/CFS
- The anaerobic threshold in ME/CFS patients may occur at unusually low exertion levels, meaning Moxy measurements during normal daily activities could be informative in ways not captured by exercise-specific validation studies
- Moxy readings may be unreliable in patients with adipose tissue >15~mm at the measurement site

#open-question(title: [SmO₂-Guided Pacing: Can Real-Time Muscle Oxygenation Data Improve PEM Prevention?])[
Heart-rate pacing has empirical support but is an indirect proxy for the metabolic threshold that matters. Real-time SmO₂ monitoring (via Moxy or similar) could provide a more direct signal of impending anaerobic threshold crossing. A pilot study in ME/CFS patients comparing HR-guided vs SmO₂-guided activity management over 12 weeks, with PEM frequency and severity as primary outcomes, would test this hypothesis. The Moxy Monitor's consumer availability and low cost make this feasible as a self-tracking protocol.
] <oq:smO2-pacing>

*Evidence Grade*: D/E (pathophysiology) / E (pacing application) --- NIRS pathophysiology well-established from multiple independent groups; SmO₂-guided pacing in ME/CFS has no trial data; Moxy Monitor validated only in healthy subjects

// ===== Sigma-1 Receptor and Fluvoxamine section added 2026-04-08 =====

== Sigma-1 Receptor Agonism: Fluvoxamine and the ER Stress Connection
<sec:sigma1-fluvoxamine>

A March 2026 randomized controlled trial reported a statistically strong pharmacological signal in Long COVID fatigue --- using an antidepressant that likely works through mechanisms unrelated to mood. The result illuminates a molecular pathway --- sigma-1 receptor (S1R) agonism and ER stress suppression --- that connects SARS-CoV-2 biology, ME/CFS pathophysiology, and a set of existing, inexpensive, widely available drugs. This section develops that connection in full, along with the significant caveats that temper translation to ME/CFS.

=== The REVIVE-TOGETHER Trial
<subsubsec:revive-together>

Reis et al.\ (2026) conducted a Bayesian adaptive platform RCT in 399 adults in Brazil with fatigue persisting $≥$90 days after confirmed SARS-CoV-2 infection @Reis2026fluvoxamine. Three arms: fluvoxamine 100 mg twice daily, metformin 750 mg twice daily, and matching placebo, over 60 days of treatment with 90-day follow-up.

*Results:*

- *Primary outcome* (Fatigue Severity Scale at day 60): fluvoxamine vs.\ placebo mean difference −0.43 (95% credible interval −0.80 to −0.07); posterior probability of superiority 99.0%
- *Day-90 follow-up*: mean difference −0.58 (CrI −0.98 to −0.16); posterior probability 99.7% --- effect sustained and slightly increased at 30 days after stopping treatment
- *Quality of life* (EQ-5D-5L): significant improvements across days 30, 60, and 90
- *Metformin*: mean difference −0.03 at day 60; 56.0% probability of superiority; arm halted early for futility
- *Adverse events*: fluvoxamine 20.0% vs.\ metformin 28.8% vs.\ placebo 29.7%

The Bayesian design provides a posterior probability rather than a p-value: 99.0% means that, given the data, the probability that fluvoxamine outperforms placebo is 99.0% --- a notably strong signal from a well-powered adaptive trial.

#limitation(title: [REVIVE-TOGETHER: Methodological Caveats])[
Five concerns temper interpretation:

1. *Baseline imbalance*: The placebo arm had slightly higher mean baseline fatigue (5.9 vs.\ 5.6) and a higher proportion of female participants (85.5% vs.\ 76.7%). Both differences favor fluvoxamine's apparent superiority. Whether these imbalances arose by chance or reflect inadequate randomisation strata is not reported.

2. *Differential dropout*: Fluvoxamine arm showed 13% missingness at day 90 vs.\ 6% in placebo. Missing data handling with missingness correlated with outcome can bias results; the imputation strategy is not fully described in secondary sources.

3. *Modest effect size*: 0.43 points on a 1--7 scale. Whether this crosses the minimum clinically important difference (MCID) for FSS in Long COVID has not been formally established for this population. All three arms showed substantial improvement from baseline, consistent with natural recovery making an absolute difference harder to interpret.

4. *No mechanistic data*: The trial included no biomarkers, no S1R assays, no inflammatory markers, and no neurological measures. Mechanistic attribution is entirely inferential.

5. *Long COVID, not ME/CFS*: Participants were selected for post-COVID fatigue, not for ME/CFS diagnostic criteria. Post-exertional malaise, cognitive symptoms, and orthostatic intolerance were not assessed as primary endpoints.
] <lim:revive-together>

*Critical interpretive note:* The finding that fluvoxamine --- a drug approved for obsessive-compulsive disorder and depression --- reduces Long COVID fatigue with 99% posterior probability does *not* support a psychogenic interpretation of Long COVID or ME/CFS. As cardiologist Quentin Benoist observed in commentary following the trial's publication: a treatment response does not demonstrate the underlying mechanism. A drug with sigma-1 receptor affinity, anti-inflammatory properties, and ER stress modulation capacity may relieve symptoms through any of those pathways independently of its antidepressant indication. The authors themselves explicitly decline to attribute the benefit to mood effects and call for mechanistic studies.

=== The Sigma-1 Receptor: A Molecular Switchboard at the ER--Mitochondria Interface
<subsubsec:sigma1-mechanism>

The sigma-1 receptor (S1R) is not a receptor in the conventional ligand-gated ion channel or GPCR sense. It is a chaperone protein embedded in the endoplasmic reticulum membrane, concentrated at ER--mitochondria contact sites (MAMs: mitochondria-associated membranes). Its principal function is maintaining ER proteostasis and regulating inter-organelle calcium flux.

*Normal S1R function:*

- Under physiological conditions, S1R is bound to the ER chaperone BiP (GRP78) in an inactive state
- Cellular stress (ER calcium depletion, accumulation of misfolded proteins, oxidative stress) displaces BiP, freeing S1R to chaperone client proteins
- Active S1R stabilises IP3R3 calcium channels at MAM sites, facilitating ER-to-mitochondria calcium transfer
- S1R activity modulates NF-$kappa$B, IRF3, and IRE1$alpha$ --- key regulators of the innate immune response and unfolded protein response (UPR)

*SARS-CoV-2 and S1R:* Gordon et al.\ (2020) mapped the entire SARS-CoV-2 protein interactome and found that viral non-structural proteins Nsp6 and Nsp8 directly bind the sigma-1 receptor @Gordon2020sigma1SARS. This is not incidental: Nsp6 and Nsp8 are both ER-localized replication proteins. By binding S1R, SARS-CoV-2 may co-opt ER proteostasis machinery for replication while simultaneously disrupting host stress responses.

*S1R agonism as therapeutic mechanism:*

Fluvoxamine is the most potent S1R agonist among commercially available SSRIs, with Ki approximately 36 nM at S1R vs.\ Ki 4,000--10,000 nM for other SSRIs @Hashimoto2021sigma1. At therapeutic doses (100 mg twice daily), plasma concentrations are sufficient to occupy S1R meaningfully. The proposed mechanism chain:

+ SARS-CoV-2 disrupts S1R function via Nsp6/Nsp8 binding
+ ER stress accumulates; IRE1$alpha$ activates the UPR; XBP-1 mRNA splicing drives pro-inflammatory gene expression
+ S1R agonism (fluvoxamine) stabilises ER proteostasis, suppresses IRE1$alpha$-mediated UPR, dampens downstream cytokine and interferon signaling
+ Reduced neuroinflammation and systemic inflammatory signaling

This mechanism was initially proposed to explain why fluvoxamine reduced clinical deterioration in acute COVID-19 in the Lenze et al.\ (2020) JAMA RCT @Lenze2020fluvoxamine (0 deteriorations in fluvoxamine arm vs.\ 6 [8.3%] in placebo, _n_=152). Subsequent acute COVID trials did not replicate this benefit: STOP-COVID 2, ACTIV-6, and COVID-OUT all failed to demonstrate significant clinical benefit of fluvoxamine in acute COVID-19 outpatients. The acute COVID signal should therefore be treated as preliminary and contested. The persistence of the S1R hypothesis rests primarily on the biological plausibility of the mechanism, the Nsp6/Nsp8 interactome data, and the REVIVE-TOGETHER post-acute result. Whether the same pathway, persisting post-acutely, explains the REVIVE-TOGETHER fatigue result remains an open question.

=== Connection to ME/CFS: WASF3, ER Stress, and Mitochondrial Dysfunction
<subsubsec:sigma1-mecfs-connection>

The sigma-1 / ER stress connection is not merely a Long COVID story. It converges with the central finding of ME/CFS mitochondrial research. Wang et al.\ (2023) identified WASF3 --- an actin nucleation protein upregulated in ME/CFS skeletal muscle --- as a mediator of exercise intolerance via ER stress--driven disruption of mitochondrial respiratory supercomplexes @wang2023wasf3. The pathway:

#box(stroke: 0.5pt, inset: 8pt, radius: 4pt)[
  *ER stress (any trigger)* $arrow.r$ *WASF3 upregulation* $arrow.r$ *mitochondrial supercomplex destabilization* $arrow.r$ *Complex IV (cytochrome c oxidase) impairment* $arrow.r$ *ATP depletion + ROS generation* $arrow.r$ *more ER stress* [self-amplifying loop]
]

S1R agonism sits upstream of this loop. If S1R suppresses IRE1$alpha$-driven UPR and reduces ER stress, it could theoretically attenuate WASF3 upregulation and reduce mitochondrial supercomplex disruption. This is a hypothesis, not a tested claim. A critical caveat: the Wang et al.\ (2023) paper establishes that WASF3 upregulation in ME/CFS is associated with ER stress, but does not directly demonstrate that WASF3 upregulation is IRE1$alpha$-dependent specifically. The IRE1$alpha$ $arrow.r$ WASF3 link is the mechanistically plausible step that has not been directly shown. The connection is coherent, but the chain has an untested node at its centre.

#speculation(title: [Sigma-1 Agonism as Upstream Brake on the WASF3--ER Stress Loop])[
The WASF3-mediated mitochondrial dysfunction in ME/CFS is driven by persistent ER stress. S1R agonism suppresses IRE1$alpha$-mediated UPR, reducing ER stress signal amplitude. If ER stress is the proximal driver of WASF3 upregulation, S1R agonists should reduce WASF3 expression and partially restore mitochondrial supercomplex integrity.

*Certainty: 0.25* --- Two pathways (S1R--ER stress; WASF3--ER stress--mitochondria) are independently established; the connection between them is mechanistically plausible but untested.

*Testable predictions:*
- S1R agonist treatment reduces WASF3 protein expression in ME/CFS muscle biopsies or PBMCs
- S1R agonism improves mitochondrial supercomplex assembly in ex vivo ME/CFS cell preparations
- Patients with highest baseline WASF3 expression show greatest fatigue benefit from fluvoxamine
- Combination of S1R agonist + mitochondrial-targeted antioxidant (MitoQ, SS-31) shows synergy vs.\ either alone

*Limitations:* WASF3 was identified in skeletal muscle; S1R is most studied in neuronal and immune cell contexts. Cross-tissue extrapolation requires direct testing. The ER stress--WASF3 link is established in the WASF3 overexpression model; whether endogenous WASF3 upregulation in ME/CFS is IRE1$alpha$-dependent specifically has not been shown. S1R agonism at therapeutic fluvoxamine doses may not be sufficient to produce detectable WASF3 suppression.
] <spec:sigma1-wasf3-brake>

=== Additional Pharmacological Mechanisms
<subsubsec:fluvoxamine-other-mechanisms>

S1R agonism is not fluvoxamine's only pharmacologically active pathway. Four additional mechanisms have been proposed, each with independent biological relevance to ME/CFS and Long COVID:

*1. Acid sphingomyelinase (ASM) inhibition:* All SSRIs inhibit ASM, the enzyme that cleaves sphingomyelin to generate ceramide. Ceramide-enriched membrane rafts facilitate viral entry and may maintain persistence of viral reservoir cells. ASM inhibition reduces ceramide levels, destabilizing entry platforms and potentially reducing ongoing viral stimulation of the immune system. This mechanism is shared by all SSRIs and does not require S1R affinity specifically.

*2. Serotonin transporter (SERT) blockade:* The classical SSRI mechanism increases synaptic serotonin. In the gut, serotonin regulates motility and mucosal immune tone via 5-HT3/5-HT4 receptors; systemic serotonin signaling modulates platelet activation and vasoconstriction. Whether serotonin-pathway effects are relevant to the fatigue result is unclear; other SSRIs with comparable SERT affinity but lower S1R affinity have not consistently reproduced fluvoxamine's acute COVID and Long COVID results, weakening the SERT-specific hypothesis.

*3. CYP1A2 inhibition as rival primary explanation:* Fluvoxamine is the most potent CYP1A2 inhibitor among SSRIs. CYP1A2 metabolises caffeine, melatonin, theophylline, duloxetine, clozapine, olanzapine, and several other drugs. In patients consuming caffeine (the primary CYP1A2 substrate in everyday life), fluvoxamine substantially extends caffeine half-life ($approx$5~hours $arrow.r$ $approx$30~hours). This is not merely a safety note --- it is a genuine rival primary explanation for the REVIVE-TOGETHER fatigue result. Extended caffeine half-life could independently reduce fatigue-related subjective measures and improve sleep quality without any S1R mechanism being active. Melatonin levels are also dramatically elevated by CYP1A2 inhibition, which could independently normalize circadian function. The REVIVE-TOGETHER trial did not control for caffeine intake, did not measure caffeine or melatonin metabolite levels, and did not report dietary data. This confound must be considered a live alternative hypothesis --- not dismissed --- until a replication trial measures caffeine and melatonin metabolites prospectively and controls for baseline intake. The S1R hypothesis and the CYP1A2/caffeine hypothesis are currently not distinguishable from the REVIVE-TOGETHER data alone.

*4. Anti-inflammatory and NF-$kappa$B suppression:* Multiple SSRIs show NF-$kappa$B inhibition in cell models, reducing downstream production of IL-6, TNF-$alpha$, and IL-1$beta$. Whether this occurs at therapeutic plasma concentrations in vivo is debated; it may contribute additively to the S1R-mediated UPR suppression.

=== The "Treatment $eq.not$ Mechanism" Epistemological Point
<subsubsec:treatment-ne-mechanism>

The REVIVE-TOGETHER trial has attracted commentary suggesting that fluvoxamine's efficacy implies a psychological or functional component to Long COVID. This inference is logically invalid and must be addressed explicitly.

A drug demonstrating efficacy does not illuminate the mechanism of the disease it treats. Aspirin reduces fever without fever being caused by aspirin deficiency. Statins reduce cardiovascular events without cardiovascular disease being caused by HMG-CoA reductase excess. The relevant question is not "what is this drug approved for?" but "what biological pathway does this drug activate at the dose and in the tissue where the disease pathology resides?"

Fluvoxamine was approved for OCD and depression based on its SERT inhibition. Its sigma-1 receptor affinity, ASM inhibition, CYP1A2 inhibition, and NF-$kappa$B suppression are pharmacological properties of the molecule that exist regardless of its approved indication. A drug's marketing authorisation is a regulatory category, not a mechanistic constraint.

Critically, the "treatment $eq.not$ mechanism" logic cuts symmetrically: the REVIVE-TOGETHER result does *not* confirm the S1R mechanism any more than it confirms a psychogenic mechanism. The trial measured fatigue outcomes, not S1R occupancy, IRE1$alpha$ activity, WASF3 expression, or any other mechanistic endpoint. The result is consistent with S1R agonism, CYP1A2/caffeine pharmacokinetics, ASM inhibition, anti-inflammatory effects, or a combination. The result is provisional evidence that *some* mechanism of fluvoxamine is relevant --- not that the S1R--WASF3 story specifically is confirmed. The S1R hypothesis remains the most mechanistically interesting given the converging evidence (Gordon et al.\ interactome; WASF3/ER stress biology), but mechanistic uncertainty is high. Replication with biomarker endpoints is required before any specific mechanism is claimed.

=== Relevance to ME/CFS: Caveats and Research Agenda
<subsubsec:fluvoxamine-mecfs-relevance>

The REVIVE-TOGETHER population is Long COVID (post-COVID fatigue $≥$90 days), not formally ME/CFS. The overlap is substantial --- many Long COVID patients meet ME/CFS diagnostic criteria --- but the populations are not identical. Three specific gaps limit direct extrapolation:

1. *PEM not assessed*: Post-exertional malaise --- the defining feature of ME/CFS and the most important safety parameter for any intervention --- was not a measured outcome. Whether fluvoxamine affects PEM severity or frequency is unknown. An intervention that reduces resting fatigue while not affecting (or worsening) PEM would have limited value in ME/CFS and could be harmful if it encouraged more activity.

2. *Cognitive outcomes not assessed*: Brain fog, working memory, and processing speed --- major ME/CFS symptoms --- were not captured.

3. *POTS/OI not assessed*: Orthostatic intolerance was not measured; fluvoxamine's cardiovascular effects (dose-dependent prolongation of QTc at higher doses; modest hypotensive effects) would need characterisation in POTS-overlap patients.

#open-question(title: [Fluvoxamine in ME/CFS: Does the Long COVID Signal Translate?])[
The sigma-1 / ER stress / WASF3 mechanistic connection is plausible in ME/CFS. Whether fluvoxamine produces clinically meaningful benefit in patients with formal ME/CFS (ICC or CCC criteria) --- particularly on PEM frequency and severity rather than resting fatigue --- is unknown. A 12-week placebo-controlled crossover trial measuring: (a) FSS, (b) PEM frequency/severity (DSQ-PEM), (c) cognitive performance (digit span, processing speed), and (d) WASF3 expression in PBMCs at baseline and follow-up would directly address the translation question and simultaneously test the mechanistic hypothesis.
] <oq:fluvoxamine-mecfs>

#open-question(title: [S1R Agonist Selectivity: Should We Prefer High-S1R-Affinity SSRIs?])[
Among SSRIs, fluvoxamine has the highest S1R affinity (Ki $approx$36~nM). Fluoxetine has moderate affinity ($approx$240~nM); paroxetine and sertraline have low affinity. If S1R agonism is the active mechanism, then within-class differences should predict differential efficacy. Does the pattern of SSRI clinical outcomes in post-infectious fatigue match the rank order of S1R affinity? A retrospective analysis of SSRI outcomes in Long COVID registries stratified by S1R affinity rank would test this prediction at low cost.
] <oq:s1r-affinity-selectivity>

#speculation(title: [The S1R--MAM Axis as a Shared Vulnerability in Post-Infectious ME/CFS Subtype])[
ME/CFS onset is strongly post-infectious in the majority of cases. Multiple viruses (EBV, enteroviruses, SARS-CoV-2, HHV-6) converge on ER stress as a shared pathogenic mechanism --- either by directly binding S1R (SARS-CoV-2 Nsp6/Nsp8), by hijacking ER membranes for replication, or by inducing cytokine-driven ER proteotoxic stress. In genetically or constitutionally S1R-vulnerable individuals (lower S1R expression, reduced S1R activity, or higher basal ER stress burden), even modest viral ER stress could permanently dysregulate MAM calcium handling and establish the mitochondrial dysfunction characteristic of ME/CFS.

*Certainty: 0.20* --- Mechanistically coherent but speculative; cross-infectious ER stress convergence established; S1R vulnerability as ME/CFS predisposition is novel and untested.

*Testable predictions:*
- S1R expression is reduced in ME/CFS PBMCs vs.\ healthy controls
- S1R promoter methylation (epigenetic silencing) is elevated in ME/CFS vs.\ controls
- ME/CFS patients show elevated UPR markers (BiP/GRP78, CHOP, spliced XBP-1) in blood or accessible tissue
- S1R genetic variants (expression QTLs) are enriched in ME/CFS GWAS data
- Post-infectious ME/CFS shows higher baseline ER stress markers than healthy controls and post-infectious non-ME/CFS cohorts
] <spec:s1r-mam-vulnerability>

=== Creative Extensions: Where This Leads
<subsubsec:sigma1-extensions>

The sigma-1 / ER stress connection opens several therapeutic and diagnostic avenues that have not been explored in ME/CFS:

*1. Other S1R agonists:* Several non-SSRI S1R agonists exist. Pridopidine (a dopamine stabilizer developed for Huntington's disease) is a highly selective S1R agonist with >100-fold selectivity over other receptors and is in human trials. Igmesine and cutamesine are investigational S1R agonists. Dehydroepiandrosterone (DHEA) has mild S1R agonist activity. Progesterone metabolites (notably allopregnanolone) also show S1R affinity. This creates an interesting hypothesis: DHEA supplementation, which some ME/CFS patients report mild benefit from, could be acting partially through S1R rather than purely androgen receptor mechanisms.

*2. ER proteostasis targeting:* If ER stress is upstream of WASF3, interventions that directly reduce ER stress load --- independent of S1R --- could also reduce WASF3 expression. 4-phenylbutyrate (4-PBA), an FDA-approved ER stress suppressor used in urea cycle disorders, has never been tested in ME/CFS. Tauroursodeoxycholic acid (TUDCA) is a bile acid with ER chaperone activity used in metabolic liver disease; its ER stress-reducing properties make it a low-risk candidate for a ME/CFS pilot trial.

*3. MAM calcium handling and mitochondrial bioenergetics:* S1R sits at MAM contact sites regulating IP3R3-mediated ER-to-mitochondria calcium transfer. Impaired MAM function could reduce mitochondrial matrix calcium, impairing calcium-sensitive dehydrogenase activation (pyruvate dehydrogenase, isocitrate dehydrogenase, $alpha$-ketoglutarate dehydrogenase). This creates a direct bridge from ER stress $arrow.r$ MAM dysfunction $arrow.r$ Krebs cycle suppression $arrow.r$ reduced acetyl-CoA flux --- connecting S1R biology to the metabolomics evidence of hypometabolism in ME/CFS.

*4. TRPM3 intersection:* TRPM3 --- a calcium-permeable TRP channel whose dysfunction has been identified in ME/CFS NK cells --- is also enriched at ER membranes and lipid rafts. Lipid raft composition is regulated in part by ceramide levels, which are controlled by ASM. Fluvoxamine's ASM inhibition would reduce ceramide, alter lipid raft composition, and could affect TRPM3 membrane localization and function. This is highly speculative, but it creates a testable connection: does fluvoxamine restore TRPM3 function in ME/CFS NK cells ex vivo?

*5. The CYP1A2 paradox as a research tool:* The caffeine confound in REVIVE-TOGETHER, while a methodological limitation, also provides an opportunity. Melatonin is a high-affinity CYP1A2 substrate; fluvoxamine substantially increases melatonin half-life and plasma levels. If any component of fluvoxamine's benefit operates through enhanced melatonin bioavailability (circadian normalization, antioxidant activity, mitochondrial protection), this is testable by comparing exogenous slow-release melatonin vs.\ fluvoxamine vs.\ combination in a ME/CFS fatigue trial --- with caffeine and melatonin metabolite levels measured prospectively.

#speculation(title: [DHEA--S1R Agonism: Mechanism Behind a Common Empirical Report])[
Low-dose DHEA supplementation is commonly reported by ME/CFS patients to modestly improve energy and cognitive function. The standard interpretation invokes androgen receptor signaling or adrenal axis support. An alternative mechanism: DHEA and its sulphate DHEA-S have documented S1R agonist activity. If S1R agonism is the active mechanism of fluvoxamine's Long COVID benefit, DHEA's reported ME/CFS benefit may reflect the same upstream pathway at lower potency.

*Certainty: 0.20* --- DHEA S1R agonism is established pharmacologically; clinical benefit in ME/CFS is anecdotal/case-series level; the mechanistic connection to S1R rather than androgen receptor is untested.

*Testable predictions:*
- DHEA-S levels correlate with UPR marker levels (BiP, CHOP) inversely in ME/CFS cohorts
- Ex vivo DHEA addition reduces ER stress markers in ME/CFS PBMCs comparably to fluvoxamine at equimolar S1R occupancy
- Supplementation benefit correlates with S1R occupancy (estimated from DHEA-S levels + S1R Ki) more than with androgen receptor activation markers
- S1R-selective agonist (pridopidine) produces comparable benefit to high-dose DHEA in a crossover pilot
] <spec:dhea-s1r>

#open-question(title: [4-PBA and TUDCA in ME/CFS: Testing ER Stress Reduction Independent of S1R])[
If ER stress drives WASF3 upregulation and ME/CFS mitochondrial dysfunction, direct ER stress suppressors that do not require S1R (4-phenylbutyrate, TUDCA, arimoclomol) should produce comparable or greater benefit than S1R agonism. 4-PBA is FDA-approved (urea cycle disorders) with known human safety. TUDCA is available OTC. Neither has been tested in ME/CFS. A 3-arm pilot (4-PBA vs.\ TUDCA vs.\ placebo) measuring WASF3 expression, UPR markers, and FSS would simultaneously test the ER stress hypothesis and screen two low-risk candidates for a larger trial.
] <oq:er-stress-drugs-mecfs>

#speculation(title: [Fluvoxamine + Low-Dose Lithium: Complementary IP3R Axis Modulation])[
*Certainty: 0.25.* The newly characterized Li#super[+] → IMPase → IP3 axis and the S1R → IP3R3 → MAM axis operate on the same IP3R system from different angles (@spec:low-dose-lithium, @subsubsec:sigma1-mechanism). Li#super[+] reduces IP3R amplification by disrupting the NCS-1/InsP3R1 interaction and slowing PIP#sub[2] resynthesis @schlecker2006ncs1 @saha2023impa1. Fluvoxamine via S1R agonism stabilises IP3R3 specifically at MAM sites, preserving the ER-to-mitochondria calcium transfer that mitochondria require for OXPHOS regulation.

A theoretical combination effect: Li#super[+] dampens pathological IP3R-mediated bulk ER Ca#super[2+] release (reducing excitotoxic and autoantibody-driven calcium signaling), while fluvoxamine preserves the specific, spatially restricted IP3R3/MAM calcium transfer that supports mitochondrial function. Net: reduced pathological calcium signaling with preserved mitochondrial calcium supply.

*Falsifiable prediction.* In iPSC-derived neurons treated with muscarinic agonist (modeling autoantibody activation): Li#super[+] alone reduces both cytosolic Ca#super[2+] transients and mitochondrial Ca#super[2+] uptake; Li#super[+] + fluvoxamine reduces cytosolic transients but preserves mitochondrial Ca#super[2+] uptake via S1R-stabilized IP3R3.

_Not a clinical recommendation._ No human data exist for this combination. The interaction between lithium and fluvoxamine also raises potential serotonin syndrome risk at initiation; SSRIs are listed as a caution in the lithium drug-interaction box (@spec:low-dose-lithium). Medical supervision required.

(Certainty: 0.25 — each mechanism is independently supported; the combination effect is mechanistic inference; no direct evidence for synergy. Not yet replicated.)
] <spec:fluvoxamine-lithium-ip3r>

#warning-env(title: [Fluvoxamine: Drug Interactions, Monitoring, and Dosing in ME/CFS Context])[
*Off-label status:* Fluvoxamine is approved for OCD and depression. Use for ME/CFS or Long COVID fatigue is off-label; evidence is limited to the REVIVE-TOGETHER Long COVID trial. No ME/CFS-specific trial data exist. Prescriber guidance and informed consent are required.

*Time to response:* In REVIVE-TOGETHER, benefit was apparent at day 30 and maximal at day 90 (30 days after stopping). Whether a trial period shorter than 8--12 weeks would be sufficient to assess response in ME/CFS is unknown.

*Starting dose in severe/very-severe ME/CFS:* The REVIVE-TOGETHER dose was 100~mg BID (standard antidepressant dose). No dose-escalation data exist for ME/CFS patients. For bedbound or very severe patients, initiation at 25~mg once daily (evening) with slow uptitration is prudent given general ME/CFS sensitivity to pharmacological agents. A conservative suggested schedule (not validated by any trial): 25~mg evenings for 2 weeks, then 50~mg evenings for 2 weeks, then 50~mg BID for 2 weeks, then assess response before continuing uptitration. The full 100~mg BID REVIVE-TOGETHER dose may not be achievable in all severe patients; response at lower doses has not been assessed.

*CYP1A2 drug interactions --- critical in ME/CFS polypharmacy:* Fluvoxamine is the most potent CYP1A2 inhibitor among SSRIs and markedly increases plasma concentrations of all CYP1A2 substrates. Relevant ME/CFS co-medications affected:

- *Melatonin*: CYP1A2 substrate; plasma levels may increase 5--17× --- increased sedation, potential hypotensive effects; monitor melatonin dose and timing
- *Duloxetine* (sometimes used for pain/fatigue): partial CYP1A2 substrate; plasma levels increase; monitor for serotonin syndrome symptoms (see below)
- *Clozapine / olanzapine*: CYP1A2 substrates with narrow therapeutic windows; dose reduction required if co-prescribed; consult psychiatry
- *Theophylline*: CYP1A2 substrate; not typically ME/CFS-specific but co-prescription requires dose reduction

*CYP1A2 and caffeine:* Habitual caffeine intake has a dramatically extended half-life ($approx$5~h $arrow.r$ $approx$30~h) during fluvoxamine therapy. Patients should be counselled to reduce or eliminate caffeine intake at initiation to avoid caffeine toxicity (tachycardia, anxiety, insomnia) that could be misattributed to disease worsening.

*CYP2C19 drug interactions --- additional interaction network:* Fluvoxamine is also a potent CYP2C19 inhibitor. CYP2C19 substrates of clinical relevance include:

- *Omeprazole / esomeprazole / pantoprazole* (proton pump inhibitors): plasma levels increase substantially; generally not harmful but a relevant interaction in patients on long-term PPIs
- *Clopidogrel*: CYP2C19 converts clopidogrel to its active metabolite; fluvoxamine inhibition reduces antiplatelet efficacy --- clinically significant if clopidogrel is prescribed for cardiovascular indication
- *Diazepam and some benzodiazepines*: CYP2C19 substrates; plasma levels increase; sedation may be prolonged
- *Phenytoin*: CYP2C19 substrate with narrow therapeutic index; consult neurology if co-prescribed
- *Voriconazole*: CYP2C19 substrate; antifungal levels increase; toxicity risk

*Serotonin syndrome risk:* Fluvoxamine's SERT inhibition creates a serotonin syndrome risk when combined with other serotonergic agents (MAOIs, triptans, tramadol, high-dose tryptophan, methylene blue, linezolid, mirtazapine, St. John's Wort). Concurrent SSRI or SNRI use requires dose adjustment or substitution. Serotonin syndrome presents as hyperthermia, clonus, agitation, and autonomic instability --- symptoms that overlap with ME/CFS and PEM in some presentations. Clinical vigilance is required: a new cluster of neurological or autonomic symptoms after starting fluvoxamine requires differentiation from serotonin syndrome and should not be attributed to PEM without ruling out serotonin toxicity.

*POTS and hypotension:* Fluvoxamine can cause mild orthostatic hypotension, particularly at initiation. In ME/CFS patients with pre-existing POTS or orthostatic intolerance, this is clinically significant: fluvoxamine may worsen orthostatic symptoms, especially in volume-depleted patients. Baseline and follow-up orthostatic testing is advisable. Some patients with serotonin-related vasoconstriction may experience paradoxical improvement in OI; the net effect is unpredictable without individual monitoring.

*QTc monitoring:* Fluvoxamine at therapeutic doses (100~mg BID) carries low QTc prolongation risk compared with other SSRIs (citalopram/escitalopram have higher QTc risk). However, in ME/CFS patients with established POTS or cardiovascular comorbidities, a baseline and follow-up ECG is advisable.

*Stopping criteria:* Discontinue if: (a) PEM frequency or severity worsens, (b) clear worsening of autonomic symptoms, (c) QTc prolongation >60~ms from baseline or absolute QTc >500~ms, (d) signs of serotonin syndrome.

*Discontinuation:* Gradual taper on cessation (e.g.\ 25% dose reduction every 1--2 weeks) to avoid SSRI discontinuation syndrome (flu-like symptoms, paresthesias, dizziness) which could be misinterpreted as ME/CFS relapse.
]

*Evidence Grade*: C (Long COVID RCT) / E (ME/CFS) --- REVIVE-TOGETHER provides strong Bayesian evidence in Long COVID fatigue; S1R--WASF3 mechanistic connection is hypothesis-level; no ME/CFS trial data exist; sigma-1 agonism across the class (fluvoxamine, pridopidine, DHEA) warrants systematic investigation


== Inspiratory Muscle Training (IMT)
<sec:imt-mecfs>

Inspiratory muscle training — systematic resistance training of the diaphragm and accessory inspiratory muscles — has been piloted in ME/CFS as a potentially PEM-safe form of targeted physical training.

=== Mechanism
<subsubsec:imt-mechanism>

The rationale for IMT in ME/CFS is distinct from general exercise rehabilitation. Rather than increasing total cardiovascular load (which risks PEM), IMT targets a specific muscle group with direct physiological relevance:

    - *Autonomic modulation*: Inspiratory muscles project afferent signals to brainstem autonomic centres; strengthening these muscles may improve autonomic tone, particularly parasympathetic activity and heart rate variability — both impaired in ME/CFS
    - *Venous return*: Diaphragmatic contraction generates the thoracic pressure gradient that drives venous return to the right heart; stronger diaphragmatic function may partially compensate for the preload failure documented in ME/CFS @Joseph2022pyridostigmine
    - *Dysfunctional breathing correction*: 42.1% of ME/CFS patients show dysfunctional breathing patterns and 32% exhibit hyperventilation @vanDixhoorn2025; IMT may reduce reliance on accessory muscles (which consume 3× more energy than the diaphragm) and stabilize breathing mechanics

=== Clinical Evidence

Edgell et al.\ (2025) @Edgell2025imt conducted a pilot RCT (NCT05196529) of 8 weeks of IMT in ME/CFS and PASC patients. Key design decision: training increased breathing frequency (shortened intervals between breaths) rather than increasing inspiratory pressure — specifically to avoid the high-effort muscle loading that could trigger PEM in ME/CFS.

Results in ME/CFS patients ($n$ = 12):

    - *Improved*: Inspiratory muscle pressure, 6-minute walk distance, resting heart rate, heart rate variability, sleep-related symptoms
    - *Additionally improved in ME/CFS (not controls)*: Vascular function, secretomotor function, total COMPASS-31 autonomic score, pain-related symptoms

The improvement in vascular function and overall autonomic score beyond the general improvements seen in controls suggests a disease-specific therapeutic effect, not simply a conditioning response. No participant experienced a clinically significant worsening or PEM exacerbation during the trial.

=== Caveats

    - *Pilot scale*: $n$ = 12 ME/CFS. No sham comparator; all groups knew their assignment
    - *Mechanism uncertain*: Whether benefit operates through autonomic improvement, venous return, or breathing pattern normalization is not established
    - *Individual variation*: Some patients are likely to be high-responders (those with significant dysfunctional breathing component) while others may see limited benefit
    - *Protocol specificity*: The low-intensity protocol used here cannot be assumed equivalent to conventional IMT protocols used in cardiac or pulmonary rehabilitation

*Evidence grade*: C (pilot RCT, positive signal, not powered for efficacy conclusions). Warrants a definitive multi-centre trial with stratification by dysfunctional breathing status.

== Carotid Body Sensitisation and P2X3 Antagonism
<sec:carotid-body-mecfs>

The carotid body — a small chemoreceptive organ at the carotid bifurcation — detects arterial O#sub[2], CO#sub[2], and pH, transmitting signals via the glossopharyngeal nerve to the brainstem respiratory centre. Carotid body sensitization has been proposed as a contributor to Long COVID symptoms and potentially ME/CFS.

=== Evidence for Carotid Body Dysregulation

El-Medany et al.\ (2024) @ElMedany2024carotid measured hypoxic ventilatory response (HVR) — a direct index of carotid body chemoreflex sensitivity — in 14 non-hospitalised Long COVID patients vs.\ 14 matched controls:

    - *HVR*: Long COVID −0.44 ± 0.23 L/min/SpO#sub[2]% vs.\ controls −0.17 ± 0.13 L/min/SpO#sub[2]% ($p$ = 0.0007) — carotid chemoreflex sensitivity 145% higher in Long COVID
    - *VE/VCO#sub[2] slope*: 37.8 ± 4.4 vs.\ 27.7 ± 4.8 ($p$ = 0.0003)
    - *Correlation*: HVR correlated with VE/VCO#sub[2] slope ($r$ = −0.53, $p$ = 0.004)

The proposed mechanism: SARS-CoV-2 enters carotid body glomus cells via their ACE2 receptor abundance, directly sensitising the chemoreflex. Sensitised carotid bodies generate exaggerated respiratory responses to mild hypoxia and hypercapnia, contributing to dysfunctional breathing, breathlessness, and the ventilatory inefficiency documented on CPET. Orthostatic CO#sub[2] falls documented in ME/CFS — PETCO#sub[2] dropping to 26–30 mmHg during tilt testing vs.\ 36 mmHg in controls @VanCampen2023co2cbf — may partly reflect carotid body-driven respiratory overcompensation rather than primary hyperventilation.

=== Therapeutic Target: P2X3 Antagonism

P2X3 receptors are expressed in carotid body afferent fibers and modulate chemoreflex sensitivity. *Gefapixant*, a P2X3/P2X2/3 antagonist already approved in some markets for refractory chronic cough, has been proposed as a pharmacological target to reduce carotid body sensitization @ElMedany2024carotid. No trial has tested gefapixant in ME/CFS or Long COVID at the time of writing.

#speculation(title: [Carotid Body Sensitisation as a Reversible Amplifier of Orthostatic Intolerance in ME/CFS])[
If carotid body sensitization occurs in ME/CFS (by analogy with Long COVID), it would function as a reversible physiological amplifier: normal mild orthostatic hypoxia and CO#sub[2] changes trigger exaggerated hyperventilation, orthostatic hypocapnia falls further, cerebral vasoconstriction worsens @VanCampen2023co2cbf, and cognitive symptoms and OI are amplified beyond what the underlying cardiac preload failure alone would produce.

_Certainty: 0.25._ The Long COVID carotid body sensitization data are from a small study ($n$ = 14) and have not been replicated in ME/CFS specifically. The mechanistic plausibility is high given: (1) shared post-viral triggers, (2) documented orthostatic hypocapnia in ME/CFS, (3) ACE2 expression in carotid body.

*Falsifiable predictions:*
    + ME/CFS patients should show elevated HVR (≥145% of healthy controls) on hypoxic ventilatory challenge
    + HVR should correlate with orthostatic PETCO#sub[2] fall and symptom severity during tilt testing
    + Gefapixant (or equivalent P2X3 antagonist) should attenuate orthostatic hypocapnia and reduce cognitive OI symptoms in an n-of-1 crossover trial

*Treatment implication:* If confirmed, carotid body sensitization is a plausible target for gefapixant — a drug already approved, with known safety profile, that could be tested rapidly. It would not be expected to address the primary vascular or mitochondrial pathology but could reduce a significant symptom amplifier.
] <spec:carotid-body-mecfs>

*Evidence grade*: E (no ME/CFS data); D (Long COVID proof-of-concept study only). Research priority: replicate carotid body sensitivity measurement in ME/CFS cohorts.

== Mitophagy-Targeting Interventions: Metformin and Urolithin A
<sec:mitophagy-targeting-mecfs>

PHB2 (prohibitin 2), a mitochondrial inner-membrane scaffold protein and mitophagy receptor, has been implicated in ME/CFS epigenetics through the Chalder-Moreau 2026 study, which identified sex-differential PHB2 regulation associated with impaired miR-153-3p maturation @ChalderMoreau2026ptprn2. PHB2's established role in PINK1/Parkin-mediated mitophagy @QiLamont2023phb2cancer — the primary quality-control mechanism eliminating damaged mitochondria — raises the possibility that PHB2 dysfunction simultaneously causes both the miRNA defect (cognitive phenotype) and mitochondrial quality-control failure (energy phenotype). This positions PHB2 as a potentially parsimonious upstream node in ME/CFS pathophysiology, linking the well-established mitochondrial dysfunction (Chapter @ch:energy-metabolism) to the emerging epigenetic evidence (Chapter @ch:genetics-epigenetics).

Two agents can engage this pathway at different levels and with distinct safety profiles.

=== Low-Dose Metformin as AMPK-Mediated Mitophagy Activator

Metformin inhibits complex I of the mitochondrial electron transport chain, activating AMPK as a cellular energy sensor. AMPK phosphorylates ULK1, initiating the autophagy/mitophagy cascade. At standard diabetic doses (1500-2000 mg/day), this produces measurable metabolic effects; at low doses (250-500 mg/day), the mitophagy-stimulating effect may be accessible without glycemic side effects.

Metformin has attracted attention in ME/CFS-adjacent conditions: a prospective COVID-19 trial (Bramante et al., 2023) found metformin reduced Long COVID incidence by approximately 41% when given during acute infection, suggesting mitophagy or mitochondrial protection as a preventative mechanism. Preclinical evidence also documents neuroprotection in Alzheimer's and Parkinson's disease models sharing miR-153-3p targets with ME/CFS (BDNF, APP, SNCA).

#speculation(title: [Low-Dose Metformin as PHB2-Axis Mitophagy Activator in ME/CFS])[
  If PHB2 dysfunction impairs mitophagy in ME/CFS, low-dose metformin (250-500 mg/day) could partially compensate by AMPK-mediated activation of the ULK1 mitophagy pathway, reducing the accumulation of damaged mitochondria that drives ROS, energy failure, and sensory neuron activation. The cognitive-specific benefit predicted from the miR-153-3p pathway would require additional mechanisms (possibly via improved mitochondrial quality in neurons).

  Testable design: 12-week pilot, metformin 500 mg/day vs placebo in ME/CFS (n ≥ 40), primary endpoints: delayed recognition memory (Rey AVLT, Logical Memory II) and FUNCAP. Mechanistic secondaries: PBMC mitophagy flux (mt-Keima or LC3-II/p62 ratio), blood miR-153-3p. A negative trial would indicate metformin does not access the PHB2 axis at safe doses.

  (Certainty: 0.28 — biologically motivated, single indirect connection through PHB2 mechanism; no ME/CFS trial data exist. Not a clinical recommendation; research-stage hypothesis.)
] <spec:metformin-phb2-mecfs>

#practical-warning(title: [Metformin: ME/CFS-Specific Considerations])[
  Standard metformin contraindications apply: renal impairment (eGFR < 30 mL/min/1.73m²), hepatic failure, contrast imaging procedures, alcohol excess. In ME/CFS, additional considerations: (1) gastrointestinal intolerance (nausea, diarrhea) is dose-dependent — extended-release formulation at bedtime reduces GI burden; (2) metformin reduces B12 absorption over time — monitor B12 annually and supplement if needed; (3) metformin can reduce blood lactate clearance — theoretically relevant if ME/CFS involves lactate handling abnormalities post-exercise; monitor for exercise-related symptom change. Starting dose: 250 mg with evening meal for 2 weeks before any increase. No human dosing data for mitophagy endpoints in ME/CFS exist; flag as research-stage. Obtain prescriber supervision.
]

=== Urolithin A as Direct PHB2-Dependent Mitophagy Activator

Urolithin A is a gut microbiome metabolite derived from ellagitannins (found in pomegranates, walnuts, red wine). It is the first natural compound shown in a randomized controlled trial to induce mitophagy in humans via a PHB2-dependent mechanism: Ryu et al.\ (2016) demonstrated in _C. elegans_ and mammalian cells that urolithin A induces mitophagy specifically through a PHB2-mediated pathway @QiLamont2023phb2cancer; Andreux et al.\ (2019) demonstrated in a Phase 1 human RCT (n=60, elderly) that urolithin A 500 mg/day for 4 weeks improved mitochondrial gene expression in skeletal muscle and was well-tolerated.

Urolithin A is commercially available as a supplement (Mitopure®, Timeline Nutrition) and as a generic powder, circumventing the drug development timeline. The mitochondrial muscle endpoint studied in elderly humans (muscle endurance, mitochondrial gene expression) aligns with ME/CFS-relevant outcomes.

#warning-env(title: [ME/CFS Gut Microbiome Caveat: Urolithin A Conversion])[
  Urolithin A is produced from dietary ellagitannins by specific gut bacteria, primarily _Gordonibacter urolithinfaciens_ and _Ellagibacter isourolithinifaciens_. A substantial fraction of the general population — estimated at 30-40% — lack these bacteria and produce negligible urolithin A from dietary ellagitannins. In ME/CFS, where gut dysbiosis is common (Chapter @ch:gut-microbiome), the proportion of "non-converters" may be even higher. Supplement-form urolithin A (Mitopure®) bypasses this bottleneck by providing the active compound directly; dietary ellagitannin approaches (pomegranate juice) are unreliable without knowing conversion status.
]

#speculation(title: [Urolithin A as PHB2-Targeted Mitophagy Supplement in ME/CFS])[
  If PHB2 dysfunction is upstream of ME/CFS mitochondrial quality control failure, supplemental urolithin A at 500 mg/day — a dose shown effective in the only published human mitophagy RCT — is the most direct available intervention for the proposed PHB2 mechanism. Unlike metformin, urolithin A acts via a pathway specifically established to require PHB2, making the mechanistic connection more specific.

  Testable design: 16-week RCT, urolithin A 500 mg/day vs placebo in ME/CFS (n ≥ 50), primary endpoints: handgrip endurance, post-exertional recovery time (actigraphy-measured). Mechanistic secondary: PBMC mitophagy flux. Cognitive secondary: delayed recognition memory test. Starting dose: 250 mg/day for 2 weeks before advancing to 500 mg to assess tolerability.

  (Certainty: 0.30 — urolithin A PHB2 pathway established in non-ME/CFS systems; ME/CFS application is extrapolated. Research-stage only; not a clinical recommendation.)
] <spec:urolithin-a-phb2-mecfs>

== Neurosteroid Axis Interventions
<sec:neurosteroid-axis-mecfs>

The pregnancy-improvement signal in ME/CFS (@Schacterle2004pregnancy; approximately 30% of patients improve during gestation) motivates a series of related pharmacological hypotheses centered on the progesterone–allopregnanolone–GABA-A axis. These are distinct from the primary bridge-therapy hypothesis introduced in @spec:micronized-progesterone-bridge (Chapter @ch:epidemiology-outcomes); this section covers dosing schedule optimization, oral neurosteroid analogs, upstream precursors, and combination approaches that extend that hypothesis.

#warning-env(title: [Research-Stage Section: No ME/CFS Trial Data Exist])[
Every pharmacological idea in this section is research-stage only. The progesterone–neurosteroid axis has not been evaluated in any controlled trial in ME/CFS. All mechanistic rationales are built on indirect evidence chains (pregnancy immunology, postpartum depression trials, preclinical pharmacology). These are not clinical recommendations.

Women with a history of thromboembolic disease, hormone-sensitive cancers, unexplained vaginal bleeding, or severe hepatic dysfunction should not receive progesterone-based interventions. All interventions require specialist supervision (reproductive endocrinology or gynecology).
]

=== Cycle-Synchronized Oral Micronized Progesterone
<subsec:cycle-synchronized-progesterone>

The main bridge-therapy speculation (@spec:micronized-progesterone-bridge) describes continuous or broadly cyclic progesterone dosing. A more targeted refinement: synchronize progesterone administration to the patient's existing luteal phase rather than applying a fixed calendar schedule.

#speculation(title: [Cycle-Synchronized Luteal-Phase Progesterone as a Precision Dosing Strategy])[
*Certainty: 0.30.* Continuous oral progesterone downregulates progesterone receptors, abolishing neurosteroid and neuroprotective gene expression profiles in animal models @Zhao2012continuousProgesterone. Arbitrary cyclic schedules (e.g., days 15–28 of a calendar month) may misalign with the patient's actual ovulatory cycle. A more pharmacologically rational approach would synchronize administration with the patient's documented luteal phase: begin oral micronized progesterone at confirmed ovulation (LH surge) and continue for 10–14 days, followed by complete cessation.

Rationale: allopregnanolone produced from oral micronized progesterone @AndreenBackstrom2006pharmacokinetics exhibits a biphasic GABA-A dose-response — low concentrations paradoxically worsen anxiety, whereas concentrations above a threshold produce tonic inhibition analogous to the pregnancy milieu @AndreenBackstrom2009negMood. Synchronized luteal-phase dosing aims to reach and maintain suprathreshold concentrations during the phase when the patient's existing hormonal environment is most permissive.

*Testable predictions:*
- In a crossover trial, luteal-phase-synchronized oral micronized progesterone 200 mg nightly will reduce PSQI scores more than a fixed calendar schedule (days 15–28) in women with documented cycle-phase symptom worsening
- Allopregnanolone serum concentrations will be higher and more stable in the synchronized arm

*Safety note:* Requires LH testing (urine OPK or serum) to confirm ovulation timing; patients with anovulatory cycles cannot use this protocol. Monitoring for paradoxical anxiety worsening is mandatory across the first two cycles.
] <spec:cycle-synchronized-progesterone>

=== PPD Trial Methodology as a Template for ME/CFS Research
<subsec:ppd-methodology-transfer>

The postpartum depression (PPD) allopregnanolone replacement trials established a methodological template directly relevant to postpartum-onset ME/CFS.

#speculation(title: [Postpartum-Onset ME/CFS as a Neurosteroid Withdrawal Subtype Amenable to Trial Methodology from PPD Research])[
*Certainty: 0.30.* The brexanolone (IV synthetic allopregnanolone, Lancet phase 3 RCTs, $n = 246$) @MeltzerBrody2018brexanolone and oral neurosteroid analog (zuranolone, 14-day course) PPD trials validated rapid-onset endpoints, allopregnanolone dose-response characterization, and patient selection by postpartum timing. These trial design elements are directly transferable to a postpartum ME/CFS cohort given that: (1) postpartum-onset ME/CFS shares the allopregnanolone withdrawal trigger (@spec:allopregnanolone-postpartum), (2) the same 60-hour IV and 14-day oral endpoints could be adapted for ME/CFS fatigue scales rather than depression rating scales, and (3) postpartum timing provides a natural inclusion criterion that enriches for the neurosteroid-withdrawal mechanism.

A 14-day oral neurosteroid analog pulse in postpartum-onset ME/CFS (within 12 months of delivery) represents the highest-feasibility trial design for the neurosteroid hypothesis: it targets the subgroup most likely to have the mechanism, uses an approved drug with established safety data, and requires a short observation window.

*Testable prediction:* A 14-day oral neurosteroid pulse in postpartum-onset ME/CFS within 12 months of delivery will produce ≥ 30% reduction in DSQ-PEM score at day 28, at a rate exceeding non-postpartum-onset ME/CFS controls receiving the same protocol.

*Limitations:* PPD endpoints (Hamilton Depression Rating Scale change) are not validated for ME/CFS fatigue; trial design adaptation requires ME/CFS outcome validation work first. The IV brexanolone proof of concept does not translate directly to oral chronic dosing in a different condition.
] <spec:ppd-methodology-transfer>

=== Upstream Neurosteroid Precursors
<subsec:neurosteroid-precursors>

Two upstream precursors to the allopregnanolone pathway warrant investigation as lower-risk alternatives to direct progesterone administration.

#speculation(title: [Pregnenolone as a Substrate-Level Approach to Neurosteroid Enhancement])[
*Certainty: 0.25.* Pregnenolone is the direct upstream precursor of both progesterone and allopregnanolone (and DHEA). As an over-the-counter supplement in many jurisdictions, it offers a lower hormonal side-effect profile than micronized progesterone while providing substrate for endogenous neurosteroid synthesis. The approach depends on intact downstream 5α-reductase and 3α-HSD activity.

Potential advantage over progesterone: the body distributes pregnenolone across multiple downstream pathways according to enzymatic capacity and hormonal milieu, potentially avoiding the supraphysiological progesterone concentrations that carry thromboembolic and breast-cancer risks with long-term use.

*Testable prediction:* Pregnenolone 50–500 mg/day × 8 weeks will increase serum allopregnanolone in ME/CFS women; response will correlate with baseline 5α-reductase activity as proxied by the 5α/5β androgen metabolite ratio in urine.

*Safety note:* Pregnenolone can shift downstream toward androgenic metabolites in some individuals (acne, hirsutism, DHEA-mediated androgenization). Monitor accordingly. Contraindicated with hormone-sensitive conditions.
] <spec:pregnenolone-mecfs>

#speculation(title: [DHEA-S-Stratified Supplementation in ME/CFS])[
*Certainty: 0.25.* A subset of ME/CFS patients show low dehydroepiandrosterone sulfate (DHEA-S) relative to age-matched controls. DHEA is a precursor to both androgens and estrogens and modulates neurosteroid balance indirectly. Stratified supplementation — restricted to patients with baseline DHEA-S below the age-adjusted 25th percentile — avoids the primary failure mode of untargeted hormonal supplementation in ME/CFS (overtreatment of patients with normal or elevated baseline).

*Testable prediction:* ME/CFS patients with baseline DHEA-S below the age-adjusted 25th percentile will show greater improvement in FUNCAP score on DHEA 25–50 mg/day × 12 weeks than those with baseline-normal DHEA-S (expected effect size difference > 0.3 SD).

*Safety note:* Monitor DHEA-S, testosterone, and estradiol levels at 4 and 12 weeks. Androgenic side effects (acne, hair changes) may require dose reduction. Not for use in patients with hormone-sensitive cancers.
] <spec:dhea-s-stratified>

=== Severity-Tiered Neurosteroid Bridge Protocol
<subsec:severity-tiered-neurosteroid>

For patients and clinicians considering neurosteroid-axis interventions, an evidence-stratified severity tiering reduces intervention burden and minimizes harm in those least able to tolerate side effects.

#speculation(title: [Severity-Tiered Approach to Neurosteroid Axis Interventions])[
*Certainty: 0.30 (as a protocol design principle).* Given that progesterone-based interventions carry non-trivial risks (sedation, thromboembolic, mood dysregulation) and require gynecological monitoring infrastructure, the appropriate intervention scales with functional capacity and access to supervision.

Proposed tiers (research-stage, not clinical recommendation):

*Mild (FUNCAP ≥ 60):* Magnesium glycinate (400 mg/day) + pyridoxal-5-phosphate (50 mg/day, luteal phase only) (@subsec:cycle-synced-pacing); track cycle-phase symptoms for three cycles; consider pregnenolone (50 mg/day luteal-only) trial if luteal worsening replicates. Specialist assessment is still advisable for any chronic supplementation; this tier does not involve prescription hormones.

*Moderate (FUNCAP 30–60):* Above, plus: biomarker pre-screening (serum allopregnanolone and progesterone at cycle days 7 and 21; assess conversion capacity); if conversion capacity confirmed adequate, luteal-phase oral micronized progesterone trial (100 mg nightly for 10–14 days per cycle) under gynecologist supervision; start low and titrate over 2–3 cycles.

*Severe (FUNCAP < 30):* Bedside-deliverable only. Oral progesterone at home requires a clinician available for remote monitoring — not currently standard of care. IV neurosteroid analogs (brexanolone) are contraindicated by the hospitalization requirement, which is incompatible with severe ME/CFS environmental sensitivities. At this tier, the neurosteroid axis hypothesis is a *research priority* rather than a clinical option.

*Falsifiable prediction:* In a factorial trial, patients assigned to the severity-appropriate tier will show higher response rates than patients assigned to a uniform protocol ignoring functional capacity.

*Limitation:* FUNCAP thresholds are illustrative; validated cut-points for intervention selection do not yet exist in ME/CFS.
] <spec:severity-tiered-neurosteroid>

=== Oral Neurosteroid Analogs: Ganaxolone and Zuranolone
<subsec:oral-neurosteroid-analogs>

Two FDA-approved oral neurosteroid analogs avoid the hormonal side effects of progesterone while delivering GABA-A neurosteroid signaling.

#speculation(title: [Ganaxolone as a Hormonally Inert Oral Allopregnanolone Analog])[
*Certainty: 0.20.* Ganaxolone (approved for CDKL5 deficiency disorder) is an oral allopregnanolone analog with a 3β-methyl substitution that prevents back-conversion to progesterone, eliminating hormonal activity. It is a positive allosteric modulator of both synaptic and extrasynaptic GABA-A receptors, with selectivity for the α4βδ extrasynaptic subtype at low concentrations.

If the allopregnanolone route accounts for the HPA-calming, sleep-improving, and anti-inflammatory effects proposed in @spec:micronized-progesterone-bridge, ganaxolone would deliver those effects without progesterone receptor activation — removing the hormonal risks (thromboembolic, endometrial, breast) and the requirement for intact 5α-reductase conversion. Access is the primary barrier: ganaxolone is not approved for ME/CFS, carries significant off-label prescribing barriers, and is expensive.

*Testable prediction:* Ganaxolone 600–1800 mg/day × 4 weeks will improve PSQI sleep score and reduce PEM frequency in ME/CFS patients with documented low baseline allopregnanolone; patients with normal baseline allopregnanolone will show no effect.

*Limitation:* No ME/CFS data; approved only for a pediatric epilepsy syndrome; access outside clinical trials is very limited.
] <spec:ganaxolone-mecfs>

#speculation(title: [Zuranolone Pulse Therapy in Postpartum-Onset ME/CFS])[
*Certainty: 0.25 (postpartum-onset subgroup); lower in non-postpartum onset.* Zuranolone (Zurzuvae) is an FDA-approved oral neurosteroid positive allosteric GABA-A modulator, indicated as a 14-day once-daily course for postpartum depression. It is structurally related to brexanolone @MeltzerBrody2018brexanolone but orally bioavailable, with a short-course design that avoids receptor downregulation concerns.

The postpartum-onset ME/CFS subgroup — where abrupt neurosteroid withdrawal after delivery may trigger or worsen the disease (@spec:allopregnanolone-postpartum) — is the highest-prior-probability target for a zuranolone pulse trial. The 14-day course design maps naturally to a postpartum window of treatment and avoids chronic dosing pitfalls.

*Testable prediction:* A 14-day zuranolone course (50 mg/day) in postpartum-onset ME/CFS within 12 months of delivery will produce > 30% reduction in DSQ-PEM at day 28, with sustained effect at day 90.

*Limitation:* Zuranolone causes sedation (usually favorable in ME/CFS but impairs daytime function), dizziness, and falls risk; driving should be avoided during treatment. No ME/CFS data. Effect may not generalize to non-postpartum onset.
] <spec:zuranolone-mecfs>

=== Cross-Disease Cautionary Lesson: TBI Progesterone Trials
<subsec:tbi-progesterone-lesson>

#warning-env(title: [Translational Failure Lesson: Progesterone in Traumatic Brain Injury])[
Multiple large phase 3 trials of progesterone in traumatic brain injury (TBI) — PROTECT III and SYNAPSE — failed despite strong preclinical evidence and compelling early-phase signals. Progesterone demonstrated neuroprotection in rodent TBI models, and phase 2 trials showed promising survival and functional recovery signals. Both phase 3 trials (each enrolling hundreds of patients) found no benefit over placebo.

The ME/CFS community should note several methodological lessons from this failure:

- *Translation from animal models is unreliable at the best of times.* Progesterone's preclinical benefits were robust and replicated; they did not translate. Any ME/CFS preclinical or indirect mechanistic evidence for progesterone carries this caveat.
- *Patient heterogeneity matters.* TBI trials enrolled heterogeneous injury severities; ME/CFS trials must stratify by subtype (immune-driven vs. metabolic vs. neurological) to avoid averaging out mechanism-specific responders.
- *Timing and dose may define success.* TBI progesterone failure may reflect wrong timing relative to injury cascade. ME/CFS trials must carefully specify timing (postpartum-onset window, cycle phase) and dose (avoid biphasic zone per @AndreenBackstrom2009negMood).
- *Negative lessons have value.* Documenting this cautionary analogy prevents premature optimism about ME/CFS progesterone trials.

This lesson does not rule out progesterone in ME/CFS — the mechanisms are entirely different (neurosteroid immune modulation vs. neuroprotection) — but it establishes the translational risk as real and documented.
]

=== LDN + Progesterone Combination
<subsec:ldn-progesterone-combination>

#speculation(title: [Low-Dose Naltrexone and Cyclic Micronized Progesterone as a Non-Overlapping Combination])[
*Certainty: 0.20.* Low-dose naltrexone (LDN, 1.5–4.5 mg/day) modulates microglia and TLR4 signaling via the non-opioid LDN mechanism. Oral micronized progesterone operates via GABA-A neurosteroid signaling and PIBF-mediated immune modulation. The mechanisms are pharmacologically non-overlapping: LDN does not meaningfully affect GABA-A or progesterone receptors; progesterone does not affect TLR4 or opioid receptor pathways. This non-overlap raises the hypothesis that the combination could produce additive (not antagonistic) effects in moderate ME/CFS without meaningful pharmacokinetic interaction.

No pharmacokinetic interaction data exist for this combination in any population. Progesterone is hepatically metabolized (CYP enzymes); naltrexone at low doses is also hepatically metabolized but at far lower concentrations. Clinically significant interaction is unlikely but unstudied.

*Testable prediction:* A 2×2 factorial trial (LDN alone vs. cyclic progesterone alone vs. combination vs. placebo) in ME/CFS patients with autoimmune-dominant phenotype will show additive improvement in the combination arm relative to either monotherapy at 12 weeks.

*Limitation:* Factorial trial requires n≥80 per arm for reasonable power; no precedent for this combination; LDN + hormonal therapy in ME/CFS is not yet a clinical pathway.
] <spec:ldn-progesterone-combination>

=== LDN as Shared TLR4 Immunomodulator for Autoimmune-Terrain ME/CFS
<subsec:ldn-autoimmune-terrain>

#speculation(title: [LDN Response Rate Enrichment in ME/CFS Patients with Autoimmune Comorbidities Including Lichen Sclerosus])[

*Certainty: 0.25.* Based on shared TLR4 pathway activity in LDN mechanism, LS, and ME/CFS; no trial has stratified LDN response by autoimmune comorbidity profile. Research-stage hypothesis only. Not yet replicated.

#warning-env(title: [Research-Stage Only])[
This is a research-stage speculation. Low-dose naltrexone is already used off-label in ME/CFS with variable and inconsistent results across trials. This entry does NOT constitute a clinical recommendation to prescribe LDN based on LS comorbidity status. Any LDN trial requires medical supervision, liver function monitoring, and explicit informed consent regarding off-label status.
]

Low-dose naltrexone (LDN, 1.5–4.5 mg/day) reduces TLR4 signaling on microglia and macrophages, attenuates IL-6 and TNF-α production, and may stabilize Treg function — the same dysregulated axis in both lichen sclerosus and ME/CFS @DeLuca2023LS2023Update @Paganelli2025LSCytokines. ME/CFS LDN trials have produced mixed results in heterogeneous cohorts; the poor effect sizes may reflect dilution by non-TLR4-driven ME/CFS subtypes. If the autoimmune-terrain subgroup (identifiable by LS comorbidity, anti-muscarinic autoantibodies, or elevated Th1 cytokines) is specifically enriched for TLR4-axis overactivation, then LDN response rate in this subgroup may substantially exceed the population average.

Anecdotal case series suggest LS improvement with LDN, providing indirect evidence for TLR4 involvement in LS pathogenesis @DeLuca2023LS2023Update. A shared trial population (ME/CFS+LS patients) would simultaneously test LDN in two conditions with proposed shared mechanism, potentially accelerating evidence generation in both fields.

*Falsifiable prediction:* In an LDN crossover trial stratified by autoimmune comorbidity profile, ME/CFS patients with ≥1 autoimmune comorbidity (including LS) will show ≥1.5× the responder rate (defined as ≥30% PEM reduction) compared to ME/CFS patients without autoimmune comorbidities.

*Limitations:* TLR4 overactivation in LS is inferred from LDN case reports, not direct measurement. ME/CFS TLR4 involvement is plausible but not definitively established. Stratification by autoimmune comorbidity requires prospective trial design, not post-hoc subgroup analysis. LDN trials must control for nocebo effects and expectation bias, which are elevated in patient populations with strong community interest in LDN.
] <spec:ldn-autoimmune-terrain>

=== Glucocorticoid Pulse at PEM Onset: Interrupting the TRM Reactivation Loop
<subsec:steroid-pulse-pem>

#speculation(title: [Brief Methylprednisolone Pulse at PEM Onset as an Interruption Strategy for TRM Reactivation])[

*Certainty: 0.15 for efficacy; 0.40 for mechanistic rationale.* Based on LS topical steroid mechanism and theoretical ME/CFS TRM biology; no controlled trial has tested glucocorticoid pulse specifically timed to PEM onset. Research-stage only. Not yet replicated.

#warning-env(title: [Research-Stage Only])[
This is a research-stage hypothesis only. Systemic glucocorticoid use in ME/CFS has a history of mixed and harmful outcomes with chronic administration (adrenal suppression, immune dysregulation). This entry does NOT recommend pulse steroids as a clinical intervention. Chronic steroid use is explicitly contraindicated in ME/CFS. Any trial of steroid pulse therapy requires specialist oversight, HPA axis assessment, and exclusion of adrenal insufficiency. Do not implement without a supervising physician and formal trial framework.
]

Ultra-potent topical steroids (clobetasol propionate) halt LS progression by interrupting the Th1/TGF-β feedback cycle — the same Th1 axis proposed as operative in ME/CFS chronic immune activation. If ME/CFS PEM reflects tissue-resident memory T-cell (TRM) reactivation (Section @spec:trm-mecfs), then brief systemic glucocorticoid exposure timed to the reactivation event — analogous to pulsed local steroid in LS — could interrupt the IL-15 trans-presentation loop before it amplifies. This differs categorically from chronic glucocorticoid use; the rationale is event-specific rather than suppressive.

*Protocol concept (research-stage):* Methylprednisolone 16 mg × 3 days, initiated within 12 hours of confirmed PEM onset (defined by validated PEM diary + ≥50% activity reduction). Crossover design; washout between events. Primary endpoint: PEM duration reduction ≥30%. Secondary: inflammatory marker kinetics (IL-6, IL-15 sRα) pre/post pulse.

*Falsifiable prediction:* Methylprednisolone 16 mg × 3 days initiated at PEM onset will reduce median PEM duration from baseline by ≥30% in a within-patient crossover trial (n = 40 PEM events per arm).

*Limitations:* PEM events are stochastic and difficult to time interventions against. Glucocorticoid receptor downregulation with repeated exposure may reduce efficacy over time. HPA axis dysregulation in ME/CFS (documented in a subset) makes adrenal suppression risk non-negligible even with short pulses. TRM reactivation as the mechanism of PEM is unproven — if PEM is metabolic rather than immunological, this intervention would have no effect. The McKenzie 1998 hydrocortisone trial in ME/CFS produced marginal mixed results, suggesting corticosteroid benefit in unselected ME/CFS is not assured.
] <spec:steroid-pulse-pem>

== Mitochondrial Reserve Enhancement: Research-Stage Concepts
<sec:mitochondrial-reserve-enhancement>

#warning-env(title: [Research-Stage Section: No Validated Treatment Protocols])[
The concepts in this section derive from the mitochondrial reserve threshold model (Section @spec:mtdna-reserve-threshold in Chapter @ch:integrative-models). None of the interventions below has been tested in a controlled ME/CFS trial targeting reserve enhancement. This is a research-stage synthesis of mechanistic rationale and small-scale or off-condition evidence. Do not interpret as clinical guidance. All interventions require physician discussion before implementation.
]

The mitochondrial reserve threshold hypothesis (Section @spec:mtdna-reserve-threshold) predicts that pre-existing low reserve capacity facilitates ME/CFS onset after a viral trigger, and that reserve expansion could constitute both a preventive and therapeutic strategy. The following speculative treatment concepts share the goal of expanding spare respiratory capacity (SRC).

#speculation(title: [Bezafibrate for PPAR-Mediated Reserve Expansion])[
*(Certainty: 0.30 — proven PGC-1$alpha$ induction in primary mitochondrial disease models; ME/CFS-specific evidence absent.)*

Bezafibrate (pan-PPAR-$alpha$/$gamma$/$delta$ agonist) increases mitochondrial biogenesis via PGC-1$alpha$ and improves OXPHOS spare capacity in primary mitochondrial disease cell models. If ME/CFS reserve deficit is rate-limiting, bezafibrate could raise the functional ceiling. Dose: 400–600 mg/day (established fibrate dose for dyslipidemia). Monitoring: liver enzymes, CK, myopathy symptoms; creatinine in patients with renal impairment (fibrate-class contraindication in CKD); interactions with statins (myopathy risk) and anticoagulants (INR increase). Starting dose for severe/very-severe patients: 200 mg/day with stepwise titration over 4 weeks.

*Falsifiable prediction:* 12-week bezafibrate in moderate ME/CFS (n = 60, RCT) will improve day-2 CPET VO#sub[2]max decrement by ≥10% vs. placebo, with greatest effect in haplogroup H subgroup. No ME/CFS trial of bezafibrate has been conducted. Not yet replicated.
] <spec:bezafibrate-reserve>

#speculation(title: [Riboflavin as a Dual PEM--Migraine Target via Complex II and ETF Flux])[
*(Certainty: 0.30 — established Complex II cofactor; high-dose riboflavin for migraine prevention is evidence-based (Class B, European Headache Federation); ME/CFS application is mechanistic inference.)*

Riboflavin (vitamin B2) is the precursor for FAD, the essential cofactor for Complex II and the electron-transferring flavoprotein (ETF) dehydrogenase system. ME/CFS patients have elevated migraine comorbidity. Migraine responds robustly to high-dose riboflavin (400 mg/day) via a mitochondrial mechanism. If ME/CFS involves Complex II/ETF flux reduction, riboflavin supplementation could improve electron flux without targeting specific haplogroup-defined complexes. Safety profile is excellent (non-toxic at 400 mg; riboflavinuria is the only expected adverse effect).

Dose: 400 mg/day with food. Expected time-to-effect: 3–4 months (consistent with migraine prophylaxis timelines). Monitoring: none required at this dose. Interactions: none with common ME/CFS co-prescriptions (fludrocortisone, midodrine, LDN, pyridostigmine). Contraindications: none in ME/CFS population.

*Falsifiable prediction:* 16-week riboflavin 400 mg/day (n = 80, RCT) will reduce monthly PEM event frequency AND migraine days by ≥30% vs. placebo in ME/CFS patients with comorbid migraine. Not yet replicated in ME/CFS.
] <spec:riboflavin-dual-target>

#speculation(title: [Atomoxetine or Modafinil Stratified by ADHD Comorbidity Status])[
*(Certainty: 0.30 — mechanistically motivated by shared dopaminergic-PFC substrate; no ADHD-stratified stimulant trial in ME/CFS exists.)*

The Dopaminergic Demand Crossover hypothesis (Section @spec:dopaminergic-crossover in Chapter @ch:integrative-models) predicts that ME/CFS patients with comorbid ADHD share a PFC dopaminergic bottleneck as part of their reserve deficit phenotype. Non-stimulant ADHD medications — atomoxetine (norepinephrine reuptake inhibitor) and modafinil (wakefulness-promoting) — address the PFC energy deficit without the sympathetic activation risk of stimulants that could trigger PEM. In unselected ME/CFS cohorts, cognitive-symptom response may be diluted by patients without ADHD comorbidity; the reserve-crossover model predicts response will concentrate in ADHD-comorbid patients.

Dose (modafinil): 50–100 mg morning (severe patients: 50 mg; avoid afternoon dosing to prevent sleep disruption). Monitoring: blood pressure, sleep onset latency, appetite. Interactions: no known interaction with LDN, fludrocortisone, midodrine, or pyridostigmine. Contraindications: cardiac arrhythmia history; severe sleep-onset insomnia.

*Falsifiable prediction:* ME/CFS patients with childhood ADHD history (WURS-25 >36) will report ≥30% greater cognitive symptom improvement on modafinil than ME/CFS patients without ADHD history, in a parallel-group trial (n = 100) with ADHD comorbidity as pre-specified stratification variable. Not yet replicated.
] <spec:stimulant-adhd-stratification>

#speculation(title: [Haplogroup-Guided Supplement Personalization])[
*(Certainty: 0.25 — haplogroup-symptom associations from a single unreplicated study; haplogroup-guided supplementation untested.)*

If mtDNA haplogroup modulates symptom cluster expression @BillingRoss2016mtDNA, haplogroup-tailored supplementation targeting the bioenergetic vulnerabilities associated with each haplogroup represents a personalizable research approach. Consumer genetic tests provide haplogroup classification at minimal cost.

Proposed mechanistic matching: *Haplogroup H* (tight coupling, exercise-crash phenotype per @BillingRoss2016mtDNA) → MitoQ 10 mg/day (mitochondrially-targeted antioxidant to address ROS from tight coupling under demand) + conservative pacing thresholds. *Haplogroup U* (anti-inflammatory coupling, milder PEM per @BillingRoss2016mtDNA) → focus on other deficit domains rather than antioxidant-loading. *Haplogroup J* (joint pain protection per @BillingRoss2016mtDNA) → investigate whether joint-targeted physiotherapy has differential benefit in this subgroup.

*Falsifiable prediction:* In a 16-week pilot (n = 60, stratified by haplogroup H vs. non-H), haplogroup-matched vs. cross-matched supplement assignment will produce a statistically distinguishable difference in exercise-crash frequency (for H) and bloating (for U/J) at p < 0.05. Note: consumer haplogroup tests carry ~3% major-haplogroup misclassification rate; research applications require validation sequencing. Not yet replicated.
] <spec:haplogroup-supplement-personalization>
