#import "../../../../shared/environments.typ": *

=== Tryptophan--Kynurenine Pathway

Tryptophan is metabolized through two competing pathways: serotonin synthesis (via tryptophan hydroxylase) and kynurenine production (via indoleamine 2,3-dioxygenase, IDO). Immune activation upregulates IDO, diverting tryptophan away from serotonin toward kynurenine and its downstream neurotoxic metabolites (quinolinic acid). The model tracks tryptophan ($W$), serotonin ($5 upright("HT")$), and kynurenine ($K$):

$
frac(d W, d t) &= I_W - v_(upright("TPH")) dot.op frac(W, K_(upright("TPH")) + W) - v_(upright("IDO")) dot.op frac(W, K_(upright("IDO")) + W) - delta_W W \
frac(d [5 upright("HT")], d t) &= v_(upright("TPH")) dot.op frac(W, K_(upright("TPH")) + W) - delta_(5 upright("HT")) [5 upright("HT")] \
frac(d K, d t) &= v_(upright("IDO")) dot.op frac(W, K_(upright("IDO")) + W) - delta_K K
$ <eq:tryptophan>

where $I_W$ is dietary tryptophan intake, and the IDO activity $v_(upright("IDO"))$ is upregulated by IFN-$gamma$ from the immune model:

$
v_(upright("IDO")) = v_(upright("IDO,basal")) + v_(upright("IDO,max")) dot.op frac([upright("IFN-") gamma]^2, K_(upright("IFN"))^2 + [upright("IFN-") gamma]^2)
$ <eq:ido-regulation>

This coupling provides a mechanistic link between immune activation and neuropsychiatric symptoms: elevated IFN-$gamma$ $->$ increased IDO activity $->$ reduced serotonin and increased neurotoxic kynurenine metabolites. The IDO metabolic trap hypothesis @phair2019ido extends this model by proposing bistability in IDO-2 kinetics, where a high-IDO state becomes self-sustaining even after the initial immune trigger resolves. Kynurenine pathway dysregulation has been documented in ME/CFS cohorts @Kavyani2022kynurenine @Dehhaghi2022kynurenine.

