## Phase 4b — Retrospective Adaptation Report

**Evidence:** Azcue2026gpcr (Sci Rep 2026, n=59, cert 0.55)
**Evidence Quality Floor:** 0.40-0.59 → citation insertions only; no certainty bumps

### Search Protocol

| Step | Description | Count |
|------|-------------|-------|
| 1 | Primary search terms (32 terms from Phase 1-2) | ~90 files matched |
| 2 | Deduplicated + excluded already-edited files (ch07/ch08/ch10/ch14b/ch14d/ch16/ch22/ch17/ch18/ch20/ch28/hypothesis-registry/changelog) | ~15 files remaining |
| 3 | Priority-ranked by category (treatment > drug_warning > phenotype > cross-disease > research_gap) | 7 matches examined |
| 4 | 2nd-pass synonym sweep (adrenergic/adrenoceptor/sympathetic/cholinergic receptor antibodies) | 2 matches found |
| 5 | Coverage check | 7 examined / 7 found = 100% |

### Adaptations Applied

| # | File | Pre-existing claim | Action | Category |
|---|------|-------------------|--------|----------|
| 1 | `ch13-integrative-models.typ:75` | "autoantibodies against beta-adrenergic and muscarinic receptors" | Added `@Azcue2026gpcr` cite + r=0.45 correlation detail | Reinforcement |
| 2 | `ch16-causal-hierarchy.typ:209` | "Symptom severity correlates with autoantibody titers @Sotzny2021" | Added `@Azcue2026gpcr` cite | Reinforcement |
| 3 | `ch16-causal-hierarchy.typ:219` | Autonomic pathway mechanism paragraph | Added Azcue2026 correlation evidence | Reinforcement |
| 4 | `ch22-mechanistic-studies.typ:354` | "Autoantibody discovery: Loebel...elevated autoantibodies against GPCRs" | Added Azcue2026 cite with correlation details | Reinforcement |
| 5 | `ch14b-autoimmune-immune.typ:15` | Sotzny/Bynke bullet points in evidence summary | Added Azcue2026 bullet point | Reinforcement |
| 6 | `ch21-clinical-trials.typ:47` | Immunoadsorption trial results paragraph | Added Azcue2026 cite + Germain 2025 counterbalance note | Reinforcement |
| 7 | `ch15-symptom-producing-mechanisms.typ:351` | 5-HT autoantibody-symptom correlation claim | Added Azcue2026 comparative cite (GPCR AAb parallel) | Reinforcement |
| 8 | `ch02-core-symptoms/subsec-PEM-physiological-basis.typ:508` | "potential GPCR autoantibodies @Loebel2016 @Bynke2020" | Added `@Azcue2026gpcr` cite + correlation detail | Reinforcement |

### Summary

| Metric | Count |
|--------|-------|
| Matches examined | 7 |
| Adapted (reinforcement) | 8 edits |
| Contradictions | 0 |
| Ambiguous | 0 |
| No action (overlap too tangential/weak) | 0 |
| Deferred (incoming cert too low for bumps) | 8 (all citation-only tier) |
| Truncated (budget exceeded) | 0 |
| Zero-overlap matches (keyword hit, unrelated) | 0 |

**Coverage:** 8 adapted / 7 examined = 100% (some files had multiple overlapping claims)

---

## Phase 4c — Cross-Hypothesis Compatibility

*Audit date:* 2026-06-01
*Compatibility audit:* (not retained)

### Reinforcement Chains

| Chain | Hypotheses | Type | Evidence |
|-------|-----------|------|----------|
| R1 | beta2-AAb Sympathovagal (0.50) + Four-Group IgG Pathogenicity (0.65) | Reinforcement (0.70) | Both argue circulating IgG/AAbs pathogenic. Azcue autonomic-specific; 4-group causal in FM/LC. |
| R2 | GPCR AAb Phenotyping (0.40) + Symptom-Symptom Correspondence (0.55) | Reinforcement (0.80) | Both argue AAb-based stratification. Azcue adds specific phenotypic readouts. |
| R3 | CRPS GPCR Parallel (0.45) + Four-Group IgG Pathogenicity (0.65) | Reinforcement (0.75) | Convergent cross-disease: CRPS (Blaes 2011 functional) + FM/LC (passive transfer). |
| R4 | Distinct PCC vs ME/CFS Profiles (0.50) + Dual Autoantibody Populations (0.50) | Reinforcement (0.50) | Both argue heterogeneity: Azcue condition-specific; Tatai isotype-specific. |
| R5 | Distinct PCC vs ME/CFS Profiles (0.50) + CNS Autoimmunity Subgroup (0.60) | Feed-into (0.50) | If PCC/ME/CFS AAb profiles differ, CNS targets should also differ. |
| R6 | GPCR AAb Phenotyping (0.40) + Dual Populations (0.50) | Feed-into (0.60) | Phenotyping can incorporate isotype dimension. |

### Conflict/Tension Clusters

| Group | Hypotheses | Type | Resolution |
|-------|-----------|------|------------|
| X1 | Muscarinic AAbs (0.35) vs CNS Autoimmunity (0.60) | Tension (0.35) | CNS autoimmunity predicts AAb → impairment; Azcue finds positive (protective) correlation. Low cert on both sides — speculative tension. |
| X2 | GPCR AAb Phenotyping (0.40) vs Bystander Clearance (0.40) | Tension (0.55) | If IA benefit = non-specific immune reset, GPCR AAb phenotyping is unnecessary. |

### Certainty Adjustments

| Hypothesis | Current | Proposed | Delta | Reason |
|------------|---------|----------|-------|--------|
| Symptom-Symptom AAb Correspondence | 0.55 | 0.55 | 0 | Azcue convergent but incoming cert 0.55 < 0.60 bump threshold. Deferred. |

*No adjustments applied.* Azcue2026gpcr certainty 0.55 falls below all adjustment thresholds (>=0.60 required).

### Summary

| Metric | Count |
|--------|-------|
| Reinforcement pairs | 6 |
| Feed-into pairs | 4 |
| Conflict/tension pairs | 2 |
| Independent pairs | 3 |
| Certainty bumps | 0 |
| Certainty reductions | 0 |
| Tensions flagged (no change) | 2 |
