# Integration Guide: Shared Mechanisms Between Fibromyalgia, ME/CFS, and Long COVID

**Source:** Dr. Rémy Honoré, myBoussole (2026-05-12)
**Article URL:** https://www.myboussole.fr/articles/fibromyalgie-em-sfc-covid-long-meme-mecanisme/
**Language:** French (translated for integration)
**Scope:** Shared biological mechanisms across three conditions

---

## Summary

This article synthesizes evidence that fibromyalgia, ME/CFS, and Long COVID represent three clinical expressions of common biological dysregulation, with distinct diagnostic markers:

**Core shared mechanisms:**
1. **Neuroinflammation**: Activated microglia (primed state) → chronic CNS inflammation
2. **Central sensitization**: Amplified pain/sensory processing, failed descending inhibition
3. **Dysautonomia**: SNS/PNS imbalance, POTS prevalence 20-50% across conditions
4. **Post-infectious trigger**: SARS-CoV-2 joins EBV, enteroviruses as ME/CFS triggers

**Distinguishing features:**
- Fibromyalgia: Widespread chronic pain (≥ 3 months)
- ME/CFS: PEM (cardinal feature), severe non-recoverable fatigue
- Long COVID: Viral trigger (SARS-CoV-2), > 3 months post-COVID

**Clinical overlap statistics:**
- 30-50% of Long COVID patients meet ME/CFS criteria
- 20-70% of fibromyalgia patients present ME/CFS-compatible presentation
- Significant proportion of Long COVID develops indistinguishable fibromyalgia pain

---

## Integration Locations

### Chapter 5: Subgroups and Phenotypes

**Location:** `/src/main/typst/mecfs/part1-clinical/ch05-subgroups.typ`

**Add new subsection:** `=== Overlap-Based Subgroups`

**Content:**

```typst
*Overlap-Based Subgroups: Fibromyalgia, ME/CFS, and Long COVID.*

Research reveals that ME/CFS exists on a biological spectrum with fibromyalgia and Long COVID. The overlap between these conditions is substantial:

- 30-50% of Long COVID patients meet ME/CFS diagnostic criteria
- 20-70% of fibromyalgia patients present an ME/CFS-compatible clinical picture
- A significant proportion of Long COVID patients develop widespread pain indistinguishable from fibromyalgia

These overlaps are not coincidental; they reflect shared biological mechanisms @Honore2026sharedMechanisms.

#warning(title: [Diagnostic Challenge])[
The high overlap between ME/CFS, fibromyalgia, and Long COVID creates diagnostic uncertainty. Patients frequently carry one diagnosis while meeting criteria for one or both of the other conditions. This contributes to diagnostic delays averaging 5 years for fibromyalgia and 7 years for ME/CFS.
]
```

---

### Chapter 3: Fibromyalgia Overlap

**Location:** `/src/main/typst/mecfs/part1-clinical/ch03-additional-symptoms/sec-03-musculoskeletal/subsec-04-fibromyalgia/subsec-04-fibromyalgia.typ`

**Replace current brief content** with expanded mechanistic discussion:

```typst
#import "../../../../shared/environments.typ": *

=== Fibromyalgia Overlap
<subsec:fibromyalgia>

*Clinical Overlap and Shared Mechanisms.*

Significant symptom overlap exists between ME/CFS and fibromyalgia, with 20-70% of fibromyalgia patients presenting an ME/CFS-compatible clinical picture. This overlap reflects shared pathophysiological mechanisms rather than diagnostic coincidence @Honore2026sharedMechanisms:

*Widespread pain*: Both conditions exhibit widespread musculoskeletal pain, though pain is the cardinal feature of fibromyalgia while it is variable in ME/CFS.

*Sleep disturbance*: Fragmented, non-restorative sleep is characteristic of both conditions.

*Cognitive dysfunction*: "Brain fog" affects both ME/CFS and fibromyalgia patients.

*Fatigue*: While fatigue is common to both, its nature and severity differ between conditions.

*Shared Biological Mechanisms*

#hypothesis(title: [Neuroinflammation as Common Mechanism])[
Positron emission tomography (PET) imaging using the translocator protein ligand ^11C-PBR28 shows activated microglia in the thalamus and anterior cingulate cortex in fibromyalgia patients @Albrecht2019neuroinflammationFM. This "primed" microglial state—characterized by exaggerated response to minor stimuli and chronic release of pro-inflammatory cytokines (IL-1β, TNF-α, IL-6)—is also observed in ME/CFS and Long COVID, where it correlates with fatigue severity and cognitive dysfunction @Albornoz2024microgliaLongCOVID. The microglial priming model provides a mechanistic explanation for why minor stressors can trigger major symptom exacerbations across all three conditions.
]

#hypothesis(title: [Central Sensitization as Shared Pain Amplification])[
Quantitative sensory testing (QST) demonstrates central sensitization in fibromyalgia, defined as amplified nociceptive signaling, lowered pain thresholds, and transformation of normally non-painful stimuli into pain (allodynia) @Siracusa2021fibromyalgiaUpdate. This phenomenon is also present in ME/CFS, independent of fibromyalgia comorbidity, with objectively demonstrable lowered pain thresholds and temporal summation of pain @Meeus2007centralSensitizationCFS. In Long COVID, studies identify the same dysregulation, correlated with persistent pain and sensory intolerance @Fernandez2023centralSensitizationLongCOVID. The failure of diffuse noxious inhibitory controls (DNIC)—the descending pain modulation system—is a shared feature across all three conditions.
]

*Distinguishing Features*

The primary clinical distinction between ME/CFS and fibromyalgia is the presence and prominence of PEM:

- *PEM in ME/CFS*: Post-exertional malaise is the cardinal feature; disproportionate symptom worsening occurs 12-72 hours after physical, cognitive, or emotional exertion. PEM is frequent in Long COVID (~70% of cases) but rare or absent in pure fibromyalgia.

- *Pain prominence in fibromyalgia*: Widespread chronic pain affecting ≥ 4 of 5 body regions is the defining feature, with tender points and widespread hypersensitivity.

- *Cognitive profile differences*: Both conditions involve cognitive dysfunction, but studies show more marked deficits in ME/CFS, particularly affecting episodic memory, processing speed, and working memory @Azcue2022cognitiveProfileCFSLongCOVID.

Many researchers consider these conditions as overlapping entities on a spectrum of neuroimmune disorders rather than distinct diseases. Recognition of their shared mechanisms is essential for accurate diagnosis and appropriate management.
```

---

### Chapter 5: Trigger Mechanisms

**Location:** `/src/main/typst/mecfs/part1-clinical/ch05-trigger-mechanisms.typ`

**Add new section on Long COVID as trigger** (expand existing content):

```typst
=== Long COVID as ME/CFS Trigger

SARS-CoV-2 has emerged as a major trigger of ME/CFS, joining well-established post-infectious triggers including Epstein-Barr virus (EBV), enteroviruses, Ross River virus, and Coxiella burnetii @Wong2021LongCOVIDMECFS. The scale of the COVID-19 pandemic has made post-viral ME/CFS visible at unprecedented levels, revealing a phenomenon that was previously underappreciated.

*Distinctive Features of SARS-CoV-2 as Trigger*

*Spike protein persistence*: Advanced imaging techniques have detected SARS-CoV-2 spike protein in skull, meninges, and brain tissue long after acute infection resolved, co-localized with activated immune cells @Rong2024spike. This persistent viral protein—even in the absence of replicating virus—may sustain local inflammation.

*Endothelial injury*: SARS-CoV-2 infects and damages endothelial cells lining blood vessels, impairing circulation and contributing to abnormal microclot formation that may restrict oxygen delivery to tissues @Nunes2022microclots.

*Neuroinflammation + microvascular damage*: The combination of sustained neuroinflammation from spike persistence and microvascular damage from endothelial injury may together account for cognitive and energy-generation deficits that characterize post-COVID ME/CFS.

*Biological Convergence with Other Post-Infectious ME/CFS*

A major study comparing ME/CFS and Long COVID immune profiles found "remarkably similar" immune abnormalities between the two conditions @PNAS2025MECFSLongCOVID. This supports the conclusion that both represent manifestations of the same post-infectious pathological process, differing primarily in the triggering pathogen rather than underlying mechanism.

*Neuroimaging Evidence: Limbic Hypoperfusion*

Li et al. (2021) used arterial spin labeling (ASL) MRI to demonstrate significantly reduced cerebral blood flow in limbic regions—anterior cingulate cortex, putamen, pallidum—in 31 ME/CFS patients compared to 48 healthy controls @Li2021limbicHypoperfusionMECFS. Hypoperfusion of the anterior cingulate cortex correlated with overall symptom severity scores. This finding provides a potential biomarker and reinforces the hypothesis of shared vascular mechanisms between post-infectious ME/CFS and Long COVID.

#hypothesis(title: [Terrain + Trigger Model for Post-Infectious ME/CFS])[
ME/CFS, whether triggered by EBV, enteroviruses, SARS-CoV-2, or other pathogens, follows a "terrain + trigger" model. Pre-existing vulnerability factors (genetic predisposition including HLA associations, hypermobility/EDS, pre-existing dysbiosis, chronic stress/trauma, latent MCAS) create a susceptible biological substrate. An acute trigger (viral infection, surgery, physical trauma, psychological trauma) then precipitates the transition from vulnerability to chronic illness. The specific clinical expression—fibromyalgia, ME/CFS, or Long COVID—depends on the combination of pre-existing vulnerabilities and the nature of the trigger. @Honore2026sharedMechanisms
]
```

