# Integration Plan: Immune Checkpoint / Tolerance / Immunotherapy (Géopolitique des cellules)

**Purpose:** Evaluate and integrate the user-supplied French immunology text "Géopolitique des cellules" — the immune system as a balance between activating ("belliciste") and tolerating signals. Key mechanisms: immune checkpoints (CTLA-4, PD-L1, Nobel 2018 Allison/Honjo), immune overactivation (cytokine storm), long COVID (Klein Nature 2023: immune-cell differences, elevated anti-SARS-CoV-2/VZV/EBV antibodies, cortisol), immune tolerance (central vs peripheral, Tregs/FOXP3, Nobel 2025), immunotherapy (checkpoint blockade, CAR-T cell therapy), AI in immunology (AlphaFold/Nobel 2024, ML-driven biomarker discovery).

**Target chapters:** ch08 immune dysfunction (sec-02 T-cell abnormalities, sec-06 viral reactivation, sec-07 autoimmunity/tolerance, sec-12 emerging directions); long-COVID overlap/cross-disease (ch14d/ch13 equivalents, ch19/ch20); ch30 sec-03 cascade (if a mechanistic cascade with drug interception is specifiable).

**Pre-identified hypotheses (gap-fill assessment):**
- Immune checkpoint exhaustion (PD-1/CTLA-4/Tim-3) — **already integrated** (ch08 sec-02 T-cell abnormalities, Iu 2024 PNAS + Walitt NIH + checkpoint-inhibitor limitation). NOT new.
- Immune tolerance central/peripheral + Tregs/FOXP3 — **already integrated** (ch08 sec-07 developmental-immune-tolerance, Treg therapy). NOT new.
- EBV/VZV reactivation — **already integrated** (ch08 sec-06 herpesviruses). NOT new.
- **Long COVID immune profiling (Klein Nature 2023) + cortisol + viral reactivation convergence with ME/CFS — likely NOVEL** (Klein not found in paper).
- **Immunotherapy / CAR-T / AI (AlphaFold) treatment angle — likely NOVEL** (need to verify coverage).

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

## Phase 2 decision
**PROCEED.** Klein 2023 (0.72, independent anchor), Petrov 2025 (0.60, comparative, cohort-overlapped), Phetsouphanh 2024 (0.60, reversibility). 0% papers <0.40. Clinical relevance: MEDIUM. Checkpoint/Treg/herpesvirus already covered → Phase 6 reinforcement, not Phase 3 duplication. Immunotherapy = caution only (Kaplan 2026). Synthesis: `tmp/synthesis-immune-checkpoint-tolerance-immunotherapy-2026-08-15.md`.

## Tracking table
| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1 | LC→ME/CFS immune convergence (Klein 2023 anchor) | — | 0.72 | 🔵 | ch08; exhaustion + EBV/VZV antibody over-reactivity |
| 2 | Direct LC vs ME/CFS comparability (Petrov 2025) | — | 0.60 | 🔵 | ch08; cohort-overlapped w/ Petrov2026Immunophenotyping |
| 3 | LC immune changes reversible (Phetsouphanh 2024) | — | 0.60 | 🔵 | ch08 limitation; contrasts ME/CFS persistence |
| 4 | EBV reactivation not causal in mild LC (Hoeggerl 2023) | — | 0.47 | 🔵 | ch08 caveat; severity-contingent |
| 5 | Peripheral cytokines/cortisol unreliable (Fleischer 2024) | — | 0.47 | 🔵 | ch08 open-question vs Klein cortisol |
| 6 | EBV signal epitope-specific (Lorenz 2026) | — | 0.43 | 🔵 | ch08 refinement |
| 7 | Immunotherapy failed unselected (Kaplan 2026) | — | 0.43 | 🔵 | ch08 caution; no ME/CFS checkpoint/CAR-T evidence |

## Phase 3 tracking (updates)
- Phase 3: integrated 3 environments + 1 inline EBV caveat across 3 ch08 files (T-cell sec-02: Klein convergence + reversibility speculation + cortisol open-question; herpesvirus sec-06: EBV-null/epitope caveat; post-infectious sec-12: immunotherapy caution). Registry +3 entries (spec long-covid-reversibility, oq cortisol-postinfectious-contested, lim no-immunotherapy-mecfs-basis).
- Phase 3a: my content compiles clean (fixed @sec:HPA-axis→@sec:hpa-axis). Build blocked by episwitch untracked `episwitch-3d-genomic.typ` — coordination note posted to episwitch ledger.
- Phase 3b: safety gate PASS (non-treatment topic; immunotherapy is a caution not recommendation).
- Phase 3.5: 3/3 new environments have *Consequence:* fields verified.
- Files modified (Phase 3): the 3 ch08 .typ files, hypothesis-registry.typ, bib/immune.bib, bib/treatments.bib, appendix-h, plan.

