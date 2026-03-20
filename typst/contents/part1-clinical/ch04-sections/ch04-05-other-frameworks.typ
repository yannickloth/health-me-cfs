#import "../../../template.typ": *

== Other Diagnostic Frameworks
<sec:other-criteria>

=== Fukuda Criteria (1994)

The Fukuda criteria, published by the CDC in 1994 @Fukuda1994, represented the first widely-adopted standardized definition of chronic fatigue syndrome. These criteria dominated ME/CFS research for two decades.

#requirement-box(title: [Fukuda Diagnostic Criteria])[
Diagnosis requires:

*1. Clinically Evaluated, Unexplained, Persistent or Relapsing Chronic Fatigue that:*

    - Is of *new or definite onset* (not lifelong)
    - Is *not the result of ongoing exertion*
    - Is *not substantially alleviated by rest*
    - Results in *substantial reduction* in previous levels of occupational, educational, social, or personal activities

*2. Four or More of the Following Symptoms (concurrent for ≥6 months):*

    - Impaired memory or concentration
    - Sore throat
    - Tender cervical or axillary lymph nodes
    - Muscle pain
    - Multi-joint pain without swelling or redness
    - Headaches of new type, pattern, or severity
    - Unrefreshing sleep
    - Post-exertional malaise lasting more than 24 hours

] <req:fukuda>

The Fukuda criteria played a crucial role in standardizing ME/CFS research:

    - First internationally-adopted consensus definition
    - Enabled comparison across studies and centers
    - Established 6-month duration threshold
    - Required objective clinical evaluation

#warning-box(title: [Critical Limitations])[
The Fukuda criteria have fundamental flaws that limit their current utility:

*Post-Exertional Malaise Not Mandatory:*
The most pathognomonic feature of ME/CFS (PEM) is merely one of eight optional symptoms. This allows diagnosis of patients without the hallmark feature, including those with:

    - Primary depression
    - Deconditioning
    - Other fatiguing conditions without PEM

*Mathematical Analysis of Heterogeneity:*
The requirement of “4 or more of 8 symptoms” yields:

$
binom(8, 4) + binom(8, 5) + binom(8, 6) + binom(8, 7) + binom(8, 8) = 70 + 56 + 28 + 8 + 1 = 163 " distinct profiles"
$

Two patients can both meet Fukuda criteria while sharing only 2 of 8 symptoms (50% overlap in the limiting case). This mathematical heterogeneity explains null results in many Fukuda-based trials.

*Overinclusion:*
Systematic comparison studies found that Fukuda criteria capture patients who do not meet more restrictive criteria (Canadian Consensus, ICC) and who have:

    - Less severe functional impairment
    - Better prognosis
    - Lower biomarker abnormality rates
    - Higher rates of primary psychiatric diagnoses

*Research Impact:*
Many failed clinical trials used Fukuda criteria, likely enrolling heterogeneous populations including patients without true ME/CFS. This contributed to therapeutic nihilism.
] <warn:fukuda-limitations>

Modern research increasingly avoids Fukuda criteria in favor of Canadian Consensus (2003), ICC (2011), or IOM (2015). The Fukuda criteria remain historically important but are now recognized as insufficiently specific for ME/CFS.
=== Oxford Criteria (1991)

The Oxford criteria @Sharpe1991oxford, published in 1991, represent the *broadest and most controversial* definition of chronic fatigue syndrome.

#requirement-box(title: [Oxford Diagnostic Criteria])[
Diagnosis requires:

    - *Severe disabling fatigue* of at least 6 months' duration that:
    
        - Affects physical and mental functioning
        - Was present for more than 50% of the time
    
    - *Other symptoms*, particularly myalgia, mood disturbance, and sleep disturbance, may be present
    - *Exclusions*: Defined medical conditions, psychotic disorders, substance abuse, eating disorders
    - *Depression and anxiety NOT excluded*

] <req:oxford>

#warning-box(title: [Fundamental Problems with Oxford Criteria])[
The Oxford criteria are widely rejected by patients, clinicians, and researchers for the following reasons:

*No Requirement for Post-Exertional Malaise:*
The pathognomonic feature of ME/CFS is entirely absent. Patients meeting Oxford criteria may have:

    - Primary depression with fatigue
    - Deconditioning from sedentary lifestyle
    - Idiopathic chronic fatigue (fatigue without clear cause)

*Allows Primary Psychiatric Diagnoses:*
Unlike all other ME/CFS criteria, Oxford explicitly allows comorbid depression and anxiety _even when these could fully explain the fatigue_. This conflates ME/CFS with depression-related fatigue.

