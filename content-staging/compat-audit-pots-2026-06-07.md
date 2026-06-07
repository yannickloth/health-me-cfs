# Cross-Hypothesis Compatibility Audit: POTS Integration (Phase 4c, Step 1)

**Audit date:** 2026-06-07  
**Source:** Hypothesis registry at `src/main/typst/mecfs/part4-research/hypothesis-registry.typ`  
**New hypotheses audited:**

| ID | Label | Type | Cert | Location |
|----|-------|------|------|----------|
| N1 | Compensatory Tachycardia — HR Reduction as CBF Destabilization | S | 0.50 | `ch10:@spec:compensatory-tachycardia` |
| N2 | Cerebral Blood Flow as Unifying Hub of POTS Symptoms | H | 0.50 | `ch10:@hyp:cbf-unifying-hub` |
| N3 | Central Sensitization in POTS — CNS Amplification Component | S | 0.50 | `ch14d:@spec:pots-central-sensitization` |

---

## Mechanism Terms Extracted

| Hypothesis | Primary mechanism terms |
|------------|----------------------|
| N1 | low SV → compensatory tachycardia → CO → CBF; ivabradine hazard; SV stratification; hypocapnic vasoconstriction |
| N2 | CBF as symptom mediator (not HR); SV→ETCO2→CBF chain; failed autoregulation; structural brain changes; CO2 augmentation |
| N3 | central sensitization (CSI); SFN → aberrant afferent → CNS amplification; brainstem/cortical autonomic nuclei; exaggerated sympathetic response; feed-forward loop |

---

## Pairwise Compatibility Matrix

### N1: Compensatory Tachycardia — HR Reduction as CBF Destabilization (0.50)

| Existing hypothesis | Rel | Cert | Rationale |
|---|---|---|---|
| **N2: CBF as Unifying Hub** (0.50) | R | 0.90 | Identical core premise (tachycardia compensatory, CBF the relevant endpoint); same evidence base (Miranda-Hurtado SV→ETCO2→CBF); N1 focuses on treatment hazard, N2 on paradigm reframing — complementary, not duplicative |
| **Hydrostatic Pressure Augments Orthostatic Reserve** (0.68, S) | F | 0.75 | Hydrostatic pressure → CVP ↑ → preload ↑ → SV ↑ → reduced compensatory drive. N1 identifies the problem (SV-dependent tachycardia); Hydrostatic provides the solution mechanism |
| **Constant Body Position as PEM-Safety Criterion** (0.50, H) | F | 0.70 | Eliminates positional transitions that N1 identifies as driving orthostatic demand. N1 provides physiological mechanism for why constant position helps |
| **Post-Exercise Horizontal Rest Reduces PEM** (0.55, S) | R | 0.70 | Shared mechanism: horizontal posture → SV/CBF recovery. Same principle applied to different clinical settings (procedural vs post-exercise) |
| **Postural Orthostatic Gut Syndrome** (0.40, spec) | F | 0.70 | POGS extends N1's low-SV model to splanchnic hypoperfusion → gut barrier failure. Shared core hemodynamic model (SV→perfusion deficit), different target organs |
| **Structural vs Functional OI Stratification** (0.60, H) | R | 0.65 | Both argue POTS is not unitary; both require mechanism-matched treatment. N1 uses hemodynamic axis (SV), Structural/Functional uses anatomical axis (CCI). Synergistic stratification frameworks |
| **Functional vs Structural OI Distinction** (0.35, spec) | R | 0.60 | Same stratification principle as above, weaker certainty |
| **β2-AAb Drive Sympathovagal Imbalance** (0.50, H) | F | 0.60 | β2-AAb provides autoimmune mechanism for the SV deficit N1 flags. N1's SV measurement recommendation applies especially to autoantibody+ patients |
| **GPCR Autoantibody Autonomic Phenotyping** (0.40, H) | F | 0.55 | Both argue precision POTS management — N1 through SV phenotyping, GPCR through autoantibody profiling |
| **Selective Central NE Deficiency** (0.70, H) | F | 0.60 | Central NE deficiency provides molecular driver for why SV-dependent compensatory mechanisms fail. Parallels N1's hemodynamic mismatch model |
| **Central-Peripheral NE Mismatch** (0.50, S) | F | 0.70 | NE-level analog of N1's hemodynamic-level compensatory model: central deficit → peripheral overactivation |
| **Clonidine Negative RCT** (0.65, S) | R | 0.70 | Parallel logic: suppressing compensation (clonidine → NE; ivabradine → HR) without fixing root cause → ineffective/harmful. Different signaling axes, same principle |

