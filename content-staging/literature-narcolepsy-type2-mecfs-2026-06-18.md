# Narcolepsy Type 2 / Orexin — ME/CFS Cross-Disease Literature Survey

**Date:** 2026-06-18
**Research stream:** `narcolepsy-type2-mecfs`
**Status:** First pass — needs integration

---

## Search Strategy

| # | Query | DB | Results | Relevant |
|---|-------|----|---------|----------|
| 1 | (narcolepsy type 2) AND (chronic fatigue syndrome OR ME/CFS OR myalgic encephalomyelitis) | PubMed | 3 | 3 |
| 2 | (orexin OR hypocretin) AND (chronic fatigue OR ME/CFS OR myalgic encephalomyelitis) | PubMed | 24 | ~8 |
| 3 | (narcolepsy) AND (neuroinflammation OR autoimmune) AND (hypocretin/orexin) AND (T cell OR antibody OR cytokine) | PubMed | 128 | ~5 |
| 4 | (orexin) AND (mitochondria OR mitochondrial) AND (metabolism OR energy) | PubMed | 60 | ~4 |
| 5 | (COVID-19 OR SARS-CoV-2) AND (narcolepsy OR orexin OR hypocretin) | PubMed | 73 | ~3 |
| 6 | (narcolepsy type 2 OR NT2) AND (hypocretin OR CSF orexin) | PubMed | 291 | ~4 |
| 7 | post-infectious narcolepsy AND (H1N1 OR Pandemrix) | PubMed | 0 | — |
| 8 | narcolepsy AND post-viral AND immune | PubMed | 0 | — |

**Total papers identified:** ~18 (13 selected for detailed annotation)
**URLs scraped:** PubMed E-utilities API (batch queries) — not previously registered in scrape registry

---

## Key Uncertainty Note

**No paper directly studies the NT2 ⇔ ME/CFS overlap.** The connection is inferred from separate bodies of literature: (a) orexin deficiency in fatigue, (b) autoimmune destruction of orexin neurons (NT1), (c) the intermediate-orexin gray zone (NT2), (d) shared post-viral triggers. This is a *mechanistic hypothesis space*, not an established clinical association.

---

## Paper-by-Paper Annotations

---

### Paper 1: LopezAmador 2025 — Orexin System in ME/CFS: Integrative Review

```
=== LopezAmador 2025 — Orexin System in ME/CFS
    / *Full Citation:*: López-Amador N, López-Morán A, Corrales-García A. Integrative Review of the Orexin System in ME/CFS: From Neuroinflammation to Metabolic Dysregulation. Explor Neurosci. 2025;5:1004112.
    / *DOI:*: 10.37349/ent.2025.1004112 (⚠ not fully verified)
    / *Certainty:*: Low (0.35) — narrative review, n/a, small journal
    / *Key Findings:*:
        - Reviewed 27 studies linking orexin/hypocretin to ME/CFS-relevant pathways
        - Orexin neuron loss/ dysfunction could explain sleep fragmentation, fatigue, autonomic instability in ME/CFS
        - Proposes orexin as a hub connecting neuroinflammation → metabolic dysregulation → energy failure
        - Notes orexin-A suppresses inflammation via OX1R on microglia (anti-neuroinflammatory)
        - Suggests orexin replacement therapy as a potential ME/CFS treatment avenue
    / *Conclusion:*: Orexin system dysfunction plausibly contributes to ME/CFS pathophysiology, but direct evidence (CSF orexin in ME/CFS patients) is lacking.
    / *Limitations:*: Narrative review, not systematic; no new data; speculative mechanism proposal
```

### Paper 2: Grossberg 2011 — Inflammation-Induced Lethargy and Orexin Neuron Suppression

```
=== Grossberg 2011 — Inflammation-Induced Lethargy and Orexin Suppression
    / *Full Citation:*: Grossberg AJ, Zhu X, Bhardwaj V, et al. Inflammation-induced lethargy is mediated by suppression of orexin neuron activity. J Neurosci. 2011;31(31):11376-11386.
    / *DOI:*: 10.1523/JNEUROSCI.2311-11.2011
    / *Certainty:*: High (0.75) — J Neurosci, n=animals, mechanistic, replicated in other labs
    / *Key Findings:*:
        - IL-1β and TNF-α administration suppresses orexin neuron firing in lateral hypothalamus
        - LPS-induced inflammation reduces Fos activation in orexin neurons → reduced arousal
        - Orexin neuron suppression causally links peripheral inflammation to behavioral lethargy
        - Chemogenetic activation of orexin neurons reverses inflammation-induced lethargy
    / *Conclusion:*: Inflammatory cytokines actively suppress orexin neuron activity, producing fatigue/lethargy. This is a direct molecular pathway connecting immune activation (as in ME/CFS) to reduced orexin signaling.
    / *Limitations:*: Animal model only; human translation needed; acute LPS model vs chronic ME/CFS
```

### Paper 3: Gaykema 2009 — LPS Suppresses Orexin Neurons in Sickness Behavior

