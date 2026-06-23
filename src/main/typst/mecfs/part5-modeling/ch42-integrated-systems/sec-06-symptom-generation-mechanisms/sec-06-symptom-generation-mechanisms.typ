#import "../../../shared/environments.typ": *

== Symptom Generation Mechanisms
<sec:symptom-generation>

The integrated model generates physiological state trajectories, but clinical relevance requires mapping these to symptoms. Symptom generation functions translate state variables to symptom severity scores:

$
upright("Fatigue")(t) &= w_1 dot.op (1 - [upright("ATP")] \/ [upright("ATP")]_upright("healthy")) + w_2 dot.op bold(C)_upright("pro")(t) + w_3 dot.op (1 - F \/ F_upright("healthy")) \
upright("Pain")(t) &= w_4 dot.op bold(C)_upright("pro")(t) + w_5 dot.op mu_1(t) + w_6 dot.op [upright("ROS")](t) \
upright("Cognitive")(t) &= w_7 dot.op bold(C)_upright("CNS")(t) + w_8 dot.op (1 - [upright("DA")] \/ [upright("DA")]_upright("healthy")) + w_9 dot.op (1 - upright("CBF") \/ upright("CBF")_upright("healthy"))
$ <eq:symptom-mapping>

where $bold(C)_upright("pro") = [upright("IL-6")] + [upright("TNF-")alpha] + [upright("IL-1")beta]$ is the aggregate pro-inflammatory cytokine level, CBF is cerebral blood flow (proportional to cardiac output and cerebrovascular regulation), and $w_1, dots, w_9$ are symptom-weighting coefficients estimated from patient-reported outcome correlations. These mapping functions are deliberately linear and phenomenological: they do not claim to model the neurobiology of symptom perception but provide a pragmatic interface between the mechanistic model and clinical observations.

#include "limitations/symptom-mapping-limitations.typ"

#include "open-questions/emergent-cycling-behavior.typ"

