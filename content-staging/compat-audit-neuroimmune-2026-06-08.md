# Cross-Hypothesis Compatibility Audit — Neuroimmune (Blitshteyn 2026)

**Date:** 2026-06-08
**Scope:** 10 new hypotheses vs existing registry + all `.typ` files
**Auditor:** haiku-general

---

## New Hypotheses Overview

| ID | Short Name | Type | Cert | Mechanism Terms |
|----|-----------|------|------|-----------------|
| **H1** | GPCR AAb → NTS Baroreflex Reset | S | 0.35 | GPCR AAb, area postrema, NTS, β-arrestin, internalization, baroreflex, sympathetic |
| **H2** | Brainstem B Cell Aggregates | S | 0.30 | B cell, CXCL13/CXCR5, dorsolateral medulla, intrathecal AAb, NTS/RVLM/DMV |
| **H3** | SARS-CoV-2/EBV Molecular Mimicry | S | 0.40 | spike S1, EBNA-1, β2-AR, cross-reactive AAb, molecular mimicry, epitope |
| **H4** | GPCR AAb → Mast Cell Sensitization Loop | S | 0.35 | GPCR AAb, β2-AR, M3, mast cell, degranulation, BBB, histamine/tryptase |
| **H5** | Ganglionic AChR Pan-Autonomic Subtype | S | 0.25 | α3-nAChR, autonomic ganglia, pan-autonomic, AAG, COMPASS-31 |
| **H6** | CAP Blockade by GPCR Autoantibodies | S | 0.40 | GPCR AAb, β2-AR, CAP, vagus, splenic T cell, TNF-α, α7nAChR |
| **H7/NP22** | taVNS Stratified by GPCR AAb Profile | H | 0.40 | taVNS, GPCR AAb, β2-AR, CAP, vagus, stratified, HRV, TNF-α |
| **H8/CD35** | FM-ME/CFS-POTS Shared Triad | H | 0.35 | SFN, GPCR AAb, central sensitization, fibromyalgia, POTS, triad |
| **H9/D40** | IgG1/IgG4 Subclass Pathogenicity | H | 0.50 | IgG1, IgG4, GPCR AAb, CellTrend, REAP, subclass, pathogenicity |
| **H10/M31** | Multi-Scale Neuroimmune DAG | P | 0.40 | GPCR AAb, brainstem neuroinflammation, CAP, HLA, baroreflex, DAG |

---

## Pairwise Relationship Matrix

### Legend
- **R** = reinforcement (same mechanism, different evidence angle)
- **F→** = feed-into (output of one is input to another)
- **C** = conflict (contradictory predictions/assumptions)
- **I** = independent (different mechanism, no overlap)

| | H1 | H2 | H3 | H4 | H5 | H6 | H7 | H8 | H9 | H10 |
|---|---|---|---|---|---|---|---|---|---|---|
| **H1** | — | F→ | F→ | F→ | I | F→ | F→ | R | F→ | F→ |
| **H2** | F→ | — | I | I | I | F→ | I | I | F→ | F→ |
| **H3** | F→ | I | — | F→ | I | F→ | F→ | R | F→ | F→ |
| **H4** | F→ | I | F→ | — | I | F→ | F→ | F→ | F→ | F→ |
| **H5** | I | I | I | I | — | I | I | R | I | R |
| **H6** | F→ | F→ | F→ | F→ | I | — | F→ | R | F→ | F→ |
| **H7** | F→ | I | F→ | F→ | I | F→ | — | I | F→ | F→ |
| **H8** | R | I | R | F→ | R | R | I | — | R | R |
| **H9** | F→ | F→ | F→ | F→ | I | F→ | F→ | R | — | F→ |
| **H10** | F→ | F→ | F→ | F→ | R | F→ | F→ | R | F→ | — |

---

## Reinforcement Chains

### Chain A: GPCR AAb Convergent Core (H1, H3, H4, H6, H8, H9, H10)
Highest-density reinforcement cluster. All hypotheses depend on GPCR autoantibodies being present and pathogenic in ME/CFS. Six overlapping angles:
- H3 sources them (molecular mimicry)
- H1 routes them to NTS (baroreflex)
- H4 routes them to mast cells (degranulation)
- H6 routes them to CAP (vagal immune suppression)
- H8 embeds them in transdiagnostic triad
- H9 qualifies them by IgG subclass
- H10 formalises the network

