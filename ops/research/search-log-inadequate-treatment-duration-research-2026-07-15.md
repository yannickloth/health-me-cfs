# Search Log: Inadequate Treatment Duration in Research

## Queries

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|
| 1 | PubMed | "lyme disease" AND "antibiotic" AND "trial" AND "duration" | 13 | 13 | 3 | 2026-07-15 |
| 2 | PubMed | "valganciclovir" AND "chronic fatigue" | 5 | 5 | 3 | 2026-07-15 |
| 3 | PubMed | "lyme" AND "coinfection" AND "treatment" | 82 | 20 | 2 | 2026-07-15 |
| 4 | PubMed | "chronic fatigue syndrome" AND "treatment trials" AND "duration" | 2 | 2 | 1 | 2026-07-15 |
| 5 | PubMed | "myalgic encephalomyelitis" AND "antiviral" AND "trial" | 2 | 2 | 2 | 2026-07-15 |
| 6 | PubMed | "IDSA" AND "ILADS" AND "lyme" | 3 | 3 | 2 | 2026-07-15 |
| 7 | PubMed | "post-treatment lyme disease syndrome" AND "antibiotic" AND "trial" | 4 | 4 | 2 | 2026-07-15 |
| 8 | PubMed | "immunomodulatory" AND "chronic fatigue syndrome" AND "trial" | 10 | 10 | 3 | 2026-07-15 |
| 9 | PubMed | "rituximab" AND "chronic fatigue syndrome" | 28 | 10 | 4 | 2026-07-15 |
| 10 | PubMed | "Klempner" AND "Lyme" AND "antibiotic" AND "trial" | 6 | 6 | 2 | 2026-07-15 |
| 11 | PubMed | "Fallon" AND "Lyme" AND "antibiotic" AND "trial" | 4 | 4 | 2 | 2026-07-15 |
| 12 | PubMed | "Berende" AND "Lyme" AND "antibiotic" | 4 | 4 | 2 | 2026-07-15 |
| 13 | PubMed | "Fluge" AND "rituximab" AND "chronic fatigue" | 10 | 10 | 4 | 2026-07-15 |
| 14 | PubMed | "Krupp" AND "ceftriaxone" AND "lyme" | 3 | 3 | 2 | 2026-07-15 |
| 15 | PubMed | "rintatolimod" AND "chronic fatigue syndrome" | 8 | 8 | 2 | 2026-07-15 |
| 16 | PubMed | "Lyme" AND "co-infection" AND "babesia" AND "bartonella" AND "treatment" AND "review" | 1 | 1 | 1 | 2026-07-15 |
| 17 | PubMed | "Lyme" AND "persistent" AND "infection" AND "antibiotic" AND "controversy" | 6 | 6 | 1 | 2026-07-15 |
| 18 | PubMed | "rituximab" AND "ME/CFS" AND "randomized" AND "placebo" | 6 | 6 | 2 | 2026-07-15 |
| 19 | PubMed | "Lyme" AND "persistent" AND "animal" AND "B. burgdorferi" AND "antibiotic" | 12 | 10 | 1 | 2026-07-15 |
| 20 | PubMed | "ME/CFS" AND "treatment" AND "meta-analysis" AND "limitations" | 1 | 1 | 0 | 2026-07-15 |
| 21 | PubMed | "long-term antibiotic" AND "adverse" AND "lyme" | 0 | 0 | 0 | 2026-07-15 |
| 22 | PubMed | "valacyclovir" AND "chronic fatigue syndrome" | 5 | 5 | 0 | 2026-07-15 |
| 23 | PubMed | "interferon" AND "chronic fatigue syndrome" AND "trial" | 14 | 10 | 0 | 2026-07-15 |
| 24 | PubMed | "Coxsackie" AND "antiviral" AND "chronic fatigue" | 1 | 1 | 0 | 2026-07-15 |

## Inclusion Criteria
- Peer-reviewed journal articles (any date)
- Preprints accepted only if recent (2024+) and highly relevant
- English language
- Direct relevance to treatment duration/dosing critique in chronic illness trials
- ME/CFS treatment trials with explicit discussion of duration limitations
- Lyme disease treatment trials and methodological critiques thereof

## Exclusion Criteria
- Opinion pieces without original data or systematic analysis
- Non-English (unless abstract provides sufficient evidence)
- Irretrievable full text (abstract-only analysis noted)

## Flow
- Total hits across all queries: ~210 (with deduplication across overlapping queries)
- After deduplication: ~80 unique papers
- After title/abstract screen: ~30
- After full-text review: ~18
- Final included: 12 papers
- 8 additional papers identified as supporting context but not formally included

## Excluded with Reasons
- Most excluded were irrelevant to the treatment-duration critique (e.g., studies on acute Lyme treatment, ME/CFS epidemiology without treatment focus)
- Several valacyclovir/interferon/coxackie papers excluded because abstracts insufficient to assess relevance or full text unavailable
- The "long-term antibiotic adverse effects" search returned zero results with the exact phrase; broader terms would be needed for a safety review

## Search Terms by Database
- PubMed MeSH terms: "Lyme disease/drug therapy", "Borrelia burgdorferi", "Anti-Bacterial Agents/therapeutic use", "Fatigue Syndrome, Chronic/drug therapy", "Treatment Duration", "Clinical Trials as Topic"
- PubMed keyword: free-text searches as listed
- NCBI E-utilities API used for all PubMed queries (JSON response format, efetch for abstracts)
