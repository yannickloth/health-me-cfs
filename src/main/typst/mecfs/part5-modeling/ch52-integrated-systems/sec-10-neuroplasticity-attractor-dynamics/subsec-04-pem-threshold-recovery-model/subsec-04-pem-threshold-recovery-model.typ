#import "../../../../shared/environments.typ": *

=== PEM Threshold Recovery Model
<sec:pem-threshold-recovery>

The PEM kindling hypothesis (Section @sec:pem-kindling, Chapter @ch:neurological) proposed that each crash lowers the subsequent PEM threshold: $T(n) = T(0) slash alpha^n$. With anti-kindling therapy, a recovery term appears:

$
T(n+1) = frac(T(n), alpha) + beta dot.op (T_max - T(n))
$ <eq:pem-threshold-recovery>

where $beta$ is the anti-kindling recovery rate (e.g., from levetiracetam or lithium). At steady state ($T(n+1) = T(n) = T_upright("ss")$), rearranging gives:

$
T_upright("ss") = frac(beta dot.op T_max, 1 - 1 slash alpha + beta)
$

*Clinical interpretation:*

- For any $alpha > 1$ and $beta > 0$, $T_upright("ss") > 0$ --- anti-kindling therapy always prevents complete collapse.
- The steady-state threshold increases with $beta$ (stronger anti-kindling) and decreases with $alpha$ (more severe kindling per crash).
- If $beta = 0$ (no treatment): $T_upright("ss") = 0$ --- inevitable collapse to zero threshold (severe disease).
- The clinically meaningful question is whether $T_upright("ss")$ exceeds a functional threshold $T_upright("func")$ below which activities of daily living become impossible.

For the illustrative values from the original hypothesis ($alpha = 1.5$), anti-kindling alone ($beta = 0.3$) gives:

$
T_upright("ss") = frac(0.3 dot.op T_max, 1 - 0.667 + 0.3) = frac(0.3 dot.op T_max, 0.633) approx 0.47 dot.op T_max
$

With strict pacing reducing $alpha$ from 1.5 to 1.2 (fewer and milder crashes), the combined effect yields:

$
T_upright("ss") = frac(0.3 dot.op T_max, 1 - 0.833 + 0.3) = frac(0.3 dot.op T_max, 0.467) approx 0.64 dot.op T_max
$

This predicts stabilization at approximately 64% of maximum threshold---a substantial functional improvement that depends critically on both pacing (reducing $alpha$) and pharmacological anti-kindling (increasing $beta$). Pacing alone ($beta = 0$) gives $T_upright("ss") = 0$; anti-kindling alone ($alpha = 1.5$, $beta = 0.3$) gives $T_upright("ss") approx 0.47 dot.op T_max$. The combination achieves more than either alone because pacing reduces the denominator while anti-kindling increases the numerator.

