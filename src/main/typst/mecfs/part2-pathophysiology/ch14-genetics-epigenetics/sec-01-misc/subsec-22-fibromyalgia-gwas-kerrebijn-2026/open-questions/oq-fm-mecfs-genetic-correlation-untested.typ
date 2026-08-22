#import "../../../../../shared/environments.typ": *

#open-question(title: [Direct Fibromyalgia × ME/CFS Genetic Correlation Remains Untested])[
The Kerrebijn 2026 fibromyalgia GWAS computed genetic correlations with chronic pain, psychiatric, and somatic disorders (rg > 0.7 with low back pain, PTSD, IBS) but did not report a direct fibromyalgia × ME/CFS genetic correlation @Kerrebijn2026FibromyalgiaGWAS. Conversely, the DecodeME ME/CFS GWAS computed rg with 3,167 traits but did not include a fibromyalgia case/control GWAS among them @DecodeME2025. The shared-loci inference (_OLFM4_, _RABGAP1L_, and _DCC_ in a prior ME/CFS overlap; _GPR52_ is the second-nearest gene to the _RABGAP1L_ locus, not an independent ME/CFS finding) and convergent brain-enriched architecture suggest overlap, but no single study has directly measured the genetic correlation between fibromyalgia and ME/CFS.

*Why this matters.* A direct rg estimate would quantify how much of the fibromyalgia–ME/CFS comorbidity is genetically shared versus coincidence or diagnostic overlap. If rg is high (as with IBS at 0.75), the two conditions are likely members of a shared chronic-overlapping-pain / neuroimmune genetic family; if rg is low despite clinical overlap, the co-occurrence may reflect convergent downstream mechanisms rather than shared germline architecture.

*Falsifiable prediction:* A cross-trait LD score regression between the Kerrebijn fibromyalgia GWAS and DecodeME would estimate rg; the hypothesis (shared central genetic vulnerability) predicts rg significantly above zero (point estimate > 0.3) with brain-enriched shared heritability. Falsified if rg is indistinguishable from zero.

*Consequence:* This is an immediately computable analysis using existing public GWAS summary statistics — it would directly answer whether ME/CFS and fibromyalgia share a genetic basis, with no new genotyping required. (Severity applicability: unknown — GWAS cohorts not stratified by ME/CFS severity.)
] <oq:fm-mecfs-genetic-correlation-untested>
