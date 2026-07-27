# Brainstorm: Subjective-Measurable Discrepancy Index — Full Category Sweep

**Date:** 2026-07-27
**Agent:** scientific-insight-generator (deepseek-v4-pro)
**Topic slug:** `subjective-measurable-discrepancy-index`
**Phase 2 synthesis:** PROCEED — 9 strong papers
**Phase 3 integration:** 8 environments in ch15-integrative-models (achievement, synthesis, hypothesis, 2 speculations, limitation, 2 open-questions)
**Categories generated:** 1–12 (all)
**Decision:** PROCEED — all categories active

---

## Quality Ranking

Ideas ranked by combined factors: mechanistic plausibility, distinctiveness from existing ch15 environments, falsifiability, testability with existing technology, contribution to clinically actionable knowledge. All ideas carry `origin: brainstorm`.

---

### Tier 1: High Impact / Strongest Gaps Not Addressed by Existing ch15 Content

---

#### 1.1 The Discrepancy as an Energy-Conservation Signal: The Brain Detects Metabolic Flux Failure That Blood Tests Miss

**Category:** 1 — Novel Hypotheses
**Origin:** brainstorm

**Mechanistic rationale:** The brain's hypothalamus and brainstem nuclei continuously monitor metabolic state via AMPK, mTOR, and mitochondrial retrograde signaling (ROS, NAD+/NADH ratio, ATP/ADP ratio). These sensors detect FLUX failure — the rate of ATP production cannot meet demand — even when metabolite POOL sizes (blood glucose, lactate, pyruvate) are normal. This is the fundamental distinction between pool and flux: a dam can hold normal water volume (pool) while the outflow pipe is constricted (flux). Blood tests measure pools; the brain measures flux. The subjective report of fatigue, malaise, and "something is wrong" reflects the brain's correct detection of flux insufficiency. The objective tests return normal because they measure pools. The discrepancy is not a measurement failure or perceptual error — it is the correct operation of a metabolic sensor whose output has no correspondence in standard clinical labs. This hypothesis is distinct from the existing three explanatory models: it is not provocation-dependence (which says the pathology only appears under stress — here, the flux failure is continuous but invisible to pool assays), not CNS confinement (the signal originates in peripheral tissue mitochondria but is detected centrally via metabolic sensing), and not interoceptive amplification (the brain is correctly detecting a real signal — no amplification needed).

**Evidence link:** Mitochondrial dysfunction in ME/CFS is documented at the flux level (impaired phosphocreatine recovery on 31P-MRS post-exercise, impaired Complex V activity, reduced oxygen extraction on CPET) but NOT at the resting metabolite pool level (normal resting lactate, normal CK, normal glucose). Moezzi2025 showed haptoglobin depletion post-exertion but normal at rest — a flux signal invisible to single-draw sampling. Chapter 6 energy metabolism documents the pool/flux distinction across multiple studies. The hypothalamic metabolic sensing circuits (AMPK in arcuate nucleus, mTOR in lateral hypothalamus) are well-characterized in obesity/diabetes research but have not been applied to ME/CFS fatigue perception.

**Preliminary certainty:** 0.30 — the pool/flux distinction in ME/CFS metabolomics is well-documented (0.55 for flux abnormalities, 0.65 for normal resting pools), but the specific claim that central metabolic sensors mediate the discrepancy has zero direct evidence in ME/CFS. General neuroscience of hypothalamic metabolic sensing supports the pathway's existence (0.70) but its involvement in ME/CFS symptom perception is untested.

**Falsifiable prediction:** (a) ME/CFS patients should show impaired phosphocreatine recovery kinetics on 31P-MRS (muscle) that correlates with subjective fatigue severity (r >= 0.4), while RESTING phosphocreatine/ATP ratio is normal and does NOT correlate with subjective fatigue. (b) In healthy controls undergoing experimental ATP depletion (e.g., 2-deoxyglucose infusion, which reduces glycolytic flux without changing blood glucose pools), subjective fatigue should increase before blood metabolite pools change — the pool/flux dissociation is universal, not ME/CFS-specific. (c) Falsified if: resting metabolite pools predict subjective fatigue better than flux measures in ME/CFS — then the pool/flux distinction is not the explanatory mechanism.

**Non-specialist consequence:** The patient feels exhausted because their cells are running on fumes — but standard blood tests only measure how much fuel is in the tank, not how fast the engine can burn it. The tank is half-full; the problem is the fuel line is pinched.

---

#### 1.2 The Discrepancy as Temporal Decoupling: Subjective Integration vs. Objective Snapshot

**Category:** 1 — Novel Hypotheses
**Origin:** brainstorm

**Mechanistic rationale:** Subjective symptom reports integrate across DAYS TO WEEKS (the recall period of most validated instruments), while objective measures capture a single timepoint (one night in a sleep lab, one tilt test, one blood draw). If the disease fluctuates — and ME/CFS is characterized by fluctuation — the subjective report captures the worst moments (via peak-end rule and availability heuristic), while the objective measure randomly samples one data point from the distribution. The discrepancy is the difference between the distribution's tail (subjective) and a random sample from the distribution's body (objective). Two patients with identical objective physiology (same mean, same variance) could report completely different subjective severity if one patient weighs their worst moments more heavily. This is NOT interoceptive amplification (which says the perception is amplified) — this is a temporal sampling bias that would produce discrepancy even with PERFECT interoception. It is also distinct from provocation-dependence (which says the pathology is absent at rest): here, the pathology IS present at rest but FLUCTUATES, and the subjective report captures its peaks while the objective test randomly samples.

**Evidence link:** Friedberg2022 documented that patient-reported activity patterns (push-crash, limiting, pacing) did NOT differ between improvers and non-improvers at 6-month follow-up — but objective HRV did. This is consistent with subjective reports being insensitive to the distribution (they capture the perceived "typical state" which is biased toward the worst moments), while objective measures capture an average. The peak-end rule in symptom recall is well-established in pain research (Redelmeier & Kahneman 1996, colonoscopy pain study — peak pain + end pain predict recall, not total pain). Vergauwen2021 used 12-day diary vs. 12-day accelerometry — even with matched time windows, r=0.35-0.38, suggesting temporal integration alone doesn't fully explain the discrepancy but likely contributes.

**Preliminary certainty:** 0.40 — the peak-end rule in symptom recall is well-established (0.70 in general health psychology), but its specific contribution to the ME/CFS discrepancy has not been quantified. Vergauwen2021 provides indirect evidence (matched time windows still show discrepancy), suggesting temporal sampling is a partial but not complete explanation.

**Falsifiable prediction:** (a) In a 14-day continuous monitoring study (daily symptom rating + continuous HR/HRV/sleep staging via wearable), compute: (i) mean symptom rating vs. mean objective value (standard discrepancy), (ii) peak symptom rating vs. mean objective value (peak-end discrepancy), (iii) mean symptom rating vs. objective value during worst-3-days (matched-distribution discrepancy). If the matched-distribution correlation is significantly higher than the standard correlation (r increase >0.15), temporal decoupling is confirmed as a major component. (b) Falsified if: matched-distribution correlation is not significantly different from standard correlation — temporal sampling does not explain the discrepancy.

**Non-specialist consequence:** If you ask a patient "how was your month?" they remember the 3 days they couldn't get out of bed, not the 27 days they managed. If you measure their physiology on one of the 27 okay days, it looks normal. Both are "true" — they just sampled different parts of the distribution.

---

#### 1.3 The Discrepancy as Bayesian Precision-Weighting Pathology: Abnormally High Confidence in Interoceptive Prediction Errors

**Category:** 1 — Novel Hypotheses
**Origin:** brainstorm

**Mechanistic rationale:** In predictive processing, perception is Bayesian inference: the brain generates top-down predictions about internal states and updates them based on ascending sensory (interoceptive) prediction errors. The precision (inverse variance, confidence) assigned to prediction errors determines how strongly they update perception. Healthy brains assign LOW precision to small interoceptive fluctuations — a heart rate of 72 instead of 70 is treated as noise and filtered out. ME/CFS brains may assign ABNORMALLY HIGH precision to the same signals — every small fluctuation is treated as highly informative evidence that something is wrong. The conscious experience is of constant physiological distress because the brain cannot filter out normal homeostatic fluctuations. This is distinct from the existing interoceptive amplification model (Teodoro2018): amplification is about ATTENTIONAL capture (the patient pays excessive attention to body signals), while precision-weighting is about COMPUTATIONAL GAIN (the brain is biologically wired to treat body signals as highly informative, independent of whether attention is directed at them). Amplification is top-down (attention amplifies signals); precision-weighting could be either top-down (hyperprecise priors) or bottom-up (increased ascending signal precision). The distinction matters therapeutically: attention-based amplification responds to distraction (interoceptive training, CBT); precision-weighting pathology would require pharmacological modulation of gain control (noradrenergic, cholinergic, dopaminergic).

**Evidence link:** Predictive processing and precision-weighting are well-established computational frameworks in theoretical neuroscience (Hohwy 2013, Seth & Friston 2016, Barrett & Simmons 2015 for interoceptive predictive processing). Atropine/cholinergic modulation of interoceptive precision has been demonstrated experimentally (Harrison et al. 2021 — cholinergic agonists increase interoceptive precision). The DecodeME GWAS identified glutamatergic genes (SHISA6, UNC13C) — glutamatergic synapses are the primary site of precision-weighting computation (NMDA:AMPA ratio determines gain). The computational framework exists; the ME/CFS application is novel. The existing ch15 speculation (@spec:discrepancy-index-interoceptive-accuracy) mentions interoceptive accuracy but not precision-weighting as a distinct computational mechanism.

**Preliminary certainty:** 0.25 — the computational framework is well-established (0.70 in neuroscience generally), the cholinergic modulation of interoceptive precision is documented experimentally (0.50), but the application to ME/CFS has not been tested in any study. The DecodeME glutamatergic GWAS hits are suggestive (0.30 for their relevance to precision-weighting specifically) but the link is inferential.

**Falsifiable prediction:** (a) In a cardiac interoception task with variable sensory noise (heartbeat detection with ECG feedback at different signal-to-noise ratios), ME/CFS patients should show a computational signature of high precision-weighting: their perception should be overly influenced by ascending signals (high likelihood weight) relative to prior expectations, compared to healthy controls. Fit a hierarchical Bayesian observer model to behavior; patients' precision-weighting parameter (pi_likelihood) should be significantly higher than controls'. (b) Cholinergic antagonist (scopolamine, low dose) should reduce interoceptive precision more in ME/CFS patients than controls — restoring normal precision-weighting. (c) Falsified if: ME/CFS patients' computational parameters are indistinguishable from controls' in a formal Bayesian observer model of interoception.

**Non-specialist consequence:** The patient's experience isn't "I'm imagining things" or "I'm paying too much attention" — it's "my brain can't turn DOWN the volume on body signals." Every heartbeat, every blood pressure wobble, every metabolic shift feels like important news. Drugs that reduce the volume knob (not the signal itself) might work better than drugs that try to fix the signal.

---

#### 1.4 The Peripheral Washout Hypothesis: Molecular Signals That Clear Before Standard Phlebotomy

**Category:** 1 — Novel Hypotheses
**Origin:** brainstorm

**Mechanistic rationale:** Byrnes2009 found zero transcriptomic signal in peripheral blood — but what if the disease-relevant molecules are produced in tissue (muscle, brainstem, gut), released into blood, and cleared within MINUTES? If the half-life of the molecular signal in blood is shorter than the interval from symptom onset to blood draw, a single phlebotomy captures nothing. This is NOT the CNS confinement model (which says the signal never enters blood). It says the signal IS in blood — transiently. The discrepancy arises because patients integrate across many such pulses (and report their cumulative effect), while researchers sample at one random timepoint (and miss all of them). The model predicts that continuous or serial blood sampling (e.g., every 15 minutes for 4 hours post-exertion) would capture transient molecules that single-draw sampling misses entirely. This is directly analogous to hormone pulsatility: growth hormone is secreted in pulses lasting ~15 minutes — a single blood draw catches it only ~25% of the time in healthy individuals. The diagnostic test for GH deficiency is therefore serial sampling or provocation testing — exactly the paradigm the discrepancy literature says ME/CFS needs.

