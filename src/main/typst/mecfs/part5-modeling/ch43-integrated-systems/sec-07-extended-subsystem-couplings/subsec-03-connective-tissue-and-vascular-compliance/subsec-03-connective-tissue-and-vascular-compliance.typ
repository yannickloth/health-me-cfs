#import "../../../../shared/environments.typ": *

=== Connective Tissue and Vascular Compliance
<sec:eds-coupling>

Hypermobile Ehlers--Danlos syndrome (hEDS) is overrepresented among ME/CFS patients. The biomechanical consequences of connective tissue laxity enter the model through modified vascular compliance parameters. Increased venous compliance ($C_v$) amplifies gravitational blood pooling during orthostatic stress:

$
Delta V_upright("pool") = C_v dot.op rho g dot.op h_upright("column"), quad C_v^upright("hEDS") = kappa dot.op C_v^upright("normal"), quad kappa in [1.3, 2.0]
$ <eq:eds-vascular>

where $C_v$ is venous compliance (volume/pressure), $rho g h_upright("column")$ is the gravitational hydrostatic pressure over column height $h_upright("column")$, and $kappa$ is the compliance amplification factor in hEDS. The increased pooling volume enters the orthostatic model (@eq:orthostatic) as a larger effective $Delta P_upright("grav")$, requiring greater compensatory sympathetic activation to maintain MAP. *The model predicts---uniquely through quantitative analysis---that hEDS patients have a narrower energy envelope* because the energy cost of maintaining upright posture is amplified: greater sympathetic drive means higher cardiac work, and the compensatory tachycardia consumes additional ATP. For $kappa = 1.5$, the model predicts a 10--20% reduction in energy available for activity during upright hours, independent of any mitochondrial or immune dysfunction. This provides a quantitative explanation for why hEDS patients with ME/CFS tend toward greater severity: the connective tissue deficit imposes a permanent energy tax on postural maintenance.

Additionally, increased joint laxity raises proprioceptive error, which the autonomic system compensates for through increased muscle co-contraction. This adds a term $J_upright("proprioceptive") = e_upright("co-contract") dot.op (1 - upright("stability") \/ upright("stability")_0)$ to the energy demand, further narrowing the energy envelope.

