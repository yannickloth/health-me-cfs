#import "../../../../../shared/environments.typ": *

#speculation(title: [Monitoring Strategy Shift by Severity])[
At moderate severity ($B approx 0.5$), autocorrelation of HRV is the primary early warning signal for approaching transitions (Section @sec:critical-slowing-down). At extremely severe levels, the baseline autocorrelation is already high (because the system's return-to-equilibrium rate is approximately $r_min$ in the floor regime --- very low but approximately constant --- leaving minimal dynamic range for detecting further increases). The model predicts that _variance_-based monitoring (coefficient of variation of resting heart rate) becomes more informative than autocorrelation at the extremely severe end. _(Certainty: 0.30.)_

*Falsifiable prediction:* In $gt.eq 20$ patients spanning moderate to extremely severe, with continuous HR monitoring for $gt.eq 3$ months, the coefficient of variation of resting HR should correlate negatively with $B$.
] <spec:monitoring-strategy-shift>
