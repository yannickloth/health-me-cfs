# Scrape Registry

Tracks all web sources scraped for integration into the ME/CFS document.
Prevents re-processing of already-integrated content.

**Workflow per scrape session:**

1. Scrape source → check each URL against registry
2. New URL → add row; known URL with newer source date → reset Integrated to `—`
3. Filter `Integrated = —` → integration candidates
4. Integrate into document → stamp today's date
5. Delete temporary working files (per-source catalogs, etc.)

---

## Fibromyalgia Genetics (Kerrebijn 2026) Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-08-22 | 16 queries: direct (fibromyalgia GWAS/genetics/heritability/genetic-correlation), competing/null (autoimmune genetics, replication), indirect (nociplastic pain genetics, chronic overlapping pain genetics, central sensitization genetics, DRD2 chronic pain, widespread pain GWAS), ME/CFS overlap (ME/CFS-fibromyalgia genetic correlation, chronic fatigue genetic correlation). Primary paper PDF read fully. 10 new papers included; 5 existing corpus entries reused (DecodeME2025, Hajdarevic2022gwas, Schlauch2016gwas, Steen2026sharedgenetic, Hirsch2025comparativeGWAS). |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (16 queries + efetch abstract batches, 10 PMIDs) | pubmed/eutils | 2026-08-22 | — | ops/research/search-log-fibromyalgia-genetics-2026-08-22.md, ops/research/literature-summary-fibromyalgia-genetics.md, bib/genetics-epigenetics.bib, bib/pain-fibromyalgia.bib, appendix-h — Fibromyalgia genetics literature (10 new papers) |

---

## Guanfacine + N-Acetylcysteine Inter-Cluster Bridge Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-08-22 | 17 queries: direct combination (guanfacine × N-acetylcysteine), α2A-oxidative/prefrontal (0 direct hits), guanfacine Nrf2 (0 hits — research gap), catecholamine-oxidation dopamine NAC, Nrf2 catecholamine, NAC dopamine neuroprotection, oxidative stress ME/CFS NAC, kynurenine oxidative stress, NAD depletion NAC, harm (guanfacine adverse effects, NAC adverse effects), guanfacine chronic fatigue, NAC chronic fatigue syndrome. 5 papers included. Anchor FesharakiZadeh2023Guanfacine reused (already in corpus). |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (17 queries + efetch batch, 5 PMIDs) | pubmed/eutils | 2026-08-22 | — | ops/research/search-log-guanfacine-nac-bridge-2026-08-22.md, bib/treatments.bib, appendix-h — Guanfacine + NAC inter-cluster bridge literature (5 new papers) |

---

## Angelman Syndrome (UBE3A) Pathophysiological Overlap with ME/CFS Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-08-22 | 17 queries: direct (AS × ME/CFS/chronic-fatigue = 0 hits), indirect-biochemical (UBE3A × fatigue/CFS = 0; UBE3A/AS × mitochondria, oxidative stress/ROS, GABA/GABA-A, sleep, autonomic, neuroinflammation, proteostasis), competing (UBE3A dosage AS/Dup15q, GABA-A receptor × ME/CFS), null (AS × fatigue, autonomic, neuroinflammation). Metadata via esummary/efetch (PMID/DOI verified per paper). 7 papers included. |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (17 queries + efetch batch, 7 PMIDs) | pubmed/eutils | 2026-08-22 | — | ops/research/search-log-angelman-syndrome-2026-08-22.md, ops/research/literature-summary-angelman-syndrome.md, bib/genetics-epigenetics.bib, appendix-h — Angelman syndrome pathophysiological overlap literature (7 new papers) |

---

## Irisin Signaling Resistance in PEM Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-08-15 | 19 queries: direct (irisin ME/CFS/chronic fatigue/PEM), mechanistic (irisin αV integrin/HSP90α/FNDC5-mitochondrial), competing (irisin fibromyalgia/depression/sarcopenia), null/negative (irisin fatigue negative, detection false-positive), TSP-1 (chronic fatigue, NO/vascular, CD47, fibrosis), HSP90α extracellular signaling. Crossref + Europe PMC for metadata/author disambiguation. Null+contradicting+indirect-biochemical searches included. |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (19 queries, batch) | pubmed/eutils | 2026-08-15 | — | ops/research/search-log-irisin-signaling-resistance-pem-2026-08-15.md, ops/research/literature-summary-irisin-signaling-resistance-pem.md, bib/energy-metabolism.bib, bib/vascular.bib, bib/pain-fibromyalgia.bib, bib/general.bib, appendix-h — Irisin signaling resistance/TSP-1-HSP90α-αvβ5 PEM literature (13 new papers) |
| Crossref API (11 DOIs) | crossref | 2026-08-15 | — | Author/volume/page verification for Souma 2026 + foundational irisin/TSP-1 papers |

---

## Immune-Checkpoint / Tolerance / Immunotherapy Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-08-15 | 18 queries across 3 novel threads: (1) long-COVID immune profiling (Klein 2023 Nature), (2) long-COVID → ME/CFS immune convergence (cell subsets, EBV/VZV antibody, cortisol/cytokine), (3) immunotherapy/CAR-T/AI (AlphaFold) treatment angle. Null/negative + viral-reactivation-failed-replication searches MANDATORY included. Checkpoint/tolerance/herpesvirus threads already covered (ch08 sec-02/06/07). |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (18 queries, batch) | pubmed/eutils | 2026-08-15 | — | ops/research/search-log-immune-checkpoint-tolerance-immunotherapy-2026-08-15.md, ops/research/literature-immune-checkpoint-tolerance-immunotherapy-2026-08-15.md, bib/immune.bib, bib/treatments.bib, appendix-h — Long-COVID immune profiling & ME/CFS convergence literature (8 new papers) |

---

## Female Reproductive Lifespan in ME/CFS Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-08-13 | Multi-query search across 6 gap areas: (1) perimenopause/menopause transition in ME/CFS and post-viral fatigue, (2) HRT intervention + harm (VTE/CVD), (3) estrogen-progesterone-mast cell mechanism (indirect biochemical search), (4) menstrual cyclicity of POTS/orthostatic symptoms, (5) PCOS co-occurrence, (6) obstetric/Long-COVID-in-pregnancy outcomes. HRT harm search MANDATORY included. |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (30+ queries, batch) | pubmed/eutils | 2026-08-13 | — | ops/research/search-log-female-reproductive-lifespan-2026-08-13.md, ops/research/literature-female-reproductive-lifespan-2026-08-13.md, bib/endocrine-reproductive.bib, appendix-h — Female reproductive lifespan literature (14 new papers) |

---

## Vagal Gastric Denervation Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-07-10 | 14 queries: seed paper DOI, Woo 2023 vagus inflammation, Lladós 2024 vagus dysfunction, Tracey CAP, Bonaz vagus microbiota, Azcue 2023 SFN, Oaklander 2021 SFN ME/CFS, VanElzakker 2013 vagus infection hypothesis |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (14 queries, batch) | pubmed/eutils | 2026-07-10 | — | content-staging/literature-summary-vagal-gastric-denervation-longcovid-2026-07-10.md, content-staging/search-log-vagal-gastric-denervation-longcovid-2026-07-10.md, bib/autonomic-cardiovascular.bib, appendix-h — Vagal gastric denervation literature (8 papers) |

## Thapaliya 2025 Brain Microstructure/Neurochemicals Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-08-17 | 8 queries: author-targeted (Thapaliya/Marshall-Gradisnik/Barnden neuroimaging), long COVID / recovered-COVID / post-COVID × (T1w/T2w, DTI, diffusion, myelin, MRS, microstructure), ME/CFS DTI, CFS T1/T2 ratio. Null/negative (Arendt no-overall-FA; Yu2025PI no-FA/MD/RD) + independent-lab replication + indirect-biochemical (IL-1β) searches included. Primary paper provided locally (not scraped). |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (8 queries + 1 efetch batch, 14 PMIDs) | pubmed/eutils | 2026-08-17 | — | ops/research/search-log-thapaliya2025-brain-microstructure-neurochemicals-2026-08-17.md, ops/research/literature-thapaliya2025-brain-microstructure-neurochemicals-2026-08-17.md, bib/long-covid.bib, appendix-h — Long-COVID/recovered-COVID/ME-CFS brain microstructure & neurochemicals literature (14 papers) |

---

## Long Covid–AD(H)D Neuroimmune Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-08-20 | 13 DOI-targeted queries (esearch + efetch) verifying metadata for the Spanoghe anchor viewpoint and 12 cited/related primary sources across the four neuroimmune mechanisms. PMID/title/author/journal/year/volume/pages verified per DOI. |
| Crossref API | 2026-08-20 | Metadata for Fesharaki-Zadeh 2023 guanfacine paper (Neuroimmunology Reports; not indexed in PubMed) — DOI 10.1016/j.nerep.2022.100154. |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (13 DOI lookups, batch efetch) | pubmed/eutils | 2026-08-20 | — | ops/research/search-log-longcovid-adhd-neuroimmune-2026-08-20.md, ops/research/literature-summary-longcovid-adhd-neuroimmune.md, bib/neurology-comorbidities.bib, appendix-h — Long Covid–ADHD neuroimmune framework literature (14 new papers: 1 anchor + 13 primary) |
| Crossref API (10.1016/j.nerep.2022.100154) | crossref | 2026-08-20 | — | bib/neurology-comorbidities.bib, appendix-h — Fesharaki-Zadeh guanfacine metadata |

---

## POTS Consensus / Non-POTS Dysautonomia Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-09-01 | 13 queries: primary-paper confirm (PMID 42665152), direct (POTS diagnostic criteria, POTS consensus, heart-rate threshold), null/competing (overdiagnosis/misdiagnosis, inappropriate sinus tachycardia), harm (beta-blocker/ivabradine/midodrine/fludrocortisone safety), indirect (POTS-ME/CFS overlap, autonomic dysfunction chronic fatigue, orthostatic cerebral hypoperfusion). 6 NEW papers added (Sivakoti 2026 consensus primary, Parsaik 2013, Chung & Raj 2026 JAMA review, Uppal 2026 ivabradine RCT, Mauriello 2026, Boris 2020); 16 existing-corpus papers skipped as already-covered (incl. Yao 2025, Bragée 2026). |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (13 queries + efetch XML batches, 6 PMIDs) | pubmed/eutils | 2026-09-01 | — | ops/research/search-log-pots-consensus-2026-09-01.md, ops/research/literature-summary-pots-consensus.md, bib/autonomic-cardiovascular.bib, appendix-h — POTS consensus & non-POTS dysautonomia literature (6 new papers, research_stream=pots-consensus) |

---

## Sources

| Source | Last Scraped | Notes |
|--------|--------------|-------|
| mecfsscience.org | 2026-03-21 | Critical ME/CFS research analysis blog by two long-term patients |
| thespooniverse.org | 2026-03-26 | Patient-focused educational platform; treatment DB (75 entries), biomarker explorer (91), resource directory (1,000+) |
| omfcanada.ngo | 2026-03-27 | Open Medicine Foundation Canada; research project pages for OMF-funded studies |
| mecfsmed.de | 2026-03-28 | German ME/CFS information platform; 7 foundational pages + 15 research article summaries |

---

## HIF-2α Endothelial Post-Viral Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-06-07 | Multi-query search: "HIF-2alpha endothelial", "viral HIF-2alpha", "HIF-2α post-COVID", "belzutifan endothelial", "HIF-2α senescence", "HIF-2α blood-brain barrier", "HIF-2α ME/CFS endothelial" |
| PubMed (E-utilities API) | 2026-06-07 | Specific queries: "SARS-CoV-2 spike HIF-2α", "EBV HIF-2α endothelial", "HIF-2α complement endothelial", "endothelial dysfunction ME/CFS FMD" |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (batch) | pubmed/eutils | 2026-06-07 | 2026-06-07 | content-staging/hif2a-endothelial-literature-&ast;.md, bib/appendix-h — HIF-2α endothelial post-viral literature collection (14 papers) |

## POTS Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-06-07 | Multi-query search: "POTS ME/CFS", "POTS systematic review meta-analysis", "POTS treatment ivabradine midodrine", "POTS autoantibody null negative replication", "POTS cerebral blood flow brainstem hypoperfusion", "POTS exercise training", "POTS small fiber neuropathy SFN", "POTS blood volume hypovolemia RAAS" |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (7 queries, batch) | pubmed/eutils | 2026-06-07 | 2026-06-07 | content-staging/pots-literature/&ast;.md, bib/appendix-h — POTS literature search (12 papers added) |

## SLE→ME/CFS Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-06-07 | 8 queries: SLE+ME/CFS overlap, SLE fatigue mechanisms (mitochondrial/IFN/cytokine), anti-dsDNA/fatigue, type I IFN SLE fatigue, NK cell SLE, SLE subtypes (UCTD/incomplete lupus), null/negative SLE fatigue results, cross-disease SLE/ME/CFS |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (batch) | pubmed/eutils | 2026-06-07 | content-staging/lit-sle-mecfs-2026-06-07.md, bib/appendix-h — SLE→ME/CFS literature survey (18 papers) |

## Noradrenergic Deficiency Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-06-07 | 12 queries: Walitt NIH ME/CFS catecholamines, Goldstein DS catecholamine fatigue, atomoxetine ME/CFS, reboxetine fibromyalgia fatigue, yohimbine chronic fatigue, CSF norepinephrine ME/CFS, LC NE Goldstein, NRI fatigue chronic illness, negative/normal norepinephrine ME/CFS, droxidopa fatigue |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (12 queries, batch) | pubmed/eutils | 2026-06-07 | — | content-staging/noradrenergic-deficiency-literature-summary-2026-06-07.md, bib/appendix-h — Noradrenergic deficiency literature collection (13 papers, 9 new bib entries + 3 updated) |

## Neuroimmune (Blitshteyn 2026) Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-06-08 | Multi-query: "neuroimmune POTS ME/CFS", "autonomic ganglia autoantibodies", "GPCR autoantibodies orthostatic tachycardia", "POTS autoimmunity neuroinflammation", "long COVID POTS autoantibodies", "vagus nerve inflammation POTS", "POTS autoantibody null negative replication", "POTS autoantibodies systematic review" |
| Crossref API | 2026-06-08 | Metadata for Blitshteyn 2026 primary paper (DOI 10.2147/ITT.S581262) |
| PubMed (E-utilities API) | 2026-06-08 | Specific author queries: Wallukat Long COVID GPCR, Fedorowski POTS autoantibodies, Gunning POTS GPCR/inflammatory, Blitshteyn autoimmune markers/neuroinflammation |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (batch) | pubmed/eutils | 2026-06-08 | — | content-staging/literature-neuroimmune-blitshteyn-2026.md, bib/appendix-h — Neuroimmune POTS/ME/CFS/LC literature collection (16 papers) |
| Crossref API (10.2147/ITT.S581262) | crossref | 2026-06-08 | — | content-staging/literature-neuroimmune-blitshteyn-2026.md — Primary paper metadata + 74 reference list |

## Ocular Sjögren / ME/CFS Overlap Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-07-09 | 14 queries: SjS tear proteomics, CCM SjS/SFN/FM/long COVID, tear cytokines fatigue, dry eye CFS, FM dry eye |
| PubMed (E-utilities API) | 2026-07-09 | Null/negative search: CCM FM negative, tear proteomics fatigue null |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (14 queries, batch) | pubmed/eutils | 2026-07-09 | — | content-staging/lit-summary-ocular-sjogren-mecfs-overlap-2026-07-09.md, content-staging/search-log-ocular-sjogren-mecfs-overlap-2026-07-09.md, bib/autoimmunity.bib, bib/neurology-comorbidities.bib, appendix-h — Ocular Sjögren/ME/CFS overlap literature (6 new papers + 6 pre-existing reused) |

## Infection-Driven CoQ10 Depletion Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-07-17 | 22 queries: Maes2009CoQ10, Morris2013CoQ10 (biochemical framework), Schreiner2020HHV6Mito (viral→ROS→mito), Al-Hakeim2023LongCOVIDOx (post-viral antioxidant depletion), Laredj2014CoQBiosynth (competing genetics), plus lipid peroxidation/oxidative stress/EBV/enterovirus searches |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (22 queries, batch) | pubmed/eutils | 2026-07-17 | — | ops/research/literature-coq10-infection-depletion-2026-07-17.md, ops/research/search-log-coq10-infection-depletion-2026-07-17.md, bib/immune.bib, appendix-h — Infection-driven CoQ10 depletion literature (10 papers) |

## IgE Sensitization — Spike/Tick/Neuroinflammation Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-06-24 | 17 queries across 7 families: spike-specific IgE, tick IgE/alpha-gal, infection→allergy, ME/CFS IgE, mast cell→BBB→cognition, null/negative, competing non-IgE MCAS |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (17 queries, batch) | pubmed/eutils | 2026-06-24 | — | content-staging/literature-summary-ige-sensitization-spike-tick-neuroinflammation-2026-06-24.md, content-staging/search-log-ige-sensitization-spike-tick-neuroinflammation-2026-06-24.md, bib/immune.bib, appendix-h — IgE sensitization literature search (14 papers added) |

## MMP-9 / IL-11 / Mast Cell Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-06-08 | Multi-query: "MMP-9 ME/CFS", "MMP-9 long COVID", "IL-11 ME/CFS", "IL-11 senescence inflammaging", "mast cell MMP-9 release", "EBV mast cell activation", "MMP-9 serum plasma preanalytical", "MMP-9 biomarker interference" |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (batch, ~15 queries) | pubmed/eutils | 2026-06-08 | — | content-staging/integration-guide-trpm3-ion-channels-2026-06-08.md, bib/appendix-h — MMP-9/IL-11/mast cell literature collection (12 papers: 4 primary + 8 additional) |

## PrecisionLife GLP-1 Genetics Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-06-17 | 17 queries: GLP-1 RA + CFS, GLP-1 + ME/CFS, PrecisionLife combinatorial analytics, GLP-1 neuroinflammation calcium/synaptic, GLP-1 endothelial dysfunction, GLP-1 autoimmune/inflammatory, polygenic heterogeneity CFS, drug repurposing ME/CFS stratification, GLP-1 negative/null, GLP-1 neurological effects, Gardner PrecisionLife, semaglutide long COVID, combinatorial genetics ME/CFS, exenatide fatigue, GLP-1 post-viral fatigue, genetic risk SNP interaction, GLP-1 neuroprotection fatigue |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (17 queries, batch) | pubmed/eutils | 2026-06-17 | — | content-staging/literature-glp1-genetics-2026-06-17.md, bib — PrecisionLife GLP-1 genetics literature (17 primary papers) |
| https://precisionlife.com/glp1 | precisionlife.com | 2026-06-17 | — | content-staging/literature-glp1-genetics-2026-06-17.md — PrecisionLife GLP-1 prediction platform |
| https://investinme.org/brmec15-stevegardner.shtml | investinme.org | 2026-06-17 | — | content-staging/literature-glp1-genetics-2026-06-17.md — BRMEC15 Gardner GLP-1 presentation |
| https://www.sciencedirect.com/science/article/pii/S266731852500017 | sciencedirect | 2026-06-17 | — | content-staging/literature-glp1-genetics-2026-06-17.md — Related paper (403 error, access blocked) |

## Elevated Rheumatoid Factor + ME/CFS Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-06-19 | 12 queries: RF+ME/CFS, RF+chronic fatigue, RF+fibromyalgia, autoAb profiling ME/CFS, autoimmune ME/CFS sysrev, RF+Sjogrens+fatigue, RF+SLE+fatigue, GPCR autoAbs ME/CFS, RF+elevated+CFS, negative/null autoAb ME/CFS |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (12 queries, batch) | pubmed/eutils | 2026-06-19 | 2026-06-19 | content-staging/search-log-rf-elevated-mecfs-2026-06-19.md, content-staging/literature-summary-rf-elevated-mecfs-2026-06-19.md, bib/autoimmunity.bib, appendix-h — RF+ME/CFS literature search (10 papers, all low certainty, decision: DEFER) |

## Psychologization Critique — Schomerus 2026
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-06-19 | ~20 queries: Schomerus 2026, Büchner 2025, Pantelic 2022, Hoffmann D-A-CH 2024, epistemic injustice, symbolic violence, PPS stigma scoping reviews, pacing vs GET safety |
| Crossref API | 2026-06-19 | Author metadata for 14 DOIs (Schomerus, Büchner, Pantelic, Hoffmann, Vink 2025, Treufeldt, Byrne, Ireson, Clutterbuck, Cooper, Gimeno Torrent, Eckey, Lebrun) |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (~20, batch) | pubmed/eutils | 2026-06-19 | — | content-staging/search-log-psychologization-critique-2026-06-19.md, bib/stigma.bib, appendix-h — Psychologization critique literature (10 new bib entries + 10 existing stigma entries linked) |

