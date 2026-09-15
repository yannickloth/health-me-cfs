#import "../../../shared/environments.typ": *

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

#include "subsec-03-immune-system-gene-expression/achievements/ach-convergent-immune-gene-dysregulation.typ"

#include "subsec-03-immune-system-gene-expression/warnings/warn-replication-status-partially-replicated.typ"

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

