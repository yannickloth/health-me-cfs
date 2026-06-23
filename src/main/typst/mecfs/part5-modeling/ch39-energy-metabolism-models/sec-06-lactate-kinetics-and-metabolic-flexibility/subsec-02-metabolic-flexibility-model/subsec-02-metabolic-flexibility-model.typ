#import "../../../../shared/environments.typ": *

=== Metabolic Flexibility Model

Metabolic flexibility---the capacity to switch between glucose and fatty acid oxidation according to substrate availability and demand---is governed by the Randle cycle (glucose--fatty acid cycle). The fuel selection ratio $Phi$ determines the fraction of ATP derived from fatty acid $beta$-oxidation versus glycolysis:

$
Phi = frac(J_(beta"-ox"), J_(beta"-ox") + J_(upright("glycolysis"))) = frac(v_(upright("CPT-I")) dot.op [upright("Acyl-CoA")] slash (K_(upright("CPT")) + [upright("Acyl-CoA")]), v_(upright("CPT-I")) dot.op [upright("Acyl-CoA")] slash (K_(upright("CPT")) + [upright("Acyl-CoA")]) + J_(upright("glycolysis")))
$ <eq:fuel-selection>

where CPT-I (carnitine palmitoyltransferase I) is the rate-limiting enzyme for fatty acid entry into mitochondria, inhibited by malonyl-CoA (an intermediate of fatty acid synthesis that signals energy surplus). The respiratory exchange ratio (RER), measurable by CPET, is a direct readout of $Phi$: RER $= 1.0$ indicates pure carbohydrate oxidation ($Phi = 0$), RER $= 0.7$ indicates pure fat oxidation ($Phi = 1$).

In ME/CFS, impaired metabolic flexibility manifests as: (1) higher resting RER (reduced fat oxidation at rest), (2) earlier transition to RER $> 1.0$ during exercise (premature reliance on anaerobic glycolysis), and (3) slower RER recovery post-exercise. The model attributes this inflexibility to reduced CPT-I activity (limiting fat entry into mitochondria), $"NAD"^"+"$ depletion (reducing $beta$-oxidation flux), and impaired AMPK signaling (the master metabolic sensor that normally promotes fat oxidation during energy deficit).

Lactate itself feeds back on metabolism through the lactate receptor GPR81 (hydroxycarboxylic acid receptor 1), which inhibits lipolysis and reduces free fatty acid availability. This creates a secondary positive feedback loop---*a result visible only through the mathematical model*: impaired oxidative capacity $->$ lactate accumulation $->$ GPR81 activation $->$ reduced fatty acid supply $->$ further reliance on glycolysis $->$ more lactate. Verbal reasoning identifies each link individually but cannot determine whether the loop is self-sustaining or self-limiting; the ODE model resolves this by computing the loop gain, which exceeds unity when $alpha_(upright("CI")) < 0.65$, predicting a bistable metabolic state.

$
[upright("FFA")]_(upright("available")) = [upright("FFA")]_(upright("basal")) dot.op frac(K_(upright("GPR81")), K_(upright("GPR81")) + [L])
$ <eq:gpr81-feedback>

