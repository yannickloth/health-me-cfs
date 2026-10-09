# Kerrebijn et al. 2026 — The Genetic Architecture of Fibromyalgia

**Authors:** Kerrebijn I, Bjornsdottir G, Arbabi K, et al. (Chronic Pain Genomics Consortium, FinnGen, deCODE, UK Biobank, All of Us, Estonian Biobank, Genes & Health, Nashville Biosciences, Copenhagen Hospital Biobank, Intermountain Health, Michigan Genomics Initiative, Mass General Brigham Biobank). Lead/corresponding: Nasa Sinnott-Armstrong, Hanna M. Ollila, Michael Wainberg.
**Journal:** Nature Medicine. 2026;32(8):3060-3070.
**DOI:** 10.1038/s41591-026-04492-6
**PMID:** 42521817

## Key Points
- Multi-ancestry GWAS meta-analysis of fibromyalgia (ICD-10 M79.7) across 11 cohorts: 54,629 cases / 2,509,126 controls, total 2,563,755 individuals.
- 26 independent genome-wide significant (P < 5e-8) risk loci.
- Strongest association: rs149109767-A in HTT (Huntingtin gene), OR=1.09 (95% CI 1.065-1.118), P=2.2e-12 — an inframe glutamic acid deletion in exon 58, part of HD-associated A1 haplotype, distinct from the exon-1 repeat expansion that causes Huntington's disease. Largest effect among the 26 lead variants (~9% increased odds).
- Gene prioritization: HTT regulator GPR52, DCC, DRD2/NCAM1, MDGA2, CELF4, plus CAMKV/MST1R, MAML3, BCL11A, BPTF, NPC1, RABGAP1L, STK31/NPY, ARHGAP15/KYNU, PPP2R2B/GPR151.
- Heritability exclusively enriched in brain tissues (all 5 significant GTEx tissues = brain: cortex, caudate, frontal cortex, putamen, anterior cingulate) and 12/13 enriched cell types were neuronal (13th = pulmonary neuroendocrine cells, neuron-like). Strongest: dentate gyrus neurons (P=1.3e-6), enteric neurons (P=7.9e-6). Only significant lineage = neural (P=2.3e-4).
- Observed-scale heritability: 10.4% (95% CI 9.8-11.0%).
- Strong positive genetic correlations with chronic pain, psychiatric, and somatic disorders. rg > 0.7: cervicobrachial syndrome (0.87), myalgia (0.82), trochanteric bursitis (0.82), joint pain (0.81), hypermobility syndrome (0.79), PTSD (0.78), low back pain (0.75), chronic laryngitis (0.75), soft tissue disorders (0.73), IBS (0.70). Also migraine (0.61), dissociative (0.63), somatoform (0.67), depression (0.63), functional dyspepsia (0.67).
- Autoimmune correlations modest: psoriatic arthropathies (0.41), Sjogren (0.39), RA (0.33); stronger with seronegative RA (0.41) than seropositive (0.24); stronger with T2-low asthma (0.44) vs T2-high (0.27). No significant MHC signal; no heritability enrichment in peripheral immune cell types or glia.
- Sex: 87.7% of cases female; only 2 loci in males vs 21 in females (power-limited), but inter-sex genetic correlation 1.03 (P=2.9e-16), statistically indistinguishable from perfect correlation. Nearly identical architecture male/female.
- PRS: modest predictive ability; European AUC=0.59, South Asian 0.55, African 0.55. Highest quintile OR 1.5 (1.4-1.7), lowest 0.63 (0.57-0.68). Prevalence ~1.0% lowest quintile to 2.4% highest.
- PheWAS: 20 diseases associated with ≥3 lead variants (pain, metabolic syndrome, immune: autoimmune hypothyroidism, asthma). Dorsalgia most common (13/26). Drug associations: analgesics (14), anti-inflammatory/anti-rheumatic (12).

## ME/CFS relevance
- Intro: fibromyalgia frequently co-occurs with ME/CFS.
- Risk loci overlap with ME/CFS (OLFM4, RABGAP1L/GPR52) and long COVID (BPTF) per DecodeME / Chaudhary.
- Establishes fibromyalgia as CNS/nociplastic disorder — supports ch04 comorbidity, ch14d cross-disease, ch13 integrative.
- rg > 0.7 with IBS, low back pain, PTSD — shared chronic-pain/somatic genetic architecture relevant to ME/CFS comorbidity modeling.
- HTT/GPR52/DRD2 neural genes as candidate shared mechanisms.
- Two therapeutic targets: GPR52 (HTT regulator, investigational HD drug target) and CELF4 (gene therapy for chronic pain).

## Methodology
- Multi-ancestry, per-cohort-ancestry QC + GWAS (regenie), LDSC intercept inflation correction, fixed-effects inverse-variance-weighted meta-analysis across cohorts/ancestries.
- Post-GWAS: LDSC-SEG tissue/cell-type enrichment (GTEx 53 tissues, PanSci ~20M whole-mouse single-cell atlas, 119 cell types), LDSC genetic correlations (855 FinnGen endpoints → 337 significant), PheWAS (330 diseases, 124 drug classes), causal gene prioritization (manual + deCODE pipeline + FLAMES ML), PRS construction, sex-stratified meta-analyses.

## Certainty Assessment
- **Study Quality:** High (Nature Medicine, flagship journal)
- **Sample Size:** n = 2,563,755 (54,629 cases) — far exceeds n > 100 high threshold
- **Replication:** Multi-cohort (11 cohorts, leave-one-out, internal consistency); partially replicated by independent Bright 2026 GWAS (10 loci overlap with pain traits) but not fully external-replicated for all loci
- **Conflicts of Interest:** Author affiliations include Amgen deCODE Genetics (commercial); declared competing interests present
- **Population relevance:** General population (fibromyalgia), weight 0.80 for ME/CFS
- **Raw certainty:** 0.85 → discounted 0.85 × 0.80 = 0.68

## Acronyms
- GWAS: genome-wide association study
- LDSC: linkage disequilibrium score regression
- LDSC-SEG: LD score regression applied to specifically expressed genes
- PRS: polygenic risk score
- PheWAS: phenome-wide association study
- MTAG: multi-trait analysis of GWAS
- rg: genetic correlation
- HTT: Huntingtin gene
- HD: Huntington's disease
- GPR52: G protein-coupled receptor 52 (orphan GPCR)
- IBS: irritable bowel syndrome
- PTSD: post-traumatic stress disorder
- RA: rheumatoid arthritis
- M79.7: ICD-10 code for fibromyalgia
- COPC: chronic overlapping pain conditions
