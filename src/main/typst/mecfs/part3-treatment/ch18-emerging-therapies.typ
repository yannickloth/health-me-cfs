#import "../shared/environments.typ": *

= Experimental and Emerging Therapies
<ch:emerging-therapies>

This chapter explores therapies at the frontier of ME/CFS treatment---approaches with theoretical rationale but limited clinical validation. Some represent extensions of established medical science; others venture into more speculative territory. The heterogeneous nature of ME/CFS suggests that different patients may require fundamentally different interventions, making this exploratory landscape particularly relevant.

== Novel Therapeutic Frameworks
<sec:novel-frameworks>

Before examining specific interventions, several overarching conceptual frameworks offer novel approaches to treatment design.

#hypothesis(title: [Metabolic State Transition])[
ME/CFS may represent a stable but maladaptive metabolic state---analogous to cellular "hibernation" or the evolutionarily conserved sickness behavior response that became pathologically persistent. The body entered a low-energy conservation mode in response to an initial trigger (infection, trauma, severe stress) but failed to receive or respond to the "all clear" signal to return to normal metabolism. If true, effective treatment may require interventions that trigger metabolic state transitions rather than symptom suppression. Candidate approaches include:

- Controlled metabolic stressors (fasting, hypoxia, temperature extremes) that force cellular adaptation
- Interventions targeting metabolic switching pathways (AMPK activation, mTOR modulation)
- Circadian rhythm reset protocols combining light therapy, meal timing, and temperature cues

This framework suggests that gradual, gentle interventions may perpetuate the maladaptive state, while carefully designed acute challenges might catalyze transition---though the risks of such approaches in a population with impaired stress tolerance are substantial.
]

#hypothesis(title: [Cellular Danger Response Persistence])[
Robert Naviaux's cell danger response (CDR) hypothesis @Naviaux2014cdr proposes that cells remain stuck in a defensive metabolic mode characterized by reduced mitochondrial function, altered purinergic signaling, and maintained inflammatory readiness. The CDR evolved as a protective response to threats, but in ME/CFS, the "threat resolved" signal may never arrive or may not be recognized. Therapeutic implications include:

- Antipurinergic therapy (suramin showed promise in an autism pilot trial @Naviaux2018suraminpilot; ME/CFS trials have not been conducted)
- Modulating extracellular ATP signaling through P2X/P2Y receptor antagonists
- Reducing triggers that maintain CDR activation (chronic infections, gut dysbiosis, environmental toxins)
- Flavonoids with antipurinergic properties (quercetin, luteolin) as accessible alternatives
]

#hypothesis(title: [Glymphatic Dysfunction and Neuroinflammatory Persistence])[
Sleep in ME/CFS is characteristically non-restorative despite adequate duration. The glymphatic system---the brain's waste clearance mechanism---operates primarily during deep sleep @Xie2013glymphatic. If glymphatic function is impaired, neuroinflammatory debris may accumulate, perpetuating microglial activation and cognitive dysfunction. Testable interventions include:

- Sleep architecture optimization targeting slow-wave sleep (when glymphatic clearance peaks)
- Sleep position modification (lateral sleeping may enhance glymphatic flow)
- Agents that improve glymphatic function (low-dose naltrexone reduces neuroinflammation; specific anesthetics enhance glymphatic clearance in animal models)
- Timing of hydration (adequate fluids without excessive evening intake)
- Omega-3 fatty acids (AQP4 water channel function depends on membrane composition)
]

#limitation(title: [Emerging Therapies: Pre-Validation Evidence Throughout])[
All interventions in this chapter are experimental or unvalidated for ME/CFS. Key epistemic boundaries apply to the entire chapter:

- No intervention described below has been tested in a randomised, placebo-controlled trial specifically in ME/CFS unless explicitly stated. Open-label designs, case series, and single-arm pilots dominate the evidence base.
- The "metabolic state transition," "cell danger response persistence," and "glymphatic dysfunction" therapeutic frameworks are hypothesis-driven; treatment protocols derived from them are speculative extrapolations, not evidence-based protocols.
- Cross-condition extrapolation (e.g., FMT efficacy from _C.~difficile_ infection, non-invasive VNS from migraine, HBOT from wound healing) does not establish efficacy in ME/CFS; the shared-symptom assumption underlying such transfers may be incorrect.
- Supplement and peptide therapies (BPC-157, thymosin alpha-1) often lack human pharmacokinetic data; dosing, bioavailability, and safety profiles are incompletely characterised.
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

#observation(title: [Hypothesis: Dual Pathway Requirement])[
Anti-inflammatory interventions alone are insufficient for PEM prevention because the core dysfunction is ATP production failure---this follows logically from the mechanism. *Whether energy restoration alone is sufficient, or whether cascade interruption is also required, remains untested.* The hypothesis that both pathways must be addressed rests on two theoretical considerations:

+ *Energy restoration (ATP/NAD+ support)*: Required because ATP depletion is the initiating driver (mechanistically established)
+ *Cascade interruption (anti-inflammatory/antioxidant)*: Hypothetically required because unchecked inflammatory cascades might (a) cause secondary ATP depletion through cytokine-mediated mitochondrial dysfunction, or (b) create symptoms independent of energy status through direct tissue damage

*Empirical question:* Could ATP/NAD+ support alone achieve 60--80% severity reduction, or is anti-inflammatory intervention necessary? This requires comparative trials. Until then, addressing both pathways simultaneously represents the most mechanistically complete approach.
]

=== Emergency PEM Protocol
<subsubsec:emergency-pem-protocol>

*Clinical context:* For patients who must undergo unavoidable exertion (medical procedures, essential activities, emergency situations), can targeted interventions immediately post-exertion reduce PEM severity or prevent onset?

*Evidence tier:* _Hypothesis-driven, mechanistically justified, pending RCT validation._ Individual components have safety data from other contexts. The integrated protocol represents rational polypharmacy targeting identified mechanisms but lacks direct testing in ME/CFS PEM.

*Rationale:* The 24--72h delay between exertion and symptom peak provides an intervention window. If ATP depletion, mitochondrial damage, NAD+ exhaustion, and immune activation initiate the cascade, aggressive multi-target support immediately post-exertion might prevent threshold crossing and abort symptom development.

*Phase 1: Immediate Post-Exertion (0--2 Hours).*

_Goal_: Prevent ATP threshold crossing; minimize oxidative damage; provide NAD+ substrate; initiate parasympathetic recovery.

- *ATP substrate provision*:
  - *D-ribose* 10--15~g: Ribose is the sugar backbone of ATP; provides direct substrate for ATP resynthesis. Open-label studies in ME/CFS patients (n=257) report 61% improvement in energy @Teitelbaum2012ribose. *CONTRAINDICATION*: Diabetes, hypoglycemia (paradoxically lowers blood glucose)---see warning in Chapter @ch:action-mild-moderate
  - *Citrulline-malate* 3--6~g: Dual mechanism---malate replenishes depleted TCA cycle intermediates (documented deficiency in ME/CFS @Yamano2016tca_urea); citrulline supports urea cycle/ammonia detoxification. 31P-MRS evidence shows 34% increased oxidative ATP production @Bendahan2002citrulline
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

