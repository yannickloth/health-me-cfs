# TRPM3 Ion Channels & MMP-9/IL-11 in ME/CFS — Integration Plan

**Purpose:** Integrate evidence on TRPM3 ion channel dysfunction, MMP-9/IL-11 elevation in ME/CFS, and MMP-9 methodological concerns (serum vs plasma pre-analytical interference) into the ME/CFS pathophysiology model.

**Target chapters:** ch14h (TRPM3 channelopathy), ch07 (immune dysfunction), ch06 (energy metabolism), ch09 (endocrine — Ca2+ signaling), ch14d (cross-disease — Long COVID overlap), ch15 (symptom-producing mechanisms), ch20 (biomarkers)

**Primary papers (user-specified cluster):**
1. Chinnappan et al. 2026 — IL-11 + MMP-9 elevated in ME/CFS serum; EBV → mast cell MMP-9 release (Frontiers Immunol, n=40 for IL-11, n=18 for MMP-9). Certainty: 0.35 (methodological flaws — serum, age mismatch, biobank controls, 10yr storage)
2. Kempuraj et al. 2024 — MMP-9 elevated in Long COVID; spike protein → microglia MMP-9 release (Transl Neurosci). Certainty: 0.40 (serum, HMC3 cell line only)
3. Garvin et al. 2015 — Plasma MMP-9 predictive of first-time CHD; critical serum vs. plasma distinction (PLoS ONE, n=866, 8-yr FU). Certainty: 0.65 (good methods, general population)
4. Jung 2008 — Pre-analytical interference: serum MMP-9 ≠ circulating MMP-9; plasma preferred (Brit J Cancer, letter). Methods authority.

**Additional papers found (Phase 1):**
5. Widjaja et al. 2024 — IL-11 inhibition extends mammalian healthspan/lifespan (Nature). Certainty: 0.90
6. Lerum et al. 2021 — MMP-9 persists after acute COVID (Eur Respir J, n=108). Certainty: 0.65
7. Bonetto et al. 2022 — MMP-9 correlates with BBB disruption (S100B) in COVID neurological cases. Certainty: 0.60
8. Jung et al. 1998 — Kind of sample as preanalytical determinant of MMP-9 in blood (Clin Chem). Certainty: methods
9. Olson et al. 2008 — n=500 demonstrating serum MMP-9 3-4× higher than plasma. Certainty: methods
10. Rohrhofer et al. 2025 — MC activation relevance in ME/CFS (Diagnostics). Certainty: 0.60
11. Eaton-Fitch et al. 2024 — Immune exhaustion in ME/CFS and Long COVID (JCI Insight). Certainty: 0.70
12. Aoun Sebaiti et al. 2022 — Systematic review cognitive impairment in ME/CFS. Certainty: 0.75

**Pre-identified hypotheses:**
- MMP-9 as ME/CFS biomarker (with pre-analytical caveat: serum vs plasma — must be flagged)
- EBV → mast cell → MMP-9 → neuroinflammation pathway
- IL-11 as inflammaging/senescence mediator in ME/CFS
- SARS-CoV-2 → microglia → MMP-9 → neuroinflammation pathway (Long COVID overlap)

**Notes:**
- Critical methodological concern: serum MMP-9 is contaminated by platelet/leukocyte release during clotting (3-4× artifactual elevation). Both Chinnappan 2026 and Kempuraj 2024 used serum. Any integration must carry explicit warnings.
- Chinnappan 2026: age mismatch (51 vs 43), external biobank controls, 10yr storage at -80°C, different collection sites. The 7× difference (126 vs 17 ng/ml) likely includes technical artifact.
- The in vitro mast cell + EBV → MMP-9 finding (Chinnappan 2026) and microglia + spike → MMP-9 (Kempuraj 2024) are less affected by the serum/plasma issue but are in vitro only.

---

## Phase 1 — Literature Research

| Metric | Value |
|--------|-------|
| Papers found | 12 (4 primary + 8 additional) |
| Added to references.bib | 12 entries |
| Added to appendix-h-annotated-bibliography | 12 annotated sections |
| Integration guide | ops/integration-guides/integration-guide-trpm3-ion-channels-2026-06-08.md |
| Scrape registry updated | Yes |

---

## Phase 3 — Creative Brainstorm

