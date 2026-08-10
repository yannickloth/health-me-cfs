# Integration Plan: Elevated Risk of New-Onset CFS/ME 4 Years After SARS-CoV-2

**Topic slug:** `hadidchi2025-cfs-me-4yrs-post-covid`
**Status:** ✅ done (committed 1e31bf39 + f134da42)
**Topic:** Hadidchi R (Duong TQ), 2025, J Transl Med, #10 2025-07-23. "Elevated risk of new-onset CFS/ME up to 4 years after SARS-CoV-2."
**Source:** Original / epidemiologic study (large-cohort post-SARS-CoV-2 follow-up).
**Date:** 2026-08-10
**Parent topic:** root — no brainstorm origin (Original gate). Standalone invocation.
**MIXED/CONCURRENT mode:** tree has unrelated changes (biofabrication-mughal cycle active uncommitted + shared-file edits). All git ops use explicit file lists; no `git add -A`; no shared-branch WIP commits; no `git reset`/rebase/--amend; rollback = `git checkout <ref> -- <file>`; commit scoped by explicit file list.

## Purpose

Evaluate whether this large-cohort epidemiology study demonstrates a sustained, 4-year elevated risk of new-onset ME/CFS after SARS-CoV-2 infection, quantify the magnitude (incidence, risk ratio), and integrate the finding into the paper's post-infectious/post-viral ME/CFS model (ch23 epidemiology, ch14d cross-disease, Part I clinical features).

## Target Chapters

- ch23 (epidemiology) — primary integration: post-COVID risk, incidence, OR/HR over 4-year horizon
- ch14d (Long COVID / post-viral cross-disease) — shared post-infectious ontology
- ch04 / ch02 (diagnostic criteria / history, post-infectious onset) — if onset framing relevant
- hypothesis registry — post-viral etiology hypothesis strengthening
- ch30 cascade — only if a ≥3-step drug-interceptable causal chain (unlikely for pure epidemiology → likely NOT; cite inline)

## Pre-identified Hypotheses (preliminary)

| Hypothesis | Prelim certainty | Notes |
|-----------|------------------|-------|
| SARS-CoV-2 infection raises new-onset ME/CFS risk that persists (up to 4 yrs) | 0.60 | Large cohort; ME/CFS-specific outcome; needs replication of magnitude |
| Risk is time-dependent (highest shortly after infection, persists but may decline) | 0.40 | Depends on study's temporal breakdown |

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1.1 | Post-acute (not acute) ferritin as iron-redox ME/CFS predictor | 1 | 0.40 | ✅ | @hyp:postcovid-postacute-iron-prediction + registry H/0.40 |
| 2.4 | Retrospective liver-function re-analysis | 1 | 0.55 | ✅ | @oq:postcovid-liver-function-stratifier |
| 10.1 | 4-yr persistence = diagnostic delay | critical | 0.40 | ✅ | @lim:postcovid-4yr-diagnostic-delay |
| 10.2 | Single-system generalizability | critical | 0.30 | ✅ | @lim:postcovid-single-system-generalizability |
| 11.2 | Acute-null → non-inflammatory trigger | critical | 0.30 | ✅ | @oq:postcovid-noninflammatory-trigger |
| 12.2 | Vaccination era-confound (cite w/ caveat) | critical | n/a | ✅ | @lim:postcovid-vaccination-era-confound |
| 1.2 | First-infection immunologic gating | 2 | 0.25 | ⏭️ | subtree-only (no chapter add) |
| 1.3 | Liver disease hepcidin-factory | 2 | 0.30 | ⏭️ | subtree-only (covered by 2.4 OQ) |
| 1.4 | Anxiety HPA vulnerability | 2 | 0.25 | ⏭️ | subtree-only |
| 2.1 | Prospective iron-trajectory cohort | 1 | 0.50 | ⏭️ | research direction; recorded in subtree |
| 2.2 | Re-infection cohort immune phenotyping | 2 | 0.35 | ⏭️ | subtree-only |
| 2.3 | Multi-site replication 4-yr horizon | 2 | 0.45 | ⏭️ | research direction; subtree-only |
| 8.1 | First-infection pattern conserved | 2 | 0.20 | ⏭️ | subtree-only |
| 8.2 | Convergent iron phenotype chronic stage | 2 | 0.30 | ⏭️ | subtree-only |
| 10.3 | Re-infection null = testing artefact | critical | 0.30 | ⏭️ | subtree-only (noted in 10.1/12 caveats) |
| 11.1 | COVID not uniquely potent trigger | critical | 0.15 | ⏭️ | subtree-only (rejected by evidence) |
| 12.1 | ICD underascertainment bias | critical | n/a | ⏭️ | subtree-only (covered by 10.1/10.2) |
| 12.3 | New-onset vs unmasked pre-existing | critical | n/a | ⏭️ | subtree-only (covered by 10.1) |
## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

