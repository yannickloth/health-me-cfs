#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Chapter 11: The Crash-Resilience Scorecard
// Type: Clinical Decision Tool
// =============================================================================

= The Crash-Resilience Scorecard
<ch:crash-resilience>

#chapter-abstract[
No existing chapter quantifies crash resilience — what determines whether a given overexertion produces a 2-day crash, a 2-week crash, or a permanent step-down in baseline. A composite score derived from wearable data (HRV, HR, sleep quality, recent crash history) predicts crash severity before it occurs, enabling patients to calibrate risk-taking in real time.
]

== Motivation

PEM is not binary. The same overexertion event can produce radically different crash severities depending on the patient's physiological state at the time of overexertion. A day with good sleep, high HRV, and no recent crashes may absorb overexertion with minimal penalty. The same overexertion after a poor-sleep week with declining HRV may trigger a catastrophic crash.

Patients learn this intuitively — "I'm fragile today" — but have no objective measure of fragility. The resilience scorecard provides one: a quantitative estimate of how much a crash today would cost, enabling patients to calibrate whether the day's planned activity is worth the risk.

== The Resilience Score Components

=== Component 1: Autonomic Reserve (weight: 0.30)

*Marker:* Morning RMSSD (time-domain HRV) relative to the patient's 30-day rolling mean.

*Interpretation.* HRV reflects parasympathetic reserve — the autonomic system's capacity to absorb stress. A decline in HRV indicates reduced reserve. When RMSSD drops below 80% of the rolling mean, crash risk from a standard overexertion doubles.

*Evidence basis.* Reduced HRV precedes symptom worsening in multiple chronic conditions (fibromyalgia, inflammatory bowel disease, depression). The critical slowing down framework (Ch47 §6) predicts that HRV decline precedes approach to a tipping point.

=== Component 2: Recovery Debt (weight: 0.25)

*Marker:* Days since last crash, weighted by that crash's severity.

*Interpretation.* A crash 2 days ago that hasn't fully resolved (HRV still below baseline, resting HR still elevated) means the system is already operating in a depleted state. A second overexertion on top of incomplete recovery compounds nonlinearly — the cost is larger than the sum of two separate overexertions.

*Recovery debt score:* $D = sum_i s_i dot e^(-(t - t_i) \/ tau)$ where $s_i$ is the severity of crash $i$ at time $t_i$, and $tau$ is the patient's recovery time constant.

=== Component 3: Sleep Quality (weight: 0.20)

*Marker:* Sleep efficiency (% time asleep while in bed), deep sleep duration, and overnight HRV.

*Interpretation.* Poor sleep impairs glymphatic clearance, elevates next-day inflammation, and reduces cognitive reserve. A night with < 75% sleep efficiency reduces crash resilience by ~30% relative to a > 90% sleep efficiency night.

=== Component 4: Inflammatory State (weight: 0.15)

*Marker:* Resting HR relative to 30-day mean; wrist temperature deviation from baseline (a crude inflammation proxy available from some wearables).

*Interpretation.* Elevated resting HR (a sign of sympathetic activation, often driven by inflammatory cytokines) signals that the immune system is already engaged, leaving less reserve to absorb exertion-induced inflammation.

=== Component 5: Exertion History (weight: 0.10)

*Marker:* Exertion level over the past 3 days relative to the patient's energy envelope boundary (consecutive high-exertion days compound).

*Interpretation.* The system fatigues cumulatively. Three consecutive days at 90% of the envelope boundary may be more damaging than one day at 110% of the boundary, because the former allows no recovery between days. The score penalizes consecutive high-exertion days.

=== Composite Score

$R = 100 - (w_1 A + w_2 D + w_3 S + w_4 I + w_5 H)$

Where $A, D, S, I, H$ are the component scores normalized to 0–100 (100 = worst), and weights $w_i$ sum to 1.

Interpretation:
- $R > 80$: High resilience. A standard overexertion will likely produce a minimal crash (< 1 day).
- $R = 60 – 80$: Moderate resilience. Expect a 1–2 day crash.
- $R = 40 – 60$: Low resilience. Avoid non-essential exertion; a crash could last 3–7 days.
- $R < 40$: Critical. Any exertion risks a prolonged crash or step-down. Prioritize rest and recovery.

=== Crash Severity Prediction

Beyond the resilience score, the system predicts crash severity for a given exertion level:

$"CrashSeverity"(u, R) = alpha(u) dot beta(R)$

where $alpha(u)$ scales with exertion level $u$ (the dose), and $beta(R)$ scales with resilience $R$ (the host factor). $alpha$ is approximately linear below the crash threshold and supralinear above it. $beta$ is approximately exponential in $(100-R)$.

The cost-benefit decision facing the patient:

$"NetBenefit"(u, R) = V(u) - C("CrashSeverity"(u, R), R)$

where $V(u)$ is the value of exertion $u$ (completing a task, social activity, self-care) and $C$ is the cost of the resulting crash (lost function in subsequent days, weighted by those days' expected resilience).

#proposal[
*Implementation.* A smartphone widget or watch complication that displays the resilience score every morning as a simple color-coded gauge (green/yellow/orange/red) with an optional numeric score. The patient taps for details: which components are driving today's low resilience, what specifically to prioritize (rest, sleep tonight, avoid cognitive exertion), and the predicted crash severity for today's planned activities.

*Validation.* Prospectively validate the composite score against actual crash outcomes in 100 patients over 12 weeks. Optimize component weights to maximize predictive accuracy. Compare against patient-reported "I feel fragile today" as a baseline.
]

== Feasibility

*Effort.* Low — the components are derived from existing wearable data types that are already available. Algorithm development: 10–15 hours. App integration: extends the pacing algorithm app (Ch10). Validation study: 6 months.

== Consequence

#key-point[
The crash-resilience scorecard converts the subjective experience of "I feel fragile today" into an objective, actionable number. It gives patients the information they need to calibrate daily risk-taking — the core cognitive challenge of living with ME/CFS. Unlike the pacing algorithm (Ch10), which optimizes the exertion budget, the resilience scorecard tells the patient what a budget violation would cost, enabling informed deviations when the activity value justifies the risk.
]
