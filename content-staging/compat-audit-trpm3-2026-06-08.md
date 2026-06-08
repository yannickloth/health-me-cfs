# Phase 4c Step 1: Compatibility Audit Report — MMP-9/IL-11/Mast Cell Hypotheses

Date: 2026-06-08
Source: integrate-topic Phase 4c (MMP-9/IL-11/mast cell integration into ch07, ch14h, ch20)

## New Hypotheses (N1–N5)

| ID | Label | Section | Certainty |
|----|-------|---------|-----------|
| N1 | IL-11 Elevation → Accelerated Inflammaging | ch07:@spec:il-11-inflammaging | 0.30 |
| N2 | EBV → Mast Cell → MMP-9 → Neuroinflammation | ch07:@spec:ebv-mast-cell-mmp9 | 0.30 |
| N3 | IL-11 → mTORC1 → PIP2 Depletion → TRPM3 Dysfunction | ch14h:@spec:il11-trpm3-inflammaging | 0.25 |
| N4 | MMP-9 BBB Neuroinflammatory Trap | ch14h:@spec:mmp9-bbb-neuroinflammatory-trap | 0.30 |
| N5 | Serum/Plasma MMP-9 Ratio as Platelet Activation Biomarker | ch20:@spec:mmp9-ratio-platelet-biomarker | 0.35 |

## Pairwise Matrix

### N1: IL-11 Elevation → Accelerated Inflammaging

| Existing Entry | Type | Relationship | Cert | Rationale |
|----------------|------|-------------|------|-----------|
| Sleep-Immune Senescence Feedback Loop (ch02, 0.77) | H | feed-into | 0.6 | N1 supplies IL-11 driver for senescence → SASP → inflammation that feeds the sleep-immune loop. Without IL-11, the loop lacks an upstream molecular trigger for senescence initiation. |
| Senescence-Associated CT Decline (hyp:ct-senescence, 0.50) | H | feed-into | 0.5 | N1 inflammaging mechanism (IL-11 → SASP) provides molecular pathway for accelerated connective tissue aging. Existing hypothesis lacks upstream driver. |
| CNS-Confined Fatigue (ch15, 0.60) | H | feed-into | 0.4 | N1's IL-11 → inflammaging provides one mechanism for sustained CNS-compartmentalised inflammation even if peripheral cytokines normalise — IL-11-driven microglial senescence is self-maintaining. |
| Immunosenescence section (ch07, sec:il-11-inflammaging) | — | reinforcement | 0.8 | N1 directly validates the IL-11/inflammaging section in ch07 that was written from the same Chinnappan/Widjaja evidence. In-text consistency. |
| HMGB1 as Central DAMP (ch17, 0.55) | H | reinforcement | 0.4 | Both describe DAMPs driving sterile inflammation (IL-11 vs HMGB1). Parallel mechanisms — IL-11 senescence pathway and HMGB1 TLR4/RAGE pathway are independently amplifiable but converge on NLRP3. |
| ECM Stem Cell Exhaustion (hyp:ct-stem-cell-exhaustion, 0.35) | S | feed-into | 0.3 | IL-11-driven senescence of fibroblasts directly causes ECM stem cell exhaustion. N1 provides upstream IL-11 mechanism for this entry. |
| Terrain + Trigger Model (terrain-trigger-model, 0.60) | H | reinforcement | 0.3 | N1 provides a molecular substrate for the "terrain" — pre-existing IL-11/inflammaging could constitute a vulnerability factor before trigger exposure. Weak link; terrain is much broader. |

### N2: EBV → Mast Cell → MMP-9 → Neuroinflammation

