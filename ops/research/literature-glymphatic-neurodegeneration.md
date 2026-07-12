# Literature Research: Glymphatic Clearance and Neurodegeneration Risk in ME/CFS

**Date:** 2026-04-19
**Research streams:** Topic A (NE-mediated vasomotion as glymphatic driver) + Topic B (neurodegeneration risk from chronic glymphatic impairment)

---

## Papers Found and Processed

### Already in references.bib (not duplicated)

| Key | Paper | Note |
|-----|-------|------|
| `Xie2013glymphatic` | Xie et al. 2013, Science — sleep drives metabolite clearance | Already present |
| `Wostyn2018glymphatic` | Wostyn & De Deyn 2018, Med Hypotheses — CFS glymphatic hypothesis | Already present |
| `Mohamed2023sleep` | Mohamed et al. 2023, Sleep Med Rev — objective sleep meta-analysis ME/CFS | Already present |
| `Perrin2025glymphatic` | Nemat-Gorgani/Jensen/Davis 2025, IJMS — glymphatic dysregulation ME/CFS | Already present (author field incorrectly lists "Perrin" but DOI matches) |

### New entries added (9 papers)

| BibTeX Key | Authors | Year | Journal | Certainty |
|------------|---------|------|---------|-----------|
| `Hauglund2025neVasomotion` | Hauglund et al. | 2025 | Cell | 0.82 |
| `Fultz2019csfOscillations` | Fultz et al. | 2019 | Science | 0.80 |
| `Holth2019tauSleep` | Holth et al. | 2019 | Science | 0.82 |
| `Ju2017slowWaveAmyloid` | Ju et al. | 2017 | Brain | 0.78 |
| `Lee2015sleepPosition` | Lee et al. | 2015 | J Neurosci | 0.68 |
| `HablitzNedergaard2021glymphatic` | Hablitz & Nedergaard | 2021 | J Neurosci | 0.78 |
| `Zhu2025noradrenergicGlymphatic` | Zhu et al. | 2025 | Mol Psychiatry | 0.62 |
| `Chaganti2025longCovidGlymphatic` | Chaganti et al. | 2025 | BMC Neurology | 0.55 |
| `Tang2025covidSleepDTIALPS` | Tang et al. | 2025 | Nat Sci Sleep | 0.60 |

---

## Null / Research Gap Findings

- No study has directly measured glymphatic clearance (DTI-ALPS, contrast-MRI) in ME/CFS patients.
- No study has measured tau, phospho-tau, or amyloid-beta in ME/CFS CSF or plasma specifically to test neurodegeneration risk.
- The ME/CFS biomarker systematic review (Mohamed 2023, Fitzcharles 2023) does not identify NfL or tau among current biomarker candidates.
- The "NfL elevated in ME/CFS" hypothesis remains untested as of 2026-04-19.

---

## Mechanistic Chain (Topic A)

```
Locus coeruleus (LC) dysfunction in ME/CFS
   → Reduced/irregular NE release during NREM sleep [Walitt 2024: DHPG deficit]
   → Impaired infraslow NE oscillations
   → Reduced vasomotion amplitude in cerebral arteries [Hauglund 2025]
   → Reduced CSF pump effect (CBV/CSF anti-correlation disrupted)
   → Impaired glymphatic convection [Fultz 2019 — human; Hauglund 2025 — mechanistic]
   → Accumulation of tau, amyloid-β, other metabolic waste
   + NREM SWA deficit in ME/CFS [Mohamed 2023 meta-analysis]
   → Reduced EEG slow-wave drive on CSF oscillations [Fultz 2019]
   → Further reduces clearance

Compounding factor: OI/POTS
   → Reduced cerebral perfusion and arterial pulsatility
   → Reduced glymphatic flow [HablitzNedergaard2021 — 50% reduction with reduced pulsatility]
```

---

## Neurodegeneration Risk Evidence Chain (Topic B)

```
Sleep deprivation (1 night) → +50% CSF tau in humans [Holth 2019]
SWA disruption (acoustic) → +amyloid-β40/42, +tau in CSF [Ju 2017]
Wakefulness (chronic) → +90% ISF tau, tau spreading [Holth 2019]
ME/CFS sleep: reduced SWA, impaired NREM microstructure [Mohamed 2023]
→ PREDICTION: ME/CFS patients have elevated CSF tau + amyloid-β (UNTESTED)
→ PREDICTION: Long-duration ME/CFS associates with NfL elevation (UNTESTED)

Closest tested analog: Long COVID PASC
DTI-ALPS reduced in Long COVID + cognitive impairment [Chaganti 2025]
DTI-ALPS correlates with sleep quality in post-COVID [Tang 2025]
→ ME/CFS DTI-ALPS study is methodologically feasible and scientifically warranted
```

