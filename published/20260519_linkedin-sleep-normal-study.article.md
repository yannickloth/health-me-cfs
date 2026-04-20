# "Your Sleep Study Was Normal": How Standard Tests Miss What's Broken in ME/CFS

There is a scene that plays out thousands of times a year in sleep clinics around the world. A patient with ME/CFS — exhausted beyond description, waking every morning feeling poisoned, unable to function for hours after opening their eyes — is sent for a polysomnography study. They spend an uncomfortable night in a hospital bed, wired to electrodes, knowing that this test is supposed to validate what they've been telling their doctors for months or years.

The results come back: *Normal sleep study. No significant pathology identified.*

The patient knows — with the certainty of someone who lives in their own body — that their sleep is not normal. The test says otherwise. The doctor trusts the test. The patient goes home with no diagnosis, no treatment, and the growing suspicion that their medical team believes this is psychological.

The test failed. Not the patient.

To be clear: sleep studies are still worth pursuing. Standard PSG catches obstructive sleep apnea, periodic limb movements, REM behaviour disorder, and nocturnal hypoventilation — all of which coexist with ME/CFS and are independently treatable. The problem is not that PSG is useless. The problem is that when it comes back "normal," it is being asked a question it was not designed to answer.

---

## What standard polysomnography actually measures

A standard overnight polysomnography (PSG) records EEG (brain waves), EOG (eye movements), EMG (muscle tone), ECG (heart rhythm), respiratory effort, oxygen saturation, and body position. A trained technician then scores the recording by visually inspecting 30-second epochs — windows of time — and assigning each one a sleep stage: Wake, N1 (light sleep), N2 (sleep spindles and K-complexes), N3 (slow-wave sleep), or REM.

The output is a hypnogram — a timeline showing which stage the patient was in at each point in the night — and a set of summary statistics: total sleep time, sleep efficiency, sleep latency, percentage in each stage, number of arousals per hour, and respiratory event indices.

For the conditions PSG was designed to detect — obstructive sleep apnea, narcolepsy, REM behaviour disorder, periodic limb movement disorder — this approach works well. These conditions produce gross architectural disruptions visible at the 30-second epoch level [Ch. 2 §Polysomnography Findings].

ME/CFS sleep pathology operates at a finer grain.

---

## What the test misses

Start with the most fundamental problem. Alpha-delta intrusion — alpha-frequency waves (8–12 Hz) intruding into delta sleep (0.5–4 Hz), present in the raw EEG, contaminating slow-wave sleep and preventing it from being restorative — does not change the sleep stage classification at all. An epoch containing both delta and alpha activity is still scored as N3 (slow-wave sleep) by standard visual criteria, because the dominant rhythm is delta. The alpha contamination is simply not captured in the stage score.

Detecting it requires spectral analysis: mathematical decomposition of the EEG signal into its component frequencies. This is not part of standard PSG scoring, most sleep laboratories do not perform it routinely, and most sleep physicians have never seen an alpha-delta power ratio on a report. So the patient's most significant sleep abnormality sits in the raw data, present but invisible in the clinical summary [Ch. 2 §Limitations of Standard Polysomnography].

Then there is the microarousal problem. The American Academy of Sleep Medicine defines a scorable arousal as an abrupt shift in EEG frequency lasting at least 3 seconds. Arousals shorter than that — which may be the most consistent polysomnographic finding in ME/CFS — are not scored. A patient who experiences hundreds of sub-3-second microarousals per night, each briefly disrupting the neural coordination required for restorative sleep, will receive an arousal index reading "within normal limits." Each of those micro-events triggers a brief sympathetic activation, a transient rise in norepinephrine, a momentary suppression of glymphatic flow. Hundreds per night, each too brief to count, each chipping away at overnight restoration, and the scoring system calls it normal [Ch. 2 §Limitations of Standard Polysomnography].

The percentage problem is subtler but equally consequential. ME/CFS patients may spend a perfectly normal percentage of total sleep time in N3 — and the report reflects this, so the doctor sees no flag. But what matters is continuity. Sustained, uninterrupted slow-wave epochs of 20+ minutes are needed for glymphatic clearance and memory consolidation; fragmented N3 — five minutes here, three minutes there, punctuated by stage transitions and microarousals — yields the same percentage but essentially none of the restorative function. Standard PSG reports the percentage; it does not report the longest sustained epoch or a fragmentation index. Two patients both showing 20% N3, one in sustained blocks and one in scattered fragments, receive the same score [Ch. 8 §Sleep Architecture Failure Hypothesis].

On top of this, ME/CFS sleep quality fluctuates dramatically with disease activity, PEM timing, and circadian drift. A single PSG night can catch a relatively good night — the novelty and stress of the sleep lab sometimes even produce a first-night effect that further distorts the architecture — while multi-night home monitoring would give a far more representative picture. It is rarely ordered [Ch. 2 §Single-Night Limitations].

Finally, standard PSG records heart rate but typically skips detailed heart rate variability analysis during sleep. The persistent sympathetic activation, absent nocturnal blood pressure dipping, and elevated overnight heart rate that characterise ME/CFS sleep are all present in the raw data and all absent from the clinical report.

---

## What should be done instead

None of what follows requires new technology. It requires the will to actually use what already exists.

