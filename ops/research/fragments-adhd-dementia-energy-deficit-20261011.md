# Fragment ledger — adhd-dementia-energy-deficit (bootstrap 2026-10-11)

# First live exercise of the Phase 3 fragment rule + Phase 5a Stage 2 (fragment_drift.py)
# on an EXISTING cycle's claims (registry entries added 2026-10-08: adhd-dementia-energy-deficit).
# Registry claim under test: "HR 2.8--4.6 across All of Us, Taiwan, Sweden, Israel; PRS top-vs-bottom
# quintile HR 1.35" (sources: BauerNegrini2026, Tzeng2019, Dobrosavljevic2021, Levine2023).
# Held on disk: BauerNegrini2026 only -> the 2.8 range-end rests on papers we do not hold (SOURCE_MISSING
# is the honest verdict for those; do not accuse).

@BauerNegrini2026ADHDdementia | 4.60 | "In adjusted Cox models, ADHD was associated with a more than 4-fold higher hazard of developing MCI or dementia (HR, 4.60; 95% CI, 3.99-5.29" | results-cox-adjusted
@BauerNegrini2026ADHDdementia | 1.35 | "Participants in the high ADHD PRS category showed a 35% higher hazard compared with those in the low category (adjusted HR, 1.35" | results-prs
# (initial placeholder rows removed 2026-10-11 — sources since fetched; see follow-up section)

## 2026-10-11 follow-up: range-end verification (fetched Dobrosavljevic + Levine full-text XML, Tzeng abstract copy)

# Registry claim: "HR 2.8--4.6 across All of Us, Taiwan, Sweden, Israel".
# Verified headline HRs: AoU 4.60 (held PDF) | Taiwan 4.01 adj / 3.42 crude (abstract copy) |
# Sweden 2.92 (held XML) | Israel 2.77 adj (held XML). Range 2.77--4.60 -> "2.8--4.6" = SUPPORTED.

@Levine2023ADHDdementia | 2.77 | "the presence of adult ADHD was statistically significantly ( P < .001 ) associated with an increased dementia risk ( unadjusted HR, 3.62 [95% CI, 2.92-4.49 ; P < .001 ]; adjusted HR, 2.77 [95% CI, 2.11-3.63 ; P < .001] )" | results-primary
@Dobrosavljevic2021ADHDdementia | 2.92 | "We found an increased risk of having both dementia (HR = 2.92, 95% CI = 2." | results-main-findings
@Tzeng2019ADHDdementia | 4.008, 3.418 | "The crude hazard ratio (HR) is 3.418 (95% confidence interval [CI] = [2.289, 5.106], p < .001), and adjusted HR is 4.008 (95% CI = [2.526, 6.361], p < .001)" | abstract-results