This protocol represents rational therapeutic design based on identified pathophysiology. It is offered for informed patient-physician decision-making in situations where potential benefits outweigh the minimal risks of the interventions and the certain risks of unmitigated severe PEM. Patients using this protocol should document outcomes to contribute to collective knowledge about efficacy.
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

This time-dependency can be modeled as exponential decay:

$ R(t) = R_0 e^(-lambda t) $
<eq:reversibility-decay>

where $R(t)$ = reversibility fraction at time $t$ (proportion of dysfunction that remains correctable), $R_0$ = initial reversibility (at onset, often 0.8--0.95 for metabolic/immune dysfunction), $lambda$ = decay constant (mechanism-specific; estimated 0.1--0.3 yr#super[-1] for mitochondrial dysfunction), and $t$ = time since onset (years).

*Clinical Interpretation of Time-Dependent Reversibility:* Consider two patients with comparable mitochondrial dysfunction severity:

- *Patient A*: 6 months of illness, $R(0.5) = 0.9 times e^(-0.2 times 0.5) approx 0.81$ (81% reversible)
- *Patient B*: 5 years of illness, $R(5) = 0.9 times e^(-0.2 times 5) approx 0.33$ (33% reversible)

Even with identical current dysfunction severity, Patient A has #sym.gt 2-fold higher recovery potential. This framework explains why early intervention is critical and why expecting symmetric outcomes across disease durations is unrealistic.

*Clinical implication*: Duration should factor into prognosis discussions and treatment intensity decisions. Early-stage patients (#sym.lt 2 years) warrant aggressive multi-target intervention; late-stage patients (#sym.gt 10 years) should focus on stabilization and targeting remaining reversible components.

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
  caption: [Highly Reversible Pathological Mechanisms. *Clinical implication*: Early aggressive intervention (disease duration #sym.lt 2--3 years) targeting these mechanisms has highest probability of substantial improvement (30--60% function restoration). Example: Daratumumab responders achieving SF-36 scores of 80--95 @Fluge2025daratumumab.]
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

- *Tier 1 (high reversibility)*: Realistic goal = 30--60% functional improvement, possibly remission
  - Example: Moderate ME/CFS (housebound 3 days/week) → Mild ME/CFS (working part-time, occasional social activities)
  - Aggressive intervention justified; high expected value

- *Tier 2 (moderate reversibility)*: Realistic goal = 10--30% functional improvement
  - Example: Severe (bedbound 80% of time) → Moderate-severe (housebound, can attend medical appointments, short visits)
  - Sustained effort justified; meaningful quality of life gains
  - Not "cure," but life-changing for patient and caregivers

- *Tier 3 (low reversibility)*: Realistic goal = stabilization + 5--15% improvement in specific symptoms
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

*Rationale*: This formula captures the intuition that higher cycle gain produces both more severe symptoms and longer recovery from equivalent exertion. However, this is a _proposed_ metric requiring validation---the specific functional form is not theoretically derived and alternatives (logarithmic, threshold-based) may prove superior.

*Calibration*: Healthy control reference values must be established empirically. We hypothesize $G_"healthy" approx 0.2$--$0.4$ based on typical post-exercise recovery (1--3 days), but this requires measurement in validation studies.

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

=== Bridging Therapies: Targeting the AIMM Cascade While Awaiting MDC002
<sec:aimm-bridging>

MDC002 targets the AIMM ionic cascade with high specificity, but it remains in preclinical development as of early 2026. Several existing or investigational compounds act on overlapping nodes of the same cascade and may provide partial benefit in the interim. None has been designed specifically for the AIMM mechanism; none has been tested in a trial explicitly targeting ionic homeostasis in ME/CFS. Their relevance is mechanistic, not established.

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
    [Taurine], [Mitochondrial Ca#super[2+] membrane stabilisation], [None], [OTC, available],
  ),
  caption: [Compounds with mechanistic relevance to the AIMM cascade, grouped by AIMM node. Evidence grades reflect ME/CFS-specific data only; all are investigational for this indication unless noted.],
) <tbl:aimm-bridging>

==== Compounds with ME/CFS Trial Data

*Pyridostigmine* (acetylcholinesterase inhibitor) enhances cholinergic tone, which stimulates Na#super[+]/K#super[+]-ATPase via muscarinic signalling. Its primary indication in ME/CFS is haemodynamic orthostatic intolerance, where two controlled studies have produced positive results. Joseph et al.\ (2022) demonstrated improved preload failure on invasive cardiopulmonary exercise testing @Joseph2022pyridostigmine, and Squires et al.\ (2023) documented improved long-term exercise capacity (oxygen uptake efficiency slope, pulmonary vascular capacitance) @Squires2023pyridostigmine. These results suggest pyridostigmine acts on vascular physiology relevant to the ischaemic component of the AIMM model, though the mechanism has not been characterised at the ionic level. Its inclusion in the autonomic arm of the LIFT trial (low-dose naltrexone + pyridostigmine) tests an additional immunomodulatory hypothesis via the cholinergic anti-inflammatory pathway.

*CoQ10 + NADH* acts downstream of the ionic cascade, supporting mitochondrial electron transport capacity in the context of energy deficit rather than blocking the ionic trigger. Castro-Marrero et al.\ (2021) conducted a prospective RCT (n=207) of 200 mg CoQ10 + 20 mg NADH daily for 12 weeks and reported significant reductions in cognitive fatigue (p#sym.lt 0.001), improvements in overall fatigue impact (FIS-40, p=0.022), and quality of life (SF-36, p#sym.lt 0.05), with benefits persisting four weeks post-treatment @CastroMarrero2021CoQ10. This represents the highest-quality current evidence for a mitochondrial-support intervention in ME/CFS. CoQ10 bioavailability is formulation-dependent; crystal-modified ubiquinone achieves approximately 75% better absorption than standard crystalline formulations.

==== Active Clinical Trials

*Vericiguat* is a soluble guanylate cyclase (sGC) stimulator approved for heart failure with reduced ejection fraction. By elevating cGMP independently of nitric oxide availability, it produces vasodilation, reduces cardiac preload, and has demonstrated mitochondrial protective effects in preclinical cardiac ischaemia models. Its relevance to ME/CFS derives from the vascular insufficiency component of the AIMM model: if endothelial NO bioavailability is impaired (the mechanism proposed in Section @sec:endothelial), sGC stimulation could partially compensate. The Scheibenbogen group (Charité Berlin) holds a patent application on sGC stimulators for ME/CFS treatment and has registered a clinical trial (NCT05697640) testing vericiguat in ME/CFS patients. No efficacy results are published as of early 2026.

*Trimetazidine* is a mitochondrial cytoprotective agent that shifts cardiac and skeletal muscle metabolism from fatty acid oxidation toward glucose oxidation, reducing oxygen demand per unit of ATP produced. An Australian RCT (TRI-ME) is testing trimetazidine in ME/CFS; results are not yet available.

==== Mechanistically Relevant, No ME/CFS Data

*Rimeporide* is the most direct NHE1 inhibitor with human safety data (Phase Ib completed in Duchenne muscular dystrophy). NHE1 is the second step of the AIMM cascade; its inhibition would directly block the proton-extrusion/Na#super[+]-import exchange that initiates intracellular sodium overload. No ME/CFS trial of rimeporide is registered.

*Ranolazine* (approved for refractory angina) inhibits the late persistent sodium current (late I#sub[Na]), reducing cytosolic Na#super[+] accumulation and thereby decreasing the thermodynamic drive for NCX1 reversal. The mechanism is upstream of but distinct from NHE1 inhibition. No ME/CFS data exist.

*Nimodipine* (dihydropyridine calcium channel blocker approved for subarachnoid haemorrhage) blocks voltage-gated Ca#super[2+] channels, reducing extracellular Ca#super[2+] influx that could sustain NCX1 reverse-mode operation. Its relevance is indirect; one published case series describes ME/CFS symptom improvement with nimodipine, but no controlled evidence exists.

*Carnosine* (or its precursor *beta-alanine*) acts as an intracellular proton buffer. By reducing cytosolic proton accumulation upstream of NHE1 activation, it could theoretically reduce the stimulus for NHE1-mediated sodium import. This is mechanistically the furthest upstream of any bridging candidate. No ME/CFS trials exist.

*Magnesium* is a required cofactor for Na#super[+]/K#super[+]-ATPase and NCLX function; deficiency impairs both calcium extrusion pathways. Magnesium deficiency has been reported in ME/CFS cohorts, and repleting deficiency (via oral or intravenous supplementation) is low-risk and widely practised. Whether supraphysiological magnesium produces additional benefit beyond correcting deficiency is uncharacterised.

#warning-env(title: [AIMM Bridging Agents: Mechanistic Rationale Only])[
None of the agents in Table @tbl:aimm-bridging has been tested in a trial designed to target the AIMM ionic cascade in ME/CFS. Evidence for pyridostigmine and CoQ10+NADH comes from ME/CFS trials with different mechanistic framing (haemodynamic and mitochondrial support, respectively). Rimeporide, ranolazine, and carnosine have no ME/CFS data at all. Extrapolating from mechanism to clinical recommendation in a population with impaired stress tolerance and complex drug sensitivity is not supported. These agents are presented to illustrate mechanistic convergence with MDC002 and to identify research priorities, not to guide clinical decision-making.
]

#open-question(title: [Which AIMM Cascade Node is the Best Bridging Target?])[
MDC002 targets Na#super[+]/K#super[+]-ATPase and NCLX simultaneously. Existing compounds target individual nodes: NHE1 (rimeporide, ranolazine), Na#super[+]/K#super[+]-ATPase (pyridostigmine), NCX1 reverse-mode (nimodipine), proton accumulation (carnosine), and mitochondrial downstream (CoQ10, trimetazidine). A mechanistic head-to-head trial design — randomising patients to agents targeting different cascade nodes — would identify which node is rate-limiting for clinical improvement. This has not been attempted. The answer would also inform MDC002's trial design: if proton-buffering upstream interventions produce benefit, it suggests the NHE1 activation step is accessible; if downstream mitochondrial support is more effective, it suggests the calcium overload step is the binding constraint.
] <oq:aimm-cascade-node>

== Neuromuscular Junction Modulation: Amifampridin (3,4-DAP)
<sec:amifampridin>

Amifampridin (3,4-diaminopyridine) is a voltage-gated potassium channel blocker approved for Lambert-Eaton myasthenic syndrome (LEMS), where it enhances acetylcholine release at the neuromuscular junction by prolonging presynaptic action potentials. Its relevance to ME/CFS and post-COVID fatigue derives from the hypothesis that neuromuscular transmission failure contributes to the pathological fatigability observed in these conditions.

Boehmeke (2024) reported a collective case series of five post-COVID syndrome patients treated with amifampridin, incorporating double-blind discontinuation trials with alternating three-day periods of active medication versus placebo @Boehmeke2024amifampridin. All five participants demonstrated improvement on the Bell Disability Scale, measuring alertness, physical capacity, and work capacity. Pathologically increased sleep requirement normalised during treatment. In the blinded discontinuation phase, two of five participants showed clear deterioration on placebo, confirming the drug effect beyond open-label response.

#warning-env(title: [Amifampridin: Minimal Evidence Base])[
This is a case series of five patients with no control group beyond the within-subject discontinuation design. Only two of five participants showed confirmed blinded response, and the three-day crossover periods may be too short for adequate washout. The mechanism connecting potassium channel blockade at the neuromuscular junction to post-COVID fatigue has not been characterised. Amifampridin carries risks of seizures (dose-dependent), paraesthesias, and gastrointestinal symptoms. Its use in post-COVID or ME/CFS is off-label and not supported by current evidence for clinical adoption outside a research setting.
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

=== Mechanism of Action
<subsubsec:rapamycin-mechanism>

mTOR hyperactivation suppresses autophagy---the cellular recycling process that clears damaged organelles, misfolded proteins, and dysfunctional mitochondria. Rapamycin is a sensitive CYP3A4 and P-glycoprotein substrate; co-administration with CYP3A4 inhibitors (azole antifungals, macrolides, some antivirals) substantially elevates blood levels and must be avoided unless doses are adjusted under specialist supervision. Oral rapamycin has highly variable bioavailability (approximately 15%) with food substantially altering absorption; once-weekly off-label dosing at 6 mg is far below transplant immunosuppression doses, but even intermittent mTOR inhibition produces measurable immunosuppression. Rapamycin is used off-label in ME/CFS; its approved indications are organ transplant rejection prophylaxis and lymphangioleiomyomatosis.

#speculation(title: [Proposed Mechanisms of Rapamycin in ME/CFS])[
*Certainty: 0.25.* Ruan et al. (2025) reported autophagy impairment markers (reduced LC3-II, elevated p62) in ME/CFS patients @Ruan2025rapamycin, though caution is warranted: these markers were measured in peripheral blood cells from the same uncontrolled pilot study that assessed treatment outcomes, and PBMC autophagy markers may not reflect autophagy flux in the skeletal muscle, neurons, and other parenchymal tissues where dysfunction is hypothesised to matter. Elevated p62 can indicate either blocked autophagy flux or increased substrate production (e.g., from oxidative stress); distinguishing these requires a bafilomycin challenge assay, which was not performed. If autophagy impairment is real and tissue-relevant, proposed mechanisms include: (1) *mitophagy restoration* --- clearing dysfunctional mitochondria to reduce energy deficit and ROS generation; (2) *immunomodulation* --- shifting T-cell balance toward regulatory phenotypes via mTORC1 suppression; (3) *senolysis* --- reducing cellular senescence and the senescence-associated secretory phenotype (SASP), though direct evidence of elevated senescence markers in ME/CFS has not been independently established. The unifying "TorS" paradigm proposes mTOR hyperactivation as a shared mechanism across post-acute infection syndromes @BarTana2025mTOR; this is a single speculative proposal, not a consensus framework. These mechanisms are extrapolated from aging biology and oncology; none has been validated in ME/CFS-specific experimental models.
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

Several features of ME/CFS and Long COVID suggest sympathetic hyperactivation as a potentially treatable contributor. HRV studies in ME/CFS show a trend toward reduced parasympathetic tone, though findings are heterogeneous across studies and methodologies, and some cohorts show no significant sympatho-vagal difference from controls. Orthostatic tachycardia (POTS), present in a substantial minority of ME/CFS patients, is in part driven by sympathetic dysregulation. Liu and Duricka hypothesised that Long COVID fatigue, brain fog, and orthostatic intolerance resemble "sickness behaviour" perpetuated by autonomic dysregulation, and that neuromodulation at the sympathetic chain could interrupt this cycle @Liu2022SGB.

#speculation(title: [SGB Mechanism Hypothesis: Sympathetic Reset])[
*Certainty: 0.20.* The proposed causal chain is: infection → sustained sympathetic hyperactivation → vasoconstriction → endothelial hypoperfusion → symptom perpetuation; SGB interrupts the chain by temporarily blocking sympathetic output at C6--C7. Two aspects of this chain require scrutiny. First, endothelial hypoperfusion in ME/CFS may be driven by microclot obstruction, glycocalyx disruption, or primary endothelial dysfunction rather than by sympathetic vasoconstriction, in which case SGB would treat a downstream variable rather than a proximal cause. Second, local anaesthetic SGB lasts 6--12 hours; for a transient blockade to produce lasting benefit, the sympathetic hyperactivation must constitute a positive feedback loop that, once interrupted, does not re-establish itself. The neuroplasticity basis for such hysteresis in the sympathetic chain has not been demonstrated in ME/CFS or Long COVID.
]

=== Clinical Evidence
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
Sulodexide has antithrombotic and anticoagulant properties. Patients already on therapeutic anticoagulation (warfarin, direct oral anticoagulants) or with bleeding disorders should not use sulodexide without haematology input, as the combination may be contraindicated. Patients co-administering aspirin, fish oil, antihistamines with antiplatelet effects, or other supplements affecting coagulation face additive bleeding risk and should discuss this with their prescriber. Oral bioavailability is approximately 6%, substantially lower than the parenteral form used in some European guidelines for acute indications; whether 50 LSU orally achieves meaningful systemic glycocalyx repletion is not definitively established. Sulodexide is not approved in the US; the supplement form (EndoProtek) is not subject to pharmaceutical quality controls and may not be pharmacokinetically equivalent to the licensed preparation used in clinical trials.
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

Grote et al. (2024) explored a combination of statins (HMG-CoA reductase inhibitors) and angiotensin II receptor blockers (ARBs) as a therapeutic approach for post-COVID syndrome based on HDL proteome analysis @Grote2024HDLproteome. In 16 patients (8 with post-COVID syndrome, 8 with post-vaccination syndrome), quantitative proteomics revealed abnormal HDL composition---elevated haemoglobin and cytoskeletal proteins compared to healthy controls---with no significant differences between PCS and PVS groups. Following six weeks of combined statin/ARB therapy, treatment reduced expression of inflammatory cytokines and adhesion molecules in endothelial cells, and upregulated HDL-associated proteins FAM3C, ATP6AP2, and ADAM10.

The rationale connects to the endothelial dysfunction documented in ME/CFS and Long COVID (Chapter @ch:cardiovascular): disrupted renin-angiotensin system signalling and cholesterol metabolism dysfunction may contribute to endothelial activation and vascular inflammation. Statin/ARB combination addresses both pathways simultaneously.

#warning-env(title: [Very Preliminary; No Control Group])[
This is an uncontrolled study with 16 participants. No placebo arm, no blinding, and no clinical outcome measures beyond proteomics and questionnaires. Both statins and ARBs have well-characterised pleiotropic effects (anti-inflammatory, endothelial-protective) that could account for symptomatic improvement independently of HDL proteome correction. The finding that PCS and PVS patients had identical HDL abnormalities is interesting but may reflect shared endothelial dysfunction rather than a specific spike-protein-mediated mechanism. Larger controlled trials with clinical endpoints are required before this can be considered a treatment approach.
]

*Evidence Grade*: D --- n=16 uncontrolled proteomics study; mechanistically interesting; RCT required

== Viral Persistence: Maraviroc and Pravastatin
<sec:maraviroc-pravastatin>

Patterson et al.\ proposed that a subset of Long COVID and ME/CFS patients harbour persistent spike protein or viral antigens in non-classical monocytes, activating a monocytic-endothelial-platelet axis that sustains inflammation @Patterson2023maraviroc. This hypothesis is contested: independent researchers have challenged the flow cytometry gating methodology used to classify non-classical monocyte subsets and whether spike-protein persistence in monocytes has been reliably demonstrated by laboratories other than Patterson's. The controversy concerns the measurement technique itself, not only sample size. If the hypothesis is correct, treatment is motivated by a combination of:

    - *Maraviroc* (CCR5 antagonist): Blocks CCR5-mediated monocyte migration and activation; CCR5 is upregulated on non-classical monocytes in Long COVID
    - *Pravastatin* (or atorvastatin): Pleiotropic anti-inflammatory and endothelial-stabilising effects; reduces monocyte activation through NF-κB pathways

=== Evidence
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

There are no controlled trial data in ME/CFS. Available evidence consists of a single case report by Chopra et al.\ (2024) of a patient who self-administered psilocybin combined with MDMA and reported significant symptom improvement @Chopra2024psilocybin --- the combination makes it impossible to attribute the effect to psilocybin alone --- and an observational Reddit-based investigation by Bobak et al.\ (2025) @Bobak2025psilocybin suggesting potential benefit for Long COVID neuropsychiatric symptoms (78% of 110 self-reporting users described improvement).

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
*Certainty: 0.20.* None of the following mechanisms has been validated in ME/CFS or Long COVID patients; each is inferred from the drug's known pharmacology in other disease contexts. (1) *Anti-inflammatory*: GLP-1R activation suppresses NF-κB-driven cytokine production in macrophages and microglia in preclinical and diabetic-population studies. (2) *Mast cell modulation*: GLP-1R is expressed on mast cells in preclinical models; agonism reduces degranulation in vitro; whether this translates to clinically meaningful MCAS suppression at therapeutic doses in humans is untested. (3) *Neuroprotection*: GLP-1R agonism promotes BDNF and reduces neuroinflammatory markers in Parkinson's disease and metabolic syndrome studies; early-phase trials in Parkinson's have shown modest signal (Athauda et al., 2017) @Athauda2017exenatide; Phase 3 Alzheimer's data were not yet published as of March 2026. (4) *Mitochondrial effects*: GLP-1R signalling activates AMPK/PGC-1α pathways in metabolic tissue; mitochondrial relevance in ME/CFS is speculative. (5) *Endothelial protection*: Reduces endothelial inflammation in cardiovascular trials. A multi-target rationale spanning five distinct mechanisms increases the prior probability that at least one will contribute --- but it also complicates falsifiability: a negative trial could be attributed to insufficient effect on any one mechanism while leaving the others intact.
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

This section addresses the treatment implications of post-parasitic ME/CFS specifically. The general ME/CFS treatment protocols (Chapters @ch:urgent-action-severe through @ch:supplements) apply to this subtype in full; what follows are considerations _additional to_ or _prioritised within_ that general framework for patients with confirmed or probable parasitic onset.

#limitation(title: [No Clinical Trials in Post-Parasitic ME/CFS; All Below Is Mechanistic Inference])[
No randomised controlled trial has been conducted specifically in patients with post-parasitic ME/CFS. The Bergen cohort provides epidemiological and immunological characterisation but no intervention data. Treatment recommendations in this section are mechanistic extrapolations from general ME/CFS literature and from the pathophysiology of the proposed parasite-specific mechanisms (Chapter @ch:immune-dysfunction). They should be applied with the same caution as all other experimental interventions in this chapter.
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
Metronidazole, tinidazole, albendazole, and other antiparasitic agents carry adverse effect profiles (metronidazole: peripheral neuropathy with prolonged use, disulfiram-like reaction with alcohol, CYP2C9 inhibition; albendazole: hepatotoxicity, neutropenia requiring monitoring) that are not justified in the absence of documented active parasitic infection. Ivermectin, which has no evidence base in ME/CFS treatment and is not active against the intestinal protozoa most relevant to post-infectious ME/CFS (Giardia, Cryptosporidium), should not be prescribed for ME/CFS under the mistaken belief that it addresses a parasitic aetiology. Claims that ME/CFS is broadly caused by parasitic infection and should be treated empirically with antiparasitic agents are not supported by the scientific evidence reviewed in this document.
] <warn:no-empirical-antiparasitic>

