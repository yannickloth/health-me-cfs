#import "../shared/environments.typ": *

= Genetic and Epigenetic Factors
<ch:genetics-epigenetics>

Genetic predisposition and epigenetic modifications provide the constitutional vulnerability upon which environmental triggers act to produce ME/CFS. While the condition is clearly not a simple Mendelian disorder, converging evidence from family studies, twin research, and molecular genetics demonstrates that heritable factors substantially influence disease susceptibility. The 2025 DecodeME genome-wide association study (n=21,620) represents a watershed moment in understanding the polygenic architecture underlying ME/CFS @DecodeME2025.

Understanding genetic and epigenetic contributions illuminates why only a subset of individuals develop chronic illness following viral infections, traumatic events, or other precipitating factors. The immune abnormalities detailed in Chapter @ch:immune-dysfunction—including NK cell dysfunction, T cell exhaustion, and cytokine dysregulation—reflect genetic variants in immune system genes and epigenetic reprogramming following chronic antigenic stimulation. Similarly, the metabolic dysfunction described in Chapter @ch:energy-metabolism arises in part from genetic variants affecting mitochondrial function and oxidative metabolism, amplified by epigenetic silencing of metabolic genes. Neurological manifestations (Chapter @ch:neurological) may stem from genetic influences on ion channels such as TRPM3, neurotransmitter systems, and blood-brain barrier integrity. Cardiovascular and autonomic dysfunction (Chapter @ch:cardiovascular) shows familial clustering consistent with inherited susceptibility to orthostatic intolerance and dysautonomia.

This chapter examines the genetic architecture of ME/CFS susceptibility, epigenetic modifications that may perpetuate chronic illness, and patterns of gene expression dysregulation across multiple physiological systems. Understanding these constitutional factors is essential for developing personalized therapeutic approaches, identifying at-risk individuals, and elucidating the fundamental mechanisms that distinguish those who recover from acute illness from those who progress to chronic disease.

== Genetic Predisposition
<sec:genetics>

=== Heritability Evidence
<sec:heritability>

Familial clustering and twin studies provide converging evidence that genetic factors substantially influence ME/CFS susceptibility while demonstrating that inheritance follows a complex polygenic pattern rather than simple Mendelian transmission. The gene-environment interaction model best explains the observed patterns: genetic variants establish constitutional vulnerability, but environmental triggers (particularly viral infections) are required for disease manifestation.

==== Twin Studies and Heritability Estimates

Twin studies offer the most rigorous method for partitioning genetic and environmental contributions to disease risk. Monozygotic (identical) twins share 100% of their DNA sequence, while dizygotic (fraternal) twins share approximately 50%. Higher concordance in monozygotic compared to dizygotic twins indicates genetic contribution, with the magnitude of the difference allowing estimation of heritability.

Buchwald et al.\ conducted a population-based twin study using the University of Washington Twin Registry, identifying twin pairs where at least one twin met criteria for chronic fatigue. The study found significantly higher concordance in monozygotic twins (55%) compared to dizygotic twins (19%) for unexplained chronic fatigue, yielding a heritability estimate of approximately $h^2 = 0.51$ (95% CI: 0.37–0.65). When applying more stringent CFS case definitions, monozygotic concordance decreased to approximately 30–40%, but still exceeded dizygotic concordance, suggesting heritability estimates in the range $h^2 = 0.3$–$0.5$ depending on phenotype definition @Buchwald2001.

These moderate heritability estimates indicate that genetic factors explain 30–50% of liability to ME/CFS, with environmental factors and gene-environment interactions accounting for the remainder. The incomplete concordance even in monozygotic twins (55% rather than 100%) demonstrates that genetic susceptibility alone is insufficient for disease development.
Australian twin registry studies corroborate these findings, with concordance patterns consistent with polygenic inheritance and substantial environmental contribution. The moderate heritability is similar to other complex diseases such as type 2 diabetes ($h^2 approx 0.4$–$0.6$) and autoimmune conditions, supporting classification of ME/CFS as a multifactorial disorder arising from interactions between multiple genetic variants and environmental exposures.

==== Familial Aggregation and Relative Risk

Family studies complement twin research by examining disease clustering across multiple generations and family structures. Multiple independent studies document elevated ME/CFS prevalence among first-degree relatives of affected individuals compared to the general population.

Walsh et al.\ conducted a family study examining relatives of ME/CFS probands and found that first-degree relatives had significantly increased risk, though precise relative risk estimates varied depending on diagnostic criteria and ascertainment methods @Walsh2001. The observed familial aggregation persisted after controlling for shared household exposures during childhood, arguing against purely environmental transmission through common viral exposures or psychosocial factors. Families with multiple affected members often show variable clinical presentations, suggesting that shared genetic susceptibility manifests differently depending on individual trigger exposures and additional genetic modifiers.

The pattern of familial clustering shows several notable features. First, affected relatives frequently report different precipitating events (different viral infections, surgeries, traumas), indicating that the inherited component reflects general vulnerability rather than specific pathogen susceptibility. Second, age of onset varies widely among affected family members, suggesting that the genetic liability does not determine timing but rather establishes lifelong susceptibility that may be triggered at any point. Third, affected relatives may show different dominant symptom profiles (some predominantly immunological, others metabolic or neurological), consistent with the hypothesis that shared genetic factors establish broad systemic vulnerability that interacts with individual-specific factors to determine phenotypic expression.

==== Gene-Environment Interaction Model

The gene-environment interaction framework provides the most parsimonious explanation for observed inheritance patterns. Genetic variants establish constitutional susceptibility, but environmental triggers are necessary and often sufficient to precipitate disease in genetically vulnerable individuals. This model explains several key observations that pure genetic or pure environmental models cannot.

The NIH RECOVER study found that 4.5% of COVID-19 survivors developed ME/CFS @Komaroff2023, meaning 95.5% recovered fully despite identical viral exposure. This dramatic variation in outcome following a common environmental trigger strongly implicates genetic factors in determining who progresses from acute infection to chronic illness. Similarly, the well-documented association between infectious mononucleosis and subsequent ME/CFS affects only a minority of those infected with Epstein-Barr virus, despite near-universal infection rates by adulthood in most populations. Giardia lamblia outbreaks provide natural experiments: following the 2004 Bergen, Norway outbreak, approximately 5% of exposed individuals developed chronic fatigue meeting ME/CFS criteria, while 95% recovered completely, again demonstrating genetic influence on chronic sequelae following identical pathogen exposure.

Children of ME/CFS parents inherit elevated risk compared to the general population, but most do not develop the condition. This pattern reflects the polygenic architecture: multiple risk variants segregate through families, with children inheriting various combinations. Some inherit many risk alleles and show high genetic liability, others inherit few and have risk approaching population baseline. Environmental trigger exposure then interacts with this inherited liability: children with high genetic loading may develop ME/CFS following relatively mild infections, while those with low genetic loading may remain unaffected even after severe viral illnesses. Intermediate genetic liability creates vulnerability to severe triggers but resilience against mild ones.

The specific genetic variants inherited may influence which environmental triggers are most pathogenic. For example, children inheriting immune gene variants affecting viral immune responses may be particularly susceptible to viral triggers but less susceptible to non-infectious stressors. Those inheriting metabolic gene variants might be vulnerable to physical or metabolic stressors. This genotype-specific susceptibility to different environmental factors could explain the heterogeneity in precipitating events observed even within affected families.

=== Genetic Variants and Candidate Gene Studies
<sec:genetic-variants>

Before the advent of genome-wide association studies, candidate gene approaches investigated single nucleotide polymorphisms (SNPs) in genes hypothesized to influence ME/CFS pathophysiology. These studies focused on immune system genes, metabolic pathways, neurotransmitter systems, and stress response mechanisms. While candidate gene studies have important methodological limitations—including small sample sizes, multiple testing issues, and publication bias—they have identified several plausible genetic associations that warrant further investigation in larger cohorts.

==== Human Leukocyte Antigen (HLA) Associations

The HLA complex on chromosome 6p21 encodes major histocompatibility complex (MHC) proteins that present antigens to T cells and play a central role in adaptive immunity. HLA alleles show strong associations with autoimmune diseases, and several studies have examined whether specific HLA types predispose to ME/CFS.

Multiple studies have reported associations between ME/CFS and specific HLA class II alleles, particularly HLA-DRB1 and HLA-DQ variants. Several studies have identified increased frequency of specific HLA-DQA1 alleles in ME/CFS patients compared to controls, suggesting a potential role for antigen presentation in disease pathogenesis. Carlo-Stella et al.\ found associations with HLA-DQ3, particularly in patients with post-infectious onset @CarloStella2009. However, these associations have shown inconsistent replication across populations, likely reflecting both genuine population differences in HLA allele frequencies and the polygenic architecture of ME/CFS where HLA contributes modest effect size as one of many susceptibility loci.

The biological plausibility of HLA associations is strong. HLA molecules determine which viral and self-peptides are presented to T cells, influencing both antiviral immune responses and potential autoreactivity. Specific HLA alleles might predispose to inefficient viral clearance, prolonged antigenic stimulation, or molecular mimicry leading to autoimmune sequelae. The connection to post-infectious onset supports this mechanism: individuals with particular HLA types may mount ineffective immune responses to triggering infections, permitting viral persistence or chronic immune activation.

==== Immune System Gene Variants

Beyond HLA, numerous genes regulating innate and adaptive immunity have been examined as ME/CFS susceptibility loci.