**Evidence link:** Moezzi2025 demonstrated haptoglobin depletion is detectable post-exertion but absent at rest — a signal with transient kinetics. vanCampen2021 showed CBF decline during tilt that recovers — the signal exists but disappears within minutes of returning to supine. CFS twin PSG studies (Watson2003, Armitage2009) measured one night — if sleep pathology is episodic (only during crashes), a single night of PSG would miss it. The hormone pulsatility analogy is well-established in endocrinology (GH, ACTH, LH all require serial/provocation testing). Byrnes2009 used a single blood draw in each twin — the null result is fully predictable under the peripheral washout model.

**Preliminary certainty:** 0.35 — the pulsatility analogy is strong in endocrinology (0.80 for hormone pulsatility generally), Moezzi2025 and vanCampen2021 provide indirect evidence of transient signals in ME/CFS (0.40 each), but no serial blood sampling study has been conducted in ME/CFS to directly test the washout hypothesis. Byrnes2009's null result is consistent with the model but does not confirm it.

**Falsifiable prediction:** (a) In 50 ME/CFS patients, serial blood draws (0, 15, 30, 60, 120, 240 min post-standardized exertion) should reveal >=5 molecules that are significantly elevated at one or more intermediate timepoints but normal at T0 and T240, compared to 50 matched healthy controls. (b) The number of "missed" signals (molecules abnormal at intermediate timepoints that would be classified as normal based on T0 alone) should be >0 in >30% of patients. (c) Falsified if: serial sampling reveals zero transient molecular signals not captured at T0 — then the washout hypothesis is irrelevant and CNS confinement or true null (no peripheral signal) are the surviving explanations.

**Non-specialist consequence:** The disease may be like a geyser — you have to be there when it erupts. Show up at a random time with a bucket (blood tube): you get nothing. The patient lives there 24/7 and knows the geyser erupts every few hours.

---

### Tier 2: Research Directions, Interventions, and Model Extensions

---

#### 2.1 The Discrepancy Index Validation Study: From Conceptual Framework to Clinical Instrument

**Category:** 2 — Research Directions
**Origin:** brainstorm

**Mechanistic rationale:** The existing ch15 `#limitation` explicitly states: "The discrepancy index proposed here is a conceptual framework synthesizing cross-domain evidence, not a validated clinical instrument." The most important research direction is to convert it. Design: a prospective study (n=200 ME/CFS patients + 100 healthy controls + 50 disease controls with rheumatoid arthritis) measuring: (a) discrepancy across 5 domains: sleep (PSQI / PSG efficiency), autonomic (COMPASS-31 / QASAT), activity (diary / 14-day actigraphy), cognition (CFQ / neuropsychological battery), biomarker (symptom severity VAS / CRP + cytokine panel). (b) Known confounds: illness duration, severity (mild/moderate/severe by IOM criteria), psychiatric comorbidity (HADS), medications (complete list), timing of assessments. (c) Outcome validators: treatment response (midodrine trial for autonomic, LDN trial for immune-inflammatory, CoQ10 trial for metabolic), 12-month longitudinal trajectory (improvement vs. deterioration), and GPCR autoantibody status (ELISA panel). The study would establish: (i) domain weights — which domains contribute most to diagnostic and prognostic information, (ii) optimal cut-points — which discrepancy magnitudes best discriminate subtypes, (iii) test-retest reliability — ICC at 4-week interval, (iv) sensitivity/specificity against gold standards.

**Evidence link:** The existing ch15 content provides all theoretical motivation. Novak2024 (n=2627), Watson2003/2004, Vergauwen2021, Teodoro2018, Byrnes2009, and Friedberg2022 collectively establish the phenomenon and candidate instruments. The study design adds validation components currently absent. The Samuel2019Nof1 framework provides the Bayesian methodology for the treatment-response validation arm.

**Preliminary certainty:** n/a — methodological proposal, not a substantive claim.

**Falsifiable prediction:** (a) The discrepancy index (optimally weighted combination of 5 domains) should show superior prognostic accuracy (12-month outcome prediction) compared to illness severity alone (AUC difference >=0.10). (b) High-discrepancy patients should show better response to midodrine (effect size d >=0.4 vs. low-discrepancy patients). (c) Low-discrepancy patients should show better response to LDN (d >=0.4 vs. high-discrepancy patients). (d) Falsified if: the discrepancy index adds zero prognostic or treatment-response prediction value beyond illness severity and duration.

**Non-specialist consequence:** This study would determine whether the discrepancy index is a real clinical tool or just a clever academic observation. Without it, everything else in this brainstorm is armchair theorizing.

---

#### 2.2 Real-Time Subjective-Objective Coupling During Tilt Test: Does Concurrent Measurement Bridge the Gap?

**Category:** 2 — Research Directions
**Origin:** brainstorm

**Mechanistic rationale:** The existing `#open-question` asks: "Is there any instrument — existing or designable — that would bridge the gap?" The candidate: real-time symptom rating DURING objective testing, rather than retrospective questionnaires. Design: during a standard tilt table test with continuous HR/BP/CBF monitoring, the patient rates symptoms (dizziness, brain fog, palpitations, fatigue) on a 0-10 scale every 2 minutes. Compare: (a) retrospective COMPASS-31 completed AFTER the tilt test (standard approach), (b) concurrent moment-by-moment ratings during the test (novel approach), (c) continuous physiology (HR, BP, CBF). Hypothesis: concurrent ratings will correlate with physiology (r >=0.4) while retrospective ratings will not (r ~0.0), because: (i) retrospective ratings integrate across the entire experience with peak-end bias, (ii) concurrent ratings capture the moment-by-moment coupling, (iii) autonomic symptoms are dynamic (orthostatic HR changes minute-by-minute) and retrospective averaging obscures the temporal relationship.

**Evidence link:** Ecological momentary assessment methodology (Shiffman 2008) demonstrates that concurrent symptom ratings capture dynamics that retrospective questionnaires miss. Novak2024 used retrospective COMPASS-31 (asking about "the past month") — the maximal possible temporal mismatch with a 45-minute tilt test. vanCampen2021 measured CBF during tilt but did not collect concurrent symptom ratings.

**Preliminary certainty:** n/a — methodological proposal.

**Falsifiable prediction:** (a) Concurrent symptom-physiology correlation (r_concurrent) > retrospective symptom-physiology correlation (r_retrospective) by >=0.25. (b) If r_concurrent >=0.4 and r_retrospective <=0.1, the gap is resolved by measurement paradigm. (c) If r_concurrent <=0.1, the gap persists even with optimal measurement — the constructs are ontologically distinct.

**Non-specialist consequence:** If patients accurately report their symptoms in real time while their physiology is being measured, the "discrepancy" isn't that patients can't perceive their body — it's that we've been asking them the wrong question at the wrong time.

---

#### 2.3 Serial Blood Sampling Post-Exertion: Mapping the Temporal Kinetics of the Molecular Signal

**Category:** 2 — Research Directions
**Origin:** brainstorm

**Mechanistic rationale:** Direct test of the peripheral washout hypothesis (1.4) and the temporal decoupling model (1.2). Design: 50 ME/CFS patients undergo standardized submaximal CPET. Blood drawn at T=0 (pre-exertion), then 15min, 30min, 1h, 2h, 4h, 8h, 24h, and 48h post-exertion. At each timepoint: metabolomics (LC-MS untargeted), proteomics (SomaScan or Olink), cytokine panel (multiplex), haptoglobin, and standard clinical labs. Same protocol for 20 healthy controls (matched age/sex) and 20 disease controls (RA patients, matched fatigue severity). Analysis: (a) For each molecule, identify the time window of peak abnormality. (b) For each patient, compute fraction of molecules abnormal at >=1 timepoint that are NORMAL at T0 (the "miss rate" of standard single-draw phlebotomy). (c) Cluster patients by their temporal response profiles (peak-at-2h vs. peak-at-24h vs. flat). (d) Test whether temporal profile clusters predict CPET parameters, subjective PEM severity, and illness duration.

**Evidence link:** Moezzi2025 (haptoglobin post-exertion), vanCampen2021 (CBF during tilt), and the CPET literature collectively motivate serial sampling. No study has performed comprehensive multi-omics serial sampling post-exertion in ME/CFS.

**Preliminary certainty:** n/a — methodological proposal.

**Falsifiable prediction:** (a) >=20% of ME/CFS patients show >=5 molecules that are abnormal at >=1 intermediate timepoint but normal at T0 and T48. (b) The temporal profile (peak time, amplitude, recovery half-life) differs between ME/CFS and RA controls for >=3 molecules. (c) Falsified if: zero patients show transient signals not captured at T0 — all abnormality is either permanent (captured at any timepoint) or absent.

**Non-specialist consequence:** If a patient's abnormal signal appears 2 hours after exercise and is gone by the 24-hour mark, every ME/CFS study that drew blood at a random clinic visit may have been drawing blanks — the signal was there, just not at that moment.

---

#### 2.4 Between-Domain Discrepancy Consistency: Is the Discrepancy a Patient-Level Trait or Domain-Specific?

**Category:** 2 — Research Directions
**Origin:** brainstorm

**Mechanistic rationale:** The existing ch15 constructs treat the discrepancy as a property of the MEASUREMENT DOMAIN. But if the discrepancy is partly a patient-level trait (interoceptive style, precision-weighting, recall bias), patients should show CONSISTENT discrepancy across domains. If the discrepancy is domain-specific, patients may have high discrepancy in one domain and normal in another — the index must be per-domain, not a single score. Design: 100 ME/CFS patients complete all 5 domain assessments with discrepancy scores computed per domain. Compute the intraclass correlation (ICC) of discrepancy across domains within patients. If ICC > 0.6: single-trait model (the scalar discrepancy index is valid). If ICC < 0.3: domain-specific model (discrepancy index must be a vector). If 0.3 < ICC < 0.6: mixed model.

**Evidence link:** Teodoro2018 proposed a unified mechanism (attention-to-body -> cognitive impairment across domains) — this predicts high cross-domain consistency. No study has measured cross-domain discrepancy consistency in the same patients.

**Preliminary certainty:** n/a — methodological proposal.

**Falsifiable prediction:** (a) ICC > 0.5: single-trait model supported. (b) ICC < 0.3: domain-specific model; the scalar index is invalid. (c) Falsified for single-trait: if ICC < 0.3 — the scalar index that ch15's `#hypothesis` proposes is an oversimplification.

**Non-specialist consequence:** If the same patient shows wild over-reporting of sleep problems but perfectly accurate reporting of autonomic symptoms, the "discrepancy" isn't about the patient — it's about which instrument you use. A single discrepancy score would be like averaging someone's height and weight into one number.

---

#### 3.1 Guanfacine for Interoceptive Precision Reduction: Pharmacologically Dampening the Gain on Body Signals

**Category:** 3 — Drug/Medication Ideas
**Origin:** brainstorm

**Mechanistic rationale:** Guanfacine (alpha2A-adrenoceptor agonist) reduces locus coeruleus (LC) firing -> reduces norepinephrine release both centrally (prefrontal cortex) and peripherally (sympathetic outflow). Norepinephrine enhances the signal-to-noise ratio in sensory processing by increasing the gain of afferent signals relative to spontaneous firing. Reducing NE release via alpha2A agonism would therefore: (a) reduce the amplitude of ascending interoceptive signals, (b) reduce the computational gain (precision) assigned to those signals. The patient would still experience their physiology, but with less amplification. This is mechanistically distinct from guanfacine's existing use in ME/CFS (where its benefit is attributed to improved prefrontal cognitive function via catecholamine inverted-U). Here, the target is the interoceptive processing gain, not cognitive function.

**Evidence link:** Guanfacine's alpha2A mechanism and reduction of LC firing and NE release is well-characterized pharmacology (certainty 0.80). The role of NE in sensory signal-to-noise ratio enhancement is a canonical neuroscience principle (Aston-Jones & Cohen 2005, adaptive gain theory — certainty 0.70). The application to interoceptive precision is novel.

**Preliminary certainty:** 0.20 — the pharmacology is well-established but the application to interoceptive precision and discrepancy reduction has zero direct evidence.