== Post-Parasitic MCAS Phenotype
<sec:post-parasitic-mcas>

The post-parasitic mast cell priming speculation (Speculation @spec:parasite-mcas-priming, Chapter @ch:immune-dysfunction) proposes that acute Giardia infection may permanently sensitise intestinal mast cells, producing a post-parasitic MCAS phenotype characterised by food intolerances, chemical sensitivities, flushing, autonomic instability, and fatigue that began after the acute parasitic infection.

Clinically, this phenotype is indistinguishable from MCAS from any other cause — the same diagnostic criteria apply and the same treatments are used. The treatment protocols for MCAS in ME/CFS are covered in full in Section @sec:allergies-mast-cells. The contribution of this section is to heighten index of suspicion: patients with parasitic-onset ME/CFS who have not yet been evaluated for MCAS should be screened, particularly if their symptom profile includes the following features that commenced or worsened after the acute infection:

- New-onset food intolerances or reactions to foods previously well-tolerated
- Flushing, urticaria, or pruritis without identifiable allergic trigger
- Gastrointestinal cramping, diarrhoea, or nausea disproportionate to any residual GI pathology
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

- *L-glutamine supplementation:* *Requires physician supervision and baseline liver and renal function testing before initiating.* Glutamine is the primary metabolic fuel of enterocytes and is required for tight junction protein synthesis (claudin-1, occludin, ZO-1). Supplementation at 0.5 g/kg/day has been studied in intestinal barrier dysfunction contexts including critical illness, chemotherapy-related mucositis, and inflammatory bowel disease, with mixed but suggestive results. In the context of post-parasitic villous atrophy, glutamine may support enterocyte regeneration and barrier repair. Evidence specifically in post-parasitic ME/CFS does not exist. *Contraindications:* Glutamine must not be used in patients with hepatic encephalopathy or significant renal impairment (eGFR #sym.lt 30 mL/min/1.73 m²), as impaired nitrogen handling can worsen encephalopathy or contribute to uraemia.

- *Zinc supplementation:* Zinc deficiency impairs intestinal barrier function and mucosal immune competence; zinc supplementation at 20–40 mg elemental zinc/day is used in WHO diarrhoeal disease protocols and has evidence for reducing intestinal permeability in small trials of inflammatory bowel disease. In the context of confirmed villous atrophy with possible micronutrient malabsorption, zinc status should be checked and repleted. *Safety note:* The EU Tolerable Upper Intake Level (UL) for zinc in adults is 25 mg/day; doses above this threshold require clinical justification (e.g.\ confirmed deficiency or documented malabsorption) and should not be self-prescribed. Prolonged supplementation above 25 mg/day induces copper deficiency by competitive absorption inhibition, which can cause sideroblastic anaemia and peripheral neuropathy. If zinc is supplemented at ≥ 25 mg/day for more than 4 weeks, co-supplementation with 1–2 mg elemental copper/day and periodic serum copper/caeruloplasmin monitoring are warranted.

#limitation(title: [Duodenal Mucosal Repair: No ME/CFS Trial Data])[
No clinical trial has tested elemental diet, glutamine, or zinc specifically for post-parasitic ME/CFS with confirmed ongoing mucosal pathology. The interventions described above are mechanistically grounded in intestinal barrier physiology and have evidence bases in related conditions, but efficacy and effect size in this specific context are unknown. The critical clinical gate is confirmation of ongoing mucosal pathology by biopsy before these interventions are pursued.
]

