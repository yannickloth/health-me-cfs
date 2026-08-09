# Integration Plan: Dementia Neuroinflammation (Kuring 2026)**Purpose:** Evaluate whether a systematic review/meta-analysis of inflammatory markers in
dementia (Kuring et al. 2026, testing the "inflammatory-mediated neurodegeneration"
hypothesis: mental illness → inflammation → CNS pathology) warrants integration as
cross-disease / indirect evidence for ME/CFS neuroinflammation models.

**Primary paper:** Kuring JK, Mathias JL, Ward L, Tachas G. Inflammatory markers associated
with dementia: a systematic review and meta-analysis. *J Psychiatr Res* 197 (2026) 26–40.
DOI: 10.1016/j.jpsychires.2026.02.044.

**Target chapters (provisional):**
- `ch09-neurological` (neuroinflammation)
- `ch08-immune-dysfunction` (`sec-04 cytokines-and-inflammatory-mediators`)
- `ch19-causal-hierarchy` (trigger→amplifier reasoning; mental-stress-mediated inflammation)
- `ch14d` / `ch13` (cross-disease parallels)
- `ch30` cascade section (sec-04 neuroinflammatory, if cascade-worthy)

**Phase 0 note — MIXED tree:** Working tree is MIXED at cycle start (unrelated ch24/ch28/ch32
medication content present). No shared-branch WIP commits; checkpoint via scratch pointers
only; rollback = `git checkout <ref> -- <file>` (NEVER reset/rebase/amend); all phases and
Phase 13 commit scoped by explicit file lists, NOT `git diff`.

## Pre-identified hypotheses

| Hyp | Description | Preliminary cert |
|-----|-------------|------------------|
| H-1 | Peripheral inflammatory-marker profiles (IL-17A, IL-1α, IL-10, G-CSF, GM-CSF, IL-3 ↑ in AD) provide a cross-disease precedent that chronic low-grade inflammation is dissociable from comorbid psychiatric comorbidity — parallels ME/CFS "inflammation independent of psych comorbidity" claim | — |
| H-2 | Inflammatory-mediated neurodegeneration cascade (mental stress → neuroinflammation → CNS degeneration) is a cross-disease template for ME/CFS trigger-to-amplifier reasoning (mental/physiological stress → neuroinflammation → CNS energy pathology) | — |

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

**Phase 2 decision rationale:** PROCEED — 3/3 papers discounted certainty ≥0.40 (Kuring2026 0.64,
Kuring2023 0.60, Strawbridge 0.70). The DEFER override was considered and rejected: indirect pathway
evidence is strong (the inflammatory-mediated neurodegeneration template intersects documented ME/CFS
sickness-behavior and neuroinflammation models), so deferring would be wrong. Clinical relevance:
MEDIUM (cross-disease mechanistic context for causal-hierarchy reasoning; not a treatment topic).
Standing epistemic checklist: #1–#6 all ✓ (see Phase 2 report below).

