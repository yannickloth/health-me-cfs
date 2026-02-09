# Pediatric Integration Topics: Stream 1 Quality Audit

**Date:** 2026-02-09
**Scope:** 10 placeholder topics from INTEGRATION-POINTS.md
**Standard:** Stream 1 quality bar (cited claims, explicit certainty, testable predictions, limitations, proper environments)

---

## Universal Finding

**9 of 10 topics missing explicit numeric `\textbf{Certainty: X.XX}` with reasoning.** This is the most common gap.

---

## Per-Topic Audit

### 1. severity-stratified-care (ch14b:42-140) — GAP: HIGH

| Criterion | Status | Notes |
|-----------|--------|-------|
| Claims cited | PASS | Carruthers2011ICC, vanCampen2020severity |
| Certainty | FAIL | No numeric certainty for stratification approach |
| Testable predictions | N/A | Clinical pathway, not hypothesis |
| Severity stratification | PARTIAL | 3 tiers; missing Very Severe (0-25%) |
| Limitations | PARTIAL | Implicit in "realistic expectations" only |
| Safety caveats | PARTIAL | Conservative approach implicit |
| Cross-references | PASS | Energy envelope, symptom management, septad |
| Environment | PASS | keypoint |
| Style | PASS | Natural prose |

**Gaps to fill:**
- Add Very Severe Pathway (0-25% functional capacity)
- Add triage decision criteria table
- Add monitoring frequency guidance per tier

### 2. hrv-guided-activity (ch14b:625-668) — GAP: MINIMAL

| Criterion | Status | Notes |
|-----------|--------|-------|
| Claims cited | PASS | Plews2013, Addleman2024, Meeusen2013, Escorihuela2020, Li2023 |
| Certainty | FAIL | Evidence Status paragraph exists but no numeric value |
| Testable predictions | N/A | Protocol |
| Limitations | PASS | Individual variation, personalization needed |
| Safety caveats | PARTIAL | Brief mention |
| Cross-references | PASS | Proposed-studies, HRV-pacing-rct |
| Environment | PASS | protocol |
| Style | PASS | Natural |

**Gaps to fill:** Add explicit certainty line to Evidence Status paragraph.

### 3. sports-medicine-pacing (ch14b:670-818) — GAP: LOW

All 6 integration guide sections present:
1. Deload principles (720-756) ✅
2. RHR monitoring (788-816) ✅
3. Subjective recovery scales (828+) ✅
4. Practical implementation (686-700) ✅
5. GET distinction (710-717) ✅
6. Evidence status (throughout) ✅

| Criterion | Status | Notes |
|-----------|--------|-------|
| Claims cited | PASS | Bell2023deload, Meeusen2013overtraining |
| Certainty | FAIL | No numeric certainty |
| Limitations | PASS | Cautions present, experimental status |
| Safety | PASS | Warning environment present |
| Style | PASS | Natural |

**Gaps to fill:** Add explicit overall certainty line.

### 4. front-loading-strategy (ch14b:1690-1886+) — GAP: LOW

All 4 integration guide gaps filled:
1. Conservative contrast (1706-1729) ✅
2. Methodological trade-offs (1806-1831) ✅
3. Taper protocol (1833+) ✅
4. Contraindications (within warning) ✅

| Criterion | Status | Notes |
|-----------|--------|-------|
| Claims cited | PASS | Recovery Capital, Cairns2005Prognosis |
| Certainty | PARTIAL | "hypothesis-driven" stated, no numeric value |
| Limitations | PASS | Comprehensive in warning |
| Safety | PASS | Warning environment |
| Cross-refs | PASS | Recovery Capital, proposed studies |
| Style | PASS | Natural |

**Gaps to fill:** Add explicit numeric certainty line.

### 5. acute-onset-protocol (ch14b:2038-2260) — GAP: LOW

| Criterion | Status | Notes |
|-----------|--------|-------|
| Claims cited | PASS | CastroMarrero2022/2021, DiPierro2024CoQ10 |
| Certainty | PARTIAL | "CRITICAL CAVEAT" present, no numeric value |
| Testable predictions | N/A | Protocol |
| Severity stratification | PASS | Eligibility criteria |
| Limitations | PASS | Explicit CRITICAL CAVEAT |
| Safety | PASS | Warning environment with contraindications |
| Cross-refs | PASS | Multiple cross-refs |
| Environments | PASS | achievement + protocol + recommendation + warning |
| Style | PASS | Natural |

