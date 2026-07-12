# Brainstorm: SleepFM AI Sleep Prediction — ME/CFS Applications
**Date:** 2026-05-24
**Core Source:** Thapa et al. (2026) Nature Medicine
**Literature Summary:** ops/research/Literature__sleepfm-ai-sleep-prediction__literature-summary.md

---

## Idea 1: The Decoupled Wakefulness Hypothesis
**Category:** Novel hypotheses
**Certainty:** 0.65
**Mechanistic Rationale:** ME/CFS is fundamentally a disorder of physiological state synchronization where multiple systems cannot simultaneously enter sleep state. The brain attempts to sleep (EEG shows NREM), but autonomic, respiratory, and metabolic systems remain in wake-like states, preventing true restorative sleep.
**Evidence Link:** Thapa 2026 (decoupling predicts disease), Mohamed 2023 (unrefreshing sleep despite near-normal aggregate PSG), Newton 2007 (autonomic dysfunction), Moldofsky 1975 (alpha-delta sleep pattern), Ruhrländer 2025 (orexin-autonomic coupling)
**Falsifiable Prediction:** ME/CFS patients will show >3 SD higher cross-modal decoupling scores than healthy controls, with specific patterns: EEG-NREM but ECG-wake, EMG-wake, respiration-wake.
**Tier:** 1

---

## Idea 2: Multi-System Phase Lock Failure Hypothesis
**Category:** Novel hypotheses
**Certainty:** 0.55
**Mechanistic Rationale:** Healthy sleep involves phase-locked oscillations across neural, vascular, autonomic, and respiratory systems at <0.1 Hz. ME/CFS involves failure of this phase locking, causing systems to oscillate at different frequencies or amplitudes, disrupting glymphatic pumping and restorative processes.
**Evidence Link:** Fultz 2019 (sequential coupling: slow wave → blood volume → CSF), Hauglund 2025 (LC-NE oscillations at ~0.05 Hz drive glymphatic clearance), Thapa 2026 (decoupling as biomarker)
**Falsifiable Prediction:** ME/CFS patients will show reduced phase coherence between EEG slow waves, ECG R-R intervals, and respiratory rate at <0.1 Hz during NREM sleep compared to controls.
**Tier:** 1

---

## Idea 3: Decoupling as Energy Conservation Failure Hypothesis
**Category:** Novel hypotheses
**Certainty:** 0.50
**Mechanistic Rationale:** Sleep decoupling prevents coordinated downregulation of metabolism across systems, causing continuous low-level energy expenditure during sleep. This creates a perpetual energy deficit despite adequate sleep duration, explaining PEM and exercise intolerance.
**Evidence Link:** Thapa 2026 (decoupling predicts disease), Mohamed 2023 (paradoxically increased N3 SWS but unrefreshing sleep), Hauglund 2025 (LC-NE oscillations drive restorative clearance)
**Falsifiable Prediction:** ME/CFS patients will maintain higher nocturnal metabolic rate (measured via indirect calorimetry) proportional to their cross-modal decoupling score, independent of sleep stage.
**Tier:** 1

---

## Idea 4: Cross-Modal Sensitization Hypothesis
**Category:** Novel hypotheses
**Certainty:** 0.45
**Mechanistic Rationale:** Chronic decoupling during sleep causes maladaptive sensitization where wake-related systems (sympathetic, respiratory, metabolic) become hyper-reactive to any sleep-related signals, creating a feedback loop that reinforces decoupling and prevents restoration.
**Evidence Link:** Thapa 2026 (decoupling predicts 130+ conditions), Newton 2007 (autonomic symptoms correlate with fatigue), Mohamed 2023 (microarousal index elevated)
**Falsifiable Prediction:** ME/CFS patients will show amplified sympathetic and respiratory responses to spontaneous slow waves during NREM sleep compared to controls, with response magnitude proportional to decoupling severity.
**Tier:** 2

---

