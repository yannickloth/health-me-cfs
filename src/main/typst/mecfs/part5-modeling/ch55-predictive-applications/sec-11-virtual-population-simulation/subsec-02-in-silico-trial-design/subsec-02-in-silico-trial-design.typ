#import "../../../../shared/environments.typ": *

=== In Silico Trial Design

Virtual clinical trials simulate treatment assignment across the virtual population:

+ *Enrichment optimization*: Test all possible biomarker-based enrollment criteria to identify the subpopulation with maximal treatment response. For each candidate treatment, the model predicts the optimal enrichment biomarker and cutoff that maximizes statistical power---potentially reducing required sample size by 60--80% relative to unselected enrollment
+ *Dose--response characterization*: Simulate dose escalation across the virtual population to predict the population-level dose--response curve, identify the minimum effective dose, and estimate the therapeutic index
+ *Duration optimization*: Simulate trials of varying duration to determine the minimum trial length needed to detect a treatment effect, accounting for the slow dynamics of damage accumulation and immune remodeling (the model predicts that many ME/CFS interventions require $gt.eq$12 weeks to reach measurable steady-state effect, explaining the failure of shorter trials)
+ *Responder identification*: Post hoc analysis of virtual trial results identifies the parameter combinations (translatable to biomarker profiles) that predict treatment response, enabling prospective responder enrichment in real trials

#include "model-insights/trial-failure-prediction.typ"