## Articles

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| https://www.radiofrance.fr/franceculture/podcasts/la-science-cqfd/fatigue-chronique-une-maladie-en-quete-de-re-connaissance-9729715 | radiofrance | 2026-09-01 | 2026-09-01 | appendix-d-resources (Podcasts section) — La Science, CQFD (France Culture) "Syndrome de fatigue chronique : une maladie en quête de (re)connaissance" (Aug 2026, Alexandra Delbot) — French-language podcast on France's Assurance-maladie recognition of ME/CFS as a neurological disease with PEM |
| https://www.radiofrance.fr/franceculture/podcasts/la-science-au-labo/fatigue-chronique-des-marqueurs-visibles-au-niveau-cellulaire-2517457 | radiofrance | 2026-09-01 | 2026-09-01 | appendix-d-resources (Podcasts section) — La Science au labo (France Culture) "Fatigue chronique : des marqueurs visibles au niveau cellulaire" (Aug 2026) — short chronicle on cellular markers for fatigue chronique |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC11952824/ | pubmed/pmc | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Kassels2024LSAutoimmune — LS autoimmune population study |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC9978401/ | pubmed/pmc | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — DeLuca2023LS2023Update — LS 2023 update review |
| https://pubmed.ncbi.nlm.nih.gov/15819407/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Regauer2005LSImmuneDysregulation — LS immune dysregulation foundational |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC12072692/ | pubmed/pmc | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Paganelli2025LSCytokines — LS cytokine networks 2025 |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC11724625/ | pubmed/pmc | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Wang2025LSEpigenetic — LS epigenetic immune dysregulation |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC6709801/ | pubmed/pmc | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Paulis2019LSOxidativeStress — LS oxidative stress |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC9777366/ | pubmed/pmc | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Oyama2022LSGeneticInterplay — LS autoimmune genetic landscape |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC10494448/ | pubmed/pmc | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Gulin2023LSComorbiditySweden — LS comorbidity Swedish registry |
| https://pubmed.ncbi.nlm.nih.gov/33184843/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Hu2021LSComorbidityMichigan — LS comorbidities Michigan single-center |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC11520338/ | pubmed/pmc | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Halonen2024LSRiskFactorsFinland — LS risk factors 43,000 Finnish |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC11443722/ | pubmed/pmc | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Batham2024MECFSAutoimmunity — ME/CFS autoimmunity systematic review |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC4719218/ | pubmed/pmc | 2026-05-02 | 2026-05-02 | bib/appendix-h — BillingRoss2016mtDNA — mtDNA variants correlate with ME/CFS symptoms |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC6393470/ | pubmed/pmc | 2026-05-02 | 2026-05-02 | bib/appendix-h — Venter2019mtDNA — MtDNA mildly deleterious variants two cohorts |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC3128000/ | pubmed/pmc | 2026-05-02 | 2026-05-02 | bib/appendix-h — Albright2011heritability — heritable predisposition to CFS |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC7608630/ | pubmed/pmc | 2026-05-02 | 2026-05-02 | bib/appendix-h — Chang2020haploADHD — mtDNA haplogroups ADHD European |
| https://pubmed.ncbi.nlm.nih.gov/35796884/ | pubmed | 2026-05-02 | 2026-05-02 | bib/appendix-h — Giannoulis2024sysrevmtADHD — systematic review mtDNA variation ADHD |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC5121149/ | pubmed/pmc | 2026-05-02 | 2026-05-02 | bib/appendix-h — Verma2016ADHDcybrid — ADHD cybrid mitochondrial dysfunction |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC11163340/ | pubmed/pmc | 2026-05-02 | 2026-05-02 | bib/appendix-h — Ogutlu2022ADHDmito — mitochondrial dysfunction ADHD narrative review |
| https://pubmed.ncbi.nlm.nih.gov/?term=10.7554%2FeLife.07370 | pubmed | 2026-04-13 | 2026-04-13 | ch14h/bib — Cahalan2015 — Piezo1 RBC volume KCa3.1 |
| https://pubmed.ncbi.nlm.nih.gov/?term=10.1126%2Fscitranslmed.aat9892 | pubmed | 2026-04-13 | 2026-04-13 | ch14h/ch08/bib — Szczot2018 — Piezo2 allodynia proprioception |
| https://www.science.org/doi/full/10.1126/sciadv.aed0028 | science.org | 2026-05-18 | — | bib/appendix-h/integration-guide — Hackstein2024 — CD161+ CD56+ CD4 T cells innate-like immunity gut/liver CMV |
| https://onlinelibrary.wiley.com/doi/10.1080/17461391.2018.1551937 | wiley | 2026-05-13 | — | bib/appendix-h/integration-guide — Douzi2018SleepCryotherapy — WBC sleep quality healthy men |
| https://pubmed.ncbi.nlm.nih.gov/37230457/ | pubmed | 2026-05-13 | — | bib/appendix-h/integration-guide — Kujawski2023CBSCFS — WBC in CFS patients |
| https://pubmed.ncbi.nlm.nih.gov/32361157/ | pubmed | 2026-05-13 | — | bib/appendix-h/integration-guide — Li2021ThermoregulationCFS — Thermoregulation dysfunction CFS |
| https://pubmed.ncbi.nlm.nih.gov/29874259/ | pubmed | 2026-05-13 | — | bib/appendix-h/integration-guide — Cambras2018CircadianCFS — Circadian rhythms CFS |
| https://pubmed.ncbi.nlm.nih.gov/35203896/ | pubmed | 2026-05-13 | — | bib/appendix-h/integration-guide — Baraniuk2022ThermoregulationMECFS — Thermoregulation PEM ME/CFS |
| https://pubmed.ncbi.nlm.nih.gov/35695028/ | pubmed | 2026-05-13 | — | bib/appendix-h/integration-guide — Costa2022HRVCryotherapy — WBC HRV meta-analysis |
| https://pubmed.ncbi.nlm.nih.gov/16988370/ | pubmed | 2026-05-13 | — | bib/appendix-h/integration-guide — Westerlund2006SleepCold — Cold water immersion sleep |
| https://pubmed.ncbi.nlm.nih.gov/25491572/ | pubmed | 2026-05-13 | — | bib/appendix-h/integration-guide — Levy2015CryotherapyPain — Cryotherapy pain management review |
| https://pubmed.ncbi.nlm.nih.gov/31727630/ | pubmed | 2026-05-13 | — | bib/appendix-h/integration-guide — Zaproudil2020ColdVagal — Cold face immersion vagal |
| https://pubmed.ncbi.nlm.nih.gov/20637358/ | pubmed | 2026-05-13 | — | bib/appendix-h/integration-guide — Banfi2010CryotherapyInflammation — WBC inflammatory markers |
| https://pubmed.ncbi.nlm.nih.gov/28279480/ | pubmed | 2026-05-13 | — | bib/appendix-h/integration-guide — Tipton2017ColdWaterSafety — Cold water safety contraindications |
| https://pubmed.ncbi.nlm.nih.gov/39789666/ | pubmed | 2026-05-13 | — | bib/appendix-h/integration-guide — Raccuglia2017ColdIntolerance — Cold intolerance chronic illness |
| https://pubmed.ncbi.nlm.nih.gov/32187501/ | pubmed | 2026-05-13 | — | bib/appendix-h/integration-guide — Blecharz2020SleepArchitectureCryo — WBC sleep architecture athletes |
| https://pubmed.ncbi.nlm.nih.gov/?term=10.1016%2Fj.neubiorev.2023.105227 | pubmed | 2026-04-13 | 2026-04-13 | ch14h/ch15/ch08/bib — Molot2023 — MCS TRP sensitization |
| https://pubmed.ncbi.nlm.nih.gov/?term=10.1186%2F1744-8069-1-3 | pubmed | 2026-04-13 | 2026-04-13 | ch14h/ch15/ch08/bib — Moriyama2005 — PGE2 sensitizes TRPV1 |
| https://pubmed.ncbi.nlm.nih.gov/?term=10.1038%2Fs41598-021-82829-6 | pubmed | 2026-04-13 | 2026-04-13 | ch14h/ch15/ch08/bib — Li2021 — TRPV1 COX2 feed-forward |
| https://pubmed.ncbi.nlm.nih.gov/?term=10.3390%2Fbrainsci14111070 | pubmed | 2026-04-13 | 2026-04-13 | ch14h/ch15/bib — Souza2024 — TRPV1 mast cell degranulation |
| https://pubmed.ncbi.nlm.nih.gov/39595833/ | pubmed | 2026-04-13 | 2026-04-13 | bib — Souza2024 (Costa 2024) — full author verification |
| https://www.nature.com/articles/nature05544 | nature.com | 2026-04-13 | 2026-04-13 | ch14h/ch15/ch08/bib — Macpherson2007 — TRPA1 cysteine oxidation |
| https://pubmed.ncbi.nlm.nih.gov/35580314/ | pubmed | 2026-04-13 | 2026-04-13 | bib/appendix-h/integration-guide — Russo2023Ambroxol — ambroxol neuropathic pain review |
| https://pubmed.ncbi.nlm.nih.gov/16182323/ | pubmed | 2026-04-13 | 2026-04-13 | bib/appendix-h/integration-guide — Gaida2005Ambroxol — ambroxol Nav1.8 preclinical pain models |
| https://pubmed.ncbi.nlm.nih.gov/40967389/ | pubmed | 2026-04-13 | 2026-04-13 | bib/appendix-h/integration-guide — Hefner2025AmbroxolTRPV1 — ambroxol Nav1.8/TRPV1/TRPA1 electrophysiology |
| https://mecfsmed.de/mecfs/was-ist-mecfs/ | mecfsmed.de | 2026-03-28 | SKIP | Foundational page; content already covered at research depth |
| https://mecfsmed.de/mecfs/mecfs-definitionen/ | mecfsmed.de | 2026-03-28 | SKIP | Definitions page; all criteria systems already covered |
| https://mecfsmed.de/mecfs/mecfs-diagnose/ | mecfsmed.de | 2026-03-28 | SKIP | Diagnosis page; already covered |
| https://mecfsmed.de/mecfs/leitlinien/ | mecfsmed.de | 2026-03-28 | 2026-03-28 | Guidelines page; DEGAM + G-BA content novel |
| https://mecfsmed.de/mecfs/forschung/ | mecfsmed.de | 2026-03-28 | SKIP | Research overview; general summary, no novel content |
| https://mecfsmed.de/mecfs/schweregrade-von-mecfs/ | mecfsmed.de | 2026-03-28 | SKIP | Severity page; already covered in ch05-severity-levels |
| https://mecfsmed.de/mecfs/medical-gaslighting/ | mecfsmed.de | 2026-03-28 | 2026-03-28 | Medical gaslighting; novel systematic treatment |
| https://mecfsmed.de/news-und-studien/artikel/hdl-proteom-analyse-enthuellt-mechanismen-hinter-post-covid-syndrom | mecfsmed.de | 2026-03-28 | 2026-03-28 | Grote 2024 HDL proteome + statin/ARB; novel |
| https://mecfsmed.de/news-und-studien/artikel/aktivierungstherapie-verursacht-schaden-bei-betroffenen-von-post-exertioneller-malaise | mecfsmed.de | 2026-03-28 | 2026-03-28 | van Rhijn-Brouwer 2024 GET harm; citation-only (content covered) |
| https://mecfsmed.de/news-und-studien/artikel/kleine-studie-grosse-hoffnung | mecfsmed.de | 2026-03-28 | 2026-03-28 | Boehmeke 2024 amifampridin; novel |
| https://mecfsmed.de/news-und-studien/artikel/curcumin-filmspray-neuer-ansatz-gegen-sars-cov2-und-influenza | mecfsmed.de | 2026-03-28 | SKIP | Nittayananta 2024 curcumin spray; in vitro only, tangential |
| https://mecfsmed.de/news-und-studien/artikel/neue-erkenntnisse-zu-mecfs-epstein-barr-virus-und-die-rolle-von-igg-antikorpern | mecfsmed.de | 2026-03-28 | 2026-03-28 | Fonseca 2024 EBV ML classifier; novel |
| https://mecfsmed.de/news-und-studien/artikel/einblicke-in-die-mecfs-forschung-vielversprechende-entwicklungen-und-herausforderungen | mecfsmed.de | 2026-03-28 | 2026-03-28 | Seton 2024 review; citation-only |
| https://mecfsmed.de/news-und-studien/artikel/autonomes-nervensystem-verbindende-muster-bei-mecfs-und-long-covid | mecfsmed.de | 2026-03-28 | 2026-03-28 | Ryabkova 2024 ANS/HRV; citation + 1 sentence |
| https://mecfsmed.de/news-und-studien/artikel/neue-einblicke-in-die-rolle-von-komplementaktivierung-und-thromboinflammation-bei-long-covid | mecfsmed.de | 2026-03-28 | SKIP | Cervia-Hasler 2024 complement; already cited |
| https://mecfsmed.de/news-und-studien/artikel/langzeitfolgen-von-mecfs-nach-epstein-barr-virus | mecfsmed.de | 2026-03-28 | 2026-03-28 | Pricoco 2024 EBV youth; novel |
| https://mecfsmed.de/news-und-studien/artikel/verknuepfung-von-immunstoerung-und-hohem-antikoerperspiegel-entdeckt | mecfsmed.de | 2026-03-28 | 2026-03-28 | Yin 2024 T-cell/antibody; citation-only |
| https://mecfsmed.de/news-und-studien/artikel/serotonin-ueberschuss | mecfsmed.de | 2026-03-28 | 2026-03-28 | Lee 2024 serotonin excess; novel 5-HT1A mechanism |
| https://mecfsmed.de/news-und-studien/artikel/entdeckung-aussagekraeftiger-biomarker | mecfsmed.de | 2026-03-28 | 2026-03-28 | Berkis 2023 biomarker panel; citation-only |
| https://mecfsmed.de/news-und-studien/artikel/keine-verringerung-von-long-covid-risiko-durch-paxlovid | mecfsmed.de | 2026-03-28 | 2026-03-28 | Durstenfeld 2024 Paxlovid negative; novel |
| https://mecfsmed.de/news-und-studien/artikel/neue-einblicke-in-muskelschaeden-nach-pem-bei-long-covid | mecfsmed.de | 2026-03-28 | SKIP | Appelman 2024 muscle PEM; already cited |
| https://mecfsmed.de/news-und-studien/artikel/g-ba-beschliesst-meilenstein-fuer-long-covid-patienten-ein-blick-auf-die-neue-versorgungsrichtlinie | mecfsmed.de | 2026-03-28 | 2026-03-28 | G-BA LongCOV-RL guideline; novel |
| https://www.nature.com/articles/s41380-026-03471-0 | nature.com | 2026-03-28 | 2026-03-28 | ch06, ch08, ch14d, ch20 — Matits et al. 2026 ccf-mtDNA in Long COVID; integrated with cross-disease comparison hypothesis |
| https://www.nature.com/articles/s41746-026-02543-3 | nature.com | 2026-03-29 | 2026-03-29 | ch02, ch10, ch20 — Aitken et al. 2026 digital HRV biomarkers predict crash/fatigue/brain fog in ME/CFS & Long COVID (n=4244 Visible app) |
| https://www.thespooniverse.org/treatments | thespooniverse.org | 2026-03-26 | 2026-03-26 | ch18 — 18 gaps integrated; full adversarial + pharmacology review pass applied same session |
| https://www.thespooniverse.org/biomarkers | thespooniverse.org | 2026-03-26 | 2026-03-26 | ch20 — 13 Priority 1 gaps integrated (commit 1a57499); Priority 2/3 gaps documented in spooniverse-coverage-gap-report.md |
| https://www.omfcanada.ngo/herpes-simplex-encephalopathy-and-me-cfs/ | omfcanada.ngo | 2026-03-27 | 2026-03-27 | ch07 (HSV-1/HSE subsection + hypothesis), ch08 (neuroinflammation bridge), ch14g (NMDAR converging evidence), ch20 (CSF proteomics/ApoA1), hypothesis registry |
| https://mecfsscience.org/immune-findings-in-me-cfs/ | mecfsscience.org | 2026-03-21 | 2026-03-21 (v6) | ch07, ch14b |
| https://mecfsscience.org/decodeme-the-biggest-me-cfs-study-ever/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch12 |
| https://mecfsscience.org/genes-pointing-to-the-brain-decodeme-part-ii/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch12 |
| https://mecfsscience.org/what-does-deconditioning-look-like/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch06 |
| https://mecfsscience.org/the-biggest-2-day-exercise-study/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch06 |
| https://mecfsscience.org/discrepancies-in-2-day-exercise-studies/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch06 |
| https://mecfsscience.org/boom-and-bust-another-me-cfs-myth/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch06 |
| https://mecfsscience.org/heds-and-hypermobility-spectrum-disorder/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch14d |
| https://mecfsscience.org/the-problems-with-pots/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch14d |
| https://mecfsscience.org/fitnet-nhs-a-summary/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/the-bmj-review-on-long-covid-interventions/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/the-new-consensus/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/getset-long-term-follow-up/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | Part III |
| https://mecfsscience.org/turning-a-blind-eye-to-blinding/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/cochrane-review-on-exercise-therapy-for-me-cfs-2/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/exercise-therapy-and-lack-of-blinding/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/catastrophizing-time-to-ditch-the-term/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/history-of-psychosomatic-medicine/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/psychosomatic-history-of-multiple-sclerosis/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/psychosomatic-history-of-asthma/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/psychosomatic-history-of-epilepsy/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/psychosomatic-history-of-diabetes/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/psychosomatic-history-of-autism/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/psychosomatic-history-of-schizophrenia/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/the-dark-psychosomatic-history-of-cancer-part-i/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/the-dark-psychosomatic-history-of-heart-disease-part-i/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/the-dark-psychosomatic-history-of-rheumatoid-arthritis/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/the-dark-psychosomatic-history-of-peptic-ulcer-part-i/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/historian-edward-shorter-from-paralysis-to-fatigue/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/nih-funding-for-me-cfs-keeps-falling/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/nih-funding-for-me-cfs-in-2024/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/disease-funding-comparison-me-cfs/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | funding |
| https://mecfsscience.org/why-is-me-cfs-getting-so-little-research-funding/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | funding |
| https://mecfsscience.org/how-many-scientific-papers-are-fake/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/2025-looking-back-on-a-year-of-me-cfs-research/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | review |
| https://mecfsscience.org/2024-looking-back-on-a-year-of-me-cfs-research/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | review |
| https://mecfsscience.org/2023-looking-back-on-a-year-of-me-cfs-research/ | mecfsscience.org | 2026-03-21 | SKIP | review |
| https://mecfsscience.org/2022-looking-back-at-a-year-of-me-cfs-research/ | mecfsscience.org | 2026-03-21 | SKIP | review |
| https://mecfsscience.org/2021-looking-back-at-a-year-of-me-cfs-research/ | mecfsscience.org | 2026-03-21 | SKIP | review |
| https://mecfsscience.org/2020-looking-back-at-a-year-of-me-cfs-research/ | mecfsscience.org | 2026-03-21 | SKIP | review |
| https://mecfsscience.org/intime-the-results-of-cortenes-ct38-trial/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | other |
| https://mecfsscience.org/massachusetts-me-cfs-conference/ | mecfsscience.org | 2026-03-21 | SKIP | other |
| https://mecfsscience.org/a-historic-change-for-the-me-cfs-community/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | other |
| https://mecfsscience.org/comments-on-the-cdc-evidence-review-on-me-cfs/ | mecfsscience.org | 2026-03-21 | SKIP | other |
| https://mecfsscience.org/nih-exploration-of-post-exertional-malaise-in-me-cfs/ | mecfsscience.org | 2026-03-21 | SKIP | other |
| https://mecfsscience.org/clinical-trials-for-me-cfs/ | mecfsscience.org | 2026-03-21 | SKIP | other |
| https://mecfsscience.org/a-rebuttal-of-flottorp-et-al-new-nice-guideline-on-chronic-fatigue-syndrome-more-ideology-than-science/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | other |
| https://mecfsscience.org/problems-with-the-metablind-study/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | other |
| https://mecfsscience.org/nice-guideline-committee-and-grade-methodology/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | other |
| https://mecfsscience.org/qure-study-for-post-infectious-fatigue-syndrome/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | other |
| https://mecfsscience.org/nice-guideline-draft/ | mecfsscience.org | 2026-03-21 | SKIP | other |
| https://mecfsscience.org/progress-in-me-cfs-research/ | mecfsscience.org | 2026-03-21 | SKIP | other |
| https://mecfsscience.org/history-of-surgery/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | other |
| https://pubmed.ncbi.nlm.nih.gov/24557875/ | pubmed | 2026-04-11 | 2026-04-11 | ch06 — MorrisMaes2014mitochondria — O&NS mitochondrial pathways |
| https://pubmed.ncbi.nlm.nih.gov/29602463/ | pubmed | 2026-04-11 | 2026-04-11 | ch06 — Comhaire2018DCA — DCA pilot trial |
| https://pubmed.ncbi.nlm.nih.gov/30220343/ | pubmed | 2026-04-11 | 2026-04-11 | ch06 — Comhaire2018DCAresponders — DCA responder prediction |
| https://pubmed.ncbi.nlm.nih.gov/32727475/ | pubmed | 2026-04-11 | 2026-04-11 | ch06 — Holden2020mitosysrev — systematic review mitochondria |
| https://pubmed.ncbi.nlm.nih.gov/40627396/ | pubmed | 2026-04-11 | 2026-04-11 | ch06 — Shankar2025oxidativestress — MnSOD decrease PNAS 2025 |
| https://pubmed.ncbi.nlm.nih.gov/39408275/ | pubmed | 2026-04-11 | 2026-04-11 | ch06 — Godlewska2024creatineMRS — creatine supplementation MRS |
| https://pubmed.ncbi.nlm.nih.gov/38668888/ | pubmed | 2026-04-11 | 2026-04-11 | ch06 — Molnar2024LCmitochondria — Long COVID mitochondria therapeutics |
| https://pubmed.ncbi.nlm.nih.gov/32972442/ | pubmed | 2026-04-11 | 2026-04-11 | ch06 — Sweetman2020SWATH — PBMC proteomics ETC proteins |
| https://pubmed.ncbi.nlm.nih.gov/33596913/ | pubmed | 2026-04-11 | 2026-04-11 | ch06 — Maksoud2021nutraceuticals — nutraceutical systematic review |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC7136523/ | pubmed | 2026-04-12 | 2026-04-12 | ch06/G28 — NilssonEtAl2020 — ME/CFS metabolic dysfunction not due to anti-mitochondrial antibodies |
| https://pubmed.ncbi.nlm.nih.gov/32327453/ | pubmed | 2026-04-12 | 2026-04-12 | ch06/G28 — SchreinerEtAl2020 — HHV-6 reactivation and mitochondrial fragmentation in ME/CFS |
| https://pubmed.ncbi.nlm.nih.gov/8283607/ | pubmed | 2026-04-12 | 2026-04-12 | ch06/G28 — TakemotoEtAl1993 — anti-ANT prevalence in DCM and myocarditis |
| https://pubmed.ncbi.nlm.nih.gov/2991541/ | pubmed | 2026-04-12 | 2026-04-12 | ch06/G28 — SchultheissBolte1985 — anti-ANT in DCM landmark study |
| https://pubmed.ncbi.nlm.nih.gov/2546261/ | pubmed | 2026-04-12 | 2026-04-12 | ch06/G28 — SchultheissReview1989 — ADP/ATP carrier autoantibodies pathogenesis review |
| https://academic.oup.com/cardiovascres/article/44/1/91/275782 | oxford-academic | 2026-04-12 | 2026-04-12 | ch06/G28 — SchulzeEtAl1999 — anti-ANT antibodies trap ATP in viral myocarditis |
| https://www.sciencedirect.com/science/article/abs/pii/S0022282802915385 | sciencedirect | 2026-04-12 | 2026-04-12 | ch06/G28 — ManchadoEtAl2002 — ANT1 epitope mapping in IDCM |
| https://pubmed.ncbi.nlm.nih.gov/3028680/ | pubmed | 2026-04-12 | 2026-04-12 | ch06/G28 — MendelHartvig1986 — ANT not specific for PBC (null/specificity finding) |
| https://pubmed.ncbi.nlm.nih.gov/37224026/ | pubmed | 2026-04-12 | 2026-04-12 | ch06/G28 — ChenEtAl2023ant — ANT isoforms comprehensive review FASEB |
| https://pubmed.ncbi.nlm.nih.gov/16107323/ | pubmed | 2026-04-12 | 2026-04-12 | ch06/G28 — DornerEtAl2006 — ANT isoform shift halves ATP transport in DCM |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC11943395/ | pubmed | 2026-04-12 | 2026-04-12 | ch06/G28 — GermainEtAl2025 — comprehensive autoantibody profiling in ME/CFS (null) |
| https://pubmed.ncbi.nlm.nih.gov/40211686/ | pubmed | 2026-04-12 | 2026-04-12 | ch06/G28 — WohlrabEtAl2025 — autoantibody targeting therapies ME/CFS post-COVID |
| https://mecfsresearchreview.me/2026/04/15/me-cfs-onset-had-two-peaks-which-may-be-a-clue-to-causes/ | mecfsresearchreview.me | 2026-04-16 | 2026-04-16 | ch05-onset-patterns, ch05-subgroups, ch23-epidemiology — McGrath2026bimodalOnset bimodal onset age peaks |
| https://www.healthrising.org/blog/2026/04/14/blood-immune-system-me-cfs/ | healthrising.org | 2026-04-16 | 2026-04-16 | ch07 (immune remodeling, Galectin-9, complement genetics, EV signaling), ch08 (NII neuroinflammation, CSF proteomics), ch20 (emerging biomarkers), hypothesis registry — 11-study cross-system convergence |
| https://pubmed.ncbi.nlm.nih.gov/27727448/ | pubmed | 2026-04-18 | 2026-04-18 | bib/appendix-h — Nguyen2017trpm3 — first TRPM3 impairment ME/CFS NK cells |
| https://pubmed.ncbi.nlm.nih.gov/31014226/ | pubmed | 2026-04-18 | 2026-04-18 | bib/appendix-h — Cabanas2019trpm3val — patch-clamp validation TRPM3 dysfunction |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC6834647/ | pubmed | 2026-04-18 | 2026-04-18 | bib/appendix-h — Cabanas2019trpm3ldnFront — naltrexone restores TRPM3 in vitro |
| https://pubmed.ncbi.nlm.nih.gov/34266470/ | pubmed | 2026-04-18 | 2026-04-18 | bib/appendix-h — EatonFitch2021trpm3pip2 — TRPM3/PIP2 co-localization NK degranulation |
| https://pubmed.ncbi.nlm.nih.gov/35172836/ | pubmed | 2026-04-18 | 2026-04-18 | bib/appendix-h — EatonFitch2022trpm3ntx — TRPM3 Ca2+ influx + NTX restoration expanded |
| https://pubmed.ncbi.nlm.nih.gov/37509075/ | pubmed | 2026-04-18 | 2026-04-18 | bib/appendix-h — DuPreez2023trpm7 — TRPM7 calcium dysregulation ME/CFS NK cells |
| https://pubmed.ncbi.nlm.nih.gov/26245315/ | pubmed | 2026-04-18 | 2026-04-18 | bib/appendix-h — Vijayan2015alphaDelta — thalamic alpha-delta sleep model fibromyalgia |
| https://pubmed.ncbi.nlm.nih.gov/16777223/ | pubmed | 2026-04-18 | 2026-04-18 | bib/appendix-h — Crunelli2006thalamicTtype — thalamic T-type Ca2+ NREM sleep |
| https://pubmed.ncbi.nlm.nih.gov/28059425/ | pubmed | 2026-04-16 | 2026-04-16 | bib/appendix-h — Germain2017taurineME — ME/CFS plasma metabolomics taurine pathway disturbance |
| https://pubmed.ncbi.nlm.nih.gov/36835097/ | pubmed | 2026-04-16 | 2026-04-16 | bib/appendix-h — Glass2023urineMetabolomics — urine metabolomics post-exertion ME/CFS taurine recovery impaired |
| https://pubmed.ncbi.nlm.nih.gov/37289866/ | pubmed | 2026-04-16 | 2026-04-16 | bib/appendix-h — Singh2023taurineAging — taurine deficiency driver of aging Science landmark |
| https://pubmed.ncbi.nlm.nih.gov/41061678/ | pubmed | 2026-04-16 | 2026-04-16 | bib/appendix-h — Marcangeli2025taurineNull — null result taurine aging humans Aging Cell |
| https://pubmed.ncbi.nlm.nih.gov/40974575/ | pubmed | 2026-04-16 | 2026-04-16 | bib/appendix-h — RossiSmith2025taurineNKA — taurine efflux impairs Na/K-ATPase NLRP3 Cell Reports |
| https://pubmed.ncbi.nlm.nih.gov/24881045/ | pubmed | 2026-04-21 | — | content-staging/literature-zhao2026-exercise.md — Hrobjartsson2014blinding — blinding bias SMD 0.56 patient-reported outcomes |
| https://pubmed.ncbi.nlm.nih.gov/22945832/ | pubmed | 2026-04-21 | — | content-staging/literature-zhao2026-exercise.md — Savovic2012blinding — BRANDO 13% exaggeration subjective outcomes |
| https://pubmed.ncbi.nlm.nih.gov/40475370/ | pubmed | 2026-04-21 | — | content-staging/literature-zhao2026-exercise.md — Pitre2023blindingImpact — Cochrane blinding impact review |
| https://pubmed.ncbi.nlm.nih.gov/30305916/ | pubmed | 2026-04-21 | — | content-staging/literature-zhao2026-exercise.md — VinkNiese2018getCochrane — GET not effective re-analysis |
| https://pubmed.ncbi.nlm.nih.gov/32568149/ | pubmed | 2026-04-21 | — | content-staging/literature-zhao2026-exercise.md — VinkNiese2020workCFS — GET does not restore work capacity |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC9141828/ | pubmed | 2026-04-21 | — | content-staging/literature-zhao2026-exercise.md — VinkNiese2022NICE — NICE guidance exposed GET/CBT flaws |
| https://pubmed.ncbi.nlm.nih.gov/39697147/ | pubmed | 2026-04-21 | — | content-staging/literature-zhao2026-exercise.md — Larun2024exerciseCFS — Cochrane exercise CFS updated Dec 2024 |
| [frontiersin/fneur.2025.1681990](https://www.frontiersin.org/journals/neurology/articles/10.3389/fneur.2025.1681990/full) | frontiersin | 2026-04-21 | — | content-staging/literature-zhao2026-exercise.md — Wei2025exerciseMECFS — exercise meta-analysis 13 RCTs n=1305 |
| [sciencedirect/S2589004225024393](https://www.sciencedirect.com/science/article/pii/S2589004225024393) | sciencedirect | 2026-04-21 | — | content-staging/literature-zhao2026-exercise.md — Liao2025exerciseNetwork — network meta-analysis 25 RCTs n=2831 |
| [s4me.info/zhao-et-al-49862](https://www.s4me.info/threads/the-efficacy-of-exercise-in-patients-with-myalgic-encephalomyelitis-chronic-fatigue-syndrome-a-systematic-review-and-meta-analysis-2026-zhao-et-al.49862/) | s4me.info | 2026-04-21 | — | content-staging/literature-zhao2026-exercise.md — community critique of Zhao 2026 |
| https://pubmed.ncbi.nlm.nih.gov/7786694/ | pubmed | 2026-04-16 | 2026-04-16 | bib/appendix-h — Suleiman1994taurineCardiac — cardiac calcium paradox taurine Na/K-ATPase NCX |
| https://pubmed.ncbi.nlm.nih.gov/26576229/ | pubmed | 2026-04-16 | 2026-04-16 | bib/appendix-h — Prentice2015taurineNeuro — taurine neuroprotection calcium buffering mitochondrial stabilization |
| https://pubmed.ncbi.nlm.nih.gov/28580833/ | pubmed | 2026-04-16 | 2026-04-16 | bib/appendix-h — Ahmadian2017taurineHF — taurine RCT heart failure anti-inflammatory exercise |
| https://pubmed.ncbi.nlm.nih.gov/35855073/ | pubmed | 2026-04-16 | 2026-04-16 | bib/appendix-h — McGurk2022taurineHFreview — systematic review taurine heart failure null meta-analysis |
| https://pubmed.ncbi.nlm.nih.gov/31865328/ | pubmed | 2026-04-16 | 2026-04-16 | bib/appendix-h — Zhang2020taurineDiabetes — taurine TRPC6 H2S calcium overload mitochondrial protection diabetes analog |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC10700560/ | PMC | 2026-04-17 | 2026-04-17 | bib/appendix-h — saha2023impa1 — IMPA1/PIP2/Ca2+ signaling by lithium iPSC neurons |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC1459068/ | PMC | 2026-04-17 | 2026-04-17 | bib/appendix-h — schlecker2006ncs1 — NCS-1 InsP3R1 lithium IC50 JCI |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC6224314/ | PMC | 2026-04-17 | 2026-04-17 | bib/appendix-h — boeckel2018ncs1 — NCS-1 calcium signaling review BBA |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC6901312/ | PMC | 2026-04-17 | 2026-04-17 | bib/appendix-h — nguyen2019ncs1 — NCS-1 InsP3R1 binding site Leu89 JBC |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC5315558/ | PMC | 2026-04-17 | 2026-04-17 | bib/appendix-h — sade2016ip3 — IP3 accumulation inositol depletion lithium behavioral Transl Psychiatry |
| https://pubmed.ncbi.nlm.nih.gov/15558078/ | pubmed | 2026-04-17 | 2026-04-17 | bib/appendix-h — harwood2005inositol — inositol depletion hypothesis revisited Mol Psychiatry |
| https://pubmed.ncbi.nlm.nih.gov/9653710/ | pubmed | 2026-04-17 | 2026-04-17 | bib/appendix-h — belmaker1998inositol — behavioral reversal lithium by inositol isomers Neuropsychopharmacology |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC5751514/ | PMC | 2026-04-17 | 2026-04-17 | bib/appendix-h — yu2016inositolGSK3 — inositol depletion GSK3 inhibition bipolar Future Neurology |
| https://pubmed.ncbi.nlm.nih.gov/37648856/ | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Lansky2023trpv3pentamer — TRPV3 pentamer HS-AFM cryo-EM pore dilation Nature |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC12081643/ | PMC | 2026-04-19 | 2026-04-19 | bib/appendix-h — Lansky2025trpv3dynamics — TRPV3 pentamer structural dynamics Nat Commun |
| https://pubmed.ncbi.nlm.nih.gov/21451044/ | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Cavanaugh2011trpv1vascular — TRPV1 arteriolar smooth muscle vasoconstriction J Neurosci |
| https://pubmed.ncbi.nlm.nih.gov/32944976/ | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Phan2020trpv1arterial — TRPV1 arterial circulation vasoconstriction blood pressure J Physiol |
| https://pubmed.ncbi.nlm.nih.gov/35020949/ | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Phan2022trpv1myogenic — TRPV1 myogenic tone arteries J Physiol |
| https://pubmed.ncbi.nlm.nih.gov/38399371/ | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — RiveraMancilla2024trpDermal — TRPA1/TRPM3/TRPV1 human dermal arteries Pharmaceuticals |
| https://pubmed.ncbi.nlm.nih.gov/39539288/ | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Ren2024oligomeric — oligomeric rearrangement channel activity Biophys Rep |
| https://pubmed.ncbi.nlm.nih.gov/33007264/ | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Delmas2020snapShot — SnapShot orofacial sensation TRP family Cell |
| <https://www.explorationpub.com/Journals/ent/Article/1004112> | explorationpub | 2026-04-19 | 2026-04-19 | bib/appendix-h — LopezAmador2025orexin — integrative review orexin system ME/CFS 27 studies |
| <https://pubmed.ncbi.nlm.nih.gov/21813697/> | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Grossberg2011orexinLethargy — inflammation-induced lethargy orexin neuron suppression J Neurosci |
| <https://pubmed.ncbi.nlm.nih.gov/19328847/> | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Gaykema2009orexinSickness — LPS Fos suppression orexin neurons sickness behavior BBI |
| <https://pubmed.ncbi.nlm.nih.gov/24216337/> | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Weymann2014orexinChemoFatigue — orexin chemotherapy-induced fatigue BBI |
| <https://pubmed.ncbi.nlm.nih.gov/40149526/> | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Ruhrländer2025orexinPASC — orexin autonomic cardiometabolic PASC Biomedicines |
| <https://pmc.ncbi.nlm.nih.gov/articles/PMC12173137/> | PMC | 2026-04-19 | 2026-04-19 | bib/appendix-h — Heinicke2025orexinCOVID — plasma orexin-A COVID-19 ICU BJA Open |
| <https://pubmed.ncbi.nlm.nih.gov/37796986/> | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Ito2023orexinREM — orexin deficiency REM sleep architecture narcolepsy PNAS |
| <https://pubmed.ncbi.nlm.nih.gov/41076550/> | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Rauf2025narcolepsyOrexin — orexin deficiency narcolepsy mechanisms agonist therapeutics Brain Behavior |
| <https://pubmed.ncbi.nlm.nih.gov/9527442/> | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Sakurai1998orexin — orexin/hypocretin discovery neuropeptides GPCRs Cell 1998 |
| https://pubmed.ncbi.nlm.nih.gov/39788123/ | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Hauglund2025neVasomotion — NE vasomotion drives glymphatic clearance Cell 2025 |
| https://pubmed.ncbi.nlm.nih.gov/31672896/ | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Fultz2019csfOscillations — EEG/hemodynamic/CSF oscillations human NREM sleep Science |
| https://pubmed.ncbi.nlm.nih.gov/30679382/ | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Holth2019tauSleep — sleep-wake cycle regulates ISF tau + CSF tau Science |
| https://pubmed.ncbi.nlm.nih.gov/26245965/ | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Lee2015sleepPosition — lateral sleep position and glymphatic transport J Neurosci |
| https://pubmed.ncbi.nlm.nih.gov/34526407/ | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — HablitzNedergaard2021glymphatic — glymphatic system fundamental neurobiology review J Neurosci |
| https://pubmed.ncbi.nlm.nih.gov/28899014/ | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Ju2017slowWaveAmyloid — slow wave disruption increases CSF amyloid-beta Brain |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC12339398/ | PMC | 2026-04-19 | 2026-04-19 | bib/appendix-h — Zhu2025noradrenergicGlymphatic — noradrenergic modulation glymphatic Mol Psychiatry |
| https://pubmed.ncbi.nlm.nih.gov/40108491/ | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Chaganti2025longCovidGlymphatic — DTI-ALPS glymphatic dysfunction Long COVID BMC Neurology |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC12182059/ | PMC | 2026-04-19 | 2026-04-19 | bib/appendix-h — Tang2025covidSleepDTIALPS — glymphatic alterations post-COVID sleep disorder DTI-ALPS Nat Sci Sleep |
| https://pubmed.ncbi.nlm.nih.gov/34202826/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — KhanpourArdestani2021mindBody — systematic review mind-body interventions ME/CFS |
| https://pubmed.ncbi.nlm.nih.gov/32751659/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Tolle2020immunoadsorption — repeat IA pilot n=5 ME/CFS JCM |
| https://pubmed.ncbi.nlm.nih.gov/37835071/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Stein2023immunoadsorptionInterim — interim report RIA post-COVID ME/CFS n=10 JCM |
| https://pubmed.ncbi.nlm.nih.gov/38454468/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Pressler2024IAPACSCFSprotocol — IA-PACS-CFS RCT protocol paper Trials NCT05710770 |
| https://pubmed.ncbi.nlm.nih.gov/39797400/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Anft2025immunoadsorption — IA immune alterations COVID-induced ME/CFS n=12 Molecular Therapy |
| https://clinicaltrials.gov/study/NCT05954325 | clinicaltrials.gov | 2026-04-20 | 2026-04-20 | bib/appendix-h — EXTINCTtrial2023 — EXTINCT sham-controlled RCT n=63 Hannover completed |
| https://clinicaltrials.gov/study/NCT07529197 | clinicaltrials.gov | 2026-04-20 | 2026-04-20 | bib/appendix-h — IMPACTtrial2026 — IMPACT observational n=50 Charite outpatient recruiting |
| https://pubmed.ncbi.nlm.nih.gov/21197347/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Sampalli2009MBSR — MBSR controlled trial MCS/CFS/fibromyalgia |
| https://pubmed.ncbi.nlm.nih.gov/23990997/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Lakhan2013MBT — meta-analysis mindfulness somatization disorders incl. CFS |
| https://pubmed.ncbi.nlm.nih.gov/20815988/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Merkes2010MBSR — systematic review MBSR for chronic diseases incl. CFS |
| https://pubmed.ncbi.nlm.nih.gov/25525457/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Oka2014isometricYoga — isometric yoga RCT CFS n=30 |
| https://pubmed.ncbi.nlm.nih.gov/28270860/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Oka2017recumbentYoga — recumbent isometric yoga pilot severe ME/CFS n=12 |
| https://pubmed.ncbi.nlm.nih.gov/29643935/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Oka2018yogaMechanisms — autonomic/biomarker mechanisms isometric yoga CFS |
| https://pubmed.ncbi.nlm.nih.gov/29231037/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — OConnor2019energyEnvelope — energy envelope pacing theory ME/CFS |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC12708862/ | PMC | 2026-04-20 | 2026-04-20 | bib/appendix-h — Errico2025ANSaging — ANS deregulation theory of aging npj Aging perspective |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC10828245/ | PMC | 2026-04-20 | 2026-04-20 | bib/appendix-h — Giunta2023ANSinflamaging — ANS imbalance aging anti-inflammaging GeroScience |
| https://www.aging-us.com/article/203111/text | aging-us.com | 2026-04-20 | 2026-04-20 | bib/appendix-h — Balasubramanian2021glialSenescence — brainstem glial senescence sympathetic overactivity mouse |
| https://pubmed.ncbi.nlm.nih.gov/36964253/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Kim2023cGASSTING — mtDNA release cGAS-STING Exp Mol Med review |
| https://pubmed.ncbi.nlm.nih.gov/37225695/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Park2023AMPK — AMPK autophagy energy stress Nature Commun |
| https://pubmed.ncbi.nlm.nih.gov/29486769/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Rajeevan2018telomere — ME/CFS premature telomere attrition n=639 J Transl Med |
| https://pubmed.ncbi.nlm.nih.gov/41017304/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Luo2025MECFSimmunophysiology — immunosenescence ME/CFS physical fatigue Comp Physiology |
| https://pubmed.ncbi.nlm.nih.gov/41527963/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Xu2026immunosenescenceCognitive — immunosenescence hemodynamics cognition ME/CFS Comp Physiology |
| https://pubmed.ncbi.nlm.nih.gov/38703861/ | pubmed | 2026-04-20 | — | bib/staging — Frye2024ASDmitochondria — ASD mitochondrial biomarkers meta-analysis 204 studies |
| https://pubmed.ncbi.nlm.nih.gov/33603376/ | pubmed | 2026-04-20 | — | bib/staging — Kindgren2021hEDSadhd — ADHD/ASD prevalence in hEDS/HSD children Sweden |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC8847158/ | PMC | 2026-04-20 | — | bib/staging — Csecs2022hypermobility — joint hypermobility mediates neurodivergence–dysautonomia link |

## Dopamine Nigrostriatal VMAT2 Long COVID Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-08-10 | 16 queries: primary Liu 2026 VMAT2 paper, VMAT2+dopamine+long COVID, dopamine+ME/CFS, nigrostriatal+fatigue, SARS-CoV-2+neuroinflammation+dopaminergic, dopamine transporter+ME/CFS, VMAT2+Parkinson biomarker, MAO-B inhibitor+fatigue, nigrostriatal+post-viral/post-infectious, Guedj+Beckman commentary (not found) |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (16 queries, batch) | pubmed/eutils | 2026-08-10 | — | ops/research/literature-dopamine-nigrostriatal-long-covid-2026-08-10.md, ops/research/search-log-dopamine-nigrostriatal-long-covid-2026-08-10.md, bib/long-covid.bib, bib/neuroinflammation.bib, bib/treatments.bib, appendix-h — Dopamine nigrostriatal VMAT2 Long COVID literature (10 new papers + 7 pre-existing reused) |
| https://www.thelancet.com/journals/ebiom/article/PIIS2352-3964(26)00222-7/fulltext | thelancet.com | 2026-08-10 | SKIP (403 paywall) | Primary Liu 2026 abstract obtained via PubMed E-utilities instead |
| https://www.sciencealert.com (2 URLs) | sciencealert.com | 2026-08-10 | SKIP (404) | Both article URLs returned 404; secondary source not accessible |
| https://pubmed.ncbi.nlm.nih.gov/40145613/ | pubmed | 2026-04-20 | — | bib/staging — BaezaVelasco2025autismEDS — autism–hypermobility–EDS systematic review meta-analysis |
| https://pubmed.ncbi.nlm.nih.gov/26505533/ | pubmed | 2026-04-20 | — | bib/staging — Lau2015migraineCFS — migraine confers 1.5x CFS risk, Taiwan national cohort |
| https://pubmed.ncbi.nlm.nih.gov/37123270/ | pubmed | 2026-04-20 | — | bib/staging — Wang2023migraineMito — energy metabolism disturbance migraine mitochondrial review |
| https://pubmed.ncbi.nlm.nih.gov/40002484/ | pubmed | 2026-04-20 | — | bib/staging — ColpaniFilho2025BH4ASD — BH4/tetrahydrobiopterin in ASD systematic review |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC12386507/ | PMC | 2026-04-20 | — | bib/staging — Williams2025GCH1mental — GCH1 rs841 deficiency BH4 neurodevelopmental case series |
| https://pubmed.ncbi.nlm.nih.gov/41749537/ | pubmed | 2026-04-20 | — | bib/staging — DelRosso2026ironNeurodevelopmental — iron deficiency ADHD/ASD comparative review |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC11733788/ | PMC | 2026-04-20 | — | bib/staging — Quadt2024neurodivergentFatigue — neurodivergent traits IL-6 chronic disabling fatigue ALSPAC |
| https://www.mdpi.com/2673-8112/6/1/1 | MDPI | 2026-04-20 | — | bib/staging — Raw2025neurodivergencePostCOVID — neurodivergence as post-COVID-19 risk factor n=267 HCWs |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC12949141/ | PMC | 2026-04-20 | 2026-04-20 | bib/appendix-h — Wirth2026prodromalICD — ICD-10 pre-ME/CFS diagnoses children N=36,332 case-control |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC5974860/ | PMC | 2026-04-20 | 2026-04-20 | bib/appendix-h — Collin2018sleepCFS — childhood sleep predicts adolescent ME/CFS ALSPAC N=13,978 |
| https://pubmed.ncbi.nlm.nih.gov/17606539/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Wyller2007thermoregCFS — thermoregulation abnormalities adolescent CFS sympathetic dysfunction |
| https://www.frontiersin.org/journals/pediatrics/articles/10.3389/fped.2019.00012/full | frontiersin | 2026-04-20 | 2026-04-20 | bib/appendix-h — Chu2019onsetPatterns — onset patterns course ME/CFS N=150 prodromal |
| https://pubmed.ncbi.nlm.nih.gov/38537312/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Moak2024SFNpediatric — SFN in pediatric POTS/OI 53% prevalence N=109 |
| https://pubmed.ncbi.nlm.nih.gov/17088507/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Kato2006premorbid — premorbid predictors chronic fatigue Swedish twins N=19,192 |
| https://pubmed.ncbi.nlm.nih.gov/25584529/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Jason2015CFSvsME — CFS vs sudden onset ME null result for universal prodrome N=285 |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC6348258/ | PMC | 2026-04-20 | 2026-04-20 | bib/appendix-h — Geraghty2019diagnosticAccuracy — diagnostic accuracy pediatric ME/CFS commentary 40% error rate |
| https://pubmed.ncbi.nlm.nih.gov/24059525/ | pubmed | 2026-04-21 | — | bib/staging — Nicholls2013sulfideCOX — sulfide inhibition of cytochrome c oxidase biphasic mechanism |
| https://pubmed.ncbi.nlm.nih.gov/34884491/ | pubmed | 2026-04-21 | — | bib/staging — Borisov2021h2sMito — H2S impact on mitochondrial and bacterial bioenergetics dose-response |
| https://pubmed.ncbi.nlm.nih.gov/21208106/ | pubmed | 2026-04-21 | — | content-staging/bib-entries-sibo.bib — Pimentel2011TARGET — rifaximin IBS-D TARGET 1+2 RCTs NEJM |
| https://pubmed.ncbi.nlm.nih.gov/20574504/ | pubmed | 2026-04-21 | — | content-staging/bib-entries-sibo.bib — Pimentel2009prokinetics — low-dose prokinetics delay SIBO recurrence |
| https://pubmed.ncbi.nlm.nih.gov/22450306/ | pubmed | 2026-04-21 | — | content-staging/bib-entries-sibo.bib — Deloose2012MMCreview — MMC control mechanisms Nat Rev Gastroenterol Hepatol |
| https://pubmed.ncbi.nlm.nih.gov/23991830/ | pubmed | 2026-04-21 | — | content-staging/bib-entries-sibo.bib — Szabo2014H2Smito — H2S mitochondrial Complex IV biphasic regulation Br J Pharmacol |
| https://pubmed.ncbi.nlm.nih.gov/28323273/ | pubmed | 2026-04-21 | — | content-staging/bib-entries-sibo.bib — Rezaie2017breathConsensus — North American Consensus breath testing Am J Gastroenterol |
| https://pubmed.ncbi.nlm.nih.gov/32023228/ | pubmed | 2026-04-21 | — | content-staging/bib-entries-sibo.bib — Pimentel2020ACGguideline — ACG clinical guideline SIBO |
| https://pubmed.ncbi.nlm.nih.gov/39000446/ | pubmed | 2026-04-21 | — | content-staging/bib-entries-sibo.bib — Wielgosz2024SIBOnutrition — SIBO subtypes nutritional status Int J Mol Sci |
| https://pubmed.ncbi.nlm.nih.gov/38798120/ | pubmed | 2026-04-21 | — | content-staging/bib-entries-sibo.bib — Kashyap2024SIBOcritique — critical appraisal SIBO hypothesis ESNM/ANMS |
| https://pubmed.ncbi.nlm.nih.gov/33080111/ | pubmed | 2026-04-21 | — | bib/staging — Landry2020SQOR — SQOR H2S clearance enzyme CoQ10 coupling mechanism |
| https://www.frontiersin.org/journals/cell-and-developmental-biology/articles/10.3389/fcell.2025.1685252/full | frontiersin | 2026-04-21 | — | bib/staging — Peng2025SQORrheostat — SQOR metabolic rheostat H2S redox homeostasis disease |
| https://pubmed.ncbi.nlm.nih.gov/21617578/ | pubmed | 2026-04-21 | — | bib/staging — Norris2011liverH2S — liver portal clearance H2S oxygen-dependent >97% efficiency |
| https://pubmed.ncbi.nlm.nih.gov/39059820/ | pubmed | 2026-04-21 | — | bib/staging — Pimenta2024sulfidogenic — Desulfovibrio Bilophila wadsworthia human disease review 2024 |
| https://pubmed.ncbi.nlm.nih.gov/39030389/ | pubmed | 2026-04-21 | — | bib/staging — Qi2024DesulfovibrioGLP1 — Desulfovibrio H2S inhibits mitochondria L cells GLP-1 Nature Metabolism |
| https://pubmed.ncbi.nlm.nih.gov/36114762/ | pubmed | 2026-04-21 | — | bib/staging — VillanuevaMillan2022IBSsubtypes — H2S producers IBS-D Desulfovibrio Fusobacterium breath test human |
| https://pubmed.ncbi.nlm.nih.gov/38060167/ | pubmed | 2026-04-21 | — | bib/staging — VillanuevaMillan2023animalH2S — H2S producers diarrhea phenotype D. piger rat model causal |
| https://pubmed.ncbi.nlm.nih.gov/40429741/ | pubmed | 2026-04-21 | — | bib/staging — Ye2025lowSulfurUC — reduced sulfur diet UC pilot RCT n=22 microbiome metabolome |
| https://pubmed.ncbi.nlm.nih.gov/33137711/ | pubmed | 2026-04-21 | — | bib/staging — Paul2020h2sMitoRedox — H2S mitochondria biphasic effects nuanced cytoprotective vs cytotoxic |
| https://pubmed.ncbi.nlm.nih.gov/22777991/ | pubmed | 2026-04-21 | — | bib/staging — Vaucher2012 — iron supplementation RCT nonanemic women ferritin <50 µg/L fatigue 47.7% reduction |
| https://pubmed.ncbi.nlm.nih.gov/21705493/ | pubmed | 2026-04-21 | — | bib/staging — Krayenbuehl2011 — IV iron RCT fatigue nonanemic women ferritin ≤50 ng/mL benefit at ≤15 ng/mL |
| https://pubmed.ncbi.nlm.nih.gov/28625177/ | pubmed | 2026-04-21 | — | bib/staging — Yokoi2017 — meta-analysis IDWA fatigue 6 RCTs 6 cross-sectional British J Nutrition |
| https://pubmed.ncbi.nlm.nih.gov/33762368/ | pubmed | 2026-04-21 | — | bib/staging — AlNaseem2021 — IDWA clinical review ferritin thresholds 15/30/100 µg/L Clinical Medicine |
| https://pubmed.ncbi.nlm.nih.gov/30200431/ | pubmed | 2026-04-21 | — | bib/staging — Workinger2018 — magnesium serum vs intracellular testing limitations Nutrients |
| https://pubmed.ncbi.nlm.nih.gov/32679784/ | pubmed | 2026-04-21 | — | bib/staging — Charoenngam2020 — vitamin D immune threshold 40-60 ng/mL vs bone 20 ng/mL Nutrients |
| https://pubmed.ncbi.nlm.nih.gov/21646368/ | pubmed | 2026-04-21 | — | bib/staging — Holick2011 — Endocrine Society vitamin D guideline JCEM deficiency/insufficiency/sufficiency thresholds |
| https://pubmed.ncbi.nlm.nih.gov/19190113/ | pubmed | 2026-04-21 | — | bib/staging — Panicker2009 — DIO2 Thr92Ala polymorphism psychological wellbeing normal TSH T3 T4 JCEM n=552 |
| https://pubmed.ncbi.nlm.nih.gov/29615976/ | pubmed | 2026-04-21 | — | bib/staging — RuizNunez2018 — low T3 syndrome ME/CFS case-control n=197 normal TSH FT3 below range OR 2.56 |
| https://pubmed.ncbi.nlm.nih.gov/21186954/ | pubmed | 2026-04-21 | — | bib/staging — Ott2011 — Hashimoto thyroiditis fatigue quality of life normal TSH Thyroid n=426 |
| https://pubmed.ncbi.nlm.nih.gov/28453534/ | pubmed | 2026-04-21 | — | bib/staging — Joustra2017 — vitamin mineral status CFS fibromyalgia systematic review 45 studies negative serum findings |
| https://www.sciencedirect.com/science/article/abs/pii/S0022399926001613 | sciencedirect | 2026-04-21 | 2026-04-21 | ch24/ch17/bib/appendix-h — Zhao2026exercise — exercise meta-analysis 17 RCTs n=1944 subjective-only improvement |
| https://pubmed.ncbi.nlm.nih.gov/24881045/ | pubmed | 2026-04-21 | 2026-04-21 | ch24/bib/appendix-h — Hrobjartsson2014blinding — within-trial blinding bias SMD 0.56 patient-reported outcomes |
| https://pubmed.ncbi.nlm.nih.gov/22945832/ | pubmed | 2026-04-21 | 2026-04-21 | ch24/bib/appendix-h — Savovic2012blinding — BRANDO 1973 RCTs blinding 13% exaggeration subjective outcomes |
| https://pubmed.ncbi.nlm.nih.gov/40475370/ | pubmed | 2026-04-21 | 2026-04-21 | ch24/bib/appendix-h — Pitre2023blindingImpact — Cochrane blinding update confirms BRANDO |
| https://pubmed.ncbi.nlm.nih.gov/32568149/ | pubmed | 2026-04-21 | 2026-04-21 | ch24/bib/appendix-h — VinkNiese2020workCFS — GET does not restore work capacity |
| https://pubmed.ncbi.nlm.nih.gov/35628033/ | pubmed | 2026-04-21 | 2026-04-21 | ch24/bib/appendix-h — VinkNiese2022NICE — PACE 20% subjective improved objectively deteriorated |
| https://pubmed.ncbi.nlm.nih.gov/39697147/ | pubmed | 2026-04-21 | 2026-04-21 | ch24/bib/appendix-h — Larun2024exerciseCFS — Cochrane exercise review updated Dec 2024 acknowledged-but-discounted bias |
| https://www.frontiersin.org/journals/neurology/articles/10.3389/fneur.2025.1681990/full | frontiersin | 2026-04-21 | 2026-04-21 | ch17/bib — Wei2025exerciseMECFS — exercise meta-analysis 13 RCTs same structural flaw |
| https://www.sciencedirect.com/science/article/pii/S2589004225024393 | sciencedirect | 2026-04-21 | 2026-04-21 | ch17/bib — Liao2025exerciseNetwork — network meta-analysis 20 trials same structural flaw |
| https://link.springer.com/article/10.1007/s10354-026-01155-6 | springer | 2026-06-06 | — | bib/appendix-h/content-staging — Hermisson2026CareGuide — severe ME/CFS care guide consensus statement |
| https://pubmed.ncbi.nlm.nih.gov/40725538/ | pubmed | 2026-04-23 | — | ch20/ch02/ch05/bib/appendix-h — Grach2025voiceSpeech — voice speech abnormalities ME/CFS Pacing Narrative Study AI analysis |
| https://pubmed.ncbi.nlm.nih.gov/40944028/ | pubmed | 2026-04-23 | — | ch09/ch14d/ch20/bib/appendix-h — MCAM2025autonomic — autonomic dysfunction MCAM multi-site n=442 COMPASS-31 NASA lean test |
| https://pubmed.ncbi.nlm.nih.gov/41598473/ | pubmed | 2026-04-23 | — | ch17/ch24/bib/appendix-h — Goicoechea2026pediatricRehab — pediatric post-COVID pulmonary rehab 12-month n=115 quasi-experimental |
| https://pubmed.ncbi.nlm.nih.gov/41598742/ | pubmed | 2026-04-23 | — | ch05/ch03/ch14a/bib/appendix-h — Vink2026severeME — severe ME overview bedbound 2-day CPET no effective treatments |
| https://pubmed.ncbi.nlm.nih.gov/41753164/ | pubmed | 2026-04-23 | — | ch14d/ch23/bib/appendix-h — Blitshteyn2026POTSmenopause — POTS menopause HRT clinical review vaginal estrogen transdermal |
| https://pubmed.ncbi.nlm.nih.gov/41753313/ | pubmed | 2026-04-23 | — | ch14d/ch05/ch23/bib/appendix-h — Boris2026POTStelemedicine — pediatric POTS telemedicine n=277 MCAS 70% hypermobility 78% |
| https://www.funcap.no/ | funcap.no | 2026-04-23 | — | content-staging/literature-funcap-2026-04-23.md — FUNCAP questionnaire official site; questionnaire downloads 8 languages; CC BY license |
| https://www.funcap.no/translations-2/funcap-in-french/ | funcap.no | 2026-04-23 | — | content-staging/literature-funcap-2026-04-23.md — FUNCAP French translation page; downloads FUNCAP55/27 PDF+DOCX |
| https://www.funcap.no/funcap-resources/ | funcap.no | 2026-04-23 | — | content-staging/literature-funcap-2026-04-23.md — FUNCAP resources page; links to Sommerfelt 2024 open-access paper |
| https://www.funcap.no/funcap-news/ | funcap.no | 2026-04-23 | SKIP — News page empty (no posts) | content-staging/literature-funcap-2026-04-23.md — no content |
| https://jamanetwork.com/journals/jamainternalmedicine/fullarticle/216675 | jamanetwork | 2026-04-25 | 2026-04-25 | bib/appendix-h — Schacterle2004pregnancy — CFS pregnancy outcomes n=86 women; spontaneous abortion 30% vs 8%; offspring developmental delays 21% vs 8% |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC10565252/ | pmc | 2026-04-25 | 2026-04-25 | bib/appendix-h — Slack2023pregnancyReview — ME/CFS pregnancy mixed-methods systematic review 16 studies; evidence limited and inconclusive |
| https://pubmed.ncbi.nlm.nih.gov/35421511/ | pubmed | 2026-04-25 | 2026-04-25 | bib/appendix-h — Thomas2022sexDifferences — ME/CFS sex differences neuroendocrinology 3:1 female ratio reproductive events |
| https://pubmed.ncbi.nlm.nih.gov/18586181/ | pubmed | 2026-04-25 | 2026-04-25 | bib/appendix-h — Allen2008childbearing — CFS women childbearing years clinical review midwifery guidelines |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC12468137/ | pmc | 2026-04-25 | 2026-04-25 | bib/appendix-h — Compton2025endometriosis — endometriosis ME/CFS meta-analysis OR=2.79 13 studies |
| https://pubmed.ncbi.nlm.nih.gov/37234076/ | pubmed | 2026-04-25 | 2026-04-25 | bib/appendix-h — Pollack2023reproductiveHealth — female reproductive health Long COVID ME/CFS POTS literature review |
| https://pubmed.ncbi.nlm.nih.gov/30177236/ | pubmed | 2026-04-25 | 2026-04-25 | bib/appendix-h — MeltzerBrody2018brexanolone — Lancet phase 3 RCT brexanolone n=246 PPD proof-of-concept allopregnanolone GABA-A |
| https://pubmed.ncbi.nlm.nih.gov/32435663/ | pubmed | 2026-04-25 | 2026-04-25 | bib/appendix-h — MeltzerBrodyKanes2020allopregnanolone — allopregnanolone PPD pathophysiology review GABA-A HPA anti-inflammatory |
| https://pubmed.ncbi.nlm.nih.gov/31345741/ | pubmed | 2026-04-25 | 2026-04-25 | bib/appendix-h — SzekeresBartho2019progestogens — progestogens immunology review PIBF Th2 NK suppression Treg |
| https://pubmed.ncbi.nlm.nih.gov/19371956/ | pubmed | 2026-04-25 | 2026-04-25 | bib/appendix-h — Raghupathy2009PIBF — PIBF cytokine shift n=72 IL-4 IL-10 Th2 in vitro recurrent miscarriage |
| https://pubmed.ncbi.nlm.nih.gov/30604567/ | pubmed | 2026-04-25 | 2026-04-25 | bib/appendix-h — Hierweger2019progesteroneT — progesterone T-cell GR-dependent Treg enrichment in vitro murine |
| https://pubmed.ncbi.nlm.nih.gov/16406399/ | pubmed | 2026-04-25 | 2026-04-25 | bib/appendix-h — AndreenBackstrom2006pharmacokinetics — oral progesterone PK n=8 allopregnanolone prodrug 20 mg |
| https://pubmed.ncbi.nlm.nih.gov/22393359/ | pubmed | 2026-04-25 | 2026-04-25 | bib/appendix-h — Zhao2012continuousProgesterone — continuous vs cyclic progesterone receptor downregulation hippocampus rats |
| https://pubmed.ncbi.nlm.nih.gov/19272715/ | pubmed | 2026-04-25 | 2026-04-25 | bib/appendix-h — AndreenBackstrom2009negMood — allopregnanolone biphasic GABA-A paradoxical anxiogenic low dose PMDD |
| https://pubmed.ncbi.nlm.nih.gov/15142269/ | pubmed | 2026-04-25 | 2026-04-25 | bib/appendix-h — Gur2004fibromyalgiaHormones — progesterone null result n=176 fibromyalgia CFS HPG axis normal |
| https://pubmed.ncbi.nlm.nih.gov/15588275/ | pubmed | 2026-04-25 | 2026-04-25 | bib/appendix-h — Cevik2004CFShormones — progesterone null result n=43 CFS both menstrual phases HPG normal |
| https://www.sciencedaily.com/releases/2026/04/260426012303.htm | sciencedaily | 2026-04-30 | 2026-04-30 | ch04-07 — Karakaya2026EPAbrain — EPA TBI/CTE vascular repair; cited to clarify inapplicability to ME/CFS omega-3 recommendation |
| https://link.springer.com/article/10.1007/s00401-026-03019-0 | springer | 2026-04-30 | 2026-04-30 | bib/appendix-h — Mignolet2026passiveTransferLC — LC IgG DRG pain transfer no cognitive impairment |
| https://pubmed.ncbi.nlm.nih.gov/34196305/ | pubmed | 2026-04-30 | 2026-04-30 | bib/appendix-h — Goebel2021passiveTransferFM — FM IgG passive transfer satellite glial cells JCI 2021 |
| https://www.cell.com/cell-reports-medicine/fulltext/S2666-3791(26)00110-2 | cell.com | 2026-04-30 | 2026-04-30 | bib/appendix-h — Chen2026igGLongCOVID — LC IgG persistent allodynia 3 subgroups Cell Reports Med 2026 |
| https://pubmed.ncbi.nlm.nih.gov/38947091/ | pubmed | 2026-04-30 | 2026-04-30 | bib/appendix-h — SantosGuedes2024autoantibodiesLC — causal autoantibodies neurological LC preprint Iwasaki/Yale |
| https://pubmed.ncbi.nlm.nih.gov/38630952/ | pubmed | 2026-04-30 | 2026-04-30 | bib/appendix-h — McAlpine2024sfnCOVID — post-COVID SFN case-control n=16 IVIG response 92% PEM |
| https://medicalxpress.com/news/2026-04-silencing-stress-pave-longer-life.html | medicalxpress | 2026-05-01 | — | Phase 1 research launch — ISR/GCN2–ATF4 pathway suppression longevity; primary paper PNAS 2026 Götz et al. |
| https://doi.org/10.1186/s12967-026-08162-6 | springer | 2026-04-26 | 2026-04-26 | bib/appendix-h — ChalderMoreau2026ptprn2 — PTPRN2 hypomethylation PHB2 miR-153-3p ME/CFS n=54 |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC11041712/ | PMC | 2026-04-26 | 2026-04-26 | bib/appendix-h — Stabile2024mir153memory — miR-153-3p hippocampus memory mice Mol Neurobiol |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC12725688/ | PMC | 2026-04-26 | 2026-04-26 | bib/appendix-h — LahiriWang2025mir153AD — miR-153-3p Alzheimer's protective APP SNCA REST Alz Dement |
| https://pubmed.ncbi.nlm.nih.gov/35305977/ | pubmed | 2026-04-26 | 2026-04-26 | bib/appendix-h — Li2022mir153stroke — miR-153-3p ischemic stroke SRC MAPK neuroprotection |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC11802530/ | PMC | 2026-04-26 | 2026-04-26 | bib/appendix-h — StojilkovicSokanovic2025ptprn — PTPRN2 neuroendocrine review Front Endocrinol |
| https://pubmed.ncbi.nlm.nih.gov/30728521/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h — DeCecco2019LINE1 — LINE-1 derepression senescence IFN inflammaging Nature 2019 |
| https://pubmed.ncbi.nlm.nih.gov/35456403/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h — Vourc_h2022HSF1SatIII — HSF1 satellite lncRNA stress response review Genes 2022 |
| https://pubmed.ncbi.nlm.nih.gov/35819196/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h — MendezBermudez2022pericentromeric — TP53 pericentromeric heterochromatin dismantling senescence NAR 2022 |
| https://pubmed.ncbi.nlm.nih.gov/36341457/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h — Apostolou2022HERVmecfs — HERV-K EBV HHV6 reactivation ME/CFS post-COVID Frontiers Immunology 2022 |
| https://pubmed.ncbi.nlm.nih.gov/36602345/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h — Grandi2023HERVcovid — HERV transcriptome COVID-19 clinical stages Microbiology Spectrum 2023 |
| https://pubmed.ncbi.nlm.nih.gov/34082816/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h — Pappalardo2021methylationRepeats — DNA methylation loss repeat elements disease Epigenetics Chromatin 2021 |
| https://pubmed.ncbi.nlm.nih.gov/24769206/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h — Zhu2014MTHFR — MTHFR H3K9me3 centromeric heterochromatin maintenance BBRC 2014 |
| https://pubmed.ncbi.nlm.nih.gov/39070644/ | pubmed | 2026-04-26 | 2026-04-26 | bib/appendix-h — ChozaVirani2024ptprn2PD — PTPRN2 epigenetic shifts Parkinson's brain preprint |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC10137143/ | PMC | 2026-04-26 | 2026-04-26 | bib/appendix-h — QiLamont2023phb2cancer — PHB2 biology miRNA silencing cancer Cells review |
| https://pubmed.ncbi.nlm.nih.gov/33148325/ | pubmed | 2026-04-26 | 2026-04-26 | bib/appendix-h — Helliwell2020mecfsMethylation — ME/CFS RRBS methylation systemic dysfunction Clin Epigenetics |
| https://pubmed.ncbi.nlm.nih.gov/38054109/ | pubmed | 2026-04-26 | 2026-04-26 | bib/appendix-h — Przybylowicz2023fmCfsMethylation — FM/CFS methylation re-analysis J Pain Res |
| https://pubmed.ncbi.nlm.nih.gov/32291908/ | pubmed | 2026-04-26 | 2026-04-26 | bib/appendix-h — CheemaOltra2020genderMiRNA — gender-specific miRNA ME/CFS exercise JCMM |
| https://pubmed.ncbi.nlm.nih.gov/33184353/ | pubmed | 2026-04-26 | 2026-04-26 | bib/appendix-h — Nepotchatykh2020mirnaMECFS — circulating miRNA ME/CFS PEM Sci Rep Moreau |
| https://pubmed.ncbi.nlm.nih.gov/36732593/ | pubmed | 2026-04-26 | 2026-04-26 | bib/appendix-h — Nepotchatykh2023mirnaMECFS — miRNA discriminates ME/CFS vs fibromyalgia Sci Rep |
| https://pubmed.ncbi.nlm.nih.gov/41057909/ | pubmed | 2026-04-26 | 2026-04-26 | bib/appendix-h — Pshezhetskiy2025episwitch — EpiSwitch 3D genomic ME/CFS diagnostic J Transl Med |
| https://www.biorxiv.org/content/10.1101/2025.07.14.664701v1 | biorxiv | 2026-05-01 | 2026-05-01 | bib/appendix-h — Gotz2025ISRLifespan — GCN2-ATF4 ISR suppression extends Drosophila lifespan; contradicts yeast/C.elegans data; user-claimed PNAS DOI 10.1073/pnas.2518812123 not verified |
| https://pubmed.ncbi.nlm.nih.gov/35508655/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h — Hennig2022HHV6miRNA — HHV-6 miR-aU14 inhibits miR-30 processing, activates DRP1 mitochondrial fragmentation; Nature 2022; Prusty lab |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC9795011/ | PMC | 2026-05-01 | 2026-05-01 | bib/appendix-h — Kasimir2022HHV6Tissue — HHV-6 miRNA in ME/CFS brain tissue post-mortem n=3; Front Mol Biosci 2022 |
| https://pubmed.ncbi.nlm.nih.gov/37579159/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h — Wang2023WASF3MECFS — WASF3 disrupts mitochondrial respiration via PERK/ISR in ME/CFS; PNAS 2023; NIH Hwang lab n=14 |
| https://pubmed.ncbi.nlm.nih.gov/37607209/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h — Aloise2023CoVPKR — SARS-CoV-2 N protein N2b suppresses PKR-ISR via dsRNA sequestration; PLoS Pathog 2023 |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC10716588/ | PMC | 2026-05-01 | 2026-05-01 | bib/appendix-h — Christ2023CoVISRVariants — SARS-CoV-2 variant PKR-ISR differences; Omicron higher stress granules; Virus Res 2023 |
| https://pubmed.ncbi.nlm.nih.gov/39937095/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h — Baron2025ISRMitochondria — ISR kinase HRI/GCN2 activation prevents DRP1 mitochondrial fragmentation; eLife 2025; Wiseman lab |
| https://pubmed.ncbi.nlm.nih.gov/41160678/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h — Cuoco2025RIGISR — RIG-I pharmacological activation of ISR via HRI kinase; interferon-independent; Sci Adv 2025 |
| https://www.sciencedirect.com/science/article/pii/S2666354626000591 | sciencedirect | 2026-05-01 | 2026-05-01 | bib/appendix-h — Omdal2026LCFatigueStress — long COVID fatigue NOT associated with peripheral HSP90/inflammatory markers; null result; BBI-Health 2026 |
| https://pubmed.ncbi.nlm.nih.gov/39756584/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h — Le2025ATF4Mitochondria — eIF2alpha-ATF4 axis protects mitochondria during ER stress; Mol Cells 2025 |
| https://pubmed.ncbi.nlm.nih.gov/32327570/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h — CostaMattioli2020ISRReview — ISR mechanism to disease authoritative review; Science 2020; Costa-Mattioli & Walter |
| https://www.frontiersin.org/journals/aging/articles/10.3389/fragi.2024.1447370/full | frontiersin | 2026-05-01 | 2026-05-01 | bib/appendix-h — Altintas2024GCN2Review — GCN2 as therapeutic target age-related diseases; context-dependent ISR modulation; Front Aging 2024 |
| https://pubmed.ncbi.nlm.nih.gov/39483457/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Baraniuk2024NKMetaAnalysis — NK cytotoxicity meta-analysis ME/CFS 28 papers Hedges g=0.96 |
| https://pubmed.ncbi.nlm.nih.gov/39621903/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Iu2024CD8Exhaustion — PNAS CD8+ T cell exhaustion scRNA-seq ATAC-seq ME/CFS n=28+30 |
| https://pubmed.ncbi.nlm.nih.gov/39435656/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — EatonFitch2024ImmuneExhaustion — JCI Insight immune exhaustion ME/CFS Long COVID PD-1/CTLA-4 n=14+15+18 |
| https://pubmed.ncbi.nlm.nih.gov/35812392/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — BeliakovanBethell2022MDSCPostCOVID — M-MDSC persist 5 months post-COVID arginase+ROS T-cell suppression n=22 |
| https://pubmed.ncbi.nlm.nih.gov/32514047/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Agrati2020MDSCCoVID19 — MDSC expansion severe COVID-19 up to 90% mononuclear cells n=18 |
| https://pubmed.ncbi.nlm.nih.gov/26826241/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Goh2016HCVMDSCArginase — HCV MDSC suppress NK IFN-gamma via arginase-1 L-arginine depletion mTOR |
| https://pubmed.ncbi.nlm.nih.gov/33526920/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Veglia2021MDSCDiversity — Nature Reviews Immunology MDSC biology review TGF-beta NKG2D arginase-1 IDO1 |
| https://www.frontiersin.org/journals/immunology/articles/10.3389/fimmu.2026.1729699/full | frontiersin | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Mihatsch2026MDSCMono — MDSC subpopulations EBV infectious mononucleosis pediatric n=37 PMN-MDSC severity |
| https://pubmed.ncbi.nlm.nih.gov/37951572/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Theoharides2024ANS — mast cells autonomic nervous system dysautonomia neuroinflammation POTS ME/CFS CRH |
| https://pubmed.ncbi.nlm.nih.gov/38499084/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Conway2024BeyondMCAS — beyond confirmed MCAS approaching dysautonomia patients hEDS POTS fibromyalgia |
| https://pubmed.ncbi.nlm.nih.gov/34901755/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Valent2021criteria — updated diagnostic criteria classification mast cell disorders consensus HemaSphere |
| https://pubmed.ncbi.nlm.nih.gov/41272881/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Lee2025CanadaMCAS — MCAS Canada practical diagnosis management ECNM-AIM guideline |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC12063504/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Yao2025MCASPOTStriad — POTS HSD MCAS triad young patients n=100 prevalence definition-dependent therapy response |
| https://www.nature.com/articles/s43856-025-01300-z | nature | 2026-05-02 | ⬜ pending | subtrees/beyond-long-covid.md — Faghy2025LongCOVIDReview — comprehensive mechanistic review Long COVID; immune dysregulation, viral persistence, autonomic dysfunction, microvascular pathology, PEM/fatigue overlap with ME/CFS; Comms Med 2025; integrate in /integrate-topic long-covid-mecfs Phase 1 |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC10418481/ | pubmed/pmc | 2026-05-03 | 2026-05-03 | bib/appendix-h — vanEeden2023SScMECFS — mitochondrial signature SSc patients with ME/CFS |
| https://pubmed.ncbi.nlm.nih.gov/36045606/ | pubmed | 2026-05-03 | 2026-05-03 | bib/appendix-h — vanEeden2022fatigue — fatigue AAV/SSc similarities ME/CFS critical review |
| https://pubmed.ncbi.nlm.nih.gov/39447026/ | pubmed | 2026-05-03 | 2026-05-03 | bib/appendix-h — Kwakkenbos2025SScFatigue — fatigue SSc 2385 SPIN cohort participants |
| https://pubmed.ncbi.nlm.nih.gov/29303706/ | pubmed | 2026-05-03 | 2026-05-03 | bib/appendix-h — Basta2018SScFatigueSysRev — fatigue in SSc systematic review |
| https://pubmed.ncbi.nlm.nih.gov/37828025/ | pubmed | 2026-05-03 | 2026-05-03 | bib/appendix-h — Hartmann2023ADRA2A — ADRA2A IRX1 putative risk genes Raynaud's GWAS Nat Commun |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC11480858/ | pubmed/pmc | 2026-05-03 | 2026-05-03 | bib/appendix-h — Tervi2024RaynaudGWAS — Raynaud's GWAS 8 loci vasculature immunity Cell Genomics |
| https://www.preprints.org/manuscript/202605.0876 | preprints.org | 2026-05-13 | SKIP | content-staging/INTEGRATION_GUIDE_connective-tissue-2026-05-13.md — Wirth2026CTDMECFS preprint (URL blocked, abstract only)
| https://www.frontiersin.org/journals/neurology/articles/10.3389/fneur.2024.1455498/full | frontiersin | 2026-05-13 | bib/appendix-h/integration-guide — Ganesh2024LongCOVIDHSD — Long COVID-HSD shared pathophysiology
| https://www.frontiersin.org/rehabilitation-sciences/articles/10.3389/fresc.2023.1122673/full | frontiersin | 2026-05-13 | bib/appendix-h/integration-guide — Pollack2023FemaleRepro — female reproductive health LC/ME/CFS/POTS/EDS
| https://www.frontiersin.org/neurology/articles/10.3389/fneur.2024.1455498 | frontiersin | 2026-05-13 | bib/appendix-h/integration-guide — Ganesh2024LongCOVIDHSD — shared pathophysiology ME/CFS/FM/POTS
| https://pmc.ncbi.nlm.nih.gov/articles/PMC11410636/ | pubmed/pmc | 2026-05-13 | bib/appendix-h/integration-guide — Ganesh2024LongCOVIDHSD — HSD/LC shared pathophysiology
| https://onlinelibrary.wiley.com/doi/10.1002/pmrj.13120 | wiley | 2026-05-13 | bib/appendix-h/integration-guide — Logarbo2024LongCOVIDEDS — Long COVID EDS diagnosis case report
| https://orphanet-journal-of-rare-diseases.biomedcentral.com/articles/10.1186/s13023-023-02829-9 | biomedcentral | 2026-05-13 | bib/appendix-h/integration-guide — Ramirez-Paesano2023CCI — craniocervical instability in EDS
| https://www.science.org/doi/10.1126/scitranslmed.adt1228 | science.org | 2026-05-13 | bib/appendix-h/integration-guide — Moschini2026HIFTendinopathy — HIF-1α drives tendinopathy
| https://onlinelibrary.wiley.com/doi/10.1002/jor.22147 | wiley | 2026-05-13 | bib/appendix-h/integration-guide — Sahin2012HIFTendon — HIF-1/VEGF in tendinopathy
| https://academic.oup.com/rap/advance-article/doi/10.1093/rap/rkag034 | oxford-academic | 2026-05-13 | bib/appendix-h/integration-guide — Almutairi2026DysautonomiaMSD — dysautonomia meta-analysis N=1420
| https://onlinelibrary.wiley.com/doi/10.1111/nmo.70305 | wiley | 2026-05-13 | bib/appendix-h/integration-guide — Kulin2026POTSGI — POTS GI symptoms meta-analysis N=8268
| https://www.tandfonline.com/doi/10.1080/09638288.2026.2646723 | tandfonline | 2026-05-13 | bib/appendix-h/integration-guide — Berg2026HSDSurvey — hEDS/HSD lived experience N=2002
| https://www.medrxiv.org/content/10.1101/2026.04.01.26349981v1 | medrxiv | 2026-05-13 | bib/appendix-h/integration-guide — Wilson2026hEDSWearable — hEDS wearable monitoring N=58
| https://www.jmresearchprotocols.org/15/e80394 | jmresearchprotocols | 2026-05-13 | bib/appendix-h/integration-guide — Golden2026HSDPA — HSD/hEDS physical activity scoping review protocol
| https://pmc.ncbi.nlm.nih.gov/articles/PMC10208411/ | pubmed/pmc | 2026-05-13 | bib/appendix-h/integration-guide — Pollack2023FemaleRepro — female reproductive health LC/ME/CFS/POTS/EDS
| https://www.science.org/doi/10.1126/scitranslmed.adt1228 | science.org | 2026-05-13 | bib/appendix-h/integration-guide — Moschini2026HIFTendinopathy — HIF-1α tendinopathy driver
| https://pmc.ncbi.nlm.nih.gov/articles/PMC12733406/ | pubmed/pmc | 2026-05-13 | bib/appendix-h/integration-guide — Moschini2026HIFTendinopathy — PMC copy
| https://www.onlinelibrary.wiley.com/doi/10.1002/jor.22147 | wiley | 2026-05-13 | bib/appendix-h/integration-guide — Sahin2012HIFTendon — HIF-1/VEGF MMP-3 tendon biomechanics
| https://www.oup.com/rap/advance-article/doi/10.1093/rap/rkag034 | oxford-academic | 2026-05-13 | bib/appendix-h/integration-guide — Almutairi2026DysautonomiaMSD — dysautonomia prevalence meta-analysis
| https://pmc.ncbi.nlm.nih.gov/articles/PMC13070644/ | pubmed/pmc | 2026-05-13 | bib/appendix-h/integration-guide — Almutairi2026DysautonomiaMSD — PMC copy
| https://www.wiley.com/doi/10.1111/nmo.70305 | wiley | 2026-05-13 | bib/appendix-h/integration-guide — Kulin2026POTSGI — POTS comorbidities meta-analysis
| https://pmc.ncbi.nlm.nih.gov/articles/PMC13062037/ | pubmed/pmc | 2026-05-13 | bib/appendix-h/integration-guide — Kulin2026POTSGI — PMC copy
| https://www.tandfonline.com/doi/10.1080/09638288.2026.2646723 | tandfonline | 2026-05-13 | bib/appendix-h/integration-guide — Berg2026HSDSurvey — hEDS/HSD survey N=2002
| https://www.medrxiv.org/content/10.1101/2026.04.01.26349981v1 | medrxiv | 2026-05-13 | bib/appendix-h/integration-guide — Wilson2026hEDSWearable — wearable monitoring preprint
| https://www.jmresearchprotocols.org/15/e80394 | jmresearchprotocols | 2026-05-13 | bib/appendix-h/integration-guide — Golden2026HSDPA — scoping review protocol
| https://pmc.ncbi.nlm.nih.gov/articles/PMC8922659/ | pubmed/pmc | 2026-05-03 | 2026-05-03 | bib/appendix-h — Masini2021SScAutonomic — autonomic dysfunction microvascular damage SSc pilot n=26

| https://pubmed.ncbi.nlm.nih.gov/36758522/ | pubmed | 2026-05-20 | 2026-05-20 | bib/appendix-h — Guo2023butyrate — Deficient butyrate-producing capacity in ME/CFS (n=106) |
| https://pubmed.ncbi.nlm.nih.gov/36758521/ | pubmed | 2026-05-20 | 2026-05-20 | bib/appendix-h — Xiong2023multiomics — Multi-omics gut microbiome ME/CFS |
| https://pubmed.ncbi.nlm.nih.gov/37744357/ | pubmed | 2026-05-20 | 2026-05-20 | bib/appendix-h — Martin2023permeability — Gut permeability bacterial translocation ME/CFS (n=30) |
| https://pubmed.ncbi.nlm.nih.gov/35046929/ | pubmed | 2026-05-20 | 2026-05-20 | bib/appendix-h — Konig2022microbiome — Gut microbiome ME/CFS review |
| https://pubmed.ncbi.nlm.nih.gov/34768601/ | pubmed | 2026-05-20 | 2026-05-20 | bib/appendix-h — Varesi2021microbiota — Gut microbiota ME/CFS review |
| https://pubmed.ncbi.nlm.nih.gov/26707044/ | pubmed | 2026-05-20 | 2026-05-20 | bib/appendix-h — Maes2015leakyGutNull — Null result leaky gut biomarkers ME/CFS (n=139) |
| https://pubmed.ncbi.nlm.nih.gov/31871540/ | pubmed | 2026-05-20 | 2026-05-20 | bib/appendix-h — Venturini2019probiotics — Probiotic pilot study CFS (n=15) |
| https://pubmed.ncbi.nlm.nih.gov/41155291/ | pubmed | 2026-05-20 | 2026-05-20 | bib/appendix-h — Watai2025gutBrainImmune — Gut-brain-immune axis review FM/ME/CFS/MCS |
| https://pubmed.ncbi.nlm.nih.gov/41668172/ | pubmed | 2026-05-20 | 2026-05-20 | bib/appendix-h — Kim2026brainGutAxis — Brain-gut axis treatments Long COVID ME/CFS review |
| https://pubmed.ncbi.nlm.nih.gov/38429822/ | pubmed | 2026-05-20 | 2026-05-20 | bib/appendix-h — Wang2024microbiomeEvidence — Clinical evidence gut microbiome ME/CFS review |
| https://pubmed.ncbi.nlm.nih.gov/36502573/ | pubmed | 2026-05-20 | 2026-05-20 | bib/appendix-h — Hodgkinson2023butyrateMechanisms — Butyrate mechanisms HDAC NF-κB review |
| https://www.mdpi.com/2077-0383/10/21/5077 | mdpi | 2026-05-20 | 2026-05-20 | bib/appendix-h — Varesi2021microbiota — Gut microbiota ME/CFS review |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC10512706/ | pubmed/pmc | 2026-05-20 | 2026-05-20 | bib/appendix-h — Martin2023permeability — Gut permeability bacterial translocation |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC10183837/ | pubmed/pmc | 2026-05-20 | 2026-05-20 | bib/appendix-h — Guo2023butyrate — Deficient butyrate-producing capacity |
| https://link.springer.com/article/10.1007/s11357-026-02286-9 | springer | 2026-05-24 | — | bib/appendix-h — Tatai2026TSAutoantibodies — Tissue-specific autoantibodies in long COVID
| https://pubmed.ncbi.nlm.nih.gov/42158877/ | pubmed | 2026-05-24 | 2026-05-24 | bib/appendix-h — Sanhueza2026NETosisIR — NETosis insulin resistance Long COVID |
| https://pubmed.ncbi.nlm.nih.gov/41036702/ | pubmed | 2026-05-24 | 2026-05-24 | bib/appendix-h — Thierry2025MicroclotsNETs — microclots NETs Long COVID |
| https://pubmed.ncbi.nlm.nih.gov/41856437/ | pubmed | 2026-05-24 | 2026-05-24 | bib/appendix-h — PerezMazzali2026ImmuneDysregulation — immune dysregulation biomarkers Long COVID |
| https://pubmed.ncbi.nlm.nih.gov/41794369/ | pubmed | 2026-05-24 | 2026-05-24 | bib/appendix-h — Augustin2026GutImmuneAxis — gut immune axis pDC Long COVID |
| https://pubmed.ncbi.nlm.nih.gov/41972671/ | pubmed | 2026-05-24 | 2026-05-24 | bib/appendix-h — Asaba2026ViralNETsReview — NETs viral infections review |
| https://pubmed.ncbi.nlm.nih.gov/18596631/ | pubmed | 2026-05-26 | 2026-05-26 | lit-muscle-preservation-bedbound — Morris2008ICUMobility — early ICU mobility therapy PROM safety effectiveness |
| https://pubmed.ncbi.nlm.nih.gov/28065165/ | pubmed | 2026-05-26 | 2026-05-26 | lit-muscle-preservation-bedbound — Wollersheim2017WBV — whole-body vibration safety feasibility metabolic response ICU |
| https://pubmed.ncbi.nlm.nih.gov/35974369/ | pubmed | 2026-05-26 | 2026-05-26 | lit-muscle-preservation-bedbound — Bao2022NMESICU — NMES prevents muscle atrophy ICU RCT |
| https://pubmed.ncbi.nlm.nih.gov/23514626/ | pubmed | 2026-05-26 | 2026-05-26 | lit-muscle-preservation-bedbound — Deutz2013HMB — HMB preserves lean mass bed rest older adults RCT |
| https://pubmed.ncbi.nlm.nih.gov/28705993/ | pubmed | 2026-05-26 | 2026-05-26 | lit-muscle-preservation-bedbound — Standley2017HMBMitochondria — HMB effects mitochondria bed rest |
| https://pubmed.ncbi.nlm.nih.gov/25296344/ | pubmed | 2026-05-26 | 2026-05-26 | lit-muscle-preservation-bedbound — Dirks2015NMES — NMES prevents muscle wasting comatose ICU patients |
| https://www.sciencedirect.com/science/article/pii/S0022395626001287 | sciencedirect | 2026-08-09 | — | ops/research/literature-dementia-inflammation-2026.md, ops/research/search-log-dementia-inflammation-2026.md, bib/neuroinflammation.bib, appendix-h, Literature/reviews/Kuring2026_dementia_inflammation_meta.pdf — Kuring 2026 dementia inflammatory markers meta-analysis (inflammatory-mediated neurodegeneration hypothesis) |
| https://pubmed.ncbi.nlm.nih.gov/37931509/ | pubmed | 2026-08-09 | — | Kuring 2023 depression/anxiety/PTSD inflammatory markers meta-analysis (companion paper) |
| https://pubmed.ncbi.nlm.nih.gov/31465778/ | pubmed | 2026-08-09 | — | Strawbridge 2019 CFS inflammatory proteins meta-analysis (ME/CFS cross-disease support) |

## Brain Clearance Architecture 2026 Literature (2026-05-30)

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| https://www.genengnews.com/topics/translational-medicine/neuronal-protein-tracing-reveals-how-the-brain-routes-its-waste/ | GEN | 2026-05-30 | — | Yang 2026 Cell news coverage |
| https://bioengineer.org/charting-the-brains-waste-removal-system/ | Bioengineer | 2026-05-30 | — | Yang 2026 Cell news coverage |
| https://neurosciencenews.com/glymphatic-brain-waste-clearance-30785/ | Neuroscience News | 2026-05-30 | — | Yang 2026 Cell news coverage |
| https://medicalxpress.com/news/2026-05-brain-reveal-nearest-exit-routes.html | MedicalXpress | 2026-05-30 | — | Yang 2026 Cell news coverage |
| https://www.rochester.edu/newscenter/physics-informed-ai-mri-glymphatic-fluid-flow-velocity-699862/ | URochester | 2026-05-30 | — | Toscano 2026 Sci Adv press release |
| https://neurosciencenews.com/ai-glymphatic-fluid-velocity-30772/ | Neuroscience News | 2026-05-30 | — | Toscano 2026 Sci Adv news coverage |

## CPET Null Replication Literature Search (2026-05-26)

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| https://pubmed.ncbi.nlm.nih.gov/32147947/ | pubmed | 2026-05-26 | — | Search for Davenport 2020 CPET (incorrect PMID) |
| https://pubmed.ncbi.nlm.nih.gov/32689423/ | pubmed | 2026-05-26 | — | Search for Davenport 2020 CPET (incorrect PMID) |
| https://pubmed.ncbi.nlm.nih.gov/17484316/ | pubmed | 2026-05-26 | — | Search for VanNess 2007 CPET (incorrect PMID) |
| https://pubmed.ncbi.nlm.nih.gov/29475645/ | pubmed | 2026-05-26 | — | Search for Davenport paper (incorrect PMID) |
| https://pubmed.ncbi.nlm.nih.gov/20095905/ | pubmed | 2026-05-26 | — | VanNess2010PEM (already in bibliography) |
| PubMed API queries (batch) | pubmed/eutils | 2026-06-08 | — | content-staging/lit-review-gwas-meta-maccallini-2026-2026-06-08.md, bib/appendix-h — GWAS/WGS meta-analysis ME/CFS literature (15 core + 10 supplementary papers) |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| https://doi.org/10.21203/rs.3.rs-9702020/v1 | Research Square | 2026-06-08 | — | bib/appendix-h — Maccallini2026metaGWAS — Primary meta-GWAS paper |
| https://doi.org/10.1101/2025.08.06.25333109 | medRxiv | 2026-06-08 | — | bib/appendix-h — DecodeME2025 — DecodeME GWAS initial findings |
| https://pubmed.ncbi.nlm.nih.gov/42015188/ | pubmed | 2026-06-08 | — | bib/appendix-h — Sardell2026combinatorial — DecodeME combinatorial analysis |
| https://pubmed.ncbi.nlm.nih.gov/41444612/ | pubmed | 2026-06-08 | — | bib/appendix-h — Birch2025rare — Rare monogenic variation ME/CFS |
| https://pubmed.ncbi.nlm.nih.gov/41536999/ | pubmed | 2026-06-08 | — | bib/appendix-h — Huang2026mGWAS — Metabolite GWAS ME/CFS |
| https://pubmed.ncbi.nlm.nih.gov/42190845/ | pubmed | 2026-06-08 | — | bib/appendix-h — Steen2026sharedgenetic — Twin-sibling functional somatic syndromes |
| https://pubmed.ncbi.nlm.nih.gov/39994562/ | pubmed | 2026-06-08 | — | bib/appendix-h — Hirsch2025comparativeGWAS — Comparative GWAS PTLDS/FM/ME/CFS |
| https://pubmed.ncbi.nlm.nih.gov/40427027/ | pubmed | 2026-06-08 | — | bib/appendix-h — Duan2025immuneMR — MR immune cells → ME/CFS |
| https://pubmed.ncbi.nlm.nih.gov/42123618/ | pubmed | 2026-06-08 | — | bib/appendix-h — WirthScheibenbogen2026glutamate — Glutamatergic imbalance ME/CFS |
| https://pubmed.ncbi.nlm.nih.gov/40321247/ | pubmed | 2026-06-08 | — | bib/appendix-h — Zhang2025deeplearning — Deep learning genome analysis |
| https://pubmed.ncbi.nlm.nih.gov/40564862/ | pubmed | 2026-06-08 | — | bib/appendix-h — ArcosBurgos2025Olduvai — Olduvai domains ME/CFS neuropsychiatric |
| https://pubmed.ncbi.nlm.nih.gov/42053855/ | pubmed | 2026-06-08 | — | bib/appendix-h — Zhang2026mitoMR — Mitochondria MR chronic fatigue |
| https://pubmed.ncbi.nlm.nih.gov/35354508/ | pubmed | 2026-06-08 | — | bib/appendix-h — Kendler2023familygenetic — Family genetic risk FM/IBS/CFS |
| https://pubmed.ncbi.nlm.nih.gov/41752134/ | pubmed | 2026-06-08 | — | bib/appendix-h — Keele2026mitodysregulation — Mitochondrial dysregulation gene expression |

| https://doi.org/10.1016/j.cell.2026.04.048 | doi.org | 2026-05-30 | — | bib/appendix-h/integration-guide — Chayama2026BrainClearance — Physiological brain clearance architecture revealed by neuronal protein tracing
| https://doi.org/10.1016/j.mehy.2018.07.007 | doi.org | 2026-05-30 | — | bib/appendix-h/integration-guide — Wostyn2018GlymphaticCFS — Glymphatic signature of chronic fatigue syndrome hypothesis
| https://doi.org/10.3390/ijms262311524 | doi.org | 2026-05-30 | — | bib/appendix-h/integration-guide — NematGorgani2025GlymphaticMECFS — Glymphatic system dysregulation in ME/CFS review
| https://doi.org/10.1007/s00234-023-03240-8 | doi.org | 2026-05-30 | — | bib/appendix-h/integration-guide — Tu2023DTIALPSFibromyalgia — DTI-ALPS in fibromyalgia
| https://doi.org/10.2147/NSS.S522745 | doi.org | 2026-05-30 | — | bib/appendix-h/integration-guide — Tang2025COVIDSleepDTIALPS — Glymphatic alterations post-COVID sleep disorder
| https://doi.org/10.1186/s12883-025-04133-4 | doi.org | 2026-05-30 | — | bib/appendix-h/integration-guide — Chaganti2025LongCovidGlymphatic — Asymmetrical glymphatic dysfunction Long COVID
| https://doi.org/10.1523/JNEUROSCI.0091-21.2021 | doi.org | 2026-05-30 | — | bib/appendix-h/integration-guide — HablitzNedergaard2021GlymphaticReview — Glymphatic system fundamental neurobiology review
| https://doi.org/10.1126/science.aax5440 | doi.org | 2026-05-30 | — | bib/appendix-h/integration-guide — Fultz2019CSFOscillations — CSF oscillations in human sleep
| https://doi.org/10.1016/j.jpain.2025.00583 | doi.org | 2026-05-30 | — | bib/appendix-h/integration-guide — ValdesHernandez2025PainClearance — Pain and brain clearance
| https://doi.org/10.1038/s41598-026-49131-9 | nature.com | 2026-06-01 | — | bib/appendix-h/ch07/ch08/ch10/ch14d — Azcue2026gpcr — GPCR autoantibodies (beta2 adrenergic, M1-M4 muscarinic) linked to autonomic dysfunction and cognitive performance in ME/CFS vs PCC; Sci Rep 2026 |

| https://www.nature.com/articles/s41598-026-49131-9 | nature.com | 2026-06-01 | — | bib/appendix-h/ch07/ch08/ch10/ch14d — Azcue2026gpcr — GPCR autoantibodies (beta2 adrenergic, M1-M4 muscarinic) linked to autonomic dysfunction and cognitive performance in ME/CFS vs PCC; Sci Rep 2026 |

## Sleep Deprivation Salivary Metabolomics Literature Search (2026-06-04)

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| https://medicalxpress.com/news/2026-06-deprived.html | medicalxpress | 2026-06-04 | — | Scholz2026SleepMetabolome — News coverage of salivary metabolomics sleep deprivation study |
| https://pubmed.ncbi.nlm.nih.gov/42090244/ | pubmed | 2026-06-04 | — | Scholz2026SleepMetabolome — Primary source: salivary metabolomic fingerprint sleep deprivation |
| https://pubs.acs.org/doi/10.1021/acs.jproteome.5c01064 | acs.org | 2026-06-04 | — | Scholz2026SleepMetabolome — Full text J Proteome Res paper |
| https://www.nature.com/articles/s41598-025-95403-1 | nature.com | 2026-06-04 | — | Oishi2025ChronicSleepSaliva — Chronic sleep disorder salivary biomarkers |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC8855987/ | pubmed/pmc | 2026-06-04 | — | Jason2021SalivaFBIMECFS — Salivary fatigue biomarker index ME/CFS |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC8150292/ | pubmed/pmc | 2026-06-04 | — | Maksoud2021MECFSSleepReview — Systematic review ME/CFS sleep characteristics |
| https://www.science.org/doi/10.1126/sciadv.adj6834 | science.org | 2026-06-04 | — | Jeppe2024SleepMetabolomeBlood — Blood metabolomic sleep deprivation biomarker |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC7815960/ | pubmed/pmc | 2026-06-06 | 2026-06-06 | ch14d/appendix-h/bib/content-staging — Bartley2020SchizophreniaHomecoming — Schizophrenia autoantibody history cross-disease parallel for ME/CFS |

## Stigmatisation in ME/CFS Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-06-16 | 10 queries: stigma ME/CFS title search, healthcare experiences, medical gaslighting, psychosocial burden, scoping review, child stigma, narratives/perceptions, illness legitimacy, internalized stigma, work stigma |

## IgE → Mast Cell → Connective Tissue Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-06-19 | 28 queries: mast cell tryptase/chymase/MMP ECM degradation, IgE hypermobility/hEDS/POTS, omalizumab MCAS/CT, acquired hypermobility, null/negative, competing mechanisms, safety |
| Crossref API | 2026-06-16 | Title/semantic search for "Stigmatisation in Myalgic Encephalomyelitis/Chronic Fatigue Syndrome" scoping review (RG #406829675 — not found) |
| OpenAlex API | 2026-06-16 | Title/keyword search for primary scoping review (not found in indexed literature) |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (10 queries, batch) | pubmed/eutils | 2026-06-16 | — | content-staging/literature-stigmatisation-2026-06-16.md, bib/appendix-h — Stigmatisation in ME/CFS literature collection (17 bib entries, 15 annotated) |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (28 queries, batch) | pubmed/eutils | 2026-06-19 | — | content-staging/search-log-mast-cell-ige-connective-tissue-2026-06-19.md, bib/appendix-h — IgE → mast cell → connective tissue literature search (13 papers added) |

## taVNS for Post-COVID-19 Condition (PCC) Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-06-22 | 15 queries: taVNS+PCC, tVNS+long COVID, taVNS+RCT+fatigue, taVNS+sham+null, VNS+contraindications/safety, VNS+ME/CFS, HRV+CFS, vagal tone+CFS, competing mechanisms, neuroinflammation+PET+post-COVID fatigue |
| Crossref API | 2026-06-22 | DOI lookups: Percin 2025 (10.1155/ijcp/5641307), Genç 2024 (10.14744/ejp.2024.1204) |
| Google Scholar | 2026-06-22 | "taVNS post-COVID", "Percin taVNS" |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (15 queries, batch) | pubmed/eutils | 2026-06-22 | — | content-staging/lit-summary-tvns-pcc-2026-06-22.md, content-staging/search-log-tvns-pcc-2026-06-22.md, bib/treatments.bib (9 entries), appendix-h (9 annotated entries) — taVNS for PCC literature collection |

## Food Insecurity in ME/CFS and Long COVID Literature Search (2026-06-23)

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| https://doi.org/10.1080/21641846.2026.2688051 | DOI (Taylor \& Francis) | 2026-06-23 | — | bib/epidemiology.bib, appendix-h — Dey2026FoodInsecurity — anchor paper |
| https://pubmed.ncbi.nlm.nih.gov/40924424/ | PubMed | 2026-06-23 | — | bib/epidemiology.bib, appendix-h — Lin2025LongCOVIDFoodInsecurity — food insecurity Long COVID US |
| https://pubmed.ncbi.nlm.nih.gov/39618261/ | PubMed | 2026-06-23 | — | bib/epidemiology.bib, appendix-h — Datta2025LongCOVIDFinancial — financial hardship Long COVID |
| https://pubmed.ncbi.nlm.nih.gov/40720834/ | PubMed | 2026-06-23 | — | bib/epidemiology.bib, appendix-h — Feldman2025SDoHLongCOVID — RECOVER SDoH |
| https://pubmed.ncbi.nlm.nih.gov/42032509/ | PubMed | 2026-06-23 | — | bib/epidemiology.bib, appendix-h — Bowden2026MECFSLabourMarket — NZ ME/CFS labour market |
| https://pubmed.ncbi.nlm.nih.gov/41460857/ | PubMed | 2026-06-23 | — | bib/epidemiology.bib, appendix-h — Weigel2025SustainedBurden — Australian ME/CFS burden |
| https://pubmed.ncbi.nlm.nih.gov/40986167/ | PubMed | 2026-06-23 | — | bib/epidemiology.bib, appendix-h — Vester2026BurdenReview — burden scoping review |
| https://pubmed.ncbi.nlm.nih.gov/40259275/ | PubMed | 2026-06-23 | — | bib/epidemiology.bib, appendix-h — Samms2025UnequalAccess — diagnosis inequity England |
| https://pubmed.ncbi.nlm.nih.gov/33352747/ | PubMed | 2026-06-23 | — | bib/epidemiology.bib, appendix-h — AguilarAguilar2020FoodCSS — food CSS review |
| https://pubmed.ncbi.nlm.nih.gov/28616881/ | PubMed | 2026-06-23 | — | bib/epidemiology.bib, appendix-h — Jones2017DietaryCFS — diet CFS systematic review |
| https://pubmed.ncbi.nlm.nih.gov/39940333/ | PubMed | 2026-06-23 | — | bib/epidemiology.bib, appendix-h — Dorczok2025DietarySupplements — supplement review |
| PubMed API queries (12 queries, batch) | pubmed/eutils | 2026-06-23 | — | content-staging/literature-food-insecurity-2026-06-23.md, content-staging/search-log-food-insecurity-2026-06-23.md, bib/epidemiology.bib (11 entries), appendix-h (11 annotated entries) — food insecurity ME/CFS LC literature |

## Extracellular Vesicles (Rydland 2026) Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-06-24 | 33 queries: direct EV queries (4) + previous EV studies (3) + specific protein-ME/CFS queries (15) + EV-related coagulation/proteomics (8) + null/negative (1) + CrossRef (2) |
| CrossRef API | 2026-06-24 | Metadata for Rydland 2026 (DOI 10.1016/j.bbrep.2026.102679) |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (33 queries, batch) | pubmed/eutils | 2026-06-24 | — | content-staging/search-log-extracellular-vesicles-rydland-2026-2026-06-24.md, bib/immune.bib (11 entries), appendix-h — Extracellular vesicles ME/CFS literature (11 papers, Rydland 2026 focus) |

## Post-COVID Ocular Syndrome (Moustardas 2026) Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| DOI resolver | 2026-07-09 | Primary paper DOI 10.1038/s41467-026-74858-4 |
| PubMed (E-utilities API) | 2026-07-09 | 13 queries: ocular symptoms, pupillometry, corneal confocal, tear proteomics, strabismus/accommodation, dry eye, T-cell tear film, SFN-ME/CFS-corneal |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| https://doi.org/10.1038/s41467-026-74858-4 | doi.org | 2026-07-09 | — | content-staging/lit-summary-postcovid-ocular-syndrome-2026-07-09.md, content-staging/search-log-postcovid-ocular-syndrome-2026-07-09.md, bib/neurology-comorbidities.bib (4 new entries), appendix-h — Post-COVID ocular syndrome literature (7 papers: 4 new + 3 pre-existing reused) |

## Pupillometry as Autonomic Biomarker Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-07-09 | 22 queries across 6 families: direct ME/CFS, cross-disease autonomic (POTS/fibromyalgia/migraine/CRPS/MS/diabetes/PAF/concussion), method/validation, null/negative/replication, competing (HRV/tilt table), indirect biochemical (M3 muscarinic/alpha-1 adrenergic/GPCR autoantibodies/Edinger-Westphal), large-scale/cohort |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (22 queries, batch) | pubmed/eutils | 2026-07-09 | — | content-staging/search-log-pupillometry-autonomic-biomarker-mecfs-2026-07-09.md, bib/pupillometry.bib (14 new entries), appendix-h — Pupillometry as autonomic biomarker literature collection (14 papers: 13 new bib entries + 1 reused from postcovid-ocular-syndrome) |

## Inadequate Treatment Duration in Research Literature Search

| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-07-15 | 24 queries: Lyme antibiotic trial duration, ME/CFS antiviral/immunomodulatory trials, IDSA vs ILADS, co-infection treatment, PTLDS trials, rituximab/valganciclovir/rintatolimod, Borrelia persistence, long-term antibiotic safety |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (24 queries, batch) | pubmed/eutils | 2026-07-15 | 2026-07-15 | ops/research/search-log-inadequate-treatment-duration-research-2026-07-15.md, ops/research/literature-inadequate-treatment-duration-research.md, bib/treatments.bib (14 entries), bib/viral-infection.bib (1 entry), appendix-h (15 annotated entries) — Inadequate treatment duration literature collection |
| http://www.christinegreenmd.com/uploads/shor-CRIDS-Lyme-IACFS.pdf | christinegreenmd.com | 2026-07-17 | — | Literature/viral-persistence/Shor2011-seronegative-lyme-cfs/ — Shor 2011 seronegative/chronic Lyme in CFS (IACFS presentation) |

## Glycolytic Reprogramming in Tick-Borne Pathogens Literature Search (2026-07-17)
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-07-17 | 25 queries: Borrelia/Bartonella/Babesia glycolysis, HIF-1α, lactate, trained immunity, immunometabolism, PTLDS metabolomics |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (25 queries, batch) | pubmed/eutils | 2026-07-17 | — | ops/research/literature-glycolytic-reprogramming-tickborne-2026-07-17.md, ops/research/search-log-glycolytic-reprogramming-tickborne-2026-07-17.md, bib/immune.bib (9 new entries), appendix-h (9 annotated entries) — Glycolytic reprogramming in tick-borne pathogens literature collection |

## Microglial Mitochondrial Dysregulation — Borrelia/Bartonella Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-07-17 | 24 queries: Borrelia microglia, Bartonella microglia, Borrelia mitochondrial, Bartonella mitochondrial, bacterial microglial infection, ME/CFS microglia, PTLDS neuroinflammation + indirect biochemical links |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (24 queries, batch) | pubmed/eutils | 2026-07-17 | — | ops/research/literature-microglial-mitochondrial-borrelia-2026-07-17.md, ops/research/search-log-microglial-mitochondrial-borrelia-2026-07-17.md, bib/immune.bib (16 new entries), appendix-h (16 annotated entries) — Microglial mitochondrial dysregulation from Borrelia/Bartonella literature collection |

## T-Cell Mitochondrial Exhaustion Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-07-26 | 37 queries across 3 phases: T-cell mito/metabolism ME/CFS, CD8 exhaustion, immunometabolism, oxidative stress, HHV-6/fission, immunophenotyping + author-specific searches (Hanson, Marshall-Gradisnik, Nacul/Cliff, Elahi, Davis, Fisher) |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (37 queries, batch) | pubmed/eutils | 2026-07-26 | — | ops/research/literature-tcell-mitochondrial-exhaustion-2026-07-26.md, ops/research/search-log-tcell-mitochondrial-exhaustion-2026-07-26.md, bib/immune.bib (4 new + 6 updated + 1 added to energy-metabolism.bib reference), appendix-h (12 annotated entries) — T-cell mitochondrial exhaustion literature collection |

## Local Sleep / Waking Slow Waves Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-08-01 | 23 queries: Pinggal 2026 seed, local sleep ME/CFS, local sleep wakefulness, sleep fragmentation ME/CFS, orexin/hypocretin ME/CFS, EDS ME/CFS, EEG vigilance CFS, alpha intrusion ME/CFS, local sleep narcolepsy, slow waves fibromyalgia, attention lapses post-viral, sleep homeostasis CFS, waking slow waves, local sleep long COVID, slow waves + sleep deprivation + attention, sleep pressure + neuroinflammation, noradrenergic arousal CFS, adenosine ME/CFS |
| Crossref API | 2026-08-01 | Pinggal 2026 seed DOI metadata (10.1523/JNEUROSCI.1694-25.2025) |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (23 queries, batch) | pubmed/eutils | 2026-08-01 | — | ops/research/literature-local-sleep-waking-slow-waves-2026-08-01.md, ops/research/search-log-local-sleep-waking-slow-waves-2026-08-01.md, bib/sleep.bib (12 new entries), bib/neuroinflammation.bib (1 new entry), appendix-h (14 annotated entries) — Local sleep / waking slow waves literature (14 papers) |
| Crossref API (10.1523/JNEUROSCI.1694-25.2025) | crossref | 2026-08-01 | — | ops/research/literature-local-sleep-waking-slow-waves-2026-08-01.md — Seed paper metadata |


## 7T MRS Brain/Muscle Chemistry (Godlewska 2025) Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-08-10 | Multi-query: "magnetic resonance spectroscopy chronic fatigue syndrome brain lactate", "31P MRS phosphocreatine ATP muscle", "MRS long COVID brain metabolites", "choline platelet coagulation". Primary paper PMID 40652046 (Godlewska 2025 Mol Psychiatry). |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (batch, 5 queries + abstract pulls) | pubmed/eutils | 2026-08-10 | — | ops/research/literature-godlewska-7t-mrs-brain-muscle-2026-08-10.md, ops/research/search-log-godlewska-7t-mrs-brain-muscle-2026-08-10.md, bib/long-covid.bib + neuroinflammation.bib (6 new entries), appendix-h — 7T MRS brain/muscle topic |

## Komaroff & Dantzer 2025 — Symptom Persistence Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-08-10 | Queries: Komaroff Dantzer 2025 symptom persistence LC/ME-CFS; Dantzer cytokine sickness behavior; median preoptic nucleus torpor; Hrvatin torpor preoptic; preoptic EP3R fever torpor; long COVID deep immunophenotyping fatigue; gut-immune dysregulation post-COVID; GPCR autoantibodies post-COVID CFS; NK cell ME/CFS meta-analysis |
| EuropePMC (REST fullTextXML) | 2026-08-10 | Retrieved open-access full text of PMC12432373 (Komaroff & Dantzer 2025, Cell Reports Medicine) |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (12 queries, batch) | pubmed/eutils | 2026-08-10 | — | ops/research/search-log-komaroff-dantzer-symptom-persistence-2026-08-10.md; bib/{long-covid,autoimmunity,neuroinflammation,immune}.bib; appendix-h — Komaroff-Dantzer symptom-persistence literature (8 papers) |
| EuropePMC fullTextXML PMC12432373 | europepmc | 2026-08-10 | — | Literature/reviews/Komaroff_2025_CausesOfSymptomsLongCovidMECFS/ (full text) |

## Peppercorn 2025 — DNA Methylation Landscapes ME/CFS vs Long COVID
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed | 2026-08-10 | Peppercorn et al. 2025, Int J Mol Sci 26(14):6631. DOI 10.3390/ijms26146631, PMID 40724879, PMCID PMC12294161. RRBS of PBMCs, n=5 ME/CFS / n=5 LC / n=5 HC. |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| https://pubmed.ncbi.nlm.nih.gov/40724879/ | pubmed | 2026-08-10 | 2026-08-10 | appendix-h (new annotated entry); bib/genetics-epigenetics.bib (Peppercorn2025methylation, DOI accuracy check) — Peppercorn 2025 methylation landscapes ME/CFS vs LC |

## Biofabrication 3D Muscle Mughal 2025 — ME/CFS & Long COVID Sera Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-08-10 | 14 queries: anchor paper Mughal 2025 (PMID 40744071), 3D muscle serum ME/CFS, Appelman 2024 Nat Commun, Fluge PDH, Schreiner HHV-6 serum transfer, Nilsson anti-mito Ab null, Fernandez-Guerra PBMC, Ramón-Azcón IBEC platform papers |
| Google Scholar | 2026-08-10 | Mughal 2025 anchor confirmation + citation tracking |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| https://pubmed.ncbi.nlm.nih.gov/40744071/ | pubmed | 2026-08-10 | 2026-08-10 | ops/research/literature-summary-biofabrication-mughal-3d-muscle-cfs-sera-2026-08-10.md, ops/research/search-log-biofabrication-mughal-3d-muscle-cfs-sera-2026-08-10.md, bib/musculoskeletal.bib (6 entries), bib/immune.bib (1 entry), bib/energy-metabolism.bib (1 entry), appendix-h (8 annotated entries), ops/integration-guides/integration-guide-biofabrication-mughal-3d-muscle-cfs-sera.md — Mughal 2025 biofabrication 3D muscle serum model (8 papers) |
| PubMed E-utilities API (14 queries, batch) | pubmed/eutils | 2026-08-10 | 2026-08-10 | 8 papers across musculoskeletal/immune/energy-metabolism bib + appendix-h |

## Fatigue as Core Symptom Literature Search (2026-08-11)
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-08-11 | 14 queries: fatigue definition/severity/phenotypes in ME/CFS; fatigue vs fatigability distinction; symptom clusters; objective vs subjective assessment; ICF framework; differential diagnosis (idiopathic chronic fatigue, depression); genetic/population-level correlates |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (14 queries, batch) | pubmed/eutils | 2026-08-11 | — | ops/research/search-log-fatigue-2026-08-11.md, ops/research/literature-fatigue-2026-08-11.md, bib/diagnosis-assessment.bib (10 entries), appendix-h (10 annotated entries) — Fatigue as core symptom literature (10 papers) |

## Encephalitis → Long-Term Dementia Risk (Aditi 2026) Literature Search
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-08-12 | 18 queries: post-encephalitis dementia; acute encephalitis cognitive outcomes; neuroinflammation neurodegeneration microglia; viral encephalitis dementia risk; autoimmune encephalitis cognitive decline; microglia activation ME/CFS neuroinflammation; HSV encephalitis cognitive; autoimmune encephalitis dementia cohort; NLRP3/inflammasome mechanism chain (Heneka/Ising) |
| Crossref API | 2026-08-12 | DOI 10.1007/s00415-026-14017-3 metadata (title, journal, vol 273 iss 9, page 511, authors, license, PMID 42557422) |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| https://doi.org/10.1007/s00415-026-14017-3 | Springer (Journal of Neurology) | 2026-08-12 | — | bib/neuroinflammation.bib (Aditi2026EncephalitisDementia + 6 supporting), appendix-h (7 annotated entries), ops/research/search-log-encephalitis-dementia-risk-2026-08-12.md, ops/integration-guides/encephalitis-dementia-risk-integration-guide.md — integrate-topic encephalitis-dementia-risk (CROSS-DISEASE / indirect) |
| https://medicalxpress.com/news/2026-08-brain-inflammation-dementia-shadow-older.html | MedicalXpress | 2026-08-12 | — | News coverage of Aditi 2026 encephalitis→dementia study (403 on fetch; URL registered for future re-scrape; journal DOI is the authoritative source) |
| PubMed E-utilities API (18 queries, batch) | pubmed/eutils | 2026-08-12 | — | 7 papers across bib/neuroinflammation.bib + appendix-h — encephalitis-dementia-risk cross-disease literature |

## Experimental Hypoxia — Virtual Hypoxia & Brainstem Volume Literature Search (2026-08-14)
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-08-14 | 10 esearch queries + efetch abstract pulls: brain lactate MRS CFS; brainstem volume CFS; CBF ASL CFS; cerebrovascular reactivity hypercapnia CFS (0 hits); CBF orthostatic tilt CFS; Tomas mitochondrial energy CFS; Trapp Stys virtual hypoxia; Mahad mitochondrial MS; HBOT long COVID; Zilberman HBOT long COVID |
| Full-text (pdftotext) | 2026-08-14 | Vienna Bader preprint (2026.08.10.26359935v1) + Thapaliya 2023 (fnins-17-1125208) PDFs already in Literature/neurological/ |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed E-utilities API (10 queries + efetch, batch) | pubmed/eutils | 2026-08-14 | — | ops/research/search-log-experimental-hypoxia-virtual-hypoxia-brainstem-2026-08-14.md; bib/{neuroinflammation,energy-metabolism,vascular,treatments}.bib (10 new entries); appendix-h (10 annotated entries) — Experimental hypoxia / virtual hypoxia / brainstem volume topic (12 papers: 2 primary + 10 supplementary) |

## Adult Red-Flags & Safety-Netting Protocol (Medical-Emergency Decompensation) — Literature Search (2026-08-14)
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities esearch + esummary + efetch) | 2026-08-14 | 16 queries across 8 clinical-safety domains: malignancy differential in CFS; refeeding syndrome (anorexia/malnutrition transferable); immobility VTE (EXCLAIM); pressure-ulcer/immobility complications (catatonia); POTS sudden-cardiac (coverage gap — corpus-covered); TIA/focal neuro; severe-ME mortality (coverage gap — corpus-covered); ME/CFS emergency department. PMIDs: 27765009, 1394166, 34861197, 21670680, 35011105, 27338666, 29448987, 41171118, 21764823, 20621900, 25004188, 30666170, 42032509, 29108805, 22206693, 24157559 |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed E-utilities API (16 queries + esummary/efetch, batch) | pubmed/eutils | 2026-08-14 | — | ops/research/search-log-adult-red-flags-safety-netting-protocol-2026-08-14.md; ops/research/literature-adult-red-flags-safety-netting-protocol-2026-08-14.md; bib/diagnosis-assessment.bib (3), bib/treatments.bib (6), bib/general.bib (4), bib/neurology-comorbidities.bib (3); appendix-h (16 annotated entries) — Adult red-flags & safety-netting protocol topic (16 papers, transferred + ME/CFS-specific) |

## EpiSwitch 3D-Genomic ME/CFS Diagnostic — Literature Search (2026-08-15)
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities esearch + esummary + efetch) | 2026-08-15 | 15 queries: EpiSwitch (platform-wide), chromosome/chromatin-conformation × fatigue/ME/CFS/FM/depression/MS/RA/IBD, ME/CFS epigenetic 2025-2026, lncRNA CFS, CTCF/cohesin/3D-genome × IL-2/JAK-STAT, Hi-C/TAD × ME/CFS, ME/CFS biomarker replication/negative. No EpiSwitch ME/CFS replication, no cross-condition EpiSwitch study, no Hi-C ME/CFS study found (queries returned 0). |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed E-utilities API (15 queries + esummary/efetch, batch) | pubmed/eutils | 2026-08-15 | — | ops/research/search-log-episwitch-2026-08-15.md; ops/research/literature-episwitch-2026-08-15.md; bib/genetics-epigenetics.bib (14 new entries); appendix-h (14 annotated entries) — EpiSwitch 3D-genomic diagnostic topic (14 papers: 4 platform/cross-disease, 4 mechanism, 3 competing biomarker, 3 review/context) |

## Davenport 2025 Effort/Deconditioning Matters Arising — Literature Search (2026-08-15)
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities esearch + esummary + efetch) | 2026-08-15 | 11 queries: chronotropic intolerance ME/CFS; orthostatic chronotropic incompetence; EEfRT / effort expenditure rewards task; effort preference Walitt; 2-day CPET (2022–2026); deconditioning hypothesis ME/CFS; RPE/effort perception ME/CFS; Pritchard ARTP (0 hits); single-CPET insufficiency (0 hits). PMIDs added: 30968005, 37303862, 36818521, 35290404, 19672310. |
| Crossref API | 2026-08-15 | Primary DOI 10.1038/s41467-025-64538-0 metadata verification (article-number 9176, 14 authors). |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| https://www.nature.com/articles/s41467-025-64538-0 | nature.com | 2026-08-15 | 2026-08-15 | bib/exercise-pem.bib (@Davenport2025EffortDeconditioning, key corrected from effortcritique2025); appendix-h sec:bib-effort-deconditioning; ch41-controversies + ch37-mechanistic-studies (citation key updated) |
| PubMed E-utilities API (11 queries + esummary/efetch, batch) | pubmed/eutils | 2026-08-15 | — | ops/research/search-log-davenport2025-effort-deconditioning-2026-08-15.md; ops/research/literature-davenport2025-effort-deconditioning-2026-08-15.md; bib/exercise-pem.bib (5 new); appendix-h sec:bib-effort-deconditioning (6 annotated entries) — Davenport 2025 effort/deconditioning rebuttal topic |

---

## L-Theanine-Caffeine Combination for Selective Attention in ADHD
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-08-15 | 23 queries: direct (L-theanine/caffeine/ADHD/attention), null/negative (caffeine monotherapy null, L-theanine fatigue null), competing mechanisms (methylphenidate vs caffeine, FPN-DMN connectivity), harm (caffeine adverse/adverse-effects/toxicity, L-theanine safety/adverse, methylphenidate mechanism), indirect biochemical links (adenosine receptor ME/CFS, adenosine PEM, caffeine PEM, caffeine energy metabolism, L-theanine GABA, stimulant CFS, caffeine biotransformation). Crossref for author disambiguation. Null+harm+indirect-biochemical searches MANDATORY included. |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed API queries (23 queries, batch) | pubmed/eutils | 2026-08-15 | — | ops/research/search-log-theanine-caffeine-adhd-2026-08-15.md, ops/research/literature-summary-theanine-caffeine-adhd.md, bib/treatments.bib, bib/neurology-comorbidities.bib, bib/epidemiology.bib, bib/energy-metabolism.bib, appendix-h — L-theanine-caffeine/ADHD selective-attention + caffeine/L-theanine harm + adenosine/purinergic ME/CFS bridge literature (11 new papers) |
| Crossref API (2 DOIs) | crossref | 2026-08-15 | — | Author disambiguation for Al Shahab 2025 (nu17091482) and Anas Sohail 2021 (cureus.20828) |

---

## SynGO Synaptic Gene-Ontology Enrichment in ME/CFS
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-08-16 | 24 queries: direct (SynGO synapse, synaptic gene ontology ME/CFS, synapse enrichment ME/CFS GWAS), null/negative (no synaptic enrichment ME/CFS — zero hits), competing (ME/CFS GWAS immune enrichment, mitochondrial enrichment — already in bib), indirect biochemical links (postsynaptic density / synaptic plasticity / glutamatergic / synaptic vesicle / SV2A × ME/CFS or chronic fatigue), imaging correlate (SV2A PET schizophrenia/depression). Non-treatment topic — harm searches NOT required per task constraints. |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed E-utilities API (24 queries + efetch, batch) | pubmed/eutils | 2026-08-16 | — | ops/research/search-log-syngo-synaptic-enrichment-mecfs-2026-08-16.md, ops/research/literature-summary-syngo-synaptic-enrichment-mecfs.md, bib/genetics-epigenetics.bib (5 new), bib/neuroinflammation.bib (2 new), bib/viral-infection.bib (1 new), appendix-h (8 annotated entries) — SynGO synaptic enrichment in ME/CFS literature |

---

## Leptin & Circadian Rhythm Entrainment in ME/CFS
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-08-17 | 28 queries: direct (leptin ME/CFS/chronic fatigue/fatigue, circadian ME/CFS), mechanism (leptin SCN/DMH/entrainment/phase-shift/NREM-slow-wave, metabolic circadian entrainment), indirect biochemical links (circadian metabolic ME/CFS, circadian chronic fatigue, sleep-wake ME/CFS, leptin-resistance fatigue, endocrine circadian ME/CFS), competing (melatonin ME/CFS, light therapy ME/CFS, shift work), null/negative (leptin ME/CFS null, circadian ME/CFS negative), harm/technology (cell encapsulation safety, encapsulated cell therapy, metreleptin safety, encapsulation fibrosis). Crossref for primary DOI metadata. Null+competing+harm searches MANDATORY included. |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed E-utilities API (28 queries + efetch, batch) | pubmed/eutils | 2026-08-17 | — | ops/research/search-log-leptin-circadian-entrainment-2026-08-17.md, ops/research/literature-summary-leptin-circadian-entrainment-2026-08-17.md, bib/sleep.bib (5 new), bib/endocrine-reproductive.bib (3 new), bib/treatments.bib (1 new), appendix-h (9 annotated entries) — Leptin/circadian-entrainment in ME/CFS literature (Fleury 2026 trigger + mechanism + null + harm) |
| Crossref API (1 DOI) | crossref | 2026-08-17 | — | Primary DOI 10.1002/advs.77191 metadata verification (author list, article-number e77191) |

---

## LDN Fibromyalgia Responder Rates (FINAL Trial Re-Analysis)
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-08-18 | 13 queries: direct (LDN fibromyalgia responder secondary outcomes, naltrexone fibromyalgia 30% responder, FINAL trial naltrexone), null/negative (LDN fibromyalgia negative/no-difference/failed), harm (LDN adverse effects sleep, contraindications), indirect biochemical (naltrexone TLR4 microglia, OGFr chronic pain, endogenous opioid CFS, TLR4 ME/CFS). Crossref for primary DOI + editorial. Null+harm+indirect-biochemical searches MANDATORY included. |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed E-utilities API (13 queries + efetch/esummary, batch) | pubmed/eutils | 2026-08-18 | — | ops/research/search-log-ldn-fibromyalgia-responder-rates-2026-08-18.md, ops/research/literature-summary-ldn-fibromyalgia-responder-rates-2026-08-18.md, bib/treatments.bib (8 new), bib/immune.bib (2 new), appendix-h (10 annotated entries) — LDN FM 30%-responder NULL-evidence topic (Nielsen 2026 primary + Due Bruun 2026 re-analysis + INNOVA RCT + meta-analyses + harm + 2 mechanism) |
| Crossref API (2 DOIs) | crossref | 2026-08-18 | — | DOI 10.3344/kjp.25275 (Due Bruun 2026 re-analysis metadata) + DOI 10.1016/s2665-9913(23)00297-7 (Häuser 2024 editorial metadata) |

---

## Gastroparesis and Delayed Gastric Emptying in ME/CFS (2026-08-19)
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-08-19 | 39 queries: direct (gastroparesis/chronic fatigue/gastric emptying × ME/CFS), null/negative (failed replication, ME/CFS null), competing (gastroparesis functional dyspepsia overlap, gastroparesis vs dyspepsia mechanism), indirect biochemical/systemic MANDATORY (gastroparesis POTS, vagal denervation gastroparesis chronic fatigue, ICC chronic fatigue, enteric neuropathy fatigue, cholinergic gastric motility dysautonomia, nitric oxide nNOS, ICC gastroparesis, diabetic GP ICC/neuronal loss), diagnostic (GES scintigraphy consensus, GCSI), treatment (prucalopride trial, GLP-1 emptying, GPOEM, pyloromyotomy, GP review), harm MANDATORY (prokinetic adverse effects, metoclopramide contraindications/TD/black-box, domperidone QT, erythromycin long-term tolerance, prucalopride ME/CFS safety/QT, gastroparesis treatment safety), cross-disease (diabetic gastroparesis prevalence), post-viral (long COVID gastroparesis, post viral gastroparesis, COVID-19 emptying, SARS-CoV-2 GI dysmotility). Crossref for DOI metadata (Burnet, Montalvo, Grover, Wang). Null+competing+harm+indirect-biochemical searches MANDATORY included. |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed E-utilities API (39 queries + efetch/esummary, batch) | pubmed/eutils | 2026-08-19 | — | ops/research/search-log-gastroparesis-2026-08-19.md, ops/research/literature-summary-gastroparesis.md, bib/gut-microbiome.bib (6 new), bib/treatments.bib (4 new), bib/autonomic-cardiovascular.bib (2 new), bib/long-covid.bib (1 new), appendix-h (13 annotated entries, sec:bib-gastroparesis) — gastroparesis/delayed gastric emptying in ME/CFS (direct Burnet 2004 + null Corrado 1998 + mechanism Grover 2011/Wang 2009/Debourdeau 2024 + diagnostic Wise 2021 + treatment Ingrosso 2023/Patel 2024/Gupta 2016 + harm Shakhatreh 2019 + POTS Tseng 2019/Aziz 2025 + post-viral Montalvo 2022) |
| Crossref API (4 DOIs) | crossref | 2026-08-19 | — | DOI 10.1186/1471-230X-4-32 (Burnet 2004), 10.1111/nmo.14314 (Montalvo 2022), 10.1053/j.gastro.2011.01.046 (Grover 2011), 10.1111/j.1365-2982.2009.01336.x (Wang 2009) metadata verification |

---

## Hyperparathyroidism Differential Diagnosis Literature Search (2026-08-21)
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-08-21 | 27 queries: direct (hyperparathyroidism × ME/CFS/CFS/fibromyalgia), misdiagnosis (HPT misdiagnosed CFS/FM), null/negative (PHPT fibromyalgia prevalence, hypercalcemia CFS), indirect biochemical MANDATORY (hypercalcemia fatigue/cognitive/neuromuscular, PTH fatigue, secondary HPT vitamin D), guideline (ME Association calcium recommendation). Crossref for Borgia 2012 DOI verification. NICE NG206 + ME Association as guideline sources. Null+misdiagnosis+indirect-biochemical searches MANDATORY included. |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed E-utilities API (27 queries + esummary/efetch, batch) | pubmed/eutils | 2026-08-21 | — | ops/research/search-log-hyperparathyroidism-differential-2026-08-21.md, ops/research/literature-summary-hyperparathyroidism-differential-2026-08-21.md, bib/endocrine-reproductive.bib (9 new), appendix-h (9 annotated entries, sec:bib-hyperparathyroidism-differential) — hyperparathyroidism as differential diagnosis for ME/CFS (misdiagnosis Costa 2016/Borgia 2012 + null Ferrari 2015 + treatment response Adkisson 2014/Liu 2021 + neuropsychiatric Mairinger 2026/Koman 2022 + reviews Oberger Marques 2020/Wootton 2026) |
| Crossref API (1 DOI) | crossref | 2026-08-21 | — | DOI 10.1016/j.reumae.2012.06.019 (Borgia 2012 metadata verification) |
| https://www.nice.org.uk/guidance/ng206/chapter/Recommendations | nice.org.uk | 2026-08-21 | — | NICE NG206 rec 1.2.3 — "calcium and phosphate" among investigations to exclude other diagnoses in suspected ME/CFS (guideline basis for endocrine exclusion requirement) |

---

## Adult Hippocampal Neurogenesis in MDD Literature Search (2026-08-21)
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-08-21 | 21 queries: direct (adult hippocampal neurogenesis depression human, Boldrini, Peng 2026, pattern separation, hippocampal volume depression meta-analysis, neurogenesis stress glucocorticoid, antidepressant neurogenesis review, Eriksson 1998), null/negative (adult neurogenesis controversy human, Sorrells, AHN+CFS direct), indirect biochemical MANDATORY (hippocampus CFS, BDNF CFS, HPA axis CFS meta-analysis, neurogenesis long covid). Crossref + full-text (nature.com) for primary paper Peng 2026 metadata. Direct AHN+ME/CFS = 0 hits (research gap). Null+controversy+indirect-biochemical searches MANDATORY included. |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed E-utilities API (21 queries + esummary/efetch, batch) | pubmed/eutils | 2026-08-21 | — | ops/research/search-log-depression-hippocampal-neurogenesis-2026-08-21.md, bib/neurology-comorbidities.bib (14 new), appendix-h (14 annotated entries, sec:bib-depression-hippocampal-neurogenesis) — depression hippocampal neurogenesis in MDD (primary Peng 2026 + foundational Eriksson 1998 + persistence Boldrini 2018 + MDD granule neurons Boldrini 2019 + antidepressant Boldrini 2012 + reviews Tartt 2022/Anacker 2017 + hippocampal volume Videbech 2004 + pattern separation Gandy 2017 + null Sorrells 2018/2021 + animal Snyder 2011 + indirect ME/CFS Papadopoulos 2011 + indirect long COVID Fernández-Castañeda 2022) |
| Crossref API (1 DOI) | crossref | 2026-08-21 | — | DOI 10.1038/s41591-026-04571-8 (Peng 2026 primary paper metadata verification) |
| Nature Medicine (full text) | nature.com | 2026-08-21 | — | Article s41591-026-04571-8 (open access) — abstract + Methods for primary-paper annotation |
---

## Reactome Human Pathway Catalog (pathway-registry scaffold)

| Source | Last Scraped | Notes |
|--------|--------------|-------|
| Reactome release download (`ReactomePathways.txt`) | 2026-08-22 | Full canonical human pathway list. Reactome = CC0 (public domain). 2,883 Homo sapiens pathway rows at reaction/process granularity. Fetch: https://reactome.org/download/current/ReactomePathways.txt. Used as the external canonical reference for the pathway-coverage index (Tier A). NOT copied wholesale into the paper — referenced by name/ID only. |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| https://reactome.org/download/current/ReactomePathways.txt | reactome.org | 2026-08-22 | — | ops/plans/pathway-registry.md — canonical human pathway scaffold for Tier A pathway-coverage index (cross-reference only; no paper content integration yet) |

---

## Saffron (Crocus sativus) — Tryptophan/Serotonin-Axis Relevance Literature Search (2026-08-22)
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-08-22 | Queries: direct (saffron × ME/CFS/chronic-fatigue/fatigue), tryptophan/serotonin axis (saffron × 5-HTT/SERT serotonin reuptake, saffron × tryptophan, saffron × kynurenine, crocin × serotonin), gut microbiome (saffron × gut microbiome, crocin × microbiome, saffron × gut-brain), null/negative (saffron RCT no effect, saffron fatigue negative), harm (saffron adverse effects, saffron serotonin syndrome, saffron SSRI interaction, saffron MAOI, saffron pregnancy safety), mechanistic (crocin antioxidant Nrf2, crocetin, safranal MAO). Metadata via esummary/efetch (PMID/DOI verified). Papers added to bib/treatments.bib. |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed E-utilities API (esearch/esummary/efetch, batch) | pubmed/eutils | 2026-08-22 | — | ops/research/search-log-saffron-2026-08-22.md, ops/research/literature-summary-saffron.md, bib/treatments.bib, appendix-h (sec:bib-saffron) — saffron (Crocus sativus) tryptophan/serotonin-axis relevance to ME/CFS; conditional candidate assessment |

## Aryl-Hydrocarbon-Receptor (AhR)-Tryptophan-Gut-Microbiome Axis Literature Search (2026-08-22)
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-08-22 | Queries: direct (aryl hydrocarbon receptor × chronic fatigue syndrome/myalgic encephalomyelitis/ME-CFS), null/negative (AhR negative results chronic fatigue, AhR failed replication), competing (AhR vs kynurenine pathway, IDO AhR interplay, tryptophan metabolism gut microbiota), indirect-biochemical MANDATORY (indole metabolites ME/CFS, gut indole tryptophan chronic fatigue, IL-22 ME/CFS = 0 hits, Th17/Treg imbalance ME/CFS = 0 hits, microbial tryptophan metabolites fatigue, indole-3-propionic acid inflammation, tryptamine AhR, kynurenine AhR ligand, indole acetic acid intestinal barrier AhR, AhR IL-22 intestinal barrier, aryl hydrocarbon receptor Th17 Treg), harm (aryl hydrocarbon receptor toxicity adverse effects, AhR agonists adverse effects), AhR gut microbiome, AhR serotonin metabolism. Metadata via esummary/efetch (PMID/DOI verified). 10 papers included. |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed E-utilities API (esearch/esummary/efetch, batch) | pubmed/eutils | 2026-08-22 | — | ops/research/search-log-tryptophan-ahr-gut-microbiome-2026-08-22.md, ops/research/literature-summary-tryptophan-ahr-gut-microbiome.md, bib/gut-microbiome.bib (4 new), bib/immune.bib (6 new), appendix-h (10 annotated entries, sec:bib-tryptophan-ahr-gut-microbiome) — aryl-hydrocarbon-receptor (AhR)-tryptophan-gut-microbiome axis in ME/CFS (direct Esteban 2026 + preprint Tian 2024 + IBS/CFS Chojnacki 2025 + animal Yan 2026; mechanism Rothhammer 2019/Tian 2026/Torrelli-Diljohn 2026/Morris 2016; genetics Caccamo 2013; animal mechanism Thirugnanam 2026) |

---

## Quinine Sulfate for Muscle/Leg Cramps — Literature Search (2026-08-29)
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-08-29 | Queries: efficacy (quinine muscle cramps, nocturnal leg cramps, randomized, Cochrane, meta-analysis, systematic review, Man-Son-Hing), harm MANDATORY (quinine adverse effects, thrombocytopenia, immune thrombocytopenia, QT prolongation/cardiotoxicity, cinchonism, G6PD hemolysis, cramps safety, Liles), null/competing (cramps not recommended, magnesium Cochrane, drug treatment myotonia, non-drug therapies cramps), indirect-biochemical MANDATORY (quinine Kv7/KCNQ, Nav1.4, SCN4A myotonia cramps, skeletal muscle ion channel chronic fatigue), ME/CFS-specific (quinine ME/CFS/chronic fatigue syndrome/fibromyalgia/myalgia = 0 direct hits). Metadata via esummary/efetch (PMID/DOI verified). 10 papers added to bib/treatments.bib (11 reviewed; 1 reused from corpus: Garrison2020MagnesiumCramps). Zero direct ME/CFS studies. |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed E-utilities API (esearch/esummary/efetch, batch) | pubmed/eutils | 2026-08-29 | — | ops/research/search-log-quinine-sulfate-2026-08-29.md, ops/research/literature-summary-quinine-sulfate.md, bib/treatments.bib (10 new), appendix-h (10 annotated entries) — quinine sulfate off-label for leg cramps at bedtime; efficacy vs harm/boxed-warning; competing treatments; indirect ion-channel (Nav1.4/KCNQ) link to ME/CFS muscle-ion-channel chapter |

---

## Osteoporosis & Bone Health in ME/CFS — Literature Search (2026-08-29)
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) | 2026-08-29 | Queries: direct (osteoporosis ME/CFS, bone mineral density CFS, vitamin D deficiency ME/CFS, calcium deficiency chronic fatigue), indirect-biochemical MANDATORY (bone remodeling chronic fatigue, vitamin D immune chronic fatigue, mechanical unloading bone loss inactivity, RANKL OPG deconditioning, disuse osteoporosis bedrest), harm MANDATORY (bisphosphonate adverse effects/contraindications/safety bedbound, atypical femur fracture, anabolic bone therapy teriparatide side effects, vitamin D toxicity, calcium supplement cardiovascular safety), null/competing (vitamin D supplementation null fatigue trials). 8 papers added to bib. Zero direct osteoporosis-in-ME/CFS studies found (documented research gap). |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed E-utilities API (esearch/esummary/efetch, batch) | pubmed/eutils | 2026-08-29 | — | ops/research/search-log-osteoporosis-2026-08-29.md, ops/research/literature-summary-osteoporosis.md, bib/endocrine-reproductive.bib (2 new), bib/musculoskeletal.bib (3 new, new file added to build tuple), bib/treatments.bib (3 new), appendix-h (8 annotated entries) — osteoporosis risk in ME/CFS: reduced mobility/disuse bone loss, vitamin D (Earl 2017 contradicts deficiency premise), calcium deficiency gap, bisphosphonate/anabolic harm |