The most important addition to standard PSG is quantitative EEG: computing the power spectral density across the night, particularly the delta/alpha ratio during N3 epochs, to make alpha-delta intrusion visible. This analysis can be run on data already collected by any standard PSG setup; it is a computational post-processing step, not a hardware upgrade. The cost is analysis time [Ch. 8 §Sleep EEG Delta/Alpha Ratio Speculation]. Similarly, scoring arousals at a 1-second threshold rather than 3 seconds — or computing a fragmentation index that captures the sub-threshold disruptions standard scoring ignores — is entirely feasible with existing software. The tools are used in sleep research; they simply haven't made the transition into routine clinical reports.

Sleep spindle analysis is a slightly longer shot, but not much. Spindles — 12–14 Hz thalamic bursts, markers of thalamocortical integrity — correlate with restorative sleep quality and are straightforwardly detectable from standard PSG data. ME/CFS patients are hypothesised to have reduced spindle density and power due to energy-limited thalamic burst firing, but no published study has actually measured this in the disease yet [Ch. 8 §Sleep Architecture Failure Hypothesis]. The measurement is easy. Someone just needs to do it.

For capturing the variability that a single lab night cannot, consumer-grade and clinical-grade home EEG devices can now record frontal EEG across multiple nights. They lack the spatial resolution of a full PSG montage, but they can track the delta/alpha ratio, sleep continuity metrics, and night-to-night swings across weeks. For a disease where sleep quality can shift dramatically depending on disease activity and PEM timing, a month of home data is worth more than one lab night.

Adding continuous blood pressure monitoring (for nocturnal dipping), detailed HRV analysis (for sympathetic-parasympathetic balance), and capnography (for nocturnal hypoventilation screening) alongside the PSG would cover the autonomic dimension that standard studies leave entirely unaddressed.

---

## The clinical consequence of "normal"

A "normal" result does more damage than no result at all, because it actively forecloses things.

Treatment options get bypassed entirely. Alpha-delta intrusion might respond to T-type calcium channel modulation or gabapentinoids; autonomic sleep dysfunction might respond to DORAs or alpha-2 agonists; periodic limb movements, if present on other nights but below threshold on the one night studied, might respond to iron optimisation. None of these get considered when the study comes back clean.

The credibility damage is harder to quantify but arguably worse. In a medical system that already struggles to take ME/CFS seriously, a "normal" sleep study becomes another data point used — sometimes explicitly, usually implicitly — to suggest that the patient's complaints are exaggerated or psychological. The study was not normal. The test didn't measure the thing that's abnormal. That distinction rarely survives the handoff between report and consultation.

And the research impact compounds over time. When ME/CFS sleep studies consistently report normal findings because they use standard scoring without spectral analysis, it slows recognition of ME/CFS-specific sleep pathology as a legitimate research target. The field measures what is easy to measure, concludes there is nothing to see, and moves on.

---

## What patients can do now

The clinical infrastructure is not going to catch up quickly. In the meantime, a few things are worth doing.

When referred for PSG, ask whether the lab performs quantitative EEG analysis. Some academic sleep centres do; most don't. If they don't, ask whether the raw EEG data can be exported for external analysis — this is the single most informative thing you can push for, and some labs will accommodate the request even if it isn't standard. Consumer-grade EEG headbands with spectral analysis capabilities are another option, imperfect but real: they lack clinical validation for ME/CFS-specific metrics, but they can track the delta/alpha ratio across multiple nights and show the pattern over time. That's research-grade self-phenotyping rather than diagnosis, but it produces data where otherwise there is none.

For the autonomic dimension, continuous heart rate, HRV, and SpO₂ from wearables — correlated with subjective sleep quality ratings — can document what PSG misses. A graph showing persistently elevated overnight heart rate and absent nocturnal HRV recovery is more legible in a medical conversation than a verbal description of waking up exhausted.

And if a sleep study comes back "normal" while sleep is profoundly non-restorative, that discrepancy is itself medically meaningful. It means the pathology is operating below the resolution of the test — not that there is no pathology. Worth saying that clearly in writing, to whoever is managing the case.

---

## A measurement problem, not a patient problem

The gap between what ME/CFS patients experience in their sleep and what standard polysomnography reports is one of the more consequential measurement failures in modern sleep medicine. The tests were designed for a different set of diseases, and they work well for those diseases. They were never designed with ME/CFS in mind, and the mismatch shows.

Upgrading the diagnostic approach — spectral analysis, extended arousal scoring, multi-night monitoring, concurrent autonomic assessment — is technically straightforward and economically feasible. The tools and algorithms already exist, largely developed in sleep research contexts. What's missing is the recognition that "normal PSG" in the context of profoundly non-restorative sleep is not reassuring. It means the test isn't measuring the right things, not that the patient is fine.

---

*Previous article in this series: [What If We Fixed Alpha-Intrusion?](https://www.linkedin.com/pulse/) — a thought experiment in multi-mechanism disease.*

---

*Full framework available open-access (CC-BY 4.0): Loth (2026), [doi:10.5281/zenodo.19627450](https://zenodo.org/records/19627450).*

*This is a mechanistic and modeling framework, not clinical guidance. Nothing here should inform treatment decisions without physician oversight.*

---

*Yannick Loth — Independent Researcher — ORCID: 0009-0003-5754-827X*

*#MECFS #MyalgicEncephalomyelitis #ChronicFatigueSyndrome #Sleep #Polysomnography #Diagnosis #SleepStudy #AlphaDeltaSleep #LongCOVID #PostInfectiousDisease #PatientAdvocacy #MedicalResearch #OpenAccess*
