#import "../../../../shared/environments.typ": *

=== Structural Identifiability

Before fitting a model to data, it is essential to verify that the model structure permits unique parameter estimation in principle (structural identifiability) and in practice given measurement noise (practical identifiability). A structurally unidentifiable model contains parameters or parameter combinations that cannot be determined from any amount of data, indicating model overparameterization. Techniques for identifiability analysis include the differential algebra approach, the generating series method, and profile likelihood analysis. All models in Part V are accompanied by identifiability assessments in Appendix @app:mathematical-details.

#include "open-questions/validation-standards-for-mecfs-models.typ"

#include "open-questions/oq-bayesian-bias-correction.typ"

