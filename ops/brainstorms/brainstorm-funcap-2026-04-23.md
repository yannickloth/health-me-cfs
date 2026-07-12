# Brainstorm: FUNCAP and Functional Capacity Assessment in ME/CFS — Scientific Insights

Generated: 2026-04-23
Status: Creative analysis — requires expert review before any clinical or document integration
Context: Phase 3 of FUNCAP integration into ME/CFS paper; synthesizes Phase 1 literature findings with existing paper content

---

## 1. Novel Hypotheses

### 1.1 The Consequence Gap as PEM Biomarker

**Idea:** The discrepancy between a patient's FUNCAP domain score and their corresponding SF-36 subscale score is not measurement noise — it is a quantitative proxy for PEM severity. Patients whose functional capacity is *specifically* limited by post-exertional consequences (captured by FUNCAP) rather than baseline capability (captured by SF-36) have more severe PEM pathophysiology.

**Mechanistic rationale:** SF-36 asks "Can you do X?" — a static capability question. FUNCAP asks "What happens when you do X?" — a dynamic consequence question. The difference between these two scores (SF-36 minus FUNCAP-equivalent) measures the *fraction of functional limitation attributable to PEM* rather than to baseline disability. A patient who can walk 200m (SF-36 captures this) but cannot do so without triggering 48h PEM crash (FUNCAP captures this) has a large consequence gap. This gap should correlate with biological PEM severity markers (2-day CPET decline, post-exercise immune gene expression, cytokine flares).

**Evidence link:** Sommerfelt2024FUNCAP explicitly designed consequence-based questioning to capture what SF-36 misses (ch05-severity-levels, ch23-epidemiology-outcomes). The paper already documents that SF-36 fails to capture PEM-limiting effects. The 2-day CPET literature (Lim 2020, van Campen 2020) provides the biological PEM benchmark.

**Certainty:** 0.40. The logic is tight. FUNCAP and SF-36 measure overlapping but distinct constructs. The consequence gap as a derived metric is novel and untested.

**Falsifiable prediction:** In a cohort of ME/CFS patients completing both SF-36 and FUNCAP, the consequence gap (difference between equivalent domains) should correlate with (a) Day 1-to-Day 2 VO2max decline on 2-day CPET (r > 0.4), (b) post-exercise IL-6/TNF-alpha elevation at 24h, (c) patient-reported PEM severity on DSQ-PEM. If the gap does not correlate with objective PEM markers, it is noise, not signal.

---

### 1.2 Domain-Specific Consequence Profiles Identify ME/CFS Subtypes

**Idea:** The pattern of relative impairment across FUNCAP's 8 domains (personal hygiene, walking/movement, being upright, home activities, communication, activities outside home, light/sound reactions, concentration) constitutes a functional fingerprint that maps onto pathophysiological subtypes — autonomic, immune, metabolic, neurocognitive.

**Mechanistic rationale:** Different ME/CFS pathophysiological mechanisms produce distinct functional signatures. Autonomic dysfunction (POTS, orthostatic intolerance) primarily impairs "being upright" and "walking/movement" due to cerebral hypoperfusion. Immune-mediated ME/CFS disproportionately affects "light/sound reactions" (sensory hypersensitivity via microglial activation). Metabolic/mitochondrial dysfunction produces global impairment with relative sparing of cognitive domains (energy available for rest but not exertion). Neurocognitive ME/CFS preferentially impairs "concentration" and "communication."

**Evidence link:** Weigel2024SymptomClusters found autonomic symptoms most negatively associated with functioning — suggests autonomic subtype has distinct functional profile. The paper's ch14 (cross-disease analysis) documents mechanistic subtypes. Boris2026POTStelemedicine found 78.3% joint hypermobility in POTS clinic — suggests a connective tissue-autonomic subtype with specific functional limitations.

**Certainty:** 0.30. Clustering is plausible but no one has applied it to FUNCAP domain profiles. The 8-domain structure makes this more feasible than with generic questionnaires.

**Falsifiable prediction:** Unsupervised clustering of FUNCAP domain scores in n >= 200 ME/CFS patients should produce 3-5 stable clusters that differ in (a) dominant symptom domain, (b) comorbidity profile (POTS prevalence, fibromyalgia overlap, neurocognitive test performance), (c) treatment response patterns. If domain profiles are unimodally distributed without meaningful clusters, the subtype hypothesis fails.

---

### 1.3 FUNCAP Sensitivity-to-Change Varies by Domain: The "Anchor Domain" Hypothesis

**Idea:** Not all 8 FUNCAP domains are equally sensitive to treatment effects. One or two domains function as "anchor domains" that change earliest and most robustly, providing early signals of genuine improvement that precede changes in other domains. The anchor domain differs by treatment mechanism.

**Mechanistic rationale:** If pyridostigmine improves autonomic function (the LIFT trial hypothesis), "being upright" and "walking/movement" should improve first because these are most directly dependent on orthostatic cerebral perfusion. If LDN reduces neuroinflammation, "light/sound reactions" and "concentration" should change first because these are mediated by microglial state. The anchor domain prediction allows triangulation of treatment mechanism from functional outcome data alone.

**Evidence link:** LIFT trial uses FUNCAP-55 as primary outcome (Meadows2025LIFTprotocol). Sommerfelt2024FUNCAP validated all 8 domains but did not test differential sensitivity to change. The paper's ch14 (mechanism-treatment map) predicts mechanism-specific treatment responses.

**Certainty:** 0.35. The anchor domain concept is borrowed from oncology QoL research (where physical function anchors before emotional function). Application to FUNCAP is novel.

**Falsifiable prediction:** In the LIFT trial, if pyridostigmine is effective, "being upright" domain should show the largest effect size and earliest change (detectable at 4 weeks). If LDN is effective, "light/sound reactions" should show the largest effect. If the combination is synergistic, both domains should improve more than either alone. If no domain shows differential sensitivity, the anchor hypothesis fails.

