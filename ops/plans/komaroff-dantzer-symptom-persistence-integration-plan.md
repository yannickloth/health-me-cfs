# Integration Plan: Komaroff & Dantzer 2025 — Causes of Symptoms and Symptom Persistence in Long COVID and ME/CFS

**Purpose:** Evaluate whether the Komaroff & Dantzer 2025 review (Cell Reports Medicine) of symptom causation and persistence in long COVID and ME/CFS warrants integration as a high-authority synthesis of the pathophysiology field. Two leading researchers (Komaroff: ME/CFS pioneer; Dantzer: sickness-behavior constitutive model) consolidating the current mechanistic model.

**Primary paper:** Komaroff AL, Dantzer R. Causes of symptoms and symptom persistence in long COVID and ME/CFS. *Cell Reports Medicine* (2025). Review.

**Target chapters (provisional):**
- `ch08` immune dysfunction (sickness-behavior / neuroimmune)
- `ch09` neurological (symptom-generation mechanisms)
- `ch13` / `ch14d` integrative models (unified symptom model)
- `ch16` causal hierarchy (trigger → persistence reasoning)
- `ch30` cascade sections (if any specific mechanism with drug interception identified)
- `ch20` biomarkers (persistence markers)

**Phase 0 note — MIXED tree:** Working tree is MIXED at cycle start (untracked `ops/plans/ai-multiomics-mecfs-xiong2025-integration-plan.md` from a parallel cycle; prompt directs "work in mixed mode"). No shared-branch WIP commits; rollback = `git checkout <ref> -- <file>` (NEVER reset/rebase/amend); all phases and Phase 13 commit scoped by explicit file lists, NOT `git diff`; no `git add -A`.

## Pre-identified hypotheses