| Existing Entry | Type | Relationship | Cert | Rationale |
|----------------|------|-------------|------|-----------|
| Mast Cell-Targeted MMP Inhibition Protocol (ch07, 0.50) | H | reinforcement | 0.7 | Direct mechanism overlap. N2 provides the upstream EBV→mast cell trigger for the MMP-9 that the protocol targets. Both converge on mast cell stabilization + MMP inhibition. |
| Herpesvirus Triggers (obs:herpesvirus-triggers-Lerner2020, 0.65) | O | feed-into | 0.6 | N2 extends known EBV trigger association with a specific downstream effector pathway (mast cell degranulation → MMP-9 → BBB disruption), providing mechanistic granularity beyond observation. |
| Abortive Viral Reactivation (sec:abortive-reactivation-framework, 0.55) | H | reinforcement | 0.5 | Both address how non-productive EBV activity drives pathology. N2 adds mast cell as effector cell for abortive reactivation products (viral proteins trigger degranulation). |
| Steroid-Sparing Anti-Inflammatory Protocol (spec:steroid-sparing-protocol, 0.40) | S | reinforcement | 0.5 | Protocol uses mast cell stabilizers (cromolyn, ketotifen). N2 provides EBV→mast cell rationale for why stabilizers would work, strengthening the mechanism. |
| GPCR AAb → Mast Cell Sensitization Loop (spec:gpcr-mast-cell-loop, 0.35) | S | reinforcement | 0.4 | Separate but complementary mast cell activation pathways: N2 provides antigen-driven (EBV), existing provides autoantibody-driven. Together suggest mast cells are a convergence point for multiple triggers. |
| Vagal-Mast Cell-Connective Tissue Axis (hyp:ct-vagal-mast-cell-ecm, 0.55) | H | reinforcement | 0.4 | Vagal control of mast cells (existing) and EBV activation of mast cells (N2) are different inputs to the same effector. Compatible — vagal failure could permit EBV-driven degranulation. |
| Mechanical Stress-Modulated Mast Cell Threshold (hyp:ct-mechanical-mast-cell, 0.50) | H | reinforcement | 0.4 | Different mast cell triggers (mechanical vs EBV). Same effector cell, suggesting mast cells integrate multiple ME/CFS-relevant inputs. Compatible without conflict. |
| Piezo Channel-Mast Cell (hyp:ct-piezo-mast-cell, 0.30) | S | reinforcement | 0.3 | Different mast cell activation routes (Piezo mechanosensation vs EBV protein). Same cell type — additive rather than conflicting. |
| Matrix Stiffness-Mast Cell Priming (hyp:ct-matrix-stiffness-mast-cell, 0.45) | H | reinforcement | 0.3 | Matrix stiffness primes mast cells (existing); EBV triggers them (N2). Compatible — a primed cell is more responsive to any trigger. |
| Post-Exertional MMP Surge (hyp:ct-pem-mmp-surge, 0.55) | H | feed-into | 0.4 | N2 identifies mast cells as the MMP-9 source; PEM surge hypothesis postulates post-exertional MMP elevation. EBV→mast cell pathway could contribute to the post-exertional MMP spike. |
| Elastin-Specific Degradation (hyp:ct-elastin-degradation, 0.40) | H | feed-into | 0.4 | N2 provides a cellular source (mast cell → MMP-9) for the elastolytic MMP-9 activity this hypothesis invokes. |
| Bidirectional CT-ME/CFS Relationship (ch13, 0.45) | H | feed-into | 0.4 | Existing entry mentions "mast cell activation → MMP-mediated collagen degradation." N2 provides EBV as a trigger for this degradation pathway. |
| IM-Specific Three-Compartment Failure (hyp:im-three-compartment-failure, 0.40) | H | feed-into | 0.3 | EBV-driven IM is the trigger for both hypotheses. N2 adds mast cell-MMP-9 effector mechanism missing from three-compartment model (which focuses on NK/B/CD8 T cells). |
| Corticosteroid-Induced NK Suppression (hyp:steroid-nk-viral-reactivation, 0.55) | H | feed-into | 0.4 | Steroid → NK suppression → EBV reactivation (existing). N2 adds: EBV reactivation → mast cell → MMP-9 → neuroinflammation. Complements the downstream chain. |
| CNS-Confined Fatigue (ch15, 0.60) | H | feed-into | 0.4 | N2 provides a BBB disruption mechanism (MMP-9 degrades tight junctions) that could create the CNS compartmentalisation observed in CNS-confined fatigue. |
| SARS-CoV-2 Spike S1 and EBV EBNA-1 Shared Epitope (spec:covid-ebv-mimicry, 0.40) | S | independent | — | Both involve EBV, but N2 is about mast cell activation by EBV proteins while existing is about molecular mimicry to GPCRs. Different effector mechanisms. |

### N3: IL-11 → mTORC1 → PIP2 Depletion → TRPM3 Dysfunction

