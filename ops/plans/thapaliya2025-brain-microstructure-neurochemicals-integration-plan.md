# Integration Plan: Thapaliya et al. 2025 — Brain Microstructure & Neurochemical Profiles in Long COVID (Multimodal MRI)

**Topic slug:** `thapaliya2025-brain-microstructure-neurochemicals`
**Topic:** Thapaliya K, Marshall-Gradisnik S, Inderyas M, Barnden L (Griffith University) — "Altered brain tissue microstructure and neurochemical profiles in long COVID and recovered COVID-19 individuals: A multimodal MRI study." *Brain, Behavior, & Immunity - Health* 50 (2025) 101142. Original study.
**Source:** standalone `/integrate-topic` (user-directed)
**Date:** 2026-08-17
**Parent topic:** root
**MIXED mode:** tree has unrelated changes (`ops/plans/leptin-circadian-entrainment-integration-plan.md` + its PDF in `Literature/pathophysiology/endocrine/CRH-Hypothalamus/` — another cycle). All git operations use explicit file lists; no `git add -A`; no shared-branch WIP commits; no `git reset`/rebase/--amend; rollback = `git checkout <ref> -- <file>`. All phases scoped by explicit per-phase file lists, NOT `git diff`. Phase-0 note: MIXED tree — no shared-branch WIP commits; all phases scoped by explicit file lists.

## Purpose

Integrate multimodal brain MRI evidence (myelin signal via T1w/T2w, tissue microstructure via DTI, brain neurochemicals via MRS) from long COVID and recovered-COVID individuals. Findings: altered T1w/T2w signal and diffusion microstructure in long COVID vs controls, correlated with physical and cognitive function; brain neurochemical differences specifically between long COVID vs recovered-COVID controls. Provides evidence for persistent CNS effects of SARS-CoV-2 — relevant to ME/CFS as a post-infectious syndrome with brain involvement.

## Target Chapters

- ch14d (cross-disease — Long COVID vs ME/CFS) — primary target
- ch08 (neurological / neuroinflammatory) — brain microstructural findings
- ch20 (biomarkers / diagnostics) — neuroimaging as a measurement method
- ch30 sec-04 (neuroinflammatory cascade — glymphatic/BBB/microglia/brainstem) — if specifiable cascade
- hypothesis-registry.typ — new entries

## Pre-identified hypotheses

