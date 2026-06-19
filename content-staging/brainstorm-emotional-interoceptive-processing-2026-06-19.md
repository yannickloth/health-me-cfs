# Creative Brainstorm — Emotional Processing, Interoceptive Processing, and Illness Cognitions in ME/CFS

**Date:** 2026-06-19
**Topic slug:** emotional-interoceptive-processing
**Phase:** 4 — Creative Brainstorming (PROCEED)
**Origin:** brainstorm

---

## Category 1: Novel Hypotheses

### H1: Interoceptive Precision Maladaptation Hypothesis (rank 1)
In ME/CFS, the brain persistently upweights interoceptive precision (precision-weighting on visceral afferent signals) as a compensatory response to degraded signal-to-noise ratio from cytokine-modulated vagal afferents. Over time, this _adaptive_ precision upweighting becomes maladaptive: the brain locks into a high-precision interoceptive state that cannot down-regulate even when peripheral inflammation resolves. This "sticky precision" predicts that transient anti-inflammatory interventions will produce delayed (or absent) improvement in interoceptive symptoms because the brain's precision parameter has not been updated — analogous to the persistence of tinnitus after hearing loss correction. Testable: Bayesian model fitting to heartbeat detection confidence reports pre/post anti-inflammatory challenge.
- Mechanistic rationale: Predictive coding models (Seth 2011, Greenhouse-Tucknott 2022) require adaptive precision-weighting; inflamed vagal afferents produce noisy signals → brain upweights precision → but precision update may have slow temporal dynamics (hysteresis)
- Evidence: Harrison 2009 (inflammation→insula/ACC), Savitz/Harrison 2018 (inflammation→interoception pathway), Seth 2011 (predictive coding framework), Powers et al. transdiagnostic precision-weighting failure
- Certainty: 0.40
- Falsifiable prediction: Bayesian precision parameter derived from metacognitive sensitivity on HBDT will change more slowly than inflammatory markers during treatment (anti-inflammatory or pacing)
- Origin: brainstorm

### H2: Effort Prediction Error Attribution Failure (rank 2)
ME/CFS patients implicitly attribute interoceptive prediction errors (the "something is wrong" signal from unresolvable bodily discrepancy) to _external_ task demands rather than _internal_ physiological disruption, producing a characteristic pattern: task failure is attributed to "the task being too hard" rather than "my body failing." This attribution failure explains the phenomenon of patients who push through PEM-generating activity (operationally: they mis-predict task difficulty relative to their actual capacity). It also explains the normal catastrophizing recall bias (Sohl/Friedberg 2008): interoceptive prediction errors are retrospectively attributed to "my illness is terrible" rather than to the moment-to-moment bodily signals that generated them.
- Mechanistic rationale: Interoceptive prediction errors are inherently ambiguous in source (task vs body). If lower-level interoceptive signals are noisy (Harrison pathway), the brain's attribution model must infer source. In ME/CFS, the generative model over-weights external task demands because internal body monitoring is corrupted — the body "feels normal" in a noisy-body context
- Evidence: Sohl/Friedberg 2008 (recall bias, not concurrent), Greenhouse-Tucknott 2022 (effort estimation model), Rimes 2016 (emotional-autonomic dissociation)
- Certainty: 0.30
- Falsifiable prediction: In a task with varying objective difficulty and concurrent HRV/interoceptive measures, ME/CFS patients will attribute failure to task difficulty (vs body state) disproportionately to controls, and this attribution bias will correlate with interoceptive accuracy deficit
- Origin: brainstorm

### H3: Interoceptive Signal-to-Noise Ratio (iSNR) Threshold Model
ME/CFS interoceptive symptoms follow a threshold model: below a certain iSNR (signal-to-noise ratio in visceral afferent channels), the brain cannot resolve prediction errors, producing the characteristic _qualitative_ shift from "I feel tired" (graded) to "I have crashed" (all-or-nothing). This threshold explains PEM's binary nature (not a graded function of exertion) and the unpredictable trigger thresholds patients report.
- Mechanistic rationale: Predictive coding models have precision parameters that operate non-linearly. When afferent signal falls below a critical SNR threshold, the brain switches from graded Bayesian updating to a "prior capture" regime where top-down priors dominate and prediction errors are ignored → phenomenological flip from "manageable symptoms" to "PEM crash"
- Evidence: Greenhouse-Tucknott 2022 precision-weighted effort, Kadota 2010 (heightened sensitivity + absence of habituation), 2-day CPET Day 2 decline
- Certainty: 0.30
- Falsifiable prediction: Continuous HRV monitoring during graded exercise will reveal a sharp transition in heart rate variability complexity (not gradual) at the PEM trigger point, corresponding to a transition in interoceptive inference regime
- Origin: brainstorm

### H4: Afferent Noise Encoding (ANE) Hypothesis
Cytokine-induced inflammation at vagal paraganglia introduces _structured noise_ (not random noise) into the interoceptive afferent stream — specifically, a low-frequency oscillation pattern that mimics the signal of metabolic distress. The brain, unable to distinguish cytokine-driven 0.1 Hz afferent oscillations from genuine ischemia-driven ones, generates persistent "false alarm" predictions of metabolic crisis, experienced as fatigue and malaise.
- Mechanistic rationale: Cytokines modulate vagal afferent firing patterns at paraganglia (Savitz/Harrison 2018). IL-1β and TNF-α alter the firing rate and pattern of vagal C-fibers. If this pattern overlaps spectrally with the natural frequency of metabolic distress signals, the brain cannot discriminate
- Evidence: Harrison 2009 (inflammation→insula/ACC), Savitz/Harrison 2018 (vagal route), Dantzer sickness behavior model, cytokine profiles in ME/CFS
- Certainty: 0.35
- Falsifiable prediction: Spectral analysis of HRV during inflammatory challenge in healthy volunteers will show increased power in the 0.1 Hz band that correlates with fatigue ratings; ME/CFS patients will show a similar spectral shift even at rest
- Origin: brainstorm

### H5: Allostatic Prediction Inertia (API) Hypothesis
The allostatic-interoceptive system (Zhang/Wager 2025) learns predictions about the body's homeostatic set-points. In ME/CFS, these set-point predictions drift _away_ from actual homeostatic targets (due to chronic inflammation, autonomic dysfunction) but the generative model resists updating them (prediction inertia). The result: the brain persistently predicts a lower allostatic state than the body requires, producing "allostatic gap" — the feeling that one is continually falling behind on basic physiological needs (energy, rest, safety), experienced as ongoing threat and hypervigilance.
- Mechanistic rationale: Allostasis requires predictive set-point management (Sterling 2012). If afferent signals are noisy, the brain should increase prediction uncertainty and widen its set-point estimates. But if the brain also has inflated prior precision (as in the precision maladaptation model), it may instead _lock onto_ a specific set-point (e.g., "body needs rest") and resist updating
- Evidence: Zhang/Wager 2025 (allostatic-interoceptive mapping), Greenwood-Tucknott 2022 (effort prediction), Barrett 2025 (constructed emotion from interoception)
- Certainty: 0.30
- Falsifiable prediction: In a rebreathing paradigm (CO2 challenge to drive interoceptive perturbation), ME/CFS patients will show blunted updating of respiratory allostatic set-point prediction compared to controls — measured by longer latency to adjust breathing rate
- Origin: brainstorm

### H6: Emotional Granularity Deficit as Interoceptive Marker
The Barrett constructed emotion framework predicts that degraded interoceptive input reduces _emotional granularity_ — the ability to differentiate between distinct emotional states (e.g., distinguish frustration from disappointment from fatigue). This is distinct from alexithymia (difficulty identifying any feeling) and represents a finer-grained deficit. ME/CFS patients may show normal basic emotion identification but impaired differentiation among negative-valence, low-arousal states — reflecting the specific degradation of interoceptive signals that carry the differentiating information.
- Mechanistic rationale: Barrett 2025: emotion categories are constructed from interoceptive + exteroceptive arrays. If interoceptive signals are noisy, categories with similar interoceptive profiles (fatigue, sadness, boredom, emptiness) become harder to distinguish — but high-arousal categories (anger, fear, panic) remain distinguishable because they have distinct exteroceptive triggers and different autonomic signatures
- Evidence: Barrett 2025 (constructed emotion), Maroti 2017 (alexithymia in CFS), Rimes 2016 (emotion-autonomic dissociation)
- Certainty: 0.35
- Falsifiable prediction: ME/CFS patients will show lower granularity scores on the GRID emotion differentiation task specifically for low-arousal negative emotions, with preserved granularity for high-arousal emotions
- Origin: brainstorm

### H7: Interoceptive Avoidance as PEM Trigger
Patients develop interoceptive avoidance strategies (conscious or unconscious) to escape the chronic distress of unresolvable interoceptive prediction errors. These strategies include: (a) attentional deployment to external stimuli (hyperfocus, task absorption), (b) social engagement (social distraction from body awareness), and (c) substance use (caffeine, alcohol, cannabis to alter interoceptive state). These avoidance strategies produce a paradoxical effect: they temporarily reduce interoceptive distress but cause patients to exceed their energy envelope, triggering PEM. Thus, interoceptive avoidance _causes_ PEM via activity push-through, not despite but _because of_ the patient's adaptive attempt to escape symptom distress.
- Mechanistic rationale: Interoceptive prediction error is aversive (Seth 2011: interoceptive prediction error threatens the sense of presence). Avoidance is a natural learned response to an aversive signal. The conflict between avoidance-driven activity and objective capacity limits produces the characteristic boom-bust cycle
- Evidence: Rimes 2016 (emotional suppression in CFS), Brooks 2017 (emotional processing vulnerability), Sohl/Friedberg 2008 (catastrophizing recall bias), Manjaly 2019 (effort perception in fatigue)
- Certainty: 0.35
- Falsifiable prediction: Ecological momentary assessment (EMA) studying pre-PEM periods will show that activity spikes (steps, screen time, social activity) are preceded by elevated interoceptive distress ratings, consistent with avoidance-driven activity
- Origin: brainstorm

---

## Category 2: Research Directions

### R1: Definitive Tripartite Interoception Study in ME/CFS (rank 1)
A single-session study: ME/CFS (n=120, severity-stratified) vs healthy controls (n=120) vs anxiety disorder controls (n=60) completing: (1) HBDT with confidence ratings (Garfinkel protocol), (2) MAIA-2 (interoceptive sensibility), (3) TAS-20 (alexithymia), (4) PANAS (affect), (5) cytokines (IL-6, TNF-α, IL-1β). Primary: accuracy-sensibility dissociation (accuracy ↓, sensibility ↑). Secondary: metacognitive awareness (conflict between actual and perceived accuracy). Exploratory: mediation by cytokines. This is the single most impactful study suggested by the literature.
- Mechanistic rationale: Garfinkel 2015 tripartite model has never been applied to ME/CFS. The dissociation prediction directly tests the corrupted-afferent interoceptive model
- Evidence: Garfinkel 2015 (framework), Quadt/Critchley 2018 (transdiagnostic), Valenzuela 2017 (FM partial demonstration), Maroti 2017 (alexithymia)
- Certainty: 0.75 for dissociation prediction; 0.45 for cytokine mediation
- Falsifiable prediction: Accuracy < controls, sensibility > controls, awareness (metacognitive) < controls. Dissociation magnitude correlates with inflammatory markers
- Origin: brainstorm

