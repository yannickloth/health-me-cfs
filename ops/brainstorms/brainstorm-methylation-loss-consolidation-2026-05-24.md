# Brainstorm: ME/CFS Epigenetic Consolidation as Methylation Loss (Not Gain)

**Date:** 2026-05-24
**Topic:** Reframing ME/CFS epigenetic consolidation (calM) as loss of DNA methylation rather than gain
**Context:** Current paper models consolidation as DNMT3A/3B-driven methylation gain silencing healthy genes; evidence suggests dominant signal is hypomethylation at PTPRN2, pericentromeric satellite repeats, and global methylation loss

---

## Summary Ranking

| Rank | Category | Idea | Certainty | Tier |
|------|----------|------|-----------|------|
| 1 | Novel hypotheses | 1.1 Methylation erosion consolidation threshold | 0.65 | 1 |
| 2 | Novel hypotheses | 1.3 PTPRN2 hypomethylation as consolidation marker | 0.60 | 1 |
| 3 | Diagnostic/biomarker | 9.1 Consolidation score tracks hypomethylation sites | 0.58 | 1 |

---

## 1. Novel Hypotheses

### 1.1 Methylation Erosion Consolidation Threshold
**Mechanistic rationale:** Epigenetic consolidation in ME/CFS is not about adding methyl groups to silence genes, but about losing methylation at a critical set of regulatory loci that controls immune/inflammatory gene repression. Once a threshold proportion (~30-40%) of CpG sites across this loci-set lose methylation, the chromatin state "relaxes" irreversibly—the methylation pattern cannot be restored because the DNMT machinery has lost its "landing pad" (pre-existing methyl-CpG binding proteins like MeCP2 that recruit DNMTs to maintain methylation). The disease persists because genes that should be OFF (immune activation programs, cytokine genes, retrotransposons) are now permanently ON.

**Evidence link:** PTPRN2 hypomethylation in ME/CFS (Chalder/Moreau 2026) correlates with brain fog, word-finding, respiratory symptoms in males—directly linking hypomethylation to core ME/CFS phenotypes. Pericentromeric hypomethylation → HSAT2 satellite repeat derepression → immune exhaustion (speculation in ch12, ch14d) provides mechanistic chain from methylation loss to immune pathology. Global methylation loss documented across multiple EWAS (de Vega 2014, Trivedi 2018, Helliwell 2020) supports widespread erosion. Methylation maintenance requires pre-existing methyl-CpG binding proteins (MeCP2, MBD proteins) that recruit DNMTs—once methylation falls below threshold, the self-reinforcing maintenance loop breaks (established methylation biology).

**Certainty:** 0.65 — Direct ME/CFS hypomethylation evidence strong (PTPRN2, global EWAS); threshold mechanism from established methylation maintenance biology; ME/CFS-specific loss-of-maintenance evidence preliminary.

**Falsifiable prediction:** In sorted immune cell subsets from ME/CFS patients vs controls, (a) total methylated CpG count will be lower by ≥15% in patients; (b) the proportion of CpG sites with <30% methylation will be higher; (c) MeCP2/MBD binding (ChIP-seq) will be reduced at formerly methylated sites; (d) DNMT3A recruitment to demethylated sites will be impaired (DNMT3A ChIP shows reduced occupancy). Time-to-recovery after acute demethylation insult (in vitro) will be longer in ME/CFS patient cells (>72h vs <24h in controls).

**Tier:** 1 (core)

---

### 1.2 Passive Demethylation Reversal is Actually Active Methylation Restoration
**Mechanistic rationale:** The current model's "passive demethylation" (TET-mediated, 18-24 months) is mischaracterized. What actually reverses consolidation is active remethylation—restoring methylation at lost loci—which is slow because DNMT3A/3B require specific chromatin contexts (H3K4me0, H3K36me3) and cofactors (SAM, methyl-folate) that are depleted in ME/CFS. The 18-24 month timescale reflects the rate at which methyl donor pools can be replenished and DNMT enzymes can be recruited to demethylated sites, not passive dilution through cell division.

**Evidence link:** DNMT3A/B are de novo methyltransferases that add methyl groups to unmethylated CpG sites (established). Their activity requires SAM as methyl donor (established). ME/CFS patients show impaired methylation cycle (MTHFR variants, elevated homocysteine, B12 deficiency patterns) — depleting SAM (Regland 1997, ch12). Folate cycle impairment reduces H3K9me3 at pericentromeric loci, permitting satellite repeat transcription (Zhu 2014) — folate deficiency blocks DNMT cofactor supply. TET enzymes are passive demethylases (established) — they remove methylation, not restore it.

**Certainty:** 0.55 — DNMT/SAM biology established; ME/CFS methylation cycle impairment documented; 18-24 month timescale interpretation as "active remethylation" is inference.

**Falsifiable prediction:** In vitro treatment of ME/CFS patient PBMCs with SAMe (100 µM) + methyl-folate (10 µM) will increase methylation at hypomethylated loci (bisulfite sequencing) within 72h, without affecting cell division rate. Blocking DNMT3A/B with siRNA will prevent methylation restoration despite SAM supplementation. TET inhibition (Bobcat339) will not accelerate consolidation reversal.

**Tier:** 1 (core)

---

### 1.3 PTPRN2 Hypomethylation as Consolidation Marker
**Mechanistic rationale:** PTPRN2 (protein tyrosine phosphatase receptor type N2) hypomethylation is the early, high-specificity marker of consolidation. This gene encodes a receptor-type phosphatase involved in neuronal signaling and immune regulation. When hypomethylated, it becomes constitutively active, dysregulating calcium signaling, cytokine receptor desensitization, and synaptic plasticity—directly explaining brain fog, word-finding difficulties, and respiratory symptoms in males (Chalder/Moreau 2026). Once PTPRN2 methylation drops below a critical threshold (~25% average methylation), downstream immune/inflammatory pathways lose a key negative feedback brake, and the disease state self-perpetuates even if other methylation sites partially recover.

**Evidence link:** PTPRN2 hypomethylation specifically associated with brain fog, word-finding difficulties, respiratory symptoms in ME/CFS males (Chalder/Moreau 2026) — direct clinical correlation. PTPRN2 is a receptor tyrosine phosphatase that regulates immune signaling pathways (established biology). Loss of negative feedback phosphatases leads to sustained immune activation (established).

**Certainty:** 0.60 — Direct ME/CFS clinical correlation; mechanistic chain from phosphatase loss to immune dysregulation established; longitudinal data needed to confirm consolidation marker role.

**Falsifiable prediction:** Longitudinal cohort (n=100 ME/CFS, 50 controls, measured every 3 months for 2 years): PTPRN2 methylation will drop in patients approaching consolidation (defined by persistent symptoms ≥6 months). Patients who recover (symptom-free ≥3 months) will show PTPRN2 methylation restoration (>35%). Baseline PTPRN2 methylation <25% will predict non-recovery (AUROC > 0.75) independent of disease duration.

**Tier:** 1 (core)

---

### 1.4 Pericentromeric Satellite Repeat Derepression as Consolidation Driver
**Mechanistic rationale:** The primary consolidation event is pericentromeric hypomethylation at chromosomes 2p11.2 and 4p11, derepressing HSAT2 satellite repeats. Once HSAT2 RNA is transcribed, it triggers a cascade: exosomal packaging → MDSC expansion → NK suppression → T-cell exhaustion → immune exhaustion phenotype. This cascade is self-perpetuating because HSAT2-containing EVs spread the signal to new cells. The "consolidation" is the transition from transient viral-induced HSAT2 expression (acute) to chronic, EV-driven propagation (consolidated).

**Evidence link:** ME/CFS shows widespread DNA methylation alterations; pericentromeric loci hypomethylated → HSAT2 chronically expressed (speculation in ch14d). Folate-cycle impairment reduces H3K9me3 at pericentromeric loci (Zhu 2014). HSAT2 exosome transfer drives MDSC expansion in cancer (Evdokimova 2019). MDSC-mediated NK suppression established (Iu 2024 T-cell exhaustion, ch7).

**Certainty:** 0.50 — HSAT2 exosome mechanism established in cancer; ME/CFS hypomethylation documented; causal chain in ME/CFS is speculation.

**Falsifiable prediction:** In ME/CFS plasma EVs: (a) HSAT2 RNA elevated vs controls (TRAP-ddPCR); (b) HSAT2 levels correlate with MDSC frequency (CD33+HLA-DR-) and NK cytotoxicity loss; (c) DNMT3A activator treatment increases HSAT2 promoter methylation and reduces HSAT2 RNA in patient cells; (d) EV depletion from patient plasma abolishes MDSC-inducing activity in vitro.

**Tier:** 1 (core)

---

### 1.5 Global Methylation Loss Drives Immunosenescence Phenotype
**Mechanistic rationale:** Global methylation loss across the genome causes premature immunosenescence in ME/CFS. Hypomethylation at gene bodies and intergenic regions leads to: (a) retrotransposon activation (LINE-1, HSAT2) → genomic instability → cellular senescence; (b) loss of repression at senescence-associated secretory phenotype (SASP) genes → chronic inflammation; (c) epigenetic clock acceleration (GrimAge +3-8 years). The "consolidated" ME/CFS state is an accelerated aging phenotype driven by methylation erosion, not a disease-specific epigenetic program.

**Evidence link:** Global methylation loss documented in ME/CFS EWAS (de Vega 2014, Trivedi 2018, Helliwell 2020). LINE-1 derepression tracks with epigenetic clock acceleration (De Cecco 2019). ME/CFS shows premature immunosenescence (Luo 2025, Xu 2026). Epigenetic age acceleration in ME/CFS (3-8 year GrimAge, ch14d). Retrotransposon activation and immunosenescence linked in aging biology (established).

