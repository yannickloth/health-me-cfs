# Literature Summary: AI-Driven Multi-Omics Modeling of ME/CFS (Xiong 2025)

Date: 2026-08-10 | Stream: `ai-multiomics-mecfs-xiong2025`

## PRIMARY PAPER

### Xiong R, Aiken E, Caldwell R, Vernon SD, Kozhaya L, Gunter C, Bateman L, Unutmaz D, Oh J. Nature Medicine, 2025 Sep;31(9):2991-3001. DOI 10.1038/s41591-025-03788-3. PMID 40715814. Free PMC (PMC12416096).

**Model: BioMapAI** — a supervised deep neural network trained on a 4-year longitudinal multi-omics dataset from **249 participants** (96 healthy, 153 ME/CFS; 515 time points; 1,471 biosamples).

**Omics layers integrated:** gut metagenomics, plasma metabolomics, immune cell profiling (PBMC), blood laboratory data, and detailed clinical symptoms (12 scored symptoms).

**Key technical facts:**
- DNN with input layer, normalization, 3 hidden layers (Z1=64 nodes, Z2=32 nodes, dropout 50%; Z3=12 parallel sublayers for 12 symptoms), 6 inputs (5 individual omics + 1 merged).
- Classifies ME/CFS vs healthy with **AUC=0.99** using original clinical scores; held-out + **4 independent external cohorts** validation (Guo, Raijmakers microbiome; Germain, Che metabolome).
- Explainable AI (SHAP values) → constructs a connectivity map across microbiome, immune system, and plasma metabolome, adjusted for age/gender/clinical factors.
- Top disease biomarker shared across symptoms: *Dysosmobacteria welbionis* (species), with highest SHAP importance.

**Mechanistic findings (the "connectivity map"):**
1. **Dysbiotic microbiome-immune-metabolome crosstalk**: Altered associations between microbial metabolism — short-chain fatty acids (SCFA), branched-chain amino acids (BCAA), tryptophan, benzoate — and plasma lipids + bile acids. Loss of health-associated pyruvate→host-blood correlations; increased IFN-γ⁺ CD4 memory correlation with gut microbiome.
2. **Decrease in butyrate and BCAA pathways; increase in tryptophan and benzoate pathways** — linked to GI symptoms.
3. **Heightened inflammatory response in mucosal and inflammatory T cell subsets (MAIT cells, γδT cells)** secreting IFN-γ and Granzyme A (GzA) — contributing to worsened general health and social functioning.
4. **Benzoate → hippurate transformation** notably increased — associated with emotional disturbances, sleep issues, and fatigue.
5. **Loss of health-associated interactions with Th17, Th22, Treg** → increased inflammatory immune activity.
6. Heterogeneity: fatigue consistently severe over years; emotional dysregulation highly variable; nonlinear progression. Controls indistinguishable from patients on single omics (PCoA) — motivated the integrative approach.

**Limitations (from paper/analysis):**
- Symptom-specific biomarkers were computed on the full dataset and **not validated on held-out data** (Extended Data Fig. 4 note).
- Cohort is US-only (Duke / UConn / Jackson Lab / Bateman Horne Center), n=249.
- Confounders: sex/age/BMI partly adjusted via network construction; IBS/infection subgroups analyzed.
- No interventional validation — associations, not causal proof.
- Competing interest: S.D.Vernon affiliated with The BioCollective (at-home stool collection kit vendor).

**Related preprint:** Xiong et al. bioRxiv 2025 Feb 13 (PMID 38979186), same model, prior version 2024.06.24.600378.

---

## CORROBORATING LITERATURE (immune pillar — already in corpus)

These confirm the MAIT/γδT / T-cell findings the model surfaced — already present in `bib/immune.bib`:

- **Cliff2019Cellular** (Front Immunol 2019, PMID 31057538) — cellular immune function in ME/CFS; altered cytotoxic T-cell populations.
- **Shahbaz2026single-cell-immune** (Front Immunol 2026, PMID 41822518) — single-cell RNA-seq in Long COVID with ME/CFS; γδ and MAIT T cell depletion via Galectin-9, T-cell exhaustion.
- **Lee2025TcellActivation** (J Transl Med 2025, PMID 41373029) — abnormal T-cell activation + cytotoxic T-cell frequency discriminate symptom severity.

