# Integration Guide: TRP Channels and Piezo Mechanosensors — ch15-symptom-producing-mechanisms.typ

## Summary

These papers add mechanistic depth to four existing sections of ch15: the oxidative stress section (sec:ch15-oxidative-stress), the mast cell section (sec:ch15-mast-cells), the central sensitization/pain section (sec:ch15-central-sensitization), and the stimulation intolerance model (sec:ch15-stimulation-intolerance). The papers supply molecular citations currently missing from discussions that already mention TRPV1, TRPA1, and TRP channel sensitization by name.

**File:** `src/main/typst/mecfs/part2-pathophysiology/ch15-symptom-producing-mechanisms.typ`

---

## Existing Unreferenced Claims to Cite

The following statements already appear in ch15 but lack the specific citations these papers provide:

| Line (approx) | Existing claim | Paper to cite |
|---------------|---------------|---------------|
| ~402 | "Schwann cells express TRPA1 channels that, when activated by reactive oxygen species (ROS) or CGRP, trigger release of pro-algesic mediators" | `@Macpherson2007` |
| ~411 | "NGF sensitizes nociceptive fibers by upregulating TRPV1 expression" | `@Moriyama2005` |
| ~430 | "TRPV1 (vanilloid receptors): Proton accumulation and elevated temperature in metabolically active muscle sensitize TRPV1 on muscle nociceptors" | `@Moriyama2005` |
| ~468 | "TRPV1 (vanilloid 1, the capsaicin receptor) and TRPA1 (ankyrin 1, activated by oxidant products such as 4-hydroxynonenal and acrolein) function as cellular danger sensors" | `@Macpherson2007` |
| ~673 | "chemical sensitivity...reported by 70–90% of patients" | `@Molot2023` |

These are straightforward citation additions — no new text required, just adding `@CitKey` to the sentence end.

---

## Integration Target 1: sec:ch15-oxidative-stress (Section "TRP Channel Sensitization by ROS")

**Location:** Line ~468, existing subsection `=== TRP Channel Sensitization by ROS`

**Current text:** "Reactive oxygen species activate transient receptor potential channels directly: TRPV1 (vanilloid 1, the capsaicin receptor) and TRPA1 (ankyrin 1, activated by oxidant products such as 4-hydroxynonenal and acrolein) function as cellular danger sensors..."

**Enhancement needed:** Expand with the TRPV1-COX2 feed-forward loop (Li2021) and the prostaglandin-TRPV1 sensitization mechanism (Moriyama2005). These strengthen the mechanistic case for why antioxidant and anti-inflammatory interventions can reduce TRP-driven pain in ME/CFS.

**Suggested addition** (after the existing TRPV1/TRPA1 sentence):

```typst
TRPV1 activation is self-amplifying: stimulation upregulates COX2 (cyclooxygenase-2)
in primary sensory neurons within ~30 minutes, generating prostaglandins that re-sensitize
TRPV1 via EP1 and IP G-protein coupled receptors @Li2021 @Moriyama2005. This feed-forward
loop means that a single triggering event (heat, acidosis, capsaicin-like food compound, or
ROS burst during exertion) can establish a sustained sensitized state lasting hours, even
after the initial trigger is removed. In ME/CFS, where prostaglandin production is
chronically elevated and ROS clearance is impaired, this loop may operate constitutively,
maintaining continuous low-grade TRPV1-driven nociceptor activation without requiring
repeated external triggers.

Similarly, TRPA1 serves as a molecular sensor for oxidative tissue damage: it is activated
by direct covalent modification of 14 reactive cytosolic cysteine residues by H$_2$O$_2$,
acrolein, 4-hydroxynonenal, and other electrophilic oxidative stress metabolites
@Macpherson2007. In ME/CFS, where systemic oxidative stress is well-documented
@Shungu2012glutathione, chronically elevated ROS would provide continuous TRPA1 activating
stimuli on sensory neurons and Schwann cells, sustaining neurogenic inflammation
independently of mechanical or thermal triggers.
```

**Environment:** Narrative prose (not a hypothesis box) — consistent with existing section style.

**Citations:** `@Li2021`, `@Moriyama2005`, `@Macpherson2007`

---

## Integration Target 2: sec:ch15-mast-cells (Mast Cell Section)

**Location:** Line ~296-330, existing section on MCAS-ME/CFS overlap and mast-microglia loop.

**Enhancement needed:** Add the TRPV1-mast cell neurogenic degranulation axis (Souza2024). The existing section discusses MRGPRX2/NK1 (substance P pathway) and H3 receptor signaling, but does not yet cover the TRPV1 neurogenic mast cell activation pathway. This is an important non-IgE, non-MRGPRX2 mechanism.

**Suggested addition** (after the substance P/mast cell paragraph at ~line 327):

```typst
A second neurogenic pathway for mast cell activation involves TRPV1 directly. TRPV1 is
expressed not only on sensory C-fiber endings but also on mast cells themselves. Capsaicin
and TRPV1-activating stimuli (heat, protons, prostaglandins, some food compounds) trigger
mast cell degranulation via TRPV1-mediated calcium influx, releasing histamine and CGRP
through a non-IgE, non-MRGPRX2 pathway @Souza2024. In ME/CFS patients with sensitized TRPV1
(see Section @sec:ch15-oxidative-stress), ordinary stimuli --- fragrances, food compounds,
temperature changes --- can trigger this TRPV1-mast cell axis, contributing to the
episodic, trigger-sensitive degranulation pattern characteristic of MCAS overlap. This
mechanism is distinct from the substance P/MRGPRX2 axis (which requires prior neuropeptide
release from C-fibers) and provides a direct, stimulus-activated mast cell degranulation
pathway that can be triggered without neuronal firing.
```

