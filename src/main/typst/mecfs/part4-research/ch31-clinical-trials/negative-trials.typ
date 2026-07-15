#import "../../shared/environments.typ": *

// Negative Trials and Null Results — Section for ch31-clinical-trials.tex
// Generated from reviewer feedback action plan A3

== Negative Trials and Null Results
<sec:negative-trials>

Understanding why treatments fail is as informative as understanding why they succeed. This section documents major negative, null, and inconclusive clinical trials in ME/CFS. Each entry identifies not only the outcome but the lessons that should guide future trial design.

#limitation(title: [Publication Bias in Negative Trials])[
Negative trials are systematically underreported in the medical literature. The trials documented here represent those that were published; an unknown number of negative results may remain in file drawers. This section necessarily reflects survivorship bias in published negative results.
]

=== Immunological Interventions
<subsec:neg-immunological>

==== Rituximab: From Promise to Definitive Negative

The rituximab story is the most instructive negative trial in ME/CFS research, illustrating how small-sample enthusiasm can collapse in larger, properly controlled studies.

*Phase II (Fluge et al., 2011).*
A small double-blind, placebo-controlled trial ($n = 30$) of two rituximab infusions (500 mg/m#super[2]) showed a response rate of 67% in the rituximab group vs.\ 13% placebo at 12 months, with responses typically appearing 3–8 months after infusion @Fluge2011rituximab. The delayed response pattern suggested an autoimmune mechanism requiring time for pathogenic antibody turnover.

*Phase III — RituxME (Fluge et al., 2019).*
The definitive phase III trial enrolled 151 patients across four Norwegian hospitals in a double-blind, placebo-controlled design with six rituximab infusions over 12 months @Fluge2019.

*Primary outcomes*: Neither co-primary endpoint—self-reported fatigue (Fatigue Severity Scale) nor overall function (SF-36 Physical Function)—showed significant differences between groups ($p = 0.81$ for overall response rate: 26% rituximab vs.\ 35% placebo). The trial was unambiguously negative.

*Lessons learned.*

    - *Heterogeneity dilutes subgroup signals*: A 67% response in a small, possibly enriched sample collapsed to no signal in an unstratified larger trial.
    - *B-cell depletion may target the wrong compartment*: Subsequent daratumumab (anti-CD38, targeting plasma cells) showed a 60% response rate @Fluge2025daratumumab, suggesting long-lived plasma cells—not B cells—are the relevant autoantibody source.
    - *Biomarker stratification is essential*: Future immunotherapy trials require pre-selection by autoantibody status.

==== Intravenous Immunoglobulin (IVIG): Contradictory Results

IVIG trials produced frustratingly inconsistent results spanning clearly positive to clearly negative outcomes.

*Lloyd et al.\ (1990).*
The first placebo-controlled IVIG trial ($n = 49$) enrolled patients with immunological abnormalities. Approximately 43% of IVIG-treated patients showed significant functional improvement @Lloyd1990. Low baseline CD4 count predicted response.

*Vollmer-Conna et al.\ (1997).*
A larger follow-up ($n = 99$) tested three IVIG doses monthly for three months @VollmerConna1997. No dose showed benefit over placebo on any outcome.

*Lessons learned.*

    - *Patient selection determines outcome*: Lloyd's positive trial required immunological abnormalities; Vollmer-Conna's did not.
    - *Immune biomarkers may predict response*: Low CD4 count, IgG subclass deficiency, and age at onset may identify IVIG-responsive subgroups.

=== Behavioral and Rehabilitation Interventions
<subsec:neg-behavioral>

==== The PACE Trial: GET and CBT

The PACE trial remains the most controversial study in ME/CFS research.

*Original trial (White et al., 2011).*
A large ($n = 641$), four-arm, assessor-blind RCT tested CBT, graded exercise therapy (GET), adaptive pacing therapy, and specialist medical care alone @White2011pace. The original publication reported CBT and GET were “moderately effective,” with recovery rates of approximately 22%.

*Reanalysis (Wilshire et al., 2018).*
Using the originally published protocol thresholds, Wilshire et al.\ found @Wilshire2018:

    - Recovery rates dropped from 22% to approximately 7–8%
    - No objective measures (6-minute walk, actigraphy, employment) improved
    - “The modest treatment effects do not exceed what could be accounted for by participant reporting biases”

In 2021, NICE removed GET and CBT-as-treatment from its ME/CFS guidelines.

*Lessons learned.*

    - *Objective outcomes are non-negotiable*: Self-reported outcomes in unblinded behavioral trials cannot be sole primary endpoints.
    - *Protocol fidelity matters*: Mid-trial changes to outcome thresholds undermine validity.
    - *Data transparency is essential*: The reanalysis was possible only through Freedom of Information litigation.

=== Antiviral Interventions
<subsec:neg-antiviral>

==== Acyclovir (Straus et al., 1988)

An early RCT ($n = 27$) tested IV then oral acyclovir for persistent EBV @Straus1988. No significant difference between groups.

*Lesson*: Wrong antiviral spectrum (acyclovir has minimal HHV-6 activity) and no virus-specific patient selection. A broader critique applies: many early antiviral trials tested monotherapy against a single virus, ignoring the possibility that multiple co-infections (HHV-6 + EBV + enterovirus) require combination antiviral coverage — a pattern documented in Lyme disease, where standard monotherapy is insufficient against co-infections such as Babesia and Bartonella @Popov2026TickCoinfection.

==== Valganciclovir — Mixed Results (Montoya et al., 2013)

The EVOLVE trial ($n = 30$) of valganciclovir in patients with elevated HHV-6/EBV titers @Montoya2013valganciclovir. Primary composite endpoint: not significant. However, individual endpoints showed significant improvements in mental fatigue ($p = 0.039$), fatigue severity ($p = 0.006$), and cognition ($p = 0.025$).

*Lesson*: Composite endpoints can mask real subset effects. Virus-selected populations show stronger signals. An additional confound is treatment duration: in a retrospective analysis of 61 valganciclovir-treated patients, longer treatment duration was significantly associated with better response ($p = 0.0002$) @Watt2012ValganciclovirResponse, suggesting the 6-month EVOLVE trial may have been too short to capture the full treatment effect. This parallels the Lyme disease retreatment literature, where 90-day courses were shown by independent biostatistical review to be underpowered @DeLong2012AbxRetreat.

==== Rintatolimod (Ampligen): Regulatory Failure

Phase III ($n = 234$) showed marginal overall improvement in exercise tolerance @Strayer2020. Post-hoc analysis found 51.2% improvement in patients with 2–8 year disease duration @Strayer2020rintatolimod. FDA advisory committee voted 8–5 against approval, citing reliance on post-hoc subgroup analyses.

*Lesson*: Post-hoc subgroup analyses cannot rescue a trial; the disease-duration effect requires prospective confirmation.

=== Neurological and Cholinergic Interventions
<subsec:neg-neurological>

==== Galantamine (Blacker et al., 2004)

The largest ME/CFS pharmacological trial ($n = 434$) tested galantamine at four doses across 35 centers @Blacker2004. No statistically significant differences on any outcome measure.

*Lesson*: Definitive null result rules out peripheral cholinergic enhancement. Cognitive impairment in ME/CFS is not cholinergic.

=== Antidepressant Interventions
<subsec:neg-antidepressant>

==== Fluoxetine (Vercoulen et al., 1996)

Double-blind RCT ($n = 96$) enrolling both depressed and non-depressed CFS patients @Vercoulen1996. Fluoxetine showed no effect on any CFS dimension in either subgroup.

*Lesson*: CFS is not depression. Serotonergic modulation does not address core fatigue.

=== Endocrine Interventions
<subsec:neg-endocrine>

==== Hydrocortisone

Two RCTs tested hydrocortisone replacement based on mild hypocortisolism findings. McKenzie et al.\ ($n = 70$): modest improvement offset by adrenal suppression @McKenzie1998. Cleare et al.\ ($n = 32$): 28% vs.\ 9% normalized fatigue scores, but adrenal suppression even at low doses @Cleare1999.

*Lesson*: Mild hypocortisolism may be a _consequence_ of ME/CFS rather than a cause, explaining why correction does not resolve symptoms.

=== Summary Table
<subsec:neg-summary-table>



#figure(
  table(
    columns: (auto, auto, auto, auto, auto),

    [*Intervention*], [*Design*], [$n$], [*Result*], [*Key Lesson*],

    [Rituximab III @Fluge2019], [DB-RCT], [151], [Negative], [No benefit unstratified; subgroup may exist],


    [PACE (GET/CBT) @White2011pace], [AB-RCT], [641], [Contested], [No objective benefit; reanalysis $tilde$7% @Wilshire2018],


    [Rintatolimod @Strayer2020], [DB-RCT], [234], [Mixed], [Marginal overall; subset signal at 2–8 yr],


    [Galantamine @Blacker2004], [DB-RCT], [434], [Negative], [Definitive null; not cholinergic],


    [Acyclovir @Straus1988], [DB-RCT], [27], [Negative], [Wrong antiviral spectrum],


    [Valganciclovir @Montoya2013valganciclovir], [DB-RCT], [30], [Mixed], [Primary negative; individual endpoints positive],


    [IVIG @VollmerConna1997], [DB-RCT], [99], [Negative], [No benefit without immune pre-selection],


    [Fluoxetine @Vercoulen1996], [DB-RCT], [96], [Negative], [CFS $eq.not$ depression],


    [Hydrocortisone @McKenzie1998], [DB-RCT], [70], [Negative], [Adrenal suppression outweighs benefit],
  ),
  caption: [Major negative, null, and inconclusive trials in ME/CFS.],
) <tab:negative-trials>

