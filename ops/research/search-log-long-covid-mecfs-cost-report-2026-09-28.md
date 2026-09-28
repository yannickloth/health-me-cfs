# Search Log: Germany Cost-of-Illness Report — Long COVID + ME/CFS (Risklayer + ME/CFS Research Foundation)

**Topic slug:** `long-covid-mecfs-cost-report`
**Date:** 2026-09-28
**Searcher:** research integrator (Phase-1 artifacts)
**Topic type:** SOCIO-ECONOMIC / health-economics (NOT biomedical)

**Primary sources (gray literature, report PDFs):**
1. April 2026 update — "The rising cost of Long COVID and ME/CFS in Germany — 2026 update": https://mecfs-research.org/wp-content/uploads/2026/04/The-rising-cost-of-Long-COVID-and-MECFS-in-Germany-2026-update.pdf
2. May 2025 original — "The rising cost of Long COVID and ME/CFS in Germany": https://mecfs-research.org/wp-content/uploads/2025/05/The-rising-cost-of-Long-COVID-and-MECFS-in-Germany.pdf
3. Model preprint (supporting): "Update 2025: Modellierung der COVID-Infektionszahlen in Deutschland 2020-2025" — https://www.researchgate.net/publication/400861280_Update_2025_Modellierung_der_COVID-Infektionszahlen_in_Deutschland_2020-2025
4. Model data/code repository (supporting): https://github.com/risklayer/long-covid-mecfs-costs-germany

---

## Verification of primary PDFs

Both report PDFs were fetched (HTTP 200) and their title pages / executive summaries extracted (`pdftotext`). Author, affiliation, and suggested-citation metadata were read directly from the PDF title pages.

- **2026 update authors:** James Daniell, Johannes Brand, Dirk Paessler, Joerg Heydecke, Simon Schoening, Maria Lucia Nikoloudis, Vera Manser, Amy McLennan. Released by Risklayer GmbH (Karlsruhe) + ME/CFS Research Foundation gGmbH (Hamburg). Editor: Lauren Goshen.
- **2025 original authors:** James Daniell, Johannes Brand, Dirk Paessler, Joerg Heydecke, Simon Schoening, Amy McLennan. Same releasing organisations. (Version 1.0, May 2025.)
- **Headline figures verified in 2026 PDF:** €318.8B combined 2020–2025; €64.4B in 2025 = 1.44% of GDP; 756,808 Long COVID + 656,951 ME/CFS; 13–15M infections 2025 (80–200× official); €500M / €50M/yr "National Decade Against Post-infectious Diseases"; funding split 22% biomedical (€50M) / 71% healthcare-services (€157M); dynamic Monte Carlo simulation; ~5%/yr ME/CFS recovery; ~€40M/yr federal research spending = 0.06% of 2025 cost.
- **GitHub repo verified:** MIT-licensed Python code + CC-BY-4.0 data; two scripts (`Part1_CaseTracker.py`, `Part2_TotalCostEstimate.py`); four model permutations; created 2025-05-08, last updated 2026-01-20.

---

## PubMed search for peer-reviewed German LC/ME/CFS cost-of-illness / burden studies

| # | Database | Query string | Hits | Relevant |
|---|----------|-------------|------|----------|
| P1 | PubMed | `long COVID cost of illness Germany` | 33 | 0 direct (G20/GBD/breast-cancer/COVID-vax noise) |
| P2 | PubMed | `chronic fatigue syndrome cost of illness Germany` | 8 | 1 (Vester2026 scoping review, already in corpus) + Gandjour not surfaced here |
| P3 | PubMed | `ME/CFS economic burden Germany` | 11 | 1 (Gandjour 2024 via related terms) |
| P4 | PubMed | `post-COVID economic burden Germany` | 31 | 0 direct cost-of-illness (biomarker/mechanism studies) |
| P5 | PubMed | `long COVID health economic cost Germany` | 98 | 0 direct (broad GBD/vaccination noise) |
| P6 | PubMed | `ME/CFS Germany societal cost` | **1** | **1 — Gandjour 2024 (PMID 39024303)** |
| P7 | PubMed | `Long COVID work incapacity Germany cost` | 1 | 1 (41218624 — German LC survey, not cost estimate) |
| P8 | PubMed | `post-COVID condition Germany cost illness` | 4 | 1 — Walter 2022 (PMID 36560604) German PCS inpatient + direct costs |
| P9 | PubMed | `Long COVID Germany economic burden productivity` | 29 | 0 direct (unscreened noise: GBD/education/vaccination) |
| P10 | PubMed | `Chronic Fatigue Syndrome Germany productivity costs` | 0 | **0** |