| Metric | Value |
|--------|-------|
| Brainstorm file | ops/brainstorms/brainstorm-trpm3-ion-channels-2026-06-08.md |
| Total ideas | 35 |
| Tier 1 | 11 |
| Tier 2 | 16 |
| Tier 3 | 8 |
| Novel hypotheses | 8 |
| Research directions | 5 |
| Drug/medication | 4 |
| Supplements | 2 |
| Non-pharmacological | 2 |
| Combinations | 2 |
| Model extensions | 4 |
| Cross-disease bridges | 4 |
| Diagnostic/biomarker | 4 |

## Phase 3a — Hypothesis Tree

| Metric | Value |
|--------|-------|
| Subtree file | ops/plans/hypotheses-trees/subtrees/trpm3-ion-channels.md |
| Root index updated | Yes |
| Nodes written | 35 |

---

## Tracking table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1 | MMP-9 as ME/CFS biomarker (pre-analytical plasma caveat required) | — | 0.35 | ✅ done | Integrated as @warn:mmp9-serum-plasma + @spec:mmp9-ratio-platelet-biomarker in ch20 |
| 2 | EBV → mast cell → MMP-9 → neuroinflammation pathway | — | 0.35 | ✅ done | Integrated as @spec:ebv-mast-cell-mmp9 in ch07; cert 0.30→0.35 (Phase 4c) |
| 3 | IL-11 as inflammaging/senescence mediator in ME/CFS | — | 0.35 | ✅ done | Integrated as @spec:il-11-inflammaging in ch07; cert 0.30→0.35 (Phase 4c) |
| 4 | SARS-CoV-2 → microglia → MMP-9 → neuroinflammation (LC overlap) | — | 0.40 | ✅ done | Referenced in ch07:@spec:ebv-mast-cell-mmp9 and ch14h:@spec:mmp9-bbb-neuroinflammatory-trap |
| 5 | IL-11 → mTORC1 → PIP2 → TRPM3 | 1 | 0.30 | ✅ done | Integrated as @spec:il11-trpm3-inflammaging in ch14h; cert 0.25→0.30 (Phase 4c) |
| 6 | MMP-9 BBB neuroinflammatory trap | 1 | 0.35 | ✅ done | Integrated as @spec:mmp9-bbb-neuroinflammatory-trap in ch14h; cert 0.30→0.35 (Phase 4c) |
| — | (30 remaining brainstorm ideas) | 2-3 | — | ⬜ pending | Queued for future cycles |

---

## Phase 4c — Cross-Hypothesis Compatibility

### Step 1: Compatibility Audit
Source: (not retained)

Five new hypotheses (N1–N5) evaluated against existing registry entries.

#### Reinforcement Pairs (29)

| Rank | Pair | Relationship Cert | Type | Notes |
|------|------|-----------------|------|-------|
| 1 | N1 ↔ Immunosenescence section | 0.80 | internal validation | Same paper; in-text consistency |
| 2 | N2 ↔ Mast Cell-Targeted MMP Inhibition Protocol | 0.70 | direct mechanism overlap | Both converge on mast cell stabilization + MMP-9 inhibition |
| 3 | N4 ↔ BBB Disruption Dual-Hit | 0.70 | direct overlap | N4 provides MMP-9 mechanism for dual-hit first stage |
| 4 | N5 ↔ MMP/TIMP Ratio Biomarker | 0.60 | complementary biomarkers | Platelet source + ECM effect |
| 5 | N4 ↔ Mast Cell-Targeted MMP Inhibition Protocol | 0.60 | target validation | N4 describes the pathological loop the protocol breaks |

#### Feed-Into Pairs (27)

| Rank | Pair | Relationship Cert | Direction | Notes |
|------|------|-----------------|-----------|-------|
| 1 | N1 → N3 (intra-batch) | 0.80 | sequential | N3 depends on N1 IL-11 elevation as starting premise |
| 2 | N2 → N4 (intra-batch) | 0.70 | initiation→maintenance | N2 is the upstream trigger; N4 is the self-sustaining loop |
| 3 | N3 → TRPM3 Channelopathy | 0.70 | causal orphan → mechanism | N3 supplies first upstream explanation for replicated TRPM3 findings |
| 4 | N2 → Herpesvirus Triggers | 0.60 | mechanistic granularity | N2 adds downstream effector (mast→MMP-9→BBB) to EBV association |
| 5 | N3 → TRPM3-Calcium-CCR7 Axis | 0.60 | causal chain | N3 explains WHY TRPM3 is dysfunctional; CCR7 axis requires dysfunction as premise |