Cytokine and cytokine receptor genes represent logical candidates given the well-documented cytokine dysregulation in ME/CFS (Chapter @ch:immune-dysfunction). Polymorphisms in TNF-$alpha$ promoter region (particularly the $-308$ G/A variant associated with higher TNF-$alpha$ production) have been investigated, with some studies reporting increased frequency of high-expression alleles in ME/CFS patients. Variants in IL-10 (an anti-inflammatory cytokine), IL-6, and IL-1 gene clusters have also been examined. Goertzel et al.\ reported associations with variants affecting IL-10 expression, consistent with the hypothesis that impaired anti-inflammatory responses permit chronic inflammation @Goertzel2006.

Toll-like receptor (TLR) genes, which recognize pathogen-associated molecular patterns and initiate innate immune responses, have shown suggestive associations. TLR4 polymorphisms affecting responsiveness to bacterial lipopolysaccharide may influence susceptibility to post-infectious ME/CFS. Pattern recognition receptor variants could plausibly affect both initial pathogen detection and subsequent inflammatory cascades.

Complement system genes have received less attention but merit investigation given emerging evidence for complement dysregulation in ME/CFS. Genetic variants affecting complement activation thresholds or regulatory protein function might predispose to excessive inflammatory responses or impaired clearance of immune complexes.

==== Metabolic and Mitochondrial Gene Variants

The profound metabolic dysfunction documented in ME/CFS (Chapter @ch:energy-metabolism) suggests that genetic variants affecting cellular energetics may contribute to disease susceptibility.

Mitochondrial DNA (mtDNA) variants have been examined in several studies, though results remain inconclusive. Unlike nuclear DNA, mtDNA is maternally inherited and shows high mutation rates. Some studies have reported increased mtDNA deletions or specific haplogroup associations in ME/CFS, but replication has been inconsistent. The biological rationale remains strong: mtDNA encodes critical components of the electron transport chain, and variants reducing mitochondrial efficiency could predispose to bioenergetic crisis under conditions of increased demand or oxidative stress.

Nuclear genes encoding mitochondrial proteins represent equally plausible candidates. Recent evidence identifies WASF3 pathway dysregulation in ME/CFS @Syed2025, potentially affecting cellular energy production capacity. WASF3 is involved in actin cytoskeleton regulation and mitochondrial dynamics; genetic variants affecting its expression or function might impair mitochondrial quality control mechanisms or cellular energy distribution.

Genes involved in glucose metabolism, fatty acid oxidation, and oxidative stress responses have shown suggestive associations in small studies. Polymorphisms affecting glycolytic enzyme expression, carnitine transport (relevant for fatty acid metabolism), or antioxidant systems (superoxide dismutase, catalase, glutathione pathways) could plausibly influence metabolic reserve and stress tolerance.

<obs:mthfr-c677t-candidate>
The C677T polymorphism (rs1801133) in the methylenetetrahydrofolate reductase (_MTHFR_)
gene is among the most common functional single-nucleotide polymorphisms in the human genome and
reduces MTHFR enzyme activity to approximately 67% in heterozygotes and 25% in TT
homozygotes @Zarembska2023. This impairs conversion of folate to 5-methyltetrahydrofolate,
the methyl donor required for homocysteine remethylation to methionine. Consequently, C677T
carriers are predisposed to elevated homocysteine under conditions of folate or B12 insufficiency.

Disrupted one-carbon metabolism from MTHFR dysfunction affects not only cytosolic methylation but
also mitochondrial DNA methylation, with potential downstream effects on oxidative phosphorylation
(OXPHOS) gene expression @Zarembska2023. A single case report illustrates the potential
clinical extreme of this pathway: an adolescent with compound heterozygous MTHFR mutations,
markedly elevated serum homocysteine (86 $mu$mol/L), and comorbid ME/CFS, postural tachycardia
syndrome (POTS), and narcolepsy @Liao2021 (note: n=1; cannot establish causality).

The Regland 2015 study found that folate dosing matched to MTHFR genotype was associated with
better B12/folate treatment response in ME/FM patients, suggesting pharmacogenomic
relevance @Regland2015.

(Certainty: Medium-High for biochemistry; Low for ME/CFS-specific association.)
#open-question(title: [MTHFR Prevalence in ME/CFS])[
Whether the MTHFR C677T TT genotype is overrepresented in ME/CFS relative to the general
population has not been established by appropriately powered genetic association studies.
] <oq:mthfr-prevalence-mecfs>

==== Ion Channel and Neurotransmitter System Genes

Neurological symptoms in ME/CFS (Chapter @ch:neurological) and the documented dysfunction of transient receptor potential melastatin 3 (TRPM3) ion channels suggest genetic variants in ion channel genes as susceptibility factors.

TRPM3 dysfunction represents one of the most mechanistically compelling genetic associations. Marshall-Gradisnik and colleagues have demonstrated reduced TRPM3 function in ME/CFS patients' natural killer cells and B cells, with impaired calcium influx following TRPM3 activation @MarshallGradisnik2016. While these functional studies demonstrate acquired TRPM3 dysfunction, genetic variants in the TRPM3 gene (particularly regulatory variants affecting expression levels) could establish constitutional vulnerability. TRPM3 channels regulate calcium signaling, which is essential for immune cell function, neurotransmitter release, and cellular metabolism. Reduced baseline TRPM3 expression due to genetic variants might create a narrower functional reserve, rendering individuals more susceptible to further acquired dysfunction.

Other ion channel genes merit investigation. Voltage-gated calcium channels, potassium channels regulating neuronal excitability, and acid-sensing ion channels (ASICs) involved in pain perception and autonomic regulation all represent plausible candidates. Channelopathies—diseases caused by ion channel dysfunction—often present with episodic symptoms, fatigue, and autonomic features resembling aspects of ME/CFS.

Neurotransmitter system genes, particularly those affecting serotonin, norepinephrine, and dopamine metabolism, have been examined given the prominent cognitive and mood symptoms. The catechol-O-methyltransferase (COMT) gene, which catabolizes catecholamines, exists in high-activity (Val158) and low-activity (Met158) variants. Some studies have reported associations with the Met158 variant, which would reduce catecholamine degradation and potentially affect stress responses and cognitive function. Serotonin transporter (5-HTTLPR) polymorphisms affecting serotonin reuptake have shown inconsistent associations.

==== Autonomic and Cardiovascular Genes

The high prevalence of orthostatic intolerance and postural orthostatic tachycardia syndrome (POTS) in ME/CFS patients (co-occurring in approximately 60%) @Natelson2022 suggests genetic overlap with autonomic dysfunction syndromes.

Adrenergic receptor genes, particularly $beta$-adrenergic receptor variants affecting cardiac responsiveness to catecholamines, represent logical candidates. The $beta_1$-adrenergic receptor gene (ADRB1) shows common polymorphisms affecting receptor density and signaling efficiency. Variants that alter cardiovascular responsiveness to sympathetic activation could predispose to orthostatic intolerance, particularly when combined with other ME/CFS-related pathophysiology such as reduced blood volume or impaired baroreceptor function.

Genes affecting renin-angiotensin-aldosterone system (RAAS) function, which regulates blood volume and vascular tone, could influence susceptibility to orthostatic symptoms. ACE (angiotensin-converting enzyme) gene variants, particularly the insertion/deletion polymorphism affecting ACE levels, might interact with other cardiovascular genetic factors to determine orthostatic tolerance.

==== Limitations of Candidate Gene Studies

#warning-env(title: [Candidate Gene Study Limitations])[
Most candidate gene studies in ME/CFS suffer from serious methodological limitations that prevent definitive conclusions. Common issues include small sample sizes (often n \< 100 cases), which provide insufficient statistical power to detect modest genetic effects; inadequate correction for multiple testing, leading to false positive findings; publication bias favoring positive associations; and lack of independent replication in separate cohorts. Many reported associations have not been replicated, and effect sizes when reported are often implausibly large, suggesting winner's curse (overestimation of effect size in discovery samples).

The transition to genome-wide association studies addresses many of these limitations through systematic interrogation of common genetic variation across the entire genome, adequate sample sizes to detect realistic effect sizes, stringent correction for multiple testing, and consortia-based designs facilitating replication.
]

=== Genome-Wide Association Studies
<sec:gwas>

Genome-wide association studies (GWAS) represent a paradigm shift from candidate gene approaches, systematically interrogating millions of common genetic variants across the entire genome to identify disease-associated loci without prior hypotheses about specific genes. GWAS have successfully identified genetic risk factors for numerous complex diseases including type 2 diabetes, inflammatory bowel disease, schizophrenia, and rheumatoid arthritis. For ME/CFS, GWAS has been hindered by the challenges of patient recruitment, diagnostic heterogeneity, and the need for large sample sizes to detect the modest effect sizes typical of complex polygenic diseases.

==== DecodeME: The Largest ME/CFS GWAS

#achievement(title: [DecodeME GWAS Findings])[
The DecodeME study represents the largest genetic investigation of ME/CFS to date, with over 15,000 ME/CFS patients contributing DNA samples, compared against population controls through the UK Biobank and other cohorts @DecodeME2025. This large sample size provides statistical power to detect genetic variants with realistic effect sizes (odds ratios of 1.1–1.3) that reach genome-wide significance ($p < 5 times 10^(-8)$).

DecodeME employed rigorous case ascertainment through physician diagnosis and self-report with verification, accepting patients meeting CCC (Canadian Consensus Criteria), ICC (International Consensus Criteria), or IOM (Institute of Medicine) diagnostic criteria. This inclusive approach maximizes sample size while acknowledging diagnostic heterogeneity, with sensitivity analyses examining whether genetic architecture differs across diagnostic subtypes.

