#import "../../../shared/environments.typ": *

== Biomarker Overfitting in Small Samples
<sec:biomarker-overfitting>

#v(0.5em)

The single most common methodological error in ME/CFS research — and the one with the most severe consequences for credibility — is the discovery of "diagnostic biomarkers" in small samples without independent external validation. A systematic review identified 149 candidate biomarkers nominated in the ME/CFS literature — and zero that have been validated in an independent cohort @Maksoud2023. This is not a random failure. It is a structural prediction of the research designs used.

=== The General Problem: Why Small-Sample Biomarker Studies Fail

Ioannidis (2005) identified the conditions under which most published research findings are false: small sample sizes, small effect sizes, large feature spaces, flexible analysis pathways, and fields with high investigator interest @Ioannidis2005WhyFalse. ME/CFS biomarker research meets every single one of these conditions.

Button et al. (2013) demonstrated that neuroscience studies with n=10–20 have a median statistical power of 21% — meaning 79% of true effects go undetected while false positives are amplified by the winner's curse @Button2013PowerFailure. Vul et al. (2009) showed that non-independent analysis inflates brain-behavior correlations, producing "voodoo correlations" above the theoretical maximum @Vul2009VoodooCorrelations.

In the machine learning context specifically, Varoquaux (2017) demonstrated that standard cross-validation in small neuroimaging samples (n $<$ 100) overestimates accuracy by 20–40% — nested cross-validation is essential for unbiased performance estimates @Varoquaux2017MLoverfitting. Flint et al. (2020) showed that biomarker studies in psychiatry with n $<$ 100 produce effects 2–3× larger than those found in large consortia (n $>$ 1,000) — the winner's curse operating in small samples @Flint2020SmallSampleBiomarker.

=== The ME/CFS-Specific Crisis

These general principles apply with full force to ME/CFS. A typical ME/CFS biomarker study has:

#speculation(title: [The ME/CFS biomarker discovery pipeline is a textbook case of the Ioannidis conditions])[
- Small sample (n=15–50) with dozens to hundreds of features measured
- Standard (non-nested) cross-validation reporting 80–100% accuracy
- No external validation in an independent cohort
- Publication in a specialty journal with a receptive audience
- Subsequent studies finding the same biomarker at 60–70% accuracy (regression to the true value) — but the 100% discovery study is the one that gets cited

Fonseca et al. (2024) provide a clear recent example: an EBV antibody ML classifier achieved 100% accuracy in discovery but fails on non-EBV-triggered ME/CFS — demonstrating that the "biomarker" was detecting EBV serostatus, not ME/CFS @Fonseca2024EBVclassifier.

*Falsifiable prediction:* An external validation consortium that tests all 149 candidate ME/CFS biomarkers on a shared, independent, well-phenotyped cohort (n ≥ 500, ICC/CCC criteria, with matched disease controls) will validate ≤ 10 biomarkers at sensitivity/specificity both $\geq 0.70$, and $< 5$ at $\geq 0.80$. If $> 20$ biomarkers validate at those thresholds, the overfitting narrative is wrong — the literature produced more genuine signals than this analysis credits.

*Consequence:* None of the 149 candidate biomarkers in the ME/CFS literature should be considered validated. Each is a hypothesis, not a finding. The research community's habit of reporting "discovery" accuracy without external validation creates false certainty that guides research funding away from replication — which is less exciting but more valuable.
] <spec:me-cfs-biomarker-overfitting>

=== Solutions: What Would Convincing Evidence Look Like?

The minimum standard for a credible biomarker claim in ME/CFS:

1. *Nested cross-validation or independent holdout set* within the discovery study
2. *External validation* in an independent cohort from a different recruitment site, with different diagnostic criteria documented
3. *Sensitivity and specificity* reported with confidence intervals, not just accuracy — accuracy is a poor metric when prevalence is low
4. *Comparison to relevant disease controls* (MS, RA, depression, POTS) to establish ME/CFS specificity
5. *Pre-registration* of the analysis plan before seeing the validation data

The 2025–2026 studies by Xiong et al. (n=228, external validation) @Xiong2023multiomics and Aitken et al. (n=4,244, within-person models) @Aitken2026digitalHRV represent a methodological upgrade — larger samples, proper validation, digital approaches that scale — but remain exceptions to the field norm.

#recommendation(title: [Reducing Biomarker Overfitting])[
- Funders should require external validation (independent cohort, different site) as a condition of continued biomarker funding. Discovery without validation is hypothesis generation, not evidence.
- Journals should require nested cross-validation or holdout validation, and should not publish studies reporting "diagnostic accuracy" without independent external validation.
- Researchers should pre-register biomarker analysis plans and report both the discovery and validation results in the same paper — not split across publications.
- Readers should treat any biomarker study with accuracy $> 80%$ in a sample of n $<$ 100 as a likely overfit — the true accuracy is almost certainly lower.

*Consequence:* The 149 published candidate biomarkers represent 149 hypotheses about ME/CFS biology, not 149 diagnostic tests. Until the field standardizes on external validation as a minimum publication requirement, the literature will continue to generate biomarker claims that fail to replicate.

An external validation consortium — where candidate biomarkers from multiple laboratories are tested on a shared, independent, well-phenotyped cohort — would resolve this field-wide problem in one coordinated effort. The model exists: psychiatric genetics consortia (PGC) and Alzheimer's disease biomarker consortia solved structurally identical problems through pre-competitive data sharing. ME/CFS lacks the funding and institutional coordination to do this, but the methodological solution is known. *Origin:* brainstorm.
] <rec:reducing-overfitting>