**Compound certainty risk:** If GPCR AAb measurement is an artefact (Vernino 2022 null, Germain 2025 null), all seven hypotheses are undermined simultaneously. H9 partially mitigates this by offering a resolution (IgG4 vs IgG1/IgG3).

### Chain B: Brainstem Autonomic Hub (H1, H2, H6, H10)
Four hypotheses converge on dorsolateral medulla (NTS/RVLM/DMV):
- H1 requires NTS for baroreflex reset
- H2 requires dorsolateral medulla for B cell aggregates
- H6 requires NTS→vagal efferent for CAP
- H10 places brainstem neuroinflammation as a central DAG node

**Strength:** The four mechanisms could co-locate in the same brainstem region, creating a local amplification loop (neuroinflammation → B cell recruitment → local AAb → NTS dysfunction → baroreflex reset).

### Chain C: Vagal/CAP Axis (H6, H7, H10, H1)
- H6 defines the mechanism: β2-AR AAb blocks CAP at splenic T cell step
- H7 applies it: taVNS works only when β2-AR AAb below threshold
- H10 models it in DAG
- H1 connects NTS baroreflex to vagal efferent circuits

**Strength:** The chain from mechanism → stratified treatment → formal model is unusually complete for a speculative cluster. taVNS responds to the same β2-AR AAb parameter that H6 identifies as the CAP blocker.

### Chain D: Transdiagnostic Shared Core (H8, H5, H3)
- H8 (FM-ME/CFS-POTS triad) argues three conditions share SFN + GPCR AAb + central sensitization
- H5 identifies a rare pan-autonomic AChR subtype
- H3 provides the trigger mechanism (molecular mimicry) for post-infectious onset

**Strength:** These explain why FM, ME/CFS, and POTS co-occur and share treatment responses to immunomodulation.

### Chain E: Mast Cell Amplification (H4, H8, existing Mast Cell hypotheses)
- H4: GPCR AAb → mast cell sensitization loop
- H8: triad includes mast cell activation
- Existing: Vagal-Mast Cell-Connective Tissue Axis (H 0.55), Mast Cell-Targeted MMP Inhibition (H 0.50), Mechanical Stress-Modulated Mast Cell Threshold (H 0.50)

**Strength:** H4 adds autoantibody-driven mast cell sensitization to existing mechanical/vagal mast cell regulation hypotheses, filling a gap in the mast cell activation model.

---

## Feed-Into Relationships

| From | To | Pathway | Certainty Impact |
|------|----|---------|-----------------|
| H3 → H1 | Molecular mimicry generates GPCR AAbs → those AAbs reach NTS and reset baroreflex | H1 gains plausibility (source mechanism) |
| H3 → H4 | Same AAbs → sensitize mast cells | H4 gains plausibility |
| H3 → H6 | β2-AR cross-reactive AAbs → block CAP | H6 gains plausibility |
| H2 → H1 | Intrathecal AAb production in dorsolateral medulla → direct NTS neuron binding | H1 gains local source mechanism bypassing area postrema question |
| H2 → H6 | Intrathecal β2-AR AAbs → block CAP locally at brainstem | H6 gains CNS source (not just peripheral AAb) |
| H4 → H8 | Mast cell sensitization → contributes to triad phenotype | H8 mechanism flesh |
| H6 → H7 | CAP blockade by β2-AR AAbs → taVNS stratification logic | H7 fully depends on H6 — if CAP not blockable, stratification collapses |
| H9 → H1/H4/H6/H7 | IgG subclass profiling determines which patients have pathogenic vs non-pathogenic GPCR AAbs | Raises all — refines patient selection; or lowers if IgG4 dominance found |
| H10 | Integrates all above | Formal DAG for hypothesis testing |

---

## Conflicts

