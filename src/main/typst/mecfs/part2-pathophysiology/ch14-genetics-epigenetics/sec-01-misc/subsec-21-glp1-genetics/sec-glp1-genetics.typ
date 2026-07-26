#import "../../../../shared/environments.typ": *

=== PrecisionLife Combinatorial Genetics and GLP-1 Pathway Enrichment
<sec:glp1-genetics>

#limitation(title: [Single-Source Caveat — All GLP-1 Genetic Findings From One Conference Presentation])[
All findings in this section derive from a single conference presentation @Gardner2026BRMEC15 — not a peer-reviewed publication — by a company (PrecisionLife) with commercial interest in its combinatorial analytics platform. The genetic pathway enrichment results have not been independently replicated. The combinatorial method is proprietary and cannot be audited by independent researchers. No negative controls have been published testing whether other drug classes (e.g., SSRIs, antivirals, corticosteroids) would show comparable enrichment in the same gene set. These findings establish the genetic rationale as a hypothesis (see @hyp:glp1-genetic-pathway-enrichment, certainty 0.40), not as established evidence. All downstream content across chapters @ch:immune-dysfunction, @ch:neurological, and @ch:medications-mechanisms rests on this single unreviewed source and is qualified by explicit low-to-moderate certainty ratings.
]

Beyond the additive SNP associations captured by GWAS, the PrecisionLife combinatorial analytics platform has identified over 250 core ME/CFS-associated genes through synergistic SNP-SNP interactions across the DecodeME and UK Biobank cohorts @Gardner2026BRMEC15 @Sardell2026combinatorial @Das2022geneticrisk. This platform captures epistatic effects invisible to standard GWAS methods, providing a complementary view of ME/CFS genetic architecture, though epistatic GWAS methods have a history of difficult replication in complex disease genetics due to the combinatorial explosion of tests and consequent multiple-comparison burden. The core gene set identifies multiple biological pathways with potential therapeutic relevance.

The pathways targeted by glucagon-like peptide 1 (GLP-1) receptor agonists (GLP-1 RAs) are enriched among ME/CFS-associated genes identified by this platform. These include synaptic and calcium signalling, glucose homeostasis, and endothelial dysfunction pathways --- all independently implicated in ME/CFS pathophysiology (Chapters @ch:neurological, @ch:energy-metabolism, @ch:cardiovascular). This pathway-level enrichment provides a genetic rationale for investigating GLP-1 RAs as candidate repurposing agents in ME/CFS, though no clinical data exist in this population @Gardner2026BRMEC15.

#figure(
  placement: auto,
  table(
    columns: (auto, auto),
    stroke: (x, y) => (left: 0.5pt, right: 0.5pt, top: 0.5pt, bottom: 0.5pt),
    align: (left, left),
    [*Enriched pathway*], [*Relevance to ME/CFS pathophysiological system (Chapter reference)*],
    [Synaptic signalling], [Neuronal dysfunction, cognitive impairment, sensory hypersensitivity (@ch:neurological)],
    [Calcium signalling], [NK cell TRPM3 dysfunction, impaired Ca#super[2+] flux, ion channelopathy (@ch:immune-dysfunction)],
    [Glucose homeostasis], [Metabolic dysfunction, reduced ATP synthesis, glycolytic shift (@ch:energy-metabolism)],
    [Endothelial dysfunction], [Orthostatic intolerance, cerebral hypoperfusion, microvascular pathology (@ch:cardiovascular)],
  ),
  caption: [GLP-1 RA-targeted pathways enriched among ME/CFS-associated genes identified by PrecisionLife combinatorial analytics @Gardner2026BRMEC15.]
) <tab:glp1-pathway-enrichment>

A further independent line of evidence comes from protective gene analysis. PrecisionLife identified alleles that are specifically under-represented in ME/CFS patients (i.e., protective). Several of these protective alleles map to type 2 diabetes, insulin-related signalling, and BMI-associated pathways @Gardner2026BRMEC15. This convergence — risk alleles and protective alleles in overlapping metabolic pathways — is consistent with the hypothesis that metabolic dysregulation has a genetic component in ME/CFS. The protective allele overlap also mirrors epidemiological observations that conditions treated with GLP-1 RAs (T2D, obesity) show apparent inverse associations with ME/CFS risk in some analyses, though causal direction remains unestablished.

#include "hypotheses/hyp-glp1-genetic-pathway-enrichment.typ"

The genetic findings also motivate a precision medicine approach to repurposing. Because different ME/CFS patients carry different combinations of risk variants, the same drug may be effective in one patient and ineffective --- or even harmful --- in another. PrecisionLife's AI-driven combinatorial analytics platform is being used to identify genetic drivers of GLP-1 RA efficacy so that strong and weak responders can be stratified before trials begin @Gardner2026BRMEC15. For GLP-1 RA investigation in ME/CFS, they propose focusing on three genetically-informed subgroups: (1) autoimmune/inflammatory, (2) cardiovascular, and (3) energy metabolism. Each subgroup maps to distinct pathway enrichments and would be predicted to respond through different mechanisms.
