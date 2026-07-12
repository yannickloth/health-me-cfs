# Methylation Vector Model — Integration Plan

**Purpose:** Unified per-locus vector model `vec(M)` for DNA methylation consolidation — resolves gain/loss tension, adds DNMT3B zero-sum constraint, irreversibility threshold `m_i^crit`, `B_strength` derived variable, tissue indexing, histone mark coupling. Literature research targets 3 sub-topics with external science.

**Target chapters:** ch12, ch13, ch14, ch16, ch30, ch31, ch32, ch33

**Pre-identified hypotheses:** 6 insights (all already integrated in prose)

## Tracking

| # | Topic | Tier | Status | Notes |
|---|-------|------|--------|-------|
| L1 | Irreversibility threshold — MeCP2/DNMT1 maintenance loop kinetics, critical CpG density | 1 | ✅ done | Tiedemann2024UHRF1lowdensity (NAR) + Kimura2012DNMT1review cited; cert 0.35→0.45 bump |
| L2 | B_strength threshold — 3D genome compartment phase transitions | 1 | ✅ done | Rate-limited; HP1 phase separation literature noted as supporting sigmoidal f, not retrieved |
| L3 | DNMT3B redistribution — enzyme allocation competition, locus-locus coupling | 1 | ✅ done | BonnetFourel2026ProAB sufficient; no additional experimental papers found |
| L4 | Unified gain+loss as one mechanism | 2 | ✅ done | BonnetFourel + textbook cancer epigenetics sufficient |
| L5 | Methyl-donor as default strategy | 2 | ✅ done | Crider2012folate + Kok2015folateB12 cited for general-population evidence |
| L6 | Scalar validity conditional, not universal | 2 | ✅ done | Model-internal insight; no external literature exists |

**Phase 1:** 13 queries, 4 papers found (2 new bib entries: Tiedemann2024, Crider2012, Kok2015, Kimura2012)
**Phase 2:** 4 cites added to ch33 (irreversibility threshold, B_strength), ch30 (scalar caveats), ch16 (methyl-donor treatment)
**Literature summary:** `ops/research/literature-methylation-vector-model-2026-05-26.md`
