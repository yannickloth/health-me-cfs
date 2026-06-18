#import "../../shared/environments.typ": *

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

*DNASE1 and DNASE1L3 — Potential Post-Viral Susceptibility Loci.* Garcia et al. @GarciaLabroucheColomer2024 identified nine linked _DNASE1_ promoter polymorphisms associated with ~75% reduction in DNase1 antigen in COVID-19 patients, all three minor-allele carriers being critical cases. These variants reduce circulating DNase1—one of two enzymes responsible for degrading neutrophil extracellular traps (NETs)—creating a constitutional vulnerability to NET/DNase imbalance during severe infection. If post-infectious ME/CFS involves impaired NET clearance (Chapter @ch:immune-dysfunction), then _DNASE1_ loss-of-function variants could represent genetic susceptibility factors predisposing to chronic post-viral pathology. _DNASE1L3_ variants did not show significant associations in this cohort, though sample size ($n=52$ hospitalized) limited power for rare variant detection. No _DNASE1_ or _DNASE1L3_ genotyping has been performed in ME/CFS cohorts.

Certainty: 0.15 (ME/CFS extrapolation; variant-phenotype association established in COVID-19 only; no ME/CFS-specific genotyping data; mechanism plausibility moderate).

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
#include "sec-01-misc/subsec-08-metabolic-and-mitochondrial-gene-variant/open-questions/oq-mthfr-prevalence-in-me-cfs.typ"

==== Ion Channel and Neurotransmitter System Genes

Neurological symptoms in ME/CFS (Chapter @ch:neurological) and the documented dysfunction of transient receptor potential melastatin 3 (TRPM3) ion channels suggest genetic variants in ion channel genes as susceptibility factors.

TRPM3 dysfunction represents one of the most mechanistically informative genetic associations. Marshall-Gradisnik and colleagues have demonstrated reduced TRPM3 function in ME/CFS patients' natural killer cells and B cells, with impaired calcium influx following TRPM3 activation @MarshallGradisnik2016. While these functional studies demonstrate acquired TRPM3 dysfunction, genetic variants in the TRPM3 gene (particularly regulatory variants affecting expression levels) could establish constitutional vulnerability. TRPM3 channels regulate calcium signaling, which is essential for immune cell function, neurotransmitter release, and cellular metabolism. Reduced baseline TRPM3 expression due to genetic variants might create a narrower functional reserve, rendering individuals more susceptible to further acquired dysfunction.

Other ion channel genes merit investigation. Voltage-gated calcium channels, potassium channels regulating neuronal excitability, and acid-sensing ion channels (ASICs) involved in pain perception and autonomic regulation all represent plausible candidates. Channelopathies—diseases caused by ion channel dysfunction—often present with episodic symptoms, fatigue, and autonomic features resembling aspects of ME/CFS.

Neurotransmitter system genes, particularly those affecting serotonin, norepinephrine, and dopamine metabolism, have been examined given the prominent cognitive and mood symptoms. The catechol-O-methyltransferase (COMT) gene, which catabolizes catecholamines, exists in high-activity (Val158) and low-activity (Met158) variants. Some studies have reported associations with the Met158 variant, which would reduce catecholamine degradation and potentially affect stress responses and cognitive function. Serotonin transporter (5-HTTLPR) polymorphisms affecting serotonin reuptake have shown inconsistent associations.

==== Autonomic and Cardiovascular Genes

The high prevalence of orthostatic intolerance and postural orthostatic tachycardia syndrome (POTS) in ME/CFS patients (co-occurring in approximately 60%) @Natelson2022 suggests genetic overlap with autonomic dysfunction syndromes.

Adrenergic receptor genes, particularly $beta$-adrenergic receptor variants affecting cardiac responsiveness to catecholamines, represent logical candidates. The $beta_1$-adrenergic receptor gene (ADRB1) shows common polymorphisms affecting receptor density and signaling efficiency. Variants that alter cardiovascular responsiveness to sympathetic activation could predispose to orthostatic intolerance, particularly when combined with other ME/CFS-related pathophysiology such as reduced blood volume or impaired baroreceptor function.

Genes affecting renin-angiotensin-aldosterone system (RAAS) function, which regulates blood volume and vascular tone, could influence susceptibility to orthostatic symptoms. ACE (angiotensin-converting enzyme) gene variants, particularly the insertion/deletion polymorphism affecting ACE levels, might interact with other cardiovascular genetic factors to determine orthostatic tolerance.

==== Limitations of Candidate Gene Studies

#include "sec-01-misc/subsec-11-limitations-of-candidate-gene-studies/warnings/warn-candidate-gene-study-limitations.typ"

=== Genome-Wide Association Studies
<sec:gwas>

Genome-wide association studies (GWAS) represent a paradigm shift from candidate gene approaches, systematically interrogating millions of common genetic variants across the entire genome to identify disease-associated loci without prior hypotheses about specific genes. GWAS have successfully identified genetic risk factors for numerous complex diseases including type 2 diabetes, inflammatory bowel disease, schizophrenia, and rheumatoid arthritis. For ME/CFS, GWAS has been hindered by the challenges of patient recruitment, diagnostic heterogeneity, and the need for large sample sizes to detect the modest effect sizes typical of complex polygenic diseases.

==== DecodeME: The Largest ME/CFS GWAS

#include "sec-01-misc/subsec-13-decodeme-the-largest-me-cfs-gwas/achievements/ach-decodeme-gwas-findings.typ"

#include "sec-01-misc/subsec-13-decodeme-the-largest-me-cfs-gwas/warnings/warn-replication-status-not-yet-replicated-by.typ"

===== SNP Heritability
<sec:snp-heritability>

DecodeME estimated SNP-based heritability at $h^2_"SNP" = 0.095$ (9.5%) on the liability scale via LD Score Regression @DecodeME2025 @MECFSScience2025decodeme. This is modest compared to schizophrenia ($h^2_"SNP" approx 0.26$), Crohn's disease ($approx 0.24$), or type 1 diabetes ($approx 0.22$), but close to the mean heritability across all UK Biobank traits ($h^2 approx 0.10$) and substantially higher than fibromyalgia ($h^2_"SNP" approx 0.01$). The gap between twin-study heritability ($h^2 approx 0.3$--$0.5$; Section @sec:heritability) and SNP heritability reflects the "missing heritability" expected for complex traits: rare variants, structural variants, gene--gene interactions, and epigenetic contributions are not captured by common-variant GWAS arrays.

===== The Eight Genome-Wide Significant Loci
<sec:decodeme-loci>

DecodeME identified eight loci reaching genome-wide significance ($p < 5 times 10^(-8)$) across more than 8 million tested SNPs @DecodeME2025 @MECFSScience2025decodeme. #footnote[mecfsscience.org is an independent science communication website that provides detailed analyses of ME/CFS research. It is not a peer-reviewed journal; its analyses represent expert commentary and should be evaluated as such. Where this chapter cites mecfsscience.org, the underlying primary data come from the peer-reviewed DecodeME publications.] All eight are common variants (minor allele frequency 13--63%) with small individual effect sizes (odds ratios 0.93--1.10), consistent with the polygenic architecture expected for complex diseases. The prevalence difference between patients and controls at each locus is only 1--2 percentage points---for example, the chr17 lead SNP is present in 34.7% of ME/CFS cases versus 32.9% of controls @MECFSScience2025decodeme. These eight loci represent the tip of a polygenic iceberg: hundreds or thousands of additional variants likely contribute sub-threshold effects.

The strongest signal by far is on chromosome 20 ($-log_10 p = 11.02$, OR $= 1.095$) in a region containing three candidate genes: _ARFGEF2_ (vesicle trafficking), _CSE1L_ (nuclear transport), and _STAU1_ (mRNA transport)---all highlighted by MAGMA gene-based testing @MECFSScience2025decodeme2. Other genome-wide significant loci implicate _CA10_ (chr17; CNS development, chronic pain), _UNC13C_ (chr15; glutamatergic synaptic transmission), and _OLFM4_ (chr13; neural development, innate immunity) @DecodeME2025 @MECFSScience2025decodeme2.

A critical interpretive point: small GWAS effect sizes do not predict therapeutic utility. As analysts at mecfsscience.org note, GWAS effect sizes have not predicted drug development success---_HMGCR_ variants have tiny GWAS effects, yet statins (HMGCR inhibitors) produce substantial clinical benefit @MECFSScience2025decodeme @King2024gwas_drugs. That said, HMGCR is the exception rather than the rule: more than 90% of GWAS-nominated drug targets fail in clinical development, so small genetic effect sizes remain a weak basis for therapeutic optimism without additional functional validation. Moreover, because DNA is fixed at birth, genetic associations are not confounded by illness-related changes (deconditioning, medication use, sleep disruption), making them stronger evidence for causal pathways than most ME/CFS biomarker studies.

===== Gene Prioritisation and Fine-Mapping
<sec:decodeme-genes>