```
=== Gaykema 2009 — LPS Suppresses Orexin Neurons in Sickness Behavior
    / *Full Citation:*: Gaykema RPA, Nguyen XM, Goehler LE. Lipopolysaccharide induces c-Fos activation in cardiac vagal preganglionic neurons and suppresses hypothalamic orexin neuron activity. Brain Behav Immun. 2009;23(4):532-543.
    / *DOI:*: 10.1016/j.bbi.2009.01.003
    / *Certainty:*: Medium (0.6) — BBI, peer-reviewed, animal model, replicated in Grossberg et al.
    / *Key Findings:*:
        - LPS challenge suppresses Fos activation in orexin neurons
        - Vagal afferent signaling mediates the inflammation → orexin suppression pathway
        - Orexin neuron suppression contributes to sickness-induced somnolence and fatigue
    / *Conclusion:*: Immune activation suppresses orexin neurons via vagal afferent pathways, providing a neural circuit mechanism for fatigue in inflammatory states.
    / *Limitations:*: Animal model; acute LPS; does not assess chronic low-grade inflammation
```

### Paper 4: Weymann 2014 — Orexin and Chemotherapy-Induced Fatigue

```
=== Weymann 2014 — Orexin and Chemotherapy-Induced Fatigue
    / *Full Citation:*: Weymann KB, Wood LJ, Zhu X, Marks DL. Orexin mediates fatigue in a mouse model of chemotherapy-induced fatigue. Brain Behav Immun. 2014;40:e15.
    / *DOI:*: 10.1016/j.bbi.2014.05.031 (conference abstract; full paper published)
    / *Certainty:*: Medium (0.5) — abstract/ short report; animal model
    / *Key Findings:*:
        - Chemotherapy (paclitaxel) reduces orexin neuron activity in mice
        - Orexin supplementation reverses chemotherapy-induced fatigue-like behavior
        - Fatigue severity correlates with degree of orexin suppression
    / *Conclusion:*: Orexin suppression is a final common pathway for fatigue from diverse stressors (chemotherapy, inflammation).
    / *Limitations:*: Mouse model; chemotherapy-specific; very small study
```

### Paper 5: Ruhrländer 2025 — Orexin in PASC (Post-Acute Sequelae of COVID-19)

```
=== Ruhrländer 2025 — Orexin, Autonomic, and Cardiometabolic Dysfunction in PASC
    / *Full Citation:*: Ruhrländer K, Kirchberger V, Guggemos W, et al. Orexin, Autonomic, and Cardiometabolic Dysfunction in Post-Acute Sequelae of COVID-19. Biomedicines. 2025;13(6):1302.
    / *DOI:*: 10.3390/biomedicines13061302
    / *Certainty:*: Medium (0.45) — MDPI journal; cohort study; n moderate
    / *Key Findings:*:
        - Reduced plasma orexin-A levels in PASC patients with fatigue
        - Orexin levels correlated with autonomic dysfunction severity
        - Lower orexin associated with worse cardiometabolic parameters
    / *Conclusion:*: Orexin deficiency may contribute to fatigue in long COVID/PASC, suggesting shared mechanism with narcolepsy-type fatigue.
    / *Limitations:*: Plasma vs CSF orexin; moderate sample size; MDPI journal quality concerns
```

### Paper 6: Heinicke 2025 — Plasma Orexin-A in COVID-19 ICU Patients

```
=== Heinicke 2025 — Plasma Orexin-A in COVID-19 ICU Patients
    / *Full Citation:*: Heinicke N, Spieth PM, von Dossow-Hanfstingl V, et al. Plasma orexin-A concentrations in patients with COVID-19 admitted to the intensive care unit: a prospective observational study. BJA Open. 2025;14:100306.
    / *DOI:*: 10.1016/j.bjao.2025.100306
    / *Certainty:*: Medium (0.55) — BJA Open, prospective, n=~50
    / *Key Findings:*:
        - Plasma orexin-A is detectable in COVID-19 ICU patients
        - Orexin levels correlate with sedation requirements
        - Suggests orexin system involvement in COVID-19 encephalopathy
    / *Conclusion:*: SARS-CoV-2 infection can perturb orexin signaling, though mechanism unclear.
    / *Limitations:*: Plasma measures; ICU setting (confounded by sedation, critical illness); no long-term follow-up for persistent fatigue
```

### Paper 7: Rauf 2025 — Orexin Deficiency in Narcolepsy (Comprehensive Review)

```
=== Rauf 2025 — Orexin Deficiency in Narcolepsy: Molecular Mechanisms and Emerging Therapeutics
    / *Full Citation:*: Rauf R, Asif S, AlSaafeen A, et al. Orexin Deficiency in Narcolepsy: Molecular Mechanisms, Clinical Phenotypes, and Emerging Therapeutic Frontiers. Brain Behav. 2025;15(10):e70984.
    / *DOI:*: 10.1002/brb3.70984
    / *Certainty:*: Medium (0.5) — Brain Behav, narrative review, 50 refs
    / *Key Findings:*:
        - Over 90% of NT1 patients have CSF orexin-A <110 pg/mL; HLA-DQB1*06:02 in >98%
        - Postmortem: up to 95% loss of orexin neurons in lateral hypothalamus
        - Intermediate orexin levels (110-200 pg/mL) found in some NT2 and idiopathic hypersomnia patients
        - This "gray zone" challenges binary diagnostic threshold
        - Danavorexton (OX2R agonist) showed +11.1 points on Maintenance of Wakefulness Test in NT1
        - Orevin dysfunction linked to 40% depression, 30% anxiety comorbidity in NT1
    / *Conclusion:*: Orexin deficiency is central to NT1; NT2 occupies a diagnostically ambiguous space with intermediate orexin levels. Recent OX2R agonist trials suggest feasibility of receptor-level restoration.
    / *Limitations:*: Narrative review; no new data; NT2 section limited
```

### Paper 8: Constantinescu 2011 — Orexin in MS Fatigue (Null Finding)

