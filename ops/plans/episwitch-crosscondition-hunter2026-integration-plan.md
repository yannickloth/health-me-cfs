# Integration Plan: EpiSwitch Cross-Condition Network Convergence (Hunter 2026)

**Purpose:** Evaluate and integrate Hunter et al. 2026 (*J Transl Med*, DOI 10.1186/s12967-026-08874-9) — an in-silico systems-biology analysis using the EpiSwitch/Orion platform + GWAS-derived 3D anchors to claim shared regulatory-network convergence across ME/CFS, Long COVID, PTSD, MS, RA. Primary contribution candidate: network-level (not gene-level) shared biological architecture; hub genes RUNX1, PPARGC1A, STAT1, CDH2, LAG3, mTOR components.

**Topic slug:** `episwitch-crosscondition-hunter2026`
**Parent topic:** `episwitch-epigenetic-test` (subtree `new-contents-episwitch.md`, row #5 cross-condition proposal)
**File:** `Literature/mechanisms/s12967-026-08874-9_reference.pdf`
**Date:** 2026-09-04
**MIXED/CONCURRENT mode:** Tree dirty with untracked `ops/plans/mitochondrial-dysfunction-mecfs-longcovid-integration-plan.md`. No shared-branch WIP commits; rollback = `git checkout <ref> -- <file>`; phases scoped by explicit file lists, NOT `git diff`. Shared-file entries tracked by key.

## IMPORTANT scope note (distinguish from parent-cycle idea #5)
The parent plan's brainstorm idea #5 ("cross-condition specificity study") envisioned a **new-cohort diagnostic discrimination** test (ME/CFS vs FM/depression/LC). This 2026 paper is **NOT that** — it is an in-silico network-convergence analysis across existing GWAS/3D datasets. It does NOT add new patient cohorts or test diagnostic specificity against comorbidities. This distinction must frame integration (a hypothesis-generating network claim, not a diagnostic-specificity result).

## Target chapters
- `src/main/typst/mecfs/part2-pathophysiology/ch14d-cross-disease/` or `ch13` (cross-disease network convergence) — primary
- `src/main/typst/mecfs/part4-research/ch35-biomarker-research/` (extension of existing episwitch-3d-genomic section)
- Hypothesis registry, ch14 (epigenetics/3D genome), possibly ch30 cascade (if a ≥3-step cascade with drug interception emerges)
- Existing `episwitch-3d-genomic/episwitch-3d-genomic.typ` section for update

## Pre-identified hypotheses (preliminary certainty)
- Shared network-level (not gene-level) regulatory architecture across ME/CFS, LC, PTSD, MS, RA exists (discounted certainty: raw ~0.30 in-silico × 0.30 population weight ≈ 0.09–0.30) — LOW; hypothesis-generating only.
- RUNX1-PPARGC1A-STAT1 as a candidate shared regulatory axis / "metabolic-immune" convergence hub (LOW, in-silico only)
- LAG3 (T-cell exhaustion) connects to ME/CFS regulatory network (LOW; supported by independent literature but here network-derived)
- 3D-genome regulatory state as substrate for convergence — extends parent cycle's "frozen chromatin" hypothesis (MEDIUM via parent, but this paper adds only in-silico support)

## Active Caps (set by Phase 2 — decision: PARTIAL)
- Environments allowed: speculation/open-question/limitation ONLY
- #hypothesis-box / #fhypothesis: FORBIDDEN even if idea cert ≥0.45 or Phase 7 bump crosses 0.45
- Brainstorm categories (Phase 4): 1–2 + 10–12 ONLY (skip 3–9)
- Certainty bumps (Phases 6–7): capped — no bump may cross 0.45
- Phase 9 flags pre-fired: WEAK-EVIDENCE

## Tracking table
| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|---|---|---|---|---|
| 1 | Cross-condition 3D-network convergence is a hypothesis (not demonstrated shared biology) | — | 0.20 | ✅ done | Integrated as #speculation (hyp:cross-condition-3d-convergence), ch36 |
| 2 | Cross-disease convergence evidence is vendor-dependent + unvalidated | — | n/a | ✅ done | Integrated as #limitation (lim:cross-condition-convergence-evidence), ch36 |
| 3 | Permutation-null test of convergence (open-source, degree-matched) | 2 | 0.65 | ⏭️ future | R2; not integrated (research direction) |
| 4 | Degree-matched hub control (STRING hub-bias test) | 2 | 0.60 | ⏭️ future | R3; not integrated |
| 5 | Non-proprietary open-source 3D re-analysis of 5 GWAS sets | 2 | 0.60 | ⏭️ future | R1; not integrated |
| 6 | LAG3/sLAG3 as genuinely cross-condition exhaustion marker | 1 | 0.25 | ⏭️ future | H2/R4; not integrated (needs cohort data) |
| 7 | RUNX1/STAT1/PPARGC1A are generic stress/immune hubs (competing) | 10-12 | 0.45 | ⏭️ future | C3/N1; covered in limitation caveats |

## Certainty bump log
_(empty — populated by Phases 6/7)_

## Phase reports
- **Phase 0 (2026-09-04):** plan created + validated. Scope clarified vs parent idea #5. Working tree MIXED (unrelated mitochondrial plan untracked). Paper read in full; key caveats noted (vendor COI 11/14 authors; funded by OBD; no permutation testing; hypothesis-generating only; disease- not phenotype-centric).
- **Phase 1 (2026-09-04):** 4 papers added to `bib/genetics-epigenetics.bib` (research_stream=episwitch-crosscondition-hunter2026; keys verified via grep). Search log at `ops/research/search-log-episwitch-crosscondition-hunter2026-2026-09-04.md`. Summary at `ops/research/literature-episwitch-crosscondition-hunter2026-2026-09-04.md`. Keys: `Hunter2026EpiSwitchCrossCondition`, `Lammi2025LongCOVIDGWAS`, `Ueland2025sLAG3postCovid`, `Dudova2025MECFSBiologicalNetwork`. Null evidence: no independent hub validation; ME/CFS-LC GWAS loci disjoint; no permutation test. Vendor COI flagged.
- **Phase 2 (2026-09-04):** Decision **PARTIAL** (WEAK-EVIDENCE pre-fired). Synthesis at `tmp/synthesis-episwitch-crosscondition-hunter2026-2026-09-04.md`. Evidence mixed: 1 strong (Lammi 0.72, GWAS context), 1 moderate (Ueland 0.47, sLAG3 support), 2 weak (Hunter 0.11 in-silico, Dudova 0.30). Convergence claim is in-silico, vendor-funded, un-validated → hypothesis only. Active Caps block written (PARTIAL). Clinical relevance LOW. Standing epistemic checklist: #1-5 ✓, #6 N/A.
- **Phase 3 (2026-09-04):** Content integrated under PARTIAL caps (speculation/open-question/limitation ONLY). Appended to `ch36-biomarker-research/genomic-and-epigenetic-biomark/episwitch-3d-genomic/episwitch-3d-genomic.typ`: prose intro (Hunter 2026) + `#speculation` `<hyp:cross-condition-3d-convergence>` (cert 0.20, falsifiability, consequence, severity caveat, vendor-COI/no-permutation/no-hub-validation) + `#limitation` `<lim:cross-condition-convergence-evidence>`. Added 2 registry rows (`spec cross-condition-3d-convergence`, `lim cross-condition-convergence-evidence`). Severity applicability stated (unknown for network claim; severe/very-severe cohort reused).
- **Phase 3a (2026-09-04):** Intermediate build check — PASS (`nix build` exit 0 after fixing one stale internal label reference). Pre-existing appendix-h `**` star warning (energy-envelope entry) non-fatal, not from this cycle.
- **Phase 3b (2026-09-04):** Safety gate — BIOMARKER topic, no treatment/intervention → full gate bypassed (item 2 severity only). Severity applicability stated (unknown for network claim). Scratch at `tmp/safety-gate-episwitch-crosscondition-hunter2026.md`. 0 blocked.
- **Phase 3.5 (2026-09-04):** Consequence verification — both new environments (hyp:cross-condition-3d-convergence, lim:cross-condition-convergence-evidence) carry `*Consequence:*` fields. PASS.
- **Phase 4 (2026-09-04):** Brainstorm (PARTIAL caps: cat 1-2 + 10-12 only, no drug/intervention). 15 ideas at `ops/brainstorms/brainstorm-episwitch-crosscondition-hunter2026-2026-09-04.md` (6 cat1 hypotheses, 5 cat2 research, 4 cat10-12 critical). Top: R2 permutation-null, R3 degree-matched hub control, R1 open-source 3D re-analysis, N1 formal null, C2 circular-translation risk. Critical sections (C1/C2 cert 0.70-0.80, N1 0.45, C3 0.60) advise NOT integrating as corroborating evidence. Deferred cat 3-9 (weak evidence).
- **Phase 4a (2026-09-04):** Subtree created `ops/plans/hypotheses-trees/subtrees/new-contents-episwitch-crosscondition-hunter2026.md` (7 nodes: 2 integrated, 5 ⏭️ research proposals). Parent subtree `new-contents-episwitch.md` row #13 added + child-subtree link. Root index `hypotheses-trees.md` row added.
- **Phase 5 (2026-09-04):** Triage under PARTIAL caps. No additional content integration — Phase 3 speculation (hyp:cross-condition-3d-convergence) captures the hypothesis ideas (H1-H6 synthesis); the limitation (lim:cross-condition-convergence-evidence) folds in critical categories C1/C2/N1/C3 (COI, circularity, null, hub-bias). Research directions R1-R5 (permutation-null, degree-matched hub control, open-source re-analysis, sLAG3 longitudinal, ChIP/ATAC) recorded as ⏭️ future-cycle proposals in subtree (NOT integrated — weak evidence, no validated target). Per brainstorm guard: not integrated as corroborating evidence. Cat 3-9 deferred.
  - **Phase 5 Safety Gate (drug-interaction pre-check):** LEGIT-SKIP — no drug/intervention content (PARTIAL caps excluded cat 3-9).
  - **Phase 5c (differential analysis):** LEGIT-SKIP — no new medication with differential diagnostic value introduced.
  - **Phase 5d (pathway-to-drug tracing):** LEGIT-SKIP — network-level convergence hypothesis, no specifiable ≥3-step biochemical causal chain with a ch30 drug interception point; no standalone cascade entry.
  - **Phase 5b (build check):** PASS — nix build exit 0 (run as Phase 3a after content edit; re-verified above).
  - **Phase 5a (falsifiability sweep):** PASS — new #speculation (hyp:cross-condition-3d-convergence) carries a concrete falsifiability criterion (independent non-proprietary 3D re-analysis with degree-matched permutation null failing to reproduce convergence). #limitation is a limitation (no falsifiability required). Inline verification adequate (single speculation).
  - **Phase 5z (glossary):** LEGIT-SKIP — no genuinely new terminology; EpiSwitch/chromatin/TAD/TRIM28 already in `resources/glossary-en.json` (prior episwitch cycle). "3D-genomic anchor"/"network convergence" are methodological terms explained inline in content.
- **Phase 6 (2026-09-04):** Retrospective adaptation. Swept prior EpiSwitch claims: the prior episwitch section's "cross-condition specificity UNTESTED" claim REMAINS ACCURATE (this 2026 paper is a network-convergence analysis, NOT a diagnostic-specificity cohort study — it does not resolve that gap). The 96%/92%/98% figures are correctly attributed to the prior Hunter2025 classifier, NOT re-presented as new validation (verified in my Phase 3 content). No certainty bumps (all evidence <0.60 floor; primary 0.11). No factual corrections needed. No synonym-map needed (new terms explained inline).
- **Phase 7 (2026-09-04):** Cross-hypothesis compatibility. cross-condition-3d-convergence weakly reinforces cd8-mito-fragmentation-exhaustion (PPARGC1A/mito content), feeds into episwitch-3d-chromatin + frozen-chromatin nodes; caveat extends episwitch-caveats. **No certainty adjustments** (all <0.60 bump floor; in-silico 0.20 does not strengthen single-disease mechanisms). No conflicts, no circular deps. `[compat note]` registry row added. Audit at `tmp/compat-audit-episwitch-crosscondition-hunter2026-2026-09-04.md`.
- **Phase 8 (2026-09-04):** Build verification. `nix build` PASS (exit 0). `nix flake check`: ONLY `glossary-test`/`glossary-parity` FAILS — pre-existing, unrelated (keys MRSI/PGIC/IMC-2 added to glossary-en.json by prior committed cycle `844a64b3` without mirroring to glossary-de.json; my cycle has NO diff on either glossary file, verified via `git diff --stat` empty). Section-audit/qmd-label/typst-source/blog audits pass. Flagged as pre-existing shared-branch issue, NOT in this cycle's scope (out-of-scope German translation file).
- **Phase 9 (2026-09-04):** Quality assessment. Net certainty change 0. 1 new falsifiable prediction. Small content (~1 prose para + 2 envs + 3 registry rows). Flags: WEAK-EVIDENCE FIRED + addressed (limitation env + caveats); BLOAT/CLINICAL-RISK/G-UNSUSTAINED-CERTAINTY not fired. Summary appended to synthesis.
- **Phase 10 (2026-09-04):** Cross-chapter coherence. 0 inconsistencies. Certainty consistent (0.20/n/a), terminology consistent (convergence framed as hypothesis, never validated), no contradiction with DecodeME (disjoint loci) or prior EpiSwitch diagnostic (0.50, not bumped), all cross-refs resolve. Audit at `tmp/coherence-audit-episwitch-crosscondition-hunter2026-2026-09-04.md`.
- **Phase 10a (2026-09-04):** High-level synthesis — LEGIT-SKIP. Existing `syn:episwitch-epigenetic-convergence` already covers within-ME/CFS convergence; folding the cert-0.20 in-silico cross-disease claim into a high-level synthesis would over-state weak evidence. Not warranted.
- **Phase 10b (2026-09-04):** Strategic-framing propagation — LEGIT-SKIP. PARTIAL/weak downstream hypothesis-generating finding (non-actionable) → per decision matrix, no abstract/ch16/reading-guide/ch13 framing update.
- **Phase 11 (2026-09-04):** Review to convergence (limited tier — 1 speculation + 1 limitation, single file). Focused scientific-rigor/anti-overclaim review: content does NOT overstate weak evidence (cert 0.20, "not established biology" framing), vendor COI prominent, no-hub-validation + no-permutation acknowledged, constituent-biology-vs-convergence-claim distinguished, GWAS-disjoint caution present, severity applicability stated, falsifiability + consequence present. Round 1: 0 findings → CONVERGED.

## Phase 12 — Plan-Record

- **Topic slug:** `episwitch-crosscondition-hunter2026` | **Decision:** PARTIAL (WEAK-EVIDENCE)
- **Environments added:** 1 `#speculation` (hyp:cross-condition-3d-convergence, cert 0.20) + 1 `#limitation` (lim:cross-condition-convergence-evidence) + 1 prose intro, in `ch36` episwitch-3d-genomic section. 3 registry rows (spec cross-condition-3d-convergence, lim cross-condition-convergence-evidence, compat note).
- **Chapters touched:** ch36 (episwitch-3d-genomic section extension only). No other chapter content modified.
- **Bib:** 4 papers added (research_stream=episwitch-crosscondition-hunter2026): Hunter2026EpiSwitchCrossCondition, Lammi2025LongCOVIDGWAS, Ueland2025sLAG3postCovid, Dudova2025MECFSBiologicalNetwork. Appendix-h annotated.
- **Glossary:** none (existing EpiSwitch/chromatin/TAD/TRIM28 entries suffice).
- **Key finding:** Hunter 2026 reports in-silico network-level convergence across ME/CFS, LC, PTSD, RA, MS (RUNX1-PPARGC1A-STAT1) despite disjoint gene-level GWAS overlap — but it is a vendor-funded, in-silico-only analysis (no permutation test, no hub validation). Integrated as a heavily-caveated hypothesis (cert 0.20), NOT established cross-disease biology.
- **Phase 9 quality flags:** WEAK-EVIDENCE (addressed via limitation + caveats); BLOAT/CLINICAL-RISK/G-UNSUSTAINED-CERTAINTY not fired.
- **Clinical relevance:** LOW (research-only hypothesis). Severity applicability unknown for network claim.
- **Prior-state relationship:** Extends parent `episwitch-epigenetic-test` cycle (Hunter2025). Does NOT resolve that cycle's deferred diagnostic-specificity question (idea #5) — this is a network analysis, not a cohort-specificity study. Does NOT re-present 96% diagnostic figure as new validation.
- **Phase 1 (2026-09-04):** literature research complete. Search log `ops/research/search-log-episwitch-crosscondition-hunter2026-2026-09-04.md`; summary `ops/research/literature-episwitch-crosscondition-hunter2026-2026-09-04.md`. 4 NEW bib entries appended to `bib/genetics-epigenetics.bib` (keys: Hunter2026EpiSwitchCrossCondition, Lammi2025LongCOVIDGWAS, Ueland2025sLAG3postCovid, Dudova2025MECFSBiologicalNetwork); 4 annotated entries appended to appendix-h. Most independent exhaustion/mito support already in corpus (Iu2024CD8Exhaustion, Shahbaz2026single-cell-immune, VanCampenhout2025EnergyImmune — reused not re-added). NULL: no direct hub-gene (RUNX1/LAG3/PPARGC1A) ME/CFS validation exists; ME/CFS vs LC GWAS loci disjoint (contests gene-overlap framing); no independent cross-condition network-convergence study found. Primary discounted certainty ~0.11 (in-silico × 0.30, no permutation test, vendor-funded). Awaiting Phase 2 integration decision (expected PARTIAL/WEAK-EVIDENCE given in-silico-only primary + COI).