*Evidence Grade*: E --- mechanistically motivated; extrapolated from intestinal barrier literature; no ME/CFS-specific trial data; applicable only in patients with confirmed ongoing mucosal pathology

== IDO1/Kynurenine Pathway Targeting in Post-Parasitic ME/CFS
<sec:post-parasitic-ido1>

The IDO1 kynurenine shunt speculation (Speculation @hyp:parasite-ido1-kynurenine, Chapter @ch:immune-dysfunction) proposes that intestinal parasitic infection may epigenetically prime IDO1 overexpression, creating a persistent kynurenine shunt that drives neuroinflammation and cognitive dysfunction in post-parasitic ME/CFS. This is a speculative mechanistic model with no direct human evidence, but it maps onto a therapeutic target — IDO1 inhibition — that has existing pharmacological tools developed for oncology.

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

The molecular mimicry speculation (Speculation @hyp:giardia-molecular-mimicry, Chapter @ch:immune-dysfunction) proposes that Giardia VSP epitopes may prime GPCR autoantibody production via molecular mimicry. If correct, a subset of post-parasitic ME/CFS patients would have elevated anti-muscarinic and/or anti-β₂-adrenergic receptor autoantibodies — the same targets studied in the broader ME/CFS autoimmunity literature @Loebel2016.

