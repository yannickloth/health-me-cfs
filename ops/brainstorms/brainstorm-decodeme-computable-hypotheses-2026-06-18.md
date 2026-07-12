# DecodeME Computable Hypotheses: Testable with Existing Data

**Date:** 2026-06-18
**Research stream:** DecodeME genotype + phenotype re-analysis
**Model:** deepseek-v4-pro (scientific-insight-generator)
**Status:** Creative analysis -- requires expert review before integration

---

## Ranking Convention

Ideas ranked by **certainty x impact** (product) within each category. Certainty reflects statistical power, methodological feasibility, and prior evidence. Impact reflects potential to reveal disease substructure or change research direction.

---

## Category 1: Sex-Stratified Genetic Architecture

### 1.1 Sex-Stratified GWAS Reveals Differential Genetic Architecture

**Certainty:** 0.55
**Impact:** High
**Certainty x Impact score:** 0.55

**DecodeME data used:** GWAS genotype data split by biological sex (~75% female, ~25% male = ~11,700 female cases + ~3,900 male cases); phenotype data for sex classification; 259,909 UK Biobank controls similarly split.

**Analysis:** Run sex-stratified GWAS (female-only, male-only). Compute: (a) genetic correlation between male and female ME/CFS (rg_sex using cross-sex LD score regression), (b) heterogeneity Q-statistic at each genome-wide significant locus, (c) sex-stratified heritability (h^2_SNP_female vs h^2_SNP_male), (d) sex-stratified gene-set enrichment (are neuronal/immune/autophagy clusters equally enriched in both sexes?).

**Mechanistic rationale:** ME/CFS is ~75% female, but whether this reflects a quantitative threshold difference (same genetic architecture, lower threshold in females due to hormonal/X-linked modifiers) or a qualitative difference (different loci contributing in each sex) is unknown. Autoimmune diseases show both patterns: SLE has sex-differential genetic architecture; RA does not. DecodeME's n=3,900 male cases is sufficient for discovery of strong-effect sex-specific loci (comparable to early psychiatric GWAS that identified sex-differential signals). If the genetic architecture is shared across sexes (rg_sex > 0.8), the female excess is environmental/hormonal. If rg_sex < 0.6, male and female ME/CFS are partially distinct genetic entities.

**Falsifiable prediction:** If rg_sex > 0.8, sex-differential genetic architecture is falsified -- the female excess must arise from non-genetic modifiers. If rg_sex < 0.6, sex-shared architecture is falsified. The prediction is that rg_sex will be 0.6-0.8 (partial overlap), with immune-ambiguous loci showing more sex differentiation than neuronal loci.

---

### 1.2 X Chromosome Association Analysis

**Certainty:** 0.45
**Impact:** High
**Certainty x Impact score:** 0.45

**DecodeME data used:** X chromosome genotypes (standard GWAS arrays include X chr SNPs); sex; case/control status. DecodeME's existing analysis likely included autosomal chromosomes only (standard practice).

**Analysis:** X chromosome association analysis with sex-appropriate coding (0/1 for males, 0/1/2 for females with dosage compensation correction). Test: (a) X-wide association scan, (b) enrichment of X-linked immune genes (TLR7, TLR8, FOXP3, CD40LG, CXCR3) among top hits, (c) XCI escape gene enrichment -- are the associated SNPs near genes known to escape X-inactivation?

**Mechanistic rationale:** X chromosome carries the highest density of immune-related genes in the genome. XCI escape produces higher expression of certain immune genes in XX individuals. If X-linked immune gene variants contribute to ME/CFS risk, this would: (a) directly explain part of the female excess (XX individuals have two chances for risk alleles at XCI-escape loci), (b) link the immune-ambiguous GWAS signal to a sex-specific mechanism, (c) predict that males with ME/CFS carry stronger autosomal risk burdens (to compensate for missing X-linked risk). The bimodal-onset brainstorm (1.4) proposed X-dosage as explanation for constant female ratio across onset peaks; this analysis directly tests it.

**Falsifiable prediction:** If no X chromosome associations reach suggestive significance (p < 1e-5) and no enrichment of immune genes among top X-linked hits, then X-linked immune gene variation does not meaningfully contribute to ME/CFS risk, and the female excess must arise from autosomal loci interacting with sex hormones or other modifiers.

---

## Category 2: Severity as Genetic Phenotype

### 2.1 PRS Dose-Response Across Severity Grades

**Certainty:** 0.60
**Impact:** High
**Certainty x Impact score:** 0.60

**DecodeME data used:** ME/CFS PRS (constructed from DecodeME GWAS, using leave-one-out or split-sample approach); severity classification (mild/moderate/severe/very severe, n=17,000+).

**Analysis:** Test whether ME/CFS PRS shows a monotonic dose-response across severity grades. Specifically: (a) one-way ANOVA of PRS across four severity categories, (b) linear trend test (PRS increasing with severity), (c) ordinal logistic regression with PRS predicting severity, adjusted for sex, age at onset, illness duration, and infection trigger. Additionally, test Sardell cluster-specific PRS (neuronal, immune, autophagy) for differential severity associations -- does one cluster predict severity more than others?

**Mechanistic rationale:** If ME/CFS severity is partly genetically determined (higher genetic loading = more severe disease), PRS should increase monotonically with severity grade. This is the pattern seen in schizophrenia (PRS predicts psychosis severity) and inflammatory bowel disease (PRS predicts need for surgery). If severity is primarily environmental (infection severity, stress exposure, treatment access), PRS should be flat across severity grades. A positive result would establish ME/CFS severity as partly heritable and identify which genetic pathway (neuronal vs immune vs autophagy) most strongly influences disease severity.

**Falsifiable prediction:** If PRS does NOT differ significantly across severity grades (ANOVA p > 0.05, variance explained < 0.5%), the hypothesis that genetic loading determines severity is falsified. The prediction is that the neuronal-synapse cluster PRS will show the strongest severity gradient (reflecting brain circuit vulnerability as a severity determinant), while immune cluster PRS will be flat across severity grades (reflecting immune variants as on/off switches rather than severity modulators).

---

### 2.2 Severe/Very Severe Subgroup GWAS

**Certainty:** 0.40
**Impact:** Very High
**Certainty x Impact score:** 0.60

**DecodeME data used:** GWAS genotype data; severity classification. Estimate ~2,000-3,000 severe/very severe cases (based on typical ME/CFS cohort distributions).