---

## Prolactin Response to Buspirone Challenge in ME/CFS — Literature Search (2026-08-29)
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed (E-utilities API) + Crossref (DOI metadata) | 2026-08-29 | Queries: direct (prolactin buspirone chronic fatigue, buspirone prolactin myalgic encephalomyelitis, prolactin response challenge chronic fatigue), null/negative (prolactin chronic fatigue negative, buspirone prolactin failed replication = 0, prolactin challenge no difference ME/CFS = 0), competing mechanisms (dopamine prolactin chronic fatigue, serotonin prolactin regulation, estradiol prolactin regulation), indirect-biochemical MANDATORY (dopamine ME/CFS, dopamine chronic fatigue, HPA prolactin, 5-HT1A serotonergic chronic fatigue, prolactin dopamine endocrine CFS, sex hormone estradiol chronic fatigue), replication context (prolactin stimulation test, pharmacological challenge test CFS, neuroendocrine challenge ME/CFS), mechanism (dopamine D2 prolactin review, dopamine inhibits prolactin lactotroph, TIDA neurons review). 14 papers added to bib. Zero modern (post-2010) replication of buspirone→prolactin in ME/CFS found (documented research gap — the line is from 1992–2001 and was abandoned). |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed E-utilities API (esearch/esummary/efetch, batch) + Crossref | pubmed/eutils + crossref | 2026-08-29 | — | ops/research/search-log-prolactin-buspirone-2026-08-29.md, ops/research/literature-summary-prolactin-buspirone.md, bib/endocrine-reproductive.bib (14 new), appendix-h (14 annotated entries, sec:bib-prolactin-buspirone) — prolactin response to buspirone challenge in ME/CFS: direct challenge-prolactin studies (Bakheit 1992, Sharpe 1996, Sharma 2001) + depression-vs-CFS discriminator (Cleare 1995) + null fenfluramine (Yatham 1995, Bearn 1995) + dopamine-prolactin brake / TIDA / estradiol mechanism (Ben-Jonathan 2001, Fitzgerald 2008, Qi-Lytle 2023) + dopamine-modulation trial (Haghighi 2021 OSU6162) |