### R2: Cytokine-Interoception Causal Pathway in ME/CFS
Antibody-based anti-inflammatory challenge (e.g., adalimumab/TNF-α inhibitor infusion, single dose) in ME/CFS (n=30) with pre/post HBDT + fMRI (insula/ACC ROI) + EMA emotional granularity measures. Test the causal pathway: TNF-α blockade → improved interoceptive signal quality → reduced accuracy-sensibility dissociation → improved emotional granularity.
- Mechanistic rationale: Harrison 2009 established inflammation→interoceptive brain changes in healthy volunteers. ME/CFS has elevated TNF-α. Causal test requires blocking TNF-α and measuring interoceptive outcomes
- Evidence: Harrison 2009, Savitz/Harrison 2018, ME/CFS TNF-α elevation literature, Manjaly 2019 (MS fatigue model)
- Certainty: 0.55
- Falsifiable prediction: Adalimumab (vs placebo) will improve HBDT accuracy and reduce the accuracy-sensibility gap within 24-48 hours, with corresponding reduction in emotional granularity deficits
- Origin: brainstorm

### R3: Post-Infectious Cohort Interoceptive Trajectory Study
Longitudinal follow-up of post-infectious fatigue cohorts (e.g., post-COVID, EBV, Q-fever) with serial Garfinkel interoception battery + cytokines + fatigue scales at 0, 3, 6, 12, 24 months. Test whether interoceptive accuracy-sensibility dissociation at baseline predicts chronic fatigue development at 12-24 months. Also test whether the dissociation emerges _before_ or _after_ chronic fatigue stabilizes (temporal priority test).
- Mechanistic rationale: Causal model predicts interoceptive disruption is causal in chronic fatigue, not merely a consequence. Post-infectious cohorts allow temporal priority assessment
- Evidence: Quadt 2018 (transdiagnostic interoception), Manjaly 2019 (MS), NICE NG206 (retirement of CBT/GET → biological focus)
- Certainty: 0.50
- Falsifiable prediction: Accuracy-sensibility dissociation at 3 months post-infection predicts fatigue persistence at 12 months, even controlling for initial infection severity and depression
- Origin: brainstorm

### R4: PEM-Provoked Interoceptive Assessment
Pre/post 2-day CPET substudy: Garfinkel interoception battery + fMRI + TAS-20 administered before Day 1 CPET and then 24h post-Day 2 CPET (PEM window). Test: does PEM worsen the accuracy-sensibility dissociation? Does it acutely reduce emotional granularity? Does it correlate with objective metabolic variables (VO2, lactate)?
- Mechanistic rationale: If interoceptive disruption is driven by peripheral metabolic/immune signals, PEM (the period of maximal peripheral perturbation) should maximally worsen interoceptive outcomes
- Evidence: 2-day CPET literature, Kadota 2010 (interoception + exercise), Greenhouse-Tucknott 2022 (exercise-fatigue model)
- Certainty: 0.40
- Falsifiable prediction: HBDT accuracy will decline from Day 1 pre to Day 2 post (PEM) in ME/CFS but not controls; this decline will correlate with CPET variables
- Origin: brainstorm

### R5: Interoceptive Training RCT in ME/CFS (PEM-Safe Protocol)
RCT (n=90, 3 arms): (1) interoceptive discrimination training (HRV biofeedback + heartbeat discrimination practice + body-scan with graded difficulty, PEM-paced), (2) non-specific relaxation training (control for attention and relaxation), (3) wait-list. Primary outcome: interoceptive accuracy (HBDT). Secondary: fatigue (FACIT-F), alexithymia (TAS-20), emotional granularity, PEM frequency.
- Mechanistic rationale: If interoceptive accuracy deficit is central, training that improves accuracy should reduce symptoms — but only if the underlying signal is recoverable (not permanently corrupted)
- Evidence: ADIE trial in autism (Quadt 2021, interoceptive training positive), HRV biofeedback in ME/CFS (limited), Kadota 2010 (altered interoception)
- Certainty: 0.30
- Falsifiable prediction: Interoceptive training improves HBDT accuracy and reduces fatigue, but only in patients with moderate (not severe) baseline afferent corruption (i.e., not those with highest cytokine levels)
- Origin: brainstorm

### R6: Emotional Granularity and Activity Pacing EMA Study
14-day EMA study (n=60 ME/CFS, n=30 controls): 6x/day random prompts for: current emotional state (free-label → granularity coding), interoceptive distress (0-10), fatigue (0-10), activity type and duration. Test whether emotional granularity (number and specificity of distinct emotional labels used) predicts next-24h activity consistency and PEM risk. Does emotional granularity buffer against boom-bust cycling?
- Mechanistic rationale: Barrett constructed emotion framework predicts that lower emotional granularity reduces the specificity of interoceptive prediction error signals, making it harder to calibrate activity to current bodily state
- Evidence: Barrett 2025 (constructed emotion), Brooks 2017 (emotional processing in CFS), Sohl/Friedberg 2008 (recall vs concurrent)
- Certainty: 0.25
- Falsifiable prediction: Low-granularity patients will show greater day-to-day activity variability (boom-bust pattern) and higher PEM risk than high-granularity patients
- Origin: brainstorm

### R7: Parasympathetic Recovery Interoception Study
Combined HBDT + HRV during paced breathing and post-exertion recovery (submaximal, PEM-safe protocol). Test: does interoceptive accuracy correlate with parasympathetic reactivation rate after cognitive or physical load? Are patients with poorer interoceptive accuracy those with blunted HRV recovery (i.e., impaired vagal withdrawal/rebound)?
- Mechanistic rationale: Vagal afferents are both the route for interoceptive signals _and_ the efferent arm of parasympathetic control. If vagal function is impaired (common in ME/CFS), both interoception and autonomic recovery should be affected — and they should correlate
- Evidence: Savitz/Harrison 2018 (vagal route), Harrison 2009 (inflammation alters insula), Danciut 2024 (white matter dysconnectivity in interoceptive tracts)
- Certainty: 0.35
- Falsifiable prediction: HBDT accuracy correlates with HRV recovery time constant (r > 0.5) in ME/CFS but not controls, indicating shared vagal mechanism
- Origin: brainstorm

---

## Category 3: Drug/Medication Ideas

### D1: Low-Dose Naltrexone (LDN) — Interoceptive Outcome Substudy
Existing LDN trials in ME/CFS primarily measure fatigue and pain. Substudy added to ongoing LDN trial: Garfinkel interoception battery + TAS-20 + emotional granularity at baseline and 12 weeks. Can LDN (already used for neuroinflammation) improve interoceptive accuracy and reduce alexithymia? If yes, this would directly link microglial modulation to interoceptive processing.
- Mechanistic rationale: LDN modulates microglial TLR4 signaling. Microglial activation → neuroinflammation → altered interoceptive processing (via insula/ACC). Reducing neuroinflammation should improve signal quality in interoceptive afferent processing
- Evidence: LDN ME/CFS literature, Harrison 2009, Savitz/Harrison 2018, microglial activation in ME/CFS
- Certainty: 0.40
- Falsifiable prediction: LDN-treated patients will show improvement in HBDT accuracy (not just subjective fatigue) compared to placebo, and this improvement will correlate with reduction in CSF inflammatory markers
- Origin: brainstorm

### D2: Transdermal Nicotine — Cholinergic Interoceptive Enhancement
Low-dose transdermal nicotine (7 mg patch, carefully monitored for HR/BP effects) as a cholinergic agonist to enhance vagal afferent signal quality. Rationale: nicotinic acetylcholine receptors (α7 nAChR) on vagal afferents enhance signal transmission. If cytokine-induced vagal afferent noise is partly due to reduced cholinergic tone (inflammatory reflex dysfunction), boosting nAChR activity could improve the signal-to-noise ratio of interoceptive afferents.
- Mechanistic rationale: α7 nAChR agonists enhance vagal afferent transmission and have anti-inflammatory effects via the cholinergic anti-inflammatory pathway. Nicotine is a well-characterized α7 agonist
- Evidence: Cholinergic anti-inflammatory pathway (Tracey 2007), α7 nAChR role in vagal afferents, blunted HRV in ME/CFS (parasympathetic dysfunction), inflammatory reflex literature
- Certainty: 0.25 (novel; requires safety data in ME/CFS; nicotine-naive patients may have tolerability issues)
- Falsifiable prediction: 7-day transdermal nicotine will improve HBDT accuracy and HRV parameters in ME/CFS, with corresponding reduction in fatigue and alexithymia
- Origin: brainstorm

### D3: Pirfenidone — TGF-β-Mediated Interoceptive Signal Cleaning
Pirfenidone (antifibrotic, TGF-β inhibitor) is used in idiopathic pulmonary fibrosis but may have a role in ME/CFS by reducing TGF-β-mediated suppression of vagal afferent sensitivity. TGF-β is elevated in ME/CFS and known to alter sensory neuron excitability. Reducing TGF-β could normalize vagal afferent signaling, improving interoceptive signal quality.
- Mechanistic rationale: TGF-β modulates sensory neuron excitability and reduces synaptic transmission. Elevated TGF-β in ME/CFS may suppress vagal afferent signal transmission, contributing to reduced interoceptive accuracy
- Evidence: TGF-β elevation in ME/CFS (multiple studies), TGF-β effects on vagal afferents, TGF-β in sensory processing
- Certainty: 0.20 (speculative; pirfenidone has significant side effects; off-label; needs careful safety evaluation)
- Falsifiable prediction: Pirfenidone would increase HBDT accuracy and reduce the accuracy-sensibility gap in ME/CFS patients with elevated TGF-β
- Origin: brainstorm

### D4: Guanfacine — Prefrontal Precision Modulation
Guanfacine (α2A-adrenergic agonist, used in ADHD) enhances prefrontal cortical function and may improve the _top-down precision-weighting_ of interoceptive signals. By strengthening prefrontal regulation of the insula-ACC interoceptive network, guanfacine could normalize the "sticky precision" problem (H1) and improve metacognitive interoceptive awareness.
- Mechanistic rationale: Guanfacine enhances prefrontal cognitive control via α2A receptors on prefrontal dendrites. In the predictive coding framework, prefrontal cortex supplies top-down predictions about interoceptive state. Enhancing prefrontal function could improve the precision of these predictions and the flexibility of precision-weighting
- Evidence: Guanfacine in ADHD (cognitive enhancement), PFC regulation of interoception, Powers et al. (transdiagnostic precision-weighting failure), ch14d PFC-interoception architecture
- Certainty: 0.25
- Falsifiable prediction: Guanfacine will improve metacognitive interoceptive awareness (confidence-accuracy correlation on HBDT) without changing accuracy itself, and this improvement will correlate with reduced fatigue-related cognitive effort
- Origin: brainstorm