```
=== Constantinescu 2011 — Orexin-A Not Reduced in MS Fatigue
    / *Full Citation:*: Constantinescu CS, Niepel G, Patterson M, et al. Orexin A (hypocretin-1) levels are not reduced while cocaine/amphetamine regulated transcript levels are increased in the cerebrospinal fluid of patients with multiple sclerosis: no correlation with fatigue and sleepiness. J Neurol Sci. 2011;307(1-2):127-131.
    / *DOI:*: 10.1016/j.jns.2011.04.024
    / *Certainty:*: Medium-high (0.65) — J Neurol Sci, n=100 total (34 MS + 60 controls), peer-reviewed
    / *Key Findings:*:
        - CSF orexin-A NOT reduced in MS patients compared to non-inflammatory controls
        - No correlation between CSF orexin-A and fatigue scores
        - CART (cocaine/amphetamine-regulated transcript) was elevated in MS
        - Orexin-A was slightly decreased in other inflammatory neurological diseases
    / *Conclusion:*: **Null finding.** Orexin deficiency does not explain fatigue in MS, a disease with known neuroinflammation. This is important as a counterexample: not all neuroinflammatory fatigue involves orexin suppression.
    / *Limitations:*: MS-specific; does not rule out orexin involvement in ME/CFS; CSF orexin may not capture hypothalamic orexin tone
```

### Paper 9: Dauvilliers 2011 — Pain in Narcolepsy with Cataplexy

```
=== Dauvilliers 2011 — High Pain Frequency in Narcolepsy with Cataplexy
    / *Full Citation:*: Dauvilliers Y, Bayard S, Shneerson JM, et al. High pain frequency in narcolepsy with cataplexy. Sleep Med. 2011;12(6):572-577.
    / *DOI:*: 10.1016/j.sleep.2011.01.010
    / *Certainty:*: Medium (0.6) — Sleep Med, n=67 NT1 + controls, multicenter case-control
    / *Key Findings:*:
        - 32.8% of NT1 patients experience pain at least monthly vs 17.9% controls
        - Chronic pain significantly underestimated by physicians
        - Depression and sleep disturbance were determinants of pain
        - Orexin loss may impair endogenous pain modulation (orexin modulates nociception)
    / *Conclusion:*: Pain is a neglected symptom in narcolepsy, possibly due to loss of orexin-mediated nociceptive control. Parallel to pain in ME/CFS.
    / *Limitations:*: NT1 only (not NT2); questionnaire-based; cross-sectional
```

### Paper 10: Nardone 2011 — Cortical Hypoexcitability in Post-Traumatic Sleepiness (Orexin Link)

```
=== Nardone 2011 — Cortical Hypoexcitability in Post-Traumatic EDS (Orexin Link)
    / *Full Citation:*: Nardone R, Bergmann J, Kunz A, et al. Cortical excitability changes in patients with sleep-wake disturbances after traumatic brain injury. J Neurotrauma. 2011;28(7):1165-1171.
    / *DOI:*: 10.1089/neu.2010.1748
    / *Certainty:*: Medium-low (0.4) — J Neurotrauma, n=11-14 per group, small
    / *Key Findings:*:
        - Objective EDS after TBI linked to increased resting motor threshold and SICI
        - Pattern mirrors cortical hypoexcitability seen in narcolepsy
        - Authors suggest this reflects deficiency of the excitatory orexin system
    / *Conclusion:*: Cortical hypoexcitability pattern consistent with orexin deficiency occurs in post-traumatic EDS, suggesting that acquired orexin dysfunction can be a final common pathway for hypersomnia from different causes.
    / *Limitations:*: TMS measures (indirect); very small groups; no CSF orexin measurement
```

### Paper 11: Horiuchi 2015 — Carnitine Deficiency, Orexin Dysfunction, and Fatigue

```
=== Horiuchi 2015 — Carnitine Deficiency, Orexin Dysregulation, and Fatigue
    / *Full Citation:*: Horiuchi M, Nakakuma M, Arimura E, et al. Experimental approach to analysis of the relationship between food environments and lifestyle-related diseases, including cardiac hypertrophy, fatty liver, and fatigue symptoms. Nihon Eiseigaku Zasshi. 2015;70(2):110-114.
    / *DOI:*: 10.1265/jjh.70.110
    / *Certainty:*: Low (0.3) — Japanese hygiene journal; review/ opinions; small animal component
    / *Key Findings:*:
        - Carnitine-deficient mice showed orexin neuron activity disturbance under fasting
        - This was linked to fatigue symptoms
        - Human epidemiological study: narcolepsy associated with CPT1B (carnitine palmitoyltransferase 1B) polymorphism
    / *Conclusion:*: Links fatty acid metabolism (carnitine, CPT1B) to orexin neuron function and fatigue/narcolepsy. CPT1B is involved in mitochondrial fatty acid oxidation.
    / *Limitations:*: Low-impact journal; small animal study; review-style paper
```

### Paper 12: Ito 2023 — Orexin Deficiency and REM Sleep Architecture in Narcolepsy

