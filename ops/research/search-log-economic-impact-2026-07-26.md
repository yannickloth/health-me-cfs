# Search Log: ME/CFS Economic Impact Research

**Topic slug:** `economic-impact`
**Date:** 2026-07-26
**Researcher:** literature-integrator (Claude)

---

## Search Strategy

### Databases Searched

| # | Database | Scope |
|---|----------|-------|
| 1 | PubMed | medical/health economics literature |
| 2 | Codebase bib files | existing entries (dedup check) |
| 3 | Appendix H | existing annotated entries (dedup check) |

### Queries Executed

| # | Query | Results | Relevant |
|---|-------|---------|----------|
| 1 | `("ME/CFS" OR "chronic fatigue syndrome") AND ("economic burden" OR "cost of illness" OR "cost-effectiveness" OR "productivity loss")` | 137,915 | ~15 relevant |
| 2 | `("chronic fatigue syndrome" OR "myalgic encephalomyelitis") AND ("work disability" OR "work status" OR "unemployment" OR "occupational")` | 245 | ~10 relevant |
| 3 | `("chronic fatigue syndrome" OR "myalgic encephalomyelitis") AND (economic OR cost OR burden OR employment OR productivity)[TIAB]` | 540 | ~15 relevant |
| 4 | `(ME/CFS OR "chronic fatigue syndrome" OR "myalgic encephalomyelitis") AND ("cost of illness" OR "cost-effectiveness" OR "economic evaluation" OR "health economics")` | 94 | ~10 relevant |
| 5 | `("chronic fatigue syndrome" OR "myalgic encephalomyelitis") AND ("caregiver" OR "carer" OR "family impact" OR "informal caregiver") AND economic` | 6 | 3 relevant |
| 6 | `("multiple sclerosis") AND ("cost of illness" OR "economic burden")[TIAB]` | 422 | cross-disease comparator |
| 7 | `("rheumatoid arthritis") AND ("cost of illness" OR "economic burden")[TIAB]` | 435 | cross-disease comparator |

### Null/Counter-Evidence Search

| # | Strategy | Result |
|---|----------|--------|
| 1 | "ME/CFS productivity paradox" | No hits |
| 2 | "chronic fatigue syndrome economic negligible" | No hits |
| 3 | "ME/CFS cost-effectiveness negative" | Only low-value CBT-focused studies |
| 4 | NICE 2021 economic section | NICE NG206 has economic modelling appendix (not separately published) |

---

## Dedup Check: Already-In-Bib Entries

| Bib Key | Bib File | Topic |
|---------|----------|-------|
| `IOM2015` | general.bib:694 | IOM 2015 report ($17-24B estimate) |
| `Clayton2015IOMsummary` | general.bib:2871 | JAMA summary of IOM report |
| `Jason2020economic` | general.bib:1020 | Updating IOM figures for inflation |
| `Jason2023MLMECFSprevalence` | sleep.bib:1974 | ML-based case identification + cost estimates |
| `Podell2020` | general.bib:3044 | Disability documentation (SSDI/LTD) |
| `bowden2026mecfslabourmarket` | epidemiology.bib:1060 | NZ labour market outcomes |
| `CastroMarrero2019employment` | pain-fibromyalgia.bib:37 | Spanish unemployment/ work disability |
| `weigel2025sustainedburden` | epidemiology.bib:1235 | Australian sustained illness burden |
| `vester2026burdenreview` | epidemiology.bib:1251 | Scoping review: costs + DALYs |
| `Cornelis2026KCE420` | general.bib:2814 | KCE Belgium HTA main report |
| `Cornelis2026KCE420S` | general.bib:2828 | KCE Belgium HTA supplement |

---

## Papers Retained (New Additions)