### D5: Ivabradine — Interoceptive Signal Decoupling
Ivabradine (If channel blocker, reduces heart rate without affecting contractility) reduces the _amplitude_ of cardiac afferent signals by lowering resting HR. If interoceptive hypervigilance is driven by amplified cardiac interoceptive signals (elevated precision on cardiac prediction errors), lowering the afferent signal amplitude could reduce interoceptive prediction error magnitude, providing symptom relief. Testable: single-dose ivabradine → HR ↓ → HBDT task performance (more accurate due to less noisy signal? or less sensitive due to reduced afferent amplitude?).
- Mechanistic rationale: Interoceptive hypervigilance = elevated precision-weighting on cardiac afferents. Reducing afferent signal amplitude (ivabradine → lower HR → smaller cardiac excursion) reduces the prediction error magnitude, potentially reducing symptom intensity
- Evidence: Kadota 2010 (elevated HBDT accuracy in CFS), ivabradine in POTS (used off-label), POTS-ME/CFS overlap (ch14d)
- Certainty: 0.25 (mechanism predicts opposite direction of the main model — need to test whether elevated accuracy or dissociation is the ME/CFS pattern)
- Falsifiable prediction: If elevated HBDT accuracy is the ME/CFS pattern (Kadota 2010), ivabradine will reduce accuracy and MAY reduce fatigue. If dissociation is the pattern (our model), ivabradine may worsen accuracy (further reducing signal) or improve metacognitive awareness (slower heartbeat easier to track)
- Origin: brainstorm

---

## Category 4: Supplement/Nutraceutical Ideas

### S1: Palmitoylethanolamide (PEA) — Microglial-Interoceptive Modulation
PEA (endogenous fatty acid amide, ALIA-63 receptor agonist) reduces microglial activation and mast cell degranulation. PEA is already used in chronic pain and neuroinflammation. In ME/CFS, PEA could reduce neuroinflammation in interoceptive regions (insula, ACC), improving afferent signal quality. PEA is available as supplement (300-600 mg, micronized), well-tolerated.
- Mechanistic rationale: PEA activates PPAR-α and ALIA-63 on microglia → reduced pro-inflammatory cytokine release → improved signal quality in interoceptive afferent processing
- Evidence: PEA in chronic pain (meta-analyses), PEA in neuroinflammation, ME/CFS microglial activation, Harrison 2009 pathway
- Certainty: 0.35 (PEA is safe; evidence for neuroinflammation reduction in pain populations; no ME/CFS trials of PEA for interoception)
- Falsifiable prediction: 8-week PEA supplementation will improve HBDT accuracy and reduce alexithymia scores in ME/CFS (N=40 before/after)
- Origin: brainstorm

### S2: L-Serine — Astrocytic D-Serine for NMDA-Dependent Interoceptive Plasticity
L-serine is a precursor to D-serine, an NMDA receptor co-agonist essential for synaptic plasticity. Interoceptive predictive coding requires NMDA-dependent plasticity at cortico-insular and insular-striatal synapses. L-serine supplementation could enhance the brain's capacity to _update_ interoceptive predictions — i.e., resolve the prediction inertia problem. Low-dose, safe supplement.
- Mechanistic rationale: NMDA receptor function requires D-serine. D-serine availability is rate-limited by L-serine via serine racemase. Enhancing NMDA function at insular synapses could facilitate the prediction error update that the "sticky precision" model hypothesizes is impaired
- Evidence: L-serine in neurological conditions (ALS, schizophrenia), D-serine in NMDA function, ME/CFS glutamatergic dysfunction (ch15), Seth 2011 (predictive coding requires synaptic plasticity)
- Certainty: 0.20 (highly speculative; no ME/CFS data; theoretical chain is long)
- Falsifiable prediction: L-serine (2 g/day, 12 weeks) will improve metacognitive interoceptive awareness (not accuracy) in ME/CFS, consistent with improved Bayesian updating of priors
- Origin: brainstorm

### S3: N-Acetylcysteine (NAC) — Glutathione + Glutamate Modulation for Interoceptive Noise Reduction
NAC replenishes glutathione (antioxidant) and modulates glutamatergic transmission. In ME/CFS, NAC could: (1) reduce oxidative stress in insular interoceptive regions → improved signal transmission, (2) normalize glutamatergic excitation-inhibition balance in insula → improved signal-to-noise ratio. NAC has shown preliminary benefit in ME/CFS (reduced fatigue) but interoceptive outcomes not assessed.
- Mechanistic rationale: Oxidative stress degrades neural signal transmission (adds noise). Glutamatergic imbalance alters excitation-inhibition ratios, affecting the gain of neural responses. Both are present in ME/CFS insula/ACC. NAC addresses both
- Evidence: NAC in ME/CFS (small trials, fatigue improvement), NAC effects on glutamate in neuroimaging, oxidative stress in ME/CFS microglia (ch15)
- Certainty: 0.30
- Falsifiable prediction: NAC (1200 mg/day, 8 weeks) will improve HBDT accuracy and reduce the accuracy-sensibility dissociation, mediated by improved GSH/GSSG ratio
- Origin: brainstorm

### S4: Omega-3 (EPA-rich) — Membrane Fluidity + Anti-Inflammatory Vagal Enhancement
High-dose EPA/DHA improves vagal tone (HRV), reduces systemic inflammation, and enhances membrane fluidity in neural tissue. In ME/CFS, omega-3 could improve vagal afferent signal transmission by: (1) reducing cytokine production (anti-inflammatory), (2) enhancing membrane fluidity in vagal afferent terminals → improved signal transduction, (3) increasing vagal tone (HRV improvement). Well-tolerated, safe.
- Mechanistic rationale: Omega-3 PUFAs are precursors to resolvins (specialized pro-resolving mediators) that actively terminate inflammation. They also integrate into neuronal membranes, where DHA increases membrane fluidity and receptor function
- Evidence: Omega-3 in depression (meta-analytic evidence), HRV improvement with omega-3, anti-inflammatory effects in chronic illness, vagal nerve function enhancement
- Certainty: 0.35
- Falsifiable prediction: 12-week high-EPA omega-3 (≥2 g/day EPA) will improve HRV parameters and HBDT accuracy in ME/CFS, with the HRV improvement mediating the accuracy change
- Origin: brainstorm

### S5: L-Theanine — α-Wave Enhancement for Interoceptive Distress Reduction
L-theanine (green tea amino acid) increases α-wave activity in posterior/anterior cortex and reduces stress responses without sedation. In the interoceptive model, L-theanine could reduce the _aversive quality_ of interoceptive prediction errors (reducing the affective response to unresolvable prediction errors) without changing the prediction error itself. This would reduce hypervigilance and avoidance (H7) without masking genuine physiological signals — safer than benzodiazepines.
- Mechanistic rationale: L-theanine increases GABA, glycine, and dopamine levels; promotes α-wave activity associated with relaxed alertness. This state reduces the _affective weight_ of prediction errors without suppressing the prediction error signal itself (unlike benzodiazepines which reduce interoceptive accuracy)
- Evidence: L-theanine in anxiety/stress, α-wave EEG studies, safety in chronic illness, effect on HRV during stress
- Certainty: 0.20
- Falsifiable prediction: L-theanine does NOT change HBDT accuracy but reduces subjective distress during the HBDT task, specifically in the confidence-rating phase (metacognitive distress reduction)
- Origin: brainstorm

---

## Category 5: Non-Pharmacological Interventions

### N1: Heartbeat Discrimination Biofeedback (PEM-Adapted)
A PEM-safe version of heartbeat discrimination biofeedback: patients are trained to detect their heartbeat (sitting, supine, pacing-allowed) with visual feedback of accuracy. Over 8-12 weeks, graded from easy (resting, supine, post-exercise HR elevation) to hard (sitting, variable breathing). Designed to improve interoceptive accuracy (the objective deficit) rather than reduce body awareness.
- Mechanistic rationale: Interoceptive accuracy is trainable (ADIE trial in autism, Quadt 2021). Improving accuracy should reduce the gap between actual and perceived body state, reducing prediction error and symptom amplification
- Evidence: ADIE trial (Quadt 2021), HRV biofeedback in ME/CFS (modest), Schandry trainability literature, Garfinkel 2015 framework
- Certainty: 0.30 (no ME/CFS-specific data; PEM risk requires careful pacing)
- Falsifiable prediction: HR accuracy training improves HBDT accuracy AND reduces fatigue over sham training in ME/CFS
- Origin: brainstorm

### N2: Continuous Low-Intensity Transcutaneous Auricular Vagus Nerve Stimulation (tVNS)
Low-intensity tVNS (ear electrode, 0.5-1.0 mA, 20 Hz, 30 min sessions) — continuous, PEM-safe because no physical exertion. tVNS enhances vagal afferent signal-to-brain ratio, potentially "cleaning up" the cytokine-corrupted vagal afferent signal. Unlike pharmacological approaches, tVNS directly stimulates the afferent nerve being discussed, providing a controlled "signal boost."
- Mechanistic rationale: tVNS activates auricular branch of vagus → NTS → insula/ACC → improved vagal afferent signal quality. This directly counteracts the cytokine-induced afferent noise by providing clean, controlled afferent input at the correct frequency
- Evidence: tVNS in depression (FDA-cleared), tVNS in inflammation (cholinergic anti-inflammatory), tVNS in ME/CFS (early trials post-2024), Savitz/Harrison 2018 (vagal route)
- Certainty: 0.35 (tVNS is safe; early ME/CFS data emerging; mechanism sound)
- Falsifiable prediction: Daily tVNS (20 min, 4 weeks) will improve HBDT accuracy and reduce emotional-autonomic dissociation in ME/CFS, with EEG showing enhanced insular-ACC connectivity
- Origin: brainstorm

### N3: Emotional Granularity Training — The "Feeling Vocabulary" Intervention
A 6-week cognitive intervention teaching patients to build a more differentiated emotional vocabulary. Patients learn to label interoceptive states with greater specificity ("my heart is racing AND my muscles are heavy AND I feel irritable" → "frustrated-fatigue" vs "anxious-exhaustion"). The goal is to reduce the _affective uncertainty_ generated by noisy interoceptive signals by providing richer cognitive categories for labeling them.
- Mechanistic rationale: Barrett 2025: emotion categories are constructed — richer category structure enables better interoceptive inference even with noisy input. This is NOT "think positive" — it is providing better Bayesian priors for classifying ambiguous interoceptive signals
- Evidence: Barrett 2025 (constructed emotion), emotion granularity training in anxiety (positive), affect labeling in pain (reduces pain)
- Certainty: 0.25
- Falsifiable prediction: Emotional granularity training will reduce fatigue and interoceptive distress in ME/CFS without changing HBDT accuracy — because it improves the interpretation of noisy signals, not the signal itself
- Origin: brainstorm

