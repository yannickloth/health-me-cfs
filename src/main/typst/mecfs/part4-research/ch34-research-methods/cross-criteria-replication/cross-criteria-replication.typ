#import "../../../shared/environments.typ": *

== Replication Across Diagnostic Criteria
<sec:cross-criteria-replication>

#v(0.5em)

The subtopic that synthesizes all the others: when different diagnostic criteria select biologically different populations (Sub-Topic 1), who can and can't participate due to PEM (Sub-Topic 2), different study designs (Sub-Topic 4), and small heterogeneous samples (Sub-Topic 7), it would be surprising if findings *did* replicate across criteria-defined cohorts. The "replication crisis" in ME/CFS is not a failure of scientific method — it is a predictable consequence of studying different diseases under the same name.

=== What Replicates, What Doesn't

Some findings appear sufficiently robust to survive criteria heterogeneity:

- *Reduced NK cell function* — replicated across all criteria (Fukuda, CCC, ICC), in multiple independent labs, over 30+ years. This is the single most replicated biomarker in ME/CFS.
- *Elevated lactate in a subset* — replicated across criteria @Ghali2019, though the proportion with elevated lactate varies by criteria (more stringent criteria → more patients with the metabolic subtype).
- *2-day CPET Day-2 decline* — replicated in CCC and ICC cohorts; not studied under Fukuda with adequate comparators.

What doesn't replicate — or replicates more weakly — across criteria:

- *Cytokine profiles* — highly variable; criteria-dependent. The "ME/CFS cytokine signature" changes substantially depending on whether the cohort is Fukuda or CCC-defined @Nacul2017BiobankCriteria.
- *Exercise therapy benefit* — found in Oxford/Fukuda cohorts, absent in PEM-required cohorts. The NICE 2021 reversal and Cochrane 2021 withdrawal were driven specifically by this criteria disconnect @Wormgoor2021physio.
- *Cognitive impairment profiles* — differ substantially by criteria; Fukuda cohorts have findings more similar to depression than to ICC cohorts @Cockshell2009CognitiveControls.

=== The DecodeME GWAS: Genetic-Level Validation

The DecodeME GWAS (n $>$ 15,000, using IOM/SEID criteria) provides the strongest evidence to date that diagnostic criteria matter at the molecular level @DecodeME2025Criteria. Preliminary analyses indicate that the genetic architecture of ME/CFS differs when analyzed under different diagnostic criteria — a finding that would be impossible if criteria-defined groups were biologically equivalent. The GWAS data effectively confirm what Jason's registry analyses and Nacul's biobank data suggested from clinical and metabolic perspectives: criteria determine biology.

=== Implications for the Literature

#open-question(title: [How should readers evaluate existing research given criteria heterogeneity?])[
The practical guidance for critical reading:

*Findings established in Oxford/Fukuda cohorts:* Treat as preliminary signals requiring replication in a PEM-required cohort. Oxford-criteria studies are especially problematic — the criteria were designed to select for fatigue without psychiatric exclusion, and the resulting cohorts are likely enriched for depression, deconditioning, and somatization without genuine ME/CFS. @Morris2020CriteriaReview documents the systematic pattern: Oxford-criteria studies produce non-specific findings (deconditioning, psychological features) while CCC/ICC studies produce immune/metabolic findings.

*Findings established in CCC/ICC/IOM cohorts:* Treat as evidence from the more biologically specific population. The trade-off is that these cohorts are more severely ill and may not represent the mild end of the spectrum.

*Findings established across multiple criteria:* The strongest signal — these findings survive population heterogeneity and are more likely to represent core ME/CFS biology (e.g., NK cell dysfunction, lactate elevation).

*Findings that differ by criteria:* Not a failure — these findings are criteria-resolution evidence. They tell you that the biological signal is present in one population and absent in another, which is informative about disease boundaries.

*Consequence:* The ME/CFS literature can be stratified by evidence tier based on criteria. Tier 1: replicated across ≥2 PEM-required criteria definitions with independent cohorts. Tier 2: replicated in a single PEM-required criteria definition. Tier 3: found in Fukuda/Oxford cohorts, not yet replicated in PEM-required cohorts (treat as hypothesis, not finding). Tier 4: Oxford-criteria only (likely not ME/CFS — treat with extreme caution). This tiered reading strategy, applied consistently, prevents the literature's internal contradictions from being mistaken for scientific inconsistency.
] <oq:reading-stratified-literature>

*Consequence:* The single most powerful step the ME/CFS field could take to improve research replicability is universal adoption of a PEM-required case definition. This alone would resolve more "failed replications" than any improvement in statistical methodology or sample size. The IOM 2015 SEID criteria, while imperfect, represent institutional consensus toward this standard.

=== From Multiple Sclerosis to ME/CFS: The Criteria Resolution Template

