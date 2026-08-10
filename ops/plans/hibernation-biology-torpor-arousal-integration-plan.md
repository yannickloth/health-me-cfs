# Integration Plan: Hibernation Biology as a Drug-Discovery Platform for Torpor-Circuit Arousal

**Purpose:** Evaluate whether the molecular biology of hibernation/torpor (arctic ground squirrel, Syrian hamster, bears) — specifically the signals for spontaneous **interbout arousal** (arachidonic-acid/prostaglandin shift, adenosine A1→A2A receptor switch, mTORC1 reactivation, brown-adipose-tissue thermogenic reactivation) — warrants integration as a cross-species drug-discovery resource for reversing the torpor-like low-energy state proposed in ME/CFS. These signals are evolutionary homologs of the EP3R/AMPK/mTOR pathway implicated by the Komaroff-Dantzer sickness/torpor neural-circuit model.

**Recursive invocation:** queued by parent `/integrate-topic komaroff-dantzer-symptom-persistence` (Gate A, Phase-4 re-run idea 8.1). Parent subtree node: `R8.1 | Hibernation biology as drug-discovery platform | speculation | 0.35 | mech 3 / tx 3 / expl 4 / math 3 / dx 1`.

**Target chapters (provisional):**
- `ch18` symptom-producing mechanisms (extends the sickness/torpor circuit section; cross-disease torpor-arousal bridge)
- `ch07` energy metabolism / metabolic-safe-mode (torpor-arousal metabolic switch)
- `ch14d` / `ch17` cross-disease bridges (hibernation ↔ ME/CFS hypometabolism)
- `ch30` cascade (if a specifiable arousal-pathway drug interception emerges)

**Pre-identified hypotheses:**
- H-1 | Interbout-arousal molecular signals (eicosanoid shift, A1→A2A switch, mTORC1 reactivation, BAT thermogenesis) are evolutionary homologs of the human EP3R/AMPK/mTOR energy-state switch, providing a physiological (reversible) template for torpor-circuit reset in ME/CFS (prelim cert 0.35)
- H-2 | At least one hibernation-arousal signal, when pharmacologically mimicked, accelerates torpor-arousal in a rodent model — a translational bridge to ME/CFS low-energy-state reversal (prelim cert 0.35)

