#import "../../../../shared/environments.typ": *

=== Biomarker-Based Treatment Prediction
<sec:biomarker-prediction>

The integrated model (Chapter @ch:integrated-systems) maps from biological parameters to treatment response. If a patient's parameter values can be estimated from biomarker measurements, the model predicts which treatments will be most effective for that individual. The logic proceeds in three steps:

+ *Parameter estimation*: Fit the model to the patient's available data (metabolomics, cytokine panel, CPET, HRV, cortisol rhythm) to estimate the patient-specific parameter vector $hat(bold(theta))_"patient"$
+ *Intervention simulation*: For each candidate treatment, modify the appropriate parameters (e.g., CoQ10 increases $["UQ"]_"total"$, LDN modifies cytokine production rates) and simulate the model forward to predict symptom trajectories
+ *Treatment ranking*: Rank treatments by predicted symptom improvement, accounting for parameter uncertainty through Bayesian credible intervals

This approach would enable rational treatment selection based on the patient's dominant pathophysiological mechanism. A patient with primarily metabolic dysfunction (low $alpha_"CI"$, near-normal immune markers) would be directed toward mitochondrial support, while a patient with dominant immune activation (elevated cytokines, near-normal CPET) would be directed toward immunomodulation.

