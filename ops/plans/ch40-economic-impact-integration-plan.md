# ch40 Economic Impact Integration Plan

**Purpose:** Fully develop the ME/CFS economic impact chapter — cost-of-illness, direct/indirect costs, employment consequences, disability systems costs, caregiver economic burden, research funding ROI, and cross-disease economic comparators. Currently scaffolding-only (abstract + placeholder line).

**Domain:** Socio-economic / health economics — not biomedical. Phases that assume biochemical pathways (5d cascade tracing, 5c medication differential analysis) are N/A. Phase 3b safety gate is partially N/A (drug-related items skipped; severity applicability and consequence fields still apply).

**Topic slug:** `economic-impact`

**Target chapters:**
- `src/main/typst/mecfs/part4-research/ch40-economic-impact/ch40-economic-impact.typ` (primary — full development)
- `src/main/typst/mecfs/part1-clinical/ch02-history-of-mecfs/ch02-history-of-mecfs.typ` (existing economic cost mention, ~line 103)
- `src/main/typst/mecfs/part4-research/ch39-healthcare-systems-policy/ch39-healthcare-systems-policy.typ` (disability/employment content — cross-ref)
- `src/main/typst/mecfs/appendices/appendix-h-annotated-bibliography.typ` (new annotated entries)
- `bib/` (topic-appropriate bib file — likely `bib/general.bib` or economics-specific)

**Pre-identified economic topics from chapter abstract:**
1. Direct costs (medical visits, tests, medications, alternative treatments)
2. Indirect costs (lost earnings, reduced work hours, early workforce exit)
3. Caregiver economic burden
4. Lifetime cost estimates per patient
5. Cost-effectiveness of proper diagnosis vs diagnostic odyssey cycling
6. Economic case for increased research funding (ROI analysis)
7. Occupational consequences (>75% unemployment rate, workplace accommodations, disability systems)

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| — | (table populated after Phase 4 brainstorm) | — | — | ⬜ pending | — |

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| (empty — populated by Phases 6–7) |

## Active Caps (set by Phase 2 — decision: PROCEED)

- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none
- Domain note: socio-economic/health economics — no biochemical content. Phase 5d (cascade tracing), Phase 5c (medication differential), and ch30 content are N/A. Phase 3b drug-related safety gate items are N/A; severity applicability and consequence fields remain required.

## Notes

- Existing economic content: ch01 mentions $17–24B annual US cost; ch39 has disability/employment discussion; appendix H has several economic-relevant annotated entries (Podell2020, Bowden2026, etc.)
- Cross-disease comparators: MS, rheumatoid arthritis, lupus all have cost-of-illness literature for benchmarking
- Evidence types: cost-of-illness studies (COI), systematic reviews, government reports (CDC, NICE, IOM), employment surveys, disability claims data
- Phase 3b: drug-related items N/A; severity applicability and consequence fields still required
- Phase 5d: N/A (no biochemical cascade)
- Phase 5c: N/A (no medication)
- ch30: N/A (no mechanistic cascade)
- Bib file: likely `bib/general.bib` — may need to check if an economics-specific bib file exists
- Registry: economic/health-services entries go in Part 4 section of hypothesis-registry

## Updates

| Date | Phase | Update |
|------|-------|--------|
| 2026-07-26 | 0 | Plan created, validated mechanically |
| 2026-07-26 | 1 | 20 papers found (9 new + 11 pre-existing). New bib keys (VERIFIED): Zhao2023AustralianBurden, Close2020AustralianEconomic, Mirin2020ResearchFunding, Cochrane2021CostEffectiveness, Brittain2021FamilyImpact, Fatt2019InvisibleBurden, Wan2024HealthEconomicsTrends, Hsieh2020RAburden, Simoens2022MSBurden. Search log: `ops/research/search-log-economic-impact-2026-07-26.md`. Annotated bib updated. |
| 2026-07-26 | 2 | Decision: PROCEED. 12 papers ≥ 0.40 discounted certainty, 8 ≥ 0.60. Evidence type: descriptive/observational (cost-of-illness, surveys, administrative data). Clinical relevance: LOW (health economics, not treatment). No internal contradictions. Cohort overlap: IOM2015 + Clayton2015IOMsummary share same evidence base — treated as one source. Standing epistemic checklist: #1 ✓ / #2 ✓ / #3 N/A / #4 ✓ / #5 N/A / #6 N/A. Synthesis at `tmp/synthesis-economic-impact-2026-07-26.md`. |
