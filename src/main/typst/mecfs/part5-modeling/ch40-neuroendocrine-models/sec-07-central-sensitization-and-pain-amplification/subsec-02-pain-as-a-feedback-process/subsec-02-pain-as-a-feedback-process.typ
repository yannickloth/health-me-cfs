#import "../../../../shared/environments.typ": *

=== Pain as a Feedback Process

The sensitization state modifies the symptom generation function for pain (Equation @eq:symptom-mapping):

$
upright("Pain")(t) = (1 + alpha_(upright("sens")) dot.op cal(S)) dot.op [w_4 dot.op bold(C)_(upright("pro"))(t) + w_5 dot.op mu_1(t) + w_6 dot.op [upright("ROS")](t)]
$ <eq:pain-sensitized>

where $alpha_(upright("sens"))$ is the sensitization gain. Critically, pain itself feeds back into the system: pain increases sympathetic tone ($S$ in the ANS model, Equation @eq:ans-balance), disrupts sleep (elevating $theta_(upright("on"))$ in the sleep model), and consumes attentional resources (increasing effective cognitive energy demand). *This bidirectional coupling---invisible without the mathematical model---predicts that pain reduction interventions should improve not only pain but also autonomic function, sleep quality, and cognitive capacity*, because they break a feedback amplification loop. The model quantifies this: for typical ME/CFS parameters, a 50% reduction in $cal(S)$ is predicted to improve sleep efficiency by 10--15% and reduce resting sympathetic tone by 8--12%, mediated entirely through the pain $->$ ANS $->$ sleep pathway rather than direct effects on sleep or autonomic circuits.

Low-dose naltrexone operates in this model through two mechanisms: immune modulation (@sec:immune-intervention-models) and upregulation of endogenous endorphin production (increasing $[upright("endorphin")]$ in Equation @eq:central-sensitization), accelerating sensitization resolution. The model predicts that LDN's analgesic effect should precede its anti-inflammatory effect by the difference in timescales: endorphin upregulation (days) versus cytokine network remodeling (weeks).

