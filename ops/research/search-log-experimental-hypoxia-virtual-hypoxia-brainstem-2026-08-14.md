# Search Log: Experimental Hypoxia Probe — Virtual Hypoxia & Brainstem Volume in ME/CFS

**Topic slug:** `experimental-hypoxia-virtual-hypoxia-brainstem`
**Date:** 2026-08-14
**Mode:** MIXED/CONCURRENT (tree dirty: .gitignore, opencode.json, crash-phase plan; scope by explicit file lists only)
**Method:** PubMed E-utilities (esearch/efetch) + full-text extraction of the 2 primary PDFs (moved to `Literature/neurological/`)

## Queries

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|
| 1 | PubMed | lactate magnetic resonance spectroscopy chronic fatigue syndrome | 10 | 10 | 2 (confirmed pre-existing: Shungu2012, Murrough2010, Natelson2015/2017) | 2026-08-14 |
| 2 | PubMed (esearch) | chronic fatigue syndrome brainstem volume | 7 | 7 | 4 (Thapaliya2023, Barnden2018, Finkelmeyer2017 pre-existing, Zhang2020 GWI) | 2026-08-14 |
| 3 | PubMed (esearch) | chronic fatigue syndrome cerebral blood flow arterial spin labeling | 10 | 10 | 4 (Li2021 pre-existing, Biswal2011, Staud2018, He2013) | 2026-08-14 |
| 4 | PubMed (esearch) | chronic fatigue syndrome cerebrovascular reactivity hypercapnia | 0 | 0 | 0 (no CFS-specific CO2-reactivity studies) | 2026-08-14 |
| 5 | PubMed (esearch) | chronic fatigue syndrome cerebral blood flow response orthostatic tilt | 11 | 11 | 0 (none met relevance; covered by He2013) | 2026-08-14 |
| 6 | PubMed (esearch) | Tomas mitochondrial energy metabolism chronic fatigue syndrome | 4 | 4 | 1 (Tomas2017 confirmed pre-existing; Tomas2020×2 pre-existing) | 2026-08-14 |
| 7 | PubMed (esearch) | Trapp Stys virtual hypoxia demyelination | 1 | 1 | 1 (Trapp2009VirtualHypoxia NEW) | 2026-08-14 |
| 8 | PubMed (esearch) | Mahad mitochondrial axonal demyelination multiple sclerosis | 18 | 18 | 1 (Mahad2015PathologicalMS NEW) | 2026-08-14 |
| 9 | PubMed (esearch) | hyperbaric oxygen therapy long covid | 41 | 20 | 1 (Hadanny2024HBOTLongCovid NEW; HBOT2025mecfs + Mairal2021 already present) | 2026-08-14 |
| 10 | PubMed (esearch) | Zilberman-Itskovich hyperbaric long covid | 2 | 2 | 1 (Hadanny2024 confirmed; Leitman2023 myocardial RCT excluded as peripheral) | 2026-08-14 |
| 11 | Full-text | Vienna preprint PDF (Bader et al. 2026.08.10.26359935) | — | 1 | 1 (primary) | 2026-08-14 |
| 12 | Full-text | Thapaliya et al. 2023 PDF (fnins-17-1125208) | — | 1 | 1 (primary contrast) | 2026-08-14 |

## Inclusion Criteria
- Peer-reviewed journal article or recent relevant preprint (medRxiv).
- Measures in vivo brain lactate / MRS, brainstem structure (volume or signal), cerebral blood flow (ASL) / cerebrovascular reactivity, or mitochondrial bioenergetics relevant to ME/CFS.
- Relevant to ME/CFS, long COVID, or overlapping fatigue conditions (Gulf War Illness, post-viral fatigue).
- Primary data preferred; load-bearing mechanistic reviews (virtual hypoxia concept) included.
- "Virtual hypoxia" concept literature (Trapp & Stys 2009, Mahad 2015) and HBOT downstream-treatment evidence included per the topic's scope.

