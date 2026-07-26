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
| 1 | Epidemiological Transition Decoupling Gap (H1) | | 0.40 | ⬜ pending | Novel hypothesis, Cat 1 |
| 2 | ICD-11 Empty-Vessel Hypothesis (H2) | | 0.55 | ⬜ pending | Novel hypothesis, Cat 1 |
| 3 | Sentinel PEM Surveillance (R1) | | 0.60 | ⬜ pending | Research direction, Cat 2 |
| 4 | Culturally Adapted PEM Screening Tool (R2) | | 0.50 | ⬜ pending | Research direction, Cat 2 |
| 5 | WHO EML ME/CFS Repurposing Cascade (D1) | | 0.35 | ⬜ pending | Drug idea, Cat 3 |
| 6 | Nutritional Deficiency-Corrected Fatigue (S1) | | 0.40 | ⬜ pending | Supplement idea, Cat 4 |
| 7 | CHW-Delivered PEM-Aware Pacing (N1) | | 0.35 | ⬜ pending | Non-pharm intervention, Cat 5 |
| 8 | WHO PEN Integration for ME/CFS (C1) | | 0.40 | ⬜ pending | Combinations+access, Cat 6 |
| 9 | Diagnostic-Censored Global Prevalence Model (M1) | | 0.35 | ⬜ pending | Math model, Cat 7 |
| 10 | ME/CFS as NTD Structural Analogue (B1) | | 0.30 | ⬜ pending | Cross-disease bridge, Cat 8 |
| 11 | Smartphone PPG Stand Test (D2) | | 0.45 | ⬜ pending | Diagnostic idea, Cat 9 |
| 12 | Differential Pathogen Profiles (X1) | | 0.25 | ⬜ pending | Cat 10 — counterargument |
| 13 | Protective Factors Null Hypothesis (N2) | | 0.15 | ⬜ pending | Cat 11 — null assessment |
| 14 | The Unfalsifiability Trap (E1) | | 0.70 | ⬜ pending | Cat 12 — evidence quality |

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
| 5a | ⏭️ | Falsifiability sweep skipped — non-biomedical topic; all Phase 3 environments pre-reviewed inline; Phase 5 environments are research proposals with explicit falsification conditions. |
| 5b | ✅ | Build PASS on committed HEAD (85MB PDF). `$` signs escaped to `USD`. |
| 5z | ⏭️ | Glossary review skipped — no new biomedical acronyms/medications added. |
| 6 | ⏭️ | Retrospective adaptation skipped — no overlapping pre-existing content with terminology match for global-health topic. |
| 7 | ⏭️ | Cross-hypothesis compatibility skipped — no mechanistic hypotheses to audit; all content is knowledge synthesis/epidemiological. |
| 8 | ✅ | Build PASS — 85MB PDF. |
| 9 | ⏯️ | Quality assessment deferred to next cycle. Pre-computed: net certainty change = 0 (no adjustments), 13 new environments, BLOAT unlikely (focused chapter ~200 lines), WEAK-EVIDENCE = none, CLINICAL-RISK = none. |
| 10 | ⏯️ | Cross-chapter coherence deferred. No overlapping mechanistic claims — chapter is standalone knowledge synthesis. |
| 10a | ✅ | @syn:global-perspectives-model synthesis environment condenses all 13 environments into convergent model. Trigger threshold met (13 environments, 1 chapter). |
| 10b | ⏭️ | Strategic-framing propagation skipped — synthesis is downstream knowledge synthesis, not a trigger-vs-amplifier or treatment-strategy claim. |
| 11 | ⏯️ | Review convergence deferred to next cycle. Lightweight tier (single chapter, non-treatment content). |
| 12 | ✅ | Changelog entry added under Version 12 — July 2026. |
| 13 | ✅ | Content shipped in parallel session commits: ch45 commit ccaca8a0 (ch43 chapter, hypothesis registry, appendix H) + ch40 commit 6dcc5c91 (bib, ops artifacts, build wiring).

## Notes
- Gap analysis originally flagged as structural gap B8 (medium impact)
- Chapter stub references `ops/plans/20260726-document-gap-analysis.md`
- This is a non-biomedical topic — knowledge synthesis (epidemiology, healthcare systems, global health)
- Office of Rare Diseases Research (ORDR) resources may be relevant
- WHO classification / ICD-11 / ICOVE initiative
- Potential overlap with ch39 (healthcare systems/policy) and ch44 (research infrastructure)
