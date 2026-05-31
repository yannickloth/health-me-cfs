# Falsifiability Audit: Heat/Cold Thermoregulation Integration
**Date:** 2026-05-31
**Integration Cycle:** Heat/Cold Thermoregulation
**Files Modified:** 8 (6 pathophysiology/treatment/research chapters + 2 clinical symptom sections)

---

## Executive Summary

**N = 10** newly added thermoregulation-related environments audited across 6 files.

| Category | Count |
|----------|-------|
| Fully falsifiable | 7 |
| Weakly falsifiable | 2 |
| Unfalsifiable | 1 |

**Critical finding:** Only 1 environment lacks specific falsifiable predictions. Overall falsifiability compliance = 90%.

---

## Detailed Audit Results

### 1. ch06-energy-metabolism.typ (3 environments)

#### 1.1 `<spec:cold-exposure-mitochondrial>` (Line 2791-2793)
- **Type:** `#speculation`
- **Falsifiability:** **Fully falsifiable**
- **Falsifiable predictions present:** Yes
  - "gradual cold exposure will increase PGC-1α and NRF1 expression in PBMCs"
  - "be tolerated without PEM at slow titration rates"
- **Classification:** Fully falsifiable — specific molecular markers and clinical outcomes specified

#### 1.2 `<spec:mitochondrial-reserve-thermoreg>` (Line 2795-2797)
- **Type:** `#speculation`
- **Falsifiability:** **Fully falsifiable**
- **Falsifiable predictions present:** Yes
  - "baseline spare respiratory capacity correlates with heat tolerance time (r > 0.6) and cold tolerance time (r > 0.5)"
  - "improving reserve via WBH will increase both tolerances"
- **Classification:** Fully falsifiable — quantitative correlation thresholds specified

#### 1.3 `<spec:autophagy-switch-heat>` (Line 2799-2801)
- **Type:** `#speculation`
- **Falsifiability:** **Fully falsifiable**
- **Falsifiable predictions present:** Yes
  - "ME/CFS PBMCs will show elevated selective autophagy markers (Parkin, BNIP3) and reduced bulk autophagy flux (p62 degradation)"
  - "WBH will decrease selective markers and increase bulk flux"
  - "HSP70 knockdown will block the WBH-induced switch"
- **Classification:** Fully falsifiable — specific biomarkers and experimental interventions specified

---

### 2. ch09-endocrine.typ (1 environment)

#### 2.1 `<spec:dual-oscillator-thermoreg>` (Line 615-617)
- **Type:** `#speculation`
- **Falsifiability:** **Fully falsifiable**
- **Falsifiable predictions present:** Yes
  - "ME/CFS patients will show >4-hour phase shift between melatonin rhythm (saliva DLMO) and peripheral skin temperature rhythm minimum"
  - "melatonin administration will not re-entrain skin temperature"
  - "ET-1 modulation (bosentan) will re-synchronize both oscillators"
- **Classification:** Fully falsifiable — specific phase shift threshold and differential drug responses specified

---

### 3. ch10-cardiovascular.typ (1 environment)

#### 3.1 `<spec:vasomotor-constriction-bias>` (Line 1046-1048)
- **Type:** `#speculation`
- **Falsifiability:** **Fully falsifiable**
- **Falsifiable predictions present:** Yes
  - "laser Doppler flowmetry will show baseline cutaneous perfusion 40% lower in ME/CFS than controls"
  - "both heat challenge (43°C) and cold challenge (15°C) will elicit blunted perfusion responses in ME/CFS"
  - "ET-1 receptor antagonism will restore perfusion flexibility"
- **Classification:** Fully falsifiable — specific percentage thresholds and intervention outcomes specified

---

### 4. ch14-symptom-management.typ (1 environment)

#### 4.1 `<spec:controlled-heat-paradox>` (Line 484-492)
- **Type:** `#speculation`
- **Falsifiability:** **Fully falsifiable**
- **Falsifiable predictions present:** Yes
  - "A controlled crossover trial of Waon therapy (15 min, 60°C, 3×/week × 4 weeks) vs. thermoneutral rest in ME/CFS patients (n ≥ 30) will show significant improvement in fatigue (FSS) and mitochondrial respiration (Seahorse) with no increase in PEM incidence vs control"
- **Classification:** Fully falsifiable — specific trial design and outcome measures specified

---

### 5. ch17-lifestyle-interventions.typ (4 environments)

#### 5.1 `<spec:thermoneutral-water>` (Line 992-1011)
- **Type:** `#speculation`
- **Falsifiability:** **Fully falsifiable**
- **Falsifiable predictions present:** Yes
  - "cold water (28°C) will show increased HR and catecholamines; warm water (35°C) will show increased lightheadedness and orthostatic symptoms; thermoneutral (32°C) will show optimal parasympathetic shift and lowest PEM incidence (crossover design, n≥20)"
- **Classification:** Fully falsifiable — specific temperatures, outcomes, and trial design specified

#### 5.2 `<spec:ch17-thermal-trpm3>` (Line 2016-2026)
- **Type:** `#speculation`
- **Falsifiability:** **Fully falsifiable**
- **Falsifiable predictions present:** Yes
  - "Brief warm water immersion at 38°C for 5 minutes should produce measurable increase in NK cell Ca²⁺ flux compared to thermoneutral control (34°C) in ME/CFS patients with documented TRPM3 dysfunction"
  - "regular mild thermal exposure (3x/week, 10 min, 38°C) should improve TRPM3 function measurements over 8 weeks"
