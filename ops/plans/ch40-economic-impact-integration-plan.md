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
| 2026-07-26 | 3 | 12 environments added to ch40-economic-impact.typ (5 achievements, 2 speculations, 2 open-questions, 2 limitations, 1 synthesis). Registry: 12 new entries under "2026-07-26h: Economic Impact." Standing epistemic per-claim: #1 ✓ / #2 ✓ / #3 N/A / #4 ✓ / #5 N/A / #6 N/A. |
| 2026-07-26 | 3a | Build: PASS (fixed Typst escaping — dollar signs → USD, quotes → unicode escapes, registry dollar signs → USD). Fixed pre-existing ch45 Typst escaping blocker. |
| 2026-07-26 | 3b | Safety gate: 12 environments gated, 12 passed, 0 warnings, 0 blocked. Drug items N/A (socio-economic chapter). Severity applicability stated in all environments. Gate documented at `tmp/safety-gate-economic-impact.md`. |
| 2026-07-26 | 3.5 | Consequence verification: 12 environments verified, all have *Consequence:* fields, 12 accepted as-is. No banned phrases. |
| 2026-07-26 | 4 | Brainstorm: SKIPPED — socio-economic chapter; all content is evidence-driven descriptive economics. Categories 3–9 (drug/supplement/intervention) N/A. |
| 2026-07-26 | 4a | Subtree `subtrees/economic-impact.md` written: 12 nodes (all Phase 3 environments). Root index updated. All statuses ✅ done. |
| 2026-07-26 | 5 | Tiered integration: SKIPPED — no brainstorm ideas to triage. All 12 environments are Phase 3 literature-direct integrations. ch30 tiers: N/A (no mechanistic content). |
| 2026-07-26 | 5d | Cascade tracing: N/A — no biochemical cascade. |
| 2026-07-26 | 5c | Differential analysis: N/A — no medication. |
| 2026-07-26 | 5b | Intermediate build: DEFERRED to Phase 8. ch30 content N/A — no new cascade/import directives. |
| 2026-07-26 | 5a | Falsifiability: 10 environments audited (2 limitations excluded per N/A). 2 fully falsifiable, 8 weakly, 0 structurally unfalsifiable. Citation keys: 15 verified, all present in bib. Internal cross-refs: all resolve. |
| 2026-07-26 | 5z | Glossary: 13 new entries added (HTA, DALY, ROI, DMT, FROM-16, EQ-5D, QALY, HTA Agency, DLA, PIP, GDP, Cost-of-illness study, Markov model). 12 country/currency codes filtered as false positives. |
| 2026-07-26 | 6 | Retro adaptation: 2 matches examined (ch02:103, ch39:90), 2 adapted (cross-ref additions), 0 contradicted, 0 ambiguous, 0 deferred. Zero certainty bumps. |
| 2026-07-26 | 7 | Cross-hypothesis compatibility: zero mechanism overlap — no reinforcement/conflict pairs with biomedical registry entries. Zero certainty adjustments. |
| 2026-07-26 | 8 | Build: PASS (after fixing pre-existing untracked `global-perspectives.bib`). Intermediate: Phase 3a PASS, Phase 5b deferred. |
| 2026-07-26 | 9 | Quality: net cert change 0; 2 reinforcement/0 contradiction; 2 fully + 8 weakly falsifiable; ~3,500 words / 12 env; clinical relevance LOW. Quality flags: NONE (no BLOAT, no WEAK-EVIDENCE, no CLINICAL-RISK, no G-UNSUSTAINED-CERTAINTY). Written to `tmp/synthesis-economic-impact-2026-07-26.md`. |
| 2026-07-26 | 10 | Cross-chapter coherence: 4 chapters audited (ch40, ch39, ch02, ch43), 0 inconsistencies, 0 fixes. All cross-refs resolve. Terminology consistent (same cost figures, same employment rates). |
| 2026-07-26 | 10a | Synthesis: `@syn:economic-impact-model` already present in ch40 (written in Phase 3). No additional synthesis needed. |
| 2026-07-26 | 10b | Framing propagation: no propagation needed — synthesis is downstream economic quantification, not pathophysiological. |
| 2026-07-26 | 11 | Review-convergence (lightweight): 4 rounds, converged. 1 consistency fix (ch39 employment rate 20–41% → 16.6–27%) + 3 completeness fixes (missing certainty in lim:no-roi, lim:no-cea, syn:economic-impact-model). |
| 2026-07-26 | 12 | Changelog: entry added under Version 12. |
| 2026-07-26 | 13 | Commit: `6dcc5c91` — 10 files, 1,164 additions. Excluded: unrelated hormesis-ldn cycle files. Shared entries verified present in HEAD. |
