# Search Log: Lactate as a Signaling Molecule (GPR81/HCAR1) + Lactate-Lowering Interventions

**Topic slug:** `lactate-gpr81-signaling`
**Date:** 2026-09-27
**Agent:** literature-integrator (deepseek-v4-pro)
**Sources:** PubMed (NCBI E-utilities: esearch + esummary + efetch). No Crossref / Europe PMC calls this cycle; all metadata (PMID, DOI, author, volume, pages) verified from PubMed ArticleIdList/efetch XML.

## Queries

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|
| 1 | PubMed | `lactate AND (chronic fatigue syndrome OR ME/CFS)` | 122 | 20 | 0 new (corpus reuse) | 2026-09-27 |
| 2 | PubMed | `lactic acid chronic fatigue` (via Q1 superset) | — | — | — | 2026-09-27 |
| 3 | PubMed | `GPR81 OR HCAR1 fatigue` | 10 | 10 | 0 direct ME/CFS-GPR81 | 2026-09-27 |
| 4 | PubMed | `monocarboxylate transporter chronic fatigue` | 2 | 2 | 0 (MCT biology only) | 2026-09-27 |
| 5 | PubMed | `astrocyte neuron lactate shuttle` | 374 | 20 | 0 new (corpus reuse) | 2026-09-27 |
| 6 | PubMed | `lactate receptor GPR81 signaling` | 207 | 20 | 1 (Morland, seed) | 2026-09-27 |
| 7 | PubMed | `Pucino lactate CD4 T cell metabolic` | 1 | 1 | 1 (Pucino2019) | 2026-09-27 |
| 8 | PubMed | `Magistretti Allaman lactate brain signalling molecule` | 3 | 3 | 0 (already corpus Magistretti2018) | 2026-09-27 |
| 9 | PubMed | `Morland lactate HCAR1 exercise VEGF` | 1 | 1 | 1 (Morland2017) | 2026-09-27 |
| 10 | PubMed | `Hoque lactate GPR81 inflammasome` | 1 | 1 | 1 (Hoque2014) | 2026-09-27 |
| 11 | PubMed | `Ahmed autocrine lactate loop GPR81 lipolysis` | 1 | 1 | 1 (Ahmed2010) | 2026-09-27 |
| 12 | PubMed | `Colegio tumour macrophage lactic acid` | 3 | 3 | 1 (Colegio2014) | 2026-09-27 |
| 13 | PubMed | `lactate microglia HCAR1` | 6 | 6 | 0 new (mechanism covered) | 2026-09-27 |
| 14 | PubMed | `lactate T cell exhaustion chronic infection` | 4 | 4 | 0 direct (indirect-link log only) | 2026-09-27 |
| 15 | PubMed | `GPR81 macrophage neuroinflammation` | 0 | 0 | 0 — **zero-result** | 2026-09-27 |
| 16 | PubMed | `lactate long COVID post-exertional malaise` | 5 | 5 | 1 (Haunhorst2025) | 2026-09-27 |
| 17 | PubMed | `lactate NOT elevated chronic fatigue syndrome` | 257125 | — | discarded (overbroad) | 2026-09-27 |
| 18 | PubMed | `blood lactate normal ME/CFS deconditioning` | 0 | 0 | 0 — **zero-result** | 2026-09-27 |
| 19 | PubMed | `dichloroacetate lactic acidosis Stacpoole` | 37 | 10 | 1 (Stacpoole2006) | 2026-09-27 |
| 20 | PubMed | `D-ribose chronic fatigue syndrome fibromyalgia` | 2 | 2 | 1 (Teitelbaum2006) | 2026-09-27 |
| 21 | PubMed | `carnitine chronic fatigue syndrome` | 81 | 15 | 1 (Kuratsune1998) | 2026-09-27 |
| 22 | PubMed | `sodium bicarbonate lactic acidosis` | 425 | 10 | 1 (Forsythe2000) | 2026-09-27 |
| 23 | PubMed | `thiamine chronic fatigue syndrome` | 13 | 13 | 0 direct (→ Bager via IBD) | 2026-09-27 |
| 24 | PubMed | `dichloroacetate children congenital lactic acidosis randomized Stacpoole` | 5 | 5 | 1 (Stacpoole2006) | 2026-09-27 |
| 25 | PubMed | `Kuratsune acylcarnitine chronic fatigue` | 4 | 4 | 1 (Kuratsune1998) | 2026-09-27 |
| 26 | PubMed | `Bager thiamine fatigue inflammatory bowel` | 8 | 8 | 1 (Bager2021) | 2026-09-27 |
| 27 | PubMed | `high-dose thiamine fatigue quiescent inflammatory bowel disease randomized` | 3 | 3 | 1 (Bager2021) | 2026-09-27 |
| 28 | PubMed | `Forsythe sodium bicarbonate lactic acidosis` | 1 | 1 | 1 (Forsythe2000) | 2026-09-27 |
| 29 | PubMed | `dichloroacetate adverse effects neuropathy` | 28 | 10 | 0 new (harm log) | 2026-09-27 |