```
=== Ito 2023 — Orexin Deficiency and REM Sleep Architecture
    / *Full Citation:*: Ito H, Fukatsu N, Rahaman SM, et al. Deficiency of orexin signaling during sleep is involved in abnormal REM sleep architecture in narcolepsy. Proc Natl Acad Sci USA. 2023;120(41):e2301951120.
    / *DOI:*: 10.1073/pnas.2301951120
    / *Certainty:*: High (0.8) — PNAS, n=animals + human data, high-impact
    / *Key Findings:*:
        - Orexin deficiency during sleep directly causes REM sleep dysregulation (fragmented REM, SOREM)
        - Orexin knockout mice show narcolepsy-like REM abnormalities
        - Sleep-state instability in orexin deficiency includes disrupted NREM-REM cycling
    / *Conclusion:*: Orexin deficiency directly causes the sleep fragmentation characteristic of narcolepsy. In ME/CFS, similar sleep fragmentation is seen, raising the question of orexin involvement.
    / *Limitations:*: Predominantly animal model; orexin-KO mice (complete deficiency) vs potential partial deficiency in ME/CFS
```

### Paper 13: Lopez 2023 — T-cell Autoimmunity in Narcolepsy

```
=== Lopez 2023 — T-cell Autoimmunity Drives Orexin Neuron Loss in Narcolepsy
    / *Full Citation:*: Lopez R, Barateau L, Evangelista E, Dauvilliers Y. T-cell autoimmunity in narcolepsy type 1: current evidence and future directions. Nat Sci Sleep. 2023;15:157-169.
    / *DOI:*: 10.2147/NSS.S401979
    / *Certainty:*: Medium (0.6) — Nat Sci Sleep, review, well-referenced
    / *Key Findings:*:
        - CD8+ and CD4+ T cells targeting hypocretin/orexin identified in NT1
        - Autoimmune destruction of orexin neurons is established mechanism for NT1
        - HLA-DQB1*06:02 association strongest of any sleep disorder
        - Post-H1N1 (Pandemrix) narcolepsy surge confirmed autoimmune trigger
        - COVID-19 reported as potential new trigger (case reports emerging)
    / *Conclusion:*: Narcolepsy is an autoimmune disease targeting orexin neurons. Post-viral triggers (H1N1, potentially SARS-CoV-2) initiate T-cell-mediated destruction of lateral hypothalamus orexin neurons. This autoimmune mechanism could theoretically produce graded orexin loss (mild in NT2, severe in NT1).
    / *Limitations:*: Review; NT2 autoimmune mechanism remains less well-characterized than NT1
```

### Paper 14: Germain 2025 — Comprehensive Autoantibody Profiling in ME/CFS (Null for Orexin)

```
=== Germain 2025 — Comprehensive Autoantibody Profiling in ME/CFS (Null)
    / *Full Citation:*: Germain A, Levine SM, Peterson DL, et al. Comprehensive autoantibody profiling in myalgic encephalomyelitis/chronic fatigue syndrome (ME/CFS). J Transl Med. 2025;23:374. (PMC11943395)
    / *DOI:*: 10.1186/s12967-025-06466-z (⚠ approximate)
    / *Certainty:*: Medium (0.6) — J Transl Med, n=moderate, well-characterized cohort
    / *Key Findings:*:
        - Comprehensive autoantibody screen in ME/CFS found no specific autoantibody signature
        - No anti-orexin or anti-hypocretin antibodies detected
        - Mostly null study — no strong evidence for humoral autoimmunity against neural targets in ME/CFS
    / *Conclusion:*: **Null finding for anti-orexin antibodies in ME/CFS.** The autoimmune mechanism of narcolepsy (anti-orexin neuron T cells) does not appear to have a humoral autoantibody analog in ME/CFS.
    / *Limitations:*: Autoantibody screen only; does not rule out T-cell mediated mechanisms; may miss cell-surface or conformation-dependent epitopes; relatively small panel of autoantigens tested
```

---

## Synthesis: What the Literature Collectively Says

### Direct overlap (NT2 + ME/CFS): 0 papers
No study has directly measured CSF orexin, orexin neuron integrity, or OX2R function in ME/CFS patients. The connection is entirely inferred.

### Strongest evidence for a link:
1. **Inflammation suppresses orexin neurons** — Grossberg 2011, Gaykema 2009 (animal models, corroborated)
2. **NT1 is an autoimmune disease** triggered by infection (H1N1, Pademrix) targeting orexin neurons — Lopez 2023, Rauf 2025
3. **Orexin deficiency causes fatigue/sleepiness** — Ito 2023, Dauvilliers 2011
4. **Orexin-A reduced in PASC fatigue** — Ruhrländer 2025 (preliminary human data)
5. **Orexin system plausibly linked to ME/CFS pathophysiology** — LopezAmador 2025 (integrative review)

### Weakest / contradicting evidence:
1. **CSF orexin not reduced in MS fatigue** — Constantinescu 2011 (null finding in related neuroinflammatory disorder)
2. **No anti-orexin autoantibodies in ME/CFS** — Germain 2025 (null)
3. **NT2 orexin levels are intermediate, not clearly deficient** — Rauf 2025 (diagnostic ambiguity)

### Net assessment:
The literature supports a **plausible but unproven** mechanistic connection. The pathway: post-viral trigger → immune activation → orexin neuron dysfunction/suppression → fatigue + sleep fragmentation + autonomic instability. However, ME/CFS may involve orexin *suppression* from chronic inflammation (cytokine-mediated) rather than the autoimmune *destruction* seen in NT1.

---

## Key Gaps Identified

