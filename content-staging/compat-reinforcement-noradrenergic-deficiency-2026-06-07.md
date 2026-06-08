# Compatibility & Reinforcement Analysis: Noradrenergic Deficiency — Phase 4 Extensions

**Date:** 2026-06-07
**Source:** `brainstorm-noradrenergic-deficiency-2026-06-07.md` (25 ideas)
**Previous audit:** `compat-audit-central-noradrenergic-deficiency-2026-05-28.md` (6 hypotheses N1–N6)
**Scope:** All 25 Phase 4 brainstorm ideas cross-referenced with existing N1–N6 and paper claims

---

## 1. Feed-Into Chains

Each chain flows upstream→downstream. Conditions for certainty bumps (Rule 2): upstream cert ≥ 0.50 AND link cert ≥ 0.50.

### Chain A: Energy → P2X7 → Calcium → NE Release Collapse
```
CNS Energy Crisis (ch16, 0.55) → ATP Depletion → P2X7 Gating Failure (H1, 0.25)
    → Impaired Ca²⁺ Influx → Reduced Vesicle Fusion → NE Release Collapse
    → Branches to: Neuroinflammation (microglial P2X7 → IL-1β → further LC dysfunction)
```
- **Upstream:** CNS Energy Crisis (0.55 ≥ 0.50 ✓)
- **Link:** ATP >1 mM at P2X7 binding site biochemically established; P2X7-KO reduces NE release (Miranda-Morales 2019) → link cert ≈ 0.70 ≥ 0.50 ✓
- **Bump applicable:** +0.05 to H1
- **But:** H1 (0.25) < 0.30 → Rule 3 (speculative pair) blocks the convergence bump from H3, but feed-into rules (Rule 2) operate independently. However Rule 2 requires H cert ≥ 0.50, not the upstream cert. H1 = 0.25. Rule 2 says "upstream H cert ≥ 0.50" which is the CNS Energy Crisis (0.55), not H1. The bump goes to the downstream H (H1). Re-reading: "Feed-into: upstream H cert ≥ 0.50, downstream H's plausibility depends on link → +0.05 to downstream H (link cert ≥ 0.50)." No requirement that downstream H be ≥ 0.50. So +0.05 to H1 is applicable.
- **Bump withdrawn on re-read:** Rule 3 says "Reinforcement between two speculative (< 0.30) → no bump" — this talks about reinforcement (Rule 1), not feed-into (Rule 2). Feed-into is different. So H1 can get a feed-into bump even though it's < 0.30.
- **Verdict:** +0.05 to H1 → 0.30

### Chain B: NE Deficiency → Circadian Oscillation Collapse
```
N1 Selective NE Deficiency (0.70) → Loss of Diurnal LC Patterning (H4, 0.30)
```
- **Upstream:** N1 (0.70 ≥ 0.50 ✓)
- **Link:** NE drives circadian LC patterning (Hauglund 2025, Zhu 2025); low NE → flattened amplitude — plausible but no direct CSF circadian data in ME/CFS → link cert ≈ 0.40 < 0.50
- **Verdict:** No bump

### Chain C: DBH Polymorphism → Droxidopa Indication
```
H8 DBH rs1611115 (0.20) → Genetic DBH deficiency → Droxidopa bypass especially indicated (T2, 0.30)
```
- **Upstream:** H8 (0.20 < 0.50)
- **Verdict:** No bump

### Chain D: TRPM3 Channelopathy → Pregnenolone Sulfate
```
H3 TRPM3 Two-Hit (0.20) → TRPM3 dysfunction → Pregnenolone sulfate target (T4, 0.15)
```
- **Upstream:** H3 (0.20 < 0.50)
- **Verdict:** No bump

### Chain E: NE Deficiency → Impaired Descending Analgesia
```
N1 Selective NE Deficiency (0.70) → Reduced LC→Spinal NE → Impaired α2-AR Nociceptive Inhibition → Pain Amplification (H6, 0.35)
```
- **Upstream:** N1 (0.70 ≥ 0.50 ✓)
- **Link:** NE descending analgesia well-documented (α2-AR in spinal cord, Julien 2005, Arnold 2004). NE→pain link mechanistically specific and replicated → link cert ≈ 0.75 ≥ 0.50 ✓
- **Verdict:** +0.05 to H6 → 0.40

