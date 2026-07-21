#import "../../../../shared/environments.typ": *

=== Activity--Symptom Relationships
<sec:activity-symptom>

The relationship between activity and symptoms in ME/CFS is nonlinear and delayed, making it difficult for patients to identify safe activity levels. The model formalizes this relationship through the energy envelope framework (Section @sec:energy-envelope-model). For a given activity profile $phi(t)$, the model predicts:

$
upright("Symptom")(t + tau_upright("PEM")) = f(integral_0^t J_upright("demand") (s) d s, space E_upright("budget"), space [upright("ATP")](t), space bold(C)_upright("pro") (t))
$ <eq:activity-symptom>

where $tau_upright("PEM") in [12, 72]$ hours is the PEM delay and $f$ is a threshold function that produces minimal symptoms when cumulative demand stays below $E_upright("budget")$ but escalates rapidly above it. This nonlinear threshold explains the common patient experience that small increases in activity beyond a critical level produce disproportionately large symptom responses.