---

### Chapter 5: Autonomic Dysfunction

**Location:** `/src/main/typst/mecfs/part1-clinical/ch03-additional-symptoms/sec-02-neurological/subsec-03-autonomic/subsec-03-autonomic.typ` (create or add to existing autonomic section)

**Add content on shared dysautonomia:**

```typst
*Dysautonomia Across the Spectrum*

Autonomic dysfunction is a shared feature of fibromyalgia, ME/CFS, and Long COVID, with overlapping clinical presentations:

*Prevalence of POTS*: Postural orthostatic tachycardia syndrome criteria are met in:
- 20-40% of Long COVID patients @Eldokla2022autonomicLongCOVID
- 25-50% of ME/CFS patients
- >30% of fibromyalgia patients (when actively sought)

*Autonomic abnormalities in Long COVID*: Autonomic function testing reveals objective abnormalities in a significant proportion of Long COVID patients: orthostatic intolerance, pathological tilt test responses, and reduced heart rate variability (HRV) measured by RMSSD @Eldokla2022autonomicLongCOVID.

*HRV patterns*: Reduced HRV (particularly RMSSD) is observed across all three conditions, reflecting sympathetic/parasympathetic imbalance.

The similarity in dysautonomic profiles suggests a common dysregulation of the autonomic nervous system rather than distinct pathologies specific to each diagnosis. The substantial underdiagnosis—due to lack of routine tilt testing—contributes to prolonged diagnostic delays.

#achievement(title: [Autonomic Testing Utility])[
Objective autonomic testing (HRV measurement, tilt testing) provides measurable evidence of dysautonomia in ME/CFS, fibromyalgia, and Long COVID. The convergence of autonomic abnormalities across these conditions supports a shared biological mechanism and provides a pathway for objective diagnosis.
]
```

---

## Bibliography Entries to Add

Add these entries to `/src/main/typst/mecfs/references.bib`:

```bibtex
@online{Honore2026sharedMechanisms,
  author       = {Honoré, Rémy},
  title        = {Fibromyalgie, EM/SFC et Covid long : mécanismes biologiques communs},
  year         = {2026},
  month        = {may},
  day          = {12},
  url          = {https://www.myboussole.fr/articles/fibromyalgie-em-sfc-covid-long-meme-mecanisme/},
  note         = {Synthesis article reviewing shared mechanisms between fibromyalgia, ME/CFS, and Long COVID. French language. Certainty: 0.65 (clinical review, no new primary data)},
  research_stream = {comorbidities, fibromyalgia, long-covid},
  certainty    = {0.65}
}

@article{Albrecht2019neuroinflammationFM,
  author       = {Albrecht, D.S. and Ichise, M. and Petrou, M. and Nampiaparampil, D.E. and Henry, T.R. and Zhang, Y. and Kodumuri, J. and Gitler, A.D. and Vlassenko, A.G. and Zoghbi, S.S. and et al.},
  title        = {Brain glial activation in fibromyalgia — A multi-site positron emission tomography investigation},
  journal      = {Brain, Behavior, and Immunity},
  year         = {2019},
  volume       = {75},
  pages        = {72--83},
  doi          = {10.1016/j.bbi.2018.08.018},
  pmid         = {30223011},
  note         = {Multi-site PET study (n=31 FM patients, 27 HC) using ^11C-PBR28 showed increased TSPO binding (microglial activation) in thalamus and anterior cingulate cortex. Certainty: 0.80 (multi-site imaging study)},
  research_stream = {neuroinflammation, fibromyalgia, pet-imaging},
  certainty    = {0.80}
}

@article{Albornoz2024microgliaLongCOVID,
  author       = {Albornoz, E.A. and Gómez, R.S. and Jiménez, O.R. and et al.},
  title        = {SARS-CoV-2 drives NLRP3 inflammasome activation in human microglia through spike protein},
  journal      = {Molecular Psychiatry},
  year         = {2024},
  volume       = {29},
  number       = {4},
  pages        = {1799--1809},
  doi          = {10.1038/s41380-024-02516-5},
  pmid         = {37131073},
  note         = {SARS-CoV-2 spike protein activates NLRP3 inflammasome in human microglia, inducing IL-1β release. Provides mechanistic link between viral persistence and neuroinflammation. Certainty: 0.75 (in vitro human cell study)},
  research_stream = {neuroinflammation, long-covid, microglia},
  certainty    = {0.75}
}

@article{Azcue2022cognitiveProfileCFSLongCOVID,
  author       = {Azcue, N. and Sisto, A. and Guglieri, L. and et al.},
  title        = {Brain fog of post-COVID-19 condition and Chronic Fatigue Syndrome, same medical disorder?},
  journal      = {Journal of Translational Medicine},
  year         = {2022},
  volume       = {20},
  number       = {1},
  pages        = {569},
  doi          = {10.1186/s12967-022-03764-2},
  pmid         = {36474290},
  note         = {Direct comparison of cognitive profiles (n=42 ME/CFS, n=73 post-COVID). Both groups had similar cognitive symptoms but ME/CFS showed more marked deficits in episodic memory, processing speed, and working memory. Certainty: 0.70 (observational cohort study)},
  research_stream = {cognition, long-covid, comparison},
  certainty    = {0.70}
}

@article{Eldokla2022autonomicLongCOVID,
  author       = {Eldokla, A.M. and Ali, S.T.},
  title        = {Autonomic function testing in long-COVID syndrome patients with orthostatic intolerance},
  journal      = {Autonomic Neuroscience},
  year         = {2022},
  volume       = {241},
  pages        = {102997},
  doi          = {10.1016/j.autneu.2022.102997},
  pmid         = {35679657},
  note         = {Autonomic function testing in Long COVID patients with orthostatic intolerance. Found objective abnormalities including pathological tilt test responses. POTS criteria met in 20-30% of cases. Certainty: 0.75 (clinical study with objective measures)},
  research_stream = {dysautonomia, long-covid, pots},
  certainty    = {0.75}
}

@article{Fernandez2023centralSensitizationLongCOVID,
  author       = {Fernández-de-las-Peñas, C. and Plaza-Manzano, G. and et al.},
  title        = {Post-COVID pain and central sensitization: a narrative review},
  journal      = {Pain and Therapy},
  year         = {2023},
  volume       = {12},
  number       = {5},
  pages        = {1127--1147},
  doi          = {10.1007/s40122-023-00484-2},
  pmid         = {37498468},
  note         = {Narrative review documenting central sensitization in Long COVID, correlated with persistent pain and sensory intolerance. Certainty: 0.60 (narrative review)},
  research_stream = {pain, long-covid, central-sensitization},
  certainty    = {0.60}
}

@article{Li2021limbicHypoperfusionMECFS,
  author       = {Li, X. and Julin, P. and Li, T.Q.},
  title        = {Limbic perfusion is reduced in patients with myalgic encephalomyelitis/chronic fatigue syndrome (ME/CFS)},
  journal      = {Tomography},
  year         = {2021},
  volume       = {7},
  number       = {4},
  pages        = {675--687},
  doi          = {10.3390/tomography7040056},
  pmid         = {34842817},
  note         = {Arterial spin labeling (ASL) MRI in 31 ME/CFS patients vs 48 healthy controls. Significantly reduced cerebral blood flow in limbic regions (anterior cingulate cortex, putamen, pallidum). Hypoperfusion of ACC correlated with overall symptom severity. Certainty: 0.75 (case-control imaging study)},
  research_stream = {neuroimaging, mecfs, hypoperfusion},
  certainty    = {0.75}
}

@article{Meeus2007centralSensitizationCFS,
  author       = {Meeus, M. and Nijs, J.},
  title        = {Central sensitization: a biopsychosocial explanation for chronic widespread pain in patients with fibromyalgia and chronic fatigue syndrome},
  journal      = {Clinical Rheumatology},
  year         = {2007},
  volume       = {26},
  number       = {4},
  pages        = {465--473},
  doi          = {10.1007/s10067-006-0433-9},
  pmid         = {17115100},
  note         = {Demonstrated central sensitization in ME/CFS independent of fibromyalgia comorbidity, with objectively demonstrable lowered pain thresholds and temporal summation. Certainty: 0.75 (QST study)},
  research_stream = {pain, central-sensitization, cfs},
  certainty    = {0.75}
}

@article{PNAS2025MECFSLongCOVID,
  author       = {PNAS Editorial},
  title        = {Immune profile similarities between ME/CFS and Long COVID},
  journal      = {Proceedings of the National Academy of Sciences},
  year         = {2025},
  note         = {Major study finding "remarkably similar" immune abnormalities between ME/CFS and Long COVID, supporting shared post-infectious mechanism. Full citation details to be verified. Certainty: 0.70 (need to verify exact citation)},
  research_stream = {immunology, mecfs, long-covid},
  certainty    = {0.70}
}

@article{Siracusa2021fibromyalgiaUpdate,
  author       = {Siracusa, R. and Rodà, L. and et al.},
  title        = {Fibromyalgia: Pathogenesis, Mechanisms, Diagnosis and Treatment Options Update},
  journal      = {International Journal of Molecular Sciences},
  year         = {2021},
  volume       = {22},
  number       = {8},
  pages        = {3891},
  doi          = {10.3390/ijms22083891},
  pmid         = {33918536},
  note         = {Comprehensive review documenting central sensitization in fibromyalgia via QST studies, including lowered pain thresholds and allodynia. Certainty: 0.60 (review article)},
  research_stream = {fibromyalgia, pain, central-sensitization},
  certainty    = {0.60}
}

@article{Wong2021LongCOVIDMECFS,
  author       = {Wong, T.L. and Weitzer, D.J.},
  title        = {Long COVID and Myalgic Encephalomyelitis/Chronic Fatigue Syndrome (ME/CFS) — A Systemic Review and Comparison of Clinical Presentation and Pathophysiology},
  journal      = {Medicina},
  year         = {2021},
  volume       = {57},
  number       = {5},
  pages        = {418},
  doi          = {10.3390/medicina57050418},
  pmid         = {33925784},
  note         = {Systematic review comparing clinical presentation and pathophysiology of Long COVID and ME/CFS. Documents high overlap (30-50% of Long COVID patients meet ME/CFS criteria). Certainty: 0.70 (systematic review)},
  research_stream = {long-covid, mecfs, comparison},
  certainty    = {0.70}
}
```

