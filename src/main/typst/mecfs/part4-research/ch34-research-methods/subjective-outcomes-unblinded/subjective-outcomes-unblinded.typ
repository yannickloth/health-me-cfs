#import "../../../shared/environments.typ": *

== Subjective Outcomes in Unblinded Trials
<sec:subjective-outcomes>

#v(0.5em)

The most important confounding variable in ME/CFS treatment research is not a biological variable at all — it is trial design. ME/CFS treatment trials that use subjective primary outcomes (fatigue scales, function questionnaires) in unblinded designs systematically overestimate treatment effects by a magnitude that is well-characterized in the general methodological literature and specifically documented in ME/CFS.

=== The General Evidence: Unblinded Trials Overestimate Effects

The BRANDO collaboration meta-analyzed 1,973 randomized controlled trials and found that lack of double-blinding exaggerated intervention effects by an average of 13%, with the effect driven entirely by subjective outcomes — for which the exaggeration was 23% (ROR=0.77) @Savovic2012blinding. A separate NEJM meta-analysis of 234 trials found that placebo effects are modest on continuous subjective outcomes and negligible on binary outcomes — which paradoxically makes the problem worse for ME/CFS @Hrobjartsson2012Placebo: the "placebo" literature finds modest effects, but the *bias* of unblinded design (expectation, reporting, differential dropout) is larger than the placebo effect itself.

This is a fundamental issue of internal validity, not a ME/CFS-specific problem. But ME/CFS treatment trials have a unique constellation of features that amplify this bias:

1. Virtually all GET/CBT trials were unblinded (patients and therapists both knew the treatment)
2. Primary outcomes were subjective (Chalder Fatigue Scale, SF-36 physical function)
3. Many were conducted by researchers with pre-existing commitments to the intervention frameworks

=== The ME/CFS-Specific Evidence

#speculation(title: [The PACE trial as a methodological case study])[
The PACE trial (n=641) is the most extensively analyzed case study in ME/CFS research methodology. The original publication reported that CBT and GET were "moderately effective" — but this conclusion depended on mid-trial changes to the recovery thresholds. When analyzed against the original protocol thresholds, CBT and GET effects became non-significant @Wilshire2018.

Several independent reanalyses converged on the same finding: the PACE trial's claimed treatment effects are consistent with expectation bias in an unblinded trial with subjective outcomes. Key observations:

- On objective measures (6-minute walk test, actigraphy), no group differences were found.
- On subjective measures, the improvement reported was roughly 2 points on the Chalder Fatigue Scale — consistent with the 13–23% bias amplification documented by @Savovic2012blinding.
- The 2011 Cochrane review of GET for ME/CFS was withdrawn in 2021 specifically because the evidence relied on unblinded trials with subjective outcomes — a withdrawal that had committee resignations but was upheld.

*Falsifiable prediction:* Any future exercise-intervention trial using an objective primary outcome (actigraphy-measured step count, Day-2 CPET VO2peak, or digital biomarker) in a PEM-required cohort will find no significant between-group difference, regardless of investigator allegiance. This prediction has been confirmed retrospectively @Wormgoor2021physio and predicts prospectively. If a trial reports a significant objective improvement on actigraphy or CPET for a behavioral intervention in an unblinded design, the claim that unblinded subjective outcomes explain published treatment effects is empirically weakened.

*Consequence:* The PACE trial is not evidence that GET/CBT are effective for ME/CFS. It is evidence that unblinded trials with subjective outcomes should not be the basis for clinical guidelines — a finding consistent with NICE 2021's reversal of GET/CBT recommendations and the Cochrane withdrawal.
] <spec:pace-methodology>

A 2021 systematic review of 18 physiotherapy RCTs in ME/CFS found that treatment effects disappeared when narrower (PEM-inclusive) diagnostic criteria and objective outcome measures were used @Wormgoor2021physio. A 2026 meta-analysis of exercise interventions similarly found effects were driven by unblinded trials with subjective outcomes; effects disappeared in sensitivity analyses of higher-quality studies @Zhao2026ExerciseMeta.

=== Patient-Reported Harms in Unblinded Trials

The most troubling gap in the unblinded trial literature is the systematic under-reporting of harms. A survey of 9,051 ME patients found 74% reported that GET worsened their condition — with the proportion rising to 74.1% for ICC-criteria patients @Kindlon2014HarmsReporting. A separate survey of 9,340 patients found 56.7% reported GET deterioration @Geraghty2019GET. These rates are an order of magnitude higher than the adverse event rates reported in the RCTs.

#limitation(title: [The "harms underreporting" disconnect])[
RCT adverse event reporting requires active ascertainment — patients must report problems, and investigators must decide what to count. In ME/CFS, where PEM onset may be delayed by 24–48 hours, attribution to the intervention is methodologically difficult. A patient who crashes after a GET session may attribute it to overexertion rather than the "intervention," or a trial may not count PEM as an adverse event if it's considered "expected." The survey data suggests that harms are being systematically under-counted in RCTs by a factor of 5–10×.

*Consequence:* Safety conclusions from unblinded ME/CFS treatment trials should be treated as unreliable. The absence of reported adverse events in an RCT does not mean the intervention is safe — it may mean the trial design could not detect the harms that patients report in surveys. This is particularly important for exercise-based interventions where the signal from patient surveys is consistent and large.
] <lim:harms-underreporting>

=== The Counter-Argument

Some researchers defend the use of subjective outcomes and unblinded designs in ME/CFS by arguing that (a) fatigue and function are inherently subjective experiences that can only be measured subjectively, (b) blinding is impossible for behavioral interventions, and (c) subjective improvement is clinically meaningful even if objective measures don't change. The GRADE framework — which was cited in defense of exercise recommendations @Ewald2026handiresponse — rates evidence quality by design features rather than by sensitivity to bias.

The counter-counter-argument, which this paper endorses, is that GRADE's methodological conservatism fails when bias is directional and systematic. If unblinded trials with subjective outcomes overestimate effects by 23% @Savovic2012blinding, and ME/CFS treatment effects are in the 10–20% range, then GRADE "moderate-quality evidence" may be entirely explained by bias. The NICE 2021 and Cochrane 2021 reversals represent institutional acceptance of this argument.

*Consequence:* For future ME/CFS treatment trials, the minimum methodological standard should include objective primary outcomes (actigraphy, CPET, workplace step count, digital biomarkers). Subjective outcomes can be secondary — they capture the patient's experience — but cannot be the basis for claims of efficacy when blinding is impossible. This is not an anti-patient stance; it is a pro-accuracy stance that protects patients from interventions that work only in questionnaires.
