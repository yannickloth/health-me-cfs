# Search Log: REenergizeME — Intermittent Hypoxia-Hyperoxia Treatment (IHHT) in ME/CFS

Date: 2026-08-29
Topic slug: reenergize-me-ihht
Phase: 1 (literature research) of /integrate-topic (MIXED mode)
Trigger: Nochi M, et al. REenergizeME protocol, BMJ Open 2026;16:e117729. NCT07317401.

## Queries

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|
| 1 | PubMed | intermittent hypoxia chronic fatigue syndrome | 15 | 15 | 0 direct (all OSA/fibromyalgia/unrelated; REenergizeME not yet indexed) | 2026-08-29 |
| 2 | PubMed | intermittent hypoxia hyperoxia ME/CFS | 1 | 1 | 1 (Nochi2026 protocol, PMID 42601095) | 2026-08-29 |
| 3 | PubMed | intermittent hypoxic hyperoxic treatment myalgic encephalomyelitis | 0 | 0 | 0 (confirm research gap) | 2026-08-29 |
| 4 | PubMed | IHHT fatigue | 3 | 3 | 1 (Nochi2026), 1 (Doehner2024), 1 (Zha2024) | 2026-08-29 |
| 5 | PubMed | intermittent hypoxia hyperoxia training hypertension | 4 | 4 | 0 (no dedicated hypertension IHHT; dropped) | 2026-08-29 |
| 6 | PubMed | intermittent hypoxic hyperoxic treatment randomized controlled | 9 | 9 | 2 (Serebrovska2019, Afina2021), 1 (Bestavashvili2022) | 2026-08-29 |
| 7 | PubMed | intermittent hypoxia hormesis oxidative stress | 3 | 3 | 1 (Zhang2023) | 2026-08-29 |
| 8 | PubMed | intermittent hypoxia cognitive impairment | 355 | 15 | 0 direct (OSA/sleep-apnea dominated) | 2026-08-29 |
| 9 | PubMed | intermittent hypoxia adverse effects safety | 29 | 8 | 0 direct (OSA-focused) | 2026-08-29 |
| 10 | PubMed | intermittent hypoxia myocardial infarction | 121 | 8 | 0 (OSA/intervention cardiac preconditioning) | 2026-08-29 |
| 11 | PubMed | hypoxia inducible factor chronic fatigue syndrome | 8 | 8 | 0 direct (no HIF-1α×ME/CFS study) | 2026-08-29 |
| 12 | PubMed | HIF-1 alpha myalgic encephalomyelitis | 0 | 0 | 0 (research gap) | 2026-08-29 |
| 13 | PubMed | hypoxia oxidative stress mitochondrial chronic fatigue | 3 | 3 | 0 (already in corpus) | 2026-08-29 |
| 14 | PubMed | intermittent hypoxia mitochondrial biogenesis | 19 | 8 | 0 (mechanism covered via Zhang2023 review) | 2026-08-29 |
| 15 | PubMed | intermittent hypoxia neurocognitive memory impairment | 30 | 10 | 0 (OSA analog; directed to Erdem2026 + She2026) | 2026-08-29 |
| 16 | PubMed | sleep apnea intermittent hypoxia cognitive | 364 | 10 | 0 (pathological analog; directed to Erdem2026) | 2026-08-29 |
| 17 | PubMed | intermittent hypoxia long covid randomized controlled trial | 2 | 2 | 1 (Zha2024), 1 (HBOT already in corpus) | 2026-08-29 |
| 18 | PubMed | intermittent hypoxic hyperoxic training long covid randomized | 0 | 0 | 0 (no published IHHT long-COVID RCT) | 2026-08-29 |
| 19 | PubMed | chronic intermittent hypoxia cardiovascular oxidative stress review | 74 | 8 | 0 (OSA analog; She2026 + Erdem2026) | 2026-08-29 |
| 20 | PubMed | intermittent hypoxia cardiac ischemia preconditioning | 65 | 8 | 0 (mechanism covered via Zhang2023) | 2026-08-29 |
| 21 | PubMed | intermittent hypoxia acute myocardial ischemia arrhythmia | 15 | 6 | 0 (animal preconditioning; not IHHT dosing) | 2026-08-29 |
| 22 | PubMed | intermittent hypoxia oxidative stress inflammation mild severe | 15 | 8 | 1 (She2026) | 2026-08-29 |
| 23 | PubMed | Doehner intermittent hypoxic hyperoxic training long covid | 3 | 3 | 1 (Doehner2024, PMID 39559920) | 2026-08-29 |
| 24 | PubMed | Kapel individualized intermittent hypoxia quality of life covid | 1 | 1 | 1 (Kapel2025, PMID 40095507) | 2026-08-29 |
| 25 | PubMed | Zha intermittent hypoxia dyspnea fatigue covid | 1 | 1 | 1 (Zha2024, PMID 39127085) | 2026-08-29 |