Most GWAS signals lie in non-coding regions, necessitating gene prioritisation through expression quantitative trait locus (eQTL) mapping, tissue expression analysis, and proximity-based inference @MECFSScience2025decodeme2. DecodeME used Genotype-Tissue Expression (GTEx) project data to correlate lead SNPs with gene expression across tissues. A key limitation is that only approximately 40% of GWAS signals can be matched to specific genes via eQTL approaches.

#include "sec-01-misc/subsec-13-decodeme-the-largest-me-cfs-gwas/achievements/ach-decodeme-brain-tissue-enrichment.typ"

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

    - Irritable bowel syndrome: $r_g = 0.75$ ($p = 0.00015$); confirmed by twin-sibling and family studies showing shared genetic architecture between CFS, fibromyalgia, and IBS @Steen2026sharedgenetic @Kendler2023familygenetic
    - Self-reported chronic fatigue syndrome: $r_g = 0.70$ ($p = 0.00005$)
    - Sleeping too much: $r_g = 0.66$ ($p = 0.00028$)
    - Depression (professionally diagnosed): $r_g = 0.60$ ($p < 0.00001$)
    - Amitriptyline use: $r_g = 0.61$ ($p < 0.00001$)
    - Recent tiredness/low energy: $r_g = 0.61$ ($p < 0.00001$)
    - Spondylosis: $r_g = 0.59$ ($p = 0.016$; nominally significant but does not survive strict Bonferroni correction)

The high correlation with IBS ($r_g = 0.75$) is consistent with the well-documented clinical overlap and may reflect shared autonomic, gut--brain axis, or mast cell pathways. The depression correlation ($r_g = 0.60$) does not imply that ME/CFS is a depressive disorder; rather, shared genetic variants likely affect common neurological substrates (sleep regulation, pain processing, fatigue signaling) that are disrupted in both conditions through different downstream mechanisms. Childhood asthma shows a modest correlation ($r_g = 0.31$; p-value not reported as Bonferroni-significant), consistent with immune pathway involvement @MECFSScience2025decodeme.

#include "sec-01-misc/subsec-14-genetic-correlations-with-other-conditio/limitations/lim-genetic-correlation-eq-not-shared-aetiol.typ"

#include "sec-01-misc/subsec-14-genetic-correlations-with-other-conditio/speculations/spec-depression-paradox-high-r-g-no-shared-ca.typ"

==== Polygenic Risk Scores

Polygenic risk scores (PRS) aggregate the effects of thousands or millions of genetic variants into a single quantitative measure of inherited liability. PRS can identify individuals at high genetic risk (top decile of PRS distribution), who may benefit from preventive interventions, or individuals at low genetic risk despite environmental exposures. For ME/CFS, PRS applications include risk stratification, mechanistic subtyping, and prediction.

DecodeME could enable development of ME/CFS polygenic risk scores, though none has yet been tested for clinical utility.

#include "sec-01-misc/subsec-15-polygenic-risk-scores/open-questions/oq-me-cfs-polygenic-risk-score-clinical-uti.typ"

==== Earlier GWAS Attempts and Methodological Challenges

Prior to DecodeME, several smaller GWAS attempts were conducted with sample sizes of 200–500 cases. These studies were severely underpowered to detect realistic effect sizes for complex disease variants and produced no genome-wide significant findings that replicated. This failure reflects general principles of GWAS: detecting odds ratios of 1.1–1.2 (typical for complex disease variants) requires thousands to tens of thousands of cases, not hundreds. Notably, Ueland et al.\ (2022) explicitly attempted to replicate the TRA locus association from earlier candidate studies and found no significant association in their Norwegian cohort @Ueland2022trareplication, a null result that reflects the field's maturation from candidate-gene to GWAS-driven approaches.

Small GWAS can still provide value through polygenic analyses aggregating information across many sub-threshold variants and through contributing data to meta-analyses. However, their inability to identify genome-wide significant loci frustrated early genetic investigation of ME/CFS and highlighted the necessity of large collaborative efforts.
Several methodological challenges complicate ME/CFS GWAS beyond simply achieving adequate sample size. Diagnostic heterogeneity creates noise: if different diagnostic criteria capture partially overlapping patient populations with different genetic architectures, this heterogeneity reduces power. Potential solutions include stratified analyses by diagnostic criteria and phenotype refinement using quantitative traits (severity scores, specific symptoms) rather than binary case-control status.

Population stratification—systematic ancestry differences between cases and controls—can produce spurious associations. Standard GWAS methods correct for stratification using principal components analysis of genetic data, ensuring cases and controls are matched for genetic ancestry. For ME/CFS, international collaborative GWAS must carefully model ancestry structure to avoid confounding.

The missing heritability problem—the gap between twin study heritability estimates and SNP heritability from GWAS—arises from several sources. Rare variants (minor allele frequency $< 1%$) not well captured by standard GWAS arrays may contribute to liability. Structural variants, copy number variations, and epigenetic modifications are not directly tested in GWAS. Gene-gene and gene-environment interactions may contribute to liability but are difficult to detect with current methods. Nevertheless, GWAS SNP heritability typically explains 20–50% of twin study heritability for complex diseases, providing genome-wide validation of genetic contribution while highlighting areas for future investigation.

==== Implications for Understanding ME/CFS Pathophysiology

DecodeME's findings reshape understanding of ME/CFS genetic architecture in three ways. First, the overwhelming convergence on brain-expressed genes---confirmed by both MAGMA tissue enrichment and individual gene characterisation---suggests neuronal dysfunction as a genetically grounded component of ME/CFS, rather than merely a downstream consequence of peripheral pathology @DecodeME2025 @MECFSScience2025decodeme @MECFSScience2025decodeme2. The glutamatergic synapse genes (_SHISA6_, _UNC13C_) are particularly noteworthy given the neurological abnormalities described in Chapter @ch:neurological, where altered neurotransmitter dynamics have been observed.

Second, the absence of genetic correlation with established autoimmune diseases constrains the autoimmune hypothesis: if ME/CFS involved the same genetic liability as MS, RA, or T1D, this would appear as significant $r_g$. The autoimmune features documented in Chapter @ch:immune-dysfunction may therefore represent a phenocopy driven by different genetic pathways---perhaps the immune-ambiguous loci identified in DecodeME (Section @sec:decodeme-genes) operating through novel mechanisms rather than classical autoimmunity.

Third, the autophagy/mitophagy genes (_FBXL4_, _CCPG1_) provide a genetic link to the mitochondrial dysfunction documented in Chapter @ch:energy-metabolism --- the possible mechanistic implications are formalised in Hypothesis @hyp:mitophagy-vulnerability below.

The Maccallini 2026 meta-GWAS, combining DecodeME with the Million Veteran Program (19,470 cases, 699,111 controls), has confirmed and extended these brain enrichment findings @Maccallini2026metaGWAS. Beyond single-variant associations, Sardell et al.\ (2026) employed the PrecisionLife combinatorial analytics platform to identify synergistic SNP-SNP interactions in ME/CFS — epistatic effects invisible to standard GWAS — suggesting that gene-gene interactions contribute additional liability beyond the additive effects captured by GWAS arrays @Sardell2026combinatorial. The meta-analysis replicated brain tissue enrichment across 14 brain regions + pituitary with no peripheral tissue reaching significance, identified glutamatergic synapses as the most specific replicated gene-set, and provided the first regional neuronal enrichment: independent replicated signals in distinct neuronal populations of subcortical and cerebellar regions, with a secondary signal in dopaminergic midbrain (VTA/substantia nigra).

GWAS also enables Mendelian randomisation analyses testing causal relationships between exposures and ME/CFS. Using genetic variants as instrumental variables, researchers can test whether genetically predicted inflammatory markers, vitamin D levels, or other biomarkers causally contribute to disease liability, distinguishing causation from the reverse causation and confounding that plague observational ME/CFS studies.

#include "sec-01-misc/subsec-17-implications-for-understanding-me-cfs-pa/hypotheses/hyp-genetic-mitophagy-vulnerability-the-accu.typ"

=== Maccallini 2026 Meta-GWAS: Brain-First Genetic Architecture
<sec:maccallini-metagwas>

#include "sec-01-misc/subsec-18-maccallini-2026-meta-gwas-brain-first-ge/achievements/ach-maccallini-meta-gwas-brain-first-genetic.typ"

#include "sec-01-misc/subsec-18-maccallini-2026-meta-gwas-brain-first-ge/warnings/warn-single-anchoring-risk-and-methodological.typ"

#include "sec-01-misc/subsec-18-maccallini-2026-meta-gwas-brain-first-ge/hypotheses/hyp-glutamatergic-synaptic-dysfunction-as-ge.typ"

#include "sec-01-misc/subsec-18-maccallini-2026-meta-gwas-brain-first-ge/hypotheses/hyp-two-hit-model-glutamatergic-vulnerabilit.typ"

#include "sec-01-misc/subsec-18-maccallini-2026-meta-gwas-brain-first-ge/hypotheses/hyp-brain-first-genetic-model.typ"

#include "sec-01-misc/subsec-18-maccallini-2026-meta-gwas-brain-first-ge/open-questions/oq-cell-type-specific-prs-for-biologically-.typ"

