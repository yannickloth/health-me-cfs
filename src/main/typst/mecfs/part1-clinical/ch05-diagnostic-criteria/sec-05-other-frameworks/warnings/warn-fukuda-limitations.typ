#import "../../../../shared/environments.typ": *

#warning-env(title: [Critical Limitations])[
The Fukuda criteria have fundamental flaws that limit their current utility:

*Post-Exertional Malaise Not Mandatory:*
The most pathognomonic feature of ME/CFS (PEM) is merely one of eight optional symptoms. This allows diagnosis of patients without the hallmark feature, including those with:

    - Primary depression
    - Deconditioning
    - Other fatiguing conditions without PEM

*Mathematical Analysis of Heterogeneity:*
The requirement of "4 or more of 8 symptoms" yields:

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
