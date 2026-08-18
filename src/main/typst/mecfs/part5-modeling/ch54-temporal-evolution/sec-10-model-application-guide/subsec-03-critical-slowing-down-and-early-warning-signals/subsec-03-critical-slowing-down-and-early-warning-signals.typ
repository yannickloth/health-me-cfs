#import "../../../../shared/environments.typ": *

=== Critical Slowing Down and Early Warning Signals

*Measurements required.*
Continuous physiological time series from wearables: heart rate (beat-to-beat for HRV), accelerometry (step count, activity patterns), skin temperature. Daily symptom diary: fatigue, cognitive function, pain (0--10 scales). Minimum monitoring duration: 4 weeks for autocorrelation estimation, 3+ months for oscillation period detection. Sampling: heart rate at $gt.eq 1$ Hz; activity at 1-minute epochs; symptoms at least daily.

*How to use.*
Compute rolling-window statistics from the wearable time series: (1) lag-1 autocorrelation $rho_1$ of detrended resting heart rate (window = 7 days, step = 1 day); (2) variance of daily step count (window = 14 days); (3) spectral power ratio (low-frequency to high-frequency HRV). Rising $rho_1$ and variance signal approach to a bifurcation (crash or severity transition). Declining $rho_1$ and variance during recovery signal retreat from the bifurcation. Threshold alerts: if $rho_1$ exceeds 0.85 (up from a patient-specific baseline of $~$0.5--0.7), issue a crash warning.

*Worked example.*
A patient wears a heart rate monitor and logs daily symptoms for 8 weeks. During weeks 1--5, resting HR autocorrelation is $rho_1 = 0.62 plus.minus 0.05$ and step-count variance is $1200 plus.minus 200 "steps"^2 / "day"^2$. During week 6, $rho_1$ rises to $0.78$ and variance increases to $2100 "steps"^2 / "day"^2$. The model flags this as an early warning signal. The patient reduces activity by 30%. By week 7, $rho_1$ returns to $0.65$ and no PEM crash occurs. Without the warning, the patient's planned weekend activity would likely have exceeded the energy envelope, triggering a multi-day crash.

*Inter-model dependencies.*
Early warning signal detection requires the bifurcation structure computed in Chapter @ch:integrated-systems (which eigenvalues approach zero, and at what parameter values). The autocorrelation predictions derive from the Jacobian eigenvalues of the full integrated model. Crash prediction feeds into the energy ratchet model: each prevented crash is a prevented ratchet step, directly slowing disease progression.

*Falsification criteria.*
The early warning signal model is falsified if: (1) prospective monitoring shows no increase in autocorrelation or variance in the 24--72 hours before documented PEM crashes (tested in $gt.eq 20$ patients over $gt.eq 50$ crash events); (2) the statistical signatures are indistinguishable from random fluctuation (receiver operating characteristic AUC $< 0.6$ for crash prediction); (3) the predicted 24--48 hour warning timescale is wrong by more than an order of magnitude.

*Clinical implications.*
Early warning signals enable _preventive pacing_: reducing activity before rather than after a crash. The model predicts that this is disease-modifying (each prevented crash preserves the ratchet ceiling $B_max$). Implementation requires: (a) a wearable device with continuous HR monitoring, (b) software computing rolling autocorrelation and variance, (c) patient-facing alerts calibrated to individual baselines. The clinical trial design is straightforward: randomize crash-prone patients to alert vs. no-alert groups and compare PEM frequency, severity, and functional trajectory over 6--12 months.