#include "sec-01-misc/subsec-18-maccallini-2026-meta-gwas-brain-first-ge/speculations/spec-serum-kynurenic-acid-quinolinic-acid-rat.typ"

#include "sec-01-misc/subsec-18-maccallini-2026-meta-gwas-brain-first-ge/speculations/spec-vta-sn-dopaminergic-effort-motivation-co.typ"

#include "sec-01-misc/subsec-18-maccallini-2026-meta-gwas-brain-first-ge/speculations/spec-enteric-glutamatergic-dysfunction-as-gen.typ"

#include "sec-01-misc/subsec-18-maccallini-2026-meta-gwas-brain-first-ge/speculations/spec-dopaminergic-midbrain-prs-for-effort-mot.typ"

#include "sec-01-misc/subsec-18-maccallini-2026-meta-gwas-brain-first-ge/speculations/spec-composite-neuronal-risk-score-for-subtyp.typ"

#include "sec-01-misc/subsec-18-maccallini-2026-meta-gwas-brain-first-ge/speculations/spec-combinatorial-snp-interactions-as-clinic.typ"

#include "sec-01-misc/subsec-21-glp1-genetics/sec-glp1-genetics.typ"

==== Computable Analyses Using Existing DecodeME Data
<sec:decodeme-computable>

DecodeME's combined genotype and phenotype data (n=17,000+ with GWAS array, severity classification, diagnostic criteria, infection typing, depression comorbidity, amitriptyline use, family history, and sex) enables a programme of computational analyses that require no new recruitment or genotyping. The following hypotheses and open questions are all testable using existing DecodeME data plus publicly available external GWAS summary statistics. They are grouped by analytical approach.

===== Sex-Stratified Genetic Architecture

#hypothesis(title: [Sex-Differential Genetic Architecture in ME/CFS])[
*Certainty: 0.55.* ME/CFS affects approximately 75% females, but whether this excess reflects a quantitative threshold difference (same genetic architecture, lower threshold in females due to hormonal or X-linked modifiers) or a qualitative difference (partially distinct loci contributing in each sex) is unknown. DecodeME's approximately 11,700 female and 3,900 male cases enable sex-stratified GWAS and cross-sex genetic correlation ($r_(g,"sex")$) estimation via LD score regression.

Autoimmune diseases show both patterns: systemic lupus erythematosus has sex-differential genetic architecture, while rheumatoid arthritis does not. DecodeME's male sample size (n$approx$3,900) is sufficient for discovery of strong-effect sex-specific loci, comparable to early psychiatric GWAS that identified sex-differential signals.

*Falsifiable prediction:* If $r_(g,"sex") > 0.8$, sex-differential genetic architecture is falsified and the female excess arises from non-genetic modifiers (hormonal, immune, environmental). If $r_(g,"sex") < 0.6$, male and female ME/CFS are partially distinct genetic entities. The prediction is that $r_(g,"sex")$ will be 0.6--0.8 (partial overlap), with immune-ambiguous loci showing more sex differentiation than neuronal loci.
] <hyp:sex-differential-architecture>

#open-question(title: [X Chromosome Association Analysis in ME/CFS])[
The X chromosome carries the highest density of immune-related genes in the genome, and X-inactivation escape produces higher expression of certain immune genes in XX individuals. Standard GWAS analyses typically exclude the X chromosome. An X chromosome association analysis in DecodeME---with sex-appropriate genotype coding (0/1 for males, 0/1/2 for females with dosage compensation correction)---could test whether X-linked immune gene variants (_TLR7_, _TLR8_, _FOXP3_, _CD40LG_, _CXCR3_) contribute to ME/CFS risk and directly explain part of the female excess. If X-linked associations are absent, the female excess must arise from autosomal loci interacting with sex hormones or other modifiers.
] <oq:x-chromosome-mecfs>

===== Severity as Genetic Phenotype

#hypothesis(title: [PRS Dose-Response Across ME/CFS Severity Grades])[
*Certainty: 0.60.* If ME/CFS severity is partly genetically determined (higher genetic loading $=$ more severe disease), polygenic risk score should increase monotonically across severity grades (mild $<$ moderate $<$ severe $<$ very severe). This pattern is documented in schizophrenia (PRS predicts psychosis severity) and inflammatory bowel disease (PRS predicts need for surgery) @DecodeME2025. DecodeME's severity classification across 17,000+ participants enables direct testing via ordinal logistic regression of PRS against severity, adjusted for sex, age at onset, illness duration, and infection trigger.

Additionally, Sardell cluster-specific PRS (neuronal, immune, autophagy) can be tested for differential severity associations: does one genetic pathway predict severity more strongly than others?

*Falsifiable prediction:* If PRS does not differ significantly across severity grades (ANOVA $p > 0.05$, variance explained $< 0.5%$), genetic loading does not determine severity and environmental factors dominate. The prediction is that neuronal-synapse cluster PRS will show the strongest severity gradient (reflecting brain circuit vulnerability as a severity determinant), while immune cluster PRS will be flat across severity grades (reflecting immune variants as susceptibility switches rather than severity modulators).
] <hyp:prs-severity-dose-response>

#open-question(title: [Severe/Very-Severe Subgroup GWAS])[
Most ME/CFS GWAS treat all cases identically. A within-case GWAS comparing severe/very-severe cases (estimated n$approx$2,500) versus mild/moderate cases (n$approx$12,500) would remove case-control confounding entirely---both groups have ME/CFS, differing only in severity. If severity-specific loci enrich for autophagy/mitophagy pathways (the _FBXL4_ cluster), this would support the hypothesis that mitochondrial quality control capacity determines the severity ceiling (Hypothesis @hyp:mitophagy-vulnerability). If they enrich for neuronal/synaptic genes, severity is determined by brain circuit vulnerability.
] <oq:severe-subgroup-gwas>

===== Genotype $times$ Infection Trigger Interactions

#hypothesis(title: [Genotype-Trigger Interaction: SNP Effects That Differ by Infection Type])[
*Certainty: 0.45.* The two-hit model (Hypothesis @hyp:two-hit-glutamatergic-infectious) predicts that some genetic variants matter more for certain triggers. Using Bretherick 2023 infection typing (EBV/IM, non-EBV respiratory, Lyme/Q-fever, non-infectious), a case-only gene-environment interaction analysis at the eight genome-wide significant loci can test whether effect sizes differ across trigger categories (Cochran $Q$ heterogeneity test). The case-only design---comparing genotype frequencies across trigger subgroups within cases---is more powerful than case-control GxE and requires no new controls @DecodeME2025.

*Falsifiable prediction:* If no SNP shows significant genotype-trigger interaction (interaction $p > 0.006$ for the eight GWS loci after Bonferroni), the same genetic architecture produces ME/CFS regardless of trigger type, and the two-hit model's prediction of trigger-specific genetic modulation is falsified. The prediction is that at least two of eight GWS loci will show significant effect-size heterogeneity across trigger groups, with immune-annotated loci (_BTN2A2_, _RABGAP1L_) showing larger effects in EBV-triggered cases.
] <hyp:genotype-trigger-interaction>

#hypothesis(title: [Non-Infectious Onset as Higher Genetic Loading Subtype])[
*Certainty: 0.50.* Non-infectious-onset ME/CFS ($approx$30--40% of cases) lacks the canonical "second hit." If these patients develop ME/CFS without an identifiable environmental trigger, they may require higher genetic loading---more risk alleles at more loci---to cross the disease threshold. Alternatively, their triggers are unmeasured (subclinical infections, gradual stress accumulation). DecodeME can test this directly: if mean PRS is significantly higher in non-infectious-onset cases compared to infection-triggered cases, it supports a spectrum model where genetic risk substitutes for environmental trigger.

*Falsifiable prediction:* If mean PRS is not higher in non-infectious-onset cases compared to EBV-triggered cases (one-sided $t$-test $p > 0.05$), the high-genetic-loading model for non-infectious onset is falsified. The prediction is that non-infectious-onset cases will have $approx$0.15 SD higher PRS, and the genetic correlation between non-infectious and EBV-triggered ME/CFS will be 0.7--0.9 (partially overlapping but not identical architecture).
] <hyp:non-infectious-higher-loading>

===== Comorbidity Decomposition

#hypothesis(title: [Depression Comorbidity in ME/CFS: Genetic Predictor or Independent Phenocopy?])[
*Certainty: 0.60.* The depression paradox ($r_g = 0.60$ but no shared causal variants; Speculation @spec:depression-paradox) can be decomposed within DecodeME by constructing a depression PRS from publicly available PGC GWAS summary statistics and applying it to DecodeME participants @DecodeME2025. If depression PRS predicts depression comorbidity within ME/CFS but does not predict ME/CFS core symptoms (PEM, OI, cognitive dysfunction), depression in ME/CFS patients is a genuine comorbidity with shared risk but separate pathology. If depression PRS predicts specific ME/CFS symptoms, those symptoms share biological architecture with depression. If ME/CFS PRS is identical in depressed and non-depressed ME/CFS patients, depression does not arise from the ME/CFS genetic architecture itself.