| Gap | Priority | What's Needed |
|-----|----------|---------------|
| CSF orexin-A levels in ME/CFS patients (with LP) | **Critical** | Case-control study: ME/CFS vs healthy vs NT1 vs NT2 |
| OX2R agonist trial in ME/CFS | High | Repurpose danavorexton/oveporexton for ME/CFS fatigue |
| T-cell reactivity to orexin neurons in ME/CFS | High | TCR sequencing; HLA association in ME/CFS |
| Plasma orexin-A correlates with PEM severity | Medium | Challenge study: orexin levels pre/post exercise |
| Orexin neuron imaging in ME/CFS | Medium | PET ligand for orexin neurons (not yet available) |
| Post-COVID narcolepsy incidence | Medium | Epidemiological study: new-onset NT2 post-COVID |
| CPT1B/ carnitine pathway in ME/CFS orexin link | Low | Genetic association of CPT1B in ME/CFS |

---

## BibTeX Entries

```bibtex
@article{lopezamador2025orexin,
  author        = {López-Amador, N and López-Morán, A and Corrales-García, A},
  title         = {Integrative Review of the Orexin System in {ME/CFS}: From Neuroinflammation to Metabolic Dysregulation},
  journal       = {Explor Neurosci},
  year          = 2025,
  volume        = 5,
  pages         = {1004112},
  doi           = {10.37349/ent.2025.1004112},
  certainty     = {0.35},
  note          = {⚠ not fully verified},
  research_stream = {narcolepsy-type2-mecfs}
}

@article{grossberg2011lethargy,
  author        = {Grossberg, AJ and Zhu, X and Bhardwaj, V and others},
  title         = {Inflammation-induced lethargy is mediated by suppression of orexin neuron activity},
  journal       = {J Neurosci},
  year          = 2011,
  volume        = 31,
  number        = 31,
  pages         = {11376--11386},
  doi           = {10.1523/JNEUROSCI.2311-11.2011},
  certainty     = {0.75},
  research_stream = {narcolepsy-type2-mecfs}
}

@article{gaykema2009orexinlps,
  author        = {Gaykema, RPA and Nguyen, XM and Goehler, LE},
  title         = {Lipopolysaccharide induces {c-Fos} activation in cardiac vagal preganglionic neurons and suppresses hypothalamic orexin neuron activity},
  journal       = {Brain Behav Immun},
  year          = 2009,
  volume        = 23,
  number        = 4,
  pages         = {532--543},
  doi           = {10.1016/j.bbi.2009.01.003},
  certainty     = {0.6},
  research_stream = {narcolepsy-type2-mecfs}
}

@article{weymann2014chemoorexin,
  author        = {Weymann, KB and Wood, LJ and Zhu, X and Marks, DL},
  title         = {Orexin mediates fatigue in a mouse model of chemotherapy-induced fatigue},
  journal       = {Brain Behav Immun},
  year          = 2014,
  volume        = 40,
  pages         = {e15},
  doi           = {10.1016/j.bbi.2014.05.031},
  certainty     = {0.5},
  research_stream = {narcolepsy-type2-mecfs}
}

@article{ruhrlander2025orexinpasc,
  author        = {Ruhrländer, K and Kirchberger, V and Guggemos, W and others},
  title         = {Orexin, Autonomic, and Cardiometabolic Dysfunction in Post-Acute Sequelae of {COVID-19}},
  journal       = {Biomedicines},
  year          = 2025,
  volume        = 13,
  number        = 6,
  pages         = {1302},
  doi           = {10.3390/biomedicines13061302},
  certainty     = {0.45},
  research_stream = {narcolepsy-type2-mecfs}
}

@article{heinicke2025orexincovid,
  author        = {Heinicke, N and Spieth, PM and von Dossow-Hanfstingl, V and others},
  title         = {Plasma orexin-{A} concentrations in patients with {COVID-19} admitted to the intensive care unit: a prospective observational study},
  journal       = {BJA Open},
  year          = 2025,
  volume        = 14,
  pages         = {100306},
  doi           = {10.1016/j.bjao.2025.100306},
  certainty     = {0.55},
  research_stream = {narcolepsy-type2-mecfs}
}

@article{rauf2025orexinnarcolepsy,
  author        = {Rauf, R and Asif, S and AlSaafeen, A and others},
  title         = {Orexin Deficiency in Narcolepsy: Molecular Mechanisms, Clinical Phenotypes, and Emerging Therapeutic Frontiers},
  journal       = {Brain Behav},
  year          = 2025,
  volume        = 15,
  number        = 10,
  pages         = {e70984},
  doi           = {10.1002/brb3.70984},
  certainty     = {0.5},
  research_stream = {narcolepsy-type2-mecfs}
}

@article{constantinescu2011orexinmsnull,
  author        = {Constantinescu, CS and Niepel, G and Patterson, M and others},
  title         = {Orexin {A} (hypocretin-1) levels are not reduced while cocaine/amphetamine regulated transcript levels are increased in the cerebrospinal fluid of patients with multiple sclerosis: no correlation with fatigue and sleepiness},
  journal       = {J Neurol Sci},
  year          = 2011,
  volume        = 307,
  number        = {1-2},
  pages         = {127--131},
  doi           = {10.1016/j.jns.2011.04.024},
  certainty     = {0.65},
  research_stream = {narcolepsy-type2-mecfs}
}

@article{dauvilliers2011painnarcolepsy,
  author        = {Dauvilliers, Y and Bayard, S and Shneerson, JM and others},
  title         = {High pain frequency in narcolepsy with cataplexy},
  journal       = {Sleep Med},
  year          = 2011,
  volume        = 12,
  number        = 6,
  pages         = {572--577},
  doi           = {10.1016/j.sleep.2011.01.010},
  certainty     = {0.6},
  research_stream = {narcolepsy-type2-mecfs}
}

@article{nardone2011corticaleds,
  author        = {Nardone, R and Bergmann, J and Kunz, A and others},
  title         = {Cortical excitability changes in patients with sleep-wake disturbances after traumatic brain injury},
  journal       = {J Neurotrauma},
  year          = 2011,
  volume        = 28,
  number        = 7,
  pages         = {1165--1171},
  doi           = {10.1089/neu.2010.1748},
  certainty     = {0.4},
  research_stream = {narcolepsy-type2-mecfs}
}

@article{horiuchi2015carnitineorexin,
  author        = {Horiuchi, M and Nakakuma, M and Arimura, E and others},
  title         = {Experimental approach to analysis of the relationship between food environments and lifestyle-related diseases, including cardiac hypertrophy, fatty liver, and fatigue symptoms},
  journal       = {Nihon Eiseigaku Zasshi},
  year          = 2015,
  volume        = 70,
  number        = 2,
  pages         = {110--114},
  doi           = {10.1265/jjh.70.110},
  certainty     = {0.3},
  research_stream = {narcolepsy-type2-mecfs}
}

@article{ito2023orexinrem,
  author        = {Ito, H and Fukatsu, N and Rahaman, SM and others},
  title         = {Deficiency of orexin signaling during sleep is involved in abnormal {REM} sleep architecture in narcolepsy},
  journal       = {Proc Natl Acad Sci USA},
  year          = 2023,
  volume        = 120,
  number        = 41,
  pages         = {e2301951120},
  doi           = {10.1073/pnas.2301951120},
  certainty     = {0.8},
  research_stream = {narcolepsy-type2-mecfs}
}

@article{lopez2023tcellnarcolepsy,
  author        = {Lopez, R and Barateau, L and Evangelista, E and Dauvilliers, Y},
  title         = {T-cell autoimmunity in narcolepsy type 1: current evidence and future directions},
  journal       = {Nat Sci Sleep},
  year          = 2023,
  volume        = 15,
  pages         = {157--169},
  doi           = {10.2147/NSS.S401979},
  certainty     = {0.6},
  research_stream = {narcolepsy-type2-mecfs}
}

@article{germain2025autoantibodymecfs,
  author        = {Germain, A and Levine, SM and Peterson, DL and others},
  title         = {Comprehensive autoantibody profiling in myalgic encephalomyelitis/chronic fatigue syndrome ({ME/CFS})},
  journal       = {J Transl Med},
  year          = 2025,
  volume        = 23,
  pages         = {374},
  note          = {⚠ DOI approximate; PMID 11943395},
  certainty     = {0.6},
  research_stream = {narcolepsy-type2-mecfs}
}
```

