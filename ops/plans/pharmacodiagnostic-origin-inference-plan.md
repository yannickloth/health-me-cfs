# Pharmacodiagnostic Origin Inference — Integration Plan

**Purpose:** Formalize how medication response patterns can constrain or rule out specific origin hypotheses (viral, autoimmune, genetic, metabolic, mechanical) for ME/CFS. The pharmacodiagnostic framework in ch32/ch33 already eliminates candidate *mechanisms* — but the paper needs an explicit section on what a given null response can and cannot conclude about disease *origin*. The core insight: null responses eliminate mechanisms at higher certainty than they eliminate origin hypotheses, because mechanisms are specific drug targets while origins are categories of causation that can manifest through untested pathways.

**Topic slug:** pharmacodiagnostic-origin-inference

**Target chapters:**
- ch32 — new sec-02h "Origin Hypothesis Elimination by Pharmacodiagnostics" (after existing generic frameworks, before per-drug entries)
- ch33 — cross-reference in sec-08 null matrix to origin-axis section; updates to sec-09 convergence patterns if needed

**Phase 1:** 11 papers found, 10 new bib keys in `diagnosis-assessment.bib`. Search log: `ops/research/search-log-pharmacodiagnostic-origin-inference-2026-07-28.md`. Bib keys verified against bib via grep.

**Phase 2 decision: PROCEED** (override from PARTIAL — philosophical papers' discounted cert artificially low due to population-weight table designed for empirical studies, not logical/framework papers). Synthesis at `tmp/synthesis-pharmacodiagnostic-origin-inference-2026-07-28.md`.

**Strongest evidence:** Fluge 2019 (disc cert 0.80) + Rekeland 2024 (0.70) establish rituximab null. Maziarz 2024 provides causal-pluralism framework constraining what null can conclude. DePretis 2019 provides Bayesian methodology. Genetic-vs-acquired discrimination returned zero papers — confirms novelty.

**Tracking table:**

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|------------------|------|-----------|--------|-------|
| 1 | Origin-axis pharmacodiagnostic inference framework | 1 | 0.35 | ✅ done | ch32 sec-02h |
| 2 | Viral-origin elimination logic (antiviral null) | 1 | 0.45 | ✅ done | Open-question with three-role taxonomy |
| 3 | Autoimmune-origin elimination logic (rituximab null) | 1 | 0.60 | ✅ done | Limitation with four surviving pathways |
| 4 | Genetic-origin unfalsifiability | 1 | 0.70 | ✅ done | Limitation — zero literature on genetic-vs-acquired drug-response discrimination |
| 5 | Pharmacodiagnostic triad (response + null + temporal trajectory) | 2 | 0.30 | ✅ done | Speculation — E-Synthesis Bayesian framework cited |

**Phase 3:** 6 environments across 1 new section + 3 files modified (ch32 main file, ch33 null matrix, ch33 Gerlier section label). Changelog entry added. Build: PASS

**Phase 13 notes:** Files to commit: ch32 sec-02h (new), ch32 main file (include added), ch33 null matrix (origin-axis ref added), ch33 Gerlier (section label added), changelog, diagnosis-assessment.bib, appendix-h, ops/plan, ops/research/

**Active Caps (Phase 2 — decision: PROCEED):**
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed if cert ≥ 0.45
- Brainstorm categories (Phase 4): SKIPPED (structural/aggregation integration)
- Certainty bumps: normal rules
- Phase 9 flags: none pre-fired

**Certainty bump log:**

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|-----------|-------|---------|---------|---|--------|
| Genetic-origin unfalsifiability | 7 (compatibility) | 0.70 | 0.75 | +0.05 | Registry's three-pronged genetic convergence independently establishes genetic layer as real and additive |
| Aripiprazole/dopamine origin-level (table) | 7 (compatibility) | 0.30 | 0.35 | +0.05 | Independent corroboration from ch33 sec-09 dopamine convergence node (cert 0.35) with identical 6-driver structure |