*Falsifiable prediction:* If depression PRS significantly predicts ME/CFS core symptoms (PEM severity, OI) independent of depression status ($beta > 0.05$, $p < 0.01$), the "separate pathology" model is falsified and shared biology extends beyond comorbidity. The prediction is that depression PRS will predict depression comorbidity (OR $approx$ 1.1--1.2 per SD PRS) but not PEM or OI ($p > 0.1$), confirming that ME/CFS core features are genetically independent of depression.
] <hyp:depression-comorbidity-genetic>

#speculation(title: [Amitriptyline Pharmacogenomics: CYP Metaboliser Status and Treatment Selection])[
The $r_g = 0.61$ between ME/CFS and amitriptyline use is unexplained. It could reflect prescribing indication overlap (amitriptyline targets pain, neuropathy, insomnia---all ME/CFS symptoms), pharmacogenomic selection (specific CYP genotypes tolerate amitriptyline and have ME/CFS risk), or shared biological pathways (amitriptyline's NMDA receptor antagonism connects to the glutamatergic hypothesis). CYP2D6 and CYP2C19 metaboliser status can be imputed from DecodeME GWAS array data using Stargazer or PharmCAT pipelines. If the $r_g$ is abolished after conditioning on CYP loci, pharmacogenomic variants are the primary driver. If not, shared glutamatergic/synaptic pathway genes are more likely responsible---specifically, the same neuronal-synapse loci contributing to ME/CFS risk also increase the probability of being prescribed amitriptyline via shared pain/neuropathy phenotype.

(Certainty: 0.50)

*Falsifiable prediction:* If CYP2D6 metaboliser status does not associate with amitriptyline use patterns or symptom burden among users ($p > 0.05$), pharmacogenomic selection is not driving the genetic correlation.
] <spec:amitriptyline-pharmacogenomics>

===== Heritability Architecture

#hypothesis(title: [Functional Annotation Heritability Partitioning: Brain-First at the Regulatory Level])[
*Certainty: 0.65.* Stratified LD score regression (S-LDSC) can partition $h^2_("SNP") = 0.095$ into functional categories: coding versus non-coding, enhancer versus promoter versus intergenic, brain-specific regulatory elements (Roadmap Epigenomics), and immune cell regulatory elements @DecodeME2025. If heritability concentrates in brain-specific enhancers (as in schizophrenia and bipolar disorder), the brain-first model (Hypothesis @hyp:brain-first-genetic) gains regulatory-genomic support. If it concentrates in immune cell enhancers, the immune model gains genetic support. If it distributes without enrichment, ME/CFS is genetically diffuse (more like height than schizophrenia). This analysis requires only summary statistics and can be completed in days using existing software.

*Falsifiable prediction:* If no functional category shows significant enrichment (all enrichment $p > 0.05\/97$ after Bonferroni), ME/CFS heritability is diffusely distributed and the brain-first model lacks regulatory-genomic support. The prediction is that brain-specific enhancers (particularly cortical and cerebellar) will show $> 5 times$ enrichment, immune enhancers will show modest enrichment ($approx 2 times$), and coding variants will be depleted---consistent with the regulatory architecture observed in psychiatric GWAS.
] <hyp:heritability-partitioning-brain>

===== Mendelian Randomisation with DecodeME

#open-question(title: [Bidirectional Mendelian Randomisation: Sleep, IBS, and Depression])[
DecodeME GWAS summary statistics enable two-sample bidirectional Mendelian randomisation (MR) against publicly available GWAS for sleep traits, IBS, and depression. Three analyses with distinct clinical implications:

*Sleep traits:* If genetic instruments for poor sleep causally increase ME/CFS risk, sleep disruption is on the causal pathway. If genetic instruments for ME/CFS causally increase sleeping too much ($r_g = 0.66$), hypersomnia is a downstream consequence.

*IBS:* Bidirectional MR can distinguish shared glutamatergic vulnerability (no directional causation---horizontal pleiotropy), gut-to-brain causation (IBS $arrow.r$ ME/CFS via immune activation from gut permeability), or brain-to-gut causation (ME/CFS $arrow.r$ IBS via vagal/autonomic disruption). If neither direction shows significance, the $r_g = 0.75$ arises from shared genetic architecture without causal mediation, supporting the enteric glutamatergic hypothesis (Speculation @spec:enteric-glutamatergic-ibs).

*Depression:* If MR shows that genetic liability to depression does not causally increase ME/CFS risk, this is strong evidence against the psychogenic model. If genetic liability to ME/CFS causally increases depression risk, depression is a downstream consequence of chronic illness (reactive depression). Latent causal variable (LCV) analysis can estimate the genetic causality proportion.
] <oq:mendelian-randomisation-programme>

===== Genetic Correlation Decomposition

#hypothesis(title: [Partitioned Genetic Correlation: Biological Basis of the IBS Overlap])[
*Certainty: 0.55.* The $r_g = 0.75$ with IBS is the strongest genetic correlation, but its biological basis is unknown. Local genetic correlation estimation (rho-HESS or SUPERGNOVA) across the genome can identify specific genomic regions driving the correlation and partition it into regions containing neuronal/synaptic genes, immune genes, ENS-expressed genes, or serotonergic/dopaminergic genes @DecodeME2025. Three competing models make distinct predictions: (a) shared glutamatergic vulnerability (enteric glutamatergic hypothesis; Speculation @spec:enteric-glutamatergic-ibs) predicts enrichment at glutamatergic loci; (b) shared serotonergic variants predict enrichment at _HTR_ and _TPH_ genes; (c) shared autonomic regulation predicts enrichment at vagal/autonomic loci.

*Falsifiable prediction:* If the $r_g = 0.75$ is uniformly distributed across the genome (no region contributing $> 5%$), no single pathway mediates the correlation. The prediction is that the correlation will be concentrated at $approx$20--50 genomic regions, with significant enrichment for neuronal/synaptic annotations and modest enrichment for serotonergic loci.
] <hyp:partitioned-rg-ibs>

===== Diagnostic Criteria and Genetic Architecture

#hypothesis(title: [CCC Versus IOM: Do Diagnostic Criteria Cut Along Genetic Boundaries?])[
*Certainty: 0.45.* DecodeME accepted patients meeting CCC (Canadian Consensus Criteria), ICC (International Consensus Criteria), or IOM criteria. CCC requires PEM plus specific neurological, autonomic, and immune criteria; IOM requires PEM but is broader. If patients meeting CCC (more restrictive) have a different genetic architecture than IOM-only patients, diagnostic criteria cut along a biological boundary. If genetic architecture is identical, the criteria differences are clinically but not biologically meaningful. Testing: GWAS separately for each diagnostic subgroup versus shared controls, followed by cross-subgroup genetic correlation estimation.

*Falsifiable prediction:* If the genetic correlation between CCC-only and IOM-only subgroups exceeds 0.90, the diagnostic criteria do not identify biologically distinct subgroups, and the field's criteria debates are genetically moot. The prediction is that $r_g$ will be 0.7--0.85 (moderate divergence), with CCC-only patients showing higher neuronal-cluster PRS.
] <hyp:diagnostic-criteria-genetic>

===== Cross-Trait and Cross-Disease Analyses

#open-question(title: [Genetic Correlations with ADHD and Fibromyalgia])[
Two genetic correlations not yet computed from DecodeME would inform cross-disease models.

*ADHD:* ADHD involves dopaminergic and noradrenergic dysfunction, cognitive fatigue, and executive dysfunction---symptoms shared with ME/CFS. If $r_g$(ME/CFS, ADHD) $> 0.30$, this would support the Maccallini VTA/SN dopaminergic signal (Speculation @spec:vta-sn-dopaminergic), suggest ADHD medications may benefit a dopaminergic ME/CFS subtype, and raise whether childhood ADHD is a risk factor for post-infectious ME/CFS.

*Fibromyalgia:* ME/CFS and fibromyalgia frequently co-occur. If $r_g$(ME/CFS, FM) $> 0.80$, they are genetically near-identical, suggesting a spectrum disorder. If $r_g < 0.30$, the conditions are genetically distinct despite phenotypic overlap. Partitioned $r_g$ by pain pathway genes versus neuronal/synaptic genes would reveal whether the overlap is pain-mediated or reflects shared central sensitisation.
] <oq:adhd-fm-genetic-correlations>

#hypothesis(title: [76 Shared Long COVID Genes: Trigger-Specific or Shared Downstream Vulnerability?])[
*Certainty: 0.50.* Sardell et al.\ (2026) identified 76 genes shared between ME/CFS and Long COVID combinatorial analyses @Sardell2026combinatorial. A "shared-gene PRS" constructed from SNPs in these 76 genes can be tested within DecodeME: does it preferentially predict post-respiratory-infection-onset ME/CFS (versus EBV-onset or non-infectious), or does it predict ME/CFS equally across trigger types? If the former, these genes represent a respiratory-post-infectious genetic subtype. If the latter, the overlap reflects shared downstream pathology (brain circuit vulnerability) rather than shared trigger biology.

