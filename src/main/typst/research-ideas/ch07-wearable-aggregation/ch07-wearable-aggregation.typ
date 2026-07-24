#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Chapter 7: Patient-Generated Physiology Map
// Type: Study Design / Patient-Driven Data Method
// =============================================================================

= The Patient-Generated Physiology Map
<ch:wearable-aggregation>

#chapter-abstract[
Millions of ME/CFS patients already track heart rate, HRV, step count, sleep stages, and symptom scores with consumer wearables. Aggregating 10,000+ patient-years of this data into a population-level physiology map would reveal: the population distribution of crash latency, which HRV features precede a crash, what sleep architecture changes predict next-day function, and what recovery trajectories look like. This requires no new hardware, no clinic visits, no IRB for interventional trials — only data science on existing streams.
]

== Motivation

The paper discusses wearables in Ch47 §6 (critical slowing down as a wearable monitoring tool for detecting approach to a tipping point) and mentions HRV-guided pacing in Ch26 and as a proposed study (Ch38). But these treatments are conceptual or small-n. The missing piece is scale: individual patient data contains noise; population-level data reveals signal.

A single patient's HRV data is ambiguous — is today's low HRV a crash precursor or a random fluctuation? Aggregate HRV data from 1,000 patients who all crashed on the same day shows, with statistical power, that a specific HRV pattern preceded the crash in 80% of cases. That pattern becomes a validated crash predictor usable by any individual patient.

== The Aggregation Architecture

=== Data Types

Consumer wearables currently capture:

*Cardiac.* Resting HR, HRV (RMSSD, SDNN, LF/HF ratio from supported devices), HR during sleep, HR response to standing (approximating orthostatic challenge).

*Activity.* Step count, active energy expenditure, stand hours, exercise minutes.

*Sleep.* Total sleep time, sleep stages (light/deep/REM), wake after sleep onset, sleep efficiency, sleep regularity (inter-day variability in sleep timing).

*Oxygenation.* SpO2 during sleep, VO2max estimate (Apple Watch, Garmin).

*Temperature.* Wrist skin temperature (Apple Watch, Oura), deviation from baseline.

=== Patient-Reported Data

Voluntary symptom logs (synchronized to wearable timestamps):

- PEM events: onset time, trigger type (physical/cognitive/emotional/orthostatic), severity (0–10)
- Crash duration: time to return to baseline
- Daily function score: 0–10 scale or adapted Bell Disability Scale
- Energy envelope crossings: perceived overexertion events (0–10)
- Medication timing: drug, dose, time administered

=== Population-Level Questions

The aggregated dataset can answer questions that individual data cannot:

*Crash prediction.* What combination of HRV decline, HR increase, sleep disruption, and temperature change optimally predicts an impending crash, and with what lead time? Train a predictive model (XGBoost or LSTM) on the aggregated dataset; validate on held-out patients.

*Crash latency distribution.* Across the population, what is the distribution of latency from overexertion to PEM onset? Does the distribution suggest discrete subtypes (immediate vs delayed) or a continuum? Does latency correlate with severity, duration, or trigger type?

*Recovery dynamics.* After a crash, how does HRV recover? Is it stepwise, linear, or exponential? Does recovery slope predict future crash susceptibility? Are there patients who never fully recover to their pre-crash baseline (detectable via a persistent HRV shift)?

*Energy envelope quantification.* Using HRV and resting HR as continuous proxies for physiological stress, what exertion level (step count, active energy) is associated with next-day deterioration? This empirically derives the energy envelope from wearable data rather than relying on patient report alone.

*Sleep as mediator.* Does poor sleep tonight predict a bad day tomorrow, controlling for yesterday's exertion? Does good sleep buffer against overexertion effects? Is sleep quality a mediator or a confound?

*Treatment effects at scale.* For patients who start a new medication or supplement, does the wearable data show a detectable shift in resting HR, HRV, sleep architecture, or crash frequency? Even if individual data is noisy, population-level analysis of treatment starts (self-reported by patients) can detect efficacy signals.

*Disease trajectories.* What is the 1-year, 2-year, 5-year trajectory of resting HR, HRV, and activity levels? Do they plateau, decline, improve, or follow individual patterns? Does early resting HR elevation predict faster progression?