## Active Caps — notes
PROCEED threshold met: all 8 papers ≥0.43 discounted (0/8 below 0.40). Hadidchi 0.75, RECOVER 0.78, Unger 0.78, Cornelissen 0.65, Vu 0.58, Tack 0.55, Poomkudy 0.45, Moldofsky 0.43. Clinical relevance HIGH. Contradiction: none fundamental (4-yr horizon = follow-up duration, not conflict). 4-yr horizon single-study → flag as awaits-replication.

## Phase Log

| Phase | Status | Detail |
|-------|--------|--------|
| 0 | 🔵 | Plan created. Standalone, Original-gate. MIXED/CONCURRENT mode. |
| 1 | ✅ | 8 papers (Hadidchi + 7 comparators). Bib in epidemiology.bib + Hadidchi in long-covid.bib (dual stream). Hadidchi 0.75, RECOVER 0.78, Unger 0.78, Cornelissen 0.65, Vu 0.58, Tack 0.55, Poomkudy 0.45, Moldofsky 0.43. All ≥0.40 (0/8 below). Search log + lit summary in ops/research/. Appendix H +8 annotations. Literature/ PDFs. |
| 2 | ✅ | PROCEED. 6 papers cert≥0.60, 8/8 ≥0.40, not uniformly null. Clinical relevance HIGH (prognosis/monitoring). Contradiction: none fundamental (4-yr horizon = follow-up duration). Caps: all allowed. |
| 3 | ✅ | Inline prose integration. Files: subsec-04-risk-factors.typ (+HR+ferritin-null), subsec-01-prevalence.typ (+sustained risk), ch14d-cross-disease.typ (+epidemiological grounding bullet), sec-01-onset-patterns.typ (+SARS bullet), hypothesis-registry.typ (+dated registry-entry H/0.75). No boxed envs (prose style). |
| 3a | ✅ | nix build PASS. |
| 3b | ✅ | Non-treatment (epidemiological). Items 2 (severity: unknown — stateed) ✅; items 1,3,4,5,6,7 N/A. 0 blocked, 0 warnings. Safety-gate in tmp/. |
| 3.5 | ✅ | No boxed environments added (prose + registry-entry). Registry follows standard named-field format; treatment/limitation fields present. |
| 4 | ✅ | scientific-insight-generator: 18 ideas / 18 subtree nodes, categories 1,2,8,10,11,12 (categories 3-9 empty — pure epidemiology). Strongest=1.1 (post-acute ferritin prediction, cert 0.40); most actionable=2.4 (liver-function re-analysis, cert 0.55). Gate C deferred: post-acute-ferritin-MECFS-prediction. Brainstorm: ops/brainstorms/brainstorm-hadidchi2025-cfs-me-4yrs-post-covid-2026-08-10.md |
| 4a | ✅ | Subtree created (18 nodes). Root index updated. Gate C topic added to queued-topics.md. |
| 5 | ✅ | Triage: dedup checked (core finding already in Phase 3 prose; no duplicate envs). Integrated in ch14d: #hypothesis hyp:postcovid-postacute-iron-prediction (1.1, cert 0.40); #limitation x3 (10.1 diagnostic-delay, 12.2 vaccination-era [mandatory], 10.2 single-system); #open-question x2 (2.4 liver-stratifier cert 0.55, 11.2 non-inflammatory-trigger cert 0.30). Tier 1 ideas 2.1/2.3 recorded as research directions (feasibility). Categories 3-9 empty (pure epidemiology). |
| 5c | ⏭️ | LEGIT-SKIP: no medication/drug discussed in this epidemiological topic. |
| 5d | ⏭️ | LEGIT-SKIP: no ≥3-step drug-interceptable causal chain (pure epidemiology → cited inline, no ch30 cascade). |
| 5b | ✅ | nix build PASS (after ch14d + registry edits; fixed ### heading→====, \$ escape). |
| 5a | ✅ | falsifiability-auditor: 1 hypothesis fully falsifiable, 3 limitations specific, 2 open-questions answerable, 0 unfalsifiable, 0 overclaiming. 1 finding (hyp:postcovid-postacute-iron-prediction missing from registry) → FIXED (registry entry added, cert 0.40). |
| 5z | ⏭️ | LEGIT-SKIP: no novel terminology introduced (epidemiological, all terms established). |
| 6 | ✅ | 5 matches examined, 5 adapted (4 reinforcement citations in ch01/ch06/ch14d + 1 feed-in as new post-acute-iron hypothesis). 0 certainty bumps (no pre-existing env directly replicated by exact mechanism; Hadidchi channeled into new hypothesis). 0 contradictions. Report + synonym map in tmp/. |
| 7 | ✅ | Cross-hyp compat: 0 conflicts. 2 reinforcement chains (Hadidchi→post-infectious; Hadidchi acute-null + post-acute-iron→iron-redox polarity + N1). 4 independent. 0 certainty bumps. Compat-audit in tmp/. |
| 8 | ✅ | nix build PASS (final verification). |
| 9 | ✅ | Metrics: net cert 0, reinf:contra 4:0, 2 falsifiable predictions, ~36 lines/~600 words, 6 envs. Flags: BLOAT NONE, WEAK-EVIDENCE NONE, CLINICAL-RISK NONE, G-UNSUSTAINED NONE. Quality appended to synthesis in tmp/. |
| 10 | ✅ | Cross-chapter coherence PASS: certainty/terminology consistent, all @refs resolve (build validates), narrative coherent. |
| 10a | ✅ | Synthesis added: syn:postinfectious-trigger-convergence (ch14d Cross-Document Synthesis). Integrates epidemiology (Hadidchi/RECOVER) + historical post-infectious + iron-redox temporal constraint. Fixed Katz2009EBVMECFSadolescent→Katz2009IMadolescentCFS (build error). |
| 10b | ✅ | No framing propagation needed — post-infectious trigger model already established; synthesis is quantitative strengthening, not a new trigger/amplifier or paradigm shift. Abstract/reading-guide/ch16 unchanged. |
| 11 | ✅ | Full-tier (multi-chapter, >3 envs). Adversarial R1: 0 CRITICAL, 3 HIGH, 6 MED, 5 LOW → fixed. R2: 0 CRITICAL, 1 HIGH (orphaned 4.93 in prevalence) → fixed (removed, no source anchor; reconciled RECOVER 2.8-fold). R3: 0 CRITICAL, 0 HIGH confirmed (all citations in bib, labels resolve ×1, all 5 envs have *Consequence:*, no stray tildes, no contradictions). Low/med house-style notes documented but non-blocking. xref/typst verified directly + nix build PASS. TRANSIENT concurrent-cycle build error (oq:tissue-isr-panel) resolved on clean rebuild — hibernation cycle's mid-edit, not mine. CONVERGED. |
| 12 | ✅ | Changelog Version 7.9 entry added to shared/changelog-tspo-pet-section.typ. |
| 12.5 | ✅ | Completion gate — full ledger RAN (below). No OMISSION phases; LEGIT-SKIP: 5c/5d/5z. |
| 13 | ✅ | Committed as 2 commits: 1e31bf39 content(hadidchi2025) + f134da42 docs(hadidchi2025). MIXED mode: registry/appendix/hypotheses-tree entries swept into hibernation commit e5b221e3 (verified intact in HEAD); foreign biofabrication files unstaged/excluded; queued-topics Gate C row deferred (left unstaged to avoid sweeping hibernation status edit). Post-commit tree build blocked by CONCURRENT biofabrication ch07 uncommitted edit (not mine). |

## Certainty Bump Log

(single source of truth for bump-rate enforcement — populate in Phases 6/7.)

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| (none this cycle) | 6/7 | — | — | 0 | Hadidchi is incidence/risk evidence, not a direct independent replication of an exact existing claim; channeled into new hypothesis rather than bumping shared registry content (MIXED-mode concurrency). Per-cycle cap respected (0 bumps). |