---

## Annotated Bibliography Entries (for Appendix H)

```
=== LopezAmador 2025 — Integrative Review of the Orexin System in ME/CFS
    / *Full Citation:*: López-Amador N, López-Morán A, Corrales-García A. Integrative Review of the
       Orexin System in ME/CFS: From Neuroinflammation to Metabolic Dysregulation. Explor Neurosci.
       2025;5:1004112.
    / *DOI:*: 10.37349/ent.2025.1004112 (⚠ not fully verified)
    / *Certainty:*: Low (0.35)
    / *Key Findings:*:
        - Reviewed 27 studies linking orexin/hypocretin to ME/CFS-relevant pathways
        - Orexin neuron dysfunction could explain sleep fragmentation, fatigue, autonomic
          instability in ME/CFS
        - Proposes orexin as hub connecting neuroinflammation → metabolic dysregulation → energy failure
        - Orexin-A suppresses inflammation via OX1R on microglia (anti-neuroinflammatory)
    / *Conclusion:*: Orexin system dysfunction plausibly contributes to ME/CFS pathophysiology,
       but direct CSF orexin data in ME/CFS patients is lacking.
    / *Limitations:*: Narrative review; speculative; no new data.

=== Grossberg 2011 — Inflammation Suppresses Orexin Neurons → Lethargy
    / *Full Citation:*: Grossberg AJ, Zhu X, Bhardwaj V, et al. Inflammation-induced lethargy is
       mediated by suppression of orexin neuron activity. J Neurosci. 2011;31(31):11376-11386.
    / *DOI:*: 10.1523/JNEUROSCI.2311-11.2011
    / *Certainty:*: High (0.75)
    / *Key Findings:*:
        - IL-1β and TNF-α suppress orexin neuron firing in lateral hypothalamus
        - LPS reduces Fos activation in orexin neurons
        - Chemogenetic activation of orexin neurons reverses inflammation-induced lethargy
    / *Conclusion:*: Direct molecular pathway linking peripheral immune activation to reduced
       orexin signaling and fatigue. Central to the ME/CFS-orexin hypothesis.
    / *Limitations:*: Animal model; acute LPS vs chronic ME/CFS.

=== Gaykema 2009 — Vagal Pathway for Orexin Suppression During Sickness
    / *Full Citation:*: Gaykema RPA, Nguyen XM, Goehler LE. LPS induces c-Fos activation in
       cardiac vagal preganglionic neurons and suppresses hypothalamic orexin neuron activity.
       Brain Behav Immun. 2009;23(4):532-543.
    / *DOI:*: 10.1016/j.bbi.2009.01.003
    / *Certainty:*: Medium (0.6)
    / *Key Findings:*:
        - Vagal afferent signaling mediates inflammation → orexin suppression
        - Orexin neuron suppression contributes to sickness-induced somnolence
    / *Conclusion:*: Identifies vagal afferent route as neural circuit for immune-to-orexin
       communication, relevant to ME/CFS autonomic dysfunction.
    / *Limitations:*: Animal model; acute LPS.

=== Weymann 2014 — Orexin in Chemotherapy Fatigue
    / *Full Citation:*: Weymann KB, Wood LJ, Zhu X, Marks DL. Orexin mediates fatigue in a mouse
       model of chemotherapy-induced fatigue. Brain Behav Immun. 2014;40:e15.
    / *DOI:*: 10.1016/j.bbi.2014.05.031
    / *Certainty:*: Medium (0.5)
    / *Key Findings:*:
        - Chemotherapy reduces orexin activity; orexin supplementation reverses fatigue
        - Fatigue severity correlates with orexin suppression degree
    / *Conclusion:*: Orexin suppression is final common pathway for fatigue from diverse stressors.
    / *Limitations:*: Mouse model; chemotherapy-specific.

=== Ruhrländer 2025 — Orexin in Long COVID/PASC Fatigue
    / *Full Citation:*: Ruhrländer K, Kirchberger V, Guggemos W, et al. Orexin, Autonomic, and
       Cardiometabolic Dysfunction in Post-Acute Sequelae of COVID-19. Biomedicines. 2025;13(6):1302.
    / *DOI:*: 10.3390/biomedicines13061302
    / *Certainty:*: Medium (0.45)
    / *Key Findings:*:
        - Reduced plasma orexin-A in PASC patients with fatigue
        - Orexin correlates with autonomic dysfunction severity
    / *Conclusion:*: Possible orexin contribution to long COVID fatigue
    / *Limitations:*: Plasma measures; moderate n; MDPI journal.

=== Heinicke 2025 — Plasma Orexin-A in COVID-19 ICU
    / *Full Citation:*: Heinicke N, Spieth PM, von Dossow-Hanfstingl V, et al. Plasma orexin-A
       concentrations in patients with COVID-19 admitted to the intensive care unit. BJA Open.
       2025;14:100306.
    / *DOI:*: 10.1016/j.bjao.2025.100306
    / *Certainty:*: Medium (0.55)
    / *Key Findings:*:
        - Orexin-A correlates with sedation requirements in COVID-19 ICU
    / *Conclusion:*: SARS-CoV-2 can perturb orexin signaling
    / *Limitations:*: ICU confounders; no long-term follow-up.

=== Rauf 2025 — Orexin Deficiency in Narcolepsy (Review)
    / *Full Citation:*: Rauf R, Asif S, AlSaafeen A, et al. Orexin Deficiency in Narcolepsy:
       Molecular Mechanisms, Clinical Phenotypes, and Emerging Therapeutic Frontiers. Brain Behav.
       2025;15(10):e70984.
    / *DOI:*: 10.1002/brb3.70984
    / *Certainty:*: Medium (0.5)
    / *Key Findings:*:
        - 90%+ NT1 have CSF orexin-A <110 pg/mL; HLA-DQB1*06:02 in >98%
        - NT2 shows intermediate orexin levels (110-200 pg/mL)
        - Danavorexton (OX2R agonist) +11.1 points MWT in NT1
    / *Conclusion:*: Orexin deficiency is central in NT1; NT2 occupies a diagnostically
       ambiguous gray zone with intermediate orexin levels.
    / *Limitations:*: Narrative review; NT2 data limited.

=== Constantinescu 2011 — CSF Orexin NOT Reduced in MS Fatigue (Null)
    / *Full Citation:*: Constantinescu CS, Niepel G, Patterson M, et al. Orexin A levels are not
       reduced while CART levels are increased in CSF of MS patients: no correlation with fatigue
       and sleepiness. J Neurol Sci. 2011;307(1-2):127-131.
    / *DOI:*: 10.1016/j.jns.2011.04.024
    / *Certainty:*: Medium-high (0.65)
    / *Key Findings:*:
        - CSF orexin-A NOT reduced in MS; no correlation with fatigue
        - CART elevated in MS
        - Orexin slightly decreased in other inflammatory neurological diseases
    / *Conclusion:*: **Null finding.** Orexin deficiency does not explain fatigue in MS —
       important counterexample.
    / *Limitations:*: MS-specific; does not rule out orexin involvement in ME/CFS.

=== Dauvilliers 2011 — Pain in Narcolepsy
    / *Full Citation:*: Dauvilliers Y, Bayard S, Shneerson JM, et al. High pain frequency in
       narcolepsy with cataplexy. Sleep Med. 2011;12(6):572-577.
    / *DOI:*: 10.1016/j.sleep.2011.01.010
    / *Certainty:*: Medium (0.6)
    / *Key Findings:*:
        - 32.8% NT1 patients have chronic pain vs 17.9% controls
        - Pain underestimated by physicians
    / *Conclusion:*: Orexin loss impairs endogenous pain modulation — parallel to ME/CFS pain.
    / *Limitations:*: NT1 only; questionnaire-based.

=== Nardone 2011 — Cortical Hypoexcitability in Post-Traumatic EDS
    / *Full Citation:*: Nardone R, Bergmann J, Kunz A, et al. Cortical excitability changes in
       patients with sleep-wake disturbances after traumatic brain injury. J Neurotrauma.
       2011;28(7):1165-1171.
    / *DOI:*: 10.1089/neu.2010.1748
    / *Certainty:*: Medium-low (0.4)
    / *Key Findings:*:
        - Cortical hypoexcitability in post-TBI EDS mirrors narcolepsy pattern
        - Suggests acquired orexin deficiency as common pathway
    / *Conclusion:*: Acquired orexin dysfunction may be common pathway for hypersomnia from
       different causes.
    / *Limitations:*: TMS only; small groups; no CSF orexin.

=== Horiuchi 2015 — Carnitine/Orexin/Fatigue Link
    / *Full Citation:*: Horiuchi M, Nakakuma M, Arimura E, et al. Experimental approach to
       analysis of the relationship between food environments and lifestyle-related diseases...
       Nihon Eiseigaku Zasshi. 2015;70(2):110-114.
    / *DOI:*: 10.1265/jjh.70.110
    / *Certainty:*: Low (0.3)
    / *Key Findings:*:
        - Carnitine deficiency → orexin neuron disturbance → fatigue in mice
        - Narcolepsy associated with CPT1B (carnitine metabolism) polymorphism
    / *Conclusion:*: Links fatty acid/mitochondrial metabolism to orexin function.
    / *Limitations:*: Low-impact journal; small animal data.

=== Ito 2023 — Orexin Deficiency and REM Architecture
    / *Full Citation:*: Ito H, Fukatsu N, Rahaman SM, et al. Deficiency of orexin signaling
       during sleep is involved in abnormal REM sleep architecture in narcolepsy. Proc Natl Acad
       Sci USA. 2023;120(41):e2301951120.
    / *DOI:*: 10.1073/pnas.2301951120
    / *Certainty:*: High (0.8)
    / *Key Findings:*:
        - Orexin deficiency directly causes REM fragmentation and SOREMs
        - Sleep-state instability in orexin deficiency
    / *Conclusion:*: Orexin deficiency directly produces narcoleptic sleep fragmentation —
       similar fragmentation seen in ME/CFS raises orexin question.
    / *Limitations:*: Animal model; complete orexin deficiency.

=== Lopez 2023 — T-cell Autoimmunity in Narcolepsy
    / *Full Citation:*: Lopez R, Barateau L, Evangelista E, Dauvilliers Y. T-cell autoimmunity
       in narcolepsy type 1: current evidence and future directions. Nat Sci Sleep. 2023;15:157-169.
    / *DOI:*: 10.2147/NSS.S401979
    / *Certainty:*: Medium (0.6)
    / *Key Findings:*:
        - CD8+/CD4+ T cells targeting hypocretin/orexin in NT1
        - HLA-DQB1*06:02 strongest genetic association in sleep medicine
        - Post-H1N1 (Pandemrix) surge confirmed autoimmune trigger
        - COVID-19 emerging as potential trigger
    / *Conclusion:*: Narcolepsy is autoimmune disease targeting orexin neurons with post-viral
       trigger. Graded orexin loss could explain NT1/NT2 spectrum.
    / *Limitations:*: NT2 autoimmune mechanism less characterized.

=== Germain 2025 — ME/CFS Autoantibody Profiling (Null for Orexin)
    / *Full Citation:*: Germain A, Levine SM, Peterson DL, et al. Comprehensive autoantibody
       profiling in myalgic encephalomyelitis/chronic fatigue syndrome (ME/CFS). J Transl Med.
       2025;23:374.
    / *DOI:*: ⚠ approximate; PMID 11943395
    / *Certainty:*: Medium (0.6)
    / *Key Findings:*:
        - Comprehensive autoantibody screen: no specific signature found
        - No anti-orexin or anti-hypocretin antibodies detected
    / *Conclusion:*: **Null finding** — no humoral autoantibody evidence for anti-orexin
       autoimmunity in ME/CFS. Does not rule out T-cell mechanisms.
    / *Limitations:*: Antibody panel; no T-cell assays; potential missed epitopes.
```