**Falsifiable prediction:** (a) In a within-patient crossover (guanfacine 0.5-1 mg nightly x 4 weeks vs. placebo x 4 weeks, n>=30), guanfacine reduces the autonomic discrepancy index (COMPASS-31 / QASAT difference) compared to placebo by >=0.3 SD. (b) Guanfacine reduces interoceptive accuracy on a cardiac heartbeat detection task — patients become LESS accurate at detecting their heartbeat. (c) Falsified if: guanfacine does not change the discrepancy index or interoceptive accuracy.

**Non-specialist consequence:** Most ME/CFS drugs try to FIX what's broken in the body. Guanfacine, in this hypothesis, doesn't fix anything — it turns DOWN the alarm that's been ringing at full volume because the amplifier is stuck on high gain.

---

#### 3.2 Low-Dose Propranolol as a Discrepancy Modulator: Reducing the Peripheral Signal That Drives Interoceptive Noise

**Category:** 3 — Drug/Medication Ideas
**Origin:** brainstorm

**Mechanistic rationale:** If the discrepancy is driven by excessive interoceptive signal amplitude (the body IS producing more fluctuations — autonomic instability, HR lability, BP swings — and the brain is accurately perceiving them), then reducing the PERIPHERAL signal should reduce the discrepancy. Low-dose propranolol (10-20 mg, primarily beta1 blockade at this dose) reduces the sympathetic component of HR variability, dampening the physiological fluctuations that drive interoceptive input. This is the PERIPHERAL analogue of guanfacine's CENTRAL gain-reduction. A differential response to the two drugs would distinguish central vs. peripheral contributions: (a) if guanfacine works but propranolol doesn't -> central precision-weighting, (b) if propranolol works but guanfacine doesn't -> peripheral signal excess, (c) if both work -> both contributions operate.

**Evidence link:** Novak2024 documented autonomic dysfunction across 2,627 patients — the autonomic system IS producing abnormal fluctuations in ME/CFS. Propranolol reduces HRV in healthy controls (certainty 0.80). No study has tested propranolol's effect on interoceptive measures or subjective-objective discrepancy.

**Preliminary certainty:** 0.25 — the peripheral signal excess model has stronger evidence in ME/CFS than the central precision-weighting model, but propranolol's specific effect on discrepancy has zero direct evidence.

**Falsifiable prediction:** (a) In a within-patient crossover (propranolol 10-20 mg x 4 weeks vs. placebo, n>=30), propranolol reduces the autonomic discrepancy index by >=0.3 SD. (b) Propranolol's effect on discrepancy index correlates with baseline HRV suppression (r >=0.4). (c) Falsified if: propranolol does not reduce the discrepancy index.

**Non-specialist consequence:** Your heart rate is bouncing around, your blood pressure is wobbling, your body is sending a constant stream of "something's wrong" signals up to your brain. Propranolol turns down the volume of those signals — not by changing your brain, but by smoothing out the noisy body they come from.

---

#### 3.3 Amantadine as a CNS-Compartment Diagnostic Probe: If a CNS-Only Drug Works, the Pathology is CNS-Confined

**Category:** 3 — Drug/Medication Ideas
**Origin:** brainstorm

**Mechanistic rationale:** The CNS confinement model (existing ch15 synthesis) proposes that the primary pathology is CNS-based and not reflected in peripheral blood. A direct test: administer a drug that acts EXCLUSIVELY in the CNS and measure whether it improves subjective symptoms. Amantadine (dopamine releaser + weak NMDA antagonist) is primarily CNS-active. If amantadine improves fatigue and brain fog, it supports the CNS confinement model. If it produces no improvement, CNS confinement loses a key prediction. The same logic applies to other CNS-selective drugs: memantine, modafinil, pramipexole. A response to ANY strengthens CNS confinement; a response to NONE weakens it.

**Evidence link:** Amantadine is FDA-approved for Parkinson's and used off-label for MS fatigue (Cochrane review 2007 — certainty 0.50). DecodeME GWAS identified glutamatergic genes — supporting CNS glutamatergic pathology. The existing ch15 already proposes CNS confinement.

**Preliminary certainty:** 0.15 — the pharmacodiagnostic logic is sound but amantadine has never been trialed in ME/CFS.

**Falsifiable prediction:** (a) In N-of-1 trials (n>=20, amantadine 100 mg x 2 weeks vs. placebo, crossover), amantadine reduces subjective fatigue by >=0.5 SD. (b) Amantadine-responsive patients should show subjective improvement WITHOUT change in peripheral biomarkers. (c) Falsified if: zero patients respond to amantadine.

**Non-specialist consequence:** If a drug that only works in the brain improves your ME/CFS symptoms, the problem is probably in your brain — not as "it's all in your head," but as "the biology we need to fix is upstream of what blood tests can see."

---

#### 4.1 Magnesium Threonate for NMDA-Mediated Interoceptive Amplification Dampening

**Category:** 4 — Supplement/Nutraceutical Ideas
**Origin:** brainstorm

**Mechanistic rationale:** Magnesium threonate crosses the blood-brain barrier and increases brain synaptic magnesium concentration. Synaptic magnesium is the endogenous voltage-dependent NMDA receptor blocker. If the interoceptive amplification model involves NMDA-mediated signal amplification in interoceptive circuits (insula, anterior cingulate), increasing synaptic magnesium should dampen this amplification by raising the threshold for NMDA receptor activation. The predicted effect: reduced subjective symptom intensity disproportionate to any objective change -> narrowed discrepancy index.

**Evidence link:** Magnesium threonate's BBB penetration is documented (Slutsky 2010, Neuron — rat; Liu 2016, randomized trial — older adults with cognitive impairment, certainty 0.60/0.40). The application to interoceptive amplification is novel.

**Preliminary certainty:** 0.15 — the BBB penetration is established but the link from synaptic magnesium -> NMDA dampening -> interoceptive modulation -> discrepancy reduction is a 4-step inference chain with zero direct evidence in ME/CFS.

**Falsifiable prediction:** (a) In N-of-1 trials (n>=20, magnesium threonate 1-2 g/day x 4 weeks vs. placebo), magnesium threonate reduces the discrepancy index (pooled across domains) by >=0.3 SD. (b) Responders should show reduced interoceptive accuracy on heartbeat detection task. (c) Falsified if: magnesium threonate does not change discrepancy index or interoceptive accuracy.

**Non-specialist consequence:** Magnesium threonate isn't trying to give you more energy or reduce inflammation — it's trying to turn down the "amplifier" in your brain that makes every body sensation feel urgent and alarming.

---

#### 4.2 Creatine Monohydrate as an Energy-Signal Restorer: Silencing the Metabolic Distress Signal

**Category:** 4 — Supplement/Nutraceutical Ideas
**Origin:** brainstorm

**Mechanistic rationale:** If the energy-conservation hypothesis (1.1) is correct — the brain's metabolic sensors detect flux insufficiency and generate fatigue — then restoring the ATP/ADP ratio via creatine would reduce the metabolic distress signal. Creatine monohydrate (5 g/day) increases brain phosphocreatine, providing a larger buffer and faster ATP resynthesis during metabolic demand. The target here is the hypothalamic metabolic sensor, not the muscle. Prediction: creatine should reduce fatigue severity MORE in patients with high autonomic discrepancy (where metabolic sensing is intact and driving the subjective report) than in patients with low discrepancy.

**Evidence link:** Brain phosphocreatine increase with creatine supplementation is documented in healthy humans (Rae 2003, 31P-MRS — certainty 0.65). AMPK hypothalamic metabolic sensing is well-characterized (0.70). The link from creatine -> phosphocreatine buffer -> AMPK silencing -> reduced fatigue perception has zero direct evidence.

**Preliminary certainty:** 0.20 — each component of the pathway is independently plausible but the full chain has not been tested in any study.

**Falsifiable prediction:** (a) In N-of-1 trials (n>=20, creatine 5 g/day x 4 weeks vs. placebo), creatine reduces subjective fatigue by >=0.4 SD while CPET parameters improve by <=0.2 SD — disproportionate subjective improvement. (b) Creatine responders should show higher baseline discrepancy index than non-responders. (c) Falsified if: creatine improves subjective and objective equally or if effect is independent of baseline discrepancy.

**Non-specialist consequence:** The fatigue isn't coming from your muscles running out of energy — it's coming from your brain DETECTING that your muscles are running low on energy reserves. Creatine fills the reserves, the brain stops sounding the alarm.

---

#### 4.3 NAC for Glutamatergic Homeostasis in Interoceptive Circuits

**Category:** 4 — Supplement/Nutraceutical Ideas
**Origin:** brainstorm

**Mechanistic rationale:** N-acetylcysteine (NAC) modulates the cystine-glutamate antiporter (System xc-), normalizing extrasynaptic glutamate levels. Extrasynaptic glutamate controls tonic NMDA receptor activation. If ME/CFS involves glutamatergic dysfunction in interoceptive circuits, NAC could normalize extrasynaptic glutamate, restore normal NMDA gain, and reduce interoceptive amplification. NAC is already discussed in the paper (glutathione, Nrf2, hormesis) — this is a different mechanism: glutamatergic homeostasis rather than antioxidant or hormetic. The distinction matters because: (a) effective dose may differ, (b) responders may be different (glutamatergic -> high cognitive/affective discrepancy; antioxidant -> high inflammatory/oxidative discrepancy).

**Evidence link:** NAC's modulation of cystine-glutamate antiporter is well-documented (Baker 2003, Kalivas 2009 — certainty 0.70). NAC for compulsive behaviors attributed to glutamatergic normalization (certainty 0.45). The application to interoceptive amplification is novel.

**Preliminary certainty:** 0.15 — the glutamate-modulating mechanism is established, but the specific application to interoceptive processing in ME/CFS has zero direct evidence.

**Falsifiable prediction:** (a) In N-of-1 trials (n>=20, NAC 1200-2400 mg/day x 4 weeks vs. placebo), NAC reduces the cognitive discrepancy index by >=0.3 SD. (b) NAC responders should show elevated baseline glutamatergic biomarkers. (c) Falsified if: NAC does not change cognitive discrepancy index.

**Non-specialist consequence:** Your brain fog might not be from brain inflammation or low energy — it might be from too much glutamate keeping your brain's volume knob stuck on "max." NAC helps clear the excess glutamate, and your brain can finally turn the volume back down.

---

#### 5.1 Interoceptive Training via Heartbeat Perception Feedback: Recalibrating the Interoceptive Gain

**Category:** 5 — Non-Pharmacological Interventions
**Origin:** brainstorm

**Mechanistic rationale:** Heartbeat perception training (patient counts heartbeats, receives ECG-based feedback, 8 sessions over 4 weeks) improves interoceptive accuracy in healthy controls. In ME/CFS, if the problem is ABNORMALLY HIGH interoceptive accuracy, training provides EXTERNAL CALIBRATION — teaching the patient that their perception of "racing heart" does not correspond to actual tachycardia. Over repeated sessions, the patient recalibrates their interpretation: "this is a normal heart rate, not a crisis signal." This is interoceptive REAPPRAISAL, not accuracy improvement. If the discrepancy is driven by MISINTERPRETATION of normal signals, training should reduce it. If driven by genuinely abnormal physiology, training won't help.

**Evidence link:** Heartbeat perception training is standardized in interoception research (Schandry 1981, Garfinkel 2015 — certainty 0.60 for healthy controls). Applications to anxiety disorders show some benefit (certainty 0.35). No study in ME/CFS.

**Preliminary certainty:** 0.20 — the training paradigm exists but the application to ME/CFS discrepancy reduction is untested.

**Falsifiable prediction:** (a) After 8 sessions of heartbeat perception training (n>=30 ME/CFS vs. waitlist), autonomic discrepancy decreases by >=0.3 SD. (b) Effect should be domain-specific — autonomic decreases, sleep does not. (c) Falsified if: training does not reduce the discrepancy index.

**Non-specialist consequence:** Your heart isn't actually racing — but your brain has learned to interpret every heartbeat as a warning. Eight sessions of "feel your heartbeat, then see what it actually is" retrains your brain to stop overreacting to normal heart activity.

---

#### 5.2 Slow-Paced Breathing for Autonomic Calibration: Real-Time Biofeedback as Interoceptive Recalibration

**Category:** 5 — Non-Pharmacological Interventions
**Origin:** brainstorm