The study's scale enables several key analyses beyond simple case-control association: estimation of SNP heritability (the proportion of ME/CFS liability explained by common genetic variants), genetic correlation analyses comparing ME/CFS to other conditions, polygenic risk score development, and gene-based and pathway enrichment tests identifying biological systems enriched for associated variants.
] <ach:decodeme-gwas>

#warning-env(title: [Replication Status: Not Yet Replicated (By Design)])[
DecodeME is the first adequately powered ME/CFS GWAS. The genome-wide significant loci identified await replication by design—GWAS discovery cohorts require independent replication cohorts to confirm true associations versus false positives. No independent replication cohort of comparable size currently exists, though international collaborations (e.g., with US ME/CFS Clinician Coalition biobanks) may provide future replication opportunities.
]

===== SNP Heritability
<sec:snp-heritability>

DecodeME estimated SNP-based heritability at $h^2_"SNP" = 0.095$ (9.5%) on the liability scale via LD Score Regression @DecodeME2025 @MECFSScience2025decodeme. This is modest compared to schizophrenia ($h^2_"SNP" approx 0.26$), Crohn's disease ($approx 0.24$), or type 1 diabetes ($approx 0.22$), but close to the mean heritability across all UK Biobank traits ($h^2 approx 0.10$) and substantially higher than fibromyalgia ($h^2_"SNP" approx 0.01$). The gap between twin-study heritability ($h^2 approx 0.3$--$0.5$; Section @sec:heritability) and SNP heritability reflects the "missing heritability" expected for complex traits: rare variants, structural variants, gene--gene interactions, and epigenetic contributions are not captured by common-variant GWAS arrays.

===== The Eight Genome-Wide Significant Loci
<sec:decodeme-loci>

DecodeME identified eight loci reaching genome-wide significance ($p < 5 times 10^(-8)$) across more than 8 million tested SNPs @DecodeME2025 @MECFSScience2025decodeme.#footnote[mecfsscience.org is an independent science communication website that provides detailed analyses of ME/CFS research. It is not a peer-reviewed journal; its analyses represent expert commentary and should be evaluated as such. Where this chapter cites mecfsscience.org, the underlying primary data come from the peer-reviewed DecodeME publications.] All eight are common variants (minor allele frequency 13--63%) with small individual effect sizes (odds ratios 0.93--1.10), consistent with the polygenic architecture expected for complex diseases. The prevalence difference between patients and controls at each locus is only 1--2 percentage points---for example, the chr17 lead SNP is present in 34.7% of ME/CFS cases versus 32.9% of controls @MECFSScience2025decodeme. These eight loci represent the tip of a polygenic iceberg: hundreds or thousands of additional variants likely contribute sub-threshold effects.

The strongest signal by far is on chromosome 20 ($-log_10 p = 11.02$, OR $= 1.095$) in a region containing three candidate genes: _ARFGEF2_ (vesicle trafficking), _CSE1L_ (nuclear transport), and _STAU1_ (mRNA transport)---all highlighted by MAGMA gene-based testing @MECFSScience2025decodeme2. Other genome-wide significant loci implicate _CA10_ (chr17; CNS development, chronic pain), _UNC13C_ (chr15; glutamatergic synaptic transmission), and _OLFM4_ (chr13; neural development, innate immunity) @DecodeME2025 @MECFSScience2025decodeme2.

A critical interpretive point: small GWAS effect sizes do not predict therapeutic utility. As analysts at mecfsscience.org note, GWAS effect sizes have not predicted drug development success---_HMGCR_ variants have tiny GWAS effects, yet statins (HMGCR inhibitors) produce substantial clinical benefit @MECFSScience2025decodeme @King2024gwas_drugs. That said, HMGCR is the exception rather than the rule: more than 90% of GWAS-nominated drug targets fail in clinical development, so small genetic effect sizes remain a weak basis for therapeutic optimism without additional functional validation. Moreover, because DNA is fixed at birth, genetic associations are not confounded by illness-related changes (deconditioning, medication use, sleep disruption), making them stronger evidence for causal pathways than most ME/CFS biomarker studies.

===== Gene Prioritisation and Fine-Mapping
<sec:decodeme-genes>

Most GWAS signals lie in non-coding regions, necessitating gene prioritisation through expression quantitative trait locus (eQTL) mapping, tissue expression analysis, and proximity-based inference @MECFSScience2025decodeme2. DecodeME used Genotype-Tissue Expression (GTEx) project data to correlate lead SNPs with gene expression across tissues. A key limitation is that only approximately 40% of GWAS signals can be matched to specific genes via eQTL approaches.

Fine-mapping of the eight significant loci plus sub-threshold hits ($p < 5 times 10^(-7)$) identifies three convergent biological themes @MECFSScience2025decodeme2:

*Neuronal development and synaptic function.* The clearest and most consistent signal across DecodeME loci points to the brain. MAGMA gene-set analysis found that all significantly enriched tissues were brain regions @MECFSScience2025decodeme. Specific genes include:

    - _CA10_ (chr17): role in CNS development; previously associated with insomnia, chronic pain, and restless legs syndrome
    - _SHISA6_ (chr17, sub-threshold): excitatory synaptic transmission at glutamatergic synapses; associated with sleep duration and insomnia
    - _SOX6_ (chr11, sub-threshold): required for normal CNS development
    - _LRRC7_ (chr1, sub-threshold): regulation of neuron projection development; associated with depression, educational attainment
    - _DCC_ (chr18, sub-threshold): mediates axon guidance of neuronal growth cones; associated with insomnia, pain, depression, autism, schizophrenia
    - _UNC13C_ (chr15): predicted involvement in glutamatergic synaptic transmission
    - _BARHL2_ (chr1, sub-threshold): neuron generation and axon extension

The convergence of these genes on neuronal communication and synaptic function is notable. Cross-referencing with the GWAS Catalog reveals that several of these genes have been independently associated with insomnia, depression, and chronic pain in other GWAS---conditions that share substantial clinical overlap with ME/CFS @MECFSScience2025decodeme2. According to the mecfsscience.org analysis, _OLFM4_ and _DCC_ were also identified in a 2025 fibromyalgia GWAS preprint, though the specific DNA signals at these loci differ between the two conditions, suggesting the same genes may be involved through different regulatory mechanisms @MECFSScience2025decodeme2.

*Immune function (ambiguous).* Several loci contain immune-relevant genes, but gene-dense regions create assignment ambiguity @MECFSScience2025decodeme2:

    - _RABGAP1L_ (chr1): involved in bacterial expulsion from cells and limiting viral replication; however, this locus contains 11 candidate genes
    - _BTN2A2_ (chr6): butyrophilin family gene in the MHC region, packed with immune genes
    - _TAOK3_ (chr12, proximity-only inference; not in DecodeME's prioritised gene list): role in T-cell activation, linked to lupus; lies closest to the chr12 signal
    - _HLA-DQA1\*05:01_: associated with ME/CFS at genome-wide significance, but the HLA region is notoriously difficult to fine-map; further analyses planned

*Autophagy and intracellular transport.* An unexpected signal emerged around cellular quality control mechanisms @MECFSScience2025decodeme2:

    - _FBXL4_ (chr6, sub-threshold; gene assignment not definitive): involved in mitophagy (selective autophagy of mitochondria); La Trobe University plans further exploration
    - _CCPG1_ (chr15): facilitates ER-phagy (endoplasmic reticulum autophagy)
    - _ARFGEF2_, _CSE1L_, _STAU1_ (chr20, the strongest locus): all involved in vesicle trafficking and intracellular transport

The autophagy signal is intriguing given the well-documented mitochondrial dysfunction in ME/CFS (Chapter @ch:energy-metabolism). A possible mechanistic connection---that genetically impaired mitophagy could permit accumulation of damaged mitochondria, contributing to bioenergetic crisis---is formalised as Hypothesis @hyp:mitophagy-vulnerability below.

===== Convergence with Rare-Variant Studies

As reported by mecfsscience.org, the Stanford Mark Snyder laboratory independently published a preprint (2025) using a fundamentally different approach: instead of common variants, they studied rare loss-of-function variants using a neural network trained on biological data @MECFSScience2025decodeme2. Their risk genes---including _NLGN2_ and _SYNGAP1_---are reported to be involved in synaptic function, aligning with the DecodeME common-variant findings. If confirmed, this convergence of two independent methodologies on neuronal communication genes would substantially strengthen the case that brain-related genetic pathways contribute to ME/CFS susceptibility. The planned SequenceME study will specifically target rare variants (minor allele frequency $< 1%$), which may show larger, clearer effects than the common variants captured by DecodeME.

===== Confounding and Robustness

DecodeME restricted analysis to British participants with European ancestry and corrected for population stratification using PCA with the first 20 principal components, achieving a genomic inflation factor of 1.066 (close to the ideal 1.0), indicating minimal confounding @MECFSScience2025decodeme2. A potential concern is symptom confounding: several implicated genes have prior associations with depression, insomnia, and pain. These associations could reflect genuine shared biology (common neural pathways disrupted in ME/CFS and these conditions) or confounding if control groups contain undiagnosed individuals with these symptoms. The DecodeME team plans future analyses testing whether associations hold in ME/CFS patients without comorbid depression, using the study's detailed questionnaire data.

==== Genetic Correlations with Other Conditions
<sec:genetic-correlations>

DecodeME computed genetic correlations ($r_g$) via LD Score Regression against 3,167 traits in the UK Biobank BIGA database @DecodeME2025 @MECFSScience2025decodeme. The results are notable for what they include and what they exclude.

The strongest genetic correlations (all Bonferroni-corrected for 3,167 comparisons; threshold $approx 1.6 times 10^(-5)$) are with functional and symptom-based conditions:

    - Irritable bowel syndrome: $r_g = 0.75$ ($p = 0.00015$)
    - Self-reported chronic fatigue syndrome: $r_g = 0.70$ ($p = 0.00005$)
    - Sleeping too much: $r_g = 0.66$ ($p = 0.00028$)
    - Depression (professionally diagnosed): $r_g = 0.60$ ($p < 0.00001$)
    - Amitriptyline use: $r_g = 0.61$ ($p < 0.00001$)
    - Recent tiredness/low energy: $r_g = 0.61$ ($p < 0.00001$)
    - Spondylosis: $r_g = 0.59$ ($p = 0.016$; nominally significant but does not survive strict Bonferroni correction)

The high correlation with IBS ($r_g = 0.75$) is consistent with the well-documented clinical overlap and may reflect shared autonomic, gut--brain axis, or mast cell pathways. The depression correlation ($r_g = 0.60$) does not imply that ME/CFS is a depressive disorder; rather, shared genetic variants likely affect common neurological substrates (sleep regulation, pain processing, fatigue signalling) that are disrupted in both conditions through different downstream mechanisms. Childhood asthma shows a modest correlation ($r_g = 0.31$; p-value not reported as Bonferroni-significant), consistent with immune pathway involvement @MECFSScience2025decodeme.

#limitation(title: [Genetic Correlation $eq.not$ Shared Aetiology])[
Genetic correlation measures shared common-variant architecture, not shared causal mechanisms. Two conditions can show high $r_g$ because they share upstream risk variants that diverge into different downstream pathologies. The $r_g = 0.60$ with depression, for example, may reflect that neuronal genes affecting synaptic function (such as those identified at DecodeME loci) contribute to both conditions through different circuits. Critically, ME/CFS shows *no significant genetic correlation* with classic autoimmune diseases: multiple sclerosis, rheumatoid arthritis, Crohn's disease, type 1 diabetes, or type 2 diabetes @MECFSScience2025decodeme. This absence challenges hypotheses positioning ME/CFS as primarily an autoimmune condition and suggests that any autoimmune component operates through mechanisms genetically distinct from established autoimmune diseases.
]

