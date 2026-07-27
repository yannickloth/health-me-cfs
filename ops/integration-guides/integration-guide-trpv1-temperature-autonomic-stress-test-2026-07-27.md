# Integration Guide: TRPV1-Temperature Axis as Autonomic Stress Test

**Topic slug:** trpv1-temperature-autonomic-stress-test
**Date:** 2026-07-27
**Phase 1 agent:** literature-integrator (main session execution)
**Bib files modified:** ion-channels-lithium.bib, autonomic-cardiovascular.bib, exercise-pem.bib, long-covid.bib, neuroinflammation.bib, general.bib

---

## Bib Keys Produced (VERIFIED via awk from bib files — not transcribed from memory)

```
Sarvaiya2016TRPV1CFS
DeBecker1998coldpressorCFS
Larson2023TRPV1bezoldjarisch
Williams1996circadianCFS
Mancini2026CPETrecoveryNull
Nelson2021HRVrecoveryMECFS
Oosterwijck2017autonomicPEM
Ruijgt2026wearableHRVLongCOVID
Theoharides2018stressInflammationSP
Theoharides2018tetramethoxyluteolinMECFS
Cherneva2025autonomicDysfunctionPCS
Kouyoumdjian2025LCvsMECFSthermoreg
Evengard1998substancePCFS
```

## Already-in-Bib Keys Referenced

```
Light2009               (immune.bib — TRPV1 gene expression post-exercise)
VanCampenEtAl2021        (autonomic-cardiovascular.bib — CBF recovery post-tilt)
Wyller2007thermoregCFS   (genetics-epigenetics.bib — thermoregulatory catecholamine dysfunction)
Soejima2015WaonTherapyCFS (treatments.bib — Waon/sauna safety in CFS)
Baraniuk2022ThermoregulationMECFS (sleep.bib — midbrain thermoregulation nuclei in PEM)
```

---

## Recommended Integration Chapters

### Primary: ch08 (TRPV1 Ion Channels — ambroxol-TRPV1 content)
**File:** `src/main/typst/mecfs/part2-pathophysiology/ch08-trpv1-ion-channels.typ`
**New subsection:** `=== TRPV1-Thermal-Autonomic Axis as Stress Test`
**Environment types:** `#hypothesis-box` (discounted cert ≥0.45 from multiple converging lines), `#fhypothesis`
**Key evidence:**
- Light2009: TRPV1 gene expression increases post-exercise in CFS
- Larson2023: Capsaicin→TRPV1 evokes dual-phase autonomic response (vagal bradycardia → sympathetic tachycardia)
- Sarvaiya2016: TRPV1 modulation affects HPA axis and oxidative stress in CFS-like model
- Hefner2025AmbroxolTRPV1 (already in bib): ambroxol blocks TRPV1

### Primary: ch10/ch11 (Cardiovascular / Autonomic Dysfunction)
**File:** `src/main/typst/mecfs/part2-pathophysiology/ch10-cardiovascular-autonomic.typ` or `ch11-autonomic`
**New subsection:** `=== Post-Thermal Autonomic Recovery as Diagnostic Challenge`
**Environment types:** `#hypothesis-box`, `#open-question`
**Key evidence:**
- DeBecker1998: Cold pressor reveals sympathetic overactivity in CFS
- VanCampenEtAl2021: CBF recovery delayed post-tilt, severity-graded
- Nelson2021: HR recovery impaired after exercise in ME/CFS
- Ruijgt2026: 24h HRV suppression post-exercise in Long COVID, predicts PEM
- Oosterwijck2017: Parasympathetic reactivation failure → impaired exercise-induced analgesia