## Exclusion Criteria
- CFS MRS/brainstem/CBF papers already in the split bib (reused for citation, NOT re-added): Shungu2012glutathione, Murrough2010VentricularLactate, Natelson2015milnacipran, Natelson2017, Finkelmeyer2017VBM, Barnden2011brainstemCFS, Li2021limbicHypoperfusionMECFS, Zeineh2015white, Thapaliya2022, Tomas2017Bioenergetics, Tomas2020SeverityBioenergetics, Tomas2020substrate, HBOT2025mecfs, Mairal2021FDGHBOT.
- Peripheral/non-fatigue MRS (e.g., German-language 31P muscle MRS, fibromyalgia NMR metabolomics without brain relevance).
- HBOT myocardial-function RCT (Leitman 2023) — peripheral to the brain-metabolic/treatment rationale; covered by Hadanny 2024 long-term outcomes.
- Avascular-necrosis HBOT paper (Canarslan-Demir 2025) — unrelated to fatigue/neuro-metabolic indication.
- NPC radiation fatigue dosimetry (Kamal 2019) — unrelated population.

## Flow
- Total hits: ~104 (across 12 queries incl. full-text pulls)
- After deduplication (against existing bib): 30 unique candidate records
- After title/abstract screen: 14
- After full-text/abstract review: 12
- Final included: 12 (2 primary full-text + 10 supplementary; 10 NEW bib additions)
- Excluded with reasons: see Exclusion Criteria (18 excluded: 14 already-integrated bib duplicates + 4 peripheral/non-relevant)

## Search Terms by Database
- **PubMed direct (query 1):** "lactate" × "magnetic resonance spectroscopy" × "chronic fatigue syndrome"
- **PubMed esearch (queries 2–10):** term phrases combined with implicit AND; e.g. `"chronic fatigue syndrome" AND "brain stem" AND volume`, `"chronic fatigue syndrome" AND "cerebral blood flow" AND "arterial spin labeling"`, `"Trapp" AND "Stys" AND "virtual hypoxia"`, `"Mahad" AND mitochondrial AND axonal AND demyelination`, `"hyperbaric oxygenation" AND "post-acute covid-19 syndrome"`.
- **Full-text (queries 11–12):** `pdftotext` of the two primary PDFs in `Literature/neurological/`.

## Novel Bib Additions (10)
- `Bader2026Hypoxia` — Vienna medRxiv experimental-hypoxia MRI (primary)
- `Thapaliya2023Brainstem` — larger-brainstem 7T contrast paper (primary)
- `Barnden2018T1Brainstem` — brainstem T1 signal abnormality in CFS
- `Zhang2020GulfWarBrainstem` — brainstem atrophy in Gulf War Illness (cross-disease)
- `Trapp2009VirtualHypoxia` — virtual-hypoxia concept (demyelinated axons, MS)
- `Mahad2015PathologicalMS` — mitochondrial damage + virtual hypoxia in progressive MS
- `Biswal2011CBFASL` — reduced global CBF by ASL in CFS
- `Staud2018TaskCBF` — task-related rCBF dynamics in ME/CFS (ASL)
- `He2013CerebralVascularControl` — cerebral vascular control ↔ skeletal muscle pH in CFS
- `Hadanny2024HBOTLongCovid` — long-term HBOT outcomes in post-COVID (treatment candidate)

## Certainty per paper (raw × population weight = discounted)