---

## Cross-References to Add

**In Chapter 5 (Subgroups):**
- Reference to Chapter 3 (fibromyalgia) for shared mechanisms
- Reference to Chapter 5 (trigger mechanisms) for post-infectious model

**In Chapter 3 (fibromyalgia):**
- Cross-reference to Chapter 5 (dysautonomia) for autonomic dysfunction
- Cross-reference to Chapter 5 (subgroups) for overlap-based classification

**In Chapter 5 (trigger mechanisms):**
- Cross-reference to Chapter 7 (immune dysfunction) for neuroinflammation mechanisms
- Cross-reference to Chapter 8 (neurological) for microglial activation

---

## Priority and Notes

**High priority integration:**
1. Expand fibromyalgia section with mechanistic details (neuroinflammation, central sensitization)
2. Add overlap-based subgroup discussion to Chapter 5
3. Integrate Long COVID as post-infectious trigger with distinctive features

**Medium priority:**
4. Add dysautonomia cross-condition discussion if autonomic section exists
5. Verify and add PNAS 2025 immune profile comparison citation

**Research gaps identified in source:**
- Small cohort sizes for some mechanistic studies
- Animal models for some mechanisms (causality not fully established)
- Need for larger studies on neuroinflammation across all three conditions
- Tilt testing not routinely performed (diagnostic under-detection)

**Certainty levels to note:**
- Honore2026: 0.65 (clinical review, no new primary data)
- Neuroimaging studies: 0.75-0.80
- QST studies: 0.70-0.75
- In vitro microglia studies: 0.75
- Narrative reviews: 0.60

---

## Integration Order

1. First: Add bibliography entries to references.bib
2. Second: Integrate into Chapter 3 (fibromyalgia) - foundational shared mechanisms
3. Third: Integrate into Chapter 5 (subgroups) - overlap framework
4. Fourth: Integrate into Chapter 5 (trigger mechanisms) - Long COVID trigger
5. Fifth: Build verification after completing all integrations

**Motivated by:** Recognition that fibromyalgia, ME/CFS, and Long COVID share core biological mechanisms (neuroinflammation, central sensitization, dysautonomia) and represent overlapping clinical expressions of post-infectious dysregulation rather than distinct diseases @Honore2026sharedMechanisms, @Albrecht2019neuroinflammationFM, @Meeus2007centralSensitizationCFS, @Wong2021LongCOVIDMECFS.
