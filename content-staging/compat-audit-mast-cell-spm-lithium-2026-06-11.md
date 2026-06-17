# Cross-Hypothesis Compatibility Audit: Mast Cell Lithium + SPM Lithium

**Date:** 2026-06-11
**Topics:** mast-cell-lithium-gpcr-pip2, lithium-spm-proresolving
**Modified files:** `ch07-immune-dysfunction.typ`, `ch17-universal-mechanisms.typ`

## New Hypotheses

| ID | Hypothesis | Cert | File |
|----|-----------|------|------|
| N1 | NCS-1/InsP3R1 amplification of mast cell degranulation; lithium as functional mast cell stabilizer (O) | 0.20 | ch07 |
| N2 | Lithium as SPM biosynthesis enhancer via 15-LOX→17-HDHA pathway (O) | 0.15 | ch17 |

## Compatibility Matrix

| New → Existing | Relationship | Rel Cert | Rationale |
|---------------|-------------|-----------|-----------|
| **N1 (mast cell)** × | | | |
| N1 → PIP2 convergence (H, 0.45) | Reinforcement | 0.35 | Mast cells consume PIP2 via same PLC→IP3 pathway; lithium's PIP2/Ca²⁺ mechanism applies identically to mast cells. Kappel 2003 confirms NCS-1 regulates mast cell PI4Kβ. |
| N1 → Complement mast cell amplification loop (S, 0.25) | Feed-into | 0.30 | Li dampens IP3/Ca²⁺ arm of the same C3a/C5a→PLC→IP3→degranulation loop. |
| N1 → Mast cell–energy loop (ch16) | Feed-into | 0.25 | Li provides mechanistically distinct mast cell stabilization option alongside cromolyn/ketotifen. |
| N1 → MCAS as PEM amplifier | Reinforcement | 0.20 | Convergent — Li targets GPCR arm; existing content targets IgE arm; complementary mechanisms. |
| N1 → MMP-9 BBB trap (S, 0.35) | Independent | — | Mast cell degranulation releases MMP-9; Li mast cell stabilization could reduce MMP-9 — but this is upstream of the BBB trap mechanism, which is about MMP-9 as a BBB disruptor. Different pathway node. |
| N1 → TRPM3 channelopathy (H, 0.50) | Independent | — | Mast cells may express TRPM3 but no documented link. |
| N1 → GPCR autoantibody convergence | Reinforcement | 0.30 | If anti-M3/β2AR autoantibodies activate mast cells via Gαq, Li's NCS-1/IP3R disruption directly targets this pathway. |
| **N2 (SPM lithium)** × | | | |
| N2 → SPM deficiency in post-viral (ch17) | Reinforcement | 0.25 | Novel mechanism for SPM biosynthesis enhancement; Basselin 2010 17-HDHA 1.9× increase is the only direct evidence linking any drug to SPM precursor production. |
| N2 → Aspirin-triggered resolvins (S, 0.45) | Feed-into | 0.30 | Li enhances 15-LOX pathway (native SPMs); aspirin enhances COX-2 pathway (AT-SPMs). Target different SPM branches. Potential synergy: Li + aspirin + omega-3. |
| N2 → Omega-3/EPA/DHA supplementation | Feed-into | 0.25 | Li enhances conversion of existing DHA to 17-HDHA; omega-3 provides substrate. Li alone or omega-3 alone would produce less SPM than combination. |
| N2 → FADS polymorphisms (S, 0.35) | Reinforcement | 0.15 | FADS variants impair EPA/DHA synthesis; Li may compensate downstream by enhancing the 15-LOX conversion step. Too speculative for certainty bump. |
| N2 → Cholinergic anti-inflammatory pathway (CAP) | Reinforcement | 0.20 | CAP stimulates SPM production via vagal α7-nAChR signaling; Li enhances via 15-LOX. Convergent output (SPM increase) via different inputs. |
| N2 → Gut microbiota-SPM axis (S, 0.25) | Feed-into | 0.20 | Gut bacteria supply SPM precursors; Li enhances host enzymatic conversion of those precursors. Combined gut microbiome restoration + Li could synergize. |
| N1 × N2 (cross-topic) | Independent | — | Different mechanisms (mast cell degranulation vs SPM biosynthesis), different cell types, different pathways. No direct mechanistic overlap. Shared lithium context only. |

## Summary

| Metric | Count |
|--------|-------|
| Pairs examined | 22 (2 new × 11 existing + 1 cross-topic) |
| Reinforcement pairs | 5 |
| Feed-into pairs | 4 |
| Conflict pairs | 0 |
| Independent pairs | 13 |
| Certainty bumps | 0 (all new hypotheses < 0.30; no incoming evidence ≥ 0.60) |
| Certainty reductions | 0 |
| Tensions flagged | 0 |

## Certainty Adjustment Proposals

None. All new hypotheses are open-questions at cert ≤ 0.20. No existing hypothesis receives reinforcement from evidence with cert ≥ 0.60. Feed-into relationships are conceptual (mechanistic pathway mapping) not evidential (no data demonstrating the connection).

## Reinforcement Chains

1. GPCR autoantibodies → PIP2 convergence (0.45) → PLC activation → IP3 → Ca²⁺ → **mast cell degranulation** (N1) → MMP-9 release → BBB disruption. Longest chain: 4 hops.
2. Omega-3 → DHA → 15-LOX → 17-HDHA → **SPM biosynthesis** (N2) → ChemR23/GPR32 → M2 phenotype → inflammation resolution. Li enhances the 15-LOX→17-HDHA step (Basselin 2010). Chain: 6 hops, converging with CAP (vagal→α7-nAChR→SPM production).
