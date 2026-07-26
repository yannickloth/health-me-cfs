#import "../../../shared/environments.typ": *

== Viral Reactivation Models
<sec:viral-reactivation-models>

Periodic reactivation of latent herpesviruses (EBV, HHV-6, CMV) has been implicated in ME/CFS symptom exacerbation. Viral reactivation is inherently stochastic: the switch from latent to lytic infection is a rare event governed by small numbers of viral transcription factors. The model uses a stochastic framework (@eq:master-equation) for the latent--lytic transition and deterministic ODEs for the subsequent immune response.

The viral load $V$ follows:

$
frac(d V, d t) = r_V dot.op V dot.op (1 - frac(V, V_(upright("max")))) - k_(upright("clear")) dot.op N_a dot.op V - k_(upright("CTL")) dot.op T_e^(upright("CD8")) dot.op V
$ <eq:viral-dynamics>

where $r_V$ is the viral replication rate, $k_(upright("clear"))$ is the NK-mediated clearance rate, and $k_(upright("CTL"))$ is the cytotoxic T lymphocyte (CTL) killing rate. The latent-to-lytic transition is modeled as a Poisson process with rate $lambda_(upright("react"))$ that increases under conditions of immune suppression, metabolic stress, or elevated cortisol:

$
lambda_(upright("react")) = lambda_0 dot.op frac(K_(upright("immune")), K_(upright("immune")) + N_a + T_e^(upright("CD8"))) dot.op (1 + alpha_(upright("stress")) dot.op [upright("Cortisol")])
$ <eq:reactivation-rate>

The model predicts that the reduced NK cell activity and T cell exhaustion characteristic of ME/CFS increase the reactivation rate $lambda_(upright("react"))$, producing more frequent viral flares that further stimulate the immune system---a positive feedback loop between immune dysfunction and viral persistence. EBV-specific findings, including recent evidence of EBV-driven demyelination mechanisms @Pless2026ebv_demyelination, suggest that viral reactivation may have tissue-specific consequences beyond generalized immune stimulation.