**Mechanistic rationale:** Slow-paced breathing (6 breaths/min, 4 weeks daily, guided by smartphone app) enhances baroreflex sensitivity and increases HRV. But the mechanism for discrepancy reduction is the EXPERIENCE of autonomic variability in a controlled, predictable context. During SPB, the patient WATCHES their heart rate rise and fall in a regular, rhythmic pattern synchronized with breathing. They learn: heart rate variability is NORMAL and predictable — not a sign of autonomic crisis. The sensation of HR increase is SAFE when part of a breathing cycle. This is interoceptive EXPOSURE THERAPY. The discrepancy reduces because the patient no longer labels normal autonomic fluctuations as pathological. Distinct from SPB's existing use in ME/CFS (HRV improvement, vagal tone) — the mechanism here is PSYCHOLOGICAL RECALIBRATION enabled by a physiological intervention.

**Evidence link:** SPB reduces anxiety and improves HRV (certainty 0.60). HRV biofeedback is established for anxiety disorders. The application to ME/CFS discrepancy reduction is novel.

**Preliminary certainty:** 0.25 — SPB's HRV and anxiety effects are well-documented, but the discrepancy-reduction claim via interoceptive recalibration has zero direct evidence.

**Falsifiable prediction:** (a) In 4-week SPB (n>=30 ME/CFS vs. sham breathing control), SPB reduces autonomic discrepancy index by >=0.3 SD vs. sham. (b) Discrepancy reduction should correlate with pre-post change in body vigilance (Body Vigilance Scale). (c) Falsified if: SPB improves objective HRV but doesn't change the discrepancy index.

**Non-specialist consequence:** Breathing slowly for 15 minutes a day while watching your heart rate rise and fall on your phone teaches your brain something powerful: "That racing-heart feeling isn't a crisis. It's just my body doing what bodies do. I can handle it."

---

#### 5.3 Wearable-Guided Pacing with Objective-Subjective Feedback Loop

**Category:** 5 — Non-Pharmacological Interventions
**Origin:** brainstorm

**Mechanistic rationale:** An 8-week protocol: patient wears continuous HR/HRV monitor and rates symptoms (fatigue, brain fog, pain, PEM risk) 4x/day via smartphone app. Each evening, they receive an auto-generated feedback report showing: (a) HR data with over-exertion events flagged, (b) symptom ratings graphed against HR data (lagged by 2h, 4h, 8h to reveal temporal decoupling), (c) a discrepancy score for the day. Over 8 weeks, patients develop their own calibration — they learn their individual temporal lag, their individual HR threshold for PEM, and the relationship between how they FEEL and what their OBJECTIVE DATA show. Outcome: reduced discrepancy index, reduced PEM frequency. This is a direct test of the temporal decoupling model (1.2) — the discrepancy narrows when objective data is continuously available.

**Evidence link:** EMA + wearable monitoring is established (Palmius 2017, epilepsy — certainty 0.50). HR-guided pacing is practiced by many ME/CFS patients (community knowledge, not peer-reviewed). The feedback-loop protocol's effect on discrepancy has zero direct evidence.

**Preliminary certainty:** 0.25 — the technology components exist but the protocol's effect on discrepancy reduction has zero direct evidence.

**Falsifiable prediction:** (a) After 8 weeks of wearable-guided pacing with feedback (n>=30 ME/CFS vs. waitlist), activity discrepancy index decreases by >=0.3 SD. (b) PEM days/month decreases by >=20% vs. baseline. (c) Falsified if: the feedback loop does not change discrepancy index or PEM frequency.

**Non-specialist consequence:** Instead of trying to figure out whether you're pushing too hard based on how you feel (which might be wrong), your smartwatch shows you — in real time, every day — exactly how your body is responding. After two months, you've learned to read your own physiology from the data, and you crash less.

---

#### 6.1 Magnesium Threonate + Guanfacine: Dual-Target Interoceptive Gain Reduction

**Category:** 6 — Combinations + Access
**Origin:** brainstorm

**Mechanistic rationale:** Magnesium threonate (4.1) and guanfacine (3.1) target interoceptive amplification at different nodes: (a) magnesium threonate increases synaptic Mg2+, blocking NMDA receptor Ca2+ influx postsynaptically — reducing amplification of ascending interoceptive signals at cortical areas, (b) guanfacine reduces LC firing -> reduces NE release -> reduces precision-weighting on ascending signals — reducing how much the brain TRUSTS signals before they're amplified. Dual-target logic: guanfacine reduces incoming signal priority; magnesium threonate reduces postsynaptic amplification. The combination should produce larger discrepancy reduction than either alone.

**Evidence link:** Each component's mechanism is independently supported (see 3.1 and 4.1). The additive/synergistic logic is standard pharmacology but the specific combination has zero evidence.

**Preliminary certainty:** 0.10 — each individual component has low certainty; the combination adds mechanistic rationale but no empirical weight.

**Falsifiable prediction:** (a) In 2x2 factorial (guanfacine vs. placebo x magnesium threonate vs. placebo, n>=40/cell), combination reduces discrepancy index by >=0.4 SD, exceeding each monotherapy by >=0.2 SD. (b) Falsified if: combination effect is not significantly larger than best monotherapy.

**Non-specialist consequence:** If guanfacine makes your brain take body signals less seriously, and magnesium threonate makes the signals less intense when they do arrive, the combination might actually turn down the interoceptive alarm system — not just muffle it.

---

#### 6.2 CoQ10 + Creatine: Dual Energy-System Restoration for Metabolic Distress Signal Suppression

**Category:** 6 — Combinations + Access
**Origin:** brainstorm

**Mechanistic rationale:** If the energy-conservation model (1.1) is correct, dual restoration at two points should be more effective: (a) CoQ10 improves ETC efficiency (production rate), (b) Creatine increases phosphocreatine buffer (rapid ATP resynthesis during demand spikes). Together they stabilize ATP/ADP flux across steady-state and transient demand — silencing the hypothalamic AMPK distress signal. Each alone provides partial flux restoration; together they provide sufficient flux to fall below alarm threshold. Different rationale from existing ch06/ch15 discussions (which frame them as mitochondrial remedies). Here, the target is the SENSOR, not the mitochondria.

**Evidence link:** CoQ10 ETC role (certainty 0.80); creatine phosphocreatine buffer (certainty 0.85). The dual flux + buffer logic is standard bioenergetics. The sensory-quieting application is novel and untested.

**Preliminary certainty:** 0.20 — the bioenergetic rationale is strong but the sensory-quieting application has zero direct evidence.

**Falsifiable prediction:** (a) In 2x2 factorial (CoQ10 vs. placebo x creatine vs. placebo, n>=30/cell, 6 weeks), combination reduces subjective fatigue by >=0.5 SD, exceeding monotherapies by >=0.2 SD. (b) Discrepancy index reduction in combination should be >=0.3 SD greater than monotherapies. (c) Falsified if: combination effect equals best monotherapy.

**Non-specialist consequence:** Your energy crisis might be like a car with both a weak fuel pump (CoQ10) and a small battery (creatine). Fixing the fuel pump helps, but the battery still drains fast. Fixing the battery helps, but the fuel still trickles. Fix both, and the engine finally runs smoothly — and your brain stops screaming that you're running on empty.

---

#### 6.3 The Discrepancy-Targeted Sequential Polypharmacy Protocol

**Category:** 6 — Combinations + Access
**Origin:** brainstorm

**Mechanistic rationale:** Rather than treating symptoms, treat the DISCREPANCY. A structured sequential protocol: Step 1: Measure discrepancy across all 5 domains. Identify the domain with the LARGEST discrepancy. Step 2: Select domain-matched intervention: autonomic discrepancy -> guanfacine or propranolol; sleep -> suvorexant + CBT-I; cognitive -> amantadine or modafinil; activity -> creatine + wearable-guided pacing; biomarker -> treat objective abnormality. Step 3: After 4 weeks, reassess. If leading discrepancy narrowed but another domain now largest, shift. Step 4: Continue cycling until all domains below threshold or no further response. The protocol is discrepancy-guided, not symptom-guided. If reducing discrepancy improves function, the discrepancy is causal. If reducing discrepancy leaves function unchanged, the discrepancy is epiphenomenal.

**Evidence link:** The protocol assembles existing and proposed interventions at varying certainty levels. The sequential logic is analogous to hypertension treatment algorithms.

**Preliminary certainty:** 0.10 — a protocol assembled from low-certainty components is itself low-certainty.

**Falsifiable prediction:** (a) In N-of-1 series (n>=30, 16-week protocol), >=50% of patients achieve discrepancy-reduction response (>=0.5 SD) in >=1 domain. (b) Discrepancy reduction correlates with functional improvement (SF-36, r >=0.4). (c) Falsified if: <20% achieve discrepancy reduction in any domain.

**Non-specialist consequence:** Instead of asking "what drug fixes fatigue?," this protocol asks "where is the biggest gap between what you feel and what we can measure — and can we close that gap?" If closing the gap makes you feel better, we've found the right target.

---

#### 7.1 The Discrepancy Index as a Formal Kullback-Leibler Divergence: Decomposing the Signal

**Category:** 7 — Mathematical Model Extensions
**Origin:** brainstorm

**Mechanistic rationale:** The existing ch15 constructs discrepancy as a simple ratio (subjective / objective), conflating three distinct components. Formalize as KL divergence between two probability distributions: P(subjective|physiology) and P(objective|physiology). Decompose into: (i) BASELINE SHIFT (bias) — systematic offset, subjective is always X units higher, (ii) SENSITIVITY DIFFERENCE (slope) — subjective changes MORE per unit physiology change, (iii) NOISE DIFFERENCE (variance) — subjective has greater scatter around regression. These map to three mechanisms: baseline shift -> general hypervigilance; sensitivity difference -> interoceptive amplification; noise difference -> temporal decoupling. Decomposing tells you WHAT KIND of discrepancy the patient has -> WHICH intervention to choose.

**Evidence link:** KL divergence decomposition is standard in information theory and psychophysics (Stocker & Simoncelli 2006), applied to cardiac interoception (Legrand 2022). The application to ME/CFS discrepancy is novel.

**Preliminary certainty:** 0.25 — the mathematical framework exists but has not been applied to the ME/CFS discrepancy problem.

**Falsifiable prediction:** (a) When applied to Novak2024 COMPASS-31 vs. QASAT data, >=60% of discrepancy should be decomposable into the three components. (b) Different patients should show different component-dominant profiles. (c) Falsified if: decomposition explains <30% of discrepancy.

**Non-specialist consequence:** Three different patients can have the same "high discrepancy" score for three completely different reasons: one is always distressed above what their body shows (baseline shift), one amplifies every little change into a big feeling (sensitivity), and one's symptoms bounce around too fast for lab tests to catch (noise). Different reasons need different treatments.

---

#### 7.2 ODE Model: The Metabolic Distress -> Subjective Perception Cascade

**Category:** 7 — Mathematical Model Extensions
**Origin:** brainstorm

**Mechanistic rationale:** Formalize energy-conservation hypothesis (1.1) as ODEs: (a) dM/dt = D(t) - P_ATP(E, CoQ), where M is metabolic distress (ATP/ADP deviation), D(t) is demand rate, P_ATP is production rate depending on mitochondrial capacity E and CoQ. (b) When M > M_crit, distress signal S is released: dS/dt = k_prod x H(M - M_crit) - k_clear x S. (c) Subjective perception P tracks S with gain g and noise: P(t) = g x S(t) + epsilon(t). (d) Objective measurement O tracks M with instrument noise: O(t) = M(t) + eta(t). The model predicts: (i) P peaks at t_peak = (1/k_clear) x ln(k_prod/k_clear) after exertion — lag between demand and peak symptom, (ii) decreasing k_clear extends discrepancy duration, (iii) increasing g amplifies P without changing S, (iv) if E falls below critical value, M crosses M_crit at rest -> constant signal -> constant distress -> discrepancy even at rest (severe ME/CFS case). This resolves the severity-dependence concern: mild (subthreshold at rest, suprathreshold during exertion -> large intermittent discrepancy) vs. severe (suprathreshold at rest -> small persistent discrepancy).

**Evidence link:** The ODE framework is standard in computational physiology. Parameters are currently unmeasured. Structure constrained by CPET data, PEM timecourse, Moezzi2025 haptoglobin kinetics.