### N4: Nadi Shodhana (Alternate Nostril Breathing) — Autonomic-Interoceptive Calibration
Alternate nostril breathing (pranayama) at 5-second inhale/5-second hold/5-second exhale cycles, twice daily for 10 min. Rationale: pranayama produces measurable shifts in autonomic balance (increased HRV, reduced sympathetic dominance) and has been shown to improve interoceptive accuracy in healthy volunteers. The specific mechanism: the rhythmic alternation of nasal airflow (which activates different hemi-cortical and hemi-autonomic circuits) trains the brain to calibrate interoceptive predictions against the known cycle, improving precision.
- Mechanistic rationale: Nasal airflow modulates autonomic balance via trigeminal afferents → brainstem autonomic nuclei → resets vagal tone. The predictable rhythm provides a reference signal that the brain can use to calibrate interoceptive predictions
- Evidence: Pranayama improves HRV and reduces anxiety (meta-analyses), pranayama effects on interoceptive accuracy (early studies), vagal modulation via nasal cycle
- Certainty: 0.20 (limited ME/CFS-specific data; safe but compliance variable; may trigger PEM if done with excessive breath-hold)
- Falsifiable prediction: 4 weeks of pranayama will improve HRV parameters and HBDT metacognitive awareness in ME/CFS, with the HRV improvement predicting the awareness gain
- Origin: brainstorm

### N5: Graded Interoceptive Exposure (GIE) — Not GET
A graded exposure protocol where patients are exposed to _predictable, controllable interoceptive signals_ (not exercise) — such as breath-hold (→ CO2 → cardiac perturbation → predictable), head-down tilt, cold pressor, or mental arithmetic with HR monitoring. The goal: re-train the brain that interoceptive prediction errors are resolvable (safe), reducing the hypervigilance and avoidance that maintain the system. This is explicitly NOT graded exercise (no metabolic load) — it is directed interoceptive perturbation.
- Mechanistic rationale: If avoidance of interoceptive signals (H7) maintains the maladaptive cycle, graded exposure to these signals in a safe, predictable context should reduce avoidance and improve allostatic regulation
- Evidence: Interoceptive exposure in panic disorder (gold standard), claustrophobia analogy (Seth 2011: disrupted interoceptive presence), Rimes 2016 (emotional suppression in CFS)
- Certainty: 0.25 (logical extension; no ME/CFS-specific data; must be PEM-safe by design)
- Falsifiable prediction: GIE will reduce interoceptive hypervigilance (MAIA-2 Worry subscale) and improved HBDT metacognitive awareness, with reduced PEM frequency
- Origin: brainstorm

### N6: Slow-Paced Breathing Resonance Training (0.1 Hz)
Daily slow-paced breathing at 6 breaths/min (the resonance frequency where HRV is maximized), 15 min twice daily. This frequency entrains cardiorespiratory coupling at the baroreflex resonance, producing the largest amplitude HRV oscillations. The large, predictable HRV oscillations provide a reference signal that the brain can use to recalibrate its interoceptive predictions — the brain learns "this is what a healthy cardiac signal looks like."
- Mechanistic rationale: At 0.1 Hz breathing, heart rate oscillations are maximal and phase-locked to respiration. This large, predictable signal provides high-quality interoceptive afferent data that the brain can use to update its interoceptive generative model, counteracting the noisy signals from cytokine-corrupted vagal afferents
- Evidence: 0.1 Hz breathing improves HRV and baroreflex sensitivity, HRV biofeedback in ME/CFS (small trials), vagal afferent training studies
- Certainty: 0.35
- Falsifiable prediction: 8 weeks of daily 0.1 Hz breathing will improve HBDT accuracy and metacognitive awareness, with increased HRV amplitude mediating the effect
- Origin: brainstorm

---

## Category 6: Combinations + Access

### C1: Anti-Inflammatory + Biofeedback (Dual Pathway Protocol)
Combination protocol: (1) anti-inflammatory intervention (e.g., LDN or low-dose prednisolone or EPA-rich omega-3) + (2) HRV biofeedback/resonance breathing — administered simultaneously for 8 weeks. Rationale: the anti-inflammatory reduces afferent noise at source (cytokine→vagus pathway); the biofeedback provides a clean reference signal for recalibration. Either alone may be insufficient; together they address both the noise source and the maladaptively calibrated prediction system.
- Mechanistic rationale: Inflammation→noise (Harrison pathway) and precision maladaptation (predictive coding model) are two separate problems requiring two separate interventions — source reduction (anti-inflammatory) and recalibration (biofeedback)
- Evidence: Harrison 2009, Savitz/Harrison 2018, HRV biofeedback in ME/CFS, LDN trials
- Certainty: 0.35
- Falsifiable prediction: Combination > either monotherapy on HBDT accuracy improvement and fatigue reduction
- Origin: brainstorm

### C2: Severity-Adapted Interoceptive Rehabilitation
A tiered protocol where interoceptive interventions are matched to severity level:
- **Severe/housebound:** Supine HRV biofeedback only (no effort); L-theanine or PEA for interoceptive distress reduction; caregiver-assisted slow breathing (3 min, twice daily)
- **Moderate:** Seated HBDT + emotional granularity labeling + 0.1 Hz breathing (10 min/day); PEA or NAC
- **Mild-moderate:** Full HBDT training + tVNS + GRID emotional granularity training + anti-inflammatory (omega-3 or LDN)
- **Mild:** All of the above + GIE (safe interoceptive perturbation protocol)
- Mechanistic rationale: Severity affects afferent signal quality, baseline cognitive capacity, and PEM trigger thresholds. Tiered approach avoids harm while maximizing benefit
- Evidence: Severity stratification literature, pacing guidelines, NICE NG206, ch14f (CPET-derived severity)
- Certainty: 0.30
- Falsifiable prediction: Tiered protocol will show better adherence and lower dropout than uniform protocol, and moderate patients will benefit more than severe (who have too much signal corruption to train effectively)
- Origin: brainstorm

### C3: Caregiver-Implemented Interoceptive Support
Training caregivers to: (1) use structured emotional granularity questioning with patient ("Is this tired or heavy or hollow or floaty?" rather than "You seem tired"), (2) guide 3-5 min slow breathing during patient rest periods, (3) monitor signs of interoceptive distress escalation (avoidance-driven activity spikes) and suggest rest before PEM trigger. This is NOT caregiver-led therapy — it is supporting the patient's own interoceptive regulation.
- Mechanistic rationale: Emotional granularity is improved by social labeling (Barrett: emotion concepts are learned socially). If the patient's interoceptive signals are noisy, the caregiver's differentiated emotional vocabulary can scaffold the patient's categorization
- Evidence: Barrett 2025, caregiver burden literature in ME/CFS, social support in chronic illness
- Certainty: 0.20
- Falsifiable prediction: Caregiver training + standard care > standard care alone on patient-reported emotional granularity and PEM frequency reduction
- Origin: brainstorm

### C4: Digital Therapeutic — Interoceptive EMA + Training App
Smartphone app combining: (1) brief EMA probes (5x/day, 30s each) for interoceptive state sampling, (2) daily 5-min HR biofeedback game (detecting heartbeat), (3) personalized activity pacing suggestions based on interoceptive prediction error accumulation (AI model of EMA data). Designed for home use, PEM-safe, minimal cognitive load.
- Mechanistic rationale: Frequent, low-cost interoceptive sampling provides the brain with multiple opportunities to update its interoceptive model. The biofeedback game improves accuracy. The pacing algorithm prevents avoidance-driven overactivity
- Evidence: EMA in ME/CFS (limited but feasible), digital therapeutics in chronic pain, biofeedback apps
- Certainty: 0.25
- Falsifiable prediction: 12-week app use improves HBDT accuracy and reduces PEM frequency by ≥30% compared to standard diary app
- Origin: brainstorm

### C5: PEM-Protected Interoceptive Rehabilitation Protocol
Protocol rules to prevent interoceptive training from triggering PEM:
- No breath-hold > 50% of vital capacity
- No training during PEM (post-exertional period)
- Training only in recumbent or semi-recumbent position
- Maximum session duration = 20 min, with 5 min warning
- Any increase in interoceptive distress > 2/10 → abort and cool-down
- Training frequency: 5x/week, never 2 consecutive days
This operationalizes the principle that interoceptive training should NOT add allostatic load — it facilitates recovery by improving signal quality, not by imposing stress.
- Mechanistic rationale: Interoceptive training should reduce allostatic load (better signal → lower prediction error → lower free energy). If training itself increases allostatic load (stress, effort, distress), it defeats the purpose
- Evidence: Pacing literature, PEM physiology, NICE NG206
- Certainty: 0.30
- Falsifiable prediction: PEM-protected protocol achieves >80% adherence and does not increase PEM frequency, whereas an unprotected protocol will cause attrition from PEM
- Origin: brainstorm

---

## Category 7: Mathematical Model Extensions

### M1: Afferent Noise Parameter in Interoceptive Predictive Coding ODE
Current ODE models of interoceptive predictive coding (based on Seth 2011, Greenhouse-Tucknott 2022) do not include a parameter for afferent signal corruption. **Proposed variable:** σ_noise(t) — time-varying noise/uncertainty on interoceptive afferent signals. Parameterized as a function of: cytokine levels (IL-6, TNF-α), HRV complexity, and vagal afferent firing irregularity. **Prediction:** increasing σ_noise → reduced accuracy → increased precision-weighting (compensatory) → system enters a "locked-in" precision state (hysteresis).
- Mechanistic rationale: The predictive coding model has precision parameters on both priors and likelihoods. Adding noise to likelihoods (afferent signals) should produce the predicted dissociation
- Evidence: Seth 2011 (predictive coding equations), Powers et al. (transdiagnostic precision failure), Harrison 2009 (inflammation→insula)
- Certainty: 0.40
- Falsifiable prediction: Model with σ_noise > 0.5 (relative scale) produces bistable solutions (two attractors) — fits the all-or-nothing PEM data better than models without noise
- Origin: brainstorm

### M2: Precision Hysteresis Variable to Explain PEM Permanence
Add a _precision memory_ parameter τ_update (time constant of precision-weight update) to the predictive coding ODE. **Proposed variable:** τ_prec — the time constant over which the brain's precision-weight on interoceptive channels decays back to baseline after a perturbation. **Prediction:** ME/CFS has τ_prec > 72 hours (precision takes > 3 days to downregulate after a PEM-triggering event), while healthy controls have τ_prec < 1 hour.
- Mechanistic rationale: H1 (precision maladaptation) proposes that interoceptive precision gets "stuck." A slow τ_prec is the mathematical expression of this. Explains why PEM recovery takes days, not hours
- Evidence: Seth 2011, Greenhouse-Tucknott 2022, Kadota 2010 (no habituation), 2-day CPET recovery
- Certainty: 0.35
- Falsifiable prediction: Model with τ_prec = 72h fits 2-day CPET Day 2 decline data better than τ_prec = 1h. Bayesian parameter estimation from EMA data could estimate τ_prec per patient
- Origin: brainstorm

