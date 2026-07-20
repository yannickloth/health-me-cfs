# Integration Plan: Maladie de Verneuil (Hidradenitis Suppurativa)

**Topic slug:** maladie-de-verneuil
**Purpose:** Evaluate and integrate the evidence linking hidradenitis suppurativa (a chronic autoinflammatory skin disease) to ME/CFS via the NLRP3 inflammasome pathway.
**Parent topic:** root (standalone invocation)
**Date:** 2026-07-20

## Target Chapters

- Chapter 6 (or appropriate pathophysiology chapter) — NLRP3 as shared pathway
- Chapter 13 — integrative models / cross-disease bridges
- Appendix H — annotated bibliography

## Pre-identified Hypotheses

| # | Hypothesis | Preliminary certainty | Notes |
|---|------------|----------------------|-------|
| 1 | HS is an epidemiological comorbidity of ME/CFS | 0.70 | Prens 2022, single large study, single direct signal |
| 2 | NLRP3/IL-1β is a shared pathway between HS inflammation and ME/CFS fatigue | 0.40 (inferred) | Zero direct studies; convergent indirect evidence from both sides |

## Active Caps (set by Phase 2 — decision: PARTIAL)

- Environments allowed: speculation / open-question / limitation ONLY (PARTIAL)
- #hypothesis-box / #fhypothesis: FORBIDDEN even if idea cert ≥0.45 or Phase 7 bump crosses 0.45 (PARTIAL)
- Brainstorm categories (Phase 4): 1–2 + 10–12 ONLY (PARTIAL — skip 3–9)
- Certainty bumps (Phases 6–7): capped: no bump may cross 0.45 (PARTIAL)
- Phase 9 flags pre-fired: WEAK-EVIDENCE (PARTIAL)

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1 | HS–ME/CFS epidemiological comorbidity (OR 1.72) — documented | — | 0.70 | ✅ done | Integrated in ch14d opening paragraph + evidence quality caveat (Prens CI, self-report, selection bias) |
| 2 | NLRP3/IL-1β as shared HS–ME/CFS pathway | — | 0.40 | ✅ done | spec:hs-nlrp3-mechanistic-bridge (cert 0.35); strengthened with Kilgour partial falsification + mouse model chronic PEM caveat |
| 3 | HS flare prodrome as model for cytokine→fatigue latency | — | 0.40 | ✅ done | spec:hs-prodrome-pem-latency (cert 0.30) |
| 4 | Kinesiophobia overlap with ME/CFS activity avoidance | — | 0.40 | ✅ done | spec:hs-kinesiophobia-shared-phenotype (cert 0.35) |
| 5 | Autoinflammatory disease × ME/CFS as an unstudied axis | — | 0.30 | ✅ done | lim:autoinflammatory-category-absent (cert 0.70) |
| 6 | Biologic therapy for HS as a natural experiment for fatigue reduction | — | 0.35 | ✅ done | oq:hs-biologics-fatigue (strengthened with no-validated-instrument concern) |

## Phase Reports

| Phase | Date | Summary |
|-------|------|---------|
| 1 | 2026-07-20 | 15 papers found; 15 bib entries added to `bib/immune.bib` (`research_stream=maladie-de-verneuil`); annotated bib updated; search log at `ops/research/search-log-maladie-de-verneuil-2026-07-20.md` |
| 2 | 2026-07-20 | Decision: PARTIAL. 9 papers ≥0.60; 1 direct (Prens 2022, OR 1.72); 14 indirect. Only 1 paper directly on HS × ME/CFS. NLRP3 indirect pathway substantial but untested in humans. Clinical relevance: LOW. |
| 3 | 2026-07-20 | 8 environments added to ch14d (3 speculations, 1 limitation, 2 open-questions, 1 new limitation from brainstorm, plus enhanced caveats); 4 registry entries added. Files: ch14d-cross-disease.typ, hypothesis-registry.typ. |
| 3.5 | 2026-07-20 | 8 environments verified; 2 missing Consequence fields added to open-questions; 6 existing accepted as-is. |
| 4 | 2026-07-20 | 15 ideas generated (3 novel hypotheses, 3 research directions, 3 reasons NOT relevant, 2 null hypothesis, 4 evidence quality). Brainstorm at `ops/brainstorms/brainstorm-maladie-de-verneuil-2026-07-20.md`. |
| 4a | 2026-07-20 | Subtree `subtrees/maladie-de-verneuil.md` written with 15 nodes; root index updated. |
| 5 | 2026-07-20 | 0 dedup hits. Critical categories 10-12 integrated as caveats/enhancements: Prens 2022 evidence quality (12.1), selection bias (12.2), no validated fatigue instrument (12.3 → oq:hs-biologics-fatigue), NLRP3 mouse model ≠ chronic PEM (12.4 → spec:hs-nlrp3-mechanistic-bridge), Type 2 vs Type 1 distinction (10.1), Kilgour partial falsification (10.3), conflating harms both populations (11.2 → new lim:hs-type2-not-mecfs-pem). T1 novel hypotheses (1.1, 1.2, 1.3) and proposals (2.1, 2.2, 2.3) → tree-only (Tier 3) due to PARTIAL constraint. 0 queued as child topics. |

## Notes

- MIXED mode — HSAT2 files in working tree. No shared-branch WIP commits. Rollback via `git checkout <ref> -- <file>`. All phases scoped by explicit file lists.
- Standalone invocation (not recursive)
- Zero direct PEM studies in HS — this is the single biggest evidence gap
- Zero papers on autoinflammatory disease × ME/CFS — a shockingly absent intersection that this integration should flag as an open research question