---

## REenergizeME — Intermittent Hypoxia-Hyperoxia Treatment (IHHT) in ME/CFS — Literature Search (2026-08-29)
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| User-supplied PDF (protocol, BMJ Open 2026;16:e117729) | 2026-08-29 | User-supplied protocol paper: Nochi et al. 2026 REenergizeME — RCT protocol, IHHT in 104 female ME/CFS (ICC criteria, mild–moderate NICE), 1:1 IHHT vs sham, HypoxBreath device, 6 sessions/8 weeks, 4–7 hypoxia–hyperoxia cycles 22–40 min, primary = SF-36 vitality. Filed at `Literature/treatments/Nochi2026_IHHT_MECFS/`. PDF read fully (via pdftotext). Full PubMed literature search (direct/indirect-biochemical/harm/null) performed in integrate-topic Phase 1. |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| https://doi.org/10.1136/bmjopen-2026-117729 (BMJ Open 2026;16:e117729) | bmjopen | 2026-08-29 | — | ops/research/search-log-reenergize-me-ihht-2026-08-29.md, ops/research/literature-summary-reenergize-me-ihht.md, bib/treatments.bib, appendix-h — REenergizeME IHHT RCT protocol: intermittent hypoxia-hyperoxia treatment in ME/CFS (hypoxia-tolerance/hormesis mechanism, mild–moderate, female, SF-36 vitality primary) |

