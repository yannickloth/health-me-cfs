#import "../../../../shared/environments.typ": *

=== Mediator Release and Downstream Effects

Degranulation releases mediators with distinct kinetics and targets:

$
frac(d [upright("His")], d t) &= sigma_(upright("His")) dot.op k_(upright("degran")) dot.op upright("MC")_p - v_(upright("DAO")) dot.op frac([upright("His")], K_(upright("DAO")) + [upright("His")]) - v_(upright("HNMT")) dot.op frac([upright("His")], K_(upright("HNMT")) + [upright("His")]) \
frac(d [upright("PGD")_2], d t) &= sigma_(upright("PG")) dot.op k_(upright("degran")) dot.op upright("MC")_p - delta_(upright("PG")) [upright("PGD")_2]
$ <eq:histamine-dynamics>

where DAO (diamine oxidase) and HNMT (histamine N-methyltransferase) are the two histamine degradation enzymes. Histamine acts on four receptor subtypes with distinct tissue effects: H1 (vasodilation, bronchoconstriction, pruritus), H2 (gastric acid, cardiac inotropy), H3 (CNS neurotransmission), and H4 (immune cell chemotaxis). The model couples histamine to existing subsystems:

- *Autonomic coupling*: Histamine-mediated vasodilation reduces systemic vascular resistance, entering the orthostatic model (@eq:orthostatic) as an additional MAP perturbation: $Delta upright("MAP")_(upright("His")) = -alpha_(upright("H1")) dot.op [upright("His")] \/ (K_(upright("H1")) + [upright("His")])$
- *Gut coupling*: Histamine increases intestinal permeability, amplifying LPS translocation (@eq:gut-immune) by a factor $(1 + alpha_(upright("His,gut")) dot.op [upright("His")])$
- *Immune coupling*: Mast cell TNF-$alpha$ and IL-6 release enter the cytokine network (@eq:cytokine-general)
- *Neurological coupling*: Histamine crosses the BBB and modulates sleep--wake regulation (H3 receptor antagonism promotes wakefulness) and pain sensitization

*This multi-system coupling reveals a result accessible only through the integrated mathematical model*: mast cell activation simultaneously worsens orthostatic intolerance (vasodilation), gut permeability (barrier disruption), inflammation (cytokine release), and neurological symptoms (pain sensitization, sleep disruption). Verbal reasoning lists these effects independently; the model quantifies their mutual amplification. The energy--immune coupling means that the inflammatory cost of a mast cell flare further depletes ATP, reducing the energy available for DAO-mediated histamine clearance---creating a positive feedback loop between mast cell activation and energy deficit. The loop gain determines whether a mast cell flare is self-limiting (healthy) or self-amplifying (MCAS phenotype), and the model predicts that patients with $alpha_(upright("CI")) < 0.7$ are at substantially higher risk of self-amplifying degranulation cascades.

