#import "../../../shared/environments.typ": *

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

A complementary reduced-representation bisulphite sequencing (RRBS) study by Peppercorn et al.\ extended this to a direct head-to-head of the ME/CFS and Long COVID methylomes, finding 214 differentially methylated fragments (DMFs) in ME/CFS and 429 in Long COVID vs healthy controls, with 118 shared DMFs and a Pearson correlation of 0.88 between the two disease cohorts, alongside a smaller set of opposite-direction methylation sites (see Cross-Disease Comparison @spec:methylene-mecfs-longcovid-distinguish) @Peppercorn2025methylation.

Longitudinal studies examining methylation stability over time show that ME/CFS-associated methylation patterns persist, suggesting stable epigenetic reprogramming rather than transient stress responses. However, within-person variability has not been extensively characterized, leaving open questions about whether methylation patterns fluctuate with symptom severity or remain static.
Global methylation analyses reveal both hypomethylation and hypermethylation in ME/CFS, with different genes showing methylation changes in opposite directions. This bidirectional pattern — global hypomethylation at repetitive elements with focal hypermethylation at gene promoters — is established in cancer as reflecting DNMT3B redistribution away from heterochromatin (ProB repeats) toward euchromatin (ProA elements) @BonnetFourel2026ProAB. However, Geneviève Fourel (personal communication, May 2026) has clarified that this global DNMT3B redistribution model — the wholesale transfer of DNMT3B from the B compartment to the A compartment — is applicable to cancer and likely to chronic stimulation conditions, but is not proposed by her for ME/CFS. For ME/CFS, she proposes a more targeted mechanism: loss of methylation (loss-meCpG) specifically at HSAT2 (and possibly HSAT3) pericentromeric repeats in certain brain cell types initially, with this state then propagating to other cells. In this model, loss of DNMT3B activity at HSAT2 would be a _consequence_ of HSAT2 activation, not the initial cause. The per-locus vector model in Chapter @ch:causal-hierarchy-formal (@oq:consolidation-directionality) captures both directions of methylation change; the unified formal treatment accommodates both a cancer-style global redistribution (gain-dominant in some patients) and the targeted HSAT2 loss-meCpG mechanism (loss-dominant at pericentromeric loci in others). In cancer, methylation gain occurs not only at gene promoters but also at Alu sequences, which are extremely numerous — an important argument for DNMT3B relocalization into the A compartment @BonnetFourel2026ProAB. The ME/CFS methylation signature suggests dysregulated methylation machinery rather than unidirectional change, consistent with altered activity of DNA methyltransferases (DNMTs) and ten-eleven translocation (TET) demethylases.

==== Gene-Specific Methylation Changes

Specific genes showing differential methylation in ME/CFS cluster in functionally relevant pathways, providing biological validation beyond statistical association.

Immune genes show notable methylation changes consistent with immune dysfunction phenotypes. Genes encoding cytokines, chemokines, and immune receptors demonstrate altered methylation in several studies. Using a distinct epigenetic modality, Hunter et al.\ profiled 3D chromosome-conformation architecture (the EpiSwitch platform) and identified signatures involving IL-2 pathway genes and JAK-STAT signalling @Hunter2025, consistent with the T cell dysfunction documented in Chapter @ch:immune-dysfunction (see Chapter @ch:biomarker-research, Section @sec:episwitch-3d-genomic). Methylation changes in immune regulatory genes could establish stable alterations in cytokine production capacity or immune cell responsiveness, contributing to chronic inflammation or immune exhaustion.

Metabolic genes affecting mitochondrial function, glucose metabolism, and oxidative stress responses show differential methylation. Given the profound metabolic dysfunction in ME/CFS (Chapter @ch:energy-metabolism), epigenetic silencing of metabolic genes represents a plausible mechanism for persistent bioenergetic impairment. Methylation of genes encoding electron transport chain components, glycolytic enzymes, or oxidative phosphorylation machinery could reduce metabolic capacity even without genetic mutations.

Neurological and neurotransmitter genes demonstrate methylation changes that may relate to cognitive dysfunction and autonomic symptoms. Genes affecting neurotransmitter synthesis, reuptake, or receptor expression show altered methylation in some studies, potentially contributing to the neurological manifestations described in Chapter @ch:neurological.

