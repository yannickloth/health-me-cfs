#import "../../../shared/environments.typ": *

== Prognosis Prediction
<sec:prognosis-prediction>

Predicting disease trajectory is among the most clinically valuable applications of the model. Patients and clinicians need to know whether the disease is likely to improve, remain stable, or worsen. The damage accumulation model (Equation @eq:damage-accumulation) provides a framework: the sign and magnitude of $d D_"total" \/ d t$ at presentation, estimated from serial biomarker measurements over 3--6 months, predicts the trajectory.

Risk stratification assigns patients to prognostic categories based on model-derived indices:

+ *Repair-dominant* ($d D \/ d t < 0$): favorable prognosis; prioritize activity management to sustain the repair advantage
+ *Equilibrium* ($d D \/ d t approx 0$): stable prognosis; focus on preventing perturbations (infections, overexertion) that could tip the balance toward damage dominance
+ *Damage-dominant* ($d D \/ d t > 0$): unfavorable prognosis; aggressive intervention warranted to reduce damage rate (anti-inflammatory, antioxidant) and increase repair capacity (metabolic support)

#include "warnings/prognosis-prediction-is-not-prognosis-determination.typ"