## Inclusion Criteria
- Direct IHHT or intermittent-hypoxia treatment in ME/CFS, chronic fatigue, long COVID, or post-viral fatigue
- Placebo/controlled IHHT trials in any clinical population (safety + efficacy)
- Mechanism/hormesis papers linking mild intermittent hypoxia to HIF-1α, mitochondrial adaptation, redox signaling
- Harm/adverse-effect evidence distinguishing mild hormetic IH from pathological chronic IH (sleep-apnea analog) — MANDATORY
- Peer-reviewed preferred; full text retrieved where open access
- Each paper: bib entry + annotated appendix-h entry

## Exclusion Criteria
- Obstructive sleep apnea treatment papers (chronic pathological IH as disease, not therapy)
- Hyperbaric oxygen therapy (HBOT) papers — separate stream `experimental-hypoxia-virtual-hypoxia-brainstem`, already in corpus (Hadanny2024, Mairal2021, HBOT2025mecfs)
- Altitude/EPO acclimatization physiology (covered by `hypoxia-altitude-hif1a` stream)
- Animal ischemic-preconditioning papers without IHHT dosing relevance
- Non-English abstracts without full text

## Flow
- Total hits: ~1300 (across 25 queries; heavily overlapping, OSA-dominated)
- After deduplication: ~40 unique candidate PMIDs screened
- After title/abstract screen: 12
- After full-text review: 9 + 1 anchor protocol = 10 bib entries
- Excluded with reasons:
  - Most "intermittent hypoxia" hits = OSA as disease (chronic pathological IH) — used only Erdem2026 + She2026 as the pathological-contrast harm evidence
  - HBOT papers (39545965 etc.): different mechanism (pressurized hyperoxia), already in corpus
  - Animal preconditioning papers: no IHHT clinical-dosing relevance beyond Zhang2023 review
  - 42492693 (necroptosis long COVID), 41005218 (BMSC exosomes), 41181726 (fascia): irrelevant mechanisms

## Final Included (10)
| Key | Population | Design | Category |
|-----|-----------|--------|----------|
| Nochi2026REenergizeME | ME/CFS (protocol) | RCT protocol | 1 anchor |
| Doehner2024IHHTLongCovid | long COVID | controlled pilot (n=145) | 2 |
| Kapel2025IHHC | PCC/long COVID | open cohort (n=199) | 2 |
| Zha2024IntermittentHypoxia | PASC | controlled RCT (n=95) | 2 |
| Serebrovska2019IHHTvsIHT | prediabetes | placebo RCT (n=55) | 3 |
| Bestavashvili2022IHHEmetabolic | metabolic syndrome | sham RCT (n=65) | 3 |
| Afina2021IHHTLipidInflammation | metabolic syndrome | sham RCT (n=65, same cohort) | 3 |
| Zhang2023HypoxiaConditioning | mechanism review | review | 4 |
| Erdem2026HIF1aOSA | OSA (pathological IH) | case-control | 5 |
| She2026IHParadigms | rats (IH paradigms) | animal | 5 |

## Search Terms by Database
- PubMed free-text: intermittent hypoxia; intermittent hypoxia-hyperoxia; IHHT; IHHC; hypoxic conditioning; hormesis; myalgic encephalomyelitis; chronic fatigue syndrome; long COVID; post-acute sequelae; hypoxia-inducible factor; HIF-1α; mitochondrial biogenesis; adverse effects; safety; cognitive; oxidative stress
- Metadata: esummary/efetch (PMID/DOI/PMCID verified per paper); Europe PMC full-text + PDF for OA papers
- E-utilities: https://eutils.ncbi.nlm.nih.gov/entrez/eutils/
- Google Scholar: not required — PubMed + Europe PMC coverage sufficient; the 3 anchor long-COVID refs (protocol refs 39-41) traced directly from REenergizeME reference list

## Notes
- **Direct IHHT in ME/CFS = confirmed research gap.** Zero published studies. The only "IHHT×ME/CFS" PubMed hit is the REenergizeME protocol itself (PMID 42601095). No pilot, no results.
- **No published IHHT long-COVID RCT.** The 3 anchor studies are: Doehner2024 (controlled but non-randomized), Kapel2025 (open non-controlled cohort), Zha2024 (intermittent-hypoxia, not IHHT, normoxia-controlled RCT). All three are non-blinded; none is a sham/placebo-blinded IHHT trial.
- **Cohort overlap (Instruction B)**: Kapel2025 shares investigators AND commercial device with REenergizeME. Stokholm, Elmengaard, Foldager are co-founders/shareholders of SANA Medical Systems (SANA® Therapy / HypoxBreath®); Olsen RJ and Nochi Z (Danish Pain Research Center, Aarhus) appear on both. REenergizeME's SF-36 vitality effect estimate (+20.5) is extrapolated from this same team's non-controlled Kapel2025 cohort. Doehner2024 (Berlin) and Zha2024 (Wuhan) are independent.
- **Mild-vs-pathological IH distinction**: IHHT uses mild hormetic hypoxia (FiO2 9-13%, SpO2 70-90%, minutes/cycle, low frequency). Pathological chronic IH (OSA) is hours/night, high frequency, sustained desaturation → oxidative stress, sympathetic activation, sustained HIF-1α elevation, cognitive harm. Erdem2026 (humans) and She2026 (rats) anchor the harm-contrast.