The history of MS diagnostic criteria offers a parallel: before the 1983 Poser criteria, MS diagnosis was heterogeneous and "MS research" studied different populations under the same name. The Poser criteria (1983) standardized on disseminated lesions in space and time, the McDonald criteria (2001) added MRI evidence, and the 2017 revision added oligoclonal bands. Each revision made the criteria more biologically specific — and each revision was validated against the previous criteria to ensure continuity. MS researchers did not have to choose between "good biology" and "continuity with prior research": they had both, because each new criteria revision was applied retroactively to existing cohorts to quantify what changed.

#speculation(title: [MS criteria evolution as a template for ME/CFS criteria resolution])[
The MS model shows that criteria can be iteratively refined without losing continuity with prior research, provided that each revision is:
1. Validated against the prior criteria on existing cohorts to quantify selection effects
2. Adopted by major funding bodies as a grant requirement (creating institutional pressure)
3. Accompanying by a transition period where studies report results under both old and new criteria

Applied to ME/CFS: the IOM 2015 SEID criteria could serve as the "McDonald moment" — not the final word, but a step toward biological specificity that is validated against existing cohorts (UK Biobank, DecodeME, You+ME) before universal adoption. The key insight from MS is that criteria evolution does not require starting over — it requires quantifying what changes, not pretending nothing does.

*Certainty: 0.45* — the MS parallel is strong but the political economy of ME/CFS research is different (smaller field, less funding, no institutional monopoly on criteria like the MS McDonald panel had).

*Falsifiable prediction:* If a major funding body (NIH or MRC) adopts SEID criteria as a grant requirement with a 3-year transition period during which investigators must report results under both old and new criteria, the proportion of "non-replicating" findings across the ME/CFS literature (measured as >50% change in effect size or sign reversal when switching criteria) will fall below 10% within 10 years — compared to the current estimated 25–30% that result from Fukuda/Oxford cohort contamination. If the proportion of non-replicating findings does not decline despite mandatory criteria standardization, then criteria heterogeneity was not the dominant confound the chapter claims it to be.

*Consequence:* The ME/CFS field does not need to achieve consensus on a perfect case definition. It needs an iterative process where each revision is validated against prior criteria on existing data, and the transition costs are explicitly measured rather than wished away. The MS precedent shows this is possible — and that waiting for perfect criteria guarantees imperfect criteria forever.

*Origin:* brainstorm.
] <spec:ms-criteria-template>

=== Long COVID as a Methodological Natural Experiment

#speculation(title: [Long COVID offers a unique opportunity to test which methodological problems are ME/CFS-specific])[
Long COVID research is growing rapidly with funding levels exceeding ME/CFS by orders of magnitude. Because Long COVID shares PEM as a cardinal symptom in a substantial fraction of patients, it offers a natural experiment for several claims in this chapter:

- *Does PEM selection bias operate in Long COVID research the same way?* Long COVID studies, better-funded and more accessible, may recruit a broader severity range — providing a comparison point for the PEM selection bias hypothesis.
- *Does the 2-day CPET signal replicate in Long COVID populations?* Gattoni 2025 found a null result — if this holds in larger Long COVID CPET studies, it constrains the claim that 2-day CPET measures PEM across post-infectious syndromes.
- *Do the same case definition problems arise?* Long COVID has its own definitional heterogeneity (WHO vs NICE vs patient-defined). The way Long COVID research resolves (or fails to resolve) this will be informative for ME/CFS.

*Certainty: 0.40* — Long COVID is the closest comparator disease with comparable symptoms but vastly more funding; the comparison is inherently informative but the time lag (Long COVID research is 5 years old, ME/CFS 40+) means the most interesting comparisons are not yet possible.

*Falsifiable prediction:* Within 5 years, a sufficiently powered Long COVID study (n ≥ 500, PEM-positive subgroup, objective outcome measures) will report findings on at least one PEM-associated biomarker (Day-2 CPET VO2peak, NK cell function, lactate) that differ in direction and/or magnitude from their ME/CFS counterparts at a level exceeding sampling error (Cohen's q ≥ 0.5 between Long COVID and ME/CFS effect sizes for the same biomarker). If every Long COVID biomarker finding converges on the ME/CFS pattern, and the Gattoni 2025 null result turns out to be a type II error from a small sample, then the 2-day CPET/pathophysiology pattern generalizes across post-infectious syndromes and the specific methodological critiques in this chapter (small samples, criteria heterogeneity, selection bias) are not the primary reason for replication failure — biology genuinely differs.

*Consequence:* ME/CFS researchers should monitor Long COVID methodology as a natural experiment rather than treating it as a separate field. When Long COVID studies using large samples, objective outcomes, and standardized criteria produce different results from ME/CFS studies on small samples with heterogeneous criteria, the difference may be methodological, not biological.

*Origin:* brainstorm.
] <spec:lc-natural-experiment>

