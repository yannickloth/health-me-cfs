# Search Log: Babesia ~50% Prevalence in ME/CFS

**Date:** 2026-07-16
**Search conducted by:** AI literature search agent
**Topic:** Recent finding of high Babesia prevalence (~50%) in ME/CFS patients

---

## Search Query Record

### PubMed Searches (all JSON and XML)

| # | Query | Result count | Notes |
|---|-------|-------------|-------|
| 1 | `(babesia AND (myalgic encephalomyelitis OR chronic fatigue syndrome OR ME/CFS)) AND (2024:2026)` | 1 hit | PMID 41598986 (Breitschwerdt 2025) |
| 2 | `babesia AND chronic fatigue` | 3 hits | PMIDs 41598986, 21754937, 8644768 |
| 3 | `babesia AND fatigue` (no date filter) | 40 hits | Mostly case reports, few relevant |
| 4 | `babesia microti AND (fatigue OR chronic)` | 74 hits | Mostly babesiosis case reports; fatigue listed as symptom |
| 5 | `babesia duncani AND (fatigue OR chronic)` | 4 hits | PMIDs 38563132, 34070625, 28890784, 24929022 |
| 6 | `babesia AND prevalence AND (fatigue OR chronic fatigue OR myalgic)` | 0 | Empty |
| 7 | `babesia AND seroprevalence AND human AND (2020:2026)` | 0 | Empty |
| 8 | `babesiosis AND (fatigue OR chronic OR persistent symptoms)` | Multiple | Mostly case reports documenting fatigue as symptom |
| 9 | `(babesia OR babesiosis) AND "chronic fatigue syndrome"` | 3 | PMIDs 41598986, 23155374, 8644768 |
| 10 | `(babesia OR babesiosis) AND (fifty OR 50% OR half OR prevalence) AND (ME/CFS OR myalgic OR chronic fatigue syndrome)` | 10 | Broad match, only 2-3 relevant |
| 11 | `(babesia OR babesiosis) AND (seroprevalence OR seropositive) AND ("chronic fatigue" OR myalgic)` | 3 | PMIDs 37111439, 31265116, 25886403 |
| 12 | `babesia AND ME/CFS` (abbreviated) | 1 | PMID 41598986 |
| 13 | `babesia AND "myalgic encephalomyelitis"` | 1 | PMID 41598986 |

### Google Scholar Searches

| # | Query | Result | Notes |
|---|-------|--------|-------|
| 1 | `"Babesia" "chronic fatigue syndrome" "prevalence" 2024-2026` | Blocked/empty | Google Scholar JS-dependent; scraped page yielded no structured results |
| 2 | `"Babesia" "50%" "chronic fatigue"` | 0 direct hits | Lay articles, book snippets, no primary research |

### medRxiv & Preprint Servers

| # | Query | Result | Notes |
|---|-------|--------|-------|
| 1 | `babesia myalgic encephalomyelitis` (2024-2026) | 0 | No preprint matches |

### Biochemical Link Searches (hemolysis → fatigue pathway)

| # | Query | Result count | Notes |
|---|-------|-------------|-------|
| 1 | `(hemolysis OR haptoglobin OR heme oxygenase) AND (chronic fatigue OR myalgic encephalomyelitis OR ME/CFS)` | 124 | Included many hemolytic anemia papers; filtered to relevant |
| 2 | `(hemolysis OR haptoglobin OR heme oxygenase) AND (chronic fatigue OR myalgic encephalomyelitis)` | 124 (same) | |

---

## Results Summary

### Papers Found: 6 primary + 2 biochemical link

| # | Paper | Year | Relevance | Babesia Finding |
|---|-------|------|-----------|-----------------|
| 1 | Breitschwerdt et al. — Pathogens | 2025 | **KEY:** 24% Babesia + 26% Bartonella in 50 chronic fatigue patients | Combined ~50% infected |
| 2 | Maggi et al. — Parasites & Vectors | 2024 | Babesia odocoilei + Bartonella co-infections (7 patients) | Case series supports co-infection |
| 3 | Scott et al. — Diagnostics | 2021 | Babesia odocoilei detection in symptomatic humans | Case series |
| 4 | Locke et al. — Emerg Infect Dis | 2023 | Neurologic complications of babesiosis | Reviews fatigue/neuro symptoms |
| 5 | MacDonald et al. — Am J Med | 1996 | CFS case-control; null Babesia result | **Null:** 0/47 CFS positive |
| 6 | Krause et al. — JAMA (existing) | 1996 | Concurrent Lyme + babesiosis severity | Context on co-infection severity |
| 7 | Moezzi et al. — J Transl Med | 2025 | Haptoglobin phenotypes in ME/CFS | Biochemical link: haptoglobin depletion |
| 8 | Luo et al. — Neurochem Int | 2025 | Nrf2/HO-1/NQO1 in fibromyalgia | Biochemical link: heme oxygenase axis |

### Key Finding Assessment

**Breitschwerdt et al. 2025** (Pathogens 15(1):2) is the paper behind the "~50% Babesia" claim:

- **Actual result:** 24% Babesia DNA (12/50) + 26% Bartonella DNA (13/50) = 46% combined
- **Design:** Cross-sectional; PCR + enrichment blood culture
- **Population:** Self-selected chronic fatigue (6mo–19yr) + ≥1 neurological symptom
- **Controls:** None — no healthy control group
- **Funding:** Cohen Foundation, Galaxy Diagnostics-affiliated authors
- **COI:** Breitschwerdt/Maggi are Galaxy Diagnostics co-founders
- **Certainty:** Low-moderate (0.45) — pilot, no controls, small n, COI

The 50% figure likely conflates Babesia+Bartonella combined detection into a single "tick-borne infection" prevalence.

### Database Limitations

- PubMed indexed only 1 paper with direct Babesia + ME/CFS overlap (Breitschwerdt 2025)
- No conference abstracts or preprints found on medRxiv for this specific claim
- Google Scholar returns primarily grey literature (book excerpts, lay articles)
- The 50% figure may originate from patient-facing summaries or conference presentations not yet indexed

---

## Bib Format Compliance Check

- [x] Bib key format: `AuthorYEARkeyword` with surname capitalized
- [x] `certainty = {0.XX}` field present
- [x] `research_stream = {babesia-mecfs}` field present
- [x] Entries added to `immune.bib`
- [x] Annotated entries in `appendix-h-annotated-bibliography.typ`
- [x] Literature summary in `ops/research/`