DB = double-blind; AB = assessor-blind; RCT = randomized controlled trial.


=== Cross-Cutting Lessons
<subsec:neg-lessons>
<sec:neg-crosscutting>

    - *ME/CFS is not one disease for treatment purposes.* Every trial enrolling unstratified patients produced null or weak results. Every trial pre-selecting by biomarker found stronger signals.

    - *Subjective outcomes in unblinded trials are unreliable.* Future trials must include objective measures: actigraphy, two-day CPET, employment status, or validated functional capacity assessments.

    - *Composite primary endpoints can mask real effects.* Selecting a single, clinically meaningful primary endpoint is preferable.

    - *Post-hoc subgroup analyses are hypothesis-generating, not confirmatory.* Adaptive trial designs can incorporate pre-specified biomarker stratification.

    - *The null hypothesis is informative.* Each negative trial narrows the hypothesis space: galantamine rules out cholinergic mechanisms; fluoxetine argues against serotonergic deficit; hydrocortisone reframes hypocortisolism as consequence not cause.

    - *Treatment duration and intensity may be inadequate.* A systematic confound in chronic disease treatment trials is that negative results may reflect insufficient treatment duration, dosing, or coverage rather than true treatment inefficacy. The Lyme disease literature provides the paradigmatic example: Klempner et al. (2001) found no benefit to 90-day antibiotic retreatment, but the enrolled patients averaged 4.7 years of illness and had already failed 3+ prior courses, and the retreatment excluded coverage for co-infections such as Babesia and Bartonella @Klempner2001LymeAbx. Independent biostatistical review found all four Lyme retreatment RCTs were underpowered, and two (Krupp 2003, Fallon 2008) actually showed significant benefit that was discounted because the primary endpoint was statistically non-significant @DeLong2012AbxRetreat @Krupp2003StopLD @Fallon2008LymeCeftriaxone. In ME/CFS, Watt et al. (2012) found that longer valganciclovir treatment predicted better response ($p = 0.0002$) @Watt2012ValganciclovirResponse. Fluge et al. (2015) reported a mean response lag of 23 weeks for rituximab — trials shorter than 6 months could not have captured responses @Fluge2015RituximabPhase2. Disease duration at treatment initiation also matters: Strayer et al. (2020) found rintatolimod benefit only in patients with 2--8 years of illness @Strayer2020RintatolimodDuration. These findings suggest that negative trial results should be interrogated for three confounds before being accepted as evidence of inefficacy: (1) Was the treatment duration adequate to normalize the chronic pathway dysregulation? (2) Was the treatment spectrum broad enough to cover the relevant co-morbid mechanisms or co-pathogens? (3) Was the patient population within the disease-duration treatment window? This framework does not imply that all negative trials are false negatives — the definitive negative rituximab Phase III (Fluge 2019, $n = 151$), for example, tested an adequate 12-month duration and returned a genuinely null result @Fluge2019RituximabPhase3. But it does require caution in converting "treatment failed in this trial" into "the mechanism is not implicated."