This has an immediately actionable implication: post-parasitic ME/CFS patients being evaluated for immunoadsorption (Section @sec:immunoadsorption) or rituximab should have GPCR autoantibody profiling as part of their pre-treatment workup, using the same autoantibody panel applied in the broader ME/CFS autoimmune subtype literature. If autoantibodies are present, post-parasitic patients are eligible for the same immunoadsorption protocols as post-viral autoimmune-phenotype patients; the trigger (parasitic vs.\ viral) does not change the treatment target if the endpoint is the same (GPCR autoantibody reduction).

This does not require any new treatment development — it requires application of existing protocols to a population that has not yet been systematically screened.

*Diagnostic gate:* GPCR autoantibody testing (anti-M3R, anti-M4R, anti-β₁-adrenergic, anti-β₂-adrenergic IgG) is not widely available in routine clinical settings; in Europe, the Charite laboratory (Berlin) has operated this assay in research contexts. Before this becomes a standard clinical recommendation, GPCR autoantibody profiling in a post-parasitic ME/CFS cohort — ideally the Bergen cohort — is needed to establish prevalence and clinical correlation.

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

- *Multiple sclerosis fatigue (BEMER-specific RCT, positive short-term but not sustained):* Piatkowski et al.\ (2009) randomised 37 MS patients to BEMER vs sham, 8 minutes twice daily for 12 weeks @Piatkowski2009BEMER. The Modified Fatigue Impact Scale (MFIS) and Fatigue Severity Scale (FSS) improved significantly at 12 weeks. However, at 6-week follow-up after stopping therapy, no significant between-group difference remained — effects did not persist after discontinuation.

