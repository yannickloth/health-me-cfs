#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Chapter 11: Sleep Architecture Optimizer
// =============================================================================

= Sleep Architecture Optimizer — Circadian Drug Timing Calculator
<sw:sleep-architecture-optimizer>

#chapter-abstract[
Many ME/CFS-relevant drugs have circadian-dependent efficacy. A tool that takes the patient's medication list + sleep schedule and outputs: optimal administration times for each drug to maximize mechanistic leverage, detect conflicts, and recommend adjustments. Chronopharmacology deployed as a clinical tool.
]

== Motivation

The medication-timing hypothesis (the Medication-Timing Window proposal in the companion document) identifies that drug efficacy depends on circadian phase: glymphatic enhancers must be active during slow-wave sleep (1–3 AM), mast cell stabilizers should cover the nocturnal histamine surge, corticosteroids must be timed to morning to avoid HPA suppression, sedatives must be timed to avoid next-day hangover.

But no tool computes these timings for a given patient. A physician prescribes "take CoQ10 in the morning" because that's the default — not because the patient's sleep architecture, circadian rhythm, or concurrent medications make morning the optimal time. The sleep architecture optimizer personalizes drug timing by considering the patient's sleep schedule, wearable-derived sleep architecture, and concurrent medication list.

== Core Functionality

=== Input

- *Medication list.* What the patient is taking, with doses
- *Sleep schedule.* Typical bedtime, wake time, and desired sleep duration
- *Sleep architecture (optional).* Wearable-derived sleep stage data (deep sleep timing, REM timing, wake-after-sleep-onset patterns) — enables personalization beyond population averages
- *Circadian chronotype (optional).* Morning/evening preference (from questionnaire or from actigraphy-derived mid-sleep time)

=== Drug Timing Database

Each drug is characterized by:
- *Absorption profile.* Time to peak plasma concentration (T_max)
- *Half-life.* Elimination half-life — determines duration of action
- *Circadian target.* The physiological process that should be active when the drug peaks (e.g., "glymphatic clearance during slow-wave sleep, typically 1–3 AM" or "morning cortisol awakening response")
- *Sleep interference.* Does the drug interfere with sleep onset (stimulant effect), sleep maintenance (causes awakenings), or REM sleep (suppresses or enhances)?
- *Food interaction.* Timing relative to meals
- *Drug-drug circadian interactions.* Does drug A alter the metabolism of drug B via CYP450 induction/inhibition, shifting B's effective timing?

=== Optimization Engine

For each drug, compute the administration time that maximizes mechanistic alignment:
- *Goal 1: Circadian target alignment.* The drug's peak effect should coincide with its target physiological process.
- *Goal 2: Sleep preservation.* No drug should have active stimulant effects or sleep-disrupting metabolites during the sleep window.
- *Goal 3: Morning function.* Drugs needed for daytime function should peak during waking hours.
- *Goal 4: Drug-drug spacing.* Drugs with known interactions should be separated by at least their interaction duration.

The optimization is a constraint satisfaction problem: assign each drug a time window that satisfies all constraints. When constraints conflict (e.g., two drugs both need evening dosing but interact), the tool reports the conflict and recommends alternatives — not a false optimization.

=== Output

A 24-hour timeline showing when each drug should be taken, with justification:

```
06:00 – Levothyroxine (thyroid hormone, take on empty stomach, 30 min before food)
07:00 – Midodrine 5 mg (peak coincides with morning orthostatic stress)
08:00 – CoQ10 200 mg (with breakfast for absorption, supports daytime mitochondrial demand)
12:00 – CoQ10 200 mg (second dose, split for sustained coverage)
18:00 – Ketotifen 1 mg (mast cell stabilizer, covers nocturnal histamine surge)
21:00 – Melatonin 1 mg (1 h before bedtime, supports sleep onset)
22:00 – LDN 4.5 mg (at bedtime; endorphin rebound peaks 4–6 h later, coinciding with glymphatic clearance window)
```

Warnings:
- "Midodrine after 18:00 may interfere with sleep onset (sympathomimetic effect). If evening orthostatic symptoms require treatment, consider compression garments instead."
- "Melatonin and ketotifen both cause drowsiness. Monitor for excessive morning sedation. Consider reducing melatonin to 0.5 mg if hangover persists."

=== Sleep Coaching

Beyond drug timing, the tool provides recommendations for improving sleep architecture based on the patient's wearable data:
- "Your deep sleep is concentrated in the first 3 hours of the night but your REM sleep is fragmented. This pattern is consistent with the thalamocortical hyperactivity described in the parent paper (Ch8). Consider discussing gabapentinoid therapy with your physician — gabapentinoids enhance slow-wave sleep and reduce alpha intrusion."
- "Your glymphatic clearance window (deepest sleep, typically 1–3 AM) is likely active around 2 AM based on your sleep architecture. Ensure the glymphatic-enhancing agents (if any) peak during this window."

== Relationship to Existing Content

- the Medication-Timing Window proposal (Medication-Timing Window): the phase and circadian timing framework
- Ch8 (Neurological, parent paper): the thalamocortical and glymphatic physiology that determines circadian targets
- Ch24 (Medications by System, parent paper): the pharmacology data (T_max, half-life, mechanism)
- the Wearable Dashboard spec (Wearable Dashboard): the sleep architecture data source

== Technical Architecture

*Drug timing database.* Pre-computed table of pharmacokinetic parameters and circadian targets for all ME/CFS-relevant drugs. Extracted from Ch24 and pharmacology references.

*Constraint solver.* Simple rule-based engine with hard constraints (drugs with known dangerous interactions) and soft constraints (optimal timing preferences with penalties for deviation). The solver outputs the best feasible schedule.

*Interface.* Web application. The physician enters medication list and sleep schedule; the tool computes and displays the timeline. Exportable as a patient-friendly medication schedule.

== Limitations

#limitation[
*Population-average pharmacokinetics.* T_max and half-life vary across individuals based on genetics (CYP450 polymorphisms), liver function, age, and concurrent medications. The tool uses population averages and cannot account for individual pharmacokinetic variability.

*Limited circadian evidence.* Most drugs lack ME/CFS-specific circadian efficacy data. The circadian targets are inferred from physiology (e.g., "glymphatic clearance peaks during slow-wave sleep, so glymphatic enhancers should peak then") rather than from trials demonstrating that timing actually matters.

*Sleep architecture uncertainty.* Consumer wearables provide approximate sleep staging. Deep sleep timing from a wearable may differ by 30–60 minutes from PSG. The tool's timing recommendations should include a tolerance window.

*Polypharmacy complexity.* Patients taking 10+ medications (common in severe ME/CFS) create a dense constraint network that may have no feasible solution. The tool must report which constraints conflict and recommend medication rationalization in collaboration with the prescribing physician.
]

== Consequence

#key-point[
The sleep architecture optimizer applies chronopharmacology to ME/CFS — a discipline that is well-established in oncology (chronochemotherapy) and cardiology (bedtime antihypertensives) but entirely absent from ME/CFS care. For a disease where sleep is both a primary symptom and the gateway to recovery (via glymphatic clearance), optimizing drug timing around sleep is not a refinement — it's a determinant of whether treatment works at all.
]