---

## S4ME 2026 "Management of Severe and Very Severe ME/CFS" Factsheet — Literature Verification & Harm Search (2026-08-29)
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| User-supplied PDF (Science for ME, Edwards J + S4ME members 2026, severe/very-severe clinical-management factsheet) | 2026-08-29 | Filed at `Literature/severe-care/S4ME2026ManagementSevereVerySevereMECFS.pdf`. Read fully (prior session). 5 referenced papers verified via Crossref + PubMed: Gaunt 2024 (Eur J Pediatr), Wearden FINE protocol 2006 + results 2010 (BMJ), Devasahayam 2012, Page 2019, McPhee 2019. Metadata via Crossref (title/author/journal/vol/page/DOI) + PubMed esummary/efetch (PMID verified). MANDATORY harm/safety searches: (a) enteral/parenteral feeding in ME/CFS — no new ME/CFS-specific safety paper beyond Baxter2021 (already in corpus); (b) off-label drugs (antihistamines, naltrexone, fludrocortisone, ivabradine) ME/CFS safety — all harm evidence already in corpus (Rowe2001FludrocortisoneNMH, Marchetta2025ivabradine + POTS oral-meds review, Bolton2019NaltrexoneSAE + extensive LDN, mast-cell antihistamine coverage). No genuinely-new harm papers justified; none added (anti-padding). |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| Crossref API (5 DOIs: 10.1007/s00431-024-05458-x, 10.1258/shorts.2011.011127, 10.1136/archdischild-2019-317090, 10.1177/1359105319854532, 10.1186/1741-7015-4-9, 10.1136/bmj.c1777) | crossref | 2026-08-29 | — | Metadata verification for Gaunt/Wearden/Devasahayam/Page/McPhee papers |
| PubMed E-utilities (esearch/esummary/efetch; ~15 harm/verification queries) | pubmed/eutils | 2026-08-29 | — | PMID verification (Gaunt 38429546, Wearden protocol 16603058, Wearden results 20418251, Devasahayam 22299071, Page 31201158, McPhee 31234662); harm searches (enteral/parenteral feeding × ME/CFS; antihistamine/naltrexone/fludrocortisone/ivabradine × ME/CFS safety) |
| User-supplied PDF (Science for ME factsheet) | s4me | 2026-08-29 | — | ops/research/search-log-severe-mecfs-management-2026-08-29.md, ops/research/literature-summary-severe-mecfs-management.md, bib/treatments.bib (6 new), bib/diagnosis-assessment.bib (1 new), appendix-h (sec:bib-severe-mecfs-care-guide, 7 annotated entries) — S4ME 2026 severe/very-severe ME/CFS clinical-management factsheet; GET/rehabilitation critique; enteral feeding; off-label drug appraisal |