- *Post-COVID fatigue (case reports only):* Two case reports describe PEMF use in post-COVID fatigue patients @Wagner2022PEMFpostCOVID, but single-patient observations cannot distinguish device effect from natural recovery or concurrent interventions.

*Independent systematic review:* Hug & Röösli (2012) conducted a systematic review of whole-body PEMF devices without industry funding and concluded that "scientific evidence for therapeutic effects of whole-body PEMF devices is insufficient" @HugRoosli2012PEMF.

*ME/CFS-specific concerns:* No published study has assessed whether PEMF sessions trigger post-exertional malaise. One post-COVID case reported transient post-session fatigue after the first treatment @Wagner2022PEMFpostCOVID. Given ME/CFS patients' vulnerability to PEM from physical stimulation, any trial of PEMF should begin with the shortest available session duration, with a carer or support person present for the first session, and with PEM symptoms monitored for 48 hours afterwards.

#limitation(title: [PEMF/BEMER: Insufficient Evidence in ME/CFS; Negative Fibromyalgia RCT])[
The BEMER device's largest controlled trial (fibromyalgia, n=108) was negative @Multanen2018BEMER. No ME/CFS trial exists. The MS fatigue trial showed effects that did not persist after stopping therapy @Piatkowski2009BEMER. The proposed microcirculation mechanism has biological plausibility @Flatscher2023PEMF but has not been tested in the ME/CFS context. PEM risk is uncharacterised. Marketing claims ("scientifically proven," "up to 30% microcirculation improvement") substantially exceed what peer-reviewed evidence supports.
]

*Evidence Grade*: E/D --- no ME/CFS data; negative BEMER RCT in overlapping condition; plausible mechanism; PEM risk unknown

== Earthing/Grounding
<sec:earthing-grounding>

"Earthing" or "grounding" refers to direct physical contact with the Earth's surface electrical potential, typically via conductive mattress overlays, grounding sheets, or barefoot contact with soil. The proposed mechanism is transfer of the Earth's surface electrons to the body, hypothesised to act as antioxidants neutralising reactive oxygen species, normalise cortisol circadian rhythms, and shift autonomic tone toward parasympathetic dominance.

The theoretical hooks to ME/CFS pathophysiology are real: sympathetic excess and low heart rate variability are well-documented in ME/CFS, cortisol dysregulation occurs in a subset of patients, and chronic oxidative stress and neuroinflammation are proposed mechanisms. If the proposed autonomic and anti-inflammatory effects were real and reproducible, they would be mechanistically relevant.

However, the entire published evidence base on earthing originates from a single network of financially conflicted authors — James Oschman, Gaétan Chevalier, and Stephen Sinatra — who are contractors, shareholders, or founders of EarthFx Inc. (the commercial entity that produces and sells earthing products) @Oschman2015earthing. This constitutes a closed citation loop with no independent replication. The best-designed study is a stepped-wedge cluster trial (n=16) @Chevalier2019earthingRCT, which is substantially underpowered and unreplicated. The foundational mechanism — free electron antioxidant transfer via direct contact with the Earth's surface — lacks independent biophysical validation.

#open-question(title: [Earthing and Autonomic Modulation: Does Any Effect Persist Beyond Relaxation?])[
If earthing genuinely produces a shift in autonomic tone toward parasympathetic dominance, this would be mechanistically relevant to ME/CFS given well-documented sympathetic excess. A sham-controlled crossover study in ME/CFS patients measuring HRV before and after grounded vs ungrounded sleep sessions (using validated continuous HRV monitoring) would be the minimal test of this specific claim in the relevant population. This has not been done. The two barriers to taking this more seriously are: (1) the entire evidence base is COI-contaminated with no independent replication, and (2) the flagship proposed mechanism (electron antioxidant transfer) has no established biophysical basis.
] <oq:earthing-autonomic>

*Evidence Grade*: E --- no ME/CFS trials; entire evidence base from single conflicted author network; no independent replication; mechanism unvalidated

== Muscle Oxygenation Monitoring (NIRS / Moxy Monitor) as a Pacing Tool
<sec:nirs-moxy-pacing>

This section addresses NIRS-based muscle oxygenation monitoring not as a treatment, but as a potential physiological monitoring approach for activity management in ME/CFS. The distinction is important: NIRS provides an objective measure of a documented ME/CFS pathophysiology (impaired muscle O₂ utilisation); whether that measurement can guide pacing to prevent PEM is a separate question.

*The underlying pathophysiology — well-supported:* Near-infrared spectroscopy (NIRS) measures muscle oxygen saturation (SmO₂) non-invasively by detecting oxyhaemoglobin and deoxyhaemoglobin in tissue. Multiple independent groups have documented abnormalities using NIRS and related methods in ME/CFS:

- McCully & Natelson (1999) found significantly slower post-exercise O₂ resaturation time constants in CFS patients (46.5 vs 29.4 seconds) — suggesting impaired oxidative metabolism or autonomic dysregulation of muscle blood flow @McCully1999NIRS.
- Vermeulen & Vermeulen van Eck (2014) documented decreased O₂ extraction at peak exercise via cardiopulmonary exercise testing (peak extraction 10.8 vs 13.5 ml/100ml in women; 13.7 vs 19.5 ml/100ml in men) — peripheral extraction failure independent of delivery @Vermeulen2014O2extraction.
- Miller et al.\ (2015) applied NIRS during a submaximal handgrip test in 16 ME/CFS vs 16 controls and found reduced haemoglobin changes at comparable perceived exertion, proposing NIRS as a PEM risk stratification tool @Miller2015NIRS.
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

A March 2026 randomised controlled trial delivered the most statistically robust pharmacological result yet seen in Long COVID fatigue --- using an antidepressant that likely works through mechanisms unrelated to mood. The result illuminates a molecular pathway --- sigma-1 receptor (S1R) agonism and ER stress suppression --- that connects SARS-CoV-2 biology, ME/CFS pathophysiology, and a set of existing, inexpensive, widely available drugs. This section develops that connection in full.

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
Four concerns temper interpretation:

1. *Baseline imbalance*: The placebo arm had slightly higher mean baseline fatigue (5.9 vs.\ 5.6) and a higher proportion of female participants (85.5% vs.\ 76.7%). Both differences favour fluvoxamine's apparent superiority. Whether these imbalances arose by chance or reflect inadequate randomisation strata is not reported.

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

