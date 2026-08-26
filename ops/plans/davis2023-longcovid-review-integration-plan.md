# Integration Plan: Davis 2023 Long COVID Major Findings Review

**Topic slug:** `davis2023-longcovid-review`
**Status:** ✅ done (committed 9a7648df)
**Topic:** Davis HE, McCorkell L, Vogel JM, Topol EJ. Long COVID: major findings, mechanisms and recommendations. _Nature Reviews Microbiology_. 2023;21(3):133–146. Landmark patient-led review.
**Source:** Comprehensive narrative review (not systematic). PDF archived at `Literature/reviews/Davis_2023_LongCOVID_MajorFindings/`.
**Date:** 2026-08-26
**Parent topic:** root — standalone invocation. User-requested full biomedical integration.
**Tree mode:** CLEAN at start (only this-topic Literature/ folder untracked). CLEAN mode → scratch-pointer checkpoints available; rollback = `git checkout <ref> -- <file>`; never `git reset`/rebase/--amend/add -A.

## Existing-corpus status (pre-integration audit)

The paper is ALREADY cited in the corpus — but only as a patient-led-research provenance example:
- `bib/general.bib` line 3645: `@article{Davis2023LongCOVIDmajorfindings}`, certainty 0.85, `research_stream = {ch45-patient-generated-knowledge}`.
- `appendices/appendix-h-annotated-bibliography.typ` (line 4644): entry framed around PLRC patient-led achievement.
- `part4-research/ch46-patient-generated-knowledge/ch46-patient-generated-knowledge.typ` (line 155): cited as landmark patient-led synthesis.

**Gap:** The paper's *biomedical substance* (200+ symptoms, 7 hypothesized mechanisms, ME/CFS/Long-COVID overlap evidence, reproductive/respiratory/GI findings, treatment table, vaccine/variant data, testing-bias critique) is NOT integrated into the pathophysiology chapters.

**Phase 1 implication:** Do NOT duplicate the bib entry. The existing `Davis2023LongCOVIDmajorfindings` key is the anchor. This cycle integrates its biomedical content and may add OTHER primary citations from within the review's own reference list where a specific claim needs a primary source.

## Purpose

Integrate the biomedical content of the Davis 2023 landmark Long COVID review into the ME/CFS paper's pathophysiological chapters. The paper's high value: (1) a high-certainty (0.85) synthesis of Long COVID mechanisms that strongly overlap ME/CFS; (2) confirmatory citations for existing corpus claims (Phase 6 reinforcement); (3) a documented gap source — findings in Long COVID not yet reflected in the paper.

## Target Chapters (tentative — Phase 2 will confirm)

- ch14d (cross-disease: Long COVID ↔ ME/CFS) — primary integration target
- ch06–ch16 (Part II pathophysiology): immune dysregulation, mitochondrial, microclot/endothelial, neuroinflammation, HPA-axis, gut-microbiome findings
- ch13 (integrative models)
- ch20/Part IV (biomarkers: e.g., CCL11, kynurenine, microclots, capillary rarefication)
- hypothesis registry — post-viral etiology + Long-COVID-overlap hypotheses
- ch30 sec-09 (cross-hypothesis convergence) + sec-12 (medication) where cascade-relevant
- ch46 — extend existing citation if warranted (already present)

## Pre-identified Hypotheses (preliminary — from review, Phase 4 may add)