#achievement(title: [The Lyme Paradigm for Interpreting Negative Treatment Trials])[
The Lyme disease treatment literature provides a mature, well-documented case study of how trial design choices can produce false-negative conclusions about treatment efficacy. Klempner et al. (2001) — two RCTs of 90-day antibiotic retreatment for persistent Lyme — was heavily cited as evidence that extended antibiotics are ineffective @Klempner2001LymeAbx. However, DeLong's independent biostatistical review found all four Lyme retreatment RCTs were underpowered, with two showing significant benefit on individual endpoints @DeLong2012AbxRetreat. The enrolled patients were pre-treated (mean 4.7 years illness, 3+ prior antibiotic courses) — a population that may have had irreversible pathology, not representative of treatment-naive chronic Lyme. Cameron (2006) argued the Klempner trials lack generalizability due to this selection bias @Cameron2006Generalizability. Feng et al. (2019) demonstrated that B. burgdorferi forms persister/biofilm variants requiring combination antibiotic therapy — monotherapy inevitably fails @Feng2019BorreliaPersister. Popov (2026) documented that standard Lyme regimens do not cover co-infections (Babesia, Bartonella) @Popov2026TickCoinfection. Together, these findings show that the Lyme trials tested inadequate treatment (wrong drugs, wrong duration, wrong patients) — not that persistent infection is untreatable.