### Peer-reviewed complements found

1. **Gandjour A (2024).** "Determining the societal value of a prospective drug for ME/CFS in Germany." _PLoS ONE_ 19(7):e0307086. PMID 39024303; DOI 10.1371/journal.pone.0307086; PMCID PMC11257356.
   — Single-author German ME/CFS health-economics modelling. A prospective ME/CFS drug ≈ 29,000 QALYs and ≈ €2.6B societal value; optimal German R&D investment ≈ €676M (~¼ of total drug-development cost). Directly complements the cost report's funding-gap thesis. → added as `Gandjour2024GermanyMEcfsValue`.

2. **Walter N, Rupp M, Lang S, Leinberger B, Alt V, Hinterberger T, Loew T (2022).** "A Comprehensive Report of German Nationwide Inpatient Data on the Post-COVID-19 Syndrome Including Annual Direct Healthcare Costs." _Viruses_ 14(12):2600. PMID 36560604; DOI 10.3390/v14122600.
   — Peer-reviewed German nationwide inpatient (claims) data: hospitalized PCS case counts, in-hospital mortality, ICU treatment, concomitant diagnoses, procedures, and annual **direct** healthcare costs. Direct-cost-only complement (excludes indirect/productivity costs). → added as `Walter2022GermanyPCSCost`.

### Honest null/absence record

- **No peer-reviewed German study estimates the combined societal cost of Long COVID + ME/CFS.** The Risklayer/ME-CFS Research Foundation report is the only source producing a combined €318.8B (2020–2025) figure; it is gray literature, not peer-reviewed.
- The peer-reviewed literature is split and partial: Gandjour 2024 covers ME/CFS *societal value of a hypothetical drug* (not current burden); Walter 2022 covers Post-COVID *direct inpatient* costs only. Neither is a full cost-of-illness study, and neither spans LC+ME/CFS jointly.
- German-language or ResearchGate-indexed studies beyond PubMed were not systematically searched (registry/access constraints); a Scholar conceptual probe found no additional peer-reviewed German cost-of-illness study beyond the two above.
- This confirms the gray-literature report fills a genuine evidence gap, and its claims must be treated as modeled (certainty 0.55), not empirically measured.

---

## Cohort/model overlap flag (single evidence source)

The two report editions (2025 original + 2026 update) share the **same model, data pipeline, and author team** (Daniell/Brand/Paessler/Heydecke/Schoening; McLennan added 2026). The 2026 edition *supersedes* the 2025 edition. They are recorded as **one evidence source**, not independent replication — the 2025 edition is kept only as the version-of-record for the original framework, not as corroborating evidence.

---

## Inclusion criteria

- German cost-of-illness, burden-of-disease, or health-economics studies of Long COVID and/or ME/CFS.
- Peer-reviewed complements to the gray-literature cost report (search performed explicitly to check for any).
- The gray-literature report editions and their model/code artifacts (the primary topic sources).

## Exclusion criteria

- Non-German cost/burden studies (covered under the existing `economic-impact` stream: Zhao2023, Close2020, Mirin2020, Vester2026, etc.).
- COVID-19 *vaccination* economic studies (e.g., BNT162b2/ROUTINE-COV19 — P9 noise, excluded).
- Global Burden of Disease / G20 / breast-cancer / sepsis / atrial-fibrillation burden studies (P1/P5/P9 noise — not LC/ME/CFS-specific).
- Biomarker/mechanism post-COVID studies with no cost or burden component.

## Flow

- 10 PubMed queries; ~380 raw hits returned; top-ranked records screened per query.
- 2 peer-reviewed complements identified and added (Gandjour 2024; Walter 2022).
- 1 hit already in corpus and reused, not duplicated: Vester 2026 (`vester2026burdenreview`).
- Excluded-with-reason: 41218624 (German LC patient-survey, healthcare situation only — no cost estimate); 41783696 (German PCS inpatient *update* 2026 — follow-on to Walter 2022, no additive cost figure); COVID-vaccination economic studies (P9 noise).
- Final additions: **5 bib entries** (3 gray-literature + 2 peer-reviewed), `research_stream = long-covid-mecfs-cost-report`.