**Citations:** `@Souza2024`

---

## Integration Target 3: sec:ch15-central-sensitization (MCS/SAMA paragraph)

**Location:** Line ~673, existing text about "chemical sensitivity...reported by 70–90% of patients" and the stimulation intolerance model.

**Enhancement needed:** Link multiple chemical sensitivity (MCS/SAMA) to TRP sensitization mechanism with Molot2023 citation. The existing text mentions chemical sensitivity as a reported symptom but does not provide the molecular explanation.

**Suggested addition** (enhance the existing chemical sensitivity sentence in sec:ch15-stimulation-intolerance):

```typst
Chemical sensitivity — manifesting as reactions to fragrances, cleaning products, vehicle
exhaust, and food compounds at concentrations tolerated by healthy individuals — is reported
by 70--90% of ME/CFS patients @Jason2013sensory and has a specific neurobiological basis.
TRPV1 and TRPA1 sensitization by prior inflammation or oxidative stress lowers their
activation thresholds to sub-ordinary chemical concentrations; fragrances activate TRPA1
(via electrophilic and allyl isothiocyanate-like structures) and many volatile organic
compounds activate TRPV1, both at concentrations that are non-activating in un-sensitized
individuals @Molot2023 @Macpherson2007. This mechanism — multiple chemical sensitivity
(MCS/SAMA) as a TRP sensitization syndrome — explains why ME/CFS patients with higher
oxidative stress burden and more active neuroinflammation tend to report more severe
chemical sensitivity, and why chemical sensitivity often worsens in parallel with PEM and
disease progression.
```

**Citations:** `@Molot2023`, `@Macpherson2007`, `@Jason2013sensory` (already in bib)

---

## Integration Target 4: RBC Deformability in Microcirculation Context

**Location:** No current section directly discusses RBC deformability in ch15. However, the PEM metabolic danger signal section (sec:ch15-metabolic-danger, ~line 510) discusses exercise-induced microvascular failure, and the mast cell section mentions intramuscular microvascular dysfunction.

**Suggested placement:** Within sec:ch15-metabolic-danger, as supporting evidence for impaired oxygen delivery during exertion.

**Suggested addition** (brief, as mechanistic supporting point):

```typst
Microvascular oxygen delivery impairment in ME/CFS extends to red blood cell rheology.
Saha et al.\ documented significantly reduced RBC deformability in ME/CFS patients using
ektacytometry @Saha2019, consistent with the mechanosensitive Piezo1 channel
(which regulates RBC volume via KCa3.1/Gardos channel calcium influx) potentially being
dysregulated @Cahalan2015. Stiffened RBCs cannot efficiently traverse capillaries of
3--5\ µm diameter, reducing oxygen delivery to tissues even when hemoglobin and cardiac
output are preserved --- a mechanism that would amplify the exercise intolerance from
mitochondrial and cardiovascular dysfunction.
```

**Citations:** `@Saha2019`, `@Cahalan2015`

---

## BibTeX Keys Used

| Key | Section Target |
|-----|----------------|
| `@Macpherson2007` | sec:ch15-oxidative-stress (TRP/ROS subsection) + Schwann cell paragraph |
| `@Moriyama2005` | sec:ch15-oxidative-stress + muscle nociceptor paragraph |
| `@Li2021` | sec:ch15-oxidative-stress (TRP/ROS subsection) |
| `@Souza2024` | sec:ch15-mast-cells |
| `@Molot2023` | sec:ch15-stimulation-intolerance (chemical sensitivity) |
| `@Saha2019` | sec:ch15-metabolic-danger |
| `@Cahalan2015` | sec:ch15-metabolic-danger |

---

## Priority Order

1. **HIGH:** Add `@Macpherson2007` and `@Moriyama2005` to existing TRPA1/TRPV1 sentences in sec:ch15-oxidative-stress — these are citation-only additions to already-written text.
2. **HIGH:** Add `@Macpherson2007` to Schwann cell TRPA1 paragraph (~line 402) — again citation-only.
3. **MEDIUM:** Add TRPV1-mast cell paragraph to sec:ch15-mast-cells (new text, ~100 words).
4. **MEDIUM:** Expand TRP channel sensitization subsection with Li2021 feed-forward loop (new text, ~150 words).
5. **LOW:** Add MCS/SAMA TRP sensitization paragraph to stimulation intolerance section (new text).
6. **LOW:** Add RBC deformability note to metabolic danger section (new text, ~50 words).

---

## Notes for chapter-integrator

- ch15 uses Typst syntax (`#hypothesis(title: [...])` etc.), not LaTeX.
- Existing prose sections in ch15 do not use hypothesis boxes — new additions should be prose or brief `#observation()` environments.
- The TRPA1 claim at line ~402 ("Schwann cells express TRPA1 channels activated by ROS") already appears in the text but is currently uncited. Adding `@Macpherson2007` there is the single highest-leverage action.
- Check that `@Jason2013sensory` is already in references.bib before using it (it appears in the existing text at line 673).
