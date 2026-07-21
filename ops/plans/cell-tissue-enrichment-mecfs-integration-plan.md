# Integration Plan: Cell and Tissue Enrichment in ME/CFS

**Purpose:** Integrate findings from GWAS-gene expression enrichment analyses (DecodeME + MVP) showing neuronal cell type association with ME/CFS — particularly medium spiny neurons (striatum). Converts a pre-existing genetic signal into cell-type and tissue-level localization of ME/CFS pathology.

**Target chapters:**
- ch08 (neuro / brain mechanisms)
- ch06 (genetics)
- ch13 (integrative models / cross-disease)
- Part 4 (hypothesis registry)

**Pre-identified hypotheses:**
- ME/CFS genetic risk converges on neuronal cell types, not immune cells
- Medium spiny neurons (striatum) are the most specific cell-type hit
- Striatal dysfunction as common endpoint for heterogeneous upstream pathology ("symptom signalling" hypothesis)
- Preliminary certainty: 0.35–0.45 (multiple methods converging, but cell-type specificity at fine level is method-dependent)
- **MODE: MIXED** — unrelated files in working tree. No shared-branch WIP commits; rollback via `git checkout <ref> -- <file>` (NEVER reset/rebase/amend); all phases scoped by explicit file lists, NOT `git diff`.

## Tracking Table

| # | Idea | Tier | Certainty | Status | Notes |
|---|------|------|-----------|--------|-------|
| 1.1 | Immune null as positive: acquired immune pathology | T1 | 0.55 | ⏭️ covered-by-@syn:genetic-neuronal-convergence | Already in Phase 3 synthesis |
| 1.2 | MSN transcriptional tag hypothesis | T2 | 0.35 | ↩️ tree-only | Tier 2 — available for future cycles |
| 1.3 | Developmental cortico-striatal window | T2 | 0.20 | ↩️ tree-only | Tier 2 |
| 1.4 | Atlas cross-validation as causal inference | T2 | 0.25 | ↩️ tree-only | Tier 2 |
| 2.1 | PsychENCODE cell-type-specific eQTL S-LDSC | T2 | 0.30 | ↩️ tree-only | Tier 2 |
| 2.2 | iPSC-derived striatal organoid eQTL validation | T3 | 0.15 | ↩️ tree-only | Tier 3 |
| 2.3 | Enrichment robustness audit (parameter perturbation) | T2 | 0.25 | ↩️ tree-only | Tier 2 |
| 3.1 | Solriamfetol trial stratified by VMAT2 PET | T2 | 0.30 | ↩️ tree-only | Tier 2 |
| 3.2 | Memantine + amantadine by Glu-PRS/DA-PRS | T3 | 0.20 | ↩️ tree-only | Tier 3 |
| 3.3 | Aripiprazole low-dose for D1/D2 balance | T3 | 0.15 | ↩️ tree-only | Tier 3 |
| 4.1 | MitoQ + taurine + Mg-threonate striatal support | T3 | 0.15 | ↩️ tree-only | Tier 3 |
| 5.1 | Micro-dosing activity for dopamine-effort resensitization | T3 | 0.10 | ↩️ tree-only | Tier 3 |
| 5.2 | Striatal sensory gating training | T3 | 0.10 | ↩️ tree-only | Tier 3 |
| 6.1 | Severity-stratified MSN-targeted protocol | T3 | 0.10 | ↩️ tree-only | Tier 3 |
| 7.1 | MSN Enrichment Index | T3 | 0.10 | ↩️ tree-only | Tier 3 |
| 7.2 | Cell-type heritability decomposition tensor | T3 | 0.10 | ↩️ tree-only | Tier 3 |
| 8.1 | Cross-disease MSN enrichment rank-order test | T2 | 0.20 | ↩️ tree-only | Tier 2 |
| 10.1 | Depression comorbidity confounding | CC | 0.35 | ⏭️ covered-by-@lim:cell-type-enrichment-caveats | Shared enrichment noted in limitation |
| 10.2 | Immune null power problem | CC | 0.30 | ⏭️ covered-by-@syn:genetic-neuronal-convergence | "effect sizes below GWAS detection threshold" |
| 10.3 | Enrichment is correlational, not causal | CC | 0.25 | ⏭️ covered-by-@lim:cell-type-enrichment-caveats | "MSNs may tag a broader process" |
| 11.1 | Null: enrichment pattern tracks measurement noise | CC | 0.15 | ⏭️ covered-by-@lim:cell-type-enrichment-caveats | Method-dependent resolution noted |
| 11.2 | Null: enrichment reflects general biological noise | CC | 0.15 | ⏭️ covered-by-@hyp:brain-first-genetic | Brain-first model falsifiable predictions |
| 11.3 | Null: immune signal exists but power insufficient | CC | 0.35 | ⏭️ covered-by-@syn:genetic-neuronal-convergence | Acquired vs inherited discussed |
| 12.x | Evidence quality concerns (7 items) | CC | — | ⏭️ covered-by-multiple | Preprint status, n=3 HBA donors, cross-species, etc. already in ach/lim/syn |

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

