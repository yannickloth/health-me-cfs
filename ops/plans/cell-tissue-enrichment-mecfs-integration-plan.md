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

---

# Cycle 2 (2026-10-12): Li et al. 2023 snATAC Chromatin-Accessibility Atlas

**Trigger:** `/integrate-topic https://mecfsscience.org/cell-and-tissue-enrichment-in-me-cfs/ and https://s4me.info/threads/a-comparative-atlas-of-single-cell-chromatin-accessibility-in-the-human-brain-li-et-al-2023.53034/#post-728476`
**Guard:** PASS — target skill `integrate-topic`, args present.

**Purpose:** Source 1 (RNA-based enrichment) was integrated in Cycle 1 (commit `4893880`). This cycle adds source 2 — the **Li et al. 2023 single-nucleus ATAC-seq chromatin-accessibility atlas** of the human brain (1.1M cells, 42 regions, 107 cell types; `10.1126/science.adf7044`), applied to DecodeME via s-LDSC by the blog author. New **modality** (chromatin accessibility, not RNA) tests the same neuronal-enrichment hypothesis. Expected outcome: reinforcement of `@syn:genetic-neuronal-convergence` / `@ach:cell-type-enrichment-convergence`, plus IT-neuron (L4) and MSN detail.

**Target chapters:**
- ch14 (genetics-epigenetics) — subsec-13 (DecodeME) + subsec-18 (brain-first)
- ch09 (neurological) — neurotransmitter abnormalities section
- Part 4 (hypothesis registry)

**Pre-identified hypotheses (from sources):**
- ME/CFS genetic risk maps to neuronal cell types in **chromatin-accessibility** data (independent modality confirms RNA-based result)
- Intratelencephalic (IT) projecting neurons (L4 / IT-V1C) are the shared neuronal peak across brain traits
- MSN peak in ME/CFS is present but not unique (shared with substance-use traits)
- Preliminary certainty: RNA-based broad-neuronal signal 0.80; ATAC replication raises cross-modality confidence

**Working-tree mode:** CLEAN at cycle start (2026-10-12).

## Tracking Table (Cycle 2)

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| — | (populated after Phase 1/4) | | | | |

## Active Caps (set by Phase 2 — decision: PROCEED)

- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed — BUT ME/CFS-specific MSN/eMSN claims capped at cert <=0.45 (single-investigator unpublished enrichment; Maccallini-2026 precedent)
- Brainstorm categories (Phase 4): all 1-12
- Certainty bumps (Phases 6-7): per normal rules; incoming evidence must be >=0.60 (max +0.05); per-cycle cap = 1 bump/hypothesis
- Phase 9 flags pre-fired: none
- Binding attribution: ME/CFS-specific enrichment must be attributed to the source analysis (mecfsscience/s4me), NOT to Li 2023 itself
- Binding certainty: chapter prose uses POPULATION-DISCOUNTED values (<=0.64); raw bib certainty fields (0.85) never quoted in prose

## Phase Reports (Cycle 2)

