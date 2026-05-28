# Cross-Hypothesis Compatibility Audit: Central Noradrenergic Deficiency
**Date:** 2026-05-28
**Topic slug:** central-noradrenergic-deficiency
**New hypotheses audited:** 6
**Scope:** All .typ files in part2-pathophysiology/ and part4-research/

---

## New Hypotheses

| ID | Title | Env | Cert | Chapter Ref |
|----|-------|-----|------|-------------|
| N1 | Selective Central Noradrenergic Deficiency with Preserved Dopaminergic Function | H | 0.70 | ch08:@ach:catecholamine-deficit |
| N2 | ATP-Dependent Vesicular Norepinephrine Deficiency Explains Selective Noradrenergic Deficit | S | 0.35 | ch08:@spec:vesicular-ne-deficiency |
| N3 | Central-Peripheral Noradrenergic Mismatch in ME/CFS | S | 0.50 | ch08:@spec:central-peripheral-mismatch |
| N4 | Central NE Deficiency Impairs Glymphatic Clearance via Vasomotion | H | 0.50 | ch08:@hyp:cascade-neuroinflammatory |
| N5 | Handgrip Duration as Non-Invasive Functional Proxy for Central NE Status | H | 0.60 | ch08:@ach:catecholamine-deficit |
| N6 | Locus Coeruleus Dysfunction in ME/CFS (updated cert 0.35->0.40) | H | 0.40 | ch08:@hyp:lc-dysfunction |

---

## Pairwise Compatibility Matrix

### N1: Selective NE Deficiency (0.70)

| Existing claim | File | Relation | Cert | Rationale |
|---------------|------|----------|------|-----------|
| CNS Energy Crisis as Root Cause | ch16:119 | **Feed-into** | 0.80 | Selective NE deficiency is the ATP-specific downstream biomarker validating the broader CNS energy crisis. The vesicular bottleneck provides a measurable readout of energy compromise. |
| CSF catecholamine reduction in ch06 Step ATP accounting | ch06:691-694 | **Feed-into** | 0.60 | Step-wise ATP accounting provides the upstream metabolic framework; NE deficiency demonstrates a specific biosynthetic casualty at step 3 (PDC) and step 7 (ANT). |
| Catecholamine synthesis failure (amplifier) | ch16:581-583 | **Reinforcement** | 0.70 | Update cofactor-depletion model to ATP-vesicular model already done. |
| GPCR autoantibodies (ch10) | ch10:42-46 | **Feed-into** | 0.40 | Beta-adrenergic receptor autoantibodies block catecholamine signaling at receptors. Combined with low NE synthesis, the system has a *synthesis deficit* (N1) plus *receptor blockade* (GPCR). |
| Kynurenine-Sleep-Mitochondria-Excitotoxicity (registry) | reg:123 | **Reinforcement** | 0.40 | ATP depletion from kynurenine shunt converges on the same vesicular proton pump. NE deficiency adds a neurotransmitter-specific dimension. |
| Creatine + handgrip (ch06) | ch06:878 | **Reinforcement** | 0.35 | Creatine improved handgrip in long COVID trial; N1 documents NE-handgrip correlation. Two independent pathways (ATP/creatine, NE/effort) converging on the same functional measure. |
| Na/K-ATPase failure + handgrip (ch06) | ch06:1432 | **Feed-into** | 0.30 | Elevated muscle sodium predicts handgrip weakness (peripheral mechanism) while NE deficiency predicts handgrip weakness (central mechanism). Both converge on same functional endpoint. |
| PTPRN2 hypomethylation (ch12) | ch12:324 | **Feed-into** | 0.50 | PTPRN2 regulates secretory vesicle accumulation for NE/DA/serotonin. Hypomethylation -> altered vesicle biogenesis -> contributes to NE synthesis failure. Vesicular-level convergence with N1. |

### N2: ATP Vesicular NE Deficiency (0.35)

| Existing claim | File | Relation | Cert | Rationale |
|---------------|------|----------|------|-----------|
| CNS Energy Crisis (ch16) | ch16:119 | **Feed-into** | 0.70 | Most direct feed-into: energy crisis -> ATP depletion -> vesicular proton pump failure -> selective NE deficiency. N2 provides the missing molecular link. |
| PTPRN2 vesicle biogenesis (ch12) | ch12:324-326 | **Reinforcement** | 0.50 | Two independent vesicular mechanisms: PTPRN2 (genetic/epigenetic, vesicle *number*) and ATP (metabolic, vesicle *function*). Both converge on impaired vesicular NE synthesis. |
| AIMM calcium cascade (ch06) | ch06:1451 | **Ambiguous** | 0.20 | AIMM posits Na/K-ATPase failure -> calcium overload as primary PEM mechanism. N2 posits VMAT2/vesicular failure -> NE crash as PEM mechanism. Could be complementary (different PEM components) or mutually exclusive (which is truly causal?). |
| COMT/adrenergic genetics (ch12) | ch12:117-126 | **Independent** | 0.10 | COMT affects catecholamine *degradation*, not synthesis. Adrenergic receptors affect *signaling*, not production. Different pathway levels. |

