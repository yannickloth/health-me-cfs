#import "../../../shared/environments.typ": *

#open-question(title: [Extending the PEM ODE Model with ISR State Variables I(t) and A(t)])[
*Proposed additions to the existing energy-depletion differential equation system:*

Let $I(t)$ = phospho-eIF2α level (normalised, 0–1; compartment: skeletal muscle) and $A(t)$ = ATF4 transcriptional activity (normalised, 0–1; lagged response to $I$).

Proposed dynamics:
- $"dI"/"dt" = k_"kin" dot.op S(t) - k_"dephos" dot.op G(t) dot.op I$ where $S(t)$ is exertional stress signal and $G(t)$ is GADD34 activity
- $"dA"/"dt" = k_"atf4" dot.op I - k_"decay" dot.op A$
- Energy ceiling: $E_"max"(t) = E_"baseline" dot.op (1 - alpha dot.op A(t))$ — chronic ATF4 suppresses maximal attainable ATP production

*Predicted behaviour:* Exertion above threshold → $I(t)$ peak at 0–24 h (Phase 1, protective); $A(t)$ peak at 24–72 h (Phase 2, maladaptive if $A$ is already elevated). Resolution: $G(t)$ dephosphorylation — if GADD34 is impaired, $I$ returns to elevated baseline rather than zero.

*Falsifiable prediction:* Fit model to time-resolved muscle biopsy data (CPET protocol: pre/+6h/+24h/+48h/+7d). Expect parameter $alpha > 0$ and lagged $A$ response matching PEM temporal kinetics. In healthy controls: $G(t) dot.op I arrow.r 0$ by 72 h; in ME/CFS: $I_"baseline" > 0$ persistent.

*Certainty that the ISR state variable extension improves model fit:* 0.45 — the PEM temporal pattern is the primary supporting evidence; model parameters are unconstrained without biopsy data.
] <oq:isr-ode-state-variables>