==== Polygenic Risk Scores

Polygenic risk scores (PRS) aggregate the effects of thousands or millions of genetic variants into a single quantitative measure of inherited liability. PRS can identify individuals at high genetic risk (top decile of PRS distribution), who may benefit from preventive interventions, or individuals at low genetic risk despite environmental exposures. For ME/CFS, PRS applications include risk stratification, mechanistic subtyping, and prediction.

DecodeME could enable development of ME/CFS polygenic risk scores, though none has yet been tested for clinical utility.

#open-question(title: [ME/CFS Polygenic Risk Score Clinical Utility])[

Beyond individual risk prediction, PRS may also resolve the longstanding subtype problem in ME/CFS. If patients with high neuronal-gene PRS differ clinically from those with high autophagy-gene or immune-gene PRS, this would enable biologically coherent subtyping that could transform clinical trial design from "one size fits all" to pharmacogenomic stratification (see Open Question @oq:genetic-subtypes, Chapter @ch:integrative-models, and proposed study design in Chapter @ch:proposed-studies).
Several key questions remain untested: Does high PRS predict which individuals develop ME/CFS following infectious mononucleosis or COVID-19? Do patients with high versus low PRS show different clinical phenotypes, treatment responses, or prognoses? Can PRS combined with environmental risk factors improve prediction compared to either alone? The clinical utility of PRS depends on effect size distribution. If ME/CFS liability reflects thousands of variants each contributing tiny effects, PRS discriminative ability may be modest (for illustration, AUC approximately 0.6--0.65), limiting clinical utility. If a subset of variants have larger effects, PRS performance improves. Even modest predictive ability could have clinical value if the risk gradient between high and low PRS is sufficiently large to guide post-exposure monitoring and early intervention.
]

==== Earlier GWAS Attempts and Methodological Challenges

Prior to DecodeME, several smaller GWAS attempts were conducted with sample sizes of 200–500 cases. These studies were severely underpowered to detect realistic effect sizes for complex disease variants and produced no genome-wide significant findings that replicated. This failure reflects general principles of GWAS: detecting odds ratios of 1.1–1.2 (typical for complex disease variants) requires thousands to tens of thousands of cases, not hundreds.

Small GWAS can still provide value through polygenic analyses aggregating information across many sub-threshold variants and through contributing data to meta-analyses. However, their inability to identify genome-wide significant loci frustrated early genetic investigation of ME/CFS and highlighted the necessity of large collaborative efforts.
Several methodological challenges complicate ME/CFS GWAS beyond simply achieving adequate sample size. Diagnostic heterogeneity creates noise: if different diagnostic criteria capture partially overlapping patient populations with different genetic architectures, this heterogeneity reduces power. Potential solutions include stratified analyses by diagnostic criteria and phenotype refinement using quantitative traits (severity scores, specific symptoms) rather than binary case-control status.

Population stratification—systematic ancestry differences between cases and controls—can produce spurious associations. Standard GWAS methods correct for stratification using principal components analysis of genetic data, ensuring cases and controls are matched for genetic ancestry. For ME/CFS, international collaborative GWAS must carefully model ancestry structure to avoid confounding.

The missing heritability problem—the gap between twin study heritability estimates and SNP heritability from GWAS—arises from several sources. Rare variants (minor allele frequency $< 1%$) not well captured by standard GWAS arrays may contribute to liability. Structural variants, copy number variations, and epigenetic modifications are not directly tested in GWAS. Gene-gene and gene-environment interactions may contribute to liability but are difficult to detect with current methods. Nevertheless, GWAS SNP heritability typically explains 20–50% of twin study heritability for complex diseases, providing genome-wide validation of genetic contribution while highlighting areas for future investigation.

==== Implications for Understanding ME/CFS Pathophysiology

DecodeME's findings reshape understanding of ME/CFS genetic architecture in three ways. First, the overwhelming convergence on brain-expressed genes---confirmed by both MAGMA tissue enrichment and individual gene characterisation---suggests neuronal dysfunction as a genetically grounded component of ME/CFS, rather than merely a downstream consequence of peripheral pathology @DecodeME2025 @MECFSScience2025decodeme @MECFSScience2025decodeme2. The glutamatergic synapse genes (_SHISA6_, _UNC13C_) are particularly noteworthy given the neurological abnormalities described in Chapter @ch:neurological, where altered neurotransmitter dynamics have been observed.

Second, the absence of genetic correlation with established autoimmune diseases constrains the autoimmune hypothesis: if ME/CFS involved the same genetic liability as MS, RA, or T1D, this would appear as significant $r_g$. The autoimmune features documented in Chapter @ch:immune-dysfunction may therefore represent a phenocopy driven by different genetic pathways---perhaps the immune-ambiguous loci identified in DecodeME (Section @sec:decodeme-genes) operating through novel mechanisms rather than classical autoimmunity.

Third, the autophagy/mitophagy genes (_FBXL4_, _CCPG1_) provide a genetic link to the mitochondrial dysfunction documented in Chapter @ch:energy-metabolism --- the possible mechanistic implications are formalised in Hypothesis @hyp:mitophagy-vulnerability below.

GWAS also enables Mendelian randomisation analyses testing causal relationships between exposures and ME/CFS. Using genetic variants as instrumental variables, researchers can test whether genetically predicted inflammatory markers, vitamin D levels, or other biomarkers causally contribute to disease liability, distinguishing causation from the reverse causation and confounding that plague observational ME/CFS studies.

#hypothesis(title: [Genetic Mitophagy Vulnerability: The Accumulation Threshold Model])[

*Certainty: 0.35.* The DecodeME identification of mitophagy (_FBXL4_) and ER-phagy (_CCPG1_) genes at genome-wide significant or near-significant loci, combined with the well-documented mitochondrial dysfunction in ME/CFS (Chapter @ch:energy-metabolism), suggests a two-hit model of bioenergetic collapse.

Individuals carrying risk variants in autophagy genes have constitutionally reduced capacity to clear damaged mitochondria. Under normal conditions, this impairment is subclinical---the rate of mitochondrial damage does not exceed the reduced clearance capacity. However, an acute metabolic stress (viral infection, surgery, prolonged physical/psychological stress) produces a burst of mitochondrial damage that overwhelms the already-reduced clearance system. Damaged mitochondria accumulate past a critical threshold, producing a self-reinforcing cycle: dysfunctional mitochondria generate excess reactive oxygen species, which damage neighbouring mitochondria, further increasing the clearance burden.

If this hypothesis is correct, then: (1) ME/CFS patients should show elevated markers of impaired mitophagy (accumulation of mitochondrial DNA lesions, reduced PINK1/Parkin pathway activity, increased mitochondrial fragmentation) compared to healthy controls matched for _FBXL4_ genotype; (2) the severity of mitochondrial dysfunction should correlate with _FBXL4_ and _CCPG1_ genotype in a dose-dependent manner; (3) interventions that enhance mitophagy (e.g., urolithin A, NAD+ precursors, exercise-mimetic compounds that activate AMPK without requiring physical exertion) should preferentially benefit patients with autophagy risk variants; (4) the bioenergetic crisis should be partially reversible if the accumulated damaged mitochondria can be cleared, predicting that mitophagy-enhancing therapies could restore function even in established disease.

