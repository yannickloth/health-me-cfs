# Lithium Low-Dose Clinical Case — Integration Plan

**Purpose:** Integrate Sikorav (2026) clinical case report of ultra-low-dose lithium citrate (2mg/day) for cyclic depressive episodes with sensory hypersensitivity, evaluating relevance to ME/CFS mood, sensory, and fatigue domains.

**Date:** 2026-06-11
**Slug:** lithium-low-dose-clinical
**Status:** ✅ done
**Parent topic:** root (adjacent to lithium-ip3 stub in hypotheses-trees)

## Target Chapters

| Chapter | Content type | Rationale |
|---------|-------------|-----------|
| ch08 (neurological) | Extend `spec:low-dose-lithium` with case report, ultralow-dose observation | Existing spec covers 40-45mg/day; 2mg/day clinical signal is novel |
| Part 3 (treatment) | clinical-finding or speculation on ultralow-dose thresholds | Treatment application |
| ch05 (clinical features) | Sensory hypersensitivity pattern cross-ref | Sensorium symptoms overlap with ME/CFS sensory overload |
| Appendix H | Annotated bib entry | Case report source |

## Pre-Identified Hypotheses

| # | Hypothesis | Preliminary certainty | Status |
|---|-----------|----------------------|--------|
| 1 | Ultra-low-dose lithium (1-2mg elemental/day) has antidepressant/antisuicidal effects distinct from standard GSK3β/IMPase mechanisms | 0.25 | ⬜ pending |
| 2 | Lithium at microdoses may act as an essential trace element correcting subclinical deficiency rather than as a pharmacological agent | 0.30 | ⬜ pending |
| 3 | Sensory hypersensitivity in cyclic mood disorders and ME/CFS may share TRPM3/PIP2/calcium signaling pathology | 0.20 | ⬜ pending |
| 4 | The case's trigger profile (sleep deprivation, altitude change, seasonal Aug fatigue) overlaps with ME/CFS PEM triggers | 0.25 | ⬜ pending |

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|------------------|------|-----------|--------|-------|
| 1 | Ultra-low-dose lithium (2mg/day) clinical case report integration | 1 | 0.25 | ✅ done | spec:ultralow-dose-lithium-case (ch08), ~11 lines, adversarial-reviewed |
| 2 | Microdose lithium as trace element hypothesis | 1 | 0.30 | 🚫 excluded | Structurally unfalsifiable — removed per Phase 4a + adversarial review |
| 3 | Sensory hypersensitivity cross-condition bridge | 2 | 0.20 | ✅ done | Retained as PIP2/TRP mechanism context in spec:ultralow-dose-lithium-case |
| 4 | Trigger profile overlap (sleep, altitude, seasonal) | 2 | 0.25 | ✅ done | Noted in case features; no separate environment |
| 5 | Complete suicidal ideation resolution at 2mg/day | 1 | 0.25 | ✅ done | Core case finding; retained in shortened spec |
| 6 | MYO-inositol co-therapy relevance to ultralow-dose | 2 | 0.20 | ↩️ parked | Existing spec:inositol-lithium-cotherapy (ch25) covers mechanism; no change at microdose |
| 7 | CNS lithium deficiency as neurological micronutrient disorder | 1 | 0.30 | 🚫 excluded | Structurally unfalsifiable — removed per Phase 4a + adversarial review |
| 8 | Fluvoxamine + lithium ultralow-dose combo hypothesis | 3 | 0.15 | ↩️ parked | In brainstorm only; insufficient evidence for integration |
| 9 | Migraine aura + derealization as CNS calcium channelopathy marker | 3 | 0.20 | ↩️ parked | n=1 anecdote; no action warranted |
| 10 | Altitude-change-triggered depression links to HIF/oxygen sensing | 3 | 0.15 | ↩️ parked | Cross-ref hypoxia-altitude-hif1a plan — queued, not integrated |

## Notes

- Source is a single n=1 self-report by a psychiatrist — lowest evidence tier; all claims carry explicit uncertainty
- The 2mg/day dose is 5-20x lower than Long COVID trial dosing (10-15mg inactive, 40-45mg active)
- Prior lithium-ip3 brainstorm (2026-04-17) covers mechanistic Li/IMPase/PIP2/calcium — this plan covers clinical evidence
- Existing `spec:low-dose-lithium` (ch08) already covers Guttuso 2024 Long COVID trial; this case extends the dose-response curve downward
- Parent MS and T1D in family history are noted but not primary focus

## Phase 1 — Literature Research

| Metric | Value |
|--------|-------|
| Papers found | 19 (Sikorav 2026 + 18 supporting) |
| Added to references.bib | 18 new entries |
| Added to appendix-h-annotated-bibliography | 10 new entries |
| Integration guide | content-staging/literature-lithium-low-dose-clinical-2026-06-11.md |
| Scrape registry updated | No URLs scraped |

## Phase 2 — Content Integration

| Chapter | Environments added |
|---------|-------------------|
| ch08-neurological.typ | 1 new `#speculation` (`spec:ultralow-dose-lithium-case`); 1 extended (`spec:low-dose-lithium` bimodal dose-response) |
| ch14d-cross-disease.typ | 1 cite reinforcement (lithium water suicide) at line 1822 |
| ch20-urgent-action-severe.typ | 1 cross-ref added (ultralow case, subsequently removed per adversarial review) |
| Appendix H | 10 new annotated bib entries under `sec:bib-lithium-low-dose-clinical` |