---

## Key Mechanistic Themes

| Theme | Evidence Strength | Papers |
|-------|-------------------|--------|
| **Cytokine-mediated orexin suppression** → fatigue | Strong (animal) | Grossberg 2011, Gaykema 2009, Weymann 2014 |
| **Autoimmune orexin neuron destruction** (NT1) | Strong (human) | Lopez 2023, Rauf 2025 |
| **NT2 as intermediate orexin deficiency** | Moderate | Rauf 2025 (gray zone hypothesis) |
| **Orexin signaling → energy metabolism** (CPT1B/carnitine) | Weak | Horiuchi 2015 |
| **Orexin in post-viral fatigue** (COVID) | Emerging | Ruhrländer 2025, Heinicke 2025 |
| **Orexin in pain modulation** (nociception loss) | Moderate (human) | Dauvilliers 2011 |
| **Null: orexin not reduced in all fatigue** | Moderate | Constantinescu 2011, Germain 2025 |
| **Orexin agonist as potential therapeutic** | Hypothetical | Rauf 2025 (danavorexton in NT1) |

---

## URLs Scraped (for Registry Update)

| URL | Source | Notes |
|-----|--------|-------|
| PubMed E-utilities API (batch: ~8 queries) | pubmed/eutils | 2026-06-18 — Narcolepsy/orexin/ME/CFS multi-query literature search |

**Not previously registered.** Add to scrape-registry.md under new section "Narcolepsy Type 2 / Orexin Literature Search".

---

## Summary for Quick Reference

| Metric | Value |
|--------|-------|
| Total papers found | ~18 identified, 13 annotated |
| Direct NT2↔ME/CFS papers | 0 |
| Orexin+fatigue mechanism papers | 6 |
| Orexin+COVID+PASC papers | 2 |
| Narcolepsy autoimmunity papers | 2 |
| Null/contradicting papers | 2 |
| Certainty range | 0.3 (low) – 0.8 (high) |
| Key gap | No CSF orexin measured in ME/CFS; no OX2R agonist trial in ME/CFS |
