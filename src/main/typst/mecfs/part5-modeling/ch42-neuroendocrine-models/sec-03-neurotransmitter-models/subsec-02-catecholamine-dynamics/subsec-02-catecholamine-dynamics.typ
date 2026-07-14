#import "../../../../shared/environments.typ": *

=== Catecholamine Dynamics

The NIH deep phenotyping study documented altered catecholamine metabolites in ME/CFS cerebrospinal fluid @walitt2024deep. Catecholamines (dopamine, norepinephrine, epinephrine) are synthesized from tyrosine through a sequential enzymatic pathway. The model tracks dopamine ($upright("DA")$) and norepinephrine ($upright("NE")$) in the CNS:

$
frac(d [upright("DA")], d t) &= v_(upright("TH")) dot.op frac([upright("Tyr")], K_(upright("TH")) + [upright("Tyr")]) dot.op frac([upright("BH")_4], K_(upright("BH")_4) + [upright("BH")_4]) - v_(upright("DBH")) dot.op frac([upright("DA")], K_(upright("DBH")) + [upright("DA")]) - delta_(upright("DA")) [upright("DA")] \
frac(d [upright("NE")], d t) &= v_(upright("DBH")) dot.op frac([upright("DA")], K_(upright("DBH")) + [upright("DA")]) - delta_(upright("NE")) [upright("NE")]
$ <eq:catecholamines>

where TH is tyrosine hydroxylase (rate-limiting), DBH is dopamine $beta$-hydroxylase, and $[upright("BH")_4]$ is tetrahydrobiopterin---a cofactor shared with tryptophan hydroxylase and nitric oxide synthase. The shared BH₄ dependency creates competition: increased demand for BH₄ by one pathway (e.g., increased NO production during inflammation) reduces availability for catecholamine and serotonin synthesis. This provides a mechanistic explanation for the concurrent monoamine deficits observed in ME/CFS.