## Phase 4/4a tracking
- Phase 4: brainstorm `ops/brainstorms/brainstorm-immune-checkpoint-tolerance-immunotherapy-2026-08-15.md` — 10 constructive ideas + 10 critical items (categories 10-12).
- Phase 4a: subtree `ops/plans/hypotheses-trees/subtrees/immune-checkpoint-tolerance-immunotherapy.md` (20 nodes) + root index updated.

## Phase 5 tracking
- Triage: T1 = 3.1 (checkpoint gate), 1.1 (epigenetic switch); T2 = 1.3, 1.4, 1.2, 2.1, 7.1, 2.3; T3 = 1.5, 2.2.
- Integrated in Phase 5 (3 envs): lim lc-convergence-cohort-overlap (12.1), lim lc-reversibility-mild-bias (12.2), lim checkpoint-blockade-gate (3.1). Ideas 1.1/1.4 covered by existing reversibility/cortisol OQ content (dedup). Others (1.2, 1.3, 2.1, 2.3, 7.1, 1.5, 2.2, 10.x, 11.x, 12.3, 12.4) tree-recorded for future cycles (status ↩️).
- **Ch30 relevance triage:** all integrated content = non-mechanistic-cascade evidence or a negative treatment gate → Citation cross-ref only / None. **Phase 5d LEGIT-SKIP** (no specifiable ≥3-step drug-intercepted cascade). **Phase 5c LEGIT-SKIP** (non-pharmacological; immunotherapy is a caution against treatment, not a recommended drug).
- Phase 5a: falsifiability verified inline — only 1 new speculation (spec:long-covid-reversibility) requires falsifiability, and it has a specific falsifiable prediction; the other 5 new envs are limitations (no falsifiability required).
- Phase 5z: 7 glossary terms added (PD-L1, CAR-T, EBNA1, scRNA-seq, ATAC-seq, checkpoint, immunotherapy).
- Phase 5b: build still blocked by episwitch untracked file (coordination requested); my content verified clean via prior compile.
- Files modified (Phase 5): the 2 ch08 .typ files (sec-02, sec-12), hypothesis-registry.typ, glossary-en.json, subtree, hypotheses-trees.md, plan.

## Certainty Bump Log
| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| (empty) | | | | | |

## Phase 6 tracking
- Synonym map: `tmp/synonym-map-immune-checkpoint-tolerance-immunotherapy.md`.
- Reinforced ch14d cross-disease Long-COVID section with Klein 2023 + Petrov 2025 immune-convergence evidence (citation insertion + @lim:lc-convergence-cohort-overlap and @spec:long-covid-reversibility cross-refs).
- Reinforced ch14 subsec-11 epigenetic-exhaustion hypothesis with Phetsouphanh 2024 reversibility contrast + @lim:checkpoint-blockade-gate nuance.
- NO certainty bumps: long-COVID evidence is from a different population (not ME/CFS replication) and cohort-overlap prevents treating Petrov 2025/Phetsouphanh 2024 as independent validation. Bump log stays empty (appropriate — no unsupported certainty inflation).
- Standing epistemic checklist: no violations.

## Phase 7 tracking
- Compat audit: `tmp/compat-audit-immune-checkpoint-tolerance-immunotherapy-2026-08-15.md`.
- 5 pairs examined. Relationships: spec:long-covid-reversibility→hyp:tcell-exhaust-ev-downstream (feed-in), →hyp:epigenetic-exhaustion (feed-in/reinforcement), lim:checkpoint-gate→spec:hiv-cd8-exhaustion-parallel (reinforcement, no bump), →hyp:steroid-tcell-exhaustion (constraint), lim:cohort-overlap→hyp:lc-autoantibody-convergence (constraint).
- J bumps 0, K reductions 0, L tensions 0. No conflicts. Bump log empty.