*Treatment implications:* Compounds proposed to enhance mitophagy (urolithin A, spermidine, NAD+ precursors such as nicotinamide riboside) could be stratified by _FBXL4_/_CCPG1_ genotype, enabling a pharmacogenomic approach to ME/CFS treatment. This represents a testable bridge between the genetic findings of DecodeME and the metabolic dysfunction documented by exercise physiology studies.

*Limitations:* The _FBXL4_ locus is sub-threshold in the main DecodeME analysis and the gene assignment is not definitive. No study has directly measured mitophagy capacity in ME/CFS patients. The two-hit threshold model is conceptually appealing but has not been tested in any chronic fatigue condition. The proposed interventions (urolithin A, NAD+ precursors) have not been trialled specifically in ME/CFS with genotype stratification.
] <hyp:mitophagy-vulnerability>

== Epigenetic Modifications
<sec:epigenetics>

Epigenetic modifications—chemical alterations to DNA and chromatin that regulate gene expression without changing DNA sequence—provide a plausible mechanism for how environmental triggers such as viral infections could produce lasting changes in cellular function. Unlike genetic variants that are inherited and static, epigenetic modifications are dynamic, potentially reversible, and responsive to environmental stimuli. In ME/CFS, epigenetic changes may explain how transient infections or stressors produce chronic alterations in immune function, metabolism, and neurological status.

The epigenetic landscape encompasses multiple interconnected mechanisms. DNA methylation silences gene expression by adding methyl groups to cytosine bases, particularly at CpG dinucleotides in gene promoters. Histone modifications alter chromatin structure through acetylation, methylation, phosphorylation, and other post-translational modifications of histone proteins, making genes more or less accessible to transcription machinery. MicroRNAs regulate gene expression post-transcriptionally by binding messenger RNAs and promoting their degradation or blocking translation. These mechanisms interact: DNA methylation patterns influence histone modifications, which in turn affect microRNA expression, creating integrated regulatory networks.

For ME/CFS, the epigenetic hypothesis proposes that triggering infections or stressors induce epigenetic reprogramming in immune cells, metabolic tissues, or neurological systems, and that this reprogramming persists after the trigger resolves, maintaining pathological cellular states. This model may explain chronicity without requiring persistent infection and suggests potentially reversible mechanisms amenable to therapeutic intervention.

=== DNA Methylation
<sec:dna-methylation>

DNA methylation represents the most stable and well-characterized epigenetic modification, involving addition of methyl groups to cytosine bases primarily at CpG sites (cytosine-guanine dinucleotides). Gene promoters rich in CpG sites (CpG islands) are normally unmethylated, allowing transcription; methylation of promoter CpG islands typically silences gene expression. Conversely, gene body methylation and methylation of repetitive elements may have different functional consequences.

==== Global Methylation Patterns

Several studies have examined genome-wide DNA methylation patterns in ME/CFS patients compared to healthy controls using methylation array technologies that interrogate hundreds of thousands of CpG sites across the genome.

de Vega et al.\ conducted epigenome-wide association studies (EWAS) examining DNA methylation in blood samples from ME/CFS patients and controls @deVega2018. These studies identified differentially methylated positions (DMPs) and differentially methylated regions (DMRs) associated with ME/CFS status, with several affected genes showing biological plausibility. Effect sizes are typically modest (methylation differences of 2–10%), consistent with complex disease epigenetics where subtle changes across many loci create cumulative functional effects.

Longitudinal studies examining methylation stability over time show that ME/CFS-associated methylation patterns persist, suggesting stable epigenetic reprogramming rather than transient stress responses. However, within-person variability has not been extensively characterized, leaving open questions about whether methylation patterns fluctuate with symptom severity or remain static.
Global methylation analyses reveal both hypomethylation and hypermethylation in ME/CFS, with different genes showing methylation changes in opposite directions. This bidirectional pattern contrasts with cancer epigenetics, where global hypomethylation and focal hypermethylation at tumor suppressors predominate. The ME/CFS methylation signature suggests dysregulated methylation machinery rather than unidirectional change, possibly reflecting altered activity of DNA methyltransferases (DNMTs) or ten-eleven translocation (TET) demethylases.

==== Gene-Specific Methylation Changes

Specific genes showing differential methylation in ME/CFS cluster in functionally relevant pathways, providing biological validation beyond statistical association.

Immune genes show notable methylation changes consistent with immune dysfunction phenotypes. Genes encoding cytokines, chemokines, and immune receptors demonstrate altered methylation in several studies. Hunter et al.\ using the EpiSwitch platform identified methylation signatures involving IL-2 pathway genes @Hunter2025, consistent with the T cell dysfunction documented in Chapter @ch:immune-dysfunction. Methylation changes in immune regulatory genes could establish stable alterations in cytokine production capacity or immune cell responsiveness, contributing to chronic inflammation or immune exhaustion.

Metabolic genes affecting mitochondrial function, glucose metabolism, and oxidative stress responses show differential methylation. Given the profound metabolic dysfunction in ME/CFS (Chapter @ch:energy-metabolism), epigenetic silencing of metabolic genes represents a plausible mechanism for persistent bioenergetic impairment. Methylation of genes encoding electron transport chain components, glycolytic enzymes, or oxidative phosphorylation machinery could reduce metabolic capacity even without genetic mutations.

Neurological and neurotransmitter genes demonstrate methylation changes that may relate to cognitive dysfunction and autonomic symptoms. Genes affecting neurotransmitter synthesis, reuptake, or receptor expression show altered methylation in some studies, potentially contributing to the neurological manifestations described in Chapter @ch:neurological.

==== Functional Consequences and Validation

#limitation(title: [Methylation $eq.not$ Functional Consequence])[
Observing differential methylation does not establish functional consequence; methylation changes must alter gene expression to affect phenotype. Many differentially methylated sites have no demonstrated effect on transcription, and whole-blood methylation studies obscure cell-type-specific changes. Until methylation data are integrated with matched gene expression data in the same cohorts, differential methylation in ME/CFS remains a correlational finding.
]

Integration of methylation data with gene expression data addresses this question: do genes with altered methylation show corresponding changes in mRNA levels?

Several studies have performed integrative analyses correlating methylation with expression. For genes showing promoter hypermethylation, reduced mRNA expression would be expected; promoter hypomethylation should associate with increased expression. Many ME/CFS-associated methylation changes show the expected direction of expression change, supporting functional relevance. However, some differentially methylated genes show no expression change, possibly reflecting compensatory mechanisms, context-dependent effects (methylation may affect expression only in specific cell types or conditions), or methylation in regulatory regions outside proximal promoters.

Cell-type heterogeneity complicates interpretation. Whole blood methylation studies measure average methylation across multiple cell types (lymphocytes, monocytes, neutrophils, others), potentially obscuring cell-type-specific changes. If methylation changes occur predominantly in one cell type (for example, natural killer cells), analyzing bulk blood dilutes the signal. Future studies using cell-type-specific methylation profiling or single-cell technologies will better resolve this issue.

==== Methylation Age and Biological Aging

DNA methylation patterns change predictably with chronological age, enabling construction of epigenetic clocks that estimate biological age from methylation profiles. Accelerated epigenetic aging—biological age exceeding chronological age—associates with numerous age-related diseases and mortality risk.

Preliminary evidence suggests ME/CFS patients may show accelerated epigenetic aging, with methylation-based age estimates exceeding actual age. This finding, if replicated in larger cohorts, would support the hypothesis that ME/CFS involves accelerated biological aging processes affecting multiple physiological systems. The mechanisms underlying epigenetic age acceleration in ME/CFS remain unclear but could involve chronic oxidative stress, mitochondrial dysfunction, or chronic inflammation, all of which affect methylation patterns and associate with aging.

=== Histone Modifications
<sec:histone-modifications>

Histone proteins package DNA into nucleosomes, the fundamental units of chromatin structure. Post-translational modifications of histone tails—including acetylation, methylation, phosphorylation, ubiquitination, and others—regulate chromatin accessibility and gene expression. Histone acetylation generally activates transcription by relaxing chromatin structure, while histone methylation can either activate or repress transcription depending on which residue is modified and the degree of methylation.

==== Chromatin Remodeling in ME/CFS

Evidence for altered histone modifications in ME/CFS comes primarily from studies of immune cells, where chromatin remodeling regulates immune activation, differentiation, and exhaustion states.

#hypothesis(title: [Epigenetic Basis of T Cell Exhaustion])[
T cell exhaustion—a state of progressive functional impairment occurring during chronic antigen exposure—involves characteristic epigenetic reprogramming that maintains exhaustion even after antigen removal. Exhausted T cells demonstrate specific histone modification patterns including reduced H3K27ac (active enhancer mark) at effector genes and increased H3K27me3 (repressive mark) at genes required for T cell function @iu2024tcell_exhaustion.

If ME/CFS involves chronic T cell exhaustion as discussed in Chapter @ch:immune-dysfunction, the epigenetic signatures of exhaustion should be detectable. T cells from ME/CFS patients might show chromatin states characteristic of exhaustion: closed chromatin at effector cytokine loci (IFN-$gamma$, TNF-$alpha$), reduced accessibility at proliferation genes, and altered expression of exhaustion markers (PD-1, TIM-3, LAG-3). These epigenetic states would perpetuate T cell dysfunction even if the original triggering antigen is cleared, explaining chronicity and providing therapeutic targets (epigenetic modifying drugs might reverse exhaustion states).
]