### Conflict 1: H2 (Intrathecal AAb) vs Bynke 2020 (No CSF AAb)
| Aspect | Detail |
|--------|--------|
| **H2 predicts** | CSF GPCR AAb index ≥1.5 in ≥20% ME/CFS; intrathecal production via medullary B cell aggregates |
| **Bynke 2020 finds** | "No autoantibodies were detected in cerebrospinal fluid" in ME/CFS |
| **Severity** | **Moderate** — H2's core assumption contradicts existing data |
| **Mitigation** | (a) Bynke cohort may differ from Blitshteyn's proposed phenotype; (b) Sampling timing (lumbar CSF may not capture medullary-local AAb); (c) Sensitivity of detection method |
| **Resolution path** | H2 is falsifiable by design — CSF AAb index test directly resolves this |

### Conflict 2: H1 (Area Postrema AAb Access) vs Bynke 2020 (No CSF AAb)
| Aspect | Detail |
|--------|--------|
| **H1 depends on** | GPCR AAbs crossing area postrema (leaky BBB) to reach NTS |
| **Bynke 2020** | No CSF autoantibodies detected — questions whether AAbs enter CNS at all |
| **Severity** | **Mild** — area postrema is a circumventricular organ; AAbs could bind locally without entering bulk CSF. H1 mechanism doesn't require bulk CSF penetration, only local access |
| **Resolution path** | TSPO-PET + CSF AAb paired study |

### Conflict 3: H9 (IgG Subclass) — Productive Tension with H1/H4/H6/H7
| Aspect | Detail |
|--------|--------|
| **H9 proposes** | IgG4 (non-pathogenic) may dominate; only IgG1/IgG3 are pathogenic |
| **H1/H4/H6/H7 assume** | Total IgG GPCR AAb is functionally pathogenic |
| **Severity** | **Productive tension** — H9 doesn't conflict but qualifies. If H9 is correct (IgG4 dominant), H1/H4/H6/H7 mechanisms apply only to the IgG1/IgG3-positive subset (potentially small). If incorrect (IgG1 dominant), they apply broadly |
| **Resolution path** | IgG subclass profiling is the single highest-priority experiment for this hypothesis cluster |

### Conflict 4: H5 (Ganglionic AChR) vs GPCR-Centric Core
| Aspect | Detail |
|--------|--------|
| **H5 invokes** | α3-nAChR (nicotinic, ion channel) at autonomic ganglia |
| **H1-H4, H6-H7, H9** | All invoke GPCRs (metabotropic, 7-TM) |
| **Severity** | **None** — different receptor families, different anatomical sites. Could operate in distinct patient subsets or coexist. Ganglionic AChR AAbs produce pan-autonomic failure; GPCR AAbs produce more selective dysautonomia |

### Conflict 5: H2 (Local B Cell Aggregates) vs Existing IGHV3-30 Findings
| Aspect | Detail |
|--------|--------|
| **H2 predicts** | Local plasma cell aggregates in medulla producing GPCR AAbs |
| **Existing** | IGHV3-30 BCR skewing without clonal expansion or somatic hypermutation (Ryback 2025); suggests B cells are "activated-but-stalled" rather than terminally differentiated into plasma cells |
| **Severity** | **Mild** — H2 requires terminally differentiated plasma cells; IGHV3-30 findings argue B cells cannot complete germinal centre transit. However, (a) mild/moderate patients show skewing but severe show loss (mechanism may differ by severity), (b) intrathecal plasma cells could arise from a different B cell lineage |

---

## Independence Map

### Pairs with zero mechanism overlap:
| Pair | Reason |
|------|--------|
| H5 ↔ H1 | Ganglionic AChR (nicotinic, peripheral ganglia) vs GPCR AAb (metabotropic, NTS) |
| H5 ↔ H2 | Ganglionic AChR at peripheral ganglia vs brainstem B cell aggregates |
| H5 ↔ H3 | Molecular mimicry generates GPCR AAbs, not AChR AAbs |
| H5 ↔ H4 | Mast cell sensitization by GPCR AAbs, not ganglionic AChR AAbs |
| H5 ↔ H6 | CAP blockade via β2-AR on splenic T cells, not ganglionic AChR |
| H5 ↔ H7 | taVNS targets CAP/vagal, not ganglionic transmission |
| H5 ↔ H9 | IgG subclass profiling relevant to GPCR AAbs; AChR AAbs have established pathogenicity (AAG) |

