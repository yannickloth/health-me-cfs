#import "../../../../../shared/environments.typ": *

===== Secondary Measures

-----*Gut microbiome.*
- Stool sample collection: OMNIGene-GUT or DNA/RNA Shield collection kit. Single sample per participant (morning void, home collection, shipped at ambient temperature within 48 hours).
- Sequencing: Shotgun metagenomics (Illumina NovaSeq, ≥10M paired-end reads per sample). 16S rRNA gene sequencing (V3--V4 region) as backup/validation.
- Bioinformatic pipeline: KneadData (quality control, host decontamination) → MetaPhlAn 4 (taxonomic profiling) → HUMAnN 3 (functional pathway profiling).
- Primary metrics: α-diversity (Shannon index, Chao1, observed species), β-diversity (Bray-Curtis dissimilarity, weighted/unweighted UniFrac), differentially abundant species (ALDEx2, MaAsLin 2 with within-pair blocking).
- Functional analysis: KEGG modules, CAZy (carbohydrate-active enzymes), short-chain fatty acid synthesis pathways (butyrate, propionate, acetate).

-----*Lytic-to-Structural IgG Ratio (LSR).*
- Primary ratio: anti-BZLF1 IgG ÷ anti-VCA-p18 IgG, quantified by ELISA with standard curves (not seroprevalence titres). See @sec:lsr-biomarker-validation-study for full assay methodology.
- Secondary: anti-EA-D IgG, anti-EBNA-1 IgG, avidity (urea 8M wash ELISA for anti-BZLF1 and anti-VCA-p18). Avidity index $<$0.4 = low (recent primary infection or recent ALR with low-affinity SLPB output); 0.4--0.6 = intermediate; $>$0.6 = high (LLPC-derived, remote infection).
- Poly-herpesvirus extension (optional): anti-HHV-6 U45 dUTPase IgG, anti-CMV gB IgG, anti-VZV gE IgG.
- Twin-pair analysis: within-pair LSR difference (affected -- unaffected). One-sample paired t-test comparing mean within-pair difference to zero. Also compare: LSR in affected twins vs healthy reference pairs; LSR in unaffected twins vs healthy reference pairs (tests whether unaffected co-twins carry subclinical LSR elevation).

-----*Clinical phenotyping (both twins, identical protocol).*
- ME/CFS diagnostic: IOM 2015 criteria questionnaire, DSQ-PEM (PEM severity and frequency), DePaul Symptom Questionnaire
- Fatigue severity: Fatigue Severity Scale (FSS), Multidimensional Fatigue Inventory (MFI-20)
- Physical function: SF-36 physical function subscale, 6-minute walk test (if tolerated)
- Cognitive function: Symbol Digit Modalities Test, Trail Making Test A and B
- Apathy and motivation: Apathy Evaluation Scale (AES), Effort Expenditure for Rewards Task (EEfRT) — maps to ventral striatal dopaminergic function (DAT and VMAT2) @Treadway2012effortbaseddecisionmaking
- Motor function: Finger Tapping Test (maps to dorsal putamen VMAT2)
- Sleep: Pittsburgh Sleep Quality Index (PSQI), actigraphy (7 days pre-imaging)
- Pain: Brief Pain Inventory (BPI)
- Autonomic: COMPASS-31, 10-minute stand test (heart rate and blood pressure at supine, 1, 2, 5, 10 min)

-----*Blood biomarkers (exploratory).*
- Inflammatory: hs-CRP, IL-6, TNF-α, IL-1β
- Neurofilament light chain (NfL, serum) — marker of axonal injury; elevated in long COVID with cognitive impairment
- Epstein-Barr virus qPCR (plasma) — correlation with LSR and with VMAT2 binding (tests viral reactivation → striatal pathology pathway)
- TSPO rs6971 genotyping (if TSPO PET substudy is performed)
- Metabotropic: tryptophan, kynurenine, kynurenic acid, quinolinic acid (kynurenine pathway — glial activation marker, links microbiome to striatum)

-----*Diet and lifestyle covariates (both twins).*
- 3-day food diary with nutritional analysis
- International Physical Activity Questionnaire (IPAQ)
- Current medications and supplements (full documentation)
- Smoking, alcohol, and substance use history
- Menstrual cycle phase at time of imaging (female participants)
