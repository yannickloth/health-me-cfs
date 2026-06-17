#import "../../../../shared/environments.typ": *

=== Krebs Cycle Model
<sec:krebs-cycle-model>

The Krebs cycle is modeled as a four-reaction lumped system capturing citrate synthase (CS), isocitrate dehydrogenase (IDH), $alpha$-ketoglutarate dehydrogenase ($alpha$-KGDH), and succinate dehydrogenase (SDH, also Complex II of the ETC). The overall cycle flux depends on acetyl-CoA supply, $"NAD"^"+"$ availability, and product inhibition:

$
J_(upright("Krebs")) = V_(max, upright("CS")) dot.op frac([upright("AcCoA")], K_m^(upright("AcCoA")) + [upright("AcCoA")]) dot.op frac([upright("OAA")], K_m^(upright("OAA")) + [upright("OAA")]) dot.op frac([upright("NAD")^+], [upright("NAD")^+] + [upright("NADH")])
$ <eq:krebs-flux>

where the last factor captures the $"NAD"^"+"$/NADH ratio dependence. Metabolomic studies in ME/CFS have identified accumulation of specific Krebs cycle intermediates (citrate, isocitrate) consistent with reduced flux through IDH and $alpha$-KGDH @Germain2020metabolic @Naviaux2016metabolomics. In the model, this is represented by reduced $V_(max)$ values for these enzymes, which can arise from oxidative damage to iron--sulfur clusters, substrate competition from inflammatory metabolites, or epigenetic downregulation of enzyme expression.