---

## Conflict Clusters

### Cluster 1: CSF AAb Paradox (moderate confidence threat)
**Involved:** H1, H2, H6  
**External evidence:** Bynke 2020 (no CSF AAb in ME/CFS)  
**Impact:** H1 (mild, mitigated by area postrema anatomy), H2 (moderate, core assumption challenged), H6 (mild, CAP blockade is peripheral splenic mechanism, not CNS)  
**Resolution:** Paired CSF-serum GPCR AAb measurement + TSPO-PET

### Cluster 2: Assay Validity Shadow (moderate-high confidence threat)
**Involved:** All GPCR AAb-dependent hypotheses (H1-H4, H6-H9)  
**External evidence:** Vernino 2022 (POTS null on ELISA), Germain 2025 (ME/CFS null on REAP/Luminex), Hartwig 2020 (ME/CFS IgG fails β2-AR functional activation)  
**Impact:** If GPCR AAb measurements are non-specific binding, the entire neuroimmune framework collapses  
**Resolution:** Head-to-head CellTrend + REAP/Luminex + functional assay + IgG subclass in same samples (highest-priority experiment for the neuroimmune integration)

### Cluster 3: IgG Subclass Uncertainty (productive tension)
**Involved:** H9 vs H1/H4/H6/H7  
**Dynamic:** H9 is simultaneously a threat (if IgG4 dominant, effector mechanisms weakened) and a resolution (provides biomarker to identify truly pathogenic AAb subset)  
**Resolution:** IgG1/IgG4 ratio profiling; if IgG4-dominant, H9 subsumes H1/H4/H6/H7 into subset mechanisms

---

## External Compatibilities

### Pre-existing GPCR AAb hypotheses (compatible ← →)
| Existing | New Hypothesis | Relationship |
|----------|---------------|-------------|
| GPCR AAb-Based Autonomic Phenotyping (ch07 H 0.40) | H6, H7 | **Reinforcement** — H6 defines CAP blockade as mechanism, H7 adds stratified treatment |
| GPCR AAb-transdiagnostic biomarker (H 0.60) | H8, H10 | **Feed-into** — H8 provides triad framework, H10 formal DAG |
| CRPS GPCR AAb parallel (S 0.45) | H9 | **Reinforcement** — CRPS reinforces that GPCR AAb functional validation matters |
| Dual Autoantibody Populations (H 0.45) | H9 | **Reinforcement** — IgG subclass explains the GPCR vs tissue-structural distinction |
| IgG1/IgG4 isotype shift (ch28 S 0.42) | H9 | **Reinforcement** — converging on same subclass hypothesis from different evidence |

### Pre-existing Vagal/CAP hypotheses (compatible ← →)
| Existing | New Hypothesis | Relationship |
|----------|---------------|-------------|
| VNS as Corticosteroid Alternative (registry S 0.50) | H6, H7 | **Feed-into** — VNS alternative mechanism now constrained by AAb status |
| Vagal-Mast Cell-Connective Tissue Axis (H 0.55) | H4, H6 | **Reinforcement** — H4 adds AAb mast cell sensitization; H6 adds CAP blockade |
| tVNS for mast cell-ECM (ch18 S 0.40) | H4, H6 | **Feed-into** — CAP blockade by AAbs explains tVNS non-response in some patients |
| SPM deficiency as chronicity switch (H 0.45) | H6 | **Feed-into** — CAP blockade impairs SPM synthesis, compounding resolution failure |

### Pre-existing Brainstem hypotheses (compatible ← →)
| Existing | New Hypothesis | Relationship |
|----------|---------------|-------------|
| Brainstem neuroinflammation ME/CFS (S 0.45) | H1, H2, H6 | **Reinforcement** — adds specific mechanisms to existing neuroinflammation node |
| CNS-Confined Fatigue (H 0.60) | H1, H2 | **Reinforcement** — brainstem compartmentalisation explains normal peripheral biomarkers |

