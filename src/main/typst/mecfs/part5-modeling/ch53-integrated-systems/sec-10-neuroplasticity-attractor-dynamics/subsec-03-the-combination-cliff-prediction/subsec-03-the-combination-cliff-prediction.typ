#import "../../../../shared/environments.typ": *

=== The "Combination Cliff" Prediction
<sec:combination-cliff>

The most consequential prediction of this model concerns the effect of multi-target interventions. Define the *effective loop gain* $G$ as the product of individual loop gains:

$
G = G_1 dot.op G_2 dot.op G_3 dot.op G_4
$

where each $G_i$ depends on the corresponding intervention: $G_1(u_upright("AK"))$, $G_2(u_upright("T3"))$, $G_3(u_upright("HDAC"))$, $G_4(u_upright("AI"))$. The disease attractor is stable when $G > 1$ and unstable when $G < 1$.

Each intervention reduces its corresponding loop gain: $G_i(u_i) = G_i(0) dot.op (1 - u_i slash u_(i,max))$ (linear dose-response for simplicity). The total intervention effect is *multiplicative*, not additive:

$
G(bold(u)) = product_(i=1)^4 G_i(0) dot.op (1 - u_i / u_(i,max))
$

This multiplicative structure predicts a *combination cliff*: if the disease attractor requires $G > 1$ for stability, then addressing each loop partially can push $G$ below 1 even though no single loop is fully broken. Suppose each untreated loop has gain $G_i(0) = 1.5$ (50% amplification per cycle). Four untreated loops give $G = 1.5^4 = 5.06$ (strongly stable attractor). Reducing each loop gain by 40% ($G_i arrow.r 0.6 dot.op G_i(0) = 0.9$):

$
G = 0.9^4 = 0.66 < 1 quad "(attractor collapses)"
$

while addressing only one loop ($G_1 arrow.r 0.9$, others unchanged):

$
G = 0.9 dot.op 1.5^3 = 3.04 quad "(attractor persists)"
$

#include "speculations/spec-combination-cliff.typ"