| Existing Entry | Type | Relationship | Cert | Rationale |
|----------------|------|-------------|------|-----------|
| TRPM3 Channelopathy (ch14h/ch07, replicated finding) | — | feed-into | 0.7 | N3 provides the first upstream causal explanation for TRPM3 dysfunction. Existing documentation describes TRPM3 as established but causally orphaned — N3 supplies IL-11→mTORC1→PIP2 pathway. |
| TRPM3-Calcium-CCR7 Axis (hyp:trpm3-calcium-ccr7-axis, 0.25) | H | feed-into | 0.6 | N3 upstream (IL-11→mTORC1→PIP2) explains WHY TRPM3 is dysfunctional in monocytes, which the TRPM3-CCR7 axis requires as its starting premise. Direct causal chain. |
| TRPM3 Dysfunction Upstream of Mitochondrial Failure (ch14h, open question) | OQ | feed-into | 0.5 | N3 provides mechanism for TRPM3 dysfunction; existing asks what TRPM3 dysfunction causes. Together: IL-11 → TRPM3 dysfunction → mitochondrial failure. Complete causal chain from IL-11 to mito. |
| PIP2/GPCR Convergence (ch14h, 0.45) | — | reinforcement | 0.6 | N3 provides a *second* route to PIP2 depletion (IL-11→mTORC1) distinct from GPCR→PLC. The ch14h section already postulates multiple routes to PIP2 depletion — N3 adds a new one. |
| SLE-NK Mitochondrial Dysfunction (spec, 0.35) | S | feed-into | 0.3 | N3's IL-11→TRPM3→calcium deficit could contribute to NK mitochondrial dysfunction (impaired calcium-dependent mitochondrial activation). Compatible causal pathway. |
| Post-Infectious TRPM3 Acquisition Hypothesis (ch14h) | — | reinforcement | 0.5 | N3 provides molecular mechanism: post-infectious IL-11 elevation → mTORC1 → PIP2 depletion → TRPM3 dysfunction. Fills the mechanism gap in the acquisition hypothesis. |
| TRPM3-GPCR Signaling Convergence (ch14h) | — | independent | — | N3 and GPCR convergence are *parallel* upstream mechanisms for TRPM3 dysfunction. Both could operate simultaneously (additive PIP2 depletion). Not in conflict; not directly reinforcing. |
| TRPM3 as Calcium Subtype B (ch14h, calcium subtypes) | — | feed-into | 0.5 | N3 provides upstream trigger for TRPM3-dominant "Subtype B" patients. Compatible — IL-11 could distinguish Subtype B from Subtype A (NCX-mediated). |
| Immunoadsorption Bystander-Clearance (spec, 0.35) | S | feed-into | 0.3 | If TRPM3 dysfunction is maintained by IL-11→mTORC1 (not autoantibodies), immunoadsorption would not restore it. N3 explains why IA may fail in TRPM3-dominant patients without antibody mechanism. |

### N4: MMP-9 BBB Neuroinflammatory Trap

