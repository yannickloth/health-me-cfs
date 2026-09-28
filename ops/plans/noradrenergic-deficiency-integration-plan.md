# Integration Plan: Noradrenergic Deficiency in ME/CFS

**Topic slug:** noradrenergic-deficiency
**Date:** 2026-06-07
**Target chapters:** ch14h (neurological), ch05 (brain & cognition), ch14f (autonomic/neuroendocrine), ch08, ch16

## Purpose
Integrate Aregawi et al. 2026 (Brain Comms) — first CSF study demonstrating selective central noradrenergic (not dopaminergic) deficiency in PI-ME/CFS and PASC — plus supporting literature on adrenergic dysfunction, NE reuptake agents, and negative/null catecholamine findings.

## Pre-identified Hypotheses
| Hypothesis | Preliminary cert | Source |
|-----------|------------------|--------|
| Central noradrenergic deficit as upstream driver of PEM → sympathetic-sensory decoupling | 0.80 | Aregawi2026 |
| CSF NE Pathway (NE+DHPG+MHPG) as diagnostic biomarker | 0.70 | Aregawi2026 |
| NE reuptake inhibitors (atomoxetine, reboxetine) as therapeutic targets | 0.40 | extrapolated |
| α2 antagonists (yohimbine, idazoxan) as therapeutic targets | 0.30 | extrapolated |
| ATP-dependent vesicular NE deficiency explains selective NE/DA selectivity | 0.35 | inferred |
| Central-peripheral NE mismatch drives "wired but tired" | 0.50 | inferred |

## Tracking
| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1 | Selective CNS NE deficiency with preserved DA | 1 | 0.70 | 🔵 in progress | Core Aregawi2026 finding |
| 2 | ATP-dependent vesicular NE deficiency | 2 | 0.35 | 🔵 in progress | Mechanistic inference |
| 3 | Central-peripheral NE mismatch | 2 | 0.50 | 🔵 in progress | Synthesis across papers |
| 4 | NE-glymphatic coupling impairment | 1 | 0.50 | 🔵 in progress | NE vasomotion → glymphatic |
| 5 | Handgrip as non-invasive NE proxy | 2 | 0.60 | 🔵 in progress | Aregawi2026 correlation |
| 6 | LC dysfunction in ME/CFS | 2 | 0.40 | 🔵 in progress | Updated from ch08 |
| 7 | SNRIs/NRIs as PEM intervention | 3 | 0.35 | ⬜ pending | Duloxetine/milnacipran/atomoxetine |

## Notes
- Compat audit already done (2026-05-28, (not retained))
- This extends existing catecholamine work in ch08, ch16
- Links to brain-clearance-architecture (NE-vasomotion-glymphatic chain)
- Links to GPCR autoantibodies (β-adrenergic receptor autoantibodies)

---

## Cycle 2 (2026-09-28): Full Axis — medications / upstream causes / downstream consequences

**Scope decision (user):** prior work retained as-is; new cycle adds focused research on (a) all potential medications, (b) upstream causes, (c) downstream consequences.
**Governed run:** invoked under `pipeline-governor`; ledger `tmp/governor-ledger-noradrenergic-deficit-full-scope.md`.
**Tree state:** MIXED (unrelated patient files present). No shared-branch WIP commits; scratch pointers/reflog only; phases scoped by explicit file lists.

### New tracking rows
| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 8 | Adrenergic-receptor autoantibody upstream cause | 1 | 0.56 | 🟡 integrated | Hartwig2020 (0.70 ME/CFS), Hall2022 (0.56 discounted) |
| 9 | DBH / copper-dependent NE synthesis upstream cause | 2 | 0.40 | 🟡 integrated | Senard2006, Lutsenko2019 |
| 10 | NET (SLC6A2) genetic variant upstream cause | 2 | 0.33 | 🟡 integrated | Hahn2003 |
| 11 | BH4 cofactor depletion upstream cause | 3 | 0.28 | ⬜ tree-only | Rivera2017 (animal) |
| 12 | ATP-dependent vesicular release upstream mechanism | 1 | 0.30 | 🟡 integrated | Rangaraju2014; extends existing ATP-vesicle claim |
| 13 | LC neuroinflammation upstream cause | 3 | 0.25 | ⬜ tree-only | Ahmad2026 (MS analogue) |
| 14 | Guanfacine α2A therapy (PFC signal ↑ without LC suppression) | 1 | 0.45 | 🟡 integrated | Arnsten2023; extends existing guanfacine entry |
| 15 | Downstream: unrefreshing sleep via LC-NE substates | 2 | 0.38 | 🟡 integrated | OsorioForero2021, Luthi2025 |
| 16 | Downstream: pain amplification via descending NE disinhibition | 2 | 0.45 | 🟡 integrated | Hayashida2019 |
| 17 | Downstream/measurement: GRAB(NE) in-vivo NE probe | 2 | 0.38 | ⬜ tree-only | Feng2024 (tool) |