**Analysis:** GWAS comparing severe/very severe cases (n~2,500) vs mild/moderate cases (n~12,500), treating severity as a within-case phenotype. This removes case-control confounding entirely -- both groups have ME/CFS, differing only in severity. Gene-set enrichment on severity-associated loci. Compare with full case-control GWAS loci: which loci affect susceptibility only, which affect severity only, which affect both?

**Mechanistic rationale:** Most ME/CFS GWAS treat all cases identically. But if severe ME/CFS is a biologically distinct entity (not just "more of the same"), a severity GWAS should reveal distinct loci. This parallels the distinction between schizophrenia susceptibility loci and treatment-resistance loci (which partially diverge). If severity-specific loci enrich for mitophagy/autophagy (FBXL4 cluster), this would support the hypothesis that mitochondrial quality control capacity determines the severity ceiling. If they enrich for neuronal/synaptic genes, severity is determined by brain circuit vulnerability.

**Falsifiable prediction:** If no locus reaches p < 1e-5 in the severity GWAS and gene-set enrichment shows no significant pathway, within-case severity is not meaningfully heritable and is determined by environmental/stochastic factors. The prediction is that the autophagy-mitophagy cluster (Sardell cluster 3) will be selectively enriched in severity-associated loci, while the neuronal-synapse cluster (Sardell cluster 1) will not differentiate severity.

---

## Category 3: Infection Trigger x Genotype Interaction

### 3.1 Genotype x Trigger Interaction: SNP Effects That Differ by Infection Type

**Certainty:** 0.45
**Impact:** Very High
**Certainty x Impact score:** 0.63

**DecodeME data used:** GWAS genotype data; Bretherick 2023 infection typing (EBV/IM, non-EBV respiratory, Lyme/Q-fever, non-infectious); case-only design possible.

**Analysis:** Gene-environment interaction (GxE) analysis at the 8 genome-wide significant loci. For each locus, test whether effect size differs across trigger categories using heterogeneity tests (Cochran Q). Then genome-wide GxE scan: is there a SNP whose effect on ME/CFS risk depends on whether the trigger was EBV vs non-EBV vs non-infectious? Use case-only design (comparing genotype frequencies across trigger subgroups within cases) -- this is more powerful than case-control GxE for detecting interactions and requires no new controls.

**Mechanistic rationale:** The two-hit model (glutamatergic vulnerability + infection trigger) predicts that some genetic variants matter more for certain triggers. For example: immune-ambiguous loci might have larger effects in EBV-triggered ME/CFS (where immune clearance is critical), while neuronal loci might have equal effects regardless of trigger (brain vulnerability is trigger-agnostic). A significant GxE interaction would demonstrate that ME/CFS is not a single genetic entity but a family of genotype-trigger combinations -- each pathway to disease engaging different genetic modifiers. The case-only design is elegant because genotype-trigger association within cases directly estimates the interaction without needing to know the trigger distribution in controls.

**Falsifiable prediction:** If no SNP shows significant genotype-trigger interaction (interaction p > 0.05/8 for the 8 GWS loci; genome-wide interaction p > 5e-8 for new loci), then the same genetic architecture produces ME/CFS regardless of trigger type, and the two-hit model's prediction of trigger-specific genetic modulation is falsified. The prediction is that at least 2 of 8 GWS loci will show significant effect-size heterogeneity across trigger groups (Q-test p < 0.006), with immune-annotated loci showing larger effects in EBV-triggered cases.

---

### 3.2 Non-Infectious Onset as Genetically Distinct Subtype

**Certainty:** 0.50
**Impact:** High
**Certainty x Impact score:** 0.50

**DecodeME data used:** GWAS genotype; infection typing (non-infectious onset subgroup, estimated n~3,000-4,000); full controls.

