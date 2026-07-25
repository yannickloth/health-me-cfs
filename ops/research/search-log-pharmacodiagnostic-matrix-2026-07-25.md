# Search Log: Pharmacodiagnostic Matrix

**Date:** 2026-07-25
**Database:** PubMed (eutils.ncbi.nlm.nih.gov)

## Queries

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|
| 1 | PubMed | `("diagnosis ex juvantibus" OR "therapeutic diagnosis" OR "pharmacodiagnostic")` | 209 | 30 | 4 | 2026-07-25 |
| 2 | PubMed | `("drug response" AND "biomarker" AND "diagnostic" AND "patient stratification")` | 7 | 7 | 0 | 2026-07-25 |
| 3 | PubMed | `("Bayesian" AND "drug response" AND "diagnosis") OR ("computational phenotyping" AND medication)` | 71 | 20 | 3 | 2026-07-25 |
| 4 | PubMed | `("N-of-1 trial" OR "single subject trial") AND ("diagnostic" OR "diagnosis")` | 28 | 15 | 3 | 2026-07-25 |
| 5 | PubMed | `("ME/CFS" OR "myalgic encephalomyelitis") AND ("treatment response" OR "medication response" OR "pharmacological challenge") AND (subgroup OR stratification OR pattern)` | 3 | 3 | 1 | 2026-07-25 |
| 6 | PubMed | `("therapeutic probe" OR "challenge test" OR "response-guided treatment") AND ("diagnosis" OR "diagnostic") AND (psychiatry OR neurology OR endocrinology)` | 365 | 15 | 2 | 2026-07-25 |
| 7 | PubMed | `("ME/CFS" OR "chronic fatigue syndrome") AND ("N-of-1" OR "single subject") AND drug` | 1 | 1 | 0 | 2026-07-25 |
| 8 | PubMed | `("ME/CFS" OR "chronic fatigue") AND (phenotype OR subtype OR endotype) AND medication` | 124 | 15 | 3 | 2026-07-25 |
| 9 | PubMed | `("therapeutic probe" OR "drug probe" OR "pharmacological challenge") AND ("diagnostic" OR "mechanism") AND (hypertension OR asthma OR autoimmune)` | 5 | 5 | 0 | 2026-07-25 |
| 10 | PubMed | `("drug repurposing" AND "diagnostic") OR ("off-label" AND "pharmacodiagnostic") OR ("response-based" AND "diagnosis" AND "treatment")` | 522 | 10 | 1 | 2026-07-25 |
| 11 | PubMed | `("placebo response" AND "diagnostic inference") OR ("regression to the mean" AND "drug trial" AND "misinterpretation") OR ("confounding" AND "medication response" AND "diagnosis")` | 2 | 2 | 0 | 2026-07-25 |
| 12 | PubMed | `("information gain" AND "diagnostic" AND "drug trial") OR ("sequential diagnostic testing" AND maximize information) OR ("active learning" AND "medical diagnosis") OR ("diagnostic decision tree" AND treatment)` | 24 | 10 | 2 | 2026-07-25 |
| 13 | PubMed | `("ME/CFS" OR "myalgic encephalomyelitis") AND ("treatment response" OR "drug response" OR "pharmacotherapy") AND (subgroup OR stratification OR heterogeneity)` | 1 | 1 | 1 | 2026-07-25 |
| 14 | PubMed | `("response trait" OR "individual difference") AND "drug response" AND (diagnosis OR "treatment selection" OR "personalized medicine")` | 1 | 1 | 0 | 2026-07-25 |
| 15 | PubMed | `("active inference" OR "generative model") AND "diagnosis" AND "Friston"` | 4 | 4 | 1 | 2026-07-25 |
| 16 | PubMed | `("placebo response" OR "placebo effect") AND ("diagnostic inference" OR "treatment inference" OR "clinical trial interpretation") AND (limitation OR caution OR pitfall)` | 0 | 0 | 0 | 2026-07-25 |

## Inclusion Criteria
- Drug/treatment response used for diagnostic inference or patient classification
- N-of-1 methodology with diagnostic implications
- Computational phenotyping applied to drug response
- Bayesian/constraint-satisfaction diagnostic frameworks
- ME/CFS treatment response heterogeneity or subgroup stratification
- Response-guided/stratified treatment protocols in any disease
- Null/cautionary evidence about response-based diagnostic inference
- Decision-tree or information-gain diagnostic methods

## Exclusion Criteria
- Drug response as purely predictive (not diagnostic) — e.g., pharmacogenomic prediction of toxicity
- Purely descriptive treatment response without diagnostic inference
- N-of-1 trials with no diagnostic or classification component
- Non-English without English abstract
- Pre-1980 papers (except foundational papers)
- Veterinary medicine (except where methodologically relevant)
- Dental/hypersensitivity papers (except where decision-tree methodology relevant)

## Flow
- Total hits across all queries: ~1,362
- After deduplication: ~1,200 (estimate)
- After title/abstract screen: ~50
- After full-text review: 16
- Final included: 16
- Excluded with reasons:
  - Not diagnostic inference-related: ~30
  - Descriptive only: ~10
  - Irrelevant disease/drug focus: ~4
  - Duplicate content across queries: ~10

## Search Terms by Database
- **PubMed eutils:** All queries conducted via `esearch.fcgi` endpoint with `retmax` parameter and `sort=relevance`; abstracts fetched via `efetch.fcgi`
- **Semantic Scholar:** Queried via API v1 `/paper/search` but rate-limited (429) — no results included
- **Google Scholar:** Not queried — insufficient result differentiation for this specific topic
