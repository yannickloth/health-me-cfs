# Hypothesis Subtree: EpiSwitch Epigenetic Diagnostic Blood Test

**Origin:** Migration from `plans-new-contents/episwitch-epigenetic-test.md`
**Brainstorm file:** `ops/brainstorms/brainstorm-episwitch-epigenetic-test-2026-08-15.md`
**Plan file:** `ops/plans/episwitch-epigenetic-test-integration-plan.md`
**Date:** 2026-05-03 (updated 2026-08-15)
**Parent topic:** new-contents
**Child subtrees:** (none yet)

## Integration Context

**Priority:** 🟠
**Tier:** 2
**ME/CFS links:**
- EpiSwitch uses 3D genomic architecture (chromatin conformation capture) to detect epigenetic dysregulation patterns beyond standard DNA methylation assays
- Validation study (Hunter et al. 2025) reports 92% sensitivity and 98% specificity — but against healthy controls only; cross-condition specificity (fibromyalgia/depression/long-COVID) is UNTESTED
- Blood-based liquid biopsy approach makes it accessible compared to tissue-based assays
- Chromosomal conformation changes reflect disease-specific epigenetic dysregulation that simple methylation arrays miss
- Currently offers CE marking in UK and commercial availability; FDA pathway status unclear
- Single validation study from test developer (Oxford BioDynamics); no independent replication; vendor COI throughout

**Target chapters (corrected to actual .typ structure):**
- `src/main/typst/mecfs/part4-research/ch35-biomarker-research/genomic-and-epigenetic-biomark/episwitch-3d-genomic/` (primary: new EpiSwitch section)
- `src/main/typst/mecfs/part2-pathophysiology/ch14-genetics-epigenetics/` (cross-ref: 3D genome dimension)
- Hypothesis registry, ch33 sec-12 (IL-2 cross-ref)

**Pre-identified hypotheses (updated certainty):**
- EpiSwitch 3D chromosome-conformation dysregulation is specific to ME/CFS and detectable in blood (cert 0.50, discounted ME/CFS cohort 1.00 × raw 0.50). Research-stage; single vendor study; no replication.
  - Testable: independent cohorts replicate 92%/98%; EpiSwitch distinguishes ME/CFS from fibromyalgia/depression.
- IL-2/JAK-STAT 3D-chromatin axis is mechanistically plausible (non-vendor support, cert ~0.45).

## Nodes

| ID | Title | Env | Cert | mech | tx | expl | math | dx | Status | Children |
|----|-------|-----|------|------|----|------|------|----|--------|----------|
| 1 | 3D-chromatin signature as ME/CFS diagnostic | speculation | 0.50 | 3 | 2 | 4 | 1 | 5 | ✅ | — |
| 2 | IL-2/JAK-STAT 3D-chromatin mechanism axis | hypothesis | 0.45 | 4 | 3 | 3 | 1 | 2 | ✅ | — |
| 3 | Frozen chromatin state (trapped immune memory) | speculation | 0.30 | 4 | 2 | 4 | 2 | 3 | ✅ | — |
| 4 | Independent external replication cohort | proposal | 0.45 | 1 | 0 | 0 | 0 | 5 | ⏭️ | — |
| 5 | Cross-condition specificity study | proposal | 0.40 | 1 | 0 | 1 | 0 | 5 | ⏭️ | — |
| 6 | EpiSwitch vs HERV orthogonality test | proposal | 0.30 | 3 | 0 | 3 | 0 | 4 | ⏭️ | — |
| 7 | JAK inhibitor pharmacodiagnostic probe | speculation | 0.25 | 3 | 3 | 2 | 1 | 2 | ⏭️ | — |
| 8 | EpiSwitch IL-2 signature as low-dose IL-2 responder predictor | speculation | 0.35 | 2 | 4 | 1 | 1 | 4 | ⏭️ | — |
| 9 | TRIM28 unifying node (3D+HERV+IL-2) | speculation | 0.30 | 4 | 1 | 4 | 1 | 2 | ✅ | — |
| 10 | 3D-chromatin epigenetic state variable in DAG/ODE | proposal | 0.30 | 3 | 0 | 1 | 5 | 1 | ⏭️ | — |
| 11 | Longitudinal EpiSwitch state-vs-trait across PEM | proposal | 0.30 | 2 | 1 | 2 | 1 | 3 | ⏭️ | — |
| 12 | Critical: generic-illness signature, null, overfitting, COI/severity | open-question | 0.30-0.45 | 1 | 0 | 2 | 0 | 1 | ✅ | — |
| 13 | Cross-condition network convergence (Hunter 2026, PARTIAL/WEAK) | speculation | 0.20 | 4 | 0 | 4 | 0 | 3 | ✅ | child |

Status legend: ✅ integrated; ⏭️ recorded as future-cycle proposal (research direction / safety-gated treatment idea); — no child subtree.
Child subtree (2026-09-04): `new-contents-episwitch-crosscondition-hunter2026.md` — Hunter et al. 2026 cross-condition network-convergence cycle (PARTIAL, integrated as speculation+limitation in ch36; research-direction proposals recorded ⏭️).