---

## Aluminum Adjuvant → Macrophagic Myofasciitis (MMF) → ME/CFS — Literature Search (2026-09-01)
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed E-utilities API (esearch/esummary/efetch, 20 queries) | pubmed/eutils | 2026-09-01 | Phase 1 integrate-topic search for topic `aluminum-adjuvant-mmf`. 20 queries: direct (MMF×CFS/ME, MMF×aluminium, aluminium hydroxide×CFS, Gherardi/Authier MMF), null/negative (MMF no-association/negative), competing/counter (adjuvanted pandemic influenza vaccine CFS risk → confirmed existing corpus Magnus2015influenza PMID 26475444), indirect-biochemical (NLRP3/alum/IL-1beta, aluminum neurotoxicity BBB, aluminum encephalopathy, ASIA, aluminum chronic immune stimulation), regulatory safety (aluminum vaccine safety, WHO/FDA). 12 NEW papers added to bib/immune.bib; existing corpus counter-evidence (Magnus2015influenza) NOT duplicated. |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed E-utilities API (20 queries; PMIDs 31059838,25506338,26030650,27765861,29079320,25699008,27908630,39058143,18496530,30139653,22001122,41519970) | pubmed/eutils | 2026-09-01 | — | ops/research/search-log-aluminum-adjuvant-mmf-2026-09-01.md, ops/research/literature-summary-aluminum-adjuvant-mmf.md, bib/immune.bib (12 new), appendix-h (12 annotated entries) — Aluminum adjuvant → MMF → ME/CFS hypothesis literature: direct MMF clinical (Henri-Mondor, Gherardi/Authier cohort), null/counter (independent safety reviews + FDA PK), indirect NLRP3/IL-1beta mechanism |

