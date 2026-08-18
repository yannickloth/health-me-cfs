#import "../../../../shared/environments.typ": *

=== Oscillation Analysis and Stochastic Resonance

*Measurements required.*
Daily symptom scores (fatigue, pain, cognitive function) for $gt.eq 3$ months (to capture multiple oscillation periods). Weekly cytokine panel (TNF-$alpha$, IL-6, IL-10) and morning cortisol for at least 8 weeks. Continuous wearable data (HR, activity) for spectral analysis. Menstrual cycle tracking for female patients (to separate endogenous oscillations from hormonal cycling).

*How to use.*
Apply spectral analysis (Lomb--Scargle periodogram for unevenly sampled data, wavelet transform for non-stationary signals) to the symptom and biomarker time series. Identify dominant spectral peaks and compare their periods to the model prediction of $T_upright("osc") approx 2$--$6$ weeks. If a peak is present, estimate loop gain from the period (Equation @eq:predicted-period). Track period changes over time to assess disease trajectory: shortening period signals increasing instability; lengthening period signals stabilisation.

*Worked example.*
A patient records daily fatigue scores for 6 months. Lomb--Scargle analysis reveals a spectral peak at period $T = 3.2$ weeks ($p < 0.01$ vs. red noise null). Using Equation @eq:predicted-period with $tau_upright("cortisol") = 1$ day and $tau_upright("immune") = 10$ days, the estimated loop gain is $upright("gain")_upright("loop") approx 4 pi^2 tau_upright("cortisol") tau_upright("immune") \/ T^2 approx 0.78$. After 3 months of LDN therapy (which modulates immune feedback gain), repeat analysis shows the period has lengthened to $T = 4.8$ weeks, corresponding to reduced loop gain of $0.35$---a quantitative measure of treatment effect on the underlying dynamical structure.

*Inter-model dependencies.*
The oscillation analysis requires the Jacobian eigenvalues from the full integrated model (Chapter @ch:integrated-systems), cortisol dynamics from the HPA axis model (Chapter @ch:neuroendocrine-models), and immune feedback timescales from the cytokine network model (Chapter @ch:immune-system-models). The stochastic resonance analysis additionally requires the bistability model for attractor depth $Delta U$ and the noise characterisation from daily physiological variability.

*Falsification criteria.*
The Hopf bifurcation oscillation model is falsified if: (1) longitudinal symptom tracking in $gt.eq 50$ ME/CFS patients (daily data, $gt.eq 6$ months) reveals no spectral peaks in the 2--6 week range above red noise; (2) observed oscillations correlate entirely with identifiable exogenous triggers (infections, menstrual cycle, activity patterns) with no residual endogenous component; (3) treatments that reduce immune feedback gain (as measured by cytokine response to standardised challenge) do not alter oscillation period. The stochastic resonance prediction is falsified if spontaneous recovery rates show no relationship to disease severity (attractor depth) after controlling for disease duration.

*Clinical implications.*
If validated, oscillation period becomes a non-invasive biomarker of disease dynamics obtainable from symptom diaries and wearables alone. Clinicians could track treatment efficacy through period changes rather than waiting months for functional capacity improvement. The stochastic resonance concept, while speculative, suggests that some degree of controlled physiological variability (not strict rest, not aggressive exercise) may be optimal for patients near the recovery threshold---providing theoretical support for graded activity approaches _only for patients near the separatrix_, while predicting harm for patients deep in the disease attractor. This patient-specific prediction distinguishes the model-based approach from one-size-fits-all exercise recommendations.

