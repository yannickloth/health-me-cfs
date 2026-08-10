# Integration Plan: Godlewska et al. 2025 — Brain and Muscle Chemistry in ME/CFS and Long COVID (7T MRS)

**Topic slug:** `godlewska-7t-mrs-brain-muscle`
**Topic:** Godlewska BR (Oxford) et al. — Brain and muscle chemistry in ME/CFS and long COVID: a 7T MRS study. *Molecular Psychiatry* (2025-07-12). Original study.
**Source:** standalone `/integrate-topic`
**Date:** 2026-08-10
**Parent topic:** root
**MIXED mode:** tree has unrelated changes (`ops/plans/ai-multiomics-mecfs-xiong2025-integration-plan.md` — another cycle's plan). All git operations use explicit file lists; no `git add -A`; no shared-branch WIP commits; no `git reset`/rebase/--amend; rollback = `git checkout <ref> -- <file>`. All phases scoped by explicit per-phase file lists, NOT `git diff`.

## Purpose

Use ultra-high-field 7 Tesla magnetic resonance spectroscopy (7T MRS) to non-invasively measure in vivo brain and skeletal muscle chemistry in ME/CFS and long COVID, identifying bioenergetic/metabolic signatures that distinguish these conditions from controls. MRS measures metabolites (e.g., NAD+, ATP, PCr, lactate, amino acids, lipids) in living tissue — bridging the biomarker-to-functional gap by assaying the target organs directly (brain and muscle) rather than peripheral blood.

## Target Chapters

- ch08 (brain / neuro-inflammatory / neurochemistry) — brain metabolite findings
- ch09 (muscle / energy metabolism) — muscle metabolite findings
- ch20 (biomarkers / diagnostics) — MRS as an in vivo measurement method (compartment bridging)
- ch14d (cross-disease — Long COVID vs ME/CFS vs controls)
- ch33 / ch30 sec-02 (mechanistic cascade tracing — mitochondrial/metabolic node, if specifiable cascade exists)
- hypothesis-registry.typ — new entries

## Pre-identified hypotheses

- (none yet — to be established in Phase 1/4)

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| P3.1 | Distinct brain neurochemical signatures distinguish ME/CFS from long COVID (7T MRS) | Phase 3 | 0.50 | ✅ | `#hypothesis` @hyp:distinct-brain-neurochemistry-mecfs-longcovid in ch14d-cross-disease.typ (Post-Infectious Syndrome Cluster). Falsifiable predictions + severity unknown. |
| P3.2 | Long COVID dorsal-cingulate choline reduction: coagulation / "brain fog" substrate | Phase 3 | 0.35 | ✅ | `#speculation` @spec:long-covid-dacc-choline in ch14d-cross-disease.typ. Associative; Pajuelo/Mueller heterogeneity caveated. |
| P6.1 | Reinforce brain-lactate cluster (Murrough2010, Natelson2017Lactate, Mueller2020MRS) + MDD discrimination into existing `<oq:brain-metabolism-specificity-fatigue>` | Phase 6 | n/a | ✅ | Applied: added Murrough MDD-discrimination + Godlewska ME-vs-LC to the "<oq:brain-metabolism-specificity-fatigue>" open question in sec-27-brain-energy.typ (accuracy update + citations). No bump (incoming <0.70). |
| P6.2 | Reinforce exercise-provoked muscle deficit prediction (line 44 ch07 PDH) with Naegel2023 | Phase 6 | n/a | ✅ | Applied: added Naegel2023 (load-gated muscle deficit) + Godlewska resting-null to ch07 PDH prediction #1. No bump (Naegel 0.42). |
| B1.2 | Exercise-provoked (load-gated) not resting muscle lactate | 1 | 0.50 | ⏭️ | Dedup: covered by ch07 PDH sec-04-existing "brain-vs-muscle lactate puzzle" + prediction #1 (line 44) which already anticipates exercise-provoked muscle deficit. Route Naegel confirmation to P6.2 reinforcement citation. |
| B2.1 | 7T MRS + ASL perfusion co-measure to resolve lactate cause | 1 | 0.55 | ⏭️ | Dedup: covered by <oq:brain-hypometabolism-primary-vs-secondary> (sec-27) which already lists 4 models incl. fuel-delivery vs mitochondrial and calls for simultaneous perfusion measurement. |
| B1.1 | Brain lactate as ME/CFS-vs-psychiatric-fatigue differentiator | 1 | 0.50 | 🔵 | Partially covered by <oq:brain-metabolism-specificity-fatigue> (sec-27) which asks exactly this. Route Murrough MDD-discrimination evidence as P6.1 citation reinforcement (not new env — avoid duplication). |
| B2.2 | Longitudinal LC choline→ME/CFS lactate-conversion test | 1 | 0.45 | ⏭️ | Dedup: covered by @hyp:distinct-brain-neurochemistry-mecfs-longcovid falsifiable prediction #2 (long COVID meeting ME/CFS criteria shift to lactate signature). Report only in research-implications. |
| B8.1 | GWI as pre-validation reservoir for MRS diagnostic model | 1 | 0.36 | ⏭️ | Dedup: Jones2025GulfWar cross-disease choline/lactate parallel already cited in @hyp:distinct-brain-neurochemistry-mecfs-longcovid evidence + registry. No new env. |
| B10.1 | Lactate epiphenomenal to deconditioning/mood | critical | 0.40 | ⏭️ | Dedup: covered by <oq:brain-hypometabolism-primary-vs-secondary> (4th model = adaptive/environmental) and <oq:brain-metabolism-specificity-fatigue>. Already a limitation/env. |
| B12.1 | 7T quantification/site/single-study caveat | critical | n/a | 🔵 | Phase 5: add as inline caveat/limitation to @hyp:distinct-brain-neurochemistry... (single-site, not replicated, choline heterogeneity). Strengthen existing env. |
| B9.1 | Regional MRS fingerprint for post-infectious subtyping | 1 | 0.35 | ⏭️ | Dedup: covered by @spec:cfmtdna-distinguish + @hyp:distinct-brain-neurochemistry... (subtyping already framed). Avoid new env. |
| B1.3 | Post-infectious family subtype fingerprint | 2 | 0.35 | ⏭️ | Dedup: covered by B9.1/ch14d subtyping framing. |
| B11.1 | Null: brain lactate has no causal role → pillar revision | critical | n/a | ⏭️ | Dedup: covered by <oq:brain-metabolism-specificity-fatigue> (sec-27) — already poses the null/no-disease-specificity question directly. |

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| (none yet) | | | | | |

## Active Caps (set by Phase 2 — decision: PROCEED, gap-fill scope)
- Environments allowed: all (PROCEED)
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none
- Scope guard: do NOT re-write content already covered by prior Godlewska2025MRS integration (ch09 glial-cell + neurotransmitter sections). Integrate only: (1) long-COVID choline↓ + coagulation speculation, (2) resting-muscle null + exercise-provoked reconciliation, (3) MRS diagnostic/differential value vs MDD, (4) reinforcement of existing brain-lactate claim via independent-lab replication (no bump — incoming certs 0.55–0.60).

## Phase Log

| Phase | Status | Detail |
|-------|--------|--------|
| 0 | 🔵 | Plan created at `ops/plans/godlewska-7t-mrs-brain-muscle-integration-plan.md`; MIXED mode recorded; all 12 agents verified present. **PRIMARY PAPER ALREADY PARTIALLY INTEGRATED** — `Godlewska2025MRS` bib entry (long-covid.bib) + appendix H + cited in ch09 subsec-01-glial-cell-dysfunction + neurotransmitter-abnormalities. Existing coverage = brain-lactate↑ finding + ME/CFS-vs-LC difference. NOT covered = long-COVID cholinedACC↓ + coagulation/brain-fog mechanism, muscle-null, diagnostic/differential (MRS vs MDD), replication clustering. Also Mueller2020MRS, Natelson2017Lactate, Natelson2015milnacipran already in bib. Novel bib additions needed: Murrough2010, Sklinda2021, Bravi2025, Pajuelo2024, Naegel2023, Jones2025GulfWar. |
| 1 | ✅ | 11 papers evaluated (1 primary + 10 supporting; 6 novel bib additions). Search log at `ops/research/search-log-godlewska-7t-mrs-brain-muscle-2026-08-10.md`; literature summary at `ops/research/literature-godlewska-7t-mrs-brain-muscle-2026-08-10.md`. Novel bib keys (VERIFIED via awk): Murrough2010VentricularLactate, Jones2025GulfWar, Sklinda2021BrainFog, Bravi2025BrainMetabolism, Pajuelo2024CorpusCallosum, Naegel2023MuscleMetabolism. Reused existing keys: Godlewska2025MRS, Mueller2020MRS, Natelson2017Lactate, Natelson2015milnacipran. Cohort overlap: Mount Sinai (3 studies/1 lab) + UAB (2 studies/1 lab) + Oxford + Prague + Milan + Lyon. Brain-lactate-in-ME/CFS replicated across 3 organic labs. |
| 2 | ✅ | Decision: PROCEED (gap-fill scope, user-approved). 2 papers ≥0.60 (Godlewska 0.65, Natelson2017 0.60), 5 medium, 4 weak, 1 null. Clinical relevance: MEDIUM, subset unknown. Contradictions: 2 pairs (choline direction; long-COVID NAA repair-vs-deficit). Standing epistemic: #1✓/#2⚠/#3✓/#4⚠/#5✓/#6✓. Synthesis at `tmp/synthesis-godlewska-7t-mrs-brain-muscle-2026-08-10.md`. Active Caps block written into this plan. |
| 3 | ✅ | Gap-fill integration: 2 new environments in ch14d-cross-disease.typ (Post-Infectious Syndrome Cluster): @hyp:distinct-brain-neurochemistry-mecfs-longcovid (`#hypothesis`, cert 0.50) + @spec:long-covid-dacc-choline (`#speculation`, cert 0.35). Both carry falsifiable predictions, competing mechanisms, severity-applicability (unknown), consequence fields. Registry update planned. Muscle-null + MRS-vs-MDD diagnostic deferred to Phase 6 reinforcement (existing coverage adequate → avoid duplication). Files: part2-pathophysiology/ch17-speculative-hypotheses/ch14d-cross-disease.typ. |
| 3a | ✅ | Build PASS (exit 0). CONCURRENT mode confirmed (multiple parallel cycles active). Staged only my explicit files. |
| 3b | ✅ | 2 environments gated, both mechanistic (non-treatment), 0 blocked, 0 warnings. Only item 2 applied; both state severity applicability unknown. Safety gate PASS. |
| 3.5 | ✅ | 2 environments verified; 1 missing consequence field added (`@hyp:distinct-brain-neurochemistry-mecfs-longcovid`), 1 accepted as-is (`@spec:long-covid-dacc-choline`). Build PASS after edit. |
| 4 | ✅ | Brainstorm at `ops/brainstorms/brainstorm-godlewska-7t-mrs-brain-muscle-2026-08-10.md`. 12 ideas across all categories (scientific-insight-generator/opus unavailable — run inline in main session; flagged to user). Plan tracking table populated with 12 brainstorm rows. |
| 4a | ✅ | Subtree at `ops/plans/hypotheses-trees/subtrees/godlewska-7t-mrs-brain-muscle.md` (10 nodes, usefulness-scored); root index updated with subtree row. |
| 5 | ✅ | Triage/dedup: 12 brainstorm ideas assessed. 11 deduped to existing coverage (sec-27 open-questions, ch14d environments) — no duplicate envs added (anti-bloat). 1 additive (B12.1 MRS single-site/quantification caveat) integrated as `*Limitation (MRS interpretation caution)*` into @hyp:distinct-brain-neurochemistry-mecfs-longcovid. No new standalone environments (existing coverage adequate). Phase 3's 2 envs remain the substantive content addition. |
| 5d | ⏭️ | SKIP — mechanism has no specifiable causal cascade (brain lactate is a correlational metabolite marker; its cause among 4 competing mechanisms — mitochondrial vs astrocyte-lactate-shuttle vs hypoperfusion vs inflammatory-cell glycolysis — is explicitly unresolved per @hyp:distinct-brain-neurochemistry). No validated drug-interception 'node'. Phase 5d skip condition ("no specifiable cascade / pure correlational claim") met. No ops trace, no ch30 files. |
| 5c | ⏭️ | SKIP — treatment topic trigger NOT met (topic is diagnostic/mechanistic, no new medication proposed; milnacipran already in paper as fibromyalgia treatment content). No differential entry generated. |
| 5b | ✅ | Build PASS. Intermediate build checks: Phase 3a PASS, Phase 5b PASS. |
| 5a | ✅ | Falsifiability swept inline (falsifiability-auditor/sonnet unavailable). All new environments carry explicit falsifiable predictions: @hyp:distinct-brain-neurochemistry (3 predictions), @spec:long-covid-dacc-choline (predictions), registry P3.1 + P3.2 (predictions). None structurally unfalsifiable. Stand. Epistemic #1-#2 cross-check: all new @citations verified present in bib (Godlewska2025MRS, Murrough2010VentricularLactate, Natelson2017Lactate, Mueller2020MRS, Pajuelo2024CorpusCallosum). |
| 5z | ✅ | Glossary review (ran clean). New-content acronyms (MRS, PCr, lactate, choline, GWI, anterior cingulate, OXPHOS, mitochondrial) all already present in web/glossary.json (1261 entries). Vmax/τPCr are standard physiology notation, not candidate glossary terms. 0 new entries needed. |
| 6 | ✅ | Retrospective adaptation (Evidence→Claim): 2 matches examined, 2 adapted (both reinforcement, citation-insertion only — NO certainty bumps). P6.1: added Murrough2010 MDD-discrimination + Godlewska ME-vs-LC to sec-27 `<oq:brain-metabolism-specificity-fatigue>` (accuracy update: the "no cross-condition comparison" claim was partially outdated). P6.2: added Naegel2023 (load-gated muscle deficit) + Godlewska resting-null to ch07 PDH prediction #1. Bump log: no entries (no bumps per Evidence Quality Floor — all incoming <0.70). No contradictions/removals. Files: sec-27-brain-energy.typ, ch07 sec-04 PDH. |
| 7 | ✅ | Cross-hypothesis compatibility (inline): 4 pairs audited. Reinforcement: 2 (H1↔energy-conservation-signal [indirect], H1↔astrocyte-gate/brain-energy-conservation). Feed-into: 0. Conflict: 0. Independent: 2 (H1↔cd8-mito, H2↔all). Certainty adjusted: 0 bumps, 0 reductions, 0 tensions. Bump log: no entries. Stand. Epistemic: no violations. Compat audit at `tmp/compat-audit-godlewska-7t-mrs-brain-muscle-2026-08-10.md`. |
| 8 | ✅ | Final build PASS (exit 0). All Phase 1-7 src files staged by explicit list. Intermediate builds: Phase 3a PASS, Phase 5b PASS. |
| 9 | ✅ | Quality: net certainty change 0.00; R:C ratio 2:0; ~124 added lines; no BLOAT/WEAK-EVIDENCE/CLINICAL-RISK/G-UNSUSTAINED flags. Appended to synthesis file. |
| 10 | ✅ | Coherence audit (inline): 3 chapters/files, 7 checks, 0 new inconsistencies (ch09 choline = cholinergic ACh ≠ MRS total-choline metabolite — no conflict). Verified terminology, cross-refs (build PASS), certainty consistency (H1 0.50 coherent). Fixes were Phase 3.5/6 items. |
| 10a | ⏭️ | SKIP — synthesis trigger not met: this cycle integrated 2 new environments (both in ch14d), below the ≥3-environments-across-≥2-chapters threshold. The convergent "brain energy deficit in ME/CFS" model is ALREADY synthesized in ch07 sec-27 (Brain Energy Metabolism: Cross-Disease Convergent Framework); a further synthesis would be redundant bloat. My content extends, not adds a new convergent model. |
| 10b | ⏭️ | SKIP — trigger (Phase 10a synthesis) not met; no new #synthesis environment to propagate to framing layers (abstract/ch16 intro/reading guide/ch13). The existing abstract/causal-hierarchy treatment of brain bioenergetics already reflects the ME/CFS-vs-LC divergence without needing revision (new content is a focused ch14d addition, not a strategic-framing-level claim). |
| 11 | ✅ | Review tier: LIGHTWEIGHT (2 new envs ≤10, no treatment content; PROCEED but small scope). Passes: (1) typst-xref-check — all 6 new citations verified in bib; all @hyp/@spec/@sec labels defined+resolved (build PASS). (2) adversarial (6-persona devil's-advocate/cynic/sophist/reductionist/strawman/clinician, inline — opus personas unavailable: committed agent frontmatter has stale sonnet/opus model IDs being fixed by a parallel cycle) — 0 CRITICAL; found 1 HIGH/medium finding (disease-duration confound not named as alternative explanation for the ME-vs-LC divergence); FIXED by adding explicit duration confound to Alternative Interpretations (commit e616f519); re-review 0 CRITICAL/0 HIGH → CONVERGED. (3) falsifiability audit (Phase 5a equivalent, inline) — all committed environments carry explicit falsifiable predictions with "Falsified if..." statements; no structurally-unfalsifiable content; all 6 new bib citations verified. SLOW-CONVERGENCE: no. |
| 12 | ✅ | Changelog updated: added `## Version 7.4` entry to `shared/changelog-tspo-pet-section.typ` with "Motivated by: @Godlewska2025MRS @Murrough2010VentricularLactate" + clinical relevance + quality note. Note: this file is the established changelog artifact (not currently wired into the build; consistent with prior parallel cycles appending Version 7.3/7.2/7.1). |
| 13 | ✅ | Phase 13 commit: `b3541142` (content: 7T MRS brain/muscle chemistry + long COVID divergence; 9 files: 3 chapter files + changelog + 5 ops artifacts) + `e616f519` (adversarial duration-confound refinement, ch14d). Shared-file ownership re-check: my bib (6 keys), registry (2 blocks), appendix-h (2 entries), scrape-registry, hypotheses-trees entries all present in HEAD — swept into commit `cbd6221a` (komaroff-dantzer stream) alongside their entries (acceptable per protocol — my entries shipped). Chapter envs committed by me in b3541142/e616f519. Excluded: other streams' staged files (ai-multiomics biomap, innate-immunity che2025 ch33, sickness-torpor ch18, ch08/ch12/ch15, agent .md frontmatter) left for their owning cycles. Post-commit build: repo-wide build BLOCKED by a parallel cycle's incomplete staging (ai-multiomics `ach-biomapai-...-fiv.typ` untracked but included by ch15) — NOT a Godlewska content error; my ch14d/ops files verified clean. `tmp/` audit scratch NOT committed. |

## Notes

- 7T MRS = ultra-high-field magnetic resonance spectroscopy; measures tissue metabolites in vivo
- Directly bridges the biomarker-to-functional compartment gap (Instruction C) — measures brain and muscle tissue directly, not peripheral blood
- Relevant to both ME/CFS and Long COVID — cross-disease angle with potential diagnostic differentiation
- Molecular Psychiatry = strong journal (IF ~11)
- Verify actual findings (NAD drops, ATP, PCr, lactate, amino acids) via Phase 1 literature research — the pipeline must not assume findings
