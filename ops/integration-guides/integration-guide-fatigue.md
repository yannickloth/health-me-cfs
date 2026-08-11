# Integration Guide: Fatigue as a Core Symptom of ME/CFS

**Topic:** fatigue (standalone core symptom)
**Target section:** `src/main/typst/mecfs/part1-clinical/ch03-core-symptoms/sec-00-fatigue/` (NEW)
**Date:** 2026-08-11
**Agent:** literature-integrator

---

## Papers Integrated

| # | Bib Key | First Author | Year | Theme | Certainty |
|---|---------|-------------|------|-------|-----------|
| 1 | @Park2024fatigueSeverity | Park JW | 2024 | Fatigue severity meta-analysis (n=7,088) | 0.75 |
| 2 | @Liu2025geneticFatigueActigraphy | Liu PZ | 2025 | Genetic overlap + actigraphy (n=63,428) | 0.70 |
| 3 | @Lee2025fatigueDominantLC | Lee JS | 2025 | Post-viral fatigue characterization (n=100) | 0.60 |
| 4 | @BileviciuteLjungar2020ICF | Bileviciute-Ljungar I | 2020 | ICF core set — fatigue vs fatigability (n=100) | 0.55 |
| 5 | @EatonFitch2026registryQoL | Eaton-Fitch N | 2026 | Registry clusters + HRQoL (n=2,873) | 0.65 |
| 6 | @Tankisi2024fatigueFatigability | Tankisi H | 2024 | Neurophysiological framework: fatigue vs fatigability | 0.60 |
| 7 | @Eguchi2026EVmiRNAfatigue | Eguchi A | 2026 | EV-miRNA biomarker differentiates ME/CFS from ICF/depression | 0.50 |
| 8 | @HabermannHorstmeier2025symptomClusters | Habermann-Horstmeier L | 2025 | Symptom clusters → neuroimmune/autonomic axes (n=748) | 0.60 |
| 9 | @Bedard2026centralFatigability | Bedard P | 2026 | Central fatigability by fMRI/EEG/EMG (n=15) | 0.60 |
| 10 | @Campos2022PVFassessment | Campos MC | 2022 | Post-viral fatigue assessment framework | 0.55 |

---

## Recommended Chapter Structure for `sec-00-fatigue/index.typ`

The new section should be structured to cover these themes in order:

### Theme I: Fatigue Definition and Construct Validity
- **Conceptual distinction:** fatigue (subjective perception) vs fatigability (objective performance decline) — @Tankisi2024fatigueFatigability, @BileviciuteLjungar2020ICF
- **ICF framework:** fatigue (b1300 energy level) and fatigability (b4552) are separate WHO categories — @BileviciuteLjungar2020ICF
- **Multi-domain assessment framework:** subjective questionnaires + objective performance tests + cognitive assessment — @Campos2022PVFassessment

### Theme II: Fatigue Severity
- **Quantitative severity:** pooled fatigue severity 77.9/100 in ME/CFS RCTs; physical (74.3) and cognitive (74.2) exceed mental fatigue (70.1) — @Park2024fatigueSeverity
- **Measurement heterogeneity:** severity varies from 54.2 (ICC-defined) to 88.6 (CIS scale) depending on criteria and tool — @Park2024fatigueSeverity
- **Post-viral parallel:** fatigue-dominant Long COVID shows coherent, severe fatigue across instruments — @Lee2025fatigueDominantLC

### Theme III: Fatigability as a Distinct Measurable Domain
- **Central fatigability:** ME/CFS brain fails to upregulate motor output during sustained grip (fMRI/EEG/EMG evidence) — @Bedard2026centralFatigability
- **Objective correlates:** actigraphy shows decreased movement (d=0.220) and lower activity/wrist-temperature amplitudes — @Liu2025geneticFatigueActigraphy
- **Genetic continuum:** CFS-associated SNVs predict population-level fatigue and actigraphy, supporting a shared biological substrate — @Liu2025geneticFatigueActigraphy

### Theme IV: Fatigue Phenotypes and Subgroups
- **Symptom clusters:** fatigue is embedded within coherent Brain, Gut-Immune, and Autonomic clusters — not a unitary construct — @HabermannHorstmeier2025symptomClusters
- **Severity-based subgroups:** K-means clustering identifies 4 clusters differing by case definition stringency; ICC-defined patients have worst HRQoL — @EatonFitch2026registryQoL
- **Biological differentiation:** EV-miRNA signature (87% sensitivity, 94% specificity) distinguishes ME/CFS fatigue from idiopathic chronic fatigue and depression — @Eguchi2026EVmiRNAfatigue

---

## Suggested Environment Types by Theme

| Theme | Environment | Rationale |
|-------|------------|-----------|
| I: Definition | #clinical-finding | Established conceptual distinctions; high consensus |
| II: Severity | #achievement | Quantitative severity benchmarks from meta-analysis; largest available |
| III: Fatigability | #clinical-finding | Objective evidence, but small samples (n=15 for Bedard); central origin finding |
| IV: Phenotypes | #hypothesis | Clusters/structure suggest subgroups; replication pending |
| Cross-cutting | #open-question | Gaps: no ME/CFS-specific fatigue instrument; no large-scale daily-variability data |

---

## Suggested Typst Content Blocks