Preliminary data examining histone modifications in ME/CFS immune cells show altered H3K4me3 (active transcription mark) and H3K27ac patterns compared to controls, with changes clustering at immune regulatory genes. The functional significance requires validation through chromatin accessibility assays (ATAC-seq or DNase-seq) determining whether altered histone marks correspond to changes in chromatin openness and gene expression.

==== Histone Acetylation and Metabolic Coupling

Histone acetylation depends on acetyl-CoA availability, creating a direct coupling between cellular metabolism and epigenetic regulation. Histone acetyltransferases (HATs) use acetyl-CoA as substrate to acetylate histone lysine residues; when acetyl-CoA levels fall (as occurs with mitochondrial dysfunction or glucose deprivation), histone acetylation decreases genome-wide, altering gene expression patterns.

This metabolic-epigenetic coupling may be particularly relevant in ME/CFS given the documented metabolic dysfunction (Chapter @ch:energy-metabolism). Reduced mitochondrial ATP production and altered central carbon metabolism could decrease acetyl-CoA availability, leading to genome-wide hypoacetylation of histones. This hypoacetylation would reduce expression of acetylation-dependent genes, potentially creating a feedforward loop: metabolic dysfunction causes epigenetic changes that further impair metabolic gene expression, perpetuating metabolic impairment.

Similarly, histone methylation depends on S-adenosyl methionine (SAM) as methyl donor, linking one-carbon metabolism to chromatin regulation. Altered methionine or folate metabolism could affect SAM availability and thereby histone methylation patterns, providing another mechanism linking metabolism to epigenetic dysregulation.

==== Potential for Epigenetic Therapeutics

The reversibility of histone modifications makes them attractive therapeutic targets. Histone deacetylase (HDAC) inhibitors increase histone acetylation and are approved for cancer treatment; could they benefit ME/CFS by reversing pathological chromatin states? Histone demethylase inhibitors and histone methyltransferase inhibitors modulate specific methylation marks. Bromodomain inhibitors block proteins that recognize acetylated histones, altering transcriptional responses to acetylation.

However, these drugs have broad effects across the genome and significant toxicities, limiting their use to severe diseases. More targeted approaches might use small molecules affecting specific histone-modifying enzymes relevant to ME/CFS pathophysiology, or dietary interventions affecting metabolite availability (acetyl-CoA, SAM) that indirectly modulate histone modifications.

=== MicroRNAs
<sec:micrornas>

MicroRNAs (miRNAs) are small non-coding RNAs approximately 22 nucleotides in length that regulate gene expression post-transcriptionally. A single miRNA can target hundreds of messenger RNAs (mRNAs), and a single mRNA can be targeted by multiple miRNAs, creating complex regulatory networks. miRNAs bind to complementary sequences in target mRNA 3' untranslated regions, promoting mRNA degradation or blocking translation, thereby reducing protein expression.

==== Altered MicroRNA Profiles in ME/CFS

Multiple studies have examined miRNA expression in ME/CFS patients' blood samples using miRNA profiling technologies. These studies identify differentially expressed miRNAs—miRNAs showing significantly higher or lower expression in patients compared to controls.

Brenu et al.\ and other groups have reported altered expression of specific miRNAs in ME/CFS, with different studies showing partial but incomplete overlap in identified miRNAs @Brenu2012miRNA. Commonly reported dysregulated miRNAs include those regulating immune function (miR-21, miR-146a, miR-155), metabolism, and stress responses. Sample sizes in published studies are generally small (n = 20–50 per group), limiting statistical power and increasing risk of false positives.

The lack of consistent replication across studies may reflect genuine heterogeneity in miRNA profiles across ME/CFS subgroups, different patient selection criteria, different analytical platforms, or statistical issues. Larger cohorts with standardized protocols are needed to establish robust miRNA signatures.
Specific miRNAs showing altered expression in ME/CFS have plausible biological relevance. miR-21 regulates immune responses and fibrosis; increased miR-21 could contribute to immune dysfunction or tissue remodeling. miR-146a functions as a negative regulator of innate immunity, dampening inflammatory responses; altered miR-146a expression might affect inflammatory tone. miR-155 promotes inflammatory macrophage activation; dysregulation could affect immune cell polarization.

MiRNAs targeting metabolic pathways show expression changes in some studies, potentially contributing to metabolic dysfunction. MiRNAs regulating mitochondrial genes, glycolytic enzymes, or oxidative stress responses could alter cellular energetics if their expression is perturbed.

==== Regulatory Effects and Target Validation

Identifying differentially expressed miRNAs is only the first step; understanding functional consequences requires determining which target mRNAs are actually affected. Computational prediction algorithms identify potential miRNA targets based on sequence complementarity, but experimental validation is necessary because many predicted targets are not functionally regulated.

Integrative analysis comparing miRNA expression with mRNA expression can identify functional targets: if a miRNA is upregulated, its target mRNAs should show decreased expression; downregulated miRNAs should associate with increased target expression. Several ME/CFS studies have performed such analyses, identifying inverse correlations between miRNA expression and predicted targets, supporting functional regulation.

However, the magnitude of miRNA effects on individual targets is often modest (20–40% reduction in protein expression), and biological effects may require coordinated regulation of multiple targets within a pathway. Network analyses examining whether dysregulated miRNAs converge on common pathways provide systems-level understanding: do multiple altered miRNAs target immune pathways, metabolic pathways, or neurological pathways?

==== MicroRNAs as Biomarkers

Beyond their mechanistic role, circulating miRNAs represent potential biomarkers for ME/CFS diagnosis, prognosis, or treatment response monitoring. miRNAs are stable in blood, resistant to degradation, and quantifiable using standard techniques, making them attractive biomarker candidates.

#prediction(title: [MicroRNA Biomarker Panels])[
If ME/CFS has a characteristic miRNA signature, panels of multiple miRNAs could achieve diagnostic sensitivity and specificity adequate for clinical use. A diagnostic test combining 5–10 miRNAs with clinical criteria might improve diagnostic accuracy beyond current symptom-based approaches.

For biomarker development, several criteria must be met: differential expression must replicate in independent cohorts, diagnostic accuracy (sensitivity and specificity) must exceed threshold for clinical utility (generally \>80% for both), and miRNA levels must be stable over time in individual patients unless they correlate meaningfully with symptom severity. Additionally, miRNA signatures must distinguish ME/CFS from conditions with overlapping symptoms (fibromyalgia, depression, primary sleep disorders).
]

Current evidence does not yet support clinical miRNA biomarker use for ME/CFS. Replication remains incomplete, effect sizes are modest, and head-to-head comparisons with overlapping conditions are limited. However, ongoing studies with larger sample sizes and standardized protocols may identify robust signatures warranting clinical validation.

==== Circulating vs Tissue-Specific MicroRNAs

An important question concerns the cellular source of differentially expressed miRNAs in blood. Circulating miRNAs may originate from blood cells themselves (lymphocytes, monocytes), reflecting altered immune cell miRNA expression. Alternatively, miRNAs may be released from tissues (muscle, brain, gut) in extracellular vesicles or bound to proteins, providing a window into tissue dysfunction not directly accessible through blood sampling.

Cell-type-specific miRNA profiling (isolating specific cell populations before miRNA extraction) can determine whether miRNA changes occur broadly across blood cells or specifically in subsets such as natural killer cells, T cells, or monocytes. Tissue-specific miRNAs can be identified through expression databases showing which miRNAs are enriched in particular tissues; finding muscle-enriched miRNAs elevated in ME/CFS patients' plasma might indicate muscle pathology.

Understanding miRNA cellular origin informs interpretation: immune cell-intrinsic miRNA changes suggest altered immune cell programming, while tissue-derived miRNAs suggest tissue damage or dysfunction with secondary release of cellular contents into circulation.

== Gene Expression Patterns
<sec:gene-expression>

Gene expression profiling using transcriptomics technologies provides a functional readout of genetic and epigenetic regulation, measuring which genes are actively transcribed into messenger RNA and the magnitude of expression changes. In ME/CFS, gene expression studies illuminate which biological pathways are dysregulated, identify potential biomarkers, and suggest mechanisms linking genetic susceptibility to phenotypic manifestations. Unlike static genetic variants, gene expression is dynamic and potentially responsive to interventions, making dysregulated genes attractive therapeutic targets.

=== Transcriptomics Studies and Methodological Considerations

Multiple gene expression studies in ME/CFS have used microarray and RNA sequencing technologies to measure mRNA levels genome-wide in blood samples, comparing patients to healthy controls. These studies vary in sample size (ranging from n=20 to n\>100 per group), patient selection criteria (CCC, ICC, Fukuda), sample types (whole blood, PBMCs, specific cell populations), and analytical approaches.

Methodological heterogeneity complicates cross-study comparison. Whole blood gene expression reflects the aggregate signal from multiple cell types—lymphocytes, monocytes, neutrophils, eosinophils, basophils—each with distinct transcriptional profiles. If ME/CFS involves altered proportions of these cell types (for example, increased proportion of exhausted T cells, reduced NK cells), whole blood expression changes may reflect cell composition differences rather than cell-intrinsic transcriptional changes. Statistical methods can partially address this through deconvolution algorithms estimating cell-type proportions, but cell-type-specific profiling provides more definitive answers.