**N1 subtotal:** 12 pairs audited — R: 5, F: 7, C: 0, I: 0

---

### N2: Cerebral Blood Flow as Unifying Hub of POTS Symptoms (0.50)

| Existing hypothesis | Rel | Cert | Rationale |
|---|---|---|---|
| **N1: Compensatory Tachycardia** (0.50) | R | 0.90 | (see above) |
| **Selective Central NE Deficiency** (0.70, H) | F | 0.55 | Central NE deficiency may contribute to impaired cerebrovascular autoregulation that N2 identifies (failure of compensatory cerebral vasodilation) |
| **Central NE Deficiency Impairs Glymphatic Clearance** (0.55, H) | F | 0.50 | Low CSF NE → impaired vasomotion. N2's orthostatic CBF + NE's glymphatic CBF converge on brain consequences of cardiovascular/autonomic dysfunction |
| **Phase Lock Failure: Multi-System Coherence** (0.60, H, com.) | I | 0.40 | Phase lock addresses sleep-related oscillatory coherence; N2 addresses orthostatic CBF. Both involve cerebrovascular regulation but different physiological contexts |
| **Complement-Mediated Glycocalyx Destruction** (0.35, spec) | F | 0.45 | Glycocalyx degradation → impaired NO → endothelial dysfunction → failed CBF autoregulation. Provides molecular substrate for N2's autoregulatory failure finding |
| **HIF-2α for β2AR-Negative Endothelial Dysfunction** (0.55, spec) | F | 0.50 | HIF-2α → endothelial dysfunction → impaired cerebral vasodilation. N2 identifies the CBF consequence; HIF-2α provides molecular driver in autoantibody-negative majority |
| **IgG-Endothelial Injury as Central Vascular Mechanism** (0.35, spec) | I | 0.40 | IgG-mediated endothelial injury at microvascular level; N2 at macrovascular/CBF level. Different scales and mechanisms despite shared endothelial domain |
| **Bradykinin Spillover → RAAS Suppression** (0.50, H) | F | 0.60 | Bradykinin → RAAS suppression → hypovolemia → low SV → CBF reduction. Clear mechanistic chain providing upstream driver for N2's starting state |
| **tVNS for Structural-Autonomic Dysfunction** (0.40, spec) | F | 0.55 | tVNS → enhanced parasympathetic tone → improved CBF regulation. Treatment modality aligned with N2's CBF-centric framework |
| **State-Dependent Endothelial Dysfunction** (0.55, H, com.) | F | 0.60 | State-dependent vasculature (normal at rest, impaired under stress) matches N2's orthostatic failure model (CBF normal supine, impaired upright). Functionally isomorphic |
| **NCX1 Reversal in Cardiac Muscle** (0.35, spec) | I | 0.50 | Myocyte-level ionic mechanism; N2 at hemodynamic/organ level. Different scales |

**N2 subtotal:** 11 pairs audited — R: 1, F: 7, C: 0, I: 3

---

### N3: Central Sensitization in POTS — CNS Amplification Component (0.50)

