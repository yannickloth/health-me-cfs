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
| 4 | Fibromyalgia not primarily autoimmune (no MHC/immune-heritability signal) | 1 | 0.60 | ⬜ pending | Kerrebijn2026 vs Clauw2024 debate |
| 5 | Shared transdiagnostic CNS genetic factor across fibromyalgia-psychiatric-chronic-pain | 1 | 0.52 | ✅ Phase 3 integrated | Johnston2025, Lin2026 |
| 6 | Direct FM×ME/CFS genetic correlation (research gap) | 2 | 0.55 | ✅ Phase 3 integrated | oq in ch14 |
| 7 | Shared central genetic architecture fibro-mecfs (ch04) | 1 | 0.55 | ✅ Phase 3 integrated | hyp in ch04 subsec-04 |
| 8 | Autoimmune reconciliation (antibody subset under non-HLA architecture) | 1 | 0.40 | ✅ Phase 5 integrated | hyp-fibromyalgia-autoimmune-reconciliation in ch14 |
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

## Certainty Bump Log
| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|-----------|-------|----------|----------|---|--------|
| spec:shared-polygenic-different-regulatory (ch14d) | 6 | 0.50 | 0.55 | +0.05 | External validation by Kerrebijn 2026 fibromyalgia GWAS (brain-enriched heritability + shared risk regions OLFM4/RABGAP1L/GPR52) |
| hyp:fibromyalgia-cns-shared-genetic-vulnerability (ch14) | 3 | — | 0.60 | new | new hypothesis (not a bump) |
| hyp:shared-transdiagnostic-cns-genetic-factor (ch14) | 3 | — | 0.55 | new | new hypothesis |
| hyp:shared-central-genetic-architecture-fibro-mecfs (ch04) | 3 | — | 0.55 | new | new hypothesis |
| hyp:fibromyalgia-autoimmune-reconciliation (ch14) | 5 | — | 0.40 | new | new hypothesis |

## Notes
- Existing related plans: `shared-mechanisms-fibromyalgia-mecfs-longcovid-integration-plan.md` (symptom-level overlap, older), `chronic-overlapping-pain-multimorbidity-2026-integration-plan.md`, `ldn-fibromyalgia-responder-rates-integration-plan.md`. This is a distinct genetic-architecture topic.
- MIXED mode: shared files (registry, bib, appendix-h) may be concurrently written by tryptophan cycle — track by key/label.
