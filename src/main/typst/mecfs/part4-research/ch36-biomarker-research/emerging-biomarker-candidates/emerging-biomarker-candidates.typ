#import "../../../shared/environments.typ": *

== Emerging Biomarker Candidates from Parallel Multi-Modal Studies (2025--2026)
<sec:emerging-biomarkers-convergence>

#include "../speculations/speculation-spec:mmp9-ratio-platelet-biomarker.typ"

Multiple 2025--2026 studies have produced parallel evidence for biomarker candidates across immune, neurological, and vascular compartments. While none have yet achieved clinical validation, the methodological diversity of these studies is encouraging. These studies identify _different_ biological signals in _different_ cohorts using _different_ platforms---this is complementary multi-modal evidence, not convergence on a single mechanism. True convergence would require independent groups identifying the same biomarker abnormality with different methods. SleepFM (Thapa et al. 2026, Nature Medicine, n=65,000) illustrates an alternative convergence pathway: a single model demonstrates that cross-modal physiological decoupling during sleep predicts disease onset across 130+ conditions with C-index $>$0.80 @Thapa2026sleepfm, suggesting that physiological coupling patterns (a multi-system signal) can serve as a robust transdiagnostic biomarker. This does not constitute independent methodological convergence — it is a single model applied to diverse conditions — but it demonstrates that a single physiological parameter (decoupling) can carry diagnostic information across diseases. This suggests that ME/CFS biomarker research should complement molecular approaches with physiological coupling measures. The historical failure rate of ME/CFS biomarkers (NK cytotoxicity, cytokine panels, various autoantibody signatures---all initially promising, none clinically validated) should temper expectations.

#include "./neuroinflammation-imaging-biom/neuroinflammation-imaging-biom.typ"

#include "../speculations/speculation-spec:thalamic-lactate-stratification.typ"

#include "./complement-based-subgroup-stra/complement-based-subgroup-stra.typ"
#include "./extracellular-vesicle-mirna-si/extracellular-vesicle-mirna-si.typ"
#include "./longitudinal-exercise-proteomi/longitudinal-exercise-proteomi.typ"
#include "./net-degradation-and-dnase-acti/net-degradation-and-dnase-acti.typ"
#include "./epigenetic-and-mirna-biomarker/epigenetic-and-mirna-biomarker.typ"
#include "./repetitive-element-rna-biomark/repetitive-element-rna-biomark.typ"

#speculation(title: [Whole-Blood RNA-seq Diagnostic Classifier — Preliminary Amatica Cohort])[
*Certainty: 0.30.* (Internally cross-validated, not externally validated, not published. Single-cohort, 244 participants. Presented at Renegade Research Roundtable, July 2026.)

An elastic net classifier trained on whole-blood RNA-seq data (159 patients, 85 controls, 63% housebound) achieved held-out AUC 0.893 (95% CI 0.845--0.94, permutation $p = 0.01$), substantially outperforming cell-composition (AUC 0.60) and technical-variable (AUC 0.63) baselines. Pre-registered acceptance criteria were met after expression-floor thresholding and elastic-net tuning. At present the classifier reaches ~92% sensitivity/~78% specificity at a balanced operating point, well below the clinical threshold of ≥95% for both metrics. The cohort is the largest RNA-seq diagnostic attempt in ME/CFS to date but represents a single site with internal cross-validation only.

*Consequence:* Demonstrates proof of concept that whole-blood RNA-seq can separate ME/CFS from controls with a pre-registered, permutation-tested classifier. Moves the field from isolated gene-signature studies toward a validated analytical framework — but remains research-stage only until externally validated.

*Falsifiable prediction:* External validation of the classifier in an independent cohort will yield AUC $≥$0.80. If external AUC falls below 0.70, the internally cross-validated result was driven by site-specific confounds. The leave-one-batch-out test with 52 additional samples (expected August 2026) is the first near-term test.

*Limitations:* No external validation. Not published or preprinted. Single-protocol. Panel stability required iteration. A paper is reportedly in preparation. The finding's relevance at clinical biomarker thresholds (≥95% sensitivity + specificity) is unproven.
] <spec:amatica-rna-biomarker>

#speculation(title: [Immune Continuum — Amatica Preliminary Cohort])[
*Certainty: 0.20.* (Cluster membership unstable; confounded with batch for early pilot samples. Internally only. Not published.)

Curated-system immune gene clustering revealed a continuum of inflammatory tone across 159 patients rather than discrete immune subtypes. A forced two-group split produced immune-low (~81 patients) and immune-high (~78 patients) groups separated by roughly 1 standard deviation across compartments (monocytes, NLRP3, neutrophils, interferon, B-cells, T-cells, complement, mast cells, NK cells), but the split was not stable and is partially confounded with sequencing batch. The spread appeared in both Long COVID and ME/CFS, not specific to one diagnostic label.

*Consequence:* If confirmed, a continuum would suggest that biomarker-stratified trial designs assuming discrete immune subtypes may be premature — but the batch confound and instability mean this is a provisional signal only.

*Falsifiable prediction:* After batch correction, clustering on the full unbiased gene set (not curated panels) will fail to recover stable discrete clusters with silhouette scores above chance levels. If discrete clusters are robustly recovered, the continuum interpretation is wrong and immune subtypes exist.

*Limitations:* Unstable clustering. Batch confound for pilot samples. No external validation. Curated gene panels only. The data is more consistent with a continuous spectrum than discrete subgroups, but the batch effect has not been untangled.
] <spec:amatica-immune-continuum-emerging>

