# Search Log: ADHD Nrf2 Pathway Measurement & Adult-Onset ADHD Consensus

**Slug:** `adhd-nrf2-adultonset-update`
**Date:** 2026-08-19
**Method:** PubMed E-utilities API (esearch/efetch/esummary) + PMC; verified on 2026-08-19.

## Queries

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|
| 1 | PubMed | Nrf2 AND ADHD | ~30 | 12 | 5 | 2026-08-19 |
| 2 | PubMed | NFE2L2 AND ADHD | ~10 | 6 | 1 | 2026-08-19 |
| 3 | PubMed | NQO1 AND ADHD | ~8 | 4 | 0 | 2026-08-19 |
| 4 | PubMed | (Nrf2\|NFE2L2\|HO-1\|heme oxygenase\|NQO1) AND attention deficit AND oxidative | ~25 | 10 | 3 | 2026-08-19 |
| 5 | PubMed | Nrf2 AND ADHD AND (blood\|serum\|plasma\|PBMC) | ~8 | 4 | 1 | 2026-08-19 |
| 6 | PubMed | sulforaphane AND attention deficit | ~6 | 3 | 1 | 2026-08-19 |
| 7 | PubMed | mitochondrial haplogroup AND attention deficit | 3 | 3 | 3 | 2026-08-19 |
| 8 | PubMed | "late-onset ADHD" | ~60 | 8 | 3 | 2026-08-19 |
| 9 | PubMed | adult-onset ADHD reanalysis / Agnew-Blais / Sibley / late-onset reconsidered | ~15 | 6 | 3 | 2026-08-19 |
| 10 | PubMed | theanine methylphenidate / theanine caffeine ADHD | 4 | 4 | 2 | 2026-08-19 |
| 11 | PubMed | theanine caffeine ADHD replication | ~6 | 3 | 0 | 2026-08-19 |

## Inclusion Criteria
- Measures Nrf2/NQO1/HO-1/SIRT-1 in ADHD patients (Stream A), OR
- Addresses adult/late-onset ADHD debate status (Stream B), OR
- Mitochondrial haplogroup × ADHD association (Stream C), OR
- Theanine-caffeine × methylphenidate head-to-head in ADHD (Stream D)
- Peer-reviewed; preprints only if recent + relevant
- 2020–2026 focus; earlier landmark (Moffitt 2015, Chang 2020) included as anchors

## Exclusion Criteria
- Animal/in vitro models for Stream A patient-measurement (excluded from the direct-claim check but logged)
- Reviews/theory that only propose Nrf2 involvement without measuring it (excluded from the direct-claim check)
- Reviews mentioning ADHD in passing (autism/other-condition reviews)

## Flow
- Total hits: ~180
- After deduplication: ~140
- After title/abstract screen: ~55
- After full-text review: ~22
- Final included (verified, integrated): 11 primary + 4 anchor (Chang2020, BillingRoss2016, Giannoulis2024, Moffitt2015)

## Search Terms by Database
- PubMed: `Nrf2 AND ADHD`, `NFE2L2 AND ADHD`, `NQO1 AND ADHD`, `(Nrf2|NFE2L2|HO-1|NQO1) AND attention deficit AND oxidative`, `Nrf2 AND ADHD AND blood`, `sulforaphane AND attention deficit`, `mitochondrial haplogroup AND attention deficit`, `"late-onset ADHD"`, `theanine methylphenidate`, `theanine caffeine ADHD`
- PMC: confirmed Gurbuzer2026nrf2adhd (PMC13099689), Sibley2018 (PMC5814300), Chang2020haploADHD (PMC7608630)

## Key exclusions with reasons
- Riglin 2022 (PMID 35034501) — late-onset ADHD symptoms in young adulthood; NOT used (misattributed by initial subagent as "Agnew-Blais"; correct first author is Riglin; superseded by Asherson 2019 review)
- Mokhtar 2024, Zang 2025, Ding 2025, Carreón-Trujillo 2023, Abu-Elfotuh — animal/in vitro Nrf2-ADHD; no patient measurement (Stream A direct-claim unaffected)
- Ghannadi 2025 sulforaphane RCT — measured symptoms only, not Nrf2 biomarkers (kept as context)
- Kim 2026, Ren 2026, Wu 2026, Yoneda 2020, Han 2024 — theanine in irrelevant contexts
- Siafis 2022, Ladak 2021, Bhandari 2020 — reviews mentioning Nrf2 in NDDs without ADHD measurement
