#import "../../../../shared/environments.typ": *

=== Mast Cell Degranulation Model

The model tracks resting mast cells ($upright("MC")_r$), primed mast cells ($upright("MC")_p$), and degranulated mast cells ($upright("MC")_d$), with degranulation releasing histamine ($[upright("His")]$), tryptase, and prostaglandin D₂ (PGD₂):

$
frac(d upright("MC")_r, d t) &= s_(upright("MC")) - k_(upright("prime"))(bold(S)_(upright("MC"))) dot.op upright("MC")_r + k_(upright("restab")) dot.op upright("MC")_d - d_(upright("MC")) dot.op upright("MC")_r \
frac(d upright("MC")_p, d t) &= k_(upright("prime"))(bold(S)_(upright("MC"))) dot.op upright("MC")_r - k_(upright("degran"))(bold(T)_(upright("MC"))) dot.op upright("MC")_p - k_(upright("deact")) dot.op upright("MC")_p \
frac(d upright("MC")_d, d t) &= k_(upright("degran"))(bold(T)_(upright("MC"))) dot.op upright("MC")_p - k_(upright("restab")) dot.op upright("MC")_d
$ <eq:mast-cell-dynamics>

where $s_(upright("MC"))$ is the tissue replenishment rate, $k_(upright("prime"))(bold(S)_(upright("MC")))$ is the priming rate driven by signals $bold(S)_(upright("MC"))$ (IgE, complement C3a/C5a, SCF), $k_(upright("degran"))(bold(T)_(upright("MC")))$ is the degranulation trigger rate driven by stimuli $bold(T)_(upright("MC"))$ (mechanical stress, temperature, exercise, neuropeptides), and $k_(upright("restab"))$ is the restabilization rate.