=== Privacy and Ethics Architecture

The aggregation must be privacy-preserving by design:

1. Data is de-identified before transmission (device ID replaced with study ID, timestamps shifted by random offset within ±2 hours, location data excluded).

2. Patient retains data ownership; contribution is opt-in with explicit consent for each data type.

3. Aggregate results only — no individual-level data is published or shared.

4. Withdrawal mechanism: patients can delete their data at any time.

5. IRB approval for secondary use of patient-contributed data.

#proposal[
*Implementation.* A web platform or mobile app that connects to Apple Health, Google Fit, Fitbit, Garmin, and Oura APIs via existing SDKs. Patients authorize read access; the platform periodically syncs data to a de-identified research database. A companion symptom logging interface captures PEM events, function scores, and medication changes. The analysis pipeline is automated: nightly aggregation and model updates.

*Minimum viable product.* Start with Apple Health data (largest user base, richest HRV data). 500 patients × 6 months = 3,000 patient-months, sufficient for initial crash prediction models and latency distribution estimation. Scale to 10,000 patients over 2 years.

*Outputs.* (1) Real-time crash risk score for participating patients (returned via the app). (2) Population-level reports on crash dynamics, recovery trajectories, and treatment effects. (3) Validated digital biomarkers for regulatory submission. (4) Open-access de-identified dataset for academic research.
]

== Feasibility

*Cost.* Low — software development (approximately USD 100,000–200,000 for the platform), server infrastructure (approximately USD 2,000/month at scale), data science team (2–3 FTE). Total approximately USD 300,000–500,000/year.

*Patient recruitment.* The ME/CFS community is already highly engaged with self-tracking. Social media and patient organization partnerships can reach the recruitment target within months. The key barrier is not recruitment motivation but technical friction (connecting devices, maintaining sync).

*Data quality.* Consumer wearables have known limitations: HRV accuracy varies by device and activity state; sleep stage classification is imperfect (60–80% agreement with PSG depending on the device); energy expenditure estimates are approximations. Mitigation: use relative changes within-device rather than absolute values; validate against clinical-grade devices for a subset of patients; focus on features where consumer devices have been validated (resting HR, overnight HRV).

*Validation.* Compare the aggregated model's crash predictions against prospective patient logs. Compare wearable-derived sleep stages against polysomnography for a validation subset (n = 50). Compare wearable-derived HRV against clinical Holter for a validation subset.

== Relationship to Existing Content

This proposal operationalizes the critical slowing down concept (Ch47 §6) at scale, extends the energy envelope/pacing concept (Ch26) with empirical derivation from wearable data, and provides the raw data for the HRV-guided pacing trial (Ch38 §8) and the sports medicine periodization protocol (Ch38 §9).

== Limitations

#limitation[
*Selection bias.* Wearable users are not representative of the full ME/CFS population. Severe patients may be unable to wear devices consistently. Mild patients may not track because they don't perceive sufficient need. The sample will be biased toward moderate-severity, tech-literate patients.

*Causal inference limitations.* Wearable data is observational. Detecting that low HRV precedes a crash does not prove that low HRV causes the crash — it could be a marker of a shared upstream cause (e.g., overnight immune activation reduces HRV and also triggers the next-day crash). Causal inference requires interventional trials.

*Device heterogeneity.* Different devices measure HRV differently (time domain vs frequency domain, awake vs sleep periods). Aggregating across devices requires harmonization algorithms that introduce error.

*Self-report reliability.* Symptom logs depend on patient compliance and recall. Mitigation: time-locked prompts ("you had a high-exertion day yesterday — how are you feeling today?") rather than retrospective questionnaires.
]

== Consequence

#key-point[
The patient-generated physiology map is the lowest-cost, highest-scale research method proposed in this document. It exploits data that already exists — patients are already tracking — and converts it from individual anecdote to population-level evidence. It answers the questions that individual patients ask every day ("am I about to crash?") and the questions that researchers need answered ("what is the natural history of ME/CFS physiology?"). The only missing ingredient is aggregation infrastructure.
]
