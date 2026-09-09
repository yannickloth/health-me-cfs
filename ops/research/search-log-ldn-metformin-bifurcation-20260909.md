# Search Log: LDN-vs-Metformin Mechanistic Bifurcation Triage (ldn-metformin-bifurcation)

Date: 2026-09-09
Method: PubMed E-utilities (esearch/esummary/efetch) via NCBI API. Targeted
esearch by title/abstract + direct PMID lookup for known anchors. Search terms
engineered with explicit boolean operators and quoted phrases to avoid NCBI
term-mapping over-expansion on broad queries.

## Queries

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|
| Q1 | PubMed | metformin[TIAB] AND ("myalgic encephalomyelitis" OR "chronic fatigue syndrome") | 6 | 6 | 0 NEW (all corpus reuse) | 2026-09-09 |
| Q2 | PubMed | naltrexone[TIAB] AND metformin[TIAB] | 20+ | screened list | 0 (no ME/CFS phenotyping) | 2026-09-09 |
| Q3 | PubMed | metformin[Title] AND ("long covid" OR "post-acute" OR PASC OR "post-COVID") | 20 | screened list | 1 (Lim2026MetforminPASC) | 2026-09-09 |
| Q4 | PubMed | PMID 41911553, 41771135, 40458265, 41585253 direct | 4 | 4 | 4 (anchor identification) | 2026-09-09 |
| Q5 | PubMed | PMID 29915588, 38268156, 33093216, 34630103, 37302406 direct | 5 | 5 | 5 (anchor identification) | 2026-09-09 |
| Q6 | PubMed | metformin[Title] AND (SLC22A1 OR OCT1 OR rs11212617 OR pharmacogenomic[TIAB]) | 20 | screened list | 0 NEW (Zhou 2011 via Q7) | 2026-09-09 |
| Q7 | PubMed | rs11212617 | 10 | screened list | 1 (Zhou2011ATMmetformin, PMID 21186350) | 2026-09-09 |
| Q8 | PubMed | Zhou + metformin glycemic response GWAS (GoDARTS) | 5 | 1 | 1 (same as Q7) | 2026-09-09 |
| Q9 | PubMed | (low-dose naltrexone OR LDN) AND response | 20 | screened list | 0 NEW (corpus responder coverage) | 2026-09-09 |
| Q10 | PubMed | (low-dose naltrexone OR LDN) AND (safety OR adverse) AND 2025:2026[dp] | 15 | screened list | 0 NEW (LDN harm already covered) | 2026-09-09 |
| Q11 | PubMed | (low-dose naltrexone OR LDN) AND (meta-analysis OR systematic review) 2024-2026 | 10 | screened list | 0 NEW (fibromyalgia MAs redundant w/ corpus FINAL nulls + Gouda umbrella) | 2026-09-09 |
| Q12 | PubMed | biomarker stratified[TIAB] AND (fatigue OR "chronic illness" OR fibromyalgia) | 1 | 1 | 0 (irrelevant) | 2026-09-09 |
| Q13 | PubMed | enrichment design randomized trial biomarker | 5 | screened | 0 (oncology, out of scope) | 2026-09-09 |
| Q14 | PubMed | biomarker-guided precision trial failure heterogeneous syndrome | 9 | screened | 0 (not ME/CFS relevant) | 2026-09-09 |

## Inclusion Criteria
- Peer-reviewed, topic-relevant to phenotype-guided selection between low-dose
  naltrexone (neuroimmune/TRPM3 arm) and metformin (immunometabolic arm) for
  ME/CFS / post-infectious disease.
- Direct evidence of drug response: metformin in ME/CFS / long COVID /
  autoimmunity; LDN TRPM3 mechanism in ME/CFS / long COVID.
- Response-predictor / pharmacogenomic anchor for either drug.
- Genuinely novel to the corpus (not already covered by existing bib entries).

## Exclusion Criteria
- Papers already in the corpus under other research_streams (LDN umbrella review
  Gouda2026LDNevidence; LDN-LC meta Byambasuren2026LDNlongcovid; FINAL-trial LDN
  fibromyalgia null re-analyses; metformin ME/CFS perspective Fineberg2025Metformin;
  AMPK ME/CFS muscle Brown2018AMPK; PNAS oxidative Shankar2025oxidativestress;
  multisite TRPM3 Sasso2026trpm3; COVID-OUT Reis2023COVIDOUT).
- Over-expanded / irrelevant biomarker-stratified oncology-enrichment method
  papers (Q12-Q14) — no ME/CFS decision-rule precedent exists.
- Fibromyalgia LDN meta-analyses (redundant with corpus FINAL nulls + Gouda).

## Flow
- Total hits screened (title/abstract): ~40 across usable queries
- Candidates examined in full: 12
- Final NEW bib entries added: 7
  - immune.bib: Sasso2025LDNtrpm3LC, Ursini2018MetforminAutoimmunity,
    Sun2020MetforminSLE, Sun2020MetforminSLEflare, Gharib2021MetforminRA
  - treatments.bib: Zhou2011ATMmetformin
  - long-covid.bib: Lim2026MetforminPASC
- Existing-corpus reuse (NOT re-added): Sasso2026trpm3 (41585253),
  Reis2023COVIDOUT (37302406), Reis2026fluvoxamine (41911553, pmid field added),
  Fineberg2025Metformin (41189723), Brown2018AMPK (29654166),
  Shankar2025oxidativestress (40627396), Gouda2026LDNevidence,
  Byambasuren2026LDNlongcovid, FINAL-trial LDN null re-analyses.

## Null / Negative Datapoints (explicit)
- Q2: no published LDN+metformin direct comparison or combined-stratification
  study in ME/CFS or long COVID → the head-to-head triage has NO direct evidence.
- Q9: no biomarker validated to PREDICT LDN clinical response; TRPM3 restoration is
  in-vitro only; fibromyalgia responder data is null (FINAL) or heterogeneous.
- Q12-Q14: no biomarker-guided first-line drug-selection RCT precedent in ME/CFS,
  fibromyalgia, or long COVID.
- Metformin: works in acute COVID PREVENTION (Reis2023COVIDOUT) but metformin arm
  futile in established fatigue (Reis2026fluvoxamine/REVIVE) and negative in
  established PASC (Lim2026MetforminPASC) → "timing matters" is the only robust
  temporal signal; established-disease benefit is unproven.
