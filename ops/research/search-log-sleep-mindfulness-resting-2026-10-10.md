# Search Log: Sleep, Mindfulness, and Resting in ME/CFS

**Topic slug:** `sleep-mindfulness-resting`
**Date:** 2026-10-10
**Phase:** 1 (Literature Research) — `/integrate-topic`

---

## Rival Framings (Step 0 — set BEFORE searching)

| # | Framing | Claim | Papers found |
|---|---------|-------|--------------|
| F1 | Consensus-adjacent (intervention-efficacy) | Sleep hygiene / mindfulness / meditation / rest improve ME/CFS symptoms and quality of life; unrefreshing sleep is a treatable target. | 5 |
| F2 | Mechanism-skeptic (epiphenomenon) | Unrefreshing sleep is a downstream epiphenomenon of the disease process; behavioural sleep interventions have little/no effect on core ME/CFS symptoms because the sleep disturbance is secondary, not primary insomnia. | 3 |
| F3 | Narrow-efficacy | Mindfulness/meditation improve secondary outcomes (sleep, distress, QoL) but do NOT touch PEM or energy envelope. | 3 |
| F4 | Pacing-debate | Rest/pacing are contested — some evidence pacing helps (energy envelope), some finds it equivalent to or weaker than control. | 2 |

**Per-framing paper tags:**

- **F1** (intervention efficacy): @Chao2021CBTIGulfWar, @Porter2022MindfulnessLongCOVID, @Cossu2025HRVBFLongCOVID, @Windthorst2017HRVBFCFS, @Xie2024QigongCFSProtocol
- **F2** (epiphenomenon / mechanism-skeptic): @Thapaliya2026GlymphaticMECFS, @Mariman2013SleepCFS, @Carta2024HRVBFFibromyalgia (null)
- **F3** (narrow efficacy): @Hausswirth2023NeuroMeditation, @Meng2024MindfulnessFM, @Schmidt2011MBSRFibromyalgia (null primary)
- **F4** (pacing-debate): @Kos2015ActivityPacing, @Meeus2010PainPhysiologyEducation

Note: Thapaliya2026 provides a biological substrate (glymphatic dysfunction) for unrefreshing sleep — it is tagged F2 because it explains the sleep disturbance as disease-driven rather than a primary behavioural insomnia, which is the F2 premise. Carta2024 is a genuine NULL result (HRV-BF no effect in fibromyalgia) and is tagged F2/F3.

---

## Queries

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|
| 1 | PubMed | cognitive behavioral therapy insomnia chronic fatigue syndrome | 29 | 15 | 1 (Chao2021) | 2026-10-10 |
| 2 | PubMed | mindfulness meditation myalgic encephalomyelitis chronic fatigue | 52 | 15 | 3 (Porter2022, Hausswirth2023*, Merkes2010=already-in-corpus) | 2026-10-10 |
| 3 | PubMed | heart rate variability biofeedback chronic fatigue syndrome | 6 | 6 | 4 (Windthorst2017, Carta2024, Cossu2025, Carta2024b-secondary) | 2026-10-10 |
| 4 | PubMed | glymphatic clearance myalgic encephalomyelitis | 4 | 4 | 1 (Thapaliya2026; Wostyn2018 already-in-corpus) | 2026-10-10 |
| 5 | PubMed | unrefreshing sleep chronic fatigue syndrome treatment | 58 | 12 | 1 (Mariman2013) | 2026-10-10 |
| 6 | PubMed | pacing self-management chronic fatigue syndrome randomized controlled trial | 5 | 5 | 3 (Kos2015, Meeus2010, Antcliff2021=not-included) | 2026-10-10 |
| 7 | PubMed | mindfulness meditation fibromyalgia randomized controlled trial | 55 | 12 | 2 (Schmidt2011, Meng2024) | 2026-10-10 |
| 8 | PubMed | mindfulness long covid randomized controlled trial fatigue | 4 | 4 | 1 (Hausswirth2023) | 2026-10-10 |
| 9 | PubMed | insomnia treatment chronic fatigue syndrome randomized trial sleep | 23 | 12 | 1 (Xie2024) | 2026-10-10 |
| 10 | PubMed | meditation mindfulness chronic fatigue syndrome no effect null | 0 | 0 | 0 (NULL result — informative) | 2026-10-10 |
| 11 | PubMed | default mode network meditation autonomic nervous system review | 1 | 1 | 0 (non-English; superseded) | 2026-10-10 |

*Hausswirth2023 surfaced under both query 2 and query 8; counted once.

---

## Inclusion Criteria

- Peer-reviewed primary study, systematic review, meta-analysis, or registered RCT protocol.
- Directly addresses (a) sleep disturbance / unrefreshing sleep / behavioural sleep intervention in ME/CFS or a closely-related chronic multisymptom illness (Gulf War Illness / Long COVID / fibromyalgia), (b) mindfulness/meditation for ME/CFS or cross-disease fatigue illness, or (c) rest/pacing/energy-envelope management.
- Quantifiable outcome (sleep, fatigue, QoL, cognitive, or functional) or a documented mechanistic link (glymphatic, autonomic).
- Published in English (abstract available).

## Exclusion Criteria