### Chain F: NE Deficiency → POTS Bidirectional
```
N1 NE Deficiency (0.70) → Impaired Baroreflex at NTS → Disinhibited Peripheral Sympathetic → POTS (H7, 0.15)
```
- **Upstream:** N1 (0.70 ≥ 0.50 ✓)
- **Link:** Causal direction speculative; NRIs in POTS could worsen; no direct baroreflex data in ME/CFS → link cert ≈ 0.25 < 0.50
- **Verdict:** No bump

### Chain G: Central-Peripheral Mismatch → POTS Causal Reversal
```
N3 Central-Peripheral Mismatch (0.50) → Describes dissociation → H7 (0.15) adds causal direction
```
- **Upstream:** N3 (0.50 ≥ 0.50 ✓)
- **Link:** Same as chain F — no independent data for causal direction → link cert ≈ 0.25 < 0.50
- **Verdict:** No bump

### Chain H: Droxidopa Monotherapy → Dual Combination
```
T2 Droxidopa (0.30) → Establishes safety/effiacy basis → T5 L-DOPS + Atomoxetine (0.15)
```
- **Upstream:** T2 (0.30 < 0.50)
- **Verdict:** No bump

### Chain I: Guanfacine Selectivity → Guanfacine + Atomoxetine
```
T1 Guanfacine α2A (0.35) → Mechanism basis → T3 Atomoxetine + Guanfacine Combo (0.30)
```
- **Upstream:** T1 (0.35 < 0.50)
- **Verdict:** No bump

### Chain J: Existing NE-Glymphatic → Circadian Collapse
```
N4 NE-Glymphatic Coupling (0.50) → NE oscillation drives vasomotion → H4 Circadian Collapse (0.30)
```
- **Upstream:** N4 (0.50 ≥ 0.50 ✓)
- **Link:** Hauglund 2025 directly shows NE oscillation drives vasomotion. Link from low NE to flattened circadian amplitude is logical but CSF circadian sampling never done in ME/CFS → link cert ≈ 0.40 < 0.50
- **Verdict:** No bump

---

## 2. Reinforcement Clusters (Convergent)

### Cluster 1: Calcium-Mediated Exocytosis Failure
| Hypothesis | Cert | Mechanism | 
|-----------|------|-----------|
| H1 P2X7-ATP-Ca | 0.25 | ATP shortage → impaired P2X7 Ca²⁺ gating → reduced NE release |
| H3 TRPM3 Two-Hit | 0.20 | TRPM3 dysfunction → impaired Ca²⁺ influx → defective vesicle fusion |
| **Endpoint** | | Activity-dependent NE release per action potential reduced |

- Both converge on Ca²⁺ entry → exocytosis failure
- Independent mechanisms: P2X7 (purinergic ligand-gated) vs TRPM3 (thermosensitive TRP)
- Both < 0.30 → Rule 3 blocks convergence bump

### Cluster 2: Vesicular NE Synthesis Bottleneck
| Hypothesis | Cert | Mechanism |
|-----------|------|-----------|
| N2 ATP-Vesicular (audit) | 0.35 | ATP shortage → VMAT2 proton pump → underfilled vesicles |
| H2 PTPRN2 Structural | 0.25 | PTPRN2 hypomethylation → reduced vesicle number |
| H8 DBH Polymorphism | 0.20 | rs1611115 T allele → reduced DBH activity |
| T2 Droxidopa Bypass | 0.30 | Skips DBH + VMAT2 entirely |
| **Endpoint** | | Amount of NE available for release is reduced |

- H2 (0.25) + N2 (0.35): independent (epigenetic/genetic vs metabolic), N2 ≥ 0.30 → Rule 3 does not block
- **Convergence bump:** +0.05 to H2 → 0.30

### Cluster 3: Therapeutic NE Augmentation Strategies
| Hypothesis | Cert | Mechanism | Target |
|-----------|------|-----------|--------|
| T1 Guanfacine | 0.35 | Postsynaptic α2A agonism (PFC) | Receptor sensitivity |
| T2 Droxidopa | 0.30 | DBH bypass → more NE synthesis | Synthesis |
| T3 Atomox+Guanfacine | 0.30 | Reuptake block + α2A agonism | Dual |
| T5 L-DOPS+Atomox | 0.15 | Synthesis + dwell extension | Dual aggressive |
| **Endpoint** | | Increased NE signaling efficacy | |

