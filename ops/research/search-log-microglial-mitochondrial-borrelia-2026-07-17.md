# Search Log: Microglial Mitochondrial Dysregulation from Direct Borrelia/Bartonella Infection

**Date:** 2026-07-17
**Researcher:** Autonomous literature review agent
**Target paper files:**
- `ops/research/literature-microglial-mitochondrial-borrelia-2026-07-17.md`
- `src/main/typst/mecfs/bib/immune.bib`
- `src/main/typst/mecfs/appendices/appendix-h-annotated-bibliography.typ`

---

## Search Strategy

### Databases Searched
- PubMed (E-utilities API, NCBI) — primary search
- Google Scholar (via webfetch) — spot-check for gray literature
- medRxiv — checked for preprints on neuroborreliosis/microglia

### Query Families (16 PubMed queries)

| # | Query | Hits | Included | Notes |
|---|-------|------|----------|-------|
| 1 | `borrelia-microglia` | 36 | 5 | Core microglia papers |
| 2 | `bartonella-microglia` | 1 | 1 | Only Munana2001 |
| 3 | `borrelia-microglial-infection` | 18 | 2 | Overlap with #1, +1 new |
| 4 | `bartonella-microglial-infection` | 3 | 0 | Overlap with #2 |
| 5 | `borrelia-mito` (mitochondrial) | 42 | 1 | Peacock2015 oxidative stress |
| 6 | `bartonella-mito` (mitochondrial) | 35 | 0 | Mostly flea/vector phylo |
| 7 | `borrelia-neuroinflammation` | 14 | 2 | Overlap with #1, Parthasarathy2023 |
| 8 | `bartonella-neuroinflammation` | 0 | 0 | Null result |
| 9 | `bacterial-microglial-CNS` | 104 | 0 | General; none about Borrelia/Bartonella |
| 10 | `intracellular-bacteria-microglia` | 378 | 0 | Mostly TB, Listeria, Toxoplasma |
| 11 | `microglia-ME/CFS` | 42 | 2 | Tsilioni2022, ChavesFilho2019 |
| 12 | `lyme-neuroinflammation` | 895 | 2 | Coughlin2018, Ramesh2017 |
| 13 | `ptlds-neuroinflammation` | 7 | 3 | Parthasarathy2022, Coughlin2018, Hirsch2025 |
| 14 | `borrelia-oxidative-stress` | 1 | 1 | Peacock2015 (Redox Biology) |
| 15 | `borrelia-TLR2-microglia` | 4 | 2 | Cassiani-Ingoni, Parthasarathy2015 |
| 16 | `bartonella-intracellular` | 2 | 0 | Not microglia/CNS |

### Secondary Indirect Biochemical Searches

| # | Query | Hits | Included | Notes |
|---|-------|------|----------|-------|
| 17 | `borrelia-glial-cells-astrocytes` | 20 | 1 | Brissette2013 astrocytes |
| 18 | `borrelia-mito-membrane-potential` | 0 | 0 | Null |
| 19 | `borrelia-ROS-mitochondrial` | 2 | 1 | Wawrzeniak2020 OMVs |
| 20 | `bartonella-henselae-mitochondrial` | 5 | 0 | Not relevant (vector phylo) |
| 21 | `microglia-mito-neuroinflammation` | 1025 | 1 | Tsilioni2022 (found via ME/CFS query already) |
| 22 | `TLR2-microglia-mitochondria` | 5 | 0 | TREM2/mito papers, not Bb |
| 23 | `Lyme-microglia-review` | 3 | 1 | Ramesh2010 review (already captured) |
| 24 | `ptlds-persistent-neuroinflamm` | 3 | 1 | Parthasarathy2022 |

### Citation Chaining
- Forward citations of Myers2009 → cited by at least 20 papers
- Backward: Parthasarathy2015 references Myers2009, Kuhlow2005
- Key reviews: Ramesh2010 (Inflammation and CNS Lyme disease)

### Inclusion Criteria
1. Direct Borrelia or Bartonella interaction with microglia or CNS glial cells
2. Borrelia/Bartonella-induced mitochondrial dysfunction in any cell type
3. ME/CFS studies involving microglial activation or mitochondrial-derived microglial activation
4. In vivo human evidence of glial activation in PTLDS/Lyme
5. English language; any year

### Exclusion Criteria
1. Vector biology/phylogenetics only (no host-pathogen interaction)
2. Non-CNS Bartonella ecology without neuro relevance
3. Borrelia vaccine studies
4. Tick microbiome studies

---

## Search Flow Summary

```
Total hits across all queries: ~2,600+ (with de-duplication)
  ├─ Title/abstract screening: ~150 unique papers
  │   ├─ Borrelia × microglia directly: 10 papers → 7 included
  │   ├─ Bartonella × microglia: 3 papers → 1 included (Munana2001)
  │   ├─ Borrelia × mitochondria/oxidative stress: 5 papers → 2 included
  │   ├─ In vivo glial activation PTLDS: 2 papers → 2 included
  │   ├─ ME/CFS × microglia × mitochondria: 3 papers → 2 included
  │   └─ GWAS/genetic overlap PTLDS-ME/CFS: 1 paper → 1 included
  └─ Final included: 16 papers
```

---

## Papers Screened but Excluded (Selected)

| PMID | Title | Reason for exclusion |
|------|-------|---------------------|
| 37788649 | Friends and Foes in Alzheimer's Disease | AD-focused; no Borrelia/Bartonella content |
| 36215473 | Attenuation of RFNB by IL-17A blockade | Borrelia hermsii mouse model; no microglia focus |
| 23230453 | Tourette's Syndrome and Infections | Review; tangential; no specific Borrelia data |
| 23883071 | Astrocyte/endothelial responses to Bb | Astrocytes not microglia; useful as context |
| 28153013 | Dexamethasone/meloxicam in LNB | Glial/neuronal responses but dexamethasone focus |

---

## Data Sources
- PubMed API: `https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi`
- PubMed Fetch: `https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi`
- No scrape-registry entries needed (PubMed API only; no URL scraping)