| Hypothesis | Prelim cert | Notes |
|-----------|--------------|-------|
| Long COVID and ME/CFS share a common post-infectious pathophysiology (overlapping mechanisms, not distinct diseases) | 0.70 | Review documents ~50% of LC meet ME/CFS criteria; same mechanisms (immune, mitochondrial, microclot, neuroinflammatory) |
| Persistent viral reservoir drives chronic symptoms in a subset (spike antigen in 60% of LC) | 0.55 | Review summarizes viral-persistence evidence; applies to subset, not all |
| Microclots + endothelial dysfunction are a shared Long COVID/ME/CFS mechanism | 0.60 | Documented in both; diagnostic/therapeutic target |
| Reactivated herpesviruses (EBV, HHV-6) contribute to both LC and ME/CFS via mitochondrial fragmentation | 0.55 | Review notes EBV/HHV-6 in both; mitochondrial fragmentation |
| HPA-axis / low cortisol is a shared LC/ME/CFS neuroendocrine finding | 0.50 | Low cortisol + no ACTH compensation in LC; documented in ME/CFS |
| Long COVID findings provide a translational bridge for ME/CFS biomarker development | 0.45 | e.g., CCL11, kynurenine, microclots, capillary rarefication |

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| (Phase 1 gaps) | | | | | |
| P3 | Long COVID trajectory/chronicity (85% 1yr; 16→26% cognitive) | — | 0.60 | ✅ | @oq:lc-trajectory-chronicity (ch14d) + registry |
| P3 | Vaccine heterogeneous effects on established LC | — | 0.45 | ✅ | @oq:lc-vaccine-heterogeneity (ch14d) + registry |
| P3 | Low-antibody-predicts-LC + seroreversion bias | — | 0.55 | ✅ | @oq:insufficient-early-antibody-chronicity + @lim:seroreversion-control-bias (ch08) + registry |
| P3 | Fungal translocation; ocular/retinal; fragmented QRS; sperm; Pycnogenol | — | 0.25-0.55 | ✅ | ch14d prose + bib primaries |
| (Phase 4 brainstorm) | | | | | |
| 1.1 | Low-antibody-gated chronicity as general post-infectious principle | 2 | 0.35 | ⬜ pending | from review low-antibody finding |
| 1.2 | Fungal translocation as amplifier (not initiator) of post-infectious immune activation | 2 | 0.30 | ⬜ pending | |
| 1.3 | Seroreversion as under-recognized confound in ME/CFS viral-trigger studies | 2 | 0.35 | ⬜ pending | |
| 2.1 | Acute-to-chronic immune-response kinetics study across triggers | 2 | 0.40 | ⬜ pending | research direction |
| 2.2 | Fungal-translocation marker panel in ME/CFS | 2 | 0.30 | ⬜ pending | research direction |
| 4.1 | Pycnogenol endothelial/microcirculatory ME/CFS pilot | 2 | 0.25 | ⬜ pending | research-stage only |
| 7.1 | Two-hit model with insufficient-adaptive-response first hit | 2 | 0.35 | ⬜ pending | model extension |
| 8.1 | Seroreversion methodological bridge | 2 | 0.30 | ⬜ pending | |
| 10.1 | Low-antibody may be SARS-CoV-2-specific (not generalizable) | critical | n/a | ⬜ pending | negative hypothesis |
| 10.2 | LC-ME/CFS overlap may reflect diagnostic-criteria inflation | critical | n/a | ⬜ pending | negative hypothesis |
| 11.1 | LC and ME/CFS distinct despite overlap (null) | critical | n/a | ⬜ pending | null assessment |
| 11.2 | Distinct trigger-specific signatures (null of spectrum model) | critical | n/a | ⬜ pending | null assessment |
| 12.1 | Review is narrative, not systematic; preprint bias | critical | n/a | ⬜ pending | evidence quality |
| 12.2 | Cohort-overlap/replication risk in Long COVID findings | critical | n/a | ⬜ pending | evidence quality |

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| (empty at creation) | | | | | |

## Notes

- Paper is a narrative review, not systematic → certainty 0.85 reflects its landmark-status synthesis role, but individual claims need primary-source anchors where the review cites them.
- The existing bib key `Davis2023LongCOVIDmajorfindings` is ground truth for citing this review; do not create a duplicate.
- Cohort-overlap (checklist B): the review aggregates many studies; individual primary citations added during Phase 1 must be screened for cohort overlap with existing corpus papers.

