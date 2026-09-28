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

---

# Cycle 2 — Germany Cost Report (Risklayer × ME/CFS Research Foundation, April 2026 update)

**Trigger:** User-supplied topic: `https://mecfs-research.org/en/costreport-long-covid-and-mecfs/` (April 2026 update + May 2025 original).
**Source:** Risklayer GmbH × ME/CFS Research Foundation — "The rising cost of Long COVID and ME/CFS in Germany."
**Governed:** pipeline-governor (target topic slug `long-covid-mecfs-cost-report`).
**Scope:** Add the Germany prevalence + cost-of-illness + research-funding-gap data to the existing economic-impact chapter (ch41). This is a second cycle on the completed `economic-impact` plan — new evidence, not re-work of Cycle 1.

**Key data (from the report):**
- €318.8B combined LC+ME/CFS cost 2020–2025; €64.4B in 2025 alone = 1.44% of German GDP.
- Prevalence end-2025: 756,808 Long COVID + 656,951 ME/CFS (total >1.4M); ME/CFS cases rising, LC cases falling.
- ME/CFS recovery rate ~5%/year (very low).
- Federal research spending ~€40M/year vs €64.4B cost = 0.06%.
- "National Decade Against Post-infectious Diseases": €500M over 10 years (€50M/year).
- Funding split: 22% biomedical (€50M), 71% healthcare-services research (€157M).
- Model: Monte Carlo; corrected SARS-CoV-2 infection estimates (13–15M infections in 2025; 80–200× RKI official).

## Cycle 2 Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| — | (populated after Phase 1/2) | — | — | ⬜ pending | — |

## Cycle 2 Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| (empty — populated by Phases 6–7) |

## Cycle 2 Updates