Batch effects—systematic technical differences between sample processing batches—can produce spurious expression differences larger than biological signal. Rigorous studies randomize samples across batches, include technical replicates, and apply batch correction algorithms. Many early ME/CFS gene expression studies lacked adequate batch effect control, potentially contributing to replication failures.

Despite these challenges, convergent findings across independent studies provide evidence for robust gene expression changes in ME/CFS, particularly in immune and metabolic pathways.

=== Differentially Expressed Genes

Differentially expressed genes (DEGs)—genes showing statistically significant expression differences between patients and controls—number in the hundreds to thousands in typical ME/CFS transcriptomics studies, depending on statistical thresholds and multiple testing correction methods.

==== Immune System Gene Expression

#achievement(title: [Convergent Immune Gene Dysregulation])[
Across multiple independent gene expression studies, immune pathway genes show the most consistent and pronounced dysregulation. Key patterns include:

*Cytokine and chemokine genes* demonstrate altered expression consistent with chronic immune activation or altered cytokine networks. Pro-inflammatory cytokine genes (IL-1$beta$, TNF-$alpha$, IL-6) show variable direction of change across studies, likely reflecting patient heterogeneity and disease stage. Chemokine genes affecting immune cell trafficking (CCL2, CXCL10, others) demonstrate differential expression in multiple studies.

*T cell and NK cell genes* show expression patterns consistent with functional impairment. T cells from ME/CFS patients demonstrate reduced expression of effector cytokine genes (IFN-$gamma$, TNF-$alpha$) and altered expression of exhaustion markers (PDCD1 encoding PD-1, HAVCR2 encoding TIM-3, LAG3). NK cell gene expression profiling reveals reduced expression of cytotoxic effector genes (PRF1 encoding perforin, GZMA/GZMB encoding granzymes) consistent with the impaired cytotoxicity documented in Chapter @ch:immune-dysfunction.

*Interferon-stimulated genes* (ISGs) show elevated expression in multiple studies, suggesting ongoing antiviral responses or interferon pathway activation even in the absence of detectable active infection. This ISG signature resembles that seen in autoimmune diseases such as systemic lupus erythematosus and may indicate chronic stimulation of pattern recognition receptors or dysregulated interferon regulatory factor activity.
] <ach:immune-gene-dysregulation>

#warning-env(title: [Replication Status: Partially Replicated])[
This achievement synthesizes across multiple studies without providing specific citations within the block. While individual findings (NK cell cytotoxicity impairment, T cell exhaustion markers, ISG elevation) have each been reported in independent studies, the specific “convergent” pattern described here is an interpretive synthesis rather than a directly replicated result. The direction and magnitude of cytokine gene changes vary substantially across studies, likely reflecting patient heterogeneity, disease stage, and methodological differences. The claim of convergence should be evaluated against systematic reviews rather than individual study comparisons.
]

==== Metabolic Gene Expression

Genes involved in energy metabolism, mitochondrial function, and oxidative stress responses demonstrate altered expression patterns consistent with the metabolic dysfunction detailed in Chapter @ch:energy-metabolism.

Mitochondrial genes show variable but frequently reduced expression across studies. Nuclear-encoded mitochondrial genes affecting oxidative phosphorylation, the tricarboxylic acid cycle, and mitochondrial biogenesis may show downregulation, potentially contributing to reduced mitochondrial ATP production capacity. However, the magnitude and consistency of these changes varies across studies, possibly reflecting differences in disease severity, duration, or patient selection.

Glycolytic pathway genes show altered expression in some studies, with evidence for both increased glycolytic gene expression (potentially compensatory for mitochondrial dysfunction) and reduced expression. The direction and magnitude may depend on metabolic state at the time of sampling (resting versus post-exertional).

Genes encoding oxidative stress response proteins (superoxide dismutase, catalase, glutathione synthesis and recycling enzymes) demonstrate altered expression, consistent with increased oxidative stress burden. Some studies report upregulation suggesting compensatory induction, while others find downregulation potentially reflecting exhausted antioxidant capacity.

==== Neurological and Neurotransmitter Genes

Gene expression changes affecting neurological function and neurotransmitter systems may contribute to cognitive dysfunction and neurological symptoms (Chapter @ch:neurological).

Neurotransmitter synthesis, transport, and receptor genes show differential expression in some studies. Genes affecting serotonin, dopamine, and norepinephrine metabolism demonstrate variable changes across patients, potentially reflecting heterogeneity in neurological symptom profiles. Ion channel genes including TRPM3 show altered expression in ME/CFS patients, consistent with the functional TRPM3 deficiency discussed in Section @sec:genetic-variants.

Blood-brain barrier integrity genes and neuroinflammatory markers show expression changes in some studies, though interpreting peripheral blood expression of brain-related genes requires caution. Elevated expression of neuroinflammation-associated genes may reflect systemic inflammation affecting the CNS or glial activation with release of inflammatory mediators detectable peripherally.

=== Pathway Enrichment and Systems Biology Analysis

Individual differentially expressed genes provide limited insight without biological context. Pathway enrichment analysis tests whether DEGs cluster in particular biological pathways or functional categories more than expected by chance, identifying dysregulated biological processes.

Despite variable lists of specific DEGs across studies, pathway enrichment analyses show remarkable convergence, with multiple independent studies identifying the same biological pathways as dysregulated:

*Immune response pathways* including innate immunity, antiviral responses, cytokine signaling, and T cell activation emerge as top enriched pathways in essentially all ME/CFS gene expression studies. This pathway-level convergence validates immune dysfunction as a core feature even when specific DEGs differ.

*Metabolic pathways* including oxidative phosphorylation, TCA cycle, fatty acid metabolism, and glucose metabolism show enrichment in multiple studies, supporting metabolic dysfunction as a consistent feature.

*Cellular stress response pathways* including unfolded protein response, endoplasmic reticulum stress, and oxidative stress responses demonstrate enrichment, suggesting chronic cellular stress across multiple compartments.

*Circadian rhythm and sleep-related pathways* show dysregulation in some studies, potentially relating to sleep dysfunction and circadian rhythm disturbances common in ME/CFS.

Network analysis approaches examining interactions between DEGs identify hub genes—highly connected genes whose dysregulation may have outsized effects on pathway function. These hub genes represent priority targets for mechanistic investigation and potential therapeutic intervention.
=== Cell Type-Specific Expression and Single-Cell Approaches

Bulk tissue gene expression confounds cell-intrinsic transcriptional changes with cell composition differences. Cell-type-specific profiling addresses this limitation by isolating specific cell populations before expression analysis or using computational deconvolution.

Natural killer cell-specific gene expression studies reveal pronounced transcriptional changes consistent with NK cell dysfunction, including reduced expression of cytotoxic genes and altered expression of activation and inhibitory receptors. These cell-intrinsic changes validate that NK cell dysfunction reflects altered cellular programming, not simply reduced NK cell numbers.

T cell subset-specific profiling distinguishes CD4+ helper T cells, CD8+ cytotoxic T cells, and regulatory T cells, each with distinct expression signatures. ME/CFS studies have reported differential expression patterns across subsets, with some suggesting particular dysregulation in CD8+ T cells consistent with exhaustion phenotypes.

Emerging single-cell RNA sequencing (scRNA-seq) technologies enable simultaneous profiling of thousands of individual cells, identifying rare cell populations and cell state heterogeneity invisible to bulk sequencing. Preliminary scRNA-seq studies in ME/CFS are beginning to reveal subpopulations of immune cells with distinct transcriptional states, potentially including exhausted T cell states, activated monocyte populations, or dysfunctional NK cell subsets. As scRNA-seq becomes more widely applied, it promises to resolve cellular heterogeneity and identify specific cell states driving pathology.

=== Exercise-Induced Gene Expression Changes

Post-exertional malaise represents the cardinal symptom of ME/CFS, making exercise-induced gene expression changes particularly relevant. Several studies have examined gene expression before and after standardized exercise challenges, identifying genes whose expression changes abnormally in ME/CFS patients compared to healthy controls.

Healthy individuals show characteristic exercise-induced gene expression changes reflecting metabolic adaptation, immune modulation, and cellular repair. ME/CFS patients demonstrate altered exercise responses, with exaggerated or prolonged expression changes in immune genes, blunted metabolic adaptation, and sustained stress response gene activation.

Specific patterns include:

    - Prolonged elevation of immune activation genes 24–72 hours post-exercise, corresponding to symptom exacerbation timing
    - Reduced or delayed upregulation of metabolic adaptation genes that normally facilitate recovery
    - Sustained activation of cellular stress response pathways
    - Altered expression of genes regulating muscle metabolism and repair

These exercise-induced expression changes correlate with symptom severity in some studies, suggesting gene expression profiles might objectively quantify PEM severity and duration.
Longitudinal sampling capturing expression changes at multiple timepoints (pre-exercise, immediately post, +4h, +24h, +48h, +72h) reveals temporal dynamics invisible to single-timepoint studies. Such temporal profiling may identify early molecular events initiating PEM and later events perpetuating symptoms, with therapeutic implications for targeting specific phases.

=== Integration with Genetic and Epigenetic Data

The most powerful insights emerge from integrating gene expression with genetic and epigenetic data, identifying genes where genetic variants affect expression levels (expression quantitative trait loci, eQTLs), genes showing coordinated methylation and expression changes, and genes targeted by dysregulated microRNAs.