- (none yet — to be established in Phase 1/2/4)

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| P3.1 | Elevated T1w/T2w (myelin-signal) in long COVID + recovered COVID vs controls, correlated with physical/cognitive function | Phase 3 | 0.47 | ✅ | Integrated as `#open-question` @oq:t1w-t2w-myelin-substrate in ch09. Substrate unresolved. |
| P3.2 | DTI microstructural alteration converges across ME/CFS + long COVID (SLF/midbrain/caudate), direction heterogeneous | Phase 3 | 0.50 | ✅ | Covered by @oq:t1w-t2w-myelin-substrate (context) + @spec:multimodal-mri-biomarker. |
| P3.3 | Posterior-cingulate NAA↑ + glutamine↓ in long COVID vs recovered: brain-energy/neurochemical divergence | Phase 3 | 0.47 | ✅ | Reinforced existing ch14d @hyp:distinct-brain-neurochemistry-mecfs-longcovid. |
| P3.4 | Neuroimaging multimodal panel (T1w/T2w + DTI + MRS) as candidate ME/CFS/long-COVID biomarker | Phase 3 | 0.40 | ✅ | Integrated as `#speculation` @spec:multimodal-mri-biomarker in ch35. |
| B1 | T1w/T2w recovery-gradient reframe (recovered-highest = remyelination) | 1 | 0.35 | ✅ | Routed into @oq:t1w-t2w-myelin-substrate (recovered-highest direction noted as remyelination reading). No new env. |
| B2 | Iron-deposition alternative to myelin/gliosis | 10 | 0.35 | ✅ | Routed into @oq:t1w-t2w-myelin-substrate (iron = leading alternative, Sonnweber/Kronstein independent rationale added). |
| B3 | NAA↑ as compensatory energy/osmolyte response | 1 | 0.30 | ⏭️ | Covered by ch14d reinforcement (NAA ambiguity already noted). No new env. |
| B4 | Longitudinal recovery-tracking rescan (decisive design) | 2 | 0.40 | ✅ | Routed into @oq:t1w-t2w-myelin-substrate (longitudinal rescan named as decisive test). |
| B5 | Multimodal disambiguation: MWF + QSM + MAO-B PET (not TSPO alone) | 2 | 0.55 | ✅ | Routed into @oq:t1w-t2w-myelin-substrate (MAO-B/SL25.1188 astrogliosis specifics + TSPO-inadequacy added). |
| B6 | Shared brainstem–cerebellar–limbic vulnerability axis | 8 | 0.30 | ✅ | Merged with B7 → @spec:postinfectious-bidirectional-microstructure (ch14d). |
| B7 | Bidirectional microstructure synthesis (FA↑ vs FA↓ = injury-repair balance) | 8 | 0.28 | ✅ | Merged with B6 → @spec:postinfectious-bidirectional-microstructure (ch14d). |
| B8 | Brainstem T1w/T2w "recovery index" biomarker | 9 | 0.25 | ⏭️ | Covered by @spec:multimodal-mri-biomarker (directional longitudinal claim; gated on substrate). No new env. |
| B9 | Microstructural-integrity DAG/ODE node (3 substrate nodes) | 7 | 0.25 | ⏭️ | Route to Phase 5d as model-consistency note (DAG needs myelin/gliosis/iron nodes). No env. |
| B10 | Anti-inflammatory/remyelination pharmacological probe | 3 | 0.20 | ⏭️ | Research-only mechanistic probe, NOT a treatment rec → no safety-gate trigger. Routed as caveat in @oq (substrate disambiguation via response). No env. |
| B11 | Null: epiphenomenon + claims to revise (function corr, 85% accuracy) | 11 | 0.30 | ✅ | Critical — routed as caveats: function-correlation fragility + 85%-accuracy-overfit into @oq + @spec:multimodal-mri-biomarker. |
| B12 | Griffith-cluster inflation + small-n Type I + selection | 12 | 0.30 | ✅ | Critical — routed as limitations into @oq:t1w-t2w-myelin-substrate (cluster inflation, selection). |

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
- Scope guard: do NOT duplicate existing ch09 content (Yu2026 NII achievement @ach:nii-neuroinflammation, brainstem open-question @oq:brainstem-volume-direction) or ch14d content (Godlewska2025MRS divergence paragraph + @hyp:distinct-brain-neurochemistry-mecfs-longcovid + @spec:long-covid-dacc-choline). Integrate: (1) T1w/T2w myelin-signal finding + its substrate open-question, (2) DTI microstructural convergence (SLF/midbrain/caudate), (3) MRS NAA↑/glutamine↓ divergence (posterior cingulate). Reinforce existing ch14d brain-neurochemistry claim with primary-paper citations where non-duplicative.

## Phase Log

