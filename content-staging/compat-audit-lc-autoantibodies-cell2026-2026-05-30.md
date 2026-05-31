# Cross-Hypothesis Compatibility Audit: lc-autoantibodies-cell2026

**Date:** 2026-05-30
**Topic slug:** lc-autoantibodies-cell2026
**Source:** Santos Guedes de Sá et al. 2026 Cell

---

## New Hypotheses Audited

| ID | Title | Env | Cert | Mechanism |
|----|-------|-----|------|-----------|
| N1 | Four-Group Passive Transfer Establishes IgG Pathogenicity | achievement | 0.65 | Circulating IgG → DRG/CNS → symptoms |
| N2 | Revised Two-Compartment Model | speculation | 0.55 | Peripheral DRG (pain) vs CNS (balance/fatigue) |
| N3 | FcRn BBB Amplification | speculation | 0.30 | FcRn recycling at BBB amplifies CNS IgG exposure |
| N4 | MED20 Transcriptional Disruption | hypothesis | 0.30 | Anti-MED20 IgG → nuclear mediator disruption → transcriptional energy crisis |
| N5 | Autoantibody Endotype Clusters | speculation | 0.50 | Symptom-symptom IgG correspondence defines clinical endotypes |

---

## Pairwise Compatibility Matrix

### N1 — Four-Group IgG Pathogenicity

| Existing | Relationship | Confidence | Notes |
|----------|-------------|------------|-------|
| Plasma cell sanctuary (ch14b) | **Feed-into** | 0.80 | Pathogenic IgG implies production source; plasma cells → IgG production |
| GPCR autoantibody-endothelial cascade (ch14b) | **Reinforcement** | 0.70 | Same methodological principle; IgG pathogenicity demonstrated |
| Bystander clearance (ch14b) | **Tension** | 0.30 | N1 argues IgG is pathogenic; bystander argues IgG removal benefits are non-specific |
| Immune reset (ch14b) | **Ambiguous** | 0.20 | N1 supports IgG-mediated mechanism; reset model is compatible but doesn't depend on it |
| Threshold duration (ch14b) | **Reinforcement** | 0.60 | Sustained IgG suppression needed for recovery; N1 establishes IgG relevance |

### N2 — Revised Two-Compartment Model

| Existing | Relationship | Confidence | Notes |
|----------|-------------|------------|-------|
| Two-Compartment PEM Cascade (ch14h) | **Reinforcement** | 0.50 | Shared compartment architecture; distinct mechanisms (autoantibody vs vascular) but same organizational principle; term collision risk noted |
| Periph vs Central Autoantibody Effects (ch14g) | **Reinforcement** | 0.60 | Both distinguish peripheral from central autoantibody effects |
| Bystander clearance (ch14b) | **Tension** | 0.40 | Compartment model implies target specificity (CNS vs peripheral); bystander argues specificity irrelevant |
| Immune reset (ch14b) | **Ambiguous** | 0.30 | Model predicts differential response by compartment; if IA works via global reset, compartment distinction diminshed |
| IM three-compartment immune failure (registry) | **Independent** | 0.10 | IM model partitions immune cell types; N2 partitions anatomical targets; different axes |

### N3 — FcRn BBB Amplification

| Existing | Relationship | Confidence | Notes |
|----------|-------------|------------|-------|
| Revised two-compartment model (N2) | **Feed-into** | 0.70 | Provides mechanism for how 5% BBB crossing becomes sufficient for CNS effects; strengthens CNS compartment rationale |
| FcRn antagonists open question (ch07) | **Reinforcement** | 0.85 | Both argue FcRn is therapeutically relevant; N3 adds CNS amplification mechanism |
| Bystander clearance (ch14b) | **Tension** | 0.35 | N3 requires BBB-specific receptor biology; bystander argues non-specific IgG removal suffices |
| Engineered exosome BBB delivery (registry) | **Independent** | 0.10 | N3 concerns endogenous IgG recycling; exosome work is about therapeutic delivery; different mechanisms |

### N4 — MED20 Transcriptional Disruption

| Existing | Relationship | Confidence | Notes |
|----------|-------------|------------|-------|
| CNS autoimmunity subgroup (registry) | **Feed-into** | 0.60 | N4 provides specific molecular mechanism for the CNS-targeting arm of the subgroup hypothesis |
| Revised two-compartment model (N2) | **Feed-into** | 0.55 | N4 provides molecular detail for CNS compartment mechanism |
| GPCR autoantibody-endothelial cascade (ch14b) | **Independent** | 0.05 | GPCR cascade is surface receptor-mediated; N4 is intracellular; different target classes |
| Plasma cell sanctuary (ch14b) | **Independent** | 0.05 | Sanctuary concerns antibody production; N4 concerns antibody mechanism of action; independent steps |

### N5 — Autoantibody Endotype Clusters

| Existing | Relationship | Confidence | Notes |
|----------|-------------|------------|-------|
| Revised two-compartment model (N2) | **Feed-into** | 0.75 | N5 predicts clinical stratification that maps to N2's mechanistic compartments |
| Four-group IgG pathogenicity (N1) | **Reinforcement** | 0.60 | Symptom-symptom correspondence data supports both |
| CNS autoimmunity subgroup (registry) | **Reinforcement** | 0.70 | Both argue for autoantibody-based patient stratification |
| Bystander clearance (ch14b) | **Tension** | 0.45 | N5 requires specific antibody profiling for endotypes; bystander argues profiling is unnecessary for treatment response |
| Immune reset (ch14b) | **Ambiguous** | 0.30 | If global reset works, endotypes may not matter; if endotypes valid, targeted therapy superior |

---

## Summary

| Relationship | Count | Notes |
|-------------|-------|-------|
| Reinforcement | 7 | Strongest: FcRn amplification ↔ FcRn antagonists (0.85); Endotype clusters ↔ Two-compartment|
| Feed-into | 5 | Strongest: Plasma cell sanctuary ← Four-group IgG (0.80); Endotype → Two-compartment (0.75)|
| Tension | 4 | Bystander clearance vs all specificity-dependent models; resolvable by comparing targeted vs broad IgG reduction |
| Ambiguous | 3 | Immune reset vs compartmental models; resolvable by same experiment |
| Independent | 4 | Different axes (intracellular vs surface, production vs action, immune cell vs anatomical) |

## Certainty Adjustments

| Hypothesis | Current | Proposed | Reason |
|-----------|---------|----------|--------|
| Four-group IgG pathogenicity (registry) | 0.75 | 0.65 | Downgraded by adversarial review (indirect FM/LC evidence, Germain null, single CNS source); consistency alignment |
| (No other adjustments proposed — remaining new hypotheses already at calibrated certainty post-review) |

## Key Tension to Resolve

The central unresolved tension: **specificity-dependent compartmental models** (N2, N3, N4, N5) vs **non-specific immune mechanisms** (bystander clearance, immune reset). These are NOT mutually exclusive — both could contribute — but determining which dominates is critical for therapeutic strategy:
- If non-specific dominates → broad IgG removal (immunoadsorption, FcRn antagonists) is sufficient for all patients
- If specificity dominates → antigen-specific columns, endotype-stratified trials, CNS-targeted therapies needed

Discriminating experiment: compare targeted removal (MED20/USP5 columns, if feasible) vs broad removal (immunoadsorption) in endotype-stratified patients. If both work equally, non-specific mechanisms dominate. If targeted works only in matched endotypes, specificity dominates.