---

### 1.4 The Severity-Specific Floor Effect Paradox

**Idea:** FUNCAP's absence of floor effects at the severe end creates a paradox: as severely affected patients deteriorate further, their FUNCAP scores *continue declining*, which means the instrument detects worsening that other instruments miss — but this also means that FUNCAP-based severity classifications may disagree with established clinical classifications (Karnofsky, Bell scale) precisely in the range where clinical decisions are most critical (disability, care level, ventilation decisions).

**Mechanistic rationale:** The ratchet model (ch31) predicts that in the "floor regime" (B < 0.10), recovery time plateaus at a high constant. FUNCAP's sensitivity in this range means it can detect sub-Karnofsky-10 deterioration (e.g., ability to communicate, tolerate light, tolerate sound). But clinical systems calibrated to Karnofsky or SF-36 floors will classify all patients below Karnofsky-10 as equivalent, missing clinically meaningful distinctions that FUNCAP captures.

**Evidence link:** Jahanbani2024severity proposed 5 extremely severe sub-levels. Sommerfelt2023NorwaySevere documented 17% tube feeding, 43% swallowing difficulty, 60% sound intolerance in very severe Norwegian cohort. FUNCAP was explicitly designed to avoid floor effects in this range (Sommerfelt2024FUNCAP). The paper's ch31 (ratchet model) formalizes the recovery scaling in this regime.

**Certainty:** 0.55. The paradox is logically inevitable given FUNCAP's design properties. The clinical impact is the speculative element.

**Falsifiable prediction:** In severely affected patients (Bell score < 10 or equivalent), FUNCAP total score should show statistically significant variance (SD/mean > 0.15) while SF-36 physical function should be at floor (variance near zero). Patients reclassified by FUNCAP sub-levels should differ in care requirements (tube feeding, communication ability, visitor tolerance) independently of their Karnofsky/Bell classification.

---

### 1.5 The Consequence Economy: Inter-Domain Substitution as Compensation Strategy

**Idea:** ME/CFS patients unconsciously trade functional capacity across FUNCAP domains to stay within their energy envelope. A patient who reduces "home activities" (cooking from scratch) to preserve "communication" (phone calls with family) is engaging in consequence economy — a rational allocation of limited energy across competing demands. The pattern of inter-domain trade-offs reveals the patient's revealed preference structure for function, which can guide pacing optimization.

**Mechanistic rationale:** The ch32 predictive applications chapter models the patient as maximizing total functional capacity over a planning horizon. This implies patients make implicit cost-benefit calculations across functional domains. FUNCAP's 8-domain structure, combined with its consequence-based questioning, should capture these trade-offs: "I can cook, but if I do, I can't talk to anyone for the rest of the day" = deliberate substitution of home activities for communication.

**Evidence link:** The paper's ch17 (lifestyle interventions) describes pacing as energy envelope management. The ch32 optimal control model formalizes resource allocation. FUNCAP's consequence-based design directly captures the trade-off information that standard questionnaires miss.

**Certainty:** 0.30. The revealed preference framing is novel. Pacing patients do report these trade-offs anecdotally but they have not been formally quantified.

**Falsifiable prediction:** In a time-use diary study combined with FUNCAP, patients who show the largest inter-domain substitutions (high negative correlation between domain pairs across time) should have the most stable overall FUNCAP total score (better pacing), while patients who show correlated decline across all domains (low substitution) should have more volatile courses with more frequent PEM crashes.

---

## 2. Research Directions

### 2.1 The Definitive FUNCAP Validation Study

**Design:** Multi-center, multi-country cross-sectional study (n >= 500 ME/CFS, n >= 200 healthy controls, n >= 100 Long COVID with PEM) at 5+ sites. Administer FUNCAP-55, FUNCAP-27, SF-36, WHODAS 2.0, and objective measures (actigraphy 14-day, 2-day CPET subset n=100, COMPASS-31). Test: (a) convergent validity against SF-36/WHODAS, (b) known-groups validity across severity levels, (c) sensitivity to severity gradient (extremely severe sub-levels), (d) differential item functioning across languages and cultures, (e) cross-disease validity in Long COVID.

**Primary outcome:** Does FUNCAP-55 discriminate severity levels better than SF-36 physical function? (ROC AUC comparison.)

**Secondary outcomes:** Does FUNCAP avoid floor effects at extremely severe levels where SF-36 fails? Does FUNCAP-27 correlate with FUNCAP-55 at r >= 0.90? Does FUNCAP correlate with objective measures (step count, VO2max, COMPASS-31)?

**Feasibility:** Moderate. FUNCAP is free (CC BY), available in 8 languages. The primary barrier is recruiting severe/extremely severe patients. Estimated cost: $300-500K.

**Impact:** HIGHEST. This is the single study most needed to establish FUNCAP as the standard functional capacity measure for PEM-related conditions.

---

### 2.2 FUNCAP Longitudinal Sensitivity-to-Change Study

**Design:** Prospective cohort (n >= 300 ME/CFS, severity-stratified). FUNCAP-27 administered monthly for 12 months. Track: PEM crashes (patient diary), treatment changes, infections, life events. Test: (a) minimal clinically important difference (MCID), (b) responsiveness to deterioration (PEM crashes), (c) responsiveness to improvement (treatment response), (d) test-retest reliability at monthly intervals in stable patients.

**Key innovation:** Pair each monthly FUNCAP with a PEM event log. This enables testing whether FUNCAP detects the delayed functional consequences of PEM crashes — the instrument's core design rationale.

**Feasibility:** High. Remote administration (FUNCAP is self-report), low burden (27 items), 12-month follow-up. Estimated cost: $100-200K.

**Impact:** HIGH. No sensitivity-to-change data exist. This is required before FUNCAP can be recommended as a primary trial endpoint with confidence.

---

