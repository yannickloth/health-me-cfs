# Search Log: AI-Driven Multi-Omics Modeling of ME/CFS (Xiong 2025)

## Queries

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|
| 1 | PubMed | Xiong Oh Bateman Unutmaz multi-omics ME/CFS 2025 | 2 | 2 | 2 | 2026-08-10 |
| 2 | PubMed | AI-driven multi-omics modeling ME/CFS (PMID 40715814 fetch) | 1 | 1 | 1 | 2026-08-10 |
| 3 | PubMed | mucosal-associated invariant T cells chronic fatigue syndrome | 4 | 4 | 3 | 2026-08-10 |
| 4 | PubMed | MAIT gamma delta T cells IFN-gamma granzyme ME/CFS | 0 | 0 | 0 | 2026-08-10 |
| 5 | PubMed | benzoate hippurate microbiome fatigue metabolite | 1 | 1 | 1 | 2026-08-10 |
| 6 | PubMed | urinary hippuric acid chronic fatigue biomarker | 1 | 1 | 1 | 2026-08-10 |

## Inclusion Criteria
- Papers on AI / machine-learning / multi-omics modeling of ME/CFS, chronic fatigue, or long COVID.
- Primary study with ME/CFS cohort (population weight 1.00), or strong mechanistic overlap (long COVID / fibromyalgia) for corroborating the model's omics findings.
- Peer-reviewed preferred; preprint/commentary noted when relevant.

## Exclusion Criteria
- Papers duplicating existing corpus entries already in bib (immune pillar: Cliff2019Cellular, Shahbaz2026single-cell-immune, Lee2025TcellActivation; metabolome: taenzer2023urine; microbiome: Xiong2023multiomics, JAXmicrobiome2025).
- Zero-hit queries (query #4) — no direct MAIT+γδT+granzyme ME/CFS study found beyond the primary paper.

## Flow
- Total hits: 9
- After deduplication: 9
- After title/abstract screen: 9
- After full-text review: 9
- Final included (new to corpus): 3
  - Xiong2025BioMapAI (PRIMARY, Nat Med)
  - Brigo2025UremicMetabolites (Front Cell Infect Microbiol — hippuric acid in post-COVID/ME/CFS)
  - Malatji2017FibromyalgiaMetabolomics (BMC Neurol — hippuric acid in fibromyalgia)
- Excluded with reasons: query #4 zero hit; corroborating immune papers already in corpus.

## Search Terms by Database
- PubMed MeSH: Artificial Intelligence, Multiomics, Metabolome, Metabolomics, Metagenomics, Fatigue Syndrome Chronic, Gastrointestinal Microbiome, Biomarkers, Neural Networks Computer, Longitudinal Studies
- PubMed exact phrases: "mucosal-associated invariant T cells chronic fatigue", "benzoate hippurate microbiome fatigue", "urinary hippuric acid chronic fatigue biomarker"
- PubMed identifiers: PMID 40715814 (primary), PMID 38979186 (preprint), PMID 41822518, PMID 41373029, PMID 31057538, PMID 39830245, PMID 40510799, PMID 28490352

## Certainty rationale (primary paper)
- Sample: n=249 ME/CFS cohort (96 healthy / 153 ME/CFS), 4-year longitudinal, 515 time points | High
- Publication: Nature Medicine (top journal) | High
- Replication: classified in held-out + 4 independent external cohorts (Guo, Raijmakers microbiome; Germain, Che metabolome) | High
- Methodology: rigorous; supervised DNN + explainable AI (SHAP); 10-fold CV + external validation | High
- Raw certainty: 0.90. Population: ME/CFS cohort → weight 1.00 → **discounted certainty 0.90.**