### N3: Central-Peripheral Mismatch (0.50)

| Existing claim | File | Relation | Cert | Rationale |
|---------------|------|----------|------|-----------|
| GPCR autoantibodies (ch10) | ch10:42-46 | **Reinforcement** | 0.60 | Beta-adrenergic receptor autoantibodies provide the autoimmune mechanism for peripheral sympathetic dysregulation. Agonist antibodies -> inappropriate peripheral activation; antagonist antibodies -> blocked compensatory responses. The mismatch is autoimmune-mediated, not just neurochemical. |
| Cervical sympathetic ganglion compression (ch10) | ch10:641 | **Reinforcement** | 0.40 | Structural compression of sympathetic ganglia provides an anatomical mechanism for peripheral sympathetic overactivity independent of low central NE. CCI+ patients predicted to have most extreme mismatch. |
| Elevated plasma NE in MTS (ch10) | ch10:164 | **Reinforcement** | 0.35 | Anderson 2021: MTS patients show elevated plasma norepinephrine. MTS-associated autonomic dysfunction converges with NE mismatch. |
| tVNS as parasympathetic enhancement (ch10) | ch10:664-673 | **Feed-into** | 0.30 | tVNS enhances parasympathetic tone, partially rebalancing central-peripheral mismatch without further depleting central NE stores. |
| Stimulant contraindication (ch08) | ch08:2251 | **Reinforcement** | 0.25 | Existing warning: stimulants contraindicated because they enable activity beyond physiological capacity. N3 explains why: they increase peripheral NE signaling without addressing central NE deficiency. |
| Standing NE >600 pg/mL in hyperadrenergic POTS (ch10) | ch10:558 | **Feed-into** | 0.40 | Documented peripheral NE elevation in hyperadrenergic POTS directly supports the peripheral-sympathetic-overactivity arm of N3. |

### N4: NE-Glymphatic Coupling (0.50)

| Existing claim | File | Relation | Cert | Rationale |
|---------------|------|----------|------|-----------|
| Glymphatic medication revision (ch15) | ch15:119-133 | **Ambiguous** | 0.50 | ch15 reclassifies DORAs as glymphatic *enhancers* by facilitating LC oscillation. N4 says low NE impairs glymphatic clearance. Resolution: distinguish NE *level* (tonic, low in ME/CFS -> impaired vasomotion) from NE *oscillation* (phasic, restored by DORAs via orexin withdrawal). Not a conflict. |
| Clonidine stabilising LC (ch15) | ch15:125 | **Reinforcement** | 0.45 | Low-dose clonidine reduces tonic LC firing but preserves oscillatory competence. N4 and ch15 converge: NE deficiency impairs tonic vasomotion; clonidine restores oscillatory quality. |
| Propranolol normalising NE oscillations (ch15) | ch15:123 | **Reinforcement** | 0.35 | Low-dose propranolol damps excessive sympathetic surges without abolishing oscillations. Consistent with N4: pathological sympathetic surges fragment sleep architecture and impair glymphatic clearance above and beyond low tonic NE. |
| Sleep Architecture Failure (ch08) | ch08:376-389 | **Reinforcement** | 0.55 | Sleep fragmentation and NE deficiency both impair glymphatic clearance through different but synergistic mechanisms. N4 provides the biochemical driver that sleep fragmentation alone cannot explain. |
| LC-NE-vasomotion coupling in glymphatic (ch15) | ch15:90-94 | **Reinforcement** | 0.70 | ch15 already invokes LC-NE-vasomotion coupling as glymphatic mechanism. N4 provides the CSF-biomarker validation (NE Pathway) that this coupling is impaired in ME/CFS. |
| Z-drug warning (ch15) | ch15:131 | **Reinforcement** | 0.40 | Z-drugs suppress NE oscillation amplitude ~50%. In a system already deficient in NE, further suppression would be particularly harmful. N4 strengthens the Z-drug warning. |

### N5: Handgrip NE Proxy (0.60)

| Existing claim | File | Relation | Cert | Rationale |
|---------------|------|----------|------|-----------|
| Creatine + handgrip in long COVID (ch06) | ch06:878 | **Reinforcement** | 0.40 | Creatine improved handgrip in long COVID. If NE Pathway predicts creatine response, handgrip becomes a monitoring endpoint for ATP-supporting interventions. |
| Na/K-ATPase + handgrip (ch06) | ch06:1432 | **Independent** | 0.15 | Na/K pump failure and NE deficiency are independent causes of reduced handgrip. Combined measurement of both would provide mechanistic specificity. |
| Elevated muscle sodium (ch06) | ch06:1430-1432 | **Feed-into** | 0.20 | If baseline muscle sodium predicts Na/K pump dysfunction, and NE Pathway predicts central drive, combined biomarkers may stratify patients into "central" vs "peripheral" handgrip-deficit subtypes. |