### 2.3 Head-to-Head: FUNCAP vs. SF-36 vs. WHODAS in ME/CFS

**Design:** Cross-sectional n >= 400 ME/CFS patients (severity-stratified). All three instruments plus 2-day CPET subset (n >= 80). Direct comparison of: (a) floor/ceiling effect prevalence, (b) correlation with objective measures (VO2max, step count, HRV), (c) patient preference (which instrument patients feel captures their experience), (d) clinician usability (time to administer, interpretability).

**Evidence link:** Goxhaj2026OutcomeMeasures explicitly calls for better outcome measures in Long COVID/ME/CFS trials. The paper's ch05 and ch23 both note SF-36 limitations without providing direct comparison data.

**Feasibility:** Moderate. Requires 2-day CPET for objective benchmark. Estimated cost: $200-400K.

**Impact:** HIGH. Direct evidence that FUNCAP outperforms generic tools in PEM populations would drive adoption.

---

### 2.4 FUNCAP Digital Adaptation and Real-Time PEM Monitoring

**Design:** Convert FUNCAP-27 to a mobile app with daily micro-assessment (3-5 items per day, rotating through all 27 items over 1 week). Pair with wearable data (HRV, step count, sleep). Use the app in n >= 100 ME/CFS patients for 3 months to test: (a) whether daily FUNCAP domain scores predict PEM crashes 24-72h before patient-reported onset, (b) whether daily domain fluctuations correlate with wearable biomarkers, (c) whether the consequence-based items provide earlier crash warning than capability-based items.

**Key insight:** FUNCAP's consequence-based design ("what happens when you do X") is inherently dynamic — it captures the *leading edge* of PEM, not just the aftermath. Daily micro-assessment could function as an early warning system.

**Evidence link:** The paper's ch33 (CSD monitoring) describes wearable-based PEM crash prediction. Clague-Baker 2025 (HRM-guided pacing) showed 89% adherence. The Grach2025voiceSpeech study proposes digital biomarkers for PEM. FUNCAP daily items would provide the patient-reported complement to wearable data.

**Certainty:** 0.40 for the concept; 0.25 for the specific prediction that consequence items provide earlier warning than capability items.

**Feasibility:** Moderate. App development + validation study. Estimated cost: $150-250K.

---

### 2.5 Cross-Cultural FUNCAP Validation Study

**Design:** Administer FUNCAP-55 in all 8 available language versions to ME/CFS patients in 8 countries (n >= 100 per language/country). Test differential item functioning (DIF) to determine whether specific items behave differently across cultures. Identify items that need cultural adaptation.

**Evidence link:** FUNCAP is already translated into 8 languages (Norwegian, Dutch, English, French, German, Italian, Japanese, Swedish). Sommerfelt2024FUNCAP validated Norwegian and English versions but no others.

**Feasibility:** Moderate. Requires international collaboration. CC BY license facilitates this. Estimated cost: $200-300K.

**Impact:** MEDIUM-HIGH. Essential for FUNCAP adoption in international trials and cross-country epidemiological studies.

---

## 3. Drug/Medication Ideas

### 3.1 Domain-Guided Pharmacotherapy: Matching Drugs to FUNCAP Profiles

**Idea:** Use a patient's FUNCAP domain profile to select pharmacotherapy. Rather than treating "ME/CFS" as a monolithic indication, target the most impaired functional domain with the most mechanism-specific drug available.

**Mapping:**

| Dominant impaired domain | Suggested mechanism | Candidate drug | Rationale |
|---|---|---|---|
| Being upright | Autonomic/orthostatic | Pyridostigmine, midodrine, fludrocortisone | Improve cerebral perfusion during upright posture |
| Light/sound reactions | Sensory hypersensitivity | LDN (microglial modulation), memantine (NMDA antagonist) | Reduce neuroinflammation-mediated sensory amplification |
| Concentration | Neurocognitive | Methylphenidate, solriamfetol | Dopaminergic support for cognitive demand |
| Walking/movement | Muscular/metabolic | CoQ10 + NADH, L-carnitine | Mitochondrial support for exertional capacity |
| Communication | Neuromuscular endurance | Pyridostigmine (acetylcholinesterase inhibition) | Sustain vocal/motor function for extended communication |

**Evidence link:** LIFT trial (pyridostigmine + LDN) uses FUNCAP-55 as primary outcome but does not stratify by domain (Meadows2025LIFTprotocol). The paper's ch14 (mechanism-treatment map) and ch15 (medications) provide the mechanism-drug mapping. Weigel2024SymptomClusters showed autonomic symptoms most negatively associated with functioning.

**Certainty:** 0.30 for the specific mapping. 0.55 for the general principle that domain-specific treatment is better than undifferentiated treatment.

**Falsifiable prediction:** In a domain-stratified RCT, patients treated according to their dominant impaired FUNCAP domain should show greater improvement on that domain (and total FUNCAP score) than patients receiving a non-matched treatment. If domain matching provides no benefit over random assignment, the approach fails.

---

### 3.2 Pyridostigmine Dose Titration Guided by "Being Upright" Domain Score

**Idea:** The "being upright" FUNCAP domain (items about standing, sitting up, positional tolerance) could serve as a patient-reported pharmacodynamic biomarker for pyridostigmine dose optimization. Instead of titrating by heart rate or orthostatic vitals alone, titrate by functional capacity in the domain most directly affected by the drug's mechanism.

**Mechanistic rationale:** Pyridostigmine inhibits acetylcholinesterase, enhancing cholinergic transmission at autonomic ganglia and the neuromuscular junction. Its primary functional effect in ME/CFS is improved orthostatic tolerance. The "being upright" FUNCAP domain directly measures the functional consequence of orthostatic tolerance. A dose-response curve on this domain would provide patient-centered dose optimization.

**Evidence link:** LIFT trial uses pyridostigmine as one arm with FUNCAP-55 primary outcome. The paper's ch10 (cardiovascular) and ch09 (autonomic) document orthostatic intolerance as a core feature.

