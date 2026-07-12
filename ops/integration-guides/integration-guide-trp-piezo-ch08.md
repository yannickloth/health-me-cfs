# Integration Guide: TRP Channels and Piezo Mechanosensors — ch08-neurological.typ

## Summary

ch08 covers neurological manifestations of ME/CFS including the PEM kindling hypothesis, small fiber neuropathy, autonomic dysfunction, and sensory hypersensitivity. The TRP/Piezo papers provide molecular citations for already-mentioned mechanisms (TRPV1 on nociceptors at ~line 1041) and add mechanistic depth to the chemical sensitivity/stimulation intolerance sections.

**File:** `src/main/typst/mecfs/part2-pathophysiology/ch08-neurological.typ`

**Existing section anchor:** `<ch:neurological>`

---

## Why ch08 is a Secondary Target

ch08 already mentions TRPV1 at line ~1041 ("depletes substance P from peripheral nerve endings; defunctionalizes TRPV1-expressing nociceptors") and references sensitization throughout the kindling hypothesis. However, the paper does not currently develop the molecular basis for TRP channel sensitization in ME/CFS or cite the foundational papers. The additions here are:

1. A molecular citation for TRPV1 at the existing capsaicin/desensitization mention
2. A Piezo2 connection to proprioceptive dysfunction
3. MCS/SAMA mechanism for chemical sensitivity sections

---

## Integration Target 1: Capsaicin/TRPV1 citation (existing text)

**Location:** Line ~1041, text: "Depletes substance P from peripheral nerve endings; defunctionalizes TRPV1-expressing nociceptors"

**Action:** Add `@Moriyama2005` to provide molecular background for TRPV1 sensitization, and `@Li2021` for the feed-forward loop that makes desensitization therapeutic.

**Edit:** Change the existing note to:

```typst
- *Mechanism*: Depletes substance P from peripheral nerve endings; defunctionalizes
  TRPV1-expressing nociceptors. TRPV1 is sensitized by prostaglandins via EP1 receptors
  @Moriyama2005 and by TRPV1 activation itself via a COX2 feed-forward loop @Li2021,
  making chronic sensitization self-sustaining without repeated external triggers.
```

**Citations:** `@Moriyama2005`, `@Li2021`

---

## Integration Target 2: Proprioceptive dysfunction and Piezo2

**Location:** The sensory symptoms section and/or the movement/ataxia sections of ch08. Find the sections discussing coordination difficulties, proprioceptive symptoms, or gait instability.

**Suggested addition** (brief mechanistic note, ~50-80 words):

```typst
Proprioceptive dysfunction — manifesting as impaired sense of body position, unsteady
gait, and motor incoordination — has a specific mechanosensory substrate. Piezo2, the
primary mechanotransducer for light touch and proprioception, is required for injury-induced
tactile allodynia and for normal proprioceptive encoding @Szczot2018. Loss-of-function
PIEZO2 mutations produce profound proprioceptive ataxia in humans. Whether Piezo2
dysregulation contributes to ME/CFS proprioceptive symptoms is not yet studied, but the
mechanosensory sensitization framework is consistent with documented allodynia in ME/CFS.
```

**Citations:** `@Szczot2018`

---

## Integration Target 3: Chemical sensitivity and MCS/SAMA mechanism

**Location:** Section on sensory hypersensitivity (~line 1440 for hyperacusis), or within the autonomic dysregulation section discussing symptom triggers.

**Suggested addition** (connecting the molecular sensitization to the observed chemical sensitivity):

```typst
Multiple chemical sensitivity (MCS, also termed SAMA — Syndrome d'Activation Multi-organe
par Agents chimiques) co-occurs with ME/CFS at elevated rates. The neurobiological basis
involves sensitization of TRPV1 and TRPA1 by prior inflammation or oxidative stress,
lowering their activation thresholds below ordinary chemical concentrations @Molot2023.
TRPA1 is the primary sensor for fragrances, allyl isothiocyanate-containing compounds, and
volatile organic chemicals; TRPV1 responds to capsaicin-like molecules and thermal/acid
stimuli @Macpherson2007. In ME/CFS, chronic elevated ROS and prostaglandin production
(Sections @sec:ch15-oxidative-stress) provides the sensitizing milieu. MCS is thus not a
separate condition but an expression of the same TRP sensitization process driving pain and
allodynia in ME/CFS.
```

**Citations:** `@Molot2023`, `@Macpherson2007`

---

## Integration Target 4: RBC deformability and neural oxygen delivery

**Location:** Section on neurological manifestations of impaired perfusion, or cerebrovascular section.

**Suggested brief addition:**

```typst
Oxygen delivery to neural tissue is further compromised by reduced red blood cell
deformability documented in ME/CFS patients @Saha2019. Stiffened RBCs impair capillary
transit through the brain microvasculature, potentially compounding the cerebral blood
flow reduction from neurovascular uncoupling. The mechanism may involve dysregulation of
Piezo1, the mechanically-activated cation channel that governs RBC volume homeostasis via
KCa3.1 (Gardos) channel activation @Cahalan2015.
```

**Citations:** `@Saha2019`, `@Cahalan2015`

---

## Priority Order

1. **HIGH:** Add `@Moriyama2005` and `@Li2021` to the existing TRPV1/capsaicin mention at ~line 1041 — citation addition to existing text, minimal effort.
2. **MEDIUM:** Add MCS/SAMA TRP mechanism paragraph to sensory hypersensitivity section.
3. **LOW:** Add Piezo2/proprioception note to coordination/ataxia section if one exists.
4. **LOW:** Add RBC deformability/Piezo1 note to cerebrovascular section.

---

## BibTeX Keys Used

| Key | Section Target |
|-----|----------------|
| `@Moriyama2005` | Capsaicin/TRPV1 desensitization note |
| `@Li2021` | Capsaicin/TRPV1 desensitization note |
| `@Szczot2018` | Proprioceptive dysfunction section |
| `@Molot2023` | Chemical sensitivity/MCS section |
| `@Macpherson2007` | Chemical sensitivity/MCS section |
| `@Saha2019` | Neural oxygen delivery section |
| `@Cahalan2015` | Neural oxygen delivery section |

---

## Notes for chapter-integrator

- ch08 is 1854 lines. Locate the TRPV1 mention at ~line 1041 by searching for "TRPV1-expressing nociceptors".
- The chemical sensitivity/MCS sections may need to be located by searching for "chemical" or "sensitivity" in the file.
- ch08 uses Typst syntax. The existing style mixes hypothesis boxes and narrative prose.
- Avoid adding hypothesis boxes for these citations — they are supporting evidence for existing claims, best integrated as prose or brief notes within existing environments.
- Macpherson2007 correct DOI is `10.1038/nature05544` (NOT 10.1172/JCI32087 as originally listed).
