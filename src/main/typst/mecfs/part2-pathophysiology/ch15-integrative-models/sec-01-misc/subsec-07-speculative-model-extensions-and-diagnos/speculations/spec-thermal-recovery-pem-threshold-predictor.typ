#import "../../../../../shared/environments.typ": *

#speculation(title: [Thermal Recovery Time as PEM Threshold Predictor: The Autonomic Stress-Test Model])[
PEM threshold — the activity level a patient can sustain before triggering post-exertional malaise — is a clinical concept with no objective measurement tool. Patients learn their threshold through trial and error, often by crashing. The two-day CPET protocol was designed to provide an objective correlate but Mancini et al. (2026, n=58 ME/CFS) found no significant Day 1→Day 2 decline in peak VO2 or VO2@VT, challenging 2-day CPET as a reliable PEM measurement tool @Mancini2026CPETrecoveryNull. An alternative approach that avoids maximal exertion entirely would serve both clinical and research needs.

*Proposed mechanism.* A calibrated autonomic stressor — controlled thermal challenge — followed by monitoring of autonomic recovery kinetics, provides a proxy for the body's physiological resilience. The logic chain is:

+ Thermal stimulus → TRPV1+ sensory neuron activation (Chapter @ch:speculative-hypotheses, Section @sec:trpv1-thermal-autonomic-stress-test)
+ → Sympathetic outflow proportional to thermal dose @Larson2023TRPV1bezoldjarisch
+ → Parasympathetic reactivation during recovery (HR deceleration, HRV restoration)
+ → Recovery time reflects autonomic infrastructure integrity
+ → Impaired recovery → lower PEM threshold

This model predicts that post-thermal recovery time (T90 — time to 90% baseline HR) correlates with the patient's PEM threshold measured by actigraphy the following day. The advantage over exercise provocation is that thermal challenge: (a) involves no muscle damage, (b) has controllable dose (temperature × duration), (c) can be titrated to avoid PEM, and (d) is reproducible at home with consumer equipment.

*Cross-disease support.* Ruijgt et al. (2026, n=121 Long COVID + 21 healthy controls) demonstrated that wearable-measured nighttime HRV decreases after exercise above the ventilatory threshold, and the magnitude of decrease predicts PEM severity — providing proof-of-concept that autonomic recovery kinetics track PEM risk @Ruijgt2026wearableHRVLongCOVID. Cherneva et al. (2025, n=192 post-COVID syndrome) found chronotropic insufficiency in 81.5% and abnormal HRR in 33% of moderate-to-severe patients, with HRR independently predicting reduced exercise capacity @Cherneva2025autonomicDysfunctionPCS. The extension of this logic to a non-exercise (thermal) stressor is the novel step proposed here.

*Alternative explanations.* Thermal intolerance in ME/CFS could reflect circadian thermoregulatory decoupling (Williams et al. 1996 — absent core temperature-melatonin acrophase correlation @Williams1996circadianCFS) rather than autonomic recovery impairment per se. The cold pressor vs circadian hypotheses could be distinguished by time-of-day control: if recovery time is prolonged regardless of time-of-test, autonomic impairment is the driver; if recovery time varies by circadian phase, thermoregulatory oscillator dysfunction dominates.

*Falsifiable predictions.* (a) Post-thermal T90 (60°C sauna × 10 minutes → HR recovery time to 90% baseline) correlates with next-day step count (r ≥ 0.4, n ≥ 40 ME/CFS). (b) T90 does NOT change significantly over a 2-week period in stable patients (test-retest reliability: ICC ≥ 0.7). (c) T90 shortens after a verified autonomic intervention (e.g., pyridostigmine, propranolol), and the shortening magnitude correlates with clinical improvement. (d) If circadian phase explains >50% of T90 variance, the test has low specificity for autonomic function.

(Certainty: 0.25. Individual mechanism components are supported: thermal → TRPV1 → autonomic (animal @Larson2023TRPV1bezoldjarisch); HRR impaired in ME/CFS (human @Nelson2021HRVrecoveryMECFS); wearable HRV predicts PEM in Long COVID (@Ruijgt2026wearableHRVLongCOVID). The combined protocol has zero direct evidence in any population. Origin: brainstorm — cross-domain synthesis spanning TRPV1 (§@sec:trpv1-thermal-autonomic-stress-test), autonomic recovery (§@sec:hr-recovery), and PEM prediction (this chapter). Not yet studied.)

*Consequence:* If validated, a patient with ME/CFS could use a consumer pulse oximeter (~EUR 30) and a standardized thermal challenge to objectively measure their PEM threshold daily — replacing "I crashed today" with "my T90 increased from 12 to 22 minutes, so I should reduce activity tomorrow." This would transform pacing from subjective trial-and-error to biophysically-informed decision-making, reducing the crash-and-recover cycle that drives long-term deterioration.

*Severity applicability:* Unknown — no thermal recovery study has been conducted in any ME/CFS severity stratum. Severe/very severe patients may not tolerate even moderate thermal challenge. The protocol would need to be validated in mild-to-moderate ambulatory patients first, with safety assessed before extending to severe patients.
] <spec:thermal-recovery-pem-threshold>