- All ≥ 0.30 except T5 (0.15)
- No convergence bumps: these are different strategies for the same goal, not independent lines converging on the same mechanism

### Cluster 4: Biomarkers for NE Function
| Hypothesis | Cert | Type |
|-----------|------|------|
| B1 CSF/Plasma NE Ratio | 0.40 | Biochemical index |
| B2 Pupillometry | 0.35 | Functional LC readout |
| B3 Urinary VMA/HVA | 0.25 | Peripheral metabolite |
| B4 Exosome VMAT2/DBH | 0.20 | Molecular vesicular |
| N5 Handgrip (audit) | 0.60 | Functional proxy |
| **Endpoint** | | Non-invasive NE assessment |

- B1 (0.40) + N5 (0.60): independent (biochemical vs functional), both ≥ 0.30 ✓
- **Convergence bump:** +0.05 to B1 → 0.45
- B2 (0.35) + B4 (0.20): B4 < 0.30 → Rule 3 blocks

### Cluster 5: Downstream Multi-System NE Deficiency Consequences
| Hypothesis | Cert | Consequence |
|-----------|------|-------------|
| H4 Circadian Collapse | 0.30 | Loss of diurnal LC-NE patterning |
| H5 Splenic-Immune Axis | 0.20 | Altered NE-mediated immune regulation |
| H6 Pain Bridge | 0.35 | Impaired descending analgesia |
| H7 POTS Bidirectional | 0.15 | Disinhibited peripheral sympathetic |
| N4 Glymphatic (audit) | 0.50 | Impaired NE-vasomotion clearance |
| **Endpoint** | | PEM, brain fog, pain, immune dysregulation, unrefreshing sleep |

- Not independent convergence — all are parallel effects of N1 (NE deficiency)
- No convergence bumps applicable

### Cluster 6: Sleep-Arousal NE Mechanisms
| Hypothesis | Cert | Mechanism |
|-----------|------|-----------|
| H4 Circadian Collapse | 0.30 | LC-NE oscillation failure |
| H11 Adenosine Heteromer | 0.10 | A1-α1 cross-talk → sleep pressure |
| T6 Melatonin+Atomox | 0.10 | Chronobiotic combination |
| T7 Prazosin | 0.10 | α1 blockade for vasomotion |
| **Endpoint** | | Unrefreshing sleep |

- H4 (0.30) ≥ 0.30; H11 (0.10) < 0.30 → Rule 3 blocks any convergence bump

---

## 3. Conflict Clusters

### Conflict A: H7 POTS Bidirectional (0.15) vs Clinical Concern (NRIs worsen POTS, ~0.50)
| Aspect | Detail |
|--------|--------|
| **H7 claim** | Low CNS NE → baroreflex disinhibition → POTS. NRIs should improve POTS. |
| **Clinical concern** | NRIs increase NE → could worsen tachycardia in hyperadrenergic POTS |
| **Diff** | 0.35 ≥ 0.20 |
| **Resolution** | H7 may apply only to hypo-adrenergic POTS/low CSF NE subgroup; hyperadrenergic POTS with normal CSF NE may worsen |
| **Adjustment** | **−0.05 to H7** → 0.10 |

### Conflict B: T6 Daytime Melatonin (0.10) vs Circadian Phase Biology (~0.60)
| Aspect | Detail |
|--------|--------|
| **T6 claim** | In NE deficiency, daytime melatonin reduces unmet wakefulness demand |
| **Established** | Daytime melatonin → phase shifts → worsens circadian disruption |
| **Diff** | 0.50 ≥ 0.20 |
| **Resolution** | Rule 4: −0.05 to weaker (T6) |
| **Adjustment** | **−0.05 to T6** → 0.05 |

### Conflict C: T7 Prazosin α1 Block (0.10) vs NE-α1 Vasomotion Pharmacology (~0.60)
| Aspect | Detail |
|--------|--------|
| **T7 claim** | α1 upregulation causes excessive response → block to preserve vasomotion |
| **Established** | α1 mediates vasomotion; blockade impairs it |
| **Diff** | 0.50 ≥ 0.20 |
| **Resolution** | Temporal niche (night prazosin vs day NE enhancers); residual risk |
| **Adjustment** | **−0.05 to T7** → 0.05 |

