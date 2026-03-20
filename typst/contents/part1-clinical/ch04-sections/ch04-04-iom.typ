#import "../../../template.typ": *
<sec:iom>

The Institute of Medicine (now National Academy of Medicine) published diagnostic criteria in 2015 following a comprehensive systematic review @IOM2015. The IOM report proposed renaming the condition “Systemic Exertion Intolerance Disease” (SEID) to emphasize the central role of post-exertional malaise and to move away from the stigmatizing “chronic fatigue” label. However, the SEID terminology has seen limited clinical adoption.

=== Required Core Symptoms

#requirement-box(title: [IOM Diagnostic Algorithm])[
Diagnosis requires ALL THREE of the following core symptoms to be present:

*1. Substantial Reduction or Impairment in Activity Level (MANDATORY)*

A substantial reduction or impairment in the ability to engage in pre-illness levels of occupational, educational, social, or personal activities that:

    - Persists for *more than 6 months*
    - Is accompanied by fatigue (often profound)
    - Is of *new or definite onset* (not lifelong)
    - Is *not the result of ongoing excessive exertion*
    - Is *not substantially alleviated by rest*

*2. Post-Exertional Malaise (PEM) — MANDATORY*

Worsening of symptoms following physical, cognitive, or emotional exertion that would not have caused a problem before illness. Characteristics include:

    - Symptoms typically worsen 12–48 hours after activity
    - Often leads to relapse lasting days, weeks, or longer
    - Exertion threshold for triggering symptoms is low
    - Recovery is prolonged

The IOM emphasizes that PEM is *the hallmark symptom* that distinguishes ME/CFS from other fatiguing conditions.

*3. Unrefreshing Sleep (MANDATORY)*

Patients wake feeling unrefreshed regardless of sleep duration. Sleep may be:

    - Disrupted (frequent awakenings, difficulty initiating sleep)
    - Prolonged (hypersomnia with no restoration)
    - Reversed sleep/wake cycle

The exhaustion persists despite adequate sleep duration.
] <req:iom>

=== Additional Required Symptoms

#requirement-box(title: [At Least ONE of the Following])[

*Cognitive Impairment*
Problems with thinking, memory, information processing, or executive function. May include:

    - Difficulty finding words, storing and retrieving information
    - Slowed processing speed
    - Inability to focus or multitask
    - Problems with short-term memory

Cognitive symptoms may worsen with physical or mental exertion, emotional stress, or time pressure.

*OR*

*Orthostatic Intolerance*
Worsening of symptoms upon assuming or maintaining upright posture. May include:

    - Lightheadedness, dizziness, fainting
    - Worsening fatigue or cognitive impairment when upright
    - Palpitations, nausea
    - Symptoms improve (but may not resolve) when lying down

Objective findings may include abnormal heart rate or blood pressure responses during tilt table testing or standing test.
] <req:iom-additional>

=== Diagnostic Algorithm Structure

The IOM criteria can be formalized as a logical algorithm:

$
"ME/CFS"_("IOM") = cases(
  &"Substantial Activity Reduction"\
  and &"Post-Exertional Malaise"\
  and &"Unrefreshing Sleep"\
  and &("Cognitive Impairment" or "Orthostatic Intolerance")\
  and &"Duration" gt.eq 6 "months"\
  and &"Exclusions ruled out"
)
$

This represents a *minimal sufficient set*: three universal core features plus at least one of two common manifestations.

=== Exclusions and Comorbidities

    - *Exclusions*: Medical conditions that could fully explain the symptoms must be ruled out through appropriate testing (hypothyroidism, anemia, sleep apnea, etc.)
    - *Comorbidities allowed*: Fibromyalgia, irritable bowel syndrome, depression, and anxiety frequently co-occur and do not exclude ME/CFS diagnosis
    - *Important distinction*: Comorbid depression is reactive (consequence of severe disability) rather than causative

=== Strengths and Limitations

<obs:iom-strengths>
The IOM criteria offer several advantages:

    - *Simplicity*: Four required features (3 core + 1 of 2 additional) make diagnosis straightforward
    - *High sensitivity*: Captures broader range of ME/CFS patients than ICC or Canadian Consensus
    - *Evidence-based*: Derived from systematic review identifying most discriminating symptoms
    - *PEM emphasis*: Recognizes post-exertional malaise as the pathognomonic feature
    - *Clinical practicality*: Feasible in primary care settings without extensive symptom checklists
    - *Rapid assessment*: Can be evaluated in a standard office visit

#warning-box(title: [IOM Limitations])[
The simplified structure creates potential issues:

    - *Reduced specificity*: More inclusive criteria may capture patients with other conditions (long COVID, post-viral fatigue that will resolve)
    - *Heterogeneity*: Broader patient population increases phenotypic variance in research cohorts
    - *Cognitive OR orthostatic requirement*: Patients may meet criteria with only one of these domains, potentially missing multi-system nature
    - *SEID terminology rejected*: Proposed name change has not gained acceptance in patient or research communities
    - *Set-theoretic relationship*: $"ICC" subset "Canadian" subset "IOM"$ — IOM captures the broadest population

] <warn:iom-limitations>

=== Clinical and Research Application

<obs:iom-application>
*For clinical diagnosis*: The IOM criteria are excellent for primary care and general practice:

    - Simple enough for non-specialists to apply
    - High sensitivity ensures few false negatives
    - Enables early diagnosis and intervention

*For research*: The IOM criteria are appropriate when:

    - Study aims to represent the full ME/CFS population
    - Recruitment needs to be pragmatic and efficient
    - Results should generalize to clinical settings

*Not optimal for*: Mechanistic research or treatment trials requiring homogeneous cohorts (use ICC or Canadian Consensus with biomarker stratification instead).