**Certainty:** 0.40. Mechanistically sound. The domain-drug alignment is strong. Untested as a titration strategy.

**Falsifiable prediction:** In a pyridostigmine dose-escalation study (30mg → 60mg → 90mg TID), "being upright" FUNCAP domain score should show a monotonic dose-response relationship (or plateau at effective dose) while other domains show minimal change. If "being upright" does not respond preferentially, the domain-specificity prediction fails.

---

### 3.3 LDN Functional Recovery Trajectory: Sequential Domain Improvement

**Idea:** If LDN works primarily through microglial modulation and TRPM3 restoration (Cabanas 2021), the predicted recovery sequence across FUNCAP domains should be: light/sound reactions first (sensory hypersensitivity is microglia-dependent) → concentration (cognitive function requires normalized neuroinflammation) → communication and home activities (downstream functional gains) → walking/movement and being upright (last, because these have additional autonomic/metabolic components not addressed by LDN alone).

**Evidence link:** Cabanas2021 showed LDN restores TRPM3 function in NK cells. Multiple LDN open-label studies show broad subjective improvement. The LIFT trial will provide the first blinded data.

**Certainty:** 0.25. The mechanistic rationale for the specific sequence is speculative. The general principle of mechanism-specific domain recovery is more certain (0.40).

**Falsifiable prediction:** In a longitudinal LDN trial with monthly FUNCAP-27, the "light/sound reactions" domain should show the earliest significant improvement (detectable at month 1-2), followed by "concentration" (month 2-3), with "walking/movement" showing the smallest and latest change. If all domains improve simultaneously, the sequential recovery hypothesis fails.

---

## 4. Supplement/Nutraceutical Ideas

### 4.1 Creatine Monohydrate + FUNCAP "Concentration" and "Communication" Domains

**Idea:** Creatine supplementation (5g/day) should preferentially improve FUNCAP domains that depend on rapid, high-intensity neural ATP turnover: concentration and communication. These cognitive domains require moment-to-moment ATP regeneration that phosphocreatine buffering supports.

**Mechanistic rationale:** Brain phosphocreatine is the rapid ATP buffer for neural activity. Cognitive tasks (sustained attention, verbal fluency) deplete phosphocreatine faster than mitochondrial oxidative phosphorylation can replenish it. Creatine supplementation expands the phosphocreatine pool, extending the duration of sustained cognitive effort before ATP depletion. In ME/CFS, where cognitive PEM is common, creatine should extend the "concentration budget."

**Evidence link:** Creatine improves working memory in healthy adults (multiple RCTs). The paper's ch27 energy model defines headroom ratio that phosphocreatine would increase. FUNCAP's "concentration" domain captures the functional consequence of cognitive energy limitation.

**Certainty:** 0.35. Creatine brain effects are established in healthy populations. ME/CFS-specific cognitive effects are untested. Domain-specific prediction is speculative.

**Falsifiable prediction:** In a creatine vs. placebo RCT (n >= 60 ME/CFS, 8-week crossover), the "concentration" and "communication" FUNCAP domains should show significantly greater improvement than physical domains ("walking/movement," "being upright"). If creatine improves all domains equally, the cognitive-specificity hypothesis fails.

---

### 4.2 Magnesium L-Threonate + FUNCAP "Light/Sound Reactions" Domain

**Idea:** Magnesium L-threonate (144mg elemental Mg/day) may reduce sensory hypersensitivity captured by FUNCAP's "light/sound reactions" domain via NMDA receptor modulation and enhanced glymphatic clearance during sleep.

**Mechanistic rationale:** Magnesium is an NMDA receptor antagonist that reduces excitatory neural signaling. In ME/CFS, sensory hypersensitivity involves amplified sensory processing (central sensitization). Magnesium L-threonate crosses the BBB more effectively than other magnesium forms. Additionally, magnesium supports glymphatic function during sleep, which clears metabolic waste from the interstitial space — potentially reducing the neuroinflammatory substrate of sensory amplification.

**Evidence link:** The paper's ch08 (neurological) documents central sensitization. The brainstorm-sleep-glymphatic-orexin-20260420 brainstorm explores glymphatic dysfunction. FUNCAP's unique "light/sound reactions" domain has no equivalent in generic questionnaires.

**Certainty:** 0.25. Magnesium L-threonate improves cognition in aging (one RCT). Sensory hypersensitivity effects are untested in any condition.

**Falsifiable prediction:** In an 8-week RCT, magnesium L-threonate should reduce the "light/sound reactions" FUNCAP domain score significantly more than magnesium citrate (which does not cross BBB efficiently) or placebo, controlling for total magnesium intake.

---

### 4.3 CoQ10 + NADH + FUNCAP Physical Domains: Expected Non-Response Pattern

**Idea:** Based on the paper's documented evidence, CoQ10 + NADH improves fatigue scores but not functional capacity (the exercise blinding literature suggests subjective improvement may not translate to functional gains). FUNCAP's consequence-based design should be more resistant to this bias than fatigue VAS. Predicting that CoQ10+NADH improves subjective fatigue but NOT FUNCAP domain scores — a stronger test of genuine functional improvement.

**Mechanistic rationale:** CoQ10+NADH supports electron transport chain function at Complex I/III. If the primary ME/CFS defect is upstream (substrate delivery, CDR-mediated metabolic suppression), improving ETC cofactors may increase perceived energy without increasing actual functional capacity. FUNCAP's consequence-based items should be less susceptible to this perception-performace gap because they ask about what actually happens when the patient exerts themselves.

**Evidence link:** Castro-Marrero 2015 (n=73) showed CoQ10+NADH improved fatigue scores. The exercise blinding framework (brainstorm-exercise-blinding-20260421) documents the subjective-objective discrepancy. FUNCAP was designed to capture functional consequences, not perceived capability.