*Falsifiable prediction:* If the shared-gene PRS does not preferentially predict post-respiratory-onset ME/CFS (interaction $p > 0.1$), the 76-gene overlap reflects shared downstream biology, not trigger-specific vulnerability. The prediction is modest trigger preference (OR $approx$ 1.15 for respiratory versus $approx$ 1.05 for EBV), but the dominant signal will be trigger-independent.
] <hyp:long-covid-shared-genes>

===== Between-Cluster Epistasis

#speculation(title: [Sardell Cluster Cross-Talk: Synergy Between Neuronal and Autophagy Pathways])[
Sardell et al.\ (2026) identified within-cluster epistasis (synergistic interactions among genes in the same functional cluster) @Sardell2026combinatorial. The most biologically interesting question is between-cluster interactions: does having both neuronal AND autophagy risk create a synergy beyond their additive effects? A cluster-pair interaction PRS (product of cluster-specific PRSs) can test whether the interaction term predicts ME/CFS risk or severity beyond additive effects. If the neuronal $times$ autophagy interaction is strongest, mitophagy failure in neurons is the critical convergence point, supporting a model where neurons with both synaptic dysfunction and impaired mitophagy are uniquely vulnerable (connecting Hypothesis @hyp:mitophagy-vulnerability with Hypothesis @hyp:glutamatergic-synaptic-dysfunction).

(Certainty: 0.40)

*Falsifiable prediction:* If no between-cluster interaction term is significant (interaction $p > 0.01$ for all pairs), the clusters act independently and ME/CFS risk is additive across pathways. The prediction is that the neuronal $times$ autophagy interaction will show synergy coefficient $> 1.2$, while the immune cluster acts additively.
] <spec:between-cluster-epistasis>

===== Family History and Genetic Subtyping Validation

#open-question(title: [PRS Versus Family History: Measured and Unmeasured Genetic Risk])[
Comparing PRS between ME/CFS patients with and without a family history of ME/CFS quantifies what proportion of familial risk is captured by common variants. Family history captures all heritable factors (common variants, rare variants, structural variants, epigenetic inheritance) plus shared environment. If PRS accounts for $< 20%$ of the family history effect, rare variant studies (SequenceME WGS) are high priority. If PRS captures most familial risk, larger GWAS will be the most productive strategy. An interaction test---whether family-history-positive patients with high PRS have earlier onset and greater severity than predicted by either factor alone---probes whether genetic risk compounds non-linearly.
] <oq:prs-vs-family-history>

===== Cross-Trait PRS for Symptom Subtyping

#speculation(title: [External PRS as Genetic Modifiers of ME/CFS Symptom Profile])[
ME/CFS symptom heterogeneity may partly reflect the overlay of multiple genetic predispositions. Polygenic risk scores from external GWAS (chronic pain, cognitive performance, blood pressure, iron/ferritin levels, vitamin D) applied to DecodeME participants could identify which symptom dimensions are genetically shared with other traits versus ME/CFS-specific. A patient with high ME/CFS PRS plus high pain PRS might present with a fibromyalgia-like phenotype; high ME/CFS PRS plus high cognitive-performance PRS (protective direction) might have preserved cognition despite severe PEM.

(Certainty: 0.50)

*Falsifiable prediction:* If no external PRS predicts any ME/CFS symptom dimension (all $p > 0.01$), within-ME/CFS symptom variation is not genetically correlated with these common traits. The prediction is that pain PRS will predict pain-dominant phenotype (OR $approx$ 1.1), cognitive PRS will inversely predict cognitive dysfunction severity, and blood pressure PRS will predict orthostatic intolerance severity.
] <spec:external-prs-symptom-modifiers>

===== PheWAS and Pleiotropy Mapping

#open-question(title: [Phenome-Wide Association of DecodeME Loci])[
For each of the eight genome-wide significant loci, a phenome-wide association study (PheWAS) using UK Biobank summary statistics can classify loci as ME/CFS-specific (no associations with correlated traits), broadly pleiotropic, or selectively pleiotropic (associated with specific trait clusters). Colocalization analysis (coloc) at each locus tests whether the same causal variant drives ME/CFS and the correlated trait. A locus that colocalises between ME/CFS and IBS but not depression identifies a gut-brain-specific variant. A locus that colocalises with depression and sleeping-too-much but not IBS identifies a central fatigue variant. The prediction---consistent with the "no shared causal variants" finding---is that two to three of eight loci will colocalise with IBS or sleep traits (posterior probability of shared variant $> 0.7$), while none will colocalise with depression.
] <oq:phewas-decodeme-loci>

===== Onset Age as Quantitative Trait

#open-question(title: [GWAS of Age-at-Onset Within ME/CFS Cases])[
A within-case GWAS treating onset age as a continuous quantitative trait (linear regression, genotype predicting onset age, adjusted for sex and ancestry PCs) asks: which SNPs influence *when* ME/CFS develops, given that it develops? This is distinct from the already-proposed onset-age-stratified GWAS (which compares early versus late against controls). Onset-age modifier loci have been identified in breast cancer, Parkinson's disease, and diabetes. In ME/CFS, with bimodally distributed onset age ($approx$18.8 and $approx$40.1 peaks), the analysis could identify developmental vulnerability windows (neurodevelopmental genes predicting early onset), aging-related pathways (mitochondrial quality control genes predicting late onset), or immune maturation variants (HLA region predicting onset relative to EBV exposure window). Onset-age modifier loci are clinically actionable: they identify which young people are at highest risk and might benefit from early intervention after infectious mononucleosis.
] <oq:onset-age-quantitative-gwas>

== Epigenetic Modifications
<sec:epigenetics>

Epigenetic modifications—chemical alterations to DNA and chromatin that regulate gene expression without changing DNA sequence—provide a plausible mechanism for how environmental triggers such as viral infections could produce lasting changes in cellular function. Unlike genetic variants that are inherited and static, epigenetic modifications are dynamic, potentially reversible, and responsive to environmental stimuli. In ME/CFS, epigenetic changes may explain how transient infections or stressors produce chronic alterations in immune function, metabolism, and neurological status.

The epigenetic landscape encompasses multiple interconnected mechanisms. DNA methylation silences gene expression by adding methyl groups to cytosine bases, particularly at CpG dinucleotides in gene promoters. Histone modifications alter chromatin structure through acetylation, methylation, phosphorylation, and other post-translational modifications of histone proteins, making genes more or less accessible to transcription machinery. MicroRNAs regulate gene expression post-transcriptionally by binding messenger RNAs and promoting their degradation or blocking translation. These mechanisms interact: DNA methylation patterns influence histone modifications, which in turn affect microRNA expression, creating integrated regulatory networks.

For ME/CFS, the epigenetic hypothesis proposes that triggering infections or stressors induce epigenetic reprogramming in immune cells, metabolic tissues, or neurological systems, and that this reprogramming persists after the trigger resolves, maintaining pathological cellular states. This model may explain chronicity without requiring persistent infection and suggests potentially reversible mechanisms amenable to therapeutic intervention.

=== DNA Methylation
<sec:dna-methylation>

DNA methylation represents the most stable and well-characterized epigenetic modification, involving addition of methyl groups to cytosine bases primarily at CpG sites (cytosine-guanine dinucleotides) by DNA methyltransferases DNMT1 (maintenance), DNMT3A, and DNMT3B (de novo). DNMT1 maintains methylation patterns through replication: it recognizes hemimethylated CpG sites via UHRF1, operates via a density-dependent allosteric switch (processive on highly methylated DNA, inactivated on sparse or unmethylated sites), and is recruited to methylated regions by MeCP2 via the TRD domain @Kimura2012DNMT1review. Low-density CpG methylation is particularly vulnerable to maintenance disruption @Tiedemann2024UHRF1lowdensity. DNMT3B extends its substrate specificity beyond CpG to methylate CAG trinucleotides in early embryonic development and in neurons — a tissue-specific activity not shared by DNMT1 or DNMT3A. Gene promoters rich in CpG sites (CpG islands) are normally unmethylated, allowing transcription; methylation of promoter CpG islands typically silences gene expression. Conversely, gene body methylation and methylation of repetitive elements may have different functional consequences.

A unified molecular mechanism for these context-dependent effects has been proposed by Bonnet, Hulo, Fourel et al.\ @BonnetFourel2026ProAB: CpG methylation on segments of approximately 200 base pairs decreases nucleosome mobility on that segment. This single biophysical mechanism can explain both repression (reduced mobility at promoters prevents transcription factor access and RNA polymerase passage) and activation (reduced mobility in gene bodies stabilizes nucleosome positioning, facilitating transcription elongation by preventing nucleosome collisions). The direction of effect depends on genomic context, not on different molecular mechanisms — the same biophysical process (nucleosome immobilization) produces opposite functional outcomes depending on where in the gene it occurs. This framework is consistent with the finding that global methylation-promoting drugs can have opposing effects on different loci, making simple predictions about their therapeutic action unreliable @BonnetFourel2026ProAB. In cancer, this mechanism explains the characteristic "global hypo + focal hyper" bidirectional pattern: DNMT3B redistribution away from ProB repeats (heterochromatin) toward ProA elements (euchromatin) produces coupled methylation loss at satellite repeats and gain at gene promoters and Alu sequences — one enzyme allocation change, two opposite methylation outcomes, mediated by the same nucleosome mobility effect at different genomic locations. The gain in methylation in cancer is not limited to genes; it also occurs at Alu sequences, which are extremely numerous throughout the genome and provide an important argument for DNMT3B relocalization into the A compartment @BonnetFourel2026ProAB.

