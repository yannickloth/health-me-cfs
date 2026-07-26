#import "../../../../shared/environments.typ": *

=== Electron Transport Chain Model
<sec:etc-model>

The electron transport chain is modeled as a four-complex proton pump driving ATP synthase. The rate of proton pumping by Complex I is:

$
J_(upright("CI")) = V_(max, upright("CI")) dot.op frac([upright("NADH")], K_m^(upright("NADH")) + [upright("NADH")]) dot.op frac([upright("UQ")], K_m^(upright("UQ")) + [upright("UQ")]) dot.op (1 - frac(Delta Psi, Delta Psi_(max)))
$ <eq:complex-i>

where $[upright("UQ")]$ is the ubiquinone (oxidized CoQ10) concentration, $Delta Psi$ is the mitochondrial membrane potential, and the last factor captures thermodynamic backpressure: as the proton gradient builds, further pumping becomes energetically unfavorable. The membrane potential evolves according to:

$
C_m frac(d Delta Psi, d t) = sum_(k in {upright("CI,CIII,CIV")}) n_k J_k - J_(upright("ATP synthase")) - J_(upright("leak"))
$ <eq:membrane-potential>

where $C_m$ is the membrane capacitance, $n_k$ is the number of protons pumped per electron pair by complex $k$, and $J_(upright("leak"))$ represents proton leak across the inner mitochondrial membrane. ATP synthase flux follows:

$
J_(upright("ATP synthase")) = V_(max, upright("F")_1 upright("F")_0) dot.op frac([upright("ADP")][upright("P")_i], K_m^(upright("ADP")) K_m^(upright("P")_i) + [upright("ADP")] K_m^(upright("P")_i) + [upright("P")_i] K_m^(upright("ADP")) + [upright("ADP")][upright("P")_i]) dot.op frac(Delta Psi - Delta Psi_(upright("threshold")), Delta Psi)
$ <eq:atp-synthase>

The threshold term ensures that ATP synthesis requires a minimum proton-motive force ($Delta Psi_(upright("threshold")) approx 100$--$120$ mV). This is significant for ME/CFS because any reduction in ETC complex activity lowers $Delta Psi$, and once $Delta Psi$ approaches the threshold, ATP synthesis drops precipitously---a nonlinear "cliff" effect that may explain the disproportionate symptom severity relative to modest biochemical abnormalities.