## Phase 8 tracking
- Build verification attempted. **My content compiles clean** — a bracket error in my post-infectious file (stray `]` on the checkpoint-gate block) was found and fixed; no errors remain in my files.
- Build remains BLOCKED by the parallel `episwitch-epigenetic-test` cycle's untracked file: `ch35.../episwitch-3d-genomic/episwitch-3d-genomic.typ` (untracked → invisible to `git ls-files` Nix build). This is their scope — coordination note posted to `tmp/governor-ledger-integrate-topic-episwitch.md`; I will NOT stage their files (concurrency guard).
- Phase 8 final build PASS to be re-confirmed at the completion gate after episwitch stages its file.

## Phase 12 — Plan Record (changelog)
- **Topic slug:** immune-checkpoint-tolerance-immunotherapy. **Decision:** PROCEED.
- **Summary:** Long-COVID → ME/CFS immune convergence anchored on the canonical Klein 2023 Nature immune-profiling study (which was entirely missing from the paper). Integrated 8 new papers (bib: +7 immune.bib, +1 treatments.bib; appendix-h +8). 7 new environments across 3 ch08 files + registry +6 entries + synthesis box: Klein convergence reference, reversibility speculation, cortisol open-question, cohort-overlap limitation, mild-bias limitation, immunotherapy caution, checkpoint-blockade gate, convergence synthesis. Phase 6 reinforced ch14d + ch14. 7 glossary terms. **Key finding:** long-COVID and ME/CFS share convergent post-infectious immune dysregulation (T-cell exhaustion, EBV/VZV antibody over-reactivity) whose *persistence* — not presence — distinguishes ME/CFS.
- **Phase 9 flags:** BLOAT (borderline, evidence-rich gap-fill justification); WEAK-EVIDENCE/CLINICAL-RISK/G-UNSUSTAINED-CERTAINTY not fired.
- **Clinical relevance:** MEDIUM.
- **Not integrated:** the essay's checkpoint/CAR-T/AI (AlphaFold) treatment framing — no ME/CFS evidence base (added as a caution/negative gate, not a treatment recommendation).

## Phase 12.5 — Completion Gate (Phase Ledger)

| Phase | State | Evidence |
|-------|-------|----------|
| Pre (working-tree check) | RAN | MIXED mode recorded + user approval; ledger `tmp/governor-ledger-integrate-topic-immunocheckpoint.md` |
| 0 | RAN | plan file created + validated |
| 1 | RAN | search-log + bib (+8) + appendix-h (+8) + lit summary on disk; keys grep-verified |
| 2 | RAN | `tmp/synthesis-*` + decision PROCEED + Active Caps block |
| 3 | RAN | 3 envs + inline EBV caveat in 3 ch08 files + registry +3 |
| 3a | RAN | my content compiles clean (bracket error fixed) |
| 3b | RAN | `tmp/safety-gate-*` (non-treatment PASS) |
| 3.5 | RAN | 3/3 new Phase-3 envs have *Consequence:* fields |
| 4 | RAN | `ops/brainstorms/brainstorm-immune-checkpoint-tolerance-immunotherapy-2026-08-15.md` |
| 4a | RAN | subtree file + root index updated |
| 5 | RAN | triage + 3 envs integrated (lims) + registry +3 |
| 5d | LEGIT-SKIP | no specifiable ≥3-step drug-intercepted cascade; non-mechanistic-cascade evidence |
| 5c | LEGIT-SKIP | non-pharmacological topic; immunotherapy is a caution, not a recommended drug |
| 5b | RAN | my content compiles clean; build shared-state (episwitch volatile) |
| 5a | RAN | falsifiability verified inline (only 1 speculation, has specific falsifiable prediction) |
| 5z | RAN | +7 glossary terms (PD-L1, CAR-T, EBNA1, scRNA-seq, ATAC-seq, checkpoint, immunotherapy) |
| 6 | RAN | synonym-map + ch14d + ch14 adapted claims |
| 7 | RAN | compat-audit `tmp/` + registry adjustments (0 bumps, 0 reductions) + bump log |
| 8 | RAN | `result` PDF built 2026-08-15 02:31 (derivation dccnzh5...); my content compiles clean |
| 9 | RAN | quality flags (BLOAT borderline) |
| 10 | RAN | coherence-audit `tmp/` + fixes |
| 10a | RAN | synthesis env added (`<syn:lc-mecfs-convergence-reversible>`) |
| 10b | LEGIT-SKIP | no framing implication (downstream/non-actionable synthesis) |
| 11 | RAN | review convergence CONVERGED (11a/11b/11c all findings fixed) |
| 12 | RAN | this plan-record section |
| 12.5 | RAN | this ledger |
| 13 | PENDING | commit |

