# Search Log: Fatigue (ME/CFS core symptom)

**Topic slug:** fatigue-core-symptom
**Date:** 2026-08-11
**Agent:** literature-integrator (deepseek-v4-pro)

## Queries

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|
| 1 | PubMed | "chronic fatigue" AND "myalgic encephalomyelitis" AND (prevalence OR phenotype OR subtype OR dimension OR core symptom) AND (2020:2026[pdat]) | 415 | 30 | 2 | 2026-08-11 |
| 2 | PubMed | "fatigue severity" AND "myalgic encephalomyelitis" AND (subjective OR objective OR measurement OR phenotype) AND (2020:2026[pdat]) | 34 | 20 | 2 | 2026-08-11 |
| 3 | PubMed | "fatigue" AND "myalgic encephalomyelitis" AND (latent class OR cluster analysis OR subgroup OR subtype OR phenotype) AND (2020:2026[pdat]) | 186 | 30 | 3 | 2026-08-11 |
| 4 | PubMed | "fatigue" AND "myalgic encephalomyelitis" AND ("Chalder fatigue" OR "multidimensional fatigue" OR "fatigue severity scale" OR "FSS" OR "MFI-20") AND (2020:2026[pdat]) | 45 | 15 | 1 | 2026-08-11 |
| 5 | PubMed | "fatigue" AND "myalgic encephalomyelitis" AND (systematic review OR meta-analysis) AND (prevalence OR core symptom) AND (2022:2026[pdat]) | 15 | 10 | 2 | 2026-08-11 |
| 6 | PubMed | "fatigue" AND "myalgic encephalomyelitis" AND (severity level OR mild OR moderate OR severe) AND (definition OR classification) AND (2020:2026[pdat]) | 65 | 20 | 0 | 2026-08-11 |
| 7 | PubMed | "fatigue" AND ("myalgic encephalomyelitis" OR "chronic fatigue syndrome") AND (null OR negative OR "no difference" OR "failed replication") AND (randomized trial OR RCT OR clinical trial) AND (2020:2026[pdat]) | 17 | 5 | 0 | 2026-08-11 |
| 8 | PubMed | "fatigue" AND "myalgic encephalomyelitis" AND (sleepiness OR depression OR pain OR cognitive) AND (differentiate OR discriminate OR distinguish OR independent OR separate) AND (2020:2026[pdat]) | 116 | 20 | 0 | 2026-08-11 |
| 9 | PubMed | "fatigue" AND "myalgic encephalomyelitis" AND (definition OR consensus OR "core criteria" OR operational) AND (2020:2026[pdat]) | 124 | 15 | 1 | 2026-08-11 |
| 10 | PubMed | "fatigue" AND "myalgic encephalomyelitis" AND (objective AND subjective) AND (2020:2026[pdat]) | 19 | 10 | 1 | 2026-08-11 |
| 11 | PubMed | "fatigue" AND ("myalgic encephalomyelitis" OR "chronic fatigue syndrome") AND ("Chalder fatigue scale" OR "fatigue assessment" OR "fatigue measurement" OR "fatigue questionnaire") AND (validation OR psychometric) AND (2020:2026[pdat]) | 2 | 2 | 0 | 2026-08-11 |
| 12 | PubMed | "fatigue" AND ("fatigability" OR "perceived fatigue" OR "performance fatigability" OR "trait fatigue" OR "state fatigue") AND ("myalgic encephalomyelitis" OR "chronic fatigue syndrome") AND (2020:2026[pdat]) | 17 | 10 | 2 | 2026-08-11 |
| 13 | PubMed | "fatigue" AND ("myalgic encephalomyelitis" OR "chronic fatigue syndrome") AND (ICF OR "International Classification of Functioning") AND (2020:2026[pdat]) | 5 | 3 | 1 | 2026-08-11 |
| 14 | PubMed | "fatigue" AND "myalgic encephalomyelitis" AND (dimensional OR multidimensional OR unidimensional OR domains) AND (2020:2026[pdat]) | 75 | 10 | 1 | 2026-08-11 |

## Inclusion Criteria
- Published 2020–2026
- Peer-reviewed journal
- Addresses fatigue as a core symptom of ME/CFS (definition, measurement, subtypes, severity, prevalence, objective vs subjective assessment, differentiation from other symptoms)
- ME/CFS or closely related post-infectious fatigue population
- Provides empirical data or systematic review methodology

## Exclusion Criteria
- Pure mechanism papers (energy metabolism, immune, vascular) — covered by separate cycles
- Treatment trials without fatigue-assessment component
- PEM-centric papers (the fatigue-PEM relationship is already covered in `sec-01-pem/`)
- CNS inflammation mechanism (Omdal plan, ch06/ch15)
- FSS/MFI validation papers already in corpus (Krupp1989fss, Smets1995mfi20)
- Pre-2020 papers unless foundational to a gap

## Flow
- Total hits (raw): ~1,135 across all queries
- After deduplication: ~250 unique PMIDs
- After title/abstract screen: ~100 abstracts reviewed
- After full-text review: 10 papers selected for inclusion
- Final included: 10 papers

## Excluded with Reasons
- ~70 mechanics/biochemical focus (energy metabolism, immune, vascular)
- ~30 treatments/intervention trials without definitional content
- ~20 PEM-centric (already covered by fatigue-pem-relationship stream)
- ~15 pre-2020 non-foundational
- ~8 FSS/MFI validation duplicates (Krupp 1989, Smets 1995 already in corpus)
- ~6 case reports without generalizable data

## Search Terms by Database
- PubMed MeSH: "Fatigue"[MeSH], "Fatigue Syndrome, Chronic"[MeSH], "Myalgic Encephalomyelitis"[All Fields]
- PubMed free-text: "fatigability"[tiab], "perceived fatigue"[tiab], "fatigue severity"[tiab], "symptom cluster"[tiab], "latent class"[tiab]
- No preprint servers searched (topic is clinical-descriptive; PubMed-indexed literature sufficient)
- clinicaltrials.gov: not searched (topic is phenotypic, not interventional)