Geneviève Fourel (personal communication, May 2026) has clarified that this global DNMT3B redistribution model is proposed by her to apply primarily to cancer and likely also to chronic stimulation, but is not applicable to ME/CFS in the same form. For ME/CFS, her proposal is more targeted: loss-meCpG specifically at HSAT2 (and possibly HSAT3) pericentromeric repeats in certain brain cells initially, with this state subsequently propagating to other cells. Critically, this implies an important causal reversal from our earlier framing: in ME/CFS, loss of DNMT3B activity at HSAT2 would be a _consequence_ of HSAT2 transcriptional activation, not the initial cause (see Chapter @ch:causal-hierarchy, Speculation @spec:methylation-loss-consolidation for our prior framing and its correction).

==== Global Methylation Patterns

Several studies have examined genome-wide DNA methylation patterns in ME/CFS patients compared to healthy controls using methylation array technologies that interrogate hundreds of thousands of CpG sites across the genome.

de Vega et al.\ conducted epigenome-wide association studies (EWAS) examining DNA methylation in blood samples from ME/CFS patients and controls @deVega2018. These studies identified differentially methylated positions (DMPs) and differentially methylated regions (DMRs) associated with ME/CFS status, with several affected genes showing biological plausibility. Effect sizes are typically modest (methylation differences of 2–10%), consistent with complex disease epigenetics where subtle changes across many loci create cumulative functional effects.

Longitudinal studies examining methylation stability over time show that ME/CFS-associated methylation patterns persist, suggesting stable epigenetic reprogramming rather than transient stress responses. However, within-person variability has not been extensively characterized, leaving open questions about whether methylation patterns fluctuate with symptom severity or remain static.
Global methylation analyses reveal both hypomethylation and hypermethylation in ME/CFS, with different genes showing methylation changes in opposite directions. This bidirectional pattern — global hypomethylation at repetitive elements with focal hypermethylation at gene promoters — is established in cancer as reflecting DNMT3B redistribution away from heterochromatin (ProB repeats) toward euchromatin (ProA elements) @BonnetFourel2026ProAB. However, Geneviève Fourel (personal communication, May 2026) has clarified that this global DNMT3B redistribution model — the wholesale transfer of DNMT3B from the B compartment to the A compartment — is applicable to cancer and likely to chronic stimulation conditions, but is not proposed by her for ME/CFS. For ME/CFS, she proposes a more targeted mechanism: loss of methylation (loss-meCpG) specifically at HSAT2 (and possibly HSAT3) pericentromeric repeats in certain brain cell types initially, with this state then propagating to other cells. In this model, loss of DNMT3B activity at HSAT2 would be a _consequence_ of HSAT2 activation, not the initial cause. The per-locus vector model in Chapter @ch:causal-hierarchy-formal (@oq:consolidation-directionality) captures both directions of methylation change; the unified formal treatment accommodates both a cancer-style global redistribution (gain-dominant in some patients) and the targeted HSAT2 loss-meCpG mechanism (loss-dominant at pericentromeric loci in others). In cancer, methylation gain occurs not only at gene promoters but also at Alu sequences, which are extremely numerous — an important argument for DNMT3B relocalization into the A compartment @BonnetFourel2026ProAB. The ME/CFS methylation signature suggests dysregulated methylation machinery rather than unidirectional change, consistent with altered activity of DNA methyltransferases (DNMTs) and ten-eleven translocation (TET) demethylases.

==== Gene-Specific Methylation Changes

Specific genes showing differential methylation in ME/CFS cluster in functionally relevant pathways, providing biological validation beyond statistical association.

Immune genes show notable methylation changes consistent with immune dysfunction phenotypes. Genes encoding cytokines, chemokines, and immune receptors demonstrate altered methylation in several studies. Hunter et al.\ using the EpiSwitch platform identified methylation signatures involving IL-2 pathway genes @Hunter2025, consistent with the T cell dysfunction documented in Chapter @ch:immune-dysfunction. Methylation changes in immune regulatory genes could establish stable alterations in cytokine production capacity or immune cell responsiveness, contributing to chronic inflammation or immune exhaustion.

Metabolic genes affecting mitochondrial function, glucose metabolism, and oxidative stress responses show differential methylation. Given the profound metabolic dysfunction in ME/CFS (Chapter @ch:energy-metabolism), epigenetic silencing of metabolic genes represents a plausible mechanism for persistent bioenergetic impairment. Methylation of genes encoding electron transport chain components, glycolytic enzymes, or oxidative phosphorylation machinery could reduce metabolic capacity even without genetic mutations.

Neurological and neurotransmitter genes demonstrate methylation changes that may relate to cognitive dysfunction and autonomic symptoms. Genes affecting neurotransmitter synthesis, reuptake, or receptor expression show altered methylation in some studies, potentially contributing to the neurological manifestations described in Chapter @ch:neurological.

==== PTPRN2 Hypomethylation and the Epigenetic–Cognitive Symptom Link
<sec:ptprn2-hypomethylation>

A 2026 epigenome-wide association study by Chalder, Moreau and colleagues represents the first ME/CFS EWAS to employ saliva-derived DNA on the Illumina EPIC (~850,000 CpG sites) platform @ChalderMoreau2026ptprn2. In 54 ME/CFS patients compared to 21 sedentary controls, a single hypomethylated CpG site within the _PTPRN2_ gene (protein tyrosine phosphatase receptor type N2, also known as IA-2beta/phogrin) survived rigorous multi-factor correction — a signal robust enough to distinguish patient epigenetic subgroups.

PTPRN2 biology provides mechanistic plausibility for this finding. The protein is a neuroendocrine pseudophosphatase expressed in the hypothalamus, hippocampus, and pituitary, where it regulates secretory vesicle accumulation for norepinephrine, dopamine, and serotonin @StojilkovicSokanovic2025ptprn. Its deletion in animal models impairs monoaminergic vesicle biogenesis and, in females, disrupts kisspeptin neuron development and ovulation — illustrating sex-differential PTPRN2 biology @StojilkovicSokanovic2025ptprn. PTPRN2 epigenetic dysregulation is not unique to ME/CFS and may converge with the ATP-dependent vesicular norepinephrine synthesis deficit documented in CSF (Chapter @ch:neurological, @spec:vesicular-ne-deficiency): independent analysis of postmortem Parkinson's disease brain identified 5mC/5hmC shifts at the _PTPRN2_ locus, supporting it as a neurological disease-relevant epigenetic target @ChozaVirani2024ptprn2PD.

In the Chalder 2026 cohort, _PTPRN2_ hypomethylation associated with brain fog symptoms — specifically word-finding difficulties and impaired comprehension — and with respiratory symptoms in male patients only (the latter association exploratory given sex-stratified sample sizes) @ChalderMoreau2026ptprn2. The authors interpret this as consistent with altered _PTPRN2_ expression in neurons relevant to monoaminergic transmission and autonomic regulation, both implicated elsewhere in ME/CFS pathophysiology (Chapters @ch:neurological and @ch:endocrine).

#include "sec-01-misc/subsec-04-ptprn2-hypomethylation-and-the-epigeneti/speculations/spec-ptprn2-hypomethylation-as-epigenetic-anc.typ"

#include "sec-01-misc/subsec-04-ptprn2-hypomethylation-and-the-epigeneti/limitations/lim-saliva-as-methylation-proxy-for-brain-ti.typ"

==== Functional Consequences and Validation

#include "sec-01-misc/subsec-05-functional-consequences-and-validation/limitations/lim-methylation-eq-not-functional-consequenc.typ"

Integration of methylation data with gene expression data addresses this question: do genes with altered methylation show corresponding changes in mRNA levels?

Several studies have performed integrative analyses correlating methylation with expression. For genes showing promoter hypermethylation, reduced mRNA expression would be expected; promoter hypomethylation should associate with increased expression. Many ME/CFS-associated methylation changes show the expected direction of expression change, supporting functional relevance. However, some differentially methylated genes show no expression change, possibly reflecting compensatory mechanisms, context-dependent effects (methylation may affect expression only in specific cell types or conditions), or methylation in regulatory regions outside proximal promoters.

Cell-type heterogeneity complicates interpretation. Whole blood methylation studies measure average methylation across multiple cell types (lymphocytes, monocytes, neutrophils, others), potentially obscuring cell-type-specific changes. If methylation changes occur predominantly in one cell type (for example, natural killer cells), analyzing bulk blood dilutes the signal. Future studies using cell-type-specific methylation profiling or single-cell technologies will better resolve this issue.

