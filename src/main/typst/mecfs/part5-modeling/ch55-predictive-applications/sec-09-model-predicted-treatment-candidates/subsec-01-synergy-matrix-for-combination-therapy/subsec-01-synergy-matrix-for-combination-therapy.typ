#import "../../../../shared/environments.typ": *

=== Synergy Matrix for Combination Therapy

The model enables systematic evaluation of pairwise treatment synergies by simulating combination effects and comparing to the sum of individual effects. Define the synergy coefficient for treatments $A$ and $B$:

$
cal(S)_(A B) = frac(Delta Y_(A+B), Delta Y_A + Delta Y_B) - 1
$ <eq:synergy-coefficient>

where $Delta Y$ is the improvement in symptom composite. $cal(S)_(A B) > 0$ indicates synergy (superadditive), $cal(S)_(A B) = 0$ indicates additivity, and $cal(S)_(A B) < 0$ indicates antagonism. The predicted synergy matrix for the top treatment pairs is:

- *Strongest predicted synergies* ($cal(S) > 0.3$):
  - CoQ10 + nattokinase ($cal(S) approx 0.45$): mitochondrial capacity $times$ oxygen delivery---multiplicative because O₂ is substrate for the enhanced ETC
  - LDN + low-dose hydrocortisone ($cal(S) approx 0.38$): immune modulation $times$ HPA restoration---reduces both inflammatory drive and cortisol-mediated immune dysregulation
  - Sapropterin + LDN ($cal(S) approx 0.35$): BH4 repletion $times$ reduced immune BH4 consumption---LDN reduces iNOS-driven BH4 oxidation (Equation @eq:bh4-dynamics), making exogenous BH4 more effective
- *Predicted antagonisms* ($cal(S) < -0.1$):
  - High-dose antioxidants + exercise therapy ($cal(S) approx -0.25$): antioxidants blunt the ROS signaling required for exercise-induced mitochondrial biogenesis (Equation @eq:biogenesis)
  - Immunosuppressants + immune checkpoint activators ($cal(S) approx -0.40$): opposing mechanisms on the same pathway

#include "model-insights/synergy-prediction-requires-nonlinear-models.typ"

