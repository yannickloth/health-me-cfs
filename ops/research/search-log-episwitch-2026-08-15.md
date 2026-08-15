# Search Log: EpiSwitch 3D-Genomic ME/CFS Diagnostic

**Date:** 2026-08-15
**Compiled by:** literature-integrator
**Research stream:** `episwitch`
**Seed paper:** Hunter et al. 2025, _J Transl Med_, PMID 41057909, DOI 10.1186/s12967-025-07203-w (ALREADY in bib as `Hunter2025` — not re-added)

---

## Objective

Find replication, cross-condition specificity, competing-epigenetic-biomarker, and null/contradicting evidence around the EpiSwitch 3D-genomic blood diagnostic for ME/CFS. Mandatory inclusion of null/negative and competing evidence.

## Inclusion Criteria

- Peer-reviewed (or high-quality preprint) papers bearing on:
  1. The EpiSwitch / chromosome-conformation-signature platform (any disease) — replication, cross-disease use, clinical utility.
  2. Independent mechanistic evidence linking 3D chromatin topology (CTCF/cohesin/TAD/enhancer-promoter loops) to the IL-2 / JAK-STAT axis the test reports.
  3. Competing blood epigenetic biomarkers in ME/CFS (HERV, OPRM1 methylation, lncRNA, EWAS) that overlap or contend with EpiSwitch claims.
  4. Null/negative/replication-gap findings.

## Exclusion Criteria

- Hunter 2025 primary paper (already in bib).
- Papers already in the prior `literature-epigenetics-2026-04-26.md` scan (Chalder PTPRN2/miR-153-3p, Nepotchatykh miRNA, Cheema, Helliwell, Przybylowicz, Pshezhetskiy).
- Papers already present in any split bib file (checked via grep before adding).
- Purely basic chromatin-biology papers with no immune/IL-2/JAK-STAT/disease relevance.
- Plant/yeast/animal-genome papers surfaced by keyword noise (e.g., Arabidopsis FLC, tomato CHROMOMETHYLASE3, Iodes seguinii, giant panda, chicken adipose).

---

## Query Flow (PubMed E-utilities; batch esearch/esummary/efetch)

| # | Query | Hits | Screened | Included |
|---|-------|------|----------|----------|
| 1 | `EpiSwitch[All Fields]` | 24 | 24 | 6 (cross-disease platform papers) |
| 2 | `("chromatin conformation" OR "chromosome conformation") AND (fatigue OR "myalgic encephalomyelitis" OR "chronic fatigue")` | 0 | — | — |
| 3 | `"ME/CFS" AND ("DNA methylation" OR epigenetic) AND (2025[pdat] OR 2026[pdat])` | 13 | 13 | 3 (OPRM1, HERV review; plus already-in-bib: PTPRN2, Peppercorn, etc.) |
| 4 | `"myalgic encephalomyelitis" AND ("chromosome conformation" OR "chromatin conformation" OR "Hi-C" OR "3D genome" OR "topologically associating" OR CTCF OR cohesin)` | 0 | — | — |
| 5 | `(EpiSwitch OR "chromosome conformation" OR "chromatin conformation") AND (fibromyalgia OR "chronic fatigue" OR "fatigue syndrome" OR "ME/CFS")` | 1 (41057909 = Hunter) | 1 | 0 (already in bib) |
| 6 | `"chronic fatigue syndrome" AND "long non-coding RNA"` | 2 | 2 | 1 (Yang 2018 vlncRNA) |
| 7 | `("chromatin conformation" OR "chromosome conformation" OR "3D genome") AND (depression OR "major depressive" OR "multiple sclerosis" OR "rheumatoid arthritis" OR "fibromyalgia")` | 22 | 22 | 0 (mostly plant/animal/method noise; DEXI 2012, PADI3 2008 are MS/RA enhancer-loop papers but pre-2015, off-scope) |
| 8 | `(EpiSwitch OR "chromosome conformation signature" OR "chromatin conformation") AND ("long covid" OR "long COVID" OR "post-acute" OR "SARS-CoV-2" OR "COVID-19")` | 7 | 7 | 0 (capture-C/virology method papers; no EpiSwitch Long COVID study) |
| 9 | `"chromosome conformation" AND (fibromyalgia OR "chronic pain" OR depression OR "bipolar" OR schizophrenia)` | 18 | 18 | 0 (no EpiSwitch in these conditions) |
| 10 | `Akoulitchev OR "Oxford BioDynamics"` | 60 | 60 | 5 (RA 2018, prostate 2021/2025, CiRT 2025, Paradigm Lost 2025) |
| 11 | `"chromosome conformation" AND ("multiple sclerosis" OR "rheumatoid arthritis" OR "systemic lupus" OR "inflammatory bowel")` | 14 | 14 | 1 (Zhu 2024 miR-146a lupus 4C) |
| 12 | `(CTCF OR cohesin OR "enhancer-promoter" OR "3D genome") AND ("JAK-STAT" OR "IL-2" OR interleukin-2)` | 45 | ~20 | 3 (TRIM28 2025, Ward 2025, Lee 2025 CTCF/STAT5) |
| 13 | `"ME/CFS" AND (biomarker OR diagnostic) AND (replication OR "not replicated" OR "failed" OR negative)` | 75 | 75 | 1 (Giménez-Orenga 2025 HERV segregation — competing cross-condition diagnostic; Beentjes 2025 already in bib) |
| 14 | `("Hi-C" OR "HiC" OR "topologically associating domain" OR "3D chromatin" OR "3D genome") AND ("myalgic" OR "chronic fatigue" OR "ME/CFS")` | 0 | — | — |
| 15 | `"epigenetic" AND "ME/CFS" AND ("not replicated" OR "failed to replicate" OR "lack of replication")` | 0 | — | — |

