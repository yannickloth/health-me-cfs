# Integration Guide: TRP Channels and Piezo Mechanosensors — ch14h-trpm3-channelopathy.typ

## Summary

Eight papers establish the TRP channel family (TRPV1, TRPA1) and Piezo mechanosensor family (Piezo1, Piezo2) as ME/CFS-relevant pathophysiological mechanisms. This guide covers integration into ch14h (Novel Hypotheses from TRPM3 Ion Channel Research), where the TRP/Piezo family provides a natural extension of the TRPM3 channelopathy framework to the broader TRP and mechanosensor channel landscape.

**File:** `src/main/typst/mecfs/part2-pathophysiology/ch14/ch14h-trpm3-channelopathy.typ`

**Existing section anchor:** `<sec:trpm3-hypotheses>`

---

## Why ch14h is the Primary Target

ch14h already establishes TRPM3 channelopathy as a systemic ME/CFS mechanism. The hypothesis sections discuss TRPM3 expression in sensory neurons, vascular smooth muscle, and mast cells. TRPV1 and TRPA1 are co-expressed in sensory neurons and mast cells alongside TRPM3, and all three are implicated in the same symptom domains (pain, allodynia, chemical sensitivity). Piezo1's role in RBC volume regulation (Cahalan 2015) connects directly to the Saha 2019 RBC deformability finding.

---

## Integration Targets in ch14h

### 1. New hypothesis: Expanded TRP Channelopathy Hypothesis

**Placement:** Append after the existing "Systemic Channelopathy Hypothesis" section (which ends around `=== The Systemic Channelopathy Hypothesis`).

**New section title:** `=== The Expanded TRP Channel Sensitization Hypothesis`

**Environment:** `#open-question` (consistent with existing ch14h style for speculative hypotheses)

**Suggested content:**

```typst
=== The Expanded TRP Channel Sensitization Hypothesis

#open-question(title: [Beyond TRPM3: A Broader TRP Channelopathy?])[
TRPM3 dysfunction is now established in ME/CFS @Cabanas2021trpm3 @Sasso2026trpm3. TRPM3
belongs to the TRP superfamily alongside TRPV1 (vanilloid 1) and TRPA1 (ankyrin 1), which
are co-expressed in sensory neurons, mast cells, and Schwann cells. TRPV1 is the canonical
"molecular integrator of noxious stimuli" (Nobel Lecture, Julius 2021): it responds to heat
>43°C, capsaicin, protons (pH<6), and prostaglandins, and is sensitized by PGE$_2$ via EP1
and IP receptors @Moriyama2005. TRPA1 functions as an oxidative stress sensor, activated by
H$_2$O$_2$, acrolein, and electrophilic tissue damage metabolites through covalent
modification of reactive cytosolic cysteines @Macpherson2007.

*Proposed mechanism:*

    - In ME/CFS, elevated systemic ROS and chronic prostaglandin production sensitize both
      TRPV1 and TRPA1 on sensory neurons and mast cells
    - Sensitized TRPV1 creates a feed-forward loop: activation upregulates COX2 in sensory
      neurons, generating more prostaglandins, which re-sensitize TRPV1 @Li2021
    - Sensitized TRPA1 on Schwann cells sustains neurogenic inflammation independently of
      axonal injury
    - TRPV1-mast cell axis: TRPV1 on mast cells triggers degranulation via non-IgE
      neurogenic pathway, releasing histamine and CGRP @Souza2024
    - Multiple chemical sensitivity (MCS/SAMA) in ME/CFS patients may represent TRP
      sensitization reducing activation threshold to sub-ordinary chemical concentrations
      @Molot2023

Whether TRPV1 and TRPA1 dysfunction co-occurs with TRPM3 dysfunction in ME/CFS is not yet
tested. However, shared expression patterns in sensory neurons and the common oxidative
stress milieu of ME/CFS provide a plausible mechanism for concurrent multi-TRP-channel
sensitization.
] <hyp:ch14h-trp-expanded>

*Testable predictions.*

    - ME/CFS patients with MCS/SAMA features should show lower capsaicin-induced flare
      thresholds than ME/CFS patients without chemical sensitivity (TRPV1 sensitization)
    - TRPA1 activation threshold (measured by allyl isothiocyanate/mustard challenge) should
      be reduced in ME/CFS patients with elevated oxidative stress markers
    - NK cells from ME/CFS patients (already showing TRPM3 dysfunction) should also show
      altered TRPV1/TRPA1 gating properties
    - TRPV1 antagonists or COX2 inhibitors should reduce MCS symptom burden in ME/CFS
      subsets
```

---

### 2. New hypothesis: Piezo1 RBC Deformability and Microcirculation

**Placement:** Append after the TRP expanded hypothesis, or as a separate section.

**New section title:** `=== The Piezo1-RBC Microcirculation Hypothesis`

**Environment:** `#open-question`

**Suggested content:**