==== Methylation Age and Biological Aging

DNA methylation patterns change predictably with chronological age, enabling construction of epigenetic clocks that estimate biological age from methylation profiles. Accelerated epigenetic aging—biological age exceeding chronological age—associates with numerous age-related diseases and mortality risk.

Preliminary evidence suggests ME/CFS patients may show accelerated epigenetic aging, with methylation-based age estimates exceeding actual age. This finding, if replicated in larger cohorts, would support the hypothesis that ME/CFS involves accelerated biological aging processes affecting multiple physiological systems. The mechanisms underlying epigenetic age acceleration in ME/CFS remain unclear but could involve chronic oxidative stress, mitochondrial dysfunction, or chronic inflammation, all of which affect methylation patterns and associate with aging.

==== Telomere Shortening and Replicative Senescence
<sec:telomere-aging>

Telomere length provides a complementary measure of biological aging independent of the epigenetic clock. Rajeevan et al.\ (2018) conducted the largest study of biological aging markers in CFS ($n = 639$; Wichita and Georgia population-based cohorts; Fukuda criteria) and found leukocyte telomeres 957 bp shorter than age-matched controls, equivalent to 10.1--20.5 years of additional biological aging ($p = 0.0017$) @Rajeevan2018telomere. The effect was most pronounced in females under 45---the demographic with highest ME/CFS prevalence---and was independent of BMI, depression, and other potential confounders.

Telomere shortening in ME/CFS may be driven by multiple converging mechanisms documented in this document: chronic oxidative stress (Chapter @ch:energy-metabolism, Step 9) accelerates telomere erosion; sustained immune activation (Chapter @ch:immune-dysfunction) drives replicative senescence in T and NK cells; and chronic sympathetic overdrive may accelerate cellular aging through the ANS-aging pathway described by Errico et al.\ @Errico2025ANSaging (see Chapter @ch:cardiovascular Section @sec:ans-aging-phenotype).

#include "sec-01-misc/subsec-07-telomere-shortening-and-replicative-sene/limitations/lim-telomere-evidence-single-cross-sectional.typ"

==== Integration: Multi-Modal Biological Aging Assessment
<sec:aging-integration>