*The contrary position.* The opposing view — that the Lyme retreatment trials correctly found inefficacy and extended antibiotics cause net harm — is the mainstream IDSA/CDC interpretation. Prolonged intravenous antibiotics carry documented risks (line infections, C. difficile, biliary toxicity). The Lyme paradigm should be understood as one interpretation of the retreatment literature, not the only defensible reading. The same qualification applies, a fortiori, to the ME/CFS extrapolation — where no analogous persister biology, biofilm data, or co-infection framework exists.

This framework applies directly to ME/CFS: the valganciclovir "mixed" result may reflect inadequate duration (6 months, versus Watt's duration-response finding); the acyclovir trial used the wrong antiviral spectrum; and no ME/CFS antiviral trial has tested combination coverage against the full known virome (HHV-6 + EBV + enterovirus). The lesson is not that these treatments work — the lesson is that the trials do not constitute evidence that they do not. (Certainty: 0.55 — the Lyme trial-methodology evidence is robust and well-replicated via DeLong's independent biostatistical review @DeLong2012AbxRetreat; the ME/CFS extrapolation is hypothesis-generating only, with no prospective duration-randomized data)

*Consequence:* This framework provides a structured way for clinicians and researchers to question whether a "failed" treatment trial genuinely rules out a mechanism — distinguishing trials where the treatment was given a fair chance to work (e.g., RituxME) from those where duration, spectrum, or patient selection may have been insufficient to detect a real effect.
] <sec:lyme-paradigm>

#limitation(title: [Caveats to the Lyme→ME/CFS Duration Analogy])[
The duration critique is not universally applicable, and the Lyme→ME/CFS parallel may be analogical rather than homologous. Several important caveats constrain the framework:

*Lyme-specific applicability.* Lyme disease has an established causative pathogen (B. burgdorferi) with well-characterized persister/biofilm biology @Feng2019BorreliaPersister. These features — a known persistent pathogen, demonstrated biofilm formation, and identified co-infections requiring combination therapy — are precisely what make the duration critique credible for Lyme. ME/CFS has none of them: no single established pathogen, no persister biology in human tissue, and no identified co-infections requiring simultaneous suppression. The Lyme→ME/CFS parallel cuts both ways: the features that render the Lyme "negative" trials questionable may argue *against* the same critique applying to ME/CFS. The analogy is methodological (check trial design adequacy before accepting a null result) but not mechanistic (a longer antibiotic trial is not the same argument as a longer antiviral/immunomodulatory trial). The definitive negative rituximab Phase III trial ($n = 151$, 12-month treatment) tested an adequate duration and returned a genuinely null result @Fluge2019RituximabPhase3, showing that longer treatment alone is not a universal explanation for negative trials. (Certainty: 0.65 — the Lyme evidence is robust; the ME/CFS analogy is structurally weaker than the Lyme evidence it analogizes from.)

*Selection bias vs. duration.* Cameron (2006) argued that the Klempner trials' primary flaw was *who* was enrolled (patients averaging 4.7 years of illness with 3+ prior failed courses) rather than *how long* they were treated @Cameron2006Generalizability. In ME/CFS, illness duration at enrollment (Strayer's 2–8 year window) may be a stronger predictor of trial outcome than trial treatment duration @Strayer2020RintatolimodDuration. (Certainty: 0.50 — plausible but unconfirmed.)