### M3: Interoceptive-Autonomic Coupling Coefficient
Add to the allostatic-interoceptive ODE a coupling coefficient k_i-a between interoceptive accuracy (A_intero) and autonomic recovery (τ_autonomic). **Proposed parameter:** k_ia ∈ [0,1] where k_ia = 1 means interoceptive accuracy perfectly tracks autonomic recovery, and k_ia = 0 means they are independent. **Prediction:** ME/CFS patients have k_ia ≈ 0.2 (near independence — interoceptive processing is decoupled from actual autonomic state), while healthy controls have k_ia ≈ 0.8 (tight coupling).
- Mechanistic rationale: Rimes 2016 found emotional-autonomic dissociation. We extend this: interoceptive accuracy and autonomic state are normally coupled (heartbeat detection improves when HR is elevated). ME/CFS decouples them
- Evidence: Rimes 2016, R7 (this brainstorming document), Danciut 2024 (white matter dysconnectivity between interoceptive and autonomic regions)
- Certainty: 0.30
- Falsifiable prediction: In healthy controls, HBDT accuracy improves during exercise (HR ↑ → more salient signal). In ME/CFS, HBDT accuracy does NOT improve during exercise, giving k_ia ≈ 0
- Origin: brainstorm

### M4: Afferent Noise × Prior Precision Phase Space
Construct a 2D dynamical system: x-axis = σ_noise (afferent noise level), y-axis = π_prior (prior precision on interoceptive predictions). **Phase space predictions:**
- Low σ_noise, moderate π_prior → healthy (graded response to perturbation)
- High σ_noise, low π_prior → anxious monitoring (high accuracy, high sensibility, high awareness)
- High σ_noise, high π_prior → ME/CFS-like (low accuracy, high sensibility, low awareness)
- Very high σ_noise + very high π_prior → "locked-in" state (PEM, all-or-nothing)
- Mechanistic rationale: Combinations of afferent noise and prior precision produce qualitatively different phenomenological states. The model predicts which parameter regime maps to ME/CFS
- Evidence: Garfinkel 2015 (tripartite dissociation), Powers et al. (precision failure), Seth 2011
- Certainty: 0.35
- Falsifiable prediction: Patients in the "locked-in" quadrant (high noise, high precision) will have the highest PEM severity, poorest treatment response, and lowest interoceptive awareness
- Origin: brainstorm

### M5: Catastrophizing as Recall Bias in Predictive Coding
Formalize the Sohl/Friedberg 2008 finding (catastrophizing affects recall, not real-time experience) in the predictive coding framework: **Proposed variable:** κ_recall — the precision weight on past interoceptive prediction errors in memory (κ_recall ∈ [0,1]; 0 = no memory, 1 = perfect memory of all past errors). **Prediction:** catastrophizing = high κ_recall applied selectively to large prediction errors. The retrospective recall bias emerges naturally: the brain remembers the worst moments (high κ_recall) and weights them into current predictions, but real-time experience is driven by current (lower amplitude) prediction errors.
- Mechanistic rationale: Predictive coding models assume sequential Bayesian updating. If past prediction errors are stored with precision proportional to their magnitude (biologically plausible — norepinephrine encoding of salience/PEM), the recall bias is a prediction of the model, not a separate phenomenon
- Evidence: Sohl/Friedberg 2008, Poort 2021 (null mediation), Greenhouse-Tucknott 2022, ch33 catastrophizing critique
- Certainty: 0.30
- Falsifiable prediction: Computational model with κ_recall > 0.8 reproduces the Sohl/Friedberg recall bias pattern. Individual differences in κ_recall correlate with PCS Recall subscale but NOT with concurrent fatigue EMA ratings
- Origin: brainstorm

---

## Category 8: Cross-Disease Bridges

### B1: Multiple Sclerosis → ME/CFS: Interoceptive Training Predictions
Danciut 2024 found that interoceptive metacognitive awareness (not accuracy) correlated with MS fatigue. In MS, interoceptive awareness deficits predicted fatigue severity. **ME/CFS prediction:** The same pattern will hold — metacognitive interoceptive awareness (confidence-accuracy gap on HBDT) will be the strongest predictor of fatigue severity, stronger than accuracy or sensibility alone. This is important because it identifies the intervention target: metacognitive insight, not raw accuracy.
- Mechanistic rationale: Danciut 2024 (MS: awareness > accuracy for fatigue), Garfinkel 2015 (metacognitive awareness), Manjaly 2019 (MS fatigue model → ME/CFS)
- Evidence: Danciut 2024 (MS), Manjaly 2019 (MS), Greenhouse-Tucknott 2022 (general fatigue), ME/CFS neuroinflammation parallels
- Certainty: 0.50
- Falsifiable prediction: In ME/CFS, HBDT metacognitive awareness (confidence-accuracy difference) will predict FACIT-F fatigue scores (r > 0.4) after controlling for accuracy and sensibility
- Origin: brainstorm

### B2: Autism → ME/CFS: Interoceptive Hyperprecision as Shared Mechanism
Autistic individuals are hypothesized to have over-precise interoceptive priors (top-down predictions too precise → sensory inflexibility). ME/CFS may produce an acquired version of the same phenomenon (H1: acquired hyperprecision). **Bridge prediction:** The interoceptive phenotype of severe ME/CFS will resemble ASD more than it resembles depression or anxiety — specifically: sensory hypersensitivity, difficulty with unexpected sensory input, need for routine/predictability. This predicts that ME/CFS patients without pre-existing ASD will show ASD-like sensory processing differences on standardized measures (e.g., AASP, Glasgow Sensory Questionnaire).
- Mechanistic rationale: Both conditions produce the same computational problem — over-precise priors suppressing sensory updating — but through different mechanisms (trait vs acquired inflammation-driven noise)
- Evidence: ASD interoceptive hyperprecision (Pellicano, Quadt), ch14d interoceptive-ASD connection, Wortinger 2017 (altered ACC-PFC in CFS)
- Certainty: 0.35
- Falsifiable prediction: ME/CFS patients will score above population norms on sensory sensitivity scales (AASP, GSQ) at levels comparable to high-functioning ASD, but the pattern will correlate with inflammatory markers (unlike ASD)
- Origin: brainstorm

### B3: Panic Disorder → ME/CFS: Interoceptive Conditioning Divergence
In panic disorder, interoceptive conditioning (heartbeat→fear) is a core mechanism — patients learn that cardiac sensations predict danger. ME/CFS may involve a related but distinct mechanism: interoceptive conditioning to _allostatic failure_ (any internal sensation → "I will crash"). **Bridge prediction:** Both involve elevated interoceptive threat associations, but panic responses are fast, phasic, and linked to specific interoceptive sensations (heart racing) while ME/CFS interoceptive threat is slow, tonic, and linked to metabolic/interoceptive accumulation ("energy envelope").
- Mechanistic rationale: Seth 2011 (interoceptive inference disrupted in both). The temporal and frequency difference (panic = seconds; ME/CFS = hours/days) maps onto different levels of the interoceptive hierarchy (panic = brainstem/cardiac; ME/CFS = insula/allostatic)
- Evidence: Panic interoceptive conditioning (well-established), Seth 2011 (predictive coding of presence), Rimes 2016 (emotional-autonomic dissociation)
- Certainty: 0.40
- Falsifiable prediction: ME/CFS patients will show elevated interoceptive threat associations (affective priming from HBDT) but the autonomic response will be blunted (not tachycardia as in panic), distinguishing the two
- Origin: brainstorm

### B4: Long COVID → ME/CFS: Interoceptive Trajectory Comparison
Long COVID provides a natural experiment: a large, precipitated-onset cohort with known timing. **Bridge prediction:** Among long COVID patients, interoceptive accuracy-sensibility dissociation at 3 months predicts transition to ME/CFS diagnostic criteria at 12-24 months. If validated, this provides the first prospective biomarker of ME/CFS development.
- Mechanistic rationale: The inflammation→interoception pathway is activated by SARS-CoV-2 infection (sustained cytokine elevation, vagal afferent involvement). The Garfinkel dissociation should be present early and predict chronicity
- Evidence: Long COVID fatigue overlaps with ME/CFS, cytokine persistence in long COVID, Harrison 2009 (inflammation→interoception), Manjaly 2019
- Certainty: 0.40
- Falsifiable prediction: A long COVID+ME/CFS cohort study (n=200) at 3, 6, 12, 24 months post-infection shows HBDT dissociation at 3 months predicts ME/CFS diagnosis at 12 months (AUC > 0.70)
- Origin: brainstorm

### B5: Fibromyalgia → ME/CFS: Body Awareness Dissociation Convergence
Valenzuela-Moguillansky 2017: FM patients show elevated body attention with impaired tactile localization. **Bridge prediction:** The accuracy-sensibility dissociation is shared between FM and ME/CFS, but the _type_ of interoceptive deficit differs: FM may show greater exteroceptive-interoceptive boundary disruption (tactile localization → body schema) while ME/CFS shows greater pure interoceptive disruption (visceral → emotion). This predicts that FM-ME/CFS comorbidity produces additive interoceptive dysfunction.
- Mechanistic rationale: FM and ME/CFS share central sensitization, but FM has more pain processing involvement (somatosensory, spinothalamic) while ME/CFS has more autonomic/interoceptive involvement (vagal, brainstem). Comorbidity produces both deficits
- Evidence: Valenzuela-Moguillansky 2017 (FM body awareness), Garfinkel 2015, FM-ME/CFS comorbidity (~40%)
- Certainty: 0.35
- Falsifiable prediction: ME/CFS-only patients have HBDT deficits but normal tactile localization; FM-only have tactile deficits but normal HBDT; comorbid have both
- Origin: brainstorm

### B6: Cancer-Related Fatigue → ME/CFS: Catastrophizing Null Replication
Poort 2021 (cancer fatigue: catastrophizing does NOT mediate treatment outcome) should be replicated in ME/CFS specifically. **Bridge prediction:** Replication in ME/CFS will show the same null mediation effect for fatigue-specific catastrophizing. This is critical because if the null finding holds in ME/CFS, the entire CBT-for-ER/GET rationale for targeting catastrophizing collapses.
- Mechanistic rationale: Poort 2021 is the highest-quality study (RCT mediation, n=134) showing catastrophizing not mediating fatigue improvement. Replicating in ME/CFS is a high-priority confirmatory study
- Evidence: Poort 2021, Sohl/Friedberg 2008, ch33 catastrophizing critique, NICE NG206
- Certainty: 0.65 (high confidence in null replication — the evidence strongly suggests catastrophizing is not a causal mechanism)
- Falsifiable prediction: ME/CFS RCT (any active treatment) with well-powered mediation analysis will show non-significant indirect effect through catastrophizing (bootstrap CI includes 0)
- Origin: brainstorm

---

## Category 9: Diagnostic/Biomarker Ideas

