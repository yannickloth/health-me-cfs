# Integration Plan: Global and Low-Resource Perspectives on ME/CFS

**Purpose:** Develop ch43 (Global and Low-Resource Perspectives on ME/CFS) — currently a ~10-line stub flagged "content pending" in part4-research. This chapter addresses diagnostic access without specialized testing, cultural variation in symptom expression, post-infectious fatigue burden in high-infectious-disease-burden settings, ICD classification and disability recognition outside high-income countries, traditional medicine approaches, and research priorities for low/middle-income settings.

**Target chapters:** ch43-global-perspectives (sole target; new standalone chapter)

**Origin:** Document Gap Analysis (`ops/plans/20260726-document-gap-analysis.md`, item B8)

**Tree state at start:** CLEAN (no pending changes)

## Pre-identified Hypotheses
- None pre-identified — Phase 1 research will survey the literature first.

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1 | Epidemiological Transition Decoupling Gap (H1) | Tier 3 | 0.40 | ↩️ tree-only | Novel hypothesis, Cat 1 — deferred to future cycle |
| 2 | ICD-11 Empty-Vessel Hypothesis (H2) | Tier 2 | 0.40 | ✅ done | Integrated as @spec:icd11-empty-vessel (cert 0.40) |
| 3 | Sentinel PEM Surveillance (R1) | Tier 2 | 0.40 | ✅ done | Integrated as @spec:sentinel-pem-surveillance (cert 0.40) |
| 4 | Culturally Adapted PEM Screening Tool (R2) | Tier 2 | 0.35 | ✅ done | Integrated as @oq:culturally-adapted-pem-tool |
| 5 | WHO EML ME/CFS Repurposing Cascade (D1) | Tier 3 | 0.35 | ↩️ tree-only | Drug idea, Cat 3 — deferred to future cycle |
| 6 | Nutritional Deficiency-Corrected Fatigue (S1) | Tier 3 | 0.40 | ↩️ tree-only | Supplement idea, Cat 4 — deferred to future cycle |
| 7 | CHW-Delivered PEM-Aware Pacing (N1) | Tier 3 | 0.35 | ↩️ tree-only | Non-pharm intervention, Cat 5 — deferred to future cycle |
| 8 | WHO PEN Integration for ME/CFS (C1) | Tier 3 | 0.40 | ↩️ tree-only | Combinations+access, Cat 6 — deferred to future cycle |
| 9 | Diagnostic-Censored Global Prevalence Model (M1) | Tier 3 | 0.35 | ↩️ tree-only | Math model, Cat 7 — deferred to future cycle |
| 10 | ME/CFS as NTD Structural Analogue (B1) | Tier 3 | 0.30 | ↩️ tree-only | Cross-disease bridge, Cat 8 — deferred to future cycle |
| 11 | Smartphone PPG Stand Test (D2) | Tier 3 | 0.45 | ↩️ tree-only | Diagnostic idea, Cat 9 — deferred to future cycle |
| 12 | Differential Pathogen Profiles (X1) | critical | 0.25 | ✅ done | Cat 10 — integrated as @oq:falsifying-hidden-burden-thesis |
| 13 | Protective Factors Null Hypothesis (N2) | critical | 0.15 | ✅ done | Cat 11 — integrated as @oq:falsifying-hidden-burden-thesis |
| 14 | The Unfalsifiability Trap (E1) | critical | 0.70 | ✅ done | Cat 12 — integrated as @lim:unfalsifiability-trap |

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| (populated by Phases 6 and 7) | | | | | |

## Phase Updates

