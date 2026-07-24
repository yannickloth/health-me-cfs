#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Chapter 8: Functional Narcolepsy Screener
// =============================================================================

= Functional Narcolepsy / Orexin Deficiency Screener
<sw:functional-narcolepsy-screener>

#chapter-abstract[
The parent paper (Ch8, Ch47 §9.4) discusses a "functional narcolepsy" hypothesis: partial orexin neuron suppression producing ME/CFS sleep dysfunction resembling narcolepsy type 2. A screening tool that takes sleep diary + wearable data + symptom questionnaire and outputs: probability of functional narcolepsy overlap, recommendation for orexin CSF measurement, and expected response to orexin agonists.
]

== Motivation

ME/CFS sleep dysfunction is nearly universal (unrefreshing sleep, Ch2) but is treated generically — sleep hygiene, sedatives, melatonin. The functional narcolepsy hypothesis suggests that a subset of patients have a specific, diagnosable, and potentially treatable sleep disorder: orexin neuron dysfunction producing narcolepsy-type sleep architecture disruption (REM fragmentation, sleep-onset REM periods, excessive daytime sleepiness, and possibly cataplexy-like episodes).

Orexin agonists (currently in Phase III trials for narcolepsy type 1) could be transformative for this subset. But the subset is invisible — no screening tool identifies which ME/CFS patients have orexin dysfunction. The functional narcolepsy screener fills this gap.

== Core Functionality

=== Screening Questionnaire

The patient completes a structured questionnaire (10–15 minutes) covering:

- *Excessive daytime sleepiness.* Epworth Sleepiness Scale (standard narcolepsy screening)
- *Sleep attacks.* Sudden, irresistible urges to sleep during the day, independent of exertion
- *Cataplexy-like episodes.* Sudden muscle weakness triggered by strong emotion (laughter, surprise, anger) — the hallmark of narcolepsy type 1, but may be subtle or partial in functional narcolepsy
- *Sleep-onset REM.* Vivid dreaming immediately upon falling asleep, or hallucinations at sleep onset (hypnagogic) or awakening (hypnopompic)
- *Sleep fragmentation.* Frequent awakenings, inability to sustain deep sleep, feeling "awake all night"
- *Sleep paralysis.* Temporary inability to move upon waking

=== Wearable Data Analysis

If the patient uses a wearable with sleep staging (Oura, Apple Watch, Fitbit), the tool analyzes sleep architecture:

- REM latency: abnormally short (< 30 minutes — sleep-onset REM periods, the narcolepsy hallmark)
- REM fragmentation: excessive transitions between REM and wake
- Deep sleep deficiency: reduced slow-wave sleep duration
- Sleep efficiency: overall poor efficiency despite adequate time in bed

Consumer sleep staging has limited accuracy for REM detection (60–80% agreement with PSG). The tool accounts for this uncertainty.

=== Risk Score

A weighted composite of questionnaire responses + wearable-derived sleep features, calibrated against known narcolepsy prevalence in the general population (~1 in 2,000) and the expected functional narcolepsy overlap in ME/CFS (unknown — the screener itself will estimate this as patients are tested).

Output:
- *Low risk.* Score < 30th percentile of ME/CFS population. Unlikely functional narcolepsy component; sleep dysfunction likely driven by other mechanisms (pain, autonomic dysregulation, circadian disruption).
- *Moderate risk.* Score 30th–70th percentile. Possible functional narcolepsy component; consider PSG + MSLT (Multiple Sleep Latency Test, the gold standard for narcolepsy diagnosis) if symptoms are disabling.
- *High risk.* Score > 70th percentile. Probable functional narcolepsy component; recommend PSG + MSLT ± CSF orexin measurement. If confirmed, trial of orexin agonist when available (or wake-promoting agents — modafinil, pitolisant — as bridging therapy).

=== Differential Diagnosis

The screener also distinguishes functional narcolepsy from other sleep disorders common in ME/CFS:
- *Sleep apnea.* Differentiated by overnight SpO2 patterns and snoring history
- *Idiopathic hypersomnia.* Similar excessive sleepiness but without REM abnormalities
- *Delayed sleep phase disorder.* Circadian misalignment, not orexin dysfunction
- *Pure ME/CFS fatigue.* The distinction between "sleepy" (can fall asleep) and "fatigued" (cannot fall asleep but exhausted) — the screener explicitly queries this distinction

== Relationship to Existing Content

- Ch8 (Neurological, parent paper): the thalamocortical and orexin dysfunction discussion
- Ch47 §9.4 (ME/CFS-Narcolepsy-Long COVID Triangle, parent paper): the emergent hypothesis linking these three conditions via orexin dysfunction
- the Wearable Dashboard spec (Wearable Dashboard): the sleep data source
- Ch27 (Emerging Therapies, parent paper): orexin agonists as investigational treatments

== Technical Architecture

*Frontend.* Web-based questionnaire with adaptive questioning (skip irrelevant sections based on prior answers). Patient-facing, 10–15 minutes.

*Scoring engine.* Rule-based with population-derived thresholds. The scoring weights are updated as validation data accumulates (patients who screen high and undergo PSG + MSLT provide ground-truth labels).

*Physician report.* Downloadable PDF with: risk score, component breakdown, differential diagnosis, and recommendation for next diagnostic steps.

== Limitations

#limitation[
*No validated ground truth.* There is no established diagnostic test for "functional narcolepsy" — the concept itself is a hypothesis. The screener can identify patients with narcolepsy-like features, but whether these features indicate treatable orexin dysfunction is unproven.

*Consumer sleep staging inaccuracy.* REM detection from consumer wearables is unreliable. A high-risk screen should be confirmed by PSG + MSLT, which are expensive, inconvenient, and not routinely ordered for ME/CFS patients.

*Orexin agonist availability.* Orexin agonists are not yet approved. The screener identifies patients who could benefit from a treatment that does not yet exist. Its current value is in directing patients toward existing wake-promoting agents (modafinil, pitolisant, solriamfetol) and toward clinical trials.

*Symptom overlap with ME/CFS.* Brain fog, fatigue, and unrefreshing sleep are core ME/CFS symptoms that overlap with narcolepsy symptoms. The screener's discrimination between "ME/CFS fatigue" and "narcolepsy sleepiness" may be unreliable.
]

== Consequence

#key-point[
The functional narcolepsy screener identifies a potentially treatable subset within ME/CFS that currently goes undiagnosed. If orexin dysfunction underlies sleep dysfunction in even 10% of ME/CFS patients, that represents hundreds of thousands of people worldwide who could benefit from targeted treatment. The screener costs nothing to deploy and directs patients toward the confirmatory testing (PSG + MSLT) that could change their diagnosis and treatment trajectory.
]
