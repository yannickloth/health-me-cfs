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
| 1 | Add appendix-h annotated entry for Peppercorn 2025 | — | 0.52 | ⬜ pending | DOI 10.3390/ijms26146631, PMID 40724879 |
| 2 | Fix bib `Peppercorn2025methylation` placeholder DOI + PMID/volume/pages | — | — | ⬜ pending | Current DOI `10.3390/ijmsXXXXX` |
| 3 | Verify/strengthen ME/CFS-vs-LC comparative angle in ch14d + ch19 + ch55 | 1 | 0.52 | ⬜ pending | 214/429/118 DMFs; Pearson R=0.88; 6 opposite-direction DMFs; LC changes more abundant |
| 4 | General DNA methylation consolidation: retrospective-adaptation sweep + gap check | 2 | — | ⬜ pending | Respect existing loss-consolidation + vector-model coverage; no duplicate synthesis |

## Certainty Bump Log
(empty at creation; populated by Phases 6/7)

## Notes
- Peppercorn 2025 = RRBS of PBMCs, n=5 ME/CFS/5 LC/5 HC, University of Otago (Tate/Chatterjee group), single lab, no independent replication → raw cert ~0.52 (small n, peer-reviewed, single study). Population weight: ME/CFS 1.00, LC 0.85 (use 1.00 for ME/CFS claims). Discounted ≈ 0.52.
- Cohort-overlap note: earlier Otago RRBS study (Helliwell et al. 2020, 76 DMFs) is referenced within this paper — same lab lineage, not independent replication.
- Related plans: methylation-loss-consolidation (legacy, 47 ideas), methylation-vector-model (done).
