#import "../../../shared/environments.typ": *

#open-question(title: [Bifurcation Analysis of ISR Parameters: Predicting the Healthy vs ME/CFS Attractor Switch])[
With ISR state variables $I(t)$ and GADD34 dephosphorylation rate $k_"dephos"$, the PEM ODE system admits bifurcation analysis. Key parameters: $k_"dephos"$ (dephosphorylation rate, reduced in ME/CFS) and $S_0$ (baseline stress influx, increased in ME/CFS).

*Predicted bifurcation structure:* In the $(k_"dephos", S_0)$ parameter plane, a fold bifurcation exists separating:
- *Monostable healthy attractor:* $I_"ss" approx 0$, $E_"max" approx E_"baseline"$
- *Bistable ME/CFS region:* stable high-$I$ and low-$I$ attractors; hysteresis in PEM recovery
- *Monostable ME/CFS attractor:* $I_"ss" >> 0$, chronically reduced $E_"max"$

*Therapeutic prediction:* Interventions that increase $k_"dephos"$ (GADD34 support) or decrease $S_0$ (reduce chronic stress influx) collapse the high-$I$ attractor and enable transition to the low-$I$ regime. The bifurcation diagram predicts why ME/CFS is difficult to reverse by single interventions: only moving across the fold bifurcation boundary produces lasting recovery.

*Certainty:* 0.35 — bistability has been proposed in chronic disease ODE models; specific ISR parameters require empirical constraint. Qualitatively motivated by clinical observation of hysteresis in ME/CFS severity trajectories.
] <oq:isr-bifurcation-analysis>
