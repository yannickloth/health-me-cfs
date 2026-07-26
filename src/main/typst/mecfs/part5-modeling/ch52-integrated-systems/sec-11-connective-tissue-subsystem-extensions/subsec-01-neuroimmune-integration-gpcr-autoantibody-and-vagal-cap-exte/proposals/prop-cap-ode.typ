#import "../../../../../shared/environments.typ": *

#proposal(title: [Cholinergic Anti-Inflammatory Pathway (CAP) ODE — Vagus-Immune Axis with GPCR Autoantibody Blockade])[
*Certainty: 0.35.* Add a 4-variable CAP subsystem: V_eff(t) = vagal efferent activity, A_ch(t) = ACh at splenic T cell synapse, T_act(t) = activated splenic CD4+ T cell fraction, M_TNF(t) = macrophage TNF-α production. V_eff is driven by baroreflex output (existing S/V from ch29) and external inputs (taVNS, SPB). A_ch is a function of V_eff modulated by M2/M4 autoantibody blockade. T_act depends on A_ch via β2-AR, modulated by β2-AR autoantibodies. M_TNF is suppressed by T_act (the CAP efferent arm). Key parameter: α_β2 = 1/(1 + [AAb_β2]/K_d) reduces CAP gain. Above a critical β2-AR AAb threshold, the CAP is completely disabled — taVNS produces no TNF-α suppression. Below threshold, CAP gain increases with V_eff — taVNS is effective. @Blitshteyn2026Neuroimmune

*Testable prediction.* The relationship between β2-AR AAb titer and taVNS-induced TNF-α suppression is sigmoidal (not linear) with a critical threshold at ~2 × ULN. Above threshold: taVNS suppresses TNF-α by \< 10%. Below threshold: by \> 30%. Stratify ME/CFS patients by β2-AR AAb quartile and measure acute taVNS TNF-α suppression — the quartile × suppression interaction follows a sigmoid, not a linear gradient.

*Existing model context.* Extends ch30 vagal coupling (@eq:vagal-coupling); connects to ch29 baroreflex model.
] <prop:cap-ode>
