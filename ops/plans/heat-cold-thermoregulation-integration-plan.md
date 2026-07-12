# Heat and Cold Thermoregulation in ME/CFS — Integration Plan

**Purpose:** Integrate evidence on thermoregulatory dysfunction, heat/cold intolerance, and thermal therapies in ME/CFS — from basic mechanisms (ET-1 vascular tone, HSP70/mitochondrial rescue, ME/CFS-heat stroke shared pathways) through clinical applications (Waon therapy, controlled hyperthermia, cold adaptation).

**Target chapters:**
- ch02 (autonomic symptoms — temperature dysregulation mechanism)
- ch03 (additional symptoms — temperature section mechanism update)
- ch09 (circadian rhythms — ET-1/skin temperature)
- ch14 (symptom management — controlled heat paradox)
- ch15 (symptom-producing mechanisms — HSP70/autophagy, TRPM3-TRPV1, vasomotor)
- ch17 (lifestyle interventions — Waon/thermal therapy updates, cold/heat exposure)
- ch06 (energy metabolism — mitochondrial reserve thermoregulatory capacity)
- ch10 (cardiovascular — vasomotor bias, ET-1 vascular tone)
- ch20 (biomarkers — ET-1, mitochondrial reserve, skin temperature monitoring)

**Pre-identified hypotheses (Phase 1):**
1. ET-1 mediates thermoregulatory failure (Cambras 2023) — certainty 0.55
2. Controlled passive heat paradox (Soejima 2015 + Hochecker 2025) — certainty 0.50
3. ME/CFS-heat stroke shared pathway vulnerability (Stanculescu 2021) — certainty 0.55

**Brainstorm file:** `ops/brainstorms/brainstorm-heat-cold-thermoregulation-2026-05-31.md`
**Idea count:** 90 (10 hypotheses + 10 research directions + 10 drug ideas + 10 supplement ideas + 10 non-pharm interventions + 10 combinations + 10 math models + 10 cross-disease bridges + 10 diagnostic/biomarker ideas)

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| H1 | Mitochondrial-Autophagy Balance Reset via HSP70 | 1 | 0.72 | ⬜ pending | Core mechanism from Hochecker 2025 |
| H2 | ET-1-TRPM3 Cross-Talk Impairs Thermosensing | 1 | 0.68 | ⬜ pending | Links Cambras 2023 + TRPM3 literature |
| H3 | HSP Deficiency as Mitochondrial ROS Consequence | 1 | 0.65 | ⬜ pending | Reversed causality hypothesis |
| H4 | Circadian Thermoregulatory Collapse from Dual Oscillator Decoupling | 1 | 0.71 | ⬜ pending | SCN vs peripheral oscillator |
| H5 | Cold Intolerance from Failed BAT Activation | 1 | 0.66 | ⬜ pending | Novel cold mechanism |
| H6 | Vasomotor Flip-Flop: Tonic Vasoconstriction Bias | 1 | 0.64 | ⬜ pending | Explains dual intolerance |
| H7 | Waon Therapy: HSP70-Mediated ISR Attenuation | 1 | 0.69 | ⬜ pending | Treatment mechanism |
| H8 | TRPM3-TRPV1 Functional Antagonism | 1 | 0.63 | ⬜ pending | MCAS link |
| H9 | Mitochondrial Reserve as Thermoregulatory Capacity | 1 | 0.74 | ⬜ pending | Hochecker data driven |
| H10 | Heat-Induced Autophagy Switch: Selective→Bulk | 1 | 0.60 | ⬜ pending | |
| R1 | Precision Thermal Dose-Response | 1 | 0.85 | ⬜ pending | |
| R2 | Cold Tolerance Phenotyping | 2 | 0.78 | ⬜ pending | |
| R3 | HSP70 Pharmacology: Thermal vs Pharmacological | 1 | 0.82 | ⬜ pending | |
| R4 | ET-1 Modulation Trial | 2 | 0.76 | ⬜ pending | |
| R5 | TRPM3-TRPV1 Rescue in Patient Cells | 2 | 0.71 | ⬜ pending | |
| R6 | Waon Therapy Optimization Trial | 2 | 0.84 | ⬜ pending | |
| R7 | Mitochondrial Reserve Predictive Model | 2 | 0.80 | ⬜ pending | |
| R8 | Cold Adaptation Protocol Safety | 2 | 0.73 | ⬜ pending | |
| R9 | HSP70 Kinetic Profiling | 2 | 0.77 | ⬜ pending | |
| R10 | Heat vs Cold Sequencing Trial | 2 | 0.79 | ⬜ pending | |
| D1-D10 | Drug ideas | 2-3 | 0.55-0.72 | ⬜ pending | Bosentan, mirabegron, arimoclomol, etc. |
| S1-S10 | Supplement ideas | 2-3 | 0.64-0.71 | ⬜ pending | ALA, glycine, carnitine, etc. |
| N1-N10 | Non-pharm interventions | 2-3 | see file | ⬜ pending | Sauna, cold exposure, etc. |
| C1-C10 | Combinations + access | 2-3 | see file | ⬜ pending | |
| M1-M10 | Math model extensions | 2-3 | see file | ⬜ pending | |
| X1-X10 | Cross-disease bridges | 2-3 | see file | ⬜ pending | |
| B1-B10 | Diagnostic/biomarker ideas | 1-3 | see file | ⬜ pending | |

