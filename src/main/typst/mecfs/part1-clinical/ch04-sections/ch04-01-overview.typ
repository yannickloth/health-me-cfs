#import "../../shared/environments.typ": *

== Overview of Diagnostic Approaches
<sec:diagnostic-overview>

ME/CFS lacks a definitive diagnostic test. Diagnosis remains clinical, based on characteristic symptom patterns, exclusion of alternative explanations, and increasingly, supportive objective findings. Multiple diagnostic frameworks have been proposed, each with different emphases and populations identified.

=== Evolution of Diagnostic Criteria

The history of ME/CFS diagnostic criteria reflects evolving understanding of the illness:

==== Early Frameworks (1988–1994)

    - *Holmes Criteria (1988)*: First CDC case definition; required 6+ months of persistent/relapsing fatigue plus 8 of 11 symptom criteria or 6 of 11 symptoms plus 2 of 3 physical criteria
    - *Problem*: Overly broad; captured patients with primary depression or deconditioning; lacked specificity for the post-exertional phenotype
    - *Fukuda Criteria (1994)*: Simplified to 6 months of unexplained fatigue plus 4 of 8 symptoms; removed physical examination criteria
    - *Impact*: Became the dominant research framework but remained criticized for heterogeneity

==== Restrictive Frameworks (2003–2011)

    - *Canadian Consensus Criteria (2003)*: Required post-exertional malaise/fatigue, sleep dysfunction, pain, and two neurological/cognitive manifestations plus one autonomic/neuroendocrine/immune manifestation
    - *International Consensus Criteria (2011)*: Emphasized post-exertional _neuroimmune_ exhaustion as mandatory; required neurological impairments, immune/gastrointestinal/genitourinary impairments, and energy metabolism/transport impairments
    - *Rationale*: Select more homogeneous, severely affected patients; exclude patients with primary psychiatric conditions
    - *Trade-off*: Higher specificity but lower sensitivity; may miss milder cases

==== Consensus Framework (2015)

    - *IOM Criteria (2015)*: Proposed by Institute of Medicine (now National Academy of Medicine) systematic review
    - *Required symptoms*: (1) Substantial impairment lasting $gt.eq$6 months, (2) Post-exertional malaise, (3) Unrefreshing sleep, (4) Cognitive impairment OR orthostatic intolerance
    - *Goal*: Facilitate clinical diagnosis while maintaining specificity
    - *Renamed condition*: Proposed “Systemic Exertion Intolerance Disease (SEID)” to emphasize cardinal feature; name not widely adopted

=== Comparison of Frameworks: Set-Theoretic Analysis

Different criteria identify overlapping but distinct patient populations. Let $F$, $C$, $I$, and $O$ denote the sets of patients meeting Fukuda, Canadian Consensus, ICC, and IOM criteria respectively.

<obs:criteria-hierarchy>
The diagnostic frameworks exhibit a partial ordering by restrictiveness:

$
I subset C subset F #h(1em) "and" #h(1em) I inter O eq.not nothing
$

where:

    - $I subset C$: All patients meeting ICC criteria also meet Canadian Consensus criteria (ICC is more restrictive)
    - $C subset F$: All patients meeting Canadian Consensus criteria also meet Fukuda criteria (Canadian is more restrictive than Fukuda)
    - $I inter O eq.not nothing$: ICC and IOM criteria identify overlapping but not identical populations

This hierarchical structure implies that stricter criteria select subsets of the broader Fukuda population, potentially enriching for more severely affected patients with more homogeneous pathophysiology.
*Empirical Comparison*
Brown et al. @Brown2013phenotypes compared phenotypes identified by different criteria in the same cohort. Key findings:



#figure(
  table(
    columns: (auto, auto, auto, auto, auto),
    [*Criteria Met*], [*n*], [*Cognitive*], [*Autonomic*], [*Symptom Burden*],
    [Fukuda only], [45], [Mild], [Mild], [Lowest],
    [Fukuda + Canadian], [103], [Moderate], [Moderate], [Intermediate],
    [Fukuda + Canadian + ICC], [52], [*Severe*], [*Severe*], [*Highest*],
  ),
  caption: [Symptom severity by diagnostic criteria met],
) <tab:criteria-severity>


*Interpretation*: Criteria do not identify different diseases but rather different severity strata of the same condition. Patients meeting multiple criteria have worse outcomes, suggesting the stricter frameworks capture more severely affected individuals.

=== Sensitivity and Specificity Trade-offs

No gold standard exists for ME/CFS, making traditional sensitivity/specificity calculations impossible. However, we can assess *predictive validity*: do patients meeting stricter criteria show more consistent biomarker abnormalities and treatment responses?

#hypothesis(title: [Specificity-Homogeneity Trade-off])[
Stricter diagnostic criteria increase disease homogeneity (reducing phenotypic variance) at the cost of excluding milder cases. Formally:

Let $sigma^2_{"pheno"}(X)$ denote phenotypic variance within the population $X$ meeting criterion set. Then:

$
sigma^2_{"pheno"}(I) < sigma^2_{"pheno"}(C) < sigma^2_{"pheno"}(F)
$

This implies:

    - *Research advantage*: ICC/Canadian cohorts show more consistent biomarker patterns, improving statistical power
    - *Clinical disadvantage*: Mild cases may be missed, delaying diagnosis and early intervention
    - *Treatment trials*: Stricter criteria may improve signal detection but limit generalizability

The optimal criterion set depends on context: research requires homogeneity; clinical practice requires sensitivity.
] <hyp:specificity-homogeneity>

=== Clinical Implications of Framework Choice

*For Research*

    - *Biomarker studies*: Use ICC or Canadian Consensus to minimize heterogeneity
    - *Treatment trials*: Specify criteria explicitly; consider stratifying by criteria met
    - *Meta-analyses*: Account for criteria differences when combining studies

*For Clinical Diagnosis*

    - *Initial assessment*: IOM criteria provide good balance of sensitivity and specificity
    - *Severe cases*: Will meet multiple criteria; diagnosis is straightforward
    - *Mild/early cases*: May not yet meet all symptom requirements; consider provisional diagnosis with reassessment
    - *Documentation*: Record which criteria are met to facilitate comparison across studies