- **Classification:** Fully falsifiable — specific protocol, biomarkers, and time course specified

#### 5.3 `<spec:ch17-cold-trpm8>` (Line 2052-2062)
- **Type:** `#speculation`
- **Falsifiability:** **Weakly falsifiable**
- **Falsifiable predictions present:** Yes
  - "Brief cold water hand immersion (10°C, 2 minutes) in ME/CFS patients with documented TRPM3 dysfunction should produce measurable serum norepinephrine increase (cold-TRPM8-mediated) of similar magnitude to healthy controls"
- **Classification:** Weakly falsifiable — assumes TRPM3 dysfunction can be documented (how?), but prediction is testable once that assumption is met

#### 5.4 `<spec:heat-gaba-mecfs>` (Line 2069-2079)
- **Type:** `#speculation`
- **Falsifiability:** **Fully falsifiable**
- **Falsifiable predictions present:** Yes
  - "A tolerated tepid bath protocol (15 min, 38°C, 3×/week for 8 weeks) will improve PSQI sleep scores in heat-tolerant mild-to-moderate ME/CFS without triggering PEM by actigraphy within 48 hours of sessions"
- **Classification:** Fully falsifiable — specific protocol, outcome measure, and monitoring method specified

---

### 6. ch20-biomarker-research.typ (1 environment)

#### 6.1 `<spec:wbh-biomarker>` (Line 1267-1269)
- **Type:** `#speculation`
- **Falsifiability:** **Unfalsifiable**
- **Falsifiable predictions present:** Partially
  - "the delta-spare capacity after WBH will not correlate with objective improvement in heat tolerance"
- **Classification:** **Unfalsifiable** — only states what would falsify it, not what specific observation would confirm it. Lacks explicit "if X, then Y" prediction for confirmation. States "Falsifiable: the delta-spare capacity... will not correlate..." but provides no positive prediction.

---

## Summary Table

| ID | File | Environment | Type | Falsifiability | Issue |
|----|------|-------------|------|----------------|-------|
| 1 | ch06 | `<spec:cold-exposure-mitochondrial>` | Speculation | ✓ Fully | None |
| 2 | ch06 | `<spec:mitochondrial-reserve-thermoreg>` | Speculation | ✓ Fully | None |
| 3 | ch06 | `<spec:autophagy-switch-heat>` | Speculation | ✓ Fully | None |
| 4 | ch09 | `<spec:dual-oscillator-thermoreg>` | Speculation | ✓ Fully | None |
| 5 | ch10 | `<spec:vasomotor-constriction-bias>` | Speculation | ✓ Fully | None |
| 6 | ch14 | `<spec:controlled-heat-paradox>` | Speculation | ✓ Fully | None |
| 7 | ch17 | `<spec:thermoneutral-water>` | Speculation | ✓ Fully | None |
| 8 | ch17 | `<spec:ch17-thermal-trpm3>` | Speculation | ✓ Fully | None |
| 9 | ch17 | `<spec:ch17-cold-trpm8>` | Speculation | ⚠ Weakly | Assumes TRPM3 dysfunction documentation unspecified |
| 10 | ch20 | `<spec:wbh-biomarker>` | Speculation | ✗ Unfalsifiable | Only negative prediction stated |

---

## Recommended Actions

### Priority 1: Unfalsifiable Environment (1 case)

**10. `<spec:wbh-biomarker>` (ch20:1267-1269)**
- **Current issue:** Only states falsification condition ("delta-spare capacity will not correlate"), provides no positive prediction
- **Proposed fix:** Add explicit falsifiable prediction: "The delta-spare capacity after WBH will correlate positively (r > 0.5) with improvement in thermoneutral comfort window width and controlled environmental heat challenge time"
- **Action:** Rewrite prediction section to include both confirmation and refutation conditions

### Priority 2: Weakly Falsifiable Environment (1 case)

**9. `<spec:ch17-cold-trpm8>` (ch17:2052-2062)**
- **Current issue:** Prediction assumes patients have "documented TRPM3 dysfunction" without specifying how to document it
- **Proposed fix:** Either:
  - Add specification: "TRPM3 dysfunction documented via reduced Ca²⁺ flux in NK cells after 38°C water immersion"
  - Or modify prediction: "Patients stratified by NK Ca²⁺ flux response to 38°C exposure (responders vs non-responders) will show differential NE response to 10°C cold exposure"
- **Action:** Clarify documentation method for TRPM3 dysfunction or reformulate prediction

---

## Conclusion

The heat/cold thermoregulation integration demonstrates **strong falsifiability compliance (90%)**, with only one environment requiring revision. The integration successfully added testable predictions across:
- Molecular mechanisms (PGC-1α, NRF1, selective/bulk autophagy)
- Physiological measurements (laser Doppler flowmetry, cutaneous perfusion)
- Clinical outcomes (FSS scores, PEM incidence, PSQI sleep scores)
- Trial designs (crossover, n≥20, specific protocols)

**Overall assessment:** High scientific rigor with minor fixes needed for complete compliance.