**Preliminary certainty:** 0.15 — the ODE is logically sound but all parameters are free (unmeasured).

**Falsifiable prediction:** (a) Model fitted to individual patients' CPET + PEM timecourse data should predict discrepancy index with R2 >=0.4. (b) Fitted parameter g should correlate with independent interoceptive accuracy (r >=0.4). (c) Falsified if: R2 <0.2 — ODE structure too simple.

**Non-specialist consequence:** This is a mathematical description of what every ME/CFS patient already knows: do something -> feel fine (S hasn't crossed threshold yet) -> hours later, crashed (S accumulates above perception threshold while k_clear can't keep up) -> days later, recovering (S clears). The math just gives the curve a shape that researchers can measure.

---

#### 7.3 Bayesian Observer Model of the ME/CFS Patient: Computational Psychiatry of Interoception

**Category:** 7 — Mathematical Model Extensions
**Origin:** brainstorm

**Mechanistic rationale:** The patient's subjective report is Bayesian inference: noisy sensory signal y = x + eta (variance sigma2_sensory) combined with prior belief p(x) ~ N(mu_prior, sigma2_prior). Posterior: mu_posterior = (mu_prior/sigma2_prior + y/sigma2_sensory) / (1/sigma2_prior + 1/sigma2_sensory). Three parameters may differ in ME/CFS: (i) sigma2_sensory reduced — higher precision on ascending signals (precision-weighting, 1.3), (ii) mu_prior shifted toward "sick" — prior expectation anchors perception toward illness, (iii) sigma2_prior reduced — overconfident prior, resistant to disconfirming evidence. The three parameters map to three strategies: sigma2_sensory up -> guanfacine; mu_prior down -> interoceptive training; sigma2_prior up -> CBT/reappraisal. Formalizes the Bayesian framework suggested in the existing ch15 speculation and extends it to a testable computational model.

**Evidence link:** Bayesian observer framework is dominant in interoception neuroscience (Seth & Friston 2016, Petzschner 2019 — certainty 0.70). Fitting to cardiac interoception done in healthy controls (Legrand 2022) but not ME/CFS.

**Preliminary certainty:** 0.20 — the framework is validated in healthy populations, but ME/CFS application has zero direct evidence.

**Falsifiable prediction:** (a) When fitted to ME/CFS heartbeat detection data (varying SNR), patients show lower sigma2_sensory than controls. (b) Patients show lower mu_prior (shifted toward pathological). (c) Both correlate with discrepancy index. (d) Falsified if: neither parameter differs from controls.

**Non-specialist consequence:** Your brain is like a scientist trying to figure out what's happening in your body. It takes two inputs: what it expected (based on years of being sick) and what it's currently sensing. If it's too trusting of its negative expectations AND too trusting of every little body signal, it will always conclude "yep, still sick" — even when the actual data says "things are fine right now."

---

### Tier 3: Cross-Disease, Diagnostic, and Critical Categories

---

#### 8.1 Fibromyalgia Discrepancy Index: A Direct Cross-Disease Translation

**Category:** 8 — Cross-Disease Bridges
**Origin:** brainstorm

**Mechanistic rationale:** Fibromyalgia shares the discrepancy pattern: severe widespread pain but normal CRP, ESR, CK, joint imaging. Teodoro2018 included fibromyalgia alongside CFS. The discrepancy index framework is directly portable: in fibromyalgia, the discrepancy is in the PAIN domain. Three explanatory models apply: (a) provocation-dependence — allodynia = provocation, not present at rest, (b) CNS confinement — central sensitization is spinal/supraspinal, peripheral tissue normal, (c) interoceptive amplification — heightened attention to normally-subthreshold nociceptive signals. If the same framework works, the discrepancy index is transdiagnostic — a measurement principle, not ME/CFS-specific.

**Evidence link:** Teodoro2018 included fibromyalgia. Fibromyalgia central sensitization well-documented (certainty 0.70). The pharmacodiagnostic prediction (high-discrepancy -> central drugs, low-discrepancy -> peripheral drugs) is analogous to ch15 hypothesis.

**Preliminary certainty:** 0.35 — the pattern similarity is strong and Teodoro2018 groups them. The treatment-response prediction is novel.

**Falsifiable prediction:** (a) Pain discrepancy index predicts differential response to pregabalin (high-discrepancy -> better) vs. NSAIDs (low-discrepancy -> better). (b) Discrepancy distributions should overlap between fibromyalgia and ME/CFS. (c) Falsified if: fibromyalgia shows a different discrepancy mechanism entirely.

**Non-specialist consequence:** If fibromyalgia patients with a big gap between pain reports and physical findings respond well to nerve-pain drugs, while patients whose pain tracks with measurable inflammation respond to anti-inflammatories — the discrepancy score tells you which bucket a patient is in, across multiple contested diagnoses.

---

#### 8.2 Functional Neurological Disorder (FND) as the Extreme Discrepancy Endpoint: A Cautionary Bridge

**Category:** 8 — Cross-Disease Bridges
**Origin:** brainstorm

**Mechanistic rationale:** FND involves neurological symptoms with completely normal structural imaging — the extreme case of subjective-objective discrepancy. If the discrepancy index extends to FND, ME/CFS sits on a continuum with FND as the extreme pole. This is both a bridge AND a vulnerability: critics could argue the discrepancy framework is "functional disorder" rebranded. The defense: FND and ME/CFS share predictive-processing abnormalities but DIFFER in documented peripheral pathology (TRPM3 mutations, GPCR AAb, CPET abnormalities). The discrepancy index must DISTINGUISH them: (a) FND -> discrepancy across ALL domains maximally, (b) ME/CFS -> domain-SPECIFIC discrepancy with some convergence domains, (c) ME/CFS discrepancy resolves under provocation; FND does not. The FND comparison is the discriminant test for the framework.

**Evidence link:** Teodoro2018 groups FND, fibromyalgia, and CFS. FND predictive processing models (Edwards 2012) propose abnormal precision-weighting of priors over sensory evidence — the same Bayesian framework as 7.3. The discriminant prediction (provocation resolution in ME/CFS but not FND) is novel.

**Preliminary certainty:** 0.25 — the Teodoro grouping (certainty 0.50), but the discriminant prediction has zero direct evidence.

**Falsifiable prediction:** (a) In cross-disease study (FND n=30, ME/CFS n=30, healthy n=30), ME/CFS discrepancy decreases under provocation; FND discrepancy unchanged. (b) ME/CFS shows domain-specific discrepancy; FND shows uniformly high. (c) Falsified if: indistinguishable discrepancy patterns between FND and ME/CFS.

**Non-specialist consequence:** This is the dangerous comparison: if ME/CFS discrepancy looks exactly like FND discrepancy, critics will say "see? It's all functional." The defense: ME/CFS patients' symptoms line up with measurable problems when you push their body hard enough; FND patients' symptoms don't.

---

#### 8.3 Irritable Bowel Syndrome as a Gut-Specific Discrepancy: Organ-Specificity Test

**Category:** 8 — Cross-Disease Bridges
**Origin:** brainstorm

**Mechanistic rationale:** IBS shows discrepancy — severe subjective GI symptoms, normal endoscopy/histology/CRP — but the discrepancy is organ-SPECIFIC. If the discrepancy is a PATIENT-LEVEL TRAIT, IBS patients should show discrepancy across ALL domains. If IBS patients show elevated discrepancy ONLY in GI domain, the discrepancy is DOMAIN-SPECIFIC (visceral hypersensitivity = local peripheral receptor sensitization, e.g., TRPV1/TRPA1 in colonic afferents). This would distinguish LOCAL (peripheral receptor-level) from GENERAL (central computational) amplification — with different treatments: local -> peripheral desensitization; general -> central gain modulation.

**Evidence link:** IBS visceral hypersensitivity well-documented (certainty 0.75). IBS patients typically do NOT show generalized interoceptive amplification (certainty 0.40). The formal cross-domain discrepancy comparison with ME/CFS has not been conducted.

**Preliminary certainty:** 0.30 — IBS literature supports organ-specific hypersensitivity, but the cross-domain comparison is untested.

**Falsifiable prediction:** (a) IBS patients show elevated GI discrepancy but normal autonomic, cognitive, sleep discrepancy — domain-specific. (b) ME/CFS patients show elevated discrepancy across >=3 domains — generalized. (c) Falsified if: IBS patients show generalized discrepancy — hypersensitivity is not organ-specific, or IBS and ME/CFS share a general interoceptive trait.

**Non-specialist consequence:** If IBS patients accurately report their gut but nothing else is amplified, their "brain's volume knob" works fine — it's the gut nerves themselves that are hypersensitive. If ME/CFS patients amplify everything (gut, heart, sleep, cognition), the volume knob is stuck for ALL body signals — that's a brain problem, not a gut problem.

---

#### 8.4 Cancer-Related Fatigue as a Positive Control: Known Mechanism, Discrepancy Expected

**Category:** 8 — Cross-Disease Bridges
**Origin:** brainstorm

**Mechanistic rationale:** Cancer-related fatigue (CRF) shows similar discrepancy pattern: severe subjective fatigue, normal resting labs (in many post-treatment patients), discrepancy between patient report and objective measures. But the mechanism is PARTIALLY KNOWN: chemotherapy damages mitochondria, tumor-derived cytokines, anemia, muscle wasting. CRF provides a POSITIVE CONTROL: if the discrepancy index tracks mitochondrial dysfunction in CRF (high-discrepancy -> impaired muscle mitochondrial function on biopsy), then the discrepancy->mitochondrial link is validated in a condition where mechanism is independently confirmable. Apply that validated link back to ME/CFS.

**Evidence link:** CRF mitochondrial dysfunction documented (certainty 0.60). CRF discrepancy noted but not formalized. The cross-disease triangulation strategy is analogous to using HLH to validate the pharmacodiagnostic matrix (Zhang2022RuxolitinibHLH).

**Preliminary certainty:** 0.35 — the parallel is strong, but the formal triangulation study has not been conducted.

**Falsifiable prediction:** (a) In CRF patients (n=50), discrepancy index correlates with mitochondrial dysfunction (r >=0.4). (b) High-discrepancy CRF and high-discrepancy ME/CFS share mitochondrial/metabolic signature (>=3 common molecules). (c) Falsified if: CRF discrepancy does NOT correlate with mitochondrial dysfunction.

**Non-specialist consequence:** Cancer patients after chemotherapy feel exhausted but their bloodwork is often normal — same pattern as ME/CFS. But in cancer, we KNOW the mitochondria are damaged. If the discrepancy score tracks how damaged the mitochondria are in cancer patients, and ME/CFS patients with the same score show the same mitochondrial damage pattern... that's not a coincidence.

---

#### 9.1 The Discrepancy Index as a Diagnostic Criterion for ME/CFS: Reducing False Positives and Negatives

**Category:** 9 — Diagnostic/Biomarker Ideas
**Origin:** brainstorm

**Mechanistic rationale:** Current ME/CFS criteria (IOM 2015, Fukuda 1994, CCC 2003) have false positives (depressed patients with objective sleep disturbance) and false negatives (severe ME/CFS with objective lab abnormalities misdiagnosed as "organic" disease). The discrepancy index criterion: patient MUST show minimum discrepancy (subjective severity / objective abnormality >1.5 in >=2 of 5 domains). This would: (i) reduce false positives — depressed patient with objective PSG disturbance shows low discrepancy -> fails criterion -> depression diagnosis more appropriate, (ii) filter for patients where discrepancy IS the expected pattern. The discrepancy criterion is an INCLUSION criterion, not stand-alone — must accompany PEM, duration, etc. Analogous to ACR/EULAR RA criteria — point system where no single criterion necessary, combination crosses threshold.

**Evidence link:** 5-domain discrepancy documented (certainty 0.75). Diagnostic application is novel. Diagnostic cut-point (>1.5 in >=2 domains) is arbitrary and untested.

**Preliminary certainty:** 0.20 — discrepancy phenomenon is strong, but diagnostic cut-point is arbitrary. No study has compared diagnostic accuracy with and without discrepancy criterion.

