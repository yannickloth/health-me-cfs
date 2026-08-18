#import "../../../../../shared/environments.typ": *

#speculation(title: [Rate-of-Change Biomarker: $d B\/d t$ as Primary Outcome for Extremely Severe Patients])[
Since functional milestones are separated by very long time intervals at the bottom of the scale (floor regime, Table @tab:recovery-regimes), threshold-crossing outcomes are insensitive. The model suggests that the instantaneous rate of recovery $d B\/d t$ is the informative quantity:
$
d B \/ d t = r(B) dot.op frac([upright("ATP")], K_upright("repair") + [upright("ATP")]) dot.op (B_max - B(t))
$
At low $B$, $d B\/d t$ is small but nonzero if the patient is improving. A composite "recovery rate index" derived from the slopes of 3--5 biomarkers (HRV trend, cytokine decline rate, oxidative marker reduction rate) could serve as a surrogate endpoint for clinical trials in this population. _(Certainty: 0.40.)_

*Falsifiable prediction:* In a 12-month study of $gt.eq 15$ extremely severe patients receiving consistent supportive care, a composite biomarker slope should be positive in $gt.eq 50%$ of patients who show no detectable functional change.
] <spec:recovery-rate-index>
