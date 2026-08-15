# Integration Plan: EpiSwitch Epigenetic Diagnostic Blood Test

**Purpose:** Integrate the EpiSwitch 3D-genomic blood test for ME/CFS (Hunter et al. 2025, _J Transl Med_) as an objective blood-based diagnostic biomarker — the highest specificity (98%) reported for any ME/CFS diagnostic to date. This is a full `/integrate-topic` cycle governed by `/pipeline-governor`.

**Parent topic:** new-contents (hypothesis tree)
**Topic slug:** `episwitch-epigenetic-test`
**Date:** 2026-08-15
**MIXED/CONCURRENT mode:** Tree dirty with `appelman2025-reply-muscle` WIP. No shared-branch WIP commits; rollback = `git checkout <ref> -- <file>`; phases scoped by explicit file lists, NOT `git diff`. Shared-file entries tracked by key: `Hunter2025` (bib, appendix-h), subtree `new-contents-episwitch`.

## Target chapters
- `src/main/typst/mecfs/part4-research/ch35-biomarker-research/` (primary: emerging/epigenetic biomarker candidates, genomic-and-epigenetic, overview-convergent-biology) — NOTE: actual chapter is ch35, not ch20 (stale path in subtree).
- `src/main/typst/mecfs/part2-pathophysiology/ch14-genetics-epigenetics/` (cross-ref: 3D genome dysregulation as a dimension beyond DNA methylation).
- Hypothesis registry, ch30 cascade (IL-2/neuroinflammatory routing per category router).

## Pre-identified hypotheses
- EpiSwitch 3D chromosome-conformation dysregulation is specific to ME/CFS and detectable in blood (discounted certainty: raw 0.50 ME/CFS cohort → 0.50). Highest analytical specificity of any ME/CFS diagnostic biomarker published to date (98%).
- Replication and cross-condition specificity (ME/CFS vs fibromyalgia/depression) are unvalidated; commercial/proprietary platform limits independent verification.

