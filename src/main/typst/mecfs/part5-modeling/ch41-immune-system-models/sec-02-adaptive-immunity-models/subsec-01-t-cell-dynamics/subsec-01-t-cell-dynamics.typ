#import "../../../../shared/environments.typ": *

=== T Cell Dynamics
<sec:tcell-model>

T cell dysfunction in ME/CFS includes altered CD4⁺\/CD8⁺ ratios, increased expression of exhaustion markers (PD-1, Tim-3), and reduced proliferative capacity. The T cell model distinguishes naïve ($T_n$), effector ($T_e$), memory ($T_m$), and exhausted ($T_(upright("ex"))$) populations:

$
frac(d T_n, d t) &= s_T - k_(upright("prime")) dot.op A(t) dot.op T_n - d_n T_n \
frac(d T_e, d t) &= k_(upright("prime")) dot.op A(t) dot.op T_n + rho_T T_e (1 - frac(T_e, T_(upright("max")))) - k_(upright("mem")) T_e - k_(upright("Tex")) T_e - d_e T_e \
frac(d T_m, d t) &= k_(upright("mem")) T_e - k_(upright("reactivate")) dot.op A(t) dot.op T_m - d_m T_m \
frac(d T_(upright("ex")), d t) &= k_(upright("Tex")) T_e - d_(upright("ex")) T_(upright("ex"))
$ <eq:tcell-dynamics>

where $A(t)$ is the antigen signal (from infection or autoimmune stimulation), $rho_T$ is the proliferation rate with logistic growth, $k_(upright("mem"))$ is the rate of memory cell formation, and $k_(upright("Tex"))$ is the exhaustion rate. In ME/CFS, persistent antigenic stimulation (from chronic viral reactivation or autoimmune processes) drives continuous $T_n -> T_e$ priming and accelerated $T_e -> T_(upright("ex"))$ exhaustion. The model predicts an expanded $T_(upright("ex"))$ compartment with reduced effector function---consistent with the immunological phenotype observed in ME/CFS patients @Che2025.