### Conflict D: H12 Dabigatran/Vorapaxar (0.05) vs Bleeding Risk Safety (~0.70)
| Aspect | Detail |
|--------|--------|
| **H12 claim** | Thrombin/PAR1 impairs NE-vascular coupling |
| **Established** | Anticoagulants have bleeding risk |
| **Diff** | 0.65 ≥ 0.20 |
| **Resolution** | H12 is a mechanistic hypothesis, not a treatment recommendation. The treatment implication carries risk. No adjustment — the hypothesis mechanism itself is not in conflict with safety data. |
| **Adjustment** | **None** — different levels (mechanism vs intervention safety) |

### Unresolved Tensions (Rule 5: comparably certain, diff < 0.20, no adjustment)

| Conflict | Hypothesis A | Cert | Hypothesis B | Cert | Diff | Nature |
|----------|-------------|------|-------------|------|------|--------|
| E | H1 (P2X7→NE crash→PEM) | 0.25 | AIMM ch06 (Na/K→Ca overload→PEM) | 0.35 | 0.10 | Both claim primary PEM mechanism; could be different tissue compartments |
| F | H3 (TRPM3 Ca deficit→reduced release) | 0.20 | AIMM ch06 (Na/K failure→Ca overload→damage) | 0.35 | 0.15 | Opposite Ca²⁺ dysregulation directions |
| G | H7 (NRIs help POTS) | 0.15 | H5 (Splenic NE deficiency) | 0.20 | 0.05 | Consistent if H7 is correct (NRIs raise NE→splenic tone improves) but conflicting if plasma NE is already elevated |

### Pseudo-Conflicts (apparent, resolved by distinction)

| Apparent conflict | Resolution |
|-------------------|-----------|
| H4 Circadian (low NE flattens amplitude) vs ch15 DORAs (enhance vasomotion via orexin withdrawal) | NE *level* (tonic, low in ME/CFS) vs NE *oscillation* (phasic, restored by DORAs). Already resolved in audit. |
| T7 Prazosin (α1 block) vs T2/T5 (NE increase→α1 activation) | Temporal niche: prazosin at night; NE enhancers daytime. α1 upregulation in low-NE state may make blockade paradoxically protective. |
| H5 Splenic NE low vs Winkler 2016 plasma NE elevated | Elevated plasma NE reflects adrenal medulla, not splenic sympathetic tone. Must measure splenic NE separately. |
| T6 Melatonin daytime vs H4 circadian restoration | Melatonin may reduce wakefulness demand mismatch but risks phase shift. Only for refractory cases with confirmed low pupil diameter. |

---

## 4. Certainty Adjustment Proposals

### Upward Adjustments (+0.05)

| Hypothesis | Current | New | Rule | Rationale |
|-----------|---------|-----|------|-----------|
| **H1 P2X7** | 0.25 | **0.30** | Rule 2 (feed-into) | CNS Energy Crisis (0.55) → ATP depletion → P2X7 gating failure. Link established (P2X7 EC50 ≈ 1 mM ATP; Miranda-Morales 2019 P2X7-KO reduces NE release). Link cert ≈ 0.70. |
| **H2 PTPRN2** | 0.25 | **0.30** | Rule 1 (convergence) | PTPRN2 (epigenetic, vesicle *number*) converges with N2 ATP-Vesicular (metabolic, vesicle *function*, 0.35) on impaired vesicular NE synthesis. Both ≥ 0.20 ✓; N2 ≥ 0.30 thus Rule 3 does not block. Independent lines (genetic vs metabolic). |
| **B1 CSF/Plasma NE Ratio** | 0.40 | **0.45** | Rule 1 (convergence) | B1 (biochemical index) converges with N5 Handgrip (functional proxy, 0.60) on functional NE assessment. Both ≥ 0.20 ✓; both ≥ 0.30 thus Rule 3 does not block. Independent (biochemical vs behavioral). |
| **H6 Pain Bridge** | 0.35 | **0.40** | Rule 2 (feed-into) | N1 NE Deficiency (0.70) → impaired descending analgesia (LC→spinal α2-AR). NE-mediated descending analgesia well-documented (Julien 2005, Arnold 2004). Link cert ≈ 0.75. |