| Phase | Status | Detail |
|-------|--------|--------|
| 0 | ✅ | Plan created at `ops/plans/thapaliya2025-brain-microstructure-neurochemicals-integration-plan.md`; MIXED mode recorded. PDF moved to `Literature/neurological/Thapaliya2025_BrainMicrostructureNeurochemicals/`. All 12 agents verified present. |
| 1 | ✅ | 14 papers evaluated (1 primary + 13 supporting; 13 novel bib additions + 1 dedup). Search log at `ops/research/search-log-thapaliya2025-brain-microstructure-neurochemicals-2026-08-17.md`; literature summary at `ops/research/literature-thapaliya2025-brain-microstructure-neurochemicals-2026-08-17.md`. Novel bib keys (VERIFIED via awk/grep, 13 added to long-covid.bib): Thapaliya2025BrainMRI, Thapaliya2020T1, Thapaliya2021DTI, Singh2026DTIDKI, Maksoud2020Neuro, Yu2025PI, Wu2026Cingulum, Jahanshahi2026, Huang2026N, Arendt2026, Lu2020Micro, Qin2024, RaneLevendovszky2025. **DEDUP FIXED:** Yu2026 diffusion-NII paper already existed in immune.bib as `Yu2026diffusion-neuroinflammation` (cited in ch09); integrator's duplicate `Yu2026NII` key removed from long-covid.bib + duplicate appendix entry removed. Reuse existing `@Yu2026diffusion-neuroinflammation` key in new content. All entries carry research_stream slug + certainty. Annotated bib: 13 new entries. Scrape-registry: PubMed E-utilities section added. Cohort overlap: Griffith NCNED cluster (5 papers/1 lab — NOT independent) + ≥6 organic labs (Sunshine Coast/Shan, Beijing Anding, Emory/Stony Brook, Goethe Frankfurt, Fudan, Guangxi). |
| 2 | ✅ | Decision: PROCEED (gap-fill scope). 3 papers ≥0.60 (Maksoud 0.70, Yu2026 0.65, Wu2026 0.70), 10 medium, 1 weak (0.40 area), 0 uniformly null (2 partial-null: Arendt2026 severity-gated, Yu2025PI metric-limited). Clinical relevance: MEDIUM, subset unknown. Contradictions: T1w/T2w substrate ambiguity (myelin vs gliosis — internal, not cross-paper); DTI direction heterogeneity by tract/cohort. Standing epistemic: #1✓/#2⚠/#3✓/#4⚠/#5✓/#6 N/A. Synthesis at `tmp/synthesis-thapaliya2025-brain-microstructure-neurochemicals-2026-08-17.md`. Active Caps block written into this plan. |
| 3 | ✅ | Gap-fill integration: 1 new `#open-question` in ch09 brain-structure (`@oq:t1w-t2w-myelin-substrate`), 1 new `#speculation` in ch35 structural-MRI (`@spec:multimodal-mri-biomarker`), 1 prose reinforcement in ch14d @hyp:distinct-brain-neurochemistry-mecfs-longcovid (added NAA↑/glutamine↓ posterior-cingulate divergence + lower-field caveat). All carry falsifiable predictions, severity-applicability (unknown), consequence fields. Hypothesis registry: 2 new entries (1 OQ + 1 S). Files: subsec-01-brain-structure-and-function.typ, structural-mri.typ, ch14d-cross-disease.typ, hypothesis-registry.typ. |
| 3a | ✅ | Build PASS (exit 0). MIXED/CONCURRENT confirmed (leptin cycle active). Staged only my explicit files. |
| 3b | ✅ | 2 environments gated, both mechanistic (non-treatment) → full gate bypass; only item 2 (severity) applies; both state severity applicability unknown. 0 blocked, 0 warnings. Safety gate PASS. |
| 3.5 | ✅ | 2 environments verified, both carry `*Consequence:*` fields (oq:t1w-t2w-myelin-substrate, spec:multimodal-mri-biomarker). ch14d reinforcement is prose (no new env). Build PASS after edits. |
| 4 | ✅ | Brainstorm at `ops/brainstorms/brainstorm-thapaliya2025-brain-microstructure-neurochemicals-2026-08-17.md`. 12 ideas (2 hypotheses, 1 treatment/probe, 6 other, 3 critical). Plan tracking table populated with 12 brainstorm rows. |
| 4a | ✅ | Subtree at `ops/plans/hypotheses-trees/subtrees/thapaliya2025-brain-microstructure-neurochemicals.md` (12 nodes, usefulness-scored); root index updated with subtree row. |
| 5 | ✅ | Triage: 12 brainstorm ideas reassessed + deduped against Phase 3 envs. Phase-3 dedup routed 10/12 into existing envs as strengthening (no duplicates): B1/B2/B4/B5/B11/B12 → @oq:t1w-t2w-myelin-substrate (recovered-highest reframe, iron rationale, MAO-B astrogliosis disambiguation, longitudinal design, accuracy-overfit, cluster-inflation/selection); B8+B11-accuracy → @spec:multimodal-mri-biomarker; B3 → ch14d reinforcement; B10 → research-only probe caveat in @oq (no safety-gate trigger — not a treatment rec); B9 → Phase 5d model note. 1 genuinely-new integration: B6+B7 merged into `#speculation` @spec:postinfectious-bidirectional-microstructure (ch14d cross-disease). All new/strengthened content carries explicit certainty + falsifiable predictions + origin tags. Registry: 1 new entry added (spec:postinfectious-bidirectional-microstructure). |
| 5b | ✅ | Build PASS (exit 0). Fixed 2 build errors: (1) isotope math `[$^11$C]` in ch09 → plain `[11C]`; (2) bad cross-ref `@spec:schizophrenia-gwas-glutamatergic-parallel` → `@spec:schizophrenia-glutamatergic-parallel`. Intermediate build after Phase 5 PASS. |
| 5c | ⏭️ | SKIP — treatment topic trigger NOT met (topic is diagnostic/mechanistic neuroimaging, no medication proposed). No differential entry generated. |
| 5d | ⏭️ | SKIP — no specifiable causal cascade. T1w/T2w substrate (myelin/gliosis/iron) is explicitly unresolved; the mechanism is correlational/imaging-based with no validated ≥3-step biochemical causal chain and no drug-interception node. Per ch30 Category Router gate, cited inline only, no standalone cascade entry. B9 (DAG 3-substrate node) recorded as a Phase-5d model-consistency note only — the document's causal models should encode myelin/gliosis/iron as separate nodes, not one. |
| 5z | ✅ | Glossary: 5 new entries added to glossary-en/fr/de.json (NAA, N-acetylaspartate, T1w/T2w, SLF, QSM), all `imaging` category (covered by CATEGORY_LABEL_SETS). Existing terms (myelin, neuroinflammation, cingulate, MAO-B) already present. **NOTE:** glossary-en/fr/de.json are SHARED files; my `git add` swept in the parallel (leptin) cycle's uncommitted `cell_type`/`anatomy`/`receptor` entries. I UNSTAGED the glossary files to avoid committing the foreign `cell_type` entry. My 5 entries remain in the working tree and will ship via the shared-file reconciliation (parallel cycle commits the glossary). The `cell_type` category (parallel cycle's) is NOT in CATEGORY_LABEL_SETS → causes a `nix flake check` glossary-test failure that is a CONCURRENT-SESSION issue (their glossary-tooltip.js update), not my content. |
| 5a | ✅ | Falsifiability sweep inline: all new/strengthened environments carry explicit falsifiable predictions — @oq:t1w-t2w-myelin-substrate (myelin/iron-specific + longitudinal), @spec:multimodal-mri-biomarker (multi-site replication), @spec:postinfectious-bidirectional-microstructure (circuit-specificity + direction-vs-recovery). None structurally unfalsifiable. All new @citations verified present in bib (Sonnweber2022CovILD, KronsteinWiedemann2024RBC, Braga2025astrogliosis, Visser2025TSPOfatigue pre-existed in long-covid.bib; Zeineh2015white in neuroinflammation.bib). |
| 6 | ✅ | Retrospective adaptation (Evidence→Claim): 4 matches examined, 1 adapted (ch14d @hyp:distinct-brain-neurochemistry-mecfs-longcovid reinforcement — already applied in Phase 3). NO certainty bumps (all incoming evidence <0.70 Evidence Quality Floor and/or cross-population/ambiguous; NAA substrate unresolved). No contradictions found; no removals/reductions. ch07 @oq:brain-metabolism-specificity-fatigue NOT adapted (primary is LC-vs-recovered, no MDD/ME/CFS comparison — would overstate relevance). Retro at `tmp/retro-thapaliya2025-...-2026-08-17.md`. Bump log: no entries. |
| 7 | ✅ | Cross-hypothesis compatibility (inline): 5 pairs audited. Reinforcement: 3 (@spec:postinfectious-bidirectional-microstructure ↔ @ach:nii-neuroinflammation; ↔ @hyp:distinct-brain-neurochemistry-mecfs-longcovid; @oq:t1w-t2w-myelin-substrate ↔ @ach:nii-neuroinflammation). Feed-into: 1 (bidirectional-microstructure → distinct-brain-neurochemistry). Conflict: 0. Independent: 2 (@spec:multimodal-mri-biomarker ↔ ch35 biomarkers; @oq:t1w-t2w-myelin-substrate ↔ brain-energy). Certainty adjusted: 0 bumps, 0 reductions, 0 tensions. Bump log: no entries. Compat audit at `tmp/compat-audit-thapaliya2025-...-2026-08-17.md`. |
| 8 | ✅ | Final build PASS (exit 0). All Phase 1–7 src files staged by explicit list. Intermediate builds: Phase 3a PASS, Phase 5b PASS. `nix flake check` glossary-tooltip test fails on `cell_type` category — CONCURRENT-SESSION issue (parallel cycle's glossary entry lacks a CATEGORY_LABEL_SETS label); NOT my content (my categories covered). |
| 9 | ✅ | Quality: net certainty change 0.00; R:C ratio 1:3; ~90 lines added; no BLOAT/WEAK-EVIDENCE/CLINICAL-RISK/G-UNSUSTAINED flags. Appended to synthesis file. |
| 10 | ✅ | Coherence audit (inline): 4 files (ch09, ch14d, ch35, registry), checked terminology (T1w/T2w consistent), certainty consistency (spec:postinfectious-bidirectional-microstructure 0.28 in both ch14d + registry), cross-refs (build PASS), and neurochemical-metabolite no-conflation (ch14d reinforcement correctly distinguishes NAA/glutamine from Godlewska lactate/choline). 0 new inconsistencies. |
| 10a | ⏭️ | SKIP — synthesis trigger met (≥3 envs across ≥2 chapters) but convergent "post-infectious brain involvement" model ALREADY synthesized in ch07 sec-27-brain-energy (#synthesis line 68) + ch09 integrated-neuroinflammatory-cascade + ch14d cross-disease. My content extends these; a further #synthesis would be redundant bloat. @spec:postinfectious-bidirectional-microstructure (ch14d) already serves as the cross-disease synthesis-style claim. |
| 10b | ⏭️ | SKIP — trigger (Phase 10a synthesis) not met; no new #synthesis environment to propagate to framing layers (abstract/ch16 intro/reading guide/ch13). New content is a focused ch09/ch14d/ch35 addition, not a strategic-framing-level claim. |
| 11 | ✅ | Review tier: LIGHTWEIGHT (3 new envs + 1 reinforcement, ≤10, no treatment content; PROCEED but small scope). (1) Citation/label integrity — build PASS resolves all @labels; all 19 citation keys used in new content verified present in bib (13 new + 6 pre-existing reused). (2) Content caveating — PASS: substrate ambiguity (remyelination/gliosis/iron), Griffith-cluster inflation, selection bias, 85%-accuracy overfit, severity-unknown all explicitly stated in the new/strengthened environments. No overstatement in the strongest claims. (3) No treatment content → safety already gated in Phase 3b. 0 CRITICAL/0 HIGH findings. SLOW-CONVERGENCE: no. CONVERGED. |
| 12 | ✅ | Changelog updated: added `## Version 7.20` entry to `shared/changelog-tspo-pet-section.typ` (established changelog artifact, not currently wired into build — consistent with prior cycles appending Version 7.19/7.18/7.17). Entry records integration summary, motivation (@Thapaliya2025BrainMRI), clinical relevance (MEDIUM), quality note (none), and concurrency note. |

## Notes

- Multimodal MRI: T1w/T2w ratio (myelin signal proxy), DTI (tissue microstructure), MRS (neurochemicals)
- n=47 total: long COVID=19, COVID-recovered healthy controls=12, healthy controls without COVID=16
- Journal: Brain, Behavior, & Immunity - Health (peer-reviewed, moderate impact)
- Long COVID and recovered-COVID group differences in myelin/microstructure vs controls; neurochemicals only long COVID vs recovered
- Cross-disease relevance: post-infectious brain changes → ME/CFS analogy; severity applicability unknown
- Verify actual region-level findings and correlations (physical/cognitive function) via Phase 1 — pipeline must not assume findings
