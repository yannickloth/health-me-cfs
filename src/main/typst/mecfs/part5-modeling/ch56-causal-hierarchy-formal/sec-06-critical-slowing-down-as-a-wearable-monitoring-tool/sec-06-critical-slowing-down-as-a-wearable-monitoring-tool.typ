#import "../../../shared/environments.typ": *

== Critical Slowing Down as a Wearable Monitoring Tool
<sec:csd-monitoring>

Prediction 4 from the dynamical systems analysis---that critical slowing down (CSD) occurs before transitions between disease states---has immediate practical application. CSD manifests as increased variance and autocorrelation in fluctuating observables as a system approaches a tipping point @Scheffer2009early @Scheffer2012anticipating. In physiological systems, CSD has been detected in HRV before cardiac arrhythmia transitions @Olde2021earlywarning and in mood time series before depressive episodes @Wichers2016CSD @vandeLeemput2014critical.

For ME/CFS, the relevant observable is HRV (heart rate variability), which reflects autonomic nervous system regulation and is continuously measurable with consumer wearables. Escorihuela et al.\ demonstrated that reduced HRV predicts fatigue severity in ME/CFS @Escorihuela2020hrv, establishing HRV as a validated correlate of disease state in this population. The proposed monitoring system:

*Algorithm design.*

    + Compute rolling 7-day HRV variance ($sigma^2_"HRV"$) and lag-1 autocorrelation ($r_1$).
    + Alert when: $sigma^2_"HRV"$ increases $> 2 sigma$ above personal baseline for $> 3$ consecutive days _and_ $r_1 > 0.7$.
    + Discriminate direction using concurrent context: HRV destabilization during treatment ramp-up $arrow.r$ approaching recovery transition; HRV destabilization during activity increase $arrow.r$ approaching crash.
    + Required hardware: any HRV-capable wearable (Oura, Garmin, Apple Watch with appropriate sampling rate).

The key scientific question is whether the CSD signal is detectable above noise in real patient data---whether the theoretical prediction survives contact with the messy reality of free-living HRV measurement.

#include "open-questions/oq-csd-monitoring.typ"

// =============================================================================
// SECTION 7: ATTRACTOR MIGRATION
// =============================================================================

