# Literature Summary: TRP Channel Pentamerization and Vascular TRPV1
**Date:** 2026-04-19
**Research stream:** `trp-pentamer-vascular`
**BibTeX keys added:** Lansky2023trpv3pentamer, Lansky2025trpv3dynamics, Cavanaugh2011trpv1vascular, Phan2020trpv1arterial, Phan2022trpv1myogenic, RiveraMancilla2024trpDermal, Ren2024oligomeric, Delmas2020snapShot

---

## Papers Processed (8 total)

### 1. Lansky et al. 2023 — Nature 621:206-214
**Key:** `Lansky2023trpv3pentamer` | **Certainty:** 0.80 | **PMID:** 37648856

HS-AFM + cryo-EM reveals TRPV3 exists in dynamic tetramer-pentamer equilibrium via membrane diffusive protomer exchange. Pentamer has ~2.4-fold enlarged pore, ~3-minute lifetime, and is promoted by DPBA agonist. First demonstration of non-tetrameric TRP stoichiometry with functional consequence. Explains the long-known pore-dilation phenomenon (increased large-cation permeability after prolonged activation).

### 2. Lansky et al. 2025 — Nat Commun 16:4347
**Key:** `Lansky2025trpv3dynamics` | **Certainty:** 0.78 | **PMID:** 40374654

Improved cryo-EM (4.07 Å) + MD simulations. Pentamer: selectivity filter 5.3-fold wider than closed tetramer, gate 7.3-fold wider. MD confirms free passage of Tris+, NMDG+, 2-MAE+. Multiple agonists (2-APB, camphor, propofol) destabilize tetramers and facilitate pentamer formation. Authors call pentamer a "hyper-activated state."

### 3. Cavanaugh et al. 2011 — J Neurosci 31:5067-5077
**Key:** `Cavanaugh2011trpv1vascular` | **Certainty:** 0.75 | **PMID:** 21451044

TRPV1 reporter mouse + cross-species histology. Neuronal TRPV1 restricted to nociceptors. TRPV1 also expressed in arteriolar smooth muscle in thermoregulatory tissues (cremaster, dura, tongue, trachea, skin). Capsaicin → calcium influx → vasoconstriction in smooth muscle. Vascular TRPV1 opposes neuronal TRPV1 (which causes vasodilation). Julius/Basbaum group.

### 4. Phan et al. 2020 — J Physiol 598:5639-5659
**Key:** `Phan2020trpv1arterial` | **Certainty:** 0.72 | **PMID:** 32944976

TRPV1 KO + pharmacology. TRPV1 in terminal arterioles of skeletal muscle, heart, adipose. Capsaicin → vasoconstriction + elevated BP (persists after nerve ablation = vascular-intrinsic). Arteriolar TRPV1 resistant to desensitization. LPA (inflammatory lipid) activates it. Mechanism: TRPV1 depolarization → L-type Ca2+ → sustained vasoconstriction.

### 5. Phan et al. 2022 — J Physiol 600:1651-1666
**Key:** `Phan2022trpv1myogenic` | **Certainty:** 0.72 | **PMID:** 35020949

TRPV1 KO + pressure myography. TRPV1 drives rapid myogenic tone in cardiac and skeletal muscle arterioles via PLC/PKC + temperature. TRPV1 antagonists dilate arterioles and increase coronary flow. TRPM4 contributes remaining tone. TRPV1 disruption impairs post-constriction vasodilation.

### 6. Rivera-Mancilla et al. 2024 — Pharmaceuticals 17:156
**Key:** `RiveraMancilla2024trpDermal` | **Certainty:** 0.65 | **PMID:** 38399371

Ex vivo human dermal arteries. TRPM3 (PregS) → relaxation via non-CGRP pathways. TRPV1 and TRPA1 did not activate standard vasodilation pathways tested. Important negative/nuance: tissue specificity matters — dermal ≠ skeletal muscle resistance arterioles. Confirms TRPM3 vascular activity in human tissue.

### 7. Ren et al. 2024 — Biophys Rep 10:293-296
**Key:** `Ren2024oligomeric` | **Certainty:** 0.55 | **PMID:** 39539288

Perspective/commentary. Proposes oligomeric stoichiometry switching as general gating mechanism across channel families (TRPV3, CALHM). No primary data; extrapolation from Lansky 2023.

### 8. Delmas & Coste 2020 — Cell 183:284-284.e1
**Key:** `Delmas2020snapShot` | **Certainty:** 0.60 | **PMID:** 33007264