### BM1: Interoceptive Accuracy-Sensibility Gap (IASG) as Diagnostic Index
Calculate IASG = z(MAIA-2 sensibility) − z(HBDT accuracy) per patient. **Prediction:** IASG > 1.5 SD above healthy mean discriminates ME/CFS from healthy controls (AUC > 0.80) and from anxiety disorder controls (AUC > 0.70). A composite index that quantifies the dissociation in a single number could serve as a diagnostic biomarker, treatment stratification tool, and treatment response marker.
- Mechanistic rationale: The dissociation is the mechanistic signature of corrupted afferent signals with compensatory hypervigilance. A single metric captures this
- Evidence: Garfinkel 2015, Valenzuela-Moguillansky 2017 (FM analogy), Maroti 2017
- Certainty: 0.50
- Falsifiable prediction: IASG discriminates ME/CFS from controls better than any single interoceptive measure, and tracks treatment response
- Origin: brainstorm

### BM2: Predictive Coding Model Parameter Profile (Computational Phenotype)
Fit a Bayesian predictive coding model to each individual's HBDT performance + confidence ratings + response times (e.g., hierarchical drift-diffusion model with precision parameters). Output: patient-specific parameter estimates: σ_noise (afferent noise), π_prior (prior precision), τ_update (precision update rate), κ_recall (memory precision). **Prediction:** This computational phenotype will cluster patients into subtypes with different treatment response profiles: high-noise type (responds to anti-inflammatory), high-precision type (responds to biofeedback), high-recall type (responds to emotional granularity training).
- Mechanistic rationale: Computational psychiatry approach fits generative models to behavior to extract latent parameters. Different parameter profiles imply different mechanisms requiring different interventions
- Evidence: Seth 2011 (model), Powers et al. (parameter estimation), computational psychiatry literature, Greenhouse-Tucknott 2022
- Certainty: 0.35
- Falsifiable prediction: Parameter-derived subtypes show differential treatment response in a pilot RCT (interaction p < 0.05)
- Origin: brainstorm

### BM3: Emotional Granularity Score (EGS) from EMA
A 14-day EMA-derived metric: EGS = number of distinct negative emotion labels used / total EMA prompts. **Prediction:** EGS < 0.3 (patient uses only 2-3 labels for negative states across 14 days) predicts high PEM frequency, poor activity pacing, and treatment resistance. EGS could serve as a low-cost, scalable marker of interoceptive dysfunction without needing lab-based HBDT.
- Mechanistic rationale: Barrett 2025: emotional granularity requires differentiated interoceptive signals. Low granularity = noisy interoception
- Evidence: Barrett 2025, H6 (this brainstorming), EMA feasibility in ME/CFS
- Certainty: 0.30
- Falsifiable prediction: EMA EGS correlates with lab HBDT awareness scores (r > 0.4) and predicts 6-month PEM frequency, all with smartphone-only data collection
- Origin: brainstorm

### BM4: HRV Complexity Index at Rest
Resting HRV is often measured in ME/CFS (low RMSSD, low HF power). **Novel proposal:** HRV _complexity_ (sample entropy, detrended fluctuation analysis α, multiscale entropy) — not just variability amplitude — captures the information content of vagal afferent signals. Lower complexity means less information transmitted. **Prediction:** ME/CFS patients have lower HRV complexity, and complexity correlates with interoceptive accuracy (HBDT) better than amplitude parameters (RMSSD, HF). HRV complexity may be a non-invasive proxy for interoceptive afferent signal quality.
- Mechanistic rationale: Vagal afferent signals carry information in their temporal structure, not just their amplitude. Complexity metrics capture this structure. If cytokine-induced degradation reduces information content, complexity will drop
- Evidence: HRV complexity in ME/CFS (limited but positive), vagal afferent encoding literature, Harrison 2009 (cytokine→vagal alteration)
- Certainty: 0.30
- Falsifiable prediction: ME/CFS HRV sample entropy < controls, and sample entropy correlates with HBDT accuracy (r > 0.4) AND with IL-6 levels
- Origin: brainstorm

### BM5: Interoceptive Distress Task (IDT) for PEM Risk
A 5-minute seated task: patient listens to their heartbeat through a stethoscope (amplified) while rating distress (0-10) every 30 seconds. **Prediction:** Patients who show rising distress trajectory over 5 minutes (distress slope > 0.5 per minute) are at high PEM risk (≥3 PEM episodes/month). This brief, low-effort task could serve as a risk-stratification tool in clinical settings.
- Mechanistic rationale: Interoceptive hypervigilance → exposure to amplified heartbeat → rising distress. Patients with high precision-weighting on interoceptive channels will find this task increasingly aversive. The rising distress reflects the non-resolvable prediction error
- Evidence: Rimes 2016 (elevated subjective distress), Seth 2011 (interoceptive prediction error = aversive)
- Certainty: 0.25
- Falsifiable prediction: IDT distress slope > 0.5/min predicts PEM frequency at 3-month follow-up (sensitivity > 0.75, specificity > 0.70)
- Origin: brainstorm