## Idea 5: Alpha-Delta Decoupling as Thalamocortical Desynchronization Hypothesis
**Category:** Novel hypotheses
**Certainty:** 0.60
**Mechanistic Rationale:** Alpha-delta sleep represents failed decoupling between thalamic relay nuclei (generating alpha) and cortical slow wave generators (generating delta), reflecting thalamic calcium dysfunction. This prevents thalamocortical coherence needed for restorative sleep.
**Evidence Link:** Moldofsky 1975 (alpha-delta sleep pattern), Section @sec:thalamic-calcium-sleep (thalamic calcium dysfunction), Thapa 2026 (cross-modal decoupling detection)
**Falsifiable Prediction:** ME/CFS patients with alpha-delta sleep will show reduced coherence between thalamic alpha sources and frontal delta sources during NREM, measurable via source-localized EEG.
**Tier:** 2

---

## Idea 6: SleepFM Validation in ME/CFS Cohort Study
**Category:** Research directions
**Certainty:** 0.75
**Mechanistic Rationale:** Applying SleepFM to ME/CFS polysomnography data will identify disease-specific decoupling signatures and validate whether cross-modal decoupling explains the unrefreshing sleep paradox. Large-scale validation will establish decoupling as objective biomarker.
**Evidence Link:** Thapa 2026 (SleepFM predicts 130+ conditions), Mohamed 2023 (n=801 ME/CFS sleep meta-analysis), Jackson 2012 (subjective-objective discrepancy)
**Falsifiable Prediction:** SleepFM will distinguish ME/CFS from healthy controls with AUC >0.85 using cross-modal decoupling features alone, independent of standard sleep staging metrics.
**Tier:** 1

---

## Idea 7: Longitudinal Decoupling Progression Study
**Category:** Research directions
**Certainty:** 0.65
**Mechanistic Rationale:** Tracking decoupling over time in ME/CFS patients will determine whether decoupling is trait (stable, predictive of onset) or state (fluctuating with PEM severity). This informs whether decoupling is cause or consequence.
**Evidence Link:** Thapa 2026 (decoupling predicts future disease), Davis 2021 (post-viral pathophysiology shared), Fonseca 2024 (ML classification feasibility)
**Falsifiable Prediction:** Baseline cross-modal decoupling score will predict 2-year conversion from acute viral infection to ME/CFS with hazard ratio >3.0, independent of initial symptom severity.
**Tier:** 1

---

## Idea 8: LC-NE Coupling Measurement During Sleep
**Category:** Research directions
**Certainty:** 0.70
**Mechanistic Rationale:** Direct measurement of LC-NE coupling during sleep in ME/CFS will test the Hauglund 2025 mechanism. Combining EEG (neural), ECG (autonomic), and pupillometry (LC proxy) will quantify NE oscillation coupling deficits.
**Evidence Link:** Hauglund 2025 (LC-NE oscillations necessary and sufficient for glymphatic clearance), Section @sec:ch15-ne-vasomotion (reduced CSF DHPG in ME/CFS), Fultz 2019 (neurovascular coupling cascade)
**Falsifiable Prediction:** ME/CFS patients will show reduced power at 0.05 Hz in the coherence between EEG slow waves and pupillary unrest index during NREM sleep compared to controls.
**Tier:** 1

---

## Idea 9: Decoupling-Based ME/CFS Subtyping
**Category:** Research directions
**Certainty:** 0.60
**Mechanistic Rationale:** SleepFM can identify distinct decoupling phenotypes (e.g., autonomic-decoupled vs. respiratory-decoupled vs. thalamocortical-decoupled) within ME/CFS, enabling precision medicine approaches targeted to dominant decoupling axis.
**Evidence Link:** Thapa 2026 (decoupling detects diverse conditions), Newton 2007 (multiple autonomic domains affected), Mohamed 2023 (heterogeneous sleep abnormalities)
**Falsifiable Prediction:** Cluster analysis of SleepFM decoupling features will identify 3-5 reproducible ME/CFS subtypes with differential treatment response profiles.
**Tier:** 2

