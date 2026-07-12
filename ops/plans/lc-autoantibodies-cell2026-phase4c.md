## Phase 4c — Cross-Hypothesis Compatibility (lc-autoantibodies-cell2026)

*Audit date:* 2026-05-30
*Compatibility audit:* (not retained)

### Reinforcement Chains

#### Feed-into Chains

| Chain | Nodes | Type | Cumul. Cert. | Mechanism Trace |
|-------|-------|------|-------------|-----------------|
| C1 | Four-group IgG (N1, 0.65) → Plasma cell sanctuary (0.60) | Feed-into | 0.52 | N1: IgG is pathogenic → plasma cells are the production factories → daratumumab/CD38 rationale |
| C2 | FcRn amplification (N3, 0.30) → Revised two-compartment (N2, 0.55) | Feed-into | 0.21 | N3: FcRn amplifies CNS IgG exposure 3-10× → N2: CNS compartment becomes functionally significant |
| C3 | MED20 disruption (N4, 0.30) → Revised two-compartment (N2, 0.55) | Feed-into | 0.17 | N4: anti-MED20 IgG → transcriptional energy crisis → N2: CNS balance/fatigue mechanism |
| C4 | Endotype clusters (N5, 0.50) → Revised two-compartment (N2, 0.55) | Feed-into | 0.38 | N5: autoantibody fingerprint predicts phenotype → N2: anatomical compartments correspond to clinical endotypes |

#### Reinforcement Clusters

| Cluster | Hypotheses | Shared Theme | Cluster Cert. |
|---------|-----------|--------------|---------------|
| R1 | Four-group IgG (N1, 0.65), GPCR autoantibody-endothelial cascade (0.60), Threshold duration (0.50) | IgG-mediated pathology is clinically relevant | 0.58 |
| R2 | Revised two-compartment (N2, 0.55), Periph vs Central Autoantibody Effects (ch14g, ~0.55), Two-Compartment PEM Cascade (ch14h, ~0.50) | Compartmental architecture shared; distinct mechanisms but same organizational principle | 0.53 |
| R3 | Endotype clusters (N5, 0.50), CNS autoimmunity subgroup (0.60) | Autoantibody-based patient stratification enables precision medicine | 0.55 |
| R4 | FcRn amplification (N3, 0.30), FcRn antagonists open-question (ch07) | Both argue FcRn is therapeutically relevant; N3 adds BBB amplification mechanism | 0.58 |

### Conflict Clusters

| Group | Hypotheses | Conflict Type | Resolution |
|-------|-----------|---------------|------------|
| X1 — Specificity vs Non-specificity | All specificity-dependent models (N2 Compartment, N3 FcRn amplification, N4 MED20, N5 Endotype) vs Bystander clearance + Immune reset (both ch14b) | Mutually exclusive in strongest form | If bystander is the whole story, specificity models are unnecessary; if specificity necessary, bystander alone insufficient. Discriminating experiment: targeted IgG removal (antigen-specific columns) vs broad removal (immunoadsorption) in endotype-stratified patients. If both work equally → non-specific dominates. If targeted works only in matched endotypes → specificity dominates. Neither arm has sufficient evidence for certainty adjustment. |

### Certainty Adjustments Proposed

| Hypothesis | Current | Proposed | Δ | Reason |
|------------|---------|----------|---|--------|
| Endotype clusters (N5) | 0.50 | 0.55 | +0.05 | Reinforcement with CNS autoimmunity subgroup (registry cert 0.60); relationship certainty 0.70; both independently argue for autoantibody-based patient stratification from different angles — N5 from clustering data, CNS autoimmunity from mechanism. Both ≥ 0.20. |

*No reductions proposed.* Tensions with bystander clearance are speculative conflicts — both specificity models and bystander models have cert < 0.40 on the disputed dimension. Per reinforcement-builder guard rule: "Speculative conflict — needs evidence." No certainty adjustments from tensions.

*No FcRn bump.* N3 (FcRn amplification, 0.30) reinforced by FcRn antagonist evidence (0.85 relationship certainty), but per guard rule: "Reinforcement between two speculative hypotheses (certainty < 0.30 each) does not qualify for +0.05 bump." N3 cert 0.30 barely meets the threshold, but the BBB-specific amplification claim (not general FcRn biology) is what carries the uncertainty. No bump.

*No N2 bump.* N2 (Revised two-compartment, 0.55) reinforced by multiple endpoints but already calibrated to post-adversarial-review cert. At most one +0.05 per hypothesis per cycle. N2 already received implicit bump from Santos Guedes CNS evidence (the precondition for the revision). No further adjustment.

*Plasma cell sanctuary bump deferred.* N1 (0.65) → feed-into plasma cell sanctuary with strong link (0.80). However, sanctuary certainty not tracked in this context, and the bump would require reading and updating the sanctuary's own environment. Defer to next sanctuary-focused cycle.

### Summary

| Metric | Count |
|--------|-------|
| Feed-into chains built | 4 (longest: 2 hops) |
| Reinforcement clusters | 4 (largest: 3 hypotheses) |
| Conflict clusters | 1 (specificity vs non-specificity) |
| Certainty bumps proposed | 1 (+0.05 to N5 endotype clusters) |
| Certainty reductions | 0 |
| Tensions flagged (no change) | 1 (bystander vs specificity models) |
