#import "../../../../shared/environments.typ": *

=== Transcriptomics

Gene expression profiling has identified reproducible transcriptomic signatures:
    - *Immune gene dysregulation*: Multiple studies report altered expression of immune-related genes, including upregulation of interferon-stimulated genes, downregulation of NK cell-associated transcripts, and dysregulation of NF-$kappa$B signaling pathways
    - *Metabolic gene changes*: Downregulation of genes involved in oxidative phosphorylation and upregulation of glycolysis-related transcripts are consistent with the metabolic shift documented by functional studies
    - *Exercise-induced changes*: Transcriptomic profiling before and after exercise challenge reveals gene expression changes in ME/CFS patients that differ from healthy controls, including altered stress response and immune activation patterns persisting 24–48 hours post-exercise
    - *Single-cell transcriptomics*: Emerging single-cell RNA-seq studies are resolving cell-type-specific expression changes that are averaged out in bulk profiling, revealing that immune cell subsets carry distinct transcriptomic signatures in ME/CFS

#speculation(title: [Whole-Blood RNA-seq Diagnostic Classifier — Amatica Health Preliminary Cohort])[
*Certainty: 0.30.* (Preliminary, internally cross-validated, not externally validated, not published. Single-cohort. Not peer-reviewed. Shared as research-in-progress by Amatica Health at the Renegade Research Roundtable, 23 July 2026.)

Amatica Health has presented preliminary findings from a whole-blood RNA sequencing cohort of 244 participants (159 patients, 85 healthy controls) with deep phenotyping, including 63% of patients housebound or more severely affected. RNA was extracted from PAXgene tubes, depleted of ribosomal and globin RNA, and sequenced on a NovaSeq X (150 bp paired-end, ~60M reads per sample). An elastic net (GLMnet) classifier trained on 80% of the data and tested on held-out 20%, with ten-fold cross-validation and pre-registered acceptance criteria, achieved a held-out AUC of 0.893 (95% CI: 0.845--0.94, $p = 0.01$ after 97 permutation tests). Subgroup performance: ME/CFS alone AUC 0.903, Long COVID alone AUC 0.858. Baseline models confirmed the RNA signal was not driven by demographics (age + sex AUC 0.48), cell composition shifts (AUC 0.60), or technical variables (AUC 0.63). At a balanced operating point the model achieved ~92% sensitivity and ~78% specificity. Performance degraded when specificity was tightened to 95% (sensitivity dropped to ~39%), so the classifier is not yet at clinical diagnostic thresholds.

*Consequence:* If externally validated at similar performance, this would represent the largest working RNA-based diagnostic classifier for ME/CFS — but the finding is preliminary, the cohort is single-site, and external validation is pending. No clinical application exists today.

*Falsifiable prediction:* External validation in an independent cohort with matched sequencing protocol should yield held-out AUC $≥$0.80. If external validation AUC falls below 0.70, the internal AUC was driven by site-specific or batch-specific confounds rather than biology. The forthcoming paper and leave-one-batch-out testing (with 52 new samples added August 2026) will provide the first test.

*Limitations:* Internally cross-validated only — no external cohort validation yet. Single-site, single-protocol. Panel stability required tuning iterations. The blog post reports a paper in preparation but no manuscript or preprint was available as of July 2026. At 159 patients this is large for the field but small by clinical biomarker standards; performance at larger sample sizes is unknown.
] <spec:amatica-rna-classifier>

Differential expression analysis (limma-voom) from the same cohort identified over 3,000 differentially expressed genes in the combined Long COVID + ME/CFS group, approximately 2,125 in ME/CFS alone, and approximately 1,472 in Long COVID alone. Pathway-level analysis (Reactome, fgsea) revealed two coordinated shifts at the cohort level. The B-cell and antibody arm appeared reduced, with lower activity in B-cell receptor genes, immunoglobulin genes, and master transcription factors defining B cells. Neutrophils showed a signature consistent with emergency granulopoiesis — raised activity in maturation, activation, and pathogen-response genes — alongside reduced neutrophil cell-type proportion estimates, making the activation signal paradoxical and potentially informative.

#speculation(title: [Immune Continuum Rather Than Discrete Subgroups — Amatica Preliminary Cohort])[
*Certainty: 0.25.* (Preliminary, confounded with sequencing batch for early pilot samples, cluster membership not stable. Not externally validated. Not published.)

Clustering patients on curated immune gene panels (B-cell, NK-cell, NLRP3/inflammasome, interferon/STAT, monocyte, T-cell, complement, mast-cell, TGF-$beta$, oxidative stress, RBC/heme) revealed a continuum of immune-inflammatory tone rather than discrete clusters. When a two-group split was forced, the groups separated into one immune-low group (~81 patients) and one immune-high group (~78 patients), but cluster membership was not stable under probing. Across compartments, one group sat roughly half a standard deviation below the cohort mean and the other roughly half a standard deviation above. The spread was visible in both Long COVID and ME/CFS, with samples from each end distributed across diagnostic labels. Two caveats apply: the split itself was unstable (the data is more consistent with a continuous spectrum than two distinct populations), and early pilot-batch samples are confounded with the immune-high group (a batch effect that has not yet been disentangled).

*Consequence:* If the immune continuum finding holds after batch-effect resolution, it challenges subgroup-based stratification approaches that assume discrete immunological clusters in ME/CFS. A continuum would imply that treatment-by-subtype logic needs continuous biomarkers rather than discrete groupings. The finding is preliminary and the batch confound must be resolved first.

*Falsifiable prediction:* After batch-effect correction and expansion of the pilot sample set, independent replication should fail to find a stable two-cluster split and instead confirm a unimodal or shallow-bimodal immune-state distribution. If a discrete clustering solution is robustly recovered after batch correction and external validation, the continuum interpretation is wrong and discrete immune subtypes exist.

*Limitations:* Batch confound (pilot samples cluster in immune-high). Unstable clustering. Single-cohort, internally only. No external validation. Curated gene panels may miss important pathways; exhaustive pathway discovery was not reported.
] <spec:amatica-immune-continuum>


