#import "../../../shared/environments.typ": *

== PEM as a Source of Selection Bias
<sec:pem-selection-bias>

#v(0.5em)

Post-exertional malaise (PEM) — the defining symptom of ME/CFS — is also the primary driver of selection bias in ME/CFS research. The very patients most affected by the disease are the ones least able to participate in studies about it. This creates a systematic distortion: published research describes patients who are well enough to participate, not the full disease spectrum.

=== The Participation-Severity Gradient

ME/CFS severity exists on a continuum from mild (mobile, employed with accommodations) through moderate (reduced mobility, cannot work) to severe (largely housebound) and very severe (bedbound, requiring care for basic needs). Participation in research is inversely correlated with severity: the more severely affected the patient, the less likely they are represented in any study requiring physical attendance.

In a large US registry (n=2,143), 15% of ME/CFS patients were housebound, but 0% of published studies included housebound patients @Jason2015SelectionBias. A survey of 1,303 patients found that 71% reported PEM prevented study participation, with travel to a clinic being the single largest barrier @Pendergrast2024SelectionBias. Among patients reporting severe PEM, 67% declined study participation due to PEM risk — a relationship that holds across multiple independent surveys @Johnston2021PEMparticipation @Chu2019.

Severely ill patients — the housebound and bedbound — are systematically invisible in the research record @McManimen2018SevereUnderResearch. Any finding reported as "characteristic of ME/CFS" is, in practice, characteristic of mild-to-moderate ME/CFS in patients well enough to attend a clinic — a population that may differ biologically from the most severely affected.

=== Consequences for Research Interpretation

#speculation(title: [Selection bias inflates recovery rates and attenuates effect sizes])[
Studies that require in-person participation (clinic visits, exercise testing, blood draws at a hospital) recruit from the healthier end of the severity spectrum. If these studies report "high recovery rates" or "mild abnormalities," the finding is confounded by who was studied.

*Clinical trials:* A trial that reports "no severe adverse events from exercise" in a population of mild-moderate patients who volunteered to exercise cannot generalize that finding to severe patients who were systematically excluded. The same intervention may cause severe PEM in the group the trial couldn't study.

*Biomarker studies:* If a biomarker is elevated in severe patients but not in mild patients, a study that only recruits mild-moderate patients will report a null result — not because the biomarker is absent in ME/CFS, but because it's absent in the studied subpopulation.

*Falsifiable prediction:* A remote-only study design (no clinic visit required) enrolling the same population from a large patient registry should produce enrollment rates for housebound patients exceeding 5%, compared to the established 0% from clinic-based studies. If a well-resourced remote study still captures $< 3%$ housebound patients, the barrier is not PEM per se but a deeper digital-literacy/severity confound, and the selection-bias narrative is incomplete.

*Consequence:* Every published ME/CFS study should be read with an implicit caveat: "in patients well enough to participate." The true effect sizes and population characteristics may differ substantially from what the literature reports. Digital and remote study designs represent the most promising solution to this bias @Ryabchenko2025PEMbias.
] <spec:pem-selection-bias>

=== Potential Solutions

Remote and digital data collection — smartphone-based symptom tracking, wearable devices, home blood spot collection — partially addresses the participation barrier but introduces its own confounds: digital literacy, device access, and data quality in unsupervised settings. You+ME Registry and similar online-only registries @Ramiller2022YouMERegistry represent an intentional design response to this bias.

The ideal design for capturing the full disease spectrum is a population-based sampling strategy that recruits from both community and clinical settings, with home visits for the most severely affected. This has been done in epidemiological studies (Jason et al., 2002 — community-based prevalence study sampling from telephone directories) but is almost never done in pathophysiological or treatment research due to cost and logistical complexity.

*Consequence:* Until remote/home-based data collection becomes the default for ME/CFS studies, the research record will continue to describe the least affected patients. This systematically underestimates disease severity and overestimates treatments' effectiveness and safety.

=== Quantifying the Selection Bias: Severity-Weighted Re-Analysis

#speculation(title: [Heckman-style selection correction for PEM-induced missingness])[
PEM-induced selection bias is a non-random missingness problem structurally identical to the one James Heckman solved for wage studies in 1979 (where unemployed people have no observed wage, and the probability of unemployment correlates with the unobserved wage). The Heckman correction models the selection equation jointly with the outcome equation, recovering unbiased estimates of the full-population effect.

Applied to ME/CFS: (a) use registry data to estimate the PEM-severity-participation gradient — the probability that a patient of severity S joins a study, (b) collect a calibration sample from home visits to severe/bedbound patients, (c) re-weight published study effect sizes to estimate the true population effect — with wider confidence intervals reflecting uncertainty in the missing tail.

*Certainty: 0.30* — selection correction is mature in econometrics and epidemiology but has never been applied to ME/CFS methodology. The key assumption (PEM-participation gradient is monotonic and estimable) is plausible but untested.

*Falsifiable prediction:* Applying SWRA to a published cytokine study should change the effect size by a magnitude exceeding the published confidence interval width, and SWRA-corrected effect sizes from independent studies should show higher between-study agreement than uncorrected ones. If the correction changes effect sizes by $<$5% for biomarkers with a known steep PEM-severity gradient, PEM selection bias is not quantitatively important.

*Consequence:* This provides a quantitative error bar on how wrong published findings might be — converting every study from "characteristic of patients well enough to participate" to an estimate of the true population effect. It doesn't solve the recruitment problem, but it tells us how large the problem is.

*Origin:* brainstorm.
] <spec:severity-weighted-reanalysis>

=== The "Untriable Patient" Upper Bound

#speculation(title: [Formalizing the limit of what research can know about the sickest patients])[
If PEM-induced selection bias is severe enough, there exists a "PEM floor" — a severity level above which patients can never participate in any study requiring physical activity, even with home visits and generous accommodations. Above this floor, all knowledge about pathophysiology, treatment response, and prognosis is anecdotal — there are no systematic data.

A formal analysis could estimate this floor by: (a) fitting the PEM-severity-participation gradient from registry data, (b) defining the "untriable threshold" as the severity level where the probability of study participation drops below 5% (i.e., fewer than 1 in 20 patients at this severity can participate), (c) computing the proportion of the ME/CFS population above this threshold — this is the proportion of patients for whom published research provides zero direct evidence.

*Certainty: 0.35* — the PEM-severity-participation gradient is established (Jason2015SelectionBias, Pendergrast2024SelectionBias), but the threshold definition is arbitrary and the gradient may not be monotonic.

*Falsifiable prediction:* If a well-resourced home-visit study succeeded in enrolling a representative sample of very severe patients, the untriable threshold is empirically falsifiable for that study design — proving that the threshold was a funding/logistics limit, not a biological one.

*Consequence:* This formalizes a sobering reality — a non-trivial proportion of ME/CFS patients may be unreachable by any systematic research method. This is not a counsel of despair but a boundary condition: research on this population must rely on case reports, qualitative methods, and extrapolation from less-severe patients, and these methods must be acknowledged as the best evidence available rather than dismissed as "anecdotal."

*Origin:* brainstorm.
] <spec:untriable-patient-bound>