**Analysis:** GWAS restricted to non-infectious-onset ME/CFS cases vs controls. Compare genetic architecture (genetic correlation, locus overlap, pathway enrichment) between non-infectious and infection-triggered subgroups. Is non-infectious ME/CFS a higher-genetic-loading condition (analogous to non-familial early-onset Alzheimer's having stronger genetic effects)?

**Mechanistic rationale:** Non-infectious-onset ME/CFS (~30-40% of cases) lacks the canonical "second hit." If these patients develop ME/CFS without an identifiable environmental trigger, they may require higher genetic loading -- more risk alleles at more loci. Alternatively, their triggers are simply unmeasured (subclinical infections, gradual stress accumulation). If PRS is significantly higher in non-infectious cases, it supports a spectrum model where genetic risk can substitute for environmental trigger. If PRS is equal or lower, unmeasured triggers are the more parsimonious explanation.

**Falsifiable prediction:** If mean PRS is NOT higher in non-infectious-onset cases compared to infection-triggered cases (one-sided t-test p > 0.05), then the high-genetic-loading model for non-infectious onset is falsified. The prediction is that non-infectious-onset cases will have ~0.15 SD higher PRS than EBV-triggered cases, and the genetic correlation between non-infectious and EBV-triggered ME/CFS will be 0.7-0.9 (partially overlapping but not identical architecture).

---

## Category 4: Comorbidity x Genetics

### 4.1 Depression Comorbidity: Genetic Predictor or Phenocopy?

**Certainty:** 0.60
**Impact:** High
**Certainty x Impact score:** 0.60

**DecodeME data used:** Depression comorbidity status (yes/no, from DecodeME questionnaire); ME/CFS PRS; depression PRS (constructable from PGC depression GWAS summary statistics, publicly available); severity; symptom profiles.

**Analysis:** (a) Construct depression PRS from PGC GWAS summary statistics and apply to DecodeME participants. (b) Test: does depression PRS predict depression comorbidity within the ME/CFS cohort? (c) Does depression PRS predict ME/CFS core symptoms (PEM, OI, cognitive dysfunction) independent of depression status? (d) Does ME/CFS PRS differ between depressed and non-depressed ME/CFS patients? (e) Two-sample Mendelian randomization: does genetic liability to depression (PRS) cause ME/CFS, or does genetic liability to ME/CFS cause depression?

**Mechanistic rationale:** The depression paradox (rg=0.60 but no shared causal variants) can be decomposed within DecodeME. If depression PRS predicts depression comorbidity but NOT ME/CFS symptoms, depression in ME/CFS patients is a genuine comorbidity (shared risk, separate pathology). If depression PRS predicts specific ME/CFS symptoms (e.g., cognitive dysfunction, sleep disturbance), those symptoms share biological architecture with depression. If ME/CFS PRS is identical in depressed and non-depressed ME/CFS patients, depression does not arise from the ME/CFS genetic architecture itself. This analysis directly addresses whether depressed ME/CFS patients are a distinct genetic subtype or simply have two independent conditions.

**Falsifiable prediction:** If depression PRS significantly predicts ME/CFS core symptoms (PEM severity, OI) independent of depression status (beta > 0.05, p < 0.01), then the "separate pathology" model is falsified and shared biology extends beyond comorbidity. The prediction is that depression PRS will predict depression comorbidity (OR ~1.1-1.2 per SD PRS) but NOT PEM or OI (p > 0.1), confirming that ME/CFS core features are genetically independent of depression.

---

### 4.2 Amitriptyline Pharmacogenomics: CYP2D6/CYP2C19 x Response

**Certainty:** 0.50
**Impact:** High
**Certainty x Impact score:** 0.50

**DecodeME data used:** Amitriptyline use (yes/no, from questionnaire); severity; symptom profiles; GWAS genotype data (CYP2D6 and CYP2C19 star alleles can be imputed from array data with reasonable accuracy using Stargazer or PharmCAT pipelines).

**Analysis:** (a) Impute CYP2D6 and CYP2C19 metabolizer status from GWAS array data (poor/intermediate/extensive/ultrarapid). (b) Among amitriptyline users, test whether metabolizer status predicts severity or symptom burden (cross-sectional proxy for treatment response). (c) Test genome-wide: are there SNPs that differentiate amitriptyline-using ME/CFS patients from non-users (pharmacogenomic selection bias -- patients who tolerate amitriptyline may be genetically distinct). (d) Test rg=0.61 amitriptyline-use correlation: is it driven by CYP pharmacogenomic variants, prescribing indication overlap, or shared biological pathways?

**Mechanistic rationale:** Amitriptyline is metabolized by CYP2D6 and CYP2C19. Poor metabolizers accumulate higher plasma levels, experiencing more side effects but potentially greater efficacy (NNT shifts). The rg=0.61 between ME/CFS and amitriptyline use is unexplained. It could reflect: (a) prescribing indication overlap (amitriptyline prescribed for pain, neuropathy, insomnia -- all ME/CFS symptoms), (b) pharmacogenomic selection (specific CYP genotypes tolerate amitriptyline AND have ME/CFS risk), or (c) shared biological pathway (amitriptyline targets serotonin/norepinephrine reuptake + sodium channels + NMDA receptors -- the NMDA mechanism directly connects to the glutamatergic hypothesis). DecodeME can distinguish these because CYP genotypes are inferable from the array.

**Falsifiable prediction:** If CYP2D6 metabolizer status does NOT associate with amitriptyline use patterns or symptom burden among users (p > 0.05), pharmacogenomic selection is not driving the genetic correlation. If the amitriptyline-use rg is abolished after conditioning on CYP loci, pharmacogenomic variants are the primary driver. The prediction is that the rg is NOT driven by CYP variants but by shared glutamatergic/synaptic pathway genes -- specifically, that the same neuronal-synapse loci contributing to ME/CFS risk also increase the probability of being prescribed amitriptyline (via shared pain/neuropathy phenotype).

---

## Category 5: Heritability Architecture

### 5.1 Functional Annotation Heritability Partitioning

**Certainty:** 0.65
**Impact:** High
**Certainty x Impact score:** 0.65

**DecodeME data used:** GWAS summary statistics; existing LD score regression infrastructure; publicly available functional annotation files (Finucane et al. baseline-LD model, 97 annotations).

**Analysis:** Stratified LD score regression (S-LDSC) to partition h^2_SNP = 0.095 into functional categories: (a) coding vs non-coding, (b) enhancer vs promoter vs intergenic, (c) brain-specific regulatory elements (Roadmap Epigenomics brain chromatin states), (d) immune cell regulatory elements, (e) conserved regions. Additionally, use cell-type-specific annotations (Finucane et al.) to confirm which cell types are enriched for ME/CFS heritability and whether this enrichment is stronger than expected from the overall brain enrichment.

**Mechanistic rationale:** h^2_SNP = 0.095 tells us that ~10% of ME/CFS liability variance is captured by common SNPs, but says nothing about WHERE in the genome this heritability resides. If heritability is concentrated in brain-specific enhancers (as in schizophrenia, bipolar disorder), it confirms the brain-first model at the regulatory level. If it is concentrated in immune cell enhancers, the immune model gains genetic support. If it is distributed across categories without enrichment, ME/CFS is genetically diffuse (more like height than schizophrenia). This analysis requires only summary statistics and can be completed in days using existing software (LDSC, S-LDSC).

**Falsifiable prediction:** If no functional category is significantly enriched (all enrichment p > 0.05/97 after Bonferroni), ME/CFS heritability is diffusely distributed and the brain-first model lacks regulatory-genomic support. The prediction is that brain-specific enhancers (particularly cortical and cerebellar) will show >5x enrichment, immune enhancers will show modest enrichment (~2x), and coding variants will be depleted (consistent with regulatory architecture seen in psychiatric GWAS).

---

### 5.2 Chromosome-Specific Heritability: Is ME/CFS Risk Concentrated?

**Certainty:** 0.55
**Impact:** Medium
**Certainty x Impact score:** 0.33

**DecodeME data used:** GWAS summary statistics (autosomes 1-22 + X).

**Analysis:** GREML per-chromosome heritability estimation (GCTA). Test whether h^2 per chromosome scales linearly with chromosome length (expected under polygenic model) or shows departures (indicating concentrated genetic architecture). Compare with chromosome-level patterns in depression, schizophrenia, and IBS.

**Mechanistic rationale:** Polygenicity can be assessed by testing whether heritability is proportional to chromosome length. A proportional relationship (r^2 > 0.8 between chromosome length and h^2 contribution) indicates a highly polygenic architecture. Departures indicate concentrated effects. In ME/CFS, the 8 GWS loci reside on specific chromosomes; if those chromosomes contribute disproportionate heritability, the architecture is more oligogenic than the overall h^2 suggests. This affects power calculations for future GWAS and PRS prediction accuracy.

**Falsifiable prediction:** If chromosome-length h^2 correlation exceeds r^2 > 0.85, ME/CFS is confirmed as highly polygenic (>1000 causal variants) and no chromosome carries outsized risk. If specific chromosomes show >3x expected h^2 contribution, concentrated architecture is confirmed, and those chromosomes contain high-priority candidate regions for fine-mapping. The prediction is that the architecture will be moderately polygenic (r^2 ~0.5-0.7), with chromosomes containing the 8 GWS loci showing enrichment but not extreme concentration.

---

## Category 6: Mendelian Randomization

### 6.1 Bidirectional MR: Sleep Traits --> ME/CFS and ME/CFS --> Sleep Traits

**Certainty:** 0.55
**Impact:** High
**Certainty x Impact score:** 0.55

**DecodeME data used:** DecodeME GWAS summary statistics as outcome instrument; UK Biobank sleep trait GWAS summary statistics (publicly available: sleep duration, insomnia, chronotype, daytime sleepiness, sleeping too much) as exposure instruments. Bidirectional: DecodeME as exposure, sleep traits as outcomes.

**Analysis:** Two-sample bidirectional Mendelian randomization using IVW, weighted median, MR-Egger, and MR-PRESSO methods. Test: (a) does genetic liability to sleeping too much (rg=0.66) cause ME/CFS? (b) does genetic liability to ME/CFS cause sleeping too much? (c) is the causal direction from insomnia --> ME/CFS, from ME/CFS --> insomnia, or bidirectional? (d) does genetic liability to short/disrupted sleep increase ME/CFS risk (supporting glymphatic/sleep-debt hypotheses from the hypothesis registry)?

**Mechanistic rationale:** ME/CFS is strongly associated with sleep disturbance, but causal direction is debated. If genetic instruments for poor sleep causally increase ME/CFS risk, sleep disruption is on the causal pathway (supporting the glymphatic clearance and sleep-immune senescence hypotheses in the registry). If genetic instruments for ME/CFS causally increase sleeping too much, hypersomnia is a downstream consequence (consistent with sickness behavior interpretation). Bidirectional effects suggest a feedback loop. The rg=0.66 with sleeping too much is high enough to power this MR analysis.

**Falsifiable prediction:** If MR shows no causal effect of sleep trait instruments on ME/CFS (IVW p > 0.05 in both directions), the genetic correlation reflects shared biology without causal relationship (horizontal pleiotropy). The prediction is that genetic liability to insomnia/disrupted sleep will show a modest causal effect on ME/CFS risk (OR ~1.05-1.15 per SD), while genetic liability to ME/CFS will show a larger causal effect on sleeping too much (OR ~1.10-1.25 per SD), consistent with ME/CFS as a primarily brain-driven condition that produces sleep dysfunction downstream.

---

### 6.2 MR: IBS --> ME/CFS Causal Direction

**Certainty:** 0.50
**Impact:** High
**Certainty x Impact score:** 0.50

**DecodeME data used:** DecodeME GWAS summary statistics; published IBS GWAS summary statistics (Eijsbouts et al. 2021, n=53,400 cases).

**Analysis:** Two-sample bidirectional MR: IBS instruments --> ME/CFS outcome, and ME/CFS instruments --> IBS outcome. Additionally, multivariable MR including depression instruments to assess whether the ME/CFS-IBS causal pathway is independent of depression (which is correlated with both).

**Mechanistic rationale:** rg=0.75 between ME/CFS and IBS is the strongest genetic correlation in the dataset. Three causal models: (a) shared glutamatergic vulnerability causes both (no directional causation -- horizontal pleiotropy), (b) IBS/gut dysfunction causally increases ME/CFS risk (gut-brain axis, immune activation from gut permeability), (c) ME/CFS (brain-first) causally produces GI dysfunction via vagal/autonomic disruption. MR can distinguish these. If neither direction shows significance, model (a) is supported. If IBS --> ME/CFS but not reverse, gut-brain causation is supported. If ME/CFS --> IBS but not reverse, brain-gut causation is supported.

**Falsifiable prediction:** If bidirectional MR shows significant effects in both directions, a causal loop or shared confounding is indicated, and the analysis is inconclusive. If neither direction is significant (IVW p > 0.05), the rg=0.75 arises from shared genetic architecture without causal mediation, supporting the enteric glutamatergic hypothesis (shared vulnerability, independent expression). The prediction is that neither direction will show robust causal effects, supporting the shared glutamatergic vulnerability model.

---

### 6.3 MR: Depression --> ME/CFS Disentangled from Reverse Causation

**Certainty:** 0.55
**Impact:** Very High
**Certainty x Impact score:** 0.72

**DecodeME data used:** DecodeME GWAS summary statistics; PGC Major Depression GWAS summary statistics (Howard et al. 2019, n=807,553).

**Analysis:** Two-sample bidirectional MR. Additionally: Steiger filtering (remove instruments where variance explained in the outcome exceeds that in the exposure, indicating reverse causation). Latent causal variable (LCV) analysis to estimate genetic causality proportion (GCP). This is critical because the depression paradox (rg=0.60 but no shared causal variants at genome-wide significance) creates ambiguity: does depression cause ME/CFS, does ME/CFS cause depression, or is the correlation entirely pleiotropic?

**Mechanistic rationale:** Clinically, depression is frequently comorbid with ME/CFS and is used by sceptics to argue that ME/CFS "is" depression. If MR shows that genetic liability to depression does NOT causally increase ME/CFS risk, this is strong evidence against the psychogenic model. If genetic liability to ME/CFS causally increases depression risk, depression is a downstream consequence of chronic illness (reactive depression). This has profound implications for clinical management and destigmatization.

**Falsifiable prediction:** If genetic liability to depression causally increases ME/CFS risk (IVW OR > 1.1, p < 0.05, robust across sensitivity analyses), the psychogenic contribution to ME/CFS cannot be dismissed. The prediction is that the MR will show: (a) NO causal effect of depression liability on ME/CFS (IVW p > 0.1), (b) a modest causal effect of ME/CFS liability on depression (OR ~1.05-1.15), and (c) LCV analysis showing low genetic causality proportion (GCP < 0.3), confirming the correlation is pleiotropic rather than causal.

---

## Category 7: Family History and Familial Clustering

### 7.1 PRS x Family History Interaction: Measured vs Unmeasured Genetic Risk

**Certainty:** 0.50
**Impact:** Medium-High
**Certainty x Impact score:** 0.40

**DecodeME data used:** Family history of ME/CFS (from questionnaire, n=17,000+); ME/CFS PRS; severity; onset age.

**Analysis:** (a) Compare PRS between ME/CFS patients WITH and WITHOUT a family history of ME/CFS. (b) Test whether family-history-positive patients have higher PRS (expected if PRS captures the heritable component). (c) Quantify: what proportion of familial risk is captured by PRS? If PRS explains <10% of familial risk, the "missing family heritability" indicates rare variants, structural variants, or shared environment driving familial clustering. (d) Test interaction: do family-history-positive patients with HIGH PRS have earlier onset and greater severity than predicted by either factor alone?

**Mechanistic rationale:** Family history and PRS measure overlapping but non-identical genetic information. Family history captures all heritable factors (common variants, rare variants, structural variants, epigenetic inheritance) plus shared environment. PRS captures only common variant effects. The gap between family history effect and PRS effect estimates the contribution of unmeasured genetic factors. If this gap is large, rare variant studies (SequenceME WGS) are high priority. If PRS accounts for most familial risk, common variants dominate and larger GWAS will be the most productive strategy.

**Falsifiable prediction:** If PRS does NOT differ between family-history-positive and family-history-negative ME/CFS patients (t-test p > 0.05), then either PRS is too weak to capture familial risk or familial clustering is primarily environmental. The prediction is that family-history-positive patients will have ~0.10-0.20 SD higher PRS, but PRS will explain <20% of the family history effect, indicating substantial unmeasured genetic or shared-environment contribution.

---

### 7.2 Sibling-Pair Concordance for Sardell Cluster Membership

**Certainty:** 0.35
**Impact:** High
**Certainty x Impact score:** 0.32

**DecodeME data used:** Genotype data to identify sibling pairs (IBD sharing ~50%); Sardell cluster-specific PRS; phenotype data (severity, onset age, trigger type, symptoms).

**Analysis:** (a) Identify sibling pairs within DecodeME using IBD estimation (KING software). With n=17,000 participants, expect ~50-200 sibling pairs if familial clustering is real. (b) For each sibling pair, compute concordance for Sardell cluster-specific PRS (neuronal, immune, autophagy). (c) Test: do concordant siblings (same dominant cluster) have more similar phenotypes (onset age, trigger, severity, symptoms) than discordant siblings? (d) Estimate within-family heritability -- how much do siblings resemble each other beyond PRS prediction?

**Mechanistic rationale:** If ME/CFS has genuine genetic subtypes (neuronal-predominant, immune-predominant, autophagy-predominant), siblings should tend to share the same subtype. Sibling concordance for cluster membership would validate the subtype model. Discordance would suggest that the clusters are artifacts of population-level statistics that do not segregate within families. This is a powerful internal consistency test for the Sardell combinatorial model.

**Falsifiable prediction:** If sibling phenotype concordance is NOT higher for cluster-concordant pairs than cluster-discordant pairs (interaction p > 0.1), the genetic cluster model does not predict within-family disease expression, and the subtypes may be statistical artifacts. The prediction is that cluster-concordant siblings will show significantly more similar onset ages (ICC > 0.5) and symptom profiles (cosine similarity > 0.7) than cluster-discordant siblings.

---

## Category 8: Diagnostic Criteria Heterogeneity

### 8.1 CCC-Only vs IOM-Only: Genetic Architecture Comparison

**Certainty:** 0.45
**Impact:** Very High
**Certainty x Impact score:** 0.59

**DecodeME data used:** Diagnostic criteria met (CCC, ICC, IOM) for each participant; GWAS genotype data.

**Analysis:** (a) Identify patients meeting CCC but NOT IOM, IOM but NOT CCC, and patients meeting both. (b) GWAS separately for each group vs shared controls. (c) Genetic correlation between CCC-only and IOM-only subgroups. (d) PRS comparison: does PRS differ across diagnostic criteria subgroups? (e) Pathway enrichment comparison: do the criteria define biologically distinct groups?

**Mechanistic rationale:** CCC requires PEM plus specific neurological/autonomic/immune criteria; IOM requires PEM but is broader. If patients meeting CCC (more restrictive) have a different genetic architecture than IOM-only patients, the diagnostic criteria are cutting along a biological boundary. If genetic architecture is identical, the criteria differences are clinically but not biologically meaningful. The Sardell combinatorial model could be tested: does CCC preferentially select patients with higher neuronal-cluster PRS (because CCC requires neurological symptoms)?

**Falsifiable prediction:** If the genetic correlation between CCC-only and IOM-only subgroups exceeds 0.90, the diagnostic criteria do not identify biologically distinct subgroups, and the field's criteria debates are moot from a genetic perspective. The prediction is that rg will be 0.7-0.85 (moderate divergence), with CCC-only patients showing higher neuronal-cluster PRS and IOM-only patients showing a more diffuse genetic profile.

---

## Category 9: Geographic and Population Substructure

### 9.1 UK Regional Variation in Genetic Loading

**Certainty:** 0.35
**Impact:** Medium
**Certainty x Impact score:** 0.21

**DecodeME data used:** UK geographic location (from questionnaire); GWAS genotype data; PCA-corrected ancestry; severity.

**Analysis:** (a) Map PRS by UK region (Scotland, Northern England, Midlands, Southern England, Wales). (b) Test for residual geographic structure after PCA correction -- are there regional differences in ME/CFS genetic architecture? (c) Test whether geographic variation in severity is explained by PRS differences, population stratification, or environmental factors (latitude/vitamin D, urbanization, deprivation index). (d) Compare with UK Biobank geographic patterns for depression, IBS, and fatigue-related traits.

**Mechanistic rationale:** The UK has documented genetic substructure (Leslie et al. 2015 POBI study). ME/CFS prevalence varies by region, but whether this reflects ascertainment bias, environmental differences (latitude, viral exposure, healthcare access), or genuine population genetic variation is unknown. If PRS shows geographic clines after PCA correction, residual population stratification may confound GWAS results. If severity varies geographically independent of PRS, environmental modifiers are implicated. This is a quality-control analysis as much as a hypothesis test.

**Falsifiable prediction:** If PRS shows no geographic variation after PCA correction (ANOVA p > 0.1), population substructure does not confound results and regional prevalence differences are environmental. If PRS varies geographically (p < 0.01), additional ancestry correction or geographic stratification is needed. The prediction is that no significant geographic PRS variation will remain after PCA correction, confirming adequate population stratification control.

---

## Category 10: Genetic Correlation Decomposition and Cross-Trait Analyses

### 10.1 Partitioned Genetic Correlation: What Functional Categories Drive rg with IBS?

**Certainty:** 0.55
**Impact:** Very High
**Certainty x Impact score:** 0.72

**DecodeME data used:** GWAS summary statistics; IBS GWAS summary statistics (Eijsbouts et al. 2021).

**Analysis:** rho-HESS or SUPERGNOVA for local genetic correlation estimation across the genome. Identify specific genomic regions driving the rg=0.75 with IBS. Partition into: (a) regions containing neuronal/synaptic genes, (b) regions containing immune genes, (c) regions containing ENS-expressed genes, (d) regions containing serotonergic/dopaminergic genes. Is the correlation concentrated in a few loci or distributed genome-wide?

**Mechanistic rationale:** rg=0.75 is the strongest genetic correlation, but its biological basis is unknown. Three competing models: (a) shared glutamatergic vulnerability affecting both CNS and ENS (enteric hypothesis from existing brainstorm), (b) shared serotonergic variants (5-HT is the primary neurotransmitter in both gut motility and central fatigue regulation), (c) shared autonomic regulation variants (vagal dysfunction affects both gut motility and systemic energy regulation). Local genetic correlation can distinguish these: if the correlation is concentrated at serotonergic loci (HTR genes, TPH genes), model (b) is supported. If at glutamatergic loci (GRM, GRIN families), model (a) is supported.

**Falsifiable prediction:** If the rg=0.75 is uniformly distributed across the genome (no region contributing >5% of the correlation), no single biological pathway mediates the correlation, and the mechanistic models are all oversimplifications. The prediction is that the correlation will be concentrated at ~20-50 genomic regions, with significant enrichment for neuronal/synaptic annotations (supporting the enteric glutamatergic model) and modest enrichment for serotonergic loci.

---

### 10.2 Cross-Trait PRS: Do Other Trait PRSs Predict ME/CFS Symptom Subtypes?

**Certainty:** 0.50
**Impact:** High
**Certainty x Impact score:** 0.50

**DecodeME data used:** Symptom profiles (detailed questionnaire); external GWAS summary statistics for: pain sensitivity, sleep disturbance, cognitive performance, autonomic dysfunction/POTS, fatigue, exercise tolerance.

**Analysis:** Construct PRS from external GWAS for: (a) chronic pain (UK Biobank multisite pain GWAS), (b) cognitive performance (Savage et al. 2018), (c) BMI (Yengo et al. 2018), (d) blood pressure (Evangelou et al. 2018, proxy for autonomic function), (e) iron/ferritin levels (Bell et al. 2021), (f) vitamin D (Manousaki et al. 2020). Apply each PRS to DecodeME participants and test against ME/CFS symptom dimensions. Do these external PRSs predict specific symptom profiles within ME/CFS?

**Mechanistic rationale:** ME/CFS symptom heterogeneity may partly reflect the overlay of multiple genetic predispositions. A patient with high ME/CFS PRS + high pain PRS might present with a fibromyalgia-like phenotype, while high ME/CFS PRS + high cognitive-performance PRS (protective direction) might have preserved cognition despite severe PEM. This "genetic modifier" model could explain why patients with similar onset stories have divergent symptom trajectories. It also identifies which ME/CFS symptoms are shared-biology with other traits versus ME/CFS-specific.

**Falsifiable prediction:** If no external PRS predicts any ME/CFS symptom dimension (all p > 0.01), within-ME/CFS symptom variation is not genetically correlated with these common traits. The prediction is that pain PRS will predict pain-dominant ME/CFS phenotype (OR ~1.1), cognitive PRS will inversely predict cognitive dysfunction severity (beta ~-0.05), and blood pressure PRS will predict OI severity (beta ~-0.08, lower genetic blood pressure = more OI).

---

## Category 11: Pleiotropy and Long COVID Overlap

### 11.1 76 Shared Long COVID Genes: Phenotype Enrichment Within DecodeME

**Certainty:** 0.50
**Impact:** High
**Certainty x Impact score:** 0.50

**DecodeME data used:** GWAS genotype data for SNPs in/near the 76 genes shared with Long COVID (Sardell 2026); phenotype data (onset age, trigger type -- particularly COVID-triggered if any, severity, symptoms).

**Analysis:** (a) Construct a "shared-gene PRS" from SNPs in the 76 Long-COVID-overlapping genes. (b) Test whether this PRS predicts: onset after respiratory infection (vs EBV vs non-infectious), symptom profile similarity to Long COVID canonical symptoms (brain fog, PEM, autonomic dysfunction), or severity. (c) Among the subset of DecodeME participants whose onset was post-respiratory-infection, does the shared-gene PRS have a larger effect than in the full cohort? (d) Gene ontology enrichment of the 76 genes -- which pathways dominate the overlap?

**Mechanistic rationale:** The 76 shared genes from Sardell identify a genetic intersection between ME/CFS and Long COVID. If these genes disproportionately predict respiratory-trigger-onset ME/CFS (vs EBV-onset), they represent a "respiratory-post-infectious" genetic subtype that Long COVID and a subset of classic ME/CFS share. If they predict ME/CFS equally across trigger types, the overlap reflects shared downstream pathology (brain circuit vulnerability) rather than shared trigger biology.

**Falsifiable prediction:** If the shared-gene PRS does NOT preferentially predict post-respiratory-onset ME/CFS (interaction p > 0.1), the 76-gene overlap reflects shared downstream biology, not trigger-specific vulnerability. The prediction is that the shared-gene PRS will show a modest preference for respiratory-triggered cases (OR ~1.15 vs ~1.05 for EBV-triggered), but the dominant signal will be trigger-independent, supporting shared neuronal/circuit vulnerability.

---

### 11.2 Pleiotropic Loci: Which ME/CFS Loci Affect Multiple Traits Simultaneously?

**Certainty:** 0.55
**Impact:** Medium-High
**Certainty x Impact score:** 0.44

**DecodeME data used:** GWAS summary statistics; 3,167 genetic correlations already computed against UK Biobank traits.

**Analysis:** For each of the 8 GWS loci, perform a PheWAS (phenome-wide association study) using UK Biobank summary statistics. Which loci are associated with IBS, depression, sleeping too much, amitriptyline use, and other correlated traits? Classify loci as: (a) ME/CFS-specific (no significant associations with correlated traits), (b) broadly pleiotropic (associated with many traits), (c) selectively pleiotropic (associated with specific trait clusters). Use colocalization analysis (coloc) to test whether the same causal variant drives ME/CFS and the correlated trait at each locus.

**Mechanistic rationale:** Pleiotropy patterns reveal mechanism. A locus that colocalizes between ME/CFS and IBS but not depression identifies a gut-brain-specific variant. A locus that colocalizes with depression and sleeping-too-much but not IBS identifies a central fatigue variant. A locus with no colocalization despite genetic correlation indicates that the correlation arises from linkage (nearby but distinct variants) rather than true pleiotropy. This maps the biological meaning of each GWAS hit.

**Falsifiable prediction:** If colocalization analysis shows that no GWS locus shares a causal variant with any correlated trait (posterior probability of shared variant <0.5 at all loci), the genetic correlations arise from distributed polygenic overlap, not individual pleiotropic variants, and the 8 loci are ME/CFS-specific discoveries. The prediction is that 2-3 of 8 loci will colocalize with IBS or sleep traits (PP.H4 > 0.7), while none will colocalize with depression (consistent with the "no shared causal variants" finding).

---

## Category 12: Onset Age Beyond Simple Stratification

### 12.1 Onset Age as Quantitative Trait: GWAS of Age-at-Onset Within Cases

**Certainty:** 0.50
**Impact:** High
**Certainty x Impact score:** 0.50

**DecodeME data used:** Self-reported onset age (continuous variable, n=17,000+); GWAS genotype data; infection trigger type; sex.

**Analysis:** Within-case GWAS treating onset age as a quantitative trait (linear regression, genotype predicting onset age, adjusted for sex and ancestry PCs). This is distinct from the already-proposed onset-age-STRATIFIED GWAS (which compares early vs late against controls). Here, we ask: which SNPs influence WHEN you get ME/CFS, given that you get it? Gene-set enrichment on onset-age-associated SNPs. Compare with onset-age GWAS in other diseases (breast cancer, Parkinson's, diabetes -- all have age-of-onset modifier loci).

**Mechanistic rationale:** Age at onset is bimodally distributed (~18.8 and ~40.1 peaks). If specific genetic variants influence onset timing, they could identify: (a) developmental vulnerability windows (variants near neurodevelopmental genes predict early onset), (b) aging-related pathways (variants near mitochondrial quality control genes predict late onset), (c) immune maturation variants (HLA region variants predict onset relative to EBV exposure window). Onset-age modifier loci are clinically actionable -- they identify which young people are at highest risk and might benefit from early intervention after IM.

**Falsifiable prediction:** If no SNP associates with onset age at p < 1e-5 within cases, onset timing is not meaningfully heritable and is determined by trigger timing and environmental factors. The prediction is that onset-age GWAS will identify 3-5 suggestive loci (p < 1e-5), enriched for neurodevelopmental and immune maturation genes, with the bimodal distribution partially explained by a latent genetic variable (mixture of two onset-age genetic architectures).

---

## Category 13: Epistasis and Gene-Gene Interactions

### 13.1 Sardell Cluster Cross-Talk: Between-Cluster Epistatic Interactions

**Certainty:** 0.40
**Impact:** Very High
**Certainty x Impact score:** 0.52

**DecodeME data used:** GWAS genotype data; Sardell 2026 cluster assignments (neuronal-synapse, immune, autophagy-mitophagy); phenotype data.

**Analysis:** Test for epistatic interactions BETWEEN Sardell clusters rather than within them. Specifically: (a) for each pair of clusters (neuronal x immune, neuronal x autophagy, immune x autophagy), compute a cluster-pair interaction PRS (product of cluster-specific PRSs). (b) Test whether the interaction term (PRS_cluster1 x PRS_cluster2) predicts ME/CFS risk or severity beyond the additive effects. (c) Which cluster pair shows the strongest synergy? (d) Does the neuronal x immune interaction predict a specific symptom profile (e.g., PEM + immune symptoms)?

**Mechanistic rationale:** Sardell 2026 identified within-cluster epistasis (synergistic interactions among genes in the same functional cluster). But the most biologically interesting question is between-cluster interactions: does having both neuronal AND immune risk create a synergy beyond their additive effects? This would support a two-pathway convergence model (neuronal vulnerability + immune activation = disease). If neuronal x autophagy is the strongest interaction, mitophagy failure in neurons is the critical convergence point. If immune x autophagy is strongest, immunometabolic dysfunction is central.

**Falsifiable prediction:** If no between-cluster interaction term is significant (interaction p > 0.01 for all pairs), the clusters act independently and ME/CFS risk is additive across pathways. The prediction is that the neuronal x autophagy interaction will be the strongest (synergy coefficient > 1.2), reflecting the hypothesis that neurons with both synaptic dysfunction AND impaired mitophagy are uniquely vulnerable, while the immune cluster acts additively (no synergy with other clusters).

---

## Category 14: Novel Genetic Correlation Targets

### 14.1 Genetic Correlation with ADHD: Shared Dopaminergic/Attentional Architecture?

**Certainty:** 0.45
**Impact:** High
**Certainty x Impact score:** 0.45

**DecodeME data used:** GWAS summary statistics; published ADHD GWAS summary statistics (Demontis et al. 2023).

**Analysis:** Compute genetic correlation between ME/CFS and ADHD using LD score regression. If significant, perform: (a) partitioned rg by functional category (synaptic, dopaminergic, attentional network genes), (b) bidirectional MR (ADHD liability --> ME/CFS and reverse), (c) local genetic correlation (SUPERGNOVA) to identify specific genomic regions of overlap.

**Mechanistic rationale:** An existing brainstorm explored ADHD-ME/CFS overlap (brainstorm-adhd-same-causes-mecfs-2026-06-05.md), but genetic correlation has not been computed. ADHD involves dopaminergic and noradrenergic dysfunction, cognitive fatigue, and executive dysfunction -- symptoms shared with ME/CFS. If rg is significant (>0.3), this would: (a) support the Maccallini VTA/SN dopaminergic signal (DA pathway shared with ADHD), (b) suggest ADHD medications (methylphenidate, atomoxetine) may be effective in a dopaminergic ME/CFS subtype, (c) raise the question of whether childhood ADHD is a risk factor for post-infectious ME/CFS (pre-existing dopaminergic vulnerability). The rg=0.60 with depression but 0.00 with MS provides a reference: ME/CFS correlates with "brain-circuit" conditions, not "immune" conditions.

**Falsifiable prediction:** If rg(ME/CFS, ADHD) < 0.10 (p > 0.05), no shared genetic architecture exists and the symptom overlap is phenotypic mimicry. If rg > 0.30, shared dopaminergic/attentional architecture is confirmed. The prediction is that rg will be 0.15-0.35 (modest but significant), driven by dopaminergic and synaptic gene regions, not by attentional/executive regions.

---

### 14.2 Genetic Correlation with Fibromyalgia: Quantifying the Overlap

**Certainty:** 0.55
**Impact:** High
**Certainty x Impact score:** 0.55

**DecodeME data used:** GWAS summary statistics; published fibromyalgia GWAS summary statistics (Zorina-Lichtenwalter et al. 2023 or latest available).

**Analysis:** Compute rg(ME/CFS, FM). Compare with rg(ME/CFS, IBS) = 0.75 and rg(ME/CFS, depression) = 0.60. If rg(ME/CFS, FM) is very high (>0.8), ME/CFS and FM may be genetically indistinguishable. If moderate (0.4-0.7), they share substantial architecture but are distinct. Partition rg by pain pathway genes vs neuronal/synaptic genes vs immune genes.

**Mechanistic rationale:** ME/CFS and fibromyalgia frequently co-occur, and the shared-mechanisms brainstorm already explored phenotypic overlap. Genetic correlation quantifies whether the conditions share a genetic basis or merely co-occur due to diagnostic overlap and shared risk factors. If rg exceeds that of ME/CFS-IBS (0.75), fibromyalgia is the most genetically similar condition to ME/CFS, suggesting they may be variants of a single spectrum disorder. If rg is lower than depression (0.60), the phenotypic overlap exceeds the genetic overlap, and the conditions are more distinct than commonly assumed.

**Falsifiable prediction:** If rg(ME/CFS, FM) < 0.30, the conditions are genetically distinct despite phenotypic overlap. If rg > 0.80, they are genetically near-identical. The prediction is that rg will be 0.50-0.70, overlapping substantially in glutamatergic/synaptic pathways but diverging in pain-specific loci (FM has unique pain-sensitivity genetic architecture).

---

## Summary Table: Ranked by Certainty x Impact

| Rank | ID | Title | Certainty | Impact | CxI |
|------|-----|-------|-----------|--------|------|
| 1 | 6.3 | MR: Depression --> ME/CFS direction | 0.55 | V.High | 0.72 |
| 2 | 10.1 | Partitioned rg with IBS | 0.55 | V.High | 0.72 |
| 3 | 5.1 | Functional annotation heritability | 0.65 | High | 0.65 |
| 4 | 3.1 | Genotype x trigger interaction | 0.45 | V.High | 0.63 |
| 5 | 2.1 | PRS dose-response across severity | 0.60 | High | 0.60 |
| 6 | 4.1 | Depression PRS within ME/CFS | 0.60 | High | 0.60 |
| 7 | 2.2 | Severe subgroup GWAS | 0.40 | V.High | 0.60 |
| 8 | 8.1 | CCC vs IOM genetic comparison | 0.45 | V.High | 0.59 |
| 9 | 1.1 | Sex-stratified GWAS | 0.55 | High | 0.55 |
| 10 | 6.1 | MR: sleep traits bidirectional | 0.55 | High | 0.55 |
| 11 | 14.2 | rg with fibromyalgia | 0.55 | High | 0.55 |
| 12 | 13.1 | Between-cluster epistasis | 0.40 | V.High | 0.52 |
| 13 | 3.2 | Non-infectious onset as distinct | 0.50 | High | 0.50 |
| 14 | 6.2 | MR: IBS causal direction | 0.50 | High | 0.50 |
| 15 | 10.2 | Cross-trait PRS symptom profiles | 0.50 | High | 0.50 |
| 16 | 11.1 | 76 Long COVID genes phenotype | 0.50 | High | 0.50 |
| 17 | 12.1 | Onset age quantitative GWAS | 0.50 | High | 0.50 |
| 18 | 4.2 | Amitriptyline pharmacogenomics | 0.50 | High | 0.50 |
| 19 | 1.2 | X chromosome analysis | 0.45 | High | 0.45 |
| 20 | 14.1 | rg with ADHD | 0.45 | High | 0.45 |
| 21 | 11.2 | PheWAS at 8 GWS loci | 0.55 | M-High | 0.44 |
| 22 | 7.1 | PRS x family history | 0.50 | M-High | 0.40 |
| 23 | 5.2 | Chromosome-specific heritability | 0.55 | Medium | 0.33 |
| 24 | 7.2 | Sibling-pair cluster concordance | 0.35 | High | 0.32 |
| 25 | 9.1 | UK regional PRS variation | 0.35 | Medium | 0.21 |

---

## Key Observations

1. **All 25 analyses are computable from existing DecodeME data** -- no new recruitment, no new genotyping, no new phenotyping required. Most need only summary statistics and publicly available external GWAS data.

2. **Three analyses stand out as highest priority (CxI >= 0.65):**
   - MR depression --> ME/CFS (destigmatization evidence)
   - Partitioned genetic correlation with IBS (reveals biological basis of strongest rg)
   - Functional annotation heritability partitioning (tests brain-first model at regulatory level)

3. **Several analyses serve dual purpose as quality control:**
   - UK regional variation (9.1) tests population stratification adequacy
   - CCC vs IOM comparison (8.1) tests whether diagnostic criteria cut along genetic boundaries
   - Chromosome-specific heritability (5.2) assesses polygenicity for power calculations

4. **The Mendelian randomization cluster (6.1-6.3) is particularly impactful** because it addresses causal questions that observational epidemiology cannot resolve. The depression MR (6.3) has direct clinical and political implications.

5. **Computational timeline estimate:** Most analyses require 1-5 days of computation per analysis (LDSC, MR, PRS construction are standard pipelines). The full program could be executed in 2-3 months by a single statistical geneticist with access to DecodeME summary statistics and UK Biobank data.