## Key Null Findings

- **No independent replication cohort** for the EpiSwitch ME/CFS diagnostic exists in PubMed. Queries 2, 4, 5, 14 all returned zero non-Hunter EpiSwitch/ME/CFS papers.
- **No EpiSwitch study in any fatiguing condition** (fibromyalgia, depression, long COVID, chronic pain) exists — query 9 and 8 returned zero. This is the central specificity gap: the test's 98% specificity was measured against healthy controls only, never against fibromyalgia, depression, or post-viral fatigue.
- **No Hi-C / TAD / CTCF-cohesin study in ME/CFS** (query 14 = 0). The 3D-genomic field has not independently profiled ME/CFS chromatin topology outside the commercial EpiSwitch pipeline.
- **No published negative replication** of the EpiSwitch ME/CFS test (query 15 = 0) — the test is simply unreplicated, not refuted.

## Cohort-Overlap / Same-Cohort-Slicing Flags (Instruction B)

- **Oxford BioDynamics commercial lineage:** Carini 2018, Alshaker 2021, Berghausen 2025, Abdo 2025, Mellor 2025, and Hunter 2025 all share authors Hunter/Akoulitchev/Green (OBD employees). These are platform-validation papers from the same vendor, not independent replication. Flagged for commercial COI.
- **Pchejetski/Pchejetskiy (UEA) is senior author** on both Alshaker 2021 (prostate) and Hunter 2025 (ME/CFS) — same PI lineage, same platform.
- **UEA (Norwich) shared between Hunter 2025 and Perera 2026 HERV review** (Carding is at UEA/Quadram; Pshezhetskiy at UEA). Distinct research groups but same institution; no shared cohort.
- **Oltra group (Valencia):** Giménez-Orenga 2025 (HERV segregation) and Perera 2026 (co-author Oltra) overlap. Giménez-Orenga 2025 cohort is independent of Hunter 2025.
- **Pain in Motion group (Brussels):** Wyns 2026 (OPRM1) and Ben Amar 2026 (review) share authors (Wyns, Hendrix, Van Campenhout, Polli, Nijs). No cohort overlap with Hunter 2025.
- **No cohort overlap** between Hunter 2025 (47 severe ME/CFS + 61 controls, UK) and any of the competing biomarker studies (HERV n=43 Spain; OPRM1 n=28 Belgium; vlncRNA n=44 Berlin).

## Scrape Registry

PubMed E-utilities API only — no external URLs scraped. Registry updated (see bottom of `registry/scrape-registry.md`).
