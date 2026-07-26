#import "../../../shared/environments.typ": *

#protocol(title: [HRV-Guided Activity Management])[
Heart rate variability (HRV) provides an objective window into autonomic nervous system recovery status. This protocol uses daily HRV measurement to determine activity budgets, potentially preventing crashes before they occur.

*Physiological Basis*
HRV reflects the balance between sympathetic and parasympathetic nervous system activity. High HRV (particularly high-frequency power, reflecting parasympathetic tone) indicates a recovered, resilient autonomic system. Low HRV indicates stress, incomplete recovery, or autonomic dysregulation. In athletes, low morning HRV predicts poor training tolerance and increased injury risk @Plews2013hrv. The same principle may apply to ME/CFS activity tolerance.

*Measurement Protocol*

    - *Timing*: Immediately upon waking, before getting out of bed
    - *Duration*: 3–5 minute recording
    - *Position*: Supine, relaxed breathing
    - *Metrics*: RMSSD (root mean square of successive differences) or HF power
    - *Baseline establishment*: 14 days of daily measurement to establish personal baseline; calculate 7-day rolling average

*Validated Devices*

    - *Chest strap monitors*: Polar H10, Garmin HRM-Pro (gold standard accuracy)
    - *Wrist-based*: Oura Ring (validated for overnight HRV), Whoop, Garmin watches (acceptable accuracy for trends)
    - *Apps*: Elite HRV, HRV4Training (provide analysis algorithms; require compatible sensor)

*Activity Calibration*

    - *HRV $>$105% of baseline*: Green day—normal activity budget allowed
    - *HRV 90–105% of baseline*: Yellow day—reduce planned activity by 20%; increase rest periods
    - *HRV 75–90% of baseline*: Orange day—reduce activity by 40%; prioritize rest; cancel optional commitments
    - *HRV $<$75% of baseline*: Red day—minimal activity only; active recovery day; cancel all non-essential activities

*Integration with Activity Planning*

    - Check HRV before committing to activities
    - Reschedule appointments when HRV indicates poor recovery state
    - Use HRV as “training wheels” for learning to recognize internal recovery signals
    - Over time, patients may develop interoceptive awareness that correlates with HRV readings

*Evidence Status*
HRV-guided training is well-established in sports science @Plews2013hrv @Addleman2024hrv, with consistent evidence that reduced HRV predicts poor training tolerance and overtraining syndrome @Meeusen2013overtraining. Preliminary evidence supports HRV's utility in ME/CFS: Escorihuela et al. @Escorihuela2020hrv demonstrated that reduced HRV predicts fatigue severity in ME/CFS patients (n=45), with RMSSD, mean RR intervals, and high-frequency power all significantly correlating with self-reported fatigue (p \< 0.03). This suggests HRV may serve as an objective indicator of physiological reserve.

However, individual variation in HRV response is substantial; the protocol requires personalization. Some ME/CFS patients have chronically suppressed HRV, requiring adjusted thresholds. Consumer wearable devices are evolving rapidly but require validation for clinical use @Li2023wearable. A proposed RCT comparing HRV-guided to standard pacing is described in Chapter @ch:proposed-studies, Section @sec:hrv-pacing-rct.
] <prot:hrv-guided-pacing>