*SARS-CoV-2 and S1R:* Gordon et al.\ (2020) mapped the entire SARS-CoV-2 protein interactome and found that viral non-structural proteins Nsp6 and Nsp8 directly bind the sigma-1 receptor @Gordon2020sigma1SARS. This is not incidental: Nsp6 and Nsp8 are both ER-localised replication proteins. By binding S1R, SARS-CoV-2 may co-opt ER proteostasis machinery for replication while simultaneously disrupting host stress responses.

*S1R agonism as therapeutic mechanism:*

Fluvoxamine is the most potent S1R agonist among commercially available SSRIs, with Ki approximately 36 nM at S1R vs.\ Ki 4,000--10,000 nM for other SSRIs @Hashimoto2021sigma1. At therapeutic doses (100 mg twice daily), plasma concentrations are sufficient to occupy S1R meaningfully. The proposed mechanism chain:

+ SARS-CoV-2 disrupts S1R function via Nsp6/Nsp8 binding
+ ER stress accumulates; IRE1$alpha$ activates the UPR; XBP-1 mRNA splicing drives pro-inflammatory gene expression
+ S1R agonism (fluvoxamine) stabilises ER proteostasis, suppresses IRE1$alpha$-mediated UPR, dampens downstream cytokine and interferon signalling
+ Reduced neuroinflammation and systemic inflammatory signalling

This mechanism was initially proposed to explain why fluvoxamine reduced clinical deterioration in acute COVID-19 in the Lenze et al.\ (2020) JAMA RCT @Lenze2020fluvoxamine (0 deteriorations in fluvoxamine arm vs.\ 6 [8.3%] in placebo, _n_=152). The same pathway, persisting post-acutely, may explain the REVIVE-TOGETHER fatigue result.

=== Connection to ME/CFS: WASF3, ER Stress, and Mitochondrial Dysfunction
<subsubsec:sigma1-mecfs-connection>

The sigma-1 / ER stress connection is not merely a Long COVID story. It converges with the central finding of ME/CFS mitochondrial research. Wang et al.\ (2023) identified WASF3 --- an actin nucleation protein upregulated in ME/CFS skeletal muscle --- as a mediator of exercise intolerance via ER stress--driven disruption of mitochondrial respiratory supercomplexes @wang2023wasf3. The pathway:

#box(stroke: 0.5pt, inset: 8pt, radius: 4pt)[
  *ER stress (any trigger)* $arrow.r$ *WASF3 upregulation* $arrow.r$ *mitochondrial supercomplex destabilisation* $arrow.r$ *Complex IV (cytochrome c oxidase) impairment* $arrow.r$ *ATP depletion + ROS generation* $arrow.r$ *more ER stress* [self-amplifying loop]
]

S1R agonism sits upstream of this loop. If S1R suppresses IRE1$alpha$-driven UPR and reduces ER stress, it could theoretically attenuate WASF3 upregulation and reduce mitochondrial supercomplex disruption. This is a hypothesis, not a tested claim --- but it is a mechanistically coherent one, grounded in two independently established pathways now connected by S1R biology.

#hypothesis(title: [Sigma-1 Agonism as Upstream Brake on the WASF3--ER Stress Loop])[
The WASF3-mediated mitochondrial dysfunction in ME/CFS is driven by persistent ER stress. S1R agonism suppresses IRE1$alpha$-mediated UPR, reducing ER stress signal amplitude. If ER stress is the proximal driver of WASF3 upregulation, S1R agonists should reduce WASF3 expression and partially restore mitochondrial supercomplex integrity.

*Certainty: 0.25* --- Two pathways (S1R--ER stress; WASF3--ER stress--mitochondria) are independently established; the connection between them is mechanistically plausible but untested.

*Testable predictions:*
- S1R agonist treatment reduces WASF3 protein expression in ME/CFS muscle biopsies or PBMCs
- S1R agonism improves mitochondrial supercomplex assembly in ex vivo ME/CFS cell preparations
- Patients with highest baseline WASF3 expression show greatest fatigue benefit from fluvoxamine
- Combination of S1R agonist + mitochondrial-targeted antioxidant (MitoQ, SS-31) shows synergy vs.\ either alone

*Limitations:* WASF3 was identified in skeletal muscle; S1R is most studied in neuronal and immune cell contexts. Cross-tissue extrapolation requires direct testing. The ER stress--WASF3 link is established in the WASF3 overexpression model; whether endogenous WASF3 upregulation in ME/CFS is IRE1$alpha$-dependent specifically has not been shown. S1R agonism at therapeutic fluvoxamine doses may not be sufficient to produce detectable WASF3 suppression.
] <hyp:sigma1-wasf3-brake>

=== Additional Pharmacological Mechanisms
<subsubsec:fluvoxamine-other-mechanisms>

S1R agonism is not fluvoxamine's only pharmacologically active pathway. Four additional mechanisms have been proposed, each with independent biological relevance to ME/CFS and Long COVID:

*1. Acid sphingomyelinase (ASM) inhibition:* All SSRIs inhibit ASM, the enzyme that cleaves sphingomyelin to generate ceramide. Ceramide-enriched membrane rafts facilitate viral entry and may maintain persistence of viral reservoir cells. ASM inhibition reduces ceramide levels, destabilising entry platforms and potentially reducing ongoing viral stimulation of the immune system. This mechanism is shared by all SSRIs and does not require S1R affinity specifically.

*2. Serotonin transporter (SERT) blockade:* The classical SSRI mechanism increases synaptic serotonin. In the gut, serotonin regulates motility and mucosal immune tone via 5-HT3/5-HT4 receptors; systemic serotonin signalling modulates platelet activation and vasoconstriction. Whether serotonin-pathway effects are relevant to the fatigue result is unclear; other SSRIs with comparable SERT affinity but lower S1R affinity have not consistently reproduced fluvoxamine's acute COVID and Long COVID results, weakening the SERT-specific hypothesis.

*3. CYP1A2 inhibition and drug interaction network:* Fluvoxamine is the most potent CYP1A2 inhibitor among SSRIs. This creates a pharmacokinetic interaction of clinical importance: CYP1A2 metabolises caffeine, melatonin, theophylline, duloxetine, clozapine, olanzapine, and several other drugs. In patients on CYP1A2 substrates, fluvoxamine will increase their plasma levels substantially. The CYP1A2 interaction is a safety consideration but also an unaddressed confound in the REVIVE-TOGETHER trial: patients consuming caffeine (the primary CYP1A2 substrate in everyday life) would have had substantially extended caffeine half-life ($sim$5 hours $arrow.r$ $sim$30 hours), which could independently reduce fatigue-related subjective effects and improve sleep. This confound was not addressed by the trial authors and was identified by independent community reviewers. It does not negate the trial result, but it should be prospectively controlled in replication studies.

*4. Anti-inflammatory and NF-$kappa$B suppression:* Multiple SSRIs show NF-$kappa$B inhibition in cell models, reducing downstream production of IL-6, TNF-$alpha$, and IL-1$beta$. Whether this occurs at therapeutic plasma concentrations in vivo is debated; it may contribute additively to the S1R-mediated UPR suppression.

=== The "Treatment $ne$ Mechanism" Epistemological Point
<subsubsec:treatment-ne-mechanism>