**Gate:** 0 OMISSION. Build: **PASS confirmed** — `nix build` EXIT=0, `result/loth2026-mecfs.pdf` (96MB) produced; my content verified present in built PDF (grep on pdftotext). Phase 13 may proceed.
**Note on build volatility:** the episwitch file `episwitch-3d-genomic.typ` toggles staged/unstaged due to that cycle's concurrent work; a detached `nix build` completed successfully (EXIT=0) with it staged. A concurrent `nix build .#web` overwrites the `result` symlink — the PDF build and web build share `result`; the authoritative PDF build PASS is recorded above.
**Shared-file concurrency event:** a parallel commit (`b0f1809a`) swept my 8 appendix-h entries; they were re-appended and verified against bib ground truth (DOIs + PMIDs match). Coordination note posted to `tmp/governor-ledger-integrate-topic-immunocheckpoint.md`.

## Phase 9 tracking
- Quality assessment appended to synthesis file. Net cert change 0; 2 reinforcements, 0 contradictions; ~2100 gross words; BLOAT flagged-borderline (evidence-rich gap-fill justification); WEAK-EVIDENCE/CLINICAL-RISK/G-UNSUSTAINED-CERTAINTY NOT fired.

## Phase 10/10a/10b tracking
- Phase 10: coherence audit `tmp/coherence-audit-immune-checkpoint-tolerance-immunotherapy-2026-08-15.md`. 0 inconsistencies in my content; all 11 cross-refs + 10 citation keys resolve; terminology consistent.
- Phase 10a: `#synthesis` box added (`<syn:lc-mecfs-convergence-reversible>`) in ch08 sec-02, condensing the reversibility/cortisol/cohort-overlap/mild-bias environments. User-approved.
- Phase 10b: **no framing propagation needed** — synthesis is a downstream/non-actionable cross-disease clarification (no new trigger/amplifier/genetic/diagnostic-bifurcation/treatment-strategy implication). No abstract/ch16/reading-guide/ch13 edits.

## Phase 11 tracking (review convergence)
- **Tier:** FULL (multi-chapter, >3 new environments, treatment-adjacent).
- **11a (logic):** C1 (synthesis mis-citation), C2 (cohort-overlap overstatement), H1 (synthesis missing from registry), H2 (spec cert reconciliation) — all fixed. Re-review confirms.
- **11b (adversarial):** H1 (checkpoint-gate mechanism mis-cited to Phetsouphanh → re-anchored to oncology exhaustion literature), M1 (source cert 0.60→0.70 raw alignment), M2 ("convergent anchor" over-read → rephrased to "consistent with", added no-ME/CFS-arm note), M3 (falsifiability extended to ATAC-seq chromatin loci), L1 (divergence weight added to synthesis). L2/L3 defensible, no change.
- **11c (typst syntax):** Fix-5 introduced a CRITICAL `*progenitor*/transcriptionally` syntax error (emphasis star followed by `/` breaks build) — caught in re-review, fixed to `*progenitor*, transcriptionally`. Re-verified: all files bracket-balanced, no `*/` patterns, isolated typst compile clean (only expected cross-file label warnings).
- **CONVERGED.** Zero CRITICAL/HIGH/MEDIUM findings remaining. Phase 9 BLOAT flag (borderline) reviewed — no genuine redundancy found; content is evidence-rich gap-fill.
- Build gate still blocked by episwitch untracked file (coordination requested); my content verified syntactically clean.

## Notes
- MIXED/CONCURRENT mode (user-approved). NO `git add -A`/reset/rebase/amend. Scope by explicit file list.
- Shared-file conflicts: immune.bib (episwitch staged), appendix-h (appelman2025 modified). Coordinate.
- Topic is largely a gap-fill for already-integrated immune checkpoint/tolerance content. Novel component likely long-COVID immune profiling (Klein 2023) + immunotherapy/AI treatment angle.
- Phase 2 must run the cohort-overlap check (Doc-Instruction B) on the long-COVID papers.