---

## Idea 10: Orexin Antagonist Timing Optimization
**Category:** Drug/medication ideas
**Certainty:** 0.55
**Mechanistic Rationale:** Orexin antagonists (e.g., suvorexant) promote sleep but may not address decoupling. Timing administration to precede the natural LC-NE oscillation phase window may restore coupling rather than just induce sedation.
**Evidence Link:** Ruhrländer 2025 (orexin regulates sleep-wake state stability), Hauglund 2025 (zolpidem suppresses NE oscillations, reduces glymphatic flow), Thapa 2026 (decoupling as disease predictor)
**Falsifiable Prediction:** Suvorexant administered 2 hours before habitual bedtime will improve SleepFM decoupling scores in ME/CFS by >25% compared to standard bedtime administration, independent of total sleep time.
**Tier:** 2

---

## Idea 11: Norepinephrine Oscillation Modulators
**Category:** Drug/medication ideas
**Certainty:** 0.50
**Mechanistic Rationale:** Agents that restore LC-NE oscillatory dynamics without suppressing amplitude may improve glymphatic coupling. Atomoxetine (NE reuptake inhibitor) at low dose may enhance oscillation amplitude without sympathetic overdrive.
**Evidence Link:** Hauglund 2025 (LC-NE oscillations drive glymphatic clearance), Section @sec:ch15-ne-vasomotion (reduced CSF DHPG in ME/CFS), Newton 2007 (autonomic dysfunction)
**Falsifiable Prediction:** Low-dose atomoxetine (10mg daily) will increase 0.05 Hz power in EEG-pupil coherence during NREM sleep and improve DTI-ALPS glymphatic index in ME/CFS.
**Tier:** 2

---

## Idea 12: Autonomic Modulators for Sleep Coupling
**Category:** Drug/medication ideas
**Certainty:** 0.60
**Mechanistic Rationale:** Beta-blockers (propranolol) and alpha-2 agonists (clonidine) may improve cardiorespiratory coupling during sleep by reducing sympathetic tone and stabilizing autonomic oscillations, potentially restoring cross-modal synchrony.
**Evidence Link:** Newton 2007 (autonomic dysfunction correlates with fatigue), Thapa 2026 (heart-brain decoupling predicts disease), Hauglund 2025 (autonomic oscillations drive clearance)
**Falsifiable Prediction:** Propranolol 40mg at bedtime will improve SleepFM decoupling scores (specifically EEG-ECG coherence) in ME/CFS patients with elevated nocturnal sympathetic tone by >30%.
**Tier:** 2

---

## Idea 13: Calcium Channel Modulators for Thalamic Function
**Category:** Drug/medication ideas
**Certainty:** 0.45
**Mechanistic Rationale:** Alpha-delta sleep reflects thalamic calcium dysfunction. Gabapentinoids (gabapentin, pregabalin) modulate calcium channels and may improve thalamocortical coupling, reducing alpha intrusion into delta sleep.
**Evidence Link:** Moldofsky 1975 (alpha-delta sleep pattern), Section @sec:thalamic-calcium-sleep (thalamic calcium dysfunction), Mohamed 2023 (alpha-delta subset)
**Falsifiable Prediction:** Pregabalin 75mg at bedtime will reduce alpha power during N3 sleep by >40% and improve subjective sleep refreshment in ME/CFS patients with alpha-delta sleep phenotype.
**Tier:** 3

---

## Idea 14: Adenosine Modulation Strategies
**Category:** Supplement/nutraceutical ideas
**Certainty:** 0.55
**Mechanistic Rationale:** ME/CFS involves elevated basal adenosine tone with impaired clearance. Caffeine ablation + adenosine precursors (S-adenosylmethionine) may restore adenosine homeostasis and improve sleep-wake coupling.
**Evidence Link:** Section @sec:adenosine-dysregulation (elevated basal tone, impaired clearance), Thapa 2026 (metabolic decoupling), Mohamed 2023 (unrefreshing sleep)
**Falsifiable Prediction:** 4-week caffeine elimination plus SAMe 400mg BID will reduce nocturnal adenosine levels (measured via microdialysis) and improve SleepFM coupling scores in ME/CFS by >20%.
**Tier:** 2