The REVIVE-TOGETHER trial has attracted commentary suggesting that fluvoxamine's efficacy implies a psychological or functional component to Long COVID. This inference is logically invalid and must be addressed explicitly.

A drug demonstrating efficacy does not illuminate the mechanism of the disease it treats. Aspirin reduces fever without fever being caused by aspirin deficiency. Statins reduce cardiovascular events without cardiovascular disease being caused by HMG-CoA reductase excess. The relevant question is not "what is this drug approved for?" but "what biological pathway does this drug activate at the dose and in the tissue where the disease pathology resides?"

Fluvoxamine was approved for OCD and depression based on its SERT inhibition. Its sigma-1 receptor affinity, ASM inhibition, CYP1A2 inhibition, and NF-$kappa$B suppression are pharmacological properties of the molecule that exist regardless of its approved indication. A drug's marketing authorisation is a regulatory category, not a mechanistic constraint. The REVIVE-TOGETHER result is best interpreted as provisional evidence that one or more of fluvoxamine's non-SERT mechanisms is relevant to Long COVID fatigue pathophysiology --- most plausibly S1R agonism given the converging lines of evidence. This interpretation is consistent with, not contradictory to, the biomedical model of post-infectious disease.

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
Among SSRIs, fluvoxamine has the highest S1R affinity (Ki $sim$36 nM). Fluoxetine has moderate affinity ($sim$240 nM); paroxetine and sertraline have low affinity. If S1R agonism is the active mechanism, then within-class differences should predict differential efficacy. Does the pattern of SSRI clinical outcomes in post-infectious fatigue match the rank order of S1R affinity? A retrospective analysis of SSRI outcomes in Long COVID registries stratified by S1R affinity rank would test this prediction at low cost.
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

*1. Other S1R agonists:* Several non-SSRI S1R agonists exist. Pridopidine (a dopamine stabiliser developed for Huntington's disease) is a highly selective S1R agonist with >100-fold selectivity over other receptors and is in human trials. Igmesine and cutamesine are investigational S1R agonists. Dehydroepiandrosterone (DHEA) has mild S1R agonist activity. Progesterone metabolites (notably allopregnanolone) also show S1R affinity. This creates an interesting hypothesis: DHEA supplementation, which some ME/CFS patients report mild benefit from, could be acting partially through S1R rather than purely androgen receptor mechanisms.

*2. ER proteostasis targeting:* If ER stress is upstream of WASF3, interventions that directly reduce ER stress load --- independent of S1R --- could also reduce WASF3 expression. 4-phenylbutyrate (4-PBA), an FDA-approved ER stress suppressor used in urea cycle disorders, has never been tested in ME/CFS. Tauroursodeoxycholic acid (TUDCA) is a bile acid with ER chaperone activity used in metabolic liver disease; its ER stress-reducing properties make it a low-risk candidate for a ME/CFS pilot trial.

*3. MAM calcium handling and mitochondrial bioenergetics:* S1R sits at MAM contact sites regulating IP3R3-mediated ER-to-mitochondria calcium transfer. Impaired MAM function could reduce mitochondrial matrix calcium, impairing calcium-sensitive dehydrogenase activation (pyruvate dehydrogenase, isocitrate dehydrogenase, $alpha$-ketoglutarate dehydrogenase). This creates a direct bridge from ER stress $arrow.r$ MAM dysfunction $arrow.r$ Krebs cycle suppression $arrow.r$ reduced acetyl-CoA flux --- connecting S1R biology to the metabolomics evidence of hypometabolism in ME/CFS.

*4. TRPM3 intersection:* TRPM3 --- a calcium-permeable TRP channel whose dysfunction has been identified in ME/CFS NK cells --- is also enriched at ER membranes and lipid rafts. Lipid raft composition is regulated in part by ceramide levels, which are controlled by ASM. Fluvoxamine's ASM inhibition would reduce ceramide, alter lipid raft composition, and could affect TRPM3 membrane localisation and function. This is highly speculative, but it creates a testable connection: does fluvoxamine restore TRPM3 function in ME/CFS NK cells ex vivo?

*5. The CYP1A2 paradox as a research tool:* The caffeine confound in REVIVE-TOGETHER, while a methodological limitation, also provides an opportunity. Melatonin is a high-affinity CYP1A2 substrate; fluvoxamine substantially increases melatonin half-life and plasma levels. If any component of fluvoxamine's benefit operates through enhanced melatonin bioavailability (circadian normalisation, antioxidant activity, mitochondrial protection), this is testable by comparing exogenous slow-release melatonin vs.\ fluvoxamine vs.\ combination in a ME/CFS fatigue trial --- with caffeine and melatonin metabolite levels measured prospectively.

#hypothesis(title: [DHEA--S1R Agonism: Mechanism Behind a Common Empirical Report])[
Low-dose DHEA supplementation is commonly reported by ME/CFS patients to modestly improve energy and cognitive function. The standard interpretation invokes androgen receptor signalling or adrenal axis support. An alternative mechanism: DHEA and its sulphate DHEA-S have documented S1R agonist activity. If S1R agonism is the active mechanism of fluvoxamine's Long COVID benefit, DHEA's reported ME/CFS benefit may reflect the same upstream pathway at lower potency.

*Certainty: 0.20* --- DHEA S1R agonism is established pharmacologically; clinical benefit in ME/CFS is anecdotal/case-series level; the mechanistic connection to S1R rather than androgen receptor is untested.

*Testable predictions:*
- DHEA-S levels correlate with UPR marker levels (BiP, CHOP) inversely in ME/CFS cohorts
- Ex vivo DHEA addition reduces ER stress markers in ME/CFS PBMCs comparably to fluvoxamine at equimolar S1R occupancy
- Supplementation benefit correlates with S1R occupancy (estimated from DHEA-S levels + S1R Ki) more than with androgen receptor activation markers
- S1R-selective agonist (pridopidine) produces comparable benefit to high-dose DHEA in a crossover pilot
] <hyp:dhea-s1r>

#open-question(title: [4-PBA and TUDCA in ME/CFS: Testing ER Stress Reduction Independent of S1R])[
If ER stress drives WASF3 upregulation and ME/CFS mitochondrial dysfunction, direct ER stress suppressors that do not require S1R (4-phenylbutyrate, TUDCA, arimoclomol) should produce comparable or greater benefit than S1R agonism. 4-PBA is FDA-approved (urea cycle disorders) with known human safety. TUDCA is available OTC. Neither has been tested in ME/CFS. A 3-arm pilot (4-PBA vs.\ TUDCA vs.\ placebo) measuring WASF3 expression, UPR markers, and FSS would simultaneously test the ER stress hypothesis and screen two low-risk candidates for a larger trial.
] <oq:er-stress-drugs-mecfs>

*Evidence Grade*: C (Long COVID RCT) / E (ME/CFS) --- REVIVE-TOGETHER provides strong Bayesian evidence in Long COVID fatigue; S1R--WASF3 mechanistic connection is hypothesis-level; no ME/CFS trial data exist; sigma-1 agonism across the class (fluvoxamine, pridopidine, DHEA) warrants systematic investigation

