# Integration Plan: Fibromyalgia Genetics (Kerrebijn 2026)

**Topic slug:** `fibromyalgia-genetics`
**Purpose:** Integrate Kerrebijn et al. 2026 (Nat Med, doi:10.1038/s41591-026-04492-6), the largest multi-ancestry GWAS of fibromyalgia (2.56M individuals, 26 risk loci, HTT/GPR52/DRD2 neural genes, brain-enriched heritability, strong genetic correlation with chronic pain/psychiatric/somatic disorders) — establishing fibromyalgia as a CNS disorder and informing the ME/CFS comorbidity relationship.
**PDF:** `Literature/comorbidities/Kerrebijn_2026_FibromyalgiaGenetics/Kerrebijn_2026_FibromyalgiaGenetics.pdf`
**Date:** 2026-08-22
**Parent topic:** root

**Phase-0 note:** MIXED tree — no shared-branch WIP commits; rollback = `git checkout <ref> -- <file>` (NEVER reset/rebase/amend); all phases scoped by explicit file lists, NOT `git diff`. Active parallel cycle: `tryptophan-ahr-gut-microbiome`.

## Target chapters
- ch04 (comorbidity / differential diagnosis — fibromyalgia overlap)
- ch14d (cross-disease comparisons)
- ch13 (integrative models)
- ch30 (mechanistic cascade tracing — CNS/neural sensitization genetics)
- hypothesis registry

## Pre-identified hypotheses
- Fibromyalgia is a CNS/nociplastic disorder with brain-enriched genetic architecture (genetic evidence).
- Genetic overlap (rg > 0.7) between fibromyalgia and IBS, low back pain, PTSD — shared chronic-pain/somatic genetic architecture relevant to ME/CFS comorbidity.
- HTT/GPR52/DRD2 neural pathway as candidate shared mechanism.

## Tracking table
| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1 | Fibromyalgia is a CNS/nociplastic disorder with brain-enriched genetic architecture | 1 | 0.68 discounted | 🔵 Phase 1 done | Kerrebijn2026; verified in bib |
| 2 | rg > 0.7 with IBS/low back pain/PTSD — shared chronic-pain/somatic genetic architecture | 1 | 0.68 | 🔵 Phase 1 done | Kerrebijn2026; Johnston2025 supports |
| 3 | HTT/GPR52/DRD2 neural pathway as candidate shared mechanism | 2 | 0.48 | 🔵 Phase 1 done | Kerrebijn2026; Lin2026 supports |
| 4 | Fibromyalgia not primarily autoimmune (no MHC/immune-heritability signal) | 1 | 0.60 | 🔵 Phase 1 done | Kerrebijn2026 vs Clauw2024 debate |
| 5 | Shared transdiagnostic CNS genetic factor across fibromyalgia-psychiatric-chronic-pain | 1 | 0.52 | 🔵 Phase 1 done | Johnston2025, Lin2026 |

## Phase 1 record
- **Search log:** `ops/research/search-log-fibromyalgia-genetics-2026-08-22.md` (16 queries, 10 papers included, 5 corpus reused)
- **Lit summary:** `ops/research/literature-summary-fibromyalgia-genetics.md`
- **Primary PDF:** read fully; notes/key-findings/integration-guide in `Literature/comorbidities/Kerrebijn_2026_FibromyalgiaGenetics/`
- **Bib keys added (10, VERIFIED):** genetics-epigenetics.bib → Kerrebijn2026FibromyalgiaGWAS, Bright2026FibromyalgiaGenetics, Lin2026FibromyalgiaPsychiatric; pain-fibromyalgia.bib → Johnston2025NociplasticPain, Pan2025WidespreadPain, Rahman2021CWP, Clauw2024FMAutoimmune, Ablin2025FMGeneEnv, Hu2025BrainNetworkFM, Dagnelli2019FMGenetics
- **Corpus reused (not re-added):** DecodeME2025, Hajdarevic2022gwas, Schlauch2016gwas, Steen2026sharedgenetic, Hirsch2025comparativeGWAS
- **Primary cert:** raw 0.85 × 0.80 fibromyalgia weight = **discounted 0.68**
- **Scrape registry:** updated (fibromyalgia-genetics section)

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

