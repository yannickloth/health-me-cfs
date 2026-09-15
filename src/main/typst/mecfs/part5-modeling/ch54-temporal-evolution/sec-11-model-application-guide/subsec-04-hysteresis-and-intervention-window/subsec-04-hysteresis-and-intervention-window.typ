#import "../../../../shared/environments.typ": *

=== Hysteresis and Intervention Window

*Measurements required.*
Disease duration (time since onset). Epigenetic markers: global DNA methylation (LINE-1 assay), gene-specific methylation at ME/CFS-associated loci (e.g., glucocorticoid receptor NR3C1, immune regulatory genes @deVega2021dna_methylation). Cytokine levels for estimating methylation rate parameter $k_upright("DNMT") dot.op overline(C)_upright("pro")$. Functional capacity trajectory (is the patient stable, improving, or worsening?).

*How to use.*
Estimate the intervention window $tau_upright("window")$ from Equation @eq:intervention-window using the patient's mean pro-inflammatory cytokine level. Compare disease duration to $tau_upright("window")$: if duration $< tau_upright("window")$, the patient is within the intervention window and recovery requires only crossing the structural hysteresis gap $Delta alpha_upright("CI")$. If duration $>> tau_upright("window")$, epigenetic consolidation has widened the hysteresis loop, and treatment must address both state-space displacement and epigenetic reprogramming.

*Worked example.*
A patient develops ME/CFS after EBV reactivation. At month 4 post-onset, mean IL-6 is $6$ pg/mL. Using $k_upright("DNMT") = 0.015 "month"^(-1)$ per pg/mL, the model estimates $tau_upright("window") = ln 2 \/ (0.015 times 6) approx 7.7$ months. The patient is within the intervention window. The structural hysteresis width $Delta alpha_upright("CI") = 0.08$ means Complex I activity must be restored 8% above onset threshold. A mitochondrial support protocol (CoQ10 300 mg/day, D-ribose, pacing) is initiated. At month 3 of treatment (month 7 post-onset, still within the window), the patient shows meaningful improvement with ATP synthesis rising 12% from nadir. Had treatment been delayed to month 18 post-onset ($> 2 tau_upright("window")$), the model predicts that epigenetic methylation would have approximately doubled the effective hysteresis width, requiring more aggressive and prolonged intervention for equivalent improvement.

*Inter-model dependencies.*
The hysteresis model requires the bifurcation diagram from Chapter @ch:integrated-systems for structural hysteresis width, the epigenetic dynamics model (Section @sec:epigenetic-dynamics in Chapter @ch:integrated-systems) for parametric hysteresis evolution, and cytokine data from the immune models (Chapter @ch:immune-system-models) for methylation rate estimation. It informs treatment response modeling (Section @sec:treatment-response-modeling) by predicting treatment magnitude requirements as a function of disease duration.

*Falsification criteria.*
The intervention window model is falsified if: (1) treatment response does not correlate with disease duration---i.e., patients treated at 5 years respond as well as those treated at 5 months, controlling for severity; (2) ME/CFS-associated epigenetic changes do not show progressive consolidation over the first 1--2 years (measured in a longitudinal methylation study); (3) the predicted window duration ($tau_upright("window") ~ 3$--$12$ months) is inconsistent with clinical data on early vs. late treatment efficacy.

*Clinical implications.*
The intervention window model provides the strongest model-derived argument for early diagnosis and treatment. It predicts that each month of delay narrows the treatment response, not because the patient is "getting used to being sick" but because epigenetic consolidation physically widens the barrier to recovery. For clinicians: prioritize early, aggressive treatment within the first year post-onset. For health systems: reduce diagnostic delay @CastroMarrero2022prognosis as a disease-modifying intervention at the population level. For patients: the model quantifies why "wait and see" is not a neutral strategy.