**Certainty:** 0.35. The prediction of non-response is itself a valuable falsification test. If CoQ10+NADH does improve FUNCAP scores, this would be strong evidence of genuine functional benefit.

**Falsifiable prediction:** In a CoQ10+NADH RCT with both fatigue VAS and FUNCAP-27 as outcomes, the fatigue VAS should show improvement (replicating Castro-Marrero) while FUNCAP domain scores should show minimal change. If FUNCAP also improves, this contradicts the perception-performance gap hypothesis and suggests genuine functional benefit.

---

## 5. Non-Pharmacological Interventions

### 5.1 FUNCAP-Informed Pacing Optimization

**Idea:** Use serial FUNCAP-27 assessments (weekly) to identify which specific functional domains are deteriorating, enabling domain-targeted pacing adjustments. Rather than generic "reduce activity" advice, the clinician can say: "Your 'home activities' score dropped this week — which specific activity is causing PEM? Let's adjust that one activity."

**Mechanistic rationale:** Standard pacing advice is undifferentiated — reduce overall activity. But ME/CFS patients have heterogeneous functional profiles. A patient whose "communication" domain is stable while "home activities" declines needs to adjust household tasks, not social contact. FUNCAP's 8-domain structure provides the granularity for targeted pacing.

**Evidence link:** The paper's ch17 describes pacing but lacks domain-specific tools. The ch32 optimal control model implies targeted resource allocation. FUNCAP provides the measurement infrastructure.

**Certainty:** 0.45. Clinically sensible. The question is whether weekly FUNCAP-27 has sufficient sensitivity to detect domain-specific changes within a week.

**Falsifiable prediction:** In a 12-week pacing intervention study, patients receiving FUNCAP-informed domain-targeted pacing should show greater improvement in total FUNCAP score than patients receiving generic pacing advice, with the same total activity restriction. The intervention targets *distribution* of activity, not total amount.

---

### 5.2 HRV-Guided Pacing with FUNCAP Outcome Measurement

**Idea:** Combine wearable HRV monitoring (real-time pacing guidance) with FUNCAP-27 (monthly outcome assessment) to test whether HRV-guided pacing produces measurable functional improvement over standard pacing. FUNCAP is the ideal outcome because its consequence-based design captures the functional impact of pacing decisions.

**Evidence link:** Clague-Baker 2025 showed 89% adherence to HRM-guided pacing at 8 weeks but used non-validated outcomes. FUNCAP would provide a validated, PEM-specific outcome measure.

**Certainty:** 0.40. HRV-guided pacing is feasible. FUNCAP adds validated outcome measurement.

**Falsifiable prediction:** HRV-guided pacing + FUNCAP-27 monthly assessment should show: (a) significant FUNCAP improvement at 12 weeks vs. baseline, (b) "being upright" and "walking/movement" domains most improved (orthostatic function most HRV-responsive), (c) FUNCAP improvement should correlate with HRV improvement metrics (RMSSD, LF/HF ratio).

---

### 5.3 Environmental Modification Guided by FUNCAP "Light/Sound Reactions" Domain

**Idea:** The "light/sound reactions" domain provides a quantifiable target for environmental modification interventions. Patients with high scores in this domain should benefit most from: dark/quiet room optimization, blue-light blocking glasses, noise-canceling headphones, low-stimulus environments. The domain score tracks intervention effectiveness.

**Mechanistic rationale:** Sensory hypersensitivity in ME/CFS involves central sensitization of thalamic and brainstem sensory processing. Environmental modifications reduce sensory input to the sensitized system. FUNCAP is the only questionnaire that quantifies this domain as a functional capacity measure.

**Certainty:** 0.50 for the individual interventions. 0.35 for using FUNCAP domain scores as outcome tracking.

**Falsifiable prediction:** Patients in the top quartile of "light/sound reactions" domain score should show greater functional improvement from environmental modification (dark/quiet room protocol) than patients in the bottom quartile, as measured by total FUNCAP score change at 4 weeks.

---

## 6. Combinations + Access

### 6.1 The FUNCAP Disability Package

**Idea:** A standardized disability assessment package combining FUNCAP-55 (patient-reported functional capacity), 2-day CPET (objective PEM severity), COMPASS-31 (autonomic burden), and actigraphy (7-day activity pattern). This composite package addresses all limitations of any single instrument and provides evidence that is harder for insurers/adjudicators to dismiss.

**Evidence link:** The paper's ch05 and ch23 both note that no single tool is accepted as a gold standard. The ch31 ratchet model shows that single timepoint assessments miss severity dynamics. A multi-modal package would provide convergent validity.

**Certainty:** 0.45. Each component is validated individually. The combination is novel and requires standardization.

---

### 6.2 Caregiver-Administered FUNCAP for Severe/Very Severe Patients

**Idea:** Develop a caregiver proxy version of FUNCAP-55 for patients who cannot self-report (very severe ME/CFS, cognitive impairment during PEM). The consequence-based design is particularly amenable to proxy completion because caregivers observe the consequences of activities ("after she showered, she couldn't speak for the rest of the day") even when patients cannot.

**Mechanistic rationale:** Approximately 25% of ME/CFS patients are severe or very severe. Standard questionnaires require self-completion, which may be impossible during severe PEM or for tube-fed, bedbound patients. Caregiver observation of functional consequences is a valid proxy when direct self-report is unavailable.

**Evidence link:** Sommerfelt2023NorwaySevere documented the extreme functional limitations in very severe patients. Jahanbani2024severity proposed sub-levels that require proxy assessment. The ACHTSAM home-visit protocol (Fricke2026achtsam) already uses home-based assessment.

**Certainty:** 0.40. Proxy completion is standard in other severe illness instruments (e.g., Barthel Index). FUNCAP consequence-based items are observable by caregivers.

