#import "../../../shared/environments.typ": *

#open-question(title: [Do Fatigue and Recovery Time Constants Add Information Beyond the Ratios?])[
The published indices collapse a ten-grip force series into two numbers: a fatigue ratio (Fmax/Fmean) and a recovery ratio (Fmean session 2 / session 1). Both discard the shape of the decline. A fatigue time constant can be fitted to that series at no extra patient burden. A *recovery* time constant cannot: the published protocol records only two recovery observations (session-1 mean and session-2 mean at 60 minutes), and a two-parameter exponential cannot be identified from two points. Recovering the recovery constant would require at least three post-exertion timepoints — a protocol change, not a reanalysis.

Why it might matter: a patient whose force falls linearly across ten grips and a patient whose force holds for eight grips then collapses can produce the same fatigue ratio but have different physiology (progressive metabolic limitation versus a threshold event). If the time constants separate those patterns and correlate differently with symptom severity, they become a mechanistic readout rather than a summary score.

The raw series are not currently published as shared data for either driving cohort, so this analysis is proposed, not performed. It is also unclear whether ten grips provide enough points for a stable exponential fit — that is a tractability question, not a biological one.

*Prediction:* the fitted fatigue time constant will separate ME/CFS from healthy controls more strongly than the fatigue ratio does, and will correlate with symptom severity independently of absolute force. *Falsified if:* the fit is unstable across grips, or the time constant adds no discrimination beyond the ratio.

*Translation gap:* none — the data are human. *Severity applicability:* mild and moderate ambulatory patients (same cohorts).

*Certainty: 0.25.* (Methodologically plausible; no published test of the model on these data.)

*Consequence:* If the shape of the decline carries information, a test that already exists becomes more informative without asking more of the patient — but this is an analysis waiting for data access, not a new clinical capability.
] <oq:handgrip-time-constants>