## Tracking table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1 | Core paper evidence synthesis | — | 0.64 disc | ✅ done | Phase 2: PROCEED. Synthesis at tmp/synthesis-dementia-inflammation-2026.md; Active Caps set |
| 2 | Bidirectional mental-illness–inflammation template | 2 | 0.45 | ✅ done | Phase 3: ch14d @spec:bidirectional-mood-inflammation-template; registry entry |
| 3 | Comorbidity-masking caution (IL-6/TNF-α null) | 2 | 0.45 | ✅ done | Phase 3: ch08 @lim:dementia-comorbidity-masking |
| 4 | ch19 chronicity cross-disease precedent | — | 0.45 | ✅ done | Phase 3: ch19 chronicity criterion sentence |
| B-1.1 | Bidirectional mood–inflammation loop | 2 | 0.45 | ✅ done | brainstorm → ch14d (anchor, Phase 3) |
| B-1.2 | Comorbidity-masking inflates IL-6/TNF-α | 2 | 0.45 | ✅ done | brainstorm → ch08 (anchor, Phase 3) |
| B-1.3 | Th17/myeloid-axis shared-signal | 2 | 0.30 | ✅ done | brainstorm → ch14d @spec:th17-myeloid-shared-signal; registry entry; anti-Th17 probe folded into consequence |
| B-2.1 | Comorbidity-screened ME/CFS cytokine meta | 2 | n/a | ⏭️ tree-only | proposal — research direction, no inline text (BLOAT control) |
| B-2.2 | Longitudinal mental-symptom/cytokine study | 2 | n/a | ⏭️ tree-only | proposal — covered by falsifiable predictions in envs |
| B-3.1 | Anti-Th17/IL-17 research probe | 2 | 0.15 | ✅ done | folded into B-1.3 consequence (research-stage only, no ME/CFS data) |
| B-5.1 | Stress-reduction dampens mood–inflammation loop | — | 0.20 | ⏭️ covered-by-existing | dedup: pacing/stress content already exists |
| B-6.1 | Comorbidity-audit clinical tool | 2 | n/a | ⏭️ tree-only | proposal — low value, no inline text |
| B-7.1 | Bidirectional mood–inflammation coupling node | 2 | n/a | ⏭️ tree-only | proposal — math model, covered implicitly |
| B-8.1 | Dementia ↔ ME/CFS inflammatory-template bridge | 2 | 0.45 | ✅ done | brainstorm → ch19/ch14d (anchor) |
| B-10.1 | Inflammation may be epiphenomenal | crit | 0.60 | ✅ done | limitation (critical) inline |
| B-10.2 | Causality may reverse even in dementia | crit | n/a | ✅ done | open-question (critical) inline |
| B-11.1 | Null: inflammation has no role | crit | n/a | ✅ done | limitation (critical) inline |
| B-12.1 | Same-group provenance / cross-sectional limits | crit | n/a | ✅ done | limitation (critical) inline |
| B-12.2 | Diagnostic-era / marker heterogeneity | crit | n/a | ✅ done | limitation (critical) inline |

