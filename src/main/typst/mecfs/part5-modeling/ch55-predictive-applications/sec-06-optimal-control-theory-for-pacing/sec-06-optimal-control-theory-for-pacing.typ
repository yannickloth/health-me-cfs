#import "../../../shared/environments.typ": *

== Optimal Control Theory for Pacing
<sec:optimal-control-pacing>

The pacing optimization in Equation @eq:pacing-optimization treats energy expenditure as a static budget constraint. Optimal control theory provides a fundamentally more powerful formulation by treating the patient's physiological state as a dynamical system with activity as the control input, enabling optimization over trajectories rather than budgets.

#include "subsec-01-pontryagin-maximum-principle-formulation/subsec-01-pontryagin-maximum-principle-formulation.typ"
#include "subsec-02-hamilton-jacobi-bellman-approach-for-stochastic-pacing/subsec-02-hamilton-jacobi-bellman-approach-for-stochastic-pacing.typ"
