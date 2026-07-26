#import "../../../shared/environments.typ": *

== Case Definition Heterogeneity
<sec:case-definition-heterogeneity>

#v(0.5em)

The single largest confound in ME/CFS research is not measurement error or sample size — it is that researchers have been studying different diseases under the same name. The choice of diagnostic criteria determines who enters a study, and each set of criteria selects a population with different biological characteristics, symptom profiles, and illness severity. Findings that replicate in CCC/ICC cohorts frequently fail to replicate in Fukuda cohorts — and vice versa — because the study populations are biologically different.

=== Diagnostic Criteria Comparison

The four major case definition systems select fundamentally different patient populations:

#table(
  columns: (auto, auto, auto, auto, auto),
  align: (left, center, center, center, center),
  [*Criterion*], [*Fukuda (1994)*], [*CCC (2003)*], [*ICC (2011)*], [*IOM/SEID (2015)*],
  [PEM required], [No], [Yes], [Yes], [Yes],
  [Orthostatic intolerance], [No], [Yes], [Yes], [Yes],
  [Cognitive impairment], [Optional], [Required], [Required], [Yes],
  [Minimum symptoms], [4 of 8], [7 of 10+], [Meet multiple clusters], [Mild-moderate-severe],
  [Fatigue duration], [≥6 months], [≥6 months], [≥6 months], [≥6 months + substantial reduction],
  [Functional impairment], [Substantial], [Substantial], [≥50% pre-illness], [Substantial],
)

The practical consequence: Fukuda criteria capture 2–2.5× more patients than CCC criteria when applied to the same population @Jason2015CaseDefinition. When applied to a large US registry (n=2,143), prevalence rates varied from 0.21% (ICC) to 0.84% (Fukuda) — a 4-fold difference @Jason2020ComprehensiveCase. When applied to a CDC survey (n=2,762), Fukuda yielded 16% "CFS-like" while the CDC empirical definition yielded 2.5% — a 6-fold difference @Brimmer2016CaseDefComparison.

=== Biological Divergence by Criteria

The UK ME/CFS Biobank provided the first systematic evidence that criteria-selected groups are biologically distinct, not just clinically distinct. CCC-selected patients had more severe symptoms, lower quality of life, and different immune and metabolic profiles than Fukuda-selected patients from the same biobank @Nacul2021CaseDefinition @Nacul2017BiobankCriteria.

Most strikingly, 25% of patients meeting Fukuda criteria do not meet CCC criteria @Strand2019CFSICFcomparison. These "Fukuda-only" patients have idiopathic chronic fatigue under CCC — not ME/CFS. Their biology is more similar to healthy controls than to CCC-positive patients @Nacul2017BiobankCriteria. This means roughly one quarter of findings from Fukuda-based studies may reflect non-ME/CFS biology.

#open-question(title: [Can the field standardize on a single case definition?])[
The DecodeME GWAS (n $>$ 15,000) @DecodeME2025Criteria @DecodeME2025Criteria is the first large-scale study to systematically compare genetic architecture across diagnostic criteria. Preliminary results indicate that genetic signals differ when analyzed under different criteria — providing molecular-level validation that criteria choice determines which disease you are studying.

*Argument for standardization:* The IOM/SEID criteria (2015) represent the closest the field has come to institutional consensus, were developed through a rigorous systematic review process, and require PEM — the cardinal feature of ME/CFS. Adopting SEID as the universal standard would eliminate criteria heterogeneity as a confound and make cross-study comparisons possible.

*Argument against standardization:* SEID criteria risk the same problem as CCC/ICC — restricting to more severely ill patients may exclude mild cases and racial/SES minority patients who present differently @Haney2024RacialSEScriteria. A standardized but biased entry criterion trades one confound for another.

*Consequence:* Until the field agrees on a standard case definition, readers must check which criteria each study used — and should treat findings from Oxford/Fukuda studies as preliminary until replicated in a PEM-required cohort. Research that stratifies results by criteria (showing what holds across definitions vs what is criteria-specific) is more valuable than research that reports results from a single criteria-defined cohort.
] <oq:case-definition-standardization>

=== Recommendations for Readers

When evaluating published ME/CFS research, the single most important metadata field is the diagnostic criteria used. A study reporting "elevated cytokine X in ME/CFS" requires checking whether the cohort was Fukuda-defined (likely ~25% idiopathic chronic fatigue), Oxford-defined (likely depression/deconditioning), or CCC/ICC-defined (more likely genuine ME/CFS). The evidentiary weight of a finding scales with criteria specificity.

*Consequence:* The "replication crisis" in ME/CFS is largely a criteria problem — not a failure of science but a predictable consequence of studying different diseases under the same name. Standardizing on PEM-required criteria would resolve more replication failures than any improvement in study design alone.

=== A Formal Test of the Central Claim: Criteria-Dose-Response Meta-Analysis

#proposal(title: [Quantifying the criteria-to-biology gradient across the entire literature])[
The chapter's core qualitative argument — that diagnostic criteria stringency determines which biology is studied — has never been quantified across the full ME/CFS literature. This can be tested: (a) score every set of diagnostic criteria by stringency (PEM required, orthostatic intolerance required, cognitive impairment required, minimum symptom count, functional impairment threshold), producing a "criteria stringency index" (CSI) from ~1 (Oxford) to ~8 (ICC), (b) meta-analyze every published finding separately by criteria group, computing the effect size for each CSI tier, (c) regress effect size against CSI.

For disease-specific biomarkers (NK cell function, lactate, Day-2 CPET decline), the slope should be positive — stricter criteria → larger, more specific effect sizes. For non-specific markers (fatigue, depression, deconditioning), the slope should be zero or negative. A significant CSI×outcome interaction would confirm that criteria stringency predicts what you find, converting the chapter's qualitative narrative into a single quantifiable meta-regression parameter.

*Origin:* brainstorm.
] <prop:criteria-dose-response-meta>