The convergence of epigenetic clock acceleration (methylation-based), telomere shortening (replication-based), and immunosenescence markers (Section @sec:immunosenescence-aging of Chapter @ch:immune-dysfunction) in ME/CFS suggests that accelerated biological aging is a real phenomenon rather than an artifact of any single measurement modality. However, no study has simultaneously measured all three aging modalities in the same ME/CFS cohort. This represents a critical research gap: multi-modal biological aging assessment in a well-characterized cohort (ICC criteria, $n > 100$) using Horvath/Hannum clocks, telomere length, and immunosenescence markers (p16#super[INK4a], SASP cytokine panel) would determine whether these aging signatures are correlated within patients or reflect independent processes.

==== Repetitive Element Derepression and HSAT2 Activation
<sec:repetitive-element-derepression>

Pericentromeric satellite repeats, particularly human-specific satellite 2 (HSAT2), represent a distinct class of genomic elements normally silenced by heterochromatin formation but susceptible to derepression under stress conditions including viral infection, heat shock, and cellular senescence.

*HSAT2 biology and silencing mechanisms.*
HSAT2 is a pericentromeric satellite repeat comprising ~1.5% of the human genome, organized in large tandem arrays on chromosome 1 and other acrocentric chromosomes. In healthy cells, HSAT2 is transcriptionally silenced by CTCF-mediated chromatin looping, DNA methylation, and H3K9me3 repressive histone marks. This silencing is essential for maintaining centromeric heterochromatin structure and preventing genomic instability.

*HSAT2 activation triggers.*
Multiple ME/CFS-relevant stressors can derepress HSAT2:

    - *Viral infection*: EBV, HHV-6, and SARS-CoV-2 induce heat shock factor 1 (HSF1) activation, which binds pericentromeric satellite repeats and promotes HSAT2 transcription @Vourc_h2022HSF1SatIII
    - *CTCF loss*: Senescence and oxidative stress reduce CTCF expression or alter its binding, de-repressing pericentromeric repeats
    - *DNA hypomethylation*: Global hypomethylation documented in ME/CFS @deVega2018 may extend to pericentromeric regions, activating silenced repeats
    - *Cellular senescence*: Senescent cells accumulate retrotransposon-rich RNAs due to reduced RNA turnover @Mullani2021senescenceRNA

#include "sec-01-misc/subsec-09-repetitive-element-derepression-and-hsat/hypotheses/hyp-hsat2-activation-pathways-in-me-cfs.typ"

*Connection to senescence and exosome transmission.*
Mullani et al. @Mullani2021senescenceRNA demonstrated that senescent cells accumulate long promoter RNAs and 3' gene extensions rich in retrotransposon sequences, associated with reduced RNA exosome subunit expression and impaired RNA turnover. This senescence-associated retroelement accumulation may feed into the exosomal transmission pathway described in Chapter @ch:immune-dysfunction (Section @sec:tier2-research), where senescent cell-derived EVs deliver HSAT2 and other retroelement RNAs to immune cells, driving chronic immune activation. This creates a feedforward loop: senescence → retroelement accumulation → exosomal transmission → immune activation → further senescence.

=== Histone Modifications
<sec:histone-modifications>

Histone proteins package DNA into nucleosomes, the fundamental units of chromatin structure. Post-translational modifications of histone tails—including acetylation, methylation, phosphorylation, ubiquitination, and others—regulate chromatin accessibility and gene expression. Histone acetylation generally activates transcription by relaxing chromatin structure, while histone methylation can either activate or repress transcription depending on which residue is modified and the degree of methylation.

==== Chromatin Remodeling in ME/CFS

Evidence for altered histone modifications in ME/CFS comes primarily from studies of immune cells, where chromatin remodeling regulates immune activation, differentiation, and exhaustion states.

#include "sec-01-misc/subsec-11-chromatin-remodeling-in-me-cfs/hypotheses/hyp-epigenetic-basis-of-t-cell-exhaustion.typ"

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

#include "sec-01-misc/subsec-17-micrornas-as-biomarkers/predictions/pred-microrna-biomarker-panels.typ"

Current evidence does not yet support clinical miRNA biomarker use for ME/CFS. Replication remains incomplete, effect sizes are modest, and head-to-head comparisons with overlapping conditions are limited. However, ongoing studies with larger sample sizes and standardized protocols may identify robust signatures warranting clinical validation.

==== Circulating vs Tissue-Specific MicroRNAs

An important question concerns the cellular source of differentially expressed miRNAs in blood. Circulating miRNAs may originate from blood cells themselves (lymphocytes, monocytes), reflecting altered immune cell miRNA expression. Alternatively, miRNAs may be released from tissues (muscle, brain, gut) in extracellular vesicles or bound to proteins, providing a window into tissue dysfunction not directly accessible through blood sampling.

Cell-type-specific miRNA profiling (isolating specific cell populations before miRNA extraction) can determine whether miRNA changes occur broadly across blood cells or specifically in subsets such as natural killer cells, T cells, or monocytes. Tissue-specific miRNAs can be identified through expression databases showing which miRNAs are enriched in particular tissues; finding muscle-enriched miRNAs elevated in ME/CFS patients' plasma might indicate muscle pathology.

Understanding miRNA cellular origin informs interpretation: immune cell-intrinsic miRNA changes suggest altered immune cell programming, while tissue-derived miRNAs suggest tissue damage or dysfunction with secondary release of cellular contents into circulation.

==== miR-153-3p, PHB2, and a Multi-Level Epigenetic Axis in ME/CFS
<sec:mir153-phb2-axis>

The Moreau group's 2026 study extends prior miRNA work in ME/CFS @Nepotchatykh2020mirnaMECFS @Nepotchatykh2023mirnaMECFS to characterise a specific miRNA — miR-153-3p — in relation to epigenetic and mitochondrial regulators. Circulating miR-153-3p levels were reduced in ME/CFS patients' blood compared to sedentary controls, and lower miR-153-3p levels correlated with poorer delayed memory recognition scores @ChalderMoreau2026ptprn2. This association provides an initial, association-level link between a specific miRNA and a specific cognitive deficit domain.

miR-153-3p has independent neurological relevance. In mouse hippocampus, intra-hippocampal miR-153-3p injection sufficient to elevate levels causes memory deficits, while its loss at normal levels (as in ME/CFS) is associated with reduced neuroprotection against amyloid-beta precursor protein (APP), alpha-synuclein, and NLRP3 inflammasome pathways @Stabile2024mir153memory @LahiriWang2025mir153AD @Li2022mir153stroke. The direction in ME/CFS — reduced circulating miR-153-3p correlating with worse memory — aligns with the loss-of-neuroprotection interpretation rather than the excess-causing-deficit interpretation, though the literature data are from heterogeneous model systems and caution is warranted in cross-study extrapolation.

The Chalder 2026 study additionally implicates the mitochondrial protein PHB2 (prohibitin 2) as a potential upstream regulator of miR-153-3p maturation. PHB2 is pleiotropic — it functions at the inner mitochondrial membrane as a mitophagy receptor, in the nucleus as an HDAC recruiter for epigenetic silencing, and in the cytoplasm in contexts that may include post-transcriptional miRNA regulation @QiLamont2023phb2cancer. Prior work in cancer cells documents PHB2 participating in lncRNA-mediated epigenetic silencing of miR-34a; the proposed cytoplasmic post-transcriptional mechanism for miR-153-3p maturation is mechanistically adjacent but not yet directly demonstrated @QiLamont2023phb2cancer.

#include "sec-01-misc/subsec-19-mir-153-3p-phb2-and-a-multi-level-epigen/speculations/spec-ptprn2-mir-153-3p-phb2-as-multi-level-ep.typ"

#include "sec-01-misc/subsec-19-mir-153-3p-phb2-and-a-multi-level-epigen/limitations/lim-phb2-mechanism-no-direct-demonstration.typ"

The Moreau group has previously validated circulating miRNA profiling as capable of discriminating ME/CFS from fibromyalgia @Nepotchatykh2023mirnaMECFS and stratifying patients by symptom severity @Nepotchatykh2020mirnaMECFS. The identification of miR-153-3p in Chalder 2026 extends this work with a specific cognitive symptom correlation, though miR-153-3p was not prominent in earlier ME/CFS miRNA panels from other groups @CheemaOltra2020genderMiRNA, suggesting it may be specific to Moreau's cohort selection approach or reflect genuine subgroup-level variation rather than a universal ME/CFS miRNA signature.

==== Mechanistic Extensions from the PTPRN2/miR-153-3p Axis
<sec:ptprn2-mir153-extensions>

Three additional speculative mechanisms arise from the Chalder-Moreau findings and connect to existing ME/CFS pathophysiology models.

*PTPRN2 hypomethylation as compensatory catecholamine-vesicle response.* PTPRN2 is a transmembrane component of dense-core secretory vesicles required for monoamine packaging. Sustained sympathoadrenal activation — documented in ME/CFS via norepinephrine spillover, autonomic dysfunction, and POTS overlap — depletes vesicle pools. Promoter hypomethylation is a known compensatory mechanism under conditions of chronic transcriptional demand. This reframes _PTPRN2_ hypomethylation not as a primary pathological lesion but as a biomarker of chronic sympathoadrenal load, predicting that the most severe autonomic dysfunction should correlate with the most pronounced hypomethylation @StojilkovicSokanovic2025ptprn.

#include "sec-01-misc/subsec-20-mechanistic-extensions-from-the-ptprn2-m/speculations/spec-ptprn2-hypomethylation-as-autonomic-stre.typ"

*PHB2 estrogen-axis driving sex predominance.* PHB2 is an established estrogen receptor-alpha co-repressor. Estrogen withdrawal increases the free cytoplasmic PHB2 pool. If elevated cytoplasmic PHB2 impairs miR-153-3p maturation (as proposed by Chalder 2026), low-estrogen windows (luteal phase, perimenstrual, perimenopause) should produce maximum miR-153-3p depletion and worst cognitive symptoms — consistent with clinical observations of perimenstrual ME/CFS worsening and perimenopausal onset clusters @ChalderMoreau2026ptprn2 @CheemaOltra2020genderMiRNA.

#include "sec-01-misc/subsec-20-mechanistic-extensions-from-the-ptprn2-m/speculations/spec-phb2-estrogen-axis-as-driver-of-female-p.typ"

*PHB2 mitophagy dysfunction as unifying energy-cognition lesion.* PHB2 operates not only in potential miRNA regulation but as the mitophagy receptor required for PINK1/Parkin-mediated elimination of damaged mitochondria. If a single PHB2 perturbation causes both miR-153-3p maturation failure (cognitive phenotype) and mitophagy impairment (energy phenotype), it represents a parsimonious upstream node connecting two major symptom domains @QiLamont2023phb2cancer.

#include "sec-01-misc/subsec-20-mechanistic-extensions-from-the-ptprn2-m/speculations/spec-phb2-as-shared-upstream-node-for-cogniti.typ"

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

#include "sec-01-misc/subsec-03-immune-system-gene-expression/achievements/ach-convergent-immune-gene-dysregulation.typ"

#include "sec-01-misc/subsec-03-immune-system-gene-expression/warnings/warn-replication-status-partially-replicated.typ"

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

#include "sec-01-misc/subsec-01-key-established-findings/achievements/ach-genetic-and-epigenetic-foundations-of-me.typ"

#include "sec-01-misc/subsec-01-key-established-findings/warnings/warn-replication-status-variable.typ"

=== Integration with Broader ME/CFS Pathophysiology

The genetic and epigenetic findings detailed in this chapter provide the constitutional substrate upon which the dysregulated physiological systems described in other chapters develop.

The immune dysfunction documented in Chapter @ch:immune-dysfunction—NK cell cytotoxicity impairment, T cell exhaustion, cytokine dysregulation—reflects both genetic predisposition (HLA types, immune gene variants, TRPM3 polymorphisms) and epigenetic reprogramming (T cell chromatin states characteristic of exhaustion, methylation of immune genes). Genetic susceptibility determines baseline immune function capacity; epigenetic changes following infection establish chronic dysfunction states.

The metabolic dysfunction of Chapter @ch:energy-metabolism—reduced oxidative phosphorylation, impaired ATP production, glycolytic shifts—similarly combines genetic vulnerability (mitochondrial gene variants, metabolic enzyme polymorphisms) with acquired epigenetic silencing of metabolic genes. The gene expression patterns show reduced expression of mitochondrial and metabolic pathway genes, potentially reflecting both genetic determinants of baseline expression and epigenetic downregulation following metabolic stress.

Neurological manifestations (Chapter @ch:neurological) may reflect TRPM3 dysfunction (with genetic variants affecting baseline expression and function), neurotransmitter system genetic variants, and epigenetic changes affecting blood-brain barrier integrity and neuroinflammation. The cognitive and autonomic symptoms could arise from the intersection of genetic liability and acquired epigenetic modifications.

This integrated model suggests that ME/CFS arises when genetic predisposition across multiple systems (immune, metabolic, neurological, cardiovascular) encounters environmental triggers sufficient to induce epigenetic reprogramming. The specific symptom profile reflects which genetic vulnerabilities predominate and which epigenetic changes occur, explaining clinical heterogeneity. Chapter @ch:integrative-models builds upon this genetic-epigenetic foundation to develop comprehensive multi-system models of ME/CFS pathophysiology, examining how constitutional factors interact with acquired dysfunction to create stable pathological states (Section @sec:synthesis).

=== Unresolved Questions and Future Directions

Despite substantial progress, critical questions remain:

#include "sec-01-misc/subsec-03-unresolved-questions-and-future-directio/open-questions/oq-causal-variants-and-mechanisms.typ"

#include "sec-01-misc/subsec-03-unresolved-questions-and-future-directio/open-questions/oq-epigenetic-causality-vs-consequence.typ"

#include "sec-01-misc/subsec-03-unresolved-questions-and-future-directio/open-questions/oq-genetic-subtyping.typ"

#include "sec-01-misc/subsec-03-unresolved-questions-and-future-directio/open-questions/oq-therapeutic-reversibility.typ"

#include "sec-01-misc/subsec-03-unresolved-questions-and-future-directio/open-questions/oq-prevention-in-high-risk-individuals.typ"

#include "sec-01-misc/subsec-03-unresolved-questions-and-future-directio/open-questions/oq-cross-condition-genetic-architecture.typ"

The genetic and epigenetic foundations of ME/CFS, while increasingly well characterized, point toward a future of precision medicine approaches where genetic profiling informs diagnosis, prognostication, and treatment selection, and where therapeutic interventions target the specific molecular pathways dysregulated in individual patients.

=== Connective Tissue Genetics and ECM Regulation

The high comorbidity between ME/CFS and hypermobile Ehlers-Danlos syndrome (hEDS) suggests genetic overlap in connective tissue regulation pathways. The following speculations explore potential genetic mechanisms linking ME/CFS to connective tissue pathology.

#include "sec-01-misc/subsec-04-connective-tissue-genetics-and-ecm-regul/speculations/spec-lysyl-oxidase-functional-deficiency-in-m.typ"

#include "sec-01-misc/subsec-04-connective-tissue-genetics-and-ecm-regul/speculations/spec-microrna-dysregulation-of-ecm-homeostasi.typ"

#include "sec-01-misc/subsec-04-connective-tissue-genetics-and-ecm-regul/speculations/spec-collagen-crosslinking-enzyme-polymorphis.typ"

#include "sec-01-misc/subsec-04-connective-tissue-genetics-and-ecm-regul/speculations/spec-hepcidin-related-iron-genetics-hamp-slc4.typ"

#include "sec-01-misc/subsec-04-connective-tissue-genetics-and-ecm-regul/speculations/spec-fads1-2-polymorphisms-and-spm-precursor-.typ"
