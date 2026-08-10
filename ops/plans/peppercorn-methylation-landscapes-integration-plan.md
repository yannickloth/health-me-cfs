# Integration Plan: Peppercorn 2025 Methylation Landscapes + General DNA Methylation Consolidation

**Purpose:** Two-linked scope in one cycle. (A) *Focused gap-fill on Peppercorn et al. 2025* (IJMS, "Comparing DNA methylation landscapes in peripheral blood from ME/CFS and Long COVID") — the paper is already cited in bib (`Peppercorn2025methylation`) and in ch19 (`spec:methylation-loss-consolidation`) and ch55 (`oq:consolidation-directionality`), but lacks an appendix-h annotated bibliography entry; the ME/CFS-vs-Long-COVID cross-disease comparative angle (214/429/118 DMFs, 6 opposite-direction DMFs, Pearson R=0.88 shared makeup) may be underdeveloped. (B) *General DNA methylation consolidation* — given heavy existing coverage (methylation-loss-consolidation plan, 47 ideas; methylation-vector-model plan, 6 insights done), integration is scoped as a gap + retrospective-adaptation sweep, not re-research (respects no-duplicate invariant).

## Mode
MIXED tree (komaroff-dantzer files staged + unstaged bib files + untracked plan file present). No shared-branch WIP commits; rollback = `git checkout <ref> -- <file>` (NEVER reset/rebase/amend); all phases scoped by explicit file lists from this plan, NOT `git diff`. HARD CONCURRENCY GUARDS apply.

## Target chapters
- ch12 / ch14-genetics-epigenetics (methylation findings, cross-disease ME/CFS vs LC)
- ch14d-cross-disease (comparative pathophysiology)
- ch19-causal-hierarchy/sec-01/subsec-07 (methylation-loss-consolidation spec — verify Peppercorn stats)
- ch55-causal-hierarchy-formal/sec-02 (oq:consolidation-directionality — verify Peppercorn citation)
- Appendix H (new annotated biography entry for Peppercorn 2025)

## Pre-identified claims
1. ME/CFS vs LC share a methylome but diverge at specific loci (214 vs 429 DMFs, 118 common, 6 opposite-direction) — cert 0.52 (small n=5, single lab, peer-reviewed).

## Tracking table
| # | Item | Tier | Certainty | Status | Notes |
|---|------|------|-----------|--------|-------|
| 1 | Add appendix-h annotated entry for Peppercorn 2025 | — | 0.52 | ✅ done | DOI 10.3390/ijms26146631, PMID 40724879, PMCID PMC12294161. Verified against PMC full text. |
| 2 | Fix bib `Peppercorn2025methylation` placeholder DOI + PMID/volume/pages | — | — | ✅ done | DOI → 10.3390/ijms26146631; added PMID 40724879, volume 26, number 14, pages 6631; corrected note to 214/429/118 DMFs (145/69 hyper/hypo in ME/CFS = 67.8%). |
| 3 | Verify/strengthen ME/CFS-vs-LC comparative angle in ch14d + ch19 + ch55 | 1 | 0.52 | ✅ done | Added @spec:methylene-mecfs-longcovid-distinguish to ch14d (214/429/118 DMFs; Pearson R=0.88; 6 opposite-direction DMFs; stage confound). ch19/ch55 already cite Peppercorn for 67.8% / bidirectionality. Registry entry added. |
| 4 | General DNA methylation consolidation: retrospective-adaptation sweep + gap check | 2 | — | ✅ done | Audit found methylation already comprehensively covered (loss-consolidation 47 ideas + vector-model 6 done + ch14/ch16/ch19/ch55/ch33 treatments). Filled the ONE genuine gap: ME/CFS-vs-LC methylome comparative (now ch14d @spec:methylene-mecfs-longcovid-distinguish) + ch14 cross-ref + appendix-h. No fresh synthesis — would be duplicative (no-duplicate invariant). |

## Intermediate build
- Phase 3a/5b: PASS (nix build exit 0) after fixing Typst `<`/`>` escaping in ch14d/appendix-h/registry.