Expression QTL analysis asks whether genetic variants identified in GWAS or candidate gene studies actually affect expression of nearby or distant genes. For ME/CFS-associated genetic variants, demonstrating that risk alleles correlate with altered expression of biologically plausible genes strengthens causal inference and identifies mechanisms by which genetic variants influence disease risk.

Integrative methylation-expression analysis identifies genes showing inverse correlations between promoter methylation and mRNA expression, validating functional consequences of epigenetic changes. Genes demonstrating both differential methylation and corresponding expression changes represent high-priority mechanistic targets.

MicroRNA-mRNA correlation analysis tests whether dysregulated miRNAs actually affect predicted target expression. Negative correlations between miRNA expression and target mRNA expression support functional regulatory relationships and help distinguish direct miRNA targets from indirect effects.

These integrative analyses transform lists of genes, variants, methylation sites, and miRNAs into mechanistic models specifying causal chains: genetic variant → altered methylation → changed miRNA expression → dysregulated target gene expression → pathway dysfunction → phenotype.

== Synthesis and Open Questions
<sec:genetics-synthesis>

Genetic and epigenetic research in ME/CFS has matured substantially over the past decade, progressing from underpowered candidate gene studies to genome-wide approaches, from speculation about epigenetic involvement to empirical demonstration of DNA methylation and histone modification changes, and from simple gene lists to integrated multi-omics analyses. This body of evidence establishes genetic predisposition as a substantial contributor to ME/CFS risk while highlighting the complex polygenic architecture and gene-environment interactions that determine disease manifestation.

=== Key Established Findings

#achievement(title: [Genetic and Epigenetic Foundations of ME/CFS])[
Several conclusions now rest on firm empirical ground:

*Moderate heritability* Twin studies consistently demonstrate heritability estimates of $h^2 = 0.3$–$0.5$, indicating that 30–50% of disease liability reflects genetic factors. This moderate heritability implies substantial genetic contribution while confirming environmental factors' essential role.

*Polygenic architecture with neuronal convergence* DecodeME (n$>$15,000) identified 8 genome-wide significant loci with small effect sizes (OR 0.93--1.10) and SNP heritability of 9.5% @DecodeME2025. The most notable finding is convergence on brain-expressed genes involved in neuronal development and synaptic function (_CA10_, _SHISA6_, _SOX6_, _LRRC7_, _DCC_, _UNC13C_), confirmed by MAGMA tissue enrichment and independently supported by Stanford rare-variant analyses (Section @sec:decodeme-genes). Genetic correlations are strongest with IBS ($r_g = 0.75$), sleep, and mood traits, but absent for classical autoimmune diseases (Section @sec:genetic-correlations).

*Gene-environment interaction* The observation that only a minority of individuals exposed to triggering infections develop ME/CFS, combined with familial aggregation patterns, validates gene-environment interaction as the central etiological framework. Genetic variants establish vulnerability; environmental triggers are necessary for disease expression.

*Immune ambiguity and autophagy signals* DecodeME immune-related hits (_RABGAP1L_, _BTN2A2_, _TAOK3_, _HLA-DQA1\*05:01_) lie in gene-dense regions creating assignment ambiguity, and the absence of genetic correlation with autoimmune diseases constrains the autoimmune hypothesis. Unexpectedly, autophagy genes (_FBXL4_ for mitophagy, _CCPG1_ for ER-phagy) provide a genetic link to mitochondrial dysfunction (Chapter @ch:energy-metabolism), suggesting constitutional vulnerability in organelle quality control.

*Epigenetic reprogramming* Demonstration of DNA methylation changes, altered histone modifications, and dysregulated microRNA expression establishes epigenetic reprogramming as a plausible mechanism for chronicity. These potentially reversible modifications provide therapeutic targets.
] <ach:genetic-epigenetic-foundations>

#warning-env(title: [Replication Status: Variable])[
This synthesis achievement combines findings of differing replication strength. Moderate heritability ($h^2 = 0.3$–$0.5$) from twin studies is the most robust element, replicated across multiple independent twin registries. Polygenic architecture is confirmed by DecodeME but locus-level replication is pending (see Achievement @ach:decodeme-gwas). Gene-environment interaction is well-supported conceptually but the specific genetic variants mediating susceptibility remain largely unidentified. Epigenetic reprogramming evidence comes from small studies with limited replication—DNA methylation findings in particular show inconsistent patterns across studies, partly due to cell-type heterogeneity in whole-blood samples.
]

=== Integration with Broader ME/CFS Pathophysiology

The genetic and epigenetic findings detailed in this chapter provide the constitutional substrate upon which the dysregulated physiological systems described in other chapters develop.

The immune dysfunction documented in Chapter @ch:immune-dysfunction—NK cell cytotoxicity impairment, T cell exhaustion, cytokine dysregulation—reflects both genetic predisposition (HLA types, immune gene variants, TRPM3 polymorphisms) and epigenetic reprogramming (T cell chromatin states characteristic of exhaustion, methylation of immune genes). Genetic susceptibility determines baseline immune function capacity; epigenetic changes following infection establish chronic dysfunction states.

The metabolic dysfunction of Chapter @ch:energy-metabolism—reduced oxidative phosphorylation, impaired ATP production, glycolytic shifts—similarly combines genetic vulnerability (mitochondrial gene variants, metabolic enzyme polymorphisms) with acquired epigenetic silencing of metabolic genes. The gene expression patterns show reduced expression of mitochondrial and metabolic pathway genes, potentially reflecting both genetic determinants of baseline expression and epigenetic downregulation following metabolic stress.

Neurological manifestations (Chapter @ch:neurological) may reflect TRPM3 dysfunction (with genetic variants affecting baseline expression and function), neurotransmitter system genetic variants, and epigenetic changes affecting blood-brain barrier integrity and neuroinflammation. The cognitive and autonomic symptoms could arise from the intersection of genetic liability and acquired epigenetic modifications.

This integrated model suggests that ME/CFS arises when genetic predisposition across multiple systems (immune, metabolic, neurological, cardiovascular) encounters environmental triggers sufficient to induce epigenetic reprogramming. The specific symptom profile reflects which genetic vulnerabilities predominate and which epigenetic changes occur, explaining clinical heterogeneity. Chapter @ch:integrative-models builds upon this genetic-epigenetic foundation to develop comprehensive multi-system models of ME/CFS pathophysiology, examining how constitutional factors interact with acquired dysfunction to create stable pathological states (Section @sec:synthesis).

=== Unresolved Questions and Future Directions

Despite substantial progress, critical questions remain:

#open-question(title: [Causal Variants and Mechanisms])[
GWAS identifies associated genomic loci but typically does not pinpoint causal variants or affected genes. For DecodeME-identified loci, fine-mapping studies using dense genotyping and functional genomics are needed to identify specific causal variants, determine which genes they affect, and elucidate mechanisms by which they influence disease risk. Do ME/CFS risk variants affect transcription factor binding sites, alter splicing, modify protein sequence, or influence other molecular processes?
]

#open-question(title: [Epigenetic Causality vs Consequence])[
Observed epigenetic changes could represent disease-driving mechanisms or secondary consequences of chronic illness. Longitudinal studies examining epigenetic changes before, during, and after disease onset would address causality. Do epigenetic changes precede symptom development in at-risk individuals? Do they persist during remission or normalize with symptom improvement? Can experimentally reversing specific epigenetic modifications (using CRISPR-based epigenome editing or small molecule epigenetic drugs) alleviate cellular dysfunction in patient cells?
]

#open-question(title: [Genetic Subtyping])[
Does ME/CFS comprise genetically distinct subtypes with different molecular mechanisms? Cluster analyses based on genetic profiles, gene expression patterns, or epigenetic signatures might identify patient subgroups with different pathophysiological mechanisms, prognoses, and treatment responses. Such molecular subtyping could enable personalized treatment selection.
]

#open-question(title: [Therapeutic Reversibility])[
Given that epigenetic modifications are potentially reversible, can therapeutic interventions normalize methylation patterns, histone modifications, or microRNA expression? Would such normalization translate to clinical improvement? Trials of epigenetic-modifying drugs (HDAC inhibitors, methyltransferase inhibitors, demethylating agents) could test this hypothesis, though broad epigenetic drugs have significant toxicities. More targeted approaches using small molecules affecting specific epigenetic enzymes or dietary interventions affecting metabolite availability might offer safer therapeutic windows.
]

#open-question(title: [Prevention in High-Risk Individuals])[
Can polygenic risk scores identify individuals at high genetic risk who might benefit from preventive interventions? Following the 2004 Bergen Giardia outbreak model, future post-infection cohorts could stratify by genetic risk and test whether early interventions (aggressive rest, anti-inflammatory treatments, metabolic support) prevent chronic illness development in high-risk individuals. Such prevention trials could validate genetic risk prediction and identify modifiable factors in the gene-environment interaction.
]

#open-question(title: [Cross-Condition Genetic Architecture])[
Genetic correlation analyses suggest shared genetic liability between ME/CFS, fibromyalgia, irritable bowel syndrome, and Long COVID. Do these conditions represent different manifestations of the same underlying genetic vulnerability, or do they have partially overlapping but distinct genetic architectures? Detailed comparison of GWAS findings across conditions would address this question and might reveal common therapeutic targets applicable across multiple chronic overlapping pain conditions.
]

The genetic and epigenetic foundations of ME/CFS, while increasingly well characterized, point toward a future of precision medicine approaches where genetic profiling informs diagnosis, prognostication, and treatment selection, and where therapeutic interventions target the specific molecular pathways dysregulated in individual patients.