Cell SnapShot — visual reference summary of TRP family in orofacial sensation. Covers TRPV1, TRPA1, TRPM8, TRPV3/4, TRPM3, TRPC4/5 physiological roles.

---

## Novel Angles for ME/CFS Integration

### A. Pentamer as Gain-of-Function Escalation (ch14h target)
The discovery that TRP channels transition from tetramers to pentamers under sustained agonist exposure — with dramatically enlarged pore and large-cation permeability — provides a structural mechanism for how TRPV3 (and possibly TRPM3 by analogy) transitions from a dysfunctional state to a hyper-conductive state. In ME/CFS:
- TRPM3 is already documented as dysfunctional in NK cells
- If sustained pathological activation drives pentamer formation, the result would be uncontrolled calcium influx
- This represents a qualitatively different (worse) state than simple loss-of-function gating: it would be a gain-of-function ionic leak

**Caution:** TRPM3 pentamers have not been demonstrated. This is a speculative extrapolation from TRPV3 data. Ren 2024 provides conceptual support but no TRPM3-specific evidence. Classification: `speculation` environment.

### B. Arteriolar TRPV1 and PEM Vasoconstriction (ch14h or new ch)
The Phan 2020/2022 papers establish that arteriolar TRPV1 in skeletal muscle:
- Is activated by inflammatory lipids (LPA, generated during exercise-induced tissue damage)
- Causes sustained vasoconstriction (not vasodilation)
- Does NOT desensitize — enabling prolonged abnormal vascular tone
- Interacts with TRPM4 (already documented in ME/CFS context via myogenic tone)

In PEM, the sequence would be:
1. Exercise → tissue micro-damage → LPA/oxidized phospholipid release
2. LPA activates arteriolar TRPV1 in skeletal muscle resistance arterioles
3. Sustained vasoconstriction → impaired oxygen delivery during and after exercise
4. Compounded by TRPM3 dysfunction (impaired relaxation per Rivera-Mancilla) and stiffened RBCs (Saha 2019)

This is a mechanistically coherent model linking multiple already-cited findings. Certainty: Medium-Low (no direct ME/CFS vascular TRPV1 data; all inferred from non-ME/CFS studies).

---

## Integration Guide for chapter-integrator

### Primary Target: ch14h-trpm3-channelopathy.typ
**File:** `src/main/typst/mecfs/part2-pathophysiology/ch14/ch14h-trpm3-channelopathy.typ`

**Suggested additions:**

1. **Speculation environment** — TRP pentamer escalation hypothesis:
   - Cite: `@Lansky2023trpv3pentamer`, `@Lansky2025trpv3dynamics`, `@Ren2024oligomeric`
   - Frame as: "If sustained TRPM3 activation in ME/CFS (as yet undemonstrated) drove pentamer formation, this would produce a hyper-conductive state with uncontrolled calcium influx"
   - Must flag: direct TRPM3 pentamer evidence does not exist; extrapolation from TRPV3
   - Environment type: `speculation`

2. **Hypothesis or observation environment** — Arteriolar TRPV1 in PEM:
   - Cite: `@Cavanaugh2011trpv1vascular`, `@Phan2020trpv1arterial`, `@Phan2022trpv1myogenic`, `@RiveraMancilla2024trpDermal`
   - Frame as: "Arteriolar TRPV1, activated by exercise-generated inflammatory lipids, causes sustained vasoconstriction and elevated myogenic tone in skeletal muscle arterioles; sensitization by prior inflammation could impair exercise-induced vasodilation"
   - Note tissue specificity limitation (Rivera-Mancilla dermal artery data)
   - Environment type: `hypothesis` (certainty ~0.40 for ME/CFS-specific application)

### Secondary Target: appendix-h (already done)
All 8 papers now in `sec:bib-trp-pentamer-vascular` section.

---

## Quality Flags

| Paper | Quality | Flag |
|-------|---------|------|
| Lansky 2023 | High | TRPV3 only; TRPM3 extrapolation unverified |
| Lansky 2025 | High | Computational component; same group |
| Cavanaugh 2011 | High | Julius/Basbaum; foundational |
| Phan 2020 | High | Strong multi-method; rodent only |
| Phan 2022 | High | Same group confirmation |
| Rivera-Mancilla 2024 | Medium | Human tissue but dermal only |
| Ren 2024 | Low-Medium | Commentary; no primary data |
| Delmas 2020 | Medium | Reference format only |

**No contradicting evidence found** for core vascular TRPV1 vasoconstriction finding. Rivera-Mancilla 2024 provides nuance (tissue specificity) rather than contradiction.