#### Conflict Pairs (0)
None found. Verified: all 5 new hypotheses are fully compatible with existing registry content. No mechanism contradictions, no mutually exclusive claims, no overlapping-but-distinct tensions.

### Step 2: Reinforcement Chains, Feed-Into Chains & Adjustments

#### Chain 1: IL-11 → TRPM3 Cascade
```
N1 (IL-11 inflammaging, 0.30) ───feed-into→ N3 (IL-11→TRPM3, 0.25) ───feed-into→ TRPM3 Channelopathy (replicated, ≥0.70)
     │                                                                       │
     ├─feed-into→ Sleep-Immune Senescence (0.77)                             ├─feed-into→ TRPM3-Calcium-CCR7 Axis (0.25)
     ├─feed-into→ Senescence CT Decline (0.50)                               ├─feed-into→ TRPM3→Mitochondrial Failure (open)
     └─reinforce→ HMGB1 DAMP (0.55) (NLRP3 convergence)                     └─feed-into→ TRPM3 Calcium Subtype B
```
**Analysis:** Highest-consequence causal chain. N3 is the bridge between the IL-11/inflammaging literature and the TRPM3 channelopathy literature — two previously disconnected domains. Chain length is 3 edges from N1 to the TRPM3 registry entry. The compound probability concern at line 5 is severe (N1 × N3 ≤ 0.08).

**Certainty adjustments proposed:**
| Target | Rule | Trigger | Adjustment | New cert | Rationale |
|--------|------|---------|------------|----------|-----------|
| N1 | Rule 1 (convergence) | N1 + HMGB1 as DAMP (0.55) converge on NLRP3 inflammasome endpoint — independent DAMPs, different labs | +0.05 | 0.35 | Both certs ≥ 0.20; convergence via sterile inflammation pathways |
| N3 | Rule 1 (convergence) | N3 + PIP2/GPCR Convergence (ch14h, 0.45) converge on PIP2 depletion → TRPM3 dysfunction — independent upstream mechanisms (mTORC1 vs PLC) | +0.05 | 0.30 | Both certs ≥ 0.20; different literatures, same endpoint |

**Compound probability warnings:**
- N1 (0.30) × N3 (0.25) = **0.075** — the IL-11→TRPM3 causal bridge depends on both N1 being correct (IL-11 truly elevated) and N3 being correct (mTORC1/PIP2 mechanism). At compound ≤ 0.08, this chain is the weakest in the model.
- N3 (0.25→0.30) × TRPM3-CCR7 Axis (0.25) = **0.075** — extending the chain to CCR7 trafficking drops probability further.
- N1 (0.30→0.35) × Sleep-Immune Senescence (0.77) = **0.27** — less concerning since sleep-immune loop has independent evidence.

#### Chain 2: EBV → Mast Cell → MMP-9 → Neuroinflammatory Trap
```
N2 (EBV→Mast→MMP-9, 0.30) ───feed-into→ N4 (MMP-9 BBB Trap, 0.30) ───feed-into→ Autoantibody CNS Autoimmunity (0.60)
     │                              │    │                                   └─feed-into→ Revised 2-Compartment (0.55)
     ├─feed-into→ Herpesvirus Triggers (0.65)    ├─reinforce→ BBB Dual-Hit (0.40)
     ├─feed-into→ Post-Exertional MMP Surge (0.55)  ├─reinforce→ HMGB1 DAMP (0.55)
     └─reinforce→ GPCR AAb Mast Cell Loop (0.35)     └─feed-into→ FcRn IgG Recycling (0.30)
```
**Analysis:** Three-layer causal chain (trigger → effector → maintenance). N2 is the initiation phase; N4 is the self-sustaining maintenance phase creating feed-forward pathology. The chain connects the EBV literature, mast cell biology, MMP-9 biochemistry, and BBB neuroimmunology. Reinforcement Cluster B (centered on N2) has 8 reinforcement edges suggesting mast cell activation as a convergence point for multiple ME/CFS triggers.