---

## Drug Warning: Glymphatic-Impairing Medications Used in ME/CFS

| Drug class | Used in ME/CFS for | Glymphatic effect |
|------------|-------------------|-------------------|
| Zolpidem (Z-drugs) | Sleep | Suppresses NE oscillations ~50% [Hauglund 2025] |
| Orexin antagonists (suvorexant) | Sleep | LC pathway effects [Zhu 2025] |
| Low-dose quetiapine | Sleep/anxiety | Alpha-1 adrenergic blockade may reduce vasomotion [Zhu 2025] |
| Doxazosin, prazosin | OI/PTSD nightmares | Alpha-1 blockade mechanism [Zhu 2025] |

This warning is clinical-grade speculative — the mechanism is established in mice, clinical magnitude in humans is unknown.

---

## Research Gaps Identified (for ch25b-proposed-studies.typ)

1. **ME/CFS DTI-ALPS study** — measure glymphatic function in ME/CFS patients vs. healthy controls; correlate with sleep quality, OI severity, brain fog severity. Blueprint: Chaganti 2025 / Tang 2025.
2. **ME/CFS CSF tau/amyloid study** — measure tau, p-tau, amyloid-beta, NfL in ME/CFS CSF (or blood). Holth 2019 provides quantitative prediction.
3. **NE oscillation profiling in ME/CFS sleep** — does ME/CFS NREM show impaired NE oscillation patterns? Requires fiber photometry or noradrenaline-sensitive fMRI.
4. **Longitudinal neurodegeneration tracking** — are long-duration ME/CFS patients at elevated Alzheimer's risk? Registry/cohort linkage study.
5. **Sleep position intervention** — does consistent lateral sleep improve outcomes in ME/CFS? Feasibility RCT based on Lee 2015.

---

## Integration Recommendations for chapter-integrator

### Primary: ch08-neurological.typ (Part II — Neurological)
- Add glymphatic dysfunction subsection or hypothesis
- Cite: Hauglund2025neVasomotion, Fultz2019csfOscillations, HablitzNedergaard2021glymphatic
- Environment: `hypothesis` — "LC-NE dysfunction impairs glymphatic clearance in ME/CFS"
- Certainty: 0.40 (mechanistically well-grounded but direct ME/CFS evidence absent)

### Secondary: ch13-integrative-models.typ (Part II — Integrative)
- Add to existing integrative models: glymphatic as convergence point of LC-NE, OI, and sleep dysfunction
- Cite: Hauglund2025neVasomotion, HablitzNedergaard2021glymphatic
- Environment: `hypothesis`

### Secondary: ch25b-proposed-studies.typ (Part IV — Proposed Studies)
- Add 3 proposed studies from research gaps above
- Cite: Chaganti2025longCovidGlymphatic, Tang2025covidSleepDTIALPS, Holth2019tauSleep

### Secondary: ch17-lifestyle-interventions.typ (Part III — Lifestyle)
- Lateral sleep position recommendation (cautious, preclinical)
- Cite: Lee2015sleepPosition
- Environment: `observation` with caveat of animal data only

### Warning note: ch18-emerging-therapies.typ or ch15-medications-systems.typ
- Drug warning: Z-drugs and alpha-adrenergic blockers may impair glymphatic clearance
- Cite: Zhu2025noradrenergicGlymphatic, Hauglund2025neVasomotion
- Environment: `warning` — speculative but clinically relevant

### Hypothesis registry: hypothesis-registry.typ
- Add: "Glymphatic clearance impairment as contributor to ME/CFS brain fog and neurodegeneration risk"
- Falsifiable predictions:
  1. ME/CFS patients show reduced DTI-ALPS index vs. controls
  2. ME/CFS patients show elevated CSF tau vs. healthy controls
  3. Long-duration ME/CFS correlates with elevated plasma NfL
  4. Improving NREM SWA in ME/CFS (e.g., via sodium oxybate) reduces brain fog