**Falsifiable prediction:** Caregiver-completed FUNCAP-55 proxy scores should correlate at r >= 0.70 with patient self-report in moderate ME/CFS patients (where both are possible), validating the proxy instrument. In severe patients (no self-report possible), proxy scores should show discriminant validity across severity sub-levels.

---

### 6.3 FUNCAP-27 as Remote Monitoring Tool for Clinical Trials

**Idea:** Standardize FUNCAP-27 as the remote patient-reported outcome (ePRO) for ME/CFS clinical trials, replacing heterogeneous fatigue scales. The 27-item version is brief enough for weekly remote administration, validated, PEM-specific, and freely available. A single standardized ePRO would enable cross-trial comparison and meta-analysis.

**Evidence link:** JasonChee2025PEMmeasure cites FUNCAP as the established standard. Goxhaj2026OutcomeMeasures argues poor outcome measures drive negative trial results. LIFT trial already uses FUNCAP-55 as primary outcome.

**Certainty:** 0.50. The argument for standardization is strong. The barrier is adoption, not validity.

---

## 7. Mathematical Model Extensions

### 7.1 FUNCAP Score as Observable of the Ratchet Model's B(t)

**Idea:** Map FUNCAP total score onto the ratchet model's baseline functional capacity B(t) ∈ [0,1] (ch31). This creates a bridge between the mathematical model and a clinically validated measurement instrument.

**Formalization:** If FUNCAP total score ranges from 0 (no functional capacity) to 55 (full capacity), then:
B(t) ≈ FUNCAP_total(t) / 55

But this linear mapping may not hold because FUNCAP items are not equally spaced. A Rasch model or Item Response Theory (IRT) calibration of FUNCAP items would provide a more accurate mapping: B(t) = f(FUNCAP_total), where f is a monotonic transformation derived from IRT parameters.

**Key prediction:** The ratchet model's piecewise recovery scaling (ch31, Table tab:recovery-regimes) predicts that the same absolute change in FUNCAP score at different severity levels represents different underlying biological changes. A 5-point improvement from score 10 to 15 (severe) reflects vastly more biological recovery than a 5-point improvement from score 40 to 45 (mild).

**Evidence link:** The paper's ch31 already models B(t) but lacks a validated measurement instrument to calibrate it. FUNCAP provides the instrument. The Sommerfelt2024FUNCAP validation data could be used for IRT calibration.

**Certainty:** 0.35 for the linear mapping. 0.20 for the IRT refinement (requires reanalysis of raw data).

**Falsifiable prediction:** If the ratchet model's recovery scaling is correct, the rate of FUNCAP score improvement should be nonlinear across severity levels: faster in the moderate range (plateau regime), slower in the cliff regime, and slow-but-constant in the floor regime. A linear recovery model should fit worse than the piecewise model in longitudinal FUNCAP data.

---

### 7.2 Domain-Specific Differential Equations

**Idea:** Extend the ch31 ratchet model from a scalar B(t) to a vector B_domain(t) = [B_hygiene, B_walking, B_upright, B_home, B_communication, B_outside, B_sensory, B_concentration]. Each domain has its own damage and repair dynamics:

dB_i/dt = r_i(B_i) · [ATP] - Σ_k d_{ik} · damage_k(t)

where d_{ik} represents how damage event k affects domain i. This allows modeling domain-specific treatment effects and inter-domain substitution.

**Mechanistic rationale:** A PEM crash from physical overexertion primarily damages B_walking, B_upright, and B_home but may spare B_communication. A cognitive overexertion crash primarily damages B_concentration and B_communication. The current scalar model cannot distinguish these.

**Certainty:** 0.20. The extension is mathematically straightforward but requires domain-specific calibration data that does not exist.

**Falsifiable prediction:** In a longitudinal study with weekly FUNCAP-27, domain scores should show partially independent trajectories (not all domains move together). After physical PEM crashes, physical domains should decline more than cognitive domains. After cognitive crashes, the reverse pattern should hold. If all domains always move together (single-factor structure), the vector model is unnecessary.

---

### 7.3 The Consequence-Damage Coupling Model

**Idea:** Formalize the relationship between FUNCAP consequence scores and the damage accumulation rate in the ratchet model. Higher consequence scores (more functional limitation per unit of activity) should predict faster damage accumulation, creating a positive feedback loop: worse PEM → more conservative behavior → functional deconditioning → even less capacity to tolerate activity → worse PEM at even lower thresholds.

**Formalization:**

damage_rate(t) = α · activity(t) · consequence_score(t)

where consequence_score(t) is derived from FUNCAP domain scores. The key innovation: consequence_score is not constant — it may increase as damage accumulates (sensitization). This creates the feed-forward loop:

damage ↑ → consequence_score ↑ → same activity produces more damage → damage ↑

**Certainty:** 0.25. The sensitization component is speculative. The basic coupling is consistent with clinical observation.

**Falsifiable prediction:** Patients with higher FUNCAP consequence scores (at matched activity levels) should show faster functional decline over 12 months. This requires controlling for activity level, which requires actigraphy.

---

## 8. Cross-Disease Bridges

### 8.1 FUNCAP in Long COVID: The Outcome Measure That Could Fix Negative Trials

**Idea:** The Goxhaj2026OutcomeMeasures Lancet ID commentary explicitly recommends FUNCAP for Long COVID trials. This creates a direct testable prediction: Long COVID trials using FUNCAP as primary outcome should show larger treatment effects than trials using generic measures (SF-36, fatigue VAS) — not because the treatments work better, but because FUNCAP detects improvement that generic measures miss.

**Evidence link:** Goxhaj2026OutcomeMeasures argues poor outcome measures drive negative Long COVID trial results. The STOP-PASC Paxlovid trial was negative using standard outcomes. If the same trial had used FUNCAP, would it have detected a signal?

**Certainty:** 0.35. The logic is sound but the prediction is untested. It requires a Long COVID trial to adopt FUNCAP.

