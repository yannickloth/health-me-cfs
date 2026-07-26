#import "../../../shared/environments.typ": *

#speculation(title: [SleepFM as a Candidate ME/CFS Diagnostic Biomarker Platform])[
The architecture and training scale of SleepFM make it a plausible candidate platform for ME/CFS biomarker development, though this application has not been attempted. Specific arguments:

    - *Unsupervised feature discovery:* The leave-one-out contrastive learning approach discovers patterns without requiring manual feature engineering --- potentially identifying ME/CFS-specific decoupling signatures that conventional PSG scoring misses (Section @sec:ch15-cross-modal-decoupling).

    - *Multi-modal integration:* ME/CFS pathology crosses systems (autonomic, metabolic, immune, neurological). A model that natively integrates EEG, ECG, EMG, and respiratory signals is matched to the multi-system nature of the disease.

    - *Normative reference:* Trained on 65,000 individuals spanning ages 2--96, the model provides a large normative baseline against which ME/CFS deviation can be measured. The Stanford Sleep Medicine Center cohort (35,000 patients, 1999--2024), which formed part of the training data, includes decades of follow-up health records --- a framework for temporal validation @Thapa2026sleepfm.

    - *Scalability:* PSG is a standard clinical procedure with consistent protocols across centres. A validated sleep-based biomarker would be deployable in any accredited sleep laboratory.

    - *Precedent in related conditions:* SleepFM's strong predictions for dementia (C-index 0.85) and Parkinson's (C-index 0.89) demonstrate that sleep physiology carries diagnostic information for neurological conditions --- a domain overlapping with ME/CFS cognitive and autonomic symptoms.

*Certainty: 0.25.* The underlying model is validated (Nature Medicine, C-index $>$ 0.80 for multiple conditions), but zero ME/CFS-specific data exist. Translating SleepFM to ME/CFS diagnosis would require: (a) fine-tuning on labelled ME/CFS PSG data; (b) independent validation in a separate cohort; (c) demonstration of adequate sensitivity and specificity against clinically relevant comparators (healthy, fibromyalgia, Long COVID, idiopathic hypersomnia, major depression).

*Limitations:* The model architecture and weights are not publicly available, limiting independent replication. PSG is expensive and requires overnight laboratory attendance, barriers for severe ME/CFS patients. The model's feature interpretability is limited --- it can predict disease but cannot explain which specific physiological patterns drove the prediction, a limitation for clinical adoption. The training population was clinical PSG referrals, not general-population screening, introducing potential spectrum bias. (Not yet replicated in independent cohorts.)
] <spec:sleepfm-biomarker>
