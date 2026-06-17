#import "../../../shared/environments.typ": *

The Institute of Medicine (now National Academy of Medicine) published diagnostic criteria in 2015 following a comprehensive systematic review @IOM2015. The IOM report proposed renaming the condition "Systemic Exertion Intolerance Disease" (SEID) to emphasize the central role of post-exertional malaise and to move away from the stigmatizing "chronic fatigue" label — a concern later validated experimentally: the CFS label generates more negative attributions than "myalgic encephalopathy" (n=143) @Jason2002IllnessName. However, the SEID terminology has seen limited clinical adoption.

=== Required Core Symptoms

#include "requirements/req-iom-core.typ"

=== Additional Required Symptoms

#include "requirements/req-iom-additional.typ"

=== Diagnostic Algorithm Structure

The IOM criteria can be formalized as a logical algorithm:

$
"ME/CFS"_("IOM") = cases(
  "Substantial Activity Reduction" and,
  "Post-Exertional Malaise" and,
  "Unrefreshing Sleep" and,
  ("Cognitive Impairment" or "Orthostatic Intolerance") and,
  "Duration" gt.eq 6 "months" and,
  "Exclusions ruled out",
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

#include "warnings/warn-iom-limitations.typ"

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