==== PTPRN2 Hypomethylation and the Epigenetic–Cognitive Symptom Link
<sec:ptprn2-hypomethylation>

A 2026 epigenome-wide association study by Chalder, Moreau and colleagues represents the first ME/CFS EWAS to employ saliva-derived DNA on the Illumina EPIC (~850,000 CpG sites) platform @ChalderMoreau2026ptprn2. In 54 ME/CFS patients compared to 21 sedentary controls, a single hypomethylated CpG site within the _PTPRN2_ gene (protein tyrosine phosphatase receptor type N2, also known as IA-2beta/phogrin) survived rigorous multi-factor correction — a signal robust enough to distinguish patient epigenetic subgroups.

PTPRN2 biology provides mechanistic plausibility for this finding. The protein is a neuroendocrine pseudophosphatase expressed in the hypothalamus, hippocampus, and pituitary, where it regulates secretory vesicle accumulation for norepinephrine, dopamine, and serotonin @StojilkovicSokanovic2025ptprn. Its deletion in animal models impairs monoaminergic vesicle biogenesis and, in females, disrupts kisspeptin neuron development and ovulation — illustrating sex-differential PTPRN2 biology @StojilkovicSokanovic2025ptprn. PTPRN2 epigenetic dysregulation is not unique to ME/CFS and may converge with the ATP-dependent vesicular norepinephrine synthesis deficit documented in CSF (Chapter @ch:neurological, @spec:vesicular-ne-deficiency) and with new striatal VMAT2 PET evidence of dopaminergic terminal loss in long COVID (Observation @cf:vmat2-longcovid), which together suggest that vesicular monoamine handling is a convergent pathogenic node across postviral illness — impaired at the genetic-regulatory level (PTPRN2 hypomethylation), the functional level (ATP-dependent VMAT2 transport), and the structural level (dopaminergic terminal loss): independent analysis of postmortem Parkinson's disease brain identified 5mC/5hmC shifts at the _PTPRN2_ locus, supporting it as a neurological disease-relevant epigenetic target @ChozaVirani2024ptprn2PD.

In the Chalder 2026 cohort, _PTPRN2_ hypomethylation associated with brain fog symptoms — specifically word-finding difficulties and impaired comprehension — and with respiratory symptoms in male patients only (the latter association exploratory given sex-stratified sample sizes) @ChalderMoreau2026ptprn2. The authors interpret this as consistent with altered _PTPRN2_ expression in neurons relevant to monoaminergic transmission and autonomic regulation, both implicated elsewhere in ME/CFS pathophysiology (Chapters @ch:neurological and @ch:endocrine).

#include "subsec-04-ptprn2-hypomethylation-and-the-epigeneti/speculations/spec-ptprn2-hypomethylation-as-epigenetic-anc.typ"

#include "subsec-04-ptprn2-hypomethylation-and-the-epigeneti/limitations/lim-saliva-as-methylation-proxy-for-brain-ti.typ"

==== Functional Consequences and Validation

#include "subsec-05-functional-consequences-and-validation/limitations/lim-methylation-eq-not-functional-consequenc.typ"

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

#include "subsec-07-telomere-shortening-and-replicative-sene/limitations/lim-telomere-evidence-single-cross-sectional.typ"

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

#include "subsec-09-repetitive-element-derepression-and-hsat/hypotheses/hyp-hsat2-activation-pathways-in-me-cfs.typ"

*Connection to senescence and exosome transmission.*
Mullani et al. @Mullani2021senescenceRNA demonstrated that senescent cells accumulate long promoter RNAs and 3' gene extensions rich in retrotransposon sequences, associated with reduced RNA exosome subunit expression and impaired RNA turnover. This senescence-associated retroelement accumulation may feed into the exosomal transmission pathway described in Chapter @ch:immune-dysfunction (Section @sec:tier2-research), where senescent cell-derived EVs deliver HSAT2 and other retroelement RNAs to immune cells, driving chronic immune activation. This creates a feedforward loop: senescence → retroelement accumulation → exosomal transmission → immune activation → further senescence.

=== Histone Modifications
<sec:histone-modifications>