**Certainty:** 0.55 — Global hypomethylation in ME/CFS documented; immunosenescence phenotype documented; causal link in ME/CFS is inference.

**Falsifiable prediction:** ME/CFS patients (n=50) vs age-matched controls will show: (a) LINE-1 hypomethylation (pyrosequencing); (b) increased senescent cell burden (p16INK4a+ cells, β-galactosidase); (c) elevated SASP cytokines (IL-6, IL-8, MCP-1); (d) GrimAge acceleration 3-8 years; (e) LINE-1 methylation will correlate with senescent cell burden (ρ > 0.4). DNMT3A activation will reduce senescent cell burden in patient cells.

**Tier:** 2 (supporting)

---

### 1.6 Sex-Specific Methylation Erosion Pattern Explains Male/Female Phenotype Differences
**Mechanistic rationale:** Male ME/CFS patients show more rapid consolidation and different symptom patterns (respiratory symptoms, word-finding difficulties) because sex hormones interact with methylation maintenance machinery. Estrogen upregulates DNMT3A expression and enhances methylation maintenance (established). Testosterone has weaker or opposite effects. Under inflammatory stress, females retain methylation at key loci (PTPRN2, immune gene promoters) longer due to estrogen-DNMT3A support, delaying consolidation and allowing partial recovery. Males lose methylation faster, consolidating earlier, explaining higher severe-chronicity proportion in males.

**Evidence link:** PTPRN2 hypomethylation specifically associated with brain fog, word-finding, respiratory symptoms in MALES (Chalder/Moreau 2026). Estrogen upregulates DNMT3A expression and enhances methylation maintenance (established hormone-epigenetic biology). ME/CFS shows sex differences in severity and phenotype (established). Female ME/CFS patients have higher recovery rates in some cohorts (needs verification).

**Certainty:** 0.50 — Direct ME/CFS male-specific hypomethylation-phenotype correlation; estrogen-DNMT3A biology established; ME/CFS sex differences documented; causal inference needs testing.

**Falsifiable prediction:** Sex-stratified longitudinal cohort: (a) Baseline PTPRN2 methylation lower in male ME/CFS patients than females; (b) Rate of methylation loss at PTPRN2 and immune gene promoters higher in males; (c) Time-to-consolidation (persistent ≥6 month symptoms) shorter in males (median 3 months vs 6 months); (d) Estrogen supplementation in male patients will slow methylation loss and delay consolidation; (e) DNMT3A expression higher in female PBMCs (qPCR, Western blot).

**Tier:** 2 (supporting)

---

### 1.7 Methylation Maintenance Enzyme Deficiency as Genetic Predisposition
**Mechanistic rationale:** ME/CFS susceptibility is driven by genetic variants in methylation maintenance genes (DNMT3A, DNMT3B, MBD proteins, MeCP2). These variants reduce the efficiency of methylation restoration after inflammatory insults. Under normal conditions, compensation by other enzymes maintains methylation. Under ME/CFS-triggering insults (viral infection, severe stress, gut parasite), the maintenance machinery is overwhelmed, methylation erosion proceeds faster than restoration, and consolidation occurs. Individuals with normal methylation maintenance genetics recover fully; those with predisposing variants consolidate.

**Evidence link:** ME/CFS shows familial clustering and genetic predisposition (established). DNMT3A mutations cause other epigenetic disorders (Tatton-Brown-Rahman syndrome). MBD protein mutations cause Rett syndrome (MeCP2). No ME/CFS-specific methylation maintenance gene variants identified yet (gap). MTHFR variants impair methyl donor supply (Regland 1997) — upstream of DNMTs.

**Certainty:** 0.35 — ME/CFS genetic predisposition established; methylation maintenance gene biology established; ME/CFS-specific variants untested.

**Falsifiable prediction:** GWAS of ME/CFS (n=5000) will identify enrichment for rare variants in DNMT3A, DNMT3B, MBD1-4, MeCP2, and SAM synthetase genes. Patients with these variants will show: (a) baseline global hypomethylation (vs matched controls without variants); (b) faster methylation loss after inflammatory challenge (in vitro LPS + cytokine treatment); (c) lower consolidation threshold (symptom persistence after milder triggers).

**Tier:** 3 (speculative)

---

## 2. Research Directions

### 2.1 Longitudinal Methylation Array Tracking Gain vs Loss Sites
**Description:** Prospectively follow patients from acute onset (within 1 month of trigger) through consolidation (≥6 months) to recovery/non-recovery (≥24 months). Use genome-wide methylation arrays (Illumina EPIC 850k) every 3 months. Classify CpG sites into: (a) hypermethylated in patients vs controls; (b) hypomethylated in patients vs controls; (c) unchanged. Track trajectories per site. Identify early markers of consolidation (sites that show rapid hypomethylation in patients who become chronic) vs recovery markers (sites that remethylate in recovered patients).

**Evidence link:** EWAS studies are cross-sectional (de Vega 2014, Trivedi 2018, Helliwell 2020); longitudinal data needed to confirm consolidation mechanism. Duscha 2022 showed dynamic methylome changes during relapse-recovery cycles — partial longitudinal precedent.

**Certainty:** 0.50 — Cross-sectional hypomethylation evidence strong; longitudinal gaps identified.

**Falsifiable prediction:** Patients who consolidate (non-recovered at 24 months) will show: (a) progressive hypomethylation at ≥2000 CpG sites (trend test p<0.001); (b) early hypomethylation at PTPRN2 and pericentromeric loci within 3 months of onset; (c) no significant hypermethylation trend. Recovered patients will show: (a) transient hypomethylation during acute phase that normalizes by 12 months; (b) PTPRN2 methylation >30% at baseline (protective factor).

**Tier:** 1 (core)

---

### 2.2 Bisulfite Sequencing of Sorted Immune Cell Subsets
**Description:** Sort peripheral blood mononuclear cells into subsets: CD4+ T cells, CD8+ T cells, NK cells, B cells, monocytes (classical vs non-classical), MDSCs (CD33+HLA-DR-). Perform bisulfite sequencing (WGBS or targeted bisulfite-seq of candidate loci: PTPRN2, pericentromeric repeats, immune gene promoters, cytokine genes). Compare methylation patterns between cell types, between patients and controls, and between consolidated vs recovered patients. Identify cell-type-specific consolidation signatures.

**Evidence link:** Iu 2024 showed CD8+ T-cell exhaustion with epigenetic TCF7 closure — cell-type-specific change precedent. Bulk EWAS cannot distinguish cell-type-specific methylation changes vs cell composition shifts.

**Certainty:** 0.55 — Cell-type-specific methylation changes established in other diseases; ME/CFS immune subset dysfunction documented.

**Falsifiable prediction:** Consolidated ME/CFS patients will show: (a) NK cells: hypomethylation at NK receptor genes (NCR1, KLRD1) explaining dysfunction; (b) CD8+ T cells: hypomethylation at exhaustion genes (PDCD1, HAVCR2, LAG3) consistent with "permanently ON" exhaustion; (c) MDSCs: hypomethylation at arginase-1, IDO1, IL-10 promoters; (d) PTPRN2 hypomethylation most severe in monocytes and T cells.

**Tier:** 1 (core)

---

### 2.3 Methylation Patterns in Recovered vs Non-Recovered Patients
**Description:** Cross-sectional comparison of three groups: (a) ME/CFS recovered (symptom-free ≥12 months, n=50); (b) ME/CFS non-recovered (persistent ≥24 months, n=100); (c) healthy controls (n=100). Methylation array + targeted bisulfite-seq. Identify methylation signatures that differentiate recovered from non-recovered. Test whether recovery is associated with restoration of methylation at key loci or is methylation-independent.

**Evidence link:** No studies have specifically compared recovered vs non-recovered ME/CFS methylation patterns. Recovery mechanisms unknown.

**Certainty:** 0.45 — Recovery vs non-recovery distinction clinically meaningful; methylation recovery hypothesis untested.

**Falsifiable prediction:** Recovered patients will show: (a) PTPRN2 methylation >35% (similar to controls); (b) global methylation within 5% of control levels; (c) pericentromeric methylation restored (HSAT2 suppressed). Non-recovered patients will show: (a) PTPRN2 methylation <25%; (b) global hypomethylation ≥15% vs controls; (c) pericentromeric hypomethylation (HSAT2 active). If recovery is methylation-independent, all groups will show similar methylation patterns.

**Tier:** 1 (core)

---

### 2.4 Tissue-Specific vs Blood Methylation Correlation
**Description:** Compare methylation patterns in blood vs accessible tissues (nasal epithelium, skin biopsy, skeletal muscle biopsy) in ME/CFS patients (n=30) and controls (n=20). Test whether blood methylation signatures (PTPRN2 hypomethylation, pericentromeric hypomethylation) reflect tissue-level changes or are blood-specific. This determines whether blood biomarkers generalize to the whole organism.

**Evidence link:** Methylation patterns are tissue-specific (established). Blood is current ME/CFS biomarker source; tissue-level changes unknown. CNS methylation inaccessible (requires post-mortem).

**Certainty:** 0.40 — Blood-tissue methylation correlation established generally; ME/CFS-specific correlation unknown.

**Falsifiable prediction:** PTPRN2 and pericentromeric hypomethylation will correlate (ρ > 0.5) across blood, nasal epithelium, and skeletal muscle in the same ME/CFS patient. Tissue-specific hypomethylation sites will also exist (unique to each tissue). Controls will show no significant between-tissue methylation divergence.