| Date | Phase | Update |
|------|-------|--------|
| 2026-09-28 | 0 | Cycle 2 opened. Plan located (`ch40-economic-impact-integration-plan.md`), existing economic-impact chapter (ch41) confirmed fully developed from Cycle 1. Queue `gap-b05-economic-impact` → 🔵 in progress. |
| 2026-09-28 | 1 | 5 bib entries in `bib/general.bib` (Risklayer2026GermanyCost, Risklayer2025GermanyCost, Risklayer2025COVIDModelling, Gandjour2024GermanyMEcfsValue, Walter2022GermanyPCSCost). 5 annotated-bib entries (appendix-h). Search log `ops/research/search-log-long-covid-mecfs-cost-report-2026-09-28.md`. Scrape registry updated. 2025+2026 editions = ONE evidence source (flagged). |
| 2026-09-28 | 2 | Decision: **PROCEED**. 3 distinct sources ≥0.40 discounted (Risklayer 0.55, Gandjour 0.55, Walter 0.55). Evidence type: gray-literature modeled COI + 2 peer-reviewed partial complements. Clinical relevance: LOW (health economics; high policy/funding relevance). No contradictions. Standing epistemic: #1 ✓ / #2 N/A / #3 ⚠ (Monte Carlo model — "modeled, not measured" caveat) / #4 ✓ / #5 N/A / #6 N/A. Synthesis: `tmp/synthesis-long-covid-mecfs-cost-report-2026-09-28.md`. |
| 2026-09-28 | 3 | 2 environments added to ch41 (`ach:germany-cost-report`, `ach:germany-funding-gap`). Registry: 2 new entries under Economic Impact table. All cite VERIFIED bib keys (Risklayer2026GermanyCost, Risklayer2025GermanyCost, Risklayer2025COVIDModelling, Walter2022GermanyPCSCost, Gandjour2024GermanyMEcfsValue). Standing epistemic per-claim: #1 ✓ / #2 N/A / #3 ⚠ (modeled caveat inline) / #4 ✓ / #5 N/A / #6 N/A. |
| 2026-09-28 | 3a | Build: PASS (exit 0, zero error lines, zero unknown/unresolved refs). No new .typ files — modifications to tracked files only. |
| 2026-09-28 | 3b | Safety gate: non-treatment (economic) → full drug gate N/A; item 2 (severity) only. 2 environments gated, 2 passed, 0 warnings, 0 blocked. `tmp/safety-gate-long-covid-mecfs-cost-report.md`. |
| 2026-09-28 | 3.5 | Consequence verification: 2 environments verified, both have `*Consequence:*` fields, 0 missing, 0 banned phrases (Instruction F). |
| 2026-09-28 | 4 | Brainstorm (scientific-insight-generator): 17 ideas (cat 1: 3, cat 2: 4, cat 9: 2, cat 10: 4, cat 11: 2, cat 12: 2). `ops/brainstorms/brainstorm-long-covid-mecfs-cost-report-2026-09-28.md`. Categories 3–8 N/A (non-biomedical). |
| 2026-09-28 | 4a | Subtree `subtrees/economic-impact.md` updated: +3 integrated nodes (3.13, 3.14, 4.1) + 9 deferred nodes (4.2–4.9). Root index updated (21 nodes, 15 integrated). |
| 2026-09-28 | 5 | Triage: 1.1 → `#speculation` `spec:growing-steady-state` (cert 0.40). Critical categories 10–12 → integrated as caveat refinements into `ach:germany-cost-report` (load-bearing infection-correction + human-capital undervaluation). Research directions 2.1–2.4, 9.1–9.2, 1.2, 1.3 → deferred (Tier 3). ch30 tiers: N/A (non-mechanistic). |
| 2026-09-28 | 5d | LEGIT-SKIP: non-mechanistic topic (no biochemical cascade, no drug interception). |
| 2026-09-28 | 5c | LEGIT-SKIP: non-pharmacological topic (no medication). |
| 2026-09-28 | 5b | Build: PASS (exit 0, zero error lines). |
| 2026-09-28 | 5a | Falsifiability sweep (inline — `falsifiability-auditor.md` absent from `.opencode/agents/`): 1 new `#speculation` (`spec:growing-steady-state`) given explicit falsifiable prediction. 2 new achievements are not in falsifiability scope. Citation cross-check: 5/5 bib keys resolve (case-exact). |
| 2026-09-28 | 5z | Glossary: +2 entries (Monte Carlo simulation, Human capital). JSON valid. Filtered false positives: EUR (currency), GDP/QALY/PEM/Post-COVID/steady-state (already present). |
| 2026-09-28 | 6 | Retro adaptation: 3 reinforcements (ch41 summary + synthesis + spec:structural-neglect) + 1 cross-ref. 0 contradictions, 0 reductions, 0 bumps (incoming cert 0.55 < 0.60 floor). ch02 pointer + ch39 summary + stale `new-contents-economic-burden` stub → no action. Synonym map `tmp/synonym-map-long-covid-mecfs-cost-report.md`. |
| 2026-09-28 | 7 | Cross-hypothesis compatibility: zero mechanism overlap (socio-economic topic) — skip Steps 2–3. No certainty adjustments. `tmp/compat-audit-long-covid-mecfs-cost-report-2026-09-28.md`. |
| 2026-09-28 | 8 | Build: PASS (exit 0, zero error lines). |
| 2026-09-28 | 9 | Quality: net cert change 0; 3:0 reinforcement:contradiction; 1 new falsifiable prediction; ~+800 words / 3 new envs; clinical relevance LOW. Quality flags: **NONE**. Appended to `tmp/synthesis-long-covid-mecfs-cost-report-2026-09-28.md`. |
| 2026-09-28 | 10 | Cross-chapter coherence: 1 inconsistency found+fixed (Belgium KCE is needs-assessment, not COI → synthesis corrected to "three COI countries + Belgian needs assessment"). 0 remaining. `tmp/coherence-audit-long-covid-mecfs-cost-report-2026-09-28.md`. |
| 2026-09-28 | 10a | High-level synthesis: LEGIT-SKIP — existing `syn:economic-impact-model` already synthesizes the cross-national cost+funding argument; updated in Phase 6 to include Germany. No new synthesis box (would fragment the chapter's single synthesis). |
| 2026-09-28 | 10b | Framing propagation: LEGIT-SKIP — synthesis is downstream economic quantification (no trigger/amplifier/genetic-architecture/clinical-strategy implication). Abstract's "underfunding" claim already general; no Germany-specific figure needed at framing layers. |
| 2026-09-28 | 11 | Review convergence — **Lightweight tier** (single chapter, 3 new envs ≤3, non-treatment). Inline adversarial (6-persona) + xref passes scoped to changed regions (persona/auditor `.md` files absent from `.opencode/agents/`). 0 CRITICAL, 0 HIGH; figures verified (0.06% = 40M/64.4B ✓; 1.44% GDP consistent ✓); labels unique + resolve; build passes. Status: CONVERGED (1 round). |

## Cycle 2 — Phase 12 Record

- **Topic + decision:** `long-covid-mecfs-cost-report` — PROCEED.
- **Environments added (3):** `ach:germany-cost-report` (0.55), `ach:germany-funding-gap` (0.55), `spec:growing-steady-state` (0.40).
- **Chapters/files:** ch41-economic-impact (primary); hypothesis-registry (+3 rows); bib/general.bib (+5); appendix-h (+5); glossary (+2); subtree + root index; queued-topics; scrape-registry.
- **Key finding:** Germany combined LC+ME/CFS societal cost €318.8B (2020–25), €64.4B in 2025 = 1.44% GDP; federal research spending 0.06% of cost; confirms the cross-national burden-to-funding disparity first documented by Mirin 2020 for the U.S. Labeled "modeled, not measured" (gray-literature Monte Carlo).
- **Phase 9 flags:** NONE.
- **Clinical relevance:** LOW (health economics; high policy/funding relevance).
- **Driving source:** user-supplied URL (Risklayer × ME/CFS Research Foundation, April 2026 update).

## Cycle 2 — Phase Ledger (completion gate)

| Phase | State | Evidence |
|-------|-------|----------|
| W-Tree | RAN | CLEAN verified (post-parallel-commit) |
| 0 | RAN | plan located; Cycle 2 section + queue status update |
| 1 | RAN | 5 bib keys + search log + 5 annotated entries (all verified on disk) |
| 2 | RAN | PROCEED decision + `tmp/synthesis-long-covid-mecfs-cost-report-2026-09-28.md` |
| 3 | RAN | 2 achievements + registry rows |
| 3a | RAN | build PASS (exit 0, 0 errors) |
| 3b | RAN | `tmp/safety-gate-long-covid-mecfs-cost-report.md` (non-treatment → item 2 only) |
| 3.5 | RAN | consequence fields present (0 missing, 0 banned phrases) |
| 4 | RAN | `ops/brainstorms/brainstorm-long-covid-mecfs-cost-report-2026-09-28.md` (17 ideas) |
| 4a | RAN | subtree +3 integrated +9 deferred; root index updated |
| 5 | RAN | triage: 1 → `#speculation`; critical → caveat refinements; research dirs deferred |
| 5d | LEGIT-SKIP | non-mechanistic topic (no biochemical cascade) |
| 5c | LEGIT-SKIP | non-pharmacological topic (no medication) |
| 5b | RAN | build PASS |
| 5a | RAN (inline) | falsifiability applied (1 speculation has explicit falsifiable prediction); 5/5 bib keys resolve. NOTE: `falsifiability-auditor.md` absent from `.opencode/agents/` → run inline; scope was vacuous (0 hypothesis-box/prediction envs). |
| 5z | RAN | +2 glossary entries (Monte Carlo simulation, Human capital); JSON valid |
| 6 | RAN | 3 reinforcements + 1 cross-ref; 0 bumps (incoming 0.55 < 0.60 floor) |
| 7 | RAN | zero mechanism overlap (socio-economic) — skip Steps 2–3 |
| 8 | RAN | build PASS |
| 9 | RAN | quality flags NONE |
| 10 | RAN | 1 inconsistency found + fixed (Belgium needs-assessment vs COI) |
| 10a | LEGIT-SKIP | existing `syn:economic-impact-model` covers convergent theme (updated Phase 6) |
| 10b | LEGIT-SKIP | downstream economic; no framing-layer implication |
| 11 | RAN | lightweight review converged (0 CRITICAL/HIGH) |
| 12 | RAN | this record |
| 12.5 | RAN | this ledger |
| 13 | RAN | commit (see Phase 13 report) |