---

## Idea 15: Magnesium and Glycine for Thalamic Calcium Stabilization
**Category:** Supplement/nutraceutical ideas
**Certainty:** 0.50
**Mechanistic Rationale:** Magnesium glycinate provides both magnesium (calcium channel stabilizer) and glycine (NMDA co-agonist, improves sleep quality). May stabilize thalamic calcium dynamics and reduce alpha-delta decoupling.
**Evidence Link:** Section @sec:thalamic-calcium-sleep (calcium dysfunction), Moldofsky 1975 (alpha-delta sleep), Jackson 2012 (microarousal index elevated)
**Falsifiable Prediction:** Magnesium glycinate 400mg nightly for 8 weeks will reduce alpha-delta sleep ratio and improve subjective refreshment in ME/CFS patients with elevated alpha intrusion.
**Tier:** 2

---

## Idea 16: Slow Breathing for Cardiorespiratory Coupling Enhancement
**Category:** Non-pharmacological interventions
**Certainty:** 0.65
**Mechanistic Rationale:** Slow breathing (6 breaths/min) enhances cardiorespiratory coupling and HRV. Practicing before sleep may prime coupling mechanisms that persist into sleep, reducing heart-brain decoupling.
**Evidence Link:** Thapa 2026 (heart-brain decoupling predicts disease), Newton 2007 (autonomic dysfunction), Hauglund 2025 (autonomic oscillations drive clearance)
**Falsifiable Prediction:** 15-minute slow breathing (6 breaths/min) practice immediately before bedtime will improve EEG-ECG coherence during first NREM cycle by >25% in ME/CFS.
**Tier:** 2

---

## Idea 17: Transcutaneous Vagal Nerve Stimulation (tVNS) During Sleep
**Category:** Non-pharmacological interventions
**Certainty:** 0.55
**Mechanistic Rationale:** tVNS enhances parasympathetic tone and may stabilize autonomic oscillations during sleep. Low-intensity stimulation during NREM may improve autonomic-neural coupling without disrupting sleep architecture.
**Evidence Link:** Newton 2007 (impaired parasympathetic activation during sleep), Thapa 2026 (autonomic decoupling), Hauglund 2025 (autonomic oscillations drive clearance)
**Falsifiable Prediction:** Nocturnal tVNS during NREM sleep will improve SleepFM autonomic coupling scores and reduce nocturnal sympathetic tone by >30% in ME/CFS.
**Tier:** 2

---

## Idea 18: Core Temperature Modulation for Sleep Onset Coupling
**Category:** Non-pharmacological interventions
**Certainty:** 0.50
**Mechanistic Rationale:** Core temperature drop precedes sleep onset and facilitates autonomic downregulation. Warm bath 90 minutes before bedtime may enhance this coupling, improving brain-autonomic synchrony at sleep transition.
**Evidence Link:** Mohamed 2023 (increased sleep latency), Thapa 2026 (decoupling at state transitions), Newton 2007 (autonomic dysfunction)
**Falsifiable Prediction:** Warm bath (40°C, 20 min) 90 minutes before bedtime will reduce sleep latency by >30% and improve EEG-ECG coupling during first NREM cycle in ME/CFS.
**Tier:** 2

---