**Phase 0 note — MIXED tree:** Working tree is MIXED at cycle start (biofabrication-mughal + other parallel cycles' staged WIP; komaroff-dantzer just committed). No shared-branch WIP commits; rollback = `git checkout <ref> -- <file>` (NEVER reset/rebase/amend); all phases and Phase 13 commit scoped by explicit file lists, NOT `git diff`; no `git add -A`.

## Active Caps (set by Phase 2 — decision: PARTIAL)
- Environments allowed: speculation/open-question/limitation ONLY
- #hypothesis-box / #fhypothesis: FORBIDDEN even if idea cert ≥0.45 or Phase 7 bump crosses 0.45
- Brainstorm categories (Phase 4): 1–2 + 10–12 ONLY (skip 3–9)
- Certainty bumps (Phases 6–7): capped — no bump may cross 0.45
- Phase 9 flags pre-fired: WEAK-EVIDENCE

**Phase 2 decision rationale:** PARTIAL — 2 papers discounted ≥0.40 (Jobava 0.47, Shimaoka 0.40), but 83% of papers discounted <0.40 (all cross-species/model-system; pop-weight 0.45-0.55) and none ≥0.60. PROCEED's "≤50% <0.40" fails. DEFER override rejected (literature rich, indirect mechanistic resource real). Caps content to speculation/open-question/limitation. Note: this is a drug-discovery resource / cross-species mechanistic-precedent topic; LOW clinical relevance; carry (Translation gap: animal/model-system → human) on all environments; Duffy oxidative-damage safety flag.

## Tracking table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1 | Hibernation-arousal machinery as cross-species resource (primary) | — | 0.40 | ✅ done | ch18 spec:hibernation-arousal-resource (consolidated after adversarial); registry entry |
| 2 | A1AR/A2A adenosine energy-state switch | — | 0.40 | ✅ done | Folded into #1 (A1AR as entry signal, correctly classified) |
| 3 | Arachidonic-acid/PPARα arousal signal | — | 0.35 | ✅ done | Folded into #1 (single-study hedged) |
| 4 | mCTOR1 reactivation switch | — | 0.33 | ✅ done | Folded into #1 (cross-refs ISR) |
| 5 | Latent cellular hibernation program (Jobava/APR) | — | 0.47 | ✅ done | Merged into #1 as ISR-overlap note (deleted separate spec after reductionist) |
| 6 | Critical: torpor as small-mammal adaptation, not ME/CFS physiology | — | n/a | ✅ done | Folded into #1 critical-constraint |
| 7 | Critical: Duffy oxidative-damage (arousal risk) | — | n/a | ✅ done | Folded into #1 safety caveat |

## Phase 9 / 10 / 11 / 12 report
- Phase 9: net cert 0; WEAK-EVIDENCE (pre-fired PARTIAL); no BLOAT/CLINICAL-RISK/G-UNSUSTAINED.
- Phase 10: single-chapter (ch18) + registry; no inconsistencies. 10a not triggered (single content node). 10b unchanged.
- Phase 11: real adversarial review (cynic/devil-advocate/reductionist) → consolidated 2 speculations into 1, added ISR cross-ref, fixed A1AR entry/arousal misclassification, added sedentary-control arm + non-specificity discriminator. Convergence re-audit: 8/8 resolved, 0 CRITICAL/HIGH. 2 MEDIUM fixed (historical-claim softening + falsifiability threshold). Build green.
- Phase 12: changelog Version 7.8.

## Phase 1 report (literature-integrator agent)
- 12 papers found, 12 added to bib/pathophysiology-general.bib (all keys verified via awk; braces balanced). Appendix-h: 12 entries. Search log + literature summary + integration guide in ops/. Literature folders in Literature/hibernation-biology/.
- Bib keys: Drew2026HibernationBiomedicine, Markussen2024ArousalChoroid, Hunstiger2023NSTHibernation, GonzalezRiano2025Lipidomics, Wang2026T2TArachidonic, Shimaoka2018A1ARHypothermia, Wu2021mTORMetabolicStress, Jobava2021AdaptivePausing, Blanco2024DwarfLemur, Dias2021StemCellTorpor, Fu2021HibernationTranscriptome, Duffy2022ArousalOxidative
- Key mechanistic findings: A1AR activation induces torpor in non-hibernator rat (Shimaoka, disc 0.40 — translational bridge); latent cellular hibernation program in mammalian cells (Jobava, disc 0.47); arachidonic acid as arousal-lipid regulator via PPARα/TRPV-Ca²⁺ (Wang, disc 0.35); mTORC1 as conserved metabolic switch (Wu); BAT UCP1 thermogenesis as arousal driver (Hunstiger); primate hibernation in dwarf lemur (Blanco); choroid-plexus/tanycyte non-neuronal arousal sensors (Markussen).
- SAFETY FLAG: interbout arousal increases oxidative damage (Duffy) → pharmacological "torpor reversal" carries risk; content must be cautious.
- Cohort/weight: all animal/in-vitro/zoology (weight 0.45-0.55); heavy discount applied; highest discounted 0.47 (Jobava), 0.40 (Shimaoka).
- No report-bib key mismatches.

## Phase 2 report (decision PARTIAL)
- 2 papers discounted >=0.40 (Jobava 0.47, Shimaoka 0.40); 0 >=0.60; 83% <0.40 (cross-species). WEAK-EVIDENCE pre-fired. Synthesis at tmp/synthesis-hibernation-biology-torpor-arousal-2026-08-10.md.

## Phase 3 / 3a / 3b / 3.5 report
- Phase 3: created ch18 `spec:hibernation-arousal-resource` + `spec:adaptive-pausing-cellular-bridge` + 2 registry entries (S-type, per PARTIAL). Files: spec-*.typ (2), ch18 aggregator include, hypothesis-registry.typ.
- 3a build: PASS. 3b: 2 envs gated (mechanistic bypass; severity stated; Duffy safety caveat). 3.5: consequences present.

## Phase 4 / 4a report (brainstorm + tree)
- Phase 4: scientific-insight-generator produced 13 ideas (cats 1-2 + 10-12, PARTIAL-capped). First invocation blank -> retried successfully. Brainstorm at ops/brainstorms/.
- 4a: subtree subtrees/hibernation-biology-torpor-arousal.md (14 nodes); root index updated; parent komaroff R8.1 -> done.

## Phase 5 / 5d / 5b / 5a / 5z report
- Phase 5: HIB-1.3 + HIB-8.1 integrated (dedup to Phase-3 specs); HIB-1.1 folded into hibernation spec (choroid-plexus distinct program); research directions (2.x) + critical constraints (10.x-12.x) folded into specs/tree (no redundant env). PARTIAL respected.
- 5d: cascade traced; NO DISCRIMINATING VALUE (no drug >=0.40 ME/CFS; redundant with existing A2A/AMPK content; PARTIAL caps). No ch30 files. Trace at ops/integration-guides/pathway-drug-trace-hibernation-biology-torpor-arousal.md.
- 5b build: PASS. 5a falsifiability-auditor: PASS (2 fully falsifiable, S-type confirmed, citations resolve, no overclaim). 5z: 6 glossary entries added.

## Phase 6 / 7 report
- Phase 6: M=2 matches (existing ch18 A2A, ch07 AMPK/mTOR — consistent/complementary; redundancy avoided). N=0 adapted (additive resource framing; no contradictions). No bumps.
- Phase 7: farm feed-in/compatible relations (arousal-resource -> torpor-circuit; APR -> metabolic-safe-mode). No conflicts; no certainty adjustments (PARTIAL cap; cross-species). No bump.

## Certainty bump log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| (populated by Phases 6/7) |

**Notes:**
- Cross-disease / translational topic — population-relevance discount likely substantial (animal/model-system evidence → 0.50 weight → strong discount).
- Complementary to, but distinct from, the komaroff-dantzer circuit integration (which established the torpor-CIRCUIT framing; this adds the AWAKENING/arousal biochemistry).
- Potential redundancy to check (Phase 2/6): existing torpor mentions in ch17/ch14d; existing AMPK/mTOR content; any existing hibernation/arousal content.
- **Decision:** PARTIAL (Phase 2, 2026-08-10)