**Falsifiable prediction:** Reanalysis of completed Long COVID trial datasets using FUNCAP items (retrospective scoring from existing symptom data) should show: (a) larger effect sizes than the original primary endpoint, (b) the effect should be concentrated in PEM-related domains (being upright, walking/movement, light/sound reactions).

---

### 8.2 FUNCAP for Functional Neurological Disorder (FND)

**Idea:** FND patients also experience functional limitations that are poorly captured by generic instruments. The consequence-based design of FUNCAP ("what happens when you do X") may be applicable to FND, where the consequences of activity (symptom exacerbation, functional dissociation) are central to the condition.

**Evidence link:** FND and ME/CFS share contested diagnostic status, functional impairment patterns, and histories of psychosomatic dismissal. The paper's ch24 (controversies) documents these parallels.

**Certainty:** 0.15. Highly speculative. FND has a different pathophysiology (functional rather than organic). The consequence-based questioning may still be useful.

**Falsifiable prediction:** FND patients completing FUNCAP should show elevated scores in domains related to their symptom pattern (e.g., movement/concentration) with relative sparing of others. If FUNCAP cannot discriminate FND subtypes, it is not useful for this population.

---

### 8.3 Post-Concussion Syndrome and FUNCAP: The Mild TBI Bridge

**Idea:** Post-concussion syndrome shares PEM-like exercise intolerance and cognitive fatigue with ME/CFS. Boris2026POTStelemedicine found ~40% head trauma/concussion history in POTS patients. FUNCAP may capture functional limitations in post-concussion patients that standard concussion assessments (SCAT, Rivermead) miss.

**Evidence link:** Boris2026POTStelemedicine found 40% concussion history. The paper documents overlapping pathophysiology between post-concussive states and ME/CFS. Boris also found vestibular dysfunction and convergence disorder previously underrecognized.

**Certainty:** 0.20. The overlap is documented but FUNCAP has not been tested in this population.

---

### 8.4 Functional Somatic Syndromes: FUNCAP as Trans-Diagnostic Tool

**Idea:** If the consequence gap hypothesis (1.1) is correct, FUNCAP-SF-36 discrepancy scores may identify patients across functional somatic syndromes (ME/CFS, fibromyalgia, IBS, TMJ) who share a PEM-like mechanism. The consequence gap could be a trans-diagnostic marker of exertion intolerance, regardless of the primary diagnosis.

**Evidence link:** The paper's ch14d (cross-disease analysis) documents shared pathophysiology. The brainstorm-exercise-blinding-20260421 identifies FM as an intermediate case between depression and ME/CFS.

**Certainty:** 0.20. Speculative. Would require large multi-condition dataset.

**Falsifiable prediction:** In a mixed cohort of ME/CFS, FM, IBS, and TMJ patients, the consequence gap (FUNCAP minus SF-36 equivalent) should be highest in ME/CFS, intermediate in FM, and lowest in IBS/TMJ. This gradient would support the exertion-intolerance spectrum hypothesis.

---

## 9. Diagnostic/Biomarker Ideas

### 9.1 FUNCAP + Wearable Composite: The "Functional Fingerprint"

**Idea:** Combine FUNCAP domain scores with 14-day wearable data (step count, HRV, sleep efficiency, activity pattern regularity) to create a multi-dimensional "functional fingerprint" that is more diagnostic than any single measure. Machine learning classification (random forest or SVM) on this composite could discriminate ME/CFS from other fatiguing conditions.

**Evidence link:** The paper's ch20 (biomarker research) documents the need for composite biomarkers. The brainstorm-exercise-blinding-20260421 proposed wearable-derived endpoints. FUNCAP provides the patient-reported dimension.

**Certainty:** 0.30. Composite approaches outperform single markers in most conditions. The specific FUNCAP+wearable combination is novel.

**Falsifiable prediction:** A classifier trained on FUNCAP + wearable data should discriminate ME/CFS from depression, hypothyroidism, and deconditioning with AUC >= 0.85. If the classifier cannot outperform individual components, the composite approach adds no value.

---

### 9.2 FUNCAP Domain Trajectory as Treatment Response Predictor

**Idea:** The pattern of domain score changes over the first 4 weeks of any treatment predicts long-term response. Patients who show early improvement in any single domain (even a small change) are more likely to be treatment responders at 12 weeks. Patients whose scores are flat across all domains at 4 weeks are unlikely to respond.

**Mechanistic rationale:** The paper's ch21 (clinical trials) documents that placebo response in ME/CFS is ~24-35%. Early domain-level trajectory analysis could distinguish genuine treatment response from placebo/natural fluctuation. Placebo response tends to be diffuse across all items; genuine pharmacological response tends to be domain-specific (matching the drug's mechanism).

**Certainty:** 0.30. The early-responder concept is established in psychiatry (antidepressant response at 2 weeks predicts 12-week response). Application to ME/CFS and FUNCAP is novel.

**Falsifiable prediction:** In a pooled analysis of ME/CFS treatment trials using FUNCAP-27 monthly, a 4-week domain trajectory classifier should predict 12-week total score response with PPV >= 0.70. If 4-week trajectories are uninformative, the early signal hypothesis fails.

---

### 9.3 FUNCAP-Based Severity Stratification for Clinical Trial Enrollment

**Idea:** Use FUNCAP total score ranges to define trial enrollment strata that are more granular than current severity classifications. This enables severity-stratified randomization and subgroup analysis that is calibrated to the outcome measure itself.

**Proposed strata:**
- Mild: FUNCAP-55 total 40-55
- Moderate: FUNCAP-55 total 25-39
- Severe: FUNCAP-55 total 10-24
- Very severe: FUNCAP-55 total 0-9

**Evidence link:** The paper's ch05 documents severity classification but notes that current systems (Karnofsky, Bell, SF-36) have limitations. FUNCAP provides a unified, validated severity scale.