## Phase 3 — Creative Brainstorm

| Metric | Value |
|--------|-------|
| Output file | content-staging/brainstorm-lithium-low-dose-clinical-2026-06-11.md |
| Ideas generated | 20 (T1: 7, T2: 7, T3: 10) |
| Categories | Novel hypotheses, research directions, drug/supplement, combinations, model extensions, cross-disease, diagnostics |

## Phase 3a — Hypothesis Tree

| Metric | Value |
|--------|-------|
| Subtree file | ops/plans/hypotheses-trees/subtrees/lithium-low-dose-clinical.md |
| Root index updated | Yes (entry added between lithium-ip3 and mcas-domain6) |
| Nodes written | 24 |

## Phase 4 — Integration

| Metric | Value |
|--------|-------|
| Ideas integrated inline | 4 (1.2 micronutrient, 1.3 nonlinear threshold, 1.4 sensory/PIP2, 1.7 bimodal — integrated, then reduced per adversarial review) |
| Ideas integrated as cross-ref | 1 (T-type calcium in ch14h) |
| Ideas parked as open-question | 20 (all brainstorm ideas, only core integrated; remaining queued) |
| Ideas queued for separate `/integrate-topic` | 2 (mast cell GPCR-PIP2 — immune auto-escalation; pro-resolving SPM — immune auto-escalation) |
| Ideas skipped (no relevance) | 0 |
| Gate A standalone escalations | None triggered |
| Gate B sub-research surfacing | None triggered |

## Phase 4a — Falsifiability Audit

| Metric | Value |
|--------|-------|
| Hypotheses audited | 9 (5 in spec:low-dose-lithium, 4 in spec:ultralow-dose-lithium-case) |
| Fully falsifiable | 8 |
| Weakly falsifiable (fixed) | 0 |
| Unfalsifiable (flagged/excluded) | 1 (deficiency framing — excluded from integrated content) |

## Phase 4b — Retrospective Adaptation

| Metric | Value |
|--------|-------|
| Matches examined | 3 (ch14d suicide risk, ch20 lithium protocol, ch24 medication warnings) |
| Adapted | 2 (ch14d: lithium water cite added; ch20: cross-ref added) |
| Reinforcement edits | 1 (ch14d suicide risk + lithium water meta-analyses) |
| Contradiction edits | 0 |
| Ambiguous edits | 1 (ch20 cross-ref — removed per adversarial review) |
| No action / deferred | 1 (ch24 medication warnings — unrelated mechanism) |
| Truncated / unexamined | 0 |

## Phase 4c — Cross-Hypothesis Compatibility

| Metric | Value |
|--------|-------|
| Pairs audited | 45 (5 new × 9 existing) |
| Reinforcement pairs | 4 |
| Feed-into pairs | 5 |
| Conflict pairs | 1 (unresolved tension: bimodal model vs existing IMPase=harmful framing, flagged) |
| Independent pairs | 35 |
| Certainty bumps applied | 0 (all new hypotheses <0.30; no incoming evidence ≥0.60) |
| Certainty reductions | 0 |
| Tensions flagged | 1 |
| Audit file | content-staging/compat-audit-lithium-low-dose-clinical-2026-06-11.md |

## Phase 5 — Build Verification

| Metric | Value |
|--------|-------|
| Build status | FAIL (pre-existing: untracked ch18-mechanism-treatment-map.typ excluded by Nix source filter) |
| ch08 syntax verified | PASS (single-file compilation clean) |
| Fix-verify iterations | 4 (Typst label syntax edge cases resolved) |

## Phase 6 — Review

| Pass | Rounds | Findings | Status |
|------|--------|----------|--------|
| 6a (review-convergence) | 2 | 8 fixed (6 Unicode→Typst math, 1 spelling, 1 hyphenation) | CONVERGED |
| 6b (review-adversarial) | 1 (6 personas) | 40 findings (15 critical, 21 major, 4 minor) — 5 critical fixed via content reduction/caveat insertion | CONVERGED (post-fix verification clean) |
| 6c (review-typst) | 1 | 1 fixed (stray `#cite()` in ch20) | CONVERGED |
| Gate C (review surfaces missing topic) | 0 topics surfaced | — | — |

## Phase 7 — Changelog

| Metric | Value |
|--------|-------|
| File updated | src/main/typst/mecfs/shared/changelog.typ |
| Entry format | Version 11, full integration summary with "Motivated by" line |
| Modified files listed | ch08, ch14d, ch20, Appendix H, references.bib, hypothesis registry |

## Phase 8 — Commit

| Metric | Value |
|--------|-------|
| Commits | 1 |
| Hash | b8654ff |
| Files committed | 8 (ch08, ch14d, refs.bib, annotated bib, changelog, plan, subtree, root index) |
| Files excluded | content-staging/* staging files (not committed per rules) |

## Queue (from Gates A/B/C)

| Topic | Source | One-line rationale |
|-------|--------|-------------------|
| Mast cell GPCR-PIP2 lithium axis | Phase 4 auto-escalation (immune) | Idea 2.6: Li dampens mast cell degranulation via IP3-mediated Ca²⁺ — distinct topic with its own literature base |
| Lithium as pro-resolving mediator (SPM) | Phase 4 auto-escalation (immune) | Idea 3.2: Li enhancement of resolvin/protectin/maresin biosynthesis — immune resolution biology |
