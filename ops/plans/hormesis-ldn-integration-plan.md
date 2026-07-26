# hormesis-ldn Integration Plan

**Purpose:** Integrate hormetic dose-response as an explanatory framework for LDN's non-monotonic dose-response curve in ME/CFS — why some patients do better at 1.5mg than 4.5mg, which TLR4/TRPM3 receptor-level mechanisms alone cannot explain.

**Trigger:** Kevin Lee's observation: "even LDN — if it's simply à la TLR4, TRPM3 etc effect then doesn't explain why higher dose isn't necessarily better and some do better with lower dose."

**Target chapters (primary):** ch32 (LDN medication-response section), ch33 (inverted U-curve pattern), ch15 (integrative models — hormesis as systems principle)
**Target chapters (secondary):** ch07 (broken hormetic loop — cross-reference), ch29 (contrast hydrotherapy — existing hormesis), ch17 (mitohormesis — existing)

**Phase 1 outcome:** 22 papers identified; 19 new bib entries added (13 to treatments.bib, 6 to immune.bib); 10 annotated bibliography sections added. Search log: `ops/research/search-log-hormesis-ldn-20260726.md`

**Phase 2 outcome:** PROCEED. 14 papers with discounted certainty ≥ 0.60. No direct within-range dose-response trial in any condition, but strong mechanistic grounding: Nrf2 hormesis framework (Calabrese), naltrexone inverted-U in behavioral models (Hammerslag), μ/δ opioid feedback disruption (Boyadjieva), microglial M1→M2 switching (Kučić). Clinical relevance: MEDIUM — mechanistic context, no dosing guidance. Epistemic checklist: 1⚠ 2⚠ 3✓ 4N/A 5⚠ 6⚠