| # | Bib Key | PMID | Short Title | Year |
|---|---------|------|-------------|------|
| 1 | `Zhao2023AustralianBurden` | 38011828 | Economic burden of ME/CFS in Australia | 2023 |
| 2 | `Close2020AustralianEconomic` | 32974259 | Economic Impacts of ME/CFS in Australian Cohort | 2020 |
| 3 | `Mirin2020ResearchFunding` | 32568148 | ME/CFS disease burden vs research funding USA | 2020 |
| 4 | `Cochrane2021CostEffectiveness` | 33646528 | Cost-effectiveness of interventions: systematic review | 2021 |
| 5 | `Brittain2021FamilyImpact` | 33430175 | ME/CFS: Impact on Patients and Family Members | 2021 |
| 6 | `Fatt2019InvisibleBurden` | 30741357 | Invisible Burden of Chronic Fatigue | 2019 |
| 7 | `Wan2024HealthEconomicsTrends` | 39469291 | Trends in Health Economics of CFS | 2024 |
| 8 | `Hsieh2020RAburden` | 32245893 | Economic burden of RA: systematic review | 2020 |
| 9 | `Simoens2022MSBurden` | 36341111 | Societal economic burden of MS + cost-effectiveness | 2022 |

---

## Evidence Quality Summary

| Quality Tier | Papers | Characteristic |
|--------------|--------|----------------|
| **Strong** | Vester2026, Cochrane2021, IOM2015, KCE2026 | Systematic reviews, government reports, large-population data |
| **Medium** | Zhao2023, Close2020, Bowden2026, Mirin2020, Wan2024, CastroMarrero2019 | Cohort/survey studies with explicit economic methodology |
| **Weaker** | Brittain2021, Fatt2019 | Small samples, narrative reviews without primary cost data |
| **Cross-disease** | Hsieh2020, Simoens2022 | Comparator benchmarks from RA, MS |

### Missing Evidence
- No US-specific cost-of-illness study using administrative claims data (CDC/IOM estimates are extrapolations)
- No longitudinal lifetime-cost study (all data are cross-sectional)
- No formal ROI analysis for ME/CFS research funding
- No caregiver economic valuation study specific to ME/CFS (Brittain2021 mentions family impact but lacks monetary quantification)
- No cost-effectiveness study of ME/CFS diagnosis vs misdiagnosis pathway

---

## Flow Diagram

```
PubMed searches (7 queries)
    │
    ▼
~200 unique results screened
    │
    ▼
Dedup vs existing bib entries (11 pre-existing)
    │
    ▼
9 new papers retained
    │
    ├── 7 ME/CFS-specific health economics
    └── 2 cross-disease comparators (MS, RA)
            │
            ▼
9 bib entries → bib/general.bib
9 annotated entries → appendix-h-annotated-bibliography.typ
```

---

## Notes

1. **Health economics vs biomedical evidence quality:** The field has different standards. Population surveys (N > 200), administrative claims data, systematic reviews, and government reports are the gold standard for cost-of-illness research — not RCTs. The NICE cost-effectiveness literature is the strongest available evidence per heath-economics methodology (systematic review of economic evaluations per Cochrane2021).

2. **Australian data dominance:** The strongest ME/CFS-specific cost-of-illness studies come from Australia (Close 2020, Zhao 2023). US data is limited to IOM 2015 extrapolations and Jason's CS estimates. NZ has Bowden 2026 (labour market). Spain has Castro-Marrero 2019 (employment). Belgium has KCE 2026.

3. **The Jason2023 ML paper** (PMID not verified — bib entry has incomplete DOI/PMID fields in sleep.bib) appears in appendix H but needs DOI completion. This paper is important but was imported with placeholder fields.

4. **No paper excluded for quality reasons** — the economic literature is small enough that all retrieved papers add useful data points, even the narrative reviews.

5. **Recency:** Most ME/CFS economic research is post-2019. The systematic reviews (Vester 2026, Cochrane 2021) are the most comprehensive recent summaries.

6. **Cochrane2021 caveat:** This systematic review was published before NICE 2021 issued its GET/CBT reversal. The economic evaluations it reviews are mostly of CBT/GET interventions that are no longer recommended. However, its methodology framework and identification of methodological gaps in CFS health economics remains valid and important.

7. **Population-relevance discounting:** ME/CFS cohort studies = 1.00 (Zhao, Close, Brittain, Fatt). Administrative data = 0.85 (Bowden). Systematic reviews spanning multiple disease contexts = 0.80 (Cochrane, Wan). Government report = 0.90 (IOM, KCE, Clayton). Cross-disease comparator = 0.70 (Hsieh, Simoens).