## Idea 19: Home-Based Coupling Monitoring System
**Category:** Combinations + access
**Certainty:** 0.70
**Mechanistic Rationale:** Consumer-grade wearables (EEG headbands, chest-strap ECG, respiratory bands) can approximate SleepFM decoupling metrics at home. Real-time feedback enables patients to adjust interventions (breathing, timing, posture) to improve coupling.
**Evidence Link:** Thapa 2026 (multimodal decoupling detection), Tsinalis 2023 (raw signal deep learning), Jason 2023 (ML in ME/CFS)
**Falsifiable Prediction:** Home monitoring system with real-time coupling feedback will improve SleepFM decoupling scores by >20% over 4 weeks compared to sham monitoring in ME/CFS.
**Tier:** 1

---

## Idea 20: Severity-Stratified Multi-Modal Intervention Protocol
**Category:** Combinations + access
**Certainty:** 0.60
**Mechanistic Rationale:** Different decoupling phenotypes require targeted interventions. Severity-stratified protocol: mild (slow breathing + timing optimization), moderate (add tVNS + temperature modulation), severe (add pharmacologic + intensive monitoring).
**Evidence Link:** Thapa 2026 (decoupling predicts 130+ conditions), Idea 9 (decoupling-based subtyping), Ideas 10-18 (individual interventions)
**Falsifiable Prediction:** Severity-stratified protocol will improve SleepFM decoupling scores by >40% in moderate-severe ME/CFS and reduce PEM frequency by >50% over 12 weeks.
**Tier:** 1

---

## Idea 21: Caregiver-Implemented Monitoring for Severe ME/CFS
**Category:** Combinations + access
**Certainty:** 0.55
**Mechanistic Rationale:** Severe ME/CFS patients (bedbound) cannot self-monitor. Caregiver-implemented simplified monitoring (respiratory rate, pulse oximetry, motion) can approximate decoupling trends and guide medication timing.
**Evidence Link:** Jason 2023 (prevalence estimates include severe cases), Newton 2007 (autonomic correlates with fatigue), Thapa 2026 (decoupling as disease marker)
**Falsifiable Prediction:** Caregiver monitoring guiding medication timing (based on respiratory-cardiac coupling trends) will improve subjective sleep refreshment by >30% in severe ME/CFS.
**Tier:** 2

---

## Idea 22: Multi-Oscillator Phase Lock Model for Decoupling
**Category:** Mathematical model extensions
**Certainty:** 0.65
**Mechanistic Rationale:** Extending Kuramoto model to multiple coupled oscillators (EEG slow waves, HRV, respiration, NE oscillations) with coupling strength parameters that can be reduced in ME/CFS. Will quantify decoupling and predict intervention effects.
**Evidence Link:** Fultz 2019 (sequential coupling cascade), Hauglund 2025 (LC-NE oscillations), Thapa 2026 (cross-modal decoupling)
**Falsifiable Prediction:** Kuramoto model with reduced coupling constants will reproduce SleepFM decoupling patterns and predict that >20% restoration of any single coupling pathway improves overall synchrony by >15%.
**Tier:** 1

---

## Idea 23: Extended Glymphatic DAG with Decoupling Variables
**Category:** Mathematical model extensions
**Certainty:** 0.60
**Mechanistic Rationale:** Current glymphatic DAG includes neural, vascular, CSF variables. Add decoupling variables (coupling strength between neural-vascular, vascular-CSF, autonomic-neural) that modulate edge weights. Enables simulation of decoupling effects on clearance.
**Evidence Link:** Section @sec:ch15-glymphatic (existing DAG), Fultz 2019 (neurovascular coupling cascade), Hauglund 2025 (LC-NE coupling)
**Falsifiable Prediction:** DAG simulations will predict that 30% reduction in neural-vascular coupling reduces glymphatic clearance rate by >50%, matching DTI-ALPS reductions in ME/CFS.
**Tier:** 1

---