*Set-Theoretic Implications:*
Define patient populations by criteria:

$
O supset F supset C supset I
$

where $O$ = Oxford, $F$ = Fukuda, $C$ = Canadian Consensus, $I$ = ICC.

The Oxford criteria capture a superset that includes patients with ME/CFS (satisfying more restrictive criteria) plus patients with primary depression, idiopathic fatigue, and deconditioning.

*Harm from CBT/GET Trials:*
The most harmful aspect: Oxford criteria were used in the PACE trial @White2011pace and other studies promoting cognitive behavioral therapy (CBT) and graded exercise therapy (GET) as treatments for “CFS.” However:

    - Patient surveys show GET causes harm in 50–70% of ME/CFS patients @MEAssociation2015survey
    - CBT/GET may be appropriate for depression or deconditioning but are contraindicated for true ME/CFS
    - By enrolling patients without PEM, these trials tested interventions on a population distinct from ME/CFS

] <warn:oxford-problems>

<obs:oxford-rejection>
The Oxford criteria are now explicitly rejected by:

    - The NIH (U.S. National Institutes of Health) ME/CFS research guidelines
    - The CDC (U.S. Centers for Disease Control)
    - Leading ME/CFS researchers and clinicians
    - Patient advocacy organizations

Studies using Oxford criteria should be interpreted with extreme caution, as they likely include substantial proportions of patients without ME/CFS.
=== Pediatric Criteria

ME/CFS in children and adolescents presents diagnostic challenges due to developmental differences in symptom expression, comorbidities, and functional impact.

#requirement-box(title: [Pediatric Adaptations])[
Diagnosis in children should use the same criteria (Canadian Consensus, IOM, or ICC) with the following modifications:

*1. Duration:*

    - Standard: 6 months in adults
    - Pediatric: May use *3 months* if symptoms are severe and progression is documented
    - Rationale: Early diagnosis enables intervention during critical developmental windows

*2. Activity Reduction:*

    - Assess relative to *age-appropriate activities*: school attendance, sports participation, social activities with peers
    - May manifest as: inability to attend full school day, requiring home tutoring, dropping out of extracurricular activities
    - Pediatric patients may have better baseline reserves, so functional impairment can be harder to detect

*3. Post-Exertional Malaise:*

    - Children may not articulate PEM clearly; ask caregivers about: “Does your child crash after activities?”
    - School attendance patterns are diagnostic: can attend Monday but not Tuesday (PEM delay)
    - May manifest as behavioral changes (irritability, emotional lability) rather than reported exhaustion

*4. Cognitive Symptoms:*

    - Assess relative to prior academic performance, not population norms
    - May manifest as: declining grades, inability to complete homework, processing speed reduction
    - Distinguish from learning disabilities (which would have been present earlier)

*5. Orthostatic Intolerance:*

    - Highly prevalent in pediatric ME/CFS (70–90%)
    - May present as: difficulty standing in school assemblies, morning symptom worsening (after overnight recumbency), shower intolerance
    - Objective testing: NASA Lean Test or tilt table (age-appropriate protocols)

] <req:pediatric>

#warning-box(title: [Pediatric Differential Diagnosis])[
Additional considerations for children:

    - *School avoidance vs. ME/CFS*: Distinguish by presence of PEM (in ME/CFS, even desired activities trigger crashes)
    - *Growth and puberty*: Rule out growth-related fatigue, iron deficiency from menstruation
    - *Viral triggers*: Infectious mononucleosis is a common ME/CFS trigger in adolescents
    - *Comorbidities*: POTS and orthostatic intolerance are especially common in pediatric onset

] <warn:pediatric-differential>

<obs:pediatric-prognosis>
Pediatric ME/CFS has distinct prognostic features:

    - *Better prognosis than adults*: Some studies suggest 50–70% improvement or recovery rates in adolescents, though methodological issues may inflate these estimates
    - *Critical intervention window*: Early aggressive pacing and school accommodation may prevent progression to severe disease
    - *Educational impact*: Lost school years during critical developmental periods create long-term consequences
    - *Recommendation*: Diagnose at 3 months if symptoms are severe; immediate school accommodations (reduced hours, remote learning, rest breaks) to prevent cumulative PEM damage

For detailed pediatric treatment protocols, see Chapter @ch:pediatric-severe (severe/housebound cases) and Chapter @ch:pediatric-ambulatory (school-attending cases).
