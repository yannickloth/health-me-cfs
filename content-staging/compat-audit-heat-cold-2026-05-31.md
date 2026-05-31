# Cross-Hypothesis Compatibility Audit: Heat/Cold Thermoregulation
**Date:** 2026-05-31
**Topic:** heat-cold-thermoregulation

## New Hypotheses (this cycle)

| ID | Label | Cert |
|----|-------|------|
| H1 | spec:mitochondrial-reserve-thermoreg (ch06) | 0.45 |
| H2 | spec:autophagy-switch-heat (ch06) | 0.40 |
| H3 | spec:dual-oscillator-thermoreg (ch09) | 0.40 |
| H4 | spec:vasomotor-constriction-bias (ch10) | 0.40 |
| H5 | spec:controlled-heat-paradox (ch14) | 0.45 |
| H6 | spec:wbh-biomarker (ch20) | 0.35 |

## Pairwise Relationships with Existing Hypotheses

### Reinforcement

| New | Existing | Relationship | Link |
|-----|----------|-------------|------|
| H1 | ch13: spare respiratory capacity as resilience operationalisation (cert 0.45) | Reinforcement | Same mechanism; H1 provides specific thermoregulation application |
| H2 | ch06:spec:atg13-circulating-damp (cert 0.42) | Feed-into | ATG13 elevation signals impaired autophagy; H2 proposes WBH as a countermeasure |
| H2 | ch06:spec:spermidine-autophagy (cert 0.30) | Reinforcement | Spermidine targets same pathway (autophagy normalization) via pharmacological route; H2 supports mechanism |
| H4 | ch10: SFN vasomotor fiber damage (line 551) | Feed-into | SFN → impaired vasomotor fibers → impaired vasoconstriction response to orthostatic stress; H4 extends this to thermoregulation |
| H5 | ch17:spec:hyperthermia-protocol (cert 0.52) | Reinforcement | Same evidence base (Hochecker); H5 adds clinical context with Soejima |
| H5 | ch17:spec:heat-hsat2-caution (cert 0.25) | Counterpoint | H5 notes benefit; HSAT2 caution notes risk; together form balanced assessment |
| H6 | ch20: composite reserve index (line 1230) | Reinforcement | Both propose mitochondrial reserve-based biomarkers |

### Conflict / Tension

| New | Existing | Nature | Resolution |
|-----|----------|--------|------------|
| H5 | ch17: heat intolerance as contraindication (thermoneutral water) | Apparent tension | Resolved: thermoneutral water concern is about ambient heat during exercise; H5 is about passive heat. Different contexts. |
| H4 | SFN vasomotor fiber function (ch10) | Potential overspecification | H4 attributes vasoconstriction to ET-1; SFN model attributes to fiber loss. Both could be true (multifactorial). No direct conflict. |

### Independent

H3 (dual-oscillator) is in a relatively distinct mechanistic space (circadian biology + thermoregulation) with no overlapping claims in the existing registry. No conflicts or reinforcements identified.

## Reinforcement Chains

```
ATG13 autophagy impairment → autophagy-switch-heat (H2) → mitochondrial reserve recovery (H1) → controlled heat paradox (H5) → wbh-biomarker (H6)
```

This 5-step chain is coherent: autophagy normalization → mitochondrial improvement → clinical benefit → biomarker.

## Certainty Adjustments

_None warranted._ The new speculations are all < 0.45, with no direct ME/CFS validation beyond single pilot studies. No existing hypotheses were strengthened enough by the new evidence to justify a bump. No contradictions lowered any certainties.

## Phase 4b Evidence Floor

| Paper | Incoming cert | Action |
|-------|--------------|--------|
| Hochecker 2025 | 0.55 | Below 0.60 threshold for certainty bumps. Citation insertions only. |
| Stanculescu 2021 | 0.65 | Full adaptation allowed. 1 cross-reference added (ch07 vasoconstrictive). No certainty bumps (narrative review). |
| Cambras 2023 | 0.60 | Full adaptation allowed. Cross-refs added. No bumps (correlational only). |
| Soejima 2015 | 0.50 | Below 0.60. Citation insertions only. |

## Summary

- **7 reinforcement pairs** identified, zero conflicts
- **5-step chain**: autophagy → mitochondrial → clinical → biomarker
- **0 certainty adjustments** (incoming evidence below 0.70 threshold for +0.10 bumps)
- **Phase 4b**: 3 pre-existing claims adapted, 2 Bergemann→Hochecker updates