**Falsifiable prediction:** (a) Adding discrepancy criterion to IOM 2015 increases specificity without decreasing sensitivity vs. expert clinician diagnosis. (b) Identifies >=15% of IOM-positive patients who do NOT have ME/CFS by expert assessment. (c) Falsified if: criterion decreases sensitivity more than it increases specificity.

**Non-specialist consequence:** If your bloodwork is normal but you can't function, you fit the ME/CFS pattern — standard criteria plus the discrepancy rule confirm it. If your bloodwork is ALSO abnormal, you might have something else that looks like ME/CFS but isn't — the discrepancy rule flags you for further investigation.

---

#### 9.2 Domain-Specific Discrepancy Profiles as a Diagnostic Fingerprint

**Category:** 9 — Diagnostic/Biomarker Ideas
**Origin:** brainstorm

**Mechanistic rationale:** Rather than a SINGLE discrepancy index (scalar), measure discrepancy in all 5 domains to create a DISCREPANCY PROFILE — a 5-element vector. The profile SHAPE (which domains are discrepant) may be the diagnostic signature, independent of profile MAGNITUDE. Different underlying mechanisms should produce different profile shapes: (a) dysautonomia-dominant -> autonomic HIGH, sleep/cognitive MODERATE, biomarker LOW, (b) mitochondrial -> activity HIGH, biomarker MODERATE (CPET abnormality), autonomic LOW, (c) neuroinflammatory -> cognitive HIGH, sleep HIGH, biomarker LOW-MODERATE (cytokines episodic), (d) GPCR autoantibody/PIP2 convergence -> all domains moderate-high, but convergence domains (HGS, HRV, CBF under tilt) show LOW discrepancy.

**Evidence link:** Domain-specific discrepancy is documented (Watson2003, Novak2024, Vergauwen2021, Teodoro2018, Byrnes2009), but no study has measured all 5 in same patients or tested whether profiles map to mechanisms. Analogous to cognitive profiling in dementia subtypes.

**Preliminary certainty:** 0.25 — individual domain discrepancies documented (0.75), but profile concept and mechanism-mapping are novel and untested.

**Falsifiable prediction:** (a) In 200 ME/CFS patients with 5-domain profiling, cluster analysis identifies >=3 distinct discrepancy-profile clusters. (b) Each cluster maps to distinct objective correlates. (c) Falsified if: all patients show same profile shape — vector reduces to scalar.

**Non-specialist consequence:** Two patients can have the same "discrepancy score" but completely different discrepancy fingerprints. One can't sleep and can't think but their heart is fine; another's heart goes crazy when they stand but their sleep is normal. Same number, different diseases — the profile tells you which one.

---

#### 9.3 The 48-Hour Ambulatory Discrepancy Monitor: Dynamic Discrepancy as a Diagnostic Tool

**Category:** 9 — Diagnostic/Biomarker Ideas
**Origin:** brainstorm

**Mechanistic rationale:** Combine consumer wearable (continuous HR, HRV, sleep staging, activity) with EMA (4x/day symptom ratings via smartphone) for 48 hours. Output: CONTINUOUS DISCREPANCY STREAM — at each timepoint, compare subjective to objective. Captures: (a) TEMPORAL DECOUPLING — symptoms lag physiology by X hours; lag time may be diagnostic, (b) DISCREPANCY VOLATILITY — how much discrepancy fluctuates; high volatility -> reactive physiology, low -> stable trait, (c) DOMAIN-SPECIFIC DIURNAL PATTERNS — sleep discrepancy peaks morning, autonomic after meals, cognitive afternoon. The 48-hour monitor is the Holter monitor of discrepancy — continuous ambulatory assessment capturing episodic abnormalities single-point measurement misses.

**Evidence link:** Continuous wearable + EMA is established (certainty 0.60). Application to dynamic discrepancy monitoring in ME/CFS is novel. Williams1996 demonstrated circadian temperature dysregulation in CFS.

**Preliminary certainty:** 0.25 — technology exists, but dynamic discrepancy metric has zero direct evidence.

**Falsifiable prediction:** (a) 48-hour discrepancy stream reveals significant within-day fluctuation (>=1 SD difference morning vs. evening) in >=60% of patients. (b) Temporal lag between objective event and subjective report >=2h in >=40% of patients. (c) Falsified if: discrepancy stream is flat (no within-day fluctuation) in >70% — discrepancy is static, dynamic monitoring adds nothing.

**Non-specialist consequence:** A single clinic visit captures the discrepancy at one random moment. A 48-hour wearable captures the discrepancy through sleep, meals, activity, rest — showing the RHYTHM of the mismatch. Some patients crash 4 hours after overdoing it; some crash the next day. The dynamic monitor shows which pattern you have.

---

#### 9.4 Discrepancy Trajectory During Treatment as a Response Biomarker

**Category:** 9 — Diagnostic/Biomarker Ideas
**Origin:** brainstorm

**Mechanistic rationale:** The discrepancy index's value may be as a CHANGE METRIC — a treatment response biomarker. Pre-post discrepancy reveals mechanism: (a) SUBJECTIVE IMPROVES, OBJECTIVE UNCHANGED, DISCREPANCY NARROWS -> drug reduces amplification (guanfacine, interoceptive training) — symptomatic relief, not disease modification, (b) SUBJECTIVE IMPROVES, OBJECTIVE IMPROVES, DISCREPANCY UNCHANGED -> disease-modifying (CoQ10, creatine, immunomodulation), (c) SUBJECTIVE UNCHANGED, OBJECTIVE IMPROVES, DISCREPANCY WIDENS -> drug fixes physiology but brain can't perceive improvement — perceptual uncoupling, (d) SUBJECTIVE WORSENS, OBJECTIVE IMPROVES, DISCREPANCY WIDENS FURTHER -> toxic (CoQ10 paradoxical worsening). The trajectory reveals MORE about mechanism than absolute discrepancy, without requiring a priori subtyping.

**Evidence link:** Treatment-response phenotyping established in psychiatry (certainty 0.60 — STAR*D). Application to discrepancy trajectory is novel. Ch15 already proposes treatment-response subtyping — this extends to dynamic metric.

**Preliminary certainty:** 0.25 — logic is sound but zero empirical validation in any ME/CFS trial.

**Falsifiable prediction:** (a) Any ME/CFS trial collecting both subjective and objective outcomes should classify >=3 distinct trajectory patterns. (b) Discrepancy-narrowers show different characteristics than discrepancy-preservers. (c) Falsified if: all responders show same trajectory — discrepancy adds no trajectory-based information.

**Non-specialist consequence:** If you take a new drug and feel much better but your lab tests look exactly the same, the drug might be calming your brain's alarm system — not fixing what's broken. That's still useful (feeling better matters!), but it tells you the mechanism is neurological, not immunological or metabolic.

---

#### 10.1 The Discrepancy is an Artifact of Measurement Scale Mismatch: Patients Correctly Weight Their Worst Moments

**Category:** 10 — Reasons This Mechanism May NOT Be Relevant
**Origin:** brainstorm

**Mechanistic rationale:** Subjective instruments (COMPASS-31, PSQI, Chalder Fatigue Scale) ask about "the past week/month" — capturing retrospective integration overweighting peak experiences (peak-end rule). Objective instruments capture a single timepoint. The discrepancy is the difference between the distribution's tail (weighted subjective) and a random sample from the distribution's body (objective). This occurs in ANY population with symptom fluctuation, not just ME/CFS. If so, the discrepancy is a measurement artifact amplified by disease severity — not a disease-specific mechanism. It adds no diagnostic value beyond symptom severity.

**Evidence link:** Peak-end rule well-established (Redelmeier & Kahneman 1996 — certainty 0.75). Carney2009 showed healthy controls also show poor subjective-objective sleep correlation. Vergauwen2021 controls: r=0.60-0.64 — strong but not perfect — discrepancy exists in healthy populations too.

**Preliminary certainty:** 0.50 — measurement-scale mismatch is parsimonious and supported by well-established cognitive biases. The assumption that magnitude difference reflects qualitative mechanism difference is untested.

**Falsifiable prediction:** (a) In matched-window measurement (7-night PSG + daily diary, comparing mean subjective to mean objective), correlation should increase significantly (delta r >=0.15) vs. single-night PSG vs. monthly PSQI. (b) If matched-window correlation remains significantly lower in ME/CFS after controlling for severity, disease-specific mechanism survives. (c) Falsified if: matched-window correlation eliminates the ME/CFS-control difference — measurement-scale mismatch explains the entire discrepancy.

**Non-specialist consequence:** If you ask a patient "how was your month?" after a month with 3 horror-show days and 27 okay days, they'll tell you about the 3 horror-show days. If you measure their physiology on one of the 27 okay days, of course it looks normal. That's not a disease — that's being human with a bad memory for the boring stuff.

---

#### 10.2 The Discrepancy Reflects Genuine Measurable Pathology That Current Instruments Miss Entirely

**Category:** 10 — Reasons This Mechanism May NOT Be Relevant
**Origin:** brainstorm

**Mechanistic rationale:** The entire discrepancy framework assumes objective measures are valid. But these instruments may measure the WRONG THING for ME/CFS. If the relevant pathology is MICROSTRUCTURAL (CAP rate, spindle density for sleep; beat-to-beat baroreflex sensitivity for autonomic; metabolic flux for energy) and standard instruments only capture MACROSTRUCTURE (total sleep time, resting HR, metabolite pools), the "discrepancy" is a measurement failure, not a disease feature. Investing in the discrepancy index DIVERTS resources from the solution: better instruments that measure what's actually broken. The discrepancy disappears once you measure the right parameter — the patient was right all along.

**Evidence link:** The existing `#open-question` about bridging the gap already proposes microstructural measures. Paffrath2024 (HGS correlates with symptoms) and Friedberg2022 (HRV predicts nonimprovement) suggest the gap is instrument-dependent.

**Preliminary certainty:** 0.40 — convergence domains (Paffrath2024, Friedberg2022) support this. The `#open-question` acknowledges this possibility. Risk: discrepancy framework diverts attention from instrument development.

**Falsifiable prediction:** (a) When microstructural measures replace macrostructural (CAP + PSQI, baroreflex + COMPASS-31, 31P-MRS PCr recovery + Chalder Fatigue), correlation between subjective and microstructural-objective should significantly exceed macrostructural correlation (delta r >=0.2). (b) Falsified if: microstructural measures show same zero correlation.

**Non-specialist consequence:** If the patient says "my sleep is terrible" but the sleep lab says "8 hours, normal architecture" — maybe the sleep lab is measuring the wrong thing. Maybe what's broken is the microstructure (how fast you cycle through stages, micro-arousals, spindle density), not the macro-structure (total time). Fix the measurement, and the discrepancy might vanish — because the patient was right.

---

#### 10.3 The Discrepancy is a Healthy-Person Phenomenon Amplified by Severity, Not an ME/CFS-Specific Feature

**Category:** 10 — Reasons This Mechanism May NOT Be Relevant
**Origin:** brainstorm

**Mechanistic rationale:** The discrepancy may be a quantitative amplification of normal interoceptive noise — not a qualitative shift. Healthy people misestimate their heart rate, sleep quality, and activity levels. The difference in ME/CFS is that symptoms are MORE SEVERE, so discrepancy is LARGER — but the underlying mechanism (normal human interoceptive imprecision + recall bias) is the same. This means: (a) discrepancy adds zero diagnostic information beyond severity — it's a linear function of how bad you feel, (b) discrepancy can't subtype patients — all severely ill patients have high discrepancy regardless of mechanism, (c) discrepancy is clinically redundant — clinicians should just ask "how severe are your symptoms?"

**Evidence link:** Ch15 `#limitation` flags severity-dependency as unresolved. If discrepancy is monotonic with severity, it's a severity correlate, not a subtyping tool.

**Preliminary certainty:** 0.45 — severity-dependency explicitly acknowledged. No study has tested whether discrepancy adds information beyond severity.

**Falsifiable prediction:** (a) In regression predicting treatment response, adding discrepancy index to model with symptom severity and duration should improve fit (delta R2 >=0.05). (b) If delta R2 is not significant, discrepancy contributes zero independent variance — it's a severity proxy. (c) Falsified for null if: delta R2 >=0.05 — discrepancy adds information beyond severity.

**Non-specialist consequence:** If the discrepancy is just a fancy way of measuring how severe your symptoms are, we don't need a discrepancy index — we just need to ask you "how bad is it on a scale of 1-10?" and get the same answer with less math.

