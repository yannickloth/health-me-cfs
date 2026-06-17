#import "../../../../shared/environments.typ": *

#speculation(title: [PEM Trigger Model with GPCR AAb Threshold])[
*Certainty: 0.50.* PEM_state = 1 if Demand greater-than R_reserve * theta_threshold. dR_reserve/dt = kappa_prod - kappa_AAb*A_ab*R_reserve - kappa_desens*Demand*R_reserve. Recovery: dRecovery/dt = kappa_rec*(1 - PEM_state) - kappa_trigger*PEM_state with hysteresis (kappa_rec less-than kappa_trigger). Prediction: beta2-AAb-positive patients have lower theta_threshold; immunoadsorption increases it; pacing keeps Demand below R_reserve*theta_threshold. Contingent on GPCR AAb causality (r^2=0.20, 80% unexplained). @Azcue2026gpcr.
] <spec:pem-trigger-model-aab-threshold>
