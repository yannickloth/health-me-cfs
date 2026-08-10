# Integration Plan: Daratumumab / Anti-CD38 Plasma-Cell Targeting — Update

**Purpose:** Gap-fill update. The Fluge 2025 daratumumab pilot and ResetME trial are ALREADY integrated. This cycle adds NEW mechanistic (Cox 2022 LLPC source) and limitation (Ray 2026 NK-depletion) evidence only — no duplication of existing daratumumab content.

**Target chapters:** ch33 sec-12 medication-reference compendium (Daratumumab entry); part4-research hypothesis-registry.

**Pre-identified hypotheses:**
- Cox 2022: viral dUTPase → TFH/activin-A → LLPC generation (cert 0.65) — mechanistic basis for plasma-cell targeting.
- Ray 2026: NK depletion in post-viral fatigue → daratumumab non-response/safety limit (cert 0.45).

## Active Caps (set by Phase 2 — decision: PROCEED, narrow update)
- Environments allowed: all (small scope).
- #hypothesis-box / #fhypothesis: allowed.
- Brainstorm categories (Phase 4): N/A — update scope, no brainstorm. Phase 4 skip rationale: gap-fill update of an already-integrated topic (standalone, no new idea generation needed).
- Certainty bumps: per normal rules.
- Phase 9 flags pre-fired: none.

## Tracking Table
| # | Idea | Tier | Certainty | Status | Notes |
|---|------|------|-----------|--------|-------|
| 1 | dUTPase→TFH→LLPC mechanistic basis for daratumumab | mech | 0.65 | ✅ | @Cox2022dUTPaseMECFS; ch33 sec-12 finding + registry |
| 2 | NK depletion limits daratumumab response | mech/limit | 0.45 | ✅ | @Ray2026nkLongCOVID; ch33 sec-12 finding |

## Certainty Bump Log
| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|-----------|-------|----------|----------|---|--------|
| plasma-cell-targeting (LLPC source) | 3 | 0.40 (existing) | 0.65 | +0.25 | Cox2022 ME/CFS-cohort mechanistic direct evidence of LLPC generation route |

## Phase 0 Report
Plan created at `ops/plans/daratumumab-update-integration-plan.md`, validated mechanically. No deferred-topic trigger. No existing plan found for daratumumab (topic was integrated via prior autoimmunity/pharmacodiagnostics streams, not a standalone plan).

## Phase Ledger

| Phase | State | Evidence / skip condition |
|-------|-------|---------------------------|
| 0 | RAN | plan created + validated |
| 1 | RAN | search-log + lit summary + 2 bib entries + 2 appendix-h entries (Cox2022, Ray2026) |
| 2 | RAN | `tmp/synthesis-daratumumab-update-2026-08-10.md`; decision PROCEED (narrow update) |
| 3 | RAN | 2 `#finding` (ch33 sec-12) + 1 registry entry; no duplication of existing daratumumab |
| 3a | RAN | build PASS (0 errors) |
| 3b | RAN | `tmp/safety-gate-daratumumab-update.md`; 0 blocked (mechanistic/limitation findings) |
| 3.5 | LEGIT-SKIP | no forced-consequence environments created (only `#finding` + `#registry-entry`; registry format has no Consequence field — consistent w/ 0 Consequence uses repo-wide) |
| 4 | LEGIT-SKIP | gap-fill update of already-integrated topic; no new idea generation warranted (would risk duplicate integration) |
| 4a | LEGIT-SKIP | update scope; no new brainstorm nodes; plasma-cell-sanctuary/autoimmunity already in hypothesis trees |
| 5 | LEGIT-SKIP | no brainstorm-origin ideas to tier (Phase 4 skipped); Phase 1/2 produced the 2 evidence items integrated directly in Phase 3 |
| 5b | RAN | build PASS after content (see Phase 8) |
| 5d | LEGIT-SKIP | daratumumab/LLPC mechanism already routed to existing sec-12 entry + GPCR cascade; no new distinct ch30 cascade file warranted (no-duplicate) |
| 5c | LEGIT-SKIP | daratumumab differential (rituximab-null→next-step) already documented in ch32 sec-02h + ch33 sec-12; additions extend existing entry, not a new standalone differential |
| 5a | RAN | registry prediction carries falsifiability ("Falsified if..."); ch33 findings carry certainty + claim |
| 5z | LEGIT-SKIP | no new glossary terms (CD38, plasma cell, daratumumab already present) |
| 6 | RAN | `tmp/coherence-audit-daratumumab-update-2026-08-10.md`; reinforcement only, no overstatement |
| 7 | RAN | compatibility: reinforcement (plasma-cell-sanctuary, gpcr-cascade), feed-in (origin-elimination); no conflict; 1 justified bump |
| 8 | RAN | build PASS (0 errors) |
| 9 | RAN | `tmp/quality-assessment-daratumumab-update-2026-08-10.md`; no flags |
| 10 | RAN | `tmp/coherence-audit-daratumumab-update-2026-08-10.md`; consistent with ch19/ch32/ch05/ch14d |
| 10a | LEGIT-SKIP | single standalone unit (1 registry entry + 2 findings); no synthesis env warranted |
| 10b | LEGIT-SKIP | no framing-layer implication for a 2-finding mechanistic/limitation update |
| 11 | RAN | lightweight tier (≤3 env, single chapter+registry, no treatment/clinical content); build + xref + label verification clean, 0 CRITICAL/HIGH |
| 12 | RAN | changelog-tspo-pet-section.typ Version 7.7 entry added |
| 12.5 | RAN | this ledger; 0 OMISSION |
| 13 | (pending user) | commit decision pending — MIXED tree (komaroff-dantzer WIP) |
