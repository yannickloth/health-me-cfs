#import "../../../../shared/environments.typ": *

=== Coagulation Cascade Model

The model tracks the balance between clot formation and dissolution through four aggregate variables: fibrinogen ($[upright("Fbg")]$), fibrin ($[upright("Fbn")]$), microclot burden ($M_c$), and plasmin activity ($[upright("Pls")]$):

$
frac(d [upright("Fbn")], d t) &= k_(upright("thrombin")) dot.op [upright("Fbg")] dot.op f_(upright("TF"))(bold(C)_(upright("pro")), upright("endothelial damage")) - k_(upright("lysis")) dot.op [upright("Pls")] dot.op [upright("Fbn")] \
frac(d M_c, d t) &= k_(upright("aggregate")) dot.op [upright("Fbn")]^2 - k_(upright("resolve")) dot.op [upright("Pls")] dot.op frac(M_c, K_(upright("resist")) + M_c) \
frac(d [upright("Pls")], d t) &= k_(upright("tPA")) - k_(upright("PAI1")) dot.op [upright("PAI-1")] dot.op [upright("Pls")] - delta_(upright("Pls")) [upright("Pls")]
$ <eq:coagulation-dynamics>

where $f_(upright("TF"))$ is the tissue factor expression function (upregulated by pro-inflammatory cytokines and endothelial damage), $k_(upright("aggregate"))$ is the rate of fibrin self-assembly into amyloid-like structures (quadratic in fibrin, reflecting cooperative aggregation), and $K_(upright("resist"))$ parameterizes the resistance of amyloid microclots to plasmin-mediated dissolution. The PAI-1 (plasminogen activator inhibitor-1) concentration $[upright("PAI-1")]$ is elevated in inflammatory states, inhibiting plasmin and impairing fibrinolysis.