ch30 footprint decision: **Citation cross-ref only** (cross-disease comparative template; correlational for ME/CFS; specific markers don't match ME/CFS profile → no standalone cascade with drug interception). No ch30 files; cross-refs live in ch14d environment. No sec-04/sec-09/sec-12/sec-13 changes. Phase 5d skipped (not a mechanistic cascade hypothesis ≥0.30 with specifiable biochemical steps + drug intercepts).

## Phase 3 / 3a / 3b / 3.5 status
- Phase 3: 3 environments added (ch14d speculation, ch08 limitation, ch19 sentence) + 1 registry entry. Files: ch14d-cross-disease.typ, ch08 subsec-04-pro-inflammatory-cytokines.typ, ch19-causal-hierarchy.typ, hypothesis-registry.typ.
- Phase 3a build: PASS (nix build, exit 0). Built without git add — MIXED/CONCURRENT tree; tracked files build from working tree.
- Phase 3b safety gate: 3 environments, ALL non-treatment (mechanistic/methodological) → bypass applies; only item 2 (severity applicability) required; all state severity coverage accordingly. 0 blocked.
- Phase 3.5: all new environments have `*Consequence:*`. PASS.

## Phase 4 / 4a / 5 status
- Phase 4: brainstorm written inline (opus agent unavailable) — `ops/brainstorms/brainstorm-dementia-inflammation-2026.md`, 15 ideas across categories 1–12.
- Phase 4a: subtree `ops/plans/hypotheses-trees/subtrees/dementia-inflammation.md` (15 nodes); root index updated.
- Phase 5: dedup done. B-1.3 (Th17/myeloid shared-signal) NEW → integrated as `#speculation` in ch14d (reassessed cert 0.30). Proposals B-2.1/6.1/7.1 kept as tree/proposal-only (no inline text, BLOAT control). B-3.1 anti-Th17 folded into B-1.3 consequence (research-stage only). B-5.1 covered-by-existing pacing. Critical 10.x/11.x/12.x consolidated into ch14d critique block. 2nd registry entry added (B-1.3).
- Phase 5d (pathway-to-drug): SKIPPED (ch30 footprint = citation-only; no mechanistic cascade with ME/CFS drug interception).
- Phase 5c (medication differential): N/A (not a medication topic).
- Phase 5b build: PASS (exit 0).
- Phase 5a (falsifiability): PASS inline (all speculations have `*Falsifiable prediction:*`; limitations n/a). 
- Phase 5z (glossary): 4 entries added (GM-CSF, IL-17A, IL-17F, inflammaging) to src/main/resources/glossary.json; others already present.



## Phase 8 / 9 status
- Phase 8 build: PASS (nix build PDF, exit 0). Web build (.#web): TIMED OUT at 30 min — pre-existing heavy Quarto/Java derivation; glossary JSON validated well-formed, PDF passes; noted as environment limitation not content error.
- Phase 9 quality: net certainty 0; R:C = 3:0; 2 new falsifiable predictions; ~120 lines gross (mostly bib); tiers lean; quality flags NONE.

## Phase 10 / 10a / 10b status
- Phase 10 (coherence): 7 chapters audited, 0 inconsistencies, 0 fixes. Audit at tmp/coherence-audit-dementia-inflammation-2026.md.
- Phase 10a (synthesis): `@syn:dementia-inflammation-template` added to ch14d, condensing 3 environments; cross-refs the 3 speculations/limitation. Build PASS.
- Phase 10b (framing): NO propagation needed — synthesis is methodological/cross-disease reinforcement; does not add a new trigger-capable mechanism, amplifier, genetic claim, diagnostic bifurcation, or actionable treatment strategy. Relevant framing already in-place (ch19 chronicity, ch08 comorbidity caution).

## Phase 11 status
- Tier: **Lightweight** (≤10 new environments, non-treatment, small cross-disease volume; multi-chapter but proportionate to content). Focused adversarial self-review + typst-xref check (opus persona agents unavailable → inline).
- Results: 0 CRITICAL, 0 HIGH findings. LOW notes: (1) acceptable redundancy between ch08 limitation and ch14d Th17/myeloid (cross-chapter reinforcement); (2) web build unverifiable (environment).
- Status: CONVERGED (zero CRITICAL/HIGH). SLOW-CONVERGENCE flag: not fired (fast convergence).

## Phase 12 / 13 status
- Phase 12: changelog updated — Version 7.3 entry in `shared/changelog-tspo-pet-section.typ` (references @Kuring2026InflammatoryDementia, @Kuring2023InflammatoryMood, @Strawbridge2019CFSInflammatory; clinical relevance MEDIUM; quality note none).
- Phase 13: commit (below). Final build PASS (exit 0).


## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| @spec:ch15-neurodegeneration-risk | 6 | 0.35 | 0.35 | 0 | No bump — Kuring evidence considered for +0.05 (incoming 0.64) but same-group provenance (Kuring 2026+2023 same research group) reduces independence below the "different lab" guard; conservative decision keeps certainty stable. Citations/evidence added instead. |

## Phase 6 / 7 status
- Phase 6: 4 matches examined, 3 adapted (all Reinforcements — citation/cross-ref additions; 0 certainty bumps by conservative choice). Files: ch08 TNF-α (added @Strawbridge2019CFSInflammatory), ch18 neurodegeneration-risk (added independent inflammation-driven route + cross-ref @spec:bidirectional-mood-inflammation-template). Synonym map: tmp/synonym-map-dementia-inflammation-2026.md.
- Phase 7: cross-hypothesis compatibility inline (below).

## Phase 7 compatibility
Pairs audited (5): bidirectional-template(0.45)↔neuroinflammation-cascade-generator(0.35) = feed-into/complementary-direction → **unresolved tension flagged** (cert diff 0.10, framed as bidirectional loop in ch14d); bidirectional-template→ch15-neurodegeneration-risk(0.35) = reinforcement (cross-ref added); th17-myeloid↔neuroinflammation-cascade = reclassified independent→weak-feed (shared Th17/neuroinflammation theme); th17-myeloid↔il2-pathway = independent; bidirectional↔adhd-mecfs-same-root = independent. Certainty adjustments: 0 bumps, 0 reductions (all speculative <0.50 guards, cert diffs ≤0.10). Standing epistemic checklist: no violations.

## Notes
- Standalone user-supplied topic; not queued by a parent cycle.
- Primary relevance is cross-disease / indirect (dementia ≠ ME/CFS); expect population-relevance
  discount to lower raw certainties. The inflammatory-mediated neurodegeneration template is the
  transferable concept, not dementia itself.
- Bib target: `bib/neuroinflammation.bib`; PDF filed at `Literature/reviews/Kuring2026_dementia_inflammation_meta.pdf`.
- Related plans: `inflammation-registry-integration-plan.md` (check for overlap).
