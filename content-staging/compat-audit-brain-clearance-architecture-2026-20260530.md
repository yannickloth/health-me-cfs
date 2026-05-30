# Phase 4c: Cross-Hypothesis Compatibility Report

**Topic:** Brain Clearance Architecture 2026
**Date:** 2026-05-30

---

## Pairs Audited

| New Env | Existing Env | Relationship | Cert | Rationale |
|---------|-------------|--------------|------|-----------|
| @spec:ch15-dual-speed-tired-wired | NE Deficiency→Glymphatic (0.50) | Feed-into | 0.50 | NE deficiency = upstream cause; dual-speed specifies which flow component fails |
| @spec:ch15-dual-speed-tired-wired | Selective Central NE Deficit (0.70) | Feed-into | 0.50 | Same — CSF NE deficit → reduced LC oscillation → impaired fast advective flow |
| @spec:ch15-dual-speed-tired-wired | Decoupling as Disease Mech (0.40) | Reinforcement | 0.35 | Both describe decoupling: cross-modal (EEG↔CV) vs intra-glymphatic (advective↔diffusive) |
| @spec:ch15-dual-speed-tired-wired | Phase Lock Failure (0.40) | Reinforcement | 0.35 | Phase-lock loss is upstream; dual-speed specifies downstream glymphatic consequence |
| @spec:ch15-dual-speed-tired-wired | Kynurenine-Sleep-Mito-EAA Loop (0.50) | Feed-into | 0.40 | SWS→glymphatic link refined: which transport component fails determines metabolite clearance |
| @spec:ch15-dual-speed-tired-wired | Orexin→PKA→Tau (0.25) | Reinforcement | 0.25 | Shared upstream node (orexin) with divergent downstream effects; complementary |
| @spec:ch15-pem-clearance-misdirection | PEM as Metabolic Danger Cascade (Medium) | Feed-into | 0.35 | Danger signal cytokines → routing disruption → neuronal protein leakage; additive, not conflicting |
| @spec:ch15-pem-clearance-misdirection | Inflammatory vs Obstructive Failure (0.15) | Reinforcement | 0.15 | Both describe inflammatory rerouting as early-disease clearance failure mode |
| @spec:ch15-dual-speed-tired-wired | DTI-ALPS Caveat (0.35) | Complementary | 0.30 | MR-AIV tissue permeability less CSF-tracer-dependent than DTI-ALPS for diffusive component |
| Glymphatic vicious cycle (Low-Med) | Toscano 2026 MR-AIV (0.75) | Reinforcement | 0.75 | Quantitative velocity framework validates the principle; incoming cert ≥0.70 qualifies for +0.05 bump |

---

## Reinforcement Chains

**Chain 1 (orexin→NE→advective→glymphatic→brain fog):**
Orexin deficiency (@spec:ch15-orexin) → LC-NE oscillatory dysfunction (NE Deficiency→Glymphatic 0.50) → selective fast advective impairment (@spec:ch15-dual-speed-tired-wired) → waste accumulation → microglial activation → neuroinflammation → brain fog. 4-hop chain; each link independently supported.

**Chain 2 (PEM amplification):**
Metabolic danger signals (PEM Cascade, cert Medium) → cytokine surge → clearance routing disruption (@spec:ch15-pem-clearance-misdirection) → neuronal protein bloodstream leakage → peripheral nociceptor activation → systemic PEM symptoms. 5-hop chain; LPS → bloodstream leakage validated (Chayama 2026); PEM → cytokine surge validated; remaining links extrapolated.

---

## Conflict Clusters

**None found.** All existing hypotheses are either reinforced by or feed into the new hypotheses. No mutual exclusivity detected.

---

## Certainty Adjustment Proposals

| Env | Current → Proposed | Reason |
|-----|-------------------|--------|
| @hyp:ch15-glymphatic-vicious-cycle | Low-Medium → Low-Medium (+0.05 shift) | Toscano 2026 (cert 0.75) provides quantitative velocity framework formalizing the previously qualitative glymphatic impairment model. External validation of the general principle (large-scale, different lab, Science Advances). The bump reflects improved mechanistic resolution, not ME/CFS-specific evidence. |

**Adjustments deferred (below quality floor or double-speculative reinforcement):**
- @spec:ch15-dual-speed-tired-wired: no bump — converging reinforcement from hypotheses all <0.30 cert; mutual reinforcement is itself speculative
- @spec:ch15-pem-clearance-misdirection: no bump — single line of evidence (mouse LPS), no ME/CFS data
- @spec:ch15-orexin-pka-tau: no bump — shared orexin node with dual-speed but both speculative; no new independent evidence

---

## Report Summary

- **10 pairs examined**
- **5 reinforcement pairs** (dual-speed↔decoupling, phase-lock, orexin/PKA, inflammatory failure, glymphatic vicious cycle)
- **4 feed-into pairs** (NE deficiency feeds into dual-speed, kynurenine feeds into glymphatic, danger signals feed into PEM misdirection)
- **0 conflict pairs**
- **1 complementary pair** (DTI-ALPS caveat ↔ MR-AIV)
- **1 certainty bump** proposed (glymphatic vicious cycle +0.05 from Toscano 2026 external validation)
- **0 reductions**
- **0 tensions flagged**