**Tier:** 2 (supporting)

---

### 2.5 Methylation Maintenance Enzyme Activity Assays
**Description:** Measure DNMT3A, DNMT3B, and DNMT1 enzymatic activity in PBMCs from ME/CFS patients (n=50) and controls (n=30). Use in vitro methylation assays with unmethylated DNA substrates and radiolabeled SAM or LC-MS-based quantification of methyltransferase activity. Correlate enzyme activity with methylation status (global, PTPRN2, pericentromeric) and disease severity.

**Evidence link:** DNMT enzyme activity assays standard in cancer research. No ME/CFS DNMT activity data exists. If consolidation is about methylation loss, DNMT activity should be impaired.

**Certainty:** 0.35 — DNMT activity assays established; ME/CFS DNMT function unknown.

**Falsifiable prediction:** Consolidated ME/CFS patients will show: (a) reduced DNMT3A activity (≥30% vs controls); (b) reduced DNMT3B activity (≥20% vs controls); (c) DNMT1 activity normal (maintenance methylation intact); (d) DNMT3A activity will correlate with PTPRN2 methylation (ρ > 0.4). Recovered patients will show DNMT3A/3B activity similar to controls.

**Tier:** 2 (supporting)

---

### 2.6 Methyl Donor Pool Quantification and Turnover
**Description:** Measure SAM, SAH, homocysteine, methyl-folate, methyl-B12, choline, betaine in plasma and intracellularly in PBMCs. Calculate SAM:SAH ratio (methylation capacity index). Use stable isotope tracers (13C-methionine) to measure methyl donor turnover rates. Compare ME/CFS patients (n=50) to controls (n=30). Test whether methyl donor depletion drives methylation loss.

**Evidence link:** MTHFR variants and elevated homocysteine in ME/CFS (Regland 1997). Methylation cycle depletion linked to global hypomethylation in other diseases (established). SAM:SAH ratio predicts methylation capacity (established).

**Certainty:** 0.45 — MTHFR data in ME/CFS; methyl donor quantification standard; causal link in ME/CFS untested.

**Falsifiable prediction:** ME/CFS patients will show: (a) reduced plasma SAM:SAH ratio (≥25% lower); (b) reduced intracellular SAM; (c) elevated SAH; (d) slower methyl donor turnover (tracer kinetics). Supplementation with SAMe, methyl-folate, methyl-B12 will restore SAM:SAH ratio and increase methylation at hypomethylated loci in patient cells.

**Tier:** 2 (supporting)

---

### 2.7 Epigenetic Clock Trajectories as Consolidation Marker
**Description:** Measure epigenetic age (GrimAge, DunedinPACE, PhenoAge) in ME/CFS patients at onset, 3, 6, 12, 24 months. Compare to healthy controls measured at same intervals. Test whether epigenetic age acceleration plateaus or progresses. Correlate epigenetic age acceleration with symptom severity and methylation at specific loci (PTPRN2, pericentromeric).

**Evidence link:** Preliminary ME/CFS data show 3-8 year GrimAge acceleration (ch14d). Epigenetic clocks track with methylation loss (De Cecco 2019 LINE-1 link). Longitudinal trajectories unknown.

**Certainty:** 0.50 — Preliminary epigenetic age acceleration data in ME/CFS; longitudinal trajectories unknown.

**Falsifiable prediction:** ME/CFS patients will show: (a) epigenetic age acceleration at onset (GrimAge +5 years vs chronological age); (b) progressive acceleration for 6 months, then plateau (stable acceleration 3-8 years); (c) recovered patients will show acceleration reversal toward chronological age; (d) epigenetic age acceleration will correlate with pericentromeric hypomethylation (ρ > 0.4).

**Tier:** 2 (supporting)

---

## 3. Drug/Medication Ideas

### 3.1 DNMT3A Activators (RG-108 Derivatives) for Methylation Restoration
**Mechanistic rationale:** DNMT3A activators (RG-108 and derivatives) enhance de novo methylation at hypomethylated loci. In methylation loss consolidation, restoring methylation at PTPRN2, pericentromeric repeats, and immune gene promoters should reverse the disease state. Unlike demethylating agents (which would worsen methylation loss), DNMT3A activation directly addresses the pathogenic mechanism.

**Evidence link:** RG-108 is a DNMT activator (not inhibitor) that enhances methylation at unmethylated CpG sites (established). DNMT3A overexpression silences repetitive elements (established). HSAT2 methylation lock speculation (ch14d) proposes DNMT3A activators as therapeutic.

**Certainty:** 0.45 — RG-108 biology established; HSAT2 methylation in ME/CFS untested; oncogenic risk concerns.

**Falsifiable prediction:** In vitro: RG-108 treatment (10 µM, 72h) of ME/CFS PBMCs will increase methylation at PTPRN2 (bisulfite-seq) and pericentromeric loci (pyrosequencing), reduce HSAT2 RNA (qRT-PCR), and improve NK cytotoxicity. In vivo: Small open-label trial (n=15) with RG-108 derivative at safe dose for 8 weeks will show PTPRN2 methylation increase ≥20%, symptom improvement (SF-36) d≥0.8.

**Tier:** 1 (core)

---

### 3.2 S-Adenosylmethionine (SAMe) High-Dose Protocol
**Mechanistic rationale:** SAMe is the universal methyl donor for DNMT enzymes. High-dose SAMe (1600-3200 mg/day) saturates the methylation pool, compensating for impaired methylation cycle and enabling DNMT3A/3B to remethylate hypomethylated loci. Unlike standard psychiatric doses (400-800 mg), ME/CFS requires high doses to overcome systemic depletion and achieve CNS penetration.

**Evidence link:** SAMe supplementation trials in ME/CFS show mixed results (some benefit, some null) — may reflect suboptimal dosing. SAMe increases methylation in other conditions (depression, liver disease, cholestasis). SAMe crosses blood-brain barrier (established). MTHFR variants impair endogenous SAM synthesis (Regland 1997).

**Certainty:** 0.50 — SAMe biology established; ME/CFS trials mixed; dosing hypothesis untested.

**Falsifiable prediction:** RCT (n=60): SAMe 3200 mg/day vs placebo for 12 weeks. Primary outcome: PTPRN2 methylation increase (bisulfite-seq). Secondary outcomes: symptom improvement (SF-36, fatigue scale), epigenetic age acceleration reduction. Responders (≥30% methylation increase) will show symptom improvement; non-responders may have irreversible chromatin changes.

**Tier:** 1 (core)

---

### 3.3 Methyl-Folate + Methyl-B12 Combination
**Mechanistic rationale:** Methyl-folate and methyl-B12 are cofactors in the methylation cycle. Methyl-folate provides methyl groups for homocysteine remethylation to methionine (SAM precursor). Methyl-B12 (methylcobalamin) is the cofactor for methionine synthase. Combination therapy ensures both substrate and cofactor are available for SAM synthesis, replenishing the methyl donor pool and enabling DNMT-mediated methylation restoration.

**Evidence link:** MTHFR variants impair methyl-folate utilization (established). B12 deficiency patterns in ME/CFS (Regland 1997). Methyl-folate + methyl-B12 combination reduces homocysteine and increases methylation in homocystinuria (established). ME/CFS-specific efficacy untested.

**Certainty:** 0.55 — Methylation cycle biology established; ME/CFS B12/folate patterns documented; efficacy untested.

**Falsifiable prediction:** RCT (n=80): methyl-folate 15 mg/day + methyl-B12 2000 µg/day vs placebo for 16 weeks. Primary outcome: SAM:SAH ratio increase. Secondary outcomes: PTPRN2 methylation, symptom scores. Responders will show SAM:SAH ratio normalization and methylation restoration; non-responders may have DNMT enzyme defects.

**Tier:** 1 (core)

---

### 3.4 Betaine (Trimethylglycine) as Alternative Methyl Donor
**Mechanistic rationale:** Betaine is an alternative methyl donor for homocysteine remethylation via BHMT (betaine-homocysteine methyltransferase), independent of folate cycle. In ME/CFS patients with folate cycle impairment (MTHFR variants), betaine can bypass the folate block and replenish methionine/SAM pools. Betaine also acts as an osmolyte, stabilizing cells under stress.

**Evidence link:** Betaine effectively remethylates homocysteine in homocystinuria and cardiovascular disease (established). BHMT pathway independent of folate cycle (established). No ME/CFS betaine trials.

**Certainty:** 0.45 — Betaine biology established; ME/CFS-specific application untested.

**Falsifiable prediction:** RCT (n=60): betaine 6 g/day vs placebo for 12 weeks. Primary outcome: homocysteine reduction. Secondary outcomes: SAM:SAH ratio, PTPRN2 methylation, symptom scores. Betaine will be particularly effective in patients with MTHFR variants (subgroup analysis).

**Tier:** 2 (supporting)

---

### 3.5 Choline Supplementation to Boost Methyl Donor Availability
**Mechanistic rationale:** Choline is oxidized to betaine in the liver, providing substrate for BHMT-mediated homocysteine remethylation. High-dose choline (1-2 g/day) increases betaine and methionine pools, supporting SAM synthesis. Choline deficiency exacerbates global hypomethylation (established in animal models). ME/CFS patients with methylation depletion may benefit from choline's dual role: methyl donor precursor and phosphatidylcholine synthesis (membrane integrity).

**Evidence link:** Choline deficiency causes global hypomethylation in rodents (established). Choline supplementation increases betaine and SAM in humans (established). No ME/CFS choline trials.

**Certainty:** 0.40 — Choline biology established; ME/CFS-specific application untested.

