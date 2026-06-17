#import "../../../../shared/environments.typ": *

=== Endothelial Dysfunction Model

Endothelial cells regulate vascular tone through nitric oxide (NO) production by endothelial NO synthase (eNOS). Endothelial dysfunction---reduced NO bioavailability---contributes to both microvascular impairment and coagulation activation. The eNOS model tracks NO production as a function of cofactor availability:

$
J_(upright("eNOS")) = v_(upright("eNOS")) dot.op frac([upright("Arg")], K_(upright("Arg")) + [upright("Arg")]) dot.op frac([upright("BH")_4], K_(upright("BH")_4 upright(",eNOS")) + [upright("BH")_4]) dot.op frac(K_(upright("ADMA")), K_(upright("ADMA")) + [upright("ADMA")])
$ <eq:enos-model>

where $[upright("Arg")]$ is L-arginine (substrate), $[upright("BH")_4]$ is tetrahydrobiopterin (essential cofactor), and $[upright("ADMA")]$ is asymmetric dimethylarginine (endogenous eNOS inhibitor, elevated in inflammatory states). When $[upright("BH")_4]$ is depleted, eNOS "uncouples"---producing superoxide instead of NO, worsening oxidative stress. The BH₄ competition with tryptophan hydroxylase and tyrosine hydroxylase (@ch:neuroendocrine-models, @eq:tryptophan and @eq:catecholamines) creates a three-way resource conflict discussed further in @sec:bh4-competition.

Reduced NO shifts the coagulation balance toward clot formation (NO normally inhibits platelet aggregation and tissue factor expression), completing a vicious cycle: inflammation $->$ BH₄ depletion $->$ eNOS uncoupling $->$ reduced NO $->$ increased coagulation $->$ microclots $->$ tissue hypoxia $->$ further inflammation. The model predicts that fibrinolytic agents (nattokinase, lumbrokinase) should improve tissue oxygenation, and that L-arginine supplementation alone will be ineffective when BH₄ is the rate-limiting cofactor---a distinction that requires the model to adjudicate.

#include "speculations/microclot-burden-as-a-modifiable-disease-amplifier.typ"

