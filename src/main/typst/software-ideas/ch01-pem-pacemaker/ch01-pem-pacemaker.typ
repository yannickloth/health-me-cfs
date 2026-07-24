#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Chapter 7: PEM-Pacemaker — Real-Time Biofeedback for Exertion
// =============================================================================

= PEM-Pacemaker: Real-Time Biofeedback for Exertion
<sw:pem-pacemaker>

#chapter-abstract[
Not just passive monitoring — active intervention. A wearable device that vibrates when HR crosses the personalized anaerobic threshold, and more subtly, vibrates _before_ the threshold when HRV begins to decline (early decompensation signal). Over weeks, the threshold adapts upward as the patient's capacity improves. Operant conditioning for the autonomic nervous system.
]

== Motivation

Current HR-pacing tools alert the patient _after_ the threshold is crossed. By then, some damage has already been done — the metabolic cascade of PEM may already be engaged. The PEM-Pacemaker warns before the threshold is reached by detecting the _anticipatory_ autonomic signals: HRV decline, heart rate acceleration independent of activity increase, and other subtle signs that the system is approaching its limit.

More than a warning system, it is a training system. By providing consistent, immediate feedback when the patient approaches their boundary, the device trains interoceptive awareness — the patient learns to recognize the physiological signals of approaching their limit without needing the device. Over time, the vibration threshold can be raised as the patient's capacity improves, implementing a form of autonomic biofeedback training.

== Core Functionality

=== Real-Time Signal Processing

Continuous heart rate and HRV monitoring via chest strap (Polar H10 or similar — wrist-based optical HRV is insufficient for beat-to-beat analysis at the required precision).

The algorithm computes in real time:
- Current HR relative to personalized anaerobic threshold (from CPET or from adaptive estimation)
- Short-term HRV trend (RMSSD over 30-second windows, compared to 5-minute rolling baseline)
- HR acceleration (dHR/dt — if HR is rising faster than activity would explain, autonomic decompensation may be beginning)
- Composite stress index: a weighted combination of the above, normalized to the patient's historical range

=== Three-Level Alert System

*Level 1 (Green — caution).* Composite stress index exceeding 70th percentile. Gentle vibration (single short pulse). Meaning: "You're working moderately hard. Be mindful."

*Level 2 (Yellow — warning).* Composite stress index exceeding 85th percentile OR HRV decline of > 15% from baseline within 2 minutes. Two short pulses. Meaning: "Approaching your limit. Start winding down."

*Level 3 (Red — stop).* HR exceeding anaerobic threshold OR composite stress index exceeding 95th percentile. Continuous vibration for 3 seconds. Meaning: "Stop now. Any further exertion risks a crash."

=== Adaptive Threshold

The anaerobic threshold is not static. It varies day-to-day based on recovery state, sleep quality, infection status, and other factors. The Pacemaker adapts:

- *Daily calibration.* Morning resting HR and HRV establish the day's baseline. The threshold is adjusted: lower on low-resilience days, higher on high-resilience days.
- *Long-term trend.* If the patient's HRV trend is improving and crash frequency is declining over weeks, the threshold is gradually raised — the patient is improving and can safely do more.
- *Crash protection.* After a detected crash, the threshold drops to 70% of normal for 3 days, then gradually returns over the recovery period.

=== Feedback Loop Closure

The patient wears the device during waking hours (or during planned activity periods). Over weeks:

1. The patient learns to stop or slow down at Level 2 (before reaching the threshold). This prevents crashes.
2. As crash frequency declines, the adaptive threshold rises. The patient discovers they can do more than they thought — safely.
3. The patient internalizes the physiological signals. Eventually, they may not need the device — their interoceptive awareness has been trained.

This is distinct from HR-pacing apps that display numbers. The vibration is immediate, ambient, and does not require screen interaction. It works while walking, cooking, or having a conversation. It is designed for severe cognitive impairment.

=== Data Logging

Each alert event is logged with: timestamp, HR, HRV, activity level (from accelerometer), alert level, and patient response (did they stop? A follow-up question at end of day).

Over weeks, the log reveals: alert frequency trends (declining = improving), trigger contexts (alerts during specific activities), and correlation with next-day function (did alerts predict crashes?).

== Relationship to Existing Content

- the Pacing App spec (Pacing App) in the companion document: the Pacemaker is the real-time actuator; the Pacing App is the daily planner
- the Crash-Resilience Scorecard proposal (Crash-Resilience Scorecard): the resilience score determines the day's threshold adjustment
- Ch47 §6 (Critical Slowing Down): the theoretical basis for using HRV decline as an early decompensation signal
- Ch26 (Lifestyle Interventions, parent paper): the energy envelope theory and HR-based pacing protocol

== Technical Architecture

*Hardware.* Compatible with any Bluetooth chest-strap HR monitor (Polar H10 recommended for validated RR-interval data). The processing runs on a smartphone or dedicated wearable (smartwatch). In the prototype phase, a smartphone app receiving chest-strap data. In the product phase, a custom wristband or clip-on device.

*Algorithm.* Low-latency signal processing pipeline. RR intervals → artifact removal (ectopic beat detection) → RMSSD computation (30s rolling window) → composite stress index → threshold comparison → vibration trigger. All computation is on-device; latency < 500 ms from RR interval to vibration decision.

== Limitations

#limitation[
*Chest strap requirement.* Wrist-based optical HR sensors are insufficient for beat-to-beat HRV analysis in real time. Chest straps are uncomfortable for some patients and impractical for all-day wear. A validated wrist-based alternative (wrist optical RR-interval data with adequate sampling rate) would expand usability but does not yet exist.

*Latency of decompensation detection.* HRV decline may be detectable only 1–2 minutes before threshold crossing — insufficient time for the patient to wind down a complex activity. The early warning may be too late.

*False positives.* The stress index will trigger alerts during non-pathological HR increases (e.g., emotional excitement, startling events). The patient must learn to distinguish false alerts from true warnings without becoming desensitized.

*Severe patient compatibility.* Very severe patients may be unable to tolerate any tactile stimulation (allodynia is common). The vibration itself could be aversive. An audio-only or visual-only alternative is needed.
]

== Consequence

#key-point[
The PEM-Pacemaker is the first tool that actively intervenes in the exertion-crash cycle rather than passively monitoring it. It combines the theoretical precision of HRV-based decompensation detection (Ch47) with the immediacy of haptic feedback, creating a biofeedback loop that trains the patient's interoceptive awareness while preventing crashes in real time. For patients whose primary challenge is recognizing their limits before they're crossed, this is more valuable than any dashboard or report.
]
