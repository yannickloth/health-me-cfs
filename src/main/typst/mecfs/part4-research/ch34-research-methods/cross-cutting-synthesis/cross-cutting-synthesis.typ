#import "../../../shared/environments.typ": *

== Cross-Cutting Synthesis
<sec:research-methods-synthesis>

#v(0.5em)

The eight methodological challenges discussed above are not independent problems — they form a mutually reinforcing system. Case definition heterogeneity (1) selects biologically different populations. PEM-induced selection bias (2) ensures those populations differ systematically from the patient population. Small samples (6, 7) in heterogeneous populations (7) inflate variance and mask real effects. Unblinded trials with subjective outcomes (4) produce inflated treatment estimates. Biomarkers discovered in small samples without external validation (6) largely fail to replicate — and when they do, the populations studied under different criteria (8) are often biologically different from the discovery population.

No single methodological fix solves all problems. Standardizing case definitions (1) doesn't fix selection bias (2). Larger samples (6, 7) don't fix heterogeneity without stratification. Blinding (4) is impossible for behavioral interventions. And the cost of properly designed studies (three-arm with disease controls + sedentary controls, adequately powered for subgroup detection, with external validation) far exceeds current ME/CFS research funding levels.

#synthesis(title: [The interlocking nature of ME/CFS methodological problems])[
This chapter has argued that the "replication crisis" in ME/CFS is not a failure of scientific method — it is a predictable consequence of studying different diseases under the same name in populations that differ systematically from the patient population, using designs that amplify bias, in samples too small to accommodate the heterogeneity of the disease.

The most actionable recommendations, in order of impact:

1. *Mandate PEM-required case definitions in all ME/CFS research.* Fixes Sub-Topics 1 and 8 (whole-population definition and cross-criteria replication). This single change would resolve more "failed replications" than any other.

2. *Require objective primary outcomes in all ME/CFS treatment trials.* Fixes Sub-Topic 4 (subjective outcomes in unblinded trials). Subjective outcomes can be secondary.

3. *Require external validation as a publication standard for all biomarker claims.* Fixes Sub-Topic 6 (biomarker overfitting). Discovery without validation is hypothesis generation, not evidence.

4. *Design for heterogeneity from the start.* Fixes Sub-Topic 7 (statistical power). Use stratified enrollment, pre-specified subgroup analyses, and adaptive enrichment rather than analyzing heterogeneous populations as one group and hoping for the best.

The remaining problems — PEM selection bias (Sub-Topic 2), the 2-day CPET reliability debate (Sub-Topic 3), and optimal control group selection (Sub-Topic 5) — require more research investment rather than design changes. Remote data collection, independent CPET replication by neutral laboratories, and validated control group matching algorithms are research programs, not policy changes.

*Consequence:* The ME/CFS research methodology is not broken — it is underpowered, under-designed, and under-funded for the complexity of the disease it studies. The solutions exist. They are not cheap or easy, but they are known and documented. A reader evaluating the ME/CFS literature through this chapter's lens can distinguish between findings that are reliable (replicated across criteria, externally validated, objective outcomes) and findings that are methodological artifacts — and can understand why the distinction exists.
] <syn:research-methods-model>

=== Epistemic Boundaries: What This Chapter's Framework Cannot Account For

#limitation(title: [NK cell dysfunction: a counterexample that constrains the "small-sample" narrative])[
This chapter argues that small-sample biomarker studies produce false positives, that findings in Fukuda cohorts fail to replicate in more specific criteria, and that unblinded trials overestimate treatment effects. These arguments are correct as general propositions, but NK cell dysfunction is a counterexample that must be acknowledged: it was discovered in small studies (n $<$ 30), replicated across every diagnostic criterion (Fukuda, CCC, ICC), across independent laboratories worldwide over 30+ years, and shows consistent effect direction in every replication.

This single finding constrains the chapter's narrative in an important way: not all small-sample findings are overfit, not all criteria-heterogeneous findings fail to replicate, and not all findings from the "methods crisis" era are false. The chapter's framework is probabilistic — it identifies systematic biases that affect most findings, not deterministic laws that invalidate all findings. NK cell function is the positive outlier that proves the rule is statistical, not absolute.

*More general point:* If the chapter's methodological critiques applied uniformly, the entire ME/CFS literature would be false. That is not the case. The strongest signals (NK function, lactate elevation, Day-2 CPET decline) survive every methodological filter. The signals that fail are the noisy ones — and those are exactly the ones the chapter's critiques predict should fail.

*Origin:* brainstorm.
] <lim:nk-cell-counterexample>

