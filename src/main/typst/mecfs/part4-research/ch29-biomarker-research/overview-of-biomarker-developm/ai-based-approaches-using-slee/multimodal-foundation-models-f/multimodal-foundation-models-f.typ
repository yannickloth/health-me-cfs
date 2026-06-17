#import "../../../../../shared/environments.typ": *

==== Multimodal Foundation Models for Sleep-Based Disease Prediction
<sec:sleepfm-biomarker>

SleepFM (Thapa et al., 2026), published in _Nature Medicine_, is the first large-scale multimodal sleep foundation model trained on 585,000+ hours of PSG data from 65,000 participants @Thapa2026sleepfm. Using a novel leave-one-out contrastive learning approach, the model predicts the future onset of 130+ health conditions from one night of sleep data, achieving C-indices $>$ 0.80 for Parkinson's disease (0.89), dementia (0.85), hypertensive heart disease (0.84), myocardial infarction (0.81), prostate cancer (0.89), breast cancer (0.87), and all-cause mortality (0.84).
The model's architectural innovation is potentially relevant to ME/CFS biomarker strategy, pending application to ME/CFS data. By training to reconstruct a hidden modality from the remaining signals, SleepFM learns a latent representation of _physiological coupling integrity_ --- how well brain, heart, muscle, and respiratory systems coordinate. The key finding is that _decoupling_ between systems (e.g., "a brain that looks asleep but a heart that looks awake") is a stronger disease predictor than any single modality @Thapa2026sleepfm.