---

## Lifetime Energy-Level Problems → ME/CFS (Mild / Constitutional Cases) — Literature Search (2026-09-01)
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed E-utilities API (esearch/esummary/efetch, ~28 queries) | pubmed/eutils | 2026-09-01 | Phase 1 integrate-topic search for topic `lifetime-energy-mild-cases`. Queries across 5 axes: (1) severity stratification/underdiagnosis of mild ME/CFS, (2) lifetime/constitutional/lifelong tiredness, (3) trait/personality fatigue vs illness, (4) premorbid/childhood/pre-onset prodrome, (5) null/negative (mild CFS no PEM, lifelong fatigue exclusion). PRIOR-WORK AWARE: avoided re-adding ADHD/ASD predisposition (already `adhd-energy-mecfs`, `adhd-asd-comorbidity-mecfs`, `lower-baseline-predisposition` incl. Kato2006premorbid, Wirth2026prodromalICD, Chu2019onsetPatterns) and sudden-onset (already @Jason2015CFSvsME). 6 NEW papers added (bib/epidemiology.bib, bib/diagnosis-assessment.bib, bib/energy-metabolism.bib); all verified not-in-corpus before adding. |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed E-utilities API (~28 queries; NEW PMIDs 25584527,19379961,25448612,20185398,23585632,1861915) | pubmed/eutils | 2026-09-01 | — | ops/research/search-log-lifetime-energy-mild-cases-2026-09-01.md, ops/research/literature-lifetime-energy-mild-cases-2026-09-01.md, bib/epidemiology.bib, bib/diagnosis-assessment.bib, bib/energy-metabolism.bib, appendix-h (sec:lifetime-energy-mild-cases, 6 annotated entries) — Lifetime energy-level problems → ME/CFS mild/constitutional cases literature: lifelong-fatigue exclusion criterion (Sunnquist), population fatigue-vs-disease construct (Harvey), childhood-onset fatigue trajectory (Collin), fatigue-type severity classification (Jason), energy-envelope subtypes (Brown), adolescent chronic-fatigue prodrome (Smith) |