Histone proteins package DNA into nucleosomes, the fundamental units of chromatin structure. Post-translational modifications of histone tails—including acetylation, methylation, phosphorylation, ubiquitination, and others—regulate chromatin accessibility and gene expression. Histone acetylation generally activates transcription by relaxing chromatin structure, while histone methylation can either activate or repress transcription depending on which residue is modified and the degree of methylation.

==== Chromatin Remodeling in ME/CFS

Evidence for altered histone modifications in ME/CFS comes primarily from studies of immune cells, where chromatin remodeling regulates immune activation, differentiation, and exhaustion states.

#include "subsec-11-chromatin-remodeling-in-me-cfs/hypotheses/hyp-epigenetic-basis-of-t-cell-exhaustion.typ"

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

#include "subsec-17-micrornas-as-biomarkers/predictions/pred-microrna-biomarker-panels.typ"

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

#include "subsec-19-mir-153-3p-phb2-and-a-multi-level-epigen/speculations/spec-ptprn2-mir-153-3p-phb2-as-multi-level-ep.typ"

#include "subsec-19-mir-153-3p-phb2-and-a-multi-level-epigen/limitations/lim-phb2-mechanism-no-direct-demonstration.typ"

The Moreau group has previously validated circulating miRNA profiling as capable of discriminating ME/CFS from fibromyalgia @Nepotchatykh2023mirnaMECFS and stratifying patients by symptom severity @Nepotchatykh2020mirnaMECFS. The identification of miR-153-3p in Chalder 2026 extends this work with a specific cognitive symptom correlation, though miR-153-3p was not prominent in earlier ME/CFS miRNA panels from other groups @CheemaOltra2020genderMiRNA, suggesting it may be specific to Moreau's cohort selection approach or reflect genuine subgroup-level variation rather than a universal ME/CFS miRNA signature.

==== Mechanistic Extensions from the PTPRN2/miR-153-3p Axis
<sec:ptprn2-mir153-extensions>

Three additional speculative mechanisms arise from the Chalder-Moreau findings and connect to existing ME/CFS pathophysiology models.

*PTPRN2 hypomethylation as compensatory catecholamine-vesicle response.* PTPRN2 is a transmembrane component of dense-core secretory vesicles required for monoamine packaging. Sustained sympathoadrenal activation — documented in ME/CFS via norepinephrine spillover, autonomic dysfunction, and POTS overlap — depletes vesicle pools. Promoter hypomethylation is a known compensatory mechanism under conditions of chronic transcriptional demand. This reframes _PTPRN2_ hypomethylation not as a primary pathological lesion but as a biomarker of chronic sympathoadrenal load, predicting that the most severe autonomic dysfunction should correlate with the most pronounced hypomethylation @StojilkovicSokanovic2025ptprn.

#include "subsec-20-mechanistic-extensions-from-the-ptprn2-m/speculations/spec-ptprn2-hypomethylation-as-autonomic-stre.typ"

*PHB2 estrogen-axis driving sex predominance.* PHB2 is an established estrogen receptor-alpha co-repressor. Estrogen withdrawal increases the free cytoplasmic PHB2 pool. If elevated cytoplasmic PHB2 impairs miR-153-3p maturation (as proposed by Chalder 2026), low-estrogen windows (luteal phase, perimenstrual, perimenopause) should produce maximum miR-153-3p depletion and worst cognitive symptoms — consistent with clinical observations of perimenstrual ME/CFS worsening and perimenopausal onset clusters @ChalderMoreau2026ptprn2 @CheemaOltra2020genderMiRNA.

#include "subsec-20-mechanistic-extensions-from-the-ptprn2-m/speculations/spec-phb2-estrogen-axis-as-driver-of-female-p.typ"

*PHB2 mitophagy dysfunction as unifying energy-cognition lesion.* PHB2 operates not only in potential miRNA regulation but as the mitophagy receptor required for PINK1/Parkin-mediated elimination of damaged mitochondria. If a single PHB2 perturbation causes both miR-153-3p maturation failure (cognitive phenotype) and mitophagy impairment (energy phenotype), it represents a parsimonious upstream node connecting two major symptom domains @QiLamont2023phb2cancer.

#include "subsec-20-mechanistic-extensions-from-the-ptprn2-m/speculations/spec-phb2-as-shared-upstream-node-for-cogniti.typ"

