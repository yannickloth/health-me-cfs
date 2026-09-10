# Search Log: Pharmacodiagnostic Corpus

**Date:** 2026-09-10
**Topic:** Pooled patient- and clinician-collected medication-response reports as a
population-level pharmacodiagnostic corpus for identifying rate-limiting biological
pathways in ME/CFS.
**Slug:** `pharmacodiagnostic-corpus`
**Database:** PubMed (E-utilities `esearch`/`esummary`/`efetch`); Crossref (DOI verification)

## Framing

This is a **methodology / epistemic** topic, not a drug-efficacy topic. The direct
proposal — pooling uncoordinated ME/CFS drug-response reports into a
constraint-satisfaction instrument that ranks rate-limiting pathways — has **zero
direct studies**. The search therefore targeted the methodological precedents and
their limits: n-of-1 aggregation, patient-generated data, pharmacovigilance signal
detection, crowdsourced-cohort bias, EHR-based drug-response inference, ME/CFS
treatment-response heterogeneity, subtype inference from response, and the
null/critique literature.

## Queries

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|
| 1 | PubMed | `n-of-1 trials meta-analysis aggregation` | 5 | 5 | 2 | 2026-09-10 |
| 2 | PubMed | `n-of-1 trial individual patient data meta-analysis` | 8 | 8 | 2 | 2026-09-10 |
| 3 | PubMed | `n-of-1 trial methodology reporting quality` | 8 | 6 | 1 | 2026-09-10 |
| 4 | PubMed | `n-of-1 trial limitations aggregation bias` | 8 | 6 | 1 | 2026-09-10 |
| 5 | PubMed | `n-of-1 trials clinical practice barriers` | 0 | 0 | 0 | 2026-09-10 |
| 6 | PubMed | `single-case experimental design` | 8 | 5 | 1 | 2026-09-10 |
| 7 | PubMed | `single-case design internal validity generalization` | 8 | 5 | 1 | 2026-09-10 |
| 8 | PubMed | `patient-reported outcomes real-world evidence aggregation` | 8 | 6 | 1 | 2026-09-10 |
| 9 | PubMed | `patient-generated health data` | 8 | 6 | 1 | 2026-09-10 |
| 10 | PubMed | `patient-generated health data aggregation` | 0 | 0 | 0 | 2026-09-10 |
| 11 | PubMed | `spontaneous reporting signal detection disproportionality` | 8 | 6 | 2 | 2026-09-10 |
| 12 | PubMed | `pharmacovigilance signal detection real-world data drug repurposing` | 1 | 1 | 0 | 2026-09-10 |
| 13 | PubMed | `reverse pharmacovigilance drug repurposing` | 1 | 1 | 1 | 2026-09-10 |
| 14 | PubMed | `adverse event reporting bias underreporting limitations` | 8 | 5 | 1 | 2026-09-10 |
| 15 | PubMed | `PatientsLikeMe` | 8 | 6 | 2 | 2026-09-10 |
| 16 | PubMed | `internet-based cohort study bias self-selection` | 2 | 2 | 1 | 2026-09-10 |
| 17 | PubMed | `crowdsourced health research validity` | 8 | 4 | 1 | 2026-09-10 |
| 18 | PubMed | `citizen science biomedical research` | 8 | 4 | 1 | 2026-09-10 |
| 19 | PubMed | `patient-reported drug response forum` | 8 | 5 | 1 | 2026-09-10 |
| 20 | PubMed | `computational drug repurposing electronic health records` | 8 | 6 | 1 | 2026-09-10 |
| 21 | PubMed | `drug response prediction observational data` | 0 | 0 | 0 | 2026-09-10 |
| 22 | PubMed | `ME/CFS treatment response heterogeneity subgroup` | 8 | 6 | 2 | 2026-09-10 |
| 23 | PubMed | `ME/CFS responder subgroup treatment` | 8 | 5 | 1 | 2026-09-10 |
| 24 | PubMed | `ME/CFS patient survey treatment response` | 8 | 5 | 1 | 2026-09-10 |
| 25 | PubMed | `ME/CFS drug repurposing treatment` | 8 | 4 | 0 | 2026-09-10 |
| 26 | PubMed | `myalgic encephalomyelitis chronic fatigue syndrome n-of-1` | 4 | 4 | 2 | 2026-09-10 |
| 27 | PubMed | `long COVID n-of-1 trial` | 2 | 2 | 0 | 2026-09-10 |
| 28 | PubMed | `treatment response latent class subtype inference` | 8 | 5 | 1 | 2026-09-10 |
| 29 | PubMed | `heterogeneity of treatment effect subgroup identification` | 0 | 0 | 0 | 2026-09-10 |
| 30 | PubMed | `responder analysis stratified medicine` | 8 | 4 | 1 | 2026-09-10 |
| 31 | PubMed | `self-report bias clinical trial` | 8 | 4 | 0 | 2026-09-10 |
| 32 | PubMed | `open-label placebo` | 8 | 5 | 2 | 2026-09-10 |
| 33 | PubMed | `pharmacological probe mechanism of disease` | 8 | 4 | 0 | 2026-09-10 |
| 34 | PubMed | `diagnosis ex juvantibus` | 8 | 5 | 0 (reuse `Laragh1988DiagnosisExJuvantibus`) | 2026-09-10 |
| 35 | PubMed | `treatment response reveals disease mechanism` | 8 | 4 | 1 | 2026-09-10 |
| 36 | Crossref | DOI verification for 12 candidate titles | 12 | 12 | 12 | 2026-09-10 |

