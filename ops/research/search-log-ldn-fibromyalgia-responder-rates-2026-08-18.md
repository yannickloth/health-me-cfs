# Search Log: ldn-fibromyalgia-responder-rates

**Topic slug:** `ldn-fibromyalgia-responder-rates`
**Date:** 2026-08-18
**Agent:** literature-integrator (Phase 1)
**Topic type:** NULL-evidence treatment topic — LDN 30% responder re-analysis of the FINAL trial in fibromyalgia (FM). FM is a high-overlap comorbidity of ME/CFS (population-weight discount applied), NOT a direct ME/CFS cohort.

## Queries

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|
| 1 | PubMed | low-dose naltrexone fibromyalgia responder secondary outcomes | 4 | 4 | 1 (Nielsen 2026, PMID 42586891) | 2026-08-18 |
| 2 | Crossref | Low-dose naltrexone for fibromyalgia: A re-analysis suggests lower efficacy (Korean J Pain) | 1 (DOI 10.3344/kjp.25275) | 1 | 1 (Due Bruun 2026) | 2026-08-18 |
| 3 | PubMed | naltrexone fibromyalgia 30% responder | 5 | 5 | 1 (Nielsen 2026) + 4 context | 2026-08-18 |
| 4 | PubMed | FINAL trial naltrexone fibromyalgia | 4 | 4 | 2 (Nielsen 2026, Due Bruun 2025 CPM) | 2026-08-18 |
| 5 | PubMed | low-dose naltrexone fibromyalgia AND (negative OR no difference OR failed OR ineffective) | 23 | 18 | 5 (Nielsen 2026, INNOVA 42385209, Due Bruun 2025 40214857, Ologunowa 2025 40272382, Vatvani 2024 39344363) | 2026-08-18 |
| 6 | Crossref | naltrexone fibromyalgia secondary outcomes responder (bibliographic) | — | 10 | 1 (editorial DOI 10.1016/s2665-9913(23)00297-7) | 2026-08-18 |
| 7 | PubMed | Is low-dose naltrexone for fibromyalgia another treatment disappointment | 1 | 1 | 1 (Häuser 2024, PMID 38258679) | 2026-08-18 |
| 8 | PubMed | low-dose naltrexone adverse effects sleep | 5 | 5 | 1 (Bolton 2019 SAE, PMID 30642329) | 2026-08-18 |
| 9 | PubMed | naltrexone TLR4 antagonism microglia | 1 | 1 | 1 (Gao 2025 CIAC101, PMID 41265859) | 2026-08-18 |
| 10 | PubMed | opioid growth factor receptor OGFr chronic pain | 1 | 1 | 1 (Zagon 2018, PMID 30541348) | 2026-08-18 |
| 11 | PubMed | endogenous opioid chronic fatigue syndrome | 15 | 8 | 0 (all off-topic or already present) | 2026-08-18 |
| 12 | PubMed | TLR4 OR toll-like receptor 4 AND (ME/CFS) | 17 | 10 | 0 (all general TLR4-ME/CFS; none LDN-specific bridge) | 2026-08-18 |
| 13 | PubMed | low-dose naltrexone fibromyalgia (negative/no-difference) — dedup audit vs bib | 23 | — | 0 new (all remaining already in bib or off-topic) | 2026-08-18 |

## Inclusion Criteria
- The specific abstract paper: Nielsen 2026 exploratory 30%-responder re-analysis of the FINAL trial.
- The reference-#9 paper: Due Bruun 2026 Korean J Pain re-analysis.
- Direct null/negative LDN-in-FM evidence (RCTs, meta-analyses, secondary analyses).
- Harm/safety evidence for oral naltrexone (MANDATORY for treatment topic).
- Indirect biochemical-link papers establishing the LDN mechanisms (TLR4 antagonism/microglia, OGFr/enkephalin rebound) that the null clinical results bear on.

## Exclusion Criteria
- Papers already in `src/main/typst/mecfs/bib/*.bib` (deduplicated by grep): Due Bruun 2024 (primary FINAL), Bruun-Plesner 2020, Yang 2023, Younger 2009/2013/2014, Polo 2019, Bolton 2020 (case report), Kwilasz 2021, Kucic 2021, Patel 2022 (EAE), Boyadjieva 2004.
- Off-topic naltrexone uses (alcohol/opioid-use disorder, obesity, methamphetamine addiction as primary endpoint).
- General TLR4/ME-CFS papers with no LDN-specific mechanism bridge.
- Preprints duplicating an already-published paper.

## Flow
- Total unique PMIDs/DOIs screened: ~90 (13 queries).
- Deduplicated against existing bib: ~15 excluded as already present.
- After title/abstract screen: ~25 candidate papers.
- After full-text/metadata verification: 10 NEW included (8 clinical/null + 1 harm + 2 indirect biochemical).
- Screened out with reasons: see literature summary "Screened out".

## Final NEW bib entries (10)

| Key | File | Role |
|-----|------|------|
| `Nielsen2026LDNFMResponder` | treatments.bib | PRIMARY — 30% responder re-analysis (NULL) |
| `DueBruun2026LDNFMReanalysis` | treatments.bib | reference-#9 Korean J Pain re-analysis (NULL) |
| `RodriguezFreire2026LDNFMINNOVA` | treatments.bib | 12-month RCT (NULL) |
| `DueBruun2025LDNCPM` | treatments.bib | FINAL CPM mechanistic secondary analysis (NULL for mechanism) |
| `Hauser2024LDNFMEditorial` | treatments.bib | editorial (null-leaning commentary) |
| `Ologunowa2025LDNFMMeta` | treatments.bib | meta-analysis (NULL between-group) |
| `Vatvani2024LDNFMMetaTSA` | treatments.bib | meta-analysis (COMPETING positive) |
| `Bolton2019NaltrexoneSAE` | treatments.bib | HARM/SAFETY meta-analysis |
| `Gao2025CIAC101TLR4` | immune.bib | INDIRECT — TLR4/microglia mechanism |
| `Zagon2018OGFrBlockade` | immune.bib | INDIRECT — OGFr/enkephalin mechanism |