**Falsifiable prediction:** RCT (n=60): choline 2 g/day vs placebo for 12 weeks. Primary outcome: plasma choline and betaine levels. Secondary outcomes: SAM:SAH ratio, methylation markers, symptom scores. Responders will show increased betaine and methylation restoration.

**Tier:** 2 (supporting)

---

### 3.6 TET Inhibitors to Prevent Methylation Loss
**Mechanistic rationale:** TET enzymes catalyze demethylation (5mC → 5hmC). If methylation loss is pathogenic, inhibiting TET enzymes should slow or prevent further methylation erosion during the pre-consolidation phase. Bobcat339 is a selective TET inhibitor. In early ME/CFS (within 3 months of onset), TET inhibition could prevent consolidation by maintaining methylation at vulnerable loci (PTPRN2, pericentromeric repeats).

**Evidence link:** TET enzymes are demethylases (established). Bobcat339 inhibits TET in vitro and in vivo (established). Methylation erosion precedes consolidation (hypothesis). No ME/CFS TET data.

**Certainty:** 0.35 — TET biology established; ME/CFS methylation erosion mechanism untested.

**Falsifiable prediction:** Early-intervention trial (n=40, within 3 months of onset): Bobcat339 vs placebo for 8 weeks. Primary outcome: methylation preservation (no loss at PTPRN2 and pericentromeric loci). Secondary outcomes: symptom progression. TET inhibition will prevent consolidation (symptom-free at 6 months vs 50% in placebo).

**Tier:** 3 (speculative)

---

### 3.7 Histone Methyltransferase Enhancers to Compensate for DNA Methylation Loss
**Mechanistic rationale:** Histone modifications (H3K9me3, H3K27me3) are alternative gene-silencing mechanisms. If DNA methylation is irreversibly lost at key loci, enhancing histone methylation could restore repression. EZH2 enhancers (activators of PRC2) increase H3K27me3. SUV39H1 enhancers increase H3K9me3. These modifications could compensate for DNA methylation loss, silencing retrotransposons and inflammatory genes.

**Evidence link:** H3K9me3 silences pericentromeric heterochromatin (established). Folate cycle impairment reduces H3K9me3 at pericentromeric loci (Zhu 2014). EZH2 and SUV39H1 are histone methyltransferases (established). Histone methylation compensates for DNA methylation loss in other contexts (established).

**Certainty:** 0.30 — Histone biology established; ME/CFS-specific compensation mechanism untested.

**Falsifiable prediction:** In vitro: EZH2 activator treatment of ME/CFS cells will increase H3K27me3 at hypomethylated loci (ChIP-seq) and reduce gene expression (RNA-seq). In vivo: EZH2 activator trial (n=20, 8 weeks) will show symptom improvement correlated with H3K27me3 increases.

**Tier:** 3 (speculative)

---

## 4. Supplement/Nutraceutical Ideas

### 4.1 High-Dose Folinic Acid + Methyl-B12 Synergy
**Mechanistic rationale:** Folinic acid (5-formyltetrahydrofolate) bypasses MTHFR and directly enters the folate cycle, providing methyl groups. Combined with methyl-B12, the entire methylation cycle is supported at the folate and B12 steps. This addresses both substrate and cofactor needs for SAM synthesis and subsequent DNMT-mediated methylation restoration.

**Evidence link:** Folinic acid is more bioavailable than folic acid (established). MTHFR variants impair folic acid metabolism (established). B12 deficiency patterns in ME/CFS (Regland 1997). Synergistic effect of folinic acid + B12 in homocystinuria (established).

**Certainty:** 0.50 — Folate/B12 biology established; ME/CFS-specific synergy untested.

**Falsifiable prediction:** RCT (n=80): folinic acid 15 mg/day + methyl-B12 2000 µg/day vs placebo for 16 weeks. Primary outcome: SAM:SAH ratio. Secondary outcomes: methylation markers, symptom scores. Synergy will be evident by greater SAM:SAH increase than either nutrient alone.

**Tier:** 1 (core)

---

### 4.2 Trimethylglycine (Betaine) from Dietary Sources
**Mechanistic rationale:** Betaine-rich foods (beets, spinach, quinoa, whole grains) provide natural betaine as alternative methyl donor. Dietary betaine supplementation (3-6 g/day from food or supplements) increases plasma betaine and supports BHMT-mediated homocysteine remethylation, bypassing folate cycle defects. This is a nutraceutical alternative to pharmaceutical betaine.

**Evidence link:** Dietary betaine increases plasma betaine (established). Betaine reduces homocysteine in humans (established). Food sources provide natural cofactors (folate, B12) that enhance absorption.

**Certainty:** 0.45 — Betaine biology established; ME/CFS dietary efficacy untested.

**Falsifiable prediction:** Dietary intervention trial (n=60): betaine-rich diet (3 g/day from food) vs placebo diet for 12 weeks. Primary outcome: plasma betaine increase. Secondary outcomes: methylation markers, symptom scores. Dietary betaine will show similar efficacy to supplemental betaine.

**Tier:** 2 (supporting)

---

### 4.3 Spermidine to Enhance Autophagy and Epigenetic Reset
**Mechanistic rationale:** Spermidine induces autophagy, which can remove senescent cells and reset epigenetic states. Autophagy-dependent removal of cells with irreversibly demethylated chromatin could be replaced by newly divided cells with normal methylation. Spermidine also directly inhibits acetyltransferases, shifting histone modification balance toward repressive marks.

**Evidence link:** Spermidine induces autophagy (established). Autophagy removes senescent cells (established). Spermidine extends lifespan in model organisms (established). Spermidine inhibits histone acetyltransferases (established). No ME/CFS spermidine data.

**Certainty:** 0.35 — Spermidine biology established; ME/CFS epigenetic reset mechanism untested.

**Falsifiable prediction:** RCT (n=60): spermidine 3 mg/day vs placebo for 12 weeks. Primary outcome: senescent cell burden reduction (p16INK4a+). Secondary outcomes: methylation markers, symptom scores. Spermidine will reduce senescent cell burden and increase methylation at hypomethylated loci.

**Tier:** 2 (supporting)

---

### 4.4 N-Acetylcysteine (NAC) to Reduce Oxidative Stress and Preserve Methylation
**Mechanistic rationale:** Oxidative stress depletes glutathione and impairs methylation cycle enzymes (especially methionine synthase). NAC replenishes glutathione, reduces oxidative stress, and supports methylation enzyme function. By reducing oxidative damage to DNA and methylation machinery, NAC could slow methylation erosion during early ME/CFS.

**Evidence link:** NAC replenishes glutathione (established). Oxidative stress impairs methylation cycle (established). NAC improves methylation markers in other conditions (established). ME/CFS shows oxidative stress elevation (established). Mixed NAC trial results in ME/CFS.

**Certainty:** 0.40 — NAC biology established; ME/CFS mixed efficacy; methylation-specific effect untested.

**Falsifiable prediction:** RCT (n=80): NAC 1800 mg/day vs placebo for 12 weeks. Primary outcome: glutathione:GSSG ratio normalization. Secondary outcomes: methylation markers (global, PTPRN2), symptom scores. Responders will show improved glutathione ratio and methylation preservation.

**Tier:** 2 (supporting)

---

### 4.5 Riboflavin (B2) as MTHFR Cofactor
**Mechanistic rationale:** MTHFR requires riboflavin (FAD) as cofactor. Riboflavin deficiency impairs MTHFR function even with adequate folate. High-dose riboflavin (25-50 mg/day) can enhance MTHFR activity in patients with C677T variants, improving methyl-folate production and subsequent SAM synthesis. This supports methylation restoration in genetically predisposed ME/CFS patients.

**Evidence link:** Riboflavin is MTHFR cofactor (established). Riboflavin supplementation lowers homocysteine in MTHFR variant carriers (established). MTHFR variants in ME/CFS (established). No ME/CFS riboflavin-specific trials.

**Certainty:** 0.50 — Riboflavin-MTHFR biology established; ME/CFS efficacy untested.

**Falsifiable prediction:** Genotype-stratified trial (n=80): riboflavin 50 mg/day vs placebo for 12 weeks, stratified by MTHFR C677T genotype. Primary outcome: methyl-folate levels. Secondary outcomes: methylation markers, symptom scores. Benefit will be greatest in homozygous variant carriers.

**Tier:** 2 (supporting)

---

### 4.6 Zinc to Support DNMT Enzyme Function
**Mechanistic rationale:** DNMT enzymes require zinc as structural cofactor. Zinc deficiency impairs DNMT activity and causes global hypomethylation. ME/CFS patients often show zinc deficiency. High-dose zinc (30-50 mg/day) could restore DNMT activity by providing adequate zinc, enabling methylation restoration at hypomethylated loci.

**Evidence link:** Zinc is DNMT cofactor (established). Zinc deficiency causes hypomethylation (established). Zinc deficiency patterns in ME/CFS (documented). Zinc supplementation improves methylation in other conditions (established).

**Certainty:** 0.45 — Zinc-DNMT biology established; ME/CFS zinc patterns documented; efficacy untested.

**Falsifiable prediction:** RCT (n=80): zinc 50 mg/day vs placebo for 12 weeks. Primary outcome: plasma zinc normalization. Secondary outcomes: DNMT activity assay, methylation markers, symptom scores. Responders will show increased DNMT activity and methylation restoration.

**Tier:** 2 (supporting)

---