Queries returning 0 hits did so because of hyphen tokenization (`n-of-1` phrase
matching) or because the phrase is not used in the literature; they are recorded
as null datapoints, not as failures.

## Inclusion Criteria

- N-of-1 / single-case experimental design methodology, especially **aggregation**
  of single-patient trials into population/subgroup estimates.
- Patient-generated / patient-reported data methods, including validation and
  integration into pharmacoepidemiology.
- Pharmacovigilance signal detection from spontaneous reports (disproportionality,
  inverse signal detection) — both methods and limits.
- Crowdsourced / internet-cohort / citizen-science methods and their selection and
  reporting biases.
- Drug-response inference from observational data (EHR, claims, social media).
- ME/CFS (or long COVID) treatment-response heterogeneity and symptom/subtype
  structure.
- Subtype/responder inference from differential drug response.
- Null, negative, or critique evidence on any of the above (mandatory).
- `ex juvantibus` / pharmacological-probe diagnostic principle (mandatory).

## Exclusion Criteria

- Drug response used only predictively (pharmacogenomic toxicity prediction) with
  no diagnostic/mechanistic inference.
- Purely descriptive treatment-response reports with no aggregation or inference.
- Veterinary medicine (except where the methodological point transfers).
- Non-English without English abstract.
- Generic network-pharmacology / plant-extract mechanism papers with no
  drug-response corpus relevance (excluded after screening).

## Flow

- Total hits across all queries: ~230 (sum of per-query hits; several queries
  returned the capped 8)
- After deduplication: ~160 unique PMIDs
- After title/abstract screen: ~60
- After full-text/abstract review: 24
- Final included (new bib entries): **19**
- Reused existing corpus entries (no duplication): `Laragh1988DiagnosisExJuvantibus`,
  `Zucker2010`, `Duan2013`, `McDonald2022Nof1MEcfs`, `Wicks2018PatientStudyThyself`,
  `Wiggins2019CitizenScience`, `Eckey2025PRO` / `Eckey2025PatientReported`,
  `Rekeland2024SixYrFollowup`
- Excluded with reasons:
  - Not methodology/inference-relevant: ~30
  - Generic descriptive or unrelated disease/drug focus: ~18
  - Duplicate content across queries: ~8

## Verification Notes

- All DOIs for the 19 new entries were read from PubMed's canonical
  `PubmedData/ArticleIdList/ArticleId[@IdType='doi']` and, where PubMed was
  ambiguous, cross-checked against Crossref by title. No DOI was transcribed from
  memory.
- `Eckey2025` (patient-reported treatment outcomes in ME/CFS and long COVID,
  PNAS 2025;122(28):e2426874122) was **already in the corpus** in two files
  (`long-covid.bib: Eckey2025PRO`, `treatments.bib: Eckey2025PatientReported`).
  It is the single most direct real-world precedent for the proposal and is
  reused, not duplicated.
- `Laragh1988DiagnosisExJuvantibus` was already present in
  `diagnosis-assessment.bib` from a prior pharmacodiagnostic cycle and is reused.

## Search Terms by Database

- **PubMed E-utilities:** `esearch.fcgi` with `retmax=8`, `sort=relevance`;
  abstracts and metadata via `esummary.fcgi` and `efetch.fcgi` (XML).
- **Crossref API:** `/works?query.bibliographic=` for DOI verification of
  candidate titles.
- **Google Scholar / Semantic Scholar:** not queried — result differentiation
  insufficient for this methodological topic and rate limits.
