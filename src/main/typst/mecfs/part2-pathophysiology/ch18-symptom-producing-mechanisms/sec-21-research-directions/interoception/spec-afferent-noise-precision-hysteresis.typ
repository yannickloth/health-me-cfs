#import "../../../../shared/environments.typ": *

#speculation(title: [Why PEM Recovery Takes Days, Not Hours — Noise and Stuck Precision])[
The predictive coding models of body-sensing (Seth 2011 @Seth2011interoceptivePresence, Greenhouse-Tucknott et al.\ 2022 @GreenhouseTucknott2022predictiveCodingFatigue) can be extended with two mathematical parameters that capture the ME/CFS experience in a precise, testable way.

*Signal noise ($sigma_upright("noise")$):* Current models don't include a parameter for how corrupted the body's data stream is. Add one—let it rise and fall with cytokine levels, heart rate variability complexity, and vagus nerve firing irregularity—and the model predicts: as noise increases, body-sensing accuracy drops, but the brain compensates by cranking up the volume on all body signals (precision-weighting). When noise crosses a critical threshold, the system flips from a smooth, graded response into a locked-in all-or-nothing state. That flip is PEM.

*Precision stickiness ($tau_upright("prec")$):* How long does it take the brain to turn the body-volume back down after a PEM episode? The model predicts that in ME/CFS, this time constant is over 72 hours—once precision gets turned up, it stays up for days. In healthy people, it would be under an hour. This explains why recovery takes days, not hours, and why patients can feel "stuck" in a crash even after the physical trigger has passed. The brain's volume knob is slow to reset.

Together, these two parameters define a map with four zones: low noise + moderate precision = healthy; high noise + low precision = anxious monitoring; high noise + high precision = the ME/CFS state (poor accuracy, high body awareness, low insight); very high noise + very high precision = the locked-in PEM crash. (Origin: brainstorm)

This model is consistent with the inflammation-to-body-sensing pathway (Section @sec:ch15-inflammation-interoception) and the detailed brain network map from Zhang/Wager et al.\ (2025) @ZhangWager2025AllostaticInteroceptive.

(Certainty: 0.40. (0.35→0.40: reinforced by anatomical constraint from Zhang/Wager 2025 7T allostatic-interoceptive system map, cert 0.80). These are theoretical extensions—mathematically coherent with the underlying models but entirely untested against ME/CFS data. The parameters have not been estimated from any patient dataset. *Falsification condition:* If the model with signal noise above 0.5 does not produce two stable states (bistability), or if estimated precision-reset times do not distinguish ME/CFS patients from controls in real-time monitoring data, the specific parameterisation is wrong. *Escape hatch:* The framework's value at this stage is in generating testable predictions, not in being confirmed—parameter estimation from real data is the next necessary step.)
] <spec:ch15-afferent-noise-precision-hysteresis>