**Certainty adjustments proposed:**
| Target | Rule | Trigger | Adjustment | New cert | Rationale |
|--------|------|---------|------------|----------|-----------|
| N2 | Rule 1 (convergence) | N2 + GPCR AAb→Mast Cell Loop (0.35) converge on mast cell activation endpoint — different triggers (EBV antigen vs autoantibody), independent mechanisms | +0.05 | 0.35 | Both certs ≥ 0.20; complementary activation pathways |
| N4 | Rule 1 (convergence) | N4 + HMGB1 as Central DAMP (0.55) converge on self-amplifying neuroinflammatory loop — different amplification axes (MMP-9 BBB vs TLR4/RAGE) | +0.05 | 0.35 | Both certs ≥ 0.20; independent loop mechanisms |

**Compound probability warnings:**
- N2 (0.30→0.35) × N4 (0.30→0.35) = **0.12** — initiation × maintenance chain. N4's self-sustaining loop reduces dependency on N2's continued activation, so partial decoupling applies — N4 may be initiated by other triggers (microglial MMP-9, SARS-CoV-2 spike, etc.).
- N2 (0.30→0.35) × Herpesvirus Triggers (0.65) = **0.23** — more robust; the EBV→disease association is well-established.

#### Chain 3: MMP-9 Measurement & Monitoring
```
N5 (Serum/Plasma MMP-9 Ratio, 0.35) ───reinforce→ MMP/TIMP Ratio Biomarker (0.45)
     │                                       └─reinforce→ Post-Exertional MMP Surge (0.55)
     ├─reinforce→ HIF-2α→vWF→Microclot (0.50)
     └─reinforce→ Mast Cell MMP Inhibition Protocol (0.50)
```
**Analysis:** Methodological chain rather than causal. N5 is diagnostically important but does not carry mechanism weight. Its reinforcements are about measurement validity — improving existing MMP-based entries. N5 does not depend on any upstream hypothesis for its validity; the serum/plasma differential is an established methodological fact (Garvin 2015, Jung 2008).

**Certainty adjustments proposed:** None. N5 has no qualifying convergence on a mechanistic endpoint from independent experimental lines. No feed-into adjustments (no upstream with cert ≥ 0.50 feeds into N5). No conflict adjustments.

**Compound probability:** Not meaningfully applicable — N5's validity is orthogonal to causal hypotheses.

#### Chain 4: BBB Disruption → Autoimmunity Cascade
```
N4 (MMP-9 BBB Trap, 0.30→0.35) ───feed-into→ Autoantibody-Driven CNS Autoimmunity (0.60)
     │                                   └─feed-into→ Revised Two-Compartment Model (0.55)
     ├─feed-into→ CNS-Confined Fatigue (0.60)
     └─reinforce→ BBB Dual-Hit Feed-Forward (0.40)
```
**Analysis:** N4 acts as a gateway that enables peripheral immune mediators (autoantibodies, cytokines) to access the CNS. The downstream consequences are substantial — they explain compartmentalization, autoantibody pathology, and glymphatic failure. Chain 4 merges with Chain 2 at N4, confirming N4 as a hub node.

**Certainty adjustments proposed:** N4 already receives +0.05 from Rule 1 in Chain 2 (max one per hypothesis per cycle, so no second adjustment here).

**Compound probability warnings:**
- N4 (0.30→0.35) × Autoantibody CNS Autoimmunity (0.60) = **0.21** — N4 is one of multiple routes to CNS autoantibody access (others: inflammation, glymphatic failure), so partial decoupling applies.
- N4 (0.30→0.35) × CNS-Confined Fatigue (0.60) = **0.21** — likewise, BBB disruption is one mechanism for compartmentalization among several.

#### Cross-Chain Reinforcement Cluster: Mast Cell Convergence
```
Piezo Channel-Mast Cell (0.30) ───reinforce──→ Matrix Stiffness-MC Priming (0.45)
     ↑                                               ↑
     │                                          N2 (EBV→Mast→MMP-9, 0.30→0.35)
     │                                               │
     └── Mechanical Stress-MC Threshold (0.50) ──────┘
                    ↑
                    │
         Vagal-MC-CT Axis (0.55)
```
This cluster has 5 existing entries (Piezo, Matrix Stiffness, Mechanical Stress, Vagal, GPCR AAb) plus N2 converging on mast cells as an effector convergence point. N2 adds a 6th mast cell input (EBV antigen-driven). The cluster suggests mast cells integrate mechanical, vagal, autoantibody, and viral signals — an IVP-relevant property (multiple change-driver sets converge on one cell type, suggesting distinct sub-mechanisms sharing an effector).

### Step 3: Certainty Adjustment Summary

