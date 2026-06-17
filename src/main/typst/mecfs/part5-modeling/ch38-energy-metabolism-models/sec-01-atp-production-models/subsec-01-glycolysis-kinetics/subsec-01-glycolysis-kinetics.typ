#import "../../../../shared/environments.typ": *

=== Glycolysis Kinetics
<sec:glycolysis-kinetics>

Glycolysis converts glucose to pyruvate through ten enzymatic steps. For modeling purposes, the pathway is reduced to three lumped reactions capturing the key regulatory points: hexokinase (HK), phosphofructokinase-1 (PFK-1), and pyruvate kinase (PK). Each enzyme is modeled with Michaelis--Menten kinetics modified by allosteric regulation:

$
v_(upright("PFK-1")) = V_(max, upright("PFK-1")) dot.op frac([upright("F6P")]^(n_H), K_(0.5)^(n_H) + [upright("F6P")]^(n_H)) dot.op frac(K_i^(upright("ATP")), K_i^(upright("ATP")) + [upright("ATP")]) dot.op frac([upright("AMP")], K_a^(upright("AMP")) + [upright("AMP")])
$ <eq:pfk1>

where $[upright("F6P")]$ is fructose-6-phosphate concentration, $n_H approx 1.5$--$4$ is the Hill coefficient reflecting cooperative kinetics, $K_i^(upright("ATP"))$ is the ATP inhibition constant, and $K_a^(upright("AMP"))$ is the AMP activation constant. PFK-1 is the committed step of glycolysis and the primary site of metabolic regulation: it is inhibited by ATP (the end product) and activated by AMP (a signal of energy deficit). This regulatory logic is central to ME/CFS modeling because it determines how rapidly glycolysis accelerates when oxidative phosphorylation is impaired.

The net glycolytic flux determines pyruvate production and, consequently, the substrate supply to the Krebs cycle. In healthy tissue, the glycolytic rate is tightly coupled to mitochondrial demand. In ME/CFS, evidence of increased lactate production at lower workloads @keller2024cpet suggests that this coupling is disrupted, with glycolysis operating at higher flux relative to oxidative capacity---a pattern consistent with reduced $V_(max)$ of downstream mitochondrial enzymes.

