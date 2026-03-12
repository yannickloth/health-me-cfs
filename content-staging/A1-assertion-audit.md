# A1 Audit Report: Assertion–Source Audit Trail

**Audit scope**: 10 key assertions from Part II (pathophysiology) and Part III (treatment)
**Date**: 2026-03-04
**Deliverable**: Appendix K in document (`contents/appendices/appendix-k-audit-trail.tex`)

---

## Summary

| Verdict          | Count | Rows                                                                                                                                       |
|------------------|-------|--------------------------------------------------------------------------------------------------------------------------------------------|
| SUPPORTS         | 9     | 1 (WASF3), 2 (two-day CPET), 3 (CBF 91%), 4 (NK cytotoxicity), 5 (CoQ10 44.8%), 6 (NADH RCT), 7 (CoQ10+NADH RCT), 8 (immunoadsorption), 10 (daratumumab) |
| DOES NOT SUPPORT | 1     | 9 (suramin — autism trial, not ME/CFS)                                                                                                   |

---

## Assertions Audited

| Row | Assertion (abbreviated) | Citation | Verdict |
|-----|------------------------|----------|---------|
| 1 | WASF3 elevated in ME/CFS muscle, disrupts Complex IV, pharmacological rescue | Hwang 2023, PNAS | SUPPORTS |
| 2 | Two-day CPET (n=84+71): VO2peak -5.3%, work -5.5%, all significant | Keller 2024, J Transl Med | SUPPORTS |
| 3 | 91% of ME/CFS with normal HR/BP show abnormal CO and CBF on tilt (n=534) | van Campen 2024, Healthcare | SUPPORTS |
| 4 | Impaired NK cytotoxicity most consistent immunological abnormality (17 studies) | Eaton-Fitch 2019, Syst Rev | SUPPORTS |
| 5 | 44.8% ME/CFS below lowest control CoQ10 value; correlates with symptoms | Maes 2009, Neuro Endocrinol Lett | SUPPORTS — verified: 44.8% confirmed (n=58 patients, 22 controls, threshold 490 μg/L) |
| 6 | NADH 10mg crossover RCT (n=26): 31% vs 8% response | Forsyth 1999, Ann Allergy | SUPPORTS |
| 7 | CoQ10+NADH RCT (n=207): cognitive fatigue p<0.001, FIS-40 p=0.022 | Castro-Marrero 2021, Nutrients | SUPPORTS — verified: p-values confirmed from PubMed abstract (PMID 34444817) |
| 8 | Immunoadsorption pilot (n=10): 70% rapid improvement, 30% sustained | Scheibenbogen 2018, PLOS ONE | SUPPORTS — verified: 7/10 rapid, 3/10 sustained ≥12 months (PMID 29543914) |
| 9 | Suramin pilot showed improvements in ME/CFS that reversed | Naviaux 2018, Ann Clin Transl Neurol | **DOES NOT SUPPORT** — trial was in autism, not ME/CFS |
| 10 | Daratumumab 60% response, SF-36 PF 80-95 in responders | Fluge 2025, Front Med | SUPPORTS — verified: 6/10 (60%) improved, SF-36 PF mean 88 (range 80-95) |

---

## Corrections Applied in V5

1. **Row 9 (CRITICAL)**: Suramin text in ch18-emerging-therapies.tex corrected to explicitly state the pilot was in autism spectrum disorder, not ME/CFS. Document no longer asserts ME/CFS suramin data.
2. **Row 5**: Verified 44.8% against PubMed abstract (n=58 patients, 22 controls, threshold 490 μg/L); bib `note` field added to `Maes2009CoQ10`.
3. **Row 7**: Verified all p-values (cognitive fatigue p<0.001, FIS-40 p=0.022, SF-36 p<0.05, sleep duration p=0.018, sleep efficiency p=0.038) against PubMed abstract (PMID 34444817). Bib `note` already contained verified data.
4. **Row 8**: Verified 7/10 rapid improvement, 3/10 sustained ≥12 months; bib `note` field added to `Scheibenbogen2018immunoadsorption`.
5. **Row 10**: Verified 6/10 (60%) marked improvement, SF-36 PF mean 88 (range 80-95) at 8-9 months; bib `note` field added to `Fluge2025daratumumab`. Original assertion said "5 patients" but paper enrolled 10 with 6 responders — corrected.

## Additional Corrections Found During Review

1. **ch18:705**: Immunoadsorption sustained rate was inverted. Previously said "30% show no sustained improvement" — corrected to "only 30% achieved sustained improvement at 6-12 months" (70% did not sustain).
2. **ch25:59 (Table)**: GPCR autoantibody prevalence "29.5-91%" was miscited as `Scheibenbogen2018immunoadsorption` (a treatment trial). Corrected to cite `Loebel2016` (29.5%) and `Bynke2020` (91%) — the actual prevalence studies.
3. **ch25:77**: Changed "70% response rate" to "70% rapid improvement during treatment, though only 30% sustained improvement at 6-12 months" for precision and completeness.
4. **ch18:1001**: Daratumumab patient count was wrong — "five patients" corrected to "six of ten patients" (6/10 responders per verified paper data).
5. **Scheibenbogen bib note**: Follow-up duration corrected from "12+ months" to "6-12+ months" to match PubMed abstract exactly.

## Remaining Actions

None. All 10 assertions verified. 9/10 SUPPORTS, 1/10 DOES NOT SUPPORT (corrected in document).