| Hypothesis | Starting cert | Adjustment | Rule | End cert | Notes |
|------------|--------------|------------|------|----------|-------|
| N1 (IL-11 inflammaging) | 0.30 | +0.05 | Rule 1 | **0.35** | Convergence: NLRP3 endpoint with HMGB1 DAMP |
| N2 (EBV→Mast→MMP-9) | 0.30 | +0.05 | Rule 1 | **0.35** | Convergence: Mast cell endpoint with GPCR AAb loop |
| N3 (IL-11→TRPM3) | 0.25 | +0.05 | Rule 1 | **0.30** | Convergence: PIP2 depletion with GPCR/PLC route |
| N4 (MMP-9 BBB Trap) | 0.30 | +0.05 | Rule 1 | **0.35** | Convergence: Neuroinflammatory loop with HMGB1 DAMP |
| N5 (MMP-9 ratio) | 0.35 | 0 | — | **0.35** | Methodological; no mechanistic convergence qualifier |

**Total adjustments proposed: 4**
**Rule 2 (feed-into) adjustments:** 0 — all upstream hypotheses have cert < 0.50
**Rule 3 (speculative-speculative reinforcement) blocked:** 0 — no pair where both are strictly < 0.30
**Rule 4 (conflict) adjustments:** 0 — no conflicts identified
**Rule 5 (diminishing returns) triggered:** 0 — no prior-cycle bumps exist for these hypotheses

### Step 4: Conflict Clusters
**Zero conflicts** verified. All five hypotheses are compatible with each other and with existing registry entries. Key compatibility reasons:

- N1 and N3 are sequential (same IL-11 axis), not competing.
- N2 and N4 are sequential (initiation → maintenance), with partial decoupling since N4 can be initiated by other triggers.
- N5 is orthogonal (methodology) and compatible with all.
- N4's MMP-9 BBB damage is complementary to, not competing with, the existing autoantibody dual-hit model.
- The parallel PIP2 depletion routes (N3 mTORC1 + existing GPCR/PLC) are additive rather than mutually exclusive.

### Step 5: Compound Probability Concerns (Ranked)

| Rank | Chain | Compound | Severity | Recommendation |
|------|-------|----------|----------|----------------|
| 1 | N1 (0.30) × N3 (0.25) = IL-11 elevated AND causal via mTORC1/PIP2 | **≤ 0.08** | Critical | Flag in ch14h: this cascade is a unified hypothesis, not established. Do not present as sequential fact. |
| 2 | N3 (0.25→0.30) × TRPM3-CCR7 Axis (0.25) | **≤ 0.08** | Critical | TRPM3→CCR7 chain has compound ≤ 0.08 from the IL-11 starting point |
| 3 | N2 (0.30→0.35) × N4 (0.30→0.35) | **≤ 0.12** | High | Partially mitigated: N4 is self-sustaining once initiated, reducing dependency on N2 |
| 4 | N4 (0.30→0.35) × Autoantibody CNS Autoimmunity (0.60) | **≤ 0.21** | Moderate | N4 is one of multiple routes to CNS autoantibody access |
| 5 | N1 (0.30→0.35) × Sleep-Immune Senescence (0.77) | **≤ 0.27** | Low | Sleep-immune loop has strong independent evidence |

### Step 6: Architectural Notes for Content Integration

1. **N3 (TRPM3 bridge) placement:** ch14h should present the IL-11→mTORC1→PIP2→TRPM3 as a *synthesized mechanistic hypothesis*, not a finding. The 0.08 compound probability must be explicit.
2. **N4 (BBB trap) as hub:** Use in ch14h (TRPM3 consequences) and ch15 (symptom mechanisms). The MMP-9 BBB trap links peripheral immune dysfunction to CNS compartmentalization.
3. **N2 (EBV→Mast→MMP-9) as initiation trigger:** Place in ch07 as one of multiple mast cell activation triggers alongside GPCR AAb, mechanical stress, and vagal inputs.
4. **N5 (MMP-9 ratio) as methodological prerequisite:** Flag in ch20 and ch07 that all existing serum MMP-9 data in ME/CFS literature is confounded. Future studies must use plasma.
5. **Mast cell convergence cluster:** Consider adding a summary visual (mast cell as integration node) to ch07 showing the 6 identified inputs: EBV (N2), GPCR AAb, Piezo, mechanical stress, matrix stiffness, and vagal signals.