### Downward Adjustments (−0.05)

| Hypothesis | Current | New | Rule | Rationale |
|-----------|---------|-----|------|-----------|
| **H7 POTS Bidirectional** | 0.15 | **0.10** | Rule 4 (conflict) | Conflicts with established clinical concern that NRIs worsen POTS (~0.50). Diff = 0.35 ≥ 0.20. H7 claims causal reversal; no direct supportive data. |
| **T6 Melatonin+Atomoxetine** | 0.10 | **0.05** | Rule 4 (conflict) | Daytime melatonin conflicts with established circadian phase biology (~0.60). Diff = 0.50 ≥ 0.20. Phase-shifting risk is well-documented. |
| **T7 Prazosin** | 0.10 | **0.05** | Rule 4 (conflict) | α1 blockade conflicts with established NE-α1 vasomotion pharmacology (~0.60). Diff = 0.50 ≥ 0.20. Paradoxical benefit insufficiently supported. |

### Adjustments Considered but Rejected

| Hypothesis | Rule | Reason for rejection |
|-----------|------|---------------------|
| H3 TRPM3 (0.20) | Rule 1 | Convergence with H1 blocked by Rule 3 (both < 0.30) |
| B2 Pupillometry (0.35) | Rule 1 | Convergence with B4 (0.20) blocked by Rule 3 (B4 < 0.30) |
| B4 Exosome (0.20) | Rule 1 | Blocked by Rule 3 (B4 < 0.30, B2 partner ≥ 0.30 but B4 itself < 0.30) |
| H4 Circadian (0.30) | Rule 2 | Feed-into from N1 but link cert ≈ 0.40 < 0.50 |
| H5 Splenic-Immune (0.20) | Rule 2 | Upstream LC cert 0.40 < 0.50 |
| H9 Functional PD (0.15) | — | No convergence/feed-into from ≥0.50 upstream |
| H10 Pacing+Atomox (0.25) | — | No convergence/feed-into from ≥0.50 upstream |
| H11 Adenosine (0.10) | — | No convergence/feed-into from ≥0.50 upstream |
| H12 Thrombin (0.05) | Rule 4 | Conflict with bleeding risk is intervention-level, not mechanism-level |

### Final Certainty Table

| ID | Name | Before | Adjustment | After |
|----|------|--------|-----------|-------|
| H1 | P2X7-ATP-Ca-VMAT2 | 0.25 | +0.05 (feed-into: CNS Energy Crisis) | **0.30** |
| T1 | Guanfacine α2A | 0.35 | — | **0.35** |
| H2 | PTPRN2 Structural VMAT2 | 0.25 | +0.05 (convergence: N2 ATP-Vesicular) | **0.30** |
| T2 | Droxidopa DBH Bypass | 0.30 | — | **0.30** |
| H3 | TRPM3 Two-Hit Ca²⁺ | 0.20 | — (blocked: both < 0.30) | **0.20** |
| B1 | CSF/Plasma NE Ratio | 0.40 | +0.05 (convergence: N5 Handgrip) | **0.45** |
| M1 | NE ODE Model | N/A | — | **N/A** |
| H4 | NE Circadian Collapse | 0.30 | — (link cert < 0.50) | **0.30** |
| T3 | Atomoxetine + Guanfacine | 0.30 | — | **0.30** |
| H5 | LC-Splenic Immune Axis | 0.20 | — (upstream cert < 0.50) | **0.20** |
| B2 | Pupillometry LC Probe | 0.35 | — (blocked: partner < 0.30) | **0.35** |
| T4 | Pregnenolone Sulfate (TRPM3) | 0.15 | — | **0.15** |
| T5 | L-DOPS + Atomoxetine Dual | 0.15 | — | **0.15** |
| H6 | NE-Fibromyalgia Pain Bridge | 0.35 | +0.05 (feed-into: N1 descending analgesia) | **0.40** |
| B3 | Urinary VMA/HVA Ratio | 0.25 | — | **0.25** |
| H7 | NE Deficiency → POTS Bidirectional | 0.15 | −0.05 (conflict: clinical concern) | **0.10** |
| H8 | DBH rs1611115 Polymorphism | 0.20 | — | **0.20** |
| H9 | Functional Pre-PD | 0.15 | — | **0.15** |
| T6 | Melatonin + Atomoxetine Chronobiotic | 0.10 | −0.05 (conflict: circadian phase) | **0.05** |
| B4 | Exosome VMAT2/DBH | 0.20 | — (blocked: self < 0.30) | **0.20** |
| H10 | Pacing + Atomoxetine Protocol | 0.25 | — | **0.25** |
| T7 | Prazosin α1 Nightly | 0.10 | −0.05 (conflict: NE-α1 pharmacology) | **0.05** |
| H11 | NE × Adenosine Cross-Talk | 0.10 | — | **0.10** |
| H12 | Thrombin/PAR1 for NE-Vascular | 0.05 | — | **0.05** |

