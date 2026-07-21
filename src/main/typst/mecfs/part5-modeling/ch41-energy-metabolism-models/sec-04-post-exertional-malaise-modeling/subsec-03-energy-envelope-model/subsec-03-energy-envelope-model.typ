#import "../../../../shared/environments.typ": *

=== Energy Envelope Model
<sec:energy-envelope-model>

The energy envelope concept @jason2012energy @jason2009energy is formalized as a constraint on cumulative daily energy expenditure. Define the available energy budget $E_(upright("budget"))$ as the maximum sustainable daily ATP turnover without triggering PEM:

$
E_(upright("budget")) = integral_0^(24 upright("h")) J_(upright("production,max"))(t) d t - E_(upright("basal")) - E_(upright("repair"))
$ <eq:energy-envelope>

where $E_(upright("basal"))$ is the minimum energy required for vital functions and $E_(upright("repair"))$ is the energy allocated to ongoing cellular repair. The energy envelope for activity is $E_(upright("budget"))$; exceeding it triggers the PEM cascade. In ME/CFS, all three terms are unfavorable: $J_(upright("production,max"))$ is reduced, $E_(upright("basal"))$ may be increased (due to chronic immune activation), and $E_(upright("repair"))$ is elevated (due to ongoing oxidative damage). Pacing strategies aim to keep cumulative daily expenditure below $E_(upright("budget"))$, which the model predicts will prevent PEM episodes and, over time, may allow partial recovery of mitochondrial function by reducing ROS-mediated damage.

#include "hypotheses/atp-threshold-model-of-pem.typ"