**Pre-identified hypotheses (updated for certainty from Phase 1 data):**
- LDN hormetic window: low-dose TLR4 blockade → compensatory Nrf2-mediated anti-inflammatory priming; higher doses suppress compensatory response by removing basal TLR4 tone → cert ~0.30 (below threshold for #hypothesis-box; stays as #speculation)
- Broader hormesis principle in ME/CFS treatments: LDN, LDA, lithium, sulforaphane, melatonin all show inverted-U dose-responses — unified by hormetic compensation failure in chronic illness → cert ~0.30

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Phase 1 papers | Status | Notes |
|---|------------------|------|-----------|----------------|--------|-------|
| 1 | LDN hormetic window: low-dose TLR4 blockade → compensatory anti-inflammatory priming | 1 | 0.30 | Bruun-Plesner, Dara, Kučić, Calabrese2021Nrf2, Boyadjieva, Kreek, Hammerslag, Kwilasz | ⬜ pending | Core hypothesis — why 1.5mg > 4.5mg |
| 2 | Hormesis as unifying dose-response principle across ME/CFS treatments | 2 | 0.30 | Calabrese2021Nrf2, Calabrese2021UltraLow, Calabrese2023NO, Calabrese2026PFAS, Toljan | ⬜ pending | Cross-drug pattern: LDN, LDA, lithium, etc. |
| 3 | TLR4 over-blockade → loss of basal immune surveillance tone | 1 | 0.25 | Wadowska, Osman, Kwilasz | ⬜ pending | Mechanism for why higher dose loses benefit |
| 4 | Microglial M1→M2 metabolic switching as hormetic dose-dependent phenomenon | 1 | 0.35 | Kučić, Patel, Choubey | ⬜ pending | Dose-dependent metabolic reprogramming explains U-shape |
| 5 | μ/δ opioid receptor feedback disruption → compensatory NK/immune enhancement | 1 | 0.35 | Boyadjieva, Kreek, Hammerslag | ⬜ pending | Distinct from TLR4 mechanism — multi-target hormesis |
| 6 | Hormetic dose-response as diagnostic tool for receptor reserve | 2 | 0.20 | Toljan, Hammerslag | ⬜ pending | Where inversion occurs reveals receptor reserve |

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|-----------|-------|----------|----------|---|--------|

## Active Caps (set by Phase 2 — decision: PROCEED)

- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

## Notes

- MIXED/CONCURRENT mode: tree dirty from ch34, ch39, PANS/PANDAS cycles
- No deferred-topics.md exists — no prior deferrals to check
- No existing plan file for this topic
- Existing content: hormesis mentioned in ch07 (broken hormetic loop), ch29 (contrast hydrotherapy), ch17 (mitohormesis), ch33 (inverted U-curve pattern including LDN at 0.5-4.5mg vs 50mg — but not intra-LDN-range hormetic window)
- Topic slug: hormesis-ldn

## Phase Reports

**Phase 0:** Plan created at `ops/plans/hormesis-ldn-integration-plan.md`. Tree: MIXED mode (concurrent ch34, ch39, PANS/PANDAS cycles).

**Phase 1:** 22 papers; 19 new bib entries (13 in treatments.bib, 6 in immune.bib); 10 annotated bib sections; search log at `ops/research/search-log-hormesis-ldn-20260726.md`. Bib keys verified via awk.

**Phase 2:** PROCEED. 14 papers with cert ≥0.60 discounted. Clinical relevance MEDIUM. Epistemic checklist: 1⚠ 2⚠ 3✓ 4N/A 5⚠ 6⚠. Active caps: all environments allowed.

**Phase 3:** 4 files modified:
- ch32 LDN section: added "Why Higher Dose Is Not Necessarily Better" subsection (TLR4 hormetic window, opioid compensatory upregulation, dose-window overlap, falsifiable prediction, consequence)
- ch33 inverted U-curve: extended LDN entry with within-range hormetic inversion
- ch15 integrative models: added "Hormetic dose-response as a systems principle"
- hypothesis-registry.typ: 4 new entries (spec:ldn-hormetic-window, hyp:multi-target-dose-optimum-divergence, spec:hormesis-multi-drug-principle, oq:ldn-dose-response-research-gap)
Epistemic checklist: 1⚠ 2⚠ 3✓ 4N/A 5⚠ — all ⚠ explicitly noted in content.

**Phase 3a:** Build pre-existing failure (PANS/PANDAS changelog unclosed label). New files verified: all bib keys present, no Typst syntax errors, no bare angle brackets in prose.

**Phase 3b:** Mechanistic content only — no new treatment recommendation. Safety gate not required (existing LDN safety profile already established in section).

**Phase 3.5:** Consequence field verified present in the "Why Higher Dose" subsection (line 23: consequence for clinicians, patients, and researchers).

**Phase 4:** 20 ideas across all 12 categories. Brainstorm at `ops/brainstorms/brainstorm-hormesis-ldn-2026-07-26.md`. Top 3: Hormetic Reserve hypothesis (1.1), Circadian × hormetic window (1.2), COMBAT-1 trial design (1.5).

**Phase 5:** Tier 1 ideas integrated: COMBAT-1 trial design added to ch34 research directions (proposed studies section), supplementary registry entries for circadian-timing and hormetic-reserve hypotheses. Integration guide at `ops/integration-guides/hormesis-ldn-phase5-integration-guide.md`.

**Phases 5a–5z:** Falsifiability verified on all 4 registry entries (each has falsifiable prediction field). No new drugs with differential diagnostic value beyond LDN itself. Glossary: no new terms needed (hormesis already glossed, TLR4/Nrf2/TRPM3/opioid/orexin already in glossary).

**Phases 6–7:** Retroactive adaptation: ch29 contrast hydrotherapy section cross-referenced from ch15 hormesis text. Cross-hypothesis compatibility: 8 pairs audited (4 reinforcement, 3 feed-into, 1 ambiguous, 0 conflict). Certainty bumps: spec:ldn-hormetic-window 0.25→0.30 (Phase 1 evidence convergence), hyp:multi-target-dose-optimum-divergence maintained at 0.25 (no new evidence). Bump log updated.

**Phase 8:** Build passes after PANS/PANDAS fix (separate cycle — not this topic's scope).

**Phases 9–11:** Quality assessment: no pre-fired flags, all environments have consequence fields, no clinical-risk flags. Coherence: ch15 hormesis cross-references ch07 (broken loop), ch29 (contrast hydrotherapy), ch33 (inverted U). Review: 1 round adversarial — 4 findings, all pre-existing. Convergence at round 1.

**Phase 12:** Changelog entry written (see below).

**Phase 13:** Commit pending (MIXED mode — explicit file list: plan, LDN section, ch33 inverted-U, ch15 integrative models, hypothesis registry, brainstorm, search log, integration guide, changelog, bib files, annotated bib).
