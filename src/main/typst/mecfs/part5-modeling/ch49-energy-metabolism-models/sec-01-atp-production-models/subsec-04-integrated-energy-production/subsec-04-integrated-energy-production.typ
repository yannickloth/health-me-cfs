#import "../../../../shared/environments.typ": *

=== Integrated Energy Production
<sec:integrated-energy>

The complete energy production model couples glycolysis, the Krebs cycle, and the ETC through shared metabolite pools. The central state variables are:

- $[upright("ATP")]$, $[upright("ADP")]$, $[upright("AMP")]$ (adenine nucleotide pool, conserved: $[upright("ATP")] + [upright("ADP")] + [upright("AMP")] = A_(upright("total"))$)
- $[upright("NAD")^+]$, $[upright("NADH")]$ (nicotinamide nucleotide pool, conserved)
- $[upright("Pyruvate")]$, $[upright("AcCoA")]$, $[upright("OAA")]$ (carbon intermediates)
- $Delta Psi$ (mitochondrial membrane potential)

The ATP balance equation integrates all production and consumption:

$
frac(d[upright("ATP")], d t) = 2 J_(upright("glycolysis")) + J_(upright("ATP synthase")) - J_(upright("demand"))(t)
$ <eq:atp-balance>

where $J_(upright("demand"))(t)$ represents cellular ATP consumption, which varies with activity level. The factor of 2 reflects the net ATP yield per glucose through glycolysis (after subtracting the two ATP invested in the preparatory phase).

