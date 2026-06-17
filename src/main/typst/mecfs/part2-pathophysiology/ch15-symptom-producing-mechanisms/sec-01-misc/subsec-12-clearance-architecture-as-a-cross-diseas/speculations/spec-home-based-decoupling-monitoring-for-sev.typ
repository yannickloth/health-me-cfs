#import "../../../../../shared/environments.typ": *

#speculation(title: [Home-Based Decoupling Monitoring for Severe Patients])[
Consumer-grade wearables (chest-strap ECG monitors, consumer EEG headbands, pulse oximeters) can approximate some SleepFM decoupling metrics at home. A simplified coupling index derived from ECG (R-R interval variability at $<$0.1 Hz during estimated NREM sleep) and respiratory rate variability may serve as a proxy for full PSG-based decoupling scores. For severe ME/CFS patients (bedbound, unable to attend sleep laboratories), caregiver-administered nocturnal recordings using a single-lead ECG patch and respiratory band could enable coupling-trend monitoring to guide treatment timing (e.g., detecting worsening coupling → adjusting medication schedule, increasing rest). The Bayesian coupling inference model (Section @sec:ch15-math-decoupling) may enable estimation of full decoupling scores from reduced-modality data.

*Certainty: 0.20.* The concept of reduced-modality coupling inference is plausible given SleepFM's leave-one-out architecture, but has not been validated for home use, consumer-grade hardware, or severe ME/CFS populations. Signal quality and artefact rejection from movement are significant practical barriers in bedbound patients with positional restrictions.

*Falsifiable prediction:* A home ECG-based coupling index will correlate with laboratory PSG-based decoupling scores with $r > 0.70$ and will detect PEM-predictive worsening trends with $>$72 hours lead time.
] <spec:ch15-home-coupling-monitoring>