*Placebo response and natural recovery as sufficient alternative explanations.* In blinded ME/CFS trials, placebo response rates exceed 30% @Fluge2019RituximabPhase3. Extended-duration trials showing benefit at 12+ months may inadvertently capture spontaneous recovery (estimated 5–10% per year in some cohorts) rather than treatment effect @["Smith2015ME/CFSTxSysRev"]. Together, placebo maintenance plus time-dependent recovery could fully explain the Watt duration-response gradient ($p = 0.0002$) without invoking genuine drug efficacy: patients who stayed on drug longer may have been those who perceived benefit (confounding by indication), and patients who discontinued were likely non-responders. These alternative explanations are not ruled out by any existing data. (Certainty: 0.55 that placebo + natural recovery can account for a substantial portion of observed duration effects, based on the Fluge 2019 placebo rate and Smith 2015 recovery estimates; the question of whether they explain the *entirety* of the Watt gradient is unresolved.)

*Key evidence is retrospective.* Watt et al. (2012) found a duration-response gradient ($p = 0.0002$) @Watt2012ValganciclovirResponse, but this was a retrospective chart review — confounding by indication is possible (patients who received longer treatment may have been systematically those who were responding). No prospective duration-randomized trial exists. The most dramatic evidence for combination approaches in Lyme (Horowitz 2020, 98% response rate) is an uncontrolled case series (n=40) with certainty 0.30 @Horowitz2020DapsoneLyme. (Certainty: 0.70 for the methodological concern.)

*Unfalsifiability risk.* If every negative trial is re-interpreted as "too short," the duration critique becomes unfalsifiable — a post-hoc rationalization that prevents any treatment from being ruled out. The three-part framework (duration + spectrum + window) cannot be independently tested in a single factorial design because the factors are inherently confounded: extending duration shifts the disease-duration window, and broadening spectrum changes the drug. (Certainty: 0.60 from the clinical trial design literature.)

*Consequence:* These caveats do not refute the duration critique — they constrain it. A definitive answer requires prospective trials that randomize treatment duration in well-stratified populations. Until then, the framework should be applied with epistemic caution: negative trials should be interrogated for duration confounds, but not automatically reclassified as false negatives.
]
<lim:duration-caveats>

#open-question(title: [Key Research Directions for the Duration Critique in ME/CFS])[
Three research programs would directly test the duration critique without requiring the Lyme analogy:

1. *DeLong-style biostatistical reanalysis.* Apply DeLong's methodology (power analysis, effect-size extraction, minimum detectable effect calculation) to all 35 ME/CFS treatment trials catalogued in Smith et al. (2015) @["Smith2015ME/CFSTxSysRev"]. Quantify what proportion of "negative" trials were structurally underpowered to detect clinically meaningful effect sizes given their observed variability. (Origin: brainstorm; Certainty: 0.70 for the methodology proposal — DeLong's approach is well-validated for Lyme @DeLong2012AbxRetreat.)

2. *Head-to-head duration RCT.* Randomize HHV-6/EBV seropositive ME/CFS patients to 6 months vs. 12 months of valganciclovir, with a prospective primary endpoint at 15 months. This directly tests the duration hypothesis without the Lyme analogy. (Origin: brainstorm; Certainty: 0.65 as a research design.)

3. *Prospective duration-stratified trial.* Stratify enrollment by illness duration (less than 3 years, 3–8 years, more than 8 years) and randomize within each stratum. This prospectively tests Strayer's post-hoc 2–8 year treatment-window finding @Strayer2020RintatolimodDuration before it can be used to refute negative trials. (Origin: brainstorm; Certainty: 0.55.)

4. *Adaptive platform trial.* An adaptive design with 3-month interim analyses allowing non-responders to continue or escalate would directly map the duration-response curve. Falsifiable prediction: at least 30% of patients who do not respond at 3 months will become responders by 9 months of continued treatment, producing a statistically significant treatment × time interaction. (Origin: brainstorm; Certainty: 0.50.)

*Consequence:* Each of these research programs answers a specific, falsifiable question about treatment duration in ME/CFS. The field cannot resolve whether negative trials are duration-confounded without at least one of them. Collectively they transform the duration critique from a polemic into a testable research program.

(Origin: brainstorm)
] <oq:duration-critique-research>
