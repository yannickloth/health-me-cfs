#import "../../../../shared/environments.typ": *

=== Epigenetic Consolidation
<sec:map-epigenetic>

DNA methylation changes and histone modifications observed in ME/CFS patients may stabilize disease-promoting gene expression patterns. This is a hypothesis, not a confirmed mechanism: the observed methylation differences are cross-sectional and could reflect consequences of illness state, medication, or activity level rather than causal drivers @Trivedi2018methylation. If valid, this mechanism would help explain why some patients who partially respond to Tier 1 interventions do not fully recover. A falsifiable prediction: methylation-stratified treatment trials should show that patients with high "consolidation signatures" fail treatments that low-signature patients respond to.

#figure(
  table(
    columns: (2fr, 1.2fr, 1fr, 0.8fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(245) } else { white },
    [*Treatment*], [*Mechanism of action*], [*Category*], [*Energy*], [*Evidence*],

    [Rapamycin], [mTOR inhibition → epigenetic aging ↓; histone modifications], [Medication], [B/C], [Pilot — ~34% ITT; cross-tier mechanism],
    [Spermidine], [Histone acetylation modulation; autophagy induction], [Supplement], [A], [Experimental; pre-clinical only],
    [SAMe (S-Adenosylmethionine)], [Methyl donor; supplies DNMT substrate; supports remethylation at hypomethylated loci], [Supplement], [A], [Mixed ME/CFS evidence; dosing inadequately studied],
    [Methyl-folate + methyl-B12], [MTHFR bypass; cofactor substrates for methylation cycle], [Supplement], [A], [Clinical use; MTHFR genotype relevant],
    [Betaine (trimethylglycine)], [Alternative methyl donor; BHMT pathway bypasses folate cycle], [Supplement], [A], [No ME/CFS data; mechanism extrapolated from homocystinuria],
    [Riboflavin (B2)], [MTHFR cofactor (FAD); enhances methyl-folate production in C677T carriers], [Supplement], [A], [No ME/CFS data; genotype-stratified],
    [Zinc], [DNMT structural cofactor; deficiency impairs methylation maintenance], [Supplement], [A], [Mild ME/CFS evidence; supplementation trials mixed],
  ),
  caption: [Treatments targeting epigenetic consolidation],
  kind: table,
) <tab:map-epigenetic>

#include "../../open-questions/oq-epigenetic-consolidation-a-major-therapeutic-gap.typ"