## Inclusion Criteria
- Peer-reviewed (preprints accepted only if recent + directly relevant — none used).
- Addresses (A) lactate as a signaling molecule (GPR81/HCAR1, MCT/SLC16, lactate shuttle, immune/brain/adipose lactate signaling), or (B) a lactate-lowering/clearing intervention with mechanism of action + human evidence.
- Provides sample size, design, journal, and replication status.
- Direct or indirect biochemical link to ME/CFS / long COVID / post-exertional malaise, OR foundational mechanism needed to argue that link.

## Exclusion Criteria
- Lactate-as-waste content already integrated (accumulation, clearance, brain MRS elevation) — explicitly out of scope (plan dedup note).
- Papers already present in the corpus (reused, not duplicated): `Brooks2018lactate`, `Magistretti2018`, `Yang2020GPR81`, `Godlewska2025MRS`, `Natelson2017Lactate`, `Lien2019lactate`, `Murrough2010VentricularLactate`, `Kerstholt2022BorreliaLactate`, existing CoQ10/NADH/alpha-lipoic-acid/acetyl-L-carnitine entries.
- Over-broad queries (Q17 → 257k hits) discarded without screening.
- Non-mechanistic / irrelevant hits (e.g. cranial electrotherapy from the D-ribose query).

## Flow
- Total raw hits across usable queries: ~1,300
- After deduplication (PMID-level, incl. corpus reuse): 14 unique new candidates
- After title/abstract screen: 14 retained
- After full-metadata verification (efetch): 14 included
- Final included: **14** (8 signaling/biology → `energy-metabolism.bib`; 6 interventions → `treatments.bib`)
- Zero-result queries (informative): `GPR81 macrophage neuroinflammation`=0; `blood lactate normal ME/CFS deconditioning`=0.

## Search Terms by Database
- **PubMed MeSH-free phrase search** (esearch `term=`): `lactate`, `chronic fatigue syndrome`, `ME/CFS`, `GPR81`, `HCAR1`, `monocarboxylate transporter`, `astrocyte neuron lactate shuttle`, `lactate receptor`, `CD4 T cell`, `macrophage`, `microglia`, `post-exertional malaise`, `long COVID`, `dichloroacetate`, `D-ribose`, `carnitine`, `sodium bicarbonate`, `thiamine`, `ketogenic`, `adverse effects`, `neuropathy`.
- **Preprint servers:** none used (no recent directly-relevant preprint identified; peer-reviewed set sufficient).
- **Indirect biochemical-link logic documented** (see literature summary): lactate→GPR81/macrophage/immune (Ahmed/Hoque/Colegio/Pucino), lactate→brain signaling (Magistretti/Yang/Morland), lactate transport gate (Halestrap), lactate→PEM immunometabolism (Haunhorst).