---

#### 11.1 Null Hypothesis: The Discrepancy Index Has No Diagnostic, Prognostic, or Therapeutic Value

**Category:** 11 — Null Hypothesis Assessment
**Origin:** brainstorm

**Mechanistic rationale:** The null hypothesis is not that the discrepancy doesn't exist — it exists (certainty 0.75). The null is that the discrepancy index adds ZERO clinical value beyond existing assessment. DIAGNOSTIC NULL: does not improve accuracy beyond IOM criteria. PROGNOSTIC NULL: does not predict outcome better than severity and duration. THERAPEUTIC NULL: does not predict differential treatment response; stratification by discrepancy does not improve outcomes. If all three hold, the discrepancy index is scientifically interesting but clinically useless — an academic construct. The entire discrepancy section of ch15 should be downgraded from "integrative model" to "interesting observation."

**Evidence link:** Zero studies have tested the discrepancy index against the null. Ch15 content is entirely theoretical. The discrepancy phenomenon exists but clinical utility is untested.

**Preliminary certainty:** 0.50 — diagnostic/prognostic/therapeutic null is the default state for any novel clinical instrument until proven otherwise.

**Falsifiable prediction:** Discrepancy index must demonstrate clinical utility in at least ONE of: (a) diagnostic — improves sensitivity/specificity by >=5 percentage points over IOM, (b) prognostic — predicts outcome AUC >=0.65, exceeding severity+duration (delta AUC >=0.05), (c) therapeutic — stratified treatment yields >=0.3 SD outcome difference vs. unstratified. If all three fail, null confirmed.

**Non-specialist consequence:** If the discrepancy score can't tell you anything your doctor doesn't already know from talking to you and looking at your chart, it's an elegant theory that belongs in a journal — not in a clinic.

---

#### 11.2 Null Hypothesis: The Discrepancy is Fully Explicable by Known Confounds and Has No Distinct Mechanism

**Category:** 11 — Null Hypothesis Assessment
**Origin:** brainstorm

**Mechanistic rationale:** The second null: after controlling for all known confounds, the ME/CFS-specific residual discrepancy is zero — identical to healthy controls matched for symptom severity. Confounds: ILLNESS SEVERITY (more severe -> larger discrepancy, linearly), SYMPTOM FLUCTUATION VARIANCE (higher variance -> larger peak-end bias -> larger discrepancy), PSYCHIATRIC COMORBIDITY (depression/anxiety increase symptom reporting independent of physiology), MEDICATION EFFECTS (beta-blockers suppress HR -> widen autonomic discrepancy, hypnotics alter sleep architecture -> widen sleep discrepancy), and AGE/GENDER (interoceptive accuracy varies with both). If the ME/CFS discrepancy disappears after controlling for these confounds, the discrepancy is not an ME/CFS-specific mechanism — it's the expected output of a general model of symptom reporting given severe, fluctuating illness. The discrepancy exists but has no distinct pathophysiology.

**Evidence link:** Each confound is documented: severity -> face validity; fluctuation variance -> peak-end rule literature; psychiatric comorbidity -> symptom amplification (certainty 0.60); medication effects -> pharmacology; age/gender -> interoception literature. No study has performed the full confound-controlled analysis.

**Preliminary certainty:** 0.40 — each individual confound is plausible but the collective explanatory power of all confounds is unknown.

**Falsifiable prediction:** (a) Regress discrepancy index on severity, fluctuation variance, psychiatric comorbidity (HADS-A, HADS-D), medications (count and class), age, and gender. If R2 >=0.60 and the ME/CFS vs. healthy control coefficient becomes non-significant, the discrepancy is fully explained by confounds. (b) Falsified for null if: after controlling for all confounds, ME/CFS status remains a significant predictor (p <0.01) — a disease-specific residual discrepancy survives.

**Non-specialist consequence:** If researchers controlled for "how bad you feel," "how much your symptoms fluctuate," "how depressed you are," and "what drugs you take" — and the discrepancy still showed up as a distinct ME/CFS signal — it's real. If it disappeared, it was never a disease signature — it was a measure of how much you're suffering.

---

#### 12.1 The Discrepancy Literature Has a Systematic Selection Bias Toward Self-Report Instruments With Long Recall Periods

**Category:** 12 — Evidence Quality Concerns
**Origin:** brainstorm

**Mechanistic rationale:** The discrepancy evidence base relies on instruments with recall periods of 1 week (PSQI, COMPASS-31), 1 month (Chalder Fatigue Scale), or indeterminate ("in general, how is your sleep?"). These instruments have known recall biases (peak-end rule, recency effect, mood-congruent recall). Meanwhile, objective instruments sample 1 night (PSG), 1 clinic visit (QASAT, tilt test), or 1 blood draw (biomarkers). The discrepancy is DESIGNED INTO the measurement protocol — it's a necessary consequence of the instruments chosen, not a discovery about the disease. If all studies had used 14-day continuous monitoring (wearable + daily EMA), the discrepancy might shrink dramatically. The existing evidence base is selection-biased toward instruments that maximize the discrepancy — retrospective subjective vs. single-timepoint objective. This is not fraud; it's the natural first-generation measurement approach. But it means the evidence for the discrepancy is partly an artifact of the tools we've been using, and the effect size of the "true" discrepancy (what would survive instrument-optimized measurement) is unknown.

**Evidence link:** Each study in the evidence base: Watson2003 (PSQI, 1-month recall, vs. 1-night PSG), Novak2024 (COMPASS-31, 1-month recall, vs. single-visit QASAT), Vergauwen2021 (12-day diary — better but still retrospective, vs. 12-day actigraphy), Byrnes2009 (single blood draw). The instrument-mismatch confound is present in every study.

**Preliminary certainty:** 0.60 — the instrument-mismatch confound is acknowledged in the existing ch15 content but its magnitude has not been quantified. The fact that Vergauwen2021 (with the best-matched instruments: 12 days vs. 12 days) still finds r=0.35-0.38 suggests the instrument confound is partial, not total.

**Falsifiable prediction:** (a) A meta-analysis comparing discrepancy magnitude across studies as a function of recall-period mismatch should show a positive relationship — longer recall period mismatch -> larger discrepancy. (b) If meta-regression shows that recall-period mismatch explains >=50% of between-study variance in discrepancy, instrument selection bias is the dominant driver. (c) Falsified if: recall-period mismatch explains <20% of variance — the discrepancy is robust to instrument choice.

**Non-specialist consequence:** Every study that "discovered" the discrepancy used questionnaires that ask about the past month and lab tests that measure today. The "discovery" may have been baked into the method from the beginning — like finding out that your bathroom scale and your memory disagree about how much you weighed last month.

---

#### 12.2 The Byrnes2009 Null Result: Peripheral Blood Leukocyte Transcriptomics May Be the Wrong Tissue, Not the Wrong Hypothesis

**Category:** 12 — Evidence Quality Concerns
**Origin:** brainstorm

**Mechanistic rationale:** Byrnes2009's null result (zero transcriptomic signal in 44 MZ twin pairs) is cited as the strongest evidence for the CNS confinement model. But the null could reflect TISSUE-MISMATCH rather than CNS confinement. Peripheral blood leukocytes are primarily immune cells (neutrophils, lymphocytes, monocytes). If the primary pathology is in MUSCLE (mitochondrial), ENDOTHELIUM (microvascular), BRAINSTEM (autonomic), or ENTEROCHROMAFFIN CELLS (serotonin), blood leukocyte transcriptomics would show nothing — not because the signal is CNS-confined, but because the sampled cell type doesn't express the disease-relevant genes. The null result is a statement about PBMC transcriptomics, not about the absence of peripheral pathology. Single-cell or tissue-specific analyses (muscle biopsy transcriptomics, endothelial cell isolation, CSF proteomics) might reveal signals that PBMC bulk transcriptomics misses. The Byrnes2009 null is strong evidence against a SYSTEMIC TRANSCRIPTOMIC SIGNAL IN BLOOD LEUKOCYTES — it is weak evidence for CNS confinement specifically.

**Evidence link:** Byrnes2009 (certainty 0.70 for the null result — strong study design, adequate power for the effect sizes they sought). Tissue-specific transcriptomics has not been performed in ME/CFS twin pairs. Muscle biopsy studies exist (Pietrangelo 2018, Brown 2019) but not in the twin design. Endothelial cell transcriptomics has not been attempted.

**Preliminary certainty:** 0.50 — the tissue-mismatch interpretation is parsimonious and consistent with the known multi-system involvement of ME/CFS. The CNS confinement model is ONE explanation for the null; tissue-mismatch is an alternative explanation that does not require CNS confinement.

**Falsifiable prediction:** (a) If muscle biopsy transcriptomics from the same 44 twin pairs (the original study sample) shows significant differential expression between CFS and healthy co-twins, the tissue-mismatch hypothesis is confirmed — the signal exists, just not in blood leukocytes. (b) If muscle biopsy also shows zero differential expression, CNS confinement gains support — the signal is absent from multiple peripheral tissues. (c) Falsified for CNS confinement if: any peripheral tissue (muscle, gut, skin, endothelial) shows transcriptomic signal in twin pairs — the signal is not CNS-confined, just blood-leukocyte-negative.

**Non-specialist consequence:** The most famous null result in ME/CFS research — "no signal in blood" — may have been measuring the wrong cells. It's like looking for evidence of a heart attack in a toenail clipping. The signal was there — just in the muscle, not the blood cells they tested.

---

#### 12.3 The Discrepancy Index's Severity Dependency Is a Fatal Flaw for Subtyping: High-Discrepancy = Mild Disease, Not Dysautonomia

**Category:** 12 — Evidence Quality Concerns
**Origin:** brainstorm

**Mechanistic rationale:** The existing ch15 `#limitation` acknowledges severity-dependency as unresolved. But it may be a FATAL flaw, not a resolvable measurement issue. If the discrepancy index is systematically higher in mild patients (low objective dysfunction, high subjective report) and low in severe patients (high objective dysfunction, high subjective report), the index is measuring disease severity, not mechanism subtype. The ch15 `#hypothesis` proposes "high discrepancy -> dysautonomia-dominant, low discrepancy -> immune-inflammatory." But if mild patients are predominantly dysautonomia-dominant (early disease, autonomic dysfunction before measurable organ damage) and severe patients are predominantly immune-inflammatory (later disease, accumulated damage), the discrepancy index is perfectly confounded with disease stage. The subtyping prediction would appear correct — high-discrepancy patients respond better to autonomic drugs — but only because they're milder, and milder patients respond better to ANY treatment. The discrepancy index adds zero information beyond severity and duration.

**Evidence link:** The existing ch15 `#limitation`: "The index may behave differently in mild... vs severe... patients — the same score could mean the opposite." The `#speculation` about trajectory-predictor proposes the opposite directionality (high discrepancy -> better prognosis). The contradictory predictions reveal the fundamental severity confound — until severity is properly controlled, the index's interpretation is ambiguous.

**Preliminary certainty:** 0.45 — the severity confound is recognized but its magnitude and direction are unknown. The index could be measuring severity, mechanism, or both. Without severity-stratified validation, the subtyping hypothesis is unfalsifiable.

**Falsifiable prediction:** (a) In severity-stratified analysis (mild, moderate, severe by IOM tiers), the discrepancy index should predict differential treatment response WITHIN each severity tier. If the index predicts treatment response in the full cohort but NOT within severity tiers, the apparent predictive power is entirely due to severity confounding. (b) Falsified for the subtyping hypothesis if: within-severity-tier predictive power is non-significant — the index is a severity proxy, not a mechanism marker.

**Non-specialist consequence:** If all the high-discrepancy patients are just the mild ones, and mild patients respond better to everything, the discrepancy index didn't discover the dysautonomia subtype — it rediscovered "less sick people get better more easily." That's not a breakthrough; it's a tautology.

---

#### 12.4 The Achievement's Certainty (0.75) Overestimates the Discrepancy Phenomenon: Combined Sampling Biases Across All 5 Domains

**Category:** 12 — Evidence Quality Concerns
**Origin:** brainstorm

