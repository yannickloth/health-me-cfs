#import "../../../../shared/environments.typ": *

=== Measurement and Assessment

==== Objective Measurement via Two-Day Cardiopulmonary Exercise Testing

<obs:2day-cpet>
Two-day cardiopulmonary exercise testing (CPET) provides objective evidence for post-exertional malaise through repeated maximal exercise tests separated by 24 hours @Lim2020. Meta-analysis of five studies (n=98 ME/CFS patients, n=51 controls) demonstrated that ME/CFS patients fail to reproduce Day 1 performance on Day 2, whereas healthy sedentary controls maintain or improve performance. The most sensitive metric, workload at ventilatory threshold (VT), showed significant deterioration in ME/CFS patients (mean change from baseline: -33.0W on Day 2 vs. -10.8W on Day 1, p\<0.05) while controls demonstrated improvement. This pattern has been independently replicated in subsequent larger cohorts exceeding 150 patients @Keller2024CPET, establishing 2-day CPET as the gold standard for objective PEM documentation.

The largest 2-day CPET study to date (n=84 ME/CFS, n=71 controls) confirmed that ME/CFS patients show significant declines in work, VO_2, heart rate, and O_2 pulse at peak exertion on Day 2, with intraclass correlations showing greater stability in controls versus ME/CFS patients @Keller2024CPET. Worsening impairment status on CPET-2 translates to tangible reductions in physiological function. Importantly, the 2-day CPET protocol discriminates ME/CFS from idiopathic chronic fatigue (ICF): ICF patients show CPET-2 improvement similar to healthy controls, while ME/CFS patients show deterioration @vanCampen2021FemaleCPET @vanCampen2021MaleCPET. This pattern holds across both sexes, with identical CPET-2 impairment patterns observed in male and female ME/CFS patients @vanCampen2021MaleCPET.

The physiological mechanisms underlying the Day 2 deterioration include:

    - *ATP depletion*: Mitochondrial dysfunction prevents normal energy regeneration within 24 hours @Syed2025 @wang2023wasf3
    - *Immune activation*: Exercise triggers pro-inflammatory cytokine release that persists beyond the immediate post-exercise period
    - *Oxidative stress*: Reactive oxygen species accumulate faster than antioxidant systems can neutralize them
    - *Anaerobic threshold shift*: Early shift to anaerobic metabolism indicates impaired mitochondrial oxidative capacity
    - *Prolonged recovery*: Unlike healthy controls who recover within 48 hours, ME/CFS patients may require 13+ days to return to baseline @Keller2024CPET

A critical limitation of 2-day CPET is the assumption that 24 hours represents full recovery time. No studies have systematically validated this interval, and epigenetic evidence suggests molecular recovery processes may continue beyond 24 hours @Sharma2025EpigeneticPEM. This may underestimate true PEM duration if recovery requires longer than 24 hours. Additionally, all CPET studies exclude patients unable to complete maximal effort or the 2-day protocol, likely underestimating impairment in severe ME/CFS @Snell2013CPET.

#include "hypotheses/hyp-2day-cpet-diagnostic-tool.typ"

==== Clinical Assessment Tools

While 2-day CPET provides objective measurement, it remains research-grade and inaccessible to most clinicians. Patient-reported outcome measures remain essential for clinical practice:

    - *DePaul Symptom Questionnaire (DSQ)*: Validated tool specifically measuring PEM frequency and severity
    - *Pacing diaries*: Patient tracking of activity-symptom relationships
    - *Functional capacity scales*: Bell Disability Scale, SF-36, and ME/CFS-specific measures
    - *Activity monitors*: Actigraphy to objectively measure movement patterns (though cannot distinguish voluntary pacing from incapacity)

==== Digital Biomarkers for Crash Prediction

An initial study suggests that daily physiological monitoring via mobile health tools may have predictive value for symptom fluctuations, though this approach is not yet validated for clinical use. Aitken et al.\ (2026) analysed retrospective data from 4244 users of the Visible app (a mixed cohort of Long COVID, ME/CFS, and other energy-limiting conditions; the proportion with clinician-confirmed ME/CFS is not reported) who completed 60-second morning PPG assessments alongside evening symptom reports @Aitken2026digitalHRV. Within-person increases in morning heart rate and decreases in heart rate variability (RMSSD) were associated with same-day crash reports; models combining morning biometrics with prior-day symptom history achieved AUC of 0.82 for crash, compared to 0.78 using prior-day symptoms alone. The prior-day symptom report is already a strong predictor on its own (AUC 0.78), meaning the biometric contribution, while statistically significant, is a modest increment of 0.04 over an already near-sufficient baseline. Greater week-to-week instability in HR and HRV (measured as 7-day coefficient of variation) was also associated with worsening symptoms. The prior-day crash report was itself a strong predictor, consistent with the multi-day duration of PEM episodes.

These findings are preliminary and have important limitations: the study was retrospective, participants self-identified their conditions, the 60-second PPG protocol did not standardize posture or medication status, and the study population consisted of ambulatory app users (severe patients who cannot sustain daily monitoring were effectively excluded). Whether acting on such predictions can actually prevent crashes remains untested, and a "low risk" reading should not be interpreted as a safe window to exceed one's energy envelope, given that PEM can lag 24–48 hours beyond any same-day monitoring window. See @sec:hrv in Chapter @ch:cardiovascular for the underlying autonomic physiology, and @sec:digital-biomarkers in Chapter @ch:biomarker-research for broader digital biomarker strategy.