- Already present in corpus (deduped by PMID against all `bib/*.bib`): Wostyn2018 (glymphatic CFS hypothesis) is in `brain-clearance.bib`; Merkes2010 (MBSR chronic disease) already in `sleep.bib`.
- Pure pharmacological sleep papers (e.g. modafinil, melatonin, CPAP) — out of scope (non-pharmacological behavioural focus). Primary sleep-disorder treatment papers retained only where they bear on CFS fatigue (Mariman2013 review).
- GET/graded-exercise-as-primary trials (PACE GET arm, GETSET) — already extensively covered in `exercise-pem.bib`/`general.bib`; not re-added. GET appears here only as a comparator arm (Windthorst2017).
- Fibromyalgia mindfulness primary trials already superseded by the 2024 meta-analysis (Cash2015, Sephton2007, Van Gordon2017, Pérez-Aranda2019 EUDAIMON were screened but NOT added — subsumed by Meng2024).
- Non-English reviews (Ngô 2014, French).

---

## Flow

- Total hits across 11 queries: ~237
- After deduplication (across queries + against corpus): ~20 unique candidates
- After title/abstract screen: 18
- After full-text/abstract review + GET/BPS hygiene + null/duplicate filtering: 13
- Final included: **13**

Excluded with reasons:

| PMID | Paper | Reason |
|------|-------|--------|
| 30037603 | Wostyn 2018 glymphatic CFS | Already in `brain-clearance.bib` |
| 20815988 | Merkes 2010 MBSR | Already in `sleep.bib` (sleep-rest-meditation stream) |
| 25425224 | Cash 2015 MBSR FM RCT | Subsumed by Meng2024 meta-analysis |
| 17266067 | Sephton 2007 MBSR FM | Subsumed by Meng2024 meta-analysis |
| 27885763 | Van Gordon 2017 MAT FM RCT | Subsumed by Meng2024 meta-analysis |
| 31356450 | Pérez-Aranda 2019 EUDAIMON | Subsumed by Meng2024 meta-analysis |
| 34880007 | Antcliff 2021 pacing framework | Feasibility-only, chronic pain/fatigue mixed; superseded by Kos2015/Meeus2010 |
| 34499174 | Serrat 2021 FIBROWALK | Multicomponent (pain education + exercise + CBT + mindfulness) — not isolatable mindfulness |
| 40724680 | Serrat 2025 forest bathing | Pilot, n small, forest-bathing not meditation; screened only |
| 37946190 | Gasión 2023 amygdala/insula retraining protocol | Protocol without results; redundant with Xie2024 |
| 24719001 | Ngô 2014 (French) | Non-English |
| 33549595→dup | — | (Chao2021 retained) |

---

## Search Terms by Database

- **PubMed (E-utilities, via MCP `pubmed_search_articles`):** free-text phrases listed in the Queries table; no MeSH qualifiers applied.
- **Scholar / preprint servers:** NOT opened (see Coverage Declaration). No preprint added.
- **Cross-disease sources:** fibromyalgia + Long COVID + Gulf War Illness searched explicitly as cross-disease proxies for the ME/CFS evidence gap.

---

## Coverage Declaration (audited — declares blind spots)

**Opened:**
- PubMed (E-utilities esearch + efetch abstracts) — 11 queries, all three scope domains + null/negative + indirect-mechanism (glymphatic, autonomic/HRV).

**Not opened (with reasons):**
- **Google Scholar / preprint servers** — not opened; PubMed covered the peer-reviewed core and the topic has adequate peer-reviewed evidence (13 papers). Preprints deliberately excluded to avoid unreplicated low-certainty inflation.
- **Clinical trial registries (ClinicalTrials.gov / EU-CTR / ISRCTN)** — not opened; ongoing pacing/mindfulness trials not systematically enumerated. The one registered CFS mind-body RCT protocol (Xie2024) was captured via PubMed as a proxy.
- **Non-English literature** — not opened; German/Dutch/French pacing and mindfulness literature exists (e.g. Windthorst group) but abstract-level English coverage was used.
- **Gray literature (ME Association / S4ME factsheets, patient-survey pacing data)** — not opened this cycle; already substantially covered in corpus (S4ME severe-management factsheet, patient-survey harm data in `exercise-pem.bib`).
- **Full-text PDF retrieval** — not performed this cycle; abstracts + PubMed metadata sufficient for Phase 1 fragment extraction. No landing-page scraping.

---

## Indirect Biochemical / Systemic Link Map (MANDATORY)

| Intervention/state | Downstream mechanism | ME/CFS search | Result |
|--------------------|---------------------|---------------|--------|
| Sleep / unrefreshing sleep | glymphatic clearance (DTI-ALPS) | "glymphatic clearance myalgic encephalomyelitis" | @Thapaliya2026GlymphaticMECFS (direct, new) |
| Sleep / rest | HPA / subjective-objective sleep discrepancy | "unrefreshing sleep chronic fatigue syndrome treatment" | @Mariman2013SleepCFS (no objective PSG correlate) |
| Meditation / slow breathing | vagal/parasympathetic tone → HRV | "heart rate variability biofeedback chronic fatigue syndrome" | @Windthorst2017HRVBFCFS, @Carta2024HRVBFFibromyalgia (null), @Cossu2025HRVBFLongCOVID |
| Meditation | DMN / attention network (mechanism) | "default mode network meditation autonomic nervous system review" | No usable EN review (gap noted — DMN meditation mechanism not re-added) |
| Sleep intervention (CBT-I) | insomnia → fatigue/cognitive | "cognitive behavioral therapy insomnia chronic fatigue syndrome" | @Chao2021CBTIGulfWar (cross-disease GWI) |

**Documented gap:** No direct DMN/neuroimaging meditation-mechanism study in ME/CFS was found; the meditation→DMN link rests on general-population literature already partially in corpus (brain-clearance/sleep streams), not re-opened this cycle.
