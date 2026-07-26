#import "../../../shared/environments.typ": *

== Statistical Power with Heterogeneous Populations
<sec:statistical-power>

#v(0.5em)

ME/CFS is not one disease — it is almost certainly several diseases with overlapping symptoms. The heterogeneity of patient populations is the primary reason that adequately powered studies can still produce null results, and that treatments effective in subsets fail when tested on the combined population. This is the fundamental statistical challenge of ME/CFS research, and it explains the gap between clinical observation (this treatment helps some patients) and trial results (this treatment shows no group-level benefit).

=== The Evidence for Subgroup Structure

Multiple independent research groups, using different methodologies, converge on the finding that ME/CFS contains clinically and biologically distinct subgroups:

- Jason et al. (2020) used latent class analysis (n=528) to identify 4–5 subgroups with distinct symptom profiles and functional impairment levels @Jason2020SubgroupPower. Treatment effects within subgroups were 2–3× larger than effects in the combined sample.
- Chu et al. (2020) identified 5 clinical subtypes (n=621) with distinct symptom profiles and treatment response patterns @Chu2020SubtypesME.
- Thapaliya et al. (2022) identified 3 immune-based subgroups (n=295) using NK cell function and cytokine profiles @Thapaliya2022SubgroupsImmune.
- Lacourt et al. (2022) showed that prognostic factors differ by subgroup — analyzing combined samples produces null results for real subgroup effects @Lacourt2022prognosis.

The rituximab story (Fluge & Mella) is the paradigmatic example: an initial open-label study (n=30) showed a strong responder subgroup, but the larger Phase III trial (n=152) produced a null overall result @Fluge2011rituximab. The responder subgroup signal was real — but the heterogeneity of the larger sample diluted it to non-significance.

=== The Statistical Problem

#limitation(title: [Latent class analysis in ME/CFS is underpowered])[
A methodological review demonstrated that latent class analysis and clustering algorithms require minimum sample sizes far exceeding typical ME/CFS studies to reliably detect subgroups @Huber2018SubgroupMethod. For populations where true subgroups differ by moderate effect sizes (likely in ME/CFS where subgroups share most symptoms), n $>$ 500 is needed per candidate subgroup. A 4-subgroup model requires n $>$ 2,000 — an order of magnitude larger than most ME/CFS studies.

All existing ME/CFS subgroup studies are underpowered by this criterion. The subgroups they identify may be real, may be artifacts of the clustering algorithm, or — most likely — capture genuine structure that is coarser than the true biological subgroups. The convergence across methodologies (Jason, Chu, Thapaliya, Lacourt) is encouraging but does not constitute validation until an independent study applies the same subgrouping rules to a new cohort and confirms assignment.

*Consequence:* The ME/CFS field needs a validated, replicated subgroup classification system. Until one exists, stratified analysis should be treated as exploratory, and "subgroup effects" reported in underpowered samples should be interpreted as hypotheses requiring validation — not as evidence for differential treatment efficacy. A null trial with pre-specified subgroup stratification may identify which patients benefit while honestly reporting which don't.
] <lim:latent-class-underpowered>

#recommendation(title: [Designing for heterogeneity])[
Several design strategies can address population heterogeneity without requiring prohibitively large sample sizes:

*Stratified enrollment:* Pre-specify stratification variables (PEM severity, infectious trigger, autonomic phenotype) and enroll evenly across strata. This mirrors oncology trial design where molecular subtype drives enrollment.

*N-of-1 designs with pooled analysis:* Treat each patient as their own control (pre-post intervention) and pool across patients. This preserves individual heterogeneity while testing for a group effect.

*Adaptive enrichment:* After an interim analysis, re-weight enrollment toward the subgroup showing the strongest signal. The rituximab trials would have benefited from this — if responders could be prospectively identified.

*Minimum reporting standard:* Every ME/CFS study should report effect sizes within pre-specified subgroups (by PEM severity, infectious trigger, years since onset) even if the primary analysis is on the combined sample.

*Consequence:* ME/CFS treatment trials that test a single intervention on an unstratified population and report a null result have not demonstrated that the intervention doesn't work — they have demonstrated that it doesn't work in *everyone*. The difference matters.

=== Methodological Tools for Heterogeneity

#proposal(title: [PEM-bias-adjusted sample size calculator for ME/CFS studies])[
The standard power calculator assumes random sampling from the target population. In ME/CFS, PEM-induced selection bias means the studied sample differs systematically from the population — healthy patients are overrepresented, severely ill patients are absent. A PEM-bias-adjusted power calculator would incorporate: (a) the PEM-severity-participation gradient estimated from registry data, (b) the effect-size attenuation factor for each severity stratum, (c) the inflation factor needed to compensate for the missing tail.

For example, if the PEM-participation gradient shows that only 30% of severe patients and 0% of very severe patients can participate, the effective sample size for estimating the full-population effect is not the enrolled n but the enrolled n × (proportion of severity distribution captured). A study of n=100 mild-moderate patients may have an effective n of 40 for estimating the full-population effect — and the standard power analysis based on n=100 will be optimistic by a factor of 2.5×.

*Origin:* brainstorm.
] <prop:pem-bias-power-calculator>

#proposal(title: [Minimum N for reliable subgroup detection: ME/CFS-specific Monte Carlo simulation])[
Huber et al. (2018) established general minimum sample size requirements for latent class analysis @Huber2018SubgroupMethod, but this framework has never been applied specifically to ME/CFS data structures. A Monte Carlo simulation using existing ME/CFS symptom and biomarker data (from You+ME, UK Biobank, SolveCFS registries) could: (a) simulate populations with known subgroup structures of varying clarity (from strongly separated clusters to partially overlapping), (b) test 5 commonly used clustering/subgroup algorithms on each simulated dataset at varying sample sizes, (c) determine the minimum n at which each algorithm reliably recovers the true subgroup structure, (d) compute what proportion of published ME/CFS subgroup studies meet this minimum. The output is a field-specific reference table: "To detect K subgroups in ME/CFS with 80% power, where subgroups differ by Cohen's d = X, you need n = Y per subgroup." Until this exists, every published subgroup classification is operating at an unknown risk of spurious clustering.

*Origin:* brainstorm.
] <prop:minimum-n-monte-carlo>

] <rec:designing-for-heterogeneity>