## Tracking table
| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|---|---|---|---|---|
| 1 | EpiSwitch 3D chromatin-conformation signature is a specific ME/CFS diagnostic (92% sens / 98% spec) | — | 0.50 | 🔵 in progress | Core paper; PROCEED; research-stage, "healthy controls only" caveat required |
| 2 | IL-2/JAK-STAT pathway enrichment in EpiSwitch panel converges with EV (Giloteaux) + Treg evidence → therapeutic probe | — | 0.40 | ⬜ pending | Phase 4 brainstorm will reassess |
| 3 | "Frozen chromatin state" — 3D-genomic architecture as trapped immune-activation memory (mech4/tx2/expl4/math2/dx3) | TBD | 0.35 | ⬜ pending | brainstorm #1 |
| 4 | Independent external replication cohort study (dx5) | TBD | 0.45 | ⬜ pending | brainstorm #2 |
| 5 | Cross-condition specificity study (ME/CFS vs FM/depression/long-COVID) (dx5) | TBD | 0.40 | ⬜ pending | brainstorm #3 |
| 6 | Head-to-head EpiSwitch vs HERV on one cohort (orthogonality) (mech3/expl3/dx4) | TBD | 0.30 | ⬜ pending | brainstorm #4 |
| 7 | JAK inhibitor as pharmacodiagnostic probe of 3D-chromatin axis (mech3/tx3) | TBD | 0.25 | ⬜ pending | brainstorm #5 |
| 8 | EpiSwitch IL-2/JAK-STAT signature as responder-predictor for low-dose IL-2 (tx4/dx4) | TBD | 0.35 | ⬜ pending | brainstorm #6 |
| 9 | TRIM28 unifying node: 3D-chromatin + HERV + IL-2 convergence (mech4/expl4) | TBD | 0.40 | ⬜ pending | brainstorm #7 |
| 10 | 3D-chromatin epigenetic state variable in causal DAG/ODE (math5) | TBD | 0.30 | ⬜ pending | brainstorm #8 |
| 11 | Longitudinal EpiSwitch monitoring: state-vs-trait across PEM (dx3) | TBD | 0.30 | ⬜ pending | brainstorm #9 |
| 12-16 | Other brainstorm ideas (#10-16: supplement/non-pharm/combination/cross-disease/access) | TBD | TBD | ⬜ pending | see brainstorm file |
| 17-18 | Critical: generic-illness signature, null hypothesis, overfitting, COI/severity bias | — | 0.30-0.45 | ⬜ pending | brainstorm #13-16 (highest truth-likelihood) |

## Certainty bump log
_(empty at creation — populated by Phases 6 and 7)_

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed (with falsifiability + consequence fields)
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none
- **Evidence-quality caps:** Any prose citing "98% specificity" MUST carry "healthy controls only" caveat + no-FM/depression/LC-discrimination note. EpiSwitch diagnostic claim stays at certainty ≤0.50 (research-stage, not clinical-ready). IL-2/JAK-STAT mechanism axis may cite Wei/Lee/Ward/Zhu at their higher certainties.

## Phase 1 priority — repair defective prior integration
Prior ad-hoc integration introduced three duplicate bib keys for one paper and an author mis-attribution. Must fix before continuing:
1. `Hunter2025` (genetics-epigenetics.bib:66) — canonical, correct first author Ewan Hunter.
2. `Pshezhetskiy2025episwitch` (genetics-epigenetics.bib:998) — DUPLICATE, wrong first author "Pshezhetskiy" (should be Hunter/Pchejetski), wrong page 1048. DELETE.
3. `hunter2025biomarker` (immune.bib:2537) — DUPLICATE, fabricated cohort n=210+88, wrong page 486. DELETE.
Re-point appendix-h entries (lines 834, 14379, 26513) and consolidate the three annotated entries into one under canonical key.

## Phase reports
- **Phase 0 (2026-08-15):** plan created + validated mechanically (Purpose, targets, hypotheses, tracking table, bump log).
- **Phase 1 (2026-08-15):** 14 new papers added to `bib/genetics-epigenetics.bib` (research_stream=episwitch; keys verified via grep). Search log at `ops/research/search-log-episwitch-2026-08-15.md`. Summary at `ops/research/literature-episwitch-2026-08-15.md`. Key findings: NO replication of EpiSwitch ME/CFS; cross-condition specificity untested (98% spec vs healthy only); IL-2/JAK-STAT 3D-chromatin axis independently supported (Wei/Lee/Ward/Zhu); vendor COI throughout (OBD). Cohort-overlap flags: 5 vendor platform papers share OBD authors → context only, not replication.
- **Phase 2 (2026-08-15):** Decision **PROCEED**. Synthesis at `tmp/synthesis-episwitch-epigenetic-test-2026-08-15.md`. 4 strong (≥0.40), 1 moderate (Hunter 0.50), 6 weak, 0 null. Clinical relevance MEDIUM, subset severe/very-severe. No fundamental contradictions. Standing epistemic checklist: all ✓.
- **Phase 3 (2026-08-15):** Content integrated. New `episwitch-3d-genomic/episwitch-3d-genomic.typ` (ch35) with #speculation env (cert 0.50, falsifiability, consequence, severity) + IL-2/JAK-STAT mechanism paragraph. Repaired `epigenetic-and-mirna-biomarker.typ` (added @Hunter2025 citation, healthy-controls-only caveat, consequence). Added consequence to `open-question-oq:composite-epi-score.typ`. Corrected ch14 "methylation signatures"→"3D chromosome-conformation" factual error + cross-ref. Added 2 hypothesis-registry entries (`hyp:episwitch-3d-chromatin-biomarker`, `hyp:3d-chromatin-IL2-jakstat-axis`). ch30 footprint: citation cross-ref only (biomarker topic; IL-2 therapeutic side already in ch23 spec + ch33 sec-12 Low-Dose IL-2).
  - **ISOLATION VERIFIED:** all my citations + labels resolve; my files not source of build errors (concurrent sessions broke tree). Standing epistemic checklist: [#1✓/#2✓/#3✓/#4✓/#5✓/#6✓].
- **Phase 3a (2026-08-15):** Intermediate build check — isolation verified (tree blocked by concurrent-session build errors in ch20b + missing EBV/cortisol labels, NOT mine). My files compile cleanly: all citations + labels resolve.
- **Phase 3b (2026-08-15):** Safety gate — BIOMARKER topic, no treatment/intervention proposed → full gate bypassed (item 2 severity applicability only). Severity applicability stated: severe/very-severe (housebound cohort). No harm/interaction/pregnancy items apply (no drug content).
- **Phase 3.5 (2026-08-15):** Consequence verification — all 4 new environments have *Consequence:* fields (ch35 #speculation, #practical-warning, #open-question, 2 registry rows). PASS.
- **Phase 4 (2026-08-15):** Brainstorm complete — 16 ideas across all 12 categories at `ops/brainstorms/brainstorm-episwitch-epigenetic-test-2026-08-15.md`. Plan tracking table populated with all idea rows (status ⬜ pending). Top ideas: frozen-chromatin-state hypothesis, replication cohort, cross-condition specificity, EpiSwitch-vs-HERV orthogonality, IL-2 responder-predictor, TRIM28 unifying node. Critical categories (#13-16: generic-illness, null, overfitting, COI) carry highest truth-likelihood (0.30-0.45).
- **Phase 4a (2026-08-15):** Hypothesis subtree updated — `ops/plans/hypotheses-trees/subtrees/new-contents-episwitch.md` populated with 12 nodes (was stub). Root index row updated (12 ideas, 2 integrated, 🔵 in progress). Corrected stale target-chapter paths (ch20→ch35, ch12→ch14) and stale certainty (0.65→0.50).
- **Phase 5 (2026-08-15):** Triage of 16 brainstorm ideas. Integrated as content: Idea 1 (frozen-chromatin-state, `hyp:frozen-chromatin-state` #speculation cert 0.30), Idea 7 (TRIM28 unifying node, `hyp:trim28-unifying-node` #speculation cert 0.30), critical categories 13-16 folded into registry `lim:episwitch-caveats`. Ideas 2/3/4/8/9/11 (research directions) + 5 (JAK, high-risk safety-gated) + 10 (butyrate) recorded as future-cycle proposals in tree (⏭️), NOT integrated as treatment content (no sub-research; JAK immunosuppressive risk). Idea 6 (IL-2 responder predictor) cross-ref'd to existing `@spec:low-dose-il2-mecfs` + ch33 sec-12. ch30 tier: citation cross-ref only (biomarker topic; IL-2 therapeutic side already in ch23/ch33). 4 new registry entries added (trim28, frozen-chromatin, caveats). Subtree statuses updated (5 ✅, 7 ⏭️).
- **Phase 5a (2026-08-15):** Falsifiability sweep by falsifiability-auditor. 3/4 speculations PASS; 1 weak (`hyp:3d-chromatin-IL2-jakstat-axis` — registry falsifiability made concrete: Hi-C/Capture-C at CTCF-anchored JAK-STAT enhancer loci, P≥0.05 threshold). Added overfitting caveat (200 markers/n=47) to chapter limitation. All 3 chapter #speculations carry falsifiability + consequence. Registry 4 rows have falsifiability.
- **Phase 5z (2026-08-15):** Glossary — added entries: EpiSwitch (method), TRIM28 (protein), TAD (cell), chromatin (cell). Fixed invalid "biology" category → valid labels. `nix flake check` glossary-test PASSES (all 5 checks passed).
- **Phase 6 (2026-08-15):** Retrospective adaptation. Swept pre-existing EpiSwitch references: ch14:472 corrected (Phase 3); convergent-biology:9 corrected (Myhill→Hunter, n=54→47, repair); ch08 pro-inflammatory-cytokines:122 verified accurate (Hunter, n=47/61, 3D-genomic, 92/98%); appendix-i registry entry verified accurate (n=108, caveats present); ch23 IL-2 spec accurate. **No certainty bumps** — all EpiSwitch evidence < 0.60 floor (single vendor study, unreplicated). Adaptations = factual corrections only (already applied). No synonym-map needed.
- **Phase 7 (2026-08-15):** Cross-hypothesis compatibility. Relationships: frozen-chromatin↔CD8-mito-exhaustion (reinforcement); IL2-jakstat↔low-dose-IL2 (feed-into); TRIM28↔HERV (reinforcement); episwitch↔composite-epi-score (feed-into). **No certainty adjustments** — all new hypotheses < 0.50 bump threshold. No conflicts, no circular deps. Compat audit at `tmp/compat-audit-episwitch-epigenetic-test-2026-08-15.md`.
- **Phase 8 (2026-08-15):** Build verification. Initially blocked by concurrent-session ch08 delimiter error + a `cannot reference text` error in MY file (IL-2 axis label on plain prose). **FIXED:** converted the IL-2 axis from plain prose to a `#speculation` environment (`hyp:3d-chromatin-IL2-jakstat-axis`). Also found my new `episwitch-3d-genomic.typ` was untracked (not staged) → labels invisible to audit. Staged it. **Final: `nix build` 0 errors + `nix flake check` all checks pass.**
- **Phase 9 (2026-08-15):** Quality assessment. Net certainty change 0. 7 new falsifiable predictions. ~1.5KB content. Flags: BLOAT not fired; CLINICAL-RISK not fired (no treatment content); G-UNSUSTAINED-CERTAINTY not fired (no bumps); **WEAK-EVIDENCE FIRED** (71% papers <0.40 — driven by vendor-context platform papers) — already addressed via `lim:episwitch-caveats` + chapter caveats. Summary appended to `tmp/synthesis-episwitch-epigenetic-test-2026-08-15.md`.
- **Phase 10 (2026-08-15):** Cross-chapter coherence. 0 inconsistencies. Certainty consistent (0.50/0.45/0.30), terminology consistent (no place mischaracterizes EpiSwitch as methylation), all cross-refs resolve, no contradictions, consequence fields present across ch35/ch14/ch08/ch23. Audit at `tmp/coherence-audit-episwitch-epigenetic-test-2026-08-15.md`.
- **Phase 10a (2026-08-15):** High-level synthesis added — `#synthesis(title: [Convergent Epigenetic Layers Point Toward a Shared Immune-Regulatory Defect])` at end of ch35 EpiSwitch section, cross-referencing all 4 convergent environments (@hyp:episwitch-3d-chromatin-biomarker, @hyp:3d-chromatin-IL2-jakstat-axis, @hyp:trim28-unifying-node, @hyp:frozen-chromatin-state). Label `<syn:episwitch-epigenetic-convergence>`. States the convergence strengthens mechanistic hypothesis, NOT a validated diagnostic. Consequence field present.
- **Phase 10b (2026-08-15):** Strategic-framing propagation — **none needed.** The synthesis is a biomarker-convergence/downstream finding (IL-2/JAK-STAT is an amplifier, not a trigger-capable mechanism). Per decision matrix "Downstream consequence (non-actionable finding) → No framing update needed." No abstract/ch16/reading-guide/ch13 changes.
- **Phase 11 (2026-08-15):** Review to convergence (Full tier — >3 environments, cross-chapter). Round 1: 4 findings (Medium×2, Low×2). Fixed: (1) garbled TRIM28 wording; (2) CTCF-anchored JAK-STAT mischaracterization of Lee 2025 → corrected to CTCF-coordinated 3D architecture + STAT5 enhancer loci (Lee shows STAT5 super-enhancers are CTCF-independent); (3) added generic-illness confound to chapter Limitations; (4) added syn registry row (de-orphaned synthesis label). Round 2: 0 findings → **CONVERGED**. Build + flake check pass after fixes.

## Phase 12 — Plan-Record

- **Topic slug:** `episwitch-epigenetic-test` | **Decision:** PROCEED
- **Environments added:** 4 `#speculation` (hyp:episwitch-3d-chromatin-biomarker, hyp:3d-chromatin-IL2-jakstat-axis, hyp:trim28-unifying-node, hyp:frozen-chromatin-state) + 1 `#synthesis` (syn:episwitch-epigenetic-convergence), all in ch35. 5 registry rows (4 hyp + 1 lim + 1 syn = 6 rows in EpiSwitch block).
- **Chapters touched:** ch35 (primary, new episwitch-3d-genomic section), ch14 (cross-ref correction), ch08 (verified consistent), ch23 (cross-ref), ch33 (cross-ref via IL-2 compendium).
- **Bib:** 14 papers added (research_stream=episwitch) + 1 canonical `Hunter2025` enriched. 2 duplicate keys deleted + fabricated-cohort entry removed.
- **Glossary:** 4 entries added (EpiSwitch, TRIM28, TAD, chromatin).
- **Key finding:** The EpiSwitch 3D-chromatin blood test distinguishes severe ME/CFS from healthy controls (92/98% discovery cohort) with IL-2/JAK-STAT pathway enrichment — but it is a single vendor-affiliated, unreplicated study whose specificity was tested only against healthy controls. It strengthens a mechanistic hypothesis about shared immune-regulatory (IL-2/TRIM28) dysregulation, not a validated clinical diagnostic.
- **Phase 9 quality flags:** WEAK-EVIDENCE (addressed via caveats); BLOAT/CLINICAL-RISK/G-UNSUSTAINED-CERTAINTY not fired.
- **Clinical relevance:** MEDIUM (research-stage biomarker; subset severe/very-severe).
- **Prior-state repair:** 3 duplicate bib keys for the same paper (Hunter2025 / Pshezhetskiy2025episwitch / hunter2025biomarker) consolidated to 1 canonical `Hunter2025`; corrected author attribution (Ewan Hunter, not "Pshezhetskiy"); removed fabricated n=210+88 cohort; consolidated 3 duplicate appendix-h entries.

## Phase Ledger (Phase 12.5 completion gate)

| Phase | State | Evidence |
|-------|-------|----------|
| 0 | RAN | plan file created + validated (`ops/plans/episwitch-epigenetic-test-integration-plan.md`) |
| 1 | RAN | search-log + literature summary + 14 bib entries (verified via grep) |
| 2 | RAN | `tmp/synthesis-episwitch-epigenetic-test-2026-08-15.md`; decision PROCEED; Active Caps written |
| 3 | RAN | chapter envs (4 #speculation + 1 #synthesis) + 6 registry rows + ch14 correction |
| 3a | RAN | build isolation check → later full build PASS |
| 3b | LEGIT-SKIP | biomarker topic, no treatment content → only severity-applicability check applied (stated severe/very-severe) |
| 3.5 | RAN | all new envs verified to carry *Consequence:* fields |
| 4 | RAN | `ops/brainstorms/brainstorm-episwitch-epigenetic-test-2026-08-15.md` (16 ideas) |
| 4a | RAN | subtree `new-contents-episwitch.md` populated (12 nodes) + root index updated |
| 5 | RAN | triage; integrated TRIM28 + frozen-chromatin + caveats; future-cycle proposals recorded |
| 5b | RAN | flake check + build PASS after staging |
| 5d | LEGIT-SKIP | biomarker topic, no standalone causal-cascade hypothesis (IL-2 axis is pathway enrichment, not ≥3-step cascade with drug interception); handled as citation cross-ref to existing ch23/ch33 IL-2 content |
| 5c | LEGIT-SKIP | non-pharmacological/biomarker topic; no new medication with differential diagnostic value introduced |
| 5a | RAN | falsifiability-auditor sweep; 2 findings fixed (IL-2 falsifiability made concrete; overfitting caveat) |
| 5z | RAN | 4 glossary entries added; glossary-test passes |
| 6 | RAN | retroactive adaptation; factual corrections applied (ch14, convergent-biology); no certainty bumps (evidence < 0.60 floor) |
| 7 | RAN | compat audit; relationships mapped; no adjustments (all new hyp < 0.50 bump threshold) |
| 8 | RAN | `nix build` 0 errors + `nix flake check` all checks pass |
| 9 | RAN | quality assessment; WEAK-EVIDENCE flagged + addressed |
| 10 | RAN | coherence audit; 0 inconsistencies |
| 10a | RAN | #synthesis added (syn:episwitch-epigenetic-convergence) |
| 10b | LEGIT-SKIP | no framing implication (downstream/non-actionable synthesis per decision matrix) |
| 11 | RAN | review convergence; R1 4 findings fixed, R2 0 → CONVERGED |
| 12 | RAN | plan-record written (above; no changelog.typ) |
| 13 | PENDING | commit (next) |

**Result:** 0 OMISSION. All phases RAN or LEGIT-SKIP (with conditions documented). Build PASS. Ledger clean — Phase 13 may proceed.

## Notes
- Actual first author: **Ewan Hunter** (Pshezhetskiy/Pchejetski is senior author; the trustmyscience article's "Dmitry Pshezhetskiy" lead attribution is incorrect per the paper's author list).
- The EpiSwitch paper has n=47 severe (housebound) ME/CFS + 61 controls — NOT n=210+88. The n=210+88 claim in immune.bib is fabricated and inflates certainty to 0.55; must be corrected.