### 4.7 Curcumin to Enhance DNMT Activity via NF-κB Modulation
**Mechanistic rationale:** Curcumin modulates NF-κB signaling and upregulates DNMT1 expression in some contexts. By enhancing DNMT1 activity (maintenance methylation), curcumin could help preserve methylation at remaining methylated loci and prevent further erosion. Curcumin also has anti-inflammatory effects that reduce the methylation-eroding inflammatory signal.

**Evidence link:** Curcumin upregulates DNMT1 (established in cancer models). Curcumin inhibits NF-κB (established). Inflammation accelerates methylation loss (hypothesis). Curcumin has poor bioavailability (limitation).

**Certainty:** 0.30 — Curcumin-DNMT biology established in cancer; ME/CFS application untested.

**Falsifiable prediction:** Bioavailable curcumin formulation (Meriva) 1000 mg/day vs placebo for 12 weeks (n=60). Primary outcome: DNMT1 expression (qPCR). Secondary outcomes: methylation markers, symptom scores. Curcumin will increase DNMT1 and preserve methylation.

**Tier:** 3 (speculative)

---

## 5. Non-Pharmacological Interventions

### 5.1 Ketogenic Diet to Improve SAM:SAH Ratio
**Mechanistic rationale:** Ketogenic diet reduces carbohydrate intake, lowering insulin and IGF-1 signaling, which reduces homocysteine levels. Ketone bodies (β-hydroxybutyrate) inhibit histone deacetylases, potentially enhancing repressive histone marks that compensate for DNA methylation loss. The diet also increases polyamine metabolism, which may support methylation cycles.

**Evidence link:** Ketogenic diet reduces homocysteine (established). β-hydroxybutyrate is HDAC inhibitor (established). Ketogenic diet improves epigenetic markers in other conditions (established). No ME/CFS ketogenic diet data.

**Certainty:** 0.40 — Ketogenic diet metabolism established; ME/CFS epigenetic effect untested.

**Falsifiable prediction:** Crossover trial (n=30): 4 weeks ketogenic diet vs 4 weeks standard diet. Primary outcome: SAM:SAH ratio. Secondary outcomes: methylation markers, symptom scores. Ketogenic diet will improve SAM:SAH ratio and methylation markers.

**Tier:** 2 (supporting)

---

### 5.2 Circadian Entrainment to Enhance DNMT Rhythmic Expression
**Mechanistic rationale:** DNMT3A/3B expression follows circadian rhythms (established). ME/CFS patients show disrupted circadian patterns (sleep dysregulation, cortisol rhythm flattening). Restoring circadian entrainment (consistent sleep-wake schedule, morning light exposure, evening darkness) could normalize DNMT expression rhythms, enhancing methylation maintenance and restoration during natural methylation windows.

**Evidence link:** DNMT expression circadian (established). ME/CFS circadian disruption documented (established). Light entrainment normalizes rhythms (established). Methylation restoration benefits unknown.

**Certainty:** 0.35 — Circadian-DNMT biology established; ME/CFS application untested.

**Falsifiable prediction:** Intervention trial (n=40): circadian entrainment protocol (consistent schedule, morning light, evening darkness) vs control for 8 weeks. Primary outcome: DNMT3A rhythmicity (24h expression profile). Secondary outcomes: methylation markers, symptom scores. Entrainment will restore DNMT rhythms and improve methylation.

**Tier:** 2 (supporting)

---

### 5.3 Mindfulness-Based Stress Reduction (MBSR) to Lower Cortisol and Preserve Methylation
**Mechanistic rationale:** Chronic stress elevates cortisol, which can accelerate methylation loss through glucocorticoid receptor-mediated chromatin remodeling. MBSR reduces cortisol levels and stress reactivity. Lower cortisol exposure may slow methylation erosion at stress-sensitive loci (glucocorticoid response elements, immune gene promoters), preserving methylation during early ME/CFS.

**Evidence link:** MBSR reduces cortisol (established). Cortisol accelerates methylation changes (established). ME/CFS shows stress sensitivity (established). Methylation preservation effect unknown.

**Certainty:** 0.30 — MBSR-cortisol biology established; ME/CFS methylation effect untested.

**Falsifiable prediction:** RCT (n=80): 8-week MBSR program vs waitlist. Primary outcome: cortisol awakening response normalization. Secondary outcomes: methylation markers at glucocorticoid-responsive loci, symptom scores. MBSR will normalize cortisol and preserve methylation.

**Tier:** 3 (speculative)

---

### 5.4 Exercise Pacing to Prevent Methylation Erosion Flares
**Mechanistic rationale:** Excessive exercise (beyond energy envelope) causes transient hypomethylation at immune and inflammatory genes (Sharma 2025 epigenetic PEM). In methylation loss consolidation, these transient losses may accumulate, pushing methylation below the irreversible threshold. Careful exercise pacing (staying within energy envelope, post-exertional recovery monitoring) could prevent cumulative methylation erosion, preserving methylation above consolidation threshold.

**Evidence link:** Exercise causes transient hypomethylation (Sharma 2025). ME/CFS PEM is exercise-intolerant (established). Energy envelope pacing improves outcomes (established). Methylation erosion accumulation hypothesis.

**Certainty:** 0.35 — Exercise-methylation biology established; ME/CFS pacing effect on methylation untested.

**Falsifiable prediction:** Pacing intervention (n=40): energy envelope-guided activity vs usual activity for 12 weeks. Primary outcome: methylation preservation at exercise-sensitive loci. Secondary outcomes: symptom stability. Pacing will prevent methylation loss compared to unpaced activity.

**Tier:** 2 (supporting)

---

### 5.5 Sauna Therapy to Induce Heat Shock Response and Methylation Maintenance
**Mechanistic rationale:** Sauna (heat exposure) induces heat shock response, upregulating HSF1 and heat shock proteins. While HSF1 can activate HSAT2 (pathogenic), controlled heat exposure may also enhance protein folding and reduce ER stress, indirectly supporting methylation enzyme function. Regular sauna may have hormetic effects—mild stress that enhances cellular repair mechanisms, including methylation maintenance.

**Evidence link:** Heat shock response upregulates HSF1 (established). Sauna has hormetic effects (established). HSF1 activates HSAT2 (pathogenic) — caution needed. No ME/CFS sauna data.

**Certainty:** 0.25 — Hormesis biology established; ME/CFS application uncertain; HSAT2 risk concern.

**Falsifiable prediction:** Crossover trial (n=30): 4 weeks sauna (2x/week, 15 min at 80°C) vs 4 weeks control. Primary outcome: HSF1 activation and HSAT2 RNA. Secondary outcomes: methylation markers, symptom scores. Sauna will increase HSF1 but not HSAT2; methylation preserved.

**Tier:** 3 (speculative)

---

## 6. Combinations + Access

### 6.1 "Methylation Restoration Protocol" (Methylation Stack)
**Description:** Multi-component protocol combining: SAMe 1600 mg/day, methyl-folate 15 mg/day, methyl-B12 2000 µg/day, betaine 3 g/day, zinc 50 mg/day. 12-week intensive phase, then maintenance at lower doses. Monitoring: SAM:SAH ratio, PTPRN2 methylation, symptom scores. Access: OTC supplements except SAMe (prescription in some countries); affordable (~$100-150/month).

**Evidence link:** Individual components have mechanistic rationale (ideas 3.2, 3.3, 3.4, 4.6). Synergistic effect of combining substrate (SAMe), cofactors (B12, folate), alternative pathway (betaine), and enzyme support (zinc) should maximize methylation restoration.

**Certainty:** 0.40 — Individual component rationale; combination untested.

**Falsifiable prediction:** Open-label trial (n=30): Methylation Restoration Protocol for 12 weeks. Primary outcome: PTPRN2 methylation increase ≥30%. Secondary outcomes: global methylation, symptom improvement. Responders will show methylation restoration and symptom benefit; non-responders may have irreversible changes or DNMT defects.

**Tier:** 1 (core)

---

### 6.2 Severe/Bedbound Protocol (IV Methyl Donor Infusions)
**Description:** For bedbound patients unable to absorb oral supplements: IV SAMe 800 mg 2x/week, IV methyl-B12 5000 µg 2x/week, IV folinic acid 10 mg 2x/week for 8 weeks. Outpatient infusion center or home infusion nursing. Monitoring: methylation markers, symptom scores, SAM levels. Access: requires physician prescription, insurance coverage variable.

**Evidence link:** IV SAMe bypasses absorption issues (established). IV nutrients achieve higher plasma levels than oral (established). Severe ME/CFS patients may have impaired gut absorption (established). No ME/CFS IV data.

**Certainty:** 0.30 — IV nutrient biology established; ME/CFS efficacy untested; access limited.

**Falsifiable prediction:** Open-label trial (n=20 severe patients): IV methyl donor protocol for 8 weeks. Primary outcome: PTPRN2 methylation increase. Secondary outcomes: symptom scores, functional status. IV protocol will achieve methylation restoration in non-responders to oral therapy.

**Tier:** 2 (supporting)

---

### 6.3 Caregiver-Implementable Daily Protocol
**Description:** Simple daily regimen manageable by caregivers: methyl-B12 1000 µg sublingual, methyl-folate 5 mg sublingual, zinc 25 mg, betaine 1.5 g, folinic acid 5 mg—all OTC, low cost (~$30/month). Caregiver administers at same time daily. Symptom and side effect log. Monitoring via telehealth visits monthly. Access: high (all OTC, affordable).

**Evidence link:** Low-dose combination provides methylation support without complexity. Sublingual administration bypasses some gut absorption issues. Caregiver support improves adherence in severe illness (established).

**Certainty:** 0.35 — Low-dose rationale; efficacy untested; caregiver implementation practical.

