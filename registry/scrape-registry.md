# Scrape Registry

Tracks all web sources scraped for integration into the ME/CFS document.
Prevents re-processing of already-integrated content.

**Workflow per scrape session:**

1. Scrape source → check each URL against registry
2. New URL → add row; known URL with newer source date → reset Integrated to `—`
3. Filter `Integrated = —` → integration candidates
4. Integrate into document → stamp today's date
5. Delete temporary working files (per-source catalogs, etc.)

---

## Sources

| Source | Last Scraped | Notes |
|--------|-------------|-------|
| mecfsscience.org | 2026-03-21 | Critical ME/CFS research analysis blog by two long-term patients |

---

## Articles

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| https://mecfsscience.org/immune-findings-in-me-cfs/ | mecfsscience.org | 2026-03-21 | 2026-03-21 (v6) | ch07, ch14b |
| https://mecfsscience.org/decodeme-the-biggest-me-cfs-study-ever/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch12 |
| https://mecfsscience.org/genes-pointing-to-the-brain-decodeme-part-ii/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch12 |
| https://mecfsscience.org/what-does-deconditioning-look-like/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch06 |
| https://mecfsscience.org/the-biggest-2-day-exercise-study/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch06 |
| https://mecfsscience.org/discrepancies-in-2-day-exercise-studies/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch06 |
| https://mecfsscience.org/boom-and-bust-another-me-cfs-myth/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch06 |
| https://mecfsscience.org/heds-and-hypermobility-spectrum-disorder/ | mecfsscience.org | 2026-03-21 | — | ch14d |
| https://mecfsscience.org/the-problems-with-pots/ | mecfsscience.org | 2026-03-21 | — | ch14d |
| https://mecfsscience.org/fitnet-nhs-a-summary/ | mecfsscience.org | 2026-03-21 | — | Part III |
| https://mecfsscience.org/the-bmj-review-on-long-covid-interventions/ | mecfsscience.org | 2026-03-21 | — | Part III |
| https://mecfsscience.org/the-new-consensus/ | mecfsscience.org | 2026-03-21 | — | Part III |
| https://mecfsscience.org/getset-long-term-follow-up/ | mecfsscience.org | 2026-03-21 | — | Part III |
| https://mecfsscience.org/turning-a-blind-eye-to-blinding/ | mecfsscience.org | 2026-03-21 | — | ch24 |
| https://mecfsscience.org/cochrane-review-on-exercise-therapy-for-me-cfs-2/ | mecfsscience.org | 2026-03-21 | — | ch24 |
| https://mecfsscience.org/exercise-therapy-and-lack-of-blinding/ | mecfsscience.org | 2026-03-21 | — | ch24 |
| https://mecfsscience.org/catastrophizing-time-to-ditch-the-term/ | mecfsscience.org | 2026-03-21 | — | ch24 |
| https://mecfsscience.org/history-of-psychosomatic-medicine/ | mecfsscience.org | 2026-03-21 | — | ch03, ch24 |
| https://mecfsscience.org/psychosomatic-history-of-multiple-sclerosis/ | mecfsscience.org | 2026-03-21 | — | ch03, ch24 |
| https://mecfsscience.org/psychosomatic-history-of-asthma/ | mecfsscience.org | 2026-03-21 | — | ch03, ch24 |
| https://mecfsscience.org/psychosomatic-history-of-epilepsy/ | mecfsscience.org | 2026-03-21 | — | ch03, ch24 |
| https://mecfsscience.org/psychosomatic-history-of-diabetes/ | mecfsscience.org | 2026-03-21 | — | ch03, ch24 |
| https://mecfsscience.org/psychosomatic-history-of-autism/ | mecfsscience.org | 2026-03-21 | — | ch03, ch24 |
| https://mecfsscience.org/psychosomatic-history-of-schizophrenia/ | mecfsscience.org | 2026-03-21 | — | ch03, ch24 |
| https://mecfsscience.org/the-dark-psychosomatic-history-of-cancer-part-i/ | mecfsscience.org | 2026-03-21 | — | ch03, ch24 |
| https://mecfsscience.org/the-dark-psychosomatic-history-of-heart-disease-part-i/ | mecfsscience.org | 2026-03-21 | — | ch03, ch24 |
| https://mecfsscience.org/the-dark-psychosomatic-history-of-rheumatoid-arthritis/ | mecfsscience.org | 2026-03-21 | — | ch03, ch24 |
| https://mecfsscience.org/the-dark-psychosomatic-history-of-peptic-ulcer-part-i/ | mecfsscience.org | 2026-03-21 | — | ch03, ch24 |
| https://mecfsscience.org/historian-edward-shorter-from-paralysis-to-fatigue/ | mecfsscience.org | 2026-03-21 | — | ch03, ch24 |
| https://mecfsscience.org/nih-funding-for-me-cfs-keeps-falling/ | mecfsscience.org | 2026-03-21 | — | funding |
| https://mecfsscience.org/nih-funding-for-me-cfs-in-2024/ | mecfsscience.org | 2026-03-21 | — | funding |
| https://mecfsscience.org/disease-funding-comparison-me-cfs/ | mecfsscience.org | 2026-03-21 | — | funding |
| https://mecfsscience.org/why-is-me-cfs-getting-so-little-research-funding/ | mecfsscience.org | 2026-03-21 | — | funding |
| https://mecfsscience.org/how-many-scientific-papers-are-fake/ | mecfsscience.org | 2026-03-21 | — | ch24 |
| https://mecfsscience.org/2025-looking-back-on-a-year-of-me-cfs-research/ | mecfsscience.org | 2026-03-21 | — | review |
| https://mecfsscience.org/2024-looking-back-on-a-year-of-me-cfs-research/ | mecfsscience.org | 2026-03-21 | — | review |
| https://mecfsscience.org/2023-looking-back-on-a-year-of-me-cfs-research/ | mecfsscience.org | 2026-03-21 | — | review |
| https://mecfsscience.org/2022-looking-back-at-a-year-of-me-cfs-research/ | mecfsscience.org | 2026-03-21 | — | review |
| https://mecfsscience.org/2021-looking-back-at-a-year-of-me-cfs-research/ | mecfsscience.org | 2026-03-21 | — | review |
| https://mecfsscience.org/2020-looking-back-at-a-year-of-me-cfs-research/ | mecfsscience.org | 2026-03-21 | — | review |
| https://mecfsscience.org/intime-the-results-of-cortenes-ct38-trial/ | mecfsscience.org | 2026-03-21 | — | other |
| https://mecfsscience.org/massachusetts-me-cfs-conference/ | mecfsscience.org | 2026-03-21 | — | other |
| https://mecfsscience.org/a-historic-change-for-the-me-cfs-community/ | mecfsscience.org | 2026-03-21 | — | other |
| https://mecfsscience.org/comments-on-the-cdc-evidence-review-on-me-cfs/ | mecfsscience.org | 2026-03-21 | — | other |
| https://mecfsscience.org/nih-exploration-of-post-exertional-malaise-in-me-cfs/ | mecfsscience.org | 2026-03-21 | — | other |
| https://mecfsscience.org/clinical-trials-for-me-cfs/ | mecfsscience.org | 2026-03-21 | — | other |
| https://mecfsscience.org/a-rebuttal-of-flottorp-et-al-new-nice-guideline-on-chronic-fatigue-syndrome-more-ideology-than-science/ | mecfsscience.org | 2026-03-21 | — | other |
| https://mecfsscience.org/problems-with-the-metablind-study/ | mecfsscience.org | 2026-03-21 | — | other |
| https://mecfsscience.org/nice-guideline-committee-and-grade-methodology/ | mecfsscience.org | 2026-03-21 | — | other |
| https://mecfsscience.org/qure-study-for-post-infectious-fatigue-syndrome/ | mecfsscience.org | 2026-03-21 | — | other |
| https://mecfsscience.org/nice-guideline-draft/ | mecfsscience.org | 2026-03-21 | — | other |
| https://mecfsscience.org/progress-in-me-cfs-research/ | mecfsscience.org | 2026-03-21 | — | other |
| https://mecfsscience.org/history-of-surgery/ | mecfsscience.org | 2026-03-21 | — | other |
