#import "../../../../shared/environments.typ": *

#open-question(title: [CSD Detection Feasibility in ME/CFS Wearable Data])[
Can critical slowing down signatures (increasing variance and autocorrelation in HRV time series) be reliably detected in free-living ME/CFS patients using consumer wearables, and can the direction of the approaching transition (crash vs.\ recovery) be discriminated from concurrent activity and treatment context?

*Why it matters:* If CSD is detectable, it provides a personalized early warning system for crashes (enabling preventive pacing) and a quantitative signal of treatment response (enabling earlier dose optimization). The clinical impact would be substantial: crash prevention is the single most important pacing goal, and current methods rely on subjective symptom monitoring.

*Minimum study design:* $n >= 50$ ME/CFS patients, $>= 12$ months continuous HRV monitoring, capturing $>= 5$ detected state transitions (crashes or treatment responses) per participant. Requires time-stamped activity logs and treatment records for direction discrimination.

*Analogous successes:* CSD detected in depression mood time series @Wichers2016CSD; CSD detected before ICU patient deterioration @Olde2021earlywarning; CSD theory validated in ecological and climate systems @Scheffer2012anticipating.

*Key uncertainties:* Wearable HRV measurement noise may overwhelm the CSD signal. Free-living conditions (exercise, caffeine, sleep position) introduce confounders. The ME/CFS disease attractor may not exhibit clean CSD if the transition is gradual rather than abrupt.
] <oq:csd-monitoring>