**Falsifiable prediction:** Pragmatic trial (n=40 caregiver-supported patients): daily sublingual methyl donor protocol vs standard care for 16 weeks. Primary outcome: adherence rate. Secondary outcomes: symptom scores, methylation markers. Caregiver implementation will achieve >70% adherence and modest benefit.

**Tier:** 2 (supporting)

---

### 6.4 "First 90 Days" Early Intervention Package
**Description:** Targeting patients within 90 days of onset: intensive methylation restoration to prevent consolidation. Package: SAMe 3200 mg/day, methyl-folate 15 mg/day, methyl-B12 2000 µg/day, betaine 6 g/day, zinc 50 mg/day, plus lifestyle (circadian entrainment, pacing). Delivered via telehealth with weekly monitoring. Access: requires rapid diagnosis; targeted at post-infectious clinics.

**Evidence link:** Early intervention most effective before consolidation (current model's premise). Methylation erosion likely precedes consolidation (hypothesis). Intensive early support may preserve methylation above threshold.

**Certainty:** 0.45 — Early intervention rationale; methylation preservation hypothesis untested.

**Falsifiable prediction:** RCT (n=80 early patients): First 90 Days package vs standard care for 3 months. Primary outcome: consolidation rate (persistent symptoms at 6 months). Secondary outcomes: methylation markers. Early package will reduce consolidation rate from 60% (standard) to 30% (intervention).

**Tier:** 1 (core)

---

### 6.5 Stratified Protocol by Methylation Baseline
**Description:** Baseline methylation assessment (PTPRN2 methylation, global methylation) guides protocol intensity: (a) Mild hypomethylation (PTPRN2 >30%): low-intensity protocol (B12/folate/betaine only); (b) Moderate hypomethylation (PTPRN2 25-30%): standard protocol (add SAMe, zinc); (c) Severe hypomethylation (PTPRN2 <25%): intensive protocol (add DNMT3A activator). Biomarker-guided precision medicine approach.

**Evidence link:** Methylation thresholds predict consolidation (hypothesis 1.1). Stratified medicine improves outcomes in other diseases (established). Biomarker-guided dosing minimizes side effects.

**Certainty:** 0.40 — Stratification rationale; thresholds unvalidated.

**Falsifiable prediction:** Stratified trial (n=120): baseline methylation, assign to appropriate protocol, follow for 12 weeks. Primary outcome: methylation restoration (≥20% increase). Secondary outcomes: symptom improvement. Stratified approach will achieve higher methylation restoration than uniform dosing.

**Tier:** 2 (supporting)

---

## 7. Mathematical Model Extensions

### 7.1 Reframe calM as Multi-Locus Methylation Vector
**Description:** Replace scalar calM (methylation consolidation) with vector M = (m₁, m₂, ..., mₙ), where mᵢ is methylation level at locus i (e.g., PTPRN2, pericentromeric repeats, immune gene promoters). Consolidation occurs when ||M|| (norm) falls below threshold θ. Directionality matters: some loci hypermethylated (mᵢ increases), others hypomethylated (mᵢ decreases). Net effect vector V = dM/dt tracks methylation dynamics.

**Evidence link:** Methylation changes are bidirectional (paper acknowledges "bidirectional changes"). PTPRN2 hypomethylation and pericentromeric hypomethylation dominate (evidence). Some loci may hypermethylate (paper mentions gain model). Vector model captures heterogeneity.

**Certainty:** 0.60 — Bidirectional methylation documented; vector model captures this; specific locus set to be defined.

**Falsifiable prediction:** ODE simulations with vector M will better fit longitudinal methylation data than scalar calM. Model will predict: (a) early rapid loss at PTPRN2 (dM_PTPRN2/dt negative large), (b) slower pericentromeric loss, (c) possible hypermethylation at minor loci. Consolidation threshold will correspond to ||M|| < θ where θ = 0.7 × ||M_control||.

**Tier:** 1 (core)

---

### 7.2 Separate Gain and Loss Dynamics with Different Timescales
**Description:** Model methylation gain (DNMT-driven) and loss (TET-driven) as separate processes with different rate constants: M_gain(t) = M₀(1 - e^(-k_gain·t)) for hypermethylating loci; M_loss(t) = M₀·e^(-k_loss·t) for hypomethylating loci. k_gain << k_loss (gain is slow, loss is fast). Consolidation occurs when net change ΔM = Σ(m_i_loss) - Σ(m_j_gain) exceeds threshold. Passive demethylation (18-24 months) is actually M_gain acting slowly.

**Evidence link:** DNMT-mediated gain is de novo methylation at unmethylated sites (slow, requires chromatin remodeling). TET-mediated loss is enzymatic (faster). 18-24 month timescale in current model fits slow gain rate.

**Certainty:** 0.55 — Gain vs loss timescale difference established; ME/CFS rates untested.

**Falsifiable prediction:** Longitudinal methylation data will show: (a) rapid loss phase (k_loss ≈ 0.1-0.2 per month) in first 3 months post-onset; (b) slow gain phase (k_gain ≈ 0.01-0.02 per month) after 6 months; (c) consolidation when cumulative loss exceeds gain by threshold. Model will predict time-to-consolidation more accurately than single-rate model.

**Tier:** 1 (core)

---

### 7.3 Incorporate Methyl Donor Pool (SAM) as Dynamic Variable
**Description:** Add variable S(t) for SAM concentration. SAM production from methionine (depends on folate/B12), consumption by DNMTs (proportional to methylation rate Ṁ_gain). dS/dt = k_prod·(folate, B12) - k_cons·|Ṁ_gain| - k_loss·S. Methylation restoration requires S(t) > S_min (threshold). SAM depletion explains failure to consolidate-reverse despite presence of DNMTs.

**Evidence link:** SAM is methyl donor for DNMTs (established). Methylation cycle depletion in ME/CFS (Regland 1997). SAM supplementation trials (mixed results). No SAM dynamic modeling in ME/CFS.

**Certainty:** 0.50 — SAM biology established; ME/CFS SAM dynamics untested.

**Falsifiable prediction:** ODE simulations with SAM variable will show: (a) SAM depletion during acute phase (high consumption, low production); (b) slow SAM restoration during recovery (k_prod limited by folate/B12); (c) consolidation-reversal impossible until S(t) > S_min. Model will predict benefit of SAM supplementation early (raises S_min threshold).

**Tier:** 1 (core)

---

### 7.4 Threshold Bifurcation: Irreversible Methylation Loss
**Description:** Model methylation maintenance as bistable system with stable equilibria: (A) methylated state (M > θ); (B) demethylated state (M < θ). Once M crosses θ (threshold), system flips to state B and cannot return to A because feedback is broken (DNMT recruitment requires pre-existing methyl-CpG binding). θ is consolidation threshold. This explains irreversibility and why early intervention works (before crossing θ).

**Evidence link:** Bistability in methylation maintenance established in synthetic biology (methylation switches). DNMT recruitment via MeCP2/MBD requires pre-existing methylation (positive feedback). Irreversibility after threshold crossing in other epigenetic systems (X-inactivation).

**Certainty:** 0.55 — Bistability principle established; ME/CFS threshold value untested.

**Falsifiable prediction:** ODE simulations will show bistability with hysteresis: methylation loss from state A → B occurs at θ_A, but gain from B → A requires crossing higher threshold θ_B > θ_A. This explains irreversibility: M must rise above θ_B to restore, but natural dynamics cannot reach θ_B without intervention. Early intervention (M > θ_A) prevents flip.

**Tier:** 1 (core)

---

### 7.5 Methylation-Inflammation Feedback Loop
**Description:** Couple methylation M to inflammation I: dM/dt = -α·I + β·M_restoration; dI/dt = γ·(θ - M) + δ·stimulus - ε·I. Hypomethylation (M < θ) increases inflammation I (loss of repression at cytokine genes). Inflammation accelerates methylation loss (α term) via oxidative stress and TET activation. Positive feedback drives consolidation. Inflammation resolution alone insufficient without methylation restoration.

**Evidence link:** Hypomethylation derepresses cytokine genes (established). Inflammation increases TET activity (established). Oxidative stress impairs methylation enzymes (established). Feedback loop documented in autoimmune diseases.

**Certainty:** 0.50 — Feedback loop biology established; ME/CFS parameters untested.

**Falsifiable prediction:** ODE simulations will show two regimes: (a) recovery: I resolves, M stabilizes (feedback weak); (b) consolidation: I sustains, M drops further (feedback strong). Breaking consolidation requires either M restoration (β↑) or I suppression (ε↑). Anti-inflammatories alone will not break consolidation without methylation support.

**Tier:** 2 (supporting)

---

### 7.6 Stochastic Methylation Loss Model (Langevin Equation)
**Description:** Model methylation as stochastic process with drift (deterministic loss/gain) and noise (random fluctuations): dM/dt = μ(M) + σ·η(t), where μ(M) is drift (negative for loss-prone loci), σ is noise magnitude, η(t) is white noise. Consolidation is first-passage time to threshold θ. Individual variability in consolidation timing arises from stochastic noise. Predicts variance in consolidation time.

**Evidence link:** Methylation changes show stochastic noise (established). First-passage time models predict variance (established). Individual variability in ME/CFS consolidation (clinical observation).

**Certainty:** 0.40 — Stochastic methylation established; ME/CFS application untested.

**Falsifiable prediction:** Simulations will reproduce observed distribution of consolidation times (some patients consolidate in 3 months, some in 12 months). Higher noise σ predicts earlier consolidation (earlier first-passage to θ). Reducing noise (reducing inflammation, stabilizing metabolism) will delay consolidation.

**Tier:** 2 (supporting)

---

### 7.7 Pericentromeric Hypomethylation as "Achilles Heel" Locus
**Description:** Model pericentromeric methylation P as master variable: once P falls below threshold P_crit, cascade triggers (HSAT2 activation → MDSC expansion → NK suppression). Other methylation changes (immune gene promoters, PTPRN2) are secondary. Consolidation defined by P < P_crit. Model captures hierarchical causality: P is upstream, downstream effects propagate through immune system.

**Evidence link:** Pericentromeric hypomethylation → HSAT2 derepression → immune exhaustion (hypothesis 1.4). PTPRN2 hypomethylation correlates with symptoms (Chalder/Moreau 2026). Hierarchical causality in gene regulation (established).

**Certainty:** 0.45 — Pericentromeric hypothesis plausible; hierarchy unvalidated.

**Falsifiable prediction:** ODE simulations with P as upstream variable will show: (a) P loss precedes other methylation changes; (b) restoring P alone (re-methylation) reverses cascade even if downstream loci remain hypomethylated; (c) experimental verification: targeting pericentromeric methylation should have larger effect than targeting immune gene promoters.

**Tier:** 2 (supporting)

---

## 8. Cross-Disease Bridges

### 8.1 ICF Syndrome as Mendelian Proof: DNMT3B Mutation → Methylation Loss → Immune Deficiency
**Mechanistic rationale:** Immunodeficiency, Centromeric Instability, and Facial anomalies (ICF) syndrome is caused by DNMT3B mutations → pericentromeric hypomethylation → satellite repeat derepression → immune deficiency. This is a Mendelian proof that methylation loss at pericentromeric loci causes immune pathology. ME/CFS is the acquired, milder version: partial DNMT3B dysfunction (not mutation) → partial pericentromeric hypomethylation → subclinical immune exhaustion (ME/CFS) vs severe immune deficiency (ICF).

**Evidence link:** ICF syndrome caused by DNMT3B mutations (established). ICF shows pericentromeric hypomethylation (established). ICF shows immune deficiency (established). ME/CFS shows pericentromeric hypomethylation (hypothesis). Shared pericentromeric-immune mechanism.

**Certainty:** 0.65 — ICF biology established; ME/CFS analogy strong (same pathway, partial dysfunction).

**Falsifiable prediction:** ME/CFS patients will show: (a) partial DNMT3B dysfunction (reduced activity but not mutation); (b) pericentromeric hypomethylation (same pattern as ICF but less severe); (c) intermediate immune phenotype between healthy and ICF (subclinical exhaustion vs severe deficiency). DNMT3B activity assay will show partial reduction.

**Tier:** 1 (core)

---

### 8.2 Cancer Global Hypomethylation + Focal Hypermethylation Pattern
**Mechanistic rationale:** Cancer shows global hypomethylation (genome-wide loss) + focal hypermethylation (promoter-specific gain) — the same "bidirectional changes" pattern observed in ME/CFS. In cancer, global hypomethylation causes genomic instability and retrotransposon activation; focal hypermethylation silences tumor suppressors. ME/CFS is the non-malignant analogue: global hypomethylation causes immune exhaustion and retrotransposon activation (HSAT2), focal hypermethylation may silence protective genes. ME/CFS is "cancer immune-evasion state without cancer."

**Evidence link:** Cancer methylation pattern: global loss + focal gain (established). ME/CFS shows bidirectional methylation changes (paper acknowledges). Shared retrotransposon activation (cancer: LINE-1; ME/CFS: HSAT2). Both conditions show immune dysfunction (different mechanisms).

**Certainty:** 0.55 — Cancer methylation established; ME/CFS analogy plausible (same pattern, different outcome).

**Falsifiable prediction:** ME/CFS methylation array data will show: (a) global hypomethylation signature similar to early-stage cancer; (b) focal hypermethylation at immune regulatory gene promoters (silencing protective anti-inflammatory genes); (c) retrotransposon activation pattern (HSAT2, LINE-1) similar to cancer but lower magnitude. DNMT3A activator treatment will reduce hypomethylation (shared therapeutic principle).

**Tier:** 1 (core)

---

### 8.3 Viral-Induced Methylation Scars: HCV and SARS-CoV-2 Longitudinal Studies
**Mechanistic rationale:** HCV and SARS-CoV-2 cause persistent methylation changes after viral clearance — "methylation scars" that explain chronic sequelae. HCV patients show hypomethylation at immune genes post-clearance, associated with chronic fatigue and immune dysfunction. Long COVID shows methylation changes persisting 6+ months. ME/CFS is the generic post-viral methylation scar condition: any viral infection can leave methylation loss that consolidates into chronic disease.

**Evidence link:** HCV post-clearance methylation changes (established). Long COVID methylation changes (emerging). Post-infectious ME/CFS (established). Shared post-viral mechanism.

**Certainty:** 0.50 — HCV methylation documented; SARS-CoV-2 emerging; ME/CFS as general case plausible.

**Falsifiable prediction:** Comparison of three cohorts (n=50 each): HCV-cleared, Long COVID, post-infectious ME/CFS. All will show: (a) hypomethylation at overlapping loci (PTPRN2, immune genes, pericentromeric repeats); (b) correlation of methylation loss with fatigue severity; (c) similar symptom patterns (brain fog, PEM, immune exhaustion). Shared methylation scar signature across viruses.

**Tier:** 1 (core)

---

### 8.4 Lichen Sclerosus: IFNG/CD28/TLA Hypomethylation as Autoimmune Parallel
**Mechanistic rationale:** Lichen sclerosus (LS) is an autoimmune skin condition with hypomethylation at IFNG, CD28, and TLA (T-cell activation genes). This hypomethylation leads to constitutive T-cell activation and autoimmunity. ME/CFS shares autoimmune features and shows bidirectional methylation changes. LS provides a cross-disease parallel: hypomethylation at T-cell activation genes drives pathological immune activation in both conditions. ME/CFS may involve similar hypomethylation at immune activation loci.

**Evidence link:** LS shows IFNG/CD28/TLA hypomethylation (established). ME/CFS shows hypomethylation at immune genes (PTPRN2, evidence). Shared autoimmune comorbidity cluster (Hashimoto's, Sjögren's). MiR-155/Foxp3 axis shared (ch7).

**Certainty:** 0.45 — LS methylation documented; ME/CFS parallel plausible but locus overlap untested.

**Falsifiable prediction:** Methylation array comparison of ME/CFS and LS patients will show overlapping hypomethylation at IFNG, CD28, TLA, and PTPRN2. Patients with ME/CFS + LS comorbidity will show greatest hypomethylation at these loci (additive effect). Shared methylation signature explains shared autoimmune comorbidities.

**Tier:** 2 (supporting)

---

### 8.5 Accelerated Aging: Epigenetic Clock + Methylation Loss as Shared Mechanism
**Mechanistic rationale:** ME/CFS shows epigenetic age acceleration (GrimAge +3-8 years), global hypomethylation, and immunosenescence — the same triad seen in accelerated aging syndromes (progeria, Werner syndrome) and even normal aging. ME/CFS may be a "stress-induced accelerated aging" phenotype: viral/immune stress accelerates methylation loss and biological aging. Aging interventions (rapamycin, metformin, senolytics) might benefit ME/CFS by targeting shared mechanisms.

**Evidence link:** ME/CFS epigenetic age acceleration (preliminary data). Global hypomethylation in aging (established). Immunosenescence in ME/CFS (Luo 2025, Xu 2026). Shared aging biology.

**Certainty:** 0.50 — ME/CFS aging phenotype documented; shared mechanisms plausible.

**Falsifiable prediction:** ME/CFS patients will show: (a) epigenetic age acceleration correlated with methylation loss (ρ > 0.4); (b) senescent cell burden similar to chronological age + 10-15 years; (c) response to aging interventions: rapamycin or senolytic trial will reduce senescent cells and improve symptoms in ME/CFS.

**Tier:** 2 (supporting)

---

### 8.6 Bisphenol A (BPA) Endocrine Disruption Model: Environmental Methylation Erosion
**Mechanistic rationale:** BPA is an endocrine disruptor that causes global hypomethylation via DNMT inhibition (established). Prenatal BPA exposure causes persistent hypomethylation in offspring. Environmental methylation disruptors (BPA, phthalates, heavy metals) may contribute to ME/CFS risk by eroding methylation before disease onset. ME/CFS clusters may reflect shared environmental exposures that lower methylation baseline, making consolidation more likely after triggers.

**Evidence link:** BPA causes hypomethylation (established). Environmental toxins lower methylation (established). ME/CFS environmental triggers (established). No BPA-ME/CFS specific data.

**Certainty:** 0.35 — BPA methylation biology established; ME/CFS link speculative.

**Falsifiable prediction:** ME/CFS patients will show higher BPA/phthalate body burden (urinary biomarkers) than controls, correlating with baseline methylation (lower methylation in high-BPA group). Prenatal BPA exposure (maternal history) will predict earlier ME/CFS onset.

**Tier:** 3 (speculative)

---

## 9. Diagnostic/Biomarker Ideas

### 9.1 Consolidation Score: Multi-Locus Methylation Index
**Description:** Develop composite "consolidation score" combining methylation at key loci: PTPRN2 (weight 0.3), pericentromeric repeats (weight 0.3), immune gene promoters (IFNG, CD28, TLA, PDCD1) (weight 0.2), global methylation index (weight 0.2). Score = Σ(w_i × m_i), where m_i is methylation % at locus i. Lower score = more consolidated. Score < 0.4 (normalized) predicts irreversible consolidation (poor prognosis). Score > 0.6 predicts recovery potential.

**Evidence link:** PTPRN2 hypomethylation correlates with symptoms (Chalder/Moreau 2026). Pericentromeric hypomethylation drives HSAT2 (hypothesis 1.4). Immune gene hypomethylation in LS (cross-disease parallel). Multi-locus approach captures heterogeneity.

**Certainty:** 0.58 — Individual locus evidence strong; composite score untested.

**Falsifiable prediction:** Validation cohort (n=100): consolidation score predicts recovery at 24 months with AUROC > 0.75. Patients with score < 0.4 will have <10% recovery rate; score > 0.6 will have >60% recovery rate. Score correlates with symptom severity (ρ > 0.5).

**Tier:** 1 (core)

---

### 9.2 PTPRN2 Methylation as Longitudinal Disease-Activity Biomarker
**Description:** Use PTPRN2 methylation as dynamic biomarker tracking disease activity. Baseline measurement, then every 3 months. Declining methylation predicts worsening (approaching consolidation). Rising methylation predicts recovery (consolidation reversal). Methylation < 25% = consolidation marker (poor prognosis). Methylation > 35% = recovery marker (good prognosis).

**Evidence link:** PTPRN2 hypomethylation correlates with brain fog, word-finding, respiratory symptoms (Chalder/Moreau 2026). Longitudinal methylation dynamics predict disease state (hypothesis 2.1). Biomarker potential high (blood-based, stable).

**Certainty:** 0.60 — Direct clinical correlation; longitudinal dynamics plausible; validation needed.

**Falsifiable prediction:** Longitudinal cohort (n=80): PTPRN2 methylation every 3 months for 24 months. Methylation decline ≥10% over 6 months predicts symptom worsening (sensitivity 80%, specificity 75%). Methylation increase ≥15% predicts recovery (sensitivity 75%, specificity 80%). Methylation < 25% at 12 months predicts non-recovery at 24 months (PPV > 70%).

**Tier:** 1 (core)

---

### 9.3 HSAT2 Methylation as Immune-Exhaustion Biomarker
**Description:** Measure HSAT2 promoter methylation (bisulfite pyrosequencing) as marker of immune exhaustion status. Low HSAT2 methylation → high HSAT2 RNA → MDSC expansion → NK suppression. HSAT2 methylation < 30% = immune-exhaustion marker (consistent with consolidated ME/CFS). HSAT2 methylation > 50% = preserved immune function (early or recovered state).

**Evidence link:** HSAT2 hypomethylation derepresses satellite repeat (hypothesis 1.4). HSAT2 exosome transmission drives MDSC expansion (Evdokimova 2019). NK suppression linked to MDSCs (Iu 2024). Biomarker chain established.

**Certainty:** 0.55 — Mechanistic chain plausible; direct ME/CFS data lacking.

**Falsifiable prediction:** ME/CFS cohort (n=60): HSAT2 methylation correlates with (a) plasma HSAT2 RNA (qRT-PCR), (b) MDSC frequency (flow cytometry), (c) NK cytotoxicity (chromium release), (d) symptom severity. HSAT2 methylation < 30% will identify patients with NK suppression and severe fatigue (sensitivity 80%, specificity 70%).

**Tier:** 1 (core)

---

### 9.4 Epigenetic Age Acceleration as Global Consolidation Biomarker
**Description:** Use epigenetic age acceleration (GrimAge - chronological age) as global biomarker of methylation erosion and consolidation. GrimAge acceleration ≥ 5 years = consolidation marker (poor prognosis). Acceleration 0-3 years = early/partial consolidation. Acceleration < 0 years (younger biological age) = no consolidation (early disease or recovered).

**Evidence link:** ME/CFS shows 3-8 year GrimAge acceleration (preliminary data). Epigenetic clocks track with methylation loss (De Cecco 2019). Acceleration reflects global methylation erosion (established).

**Certainty:** 0.50 — Preliminary data support; validation needed; specificity to ME/CFS moderate (aging also accelerates).

**Falsifiable prediction:** ME/CFS cohort (n=100): GrimAge acceleration correlates with (a) global methylation loss (ρ > 0.4), (b) symptom severity (ρ > 0.3), (c) consolidation score (ρ > 0.5). Acceleration ≥ 5 years predicts non-recovery at 24 months (PPV > 65%).

**Tier:** 2 (supporting)

---

### 9.5 Methyl Donor Ratio (SAM:SAH) as Metabolic Biomarker
**Description:** Measure SAM:SAH ratio in plasma as biomarker of methylation capacity. SAM:SAH < 2 = methylation depletion (high consolidation risk). SAM:SAH 2-4 = partial depletion (early disease). SAM:SAH > 4 = normal (no consolidation or recovered). Serial monitoring tracks methylation support efficacy: ratio increases with supplementation predicts methylation restoration.

**Evidence link:** SAM:SAH ratio predicts methylation capacity (established). Methylation cycle depletion in ME/CFS (Regland 1997). Ratio increases with methyl donor supplementation (established). No ME/CFS ratio data.

**Certainty:** 0.50 — Ratio biology established; ME/CFS correlation untested.

**Falsifiable prediction:** ME/CFS cohort (n=80): SAM:SAH ratio correlates with (a) global methylation (ρ > 0.4), (b) DNMT activity (ρ > 0.3), (c) symptom severity (ρ > 0.3). Ratio < 2 predicts consolidation (symptom persistence at 6 months). Ratio increase with supplementation predicts methylation restoration.

**Tier:** 2 (supporting)

---

### 9.6 Cell-Type-Specific Methylation Panel for Precision Phenotyping
**Description:** Develop targeted bisulfite-seq panel for sorted cell subsets: NK cells (NCR1, KLRD1 methylation), CD8+ T cells (PDCD1, HAVCR2, LAG3), MDSCs (ARG1, IDO1), monocytes (PTPRN2). Each cell type has unique consolidation signature. Panel predicts subtype: NK-dominant (NK hypomethylation), T-cell-exhaustion dominant (PDCD1 hypomethylation), MDSC-dominant (ARG1 hypomethylation). Guides subtype-specific therapy.

**Evidence link:** Cell-type-specific methylation changes (hypothesis 2.2). Subtype-specific symptoms (NK suppression vs T-cell exhaustion). Precision phenotyping needed for personalized therapy.

**Certainty:** 0.45 — Cell-type-specific rationale; panel development needed; clinical utility untested.

**Falsifiable prediction:** ME/CFS cohort (n=100): cell-type-specific panel identifies 3-4 methylation subtypes. Subtypes correlate with clinical phenotypes (NK-dominant → PEM; T-cell-dominant → cognitive symptoms). Subtype predicts treatment response (NK-dominant responds to NK-restoring therapies).

**Tier:** 2 (supporting)

---

### 9.7 Early Detection Panel for Pre-Consolidation Patients
**Description:** Develop biomarker panel for patients within 3 months of onset to identify high consolidation risk. Panel includes: PTPRN2 methylation, HSAT2 methylation, epigenetic age acceleration, SAM:SAH ratio, NK cytotoxicity. Composite risk score predicts consolidation probability. High-risk patients (score > 0.7) receive intensive early intervention (First 90 Days package). Low-risk patients (score < 0.3) may recover spontaneously.

**Evidence link:** Early intervention most effective before consolidation (model premise). Biomarkers track methylation erosion (ideas 9.1-9.5). Predictive risk scoring established in other diseases.

**Certainty:** 0.40 — Early intervention rationale; panel untested; clinical impact high if validated.

**Falsifiable prediction:** Prospective cohort (n=200, within 3 months of onset): baseline panel, follow 12 months. Risk score predicts consolidation (symptom persistence at 6 months) with AUROC > 0.80. High-risk patients receiving early intervention (First 90 Days) will have consolidation rate 20% vs 60% in untreated high-risk controls.

**Tier:** 2 (supporting)

---

## Summary

**Total ideas generated:** 47
  - Novel hypotheses: 7
  - Research directions: 7
  - Drug/medication ideas: 7
  - Supplement/nutraceutical ideas: 7
  - Non-pharmacological interventions: 5
  - Combinations + access: 5
  - Mathematical model extensions: 7
  - Cross-disease bridges: 6
  - Diagnostic/biomarker ideas: 7

**Top 3 ideas by certainty:**
1. **1.1 Methylation Erosion Consolidation Threshold** (Certainty: 0.65, Tier 1) — Core mechanistic reframing with direct ME/CFS hypomethylation evidence and established methylation maintenance biology.
2. **1.3 PTPRN2 Hypomethylation as Consolidation Marker** (Certainty: 0.60, Tier 1) — Direct clinical correlation from Chalder/Moreau 2026; high-specificity biomarker for consolidation state.
3. **8.1 ICF Syndrome as Mendelian Proof** (Certainty: 0.65, Tier 1) — Cross-disease bridge provides mechanistic proof that pericentromeric hypomethylation causes immune pathology.

**Core thematic shift:** From "epigenetic consolidation as gain of methylation silencing healthy genes" to "epigenetic consolidation as loss of methylation derepressing pathological programs." This reframing aligns the model with the dominant hypomethylation signal in ME/CFS evidence (PTPRN2, pericentromeric repeats, global loss) and changes therapeutic direction from demethylation (TET activation) to remethylation (DNMT activation, methyl donor support).

**Key research priorities:**
1. Longitudinal methylation array tracking (Idea 2.1)
2. PTPRN2 methylation as consolidation marker validation (Idea 2.3)
3. ICF syndrome-DNMT3B functional comparison (Idea 8.1)
4. Consolidation score development (Idea 9.1)
5. Methylation restoration protocol trial (Idea 6.1)