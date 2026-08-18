#import "../../../../shared/environments.typ": *

=== Study Design

*Design:* Retrospective case-control analysis of existing polysomnography datasets, followed by prospective validation.
*Phase 1 — Retrospective Discovery:*
- *Cohort:* Aggregate existing ME/CFS PSG datasets: Mohamed et al. 2023 meta-analysis dataset (24 studies, n=801 adults) @Mohamed2023sleep, Bateman Horne Center clinical PSG archive, NIH deep phenotyping study PSG subset @Walitt2024NIH, and the Stanford Sleep Medicine Center cohort (35,000 patients, 1999--2024, with linked electronic health records) @Thapa2026sleepfm.
- *Analysis:* Apply SleepFM or a comparable leave-one-out contrastive learning architecture to raw PSG signals. Extract multimodal reconstruction error (decoupling score) for each recording. Compare decoupling scores between ME/CFS patients and age-/sex-matched controls.
- *Primary endpoint:* AUC for ME/CFS vs. healthy control discrimination using decoupling score alone, independent of standard sleep staging metrics.
- *Secondary endpoints:* (a) Decoupling score correlation with symptom severity (fatigue, unrefreshing sleep, cognitive dysfunction). (b) Comparison of decoupling patterns across ME/CFS subtypes (sleep-predominant, brain fog-predominant, PEM-predominant). (c) Decoupling scores in ME/CFS vs. fibromyalgia vs. Long COVID brain fog to assess disease specificity.
*Phase 2 — Prospective Validation:*
- *Cohort:* De novo recruitment of 100 ME/CFS (Fukuda + CCC criteria), 100 age-/sex-matched healthy controls, 50 fibromyalgia (ACR criteria), 50 Long COVID with brain fog, and 50 idiopathic hypersomnia.
- *Procedure:* One-night attended PSG with standard clinical montage (EEG, EOG, EMG, ECG, respiratory inductance plethysmography, pulse oximetry). Morning symptom questionnaires. SleepFM decoupling analysis.
- *Primary endpoint:* Sensitivity >0.85, specificity >0.90 for ME/CFS vs healthy controls using a pre-registered decoupling threshold from Phase 1.
- *Secondary endpoints:* Subtype classification accuracy. Treatment-response prediction (baseline decoupling score predicts response to 4-week trazodone 25--50 mg at bedtime).
*Phase 3 — Longitudinal PEM Prediction:*
- *Subset:* 50 ME/CFS patients from Phase 2 undergo 7-night home PSG (simplified montage: EEG lead, ECG patch, respiratory band, pulse oximeter) with daily symptom diaries and activity monitoring.
- *Primary endpoint:* Within-subject worsening of decoupling score (>25% increase from individual baseline over 3 nights) predicts PEM onset within 48 hours with positive predictive value >0.75.
- *Secondary endpoint:* Day 2 post-CPET decoupling score vs. Day 1 pre-CPET score.


