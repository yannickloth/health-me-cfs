#import "../../../../shared/environments.typ": *

=== A Comparator: The ADHD Mortality Pattern
<subsec:adhd-mortality-comparison>

ADHD is used here as one comparator, chosen after the fact for two reasons: registry-scale cause-specific mortality data exist for it, and this paper already models ADHD comorbidity. Other conditions with unnatural-cause mortality excess — schizophrenia, epilepsy, chronic pain — would serve the same purpose and are not reviewed here, so the section tests one comparison, not the best available one.

#figure(
  table(
    columns: (auto, auto, auto, auto, auto),
    [*Study*], [*Design*], [*All-cause*], [*Unnatural cause*], [*Natural cause*],
    [Corrigan et al.\ (2026)], [Meta-analysis, 19 studies], [HR 1.71], [Suicide 1.89; injury 1.55], [HR 1.27],
    [Dalsgaard et al.\ (2015)], [Danish register, 1.92 M], [MRR 2.07], [Accidents most common cause], [—],
    [Chen et al.\ (2019)], [Taiwan register, 276 k], [HR 1.07], [Suicide 2.09; injury 1.30], [No increase],
    [Sun et al.\ (2019)], [Swedish register, 2.68 M], [Adulthood HR 4.64], [Injury 2.14 after adjustment], [Non-significant after adjustment],
    [Catalá-López et al.\ (2022)], [Meta-analysis, 8 studies], [RR 2.13], [RR 2.81], [RR 1.62 (NS)],
  ),
  caption: [ADHD mortality by cause, across independent designs. Estimates are associational, and the adjustment sets differ between studies. Heterogeneity is extreme: the 2022 meta-analysis reports $I^2 = 98%$ for all-cause mortality, so the pooled point estimate is a summary of a distribution, not a single effect.],
) <tab:adhd-mortality-cause-profile>

The direction is consistent; the magnitude is not. Every design in Table @tab:adhd-mortality-cause-profile finds all-cause mortality above 1.0, but the values range from 1.07 to 4.64, and the two meta-analyses disagree on the natural-cause component: the 2026 analysis reports a small but significant excess (HR 1.27, 1.16–1.38) @Corrigan2026ADHDmortality, the 2022 analysis a non-significant one (RR 1.62, 0.89–2.96) alongside a large unnatural-cause excess (RR 2.81, 1.73–4.55) @CatalaLopez2022mortality. Absolute risks stay small: 5.85 versus 2.21 deaths per 10,000 person-years in the Danish register @Dalsgaard2015ADHDmortality, and 11.57 versus 2.16 in the Swedish cohort @Sun2019prematuredeath. Relative estimates of this size are a public-health signal, not an individual risk prediction.

Two competing readings survive the data. The first treats the association as partly causal: inattention and impulsivity raise the probability of fatal injury, and untreated psychiatric comorbidity raises suicide risk. The second treats it as largely confounded or mediated: psychiatric comorbidity and adolescent substance use absorb much of the suicide and natural-cause signal, leaving only injury mortality robust to adjustment — though that estimate remains exposed to socioeconomic confounding @Sun2019prematuredeath @Mustonen2023mortality. Both readings can be true at once.

*What is shared, and what is not.* The shared property is narrow: both conditions show an excess concentrated in unnatural causes. ADHD additionally carries an injury excess, with accidents the leading contributor in the Danish register @Dalsgaard2015ADHDmortality; ME/CFS has no documented injury-mortality excess at all, so that channel has no counterpart here. ADHD's all-cause mortality is consistently elevated across designs, while ME/CFS all-cause mortality is not. And the suicide signals differ in size, though the two estimands are not equally precise: a meta-analytic hazard of about 1.9$times$ in ADHD versus an SMR of 6.85 in the Roberts ME/CFS cohort @Roberts2016, which rests on a small number of deaths; the Smith 2006 subgroups report 3.6 for CFS and 14.2 for chronic fatigue @Smith2006. The comparison is therefore one narrow analogy, not a matching of profiles.

*What the comparison adds.* It rules out one specific inference: that an elevated suicide rate, on its own, demonstrates a distinct lethal disease process. An association between an illness and suicide does not by itself identify a disease-specific mechanism. It does not weaken the stronger, harms-based reading — that ME/CFS suicide reflects treatment-refractory suffering, PEM, diagnostic dismissal, denied support and iatrogenic exercise advice — and if anything the recurrence of the pattern in a second stigmatised condition supports a harms explanation over a unique-biology one. The comparison is also compatible with the shared-biology proposals in Part II: those concern predisposition and energy metabolism, not cause of death.

#include "./adhd-mortality-comorbidity-layer/adhd-mortality-comorbidity-layer.typ"
#include "./adhd-mortality-open-questions/adhd-mortality-open-questions.typ"

#synthesis(title: [What the ADHD Comparison Does and Does Not Establish])[
The comparison constrains interpretation without supplying a treatment. Its shared content is an excess concentrated in unnatural causes, but ADHD's is injury-led while ME/CFS's is suicide-led; its divergences are all-cause mortality (elevated in ADHD, not established in ME/CFS), injury mortality (substantial in ADHD, undocumented in ME/CFS), and magnitude (about 1.9$times$ for suicide versus an SMR of 6.85 in the Roberts cohort @Roberts2016). What follows is narrow but real: an elevated suicide rate does not by itself prove a unique lethal biology (@lim:adhd-mortality-transfer-gap). What does not follow is that ME/CFS suicide is behavioural; the harms-based reading — disease-attributable suffering and dismissal — survives the comparison intact. What remains speculative is whether comorbid ADHD marks a higher-risk ME/CFS subgroup (@spec:adhd-mortality-comorbid-layer); what remains open is whether ADHD medication's mortality association is pharmacological or behavioural (@oq:adhd-medication-mediation). A severity-stratified ME/CFS cohort with ADHD status and cause-specific mortality would settle the subgroup question; the mediation question needs an ADHD-cohort analysis instead.

*Consequence:* the comparison changes nothing about the clinical obligation to screen for and act on suicide risk in ME/CFS; it only rules out using the elevated rate as proof of a unique lethal mechanism, and it supplies no treatment to borrow.
] <syn:adhd-mortality-comparison-model>
