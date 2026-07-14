#import "../../../../shared/environments.typ": *

=== Sleep--Wake Cycle (Equations @eq:sleep-wake)

*Measurements required.*
(1) Polysomnography with sleep architecture analysis (why: slow-wave sleep percentage constrains $r_(upright("decay"))$; sleep latency constrains $theta_(upright("on"))$).
(2) Actigraphy over 7--14 days (why: captures circadian rhythm regularity and sleep timing variability).
(3) Melatonin onset time (dim-light melatonin onset, DLMO) (why: constrains circadian phase $phi_s$ and amplitude $C_1$).

*Worked example.*
Healthy: $r_(upright("build")) = 0.05$/h, $r_(upright("decay")) = 0.10$/h, $C_1 = 0.4$. After 16 h waking: $S = S_(min) + (S_(max) - S_(min))(1 - e^(-0.05 times 16)) = 0.55$. After 8 h sleep: $S$ decays to $0.55 times e^(-0.10 times 8) = 0.25$ (below the circadian threshold, triggering waking). In ME/CFS with $r_(upright("build")) = 0.08$/h (faster pressure build due to energy deficit), $r_(upright("decay")) = 0.06$/h (impaired clearance), $C_1 = 0.2$ (blunted circadian signal): after 16 h waking $S = 0.72$ (high sleep pressure, falls asleep easily); after 8 h sleep $S = 0.72 times e^(-0.06 times 8) = 0.44$ (residual sleep pressure, wakes unrefreshed). The patient experiences excessive daytime sleepiness ($S = 0.44$ vs. 0.25 healthy upon waking) despite adequate sleep duration.

*Inter-model dependencies.*
_Inputs_: ATP consumption rate affects adenosine accumulation (sleep pressure build rate); HPA circadian amplitude affects $C_1$; pain from sensitization model disrupts sleep onset. _Outputs_: sleep quality modulates glymphatic clearance, cortisol rhythm, and next-day energy budget.

*Scope and rationale.*
The Borbély two-process model is the standard quantitative framework for sleep regulation. It omits REM/NREM cycling, specific neurotransmitter dynamics (orexin, GABA), and sleep microarchitecture. These omissions are acceptable for predicting the ME/CFS sleep phenotype (unrefreshing sleep, excessive daytime sleepiness) but insufficient for modeling specific sleep disorders (narcolepsy, sleep apnea).

*Falsification criteria.*
The model predicts that unrefreshing sleep in ME/CFS is driven by reduced $r_(upright("decay"))$ (impaired sleep pressure clearance) and elevated $r_(upright("build"))$ (faster accumulation). *Falsified if*: polysomnography shows normal slow-wave sleep quantity and quality in patients with severe unrefreshing sleep (would indicate that the subjective experience is driven by central perception rather than objective sleep physiology).

*Clinical implications.*
*Whom to treat*: all ME/CFS patients with unrefreshing sleep (the vast majority). *How*: the model predicts that sleep hygiene (regular schedule to preserve circadian amplitude $C_1$) is a necessary but insufficient intervention. Improving mitochondrial function (reducing adenosine accumulation rate, i.e., $r_(upright("build"))$) is predicted to improve sleep quality _without sleep-targeted medication_---a testable prediction. For patients with severely blunted $C_1$: melatonin at DLMO-appropriate timing, bright light therapy in the morning. The model predicts that sedative medications (benzodiazepines, Z-drugs) increase total sleep time but do not address $r_(upright("decay"))$, explaining why they rarely improve the "unrefreshing" quality.