## Idea 24: Bayesian Coupling Inference from Partial Data
**Category:** Mathematical model extensions
**Certainty:** 0.55
**Mechanistic Rationale:** Full PSG not always available. Bayesian model can infer coupling strength from partial modalities (e.g., ECG + respiration alone) using SleepFM prior distributions. Enables home monitoring with reduced hardware.
**Evidence Link:** Thapa 2026 (leave-one-out contrastive learning), Tsinalis 2023 (multi-modal outperforms single), Idea 19 (home monitoring)
**Falsifiable Prediction:** Bayesian inference from 2-modality data (ECG + respiration) will estimate full 5-modality decoupling scores with R² >0.75 in ME/CFS.
**Tier:** 2

---

## Idea 25: Long COVID as Decoupling Phenotype Bridge
**Category:** Cross-disease bridges
**Certainty:** 0.65
**Mechanistic Rationale:** Long COVID brain fog shows glymphatic dysfunction (Tang 2025, Chaganti 2025) similar to ME/CFS. SleepFM can identify shared decoupling signatures, suggesting common post-viral pathophysiology and treatment insights.
**Evidence Link:** Davis 2021 (post-viral pathophysiology shared), Tang 2025 (DTI-ALPS reduced in post-COVID sleep disorder), Chaganti 2025 (glymphatic dysfunction in Long COVID brain fog), Thapa 2026 (decoupling predicts disease)
**Falsifiable Prediction:** SleepFM will identify identical decoupling signatures in Long COVID brain fog and post-infectious ME/CFS with >80% overlap, distinct from healthy controls.
**Tier:** 1

---

## Idea 26: Fibromyalgia Alpha-Delta Coupling Bridge
**Category:** Cross-disease bridges
**Certainty:** 0.70
**Mechanistic Rationale:** Fibromyalgia (30-70% comorbid with ME/CFS) shows alpha-delta sleep (Moldofsky 1975). SleepFM can quantify alpha-delta decoupling magnitude in both conditions, testing whether this represents shared thalamocortical dysfunction.
**Evidence Link:** Moldofsky 1975 (alpha-delta sleep in fibromyalgia), Mohamed 2023 (ME/CFS-fibromyalgia comorbidity), Section @sec:thalamic-calcium-sleep
**Falsifiable Prediction:** SleepFM alpha-delta decoupling scores will correlate with pain severity in both ME/CFS and fibromyalgia (r >0.6), with similar decoupling patterns across conditions.
**Tier:** 1

---

## Idea 27: POTS Cardio-Autonomic Decoupling Bridge
**Category:** Cross-disease bridges
**Certainty:** 0.60
**Mechanistic Rationale:** POTS (frequently comorbid with ME/CFS) involves cardio-autonomic dysfunction. SleepFM can detect sleep-specific cardio-autonomic decoupling that may underlie shared fatigue mechanisms.
**Evidence Link:** Newton 2007 (orthostatic intolerance in ME/CFS), Ruhrländer 2025 (orexin-autonomic coupling in Long COVID POTS), Thapa 2026 (heart-brain decoupling)
**Falsifiable Prediction:** ME/CFS patients with comorbid POTS will show SleepFM cardio-autonomic decoupling scores >2 SD higher than ME/CFS without POTS, predicting orthostatic symptom severity.
**Tier:** 2

---

## Idea 28: Neurodegenerative Disease Sleep-Autonomic Decoupling Bridge
**Category:** Cross-disease bridges
**Certainty:** 0.50
**Mechanistic Rationale:** Alzheimer's and Parkinson's show sleep-autonomic decoupling and glymphatic dysfunction. SleepFM can test whether ME/CFS shows subclinical decoupling patterns similar to early neurodegeneration, explaining long-term risk.
**Evidence Link:** Hauglund 2025 (impaired glymphatic clearance → waste accumulation), Section @sec:ch15-glymphatic (long-term neurodegeneration risk), Thapa 2026 (decoupling predicts 130+ conditions)
**Falsifiable Prediction:** ME/CFS patients will show SleepFM decoupling patterns resembling early Alzheimer's (reduced EEG-ECG coherence) at 20% of the severity seen in mild cognitive impairment.
**Tier:** 2

---