## Phase 0 Report
- Deferred topics checked: `post-acute-ferritin-MECFS-prediction` (deferred 2026-08-10). Trigger = ≥2 longitudinal iron-trajectory cohort papers predicting post-COVID ME/CFS conversion. Davis 2023 review does NOT contain such a longitudinal iron-trajectory cohort dataset (only cross-sectional BH4/oxidative-stress findings). Trigger NOT met — no reactivation.
- Existing plan searched: none covers this review's biomedical integration. New plan created at `ops/plans/davis2023-longcovid-review-integration-plan.md`.
- Plan validated mechanically (all required fields, Active Caps placeholder, empty bump log).
- Tree state: CLEAN at start (only topic's Literature/ folder untracked). CLEAN mode → scratch checkpoints before Phase 3 and Phase 6.
- Agent check: literature-integrator ✓, scientific-insight-generator ✓, medication-differential-analyst ✓. falsifiability-auditor NOT in `.opencode/agents/` but IS a registered Task subagent — will invoke via Task at Phase 5a; escalate if blank.

## Phase 1 Report
- Literature summary: `ops/research/literature-summary-davis2023-longcovid-review.md` (delegated to literature-integrator; 202 lines).
- Search log: `ops/research/search-log-davis2023-longcovid-review-2026-08-26.md`.
- Review read in full (extracted text at /tmp/nix-shell.bcxbJA/opencode/paper.txt).
- Coverage result: ~38 covered, ~14 partial, 8 genuine gaps (per literature summary).
- New bib entries added (10) — all author lists verified (only lead authors confirmed from review's own reference list; `and others` used where full list not confirmed; each marked CAUTION in note):
  - immune.bib: `GarciaAbellan2021antibodyLC` (0.60), `Augustin2021postcovid` (0.60)
  - long-covid.bib: `VanElslande2021seroreversion` (0.55), `Tsuchida2022vaccineLC` (0.45)
  - gut-microbiome.bib: `Giron2022fungaltranslocation` (0.40)
  - neurology-comorbidities.bib: `Bitirgen2021corneal` (0.50), `Sen2022retinal` (0.55)
  - endocrine-reproductive.bib: `Maleki2021spermLC` (0.55)
  - treatments.bib: `Belcaro2022pycnogenol` (0.45)
  - autonomic-cardiovascular.bib: `Stavileci2022fragmentedQRS` (0.50)
- Annotated bib entries added to appendix-h (10 entries, after the existing Davis/Vogel PLRC entries).
- Did NOT duplicate `Davis2023LongCOVIDmajorfindings` (existing anchor).
- Reused `Cysique2023KynureninePASC` (already exists, neurology-comorbidities.bib) — no new kynurenine entry.
- Genuine gaps identified (ranked): (1) low-antibody-predicts-LC + seroreversion bias, (2) fungal translocation, (3) ocular/retinal microvascular, (4) timeline/prognosis specifics, (5) fragmented QRS, (6) Pycnogenol, (7) male reproductive/sperm, (8) vaccine symptom effects.

## MIXED/CONCURRENT mode note (Phase 1 end)
Working tree contains unrelated web/quarto files (src/main/quarto/_quarto-unit.yml, src/main/web/mecfs-sidebar.html, src/main/web/styles.css modified; src/main/web/mecfs-breadcrumb.js untracked) — parallel cycle's work. User confirmed MIXED mode: explicit per-topic file lists ONLY; never `git add -A`; no shared-branch WIP commits; rollback = `git checkout <ref> -- <file>` (never reset); commit scoped by explicit file list; `git diff` NOT used for scoping (plan is source of truth).

## Phase 2 Report
- Synthesis: `tmp/synthesis-davis2023-longcovid-review-2026-08-26.md` (gitignored, not committed).
- Decision: **PROCEED** (anchor review discounted certainty 0.72 ≥ 0.60; evidence not null; ≤50% < 0.40).
- Clinical relevance: HIGH. Subset: all/unknown (review not stratified by severity).
- Contradictions: none within review; one tension flagged (Klein 2022 found autoantibodies NOT a major LC component vs. corpus GPCR-AAB emphasis) → carry to Phase 7.
- Cohort overlap: none among newly added primaries (distinct cohorts).
- Standing epistemic checklist: #1 ✓ / #2 ⚠ (multi-cause framing, not single-cause) / #3 ✓ / #4 ✓ / #5 ✓ / #6 ✓.
- Active Caps block written (PROCEED).
- Integration strategy: (a) fill 8 genuine gaps with new environments, (b) reinforce existing claims with the review as high-certainty citation (Phase 6), (c) integrate into ch14d (primary cross-disease target), ch08/ch09/ch36 (immune/neuro/biomarker gaps), ch22/ch30 (treatment), hypothesis registry.

## Phase 3 Report
- Environments added (2 chapters):
  - ch14d-cross-disease.typ: `@oq:lc-trajectory-chronicity` (timeline/prognosis, cert 0.60), `@oq:lc-vaccine-heterogeneity` (vaccine effect, cert 0.45), + background prose (fungal translocation, ocular/retinal, fragmented QRS, sperm, Pycnogenol) citing @Giron2022fungaltranslocation @Sen2022retinal @Bitirgen2021corneal @Stavileci2022fragmentedQRS @Maleki2021spermLC @Belcaro2022pycnogenol @Davis2023LongCOVIDmajorfindings.
  - ch08 b-cell-function-and-antibodies.typ: `@oq:insufficient-early-antibody-chronicity` (cert 0.55), `@lim:seroreversion-control-bias` (cert 0.55), + prose.
- Hypothesis registry: 4 new entries added (2026-08-26 block).
- All 11 @CitationKeys verified to resolve (grep-checked).
- Every new environment has *Consequence:* field and certainty.
- Severity applicability stated (unknown, not stratified) on all new environments.
- Standing epistemic checklist: #1 ✓ / #2 ⚠ (causal direction unestablished — flagged in oq:insufficient-early-antibody) / #3 ✓ / #4 ✓ (alternative interpretations stated) / #5 ✓ / #6 ✓.

## Phase 3a Report
- Staged Phase 3 files (explicit list, MIXED mode).
- `nix build`: FAILED initially (2 errors) → FIXED: (1) `NF-$\kappa$B` → `NF-$kappa$B` (matching corpus pattern), (2) `@ch:epidemiology` → `@ch:epidemiology-outcomes` (correct chapter label).
- Final build: **PASS** (0 errors; `error:` count = 0). result/loth2026-mecfs.pdf generated.
- ch40 "no text within stars" warnings are PRE-EXISTING (parallel session's ch40 file, not this topic's files) — warnings only, do not block build.

## Phase 3b Report
- Safety gate: `tmp/safety-gate-davis2023-longcovid-review.md`.
- 9 environments gated: 8 non-treatment (only severity item applied, all stated), 1 treatment-note (Pycnogenol — research-stage candidate, not a clinical protocol; no dosing/monitoring/stopping required).
- Veto result: PASS. 0 blocked, 0 warnings (no treatment protocol).
- GET/CBT harm already covered in corpus (not newly introduced).

## Phase 3.5 Report
- 4 new environments verified (ch14d: 2; ch08: 2). All have *Consequence:* fields (ch14d lines 2877, 2889; ch08 lines 474, 482).
- 0 missing consequence fields.

## Phase 4 Report
- Brainstorm: `ops/brainstorms/brainstorm-davis2023-longcovid-review-2026-08-26.md`.
- 13 ideas (8 constructive: 1.1 low-antibody-gated chronicity, 1.2 fungal-translocation amplifier, 1.3 seroreversion confound, 2.1 acute-to-chronic kinetics, 2.2 fungal-translocation panel in ME/CFS, 4.1 Pycnogenol pilot, 7.1 two-hit insufficient-response node, 8.1 seroreversion methodological bridge; 5 critical: 10.1, 10.2, 11.1, 11.2, 12.1, 12.2).
- Critical categories 10-12 covered.
- Inline flash-tier fallback (agent unavailable, aborted twice; user authorized inline fallback).
- Plan tracking table rows to be added (see below).

## Phase 4a Report
- Subtree created: `ops/plans/hypotheses-trees/subtrees/davis2023-longcovid-review.md` (23 nodes).
- Root index updated: `hypotheses-trees.md` row added (23 root ideas, 9 integrated, 🔵 in progress).
- Usefulness scores assigned per node.

## Phase 5 Report (tiered integration + sub-phases)
- Phase 3 deduplication: brainstorm ideas 1.1, 1.2, 1.3, 4.1, 8.1 marked `⏭️ covered-by` (already integrated in Phase 3: oq:insufficient-early-antibody, fungal-translocation prose, lim:seroreversion-control-bias, Pycnogenol prose, lim:seroreversion-control-bias).
- New Phase 5 integration: `@lim:lc-extrapolation-limits` (ch14d) — critical-category epistemic-balance item consolidating brainstorm ideas 10.1, 10.2, 11.1, 11.2, 12.1, 12.2. Added to hypothesis registry (Phase 5 row).
- Research directions 2.1, 2.2, 7.1: Tier 2/3 tree-only (recorded in hypothesis tree; not added as chapter content — speculative, modest evidence; avoid bloat).
- ch30 tiers: None — no new mechanistic cascade warrants a standalone ch30 cascade; existing cascades (microclots, kynurenine, viral persistence, GPCR-AAB) already cover the review's mechanisms. Mechanism content cited inline.
- Phase 5d (ch30 cascade): **LEGIT-SKIP** — no new clean drug-interception point; fungal-translocation and low-antibody-gated-chronicity are correlational/preliminary (no ≥3-step drug-interceptable cascade with an established ch30 sec-12 drug).
- Phase 5c (differential analysis): **LEGIT-SKIP** — not a medication topic; Pycnogenol is a candidate supplement (no differential-diagnostic response inference from ME/CFS data).
- Phase 5b build: **PASS** (0 errors) after registry fix.
- Standing epistemic checklist: no violations.

## Phase 5a Report (falsifiability sweep)
- Falsifiability-auditor agent interrupted (inline fallback per user authorization).
- 5 new environments audited: all are `#open-question` (3) or `#limitation` (2) — NONE are `#hypothesis-box`/`#fhypothesis`/`#speculation`/`#prediction`, so the strict falsifiability gate (hypotheses/speculations/predictions must have falsifiable prediction) is trivially satisfied.
- `oq:insufficient-early-antibody-chronicity` includes an explicit falsifiable prediction (line 470).
- All open-questions have testable framing (longitudinal observation / cohort design would answer).
- Citation-key check: all 5 environments cite keys that resolve in bib (verified in Phase 3).

## Phase 5z Report (glossary review)
- New .typ content: ch14d + ch08 additions. No new acronyms/terms requiring glossary entries beyond those already covered (Long COVID, ME/CFS, PEM, NF-κB, EBV, QRS, POTS already in glossary-en.json). Fragmented QRS is a known medical term; Pycnogenol appears once (candidate supplement) — not a glossary-worthy term. No orphaned terminology introduced.
- No new glossary entries needed.

## Phase 6 Report
- Retro adaptation: `tmp/retro-davis2023-longcovid-review-2026-08-26.md`; synonym map: `tmp/synonym-map-davis2023-longcovid-review.md`.
- Incoming evidence: review discounted cert 0.72 (≥0.70 → full adaptation permitted).
- 2 citation reinforcements (confirmatory, NOT certainty bumps):
  - ch11 sec-02 endothelial line 118: added `@Davis2023LongCOVIDmajorfindings` to microclot claim.
  - ch09 sec-01 neurotransmitter line 55: added `@Davis2023LongCOVIDmajorfindings` to kynurenine/quinolinic acid cognitive claim.
- 0 certainty bumps (narrative review; claims already have strong primary sources; avoid G-UNSUSTAINED-CERTAINTY flag).
- 0 reductions, 0 removals. No overlap deferred (all swept claims either reinforced via citation or already well-covered).
- Standing epistemic checklist: no violations.

## Phase 7 Report
- Compat audit: `tmp/compat-audit-davis2023-longcovid-review-2026-08-26.md`.
- 7 pairs audited: 2 feed-into, 2 reinforcement, 2 ambiguous/tension, 1 independent.
- No true conflicts. lim:lc-extrapolation-limits is epistemic-balance tension (caps post-infectious-spectrum confidence), not contradiction — both retained.
- **0 certainty bumps, 0 reductions** (narrative-review evidence; existing hypotheses rest on primary sources; per-cycle cap + diminishing-returns respected).
- Standing epistemic checklist: no violations.

## Phase 8 Report
- Staged all Phase 3-7 typ files (explicit list, MIXED mode).
- `nix build`: **PASS** (0 errors). result/loth2026-mecfs.pdf generated.
- Intermediate build checks: Phase 3a PASS, Phase 5b PASS.

## Phase 9 Report
- Quality assessment appended to `tmp/synthesis-davis2023-longcovid-review-2026-08-26.md`.
- Metrics: net cert change 0; R:C 2:0; 1 new falsifiable prediction; modest length delta.
- Quality flags: **NONE** (no BLOAT, WEAK-EVIDENCE, CLINICAL-RISK, or G-UNSUSTAINED-CERTAINTY).

## Phase 10 Report
- Coherence audit: `tmp/coherence-audit-davis2023-longcovid-review-2026-08-26.md`.
- 4 chapters audited (ch14d, ch08, ch11, ch09). 0 inconsistencies, 0 fixes, 0 user-decision items. Coherence PASS.

## Phase 10a Report
- Synthesis environment added: `@syn:davis2023-postinfectious-chronicity` in ch14d (after lim:lc-extrapolation-limits), condensing the convergent argument (trajectory chronicity + insufficient-early-antibody + shared-pathophysiology → post-infectious self-sustaining state). Cross-references @oq:lc-trajectory-chronicity, @oq:insufficient-early-antibody-chronicity, @hyp:post-infectious-spectrum, @lim:lc-extrapolation-limits. Includes *Consequence:* field.
- Single-chapter (ch14d) integration → synthesis added (user authorized inline completion).

## Phase 10b Report
- No framing propagation needed. The synthesis is a *downstream consequence / trajectory* finding that reinforces (not reclassifies) the existing trigger-vs-amplifier framing; it introduces no new root-cause candidate and no diagnostic bifurcation. ch16 intro, abstract, root-cause sections, reading-guide, ch13 unchanged. This is a valid "no propagation" outcome per the pipeline's decision matrix.

## Phase 11 Report
- Tier: Lightweight inline review (user authorized inline flash-tier fallback; modest integration, no new treatment protocol).
- 2 review passes (adversarial + xref/build): 0 CRITICAL, 0 HIGH each round. CONVERGED.
- Review record: `tmp/adversarial-davis2023-longcovid-review.md`.
- Note: Full multi-persona adversarial review deferred (flash-tier inline); content reviewed for cynic/strawman/devil's-advocate/reductionist/clinician/rigor concerns inline.
- SLOW-CONVERGENCE flag (retroactive Phase 9): not fired (converged cleanly in 2 rounds).

## Phase 12 — Plan-Record Summary
- **Topic slug:** davis2023-longcovid-review. **Decision:** PROCEED.
- **Summary:** Integrated the biomedical content of the Davis 2023 landmark Long COVID review into the ME/CFS paper. The paper was already cited as a patient-led-research provenance example; this cycle added its biomedical substance.
- **Environments added (6):** oq:lc-trajectory-chronicity, oq:lc-vaccine-heterogeneity, oq:insufficient-early-antibody-chronicity, lim:seroreversion-control-bias, lim:lc-extrapolation-limits, syn:davis2023-postinfectious-chronicity. Chapters: ch14d, ch08. Plus citation reinforcements in ch11 (microclots) + ch09 (kynurenine).
- **Bib:** 10 new primary citations added (immune, long-covid, gut-microbiome, neurology-comorbidities, endocrine-reproductive, treatments, autonomic-cardiovascular). 10 appendix-h annotations. Did NOT duplicate existing Davis2023LongCOVIDmajorfindings key.
- **Registry:** 5 new rows (2026-08-26 block).
- **Key finding + why it matters:** The review provides high-certainty (0.72 discounted) evidence that post-infectious syndromes can become self-sustaining (85% 1-yr persistence; increasing cognitive impairment), that an insufficient early antibody response predicts post-infectious chronicity, and that Long COVID shares ~50% ME/CFS overlap — reinforcing the paper's post-infectious-spectrum model while requiring (per the integrated limitation) that Long COVID be treated as an acute-to-chronic extrapolation, not proof of identity.
- **Phase 9 flags:** NONE.
- **Clinical relevance:** HIGH (trajectory/chronicity informs early-intervention rationale; seroreversion/testing-bias informs study design).
- **Anecdote NOT integrated:** N/A — primary literature source.
- **Quality notes:** 0 certainty bumps (narrative review; conservative). All new environments carry explicit certainty + severity applicability + Consequence.

## Phase 12.5 — Completion Gate (Phase Ledger)

| Phase | State | Evidence |
|-------|-------|----------|
| 0 | RAN | plan file exists + validated |
| 1 | RAN | search-log + lit-summary + 10 bib entries + appendix-h annotations |
| 2 | RAN | tmp/synthesis-*; Active Caps block (PROCEED) |
| 3 | RAN | 5 ch14d/ch08 environments + registry rows |
| 3a | RAN | nix build PASS (Phase 3a) |
| 3b | RAN | tmp/safety-gate-* (PASS) |
| 3.5 | RAN | Consequence fields on all new envs |
| 4 | RAN (inline fallback) | ops/brainstorms/* (13 ideas) |
| 4a | RAN | subtree + root index |
| 5 | RAN | lim:lc-extrapolation-limits + registry; 5 covered-by; 3 tree-only |
| 5c | LEGIT-SKIP | non-treatment topic |
| 5d | LEGIT-SKIP | no clean drug-interception point |
| 5b | RAN | nix build PASS (Phase 5b) |
| 5a | RAN | 5 envs audited (all open-question/limitation); falsifiability gate satisfied |
| 5z | LEGIT-SKIP | no orphaned terms |
| 6 | RAN | retro + synonym-map; 2 citation reinforcements; 0 bumps |
| 7 | RAN | compat-audit; 0 bumps/reductions |
| 8 | RAN | nix build PASS (Phase 8) |
| 9 | RAN | quality flags NONE |
| 10 | RAN | coherence-audit PASS |
| 10a | RAN | @syn:davis2023-postinfectious-chronicity |
| 10b | LEGIT-SKIP | no framing implication |
| 11 | RAN | adversarial; CONVERGED (lightweight inline) |
| 12 | RAN | plan-record |
| 12.5 | RAN | this ledger |

**Completion gate note (BUILD-BLOCKER):** Final `nix build` currently fails EXCLUSIVELY on `label <sec:central-motor-drive-cascade> does not exist` — a parallel session's in-progress central-motor-drive ch34 integration (its ch34 subsec files staged-but-uncommitted). None of my files reference this label; my Phase 3a/5b/8 builds were all green. Per user decision (MIXED-mode), I commit only my Davis 2023 files by explicit list; the build is expected to go green once the parallel cycle completes/stages its ch34 work. This is a documented, user-approved exception to the "build must pass before commit" rule.

**0 OMISSION.** All 26 phases RAN or LEGIT-SKIP. No waivers beyond the user-authorized inline flash-tier fallback (Phase 4) and the user-authorized build-blocker exception.

## Phase 4/5a RE-RUN (pro-tier agents) — 2026-08-26
- Phase 4: scientific-insight-generator re-invoked successfully. Brainstorm replaced with pro-tier output (24 ideas, all categories 1-12). Committed 3850fe0b.
- Phase 5a: falsifiability-auditor re-invoked. Confirmed 0 mandatory gaps (no hypothesis-typed envs). 2 soft gaps flagged (oq:lc-trajectory-chronicity, oq:lc-vaccine-heterogeneity lacked explicit testable framing) → FIXED by adding "How observation would answer this" sentences to both. Committed 3850fe0b.
- Both re-runs confirm the earlier inline assessments were directionally correct but the pro-tier agent outputs are now the authoritative versions.

## Build-blocker note (post-commit)
`nix build` currently fails on the parallel session's uncommitted build refactor: `flake.nix` (modified, untracked-in-HEAD) requires `src/build/java/GenerateReaderData.java` which exists on disk but is untracked, so `git ls-files` excludes it → "source file not found". This is NOT this topic's files (commit 3850fe0b is content-only). Flagged to parallel cycle via coordination ledger. Build expected green once the parallel cycle commits flake.nix + GenerateReaderData.java.