### Primary: ch15 (Integrative Models — PEM Threshold)
**File:** `src/main/typst/mecfs/part2-pathophysiology/ch15-integrative-models.typ`
**New subsection:** `=== Thermal Recovery Time as PEM Threshold Predictor`
**Environment types:** `#speculation` (direct evidence is from Long COVID; ME/CFS extrapolation)
**Key evidence:**
- Mancini2026: 2-day CPET fails to replicate — need for alternative PEM threshold tests
- Ruijgt2026: HRV monitoring above VT1 predicts PEM
- Cherneva2025: Chronotropic insufficiency and abnormal HRR predict reduced exercise capacity

### Secondary: ch18 (Symptom-Producing Mechanisms — PEM)
**File:** `src/main/typst/mecfs/part2-pathophysiology/ch18-symptom-producing-mechanisms.typ`
**Integration:** reference the thermal-autonomic-PEM mechanism as a testable PEM model
**Key evidence:**
- Oosterwijck2017: Autonomic dysfunction mediates PEM

### Competing mechanism: ch02 (Clinical Features — thermoregulation symptoms)
**File:** `src/main/typst/mecfs/part1-clinical/ch02-clinical-features.typ`
**Integration:** reference Williams1996circadianCFS as competing/alternative explanation for thermal intolerance

---

## Falsifiability Framework

| Hypothesis | Falsifiable Prediction | Method | Null Outcome |
|-----------|----------------------|--------|-------------|
| Post-thermal autonomic recovery prolonged in ME/CFS | HRV returns to baseline within X min in HC, >2X min in CFS | Sauna 60°C × 15 min → HRV monitoring × 60 min | No group difference in recovery time |
| Recovery time correlates with PEM threshold | Longer thermal HRV recovery predicts lower daily activity tolerance | Wearable HRV + actigraphy over 14 days | No correlation |
| TRPV1 mediates thermal→autonomic response | Ambroxol (TRPV1 antagonist) blunts thermal HRV response | Pre/post ambroxol, thermal challenge with HRV | Ambroxol does not alter thermal HRV response |

---

## Population-Relevance-Weighted Certainty Summary

| Paper | Raw Cert | Population | Weight | Discounted Cert |
|-------|----------|-----------|--------|----------------|
| Mancini2026CPETrecoveryNull | 0.70 | ME/CFS | 1.00 | 0.70 |
| Ruijgt2026wearableHRVLongCOVID | 0.65 | Long COVID | 0.85 | 0.55 |
| Nelson2021HRVrecoveryMECFS | 0.55 | ME/CFS | 1.00 | 0.55 |
| DeBecker1998coldpressorCFS | 0.55 | ME/CFS | 1.00 | 0.55 |
| Evengard1998substancePCFS | 0.65 | ME/CFS | 1.00 | 0.65 |
| Cherneva2025autonomicDysfunctionPCS | 0.60 | Long COVID | 0.85 | 0.51 |
| Oosterwijck2017autonomicPEM | 0.50 | ME/CFS | 1.00 | 0.50 |
| Williams1996circadianCFS | 0.45 | ME/CFS | 1.00 | 0.45 |
| Kouyoumdjian2025LCvsMECFSthermoreg | 0.50 | Long COVID | 0.85 | 0.43 |
| Theoharides2018tetramethoxyluteolinMECFS | 0.40 | General | 0.75 | 0.30 |
| Larson2023TRPV1bezoldjarisch | 0.55 | Animal | 0.50 | 0.28 |
| Theoharides2018stressInflammationSP | 0.35 | General | 0.75 | 0.26 |
| Sarvaiya2016TRPV1CFS | 0.40 | Animal | 0.50 | 0.20 |

**Strongest discounted paper:** Mancini2026 (0.70) — high-quality null result that motivates the need for alternative PEM threshold tests.
**Most directly supportive:** Ruijgt2026 (0.55, Long COVID) + Nelson2021 (0.55, ME/CFS) — both show autonomic recovery impairment predicts PEM/overexertion.
**Best mechanistic bridge:** Larson2023 (0.28, animal) — capsacin→TRPV1→dual-phase autonomic response.