## Idea 29: SleepFM as Objective ME/CFS Diagnostic Biomarker
**Category:** Diagnostic/biomarker ideas
**Certainty:** 0.75
**Mechanistic Rationale:** ME/CFS lacks objective diagnostic. SleepFM decoupling scores provide quantitative, cross-modal biomarker that reflects pathophysiology (autonomic, thalamic, glymphatic) rather than symptoms alone. Addresses diagnostic delay (~5 years).
**Evidence Link:** Thapa 2026 (decoupling predicts disease), Jason 2023 (ML identifies ME/CFS cases), Fonseca 2024 (ML classification feasibility), Mohamed 2023 (unrefreshing sleep despite near-normal PSG)
**Falsifiable Prediction:** SleepFM decoupling score threshold will distinguish ME/CFS from healthy controls with sensitivity >0.85 and specificity >0.90, independent of symptom questionnaires.
**Tier:** 1

---

## Idea 30: Decoupling-Based PEM Prediction Biomarker
**Category:** Diagnostic/biomarker ideas
**Certainty:** 0.60
**Mechanistic Rationale:** PEM is ME/CFS hallmark but unpredictable. SleepFM may detect pre-PEM decoupling patterns (worsening coupling) that predict upcoming PEM, enabling preemptive activity modification.
**Evidence Link:** Thapa 2026 (decoupling predicts future disease), Hauglund 2025 (glymphatic failure cycle), Mohamed 2023 (unrefreshing sleep correlates with symptoms)
**Falsifiable Prediction:** SleepFM decoupling score worsening by >25% over 3 nights will predict PEM onset within 48 hours with positive predictive value >0.75.
**Tier:** 1

---

## Idea 31: Coupling-Based Treatment Response Predictor
**Category:** Diagnostic/biomarker ideas
**Certainty:** 0.55
**Mechanistic Rationale:** Different ME/CFS treatments (e.g., autonomic modulators, sleep medications, pacing) may target different coupling axes. Baseline decoupling phenotype can predict which patients respond to which treatments.
**Evidence Link:** Thapa 2026 (decoupling detects diverse conditions), Idea 9 (decoupling-based subtyping), Ideas 10-18 (targeted interventions)
**Falsifiable Prediction:** Baseline SleepFM decoupling phenotype will predict treatment response with >70% accuracy for autonomic modulators vs. sleep medications vs. behavioral interventions.
**Tier:** 2

---

## Summary Statistics
| Category | Tier 1 | Tier 2 | Tier 3 | Total |
|----------|--------|--------|--------|-------|
| Novel hypotheses | 3 | 2 | 0 | 5 |
| Research directions | 3 | 1 | 0 | 4 |
| Drug/medication | 0 | 3 | 1 | 4 |
| Supplement/nutraceutical | 0 | 2 | 0 | 2 |
| Non-pharmacological | 0 | 3 | 0 | 3 |
| Combinations + access | 2 | 1 | 0 | 3 |
| Mathematical model | 2 | 1 | 0 | 3 |
| Cross-disease bridges | 2 | 2 | 0 | 4 |
| Diagnostic/biomarker | 2 | 1 | 0 | 3 |
| **Total** | 14 | 16 | 1 | 31 |

---

**Top 3 Ideas:**

1. **Idea 1: The Decoupled Wakefulness Hypothesis** (Tier 1) — Foundational hypothesis redefining ME/CFS as systemic synchronization failure, directly testable with SleepFM metrics, high mechanistic coherence with existing literature.

2. **Idea 6: SleepFM Validation in ME/CFS Cohort Study** (Tier 1) — Essential empirical validation step, high feasibility given existing datasets (Mohamed 2023 n=801), potential to establish first objective diagnostic biomarker.

3. **Idea 22: Multi-Oscillator Phase Lock Model for Decoupling** (Tier 1) — Extends existing mathematical models with rigorous formalism, enables quantitative predictions, bridges AI finding with mechanistic modeling framework.