**Certainty:** 0.40. The calibration requires data that does not yet exist (FUNCAP scores across the severity spectrum in a single cohort). The concept is straightforward.

---

### 9.4 The "Consequence Threshold" as PEM Diagnostic Criterion

**Idea:** A specific pattern of FUNCAP responses could serve as a diagnostic criterion for PEM — more specific than current criteria (which rely on patient-reported history). The pattern: high scores on consequence items ("doing X causes Y to be impossible") with moderate-to-low scores on capability items ("I can do X sometimes").

**Mechanistic rationale:** PEM is defined by the *consequence* of exertion, not the *capability* to exert. A patient who can walk 200m but doing so causes 48h bedbound is PEM-positive. A patient who cannot walk 200m at all but doesn't experience delayed worsening may have a different condition (deconditioning, musculoskeletal). FUNCAP's dual structure (consequence + capability, implicit in the 8 domains) captures this distinction.

**Evidence link:** The paper's ch04 (diagnostic criteria) documents the evolution of PEM as a required criterion. FUNCAP's consequence-based design was specifically created to capture PEM (Sommerfelt2024FUNCAP).

**Certainty:** 0.25. The concept is appealing but requires empirical calibration. What specific score pattern constitutes a positive PEM screen?

**Falsifiable prediction:** A FUNCAP-derived PEM screen should identify PEM-positive patients with sensitivity >= 0.85 and specificity >= 0.80 against clinical PEM diagnosis (2-day CPET or expert assessment). If FUNCAP cannot discriminate PEM from other causes of functional limitation, it cannot serve as a diagnostic tool.

---

## Impact Rankings (Top 10)

| Rank | Idea | Category | Certainty | Impact | Actionability |
|------|------|----------|-----------|--------|---------------|
| 1 | Definitive FUNCAP validation study (2.1) | Research | 0.60 | Highest | Moderate ($300-500K) |
| 2 | Longitudinal sensitivity-to-change (2.2) | Research | 0.55 | High | High ($100-200K, remote) |
| 3 | Head-to-head vs. SF-36/WHODAS (2.3) | Research | 0.50 | High | Moderate ($200-400K) |
| 4 | Consequence gap as PEM biomarker (1.1) | Hypothesis | 0.40 | High | Moderate (needs cohort) |
| 5 | FUNCAP-informed pacing (5.1) | Non-pharm | 0.45 | Medium | HIGH (free, implementable) |
| 6 | Domain-guided pharmacotherapy (3.1) | Drug | 0.30 | High | Medium (needs trial) |
| 7 | Caregiver proxy FUNCAP (6.2) | Access | 0.40 | High | Moderate (needs validation) |
| 8 | FUNCAP + wearable composite (9.1) | Diagnostic | 0.30 | Medium-High | Moderate (needs ML + cohort) |
| 9 | FUNCAP digital adaptation (2.4) | Research | 0.40 | High | Moderate ($150-250K) |
| 10 | FUNCAP as B(t) observable (7.1) | Model | 0.35 | Medium | Moderate (needs IRT calibration) |

---

## Integration Priorities

### For the document (if user approves):

1. **Idea 1.1 (Consequence gap)**: Could become a new section in ch23 or ch20 — a novel derived metric from existing instruments.
2. **Idea 1.4 (Floor effect paradox)**: Strengthens ch05 severity discussion and ch31 ratchet model — connects measurement properties to model predictions.
3. **Idea 7.1 (FUNCAP as B(t) observable)**: Natural extension of ch31 — bridges mathematical model to clinical measurement.
4. **Idea 6.1 (Disability package)**: Extends ch05 and ch23 disability assessment sections with a practical recommendation.
5. **Idea 8.1 (Long COVID bridge)**: Strengthens ch24 and ch13 cross-disease sections with the outcome measure dimension.

### For future research proposals:

6. **Idea 2.1 (Validation study)**: The most important missing study in the field.
7. **Idea 2.2 (Longitudinal sensitivity)**: Required before FUNCAP can be confidently recommended as trial endpoint.
8. **Idea 2.3 (Head-to-head)**: Would provide the definitive evidence that FUNCAP outperforms generic tools.
9. **Idea 2.4 (Digital adaptation)**: Could be combined with existing wearable infrastructure (ch33 CSD monitoring).

### For clinical practice:

10. **Idea 5.1 (FUNCAP-informed pacing)**: Zero-cost improvement to current pacing advice.
11. **Idea 6.2 (Caregiver proxy)**: Addresses a critical gap in severe ME/CFS assessment.

---

## Caveats and Limitations

- FUNCAP was published June 2024 — the evidence base is less than 2 years old. Many predictions assume FUNCAP's validation properties will replicate.
- All hypotheses involving domain-specific predictions (1.2, 1.3, 3.1, 3.2, 3.3, 4.1, 4.2) assume the 8-domain structure reflects real pathophysiological axes. This has not been tested with factor analysis or IRT.
- The consequence-based design is FUNCAP's key innovation, but no study has directly compared consequence-based vs. capability-based items within the same instrument. Ideas built on this distinction (1.1, 5.3, 9.4) are particularly speculative.
- Treatment-specific domain predictions (3.2, 3.3) assume mechanism-domain alignment that is mechanistically plausible but untested. The LIFT trial results will provide the first data point.
- Cross-disease applications (8.1-8.4) assume functional capacity constructs are comparable across conditions, which may not hold.
- Mathematical model extensions (7.1-7.3) require longitudinal FUNCAP data that does not yet exist. They are frameworks for future analysis, not testable predictions with current data.
- The severity-stratified enrollment strata (9.3) require calibration against clinical severity assessment that has not been performed.
- Caregiver proxy validation (6.2) requires moderate ME/CFS patients completing both self-report and caregiver-report — the correlation data will determine feasibility.

Phase 3 complete: 30 ideas generated (5 hypotheses, 9 treatment ideas, 16 other).
