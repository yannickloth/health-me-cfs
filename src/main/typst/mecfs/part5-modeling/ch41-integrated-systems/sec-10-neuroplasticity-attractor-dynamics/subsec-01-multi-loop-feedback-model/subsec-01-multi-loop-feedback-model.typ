#import "../../../../shared/environments.typ": *

=== Multi-Loop Feedback Model

The core observation motivating this model is that ME/CFS appears to be maintained by multiple self-reinforcing feedback loops operating simultaneously. None of the proposed loops has been demonstrated as a complete closed loop in ME/CFS patients---each is assembled from cross-disease evidence (see individual hypothesis limitations in Chapters @ch:neurological and @ch:endocrine). The model therefore explores the *consequences* of assuming these loops exist, not their existence per se. The neuroplasticity-relevant loops are:

$
"Loop 1 (Kindling):" quad &upright("PEM") arrow.r upright("microglial priming") arrow.r upright("lower threshold") arrow.r upright("more PEM") \
"Loop 2 (T3 depletion):" quad &upright("inflammation") arrow.r arrow.b upright("DIO2") arrow.r arrow.b upright("T3") arrow.r arrow.b upright("BDNF") arrow.r upright("M1 microglia") arrow.r upright("inflammation") \
"Loop 3 (Epigenetic lock):" quad &upright("chronic inflammation") arrow.r upright("HDAC-mediated silencing") arrow.r arrow.b upright("plasticity genes") \
"Loop 4 (Energy failure):" quad &arrow.b upright("T3") arrow.r arrow.b upright("mitochondrial OXPHOS") arrow.r arrow.b upright("ATP") arrow.r upright("impaired immune regulation")
$

We formalize these as a coupled ODE system. Let $K$ represent the kindling state (cumulative microglial priming), $T$ the effective brain T3 level, $M$ the microglial activation level, and $E$ the epigenetic consolidation depth:

$
frac(d K, d t) &= alpha dot.op P(t) - beta dot.op K dot.op u_upright("AK")(t) - gamma dot.op K \
frac(d T, d t) &= delta dot.op (T_0 - T) - epsilon dot.op M dot.op T + zeta dot.op u_upright("T3")(t) \
frac(d M, d t) &= eta dot.op K + theta dot.op (1 - T slash T_0) - mu dot.op M dot.op u_upright("AI")(t) - nu dot.op M \
frac(d E, d t) &= kappa dot.op M dot.op (1 - E) - lambda_0 dot.op E - lambda_1 dot.op E dot.op u_upright("HDAC")(t)
$ <eq:neuroplasticity-attractor>

where:

- $P(t)$ is the PEM event rate (crashes per unit time)
- $u_upright("AK")(t)$ is the anti-kindling intervention strength (e.g., levetiracetam)
- $u_upright("T3")(t)$ is the exogenous T3 supplementation rate
- $u_upright("AI")(t)$ is the anti-inflammatory intervention strength (e.g., LDN, levetiracetam)
- $u_upright("HDAC")(t)$ is the HDAC inhibitor intervention strength (e.g., valproate)
- $T_0$ is the healthy baseline brain T3 level
- Greek letters ($alpha, beta, gamma, delta, epsilon, zeta, eta, theta, mu, nu, kappa, lambda_0, lambda_1$) are rate constants; all are positive. Parameter estimation requires longitudinal multi-biomarker data not currently available for ME/CFS (see Limitation box at end of section)