### Active Caps (set by Phase 2 — decision: PARTIAL)
- Environments allowed: speculation / open-question / limitation (+ synthesis); NO new `#hypothesis-box` from this cycle's brainstorm-origin content
- #hypothesis-box / #fhypothesis: FORBIDDEN for cycle-2 brainstorm-origin content (PARTIAL). Pre-existing registry entries are NOT downgraded.
- Brainstorm categories (Phase 4): 1–2 + 10–12 ONLY (skip 3–9 therapeutic brainstorm)
- Certainty bumps (Phases 6–7): no bump may cross 0.45
- Phase 9 flags pre-fired: WEAK-EVIDENCE (PARTIAL)

### Phase 12 — plan record
- Decision PROCEED on upstream/downstream mechanism content (≥1 paper ≥0.60: Hartwig2020 0.70); PARTIAL applied to new medication ideas (max cert 0.60, review-only).
- 13 new bib entries across 7 split bib files; search log `ops/research/search-log-noradrenergic-full-scope-2026-09-28.md`; appendix-h 13 annotated entries.

### Cycle 2 — per-phase reports
- Phase 0: plan located at `ops/plans/noradrenergic-deficiency-integration-plan.md`; extended with Cycle 2 scope + Active Caps; validated mechanically (all rows have status).
- Phase 1: 13 papers found; 13 added to bib across 7 split files (autoimmunity, autonomic-cardiovascular, energy-metabolism, neuroinflammation, pain-fibromyalgia, sleep, treatments); annotated bib updated (13 entries); search log at `ops/research/search-log-noradrenergic-full-scope-2026-09-28.md`. Keys (VERIFIED via rg): Hartwig2020Beta2AdrenergicIgG, Hall2022GPCRAutoantibodiesPOTS, Senard2006DBHdeficiency, Lutsenko2019CopperNoradrenergic, Hahn2003SLC6A2NET, Rivera2017BH4deficiency, Rangaraju2014ActivityDrivenATPsynapse, Arnsten2023Alpha2ANeuroinflammatory, Feng2024GRABneSensors, OsorioForero2021NoradrenergicNREM, Luthi2025MicroarousalsNoradrenaline, Hayashida2019DescendingNoradrenergic, Ahmad2026LocusCoeruleusMS.
- Phase 2: 5 strong, 4 weak, 0 uniform-null, 0 missing. Decision: PARTIAL. Clinical relevance: MEDIUM. Contradictions: 1 pair (autoantibody direction). Standing epistemic checklist: [#1 ✓] / [#2 ⚠ correlational autoantibody/copper] / [#3 ⚠ non-human models] / [#4 ✓] / [#5 ✓] / [#6 ⚠ research-only]. Synthesis: `tmp/synthesis-noradrenergic-full-scope-2026-09-28.md`.
- Phase 3 (partial): 10 registry rows + 1 `#synthesis` + 1 `#open-question` + 1 axis section added (ch14h @sec:noradrenergic-axis-causes-consequences; registry "Entries added 2026-09-28: Noradrenergic Full Axis"). Files: hypothesis-registry.typ, ch14h-trpm3-channelopathy.typ. Checklist verified per-claim: [#1 ✓] / [#2 ✓] / [#3 ✓] / [#4 ✓] / [#5 ✓] / [#6 ⚠ research-only].
- Phase 3a: build PASS (Typst label/escape errors found and fixed: bare `<` → "below"; dangling `@spec:` labels → plain IDs; `@spec:vesicular-ne-deficiency` retained as valid).

### Cycle 2 — per-phase reports (continued)
- Phase 3b: safety gate at `tmp/safety-gate-noradrenergic-full-scope.md`; 0 blocked; 2 warnings (harm per-drug WebSearch unavailable; drug-interaction check unavailable) — no new treatment environment shipped, mechanism-only.
- Phase 3.5: all new environments carry `*Consequence:*` (6 occurrences verified in ch14h); 0 missing.
- Phase 4: 16 ideas generated across categories 1,2,3,8,9,10,11,12; file `ops/brainstorms/brainstorm-noradrenergic-full-scope-2026-09-28.md`.
- Phase 4a: subtree `ops/plans/hypotheses-trees/subtrees/noradrenergic-full-scope.md` written (17 nodes); root index updated.
- Phase 5: 16 ideas triaged; 15 dedup-covered by existing envs/registry rows; 1 new integrated (`@oq:noradrenergic-node-localisation-panel`). ch30 tiers: full cascade 1 (sec-09 node), ops-only 2. Files: ch14h, registry.
- Phase 5-SG: interaction pre-check not runnable (no web search); recorded in safety gate.
- Phase 5c: LEGIT-SKIP — no new medication environment added; existing ch25 sec-10/sec-12 differential entries cover atomoxetine/droxidopa/guanfacine/solriamfetol.
- Phase 5d: cascade trace `ops/integration-guides/pathway-drug-trace-noradrenergic-full-scope.md` (6 branches, 4 discriminating probes, 1 pruned); sec-09 noradrenergic node extended; sec-12/13 unchanged (no new drug).
- Phase 5b: build PASS. Phase 8: build PASS (0 errors).
- Phase 5a (inline): 6 environments/dedup rows checked; all hypothesis/speculation carry falsifiable predictions; open-questions exempt; 0 unfalsifiable-unflagged.
- Phase 5z: 4 glossary entries added (Dopamine beta-hydroxylase, Tetrahydrobiopterin (BH4), Reboxetine, Sapropterin); Copper already present; JSON validated.
- Phase 6: `tmp/synonym-map-noradrenergic-full-scope.md`; 5 overlaps examined, 5 reinforcement/feed-into, 0 contradictions, 1 tension; 0 bumps, 0 reductions.
- Phase 7: `tmp/compat-audit-noradrenergic-full-scope-2026-09-28.md`; 9 pairs; 0 bumps; 1 unresolved tension; bump log empty.
- Phase 9: quality flags NONE (see synthesis append).
- Phase 10: `tmp/coherence-audit-noradrenergic-full-scope-2026-09-28.md`; 0 inconsistencies requiring fix.
- Phase 10a: synthesis `@syn:noradrenergic-full-axis-model` added (ch14h), condensing 8 environments/nodes.
- Phase 10b: no framing propagation needed — synthesis is a mechanistic scaffold; does not change trigger-vs-amplifier classification or abstract strategy. Abstract/ch13 unchanged (intentional).
- Phase 11: lightweight review (no new treatment env; single mechanism cluster). Adversarial inline pass + xref (build) → 0 CRITICAL, 0 HIGH. Reclassified refs without labels to plain IDs.

## Phase 12 — Plan record
- Topic slug: `noradrenergic-full-scope` (Cycle 2 of `noradrenergic-deficiency`). Decision: **PROCEED** (corrected from initial PARTIAL per criteria).
- Environments added: `@sec:noradrenergic-axis-causes-consequences`, `@oq:adrenergic-autoantibody-direction`, `@oq:noradrenergic-node-localisation-panel`, `@syn:noradrenergic-full-axis-model` (ch14h); 10 registry rows; sec-09 node extension.
- Chapters touched: ch14 (ch14h), ch25 (sec-09). Registry + appendix-h + glossary + 7 bib files.
- Bib count: 13 new keys.
- Key finding + why it matters: the noradrenergic deficit can be modelled as a single axis (upstream nodes → selective NE deficit → downstream sleep/pain); node-mapping turns a flat drug list into a drug-matchable stratification.
- Phase 9 flags: none.
- Phase 2 clinical relevance: MEDIUM.
- Anecdote/source NOT integrated: none (all content literature-derived).

## Phase Ledger (Cycle 2)
| Phase | State | Evidence |
|-------|-------|----------|
| 0 | RAN | plan Cycle 2 section validated |
| 1 | RAN | search-log + 13 bib keys + appendix-h |
| 2 | RAN | tmp/synthesis-* (PROCEED) |
| 3 | RAN | ch14h envs + registry rows |
| 3a | RAN | build PASS |
| 3b | RAN | tmp/safety-gate-* |
| 3.5 | RAN | consequence fields verified |
| 4 | RAN | ops/brainstorms/brainstorm-noradrenergic-full-scope-2026-09-28.md |
| 4a | RAN | subtree + root index |
| 5 | RAN | triage + @oq:noradrenergic-node-localisation-panel |
| 5-SG | RAN | safety-gate interaction note |
| 5c | LEGIT-SKIP | no new medication env; existing ch25 differential entries |
| 5d | RAN | ops trace + sec-09 extension |
| 5b | RAN | build PASS |
| 5a | RAN | inline falsifiability sweep |
| 5z | RAN | 4 glossary entries |
| 6 | RAN | tmp/synonym-map-* |
| 7 | RAN | tmp/compat-audit-* + empty bump log |
| 8 | RAN | build PASS (0 errors) |
| 9 | RAN | flags NONE |
| 10 | RAN | tmp/coherence-audit-* |
| 10a | RAN | @syn:noradrenergic-full-axis-model |
| 10b | RAN | no framing propagation (explicit) |
| 11 | RAN | lightweight review, 0 critical/high |
| 12 | RAN | this record |
| 12.5 | RAN | this ledger, 0 OMISSION, build PASS |
| 13 | RAN | commit pending below |
