#import "../../../../../shared/environments.typ": *

#hypothesis(title: [Recovery Horizon: A Computable Patience Metric])[
The piecewise recovery scaling (Table @tab:recovery-regimes) enables computation of the expected time for a patient at a given $B$ to traverse one sub-level band. In the cliff regime, $tau_upright("rec")$ rises steeply; in the floor regime, it plateaus at a high constant. Both are dramatically longer than in the plateau regime where healthy and mild patients reside. The qualitative pattern:

#figure(
  table(
    columns: (auto, auto, auto, auto),
    [*Sub-level*], [*$B$ (midpoint)*], [*Regime*], [*Recovery horizon (qualitative)*],
    [Mild], [0.70], [Plateau], [Days to weeks --- $tau_upright("rec")$ set by $r$ alone; ATP near-maximal],
    [Moderate], [0.50], [Cliff], [Weeks to months --- ATP cliff amplifies every $Delta B$ loss],
    [Severe], [0.25], [Cliff (steep)], [Months --- near $Delta Psi$ threshold; disproportionate $tau_upright("rec")$ rise],
    [ES-A], [0.09], [Floor], [Months to years --- repair machinery collapsed; high constant $tau_upright("rec")$],
    [ES-C], [0.05], [Floor], [Years --- similar per-band cost to ES-A; constant floor regime],
    [ES-E], [0.01], [Floor], [Years --- same floor constant; not quadratically worse than ES-C],
  ),
  caption: [Qualitative recovery horizon per severity band. Unlike the $1\/B^2$ approximation, the biophysical model predicts a floor in per-band recovery cost at extremely severe levels rather than unbounded divergence.],
) <tab:recovery-horizon>

_(Certainty: 0.45.)_ Treatment trials in extremely severe patients that use standard 3--6 month endpoints will systematically fail to detect genuine improvement, even for effective interventions. Quantitative calibration requires numerical integration of the coupled ODE system with patient-specific parameters.

*Falsifiable prediction:* Within-person recovery time plotted against $B$ on a log-log scale should show two slope changes: a steepening in the cliff regime ($B approx 0.15$--$0.65$) and a flattening in the floor regime ($B lt.eq 0.10$). A pure power law ($tau prop 1\/B^n$ with constant $n$) at all severity levels is falsified by the piecewise biophysics.
] <hyp:recovery-horizon>