| Hyp | Description | Preliminary cert |
|-----|-------------|------------------|
| H-1 | Sickness-behavior (Dantzer's neuroimmune model) provides a unifying symptom-generation frame for long COVID and ME/CFS symptoms | — |
| H-2 | Symptom persistence is driven by ongoing peripheral immune/inflammatory drive rather than solely the original trigger | — |
| H-3 | Long COVID and ME/CFS share overlapping but not identical symptom-persistence mechanisms | — |

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

**Phase 2 decision rationale:** PROCEED — highest discounted certainty 0.78 (KomaroffDantzer2025, ME/CFS+LC, ×1.0); ≥2 papers ≥0.40 (5 papers); 2 papers ≥0.60 (0.78, 0.62); only 25% of papers <0.40 (the two animal torpor papers). Evidence not uniformly null. DEFER override rejected: indirect pathway evidence strong (neuroinflammation→neural-circuit is a testable mechanistic model intersecting documented ME/CFS neuroinflammation). Clinical relevance: MEDIUM (mechanistic context + research-stage treatment direction; no dosing/data). Standing epistemic checklist: #1 ✓, #2 ✓, #3 ⚠ (Hrvatin/Machado animal → translation gap annotation required), #4 ✓, #5 ✓, #6 ✓.

## Tracking table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1 | Komaroff-Dantzer 2025 review — primary paper synthesis | — | 0.78 disc | ✅ done | Phase 2: PROCEED. Synthesis at tmp/synthesis-komaroff-dantzer-symptom-persistence-2026-08-10.md; Active Caps set. |
| 2 | Named sickness/torpor neural circuits (area postrema→brainstem; OV→VMPO; median preoptic→torpor) | — | 0.45 | ✅ done | Phase 3/5: ch18 @hyp:ch15-sickness-torpor-circuits; registry entry; translation-gap annotated |
| 3 | Torpor-like AMPK-mTOR hypometabolic switch as adaptive | — | 0.30 | ✅ done | Folded into #2 ch18 hyp + Phase 6 ch07/ch16 reinforcement |
| 4 | Two-way fever/torpor preoptic switch (defective circuit "switch") | — | 0.31 | ✅ done | Machado2025; folded into #2 ch18 hyp |
| 5 | Vicious-cycle persistence synthesis | — | 0.45 | ✅ done | Registry entry (vicious-cycle H); Phase 6 reinforces ch16 chronicity |
| 6 | Sickness-behavior framework reinforcement (Dantzer authority) | — | 0.45 | ✅ done | No new box — Phase 6 reinforcement (existing ch18/ch19) |
| 7 | Neuroinflammation as targetable hub (treatment framing) | — | 0.40 | ✅ done | ch18 consequence + registry treatment (research-stage); ch30 cascade assessed in Phase 5d |

## Phase 10/10a/10b report
- Phase 10: 2 chapters + registry audited, 0 inconsistencies. Coherence audit at tmp/coherence-audit-komaroff-dantzer-symptom-persistence-2026-08-10.md.
- Phase 10a: NOT triggered — single-chapter (ch18), single primary narrative environment (with fold-in + reinforcement). Below the "≥3 environments across ≥2 chapters" threshold. No #synthesis added.
- Phase 10b: no framing propagation needed — the incremental reinforcement adds no new trigger-capable root cause, genome claim, or treatment-strategy change to the abstract/ch16/root-cause framing. Neuroinflammation→circuit is a symptom-generation amplifier consistent with existing ch16 amplifier inventory.

## Phase 9 report (quality)
- Net cert change 0; R=1/T=0; 3 falsifiable predictions; ~1000 words; T1 low; MEDIUM clinical.
- Quality flags: NONE.

## Phase 5d report (ch30 cascade)
- **SKIPPED per skill model-note:** "If opus is unavailable → skip Phase 5d entirely (no ops trace, no chapter content)." This environment's configured models are deepseek/kimi — no opus. The neuroinflammation→neural-circuit mechanism maps to ch30 sec-04 (neuroinflammatory) per the Phase 3 Category Router, but no ch30 cascade file/sec-12/sec-09/sec-13 changes were made. Rationale: (a) opus unavailable per model-note; (b) interception drugs lack ME/CFS-specific certainty ≥0.40 (sec-12 step-6 pruning threshold) — most anti-neuroinflammatory agents have no ME/CFS efficacy data, so a cascade would lack discriminating value. The neuroinflammation-hub treatment framing is carried in ch18 consequence + registry `treatment:` field (research-stage only), not as a ch30 cascade.
- Phase 5c: N/A (no medication with ME/CFS human evidence integrated).

## Phase 6 report (retrospective adaptation)
- Semantic match: Komaroff-Dantzer "CNS-confined neuroinflammation → neural-circuit symptom generation" matches the paper's EXISTING Omdal-null reconciliation in ch18 (biphasic: acute cytokine surge → hypothalamic microglial priming → CNS-circuit-maintained fatigue). Synonym map: tmp/synonym-map-komaroff-dantzer-symptom-persistence.md.
- M matches examined: 3 focus matches (ch18 Omdal reconciliation ×3 locations — lines ~206/221/813). N adapted: 1.
- Reinforcement: R=1 edit — added @KomaroffDantzer2025SymptomPersistence cite to the existing ch18 Omdal-reconciliation/CNS-confined sentence (line ~221), reinforcing the circuit-mediated persistence model with the review's authority. NO certainty bump (existing claim already confident; cite-only reinforcement; no bump to log).
- Contradiction: T=0 edits — the Omdal null is ALREADY reconciled in ch18 (option c: CNS-confined maintenance). No new limitation needed.
- Ambiguous: A=0. No action: S=0.
- Overlap with existing vicious-cycle/multi-lock content (ch19): detected — the paper ALREADY has extensive self-reinforcing-feedback/multi-lock chronicity model. My registry #2 (vicious-cycle) adds the Komaroff-Dantzer-specific enumeration (redox↔endothelial, spike/fibrin epitope); overlap noted in its limitation. No ch19 changes (would be redundant).
- Truncated: K=0. Skipped (zero-overlap): matches on unrelated terms excluded.
- Evidence quality floor: Komaroff-Dantzer cert 0.78 ≥0.70 → full adaptation permitted; applied cite-only reinforcement (no bump).
- Standing epistemic checklist: no violations (visibility symmetry maintained — reinforcing cite matches existing supporting evidence).
- Certainty bump log: NO bumps applied (cite-only reinforcement). Log remains empty (per-cycle cap respected).

## Phase 5 report (inline)
- Triage: 1.1 Tier 1 (integrated as ch18 hyp, cert 0.45); 1.2 fold-in; 2.1/2.2 Tier 2/dedup; 3.1/3.2 research-stage open-questions (no ME/CFS data → capped, no clinical/sec-12 entry); 5.1/9.1 covered-by-existing; 10-12 critical → covered (ch18 translation-gap note + registry limitation + Phase 6 reconciliation).
- Dedup: most brainstorm ideas map to Phase 3 ch18 hyp + registry entries — no redundant new environments created (per skill dedup requirement).
- Ch30 tiers: no full cascade/drug-indexed emerged from brainstorm (research-stage only); see Phase 5d assessment.
- Phase 0 note (MIXED tree): retained. No shared-branch WIP commits; all scopes by explicit file lists.

## Phase 3 report
- 1 hypothesis environment added to ch18 (`hyp:ch15-sickness-torpor-circuits`) + 2 hypothesis-registry entries (dedicated circuits H, vicious-cycle H). Files modified: ch18-symptom-producing-mechanisms.typ, subsec-04-.../hyp-dedicated-sickness-torpor-neural-circuits.typ, hypothesis-registry.typ.
- Standing epistemic checklist per-claim: #1 ✓ / #2 ✓ / #3 ⚠ (translation gap annotated) / #4 ✓ / #5 ✓ / #6 ✓.

## Phase 3.5 report
- 1 narrative environment verified (consequence present/accessible); 0 missing. Registry entries use `treatment:` field for non-specialist translation.

## Phase 3a/3b report
- 3a build: PASS (fixed `sec:metabolic-safe-mode`→`sec:root-safe-mode` label).
- 3b: 3 environments gated, all passed (mechanistic → bypass; item 2 severity stated).

## Phase 1 report (inline)
- 8 new bib entries across bib/{long-covid,autoimmunity,neuroinflammation,immune}.bib (all keys verified present via awk; brackets balanced).
- 8 appendix entries added to appendix-h-annotated-bibliography.typ.
- Search log + literature summary in ops/research/; integration guide in ops/integration-guides/.
- Literature/reviews/Komaroff_2025_CausesOfSymptomsLongCovidMECFS/ created (full text retrieved via EuropePMC — open access).
- Scrape registry updated.
- KEY FINDING: sickness-behavior framework ALREADY extensively in paper (ch18/ch19; Dantzer2000neural, Dantzer2007SicknessBehavior, Morris2013mecfsSickness). Integration must be INCREMENTAL (add neural-circuit/torpor detail; reinforce existing), not redundant.
- Null/contra: Omdal2026LCFatigueStress (in corpus) = no peripheral inflammatory biomarker association → reconciliation to neuroinflammation-specific path (Phase 6).

## Phase 7 report (cross-hypothesis compatibility — inline)
- Pairs audited via term index (shared terms: sickness, neuroinflammation, CNS-circuit, persistence, metabolic safe-mode).
- H1 (dedicated sickness/torpor circuits, cert 0.45) ↔ @hyp:ch15-sickness-persistence: **feed-in/reinforcement** (H1 specifies the circuit mechanism instantiating the persistence claim). No bump (both established; would over-inflate; G-sensitivity).
- H1 ↔ @hyp:ch15-sickness-emotional-phenotype (0.45): weak reinforcement. No bump.
- H1 ↔ @hyp:metabolic-safe-mode / @hyp:cns-energy-crisis (ch19): **feed-into / compatible** — H1's torpor/metabolic-switch adds a circuit anchor to the existing metabolic-safe-mode energy-conservation model (cross-referenced via @sec:root-safe-mode, @sec:cns-energy-crisis). No bump.
- H1 ↔ @hyp:gpcr-root (autoantibody cascade): weak reinforcement — Azcue2026 (0.36 disc) supports the shared-autoantibody claim; below bump threshold. No bump.
- H2 (vicious-cycle persistence, cert 0.45) ↔ existing ch19 multi-lock/oxide-vicious-cycle content: **overlapping/independent** (same theme but distinct enumeration; no shared-assumption conflict). No change (adding would duplicate ch19).
- Certainty adjusted: J=0 bumps, K=0 reductions, L=0 tensions. Independence validated (no misclassified independent pairs).
- Bump log: remains empty (per-cycle cap + no independent-line convergence warranting a bump).
- Active-caps compliance: no #hypothesis-box crossed to speculation; no capped bump crossed 0.45. Compliance confirmed.
- Standing epistemic checklist: no violations.

## Certainty bump log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| (populated by Phases 6/7) |

**Notes:**
- Standalone integration — no parent topic, no brainstorm origin.
- This is a REVIEW paper — the literature-integrator must treat it as one synthesis source among the 5–15 reviewed papers, not fabricate primary data the review doesn't contain. Review papers inherit the quality of their primary sources.
- Verify paper details via literature search (exact volume, DOI, and whether it has an accompanying ME/CFS-specific perspective).
- Related existing content: `Komaroff2023` (energy-metabolism.bib, Komaroff & Lipkin review) already integrated; must coordinate to avoid redundancy — this 2025 review adds the Dantzer sickness-behavior dimension and long COVID comparison.
- **Decision:** PROCEED (Phase 2, 2026-08-10)
- **Cohort overlap (Phase 1):** No shared-cohort inflation among the 8 added records (independent institutions; the 3 animal/framework papers have no cohort). Existing Omdal2026LCFatigueStress & Komaroff2023 are independent.
- **Phase 1 runner note:** literature-integrator subagent delegation was blocked by the repo-wide stale `model:` frontmatter (sonnet/opus/haiku overriding opencode.json mapping → "Model not found: sonnet/"). Per user instruction to use this session's model in case of doubt, Phase 1 was executed inline by the main session. Root-cause + fix prompt recorded at `ops/plans/fix-agent-model-frontmatter-session-prompt.md`.