Taken together, the model's MAIT/γδT IFN-γ/GzA inflammatory signal is consistent with independent single-cell and flow-cytometry evidence of immune remodeling and innate-like T-cell perturbation in post-infectious ME/CFS.

## CORROBORATING LITERATURE (metabolome / microbiome-metabolome pillar — NEW to corpus)

### Brigo2025UremicMetabolites (Front Cell Infect Microbiol 2025, PMID 40510799)
Pilot of bacterial uremic metabolites in urine: 25 post-COVID (PCS), 8 ME/CFS, 8 controls. Elevated tryptamine, HPHPA, **hippuric acid**, and trimethylamine exclusively in post-infectious syndromes. Supports the gut-dysbiosis–microbial-metabolite link (incl. hippuric acid, the benzoate metabolite) in overlapping post-infectious fatigue populations.
- Sample small (pilot, n=41), design case-control | Raw certainty ~0.30; population weight 0.85 (post-infectious overlap) → **discounted 0.26.**

### Malatji2017FibromyalgiaMetabolomics (BMC Neurol 2017, PMID 28490352)
Urinary NMR metabolomics in fibromyalgia (n=18 FMS + 3 control groups); **hippuric acid** significantly elevated, a gut-microbiome-derived metabolite; diagnostic panel of succinic acid/taurine/creatine (ROC AUC ~0.90). Supports hippurate as a cross-condition marker of microbiome–host metabolite flux in chronic pain/fatigue syndromes.
- Sample small (n=18 patients), single centre, cross-condition | Raw certainty ~0.25; population weight 0.80 (fibromyalgia overlap) → **discounted 0.20.**

---

## INDIRECT BIOCHEMICAL LINKS
The benzoate→hippurate pathway is microbiome-mediated: benzoate from dietary/bacterial sources is conjugated with glycine in the liver to hippurate, which is excreted. The model's finding that benzoate→hippurate is increased and linked to emotional/sleep/fatigue symptoms extends the documented gut-dysbiosis–systemic-metabolite axis in post-infectious fatigue (Brigo 2025; taenzer2023urine already in corpus) and chronic pain syndromes (Malatji 2017). The tryptophan finding is consistent with the kynurenine/serotonin diversion hypothesis already in the corpus (Kavyani2022kynurenine; taenzer2023urine).

## NULL / NEGATIVE EVIDENCE SEARCHED
- Query for "MAIT gamma delta T IFN-gamma granzyme ME/CFS" returned zero results — the innate-like T-cell IFN-γ/GzA axis is not independently replicated in a dedicated ME/CFS study; the model is the primary evidence for it. Flag as partially replicated / emerging.
- No published rebuttal or failed-replication commentary on BioMapAI located as of search date. External validation (4 cohorts) is a strength; held-out validation gaps on symptom-specific biomarkers are the main caveat.

---

## OVERLAP WITH EXISTING TOPICS
- `JAXmicrobiome2025` (already in corpus) is the Jackson Laboratory press-release for THIS cohort/platform — the new addition is the peer-reviewed primary paper.
- `Xiong2023multiomics` (Cell Host & Microbe, already in corpus) is the same group's earlier cross-sectional multi-omics; the 2025 paper adds longitudinal data, the AI framework, and the dysbiotic crosstalk map.
- Prior ML-diagnosis plans (Li 2026, post-COVID Isfahan ML) focus on routine biochemical/metabolomic classification; BioMapAI is distinct in (a) top journal, (b) integrating 5 omics layers + symptoms, (c) explainable connectivity map, (d) external validation.

## DISCOUNTED CERTAINTY SUMMARY (new papers)
| Key | Raw cert | Population | Weight | Discounted |
|-----|----------|-----------|--------|------------|
| Xiong2025BioMapAI | 0.90 | ME/CFS cohort | 1.00 | **0.90** |
| Brigo2025UremicMetabolites | 0.30 | post-infectious | 0.85 | **0.26** |
| Malatji2017FibromyalgiaMetabolomics | 0.25 | fibromyalgia | 0.80 | **0.20** |

Primary paper dominates at discounted 0.90.