### BM6: TAS-20 Factor Score Ratio as Screening Tool
Standard TAS-20 has three factors: DIF (Difficulty Identifying Feelings), DDF (Difficulty Describing Feelings), EOT (Externally-Oriented Thinking). In ME/CFS, DIF is elevated but EOT is normal (Maroti 2017). **Proposed index:** DIF / EOT ratio. **Prediction:** DIF/EOT > 2.0 differentiates ME/CFS (interoceptive-driven alexithymia) from developmental alexithymia (where all factors are elevated, ratio ~1.5) and from somatoform disorders (where DDF may be higher than DIF). This is a simple, questionnaire-only screening tool.
- Mechanistic rationale: If alexithymia is acquired from noisy interoceptive signals, DIF should be elevated (can't identify feelings because weak signals) but EOT should be normal (intact external cognition). If alexithymia is developmental/trait, EOT is also elevated
- Evidence: Maroti 2017 (DIF↑, EOT normal), Bileviciute-Ljungar 2020 (DIF related to sleep), Barrett 2025
- Certainty: 0.30
- Falsifiable prediction: DIF/EOT ratio > 2.0 discriminates ME/CFS from depression (AUC > 0.70), developmental alexithymia (AUC > 0.75), and health anxiety (AUC > 0.65)
- Origin: brainstorm

---

## Category 10: Reasons This Mechanism May NOT Be Relevant to ME/CFS

### X1: Interoceptive Changes Are Epiphenomenal
The interoceptive accuracy-sensibility dissociation in ME/CFS could be an epiphenomenon of general distress, sleep deprivation, or deconditioning — not a disease-specific mechanism. Any condition with high stress, poor sleep, and reduced physical activity would show the same pattern. If this is correct, the dissociation would disappear when controlling for sleep quality, distress, and activity levels, and would not add predictive value beyond these general factors.
- Evidence needed to disprove: (1) A study showing IASG predicts ME/CFS-specific outcomes (fatigue, PEM) over and above general distress (GHQ, HADS), measured sleep quality (PSQI), and activity levels (actigraphy). (2) A demonstration that IASG differs between ME/CFS and equally-distressed, equally-sleep-deprived, equally-inactive clinical controls (e.g., advanced cancer, severe RA)
- Alternative mechanism: The same pattern could be driven by HPA axis dysregulation (Kang 2026) or general allostatic load
- Impact if true: The interoceptive framework would add no disease-specific explanatory value beyond general stress physiology. The paper's interoceptive content (ch15, ch14d) would need reframing as general psychophysiological phenomena, not ME/CFS mechanisms
- Origin: brainstorm

### X2: Interoceptive Accuracy Deficit Is Artefact of Task Design
HBDT performance in ME/CFS may be impaired not by afferent signal corruption but by: (a) reduced sustained attention (cognitive dysfunction — well-documented in ME/CFS), (b) elevated resting HR from deconditioning (reduced HR excursion makes heartbeat detection harder — Schandry task is easier when HR is low-resting), or (c) medication effects (beta-blockers, SSRIs, stimulants). The "accuracy deficit" might be entirely a confound of known ME/CFS features with no specific interoceptive mechanism.
- Evidence needed: HBDT paradigms that control for sustained attention (catch trials, response time filtering), resting HR covariate, and medication status (subgroup analysis or matched designs). A better design: using the HBDT with HR manipulation (exercise → similar HR ranges across groups)
- Alternative: ME/CFS patients may have elevated HBDT accuracy (as Kadota 2010 found), not reduced accuracy. If the direction of the accuracy difference is inconsistent across studies, the dissociation model is not robust
- Impact if true: The central prediction of the interoceptive model — reduced accuracy with elevated sensibility — would be a measurement artefact, not a biological mechanism. The paper would need to revert to the earlier formulation (ch15: elevated interoceptive sensitivity) pending consistent data
- Origin: brainstorm

### X3: Competing Mechanism — Widespread CNS Pathology
ME/CFS involves widespread CNS pathology (neuroinflammation, hypoperfusion, mitochondrial dysfunction, glymphatic failure) that affects _all_ processing, not specifically interoceptive processing. The emotional/interoceptive changes are simply one manifestation of a general brain dysfunction, with no specific interoceptive pathway needed. The same pattern would occur for visual processing, auditory processing, memory, executive function — interoception is just another cognitive domain affected.
- Evidence needed: Domain-specificity. Show that interoceptive deficits are disproportionately greater than visual, auditory, or cognitive deficits in the same patients, controlling for general performance. Also test whether emotional processing deficits correlate with interoceptive accuracy but not with visual/auditory accuracy
- Alternative mechanism: Kang 2026 (HPA axis → hippocampal → emotional changes). If HPA/cortisol explains emotional changes better than interoceptive measures, the interoceptive mechanism is not primary
- Impact if true: The interoceptive framework would be descriptively accurate but mechanistically trivial — the specific computational model (predictive coding of interoceptive signals) would not be supported over a general "brain is inflamed" model
- Origin: brainstorm

### X4: Alexithymia Is a Cause, Not Consequence, of Interoceptive Deficits
The direction of the alexithymia-interoception relationship may be reversed: trait alexithymia (present premorbidly) causes ME/CFS patients to be poor interoceptors, not the other way around. The elevated DIF in Maroti 2017 reflects a pre-existing vulnerability that may even _predispose_ to ME/CFS (alexithymic individuals struggle to identify and regulate stress responses → HPA axis overload → triggering ME/CFS).
- Evidence needed: (1) Prospective study showing premorbid alexithymia predicts ME/CFS onset (post-infectious cohort with pre-infection TAS-20 data). (2) Longitudinal ME/CFS study showing TAS-20 is stable across disease course (not tracking inflammatory markers)
- Alternative: Alexithymia could be a general consequence of chronic illness, not specific to ME/CFS. Same TAS-20 elevation would be found in RA, MS, Crohn's — all diseases with chronic inflammation and fatigue
- Impact if true: The acquired-interoceptive-deficit hypothesis (hyp:ch15-alexithymia-acquired) would be wrong. Alexithymia would need to be discussed as a vulnerability factor, not a consequence. This weakens the paper's claim that emotional symptoms are biologically driven by ME/CFS pathophysiology
- Origin: brainstorm

### X5: Catastrophizing Critique Overstated
The paper's strong position against catastrophizing could be undermined by: (a) the Poort 2021 null mediation may not replicate in ME/CFS (cancer fatigue is not ME/CFS; mediation analysis in different disease context), (b) Sohl/Friedberg 2008 had a small sample (n=43) and limited power, (c) catastrophizing may be relevant for _pain_ in ME/CFS even if not for fatigue (PCS is pain-specific). The null evidence may be too weak to support abandoning the construct.
- Evidence needed: (1) Direct replication of Poort-style mediation analysis in ME/CFS (N > 150, ME/CFS-specific intervention). (2) ME/CFS-specific fatigue catastrophizing measure (not pain-based PCS)
- Alternative: The broader CBT literature (over 20 years of correlations) may reflect a real (small) effect that Poort's specific context did not capture
- Impact if true: The ch33 catastrophizing critique would need substantial softening. The claim that "catastrophizing is weaponised against patients" (which is a factual claim about clinical practice, not the mechanism) would still stand, but the mechanistic critique would be weaker
- Origin: brainstorm

### X6: Inflammation-Interoception Pathway Not Specific to ME/CFS
The inflammation→interoception pathway (Harrison 2009, Savitz/Harrison 2018) is a _general_ physiological mechanism operating in any inflammatory state. ME/CFS patients have elevated inflammation, so they show the pathway's effects. But this has no explanatory specificity — any disease with elevated cytokines (RA, MS, IBD, chronic infection) would show the same interoceptive changes. The framework adds no disease-specific mechanistic understanding.
- Evidence needed: Show that the interoceptive signature of ME/CFS (accuracy-sensibility dissociation) differs from other inflammatory diseases with similar cytokine profiles. If it does not differ, the pathway is general physiology, not ME/CFS-specific mechanism
- Alternative: The predictive coding model (precision maladaptation) is the ME/CFS-specific part — the _brain's response_ to the inflammation→interoception signal, not the signal itself. But this may simply be the brain's generic response to chronic afferent perturbation
- Impact if true: The paper would need to position the interoceptive content as "ME/CFS as a case study in interoceptive pathophysiology" rather than "a specific mechanism of ME/CFS." This weakens the claim that interoceptive processing is a ME/CFS core feature
- Origin: brainstorm

---

## Category 11: Null Hypothesis Assessment

### NH1: Complete Null — Interoceptive Processing Has NO Role in ME/CFS
**Statement:** Interoceptive accuracy, sensibility, awareness, alexithymia, emotional-autonomic coupling, and all related variables are fully explained by general factors (distress, sleep, deconditioning, attention deficits) and contribute no unique variance to fatigue, PEM, or any ME/CFS symptom.

**What existing paper claims would need revision:**
- ch15-interoception (interoceptive error model): entire section would be wrong — the predictive coding framework would not apply to ME/CFS
- ch14d interoceptive hierarchy architecture: all interoceptive mechanisms for cross-disease neuropsychiatric symptoms would be unsupported
- hyp:ch15-interoceptive-dissociation: the central hypothesis would be falsified
- hyp:ch15-alexithymia-acquired: alexithymia would need reclassification as general chronic illness effect
- ach:ch15-inflammation-interoception-hub: inflammation→insula pathway would be general physiology with no symptom-explaining role
- spec-emotional-autonomic-dissociation: the dissociation would be a general distress artefact

**What would need to be true:**
1. Any study controlling for distress, sleep, and activity finds near-zero partial correlation between interoceptive measures and fatigue severity (r < 0.10)
2. Anti-inflammatory interventions that improve interoceptive outcomes do so purely through general well-being channels (not via interoceptive mechanism)
3. The interoceptive accuracy-sensibility dissociation is equally present in non-inflammatory chronic conditions (e.g., end-stage renal disease on dialysis, where fatigue is severe but inflammation is managed)
4. Interoceptive training (ADIE-style) produces no reduction in fatigue, even in mild ME/CFS
5. PEM is not preceded or accompanied by any measurable change in interoceptive metrics

**Likelihood:** Low (0.15). The convergent evidence from multiple levels (Harrison neuroimaging, Garfinkel framework, predictive coding models, MS evidence, FM evidence) makes a complete null improbable. The more likely null range is that interoceptive changes are moderate contributors (accounting for 5-15% of variance) rather than central mechanisms.
- Origin: brainstorm

### NH2: Null for Inflammation→Interoception Pathway
**Statement:** The inflammation→interoception pathway (cytokines → vagal afferents → insula → altered interoceptive processing) does not operate in ME/CFS. ME/CFS interoceptive changes may be driven by: (1) HPA axis dysregulation → cortisol → insular atrophy (Kang 2026), (2) direct autoimmune CNS pathology (autoantibodies to brainstem nuclei), (3) glymphatic failure → impaired brain clearance → toxic metabolite accumulation in interoceptive regions, (4) mitochondrial dysfunction selectively affecting high-metabolic-demand interoceptive regions.

**What existing claims would need revision:**
- hyp:ch15-interoceptive-error: general predictive coding model could still be correct but the _source_ of prediction error would need revision — not inflammation-driven but metabolic/autonomic
- ach:ch15-inflammation-interoception-hub: the inflammation-interoception bridge would not apply to ME/CFS specifically
- hyp-sickness-behavior-emotional-phenotype: inflammation-based emotional symptom model would be wrong

**What would need to be true:**
1. ME/CFS-specific anti-inflammatory interventions (e.g., LDN, anti-TNF) that reduce peripheral cytokines do not improve interoceptive measures
2. CSF cytokines do not correlate with HBDT accuracy or IASG in ME/CFS
3. Vagal afferent function (tested via modified tVNS or vagal C-fiber studies) is intact in ME/CFS despite elevated cytokines
4. Experimental inflammation in healthy controls (Harrison paradigm) produces a different interoceptive pattern from ME/CFS (not just magnitude difference)

**Likelihood:** Low-Medium (0.30). The inflammation-interoception pathway is well-established in general physiology, and ME/CFS has elevated cytokines. The more likely possibility is that the pathway operates but accounts for only part of the interoceptive disruption — metabolic, autoimmune, and glymphatic mechanisms contribute the rest.
- Origin: brainstorm

### NH3: Null for Alexithymia-Interoception Link
**Statement:** Alexithymia (TAS-20 DIF) in ME/CFS is NOT related to interoceptive accuracy. It is a cognitive/emotional processing deficit (e.g., HPA axis → emotional regulation circuit → alexithymia) independent of interoceptive afferent quality.

**What needs revision:**
- hyp:ch15-alexithymia-acquired: the central claim (alexithymia reflects acquired interoceptive deficit) would be wrong
- The Barrett constructed emotion framework's prediction that noisy interoception → poor emotion categorization would not hold for ME/CFS

**What would need to be true:**
1. TAS-20 DIF does NOT correlate with HBDT accuracy in ME/CFS (r < 0.10 in n=120 study)
2. TAS-20 DIF in ME/CFS correlates with cortisol measures, not with cytokines or HRV
3. Anti-inflammatory interventions that reduce cytokines do NOT reduce TAS-20 DIF
4. Emotional granularity training works independently of interoceptive accuracy improvement

**Likelihood:** Medium (0.40). The TAS-20 DIF-HBDT correlation has never been directly tested in ME/CFS. It is possible that alexithymia in ME/CFS reflects emotional processing changes at the _prefrontal_ level (cognitive representation of emotion) rather than the _insular_ level (interoceptive signal representation). The two may be dissociable, making our hypothesis plausible but not inevitable.
- Origin: brainstorm

### NH4: Null for Catastrophizing Critique — Catastrophizing IS a Fatigue Mechanism
**Statement:** Catastrophizing does play a clinically meaningful role in ME/CFS fatigue maintenance, and the null findings (Poort 2021 in cancer, Sohl/Friedberg 2008) are either (a) not replicable in ME/CFS, (b) limited by measurement issues (using pain catastrophizing scales for fatigue), or (c) do not address the role of catastrophizing in _perpetuating_ (not initiating) symptoms. The paper's strong anti-catastrophizing position is premature.

**What needs revision:**
- ch33 catastrophizing critique: the claim that catastrophizing is not a fatigue mechanism would need weakening
- Several references to catastrophizing as a "weaponised concept" would need to distinguish the clinical misuse (which can be criticized regardless) from the mechanistic role (which may be real)

**What would need to be true:**
1. A ME/CFS-specific fatigue catastrophizing scale shows high internal consistency and predictive validity for fatigue severity
2. A well-powered mediation analysis (N > 200) in an ME/CFS treatment RCT shows significant indirect effect through catastrophizing
3. Catastrophizing scores change faster than fatigue scores during treatment (Granger-causality direction)
4. The Sohl/Friedberg 2008 recall-bias finding is not replicated with improved EMA methods (experience sampling shows catastrophizing IS associated with concurrent fatigue)

**Likelihood:** Medium (0.35). The null evidence (Poort 2021) is from a different disease context (cancer-related fatigue) and the Sohl/Friedberg study has multiple limitations (small n, pain-based PCS, cross-sectional mediation). A direct ME/CFS replication is still needed. However, the pattern across studies (catastrophizing consistently has weak correlations with concurrent symptoms, stronger with recall) weakens but does not disprove the causal role.
- Origin: brainstorm

---

## Category 12: Evidence Quality Concerns

### EQ1: Pervasive Lack of ME/CFS-Specific Mechanistic Studies
The strongest evidence (Harrison 2009, Seth 2011, Garfinkel 2015, Savitz/Harrison 2018, Barrett 2025, Zhang/Wager 2025) is all from general neuroscience — none tested in ME/CFS. The ME/CFS-specific studies (Maroti 2017, Rimes 2016, Bileviciute-Ljungar 2020, Brooks 2017, Wortinger 2017) are all small (n=20-67), cross-sectional, single-group or single-site, and from at most 2-3 research groups. This creates a severe generalizability gap: we are applying well-established general mechanisms to a population in which they have never been directly validated. The certainty of the ME/CFS-specific pathway is much lower than the sum of paper-by-paper certainties suggests.
- Impact: The overall certainty for the emotional-interoceptive mechanism in ME/CFS should be adjusted DOWN from the synthesis's weighting — the evidence has a "translation gap" not captured by individual paper scores
- Mitigation: Explicitly flag this in the paper: "The interoceptive pathway is well-established in general neuroscience. Its application to ME/CFS is plausible but unvalidated. Priority: empirical confirmation in the target population."
- Origin: brainstorm

### EQ2: Measurement Validity Concerns for Interoception in ME/CFS
Standard interoception measures have validation issues in ME/CFS:
- **HBDT (heartbeat detection task):** Requires sustained attention, which is impaired in ME/CFS cognitive dysfunction. Low accuracy may reflect attention, not interoception
- **Schandry task (mental tracking):** Correlates with time estimation ability, heartbeat counting is influenced by beliefs about heart rate, and accuracy depends on resting HR (lower HR → easier)
- **TAS-20:** Validated in general populations but not specifically in ME/CFS. Its three-factor structure has been questioned (some studies find 2-factor better). Items like "I am confused about what I am feeling" may capture general confusion/uncertainty (common in ME/CFS cognitive fog) rather than alexithymia specifically
- **MAIA-2:** Validated in healthy and pain populations but not ME/CFS. "Noticing" subscale items may be confounded with general hypervigilance
- **PCS:** Validated for pain, not fatigue. Using PCS for fatigue catastrophizing is a category error
- Impact: Every single interoceptive study proposed would need ME/CFS-specific validation of its measures, or results will be uninterpretable regarding mechanism
- Origin: brainstorm

### EQ3: Selection Bias in ME/CFS Emotional Processing Studies
All ME/CFS emotional processing studies (Maroti, Rimes, Brooks, Wortinger, Van Den Houte, Bileviciute-Ljungar) recruited from tertiary care/specialist clinics. This selects for: (a) patients with more severe symptoms, (b) patients with greater healthcare engagement, (c) patients who have accepted a diagnosis (excluding those who reject it), (d) patients without significant psychiatric comorbidity (excluded in most studies). This selection bias means:
- Results may not generalize to community-based ME/CFS populations
- Patients with high alexithymia may be disproportionately excluded (those with poor emotional insight may be less likely to seek specialist care)
- Patients who reject the ME/CFS label (and therefore may have different illness cognitions) are excluded
- The emotional-autonomic dissociation may reflect selection of patients with high somatic awareness (who self-select into specialist care)
- Impact: The ME/CFS-specific findings may overestimate the prevalence and severity of emotional processing differences
- Origin: brainstorm

### EQ4: Confound Control Inconsistency Across Studies
- **Medication confound:** None of the ME/CFS emotional processing studies adequately controlled for medication status (antidepressants, beta-blockers, benzodiazepines, stimulants, sleep aids — all common in ME/CFS and all affecting interoception, HRV, and emotional processing)
- **Menstrual cycle:** Sex hormones affect interoception (progesterone → HRV changes, HBDT variation). None of the ME/CFS studies controlled for menstrual phase
- **BMI:** Body composition affects HBDT performance (more adipose tissue → less cardiac mechanical vibration reaching chest wall). Not controlled in any study
- **Nicotine/caffeine:** Both affect HRV and autonomic function. Not controlled in ME/CFS interoception studies
- **Time of day:** Diurnal cortisol variation affects interoception. Testing at different times across patients may add variance
- Impact: Up to 30-50% of the variance attributed to interoceptive mechanisms could be explained by these confounds. This substantially weakens the apparent effect sizes
- Origin: brainstorm

### EQ5: Publication Bias in the Catastrophizing Literature
The catastrophizing literature has strong publication bias: decades of positive associations (catastrophizing → worse outcomes) were published before any null findings emerged. The Poort 2021 null mediation analysis is one of the first well-powered null results. It is possible that the true effect of catastrophizing in fatigue is near-zero but has been inflated by:
- File-drawer effect: null studies of catastrophizing in fatigue not published
- P-hacking/flexible analysis: the PCS has 13 items → multiple subscale analyses → selective reporting
- Confounding: catastrophizing correlates with depression, which correlates with fatigue → apparent mediation when confounds not controlled
- Impact: The true effect of catastrophizing in ME/CFS fatigue may be much smaller than the literature suggests. The paper's position against catastrophizing is supported by this bias analysis — but the bias itself must be explicitly noted to avoid overstating the "smoking gun" status of the null findings
- Origin: brainstorm

### EQ6: Temporal Resolution Mismatch
The interoceptive predictive coding model operates at the sub-second to seconds timescale (heartbeats, breaths, moment-to-moment predictions), but ME/CFS symptoms are measured at the days-to-weeks timescale (fatigue scales, PEM recall, weekly diaries). There is a fundamental temporal resolution mismatch: we cannot test the computational mechanism (fast) with clinical outcomes (slow). EMA studies (R6) partially bridge this, but even EMA at 6x/day vs hundreds of heartbeats per session means we are testing the _accumulated consequences_ of fast dynamics, not the dynamics themselves.
- Impact: The evidence for the computational model is necessarily indirect when tested with clinical outcomes. A true test requires lab-based perturbation (e.g., the rebreathing challenge in H5) with second-level behavioral and autonomic measures, not clinical rating scales
- Mitigation: The paper should acknowledge this temporal mismatch prominently. The predictive coding model is our best _computational_ explanation for the clinical pattern, but we cannot directly verify the computational mechanism at the right timescale in clinical populations
- Origin: brainstorm

### EQ7: Construct Overlap Between Alexithymia and Interoceptive Measures
TAS-20 (alexithymia) and MAIA (interoceptive sensibility) share substantial variance: MAIA's "Noticing" subscale (items about body awareness) overlaps conceptually with TAS-20 DIF (items about difficulty identifying feelings). Both may measure aspects of the same underlying construct — interoceptive access. Studies claiming to measure "alexithymia mediating interoception" or vice versa may be measuring the same thing twice. The MAIA "Emotional Awareness" subscale even has items that directly ask about emotional identification, which is the TAS-20 domain.
- Impact: Any study claiming a dissociation between alexithymia and interoceptive measures in ME/CFS must first demonstrate discriminant validity of these instruments in this population. Without it, apparent dissociations may be measurement artefacts
- Mitigation: Future studies should include CFA to establish discriminant validity in ME/CFS, and include a non-self-report measure of at least one construct (e.g., HBDT for accuracy, or clinician-rated alexithymia)
- Origin: brainstorm

---

## Summary

### Total Idea Count: 52

| Category | Ideas | Best Ranked |
|----------|-------|-------------|
| 1. Novel hypotheses | 7 | H1: Precision Maladaptation (0.40), H2: Effort Attribution Failure (0.30), H4: Afferent Noise Encoding (0.35) |
| 2. Research directions | 7 | R1: Definitive Tripartite Study (0.75), R2: Cytokine-Interoception Challenge (0.55), R3: Post-Infectious Cohort (0.50) |
| 3. Drug/medication ideas | 5 | D1: LDN-Interoception Substudy (0.40), D2: Transdermal Nicotine (0.25), D4: Guanfacine (0.25) |
| 4. Supplement/nutraceutical ideas | 5 | S1: PEA (0.35), S3: NAC (0.30), S4: Omega-3 EPA (0.35) |
| 5. Non-pharmacological interventions | 6 | N2: tVNS (0.35), N6: 0.1 Hz Breathing (0.35), N1: HBD Biofeedback (0.30) |
| 6. Combinations + access | 5 | C1: Anti-inflammatory + Biofeedback (0.35), C2: Severity-Adapted (0.30), C5: PEM-Protected Protocol (0.30) |
| 7. Mathematical model extensions | 5 | M1: Afferent Noise ODE (0.40), M2: Precision Hysteresis (0.35), M4: Phase Space (0.35) |
| 8. Cross-disease bridges | 6 | B1: MS Interoceptive Awareness (0.50), B6: Catastrophizing Null Replication (0.65), B3: Panic Divergence (0.40) |
| 9. Diagnostic/biomarker ideas | 6 | BM1: IASG Index (0.50), BM2: Computational Phenotype (0.35), BM4: HRV Complexity (0.30) |
| 10. Reasons NOT relevant | 6 | X2: Task Artefact, X3: General CNS Pathology (most impactful), X1: Epiphenomenon |
| 11. Null hypothesis assessment | 4 | NH1: Complete Null (0.15), NH3: Alexithymia-Interoception Null (0.40), NH4: Catastrophizing Critique Wrong (0.35) |
| 12. Evidence quality concerns | 7 | EQ1: Lack of ME/CFS Mechanistic Studies, EQ6: Temporal Resolution Mismatch, EQ2: Measurement Validity |

### Strongest 3 Ideas
1. **R1: Definitive Tripartite Interoception Study** (0.75) — Clear, tractable, high-impact single study. One session of HBDT + MAIA + TAS-20 + cytokines in 120 patients. The single most important study suggested by the entire evidence base. Falsifiable prediction directly tests the model's core claim.
2. **B6: Catastrophizing Null Replication in ME/CFS** (0.65) — If the Poort 2021 null finding replicates in ME/CFS, it removes the main counterargument to the paper's catastrophizing critique. A confirmatory study with major clinical and conceptual implications.
3. **M1/M2: Mathematical Model Integration** (0.40) — Adding afferent noise (σ_noise) and precision hysteresis (τ_prec) to the predictive coding ODE provides formal predictions for PEM dynamics, treatment response, and subtype differences. Only medium certainty but transformative if validated.

### Weakest 3 Ideas
1. **D3: Pirfenidone** (0.20) — Too many safety concerns, off-target effects, and a very long mechanism chain. The TGF-β → vagal afferent → interoceptive connection is speculative.
2. **S2: L-Serine** (0.20) — Theoretical chain from L-serine → D-serine → NMDA → interoceptive plasticity is plausible but distantly connected. Many intervening steps unvalidated.
3. **S5: L-Theanine** (0.20) — Effect size for α-wave enhancement is small, and the distinction between "reducing affective weight of prediction errors without altering accuracy" is difficult to test or measure.

### Critical Category Insights

**Category 10 (Not Relevant):** The most serious threats are: (1) X2 — the interoceptive accuracy deficit may be an attention/methodological artefact, not a specific interoceptive mechanism. If this holds, the model's central falsifiable prediction (accuracy↓, sensibility↑) cannot be distinguished from general cognitive dysfunction. (2) X3 — the "general CNS pathology" competitor: interoceptive changes may be one non-specific aspect of widespread brain dysfunction, with no special explanatory role. The paper must preempt this by showing that interoceptive measures outperform general cognitive measures in predicting fatigue.

**Category 11 (Null Assessment):** The complete null (NH1) is improbable (0.15) but not impossible. The more likely null in each sub-area: alexithymia-interoception link may not replicate (NH3: 0.40), catastrophizing may still play a small role in fatigue maintenance (NH4: 0.35), and the inflammation→interoception pathway may be general physiology with no ME/CFS-specific explanatory power. None of these would invalidate the entire interoceptive framework, but each would require substantial revision of specific hypotheses.

**Category 12 (Evidence Quality):** The most concerning quality issue is EQ1 (pervasive lack of ME/CFS-specific studies) combined with EQ2 (measurement validity). The evidence pyramid for this topic is unusually inverted: strong general neuroscience, weak ME/CFS-specific data, and unvalidated measurement tools. This must be transparently communicated in the paper. EQ6 (temporal resolution mismatch) is a structural issue that cannot be fully resolved — the computational model operates at sub-second timescales while clinical outcomes are measured in days/weeks. The paper should acknowledge this as a fundamental limitation rather than treat EMA or lab studies as fully bridging the gap.

The strongest single takeaway from the brainstorming across all categories: **the IASG (Interoceptive Accuracy-Sensibility Gap) is the most tractable, testable, and mechanistically informative single outcome.** Whether IASG is diagnostic (BM1), treatment-responsive (D1, R2), longitudinally predictive (B4), and parametrically modeled (M1) — it is the thread that connects every category. Future paper and research focus should center on operationalizing and validating the IASG in ME/CFS.
