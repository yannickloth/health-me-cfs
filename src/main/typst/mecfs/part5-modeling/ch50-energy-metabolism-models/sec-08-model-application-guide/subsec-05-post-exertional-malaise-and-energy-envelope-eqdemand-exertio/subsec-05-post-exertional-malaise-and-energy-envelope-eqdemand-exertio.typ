#import "../../../../shared/environments.typ": *

=== Post-Exertional Malaise and Energy Envelope (@eq:demand-exertion and @eq:energy-envelope)

*Measurements required.* (1) Two-day CPET: peak VO₂, anaerobic threshold, day-2 decrement (why: directly constrains $J_(upright("production,max"))$ and the ROS-mediated damage magnitude). (2) Resting metabolic rate by indirect calorimetry (why: constrains $E_(upright("basal"))$). (3) Daily activity data from wearable accelerometry/HR monitor (why: estimates $J_(upright("demand"))(t)$ for energy envelope calculation). (4) CRP, cytokine panel (why: estimates $E_(upright("repair"))$ through the immune energy demand). (5) Patient-reported PEM onset timing and severity after standardized exertion (why: constrains $tau_(upright("PEM"))$ and the damage threshold).

*Worked example.* A patient with peak VO₂ = 18 mL/kg/min (healthy age-matched: 35) has $J_(upright("production,max")) approx 51%$ of normal. Resting metabolic rate = 1500 kcal/day ($E_(upright("basal"))$). With elevated CRP suggesting $E_(upright("repair")) approx 200$ kcal/day (vs. ~50 healthy). Available energy budget:

$
E_(upright("budget")) = (0.51 times 2400) - 1500 - 200 = 1224 - 1500 - 200 = -476 upright(" kcal/day")
$

A _negative_ budget means the patient cannot meet basic metabolic demands at this severity level, explaining why severe ME/CFS patients experience symptoms at rest. In practice, the body reduces $E_(upright("basal"))$ (hypometabolism) and $E_(upright("repair"))$ (deferred repair, accumulating damage) to achieve a precarious balance. For a moderate patient with peak VO₂ = 25 mL/kg/min: $E_(upright("budget")) = (0.71 times 2400) - 1500 - 100 = 104$ kcal/day---approximately 1 hour of light activity.

*Inter-model dependencies.* _Inputs_: $J_(upright("production,max"))$ from ETC model, $E_(upright("repair"))$ from immune energy demand (@ch:immune-system-models), damage variables from ROS model. _Outputs_: PEM triggering threshold feeds temporal dynamics (@ch:temporal-evolution), pacing optimization (@ch:predictive-applications).

*Scope and rationale.* The PEM model addresses _why_ exertion causes delayed symptom worsening in ME/CFS but not in healthy individuals. The healthy baseline (@sec:healthy-exercise-response) establishes what _should_ happen after exertion; the PEM model describes what happens instead when the branch-point condition $R_(upright("headroom")) < R_(upright("crit"))$ (@eq:branch-point) is met. It deliberately omits the neural and psychological components of exercise intolerance (central fatigue, kinesiophobia) to focus on the metabolic mechanism. These omissions are acknowledged in the ATP Threshold Hypothesis (certainty: 0.45).

*Falsification criteria.* The model predicts that PEM severity correlates with the product of exertion intensity and duration above the patient's anaerobic threshold, mediated by ATP depletion depth. *Falsified if*: (1) PEM severity does not correlate with measured ATP depletion (by $"^{31}P"-"MRS"$) during and after exertion; (2) interventions that demonstrably improve mitochondrial ATP capacity (confirmed by CPET improvement) do not reduce PEM susceptibility; or (3) the 12--72 h delay cannot be explained by the ROS/inflammatory cascade timescale (alternative mechanisms such as central sensitization dominate).

*Clinical implications.* The energy envelope calculation gives a _patient-specific daily activity budget_. Clinicians can use CPET-derived peak VO₂ and resting metabolic rate to compute $E_(upright("budget"))$ and translate it to practical units (steps, minutes of activity at specified heart rate zones). Patients with negative budgets require strict rest; those with small positive budgets benefit from structured pacing within the budget. The model predicts that interventions increasing $J_(upright("production,max"))$ (mitochondrial support) or decreasing $E_(upright("repair"))$ (anti-inflammatory treatment) both widen the energy envelope, suggesting combination benefit.