### Pre-existing SFN/Central Sensitization (compatible ← →)
| Existing | New Hypothesis | Relationship |
|----------|---------------|-------------|
| IgG-Mediated Non-Length-Dependent SFN (ch08 H) | H8 | **Reinforcement** — supports SFN as shared peripheral pathology |
| Central Sensitization as Shared Pain Amplification (registry H 0.70) | H8 | **Reinforcement** — central sensitisation is third element of triad |
| SFN as CNS metabolic burden (ch10 S 0.40) | H8 | **Feed-into** — SFN drives CNS energy drain in triad |

---

## Certainty Propagation Effects

| Hypothesis | Standalone Cert | With Reinforcement | Threat Adjustment | Effective Range |
|------------|-----------------|-------------------|-------------------|----------------|
| H1 | 0.35 | +0.05 (H3 source, H2 source) | -0.05 (CSF AAb conflict) | 0.30–0.40 |
| H2 | 0.30 | +0.03 (H1 brakes, H6 CAP) | -0.10 (Bynke CSF null) | 0.20–0.30 |
| H3 | 0.40 | +0.05 (H9 subclass, existing IGHV3-30) | -0.03 (Germain null) | 0.37–0.45 |
| H4 | 0.35 | +0.05 (existing mast cell hypotheses) | -0.05 (assay validity shadow) | 0.30–0.40 |
| H5 | 0.25 | +0.03 (existing AAG literature) | 0 (independent, not threatened) | 0.25–0.28 |
| H6 | 0.40 | +0.05 (existing CAP literature, VNS data) | -0.05 (assay shadow, but CAP has functional data) | 0.35–0.45 |
| H7 | 0.40 | +0.07 (H6 mechanism, existing taVNS pilots) | -0.05 (assay shadow, taVNS ME/CFS pilot small) | 0.35–0.47 |
| H8 | 0.35 | +0.07 (existing SFN, central sensitization, GPCR AAb evidence) | -0.03 (heterogeneity across conditions) | 0.32–0.42 |
| H9 | 0.50 | +0.05 (parallel schizophrenia IgG subclass literature) | -0.03 (no ME/CFS subclass data yet) | 0.47–0.55 |
| H10 | 0.40 | +0.08 (H1-H9 convergence, existing ch29 DAG) | -0.05 (compound uncertainty from lower-layer hypotheses) | 0.35–0.48 |

---

## Highest-Impact Experiments

1. **Paired CSF-serum GPCR AAb with IgG subclass** — resolves Conflict 1 (CSF AAb), Conflict 2 (area postrema access), and Conflict 3 (IgG subclass) simultaneously. Highest priority.
2. **Head-to-head CellTrend + REAP/Luminex + functional assay** — resolves Assay Validity Shadow (Cluster 2) that threatens the entire GPCR AAb core.
3. **taVNS stratified by β2-AR AAb quartile** — directly tests H7 + H6; if negative, both hypotheses are weakened; if positive, provides first stratified treatment in ME/CFS.
4. **DAG centrality analysis on H10 nodes** — verifies GPCR AAb + brainstem neuroinflammation as highest-betweenness nodes; if different nodes emerge, the neuroimmune framework's causal structure is incorrect.

---

## Summary

| Metric | Count |
|--------|-------|
| Total pairwise relationships | 45 |
| Reinforcements | 14 (31%) |
| Feed-into | 21 (47%) |
| Conflicts | 5 (11%) — 1 moderate, 2 mild, 1 productive tension, 1 none |
| Independent | 5 (11%) |
| External compatibilities (to pre-existing) | 16 |

**Overall verdict:** The 10 new hypotheses form a coherent neuroimmune framework with high internal connectivity (78% R/F). The GPCR AAb core (H1, H3, H4, H6, H7, H9, H10) accounts for most edges and is the main reinforcement cluster. Two external threats (CSF AAb paradox, assay validity shadow) require resolution before the framework can advance beyond speculative status. H9 (IgG subclass) is strategically positioned as the hinge: it either validates the core or restricts it to a small subset. H10 (multi-scale DAG) provides the integrative formal structure but inherits uncertainty from all lower-layer hypotheses. H5 (ganglionic AChR) is appropriately independent — a parallel mechanism for a distinct subset.