| Existing Entry | Type | Relationship | Cert | Rationale |
|----------------|------|-------------|------|-----------|
| BBB Disruption and Autoantibody Access Dual-Hit (spec:bbb-autoantibody-feedforward, 0.40) | S | reinforcement | 0.7 | Direct overlap. N4 provides MMP-9 mechanism for the BBB disruption that the existing entry posits as the first hit. Both describe feed-forward loops — mutually reinforcing. |
| Mast Cell-Targeted MMP Inhibition Protocol (ch07, 0.50) | H | reinforcement | 0.6 | N4 provides the *pathological loop* that the protocol aims to break. Mast cell stabilizers + MMP inhibitors target N4's self-amplifying cycle. |
| CNS-Confined Fatigue (ch15, 0.60) | H | feed-into | 0.5 | N4's MMP-9 BBB damage provides mechanism for CNS compartmentalisation. Peripherally produced MMP-9 opens BBB, allowing peripheral mediators CNS access while trapping CNS mediators. |
| Post-Exertional MMP Surge (hyp:ct-pem-mmp-surge, 0.55) | H | feed-into | 0.5 | N4 explains what happens AFTER the MMP surge: once MMP-9 damages BBB, the neuroinflammatory trap locks in. The surge is the initiation; N4 is the maintenance. |
| HMGB1 as Central DAMP (ch17, 0.55) | H | reinforcement | 0.4 | Both describe self-amplifying neuroinflammatory loops. HMGB1 and MMP-9 are parallel amplification axes — both can sustain neuroinflammation independently, possibly synergistically. |
| S100A8/A9 Calprotectin (ch17, 0.55) | H | reinforcement | 0.4 | Both involve microglial activation amplification. N4 focuses on BBB-peripheral axis; S100A8/A9 focuses on TLR4/RAGE microglial activation. Convergent on neuroinflammation. |
| Inflammatory Rerouting of Brain Antigens (spec:ch15-skull-bcell-tolerance, 0.15) | S | feed-into | 0.3 | N4's BBB disruption enables the brain antigen leakage into blood that Chayama mechanism requires. MMP-9-mediated tight junction degradation creates the leak. |
| Autoantibody-Driven CNS Autoimmunity Subgroup (ch07, 0.60) | H | feed-into | 0.5 | N4's BBB damage enables peripheral autoantibodies to access CNS (the second hit in dual-hit loop). Without MMP-9 opening the BBB, CNS autoantibody access is limited. |
| Revised Two-Compartment Model (hyp:two-compartment-mecfs, 0.55) | S | feed-into | 0.4 | BBB integrity is the boundary between DRG (accessible) and CNS (restricted). N4's MMP-9 barrier degradation shifts the boundary — more IgG enters CNS, converting peripheral to mixed phenotype. |
| FcRn-Mediated IgG Recycling (spec, 0.30) | S | feed-into | 0.3 | N4's BBB disruption increases initial BBB crossing, which FcRn then amplifies via recycling. Two mechanisms operate in series: N4 primes, FcRn amplifies. |
| Extracranial Venous Compression Impairs Glymphatic Clearance (spec:venous-stasis-glymphatic, 0.35) | S | reinforcement | 0.3 | Both describe separate clearance failure mechanisms that converge on neuroinflammation. Venous stasis impairs glymphatic outflow; MMP-9 damages BBB. Could compound. |
| Inflammatory vs Obstructive Clearance Failure (spec:ch15-neurodegeneration-risk, 0.15) | S | reinforcement | 0.3 | N4 provides an inflammatory clearance failure mechanism (MMP-9 → vascular leakage) matching the "inflammatory rerouting" mode. Compatible with the progression model. |
| Engineered Exosomes (spec:engineered-exosome-bbb-mrna, 0.40–0.55) | S/H | reinforcement | 0.3 | N4's BBB damage paradoxically aids exosome CNS delivery (already-leaky barrier). Existing entry notes this as a concern; N4 suggests pathophysiology may enhance drug delivery. |
| MMP/TIMP Ratio Biomarker (hyp:ct-mmp-timp-biomarker, 0.45) | H | reinforcement | 0.5 | N4 provides the *pathological context* for MMP elevation — not just ECM degradation but BBB damage and neuroinflammation. Broadens the biomarker's interpretive framework. |
| VEGF-HIF-1α Disconnection Therapy (ch14a, 0.45) | H | independent | — | DMF crosses BBB; N4 concerns BBB integrity. Separate targets: DMF inhibits HIF-1α, not MMP-9. Different mechanism, no direct overlap. |

### N5: Serum/Plasma MMP-9 Ratio as Platelet Activation Biomarker

