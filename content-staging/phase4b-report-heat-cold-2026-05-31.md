# Phase 4b Report: Retrospective Adaptation (Evidence→Claim)
**Topic:** heat-cold-thermoregulation
**Date:** 2026-05-31

## Search Protocol

Primary search terms: HSP70, HSPA5, heat shock protein, hyperthermia, Waon, sauna, infrared, passive heat, circadian temperature, core temperature, body temperature, heat intolerance, cold intolerance, spare respiratory capacity, autophagy marker, ATG13, Bergemann

Secondary (synonym) search: thermal therapy, hot environment, cold extremities, cannot tolerate heat, hypothermia, subnormal temperature, thermoregulatory failure

## Results

| Metric | Count |
|--------|-------|
| Total grep hits (deduplicated) | 31 |
| Matches examined | 15 (budget: 30, not exceeded) |
| Matches adapted | 11 |
| No action (below quality floor / tangential / already adapted) | 4 |

### Adaptation by Classification

#### Reinforcement (R): 5 edits

| # | File | Pre-existing claim | Adaptation | Incoming cert |
|---|------|-------------------|------------|---------------|
| R1 | ch07-immune-dysfunction.typ:2758 | "elevated endothelin-1 shifts vascular tone" | Added cross-ref to ch10 vasomotor-constriction-bias | Cambras 2023 (0.60) |
| R2 | ch07-immune-dysfunction.typ:41 | "reduced metabolic reserve limits NK cell activity" | Added cross-ref to ch06 mitochondrial-reserve-thermoreg | Hochecker 2025 (0.55) |
| R3 | ch13-integrative-models.typ:71 | "spare respiratory capacity... direct measure of metabolic reserve" | Added annotation with Hochecker cite | Hochecker 2025 (0.55) |
| R4 | ch17-universal-mechanisms.typ:345 | "abnormal HSP70/HSP90 expression" | Added Hochecker cite showing dynamic modifiability | Hochecker 2025 (0.55) |
| R5 | ch14d-cross-disease.typ:2081 | "Bergemann hyperthermia study" | Updated to reference Hochecker as mechanistic replication | Hochecker 2025 (0.55) |

#### Contradiction (T): 1 edit

| # | File | Pre-existing claim | Adaptation | Incoming cert |
|---|------|-------------------|------------|---------------|
| T1 | ch19-integrative-approaches.typ:3040 | "Bergemann showed autophagy modulation" | Changed to "Hochecker et al. showed" — Bergemann was PI, Hochecker is first author of the actual study | Hochecker 2025 (0.55) |

#### Ambiguous (A): 0 edits

No ambiguous cases — all hits cleanly classified as reinforcement, contradiction, or no-action.

#### No Action (S): 4 overlaps deferred

| # | File | Reason |
|---|------|--------|
| S1 | ch05-onset-patterns.typ:136 | "cold extremities" — purely phenotypic description, no mechanistic claim to adapt |
| S2 | ch04-differential-diagnosis.typ:203 | Cold intolerance as thyroid differential — clinical context, not thermoregulatory mechanism |
| S3 | ch14i-clinical-brainstorm.typ:377,391 | Hyperthermia warning — pre-existing safety caution; already covered by new HSAT2/hyperthermia content |
| S4 | ch14j-selective-dysfunction.typ:649 | Temperature-melatonin rhythm dissociation — cites Williams 2001, already addressed by ch09 dual-oscillator work |

### Evidence Quality Floor Check

| Paper | Incoming cert | Actions permitted | Actions taken |
|-------|--------------|-------------------|---------------|
| Hochecker 2025 | 0.55 | Citation insertions only; no certainty bumps | 5 cross-refs + 1 citation correction |
| Stanculescu 2021 | 0.65 | Full adaptation; max +0.05 bump | 1 cross-ref (ch07 vasoconstrictive); no bump (narrative review) |
| Cambras 2023 | 0.60 | Full adaptation; max +0.05 bump | Cross-refs added; no bump (correlational only) |
| Soejima 2015 | 0.50 | Citation insertions only; no bumps | Cross-refs added; no bump |

### Certainty Adjustments

None applied in Phase 4b. Incoming evidence certainty: Hochecker (0.55), Stanculescu (0.65), Cambras (0.60), Soejima (0.50) — all below 0.70 threshold for +0.10 bumps. Stanculescu at 0.65 qualifies for +0.05 but is a narrative review, not primary data — no adjustment warranted.

### Coverage

11 adapted out of 15 examined. Truncated: no — budget of 30 not exceeded. Zero-overlap case: N/A.

### Treatment Map Update

ch14-mechanism-treatment-map.typ: 2 rows updated (Waon therapy entries) with Hochecker citation and evidence quality caveat.