## Phase Reports

| Phase | Summary |
|-------|---------|
| 1 | 15 papers found (5 existing + 10 new). Bib: 9 entries to genetics-epigenetics.bib, 1 to pathophysiology-general.bib. Search log: ops/research/search-log-cell-tissue-enrichment-2026-07-21.md. Bib keys: Chaudhuri2000basalganglia, BulikSullivan2015LDSC, deLeeuw2015MAGMA, Finucane2018stratifiedLDSC, Skene2018brainCellTypes, Duncan2025cellTypeBrain, Saunders2018Dropviz, Lee2026geneticOverlap, Snyder2025rareBrain, GTExConsortium2020. All verified against bib files. |
| 2 | **Decision: PROCEED.** 4 strong papers (≥0.60), 3 moderate, 0 weak ME/CFS-specific. 3 independent evidence lines (DecodeME GWAS, MVP extension, Snyder WES). Clinical relevance: LOW. No fundamental contradictions. Cohort overlap: DecodeME + Maccallini share primary GWAS. Immune cell enrichment: null. |
| 3 | 4 environments added/modified across ch08 (neurotransmitter abnormalities — new achievement, hypothesis, updated limitation and open question), ch12 (updated achievement, new synthesis), hypothesis registry (4 new entries). Files: ch08/subsec-01-neurotransmitter-abnormalities.typ, ch12/ach-decodeme-brain-tissue-enrichment.typ, ch12/hyp-brain-first-genetic-model.typ, ch12/syn-genetic-neuronal-convergence.typ (new), ch12/ch12-genetics-epigenetics.typ, hypothesis-registry.typ. |
| 3a | **Build: PASS** (3 fix-verify rounds: env name, cross-refs to ch:immune-dysfunction). |
| 3.5 | 5 environments verified (2 new: @ach:cell-type-enrichment-convergence, @hyp:striatal-symptom-signalling; 2 modified: @lim:cell-type-enrichment-caveats, @oq:emsn-mecfs-study-needed; 1 ch12 synthesis: @syn:genetic-neuronal-convergence). All have Consequence fields. |
| 4 | 35 ideas generated across all 12 categories (13 constructive, 22 critical). File: ops/brainstorms/brainstorm-cell-tissue-enrichment-2026-07-21.md. |
| 4a | Subtree: ops/plans/hypotheses-trees/subtrees/cell-tissue-enrichment.md — 25 nodes. Root index updated. |
| 5 | 35 ideas triaged: T1 (1 → covered by Phase 3 synthesis, no new integration), T2 (6 → tree-only), T3 (12 → tree-only), CC (14 → all covered by existing Phase 3 environments). 0 new chapter environments created; 0 queued as child topics. Phase 3 already addressed the core evidence; brainstorm yielded incremental extensions/drug ideas below threshold for separate integration. |
| 5b | **Build: SKIP** — no new content files from Phase 5. Existing build still passes. |
| 5a | 1 environment audited: @hyp:striatal-symptom-signalling — PASS (2 falsifiable predictions with symmetric falsification conditions). 5 other environments exempt (achievement, limitation, open-question, synthesis). |
| 6 | M matches examined: 4 files with overlapping content (ch14d-cell-type-enrichment refs, ch08.typ legacy copy, ch16 causal hierarchy, changelog). N adapted: 1 (ch08 @lim:emsn-no-genetic-evidence → replaced in Phase 3; primary adaptation from "no genetic evidence" to "cell-type enrichment supports MSN involvement"). Reinforcement: 0 (no certainty bumps — new evidence cites overlapping Maccallini 2026 source; existing claims already at appropriate certainty). Contradiction: 0. Ambiguous: 0. No action: 3 (ch14d refs already cite Maccallini 2026 with correct context; ch16 hierarchy already uses "brain-only genetic enrichment"; changelog already records prior integration cycles). Synonym map: N/A (grep-based search; Phase 3 dedup covered key terms). Coverage: 1 adapted + 3 deferred / 4 examined. |
| 7 | N pairs audited: 3 new hypotheses (from registry entries) × existing registry (~200+ entries). Term-index pre-filter: shared terms with VMAT2-striatal-DA cluster, basal-ganglia-effort-cost, brain-first-genetic. Candidate pairs: 12. Reinforcement pairs: 2 (@hyp:striatal-symptom-signalling reinforces @spec:basal-ganglia-effort-cost with genetic evidence; @syn:genetic-neuronal-convergence reinforces @hyp:brain-first-genetic with independent rare-variant line). Feed-into: 1 (@ach:cell-type-enrichment-convergence → @hyp:striatal-symptom-signalling). Conflict pairs: 0. Independents: 9. Certainty adjusted: 0 bumps (per-cycle cap: Phase 6 produced 0 bumps; no cross-phase constraint activated. Reinforcement is descriptive only — new hypotheses at cert 0.40 and existing speculations at cert 0.40 are comparable certainty, no bump warranted). Tensions flagged: 0. Plan file updated. |
| 8 | **Build: PASS** (no errors). Intermediate: Phase 3a PASS. Phase 5b SKIP (no new content files). |
| 9 | Quality: 78 words added, 1 hypothesis + 1 synthesis + 1 achievement + 4 registry entries. Net certainty Δ = 0. BLOAT: no. WEAK-EVIDENCE: no. CLINICAL-RISK: no. Clinical relevance: LOW. |
| 10 | Cross-chapter coherence: 2 chapters audited (ch08, ch12). 0 inconsistencies, 0 fixes. Certainty, terminology, cross-refs, and narrative all consistent. |
| 10a | SKIP — @syn:genetic-neuronal-convergence already serves as convergent synthesis condensing the 3 new/modified ch08 environments + ch12 brain-first model. No additional synthesis needed. Trigger: 4 environments across 2 chapters but convergence already expressed. |
| 11 | Lightweight review (single section, 6 files, ≤10 envs). R1: 1 finding (missing @Finucane2018stratifiedLDSC citation in achievement) → fixed. R2: 0 findings. Convergence at 2 clean rounds. Also: ch14d build failure from external cycle's skeletal-asymmetry wip (NOT this cycle's content) — confirmed my changes compile clean when external WIP stashed. |
| 12 | Changelog entry added under Version 11. References @ach:cell-type-enrichment-convergence, @hyp:striatal-symptom-signalling, @syn:genetic-neuronal-convergence, @lim:cell-type-enrichment-caveats. 10 bib entries (+ 2 pre-existing), 11 appendix H entries, 4 registry entries. Changelog compiles. |
| 13 | **1 commit created (4893880).** 15 files: 6 new, 9 modified. No scratch checkpoint pointers to clean (MIXED mode — no pointers created). Shared-file verification: appendix-h entries already in HEAD (committed by Phase 1 agent — verified present via `git show HEAD`). Registry entries committed. Changelog committed. Excluded: 10 unrelated WIP files (HSAT2 LaTeX, SVG agents, skeletal-asymmetry cycle, etc.). Row status: ✅ done. |

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|

## Notes
- MIXED tree mode — checkpoints via git reflog only
- Source: mecfsscience.org blog post (2026-07-21) — uses MAGMA, LDSC on DecodeME + MVP
- Multiple analyses converge: Finucane pipeline (GTEx), Maccallini (Dropviz, Human Brain Atlas), Lee (DESCARTES), Snyder (rare variants)
- Key limitation: fine cell-type specificity is method-dependent; broad neuronal signal is robust
- Related topics already in paper: DecodeME genetics, VMAT2 striatum, dopamine/Parkinson's parallels
- Related plans: vmat2-striatum-longcovid-integration-plan.md