| Paper | Population | Raw | Weight | Discounted |
|-------|-----------|-----|--------|-----------|
| Bader2026Hypoxia | ME/CFS (preprint) | 0.40 | 1.00 | 0.40 |
| Thapaliya2023Brainstem | ME/CFS + LC | 0.55 | 1.00/0.85 | 0.55 (ME/CFS) / 0.47 (LC) |
| Barnden2018T1Brainstem | ME/CFS | 0.55 | 1.00 | 0.55 |
| Zhang2020GulfWarBrainstem | GWI | 0.60 | 0.75 | 0.45 |
| Trapp2009VirtualHypoxia | MS/neurobiology | 0.70 | 0.75 | 0.52 |
| Mahad2015PathologicalMS | MS/neurobiology | 0.70 | 0.75 | 0.52 |
| Biswal2011CBFASL | ME/CFS | 0.45 | 1.00 | 0.45 |
| Staud2018TaskCBF | ME/CFS | 0.50 | 1.00 | 0.50 |
| He2013CerebralVascularControl | ME/CFS | 0.50 | 1.00 | 0.50 |
| Hadanny2024HBOTLongCovid | Long COVID | 0.55 | 0.85 | 0.47 |

## Cohort-overlap verdict (Instruction B)
- **Griffith University NC NED cluster (Marshall-Gradisnik, Barnden, Thapaliya):** Thapaliya2023Brainstem, Barnden2018T1Brainstem, and the pre-existing Thapaliya2022 (earlier brainstem MRI) share the same site/PIs and biobank. → Treated as ONE lab cluster for the brainstem-volume/abnormality finding; Thapaliya2023 vs Barnden2018 are separate modalities (volume vs T1 signal) from the same group and do NOT constitute independent replications. Only the highest-certainty carries the independent evidence weight for the brainstem structural finding.
- **Mount Sinai / New Jersey (Natelson/Shungu):** Biswal2011CBFASL shares PI Natelson with the pre-existing lactate MRS cluster (Murrough, Natelson). Same lab, different modality (ASL CBF vs MRS). Not independent for CBF hypoperfusion specifically but from the same site.
- **Newcastle (Newton/Blamire):** He2013CerebralVascularControl shares the Newcastle group with pre-existing Finkelmeyer2017VBM and other Newcastle studies. Same site.
- **Vienna (Bader et al. 2026):** Independent lab for the reduced-brainstem + elevated-thalamic-lactate finding.
- **Net brainstem-volume independent clusters:** Vienna (reduced) vs Griffith (larger) = 2 clusters reporting OPPOSITE directions → the direction inconsistency is an open question, not a replicated finding.

## Indirect biochemical/systemic links (Instruction C reasoning)
- **Topic = experimental hypoxia / virtual hypoxia / brain lactate:** Searched the mechanism's downstream effects — brain lactate elevation (MRS), oxidative stress (cortical glutathione), mitochondrial bioenergetic failure (OXPHOS/glycolysis in PBMCs and muscle), and cerebral blood flow adaptation (ASL). Direct tissue imaging (brain MRS, ASL, volumetry) bridges the blood-to-brain compartment gap by measuring the target organ in vivo.
- **Brain lactate = mitochondrial inefficiency / virtual hypoxia:** Trapp & Stys 2009 and Mahad 2015 provide the mechanistic "virtual hypoxia" template (impaired ATP production + increased energy demand despite normal arterial O2); Tomas 2017/2020 (pre-existing) document the OXPHOS/glycolytic shift in CFS immune cells. Bridges the imaging finding (elevated brain lactate) to the bioenergetic mechanism.
- **Cerebrovascular reactivity:** The Vienna finding (preserved gross reactivity, higher inter-individual variability) is contextualized by the CFS ASL literature (Biswal reduced resting CBF; Staud abnormal task-related rCBF; He2013 links cerebral vascular control to systemic muscle pH). No CFS-specific CO2/hypercapnia reactivity study exists (query 4 returned 0) — documented gap.
- **HBOT as downstream treatment:** HBOT delivers oxygen to metabolically-stressed brain tissue, targeting the virtual-hypoxia phenotype. Searched "HBOT long covid" → Hadanny 2024 (long-term RCT follow-up) as the strongest treatment-candidate evidence; ME/CFS HBOT evidence already present (HBOT2025mecfs, Mairal2021).
