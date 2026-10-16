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

---

# UPDATE CYCLE — 2026-10-15 (governed by `/pipeline-governor`)

**Trigger:** Re-invoked `/pipeline-governor integrate-topic https://link.springer.com/article/10.1186/s12967-025-07203-w` for an already-integrated topic. Cycle 1 (commit `87b4f012`) and the Hunter-2026 child cycle (commit `f72a70ac`) are complete. This cycle is a **re-integration / update**: Phase 1 seeks evidence published *after* 2026-08-15 (replication, critique, contradiction).
**Tree state:** CLEAN (`git status --short` empty). CLEAN mode — scratch-pointer checkpoints enabled.
**Start HEAD:** `c7831bd4`.

## Phase reports (UPDATE CYCLE 2026-10-15)

- **Phase 0 (2026-10-15):** Existing plan located (`ops/plans/episwitch-epigenetic-test-integration-plan.md`); topic already integrated (commits `87b4f012`, `f72a70ac`). Treated as update cycle. `ops/deferred-topics.md` scanned — no related deferred topic; no trigger met. `ops/queued-topics.md` scanned — no queued EpiSwitch child pending. Tracking row #1 moved to `🔵 in progress (update cycle)`. Plan validated mechanically.
- **Phase 1 (2026-10-15):** 3 new papers added to `bib/genetics-epigenetics.bib` (`Tirelli2026WheatAndChaff`, `Polli2026MethylationAxes`, `Sharma2026MethylationUnifying`; keys verified by grep). Search log `ops/research/search-log-episwitch-epigenetic-test-2026-10-15.md`; summary `ops/research/literature-episwitch-epigenetic-test-2026-10-15.md`. Rival framings: F1=0, F2=0, F3=2, F4=2. Key nulls: **no independent replication**; **no ME/CFS Hi-C/TAD/CTCF study**; **no author response to the critique**. Raw/discounted cert: Tirelli 0.35→0.35 (T5 opinion), Polli 0.55→0.44 (T3, female-only weight 0.80), Sharma 0.45→0.45 (T5 review). Cohort overlap: Polli↔Wyns OPRM1 (not ruled out) → Polli counted as 1 independent source. **Data-integrity repair:** the critique letter had been misfiled in `bib/diagnosis-assessment.bib` under a wrong key/author (`Wormgoor2026Chaff` / "Wormgoor, M.") — removed; correct `Tirelli2026WheatAndChaff` added; appendix-h entry re-annotated. Also fixed `Hunter2025` `pages = {1010}` → `{1048}` (article number).
- **Phase 2 (2026-10-15):** Decision **PROCEED** (2 papers ≥0.40: Polli 0.44, Sharma 0.45; 33% <0.40; evidence not uniformly null). Synthesis at `tmp/synthesis-episwitch-epigenetic-test-2026-10-15.md`. Clinical relevance MEDIUM; healing relevance diagnostic; subset severe/very-severe (Hunter) / unknown (Polli). Contradiction: existing "98% specificity" caveat vs Polli PC6 shared-burden axis — resolvable (both true); band rule applies (diff 0.06). Decision auditable (PRISMA-lite complete). **Active Caps: PROCEED, all env types allowed, no certainty bumps permitted (all incoming <0.60 floor), WEAK-EVIDENCE pre-fired; safety override surfaces the rituximab-Phase-III-null correction even though its vehicle is <0.40.** Standing epistemic checklist: [#1✓/#2✓/#3✓/#4✓/#5✓/#6✓/#7✓].
- **Phase 3 (2026-10-15):** Content integrated. New in `ch36 .../episwitch-3d-genomic/episwitch-3d-genomic.typ`: prose "Post-publication critical appraisal" + `#limitation` `lim:episwitch-methodological-critique` + `#open-question` `oq:episwitch-cross-condition-discrimination` + `#open-question` `oq:episwitch-generic-illness-null` + a pharmacological-caution paragraph inside `lim:cross-condition-convergence-evidence`. New in `ch36 .../dna-methylation-patterns/dna-methylation-patterns.typ`: expanded methylation subsection (Polli 2026 two-axis) + `#speculation` `spec:methylation-shared-burden-axis` + Sharma 2026 competing-framework prose. Registry: new dated block with 4 rows. ch30 (ch25) footprint: citation cross-ref only. Files: `ch36.../episwitch-3d-genomic/episwitch-3d-genomic.typ`, `ch36.../dna-methylation-patterns/dna-methylation-patterns.typ`, `part4-research/hypothesis-registry.typ`. Standing epistemic checklist per-claim: [#1✓/#2✓/#3✓/#4✓/#5✓/#6✓/#7✓].
- **Phase 3a (2026-10-15):** Intermediate build check — `nix build` exit 0, 0 `error:` lines. PASS.
- **Phase 3b (2026-10-15):** Safety gate — BIOMARKER topic, no treatment/intervention → full gate bypassed (item 2 severity-applicability only, stated per environment). 0 blocked, 0 warnings. Scratch at `tmp/safety-gate-episwitch-epigenetic-test-2026-10-15.md`.
- **Phase 3.5 (2026-10-15):** Consequence verification — all 3 new environments + 4 registry rows carry `*Consequence:*` fields. PASS.
- **Phase 4 (2026-10-15):** Brainstorm complete — **17 ideas** across all 12 categories at `ops/brainstorms/brainstorm-episwitch-epigenetic-test-2026-10-15.md`. Critical categories 10–12 = 5 ideas (the strongest section, as required). Bib keys cited verified present. Plan tracking rows added.
- **Phase 4a (2026-10-15):** Subtree `new-contents-episwitch.md` extended with nodes 14–30 (update-cycle ideas) + statuses set after Phase 5a; root index row updated (30 nodes / 16 integrated).
- **Phase 5 (2026-10-15):** Triage + integration under PROCEED caps. Integrated: ideas 1/2/10/11/12/13/14/15/16/17 (subtree 14/15/23/24/25/26/27/28/29/30). **Dedup finding:** idea 5/11's strong form ("rituximab null → B-cell-directed drugs are off-target") is *already covered and contradicted* by `ch24 @lim:rituximab-null-cannot-eliminate`, which correctly notes the null eliminates plasmablast-driven autoimmunity while plasma-cell sanctuary survives — so the strong form was NOT integrated (marked 🚫 covered-by). Tree-only research directions ⏭️: subtree 16/17/19/20/21/22. ch30 tiers — full cascade: 0, cascade trace: 0, drug-indexed: 0, citation: 1, none: rest. 0 queued child topics. Files modified: `ch36.../episwitch-3d-genomic/episwitch-3d-genomic.typ`, `ch36.../dna-methylation-patterns/dna-methylation-patterns.typ`, `part4-research/hypothesis-registry.typ`.
- **Phase 5d (2026-10-15):** **LEGIT-SKIP** — biomarker topic; no standalone causal-cascade hypothesis (no ≥3-step chain with a drug interception point introduced this cycle). The only mechanistic content is the pre-existing IL-2 axis, already handled as a citation cross-ref.
- **Phase 5c (2026-10-15):** **LEGIT-SKIP** — no medication, supplement, or intervention introduced; nothing with differential diagnostic value added to sec-12.
- **Phase 5b (2026-10-15):** Build check — `nix build` exit 0, 0 `error:` lines. PASS.
- **Phase 5a (2026-10-15):** Falsifiability + citation sweep. **Pipeline deviation — user-approved:** `falsifiability-auditor` is not **spawnable in this session** (it lives in the `scientific-writing` plugin and is registered in `opencode.json` via a `{file:}` prompt ref, but that entry carries no `description`, so the Code Mode `subagent` tool cannot enumerate it — corrected 2026-10-16; the agent exists, is not absent). The user directed the sweep to run **inline** (recorded RAN-inline). Result: 1 new `#speculation` (`spec:methylation-shared-burden-axis`) FULLY FALSIFIABLE; 2 new `#open-question` and 1 new `#limitation` correctly do not require falsifiability; pre-existing 5 speculations retain theirs. Stage 1 existence: all 9 keys resolve, **0 fabricated**, 0 unresolvable (Hunter2025, Tirelli2026WheatAndChaff, Polli2026MethylationAxes, Sharma2026MethylationUnifying, Fluge2019RituximabPhase3 DOIs verified via Crossref; Wei2025TRIM28chromatin / Ward2025CD4threeD / Lee2025CTCFenhancer / Hunter2026EpiSwitchCrossCondition present case-exact). Stage 2 fragments: 0 four-axis mismatches; noted the 92/98/96 figures belong to the study's **internal** validation cohort (four-axis "cohort" axis) and the Fluge direction (rituximab 26.0% **below** placebo 35.1%, P=0.22) is not reversed. Checklist #1/#2/#7 PASS. Fragment ledger at `ops/research/fragments-episwitch-epigenetic-test-2026-10-15.md`.
- **Phase 5z (2026-10-15):** Glossary — 3 entries added (JAK-STAT, CD20, EWAS), mirrored into EN + DE + FR. Filtered: CTCF (appears only inside a citation key), DMR (not present in prose). Pre-existing DE/FR parity gap (8 ADHD-era EN keys) logged to `ops/debt-ledger.md`; NOT introduced by this cycle.
- **Phase 6 (2026-10-15):** Retrospective adaptation. Evidence Quality Floor: incoming certainties 0.35/0.44/0.45 → **citation insertions + inline caveats only; no certainty bumps**. Matches examined 7, adapted 6, no-action 1. *Reinforcement/cross-ref:* ch36 `epigenetic-and-mirna-biomarker` (added @Polli2026MethylationAxes + cross-ref to `@oq:episwitch-cross-condition-discrimination`), ch36 `convergent-biology-despite-het` (cross-ref to `@oq:episwitch-generic-illness-null`), ch14 `sec-02-epigenetic-modifications` (cross-ref to the generic-illness null), ch08 `subsec-04-pro-inflammatory-cytokines` (inline caveat: the second IL-2 line is a single unreplicated vendor study; convergence "suggestive rather than confirmed"). *Factual corrections:* "discovery cohort" → "internal (retrospective) validation cohort" for the 92/98/96 figures in `episwitch-3d-genomic.typ`, `epigenetic-and-mirna-biomarker.typ`, and `convergent-biology-despite-het.typ` (the pre-existing prose contradicted the study's own reporting; resolved by reading the source full text — the figures are from the internal validation cohort, 96% accuracy confirmed). Tirelli (<0.40): overlap noted in report only, no pre-existing edit driven by it. No synonym-map needed (terms already in glossary). No certainty bumps.
- **Phase 7 (2026-10-15):** Cross-hypothesis compatibility (inline). 11 pairs audited: 3 reinforcement, 2 feed-into, 4 conflict/tension, 1 reinforcement-with-correction, 1 weak feed-into. **0 bumps, 0 reductions, 4 tensions flagged (no change)** — the only reduction-driving signal (`oq:episwitch-generic-illness-null`) is an open question, not evidence, so the ≥0.60 reduction requirement is unmet. No circular dependencies. Compatibility audit at `tmp/compat-audit-episwitch-epigenetic-test-2026-10-15.md`. Certainty bump log: empty (0 adjustments).
- **Phase 8 (2026-10-15):** Build verification. `nix build` exit 0, **0 `error:` lines**. Flake audits: `section-audit` PASS, `qmd-label-audit` PASS, `typst-source-audit` PASS, `blog-audit` PASS; `glossary-test` **FAILS only on the pre-existing EN→DE/FR parity gap** (8 ADHD-era keys; `glossary-tooltip` EN test 12/12 PASS) — pre-existing on HEAD, now logged in `ops/debt-ledger.md`, not introduced by this cycle.
- **Phase 9 (2026-10-15):** Quality assessment. Net certainty change 0; reinforcement:contradiction 4:0 (4 tensions flagged, no change); 1 new falsifiable prediction + 2 testable open questions; 70 insertions/8 deletions across 7 `.typ` files (est. <1,200 words); tier distribution T1 10 / tree-only 6 / covered 1; clinical relevance MEDIUM; honesty-lint **0 findings**. Flags: **BLOAT no · WEAK-EVIDENCE no (corrected — the Active Caps pre-fire was conservative but the formal trigger does not hold: decision was PROCEED and only 33% of papers are <0.40, not >50%) · CLINICAL-RISK no · G-UNSUSTAINED-CERTAINTY no · HONESTY-LINT no**. Summary appended to `tmp/synthesis-episwitch-epigenetic-test-2026-10-15.md`.
- **Phase 10 (2026-10-15):** Cross-chapter coherence. 8 files audited, **0 inconsistencies requiring a fix** (1 consistency fix already applied in Phase 6: "discovery cohort" → "internal validation cohort"). All 5 new/updated labels defined once and referenced; certainties consistent (0.50 / 0.44 / 0.35); terminology harmonised; no chapter claims EpiSwitch separates ME/CFS from fibromyalgia; all new environments carry `*Consequence:*`. **Pre-existing debt surfaced and logged (not fixed, out of scope):** appendix-i's document-wide stale chapter-numbering scheme. Audit at `tmp/coherence-audit-episwitch-epigenetic-test-2026-10-15.md`.
- **Phase 10a (2026-10-15):** High-level synthesis — the existing `syn:episwitch-epigenetic-convergence` was **extended** (not duplicated) with the new non-specificity counterweight: the burden-axis finding + the generic-illness null + the decisive ME/CFS-versus-fibromyalgia test. Chosen over adding a second `#synthesis` box to the same subsection (which would duplicate in place).
- **Phase 10b (2026-10-15):** Strategic-framing propagation — **LEGIT-SKIP.** The synthesis is a biomarker-methodology/epistemic constraint (specificity of a candidate test), not a trigger-capable mechanism, amplifier layer, diagnostic bifurcation, or treatment-strategy change → per the decision matrix, no abstract / ch16 intro / root-cause / reading-guide / ch13 update.
- **Phase 11 (2026-10-15):** Review to convergence (**FULL tier** — multi-chapter, PROCEED, >3 new environments). **Pipeline deviation — user-approved:** the six `review-adversarial` persona agents (`cynic`, `sophist`, `strawman`, `reductionist`, `devil-advocate`, plus `clinician`) are not **spawnable in this session** — they exist in the `scientific-writing` plugin and are registered in `opencode.json`, but via a `{file:}` prompt ref whose `description` frontmatter is dropped, so the Code Mode `subagent` tool cannot enumerate them (corrected 2026-10-16; the agents are not absent). Pass 11b therefore ran **inline** with the six personas simulated from the skill definition (reductionist + clinician abstained). Gating: 11a `review-convergence`, 11c `review-typst` procedures followed. Rounds: R1 = 1 HIGH + 4 MEDIUM + 4 LOW (all fixed); R2 = CONVERGED (residual LOWs only); R3 = 1 MEDIUM (escaped "first cross-condition blood-epigenetic" over-claim in two sibling locations — fixed); R4 = 1 MEDIUM (unqualified "first cross-condition methylation study" — needed scoping to the FM comparison — fixed); R5 = zero findings; R6 = zero findings → **two consecutive zero-finding rounds (R5, R6) for 11a/11c; two consecutive zero-CRITICAL/HIGH rounds (R4, R5) for 11b**. Report at `tmp/review-phase11-episwitch-epigenetic-test-2026-10-15.md`. `SLOW-CONVERGENCE`: **yes** — 6 rounds to converge, indicating the review process, not the content, was the slow element (the escaped defect was one repeated wording class across four files).

## Phase 12 — Plan-Record

- **Topic slug:** `episwitch-epigenetic-test` (UPDATE cycle 2026-10-15) | **Decision:** **PROCEED**
- **What changed and why:** a re-integration cycle for an already-integrated topic. Phase 1 found **new critical + competing evidence** the original cycle could not have had: a **published post-publication critique** of Hunter 2025 (@Tirelli2026WheatAndChaff), the **first cross-condition DNA-methylation study** in ME/CFS versus fibromyalgia (@Polli2026MethylationAxes), and a competing unifying-framework review (@Sharma2026MethylationUnifying). No independent replication of the EpiSwitch classifier exists; a `fragment-drift`-style check also corrected a factual mis-attribution inherited from cycle 1 (the 92/98/96 figures belong to the study's **internal** validation cohort, not the "discovery cohort").
- **Environments added:** 1 `#limitation` (`lim:episwitch-methodological-critique`), 2 `#open-question` (`oq:episwitch-cross-condition-discrimination`, `oq:episwitch-generic-illness-null`), 1 `#speculation` (`spec:methylation-shared-burden-axis`); plus a pharmacological-caution paragraph inside `lim:cross-condition-convergence-evidence`, an extension of `syn:episwitch-epigenetic-convergence`, and 4 registry rows. **No new `#hypothesis-box`** (none anticipated by the caps).
- **Chapters touched:** ch36 (episwitch-3d-genomic, dna-methylation-patterns, epigenetic-and-mirna-biomarker, convergent-biology-despite-het), ch14 (epigenetic modifications), ch08 (pro-inflammatory cytokines), appendix-i (registry status field), hypothesis registry.
- **Bib:** 3 papers added (`Tirelli2026WheatAndChaff`, `Polli2026MethylationAxes`, `Sharma2026MethylationUnifying`); 1 mis-attributed duplicate removed from `bib/diagnosis-assessment.bib` (a `Wormgoor2026Chaff` entry that was actually the Tirelli letter under the wrong author); `Hunter2025` `pages {1010}`→`{1048}` corrected.
- **Glossary:** 3 entries (JAK-STAT, CD20, EWAS) mirrored EN/DE/FR.
- **Key finding:** the EpiSwitch ME/CFS biomarker is now formally contested in print and still unreplicated; an independent methylation study shows blood-epigenetic ME/CFS signals can carry **both** a disease-specific and a shared illness-burden component, so the 98 % specificity figure (healthy controls only) does not establish ME/CFS-specificity, and a wholly generic-illness explanation cannot be excluded.
- **Phase 9 quality flags:** NONE (WEAK-EVIDENCE explicitly re-evaluated and found not to fire).
- **Clinical relevance:** MEDIUM (research-stage biomarker; subset severe/very-severe). **Healing relevance:** diagnostic.
- **Provenance note:** the critique's oxygen-ozone-therapy advocacy was **not** integrated as a research direction — it is recorded only as the critique's competing interest. The critique's rituximab objection was integrated **only** in its verifiable form, and hedged, after cross-checking against the more careful pre-existing `ch24 @lim:rituximab-null-cannot-eliminate`.

## Phase Ledger (Phase 12.5 completion gate) — UPDATE CYCLE 2026-10-15

| Phase | State | Evidence |
|-------|-------|----------|
| 0 | RAN | existing plan located + update-cycle section + validated |
| 1 | RAN | `ops/research/search-log-episwitch-epigenetic-test-2026-10-15.md`, `literature-…`, 3 bib entries (keys grep-verified) |
| 2 | RAN | `tmp/synthesis-episwitch-epigenetic-test-2026-10-15.md`; decision PROCEED; Active Caps written |
| 3 | RAN | 4 new environments + registry block in ch36/ch14/ch08/appendix-i |
| 3a | RAN | `nix build` PASS |
| 3b | LEGIT-SKIP | biomarker topic, no treatment/intervention → only severity-applicability applies (stated) |
| 3.5 | RAN | all new environments + registry rows carry `*Consequence:*` |
| 4 | RAN | `ops/brainstorms/brainstorm-episwitch-epigenetic-test-2026-10-15.md` (17 ideas, all 12 categories) |
| 4a | RAN | subtree nodes 14–30 + root index updated |
| 5 | RAN | triage + integration; 1 idea marked covered-by (ch24 rituximab limitation) |
| 5d | LEGIT-SKIP | biomarker topic; no standalone ≥3-step cascade with drug interception |
| 5c | LEGIT-SKIP | no medication/supplement/intervention introduced |
| 5b | RAN | `nix build` PASS |
| 5a | RAN (inline, user-approved) | falsifiability + citation battery; Stage 1 0 fabricated; Stage 2 0 mismatches; `ops/research/fragments-…-2026-10-15.md` |
| 5z | RAN | 3 glossary entries (EN/DE/FR); pre-existing parity debt logged |
| 6 | RAN | 7 matches examined / 6 adapted / 1 no-action; 3 factual corrections; 0 bumps |
| 7 | RAN | 11 pairs audited; 0 bumps, 0 reductions, 4 tensions; `tmp/compat-audit-…` |
| 8 | RAN | `nix build` 0 errors; 4/5 flake audits PASS (glossary-test pre-existing debt) |
| 9 | RAN | metrics + flags (none fired; WEAK-EVIDENCE re-evaluated) |
| 10 | RAN | `tmp/coherence-audit-…`; 0 fixes needed; 2 pre-existing debts logged |
| 10a | RAN | `syn:episwitch-epigenetic-convergence` extended with the burden-axis counterweight |
| 10b | LEGIT-SKIP | biomarker/methodological constraint → no framing layer implicated |
| 11 | RAN (11b inline, user-approved) | FULL tier; R1–R4 findings fixed; R5+R6 zero → CONVERGED; `tmp/review-phase11-…` |
| 12 | RAN | plan-record written above (no changelog.typ) |
| 12.5 | RAN | this ledger; 0 OMISSION |
| 13 | RAN | commit (below) |

**Verification (independent):** `nix build` 0 `error:` lines ✓ · every new `#speculation`/`#open-question`/`#limitation` has a `*Consequence:*` ✓ · the new `#speculation` has a falsifiability statement ✓ · hypothesis registry updated (4 rows) ✓ · all new bib keys resolve case-exact ✓.

**Result:** 0 OMISSION. All phases RAN or LEGIT-SKIP (conditions documented); 2 phases RAN-inline under explicit user authorization. Ledger clean — Phase 13 may proceed.

## Active Caps (UPDATE cycle — set by Phase 2, decision: PROCEED)- Environments allowed: all — but new content is critical/competing evidence → lands as `#limitation` / `#open-question` / `#speculation` + prose citation updates. No new `#hypothesis-box`.
- #hypothesis-box / #fhypothesis: allowed, **not expected** — do not manufacture one.
- Brainstorm categories (Phase 4): all 1–12.
- Certainty bumps (Phases 6–7): **NO bumps permitted this cycle** — every incoming certainty (0.35/0.44/0.45) is below the 0.60 Evidence Quality Floor. Contradiction caveats at ≥0.40 allowed.
- Evidence-quality caps: cite the Tirelli critique as **opinion (0.35)** with its counter-COI (OOT advocacy) inline; **never** cite it as proof of invalidity; surface the rituximab-null correction via the safety/inefficacy override; do **not** claim EpiSwitch discriminates ME/CFS from fibromyalgia.
- Phase 9 flags pre-fired: WEAK-EVIDENCE.

## Notes
- Actual first author: **Ewan Hunter** (Pshezhetskiy/Pchejetski is senior author; the trustmyscience article's "Dmitry Pshezhetskiy" lead attribution is incorrect per the paper's author list).
- The EpiSwitch paper has n=47 severe (housebound) ME/CFS + 61 controls — NOT n=210+88. The n=210+88 claim in immune.bib is fabricated and inflates certainty to 0.55; must be corrected.