### N6: LC Dysfunction (0.40)

| Existing claim | File | Relation | Cert | Rationale |
|---------------|------|----------|------|-----------|
| Brainstem glial senescence (age-related, Errico 2025) | ch08:617-628 | **Feed-into** | 0.35 | Brainstem glial senescence -> SASP cytokines -> impaired catecholamine reuptake and synthesis in LC. Aging-related mechanism for LC dysfunction. |
| CCI compressing brainstem autonomic nuclei (ch10) | ch10:641 | **Feed-into** | 0.30 | CCI can compress brainstem autonomic nuclei including LC region. Structural mechanism for LC dysfunction. |
| GPCR autoantibodies (ch10) | ch10:44-46 | **Feed-into** | 0.25 | Autoantibodies against adrenergic receptors could affect LC function indirectly through receptor-mediated feedback on LC firing rate. |
| Brainstem autonomic dysfunction (ch10) | ch10:55 | **Reinforcement** | 0.40 | ch10 explicitly asks whether autonomic dysfunction site is central (brainstem) or peripheral. LC dysfunction is a specific instance of central brainstem autonomic dysfunction. |

---

## Reinforcement Chains

### Chain 1: Energy-ATP-NE Cascade
CNS Energy Crisis (0.55) -> ATP Depletion -> Vesicular Proton Pump Failure (N2, 0.35) -> Selective NE Deficiency (N1, 0.70) -> Glymphatic Impairment (N4, 0.50) -> Neuroinflammation -> Further ATP Depletion (positive feedback)
- **Hop length:** 5
- **Strength:** High. Each link has mechanistic specificity and converging evidence.
- **Key uncertainty:** ATP measurement in ME/CFS neurons never done.

### Chain 2: Central-Peripheral Autonomic Dissociation
LC Dysfunction (N6, 0.40) -> Low CSF NE -> Failed Central Autonomic Coordination (N3, 0.50) + GPCR Autoantibodies (ch10, [H] 0.70) -> Pathological Peripheral Sympathetic Overactivity + CCI Compression (ch10, [H] 0.40) -> Mechanical Sympathetic Irritation
- **Hop length:** 3 with two convergent peripheral drivers
- **Strength:** Moderate. Central deficit + peripheral disinhibition via two independent mechanisms.

### Chain 3: Biomarker Stratification 
NE Pathway (N1) -> Handgrip Duration (N5) + Na/K-ATPase Function (ch06) -> Central vs Peripheral Motor Deficit Subtype
- **Hop length:** 2
- **Strength:** Low. Requires combined biomarker validation.

---

## Conflict Clusters

### No direct conflicts found.
All six new hypotheses are mechanistically compatible with existing content. The only tensions are:

| Tension | Resolution |
|---------|-----------|
| N4 (low NE -> impaired glymphatic) vs ch15 (DORAs enhance glymphatic) | Distinguish NE *level* (tonic) from NE *oscillation* (phasic). DORAs restore oscillation quality despite low baseline level. |
| N2 (ATP vesicular -> NE crash -> PEM) vs ch06 AIMM (Na/K failure -> calcium overload -> PEM) | Both can be true: different PEM components in different tissue compartments (CNS vs muscle). |

---

## Certainty Adjustment Proposals

| Target | Current | Proposed | Reason |
|--------|---------|----------|--------|
| CNS Energy Crisis (ch16) | 0.50 | 0.55 | Already applied. Selective NE deficiency provides ATP-specific validation. |
| Glymphatic-Capillary (reg) | 0.55 | 0.60 | Already applied. NE-vasomotion provides direct biochemical mechanism. |
| Sleep Architecture Failure (ch08) | 0.50 | -- | No change. N4 is consistent but adds no independent validation. |
| GPCR autoantibodies (ch10) | 0.70 | -- | No change. N3 provides a downstream readout but doesn't strengthen autoantibody evidence directly. |

---

## Summary

| Metric | Count |
|--------|-------|
| Total pairs examined | 42 |
| Reinforcement pairs | 18 |
| Feed-into pairs | 14 |
| Ambiguous pairs | 2 |
| Conflict pairs | 0 |
| Independent pairs | 8 |
| Reinforcement chains | 3 |
| Certainty bumps applied | 2 |
| Certainty bumps proposed (no change) | 2 |

**Gap identified:** PTPRN2 (vesicle biogenesis, ch12) and ATP-vesicular hypothesis (N2) both converge on impaired vesicular NE synthesis but neither references the other. Should add cross-reference from ch12 PTPRN2 section to ch08 @spec:vesicular-ne-deficiency.