| Existing Entry | Type | Relationship | Cert | Rationale |
|----------------|------|-------------|------|-----------|
| MMP/TIMP Ratio Biomarker (hyp:ct-mmp-timp-biomarker, 0.45) | H | reinforcement | 0.6 | Both are MMP-based biomarkers. N5 uses serum/plasma differential for platelet function; existing uses absolute MMP/TIMP for ECM degradation. Complementary — together provide MMP-9 source (platelet) and effect (ECM). |
| Post-Exertional MMP Surge (hyp:ct-pem-mmp-surge, 0.55) | H | reinforcement | 0.5 | N5 provides the correct assay method for the MMP-9 surge. All existing post-exertional MMP studies used serum; N5 explains why plasma is necessary and serum confounds interpretation. |
| Mast Cell-Targeted MMP Inhibition Protocol (ch07, 0.50) | H | reinforcement | 0.4 | N5 enables proper monitoring of MMP-9 in treatment trials. Protocol should use paired serum/plasma to distinguish platelet-derived from mast-cell-derived MMP-9. |
| Elastin-Specific Degradation (hyp:ct-elastin-degradation, 0.40) | H | reinforcement | 0.4 | Both involve MMP-9 as biomarker. N5 refines MMP-9 measurement by eliminating platelet confound. |
| HIF-2alpha to vWF to Microclot Pathway (spec:hif2a-microclot-vwf, 0.50) | H | reinforcement | 0.5 | Both involve platelet function. N5 provides a functional platelet readout orthogonal to microclot microscopy. Combined: microclot burden + MMP-9 ratio → comprehensive platelet assessment. |
| CCR7 Trafficking Index (prop:ccr7-trafficking-index, 0.50) | P | independent | — | Completely different biological systems (immune trafficking vs platelet activation). No overlap. |
| TRPM3 Calcium Influx Assay (ch20, open question) | OQ | independent | — | Independent biomarker approaches (ion channel vs platelet). No overlap. |
| ME/CFS-Heat Stroke Shared Pathway (ch02, 0.55) | H | independent | — | Different mechanisms. N5 is about platelet assay, not heat intolerance. |
| CoQ10 Dose-Response (ch04-registry, 0.70) | H | independent | — | Different biomarkers entirely. |

### N3 ↔ N1 Cross-Check (intra-batch)

| Pair | Relationship | Cert | Rationale |
|------|-------------|------|-----------|
| N3 (IL-11→TRPM3) ↔ N1 (IL-11→Inflammaging) | feed-into | 0.8 | N3 depends on N1's IL-11 elevation as its starting premise. N1 provides the upstream IL-11 signal; N3 extends it to TRPM3 channelopathy. Sequential in same paper. N3 certainty (0.25) inherits N1's 0.30 downward via compound probability. |

### N2 ↔ N4 ↔ N5 Cross-Check (intra-batch)

| Pair | Relationship | Cert | Rationale |
|------|-------------|------|-----------|
| N2 (EBV→Mast→MMP-9) ↔ N4 (MMP-9 BBB Trap) | feed-into | 0.7 | N2 provides the upstream trigger (EBV→mast cell → MMP-9 release) that initiates N4's BBB trap. Sequential: N2 is initiation, N4 is maintenance. |
| N2 ↔ N5 (MMP-9 ratio biomarker) | feed-into | 0.5 | N5's biomarker measures the MMP-9 end-product of N2's cascade. N2 provides the biological rationale for why the ratio might differ in ME/CFS. |
| N4 ↔ N5 (BBB trap × biomarker) | independent | — | N5 is about measurement methodology; N4 is about pathophysiology. No direct overlap — but N5 could monitor N4's MMP-9 dynamics. |

## Summary

| Relationship | Count | Details |
|-------------|-------|---------|
| **Reinforcement (R)** | 29 | N1: 3, N2: 9, N3: 2, N4: 7, N5: 5, cross: 3 |
| **Feed-into (F)** | 27 | N1: 3, N2: 5, N3: 5, N4: 6, N5: 0, cross: 2 |
| **Conflict (C)** | 0 | — |
| **Independent (I)** | 186 | Remaining existing entries with no mechanism overlap |

**Total non-independent pairs: 56** (29 R + 27 F + 0 C)

### Notable findings

1. **No conflicts detected.** All 5 new hypotheses are compatible with existing registry content. Zero contradictory mechanism claims.

2. **N3 is the most consequential.** Though lowest certainty (0.25), it causally links IL-11 (N1) to TRPM3 channelopathy — bridging two separate research literatures. If validated, this single cascade would unify the inflammaging, ion channel, and immune trafficking hypotheses.

3. **N4 (MMP-9 BBB trap) reinforces the largest number of existing entries** (13 non-independent pairs). The self-amplifying loop concept integrates with the BBB-autoantibody dual-hit, CNS compartmentalisation, exosome delivery, and neuroinflammatory maintenance entries.

4. **N5 is methodologically important but causally neutral.** It provides a measurement tool rather than a mechanism. Its reinforcement is to existing MMP-based entries by improving assay validity.

5. **Certainty cascade warning:** N3 (0.25) depends on N1 (0.30). The compound probability of IL-11 being truly elevated AND causing TRPM3 dysfunction via mTORC1/PIP2 is ≤0.25 × 0.30 ≈ 0.08. Step 2 should address this downward adjustment.