#limitation(title: [Findings that survive all criteria: where the heterogeneity problem doesn't matter])[
Relatedly, some findings are robust enough to survive criteria heterogeneity: NK cell dysfunction (across all criteria), lactate elevation in a subset (across criteria), and Day-2 CPET decline (across CCC/ICC). These findings suggest that the biological signal is strong enough to be visible regardless of criteria choice — the population contamination problem doesn't eliminate the signal, it just dilutes it. The chapter's "tiered reading" framework (Tier 1: cross-criteria replication) explicitly accounts for this, but the narrative emphasis on heterogeneity should acknowledge that some signals appear to punch through.

*Origin:* brainstorm.
] <lim:criteria-survivors>

#open-question(title: [What if ME/CFS is actually one disease?])[
The chapter's heterogeneity narrative implies that ME/CFS is multiple diseases. But consider the null hypothesis: ME/CFS is a single disease with a common pathophysiology that produces variable clinical presentations — like tuberculosis (which can be pulmonary, miliary, skeletal, or meningeal but is always *Mycobacterium tuberculosis*) or lupus (which can be renal, dermatological, hematological, or neurological but is always autoimmune).

If ME/CFS is a single disease with variable expression:
- The "heterogeneity" that masks treatment effects is noise, not structure — and stratifying on symptoms won't find biology because symptoms are downstream of the common pathway.
- The criteria debate matters less — all criteria capture the same disease, just different severities and symptom profiles.
- The rituximab null result is a true null — the drug doesn't work for ME/CFS, not because subgroups diluted the signal.
- The chapter's central argument (heterogeneity as the primary confound) sends research in the wrong direction — toward subgrouping on symptoms when what's needed is universal biomarkers.

This null hypothesis is testable: if ME/CFS were one disease with common pathophysiology, a sufficiently large multi-omics study should find a set of biomarkers that are present in all ME/CFS patients (not just subtypes), absent in all healthy controls, and independent of which symptoms predominate. If no such universal signature exists after adequate sample sizes, the single-disease hypothesis is refuted — and the chapter's heterogeneity framework is the better model.

*Consequence:* The heterogeneity narrative is the best fit to current evidence but is not proven. The single-disease hypothesis is a genuine alternative with falsifiable predictions from data that will become available in the next 5 years (DecodeME, Xiong et al. multi-omics, Aitken et al. digital phenotyping). The chapter should be read as a framework, not a conclusion.

*Origin:* brainstorm.
] <oq:single-disease-null>

=== The Chapter's Own Methodological Limitations

#limitation(title: [This chapter's evidence base shares the methodological weaknesses it criticizes])[
This chapter cites studies demonstrating that small-sample biomarker studies overfit, that case definition heterogeneity produces false findings, and that unblinded trials overestimate effects. But the chapter's own evidence base — the 58 papers cited — contains the same methodological weaknesses:

- The PEM selection bias literature (Jason2015, Pendergrast2024, Johnston2021) is based on surveys with self-reported participation that may overestimate bias magnitude (patients who didn't participate may not be the same as patients who report they couldn't participate).
- The case definition heterogeneity literature is dominated by the Jason research group, introducing the same network-dependency concern the chapter raises about 2-day CPET.
- The "PEM-required criteria" standard the chapter recommends will exclude mild cases, racial/SES minority patients who present differently @Haney2024RacialSEScriteria, and patients whose PEM is atypical — creating its own selection bias while claiming to solve it.

This is not a reason to discard the chapter's arguments. It is an acknowledgment that methodological critique, like all research, operates within its own constraints. The chapter's recommendations — PEM-required criteria, objective outcomes, external validation, heterogeneity-aware design — are directionally correct but should not be treated as immune to the very biases the chapter describes.

*Origin:* brainstorm.
] <lim:chapter-methodological-limits>

#limitation(title: [The perfectionism trap: when methodological standards prevent any research from happening])[
The chapter's recommendations — PEM-required criteria, sedentary + disease-matched controls, objective primary outcomes, adequate power for subgroup detection, external biomarker validation — collectively describe a study design that few ME/CFS research groups could afford and no single grant mechanism could fund. There is a genuine risk that methodological perfectionism becomes paralysis: if the only acceptable study is a \$10 million multi-site design, the field produces no studies at all.

The pragmatic counterargument: imperfect research is better than no research, provided that the imperfections are acknowledged. A small-sample biomarker study with an honest discussion of overfitting risk contributes more than a perfectly designed study that was never funded. The chapter's recommendations should be read as aspirational standards to move toward, not as minimum requirements that must be met before any research can be published.

*Origin:* brainstorm.
] <lim:perfectionism-trap>