---

## Post-Viral Post-Acute Syndromes (Makin 2026 Nature feature gap) — Literature Search (2026-09-02)
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed E-utilities (esearch/efetch PMID 41562079), PubMed Central OA REST (PMC12812670 full text), Drugs.com labels (celecoxib, valacyclovir, famciclovir), DOI resolver (10.3389/fimmu.2026.1698271 → 404) | pubmed/eutils + pmc + drugs.com | 2026-09-02 | Phase 1 integrate-topic for `post-viral-post-acute-syndromes`. Verify ONE genuinely-new feature-cited primary paper: Pridgen & Putrino, Front Immunol 16:1698271 (IMC-2 = valacyclovir+celecoxib ± 15-d Paxlovid case series, n=24, open-label). Obtained full text via PMC. Confirmed other 8 feature-cited papers (Al-Aly, Proal, Maguire, Peluso, Santos, Stein, Fluge, Swank) ALREADY integrated (grep; not duplicated). Ran mandatory harm search (drug combo + ME/CFS co-prescription interactions). 1 NEW bib entry. DOI-year reconciliation: cited 2026 (issue/copyright) but DOI is 10.3389/fimmu.**2025**.1698271. |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed esearch/efetch (PMID 41562079) + PMC OA BioC (PMC12812670) + Drugs.com (Celebrex/Valtrex/Famvir) | pubmed/eutils, pmc, drugs.com | 2026-09-02 | — | ops/research/search-log-post-viral-post-acute-syndromes-2026-09-02.md, ops/research/literature-post-viral-post-acute-syndromes-2026-09-02.md, bib/viral-infection.bib (Pridgen2026HerpesAntiviralLongCOVID), appendix-h (sec:bib-reservoir-antiviral-2026, Pridgen & Putrino 2026 entry) — Post-viral post-acute syndromes feature-gap integration: Pridgen & Putrino herpes-antiviral (±Paxlovid) long-COVID case series (low-certainty pilot), harm data for valacyclovir+celecoxib ± Paxlovid, ME/CFS co-prescription interactions |

---

## Mitochondrial Dysfunction in ME/CFS and Long COVID — Literature Search (2026-09-04)
| Source | Last Scraped | Notes |
|--------|--------------|-------|
| PubMed E-utilities API (esearch/esummary/efetch; 9 query axes + metadata batches) | pubmed/eutils | 2026-09-04 | Phase-1 integrate-topic search for topic `mitochondrial-dysfunction-mecfs-longcovid` (gap-fill over existing ch34 sec-02 cascade coverage). 9 axes: direct ME/CFS×mito 2025-26, direct Long-COVID×mito/bioenergetic 2025-26, NULL/NEGATIVE, COMPETING (deconditioning vs disease), and indirect NAD+/PDH/mitophagy/iron/ROS downstream searches. All candidates deduped vs 2994 corpus DOIs across all bib/*.bib. Confirmed 2 suspected anchors ALREADY integrated and NOT re-added (Charlton 2026 Nat Commun bed-rest muscle PMID 42649155; Liu 2026 BBI-Health IgG-energetics PMID 41704659). 7 NEW papers added to bib/energy-metabolism.bib. |

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| PubMed esearch/esummary/efetch (9 axes; PMIDs 42253978,41632778,41525818,41237904,41752134,42177403,42656694) | pubmed/eutils | 2026-09-04 | — | ops/research/search-log-mitochondrial-dysfunction-mecfs-longcovid-2026-09-04.md, ops/research/literature-summary-mitochondrial-dysfunction-mecfs-longcovid-2026-09-04.md, bib/energy-metabolism.bib (7 new: Tasoula2026multiomicsLCmito, WeberFahr2026ATPphosphocreatine, Germain2025plasmaProteomicMaladaptation, Keele2026mapMECFSmito, Magawa2026TRPM3NKmitoCa, Groysman2026fragileMitophagy, Ryback2026myoblastNull), appendix-h (sec:mitochondrial-dysfunction-mecfs-longcovid, 7 annotated entries), Literature/pathophysiology/energy-metabolism/ (6 OA PDFs) |
| Publisher/EUPMC OA PDF retrieval | frontiersin.org, journals.plos.org, mdpi-res.com, europepmc.org | 2026-09-04 | — | 6 OA full texts (Tasoula, Ryback, Keele, Magawa, Groysman, Germain); Weber-Fahr (Biol Psychiatry) paywalled → abstract only. No landing-page scraping; bibliographic + PDF retrieval only. |