**Gaps to fill:** Add explicit numeric certainty line.

### 6. ebv-adolescence (ch07:617-656) — GAP: LOW

| Criterion | Status | Notes |
|-----------|--------|-------|
| Claims cited | PASS | ScanJImmunol2025EBV, FrontImmunol2024EBV |
| Certainty | FAIL | No numeric certainty |
| Testable predictions | PARTIAL | "Research directions" (4 items) but not formal predictions |
| Limitations | PASS | Explicit paragraph |
| Cross-refs | PASS | sec:autoantibodies, hyp:immune-pruning, sec:pediatric-adult-study |
| Environment | PASS | hypothesis |
| Style | PASS | Natural |

**Gaps to fill:** Add explicit certainty. Reframe research directions with formal prediction structure.

### 7. immune-memory-pruning (ch07:975-1027) — GAP: LOW

| Criterion | Status | Notes |
|-----------|--------|-------|
| Claims cited | PASS | JExpMed2024bcell, FrontImmunol2024thymic |
| Certainty | FAIL | No numeric certainty |
| Testable predictions | PASS | 5 falsifiable predictions, excellent quality |
| Limitations | PASS | Explicit paragraph |
| Cross-refs | PASS | Referenced by ebv-adolescence hypothesis |
| Environment | PASS | hypothesis |
| Style | PASS | Natural |

**Gaps to fill:** Add explicit numeric certainty.

### 8. glial-maturation (ch08:287-382 + 533-586) — GAP: MEDIUM

**CRITICAL: DUPLICATE ENVIRONMENTS**
- Lines 287-382: `hypothesis` — 95 lines, comprehensive (6 citations, 5 predictions, 4 treatments, integration + limitations + research)
- Lines 533-586: `speculation` — 53 lines, condensed (unique: Paolicelli2011 50% synapse stat, complement maturation detail)

| Criterion | Status | Notes |
|-----------|--------|-------|
| Claims cited | PASS | 9 citations total across both |
| Certainty | FAIL | Neither has numeric certainty |
| Testable predictions | PASS | Both have predictions |
| Limitations | PASS | Both have limitations |
| Cross-refs | PASS | hyp:immune-memory-pruning, spec:recovery-capital, sec:pediatric-adult-study |
| Environment | FAIL | Duplicate: hypothesis AND speculation for same topic |
| Style | PASS | Natural |

**Gaps to fill:** Consolidate into single environment (keep hypothesis as primary, merge unique speculation content). Add certainty. Update all cross-refs.

### 9. hsc-exhaustion (ch13:493-566) — GAP: LOW

| Criterion | Status | Notes |
|-----------|--------|-------|
| Claims cited | PASS | 4 recent citations (2020-2025) |
| Certainty | FAIL | No numeric certainty |
| Testable predictions | PARTIAL | Biomarker development section (5 items) implicit |
| Limitations | PASS | Explicit paragraph |
| Severity stratification | PASS | Pediatric vs adult |
| Cross-refs | PASS | Recovery Capital, epigenetic aging |
| Environment | PASS | speculation |
| Style | PASS | Natural |

**Gaps to fill:** Add explicit numeric certainty. Formalize testable predictions.

### 10. oi-lynchpin (ch13:701-711) — GAP: HIGH

| Criterion | Status | Notes |
|-----------|--------|-------|
| Claims cited | PARTIAL | Only Rowe2017pediatric |
| Certainty | FAIL | No certainty |
| Testable predictions | FAIL | None |
| Severity stratification | N/A | |
| Limitations | FAIL | None |
| Cross-refs | PASS | Front-loading, proposed studies |
| Environment | PASS | keypoint |
| Style | PASS | Natural |

**Gaps to fill:** Major expansion needed (~150 → 400-600 words). Add citations, certainty, testable predictions, limitations.

---

## Priority Matrix

| Priority | Topic | Gaps | Effort |
|----------|-------|------|--------|
| 1 | oi-lynchpin | Expand: citations, certainty, predictions, limitations | HIGH |
| 2 | severity-stratified-care | Add Very Severe tier, triage criteria | HIGH |
| 3 | glial-maturation | Consolidate duplicates, add certainty | MEDIUM |
| 4 | hsc-exhaustion | Formalize predictions, add certainty | LOW |
| 5 | ebv-adolescence | Add certainty, reframe research directions | LOW |
| 6-10 | All remaining | Add explicit numeric certainty line | MINIMAL |