---

## 5. Independent Pairs

Pairs with different change-driver sets (different mechanisms, pathways, systems, or levels) — no overlap, no feed-into, no conflict, no convergence.

| Hypothesis A | Hypothesis B | Driver A | Driver B |
|-------------|-------------|----------|----------|
| H1 P2X7 (synaptic Ca) | T1 Guanfacine (postsynaptic α2A) | Purinergic gating | Receptor selectivity |
| H2 PTPRN2 (vesicle number) | B2 Pupillometry (functional readout) | Epigenetics | Autonomic physiology |
| H3 TRPM3 (cellular Ca) | B3 VMA/HVA (metabolite) | TRP channel | Peripheral metabolism |
| H4 Circadian (temporal) | H8 DBH genetics (genetic) | Chronobiology | Genetics |
| H5 Splenic-immune (immune) | H9 Functional PD (neurodegeneration) | Neuroimmunology | Translational neurology |
| H6 Pain (descending) | H10 Pacing protocol (behavioral) | Pain physiology | Clinical protocol |
| H7 POTS (autonomic) | T4 Pregnenolone (neurosteroid) | Autonomic regulation | Neurosteroid pharmacology |
| H11 Adenosine (receptor) | H12 Thrombin (coagulation) | GPCR heteromer | PAR1-thrombin |
| B1 CSF/Plasma Ratio (biochemistry) | T2 Droxidopa (therapy) | Biochemical index | Pharmacotherapy |
| B3 VMA/HVA (peripheral) | T1 Guanfacine (CNS) | Metabolite biomarker | Central α2A agonism |

---

## 6. Summary

| Metric | Count |
|--------|-------|
| Total ideas analyzed | 25 |
| Feed-into chains identified | 10 |
| Chains qualifying for bump (Rule 2) | 2 |
| Reinforcement clusters | 6 |
| Convergence bumps applied (Rule 1) | 2 |
| Feed-into bumps applied (Rule 2) | 2 |
| Convergence blocked by Rule 3 (<0.30) | 3 pairs |
| Conflicts (direct) | 4 |
| Unresolved tensions (diff < 0.20) | 3 |
| Downward adjustments (Rule 4) | 3 |
| Independent pairs listed | 10 |
| Hypotheses adjusted upward | 4 (H1, H2, B1, H6) |
| Hypotheses adjusted downward | 3 (H7, T6, T7) |
| Hypotheses unchanged | 17 |
| Max new cert | 0.45 (B1) |
| Min new cert | 0.05 (T6, T7, H12) |

### Recommendations
1. **Strengthen feed-into link Chain B** (NE deficiency → circadian collapse): Proposed circadian CSF NE sampling protocol could raise link cert from 0.40 → 0.65, enabling bump for H4.
2. **Resolve unresolved tension E** (H1 P2X7 vs AIMM): P2X7 antagonist + Na/K pump modulator in patient-derived LC neurons could determine which Ca²⁺ mechanism dominates in PEM.
3. **Warn about T6, T7, H7, H12 before paper inclusion**: All carry unresolved conflicts or safety concerns requiring explicit caveat sections.
4. **Cross-reference gaps**: B1 (CSF/plasma ratio) should reference N5 (handgrip) as converging functional proxy; H1 should reference CNS Energy Crisis (ch16) as upstream substrate.