| Existing hypothesis | Rel | Cert | Rationale |
|---|---|---|---|
| **Central Sensitization as Shared Pain Amplification** (0.70, H, com.) | R | 0.75 | Both posit central sensitization as core mechanism in overlapping conditions. N3 extends from pain (existing) to autonomic afferents in POTS. Same mechanism, different sensory modality |
| **Cross-Modal Sensitization: Decoupling Loop** (0.45, S, com.) | F | 0.60 | Parallel sensitization mechanisms: N3 = SFN → aberrant afferent → amplified output; Cross-Modal = decoupling → microarousals → more decoupling. Different systems, shared self-reinforcing loop structure |
| **N1: Compensatory Tachycardia** (0.50) | F | 0.70 | N3 explains why tachycardia may be *disproportionate* to SV reduction — CNS amplification of the compensatory response. N1 identifies the compensation; N3 explains its exaggeration |
| **N2: CBF as Unifying Hub** (0.50) | F | 0.75 | N3 explicitly states "perceived CBF deficit may exceed actual deficit" — links directly to N2's symptom mediation claim. CNS amplification modulates the CBF→symptom relationship |
| **Central-Peripheral NE Mismatch** (0.50, S) | R | 0.65 | Both describe central/peripheral dissociation: N3 = central amplification + peripheral overactivation; NE Mismatch = central NE deficiency + peripheral NE elevation. Same phenomenon, different explanatory levels |
| **Clonidine Negative RCT** (0.65, S) | R | 0.55 | CNS-amplified sympathetic output would resist peripheral suppression (clonidine). Provides additional mechanism for the null beyond N1's compensation-removal logic |
| **GPCR Autoantibody Autonomic Phenotyping** (0.40, H) | I | 0.50 | Peripheral autoantibody mechanism orthogonal to central amplification. Could co-occur but different mechanistic class |
| **β2-AAb Drive Sympathovagal Imbalance** (0.50, H) | I | 0.50 | Same as above — peripheral molecular, not central sensory |
| **CRPS GPCR Autoantibody Parallel** (0.45, S) | F | 0.50 | CRPS: a condition where GPCR autoantibodies AND central sensitization demonstrably co-exist. Cross-disease existence proof that N3 and GPCR mechanisms are compatible |
| **tVNS for Structural-Autonomic Dysfunction** (0.40, spec) | R | 0.65 | Both independently identify tVNS as treatment for the autonomic-CNS interface. N3 via CSI stratification; tVNS hypothesis via mechanism. Convergent treatment recommendation |
| **Complement-Glycocalyx Destruction in POTS** (0.35, spec) | I | 0.30 | Peripheral vascular mechanism; N3 is CNS mechanism. Different levels entirely |
| **Distinct GPCR Profiles ME/CFS vs PCC** (0.50, H) | I | 0.40 | Peripheral autoantibody profiling orthogonal to central sensitization |

**N3 subtotal:** 12 pairs audited — R: 4, F: 4, C: 0, I: 4

---

## Summary Statistics

| Metric | N1 | N2 | N3 | **Total** |
|--------|----|----|----|-----------|
| Pairs audited | 12 | 11 | 12 | **35** |
| Reinforcement (R) | 5 | 1 | 4 | **10** |
| Feed-into (F) | 7 | 7 | 4 | **18** |
| Conflict (C) | 0 | 0 | 0 | **0** |
| Independent (I) | 0 | 3 | 4 | **7** |

- **Zero conflicts** detected across all 35 pairwise comparisons
- **28/35 (80%) relationships** are positive (R or F) — the three POTS hypotheses are highly compatible with the existing hypothesis ecology
- **7/35 (20%) relationships** classified as independent — orthogonal mechanisms at different scales
- Highest-certainty pairwise relationships: N1↔N2 (R, 0.90), N1↔Hydrostatic (F, 0.75)
- Three POTS hypotheses form an internally coherent triad: N1 identifies the hemodynamic hazard, N2 identifies the central consequence (CBF), N3 identifies the central amplification mechanism that can exaggerate both

---

## Interpretation Notes

1. **No conflicts** is expected — these hypotheses were developed within the same framework and address different aspects of the same pathophysiology (hemodynamic, perfusion, sensory processing)
2. **N1↔N2 relationship** (R, 0.90) is the strongest — they should be treated as two formulations of the same core insight; consideration should be given to consolidating or cross-referencing explicitly
3. **The three POTS hypotheses form a coherent cascade:** Low SV → compensatory tachycardia (N1) → CBF deficits cause symptoms (N2) → CNS amplification may exaggerate the symptomatic response (N3)
4. **Vertical integration** is the key opportunity: N1 anchors hemodynamics, central noradrenergic hypotheses (NE Deficiency, Mismatch, Clonidine) anchor the molecular/autonomic level, and these converge on N2 (CBF) as the shared organ-level endpoint
5. **Independent relationships** (7/35) are concentrated in N2↔cellular/molecular hypotheses (NCX1, IgG-endothelial) and N3↔peripheral autoantibody hypotheses — reflecting genuine scale differences, not incompatibility