**Mechanistic rationale:** The existing achievement assigns certainty 0.75 to the claim that the subjective-measurable discrepancy is replicated across 5 domains. But each domain's evidence has a different vulnerability to sampling bias, and the 0.75 aggregates them as if they're independent replications when they share the same structural bias. Sleep: 2 studies from SAME TWIN COHORT (Watson2003, Armitage2009) with different instruments on the same patients — they're quasi-independent at best. Autonomic: Novak2024 is n=2,627, the strongest single study — but it's ONE study on ONE instrument pair. Activity: Vergauwen2021 found r=0.35-0.38 — this is a correlation that is significantly greater than zero (p <0.05) — it's not a zero discrepancy, it's a weak positive relationship. Cognitive: Teodoro2018 is a systematic REVIEW, not a primary study — it synthesizes others' findings but does not provide original effect sizes for discrepancy magnitude. Biomarker: Byrnes2009 is the cleanest null (zero signal), but the tissue-mismatch concern (12.2) weakens its interpretation. The five domains do NOT provide five independent replications. They provide one twin cohort (sleep), one large cross-diagnosis cohort (autonomic), one moderate-effect study (activity), one review (cognition), and one tissue-specific null (biomarker). The combined certainty 0.75 is inflated by treating correlated evidence sources as independent.

**Evidence link:** The evidence summary in the achievement: Watson2003 + Armitage2009 (same cohort), Novak2024 (one study), Vergauwen2021 (r=0.35-0.38, not zero), Teodoro2018 (review, not primary), Byrnes2009 (tissue-specific null). The independence assumption is false.

**Preliminary certainty:** 0.55 — the evidence for the discrepancy is strong but the 0.75 certainty overstates the independence and interpretative uniformity of the evidence base. A more appropriate certainty after accounting for shared sampling biases, correlated evidence sources, and interpretative heterogeneity across domains is 0.50-0.60.

**Falsifiable prediction:** (a) Reproduce the discrepancy analysis using fully independent cohorts (not overlapping twin samples) and matched instrument pairs (14-day continuous monitoring + EMA). If the discrepancy persists across >=3 of 5 domains with no shared cohorts, the 0.75 is justified. (b) If the discrepancy disappears in >=2 domains when instruments are matched and cohorts are independent, the 0.75 is inflated. (c) Falsified for the certainty concern if: a formal meta-analysis with proper dependence modeling confirms the discrepancy effect size with 95% CI that does not overlap zero across all 5 domains.

**Non-specialist consequence:** All five legs of the "discrepancy" table look solid, but two are made from the same piece of wood (the same twins), one is just a summary of other people's work, and one shows a weak relationship, not a zero. The table probably still stands, but it's wobblier than the 0.75 confidence makes it sound.

---

## Category Coverage Summary

| Category | Title | # Ideas | Idea IDs |
|----------|-------|---------|----------|
| 1 — Novel Hypotheses | New mechanistic explanations for discrepancy | 4 | 1.1, 1.2, 1.3, 1.4 |
| 2 — Research Directions | Validation studies, bridging the gap | 4 | 2.1, 2.2, 2.3, 2.4 |
| 3 — Drug/Medication Ideas | Pharmacological modulation of discrepancy | 3 | 3.1, 3.2, 3.3 |
| 4 — Supplement/Nutraceutical Ideas | Nutraceutical discrepancy reduction | 3 | 4.1, 4.2, 4.3 |
| 5 — Non-Pharmacological Interventions | Behavioral/technological recalibration | 3 | 5.1, 5.2, 5.3 |
| 6 — Combinations + Access | Multi-target protocols | 3 | 6.1, 6.2, 6.3 |
| 7 — Mathematical Model Extensions | ODE, Bayesian, KL divergence models | 3 | 7.1, 7.2, 7.3 |
| 8 — Cross-Disease Bridges | Fibromyalgia, FND, IBS, cancer fatigue | 4 | 8.1, 8.2, 8.3, 8.4 |
| 9 — Diagnostic/Biomarker Ideas | Index as criterion, profile, dynamic monitor, trajectory | 4 | 9.1, 9.2, 9.3, 9.4 |
| 10 — Reasons NOT Relevant (CRITICAL) | Measurement artifact, wrong instruments, severity proxy | 3 | 10.1, 10.2, 10.3 |
| 11 — Null Hypothesis Assessment (CRITICAL) | Zero clinical value, fully explained by confounds | 2 | 11.1, 11.2 |
| 12 — Evidence Quality Concerns (CRITICAL) | Selection bias, tissue-mismatch, severity confound, overestimated certainty | 4 | 12.1, 12.2, 12.3, 12.4 |

**Total:** 40 ideas across all 12 categories. Critical categories 10-12: 3, 2, 4 ideas respectively (9 total).

---

## Evidence Confidence Summary

| Idea | Certainty | Core Evidence Anchors |
|------|-----------|----------------------|
| 1.1 Energy-Conservation Signal | 0.30 | Mitochondrial flux vs. pool distinction; hypothalamic AMPK sensing |
| 1.2 Temporal Decoupling | 0.40 | Peak-end rule (0.75); Vergauwen2021 matched-window data |
| 1.3 Bayesian Precision-Weighting | 0.25 | Predictive processing framework (0.70); cholinergic precision modulation (0.50) |
| 1.4 Peripheral Washout | 0.35 | Hormone pulsatility analogy (0.80); Moezzi2025 transient kinetics |
| 3.1 Guanfacine for Precision | 0.20 | alpha2A pharmacology (0.80); adaptive gain theory (0.70) |
| 3.2 Propranolol for Signal | 0.25 | Autonomic dysfunction documented (0.75); beta-blocker HRV effects (0.80) |
| 3.3 Amantadine CNS Probe | 0.15 | CNS confinement model; DecodeME glutamatergic hits |
| 4.1 Magnesium Threonate | 0.15 | BBB penetration (0.60/0.40); NMDA receptor role |
| 4.2 Creatine Energy Restore | 0.20 | Brain PCr increase (0.65); AMPK sensing (0.70) |
| 4.3 NAC Glutamatergic | 0.15 | System xc- modulation (0.70); compulsive behavior benefit (0.45) |
| 5.1 Interoceptive Training | 0.20 | Training paradigm validated (0.60); anxiety benefit (0.35) |
| 5.2 Slow-Paced Breathing | 0.25 | SPB HRV effects (0.60); HRV biofeedback for anxiety |
| 5.3 Wearable-Guided Pacing | 0.25 | EMA + wearable (0.60); patient community knowledge |
| 6.1 MgT + Guanfacine | 0.10 | Components at 0.15-0.20; additive logic |
| 6.2 CoQ10 + Creatine | 0.20 | Each component (0.80-0.85); bioenergetic logic |
| 6.3 Sequential Protocol | 0.10 | Components at 0.10-0.25; hypertension algorithm analogy |
| 7.1 KL Divergence Model | 0.25 | Information theory framework; Legrand 2022 cardiac interoception |
| 7.2 ODE Metabolic Cascade | 0.15 | Computational physiology framework; CPET/PEM constraints |
| 7.3 Bayesian Observer Model | 0.20 | Seth & Friston framework (0.70); Legrand 2022 fitting |
| 8.1 Fibromyalgia Bridge | 0.35 | Teodoro2018 grouping; central sensitization (0.70) |
| 8.2 FND Bridge | 0.25 | Teodoro2018 grouping; FND predictive processing |
| 8.3 IBS Bridge | 0.30 | Visceral hypersensitivity (0.75); organ-specificity evidence |
| 8.4 Cancer Fatigue Control | 0.35 | CRF mitochondrial dysfunction (0.60); HLH validation analogy |
| 9.1 Diagnostic Criterion | 0.20 | Discrepancy phenomenon (0.75); ACR/EULAR criteria analogy |
| 9.2 Diagnostic Fingerprint | 0.25 | Individual domain evidence; dementia profiling analogy |
| 9.3 48-Hour Monitor | 0.25 | EMA + wearable technology (0.60); Williams1996 circadian |
| 9.4 Treatment Trajectory | 0.25 | Treatment-response phenotyping precedent (0.60) |
| 10.1 Scale Mismatch Artifact | 0.50 | Peak-end rule (0.75); Vergauwen2021 controls (r=0.60-0.64) |
| 10.2 Wrong Instruments | 0.40 | Convergence domains (Paffrath2024, Friedberg2022) |
| 10.3 Severity Proxy | 0.45 | Ch15 limitation acknowledgment; severity-monotonic logic |
| 11.1 Zero Clinical Value Null | 0.50 | Default null for any novel instrument |
| 11.2 Confound-Explained Null | 0.40 | Multiple plausible confounds; collective explanatory power unknown |
| 12.1 Instrument Selection Bias | 0.60 | Retrospective vs. single-timepoint mismatch in every study |
| 12.2 Tissue-Mismatch in Byrnes2009 | 0.50 | Multi-system involvement; tissue-specific transcriptomics gap |
| 12.3 Severity Confound Fatal | 0.45 | Ch15 limitation; contradictory directionality predictions |
| 12.4 Overestimated Certainty | 0.55 | Correlated evidence sources; interpretative heterogeneity across domains |

---

## Cross-Reference: Ideas That Mutually Reinforce or Conflict

| Pair | Relationship | Nature |
|------|-------------|--------|
| 1.1 <-> 4.2 | Reinforcement | Energy-conservation model predicts creatine should work via AMPK silencing |
| 1.2 <-> 10.1 | Tension | 1.2 proposes temporal decoupling as mechanism; 10.1 argues it's just measurement artifact — both cannot be true simultaneously |
| 1.3 <-> 7.3 | Reinforcement | Precision-weighting model (1.3) formalized mathematically in Bayesian observer (7.3) |
| 1.4 <-> 2.3 | Reinforcement | Washout hypothesis (1.4) tested directly by serial sampling study (2.3) |
| 3.1 <-> 1.3 | Reinforcement | Guanfacine (3.1) is the pharmacological test of precision-weighting (1.3) |
| 7.1 -> 2.4 | Implication | KL decomposition (7.1) requires between-domain consistency data (2.4) to determine if components are patient-traits or domain-specific |
| 8.2 <-> 10.3 | Tension | FND bridge (8.2) proposes discriminant distinction; severity proxy (10.3) undermines it — if discrepancy = severity, FND and ME/CFS indistinguishable |
| 10.2 -> 9.2 | Reinforcement | Wrong-instruments critique (10.2) implies that better instruments would reveal domain-specific profiles (9.2) |
| 11.1 -> 2.1 | Implication | Null (11.1) can only be tested by validation study (2.1) |
| 12.1 -> 1.2 | Reinforcement | Scale-mismatch (12.1) and temporal decoupling (1.2) are the same phenomenon viewed from evidence-quality vs. mechanistic perspective |
| 12.3 -> 9.2 | Destabilization | If severity confound fatal (12.3), profile shapes (9.2) are confounded by severity — severe patients uniformly low discrepancy, mild uniformly high |

---

## Thematic Clusters

### Cluster A: The Central-Origin Model (discrepancy = brain)
1.3 (precision-weighting), 3.1 (guanfacine), 4.1 (MgT), 7.3 (Bayesian model), 5.1 (interoceptive training), 5.2 (SPB)

### Cluster B: The Peripheral-Origin Model (discrepancy = body)
1.1 (energy-conservation), 1.4 (peripheral washout), 3.2 (propranolol), 4.2 (creatine), 4.3 (NAC), 7.2 (ODE model)

### Cluster C: The Measurement-Artifact Model (discrepancy = instrument)
1.2 (temporal decoupling), 10.1 (scale mismatch), 10.2 (wrong instruments), 12.1 (selection bias), 2.2 (concurrent measurement)

### Cluster D: The Severity-Confound Model (discrepancy = severity)
10.3 (severity proxy), 12.3 (severity fatal confound), 11.2 (confound-explained null), 2.4 (domain consistency — tests if severity drives all domains equally)

### Cluster E: The Validation Cluster (make the index clinical)
2.1 (validation study), 9.1 (diagnostic criterion), 9.2 (fingerprint), 9.3 (dynamic monitor), 9.4 (trajectory biomarker), 11.1 (null assessment)

### Cluster F: The Cross-Disease Triangulation Cluster
8.1 (fibromyalgia), 8.2 (FND — discriminant), 8.3 (IBS — organ-specificity), 8.4 (CRF — positive control)
