#import "../../../../shared/environments.typ": *

=== Lactate Production and Clearance

Lactate ($L$) is produced from pyruvate by lactate dehydrogenase (LDH) when pyruvate supply exceeds mitochondrial oxidative capacity, and cleared by hepatic gluconeogenesis (Cori cycle) and oxidation in heart and slow-twitch muscle:

$
frac(d[L], d t) = v_(upright("LDH")) dot.op frac([upright("Pyruvate")], K_(upright("LDH")) + [upright("Pyruvate")]) dot.op frac([upright("NADH")], K_(upright("NADH,LDH")) + [upright("NADH")]) - v_(upright("clear")) dot.op frac([L], K_(upright("clear")) + [L])
$ <eq:lactate-dynamics>

where $v_(upright("LDH"))$ is the maximal LDH forward rate and $v_(upright("clear"))$ is the maximal lactate clearance rate. The NADH dependence ensures that LDH activity increases when the mitochondrial NADH/$"NAD"^"+"$ ratio is elevated---precisely the condition produced by impaired ETC function. In ME/CFS, the model predicts elevated steady-state lactate through two mechanisms: increased production (high cytosolic NADH due to ETC bottleneck) and potentially reduced clearance (hepatic energy deficit limiting gluconeogenesis).