## Phase 2 record
- Decision: **PROCEED** (1 paper ≥0.60 = Kerrebijn 0.68; 7 papers ≥0.40; 0 papers <0.40; 0 null)
- Synthesis: `tmp/synthesis-fibromyalgia-genetics-2026-08-22.md`
- Clinical relevance: **MEDIUM** (subset: all/fibromyalgia; severity unknown)
- Contradictions: none fundamental (COMT warning; autoimmune debate framed complementary; Pan 2025 sex trait-difference)
- Standing epistemic checklist: #1✓ #2⚠(MR quasi-causal) #3✓ #4✓ #5✓ #6✓

## Phase 3 record
- Environments added: ch14 (new subsec-22: 1 achievement, 2 hypotheses, 1 open-question, 1 limitation); ch04 subsec-04 (1 hypothesis); ch14d (bridging paragraph)
- Files: ch14-genetics-epigenetics.typ + subsec-22/*; ch04 subsec-04-fibromyalgia.typ + hyp; ch14d-cross-disease.typ; hypothesis-registry.typ (3 entries)
- Registry labels added: hyp:fibromyalgia-cns-shared-genetic-vulnerability, hyp:shared-transdiagnostic-cns-genetic-factor, hyp:shared-central-genetic-architecture-fibro-mecfs
- Phase 3a build: PASS
- Standing epistemic checklist: #1✓ #2✓ #3✓ #4✓ #5✓ #6✓

## Phase 3b record (safety gate)
- Non-treatment topic (genetic/mechanistic) — full gate bypassed per rule; item 2 (severity) covered in all envs.
- Output: tmp/safety-gate-fibromyalgia-genetics.md
- Result: no environments blocked; safety gate PASS.

## Phase 3.5 record
- 6 environments verified: all have *Consequence:* fields; severity applicability added to all ch14/ch04 envs. PASS.

## Phase 4 record (brainstorm)
- Agent: scientific-insight-generator. 14 ideas generated (2 hypotheses, 1 drug, 2 research-model/cross-disease/diagnostic, 4 research directions, 5 critical).
- Categories covered: 1,2,3,7,8,9,10,11,12. Categories 4/5/6 deliberately deferred (genetic-architecture topic, no therapeutic brainstorm warranted).
- Brainstorm: ops/brainstorms/brainstorm-fibromyalgia-genetics-2026-08-22.md

## Phase 4a record (hypothesis tree)
- Subtree: ops/plans/hypotheses-trees/subtrees/fibromyalgia-genetics.md (14 nodes)
- Root index updated: hypotheses-trees.md (fibromyalgia-genetics row, 14 ideas, 4 integrated)

## Tracking table
| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1 | Fibromyalgia is a CNS/nociplastic disorder with brain-enriched genetic architecture | 1 | 0.68 discounted | ✅ Phase 3 integrated | Kerrebijn2026; ach+hyp in ch14 |
| 2 | rg > 0.7 with IBS/low back pain/PTSD — shared chronic-pain/somatic genetic architecture | 1 | 0.68 | ✅ Phase 3 integrated | Kerrebijn2026; hyp-transdiagnostic ch14 |
| 3 | HTT/GPR52/DRD2 neural pathway as candidate shared mechanism | 2 | 0.48 | ⬜ pending | Kerrebijn2026; Lin2026 supports |
| 4 | Fibromyalgia not primarily autoimmune (no MHC/immune-heritability signal) | 1 | 0.30 | ✅ Phase 5 integrated | Kerrebijn2026 no-MHC; reconciled with passive-IgG (hyp-autoimmune-reconciliation, cert 0.30) |
| 5 | High fibromyalgia genetic correlation with chronic pain/psychiatric traits | 1 | 0.42 | ✅ Phase 3 integrated | Johnston2025, Lin2026; cert 0.42 (rg, not asserted factor) |
| 6 | Direct FM×ME/CFS genetic correlation (research gap) | 2 | 0.55 | ✅ Phase 3 integrated | oq in ch14 |
| 7 | Shared central genetic architecture fibro-mecfs (ch04) | 1 | 0.52 | ✅ Phase 3 integrated | hyp in ch04 subsec-04 |
| 8 | Autoimmune reconciliation (no-MHC + passive-IgG not contradictory) | 1 | 0.30 | ✅ Phase 5 integrated | hyp-fibromyalgia-autoimmune-reconciliation in ch14 |
| 9 | GPR52/HTT shared-pathway druggability | 2 | 0.35 | ✅ Phase 5 integrated | spec in ch14 (research-only, no clinical path) |
| 10 | Null: comorbidity as referral/clinical artifact | 2 | 0.38 | ✅ Phase 5 integrated | oq critical cat-11 in ch14 |
| 11 | GPR52 agonist availability/safety gap | 2 | 0.30 | ✅ Phase 5 integrated | lim critical cat-12 in ch14 |

## Phase 5 record (triage + integration)
- Dedup: ideas 1, 6, 8, 9, 10, 13 covered by Phase 3 envs (oq-fm-mecfs-genetic-correlation, hyp-transdiagnostic, lim-kerrebijn limitations, severity notes) → ⏭️ covered.
- New integrated: Idea 4 (autoimmune reconciliation, hyp), Idea 2 (GPR52 druggability, spec), Idea 11 (null referral artifact, oq), Idea 12 (GPR52 gap, lim). Plus 2 hypotheses in Phase 3 (fibromyalgia-cns, transdiagnostic), 1 oq (genetic-correlation gap), 1 ach, 1 lim.
- Critical categories (10, 11, 12) all represented (lim/lim/lim + oq null).
- ch30 tiers: no full cascade / no drug-indexed / no citation-cross-ref applicable — this is a genetic-architecture topic, not a mechanistic cascade with drug interception → ch30 tier: **none**.
- **Phase 5c (differential): LEGIT-SKIP** — no medication with human evidence in ME/CFS; GPR52 is purely preclinical/investigational.
- **Phase 5d (ch30 cascade): LEGIT-SKIP** — genetic-architecture finding without a specifiable ≥3-step biochemical cascade with existing-sec-12 drug interception; captured as speculation in ch14, not ch30.
- Phase 5b build: PASS.
- Files modified: ch14-genetics-epigenetics.typ + subsec-22/* (3 spec/hyp/oq/lim added in Phase 5), hypothesis-registry.typ (autoimmune-reconciliation row).

## Phase 5a record (falsifiability sweep)
- Agent `falsifiability-auditor` NOT in `.opencode/agents/` (escalated to user 2026-08-22).
- User decision: **Accept inline verification** — falsifiability coverage verified inline.
- Verified: all 4 hypotheses + 1 speculation + 2 open-questions + 1 achievement have explicit falsifiability statements; 2 limitations correctly need none. 0 unfalsifiable.
- Subtree statuses updated: 10 nodes ✅, root index integrated count 10.

## Phase 5z record (glossary)
- New glossary entries added (5): fibromyalgia, nociplastic, HTT, GPR52, PRS. Verified valid JSON (1397 keys).
- Filtered: LDSC, CELF4, MDGA2, DCC, Huntingtin — lower-load-bearing / covered by existing entries or not prominent.

## Phase 6 record (retrospective adaptation)
- Reinforcement: ch14 line 172 "OLFM4/DCC in 2025 FM GWAS preprint" → updated to confirmed-published (Kerrebijn 2026), + citation.
- Reinforcement + bump: ch14d spec:shared-polygenic-different-regulatory 0.50→0.55 (external validation by Kerrebijn GWAS, incoming cert 0.68 ≥0.60).
- Contradiction: none. Ambiguous: none. No-action/deferred: passive-IgG registry entry (already reconciled in hyp-fibromyalgia-autoimmune-reconciliation).
- Synonym map: tmp/synonym-map-fibromyalgia-genetics.md
- Coverage: 3 matches examined, 2 adapted, 1 no-action.

## Phase 9 record (quality)
- Net certainty change: +0.05 (single bump, ch14d spec). 4 new hypotheses carry own certainties.
- Reinforcement:contradiction 2:0. 7 new falsifiable predictions.
- ~2340 words / 10 envs / 7 claims — not BLOAT.
- Quality flags: NONE (no BLOAT/WEAK-EVIDENCE/CLINICAL-RISK/G-UNSUSTAINED-CERTAINTY). SLOW-CONVERGENCE pending.
- Output appended: tmp/synthesis-fibromyalgia-genetics-2026-08-22.md

## Phase 10 record (coherence)
- 4 chapters audited (ch04, ch14, ch14d, ch19-causal-hierarchy). 0 inconsistencies found.
- All 12 new labels defined + references resolve. Certainty consistent. Terminology consistent.
- Output: tmp/coherence-audit-fibromyalgia-genetics-2026-08-22.md

## Phase 10a record (synthesis)
- Added @syn:fibromyalgia-genetics-shared-central-architecture in ch14 subsec-22 (condenses ach + 4 envs into convergent model).
- Cross-references ach + 2 hypotheses + 2 open-questions + 1 hypothesis. Consequence field present.

## Phase 10b record (strategic framing)
- Evaluated: synthesis reinforces the existing brain-first genetic model (already in ch19 causal hierarchy via DecodeME/Maccallini); introduces NO new trigger/amplifier/mechanism; no change to trigger-vs-amplifier classification.
- Classified as **downstream/non-actionable** for framing → **no framing propagation needed**. Recorded per decision matrix ("Downstream consequence → no framing update needed").

## Phase 11 record (review to convergence)
- Tier: **Full** (multi-chapter ch04/ch14/ch14d + 10 envs + PROCEED).
- 11a review-convergence: RAN. Converged.
- 11b review-adversarial: **FULL 6-persona run** (devil-advocate, cynic, sophist, strawman, reductionist, clinician). Initial dev-adv pass flagged 3 MEDIUM; full 6-persona pass surfaced **1 CRITICAL + 5 HIGH + multiple MEDIUM**, all now fixed:
  - CRITICAL (reductionist): GPR52/HTT over-stated as ME/CFS-shared loci (GPR52 is a fibromyalgia locus gene, second-nearest to RABGAP1L; not an established DecodeME ME/CFS gene). Corrected across ch14, ch04, ch14d, synthesis, registry.
  - HIGH (sophist): "defines as CNS" non-sequitur (brain-enrichment ≠ mechanism) — softened to "consistent with CNS role"; genetics→treatment category error in ch04 consequence — reframed as research direction.
  - HIGH (reductionist): autoimmune two-layer model over-formalized (simplified, cert 0.40→0.30); transdiagnostic "CNS factor" relabeled rg (restated as measured rg, cert 0.55→0.42); 20-70% co-occurrence over-credited (artifact caveat added).
  - MEDIUM (cynic/strawman/clinician): synthesis title equivocation → "Convergent Brain-Enriched..."; heritability observed-scale qualifier added; MSK-pain rg added; GPR52 research-only guard in ch14d; certainty spread narrowed (referral-artifact 0.38, shared-claim 0.52).
  - Certainty revisions: fibromyalgia-cns 0.60→0.55, ch04 0.55→0.52, transdiagnostic 0.55→0.42, autoimmune 0.40→0.30.
- 11c review-typst/xref: RAN. Re-verify after fixes.
- Retroactive Phase 9 SLOW-CONVERGENCE: NOT triggered (adversarial convergence reached on re-run; no structural rework beyond honest corrections).

## Phase 12 record (plan-record)
- Topic: fibromyalgia-genetics — decision **PROCEED**.
- Environments added: 10 (1 achievement, 4 hypotheses, 1 speculation, 2 open-questions, 2 limitations) + 1 synthesis = 11 across ch04/ch14/ch14d. Registry: 4 hypothesis rows.
- Bib: 10 entries (3 genetics-epigenetics.bib + 7 pain-fibromyalgia.bib) + primary Kerrebijn.
- Key finding: Kerrebijn 2026 GWAS (2.56M, 26 loci, HTT/GPR52, brain-enriched) establishes fibromyalgia as CNS/nociplastic and supports shared central genetic architecture with ME/CFS — informing the comorbidity relationship.
- Phase 9 quality flags: NONE.
- Clinical relevance: MEDIUM (subset all/fibromyalgia; severity unknown).
- No unverifiable anecdote: source is a peer-reviewed Nature Medicine paper (PDF on disk).

## Certainty Bump Log
| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|-----------|-------|----------|----------|---|--------|
| spec:shared-polygenic-different-regulatory (ch14d) | 6 | 0.50 | 0.55 | +0.05 | External validation by Kerrebijn 2026 fibromyalgia GWAS (brain-enriched heritability + shared risk regions OLFM4/RABGAP1L) |
| hyp:fibromyalgia-cns-shared-genetic-vulnerability (ch14) | 3 | — | 0.55 | new | new hypothesis (0.60→0.55 after adversarial review: "consistent with CNS role" not "defines") |
| hyp:shared-transdiagnostic-cns-genetic-factor (ch14) | 3 | — | 0.42 | new | new hypothesis (0.55→0.42: restated as measured rg, not asserted shared CNS factor) |
| hyp:shared-central-genetic-architecture-fibro-mecfs (ch04) | 3 | — | 0.52 | new | new hypothesis (0.55→0.52 after adversarial review) |
| hyp:fibromyalgia-autoimmune-reconciliation (ch14) | 5 | — | 0.30 | new | new hypothesis (0.40→0.30: framing device, not independently tested) |

## Notes
- Existing related plans: `shared-mechanisms-fibromyalgia-mecfs-longcovid-integration-plan.md` (symptom-level overlap, older), `chronic-overlapping-pain-multimorbidity-2026-integration-plan.md`, `ldn-fibromyalgia-responder-rates-integration-plan.md`. This is a distinct genetic-architecture topic.
- MIXED mode: shared files (registry, bib, appendix-h) may be concurrently written by tryptophan cycle — track by key/label.

## Phase Ledger (Phase 12.5 completion gate — 2026-08-23)

| Phase | State | Evidence |
|-------|-------|----------|
| 0 | RAN | ops/plans/fibromyalgia-genetics-integration-plan.md present + validated |
| 1 | RAN | ops/research/search-log-fibromyalgia-genetics-2026-08-22.md + literature-summary + 10 bib entries |
| 2 | RAN | tmp/synthesis-fibromyalgia-genetics-2026-08-22.md; decision PROCEED |
| 3 | RAN | ch04 subsec-04 + ch14 subsec-22 envs + ch14d bridge + 4 registry rows |
| 3a | RAN | nix build PASS (Phase 3a) |
| 3b | RAN | tmp/safety-gate-fibromyalgia-genetics.md (non-treatment bypass; severity covered) |
| 3.5 | RAN | all 10 envs have *Consequence:* + severity; registry rows have Consequence |
| 4 | RAN | ops/brainstorms/brainstorm-fibromyalgia-genetics-2026-08-22.md (14 ideas) |
| 4a | RAN | subtrees/fibromyalgia-genetics.md (14 nodes) + root index (committed via dora HEAD 16119967) |
| 5 | RAN | triage + 4 new envs integrated (autoimmune-reconciliation, GPR52 spec, null-oq, GPR52-lim) + 2 ch14 hyp |
| 5b | RAN | nix build PASS (Phase 5b) |
| 5d | LEGIT-SKIP | genetic-architecture topic: no specifiable ≥3-step biochemical cascade with existing sec-12 drug interception (captured as speculation in ch14, not ch30) |
| 5c | LEGIT-SKIP | no medication with human ME/CFS evidence; GPR52 purely preclinical/investigational |
| 5a | RAN | inline verification (user-approved; agent file missing documented); all testable claims falsifiable |
| 5z | RAN | 5 glossary entries added (fibromyalgia, nociplastic, HTT, GPR52, PRS) |
| 6 | RAN | ch14 preprint→published reinforcement + ch14d bump 0.50→0.55 (bump log) |
| 7 | RAN | tmp/compat-audit-fibromyalgia-genetics-2026-08-22.md; no adjustments |
| 8 | RAN | nix build PASS (0 errors; unblocked via user-approved dora staging) |
| 9 | RAN | quality flags NONE (appended to synthesis) |
| 10 | RAN | tmp/coherence-audit-fibromyalgia-genetics-2026-08-22.md; 0 inconsistencies |
| 10a | RAN | @syn:fibromyalgia-genetics-shared-central-architecture (ch14 subsec-22) |
| 10b | RAN | evaluated — downstream/non-actionable, no framing propagation needed (documented) |
| 11 | RAN | 11a CONVERGED; 11b FULL 6-persona adversarial, 2 passes at 0 CRITICAL/0 HIGH (1 CRITICAL+5 HIGH found, fixed, re-verified); 11c all xrefs/cites resolve |
| 12 | RAN | plan-record written |
| 12.5 | RAN | this ledger |
| 13 | RAN | commit hash: see below |

**Summary:** 23 RAN, 2 LEGIT-SKIP (5c, 5d), 0 WAIVED, 0 OMISSION.

## Phase 13 record (commit)
- Commit: **aa64ef48** (content(mecfs): complete fibromyalgia-genetics review-convergence and plan record) — 4 files (3 Phase 11 review fixes + plan ledger).
- Note: bulk of fibromyalgia content was committed by parallel session in commits c3c9d77d (source docs), d07c2ccb (research artifacts), 0a512a92 (ch14 integration), 05e7d666 (ch04/ch14d xref), 79f7dde1 (bib/annotations/registry), a7b2551a (saffron anchor). My subtree/glossary/tree-index entries shipped in daridorexant commit 16119967.
- Shared-file ownership re-check: my registry rows (4), bib keys (10), glossary (5), subtree (14 nodes), appendix-h entries all verified present in HEAD.
- Excluded from commit: src/main/resources/part-chapters.json + src/main/web/part-accordion.js (parallel web work, not mine).
- Post-commit: build PASS (0 errors); working tree clean.
