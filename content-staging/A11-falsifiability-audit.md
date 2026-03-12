# A11 Audit Report: Hypothesis Falsifiability Assessment

**Audit scope**: All `hypothesis` environments in Part II and Part III
**Date**: 2026-03-04
**Total hypotheses assessed**: ~99
**Status**: REMEDIATED (V5)

## Remediation Summary (V5)

- **Phase 0**: Created `fhypothesis` tcolorbox environment with `{falsifiability}{justification}` args
- **Phase 1**: Reclassified 6 clinical protocols → 4 `directive` + 2 `observation`
- **Phase 2**: Converted 9 ch09-endocrine hypotheses to `fhypothesis` with falsification criteria
- **Phase 3**: Downgraded `hyp:bistable` → `spec:bistable` (speculation)
- **Phase 4**: Converted 17 ch15 hypotheses to `fhypothesis` (4 yes, 13 weakly)
- **Phase 5**: Added 5 `prediction` environments in ch14i
- **Phase 6**: Fixed `hyp:multi-target-intervention` — lowered certainty 0.75→0.55, added prediction + falsifiability
- **Phase 7**: Updated hypothesis registry with FH notation and V5 audit note

---

## Summary Statistics

| Classification | Count | % |
|---|---|---|
| FALSIFIABLE | 28 | 28% |
| WEAKLY FALSIFIABLE | 37 | 37% |
| NOT FALSIFIABLE | 34 | 34% |

---

## Critical Issues (Must Fix)

### 1. Misuse of `hypothesis` environment for clinical protocols (~10 cases)

**Locations**: ch15-medications-systems.tex, ch19-integrative-approaches.tex

**Examples**:
- `hyp:paradoxical-protocol` — medication management protocol
- `hyp:excipient-protocol` — diagnostic protocol
- `hyp:treatment-trial-limits` — clinical stop rules
- `hyp:eds-mcas-mecfs` — prevalence claim
- `hyp:phenotype-treatment-prioritization` — treatment selection tree
- `hyp:compensatory-dm` — typology

**Fix**: Reclassify as `guideline`, `protocol`, `framework`, or `observation` environments.

### 2. Highest-certainty hypothesis is unfalsifiable

**Location**: ch13 `hyp:multi-target-intervention` (certainty: 0.75)
**Problem**: Treatment recommendation framed as hypothesis with no testable prediction.
**Fix**: Downgrade to `recommendation` or add specific prediction.

### 3. Pure metaphor labeled as hypothesis

**Location**: ch14i `hyp:bistable` (certainty: Very Low)
**Problem**: "Energy landscape" is explicitly described as metaphor.
**Fix**: Reclassify as `speculation` (certainty < 0.45 threshold).

---

## Priority Actions

1. **HIGH IMPACT, LOW EFFORT**: Reclassify ~10 clinical protocols from `hypothesis` to appropriate environments
2. **MEDIUM IMPACT, LOW EFFORT**: Add falsification criteria to 9 ch09-endocrine.tex hypotheses (2-3 sentences each)
3. **LOW EFFORT**: Downgrade `hyp:bistable` to `speculation`
4. **MEDIUM IMPACT, MEDIUM EFFORT**: Add "Falsification criterion" paragraphs to 15 WEAKLY FALSIFIABLE hypotheses in ch15 that already have mechanistic content
5. **MEDIUM EFFORT**: Add predictions to 5 prediction-less hypotheses in ch14i
6. **LOW EFFORT**: Lower certainty on `hyp:multi-target-intervention` from 0.75 or add formal prediction

---

## Good Practice Models (Preserve and Replicate)

1. **Gold standard**: `hyp:selective-dysfunction` (ch14j) with 5 paired prediction environments, explicit independence requirement, falsification criterion (rho_s < 0.3), and full statistical designs
2. **Exemplary**: `hyp:ch15-pem-cascade` and `hyp:ch15-ssri-paradox` (ch15) with directional, testable predictions
3. **Good brainstorm**: `hyp:metabolic-runway`, `hyp:ketone-bypass`, `hyp:estrogen-amplifier` (ch14i) with 4 predictions each
4. **Good integrative**: `hyp:circadian-energy-distribution` (ch13) with 6 predictions and null finding integration

---

## Detailed Classification

### FALSIFIABLE (28 hypotheses)

Concentrated in ch14j-selective-dysfunction.tex (11), ch14i-clinical-brainstorm.tex (6), ch15-symptom-producing-mechanisms.tex (4), ch13-integrative-models.tex (3), ch07 (2), ch11 (1), ch18 (1).

### WEAKLY FALSIFIABLE (37 hypotheses)

Concentrated in ch15-symptom-producing-mechanisms.tex (14), ch09-endocrine.tex (9), ch08-neurological.tex (8), ch07 (3), ch13 (3).

**Common pattern**: Describes mechanism coherently with empirical references but lacks specific disconfirmation threshold. Adding 2-3 sentences specifying failure criteria would upgrade most of these.

### NOT FALSIFIABLE (34 hypotheses)

Concentrated in ch19-integrative-approaches.tex (12), ch18-emerging-therapies.tex (8), ch15-medications-systems.tex (6), ch09-endocrine.tex (4), ch14i (3), ch14b (1).

**Most problematic subtypes**:
- Clinical protocols mislabeled as hypotheses (~10)
- Pure explanatory models without predictions (~14)
- Metaphorical frameworks (~2)
- Treatment sequences without success criteria (~8)