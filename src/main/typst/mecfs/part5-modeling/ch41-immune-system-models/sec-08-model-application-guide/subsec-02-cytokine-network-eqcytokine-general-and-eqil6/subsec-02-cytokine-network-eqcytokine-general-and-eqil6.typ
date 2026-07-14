#import "../../../../shared/environments.typ": *

=== Cytokine Network (@eq:cytokine-general and @eq:il6)

*Measurements required.*
(1) Multiplex cytokine panel: IL-1$beta$, IL-6, TNF-$alpha$, IFN-$gamma$, IL-10, TGF-$beta$ at minimum (why: the six tracked cytokines).
(2) Disease duration (why: the model predicts distinct cytokine profiles for $lt.eq 3$ years vs. $> 3$ years).
(3) Symptom severity composite (why: validates the Montoya correlation between IL-6/TNF-$alpha$ and severity @Montoya2017).

*Worked example.*
Early disease ($< 3$ years): elevated TNF-$alpha$ (15 pg/mL vs. 5 healthy) and IL-6 (8 pg/mL vs. 2) with IL-10 beginning to rise (6 pg/mL vs. 2). The IL-6 positive feedback loop (IL-6 $->$ Th17 $->$ more IL-6) operates with loop gain $> 1$, sustaining the high-inflammation attractor. At $> 3$ years: IL-10 reaches 12 pg/mL, partially suppressing TNF-$alpha$ to 8 pg/mL, but the "remodeled" state has IL-6 still elevated (6 pg/mL) because the Th17 compartment expansion is maintained by IL-6-driven differentiation. The model predicts this transition occurs when $[upright("IL-10")]$ exceeds the half-inhibition constant for TNF-$alpha$ production ($K_i^(upright("IL-10")) approx 8$ pg/mL).

*Inter-model dependencies.*
_Inputs_: immune cell populations (NK, T cell, monocyte activation states). _Outputs_: cytokine levels drive BBB permeability (@sec:bbb-model), microglial activation (@sec:microglia-model), IDO upregulation (@ch:neuroendocrine-models), HPA axis modulation (@ch:integrated-systems), and symptom generation (@ch:integrated-systems).

*Scope and rationale.*
Six cytokines are tracked from the $>$50 known to be relevant. These six were selected because they are: (a) consistently altered in ME/CFS studies, (b) measurable by standard clinical assays, and (c) represent the core pro-inflammatory/anti-inflammatory balance. Omitted cytokines (IL-2, IL-4, IL-17A, GM-CSF) could be added as the model is extended but would require additional cell population equations to drive their production.

*Falsification criteria.*
The model predicts a bifurcation from high-inflammation to remodeled attractor at $~$3 years, driven by IL-10 feedback. *Falsified if*: longitudinal cytokine tracking in ME/CFS patients shows no systematic transition with disease duration, or if the transition occurs at times inconsistent with IL-10 accumulation dynamics.

*Clinical implications.*
Early-disease patients (high TNF-$alpha$, low IL-10) are predicted to respond to anti-inflammatory interventions (LDN, anti-TNF) that break the positive feedback loop before the remodeled state consolidates. Late-disease patients (elevated IL-10, moderate TNF-$alpha$) require interventions targeting the Th17 compartment or the IL-6 loop specifically, as broad anti-inflammatory therapy may further suppress the already-active IL-10 pathway without addressing the persistent IL-6/Th17 cycle.

