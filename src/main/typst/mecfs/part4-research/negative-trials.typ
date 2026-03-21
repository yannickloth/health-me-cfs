#import "../shared/environments.typ": *

// Negative Trials and Null Results — Section for ch21-clinical-trials.tex
// Generated from reviewer feedback action plan A3
// To integrate: \input this file at the end of ch21-clinical-trials.tex

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

*Lesson*: Wrong antiviral spectrum (acyclovir has minimal HHV-6 activity) and no virus-specific patient selection.

==== Valganciclovir — Mixed Results (Montoya et al., 2013)

The EVOLVE trial ($n = 30$) of valganciclovir in patients with elevated HHV-6/EBV titers @Montoya2013valganciclovir. Primary composite endpoint: not significant. However, individual endpoints showed significant improvements in mental fatigue ($p = 0.039$), fatigue severity ($p = 0.006$), and cognition ($p = 0.025$).

*Lesson*: Composite endpoints can mask real subset effects. Virus-selected populations show stronger signals.

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
    // TODO: fix columnsp{2.5cm}p{1.2cm}p{0.8cm}p{1.3cm}p{5.5cm}@}

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

    - *ME/CFS is not one disease for treatment purposes.* Every trial enrolling unstratified patients produced null or weak results. Every trial pre-selecting by biomarker found stronger signals.

    - *Subjective outcomes in unblinded trials are unreliable.* Future trials must include objective measures: actigraphy, two-day CPET, employment status, or validated functional capacity assessments.

    - *Composite primary endpoints can mask real effects.* Selecting a single, clinically meaningful primary endpoint is preferable.

    - *Post-hoc subgroup analyses are hypothesis-generating, not confirmatory.* Adaptive trial designs can incorporate pre-specified biomarker stratification.

    - *The null hypothesis is informative.* Each negative trial narrows the hypothesis space: galantamine rules out cholinergic mechanisms; fluoxetine argues against serotonergic deficit; hydrocortisone reframes hypocortisolism as consequence not cause.