| Phase | Summary |
|-------|---------|
| 0 | Plan located (`cell-tissue-enrichment-mecfs-integration-plan.md`); Cycle 2 section appended; tree CLEAN; deferred-topics checked (none match); queued-topics checked (none match). |
| 1 | **11 papers found, 11 added to bib** (genetics-epigenetics.bib): Li2023ATACbrain, Siletti2023transcriptomicBrain, Fullard2018brainATAC, Nott2019enhancerPromoter, Hauberg2020openChromatin, Corces2020snATACcausalVariants, Jagadeesh2022scDRS, Phung2025cellTypeBrain, Yu2021limitedAssociation, Deary2018tiredness, Ding2026basalGangliaEpigenome. Search log: ops/research/search-log-cell-tissue-enrichment-li2023-atac-2026-10-12.md. Summary + integration guide in ops/research/ + ops/integration-guides/. Rival framings: F1 reinforcement (7), F2 artifact (3), F3 pleiotropy (3), F4 immune-underpowered (3). Coverage: opened PubMed/BioMCP/EuropePMC/Crossref/s4me/Science; not opened Google Scholar, non-EN. Highest discounted cert 0.64. |
| 2 | **Decision: PROCEED** (reinforcement scope). 7 papers discounted >=0.40, 4 >=0.60; 2/11 <0.40. No contradictions (bounded methodological caveats only). PRISMA-lite Lite tier (reinforcement-only, permitted). Clinical relevance LOW; healing relevance none-knowledge-only. Tier-cap deviation ACCEPTED (documented; discounted certs operative). Caps: MSN-specific claims <=0.45. Synthesis: tmp/synthesis-cell-tissue-enrichment-li2023-atac-2026-10-12.md |
| 3 | 1 new environment: `@ach:chromatin-accessibility-enrichment` (ch14 subsec-18/achievements/ach-chromatin-accessibility-cell-type-enrichment.typ, cert 0.64). Include wired into sec-01-genetic-predisposition.typ. Registry block added (2026-10-12). Fragments: ops/research/fragments-cell-tissue-enrichment-li2023-atac-2026-10-12.md. Chapter+registry cross-refs: @ach:cell-type-enrichment-convergence, @syn:genetic-neuronal-convergence, @lim:cell-type-enrichment-caveats, @hyp:brain-first-genetic. Standing epistemic checklist per-claim: [#1 OK w/ attribution caveat] / [#2 OK] / [#3 OK] / [#4 OK (F1-F4)] / [#5 N/A] / [#6 N/A] / [#7 N/A]. |
| 3a | **Build: PASS** (2 fix-verify rounds: em-dash-after-@cite label-parse errors ×2 + wrong `@hyp:` label → fixed). |
| 3b | **LEGIT-SKIP — non-treatment topic.** 0 treatment environments; no clinical claim. Documented: tmp/safety-gate-cell-tissue-enrichment-li2023-atac.md |
| 3.5 | 1 environment verified (@ach:chromatin-accessibility-enrichment has *Consequence:* field). 0 missing. |
| 4 | 12 constructive + 5 critical-category ideas generated across cats 1–12 (2 hypotheses, 3 research directions, 1 drug, 1 supplement, 1 non-pharm, 1 combination, 1 math, 1 cross-disease, 1 biomarker, 5 CC). File: ops/brainstorms/brainstorm-cell-tissue-enrichment-li2023-atac-2026-10-12.md. |
| 4a | Subtree ops/plans/hypotheses-trees/subtrees/cell-tissue-enrichment-li2023-atac.md written (17 nodes); root index row added. Parent topic: cell-tissue-enrichment (Cycle 1). |
| 5 | 17 ideas triaged; **0 new chapter environments**. Phase-3 dedup: 2.1 (caQTL colocalisation) covered-by-@oq:cell-type-specific-gwas; 2.2 (patient snATAC) covered-by-@oq:emsn-mecfs-study-needed; CC10.1/10.2/11.1/12.1/12.2 carried inline in @ach:chromatin-accessibility-enrichment caveats + existing @lim:cell-type-enrichment-caveats / @lim:syngo-enrichment-unpublished. Remaining constructive ideas tree-only (T2/T3). ch30 tiers: none (statistical-genetics; no biochemical cascade). 0 queued as child topics. Standing epistemic checklist: no violations. |
| 5b | **Build: PASS** (no new content files from Phase 5; existing build green). |
| 5a | Falsifiability gate **VACUOUS** (no new #hypothesis/#speculation/#prediction; only an #achievement). Stage 1: 7/7 new @CiteKeys verified EXISTS (Li2023ATACbrain, Siletti2023transcriptomicBrain, Hauberg2020openChromatin, Corces2020snATACcausalVariants, Deary2018tiredness, Jagadeesh2022scDRS, Yu2021limitedAssociation). Stage 2: 11 fragments, 0 four-axis mismatches; unpublished-source attribution correct. Checklist #1 ⚠ minor fragment-completeness (2 fragments added); #2 clean. No overstatements. |
| 5z | Glossary: 4 entries added (MSN, S-LDSC, snATAC-seq, cCRE); ATAC-seq/GWAS already present. 0 false positives. |
| 6 | M=4 overlapping pre-existing files examined; N=4 adapted — all REINFORCEMENT (added @Li2023ATACbrain + chromatin-modality sentence to @syn:genetic-neuronal-convergence, @ach:cell-type-enrichment-convergence, @ach:decodeme-brain-enrichment, @lim:cell-type-enrichment-caveats). Certainty bumps: **0** (incoming cert 0.64; conservative — ME/CFS-specific ATAC application is unpublished single-source; documented, not silently discounted). Contradictions: 0. Synonym map: tmp/synonym-map-cell-tissue-enrichment-li2023-atac.md. Checklist: no violations. |
| 7 | **Zero new hypotheses** integrated (only an #achievement) → zero new hypothesis pairs; no registry certainty adjustments; bump log empty. Existing @hyp:brain-first-genetic and @hyp:striatal-symptom-signalling are reinforced by evidence (Phase 6), not re-rated. Checklist: no violations. |
| 8 | **Build: PASS** (0 errors). Intermediate: 3a PASS, 5b PASS. |
| 9 | Net certainty Δ = 0; reinforcement:contradiction = 4:0; new falsifiable predictions = 0 (no new hypotheses); length delta small (~600 words; gross additions well under 2000 → no BLOAT); Tier distribution: 0 integrated (all tree-only/covered); clinical relevance LOW; healing relevance none. Honesty lint: 0 findings across 3 files. Quality flags: **NONE**. |
| 10 | Cross-chapter coherence: 4 files / 2 chapters audited (ch14, ch09). 0 inconsistencies, 0 fixes. Certainty, terminology, cross-refs, narrative all consistent. Output: tmp/coherence-audit-cell-tissue-enrichment-li2023-atac-2026-10-12.md. |
| 10a | **LEGIT-SKIP — convergence already expressed.** Pre-existing @syn:genetic-neuronal-convergence already condenses the neuronal-convergence argument and was extended this cycle with the chromatin modality; no additional #synthesis needed. |
| 10b | No framing propagation needed — the new chromatin modality REINFORCES the already-propagated brain-first/neuronal framing (Cycle 1); it introduces no new claim, so abstract / ch16 intro / root-cause sections are unchanged. Documented. |
| 11 | **Lightweight tier** chosen (1 new environment; no treatment/clinical content; the multi-chapter touch is reinforcement-only citations added to pre-existing environments — rationale documented). Adversarial pass (devil-advocate-auditor): round 1 = 8 findings (2 HIGH, 2 MEDIUM, 4 LOW) → all fixed; round 2 = 0 HIGH/CRIT (2 residual MED/LOW) → fixed; round 3 = 0 findings. Xref pass (typst-xref-checker): 230 refs, 0 unresolved, 0 dup labels. Build re-verified PASS after every fix round. **CONVERGED (2 consecutive passes with 0 HIGH/CRITICAL).** |
| 12 | Plan-record written below (no changelog.typ). See "## Phase 12 — Plan Record (Cycle 2)". |

## Certainty Bump Log (Cycle 2)

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|


## Phase 12 — Plan Record (Cycle 2)

**Topic slug:** `cell-tissue-enrichment-li2023-atac` | **Decision:** PROCEED (reinforcement scope) | **Date:** 2026-10-12

**Integration summary:** Added a second, orthogonal molecular modality (chromatin accessibility / snATAC-seq; Li et al. 2023 human-brain atlas) confirming the broad neuronal cell-type genetic enrichment of ME/CFS already established from RNA atlases in Cycle 1. The specific chromatin top-hit is intratelencephalic (IT-L4/IT-V1C) cortical neurons with a secondary MSN peak; the chromatin reference differs from the RNA references, so only the coarse neuronal-vs-immune distinction is reproduced. The ME/CFS-specific analysis is single-investigator and unpublished.

- **Environments added:** `@ach:chromatin-accessibility-enrichment` (ch14 subsec-18; cert 0.64). No new hypothesis/speculation/prediction.
- **Environments reinforced (Phase 6):** `@syn:genetic-neuronal-convergence`, `@ach:cell-type-enrichment-convergence` (ch09), `@ach:decodeme-brain-enrichment` (ch14 subsec-13), `@lim:cell-type-enrichment-caveats` (ch09).
- **Chapters touched:** ch14 (genetics-epigenetics), ch09 (neurological).
- **Bib:** 11 new entries in `genetics-epigenetics.bib`; appendix-h `<sec:bib-cell-tissue-enrichment-li2023-atac>`.
- **Registry:** 1 new `ach` row (2026-10-12 block).
- **Glossary:** 4 entries (MSN, S-LDSC, snATAC-seq, cCRE).
- **Key finding + why it matters:** the ME/CFS genetic signal maps to neurons, not immune cells, in both RNA and chromatin data — independently of any single RNA method. It strengthens (does not change) the brain-first genetic model; no diagnostic or treatment implication.
- **Phase 9 quality flags:** NONE (clinical relevance LOW; net certainty Δ 0; honesty-lint 0 findings).
- **Clinical relevance:** LOW / research-only; healing relevance: none (knowledge only).
- **Driving-source caveat:** the mecfsscience.org blog post (source 1) was NOT re-integrated — it was already integrated in Cycle 1 (commit 4893880); only source 2 (the Li 2023 snATAC s4me thread) is new. The ME/CFS-specific ATAC analysis is an unpublished single-investigator result and is labelled as such throughout.


## Phase Ledger (Cycle 2 — Phase 12.5 Completion Gate)

| Phase | State | Evidence |
|-------|-------|----------|
| 0 | RAN | Cycle 2 plan section present + validated; queue/deferred checked |
| 1 | RAN | ops/research/search-log-cell-tissue-enrichment-li2023-atac-2026-10-12.md + 11 bib entries |
| 2 | RAN | tmp/synthesis-cell-tissue-enrichment-li2023-atac-2026-10-12.md (PROCEED) |
| 3 | RAN | @ach:chromatin-accessibility-enrichment + registry row |
| 3a | RAN | build PASS |
| 3b | LEGIT-SKIP | non-treatment topic (tmp/safety-gate-cell-tissue-enrichment-li2023-atac.md) |
| 3.5 | RAN | consequence field present in new env |
| 4 | RAN | ops/brainstorms/brainstorm-cell-tissue-enrichment-li2023-atac-2026-10-12.md (17 ideas) |
| 4a | RAN | subtrees/cell-tissue-enrichment-li2023-atac.md + root index row |
| 5 | RAN | triage recorded; 0 new envs |
| 5b | RAN | build PASS |
| 5d | LEGIT-SKIP | non-mechanistic topic (statistical genetics; no biochemical cascade) |
| 5c | LEGIT-SKIP | non-pharmacological topic |
| 5a | RAN | falsifiability sweep vacuous gate + 7/7 citation battery |
| 5z | RAN | glossary +4 entries |
| 6 | RAN | 4 reinforcement adaptations + synonym map |
| 7 | RAN | zero new hypotheses → zero pairs recorded |
| 8 | RAN | build PASS |
| 9 | RAN | quality metrics; 0 flags |
| 10 | RAN | coherence audit; 0 issues |
| 10a | LEGIT-SKIP | convergence already expressed by @syn:genetic-neuronal-convergence (extended) |
| 10b | RAN | no framing propagation needed (documented) |
| 11 | RAN | lightweight convergence (3 rounds; converged) |
| 12 | RAN | plan record written |
| 13 | RAN | commit (below) |

**Independent checks:** `nix build` → 0 errors; hypothesis registry updated (ach row); no new hypothesis/speculation/prediction (falsifiability N/A); new env has *Consequence:*; all new bib keys resolve case-exact. **0 OMISSION.**