### Theme I — Fatigue vs Fatigability Definition
```typst
#clinical-finding(title: [Fatigue and Fatigability Are Distinct Constructs])[
Fatigue — the subjective perception of exhaustion, lack of energy, and reduced
motivation — is formally distinct from fatigability — the objective decline in
performance during sustained effort @Tankisi2024fatigueFatigability. The World
Health Organization's International Classification of Functioning (ICF)
codifies this distinction: \'energy level' (b1300) captures fatigue as a
body-function impairment, while \'fatigability' (b4552) captures the
performance dimension @BileviciuteLjungar2020ICF. Both are near-universally
impaired in ME/CFS — fatigue in 100% of patients and fatigability in 96% in
the ICF core-set validation cohort @BileviciuteLjungar2020ICF.
]
```

### Theme II — Fatigue Severity
```typst
#achievement(title: [Fatigue Severity in ME/CFS: A Quantitative Benchmark])[
A systematic review and meta-analysis of 60 randomized controlled trials
(n=7,088 ME/CFS patients) estimated pooled fatigue severity at 77.9 out of
100 (95% CI 74.7–81.0) @Park2024fatigueSeverity. Physical fatigue (74.3)
and cognitive fatigue (74.2) exceeded mental fatigue (70.1). Severity varied
substantially by assessment instrument — from 54.2 (Mental Fatigue Scale) to
88.6 (Checklist Individual Strength) — underscoring the need for standardized
measurement @Park2024fatigueSeverity.

*Consequence:* Clinicians and trialists can benchmark individual patient
fatigue against this pooled estimate. A patient scoring below 70 on a
100-point normalized scale may not qualify for severe-fatigue trials.
] <benchmark:park2024-severity>
```

### Theme III — Central Fatigability
```typst
#clinical-finding(title: [Central Neural Origin of Fatigability])[
Multimodal neuroimaging during a sustained grip-force task revealed that
ME/CFS patients develop fatigue earlier than healthy controls despite
equivalent maximum voluntary force @Bedard2026centralFatigability. Healthy
brains progressively increase motor-cortical and subcortical output to sustain
force; ME/CFS brains show minimal fluctuation — a failure of central motor
drive, not peripheral muscle exhaustion. UK Biobank actigraphy data confirm
objectively reduced movement (Cohen's d=0.220) and blunted activity rhythms
in CFS patients vs 63,133 controls @Liu2025geneticFatigueActigraphy.

*Falsifiable prediction:* Central fatigability in ME/CFS should respond to
central-acting interventions (e.g., dopaminergic or wakefulness-promoting
agents) but not to peripheral ergogenic aids.
] <spec:bedard2026-central-fatigability>
```

### Theme IV — Fatigue Phenotypes
```typst
#speculation(title: [Fatigue Is Embedded Within Coherent Multi-System Symptom Clusters])[
Factor analysis in 748 adults with ME/CFS identified three distinct symptom
clusters — Brain (brain fog, sensory hypersensitivity, visual disturbances,
sleep disturbance, headaches), Gut-Immune (gastrointestinal complaints, food
intolerances, flu-like symptoms, infection susceptibility), and Autonomic
(orthostatic intolerance, palpitations, thermoregulatory dysfunction) — each
with excellent model fit @HabermannHorstmeier2025symptomClusters. Fatigue
was not a separate factor but distributed across domains, suggesting it is a
cross-cutting symptom rather than a discrete cluster. A large Australian
registry (n=2,873) confirmed 4 severity-based subgroups via k-means
clustering @EatonFitch2026registryQoL.

*Falsifiable prediction:* Interventions targeting the primary cluster
(e.g., anti-inflammatory for Gut-Immune-dominant patients) should reduce
fatigue secondarily even without directly targeting fatigue pathways.

*Consequence:* Treating fatigue as a unitary symptom may miss the
cluster-specific mechanisms that drive it in individual patients.
] <spec:fatigue-cluster-embedded>
```

---

## Cross-References to Other Sections

- **To sec-01-pem (already integrated):** This section establishes fatigue as a construct distinct from PEM. Cross-reference: "Fatigue is a continuous subjective perception; PEM is a delayed, disproportionate symptom exacerbation triggered by exertion. The two constructs are definitionally and temporally distinct (@Davenport2023twoSymptoms, @IOM2015redefining)."
- **To severity classification (ch05):** Fatigue severity benchmarks from Park 2024 can calibrate severity-level cutoffs.
- **To biomarkers (ch20):** EV-miRNA signature from Eguchi 2026 as a candidate diagnostic biomarker differentiating ME/CFS fatigue from ICF.
- **To CNS chapters (ch06/ch08):** Bedard 2026 central fatigability finding bridges fatigue to CNS dysfunction.

---

## Gaps to Flag for Future Cycles

1. **No ME/CFS-specific fatigue instrument** — all used instruments (Chalder, MFI, FSS, CIS) were developed for other diseases
2. **No large-scale daily-variability data** — fatigue fluctuates within-day but no EMA/diary studies in ME/CFS fatigue specifically
3. **Fatigue trajectory** — no longitudinal studies of fatigue alone (all include multi-system outcomes)
4. **Subjective-objective discordance for fatigue specifically** — Novak 2024 showed this for dysautonomia but not fatigue per se