## Phase record
- Phase 6 (retroactive adaptation): 1 match adapted (ch14 global-methylation section — added Peppercorn RRBS citation + cross-ref to new ch14d speculation). Reinforcement only; no certainty bumps (incoming 0.52 < 0.60, below bump floor). No contradictions.
- Phase 7 (compatibility): new claim reinforces (not conflicts) existing methylation-loss-consolidation + vector-model + "shared yet distinct" ME/CFS-vs-LC narrative. Zero conflict pairs. No certainty adjustments. Standing epistemic checklist: no violations.
- Phase 8 (build): PASS.
- Phase 9 (quality): 1 new speculation + appendix-h + 2 citation insertions, well under BLOAT threshold; clinical relevance MEDIUM; WEAK-EVIDENCE/CLINICAL-RISK/G-UNSUSTAINED-CERTAINTY all not fired.
- Phase 10 (coherence): ch14d 0.52 vs ch19 0.45 / ch55 bidirectional — complementary, no conflict. Terminology consistent (DMF/methylome/RRBS). Cross-refs resolve (build-verified). 
- Phase 10a (synthesis): skipped — single new environment, below ≥3-environments trigger.
- Phase 11 (review): LIGHTWEIGHT tier (single section + appendix-h + registry, 1 new speculation + citation insertions). Adversarial + xref pass: PASS. Epistemic checklist items #1-#6 verified clean (evidence-to-claim accurate vs PMC full text; framed as correlation not causation; human ME/CFS data no translation gap; competing stage/SARS-CoV-2 explanations enumerated; falsifiable prediction present; MEDIUM utility).
- Phase 12 (changelog): Version 7.6 entry added + reviewed.

## Certainty Bump Log
(empty — no certainty adjustments this cycle)

## Phase 13 — Commit
- Commit `01126221` `content: integrate Peppercorn 2025 ME/CFS vs Long COVID methylome + methylation gap-fill` (6 files: plan, scrape-registry, genetics-epigenetics.bib, ch14-genetics-epigenetics.typ, ch14d-cross-disease.typ, changelog).
- **MIXED-mode scope:** committed ONLY the 6 clean per-topic files. Deferred the two entangled shared files (`appendix-h`, `hypothesis-registry`) — their staged index contained both my Peppercorn/methylome entries AND the komaroff-dantzer cycle's uncommitted entries interleaved; committing them would have swept the other cycle's work into this commit (user-confirmed: defer shared files). My entries in those shared files remain in the worktree (verified present post-commit) for whichever cycle commits them first.
- Excluded (komaroff cycle / parallel): ch18 sickness-torpor files, long-covid.bib, neuroinflammation.bib, komaroff ops files, hypotheses-trees, queued-topics, autoimmunity.bib, immune.bib, .agents changes (parallel config session).
- **Post-commit integrity:** my 6 committed files compile with zero errors. Shared-branch `nix build` fails (exit 1) on the komaroff cycle's *unstaged* `spec-ep3r-stuck-switch.typ` (ch18 include → untracked file) — a parallel-cycle in-flight artifact, NOT my commit's fault; left untouched.
- Shared-file entries verification: appendix-h Peppercorn entry present in worktree (1), hypothesis-registry methylome entry present (1).

## Certainty Bump Log
(empty at creation; populated by Phases 6/7)

## Notes
- Peppercorn 2025 = RRBS of PBMCs, n=5 ME/CFS/5 LC/5 HC, University of Otago (Tate/Chatterjee group), single lab, no independent replication → raw cert ~0.52 (small n, peer-reviewed, single study). Population weight: ME/CFS 1.00, LC 0.85 (use 1.00 for ME/CFS claims). Discounted ≈ 0.52.
- Cohort-overlap note: earlier Otago RRBS study (Helliwell et al. 2020, 76 DMFs) is referenced within this paper — same lab lineage, not independent replication.
- Related plans: methylation-loss-consolidation (legacy, 47 ideas), methylation-vector-model (done).