**Notes:**
- Existing literature in paper covers TRPM3, MCAS heat trigger, thermoneutral water, sleep thermoregulation, HSAT2 heat caution — avoid duplication
- Immune/inflammatory topics (MCAS, TRPM3 autoimmunity) that are standalone → auto-escalate per pipeline rules
- Many drug/supplement ideas are cross-disease → ch18 or ch06 as open-questions
- Phase 4a falsifiability gate applies before Phase 4b

## Phase 4c — Cross-Hypothesis Compatibility

### Reinforcement Chains

**Chain 1 — HSP70 Induction Cascade (5 hops):**
```
ATG13 autophagy impairment → WBH reduces LC3-II (ch06:@spec:mitochondrial-reserve-thermoreg)
  → HSP70 mediates mitochondrial protein import (ch06:@spec:autophagy-switch-heat)
  → Improved spare respiratory capacity (ch06:@spec:mitochondrial-reserve-thermoreg)
  → Clinical fatigue reduction (ch14:@spec:controlled-heat-paradox)
  → Treatment-response biomarker (ch20:@spec:wbh-biomarker)
```

**Chain 2 — ET-1 Vasomotor Cascade (3 hops):**
```
ET-1 elevation correlates with skin temperature disruption (@Cambras2023SkinTemperatureEndothelin)
  → Tonic vasoconstriction bias (ch10:@spec:vasomotor-constriction-bias)
  → Explains dual heat+cold intolerance
  → Pharmacological ET-1 antagonism restores vasomotor flexibility (ch18:@spec:bosentan-thermoreg)
```

**Chain 3 — Circadian Thermoregulatory Decoupling (2 hops):**
```
SCN oscillator preserved, peripheral oscillator dysregulated
  → Dual-oscillator phase misalignment (ch09:@spec:dual-oscillator-thermoreg)
  → Sleep temperature optimization re-entrains peripheral oscillator (ch17:@spec:sleep-temp-circadian)
```

### Reinforcement Pairs

| New | Existing | Type | Relationship |
|-----|----------|------|-------------|
| spec:carnitine-bat-cold (0.30) | oq:bat-cold-intolerance | Reinforcement | BAT mechanism for cold intolerance |
| spec:magnesium-glycinate-thermoreg (0.35) | spec:vasomotor-constriction-bias (0.40) | Feed-into | Magnesium antagonizes ET-1 vasoconstriction |
| spec:citrulline-no-vasodilation (0.30) | spec:vasomotor-constriction-bias (0.40) | Feed-into | NO counteracts ET-1 constriction |
| spec:heat-stroke-endotoxin (0.30) | ME/CFS-heat stroke shared pathways (registry 0.55) | Reinforcement | Endotoxin-HSP70 axis as most tractable shared mechanism |
| spec:post-icu-hsp70 (0.25) | spec:hyperthermia-protocol (0.52) | Feed-into | ICU HSP70 repletion protocols inform ME/CFS dosing |
| spec:vasomotor-bistable-model (0.25) | spec:vasomotor-constriction-bias (0.40) | Reinforcement | Formal ODE formalization of same mechanism |
| spec:circadian-ode-thermoreg (0.30) | spec:dual-oscillator-thermoreg (0.40) | Reinforcement | Formal ODE formalization of same mechanism |

### Conflict / Tension

| Pair | Nature | Resolution |
|------|--------|------------|
| HSF1 activates HSP70 AND HSAT2 | Internal tension | spec:heat-hsat2-caution (0.25) vs all HSP70-induction proposals. No resolution framework. Flagged by sophist, devil-advocate. |
| Heat therapy benefit vs HSAT2 harm | Apparent contradiction | Three thermal therapy studies show benefit with zero adverse events. HSAT2 harm is theoretical only. Tension is between evidence and mechanistic hypothesis, not between two bodies of evidence. |
| Cold intolerance mechanisms | Multiple, non-exclusive | BAT failure (ch10), vasoconstriction bias (ch10), TRPM8 dysfunction (cross-disease), SFN (ch10). Not contradictory — all could co-exist. |

### Certainty Adjustments

**None applied in Phase 4c.** Rationale:
- All new environments have certainty 0.20-0.35 — below the feed-into threshold for bumps
- Reinforced existing entries (cert 0.40-0.55) receive reinforcement from lower-certainty sources
- The Evidence Quality Floor (Phase 4b) gates bumps at incoming cert ≥ 0.60 — no new paper meets this
- The cumulative guard (3+ prior bumps) is not triggered by any entry in this cycle

**Flagged for future**: If Hochecker 2025 is independently replicated (n ≥ 50, different lab), spec:mitochondrial-reserve-thermoreg (currently 0.30) could bump to 0.40.

