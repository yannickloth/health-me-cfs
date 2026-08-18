#import "../../../shared/environments.typ": *

#speculation(title: [Composite Autonomic-Immune Score for Severity Tracking])[
*Certainty: 0.58.* CAIS = w1*Z(AAb_total) + w2*Z(1/HRV_RMSSD) + w3*Z(IL6/TNFalpha) where Z = z-score normalized to HC. Weights via regression to symptom severity in training cohort. Interpretation: CAIS < 0 = mild; 0--1 = moderate; >1 = severe. Prediction: CAIS correlates with SF-36 r > 0.7; CAIS reduction >0.3 = clinical response; longitudinal CAIS tracks symptom trajectory. @Azcue2026gpcr.
] <spec:composite-autonomic-immune-score-cais>