| Phase | Status | Details |
|-------|--------|---------|
| 1 | ✅ | 15 papers found; bib `bib/global-perspectives.bib` (new, wire added to both build files); annotated bib updated; search log at `ops/research/search-log-global-perspectives-mecfs-2026-07-26.md`; literature summary at `ops/research/literature-global-perspectives-mecfs-2026-07-26.md`. Bib keys: Arron2024neglectedDisease, Conde2026dengueFatigue, Duvignaud2018chikungunyaFatigue, Vester2026burdenOfDisease, Sarker2024bangladeshRCTprotocol, Starcevic1999neurasthenia, Ware1992cultureSomatic, Lee1998neurastheniaChina, NationalAcademies2024researchAgenda, Podell2020documentingDisability, Simani2021iranCFS, Miller2026epidemicsShadow, Wang2014tcmCFS, Kong2023tcmMindBody, Wang2017acupunctureCFS |
| 2 | ✅ | Decision: PROCEED (≥2 papers cert ≥0.40, not uniformly null). Clinical relevance: MEDIUM. Contradictions: none. Standing epistemic checklist: [#1 ✓] / [#2 N/A] / [#3 ✓] / [#4 ✓] / [#5 N/A] / [#6 N/A] |
| 3 | ✅ | 13 environments added to ch43-global-perspectives.typ: 5 achievements, 3 speculations, 3 open-questions, 1 limitation, 1 synthesis. Hypothesis registry updated with 13 entries. Standing epistemic checklist verified per-claim: [#1 ✓] / [#2 ✓] / [#3 ✓] / [#4 ✓] / [#5 ✓] / [#6 N/A]. |
| 3a | ✅ | Build PASS — 85MB PDF. Fixed 4 pre-existing Typst-breaking issues: #WeAreNotWaiting in annotated bib, $18--51B escape, $17-24 Billion escape in annotated bib headers, @ch45 non-existent label. |
| 3b | ✅ | Non-treatment topic — only item 2 (severity applicability) applies. 13 environments, all passed. 0 blocked, 0 warnings. |
| 3.5 | ✅ | 13 environments verified, 13 consequence fields present, 0 missing. All accepted as-is. |
| 4 | ✅ | Brainstorm at `ops/brainstorms/brainstorm-global-perspectives-mecfs-2026-07-26.md`. 14 ideas, all 12 categories covered. |
| 4a | ✅ | Subtree `ops/plans/hypotheses-trees/subtrees/global-perspectives-mecfs.md` written with 14 nodes. Root index updated. |
| 5 | ✅ | 6 brainstorm ideas integrated: 1 limitation (@lim:unfalsifiability-trap), 4 open-questions/speculations (@oq:falsifying-hidden-burden-thesis, @spec:icd11-empty-vessel, @spec:sentinel-pem-surveillance, @oq:culturally-adapted-pem-tool), 1 synthesis update. 8 ideas tree-only (Tier 3 — research/policy proposals for future cycles). |
| 5a | ✅ | Falsifiability sweep: 11 falsifiable predictions added inline to all 5 achievements + 6 speculations via falsifiability-auditor agent + main-session edits. |
| 5b | ✅ | Build PASS — 85MB PDF. `$` signs escaped to `USD`. |
| 5z | ✅ | Glossary review: 10 entries added to `web/glossary.json` (LMIC, HIC, TCM, NTD, DSQ, AYUSH, IACI, MCID, CBC, TB). |
| 6 | ✅ | Retrospective adaptation: zero substantive overlaps with pre-existing content. Chapter fills gap identified by ch39 ("no Global South data at all"). Lexical hits only. No adaptation warranted. |
| 7 | ✅ | Cross-hypothesis compatibility: zero mechanism pairs. All 19 registry entries are epidemiological/health-systems/research-proposal statements with no biochemical mechanism terms. Skip per Phase 7 guard. |
| 8 | ✅ | Build PASS — 85MB PDF. |
| 9 | ✅ | Quality assessment: **A-** (no flags fired, BLOAT not triggered, WEAK-EVIDENCE not triggered, CLINICAL-RISK not triggered, G-UNSUSTAINED-CERTAINTY not triggered). Net certainty change = 0. 11 falsifiable predictions. 18 environments across 218 lines. |
| 10 | ✅ | Cross-chapter coherence: zero inconsistencies. Ch43 fills gap identified by ch39. Consistent with ch01 diagnostic-disparity and geographic findings (Lim2020). |
| 10a | ✅ | @syn:global-perspectives-model synthesis environment condenses all 18 environments into convergent model. |
| 10b | ✅ | Strategic-framing propagation: downstream knowledge-synthesis finding — no trigger-capable mechanism, root cause candidate, or treatment-strategy implication. Per decision matrix, "Downstream consequence (non-actionable)" → no framing update needed. Valid outcome, not a failure. |
| 11 | ✅ | Review convergence: **CONVERGED.** Phase 11a (review-convergence): R3 (1 fix: duplicate ferritin in falsifiable prediction). Phase 11c (review-typst): R3 (17 fixes: 16 UK→US spelling + 1 \~ escape). 4 minor flags deferred (author needs additional bib entries for 4 background statements). SLOW-CONVERGENCE not triggered (≤3 rounds both passes). |
| 12 | ✅ | Changelog entry added under Version 12 — July 2026. |
| 13 | ✅ | Content shipped in parallel session commits + our commits 4a4e475d (changelog+plan) + db598906 (falsifiability+glossary+review fixes). Tree status: ✅ done.

## Notes
- Gap analysis originally flagged as structural gap B8 (medium impact)
- Chapter stub references `ops/plans/20260726-document-gap-analysis.md`
- This is a non-biomedical topic — knowledge synthesis (epidemiology, healthcare systems, global health)
- Office of Rare Diseases Research (ORDR) resources may be relevant
- WHO classification / ICD-11 / ICOVE initiative
- Potential overlap with ch39 (healthcare systems/policy) and ch44 (research infrastructure)
