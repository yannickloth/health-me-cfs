#import "../../../shared/environments.typ": *

== Implementation Roadmap
<sec:implementation-roadmap>

Clinical translation of ME/CFS models requires a staged approach, progressing from research tools to clinical prototypes to validated clinical instruments.

+ *Stage 1* (current): Model development and in silico validation. Demonstrate that the models reproduce known ME/CFS phenomenology (CPET findings, cytokine patterns, treatment response timescales). Identify key data gaps through sensitivity and identifiability analysis. This is the stage represented by the present chapter.
+ *Stage 2* (near-term): Retrospective validation against existing datasets. Fit models to published cohort data and evaluate predictive accuracy for held-out observations. Requires access to longitudinal multi-omics datasets with clinical outcome data.
+ *Stage 3* (medium-term): Prospective validation. Design and conduct studies that test specific model predictions---e.g., does the predicted day-2 CPET decrement match the observed decrement for patients with specific metabolomic profiles?
+ *Stage 4* (long-term): Clinical tool development. Build software implementations of the validated model with clinical user interfaces, integrate with electronic health records and wearable devices, and conduct clinical utility trials.

#include "limitations/gap-between-models-and-clinical-practice.typ"

#include "proposals/sigmoid-cci-orthostatic-severity-model.typ"
