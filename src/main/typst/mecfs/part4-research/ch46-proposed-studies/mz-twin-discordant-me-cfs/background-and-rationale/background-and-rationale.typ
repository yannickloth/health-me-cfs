#import "../../../../shared/environments.typ": *

=== Background and Rationale

Every ME/CFS study struggles with the same fundamental confound: is an observed biological abnormality a cause of the illness, a consequence of it, or a genetic predisposition shared by both? Cross-sectional case-control designs cannot distinguish these possibilities. Longitudinal studies capture temporality but not causation. Randomised trials test interventions but not underlying biology.

The monozygotic (MZ) twin discordant design eliminates the largest confound in one stroke. MZ twins share 100% of their germline DNA sequence, their early rearing environment, their parental socioeconomic status, and their childhood diet. When one twin develops ME/CFS and the other does not, the unaffected co-twin is the optimal control — matched on every genetic and early-environmental variable that plagues conventional studies. Any difference between the twins is attributable to the illness or its trigger, not to shared predisposition @Buchwald2001 @Koelle2002TwinsHSV.

This design has already been used productively in ME/CFS: a 2-day CPET case report in identical twins discordant for ME/CFS showed a 13% VO₂peak decline only in the affected twin @Giloteaux2016Twins, providing within-subject replication of the Day-2 decline. A platelet mitochondrial proteomics study in two twin pairs found differentially expressed proteins in the affected twins @Ciregia2016proteomics. A 22-pair HSV serology study found no difference in herpesvirus antibodies between affected and unaffected co-twins @Koelle2002TwinsHSV — a null result that constrains the viral persistence hypothesis in ME/CFS.

But these prior twin studies used small samples (n=1--22 pairs) and measured blood-based biomarkers. No twin study has combined the three domains where DecodeME's genetic findings now demand investigation: striatal dopaminergic imaging, microbiome composition, and herpesvirus lytic-to-structural antibody ratios.

==== The Genetic Ratchet: Why Twin Design Now

DecodeME (n=15,579 cases, n=259,909 controls) identified eight genome-wide significant loci and a brain-wide tissue enrichment pattern that changes the strategic value of the twin design @DecodeME2025.

*Brain tissue enrichment.* MAGMA gene-tissue analysis found significant enrichment in all 13 brain tissues examined, with glutamatergic synapse genes (SHISA6, UNC13C) among the implicated loci @DecodeME2025 @MECFSScience2025decodeme.

*Cell-type convergence on striatal MSNs.* The Maccallini 2026 meta-GWAS (n=19,470) found medium spiny neurons (MSNs) in the striatum as the most specific cell-type hit using the Human Brain Atlas pipeline, replicated in Dropviz (7/13 significant cell types are striatal neurons) @Maccallini2026metaGWAS. Immune cell enrichment (ImmGen) was null.

*Rare variant convergence.* An independent rare-variant analysis (Snyder 2025) identified synaptic genes (NLGN2, SYNGAP1) — two independent methodological paths converging on neuronal biology @Snyder2025rareBrain.

*Heritability estimates.* Twin studies yield h² ≈ 0.51 (95% CI: 0.37--0.65) for ME/CFS, while DecodeME's SNP-based heritability is h²_SNP = 0.095 — the 5.4-fold gap means ~81% of the genetic liability is "missing" @Buchwald2001 @DecodeME2025. Shared environment, rare variants, epistasis, and gene-environment interactions fill the gap.

These findings create a specific prediction: if ME/CFS genetic risk operates through striatal circuits, and if environmental triggers (infection, stress) activate this vulnerability, then discordant MZ twins should differ in striatal imaging markers despite identical genomes. The unaffected co-twin carries the same genetic vulnerability — but lacks the illness, meaning the difference between twins isolates the acquired pathology.

==== Three Convergent Measurement Domains

Three domains cross-validated by the DecodeME findings, plus the LSR connecting to a validated biomarker hypothesis:

*Striatal VMAT2 PET.* Liu et al.\ (2026) found 16--20% reduction in VMAT2 binding across ventral striatum, dorsal putamen, and dorsal caudate in long COVID versus controls (P = 4×10⁻⁵), with reductions comparable to mild-moderate Parkinson's disease @Liu2026VMAT2longcovid. The same cohort showed striatal TSPO PET (microglial activation) @Braga2023neuroCOVID and MAO-B PET (astrogliosis) @Braga2025astrogliosis. COVID-recovered controls had normal VMAT2, confirming specificity to persistent illness. Zero VMAT2 PET data exist in ME/CFS. The DecodeME MSN enrichment provides a genetic rationale for why the striatum might be the circuit where vulnerability resides and pathology manifests.

*DAT SPECT.* DaTSCAN (ioflupane I-123) binds the dopamine transporter (DAT) on presynaptic dopaminergic terminals — a distinct presynaptic marker from VMAT2 (vesicular monoamine transporter 2). DAT SPECT is widely available in clinical nuclear medicine (unlike VMAT2 PET tracers) and provides a second, independent measure of presynaptic terminal integrity. DAT availability in ventral striatum predicts willingness to expend effort for reward @Treadway2012effortbaseddecisionmaking. The clinical phenotype of ME/CFS (effort intolerance, motor slowing, apathy) maps onto striatal dopaminergic function. Together, VMAT2 PET and DAT SPECT provide complementary presynaptic information: VMAT2 measures vesicular packaging capacity, while DAT measures transporter-mediated reuptake at the membrane.

*Gut microbiome.* If striatal differences exist, where does the signal originate? The gut-brain axis is one candidate: microbiome composition predicts fatigue severity in ME/CFS @NagySzakal2017, and the striatum is a primary target of gut-derived inflammatory signals. Measuring microbiome in the same twin pairs connects peripheral trigger to central outcome.

*Lytic-to-Structural IgG Ratio (LSR).* The LSR (anti-BZLF1 IgG / anti-VCA-p18 IgG) is proposed as a biomarker discriminating ALR-driven antibody abnormality from LLPC-maintained background serology @hyp:lytic-structural-igg-ratio. Measuring LSR in twin pairs tests whether LSR elevation is a trait (present in both twins — genetic predisposition to herpesvirus dysregulation) or a state (present only in the affected twin — acquired dysregulation). This directly tests the mechanism behind the LSR hypothesis.

==== Connection to the Identical Twin Matcher Software

The Identical Twin Matcher is a patient-facing software concept that finds the K most similar patients in a de-identified registry and reports their trajectories. The present proposal provides the research-grade infrastructure that the Matcher requires: a validated twin registry with deep phenotyping. The "identical twin" in the software concept is metaphorical — a nearest-neighbor lookup into a database. The present proposal deploys literal twins as the ultimate genetic control, generating data that could seed the Matcher's database with uniquely informative entries.