```typst
=== The Piezo1-RBC Microcirculation Hypothesis

#open-question(title: [Piezo1 Dysregulation as a Mechanism for RBC Stiffness in ME/CFS])[
Red blood cell (RBC) deformability is significantly reduced in ME/CFS patients @Saha2019.
Stiffened RBCs cannot traverse capillaries of diameter 3--5\ µm efficiently, impairing
oxygen delivery to tissues even when hemoglobin concentration is normal. The mechanistic
basis for this finding may involve Piezo1.

Piezo1 is the mechanically-activated cation channel that governs RBC volume homeostasis:
calcium influx through Piezo1 activates the KCa3.1 (Gardos) channel, causing K$^+$ efflux
and controlled cell dehydration @Cahalan2015. In healthy RBCs, Piezo1 maintains the
optimal water content and biconcave shape required for capillary transit. Gain-of-function
Piezo1 variants (hereditary xerocytosis) produce dehydrated, stiff RBCs — the same
phenotype documented in ME/CFS by Saha et al.

*Proposed mechanism:*

    - Chronic oxidative stress and elevated cytokines in ME/CFS may alter Piezo1 function
      in RBCs (overactivation → dehydration → stiffness, or dysregulation of Gardos
      channel coupling → impaired volume regulation)
    - Stiffened RBCs impair capillary transit, reducing tissue oxygen delivery
    - Reduced oxygen delivery amplifies the energy deficit even without intrinsic
      mitochondrial dysfunction
    - The RBC stiffness could explain why exercise quickly depletes oxygen delivery
      capacity in ME/CFS: stiffened RBCs block capillaries under the increased flow
      demands of exertion

This hypothesis is currently untested: no ME/CFS study has directly measured Piezo1
function or expression in patient RBCs.
] <hyp:ch14h-piezo1-rbc>

*Testable predictions.*

    - ME/CFS patient RBCs should show altered Piezo1 gating properties (patch clamp) or
      expression compared to healthy controls
    - Gardos channel (KCa3.1) activity should be abnormal in ME/CFS RBCs
    - Severity of RBC deformability reduction should correlate with exercise intolerance
      severity (e.g., 2-day CPET VO$_2$max)
    - _In vitro_ correction of Piezo1/KCa3.1 activity (GsMTx4 Piezo inhibitor or Gardos
      channel modulator) should partially restore RBC deformability
```

---

### 3. Brief addition: Piezo2, proprioception, and allodynia in ME/CFS

**Placement:** Can be appended as a brief open-question or paragraph within the TRP expanded hypothesis section.

**Citation keys:** `@Szczot2018`

**Key point to convey:** Piezo2 gain-of-function (Piezo2-CRAMPED syndrome: hypermobility, allodynia, scoliosis) overlaps with hEDS features that are overrepresented in ME/CFS. Piezo2-mediated mechanical allodynia may contribute to the tactile hypersensitivity in ME/CFS. The proprioceptive deficit documented in Piezo2 loss-of-function patients is also consistent with the ataxic, uncoordinated movement quality some ME/CFS patients report.

---

## BibTeX Keys Available

| Key | Paper |
|-----|-------|
| `@Saha2019` | RBC deformability in ME/CFS |
| `@Cahalan2015` | Piezo1 and RBC volume via KCa3.1 |
| `@Szczot2018` | Piezo2 and tactile allodynia |
| `@Molot2023` | MCS/SAMA and TRP sensitization |
| `@Moriyama2005` | PGE2 sensitizes TRPV1 via EP1/IP |
| `@Li2021` | TRPV1 → COX2 feed-forward loop |
| `@Souza2024` | TRPV1-mast cell degranulation axis |
| `@Macpherson2007` | TRPA1 as ROS/electrophile sensor |

---

## Certainty Levels for Content Staging

| Claim | Environment | Certainty |
|-------|-------------|-----------|
| RBC deformability reduced in ME/CFS | achievement | 0.70 |
| Piezo1 regulates RBC volume via KCa3.1 | achievement | 0.85 |
| PGE2 sensitizes TRPV1 via EP1 | achievement | 0.75 |
| TRPV1 → COX2 feed-forward | achievement | 0.70 |
| TRPV1-mast cell degranulation | observation | 0.55 |
| TRPA1 as ROS sensor via cysteine | achievement | 0.85 |
| TRP channelopathy in ME/CFS | open-question | 0.40 |
| Piezo1 dysregulation explains RBC stiffness | open-question | 0.35 |

---

## Notes for chapter-integrator

- The Macpherson2007 DOI in the task brief (10.1172/JCI32087) was **incorrect**. The correct DOI is `10.1038/nature05544` (Nature 445:541-545, 2007). The bib entry uses the corrected DOI.
- Souza2024 citation key maps to first author Costa et al. 2024 — the key was assigned per task convention. The note in the bib entry documents this.
- ch14h uses `#open-question(title: [...])` style (not `\begin{hypothesis}` — this is Typst, not LaTeX).
- All new content should maintain the "Testable predictions." format used throughout ch14h.
