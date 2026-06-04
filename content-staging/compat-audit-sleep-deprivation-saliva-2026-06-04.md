# Compatibility Audit: Sleep Deprivation Salivary Metabolomics ↔ Existing Registry

**Date:** 2026-06-04
**Topic slug:** sleep-deprivation-saliva
**New hypotheses:** 1 registry entry + 3 chapter speculations + 2 open-questions

---

## Pairwise Matrix

| New Hypothesis | Existing Hypothesis | Type | Certainty | Rationale |
|---|---|---|---|---|
| Salivary Metabolomic Fingerprint (S, 0.35) | SleepFM Cross-Modal Decoupling (S, 0.65) | **Reinforcement** | 0.70 | Orthogonal sleep biomarkers: molecular (saliva) + physiological (PSG decoupling). Complementary, not competing. Combined signal richer than either alone. |
| Salivary Metabolomic Fingerprint (S, 0.35) | Exosomal HSP70 Sleep Phenotype (S, 0.35) | **Reinforcement** | 0.65 | Both are sleep phenotype biomarkers. Saliva = peripheral, non-invasive screen; HSP70 exosomes = CNS-derived, invasive confirmatory. Cross-ref already added. |
| Salivary Metabolomic Fingerprint (S, 0.35) | Glymphatic-Capillary Clearance Enhancement (H, 0.60) | **Feed-into** | 0.50 | Glymphatic impairment → waste metabolites not cleared during sleep → altered post-sleep salivary profile. Saliva could be non-invasive glymphatic clearance readout. |
| Salivary Metabolomic Fingerprint (S, 0.35) | NE Deficiency Impairs Glymphatic (H, 0.50) | **Feed-into** | 0.50 | Same as above — NE→vasomotion→glymphatic→metabolite accumulation→salivary signal. |
| Salivary Metabolomic Fingerprint (S, 0.35) | Orexin→PKA→Tau (S, 0.25) | **Feed-into** | 0.45 | Orexin deficiency → sleep disruption → altered metabolite rhythms → salivary signal. Salivary profile could proxy for orexin dysfunction severity. |
| Salivary Metabolomic Fingerprint (S, 0.35) | ET-1 Thermoregulatory Biomarker (OQ) | **Independent** | 0.90 | Different systems (sleep vs thermoregulation). Salivary collection is common modality but different analytes and pathways. |
| Salivary Metabolomic Fingerprint (S, 0.35) | Corticosteroid HPA Trust-Breaking (H, 0.55) | **Independent** | 0.95 | Different systems (sleep metabolomics vs HPA axis). |
| Salivary Metabolomic Fingerprint (S, 0.35) | Engineered Exosome mRNA Delivery (H, 0.55) | **Independent** | 0.90 | Diagnostic vs therapeutic; different modalities. |
| Circadian Phase Locking Saliva (S, 0.30) | Circadian Collagen Resynchronization (H, 0.50) | **Reinforcement** | 0.55 | Both propose circadian disruption as symptom driver. Different endpoints (sleep vs collagen) but shared mechanism (circadian phase misalignment). |
| Circadian Phase Locking Saliva (S, 0.30) | Chronobiological Prolyl Hydroxylase (H, 0.40) | **Feed-into** | 0.40 | Circadian collagen synthesis dependent on proper phase alignment. If ME/CFS has widespread circadian disruption, both sleep quality and collagen synthesis suffer. |
| Multi-Metabolite Sleep Refreshment Index (S, 0.30) | SleepFM Decoupling (S, 0.65) | **Reinforcement** | 0.60 | Both propose composite sleep quality indices (molecular SRI vs physiological coupling score). Combine into bimodal sleep quality measure. |
| Multi-Metabolite SRI (S, 0.30) | PEM Predictive Decoupling (S, 0.50) | **Reinforcement** | 0.50 | Both propose sleep biomarkers predict PEM. Salivary SRI = home-based; decoupling = lab-based. |
| Cross-Condition Salivary (OQ) | SleepFM Cross-Disease Decoupling (OQ) | **Reinforcement** | 0.55 | Both ask whether sleep biomarkers are shared across post-infectious conditions. Salivary = molecular; decoupling = physiological. |
| Cross-Condition Salivary (OQ) | Long COVID Sleep Biomarker Bridge (S, 0.60) | **Reinforcement** | 0.60 | Same question from different angles. |
| Cross-Condition Salivary (OQ) | Fibromyalgia-ME/CFS Sleep (OQ in brainstorm #33) | **Reinforcement** | 0.50 | Both examine cross-condition sleep biomarker overlap. |

---

## Reinforcement Chains

1. **Circadian cascade:** Circadian Collagen Resynchronization (H, 0.50) + Chronobiological Prolyl Hydroxylase (H, 0.40) → Circadian Phase Locking Saliva (S, 0.30) → Salivary Metabolomic Fingerprint (S, 0.35). These converge on circadian disruption as a shared upstream driver.

2. **Sleep biomarker convergence:** SleepFM Decoupling (S, 0.65) + Exosomal HSP70 (S, 0.35) + Salivary Metabolomic Fingerprint (S, 0.35) → Multi-Metabolite SRI (S, 0.30). Three orthogonal sleep biomarker modalities converging.

3. **Glymphatic cascade:** Glymphatic-Capillary Clearance (H, 0.60) + NE→Vasomotion→Glymphatic (H, 0.50) → Salivary Metabolomic output (new, S, 0.35). Glymphatic impairment → metabolite accumulation → salivary readout.

## Conflict Clusters

**None.** The salivary metabolomics approach is a measurement modality, not a competing mechanism hypothesis. It is compatible with all existing sleep/neurodegeneration/glymphatic hypotheses. The only tension is the interpretation ambiguity: if salivary metabolomics shows no chronic ME/CFS signal (patient profile = rested controls despite reported unrefreshing sleep), this would strengthen the CNS-only hypothesis (orexin/glymphatic) at the expense of a peripheral metabolic disruption hypothesis. But this is a research resolution, not a theoretical conflict — the hypotheses are structured to be empirically decided.

## Certainty Adjustment Proposals

| Pair | Trigger | Proposed adj | Guard check |
|------|---------|-------------|-------------|
| Salivary metabolomics ↔ SleepFM decoupling | Two independent lines converge on sleep biomarker (different modalities: molecular vs physiological) | +0.05 to both | Both ≥ 0.20 ✓; at most one +0.05 per cycle ✓ |
| Circadian Phase Locking ↔ Circadian Collagen | Two independent circadian hypotheses (different endpoints) | +0.05 to Circadian Phase Locking only (0.30 → 0.35) | Receiving hypothesis ≥ 0.20 ✓; collagen hypothesis already at 0.50 |
| **All adjustments deferred.** Rationale: all incoming hypotheses are at certainty ≤ 0.35, all evidence is from healthy populations (no ME/CFS data). Cross-hypothesis convergence at this certainty level is speculative convergence rather than robust independent validation. No adjustments applied in this cycle. |

## Summary

| Metric | Count |
|--------|-------|
| Total pairs examined | 15 |
| Reinforcement | 8 |
| Feed-into | 5 |
| Conflict | 0 |
| Independent | 2 |
| Certainty bumps proposed | 0 (all deferred — certainty too low) |
| Certainty reductions | 0 |

**Conclusion:** The salivary metabolomics approach is fully compatible with the existing hypothesis registry. It provides a new measurement modality that complements (rather than competes with) existing sleep biomarker, glymphatic, circadian, and tau/neurodegeneration hypotheses. Zero conflicts. The approach is best understood as a non-invasive, at-home, peripheral readout layer for sleep quality that any of the existing CNS hypotheses could exploit as an endpoint.
