#import "../../../../shared/environments.typ": *

=== Biogenesis and PGC-1$alpha$ Regulation

Mitochondrial biogenesis is regulated by PGC-1$alpha$, which is activated by AMPK (sensing energy deficit) and SIRT1 (sensing $"NAD"^"+"$ availability):

$
J_(upright("biogenesis")) = v_(upright("bio")) dot.op frac([upright("AMPK")_a], K_(upright("AMPK")) + [upright("AMPK")_a]) dot.op frac([upright("NAD")^+], K_(upright("SIRT1")) + [upright("NAD")^+])
$ <eq:biogenesis>

where $[upright("AMPK")_a]$ is activated AMPK (which increases when the AMP/ATP ratio rises). In ME/CFS, biogenesis faces a paradox: energy deficit activates AMPK (promoting biogenesis) but depletes $"NAD"^"+"$ (inhibiting SIRT1-mediated PGC-1$alpha$ deacetylation). *The model resolves this competing-signal problem quantitatively*: the net biogenesis rate is a product of two Hill functions with opposing dependencies on energy status. The model predicts patient-specific outcomes: patients with preserved $"NAD"^"+"$ pools maintain biogenesis and stabilize ($J_(upright("biogenesis")) > J_(upright("mitophagy,eff"))$), while those with severe $"NAD"^"+"$ depletion ($gamma < 0.7$) lose the ability to replace damaged mitochondria, crossing a tipping point into progressive decline. This threshold cannot be identified by verbal reasoning because it depends on the precise shape of both Hill functions and their interaction.

The effective $V_(max)$ of each ETC complex in the energy production model (@sec:etc-model) is now proportional to healthy mitochondrial mass: $V_(max, upright("CI"))^(upright("eff")) = alpha_(upright("CI")) dot.op V_(max, upright("CI")) dot.op M_h slash M_(upright("total"))$. This coupling means that the fission--fusion--mitophagy--biogenesis cycle directly determines energy production capacity on timescales of days to weeks, bridging the gap between acute metabolic dynamics (hours) and long-term disease progression (months).

#include "hypotheses/mitochondrial-quality-control-failure-as-disease-maintenance.typ"

