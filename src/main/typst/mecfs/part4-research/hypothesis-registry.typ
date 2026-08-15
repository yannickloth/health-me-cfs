#import "../shared/environments.typ": *

== Hypothesis and Speculation Registry
<sec:hypothesis-speculation-registry>

This registry collects all hypotheses, speculations, open questions, and predictions from across the paper, organised by topic — including the speculative mechanistic hypotheses developed in depth in Chapter @ch:speculative-hypotheses, alongside hypotheses from the pathophysiology, neurology, immunology, genetics, and other chapters. Each entry records the type (H=Hypothesis, S=Speculation, OQ=Open Question), certainty level, supporting evidence, source citations, underlying mechanism, chapter reference, testable prediction, treatment implications, and known limitations. The registry distills each hypothesis to a structured, fielded record so that researchers can search, compare, and prioritise hypotheses for testing — it feeds directly into the research protocols in Chapter @ch:proposed-studies.


=== GWAS/WGS Genetic Architecture

#registry-entry(
  [Glutamatergic Synaptic Dysfunction as Genetically-Driven Core ME/CFS Mechanism],
  type: "H",
  certainty: "0.60",
  evidence: [Replicated enrichment of glutamatergic synapse genes across DecodeME (single-gene level: _SHISA6_, _UNC13C_) and Maccallini meta-GWAS (gene-set level, Bonferroni-corrected, 19,470 cases) provides convergent evidence that glutamatergic signaling dysfunction is genetically grounded, not an epiphenomenon. aligns with E/I imbalance model (Wirth/Scheibenbogen 2026).],
  citations: [@Maccallini2026metaGWAS @DecodeME2025 @WirthScheibenbogen2026glutamate],
  mechanism: [Risk variants in glutamatergic synapse genes → altered synaptic transmission → excitation/inhibition imbalance → excessive neural activation → autonomic dysfunction, sensory hypersensitivity, PEM. Glutamatergic vulnerability establishes neuronal hyperexcitability substrate upon which physiological stressors trigger pathological cascade.],
  chapter-ref: [ch12: glutamatergic synaptic dysfunction],
  prediction: [iPSC-derived neurons from high-risk genotype carriers show altered glutamatergic synaptic transmission vs low-risk. PET with glutamate receptor ligands reveals altered receptor density in ME/CFS, correlating with glutamatergic PRS. Falsified if iPSC neurons show normal glutamatergic function or PET shows normal receptor density.],
  treatment: [Glutamatergic modulators (memantine, riluzole, lamotrigine) stratified by glutamatergic PRS in a trial -- no current clinical recommendation.],
  limitation: [Maccallini2026 is preprint (not peer-reviewed). Gene-set enrichment reflects cumulative expression across all cell types; cell-type-specific glutamatergic dysfunction not yet demonstrated. Glutamatergic PRS has not been tested for clinical utility.],
)

#registry-entry(
  [Brain-First Genetic Model -- No Peripheral/Immune Tissue Enrichment],
  type: "H",
  certainty: "0.55",
  evidence: [Maccallini 2026 meta-GWAS demonstrates ME/CFS genetic risk enriched exclusively in 14 brain regions + pituitary across 30 tissues, with zero peripheral enrichment. Absence of genetic correlation with autoimmune diseases (DecodeME) constrains peripheral immune hypothesis. Brain-first architecture does not exclude peripheral pathology -- it posits that primary genetic vulnerability operates through neuronal circuits with peripheral consequences via efferent signaling.],
  citations: [@Maccallini2026metaGWAS @DecodeME2025],
  mechanism: [Genetic liability → primary CNS vulnerability (glutamatergic synapses, subcortical/cerebellar neurons) → efferent autonomic dysregulation, neuroendocrine disruption, altered descending pain modulation → peripheral pathology as downstream consequence. Brain is not merely affected -- it is genetically inscribed as the primary locus of risk.],
  chapter-ref: [ch12: brain first genetic],
  prediction: [Brain tissue-specific PRS should outperform whole-genome PRS in predicting ME/CFS; brain imaging abnormalities detectable in at-risk relatives before illness onset. Falsified if peripheral tissue PRS performs equally well or no brain imaging differences in at-risk relatives.],
  treatment: [Reframes therapeutic strategy: prioritize CNS-penetrant agents over peripherally-restricted anti-inflammatories. Normal peripheral biomarkers should not be interpreted as evidence against biological causation.],
  limitation: [GWAS captures common variants only; rare variants affecting peripheral tissues undetected. Brain enrichment does not specify which circuits are primarily affected. Cell-type resolution limited by currently available single-cell reference data.],
)

#registry-entry(
  [Combinatorial Genetic Architecture -- Synergistic SNP Interactions Beyond GWAS],
  type: "H",
  certainty: "0.55",
  evidence: [Sardell et al. 2026 demonstrated reproducible combinatorial genetic risk factors (synergistic SNP-SNP interactions) across DecodeME and independent cohorts using the PrecisionLife platform -- interactions not detectable by standard additive GWAS. Genetic risk operates through multi-SNP interactions in addition to additive effects, explaining some "missing heritability" between twin studies and standard GWAS.],
  citations: [@Sardell2026combinatorial @DecodeME2025 @Das2022geneticrisk],
  mechanism: [Risk SNPs at different loci interact synergistically -- each alone sub-threshold but in combination substantially increase ME/CFS risk. This architecture is undetectable by standard GWAS testing single SNPs or simple PRS. Reflects polygenic reality where biological pathways require multiple "hits" to cross disease threshold.],
  chapter-ref: [ch12: genetic variants],
  prediction: [Combinatorial SNP markers identified in DecodeME replicate at p < 0.05 in independent cohort with OR > 1.5 for top decile vs bottom decile of combinatorial risk score. Combinatorial risk score outperforms standard PRS (AUC difference > 0.10). Falsified if combinatorial markers fail to replicate or show no AUC advantage over PRS.],
  treatment: [Combinatorial risk profiling could identify highest-risk individuals for post-viral monitoring and early intervention. Requires replication and clinical utility evaluation before any application.],
  limitation: [Combinatorial approach requires validation in ancestrally diverse populations. Synergistic interactions may be dataset-specific. Sardell2026 is a single study.],
)

#table(
  columns: (1fr, 2fr, 1fr),
  [*ID / Label*], [*Details*], [*Phase / Cert*],

  [ach cell-type-enrichment-convergence], [Multiple independent post-GWAS enrichment analyses (MAGMA, stratified LDSC) applied to DecodeME+MVP meta-GWAS converge: ME/CFS genetic risk maps to neuronal cell types in CNS, not immune cells. Human Brain Atlas (Siletti 2023 via Duncan 2025 pipeline): eMSN is top cell-type hit. Dropviz mouse atlas: 7/13 significant cell types are striatal neurons. DESCARTES fetal atlas: inhibitory interneurons. ImmGen immune cell enrichment: null. Rare variant analysis (Snyder 2025): independently implicates neuronal genes. Broad neuronal signal robust (cert 0.80); fine MSN/eMSN resolution method-dependent (cert 0.40--0.50). MSN enrichment shared across brain traits (schizophrenia, depression, sleep duration, alcohol consumption). Key limitation: zero functional validation of MSN involvement in fatigue phenotype. Origin: literature integration.],[Phase 3 / 0.70],

  [hyp striatal-symptom-signalling], [Chaudhuri & Behan (2000) proposed that central fatigue results from dysfunction of the striatal-thalamic-frontal cortical system — heterogeneous upstream pathology (immune, metabolic, infectious) converging on striatal circuits to generate the experience of fatigue. The DecodeME cell-type enrichment findings (eMSN/MSN as top hit) provide the first genetic evidence consistent with this 25-year-old hypothesis. Testable prediction: striatal connectivity patterns in resting-state fMRI will predict fatigue severity in ME/CFS independently of peripheral inflammation markers. Falsified if fatigue severity is predicted by peripheral markers but not striatal connectivity. Limitations: theoretical framework only; no direct measurement of striatal-thalamic-frontal circuit function in ME/CFS. Origin: literature synthesis.],[Phase 3 / 0.40],

  [lim cell-type-enrichment-caveats], [Broad neuronal enrichment signal is robust; fine cell-type specificity (MSN/eMSN) is method-dependent. Varies with pipeline parameters, LD reference panel, gene window size. Other cell types reach significance depending on atlas (glutamatergic neurons in Seeker 2023, inhibitory interneurons in DESCARTES). MSN enrichment not ME/CFS-specific — shared with schizophrenia, depression, alcohol consumption, sleep duration. Does not undermine core finding: genetic risk maps to neurons, not immune cells, across all methods and atlases. Origin: synthesis blog + Brouwer 2026 methodology review.],[Phase 3 / n/a],

  [syn genetic-neuronal-convergence], [Three independent evidence lines converge on neuronal biology in ME/CFS: (1) common variant GWAS enrichment in brain tissues and neuronal gene-sets (DecodeME, Maccallini 2026), (2) rare variant burden in neuronal/synaptic genes (Snyder 2025 WES), (3) absence of immune cell-type enrichment despite documented peripheral immune abnormalities (ImmGen null). The immune null suggests that immune dysfunction in ME/CFS may be acquired/environmental or below GWAS detection threshold — not that immune involvement does not exist, but that it is not genetically encoded in common variants. This three-pronged genetic architecture (brain-enriched common variants + rare neuronal variants + immune null) provides a genetic framework for the brain-first model. Origin: literature synthesis.],[Phase 3 / 0.65],
)


=== DecodeME-Verifiable Hypotheses

#registry-entry(
  [Heritability Partitioning: Brain-First Model at the Regulatory Level],
  type: "H",
  certainty: "0.65",
  evidence: [S-LDSC can partition h²_SNP = 0.095 into functional categories (brain enhancers, immune enhancers, coding regions) using only summary statistics. Schizophrenia and bipolar show brain-enhancer concentration.],
  citations: [@DecodeME2025],
  mechanism: [If heritability concentrates in brain-specific enhancers, brain-first model gains regulatory-genomic support. If in immune enhancers, immune model gains support. If diffuse, ME/CFS is genetically unlike psychiatric GWAS.],
  chapter-ref: [ch12: heritability partitioning brain],
  prediction: [If no functional category enriched (all p > 0.05/97 Bonferroni), brain-first model lacks regulatory support. Prediction: brain enhancers >5x enrichment, immune ~2x, coding depleted.],
  treatment: [Regulatory targets guide therapeutic development (epigenetic modifiers, enhancer-targeted gene therapy).],
  limitation: [Requires adequate LD score regression sample size. Annotation quality varies by tissue type.],
)

#registry-entry(
  [PRS Dose-Response Across ME/CFS Severity Grades],
  type: "H",
  certainty: "0.60",
  evidence: [PRS predicts psychosis severity in schizophrenia and surgery need in IBD. DecodeME severity classification across 17,000+ participants enables ordinal logistic regression of PRS against severity. Sardell cluster-specific PRS testable for differential severity associations.],
  citations: [@DecodeME2025 @Sardell2026combinatorial],
  mechanism: [Higher genetic loading = more severe disease. PRS should increase monotonically: mild < moderate < severe < very severe. Distinct pathways (neuronal vs immune vs autophagy) may differentially predict severity.],
  chapter-ref: [ch12: prs severity dose response],
  prediction: [If PRS does not differ across severity grades (ANOVA p > 0.05, variance explained < 0.5%), genetic loading does not determine severity. Prediction: neuronal-synapse PRS shows strongest severity gradient; immune PRS flat across grades.],
  treatment: [Genotype-stratified clinical trials could enrich severe-patient arms for specific genetic subtypes.],
  limitation: [Severity classification is cross-sectional and self-reported. Illness duration confounds severity.],
)

#registry-entry(
  [Depression Comorbidity: Genetic Predictor or Independent Phenocopy?],
  type: "H",
  certainty: "0.60",
  evidence: [Depression paradox: rg = 0.60 but no shared causal variants. Depression PRS (from PGC GWAS) applied to DecodeME participants tests whether depression in ME/CFS is genuine comorbidity or shared biology.],
  citations: [@DecodeME2025],
  mechanism: [If depression PRS predicts depression comorbidity but NOT ME/CFS core symptoms (PEM, OI), depression is independent comorbidity. If depression PRS predicts specific ME/CFS symptoms, those symptoms share biology with depression.],
  chapter-ref: [ch12: depression comorbidity genetic],
  prediction: [If depression PRS predicts PEM severity independent of depression status (beta > 0.05, p < 0.01), separate pathology model falsified. Prediction: depression PRS predicts comorbidity (OR ~1.1--1.2) but not PEM or OI (p > 0.1).],
  treatment: [Distinguishes which ME/CFS symptoms to treat with antidepressants vs which require ME/CFS-specific therapy.],
  limitation: [Depression comorbidity ascertainment may be crude (yes/no). PRS from general population may not generalise to ME/CFS-specific depression.],
)

#registry-entry(
  [Sex-Differential Genetic Architecture in ME/CFS],
  type: "H",
  certainty: "0.55",
  evidence: [ME/CFS ~75% female. Autoimmune diseases show variable sex-differential architecture (SLE yes, RA no). DecodeME n~11,700 female + n~3,900 male cases enables sex-stratified GWAS and cross-sex genetic correlation estimation.],
  citations: [@DecodeME2025],
  mechanism: [If qualitative sex difference: distinct loci contribute in each sex. If quantitative: same architecture, lower threshold in females due to hormonal/X-linked modifiers. Cross-sex rg < 0.6 implies partially distinct genetic entities.],
  chapter-ref: [ch12: sex differential architecture],
  prediction: [Cross-sex rg > 0.8 falsifies sex-differential architecture. rg < 0.6 falsifies sex-shared architecture. Prediction: rg = 0.6--0.8, with immune loci showing more sex differentiation than neuronal loci.],
  treatment: [Sex-stratified PRS could guide sex-specific treatment approaches.],
  limitation: [Male n~3,900 limits power for sex-specific loci with modest effects. European ancestry only.],
)

#registry-entry(
  [Partitioned Genetic Correlation: Biological Basis of rg = 0.75 with IBS],
  type: "H",
  certainty: "0.55",
  evidence: [rg = 0.75 with IBS is the strongest genetic correlation. Three competing models: shared glutamatergic vulnerability, shared serotonergic variants, shared autonomic regulation. Local genetic correlation (rho-HESS, SUPERGNOVA) can identify which genomic regions drive the correlation.],
  citations: [@DecodeME2025],
  mechanism: [If correlation concentrated at glutamatergic loci, enteric glutamatergic model supported. If at serotonergic loci, 5-HT model supported. If uniformly distributed, all mechanistic models oversimplify.],
  chapter-ref: [ch12: partitioned rg ibs],
  prediction: [If rg uniformly distributed (no region >5% of correlation), no single pathway mediates the overlap. Prediction: concentrated at ~20--50 regions with neuronal/synaptic enrichment and modest serotonergic enrichment.],
  treatment: [Pathway-specific treatments for ME/CFS+IBS comorbidity (glutamatergic modulators vs serotonergic agents).],
  limitation: [Local genetic correlation methods require large sample sizes. Annotation of ENS-expressed genes less complete than brain.],
)

#registry-entry(
  [Non-Infectious Onset as Higher Genetic Loading Subtype],
  type: "H",
  certainty: "0.50",
  evidence: [Non-infectious-onset ME/CFS (~30--40%) lacks the canonical "second hit." Higher genetic loading may substitute for environmental trigger. Testable by comparing mean PRS across trigger subgroups.],
  citations: [@DecodeME2025],
  mechanism: [Without identifiable trigger, higher genetic loading crosses disease threshold independently. Spectrum model: genetic risk can substitute for environmental trigger.],
  chapter-ref: [ch12: non infectious higher loading],
  prediction: [If mean PRS not higher in non-infectious-onset vs EBV-triggered (one-sided t-test p > 0.05), high-genetic-loading model falsified. Prediction: ~0.15 SD higher PRS in non-infectious-onset cases.],
  treatment: [Genetic counselling for families with non-infectious-onset: higher familial risk.],
  limitation: [Triggers may be unmeasured rather than absent. Self-report limitation.],
)

#registry-entry(
  [76 Long COVID Shared Genes: Trigger-Specific or Shared Downstream Vulnerability?],
  type: "H",
  certainty: "0.50",
  evidence: [Sardell 2026 identified 76 genes shared between ME/CFS and Long COVID combinatorial analyses. Shared-gene PRS testable against trigger type within DecodeME.],
  citations: [@Sardell2026combinatorial @DecodeME2025],
  mechanism: [If shared-gene PRS preferentially predicts post-respiratory-onset ME/CFS, genes represent respiratory-post-infectious genetic subtype. If trigger-independent, overlap reflects shared downstream pathology.],
  chapter-ref: [ch12: long covid shared genes],
  prediction: [If shared-gene PRS does not preferentially predict post-respiratory-onset ME/CFS (interaction p > 0.1), overlap is downstream biology, not trigger-specific. Prediction: modest trigger preference (OR ~1.15 respiratory vs ~1.05 EBV), dominant signal trigger-independent.],
  treatment: [Shared vulnerability genes identify patients at risk for both ME/CFS and Long COVID -- post-pandemic screening.],
  limitation: [76 genes from combinatorial analysis may not replicate in standard PRS framework. Long COVID phenotype definition heterogeneous.],
)

#registry-entry(
  [Amitriptyline Pharmacogenomics: CYP Metaboliser Status and the rg = 0.61 Signal],
  type: "S",
  certainty: "0.50",
  evidence: [rg = 0.61 between ME/CFS and amitriptyline use. CYP2D6/CYP2C19 metaboliser status imputable from GWAS array. Three competing explanations: prescribing overlap, pharmacogenomic selection, shared biological pathway.],
  citations: [@DecodeME2025],
  mechanism: [If rg abolished after conditioning on CYP loci, pharmacogenomic variants drive the correlation. If rg persists, shared synaptic pathway genes more likely -- same loci increasing ME/CFS risk also increase probability of amitriptyline prescription via shared pain/neuropathy phenotype.],
  chapter-ref: [ch12: amitriptyline pharmacogenomics],
  prediction: [If CYP2D6 metaboliser status does not associate with amitriptyline use patterns (p > 0.05), pharmacogenomic selection is not driving the correlation. Falsified if conditioning on CYP loci abolishes the rg.],
  treatment: [CYP genotyping before amitriptyline prescription in ME/CFS -- dose optimisation.],
  limitation: [CYP imputation from array data has limited accuracy for complex CYP2D6 alleles. Amitriptyline use is binary (yes/no) without dose/duration data.],
)

#registry-entry(
  [External PRS as Genetic Modifiers of ME/CFS Symptom Profile],
  type: "S",
  certainty: "0.50",
  evidence: [PRS from external GWAS (chronic pain, cognitive performance, blood pressure, iron, vitamin D) applied to DecodeME may identify which symptom dimensions are genetically shared with other traits vs ME/CFS-specific.],
  citations: [@DecodeME2025],
  mechanism: [High ME/CFS PRS + high pain PRS → fibromyalgia-like phenotype. High ME/CFS PRS + protective cognitive PRS → preserved cognition despite severe PEM. External genetic modifiers explain symptom heterogeneity.],
  chapter-ref: [ch12: external prs symptom modifiers],
  prediction: [If no external PRS predicts any ME/CFS symptom dimension (all p > 0.01), symptom variation is not genetically correlated with common traits. Prediction: pain PRS predicts pain-dominant phenotype; cognitive PRS inversely predicts cognitive dysfunction; blood pressure PRS predicts OI severity.],
  treatment: [Modifier PRS could guide personalised symptom management (pain pathway PRS → pain-specific treatment).],
  limitation: [Symptom phenotyping depth in DecodeME may be insufficient for fine-grained subtyping. External PRS transferability uncertain.],
)

#registry-entry(
  [Genotype-Trigger Interaction: SNP Effects Differ by Infection Type],
  type: "H",
  certainty: "0.45",
  evidence: [Two-hit model predicts trigger-specific genetic modulation. DecodeME has infection typing (Bretherick 2023: EBV/IM, non-EBV respiratory, Lyme/Q-fever, non-infectious). Case-only GxE design more powerful than case-control GxE.],
  citations: [@DecodeME2025],
  mechanism: [Immune-ambiguous loci should have larger effects in EBV-triggered ME/CFS. Neuronal loci should have equal effects regardless of trigger. Significant GxE implies ME/CFS is a family of genotype-trigger combinations.],
  chapter-ref: [ch12: genotype trigger interaction],
  prediction: [If no SNP shows genotype-trigger interaction (interaction p > 0.006 for 8 GWS loci), same genetic architecture regardless of trigger -- two-hit trigger-specific modulation falsified. Prediction: ≥2 of 8 GWS loci show heterogeneity across trigger groups.],
  treatment: [Trigger-stratified pharmacogenomics: different treatments for different genotype-trigger combinations.],
  limitation: [Trigger categories are self-reported. Non-infectious category may contain unrecognised infections.],
)

#registry-entry(
  [CCC vs IOM: Do Diagnostic Criteria Cut Along Genetic Boundaries?],
  type: "H",
  certainty: "0.45",
  evidence: [DecodeME accepted CCC, ICC, and IOM criteria. CCC requires PEM + neurological/autonomic/immune criteria; IOM is broader. GWAS separately for each subgroup vs shared controls can compare genetic architecture.],
  citations: [@DecodeME2025],
  mechanism: [If CCC patients have different genetic architecture than IOM-only, criteria cut along biological boundary. If identical, criteria differences are clinically but not genetically meaningful.],
  chapter-ref: [ch12: diagnostic criteria genetic],
  prediction: [If rg between CCC-only and IOM-only > 0.90, criteria do not identify distinct genetic subgroups. Prediction: rg = 0.7--0.85, with CCC-only patients showing higher neuronal-cluster PRS.],
  treatment: [Genetic validation of diagnostic criteria would end decades of criteria debate.],
  limitation: [Sample sizes for criteria-exclusive subgroups may be small. Some patients may meet multiple criteria simultaneously.],
)

#registry-entry(
  [Between-Cluster Epistasis: Neuronal x Autophagy Synergy],
  type: "S",
  certainty: "0.40",
  evidence: [Sardell 2026 identified within-cluster epistasis. Between-cluster interactions (neuronal x immune, neuronal x autophagy, immune x autophagy) not yet tested. Cluster-pair interaction PRS testable for synergy beyond additive effects.],
  citations: [@Sardell2026combinatorial @DecodeME2025],
  mechanism: [If neuronal x autophagy interaction strongest, mitophagy failure in neurons is the critical convergence. If immune x autophagy strongest, immunometabolic dysfunction is central. Tests whether ME/CFS arises from single-pathway failure or multi-pathway convergence.],
  chapter-ref: [ch12: between cluster epistasis],
  prediction: [If no between-cluster interaction significant (interaction p > 0.01 for all pairs), clusters act independently. Prediction: neuronal x autophagy synergy coefficient > 1.2; immune cluster acts additively.],
  treatment: [Multi-pathway targeting (e.g., glutamate modulator + mitophagy enhancer) for patients with convergent genetic risk.],
  limitation: [Between-cluster interaction testing increases multiple testing burden. Power may be insufficient for three-way interactions.],
)


=== Central Noradrenergic and Neuroimmune

#registry-entry(
  [Handgrip as Non-Invasive Proxy for Central NE Status],
  type: "H",
  certainty: "0.60",
  evidence: [NE Pathway correlates with handgrip duration (rho=0.62) in patients @Aregawi2026Noradrenergic. Simple, non-invasive, widely available.],
  citations: [@Aregawi2026Noradrenergic],
  mechanism: [Central NE -> motor output -> handgrip endurance. Reduced NE -> reduced motor sustain. Functional proxy for effort mobilization.],
  chapter-ref: [ch08: catecholamine deficit],
  prediction: [Handgrip correlates with CSF NE in replication (rho more than 0.5). Falsified if below 0.3.],
  treatment: [Accessible biomarker. Baseline stratification. Serial monitoring without LP.],
  limitation: [Single NIH cohort. Confounded by muscle fatigue, motivation, pain. May not track longitudinal NE changes.],
)

#registry-entry(
  [Central NE Deficiency Impairs Glymphatic Clearance via Vasomotion],
  type: "H",
  certainty: "0.55",
  evidence: [NE drives slow vasomotion for perivascular CSF flow during NREM. CSF NE deficiency in ME/CFS. DTI-ALPS impaired.],
  citations: [@Aregawi2026Noradrenergic @Hauglund2025neVasomotion],
  mechanism: [Low CSF NE -> reduced vasomotion -> impaired glymphatic -> waste accumulation -> microglial activation -> further LC dysfunction. Self-reinforcing loop.],
  chapter-ref: [ch08: cascade neuroinflammatory],
  prediction: [Lowest NE Pathway patients show reduced DTI-ALPS scores. Falsified if no correlation.],
  treatment: [Sleep optimization. Slow-wave sleep enhancement. Glymphatic clearance as NE-therapy endpoint.],
  limitation: [NE-vasomotion link in rodents. DTI-ALPS indirect. Causal direction may be reversed.],
)

#registry-entry(
  [Selective Central Noradrenergic Deficiency with Preserved Dopaminergic Function],
  type: "H",
  certainty: "0.50",
  evidence: [NE Pathway (NE+DHPG+MHPG) reduced in PI-ME/CFS and PASC vs HVs; DA Pathway normal @Aregawi2026Noradrenergic. MHPG first report. Prior CSF findings @Walitt2024NIH. Certainty 0.70→0.50: adversarial review calibrated — single center, n=16, novel unvalidated composite index, no independent replication. Selectivity claim rests on DA null (not shown normal; not powered). Activity/deconditioning confound not experimentally eliminated.],
  citations: [@Aregawi2026Noradrenergic @Walitt2024NIH],
  mechanism: [ATP-dependent vesicular uptake impairment. DBH requires ATP proton pump. Cytoplasmic DA metabolism normal. NE deficiency impairs arousal, effort, autonomic coordination, glymphatic clearance.],
  chapter-ref: [ch08: catecholamine deficit],
  prediction: [NE Pathway correlates with LC neuromelanin signal on 7T MRI. Contradiction across 2+ independent centers refutes.],
  treatment: [NE Pathway as CSF biomarker. Drug candidates: atomoxetine, droxidopa.],
  limitation: [Same NIH center. n=16 PI-ME/CFS small. Unknown for gradual-onset. Causality unestablished. Activity confound unresolved. Novel index not independently validated.],
)

#registry-entry(
  [Central-Peripheral Noradrenergic Mismatch in ME/CFS],
  type: "S",
  certainty: "0.50",
  evidence: [CSF NE reduced @Aregawi2026Noradrenergic. Peripheral NE elevated. Sympathetic predominance with reduced vagal tone. No simultaneous measurement.],
  citations: [@Aregawi2026Noradrenergic @Winkler2016catecholamines @Wyller2007thermoregCFS],
  mechanism: [Central NE deficiency + peripheral sympathetic overactivity -> pathological dissociation. Explains wired-but-tired paradox and lack of NE-orthostatic correlation.],
  chapter-ref: [ch08: central peripheral mismatch],
  prediction: [Plasma/CSF NE ratio higher in ME/CFS vs controls. Guanfacine improves tachycardia without worsening fatigue. Falsified if ratio normal.],
  treatment: [Droxidopa (central) may outperform midodrine (peripheral). Guanfacine for peripheral tone.],
  limitation: [Separate populations. No simultaneous measurement. Adolescent findings may not generalize.],
)

#registry-entry(
  [NRI/DNRI Therapy for Central NE Deficiency],
  type: "H",
  certainty: "0.45",
  evidence: [Selective NE deficiency with normal DA suggests reuptake inhibition over synthesis stimulation. Solriamfetol (DNRI) reduced fatigue in ME/CFS pilot (n=38) @Young2025solriamfetol. SNRIs effective in FM @Arnold2004duloxetine @Malik2025SNRIfibromyalgia. Atomoxetine improves BP in nOH via NE augmentation @Mwesigwa2024atomoxetine.],
  citations: [@Aregawi2026Noradrenergic @Young2025solriamfetol @Arnold2004duloxetine @Malik2025SNRIfibromyalgia @Mwesigwa2024atomoxetine @Natelson2015milnacipran],
  mechanism: [NE reuptake blockade compensates for reduced vesicular NE release. Extends synaptic NE dwell time without requiring increased synthesis. Selective NRI (atomoxetine) preferable to SNRI given serotonergic hypersensitivity risk.],
  chapter-ref: [ch14h: noradrenergic nri therapy; ch15: solriamfetol],
  prediction: [Atomoxetine 40-80mg over 12 weeks reduces MFI physical fatigue by at least 1 SMD vs placebo. CSF NE Pathway predicts NRI response. Atomoxetine superior to duloxetine on fatigue. Falsified if no NE Pathway-NRI response correlation.],
  treatment: [Atomoxetine 10-40mg titrated; solriamfetol 75-150mg. Contraindicated in hyperadrenergic POTS (tachycardia). Research-stage only.],
  limitation: [No ME/CFS atomoxetine trial. Solriamfetol n=38, PEM unmeasured. FM ≠ ME/CFS. POTS risk requires baseline autonomic profiling.],
)

#registry-entry(
  [Clonidine Negative RCT — Evidence Against SNS-Overactivity Model],
  type: "S",
  certainty: "0.40",
  evidence: [Clonidine (α2 agonist) RCT in adolescent CFS (n=120) showed no symptom improvement @Sulheim2014clonidine. 0.65→0.40: adversarial review — null result is non-diagnostic; consistent with mismatch model but equally consistent with wrong dose, wrong population, or NE level being irrelevant to symptoms. Not positive evidence.],
  citations: [@Sulheim2014clonidine @Aregawi2026Noradrenergic],
  mechanism: [Central NE deficiency → peripheral sympathetic compensation. α2 agonism → removes compensation without fixing deficit → no net benefit. Null is not inconsistent with mismatch model but does not confirm it.],
  chapter-ref: [ch08: central peripheral mismatch],
  prediction: [Clonidine null replicated in independent adult CFS cohorts. α2 antagonists should be tested. Falsified if α2 antagonist also null.],
  treatment: [Clonidine not recommended for ME/CFS on current evidence.],
  limitation: [Clonidine trial in adolescents — generalizability unclear. Null is non-diagnostic. Multiple alternative explanations. Single trial.],
)

#registry-entry(
  [ATP-Dependent Vesicular NE Deficiency Explains Selective Noradrenergic Deficit],
  type: "S",
  certainty: "0.35",
  evidence: [Selective NE reduction with normal DA @Aregawi2026Noradrenergic. VMAT2-mediated vesicular DA uptake requires ATP. Normal DA alongside reduced NE predicted if defect upstream of DBH.],
  citations: [@Aregawi2026Noradrenergic],
  mechanism: [Decreased ATP -> impaired VMAT2 proton gradient -> reduced vesicular DA uptake -> selective NE synthesis failure. Exertion -> ATP depletion -> NE crash with PEM.],
  chapter-ref: [ch08: vesicular ne deficiency],
  prediction: [VMAT2 assay in patient cells should show ATP-dependent impairment reversible with ATP. Falsified if VMAT2 function normal.],
  treatment: [Neuronal ATP enhancement (ketogenic diet, creatine CNS penetration, CoQ10) may improve NE Pathway.],
  limitation: [No direct ATP/pH/VMAT2 data in ME/CFS. LC-specific neuroinflammation alternative. Single-center.],
)

#registry-entry(
  [Guanfacine α2A-Selective Agonism for PFC],
  type: "S",
  certainty: "0.35",
  evidence: [Clonidine null @Sulheim2014clonidine does not rule out α2A-selective agonism. Guanfacine α2A-selective, binds postsynaptic PFC α2A without suppressing LC. Improves cognition in ADHD/TBI. No ME/CFS data.],
  citations: [@Sulheim2014clonidine],
  mechanism: [Guanfacine XR 1-4mg enhances PFC α2A NE signaling for executive function without reducing CSF NE (unlike clonidine). Targets brain fog locus.],
  chapter-ref: [ch14h: guanfacine a2a pfc],
  prediction: [Guanfacine improves n-back, Stroop, effort-based decisions vs placebo. CSF NE does NOT decrease. Falsified if NE decreases or cognition unchanged.],
  treatment: [Generic, low-cost, approved for ADHD. Start 1mg QHS, titrate for hypotension/sedation.],
  limitation: [No ME/CFS data. Hypotension limits dose. ADHD data may not generalize.],
)

#registry-entry(
  [Droxidopa DBH Bypass for NE Synthesis],
  type: "S",
  certainty: "0.30",
  evidence: [Droxidopa converted directly to NE by LAAAD, bypassing DBH and ATP-VMAT2. FDA-approved for nOH. Increases CNS and peripheral NE without vesicular filling.],
  citations: [],
  mechanism: [L-DOPS to LAAAD to NE without DBH. Bypasses ATP-VMAT2 bottleneck. Complements NRI: more substrate + longer dwell.],
  chapter-ref: [ch14h: droxidopa dbh bypass],
  prediction: [Droxidopa 200-600mg TID over 4 weeks increases CSF NE and improves fatigue in lowest basal NE. Falsified if NE unchanged.],
  treatment: [If validated, proves DBH bottleneck is targetable. Contraindicated: supine HTN, hyperadrenergic POTS. Research-stage.],
  limitation: [No ME/CFS data. Supine HTN risk. LAAAD activity may be impaired in ME/CFS.],
)

#registry-entry(
  [Striatal Dopaminergic Terminal Loss as Cross-Condition Pathology in Post-Infectious ME/CFS],
  type: "S",
  certainty: "0.25",
  evidence: [Liu et al. (2026) used VMAT2 PET [(+)11C-DTBZ] in 24 long COVID patients and 24 age-matched controls, finding 16-20% reduction in VMAT2 binding across ventral striatum, dorsal putamen, and dorsal caudate (P=4×10⁻⁵) — reductions comparable to mild-moderate Parkinson's disease @Liu2026VMAT2longcovid. The same Toronto cohort showed striatal TSPO PET (microglial activation) @Braga2023neuroCOVID and MAO-B PET (astrogliosis) @Braga2025astrogliosis. COVID-recovered controls had normal VMAT2, confirming specificity to persistent illness. Postmortem evidence shows SARS-CoV-2 infects dopaminergic neurons via ACE2 and induces senescence @Yang2024dopaminesenescence. Functional correlate in ME/CFS: ultra-high-field 7T fMRI shows reduced nucleus accumbens functional connectivity in an actual ME/CFS cohort (n=32) @Inderyas2026DopaminergicFC, and a solriamfetol RCT in ME/CFS improved fatigue and executive function @Young2025solriamfetol — both indicating dopaminergic-circuit involvement extends beyond the SARS-CoV-2 subset, though neither measures structural terminal density. Convergent postviral DA neuron vulnerability evidence from alphavirus (Bantle 2019) and interferon-alpha (Capuron 2012). Direct VMAT2 PET data in ME/CFS are still absent. Aregawi et al. (2026) found normal CSF DA pathway indices in PI-ME/CFS, with selective noradrenergic deficiency @Aregawi2026Noradrenergic.],
  citations: [@Liu2026VMAT2longcovid @Braga2023neuroCOVID @Braga2025astrogliosis @Yang2024dopaminesenescence @Aregawi2026Noradrenergic @Bantle2019alphavirus @Capuron2012dopamineinterferon @Chen2020ACE2brain @Inderyas2026DopaminergicFC @Young2025solriamfetol],
  mechanism: [SARS-CoV-2 infection → direct ACE2-mediated DA neuron infection in SN/VTA, OR striatal gliosis (microglial + astroglial activation) → synaptic pruning/ROS damage → dopaminergic terminal loss in ventral striatum (apathy), dorsal putamen (motor slowing), and dorsal caudate (memory decline). Preserved DA synthesis capacity (normal CSF DOPAC/HVA) suggests terminal loss with compensatory synthesis upregulation, or MAO-B hyperactivity increasing DA degradation without structural loss.],
  chapter-ref: [ch08: vmat2 longcovid],
  prediction: [VMAT2 PET [(18F)AV133] in ME/CFS patients will show reduced striatal binding vs healthy controls in a subset with apathy and motor slowing. Falsified if ME/CFS patients show normal VMAT2 binding in all striatal subregions (P≥0.05 for all) — which would establish that the long COVID VMAT2 finding does not generalize. Also falsified if VMAT2 reduction in ME/CFS is present but does not correlate with apathy or motor slowing.],
  treatment: [If confirmed: DA augmentation (L-DOPA, MAO-B inhibitors, dopamine agonists) as phenotype-targeted treatment for apathy-predominant post-infectious ME/CFS. VMAT2 PET as stratification tool for clinical trials. The MZ twin discordant proposal (@sec:mz-twin-discordant-striatal-microbiome-lsr) offers a genetically controlled design to test this hypothesis directly. Currently all hypothetical — no ME/CFS-specific evidence.],
  limitation: [No VMAT2 or DAT PET in ME/CFS. Cross-condition inference only. Aregawi 2026 normal DA pathway indices argue against global DA deficiency. Liu 2026 sample (young, apathy-predominant, n=24) limits generalizability. VMAT2 binding may reflect vesicle density rather than terminal count. Certainty retained at 0.25: the functional-connectivity (Inderyas 2026) and treatment-response (Young 2025) evidence supports dopaminergic-circuit involvement in ME/CFS but does not materially increase the probability of *structural* VMAT2 terminal loss, which is the central claim of this speculation. Origin: literature inference.],
)

#registry-entry(
  [α2-Adrenergic Antagonist Strategy for Central NE Restoration],
  type: "S",
  certainty: "0.20",
  evidence: [If α2 autoreceptor-mediated inhibition suppresses already-low NE release, blocking α2 receptors (yohimbine, idazoxan, atipamezole) may disinhibit release. No ME/CFS data. Mechanism inferred from clonidine null and NE deficit.],
  citations: [@Aregawi2026Noradrenergic @Sulheim2014clonidine],
  mechanism: [α2 antagonism -> disinhibited NE release -> increased synaptic NE -> improved arousal, attention, motor output. Limited by ATP-dependent vesicular defect.],
  chapter-ref: [ch14h: alpha2 antagonist noradrenergic],
  prediction: [Low-dose yohimbine (2.5-5mg) acutely increases CSF NE Pathway activity vs pre-dose. Falsified if NE Pathway unchanged — then deficit is pre-synaptic, not autoinhibition-mediated.],
  treatment: [None — research-stage only. Yohimbine CV effects dangerous in POTS. Idazoxan/atipamezole research compounds.],
  limitation: [Zero ME/CFS data. Yohimbine hypertension/tachycardia/anxiety poorly tolerated. ATP-dependent defect limits NE release ceiling. Single-center NE Pathway measurement needed.],
)

#registry-entry(
  [Dopaminergic Augmentation as Phenotype-Targeted Treatment in Post-Infectious ME/CFS],
  type: "S",
  certainty: "0.20",
  evidence: [Contingent on the VMAT2 terminal loss hypothesis. L-DOPA augments dopamine in Parkinson's disease with established efficacy on motor and motivational symptoms. MAO-B inhibitors (selegiline, rasagiline) prevent dopamine degradation. Rasagiline + tyramine patent filed for long COVID by Meyer (Liu 2026 senior author). Dopamine agonists (pramipexole, ropinirole) bypass terminal integrity. LDA (aripiprazole) already in off-label ME/CFS use as partial D2/D3 agonist with anti-microglial properties. Zero trials of any dopaminergic augmentation strategy in ME/CFS.],
  citations: [@Liu2026VMAT2longcovid @Aregawi2026Noradrenergic],
  mechanism: [Dopamine precursors (L-DOPA) provide substrate for surviving terminals; MAO-B inhibitors slow degradation in synapse, particularly relevant if astrogliosis-driven MAO-B hyperactivity (Braga 2025) accelerates turnover; dopamine agonists activate postsynaptic receptors independent of terminal integrity; partial agonists (LDA) modulate rather than augment tone while adding anti-microglial effects.],
  chapter-ref: [ch24: dopaminergic augmentation mecfs],
  prediction: [L-DOPA/carbidopa trial in apathy-predominant PI-ME/CFS will show greater improvement in Marin Apathy Evaluation Scale and Finger Tapping Test in patients with VMAT2 PET-confirmed reduction vs patients with normal VMAT2 binding. Falsified if L-DOPA shows no differential benefit in VMAT2-low vs VMAT2-normal groups, or if it worsens orthostatic intolerance to the point of trial discontinuation.],
  treatment: [If confirmed in VMAT2-low ME/CFS phenotype: L-DOPA 25/100 mg at 1/4–1/2 tablet starting dose (far below Parkinson's dosing) with slow titration. Selegiline 1.25–2.5 mg/day. Rasagiline 0.5–1 mg/day. All require screening for OI/POTS, dietary counseling for MAOIs, and serotonin syndrome risk assessment. Not for severe/very severe patients due to OI risk.],
  limitation: [No ME/CFS clinical data. Entire hypothesis rests on cross-condition extrapolation. Aregawi 2026 normal DA pathway raises possibility that VMAT2 reduction does not translate to functional DA deficiency. MAOI dietary/serotonin interactions are burdensome in a population with unpredictable dietary tolerance. Impulse control disorder risk from agonists. OI worsening from L-DOPA and agonists. Origin: literature inference.],
)

#registry-entry(
  [MZ Twin Discordant Striatal VMAT2/DAT Imaging in ME/CFS],
  type: "H",
  certainty: "0.35",
  evidence: [Monozygotic twin discordant design eliminates genetic and shared-environment confounds: the unaffected co-twin provides the optimal control — identical germline DNA, rearing environment, parental SES, childhood diet @Buchwald2001 @Koelle2002TwinsHSV. DecodeME cell-type enrichment converges on striatal MSNs as the top cell-type hit (Human Brain Atlas pipeline), replicated in Dropviz @Maccallini2026metaGWAS @DecodeME2025. Liu 2026 demonstrated 16--20% VMAT2 binding reduction in long COVID striatum across ventral striatum, dorsal putamen, and dorsal caudate (P=4×10⁻⁵), reductions comparable to mild-moderate Parkinson's @Liu2026VMAT2longcovid. COVID-recovered controls had normal VMAT2, confirming specificity to persistent illness. Zero VMAT2 PET data exist in ME/CFS. Prior twin studies in ME/CFS used blood biomarkers only (CPET, platelet mitochondrial proteomics, HSV serology), no striatal imaging @Giloteaux2016Twins @Ciregia2016proteomics. Genetically-controlled twin design isolates acquired striatal pathology from shared genetic predisposition.],
  citations: [@DecodeME2025 @Maccallini2026metaGWAS @Liu2026VMAT2longcovid @Buchwald2001 @Koelle2002TwinsHSV @Giloteaux2016Twins @Ciregia2016proteomics @Braga2023neuroCOVID @Braga2025astrogliosis @Treadway2012effortbaseddecisionmaking],
  mechanism: [ME/CFS genetic risk operates through striatal circuits (MSN enrichment) → environmental trigger (infection, stress) activates this vulnerability → acquired striatal dopaminergic terminal pathology → VMAT2 binding reduction in affected twin vs unaffected co-twin carrying identical genetic vulnerability but lacking illness. DAT availability pattern discriminates vesicular deficit (VMAT2↓ + DAT normal) from structural terminal loss (VMAT2↓ + DAT↓). The unaffected co-twin serves as the ultimate within-subject genetic control — any difference is attributable to the illness or its trigger, not to shared predisposition.],
  chapter-ref: [ch46: mz twin discordant striatal microbiome lsr, mz twin discordant striatal microbiome lsr],
  prediction: [In MZ twin pairs discordant for ME/CFS, the affected twin shows ≥10% reduction in striatal VMAT2 BP_ND vs unaffected co-twin in at least one subregion (Cohen's d_z ≥ 0.5, FDR q < 0.05). Unaffected co-twin VMAT2 binding remains within 1 SD of healthy reference pair mean. DAT SBR pattern discriminates concordant (VMAT2↓ + DAT↓) from dissociated (VMAT2↓ + DAT normal) presynaptic pathology. Falsified if: no significant within-pair difference in VMAT2 binding (all P ≥ 0.05), OR DAT null — demonstrating long COVID VMAT2 finding does not generalise to ME/CFS and DecodeME brain enrichment reflects genetic vulnerability without acquired striatal pathology.],
  treatment: [If confirmed: VMAT2 PET as quantitative biomarker for ME/CFS pathophysiology; striatal circuit-level target for dopaminergic augmentation trials (see @spec:dopaminergic-augmentation-mecfs); VMAT2-low vs VMAT2-normal stratification tool. If null: redirect field away from striatal dopaminergic imaging toward alternative circuits (brainstem noradrenergic, cortical glutamatergic). No current clinical recommendation.],
  limitation: [No VMAT2 PET data in ME/CFS — entire hypothesis rests on cross-condition extrapolation from long COVID and genetic enrichment convergence. MZ twin discordant design for ME/CFS with PET imaging has never been attempted. Recruitment feasibility uncertain (requires both twins willing and able to travel). Small sample size inherent to twin design limits power. VMAT2 PET tracer availability limited to research centres. Activity/deconditioning confound: affected twin may be less active.],
)

#registry-entry(
  [Gut Microbiome–Striatal VMAT2 Axis in ME/CFS — Twin-Controlled Test],
  type: "S",
  certainty: "0.20",
  evidence: [Microbiome composition predicts fatigue severity in ME/CFS @NagySzakal2017. The striatum is a primary target of gut-derived inflammatory signals via the gut-brain axis. Kynurenine pathway links gut microbiome to striatal dopaminergic function: microbial metabolites modulate tryptophan metabolism → kynurenine/tryptophan ratio → quinolinic acid production → striatal microglial activation. Microbial SCFAs (butyrate, propionate) cross BBB and influence dopaminergic gene expression in striatum. The twin design controls for the largest confounds in microbiome research (diet, genetics, early environment, childhood antibiotic exposure), isolating the illness-specific microbiome signal. The gut-microbiome-striatal axis has never been tested with simultaneous measurement of both endpoints in any population.],
  citations: [@NagySzakal2017 @DecodeME2025 @Liu2026VMAT2longcovid],
  mechanism: [Gut microbiome dysbiosis → altered SCFA production + increased kynurenine pathway metabolites → striatal microglial activation → dopaminergic terminal damage → reduced VMAT2 binding. Alternatively: striatal pathology → altered autonomic output → changes in gut motility and mucosal immunity → microbiome dysbiosis (reverse direction). Both models predict VMAT2-microbiome correlation but with opposite causality — the twin design identifies association but not direction. Severity gradient (VMAT2 difference magnitude correlating with illness severity) would strengthen the case for a shared pathological process rather than independent abnormalities.],
  chapter-ref: [ch46: mz twin discordant striatal microbiome lsr],
  prediction: [In MZ twin pairs discordant for ME/CFS: affected twin shows reduced α-diversity (Shannon index, Chao1) and altered β-diversity (Bray-Curtis dissimilarity) vs unaffected co-twin, with differentially abundant taxa enriched for butyrate-producing species (Faecalibacterium, Roseburia) in the unaffected twin. Microbiome diversity metrics correlate with striatal VMAT2 binding across all twins (r ≥ 0.3, P ≤ 0.05). Falsified if: no within-pair microbiome difference, OR VMAT2-microbiome correlation absent despite significant individual-group differences in either domain.],
  treatment: [If confirmed: microbiome composition becomes a stratification and potentially modifiable risk factor for striatal pathology. Gut-targeted interventions (probiotics, diet, FMT) could be tested for effects on downstream striatal imaging endpoints. If null and VMAT2 is reduced: isolates CNS as the primary locus — microbiome changes in prior studies likely downstream of illness behaviour (diet, inactivity). No current clinical recommendation.],
  limitation: [The gut-striatal axis is mechanistically plausible but never directly measured in any population. VMAT2-microbiome correlation at a single timepoint cannot establish direction of causality. Microbiome is confounded by diet, medications, and GI transit time — partial control by twin design but not eliminated. Single stool sample per participant may not capture temporal microbiome dynamics. Entire association is cross-sectional within the study design.],
)

#registry-entry(
  [Combined Striatal-Microbiome-LSR MZ Twin Discordant Design as Definitive ME/CFS Biomarker Study],
  type: "P",
  certainty: "0.30",
  evidence: [The MZ twin discordant design combining striatal VMAT2+DAT imaging, gut microbiome metagenomics, and LSR measurement eliminates the largest confound in ME/CFS biomarker research — shared genetic and environmental predisposition — in a single study. DecodeME 2025 (n=17,294) identified convergence on striatal MSNs and brain-tissue enrichment @DecodeME2025 @Maccallini2026metaGWAS. Liu 2026 found 16--20% VMAT2 reduction in long COVID striatum vs recovered controls @Liu2026VMAT2longcovid. The LSR hypothesis proposes a novel ratio-based serological biomarker @hyp:lytic-structural-igg-ratio. No study has combined these three measures with genetic control. The combined design has multiple falsification paths: (1) all measures null → VMAT2 finding does not generalise + LSR is not an ME/CFS biomarker; (2) discordant pattern → isolates the locus of pathology (CNS vs gut vs serological); (3) LSR trait pattern → establishes genetic basis for herpesvirus antibody abnormality. Every possible outcome is informative — the design is scientifically self-cleaning.],
  citations: [@DecodeME2025 @Maccallini2026metaGWAS @Liu2026VMAT2longcovid @Buchwald2001 @Koelle2002TwinsHSV @NagySzakal2017],
  mechanism: [Three convergent measurement domains anchored to DecodeME genetic findings: striatal VMAT2+DAT PET/SPECT (tests whether MSN genetic enrichment translates to acquired dopaminergic terminal pathology), gut microbiome (tests whether gut-striatal axis mediates the genotype-to-phenotype gap), LSR (tests whether herpesvirus antibody dysregulation is acquired state or genetic trait). Each domain has independent falsification criteria; the combined design enables cross-domain correlations that individual studies cannot test. The design produces a multi-dimensional biomarker matrix: VMAT2 status (reduced/normal) × DAT status (concordant/dissociated) × microbiome status (dysbiosis/normal) × LSR status (state/trait) = 16 combinatorial patterns mapping to clinical phenotypes.],
  chapter-ref: [ch46: mz twin discordant striatal microbiome lsr],
  prediction: [The combined design will produce at least one positive finding across the three domains at P ≤ 0.05 (FDR-corrected within each domain). Cross-domain correlations will reveal whether VMAT2-microbiome association (r ≥ 0.3) and VMAT2-LSR association (r ≥ 0.2) exist, indicating shared pathological process vs independent abnormalities. Within-pair VMAT2 difference will correlate with illness severity difference (r ≥ 0.4). Falsified if: all three domains null (the most informative null result in ME/CFS history — redirects the entire field away from striatal imaging, gut-brain axis, and LSR hypotheses simultaneously), OR if no cross-domain correlations exist despite positive individual findings.],
  treatment: [If confirmed: the study generates a validated multi-domain biomarker panel for ME/CFS diagnosis and stratification. Dominant-domain patterns identify drug targets (VMAT2 primary → dopaminergic augmentation; microbiome primary → gut-targeted interventions; LSR primary → antiviral/immunomodulatory). If null: three major hypotheses are falsified simultaneously by the most rigorous design available — high-value negative result that conserves research resources. No current clinical recommendation.],
  limitation: [The combined design is unprecedented — no study has simultaneously acquired VMAT2 PET, shotgun metagenomics, and multi-antigen herpesvirus serology from the same participants, let alone discordant MZ twin pairs. Recruitment feasibility is uncertain: discordant MZ twin pairs for ME/CFS willing to travel for PET imaging may be extremely rare. Budget and logistics (PET tracer availability, radiochemistry, microbiome sequencing, serology) are substantial and require multi-centre coordination. Small sample size limits power for cross-domain correlations. Temporal stability of all measures unknown. Entirely a proposal — no funding or infrastructure exists.],
)


=== GPCR Autoantibody and Neuroimmune POTS

#registry-entry(
  [SARS-CoV-2 Spike S1 and EBV EBNA-1 Shared Epitope with β2-AR Drives Cross-Reactive GPCR AAb via Molecular Mimicry],
  type: "S",
  certainty: "0.40",
  evidence: [Blitshteyn 2026 invokes molecular mimicry without specifying epitopes. SARS-CoV-2 spike S1 may contain a linear epitope with homology to β2-AR N-terminus. EBV EBNA-1 may share a different epitope with M2 mAChR.],
  citations: [@Blitshteyn2026Neuroimmune @Wallukat2021GPCRLongCOVID @ElRhermoul2023AutoimmunityLCPOTS],
  mechanism: [Infection → B cells primed against viral epitope → cross-react with homologous GPCR sequence → functional autoantibodies → GPCR signaling disruption → autonomic dysfunction.],
  chapter-ref: [ch14d: covid ebv mimicry],
  prediction: [Computational alignment identifies a candidate 8-15aa peptide with ≥60% identity between spike S1 and β2-AR. Sera from post-COVID POTS binds EBV peptide and vice versa. Mice immunized with candidate peptide generate GPCR AAb and autonomic dysfunction. Falsified if no candidate identified or cross-reactivity absent.],
  treatment: [If mimicry epitope confirmed, tolerization strategies (peptide immunotherapy, B cell tolerance induction) could prevent post-infectious GPCR AAb generation. Vaccine design could exclude cross-reactive epitopes.],
  limitation: [No cross-reactivity data in ME/CFS or POTS. Molecular mimicry is a plausible but molecularly underspecified mechanism in Blitshteyn 2026.],
)

#registry-entry(
  [GPCR AAb → NTS Baroreflex Reset via Area Postrema Access and Receptor Internalization],
  type: "S",
  certainty: "0.35",
  evidence: [GPCR autoantibodies (α1, M2, M4) may cross area postrema, bind NTS baroreflex neurons, and trigger β-arrestin-mediated receptor internalization, shifting the baroreflex set point rightward → compensatory sympathetic activation despite normal MAP.],
  citations: [@Blitshteyn2026Neuroimmune @Blitshteyn2025Neuroinflammation @Sunami2024GPCRPOTS @Fedorowski2017Antiadrenergic],
  mechanism: [Peripheral GPCR AAb → area postrema (leaky BBB) → NTS GPCR binding → β-arrestin internalization → reduced surface receptor density → blunted baroreflex afferent signal → brainstem perceives low MAP → inappropriate sympathetic activation.],
  chapter-ref: [ch08: gpcr baroreflex nts internalization],
  prediction: [ME/CFS+POTS patients with GPCR AAb show baroreflex sensitivity deficit (r\>0.4 with AAb titer). CSF GPCR AAb correlates with baroreflex impairment. TSPO-PET in dorsolateral medulla correlates with baroreflex deficit. Falsified if no correlation between CSF AAb and baroreflex sensitivity.],
  treatment: [If confirmed, immunoadsorption or BC007 would be expected to restore baroreflex sensitivity within 1-2 weeks of AAb removal. taVNS may bypass the NTS GPCR blockade by directly activating efferent vagal pathways.],
  limitation: [No direct evidence in ME/CFS or POTS. NTS GPCR internalization pathway inferred from standard pharmacology, not demonstrated in human NTS tissue. Area postrema access by autoantibodies is hypothetical.],
)

#registry-entry(
  [GPCR AAb → Mast Cell Sensitization Loop: Bidirectional Amplification Between Autoimmunity and MCAS],
  type: "S",
  certainty: "0.35",
  evidence: [GPCR autoantibodies may directly sensitize mast cells via β2-AR and M3 receptors expressed on mast cells, creating a bidirectional amplification loop.],
  citations: [@Blitshteyn2026Neuroimmune @Blitshteyn2025Neuroinflammation],
  mechanism: [GPCR AAb → mast cell β2-AR desensitization (removing adrenergic brake) + M3 activation (triggering degranulation) → histamine/tryptase release → increased BBB permeability → more AAb CNS access → brainstem neuroinflammation → autonomic dysregulation.],
  chapter-ref: [ch13: gpcr mast cell loop],
  prediction: [ME/CFS with elevated GPCR AAb and MCAS show correlation between AAb titer and tryptase (r\>0.4). Ex vivo mast cells from AAb+ patients show heightened degranulation to substance P (≥2× histamine release). IA reduces both AAb and tryptase. Falsified if no correlation between AAb and mast cell markers.],
  treatment: [Dual targeting: IA (remove AAb) + mast cell stabilizers (cromolyn, ketotifen) may show synergy. The loop model predicts monotherapy with either is less effective than combination.],
  limitation: [No direct evidence of GPCR AAb binding to mast cells from ME/CFS patients. Direction of β2-AR AAb effect on mast cells unknown. Loop model is hypothesis requiring direct cellular testing.],
)

#registry-entry(
  [Germinal Center-Like B Cell Aggregates in Dorsolateral Medulla Driving Intrathecal GPCR AAb Synthesis],
  type: "S",
  certainty: "0.30",
  evidence: [Chronic neuroinflammation in dorsolateral medulla may recruit B cells via CXCL13/CXCR5, forming perivascular plasma cell aggregates that produce GPCR autoantibodies locally within CNS.],
  citations: [@Blitshteyn2025Neuroinflammation @Moen2025NeuroimmuneLongCOVID],
  mechanism: [Chronic medullary neuroinflammation → local CXCL13 → B cell recruitment via CXCR5 → perivascular B cell aggregates → local plasma cells → intrathecal GPCR AAb production → direct action on NTS/RVLM/DMV neurons.],
  chapter-ref: [ch08: brainstem bcell aggregates],
  prediction: [CSF GPCR AAb index (CSF/serum ratio > albumin ratio) ≥1.5 in ≥20% of ME/CFS. CSF oligoclonal bands in ≥20%. TSPO-PET signal in dorsolateral medulla correlates with AAb index (r\>0.5). Falsified if CSF AAb index does not exceed 1.0.],
  treatment: [Intrathecal AAb production would require CNS-penetrant immunomodulation (high-dose rituximab, mycophenolate, daratumumab). IA alone would be insufficient as peripheral AAb removal does not clear intrathecal pool.],
  limitation: [Zero direct evidence in ME/CFS. CXCL13 not measured in ME/CFS CSF. No postmortem medulla immunohistochemistry exists. Entirely untested.],
)

#registry-entry(
  [Ganglionic AChR Autoantibodies Define a Pan-Autonomic ME/CFS Subtype Overlapping with Autoimmune Autonomic Ganglionopathy],
  type: "S",
  certainty: "0.25",
  evidence: [A subset of ME/CFS with pan-autonomic COMPASS-31 abnormalities may have ganglionic AChR (α3) autoantibodies impairing ganglionic transmission — an AAG look-alike.],
  citations: [@Blitshteyn2026Neuroimmune @ElRhermoul2023AutoimmunityLCPOTS],
  mechanism: [Autoantibodies bind α3-nAChR on autonomic ganglia → impaired fast synaptic transmission in both sympathetic and parasympathetic ganglia → pan-autonomic failure (orthostatic, GI, thermoregulatory, pupillary, secretomotor).],
  chapter-ref: [ch10: ganglionic achr mecfs],
  prediction: [COMPASS-31>60 (severe pan-autonomic) ME/CFS patients: ≥15% positive for ganglionic AChR (α3) autoantibodies vs ≤2% healthy. IVIG (2 g/kg monthly ×3) improves COMPASS-31 ≥30% in α3+ patients. Falsified if under 5% positive in pan-autonomic ME/CFS.],
  treatment: [Standard AAG treatment (IVIG, immunoadsorption, pyridostigmine) would be directly applicable to α3+ ME/CFS patients. Ganglionic AChR ELISA is commercially available for testing.],
  limitation: [Ganglionic AChR AAb tested in POTS (mixed results), not in ME/CFS. AAG is rare (1:1,000,000) — even if enriched, absolute prevalence in ME/CFS may be under 5%. Pan-autonomic cutoff COMPASS-31>60 not validated for this purpose.],
)


=== Autoantibody Passive Transfer

#registry-entry(
  [Four-Group Passive Transfer Establishes IgG Pathogenicity],
  type: "H",
  certainty: "0.65",
  evidence: [Four independent groups (2021--2026) demonstrated passive IgG transfer from fibromyalgia or long COVID patients reproduces symptomatology in mice: Goebel 2021 (FM, n=8), Mignolet 2026 (LC, n=13), Chen 2026 (LC, n=34), Santos Guedes 2026 (LC, n=55). Cell-published. greater than 21,000 protein array. greater than 70 CNS/PNS autoantigens. IENF damage. BBB crossing 5%. Fatigue-like behaviour, balance/coordination loss, thermal hyperalgesia. Independent replication (three groups). Certainty downgraded 0.75→0.65 after adversarial review: zero ME/CFS-specific passive transfer studies, Germain 2025 comprehensive null counterweight, CNS findings from single group.],
  citations: [@SantosGuedes2024autoantibodiesLC @Goebel2021passiveTransferFM @Mignolet2026passiveTransferLC @Chen2026igGLongCOVID @Wilhelm2025AutoantibodySysRev],
  mechanism: [Circulating IgG accesses fenestrated capillaries of sensory ganglia (DRG, nodose) → accumulated IgG activates satellite glial cells → neuronal sensitization → peripheral pain, autonomic dysfunction. Subset of IgG crosses BBB (5%) → CNS protein targeting (MED20, USP5) → balance/coordination loss, fatigue-like behaviour. Long-lived plasma cells maintain autoantibody production → persistent pathogenic IgG greater than 2 years.],
  chapter-ref: [ch07: passive transfer pain ch14b: passive transfer four groups],
  prediction: [ME/CFS IgG (not FM or LC) passive transfer in mice reproduces fatigue-like behaviour and reduced voluntary wheel running with specific CNS and DRG autoantigen targets. Falsified if IgG depletion fails to abolish effect or if control IgG produces similar behaviour.],
  treatment: [Immunoadsorption, IVIG, FcRn antagonists should benefit IgG-positive subgroups. Symptom-target correspondence: pain → DRG IgG; balance/fatigue → CNS-targeting IgG. Biomarker-guided patient selection for autoantibody trials.],
  limitation: [No direct ME/CFS passive transfer performed. LC and FM genetic/immunologic backgrounds differ from ME/CFS. Mouse behavioral outcomes cannot capture PEM or brain fog. BBB crossing 5% may be insufficient. Antigen identity incomplete.],
)

#registry-entry(
  [Autoantibody-Driven CNS Autoimmunity as ME/CFS Subgroup],
  type: "H",
  certainty: "0.60",
  evidence: [Santos Guedes 2026 demonstrated de novo autoantibodies targeting greater than 70 CNS proteins persist in LC greater than 1 year. MED20 and USP5 confirmed by proteomics. Autoantibodies cross BBB (5%). Abnormal neuronal activation in pain, fatigue, memory, and emotional regulation circuits. Wilhelm 2025 systematic review: 71% of 44 studies show autoantibody-LC association. Three independent groups replicated IgG pathogenicity.],
  citations: [@SantosGuedes2024autoantibodiesLC @Wilhelm2025AutoantibodySysRev @Wang2025GPCRAutoantibodies],
  mechanism: [Viral trigger → extrafollicular B cell activation → de novo autoantibody production → CNS and peripheral nerve protein targeting → functional receptor blockade or activation → autonomic dysfunction (GPCR antibodies) and neurological symptoms (CNS antibodies). Long-lived plasma cell reservoirs sustain autoantibody production → chronic disease persistence.],
  chapter-ref: [ch07: passive transfer igg ch14b: passive transfer four groups],
  prediction: [ME/CFS patients display elevated autoantibodies against CNS proteins (MED20, USP5, or related) with IgG passive transfer reproducing clinical symptoms in mice. Falsified if comprehensive ME/CFS autoantibody profiling with orthogonal platforms (REAP + CellTrend + protein array) shows complete null, or if passive transfer from ME/CFS donors fails to reproduce any symptom.],
  treatment: [Autoantibody-positive subset identified by comprehensive panel (ANA, GPCR, tissue-specific CNS/peripheral nerve targets) → candidate for immunoadsorption, plasmapheresis, IVIG, or monoclonal antibody therapy. Stratification required — not all ME/CFS is autoantibody-mediated.],
  limitation: [No direct ME/CFS passive transfer. Germain 2025: comprehensive null in chronic ME/CFS. CellTrend ELISA specificity questioned (POTS replication failure). LC not identical to ME/CFS. Autoantibody prevalence in non-postviral ME/CFS unknown.],
)

#registry-entry(
  [Revised Two-Compartment Model: DRG Pain vs CNS Balance/Fatigue],
  type: "S",
  certainty: "0.55",
  evidence: [Mignolet 2026 and Chen 2026: no cognitive impairment in passive transfer mice. Santos Guedes 2026: balance/coordination loss and fatigue-like behaviour; CNS protein targeting (MED20, USP5); BBB crossing 5%. Resolution: pain/thermal hypersensitivity = peripheral DRG mechanism (all four groups); balance/coordination/fatigue = CNS autoantibody mechanism (Santos Guedes unique finding).],
  citations: [@SantosGuedes2024autoantibodiesLC @Mignolet2026passiveTransferLC @Chen2026igGLongCOVID @Goebel2021passiveTransferFM],
  mechanism: [Peripheral DRG (fenestrated capillaries, no BBB): all circulating IgG accessible → pain, thermal hypersensitivity, autonomic dysfunction. CNS compartment: BBB restricts access → only 5% of IgG crosses → balance, coordination, fatigue mediated by CNS-targeting IgG if present. Two distinct IgG populations with different antigen specificities drive different symptom domains.],
  chapter-ref: [ch07: two compartment mecfs],
  prediction: [CNS-autoantibody-positive LC/ME/CFS patients should show balance/coordination/fatigue improvement after immunoadsorption/IVIG; CNS-autoantibody-negative patients improve only in pain/autonomic measures. No improvement in cognitive endpoints in CNS-negative patients after IgG depletion.],
  treatment: [IgG-targeted therapy biomarkers: not just autoantibody-positive vs negative but CNS-target-antigen vs peripheral-target-antigen profile. Pairs with precision-medicine stratification for therapeutic trials.],
  limitation: [CNS symptom transfer from Santos Guedes needs replication (unique finding among four studies). MED20/USP5 as CNS targets need validation. 5% BBB crossing adequacy unproven. Mouse fatigue assays (running wheel, forced swim) may not map to human fatigue. Two-compartment parsimony depends on CNS IgG being minority of pathogenic pool.],
)

#registry-entry(
  [Symptom-Symptom Autoantibody Correspondence Defines Clinical Endotypes],
  type: "S",
  certainty: "0.55",
  evidence: [Santos Guedes 2026 demonstrated 85% symptom-symptom correspondence: pain-phenotype mice predominantly received IgG from pain-reporting donors. Unsupervised clustering of greater than 70 CNS/PNS autoantigen reactivities should identify 3-5 endotypes mapping to clinical clusters (pain-dominant, fatigue/balance-dominant, mixed). Certainty 0.50→0.55 after Phase 4c reinforcement audit: independent convergence with CNS autoimmunity subgroup hypothesis (registry cert 0.60), both argue autoantibody-based patient stratification from different angles (cluster data vs mechanism).],
  citations: [@SantosGuedes2024autoantibodiesLC],
  mechanism: [Patient IgG carries a unique autoantibody fingerprint targeting complementary CNS and peripheral circuits. Pain-dominant: IgG targeting DRG nociceptors. Fatigue/balance-dominant: IgG targeting CNS proteins (MED20, USP5). Mixed: both populations present. Same pathological mechanism (circulating IgG) produces different phenotypes depending on which tissue compartment and antigen targets are involved.],
  chapter-ref: [ch07: autoantibody endotype clusters],
  prediction: [Unsupervised clustering of greater than 70 autoantigen reactivities in n greater than 100 LC patients identifies greater than 3 clusters predicting phenotype with greater than 75% accuracy. Each cluster shows distinct treatment response patterns. Falsified if clustering fails despite validated targets, or if treatment response does not differ between clusters.],
  treatment: [Precision medicine strategy: autoantibody endotyping guides therapeutic selection — DRG-pain → peripheral IgG reduction; CNS-fatigue → CNS-penetrant therapies; mixed → combination. Moves beyond binary autoantibody stratification.],
  limitation: [Endotypes inferred from 85% correspondence in single study; multi-phenotype clustering never tested. Greater than 70 autoantigen targets unvalidated beyond MED20 and USP5. Small subgroups unstable in clustering. Requires large independent cohorts.],
)


=== Autonomic and POTS/ME/CFS

#registry-entry(
  [Cerebral Blood Flow as Unifying Hub of POTS Symptoms],
  type: "H",
  certainty: "0.50",
  evidence: [(a) Malik 2026: POTS patients show gray matter volume reductions, altered brain network connectivity, and cerebral hemodynamic deficits on MRI — structural brain changes correlate with symptom severity. (b) Miranda-Hurtado 2026 (Raj lab): SV→ETCO2→CBF pathway — reduced SV lowers ETCO2 causing hypocapnic cerebral vasoconstriction independent of MAP. (c) Seeley 2025: brain SPECT shows region-specific hypoperfusion in POTS with cognitive dysfunction; perfusion deficits correlate with domain-specific cognitive scores. (d) van Campen 2020: 27% CBF reduction at 20° tilt in severe ME/CFS. (e) This convergence positions CBF — not HR — as the central mediator of POTS symptoms.],
  citations: [@Malik2026brainPOTS @MirandaHurtado2026CBFpots @Seeley2025SPECTpots @VanCampenEtAl2020],
  mechanism: [Low SV (hypovolemia, SFN, splanchnic pooling) → multiple CBF reduction pathways: reduced perfusion pressure, CO2-mediated vasoconstriction, impaired autoregulation → orthostatic CBF deficits → cognitive symptoms (brain fog, dizziness) → chronic repeated CBF drops → cumulative structural brain changes (gray matter atrophy, altered connectivity). CBF decline determines symptom severity; HR increment is a compensatory response to defend CBF.],
  chapter-ref: [ch10: cbf unifying hub],
  prediction: [Orthostatic cognitive performance correlates more strongly with ΔMCA velocity (r > 0.6) than with ΔHR (r < 0.3) during HUT. Capnometry-guided CO2 augmentation during standing normalizes orthostatic cognitive performance without affecting HR — confirming CO2→CBF→cognition chain. Falsified if CBF does not outperform HR as cognitive performance predictor or CO2 augmentation fails to improve cognition.],
  treatment: [Reframe POTS treatment evaluation: assess CBF (transcranial Doppler) and orthostatic cognitive performance, not HR reduction alone. Midodrine may improve CBF without affecting HR; ivabradine may reduce HR but worsen CBF; capnometry biofeedback may improve CBF non-pharmacologically.],
  limitation: [CBF studies (Malik, Seeley) are moderate n, single-center; cross-sectional — cannot distinguish cause from consequence; structural brain changes could predate POTS or result from comorbid conditions; CO2 augmentation paradigm is experimental, not therapeutic.],
)

#registry-entry(
  [Compensatory Tachycardia — HR Reduction as CBF Destabilization in POTS],
  type: "S",
  certainty: "0.50",
  evidence: [(a) Marchetta 2025: ivabradine reduces HR in POTS but symptom improvement does not correlate with HR reduction magnitude. (b) Chopra 2026: mechanistic argument that POTS tachycardia is compensatory and treatment should target root cause (hypovolemia, venous pooling). (c) Miranda-Hurtado 2026 (Raj lab): reduced SV → lower ETCO2 → hypocapnic cerebral vasoconstriction → impaired CBF, establishing the mechanistic link from low SV to orthostatic cognitive symptoms. (d) Clinical implication: ivabradine/beta-blockers prescribed without first normalizing SV may reduce CO and worsen CBF in low-SV patients.],
  citations: [@Marchetta2025ivabradine @Chopra2026compensatory @MirandaHurtado2026CBFpots],
  mechanism: [Low SV → compensatory tachycardia to defend CO and CBF → pharmacological HR reduction without SV support → CO drops → MAP falls → CBF worsens → cognitive and orthostatic symptoms increase. The heterogeneity in ivabradine treatment response corresponds to SV reserve: preserved SV (hyperadrenergic POTS) → benefit; low SV (hypovolemic/neuropathic POTS) → worsening.],
  chapter-ref: [ch10: compensatory tachycardia],
  prediction: [Pre-treatment SV (impedance cardiography or echo during HUT) predicts treatment response: patients in lowest SV tertile show net worsening of orthostatic cognitive performance after 4 weeks ivabradine; highest SV tertile show improvement. SV-by-treatment interaction significant (p < 0.05) in crossover. Falsified if SV does not predict response or all tertiles show equivalent CBF change.],
  treatment: [Stratify POTS treatment by SV — ivabradine/beta-blockers only in patients with preserved or elevated SV (hyperadrenergic subtype); avoid in low-SV patients without concurrent volume expansion. Measure SV before prescribing rate-control agents.],
  limitation: [Marchetta 2025 moderate n (single center); Chopra 2026 is review/opinion (low-medium certainty); compensatory tachycardia hypothesis untested in prospective trial; SV measured by impedance cardiography has moderate accuracy vs gold-standard echo.],
)

#registry-entry(
  [Central Sensitization in POTS — CNS Amplification Component],
  type: "S",
  certainty: "0.50",
  evidence: [(a) Mathew 2026 (Novak lab, JAMA Network Open): 67% of POTS patients meet criteria for central sensitization using validated questionnaires (CSI) — prevalence far exceeding general population. (b) If central sensitization alters processing of autonomic afferent signals at NTS, parabrachial nucleus, and insular cortex, the brain's interpretation of hemodynamic state is systematically distorted — perceived CBF deficit may exceed actual deficit. (c) Ekman 2025: SFN severity correlates with GI symptoms — peripheral nerve damage provides aberrant afferent input that can trigger or maintain central amplification.],
  citations: [@Mathew2026centralSens @Ekman2025SFNpots],
  mechanism: [SFN/autonomic nerve damage → aberrant afferent input → central sensitization at brainstem/cortical autonomic nuclei → amplified sympathetic response to orthostatic stimulus → hyperadrenergic state disproportionate to actual hemodynamic deficit → exaggerated HR, symptoms. The peripheral driver (SFN) and CNS amplification (sensitization) are not alternatives — they form a feed-forward loop.],
  chapter-ref: [ch14d: pots central sensitization],
  prediction: [CSI≥40 POTS patients show exaggerated insula/ACC BOLD activation during graded HUT vs CSI− patients matched for HR, MAP, and SV — confirming CNS amplification of same peripheral signal. CSI score predicts treatment response: high-CSI → better response to CNS-directed (duloxetine, tVNS); low-CSI → better response to peripheral (midodrine, fludrocortisone). Falsified if CSI does not predict differential treatment response.],
  treatment: [POTS patients with high CSI may benefit from CNS-directed interventions (low-dose duloxetine, cognitive interoceptive retraining, tVNS) rather than or in addition to standard peripheral POTS pharmacotherapy. Stratification by CSI could personalize treatment selection.],
  limitation: [Mathew 2026 single-center, moderate n, uses self-report CSI (validated for chronic pain, not specifically for dysautonomia). Central sensitization may be consequence (chronic orthostatic stress → CNS remodeling) rather than independent driver. No fMRI or QST validation in this cohort. Treatment stratification entirely untested.],
)

#registry-entry(
  [Extracranial Venous Compression Impairs Glymphatic Clearance in ME/CFS],
  type: "S",
  certainty: "0.35",
  evidence: [3 ME/CFS studies show abnormal cerebral venous return in 34--48% of patients @Marshall2022CerebralVenousOI. Glymphatic dysfunction via DTI-ALPS documented in 65% of ME/CFS patients @Patel2024GlymphaticVenousStasis. IJV flow velocity 36% reduction upright vs supine in MTS @Hartung2019CerebralVenousReturn.],
  citations: [@Marshall2022CerebralVenousOI @Patel2024GlymphaticVenousStasis @Hartung2019CerebralVenousReturn @Neglen2008MayThurnerReview @Wolpert2020IliacStentingOutcomes @OSullivan2018StentingQoL @Ferreira2023VenousCompressionReview],
  mechanism: [Extracranial venous compression (MTS, IJV stenosis, CCI) → increased intracranial venous pressure → reduced perivenous CSF drainage → impaired glymphatic clearance → waste accumulation (amyloid-beta, tau, cytokines) → neuroinflammation → fatigue, brain fog, unrefreshing sleep.],
  chapter-ref: [ch14a: venous stasis glymphatic],
  prediction: [DTI-ALPS index correlates inversely with iliac vein compression severity on CT venography; CSF cytokine/amyloid concentrations higher in patients with compromised cerebral venous return on MRV; stenting in MTS+ ME/CFS improves DTI-ALPS at 6 months.],
  treatment: [If confirmed: MRV/CT screening for venous compression in ME/CFS patients with predominant brain fog, unrefreshing sleep, and headache. CO₂ challenge or lumbar puncture opening pressure to distinguish ICP elevation from venous obstruction.],
  limitation: [No study directly measuring MTS-to-glymphatic chain in ME/CFS. Stenting outcomes in MTS general population may not generalize to ME/CFS. Glymphatic dysfunction may persist despite restored venous flow if AQP4 mislocalization or chronic neuroinflammation are irreversible.],
)

#registry-entry(
  [May Thurner Syndrome as Contributor to Venous Return Impairment in ME/CFS],
  type: "S",
  certainty: "0.25",
  evidence: [Anatomical prevalence 22--24% in cadaver studies; female predominance 2--3:1; diagnostic delay 4.2 years @Neglen2008MayThurnerReview @Ferreira2023VenousCompressionReview. Fatigue improves in 32--68% after stenting @Wolpert2020IliacStentingOutcomes @OSullivan2018StentingQoL. Autonomic dysfunction documented in MTS (reduced HRV, orthostatic hypotension in 45%) @Anderson2021AutonomicDysfunction. No study has screened ME/CFS cohorts for MTS.],
  citations: [@Neglen2008MayThurnerReview @Wolpert2020IliacStentingOutcomes @OSullivan2018StentingQoL @Hartung2019CerebralVenousReturn @Anderson2021AutonomicDysfunction @Ferreira2023VenousCompressionReview @Marshall2022CerebralVenousOI @Patel2024GlymphaticVenousStasis],
  mechanism: [Iliac vein compression → venous pooling → reduced preload + orthostatic intolerance → compounded by existing ME/CFS blood volume deficits + autonomic dysfunction. Extracranial venous obstruction → impaired cerebral venous return → glymphatic impairment pathway.],
  chapter-ref: [ch10: mts venous return; ch14a: glymphatic venous],
  prediction: [Iliac vein compression severity on CT/MRV correlates with orthostatic symptom severity in ME/CFS; IJV flow velocity (upright TCD) is lower in MTS+ vs MTS− ME/CFS; stenting in confirmed MTS+ ME/CFS improves orthostatic intolerance beyond procedural effect.],
  treatment: [If confirmed: MRV/CT venography screening in ME/CFS patients with left-leg predominant symptoms, severe OI, or poor response to standard therapy. Stenting as targeted intervention for MTS+ subset.],
  limitation: [No direct ME/CFS-MTS evidence. All MTS data from non-ME/CFS populations. Anatomical prevalence may mean MTS is incidental. Reversible venous fatigue in MTS is distinct from ME/CFS fatigue. Entirely speculative until screening study conducted.],
)

#registry-entry(
  [Orexin→PKA→Tau Phosphorylation: Production-Prevention Pathway in ME/CFS],
  type: "S",
  certainty: "0.25",
  evidence: [Parhizkar et al.\ 2025 demonstrated in P301S/E4 tauopathy mice that lemborexant (DORA) reduces tau phosphorylation via cAMP/PKA pathway inhibition, preserving hippocampal volume by 30--40% @Parhizkar2025LemborexantTau. Critical dissociation: zolpidem increased sleep but provided zero neuroprotection, proving orexin signaling (not sleep duration) is the mechanistic driver. Lucey et al.\ 2023 provided human validation: suvorexant 20 mg reduced CSF p-tau181/T181 ratio by ~10--15% in cognitively unimpaired adults @Lucey2023SuvorexantTau. These findings identify a production-prevention pathway (orexin→PKA→tau phosphorylation) mechanistically distinct from glymphatic clearance and HSP70-mediated repair. No ME/CFS data exist.],
  citations: [@Parhizkar2025LemborexantTau @Lucey2023SuvorexantTau @Kang2009OrexinAmyloid],
  mechanism: [Orexin receptor activation → cAMP elevation → PKA activation → tau phosphorylation at specific residues (Ser202, Ser409, Thr205). DORAs block this pathway. ME/CFS orexin is partially suppressed — endogenous PKA pathway may already be downregulated, or residual orexin tone during fragmented sleep may drive pathological phosphorylation.],
  chapter-ref: [ch15: ch1: 5 orexin pka tau],
  prediction: [ME/CFS patients with high vs low CSF orexin-A should show proportionally different CSF p-tau181/T181 ratios; DORA-treated ME/CFS patients should show lower p-tau/T-tau ratios than Z-drug-treated patients, matched for sleep duration improvement.],
  treatment: [If confirmed in ME/CFS: DORAs preferred over Z-drugs for sleep in patients with elevated p-tau biomarkers, pending clinical trials. Z-drugs carry glymphatic impairment (Hauglund 2025) without tau protection. Entirely speculative — no ME/CFS tau data, no DORA-vs-Z-drug human comparison.],
  limitation: [Single preclinical study (male mice only, tauopathy model). Human validation acute single-dose only, cognitively unimpaired participants. No ME/CFS tau phosphorylation data. All claims cross-disease extrapolation from tauopathy models. Orexin is already suppressed in ME/CFS — adding a DORA may have different (potentially adverse) effects than in tauopathy with normal/high orexin tone.],
)

#registry-entry(
  [Systematic Screening for May Thurner Syndrome in ME/CFS Cohorts],
  type: "OQ",
  certainty: "n/a",
  evidence: [MTS anatomical prevalence 22--24% @Neglen2008MayThurnerReview; no study has screened ME/CFS patients. Fatigue improves 32--68% after stenting @Wolpert2020IliacStentingOutcomes @Ferreira2023VenousCompressionReview. Autonomic dysfunction overlaps between MTS and ME/CFS @Anderson2021AutonomicDysfunction. Screening question: does iliac vein compression prevalence in ME/CFS exceed general population, and if so, does treatment improve ME/CFS symptoms?],
  citations: [@Neglen2008MayThurnerReview @Wolpert2020IliacStentingOutcomes @OSullivan2018StentingQoL @Anderson2021AutonomicDysfunction @Ferreira2023VenousCompressionReview @Marshall2022CerebralVenousOI],
  mechanism: [CT venography or MRV screening of ME/CFS cohort (n≥500) → MTS prevalence + correlation with symptom severity, orthostatic intolerance, and glymphatic biomarkers → pilot stenting trial in confirmed MTS+ ME/CFS subgroup (n=30) with primary endpoint SF-36 vitality and secondary endpoint DTI-ALPS.],
  chapter-ref: [ch10: mts venous return; ch14a: venous stasis glymphatic],
  prediction: [MTS prevalence in ME/CFS > 22--24% (general population); stenting improves SF-36 vitality by ≥10 points vs sham; DTI-ALPS improves at 6 months post-stenting.],
  treatment: [If positive: add CT/MRV to ME/CFS diagnostic workup in patients with suggestive features (left-leg symptoms, severe OI, treatment-refractory). If negative: exclude MTS as a meaningful contributor not worth routine screening.],
  limitation: [Entirely untested. Anatomical MTS may be incidental and unrelated to ME/CFS. Stenting carries procedural risks (thrombosis, stent migration, bleeding). Placebo effect/regression to mean in unblinded stenting. No funding or trial infrastructure for this research program.],
)


=== Vagal Cholinergic Gastric Denervation

#registry-entry(
  [Structural Vagal Cholinergic Denervation as an Anatomical Substrate for Post-Viral Dysautonomia and Sustained Inflammation],
  type: "H",
  certainty: "0.35",
  evidence: [Acanfora et al. 2026 @acanfora2026vagaldenervation — first in vivo evidence of selective cholinergic (VIP+) gastric-mucosal denervation in Long COVID (n=12 vs 8), correlating with vagal HRV (LF/HF R=0.50), NT-proBNP and D-dimer; skin IENFD preserved (selectively visceral). Proximal mechanism: Woo 2023 @woo2023vagusinflammation (SARS-CoV-2 RNA + monocyte infiltration in vagus nerve) and Llados 2024 @llados2024vagusdysfunction (vagus ultrasound thickening + reduced GI peristalsis); predicted by VanElzakker 2013 @vanelzakker2013vagueinfection. CAP linkage: Tracey 2002 @tracey2002inflammatoryreflex, Bonaz 2018 @bonaz2018vagusmicrobiota. Extrapolation to ME/CFS indirect — no ME/CFS gastric histology exists; certainty is 0.35 rather than 0.45 (the underlying Long COVID finding) because the hypothesis adds an untested cross-disease inference step. Origin: literature integration.],
  citations: [@acanfora2026vagaldenervation @woo2023vagusinflammation @llados2024vagusdysfunction @vanelzakker2013vagueinfection @tracey2002inflammatoryreflex @bonaz2018vagusmicrobiota],
  mechanism: [Post-viral vagal injury (viral trafficking / immune-mediated) leads to loss of efferent cholinergic (VIP+) fibers, disengaging the cholinergic anti-inflammatory pathway (vagus, alpha7-nAChR, macrophage TNF-alpha suppression), producing a self-sustaining proinflammatory state maintaining fatigue/autonomic symptoms. Structurally distinct from, and potentially additive with, functional CAP blockade by GPCR autoantibodies (@spec:cap-autoantibody-blockade).],
  chapter-ref: [ch13: structural vagal denervation cap, ch10: vagal structural denervation],
  prediction: [ME/CFS gastric mucosal biopsy will show reduced VIP+ fiber density vs controls; density will correlate inversely with TNF-alpha/CRP and positively with HF-HRV, independently of GPCR-autoantibody status. Falsified if ME/CFS gastric innervation is normal, or if inflammation tracks autoantibody titre but not fiber density.],
  treatment: [Mechanistic rationale only (not a recommendation) for vagus-nerve stimulation and cholinergic modulation as investigational approaches; structural denervation argues for early intervention to preserve fibers. No ME/CFS-specific VNS efficacy/safety data.],
  limitation: [All direct structural evidence is Long-COVID-specific (Acanfora n=12, single-center, dyspeptic controls, no recovered-asymptomatic group). CAP linkage foundational but not ME/CFS-specific. Structural and functional routes not mutually exclusive. Not independently replicated. No ME/CFS gastric-innervation study exists.],
)

#registry-entry(
  [Structural Vagal Damage as a Distinct Upstream Node (V_str) in the Causal DAG],
  type: "S",
  certainty: "0.20",
  evidence: [Motivated by the structural denervation hypothesis (@hyp:structural-vagal-denervation-cap) and Acanfora 2026 @acanfora2026vagaldenervation, whose single upstream structural deficit correlated with three downstream readouts (CAP/inflammation, GI motility, HF-HRV). Proposes a slowly-varying structural-capacity variable that bounds functional vagal signaling from above. Origin: brainstorm (ideas 7.1/7.2/7.3/7.5 consolidated).],
  citations: [@acanfora2026vagaldenervation @tracey2002inflammatoryreflex],
  mechanism: [V_str = surviving vagal cholinergic fiber capacity; functional tone is bounded by V_str, so afferent activation (incl. taVNS) cannot exceed the surviving-fiber ceiling. Distinct time constant from functional signaling (fiber loss slow; signaling fast). One upstream node, three downstream consequences (inflammation, GI, HRV).],
  chapter-ref: [ch13: vstr dag node],
  prediction: [taVNS-induced TNF-alpha suppression shows a response ceiling correlating with structural fiber density (gastric VIP+ IHC / validated proxy), independent of baseline functional HRV; GI, HRV, and inflammatory readouts load on a common latent factor. Falsified if taVNS response is fully predicted by functional tone with no residual structural term, or if the three readouts share no common factor.],
  treatment: [If validated, would predict a per-patient ceiling on vagus-stimulation efficacy — useful for trial stratification. Untested modeling proposal, not a recommendation.],
  limitation: [V_str not parameterized; no ME/CFS structural vagal measurement exists to estimate it. May collapse into functional-tone variables if structural and functional deficits prove empirically inseparable (@lim:vagal-enteric-deconditioning).],
)

#registry-entry(
  [Does Post-Viral Small Fiber Pathology Preferentially Target Visceral (Vagal) or Somatic Fibers?],
  type: "OQ",
  certainty: "n/a",
  evidence: [Acanfora 2026 @acanfora2026vagaldenervation reports selectively visceral cholinergic denervation with preserved skin IENFD in Long COVID (single study, n=12, dyspeptic controls); Oaklander/Joseph 2021 @josephoaklander2021mecfssfn and Azcue 2023 @Azcue2023sfn document somatic small fiber loss in ME/CFS (multiple cohorts, meta-analysis). The evidence bases are asymmetric — Acanfora is unreplicated vs somatic SFN is meta-analytic — so the apparent contradiction may reflect different evidentiary maturity rather than genuine biological divergence. Origin: literature integration (cross-disease contradiction framing).],
  citations: [@acanfora2026vagaldenervation @josephoaklander2021mecfssfn @Azcue2023sfn],
  mechanism: [Three compatible explanations: (a) Long COVID and ME/CFS differ in fiber tropism (different diseases); (b) different stages of one process; (c) methodological — gastric-mucosal vs lower-leg skin biopsy sample distinct fiber populations not directly comparable.],
  chapter-ref: [ch08: sfn visceral vs somatic, ch08: sfn visceral somatic],
  prediction: [Paired gastric-mucosal and skin biopsies within one ME/CFS cohort reveal concordant or discordant small fiber loss; the visceral:somatic ratio differs systematically between Long COVID and non-COVID ME/CFS and tracks disease duration. Resolves (a)/(b)/(c).],
  treatment: [N/A — research direction. Determines whether skin biopsy can miss vagal small fiber neuropathy in post-viral illness (a normal skin biopsy would not exclude visceral denervation).],
  limitation: [Acanfora small dyspeptic-control sample; no matched skin-vs-mucosa sampling within a single cohort exists; QST/skin and mucosal-biopsy methods are not standardised against each other.],
)

#registry-entry(
  [Five Unresolved Threats to the Structural Vagal Denervation Model],
  type: "OQ",
  certainty: "n/a",
  evidence: [Critical self-audit (brainstorm categories 10-12) of @hyp:structural-vagal-denervation-cap. (1) VIP+ IHC cannot separate extrinsic vagal from intrinsic enteric fibers @acanfora2026vagaldenervation; (2) HRV/fiber changes confounded by deconditioning (uncontrolled in Acanfora); (3) n=12 winner's-curse inflates R=0.50-0.61 correlations. Origin: brainstorm critical categories.],
  citations: [@acanfora2026vagaldenervation],
  mechanism: [Confounds/ambiguities that could produce the observed findings without supporting a vagal-specific structural-denervation causal model: enteric-source fiber loss, disuse atrophy, small-sample effect-size inflation.],
  chapter-ref: [ch13: vagal enteric deconditioning],
  prediction: [Any positive structural finding must survive (a) source attribution (snRNA-seq / retrograde tracing distinguishing vagal from enteric), (b) activity-matched controls, and (c) replication in a larger healthy-controlled cohort before the vagal-denervation causal interpretation is accepted.],
  treatment: [N/A — methodological caveat; guards against premature clinical use of the structural model or VNS targeting.],
  limitation: [The confounds are themselves inferred; some (deconditioning, source attribution) are directly testable and should be measured in any future ME/CFS study.],
)


=== Brain Clearance Architecture

#registry-entry(
  [DTI-ALPS Measures CSF Flow, Not Parenchymal Clearance],
  type: "S",
  certainty: "0.35",
  evidence: [Chayama et al.\ 2026: ICM-injected tracers (50--80% to cervical lymph nodes) distribute to fundamentally different compartments than neuron-derived proteins (dura/skull/nasal, minimal CLN). DTI-ALPS proxy signal may reflect CSF flow rather than actual parenchymal waste extraction → normal DTI-ALPS does not exclude impaired neuronal protein clearance.],
  citations: [@Chayama2026BrainClearance],
  mechanism: [DTI-ALPS measures water diffusion along perivascular spaces → reflects CSF-convective component of clearance. Endogenous protein clearance may use different routes (dura/skull/nasal) that DTI-ALPS does not measure. The fast CSF-to-lymph pathway dominates tracer studies but is minimally used by brain-derived proteins.],
  chapter-ref: [ch15: ch1: 5 dti alps caveat],
  prediction: [ME/CFS patients with normal DTI-ALPS but elevated blood NfL or tau would indicate dissociation between CSF-tracer-based and parenchymal clearance. Novel imaging methods tracking endogenous protein movement needed.],
  treatment: [DTI-ALPS should be interpreted with caveat; complement with blood NfL/tau for direct parenchymal clearance output. Methodological limitation for all glymphatic imaging claims.],
  limitation: [DTI-ALPS-fibromyalgia/Long COVID correlations are clinically meaningful regardless. Disconnect demonstrated in mice; human validation lacking. Blood NfL rise may have non-clearance causes (neurodegeneration, injury).],
)

#registry-entry(
  [Nearest-Exit Compartmentalized Brain Clearance in ME/CFS],
  type: "S",
  certainty: "0.20",
  evidence: [Chayama et al.\ 2026 (Cell) demonstrated that neuron-derived proteins drain to dura, skull, and nasal cavity following a \"nearest exit\" principle --- regions drain to proximal border compartments. ME/CFS cognitive phenotypes (executive vs memory vs global brain fog) may reflect regional failure of different clearance compartments.],
  citations: [@Chayama2026BrainClearance],
  mechanism: [Different brain regions → different clearance routes and kinetics. Impairment in one compartment (e.g., dorsal dura for prefrontal cortex) produces regionally selective waste accumulation → domain-specific cognitive symptoms.],
  chapter-ref: [ch15: ch1: 5 brain clearance architecture],
  prediction: [DTI-ALPS (regional) in brain fog-predominant vs fatigue-predominant ME/CFS should show different regional patterns; executive dysfunction patients should have worse dorsal clearance vs memory-impaired patients with worse temporal/hippocampal clearance.],
  treatment: [Compartment-specific therapeutic targeting: dorsal-cortex-predominant brain fog may benefit from supine sleep position; basal/brainstem-predominant OI may need different glymphatic support.],
  limitation: [No regional glymphatic measurements exist in ME/CFS. Nearest-exit principle demonstrated in mice only; human anatomical differences unknown. DTI-ALPS does not resolve individual clearance compartments.],
)

#registry-entry(
  [Inflammatory Rerouting of Brain Antigens Promotes CNS Autoimmunity],
  type: "S",
  certainty: "0.15",
  evidence: [Chayama et al.\ 2026: acute LPS inflammation shunts brain-derived proteins directly into blood via vascular leakage, bypassing tolerogenic skull border. ME/CFS neuroinflammation may similarly reroute CNS antigens to systemic circulation → encounter with peripheral immune cells outside the tolerogenic skull environment → breakdown of CNS immune tolerance → autoantibody production.],
  citations: [@Chayama2026BrainClearance],
  mechanism: [Neuroinflammation → BBB compromised → brain antigens leak into blood → systemic lymphoid organs process CNS proteins in inflammatory context (not tolerogenic skull B cell context) → CNS-directed autoantibodies → autoantibody-positive ME/CFS subsets.],
  chapter-ref: [ch15: ch1: 5 skull bcell tolerance],
  prediction: [Blood:CSF ratio of neuron-derived proteins should be elevated in autoantibody-positive vs autoantibody-negative ME/CFS; inflammatory biomarker correlations with autoantibody titersb.],
  treatment: [Anti-inflammatory intervention to restore BBB integrity and reduce antigenic rerouting → may prevent de novo autoantibody emergence. Entirely speculative.],
  limitation: [LPS is an acute model; ME/CFS neuroinflammation is chronic low-grade. No human data on brain antigen trafficking routes in ME/CFS. BBB integrity status in ME/CFS is contested. Multi-step mechanistic chain with no direct empirical support.],
)

#registry-entry(
  [Skull Border B Cell Tolerance Failure as ME/CFS Autoimmune Mechanism],
  type: "S",
  certainty: "0.15",
  evidence: [Chayama et al.\ 2026: skull-resident B cells sample brain-derived proteins and mount tolerogenic response (PD-L1, IL10ra, Cd1d1, Ptpn22 upregulation; Tnf, Il1b, type I interferon downregulation). In ME/CFS, neuroinflammatory cytokines may convert these cells from tolerogenic to immunogenic → CNS-directed autoimmunity from within the brain border itself.],
  citations: [@Chayama2026BrainClearance],
  mechanism: [Neuroinflammation (IL-1beta, TNF-alpha, type I IFN) → downregulation of PD-L1 and IL10ra on skull B cells → loss of tolerogenic B cell programming → brain antigens presented in inflammatory rather than regulatory context → CNS-directed autoantibodies produced locally at the brain border. Skull marrow channels may be remodelled during neuroinflammation, potentially biasing B cell development away from tolerance.],
  chapter-ref: [ch15: ch1: 5 skull bcell tolerance],
  prediction: [CSF B cell profiles from ME/CFS should show reduced PD-L1 expression and tolerogenic gene module vs controls; skull bone marrow aspirates if available. Null result refutes mechanism.],
  treatment: [Anti-inflammatory immunomodulation (LDN, microglial modulators) may restore skull B cell tolerogenic programming → reduce autoantibody production. Entirely experimental.],
  limitation: [No human skull B cell data for any condition. Mouse skull B cell phenotype not studied under chronic neuroinflammation. Connection to clinical autoantibodies is multi-step and speculative. No ME/CFS skull/CSF B cell profiling exists.],
)

#registry-entry(
  [Inflammatory vs Obstructive Clearance Failure in ME/CFS Progression],
  type: "S",
  certainty: "0.15",
  evidence: [Chayama et al.\ 2026 demonstrated two mechanistically distinct clearance failure modes: LPS inflammation → vascular leakage into blood (rerouting), vs 5XFAD amyloid pathology → parenchymal retention + border obstruction (trapping). In ME/CFS, early disease (higher neuroinflammation, lower protein accumulation) may show rerouting pattern; chronic disease (accumulated protein, progressive barrier dysfunction) may shift toward obstructive pattern.],
  citations: [@Chayama2026BrainClearance],
  mechanism: [Early ME/CFS: neuroinflammation dominant (microglial activation, cytokine signaling) → BBB compromised → brain antigens leak into blood → elevated blood brain-derived proteins (NfL, tau). Chronic ME/CFS (greater than 10 years): progressive protein accumulation + structural degradation of perivascular spaces → obstructive pattern → reduced blood and border clearance → worsening cognitive symptoms.],
  chapter-ref: [ch15: ch1: 5 neurodegeneration risk],
  prediction: [Blood:CSF ratio of neuron-derived proteins should be high in early disease (inflammatory rerouting) and low in chronic disease (obstructive trapping); serial measurement over disease course should show transition.],
  treatment: [Early disease: anti-inflammatory BBB-stabilising strategies. Chronic disease: clearance-enhancing strategies (SWS enhancement, glymphatic position, NE oscillation normalisation). Stratification by clearance failure mode may guide treatment selection.],
  limitation: [Disease course stratification untested. Protein accumulation in ME/CFS brain unmeasured. Distinction assumes inflammatory and obstructive modes are sequential; they may instead be simultaneous or patient-specific. No human data on brain antigen trafficking evolution in ME/CFS.],
)

#table(
  columns: (1fr, 2fr, 1fr),
  [*ID / Label*], [*Details*], [*Phase / Cert*],

  [spec:pem-ratchet-glymphatic], [PEM ratchet hypothesis: exertion → metabolic waste (lactate, ROS, inflammatory mediators) → glymphatic system clearance failure (sleep dysfunction + autonomic impairment + neuroinflammation) → waste accumulation → delayed 12-48h PEM. Ratchet: repeated overexertion → progressive waste accumulation → gradual worsening. Coherent across sleep, autonomic, neuroinflammatory lines. No direct glymphatic measurement in ME/CFS; no exertional glymphatic study. Origin: synthetic inference from existing literature.],[Phase 5 / 0.35],

  [spec:csf-blood-ratio-biomarker], [CSF:blood concentration ratio of brain-derived proteins (NfL, tau, S100B, GFAP) as glymphatic function biomarker. Normal: CSF proteins drain via meningeal lymphatics → dilute in plasma. Impaired clearance: CSF concentration rises, plasma concentration falls. Ratio reflects clearance efficiency independent of absolute production. Validated in AD/MS; never measured systematically in ME/CFS despite available LP (NIH 2024, Hornig 2017) and peripheral blood data. Origin: Chayama 2026 model prediction.],[Phase 5 / 0.40],

  [oq:causal-compensatory-epiphenomenal], [Three interpretations of brain clearance impairment in ME/CFS: (1) causal — primary driver, restoring clearance improves symptoms; (2) compensatory — protective energy-conserving response; (3) epiphenomenal — downstream of sleep/autonomic/neuroinflammatory dysfunction, no independent contribution. Discrimination requires interventional studies.],[Phase 5 / n/a],

  [lim:no-direct-glymphatic-imaging-mecfs], [Zero studies have measured glymphatic function in ME/CFS patients using DTI-ALPS, contrast-enhanced MRI, or CSF tracer studies. Entire brain clearance hypothesis in ME/CFS rests on indirect inference. This is the single most important missing experiment.],[Phase 5 / n/a],

  [lim:chayama-unreplicated], [Chayama 2026 nearest-exit model: paradigm-shifting synthesis of independent components (glymphatic, meningeal lymphatics, sleep-coupled clearance) into unified architecture. Model-dependent components (nearest-exit routing, dual-speed glymphatics, mid-cervical transit node, bioelectric entry, skull-border B-cell tolerance) not independently replicated.],[Phase 5 / n/a],

  [lim:pem-ratchet-speculative], [PEM ratchet logically coherent but completely untested. No exertional glymphatic measurement. Appealing connections ≠ evidence. Prediction (glymphatic impairment during post-exertional period with waste metabolite accumulation correlating with symptoms) not tested.],[Phase 5 / n/a],

  [lim:convergent-narrative-confirmation-bias], [Multiple weak lines of evidence converging on same conclusion feel stronger than they are — known cognitive bias. Each component individually plausible but underdetermined; convergence does not increase collective certainty beyond weakest link. Brain clearance framework = research program, not finding (certainty 0.30).],[Phase 5 / n/a],

  [lim:missing-negative-controls], [Brain clearance hypothesis lacks explicit falsification conditions: no specification of what SHOULD NOT happen if true. Currently accommodates any post-hoc result. Sleep apnea/narcolepsy negative control (severe sleep dysfunction without ME/CFS phenotype) problematic for hypothesis. Lactate infusion PEM trigger untested.],[Phase 5 / n/a],

  [oq:brain-clearance-null-hypothesis], [If brain clearance has no causal role: (1) DTI-ALPS comparable between ME/CFS and inactivity-matched controls; (2) CSF:blood ratios not different; (3) pharmacological enhancement no benefit beyond placebo; (4) PEM severity uncorrelated with glymphatic proxies; (5) CPAP benefit no greater than in non-ME/CFS. All testable; none tested. Pre-experimental mechanism.],[Phase 5 / n/a],

)


=== Hypoxia/Altitude/HIF-1α

#registry-entry(
  [HIF Pathway Inertia in ME/CFS],
  type: "H",
  certainty: "0.55",
  evidence: [Blunted HIF-1$alpha$ stabilization and transcriptional programme activation despite chronic tissue hypoxia. miRNA-mediated silencing of HIF targets. Normal basal EPO but impaired inducibility. Certainty increased 0.50→0.55: feed-into from HIF-2alpha sustained endothelial activation provides convergent upstream mechanism for post-viral subtype.],
  citations: [@Kaczmarek2023miRNAhypoxia @Winkler2004 @Ribeiro2026HIF2alpha],
  mechanism: [Chronic hypoxia → failed HIF-1$alpha$ response → blunted EPO/VEGF induction → inadequate adaptation → sustained metabolic suppression. In post-viral ME/CFS, endothelial HIF-2alpha sustained activation may further suppress HIF-1alpha inducibility via isoform competition.],
  chapter-ref: [ch14k: hif pathway inertia],
  prediction: [ME/CFS patients exposed to mild normobaric hypoxia (FiO2 0.14, 2h) will show blunted plasma EPO and VEGF responses vs controls; PBMCs under 1% O2 show reduced HIF target gene induction. Falsified if EPO/VEGF responses are equivalent.],
  treatment: [Identifies HIF-inducible ME/CFS subtype; motivates HIF-PH inhibitor trials or IHT.],
  limitation: [HIF-1$alpha$ protein measurement technically challenging; miRNA-HIF data from in vitro models; basal EPO single-timepoint only.],
)

#registry-entry(
  [PEM as Hibernation-Mimetic Maladaptation],
  type: "H",
  certainty: "0.55",
  evidence: [PEM reflects maladaptive persistence of HIF-mediated metabolic suppression after exertion — cells locked in hypoxic metabolic state despite adequate oxygen. Certainty increased 0.50→0.55: convergent feed-into from HIF-2α sustained endothelial activation (Ribeiro2026) provides upstream mechanism — endothelial HIF-2α→VEGF→capillary permeability→tissue hypoxia→muscle HIF-1α persistence.],
  citations: [@Hoel2021metabolicphenotypes @Kell2022IRinjury @Kaczmarek2023miRNAhypoxia @Ribeiro2026HIF2alpha],
  mechanism: [Viral trigger → endothelial HIF-2α → VEGF → capillary permeability → tissue hypoxia → muscle HIF-1α stabilization post-exertion → PDK1 suppresses PDH, glycolysis persists → sustained lactate, impaired OXPHOS → prolonged recovery. Two independent lines (endothelial HIF-2α sustained activation + muscle HIF-1α persistence) converge.],
  chapter-ref: [ch14k: pem hif maladaptation],
  prediction: [After exercise, ME/CFS PBMCs show prolonged HIF-1$alpha$ target gene expression at 24--48h vs 6h in controls; PDH activity remains suppressed; lactate clearance delayed. Falsified if time-courses match controls.],
  treatment: [Targets HIF deactivation (rather than activation) as therapeutic strategy.],
  limitation: [Post-exercise HIF time-course not measured in ME/CFS; hibernation-mimetic model from cardiac preconditioning literature; PBMC↔tissue generalization untested.],
)

#registry-entry(
  [HIF-2alpha Sustained Activation as Post-Viral ED Mechanism],
  type: "H",
  certainty: "0.55",
  evidence: [SARS-CoV-2 spike S1 drives sustained HIF-2alpha nuclear localization in endothelial cells causing VEGF production and barrier disruption. Multiple viruses exploit HIF-2alpha; antiviral IRF3 directly couples viral signaling to HIF pathway.],
  citations: [@Ribeiro2026HIF2alpha @Deng2026IRF3HIFalpha @Couteaudier2025HIF2HCV @Morris2025HIFRSV],
  mechanism: [Spike S1 causes transient HIF-1alpha and sustained HIF-2alpha, increasing VEGF, intercellular gaps, and permeability; belzutifan rescues. IRF3 retains both HIF isoforms; viral infection depletes IRF3.],
  chapter-ref: [ch14k: hif2a sustained postviral],
  prediction: [Nuclear HIF-2alpha in dermal ECs at 2 fold higher in post-viral ME/CFS vs controls; plasma VEGF and vWF elevated; belzutifan improves FMD by at least 20% in post-viral ME/CFS. Falsified if HIF-2alpha nuclear staining does not differ from controls.],
  treatment: [Diagnostic subclassification; therapeutic target identification.],
  limitation: [Direct ME/CFS HIF-2alpha data lacking; all evidence from post-COVID and in vitro studies; EBV/HHV-6 to HIF-2alpha in ECs untested.],
)

#registry-entry(
  [beta2AR-Negative as HIF-2alpha-Driven ED Subtype],
  type: "H",
  certainty: "0.55",
  evidence: [The approximately 70% of ME/CFS patients without beta2AR autoantibodies have unexplained endothelial dysfunction; HIF-2alpha-mediated capillary permeability provides a mechanism distinct from autoantibody vasoconstriction.],
  citations: [@Ribeiro2026HIF2alpha @Sandvik2023EndothelialMECFS @Stein2025ImmunoadsorptionPostCOVIDMECFS @Shen2024NRF2HIF2Senescence],
  mechanism: [Post-viral trigger leads to HIF-2alpha and VEGF, microvascular barrier disruption, interstitial edema, and impaired O2 diffusion, producing same net tissue hypoxia as vasoconstriction but via permeability rather than constriction.],
  chapter-ref: [ch10: hif2a beta2ar negative],
  prediction: [beta2AR-autoantibody-negative ME/CFS patients have elevated VEGF, vWF, and EPO compared to autoantibody-positive and healthy controls, with VEGF inversely correlating with FMD. Falsified if VEGF does not differ between subgroups.],
  treatment: [Therapeutic stratification: belzutifan for beta2AR-negative; immunoadsorption for beta2AR-positive.],
  limitation: [Sandvik2023 did not measure autoantibodies; Stein2025 did not measure VEGF/vWF. Direct subgroup comparison testing is needed.],
)

#registry-entry(
  [NRF2 Exhaustion Permits Pathological HIF-2alpha Dominance],
  type: "S",
  certainty: "0.55",
  evidence: [Prolonged oxidative stress depletes NRF2 antioxidant reserve, removing the brake on HIF-2alpha transcriptional activity and permitting unchecked VEGF production. Certainty increased 0.50→0.55: independent convergence — Shen2024 (in vitro NRF2-HIF competition) and Zhang2026 (oxidative stress HIF switch) provide convergent mechanistic evidence from different labs.],
  citations: [@Shen2024NRF2HIF2Senescence @Zhang2026HIFSwitchICH @Ribeiro2026HIF2alpha],
  mechanism: [NRF2 normally competes with HIF-2alpha for CBP/p300 co-activators and maintains EC junction integrity. NRF2 depletion removes this brake, creating a self-sustaining HIF-2alpha dominant state.],
  chapter-ref: [ch10: nrf2 exhaustion hif2a],
  prediction: [NRF2 target genes (NQO1, HO-1, GCLC) are suppressed relative to HIF-2alpha targets in post-viral ME/CFS ECs; sulforaphane (NRF2 activator) rescues barrier integrity in spike-stimulated ECs. Falsified if NRF2 targets are not suppressed.],
  treatment: [Identifies NRF2 activators (sulforaphane, DMF, pycnogenol) as therapeutic strategy for HIF-2alpha-driven ED.],
  limitation: [NRF2-HIF-2alpha competition demonstrated in vitro; not yet confirmed in ME/CFS endothelium.],
)

#registry-entry(
  [HIF-2alpha to vWF to Microclot Pathway in Post-Viral ME/CFS],
  type: "H",
  certainty: "0.50",
  evidence: [HIF-2alpha target VEGF induces Weibel-Palade body exocytosis, releasing ultra-large vWF multimers that promote microclot formation without requiring coagulation cascade activation.],
  citations: [@Ribeiro2026HIF2alpha @VanderLinden2023microclots @Wirth2024MicrovascularPostCOVIDMECFS],
  mechanism: [Viral trigger leads to HIF-2alpha, VEGF, Weibel-Palade exocytosis, ultra-large vWF, and platelet adhesion producing fibrinolysis-resistant microclots.],
  chapter-ref: [ch10: hif2a microclot vwf],
  prediction: [Plasma vWF antigen and vWF propeptide are elevated in post-viral ME/CFS and correlate with microclot burden; belzutifan reduces vWF release from spike-stimulated ECs in vitro. Falsified if vWF does not correlate with microclot burden.],
  treatment: [Identifies vWF as therapeutic target and biomarker; belzutifan as antithrombotic through HIF-2alpha inhibition.],
  limitation: [vWF-microclot correlation not tested in ME/CFS; Weibel-Palade assay in patient ECs is in vitro only.],
)

#registry-entry(
  [Pycnogenol for Endothelial Protection in ME/CFS],
  type: "S",
  certainty: "0.50",
  evidence: [Pycnogenol (French maritime pine bark extract) stimulates NRF2, inhibits VEGF signaling, and directly protects EC junctions, increasing ZO-1/occludin expression.],
  citations: [@Shen2024NRF2HIF2Senescence @Ribeiro2026HIF2alpha],
  mechanism: [Pycnogenol activates NRF2, competes with HIF-2alpha for CBP/p300, reduces VEGF, and enhances ZO-1/occludin improving barrier integrity.],
  chapter-ref: [ch1: 8: (supplement section)],
  prediction: [8 weeks Pycnogenol (150mg/day) in ME/CFS improves FMD by at least 20% and reduces PEM-VAS by at least 25% vs placebo. Falsified if FMD does not improve.],
  treatment: [Immediate-access OTC endothelial therapy without prescription.],
  limitation: [No ME/CFS data; effect size estimated from related conditions; moderate cost. No drug interactions known.],
)

#registry-entry(
  [Post-SLE Remission Fatigue Subgroup],
  type: "H",
  certainty: "0.45",
  evidence: [(a) Two independent large-cohort studies demonstrate that fatigue persists in a minority of SLE patients after disease remission: 13.6–26.2% of patients in DORIS remission have clinically significant fatigue @Parodis2025PoorHRQoLRemission; type 2 fatigue symptoms show no correlation with interferon signatures @Arcani2023Type2SLE. (b) The majority (74–86%) resolve fatigue with disease control. (c) Whether the persistent-fatigue minority represents autoantibody-mediated neuronal suppression, deconditioning, comorbid depression, sleep disturbance, or a combination is unresolved. (d) If subclinical SLE autoantibodies are present in some ME/CFS patients, this could define a mechanistically distinct subgroup — but PEM has never been assessed in SLE and the fatigue constructs may not be equivalent.],
  citations: [@Parodis2025PoorHRQoLRemission @Arcani2023Type2SLE @Schwarting2019AntiNR2Fatigue @Rubio2023UCTDReview],
  mechanism: [Subclinical or remission SLE → possible autoantibody-mediated fatigue → may overlap phenotypically with ME/CFS. Causal direction, mechanism, and construct equivalence (PEM vs general fatigue) unestablished.],
  chapter-ref: [ch05: sle remission fatigue subgroup; ch14d: SLE section],
  prediction: [In a cohort of 200 or more ME/CFS patients, ANA of at least 1:80 plus at least one SLE criterion identifies a subgroup with: (a) elevated anti-NR2 vs seronegative ME/CFS; (b) anti-NR2 correlation with FSS; (c) reduced MRS PCr:ATP ratio in prefrontal cortex; (d) no correlation between anti-NR2 and CRP/ESR. Falsified if anti-NR2 antibodies are absent in ANA-positive ME/CFS.],
  treatment: [If validated, would define an autoantibody-positive ME/CFS subgroup for clinical trial enrichment. Standard rheumatologic evaluation is existing practice; belimumab/anifrolumab have zero ME/CFS safety data and should not be used outside trials.],
  limitation: [PEM never assessed in SLE — if SLE remission fatigue lacks PEM, these are distinct clinical entities regardless of molecular overlap. ANA false-positive rate ~5-10%. Schwarting belimumab data is non-randomized observational subgroup. UCTD diagnostic criteria vary.],
)

#registry-entry(
  [Intermittent Hypoxic Training for ME/CFS],
  type: "S",
  certainty: "0.45",
  evidence: [Brief controlled hypoxic exposures (FiO2 0.16, supine, short cycles) may induce beneficial HIF-1$alpha$-dependent adaptations without triggering PEM.],
  citations: [@Gangwar2019IHTaltitude @JanssenDaalen2025hypoxicPD],
  mechanism: [Brief hypoxia → HIF-1$alpha$ stabilization → VEGF, EPO, PGC-1$alpha$, GLUT1 induction → raised hypoxic threshold → improved exercise tolerance.],
  chapter-ref: [ch18: iht mecfs],
  prediction: [8 weeks IHT improves 6MWT distance ≥40m vs sham. Falsified if IHT does not outperform normoxic sham.],
  treatment: [Non-pharmacological HIF induction for mild-to-moderate ME/CFS.],
  limitation: [Zero ME/CFS IHT data; protocol parameters untested; PEM risk cannot be eliminated without dose-finding.],
)

#registry-entry(
  [Belzutifan for Post-Viral ME/CFS],
  type: "S",
  certainty: "0.45",
  evidence: [HIF-2$alpha$ inhibition could rescue endothelial barrier function in post-viral ME/CFS with HIF-2$alpha$-mediated vascular dysfunction. Updated evidence: Sales2026 (independent HIF-2$alpha$ barrier rescue via darunavir), Shen2024 (NRF2-HIF2$alpha$ axis), Deng2026 (IRF3 antiviral-HIF linkage).],
  citations: [@Ribeiro2026HIF2alpha @Sales2026DarunavirHIF2Barrier @Shen2024NRF2HIF2Senescence @Deng2026IRF3HIFalpha],
  mechanism: [Viral trigger → HIF-2$alpha$ activation → VEGF production, endothelial gaps, increased permeability → belzutifan inhibits HIF-2$alpha$ → barrier restoration. Antiviral IRF3 directly retains HIF-$alpha$ in cytoplasm; viral infection relieves this retention (Deng2026).],
  chapter-ref: [ch18: belzutifan endothelial],
  prediction: [8 weeks belzutifan 40mg daily reduces VWF antigen ≥20% and improves 6MWT ≥30m in post-viral ME/CFS with elevated baseline VWF (>150% normal) and β2AR-autoantibody-negative status. Falsified if VWF does not decrease or 6MWT unchanged.],
  treatment: [Targeted endothelial barrier therapy for post-viral subset; β2AR-negative subgroup predicted to respond preferentially.],
  limitation: [No ME/CFS data; HIF-2$alpha$ inhibition could impair erythropoiesis (15-20% anemia risk); isoforms have opposing functions — narrow therapeutic window. Brain penetration unknown.],
)

#registry-entry(
  [sFlt-1:PlGF Ratio as ME/CFS Biomarker],
  type: "S",
  certainty: "0.45",
  evidence: [Elevated sFlt-1:PlGF ratio (validated in preeclampsia) may indicate anti-angiogenic state from HIF-2alpha activation in post-viral ME/CFS, explaining failed angiogenic compensation.],
  citations: [@Ribeiro2026HIF2alpha @Flaskamp2022endothelial @Sales2026DarunavirHIF2Barrier],
  mechanism: [HIF-2alpha increases sFlt-1 production trapping VEGF causing functional VEGF deficiency despite normal total VEGF, producing an anti-angiogenic state and impaired capillary repair.],
  chapter-ref: [ch14k: sflt1 plgf biomarker],
  prediction: [sFlt-1:PlGF ratio is elevated in post-viral ME/CFS vs controls (mean ratio above 38 vs below 38); correlates with PEM severity and impaired angiogenic serum activity. Falsified if ratio does not differ from controls.],
  treatment: [Non-invasive blood biomarker for endothelial dysfunction subtyping; identifies HIF-2alpha-driven anti-angiogenic state.],
  limitation: [No ME/CFS sFlt-1 data; preeclampsia mechanism is validated but condition-specific; ratio may differ in men.],
)

#registry-entry(
  [Altitude Paradox in ME/CFS],
  type: "S",
  certainty: "0.40",
  evidence: [Biphasic hypoxia response: moderate altitude (1500--2500m) may induce beneficial hypoxic conditioning; higher altitude (>3000m) may overwhelm impaired cerebral autoregulation.],
  citations: [@Badhwar2025brainbloodflow @Medow2024cerebralautoregulation @Gangwar2019IHTaltitude],
  mechanism: [Moderate hypoxia → mild HIF-1$alpha$ stabilization, mitochondrial efficiency→ benefit. High altitude → CBFv decline, hypocapnia→ harm. Narrow therapeutic window.],
  chapter-ref: [ch14k: altitude paradox],
  prediction: [2000m simulated altitude improves cognitive performance and CBFv; 3500m worsens both and triggers PEM at 24h. Falsified if dose-response is monotonic.],
  treatment: [Identifies altitude risk profile; motivates controlled IHT protocols.],
  limitation: [No altitude-chamber ME/CFS study exists; dose-response extrapolated from healthy physiology.],
)

#registry-entry(
  [Darunavir as HIF-2alpha Blocker for ME/CFS],
  type: "S",
  certainty: "0.40",
  evidence: [HIV protease inhibitor darunavir blocks HIF-2alpha activation and preserves tight junctions (Sales2026). Repurposing opportunity with 20+ year safety track record.],
  citations: [@Sales2026DarunavirHIF2Barrier @Ribeiro2026HIF2alpha],
  mechanism: [Darunavir inhibits HIF-2alpha transcriptional activity, preventing VEGF-driven permeability programme and preserving ZO-1/occludin. Mechanism independent of protease inhibition.],
  chapter-ref: [ch18: darunavir hif2a],
  prediction: [4 weeks darunavir/ritonavir reduces plasma VEGF and vWF by at least 25% and improves FMD vs placebo in post-viral ME/CFS (double-blind, n=20). Falsified if VEGF does not decrease.],
  treatment: [Lower-cost alternative to belzutifan for endothelial barrier rescue.],
  limitation: [No ME/CFS data; substantial drug interactions (CYP3A4 inhibitor); hepatotoxicity risk; low CNS penetration.],
)

#registry-entry(
  [Intrapulmonary Shunt as Proximal Cause of Tissue Hypoxia in ME/CFS],
  type: "S",
  certainty: "0.35",
  evidence: [(a) Intrapulmonary right-left shunt (Qs/Qt, blood bypassing alveolar oxygenation via pre-existing arteriovenous anastomoses — IPAVAs) causes exertional hypoxemia. (b) Post-COVID studies document persistent shunt (~8% vs normal 3--5%) at 6 months with normal PFTs (Farrow2023, Sandhu2026). (c) SARS-CoV-2 impairs HPV, the protective vasoconstriction reflex that normally limits shunt. (d) If HPV impairment generalizes to other viral triggers, post-infectious ME/CFS may involve shunt-driven tissue hypoxia upstream of the microcirculatory and mitochondrial defects documented in ME/CFS. (e) Zero direct ME/CFS shunt measurements exist; this is an inferential cross-disease hypothesis.],
  citations: [@Farrow2023IntrapulmonaryShunt @Sandhu2026AlveolarDeadspace @Lyne2024IntrapulmonaryShunt @Li2024RepercussionsShunt @Grist2022LungAbnormalities @Davis2023HyperoxiaIPAVA @Hoel2021MetabolicPhenotypes],
  mechanism: [Shunt → reduced arterial O2 content → tissue hypoxia → metabolic strain, lactate, impaired oxygen extraction. Post-viral mechanism with anatomical substrate (IPAVAs) and HPV impairment. Untested in ME/CFS.],
  chapter-ref: [ch06: intrapulmonary shunt mecfs; ch14d: intrapulmonary shunt postviral],
  prediction: [ME/CFS patients show elevated Qs/Qt (>5%) on 100% FiO2 testing; normal shunt falsifies the hypothesis. Shunt fraction correlates with PEM severity on 2-day CPET. Falsified if Qs/Qt is normal (3--5%) in patients with documented exertional hypoxemia.],
  treatment: [If confirmed, identifies a treatable upstream target — supplemental O2 during exertion or HPV restoration — for a subset. Until measured, entirely speculative; not a clinical recommendation.],
  limitation: [Zero ME/CFS data; all evidence from Long COVID or general physiology. Mechanism plausibility supported but unconfirmed for ME/CFS. 100% O2 testing may trigger PEM in sensitive patients.],
)

#registry-entry(
  [Anti-NR2 Neuronal Metabolic Suppression as ME/CFS Fatigue Mechanism],
  type: "S",
  certainty: "0.35",
  evidence: [(a) Anti-NR2 (NMDAR) autoantibodies in SLE correlate with fatigue severity independent of neuropsychiatric lupus (n=426, cross-sectional) and downregulate neuronal energy metabolism without cytotoxicity @Schwarting2019AntiNR2Fatigue. (b) Belimumab reduces both anti-NR2 titers and fatigue in an observational treatment subgroup (n=86, non-randomized for this endpoint), suggesting but not proving a causal relationship. (c) Anti-NR2 antibodies have never been measured in ME/CFS; the hypothesis that analogous anti-neuronal receptor autoantibodies could produce ME/CFS fatigue through metabolic suppression is entirely inferential.],
  citations: [@Schwarting2019AntiNR2Fatigue @WeissmanTsukamoto2025NPSLE],
  mechanism: [Anti-NR2 (or analogous anti-neuronal) autoantibodies → competitive or allosteric NMDAR modulation → reduced neuronal glucose utilisation and ATP synthesis → impaired cognitive and motor network function → fatigue. Entirely speculative in ME/CFS context.],
  chapter-ref: [ch14d: SLE section; ch07: autoantibodies],
  prediction: [Anti-NR2 antibodies are detectable in at least 15 percent of ANA-positive ME/CFS patients vs under 3 percent of ANA-negative ME/CFS; anti-NR2 titer correlates with MRS PCr:ATP ratio in prefrontal cortex. Falsified if anti-NR2 antibodies are absent across 100+ ME/CFS patients irrespective of ANA status.],
  treatment: [If validated, would define an autoantibody-positive ME/CFS subgroup for clinical trial enrichment. Zero data for any treatment recommendation; belimumab (approximately USD 35k/year) has no ME/CFS safety data and is not approved for ME/CFS.],
  limitation: [No anti-NR2 data in ME/CFS; mechanism inferred from SLE; Schwarting belimumab data is observational subgroup (n=86), not randomised comparison for fatigue; anti-NR2 ELISA not validated for ME/CFS; normal brain MRI is compatible with many mechanisms, not specific to autoantibody hypothesis.],
)

#registry-entry(
  [SLE-NK Mitochondrial Dysfunction as Shared ME/CFS Mechanism],
  type: "S",
  certainty: "0.35",
  evidence: [(a) SLE NK cells accumulate enlarged dysfunctional mitochondria with impaired mitophagy leading to defective cytotoxicity @Fluder2026NKmitoSLE. (b) ME/CFS NK cells show well-established functional impairment (reduced cytotoxicity, TRPM3 channelopathy). (c) Whether ME/CFS NK impairment involves a comparable mitochondrial component is entirely untested; SLE NK cells operate in a distinct pro-inflammatory milieu (type I IFN, BAFF, immune complexes) absent in ME/CFS.],
  citations: [@Fluder2026NKmitoSLE],
  mechanism: [Mitochondrial dysfunction → NK cell metabolic exhaustion → reduced killing capacity. Demonstrated in SLE; testable hypothesis in ME/CFS. Different immunological contexts may produce different patterns of NK mitochondrial impairment.],
  chapter-ref: [ch14d: SLE section; ch07: NK cell section],
  prediction: [ME/CFS NK cells show mitochondrial structural abnormalities on MitoTracker staining and reduced mitophagy markers vs controls, correlating with reduced K562 killing. Falsified if ME/CFS NK cell mitochondria are structurally and functionally normal.],
  treatment: [If validated, mitochondria-targeting interventions (rapamycin, urolithin A) could be investigated as NK-modulating strategies in ME/CFS clinical trials — not a clinical recommendation.],
  limitation: [No ME/CFS NK cell mitochondrial data; Fluder 2026 is SLE-specific (sample size unspecified); SLE NK inflammatory environment differs from ME/CFS; mitophagy enhancer data limited to non-NK tissues.],
)

#registry-entry(
  [HIF-PH Inhibitors for ME/CFS],
  type: "S",
  certainty: "0.30",
  evidence: [Pharmacological HIF stabilization (roxadustat, daprodustat) could restore blunted hypoxic adaptation. Low-dose to avoid excessive erythropoiesis.],
  citations: [@Winkler2004 @Little2023HIF1lupus @Ribeiro2026HIF2alpha],
  mechanism: [PHD inhibitor → stabilizes HIF-1$alpha$/2$alpha$ → full transcriptional programme (EPO+VEGF+glycolytic enzymes+mitophagy) → metabolic adaptation. Risk: Th17 promotion, VEGF-mediated permeability, viscosity.],
  chapter-ref: [ch18: hif ph inhibitors],
  prediction: [Low-dose daprodustat (1mg TIW) improves constant-workload cycling time without hematocrit >45% in ME/CFS with blunted hypoxia-challenge EPO. Falsified if no improvement or adverse events exceed sham.],
  treatment: [Pharmacological HIF stabilization for HIF-inert ME/CFS subtype; repurposed existing drugs.],
  limitation: [No ME/CFS safety data; all HIF-PH inhibitor literature from CKD populations; autoimmune and endothelial risks uncharacterized.],
)

#registry-entry(
  [Shunt as HIF Isoform Imbalance Driver in Post-Viral ME/CFS],
  type: "S",
  certainty: "0.25",
  evidence: [(a) This paper proposes HIF isoform imbalance (HIF-2α dominance in endothelium, HIF-1α blunting in other tissues) in post-viral ME/CFS. (b) Intrapulmonary shunt → chronic mild arterial hypoxemia (PaO2 ~75--85 mmHg). (c) Chronic mild hypoxia preferentially activates endothelial HIF-2α (which responds to sustained mild signals) over ubiquitous HIF-1α (which responds to acute severe hypoxia). (d) Shunt may thus drive the HIF-2α-dominant state — unifying the endothelial and metabolic arms of ME/CFS HIF pathology under one upstream mechanism. (e) Bidirectional: HIF-2α-driven endothelial dysfunction may itself impair pulmonary HPV signaling → worsen shunt. Origin: brainstorm.],
  citations: [@Farrow2023IntrapulmonaryShunt @Ribeiro2026HIF2alpha @Sandvik2023EndothelialMECFS @Li2024RepercussionsShunt],
  mechanism: [Shunt → chronic mild hypoxemia → HIF-2α-skewed isoform ratio → endothelial VEGF/permeability programme + blunted HIF-1α metabolic adaptation. Positive feedback: HIF-2α worsens shunt via HPV impairment.],
  chapter-ref: [ch14d: shunt hif imbalance],
  prediction: [Shunt-positive ME/CFS patients (Qs/Qt >6%) show lower nuclear HIF-2α:HIF-1α ratio in PBMCs vs shunt-normal patients and controls. Falsified if isoform ratios do not differ by shunt status.],
  treatment: [If confirmed, correcting shunt (O2, HPV restoration) could normalize HIF signaling across tissues — single intervention for multiple arms of pathology. Currently speculative; no clinical data.],
  limitation: [No HIF isoform-shunt correlation data; PaO2 range from 8% shunt is theoretical (O2-Hb curve); HIF activation dynamics in chronic mild hypoxemia not directly studied in humans; PBMC HIF ratios may not reflect tissue-specific isoforms.],
)

#registry-entry(
  [RBC Deformability IPAVA Routing Synergy as Shunt Amplifier],
  type: "S",
  certainty: "0.20",
  evidence: [(a) ME/CFS RBCs have impaired deformability (stiffer membranes, slower capillary transit, elevated ROS; Saha 2025, Guo 2025). (b) Stiff RBCs that cannot deform for alveolar capillaries (~5--7 μm) may preferentially route through low-resistance IPAVAs (~25--50 μm) — bypassing oxygenation. (c) Creates a self-reinforcing loop: stiff RBCs → IPAVA routing → reduced O2 uptake → tissue hypoxia → oxidative RBC damage → more stiffness. (d) The two abnormalities (RBC stiffness + IPAVA anatomy) have never been measured in the same ME/CFS patients. Origin: brainstorm.],
  citations: [@Saha2025RBC_MECFS @GuoRBC2025microfluidic @Lyne2024IntrapulmonaryShunt @Davis2023HyperoxiaIPAVA],
  mechanism: [Stiff RBCs → IPAVA preference → shunt amplification. Self-reinforcing via oxidative damage. Individual components documented; interaction untested.],
  chapter-ref: [ch06: rbc ipava synergy],
  prediction: [Within ME/CFS, RBC deformability inversely correlates with Qs/Qt on 100% O2 testing (r > 0.5) independent of age, sex, BMI. Falsified if R2 < 0.10.],
  treatment: [If confirmed, RBC health and shunt are two sides of one problem — antioxidant strategies could reduce shunt indirectly. Currently mechanistic; no clinical application.],
  limitation: [No data on RBC deformability-shunt correlation; IPAVA routing preference for stiff RBCs is theoretical; flow partitioning depends on unmeasured variables (pressure gradients, viscosity, vasomotor tone).],
)

#registry-entry(
  [Post-Exertional Shunt Window as Delayed PEM Trigger],
  type: "S",
  certainty: "0.20",
  evidence: [(a) IPAVAs open during exercise in nearly all adults (Lyne 2024). (b) In health, HPV closes them promptly post-exertion. (c) If HPV remains impaired post-virally (Li 2024), IPAVAs may stay patent for hours after exercise — creating a persistent shunt window. (d) This prolonged arterial hypoxemia during the recovery period would amplify all downstream PEM mechanisms by impairing ATP regeneration and tissue repair. (e) IPAVA closure kinetics post-exercise have never been measured in any post-viral population. Origin: brainstorm.],
  citations: [@Lyne2024IntrapulmonaryShunt @Li2024RepercussionsShunt @Farrow2023IntrapulmonaryShunt],
  mechanism: [Exercise → IPAVA opening → impaired HPV prevents closure → persistent shunt for hours → prolonged hypoxemia → delayed PEM at 24--48h. Timing matches PEM kinetics but mechanism untested.],
  chapter-ref: [ch06: post exertional shunt window],
  prediction: [ME/CFS patients show Qs/Qt >5% at 1h and 6h post-exercise (vs ≤30 min in controls), with 6h Qs/Qt correlating with Day 2 PEM severity. Falsified if post-exercise Qs/Qt normalizes within 30 min in all patients.],
  treatment: [If confirmed, the first 1--6 hours post-exertion become a therapeutic window for PEM prevention — supplemental O2 or positional strategies in this window may reduce crash severity.],
  limitation: [Zero post-exercise shunt data in any post-viral population; all healthy-physiology data shows IPAVA closure within minutes; alternative shunt sources (bronchopulmonary anastomoses, fixed anatomical shunts) would not respond to HPV restoration.],
)

#registry-entry(
  [HIF-2alpha CPET Dynamic Test for ME/CFS Subtyping],
  type: "P",
  certainty: "n/a",
  evidence: [Serial PBMC nuclear HIF-1alpha/HIF-2alpha measurement before and after CPET (baseline, 0, 2, 6, 24, 48h) to define temporal signature distinguishing post-viral from gradual-onset ME/CFS.],
  citations: [@Ribeiro2026HIF2alpha],
  mechanism: [Post-exertional nuclear HIF dynamics: controls show transient HIF-1alpha peak at 0h; post-viral ME/CFS shows delayed HIF-2alpha rise at 24-48h persisting at 48h; gradual-onset shows intermediate.],
  chapter-ref: [ch14k: hif2a cpet dynamics],
  prediction: [HIF-2alpha AUC over 0-48h at 2 fold controls in post-viral ME/CFS, with sustained elevation at 48h (p less than 0.01). Falsified if HIF-2alpha time-courses do not differ between groups.],
  treatment: [Diagnostic subtyping tool; defines objective post-exertional molecular signature.],
  limitation: [Protocol requires PBMC nuclear fraction at 6 timepoints; HIF nuclear translocation may not reflect transcriptional activity.],
)

#registry-entry(
  [EPO Stimulation Test as ME/CFS Biomarker],
  type: "P",
  certainty: "n/a",
  evidence: [Standardized 2h mild hypoxia (FiO2 0.14) with serial EPO measurement over 48h as dynamic functional test of HIF pathway integrity.],
  citations: [@Winkler2004],
  mechanism: [Hypoxia challenge → EPO AUC over 48h → blunted response indicates HIF inertia. Analogous to ACTH stimulation test for adrenal insufficiency.],
  chapter-ref: [ch18: epo stimulation test],
  prediction: [EPO AUC over 48h is ≥40% lower in ME/CFS vs age/sex-matched controls; abnormal test (>2 SD below control) identifies HIF-inert subtype. Falsified if AUC is equivalent.],
  treatment: [Diagnostic subtyping tool; identifies candidates for HIF-targeted therapies.],
  limitation: [Protocol needs validation in ME/CFS; FiO2 0.14 may trigger PEM in some patients; 48h sampling burden.],
)

#registry-entry(
  [100% FiO2 Shunt Testing as ME/CFS Research Tool],
  type: "OQ",
  certainty: "n/a",
  evidence: [Is intrapulmonary shunt measurement (Qs/Qt on 100% O2, a well-established pulmonary function test) feasible and informative in ME/CFS patients? Would shunt fraction correlate with exertional desaturation, PEM severity, or metabolic phenotypes (lactate, impaired oxygen extraction)? The test exists, the anatomical substrate (IPAVAs) is known, and the post-COVID precedent is established — but it has never been applied to ME/CFS.],
  citations: [@Farrow2023IntrapulmonaryShunt @Hoel2021MetabolicPhenotypes @walitt2024deep],
  mechanism: [100% FiO2 → measure A-a gradient → calculate shunt fraction → correlate with CPET desaturation, PEM, metabolic markers. Directly testable with existing clinical equipment.],
  chapter-ref: [ch06: intrapulmonary shunt mecfs],
  prediction: [If Qs/Qt is normal (3--5%) in ME/CFS → shunt ruled out; mechanism pursuit ends. If elevated (>5%) → opens new research pathway: PEM-shunt dynamics, HPV impairment, therapeutic O2 trials.],
  treatment: [If elevated, could open a new therapeutic axis — O2 supplementation during exertion for shunt-positive patients. Until tested, direction unknown.],
  limitation: [No ME/CFS data; equipoise is complete — the test could be positive or negative. 100% O2 testing may trigger PEM in some patients; safety protocol needed.],
)


=== Corticosteroid Failure and Steroid Avoidance

#registry-entry(
  [CNS-Confined Fatigue Persists Despite Normal Peripheral Inflammatory Biomarkers],
  type: "H",
  certainty: "0.60",
  evidence: [Omdal et al.\ 2026 (n=96, 48 LC vs 48 recovered): severe fatigue (fVAS 63 vs 5, FACIT-F 21.5 vs 49) with zero differences in CRP, TNF-α, IL-6, HSP90α, Serpin F1, hémopexine, APOA4. Multivariable regression: no biomarker-fatigue association. Fatigue in LC/ME/CFS is driven by CNS-confined mechanisms that do not spill into peripheral circulation — neuroinflammation compartmentalised behind BBB, epigenetic maintenance of microglial activation, or mitochondrial-derived danger signals trapped in CNS. The null is positive evidence for CNS compartmentalisation, not evidence against biological causation.],
  citations: [@Omdal2026LCFatigueStress],
  mechanism: [Acute viral/inflammatory trigger → microglial priming + hypothalamic sickness behavior activation → fatigue maintained via CNS circuits (microglial cytokine production, epigenetic H3K4me1 marks, cGAS-STING activation from mtDNA leak) → peripheral cytokines normalise but CNS signal persists → chronic fatigue with normal bloodwork.],
  chapter-ref: [ch15: ch1: 5 cytokine fatigue ch06: selective energy],
  prediction: [CSF IL-1β, TNF-α, quinolinic acid, C4d, or sC5b-9 will be elevated in ME/CFS/LC patients despite normal plasma cytokines. Falsified if CSF is also normal — fatigue mechanism must be non-inflammatory (epigenetic, metabolic, or predictive processing).],
  treatment: [CNS-penetrant anti-inflammatories (LDN, minocycline) should outperform peripherally-restricted anti-inflammatories (NSAIDs, colchicine) on fatigue endpoints. Normal CRP with disabling fatigue is not a diagnostic exclusion — it is characteristic of the disease and should not be used to rule out ME/CFS or LC diagnosis.],
  limitation: [No paired CSF-plasma cytokine study in ME/CFS to date. Omdal measured peripheral biomarkers only. CNS compartmentalisation inferred from peripheral null, not directly demonstrated. Alternative explanations (epigenetic maintenance, metabolic fatigue, predictive processing noise) equally consistent with the data.],
)

#registry-entry(
  [Corticosteroid-induced HPA "Trust-Breaking" in Post-Viral Fatigue],
  type: "H",
  certainty: "0.55",
  evidence: [Acute corticosteroid administration may disrupt endogenous HPA axis feedback in post-viral ME/CFS and Long COVID via GR downregulation and CRH suppression, creating iatrogenic dependency. Negative PoCoVIT trial suggests initial corticosteroid benefit transitions to HPA dysregulation without addressing core pathology.],
  citations: [@Adam2024PoCoVIT],
  mechanism: [Corticosteroid suppresses CRH → downregulates GR → blunts endogenous cortisol response → creates artificial dependency cycle.],
  chapter-ref: [steroid hpa trust breaking],
  prediction: [Longitudinal cortisol profiles pre/post corticosteroid treatment will show blunted diurnal variation and increased post-treatment fatigue severity vs baseline.],
  treatment: [Corticosteroids contraindicated; focus on HPA axis restoration (circadian rhythm, stress response training, low-dose hydrocortisone if CRH confirmed low).],
  limitation: [Mechanism inferred from negative trial; direct HPA axis measurements in corticosteroid-treated Long COVID patients not yet available.],
)

#registry-entry(
  [Corticosteroid-Induced NK Cell Suppression Facilitates Viral Reactivation],
  type: "H",
  certainty: "0.55",
  evidence: [Methylprednisolone dose-dependently suppresses NK cell cytotoxicity and IFN-γ production, potentially enabling EBV/HHV-6 reactivation in Long COVID and ME/CFS. PoCoVIT trial adverse events may reflect viral reactivation rather than pure immunosuppression.],
  citations: [@Adam2024PoCoVIT],
  mechanism: [Corticosteroids suppress NK cells → reduced viral surveillance → EBV/HHV-6 reactivation → sustained immune activation → chronic fatigue.],
  chapter-ref: [steroid nk viral reactivation],
  prediction: [Corticosteroid-treated patients will show increased EBV/HHV-6 viral load and decreased NK cell activity vs placebo at 3-month follow-up.],
  treatment: [Antiviral protocols (valacyclovir) + NK-boosting supplements (beta-glucan, medicinal mushrooms) preferred over corticosteroids.],
  limitation: [PoCoVIT trial did not measure viral load or NK cell activity; mechanism inferred from corticosteroid pharmacology.],
)

#registry-entry(
  [Systemic Innate-Immune Hyperactivation as a Drug-Addressable Driver of Fatigue/PEM],
  type: "H",
  certainty: "0.55",
  evidence: [Che et al.\ 2025 (Lipkin multi-site multi-omics + ex-vivo microbial stimulation) @che2025innate and Hornig et al.\ 2015 plasma immune signatures @Hornig2015 document an exaggerated innate immune response that worsens after exercise and correlates with fatigue/PEM. Consistent with ch18 TLR4/NF-$kappa$B PEM amplification @hyp:tlr4-nfkb-pem-amplifier. Cohort overlap: Che 2025 and Hornig 2015 share the Columbia multi-site program — these are overlapping sources, not independent replications.],
  citations: [@che2025innate,@Hornig2015],
  mechanism: [Infectious/microbial-antigen trigger → exaggerated innate TLR/NF-$kappa$B and NLRP3-inflammasome response → systemic chronic inflammation → downstream metabolic (TCA/beta-oxidation/urea-cycle) and tryptophan-kynurenine amplification → fatigue and PEM worsened by exercise.],
  chapter-ref: [ch33 sec-08 innate-immune-hyperactivation-cascade (@sec:innate-immune-hyperactivation-cascade); ch08 @sec:innate-immunity @sec:immune-activation; ch18 @hyp:tlr4-nfkb-pem-amplifier; ch17 @sec:multi-lock-trap],
  prediction: [Qualitatively different drug-response patterns separate an innate-immune driver from metabolic-triage and CNS-confined neuroinflammation: (a) if systemic innate immunity is rate-limiting, broad anti-inflammatories give partial relief and inflammasome/IL-1 blockers (colchicine, anakinra, canakinumab) improve a subset; (b) if metabolic-triage dominates (@sec:triage-cascade), anti-inflammatories fail to relieve fatigue; (c) if the driver is CNS-confined (cf. Omdal CNS-compartment hypothesis), peripherally-restricted anti-inflammatories (NSAIDs, colchicine) fail while CNS-penetrant agents (LDN, minocycline) succeed. Falsified if anti-inflammatory response patterns are uniform across all ME/CFS patients in all three scenarios.],
  treatment: [Sequential, mechanism-probing trial of broad anti-inflammatory → inflammasome/IL-1 blocker → CNS-penetrant immunomodulator, each with the monitoring, interaction, and stopping guidance in @sec:medication-reference. Research-stage; no clinical recommendation.],
  limitation: [Che 2025 is cross-sectional with severity distribution unstated (severity coverage unknown) and uses ex-vivo blood/plasma to infer systemic tissue inflammation (compartment gap, Doc C). Competes with the CNS-confined-peripheral-null hypothesis — differential drug response is the deciding test, not inflammatory-marker presence alone. Origin: /integrate-topic innate-immunity-che2025 (scoped cascade micro-add).],
)

#registry-entry(
  [Corticosteroid-Induced Transcriptional Reprogramming Creates Pathological "Stuck State"],
  type: "H",
  certainty: "0.50",
  evidence: [Glucocorticoid receptor (GR) signaling induces rapid transcriptional reprogramming via chromatin remodeling. In post-viral contexts, acute corticosteroid exposure may lock immune cells into pathological gene expression patterns that persist after drug clearance, explaining PoCoVIT's lack of durability and adverse events.],
  citations: [@Adam2024PoCoVIT],
  mechanism: [GR binding to GREs → chromatin remodeling → persistent transcriptional "memory" even after corticosteroid clearance → pathological immune state.],
  chapter-ref: [steroid transcriptional lock],
  prediction: [Single-cell RNA-seq of PBMCs pre/post corticosteroid treatment will show persistent gene expression changes at 6-month follow-up despite drug clearance.],
  treatment: [Epigenetic modulators (HDAC inhibitors, DNA methylation agents) may reverse corticosteroid-induced transcriptional locking.],
  limitation: [Single-cell transcriptomics not performed in PoCoVIT; mechanistic inference from GR biology.],
)

#registry-entry(
  [GR Isoform Imbalance (GRα/GRβ) Underlies Corticosteroid Resistance and Adverse Outcomes],
  type: "H",
  certainty: "0.45",
  evidence: [Chronic inflammation in Long COVID and ME/CFS may shift GR isoform expression toward GRβ (dominant-negative) and away from GRα (functional), creating corticosteroid resistance and paradoxical pro-inflammatory effects. PoCoVIT trial failure may reflect undetected GR isoform imbalance.],
  citations: [@Adam2024PoCoVIT],
  mechanism: [Inflammation → increased GRβ:GRα ratio → corticosteroid resistance → paradoxical GRβ-mediated inflammation → adverse outcomes.],
  chapter-ref: [gr isoform imbalance],
  prediction: [GRβ:GRα mRNA ratio > 0.5 in peripheral blood monocytes will predict corticosteroid non-response and increased adverse events.],
  treatment: [GRα-selective agonists or GRβ silencing approaches may restore corticosteroid responsiveness; GR isoform screening before corticosteroid use.],
  limitation: [GR isoform expression not measured in PoCoVIT; mechanism inferred from inflammatory disease literature.],
)

#registry-entry(
  [Corticosteroids May Exacerbate T Cell Exhaustion in Post-Viral Fatigue],
  type: "H",
  certainty: "0.45",
  evidence: [Glucocorticoids modulate T cell function through GR-mediated transcriptional reprogramming, PD-1 pathway modulation, metabolic suppression, and subset-specific CD8+ preference. In ME/CFS, where CD8+ T cells already show epigenetic locking of exhaustion programs and failed metabolic reprogramming, corticosteroids may lock cells deeper into exhausted states rather than restoring function.],
  citations: [@Adam2024PoCoVIT @iu2024tcell_exhaustion @Mandarano2020],
  mechanism: [GR activation → transcriptional reprogramming + PD-1 upregulation + metabolic suppression + CD8+ preference → deeper T cell exhaustion → impaired viral clearance → worse outcomes.],
  chapter-ref: [steroid tcell exhaustion],
  prediction: [ME/CFS/Long COVID patients receiving corticosteroids will show increased PD-1/Tim-3/CTLA-4 on CD8+ T cells, deeper transcriptional exhaustion shifts, reduced viral clearance, and in vitro dexamethasone will increase checkpoint expression more than in healthy controls.],
  treatment: [Corticosteroids contraindicated in post-viral fatigue; if unavoidable, combine with T cell support (checkpoint modulation, metabolic support) and monitor exhaustion markers.],
  limitation: [Direct evidence for corticosteroid effects on ME/CFS T cell exhaustion lacking; mechanistic inference from GR biology and negative methylprednisolone trial.],
)

#registry-entry(
  [GR Signaling Bifurcation in Post-Viral vs Acute Inflammation],
  type: "S",
  certainty: "0.45",
  evidence: [The immune response in post-viral ME/CFS and Long COVID may have bifurcated away from standard acute inflammation model that guides corticosteroid use. Altered cofactor availability, epigenetic reprogramming at GR binding sites, shifted GR isoform balance, and exhausted immune cell phenotypes may cause GR activation to produce different effects in chronic post-viral states vs acute inflammation, explaining why steroids work in acute COVID pneumonia but fail in Long COVID/ME/CFS.],
  citations: [@Adam2024PoCoVIT],
  mechanism: [Chronic inflammation → altered GR signaling context → different transrepression/transactivation ratio → unexpected steroid effects → treatment failure.],
  chapter-ref: [gr bifurcation],
  prediction: [Single-cell ATAC-seq will show different chromatin accessibility at GR binding sites in ME/CFS vs acute inflammation; GR activation will produce different gene expression signatures; transrepression/transactivation ratio altered; acute inflammation biomarkers (IL-6, CRP) won't predict steroid response in post-viral fatigue.],
  treatment: [Corticosteroids generally contraindicated in post-viral fatigue unless compelling indication; need GR signaling phenotyping before any steroid use.],
  limitation: [Direct evidence for GR signaling bifurcation in ME/CFS lacking; mechanistic inference from negative methylprednisolone trial and GR biology.],
)

#registry-entry(
  [Post-Steroid Recovery Protocol for HPA Axis Restoration],
  type: "S",
  certainty: "0.45",
  evidence: [Patients who received corticosteroids for Long COVID or ME/CFS may require structured HPA axis recovery including circadian rhythm optimization, adrenal support (adaptogens, licorice), and gradual weaning of any iatrogenic dependency. PoCoVIT trial participants likely need recovery support.],
  citations: [@Adam2024PoCoVIT],
  mechanism: [Circadian alignment + adrenal support + gradual weaning → HPA axis restoration → reduced iatrogenic fatigue.],
  chapter-ref: [post steroid recovery],
  prediction: [Structured recovery protocol will improve fatigue scores and normalize cortisol rhythm in corticosteroid-exposed patients vs standard care.],
  treatment: [Morning light exposure, sleep schedule regularity, ashwagandha 300mg BID (caution: may affect thyroid function), licorice root 200mg AM (caution: pseudohyperaldosteronism — monitor blood pressure and potassium), magnesium 400mg PM for 8 weeks.],
  limitation: [No trials of post-steroid recovery specifically in ME/CFS or Long COVID; protocols adapted from adrenal fatigue literature; licorice root carries hypertension and hypokalemia risk with prolonged use; ashwagandha may interfere with thyroid medication.],
)

#registry-entry(
  [Steroid-Sparing Anti-Inflammatory Protocol for Post-Viral Fatigue],
  type: "S",
  certainty: "0.40",
  evidence: [Given corticosteroid failure, a protocol combining mast cell stabilizers (cromolyn, ketotifen), low-dose colchicine, and omega-3 fatty acids may provide anti-inflammatory benefits without HPA axis disruption. This addresses ME/CFS/Long COVID neuroinflammation while avoiding corticosteroid risks.],
  citations: [@Adam2024PoCoVIT],
  mechanism: [Mast cell stabilization + anti-fibrotic (colchicine) + anti-inflammatory (omega-3) → reduced neuroinflammation without HPA disruption.],
  chapter-ref: [steroid sparing protocol],
  prediction: [Steroid-sparing protocol will reduce inflammation markers (IL-6, TNF-α) and improve fatigue scores without altering cortisol rhythm.],
  treatment: [Cromolyn 100mg QID, ketotifen 1mg BID, colchicine 0.5mg daily (monitor renal function; narrow therapeutic index), omega-3 2g daily for 12 weeks.],
  limitation: [No clinical trials of this specific combination in ME/CFS or Long COVID; individual components have mixed evidence; colchicine narrow therapeutic index requires renal monitoring; ketotifen causes sedation.],
)

#registry-entry(
  [Corticosteroid Timing Paradox: Early Harm, Late Benefit],
  type: "H",
  certainty: "0.35",
  evidence: [The timing of corticosteroid administration relative to viral infection may determine outcomes. Early administration (less than 4 weeks post-infection) may impair viral clearance and immune priming, increasing chronic sequelae risk. Late administration (greater than 6 months) might provide anti-inflammatory benefits without compromising viral clearance, as viral reservoir is established and immune dysregulation is primary pathology. Explains why steroids work in acute COVID pneumonia but fail in Long COVID.],
  citations: [@Adam2024PoCoVIT],
  mechanism: [Early steroids → NK suppression + T cell priming disruption + GR reprogramming → viral reservoir establishment → chronic sequelae. Late steroids → established reservoir + chronic inflammation → anti-inflammatory benefit without viral clearance compromised.],
  chapter-ref: [steroid timing paradox],
  prediction: [Retrospective analysis will show worse Long COVID outcomes with steroids less than 4 weeks vs greater than 6 weeks; animal models will show higher viral load/chronic sequelae with early vs late steroids; biomarker profiles differ (viral markers early, inflammation markers late).],
  treatment: [Steroids generally contraindicated in post-viral fatigue; timing-dependent effects uncertain; avoid unless compelling indication.],
  limitation: [Timing hypothesis speculative; no prospective trials comparing early vs late steroid administration in post-viral syndromes.],
)

#registry-entry(
  [Corticosteroids May Worsen Long-Term Outcomes in Post-Viral Fatigue],
  type: "S",
  certainty: "0.35",
  evidence: [Despite acute anti-inflammatory effects, corticosteroids may impair viral clearance, disrupt tissue repair, and induce endocrine dependency that prolongs recovery. PoCoVIT trial's early termination and high adverse event rate suggest net harm in Long COVID. Similar concerns apply to ME/CFS.],
  citations: [@Adam2024PoCoVIT],
  mechanism: [Corticosteroids impair viral clearance + disrupt tissue repair + induce endocrine dependency → prolonged recovery → net harm despite acute inflammation reduction.],
  chapter-ref: [corticosteroid mechanism],
  prediction: [Corticosteroid-treated patients will have lower recovery rates and higher symptom burden at 12-month follow-up vs untreated controls.],
  treatment: [Corticosteroids contraindicated in post-viral fatigue; focus on viral clearance (antivirals) and tissue repair (growth factors, collagen support).],
  limitation: [Long-term outcomes not measured in PoCoVIT (trial terminated early); mechanism speculative.],
)

#registry-entry(
  [Vagus Nerve Stimulation as Corticosteroid Alternative for Neuroinflammation],
  type: "S",
  certainty: "0.35",
  evidence: [Transcutaneous vagus nerve stimulation (tVNS) may provide anti-inflammatory and autonomic benefits in ME/CFS and Long COVID without HPA axis disruption. Unlike corticosteroids, VNS enhances cholinergic anti-inflammatory pathway via parasympathetic activation, addressing neuroinflammation mechanism. Controlled tVNS trials in the most closely analogous condition (PCC) are null for clinical efficacy despite confirmed HRV engagement — sham outperformed active in the best-powered RCT (@Balan2026taVNS). 0.50→0.35: contradictory controlled evidence from PCC.],
  citations: [@Adam2024PoCoVIT],
  mechanism: [tVNS → parasympathetic activation → cholinergic anti-inflammatory pathway → reduced neuroinflammation without HPA disruption.],
  chapter-ref: [vns steroid alternative],
  prediction: [tVNS 15min BID will reduce inflammation markers and improve fatigue scores without altering cortisol rhythm or causing adverse events.],
  treatment: [tVNS devices (gammaCore, Nemos) 15min BID on neck, targeting auricular branch for 12 weeks.],
  limitation: [Small pilot studies in rheumatoid arthritis and Crohn's disease show benefit; no trials in ME/CFS or Long COVID yet. All PCC controlled tVNS trials null for clinical efficacy (@Balan2026taVNS); CAP blockade by GPCR autoantibodies may explain ineffectiveness (@spec:tvns-dissociation-mechanisms).],
)
=== Tick-Borne Infections × ME/CFS

#registry-entry(
  [Borrelia burgdorferi Directly Activates Human Microglia — Bacterial Counterpart to Viral Microglial Coverage],
  type: "S",
  certainty: "0.70",
  evidence: [Six+ independent studies across three labs: Bb directly activates human and primate microglia via TLR1/TLR2/MyD88→NF-κB→TNF-α, IL-1β, IL-6, chemokines @Myers2009Microglia (PLoS Pathog, cert 0.70) @Parthasarathy2015MicrogliaTLR (J Neuroinflamm, cert 0.70) @CassianiIngoni2006MicrogliaTLR (J Neuropathol Exp Neurol, cert 0.65, human microglia) @Kuhlow2005MicrogliaPhag (J Neuroimmunol, cert 0.65). Non-viable Bb debris suffices to sustain microglial activation @Parthasarathy2022NonviableBb (cert 0.65) — explains post-antibiotic neuroinflammation. In vivo human PET confirms glial activation persists years after treatment in PTLDS @Coughlin2018PTLDSglialPET (n=12, cert 0.60).],
  citations: [@Myers2009Microglia @Parthasarathy2015MicrogliaTLR @CassianiIngoni2006MicrogliaTLR @Kuhlow2005MicrogliaPhag @Parthasarathy2022NonviableBb @Coughlin2018PTLDSglialPET],
  mechanism: [Bb→TLR1/TLR2 on human microglia→MyD88→NF-κB + MAPK→proinflammatory cytokine release (TNF-α, IL-1β, IL-6, CCL2, CXCL10). Microglia are necessary intermediaries — Bb alone does not directly kill neurons; microglial inflammatory response is required. Non-viable bacterial debris sustains this activation → convergent neuroimmunological endpoint for viral and bacterial post-infectious ME/CFS triggers. Complement to the existing viral microglial coverage in @sec:glial.],
  chapter-ref: [ch07: tick borne; ch08: glial (microglial activation paragraph)],
  prediction: [Not a hypothesis — established finding. Would be refuted if a well-powered study found Bb does not activate human microglia, but evidence against this scenario is strong (6+ studies, 3 labs, human and primate cells).],
  treatment: [The activation mechanism explains post-antibiotic symptom persistence (non-viable debris sustains inflammation) — clinically useful for patient education but no direct therapeutic target identified at this stage. Research-stage only.],
  limitation: [In vitro microglial studies (primate and human cell lines/primary); in vivo human evidence is a single pilot PET study (n=12). No ME/CFS-specific microglial data; evidence is from neuroborreliosis/PTLDS models. Does not establish that microglial activation is present in ME/CFS patients with a tick-borne trigger — only that Bb can cause it and that PTLDS patients show it.],
)

#registry-entry(
  [Infection-Driven Oxidative Consumption as a Contributor to CoQ10 Depletion],
  type: "S",
  certainty: "0.40",
  evidence: [Every component separately documented in ME/CFS: low plasma CoQ10 @Maes2009CoQ10 (cert 0.55); elevated lipid peroxidation @Maes2014OSEs @Maes2021Reification; viral-reactivation mitochondrial ROS @Schreiner2020HHV6Mito (in vitro); post-viral antioxidant depletion in Long COVID @Al-Hakeim2023LongCOVIDOx. Biochemical framework for oxidative CoQ10 consumption @Morris2013CoQ10 (cert 0.65). Unified causal chain never directly tested.],
  citations: [@Maes2009CoQ10 @Morris2013CoQ10 @Morris2014Mito @Maes2014OSEs @Maes2021Reification @Schreiner2020HHV6Mito @Al-Hakeim2023LongCOVIDOx],
  mechanism: [Persistent/reactivating infection → sustained ROS load → oxidative consumption of CoQ10 (a regenerable lipophilic antioxidant quenching lipid peroxyl radicals) faster than ETC/GSH/vitamin-E regeneration → contributes to documented CoQ10 deficiency. Self-amplifying via ROS→ETC damage→more ROS feed-forward loop.],
  chapter-ref: [ch07: coq10 infection consumption],
  prediction: [Pathogen-burden markers (EBV/HHV-6 load or composite infection-activity index) correlate inversely with plasma/tissue CoQ10 and positively with lipid-peroxidation markers; suppression of viral reactivation is followed by a rise in CoQ10 / fall in lipid-peroxidation markers. Refuted if CoQ10 deficiency occurs without elevated oxidative-consumption markers or if pathogen burden and CoQ10 are uncorrelated after adjustment.],
  treatment: [If confirmed, controlling infection/oxidative source may matter as much as CoQ10 repletion (leaking-tank logic); not a clinical recommendation — inference only. No direct evidence antiviral therapy restores CoQ10.],
  limitation: [Causal arrow untested; competing biosynthesis-defect mechanism @Laredj2014CoQBiosynth (cert 0.70) not excluded (see @oq:coq10-consumption-vs-biosynthesis). HHV-6 evidence in vitro only; Long COVID analogy not ME/CFS-replicated. All CoQ10 data plasma, not tissue.],
)

#registry-entry(
  [Tick-Borne Pathogen-Driven Glycolytic Reprogramming as a Compounding Immunometabolic Insult in a Post-Infectious ME/CFS Subset],
  type: "H",
  certainty: "0.35",
  evidence: [Borrelia (strongest): LDHA/TXN upregulation with glucose depletion and lactate accumulation in human THP-1 monocytes @Dong2026BorreliaGlycolysis (in vitro, cert 0.50); persistent trained-immunity glycolytic macrophage memory with mitochondrial downregulation, reversed in vivo by glycolysis inhibition @Barriales2021BorreliaMacrophage (mouse + in vitro, cert 0.65, PLoS Biol); cell-type-specific trained immunity @Bernard2020BorreliaTrained (cert 0.50); Borrelia obligately glycolytic, LDH druggable @Lynch2023LDHBorrelia (cert 0.45). Bartonella: B. henselae stabilises HIF-1α → cellular hypoxia → decreased host ATP → VEGF @Kempf2005BartonellaHIF1 (cert 0.70, Circulation). Babesia (weakest): increased de-novo glucose uptake in infected murine RBCs @Ohmori2004BabesiaGlucose (cert 0.35, single animal study). Contradiction: Kerstholt2022BorreliaLactate found DECREASED baseline glycolysis in primary monocytes (cert 0.60) — context/timepoint-dependent, bidirectional. Null: PTLDS serum metabolomics found NO glycolytic signature @Fitzgerald2021PTLDSMetabolic (cert 0.65) — consistent with cell-type-restricted reprogramming. 0 direct ME/CFS studies.],
  citations: [@Dong2026BorreliaGlycolysis @Barriales2021BorreliaMacrophage @Kempf2005BartonellaHIF1 @Ohmori2004BabesiaGlucose @Kerstholt2022BorreliaLactate @Fitzgerald2021PTLDSMetabolic @Mandarano2020 @naviaux2016metabolic],
  mechanism: [Asymmetric evidence: Borrelia (moderately-evidenced) drives a Warburg-like glycolytic shift via LDHA/trained-immunity macrophage memory; Bartonella HIF-1α/ATP depletion is consistent-with but does not measure glycolysis (single cell-line study); Babesia RBC glucose uptake is a transporter-level effect in anucleate cells, NOT transcriptional reprogramming. In a tick-borne-triggered or co-infected subset a Borrelia-type shift may compound the pre-existing ME/CFS immunometabolic defect (failed CD8+ Warburg @Mandarano2020; cell-danger-response glycolysis @naviaux2016metabolic) and, if epigenetically stabilised as trained immunity, may persist after pathogen clearance to sustain chronic symptoms — mirroring the post-viral glial mechanism (@spec:post-viral-cns-reprogramming).],
  chapter-ref: [ch07: tickborne glycolytic reprogramming],
  prediction: [In a tick-borne-triggered ME/CFS subset with serology/PCR-confirmed infection, isolated monocytes/macrophages will show a trained-immunity glycolytic signature (elevated LDHA/lactate, downregulated mitochondrial transcripts, enhanced ex-vivo cytokine responses) exceeding non-tick-borne ME/CFS patients and controls; attenuated in patients whose infection was eradicated early. Falsified if tick-borne-triggered ME/CFS monocytes show no glycolytic/mitochondrial transcriptional difference from other ME/CFS patients.],
  treatment: [If confirmed: identifies a subset potentially addressable by metabolic (glycolysis-modulating) rather than purely antimicrobial approaches. Currently a research direction, not a treatment basis. No human data.],
  limitation: [No study has measured tick-borne pathogen-driven glycolytic reprogramming in any ME/CFS patient — ME/CFS relevance is mechanistic parallel only. Strongest evidence (Borrelia trained immunity) is mouse/human-cell; Bartonella/Babesia thinner (Babesia = single animal study). PTLDS serum metabolomics null for glycolysis. Subset size and severity applicability unknown. Direction of effect (↑ vs ↓ glycolysis) context-dependent, unresolved in vivo.],
)

#registry-entry(
  [Combinatorial Immune Signatures Behind Cross-Study Inconsistency in ME/CFS],
  type: "S",
  certainty: "0.35",
  evidence: [PTLD immunophenotyping separated patients from controls only with a multi-parameter classifier, not any single marker @Girgis2025PTLDTcell; ME/CFS immune studies are chronically inconsistent at the single-marker level.],
  citations: [@Girgis2025PTLDTcell],
  mechanism: [If the discriminating immune signal is inherently combinatorial in both PTLD and ME/CFS, univariate studies would disagree across cohorts while multivariate classifiers on the same data recover a reproducible signal.],
  chapter-ref: [ch07: tickborne combinatorial immune],
  prediction: [A multivariate (elastic-net) classifier on published ME/CFS immunophenotyping datasets separates patients from controls at materially higher AUC than the best single marker. Refuted if multivariate ≈ univariate, or if the signal fails to replicate across cohorts.],
  treatment: [None directly; a diagnostic/analysis-method insight, not a treatment.],
  limitation: [Combinatorial finding solid for PTLD; transfer to ME/CFS is inference, not measurement. Origin: brainstorm.],
)

#registry-entry(
  [Serum Exosomal mtDNA + Tick Serology Stratification Panel],
  type: "OQ",
  certainty: "0.35",
  evidence: [Post-exercise exosomal mtDNA elevated in ME/CFS @Tsilioni2022exosome (cert 0.55) but never stratified by trigger type. If tick-borne-triggered ME/CFS involves a separate NO $arrow.r$ mito $arrow.r$ mtDNA pathway, seropositive patients with elevated post-exercise exosomal mtDNA might identify the subgroup for microglial-targeted trials. Panel: exosomal mtDNA post-exercise + Borrelia C6 peptide IgG + Bartonella IgG (approximately USD 150). PPV untested. Origin: brainstorm (idea 9.2).],
  citations: [@Tsilioni2022exosome],
  mechanism: [Not a mechanistic claim — a stratification/biomarker proposal. Hypothesis: tick-borne-triggered ME/CFS patients will show higher post-exercise exosomal mtDNA than viral-triggered, and mtDNA reduction will correlate with response to microglial-targeted interventions.],
  chapter-ref: [ch07: exosomal mtdna tick serology panel],
  prediction: [In a cohort with documented tick-exposure history + ME/CFS, seropositive patients (Borrelia C6 IgG+) will show ≥30% higher post-exercise exosomal mtDNA than seronegative patients. Panel AUC ≥0.75 for predicting response to a microglial-targeted intervention. Falsified if mtDNA does not differ by serostatus or does not correlate with treatment response.],
  treatment: [Research-stage stratification tool only; not for clinical use. Could identify who to enroll in trials of microglial-targeted agents.],
  limitation: [mtDNA trigger-type stratification completely untested. Borrelia serology has known sensitivity/specificity limitations. Panel PPV for treatment-response prediction is nil — unmeasured. No data on whether mtDNA response to exercise differs between tick-borne and viral ME/CFS. Serial pharmacodynamic application (pre/post-intervention mtDNA) is also untested. Origin: brainstorm.],
)

#registry-entry(
  [Weak HLA–Antigen Binding as a Shared Vulnerability Across Post-Infectious Illness],
  type: "S",
  certainty: "0.30",
  evidence: [In-silico HLA binding-affinity analysis reports ME/CFS-susceptibility alleles (C\*07:04, DQB1\*03:03) bind _Borrelia burgdorferi_ antigens weakly while protective alleles (B\*08:01, DPB1\*02:01) bind strongly — same pattern reported for herpesvirus and SARS-CoV-2 antigens. Computational only; no wet-lab or functional validation; few alleles tested.],
  citations: [@Georgopoulos2025HLAPTLDS],
  mechanism: [Weak HLA presentation → inefficient antigen clearance → antigen persistence → chronic immune activation, offering one reason the same host could develop ME/CFS, PTLDS, or Long COVID depending on the arriving pathogen.],
  chapter-ref: [ch07: hla shared susceptibility],
  prediction: [In an HLA-genotyped cohort, carriers of the "weak-binding" susceptibility alleles show higher rates of chronic post-infectious illness after documented tick-borne or viral infection than carriers of "strong-binding" protective alleles. Refuted if chronic-illness incidence is independent of HLA-binding class, or if measured binding does not match the in-silico predictions.],
  treatment: [None. A genetic risk marker, if validated, would inform risk stratification — not treatment. Not usable for individual risk prediction at present.],
  limitation: [In-silico only; binding affinity does not guarantee functional immune outcome; small allele set; no prospective genotype–outcome cohort exists. Origin: literature-derived.],
)

#registry-entry(
  [Tick-Borne Pathogens Converge on Glycolytic Reprogramming — A Post-Infectious Metabolic-Memory Synthesis],
  type: "S",
  certainty: "0.30",
  evidence: [Synthesis (not a new claim) condensing @hyp:tickborne-glycolytic-reprogramming (0.40), @spec:tickborne-glial-reprogramming (0.30), @spec:tickborne-anls-gradient-reversal (0.20), @spec:metformin-trained-immunity-reset (0.22), and @oq:tickborne-glycolytic-research-programme, cross-referenced to @spec:post-viral-cns-reprogramming. Convergence of Borrelia (@Barriales2021BorreliaMacrophage, @Dong2026BorreliaGlycolysis), Bartonella (@Kempf2005BartonellaHIF1), Babesia (@Ohmori2004BabesiaGlucose) on a glycolytic endpoint. 0 direct ME/CFS data; direction-of-effect unresolved; PTLDS serum null @Fitzgerald2021PTLDSMetabolic.],
  citations: [@Barriales2021BorreliaMacrophage @Dong2026BorreliaGlycolysis @Kempf2005BartonellaHIF1 @Ohmori2004BabesiaGlucose @Fitzgerald2021PTLDSMetabolic],
  mechanism: [Asymmetric evidence — one moderately-evidenced pathogen (Borrelia trained-immunity glycolysis) plus a weaker Bartonella analogy (HIF-1α, glycolysis not measured); Babesia excluded from "reprogramming" (transporter-level, anucleate). The Borrelia case, if it holds, reaches the same endpoint as viral glial reprogramming — motivating a broader "post-infectious" (not merely post-viral) metabolic-memory model for mechanisms with post-clearance persistence, with downstream reach to the ANLS and a metabolic therapeutic corollary.],
  chapter-ref: [ch07: tickborne glycolytic reprogramming model],
  prediction: [The synthesis stands or falls on the research programme (@oq:tickborne-glycolytic-research-programme): the central testable claim is that tick-borne-triggered ME/CFS shows a monocyte trained-immunity glycolytic signature exceeding viral-triggered ME/CFS. Falsified if no such signature exists.],
  treatment: [Unifies post-viral and tick-borne ME/CFS under a metabolic-memory framework IF confirmed — would support metabolic (not antimicrobial) intervention. Not a current clinical recommendation.],
  limitation: [Aggregative synthesis at certainty 0.30 (below the 0.35 hypothesis it summarises because it also spans lower-certainty speculations). 0 direct ME/CFS measurement; direction-of-effect unresolved; closest human data (PTLDS serum) null. Origin: brainstorm-derived aggregation.],
)

#registry-entry(
  [Two-Hit Microglial Priming: Borrelia as Primer, Exercise mtDNA as Second Hit],
  type: "S",
  certainty: "0.30",
  evidence: [Priming: Bb upregulates TLR1/TLR2 and NLRP3/pro-IL-1β in human microglia @CassianiIngoni2006MicrogliaTLR (cert 0.65) @Myers2009Microglia (cert 0.70). Second hit: exercise-induced exosomal mtDNA activates human microglia to secrete IL-1β in ME/CFS @Tsilioni2022exosome (cert 0.55). Two-hit NLRP3 biology established in macrophages; not specifically demonstrated in Bb-exposed human microglia. Origin: brainstorm (idea 1.3).],
  citations: [@CassianiIngoni2006MicrogliaTLR @Myers2009Microglia @Tsilioni2022exosome],
  mechanism: [Bb exposure primes microglia (TLR/NLRP3 upregulation) but does not alone trigger IL-1β secretion (canonical NLRP3 requires priming + activation). The second hit — exercise-induced exosomal mtDNA — activates NLRP3, producing mature IL-1β and the PEM crash. Pacing prevents mtDNA release from exercise, thus preventing the second hit. Molecular mechanism for PEM in tick-borne-triggered ME/CFS specifically.],
  chapter-ref: [ch07: microglial two hit priming],
  prediction: [Bb-exposed primary microglia (24 h): elevated NLRP3/pro-IL-1β mRNA but minimal mature IL-1β. Addition of mtDNA (10 μg/mL) at 24 h → 5–10× IL-1β increase vs mtDNA alone or Bb alone, blocked by MCC950 (NLRP3) and DNase. Falsified if Bb alone drives full IL-1β (single-hit) or mtDNA does not amplify.],
  treatment: [Pacing justified by a specific molecular mechanism (prevents exercise mtDNA second-hit on primed microglia), not just by general energy conservation. No direct treatment implication beyond pacing.],
  limitation: [NLRP3 two-hit biology in Bb-exposed human microglia not specifically demonstrated; priming-by-Bb inferred from TLR upregulation studies, not from a direct Bb-primed + mtDNA-triggered experiment. Applies to tick-borne-triggered ME/CFS specifically; viral-triggered PEM may involve different priming signals. Certainty 0.30 — inferential assembly of separately-plausible components. Origin: brainstorm.],
)

#registry-entry(
  [Infection-Driven Kynurenine Shunt as a Route to Post-Lyme Fatigue],
  type: "S",
  certainty: "0.28",
  evidence: [IDO activation by sustained interferon-γ is established in Lyme disease; ME/CFS peripheral-serotonin depletion and the kynurenine trap are documented separately. The specific post-Lyme tryptophan → serotonin → fatigue chain has not been measured directly.],
  citations: [@Nawrocki2025LymeSymptomsCDC],
  mechanism: [Tick-borne infection → sustained IFN-γ → IDO activation → tryptophan diverted down kynurenine pathway → lower peripheral serotonin + reduced NAD⁺ substrate → persistent fatigue as the non-normalising post-Lyme domain.],
  chapter-ref: [ch07: tickborne kynurenine fatigue],
  prediction: [Post-Lyme patients with persistent fatigue show elevated kynurenine:tryptophan ratios and lower peripheral serotonin than recovered controls, magnitude tracking fatigue severity. Refuted if KYN:TRP and serotonin do not differ by fatigue status, or if any difference is fully explained by acute-phase inflammation.],
  treatment: [If validated, IDO-pathway or serotonin-substrate strategies become candidates — research-stage only, no current clinical action.],
  limitation: [Links two separately-documented mechanisms; never measured as a chain in post-Lyme cohorts. Contingent on @hyp:peripheral-serotonin-convergence remaining supported (cert 0.60). Origin: brainstorm.],
)

#registry-entry(
  [Non-Viral Tick-Borne Pathogens May Drive Comparable Glial Glycolytic Reprogramming],
  type: "S",
  certainty: "0.25",
  evidence: [Extension of the post-viral glial reprogramming hypothesis (@spec:post-viral-cns-reprogramming, cert 0.40) to non-viral tick-borne pathogens. Peripheral (non-glial) evidence: Borrelia trained-immunity glycolytic macrophage memory reversible in vivo @Barriales2021BorreliaMacrophage (cert 0.65); Bartonella HIF-1α stabilisation + host ATP depletion @Kempf2005BartonellaHIF1 (cert 0.70). Analogous to microglial trained-immunity reprogramming @Wendeln2018InnateImmuneMemoryBrain @Nirakis2025MetabolicRegulationMicroglial and viral glial reprogramming @Rodrigues2025ViralReprogrammingGlialMetabolism. NO glial-specific data for any tick-borne pathogen; 0 ME/CFS glial data.],
  citations: [@Barriales2021BorreliaMacrophage @Kempf2005BartonellaHIF1 @Wendeln2018InnateImmuneMemoryBrain @Nirakis2025MetabolicRegulationMicroglial @Rodrigues2025ViralReprogrammingGlialMetabolism],
  mechanism: [If Borrelia/Bartonella reprogram glia (as they reprogram peripheral macrophages) toward glycolysis with epigenetic stabilisation, the same self-sustaining cycle proposed for viruses (metabolic shift → epigenetic stabilisation → chronic neuroinflammation) would apply. Bartonella is neurotropic (encephalopathy-capable), making CNS access plausible.],
  chapter-ref: [ch08: tickborne glial reprogramming],
  prediction: [Microglia/astrocytes exposed to Borrelia or Bartonella antigens in vitro will show a sustained OXPHOS-to-glycolysis shift (elevated LDHA/lactate, downregulated mitochondrial transcripts, H3K4me1/H3K27ac at inflammatory loci) persisting after antigen removal, comparable to viral glial reprogramming. Falsified if bacterial/protozoal antigen exposure produces only transient metabolic change with no epigenetic stabilisation in glia.],
  treatment: [If confirmed, broadens "post-viral" to "post-infectious" glial reprogramming — tick-borne-triggered patients could benefit from metabolic/epigenetic-reversal strategies proposed for post-viral ME/CFS. Untested research direction.],
  limitation: [No glial glycolytic-reprogramming data for any tick-borne pathogen; all evidence from peripheral macrophages/monocytes or non-CNS tissue; no ME/CFS glial data. Whether these pathogens reprogram glia specifically (vs peripheral immune cells) untested. Compound speculation (cert 0.25): peripheral tick-borne hypothesis (0.35) × untested glial extrapolation.],
)

#registry-entry(
  [Metformin as a Hypothetical Trained-Immunity Metabolic Reset in Tick-Borne-Triggered ME/CFS — Research-Stage Only],
  type: "S",
  certainty: "0.22",
  evidence: [Corollary of @hyp:tickborne-glycolytic-reprogramming. Barriales2021 showed glycolysis inhibition in vivo reversed the Borrelia-trained macrophage phenotype (cert 0.65). Metformin opposes trained-immunity establishment via AMPK / reduced acetyl-CoA in other models (general immunometabolism literature, not tick-borne-specific). 0 human data in ME/CFS or any tick-borne fatigue population. Origin: brainstorm (idea 3.1).],
  citations: [@Barriales2021BorreliaMacrophage],
  mechanism: [Metformin → AMPK activation + reduced acetyl-CoA for histone acetylation → opposes trained-immunity glycolytic epigenetic imprint → may reverse the pathogen-imprinted glycolytic macrophage memory. Metabolic, NOT antimicrobial — distinct from and not in tension with the rejection of prolonged antimicrobials for "seronegative chronic Lyme" (@lim:seronegative-chronic-lyme-cfs).],
  chapter-ref: [ch07: metformin trained immunity reset],
  prediction: [Open-label pilot in tick-borne-triggered ME/CFS with documented, treated prior infection: metformin reduces ex-vivo monocyte glycolytic output (ECAR/OCR) and raises mitochondrial-transcript expression vs baseline. Falsified if monocyte metabolism and fatigue unchanged.],
  treatment: [Explicitly NOT a treatment recommendation. Harms: GI intolerance, B12 depletion, rare lactic acidosis (relative contraindication in renal impairment; ironic given lactate-centred rationale). No human efficacy/dosing data for this indication.],
  limitation: [Untested in ME/CFS or any tick-borne fatigue population. Whole chain (tick-borne glycolytic reprogramming → reversibility → metformin as the reversing agent in humans) unvalidated at every link. Certainty 0.22. Origin: brainstorm.],
)

#registry-entry(
  [Borrelia-Trained Immune Glycolysis May Reverse the Astrocyte–Neuron Lactate Gradient],
  type: "S",
  certainty: "0.20",
  evidence: [Bridges two separately-documented mechanisms: Borrelia-trained macrophage glycolytic lactate output @Barriales2021BorreliaMacrophage (cert 0.65) and ANLS gradient-dependence (@sec:astrocyte-energy-gate). Contrast with failed-Warburg immune deficit @Mandarano2020. Entirely inferential; 0 direct measurement. Origin: brainstorm (idea 1.1).],
  citations: [@Barriales2021BorreliaMacrophage @Mandarano2020],
  mechanism: [Chronically elevated systemic lactate from widely-distributed trained-immune cells reduces the serum-to-brain lactate gradient driving the astrocyte–neuron lactate shuttle, depriving neurons of a fuel supplying 30–50% of neuronal ATP — a mechanism distinct from and potentially compounding the failed-Warburg immune deficit.],
  chapter-ref: [ch08: tickborne anls gradient reversal],
  prediction: [In tick-borne-triggered ME/CFS: resting venous lactate and arterial-to-venous lactate difference elevated vs non-tick ME/CFS; CSF-to-serum lactate ratio reduced from ~0.6–0.8 toward ~0.4. Falsified if lactate gradients do not differ by tick-exposure history.],
  treatment: [Motivates ketone-body bypass (ANLS-independent neuronal fuel) as symptomatic strategy; no direct treatment implication established.],
  limitation: [No measurement of immune-derived lactate flux, ANLS function, or lactate gradients in tick-borne ME/CFS. Magnitude of trained-immune lactate contribution unquantified, may be negligible. Inherits the Borrelia direction-of-effect contradiction. Certainty 0.20 — below both parent mechanisms. Origin: brainstorm.],
)

#registry-entry(
  [Microglial Mitochondrial Dysfunction After Bb/Bartonella — Untested Deductive Hypothesis],
  type: "S",
  certainty: "0.20",
  evidence: [Upstream: Bb→TLR→microglial activation well-established (cert 0.70, 6+ studies). Bb drives M1 microglial polarisation with iNOS induction @Akinlusi2025MicrogliaPolar (cert 0.45). Bb induces oxidative stress in host cells, likely mitochondrial targets @Peacock2015LymeOxidative (cert 0.50). Bb OMVs induce ROS in neuronal cells @Wawrzeniak2020BbOMVOxidative (cert 0.50, ROS in dermal fibroblasts/keratinocytes). Downstream: ME/CFS exosomal mtDNA activates human microglia to produce IL-1β @Tsilioni2022exosome (cert 0.55). Middle: NO study has measured mitochondrial function in microglia after Bb/Bartonella exposure — the central link is a complete blank. Bartonella microglial infection: single 2001 feline study @Munana2001BartonellaMicroglia (cert 0.55).],
  citations: [@Myers2009Microglia @Parthasarathy2015MicrogliaTLR @Akinlusi2025MicrogliaPolar @Peacock2015LymeOxidative @Wawrzeniak2020BbOMVOxidative @Tsilioni2022exosome @Munana2001BartonellaMicroglia @Parthasarathy2022NonviableBb],
  mechanism: [Sustained TLR→NF-κB→iNOS→NO→mitochondrial complex inhibition→mtDNA release→NLRP3/cGAS-STING→sustained IL-1β. M1 polarisation→Warburg-like glycolytic shift→impaired mitophagy→accumulation of damaged mitochondrial mass. A deductive assembly: the upstream (Bb→microglia TLR) and downstream (mtDNA→microglia IL-1β) are separately documented; the middle (mitochondrial dysfunction in microglia after bacterial infection) has never been measured.],
  chapter-ref: [ch07: microglial mitochondrial borrelia],
  prediction: [Primary/iPSC-derived human microglia exposed to live and non-viable B. burgdorferi in vitro will show reduced mitochondrial respiration (Seahorse OCR), elevated ECAR, and detectable mtDNA release within 24 h. Falsified if microglia maintain normal respiration and produce no mtDNA after 48 h Bb exposure at any MOI. Experimentally straightforward, never done.],
  treatment: [Pure basic science — no clinical application at this stage. Identifies a specific, testable gap rather than an undifferentiated "neuroinflammation" construct.],
  limitation: [The central step (microglial mitochondrial dysfunction) is unmeasured — this is a gap-identification hypothesis, not a finding. M1 polarisation data from HMC3 cell line only; Bb oxidative stress studies in non-microglial cell types; Bartonella microglial data in feline cells only, 2001, no human replication; whole chain deductive not empirical. Certainty 0.20 reflects the weight of separately-documented components but zero direct evidence for the assembled mechanism.],
)

#registry-entry(
  [Babesia Hemolysis → Haptoglobin Depletion as a Fatigue-Amplifying Pathway],
  type: "S",
  certainty: "0.18",
  evidence: [_Babesia_ lyses erythrocytes releasing free hemoglobin; ME/CFS patients show post-exertional haptoglobin depletion tracking cognitive severity @Moezzi2025HaptoglobinME; Nrf2/HO-1 axis linked to fibromyalgia fatigue @Luo2025Nrf2HO1Fibro. Each link documented separately; the full Babesia→haptoglobin→fatigue chain never measured in a single cohort.],
  citations: [@Breitschwerdt2025BabesiaCFS @Moezzi2025HaptoglobinME @Luo2025Nrf2HO1Fibro @Locke2023BabesiaNeuro],
  mechanism: [Chronic _Babesia_ infection → persistent low-grade hemolysis → free hemoglobin/heme release → haptoglobin depletion + heme oxygenase-1 upregulation via Nrf2 → oxidative stress (Fenton chemistry from free iron) and impaired hemoglobin clearance → fatigue amplification. Converges with documented ME/CFS haptoglobin deficit rather than proposing a separate pathway.],
  chapter-ref: [ch07: babesia hemolysis haptoglobin],
  prediction: [In tick-exposed ME/CFS cohort, plasma haptoglobin inversely proportional to _Babesia_ parasitemia; free hemoglobin/heme proportional to parasitemia after controlling for confounders. Refuted if no relationship exists or if haptoglobin suppression is _Babesia_-independent.],
  treatment: [If validated, haptoglobin could serve as a monitoring marker during anti-_Babesia_ treatment — research-stage only, not a basis for current clinical decisions.],
  limitation: [Theoretical chain of individually-documented links, never measured as a pathway. Enrichment culture (BAPGM) specificity unresolved. No treatment data. Origin: brainstorm.],
)

#registry-entry(
  [Bartonella Endotheliotropism as a Non-Autoantibody Route to Microclots],
  type: "S",
  certainty: "0.15",
  evidence: [_Bartonella_ characteristically infects and dysregulates vascular endothelium (vasculitis-like presentations); ME/CFS/Long COVID microclot and endothelial-dysfunction pathology is developed elsewhere. Direct link to measured microclots untested.],
  citations: [@Bush2024Neurobartonelloses],
  mechanism: [Chronic endotheliotropic _Bartonella_ infection → direct endothelial injury/activation → microclot formation via a route distinct from autoantibody or fibrin(ogen)-conformation mechanisms.],
  chapter-ref: [ch07: bartonella endothelial microclot],
  prediction: [Post-tick-exposure ME/CFS patients with _Bartonella_ evidence show higher endothelial-activation markers (vWF, soluble thrombomodulin) and microclot burden than tick-exposed _Bartonella_-negative patients. Refuted if microclot burden is independent of _Bartonella_ status.],
  treatment: [If confirmed, identifies a subset in whom treating chronic infection addresses vascular pathology — not current grounds for antibiotics.],
  limitation: [Endotheliotropism established; link to measured microclots is untested extrapolation. Origin: brainstorm.],
)

#registry-entry(
  [What Would Falsify the Babesia–ME/CFS Hypothesis?],
  type: "OQ",
  certainty: "n/a",
  evidence: [Breitschwerdt 2025: 24% Babesia PCR in n=50 chronic fatigue patients, no controls, COI. 95% CI 12-36% overlaps background seroprevalence in endemic areas. MacDonald 1996: 0/47 CFS Babesia-seropositive vs 2/47 controls — directionally neutral, only controlled comparison. Babesia detection in immunocompetent adults is typically transient. No controlled Babesia serosurvey exists for ME/CFS.],
  citations: [@Breitschwerdt2025BabesiaCFS @MacDonald1996CFSBabesia @Locke2023BabesiaNeuro @Moezzi2025HaptoglobinME],
  mechanism: [Epistemic framing — not a mechanistic hypothesis. Identifies conditions that would reject the null (Babesia prevalence ≤ background) and methodological concerns (enrichment culture contamination risk, Berkson's referral bias, no independent positive replication, BAPGM long culture incubation). Flags trigger-vs-driver distinction: even if Babesia acts only as an acute trigger that clears, a persistent-driver framework would miss it.],
  chapter-ref: [ch07: babesia falsification],
  prediction: [Null rejected if: (a) Babesia PCR+serology is materially higher in ME/CFS vs matched endemic controls at a statistically significant level, (b) evidence of active infection associated with current symptoms, whether via persistent parasitemia or acute-trigger-then-clear with post-infectious sequelae, (c) haptoglobin/LDH tracks PCR positivity, all from an independent lab. Specific numerical thresholds are illustrative, not prescriptive. Proposed highest-yield studies: (1) controlled serosurvey, (2) independent Breitschwerdt replication, (3) Hp/LDH screening study.],
  treatment: [None — epistemic framing; treatment premature pending rejection of null.],
  limitation: [Open question, not a positive claim. Origin: brainstorm critical categories 10–12.],
)

#registry-entry(
  [Babesia–ME/CFS Research Priorities],
  type: "OQ",
  certainty: "n/a",
  evidence: [Five research proposals drawn from brainstorm: (1) three-arm serosurvey with 2-day CPET, (2) Hp/LDH ratio as screening triage, (3) ODE model of parasitemia→haptoglobin→PEM, (4) RBC deformability as functional biomarker, (5) diagnostic equity program. Each anchored in the Babesia evidence base from this cycle.],
  citations: [@Breitschwerdt2025BabesiaCFS @MacDonald1996CFSBabesia @Moezzi2025HaptoglobinME @Luo2025Nrf2HO1Fibro],
  mechanism: [Aggregate research proposals, not a mechanistic hypothesis. Covers serosurvey design (n at least 200 per arm, IFA+PCR+hemolytic panel+CPET), Hp/LDH screening (threshold ratio below 0.5, sensitivity/specificity validation pending), ODE modeling (parasitemia → haptoglobin depletion → exercise threshold), RBC deformability (ektacytometry, elongation index at 3 Pa), and diagnostic equity (subsidized PCR in endemic areas).],
  chapter-ref: [ch07: babesia research priorities],
  prediction: [Research proposals, not predictions — the proposals themselves are the output. The predicted finding from the serosurvey: Babesia detection rate higher in ME/CFS than matched controls, seropositive predicts greater day-2 VO2max decline. Hp/LDH: sensitivity above 80% for Babesia PCR at ratio below 0.5, reducing PCR testing by roughly 4-fold. ODE: predicts parasitemia at 0.3% infected RBCs depletes haptoglobin below 50 mg/dL within 6–8 weeks.],
  treatment: [None — none of the proposed tests or models should be ordered outside research protocols until validated.],
  limitation: [Aggregate proposals, each with its own limitations (small-n prediction for serosurvey, unvalidated Hp/LDH thresholds, ODE calibration against scarce parasitemia kinetic data, no RBC deformability data in ME/CFS, diagnostic equity contingent on funding). Origin: brainstorm.],
)

#registry-entry(
  [Research Programme to Test Tick-Borne Glycolytic Reprogramming in ME/CFS],
  type: "OQ",
  certainty: "n/a",
  evidence: [Consolidated research agenda for @hyp:tickborne-glycolytic-reprogramming. Motivated by the 0-direct-evidence gap and the Dong @Dong2026BorreliaGlycolysis / Kerstholt @Kerstholt2022BorreliaLactate direction contradiction and the Fitzgerald @Fitzgerald2021PTLDSMetabolic serum null. Origin: brainstorm (ideas 2.1, 2.2, 2.3, 6.1, 9.1).],
  citations: [@Dong2026BorreliaGlycolysis @Kerstholt2022BorreliaLactate @Fitzgerald2021PTLDSMetabolic @Barriales2021BorreliaMacrophage],
  mechanism: [Not a mechanistic claim — a testability agenda. Four priority studies: (1) ex-vivo monocyte Seahorse ECAR/OCR (tick-borne vs viral ME/CFS vs controls); (2) systematic replication resolving Borrelia glycolysis direction across cell substrates/timepoints; (3) CSF (not serum) metabolomics in PTLDS; (4) post-hoc stratification of existing ME/CFS trial datasets by documented tick-exposure history.],
  chapter-ref: [ch07: tickborne glycolytic research programme],
  prediction: [Study (1) predicts tick-borne-triggered ME/CFS monocytes show elevated ECAR/OCR vs viral-triggered and controls (AUC ≥0.75 for tick-exposure stratification). Study (2) resolves whether the contradiction is cell-type or timepoint driven. Each is individually falsifiable.],
  treatment: [No treatment implication — determines whether the hypothesis is worth pursuing therapeutically.],
  limitation: [An agenda, not a finding. Respects @lim:seronegative-chronic-lyme-cfs (documented exposure, not "chronic Lyme" labels). Origin: brainstorm.],
)

#registry-entry(
  [Is ME/CFS CoQ10 Deficiency Driven by Oxidative Consumption or Impaired Biosynthesis?],
  type: "OQ",
  certainty: "n/a",
  evidence: [Documented low CoQ10 @Maes2009CoQ10 consistent with two untested-against-each-other mechanisms: oxidative consumption (@spec:coq10-infection-consumption) vs impaired biosynthesis @Laredj2014CoQBiosynth (COQ genetics, biogenesis downregulation, statins, malabsorption).],
  citations: [@Maes2009CoQ10 @Laredj2014CoQBiosynth @Morris2013CoQ10],
  mechanism: [Not a mechanistic claim — a discrimination agenda. Consumption-dominant predicts high CoQ10 turnover + elevated oxidative markers + intact biosynthesis-gene expression; biosynthesis-dominant predicts low turnover + reduced biosynthetic-gene expression.],
  chapter-ref: [ch07: coq10 consumption vs biosynthesis],
  prediction: [A single cohort measuring CoQ10 turnover kinetics, pathogen-activity biomarkers, COQ-biosynthesis gene expression, and tissue CoQ10 would separate the two mechanisms. Each arm is individually falsifiable.],
  treatment: [Determines whether priority is infection/oxidative control vs straightforward repletion for a CoQ10-deficient patient.],
  limitation: [No study has co-measured turnover, pathogen burden, and biosynthesis genes in ME/CFS. All existing CoQ10 data are static plasma levels.],
)


=== Herpesvirus and LSR Cascade

#registry-entry(
  [Herpesvirus Antibody Titres Reflect Long-Lived Plasma Cell Output, Not Necessarily Ongoing Viral Replication],
  type: "H",
  certainty: "0.85",
  evidence: [Amanna 2007 (NEJM) — antiviral antibody half-lives >200 yr for EBV, >50 yr for VZV, n=45 followed ≤26 yr. Hammarlund 2017 (Nat Commun) — LLPCs survive >10 yr without memory B cells in primate model. Robinson 2022 (Sci Immunol) — LLPCs accrue in bone marrow at ~1 cell/hr, number determined by initial GC response duration. Slifka 2019 (Front Immunol) — multivalent antigen arrays (viral capsids) preferentially drive LLPC generation. Chackerian 2020 (Viruses) — antigen structure, not persistence, determines antibody longevity.],
  citations: [@Amanna2007Duration @Hammarlund2017PlasmaCell @Robinson2022LLPC @Slifka2019Multivalency @Chackerian2020LLPC],
  mechanism: [LLPCs migrate to bone marrow survival niches after primary infection, constitutively secrete antibody for host lifetime without antigen re-exposure, cell division, or memory B cell replenishment. Herpesviruses present multivalent repetitive epitopes (capsids, envelope glycoproteins) that are structurally optimised for LLPC induction. Antibody titre reflects initial infection magnitude + individual niche capacity, not current viral activity.],
  chapter-ref: [ch07: herpesvirus antibody persistence, herpesvirus antibody interpretation],
  prediction: [ME/CFS patients with elevated structural antigen IgG (VCA, EBNA-1, gB) but normal viral DNA loads will not differ in clinical outcomes from those receiving antiviral therapy vs placebo. Falsified if structural-antigen IgG elevation without viral DNA predicts antiviral response.],
  treatment: [Clinicians should not diagnose "chronic EBV" or initiate antiviral therapy based on structural antigen IgG titres alone. Antiviral treatment decisions require viral DNA (qPCR), viral mRNA, or early lytic gene product antibody data.],
  limitation: [The LLPC biology is settled in healthy populations; the formal demonstration that the same principles hold in ME/CFS immune context has not been done (no ME/CFS bone marrow LLPC study exists). Structural antigen IgG CAN be boosted by clinical reactivation (e.g., VZV IgG rises during shingles), so the LLPC baseline is a dominant but not exclusive contributor. The prediction that structural-antigen IgG does not predict antiviral response conflicts with the two controlled positive antiviral trials (Lerner 2007, Montoya 2013) that enrolled on elevated titres and found clinical benefit.],
)


#registry-entry(
  [Lytic-to-Structural IgG Ratio (LSR) as a Diagnostic Biomarker in ME/CFS — Distinguishing LLPC Output from Reactivation-Driven Antibody],
  type: "H",
  certainty: "0.45",
  evidence: [Cliff 2019 — structural-antigen seroprevalence identical (null, but measured seroprevalence not titre — cannot detect titre differences in universally seropositive population). Palomo 2026 — lytic-antigen dUTPase IgG elevated (positive, but findings from a single research group without independent replication). Loebel 2017 — EBNA-6 repeat region enhanced, overall pattern "quite similar" (mixed). Apostolou 2022 — salivary lytic-cycle antigen antibodies elevated. This contradictory pattern could be explained by the LSR: structural antibodies normal, lytic antibodies elevated — but the pattern is inferred from incompatible methodologies across studies and has never been directly measured.],
  citations: [@Cliff2019Cellular @Blomberg2019HerpesvirusNull @Palomo2026dUTPase @Loebel2017EBVsero @Apostolou2022Saliva @Lanz2022Nature],
  mechanism: [In normal LLPC biology, the ratio of lytic-cycle to structural-antigen IgG is stable (same LLPC pool produces both). Abortive lytic reactivation (→ preferential boosting of lytic antigens via short-lived plasmablasts) OR epitope-specific autoimmune drift (→ selective elevation of cross-reactive lytic epitopes) would elevate the LSR. Each patient serves as their own internal control, eliminating confounding by infection timing, age, and initial antigen load.],
  chapter-ref: [ch07: lytic structural igg ratio],
  prediction: [The LSR (anti-BZLF1 IgG / anti-VCA-p18 IgG ratio) will discriminate ME/CFS from healthy seropositive controls (AUC ≥ 0.75) and correlate with symptom severity (r ≥ 0.3 with fatigue score). IgG avidity will be uniformly high in ME/CFS (avidity index >0.6, consistent with remote past infection). Falsified if: structural-antigen IgG is equally elevated, OR low-avidity IgG ($<$0.4) is detected (indicating recent reactivation rather than LLPC maintenance).],
  treatment: [If validated, the LSR would provide a low-cost blood test using existing clinical serology assays to stratify ME/CFS patients by mechanism (LLPC-driven vs reactivation-driven). Patients with elevated LSR may benefit from different treatment approaches (B cell-targeted vs antiviral) — but this is presently a research question, not a clinical recommendation.],
  limitation: [No study has simultaneously measured lytic-cycle and structural-antigen IgG in the same ME/CFS cohort and computed the LSR. The LSR hypothesis is inferred from comparing results across studies with different populations, methods, and antigens (positive studies used ELISA with specific antigens; Cliff measured seroprevalence, which cannot detect titre differences in universally seropositive populations). The dUTPase findings the hypothesis depends on derive from a single research group without independent replication. There is no mechanistic reason grounded in herpesvirus biology why abortive lytic replication would selectively boost lytic-cycle antibodies without also boosting structural-antigen antibodies — the lytic cascade is sequential, not selective. The MS cross-reactivity precedent (one epitope in one disease) is structurally different from the LSR (a quantitative ratio of broad antigen-class IgG). Origin: brainstorm.],
)


#registry-entry(
  [B Cell Dysregulation as Driver of Elevated Herpesvirus Antibodies in ME/CFS — Not Viral Reactivation],
  type: "S",
  certainty: "0.30",
  evidence: [Sun 2024 (J Transl Med) — scRNA-seq, n=4 ME/CFS, n=4 controls. Memory B cells in ME/CFS show unique subtype early in pseudotime, increased trajectory toward plasma cell differentiation. Single study, very small n.],
  citations: [@Sun2024Immunometabolic],
  mechanism: [Intrinsic B cell dysregulation → biased memory B cell → plasma cell differentiation → elevated antibody output across all specificities, including herpesvirus antigens, without requiring antigenic stimulation. Would explain elevated antibody in the absence of viral DNA.],
  chapter-ref: [ch07: antibody elevation bcell dysregulation],
  prediction: [ME/CFS patients with elevated herpesvirus antibodies will show increased frequencies of antibody-secreting cells (CD19^low CD27^high CD38^high) in peripheral blood AND increased plasma cell numbers in bone marrow aspirates, independent of viral DNA load. Falsified if antibody elevation always correlates with detectable viral DNA.],
  treatment: [If confirmed: antiviral therapy would not be expected to reduce antibody titres; B cell-targeted interventions (rituximab, BAFF inhibitors) might be more appropriate. Currently entirely speculative — no clinical implication.],
  limitation: [n=4 patients, single study, single time point, peripheral blood only. No direct measurement of herpesvirus antibody titres in the same patients. The increased plasma cell differentiation trajectory is an inference from pseudotime analysis, not a direct observation. Entirely unvalidated. Origin: brainstorm.],
)


#registry-entry(
  [LSR Cascade Interpretation — What Valacyclovir Response Reveals About the Mechanism Driving Elevated LSR],
  type: "S",
  certainty: "0.15",
  evidence: [Derived from mechanistic cascade tracing. Valacyclovir inhibits EBV DNA polymerase (BALF5) at the DNA replication step — it does not block immediate-early or early gene expression (BZLF1, dUTPase). The following interpretive schema is inferred: (a) if valacyclovir works AND LSR declines → abortive lytic reactivation (ALR) is likely the driver, though poly-herpesvirus antiviral activity limits specificity; (b) if valacyclovir fails AND LSR unchanged → LLPC autoimmune drift is the more likely mechanism, though early-gene-only ALR cannot be excluded (if the lytic cascade stalls before DNA replication, valacyclovir has no target). If both valacyclovir and valganciclovir fail with LSR confirmed elevated, this is the strongest available negative evidence that LSR is NOT driven by ongoing viral replication. No clean discriminating probe exists — all intercepting drugs have ≥3 targets. Origin: brainstorm — cascade trace.],
  citations: [],
  mechanism: [Two candidate mechanisms for elevated LSR: (1) ALR → EBV immediate-early/early gene expression → BZLF1/dUTPase produced → SLPB response adds lytic IgG on top of LLPC baseline → LSR rises. Valacyclovir blocks DNA replication (step 3 of 5 in the cascade) — effective if ALR proceeds through DNA replication, irrelevant if ALR stalls at early gene expression. (2) B cell dysregulation → selective LLPC clonal expansion producing cross-reactive lytic-epitope antibodies → LSR rises. Valacyclovir has no target in this cascade — LLPCs do not require viral replication to maintain antibody output.],
  chapter-ref: [ch07: lsr valacyclovir response; ch30: lsr cascade interpretation],
  prediction: [In a cohort of ME/CFS patients with elevated LSR, pre- and post-valacyclovir (6 months, therapeutic dose) LSR measurements will show: (a) LSR decline only in clinical responders; (b) no decline in non-responders. Falsified if LSR declines in non-responders (ALR continues despite absent clinical benefit), OR if LSR unchanged in responders (valacyclovir benefit independent of ALR suppression).],
  treatment: [Research-stage only — no clinical recommendation. Elevated LSR that does not budge after valacyclovir would indicate LLPC-driven antibody abnormality, directing treatment toward B cell-targeted research rather than antiviral escalation. This could spare patients from years of empirically escalated antiviral therapy.],
  limitation: [Cascade model is a linear simplification. Valacyclovir specificity is low (active against VZV, HSV in addition to EBV — clinical improvement could reflect non-EBV suppression). Cannot distinguish LLPC drift from early-gene-only ALR. The valacyclovir substudy is proposed as a nested cohort within a larger LSR validation study that has not yet been performed — the prediction's validity depends on the LSR demonstrating AUC ≥0.75 first. Origin: brainstorm — cascade trace.],
)


#registry-entry(
  [LSR Diagnostic Biomarker Validation — Prospective Cross-Sectional and Antiviral-Response Study],
  type: "H",
  certainty: "n/a",
  evidence: [Proposed study (@sec:lsr-biomarker-validation-study). The LSR concept has never been measured in any disease — this is a first-ever study of the lytic-to-structural herpesvirus IgG ratio. Existing evidence: Palomo 2026 (dUTPase elevated, single-group), Cliff 2019 (structural seroprevalence null), Blomberg 2019 (multiplex null), Apostolou 2022 (salivary), Loebel 2017 (EBNA-6 repeat enhanced), Maes 2025 (partial independent dUTPase replication in RRMS). None computed LSR. Origin: brainstorm — proposal derived from @hyp:lytic-structural-igg-ratio.],
  citations: [@Palomo2026dUTPase @Cliff2019Cellular @Blomberg2019HerpesvirusNull @Apostolou2022Saliva @Loebel2017EBVsero @Maes2025RRMSdUTPase],
  mechanism: [Two-phase design. Phase 1: cross-sectional LSR (anti-BZLF1 ÷ anti-VCA-p18) measurement in n=200 (100 ME/CFS + 100 controls) to establish the normal range and test discriminant validity. Phase 2: nested valacyclovir substudy (n=40, 6 months) measuring pre- and post-LSR to distinguish ALR-driven (LSR declines) from LLPC-driven (LSR stable) elevation. Avidity index measurement (urea-wash ELISA) to exclude recent primary infection confound. Poly-herpesvirus LSR (HHV-6 anti-U45 ÷ anti-gB) to test EBV-specificity.],
  chapter-ref: [ch38: lsr diagnostic biomarker; ch39: lsr biomarker validation study],
  prediction: [Primary: LSR AUC $≥$0.75 for ME/CFS vs healthy controls, while VCA-p18 IgG alone achieves AUC $<$0.55. IgG avidity uniformly $>$0.6 in ME/CFS (excludes recent primary infection). Valacyclovir-responsive patients show declining LSR; non-responders show stable LSR. Falsified if LSR AUC $<$0.60, OR structural-antigen IgG shows equivalent discrimination, OR low-avidity IgG ($<$0.4) detected in $>$10\% of ME/CFS (would refute LLPC model).],
  treatment: [If validated: first serological biomarker to stratify ME/CFS patients by mechanism (ALR vs LLPC), directing antiviral therapy to the ALR group. Deployable on existing clinical ELISA platforms within 2–3 years. Null result would close the LSR hypothesis definitively and redirect herpesvirus research toward whole-proteome serology.],
   limitation: [Custom anti-dUTPase ELISA required — not commercially available. Anti-BZLF1/anti-VCA-p18 ELISA kits validated for qualitative (seropositive/seronegative) detection, not quantitative ratio computation — reference range unknown. Valacyclovir substudy is observational (confounding by indication). Poly-herpesvirus LSR profiling requires custom antigens for each virus's dUTPase — multiplies assay development bottleneck. IgG avidity assays not commercially standardized. Phase 2 (n=40) underpowered if valacyclovir response rate $<$50\%. Origin: brainstorm — proposal.],
)


#registry-entry(
  [Antigen-Specific (Not Global) Herpesvirus Antibody Elevation in ME/CFS — Lytic-Cycle and Cross-Reactive Epitopes Selectively Elevated],
  type: "OQ",
  certainty: "n/a",
  evidence: [Cliff 2019 (Front Immunol, n=251) — no seroprevalence difference for 6 herpesviruses. Blomberg 2019 (Front Immunol) — overall HHV-1-7 IgG no significant difference. Palomo 2026 (J Med Virol, n=40+16) — elevated dUTPase IgG. Loebel 2017 (PLOS ONE, n=92+50) — EBNA-6 repeat region enhanced, overall pattern "quite similar". Apostolou 2022 (Front Immunol, n=95+110) — salivary EBNA-1 elevated.],
  citations: [@Cliff2019Cellular @Blomberg2019HerpesvirusNull @Palomo2026dUTPase @Loebel2017EBVsero @Apostolou2022Saliva],
  mechanism: [Total IgG against structural antigens (VCA, EBNA-1, gB) is driven by LLPCs and may not differ between ME/CFS and controls. Lytic-cycle antigens (dUTPase, EA-D) and latency proteins with human homology (EBNA-6 repeat) may be selectively elevated because they reflect: (a) recent abortive lytic events not captured by structural-antigen serology; (b) epitope spreading targeting cross-reactive epitopes; or (c) altered B cell regulation amplifying responses to specific epitopes.],
  chapter-ref: [ch07: herpesvirus antibody universal],
  prediction: [A study measuring IgG against structural antigens AND lytic-cycle antigens AND latency-protein repeat regions simultaneously in the same ME/CFS cohort should find elevations only in lytic and repeat-region categories, not in structural antigen IgG. Falsified if structural antigen IgG is equally elevated.],
  treatment: [If confirmed, clinical herpesvirus serology panels should include dUTPase and EA-D IgG, not just VCA/EBNA-1. Total IgG panels — the most commonly used clinical test — are uninformative for ME/CFS.],
  limitation: [No study has simultaneously measured all three categories of herpesvirus antibodies in the same ME/CFS cohort. The antigen-specificity model is inferred from comparing results across studies with different populations, methods, and antigens. The Palomo and Cliff cohorts are from different countries.],
)



#registry-entry(
  [LSR–Valacyclovir Discordant Pattern — What if LSR is Elevated but Valacyclovir Succeeds Clinically?],
  type: "OQ",
  certainty: "n/a",
  evidence: [A third possible pattern beyond the positive-response and null-response scenarios: valacyclovir produces clinical improvement but LSR stays elevated. This would suggest viral reactivation is rate-limiting for symptoms, while the LSR is maintained by a mechanism valacyclovir does not touch — either (a) LLPCs produce the lytic IgG baseline while SLPB-derived lytic IgG from ALR events is too small a fraction to move the ratio, or (b) clinical benefit comes from suppressing a different herpesvirus (VZV, HSV) contributing to symptoms without affecting EBV LSR. Neither possibility can be resolved without a prospective study. Origin: brainstorm — cascade trace.],
  citations: [],
  mechanism: [Two non-exclusive explanations: (1) the LLPC lytic IgG pool is the dominant component of the LSR signal, and valacyclovir-suppressible SLPB-derived lytic IgG is a negligible fraction — valacyclovir reduces symptoms by blocking ALR without moving the antibody ratio. (2) The clinical benefit comes from suppressing a co-infecting herpesvirus whose antibodies are not captured by the EBV-specific LSR — if VZV or HSV reactivation is contributing to symptoms, valacyclovir resolves that without affecting EBV LSR.],
  chapter-ref: [ch07: lsr valacyclovir discordant],
  prediction: [A prospective study measuring LSR, viral DNA (qPCR for each herpesvirus), and clinical symptoms simultaneously before/during/after valacyclovir will resolve this question by showing whether LSR change correlates with (a) EBV DNA suppression, (b) clinical improvement, (c) both, or (d) neither.],
  treatment: [N/A — methodological research question. Resolution requires data that does not yet exist.],
  limitation: [Pure methodological observation — no empirical data, no predictive claim. The discordant pattern may not occur if LSR and clinical response are tightly coupled, making this a hypothetical edge case. Origin: brainstorm — cascade trace.],
)

#registry-entry(
  [LSR as Trait-vs-State Discriminator Using the MZ Twin Discordant Design],
  type: "S",
  certainty: "0.25",
  evidence: [The LSR (anti-BZLF1 IgG / anti-VCA-p18 IgG) hypothesis proposes that elevated lytic-to-structural herpesvirus IgG ratio reflects acquired antibody dysregulation — abortive lytic reactivation (ALR) selectively boosting lytic-cycle antibodies via short-lived plasmablasts while long-lived plasma cells maintain stable structural-antigen output @hyp:lytic-structural-igg-ratio. The twin design directly tests the mechanism: if LSR is elevated in the affected twin but NOT in the unaffected co-twin, ALR-driven acquired dysregulation is supported; if LSR is elevated in BOTH twins vs population controls, LSR reflects a genetic (or shared-early-environment) predisposition to herpesvirus antibody production — a trait, not a state marker. Koelle 2002 found no HSV antibody difference between discordant twins (n=22 pairs) @Koelle2002TwinsHSV — consistent with either scenario. The LSR has never been measured in any twin study or in any disease. Zero data exist on the heritability of herpesvirus antibody ratios.],
  citations: [@hyp:lytic-structural-igg-ratio @Koelle2002TwinsHSV @Palomo2026dUTPase @Cliff2019Cellular],
  mechanism: [Two competing models, both testable by within-pair comparison: (1) State model (acquired): ALR → SLPB-derived lytic IgG added onto LLPC baseline → LSR elevated only in affected twin. This validates LSR as an illness-specific biomarker and supports antiviral or B-cell-targeted treatment approaches for LSR-high patients. (2) Trait model (genetic/shared-environmental): shared immune response genotype or shared early-life EBV infection → both twins have elevated LSR vs population controls but not different from each other. LSR remains useful as a diagnostic biomarker (if elevated in both twins vs population) but loses its proposed mechanism (ALR-driven acquired dysregulation). Consistent with Koelle 2002 null. Intermediate pattern (elevated in both twins but higher in affected) would suggest genetic predisposition with illness-related amplification — consistent with the two-hit model.],
  chapter-ref: [ch46: mz twin discordant striatal microbiome lsr, ch07: lytic structural igg ratio],
  prediction: [In MZ twin pairs discordant for ME/CFS, within-pair LSR difference (affected -- unaffected) will be significantly > 0 (one-sample paired t-test, P ≤ 0.05), with LSR in affected twins elevated vs healthy reference pairs and LSR in unaffected twins normal. Falsified if: LSR elevated in both twins equally → trait model confirmed — LSR reflects genetic/shared-environment predisposition. Complementary falsification: LSR normal in affected twin → LSR hypothesis refuted outright. Both outcomes are informative and advance the LSR biomarker programme.],
  treatment: [If state model confirmed: LSR becomes a validated illness-specific biomarker, supporting ALR-mechanism interpretation and accelerating the LSR biomarker validation study (@sec:lsr-biomarker-validation-study). Antiviral/B-cell-targeted trials enriched for LSR-high patients. If trait model confirmed: LSR still potentially useful as diagnostic biomarker but targets a different mechanism (genetic predisposition, not acquired dysregulation — may not respond to antivirals). No current clinical recommendation.],
  limitation: [LSR has never been measured in any population — the normal range and test-retest reliability are unknown. Absence of within-pair LSR difference could reflect true genetic trait OR insufficient assay sensitivity to detect a state marker — the null is ambiguous. MZ twins share early environment (same household, same EBV exposure timing) in addition to genes — the design cannot distinguish genetic from shared-early-environmental trait. Koelle 2002 null used total HSV antibody titres, not an LSR-type ratio. Entirely untested. Origin: proposal-derived.],
)


=== Herpesvirus and HSV

#registry-entry(
  [HSV Outbreak Frequency × PEM Timing as Endogenous Viral Reactivation Probe],
  type: "S",
  certainty: "0.20",
  evidence: [The mechanistic rationale is coherent but every ME/CFS-specific link is untested. Stress→HSV reactivation link is established in general population (Chida 2009 meta-analysis, 11 prospective studies, r=0.083, p=0.005 @Chida2009StressHSVMetaAnalysis). PEM→catecholamine pathway is established in ME/CFS CPET literature. However: no prospective study has tracked HSV outbreak timing relative to PEM episodes; the Treg→CD8+ T cell→HSV latency mechanism demonstrated in mice @Yu2018TregHSVLlatency has not been tested in human ME/CFS; the null serology literature (Buchwald 1996 n=548 @Buchwald1996ViralSerologies; Koelle 2002 22 twin pairs @Koelle2002TwinsHSV) found no HSV-1/2 serological differences between ME/CFS and controls. HSV recurrence epidemiology from general-population review: 67% global prevalence, 20–40% of seropositive individuals experience recurrent outbreaks @Gopinath2023HerpesLabialis. Origin: brainstorm.],
  citations: [@Chida2009StressHSVMetaAnalysis @Yu2018TregHSVLlatency @Buchwald1996ViralSerologies @Koelle2002TwinsHSV @Gopinath2023HerpesLabialis],
  mechanism: [PEM → sympathetic activation → catecholamine surge → Treg-mediated CD8+ T cell suppression at trigeminal ganglion → HSV exit from latency → visible cold sore. This is a patient-reportable, timestamped viral reactivation event. The probe is falsifiable, inexpensive, and patient-owned — no laboratory testing required.],
  chapter-ref: [ch08: hsv pem probe],
  prediction: [Prospective diary study (n $≥$ 100 HSV-1 seropositive ME/CFS, 12 months, powered for 15--25 events) with home lesion-swab PCR + photo documentation: $≥$60% of HSV-PCR-confirmed outbreaks within 24--96h post-exertion exceeding anaerobic threshold, vs chance-expectation given observation-day proportions; per-patient outbreak frequency higher during PEM-heavy vs PEM-light months; stress (PSS), sleep, menstrual cycle, UV exposure do not independently predict outbreak timing after controlling for exertion; bidirectional lag analysis excludes HSV prodrome→PEM-like flare. Falsified if PCR-confirmed outbreaks equally distributed around exertion vs non-exertion windows, OR if stress/sleep/UV predict better than exertion.],
  treatment: [N/A — research tool, not a clinical recommendation. If validated, HSV outbreak diaries become a secondary endpoint for antiviral trials and a patient-owned biomarker. If HSV outbreaks cluster with PEM but valacyclovir suppression does not reduce PEM severity, HSV reactivation is a downstream consequence, not a driver — still useful as probe, not as therapeutic target.],
  limitation: [Every ME/CFS-specific link is untested. HSV recurrence is multifactorial (UV, fever, menstruation, sleep disruption, stress independent of PEM) — these confounds must be controlled in any prospective design. Patient-reported diaries have recall bias and variable sensitivity for detecting prodromal/minor outbreaks. Photographic documentation recommended for validation. The 20–40% recurrence rate means only a minority of HSV-seropositive patients would contribute data. Origin: brainstorm.],
)

#registry-entry(
  [Treg-Mediated CD8+ T Cell Suppression at HSV Latency Sites Explains PEM-Associated HSV Outbreaks],
  type: "OQ",
  certainty: "n/a",
  evidence: [Synthesis of two independent lines never connected in the same study: (1) Treg→CD8+ T cell→HSV latency maintenance axis in mice (Yu 2018, cert 0.30 discounted @Yu2018TregHSVLlatency); (2) Treg-herpesvirus-immune hyperactivation model of ME/CFS (Sepúlveda 2019, cert 0.50, computational only @Sepulveda2019TregMEHypothesis). Neither has been tested in human ME/CFS nor in the context of PEM-provoked HSV reactivation. Origin: brainstorm.],
  citations: [@Yu2018TregHSVLlatency @Sepulveda2019TregMEHypothesis],
  mechanism: [PEM-associated catecholamine surges lower the Treg-dependent threshold for HSV reactivation at trigeminal ganglia. ME/CFS patients with elevated Treg percentages experience more frequent/more PEM-coupled HSV outbreaks because Treg-mediated CD8+ T cell suppression at latency sites is more easily triggered by stress signals.],
  chapter-ref: [],
  prediction: [In HSV-1 seropositive ME/CFS with prospective diary: Treg% correlates with monthly HSV outbreak frequency (r ≥ 0.3); PEM-associated outbreaks show higher pre-outbreak Treg% than PEM-independent outbreaks; CD8+ T cell frequency and HSV-specific CD8+ T cell functionality lower in patients with more frequent outbreaks. Falsified if no Treg–outbreak correlation, OR if CD8+ T cell function does not differ by outbreak frequency.],
  treatment: [N/A — mechanistic hypothesis with zero clinical implication.],
  limitation: [Mouse-to-human translation gap for Treg–CD8–HSV mechanism. Sepúlveda 2019 is a computational model, not an observational finding — no empirical evidence that Treg-mediated immune hyperactivation occurs in ME/CFS. The Treg phenotype in ME/CFS is itself contested (some studies find elevation, others find normal percentages). Origin: brainstorm.],
)

#registry-entry(
  [HSV-Specific Analog of the LSR — Anti-ICP0 ÷ Anti-gB Ratio as Cross-Viral Validation],
  type: "OQ",
  certainty: "n/a",
  evidence: [The EBV LSR (anti-BZLF1 ÷ anti-VCA-p18) has never been measured in any disease. The proposed HSV analog (anti-ICP0 ÷ anti-gB) would be a replication construct — same logic (lytic-cycle ÷ structural), different virus, different latency compartment (neuronal instead of B cell). But ICP0 is not a clinical antigen: anti-ICP0 serology has never been developed for human diagnostic use, its immunogenicity profile in natural infection is unknown, and there is zero literature on ICP0-specific antibody responses in any disease context. Origin: brainstorm.],
  citations: [],
  mechanism: [Compare immediate-early (ICP0, expressed at reactivation initiation) to late structural (gB, LLPC-maintained) HSV-1/2 IgG. If HSV reactivation follows abortive lytic replication pattern: ICP0-to-structural IgG ratio elevated in patients with frequent PEM-associated outbreaks because ICP0 expression occurs even when reactivation is abortive. If HSV-LSR elevated but EBV-LSR normal → reactivation is compartmentalized (trigeminal ganglion-specific), not systemic B cell-driven.],
  chapter-ref: [],
  prediction: [Not currently testable — requires anti-ICP0 IgG ELISA development and validation. If developed: HSV-LSR should correlate with patient-reported HSV outbreak frequency and decline during valacyclovir suppression. Falsified if HSV-LSR is normal in patients with frequent PEM-associated outbreaks.],
  treatment: [N/A — assay does not exist. Years from implementation.],
  limitation: [Anti-ICP0 serology does not exist. No commercial or research-grade ICP0 ELISA exists. The entire construct is model-dependent — it assumes HSV follows the same ALR immunogenicity pattern as EBV, which has not been demonstrated. The pragmatic near-term alternative is the patient-reported outbreak diary — no assay development required. Origin: brainstorm.],
)

#registry-entry(
  [LSR–HSV Outbreak Pattern Intersection — Do Elevated EBV-LSR Patients Show Different HSV Recurrence Profiles?],
  type: "OQ",
  certainty: "n/a",
  evidence: [Requires two prior validations that do not yet exist: (1) LSR discriminates ME/CFS from controls (foundational LSR validation study, never performed), and (2) HSV outbreaks cluster with PEM (HSV probe framework, never tested). Only if both are affirmative does the cross-viral intersection become testable. Origin: brainstorm.],
  citations: [],
  mechanism: [If elevated EBV-LSR reflects systemic immune dysregulation affecting multiple herpesvirus reservoirs (not just EBV B cell latency), patients with elevated LSR should show: (a) higher HSV outbreak frequency; (b) stronger temporal coupling between HSV outbreaks and PEM; (c) elevated HSV-specific LSR analog (if assay developed). If LSR elevated but HSV outbreak patterns unremarkable: LSR reflects EBV-specific B cell compartment process, not systemic. If HSV outbreaks PEM-correlated but LSR normal: viral reactivation is compartmentalized (trigeminal), not captured by EBV-serological ratios.],
  chapter-ref: [],
  prediction: [In a nested analysis within the LSR validation study (@sec:lsr-biomarker-validation-study): HSV-1 seropositive patients with elevated EBV-LSR will report higher HSV outbreak frequency than those with normal LSR. Falsified if LSR and HSV outbreak frequency are independent.],
  treatment: [N/A — entirely speculative. Requires both LSR and HSV probe to be validated first.],
  limitation: [The LSR has never been measured. The HSV outbreak probe has never been tested. This is a conjecture about the relationship between two unvalidated constructs — it is a hypothesis about hypotheses. Origin: brainstorm.],
)

#registry-entry(
  ["Seronegative Chronic Lyme Disease" as a Driver of ME/CFS — Claim Not Supported by High-Quality Evidence],
  type: "LIM",
  certainty: "n/a",
  evidence: [Adjudication of the proposition (most-cited source: a retrospective uncontrolled single-author chart review, n=210, claiming 99% "seronegative Lyme" and 62–88% antibiotic response @Shor2011SeronegativeLyme, certainty 0.20). Refuted on two independent grounds. Therapeutic: three double-blind RCTs found prolonged antibiotics no better than placebo for persistent symptoms attributed to Lyme @Berende2016PLEASE @Klempner2001LymeAbx @Fallon2008LymeCeftriaxone. Diagnostic: the "seronegative Lyme" markers used (single WB band, low CD57, elevated C4a/C6, co-infection serologies) are not validated tests of active Borrelia @Lantos2015ChronicLyme @Feder2007ChronicLyme; patients labelled "chronic Lyme" by such methods are phenotypically CFS with no objective Borrelia @Patrick2015LymeCFS; genuine seronegative Lyme is confined to documented prior acute Lyme @Dattwyler1988Seronegative. Harm: prolonged antibiotics for this indication cause documented septic shock, C. difficile, and fatal outcomes @Marzec2017LymeAntibioticHarm.],
  citations: [@Shor2011SeronegativeLyme @Berende2016PLEASE @Klempner2001LymeAbx @Fallon2008LymeCeftriaxone @Lantos2015ChronicLyme @Feder2007ChronicLyme @Patrick2015LymeCFS @Dattwyler1988Seronegative @Marzec2017LymeAntibioticHarm],
  mechanism: [The claimed mechanism — persistent seronegative Borrelia infection driving CFS, reversible by long-course antimicrobials — is directly testable and fails the test. The uncontrolled "response" is attributable to placebo effect, regression to the mean (highest-vs-lowest scoring), co-intervention for comorbidities, and unblinded observer bias by a declared advocacy-position clinician (past ILADS president). This limitation is scoped to the seronegative-chronic-Lyme claim only; it does not bear on confirmed tick-borne infection, whose ME/CFS overlap is discussed at @sec:tick-borne and @syn:tickborne-symptom-domain-model.],
  chapter-ref: [ch07: seronegative chronic lyme cfs],
  prediction: [Falsifiable: a future double-blind RCT enrolling internationally case-defined CFS patients meeting "seronegative Lyme" criteria and randomising to prolonged antimicrobials vs placebo would show no QoL/fatigue benefit over placebo. The claim would be resurrected only if such a trial (adequately powered, independent lab, pre-registered) showed benefit — none has.],
  treatment: [Do not initiate prolonged antimicrobial therapy for ME/CFS on the basis of "seronegative Lyme" markers. Confirmed, serologically or PCR-documented tick-borne infection — not inferred "chronic Lyme" — is the appropriate threshold for antimicrobial treatment. Replication: null therapeutic result independently replicated across three RCTs.],
  limitation: [The rejection rests on high-quality contradicting evidence rather than on a study directly enrolling Shor's exact "seronegative Lyme" phenotype into an RCT; such a trial has not been done, but the PLEASE population (persistent symptoms attributed to Lyme) is the closest available and is null. The diagnostic critique is drawn from reviews and one prospective comparison rather than a single definitive head-to-head. Clinical relevance: MEDIUM (cautionary — protects patients from ineffective, harmful treatment).],
)


=== Mast Cell IgE → Connective Tissue

#registry-entry(
  [Post-COVID Ocular Syndrome as a Dysautonomia–SFN–Immune Triad Instance in Accessible Tissue],
  type: "H",
  certainty: "0.65",
  evidence: [Moustardas et al. (2026, Nature Communications, n=100 post-COVID ocular, n=32 controls) found: standard eye exam normal, yet specialised testing revealed corneal neurodegeneration + dendritic/T-cell activation (confocal microscopy), weakened pupillary reflexes, adult-onset strabismus, and a tear CD4+ T-cell dysregulation proteomic signature matching severe/fatal COVID tissue patterns. Two diagnostic models (77–91% accuracy). Smit et al. (2026, n=397 PCS, n=129 controls) confirmed pupillary autonomic dysregulation (IPA/LHIPA reduced, $p < 0.001$) @smit2026pupillary. Already corroborated by Cañadas 2023 (corneal confocal long COVID) @Cañadas2023CornealConfocal and Azcue 2025 (corneal tortuosity ME/CFS) @Azcue2025sfn. Origin: literature-derived.],
  citations: [@moustardas2026ocular @smit2026pupillary @Cañadas2023CornealConfocal @Azcue2025sfn @johansson2022visual @naseri2025dryeye],
  mechanism: [Mild COVID-19 → chronic T-cell-mediated neuroinflammation → (a) corneal small-fiber degeneration, (b) autonomic pupillary/oculomotor dysfunction, (c) immune dysregulation detectable in tear fluid. Triad = dysautonomia + small fiber neuropathy + T-cell dysregulation — the same three-chamber cascade the paper's causal hierarchy identifies as propagating CNS energy failure to end-organs (Chapter @ch:causal-hierarchy). Eye = tissue where all three are non-invasively measurable.],
  chapter-ref: [ch08: postcovid ocular syndrome, ch03: sec 10 ocular, ch07: tear tcell readout],
  prediction: [A criteria-defined ME/CFS cohort subjected to the same multimodal protocol (corneal confocal, pupillometry, tear proteomics) will show reduced corneal nerve fibre density (≥20% below matched controls), reduced pupillary light-reflex amplitude or constriction velocity (≥25% below controls), and a tear proteomic classifier separating patients from controls at AUC ≥0.75. Falsified if patients with documented dysautonomia and SFN have corneal nerve density, pupillary reflexes, and tear proteomes statistically indistinguishable from controls.],
  treatment: [No treatment tested. Diagnostic models (77–91% accuracy) suggest objective biomarkers are feasible.],
  limitation: [Moustardas cohort was selected for ocular symptoms, not ME/CFS criteria. Tear proteomics not performed in any ME/CFS cohort. Single study, unreplicated. Dry eye and convergence insufficiency are confounders (e.g. increased screen use post-virally). No causative mechanism established — correlational.],
)

#registry-entry(
  [Peripheral Serotonin Depletion as Multi-System Convergence Point in ME/CFS],
  type: "H",
  certainty: "0.60",
  evidence: [Wong et al. (Cell, 2023) identified 3 converging serotonin depletion mechanisms in Long COVID (IFN-γ-IDO diversion, enterochromaffin cell damage, platelet storage defects). Che et al. (2025, Lipkin group) confirmed innate immune-driven tryptophan→kynurenine diversion in ME/CFS away from serotonin. Gunning et al. (2016, n=181) found 81% of POTS patients have platelet serotonin storage pool deficiency. Mar et al. (2014, RCT crossover) showed SSRI worsens POTS hemodynamics — clinically consistent with peripheral serotonin depletion. Peripheral serotonin regulates mitochondrial biogenesis, vagal tone, vascular stability, gut motility, and immune function. Origin: literature-derived.],
  citations: [@wong2023serotonin @che2025innate @thorpe2026serotonin @wirth2026neurotransmitter @raij2024serotonin @gunning2016pots @mar2014ssripots @anderson2024serotonin @locasso2024serotonin @paredes2019serotonin],
  mechanism: [Inflammation → IDO activation → tryptophan diversion → reduced serotonin synthesis + enterochromaffin cell damage + impaired platelet serotonin uptake → multi-system consequences: mitochondrial dysfunction, reduced vagal tone, orthostatic intolerance, GI dysmotility, immune dysregulation, pain amplification. Cross-disease convergence across ME/CFS, Long COVID, POTS, fibromyalgia.],
  chapter-ref: [ch13: peripheral serotonin convergence],
  prediction: [ME/CFS patients show reduced platelet serotonin content (HPLC, controlled platelet preparation) vs sedentary controls (effect size ≥0.5 SD). Platelet serotonin inversely correlates with kynurenine/tryptophan ratio and positively with HRV. Falsified if platelet serotonin levels do not differ or differences explained by diet/medication confounds.],
  treatment: [Caution with serotonergic drugs (SSRIs may worsen POTS-like symptoms). Butyrate + 5-HTP as mechanistic support targeting serotonin restoration — not yet proven as ME/CFS treatment. Platelet serotonin measurement may identify patients most likely to benefit from serotonin-targeted interventions.],
  limitation: [Platelet serotonin not systematically measured in large ME/CFS cohort with adequate controls. Causality unresolved — depletion may be consequence, not cause. SSRI harm data from POTS, not ME/CFS directly. Central vs peripheral serotonin are separate pools. Methodological challenges with platelet serotonin assays (sample handling, circadian variation).],
)

#registry-entry(
  [Cardiac ECM Remodelling as Mast Cell-MMP Degradation Prototype],
  type: "S",
  certainty: "0.60",
  evidence: [Janicki 2006 established cardiac mast cells regulate MMP-mediated collagen degradation in ventricular remodelling @Janicki2006CardiacMastMMP. The same mediators (tryptase, chymase, TNF-α) that degrade cardiac collagen are proposed to degrade ligamentous ECM in MCAS-associated hypermobility. Conserved ECM substrates across tissues. This is the strongest cross-disease mechanistic precedent. Origin: brainstorm.],
  citations: [@Janicki2006CardiacMastMMP @Lind2022ChymaseOsteoblast @Guo2021MastProteaseHA],
  mechanism: [Cardiac mast cells → tryptase/chymase/TNF-α → MMP activation → collagen degradation → ventricular remodelling. Same mediators target same ECM substrates in ligaments. MC→MMP→ECM degradation chain is a conserved pathological programme across tissues with MC hyperplasia. Translation to ligament/joint capsule requires tissue-specific demonstration.],
  chapter-ref: [ch14d: cardiac ecm mc prototype],
  prediction: [Serum MMP-3, MMP-9, TIMP levels in MCAS-hEDS patients should parallel cardiac MC-activation model profiles (adjusted for age/sex). Ligament biopsy MMP expression should mirror cardiac MMP profiles. Falsified if MCAS-hEDS MMP profiles fundamentally differ from cardiac MC models.],
  treatment: [Establishes translational precedent for MC-targeted CT preservation therapies. No direct clinical recommendation.],
  limitation: [Cardiac ECM physiology differs from ligamentous ECM in mechanical loading, repair rate, and resident cell populations. Cardiac MC studies focus on TNF-α remodelling not IgE-driven degranulation.],
)

#registry-entry(
  [Periodontitis as Human Model of IgE-Mediated CT Degradation],
  type: "S",
  certainty: "0.55",
  evidence: [Periodontitis is the best-established human model: IgE against oral bacteria → local MC activation → MMP-mediated periodontal ligament and alveolar bone degradation → measurable clinical attachment loss. Subantimicrobial doxycycline 20mg BID preserves periodontal attachment by inhibiting MMP-2/9. Causal chain (IgE→MC→MMP→CT degradation) identical to MCAS-hEDS proposal. Origin: brainstorm.],
  citations: [@Janicki2006CardiacMastMMP],
  mechanism: [IgE against P. gingivalis → MC activation in gingival tissue → MMP release → collagen degradation in periodontal ligament → clinical attachment loss → tooth loss. Subantimicrobial doxycycline interrupts the MMP step. Parallel: IgE → MC → MMP → ligament CT degradation → hypermobility.],
  chapter-ref: [ch14d: periodontitis ige ct model],
  prediction: [MCAS-hEDS patients show elevated IgE to periodontal pathogens vs non-MCAS hEDS. Treatments reducing MC activation or MMP activity (doxycycline, ketotifen, omalizumab) should slow Beighton score progression analogous to periodontal attachment-loss preservation.],
  treatment: [Establishes precedent for repurposing subantimicrobial doxycycline + MC stabiliser combination for CT preservation. No clinical recommendation without trial data specific to hypermobility.],
  limitation: [Periodontal CT differs from ligamentous CT mechanically. IgE against oral bacteria is luminal; IgE in MCAS-hEDS may target systemic/self-antigens. Periodontal trials used doxycycline only; MC stabiliser component lacks human CT outcome data.],
)

#registry-entry(
  [Adult-Onset Strabismus as Clinical Sign of Oculomotor Nerve Involvement in Post-Infectious Syndromes],
  type: "H",
  certainty: "0.45",
  evidence: [Moustardas et al. (2026) found adult-onset strabismus (normally a childhood condition) in a subset of post-COVID patients and attributed it to oculomotor nerve involvement @moustardas2026ocular. Strabismus and double vision (diplopia) are documented clinical features of ME/CFS (Chapter 3, sec-10-ocular). Origin: literature-derived.],
  citations: [@moustardas2026ocular],
  mechanism: [Oculomotor (CN III), trochlear (CN IV), or abducens (CN VI) nerve dysfunction → impaired extraocular muscle coordination → eye misalignment. Consistent with α3-nAChR autoantibody-mediated autonomic ganglionopathy (Chapter @ch:cardiovascular) and SFN affecting nerve control.],
  chapter-ref: [ch03: sec 10 ocular, ch08: postcovid ocular syndrome],
  prediction: [A proportion of ME/CFS patients reporting diplopia (predicted $gt.eq 15%$) will show measurable strabismus ($gt 5$ prism dioptres deviation on cover test) on orthoptic examination with normal extraocular muscle anatomy on imaging (nerve, not muscle). Falsified if $lt 5%$ show measurable deviation, or if diplopia in ME/CFS consistently traces to accommodation fatigue rather than oculomotor misalignment.],
  treatment: [May respond to prism correction or botulinum toxin, as in conventional strabismus. No ME/CFS-specific trial data.],
   limitation: [Strabismus in Moustardas cohort is a minority finding — core ocular phenotype is corneal neuropathy + pupillary dysautonomia. Diplopia in ME/CFS more commonly fatigue-related (accommodation failure) than structural misalignment. Nerve-vs-muscle distinction requires specialist orthoptic testing, not available in routine exams. Single study.],
)

#registry-entry(
  [Corneal Confocal Microscopy as Cross-Disease Validated SFN Biomarker with Normative Data],
  type: "H",
  certainty: "0.45",
  evidence: [Corneal confocal microscopy (CCM) has been validated across ≥7 disease groups (diabetic neuropathy, fibromyalgia, MS, PD, SLE, POTS, chemotherapy-induced) for small-fiber neuropathy detection. Multinational normative data (CNFD, CNBD, CNFL, tortuosity) available from Tavakoli et al. (2015, multicenter, n>340) @tavakoli2015normaliveccm with ethnic-specific reference values @cao2022cornealreference. Ranathunga et al. (2026, Pain) meta-analysis confirmed transdiagnostic SFN in chronic pain @ranathunga2026nonneuropathic. Oreskovic et al. (2026) scoping review mapped CCM across neurodegenerative disease @oreskovic2026scoping. In ME/CFS, Azcue et al. (2025) found increased corneal nerve tortuosity as primary discriminator (AUC=0.720) with non-length-dependent distribution @Azcue2025sfn. Azcue 2023 documented C-fiber dysfunction with 31% meeting POTS criteria @Azcue2023sfn. Origin: literature-derived cross-disease synthesis.],
  citations: [@tavakoli2015normaliveccm @cao2022cornealreference @ranathunga2026nonneuropathic @oreskovic2026scoping @Azcue2025sfn @Azcue2023sfn @sommer2025fibromyalgiasfn @akowuah2025msccm @ghadban2025mixed @gharib2025sleccm @cantrell2025potssfn],
  mechanism: [CCM images the corneal subbasal nerve plexus (Aδ and C fibers) non-invasively. Corneal nerve loss reflects systemic small-fiber pathology across diseases. In ME/CFS, tortuosity increase (not density loss) is the primary finding — consistent with immune-mediated rather than metabolic neuropathy. Non-length-dependent distribution distinguishes from diabetic neuropathy. CCM and skin biopsy (IENFD) show moderate correlation — they measure partially distinct aspects of SFN (morphology vs density).],
  chapter-ref: [ch10: sfn interface failure, ch14d: ccm cross disease patterns, ch08: retinal corneal cns window],
  prediction: [A cross-disease CCM study (ME/CFS, fibromyalgia, post-COVID, healthy controls, n≥50 per group) would identify disease-specific CCM patterns (tortuosity-dominant in ME/CFS, DC-density-dominant in MS, density-dominant in diabetic neuropathy). ME/CFS corneal nerve tortuosity should correlate with IENFD reduction, autonomic dysfunction severity, and CNS symptoms. Falsified if CCM parameters are indistinguishable across conditions or within-group variance exceeds between-group difference.],
  treatment: [CCM is a diagnostic/monitoring tool, not treatment. Could serve as non-invasive longitudinal outcome measure for SFN-targeted treatment trials (IVIG, LDN) — repeatable without biopsy-related morbidity.],
  limitation: [Only one ME/CFS CCM study exists (Azcue 2025). No head-to-head cross-disease CCM comparison including ME/CFS. CCM-vs-IENFD correlation is moderate (Ghadban 2025) — CCM does not replace skin biopsy. Automated vs manual image analysis significantly affects results (Raasing 2023, method heterogeneity). No normative comparison of ME/CFS CCM parameters against the Tavakoli database. Publication bias toward positive CCM findings — negative CCM studies under-published.],
)

#registry-entry(
  [Acquired Progressive Hypermobility via Mast Cell Mediator-Mediated Connective Tissue Degradation],
  type: "S",
  certainty: "0.35",
  evidence: [Individual mechanistic steps well-supported (tryptase→MMP-3/-13 cert 0.70 @Magarinos2013TryptaseMMP, chymase→MMP-1 cert 0.75 @Saarinen1994ChymaseMMP1, mast cell→collagen degradation cert 0.70 @Janicki2006CardiacMastMMP, histaminylation→collagen mechanics cert 0.70 @Zhu2026HistaminylationCollagen). Causal chain assembled from separate literatures; not demonstrated end-to-end. No gene identified for most hEDS @Martin2019hEDSAcquired. Origin: brainstorm.],
  citations: [@Magarinos2013TryptaseMMP @Saarinen1994ChymaseMMP1 @Janicki2006CardiacMastMMP @Zhu2026HistaminylationCollagen @Martin2019hEDSAcquired @Vazquez2022TPSAB1 @Wilson2026MastCellScorehEDS @Imanaka2026TNXBHypermobility],
  mechanism: [Triggering event (infection, new allergy) → chronic mast cell activation → sustained tryptase/chymase + histaminylation → cumulative collagen/ECM degradation → progressive ligament/joint capsule laxity → increased hypermobility (Beighton score, new instability, worsening POTS). Constrained by three null findings: HaT does NOT cause hypermobility; random tryptase not elevated; no hEDS gene identified.],
  chapter-ref: [ch14d: acquired progressive hypermobility mc],
  prediction: [Prospective study (n≥30 post-infectious hypermobility): MC stabiliser treated → Beighton score stable over 12 months; untreated → ≥1-point increase. Stronger: provoked tryptase (>20%+2 ng/mL above baseline) elevated. Falsified if treatment does not alter progression or provoked MC markers normal.],
  treatment: [Mast cell stabilizers (cromolyn, ketotifen) or anti-IgE (omalizumab, if IgE-mediated) may slow hypermobility progression — entirely untested. No clinical recommendation without trial data.],
  limitation: [Full causal chain not demonstrated end-to-end. Progressive hypermobility may reflect cumulative mechanical joint damage from proprioceptive dysfunction rather than direct CT degradation. hEDS molecular basis undefined — field open to non-genetic mechanisms but not yet demonstrated. Beighton ceiling effects. TNXB haploinsufficiency competing mechanism for ~5-10% @Imanaka2026TNXBHypermobility.],
)

#registry-entry(
  [Histaminylation as MMP-Independent Collagen Weakening Mechanism],
  type: "S",
  certainty: "0.30",
  evidence: [Histaminylation — covalent histamine attachment to collagen via transglutaminase 2 — directly alters collagen matrix mechanics in vitro (certainty 0.70) @Zhu2026HistaminylationCollagen. Mechanism is independent of the established tryptase/chymase→MMP pathway, providing a second route by which mast cell histamine release could weaken connective tissue. Origin: brainstorm.],
  citations: [@Zhu2026HistaminylationCollagen],
  mechanism: [Mast cell degranulation → histamine release → TG2-mediated histaminylation of collagen glutamine residues → altered collagen fibril assembly and matrix stiffness → reduced biomechanical quality of ligaments/joint capsules. Independent of MMP-mediated degradation; both pathways operate simultaneously.],
  chapter-ref: [ch07: histaminylation collagen],
  prediction: [Skin biopsy collagen from MCAS+ME/CFS hypermobile patients shows elevated histaminylation (anti-histaminyl-glutamine Ab or mass spectrometry) vs non-MCAS controls. Histaminylation inversely correlates with collagen stiffness (AFM) and positively with disease duration. Falsified if histaminylation is not elevated or does not correlate with stiffness.],
  treatment: [H1 antihistamines may reduce ongoing histaminylation — distinct from MMP inhibition. Possibly explains anecdotal hypermobility improvement on sustained antihistamines. No clinical recommendation.],
  limitation: [In vivo detection requires specialised mass spectrometry. Relationship between histaminylation levels and clinical hypermobility severity not tested. TG2 upregulation in ME/CFS tissue not measured. Net effect of TG2 on tissue mechanics context-dependent (stabilising in some contexts).],
)

#registry-entry(
  [Tear-Fluid Proteomics as Low-Burden Immune Biomarker Window for Severe ME/CFS],
  type: "S",
  certainty: "0.30",
  evidence: [Moustardas et al. (2026) demonstrated that tear CD4+ T-cell dysregulation proteomics matches blood/tissue signatures from severe/fatal COVID @moustardas2026ocular. Tear fluid is collectable non-invasively — no needle, no clinic visit required. T-cell exhaustion and immune dysregulation are documented in ME/CFS blood @iu2024tcell_exhaustion @walitt2024deep but no tear study exists. Origin: literature-derived inference.],
  citations: [@moustardas2026ocular @iu2024tcell_exhaustion @walitt2024deep],
  mechanism: [Systemic T-cell dysregulation → spillover into lacrimal gland/tear fluid → detectable proteomic signature. Tear fluid mirrors systemic immune state for some compartments (shown for post-COVID; unverified for ME/CFS).],
  chapter-ref: [ch07: tear tcell readout, ch08: postcovid ocular syndrome],
  prediction: [Tear proteomics in ME/CFS shows CD4+/CD8+ dysregulation signature correlating with blood T-cell exhaustion markers (PD-1 expression, TCF7 state) within individuals at within-subject $r gt.eq 0.4$, or a tear-only classifier separating patients from controls at AUC $gt.eq 0.70$. Falsified if the within-subject tear--blood correlation is below 0.4 and no tear classifier reaches AUC 0.70 in an adequately powered sample.],
  treatment: [No treatment proposed. If validated, tear biomarkers would enable home-collection immune monitoring in trials enrolling severe/bedbound patients normally excluded by phlebotomy burden.],
  limitation: [Entirely untested in ME/CFS. Tear-blood concordance shown only for a selected post-COVID ocular-symptom cohort. Tear composition varies with ocular surface condition (dry eye, blepharitis), diet, environment, and sleep — all confounders in ME/CFS. Mechanism of spillover (active secretion vs passive leakage vs local ocular immune response) unknown.],
)

#registry-entry(
  [CCM as Non-Invasive SFN Treatment-Response Monitor for ME/CFS Trials],
  type: "S",
  certainty: "0.30",
  evidence: [CCM detected chemotherapy-induced polyneuropathy earlier than clinical assessment @baghdasaryan2026chemo. SNRI treatment partially reversed corneal nerve changes in fibromyalgia @kubat2026fibromyalgiaccm. CCM is non-invasive, radiation-free, repeatable every few months (skin biopsy requires healing time). In ME/CFS, if SFN-targeted treatments (IVIG, corticosteroids, immunomodulators) reduce small-fiber pathology, serial CCM could provide the first repeatable tissue-level treatment-response biomarker. Origin: literature-derived inference.],
  citations: [@baghdasaryan2026chemo @kubat2026fibromyalgiaccm @Azcue2025sfn @Azcue2023sfn],
  mechanism: [Treatment of SFN → reduced immune-mediated nerve damage → corneal nerve regeneration (increased CNFD/CNFL, reduced tortuosity) → detectable by serial CCM within 3–6 months. CCM regeneration signals precede symptom improvement, analogous to diabetic neuropathy CCM monitoring protocols.],
  chapter-ref: [ch10: sfn interface failure, ch14d: ccm cross disease patterns],
  prediction: [In a 12-month IVIG trial for autoimmune SFN in ME/CFS, CCM parameters (CNFD, tortuosity) will show detectable improvement at 6 months (≥10% CNFD increase), preceding symptom improvement at 9–12 months. Falsified if CCM is static despite clinical improvement, or if CCM improvement is dissociated from IENFD improvement.],
  treatment: [If validated, CCM could serve as early-response biomarker for SFN-targeted trials, enabling shorter trial durations and dose-finding without repeat skin biopsy. No clinical use outside trials.],
  limitation: [Only one ME/CFS CCM study. Treatment-response CCM data in ME/CFS entirely absent. Regeneration timelines in immune-mediated vs metabolic neuropathy may differ — extrapolation from fibromyalgia/chemo-neuropathy uncertain. CCM cannot distinguish between regeneration of existing nerves and compensatory sprouting. Regeneration signal may reflect corneal-specific recovery not generalizable to somatic small fibers.],
)

#registry-entry(
  [Pupillometry as ME/CFS Autonomic Biomarker],
  type: "S",
  certainty: "0.30",
  evidence: [Sander 2025 validated handheld pupillometer in autonomic failure (certainty 0.70) @sander2025pupillometry. Master 2020 validated PLR as objective biomarker in n=352 concussion patients (certainty 0.75) @master2020plr. Szklarski 2021 demonstrated elevated M3/α1 autoantibodies in ME/CFS (certainty 0.65) @szklarski2021cd26. Azcue 2026 replicated α1 autoantibody elevation in PCS+CFS (certainty 0.70) @azcue2026gpcrpupil. Lisowski 2025 reviewed pupil autonomic anatomy @lisowski2025pupillary. Rizzuto 2025 reviewed hippus as autonomic biomarker @rizzuto2025hippus. Sendrowski 1997 (certainty 0.25) — only direct CFS pupillometry study. Origin: brainstorm.],
  citations: [@sander2025pupillometry @master2020plr @szklarski2021cd26 @azcue2026gpcrpupil @lisowski2025pupillary @rizzuto2025hippus @sendrowski1997sympathetic @egg2002pupillary @parmakyener2026pupillography],
  mechanism: [M3 muscarinic receptors (iris sphincter, parasympathetic constriction) and α1-adrenergic receptors (iris dilator, sympathetic dilation) are targets of GPCR autoantibodies elevated in ME/CFS. If antibodies are functionally pathogenic, end-organ effect should be measurable as slowed constriction velocity, reduced dilation velocity, or both. Pupillometry is noninvasive, brief (30s), performable supine — accessible to severe patients.],
  chapter-ref: [ch29: pupillometry biomarker, ch29: pupillometry pem, ch29: plr gpcr bioassay],
  prediction: [ME/CFS patients with elevated α1/M3 autoantibodies will show slower PLR constriction velocity and/or reduced dilation velocity vs ME/CFS without autoantibodies and controls. PLR parameters will correlate with COMPASS-31 and orthostatic intolerance measures. PEM provocation will alter PLR dynamics. Falsified if autoantibody-positive patients show normal PLR, or if PLR does not differ from controls after accounting for age/medication confounds.],
  treatment: [No treatment proposed. If validated, pupillometry could serve as functional autoantibody bioassay and treatment-response monitor for immunomodulatory trials — distinguishing functionally pathogenic from non-pathogenic autoantibodies.],
  limitation: [No modern ME/CFS pupillometry data. Egg 2002 found pupillary unrest inversely correlated with fatigue in MS (null result). PLR sensitive to medications, ambient light, alertness, age. Day-to-day reliability in ME/CFS unknown.],
)

#registry-entry(
  [Pupillometry as Noninvasive LC Functional Readout],
  type: "S",
  certainty: "0.25",
  evidence: [Drummond 2022 demonstrated LC deficit via pupil dilation asymmetry in CRPS @drummond2022crps. Aregawi 2026 documented CSF NE deficiency in ME/CFS @Aregawi2026Noradrenergic. LC → IML → SCG → α1-adrenergic iris dilator pathway is well-characterized @lisowski2025pupillary. Origin: brainstorm.],
  citations: [@drummond2022crps @Aregawi2026Noradrenergic @lisowski2025pupillary],
  mechanism: [LC functional output → pupil dilation velocity via α1-adrenergic dilator muscle innervation. CSF NE deficiency predicts reduced baseline pupil diameter (low tonic LC output) and slower dilation to arousal stimuli (impaired phasic LC bursts). Provides noninvasive proxy for central noradrenergic state — safer and repeatable vs lumbar puncture.],
  chapter-ref: [ch08: pupillometry lc readout],
  prediction: [ME/CFS patients will show slower pupil dilation velocity to auditory arousal vs controls. Dilation velocity will correlate positively with CSF NE Pathway index in patients with both pupillometry and LP. Atomoxetine (NRI) will increase pupil dilation velocity, with magnitude predicting clinical response. Falsified if dilation velocity is normal in ME/CFS, or if no correlation with CSF NE exists.],
  treatment: [If validated, pupillometry could serve as bedside LC function monitor for NRI treatment trials — avoiding repeat lumbar puncture. No clinical use until validated.],
  limitation: [No direct ME/CFS pupillometry-LC correlation data. Peripheral sympathetic dysfunction could produce pupil abnormalities independent of LC. Medications, light adaptation, age, alertness all affect pupil dynamics. Baseline pupil diameter has poor specificity — multiple conditions produce smaller pupils.],
)

#registry-entry(
  [IgE-Specific Pathway in MCAS-Connective Tissue Interaction],
  type: "OQ",
  certainty: "n/a",
  evidence: [Wilson 2026 (n=2141, certainty 0.45): IgE elevated in high-MC-score hEDS/HSD (p=0.0004) while random tryptase normal. Omalizumab safe/effective for refractory MCAS (Matheny 2025, certainty 0.55). No study has examined omalizumab effect on CT integrity or hypermobility outcomes. The IgE→FcεRI pathway is under-explored relative to MRGPRX2 in MCAS-CT research.],
  citations: [@Wilson2026MastCellScorehEDS @Matheny2025OmalizumabMCAS],
  mechanism: [If IgE-mediated sensitisation drives MC activation in hEDS subset → IgE sequestration by omalizumab → reduced FcεRI pathway activation → reduced mast cell degranulation → potential slowing of CT degradation. Anti-IgE therapy serves as therapeutic probe: pathway-specific hypothesis testing using an approved drug with established safety profile.],
  chapter-ref: [ch07: ige pathway ct mcas],
  prediction: [Omalizumab-treated hEDS/MCAS patients with progressive hypermobility should show reduced provoked MC mediators (tryptase, urinary N-methylhistamine/LTE4/PGD2 metabolite) and stabilised Beighton score at 12 months vs pre-treatment trajectory. Falsified if hypermobility progresses despite effective IgE sequestration (normalised IgE, reduced MC mediators).],
  treatment: [Omalizumab as therapeutic probe for IgE→MC→CT pathway. Specialist prescribing only. No clinical recommendation — entirely research-stage for CT outcomes.],
  limitation: [No study of omalizumab with CT/hypermobility endpoints. Most MCAS literature focuses on non-IgE pathway (MRGPRX2). Omalizumab only targets IgE pathway — ineffective if dominant degranulation is MRGPRX2/complement/TLR-mediated. Dynamic biomarker monitoring required; random labs insufficient.],
)

#registry-entry(
  [Omalizumab as Therapeutic Probe for IgE→MC→CT Hypothesis],
  type: "OQ",
  certainty: "n/a",
  evidence: [Omalizumab safe/effective for refractory MCAS (Matheny2025, 28 patients, 61% partial, 18% complete @Matheny2025OmalizumabMCAS). Wilson2026 found IgE elevated in high-MC-score hEDS/HSD (n=2141, p=0.0004 @Wilson2026MastCellScorehEDS). No study has examined CT integrity or hypermobility outcomes with any anti-IgE therapy. Omalizumab's IgE-specific mechanism makes it an ideal therapeutic probe: if it reduces MC activation AND slows hypermobility, IgE→MC→CT is supported. Origin: brainstorm.],
  citations: [@Matheny2025OmalizumabMCAS @Wilson2026MastCellScorehEDS],
  mechanism: [Omalizumab → IgE sequestration → reduced FcεRI activation → reduced MC degranulation. If IgE pathway drives CT degradation: reduced degranulation → reduced MMP/histaminylation → CT degradation slowed. If non-IgE pathway dominant: MC activation unchanged despite IgE suppression. If MC→CT wrong: MC activation reduced but CT degradation continues.],
  chapter-ref: [ch14d: omalizumab ct therapeutic probe],
  prediction: [12-month open-label omalizumab in IgE-elevated hEDS/MCAS: provoked tryptase reduced, serum MMP-3/9 reduced, histaminylation markers reduced, Beighton score stabilised vs pre-treatment progression. Falsified if CT outcomes unchanged despite reduced MC activation, or if neither changes.],
  treatment: [Proof-of-mechanism trial is immediately feasible using approved drug with established MCAS safety. Positive result would justify an RCT; negative result would redirect research away from IgE pathway. No clinical recommendation outside trial setting.],
  limitation: [Therapeutic probe only tests IgE pathway, not MC→CT chain itself. If dominant degranulation is MRGPRX2/complement/TLR-mediated, omalizumab will be negative even if MC→CT chain is correct. Single-arm open-label design limits causal inference.],
)

#registry-entry(
  [Pupillometry During PEM Provocation],
  type: "OQ",
  certainty: "n/a",
  evidence: [ME/CFS autonomic function often normal at rest but deranged after provocation. Sander 2025 @sander2025pupillometry validated methodology. No PEM provocation pupillometry study exists. Origin: brainstorm.],
  citations: [@sander2025pupillometry],
  mechanism: [Exercise/orthostatic provocation → autonomic decompensation → measurable PLR changes reflecting dynamic sympathetic/parasympathetic failure. Handheld pupillometer enables serial measurements at rest, during orthostasis, and at multiple timepoints post-exertion.],
  chapter-ref: [ch29: pupillometry pem],
  prediction: [PLR constriction velocity and dilation velocity measured 2h post-exertion will be significantly slower than pre-exertion baseline in ME/CFS, with slowing magnitude proportional to PEM severity. Healthy controls show no change or faster recovery. Falsified if PLR is stable across pre/post-exertion timepoints, or if within-subject variability exceeds between-state differences.],
  treatment: [N/A — research direction only.],
  limitation: [No pilot data. Optimal timing for post-exertion measurement unknown. PEM onset is delayed (12–72h); single 2h measurement may miss the window. Repeated testing itself may be a PEM trigger. Medication half-lives may confound serial PLR.],
)

#registry-entry(
  [PLR as GPCR Autoantibody Functional Bioassay],
  type: "OQ",
  certainty: "n/a",
  evidence: [Szklarski 2021 @szklarski2021cd26 and Azcue 2026 @azcue2026gpcrpupil demonstrate GPCR autoantibodies in ME/CFS. In vitro ELISA/bioassay measures binding to recombinant receptors; binding does not establish functional impairment at native tissue. Pupil is native tissue with M3/α1 receptors at physiological densities. Origin: brainstorm.],
  citations: [@szklarski2021cd26 @azcue2026gpcrpupil @lisowski2025pupillary],
  mechanism: [ME/CFS patients with GPCR autoantibodies → functional impairment of M3/α1 receptor-mediated pupil dynamics IF antibodies are pathogenic. Pupillometry measures end-organ function, distinguishing neutralizing from non-pathogenic autoantibodies — a distinction in vitro binding assays cannot make.],
  chapter-ref: [ch29: plr gpcr bioassay],
  prediction: [Among ME/CFS patients with anti-α1 or anti-M3 antibodies, PLR constriction/dilation velocity will be slower in patients who later show clinical improvement after IVIG than same patients' post-treatment values. Antibody titers alone will not predict treatment response. Falsified if PLR does not change post-treatment, or if PLR change is dissociated from clinical improvement.],
  treatment: [If validated, PLR-based bioassay could identify which autoantibody-positive patients benefit from immunomodulatory therapy — stratifying IVIG/plasmapheresis trials. No clinical use until validated.],
  limitation: [Entirely untested. PLR impairment may have causes beyond autoantibodies (medications, age, comorbid conditions). Cutoff between "functionally impaired" and "normal" PLR in the context of positive serology is undefined. Pupil receptors represent one tissue — autoantibody effects may be tissue-specific.],
)


=== Connective Tissue and Extracellular Matrix

#registry-entry(
  [Glymphatic-Capillary Clearance Enhancement],
  type: "H",
  certainty: "0.65",
  mechanism: [(a) Glymphatic system clears metabolic waste, including extracellular matrix fragments, from the interstitial space during sleep. (b) ME/CFS sleep architecture abnormalities impair glymphatic clearance (alpha-delta sleep, impaired LC-NE-vasomotion coupling). (c) Diminished glymphatic removal of ECM fragments may contribute to elevated circulating ECM biomarkers and chronic inflammation. (d) Glymphatic function may be modulated by positional factors (supine vs upright), sleep quality, and cerebrospinal fluid dynamics.],
  evidence: [Sleep-based glymphatic dysfunction documented in ME/CFS (alpha-delta sleep, impaired vasomotion coupling). Glymphatic clearance role in ECM homeostasis established in healthy brain. Positional effects on glymphatic flow documented.],
  treatment: [Enhanced glymphatic clearance via sleep optimization, positional therapy (supine sleep), or direct glymphatic modulation could reduce circulating ECM burden in ME/CFS.],
  chapter-ref: [ct glymphatic capillary],
)

#registry-entry(
  [Structural-Autonomic Stratification],
  type: "H",
  certainty: "0.60",
  mechanism: [(a) Connective tissue disorders (CTDs) and autonomic dysfunction (POTS, NMH) may co-occur as distinct but interacting subtypes. (b) Structural features (hypermobility, CCI, ligament laxity) may predispose to autonomic dysfunction via craniospinal instability, mechanical strain, or impaired vascular compliance. (c) Conversely, autonomic dysfunction may exacerbate connective tissue pathology through impaired tissue perfusion, oxidative stress, and inflammatory cascades. (d) Distinguishing these subtypes requires combined structural (MRI, Beighton score) and autonomic testing (tilt table, HRV) to guide targeted treatment.],
  evidence: [CTD prevalence 30-57% in ME/CFS vs 10-15% general population. Hypermobility, CCI, POTS comorbidity documented. Vascular connective tissue interactions established in physiology.],
  treatment: [Combined structural and autonomic phenotyping to identify CTD + autonomic subtypes requiring different therapeutic approaches (mechanical stabilization vs autonomic modulation vs combination).],
  chapter-ref: [ct structural autonomic stratification],
)

#registry-entry(
  [Vagal-Mast Cell-Connective Tissue Axis],
  type: "H",
  certainty: "0.55",
  mechanism: [(a) Vagal tone modulates mast cell degranulation and inflammatory responses; high vagal activity suppresses mast cell release. (b) Connective tissue integrity may influence vagal afferent signaling via mechanoreceptors and nociceptors. (c) ME/CFS may involve impaired vagal control of mast cells, contributing to MCAS prevalence. (d) Vagus nerve stimulation or vagal tone modulation could reduce mast cell activation and improve connective tissue inflammation.],
  evidence: [Vagal control of mast cell activity established in neuroimmunology. Vagal afferent signaling via connective tissue mechanoreceptors documented. ME/CFS vagal dysfunction documented.],
  treatment: [Vagal modulation therapies (tVNS, breathwork, biofeedback) to reduce mast cell activation and improve connective tissue inflammation in ME/CFS with MCAS features.],
  chapter-ref: [ct vagal mast cell ecm],
)

#registry-entry(
  [Mechanical Stress-Modulated Mast Cell Threshold],
  type: "H",
  certainty: "0.50",
  mechanism: [(a) Mast cells are mechanically sensitive; mechanical stress (stretch, compression, vibration) can trigger degranulation. (b) Mechanosensitive ion channels (Piezo1/2) and integrin-mediated signaling transduce mechanical forces into mast cell activation signals. (c) Connective tissue weakness or hypermobility may lower the mechanical threshold for mast cell activation, particularly in tissues with poor connective tissue support (joints, ligaments, vasculature). (d) ME/CFS patients with CTD or hypermobility may have mechanically primed mast cells, explaining high MCAS prevalence in this subgroup.],
  evidence: [Mast cell mechanosensitivity documented in mast cell biology literature. Mechanical stress triggers degranulation in experimental models. ME/CFS MCAS prevalence elevated in hypermobile subgroups.],
  treatment: [Mechanical stability interventions (physical therapy, cervical stabilization, joint support) may reduce mast cell activation in ME/CFS patients with mechanically primed mast cells.],
  chapter-ref: [ct mechanical mast cell],
)

#registry-entry(
  [Senescence-Associated CT Decline],
  type: "H",
  certainty: "0.50",
  mechanism: [(a) Cellular senescence contributes to connective tissue aging through senescence-associated secretory phenotype (SASP) production of inflammatory cytokines and proteases. (b) ME/CFS may show accelerated connective tissue aging and senescent cell burden in skin, tendon, or ligament tissues. (c) Senolytic or senomorphic therapies targeting senescent fibroblasts could improve connective tissue integrity in ME/CFS. (d) Skin or tendon biopsies could quantify senescence burden (p16#super[INK4a], SA-β-gal) as biomarker of connective tissue aging.],
  evidence: [Senescence-associated ECM degradation established in aging and fibrosis literature. SASP cytokines (IL-6, TGF-β) degrade ECM components. ME/CFS accelerated aging phenotype documented.],
  treatment: [Senolytic or senomorphic therapies to reduce senescent fibroblast burden and improve connective tissue integrity in ME/CFS. Senescence biomarkers as outcome measures.],
  chapter-ref: [ct senescence],
)

#registry-entry(
  [Circadian Collagen Resynchronization],
  type: "H",
  certainty: "0.50",
  mechanism: [(a) Collagen synthesis exhibits circadian rhythms, with peak production during nighttime hours. (b) ME/CFS circadian disruption (phase delay, fragmented sleep, abnormal melatonin secretion) may impair collagen synthesis efficiency, contributing to connective tissue weakness over time. (c) Circadian optimization (light therapy, sleep schedule stabilization, melatonin supplementation) could restore collagen production patterns. (d) Circadian markers (melatonin, cortisol rhythm) may predict collagen synthesis capacity and connective tissue healing potential.],
  evidence: [Circadian regulation of collagen synthesis established in connective tissue physiology. ME/CFS circadian disruption well-documented. Melatonin effects on collagen documented.],
  treatment: [Circadian rhythm optimization to restore collagen synthesis capacity in ME/CFS, with circadian markers as biomarkers of connective tissue health.],
  chapter-ref: [ct circadian collagen],
)

#registry-entry(
  [Glycine-Proline Collagen Optimization],
  type: "H",
  certainty: "0.50",
  mechanism: [(a) Glycine and proline are primary amino acids in collagen structure; deficiencies impair collagen synthesis. (b) ME/CFS patients may have suboptimal glycine/proline intake or impaired utilization, contributing to connective tissue weakness. (c) Supplementation with glycine, proline, or collagen peptides could improve collagen production and connective tissue integrity. (d) Circadian timing of supplementation may align with collagen synthesis peaks.],
  evidence: [Glycine and proline requirements for collagen synthesis established in biochemistry literature. ME/CFS nutritional deficiencies documented. Collagen peptide supplementation effects documented.],
  treatment: [Glycine-proline or collagen peptide supplementation to improve collagen synthesis and connective tissue integrity in ME/CFS, with circadian timing for maximal effect.],
  chapter-ref: [ct collagen peptides],
)

#registry-entry(
  [Chronobiological Prolyl Hydroxylase Optimization],
  type: "H",
  certainty: "0.45",
  mechanism: [(a) Prolyl hydroxylases (P4H, P3H) exhibit circadian rhythms essential for collagen crosslinking. (b) ROS-mediated inhibition of these enzymes in ME/CFS impairs ligament stability, particularly in hypermobile patients. (c) Timed cofactor supplementation (ascorbic acid, alpha-ketoglutarate) at circadian peak times may maximize enzymatic activity and improve collagen crosslinking efficiency. (d) This addresses the connective tissue weakness observed in ME/CFS hypermobility through timed nutritional intervention.],
  evidence: [Wirth 2026 CTD-MECFS study on ROS-prolyl hydroxylase-HIF-1alpha connection; circadian regulation of prolyl hydroxylases in collagen synthesis literature; ascorbic acid deficiency causing scurvy via collagen crosslinking failure.],
  treatment: [Circadian optimization of prolyl hydroxylase activity to improve collagen crosslinking in hypermobile ME/CFS patients. Nutritional timing strategy to overcome ROS inhibition.],
  chapter-ref: [Ch. 14a — prolyl hydroxylase circadian section],
)

#registry-entry(
  [Basal Lamina-Targeted Capillary Restoration],
  type: "H",
  certainty: "0.45",
  mechanism: [(a) Capillary basement membrane thickening impairs endothelial function and microvascular perfusion. (b) ME/CFS may show basement membrane pathology contributing to orthostatic intolerance and tissue hypoperfusion. (c) Targeted restoration of basal lamina integrity (MMP inhibition, collagen IV support, growth factor modulation) could improve capillary function. (d) Pericyte-mediated capillary stabilization may support basement membrane repair.],
  evidence: [Basement membrane thickening documented in ME/CFS and Long COVID microvascular pathology. Capillary pericyte biology established in angiogenesis. ME/CFS microvascular dysfunction documented.],
  treatment: [Basement membrane-targeted therapies to restore capillary function and improve tissue perfusion in ME/CFS with microvascular dysfunction.],
  chapter-ref: [ct arb capillary],
)

#registry-entry(
  [Matrix Stiffness-Mast Cell Priming],
  type: "H",
  certainty: "0.45",
  mechanism: [(a) Matrix stiffness influences immune cell phenotype and activation; stiffer ECM environments promote pro-inflammatory phenotypes. (b) ME/CFS may show increased tissue stiffness due to ECM accumulation or crosslinking, potentially priming mast cells for hyperreactivity. (c) Mechanoreceptors (Piezo1/2, integrins) on mast cells may sense ECM stiffness and trigger degranulation. (d) Softening of ECM or mechanoreceptor blockade could reduce mast cell activation in stiff-tissue ME/CFS subtypes.],
  evidence: [Matrix stiffness effects on immune cell activation established in tissue engineering. Mast cell mechanosensitivity documented. ME/CFS ECM accumulation hypothesized.],
  treatment: [ECM softening or mechanoreceptor blockade to reduce mast cell activation in ME/CFS patients with stiff-tissue phenotypes or elevated mast cell mediators.],
  chapter-ref: [ct matrix stiffness mast cell],
)

#registry-entry(
  [LOX-Mediated Collagen Stabilization],
  type: "H",
  certainty: "0.40",
  mechanism: [(a) LOX (lysyl oxidase) enzymes catalyze collagen and elastin crosslinking, essential for tissue strength and stability. (b) ROS-mediated inhibition of LOX in ME/CFS may impair collagen crosslinking, contributing to ligament laxity and connective tissue weakness. (c) Co-factors (ascorbic acid, copper) are required for LOX activity; deficiency may exacerbate the defect. (d) Supplementation with LOX cofactors or modulation of LOX activity could improve connective tissue integrity.],
  evidence: [LOX function essential for collagen crosslinking established in connective tissue biology. ROS inhibition of LOX documented in oxidative stress pathophysiology. ME/CFS ROS elevation documented.],
  treatment: [LOX cofactor supplementation (ascorbic acid, copper, vitamin C) to restore collagen crosslinking in ME/CFS with connective tissue weakness or hypermobility.],
  chapter-ref: [ct lox collagen],
)

#registry-entry(
  [ECM Microbiome Interaction],
  type: "H",
  certainty: "0.40",
  mechanism: [(a) Extracellular matrix provides structural scaffold and bioactive niches for host cells and microorganisms. (b) Microbial products (LPS, bacterial peptidoglycan) can bind to ECM components, modulating inflammation and immune cell recruitment. (c) Gut microbiome dysbiosis in ME/CFS may influence ECM composition via microbial metabolites (short-chain fatty acids, indoles) that modulate ECM production and remodeling. (d) ECM microenvironment may selectively promote pathogenic microbial communities, creating a bidirectional dysbiosis-ECM interaction.],
  evidence: [ECM microenvironment influences microbial colonization established in tissue engineering. Microbial metabolites modulate collagen and fibronectin expression documented. ME/CFS gut dysbiosis well-documented.],
  treatment: [Microbiome-targeted interventions (probiotics, antimicrobial peptides, diet) may modulate ECM composition and reduce inflammation in ME/CFS via microbiome-ECM cross-talk.],
  chapter-ref: [ct ecm microbiome],
)

#registry-entry(
  [Elastin-Specific Degradation],
  type: "H",
  certainty: "0.40",
  mechanism: [(a) Elastin provides elastic recoil to connective tissues; its degradation contributes to tissue laxity and structural weakness. (b) Elastin-specific MMPs (MMP-12, MMP-9) may be dysregulated in ME/CFS, leading to elastin breakdown. (c) Elastin fragments (sVTI) may serve as diagnostic biomarkers of connective tissue degradation. (d) Elastin-specific protection strategies (MMP inhibitors, elastin stabilizers) could preserve tissue integrity.],
  evidence: [Elastin degradation mechanisms established in connective tissue biology. MMP-12 and MMP-9 elastolytic activity documented. Elastin fragment biomarkers developed.],
  treatment: [Elastin-specific biomarkers (sVTI) to detect connective tissue degradation in ME/CFS, with elastin-protective therapies for tissue preservation.],
  chapter-ref: [ct elastin degradation],
)

#registry-entry(
  [HIF-1alpha Isoform Targeting],
  type: "H",
  certainty: "0.40",
  mechanism: [(a) HIF-1alpha and HIF-2alpha have distinct target gene profiles; HIF-1alpha preferentially induces MMP-3 and ECM degradation. (b) ME/CFS may show HIF-1alpha-dominant activation driving connective tissue pathology. (c) Selective HIF-1alpha inhibition could reduce ECM degradation without affecting beneficial HIF-2alpha functions (erythropoiesis, angiogenesis). (d) Isoform-specific modulation may provide connective tissue benefits while minimizing off-target effects.],
  evidence: [HIF-1alpha vs HIF-2alpha isoform specificity documented in hypoxia biology. HIF-1alpha-driven MMP-3 expression established. Isoform-selective inhibitors in development.],
  treatment: [Isoform-selective HIF-1alpha inhibition to reduce MMP-3 and ECM degradation in ME/CFS with connective tissue pathology.],
  chapter-ref: [ct hif isoform],
)

#registry-entry(
  [Periostin-Targeted ECM Restoration],
  type: "H",
  certainty: "0.35",
  mechanism: [(a) Periostin (POSTN) is a matricellular protein critical for collagen crosslinking and tissue remodeling. (b) ME/CFS may involve periostin deficiency or dysregulation, impairing connective tissue repair. (c) Recombinant periostin or TGF-beta modulators could restore ECM integrity in hypermobile patients. (d) This addresses the molecular basis of connective tissue weakness in ME/CFS.],
  evidence: [Periostin mutations cause connective tissue disorders; periostin-deficient mice show ligament laxity and impaired wound healing; TGF-beta dysregulation documented in ME/CFS.],
  treatment: [Targeted biological approach to connective tissue pathology using recombinant periostin or TGF-beta modulators to restore collagen crosslinking.],
  chapter-ref: [periostin ecm restoration],
)

#registry-entry(
  [Post-Infectious Acquired Chiari],
  type: "H",
  certainty: "0.35",
  mechanism: [(a) Chiari malformation type I can develop post-infectiously, particularly following infections causing significant inflammation or swelling. (b) Post-infectious CCI may occur via chronic inflammation-induced swelling of cerebellar tonsils or ligamentous laxity at craniovertebral junction. (c) Clinical presentation (headache, neck pain, dizziness) overlaps with ME/CFS, contributing to diagnostic confusion. (d) MRI evaluation should be considered in ME/CFS patients with unexplained orthostatic symptoms, cervical pain, or neurological abnormalities.],
  evidence: [Post-infectious CCI documented in Long COVID, post-viral meningoencephalitis, and infectious mononucleosis. Cervical symptoms common in ME/CFS. MRI screening guidelines established.],
  treatment: [MRI-based screening for CCI in ME/CFS patients with cervical symptoms to identify post-infectious structural subtype requiring decompression or rehabilitation.],
  chapter-ref: [ct acquired chiari],
)
=== Antigen-Specific IgE and Mast Cell Activation

#registry-entry(
  [Infection-Triggered Allergic Sensitization as Shared Upstream of Post-Viral Illness],
  type: "S",
  certainty: "0.30",
  evidence: [COVID-19 raises incident allergic disease at population scale (HR 1.20; asthma 2.25), replicated; epithelial alarmin→Th2 route plausible; ME/CFS shows Th2 bias but WITHOUT IgE elevation (a dissociation).],
  citations: [@oh2024incident @clarion2026postcovid @filippatos2025immunological @skowera2004type2],
  mechanism: [Epithelial injury → IL-33/IL-25/TSLP alarmins → Th2 polarization + ILC2 expansion → epigenetic Th2 scars → increased allergic disease incidence; in ME/CFS the Th2 shift appears IgE-independent.],
  chapter-ref: [ch14b: infection allergic sensitization],
  prediction: [Prospective post-COVID / post-tick cohorts: those who develop ME/CFS show higher new clinician-diagnosed allergic disease incidence than recoverers, driven by Th2-axis symptoms not total-IgE rises. Falsified if incidence equal or fully explained by total-IgE elevation.],
  treatment: [Reframes intuition: infection→allergic disease is general-population evidence, not an ME/CFS-IgE-allergy claim. No treatment implication.],
  limitation: [Population-level studies show ANY allergic disease, not antigen-specific IgE. Link to ME/CFS inferred, not demonstrated. Th2-bias study small (n=32).],
)

#registry-entry(
  [Minority Post-Infectious Subset Carries Antigen-Specific IgE to Spike or Tick Antigens],
  type: "S",
  certainty: "0.20",
  evidence: [Spike-specific IgE exists in acute COVID and correlates with severity; alpha-gal proves tick→antigen-specific IgE; both invisible to standard total/common-allergen IgE panels which are normal in ME/CFS.],
  citations: [@tan2022hypersensitivity @meltendorf2022iligespike @portilho2024igeanti @plattsmills2025immunology @wilson2024ticksalpha @vanrunen2015tickinduced @caberascruz2021tickhuman @gimenezorenga2025blood],
  mechanism: [Triggering infection (SARS-CoV-2 or tick) → Th2 (IL-4/IL-13) → antigen-specific IgE → persistent FcεRI sensitization of mast cells in a subset → chronic mediator release.],
  chapter-ref: [ch14b: ige antigen subset],
  prediction: [Antigen-specific IgE panels (anti-spike S1, anti-RBD, anti-alpha-gal) elevated in ≥15% subset of post-infectious ME/CFS vs controls and correlating with mast-cell symptom burden. Falsified if no elevation vs controls or if present but uncorrelated.],
  treatment: [If a real subset exists, antigen-specific (not standard) IgE testing could identify it; anti-IgE or mast-cell-targeted strategies are research-stage only — no clinical action implied.],
  limitation: [Never measured in ME/CFS. Total/allergen-specific IgE replicated-normal in ME/CFS. Giménez-Orenga 2025 suggests anti-spike IgE tracks COVID exposure, not ME/CFS state. Entirely unstudied.],
)

#registry-entry(
  [Mast-Cell Neuroinflammation in ME/CFS: IgE-Mediated vs Non-IgE Activation],
  type: "OQ",
  certainty: "---",
  evidence: [Histamine→H1R→microglia neurotoxicity, mast-cell→BBB/tryptase/PAR2→microglia, and CRH→intracranial mast-cell degranulation are all established in animal/in-vitro models; FcεRI vs non-IgE contribution in ME/CFS is unmeasured.],
  citations: [@rocha2016histamine @lakatos2025bidirectional @theoharides1995stressinduced @reparramirez2001igelevels @kowal2002prevalence],
  mechanism: [Mast cell activation (route unknown) → histamine/tryptase/CRH-amplified mediators → BBB disruption + microglial activation → neuroinflammation → brain fog / mood lability / dysautonomia.],
  chapter-ref: [ch14b: ige vs nonige neuroinflammation],
  prediction: [Direct measurement of FcεRI-cross-linking vs non-IgE (substance P, CRH, IL-33, MRGPRX2) mast-cell activation in ME/CFS blood/brain; replicated-normal IgE tilts toward non-IgE. Falsified-direction depends on which route dominates.],
  treatment: [Distinguishing routes prevents futile anti-IgE trials in a non-IgE-dominant population; no current clinical action.],
  limitation: [No study has measured the FcεRI-vs-non-IgE contribution in ME/CFS, in blood or brain. All mechanistic evidence is animal/in-vitro.],
)

#registry-entry(
  [Three-Group Anti-Spike IgE Serosurvey to Resolve Disease-Marker vs Exposure-Marker],
  type: "OQ",
  certainty: "---",
  evidence: [Anti-spike IgE assays exist (tan2022, meltendorf2022); three comparator groups exist; Giménez-Orenga 2025 already suggests signal tracks COVID exposure not ME/CFS state. Decisive, low-cost test of the IgE-as-driver hypothesis.],
  citations: [@tan2022hypersensitivity @meltendorf2022iligespike @gimenezorenga2025blood],
  mechanism: [Measure anti-spike (S1/S2/RBD) IgE, anti-nucleocapsid IgE, IgG4 across post-COVID ME/CFS vs post-COVID recovered vs prepandemic ME/CFS; correlate with severity + mast-cell mediators + neurocognition.],
  chapter-ref: [ch14b: antispike ige serosurvey],
  prediction: [Anti-spike IgE titres do NOT differ between post-COVID ME/CFS and post-COVID recovered after controlling for acute severity + time-since-infection → confirms exposure-marker, closes hypothesis. Higher in ME/CFS correlating with severity → re-opens it.],
  treatment: [Determines whether antihistamine/anti-IgE approaches are worth trialling at all; no current clinical action.],
  limitation: [Must control time-since-infection, acute severity, atopy, vaccination. Must use native conformational spike (denatured-antigen artifacts) and objective IgE (not self-report).],
)


=== Thermoregulation and Heat/Cold Exposure

#registry-entry(
  [ME/CFS-Heat Stroke Shared Pathway Vulnerability Explains Heat Intolerance],
  type: "H",
  certainty: "0.55",
  evidence: [Stanculescu et al.\ 2021 identified at least 9 shared pathophysiological mechanisms between heat stroke and ME/CFS: gut permeability/endotoxemia, systemic inflammation (IL-6, TNF-alpha, NLRP3), endothelial dysfunction, mitochondrial dysfunction, HSP deficiency, CNS neuroinflammation, splanchnic vasoconstriction, coagulation disorders, and similar transcriptomic profiles (downregulated respiratory chain genes, glycolysis switch). Female predominance, viral reactivation, and cumulative stress are shared predisposing factors.],
  citations: [@Stanculescu2021HeatStrokeMECFS],
  mechanism: [Environmental heat exposure activates existing vulnerable pathways in ME/CFS rather than imposing a new stressor. Gut barrier already compromised (40-67% elevated LPS antibodies) → heat stress further increases permeability → endotoxemia spike → systemic inflammatory response → PEM. This explains why heat, a universal stressor, is disproportionately harmful in ME/CFS.],
  chapter-ref: [ch02: autonomic; ch14: autonomic management; ch17: isr lifestyle misc],
  prediction: [ME/CFS patients exposed to standardized environmental heat (30°C, 50% humidity, 2 hours) will show greater increases in LPS, IL-6, and fatigue scores vs healthy controls and vs ME/CFS patients at thermoneutral. Gastric permeability testing (lactulose/rhamnose) will show worsening post-heat in ME/CFS but not controls.],
  treatment: [Heat avoidance during heat waves and hot environments is justified by shared vulnerability pathways. Pre-cooling strategies and gut barrier support (butyrate, glutamine) prior to unavoidable heat exposure may reduce PEM risk. Research-stage.],
  limitation: [Narrative review (no systematic methodology); no new primary data. Shared mechanism inference from heat stroke → ME/CFS, not direct experimental evidence from ME/CFS patients. No prospective ME/CFS heat-challenge data. Certainty lowered from review mechanism strength due to absence of direct ME/CFS validation.],
)

#registry-entry(
  [HMGB1 as Central DAMP Sustaining Neuroinflammation in ME/CFS],
  type: "H",
  certainty: "0.55",
  evidence: [(a) HMGB1 translocates from nucleus to extracellular space under cellular stress, signaling via TLR4/TLR9/RAGE @Ibrahim2026HMGB1Neuroinflammation. (b) HMGB1 redox state determines bioactivity: disulfide-HMGB1 pro-inflammatory, fully reduced chemotactic @Ibrahim2026HMGB1Neuroinflammation. (c) Exercise-induced oxidative stress may shift HMGB1 toward disulfide form, triggering PEM. (d) HMGB1-pCTS-L (cathepsin L) complex amplifies inflammation @Chen2026HMGB1pCTSLAxis. (e) HMGB1 binds immunogenic DNA, enhancing cGAS-STING type I interferon induction. (f) No study has measured extracellular HMGB1 or redox isoforms in ME/CFS.],
  citations: [@Ibrahim2026HMGB1Neuroinflammation @Chen2026HMGB1pCTSLAxis],
  mechanism: [Stress $arrow.r$ HMGB1 release $arrow.r$ TLR4/RAGE $arrow.r$ neuroinflammation. Exertion $arrow.r$ disulfide-HMGB1 $arrow.r$ PEM. BBB disruption $arrow.r$ peripheral HMGB1 enters CNS $arrow.r$ microglial amplification.],
  chapter-ref: [ch17: um resolution],
  prediction: [Total HMGB1 elevated in ME/CFS. Disulfide:reduced ratio increases post-exertion, correlating with PEM. HMGB1 correlates with TLR4 activation and IL-$1beta$ in CSF.],
  treatment: [HMGB1 Box A antagonists or TLR4 inhibitors candidate.],
  limitation: [No ME/CFS HMGB1 data. Chronic inflammation role less established than acute. Redox isoform ELISA specialised.],
)

#registry-entry(
  [S100A8/A9 (Calprotectin) as Microglial Priming Signal and NET Proxy],
  type: "H",
  certainty: "0.55",
  evidence: [(a) Nunes et al. (2024) demonstrated significant S100-A9 upregulation in ME/CFS plasma @Nunes2024S100A9MECFS. (b) S100A8/A9 signals via TLR4/RAGE to activate microglia. (c) Calprotectin correlates with NET burden ($r gt.eq 0.745$) @Hetland2022. (d) Serial measurement pre/post CPET could serve as low-cost exertion biomarker.],
  citations: [@Nunes2024S100A9MECFS @Hetland2022],
  mechanism: [S100A8/A9 from neutrophils $arrow.r$ TLR4/RAGE on microglia $arrow.r$ neuroinflammation. Post-CPET calprotectin rise $arrow.r$ NET activation $arrow.r$ PEM prediction.],
  chapter-ref: [ch17: um resolution; ch07: innate immunity],
  prediction: [Calprotectin rises 6-24h post-CPET in ME/CFS, correlates with PEM. Correlates with NET markers (MPO-DNA, H3cit). Highest responders show highest TSPO PET microglial activation.],
  treatment: [Calprotectin as low-cost exertion biomarker.],
  limitation: [Single-cohort proteomics. NET correlation from VITT, not ME/CFS. No serial exertion data.],
)

#registry-entry(
  [Endothelin-1-Mediated Vascular Tone Dysregulation Underlies Thermoregulatory Failure in ME/CFS],
  type: "S",
  certainty: "0.55",
  evidence: [Cambras et al.\ 2023 demonstrated skin temperature circadian rhythm alterations in ME/CFS significantly associated with ET-1 levels (p < 0.01). ET-1 is a potent vasoconstrictor; its association with temperature rhythm stability links vascular tone dysregulation directly to thermoregulatory symptoms. Self-reported symptom severity correlated with both ET-1 and temperature rhythm disruption.],
  citations: [@Cambras2023SkinTemperatureEndothelin],
  mechanism: [ET-1 → vasoconstriction → impaired peripheral blood flow regulation → disrupted skin temperature circadian rhythms → heat/cold intolerance symptoms. Autonomic dysfunction + ET-1 dysregulation = dual-hit thermoregulatory failure.],
  chapter-ref: [ch09: circadian; ch02: autonomic; ch14: autonomic management],
  prediction: [ME/CFS patients with documented heat intolerance will show elevated ET-1 and disrupted skin temperature rhythm amplitude vs ME/CFS without heat intolerance and vs healthy controls. ET-1 receptor antagonists should improve thermal tolerance.],
  treatment: [ET-1 receptor antagonists (bosentan, macitentan) as candidate thermoregulatory therapy. Endothelin pathway as biomarker for thermal intolerance severity.],
  limitation: [Single study; sample size unclear from available abstract; causality not established (ET-1 as marker vs driver). No ET-1 antagonist data in ME/CFS.],
)

#registry-entry(
  [Distinct GPCR Autoantibody Profiles Discriminate ME/CFS from PCC],
  type: "H",
  certainty: "0.50",
  evidence: [(a) Azcue et al.\ (2026, $n=59$ ME/CFS, $n=96$ PCC, $n=36$ HCs) found distinct GPCR AAb profiles: ME/CFS patients had significantly higher $beta_2$-adrenergic AAb titers ($F_{2,186}=3.15$, $p=0.046$), while PCC patients showed more borderline/pathological M3 muscarinic AAb results. (b) These distinct profiles suggest that the immunological mechanisms driving autoantibody production differ between post-infectious conditions despite shared clinical features. (c) The finding implies that PCC is not simply a larger-sample replication of ME/CFS mechanisms — trigger-specific immunological trajectories may produce condition-specific autoantibody repertoires. (d) Certainty moderated to 0.50: single study, ELISA methodology, sample size moderate, not yet independently replicated.],
  citations: [@Azcue2026gpcr],
  mechanism: [$beta_2$-adrenergic AAbs (elevated in ME/CFS) may reflect chronic sympathovagal dysregulation in longer-duration illness, while M3 muscarinic AAbs (trending in PCC) may reflect early-stage immune activation in more recent-onset disease. Different viral triggers (SARS-CoV-2 vs unknown/enhant pathogens in classic ME/CFS) may programme distinct B cell repertoires.],
  chapter-ref: [ch07: autoantibodies; ch14d: cross disease],
  prediction: [Independent replication in separate cohort ($n >= 100$ per condition) using blinded ELISA + confirmatory functional assay will reproduce the ME/CFS > PCC $beta_2$-AAb and PCC > ME/CFS M3-AAb profile differences with similar effect sizes. Falsified if pooled analysis of 3+ independent cohorts shows no significant profile differences or if functional assays show no activity of differentially elevated AAbs.],
  treatment: [$beta_2$ vs M3 AAb ratio could serve as a biomarker for distinguishing post-COVID ME/CFS from non-COVID ME/CFS in clinical settings where trigger history is uncertain. Could also guide therapy selection: $beta_2$-predominant → $beta$-blocker trials; M3-predominant → anticholinergic or muscarinic modulation. Research-stage only; no clinical recommendation.],
  limitation: [Single study, moderate sample size, CellTrend ELISA specificity concerns, no independent replication. Distinct profiles may reflect illness duration confound (ME/CFS longer duration → $beta_2$ accumulation) rather than distinct pathophysiology. Germain 2025 null in chronic ME/CFS cohort using different platform weakens confidence.],
)

#registry-entry(
  [$beta_2$-Adrenergic Autoantibodies Drive Sympathovagal Imbalance in ME/CFS],
  type: "H",
  certainty: "0.50",
  evidence: [(a) Azcue et al.\ (2026) found $beta_2$-adrenergic AAb titers correlated with sympathovagal imbalance in ME/CFS as measured by HRV frequency-domain parameters ($r=0.45$, $p=0.001$, $n=59$). (b) This is the strongest quantitative autonomic-autoantibody correlation in ME/CFS to date. (c) $beta_2$-adrenergic receptors are expressed in cardiac sinoatrial node, vasculature, and sympathetic ganglia — autoantibody binding at any of these sites could produce sympathovagal imbalance. (d) Functional activity of the antibodies (agonistic vs antagonistic) has not been determined in this cohort.],
  citations: [@Azcue2026gpcr @Sotzny2021 @Stein2024immunoadsorption],
  mechanism: [$beta_2$-adrenergic AAbs $arrow.r$ receptor binding (agonist or antagonist effect depending on epitope) $arrow.r$ altered sympathetic signaling to heart and vasculature $arrow.r$ HRV power shifts between LF and HF bands $arrow.r$ sympathovagal imbalance measurable as elevated LF/HF ratio or reduced total HRV power.],
  chapter-ref: [ch10: autonomic; ch07: autoantibodies],
  prediction: [Longitudinal study ($n >= 50$): immunoadsorption → $beta_2$-AAb reduction → normalization of HRV sympathovagal parameters within 4 weeks post-treatment, with effect size proportional to pre-treatment $beta_2$-AAb titre. Falsified if $beta_2$-AAb depletion does not produce HRV normalization despite successful titre reduction.],
  treatment: [If $beta_2$-AAbs are causally driving sympathovagal imbalance, autoantibody-targeted therapies (immunoadsorption, BC007, daratumumab) should improve HRV parameters and autonomic symptoms. $beta_2$-AAb titre could serve as a biomarker for selecting patients for autoantibody-reduction trials and monitoring treatment response.],
  limitation: [Cross-sectional correlation; causality not established. CellTrend ELISA specificity concerns. Correlation $r=0.45$ is moderate — explains ~20% of HRV variance. Other mechanisms (central autonomic dysfunction, baroreflex impairment, peripheral denervation) likely contribute to remaining variance. Not yet replicated in independent cohort.],
)

#registry-entry(
  [IgG Subclass Profiling Resolves GPCR Autoantibody Contradictions in ME/CFS],
  type: "H",
  certainty: "0.50",
  evidence: [(a) Pollak 2014 meta-analysis of NMDAR autoantibodies in schizophrenia: 7.98% positive any Ig class, only 1.46% IgG @Pollak2014NMDARPrevalence. (b) Schou 2016 (n=925): 11.6% anti-neuronal Ab overall, only 0.5% NMDAR IgG @Schou2016NeuronalAutoantibodies. (c) Hartwig 2020: ME/CFS IgG fails to activate beta2-AdR in functional assay @Hartwig2020. (d) The IgG subclass paradox: total IgG autoantibodies are often non-pathogenic; the pathogenic fraction may be restricted to IgG1/IgG3 (complement-fixing, high FcgammaR affinity) while IgG4 (non-classical, Fab-arm exchange) may be protective or epiphenomenonal. (e) GPCR ELISA studies (Azcue 2026, Wirth 2021) measure total IgG — mixing pathogenic and non-pathogenic subclasses, diluting the signal. (f) If ME/CFS GPCR AAbs are predominantly IgG4, ELISA positivity without functional pathogenicity is expected; if IgG1/IgG3, pathogenicity is more likely.],
  citations: [@Pollak2014NMDARPrevalence @Schou2016NeuronalAutoantibodies @Hartwig2020 @Azcue2026gpcr],
  mechanism: [GPCR AAb subclass profiling (IgG1-4) will reveal that the apparent contradiction between CellTrend ELISA positivity and Germain REAP null is partly explained by different IgG subclass detection. Hypothesis: ELISA detects IgG4-dominated response (conformational epitopes, non-pathogenic); REAP detects IgG1/IgG3 (linear epitopes, potentially pathogenic).],
  chapter-ref: [ch14d: igg subclass profiling; ch07: autoantibodies],
  prediction: [IgG1/IgG3 subclass titers correlate more strongly with autonomic symptom severity than total IgG; IgG4 anti-GPCR titers negatively correlate with severity; IgG1/IgG4 ratio discriminates immunoadsorption responders from non-responders. Falsified if IgG subclass profiling does not outperform total IgG in predicting severity or treatment response in a cohort of n ≥ 100 ME/CFS patients.],
  treatment: [IgG subclass profiling prior to autoantibody-targeted therapy (immunoadsorption, BC007) — IgG1/IgG3-predominant patients selected for treatment, IgG4-predominant patients deferred.],
  limitation: [No ME/CFS GPCR IgG subclass data. Cross-disease analogy from schizophrenia subclass prevalence. Hartwig 2020 ME/CFS functional null consistent with IgG4 dominance but not tested.],
)

#registry-entry(
  [SPM Deficiency as Chronicity Switch in ME/CFS],
  type: "H",
  certainty: "0.45",
  evidence: [(a) Engert et al. (2026) propose sleep disturbance dysregulates SPM biosynthesis (resolvins, protectins, maresins) in Long COVID, producing failed resolution rather than excessive inflammation @Engert2026SPMSleepLongCOVID. (b) Rauf et al. (2026) characterize PASC as a disorder of impaired innate immune resolution with persistent TLR/RIG-I/NLR/cGAS-STING signaling @Rauf2026PASCResolutionFailure. (c) Gracia Aznar et al. (2024) showed SPM-enriched marine oil improved resolution markers in a 12-week open-label PCS trial @GraciaAznar2024SPMSupplementPCS. (d) SPMs have not been measured in ME/CFS plasma or CSF. (e) Cholinergic anti-inflammatory pathway (vagal alpha7-nAChR) stimulates resolvin production, linking reduced HRV in ME/CFS to resolution deficit.],
  citations: [@Engert2026SPMSleepLongCOVID @Serhan2022SPMResolvinLongCOVID @Rauf2026PASCResolutionFailure @GraciaAznar2024SPMSupplementPCS],
  mechanism: [SPM deficiency $arrow.r$ failed resolution $arrow.r$ every trigger converts to sustained event. Vagal tone reduction $arrow.r$ impaired SPM synthesis $arrow.r$ compounds resolution failure.],
  chapter-ref: [ch17: um resolution],
  prediction: [Targeted SPM lipidomics (RvD1-6, RvE1-3, LXA4, MaR1, PD1) in ME/CFS plasma vs controls pre/post CPET: lower baseline, blunted post-exertion rise, correlation with PEM duration.],
  treatment: [SPM supplementation or vagal-SPM enhancement (tVNS) candidate.],
  limitation: [No ME/CFS SPM data. Specialised LC-MS/MS required. One open-label PCS trial only.],
)

#registry-entry(
  [Schizophrenia Autoantibody Discovery Arc as a Model for ME/CFS],
  type: "H",
  certainty: "0.45",
  evidence: [Schizophrenia autoantibody trajectory (Bartley & Ross 2020) as cross-disease analogy for ME/CFS autoantibody subgroup discovery. Nemani 2026 (preprint): 2× autoantibody burden in schizophrenia via REAP. Dalmau 2007: anti-NMDAR encephalitis as treatable autoimmune psychosis. Key disanalogies: IA-PACS-CFS was autoantibody-enriched yet null (challenges simple selection narrative); Germain 2025 REAP in ME/CFS found null (may reflect domain-fragment limitation, unresolved). Cross-disease analogy, not direct evidence. Certainty 0.45.],
  citations: [@Bartley2020SchizophreniaHomecoming @Nemani2026REAPSchizophrenia @Dalmau2008NMDAREncephalitis],
  mechanism: [Cross-disease analogy: unbiased screening reveals hidden autoantibody subgroups.],
  chapter-ref: [ch14d: schizophrenia mecfs autoantibody parallel],
  prediction: [REAP screening of ME/CFS plasma will identify autoantibody targets beyond GPCR panels. Falsified if total burden equivalent to controls.],
  treatment: [Unbiased screening highest-yield experiment.],
  limitation: [Cross-disease analogy; no ME/CFS data.],
)

#registry-entry(
  [CRPS GPCR Autoantibody Parallel to ME/CFS Autonomic Dysfunction],
  type: "S",
  certainty: "0.45",
  evidence: [(a) Blaes et al.\ (2011) demonstrated functionally active $beta_2$-adrenergic and M2 muscarinic autoantibodies with agonistic properties in CRPS using cardiomyocyte bioassays. (b) CRPS shares small fiber neuropathy, autonomic dysregulation, and hyperalgesia with ME/CFS. (c) Key difference: CRPS AAbs are functionally validated agonistic; ME/CFS AAbs are ELISA-detected with undetermined functional status. (d) CRPS proves GPCR AAbs can cause autonomic dysfunction in humans (existence proof) but does not directly validate ME/CFS AAb pathogenicity — different functional class, different assay methodology for pathogenicity demonstration. Certainty 0.55→0.45 after adversarial review addressing "natural positive control" overstatement.],
  citations: [@Blaes2011crps @Azcue2026gpcr],
  mechanism: [CRPS → functionally validated GPCR AAb pathogenicity → ME/CFS parallel possible but unproven due to divergent functional profiles (CRPS agonistic vs ME/CFS unknown) and different detection platforms. Immunoadsorption benefit in both is consistent with shared GPCR-AAb pathology OR non-specific immune benefit.],
  chapter-ref: [ch14d: crps gpcr parallel; ch07: autoantibodies],
  prediction: [Functional GPCR AAb assays (cardiomyocyte bioassays, receptor internalization) on ME/CFS sera will demonstrate a distinct functional profile from CRPS (desensitization/antagonism vs agonism). Falsified if ME/CFS sera show identical functional profile to CRPS.],
  treatment: [If ME/CFS GPCR AAbs are functionally validated, therapeutic strategies from CRPS (immunoadsorption, beta-blockade) transfer. If distinct, ME/CFS-specific strategies (receptor resensitization, Fc$gamma$R blockade) required.],
  limitation: [CRPS n=20; indirect comparison to ME/CFS via different assay platforms. No head-to-head functional comparison of CRPS vs ME/CFS sera. Opposite functional effects weaken rather than strengthen the direct parallel.],
)

#registry-entry(
  [ME/CFS Autoantibody Subgroup Discovery Trajectory Prediction],
  type: "S",
  certainty: "0.45",
  evidence: [(a) If the schizophrenia trajectory is a model for ME/CFS: (1) unbiased proteome-wide screening (REAP) will identify novel autoantibody targets enriched in a subset of ME/CFS patients; (2) autoantibody-positive subgroup will show preferential immunomodulatory therapy response; (3) initial discovery from infection-triggered cohort with clinical autoimmune features. (b) Germain 2025 null may reflect either genuine absence or REAP individual-domain limitation for conformational epitopes — schizophrenia's decades of negative targeted screening before REAP discovery suggests option (b) cannot be excluded. Certainty 0.40.],
  citations: [@Germain2025autoantibody @Nemani2026REAPSchizophrenia @Bartley2020SchizophreniaHomecoming],
  mechanism: [Unbiased screening likely to reveal autoantibody targets missed by GPCR ELISA; Germain null is not the final word unless confirmed by complementary platforms using full-length native proteins.],
  chapter-ref: [ch14d: schizophrenia trajectory mecfs],
  prediction: [Head-to-head comparison of three platforms (CellTrend GPCR ELISA, REAP with full-length native protein libraries, multi-tissue Western blot) in same ME/CFS cohort (n≥100) will identify different but partially overlapping signatures — unbiased platforms detect targets missed by GPCR ELISA alone. Falsified if all three platforms converge on equivalent null.],
  treatment: [Multi-platform autoantibody screening strategy recommended; single-platform nulls should not be accepted as definitive.],
  limitation: [Zero ME/CFS studies using proteome-wide unbiased screening. Cross-disease prediction only.],
)

#registry-entry(
  [GPCR Autoantibody-Based Autonomic Phenotyping Defines Treatable ME/CFS Subtypes],
  type: "H",
  certainty: "0.40",
  evidence: [(a) Azcue et al.\ (2026) provides the first study combining GPCR AAb measurement ($beta_2$, M1, M3, M4) with comprehensive autonomic (HRV, tilt-table, COMPASS-31, hemodynamics) and cognitive (7 domains) testing in the same ME/CFS patients ($n=59$). (b) Proposed four-subtype taxonomy: $beta_2$-dominant (reduced HRV, POTS → beta-blocker/immunoadsorption candidates), M3-dominant (orthostatic intolerance → tVNS candidates), M1/M4-low-cognitive (impaired cognition → cognitive remediation candidates), AAb-negative (alternative pathophysiology). (c) Subtypes are provisional — constructed from single dataset without formal cluster analysis. (d) No treatment-response data exist for any stratified indication; Stein 2025/Fluge 2025 enrolled without subtype testing. Certainty 0.40 (from 0.50 after adversarial review).],
  citations: [@Azcue2026gpcr @Sotzny2021 @Stein2024immunoadsorption],
  mechanism: [AAb profiling + autonomic/cognitive phenotyping → biologically distinct endotypes → differential therapeutic targeting → improved response rates. Untested in any trial.],
  chapter-ref: [ch07: gpcr aab autonomic phenotyping; ch10: hrv],
  prediction: [Prospective stratified trial ($n >= 150$): AAb-matched arms (e.g., $beta_2$-dominant → immunoadsorption) show higher response rates than mismatched arms ($beta_2$-dominant → tVNS). Falsified if matching does not improve over unstratified treatment.],
  treatment: [Precision medicine strategy: select patient subpopulation most likely to respond to each intervention. Could reduce trial sample size requirements by enriching for responders. Research-stage only; no clinical recommendation.],
  limitation: [Single GPCR AAb dataset ($n=59$); subtypes constructed without formal clustering; no RCT testing; Germain 2025 null unsettles platform selection; Stein/Fluge trial data do not test stratified vs unselected response.],
)

#registry-entry(
  [The Many Schizophrenias Lesson for ME/CFS Subtyping],
  type: "S",
  certainty: "0.40",
  evidence: [Kraepelin and Bleuler concluded schizophrenia is a group of diseases — we should speak of schizophrenias in the plural. The same diagnostic heterogeneity may mask treatable subgroups in ME/CFS. Autoantibody-based subgrouping controversial but may prove as fruitful as in schizophrenia. Certainty 0.40.],
  citations: [@Bartley2020SchizophreniaHomecoming],
  mechanism: [Diagnostic heterogeneity masks subgroups; cost of pursuing single unifying models is delayed treatment discovery; solution requires biological subgrouping.],
  chapter-ref: [ch14d: many mecfss lesson],
  prediction: [Four autoantibody-defined subgroups show non-equivalent immunotherapy response (interaction p < 0.05); double-negative subgroup shows no response (effect size < 0.2). Falsified if interaction non-significant or double-negative shows effect size≥0.3.],
  treatment: [Subgroup stratification in immunotherapy trials; autoantibody profiling standard.],
  limitation: [Cross-disease analogy only; no ME/CFS subgroup-stratified RCT. Well-established schizophrenia precedent.],
)

#registry-entry(
  [BBB Disruption and Autoantibody Access as Dual-Hit Feed-Forward Loop in ME/CFS],
  type: "S",
  certainty: "0.40",
  evidence: [(a) ME/CFS involves BBB dysfunction (Chapter @ch:neurological). (b) If ME/CFS autoantibodies are pathogenic, BBB disruption enables their CNS access — autoantibodies can then target BBB antigens themselves, further disrupting barrier integrity. (c) Autoantibodies against brain endothelial antigens are documented in neuropsychiatric SLE, where anti-NR2/NMDAR antibodies cross a compromised BBB @Kowal2004NRLupusBBB. (d) No study has measured anti-BBB autoantibodies in ME/CFS.],
  citations: [@Kowal2004NRLupusBBB],
  mechanism: [Infection/inflammation → initial BBB disruption → peripheral autoantibodies enter CNS → some target BBB endothelium → further disruption → more autoantibody CNS access → feed-forward amplification.],
  chapter-ref: [ch14d: bbb autoantibody feedforward; ch08: bbb],
  prediction: [Anti-BBB endothelial antigen autoantibodies enriched in ME/CFS vs controls; associated with elevated Q_Alb (>7.0); IgG from ME/CFS patients increases endothelial monolayer permeability in vitro. Falsified if anti-BBB AAbs are not significantly elevated or do not correlate with BBB permeability markers.],
  treatment: [If validated, BBB stabilization (statins, corticosteroids — research-stage) becomes a therapeutic target to break the feed-forward loop.],
  limitation: [Zero ME/CFS anti-BBB autoantibody data. BBB disruption in ME/CFS is inferred from CSF/serum albumin ratio, not molecularly characterized.],
)

#registry-entry(
  [Conformational Epitope Hypothesis Resolves Germain REAP Null in ME/CFS],
  type: "S",
  certainty: "0.40",
  evidence: [(a) Germain 2025 used REAP (protein microarray) and found no significant autoantibody differences between ME/CFS and controls @Germain2025autoantibody. (b) REAP uses recombinantly expressed protein fragments — linear epitopes only. (c) Most GPCR ELISA assays (CellTrend) use full-length, membrane-embedded receptors with native conformation — capturing conformational epitopes. (d) The discrepancy between REAP null and ELISA positivity may reflect that ME/CFS autoantibodies predominantly target conformational epitopes requiring full-length protein in native membrane context — not captured by REAP linear fragments. (e) Schizophrenia parallel: decades of targeted autoantibody negativity resolved only when unbiased full-length protein screens revealed hidden burden.],
  citations: [@Germain2025autoantibody @Nemani2026REAPSchizophrenia],
  mechanism: [If ME/CFS autoantibodies target conformational (3D) epitopes on native GPCRs, REAP using linear protein fragments would systematically miss them. Cell-based ELISA using full-length membrane-embedded receptors would detect them. The REAP null is therefore not a refutation of the GPCR AAb hypothesis — it is a methodological constraint.],
  chapter-ref: [ch14d: conformational epitope germain; ch07: autoantibodies],
  prediction: [Head-to-head comparison of three platforms (CellTrend GPCR ELISA, REAP, and cell-based functional assay) in same ME/CFS cohort (n >= 100) will show correlation between CellTrend and functional assay (both use native conformation) but not between either and REAP. Falsified if all three platforms converge on equivalent null.],
  treatment: [Multi-platform autoantibody screening strategy recommended; REAP-only nulls should not be accepted as definitive. Cell-based functional assays should be the gold standard for GPCR AAb detection.],
  limitation: [Conformational epitope hypothesis is untested in ME/CFS. REAP may capture some conformational epitopes if proteins are properly folded. Platform comparison study has not been conducted.],
)

#registry-entry(
  [Controlled Passive Heat Therapy Benefit Despite Heat Intolerance],
  type: "S",
  certainty: "0.35",
  evidence: [Soejima et al.\ 2015: Waon far-infrared sauna (60°C, 15 min, 5x/week × 4 weeks, n=10, uncontrolled, unblinded) reported reduced fatigue; cannot distinguish treatment from placebo. Hochecker et al.\ 2025: whole-body hyperthermia (39°C, n=9, single center, unreplicated) reduced autophagy and improved PBMC mitochondrial respiration (basal +66.60%, ATP +61.41%, spare +112.35%); no clinical outcomes measured. Whether these two observations are causally connected is unknown.],
  citations: [@Soejima2015WaonTherapyCFS @Hochecker2025HyperthermiaMECFS],
  mechanism: [Passive heat → vasodilation → improved tissue perfusion and oxygen delivery → reduced hypoxia-induced autophagy + enhanced mitochondrial respiration (in PBMCs only — extrapolation to thermoeffector cells untested).],
  chapter-ref: [ch14: controlled heat paradox; ch17: heat hsat2 caution],
  prediction: [Blinded sham-controlled RCT (n ≥ 30): Waon therapy vs thermoneutral rest → significant improvement in fatigue and mitochondrial respiration with PEM incidence not exceeding control. Refuted if blinded design eliminates signal seen in open-label studies.],
  treatment: [If confirmed: medically supervised heat therapy protocol for selected ME/CFS patients who pass heat tolerance screening in a clinical trial. Until confirmed: research-stage only; NOT a clinical recommendation.],
  limitation: [Two small uncontrolled pilots only (n=9, n=10); clinical benefit unestablished; PBMC findings don't demonstrate whole-body thermoregulatory improvement; HSAT2 risk in susceptible patients uncharacterized. Not replicated.],
)

#registry-entry(
  [Muscarinic Autoantibodies Positively Correlate with Memory in ME/CFS],
  type: "S",
  certainty: "0.35",
  evidence: [(a) Azcue et al.\ (2026) found M1, M3, and M4 muscarinic AAb titers positively correlated with verbal and working memory performance in ME/CFS. (b) Counterintuitive direction: higher autoantibodies associated with better cognition. (c) Possible explanations: partial agonism compensating for low acetylcholine tone, compensatory receptor upregulation tracking antibody production, or ELISA artifacts. (d) Without functional validation, this remains a statistical observation only.],
  citations: [@Azcue2026gpcr],
  mechanism: [M1/M3/M4 receptor autoantibodies → partial agonism → weak compensatory cholinergic stimulation → improved memory encoding and working memory. Alternatively: cognitive impairment → cholinergic compensatory upregulation → more receptor targets for autoantibody binding → correlation without causation.],
  chapter-ref: [ch08: muscarinic cognition; ch07: autoantibodies],
  prediction: [Functional calcium flux or impedance assays on M1/M3/M4-expressing cell lines with purified ME/CFS IgG will demonstrate agonistic signaling (if partial agonism correct), antagonistic signaling (if pathogenic but correlation spurious), or no effect (if ELISA artifact). Falsified if functional assays show no receptor activity despite positive ELISA titers.],
  treatment: [If muscarinic AAbs are compensatory partial agonists, their depletion (immunoadsorption) could transiently worsen cognition — a clinically important warning for autoantibody-targeted trials. Monitoring verbal/working memory pre/post immunoadsorption essential.],
  limitation: [Single study, $n=59$, not replicated. Counterintuitive direction. CellTrend ELISA specificity concerns. No functional validation. Positive correlation could be statistical artifact — requires independent replication with functional confirmation before any mechanistic interpretation.],
)

#registry-entry(
  [Early Autoantibody Intervention Within Reversible Therapeutic Window],
  type: "S",
  certainty: "0.35",
  evidence: [(a) Autoantibody pathogenicity may be time-dependent: early in the disease course, autoantibody-driven pathology may be reversible; chronic exposure may produce irreversible tissue damage, synaptic loss, or epigenetic modifications that self-sustain even after autoantibody removal. (b) Schizophrenia autoantibody trajectory supports time-dependent pathogenicity: early-stage anti-NMDAR encephalitis responds to immunotherapy; chronic schizophrenia with NMDAR antibodies shows variable response @Bartley2020SchizophreniaHomecoming. (c) In ME/CFS, immunoadsorption trials (Stein 2025, Scheibenbogen 2018) show response in some but not all patients — duration of illness may be a response predictor. (d) No study has stratified immunoadsorption response by illness duration in ME/CFS.],
  citations: [@Bartley2020SchizophreniaHomecoming @Stein2025ImmunoadsorptionPostCOVIDMECFS @Scheibenbogen2018immunoadsorption],
  mechanism: [Autoantibody-targeted therapy effective only within a reversible therapeutic window — after chronicity exceeds a threshold (tau_epi), tissue damage is self-sustaining via epigenetic or structural changes. Illness duration predicts immunoadsorption response.],
  chapter-ref: [ch14d: autoantibody therapeutic window; ch07: autoantibodies],
  prediction: [Illness duration stratifies immunoadsorption response: patients treated within 3 years of onset show \u{3e}=50% improvement; patients treated after >=10 years show \u{3c}20% improvement. Falsified if no response-duration gradient exists in pooled immunoadsorption trial data.],
  treatment: [If validated, early autoantibody screening and intervention become urgent — the therapeutic window may close within years. Research-stage.],
  limitation: [No prospective immunoadsorption results stratified by illness duration. Retrospective analysis of Stein 2025 and Scheibenbogen 2018 data could test this. Cross-disease analogy only.],
)

#registry-entry(
  [ER Stress / UPR as Feed-Forward Inflammatory Mechanism in ME/CFS],
  type: "S",
  certainty: "0.30",
  evidence: [(a) Kawano et al. (2023) showed ER proteostasis dysfunction in peripheral tissues regulates sleep via UPR signaling @Kawano2023ERSleep. (b) Chronic UPR activation drives inflammation via IRE1alpha-XBP1 (IL-6, TNF-alpha), PERK-eIF2alpha (NF-kappaB), ATF6 (complement). (c) UPR provides feed-forward mechanism linking protein-folding disturbance to sustained inflammation without ongoing antigenic stimulation. (d) No study has measured UPR activation markers in ME/CFS.],
  citations: [@Kawano2023ERSleep],
  mechanism: [Stress $arrow.r$ ER misfolding $arrow.r$ UPR $arrow.r$ IRE1alpha/PERK/ATF6 $arrow.r$ cytokines $arrow.r$ more stress. UPR $arrow.r$ sleep disruption $arrow.r$ glymphatic impairment $arrow.r$ metabolite accumulation $arrow.r$ more UPR.],
  chapter-ref: [ch17: um resolution],
  prediction: [Phospho-PERK, spliced XBP1, nuclear ATF6 elevated in ME/CFS PBMCs at rest and post-CPET. UPR markers correlate with fatigue and sleep disruption.],
  treatment: [IRE1alpha inhibitors (MKC8866) or chemical chaperones (TUDCA, 4-PBA) research-stage.],
  limitation: [No ME/CFS UPR data. Kawano in C. elegans, mammalian pending.],
)

#registry-entry(
  [Contrast Hydrotherapy for Vasomotor Training with UPR Hormesis and SPM Induction],
  type: "S",
  certainty: "0.30",
  evidence: [(a) Contrast hydrotherapy (warm 38--40°C alternating with cool 15--20°C) operates through three complementary mechanisms: vasomotor training via repeated vasodilation-constriction cycles, UPR hormesis via heat-induced HSP70 upregulation @Hochecker2025HyperthermiaMECFS, and TRPV1/TRPA1-mediated SPM induction from heat→cold transitions. (b) Hochecker 2025 demonstrated hyperthermia improves PBMC mitochondrial respiration in ME/CFS. (c) No ME/CFS contrast hydrotherapy data exist.],
  citations: [@Hochecker2025HyperthermiaMECFS],
  mechanism: [Heat → HSP70/UPR hormesis + cold → FGF21 anti-inflammatory + heat→cold transition → TRPV1/TRPA1 → SPM release. Combined vasomotor + UPR + resolution effects from single protocol.],
  chapter-ref: [ch17: contrast hydrotherapy],
  prediction: [12-week contrast hydrotherapy vs thermoneutral control increases cutaneous perfusion range by >30%, PBMC HSP70 by ≥20%, plasma FGF21 by ≥30%, reduces IL-6 by ≥15%, and improves SF-36 PF by ≥5 points. Falsified if any primary endpoint not met.],
  treatment: [Accessible, low-cost adjunct. Contraindicated in severe POTS (orthostatic intolerance), severe temperature dysregulation, bedbound patients. Requires graduated introduction.],
  limitation: [No ME/CFS data. Extrapolated from sports medicine vasomotor conditioning, general HSP70/sauna literature, and TRPV1/TRPA1-SPM biology.],
)

#registry-entry(
  [Intravenous Albumin for Triple-Mechanism DAMP Clearance and Iron Buffering],
  type: "S",
  certainty: "0.25",
  evidence: [(a) Intravenous albumin infusion (25% albumin, 100 mL weekly × 4) binds free iron (reducing Fenton chemistry-driven ROS and ferroptosis). (b) Albumin directly binds and neutralizes extracellular HMGB1, the central DAMP implicated in PEM amplification @Ibrahim2026HMGB1Neuroinflammation. (c) Albumin's free cysteine (Cys34) is a major plasma thiol reservoir with radical-scavenging antioxidant activity. (d) Three complementary mechanisms — iron buffering, DAMP neutralization, antioxidant activity — from a single well-established intervention. (e) No ME/CFS data exist.],
  citations: [@Ibrahim2026HMGB1Neuroinflammation],
  mechanism: [Albumin infusion → iron buffering + HMGB1 sequestration + thiol antioxidant → breaks ferroptosis-DAMP-oxidative stress loop.],
  chapter-ref: [ch18: albumin damp iron clearance],
  prediction: [4 weekly infusions reduce serum free iron and HMGB1 by ≥25%, isoprostanes by ≥20%, and improve SF-36 PF by ≥5 points in pre/post pilot. Falsified if free iron or HMGB1 do not decrease or fatigue does not improve.],
  treatment: [Research-stage only. Albumin is FDA-approved, widely available; pilot study (n=10, pre/post) feasible.],
  limitation: [Zero ME/CFS data. Volume expansion may worsen POTS. Contraindicated in CHF, severe anemia.],
)

#registry-entry(
  [Salivary Metabolomic Fingerprint of Chronic Unrefreshing Sleep in ME/CFS],
  type: "S",
  certainty: "0.20",
  evidence: [Scholz et al.\ (2026, n=20 healthy males, cross-over RCT) demonstrated that 24h acute sleep deprivation produces a detectable salivary metabolic fingerprint (94% classification accuracy, 12 features, LC-HRMS) but four nights of chronic sleep restriction to 6h produced *no exploitable metabolic changes* — the primary experimental constraint. ME/CFS unrefreshing sleep is chronic (months to decades); the Scholz chronic restriction null suggests homeostatic adaptation may render peripheral metabolic signatures undetectable. Oishi et al.\ (2025, n=100, PSQI-defined) found 13 metabolites altered in chronic poor sleep (2-hydroxybutyrate 36% higher; 86.6% classification) but is cross-sectional, self-report-based, and derives from general population without ME/CFS metabolic derangements — supportive but non-definitive. Maksoud et al.\ (2021, systematic review, 20 studies, n≈1,000) confirmed 91--100% unrefreshing sleep prevalence with near-normal PSG architecture. No direct ME/CFS salivary metabolomics data.],
  citations: [@Scholz2026SleepMetabolome @Oishi2025ChronicSleepSaliva @Maksoud2021MECFSSleepReview],
  mechanism: [Primary constraint from Scholz chronic null: ME/CFS unrefreshing sleep (months to years) may produce no peripheral metabolic signature due to homeostatic adaptation. Oishi chronic poor-sleep finding suggests chronic signals *can* exist but is methodologically limited (PSQI self-report, no objective sleep). Alternative: peripheral signature absent but sleep pathology real (CNS orexin/glymphatic dysfunction) — requires independent falsifiable predictions, not just null fallback.],
  chapter-ref: [ch20: saliva sleep metabolomics; ch02: sleep],
  prediction: [ME/CFS salivary metabolomic profile will differ from healthy rested and acute deprivation controls, and will most closely resemble the Oishi chronic poor-sleep profile if peripheral detectable. Falsified if ME/CFS profile is indistinguishable from rested controls — does not automatically confirm CNS model unless CNS model has independent positive predictions (e.g., orexin levels correlate with unrefreshing sleep severity).],
  treatment: [Non-invasive, at-home saliva collection for sleep quality monitoring. Research-stage only; clinical utility requires validation of single-timepoint detectability before time-series or composite indices.],
  limitation: [All evidence from healthy populations; no ME/CFS data. Scholz n=20 all-male; Oishi cross-sectional, self-report sleep quality. No replication in independent lab for Scholz panel. Scholz chronic null is most directly relevant constraint and may predict null ME/CFS outcome.],
)

#registry-entry(
  [ADHD and ME/CFS as Same-Root Etiology — Inflammation-Driven Energy Failure],
  type: "S",
  certainty: "0.20",
  evidence: [(a) ADHD and ME/CFS share all known metabolic disturbances: mitochondrial OXPHOS impairment (cybrid evidence @Verma2016ADHDcybrid; PBMC spare respiratory capacity reduction in ME/CFS), neuroinflammatory-dopaminergic co-localisation (Yokokura 2021 dual-tracer PET @Yokokura2021D1Rmicroglia; Walitt 2024 CSF catecholamine reduction in ME/CFS), prefrontal cerebral hypoperfusion (Berthier 2025 systematic review @Berthier2025cbfadhd), BH4/GCH1 bottleneck (Williams 2025 case series @Williams2025GCH1BH4), and overlapping mtDNA haplogroup effects (haplogroup U protective in ADHD @Chang2020haploADHD, symptom-modifying in ME/CFS). (b) Convergent pharmacology: 77.1% of ME/CFS patients report stimulant benefit for brain fog @Eckey2025PatientReported, and both conditions respond to dopamine-norepinephrine reuptake inhibition. (c) Epidemiological: 29.7% of adult CFS patients had childhood ADHD @SaezFrancas2012adhdcfs; ADHD traits predict 2× fatigue risk @Quadt2024neurodivergentfatigue with IL-6 mediation. (d) The unifying model: both conditions reflect the same mitochondrial energy failure, differing in tissue compartment affected (CNS-limited in ADHD, systemic in ME/CFS) and temporal profile (trait-like in ADHD, state-like in ME/CFS). The brain's high energy demand makes it the first system to decompensate as mitochondrial ATP output declines — ADHD cognitive symptoms should precede systemic ME/CFS in patients with converging energy deficits.],
  citations: [@Yokokura2021D1Rmicroglia @Berthier2025cbfadhd @Williams2025GCH1BH4 @Verma2016ADHDcybrid @Almutairi2024mitoadhd @Chang2020haploADHD @Fanet2021BH4neuro @Quadt2024neurodivergentfatigue @SaezFrancas2012adhdcfs @Eckey2025PatientReported],
  mechanism: [Mitochondrial energy failure → CNS energy deficit (ADHD phenotype) when compartmentalised; → systemic energy deficit (ME/CFS phenotype) when generalised. The same root process determines which threshold is crossed: CNS $R_"crit"$ is lower (higher vulnerability), explaining why ADHD-like cognitive symptoms precede ME/CFS in prospective cohorts. Tissue specificity may be determined by mtDNA haplogroup, tissue-specific heteroplasmy, or differential inflammatory exposure.],
  chapter-ref: [ch14d: adhd mecfs same root; ch14d: architecture c metabolic reserve],
  prediction: [PBMC spare respiratory capacity (Seahorse assay) will form a gradient across groups: controls > ADHD-only > ME/CFS-only > ADHD+ME/CFS. Falsified if ADHD-only patients show normal PBMC mitochondrial function indistinguishable from controls.],
  treatment: [If validated, ADHD and ME/CFS would not be separate comorbidities but the same disease in different tissue compartments — shifting clinical practice from treating two conditions to targeting the shared mitochondrial root. Research-stage only.],
  limitation: [No head-to-head metabolic comparison of ADHD vs ME/CFS has ever been performed. All evidence is cross-condition inference. The compartment-specific model is untestable with current data. ADHD mitochondrial evidence is mostly preclinical. The 30% ADHD-ME/CFS comorbidity is consistent with predisposition, same-root, or diagnostic confusion — cannot distinguish without direct metabolic phenotyping.],
)

#registry-entry(
  [ET-1 as Thermoregulatory Impairment Biomarker in ME/CFS],
  type: "OQ",
  certainty: "n/a",
  evidence: [Cambras et al.\ 2023 demonstrated that endothelial-1 is associated with skin temperature circadian rhythm disruption and symptom severity. ET-1 measurement is clinically available (ELISA). Could ET-1 levels and/or temperature rhythm monitoring serve as objective biomarkers for thermoregulatory impairment severity and treatment response in ME/CFS?],
  citations: [@Cambras2023SkinTemperatureEndothelin],
  mechanism: [ET-1 → serial measurement + skin temperature ambulatory monitoring → thermoregulatory impairment index → prediction of heat intolerance severity + therapeutic response monitoring.],
  chapter-ref: [ch09: circadian; ch20: biomarker overview],
  prediction: [ET-1 levels will correlate with heat intolerance severity (thermal comfort questionnaire) and predict PEM risk during thermal stress. Falsified if ET-1 does not correlate with thermal symptom severity in adequately powered study (n ≥ 40).],
  treatment: [ET-1 + temperature monitoring as objective measure of thermoregulatory function for clinical assessment and treatment response tracking.],
  limitation: [Single study; sample size unclear; ET-1 as marker vs mediator not established. No serial ET-1 data in ME/CFS. Commercial ELISAs for ET-1 have variable precision.],
)

#registry-entry(
  [Waon Therapy / Passive Hyperthermia as CDR and Autophagy Reset in ME/CFS],
  type: "OQ",
  certainty: "n/a",
  evidence: [Hochecker et al.\ 2025 demonstrated WBH acutely reduces autophagy markers and improves mitochondrial respiration in ME/CFS PBMCs. Soejima et al.\ 2015 showed clinical benefit with Waon therapy. Would a protocol of repeated mild hyperthermia sessions over weeks produce sustained metabolic improvement and quality-of-life benefit? What is the optimal temperature, duration, frequency, and patient selection? Can heat-tolerant patients be identified prospectively?],
  citations: [@Hochecker2025HyperthermiaMECFS @Soejima2015WaonTherapyCFS],
  mechanism: [Mild hyperthermia → improved perfusion → reduced hypoxia → autophagy normalization + mitochondrial respiratory improvement → accumulated cellular benefit over repeated sessions → sustained symptom improvement. Requires patient stratification by thermal tolerance.],
  chapter-ref: [ch17: hyperthermia protocol; ch17: heat hsat2 caution],
  prediction: [Dose-finding trial (n=40, 4-arm): Waon at 3 temperature levels (45°C, 52°C, 60°C) + thermoneutral control → optimal temperature balancing mitochondrial benefit vs intolerance. Responder analysis: pre-treatment ET-1, HRV, and HSAT2 levels predict thermal therapy response.],
  treatment: [If confirmed: medically supervised hyperthermia as prescribed treatment for selected patients. If null: abandon thermal therapy in ME/CFS. Until confirmed: research-stage only with stringent safety monitoring.],
  limitation: [Small uncontrolled pilots only. Heat intolerance may make most patients ineligible. HSAT2 risk in susceptible patients uncharacterized. Core temperature of 39°C may be too high for severe ME/CFS. Optimal parameters unknown.],
)

#registry-entry(
  [Pharmacodiagnostic Negative-Control Class — Hypothesis Falsification by Drug Failure],
  type: "S",
  certainty: "0.25",
  evidence: [Fluge 2019 Phase III RCT (n=151, @Fluge2019RituximabPhase3) found rituximab no better than placebo — a null result that constrains the B-cell-dependent GPCR-AAb hypothesis. Immunoadsorption response heterogeneity (@Tolle2020immunoadsorption, @Stein2025ImmunoadsorptionPostCOVIDMECFS) reveals negative-control boundary: IA removes only circulating IgG1/IgG2/IgG4, not tissue-bound IgG, IgG3, or IgA/IgM. The formal negative-control class concept does not exist in any published biomedical literature — this is a novel contribution.],
  citations: [@Fluge2019RituximabPhase3 @Tolle2020immunoadsorption @Stein2025ImmunoadsorptionPostCOVIDMECFS @Scheibenbogen2018Immunoadsorption @Fluge2011rituximab],
  mechanism: [A medication is a negative-control for a hypothesis when the hypothesis predicts the drug must work (specific, directional, cascade-intercepted node), the drug's mechanism is narrow, and the null result is obtained under adequate parameters. Under these conditions, a null result falsifies the hypothesis at the mechanism level, not just eliminates it for one patient. Class I (source-level, e.g., rituximab → CD20+ B cells) carries higher evidentiary weight than Class II (pathway-level, e.g., IA → circulating IgG only). The negative-control ladder optimizes trial sequencing for population-level mechanism falsification, complementing the null ladder's patient-level hypothesis elimination.],
  chapter-ref: [ch33: negative control class; ch33: negative control principle; ch33: negative control taxonomy; ch33: negative control ladder; ch33: negative control decision heuristic; ch33: negative control asymmetric evidence],
  prediction: [Retrospective audit of existing ME/CFS drug trial results: classify each negative result by the decision heuristic (5-condition checklist) → estimate the proportion of published nulls that qualify as genuine negative-control results vs. underdetermined failures. Falsified if negative-control classification produces zero convergent constraint patterns across independently studied drug—mechanism pairs.],
  treatment: [The framework reframes treatment failures as diagnostic data — not therapeutic recommendations. Negative-control classification informs which drug trials are most informative for mechanism-level inference, and which nulls should be treated as evidence against a mechanism vs. evidence of inadequate trial parameters.],
  limitation: [Novel conceptual framework. No validation against a known-false mechanism (impossible to obtain — no ethics committee would approve a trial targeting a known-false mechanism, and no patient would volunteer). Inference chain from null response to hypothesis falsification adds uncertainty scaled by drug specificity, compartment coverage, and alternative-explanation count. Classification is human-judgment-driven, not algorithmic — the 5-condition heuristic requires pharmacological and clinical knowledge to apply correctly.],
)

#registry-entry(
  [TRPV1-Thermal Autonomic Stress Test as At-Home Diagnostic Probe],
  type: "OQ",
  certainty: "0.25",
  evidence: [Nelson 2021 (n=16 ME/CFS): HRR impaired post-exercise (HRR ≤34.5 bpm discriminatory, ROC AUC 74.8%). Ruijgt 2026 (n=121 LC): wearable HRV suppressed 24h post-exercise, predicts PEM threshold. De Becker 1998: cold pressor reveals sympathetic overactivity in CFS.],
  citations: [@Nelson2021HRVrecoveryMECFS @Ruijgt2026wearableHRVLongCOVID @DeBecker1998coldpressorCFS],
  mechanism: [Post-thermal autonomic recovery time (T90 — time to 90% baseline HR after standardized sauna or cold-water challenge) may serve as at-home autonomic stress test for ME/CFS. TRPV1 sensory neurons → sympathetic outflow → HR/BP response; parasympathetic reactivation during recovery reflects autonomic integrity. Thermal challenge avoids exercise confounds (muscle damage, metabolites). Testable at home with pulse oximeter + thermometer.],
  chapter-ref: [ch15: trpv1 thermal autonomic stress test; ch46: trpv1 thermal autonomic stress test],
  prediction: [Prospective cohort (n=40 ME/CFS, n=20 healthy): post-thermal T90 significantly prolonged in ME/CFS vs controls. Falsified if no between-group difference in recovery slope after controlling for baseline HR.],
  treatment: [If validated, T90 recovery time serves as low-burden autonomic biomarker. Abnormal result triggers full autonomic testing (tilt table, QSART). Normal result reduces diagnostic uncertainty but does not rule out ME/CFS.],
  limitation: [No direct TRPV1-thermal-autonomic study in ME/CFS. Nelson/Ruijgt/De Becker provide indirect evidence from exercise, cold pressor, and HRV domains. Thermal challenge dose not calibrated. Home measurement introduces compliance variability.],
)

#registry-entry(
  [Cold Pressor Recovery Kinetics as Autonomic Discriminator — Existing Dataset Re-Analysis],
  type: "S",
  certainty: "0.20",
  evidence: [De Becker 1998 cold pressor study (n=21 CFS, foot immersion 4°C × 90s) measured acute HR/BP response but not recovery kinetics. Wyller 2007 studied thermoregulatory hand cooling (n=15 adolescent CFS). Both datasets contain raw time-series data suitable for re-analysis.],
  citations: [@DeBecker1998coldpressorCFS @Wyller2007thermoregCFS],
  mechanism: [Recovery slope (time from challenge end to 90% baseline HR) is the discriminating parameter, not acute response magnitude. If recovery time is prolonged irrespective of acute response → autonomic recovery deficit is independent of provocation magnitude.],
  chapter-ref: [ch15: cold pressor recovery convergence],
  prediction: [Re-analysis of De Becker 1998 and Wyller 2007 datasets → T90 recovery time significantly prolonged in CFS vs. controls (p < 0.05). Acute HR/BP response magnitude does not predict T90 (r < 0.3).],
  treatment: [If confirmed, recovery slope becomes the preferred cold-pressor readout. Existing datasets provide free, immediate data. If null, attention shifts to other autonomic challenge modalities.],
  limitation: [Retrospective re-analysis. Original studies not designed for recovery-slope measurement. Time-series sampling rate may be insufficient for precise T90 estimation. Wyller 2007 studied adolescents — generalizability to adults uncertain.],
)

#registry-entry(
  [Thermal Recovery Time as PEM Threshold Predictor],
  type: "S",
  certainty: "0.25",
  evidence: [Ruijgt 2026 (LC) established HRV→PEM correlation: wearable HRV suppressed 24h post-exercise predicts PEM threshold. Mancini 2026 null on 2-day CPET (n=58 — no Day 1→Day 2 VO2 decline) motivates alternative PEM threshold tests.],
  citations: [@Ruijgt2026wearableHRVLongCOVID @Mancini2026CPET],
  mechanism: [Post-thermal autonomic recovery time (T90) may correlate with PEM threshold measured by next-day actigraphy (r ≥ 0.4, n ≥ 40). Thermal challenge as calibrated, repeatable, non-exercise stressor — no muscle damage, controllable dose, home-achievable.],
  chapter-ref: [ch15: thermal recovery pem threshold],
  prediction: [Prospective study (n=40): post-thermal T90 correlates with next-day actigraphy step-count decline (r ≥ 0.4). Falsified if r < 0.2 or circadian phase (Williams 1996) explains >50% of T90 variance, making autonomic specificity low.],
  treatment: [If confirmed, home thermal challenge provides calibrated PEM threshold estimate without exercise. Informs activity pacing. If null (circadian-dominant), thermal challenge not useful for PEM prediction — attention shifts to circadian phase measurement.],
  limitation: [Thermal challenge dose-response uncalibrated. Correlation with PEM threshold inferred from exercise HRV data, not directly measured. Circadian phase confounding (Williams 1996 thermoregulatory decoupling) requires explicit measurement. No existing thermal-PEM correlation study.],
)

#registry-entry(
  [Post-Thermal vs Post-Exercise HRR Congruence — General Autonomic Deficit Test],
  type: "S",
  certainty: "0.25",
  evidence: [Post-exercise HRR impairment documented in ME/CFS (Nelson 2021, n=16). If the recovery deficit reflects parasympathetic infrastructure damage rather than exercise-specific mechanisms, post-thermal HRR should mirror post-exercise HRR.],
  citations: [@Nelson2021HRVrecoveryMECFS],
  mechanism: [Within-subject comparison of post-thermal vs post-exercise HRR. If recovery deficit reflects parasympathetic infrastructure damage rather than exercise-specific mechanisms, post-thermal HRR should mirror post-exercise HRR (within-subject r ≥ 0.5). Distinguishes general autonomic deficit from muscle-damage-driven recovery delay.],
  chapter-ref: [ch15: hrr thermal extension],
  prediction: [Within-subject crossover (n=30 ME/CFS): post-thermal HRR correlates with post-exercise HRR (r ≥ 0.5). Falsified if r < 0.3 — then HRR deficits are modality-specific and thermal challenge is not a general autonomic probe.],
  treatment: [If congruence confirmed: thermal HRR serves as exercise-independent autonomic biomarker. If decoupled: exercise HRR reflects muscle-specific damage, not autonomic infrastructure. Each test answers a different question.],
  limitation: [Small sample (n=16) in Nelson HRR study. No existing within-subject thermal-vs-exercise HRR comparison. Exercise confounds (muscle soreness, metabolic disturbance) may persist into recovery period and influence HRR independently of autonomic status.],
)


=== Exercise Modality and Physical Activity

#registry-entry(
  [Hydrostatic Pressure Augments Orthostatic Reserve via Parasympathetic Shift],
  type: "S",
  certainty: "0.68",
  evidence: [Chest-deep thermoneutral water immersion increases central venous pressure, decreases HR ~10 bpm (vagal activation), decreases peripheral vascular resistance 21--30% in cardiac populations. Post-MI patients fail to utilize hydrostatic preload during upright exercise, suggesting horizontal position + immersion required for benefit.],
  citations: [@Schmid2007WaterImmersion @Hanna1993WaterImmersion],
  mechanism: [Hydrostatic pressure → increased CVP → increased preload → increased stroke volume → decreased compensatory sympathetic drive → parasympathetic shift. Most reliable in horizontal positions (swimming, supine floating).],
  chapter-ref: [aquatic hydrostatic],
  prediction: [Aquatic exercise (thermoneutral 32°C, 10 min) → standing HR reduction ≥5 bpm post-immersion vs. land; increased HF-HRV ≥30 min post; reduced orthostatic symptoms on stand-test 1h post.],
  treatment: [Aquatic exercise may provide autonomic benefit beyond buoyancy alone. Thermoneutral water and horizontal posture maximize the hydrostatic effect.],
  limitation: [Testing in cardiac populations, not ME/CFS. ME/CFS autonomic physiology differs from heart failure/MI. Single direct study (Schmid 2007, n=30). Some patients report pool worsening. Not replicated in ME/CFS.],
)

#registry-entry(
  [Engineered Exosome-Mediated HSP70 mRNA Delivery Reverses Sleep-Deprivation Neuroinflammation — Proof-of-Principle for CNS mRNA Therapy],
  type: "H",
  certainty: "0.55",
  evidence: [Kang et al. 2026 demonstrated that RVG-targeted exosomes carrying HSP70 mRNA reverse cognitive deficits and hippocampal neuroinflammation in sleep-deprived mice. BBB crossing mechanisms for EVs documented in Ramos-Zaldívar et al. 2022 review of primary data; engineering platform context from Sanadgol et al. 2025 review of brain-targeted nucleic acid delivery. Single preclinical study in mice; not yet replicated; RVG targeting and HSP70 cargo specific to this study; no human or ME/CFS data.],
  citations: [@Kang2026ExosomeHSP70Sleep],
  mechanism: [RVG-Lamp2b exosomes → HSP70 mRNA delivery across BBB → HSP70 translation in CNS cells → reduced TNF-α, IL-6, IL-1β; increased IL-10, BDNF, pCREB → neuroinflammation reversal + synaptic repair.],
  chapter-ref: [engineered exosome bbb mrna],
  prediction: [ME/CFS iPSC-derived neurons and microglia treated with HSP70\@ExoRVG exosomes will show reduced inflammatory cytokine production and improved metabolic function vs untreated cells; ME/CFS CSF EV subpopulations will show cargo profiles distinct from healthy controls.],
  treatment: [If validated, engineered exosomes could deliver anti-inflammatory/neuroprotective mRNA cargo directly to CNS targets, bypassing the BBB delivery bottleneck. Research-stage only; no human trials exist.],
  limitation: [Single preclinical study in mice; no human data; no ME/CFS data; exosome manufacturing standardization, scalability, and regulatory pathways do not exist; immunogenicity and repeated dosing safety unknown.],
)

#registry-entry(
  [Thermoneutral Water (31--32°C) as Prerequisite for Safe Aquatic Exercise],
  type: "S",
  certainty: "0.55",
  evidence: [ME/CFS patients exhibit impaired thermoregulation and sympathetic response to temperature stress. Cold water (below 29°C) triggers vasoconstriction and sympathetic activation. Warm water (greater than 35°C) causes vasodilation and potential hypotension in POTS. Thermoneutral avoids both extremes. Schmid 2007: all aquatic testing at 32°C. Cardiac rehab guidelines: 31--33°C.],
  citations: [@Schmid2007WaterImmersion],
  mechanism: [Temperature deviation from thermoneutral → autonomic stress (vasoconstriction or vasodilation) → counteracts hydrostatic benefit. Only thermoneutral water provides pure hemodynamic benefit without thermal autonomic cost.],
  chapter-ref: [ch17: thermoneutral water],
  prediction: [Crossover: cold (28°C) → increased HR, catecholamines; warm (35°C) → increased lightheadedness, orthostatic symptoms; thermoneutral (32°C) → optimal parasympathetic shift, lowest PEM.],
  treatment: [Verify pool temperature before entry. If only non-thermoneutral pools available: restrict to 5--8 min sessions. Post-pool warming to prevent chill-induced vasoconstriction.],
  limitation: [No ME/CFS temperature-comparison data. Individual temperature sensitivity varies. Optimal window may be narrower for some patients. Starting recommendation, not rigid absolute.],
)

#registry-entry(
  [Orthostatic-Demand-Based Exercise Modality Classification],
  type: "S",
  certainty: "0.55",
  evidence: [Five-tier taxonomy based on body position, orthostatic demand, and positional transition frequency. Tier 1: supine isometric/stretching (all severities). Tier 2: constant seated/horizontal with hydrostatic benefit (water rowing, recumbent bike, backstroke, resistance bands). Tier 3: upright constant position (cycling). Tier 4: positional transitions (walking, standard yoga). Tier 5: contraindicated (GET protocols, AT-exceeding).],
  citations: [@Oka2014isometricYoga @Oka2017recumbentYoga],
  mechanism: [Modality orthostatic demand = f(body position, transition frequency, hydrostatic factor). Matching modality to individual orthostatic tolerance reduces PEM risk.],
  chapter-ref: [ch17: modality classification],
  prediction: [Patients selecting modalities from matched severity tier → ≥50% lower PEM incidence vs above-tier selection in 12-week observational comparison (N=60).],
  treatment: [Clinically applicable taxonomy for matching exercise modality to patient severity. Start at matching tier; progress to next tier only after ≥4 weeks tolerance with zero PEM for 2 consecutive weeks.],
  limitation: [Tier boundaries theoretically derived, not empirically calibrated. Conflates orthostatic demand with fall/intensity risk. No validation study. Individual variation may exceed predicted tier. Classification is hypothesis, not validated clinical tool.],
)

#registry-entry(
  [Post-Exercise Horizontal Rest Reduces Delayed PEM],
  type: "S",
  certainty: "0.55",
  evidence: [Exercise produces blood redistribution from splanchnic circulation to working muscles. In ME/CFS with global hypoperfusion, this may exceed compensatory capacity. Mandatory 5--10 min horizontal rest post-exercise maximizes venous return and accelerates perfusion recovery. Extends Klimas program's supine-rest concept to all modalities.],
  citations: [@Ussher2025],
  mechanism: [Post-exercise postural transition from active to horizontal rest → maximized venous return → accelerated splanchnic/cerebral perfusion recovery → reduced sympathetic carryover → lower delayed PEM risk.],
  chapter-ref: [ch17: post exercise horizontal rest],
  prediction: [Within-subject crossover (4-week phases, N≥20): post-exercise horizontal rest → reduced HR recovery time, reduced orthostatic symptom duration, and PEM incidence OR below 0.5 vs. no-post-exercise-rest phase.],
  treatment: [Mandatory 5--10 min horizontal rest after every exercise session, independent of subjective recovery. Rest duration needed to meet completion criteria serves as intensity calibration metric for subsequent sessions.],
  limitation: [Post-exercise rest not isolated as independent intervention variable. Benefit may derive from any rest, not specifically horizontal. Time commitment may reduce adherence. No ME/CFS-specific trial.],
)

#registry-entry(
  [Constant Body Position as Primary PEM-Safety Criterion for POTS+ME/CFS],
  type: "H",
  certainty: "0.50",
  evidence: [Constant body position eliminates orthostatic demand fluctuations that drive autonomic compensation. Water immersion decreases HR (vagal activation) while maintaining cardiac output. Recumbent isometric formats are PEM-safe in CFS and feasible in severe ME/CFS. Leeds POTS protocol validates recumbent-to-upright progression.],
  citations: [@Schmid2007WaterImmersion @Oka2014isometricYoga @Oka2017recumbentYoga],
  mechanism: [Positional transitions → baroreflex stress → autonomic reserve depletion → PEM threshold reduction. Constant-position activities maintain stable hemodynamics throughout.],
  chapter-ref: [ch17: constant body position],
  prediction: [Crossover trial: constant-position vs. varying-position exercise at matched intensity → constant-position shows lower PEM (OR below 0.5), lower catecholamines, and shorter recovery time.],
  treatment: [Prefer constant-position modalities (recumbent bike, seated rowing, backstroke, resistance bands seated) over activities with frequent positional transitions.],
  limitation: [No RCT directly testing constant-vs-varying position exercise. Individual orthostatic tolerance variability. Cert anchored in POTS physiology; not ME/CFS-validated.],
)

#registry-entry(
  [Fitness Maintenance as a Distinct Goal from Fitness Improvement in ME/CFS],
  type: "H",
  certainty: "0.50",
  evidence: [(0.60→0.50: Mancini/Natelson 2026 NIH-funded null replication brings CPET evidence to equipoise — one positive study and one equivalently powered null. Incoming evidence certainty 0.60). Energy envelope theory (Jason 2008) and CPET evidence (contested: Keller 2024 positive vs. Mancini/Natelson 2026 null) demonstrate that ME/CFS patients experience disproportionate physiological burden from exertion. Exercise physiology distinguishes fitness maintenance (preventing loss from baseline) from fitness improvement (building capacity above baseline). In healthy populations these coexist; in ME/CFS they are fundamentally decoupled — any protocol intended to produce adaptation instead produces deterioration. The only achievable goal is fitness maintenance: calibrated movement preventing deconditioning complications without triggering PEM. Note: framework re-anchored from objective VO₂ decline to elevated RPE + energy envelope + GET harms — RPE is a subjective self-report measure and should not be equated with objective metabolic biomarkers.],
  citations: [@Jason2008EnergyEnvelope @keller2024cpet @Mancini2026CPET @Charlton2026pem @Kindlon2011GET],
  mechanism: [Metabolic dysfunction underlying PEM (2-day CPET: 5--8% declines in VO₂ peak, recovery 13+ days) means exercise produces training de-adaptation, not adaptation. GET produced 51% harm rates because it applied fitness-improvement model to physiology that cannot accommodate it. Fitness must be redefined as functional capacity within the energy envelope — ADL capacity, baseline stability, PEM threshold, deconditioning prevention — not VO₂max or maximal strength.],
  chapter-ref: [ch17: fitness maintenance],
  prediction: [12-week RCT: fitness-maintenance-targeted activity (pacing + deconditioning-prevention movement, explicit "stability is success" messaging) vs. standard pacing → equivalent or better functional stability, reduced PEM frequency, reduced exercise-related psychological distress.],
  treatment: [Explicit expectation-setting at treatment initiation replaces improvement culture with stability-as-success. Reduces goal-behavior mismatch that drives overexertion. Connects to ACT frameworks for living meaningfully within limitation.],
  limitation: [Conceptual framework; no trial. "Recovery of latent capacity" vs. "acquisition of new capacity" cannot be distinguished in individuals without knowing pre-illness ceiling. Fitness redefinition is semantical — useful for communication but not subject to hypothesis testing. Not yet replicated as structured protocol.],
)

#registry-entry(
  [Severity-Stratified Rowing Protocol Improves Tolerability Over Uniform Protocol],
  type: "S",
  certainty: "0.50",
  evidence: [ME/CFS severity spans mild to very severe. A uniform rowing protocol (same start intensity for all) simultaneously under-stimulates mild patients and over-stresses severe patients. Severity-stratified parameters — modality selection, start intensity, progression speed, duration ceiling — match the intervention to baseline functional capacity. Leeds protocol's 59 percent community attrition suggests uniform protocols fail across the functional spectrum.],
  citations: [Consensus severity classification; FUNCAP-27; Bell Disability Scale],
  mechanism: [Severity → baseline metabolic reserve → maximum tolerable rowing intensity. Uniform protocol → mismatch at both ends of spectrum → dropout from over-stress (severe) and under-stimulus (mild). Stratification → appropriate starting parameters → higher completion rate.],
  chapter-ref: [ch17: severity stratified rowing],
  prediction: [Stratified vs uniform protocol (n=120, 12 weeks): stratified shows lower PEM in moderate/severe arms, higher ceiling in mild arm. Refuted if no PEM advantage in any tier, or mild arm shows no ceiling advantage.],
  treatment: [Four-tier table: mild (8-10 spm/3 min/weekly/30 min), moderate (5-8 spm/2 min/biweekly/15 min), severe (isometric primary, rowing 5 spm/1 min/monthly/5 min), very severe (passive ROM, rowing contraindicated). Printable for home logs and clinic charts.],
  limitation: [Severity bins are consensus, not empirically calibrated for rowing tolerance. Start parameters are reasoned estimates. Severity-to-modality mapping may misclassify. Progression speeds assume linear tolerance accumulation. Zero ME/CFS stratified trial data.],
)

#registry-entry(
  [Cross-Disease Fitness-Maintenance Protocols from COPD and Heart Failure Adapt to ME/CFS],
  type: "S",
  certainty: "0.50",
  evidence: [COPD pulmonary rehabilitation and heart failure exercise programs have explicit maintenance-phase protocols distinct from conditioning phases. Both conditions feature pathophysiological exercise intolerance (ventilatory limitation in COPD, cardiac output limitation in HF). In COPD, maintenance protocols emphasize submaximal interval training + monitoring; in HF, maintenance focuses on symptom-limited steady-state exercise. Both fields have adopted maintenance-as-success framing.],
  citations: [Puhan 2011 COPD maintenance trial; O'Connor 2009 HF-ACTION; Taylor 2014 Cochrane review of exercise-based cardiac rehab. No ME/CFS-adapted protocol exists.],
  mechanism: [COPD and HF share with ME/CFS the feature that exercise intolerance is pathophysiological, not behavioral. Both have developed standardized maintenance protocols accepting that capacity-building is not always achievable. ME/CFS can adopt the protocol structure (interval-based, submaximal, monitored, maintenance-framed) while substituting ME/CFS-specific limits (HR below AT, PEM tracking, severity-adjusted intensity).],
  chapter-ref: [ch17: cross disease maintenance],
  prediction: [ME/CFS patients following COPD-adapted maintenance protocol (submaximal interval, HR-monitored, "maintenance" framed) → equivalent or better 12-month FUNCAP stability with reduced PEM frequency vs. standard pacing, when adapted for ME/CFS severity.],
  treatment: [Provides structured protocol template where none exists. Reduces ad-hoc pacing decisions. Gives clinicians a named framework (adapted from established fields) to justify maintenance approach. Maintenance framing from respected rehabilitation fields may persuade skeptics.],
  limitation: [Cross-disease analogy not validated for ME/CFS. COPD/HF mechanisms differ from ME/CFS — transferability unknown. Protocol adaptation requires empiric testing. No ME/CFS-adapted trial exists. Maintenance protocols in COPD/HF still include moderate exertion that may exceed ME/CFS thresholds.],
)

#registry-entry(
  [Positioning and Postural Management Prevents Contractures and Pressure Injuries in Bedbound ME/CFS],
  type: "S",
  certainty: "0.45",
  evidence: [Well-established in ICU nursing, palliative care, and spinal cord injury rehabilitation. Prolonged single-position immobility causes contractures, pressure injuries, dependent edema, and chest wall restriction. Structured repositioning protocols prevent these complications with zero patient metabolic cost.],
  citations: [ICU nursing standards; palliative care guidelines; extrapolated to ME/CFS by analogy],
  mechanism: [Every-2-hour repositioning → muscle shortening prevention → contracture prevention. Joint positioning (neutral angles) + pressure relief (mattress, heel protectors) → pressure injury prevention. Position rotation (supine/lateral/semi-recumbent) → dependent edema + chest wall restriction prevention.],
  chapter-ref: [ch17: bedbound positioning],
  prediction: [Bedbound ME/CFS receiving structured positioning protocol → lower contracture incidence (goniometry at 12 weeks) and lower pressure injury rate vs. unstructured controls; PEM frequency unchanged.],
  treatment: [Repositioning schedule: every 2h waking, every 3--4h sleep. Joint neutral positioning. Pressure-relieving surfaces. Micromovement (finger wiggles, toe curls) within tolerance at each repositioning. Active PEM → reduce to essential changes only (every 4h).],
  limitation: [Requires caregiver present — significant access barrier for patients living alone without 24-hour care. Repositioning may trigger autonomic symptoms. No ME/CFS position-management trial exists. Extrapolation from ICU/palliative care; applicability to ME/CFS-specific pathophysiology unverified.],
)

#registry-entry(
  [Land-Based Rowing as Tier 2 Safe Modality — Leeds Protocol Precedent, No Hydrostatic Component],
  type: "S",
  certainty: "0.40",
  evidence: [Land rowing retains seated constant body position and compound upper+lower body movement distribution from water rowing but loses hydrostatic pressure benefit. Gains home accessibility: eliminates pool transport PEM risk. Dallas/Leeds POTS protocol explicitly uses seated rowing as starting modality. Caution: 59 percent community dropout for Dallas protocol in POTS patients (who lack PEM) constrains extrapolation to ME/CFS. Water-resistance machines may offer smoother loading vs. air flywheels — theoretical only. Zero ME/CFS rowing trial data.],
  citations: [@Fu2010DallasProtocol @Fu2018ExercisePOTS],
  mechanism: [Seated constant position + compound movement + rhythmic reciprocal pattern → low orthostatic demand + reduced local metabolic demand. No hydrostatic preload. Home accessibility eliminates transport energy cost.],
  chapter-ref: [ch17: land rowing],
  prediction: [Land rowing (home-based, sub-AT) → PEM incidence below 30% in mild-moderate POTS+ME/CFS over 8 weeks; non-inferior to recumbent cycling (margin ≤5%). PEM above 30% refutes hypothesis.],
  treatment: [Home-based land rowing as a Tier 2 modality. 2 min/session start, min water resistance, progression one parameter at a time. Consider only for patients with adequate equipment budget, technique coaching access, and stable orthostatic tolerance.],
  limitation: [Zero ME/CFS rowing data. Economic access barrier (€800–1500). Technique errors may skew intensity. 59% POTS community dropout constrains generalizability. Water-vs-air resistance advantages are theoretical only.],
)

#registry-entry(
  [Hybrid Rowing-Isometric Protocol Permits Longer Duration Without PEM],
  type: "S",
  certainty: "0.40",
  evidence: [Alternating rowing (compound, cardiovascular) with isometric yoga (localized, isometric, parasympathetic) within a single session may distribute metabolic stress across tissue compartments, prevent local metabolite accumulation in rowing-specific muscles, and use isometric phases as active recovery that maintains muscle engagement and vagal tone. Total session can extend without PEM because no single metabolic pathway is continuously stressed. Zero hybrid protocol data.],
  citations: [@Oka2014isometricYoga],
  mechanism: [Rowing → metabolic demand on rowing-specific muscle groups → local metabolite accumulation → ↑ PEM risk. Isometric interlude → different muscle groups → maintained vagal tone → active metabolite clearance → ↓ local accumulation → ↑ total session duration before PEM threshold.],
  chapter-ref: [ch17: hybrid rowing isometric],
  prediction: [Three-arm RCT (n=60, 8 weeks): hybrid vs rowing-only vs isometric-only, all 15 min/session. Hybrid predicted PEM below 15 percent vs 25-30 percent single-modality. Refuted if hybrid shows no advantage over rowing-only (isometric adds no synergy). Refuted if hybrid worse than rowing-only (active recovery hypothesis contradicted).],
  treatment: [15-min session: 5 min rowing → 5 min isometric yoga → 5 min rowing → 5 min supine rest. Progression one parameter at a time. Patient needs: rowing machine + mat/chair. Cognitive load manageable — fixed structure, no real-time decisions.],
  limitation: [Zero hybrid data. Active recovery in athletes may not translate to ME/CFS metabolic defect. Modality transition (stand from rower to mat) introduces brief orthostatic demand. 5-min isometric segment may be insufficient for clearance. Completely untested in ME/CFS.],
)

#registry-entry(
  [Rowing Stroke Rate as Precision PEM-Threshold Calibration Dial],
  type: "S",
  certainty: "0.40",
  evidence: [Rowing allows incremental intensity adjustment via stroke rate alone — approximately 15--20% power change per stroke/min at competition speeds. At ultra-low stroke rates (5--10 spm as used in the ME/CFS protocol), the relationship may be nonlinear or discontinuous, and day-to-day threshold variability limits calibration validity. The concept extends generic sub-threshold pacing: start low, increase gradually, monitor PEM, roll back on PEM. The rowing-specific parameterization adds a convenient titration metric but does not constitute a novel treatment principle.],
  citations: [@Kleshnev2004],
  mechanism: [Linear power-stroke rate + incremental titration + PEM monitoring = generic pacing applied to rowing-specific parameter. Precision advantage over other modalities is asserted but undefended.],
  chapter-ref: [ch17: rowing stroke rate dial],
  prediction: [Patients at calibrated threshold minus 1 spm → will not reliably stay below PEM threshold on days when threshold varies by greater than 15-20% from calibration. PEM incidence below 15% predicted only under the stable-threshold assumption.],
  treatment: [Individual calibration: start 5 spm/2 min, +1 spm every 2--3 weeks if zero PEM, re-test periodically. Threshold stability assumption is clinically dubious — day-to-day variation may exceed 1 spm step size, rendering calibrated rate unreliable on bad days.],
  limitation: [Zero ME/CFS titration data. Threshold varies day-to-day. Kleshnev kinetics from competitive rowers at 18-36 spm — relationship at 5-10 spm may not hold. Technique errors introduce nonlinearity. Completely untested in ME/CFS.],
)

#registry-entry(
  [Resistance Bands Produce Lower HR Than Equivalent-Load Free Weights in ME/CFS],
  type: "S",
  certainty: "0.40",
  evidence: [Resistance bands eliminate gravitational stabilization demands that free weights impose (continuous muscle co-contraction to stabilize against gravity). Very slow tempo (5-2-5) prevents rapid force development that requires explosive motor unit recruitment. Seated/supine positioning reduces orthostatic demand. hEDS/HSD comorbidity: mid-range loading without end-range subluxation risk.],
  citations: [@Oka2014isometricYoga @Zabriskie2022hEDSresistance],
  mechanism: [Reduced stabilization demand + slow tempo (no explosive recruitment) + accommodating resistance (matches strength curve) + seated position → lower HR response and lower PEM risk vs equivalent-load free weights.],
  chapter-ref: [ch17: resistance band hr],
  prediction: [Seated band exercises (2 × 8 reps, 30% 1RM, 5-2-5 tempo) → ≥5 bpm lower peak HR vs. matched free-weight protocol; lower PEM incidence at equivalent volume over 4 weeks.],
  treatment: [Resistance bands as preferred loading modality for ME/CFS patients needing strength maintenance. Combine with compound movement preference. 30% 1RM, 5-2-5 tempo, seated/supine only.],
  limitation: [No ME/CFS band vs. free-weight trial. Max resistance limited by band availability. Non-linear tension complicates precise progressive overload. Some movements difficult to replicate with bands. Not yet replicated.],
)

#registry-entry(
  [Compound Movements May Produce Lower HR Than Isolated Movements in ME/CFS],
  type: "S",
  certainty: "0.40",
  evidence: [ME/CFS patients show impaired perfusion redistribution and reduced cardiac output. Compound movements distribute metabolic load across larger muscle mass, potentially reducing peak local demand and ischemic stress. Isolated movements concentrate demand in small muscle groups, risking local perfusion failure and compensatory sympathetic HR elevation. This inverts the healthy pattern where compound > isolated HR. Zero direct comparative data.],
  citations: [Mechanistic: global hypoperfusion literature (Chapter @ch:cardiovascular); cardiac output limitation in ME/CFS.],
  mechanism: [Global hypoperfusion → regional load distribution matters → compound movement = lower per-gram-tissue metabolic demand → reduced local ischemia → reduced compensatory sympathetic HR elevation. Isolated movement = concentrated demand → local perfusion failure → sympathetic activation → disproportionate HR.],
  chapter-ref: [ch17: compound vs isolated hr],
  prediction: [Matched-RPE crossover: seated row (compound) → ≥5 bpm lower HR vs. bicep curl (isolated); isolated → greater NIRS deoxygenation; compound → lower PEM over 4-week trial.],
  treatment: [When prescribing resistance exercise, prioritize compound movements (seated row, chest press, leg press) over isolation (bicep curl, tricep ext, leg curl) at equivalent intensity. Applies to bands, free weights, and machines.],
  limitation: [Completely untested in ME/CFS. Assumes local perfusion failure, not total metabolic demand, is dominant HR driver. Compound movements require more motor coordination (increased cognitive demand). Individual perfusion reserve varies.],
)

#registry-entry(
  [Passive Range-of-Motion Protocols Prevent Contractures Without Triggering PEM in Bedbound ME/CFS],
  type: "S",
  certainty: "0.40",
  evidence: [ICU patients immobilized greater than 7 days and astronauts during microgravity show PROM reduces contracture development and muscle atrophy compared to no intervention. Large ICU studies confirm safety and feasibility even in mechanically ventilated patients. Energy cost borne by caregiver; patient muscles remain inactive, eliminating the metabolic PEM trigger.],
  citations: [@Morris2008ICUMobility @Bao2022NMESICU],
  mechanism: [Caregiver-administered PROM → no patient muscle contraction → no metabolic PEM trigger → contracture prevention from passive joint movement through range. Risk is positional (subluxation, pain, autonomic activation), not metabolic.],
  chapter-ref: [ch17: bedbound passive rom],
  prediction: [Bedbound ME/CFS patients receiving PROM (2--3 sessions/week × 12 weeks) → slower joint ROM decline (goniometry) and lower contracture incidence vs. matched bedbound controls; PEM frequency unchanged.],
  treatment: [PROM as the safest movement intervention for bedbound ME/CFS. Caregiver-administered, supine position, pain-free range, very slow tempo (5-second per movement), 5--8 min/session. Monitor at 6h, 24h, 48h post-session for PEM.],
  limitation: [Not tested in ME/CFS. Extrapolation from critical care/space medicine populations. Even passive movement may trigger PEM in very severe patients. Caregiver availability is access barrier. Hypermobility requires mid-range only.],
)

#registry-entry(
  [Bed-Based Isometric Holds as Lowest-Intensity Safe Movement Tier for Severe ME/CFS],
  type: "S",
  certainty: "0.40",
  evidence: [Isometric exercises already in Ch. 17 (wall sits, plank holds, leg presses) — appropriate for mild-to-moderate. For severe/bedbound, lowest possible intensity tier: supine single-muscle 3-second holds, HR ≤5 bpm above resting, no respiratory rate increase, no effort sensation. Extends existing framework to explicit severity stratification.],
  citations: [@Oka2014isometricYoga @Oka2017recumbentYoga],
  mechanism: [Supine single-muscle isometric contraction (3 seconds) → minimal metabolic demand → ≤5 bpm HR increase → no respiratory rate change → no PEM trigger. Progressive: 3→5→10 seconds over weeks if tolerated.],
  chapter-ref: [ch17: bedbound isometric],
  prediction: [Bedbound ME/CFS performing supine single-muscle 3-second isometric holds (2--3 min/day total contraction time) → slower quadriceps CSA decline (ultrasound at 12 weeks) vs. bedbound controls; PEM frequency unchanged.],
  treatment: [Single-muscle unilateral only. Submaximal intensity (can talk during contraction). 1 session/day, 2--3 min total contraction. HR monitor. Symptom tracking at 6h, 24h, 48h. Not on active PEM days. Progress only after 2 weeks zero-PEM tolerance.],
  limitation: [Even minimal isometrics may trigger PEM in very severe patients — not guaranteed safe. 3-second, single-muscle, sub-5-bpm thresholds are clinician-estimated, not empirically validated. May be too minimal for measurable muscle preservation. Oka 2017 (n=12 pilot) was severe but not bedbound-severe.],
)

#registry-entry(
  [Engineered Exosomes as CNS-Targeted Therapeutic Delivery Vehicles for ME/CFS Neuroinflammation],
  type: "S",
  certainty: "0.40",
  evidence: [Endogenous EVs traffic bidirectionally across BBB in ME/CFS (Ramos-Zaldívar et al. 2022 review of EV BBB crossing mechanisms). Kang et al. 2026 proof-of-principle: engineered exosomes can deliver functional mRNA cargo across BBB to reverse neuroinflammation in mice. Engineering platform context from Sanadgol et al. 2025 review of brain-targeted nucleic acid delivery. Platform generalisable but ME/CFS-specific cargo, targeting, pharmacokinetics, and safety entirely unknown.],
  citations: [@Kang2026ExosomeHSP70Sleep],
  mechanism: [Patient-derived or engineered exosomes + CNS-targeting ligand (RVG, Lamp2b) + therapeutic mRNA cargo (anti-inflammatory cytokines, neurotrophic factors, mitophagy enhancers) → systemic administration → BBB crossing → CNS cell uptake → therapeutic protein expression → neuroinflammation reduction + neural repair.],
  chapter-ref: [engineered exosome bbb mrna],
  prediction: [Radiolabeled engineered exosomes will show measurable CNS uptake in ME/CFS animal models; iPSC-derived ME/CFS neurons treated with anti-inflammatory mRNA-loaded exosomes will show reduced cytokine production and improved mitochondrial respiration vs untreated cells.],
  treatment: [Research direction — no near-term clinical application. Characterizing endogenous EV trafficking in ME/CFS would illuminate inter-compartment signaling regardless of whether therapeutic exosomes ever reach the clinic.],
  limitation: [No ME/CFS data of any kind; single preclinical proof-of-principle study; CNS delivery fraction typically less than one percent of injected dose; manufacturing and regulatory pathways do not exist; cost and complexity prohibitive; immunogenicity concerns in immune-dysregulated patients.],
)

#registry-entry(
  [Point-of-Care Ultrasound and Urinary Creatinine as Bedside Muscle Monitoring in Bedbound ME/CFS],
  type: "S",
  certainty: "0.40",
  evidence: [POCUS quadriceps CSA validated against DXA/CT in ICU. Urinary creatinine correlates with muscle mass (r≥0.7 with DXA) but confounded by diet/renal function. Bedbound patients cannot travel for DXA/CT — bedside alternatives are essential for monitoring intervention efficacy.],
  citations: [ICU POCUS validation literature; urinary creatinine validation against DXA.],
  mechanism: [POCUS → mid-thigh transverse CSA → 5-min supine scan → detects ≥5% CSA change. Urinary creatinine → 24h collection → serial measurements track muscle mass trends. Both are radiation-free, low-cost, bedside.],
  chapter-ref: [ch17: muscle mass monitoring],
  prediction: [Ultrasound CSA decline rate → correlates with Bell Disability Scale change; detects intervention effects with sensitivity comparable to DXA-measured lean mass over 24 weeks in bedbound ME/CFS.],
  treatment: [Baseline POCUS + urinary creatinine at intervention start. POCUS every 6 weeks. Urinary creatinine at 12-week intervals. Both at 12-week endpoint for any intervention trial.],
  limitation: [Non-ME/CFS validation only. Ultrasound operator-dependent. Urinary creatinine confounded by diet, renal function, collection completeness. Neither measures bone density. Floor effects at very low muscle mass. Reliable 24h collection challenging in severe patients.],
)

#registry-entry(
  [Caregiver Training and Protocol Fidelity Improves Muscle Preservation Outcomes in Bedbound ME/CFS],
  type: "S",
  certainty: "0.40",
  evidence: [All bedbound interventions depend on caregiver execution. Standardized training (PROM technique, repositioning procedure, nutritional preparation, PEM recognition) may improve protocol fidelity and reduce adverse events. Established in chronic disease management; no ME/CFS caregiver trial.],
  citations: [Caregiver education literature in chronic disease management; extrapolated to ME/CFS by analogy.],
  mechanism: [Structured caregiver training → higher protocol adherence (validated by observation) → better muscle preservation outcomes → lower adverse event rate. Training elements: correct joint positioning/range limits (PROM), safe position transitions/pressure inspection (repositioning), small frequent meals/GI monitoring (nutrition), standardized symptom logs (PEM recognition).],
  chapter-ref: [ch17: caregiver training],
  prediction: [Trained caregivers → higher protocol adherence (validated) and patients → better muscle CSA preservation vs. untrained caregivers over 12 weeks.],
  treatment: [Caregiver training as prerequisite for any PROM or NMES protocol in severe ME/CFS. Direct observation or video review for fidelity monitoring. Standardized checklists for each intervention component.],
  limitation: [No ME/CFS caregiver trial. Training may increase caregiver burden. Training availability is socioeconomic access barrier. Fidelity measurement is inherently intrusive — may not be acceptable to severely ill patients.],
)

#registry-entry(
  [Bifurcation Model of Exercise Dose-Response in ME/CFS],
  type: "S",
  certainty: "0.40",
  evidence: [Standard exercise models treat dose-response as monotonic (more exercise = more adaptation). In ME/CFS, the evidence suggests a bifurcation: below the PEM threshold (AT), movement prevents atrophy (maintenance); above threshold, it produces deterioration (PEM). This can be formalized as dF/dt = maintenance_rate for exertion ≤ threshold, dF/dt = deterioration_rate for exertion > threshold, where F = functional capacity. Note: the group-average CPET-2 decline that anchors the deterioration regime is contested — Keller 2024 (positive) vs. Mancini/Natelson 2026 (null @Mancini2026CPET). The model remains valid if deterioration is individually variable rather than group-average, since elevated RPE and chronotropic incompetence are consistent across all CPET studies.],
  citations: [@keller2024cpet provides threshold data (AT as bifurcation point); @Mancini2026CPET provides null group-average result but corroborates elevated RPE and chronotropic incompetence. No formal mathematical model exists for this pattern in ME/CFS.],
  mechanism: [Exercise in ME/CFS exhibits a bifurcated dose-response curve — the sign of dF/dt flips at a threshold exertion level. This contrasts fundamentally with the monotonic dose-response assumed by GET and standard exercise physiology. The bifurcation point is individually calibrated to the patient's anaerobic threshold.],
  chapter-ref: [ch17: bifurcation model],
  prediction: [Piecewise function (maintenance below AT, deterioration above AT) will better fit longitudinal FUNCAP trajectories (R² improvement ≥0.10) than linear dose-response model, when tested with wearable HR + activity data over 24 weeks in n≥30 ME/CFS patients.],
  treatment: [Formalizes the clinical intuition that "movement within envelope helps, movement above harms." Provides mathematical justification for HR-based pacing thresholds. If validated: objective threshold calibration protocol for each patient.],
  limitation: [Model is conceptual with CPET grounding but no longitudinal validation. AT as bifurcation point assumed but PEM may have additional determinants (cognitive load, emotional stress). dF/dt sign change may be gradual, not binary at threshold. Individual calibration requires CPET which many patients cannot access or tolerate.],
)

#registry-entry(
  [Adapted Swimming Protocol for ME/CFS — Backstroke, Thermoneutral, No Turns],
  type: "S",
  certainty: "0.35",
  evidence: [Backstroke swimming: face always out of water (eliminates breath-holding), cervical spine supported, horizontal constant position, hydrostatic pressure benefit. Standard lap swimming introduces PEM risks from Valsalva, cervical stress, and wall turns. Adapted protocol eliminates these. NCT07454395 registered — no results yet.],
  citations: [@Schmid2007WaterImmersion],
  mechanism: [Horizontal position (constant) + hydrostatic pressure + no breath-holding (no Valsalva) + no positional transitions (no turns) → minimized autonomic stress during aquatic exercise.],
  chapter-ref: [ch17: adapted swimming],
  prediction: [Adapted backstroke protocol → PEM incidence below 20% in mild-to-moderate POTS+ME/CFS over 8 weeks; backstroke vs. freestyle at matched RPE → lower HR (no Valsalva, reduced cervical stress).],
  treatment: [Backstroke in thermoneutral pool as one of the safest aquatic modalities for POTS+ME/CFS patients. Pool noodle for cervical support. Walk-turns at wall; no flip turns. 5--10 min initial, progress cautiously.],
  limitation: [Zero published data on this adapted protocol in ME/CFS. NCT07454395 pending. Backstroke technically challenging for non-swimmers. Pool access is socioeconomic/geographical barrier. Chlorine may trigger MCAS symptoms. Requires swimming competence.],
)

#registry-entry(
  [Nutritional Anti-Catabolic Strategies Slow Muscle Wasting in Bedbound ME/CFS],
  type: "S",
  certainty: "0.35",
  evidence: [HMB (3 g/day) preserved lean body mass during complete bed rest in older adults (RCT: --2.05 vs. --0.17 kg placebo, p=0.02) and maintained mitochondrial OXPHOS content and dynamics during rehabilitation. Protein, creatine, vitamin D, and omega-3 strategies supported by sarcopenia/ICU deconditioning literature. All low-risk, no patient exertion required.],
  citations: [@Deutz2013HMB @Standley2017HMBMitochondria],
  mechanism: [Protein ≥1.2 g/kg/day + leucine threshold (≥2.5 g/meal) → mTOR-mediated muscle protein synthesis activation. HMB → ubiquitin-proteasome pathway inhibition + mitochondrial dynamics preservation. Creatine → intramuscular phosphocreatine buffering. Omega-3 → anti-catabolic cytokine suppression.],
  chapter-ref: [ch17: nutritional anti catabolic],
  prediction: [Bedbound ME/CFS receiving combined nutritional protocol (protein 1.5 g/kg/d + creatine 5 g/d + HMB 3 g/d) → slower mid-thigh CSA decline (ultrasound/DXA at 12 weeks) vs. bedbound controls; no increase in GI PEM triggers.],
  treatment: [Oral supplements — minimal invasiveness. Small frequent servings essential (gastric emptying slowed in severe patients). Monitor: renal function (creatine), serum calcium (vitamin D), GI tolerance. Aspiration risk assessment in severe dysphagia.],
  limitation: [No ME/CFS trial. All evidence from healthy older adults (bed rest), ICU, or sarcopenia populations. HMB absorption/metabolism unknown in ME/CFS. Creatine may cause GI upset. Compliance requires caregiver assistance.],
)

#registry-entry(
  [Severity-Stratified Muscle Preservation Protocol Minimizes PEM While Maintaining Muscle in Bedbound ME/CFS],
  type: "S",
  certainty: "0.35",
  evidence: [Energy envelope theory provides theoretical basis for matching intervention intensity to individual capacity. Tiered protocol: A (positioning + nutrition only), B (+ PROM + minimal nutrition), C (+ isometrics + full nutrition + NMES if tolerated). Progression and regression rules based on PEM monitoring.],
  citations: [Energy envelope theory (Jason 2008); existing intervention evidence from Phase 1.],
  mechanism: [Intervention intensity matched to PEM sensitivity via tiered protocol → each patient receives maximum muscle preservation benefit within their individual tolerance limit → lower PEM frequency vs. one-size-fits-all protocol.],
  chapter-ref: [ch17: severity stratified preservation],
  prediction: [Bedbound ME/CFS patients on stratified protocol → lower PEM frequency + comparable muscle CSA decline rate vs. uniform protocol at 24 weeks.],
  treatment: [Individually calibrated intervention selection and progression rules for severe/bedbound patients. Autonomic monitoring (HR, BP) during passive interventions. PEM tracking at fixed intervals post-session.],
  limitation: [Tier definitions clinician-estimated, not empirically validated. PEM sensitivity variation may exceed tier granularity. Protocol complexity increases caregiver burden. Boundary between tiers subjective without objective biomarkers.],
)

#registry-entry(
  [ADL Capacity Stability as the Primary Fitness Outcome Metric in ME/CFS],
  type: "S",
  certainty: "0.35",
  evidence: [If fitness improvement cannot be achieved and maintenance is the ceiling, the natural outcome metric is ADL capacity stability measured over months to years rather than conventional fitness metrics (VO₂max, strength). FUNCAP-27 provides an 8-domain functional capacity assessment validated in ME/CFS. Serial assessments at 3-month intervals can track whether function is stable, declining, or improving.],
  citations: [@Sommerfelt2024FUNCAP @Jason2008EnergyEnvelope],
  mechanism: [Stability IS success — a patient with stable FUNCAP scores over 6+ months is achieving the highest possible outcome. Declining scores → remediable causes of envelope shrinkage. Improving scores → verify sustained (≥2 consecutive 3-month assessments) vs. temporary fluctuation.],
  chapter-ref: [ch17: adl stability metric],
  prediction: [Cohort study: serial FUNCAP-27 every 3 months over 24 months → fitness-maintenance-targeted counseling group shows equivalent or better trajectory vs. standard pacing, with lower boom-bust fluctuation rate. FUNCAP sensitivity to 3-month within-patient change not established — may require validation study first.],
  treatment: [Reframes flat trajectory as success, not "no progress." Identifies declining patients earlier. Reduces pressure to "improve" that paradoxically drives overexertion. Integrates with existing FUNCAP clinical use.],
  limitation: [FUNCAP-27 sensitivity to 3-month within-patient change not established. Stability may reflect measure insensitivity, not true functional stability. Requires conceptual shift resisted by patients, clinicians, researchers. No trial data for this reframing.],
)

#registry-entry(
  [Space Medicine and ICU Countermeasure Programs Offer Partially Translatable Frameworks for Bedbound ME/CFS],
  type: "S",
  certainty: "0.32",
  evidence: [NASA astronaut countermeasures (nutritional, vibration, resistance), ICU early mobility (PROM safety/feasibility), sarcopenia guidelines (protein, HMB, vitamin D), SCI NMES (atrophy prevention without voluntary movement), and ALS positioning protocols all translate to ME/CFS once active components are removed.],
  citations: [@Morris2008ICUMobility @Deutz2013HMB @Dirks2015NMES @Wollersheim2017WBV],
  mechanism: [Cross-disease analogy: extreme immobilization countermeasures → remove high-exertion components → adapt remaining nutritional, positioning, PROM elements to ME/CFS energy envelope → partial muscle/bone preservation without PEM risk from active components.],
  chapter-ref: [ch17: cross disease bridges],
  prediction: [Adapted countermeasure protocol (nutritional + PROM + positioning, no active components) → muscle CSA decline --0.3 to --0.5%/week vs. untreated --7 to --10%/week; PEM frequency unchanged.],
  treatment: [Nutritional protocol (HMB + creatine + vitamin D3 + omega-3) adapted from NASA/sarcopenia without exercise. PROM + positioning adapted from ICU without active mobility. NMES titrated to PEM tolerance.],
  limitation: [All analogies extrapolated from populations with fundamentally different pathophysiology. Removing active components may render countermeasures ineffective — efficacy data exist only for protocols including active components. No ME/CFS adaptation study.],
)

#registry-entry(
  [Water Rowing as POTS/ME/CFS-Tolerable Modality],
  type: "S",
  certainty: "0.30",
  evidence: [Water rowing combines three protective mechanisms: seated constant body position, hydrostatic pressure benefit from chest-deep immersion, and compound upper+lower body movement distribution. Rowing's rhythmic reciprocal pattern may entrain breathing and HRV. Face stays above water, unlike swimming. Zero ME/CFS trial data.],
  citations: [@Schmid2007WaterImmersion @Oka2014isometricYoga],
  mechanism: [Constant seated position + hydrostatic preload + compound movement (load distributed) → low orthostatic demand + parasympathetic shift + reduced local metabolic demand.],
  chapter-ref: [ch17: water rowing],
  prediction: [Water rowing (≤10 strokes/min, RPE ≤10, HR ≤85% AT) → lower HR per watt vs. land rowing; lower PEM (OR below 0.7) vs. matched-intensity land cycling; improved orthostatic tolerance post-rowing.],
  treatment: [Water rowing as a potential novel modality for mild-to-moderate ME/CFS POTS-comorbid patients with pool access. Ultra-conservative progression: 2 min/session start, +1 min every 2--3 weeks only if zero PEM.],
  limitation: [Zero ME/CFS water rowing data. Equipment access barrier (specialized pool ergometers). Pool transport may trigger PEM. Rowing is a learned motor skill. Compound demand may exceed capacity. Completely untested in ME/CFS.],
)

#registry-entry(
  [Multi-Variable ODE Extension Models Atrophy Rate as Function of Disuse, Nutrition, and PEM Frequency],
  type: "S",
  certainty: "0.25",
  evidence: [Mathematical induction from atrophy kinetics × nutritional intervention data. Model: dM/dt = --αD -- β(1 -- S) + γP where M=CSA, D=disuse, S=nutritional status, P=PEM frequency, and α,β,γ are patient-specific. No ME/CFS validation. Deutz 2013 provides potential α estimate.],
  citations: [Theory only; @Deutz2013HMB provides possible α parameter.],
  mechanism: [Muscle mass decline ≠ pure disuse in ME/CFS. Nutritional status (S) and PEM frequency (P) modulate atrophy slope. Addition of nutrition and PEM terms improves predictive accuracy over disuse-only model.],
  chapter-ref: [ch17: atrophy ode],
  prediction: [Multi-variable model predicts CSA decline more accurately (R² improvement ≥0.10) than disuse-only model when tested against longitudinal ultrasound data from bedbound ME/CFS (n≥15) over 12--24 weeks.],
  treatment: [No clinical application until model validated. If validated: objective guidance for intervention intensity (is nutrition adequate? do we need better PEM prevention?).],
  limitation: [No ME/CFS validation. Parameters unknown for ME/CFS — Deutz α from healthy older adults, not chronically ill. Model assumes linear additivity — likely interacting and nonlinear. γ (PEM) hypothetical. May require additional terms (inflammation, subtype, age) for acceptable accuracy.],
)

#registry-entry(
  [Explicit Fitness-Maintenance Goal-Setting Reduces Exercise-Related Psychological Distress],
  type: "S",
  certainty: "0.20",
  evidence: [ME/CFS patients exist in a rehabilitation culture that equates progress with improvement. When the achievable ceiling is stability, the mismatch between expectation and reality generates frustration and may drive envelope overshoot. Explicitly naming fitness maintenance as the goal — with stability-as-success reframing — removes this conflict. ACT frameworks for living meaningfully within limitation are directly applicable.],
  citations: [ACT literature for chronic illness; no ME/CFS-specific trial.],
  mechanism: [Goal-behavior alignment psychology: when achievable goals match prescribed behavior, distress is lower than when unachievable goals are pursued. Substituting "maintenance" for "improvement" as the stated treatment goal aligns patient expectations with physiological reality.],
  chapter-ref: [ch17: fitness acceptance],
  prediction: [Patients randomized to fitness-maintenance goal-setting vs. standard pacing → lower exercise-related distress at 12 weeks (validated exercise-avoidance/anxiety scale), equivalent or better PEM frequency.],
  treatment: [Protocol: expectation-setting at treatment initiation ("this movement program maintains function — it cannot build fitness"), outcome reframing ("stability is success"), monitoring for goal-behavior mismatch, ACT integration.],
  limitation: [Untested psychological intervention frame. Some patients find acceptance of limitation more distressing than pursuit of improvement, even if pursuit is futile. Cultural context matters — improvement narrative dominance varies across healthcare systems. No ME/CFS-specific trial.],
)

#registry-entry(
  [PEM Frequency May Accelerate Muscle Atrophy in ME/CFS Independently of Disuse],
  type: "S",
  certainty: "0.15",
  evidence: [Hypothetical: PEM episodes involve inflammatory activation, oxidative stress, and metabolic crisis — all catabolic stimuli. Repeated PEM may accelerate protein breakdown beyond disuse rate. dM/dt = f(disuse, PEM frequency, PEM severity, nutrition). If validated, PEM prevention becomes a de facto muscle preservation intervention.],
  citations: [Theoretical — no direct evidence for PEM-specific atrophy acceleration. Inflammatory catabolism in chronic illness is established; PEM-specific component purely speculative.],
  mechanism: [PEM episode → systemic inflammatory activation + oxidative stress + metabolic crisis → muscle protein breakdown spike → recovery-period catabolism → cumulative atrophy exceeds pure disuse rate.],
  chapter-ref: [ch17: pem atrophy acceleration],
  prediction: [Bedbound ME/CFS matched for immobility: high-PEM (≥2/month) → faster CSA decline vs. low-PEM (≤0.5/month), independent of nutrition and positioning.],
  treatment: [PEM prevention (pacing, HR monitoring, energy envelope) may be a muscle preservation strategy — speculative pending evidence. Aggressive PEM prevention is already clinically indicated; this model provides additional rationale.],
  limitation: [Purely theoretical. No data correlating PEM frequency with muscle mass. Disuse duration and PEM frequency confounded (more severe → more PEM + longer immobility). PEM-specific atrophy beyond standard inflammatory catabolism not established.],
)

#registry-entry(
  [NMES/EMS as Muscle Preservation Strategy in Bedbound ME/CFS — Unknown PEM Risk],
  type: "S",
  certainty: "n/a",
  evidence: [NMES prevents muscle atrophy completely in fully sedated ICU patients (within-subject: control leg type I --16%, type II --24%; stimulated leg no atrophy, mTOR +19%). RCT shows NMES + PROM attenuates atrophy better than PROM alone. Bypasses volitional/CNS motor coordination. Unknown whether electrically-induced contractions trigger PEM identically to voluntary contractions.],
  citations: [@Dirks2015NMES @Bao2022NMESICU],
  mechanism: [NMES → direct motor unit activation via electrical stimulation → muscle contraction without CNS coordination or patient effort → mTOR pathway activation → muscle protein synthesis maintenance. Metabolic cost of electrically-induced vs. voluntary contractions unknown in ME/CFS.],
  chapter-ref: [ch17: bedbound nmes and ch14a: nmes severe],
  prediction: [Pilot: bedbound ME/CFS receiving minimal NMES (5 min, lowest visible contraction, single muscle group) → PEM incidence not higher than sham stimulation; if unable to separate stimulation from PEM → NMES remains contraindicated pending further study.],
  treatment: [No clinical recommendation until safety established. Research priority: does NMES trigger PEM? If future research identifies sub-PEM-threshold NMES parameters → potentially valuable atrophy countermeasure for most vulnerable patients.],
  limitation: [No ME/CFS NMES trial exists. Safety question is prerequisite to efficacy question. Autonomic and metabolic effects of NMES uncharacterized in ME/CFS. Twice-daily ICU protocol likely too intensive. Contraindicated in active PEM until safety established.],
)


=== Post-Exercise Recovery and PEM Resolution

#registry-entry(
  [Resolution Failure as Primary PEM Defect],
  type: "S",
  certainty: "0.45",
  evidence: [PEM reflects failure of active resolution mechanisms (SPM biosynthesis, mitophagy, HSP clearance, vagal reactivation) rather than severity of exercise-induced damage. Damage magnitude may be normal; resolution machinery is defective. Convergent with SPM deficiency (cert 0.45) and autophagy failure (cert 0.45) hypotheses.],
  citations: [Ch.26 synthesis; resolution failure framework from SPM, autophagy, HSP literatures.],
  mechanism: [Exercise → normal damage signals → resolution pathways fail → damage persists → prolonged recovery. In healthy: robust SPM surge + mitophagy activation + HSP clearance → 2-4h recovery. In ME/CFS: blunted resolution → 24-72h+ recovery.],
  chapter-ref: [ch26: resolution failure pem],
  prediction: [Post-exercise lipidomic time-course (0, 1, 4, 8, 24, 48h) in ME/CFS shows blunted RvD1/RvE1 surge at 1-4h vs controls (fold-change less than 1.5 vs greater than 3.0). PBMC mitophagy markers (PINK1, Parkin) peak delayed past 8h. Falsified if resolution time-course matches controls.],
  treatment: [Resolution-enhancing interventions (SPM precursors, autophagy inducers, vagal stimulation) prioritized over damage-suppression strategies.],
  limitation: [No post-exercise resolution time-course data in ME/CFS; damage-normal assumption untested — damage may also be supranormal.],
)

#registry-entry(
  [Recovery Failure as Network Collapse],
  type: "S",
  certainty: "0.40",
  evidence: [PEM recovery failure reflects collapse of multi-system coordination (autonomic, metabolic, immune, neuroendocrine) below a critical coupling threshold. Single-system deficits insufficient to explain prolonged recovery times. Analogous to power grid blackout: individual component failures cascade when compensatory reserve exhausted.],
  citations: [Ch.26 synthesis; network failure models from complex systems theory.],
  mechanism: [Physiological stress (exercise) → multi-system response → coupling between systems degrades beyond critical threshold → systems decouple → recovery processes fail → prolonged recovery. Below threshold: normal recovery. Above threshold: catastrophic recovery failure.],
  chapter-ref: [ch26: recovery network collapse],
  prediction: [Continuous multi-system monitoring (HRV, glucose, actigraphy, temperature) during exercise recovery in ME/CFS will show rapid decline in cross-system coupling coherence preceding prolonged PEM, vs stable coupling in recovered controls. Falsified if coupling does not distinguish PEM from normal recovery.],
  treatment: [Multi-system monitoring for PEM prediction; threshold-based activity pacing to prevent crossing critical coupling threshold.],
  limitation: [Network collapse model is conceptual; critical threshold not empirically identified for any physiological variable pair.],
)

#registry-entry(
  [Antihistamine Pre-Treatment as PEM Blocker],
  type: "S",
  certainty: "0.40",
  evidence: [Histamine release during exercise from mast cells and basophils amplifies vasodilation, neuroinflammation, and cytokine cascades in ME/CFS. H1/H2 antihistamine pre-treatment (1h before activity) may block the histamine amplification step, preventing the inflammatory cascade that drives PEM. Supported by MCAS overlap (cert 0.45) and mast cell-MMP axis (cert 0.50).],
  citations: [Ch.26 synthesis; MCAS literature; mast cell degranulation during exercise documented.],
  mechanism: [Exercise → mast cell degranulation → histamine release → H1R/H2R activation → vasodilation + neuroinflammation + cytokine amplification → inflammatory cascade → PEM. Antihistamine pre-treatment blocks H1/H2 receptors → vasodilation/neuroinflammation reduced → inflammatory cascade truncated → PEM prevented or attenuated.],
  chapter-ref: [ch26: antihistamine pem blockade],
  prediction: [Crossover trial (n=20): cetirizine 10mg + famotidine 20mg 1h before standardized CPET reduces PEM severity (DSQ-PEM at 24h, AUC) by ≥40% vs placebo pre-treatment. Falsified if PEM difference less than 20% or not significant.],
  treatment: [If validated: pre-exercise antihistamine protocol (H1+H2 blockade) as PEM prophylaxis. Low-risk, OTC, immediately accessible.],
  limitation: [No ME/CFS antihistamine pre-treatment trial. Mast cell degranulation triggered by exercise in ME/CFS unconfirmed. Antihistamines may not address non-histamine mast cell mediators.],
)

#registry-entry(
  [Thermal HSP70/PGC-1α Bypass as Exercise Mimetic],
  type: "S",
  certainty: "0.35",
  evidence: [Controlled heat exposure (sauna, hot pack) induces HSP70 and PGC-1α without contractile activity or cardiorespiratory demand. Passive heat elevates HSP70 in skeletal muscle, stimulates mitochondrial biogenesis via PGC-1α, and improves insulin sensitivity. Provides cellular exercise-mimetic benefits without PEM trigger of physical exertion.],
  citations: [Ch.26 synthesis; HSP70 thermal induction literature; PGC-1α heat response data.],
  mechanism: [Heat stress → HSP70 upregulation + PGC-1α activation → mitochondrial biogenesis + stress protein expression + metabolic adaptation → cellular training effect without muscle contraction → preserves conditioning without PEM.],
  chapter-ref: [ch26: thermal exercise mimetic],
  prediction: [4-week controlled heat therapy (sauna 45°C, 15 min, 3x/week) in ME/CFS increases PBMC HSP70 by ≥30% and muscle PGC-1α mRNA (biopsy) by ≥50% without PEM induction in >70% of participants. Falsified if PEM rate exceeds 50% or protein targets unchanged.],
  treatment: [Passive heat as non-exercise conditioning strategy for patients unable to tolerate any active movement.],
  limitation: [No ME/CFS heat therapy trial with HSP70/PGC-1α endpoints; heat intolerance may limit tolerability; sauna access barrier.],
)

#registry-entry(
  [Directional Heart-Rate Signal Separates Deconditioning from ME/CFS],
  type: "H",
  certainty: "0.55",
  evidence: [Davenport et al.\ 2025 argued that deconditioning and PEM are not mutually exclusive and that the lower (rather than elevated) exercise heart rate in post-infectious ME/CFS vs healthy volunteers is inconsistent with deconditioning and consistent with chronotropic incompetence and impaired oxidative metabolism @Davenport2025EffortDeconditioning. Supported by @Davenport2019Chronotropic (chronotropic intolerance as overlooked determinant), @Cook2022MCAMExercise (n=403 fitness-matched, CI + elevated RPE), @vanCampen2023OrthostaticChronotropic (n=414), @Miwa2023OrthostaticChronotropic (n=101). Deconditioning elevates submaximal HR (low stroke volume compensated by tachycardia); chronotropic incompetence reduces it. Origin: /integrate-topic davenport2025-effort-deconditioning.],
  citations: [@Davenport2025EffortDeconditioning @Davenport2019Chronotropic @Cook2022MCAMExercise @vanCampen2023OrthostaticChronotropic @Miwa2023OrthostaticChronotropic],
  mechanism: [In deconditioning, reduced stroke volume is compensated by elevated submaximal heart rate. In ME/CFS with chronotropic incompetence, the heart fails to raise heart rate at fixed workload despite low stroke volume and impaired oxidative metabolism — a failed-compensation signature. The direction of submaximal HR change (elevated in deconditioning vs reduced in ME/CFS) is the falsifiable separating signal.],
  chapter-ref: [ch46: deconditioned-matched CPET separation; ch37 + ch41 effort-preference controversy; ch17 @sec:cpet-hypotheses],
  prediction: [In a three-arm 2-day CPET (ME/CFS; objectively activity-matched deconditioned controls; trained healthy controls), ME/CFS shows submaximal HR at fixed workload below deconditioned-matched controls, a Day-1→Day-2 decline in workload at ventilatory threshold (which deconditioned controls do not show), and a chronotropic index below 0.80 and below that of deconditioned-matched controls. Falsified if deconditioned controls reproduce the ME/CFS pattern (blunted HR + Day-2 decline).],
  treatment: [If validated, distinguishes energy-envelope/pacing management (ME/CFS) from reconditioning (deconditioning), preventing GET harm.],
  limitation: [The "lower HR" argument only survives if measured at fixed submaximal workload (deconditioning also lowers peak HR), if β-blockers/ivabradine and the POTS/hyperadrenergic subset are excluded, and if early termination is ruled out. Chronic inactivity can itself blunt β-adrenergic responsiveness.],
)



=== Skeletal Muscle Regeneration

#table(
  columns: (1fr, 2fr, 1fr),
  [*ID / Label*], [*Details*], [*Phase / Cert*],

  [spec:sc-depletion-structural-ratchet], [Charlton 2026 AMS abstract: first direct measurement of satellite cells in ME/CFS/LC muscle — reduced Pax7⁺ SCs (P$<$0.001), trending reduced PDGFRα⁺ FAPs (P=0.061), SC-OXPHOS correlation ($r = 0.43$). If replicated, SC depletion provides mechanism for progressive muscle damage: each exertion causes micro-damage that cannot be repaired due to stem cell exhaustion. Single biobank, conference abstract only, unreplicated. @Charlton2026SCdepletion @Bhattacharya2024SCmetabolic @Dumont2015SCbiology],[Phase 3 / 0.37],

  [spec:sc-depletion-glycolytic-shift], [Bidirectional loop: OXPHOS failure → glycolytic fibre remodelling → SC niche degradation → impaired repair → further loss of oxidative fibres. SCs require OXPHOS for differentiation; the glycolytic shift documented in ME/CFS muscle may be both cause and consequence of regeneration failure. Untested mechanistic inference.],[Phase 3 / 0.30],

  [oq:sc-depletion-primary-vs-secondary], [Four non-mutually-exclusive mechanisms: (1) primary autoimmune/viral niche attack, (2) secondary to mitochondrial failure, (3) secondary to chronic inflammation, (4) secondary to disuse. Different mechanisms → different interventions. Resolution requires independent replication, functional SC assays, longitudinal data, confounder adjustment.],[Phase 3 / n/a],

  [spec:sc-depletion-convergent-repair], [SC depletion converges with autonomic macrophage polarization and NK repair dysfunction into a multi-layered tissue repair crisis. No single intervention likely sufficient — combination strategies targeting multiple layers simultaneously may be necessary. Hypothesis-level convergence only.],[Phase 3 / 0.37],

  [oq:sc-depletion-postinfectious-convergence], [Near-identical SC depletion in ME/CFS and LC suggests convergent post-infectious mechanism. Key question: is SC depletion reversible? In aging, SC decline is permanent. If irreversible in ME/CFS, priority shifts from restoration to protection of remaining SCs — fundamentally different strategy.],[Phase 3 / n/a],
)


=== Weight Management in ME/CFS

#registry-entry(
  [DXA as Standard ME/CFS Body Composition Assessment],
  type: "P",
  certainty: "0.65",
  evidence: [BMI misclassifies body composition in immobile populations (SCI, Liusuwan 2004). DXA provides fat mass, lean mass, bone density, visceral fat in 10-minute scan.],
  citations: [@Liusuwan2004SCI],
  mechanism: [Sarcopenic obesity invisible to BMI. DXA distinguishes fat gain from lean loss masking as stable weight.],
  chapter-ref: [ch26: dxa standard assessment],
  prediction: [DXA reclassifies >20% of ME/CFS patients' body composition status vs BMI-based classification.],
  treatment: [Without DXA, a patient losing 5 kg muscle and gaining 5 kg fat has "stable weight" — no one intervenes.],
  limitation: [DXA not available in most clinics; cost barrier; requires patient transport to facility.],
)

#registry-entry(
  [Overfeeding Paradox: Positive Energy Balance Worsens Sarcopenic Obesity in ME/CFS],
  type: "H",
  certainty: "0.55",
  evidence: [Biolo 2008: positive energy balance during 5-week bed rest accelerated muscle atrophy via oxidative stress. Energy balance maintenance was protective. ME/CFS-specific replication absent.],
  citations: [@Biolo2008BedRest],
  mechanism: [In immobilized ME/CFS, excess calories increase oxidative stress and alter protein metabolism, accelerating muscle loss while promoting fat deposition. Well-intentioned overfeeding worsens the sarcopenic obesity it intends to prevent.],
  chapter-ref: [ch26: overfeeding paradox],
  prediction: [Controlled overfeeding (+500 kcal/day × 4 weeks) in bedbound ME/CFS produces measurable decrease in lean mass (BIA/POCUS) and increase in urinary 8-isoprostane vs energy balance maintenance.],
  treatment: [Energy balance maintenance (not surplus) with protein prioritization within the caloric envelope. Stop encouraging bedbound patients to eat more to keep weight up.],
  limitation: [Biolo 2008 used healthy volunteers, not chronic illness. ME/CFS-specific overfeeding study needed.],
)

#registry-entry(
  [Metabolic Adaptation Amplifies Weight Regain in ME/CFS],
  type: "H",
  certainty: "0.55",
  evidence: [Weight loss triggers metabolic adaptation (REE falls more than predicted) persisting ≥1 year (Maclean 2011). ME/CFS baseline REE likely blunted.],
  citations: [@Maclean2011Regain @Alazzam2023SCI],
  mechanism: [ME/CFS blunted baseline REE + further diet-induced reduction = energy needs below survivable intake → regain exceeds pre-diet weight. Cycle worsens with each attempt.],
  chapter-ref: [ch26: metabolic adaptation amplification],
  prediction: [Weight-cycling ME/CFS patients show greater metabolic adaptation than non-cycling matched for BMI and severity.],
  treatment: ["Calories in fewer than calories out" is not just ineffective but potentially harmful in ME/CFS.],
  limitation: [Metabolic adaptation well-established in general population; ME/CFS-specific amplification unstudied.],
)

#registry-entry(
  [Hypometabolic Index as Clinical Biomarker],
  type: "P",
  certainty: "0.55",
  evidence: [Ratio of measured REE to predicted REE defines hypometabolic index; values less than 0.80 indicate clinically significant hypometabolism. Analogous to Metabolic Reserve Score (ch29) but simpler.],
  citations: [@Alazzam2023SCI @Buchholz2003PAL],
  mechanism: [Measured REE / predicted REE ratio stratifies patients into high/low metabolic reserve phenotypes and guides caloric prescription.],
  chapter-ref: [ch26: hypometabolic index],
  prediction: [Hypometabolic index correlates with weight trajectory over 6 months (r > 0.3) in ME/CFS consuming standardized diets.],
  treatment: [Single actionable clinical test — as essential as thyroid labs for metabolic assessment.],
  limitation: [Indirect calorimetry requires patient cooperation; difficult in very severe patients.],
)

#registry-entry(
  [POCUS and MUAC as Bedside Body Composition Surrogates],
  type: "S",
  certainty: "0.50",
  evidence: [MUAC and calf circumference predict sarcopenia in elderly. POCUS quadriceps thickness correlates with DXA lean mass. Bedbound-appropriate.],
  citations: [@Liusuwan2004SCI],
  mechanism: [2-minute POCUS scan or MUAC measurement tracks muscle status without moving patient.],
  chapter-ref: [ch26: pocus bedside composition],
  prediction: [POCUS quadriceps changes correlate with DXA lean mass changes (r above 0.7) over 6 months.],
  treatment: [A 2-minute bedside ultrasound feasible in any clinic; no special equipment beyond probe.],
  limitation: [Direct ME/CFS validation needed; operator-dependent measurement variability.],
)

#registry-entry(
  [ME/CFS-Calibrated REE Predictive Equation],
  type: "P",
  certainty: "0.50",
  evidence: [SCI literature shows 5–32% overestimation by standard equations. ME/CFS-adjusted correction factor (REE_Mifflin × 0.75–0.95) derived from PAL 1.2–1.4. Needs prospective validation.],
  citations: [@Alazzam2023SCI @Buchholz2003PAL],
  mechanism: [ME/CFS-specific correction factor based on SCI-derived overestimation range and severity-dependent activity multipliers.],
  chapter-ref: [ch26: ree equation mecfs],
  prediction: [ME/CFS-adjusted equation improves prediction accuracy (lower bias, narrower LoA) vs unadjusted Mifflin-St Jeor against indirect calorimetry.],
  treatment: [Democratizes precision caloric prescription — any clinician with scale and formula can estimate needs.],
  limitation: [Equation needs validation; SCI analogy imperfect (intact sympathetic tone in ME/CFS may offset expected REE reduction).],
)

#registry-entry(
  [Respiratory Quotient as Substrate Inflexibility Marker],
  type: "P",
  certainty: "0.50",
  evidence: [RQ reflects fuel mix oxidized; impaired CPT/ACAD predicts elevated fasting RQ >0.85 in ME/CFS. No ME/CFS RQ data exist.],
  citations: [—],
  mechanism: [Elevated fasting RQ (>0.85) quantifies metabolic inflexibility to fat oxidation; tracks response to MCT oil, carnitine interventions.],
  chapter-ref: [ch26: rq substrate inflexibility],
  prediction: [Fasting RQ in ME/CFS differs from BMI-matched sedentary controls by >0.05.],
  treatment: [Non-invasive 15-minute measurement; actionable data for fat-bypass strategy selection.],
  limitation: [No ME/CFS RQ data exist; RQ confounded by hyperventilation (common in ME/CFS).],
)

#registry-entry(
  [Positional Feeding Protocol for Bedbound Patients],
  type: "P",
  certainty: "0.50",
  evidence: [Supine feeding alters gastric emptying, esophageal motility, aspiration risk. Left lateral decubitus position improves gastric emptying.],
  citations: [@Craft2015Barriers],
  mechanism: [Positional feeding strategies (semi-recumbent 30–45°, left lateral, small-volume frequent feeds) address mechanical barrier to adequate nutrition.],
  chapter-ref: [ch26: positional feeding],
  prediction: [Modified feeding position improves protein intake (g/kg/d) by ≥20% in bedbound ME/CFS.],
  treatment: [Addresses fundamental access-to-nutrition barrier, not just metabolic one.],
  limitation: [Position effect size unknown in ME/CFS; aspiration risk must be individually assessed.],
)

#registry-entry(
  [Metformin XR Timing for Metabolic Support],
  type: "S",
  certainty: "0.45",
  evidence: [Metformin proposed for ME/CFS (Fineberg 2025). XR has better GI tolerability than IR. AMPK activation may improve fat oxidation.],
  citations: [@Fineberg2025Metformin],
  mechanism: [Metformin XR timed with meals improves fat oxidation via AMPK activation, reduces inflammation, may reduce leptin resistance.],
  chapter-ref: [ch26: metformin metabolic platform],
  prediction: [Metformin XR improves fasting RQ (toward fat oxidation) and reduces CRP vs placebo over 12 weeks.],
  treatment: [Already available, inexpensive, weight-neutral. Off-label prescription possible.],
  limitation: [Complex I inhibition risk in population with pre-existing Complex I impairment.],
)

#registry-entry(
  [Severity-Tiered Weight Management Protocol],
  type: "S",
  certainty: "0.40",
  evidence: [No single approach fits all ME/CFS severity levels. Tiered protocol based on mobility/energy status ensures safety.],
  citations: [@Craft2015Barriers],
  mechanism: [Four tiers: bedbound (liquid PSMF + stack), chairbound (+ TRF), housebound (+ standing tolerance), improved (+ exercise ladder). Explicit calorie targets and escalation criteria.],
  chapter-ref: [ch26: severity tiered protocol],
  prediction: [Tiered protocol superior to ad-hoc management (DXA body composition) over 12 months.],
  treatment: [Prevents common error of prescribing housebound-level interventions to bedbound patients.],
  limitation: [No protocol tested; tier boundaries arbitrary; individual variability within severity strata.],
)

#registry-entry(
  [Creatine for Muscle and Cognitive Metabolic Support],
  type: "S",
  certainty: "0.40",
  evidence: [Creatine well-established for muscle preservation; cognitive evidence growing; no ME/CFS-specific trials.],
  citations: [@Scheibenbogen2025muscle],
  mechanism: [Creatine (5–10 g/d) increases muscle phosphocreatine stores, preserves mass during inactivity, reduces cognitive fatigue, improves glucose tolerance.],
  chapter-ref: [ch26: creatine metabolic],
  prediction: [Creatine improves 31P-MRS recovery kinetics in ME/CFS vs activity-matched controls.],
  treatment: [Cheap, safe, available; targets both muscle preservation and cognition.],
  limitation: [GI upset possible; no ME/CFS-specific dosing data; water retention may confound weight monitoring.],
)

#registry-entry(
  [Pacing-Based Meal Timing Aligned with Energy Windows],
  type: "S",
  certainty: "0.40",
  evidence: [ME/CFS patients experience diurnal energy variability; standard meal timing fights this rhythm. Clinically observed strategy.],
  citations: [@Craft2015Barriers],
  mechanism: [Eat when energy is available — one large protein-rich meal during daily energy window, liquid supplements when energy too low.],
  chapter-ref: [ch26: pacing meal timing],
  prediction: [Energy-aligned timing improves daily protein intake and reduces meal-skipping vs fixed schedule (crossover).],
  treatment: [Respects patient's actual capacity rather than imposing external structure that fails repeatedly.],
  limitation: [No formal study; energy window timing varies individually and day-to-day.],
)

#registry-entry(
  [ME/CFS Hypometabolic State Requires Recalibrated Caloric Targets],
  type: "S",
  certainty: "0.35",
  evidence: [SCI literature shows predictive equations overestimate RMR by 5-32%. No ME/CFS-specific REE study exists. Reduced mitochondrial substrate utilization and altered fuel preference suggest lower caloric needs than standard equations predict.],
  citations: [@Alazzam2023SCI @Buchholz2003PAL],
  mechanism: [Standard caloric equations overestimate ME/CFS energy needs by 15-30% in moderate-to-severe disease. Overestimation combined with appetite dysregulation drives positive energy balance and weight gain.],
  chapter-ref: [ch26: hypometabolic caloric recalibration],
  prediction: [Indirect calorimetry in ≥30 ME/CFS patients across severity levels shows measured REE >5% below Harris-Benedict or Mifflin-St Jeor predicted values.],
  treatment: [Severity-stratified caloric targets using SCI-derived activity multipliers (1.1-1.3 for bedbound) instead of standard equations.],
  limitation: [No direct ME/CFS REE measurements exist. SCI involves neurogenic denervation absent in ME/CFS.],
)

#registry-entry(
  [MCT + Leucine + HMB Anti-Catabolic Stack],
  type: "S",
  certainty: "0.35",
  evidence: [MCT provides ketogenic fuel bypassing CPT1; leucine activates mTOR; HMB inhibits ubiquitin-proteasome. Each validated independently.],
  citations: [@Weijs2025Protein @Scheibenbogen2025muscle],
  mechanism: [Three independent anti-catabolic nodes: energy substrate (MCT ketones), anabolic signal (leucine), catabolic brake (HMB). All powder/liquid, caregiver-implementable.],
  chapter-ref: [ch26: mct fat oxidation bypass],
  prediction: [8-week stack reduces urinary nitrogen excretion and preserves quadriceps thickness (POCUS) vs isocaloric control.],
  treatment: [Accessible without prescription; stable at room temperature; requires only ability to swallow.],
  limitation: [Combination unstudied; HMB absorption/metabolism in ME/CFS unknown.],
)

#registry-entry(
  [Metformin as Metabolic Platform for Weight Stabilization],
  type: "S",
  certainty: "0.35",
  evidence: [Metformin improves insulin sensitivity, activates AMPK, reduces inflammation (Fineberg 2025). May blunt metabolic adaptation (Maclean 2011).],
  citations: [@Fineberg2025Metformin @Maclean2011Regain],
  mechanism: [In hypometabolic ME/CFS, metformin may raise (normalize) metabolic rate rather than suppress it — bidirectional effect.],
  chapter-ref: [ch26: metformin metabolic platform],
  prediction: [Metformin increases (or maintains) REE in hypometabolic ME/CFS while decreasing REE in matched controls.],
  treatment: [Repurposes metformin from "weight loss adjunct" to "metabolic normalizer."],
  limitation: [Bidirectional effect speculative; no ME/CFS-specific metabolic rate data.],
)

#registry-entry(
  [L-Carnitine for CPT Bypass],
  type: "S",
  certainty: "0.35",
  evidence: [Carnitine is obligate carrier for long-chain fatty acid entry via CPT1/CPT2. Impaired CPT in ME/CFS may be partially correctable with 2–4 g/d.],
  citations: [—],
  mechanism: [Supraphysiological carnitine loading may increase fat oxidation rates and reduce glucose dependency driving hunger.],
  chapter-ref: [ch26: carnitine cpt bypass],
  prediction: [High-dose L-carnitine reduces fasting RQ (increased fat oxidation) or increases ketones in ME/CFS.],
  treatment: [Available, cheap, safe, mechanistically targeted — low-hanging fruit nutraceutical.],
  limitation: [CPT bypass effect assumes functional but submaximal CPT, not structural deficiency; GI side effects at high doses.],
)

#registry-entry(
  [Omega-3 EPA/DHA for Inflammation and Anabolic Sensitivity],
  type: "S",
  certainty: "0.35",
  evidence: [Omega-3s reduce NF-κB, TNF-α, IL-6; improve muscle anabolic sensitivity; improve lean mass preservation during weight loss.],
  citations: [—],
  mechanism: [Omega-3s (2–4 g/d EPA/DHA) address inflammation-driven leptin resistance and inflammation-induced anabolic resistance simultaneously.],
  chapter-ref: [ch26: omega3 anabolic sensitivity],
  prediction: [High-dose omega-3 (4 g/d) improves nitrogen balance and lean mass preservation during caloric restriction in ME/CFS vs placebo.],
  treatment: [Safe, available, easy to take; independent cardiovascular benefits.],
  limitation: [Fishy aftertaste/burping limits adherence; high-dose may prolong bleeding time; no ME/CFS-specific trials.],
)

#registry-entry(
  [Leptin-AMPK Double Lesion as Appetite Driver],
  type: "S",
  certainty: "0.35",
  evidence: [AMPK dysregulation confirmed in ME/CFS (ch09). Leptin resistance likely given elevated obesity prevalence and inflammation-leptin connection.],
  citations: [@Norris2017Obesity],
  mechanism: [Leptin resistance + AMPK dysregulation = double lesion in energy sensing: brain receives "starving" signals and insufficient satiety, creating relentless hunger.],
  chapter-ref: [ch26: leptin ampk driver],
  prediction: [ME/CFS patients with obesity show impaired POMC activation in response to exogenous leptin.],
  treatment: [Leptin sensitizers (not appetite suppressants) as correct therapeutic class.],
  limitation: [Leptin sensitivity not directly measured in ME/CFS; AMPK dysregulation documented but tissue-specific.],
)

#registry-entry(
  [Alternate-Day Modified Fasting for Muscle Preservation],
  type: "S",
  certainty: "0.35",
  evidence: [Dunn 2024: ADMF preserved FFM better than continuous restriction in cirrhosis+obesity. Mechanism via preserved autophagy, lower cortisol.],
  citations: [@Maclean2011Regain],
  mechanism: [Intermittent approach avoids sustained caloric restriction that may trigger PEM and HPA axis exacerbation. 12h window can expand to 14–16h.],
  chapter-ref: [ch26: admf muscle preservation],
  prediction: [ADMF in ME/CFS shows non-inferior or superior muscle preservation vs isocaloric continuous feeding (matched protein).],
  treatment: [Avoids restriction-related PEM; may be better tolerated than continuous restriction.],
  limitation: [Single positive study in cirrhosis; null meta-analysis in general population; no ME/CFS data.],
)

#registry-entry(
  [GPCR Autoantibody Receptor-Level Blockade as taVNS Inertia Mechanism],
  type: "S",
  certainty: "0.35",
  evidence: [GPCR autoantibodies (particularly $beta_2$-AR AAb) may block the splenic T-cell $beta_2$-AR — a critical step in the cholinergic anti-inflammatory pathway — rendering increased vagal efferent firing inert for downstream anti-inflammatory and clinical benefit even when HRV engagement (cardiac vagal efferent) is confirmed. Origin: brainstorm.],
  citations: [@Azcue2026gpcr @Blitshteyn2026Neuroimmune @Percin2025taVNS],
  mechanism: [taVNS → vagal efferents → splenic NE release → $beta_2$-AR (blocked by AAb) → no ACh → no $alpha_7$-nAChR → no TNF-$alpha$ suppression → clinical benefit absent. HRV preserved because cardiac vagal efferents do not depend on $beta_2$-AR.],
  chapter-ref: [ch27: tvns dissociation mechanisms],
  prediction: [AAb-low patients respond to active taVNS with SPM elevation and clinical benefit vs sham; AAb-high patients show HRV increase but no SPM or clinical change. Falsified if AAb-high patients respond equivalently.],
  treatment: [Stratify tVNS trials by GPCR AAb status — AAb-high patients should not be included in trials designed to test taVNS efficacy, as their CAP is likely blocked at receptor level.],
  limitation: [No direct evidence that $beta_2$-AR AAb block splenic CAP in humans. The pathway chain is long and each step is individually established but not demonstrated as a causal cascade in ME/CFS or PCC.],
)

#registry-entry(
  [Microbiome-Metabolite Profiling for Weight Trajectory],
  type: "S",
  certainty: "0.30",
  evidence: [Gut microbiome predicts weight gain in general population. ME/CFS dysbiosis well-documented.],
  citations: [—],
  mechanism: [Baseline microbiome composition predicts 12-month weight change, enabling preemptive dietary intervention. Bile acids and TMAO as energy harvest markers.],
  chapter-ref: [ch26: microbiome weight trajectory],
  prediction: [Baseline microbiome predicts 12-month weight change (AUC > 0.65).],
  treatment: [Identifies dysbiosis-driven weight gain subset treatable with prebiotics/probiotics.],
  limitation: [ME/CFS-specific microbiome-weight correlation absent; confounded by diet, medications.],
)

#registry-entry(
  [PSMF for Severe Obesity in ME/CFS],
  type: "S",
  certainty: "0.30",
  evidence: [PSMF (800–1000 kcal, high protein) forces fat utilization while preserving muscle. Sukkar 2013 demonstrated safety via NG tube; Bakhach 2016 oral.],
  citations: [—],
  mechanism: [Very low calories + high protein (1.5–2.0 g/kg IBW) forces fat utilization; continuous amino acid supply preserves muscle.],
  chapter-ref: [ch26: psmf severe obesity],
  prediction: [4-week PSMF: less than 25% of weight loss from fat-free mass (DXA).],
  treatment: [Most aggressive viable option for severely obese patients where weight drives disability.],
  limitation: [Requires medical supervision (electrolyte monitoring, refeeding risk); zero ME/CFS data.],
)

#registry-entry(
  [Liquid PSMF for Severe Bedbound Patients],
  type: "S",
  certainty: "0.30",
  evidence: [Sukkar 2013 NG PSMF safe in morbid obesity. Liquid form eliminates meal prep barrier for severe patients.],
  citations: [@Craft2015Barriers],
  mechanism: [Liquid PSMF (protein powder + micronutrients, 800–1000 kcal, 100–150 g protein) separates nutrition delivery from meal behavior.],
  chapter-ref: [ch26: psmf severe obesity],
  prediction: [8-week PSMF improves lean-to-fat ratio (DXA) vs ad-hoc intake.],
  treatment: [Eliminates all meal-related barriers for patients who cannot prepare food or chew.],
  limitation: [Most extreme intervention; requires medical supervision; zero ME/CFS data.],
)

#registry-entry(
  [Butyrate + Berberine + Protein as GLP-1 Pathway Stack],
  type: "S",
  certainty: "0.30",
  evidence: [All three components documented as GLP-1 modulators (ch26). Combination may produce synergistic endogenous GLP-1 stimulation.],
  citations: [—],
  mechanism: [Berberine activates AMPK; butyrate stimulates colonic L-cells; protein (leucine) stimulates GLP-1/PYY. Pulsatile rather than continuous receptor activation.],
  chapter-ref: [ch26: glp1 pathway stack],
  prediction: [Stack increases post-prandial GLP-1 AUC ≥30% vs protein alone.],
  treatment: ["DIY GLP-1" approach — all components available, safe, no prescription required.],
  limitation: [Combination unstudied; GLP-1 AUC effect unknown; requires responsible framing.],
)

#registry-entry(
  [Berberine Dose-Timing for AMPK Synergy],
  type: "S",
  certainty: "0.30",
  evidence: [Berberine activates AMPK (same target affected in ME/CFS). Timing before largest meal may maximize effect (ch26).],
  citations: [—],
  mechanism: [500 mg berberine 30 min before largest meal maximizes AMPK activation, improves fat oxidation, potentiates GLP-1 secretion.],
  chapter-ref: [ch26: berberine dose timing],
  prediction: [Pre-meal berberine reduces post-prandial glucose AUC vs with-meal dosing.],
  treatment: [Accessible, cheap; timing optimization costs nothing.],
  limitation: [No ME/CFS timing data; berberine bioavailability varies by formulation; potential GI side effects.],
)

#registry-entry(
  [Cachexia-Like PEM Muscle Loss as Distinct Phenotype],
  type: "S",
  certainty: "0.30",
  evidence: [Some ME/CFS patients lose muscle rapidly during PEM, resembling cancer cachexia. TNF-α, IL-6, activin/myostatin drive proteolysis.],
  citations: [@Scheibenbogen2025muscle],
  mechanism: [PEM-associated inflammatory signaling drives active catabolic muscle loss via ubiquitin-proteasome and autophagy-lysosome pathways, not just disuse.],
  chapter-ref: [ch26: cachexia pem phenotype],
  prediction: [PEM episodes elevate urinary activin/myostatin and 3-methylhistidine vs baseline.],
  treatment: [Shifts from "eat more protein" to "block catabolic signal" — pharmacological approach.],
  limitation: [Inflammatory signaling during PEM not fully characterized; cachexia analogy untested.],
)

#registry-entry(
  [ME/CFS as Chronic Low-Grade Catabolic Syndrome],
  type: "S",
  certainty: "0.30",
  evidence: [Cancer cachexia = rapid inflammatory muscle wasting. ME/CFS = slow PEM-driven wasting. Difference may be cytokine amplitude, not pathway.],
  citations: [@Scheibenbogen2025muscle],
  mechanism: [Same catabolic pathways at lower intensity; same anti-catabolic treatments at lower doses may be effective.],
  chapter-ref: [ch26: slow cachexia phenotype],
  prediction: [Serum activin A or myostatin elevated in ME/CFS vs sedentary BMI-matched controls.],
  treatment: [Reframes ME/CFS from "functional fatigue syndrome" to "chronic low-grade catabolic syndrome."],
  limitation: [No direct biomarker data; cytokine amplitude difference hypothesis untested.],
)

#registry-entry(
  [GLP-1 RA + ActRII Blockade Combination],
  type: "S",
  certainty: "0.25",
  evidence: [GLP-1 RAs produce 10–15% weight loss with 25–60% from lean mass. ActRII blockade preserves muscle during GLP-1 RA in preclinical models.],
  citations: [@Wilding2021Semaglutide @Neeland2024LeanMass @Stefanakis2024FFM],
  mechanism: [Microdose GLP-1 RA for appetite + ActRII blockade (bimagrumab) for muscle preservation → fat-predominant weight loss with improved muscle mass.],
  chapter-ref: [ch26: glp1 actriib combo],
  prediction: [Combination reduces proportion of weight loss from lean mass below 25% in human trial.],
  treatment: [For severe obesity + bedbound patients where substantial fat loss outweighs lean mass risk.],
  limitation: [Preclinical only; no human combination data; bimagrumab not approved for this indication.],
)

#registry-entry(
  [Urolithin A for Mitophagy-Directed Muscle Preservation],
  type: "S",
  certainty: "0.25",
  evidence: [Urolithin A induces mitophagy; clinical trials in sarcopenia show muscle strength benefits. ME/CFS mitochondrial damage central (Scheibenbogen 2025).],
  citations: [@Scheibenbogen2025muscle],
  mechanism: [Urolithin A removes dysfunctional mitochondria producing ROS instead of ATP; improves muscle mitochondrial quality.],
  chapter-ref: [ch26: urolithin mitophagy],
  prediction: [12-week Urolithin A improves 31P-MRS recovery kinetics vs placebo.],
  treatment: [Targets root mitochondrial pathology rather than downstream weight changes.],
  limitation: [No ME/CFS data; conversion from ellagitannins depends on gut microbiome composition.],
)

#registry-entry(
  [Cancer Cachexia Drugs Repurposed for ME/CFS],
  type: "S",
  certainty: "0.25",
  evidence: [Cancer cachexia shares elevated myostatin/activin, ubiquitin-proteasome activation, mitochondrial dysfunction with ME/CFS.],
  citations: [@Scheibenbogen2025muscle],
  mechanism: [Cachexia drugs (ActRIIB-Fc, anamorelin, SARMs, beta-blockers) directly applicable to preserving muscle in catabolic state where exercise is impossible.],
  chapter-ref: [ch26: cachexia drugs repurposed],
  prediction: [Anamorelin increases lean mass (DXA) in ME/CFS over 12 weeks.],
  treatment: [Drug repurposing accelerates access — safety data already available from cancer trials.],
  limitation: [Bridge to ME/CFS speculative; cachexia drug doses may not translate; side effect profiles in ME/CFS unknown.],
)

#registry-entry(
  [taVNS for Post-COVID-19 Condition — Systematic Review and Null Controlled Trial Evidence],
  type: "S",
  certainty: "0.25",
  evidence: [Balan et al.\ 2026 systematic review (5 studies, n=154): all controlled trials null for clinical efficacy despite confirmed HRV engagement. Best-powered RCT (Percin et al., n~50): sham > active for fatigue. COVIVA sham-controlled RCT (n=45): no between-group differences. Positive signals from uncontrolled single-arm studies only. GRADE: efficacy "very low," safety "low." This evidence constrains the therapeutic inference from shared vagal dysfunction across PCC, ME/CFS, and POTS.],
  citations: [@Balan2026taVNS @Percin2025taVNS @Gierthmuehlen2026COVIVA],
  mechanism: [taVNS → confirmed HRV modulation → no clinical superiority over sham → HRV engagement does not translate to symptomatic benefit in post-infectious fatigue.],
  chapter-ref: [ch27: tvns pcc systematic review; ch14d: tvns sham superior paradox; ch26: tvns pcc null evidence],
  prediction: [Sham-controlled ME/CFS taVNS trial will reproduce PCC pattern: HRV increase confirmed, no between-group clinical difference. Falsified if active taVNS shows clinically meaningful between-group effect on FUNCAP or PROMIS Fatigue at 12 weeks.],
  treatment: [Temper enthusiasm for tVNS as near-term ME/CFS treatment. Resolve mechanism before large trial: understand why HRV engagement fails to translate into clinical benefit.],
  limitation: [No ME/CFS-specific trial. PCC is the closest population — 5 studies provide indirect constraint. Sham-superior paradox unresolved. Evidence from PCC may not fully generalise to ME/CFS given different chronicity and severity.],
)

#registry-entry(
  [Vagal Tone Modulation for Appetite Regulation],
  type: "S",
  certainty: "0.20",
  evidence: [taVNS well-studied in depression/epilepsy; appetite effects preliminary. Vagal dysfunction hypothesized in ME/CFS (ch13).],
  citations: [—],
  mechanism: [taVNS improves vagal tone, enhances satiety signaling, increases parasympathetic drive to reduce stress-induced overeating. No exercise, 20 min/day lying down.],
  chapter-ref: [ch26: vagal tone appetite],
  prediction: [4 weeks taVNS reduces hunger scores (VAS) or increases post-prandial GLP-1 in ME/CFS vs sham.],
  treatment: [Addresses autonomic dysfunction other interventions don't touch.],
  limitation: [No ME/CFS data; taVNS device cost; optimal parameters unknown in this population.],
)

#registry-entry(
  [TRH/T3 Augmentation for Hypometabolic State],
  type: "S",
  certainty: "0.15",
  evidence: [ME/CFS resembles non-thyroidal illness syndrome (low T3, normal TSH, elevated rT3). Low-dose T3 could increase metabolic rate.],
  citations: [—],
  mechanism: [Low-dose T3 or TRH increases metabolic rate without full thyroid suppression risk; target is functional hypometabolism, not hormone deficiency.],
  chapter-ref: [ch26: trh t3 augmentation],
  prediction: [Low-dose T3 increases REE in ME/CFS with low T3/rT3 ratio vs placebo.],
  treatment: [Only for severe hypometabolic cases where other measures have failed.],
  limitation: [High risk — increased metabolic demand may worsen PEM; cardiac risk; requires extremely careful monitoring.],
)

#registry-entry(
  [UCP1 Thermogenesis via Mild Cold Exposure],
  type: "S",
  certainty: "0.15",
  evidence: [BAT activation via mild cold (16–19°C, 2–4 h/d) increases EE by 100–300 kcal/d in healthy. ME/CFS cold intolerance and autonomic dysfunction common.],
  citations: [@Buchholz2003PAL],
  mechanism: [Cold-induced thermogenesis provides non-exercise metabolic boost; but cold stress may trigger PEM, sympathetic overactivation, Raynaud's exacerbation.],
  chapter-ref: [ch26: cold thermogenesis],
  prediction: [Mild cold exposure (18°C, 2 h/d, 4 weeks) increases REE ≥5% without triggering PEM.],
  treatment: [Potential non-exercise metabolic boost for bedbound patients.],
  limitation: [More likely harmful than helpful; contraindicated in cold intolerance, Raynaud's, autonomic dysfunction.],
)

#registry-entry(
  [n/a],
  type: "Question: Why does sham stimulation outperform active taVNS in the best-controlled PCC trials? Candidate explanations: (a) non-monotonic dose-response — standard parameters overshoot therapeutic window in autonomically compromised patients; (b) sham auricular input is non-specifically therapeutic, and active parameters counteract these benefits; (c) PCC natural history recovery obscures small between-group differences; (d) GPCR autoantibody receptor-level blockade makes increased vagal firing inert.",
  certainty: "@Balan2026taVNS @Percin2025taVNS",
  evidence: [3-arm sham-controlled trial (sham vs standard-dose tVNS vs low-dose tVNS) with GPCR AAb stratification to distinguish between candidate explanations.],
  citations: [ch14d:@oq:tvns-sham-superior-paradox],
  mechanism: [Falsified as a whole if no active arm separates from sham in any AAb-stratified subgroup at n >= 30 per arm, indicating the treatment premise itself is unsupported. Candidate (a) refuted if both active doses equivalent to sham; (b) refuted if sham does not outperform both active arms by >= 5 PROMIS points; (d) refuted if AAb-high patients respond equivalently to AAb-low.],
  chapter-ref: [Periacetabular Brown Fat Activation in Immobility],
  prediction: [S],
  treatment: [0.10],
  limitation: [BAT inactive in ME/CFS due to low sympathetic tone, warm environment, inflammation. Pharmacological activation (mirabegron) risky.],
)

#registry-entry(
  [@Buchholz2003PAL],
  type: "BAT activation could provide 100–300 kcal/d extra expenditure; but beta3-agonists activate same dysregulated sympathetic system.",
  certainty: "ch26:@spec:brown-fat-activation",
  evidence: [Mirabegron increases supraclavicular BAT glucose uptake (18F-FDG PET) without orthostatic intolerance.],
  citations: [Potential metabolic boost for bedbound patients if safe activation achievable.],
  mechanism: [Highly speculative; more likely harmful than helpful; cardiovascular effects of beta3-agonists in ME/CFS unknown.],
  chapter-ref: [ME/CFS as Functional Narcolepsy Type 2: Cytokine Mediated Orexin Suppression],
  prediction: [S],
  treatment: [0.30],
  limitation: [ME/CFS involves chronic neuroinflammation that functionally suppresses orexin neuron activity, producing an acquired NT2-like state without autoimmune orexin neuron destruction. Animal models show IL-1$beta$/TNF-$alpha$ suppress orexin neurons; chemogenetic reactivation reverses lethargy. Plasma orexin-A reduced in post-COVID fatigue. However, CSF orexin-A not reduced in MS fatigue (null) and no anti-orexin autoantibodies in ME/CFS (null).],
)

#registry-entry(
  [@Grossberg2011orexinLethargy @Gaykema2009orexinSickness @Ruhrländer2025orexinPASC @Constantinescu2011orexinMSnull @Germain2025autoantibody],
  type: "Post-viral infection $arrow$ chronic cytokine elevation $arrow$ IL-1$beta$/TNF-$alpha$ suppress orexin neuron firing in lateral hypothalamus $arrow$ functional orexin deficiency (reversible) $arrow$ fatigue + sleep fragmentation + autonomic instability. Distinct from NT1 autoimmune destruction (irreversible).",
  certainty: "ch14d:@spec:mecfs-functional-narcolepsy",
  evidence: [CSF orexin-A in ME/CFS falls in NT2 gray zone (110--200 pg/mL) in $gt.eq$30% of patients vs $lt.eq$5% controls; correlates inversely with fatigue severity ($r gt.eq 0.3$) and with CSF IL-6/TNF-$alpha$. OX2R agonist improves fatigue $gt.eq$20% in 4-week trial. Falsified if CSF orexin-A indistinguishable from controls in $gt.eq$90% of patients.],
  citations: [If confirmed, OX2R agonists (danavorexton, oveporexton) could be repurposed for ME/CFS fatigue/sleep; anti-inflammatory treatment may restore orexin function.],
  mechanism: [No CSF orexin-A data in ME/CFS; plasma is poor proxy; MS null suggests pathway may be disease-specific; autoantibody null weakens but does not refute functional suppression hypothesis.],
  chapter-ref: [Orexin Neurons as Metabolic Canaries: Preferential Failure Under Bioenergetic Stress],
  prediction: [S],
  treatment: [0.20],
  limitation: [Orexin neurons are among the most metabolically demanding neurons (unmyelinated axons, massive arborization, autonomous pacemaking). Under systemic mitochondrial stress they may fail preferentially, analogous to substantia nigra dopaminergic neurons in Parkinson's. CPT1B/carnitine link supports metabolic vulnerability.],
)

#registry-entry(
  [@Horiuchi2015carnitineOrexin @Grossberg2011orexinLethargy @Rauf2025narcolepsyOrexin],
  type: "Systemic mitochondrial dysfunction $arrow$ reduced ATP supply $arrow$ high-demand orexin neurons fail first $arrow$ fatigue + sleep disruption as early indicator of metabolic reserve depletion. CPT1B polymorphism impairs fatty acid $beta$-oxidation $arrow$ orexin neuron vulnerability.",
  certainty: "ch14d:@spec:orexin-metabolic-canary",
  evidence: [CSF orexin-A correlates with PBMC spare respiratory capacity and serum lactate:pyruvate ratio ($r gt.eq 0.3$); ME/CFS patients with lowest orexin show most severe PEM. Carnitine supplementation increases CSF orexin-A $gt.eq$10% in carnitine-deficient ME/CFS. Falsified if orexin does not correlate with any mitochondrial function measure.],
  citations: [Positions orexin-A as early biomarker for metabolic reserve depletion; motivates carnitine supplementation trials with orexin as outcome.],
  mechanism: [Metabolic canary concept is by analogy with Parkinson's; no direct evidence for preferential orexin vulnerability in ME/CFS. CPT1B data from single low-quality study.],
  chapter-ref: [Orexin Tone as Metabolic Thermostat for R_headroom],
  prediction: [S],
  treatment: [0.25],
  limitation: [Orexin neurons among most metabolically demanding CNS cells. Architecture C systemic metabolic deficit may express as orexin neuron dysfunction — orexin tone as central R_headroom readout.],
)

#registry-entry(
  [@Grossberg2011orexinLethargy @Horiuchi2015carnitineOrexin],
  type: "Low systemic R_headroom $arrow$ orexin failure $arrow$ reduced CNS reserve.",
  certainty: "ch14d:@spec:orexin-metabolic-thermostat",
  evidence: [Lowest PBMC spare respiratory capacity $arrow$ lowest CSF orexin-A (stronger than cytokine-orexin).],
  citations: [Orexin-A as CNS metabolic reserve biomarker.],
  mechanism: [No direct R_headroom-orexin study.],
  chapter-ref: [Subclinical SOREMs as PEM Triggers],
  prediction: [S],
  treatment: [0.20],
  limitation: [Ito 2023: orexin deficiency causes REM fragmentation. Partial deficiency may produce subclinical REM intrusions fragmenting NREM, preventing glymphatic clearance.],
)

#registry-entry(
  [@Ito2023orexinREM],
  type: "Sub-threshold REM intrusions $arrow$ fragmented NREM $arrow$ impaired glymphatic $arrow$ lower PEM threshold.",
  certainty: "ch14d:@spec:subclinical-sorems-pem",
  evidence: [2-5x more REM intrusions in ME/CFS vs controls; count predicts next-day PEM (r > 0.4).],
  citations: [Automated sleep EEG scoring; OX2R agonists.],
  mechanism: [Requires automated EEG not validated in ME/CFS.],
  chapter-ref: [Dual Hit Orexin Pathology],
  prediction: [S],
  treatment: [0.30],
  limitation: [Functional suppression + T-cell destruction coexist: chronic neuroinflammation suppresses orexin AND gradually primes immune attack causing 10-30% loss over years.],
)

#registry-entry(
  [@Grossberg2011orexinLethargy @Lopez2023tcellNarcolepsy @Germain2025autoantibody],
  type: "Chronic neuroinflammation $arrow$ functional suppression + T-cell priming $arrow$ partial structural loss $arrow$ reversible+irreversible components.",
  certainty: "ch14d:@spec:dual-hit-orexin",
  evidence: [CD8+ T-cell reactivity to orexin peptides; negative correlation with CSF orexin (r < -0.4); 20-40% postmortem HCRT reduction.],
  citations: [Anti-inflammatory + immunosuppression may be needed.],
  mechanism: [No CSF orexin T-cell or postmortem data in ME/CFS.],
  chapter-ref: [Sex Specific Orexin Neuron Vulnerability],
  prediction: [S],
  treatment: [0.25],
  limitation: [Estrogen increases orexin neuron metabolic demand, making female neurons more vulnerable. Explains 3-4x female predominance and perimenopausal onset.],
)

#registry-entry(
  [@Grossberg2011orexinLethargy],
  type: "Estrogen $arrow$ increased metabolic demand $arrow$ greater cytokine vulnerability $arrow$ female predominance.",
  certainty: "ch14d:@spec:orexin-sex-vulnerability",
  evidence: [Estradiol-treated LPS rodents: greater orexin suppression. Human: CSF orexin lowest in perimenopausal-onset women.],
  citations: [HRT/SERM modulation.],
  mechanism: [No sex-disaggregated orexin data.],
  chapter-ref: [OX2R Downregulation from Chronic Low Orexin],
  prediction: [S],
  treatment: [0.20],
  limitation: [Chronic low orexin produces OX2R downregulation in targets (LC, TMN). Even if orexin restored, receptors unresponsive — pharmacological tolerance.],
)

#registry-entry(
  [@Rauf2025narcolepsyOrexin],
  type: "Chronic low agonist $arrow$ GPCR desensitization $arrow$ reduced OX2R $arrow$ blunted orexin response.",
  certainty: "ch14d:@spec:ox2r-downregulation",
  evidence: [4-week LPS reduces OX2R mRNA in LC/TMN; blunted acute danavorexton response.],
  citations: [OX2R agonist dose-escalation needed in trials.],
  mechanism: [No OX2R chronic suppression studies.],
  chapter-ref: [Orexin Suppression as Epiphenomenon],
  prediction: [S],
  treatment: [0.15],
  limitation: [Null findings in MS + no anti-orexin antibodies + acute-LPS limitation suggest orexin suppression is downstream of deeper metabolic failure.],
)

#registry-entry(
  [@Constantinescu2011orexinMSnull @Germain2025autoantibody],
  type: "Upstream mitochondrial failure $arrow$ suppresses orexin among others $arrow$ orexin treatments target downstream readout $arrow$ fail.",
  certainty: "ch14d:@spec:orexin-epiphenomenon",
  evidence: [OX2R agonist RCT no significant fatigue/PEM improvement despite sleep consolidation.],
  citations: [Redirect to mitochondrial/IMM research.],
  mechanism: [No OX2R agonist trials in ME/CFS.],
  chapter-ref: [NT2 and ME/CFS as Same Disease],
  prediction: [S],
  treatment: [0.10],
  limitation: [NT2: EDS+MSLT without cataplexy, intermediate orexin (110-200). ME/CFS also meets EDS criteria. Diagnostic boundary may be artifact of which specialty seen.],
)

#registry-entry(
  [@Rauf2025narcolepsyOrexin @LopezAmador2025orexin],
  type: "Diagnostic artifact: sleep clinic $arrow$ NT2; ME/CFS clinic $arrow$ ME/CFS. Same intermediate orexin.",
  certainty: "ch14d:@spec:nt2-mecfs-same-disease",
  evidence: [CSF orexin overlaps between NT2 and ME/CFS; continuous not bimodal symptom profiles.],
  citations: [Collapses two disease categories.],
  mechanism: [No simultaneous CSF orexin in both.],
  chapter-ref: [Shared Orexin Dopamine in ADHD and ME/CFS],
  prediction: [S],
  treatment: [0.25],
  limitation: [Orexin projects to VTA regulating DA firing. Deficiency reduces prefrontal DA (brain fog) and mesolimbic reward (anhedonia). 8.1% lower glucose in ADHD may be same hypothalamic orexin deficit.],
)

#registry-entry(
  [@Sakurai1998orexin],
  type: "Orexin deficiency $arrow$ reduced VTA DA $arrow$ prefrontal DA reduction + anhedonia.",
  certainty: "ch14d:@spec:orexin-adhd-dopamine",
  evidence: [Lowest CSF orexin-A: lowest CSF HVA, worst CPT-3, higher ADHD scores.],
  citations: [OX2R agonists may have dual fatigue+cognitive benefit.],
  mechanism: [No ME/CFS DA-orexin-attention study.],
  chapter-ref: [Bidirectional Orexin Mast Cell Loop],
  prediction: [S],
  treatment: [0.20],
  limitation: [Mast cells express OX1R/OX2R. Orexin activates mast cells; mast cell mediators suppress orexin. Orexin tightens BBB via OX1R — deficiency increases permeability.],
)

#registry-entry(
  [@Ruhrländer2025orexinPASC],
  type: "Orexin-B deficiency $arrow$ reduced OX2R brainstem $arrow$ baroreflex blunted $arrow$ POTS.",
  certainty: "ch14d:@spec:orexin-pots-baroreflex",
  evidence: [CSF orexin-B inversely correlates with POTS; OX2R agonist pre-tilt reduces HR >15 bpm.],
  citations: [Orexin-B biomarker; OX2R agonist for ME/CFS+POTS.],
  mechanism: [No CSF orexin-B in POTS.],
  chapter-ref: [Orexin Collagen Crosstalk in hEDS],
  prediction: [S],
  treatment: [0.10],
  limitation: [hEDS involves altered TGF-beta. Orexin-A inhibits TGF-beta1 via OX1R. Deficiency reduces inhibition, increasing TGF-beta signaling.],
)

#registry-entry(
  [@Lopez2023tcellNarcolepsy @Ruhrländer2025orexinPASC],
  type: "SARS-CoV-2 $arrow$ orexin destruction (narcolepsy) or partial suppression (ME/CFS) $arrow$ gray-zone orexin $arrow$ ME/CFS risk.",
  certainty: "ch14d:@spec:post-covid-narcolepsy-sentinel",
  evidence: [2-5% COVID develop new EDS; 30-50% gray-zone orexin; gray-zone predicts >50% ME/CFS at 12 months.],
  citations: [Early OX2R agonist in sentinel population.],
  mechanism: [COVID-narcolepsy link emerging.],
  chapter-ref: [Danavorexton for ME/CFS PEM],
  prediction: [S],
  treatment: [0.20],
  limitation: [OX2R agonist bypassing endogenous orexin. Increased MWT +11.1 in NT1. Could improve fatigue, cognition, PEM regardless of orexin neuron status.],
)

#registry-entry(
  [@Rauf2025narcolepsyOrexin @Grossberg2011orexinLethargy],
  type: "OX2R agonism $arrow$ direct activation $arrow$ bypasses endogenous orexin $arrow$ improves fatigue/cognition/PEM.",
  certainty: "ch14d:@spec:danavorexton-pem",
  evidence: [During 2-day CPET: post-exertional FAS >40% reduction in orexin-low subgroup.],
  citations: [First mechanistically rational PEM drug.],
  mechanism: [No ME/CFS trial.],
  chapter-ref: [Almorexant Short DORA],
  prediction: [S],
  treatment: [0.15],
  limitation: [~3h half-life may produce narrow orexin antagonism — enough NREM initiation without impairing later glymphatic processes.],
)

#registry-entry(
  [@Ito2023orexinREM],
  type: "Short half-life $arrow$ narrow orexin suppression $arrow$ NREM initiation without later impairment.",
  certainty: "ch14d:@spec:almorexant-sleep",
  evidence: [Increases SWS >20% first cycle, improves DTI-ALPS, reduces unrefreshing sleep > longer DORAs.],
  citations: [Repurposing abandoned drug.],
  mechanism: [Withdrawn for CNS safety.],
  chapter-ref: [Sulforaphane as Orexin Protective],
  prediction: [S],
  treatment: [0.15],
  limitation: [Nrf2 activator upregulating antioxidant genes. Orexin neurons vulnerable to oxidative stress. Nrf2 in hypothalamus protects from cytokine damage.],
)

#registry-entry(
  [@Horiuchi2015carnitineOrexin],
  type: "Sulforaphane $arrow$ Nrf2 $arrow$ antioxidant genes $arrow$ protects orexin from cytokine/oxidative damage.",
  certainty: "ch14d:@spec:sulforaphane-orexin",
  evidence: [8 weeks: plasma orexin-A >15%, fatigue >20% improvement vs placebo.],
  citations: [Low-risk OTC orexin-protective supplement.],
  mechanism: [No direct orexin-Nrf2 studies.],
  chapter-ref: [PGE2/EP3 Antagonists Disinhibit Orexin],
  prediction: [S],
  treatment: [0.20],
  limitation: [PGE2 at EP3 at BBB transmits inflammatory signal to orexin. EP3 antagonists block gateway without systemic immunosuppression.],
)

#registry-entry(
  [@Grossberg2011orexinLethargy],
  type: "Cytokines $arrow$ PGE2 $arrow$ EP3 $arrow$ orexin suppression. EP3 antagonist $arrow$ blocks gateway.",
  certainty: "ch14d:@spec:ep3-antagonist-orexin",
  evidence: [EP3 antagonist in LPS model prevents orexin suppression; attenuates lethargy >50%.],
  citations: [Rescues orexin without immunosuppression.],
  mechanism: [EP3 antagonists research compounds only.],
  chapter-ref: [LDN as Orexin Disinhibiting Agent],
  prediction: [S],
  treatment: [0.25],
  limitation: [LDN microglial TLR4 antagonism reduces hypothalamic PGE2/TNF-alpha, disinhibiting orexin. Novel mechanism for established ME/CFS drug.],
)

#registry-entry(
  [@Grossberg2011orexinLethargy],
  type: "LDN $arrow$ TLR4 $arrow$ reduced microglial PGE2/TNF-alpha $arrow$ orexin disinhibition.",
  certainty: "ch14d:@spec:ldn-orexin-disinhibition",
  evidence: [LDN responders: plasma orexin-A increases vs non-responders; correlates with fatigue improvement (r > 0.5).],
  citations: [Reclassifies LDN from empirical to mechanistically rational.],
  mechanism: [No orexin measured in LDN-treated ME/CFS.],
  chapter-ref: [L Carnitine + CoQ10 for Orexin Support],
  prediction: [S],
  treatment: [0.20],
  limitation: [Orexin neurons depend on FAO. Horiuchi: carnitine deficiency causes orexin dysfunction. CoQ10 supports ETC. Combination supports orexin firing.],
)

#registry-entry(
  [@Horiuchi2015carnitineOrexin],
  type: "Carnitine $arrow$ FAO + CoQ10 $arrow$ ETC = orexin firing maintained under energy deficit.",
  certainty: "ch14d:@spec:carnitine-coq10-orexin",
  evidence: [12 weeks: plasma orexin-A >20%, 6MWT >30 m; orexin correlates with function.],
  citations: [Low-risk low-cost CNS-validated intervention.],
  mechanism: [No combination orexin study.],
  chapter-ref: [Glycine as Orexin Sparing Sleep Aid],
  prediction: [S],
  treatment: [0.20],
  limitation: [Promotes sleep via SCN NMDA + glycinergic inhibition of orexin. Unlike Z-drugs, mechanism orexin-sparing — only during sleep initiation.],
)

#registry-entry(
  [@Grossberg2011orexinLethargy],
  type: "Apigenin $arrow$ GABAA + NF-kB $arrow$ reduced hypothalamic cytokines $arrow$ protects orexin.",
  certainty: "ch14d:@spec:apigenin-orexin",
  evidence: [LPS mouse: attenuates orexin suppression >30% (Fos), lethargy >25%.],
  citations: [Safe food-derived sleep cocktail component.],
  mechanism: [No orexin-specific studies.],
  chapter-ref: [PQQ as Orexin Mitochondrial Enhancer],
  prediction: [S],
  treatment: [0.10],
  limitation: [Stimulates mitochondrial biogenesis via PGC-1alpha. Orexin high mitochondrial demand makes them dependent on turnover.],
)

#registry-entry(
  [@Sakurai1998orexin],
  type: "Morning light $arrow$ SCN $arrow$ SCN-orexin entrainment $arrow$ normalized rhythm amplitude.",
  certainty: "ch14d:@spec:morning-light-orexin",
  evidence: [4 weeks: circadian orexin-A amplitude >30%, fatigue >20% vs dim-red placebo.],
  citations: [Low-cost timing-critical refinement.],
  mechanism: [No orexin measured before/after light therapy.],
  chapter-ref: [Cold Exposure for Orexin Activation],
  prediction: [S],
  treatment: [0.15],
  limitation: [Dive reflex activates trigeminal-parasympathetic arc to LH. Orexin activated by cold stress. Brief exposure transiently activates.],
)

#registry-entry(
  [@Dauvilliers2011painNarcolepsy],
  type: "Cold face $arrow$ trigeminal-parasympathetic reflex $arrow$ LH orexin $arrow$ transient release.",
  certainty: "ch14d:@spec:cold-exposure-orexin",
  evidence: [30-sec 10 degrees C: plasma orexin-A >15%, PVT >10%, pain VAS >20%.],
  citations: [Zero-cost no-equipment intervention.],
  mechanism: [Patient tolerance unknown.],
  chapter-ref: [Slow Breathing for Orexin Vagal Coupling],
  prediction: [S],
  treatment: [0.15],
  limitation: [Vagal afferent mediates inflammation-to-orexin suppression. Slow breathing enhances vagal tone, reducing inflammation signaling and modulating orexin via NTS.],
)

#registry-entry(
  [@Gaykema2009orexinSickness],
  type: "Slow breathing $arrow$ vagal tone $arrow$ reduced inflammation signaling + orexin modulation.",
  certainty: "ch14d:@spec:breathing-orexin-vagal",
  evidence: [8 weeks: serum orexin-A >10%, fatigue >30%; HRV predicts orexin (R^2 > 0.5).],
  citations: [Free home-based first-line intervention.],
  mechanism: [No combined slow breathing + orexin measurement.],
  chapter-ref: [Eliminating Orexin Suppressing Meds],
  prediction: [S],
  treatment: [0.20],
  limitation: [DORAs, clonidine, BZDs, Z-drugs, beta-blockers suppress orexin. In low-orexin ME/CFS, these may exacerbate deficiency.],
)

#registry-entry(
  [@Ruhrländer2025orexinPASC],
  type: "Non-invasive screen $arrow$ stepped escalation $arrow$ orexin-directed care for excluded.",
  certainty: "ch14d:@spec:triage-orexin-severe",
  evidence: [n=30 severe: >50% receive orexin-directed intervention; >20% show >30% fatigue reduction.],
  citations: [Addresses severe patient access gap.],
  mechanism: [No orexin-specific severe protocol.],
  chapter-ref: [Orexin Responsive Subtype Algorithm],
  prediction: [S],
  treatment: [0.20],
  limitation: [Algorithm: plasma orexin, actigraphy, ESS/FAS, MSLT, CPT1B defines orexin-responsive subtype.],
)

#registry-entry(
  [@Rauf2025narcolepsyOrexin @Horiuchi2015carnitineOrexin],
  type: "Algorithm $arrow$ orexin-responsive subtype $arrow$ enriched OX2R response.",
  certainty: "ch14d:@spec:orexin-responsive-subtype",
  evidence: [>50% OX2R response in algorithm-defined subtype vs $lt$10% non-orexin.],
  citations: [Stratification for efficient trials.],
  mechanism: [Algorithm requires validation.],
  chapter-ref: [R_headroom + Orexin CNS Reserve Model],
  prediction: [S],
  treatment: [0.20],
  limitation: [Add orexin variable O_t to Architecture C ODE. Orexin neurons priority consumers. Below threshold, orexin drops, reducing whole-brain reserve.],
)

#registry-entry(
  [@Grossberg2011orexinLethargy],
  type: "R_headroom below threshold $arrow$ orexin drops $arrow$ reduced CNS reserve $arrow$ PEM at higher systemic R_headroom.",
  certainty: "ch14d:@spec:rheadroom-orexin-model",
  evidence: [Model predicts PEM at higher systemic R_headroom when CNS orexin impaired; OX2R agonist shifts threshold left.],
  citations: [More complete Architecture C.],
  mechanism: [No ODE incorporated orexin.],
  chapter-ref: [DAG Orexin Glymphatic Microglia Bifurcation],
  prediction: [S],
  treatment: [0.25],
  limitation: [Extend DAG: orexin $arrow$ LC-NE $arrow$ glymphatic $arrow$ microglia $arrow$ cytokine $arrow$ orexin. Bifurcation analysis for bistability.],
)

#registry-entry(
  [@Grossberg2011orexinLethargy],
  type: "Positive feedback: orexin $arrow$ LC-NE $arrow$ glymphatic $arrow$ microglia $arrow$ cytokine $arrow$ orexin. Bifurcation determines stable states.",
  certainty: "ch14d:@spec:orexin-glymphatic-dag",
  evidence: [Bifurcation parameter: sudden onset crossed rapidly; gradual near threshold cross slowly.],
  citations: [Unifies sudden vs gradual onset.],
  mechanism: [Bifurcation novel for ME/CFS.],
  chapter-ref: [ODE Orexin Boom Bust Dynamics],
  prediction: [S],
  treatment: [0.15],
  limitation: [Boom-bust as relaxation oscillator: boom = orexin max; bust = crash below baseline. Pacing stabilizes mid-range.],
)

#registry-entry(
  [@Grossberg2011orexinLethargy],
  type: "Relaxation oscillator: boom $arrow$ max $arrow$ exhaustion $arrow$ bust $arrow$ slow recovery. Pacing $arrow$ stabilization.",
  certainty: "ch14d:@spec:orexin-boom-bust-ode",
  evidence: [Optimal rest:activity 2:1 in orexin-deficient vs 1:1 controls.],
  citations: [Quantitative pacing prescription.],
  mechanism: [No orexin PEM model.],
  chapter-ref: [CSF Orexin A Case Control Study (Research Question)],
  prediction: [OQ],
  treatment: [n/a],
  limitation: [No study has measured CSF orexin-A in ME/CFS. Animal models and post-COVID plasma data support dysfunction; MS null shows disease specificity.],
)

#registry-entry(
  [@Grossberg2011orexinLethargy @Gaykema2009orexinSickness @Ruhrländer2025orexinPASC @Constantinescu2011orexinMSnull],
  type: "CSF orexin-A resolves whether ME/CFS involves orexin dysfunction. Positive $arrow$ OX2R agonist trials. Null $arrow$ redirects to circadian or metabolic hypotheses.",
  certainty: "ch14d:@oq:csf-orexin-mecfs",
  evidence: [CSF orexin-A falls in NT2 gray zone (110--200 pg/mL) in $gt.eq$30% of ME/CFS vs $lt.eq$5% controls.],
  citations: [Foundational measurement determining orexin hypothesis viability.],
  mechanism: [LP requirement limits feasibility.],
  chapter-ref: [Definitive CSF Orexin A LP Study (Protocol Design)],
  prediction: [OQ],
  treatment: [n/a],
  limitation: [Specific study protocol: CSF orexin-A in ME/CFS vs healthy, NT1, NT2 with standardized circadian-controlled sampling. Extends the research question @oq:csf-orexin-mecfs with 4-group comparison and correlation endpoints.],
)

#registry-entry(
  [@Rauf2025narcolepsyOrexin],
  type: "Direct CSF orexin resolves fundamental question with disease-comparator design.",
  certainty: "ch14d:@oq:csf-orexin-definitive-lp",
  evidence: [30-50% of ME/CFS in NT2 gray zone; orexin correlates with sleep (r > 0.4) and PEM (r > 0.3).],
  citations: [Determines orexin hypothesis viability.],
  mechanism: [LP barrier.],
  chapter-ref: [OX2R PET Ligand for Neuron Integrity],
  prediction: [OQ],
  treatment: [n/a],
  limitation: [CSF measures output not distinguishing functional vs structural. OX2R PET provides in vivo density.],
)

#registry-entry(
  [@Rauf2025narcolepsyOrexin],
  type: "OX2R PET $arrow$ neuron density $arrow$ resolves functional vs structural.",
  certainty: "ch14d:@oq:ox2r-pet-ligand",
  evidence: [PET reduction: NT2 >30%, NT1 >60%, ME/CFS 10-30%. Predicts OX2R response.],
  citations: [Resolves functional vs structural.],
  mechanism: [No OX2R PET ligand exists.],
  chapter-ref: [Orexin A Challenge Test for Subtyping],
  prediction: [OQ],
  treatment: [n/a],
  limitation: [Single OX2R agonist dose: serial autonomic, fatigue VAS, PVT identifies orexin-responsive patients.],
)

#registry-entry(
  [@Grossberg2011orexinLethargy @Weymann2014orexinChemoFatigue],
  type: "Acute challenge $arrow$ responders define orexin-responsive subtype.",
  certainty: "ch14d:@oq:orexin-challenge-test",
  evidence: [40-60% respond (>20% VAS + >15% PVT in 60 min).],
  citations: [Practical fast subtyping.],
  mechanism: [No human challenge data.],
  chapter-ref: [HLA DQB1*02 in ME/CFS],
  prediction: [OQ],
  treatment: [n/a],
  limitation: [>98% NT1 carry vs 25% general. If ME/CFS shares autoimmune mechanism, elevated frequency. Null strengthens functional hypothesis.],
)

#registry-entry(
  [@Lopez2023tcellNarcolepsy],
  type: "Elevated frequency $arrow$ autoimmune; normal $arrow$ functional suppression.",
  certainty: "ch14d:@oq:hla-dqb1-mecfs",
  evidence: [30-40% in ME/CFS with lowest CSF orexin vs 25% in normal-orexin.],
  citations: [Low-cost genetic test.],
  mechanism: [No ME/CFS study.],
  chapter-ref: [Preclinical Orexin PEM Model],
  prediction: [OQ],
  treatment: [n/a],
  limitation: [Exercise + immune challenge with orexin calcium imaging tests whether exercise inflammation suppresses orexin firing.],
)

#registry-entry(
  [@Grossberg2011orexinLethargy],
  type: "Exercise + immune challenge $arrow$ orexin imaging $arrow$ firing drops in primed group.",
  certainty: "ch14d:@oq:preclinical-orexin-pem",
  evidence: [Firing drops 40-60% in primed vs 10-20% exercise-only; recovery correlates with activity.],
  citations: [Validated PEM-orexin model for drug screening.],
  mechanism: [No chronic exercise+immune paradigm.],
  chapter-ref: [CSF Orexin B/A Ratio Biomarker],
  prediction: [OQ],
  treatment: [n/a],
  limitation: [Orexin-A and -B differentially processed. Ratio distinguishes global loss from processing disruption.],
)

#registry-entry(
  [@LopezAmador2025orexin],
  type: "Ratio: normal = global loss; altered = processing-deficit.",
  certainty: "ch14d:@oq:orexin-ba-ratio",
  evidence: [Ratio differs between subtypes; predicts OX2R response.],
  citations: [Novel biomarker.],
  mechanism: [Orexin-B rarely measured.],
  chapter-ref: [Salivary Orexin A Home Biomarker],
  prediction: [OQ],
  treatment: [n/a],
  limitation: [Salivary orexin circadian pattern. If correlates with CSF, timed overnight collection = home CNS orexin proxy.],
)

#registry-entry(
  [@Ruhrländer2025orexinPASC],
  type: "Salivary rhythm $arrow$ correlates with CSF $arrow$ non-invasive orexin proxy.",
  certainty: "ch14d:@oq:salivary-orexin",
  evidence: [Blunted in ME/CFS; correlates with actigraphy (r > 0.4) and unrefreshing sleep (r < -0.3).],
  citations: [Orexin assessment without LP.],
  mechanism: [No validated salivary orexin assay.],
  chapter-ref: [Pupillographic Sleepiness as Orexin Surrogate],
  prediction: [OQ],
  treatment: [n/a],
  limitation: [Pupil controlled by sympathetic/parasympathetic modulated by orexin. PST instability in NT1 may reflect orexin deficiency.],
)

#registry-entry(
  [@Nardone2011corticalEDS],
  type: "Orexin deficiency $arrow$ reduced pupil sympathetic tone $arrow$ elevated PUI.",
  certainty: "ch14d:@oq:pupillometric-orexin",
  evidence: [PUI negatively correlates with CSF orexin (r > 0.5); predicts orexin $lt$200 $gt$80% sensitivity.],
  citations: [Cheap non-invasive office screening.],
  mechanism: [No orexin-PST correlation studied.],
  chapter-ref: [CPT1B Genotyping as Orexin Risk Marker],
  prediction: [OQ],
  treatment: [n/a],
  limitation: [CPT1B rate-limiting for FAO. Horiuchi: rs2267384 associated with narcolepsy. Orexin neurons prefer FAO.],
)

#registry-entry(
  [@Horiuchi2015carnitineOrexin],
  type: "Risk allele $arrow$ reduced FAO $arrow$ impaired orexin energy supply.",
  certainty: "ch14d:@oq:cpt1b-genotyping",
  evidence: [rs2267384 enriched in ME/CFS with CSF orexin $lt$ 200.],
  citations: [5-minute PCR for predisposition.],
  mechanism: [Horiuchi low-certainty. No ME/CFS study.],
  chapter-ref: [CSF Orexin A Phase Shift Artifact],
  prediction: [S],
  treatment: [0.25],
  limitation: [CSF orexin varies 2x diurnally. NT1 threshold under standardized conditions. No ME/CFS study controlled circadian phase.],
)

#registry-entry(
  [Candidate Mechanisms for tVNS Sham-Superior Paradox and Resolution Trial Design],
  type: "S",
  certainty: "n/a",
  evidence: [Four candidate mechanisms: (1) GPCR AAb receptor-level CAP blockade (cert 0.35), (2) inadequate target engagement readout — HRV misses CAP engagement (cert 0.45), (3) non-monotonic dose-response (cert 0.15), (4) sham non-specific somatosensory benefit with active unblinding (cert 0.25). Proposed resolution: three-arm, AAb-stratified, multi-biomarker trial with brainstem fMRI substudy. Origin: brainstorm.],
  citations: [@Balan2026taVNS @Azcue2026gpcr @Nelson2021],
  mechanism: [Multivariate biomarker panel (HRV + plasma SPMs + TNF-$alpha$ + NTS fMRI) + GPCR AAb stratification → resolves which mechanism(s) explain the dissociation → informs whether and how to proceed with ME/CFS tVNS development.],
  chapter-ref: [ch27: tvns dissociation mechanisms; ch14d: tvns sham superior paradox],
  prediction: [At least one active arm separates from sham in AAb-low subgroup with correlated SPM/cytokine improvement; AAb-high patients show no clinical benefit despite any active dose. NTS fMRI distinguishes from peripheral-only engagement. Falsified if no arm separates in any subgroup or no biomarker correlation pattern emerges.],
  treatment: [Sham-Dose Paradox in tVNS for Post-Infectious Fatigue],
  limitation: [O],
)

#registry-entry(
  [REE Measurement Gap: Single Most Important Missing Data Point for ME/CFS Weight Management],
  type: "OQ",
  certainty: "n/a",
  evidence: [Zero published studies measuring REE by indirect calorimetry in ME/CFS. Current caloric recommendations based entirely on healthy-population equations.],
  citations: [—],
  mechanism: [Without REE data, all weight management guidance in ME/CFS is extrapolated. Multi-site study needed: indirect calorimetry, DXA/BIA, accelerometry across severity levels.],
  chapter-ref: [ch26: ree mecfs severity],
  prediction: [—],
  treatment: [Establishes evidence base for severity-stratified caloric guidance.],
  limitation: [Indirect calorimetry requires patient cooperation and may be difficult in very severe patients.],
)

#registry-entry(
  [Weight Loss May Improve ME/CFS Symptoms in Obese Patients],
  type: "OQ",
  certainty: "n/a",
  evidence: [FM meta-analysis (D'Onghia 2021, 58 studies): weight loss by any modality improves pain, fatigue, function. No equivalent ME/CFS study. Shared pathophysiology (central sensitization, mitochondrial dysfunction) suggests analogous benefit.],
  citations: [@DOnglia2021FMObesity @Caumo2025Pain],
  mechanism: [If obesity compounds functional impairment (Flores 2013) and disrupts pain inhibition (Caumo 2025), weight loss may reduce central sensitization and improve ME/CFS symptom burden.],
  chapter-ref: [ch26: weight loss symptom improvement],
  prediction: [—],
  treatment: [Carefully designed ME/CFS-adapted weight loss trial: high-protein, non-exercise, body-composition-monitored. Primary endpoint: DSQ-PEM, secondary: pain, function, fatigue.],
  limitation: [PEM risk from caloric restriction. No ME/CFS-specific weight loss trial exists.],
)


=== TRPM3, MMP-9, IL-11 and Inflammaging

#registry-entry(
  [mTOR Tone Index: pSer258-ATG13/Total ATG13 Ratio as mTORC1 Activity Biomarker],
  type: "S",
  certainty: "0.50",
  evidence: [pSer258-ATG13 is directly phosphorylated by mTORC1 at the autophagy initiation complex (ULK1/ATG13/FIP200). The phospho/total ATG13 ratio reflects the fraction of the autophagy gate actively held closed — a direct mTORC1 "tone" readout. Normalizes inter-individual ATG13 expression differences. Preliminary signal from Ruan 2025 rapamycin pilot: reduced pSer258-ATG13 after treatment @Ruan2025rapamycin. Suitable as pharmacodynamic biomarker for mTORC1-targeted interventions. @Mannick2023mTOR @Ruan2025rapamycin @Rachakatla2022AMPK],
  citations: [@Mannick2023mTOR @Ruan2025rapamycin @Rachakatla2022AMPK],
  mechanism: [mTORC1 activity→ATG13 Ser258 phosphorylation→pSer258-ATG13/total ATG13 ratio quantifies mTORC1 "tone" at the autophagy gate. A tone index >0.5 (>50% of ATG13 phosphorylated) predicts non-functional autophagy initiation. Post-24-hour-fasted ratio provides "autophagy reserve" score. Proximal, dynamic, mechanistically specific.],
  chapter-ref: [ch06: mTOR tone index],
  prediction: [Fed/fasted pSer258-ATG13 ratio discriminates ME/CFS from healthy (AUC >0.75, n=50/group). Patients with tone index >2.0 show ≥2× higher response rate to rapamycin/metformin vs tone index ≤1.5. Test-retest ICC >0.7 over 4 weeks. Falsified if ratio does not discriminate groups or predict treatment response.],
  treatment: [Tone index as companion biomarker for mTOR-targeted therapy selection in clinical trials. PBMC immunoblot (USD 200--300 per sample) — research-accessible, not yet standardized for clinical use.],
  limitation: [Only one study (Ruan 2025) has measured pSer258-ATG13 in ME/CFS — uncontrolled pilot. No formal validation in healthy ME/CFS cohorts. Dynamic range, circadian variation, meal influence, and inter-laboratory reproducibility unknown.],
)

#registry-entry(
  [Nocturnal Autophagy Failure as the Cellular Basis of Unrefreshing Sleep],
  type: "S",
  certainty: "0.45",
  evidence: [Autophagy peaks during the overnight fasted period when mTORC1 is naturally suppressed. In ME/CFS, constitutive mTORC1 hyperactivation (Section @sec:mTOR-AMPK-autophagy-balance in Chapter @ch:energy-metabolism) may blunt the nocturnal autophagy surge, preventing clearance of cellular waste accumulated during the day. The patient wakes with the same cellular burden, producing subjective unrefreshing sleep despite objectively adequate sleep architecture. Distinct from sleep architecture theories — explains failure of cellular restoration, not sleep quality. @Drosen2025ATG13 @Rachakatla2022AMPK],
  citations: [@Drosen2025ATG13 @Rachakatla2022AMPK],
  mechanism: [SNS→PKA→AMPK suppression→mTORC1 constitutively active→nocturnal autophagy fails→damaged proteins/mitochondria accumulate overnight→unrefreshing sleep. Interventions restoring circadian autophagy (TRE, metformin, rapamycin) should improve sleep recovery scores independently of sleep time/architecture.],
  chapter-ref: [ch06: nocturnal autophagy sleep],
  prediction: [PBMC pSer258-ATG13 shows flattened nighttime rhythm (nocturnal decline \< 20%) in ME/CFS vs healthy (\> 40% decline) during 24-hour inpatient sampling. Rapamycin (morning dosing) restores the trough and improves subjective unrefreshing sleep by week 4. Falsified if nocturnal pSer258-ATG13 rhythm is normal in ME/CFS.],
  treatment: [TRE, metformin, or rapamycin as autophagy restoration strategies for unrefreshing sleep. No clinical recommendation — rapamycin is research-stage. TRE is safest but requires trial in ME/CFS sleep context.],
   limitation: [Mechanism inferred from general circadian autophagy biology. No serial pSer258-ATG13 measurements performed in ME/CFS. Unrefreshing sleep may have multiple causes — mTORC1-driven autophagy failure is one candidate mechanism, not the sole explanation.],
)

#registry-entry(
  [mTORC1→IMPDH→Purine Metabolism→Mitochondrial Dysfunction Axis],
  type: "S",
  certainty: "0.40",
  evidence: [Gile et al. (2026) Phase II observational study (n=86 enrolled; 70 day 36, 40 day 90 — 53% attrition): LCMS purine metabolomics showed rapamycin modulates IMP→XMP conversion via IMP dehydrogenase (IMPDH) inhibition. Flow cytometry confirmed reduced IMPDH activity. Purine supplementation induced mitochondrial oxidative stress in PBMCs; rapamycin partially mitigated. Seahorse OCR: improved mitochondrial respiration (basal, ATP-linked, maximal, spare capacity) in responder PBMCs after 90 days. Microglial inflammation reduced. Same Simmaron/Bateman Horne/Mayo consortium as prior rapamycin/ATG13 studies. Uncontrolled (no placebo). NCT06257420. 0.50→0.40: trial design limits (no control group, responder-biased molecular data, single consortium) constrain certainty to lower bound of medium range. @Gile2026rapamycinPurine],
  citations: [@Gile2026rapamycinPurine],
  mechanism: [mTORC1 hyperactivation → IMPDH upregulation (via ATF4-mediated transcriptional control of one-carbon pathway) → elevated IMP→XMP flux → purine intermediate accumulation → purine-driven mitochondrial oxidative stress → impaired mitochondrial respiration (basal, ATP-linked, maximal OCR) → extracellular purine release → microglial P2X7 receptor activation → NLRP3 inflammasome → IL-1β → neuroinflammation. Distinct from mTORC1→ATG13→autophagy block — parallel downstream pathology contributing to mitochondrial dysfunction via a different biochemical route.],
  chapter-ref: [ch07: mTOR/AMPK autophagy balance, ch08: mTOR→SASP endothelial senescence],
  prediction: [IMPDH activity elevated in ME/CFS PBMCs vs controls (≥1.5-fold) and correlates with mTORC1 activity (pS6K, p4E-BP1). Rapamycin reduces IMPDH activity and normalizes the IMP/XMP ratio in a dose-dependent manner. Purine supplementation at ME/CFS plasma-relevant concentrations impairs mitochondrial OCR in control PBMCs. The P2X7→NLRP3 link is falsified if rapamycin's microglial anti-inflammatory effect is independent of purine concentration changes (i.e., IMPDH inhibition and microglial markers do not correlate within patients). ],
  treatment: [IMPDH as drug target downstream of mTORC1 — could be modulated without direct mTORC1 inhibition (avoiding immunosuppression from mTORC2 co-inhibition). Mycophenolate mofetil (IMPDH inhibitor) is FDA-approved for transplant immunosuppression but carries its own risk profile. No clinical recommendation — both rapamycin and IMPDH inhibitors are research-stage for ME/CFS.],  
  limitation: [Uncontrolled study (no placebo). 53% attrition at 90 days. Molecular results biased to responders — purine/metabolic improvement may reflect responder biology, not rapamycin effect per se. Single consortium (Simmaron) — needs independent replication. IMPDH→P2X7→NLRP3 cascade in ME/CFS microglia is entirely inferred from separate biochemical data. IMPDH inhibitor alternative (mycophenolate) has different risk profile not evaluated in ME/CFS.],
)

#registry-entry(
  [mTOR Hyperactivation → BBB Compromise → Pediatric Neuroinflammation in Post-Infectious Syndromes],
  type: "H",
  certainty: "0.30",
  evidence: [Fronticelli Baldelli and Buonsenso (2025) narrative review: proposes mTOR as mechanistic link between peripheral infection-driven inflammation and CNS dysfunction in pediatric post-infectious syndromes. Stepwise cascade: sustained mTOR activation→T-cell/macrophage pro-inflammatory skew→BBB compromise (endothelial mTOR weakens tight junctions, increases vesicular transport)→microglial mTOR→neuroinflammation, impaired synaptic plasticity. Framework spans Long COVID, ME/CFS, PANS/PANDAS in children. pS6 as candidate mTOR pathway biomarker. @FronticelliBaldelli2025mTORinfections],
  citations: [@FronticelliBaldelli2025mTORinfections],
  mechanism: [Inferred cascade (review-level; no single experiment has demonstrated consecutive steps in pediatric post-infectious patients): Infection→sustained mTORC1 activation in immune cells→pro-inflammatory T-cell/macrophage polarization (proposed, not measured in pediatric post-infectious cohorts)→endothelial mTOR signaling proposed to weaken BBB tight junctions and increase vesicular transport (review inference; no pediatric BBB permeability data post-infection)→cytokines and autoreactive cells may enter CNS→engagement of mTOR in microglia and neurons proposed to drive neuroinflammation, impaired synaptic maintenance, and neurotransmitter disruption→fatigue, cognitive dysfunction, neuropsychiatric symptoms. The endothelial mTOR→BBB link is structurally unfalsifiable at current resolution (no method to isolate endothelial mTOR signaling from systemic mTOR activity in pediatric BBB in vivo); only the coarse pS6⊗BBB-marker correlation is testable.],
  chapter-ref: [ch08: mTOR→SASP endothelial senescence],
  prediction: [Pediatric post-infectious patients (Long COVID, ME/CFS) show elevated pS6 in PBMCs vs healthy controls. pS6 levels correlate with BBB permeability markers (S100B, CSF/serum albumin ratio). Rapamycin reduces pS6 and BBB permeability markers in a pediatric trial. Falsified if pS6 is normal in pediatric post-infectious patients or if mTOR inhibition does not reduce BBB permeability.],
  treatment: [mTORC1 inhibitors (rapamycin) as potential intervention for pediatric post-infectious neuroinflammation. Entirely preclinical for pediatrics — no human pediatric mTOR inhibitor trial for post-infectious syndromes exists. Safety concerns: rapamycin is an immunosuppressant with growth and developmental risks in children.],
  limitation: [Review only — no primary human data. Pediatric focus with adult ME/CFS inference. Many steps lack pediatric human evidence. Endothelial mTOR→BBB tight-junction/vesicular-transport steps are structurally unfalsifiable at current technical resolution. Single-proponent model. mTOR→psychiatric symptoms link is plausible but untested in children with post-infectious syndromes. Journal: MDPI Children (IF ~2.5). Proceed with extreme caution: pediatric rapamycin use carries additional developmental risks beyond adult safety concerns.],  
)

#registry-entry(
  [Serum IL-11 Elevation Reflects Accelerated Inflammaging in ME/CFS],
  type: "S",
  certainty: "0.35",
  evidence: [First report of elevated serum IL-11 in ME/CFS (n=40 vs 38, p < 0.001) @Chinnappan2026IL11MMP9. IL-11 is a master regulator of inflammaging — IL-11 KO mice live ~25% longer with reduced aging pathology @Widjaja2024IL11Aging. 0.30→0.35: convergence with HMGB1 DAMP — both feed into NLRP3 inflammasome endpoint via distinct pathways.],
  citations: [@Chinnappan2026IL11MMP9 @Widjaja2024IL11Aging],
  mechanism: [IL-11 elevation → JAK/STAT and NF-κB signaling → NLRP3 inflammasome activation, ERK/AMPK/mTORC1 dysregulation → chronic sterile inflammation mimicking accelerated aging → fatigue, cognitive dysfunction, metabolic impairment.],
  chapter-ref: [ch07: il 11 inflammaging],
  prediction: [Plasma IL-11 (citrate plasma) elevated in independent ME/CFS cohort; correlates with p16INK4a and SASP proteins. Falsified if plasma IL-11 is normal in independent cohort.],
  treatment: [Anti-IL-11 therapy is preclinical (mouse only). Zero clinical recommendation at present.],
  limitation: [Single unreplicated study. Serum (not plasma) used — same pre-analytical caveat as MMP-9. Age mismatch (51 vs 43, p < 0.05) confounds age-dependent IL-11 expression. Samples stored >10 years at -80°C. Mouse data only for inflammaging model.],
)

#registry-entry(
  [EBV-Directed Mast Cell Degranulation as MMP-9 Source in ME/CFS],
  type: "S",
  certainty: "0.35",
  evidence: [rEBV protein (100 ng/ml) activates human cord blood-derived mast cells to release MMP-9 in vitro (2,464 vs 433 pg/ml, p < 0.001, n=3) @Chinnappan2026IL11MMP9. 0.30→0.35: convergence with GPCR AAb→Mast Cell Sensitization Loop (cert 0.35) — different mast cell activation inputs, independent mechanisms converging on shared effector.],
  citations: [@Chinnappan2026IL11MMP9 @Kempuraj2024LongCOVIDMMP9 @Bonetto2022MMP9BBBCOVID],
  mechanism: [EBV reactivation → viral proteins activate tissue mast cells → MMP-9 release → ECM degradation, BBB disruption → peripheral inflammatory mediators access CNS → neuroinflammation, cognitive dysfunction. Convergent pathway with spike protein → microglia MMP-9 in Long COVID.],
  chapter-ref: [ch07: ebv mast cell mmp9],
  prediction: [Plasma MMP-9 higher in EBV-reactive ME/CFS (EA-IgG, VCA-IgM positive) vs EBV-latent. Mast cell stabilizers (cromolyn, ketotifen) reduce plasma MMP-9 in EBV-reactive patients. Falsified if plasma MMP-9 does not differ by EBV reactivation status or mast cell stabilizers do not reduce it.],
  treatment: [Mast cell stabilizers would be low-risk intervention targeting upstream MMP-9 release. No clinical recommendation without plasma-based replication.],
  limitation: [Entirely in vitro (cord blood mast cells, not ME/CFS patient cells). n=3 due to 12-week culture requirement. Serum MMP-9 used for human data — must be replicated in plasma (see ch20:@warn:mmp9-serum-plasma). Unreplicated.],
)

#registry-entry(
  [MMP-9 BBB Neuroinflammatory Trap as Self-Amplifying Loop],
  type: "S",
  certainty: "0.35",
  evidence: [EBV → mast cell → MMP-9 @Chinnappan2026IL11MMP9. MMP-9 correlates with BBB disruption (S100B) @Bonetto2022MMP9BBBCOVID. Spike protein → microglia → MMP-9 @Kempuraj2024LongCOVIDMMP9 @Tsilioni2023SpikeMicrogliaMMP9. 0.30→0.35: convergence with HMGB1 DAMP (cert 0.55) — both propose self-amplifying neuroinflammatory loops via different amplification axes (MMP-9/BBB vs TLR4/RAGE).],
  citations: [@Chinnappan2026IL11MMP9 @Bonetto2022MMP9BBBCOVID @Kempuraj2024LongCOVIDMMP9 @Tsilioni2023SpikeMicrogliaMMP9],
  mechanism: [Initiation: viral proteins → mast cell MMP-9 → BBB tight junction degradation. Amplification: peripheral IL-11 entry → microglial MMP-9 → further BBB damage → more peripheral entry. Persistence: loop becomes self-sustaining even after trigger resolution. TRPM3 dysfunction impairs calcium-dependent BBB repair.],
  chapter-ref: [ch14h: mmp9 bbb neuroinflammatory trap],
  prediction: [Serial plasma/CSF S100B + MMP-9 + IL-11 show progressive increase over 12 months. S100B predicts subsequent MMP-9/IL-11 increases (Granger causality). Mast cell stabilizers reduce plasma MMP-9. Falsified if MMP-9 normalizes during remission periods or if CSF MMP-9 is normal in ME/CFS.],
  treatment: [Mast cell stabilizers + MMP-9 inhibitors could break the loop if administered early. No clinical recommendation without longitudinal data confirming loop dynamics.],
  limitation: [No single study has measured all loop components simultaneously in ME/CFS. Loop inferred from separate populations (ME/CFS, COVID-19). BBB data from COVID-19, not ME/CFS. All MMP-9 studies to date used serum — magnitudes unreliable.],
)

#registry-entry(
  [Serum/Plasma MMP-9 Ratio as Platelet Activation Biomarker],
  type: "S",
  certainty: "0.35",
  evidence: [Serum MMP-9 is 3-4× higher than plasma due to platelet/leukocyte degranulation during clotting @Jung2008MMP9Preanalytical @Olson2008MMP9Sampling. ME/CFS may involve platelet hyperactivation (limited evidence). Ratio = serum MMP-9 / plasma MMP-9 from paired samples provides functional platelet activation readout. Precedent in chronic spontaneous urticaria. Low-cost, ELISA-based, clinically accessible.],
  citations: [@Jung2008MMP9Preanalytical @Olson2008MMP9Sampling @Garvin2015MMP9CHD],
  mechanism: [If ME/CFS platelets are hyperactive → greater MMP-9 release during clotting → higher serum/plasma MMP-9 ratio than controls. Ratio captures platelet biology otherwise invisible to standard platelet count. Validated ratio provides functional platelet assay without flow cytometry.],
  chapter-ref: [ch20: mmp9 ratio platelet biomarker],
  prediction: [In paired samples (n=50 ME/CFS, n=50 controls), ratio differentiates groups (AUC \>0.70) and correlates with PF4, beta-thromboglobulin, P-selectin. Falsified if ratio does not differ between ME/CFS and controls or does not correlate with established platelet activation markers.],
  treatment: [Ratio provides platelet function information to refine antiplatelet or mast-cell-stabilizing treatment stratification. Not a clinical recommendation.],
  limitation: [Ratio concept is novel — never formally validated. Sampling protocol must be rigorously standardized (tube type, centrifugation, time-to-freeze). Confounded by medications (aspirin, NSAIDs), platelet count, recent exercise. Not validated in ME/CFS.],
)

#registry-entry(
  [IL-11 → mTORC1 → PIP2 Depletion → TRPM3 Dysfunction],
  type: "S",
  certainty: "0.30",
  evidence: [IL-11 elevation in ME/CFS @Chinnappan2026IL11MMP9. IL-11 drives ERK/AMPK/mTORC1 @Widjaja2024IL11Aging. TRPM3 gating requires PIP2; reduced TRPM3/PIP2 co-localization in ME/CFS @EatonFitch2021trpm3pip2. 0.25→0.30: convergence with PIP2/GPCR Convergence (cert 0.45) — independent upstream mechanisms (mTORC1 vs PLC) converging on same PIP2 depletion endpoint.],
  citations: [@Chinnappan2026IL11MMP9 @Widjaja2024IL11Aging @EatonFitch2021trpm3pip2],
  mechanism: [IL-11 → mTORC1 hyperactivity → PIP2 depletion in NK cell membranes → reduced TRPM3 gating → impaired Ca2+ flux → reduced NK cytotoxicity. Links two independent ME/CFS findings into a unified causal cascade.],
  chapter-ref: [ch14h: il11 trpm3 inflammaging],
  prediction: [ME/CFS NK cells exposed to IL-11 at patient serum concentrations show reduced TRPM3-mediated Ca2+ flux within 24-48h. Anti-IL-11 antibody pre-treatment prevents this effect. Rapamycin partially restores TRPM3 function. Falsified if IL-11 does not affect TRPM3 function or mTORC1 inhibition does not restore it.],
  treatment: [If validated, anti-IL-11 or mTORC1 modulation (rapamycin) could restore TRPM3 function. Both are preclinical for ME/CFS. No clinical recommendation.],
  limitation: [IL-11→TRPM3 link entirely inferred. No two consecutive steps demonstrated in same experiment. IL-11 data from unreplicated Chinnappan 2026. mTORC1-PIP2 link in immune cell membranes not directly demonstrated. mTORC1 can increase, not deplete, PIP2.],
)

#registry-entry(
  [Bimodal Lithium Dose-Response: Multiple Mechanism-Specific Optima],
  type: "S",
  certainty: "0.25",
  evidence: [Lithium engages multiple targets with different concentration optima: NCS-1/InsP3R1 modulation (IC50 ~350 µM), IMPase inhibition (IC50 ~0.8 mM), GSK-3β inhibition (IC50 ~2 mM). Toricelli 2021 demonstrates a preclinical bimodal dose-response in hippocampal cultures: neuroprotection and anti-inflammatory effects (reduced IL-1α, IL-6, NF-κB; increased IL-10) at 2-20 µM Li₂CO₃ vs toxicity at 200 µM. Clinical evidence consists of three data points at three doses from non-comparable systems (Sikorav 2mg positive, Guttuso 10-15mg null, Guttuso 40-45mg positive). This is a post-hoc observation, not an emergent pattern — the available points are consistent with biphasic, monotonic, or flat dose-response given measurement variance. @Toricelli2021MicrodoseLithiumInflammation @Guttuso2024lithiumLongCOVID @Sikorav2026UltraLowDoseLithium],
  citations: [@Toricelli2021MicrodoseLithiumInflammation @Guttuso2024lithiumLongCOVID],
  mechanism: [Different Li⁺ mechanisms engage at different concentrations. NCS-1/IP3R modulation (nM-µM) may dominate at microdoses; IMPase/GSK-3β (µM-mM) at low-therapeutic doses. Different clinical endpoints (sensory hypersensitivity, fatigue, cognition, suicidal ideation) may have different dose-response curves. Formal demonstration requires prospective dose-ranging study — current data are insufficient to claim a validated pattern.],
  chapter-ref: [ch08: low dose lithium],
  prediction: [A dose-ranging study (2, 10, 20, 40 mg Li⁺) in ME/CFS should show non-monotonic efficacy curves across endpoints. Falsified if all endpoints improve or fail along the same monotonic dose-response curve. Falsified with stronger evidence if dose-ranging in a relevant cellular model (GPCR-stimulated PBMCs) shows graded, not multiphasic, Li⁺ effects on IP3-mediated Ca²⁺ transients.],
  treatment: [If validated, lithium dose selection would be mechanism-specific: 1-5 mg for sensory/suicidal endpoints, 40-45 mg for cognitive/fatigue endpoints. No clinical recommendation without prospective confirmation.],
  limitation: [Post-hoc observation from three non-comparable systems. No controlled dose-ranging study. Toricelli bimodal curve is in-vitro mouse data — human translation unknown. Between-subject lithium pharmacokinetic variability (renal clearance, tissue distribution) may produce overlapping serum concentrations across dose zones.],
)

#registry-entry(
  [Sensory Hypersensitivity as PIP₂ Gating Instability in TRP Channels],
  type: "S",
  certainty: "0.25",
  evidence: [Sikorav 2026 case report: sensory hypersensitivity (sound, screens, crowds, eye contact) occurred exclusively during depressive episodes and resolved completely on lithium citrate 2 mg/day. The episode-specific, state-dependent pattern suggests a threshold mechanism — when PIP₂ drops below a critical level, TRP channel gating becomes unstable ("noisy" channels, spontaneous opening, hyper-response to subthreshold stimuli). Lithium may stabilize the system by modestly reducing PI cycle flux (even at nM-µM concentrations) and smoothing PIP₂ supply-demand balance. This is distinct from treating depression — lithium stabilizes the sensory gating system directly, and mood improvement follows reduced sensory assault. @Sikorav2026UltraLowDoseLithium @EatonFitch2021trpm3pip2 @saha2023impa1],
  citations: [@Sikorav2026UltraLowDoseLithium @EatonFitch2021trpm3pip2 @saha2023impa1],
  mechanism: [PIP₂ depletion→TRPM3/TRPV1/Piezo channel gating instability→sensory hypersensitivity during low-PIP₂ states (episodes). Lithium→reduced PI cycle flux→stabilized PIP₂ supply-demand balance→reduced channel noise→sensory hypersensitivity resolution. Mood improvement is downstream of sensory stabilization, not the primary mechanism.],
  chapter-ref: [ch08: ultralow dose lithium case],
  prediction: [ME/CFS patients with sensory hypersensitivity should show TRPM3/PIP₂ co-localization deficit inversely correlated with sensory gating scores. Lithium (2-5 mg/day) should increase TRPM3/PIP₂ co-localization and reduce sensory gating deficits in parallel at 8 weeks. Falsified if TRPM3/PIP₂ co-localization does not correlate with sensory scores (r < 0.2) or if lithium does not affect co-localization.],
  treatment: [If validated, lithium microdose (1-5 mg/day) could be investigated as a sensory hypersensitivity intervention in ME/CFS — entirely research-stage. No clinical recommendation. TRPM3/PIP₂ co-localization assays are research tools, not clinical labs.],
  limitation: [Based on n=1 self-report in a non-ME/CFS patient. No direct evidence of lithium effects on TRP channel gating at microdoses. PIP₂ measurement in human immune cells is a research technique with limited standardization. Sensory gating deficit in ME/CFS has face validity but no quantitative TRPM3/PIP₂ correlation data.],
)

#registry-entry(
  [Lithium as Trigger-Specific Stress Resilience Modifier],
  type: "S",
  certainty: "0.25",
  evidence: [The Sikorav 2026 case identifies a specific trigger profile: sleep deprivation, alcohol, altitude change, seasonal summer fatigue — all increase cerebral metabolic demand or reduce cerebral oxygen delivery. The key behavioral observation: "ability to feel fatigue without depressive cascade" — stress resilience improvement, not constant symptom suppression. This suggests lithium at ultralow doses may raise the threshold for trigger-induced decompensation (PEM-like phenomenon) rather than acting as a constant mood stabilizer. Mechanism: if lithium slightly reduces futile ER Ca²⁺ cycling via NCS-1/IP3R modulation (see oq:ncs1-mecfs-expression), the metabolic cost of maintaining cellular homeostasis decreases, leaving more reserve capacity for trigger-related demands. @Sikorav2026UltraLowDoseLithium @schlecker2006ncs1],
  citations: [@Sikorav2026UltraLowDoseLithium @schlecker2006ncs1],
  mechanism: [Chronic IP3 signaling→futile ER Ca²⁺ cycling→elevated ATP demand for SERCA→reduced metabolic reserve→triggers (sleep deprivation, altitude, alcohol) push system past compensation threshold→symptom cascade. Lithium (nM-µM)→NCS-1/IP3R modulation→reduced Ca²⁺ leak→increased metabolic reserve→higher trigger tolerance→ability to experience fatigue without cascade.],
  chapter-ref: [ch08: ultralow dose lithium case],
  prediction: [Within-subject trial of 2 mg lithium citrate vs placebo during controlled stress challenge (sleep restriction, hypoxic challenge): lithium should reduce symptom escalation. ER calcium store content (thapsigargin-releasable pool) should increase after 4 weeks of lithium, reflecting reduced IP3R-mediated leak. Falsified if lithium does not increase stress tolerance or ER Ca²⁺ stores.],
  treatment: [If validated, lithium microdose would serve as a PEM prevention/prophylaxis strategy — taken before known triggers (travel, sleep disruption) rather than daily for symptom suppression. Entirely speculative — no human data on prophylactic lithium for stress resilience.],
  limitation: [n=1 self-report in non-ME/CFS patient (no PEM). "Stress resilience" is a subjective construct with no validated quantitative measure in this context. ER Ca²⁺ store content measurement in ME/CFS has not been performed. The mechanism (NCS-1/IP3R at nM Li⁺) is biochemically plausible but unmeasured — the IC50 gap (350 µM vs nM serum) remains a significant uncertainty.],
)

#registry-entry(
  [NCS-1/InsP3R1 Amplification of Mast Cell Degranulation and Lithium as Functional Mast Cell Stabilizer],
  type: "OQ",
  certainty: "0.20",
  evidence: [Mast cells express NCS-1, which regulates IgE-triggered exocytosis via PI4Kβ (Kappel 2003, cert 0.70). NCS-1 amplifies InsP3R1 channel open probability ~5-fold (Schlecker 2006). Lithium disrupts NCS-1/InsP3R1 at IC50 ~350 µM. MRGPRX2, C3aR, C5aR on mast cells signal through Gαq→PLC→IP3→Ca²⁺→degranulation (Roy 2021 review, cert 0.85). The mechanistic chain (Li→NCS-1 disruption→reduced IP3-mediated Ca²⁺→raised degranulation threshold) is assembled from separate literatures and has no direct experimental support — no study has tested lithium's effect on mast cell degranulation at any concentration. @Kappel2003NCS1MastExocytosis @Kappel2006NCS1ERK @Kappel2007NCS1SynaptotagminMast @schlecker2006ncs1 @Roy2021MRGPRX2Review @Chaki2022OraiMRGPRX2],
  citations: [@Kappel2003NCS1MastExocytosis @schlecker2006ncs1 @Roy2021MRGPRX2Review],
  mechanism: [GPCR autoantibodies (anti-M3, anti-β2AR)→chronic Gαq activation on mast cells→PLC→PIP2→IP3→Ca²⁺→lowered degranulation threshold. NCS-1 amplifies this ~5-fold via InsP3R1. Lithium→NCS-1/InsP3R1 disruption→dampened IP3-mediated Ca²⁺→raised degranulation threshold — functional mast cell stabilizer distinct from cromolyn/ketotifen/omalizumab because it targets the GPCR→PLC→IP3 arm, not the FcεRI pathway.],
  chapter-ref: [ch07: lithium mast cell ncs1],
  prediction: [Lithium (1-10 µM) pre-incubation should reduce β-hexosaminidase release ≥30% from patient-derived mast cells stimulated with MRGPRX2 agonists (compound 48/80, substance P). Falsified if lithium has no effect or increases degranulation. IgE-mediated degranulation should be unaffected — confirming pathway specificity (Gαq-IP3 vs ITAM-Syk-PLCγ). Plasma tryptase should decrease after 4 weeks of lithium 2 mg/day in MCAS-positive ME/CFS patients.],
  treatment: [If validated, lithium microdose could be investigated as adjunct mast cell stabilizer for MCAS-dominant ME/CFS — entirely research-stage. Distinct mechanism from cromolyn/ketotifen → possible synergy testing.],
  limitation: [No study tests Li⁺ effect on mast cell degranulation at any concentration. NCS-1/InsP3R1 interaction never studied in mast cells. NCS-1 expression never measured in ME/CFS tissue. Lithium tissue concentrations at 2 mg/day are unknown; may not reach mast cells at sufficient levels. Mechanism inoperative for IgE-mediated degranulation (FcεRI uses ITAM→Syk→PLCγ, not Gαq).],
)

#registry-entry(
  [Lithium as Specialized Pro-Resolving Mediator (SPM) Biosynthesis Enhancer],
  type: "OQ",
  certainty: "0.15",
  evidence: [Basselin 2010 demonstrated chronic lithium increases brain 17-HDHA 1.9-fold in rats — 17-HDHA is the committed intermediate for D-series resolvins (RvD1-6) and protectins (PD1), generated by 15-lipoxygenase from DHA. Toricelli 2021 showed microdose lithium (2-20 µM) shifts cytokine profile toward pro-resolution (IL-10↑, IL-6↓, IL-1α↓, NF-κB↓), a profile consistent with resolvin activity though SPMs were not measured. Lithium also inhibits COX-2 and PGE₂ in activated microglia, potentially favoring substrate switch toward SPM biosynthesis. The complete chain (Li⁺→15-LOX→17-HDHA→RvD→GPCR→M2 shift) is assembled from separate literatures; no study has directly measured SPMs after lithium treatment. @Basselin2010LithiumAA_DHA @Toricelli2021MicrodoseLithiumInflammation @Stachowicz2023LithiumCOX2],
  citations: [@Basselin2010LithiumAA_DHA @Toricelli2021MicrodoseLithiumInflammation],
  mechanism: [Lithium→15-LOX upregulation→DHA conversion to 17-HDHA→resolvin D1-6 and protectin D1 biosynthesis→SPM receptor activation (ChemR23/GPR32/ALX)→active inflammatory resolution→M2/pro-resolving phenotype shift. Provides a mechanistic bridge between Toricelli's cytokine profile and lithium's ultralow-dose effects, independent of NCS-1/IMPase/GSK-3β.],
  chapter-ref: [Ch. 17 — SPM family evidence status section],
  prediction: [LC-MS/MS measurement of resolvin D1, protectin D1, maresin 1 in culture supernatant from lithium-treated (1-10 µM) LPS-stimulated microglia or PBMCs should show ≥50% increase vs vehicle at 24h. Falsified if lithium does not increase SPM levels or if the increase is ≤20%. In vivo: plasma SPM levels should increase after 4 weeks of lithium 2 mg/day in ME/CFS patients. Lithium+EPA/DHA combination should show greater SPM increase than either alone.],
  treatment: [If validated, lithium+omega-3 combination therapy could target inflammatory resolution in ME/CFS through a novel mechanism (SPM biosynthesis enhancement) — entirely research-stage. No clinical recommendation.],
  limitation: [No study has measured SPMs after lithium at any dose. Basselin 1.9-fold 17-HDHA increase is in rats at chronic lithium doses — translation to human microdose unknown. 15-LOX expression in human immune cells may differ from rat brain. SPM measurement by LC-MS/MS is specialized and not clinically available. Lithium's COX-2 inhibition could reduce (not enhance) SPM precursor availability via the COX-2 pathway for aspirin-triggered resolvins.],
)


=== Microvascular and Endothelial Dysfunction

#table(
  columns: (1fr, 2fr, 1fr),
  [*ID / Label*], [*Details*], [*Phase / Cert*],

  [spec endothelial-hypertrophy-heterogeneous-perfusion], [EM evidence of endothelial hypertrophy in ME/CFS skeletal muscle capillaries @Charlton2025muscleMicrovasc may narrow capillary lumens, creating heterogeneous perfusion — perfused and excluded capillaries interleaved — that NIRS averages cannot detect. Combined with RBC stiffness, narrowed capillaries become impassable. Functional capillary dropout without anatomical rarefaction. Origin: brainstorm.],[Phase 5 / 0.40],

  [spec capillary-bm-diagnostic-biomarker], [Near-complete separation of HC and patients by %BM coverage (max HC 62.7% vs min ME/CFS 63.2%) @Charlton2025muscleMicrovasc exceeds discriminative power of any existing blood biomarker. If validated by ROC in pooled multi-country dataset (n > 70), EM-measured %BM coverage could serve as a histological gold-standard diagnostic biomarker — analogous to duodenal biopsy for coeliac disease. Invasive → confirmatory role in equivocal cases; needs non-invasive surrogate (serum HA/TSG-6 or NIRS) for routine use. Origin: brainstorm.],[Phase 5 / 0.45],

  [spec systemic-bm-microvascular], [Capillary BM thickening documented in 3 limb muscles may be systemic — affecting cardiac, brain, GI, and skin capillaries — explaining multi-system ME/CFS symptoms via a single structural lesion. No multi-organ BM data exist. Testable by skin punch biopsy dermal capillary BM vs vastus lateralis BM correlation. Origin: brainstorm.],[Phase 5 / 0.30],

  [oq capillary-bm-alternatives], [Five alternative explanations for capillary BM thickening: (1) epiphenomenon of mitochondrial dysfunction, (2) immune-mediated endothelial injury as primary scar, (3) neurovascular dysregulation → hypoxic BM remodeling, (4) long-term deconditioning incompletely excluded by 60d bed rest model, (5) all-of-the-above convergent final common pathway. Not mutually exclusive; treatment strategy depends on which mechanism is dominant in individual patients. Origin: brainstorm critical categories.],[Phase 5 / n/a],

  [lim muscle-specific-microvascular], [Capillary BM thickening data limited to limb skeletal muscle. No data for diaphragm, cardiac, smooth muscle, or skin capillaries. If muscle-specific → explains exertional symptoms only. If systemic → explains multi-system ME/CFS. Distinction requires same-patient multi-site biopsy. Origin: brainstorm critical categories.],[Phase 5 / n/a],
)


=== Iron Redox Polarity

#table(
  columns: (1fr, 2fr, 1fr),
  [*ID / Label*], [*Details*], [*Phase / Cert*],

  [hyp iron-redox-polarity-diagnostic-bifurcation], [ME/CFS and Long COVID show divergent iron handling: ME/CFS = functional iron deficiency (high ferritin, low TSAT, low hepcidin) vs LC = multi-compartment iron dysregulation (monocyte loading, lymphocyte starvation, stress erythropoiesis). The hepcidin paradox: Kavyani2023 found hepcidin decreased ~50% in ME/CFS — opposite to the IL-6→hepcidin→ferroportin model prediction. Therapeutic bifurcation: iron supplementation may harm ME/CFS functional iron deficiency patients; LC patients need phenotyping (24% have genuine iron deficiency). Evidence: Hanson2024 Nat Immunol (n=214, PASC prediction 72%), Kavor2022 Nat Commun (42 LC+19 ME/CFS comparator), Kavyani2023 Mol Neurobiol, Swiatczak2022 Diagnostics, Baklund2021 J Clin Med, Sonnweber2022, Gietl2024. Falsifiable: head-to-head iron panel comparison must show ferritin/TSAT/hepcidin polarity. Origin: cynaera-gaps investigation + literature synthesis.],[Phase 3 / 0.55],

  [hyp erythrocyte-dysfunction-lc-specific], [Long COVID shows a distinct erythrocyte-level O2 transport defect (impaired O2-Hb binding, increased CO-Hb, decreased TSAT, elevated MCH) @KronsteinWiedemann2024RBC — not yet described in ME/CFS. If LC-specific, this provides a second axis of divergence: ME/CFS fatigue is mitochondrial (ATP production failure), LC fatigue additionally involves impaired O2 delivery at RBC level. Falsified if ME/CFS patients also show RBC dysfunction. Testable: co-oximetry + O2 dissociation curves in matched cohorts. Origin: literature integration.],[Phase 3 / 0.45],

  [spec iron-ferroptosis-divergent-triggers], [Ferroptosis (iron-dependent lipid peroxidation) is a candidate shared mechanism in both conditions with divergent triggers: inflammatory iron overload + GPX4 depletion in LC @Sousa2023Ferroptosis vs chronic oxidative stress + impaired antioxidant capacity in ME/CFS in context of functional iron deficiency. The functional-iron-deficiency→ferroptosis link is mechanistically paradoxical (trapped iron should reduce ferroptosis risk) and requires NTBI redistribution hypothesis for coherence. Falsified if lipid peroxidation markers are not elevated in ME/CFS. Indirect evidence only; no tissue-level ferroptosis measurement in either condition. Origin: literature synthesis + brainstorm.],[Phase 3 / 0.35],

  [oq iron-chelation-vs-supplementation], [When to iron-chelate vs iron-supplement in post-viral fatigue — entirely mechanistic model with zero interventional data. Questions: Does oral iron help/harm ME/CFS stratified by ferritin/TSAT? Does iron chelation improve ME/CFS functional iron deficiency? Does the ~24% of LC with genuine iron deficiency benefit from repletion? Does hepcidin predict response? Until trials exist: measure full iron panel before prescribing; treat genuine ID regardless of diagnosis; do NOT supplement iron in functional ID pattern. Origin: cynaera-gaps investigation.],[Phase 3 / n/a],
)

#table(
  columns: (1fr, 2fr, 1fr),
  [*ID / Label*], [*Details*], [*Phase / Cert*],

  [spec hepcidin-independent-ferroportin-blockade], [Four hepcidin-independent mechanisms may explain the paradox of low hepcidin @Kavyani2023Hepcidin yet persistent functional iron deficiency: (a) ferroportin trafficking defect via IRP/IRE dysregulation, (b) ceruloplasmin ferroxidase deficiency preventing iron loading onto transferrin, (c) NCOA4 ferritinophagy blockade trapping iron in ferritin, (d) LCN2/NGAL futile iron cycling. Under this model, low hepcidin is not a paradox — it is a compensatory response to downstream iron export machinery failure. All four mechanisms untested in ME/CFS. Falsified if all four candidates normal. Origin: brainstorm.],[Phase 5 / 0.40],

  [spec temporal-phase-shift-iron], [The ME/CFS vs LC iron polarity may be temporal, not diagnostic: LC studies sample Phases 0–I (1–6 months: stress erythropoiesis, variable hepcidin) while ME/CFS studies sample Phases II–III (>2 years: low hepcidin, functional iron deficiency). Both may traverse same trajectory at different timepoints. Predicts hepcidin declines progressively over 2+ years in prolonged LC. Falsified if hepcidin remains elevated in long-duration LC >2 years. Origin: brainstorm.],[Phase 5 / 0.35],

  [spec monocyte-ferroptosis-amplifier], [Iron-loaded monocytes (Hanson2024) may deliver concentrated iron to tissues on macrophage differentiation, sensitizing resident cells to ferroptosis. Creates a monocyte-mediated ferroptosis amplification loop: iron loading → tissue deposition → ferroptosis → DAMP release → monocyte recruitment → more iron delivery. Falsified if ME/CFS monocytes have normal labile iron pool or tissue biopsies show no iron/ferroptosis co-localization. Origin: brainstorm.],[Phase 5 / 0.30],

  [pred ferritin-tsat-ratio-diagnostic], [Ferritin:TSAT ratio (FTR) as computationally tractable diagnostic tool: FTR over 10 = functional iron deficiency (ferritin ≥150 µg/L, TSAT ≤15%), FTR under 5 = genuine iron deficiency, FTR 5–10 = indeterminate. Predicted AUC ≥0.75 for ME/CFS vs post-COVID-without-ME/CFS discrimination. Requires iron panel only (\$20–50), deployable in any primary care setting. Not validated — no study has computed FTR in any post-viral fatigue population. Origin: brainstorm.],[Phase 5 / 0.40],

  [spec deferiprone-functional-iron-deficiency], [Deferiprone (oral iron chelator, black box: agranulocytosis/neutropenia) as rational intervention if hepcidin-independent ferroportin blockade is the mechanism: membrane-permeable, enters cells without ferroportin, chelates trapped labile iron directly. Danazol (hepcidin antagonist, @spec:danazol-hepcidin) may be misdirected if hepcidin already low. Hypothetical safety pilot: n=10–15, ferritin >150 µg/L + TSAT < 20%, 4 weeks, weekly ANC. NOT a clinical recommendation — black-box warning, fatal infection risk, zero ME/CFS data. Origin: brainstorm.],[Phase 5 / 0.30],

  [lim iron-redox-null-hypotheses], [Six null hypotheses constraining the iron redox polarity model: N1 measurement artifact (hepcidin single-measurement, cert 0.55 — most testable), N2 patient-selection bias (severe ME/CFS unstudied, cert 0.25), N3 confounding-by-comorbidity (undiagnosed autoimmune/infection driving ferritin, cert 0.30), N4 transient-state (iron normalizes on recovery, cert 0.20), N5 therapeutic-indifference (iron-modifying interventions don't change outcomes, cert 0.40), N6 common-pathway (iron phenotype is downstream biomarker of upstream pathology, cert 0.50). N1 is highest-priority: independent hepcidin replication would cost \$50,000 and take \<6 months. Origin: brainstorm — critical categories 11 and 12.],[Phase 5 / n/a],
)


=== T-Cell Mitochondrial Exhaustion

#table(
  columns: (1fr, 2fr, 1fr),
  [*ID / Label*], [*Details*], [*Phase / Cert*],

  [hyp:cd8-mito-fragmentation-exhaustion], [CD8+ T-cell mitochondrial fragmentation (DRP1-mediated fission) as the mechanism underlying acquired immune exhaustion: post-infectious triggers $arrow.r$ DRP1 activation $arrow.r$ mitochondrial fission $arrow.r$ failed metabolic reprogramming $arrow.r$ epigenetic exhaustion in CD8+ TEM cells. Acquired (not inherited — DecodeME GWAS neuronal enrichment, no immune-cell signal). Consistent with Schreiner 2020 (HHV-6/DRP1 in PBMCs), Missailidis 2020 (Complex V defect in lymphocytes), Mandarano 2020 (metabolic dysfunction), Iu 2024 (exhaustion reprogramming). 3 independent reinforcement domains (ch06 selective-energy, ch07 immune-energy-starvation niche, ch14d HIV/cancer parallels). Falsified if CD8+ TEM mitochondrial morphology is normal on TEM. Origin: brainstorm — literature synthesis.],[Phase 7 / 0.60],

  [spec:cd8-fatty-acid-oxidation-shift], [Maya 2023: CD4+ and CD8+ T cells + NK cells shift to fatty acid oxidation (away from glycolysis) in ME/CFS @Maya2023FAOxidation. This may represent a fuel-economy mode preserving survival at the cost of effector function. Origin: literature synthesis.],[Phase 3 / 0.50],

  [spec:me-cfs-immune-suppression], [Petrov 2026 (n=207): ME/CFS shows immune suppression (reduced costimulatory molecules, impaired CCR7 trafficking), not the activation/exhaustion pattern of Long COVID @Petrov2026Immunophenotyping. Eaton-Fitch 2024 confirms at gene expression level: ME/CFS = downregulated IFN/Ig genes (suppression), LC = dysregulated antigen presentation (activation). Origin: literature synthesis.],[Phase 3 / 0.65],

  [spec:severity-stratified-tcell-senescence], [Lee 2025 (n=96, UK Biobank): severe ME/CFS distinguished from mild/moderate by increased cytotoxic effector molecules + early immunosenescence (CD28−) markers @Lee2025TcellActivation. Immune dysfunction progresses with severity. Origin: literature synthesis.],[Phase 3 / 0.65],

)

#table(
  columns: (1fr, 2fr, 1fr),
  [*ID / Label*], [*Details*], [*Phase / Cert*],

  [lim:cd8-mito-evidence-quality], [Systematic evidence gaps in CD8+ mitochondrial exhaustion literature: cohort non-independence (Hanson trio = single patient group), activity confounding (no study controls for step count), missing mechanistic intermediate (DRP1 not measured in primary CD8+ TEM cells), functional validation absent (no antigen-specific recall assay), small sample winner's curse (largest study n=53). Cumulative probability CD8+ mito exhaustion is primary causal mechanism: ~17%. Three highest-priority experiments: TEM imaging, DRP1 quantification in CD8+ TEM, antigen-specific recall assay. Origin: brainstorm — evidence quality assessment.],[Phase 5 / 0.75],

  [sec:tcell-mito-null-hypotheses], [Five nested null hypotheses for CD8+ mitochondrial exhaustion: N1 activity confound (P~0.45), N2 no clinical consequence (P~0.35), N3 CNS-primary — downstream of neuroendocrine/autonomic dysfunction (P~0.30), N4 protective exhaustion — adaptive brake limiting immunopathology (P~0.20), N5 measurement artifact (P~0.15). Cumulative probability all five are false: ~17%. Nulls are testable with experiments of feasible scope (6–18 months). Origin: brainstorm — null hypothesis assessment.],[Phase 5 / n/a],

  [spec:drp1-ros-perk-loop], [DRP1-ROS-pERK positive feedback loop: DRP1 activation → mito fragmentation → ETC disruption → ROS → ERK1/2 phosphorylation → DRP1 Ser616 phosphorylation → sustained fission. Documented in cancer/neurodegeneration but untested in ME/CFS T cells. Schreiner 2020 (DRP1 in PBMCs) + Shankar 2025 (lymphocyte ROS + SOD2 depletion) provide two nodes; pERK is the missing third. Predicts reversibility: breaking loop at any node should restore mito fusion. Distinguished from irreversible damage model. Falsified if p-DRP1(Ser616) and p-ERK are normal in CD8+ TEM cells. Origin: brainstorm.],[Phase 5 / 0.40],

  [spec:cd8-mito-research-priorities], [Three highest-impact experiments for CD8+ mitochondrial exhaustion: (1) TEM imaging of sorted CD8+ TEM cells — confirm/refute fragmentation prediction, (2) DRP1/fission-fusion protein quantification in primary CD8+ TEM cells — the missing mechanistic link, (3) antigen-specific recall response with concurrent metabolic readout — test whether metabolically exhausted cells actually fail to respond. Origin: brainstorm — research gap synthesis.],[Phase 5 / n/a],

  [spec:hiv-cd8-chtml-exhaustion-parallel], [HIV (virally suppressed on ART) produces CD8+ phenotype strikingly similar to ME/CFS: elevated PD-1/TIM-3, reduced mito respiration, FAO shift, CD28− senescence, impaired recall. Persists without detectable virus — strongest clinical precedent for post-viral CD8+ exhaustion without chronic replication. HIV field has developed dual-phenotyping panel (PD-1/TIM-3 for exhaustion + CD28/CD57 for senescence) distinguishing reversible from irreversible dysfunction. NAC trials in HIV partially restored CD4+/CD8+ counts — clinical precedent for antioxidant CD8+ restoration. mtDNA depletion documented in HIV+ CD8+ cells (Morse 2019) — technical roadmap. No direct HIV-ME/CFS comparison exists. Origin: brainstorm — cross-disease.],[Phase 5 / 0.40],

  [spec:cancer-immunotherapy-cd8-parallel], [ME/CFS CD8+ TEM cells express same exhaustion TFs (TOX, EOMES, TCF7) as tumor-infiltrating lymphocytes @Iu2024CD8Exhaustion. Key difference: trigger is likely mitochondrial metabolic failure, not chronic antigen (Cliff 2019 found no HHV seroprevalence differences n=251 @Cliff2019Cellular; Petrov 2026 found immune suppression not activation @Petrov2026Immunophenotyping). Checkpoint inhibitors (PD-1 blockade) contraindicated pending ex vivo safety data — risk of triggering autoimmunity in autoimmune-prone population (GPCR autoantibodies). TCF7 expression may identify "early" (reversible) exhaustion subset responsive to metabolic interventions. TCR clonality distinguishes polyclonal (mitochondrial) vs oligoclonal (antigen-driven) exhaustion. Origin: brainstorm — cross-disease.],[Phase 5 / 0.35],

)


=== Hypothalamic CRH-Neuron Depletion

#registry-entry(
  [Selective Depletion of Hypothalamic CRH Neurons in Severe ME/CFS],
  type: "S",
  certainty: "0.30",
  evidence: [Preliminary brain-autopsy series presented at IACFS/ME 2025 (Da Silva et al., University of Amsterdam / Netherlands Brain Bank): dramatically reduced PVN CRH-producing neurons in 7 severe deceased ME/CFS patients vs controls, with AVP/OXT neurons spared and downstream pituitary receptor/POMC downregulation @dasilva2025iacfscrh. Not peer-reviewed; no primary publication. Swaab-group PVN CRH quantification methodology is well established @bao2010crh @bao2008stress. Prior ME/CFS autopsy literature sparse @ferrero2017cns. Origin: literature synthesis.],
  citations: [@dasilva2025iacfscrh @bao2010crh @bao2008stress @tak2011hpa @ferrero2017cns],
  mechanism: [Loss of PVN CRH neurons removes the initiating signal of the HPA cascade, relocating documented ME/CFS hypocortisolism from adrenal/feedback level to a central manufacturing deficit. Low morning cortisol becomes the readout of absent CRH drive rather than adrenal or feedback pathology.],
  chapter-ref: [ch09: central crh loss],
  prediction: [A peer-reviewed, severity-stratified replication will confirm reduced PVN CRH-neuron counts in severe ME/CFS relative to age/sex/agonal-state-matched controls, with preserved AVP/OXT counts. Falsified if independent PVN CRH quantification finds normal or increased CRH-neuron numbers in ME/CFS, or if the deficit disappears after controlling for agonal state and medication.],
  treatment: [If central CRH machinery is structurally depleted, cortisol replacement addresses the symptom (low cortisol) not the cause and may be counterproductive; no clinical action warranted at current evidence.],
  limitation: [Single unpublished conference source; n=7; severe/very-severe only; end-of-life tissue cannot separate cause, consequence, or artefact; no other brain regions quantified; no replication.],
)

#registry-entry(
  [Cell-Type-Specific CRH Vulnerability Distinguishes ME/CFS from Depression and MS],
  type: "S",
  certainty: "0.25",
  evidence: [In depression @raadsheer1994crh and MS @purba1995crhms (same Netherlands Brain Bank methodology @bao2008stress), PVN CRH neurons are increased; the reported ME/CFS finding is the opposite (reduced) @dasilva2025iacfscrh. Selective GnRH-neuron death in Long COVID hypothalamus @sauve2023gnrh provides a post-infectious cell-type-specific precedent (cross-disease, not yet shown in ME/CFS). Origin: literature synthesis.],
  citations: [@dasilva2025iacfscrh @raadsheer1994crh @purba1995crhms @sauve2023gnrh @bao2008stress],
  mechanism: [A process that selectively removes/silences CRH neurons while sparing AVP and OXT populations, opposite in direction to the CRH-neuron increase seen in stress-driven hyperactive-HPA conditions — arguing ME/CFS hypocortisolism is not stress-system burnout but a distinct cell-type-specific vulnerability.],
  chapter-ref: [ch09: crh cell type specificity],
  prediction: [Head-to-head PVN histology will show ME/CFS CRH-neuron counts below controls while depression/MS counts remain above, with AVP/OXT preserved across all groups. Falsified if ME/CFS CRH-neuron direction matches depression/MS, or if AVP/OXT are also depleted (indicating global rather than selective loss).],
  treatment: [None. Mechanistic distinction only.],
  limitation: [Indirect ME/CFS-vs-depression contrast (different cohorts, not head-to-head); rests on the same unpublished finding.],
)

#registry-entry(
  [Downstream Symptom Predictions of CRH-Neuron Loss: Pain Amplification and Exertional Autonomic Failure],
  type: "S",
  certainty: "0.18",
  evidence: [Contingent on @spec:central-crh-loss. CRH/urocortins mediate central stress-induced analgesia; parvocellular PVN CRH neurons shape exertion-evoked sympathetic output. ME/CFS shows hypocortisolism @tak2011hpa, widespread pain/fibromyalgia overlap, and exertional/orthostatic intolerance. No ME/CFS study links CRH-neuron number to pain or autonomic reserve. Origin: brainstorm.],
  citations: [@tak2011hpa @dasilva2025iacfscrh],
  mechanism: [Loss of central CRH removes tonic analgesic inhibition (→ raised pain sensitivity, reduced stress-induced analgesia) and impairs acute stress-evoked sympathetic reserve while sparing baseline tone (→ exertional/orthostatic/thermoregulatory failure with normal resting measures).],
  chapter-ref: [ch09: crh loss downstream symptoms],
  prediction: [ME/CFS will show reduced conditioned pain modulation correlating with cortisol output, and blunted sympathetic responses (MSNA/plasma NE) to laboratory stress with preserved resting tone. Falsified if pain modulation and stress-evoked sympathetic responses are normal, or fail to correlate with HPA measures.],
  treatment: [None. Mechanistic prediction only.],
  limitation: [Doubly contingent (on the unconfirmed depletion finding and on untested ME/CFS-specific circuit links); indirect.],
)

#registry-entry(
  [Trigger-Specific and Autoimmune-Mediated CRH Loss],
  type: "S",
  certainty: "0.10",
  evidence: [Two low-certainty extensions retained for future cycles. Trigger-specificity by analogy to selective GnRH-neuron death after SARS-CoV-2 @sauve2023gnrh; two-hit autoimmune targeting via anti-hypothalamus autoantibodies @debellis2021pituitary supplying specificity with complement/microglia as effectors. Origin: brainstorm.],
  citations: [@sauve2023gnrh @debellis2021pituitary @dasilva2025iacfscrh],
  mechanism: [(a) Neurotropic-pathogen-specific vulnerability making CRH loss a subtype marker; (b) autoantibody targeting + complement/microglial phagocytosis explaining CRH-vs-AVP/OXT selectivity.],
  chapter-ref: [ch09: crh loss trigger autoimmune],
  prediction: [Trigger-stratified autopsy series will show CRH counts differing by infectious trigger; PVN co-staining will show IgG on CRH but not AVP/OXT neurons with adjacent microglia. Falsified if CRH loss is trigger-independent or shows no IgG colocalisation.],
  treatment: [None now; if the two-hit model were supported, early immunomodulation could theoretically halt (not reverse) damage — untested.],
   limitation: [Very low certainty; extensions of an already-preliminary finding; deferred pending replication and pilot colocalisation data.],
)

#registry-entry(
  [What Drives CRH-Neuron Loss — Neuroinflammation, Autoimmunity, or Excitotoxicity?],
  type: "OQ",
  certainty: "n/a",
  evidence: [Candidate drivers make competing predictions. Immune-inflammatory central HPA hypofunction model @morris2017hpa vs a null: TSPO-PET has not consistently shown neuroinflammation in ME/CFS (TSPO sensitivity/attribution caveats apply). Anti-pituitary/anti-hypothalamus autoantibodies in a CFS subset @debellis2021pituitary support an autoimmune alternative. Post-infectious neuronal death precedent @sauve2023gnrh. Origin: literature synthesis.],
  citations: [@morris2017hpa @debellis2021pituitary @sauve2023gnrh @dasilva2025iacfscrh],
  mechanism: [Neuroinflammatory/excitotoxic damage, autoimmune targeting of CRH-producing cells or their pituitary targets, or direct post-infectious neuronal death — not mutually exclusive; current evidence cannot adjudicate.],
  chapter-ref: [ch09: crh loss driver],
  prediction: [Simultaneous histology + autoantibody + neuroinflammation markers in the same brains will distinguish drivers: inflammatory signature (activated microglia near depleted PVN), autoantibody deposition, or neither. No such combined dataset exists.],
  treatment: [Driver identity dictates rational therapy class (anti-inflammatory vs immunomodulatory); none justified until the driver is established.],
  limitation: [No combined dataset; TSPO-PET null constrains but does not exclude the neuroinflammatory model; all drivers inferred.],
)

#registry-entry(
  [Which Experiments Would Confirm or Refute Central CRH-Neuron Loss?],
  type: "OQ",
  certainty: "n/a",
  evidence: [The finding's value lies in feasible experiments on existing NBB tissue: multiplexed CRH+microglia+T-cell+IgG staining (driver), blinded three-group stereology (depression contrast @raadsheer1994crh @purba1995crhms), CRH-count vs disease-duration regression (cause vs consequence), and hypothalamic snRNA-seq (beyond-CRH discovery). Origin: brainstorm.],
  citations: [@raadsheer1994crh @purba1995crhms @sauve2023gnrh @bao2008stress],
  mechanism: [Each experiment maps to one interpretive fork: colocalisation → driver; head-to-head stereology → real vs artefactual direction reversal; duration regression → progressive vs fixed; snRNA-seq → cell-type breadth + glial signature.],
  chapter-ref: [ch09: crh loss experiments],
  prediction: [Multiplexed staining will localise (or fail to localise) immune markers to CRH-depleted zones; blinded stereology will confirm (or not) ME/CFS < controls < depression; duration regression slope sign will discriminate progressive from fixed loss. Any outcome is informative.],
  treatment: [N/A — research directions only.],
  limitation: [Some experiments limited by existing cohort size (n=7); snRNA-seq depends on tissue RNA integrity.],
)


=== Ocular Sjögren / ME/CFS Overlap

#registry-entry(
  [Functional Lacrimal Denervation as a Candidate Non-Autoimmune Route to Sicca in ME/CFS],
  type: "S",
  certainty: "0.28",
  evidence: [ME/CFS parasympathetic dysfunction is documented @Azcue2023sfn; the lacrimal functional unit is parasympathetically innervated (CN VII, pterygopalatine ganglion). Sjögren's sicca is destruction-driven @wu2024sjogrendryeyediagnostics; the M3-autoantibody account posits antibody-mediated blockade (@spec:me-cfs-sicca-m3-antibodies). This entry proposes a third, non-autoimmune route: functional denervation from autonomic withdrawal, distinguishable by a pilocarpine challenge test (denervation → preserved/supersensitive response; destruction → blunted). No direct ME/CFS data. Origin: brainstorm.],
  citations: [@Azcue2023sfn @wu2024sjogrendryeyediagnostics @lepine2024tearproteomics],
  mechanism: [Parasympathetic withdrawal → reduced cholinergic drive to lacrimal/salivary glands → aqueous-deficient sicca with preserved gland architecture. Contrasts with Sjögren's lymphocytic destruction and with M3-antibody blockade. Denervation supersensitivity predicts preserved or exaggerated response to exogenous cholinergic agonist.],
  chapter-ref: [ch14d: mecfs lacrimal denervation, ch14d: me cfs sicca m3 antibodies],
   prediction: [Standardised pilocarpine challenge (oral M3 agonist; Schirmer's at 0/30/60/90 min): $gt.eq 5$ mm tear increase in the majority of ME/CFS sicca patients vs a minority of primary Sjögren's sicca controls; pilocarpine responsiveness correlates with resting HRV. Salivary-gland ultrasound normal in ME/CFS sicca. Falsified if ME/CFS sicca shows SGUS abnormalities matching Sjögren's or an equally blunted pilocarpine response. The test distinguishes functional impairment from gland destruction but NOT denervation from M3-antibody blockade; discriminating the specific non-autoimmune claim requires stratifying pilocarpine response by M3-autoantibody titre (preserved response in the antibody-negative subset). Interpret blunted responses against anticholinergic burden (chronic use causes glandular atrophy).],
  treatment: [If denervation-driven: cholinergic agonists (pilocarpine, cevimeline). Research hypothesis only, not a recommendation. The pilocarpine challenge is a provocation test, not bloodwork-free simplicity — it requires cardiac monitoring in a population with prevalent orthostatic intolerance. Contraindicated in uncontrolled asthma, narrow-angle glaucoma, acute iritis, GI/biliary obstruction, sick sinus syndrome, concurrent beta-blockers. Side effects (sweating, nausea, diarrhoea, bradycardia) may limit tolerability.],
  limitation: [No direct ME/CFS data; inferred from documented dysautonomia + lacrimal neuroanatomy. Overlaps with M3-autoantibody account — the pilocarpine challenge distinguishes functional impairment from gland destruction but NOT denervation from M3-antibody blockade (both predict preserved response). Sicca in ME/CFS is multifactorial (anticholinergic medications, dehydration); chronic anticholinergic use can itself cause glandular atrophy, confounding the challenge. Cholinergic agonists unlicensed for ME/CFS; use requires supervised cardiac monitoring.],
)

#registry-entry(
   [The Ocular Surface as a Shared Neuro-Immune Window Across Sjögren's and ME/CFS],
   type: "S",
   certainty: "0.25",
  evidence: [Sjögren's tear proteomics discriminates autoimmune from non-autoimmune sicca @lepine2024tearproteomics @george2023tearproteomics; tear IL-6/IL-17/MMP-9/BAFF track systemic disease activity @wu2024sjogrendryeyediagnostics. Corneal confocal microscopy (CCM) of the subbasal nerve plexus detects small-fiber loss in Sjögren's @luzu2022cornealinnervation, predicts serological activity @wang2025ivcmsjogren, and shows corneal nerve abnormalities in fibromyalgia dry eye @verges2025fibrodryeye. CCM already detects SFN in ME/CFS and post-COVID cohorts @Azcue2025sfn @Azcue2023sfn @Cañadas2023CornealConfocal. Distinct from the T-cell tear entry (@spec:tear-tcell-readout) — this entry centres the Sjögren's inflammatory-cytokine + corneal C-fiber axis. Origin: literature synthesis.],
  citations: [@lepine2024tearproteomics @george2023tearproteomics @wu2024sjogrendryeyediagnostics @luzu2022cornealinnervation @wang2025ivcmsjogren @verges2025fibrodryeye @Azcue2025sfn @Azcue2023sfn @Cañadas2023CornealConfocal],
  mechanism: [Ocular surface may integrate two dysregulated signals: (a) tear inflammatory mediators reflecting systemic immune activity, and (b) corneal subbasal C-fiber density reflecting small-fiber integrity. The lacrimal functional unit is parasympathetically innervated (CN VII), so ME/CFS dysautonomia could reduce tear secretion downstream of the same autonomic pathology implicated elsewhere. Convergence would make the eye a mostly non-invasive site (tear sampling low-burden; CCM a specialist procedure, not bedside) reflecting the neuro-immune and small-fiber arms of ME/CFS.],
  chapter-ref: [ch14d: ocular surface neuroimmune window, ch14d: mecfs tear proteome],
  prediction: [In an ME/CFS cohort vs matched controls, CCM shows reduced corneal nerve fiber density (lower CNFD in cases, matching Sjögren's/fibromyalgia direction) AND tear IL-6/MMP-9 is elevated in the objective-dry-eye subset. Falsified if CCM shows no group difference in corneal nerve density OR tear inflammatory markers do not differ between ME/CFS cases with sicca and controls (failure of either conjunct refutes the joint window claim).],
  treatment: [No treatment proposed. If validated, tear sampling (low-burden) plus corneal confocal microscopy (a specialist procedure requiring a fixed device and operator, NOT a bedside test) could largely non-invasively detect small-fiber and inflammatory features of ME/CFS — of particular value where skin-biopsy nerve testing is impractical, though CCM's equipment requirement limits true bedside/bedbound accessibility.],
  limitation: [No ME/CFS study has measured the tear proteome or performed CCM as a primary endpoint; every ME/CFS-specific claim is analogical (Sjögren's, fibromyalgia, post-COVID). Sicca in ME/CFS is multifactorial (anticholinergic medications, dehydration, dysautonomia) and need not reflect autoimmune glandular pathology. Corneal nerve changes are non-specific across systemic conditions.],
)

#registry-entry(
  [Corneal Nerve Tortuosity as Separate ODE State Variable from Fiber Density],
  type: "S",
  certainty: "0.20",
  evidence: [Azcue et al. (2025) found corneal nerve tortuosity (AUC=0.720) is a better discriminator of ME/CFS from controls than CNFD (AUC=0.63), suggesting tortuosity and density are driven by different processes. Phase 4 brainstorm (idea 7.1) proposes a two-variable SFN ODE extension separating tortuosity T (ECM/glycocalyx degradation → fiber kinking) from density F (axonal die-back). ECM/glycocalyx disruption documented in ME/CFS vascular endothelium (Wust 2024, ch06). Origin: brainstorm.],
  citations: [@Azcue2025sfn],
  mechanism: [ROS + autoantibody-mediated ECM/glycocalyx degradation → perineurial support loss → nerve fiber buckling (tortuosity increase) independent of axonal die-back (density decrease). Two separable pathological processes with different rate constants: tortuosity (rapid ECM, reversible), density (slow axonal, less reversible).],
  chapter-ref: [ch4: 1 — see SFN ODE discussion following cnfd sfn observable],
  prediction: [Longitudinal ME/CFS CCM data: tortuosity T increases early (constant gamma_ECM > 0) while density F declines later (slower k_degen). T and F trajectories are statistically distinguishable (no significant cross-correlation at lag=0) and T/F ratio is a monotonic disease progression marker. Falsified if T and F change synchronously or tortuosity changes only when density is already reduced.],
  treatment: [If tortuosity is ECM-driven: glycocalyx-stabilizing interventions (sulodexide, doxycycline) vs if density loss is axonal: regenerative interventions (NGF, growth factors). Different treatment targets for different SFN phenotypes.],
  limitation: [Two-variable model entirely theoretical; no longitudinal ME/CFS CCM data; ECM degradation in trigeminal ganglion unstudied; tortuosity may reflect mechanical deformation from dry eye / blinking artifact rather than glycocalyx pathology.],
)

#registry-entry(
  [Does the ME/CFS Tear Proteome Resemble the Sjögren's Signature?],
  type: "OQ",
  certainty: "n/a",
  evidence: [The ME/CFS tear proteome is entirely uncharacterized. Sjögren's tear proteomics has matured to validated discriminant panels @lepine2024tearproteomics; fibromyalgia shows ocular-surface and corneal-nerve abnormalities @verges2025fibrodryeye. No study has applied the same LC-MRM tear panel to an ME/CFS cohort. Bears on the long-standing seronegative-Sjögren's hypothesis for an ME/CFS subset (see ch14d Sjögren's block). Origin: literature synthesis.],
  citations: [@lepine2024tearproteomics @george2023tearproteomics @verges2025fibrodryeye],
  mechanism: [If a subset of ME/CFS patients harbour subclinical autoimmune sicca, their tears could carry a Sjögren's-like inflammatory-proteomic signature (IL-6, IL-17, MMP-9, BAFF, β2-microglobulin); alternatively the signature may be distinct or absent, arguing against the shared-autoimmune-subgroup model.],
  chapter-ref: [ch14d: mecfs tear proteome, ch14d: ocular surface neuroimmune window],
  prediction: [Applying the validated Sjögren's tear LC-MRM panel to an ME/CFS cohort will either separate a sicca-positive subset from controls (supporting shared subclinical autoimmunity) or fail to (arguing against it). Falsified as a shared-signature claim if no ME/CFS subset shows Sjögren's-like tear proteomic clustering.],
  treatment: [N/A — research direction only. A non-invasive tear test could, if positive, help identify an ME/CFS subset overlapping biologically with a treatable autoimmune disease.],
   limitation: [Untested in ME/CFS. Tear composition confounded by ocular surface disease, diet, environment, sleep. A negative result would not exclude autoimmunity confined to compartments not reflected in tears.],
)

#registry-entry(
  [Ocular-Surface Signal in ME/CFS May Be Artefact (Medication / Dry-Eye / Spurious-Overlap Confounds)],
  type: "OQ",
  certainty: "n/a",
  evidence: [Critical self-audit of the ocular-surface hypotheses (@spec:ocular-surface-neuroimmune-window, @oq:mecfs-tear-proteome, @spec:mecfs-lacrimal-denervation). Zero direct ME/CFS tear/CCM primary-endpoint studies exist (~0.95 certainty of gap). Alternative explanations: anticholinergic-medication-induced sicca (~0.50), dry-eye-driven cytokine/nerve changes (~0.45), spurious tear-proteomic overlap as shared DED endotype (~0.40). The one fatigue-spectrum ocular study @verges2025fibrodryeye did not control for anticholinergic medication; Sjögren's tear panels @lepine2024tearproteomics may misclassify autonomic dry eye; tear cytokine assays vary by time/method; referral-clinic selection bias inflates apparent overlap; no multimodal (CCM+tear+IENFD+autonomic) study exists in any disease. Origin: brainstorm critical categories 10–12.],
  citations: [@verges2025fibrodryeye @lepine2024tearproteomics @wu2024sjogrendryeyediagnostics],
  mechanism: [Confounds that could produce ocular findings without implicating ME/CFS systemic biology: (1) anticholinergic drugs reduce secretion; (2) local dry-eye inflammation elevates tear cytokines and remodels corneal nerves; (3) common final inflammatory pathway of dry eye mimics disease-mechanism overlap.],
  chapter-ref: [ch14d: ocular surface mecfs confounds],
  prediction: [Any positive ME/CFS ocular-surface finding must survive adjustment for anticholinergic burden and dry-eye severity, and be replicated with standardised tear-collection methods, before it can be attributed to ME/CFS systemic biology. Falsified as a confound-only account if tear-serum cytokine correlation persists after dry-eye adjustment and in medication-free patients.],
  treatment: [N/A — methodological caveat. Guards against premature clinical use of unvalidated ocular biomarkers.],
  limitation: [The confounds themselves are inferred; some (e.g. medication burden) are directly testable and should be measured in any future ME/CFS ocular study.],
)


=== LDN Hormetic Dose-Response

#table(
  columns: (1fr, 2fr, 1fr),
  [*ID / Label*], [*Details*], [*Phase / Cert*],

  [spec:ldn-hormetic-window], [LDN shows non-monotonic dose-response within the clinical 0.5 to 4.5 mg range because TLR4 partial antagonism triggers Nrf2-mediated compensatory anti-inflammatory priming at lower doses; higher doses within the LDN range remove the basal TLR4 tone needed to sustain this compensatory response. Four distinct mechanisms have non-overlapping dose optima. No within-range dose-response trial in any condition. Falsifiable prediction: prospective four-arm crossover trial must show non-monotonic individual response curves. Falsified if all individual curves are monotonic within the tested range.],[Phase 3 / 0.30],

  [hyp:multi-target-dose-optimum-divergence], [LDN's four mechanisms have distinct concentration-response curves with potentially non-overlapping optima. A patient's optimal dose reveals which mechanism is dominant. Prediction: patients with TRPM3 dysfunction should respond to higher LDN doses while patients with inflammation-driven symptoms should respond to lower doses. Falsified if there is no correlation between baseline TRPM3 function, inflammatory markers, and individual optimal LDN dose.],[Phase 3 / 0.25],

  [spec:hormesis-multi-drug-principle], [Non-monotonic dose-response is a recurring pattern across ME/CFS pharmacotherapy spanning 17+ medications (LDN, LDA, lithium, melatonin, sulforaphane, corticosteroids, DORAs, duloxetine, beta-blockers, modafinil, H1 antihistamines, rapamycin, allopregnanolone, NAC, ketotifen, quercetin, taVNS). The hormesis framework unifies these observations via Nrf2-mediated compensatory upregulation (Calabrese corpus), catecholamine inverted-U at prefrontal D1/α2A receptors (Arnsten, Cools), mTORC1/mTORC2 dose selectivity (Sarbassov, Lamming), and biphasic concentration-response at GABA-A (Andreen). Falsifiable prediction: individual inversion-point position (standardised dose at which symptom improvement turns to worsening) should correlate across drugs within each patient if a hormetic reserve trait exists; mean pairwise r ≥ 0.4 expected, with ≥60% of all 136 pairwise comparisons reaching r ≥ 0.3. Falsified if mean pairwise r < 0.2 and fewer than 20% of pairs reach r ≥ 0.3. Indeterminate if mean r falls in 0.2--0.4 range or 20--60% of pairs are above threshold — then hormetic reserve signal is too weak/noisy for a single-trait model and would require mechanistic-clustering decomposition. @Calabrese2002hormesisHistory @CalabreseBaldwin2003toxicologyRethinks @Calabrese2010hormesisCentral @Sun2020yinYangHormesis @Arnsten2011catecholaminePFC @Cools2011invertedU @Sarbassov2006rapamycin @Lamming2012rapamycin @Andreen2009allopregnanoloneBiphasic],[Phase 3 / 0.35],

  [oq:ldn-dose-response-research-gap], [No within-range LDN dose-response trial exists for ME-CFS. The upcoming LIFT trial uses a single fixed dose and cannot address this gap.],[Phase 3 / n/a],

  [hyp:hormetic-mechanistic-clustering], [Non-monotonic dose-response drugs group into five mechanistic categories (Nrf2, catecholamine, D2 partial-agonist, mTOR/autophagy, GABAergic/neurosteroid). Inversion-point positions should correlate within categories (r ≥ 0.4) but not across (r < 0.2). Cluster 3 (D2 partial-agonist: aripiprazole/LDA, single-member) is an occupancy-dependent inverted-U, pharmacologically distinct from both Nrf2 hormesis and PFC catecholamine inverted-U — the curve is identical in any population with dopamine deficit, not ME/CFS-specific. Lithium and corticosteroids are bridge drugs spanning multiple categories. Falsifiable prediction: within-patient intra-class r ≥ 0.4 in ≥4 of 5 categories; cross-category max pairwise r < 0.2. Falsified if all pairwise r < 0.2 including within-category. Indeterminate: 0.2 ≤ r < 0.4 across all (requires expanded N). @Calabrese2010hormesisCentral @Arnsten2011catecholaminePFC @Cools2011invertedU @Sarbassov2006rapamycin @Andreen2009allopregnanoloneBiphasic @Crosby2021LDA @Sun2020yinYangHormesis],[Phase 4 / 0.25],

  [spec:hormetic-inversion-point-battery-hip-b], [A 6-drug within-patient crossover pilot trial (LDN, sulforaphane, duloxetine, modafinil, rapamycin, allopregnanolone — each at 4 dose levels) to estimate cross-drug inversion-point correlation effect size. With n=20, the 95% CI on pairwise r spans approximately -0.05 to 0.71 — the 0.2-to-0.4 transition zone is within the CI, preventing decisive classification for most outcomes. The pilot therefore estimates effect size for a definitive trial requiring n ≥ 80 to distinguish confirmed (r ≥ 0.4) from falsified (r < 0.2). If 30--50% show inversions, effect size is too small to reject confounding at n=20; requires n ≥ 80 replication. Due to high PEM burden, a staged design is proposed: Phase 1 = 2-drug crossover (LDN + duloxetine, ~14--18 weeks); Phase 2 = expand to 6 drugs only conditional on Phase 1 r ≥ 0.3. Estimated cost: $1.2M--$1.7M (Phase 1 + Phase 2 combined). No pharmaceutical company will fund (all 6 drugs generic). @Samuel2019Nof1Hypertension @Samuel2023Nof1RCT],[Phase 4 / n/a],

  [spec:hormetic-reserve-heritability], [If inversion-point correlation r ≥ 0.4 is confirmed in HIP-B, hormetic quotient (HQ) is measurable and predicted to be ~40--60% heritable — a quantitative endophenotype for ME/CFS susceptibility analogous to P50 sensory gating in schizophrenia. Predictions: MZ twin pairs discordant for ME/CFS should show correlated HQ values (r ≥ 0.5); unaffected first-degree relatives should show intermediate HQ; GWAS on HQ (n ≥ 500) should identify loci in NFE2L2, KEAP1, COMT, TLR4, ADRB1/2, NR3C1, FKBP5, MTOR. Falsified if HQ shows no family concordance (r < 0.2 in MZ pairs).],[Phase 4 / 0.20],

  [oq:hormesis-cross-disease-generality], [If hormetic reserve is heritable and measurable in ME/CFS, the same battery may reveal narrowed hormetic windows in other post-infectious diseases (Long COVID, PTLDS, fibromyalgia, POTS) and in elderly populations with decreased stress-response adaptivity. Null hypothesis: hormetic windows narrow with age in all populations, not disease-specifically. Testable with HIP-B in age-matched healthy controls vs ME/CFS vs Long COVID cohorts. Falsifiable prediction: if HIP-B is administered across all three groups, the HOIP model predicts disease-specific inversion-point narrowing (ME/CFS r < Long COVID r < PTLDS r < healthy r). Falsified if all groups show identical mean pairwise r — hormetic narrowing is age-driven, not disease-specific. Indeterminate if some disease pairs differ and others do not (mixed signal).],[Phase 4 / n/a],

)


=== Interoceptive Dose-Finding

#table(
  columns: (1fr, 2fr, 1fr),
  [*ID / Label*], [*Details*], [*Phase / Cert*],

  [spec:interoceptive-dose-finding], [Deliberate intermittent dosing in ME/CFS — patients skipping doses, taking drug holidays, pulsing medications — may represent rational interoceptive N-of-1 experimentation rather than non-adherence. The allostatic-interoceptive network computes allostatic significance from interoceptive afferent signals and updates predictive models of bodily state. Repeated perturbation-and-sensing cycles (dose → symptom change → dose adjustment) allow the network to approximate the dose-response curve without biomarkers. The hormetic dose-response framework establishes the therapeutic window as a 3D volume (dose × time × response) with time-dependent features; the interoceptive framework proposes that patients are probing this volume through deliberate pulse-and-assess cycles. Falsifiable: qualitative interview data from ME/CFS patients who pulse medications should reveal deliberate interoceptive experimentation in ≥10% of patients. Falsified if fewer than 10% report interoceptive dose-finding as a reason for pulsing. Individual mechanistic components range from cert 0.30 (time-dependent hormesis) to cert 0.70 (allostatic-interoceptive network mapping); the conceptual link between them is untested, cert 0.20 for the integrated claim. @ZhangWager2025Allostatic @Sun2018SeesawHormesis @Mushak2016TemporalHormesis],[Phase 1 / 0.20],

)


=== Skeletal Asymmetry and Postural Mechanics

#table(
  columns: (1fr, 2fr, 1fr),
  [*ID / Label*], [*Details*], [*Phase / Cert*],

  [spec skeletal-asymmetry-cascade],[Skeletal asymmetry (rotoscoliosis, DAMI, ILMI) as primary mechanical driver of ME/CFS via four pathways: compensatory muscle overuse, sympathetic chain irritation, mechanical nerve compression, cervical aging spiral. Origin: Gerlier 2026-07-21, personal communication.],[Phase 1 / 0.10],

  [spec ch08-thoracolumbar-sympathetic-irritation],[Thoracolumbar sympathetic chain irritation from rotoscoliosis producing multi-organ dysautonomia without requiring CCI. Anatomical precedent: Schulte2010 (sympathetic chain vulnerable to thoracic spine surgery).],[Phase 1 / 0.10],

  [spec mechanical-postural-subgroup],[Skeletal asymmetry defines a distinct ME/CFS subgroup: non-hypermobile, positionally modulated, gradual-onset, age-worsening. Distinct from hypermobility/hEDS subgroup.],[Phase 1 / 0.10],

  [lim skeletal-asymmetry-evidence-gap],[The Gerlier hypothesis has near-zero direct ME/CFS evidence at any link. 10 indirect papers; all supporting evidence comes from surgical complication reports, genetic disease models, and clinical reasoning. DAMI/ILMI yield zero PubMed results.],[Phase 2 / n/a],

  [spec skeletal-asymmetry-cascade, ch15  Fascial and Connective Tissue Innervation],[Skeletal asymmetry produces chronic low-grade mechanical nerve compression (lateral femoral cutaneous, sciatic, pudendal) distinct from SFN — a compression neuropathy amplified by central sensitization. Improvement predicted with postural correction.],[Phase 2 / 0.10],

  [spec skeletal-asymmetry-cascade, "How does the asymmetry originate?"],[Competing hypotheses for skeletal asymmetry origin: developmental/traumatic (Gerlier: neonatal cervical subluxation → spiralization), congenital/genetic, acquired postural/deconditioning, or idiopathic. Cascade downstream is agnostic to origin.],[Phase 2 / n/a — competing origins],
)


=== Hidradenitis Suppurativa as Autoinflammatory Comparator

#registry-entry(
  [Autoinflammatory Disease Category Absent from ME/CFS Literature],
  type: "L",
  certainty: "0.70",
  evidence: [PubMed search for "autoinflammatory disease" AND ("chronic fatigue syndrome" OR ME/CFS) returned zero results (July 2026). Autoinflammatory diseases (FMF, CAPS, TRAPS, HS, AOSD, SAPHO, Behçet's) are innate-immune-driven, IL-1beta/IL-18/NLRP3-mediated conditions with fatigue as a major symptom — yet the entire category has never been compared to or studied alongside ME/CFS. This is a categorical research gap (absence of investigation), not a null result.],
  citations: [],
  mechanism: [Not a mechanistic claim — an evidence-gap observation. Autoinflammatory diseases share the NLRP3/IL-1beta effector arm with ME/CFS PEM models, produce fluctuating fatigue, are treated with mechanistically-targeted therapies (anakinra, canakinumab, colchicine), but are distinguishable by elevated systemic inflammatory markers (CRP, SAA, ESR) that are typically normal/minimally elevated in ME/CFS. The gap may reflect a real biological distinction or a field artefact.],
  chapter-ref: [ch14d: autoinflammatory category absent],
  prediction: [Not applicable — this is a categorical evidence gap, not a testable hypothesis. Adding ME/CFS screening instruments to autoinflammatory disease registries would directly address the gap.],
  treatment: [No treatment implication. Research implication: add DSQ-PEM and CCC/IOM criteria to autoinflammatory registries (Eurofever, HS ALLIANCE) at minimal cost — a one-year timeline to establish or refute autoinflammatory-ME/CFS comorbidity.],
   limitation: [Litigation search limitation: zero results may reflect PubMed indexing gaps (autoinflammatory disease is a relatively recent category, unified ~1999; many constituent diseases were historically indexed under "rheumatology" or "dermatology"). Google Scholar and EMBASE search may yield additional results. The gap is documented, not guaranteed — a positive finding could emerge from databases or registries not yet searched.],
)

#registry-entry(
  [HS-NLRP3-IL-1beta Pathway as Mechanistic Bridge to ME/CFS Fatigue],
  type: "S",
  certainty: "0.35",
  evidence: [NLRP3 is a firmly established driver of HS inflammation (scRNA-seq explant @Moran2023NLRP3HS cert 0.75; PCR overexpression @Krajewski2024NLRP3HS cert 0.50; metformin AMPK-NLRP3 @Petrasca2023MetforminHS cert 0.65). NLRP3 mediates fatigue in mouse models: KO mice show markedly reduced LPS-fatigue and swim-fatigue with decreased brain IL-1beta @Zhang2016NLRP3CFS cert 0.70 @Zhang2017NLRP3Fatigue cert 0.65. PEM model in CFS/Long COVID includes NLRP3→IL-1beta→neuroinflammation @Jin2026PEMinflammasome cert 0.65. Single epidemiological association HS–ME/CFS OR 1.72 @Prens2022HSComorbidities cert 0.70. Zero direct HS–ME/CFS mechanistic studies exist. Kilgour 2026: NLRP3 inhibition alone (AZD9056) insufficient for clinical HS response despite restoring PBMC cytokines — suggests redundant pathways.],
  citations: [@Moran2023NLRP3HS @Krajewski2024NLRP3HS @Petrasca2023MetforminHS @Zhang2016NLRP3CFS @Zhang2017NLRP3Fatigue @Jin2026PEMinflammasome @Prens2022HSComorbidities],
  mechanism: [HS systemic inflammation → NLRP3/IL-1beta/IL-17 → systemic cytokine spillover → neuroinflammation → fatigue. Both HS and ME/CFS share NLRP3/IL-1beta as a plausibly common fatigue mediator; HS provides a human autoinflammatory model where the NLRP3 axis is causal and therapeutic targets are FDA-approved, making it a tractable platform for studying cytokine→fatigue mechanisms that cannot be directly studied in ME/CFS. Distinct from classical autoimmunity (adaptive-T/B-cell-driven) — HS is an innate-immune-driven autoinflammatory disease of the IL-1beta/IL-18/NLRP3 axis.],
  chapter-ref: [ch14d: hs nlrp3 mechanistic bridge],
  prediction: [Observational study of HS patients initiating biologics: anti-IL-1beta therapy (anakinra/canakinumab) will show the largest FSS/PROMIS-Fatigue reduction by Week 16 among cytokine-targeting agents, exceeding anti-TNF and anti-IL-17. Falsified if no anti-cytokine therapy reduces fatigue beyond placebo despite clinical HS response (HiSCR≥50).],
  treatment: [No direct ME/CFS treatment implication. HS biologics are not indicated for ME/CFS. The hypothesis is mechanistic: HS as model system for cytokine→fatigue biology. Kilgour 2026 (NLRP3 inhibition alone ineffective for HS) already constrains any single-agent NLRP3 strategy.],
  limitation: [Entire bridge is inferential — zero direct NLRP3 measurements in ME/CFS patients, zero HS biologic trials with fatigue endpoints. Prens 2022 is cross-sectional and self-reported (single study). HS has its own pathogenic drivers (follicular occlusion, keratinocyte dysfunction, pilosebaceous microbiome) unrelated to ME/CFS. Fatigue phenotype in HS never characterised for PEM — unknown whether Type 1 (post-exertional) or Type 2 (constant cytokine-driven).],
)

#registry-entry(
  [Kinesiophobia as Shared Behavioral Phenotype Across HS, FM, and ME/CFS],
  type: "S",
  certainty: "0.35",
  evidence: [HS patients have significantly higher kinesiophobia and lower physical activity vs controls; pain intensity, fatigue severity, and depressive symptoms are independent predictors in multivariable regression @MeralKetenci2026HSKinesiophobia cert 0.60. Convergent with documented activity-avoidance patterns in FM and ME/CFS. No cross-condition TSK comparison has been performed.],
  citations: [@MeralKetenci2026HSKinesiophobia],
  mechanism: [Repeated symptom exacerbation after physical activity → learned avoidance (kinesiophobia) → deconditioning → reduced activity tolerance → further avoidance — a unified behavioural phenotype of chronic inflammatory conditions. Mediated by a shared neurobiological substrate (possibly IL-1beta/IL-6 sickness behaviour acting on anterior insula/ACC) rather than condition-specific psychology. Distinct physical triggers (skin friction in HS, diffuse pain in FM, metabolic/PEM in ME/CFS) converge on the same behavioural output.],
  chapter-ref: [ch14d: hs kinesiophobia shared phenotype],
  prediction: [TSK across HS/FM/ME/CFS cohorts: structural equation model shows configural invariance (CFI>0.95, RMSEA $<$ 0.06) for a latent "movement-avoidance" factor driven equally by pain and fatigue. Falsified if configural invariance is rejected across conditions.],
  treatment: [Graded-activity and pain-neuroscience-education interventions developed for FM could be adapted to HS and ME/CFS with minimal modification if kinesiophobia is a shared phenotype. Critical caveat: for ME/CFS patients with metabolic PEM, kinesiophobia reduction without addressing the metabolic limit could be harmful — distinguishing perceptual from metabolic avoidance is the clinical priority.],
  limitation: [Single HS study (Meral Ketenci 2026). No cross-condition TSK data. Correlation ≠ causation — fatigue-pain-depression-kinesiophobia cluster could be confounded by sleep, socioeconomic status, or diagnostic odyssey. TSK was validated in musculoskeletal pain, not inflammatory skin disease — psychometric properties in HS unknown. IL-1beta/insula→kinesiophobia link is itself inferential, never tested in any condition.],
)

#registry-entry(
  [Prodromal HS Fatigue as PEM Latency Model],
  type: "S",
  certainty: "0.30",
  evidence: [83.3% of HS patients experience prodromal symptoms 12–24+ h before visible lesions; 32% report fatigue prodrome, alongside malaise (23%), headache (11%), nausea (2%) @Ring2017HSProdrome cert 0.65. Temporal pattern parallels delayed PEM onset (12–48 h). NLRP3/IL-1beta activation in incipient follicular inflammation → systemic cytokine spillover → sickness behaviour is the proposed mechanism. Zero studies have directly compared HS prodrome time-course to ME/CFS PEM time-course.],
  citations: [@Ring2017HSProdrome],
  mechanism: [Local NLRP3/IL-1beta activation in incipient HS lesion → systemic IL-1beta/IL-6/TNF-alpha spillover → sickness behaviour (fatigue, malaise, hyperalgesia) 12–24 h before clinical lesion — temporally analogous to PEM onset latency post-exertion. If both share a common effector (cytokine→sickness-behaviour), HS provides a tractable model where the trigger is visible/accessible (skin) and serial sampling is feasible — impractical in ME/CFS where the trigger (exertion) is not localisable.],
  chapter-ref: [ch14d: hs prodrome pem latency],
  prediction: [Serial serum IL-6/TNF-alpha/IL-1beta Q4h through HS flare prodrome-to-resolution: cytokine peak temporally precedes fatigue-severity peak by ≥4 h in N-of-1 responder analyses. PEM-like symptom latency correlates with cytokine-to-fatigue lag (r>0.5). Falsified if fatigue rises simultaneously with or before systemic cytokines.],
  treatment: [Research-stage model only. If validated, HS becomes a "fast-track" platform for testing anti-IL-1beta pre-treatment for aborting cytokine-induced fatigue — relevant to both HS and ME/CFS but with an accessible spontaneous trigger rather than requiring controlled exertion.],
  limitation: [Ring 2017 is a questionnaire study (n=72) with no serum cytokines — prodrome entirely patient-reported, no validated fatigue instrument. PEM comparison is structural analogy, not empirical. HS biopsies cannot ethically confirm incipient inflammation during prodrome — cytokine source is inferred. Intrafollicular anaerobic microbiome may drive inflammation in ways with no ME/CFS parallel.],
)


=== Clinical Trial Methodology

#registry-entry(
  [Inadequate Treatment Duration and Spectrum as a Systematic Confound in Negative Chronic Disease Trials],
  type: "H",
  certainty: "0.55",
  evidence: [Lyme retreatment RCTs (Klempner 2001) found "no benefit" to 90-day antibiotics, but enrolled pre-treated patients (mean 4.7yr, 3+ prior courses) and did not cover co-infections @Klempner2001LymeAbx. DeLong's independent biostatistical review found all 4 retreatment RCTs underpowered; Krupp 2003 and Fallon 2008 showed significant benefit @DeLong2012AbxRetreat @Krupp2003StopLD @Fallon2008LymeCeftriaxone. Borrelia forms persister/biofilm variants requiring combination therapy @Feng2019BorreliaPersister. Standard regimens miss Babesia, Bartonella co-infections @Popov2026TickCoinfection. In ME/CFS: Watt (2012) found longer valganciclovir→better response (p=0.0002) @Watt2012ValganciclovirResponse; Fluge (2015) 23-week mean response lag @Fluge2015RituximabPhase2; Strayer (2020) treatment window at 2–8yr @Strayer2020RintatolimodDuration.],
  citations: [@Klempner2001LymeAbx @DeLong2012AbxRetreat @Krupp2003StopLD @Fallon2008LymeCeftriaxone @Feng2019BorreliaPersister @Popov2026TickCoinfection @Watt2012ValganciclovirResponse @Fluge2015RituximabPhase2 @Strayer2020RintatolimodDuration @Fluge2019RituximabPhase3 @Cameron2006Generalizability],
  mechanism: [Three-part framework for interrogating negative trials: (1) duration — was treatment long enough for chronic pathway normalization (not just acute intervention)? (2) spectrum — did coverage include co-morbid mechanisms (co-pathogens, co-morbid pathways)? (3) window — were patients treated within the disease-duration treatment window (before irreversible pathology)? The Lyme paradigm shows that all three factors can conspire to produce false-negative trial conclusions. Does NOT assert that all negative trials are false negatives — the definitive RituxME Phase III (Fluge 2019) was genuinely negative despite 12-month duration.],
  chapter-ref: [ch31: lyme paradigm],
  prediction: [An ME/CFS antiviral trial testing 12+ months of ganciclovir derivatives in HHV-6/EBV co-infected patients within 2–8 years illness duration will show higher response rates than trials testing shorter courses in unstratified populations. Falsified if extended-duration combination antiviral trials in virus-selected ME/CFS patients show no benefit over placebo.],
  treatment: [Not a treatment recommendation — a methodological framework for trial design. Implies that negative trial results should not be cited as evidence that a mechanism is irrelevant without first checking whether duration, spectrum, and treatment window confounded the outcome.],
  limitation: [No prospective ME/CFS trial has tested extended-duration vs standard-duration head-to-head. Framework derived from cross-disease evidence (Lyme). Rituximab Phase III counterexample shows duration is not a universal explanation. High-certainty for Lyme; hypothesis-generating for ME/CFS.],
)


#registry-entry(
  [Caveats to the Duration Critique: Selection Bias, Placebo Response, and Natural Recovery as Alternative Confounds],
  type: "OQ",
  certainty: "n/a",
  evidence: [The duration critique has significant limitations @Cameron2006Generalizability @Fluge2019RituximabPhase3 @["Smith2015ME/CFSTxSysRev"] @Watt2012ValganciclovirResponse @Horowitz2020DapsoneLyme. Selection bias toward pre-treated refractory patients may explain Klempner's negative result better than treatment duration. Placebo response rates exceed 30% in blinded ME/CFS trials. Natural recovery (5–10%/year) can contaminate extended-duration trial results. Watt 2012's duration-response finding is retrospective (confounding by indication). The three-part framework (duration × spectrum × window) may be unfalsifiable in practice because factors cannot be independently tested. Origin: brainstorm.],
  citations: [@Cameron2006Generalizability @Fluge2019RituximabPhase3 @["Smith2015ME/CFSTxSysRev"] @Watt2012ValganciclovirResponse @Horowitz2020DapsoneLyme],
  mechanism: [Five independent confounds that could produce positive signals in extended-duration trials without genuine treatment efficacy: (1) selection-bias enrollment of refractory patients → 'negative' trial is really a population effect not a treatment effect; (2) placebo-response maintenance in blinded trials; (3) natural recovery contamination; (4) retrospective confounding by indication (responders kept on drug longer); (5) unfalsifiability of the multi-factor framework.],
  chapter-ref: [ch31: duration caveats],
  prediction: [Head-to-head duration-randomized RCT (6mo vs 12mo valganciclovir) will show the duration effect is present (treatment × time interaction p < 0.05) but its magnitude is ≤30% of what retrospective studies suggest, after controlling for placebo, natural recovery, and selection bias.],
  treatment: [N/A — methodological critique. Affects interpretation of existing trial results, not clinical recommendations.],
  limitation: [Synthesizes evidence from multiple studies at different certainty levels. No prospective data directly tests the alternative confounds in ME/CFS. The caveats similarly rest on indirect evidence and may themselves overestimate the importance of alternative explanations.],
)


#registry-entry(
  [Priority Research Directions to Test the Duration Critique in ME/CFS],
  type: "OQ",
  certainty: "n/a",
  evidence: [Four research programs derived from the duration criticism framework and the Lyme→ME/CFS analogy. (1) DeLong-style biostatistical reanalysis of all 35 ME/CFS treatment trials @["Smith2015ME/CFSTxSysRev"] @DeLong2012AbxRetreat. (2) Head-to-head 6mo vs 12mo valganciclovir RCT @Montoya2013valganciclovir @Watt2012ValganciclovirResponse. (3) Prospective illness-duration-stratified trial testing the 2–8yr treatment window @Strayer2020RintatolimodDuration. (4) Adaptive platform trial with duration escalation based on interim response. Origin: brainstorm.],
  citations: [@["Smith2015ME/CFSTxSysRev"] @DeLong2012AbxRetreat @Montoya2013valganciclovir @Watt2012ValganciclovirResponse @Strayer2020RintatolimodDuration],
  mechanism: [Each direction directly tests one component of the duration critique without relying on the Lyme analogy. The DeLong-style reanalysis quantifies how many ME/CFS "negative" trials were structurally underpowered. The head-to-head duration RCT isolates the duration variable. The stratified trial prospectively tests the treatment-window hypothesis. The adaptive platform maps the dose-duration-response curve.],
  chapter-ref: [ch31: duration critique research],
  prediction: [The DeLong-style reanalysis will find $>=$ 60% of ME/CFS treatment trials lacked adequate power for clinically meaningful effects. The 12-month valganciclovir arm will outperform the 6-month arm with a moderate effect size (Cohen's d 0.3--0.5). The 3--8 year stratum will show the highest response rate, statistically distinguishable from less than 3 and more than 8 year strata.],
  treatment: [Indirectly: positive results would support longer treatment durations in clinical practice for virus-selected patients within the treatment window. Currently, all four research programs are hypothetical — no prospective duration-randomized data exist.],
  limitation: [None of the proposed studies have been conducted. The DeLong-style reanalysis relies on published (potentially selectively reported) data. The RCT designs are hypothetical and may prove infeasible due to cost, recruitment, or toxicity concerns with extended valganciclovir (myelotoxicity). Origin: brainstorm.],
)
=== Pharmacodiagnostic Matrix

#table(
  columns: (1fr, 2fr, 1fr),
  [*ID / Label*], [*Details*], [*Phase / Cert*],

  [sec pharmacodiagnostic-matrix], [Pharmacodiagnostic matrix: formal multi-drug diagnostic inference — every medication cross-indexed against every mechanistic hypothesis, using constraint-satisfaction scoring to localize bottlenecks from multi-drug response patterns. Extends the extended diagnostic algorithm (@sec:synthesis-algorithm-extended) from sequential probing to formal matrix-based inference. Methodological precedents: diagnosis ex juvantibus (Laragh 1988), N-of-1 Bayesian inference (Samuel 2019/2023), response-based stratified treatment (Zhang 2022), computational phenotyping (Strauss 2021), active learning diagnostic decision trees (Ravichandran 2024). Origin: methodology proposal.],[Phase 1 / 0.30],

  [sec pharmacodiagnostic-matrix, parameter stability], [Test-retest reliability of drug-response-derived pharmacodiagnostic scores is unknown. Computational phenotyping literature (Schaaf 2024) demonstrates ICC 0.01–0.71 for RL model parameters. Within-patient variability (placebo, fluctuation, regression to mean) may similarly degrade pharmacodiagnostic parameter stability. Research needed before clinical deployment. Origin: methodology integration.],[Phase 2 / n/a],

  [sec pharmacodiagnostic-matrix, labeling bias], [Matrix cell assignment (expected response direction) requires clinician judgment. Ravichandran 2024 demonstrated that clinician heuristics degrade diagnostic inference below random. Independent double-labeling + inter-rater reliability measurement needed before clinical deployment. Origin: methodology integration.],[Phase 2 / n/a],

  [sec pharmacodiagnostic-matrix, validation cohort], [Validation: apply matrix retrospectively to patients with known mechanism (GPCR AAb confirmed, TRPM3 validated). Verify matrix places highest probability on correct mechanism. Validate against Scheibenbogen's IA cohort, Stanford/System's iCPET cohort, NIH ME/CFS study medication histories. Feasible within 6 months — no new trials required. Origin: methodology proposal.],[Phase 2 / n/a],
)


=== Stigmatisation and Nomenclature

#registry-entry(
  [Perceived Stigma Mediates Worse Functional Outcomes in ME/CFS via Causal Attribution Pathway],
  type: "H",
  certainty: "0.50",
  evidence: [Froehlich 2022 (n=499 self-diagnosed ME/CFS): perceived stigma mediates relationship between negative causal attributions (controllable/unstable causes) and lower satisfaction with social roles + functional status. Looper 2004 (n=203): perceived stigma in FSS independently associated with worse health outcomes vs medically explained conditions, with ME/CFS among the most affected. Ko 2022 systematic review: stigma in FSS consistently associated with worse health outcomes — depression, lower QOL, higher symptom burden. @Froehlich2022CausalStigma @Looper2004PerceivedStigmaFSS @Ko2022StigmaFSSReview],
  citations: [@Froehlich2022CausalStigma @Looper2004PerceivedStigmaFSS @Ko2022StigmaFSSReview],
  mechanism: [Negative causal attributions (psychosomatic framing, controllable/unstable cause beliefs) → perceived stigma → reduced social role satisfaction + lower functional status + diminished health-related QOL. Stigma is not merely a psychosocial burden — it is an independent mediator of worse disease trajectories. Causal attributions by clinicians, family, and the public shape patient outcomes through stigma pathway.],
  chapter-ref: [ch01: psychosocial],
  prediction: [Longitudinal study demonstrating that reduction in perceived stigma (via clinician validation or biomedical diagnosis) predicts improvement in functional status and social role satisfaction at 12-month follow-up. Falsified if changes in perceived stigma are not associated with changes in functional outcomes over time.],
  treatment: [Clinician validation + biomedical education may serve as therapeutic interventions by reducing perceived stigma. No clinical recommendation for formal stigma-targeted therapy without controlled trial data.],
  limitation: [Cross-sectional design — mediation pathway inferred, not demonstrated longitudinally. Self-diagnosed samples may overrepresent high-stigma patients. FSS stigma review primarily cross-sectional studies.],
)

#registry-entry(
  [Illness Name ("Chronic Fatigue Syndrome") Is an Independent Vector of Stigma],
  type: "H",
  certainty: "0.45",
  evidence: [Jason 2002 (n=143): experimental vignette study — "chronic fatigue syndrome" label generated significantly more negative attributions (lazy, less responsible, less likely to recover) than "myalgic encephalopathy." IOM 2015 report proposed renaming to SEID specifically to reduce stigmatising effects. @Jason2002IllnessName @IOM2015],
  citations: [@Jason2002IllnessName @IOM2015],
  mechanism: [The illness name "chronic fatigue syndrome" trivialises the condition — it emphasises a universal human experience (fatigue) while omitting PEM, the hallmark symptom. The name activates stereotypes of laziness/malingering, reducing clinician seriousness, social support, and patient self-perception. Name-based stigma is a modifiable structural determinant of healthcare interactions.],
  chapter-ref: [ch33: nomenclature controversy],
  prediction: [Randomised experiment: clinicians presented with identical clinical vignettes but different diagnostic labels show measurable differences in treatment recommendations (biomedical investigation vs psychosocial referral), seriousness ratings, and empathy scores. "Myalgic encephalomyelitis" should elicit more biomedical investigation and higher seriousness ratings than "CFS." Falsified if diagnostic label has no effect on clinician behaviour.],
  treatment: [Adopting less stigmatising nomenclature (ME, myalgic encephalomyelitis, SEID) may reduce clinical dismissal and improve diagnostic legitimacy. No clinical recommendation — this is a policy/advocacy issue.],
  limitation: [Single experimental vignette study (n=143) — partial replication only. Vignette studies may not fully capture real-world clinical behaviour. Name change alone cannot overcome decades of ingrained attitudes.],
)

#registry-entry(
  [ME/CFS Stigma Constitutes Comparable or Higher Burden than Other Functional Somatic Syndromes],
  type: "H",
  certainty: "0.45",
  evidence: [Looper 2004 (n=203): ME/CFS perceived stigma comparable to or higher than other FSS, substantially higher than medically explained conditions. Ko 2022 systematic review: stigma in FSS systematically associated with worse health outcomes; ME/CFS among most affected conditions in the FSS category. @Looper2004PerceivedStigmaFSS @Ko2022StigmaFSSReview],
  citations: [@Looper2004PerceivedStigmaFSS @Ko2022StigmaFSSReview],
  mechanism: [Conditions without visible signs or validated biomarkers attract greater delegitimisation irrespective of biological basis. ME/CFS sits at the extreme of this spectrum: contested nosology + psychiatric framing + invisible symptoms + fatigue-focused name → maximal delegitimisation. The pattern is structural — it tracks illness legitimacy perception, not disease severity.],
  chapter-ref: [ch01: psychosocial],
  prediction: [Head-to-head comparison of perceived stigma, healthcare dismissal experiences, and public attitudes across ME/CFS, IBS, fibromyalgia, and medically explained conditions (RA, MS) should show ME/CFS at the extreme of the delegitimisation spectrum. Falsified if ME/CFS shows comparable stigma to RA or MS.],
  treatment: [De-stigmatisation strategies developed for other contested illnesses (MS historical trajectory, peptic ulcer/H. pylori paradigm shift) may be applicable to ME/CFS. Policy/advocacy implications.],
  limitation: [Only one head-to-head comparison study (Looper 2004). Systematic review aggregates across heterogeneous stigma measures. Public attitudes may have evolved since 2004.],
)

#registry-entry(
  [Biomedical Validation as Anti-Stigma Intervention with Measurable Clinical Benefit],
  type: "P",
  certainty: "0.35",
  evidence: [Qualitative evidence consistently shows that receiving a biomedical diagnosis and validation from a knowledgeable clinician is the most powerful anti-stigma intervention reported by patients (Guise 2010, Melby 2024, Asbring 2002). Terman 2020 validated stigma scale has not been tested as a clinical outcome measure. @Guise2010DiscourseDoctors @Melby2024HealthcareDissatisfaction @Asbring2002WomensStigma @Terman2020StigmaScale],
  citations: [@Guise2010DiscourseDoctors @Melby2024HealthcareDissatisfaction @Terman2020StigmaScale],
  mechanism: [Biomedical diagnosis + clinician validation → reduced perceived stigma → improved treatment engagement, reduced distress, potential biological benefit via stress pathway attenuation. Stigma reduction may be a measurable clinical outcome rather than merely a process variable.],
  chapter-ref: [ch01: psychosocial],
  prediction: [Pre/post study: administer Terman 2020 ME/CFS Stigma Scale at first specialist ME/CFS clinic appointment and at 3-month follow-up after biomedical diagnosis and education. Stigma scores should decrease ≥1 SD. Reduction should correlate with improved treatment adherence and QOL. Concurrent biomarker measurements (CRP, IL-6, morning cortisol) should show improvement trajectory paralleling stigma reduction. Falsified if stigma scores do not change after biomedical diagnosis and education.],
  treatment: [ME/CFS-specialised clinical services with biomedical emphasis may provide measurable clinical benefit beyond diagnosis alone through stigma reduction. No specific anti-stigma intervention protocol validated.],
  limitation: [Qualitative evidence only — no pre/post stigma measurement study exists. Stigma scale not validated as outcome measure. Service context effects — specialist clinic patients may differ from community patients. Regression to the mean possible.],
)

#registry-entry(
  [Healthcare Dismissal as Chronic Stressor Accelerating Disease Progression],
  type: "S",
  certainty: "0.30",
  evidence: [Qualitative evidence spanning 25 years (1999–2024): healthcare dismissal — being disbelieved, trivialised, or labelled as psychiatric — is the most consistent finding across qualitative ME/CFS research. Stigma operates as a chronic psychosocial stressor; chronic stress is a known accelerator of inflammatory, metabolic, and neurodegenerative processes. McManimen 2018: unsupportive social interactions independently predict suicidal ideation after controlling for depression (n=495). @Asbring2002WomensStigma @Guise2010DiscourseDoctors @Melby2024HealthcareDissatisfaction @Deale2001PerceptionsCare @McManimen2018UnsupportiveStigma],
  citations: [@McManimen2018UnsupportiveStigma @Guise2010DiscourseDoctors @Melby2024HealthcareDissatisfaction],
  mechanism: [Healthcare dismissal → chronic psychosocial stress → HPA axis dysregulation, sympathetic overactivity, increased inflammatory signalling → worsened disease trajectory. Stress-induced glucocorticoid resistance in immune cells → unresolved inflammation → amplification of existing ME/CFS pathophysiology (mitochondrial, autonomic, immune). Stigma → stress → biological amplification — not merely psychological suffering.],
  chapter-ref: [ch01: psychosocial],
  prediction: [ME/CFS patients who report high healthcare dismissal should show elevated inflammatory markers (CRP, IL-6) and flattened cortisol diurnal slope vs those reporting low dismissal, after controlling for disease severity. Reduction in experienced dismissal (following change to validating clinician) should be associated with reduction in inflammatory markers at 6-month follow-up. Falsified if no association exists between dismissal and inflammatory markers.],
  treatment: [Clinician training in validation and trauma-informed care may have biological as well as psychological benefits — not merely "improving patient satisfaction." No clinical recommendation beyond standard trauma-informed and validation approaches.],
  limitation: [Entirely inferred — no study has directly measured the biological (neuroendocrine/immune) effects of healthcare dismissal in ME/CFS patients. Qualitative evidence establishes prevalence and distress; biological mechanism remains hypothetical. Confounding by disease severity is possible (more severe patients both elicit more dismissal AND have worse inflammatory profiles).],
)

#registry-entry(
  [Media Framing Amplifies ME/CFS Stigma in Healthcare Encounters],
  type: "S",
  certainty: "0.30",
  evidence: [Knudsen 2011 (n=280 UK newspaper articles): 70% emphasised psychological/behavioural characterisations. Media psychiatric framing reinforces public perception of the disease as non-serious or self-inflicted. Patients report media coverage directly harming their social and healthcare interactions. @Knudsen2011MediaStigma],
  citations: [@Knudsen2011MediaStigma],
  mechanism: [Media coverage→public perception of ME/CFS as psychological/behavioural→social disbelief + clinician scepticism→patient experiences dismissal in medical encounters→amplified perceived stigma→worse health outcomes. Media is an upstream structural determinant of stigmatising healthcare interactions.],
  chapter-ref: [ch01: psychosocial],
  prediction: [Temporal analysis: periods of increased psychiatric framing in media should be followed (within 3-6 months) by measurable increases in perceived stigma in clinical cohorts and online patient communities. Positive shift: after major biomedical discovery coverage, patient-reported dismissal should transiently decrease. Falsified if no temporal association between media framing and patient stigma reports.],
  treatment: [Strategic science communication — active media engagement by biomedical researchers to counter psychiatric framing narratives. Policy/media recommendation, not clinical intervention.],
  limitation: [Single content analysis (2011 UK only) — media landscape has changed substantially. Causal direction unclear — media may reflect rather than shape public attitudes. Social media, not just traditional press, now dominates information environment.],
)

#registry-entry(
  [Psychiatric Embedding in CFS Services Generates Structural Stigma],
  type: "S",
  certainty: "0.25",
  evidence: [Terman 2019 (n=336): mandatory or structurally embedded psychiatric referral in CFS services perceived by patients as delegitimising. This effect is pronounced in health systems where psychiatry gatekeeps CFS services (historically UK NICE pre-2021 model). Hussein 2024 scoping review (14 sources): lack of diagnostic pathways, contested nosology, insufficient clinician education, and absence of specialised services create structural stigma beyond individual clinician bias. @Terman2019PsychiatricReferrals @Hussein2024HealthcareBarriers],
  citations: [@Terman2019PsychiatricReferrals @Hussein2024HealthcareBarriers @Bayliss2014BarriersPrimaryCare],
  mechanism: [When psychiatry gatekeeps access to CFS services, the system structurally communicates that the condition is psychological — regardless of individual clinician intentions. Structural stigma operates through service design (psychiatric intake, CBT/GET as default treatments, absence of biomedical workup) rather than individual attitudes. Patients internalise this framing, reducing treatment engagement and hope.],
  chapter-ref: [ch33: nomenclature section],
  prediction: [Comparison of patient outcomes (diagnostic confidence, treatment engagement, satisfaction, perceived stigma) in health systems with psychiatry-gatekept CFS services vs biomedically-led services (e.g., Norway biomedical clinics, post-2021 UK NICE). Psychiatry-gatekept systems should show higher perceived stigma and lower treatment engagement. Falsified if no difference in perceived stigma between service models.],
  treatment: [Separation of ME/CFS from mental health services — biomedical clinical pathways with psychiatry as optional consultation, not gatekeeping. Policy recommendation, not clinical guideline.],
  limitation: [Single cross-sectional study (n=336). Causal direction unclear — patients with higher pre-existing stigma may be more likely to perceive structural delegitimisation. System comparison observational only — no randomised service model studies exist.],
)

#registry-entry(
  [Child and Adolescent ME/CFS Stigma Understudied and Potentially Amplified by Educational Settings],
  type: "OQ",
  certainty: "n/a",
  evidence: [Parslow 2017: systematic review of qualitative child ME/CFS studies finds stigma as recurring theme — from teachers, peers, and healthcare providers. Children face unique stigmatisation risks: educational consequences (school refusal accusations, grade loss), dependency on adults for care access, limited agency in healthcare encounters. No dedicated child/adolescent ME/CFS stigma study exists. Parslow et al., 2017 qualitative systematic review identifies stigma as recurring theme in child ME/CFS studies — teachers, peers, healthcare providers.],
  citations: [—],
  mechanism: [Children with ME/CFS are triply vulnerable: invisible illness + developmental stage (perceived as malingering/coping avoidance) + dependency on adults who may disbelieve them. Stigma in educational settings — teachers and school administrators dismissing illness as avoidance — may compound health-related stigma, causing educational harm independent of physical illness burden.],
  chapter-ref: [ch01: psychosocial],
  prediction: [Adapt the Terman 2020 stigma scale for paediatric populations and administer to adolescent ME/CFS patients + age-matched controls with T1DM (visible/manageable chronic illness) and juvenile arthritis (medically legitimised). ME/CFS adolescents should show highest stigma scores. Educational outcomes (grades, attendance, attainment) should correlate inversely with stigma in ME/CFS but not in comparison groups. Falsified if ME/CFS adolescents show stigma levels comparable to T1DM controls.],
  treatment: [Paediatric-specific anti-stigma interventions: school-based education, teacher training, formal educational support plans that acknowledge illness legitimacy. No clinical recommendation — research gap first.],
  limitation: [No direct paediatric stigma data. Paediatric stigma scale not developed. Parslow 2017 focuses on experiences broadly, not stigma specifically.],
)


=== Economic Impact

#table(
  columns: (1fr, 2fr, 1fr),
  [*ID / Label*], [*Details*], [*Phase / Cert*],

  [ach:iom-benchmark], [IOM 2015 established baseline: 836,000--2.5M Americans affected; USD 17--24B annual economic cost; USD 18,000--29,000 per patient per year; indirect costs ~2/3 of total. Modeled extrapolation from prevalence surveys, not direct cost measurement. IOM + Clayton 2015 share same evidence base — treated as one source.],[Phase 3 / 0.77],

  [ach:australian-costs], [Two independent Australian cost-of-illness studies converge on AU\$14.5B annual (Zhao 2023 n=128, AU\$28,800/patient) and AU\$14,523/patient mean annual cost (Close 2020 n=485, 73% indirect costs, 16.6% employed). Cross-national replication of IOM magnitude.],[Phase 3 / 0.70],

  [ach:kce-belgium], [KCE Belgian HTA needs assessment (Cornelis 2026, n=749): mean 8.6yr work invalidity; 73.2% ≥1 comorbidity; 50% >2yr diagnostic delay. Government HTA body formally evaluating ME/CFS signals institutional recognition.],[Phase 3 / 0.68],

  [ach:employment-gap], [Employment rates 16.6--27% across studies vs 60--84% general population. >75% unable to work (Podell 2020). NZ administrative data (Bowden 2026, n=1,902): 18.3% employed vs 83.8% general population. Spanish cohort (Castro-Marrero 2019): 52.3% unemployed, 45.3% on sick leave. Multiple countries, consistent direction.],[Phase 3 / 0.75],

  [oq:employment-retention], [No study has tested workplace accommodations, flexible scheduling, remote work, or phased return-to-work programs for ME/CFS. Intervention question well-defined and testable; no funding body has prioritized it.],[Phase 3 / 0.55],

  [ach:caregiver-burden], [Brittain 2021 (n=68 patients + 118 family members, FROM-16 tool): 87% family moderate/severe quality-of-life impact; 50.2% family-income reduction. No standalone monetary caregiver valuation exists. Informal care included in Australian cost-of-illness indirect-cost estimates.],[Phase 3 / 0.55],

  [ach:burden-funding-ratio], [Mirin 2020: ME/CFS burden:funding ratio ~1,000:1 (USD 17--24B cost vs USD 15M NIH funding). MS comparator ~30:1 (USD 39,000--68,000/patient vs USD 115M); RA comparator ~32:1 (USD 12,000--21,000/patient vs USD 86M). Three-order-of-magnitude gap. Funding figures public NIH data and verifiable.],[Phase 3 / 0.65],

  [lim:no-roi], [No formal return-on-investment analysis for ME/CFS research funding. Burden:funding ratio is descriptive, not causal. Cochrane 2021 systematic review confirmed zero cost-effectiveness studies for any ME/CFS intervention. This limitation is itself a consequence of the underfunding it critiques.],[Phase 3 / n/a],

  [lim:no-cea], [Cochrane 2021: six pre-2021 economic evaluations, all CBT/GET-based, none based on modern non-GET care models. After NICE 2021 GET reversal, pre-2021 CEA evidence is not just thin — its clinical basis is obsolete. Wan 2024 bibliometric analysis confirms tiny, fragmented field.],[Phase 3 / n/a],

  [spec:structural-neglect], [ME/CFS comparable to MS/RA on severity, prevalence, and economic burden but receives 7--13% of their per-DALY research funding. Gap too large to be explained by any single factor — likely self-reinforcing cycle: low funding → few researchers → slow progress → perceived intractable → continued low funding. Testable: dedicated research program with evaluation component.],[Phase 3 / 0.35],

  [oq:missing-evidence], [Five identified gaps: (1) no US claims-data cost study; (2) no longitudinal lifetime-cost study; (3) no cost-effectiveness of diagnostic pathway; (4) no caregiver monetary valuation; (5) no developing-country data. All feasibly addressable with existing methods; gaps confirmed by systematic review (Cochrane 2021, Wan 2024).],[Phase 3 / 0.60],

  [syn:economic-impact-model], [Cross-country synthesis: USD 18,000--29,000/patient/year; employment ~20% vs ~80% general; caregiver 50% income reduction; 1,000:1 burden:funding ratio; 30--40x worse than MS/RA. Strongest supported conclusion: current funding level unjustifiable on any cost-effectiveness principle. Policy change requires demonstrating current funding is indefensible, not computing optimal level.],[Phase 3 / 0.65],
)


=== Global Perspectives on ME/CFS

#table(
  columns: (1fr, 2fr, 1fr),
  [*ID / Label*], [*Details*], [*Phase / Cert*],

  [ach:postinfectious-burden-geographic], [Post-infectious fatigue follows infectious disease burden geographically. Dengue (endemic in 100+ countries, predominantly LMICs) produces chronic fatigue comparable to post-EBV CFS (Condé 2026, first SR). Chikungunya: 38% chronic fatigue at 30mo (Duvignaud 2018). Post-epidemic sequelae documented across history (Miller 2026). The countries with the most triggering infections have the least ME/CFS diagnostic infrastructure. Global ME/CFS research studies only the fraction of post-infectious fatigue cases occurring in places where ME/CFS is diagnosed — a geographic selection bias of unknown magnitude.],[Phase 3 / 0.55],

  [spec:lmic-fatigue-blind-spot], [Hypothesis: If post-infectious ME/CFS occurs at comparable rates across all triggering infections, LMICs with highest infectious-disease burden should have highest ME/CFS prevalence — but they report the lowest because they have least diagnostic infrastructure. Single data point: Iran post-COVID CFS 17.5% (Simani 2021). No replication from other LMICs.],[Phase 3 / 0.35],

  [ach:neurasthenia-cultural-idiom], [Cross-cultural evidence (Ware & Kleinman 1992, Lee 1998, Starcevic 1999): neurasthenia in China and CFS in the US are different cultural idioms for overlapping fatigue syndromes. Shenjing shuairuo persists as culturally acceptable idiom in Chinese society. ME/CFS prevalence estimates using Western diagnostic criteria may produce artefactually low prevalence in non-Western settings — core finding conceptually replicated; inference untested.],[Phase 3 / 0.40],

  [oq:cultural-idioms-beyond-east-asia], [Neurasthenia/CFS literature covers China and East Asia. No empirical cross-cultural ME/CFS studies from South Asia (kamzori, vata imbalance), Sub-Saharan Africa (post-malaria fatigue, "thinking too much"), or Latin America. Culturally validated ME/CFS screening tools do not exist for non-Western settings.],[Phase 3 / n/a],

  [ach:clinical-diagnosis-without-testing], [IOM/CCC criteria require exclusion of alternative diagnoses via laboratory testing. In LMICs without reliable TSH, CBC, ferritin, CRP, or ANA testing, the diagnostic algorithm cannot be executed as written. Bangladesh RCT protocol (Sarker 2024) applies Fukuda criteria pragmatically. ICD codes exist globally; the diagnostic pathway that justifies assigning them does not.],[Phase 3 / 0.50],

  [ach:icd-coding-disability-gap], [ME/CFS coded as G93.3 (ICD-10), 8E49 (ICD-11). ICD coding exists globally, but disability recognition requires national systems that operationalise the code. In LMICs where disability insurance is weak or absent, ICD coding confers no practical benefit. Policy wins at the global level do not translate to protection at the local level without national adoption.],[Phase 3 / 0.50],

  [spec:tcm-herbal], [TCM herbal formulations show signal for fatigue reduction in 23 RCTs (n=1,776), but all low quality — small samples, high risk of bias, heterogeneous interventions (Wang 2014). Evidence insufficient for specific formulation recommendation.],[Phase 3 / 0.50],

  [spec:tcm-mind-body], [Tai Chi, Qigong, Baduanjin show moderate effect on fatigue with no SAEs (Kong 2023 SR/MA). Accessible in LMIC settings where these practices are culturally embedded and low-cost. Generalisability to non-Chinese populations uncertain. PEM risk unstudied in these protocols — severe/very severe patients unlikely to tolerate.],[Phase 3 / 0.50],

  [spec:acupuncture-moxibustion], [Acupuncture/moxibustion show small-to-moderate effect in 31 RCTs (Wang 2017 NMA). Widely available across East Asia and Indian AYUSH integration. Low-risk symptom-management option; not disease-modifying. Blinding limitations inherent to acupuncture RCTs.],[Phase 3 / 0.50],

  [lim:tcm-evidence-fractional], [Traditional medicine evidence base for ME/CFS is almost entirely TCM. Systematic reviews of Ayurveda, Siddha, Unani, and African traditional medicine for chronic fatigue are absent from PubMed. Cannot generalise from TCM to other traditional medicine systems.],[Phase 3 / n/a],

  [ach:neglected-disease-framing], [ME/CFS satisfies criteria for a neglected disease (Arron 2024): severe morbidity (EQ-5D ~0.40–0.55, worse than MS/stroke), mechanisms understudied, research concentrated in high-income countries. No WHO global ME/CFS initiative exists. No ME/CFS disability weight in GBD. National Academies IACI workshop (2024) identified cross-disease mechanisms but lacked LMIC representation.],[Phase 3 / 0.55],

  [oq:global-surveillance], [No international surveillance system tracks post-infectious fatigue following dengue/chikungunya/COVID-19 outbreaks in LMICs. Bangladesh RCT protocol (Sarker 2024) provides small-scale model. Until a surveillance system exists, every assertion about global ME/CFS prevalence is an extrapolation.],[Phase 3 / n/a],

  [lim:unfalsifiability-trap], [The hidden-burden thesis has unrestricted auxiliary hypotheses to absorb falsification — any null finding can be attributed to cultural inappropriateness of criteria, unavailable exclusionary workup, or wrong triggering infection. A non-falsifiable claim should carry lower certainty than structural plausibility alone warrants. The chapter must specify what evidence would change its mind. Origin: brainstorm Phase 4, categories 10 and 12.],[Phase 5 / n/a],

  [oq:falsifying-hidden-burden-thesis], [Three categories of evidence would weaken/refute the hidden-burden thesis: (1) differential pathogen profiles — if post-infectious ME/CFS conversion rates vary by order of magnitude across triggering infections; (2) protective factors — helminth immune modulation, early-life immune training, younger population structure; (3) competing mortality — susceptible patients die of acute infection in LMICs. All counterarguments and the thesis they challenge rest on inference from the same absence of data. Origin: brainstorm Phase 4, categories 10 and 11.],[Phase 5 / 0.20],

  [spec:icd11-empty-vessel], [ICD-11 8E49 is globally available — but the implementation pathway (national HIT adoption, physician training, diagnostic algorithms, disability systems, clinical guidelines) requires conditions absent from most LMICs. The code may produce zero measurable change in diagnosis rates where none of the 5 implementation conditions hold. Origin: brainstorm Phase 4, category 1.],[Phase 5 / 0.40],

  [spec:sentinel-pem-surveillance], [Lowest-cost highest-value research action: add PEM-screening module (DSQ-PEM, 1-min sit-to-stand) to existing post-dengue/chikungunya/Zika cohort follow-ups in Brazil, India, Vietnam, Thailand. USD 150--300K, 5 sentinel sites, no lab infrastructure needed. Would generate first post-arboviral ME/CFS prevalence estimates. Origin: brainstorm Phase 4, category 2.],[Phase 5 / 0.40],

  [oq:culturally-adapted-pem-tool], [PEM screening translated into Hindi, Bengali, Swahili cannot just translate "do you feel worse after exertion?" — must culturally calibrate exertion concepts, rest/work boundaries, and fatigue idioms. Cognitive interview methodology standard; gold-standard circularity problem: need culturally adapted criteria to identify patients to validate the tool. Origin: brainstorm Phase 4, category 2.],[Phase 5 / 0.35],
)


=== History of ME/CFS

#table(
  columns: (1fr, 2fr, 1fr),
  [*ID / Label*], [*Details*], [*Phase / Cert*],

  [fhyp:psychosomatic-lag], [When an illness cluster appears with consistent clinical phenotype, negative standard laboratory tests, female predominance, and absence of mortality, the default medical response is psychosomatic attribution. Documented across >5 diseases: ME/CFS (45 years McEvedy→IOM), MS (>100 years Charcot→MRI), fibromyalgia (~20 years), Gulf War Illness (19 years), Long COVID (~18 months). Compression trend observable. Mechanism: medicine's evidentiary hierarchy privileges positive lab findings over clinical phenomenology. Predicts next unexplained cluster will follow same trajectory within 10 years. Origin: brainstorm.],[Phase 5 / 0.65],

  [oq:institutional-incentives-over-evidence], [McEvedy 1970 mass hysteria hypothesis was empirically weak but dominated clinical teaching for 40 years — was this driven by evidence quality or institutional incentives (reduced disability claims, psychiatric department jurisdictional expansion, confirmation bias under McEvedy's logic)? Falsifiable via analysis of disability claim denial rates, psychiatric department funding, and guideline change timing across diseases. If evidence quality is primary driver, the hypothesis is disproven. Origin: brainstorm — null hypothesis assessment.],[Phase 5 / 0.70],

  [lim:retrospective-outbreak-diagnosis], [Pre-1988 outbreak reports (Gilliam 1938, Royal Free 1957, Acheson 1959) cannot be validated against modern diagnostic criteria — no archival samples exist. Retrospective diagnostic assignment is inductive. Alternative: multiple distinct post-infectious syndromes with similar clinical description. Origin: brainstorm — evidence quality.],[Phase 5 / 0.55],

  [lim:evidence-quality-outbreak-sources], [Foundational ME/CFS documents are non-peer-reviewed field investigation reports and case series, not modern peer-reviewed studies. DecodeME 2025 is a preprint. Core institutional events (IOM 2015, NICE 2021) are higher-certainty. Origin: brainstorm — evidence quality.],[Phase 5 / n/a],

  [lim:narrative-arc-confirmation-bias], [Chapter's psychosomatic-to-biological arc is one defensible reading, not the only reading. A skeptic could organize the same events differently: provisional psychiatric explanation → continued negative biological investigation → patient advocacy pressured institutions → guidelines reversed → tentative biological signals. Transparency about interpretive choice. Origin: brainstorm — evidence quality.],[Phase 5 / n/a],

  [lim:asymmetrical-methodological-scrutiny], [Chapter applies detailed criticism to PACE trial (n=641, Lancet) but less scrutiny to biological evidence: Walitt 2024 (n=17, small), DecodeME 2025 (preprint). Asymmetry defensible because PACE shaped clinical guidelines affecting hundreds of thousands, but should be acknowledged. Origin: brainstorm — evidence quality.],[Phase 5 / n/a],

  [lim:history-not-therapeutic], [Historical knowledge does not reduce PEM, improve sleep, or restore function. Chapter value is epistemic (understanding how medicine arrived here) and strategic (recognizing patterns), not therapeutic. Inclusion justified by document scope, not immediate patient benefit. Origin: brainstorm — self-critique.],[Phase 5 / n/a],

)


=== Subjective-Measurable Discrepancy Index

#table(
  columns: (1fr, 2fr, 1fr),
  [*ID / Label*], [*Details*], [*Phase / Cert*],

  [ach:subjective-measurable-discrepancy-domains], [The subjective-measurable discrepancy — patients report severe symptoms that standard clinical tests fail to capture or contradict — is a replicated, multi-domain, diagnosis-independent finding documented across sleep (Watson2003, Watson2004, Armitage2009 — MZ twin-controlled), autonomic (Novak2024 — n=2627, zero subjective-objective correlation), physical activity (Vergauwen2021), cognition (Teodoro2018 — 186-study review), and systemic biomarkers (Byrnes2009 — zero peripheral blood transcriptomic signal in 44 twin pairs). Seven independent research cohorts, convergent designs, zero contradictory findings. Not explained by psychiatric comorbidity, poor effort, deconditioning, or instrument invalidity. Origin: /integrate-topic subjective-measurable-discrepancy-index.],[Phase 3 / 0.75],

  [syn:subjective-measurable-discrepancy-index], [Synthesis of three non-exclusive explanations for the discrepancy: (1) provocation-dependence — abnormalities emerge only under stress, standard resting labs miss them; (2) CNS confinement — primary pathology is brainstem/hypothalamic/microglial, not reflected in peripheral blood; (3) interoceptive amplification — patients perceive real physiological signals that healthy brains filter out. Together they reframe the discrepancy from "patients report what tests can't confirm" to "patients report what standard tests can't measure." Origin: /integrate-topic subjective-measurable-discrepancy-index.],[Phase 3 / 0.75 (inherited from constituent evidence)],

  [hyp:discrepancy-index-dysautonomia-subtype], [A formal discrepancy index — subjective autonomic symptom score (COMPASS-31) ÷ objective autonomic deficit (QASAT) — may subtype patients: high discrepancy → dysautonomia-dominant (normal resting, abnormal only on provocation, autonomic-responsive); low discrepancy → immune-inflammatory (abnormal resting biomarkers, immunomodulation-responsive). Predicts treatment stratification: high-discrepancy patients respond better to midodrine/pyridostigmine; low-discrepancy patients respond better to IVIG/corticosteroids. Untested. Origin: /integrate-topic subjective-measurable-discrepancy-index.],[Phase 3 / 0.45],

  [spec:discrepancy-index-interoceptive-accuracy], [Alternative framing: the discrepancy index is a readout of interoceptive processing gain — how precisely the brain weights ascending interoceptive signals. High-discrepancy patients have high-gain interoceptive systems perceiving signals that healthy brains filter out. Reframes discrepancy as neurobiological trait, not disease classification. Predictive processing framework, testable via heartbeat detection and respiratory resistance discrimination tasks. Origin: /integrate-topic subjective-measurable-discrepancy-index.],[Phase 3 / 0.30],

  [lim:discrepancy-index-validation-gap], [The discrepancy index is a conceptual framework, not a validated clinical instrument. No standardised formula exists; no test-retest reliability, sensitivity/specificity, or clinical utility data exist. Structural issues: domain selection/weighting, provocation standardisation, severity dependency (may invert in severe patients), threshold calibration, and domain-specific convergence (HGS correlates — Paffrath2024). Should be treated as hypothesis-generating, not a clinical decision tool. Origin: /integrate-topic subjective-measurable-discrepancy-index.],[Phase 3 / n/a],

  [oq:bridging-subjective-objective-gap], [Is there any instrument that can bridge the COMPASS-31/QASAT orthogonality? Candidates: provocation-based patient-report, wearable + ecological momentary assessment, microstructural objective measures, challenge-test protocols. Null result (no instrument bridges the gap) would support CNS confinement — constructs are ontologically distinct, patient's experience integrates CNS-level information inaccessible to any peripheral instrument. Origin: /integrate-topic subjective-measurable-discrepancy-index.],[Phase 3 / n/a],

  [oq:convergence-domain-patterns], [Why do some domains show subjective-objective convergence (HGS, HRV, CBF during tilt) while others show complete divergence (PSG, MSLT, QEEG, COMPASS-31/QASAT, peripheral blood transcriptomics)? Hypotheses: provocation intensity, measurement specificity, temporal coupling. Identifying systematic patterns guides instrument design — invest in high-provocation, high-specificity, temporally-coupled measures. Origin: /integrate-topic subjective-measurable-discrepancy-index.],[Phase 3 / 0.30],

  [spec:discrepancy-trajectory-predictor], [Extrapolation from Friedberg2022 (lower HRV → nonimprovement, but patient-reported activity patterns did not discriminate): high-discrepancy patients (severe report, mild objective dysfunction) may have better prognosis than low-discrepancy patients (severe report, severe objective dysfunction). Alternatively: high discrepancy = early-stage (subjective distress precedes measurable pathology), low discrepancy = late-stage (measurable damage accumulated). If discrepancy predicts trajectory, index becomes treatment-allocation decision tool. Origin: /integrate-topic subjective-measurable-discrepancy-index.],[Phase 3 / 0.25],

  [spec:energy-conservation-signal], [The brain's hypothalamic AMPK/mTOR metabolic sensors detect ATP flux failure (rate insufficiency) even when metabolite pool sizes (blood glucose, lactate) are normal. Standard blood tests measure pools; the brain measures flux. Subjective fatigue reflects correct detection of flux insufficiency — no perceptual amplification needed. The discrepancy is a measurement domain mismatch (pools vs. flux), not a patient error. Impaired phosphocreatine recovery on 31P-MRS supports this; the hypothalamic link to fatigue perception is untested in ME/CFS. Origin: brainstorm — Phase 5, category 1.],[Phase 5 / 0.30],

  [spec:temporal-decoupling], [Subjective symptom reports integrate across weeks (recall period of validated instruments), objective measures capture a single timepoint. If ME/CFS fluctuates, subjective report captures worst moments (peak-end rule); objective measure randomly samples from the distribution's body. Discrepancy = distribution tail vs. random draw — would occur with perfect interoception. Vergauwen2021 (matched 12-day windows) still found rs=0.35-0.38 — temporal decoupling is partial only. Origin: brainstorm — Phase 5, category 1.],[Phase 5 / 0.40],

  [lim:instrument-selection-bias], [Every study in the discrepancy evidence base uses multi-week-recall subjective instruments vs. single-timepoint objectives. The discrepancy is partly designed into the protocol — a consequence of retrospective-integrative vs. instantaneous-sampling instruments, not solely a discovery about the disease. Vergauwen2021 with matched 12-day windows still shows weak correlation — instrument bias is partial. Origin: brainstorm — Phase 5, category 12 (evidence quality).],[Phase 5 / 0.60],

  [lim:tissue-mismatch-byrnes2009], [Byrnes2009's null (zero PBMC transcriptomic signal) is cited as strongest evidence for CNS confinement. Alternative: tissue-mismatch — peripheral blood leukocytes are the wrong cell type for muscle/endothelial/brainstem/enterochromaffin pathology. The null is strong evidence against systemic transcriptomic signal in blood leukocytes; weak evidence for CNS confinement specifically. Muscle biopsy, endothelial isolation, or CSF proteomics might reveal the signal. Origin: brainstorm — Phase 5, category 12.],[Phase 5 / 0.50],

  [lim:severity-confound-fatal], [The discrepancy index may measure severity, not subtype — mild (low objective, high subjective → high discrepancy), severe (high objective, high subjective → low discrepancy). The subtyping hypothesis survives only if discrepancy predicts treatment response WITHIN severity tiers. Ambiguity admitted but magnitude/direction unknown — without severity-stratified validation, subtyping is unfalsifiable. Origin: brainstorm — Phase 5, category 12.],[Phase 5 / 0.45],

  [lim:overestimated-certainty], [The achievement's cert 0.75 treats 5 domains as 5 independent replications. Reality: sleep uses one twin cohort twice (Watson2003, Armitage2009); autonomic is 1 study (Novak2024); activity found weak positive, not zero (Vergauwen2021 rs=0.35–0.38); cognition is a review, not primary data (Teodoro2018); biomarker is a tissue-specific null (Byrnes2009). Five legs, shared wood. More appropriate cert: 0.55–0.60. Origin: brainstorm — Phase 5, category 12.],[Phase 5 / 0.55],

  [oq:discrepancy-index-null-hypothesis], [The default null for any novel clinical instrument: does the discrepancy index add diagnostic, prognostic, or therapeutic value beyond existing assessment (symptom severity + duration)? If all three arms fail the null, the index is scientifically interesting but clinically useless — an academic construct. Burden of proof is on demonstrating added value, not assuming it. Origin: brainstorm — Phase 5, category 11 (null hypothesis).],[Phase 5 / n/a],

  [oq:confound-explained-null], [After controlling for severity, symptom fluctuation variance, psychiatric comorbidity (HADS), medication count/class, age, and gender — the ME/CFS-specific residual discrepancy may be zero. If so, the discrepancy is a quantitative amplification of normal interoceptive noise driven by severity, not an ME/CFS-specific mechanism. The framework collapses to "severe illness → large subjective-objective mismatch — any disease." A surviving disease-specific residual confirms the discrepancy as an ME/CFS property. Origin: brainstorm — Phase 5, category 11.],[Phase 5 / 0.40],

)

= Entries added 2026-07-28: Null Subtyping (Absent vs. Blocked vs. Overwhelmed)

#registry-entry(
  [Null Subtype 1 — Absent: Receptor or Enzyme Never Present],
  type: "S",
  certainty: "0.20",
  evidence: [Receptor occupancy theory establishes that a null agonist response does not equate to receptor absence — it only indicates insufficient occupancy at that concentration. Bypass agonist logic (direct downstream activator confirming downstream machinery intact) is pharmacologically sound but never tested in ME/CFS. @Finlay2020receptorOccupancy],
  citations: [@Finlay2020receptorOccupancy],
  mechanism: [Receptor, ion channel, enzyme, or transporter never existed in patient's tissue — or lost irreversibly. Drug never had a target. Bypass probe: give downstream agonist; if bypass produces response, receptor was absent. If bypass fails, downstream machinery also broken.],
  chapter-ref: [ch32: null subtyping — absent vs blocked vs overwhelmed],
  prediction: [In patients with TRPM3 null response to pregnenolone, calcium ionophore (A23187 or ionomycin) produces calcium flux in PBMCs — confirming TRPM3 is specifically absent while calcium signalling machinery is intact. Falsified if ionophore also produces null, though this would suggest broader calcium signalling defect rather than TRPM3-specific absence.],
  treatment: [None — absent target cannot be targeted. Treatment shifts to downstream pathways or unrelated mechanisms.],
  limitation: [No published ME/CFS study has tested bypass-agonist logic systematically. Probe requires in vitro or ex vivo setup (PBMC calcium flux, functional receptor assay) not available in standard clinical settings.],
)

#registry-entry(
  [Null Subtype 2 — Blocked: Receptor Present but Orthosteric Site Inaccessible],
  type: "S",
  certainty: "0.20",
  evidence: [GPCR autoantibodies can act as orthosteric antagonists, allosteric modulators, biased agonists — well-established pharmacology @Skiba2021AAbGPCRmodulation. GPCR AAb documented in POTS (allosteric modulation @Sunami2025GPCRPOTS) and ME/CFS (detection methods contested — Germain2025 REAP/Luminex null vs CellTrend ELISA positive). β-arrestin-biased AAb signalling produces chronic functional blockade distinct from simple orthosteric antagonism @DodgeKafka2026betaArrestinAAb.],
  citations: [@Skiba2021AAbGPCRmodulation @Sunami2025GPCRPOTS @DodgeKafka2026betaArrestinAAb],
  mechanism: [Receptor structurally present but orthosteric site occupied — by autoantibody, competitive endogenous ligand, or PTM locking inactive conformation. Probe: allosteric ligand binding different site may produce response when orthosteric agonist fails. If allosteric works → blocked, not absent. If both fail → absent or allosteric site also disrupted.],
  chapter-ref: [ch32: null subtyping — absent vs blocked vs overwhelmed],
  prediction: [In β2-AR AAb-positive ME/CFS patients (by validated functional assay), allosteric β2-AR modulator (e.g. Cmpd-6 or biased ligand) produces measurable cAMP response in PBMCs while orthosteric agonist (isoproterenol) does not — confirming orthosteric-site blockade. Falsified if both produce null, suggesting receptor absence or broader signalling defect rather than site-specific blockade.],
  treatment: [Immunoadsorption or plasmapheresis to remove AAb, then retest orthosteric drug. B-cell depletion for AAb source elimination. Allosteric bypass as alternative strategy when AAb removal is impractical.],
  limitation: [GPCR AAb detection in ME/CFS is contested — largest screen (Germain2025 n=172) null. Probe requires validated functional GPCR AAb assay not clinically available. No published study has tested allosteric bypass in AAb-positive ME/CFS patients. If GPCR AAb in ME/CFS are non-pathogenic or measurement artefacts, this null subtype collapses.],
)

#registry-entry(
  [Null Subtype 3 — Overwhelmed: Receptor Outcompeted by Endogenous Antagonist],
  type: "S",
  certainty: "0.15",
  evidence: [KYNA as endogenous NMDA antagonist binding glycine co-agonist site is well-established neuroscience @Schwarcz2012. Kynurenine pathway dysregulated in ME/CFS @Kavyani2024kynurenineMEcfs but KYNA direction inconsistent — some studies show elevation, others depletion. KYNA binding site (glycine co-agonist, not glutamate site) means concentration-competition probe must control for glycine levels @Hazrati2024kynureninePain.],
  citations: [@Schwarcz2012 @Kavyani2024kynurenineMEcfs @Hazrati2024kynureninePain],
  mechanism: [Receptor present, structurally intact, capable of signalling — but outcompeted by supraphysiological endogenous antagonist at orthosteric or co-agonist site. Probe: escalate drug dose above therapeutic range; if drug works at high dose → overwhelmed (higher concentration displaced endogenous antagonist). If fails at all doses → absent or blocked.],
  chapter-ref: [ch32: null subtyping — absent vs blocked vs overwhelmed],
  prediction: [In ME/CFS patients with confirmed elevated plasma KYNA (>2 SD above healthy controls), escalating ketamine dose over 3 sessions (0.1 → 0.5 → 1.0 mg/kg) produces dose-dependent symptom improvement linear with dose — while NMDA-agonist-naive patients show flat dose-response. Falsified if high-dose ketamine produces no improvement or produces psychosis/dissociation before therapeutic effect — suggesting KYNA elevation is compensatory (neuroprotective) rather than causal for NMDA hypofunction.],
  treatment: [Kynurenine pathway inhibition (IDO/TDO inhibitor) to lower KYNA, allowing standard-dose NMDA drugs to work. Alternatively, glycine-site agonist (D-serine) to competitively displace KYNA without NMDA overstimulation risk. Dose escalation of NMDA-targeting drug with safety monitoring.],
  limitation: [KYNA direction inconsistent in ME/CFS — applies only to elevated-KYNA subset (minority). Probe requires measurement of both KYNA and glycine levels. Concentration-competition probe (escalating doses of psychoactive drugs) carries clinical risk (dissociation, psychosis). No published study has tested this probe. Framework may apply to a negligible fraction of ME/CFS patients.],
)

#registry-entry(
  [Null Ladder Extension — Tripartite Null Taxonomy with Distinguishing Probes],
  type: "OQ",
  certainty: "0.20",
  evidence: [Synthesises receptor occupancy theory @Finlay2020receptorOccupancy, GPCR AAb pharmacology @Skiba2021AAbGPCRmodulation, GPCR AAb in POTS @Sunami2025GPCRPOTS, β-arrestin-biased AAb signalling @DodgeKafka2026betaArrestinAAb, and kynurenine pathway dysregulation in ME/CFS @Kavyani2024kynurenineMEcfs into a unified framework for distinguishing absent/blocked/overwhelmed null responses. Zero empirical validation in ME/CFS — all probes are proposed and untested.],
  citations: [@Finlay2020receptorOccupancy @Skiba2021AAbGPCRmodulation @Sunami2025GPCRPOTS @DodgeKafka2026betaArrestinAAb @Kavyani2024kynurenineMEcfs @Hazrati2024kynureninePain],
  mechanism: [Binary null logic (null → mechanism eliminated) is incomplete. Three distinct null types exist with mutually exclusive diagnostic implications and distinguishing probes. Absent: receptor never present (bypass agonist probe). Blocked: receptor present but orthosteric site occupied by AAb/ligand/PTM (allosteric probe). Overwhelmed: receptor present but outcompeted by endogenous antagonist (concentration-competition probe). Each null type changes treatment strategy differently — blocked nulls should be unblocked, not abandoned; overwhelmed nulls should be dose-adjusted, not abandoned.],
  chapter-ref: [ch32: null subtyping — absent vs blocked vs overwhelmed],
  prediction: [In a cohort of 100 ME/CFS patients with documented null responses to ≥3 drugs, systematic null-subtyping using the three probes identifies ≥5% of nulls as BLOCKED or OVERWHELMED (not ABSENT) — confirming that binary null logic produces false eliminations in a measurable minority. Falsified if all nulls resolve to ABSENT on probing, meaning the tripartite framework adds no clinical value over binary null logic.],
  treatment: [Framework-level — no direct treatment recommendation. Informs interpretation of existing null responses and design of future pharmacodiagnostic protocols.],
  limitation: [All probes untested in ME/CFS. BLOCKED subtype contingent on validated pathogenic GPCR AAb detection (contested). OVERWHELMED subtype contingent on KYNA elevation (minority of patients). Framework may add conceptual precision with zero practical impact if blocked/overwhelmed null prevalence is negligible.],
)

= Entries added 2026-07-28: Menstrual Cycle as Endogenous Pharmacodiagnostic Probe

#registry-entry(
  [Menstrual Cycle as Endogenous Pharmacodiagnostic Probe — Drug Response Tracking Across Cycle Phases],
  type: "S",
  certainty: "0.25",
  evidence: [Oestrogen rapidly potentiates NMDA signalling via ER transactivation of MAPK/ERK and PI3K/Akt (review, largely animal data @Sellers2015estrogenSynaptic, cert 0.36 discounted). Progesterone-derived allopregnanolone enhances GABA-A tonic current, with receptor subunit composition shifting drug sensitivity (review, preclinical @Locci2017neurosteroidGABA, cert 0.36 discounted). Oestrogen modulates serotonin synthesis, release, and receptor sensitivity (review @Shadani2024psychedelicsSex, cert 0.44 discounted). Menstrual cycle hormones produce measurable whole-brain structural changes in humans (n=30 @Rizor2024brainArchitecture, cert 0.53 discounted). Thomas et al. 2026 explicitly call for menstrual-cycle-aware sampling in ME/CFS research (review @Thomas2026neuroendocrinologyFramework, cert 0.60 discounted). PET null findings constrain but do not falsify: 5-HT1A binding unchanged across cycle (n=13 @Jovanovic2009serotoninPET), D2 availability unchanged (n=16 @Petersen2021D2estradiol). CYP450 expression stable across rat oestrous cycle @Lee2012CYPestrous suggests PD over PK interpretation. PK data in humans mixed (review @Bosch2025sexPKreview). Zero human studies testing cycle-phase-dependent drug response as receptor-system probe. Origin: brainstorm — @sec:menstrual-cycle-dopaminergic-mast-cell-probe, extended to pharmacodiagnostic drug-response tracking.],
  citations: [@Sellers2015estrogenSynaptic @Locci2017neurosteroidGABA @Shadani2024psychedelicsSex @Rizor2024brainArchitecture @Thomas2026neuroendocrinologyFramework @Jovanovic2009serotoninPET @Petersen2021D2estradiol @Lee2012CYPestrous @Bosch2025sexPKreview],
  mechanism: [Menstrual hormone fluctuations (oestrogen at follicular/ovulatory peak → potentiates NMDA, D2, 5-HT1A signalling; progesterone/allopregnanolone at luteal peak → potentiates GABA-A) provide a predictable, endogenous oscillation of receptor function. Tracking drug response across two full cycles maps the drug's mechanism to hormone-gated receptor families: follicular benefit → oestrogen-coupled (NMDA/D2/serotonergic); luteal benefit → progesterone/GABA-coupled; flat response → hormone-independent. The probe relies on functional sensitivity differences (downstream signalling cascade potency), not receptor density changes (PET-null for D2/5-HT1A binding). PK confound (oestrogen modulation of CYP) must be controlled via serum drug level measurement.],
  chapter-ref: [ch33 sec-10 subsec-07: endogenous probes — menstrual cycle pharmacodiagnostic],
  prediction: [In a prospective N-of-1 trial, premenopausal ME/CFS patients track a drug with known receptor pharmacology across 3+ cycles. Cycle-phase response variation >30% with follicular-phase benefit → D2 is oestrogen-coupled. Falsified if (a) drug serum levels vary by cycle phase (PK confound), (b) same variation with placebo, or (c) D2/5-HT1A functional output (cAMP response to agonist in PBMCs) shows zero cycle-phase variation in humans.],
  treatment: [None — observational probe, not a treatment recommendation. Formalises cycle-phase drug-response tracking as a zero-cost diagnostic method. Applies only to menstruating patients with regular cycles (excludes postmenopausal, continuous hormonal contraception, prepubertal, male, amenorrhoeic).],
  limitation: [No human study has directly tested the probe concept in any disease. The >30% threshold is arbitrary. Two-timepoint sampling (follicular vs luteal) may miss periovulatory oestrogen peak. Cycle-phase symptom patterns confounded by non-hormonal factors (menstrual pain, sleep disruption). Requires minimum 8 weeks for reliable inference. All mechanistic evidence for oestrogen→receptor modulation from general-population and animal studies; no ME/CFS-specific validation. Risk of over-interpretation, though risk of harm is negligible (observational only). Origin: brainstorm.],
)

#registry-entry(
  [Menstrual Cycle Phase at Drug Initiation as Confound in N-of-1 Trial Design],
  type: "S",
  certainty: "0.20",
  evidence: [Logical corollary of @spec:menstrual-cycle-pharmacodiagnostic-probe. If cycle-phase hormone levels modulate receptor sensitivity, a D2 agonist started during high-oestrogen follicular phase will produce a different initial response than the same drug started during low-oestrogen luteal phase — creating a systematic confound in N-of-1 trial interpretation that reads as tachyphylaxis (if started at follicular peak followed by luteal decline) or inefficacy (if started at luteal nadir). Zero human data. Origin: brainstorm — Phase 5 extension.],
  citations: [@Sellers2015estrogenSynaptic @Petersen2021D2estradiol @Rizor2024brainArchitecture],
  mechanism: [Cycle phase at drug initiation → initial receptor state (oestrogen-potentiated vs baseline) → initial drug response magnitude. Follicular-start trials produce higher initial efficacy for oestrogen-coupled drugs → subsequent luteal-phase decline misinterpreted as tachyphylaxis or tolerance. Luteal-start trials produce lower initial efficacy → drug abandoned as ineffective. Standardising initiation to day 1 of menses (hormone nadir) OR recording cycle phase as covariate eliminates the confound.],
  chapter-ref: [ch33 sec-10 subsec-07: endogenous probes — menstrual cycle pharmacodiagnostic],
  prediction: [In pooled N-of-1 trial data from premenopausal ME/CFS patients, cycle phase at drug initiation predicts response magnitude for dopaminergic drugs (follicular-start higher initial response than luteal-start). Null result would suggest cycle-phase-independent initial response, removing the confound.],
  treatment: [Methodological recommendation: standardise drug trial initiation to a specific cycle phase (day 1 of menses) or record phase as covariate and test for phase × response interaction. No treatment recommendation.],
  limitation: [No prospective data. Requires coordinating drug trial initiation with menstrual phase — adds logistical burden. If confirmed null, this recommendation is unnecessary. If confirmed positive, applies only to oestrogen-coupled drugs (D2 agonists, SSRIs, NMDA modulators), not all medications. Origin: brainstorm.],
)

#registry-entry(
  [Can Cycle-Phase Drug Response Patterns Stratify ME/CFS Patients by Mechanism?],
  type: "OQ",
  certainty: "n/a",
  evidence: [Entirely inferential — builds on @spec:menstrual-cycle-pharmacodiagnostic-probe. If cycle-phase-dependent drug response identifies patient subgroups with oestrogen- or progesterone-coupled pathophysiology, these subgroups may differ in prognosis, treatment trajectory, or biomarker profile. Zero data.],
  citations: [],
  mechanism: [Cycle-phase response pattern → patient-level mechanism identification → treatment stratification: oestrogen-dependent responders may benefit from hormonal modulation or continuous-cycle contraceptives; hormone-independent responders would waste time on hormonal strategies. The concept is that cycle-phase variation is not just diagnostic for the drug's mechanism but for the patient's disease pathophysiology.],
  chapter-ref: [ch33 sec-10 subsec-07: endogenous probes — menstrual cycle pharmacodiagnostic],
  prediction: [If cycle-phase drug response is prospectively tracked across a cohort, patients with >30% follicular response variation will differ from those with less than 15% variation in: (a) response to hormonal modulation, (b) D2 agonist efficacy, (c) oestrogen receptor gene expression in PBMCs. Falsified if no patient-level differences emerge beyond the drug-level mechanism inference.],
  treatment: [Research-stage only — not a basis for current clinical decisions.],
  limitation: [Requires validation of the base probe concept first. Patient stratification by cycle-phase response is a second-order inference. Entirely untested. Origin: brainstorm.],
)

= Entries added 2026-07-28: Charlton et al. 2026 — Bed Rest Comparator Study

#registry-entry(
  [OXPHOS–V̇O₂ₘₐₓ Uncoupling Reflects Disease-Intrinsic Mitochondrial Dysfunction, Not Deconditioning],
  type: "FH",
  certainty: "0.65",
  evidence: [Charlton et al. (2026, Nature Communications) @Charlton2026MuscleBedrest: n=105 total (26 ME/CFS, 25 Long COVID, 30 healthy controls, 24 pre-/post-bed-rest). OXPHOS capacity (high-resolution respirometry) correlated with V̇O₂ₘₐₓ (maximal CPET) in healthy controls (r>0) and pre-/post-bed-rest, but not in either patient group. Intrinsic mitochondrial function (OXPHOS/SDH, E/L coupling) impaired in patients but not after bed rest. Corroborated by Joseph 2021 (invasive CPET: impaired O₂ extraction in ME/CFS @Joseph2021iCPETmeCFS), Germain 2025 (plasma proteomics: disrupted proteomic-VO₂max associations in ME/CFS @Germain2025PlasmaProteomePEM), and Eggelbusch 2024 (bed rest: preserved OXPHOS–performance coupling despite atrophy @Eggelbusch2024BedrestMetab).],
  citations: [@Charlton2026MuscleBedrest @Joseph2021iCPETmeCFS @Germain2025PlasmaProteomePEM @Eggelbusch2024BedrestMetab],
  mechanism: [Mitochondrial respiratory capacity normally scales with whole-body aerobic performance. In ME/CFS, the coupling breaks: patients have low V̇O₂ₘₐₓ regardless of how much mitochondrial machinery they retain, and intrinsic mitochondrial function is impaired (lower OXPHOS/SDH, lower E/L coupling). This is not a deconditioning effect — bed rest reduces both OXPHOS and V̇O₂ₘₐₓ but preserves their correlation. The limiting factor is either downstream of the mitochondrion (O₂ delivery failure, microvascular obstruction) or upstream (CNS-mediated motor output restriction).],
  chapter-ref: [ch20: universal mechanisms — Family 17 structural integrity / @fhyp-oxphos-vo2max-uncoupling],
  prediction: [Interventions that increase mitochondrial content (pyruvate dehydrogenase activation, NAD⁺ precursors) should restore the OXPHOS–V̇O₂ₘₐₓ correlation if the uncoupling is a modifiable mitochondrial failure. If V̇O₂ₘₐₓ remains uncoupled despite raised OXPHOS capacity, the limiting factor is upstream (CNS motor output) or delivery-side (microvascular obstruction). Interventions improving O₂ delivery (volume expansion, pyridostigmine) that restore the correlation would localise the bottleneck to the microvasculature.],
  treatment: [Research-stage only. Implications for clinical approach: "reconditioning" is not a rational therapeutic strategy — the molecular machinery needed to adapt to exercise is itself impaired. Mitochondrial support strategies (CoQ10, NAD⁺ precursors) and microvascular therapies are rational targets.],
  limitation: [Single cohort, single lab (Wüst/VU Amsterdam). No independent replication of the OXPHOS–V̇O₂ₘₐₓ dissociation specifically. Mild–moderate patients only (daily steps 733–8609). Organelle-level finding; no patient-reported outcome data. Correlation design (change in V̇O₂ₘₐₓ after raising OXPHOS has not been tested prospectively).],
)

#registry-entry(
  [Sixty-Day Bed Rest Fails to Reproduce ME/CFS Muscle Phenotype — Deconditioning Not the Explanation],
  type: "A",
  certainty: "0.85",
  evidence: [Charlton et al. (2026, Nature Communications) @Charlton2026MuscleBedrest compared 60-day strict head-down tilt bed rest (n=24 healthy volunteers) against 26 ME/CFS patients, 25 Long COVID patients, and 30 healthy controls across multiple independent measurements: fibre typing (IHC), fibre-type-specific atrophy, mitochondrial respirometry, capillary morphology, whole-body CPET, ventilatory patterns. Five phenotypic dimensions diverged between bed rest and patients, each excluding deconditioning as the sole explanation.],
  citations: [@Charlton2026MuscleBedrest],
  mechanism: [Bed rest produces: (1) generalised atrophy of all fibre types without shift; patients show Type I-selective atrophy and glycolytic shift. (2) Preserved OXPHOS–V̇O₂ₘₐₓ coupling; patients lose it. (3) Increased capillary density (atrophy outpaces capillary loss); ME/CFS shows lower capillary-to-fibre ratios. (4) Altered ventilatory pattern (increased V̇E/V̇CO₂ slope); patients' ventilation is largely normal. (5) No intrinsic mitochondrial function impairment; patients show reduced OXPHOS/SDH and E/L coupling. The qualitative divergence at five independent levels makes deconditioning an insufficient explanation.],
  chapter-ref: [ch20: @ach:charlton2026-bedrest-rebuttal; ch07: PEM connection (subsec-16); ch11: cardiovascular summary],
  prediction: [Future studies that include activity-matched sedentary controls (not bed rest but matched daily step counts to ME/CFS patients) should reproduce the qualitative divergence found by Charlton et al. — the patient phenotype is not reproducible by activity reduction alone. Falsified if an activity-matched sedentary control group (not bed rest) develops the same glycolytic shift, Type I atrophy, or OXPHOS–V̇O₂ₘₐₓ uncoupling as patients.],
  treatment: [Structural evidence that deconditioning is not the primary driver of exercise intolerance. Supports the concept that PEM is a disease-intrinsic phenomenon requiring targeted treatment of its underlying mechanisms (mitochondrial support, microvascular therapy, CNS energy budget), not "reconditioning." Does not provide specific treatment evidence.],
   limitation: [Cross-sectional in patients (no longitudinal patient cohort). Bed rest participants younger than patient-matched controls. Head-down tilt is an imperfect model of ambulant deconditioning. All ambulant patients (mild–moderate). Single-lab findings awaiting independent replication. Correlation study — causation inferred from laboratory-controlled bed rest comparator, not directly tested in patients prospectively.],
)

= Entries added 2026-07-29: Contraindication Ladder — What NEVER to Combine

#registry-entry(
  [Contraindication Ladder: 4-Level Mechanism-Based Drug Interaction Classification],
  type: "M",
  certainty: "0.25",
  evidence: [Pharmacological classification derived from receptor pharmacology (Level 1), CYP metabolism (Level 2 — fluvoxamine+duloxetine: 460% AUC increase @Knadler2011DuloxetinePK), autonomic physiology + 1 case report (Level 3 — @Dayal2025SHOHCase), and metabolic-stress modelling + 1 ME/CFS stimulant RCT (Level 4 — @Blockmans2006MPHCFS, @Eckey2025PatientReported). Level 1 pairs are textbook pharmacology. Level 2 best-documented pair (fluvoxamine+duloxetine) has dedicated manufacturer PK study; cimetidine+aripiprazole is predicted from CYP pharmacology with zero PubMed interaction studies. Level 4 stimulant-PEM risk has direct ME/CFS evidence; rapamycin+metformin is mechanistic inference only. No existing DDI framework organizes interactions by mechanism type — the ladder is a novel organizational contribution.],
  citations: [@Knadler2011DuloxetinePK @Blockmans2006MPHCFS @Eckey2025PatientReported @Dayal2025SHOHCase @DueBruun2024LDNFibromyalgia @Palma2020OHManagement @Everly2004BBUnderuse @Lipworth1997PartialAgonist @Ponticelli2023AutophagyPodocyte],
  mechanism: [Four ladder levels: (L1) Direct receptor antagonism — competitive occupation of same receptor for opposing purposes → pharmacologically certain, absolute contraindication. (L2) Pharmacokinetic catastrophe — Drug A inhibits CYP enzyme that Drug B needs for clearance → Drug B accumulates to toxic levels. (L3) Pharmacodynamic opposition — opposing physiological goals at systems level, not same receptor → temporally mitigatable. (L4) Metabolic PEM risk — drug increases metabolic demand, masks fatigue signal, or induces autophagy in an energy-compromised system → PEM amplification. Contraindication table: patient-experience-based permanent class-wide contraindications (e.g., LDN dysphoria → avoid all opioid-modulating drugs). (Origin: brainstorm)],
  chapter-ref: [ch33: @sec:contraindication-ladder],
  prediction: [Falsifiable per-level: (L1) If a patient known to be on an opioid agonist tolerates LDN without blunted opioid effect or precipitated withdrawal → LDN did not achieve μOR occupancy at dose — the antagonism is dose-dependent, not absolute. (L2) If duloxetine at standard dose is co-administered with fluvoxamine and duloxetine AUC remains within normal range → patient is a CYP1A2 ultrarapid metaboliser (genotype-dependent bypass). (L3) If clonidine 0.1 mg + midodrine 5 mg co-administered simultaneously produces stable BP within 10% of baseline → the sympathetic-α1 axis has sufficient reserve to absorb dual modulation. (L4) If stimulant-treated ME/CFS patients show no increase in PEM frequency over 3 months vs placebo → activity masking is not the dominant PEM mechanism in that subpopulation.],
  treatment: [Structural safety framework — defines what NOT to combine. No new treatment proposed. Clinical utility: each contraindication is also a diagnostic signal — the adverse response reveals which system is load-bearing for that patient's homeostasis. The table translates adverse events into mechanism-specific diagnostic inferences.],
  limitation: [L2 cimetidine+aripiprazole predicted-only (0 PubMed hits). L4 rapamycin+metformin predicted-only (0 adverse-interaction papers). L3 supported by 1 case report in a non-ME/CFS population. L1 pairs lack dedicated interaction studies (pharmacology-level evidence only). Contraindication table entries lack formal rechallenge data. No prospective validation of the ladder structure. Origin: brainstorm — pharmacological inference from receptor physiology + CYP metabolism + autonomic physiology + metabolic constraint modelling.],
)

= Entries added 2026-07-29: Diurnal Response Window — Circadian Pharmacodiagnostic Probe

#registry-entry(
  [Diurnal Response Window as Circadian Pharmacodiagnostic Probe],
  type: "S",
  certainty: "0.20",
  evidence: [Circadian receptor expression established in chronopharmacology: GR peak 04:00–08:00, TLR4 peak 18:00–00:00, H1 peak 02:00–06:00, D2/D3 striatal peak 12:00–16:00 (Levi 2024 review @Levi2024chronopharmacologyReview). ME/CFS: blunted cortisol awakening response, exaggerated HPA feedback (meta-analysis, n=1,388, 46 datasets @Woo2026mecfsCortisolMeta — discounted cert 0.88). Chronotherapy proof-of-concept: evening-timed prednisone improves fatigue in RA (CAPRA-2 RCT, n=350, FACIT-F +3.8 vs +1.6, p=0.0032 @Alten2015prednisoneChronotherapy). Diurnal cytokine-symptom coupling: PMR IL-6/IL-8/TNF-α peak 04:00–08:00, prednisolone chronotherapy abolishes symptoms @Galbo2016pmrCircadianCytokines. Post-infectious fatigue: clock gene dysregulation (CLOCK, BMAL1, PER2), epigenetic clock changes @Livieratos2025circadianPostInfectious. CYP450/transporter circadian regulation @Okyar2024circadianDrugMetabolism. Trial methodology guidelines @Hermida2021chronotherapyGuidelines. (Origin: brainstorm)],
  citations: [@Levi2024chronopharmacologyReview @Woo2026mecfsCortisolMeta @Alten2015prednisoneChronotherapy @Galbo2016pmrCircadianCytokines @Livieratos2025circadianPostInfectious @Okyar2024circadianDrugMetabolism @Hermida2021chronotherapyGuidelines @Cutolo2019circadianRA @Zaki2019chronotherapeuticsReview @Ohdo2021chronoDrugDiscovery @Guarnotta2021adrenalChronopharmacology],
  mechanism: [Drug at 08:00 vs 20:00 produces >30% benefit difference if target follows circadian rhythm; flat → constitutively expressed or downstream. Three patterns: (1) morning-only → GR/cortisol-coupled; (2) evening-only → melatonin/sleep-dependent (TLR4 peak 18:00–00:00); (3) flat → non-circadian. PK vs PD disambiguation via plasma drug levels at both time points. ME/CFS blunted HPA may amplify diurnal signal.],
  chapter-ref: [ch33: @sec:diurnal-response-window],
  prediction: [Crossover trial (08:00 vs 20:00, 2 weeks each, n≥1, ≤7 days washout): drug with circadian target shows >30% difference. If all drugs lt.eq 30% in patient with normal circadian phase → probe assumption falsified. If non-circadian drug shows >30% difference → PK confound unless plasma levels controlled. Falsified if pilot (n≥10, 2 drugs with known circadian vs non-circadian targets) finds no drug with >30% diurnal difference in any patient with confirmed circadian phase.],
  treatment: [No treatment recommendation — pure pharmacodiagnostic methodology. If validated, zero-cost clinical test: 08:00 vs 20:00 response difference reveals receptor circadian coupling, guiding dosing timing without lab work.],
  limitation: [No ME/CFS chronopharmacology trial exists — concept untested in this population. Assumes circadian phase aligned with clock time (false for DSPD/ASPD). Diurnal symptom variation confounds drug effect. Requires actigraphy + plasma drug levels for PK/PD disambiguation. All evidence analogical (general chronopharmacology + autoimmune chronotherapy). Origin: brainstorm.],
)

#registry-entry(
  [Response Onset Latency as Mechanism Kinetics Classifier],
  type: "S",
  certainty: "0.25",
  evidence: [Onset latency well-documented for drug classes but never systematised for ME/CFS mechanism inference. SSRI onset 2–4 weeks (postsynaptic adaptation), stimulant hours (DAT inhibition), IVIG 48–72h (immune complex) vs 2–4 weeks (immunomodulation). Existing ch33 content covers LDN, aripiprazole, IVIG, duloxetine, gabapentin, DORA latency inferences. No trial validates latency-to-mechanism mapping. (Origin: brainstorm)],
  citations: [Existing ch33 references; no dedicated ME/CFS latency studies],
  mechanism: [Before 48h → ion channel gating, receptor agonism/antagonism; 2–7 days → enzyme induction/acute phase protein; 1–4 weeks → receptor upregulation, microglial M1→M2 shift; 4–12 weeks → epigenetic remodelling, mitochondrial biogenesis. LDN at 48h: TRPM3/TLR4 direct (too fast for endorphin). LDN at 3–6 weeks: endorphin or microglial shift.],
  chapter-ref: [ch33: subsec-04 subsubsec-03 response onset latency],
  prediction: [Prospective LDN latency tracking: ~30% respond by day 2 (TRPM3/TLR4), ~40% at weeks 3–6 (endorphin/microglial), 30% non-responders. Falsified if unimodal distribution.],
  treatment: [If validated, onset latency classifies fast vs slow responders, avoiding futile 8-week trials. No clinical recommendation without validation. Origin: brainstorm.],
   limitation: [No prospective latency study. Confounded by placebo (also ~48h onset), concurrent changes, disease fluctuation. Bimodal hypothesis theoretical. Inter-individual PK variability produces pseudo-latency differences.],
)

= Entries added 2026-07-29: Sequential Ordering Principle + Do Not Disturb Rule

#registry-entry(
  [Sequential Ordering Principle — Five-Rule Drug Trial Priority Order],
  type: "S",
  certainty: "0.20",
  evidence: [Mechanistic inference framework combining pharmacology (drug half-life, metabolic cost, receptor breadth) with clinical heuristics (cost, accessibility). No prospective study validates the ordering principle for ME/CFS. Existing ch33 content covers individual drug mechanisms and synergy/antagonism pairs; the 5-rule framework synthesizes them into a clinical decision sequence. (Origin: brainstorm sec 13c)],
  citations: [@Eckey2025PatientReported],
  mechanism: [Five priority rules: (1) Restorative > Corrective > Threshold-modulatory > Substrate > Symptomatic — trial drugs in descending therapeutic depth. (2) Broad > Narrow — each trial should eliminate the most hypotheses. (3) Energy-neutral > Energy-consuming — conserve PEM budget. (4) Reversible > Irreversible — short-washout drugs allow rapid reinterpretation. (5) Cheap/OTC > Expensive/Prescription — access principle, applied when mechanistic criteria are equal. Integrated sequence: LDN → mast-cell stabilisers → LDA → mitochondrial cofactors → valacyclovir → stimulants cautiously → IVIG/rituximab.],
  chapter-ref: [ch33: @sec:sequential-ordering-principle],
  prediction: [Prospective 7-drug sequence trial: cumulative diagnostic resolution (proportion with >30% improvement + mechanism validated by synergy probe) ≥60% by step 5 (LDN through valacyclovir). Falsified if cumulative resolution `<40%` or ≥30% of resolution occurs after step 5 (stimulants/IVIG — the end-of-sequence drugs).],
  treatment: [Clinical decision scaffold — provides a defensible "which drug next?" algorithm. Reduces trial-and-error PEM cost. No validated treatment recommendation. Origin: brainstorm.],
  limitation: [No prospective validation. Ordering conflicts possible — broad but expensive (IVIG) vs narrow but cheap (NAC). Population-specific: ordering assumes patient has the energy budget for 7+ drug trials; severe patients may exhaust PEM budget before step 3. POTS-dominant cluster may need autonomic probes (midodrine, pyridostigmine) earlier.],
)

#registry-entry(
  [Do Not Disturb Rule — Four Stopping Conditions for Pharmacodiagnostic Trials],
  type: "S",
  certainty: "0.20",
  evidence: [Clinical heuristics derived from side-effect diagnostic patterns (Patterns 1–5) and PEM budget constraint. None validated prospectively for ME/CFS pharmacodiagnostic trialling. Existing ch33 sec-10 documents all 6 side-effect patterns; this entry formalizes their clinical stopping implications. (Origin: brainstorm sec 13d)],
  citations: [Existing ch33 references; no dedicated stopping-rule literature],
  mechanism: [Four stopping conditions: (C1) Any drug causes severe PEM (>24h self-care-blocking crash or >50% more severe than typical) → stop, do not escalate. PEM obscures diagnostic signal. (C2) Energy-neutral drug causes fatigue → stop, the fatigue IS the diagnostic signal (Pattern 1 — zero reserve in target system). (C3) Three consecutive nulls in same mechanism class → eliminate the class. (C4) >50% improvement from any drug → pause, fully characterise the response before adding a second drug. Each stop IS a diagnostic outcome.],
  chapter-ref: [ch33: @sec:do-not-disturb-rule],
  prediction: [Per-condition falsifiable: (C1) Early-resumers after drug-induced PEM (`<`1 week) show higher false-positive rates than late-resumers (≥2 weeks). (C2) Dose reduction to 50% eliminates energy-neutral fatigue. (C3) `<`10% of patients respond to a fourth same-class drug after three nulls. (C4) Fast-sequencers (`<`1 week after >50% improvement) show lower cumulative resolution than characterisation-first sequencers (≥6 weeks + washout).],
  treatment: [Safety framework — prevents cumulative PEM from futile pharmacodiagnostic trialling. Reduces risk of false-positive attribution and class-wide adverse event discovery. Clinical utility: conserves PEM budget and redirects toward validated mechanisms. Origin: brainstorm.],
    limitation: [All conditions are heuristic — no prospective validation. C3 threshold (3 nulls) is arbitrary. C2 (energy-neutral → fatigue = Pattern 1) not validated. C4 (>50% improvement) may miss additive benefits from combining with a second drug. Severe patients may trigger C1 from drugs well-tolerated in moderate patients — severity-level interaction effect unknown.],
)

= Entries added 2026-08-01: Waking Local Sleep / Sleep-Like Slow Waves — Relevance to ME/CFS Brain Fog

#registry-entry(
  [Waking Local Sleep as a Convergent Electrophysiological Mechanism for ME/CFS Brain Fog],
  type: "S",
  certainty: "0.35",
  evidence: [Well-established local-sleep phenomenon: sleep-like slow waves (1--4 Hz delta) in localized cortical patches during wakefulness cause attention lapses, RT variability, and subjective sleepiness @Pinggal2026localsleepADHD @Andrillon2023localSleepReview. Catecholamines gate waking slow waves: noradrenaline/dopamine suppress, serotonin promotes @Pinggal2022pharmaSlowWaves. ME/CFS involves: (a) central noradrenergic deficiency @walitt2024deep, (b) chronic neuroinflammation increasing local sleep probability @Leemburg2025LPSvigilance, (c) energy-metabolic limitation reducing ion-pump capacity for maintaining waking membrane potentials @Alfonsa2023chlorideLocalSleep. Zero studies have applied the waking slow-wave EEG paradigm to ME/CFS patients. The entire inferential chain is cross-disease extrapolation from ADHD, post-COVID, healthy-volunteer, and animal models. PDE: 0.35 -- speculative, not hypothesis-level. (Translation gap: general-population/adult-ADHD → ME/CFS. Not validated in ME/CFS patients.)],
  citations: [@Pinggal2026localsleepADHD @Pinggal2022pharmaSlowWaves @Andrillon2023localSleepReview @Alfonsa2023chlorideLocalSleep @Leemburg2025LPSvigilance @VanDongen2025localVsGlobalSleep @Fatt2020parasympatheticSWS @Neu2015swsMECFSinsomnia @Ortelli2022postcovidAttention @walitt2024deep],
  mechanism: [Upstream ME/CFS pathology (noradrenergic deficiency + neuroinflammation + ATP deficit → impaired cortical maintenance of waking desynchronisation) → individual cortical columns enter sleep-like slow-wave oscillations during wakefulness → functional disconnection of those circuits from ongoing cognitive processing → attention lapses, slowed RT, increased RT variability, subjective brain fog. Convergent endpoint of three disrupted gatekeeping factors: noradrenergic suppression failure, inflammatory priming, and ion-pump energy depletion.],
  chapter-ref: [ch18: @spec:ch15-local-sleep-brain-fog; research protocol: @pred:ch15-waking-sw-mecfs-eeg-study],
  prediction: [ME/CFS patients performing sustained attention task under EEG show higher waking SW density (SW/min, parieto-temporal electrodes) vs controls, correlating with brain fog severity, omission errors, and RT variability. Density increases 24--48h post-CPET. Atomoxetine/methylphenidate acutely reduces SW density. Falsified if no group difference, no cognitive correlation, or no catecholaminergic modulation.],
  treatment: [No clinical treatment recommendation -- mechanism unverified in ME/CFS. If confirmed: (a) waking slow-wave density becomes objective electrophysiological biomarker of brain fog; (b) adrenergic support (atomoxetine, guanfacine) and anti-neuroinflammatory strategies (LDN, PEA) target measureable endpoint; (c) sleep-quality interventions (SWS enhancement, sleep hygiene) indirectly reduce waking slow-wave pressure. Research-stage only.],
  limitation: [Zero ME/CFS waking slow-wave data. Entire mechanism is cross-disease extrapolation. Behavioral signature (RT slowing, lapses) is generic -- present across many neurological conditions, not specific to local sleep. Competing mechanisms (glymphatic failure, orthostatic hypoperfusion, kynurenine neurotoxicity, sleep fragmentation) produce same behavioral endpoint and may be dominant. BDNF findings mixed in ME/CFS. Catecholamine deficiency group-level only; intra-individual catecholamine–SW correlation unmeasured. Severity applicability: unknown. (Origin: /integrate-topic local-sleep-waking-slow-waves.)],
)

#registry-entry(
  [Waking Slow-Wave Density as Direct Electrophysiological Biomarker of Brain Fog -- Proposed EEG Study Protocol],
  type: "P",
  certainty: "---",
  evidence: [Prediction only -- test not yet performed. Grounded in established paradigms: Pinggal 2026 waking slow-wave EEG (n=63), Pinggal 2022 pharmacological SW modulation (n=32 RCT crossover), Walitt 2024 noradrenergic deficiency in ME/CFS (n=17), Ortelli 2022 post-COVID attention deficits (n=117), Leemburg 2025 LPS→waking SW in animals. No component requires novel technology.],
  citations: [@Pinggal2026localsleepADHD @Pinggal2022pharmaSlowWaves @walitt2024deep @Ortelli2022postcovidAttention @Leemburg2025LPSvigilance],
  mechanism: [Prediction of the waking local-sleep model: ME/CFS cognitive dysfunction results from elevated waking slow-wave density, which in turn results from catecholamine deficiency + neuroinflammation + metabolic limitation. The study protocol tests each link: resting-state SW density (baseline), task-related SW density (attention paradigm), post-CPET SW density (PEM timecourse), pharmacological modulation (atomoxetine crossover), and negative controls (absence of correlation with motor slowing or sleep latency).],
  chapter-ref: [ch18: @pred:ch15-waking-sw-mecfs-eeg-study],
  prediction: [All predictions specified in the protocol below. Falsified if: (1) no group difference in waking SW density ME/CFS vs controls; (2) SW density does not correlate with cognitive performance; (3) atomoxetine/methylphenidate does not reduce SW density; or (4) post-CPET SW density does not track subjective brain fog timecourse.],
  treatment: [If positive, identifies atomoxetine and methylphenidate as first-line pharmacological probes targeting the waking local-sleep mechanism with a quantifiable electrophysiological endpoint. Research-stage only until confirmed.],
  limitation: [No ME/CFS waking slow-wave EEG data exist -- the entire protocol is a prediction. EEG hardware and analysis pipeline are standard but require operator training for waking slow-wave detection. CSF DHPG measurement requires lumbar puncture -- only feasible in research settings, not routine clinical monitoring. Cross-sectional first; longitudinal PEM timecourse adds scheduling complexity. Atomoxetine and methylphenidate carry sympathomimetic side effects that may be poorly tolerated in ME/CFS patients with POTS. (Origin: /integrate-topic local-sleep-waking-slow-waves.)],
)
= Entries added 2026-08-09: Dementia Neuroinflammation — Bidirectional Mental-Illness–Inflammation Template

#registry-entry(
  [The Inflammatory-Mediated Neurodegeneration Template: Bidirectional Mental-Illness–Inflammation Link],
  type: "S",
  certainty: "0.40",
  evidence: [Meta-analyses testing the inflammatory-mediated-neurodegeneration hypothesis found (a) Alzheimer's disease associated with elevated IL-17A, IL-1$alpha$, IL-10, G-CSF, GM-CSF, IL-3 independent of comorbid psychiatric/physical inflammatory conditions @Kuring2026InflammatoryDementia; (b) depression, anxiety, PTSD each associated with inflammation independent of such comorbidities @Kuring2023InflammatoryMood. IL-17A elevated in both AD and depression; G-CSF in AD, depression, PTSD. Excluding comorbid inflammatory conditions removed classically-reported IL-6/TNF-$alpha$ elevations in AD @Kuring2026InflammatoryDementia. Cross-disease (dementia/mental-illness → ME/CFS inference); specific AD markers do not match ME/CFS profile (TNF-$alpha$/IL-4/TGF-$beta$/CRP per @Strawbridge2019CFSInflammatory), so only the general template, not the specific markers, transfers.],
  citations: [@Kuring2026InflammatoryDementia @Kuring2023InflammatoryMood @Strawbridge2019CFSInflammatory],
  mechanism: [Pre-existing mental-illness-associated inflammation → IL-17A/IL-1$alpha$/G-CSF signaling → CNS neuroinflammation and neuroinflammatory-mediated CNS pathology. In ME/CFS this runs REVERSE to the "neuroinflammation as common upstream driver" model (depression as secondary); the two imply a bidirectional inflammation–mental-state loop with causality direction unresolved. Comorbidity masking: excluding comorbid inflammatory conditions changes which cytokines appear elevated (a methodological caution applicable to ME/CFS inflammatory-marker research).],
  chapter-ref: [ch14d-cross-disease: @spec:bidirectional-mood-inflammation-template; ch08 pro-inflammatory cytokines: @lim:dementia-comorbidity-masking; ch19 causal hierarchy: chronicity criterion cross-disease precedent],
  prediction: [Within ME/CFS, a depression/anxiety-comorbid subgroup (excluding other inflammatory conditions) will show a distinct inflammatory-marker profile (higher IL-17A, G-CSF) correlating with depressive-symptom severity, with mental-symptom onset preceding the marker rise in longitudinal sampling. Falsified if mental symptoms are uniformly secondary (marker rise follows mental-symptom onset in all patients) or if the sub-group marker profile is not distinct.],
  treatment: [No clinical treatment recommendation. If confirmed, the bidirectional link would imply anticytokine/anti-neuroinflammatory strategies and mental-health treatment may each partially address the other — but this is speculative and not currently actionable.],
  limitation: [Cross-sectional included studies cannot establish causality vs prodrome vs epiphenomenon. Direction of mental-illness→inflammation arrow unresolved. Specific dementia markers not transferable to ME/CFS. Severity applicability unknown (dementia populations not ME/CFS-severity-stratified). No comorbidity-screened ME/CFS replication yet. (Origin: /integrate-topic dementia-inflammation.)],
)

#registry-entry(
  [Shared Th17/Myeloid-Axis Signal Between ME/CFS and Inflammatory CNS Conditions],
  type: "S",
  certainty: "0.30",
  evidence: [G-CSF and GM-CSF are severity-correlated inflammatory markers in ME/CFS (Montoya PNAS 2017 cohort @Montoya2017) and are elevated in Alzheimer's disease independent of comorbidity @Kuring2026InflammatoryDementia. IL-17F (Th17) is part of early-disease ME/CFS signatures (Hornig 2015); IL-17A is elevated in both Alzheimer's and depression @Kuring2023InflammatoryMood. This specific Th17/myeloid-hematopoiesis axis (G-CSF/GM-CSF/IL-17 family) converges across conditions, in contrast to the overall divergent ME/CFS (TNF-$alpha$/IL-4/TGF-$beta$/CRP @Strawbridge2019CFSInflammatory) vs AD (IL-17A/IL-1$alpha$/IL-10/G-CSF/IL-3) profiles.],
  citations: [@Kuring2026InflammatoryDementia @Kuring2023InflammatoryMood @Strawbridge2019CFSInflammatory @Montoya2017],
  mechanism: [Chronic inflammatory-CNS conditions may show a shared, co-elevated set of G-CSF/GM-CSF/IL-17 markers (grouped by observed correlation, not a proven shared regulatory node — G-CSF/GM-CSF are myeloid growth factors, IL-17A/F are T-cell-derived) even when their broader inflammatory profiles diverge. In ME/CFS this marker set may track fatigue/cognitive severity.],
  chapter-ref: [ch14d-cross-disease: @spec:th17-myeloid-shared-signal],
  prediction: [A comorbidity-screened ME/CFS cohort will show elevated G-CSF and GM-CSF with a Th17-correlated profile (raised IL-17F/IL-17A) tracking fatigue/cognitive severity. Falsified if comorbidity-screened ME/CFS cohorts show neither elevated G-CSF/GM-CSF nor a Th17-correlated signal.],
  treatment: [No clinical recommendation. If confirmed, identifies a specific measurable immune axis for biomarker and stratification use; anti-Th17/anti-IL-17 biologics would be research-stage probes only with no ME/CFS data.],
  limitation: [Cross-study marker panels differ; none run on comorbidity-screened ME/CFS cohorts. Inference from cross-disease panels, not direct ME/CFS replication. Severity applicability unknown. (Origin: /integrate-topic dementia-inflammation — brainstorm.)],
)

= Entries added 2026-08-10: AI Multi-Omics Modeling (BioMapAI) — Dysbiotic Crosstalk

#registry-entry(
  [Dysbiotic Microbiome-Immune-Metabolome Crosstalk with a Benzoate-to-Hippurate Axis in ME/CFS],
  type: "H",
  certainty: "0.30",
  evidence: [BioMapAI (n=249; 96 controls, 153 ME/CFS; 4-year longitudinal; 515 timepoints) integrated gut metagenomics, plasma metabolomics, immune profiling, blood labs, and 12 symptoms; classification AUC=0.99 with held-out + four external-cohort validation @Xiong2025BioMapAI. Connectivity map: decreased butyrate/BCAA pathways, increased tryptophan/benzoate pathways, heightened MAIT/gamma-delta T-cell IFN-gamma + granzyme A, increase in benzoate-to-hippurate linked to sleep/emotional/fatigue symptoms. Pillars individually supported: butyrate deficiency @Xiong2023multiomics; tryptophan/kynurenine diversion @Kavyani2022kynurenine; T-cell remodeling @Shahbaz2026single-cell-immune @Lee2025TcellActivation. The benzoate-to-hippurate axis itself has only indirect, neighbouring-population support (hippuric acid elevated in post-infectious syndromes @Brigo2025UremicMetabolites and fibromyalgia @Malatji2017FibromyalgiaMetabolomics — both tiny pilots, not ME/CFS replication). Symptom attributions and direction are model output, not held-out validated; the integrated axis is constrained by review (adversarial) to 0.30.],
  citations: [@Xiong2025BioMapAI @Xiong2023multiomics @Kavyani2022kynurenine @Shahbaz2026single-cell-immune @Lee2025TcellActivation @Brigo2025UremicMetabolites @Malatji2017FibromyalgiaMetabolomics],
  mechanism: [Hypothesis (direction of causation unresolved; simpler shared-driver alternative not excluded): gut dysbiosis may alter microbial-metabolite output (decreased SCFA/BCAA, increased tryptophan/benzoate) read by the immune system and reflected in plasma lipids/bile acids, with inflammatory innate-like T-cell activity (MAIT/gamma-delta IFN-gamma, granzyme A) contributing to symptom burden; benzoate-to-hippurate (hepatic glycine conjugation of microbial benzoate) as a possible readout. Reverse causation and dietary benzoate intake are unaddressed confounds.],
  chapter-ref: [ch15: @hyp:biomapai-dysbiotic-crosstalk-benzoate-hippurate; @ach:biomapai-multi-omics-integration; ch12: @sec:multi-omic-microbiome],
  prediction: [Independent ME/CFS cohort with paired metagenomics + plasma/urine metabolomics: (a) reduced butyrate/BCAA-producing taxa + reduced metabolites; (b) increased benzoate and hippurate; (c) significant positive correlation between urinary/plasma hippurate (or benzoate-pathway score) and fatigue/sleep/emotional severity — after adjusting for dietary benzoate intake and overall dysbiosis burden. If the axis is only a global-dysbiosis (or diet) marker, it should not independently predict symptom severity after those adjustments.],
  treatment: [No clinical treatment recommendation. If replicated after diet- and dysbiosis-adjustment, benzoate-to-hippurate could become a research readout of the microbial-immune interface — not yet a clinical monitoring metric.],
  limitation: [Symptom-specific biomarkers computed on the full dataset, not held-out validated. Single-country (US) cohort, n=249. Associative, not causal. Benzoate axis rests on one model plus small neighbouring-population pilots (Brigo n=41, Malatji n=18; not replication). Unaddressed reverse-causation and dietary-benzoate confound. Tension: model shows MAIT/gamma-delta ACTIVATION (per-cell function) while single-cell data show DEPLETION (frequency) in Long-COVID ME/CFS — possibly orthogonal readouts. Severity applicability unknown — cohort not stratified. (Origin: /integrate-topic ai-multiomics-mecfs-xiong2025.)],
)

#registry-entry(
  [A Cross-Layer Coordination Signature, Not Any Single Marker, Defines ME/CFS],
  type: "H",
  certainty: "0.35",
  evidence: [BioMapAI PCoA: each omics layer alone leaves patients largely indistinguishable from controls; only integration separates groups with high accuracy @Xiong2025BioMapAI. Consistent with discrepancy framework (single-resting-measurement domains miss the disease @syn:subjective-measurable-discrepancy-index). BUT integration can win via a technical concatenation of individually-weak main effects, requiring no cross-layer coordination; the paper does not report an interaction-versus-concatenation test. The strong "coordination rewiring" reading is contingent and unreplicated.],
  citations: [@Xiong2025BioMapAI],
  mechanism: [Contingent hypothesis: ME/CFS may be a pathological coordination (association) structure across compartments — normal correlated relationships between microbiome, immune system, and metabolome rewired even though each layer's marginal distribution is largely preserved. Alternative (simpler): a flat feature-concatenation model reproduces the integrated result with no interaction. The model alone cannot discriminate these.],
  chapter-ref: [ch15: @hyp:coordination-signature-defines-mecfs],
  prediction: [Independent multi-omics ME/CFS cohort, two baselines required: (a) each single omics layer alone fails to separate; (b) a FLAT feature-concatenation model is meaningfully worse than a model explicitly modeling cross-layer interactions. If concatenation matches the interaction model, the coordination reading collapses to additive main effects and is rejected; if a single layer discriminates as well as integration, the disease is better described by a single-compartment signature.],
  treatment: [No clinical recommendation. If confirmed after the concatenation control, biomarker strategy shifts from a single blood marker toward algorithms reading cross-layer relationship patterns; until then only "integration works better than any single layer" is defensible.],
  limitation: [The "coordination structure" is partly defined by the model architecture (may not be a natural-kind property); no interaction/permutation control reported; not severity-stratified; the observed integrated-vs-single-layer advantage is not evidence of coordination per se. Severity applicability unknown. (Origin: /integrate-topic ai-multiomics-mecfs-xiong2025 — brainstorm.)],
)

#registry-entry(
  [Longitudinal Symptom Stability Is Symptom-Specific: Stable Fatigue Core, Labile Emotional Component],
  type: "S",
  certainty: "0.25",
  evidence: [BioMapAI 3-4 year longitudinal data: fatigue persistently severe across years; emotional dysregulation highly variable/unstable @Xiong2025BioMapAI. Single (US) cohort, model-reconstructed/observed timecourse, not independently replicated. A non-biological alternative — coarse ordinal fatigue scales near ceiling (measurement artifact) and symptom-circularity — is not excluded.],
  citations: [@Xiong2025BioMapAI],
  mechanism: [Contingent: IF the pattern survives range-normalization and scale-artifact control, different symptoms may be driven by different biological timescales: stable driver (chronic metabolic or neuroimmune deficit) for fatigue; labile driver (fluctuating gut-metabolic state, autonomic reactivity, state-dependent inflammatory tone) for emotional symptoms. Measurement artifact (scale ceiling/coarseness) is the primary alternative.],
  chapter-ref: [ch15: @spec:longitudinal-symptom-specific-stability],
  prediction: [Prospective longitudinal cohort with continuous, range-normalized fatigue AND emotional scales over 12+ months: test-retest stability (ICC) significantly higher for fatigue than emotional items AFTER controlling for scale range; a stable biological measure correlates significantly more strongly with the time-stable fatigue score than the fluctuating emotional score. Falsified as biological if fatigue is as labile as emotional symptoms after scale control (i.e., the stability was a ceiling artifact).],
  treatment: [No clinical recommendation. If confirmed biologically, affects trial-design sampling frequency (stable vs fluctuating endpoints); does NOT justify single-visit clinical assessment of an individual patient.],
  limitation: [Single-cohort, model-derived; severity unknown; measurement-artifact explanation (scale ceiling/coarseness, symptom-circularity) not excluded; not replicated. (Origin: /integrate-topic ai-multiomics-mecfs-xiong2025 — brainstorm.)],
)

= Entries added 2026-08-10: Godlewska 7T MRS — Brain/Muscle Chemistry & Long COVID Divergence

#registry-entry(
  [Distinct Brain Neurochemical Signatures Distinguish ME/CFS from Long COVID (7T MRS)],
  type: "H",
  certainty: "0.50",
  evidence: [7T MRS head-to-head (24 ME/CFS, 25 long COVID, 24 HC): ME/CFS brain lactate elevated in both pgACC (p=0.004) and dACC (p=0.006); long COVID showed reduced total choline in dACC (p=0.0002); resting calf-muscle metabolites did not differ between groups @Godlewska2025MRS. The ME/CFS brain-lactate elevation is consistent with a 3-organic-lab replication cluster (Mount Sinai: @Murrough2010VentricularLactate, @Natelson2017Lactate; UAB: @Mueller2020MRS).],
  citations: [@Godlewska2025MRS @Murrough2010VentricularLactate @Natelson2017Lactate @Mueller2020MRS],
  mechanism: [ME/CFS and long COVID show separable anterior-cingulate neurochemistry (lactate elevation vs choline reduction) despite overlapping clinical symptoms; consistent with distinct underlying neurobiological mechanisms rather than a single pooled post-infectious fatigue. Brain lactate does not uniquely localise a cause (mitochondrial vs astrocyte-lactate-shuttle vs hypoperfusion vs inflammatory-cell glycolysis).],
  chapter-ref: [ch14d-cross-disease: @hyp:distinct-brain-neurochemistry-mecfs-longcovid; ch09: existing brain-lactate glial-cell environment @Godlewska2025MRS baseline],
  prediction: [A head-to-head 7T MRS replication will reproduce the divergence (ME lactate elevated, long COVID lactate not; vice versa for choline). Long COVID patients who later meet full ME/CFS criteria will shift toward the ME/CFS lactate-elevation signature. Concurrent perfusion imaging will resolve whether ME/CFS lactate tracks hypoperfusion (vascular) or persists with normal perfusion (mitochondrial/anabolic).],
  treatment: [No clinical recommendation. If confirmed, argues against pooling ME/CFS and long COVID in treatment trials and supports MRS as a stratification/mechanistic-readout tool (research-stage).],
  limitation: [Single-site 7T cohort, not yet independently replicated at 7T; cross-sectional (no causation); choline direction is region/age/condition-dependent (Pajuelo corpus-callosum increase @Pajuelo2024CorpusCallosum; Mueller cingulate increase @Mueller2020MRS) so should not be generalised. Severity applicability unknown -- cohort not severity-stratified. (Origin: /integrate-topic godlewska-7t-mrs-brain-muscle.)],
)

#registry-entry(
  [Long COVID Dorsal-Cingulate Choline Reduction: Coagulation and "Brain Fog" Substrate],
  type: "S",
  certainty: "0.35",
  evidence: [Reduced total choline (tCho) in dorsal anterior cingulate of long COVID patients (p=0.0002) @Godlewska2025MRS. Author-linked to the blood-clot/brain-fog association and to animal work showing choline can prevent intravascular coagulation. Purely associative and cross-sectional; no in-cohort coagulation assay and no causal demonstration. Direction heterogeneity: Pajuelo corpus-callosum choline increase in older patients @Pajuelo2024CorpusCallosum; Mueller cingulate choline increase in ME/CFS @Mueller2020MRS.],
  citations: [@Godlewska2025MRS @Pajuelo2024CorpusCallosum @Mueller2020MRS],
  mechanism: [Brain-region-specific choline deficit in long COVID may reflect altered membrane phospholipid metabolism; speculative link to a pro-coagulant local milieu relevant to cognitive symptoms via choline's role in the one-carbon/anticoagulation axis.],
  chapter-ref: [ch14d-cross-disease: @spec:long-covid-dacc-choline],
  prediction: [(1) Long COVID patients with low dACC choline will show elevated coagulation/fibrinolysis markers (D-dimer, fibrinogen, microclot assay) relative to those with normal choline. (2) If choline's anticoagulant role were causal, dietary choline supplementation would raise dACC choline and lower coagulation markers. Falsified if dACC choline is unrelated to coagulation markers and cognitive severity.],
  treatment: [No clinical recommendation; no evidence choline supplementation changes long COVID brain chemistry or symptoms.],
  limitation: [Associative, cross-sectional, single cohort; no coagulation co-measure; choline direction heterogeneous across regions/ages/conditions. Severity applicability unknown. (Origin: /integrate-topic godlewska-7t-mrs-brain-muscle.)],
)

= Entries added 2026-08-10: Dedicated Sickness/Torpor Neural Circuits & Symptom Persistence

#registry-entry(
  [Neuroinflammation-Activated Dedicated Sickness and Torpor Neural Circuits — a Hypothesis for ME/CFS Symptom Generation],
  type: "H",
  certainty: "0.40",
  evidence: [Komaroff & Dantzer 2025 (Cell Reports Medicine) propose the sickness-behavior and torpor framework @KomaroffDantzer2025SymptomPersistence: dedicated neural circuits -- area postrema to brainstem (suppresses eating/drinking/movement), organum vasculosum to ventromedial preoptic area (appetite suppression, warmth seeking, fever), and median preoptic nucleus to torpor (hypometabolic) -- are activated by neuroinflammation and generate stereotyped symptom bundles. The rodent circuits are well-established @Hrvatin2020TorporNeurons, @Machado2025PreopticSwitch, but application to chronic human ME/CFS is inferential and rests on a single review by the framework's originator, with no independent ME/CFS-cohort evidence; multiple rival readings (deconditioning, neural plasticity, the model not extending to inflammation-negative patients) are not currently distinguished.],
  citations: [@KomaroffDantzer2025SymptomPersistence @Hrvatin2020TorporNeurons @Machado2025PreopticSwitch @Tuomaala2026TSPOLongCovid],
  mechanism: [Neuroinflammation (whose presence in established ME/CFS is uncertain -- Omdal peripheral null, regional-not-global TSPO) could activate dedicated sickness/torpor circuits whose output is the ME/CFS symptom set. An important rival: the closest human neuroinflammatory data (limbic) do not correspond to the named area-postrema/preoptic circuits, so the human signal is indirect support at best.],
  chapter-ref: [ch18: @hyp:ch15-sickness-torpor-circuits; ch18: @lim:torpor-circuits-constraints],
  prediction: [The discriminating test must resolve a *specific* circuit (area-postrema→brainstem) tracking symptoms under a modality able to resolve millimeter-scale nuclei (ultra-high-field fMRI or higher-resolution tracers; current TSPO-PET cannot). Absence of any circuit-specific activation change with symptoms would falsify the dedicated-circuit (versus diffuse-inflammation or plasticity-maintained) claim. The neuroinflammation-input claim is separately refuted by consistent absence of neuroinflammatory signal in ME/CFS cohorts.],
  treatment: [Research-stage. Principal implied target is neuroinflammation (existing anti-neuroinflammatory rationale unchanged); no new test or drug follows from the dedicated-circuit framing. No ME/CFS dosing or efficacy data.],
  limitation: [Rodent-only circuits; zero direct human ME/CFS evidence; torpor-with-hypothermia phenotype not reproduced in ME/CFS; severity applicability unknown; all proposed tests research-only and unsuitable for severe patients. (Origin: /integrate-topic komaroff-dantzer-symptom-persistence.)],
)

#registry-entry(
  [Symptom Persistence Arises from Self-Reinforcing Vicious Cycles Across Underlying Abnormalities],
  type: "H",
  certainty: "0.45",
  evidence: [Komaroff & Dantzer 2025 synthesize bidirectional reinforcement among abnormalities (mitochondrial injury <-> inflammation; redox <-> energy; redox <-> endothelial; endothelial+NK+neuroinflammation; spike/fibrin pro-inflammatory epitope) as vicious cycles that perpetuate pathology and symptoms @KomaroffDantzer2025SymptomPersistence. Each individual connection is supported by the primary literature the review cites; the unified vicious-cycle model is the review's integrative claim and is consistent with but not directly proven as a closed loop in patients.],
  citations: [@KomaroffDantzer2025SymptomPersistence @Baraniuk2024NKCytotoxicity],
  mechanism: [Chronicity results not from one lesion but from persistent agents/antigens + defective resolution + reactivation + dysbiosis + autoimmunity + a defective circuit switch, amplified by positive-feedback loops among the biological abnormalities -- so that correcting any single abnormality may not break the cycle.],
  chapter-ref: [ch16: chronicity/amplifier synthesis],
  prediction: [If self-reinforcing vicious cycles sustain the illness, then (a) severity should correlate with the NUMBER of co-active abnormalities and bidirectional constraints, not any single marker; (b) therapies that break a single node should show partial but not complete remission; (c) residual unexplained variance should persist when any one abnormality is corrected. Falsified if correcting one specific abnormality reliably induces sustained remission in a substantial fraction of patients.],
  treatment: [Research-stage frame; argues for combination/multi-target strategies and for monitoring multiple abnormality axes. No specific clinical dosing recommendation.],
  limitation: [Integrative/synthesis claim (review), not a single testable primary finding; the closed-loop structure is inferred, not measured directly. Severity applicability unknown. (Origin: /integrate-topic komaroff-dantzer-symptom-persistence.)],
)

= Entries added 2026-08-10: Peripheral Blood Methylome as Long COVID vs ME/CFS Distinguishing Signature

#registry-entry(
  [Peripheral Blood Methylome Distinguishes Long COVID from ME/CFS While Sharing a Common Epigenetic Core],
  type: "S",
  certainty: "0.52",
  evidence: [Peppercorn et al. 2025 (RRBS of PBMCs, n=5 ME/CFS / n=5 Long COVID / n=5 HC, age/sex-matched, University of Otago) — ME/CFS 214 DMFs vs HC (145 hyper / 69 hypo), Long COVID 429 DMFs (281 hyper / 148 hypo); 118 DMFs shared with Pearson R=0.88; 26 of 118 differ by more than 10% between the two conditions; 6 show opposite-direction methylation @Peppercorn2025methylation. Single lab, small n, no independent replication (raw 0.52 discounted unchanged for ME/CFS population, weight 1.00).],
  citations: [@Peppercorn2025methylation],
  mechanism: [PBMC DNA methylation across ME/CFS and Long COVID share a common epigenetic core (Pearson R=0.88 on shared DMFs) yet retain condition-specific sites, of which six show opposite-direction changes; LC shows more abundant methylation changes, consistent with earlier disease stage (LC ~1 yr vs ME/CFS ~12 yr) or SARS-CoV-2-specific effects. PCA separates the three cohorts into distinct clusters.],
  chapter-ref: [ch14d cross-disease: @spec:methylene-mecfs-longcovid-distinguish; ch19: @spec:methylation-loss-consolidation; ch55: @oq:consolidation-directionality],
  prediction: [A stage-matched, larger (n≥50/group) methylation study with LC and ME/CFS at comparable time-from-onset should (i) reproduce the Pearson R=0.88 shared-makeup relationship, (ii) shrink the LC-vs-ME/CFS DMF amplitude gap when stage is matched, and (iii) determine whether the six opposite-direction DMFs replicate as condition-specific or collapse with stage matching. Falsified if stage-matched cohorts show no reproducible condition-specific DMFs.],
  treatment: [None yet — a diagnostic/differential-stratification hypothesis, not a treatment target. If the six opposite-direction DMFs replicate, they could support a blood-based test distinguishing LC from ME/CFS, but this is research-stage and unvalidated.],
  limitation: [Small n (5/5/5), single lab, no independent replication, cross-sectional (no directionality), PBMC proxy not tissue; stage mismatch (LC 1 yr vs ME/CFS 12 yr) confounds condition-specific vs time-from-onset attribution; opposite-direction DMFs not validated for diagnosis. Severity applicability unknown. (Origin: /integrate-topic peppercorn-methylation-landscapes.)],
)

= Entries added 2026-08-10: EP3R Stuck-Switch & Area-Postrema Gate (Komaroff-Dantzer re-run)

#registry-entry(
  [The EP3R "Stuck Switch" — a Candidate (Unproven) Nervous-System Persistence Mechanism],
  type: "S",
  certainty: "0.25",
  evidence: [Preoptic EP3 receptor neurons act as a two-way switch routing between fever (hypermetabolic) and torpor-like (hypometabolic) states in rodents @Machado2025PreopticSwitch. A speculation that a persistent (post-washout) failure of that switch could maintain a low-energy state without ongoing neuroinflammation -- offered as a partial reading of the Omdal null @KomaroffDantzer2025SymptomPersistence. Restates persistence in circuit vocabulary; no EP3R latch or desensitization demonstrated in any species or in ME/CFS (zero direct human evidence).],
  citations: [@Machado2025PreopticSwitch @KomaroffDantzer2025SymptomPersistence],
  mechanism: [Candidate lesion (EP3R desensitization, biased signaling, fever-arm failure) could leave the brain switch in an energy-conserving position; a simpler rival reading is that the sickness-behavior model simply does not extend to inflammation-negative patients, whose symptoms may have a different cause.],
  chapter-ref: [ch18: @spec:ep3r-stuck-switch],
  prediction: [Discriminating test is a reversible latch: transient PGE2 that persists as torpor output after ligand washout (bistability) in rodents; in humans, a maintained low defended temperature set-point with acute disengageability. PBMC EP3R is excluded as a CNS proxy. Falsified if no persistent reversible latch is demonstrable under washout, or no maintained set-point with acute disengageability in ME/CFS.],
  treatment: [Research/hypothesis-generation only. No switch-resetting intervention exists or is in trials; no clinical recommendation.],
  limitation: [Rodent-only; zero direct human evidence; torpor-with-hypothermia phenotype not reproduced in ME/CFS; not severity-stratified. (Origin: /integrate-topic komaroff-dantzer-symptom-persistence -- brainstorm re-run.)],
)

#registry-entry(
  [Area Postrema Autoantibody × GLP-1 Gate — an Untested Cross-Reactivity Hypothesis],
  type: "S",
  certainty: "0.20",
  evidence: [The area postrema is both a route for circulating GPCR autoantibody access to brainstem nuclei and a dense GLP-1 receptor region @Azcue2026GPCRautoAbs @KomaroffDantzer2025SymptomPersistence. The interference step requires an explicit, unsupported premise that ME/CFS GPCR autoantibodies (literature targets include adrenergic/muscarinic receptors) cross-react with or sterically impede GLP-1 receptors -- no such cross-family interaction has been shown. Co-location of two facts does not by itself entail an interaction.],
  citations: [@Azcue2026GPCRautoAbs @KomaroffDantzer2025SymptomPersistence],
  mechanism: [If (unsupported premise) GPCR autoantibodies interfered with GLP-1 receptor signaling at the area postrema, they could blunt GLP-1-dependent anti-inflammatory signaling and help sustain neuroinflammation. A simpler established mechanism (agonistic autoantibodies acting on their own receptors) already explains part of the autonomic symptom profile.],
  chapter-ref: [ch18: @spec:area-postrema-gpcr-glp1-gate],
  prediction: [Decisive test: purified ME/CFS patient IgG vs controls in competitive binding against labeled GLP-1 on area-postrema membranes. If no displacement, the competitive-interference claim is falsified. Clinical predictions (blunted GLP-1-induced nausea; stratified GLP-1-RA response) are confounded by vagal dysfunction/dysautonomia and cannot stand alone.],
  treatment: [Not a prescribing recommendation. No GLP-1-RA use in ME/CFS is trial-supported; GPCR-autoantibody testing is research-only; GLP-1 RAs risk reduced intake/weight loss and nausea-driven orthostatic worsening in comorbid POTS and severe ME/CFS.],
  limitation: [Cross-reactivity premise untested and mechanistically unmotivated; GPCR-autoantibody findings contested and single-source; not severity-stratified. (Origin: /integrate-topic komaroff-dantzer-symptom-persistence -- brainstorm re-run.)],
)

= Entries added 2026-08-10: Plasma-Cell Targeting (Daratumumab) Update — LLPC Source & NK-Depletion Limit

#registry-entry(
  [Viral dUTPase drives the TFH/activin-A axis that generates the antibody-secreting plasma cells daratumumab depletes],
  type: "H",
  certainty: "0.65",
  evidence: [EBV/HHV-6A dUTPases enhance TFH-cell differentiation and extrafollicular activities in ME/CFS, with ME/CFS patients showing elevated activin A and IL-21 correlating with anti-viral-dUTPase antibodies; EBV dUTPase induced marginal-zone B and invariant NKT-FH expansion in mouse spleen @Cox2022dUTPaseMECFS. Raw 0.65 (ME/CFS cohort, peer-reviewed, partially replicated via later dUTPase-antibody findings), discounted unchanged at weight 1.00.],
  citations: [@Cox2022dUTPaseMECFS],
  mechanism: [Persistent herpesvirus reactivation (via dUTPase, an early lytic protein) diverges the germinal-center response toward activin A/IL-21-driven extrafollicular antibody output, plausibly generating CD38+ long-lived plasma cells (LLPCs) that continue secreting pathogenic autoantibodies independent of ongoing B-cell cycling -- the cell type rituximab (CD20+) spares but daratumumab (anti-CD38) deletes @Cox2022dUTPaseMECFS.],
  chapter-ref: [ch33 sec-12 Daratumumab (Anti-CD38); ch19: @hyp:plasma-cell-sanctuary; ch32 sec-02h origin-elimination],
  prediction: [If this mechanism holds, long-lived autoantibody-producing cells in ME/CFS should be CD38+ and CD20−, and their depletion (daratumumab) should produce a sustained drop in the offending autoantibody titers with a response latency matching antibody decay (8--9 mo), as observed in the pilot. Falsified if daratumumab responders show no fall in the candidature autoantibody, or if non-responders retain elevated titers with intact CD38+ plasma cells.],
  treatment: [Research-stage only. Narrows the humoral-autoimmunity target to the CD38+ long-lived plasma cell and supports plasma-cell-directed agents (daratumumab) over B-cell depletion in the autoantibody-positive subgroup; none of this is a prescribing recommendation.],
  limitation: [Direct dUTPase→LLPC causality not experimentally proven (mouse used EBV dUTPase only); TFH/activin-A axis not independently replicated; dUTPase antibodies could reflect reactivation rather than steady-state LLPC output; not severity-stratified. NK data (Ray 2026) constrain any planned depletion by warning that CD38+ NK co-deletion may blunt response in already-NK-poor patients @Ray2026nkLongCOVID. (Origin: /integrate-topic daratumumab update.)],
)

= Entries added 2026-08-10: Biofabricated 3D Skeletal Muscle & Circulating Serum Factor

#registry-entry(
  [A circulating serum factor in ME/CFS and Long COVID reproduces a biphasic muscle metabolic phenotype in otherwise-healthy biofabricated tissue],
  type: "H",
  certainty: "0.26",
  evidence: [Healthy 3D biofabricated skeletal muscle exposed in vitro to ME/CFS and Long COVID patient sera shows up-regulated glycolysis, mitochondrial hyperfusion, elevated oxygen consumption early, then contractile weakness and toroidal mitochondrial fragmentation by 96--144 h @Mughal20253dMuscleSera. The serum-transfer phenomenon has prior support across models @Fluge2016PDH @Schreiner2020HHV6MitoME @Appelman2024MusclePEM; anti-mitochondrial antibodies are excluded as the mediator @Nilsson2020NoMitoAb. Raw 0.65, discounted 0.26 by in-vitro population weight 0.40.],
  citations: [@Mughal20253dMuscleSera @Fluge2016PDH @Schreiner2020HHV6MitoME @Appelman2024MusclePEM @Nilsson2020NoMitoAb],
  mechanism: [A serum-borne mediator (candidate classes: cytokines, HHV-6 microRNA, exosomes, viral fragments) drives pyruvate dehydrogenase impairment and a compensatory glycolytic/hypermetabolic adaptation that decompensates into mitochondrial fragmentation and reduced contractile capacity -- reproducing in isolated healthy muscle the glycolytic shift documented in patient biopsies, independent of deconditioning, neural outflow, or vascular factors.],
  chapter-ref: [ch20 Family 17: @hyp:serum-factor-biphasic-muscle; ch07 sec-21: @oq:muscle-trap-hyper-vs-hypometabolic],
  prediction: [Depleting or neutralizing the putative serum factor (immunoadsorption, specific cytokine/exosome blockade) should prevent or reverse the derangement -- attenuated glycolysis, preserved mitochondrial integrity -- in the 3D model, and measurably reduce post-exertional muscle fatigue if translatable. Falsified if patient sera no longer induce the biphasic response with the factor removed.],
  treatment: [Not a prescribing recommendation. Identifies the circulating mediator as a research target (immunoadsorption, cytokine blockade) that is still preclinical; no clinical mitigation is established.],
  limitation: [Anchor finding is single in-vitro study (unpopulated; not independently replicated); not severity-stratified; mediator identity unknown; in-vitro population weight 0.40 caps clinical relevance. (Origin: /integrate-topic biofabrication-mughal-3d-muscle-cfs-sera.)],
)

#registry-entry(
  [Biofabricated 3D skeletal muscle as a functional ex-vivo assay for serum-borne muscle pathology],
  type: "S",
  certainty: "0.28",
  evidence: [A validated 3D biofabrication platform has been used to expose healthy muscle to patient sera and produce a mechanistic metabolic readout @Mughal20253dMuscleSera, built on platform validation in Duchenne MD and drug screening @FernandezGaribay2022XenoMuscle. Raw 0.70, discounted 0.28 by in-vitro population weight 0.40.],
  citations: [@Mughal20253dMuscleSera @FernandezGaribay2022XenoMuscle],
  mechanism: [If the biphasic serum response is reproducible and patient-specific, the biofabricated tissue provides a medium-throughput functional endophenotype -- a measurable readout of whether an individual's serum impairs muscle metabolism -- usable to screen candidate circulating mediators and modulators before animal or human trials.],
  chapter-ref: [ch20: @spec:3d-biofab-muscle-platform],
  prediction: [A blinded cohort of ME/CFS, Long COVID, and healthy sera should yield a biphasic muscle response that is significantly more frequent/severe in patient versus control sera and correlates with reported PEM or fatigue severity.],
  treatment: [Research tool only; not a therapeutic proposal.],
  limitation: [Diagnostic utility, inter-lab reproducibility, and correlation with clinical severity are unproven; lacks neural/immune/vascular context; not severity-stratified. (Origin: /integrate-topic biofabrication-mughal-3d-muscle-cfs-sera.)],
)

#registry-entry(
  [The in-vitro serum response is a three-phase sequence (PDH compensation → cofactor exhaustion → mitochondrial collapse), not a static state],
  type: "S",
  certainty: "0.30",
  evidence: [Biofabricated 3D skeletal muscle exposed to patient serum shows up-regulated glycolysis and mitochondrial hyperfusion at 48 h, then toroidal fragmentation and contractile failure at 96--144 h @Mughal20253dMuscleSera; patient sera also drive PDH-related myoblast metabolic shift @Fluge2016PDH. The phase decomposition is an interpretation reconciling short-exposure hypermetabolic and long-exposure hypometabolic findings; raw 0.30, discounted from in-vitro weight.],
  citations: [@Mughal20253dMuscleSera @Fluge2016PDH],
  mechanism: [Serum-driven pyruvate-dehydrogenase inhibition forces compensatory glycolysis and substrate shift (Phase I); sustained high-flux glycolysis depletes cofactor and antioxidant pools (NAD⁺/NADH, thiamine pyrophosphate, glutathione) (Phase II); exhaustion tips into mitochondrial fragmentation and contractile failure (Phase III) -- reconciling ostensibly contradictory hypermetabolic and hypometabolic bodies of evidence into one temporal cycle that maps onto the PEM time-course.],
  chapter-ref: [ch07 sec-21: @spec:pdh-three-phase-cascade],
  prediction: [Serial PDH activity, NAD⁺/NADH, and mitochondrial morphology measurements in the 3D model must show PDH decline first, then cofactor depletion, then fragmentation -- any different ordering falsifies the model.],
  treatment: [Not a prescribing recommendation. Suggests phase-specific, mechanistically-motivated candidate metabolic support (thiamine/riboflavin/alpha-lipoic acid, tested in-vitro first); no clinical use established.],
  limitation: [Single un-replicated in-vitro study; phase sequence not directly measured as a continuous trajectory; not severity-stratified. (Origin: /integrate-topic biofabrication-mughal-3d-muscle-cfs-sera -- brainstorm 1.1.)],
)

#registry-entry(
  [The circulating serum factor is likely a multi-component cocktail rather than a single molecule],
  type: "S",
  certainty: "0.22",
  evidence: [The biphasic response engages at least four distinct processes (PDH inhibition, calcium dysregulation, mitochondrial fission, contractile impairment), which no single species plausibly drives @Mughal20253dMuscleSera; anti-mitochondrial antibodies are excluded as the sole mediator @Nilsson2020NoMitoAb; serum transfers a multi-faceted antiviral-metabolic state @Schreiner2020HHV6MitoME. Discounted from in-vitro/indirect evidence.],
  citations: [@Mughal20253dMuscleSera @Nilsson2020NoMitoAb @Schreiner2020HHV6MitoME],
  mechanism: [A concurrent set of mediators -- a PDH-inhibitory cytokine (TNFα/IL-6), a mitochondrial-fission or cell-danger signal (e.g. HHV-6 microRNA), a calcium/ion-channel disruptor, and an inflammatory/exosomal danger signal -- rather than one molecule, explains why removing any single ingredient may fail to rescue the muscle phenotype.],
  chapter-ref: [ch20 Family 17: @spec:serum-factor-multicomponent],
  prediction: [Serum fractionation should show that no single fraction (e.g. exosomes alone, a single cytokine) recapitulates the full biphasic phenotype; falsified if one isolated fraction reproduces the complete picture.],
  treatment: [Not a prescribing recommendation. Argues against single-cytokine-target strategies and toward broader serum-factor removal (immunoadsorption) as the research direction; no clinical use.],
  limitation: [Structurally motivated inference, not directly demonstrated; mediator identity unknown; not severity-stratified. (Origin: /integrate-topic biofabrication-mughal-3d-muscle-cfs-sera -- brainstorm 1.3.)],
)

#registry-entry(
  [Serum fractionation of ME/CFS sera is the highest-priority experiment to identify the circulating mediator],
  type: "OQ",
  certainty: "n/a",
  evidence: [The unknown serum mediator must be narrowed from an anonymous class to a molecular species; fractionation by size, heat-lability, nuclease-sensitivity, and immunoglobulin depletion, tested on the 3D model, is the decisive experiment @Mughal20253dMuscleSera @Fluge2016PDH @Schreiner2020HHV6MitoME @Nilsson2020NoMitoAb.],
  citations: [@Mughal20253dMuscleSera @Fluge2016PDH @Schreiner2020HHV6MitoME @Nilsson2020NoMitoAb],
  mechanism: [Fractionating serum and applying each fraction to biofabricated muscle with quantitative readouts (lactate efflux, PDK mRNA, mitochondrial morphology, contractile force) identifies which molecular class transmits the metabolic pathology; a parallel blinded ME/CFS vs LC vs healthy comparison tests whether the assay discriminates conditions.],
  chapter-ref: [ch20: @oq:serum-fractionation-mediator],
  prediction: [The active mediator class will be recoverable, and patient sera will induce a fraction-dependent biphasic response reproducibly; falsified if no fraction reproduces the phenotype in a validated assay.],
  treatment: [Research-direction formulation; not a treatment proposal.],
  limitation: [Requires replication of the anchoring in-vitro platform and individual (non-pooled) patient sera; not yet performed. (Origin: /integrate-topic biofabrication-mughal-3d-muscle-cfs-sera -- brainstorm 2.1.)],
)

#registry-entry(
  [Toroidal mitochondrial fragmentation as a candidate disease-specific ultrastructural signature in ME/CFS muscle],
  type: "S",
  certainty: "0.20",
  evidence: [Biofabricated 3D muscle exposed to patient serum shows ring-shaped (toroidal) mitochondrial fragmentation at the decompensation phase @Mughal20253dMuscleSera, a morphology distinct from normal fission and linked to Drp1 over-activation/Opa1 loss; whether it generalizes to patient biopsies is untested. Discounted from in-vitro evidence.],
  citations: [@Mughal20253dMuscleSera @Charlton2025MusclePEMReview],
  mechanism: [A stress-specific mitochondrial morphology distinct from normal fission, plausibly reflecting Drp1 over-activation and Opa1 loss; if reproduced in patient-muscle EM and absent from the deconditioning bed-rest phenotype and inflammatory myopathy, it could serve as an objective, self-report-independent microscope-based marker of ME/CFS muscle pathology.],
  chapter-ref: [ch20 Family 17: @spec:toroidal-mitochondrial-signature],
  prediction: [Electron microscopy of ME/CFS patient muscle biopsies should show toroidal mitochondria at a higher rate than bed-rest-treated healthy muscle and age-matched controls; falsified if toroidal forms are equally common in bed-rest or healthy tissue.],
  treatment: [Not a prescribing recommendation. If toroidal morphology proves irreversible, it would reinforce energy pacing as tissue preservation rather than mere symptom control; no clinical intervention.],
  limitation: [Morphology seen in one in-vitro study; may be an artifact of the culture system; biopsy confirmation and specificity untested; not severity-stratified. (Origin: /integrate-topic biofabrication-mughal-3d-muscle-cfs-sera -- brainstorm 1.2.)],
)

= Entries added 2026-08-10: Hibernation Arousal Biology as a Drug-Discovery Resource

#registry-entry(
  [Hibernation Arousal Machinery as a Cross-Species Resource for the ME/CFS Low-Energy State],
  type: "S",
  certainty: "0.40",
  evidence: [Hibernating mammals exhibit a reversible, spontaneously-arousing torpor state driven by conserved signals: central adenosine A1-receptor activation induces torpor in a non-hibernating rat @Shimaoka2018A1ARHypothermia; arachidonic-acid -> PPAR-alpha/TRPV-Ca2+ is an arousal lipid regulator @Wang2026T2TArachidonic; mTORC1 reactivation is a conserved metabolic switch @Wu2021mTORMetabolicStress; BAT UCP1 thermogenesis drives arousal @Hunstiger2023NSTHibernation; non-neuronal choroid-plexus sensors may initiate arousal @Markussen2024ArousalChoroid; and non-hibernating mammalian cells retain a latent "hibernation-like" adaptive-pausing program @Jobava2021AdaptivePausing. All model-system/cross-species (heavily discounted); no ME/CFS human data.],
  citations: [@Shimaoka2018A1ARHypothermia @Wang2026T2TArachidonic @Wu2021mTORMetabolicStress @Hunstiger2023NSTHibernation @Markussen2024ArousalChoroid @Jobava2021AdaptivePausing @Duffy2022ArousalOxidative],
  mechanism: [The arousal/recovery machinery is a (reversible) energy-state-switch resource whose signals (mTORC1, ISR/adaptive-pausing, arachidonic-acid/PPAR-alpha, A1AR-as-entry/A2A-as-arousal-shift) overlap the paper's existing ISR/mTORC1 content (ch07 @spec:pem-isr and ISR assay content); it contributes a specific assay (polysome-profile) and a cross-species precedent that ISR/pausing is reversible, rather than a distinct novel mechanism.],
  chapter-ref: [ch18: @spec:hibernation-arousal-resource; ch07 ISR cross-ref @spec:pem-isr],
  prediction: [A discriminating test with a matched-sedentary control arm: patient-derived ME/CFS PBMCs/iPSC cells should show a reduced polysome:monosome ratio and stalled-initiation-codon mRNAs relative to both healthy AND matched-sedentary controls, partially reversible on ISR inhibition (ISRIB) or mTORC1 reactivation beyond the sedentary-control component. A normal polysome profile falsifies pausing engagement; a positive-only-vs-healthy (not sedentary) result is ambiguous. Research prediction only.],
  treatment: [None. Basic-science drug-discovery resource; no clinical recommendation. Interbout arousal increases oxidative damage @Duffy2022ArousalOxidative -- a safety caveat gating any future therapeutic extrapolation.],
  limitation: [All model-system/cross-species (translation gap); no ME/CFS human data; torpor is largely a small-mammal adaptation (primate hibernation rare -- dwarf lemur @Blanco2024DwarfLemur). Severity applicability unknown. (Origin: /integrate-topic hibernation-biology-torpor-arousal.)],
)

= Entries added 2026-08-10: Post-COVID New-Onset ME/CFS Risk Sustained to Four Years

#registry-entry(
  [SARS-CoV-2 infection raises new-onset ME/CFS risk, persisting up to four years post-infection],
  type: "H",
  certainty: "0.75",
  evidence: [A large electronic health record cohort ($n = 147{,}377$; Montefiore) found elevated new-onset ME/CFS risk sustained to four years after SARS-CoV-2 infection, adjusted hazard ratio 1.46 (hospitalized) and 1.56 (non-hospitalized) versus 111{,}301 controls @Hadidchi2025CFSrisk. Directionally consistent with RECOVER ($n = 11{,}785$, approx. 2.8-fold incidence, IOM criteria) @RECOVER2025, the CDC INSPIRE cohort ($n = 4{,}376$) @Unger2024MECFSinspire, and a CDC fatiguing-illness cohort ($n = 13{,}611$; outcome is post-COVID fatigue, not ME/CFS criteria) @Vu2024FatiguePostCovid. Raw 0.75 (ME/CFS cohort, peer-reviewed, large n), discounted unchanged at weight 1.00.],
  citations: [@Hadidchi2025CFSrisk @RECOVER2025 @Unger2024MECFSinspire @Vu2024FatiguePostCovid],
  mechanism: [An acute SARS-CoV-2 infection triggers a post-infectious process that, in a susceptible subset, resolves into chronic ME/CFS -- consistent with the post-infectious trigger model established for Epstein-Barr virus and SARS-CoV-1 @Hickie2006postinfectious @Moldofsky2011PostSARS. The four-year persistence argues against a transient pandemic-era effect and for a sustained post-infectious pathophysiology. None of the acute-phase biomarkers tested (ferritin, D-dimer, LDH, CRP) discriminated converters, separating acute inflammatory markers from post-acute predictors @Hadidchi2025CFSrisk.],
  chapter-ref: [ch01 sec-04: @subsec:risk-factors, @subsec:prevalence; ch14d: @sec:cross-disease; ch06: @sec:onset],
  prediction: [ME/CFS incidence after SARS-CoV-2 should remain above pre-pandemic baseline for several years post-infection in other large cohorts with comparable follow-up; the four-year hazard-ratio elevation should replicate. Falsified if cohorts with $\ge$4-year follow-up find the excess risk decays to baseline by year two to three, or if the finding reflects EHR/ascertainment artifact rather than true new-onset disease.],
  treatment: [None -- epidemiological risk finding, not an intervention. Implies post-COVID monitoring: patients with persisting post-acute symptoms should be assessed for ME/CFS criteria and managed per standard ME/CFS guidance; no novel treatment is indicated.],
  limitation: [The four-year horizon is single-study (not yet directly replicated -- comparators have 6-month to 2-year follow-up); EHR ICD-coded outcome underestimates true ME/CFS and cannot confirm diagnostic criteria; pre-COVID baseline ME/CFS status was not excluded; severity applicability unknown -- cohort not severity-stratified. (Origin: /integrate-topic hadidchi2025-cfs-me-4yrs-post-covid.)],
)

#registry-entry(
  [Post-acute (not acute) iron dynamics as the temporal predictor of post-COVID ME/CFS conversion],
  type: "H",
  certainty: "0.40",
  evidence: [The Hadidchi null that acute-phase biomarkers (ferritin, D-dimer, LDH, CRP) do not predict post-COVID ME/CFS conversion, combined with the iron-redox temporal phase-shift model @Hadidchi2025CFSrisk @Hanson2024iron @Sonnweber2022CovILD @Kavyani2023Hepcidin, constrains the converter-discriminating window to the post-acute transition (weeks 2--12 onward) rather than the acute phase.],
  citations: [@Hadidchi2025CFSrisk @Hanson2024iron @Sonnweber2022CovILD @Kavyani2023Hepcidin],
  mechanism: [Acute inflammatory hypoferremia (IL-6 -> hepcidin spike) is universal and non-discriminatory; converters diverge from recoverers in the post-acute transition as hepcidin falls and functional iron deficiency (elevated ferritin, low TSAT) emerges -- so a converter-predicting blood test is expected at 3--6 months, not day 0--30.],
  chapter-ref: [ch14d: @hyp:postcovid-postacute-iron-prediction],
  prediction: [A longitudinal study measuring ferritin, TSAT, hepcidin at 1, 3, 6, 12 months post-COVID must show 3-month (not 1-month) iron trajectories separating future ME/CFS converters (IOM-2015) from recoverers, e.g. AUC > 0.70. Falsified if all post-acute timepoints are non-predictive.],
  treatment: [None -- research/diagnostic prediction, not an intervention. If validated, an approx. \$20 ferritin+TSAT measurement at the 3-month post-COVID visit could flag patients for ME/CFS monitoring.],
  limitation: [No existing longitudinal post-COVID iron-panel study; severity applicability unknown (incidence cohorts not severity-stratified); single-study null. (Origin: /integrate-topic hadidchi2025-cfs-me-4yrs-post-covid -- Phase-4 brainstorm idea 1.1.)],
)



= Entries added 2026-08-10: ch39 Healthcare-Systems-Policy (retroactive registry completion)

#registry-entry(
  [Medical Education Reform — What Would Move the Needle?],
  type: "OQ",
  certainty: "0.50",
  evidence: [ch39 documents a medical-education deficit but no intervention studies; no study tests whether adding ME/CFS content to curricula changes diagnosis/referral/outcomes @Bateman2021Mayo. A mandatory-CME model (e.g., opioid/implicit-bias-mandate-style) is proposed but never trialed. (Certainty: descriptive evidence only; no intervention).],
  citations: [@Bateman2021Mayo],
  mechanism: [The education deficit is self-perpetuating — physicians untrained in ME/CFS cannot recognize it or teach the next generation; reform requires evidence-tested interventions, not only aspirational recommendations.],
  chapter-ref: [ch39: @oq:medical-education-reform],
  prediction: [A CME/curriculum intervention should measurably change diagnosis rate, referral pattern, or outcome (vs. no-intervention control); absence of change would indicate the barrier is structural, not educational.],
  limitation: [No prospective intervention data in ME/CFS; severity applicable across all levels. (ch39, prior cycle.)],
)

#registry-entry(
  [Diagnostic Delay as a Healthcare-System Metric (iatrogenic harm)],
  type: "H",
  certainty: "0.55",
  evidence: [Average ME/CFS diagnostic delay 5-10 years across surveys @Bateman2021Mayo; delay is iatrogenic harm (inappropriate GET/psychiatric misdiagnosis during the gap, employment/savings loss, repeated invalidation). Consistent across multiple surveys; no prospective delay-to-harm study.],
  citations: [@Bateman2021Mayo],
  mechanism: [Diagnostic delay exposes patients to harmful recommendations and invalidation; reducing delay is a low-cost "treatment" (each month of delay avoided is a month of appropriate care).],
  chapter-ref: [ch39: @hyp:diagnostic-delay-harm],
  prediction: [A registry linking diagnostic delay (months) to later QoL/employment outcomes should show a monotonic relationship (delay -> harm).],
  limitation: [Cross-sectional survey evidence; no prospective study; severity applicability all, greatest for those progressing to severe. (ch39, prior cycle.)],
)

#registry-entry(
  [Do Specialist Clinics Improve Outcomes?],
  type: "OQ",
  certainty: "N/A",
  evidence: [Zero RCTs/controlled comparisons of specialist ME/CFS clinics (BHC, Stanford, OMI, Hadassah, Charite) vs. primary care on diagnostic accuracy, functional outcomes, or satisfaction. Recommendation for specialist care rests on expert consensus/patient preference, not demonstrated superiority.],
  citations: [@Bateman2021Mayo],
  mechanism: [Whether specialty structure improves outcomes is unmeasured; clinic existence creates an implicit standard of care that most patients cannot access, without evidence it is superior.],
  chapter-ref: [ch39: @oq:specialist-clinic-evidence; ch39 BHC care-delivery example],
  prediction: [A controlled comparison (or quasi-experiment, @oq:specialist-clinic-quasiexperiment) of specialist vs. well-informed primary care; null would mean current unequal access is not justified by outcomes.],
  limitation: [Evidence gap identification, not a factual claim; severity most critical for severe/very-severe. (ch39, prior cycle.)],
)

#registry-entry(
  [Co-Production as a Healthcare Design Principle],
  type: "S",
  certainty: "0.50",
  evidence: [Qualitative co-production study (n=8) with ME/CFS patients identified preference for multidisciplinary teams, mHealth symptom tracking, PEM-aware pathways @Thornton2025energy. Small/unvalidated in ME/CFS; methodology sound generically.],
  citations: [@Thornton2025energy],
  mechanism: [Designing services WITH patients (co-production) may better meet energy-limited, multidisciplinary, PEM-aware needs than standard clinic-centered design.],
  chapter-ref: [ch39: @spec:coproduction],
  prediction: [Co-produced ME/CFS services should show higher retention/satisfaction than non-co-designed services.],
  limitation: [n=8 qualitative; not ME/CFS-validated; severity most important for severe/very-severe. (ch39, prior cycle.)],
)

#registry-entry(
  [The Universal Access Null Hypothesis — What If Reform Doesn't Change Outcomes?],
  type: "OQ",
  certainty: "N/A",
  evidence: [If all barriers removed (education, delay, guidelines, specialist access, disability, invalidation), would outcomes improve? Partly refuted (reducing delay/GET-avoidance almost certainly prevents iatrogenic harm) but not for benefit (no evidence any care model improves long-term function).],
  citations: [@Bateman2021Mayo],
  mechanism: [Distinguishes removing HARM (GET, invalidation, benefit denial — evidence-backed) from providing BENEFIT (specialist care, co-production, multidisciplinary — untested).],
  chapter-ref: [ch39: @oq:universal-access-null],
  prediction: [Reform separating harm-removal from benefit-provision; benefit claims remain untested until controlled comparisons exist.],
  limitation: [Descriptive/qualitative health-services evidence; no care-model comparative studies. (ch39, prior cycle.)],
)

#registry-entry(
  [Diagnostic Desert — Geographic Access as a Self-Reinforcing Trap],
  type: "H",
  certainty: "0.45",
  evidence: [10x variation in ME/CFS diagnosis across English ICBs @samms2025unequalaccess; PEM makes travel an active harm (radius constraint shorter than any other chronic disease), producing a self-reinforcing desert (fewer diagnoses -> apparent low prevalence -> no deployment -> fewer access).],
  citations: [@samms2025unequalaccess],
  mechanism: [PEM-adjusted travel impedance (distance x PEM severity) predicts diagnosis probability better than raw distance, and is ME/CFS-specific (fibromyalgia, lacking PEM barrier, shows weaker clustering).],
  chapter-ref: [ch39: @hyp:diagnostic-desert],
  prediction: [PEM-adjusted distance from nearest specialist inversely correlates with ICB diagnosis rate, stronger for ME/CFS than fibromyalgia; opening a clinic in a desert should produce a diagnostic surge.],
  limitation: [Geographic variation documented; the trap mechanism is novel/untested; severity most relevant for severe/very-severe. (ch39, prior cycle.)],
)

#registry-entry(
  [The Guideline Cascade Duration — Contested Diseases Have Longer Implementation Gaps],
  type: "S",
  certainty: "0.35",
  evidence: [Evidence-to-practice lag averages ~17 years; contested illnesses likely longer (pre-existing beliefs, no specialty champions, hard-to-audit negative recommendations). German G-BA statutory directive is a natural experiment.],
  citations: [@Bateman2021Mayo],
  mechanism: [For contested diseases, guideline uptake is systematically delayed: belief revision, absence of specialty champions, and negative (GET-withdrawal) recommendations are harder to audit than positive ones.],
  chapter-ref: [ch39: @spec:guideline-cascade-duration],
  prediction: [German physicians show higher PEM-concern awareness than UK at matched time-from-publication (Germany: binding directive vs. UK advisory NICE 2021).],
  limitation: [Implementation-science support is general; contested-illness amplification novel; NICE-2021 cascade unobserved; all severity. (ch39, prior cycle.)],
)

#registry-entry(
  [Healthcare Invalidation x PEM Synergy — a Bootstrap Trap Preventing Care Re-Entry],
  type: "S",
  certainty: "0.40",
  evidence: [Invalidation (Bontempo 2025) drives healthcare avoidance; PEM prevents clinic participation @Bontempo2025invalidation. Interaction: too-traumatized-to-trust AND too-fatigued-to-shop = bootstrap trap, even when good care becomes available.],
  citations: [@Bontempo2025invalidation],
  mechanism: [Past invalidation + PEM (provider-searching is physiologically costly) keeps the most-harmed patients outside the system; reform investments may preferentially benefit milder patients.],
  chapter-ref: [ch39: @spec:invalidation-pem-trap],
  prediction: [When a new specialist opens, the first 50 patients will have lower baseline invalidation scores and milder PEM than the regional ME/CFS population; refuted if avoidance does not interact with PEM to predict time-to-specialist-contact.],
  limitation: [Both mechanisms individually documented; synergy inferred not directly observed; severity most critical for long-duration severe patients. (ch39, prior cycle.)],
)

#registry-entry(
  [The NICE 2021 Natural Experiment — did UK practice change?],
  type: "OQ",
  certainty: "0.75",
  evidence: [NICE NG206 (Oct 2021) withdrew GET and recognized PEM; UK centralized data (CPRD ~20m patients) makes an interrupted-time-series answerable: pre-NICE vs post-NICE on diagnoses/GET-proxy-referrals/delay, with fibromyalgia+RA controls @samms2025unequalaccess.],
  citations: [@samms2025unequalaccess],
  mechanism: [Guideline-attributable change detected by structural break in referral/exercise patterns for ME/CFS but not controls; if no break, implementation-gap concern confirmed.],
  chapter-ref: [ch39: @oq:nice-natural-experiment],
  prediction: [Structural break in ME/CFS referral/diagnosis patterns post-NICE-2021 vs. controls; absence confirms the implementation gap.],
  limitation: [Feasibility high (standard method, data exist); the study has not yet been run. (ch39, prior cycle.)],
)

#registry-entry(
  [The Specialist Clinic Quasi-Experiment — distance as instrument],
  type: "OQ",
  certainty: "0.55",
  evidence: [Geographic proximity to specialist clinic as instrumental variable (PEM-adjusted distance); two-stage least squares estimates clinic-use effect on delay/function/PE-related ED visits, with MS comparator.],
  citations: [],
  mechanism: [If specialist clinics improve outcomes, distance->use->better function; if null (@oq:specialist-clinic-evidence), apparent benefit reflects selection (wealthier/milder/health-literate reach them).],
  chapter-ref: [ch39: @oq:specialist-clinic-quasiexperiment],
  prediction: [Two-stage: PEM-adjusted distance predicts clinic use; clinic use predicts diagnostic delay, functional status, and PEM-ED visits; controls for selection by severity.],
  limitation: [Feasibility reasonable (UK data exist; US richer on claims, poorer on function); un-run. (ch39, prior cycle.)],
)

#registry-entry(
  [The Medical Education Pilot Trial — does teaching doctors change what they do?],
  type: "OQ",
  certainty: "0.50",
  evidence: [Cluster-RCT (n=20-30 practices, 1:1) of a 2-hour ME/CFS module (criteria, PEM, guidelines, EHR tool) vs. usual care; primary outcome new ME/CFS diagnoses per 10k patients over 18 months; powered to detect a doubling.],
  citations: [],
  mechanism: [If education raises knowledge but not diagnosis rate, the barrier is structural (time, referral-pathway absence), not educational — upstream-failure model would need revision.],
  chapter-ref: [ch39: @oq:education-pilot-trial],
  prediction: [Education arm shows higher ME/CFS diagnosis rate; absence implies structural (not educational) barrier.],
  limitation: [18-month follow-up may be too short (delay averages 5+ years); feasible but un-run. (ch39, prior cycle.)],
)

#registry-entry(
  [The PEM-Proof Care Delivery Trial — visits designed around what ME/CFS does to patients],
  type: "OQ",
  certainty: "0.55",
  evidence: [RCT (n=200 newly diagnosed, two arms, identical clinical content) comparing PEM-avoiding delivery (telehealth, async messaging, actigraphy, coordinator, energy-conservation pre-visit) vs. standard in-person clinic; primary SF-36 physical function at 12 months, secondary PEM frequency.],
  citations: [],
  mechanism: [If PEM-avoiding delivery is superior on functional outcomes, PEM-aware delivery is a clinical-effectiveness lever, not just a preference; severe/housebound hypothesized to benefit most.],
  chapter-ref: [ch39: @oq:pem-proof-trial],
  prediction: [PEM-avoiding arm shows better SF-36 physical function / fewer PEM episodes at 12 months than standard care.],
  limitation: [Blinding to delivery channel impossible (actigraphy as objective check); feasible but un-run. (ch39, prior cycle.)],
)

= Entries added 2026-08-11: Fatigue–PEM Relationship (definitional core + PEM-without-fatigue development)

#registry-entry(
  [PEM Is a Multi-Symptom Cascade Extending Beyond Simple Fatigue],
  type: "H",
  certainty: "0.60",
  evidence: [Meta-analytic odds ratio ~10.4 for PEM in ME/CFS vs controls @Brown2020metaPEM; factor analysis in n=2,308 loads PEM as a distinct primary factor separable from cognitive/sleep domains @Conroy2023empirical; exploratory factor analysis shows the fatigue component of PEM itself has two sub-components (generalized and muscle-specific) @McManimen2019deconstruct; PEM-specific instruments (DSQ-PEM) retain discriminant validity against fatigue scales @Kuczyk2025DSQPEM. Replicated across factor-analytic, meta-analytic, and psychometric lines.],
  citations: [@Brown2020metaPEM, @Conroy2023empirical, @McManimen2019deconstruct, @Kuczyk2025DSQPEM],
  mechanism: [PEM is a multi-effector post-exertional cascade; fatigue is one component readout (itself multi-faceted) among several; this supports that PEM extends beyond simple fatigue, but does not by itself establish that PEM can occur with zero fatigue.],
  chapter-ref: [ch03 sec-01-pem: @ach:pem-distinct-from-fatigue],
  prediction: [A within-subject crash time-series will determine whether crashes dominated by cognitive/autonomic/pain symptoms can occur with fatigue absent (two independent criteria: free-text fatigue-absence, and zero fatigue under direct multi-synonym probing).],
  limitation: [Construct-distinction evidence is moderately strong; the stronger claim "PEM can occur with zero fatigue" remains a candidate hypothesis without direct documentation. Severity coverage not stratified; ambulatory cohorts. (ch03, this cycle.)],
)

#registry-entry(
  [Diagnostic Criteria Hierarchy: PEM-Required vs PEM-Optional Definitions],
  type: "S",
  certainty: "0.60",
  evidence: [Systematic review of 25 case definitions: Fukuda (1994) requires fatigue, makes PEM optional; CCC (2003), ICC (2011), IOM (2015) make PEM compulsory @Lim2020caseDefinitions @IOM2015redefining. PEM-required criteria identify patients differing on intervention tolerance @Kielland2023diagnosticCriteria and stratify severity independent of fatigue @May2020PEMburden.],
  citations: [@Lim2020caseDefinitions, @IOM2015redefining, @Kielland2023diagnosticCriteria],
  mechanism: [Using PEM-optional (Fukuda) criteria dilutes the diagnosis with chronic-fatigue-of-other-etiology patients, weakening the cohort for PEM-relevant trials and epidemiology.],
  chapter-ref: [ch03 sec-01-pem: @spec:case-definition-pem-hierarchy],
  prediction: [Fukuda-positive/IOM-negative patients should show at least a 0.3-point smaller SF-36 physical-function improvement or at least a 10-percentage-point higher non-recovery rate vs CCC/IOM-positive patients over 12 months; indistinguishable trajectories refute PEM's independent prognostic weight.],
  limitation: [Hierarchy documented; the trajectory/response prediction is indirect (mixed-criteria cohorts, no direct within-subject trial). Severity not stratified; ambulatory. (ch03, this cycle.)],
)

#registry-entry(
  [Self-Reported vs Objective PEM: Why the Gap?],
  type: "OQ",
  certainty: "N/A",
  evidence: [In Long COVID, 67% self-report PEM but only 5.9% (2/34) show objectively provoked PEM after standardized CPET @Stussman2025selfReport; PEM-item wording materially changes classification @Jason2015definingPEM.],
  citations: [@Stussman2025selfReport, @Jason2015definingPEM],
  mechanism: [Open question: gap could reflect protocol failure to provoke PEM, non-physical triggers, conflation of exercise fatigue with PEM, or need for 2-day CPET — four candidate explanations with precedent.],
  chapter-ref: [ch03 sec-01-pem: @oq:pem-selfreport-vs-objective],
  prediction: [A study using both self-report and 2-day objective provocation with multi-trigger protocols will resolve which explanation(s) account for the self-report/objective dissociation.],
  limitation: [Small Long COVID cohort (n=34) able to attend CPET — biased toward ambulatory patients; not stratified by severity. (ch03, this cycle.)],
)

#registry-entry(
  [PEM-Without-Fatigue: Temporal Cases (crash window / onset / baseline)],
  type: "S",
  certainty: "0.40",
  evidence: [No study directly tests PEM-without-fatigue. Indirect support: four-symptom PEM prediction set includes three non-fatigue domains @Davenport2023twoSymptoms; PEM stratifies severity independent of baseline fatigue @May2020PEMburden; crash-predominant phenotype recognised (ch18).],
  citations: [@Davenport2023twoSymptoms, @May2020PEMburden],
  mechanism: [PEM is effort-triggered multi-system; a crash may be dominated by cognitive/autonomic/pain/flulike symptoms (fatigue subdominant or below reporting threshold), at onset, or a patient may have near-normal baseline fatigue yet be PEM-positive (crash-predominant).],
  chapter-ref: [ch03 sec-01-pem: @spec:pem-without-fatigue-temporal],
  prediction: [Two independent criteria: (a) true biological fatigue-absence is falsified if no objectively confirmed crash is ever described in purely non-fatigue terms under free-text elicitation (no fatigue prompt); (b) the artifact reading is falsified if a measurable fraction (>10%) of crashes are described in purely non-fatigue terms under free-text and still report zero fatigue under direct multi-synonym probing.],
  limitation: [All scenarios candidate; no direct within-title documentation; severity not stratified, severe/very-severe reporting constrained. (ch03, this cycle.)],
)

#registry-entry(
  [PEM-Without-Fatigue: Candidate Mechanisms M1–M5],
  type: "S",
  certainty: "0.40",
  evidence: [Five indirect mechanisms: (M1) non-fatigue dominant expressive channels @Davenport2023twoSymptoms @Conroy2023empirical; (M2) two-factor PEM substructure @McManimen2019deconstruct; (M3) trigger-type dependence; (M4) labeling/measurement frame @Jason2015definingPEM; (M5) self-report vs objective dissociation @Stussman2025selfReport. M4 is the most parsimonious (no novel pathway; directly supported by wording-sensitivity evidence; cert 0.45).],
  citations: [@Davenport2023twoSymptoms, @Conroy2023empirical, @McManimen2019deconstruct, @Jason2015definingPEM, @Stussman2025selfReport],
  mechanism: [If PEM-without-fatigue occurs, any of five pathways (channel dominance, two-factor PEM, trigger type, labeling, measurement gap) could explain a non-fatigue-dominant crash; none isolated or directly tested. The labeling/measurement-artifact account (M4, with M5) is the default until disproven.],
  chapter-ref: [ch03 sec-01-pem: @spec:pem-without-fatigue-mechanisms],
  prediction: [Falsifiable, two independent criteria: (a) true biological fatigue-absence falsified if no crash is ever fatigue-free under free-text elicitation (no fatigue prompt); (b) artifact reading falsified if a measurable fraction of crashes are fatigue-free under free-text AND still report zero fatigue under direct multi-synonym probing. Additional: (c) trigger-type differences in fatigue intensity; (d) M2 low-muscle-fatigue-arm sparing.],
  limitation: [All mechanisms inferred (indirect/analogical); none directly tested; stringent honesty constraint — must not assert as established fact. Severity not stratified. (ch03, this cycle.)],
)

#registry-entry(
  [Is "PEM Without Fatigue" Real Biology or Always a Measurement Artifact?],
  type: "OQ",
  certainty: "N/A",
  evidence: [Strong null interpretation: reported fatigue-absence may always be measurement/labeling artifact — fatigue is imprecise and culturally loaded @Jason2015definingPEM; IOM requires fatigue alongside PEM @IOM2015redefining; no validated PEM instrument scores PEM-positive with explicit zero fatigue.],
  citations: [@Jason2015definingPEM, @IOM2015redefining],
  mechanism: [If null holds, the temporal cases and mechanisms above describe experience/reporting variants (channel dominance, vocabulary, trigger type) of fatigue-looking crashes, not biological fatigue-absence. Deciding biology-vs-artifact determines whether low-fatigue crashes are treated as real PEM or an elicitation gap.],
  chapter-ref: [ch03 sec-01-pem: @oq:pem-without-fatigue-null],
  prediction: [A within-subject study pairing free-text elicitation (no fatigue prompt) with a structured multi-system PEM instrument discriminates: if patients describing non-fatigue crashes still rate fatigue when directly probed, artifact dominates; if a measurable fraction report no fatigue even under direct multi-synonym probing, artifact reading is incomplete.],
  limitation: [Open question — no decisive data; presented as the balancing null, not an assertion. Severity not stratified. (ch03, this cycle.)],
)

= Entries added 2026-08-11: Fatigue as a Core Symptom (definition, severity, fatigability, phenotypes)

#registry-entry(
  [Fatigue Is Embedded Within Coherent Multi-System Symptom Clusters (Brain / Gut-Immune / Autonomic)],
  type: "H",
  certainty: "0.60",
  evidence: [Factor analysis in n=748 adults with ME/CFS identified three symptom clusters — Brain, Gut-Immune, Autonomic — each with strong model fit (EFA/CFA/SEM) @HabermannHorstmeier2025symptomClusters; fatigue distributed across domains rather than forming a separate factor.],
  citations: [@HabermannHorstmeier2025symptomClusters],
  mechanism: [Fatigue is a cross-cutting symptom whose precipitating driver may differ by cluster, rather than a unitary construct; treating fatigue as a single target may miss cluster-specific mechanisms.],
  chapter-ref: [ch03 sec-00-fatigue: @hyp:fatigue-embedded-clusters],
  prediction: [In a pre-registered trial stratifying ME/CFS patients by dominant symptom cluster and assigning cluster-targeted intervention, a significant cluster × treatment interaction on a validated fatigue instrument must emerge (p < 0.05 corrected; interaction η²p ≥ 0.01). Absence of interaction or only a main effect refutes cluster-specific fatigue mechanism.],
  limitation: [Cross-sectional; self-report; single-sample factor solution not yet independently replicated; does not establish causal mechanism. Severity not stratified. (ch03, this cycle.)],
)

#registry-entry(
  [Severity-Based Fatigue Subgroups Exist and Depend on Case Definition],
  type: "H",
  certainty: "0.65",
  evidence: [K-means clustering of the Australian registry (n=2,873 patients vs n=797 controls) identified four severity subgroups with significantly impaired HRQoL; ICC-defined patients had worst outcomes; cluster structure depended on case definition @EatonFitch2026registryQoL.],
  citations: [@EatonFitch2026registryQoL],
  mechanism: [Fatigue severity is not a single number; the observed subgroup structure changes with the diagnostic criteria applied, so severity classification is partly an artifact of case definition.],
  chapter-ref: [ch03 sec-00-fatigue: @hyp:severity-subgroups],
  prediction: [Replication of k-means in independent cohort (n ≥ 500, same case definition) must recover ≥3 of 4 original subgroups (silhouette ≥ 0.25), with significant between-cluster differences (p < 0.05 corrected) on external measure — e.g. 7-day actigraphy step count or MFI-20 subscales. Refuted if all pairwise contrasts p > 0.05 after Holm–Bonferroni or if different case definition dissolves the 4-cluster solution.],
  limitation: [Self-selected registry volunteers; cross-sectional; k-means clusters descriptive, may not capture true latent subtypes; single registry not yet replicated. Severity: ambulatory registry; severe/very-severe under-represented. (ch03, this cycle.)],
)

#registry-entry(
  [Do Subjective Fatigue and Objective Fatigability Dissociate in ME/CFS?],
  type: "OQ",
  certainty: "N/A",
  evidence: [Subjective fatigue and objective fatigability may not correlate closely: actigraphy shows objectively reduced activity @Liu2025geneticFatigueActigraphy and neuroimaging shows impaired central motor drive @Bedard2026centralFatigability, while subjective scales capture experienced exhaustion; no large study has correlated both within the same ME/CFS cohort.],
  citations: [@Liu2025geneticFatigueActigraphy, @Bedard2026centralFatigability],
  mechanism: [Open question: whether patients reporting severe fatigue but normal performance (or vice versa) are a meaningful subtype or measurement dissociation is unresolved for fatigue specifically, by contrast with related autonomic findings.],
  chapter-ref: [ch03 sec-00-fatigue: @oq:fatigue-subjective-objective],
  prediction: [A study pairing a subjective fatigue instrument with objective fatigability (actigraphy + performance test) in the same cohort will establish whether the two orders dissociate and what any dissociation predicts clinically.],
  limitation: [No dedicated fatigue discordance study exists; related evidence from other autonomic measures not directly transferable. Severity not stratified. (ch03, this cycle.)],
)

= Entries added 2026-08-12: Encephalitis–Dementia — Acute-Exposure Precedent for Neuroinflammation→Neurodegeneration

#registry-entry(
  [Acute CNS-Parenchymal Inflammation Predicts Long-Term Neurodegeneration — A Cross-Disease Template for ME/CFS],
  type: "S",
  certainty: "0.42",
  evidence: [A large US electronic-health-record cohort (TriNetX, ~129 M patients, 72 organizations) found encephalitis predicts long-term dementia with composite risk ratios of 2.11 (>60 y) and 5.16 (40–60 y) over ten years; strongest for non-infectious/post-infectious inflammatory (autoimmune) etiologies (RR 3.93), non-significant for bacterial (RR 1.35, 0.97–1.87) @Aditi2026EncephalitisDementia. An independent UK primary-care cohort reproduced elevated post-encephalitis cognitive/dementia sequelae @Granerod2017PostEncephalitis. CNS-inflammation → neurodegeneration mechanism is established in Alzheimer's disease (microglial/astroglial activation @Heneka2025NeuroinflammationAD; causal NLRP3 roles in tau @Ising2019NLRP3Tau and amyloid @Heneka2013NLRP3Alzheimer); ME/CFS grouped with chronic neuroimmune-dysfunction disorders @Cohen2024NeuroinflammReview. Cross-disease inference: same acute-CNS-inflammation → long-term-neurodegeneration axis is the template by which sustained ME/CFS neuroinflammation (TSPO-PET @Nakatomi2014neuroinflammation; exosome-driven microglial IL-1$beta$ @Tsilioni2022exosome) could, if it persists, contribute to progressive cognitive decline.],
  citations: [@Aditi2026EncephalitisDementia @Granerod2017PostEncephalitis @Heneka2025NeuroinflammationAD @Ising2019NLRP3Tau @Heneka2013NLRP3Alzheimer @Cohen2024NeuroinflammReview @Javonillo2026CoronavirusAD @Nakatomi2014neuroinflammation @Tsilioni2022exosome],
  mechanism: [Acute, direct CNS parenchymal inflammation (encephalitis) — especially autoimmune/post-infectious-inflammatory — initiates a self-sustaining neuroinflammatory process (microglial/astroglial activation, NLRP3) that measurably precedes and predicts later neurodegeneration. By analogy, sustained ME/CFS neuroinflammation could, if it persists, be a progressive pathology driver rather than a reversible symptom correlate; inflammation *quality* (autoimmune/post-infectious) matters more than mere presence (bacterial encephalitis not significant).],
  chapter-ref: [ch14d-cross-disease: @spec:encephalitis-dementia-precedent; ch19 causal hierarchy: chronicity criterion longitudinal temporal upgrade; ch08 subsec-05 neuroinflammation: @sec:neuroinflammation; ch18 sec-14 long-term consequences: @spec:ch15-neurodegeneration-risk],
  prediction: [If sustained ME/CFS neuroinflammation drives neurodegeneration through the encephalitis/Alzheimer axis, then longitudinal ME/CFS cohorts (n $>=$ 200, ≥ 5-yr follow-up) will show (i) elevated baseline plasma NfL/GFAP or CSF neuroinflammation markers predicting worsening objective cognitive performance over time, and (ii) a dose–response between TSPO-PET signal (or equivalent glial marker) and rate of cognitive decline. Falsified if ME/CFS patients show stable cognition over ≥ 5 years despite elevated neuroinflammation markers, or if no neuroinflammation marker predicts any cognitive trajectory (indicating non-degenerative, reversible neuroinflammation).],
  treatment: [No clinical treatment recommendation (cross-disease, indirect). If confirmed, would shift rationale toward earlier anti-neuroinflammatory intervention and long-term cognitive monitoring of ME/CFS patients — not currently actionable, no ME/CFS dementia data.],
  limitation: [Entirely analogical — no ME/CFS dementia cohort exists; the ME/CFS neuroinflammation premise itself is contested (single TSPO-PET study null @Raijmakers2021TSPOCFS, @lim:neuroinflammation-measurement-challenges). Etiology specificity (bacterial null) and animal preprint cautioning that acute viral neuroinflammation does not uniformly accelerate amyloid @Javonillo2026CoronavirusAD temper over-generalization. Severity applicability unknown (general-population cohort, not ME/CFS, not severity-stratified). (Origin: /integrate-topic encephalitis-dementia-risk.)],
)



= Entries added 2026-08-13: Anelloviridae & Viral Reactivation in ME/CFS

#registry-entry(
  [Anellovirus Burden as an Immune-State Signature Rather Than a Viral Cause in ME/CFS],
  type: "S",
  certainty: "0.25",
  evidence: [Briese et al. multicenter virome study found no consistent group-specific viral nucleic acid differences in ME/CFS except a lower prevalence of anelloviruses in cases (30.5% vs 54.1%, $p$ \< 0.001) @Briese2023MulticenterVirome; Maguire et al. (IMPACC, n=1154) found elevated Anelloviridae transcript reads in the long-COVID physical-disability PRO group @Maguire2026ViralReactivation, and noted prior anellovirus links to chronic fatigue syndrome and multiple sclerosis. Neither study measured anellovirus burden and immune markers in the same ME/CFS patients; immune-state-marker reading is an inference, not a finding.],
  citations: [@Briese2023MulticenterVirome, @Maguire2026ViralReactivation],
  mechanism: [Anellovirus (TTV/TTMV) burden may reflect immune-competence/dysregulation state rather than productive viral infection. Directional form: innate-hyperactivation-dominant subgroups → low TTV; adaptive-exhaustion-dominant → high TTV (see @spec:anellovirus-hyperimmune). The apparent direction difference across cohorts may be a method artifact (Briese binary prevalence vs Maguire transcript abundance).],
  chapter-ref: [ch08 sec-06-other-implicated-viruses: @spec:anellovirus-immune-state (non-directional form) and @spec:anellovirus-hyperimmune (directional form); ch14d-cross-disease long-COVID overlap],
  prediction: [Using the directional map (innate-hyperactivation→low TTV; adaptive-exhaustion→high TTV), a harmonized TTV assay in one cohort will show innate-hyperactivation-dominant subgroups with lower TTV and adaptive-exhaustion-dominant subgroups with higher TTV than controls, and TTV tracking an immune marker rather than symptom severity alone. Falsified if TTV is a stable, immune-independent, disease-defining feature across all subgroups, or if harmonization eliminates the direction difference (both non-significant).],
  limitation: [Briese full text abstract-level (in-document numbers from the sibling spec used); Maguire is a hospitalized COVID-19 cohort (translation gap, population-discounted 0.85; hospitalization/steroid confound uneliminated); cross-sectional; competing explanations include method incommensurability, redundant-bystander, technical bias, and cohort-composition effects. Severity not stratified. Certainty lowered to 0.25 per adversarial review (was 0.40). (ch08, this cycle.)],
)

#registry-entry(
  [Does Viral-Gene-Product Surveillance Have Any Diagnostic or Mechanistic Role in ME/CFS?],
  type: "OQ",
  certainty: "N/A",
  evidence: [Multicenter PCR + high-throughput sequencing surveillance of blood, feces, and saliva found no consistent group-specific viral differences in ME/CFS except lower anelloviruses, leading the authors to recommend focusing future investigations on adaptive immune responses rather than viral-gene-product surveillance @Briese2023MulticenterVirome.],
  citations: [@Briese2023MulticenterVirome],
  mechanism: [Open question: whether viral-gene-product surveillance adds diagnostic or mechanistic value in ME/CFS, or whether the productive-replication arm of the viral-persistence model is unsupported and should yield to adaptive-immune investigation.],
  chapter-ref: [ch08 sec-06-other-implicated-viruses: @lim:briese2023-viral-null],
  prediction: [A study correlating anellovirus burden and adaptive-immune markers in the same ME/CFS cohort will determine whether the null surveillance result reflects absence of productive infection (supporting adaptive-immune focus) or a surveillance technical limitation.],
  limitation: [Balancing null presented as a research-direction question, not an assertion; single null surveillance study; full cohort-stratification details not retrieved. Severity not stratified. (ch08, this cycle.)],
)

= Entries added 2026-08-13: Female-Specific Reproductive Lifespan in ME/CFS

#registry-entry(
  [The Luteal Phase May Confer Relative Orthostatic Protection in POTS],
  type: "H",
  certainty: "0.52",
  evidence: [Ten women with POTS tolerated upright posture longer with less symptomatic orthostatic decompensation in the mid-luteal phase (higher presyncope rate in early follicular) than in the early follicular phase, independent of medication @Fu2010menstrualCyclePOTS. A same-group follow-up found no cycle-phase effect on presyncope incidence, baroreflex sensitivity, or muscle sympathetic nerve activity @Stickford2015menstrualCyclePOTS — an unresolved contradiction on the orthostatic-tolerance outcome.],
  citations: [@Fu2010menstrualCyclePOTS @Stickford2015menstrualCyclePOTS],
  mechanism: [Luteal-phase hormonal milieu (progesterone vasodilation/volume retention, estradiol NO-mediated vasodilation) may improve peripheral vascular/volume response to orthostasis in a condition defined by maladaptive vasodilation and venous pooling — but the effect is unconfirmed (single small positive vs single small same-group null on the same outcome).],
  chapter-ref: [ch20b sec-01 menstrual cyclicity: @hyp:luteal-orthostatic-protection, @oq:fra-cyclicity-null-sympathetic],
  prediction: [A prospective cycle-phase study in women with ME/CFS + comorbid POTS (n ≥ 20, LH-surge-confirmed phase, head-up tilt/active stand + symptom scoring) should reproduce a luteal-phase improvement in orthostatic tolerance and symptom burden. Falsified if luteal-phase tolerance is not better than early-follicular in the same women — which is what the same-group Stickford study found.],
  treatment: [Cycle phase is a confounder to control in orthostatic treatment trials; phase-aware planning of orthostatic symptom burden. No new drug. The treatment implication is conditional on resolving the unconfirmed effect.],
  limitation: [Unresolved contradiction: Fu (n=10) positive vs Stickford (n=10, same lab) null on presyncope/orthostatic tolerance; not independently replicated; POTS population, not a ME/CFS cohort (population weight 0.80); not severity-stratified.],
)

#registry-entry(
  [Postpartum Immune Reconstitution as an ME/CFS Trigger or Relapse Driver],
  type: "H",
  certainty: "0.40",
  evidence: [Pregnancy induces a tolerogenic, Th2-shifted immune state (elevated Tregs, reduced NK cytotoxicity) that collapses rapidly postpartum as estrogen and progesterone fall; postpartum relapse at 3–6 months is a documented clinical pattern @Slack2023pregnancyReview; pregnancy reported as ME/CFS trigger in a minority of cases @Thomas2022sexDifferences. Immune-reconstitution mechanism extrapolated from HIV-IRIS precedent, not measured directly in ME/CFS.],
  citations: [@Slack2023pregnancyReview @Thomas2022sexDifferences @Schacterle2004pregnancy],
  mechanism: [Postpartum collapse of pregnancy-induced immunotolerance + rapid steroid/allopregnanolone withdrawal precipitates immune reconstitution against persistent antigens and unmasks autonomic/sleep instability in the 3–6 month window.],
  chapter-ref: [ch20b sec-02 pregnancy & postpartum: @hyp:fra-postpartum-immune-reconstitution],
  prediction: [Women developing ME/CFS within 12 months postpartum should show steeper Treg decline between 3rd trimester and 3 months postpartum and evidence of EBV/HHV-6 reactivation in the postpartum window vs healthy postpartum controls. Falsified if immune-reconstitution markers do not differ between postpartum-onset ME/CFS and healthy postpartum women.],
  treatment: [Postpartum window becomes a monitoring + early-intervention target in high-risk women; no current treatment recommendation.],
  limitation: [Relapse timing documented but mechanism extrapolated (HIV-IRIS analogy), not directly measured in ME/CFS; not severity-stratified.],
)

#registry-entry(
  [Estradiol and Progesterone Directly Modulate Mast Cell Activation],
  type: "H",
  certainty: "0.26",
  evidence: [In-vitro and animal work establishes estradiol primes/sensitises mast cells toward activation and degranulation while progesterone modulates (often suppresses) them @Zaitsu2007estradiolMastCell @MunozCruz2015sexSteroidsMastCell @Jensen2010estradiolProgesteroneMastCell; environmental estrogens modulate mast cells @Narita2007environmentalEstrogensMastCell; ovariectomised-mouse model confirms ovarian-hormone-withdrawal effects on mast cells @Jensen2010estradiolProgesteroneMastCell.],
  citations: [@Zaitsu2007estradiolMastCell @MunozCruz2015sexSteroidsMastCell @Jensen2010estradiolProgesteroneMastCell @Narita2007environmentalEstrogensMastCell],
  mechanism: [Estradiol primes mast cell activation; progesterone modulates/suppresses it; ovarian-hormone state (cycle phase, pregnancy, menopause, HRT) therefore modulates mast-cell-dependent symptoms — the mechanistic bridge connecting female predominance of ME/CFS to its MCAS comorbidity.],
  chapter-ref: [ch20b sec-04 HRT: @hyp:fra-estrogen-mastcell-axis],
  prediction: [In women with ME/CFS + MCAS symptoms, serum tryptase/histamine should vary across the menstrual cycle and change with menopause or HRT in a direction consistent with model-system findings. Falsified if mast cell mediators in ME/CFS patients do not track hormonal state.],
  treatment: [Hormonal state is a candidate modifiable lever on mast-cell-dependent symptoms; direction of effect is individual (double-edged). No blanket recommendation.],
  limitation: [Model-system evidence only (in-vitro/animal, population weight 0.40–0.50) — translation gap to patients not confirmed in ME/CFS; not severity-stratified.],
)

#registry-entry(
  [Endometriosis Is Associated with a ~2.8-Fold Higher Risk of ME/CFS],
  type: "H",
  certainty: "0.58",
  evidence: [Systematic review + meta-analysis (13 studies, n from 84 to 134,805): endometriosis associated with OR 2.79 (95% CI 2.00–3.89) for ME/CFS; pooled OR 2.52 for the ME/CFS–endometriosis association; association heterogeneity I² = 0.0% @Compton2025endometriosis. Consistent with earlier population-based finding (36% vs 17% endometriosis in cases vs controls @boneva2011gynecological).],
  citations: [@Compton2025endometriosis @boneva2011gynecological],
  mechanism: [Shared mast-cell/neuroinflammatory axis: endometriosis lesions produce IL-1β, TNF-α, NGF; both conditions feature mast cell hyperactivation, peripheral nerve sensitisation, estrogen-driven inflammation; bidirectional causation plausible (endometriosis inflammation seeds central sensitisation; ME/CFS immune dysregulation permits ectopic implant survival).],
  chapter-ref: [ch20b sec-05 endometriosis & PCOS: @ach:fra-endometriosis, @hyp:fra-endometriosis-shared-axis],
  prediction: [In a prospective cohort, incidence of ME/CFS in surgically-confirmed endometriosis should exceed that in matched controls, and ME/CFS severity should correlate with endometriosis disease activity. Falsified if association reflects only ascertainment.],
  treatment: [Screening for endometriosis in ME/CFS women with pelvic symptoms and vice versa; treating one condition may be relevant to the other. No claim that treating endometriosis treats ME/CFS.],
  limitation: [Cross-sectional designs predominate; 54% self-reported endometriosis; US-centric; prevalence heterogeneity extreme (I² > 98%). Not severity-stratified.],
)

#registry-entry(
  [Does PCOS Co-occur with ME/CFS? — No Direct Evidence Found],
  type: "OQ",
  certainty: "N/A",
  evidence: [Targeted search found no direct, adequately powered PCOS–ME/CFS co-occurrence study; the only hit (n=37, no control, null fatigue correlation, low-tier journal) fails inclusion criteria. PCOS association remains unestablished.],
  citations: [],
  mechanism: [Open question: PCOS is an estrogen/androgen-dominant endocrine-metabolic condition in premenopausal women, so a mechanistic rationale for overlap exists, but no evidence supports an association.],
  chapter-ref: [ch20b sec-05 endometriosis & PCOS: @oq:fra-pcos],
  prediction: [A proper prevalence study of PCOS in ME/CFS (and vice versa) is required before any association claim.],
  treatment: [No association to act on; manage any coexisting PCOS and ME/CFS as distinct conditions.],
  limitation: [Absence of evidence, not evidence of absence; treated as genuinely open.],
)

#registry-entry(
  [Cyclic Luteal→Menstrual Allopregnanolone Withdrawal as a Monthly PEM Amplifier],
  type: "S",
  certainty: "0.25",
  evidence: [Allopregnanolone (progesterone metabolite, GABA-A positive allosteric modulator) rises across the luteal phase and crashes at the luteal→menstrual transition. The postpartum version of this withdrawal is documented as a vulnerability window @Slack2023pregnancyReview; the monthly version is unexamined. No ME/CFS study has measured allopregnanolone across the cycle or linked it to PEM timing.],
  citations: [@Slack2023pregnancyReview],
  mechanism: [Each cycle's premenstrual allopregnanolone drop unmask the same GABAergic-autonomic vulnerability the postpartum drop produces in a single large event, amplifying PEM and autonomic instability at the luteal→menstrual boundary.],
  chapter-ref: [ch20b sec-01 menstrual cyclicity: @spec:fra-allopregnanolone-monthly],
  prediction: [PEM episode frequency and severity are significantly higher in the 3 days after luteal allopregnanolone peaks than at other phases, reduced by luteal micronized progesterone. Falsified if PEM does not cluster at the withdrawal boundary or progesterone does not blunt it.],
  treatment: [Luteal-phase micronized progesterone as a repeatable, non-pregnancy probe of the GABAergic-autonomic axis; interaction data not individually checked — manual review.],
  limitation: [Extrapolation from postpartum analogue; no ME/CFS cycle allopregnanolone data; not severity-stratified. (Origin: brainstorm.)],
)

#registry-entry(
  [Menopause as an Iron-Accumulation / Ferroptosis Transition in ME/CFS],
  type: "S",
  certainty: "0.20",
  evidence: [Reproductive axis is usually framed as iron-deficiency (heavy menses, pregnancy). Cessation of menstrual blood loss at menopause halts monthly iron excretion; chronic iron overload drives Fenton-chemistry oxidative stress and ferroptosis linked to mitochondrial dysfunction. No ME/CFS menopause-iron study exists.],
  citations: [],
  mechanism: [Menopausal iron accumulation → ferroptosis → further mitochondrial/energy failure explains a non-hormonal, non-mast-cell reason for menopause-transition worsening in a subgroup; predicts iron reduction (phlebotomy) rather than supplementation may help.],
  chapter-ref: [ch20b sec-03 menopause transition: @spec:fra-menopause-iron-ferroptosis],
  prediction: [Post-menopausal ME/CFS women with prior menorrhagia show elevated ferritin/transferrin saturation and ferroptosis markers (4-HNE, MDA) vs controls, correlating with fatigue severity. Falsified if iron stores and ferroptosis markers are not elevated or do not track severity.],
  treatment: [Iron reduction (phlebotomy, iron-restricted diet) — speculative; contraindicated in iron-deficient patients.],
  limitation: [Novel, mechanistically coherent but entirely unexamined in ME/CFS; menopause-transition evidence base itself indirect. (Origin: brainstorm.)],
)

#registry-entry(
  [Mast-Cell-Stabilizer Trials Should Be Stratified by Hormonal Phase and E2:P4 Ratio],
  type: "P",
  certainty: "0.40",
  evidence: [Estrogen-mast-cell axis established in model systems @Zaitsu2007estradiolMastCell @MunozCruz2015sexSteroidsMastCell @Jensen2010estradiolProgesteroneMastCell; mast-cell-stabilizer trials in ME/CFS are analysed without any hormonal covariate.],
  citations: [@Zaitsu2007estradiolMastCell @MunozCruz2015sexSteroidsMastCell @Jensen2010estradiolProgesteroneMastCell],
  mechanism: [E2:P4 ratio (not absolute levels) predicts mast-cell reactivity — high E2 with low P4 = unopposed estradiol priming; high P4 = suppression. Stabilizer efficacy may concentrate in high-E2/low-P4 states.],
  chapter-ref: [ch20b sec-04 HRT: @pred:fra-mastcell-stabilizer-stratify],
  prediction: [≥30% greater stabilizer benefit in high-E2/low-P4 phase than high-P4 phase or post-menopause. Falsified if stabilizer efficacy is uniform across hormonal states.],
  treatment: [Research direction only (re-analysis/trial design); no treatment recommendation.],
  limitation: [Ratio-specific claim untested; research design. (Origin: brainstorm.)],
)

#registry-entry(
  [The Postpartum 3–6 Month Window Is an Ideal Prospective Onset-Cohort Target],
  type: "P",
  certainty: "0.45",
  evidence: [Postpartum window is a defined, time-bounded event with an identifiable trigger state (collapse of pregnancy hormonal/immune milieu); postpartum relapse timing 3–6 months documented @Slack2023pregnancyReview @Schacterle2004pregnancy.],
  citations: [@Slack2023pregnancyReview @Schacterle2004pregnancy],
  mechanism: [Recruiting at-risk primiparous women before/during pregnancy and following through the 3–6 month window with biobanking captures onset prospectively — a direct test of the immune-reconstitution hypothesis.],
  chapter-ref: [ch20b sec-02 postpartum: @pred:fra-postpartum-cohort],
  prediction: [~2% of ~150 at-risk primiparous women develop new/relapsed ME/CFS in the 3–6 month window, with steeper Treg decline and higher EBV/HHV-6 reactivation vs postpartum-healthy controls.],
  treatment: [Enables early biomarkers and early intervention; research design.],
  limitation: [Onset signal real but immune mechanism unproven; recruitment feasibility. (Origin: brainstorm.)],
)

#registry-entry(
  [A Longitudinal AMH Slope Panel Predicts Early Menopause Before the Event],
  type: "P",
  certainty: "0.40",
  evidence: [AMH is stable across the menstrual cycle and reflects remaining follicular pool; early menopause over-represented in ME/CFS @boneva2015menopause; four candidate mechanisms for accelerated ovarian aging documented @spec:fra-ovarian-aging-mechanism.],
  citations: [@boneva2015menopause],
  mechanism: [Serial AMH + FSH/estradiol use the rate of AMH decline as marker of accelerated follicular attrition, flagging early menopause years before the event.],
  chapter-ref: [ch20b sec-03 early menopause: @pred:fra-amh-slope],
  prediction: [AMH decline slope >1.5× steeper in ME/CFS women aged 25–40 vs controls over 24 months; steep-slope subgroup reaches menopause earlier.],
  treatment: [Early bone/cardiovascular protection and HRT planning; biomarker.],
  limitation: [No longitudinal AMH data exist in ME/CFS. (Origin: brainstorm.)],
)

#registry-entry(
  [Pregnancy Response as a Natural Subtype-to-Treatment Diagnostic Probe],
  type: "P",
  certainty: "0.35",
  evidence: [Tripartite pregnancy split documented @Schacterle2004pregnancy @Slack2023pregnancyReview; candidate subtype axes (immune/volume/metabolic) proposed @oq:fra-pregnancy-subtypes.],
  citations: [@Schacterle2004pregnancy @Slack2023pregnancyReview],
  mechanism: [A woman's pregnancy response assigns her to a treatment-relevant subtype: improved (immune/volume dominant), worsened (metabolic dominant), unchanged (uncertain) — convertible to a stratification input for trials and care.],
  chapter-ref: [ch20b sec-02 pregnancy tripartite: @pred:fra-pregnancy-probe],
  prediction: [Baseline measures (autoantibodies, tilt-test, CPET) predict pregnancy trajectory with concordance >0.6, and reported direction predicts response to the corresponding treatment class.],
  treatment: [Stratification input; no standalone treatment claim.],
  limitation: [Tripartite observation established but subtype-probe use novel/untested. (Origin: brainstorm.)],
)

#registry-entry(
  [Crash-Phase Near-Syncopal "Shutdown" Quality: Distinct Phenomenon or Energy-Collapse Metaphor?],
  type: "OQ",
  certainty: "0.40",
  evidence: [Patients sometimes describe severe crashes in near-syncopal terms (sinking, approaching loss of consciousness without losing consciousness). Orthostatic syncope/pre-syncope is common in ME/CFS on upright tilt @BouHolaigah1995NMH @Stewart1998NMHchildren and correlates with worse PEM @Jason2024TiltTable, but no study names a distinct near-syncopal quality intrinsic to the post-exertional crash. Cerebral hypoperfusion under orthostatic/exertional stress is common @Novak2026AutonomicPhenotype but contested @Razumovsky2003CerebralHemodynamics; a submaximal-exercise provocation reports reduced global CBF with post-exertional worsening @Rayhan2021SubmaximalPEM.],
  citations: [@BouHolaigah1995NMH @Stewart1998NMHchildren @Jason2024TiltTable @Novak2026AutonomicPhenotype @Razumovsky2003CerebralHemodynamics @Rayhan2021SubmaximalPEM],
  mechanism: [If real, a crash-phase near-syncopal quality would reflect exertional/orthostatic cerebral hypoperfusion distinct from upright-posture-only orthostatic syncope; the substrate (reduced cerebral blood flow) is plausible but mechanistically contested.],
  chapter-ref: [ch03 sec-01-pem physiological basis: @oq:pem-crash-near-syncope],
  prediction: [A two-day CPET in patients reporting near-syncopal crashes should produce orthostatic-BP or cerebral-perfusion changes during/shortly after exertion (not only on upright tilt), and the near-syncopal description should co-occur with objective orthostatic findings. Falsified if no orthostatic/perfusion change is found in either post-exertional or upright settings.],
  treatment: [Orthostatic testing of patients who describe near-syncopal crashes; no new treatment claim.],
  limitation: [Feature under test has no direct published support (0 PubMed hits for crash-phase near-syncope terms); severity applicability unknown. (Origin: integrate-topic crash-phase-near-syncope-pem, PARTIAL decision.)],
)

= Entries added 2026-08-14: experimental-hypoxia-virtual-hypoxia-brainstem

#table(
  columns: (1fr, 2.4fr, 1fr),
  [*ID / Label*], [*Details*], [*Phase / Cert*],

  [hyp virtual-hypoxia-brain-lactate], [Elevated resting brain lactate with a blunted rise under hypoxia supports intrinsic mitochondrial/bioenergetic inefficiency ("virtual hypoxia"): patients show a ~27% higher baseline thalamic Lac/tCr (0.171 vs 0.135; $beta$=0.035, $p$=0.021) and fail to raise it under two hypoxic challenges where controls do (H1 $p$=0.028, H2 $p$=0.039 vs patients H1 $p$=0.38, H2 $p$=0.46) @Bader2026Hypoxia. Consistent with Trapp's virtual-hypoxia proposal @Trapp2009VirtualHypoxia and bioenergetic-inefficiency accounts @Tomas2017Bioenergetics. *Replication:* not yet — single preprint. *Limitations:* proof-of-concept, modest sample, cross-sectional, hypoxic challenge ≠ exertion. *Falsifiability:* resting lactate stays elevated or response stays blunted in a second independent cohort, and normalises with an intervention that restores mitochondrial ATP production. *Consequence:* gives a concrete brain-imaging readout that ME/CFS fatigue is linked to a measurable failure to ramp up energy production on demand. (ch07 lactate accumulation: @spec:virtual-hypoxia-brain-lactate; origin: integrate-topic experimental-hypoxia-virtual-hypoxia-brainstem.)],[Phase 3 / 0.40],

  [hyp brainstem-volume-open-question], [Brainstem volume direction is unresolved: Vienna reports reduced brainstem/pons volume ($beta$=-0.10% eTIV, $p$=0.013, FDR 0.039) @Bader2026Hypoxia, Griffith reports larger brainstem/pons (pons $p$=0.003, whole brainstem $p$=0.005) @Thapaliya2023Brainstem. Thapaliya2023/Barnden2018/Thapaliya2022 are the same Griffith lab cluster — not independent replications @Thapaliya2023Brainstem @Barnden2018T1Brainstem @Thapaliya2022brain. Net independent clusters = 2, opposite directions. *Replication:* neither direction replicated by an independent lab. *Falsifiability:* multi-site harmonised segmentation gives a consistent direction across independent labs. *Consequence:* the true direction would localise a structural site of pathology and help explain brainstem-related symptoms (autonomic dysfunction, dyspnoea, sleep disturbance). (ch09 sec-01: @oq:brainstem-volume-direction; origin: integrate-topic experimental-hypoxia-virtual-hypoxia-brainstem.)],[Phase 3 / N/A],

  [spec cbf-reactivity-variability], [Gross cerebrovascular reactivity to a controlled hypoxic stressor is preserved on average (whole-brain CBF +4.8±13.0% controls vs +3.7±11.7% patients, no group-mean difference), but patient-to-control variance ratios are elevated at the first challenge (H1: 2.27–6.94, significant in 3/4 ROIs after FDR), absent at H2 @Bader2026Hypoxia @Biswal2011CBFASL @He2013CerebralVascularControl. *Replication:* not yet — exploratory variance analysis, single preprint. *Limitations:* variance-based, exploratory; hypoxic challenge ≠ exertion. *Falsifiability:* a second cohort reproduces elevated patient CBF-response variance at an initial challenge and correlates it with severity. *Consequence:* hints the difficulty may be unstable, person-to-person and moment-to-moment CBF adaptation rather than a fixed inability to change blood flow — unproven as a biomarker. (ch09 sec-05: @spec:cbf-reactivity-variability; origin: integrate-topic experimental-hypoxia-virtual-hypoxia-brainstem.)],[Phase 3 / 0.35],

  [spec ms-virtual-hypoxia-bridge], [The "virtual hypoxia" concept from multiple sclerosis — chronically failing tissue despite normal arterial oxygen due to impaired mitochondrial ATP + increased demand @Trapp2009VirtualHypoxia @Mahad2015PathologicalMS — is applied to ME/CFS as a mechanistic *bridge*, not identity, on the strength of the Vienna finding of elevated resting brain lactate and blunted metabolic reactivity despite normal arterial oxygenation @Bader2026Hypoxia. ME/CFS lacks MS demyelination; the shared element is bioenergetic inefficiency under normal oxygen. *Replication:* not independently replicated in ME/CFS; single-site preprint. *Limitations:* transfers bioenergetic-diagnostics logic only, not MS-specific interventions; no direct demonstration ME/CFS neurons fail under normal oxygen. *Falsifiability:* MS-like bioenergetic imaging signatures are abnormal in an ME/CFS virtual-hypoxia subgroup in the same direction as MS while NAA remains normal — refuted if ME/CFS shows no such signature despite elevated lactate. *Consequence:* lets ME/CFS research reuse bioenergetic imaging tools and diagnostic logic developed for MS. (ch16: @spec:ms-virtual-hypoxia-bridge; origin: brainstorm.)],[Phase 5 / 0.45],

  [spec long-covid-virtual-hypoxia-trajectory], [A shared virtual-hypoxia mechanism (elevated brain lactate, reduced metabolic flexibility) may underlie both ME/CFS and long COVID as a post-infectious metabolic signature, with trajectory distinguishing them: normalising in early long COVID recovery vs fixed in ME/CFS @Bader2026Hypoxia. *Replication:* not yet. *Limitations:* hypothesis-generating; the Vienna study did not measure long COVID; trajectory difference is inferred. *Falsifiability:* the bioenergetic marker (brain lactate / metabolic reactivity) normalises with recovery in early long COVID but stays fixed in ME/CFS — refuted if the marker is equally fixed in both. *Consequence:* a shared post-infectious metabolic mechanism would unify ME/CFS and long COVID research and allow cross-trial learning. (ch16: @spec:long-covid-virtual-hypoxia-trajectory; origin: brainstorm.)],[Phase 5 / 0.40],

  [spec thalamic-lactate-stratification], [Elevated resting thalamic lactate (Lac/tCr) is a candidate stratification biomarker for trials of tissue-oxygenation or mitochondrial interventions (e.g. HBOT) in ME/CFS @Bader2026Hypoxia @Hadanny2024HBOTLongCovid. NOT a validated diagnostic; hypothesis-generating. *Replication:* not yet. *Limitations:* single preprint; requires prospective validation; peripheral-vs-brain lactate proxy unproven. *Falsifiability:* fails if it does not reach discriminating power (e.g. AUC ≥0.70) and test–retest reproducibility, and does not predict differential treatment response in a prospective trial. *Consequence:* if validated, gives trial designers a mechanism-anchored imaging readout to select the "virtual-hypoxia" subgroup most likely to respond. (ch35: @spec:thalamic-lactate-stratification; origin: brainstorm.)],[Phase 5 / 0.40],
)

= Entries added 2026-08-14: Adult Red-Flags & Safety-Netting Protocol (Medical-Emergency Decompensation)

#table(
  columns: (1fr, 2.4fr, 1fr),
  [*ID / Label*], [*Details*], [*Phase / Cert*],

  [oq pots-cardiac-emergency-threshold], [Open question: no ME/CFS-specific study defines when a POTS-related collapse becomes a cardiac emergency, and no ME/CFS data quantify sudden-cardiac risk in POTS; the cardiac-vs-neurally-mediated syncope distinction is transferred from general cardiology. *Falsifiability:* if cardiac syncope were specifically prevalent in ME/CFS, a cohort with ambulatory ECG monitoring or cardiac-syncope outcome would detect a higher-than-expected arrhythmic-event rate — untested. *Consequence:* the safe default (apply general-cardiology cardiac-syncope criteria) rests on transferred evidence; this is a genuine research priority, not resolved. (ch23 sec-12: @oq:pots-cardiac-emergency-threshold; origin: integrate-topic adult-red-flags-safety-netting-protocol.)],[Phase 3 / N/A],

  [oq syncope-recovery-time-discriminator], [Open question: because ME/CFS has chronic orthostatic instability, the usual prodrome-based cardiac-vs-NMH syncope distinction is unreliable; recovery time and recovery quality after collapse is a candidate ME/CFS-appropriate discriminator (neurally-mediated recovers quickly supine with full orientation; cardiac/sustained-arrhythmia has slower, incomplete, or lingering recovery). *Falsifiability:* among ME/CFS patients with recurrent collapse, recovery-to-baseline within 5 min of supine positioning with full orientation and no chest pain/palpitations has near-zero true-cardiac rate; recovery >15 min, persistent confusion, chest pain, or palpitations has significantly higher identified cardiac/sustained-arrhythmia rate on urgent evaluation — untested. *Consequence:* if validated, gives a concrete rule for when a faint warrants urgent assessment. (ch23 sec-12: @oq:syncope-recovery-time-discriminator; origin: brainstorm.)],[Phase 5 / N/A],

  [oq research-priorities-safety-netting], [Research-priority statement: four ME/CFS-specific studies would move the safety protocol from transferred to measured risk — (1) ambulatory cardiac monitoring cohort for syncope, (2) severe-ME mortality/cachexia registry, (3) prospective incidence cohort for refeeding/VTE/pressure-ulcer sepsis in severe bedbound ME/CFS, (4) ED-recognition intervention study. *Consequence:* identifies the highest-impact research that would quantify medical-emergency risk specifically in severe ME/CFS. (ch23 sec-12: @oq:research-priorities-safety-netting; origin: brainstorm.)],[Phase 5 / N/A],
)

= Entries added 2026-08-15: Immune-Checkpoint / Tolerance / Immunotherapy (Géopolitique des cellules — Long COVID Immune Convergence)

#table(
  columns: (1fr, 2.4fr, 1fr),
  [*ID / Label*], [*Details*], [*Phase / Cert*],

  [spec long-covid-reversibility], [Speculation: long COVID immune dysregulation (PD-1/TIM-3 exhaustion, elevated nucleocapsid IgG, neutralizing capacity) may be partly reversible within ~24 months, in contrast to the durable, epigenetically locked exhaustion of ME/CFS. *Falsifiability:* recovering post-infectious patients normalize PD-1/TIM-3 and reconstitute naive T/B within 24 months, while ME/CFS-progressors retain exhaustion markers with no reconstitution — tested by longitudinal immune profiling; falsified if recovering patients show no normalization or ME/CFS-progressors fully reconstitute. *Consequence:* an early abnormal immune profile in post-infectious illness is not necessarily permanent exhaustion; argues for early-intervention trials within a potentially reversible window. (ch08 sec-02: @spec:long-covid-reversibility; evidence Phetsouphanh 2024 cert 0.60; origin: literature synthesis.)],[Phase 3 / 0.40],

  [oq cortisol-postinfectious-contested], [Open question: Klein et al.\ 2023 (Nature) reported lower morning cortisol in long COVID, convergent with ME/CFS HPA blunting; Fleischer et al.\ 2024 found no peripheral IL-1β/IL-6/TNFα or cortisol difference in PASC at a single timepoint. The discrepancy (morning multi-site vs single-timepoint peripheral) is unresolved; peripheral cytokines/cortisol are timepoint-sensitive and not stable stand-alone biomarkers. *Falsifiability:* dynamic (repeated/ACTH-stimulated) or severity-stratified cortisol measures would resolve whether hypocortisolism is consistent in the post-infectious phenotype. *Consequence:* clinicians/researchers should not rely on a single cortisol or cytokine measurement to confirm or exclude post-infectious immune/HPA dysregulation. (ch08 sec-02: @oq:cortisol-postinfectious-contested; evidence Klein 2023, Fleischer 2024; origin: literature synthesis.)],[Phase 3 / N/A],

  [lim no-immunotherapy-mecfs-basis], [Limitation: no ME/CFS evidence base exists for borrowing oncology immunotherapy (checkpoint blockade anti-PD-1/anti-CTLA-4, CAR-T) to reverse T-cell exhaustion. Unselected IVIG/rituximab/TPE failed (RituxME phase III, post-COVID TPE phase II). Checkpoint blockade carries substantial immune-related-adverse-event/autoimmune risk in a population already predisposed. *Consequence:* patients/clinicians should not expect oncology immunotherapy for ME/CFS; plausible use is restricted to biomarker-defined, carefully selected subgroups as a research question, not a recommendation. (ch08 sec-12: @lim:no-immunotherapy-mecfs-basis; evidence Kaplan 2026; origin: literature synthesis.)],[Phase 3 / N/A],

  [lim lc-convergence-cohort-overlap], [Limitation: the ME/CFS–long-COVID convergence must not be read as independent corroboration — Petrov 2025 (convergent lymphocytes/cytokines) and Petrov 2026 (divergent monocyte/DC) are drawn from the same Plovdiv research group with shared authorship and overlapping recruitment (sample sizes n=190 vs n=207, precise overlap not fully documented); Phetsouphanh 2024 is a longitudinal extension of the same ADAPT biobank as Phetsouphanh 2022. Convergence + reversibility are analyses of overlapping patient populations, not independent replications. *Consequence:* the convergence and reversibility signals are weaker than their headline certainties imply; independent-cohort replication must precede any firm cross-disease claim. (ch08 sec-02: @lim:lc-convergence-cohort-overlap; origin: brainstorm.)],[Phase 5 / 0.70],

  [lim lc-reversibility-mild-bias], [Limitation: long-COVID reversibility and EBV-null findings come from mild cohorts (Phetsouphanh mild-moderate, Hoeggerl mild/asymptomatic, Lorenz retrospective PCS); the severe or ME/CFS-phenotype subgroup — where persistence, epigenetic locking, and reactivation matter most — is under-sampled. *Consequence:* reversibility in mild cohorts should not be extrapolated to severe or ME/CFS-phenotype patients, where persistence is the documented pattern. (ch08 sec-02: @lim:lc-reversibility-mild-bias; origin: brainstorm.)],[Phase 5 / 0.65],

  [lim checkpoint-blockade-gate], [Limitation/protective gate: cancer exhaustion-stage biology supplies a concrete selection criterion if checkpoint blockade is ever considered — anti-PD-1 rescues progenitor/transcriptionally-exhausted (chromatin-plastic) T cells but fails on terminally, epigenetically-fixed ones (established in the oncology exhaustion-lineage/checkpoint-response literature). Established ME/CFS exhaustion is epigenetically locked; early long-COVID exhaustion is transcriptionally reversible (resolves by 24 months @Phetsouphanh2024longcovid24mo). Gate: checkpoint blockade has rationale only in the transcriptionally-exhausted, PD-1-high, non-epigenetically-locked subset — present in early long COVID, absent in established ME/CFS. *Consequence:* if ME/CFS T cells show the terminally-exhausted epigenetic signature, anti-PD-1 lacks mechanistic rationale and would likely fail with autoimmune risk — a testable rule to prevent futile/harmful unselected immunotherapy. (ch08 sec-12: @lim:checkpoint-blockade-gate; origin: brainstorm.)],[Phase 5 / 0.35],

  [syn lc-mecfs-convergence-reversible], [Synthesis: long-COVID immune dysregulation is convergent with ME/CFS (same T-cell exhaustion, exhausted B cells, exaggerated EBV/VZV antibody responses @Klein2023longcovidprofiling; no significant lymphocyte/CD8/NK/cytokine difference @Petrov2026comparable) but partly reversible — resolving by ~24 months in mild cohorts, in contrast to the durable, epigenetically-locked exhaustion of established ME/CFS. Constrained by cohort-overlap (same Plovdiv group; @lim:lc-convergence-cohort-overlap) and mild-cohort sampling bias (@lim:lc-reversibility-mild-bias). Most defensible claim: the shared convergent pattern's *persistence* — not its presence — distinguishes ME/CFS. *Consequence:* the key discriminator is whether immune dysregulation persists and is epigenetically locked, pointing to longitudinal designs and independent-cohort replication, and cautioning against treating reversible long-COVID changes as permanent exhaustion. (ch08 sec-02: @syn:lc-mecfs-convergence-reversible; origin: integrate-topic immune-checkpoint-tolerance-immunotherapy.)],[Phase 10a / N/A],
)

= Entries added 2026-08-15: EpiSwitch 3D-Chromatin Diagnostic Biomarker

#table(
  columns: (1fr, 2.4fr, 1fr),
  [*ID / Label*], [*Details*], [*Phase / Cert*],

  [hyp episwitch-3d-chromatin-biomarker], [Hypothesis: 3D chromosome-conformation architecture in blood differs between severe ME/CFS and healthy controls, forming a blood-based diagnostic signal orthogonal to DNA methylation and miRNA markers @Hunter2025. Reported 92% sensitivity / 98% specificity / 96% accuracy in a single retrospective vendor-affiliated study (Oxford BioDynamics; n=47 severe ME/CFS vs 61 controls). *Falsifiability:* an independent cohort (n ≥ 100 ME/CFS vs matched controls) failing to reproduce sensitivity/specificity within ±5 percentage points, or EpiSwitch failing to distinguish ME/CFS from fibromyalgia/depression beyond chance, refutes specificity to ME/CFS. *Consequence:* if independently replicated, a blood-based objective diagnostic for ME/CFS becomes plausible — but today it is an unvalidated research finding; the reported specificity is against healthy controls only and cross-condition discrimination (fibromyalgia, depression, long-COVID fatigue) is untested. (ch35 sec: @hyp:episwitch-3d-chromatin-biomarker; evidence Hunter 2025 cert 0.50; severity severe/very-severe; origin: literature integration.)],[Phase 3 / 0.50],

  [hyp 3d-chromatin-IL2-jakstat-axis], [Hypothesis: the IL-2/JAK-STAT pathway enrichment reported in the EpiSwitch ME/CFS panel is biologically mechanistically grounded — 3D chromatin topology is coupled to IL-2 and JAK-STAT signalling (TRIM28 organizes chromatin to control IL-2 in T cells @Wei2025TRIM28chromatin; IL-2 restructures the 3D genome of CD4+ T cells @Ward2025CD4threeD; CTCF-coordinated 3D enhancer architecture shapes immune gene expression and CTCF depletion rewires the CD4+ T-cell response to JAK inhibitors by reprogramming the STAT5 enhancer network @Lee2025CTCFenhancer). This bridges the 3D-genomic biomarker finding to the documented T-cell and cytokine dysregulation in ME/CFS. *Falsifiability:* in an independent cohort, Hi-C or Capture-C in ME/CFS CD4+ T cells shows the IL-2-responsive loop contacts at the STAT5 enhancer loci (Lee 2025) shifted in the same direction as IL-2 stimulation, versus unstimulated healthy T cells. Refuted if these loop contacts are statistically indistinguishable (P ≥ 0.05) from healthy resting T cells after controlling for activation markers (CD69/CD25). *Consequence:* if the IL-2/3D-chromatin link holds, it strengthens the case for IL-2 as a therapeutic target and links an epigenetic biomarker to a testable immune mechanism; the current evidence is non-ME/CFS-specific (human/mouse T cells) and the translation to ME/CFS is unvalidated. (ch35 sec: @hyp:3d-chromatin-IL2-jakstat-axis; evidence Wei/Ward/Lee 2025, cert 0.45; origin: literature integration.)],[Phase 3 / 0.45],

  [hyp trim28-unifying-node], [Hypothesis: impaired TRIM28 (KAP1) chromatin maintenance unifies the 3D-genomic (EpiSwitch), HERV-expression, and IL-2 findings — loss of TRIM28-mediated silencing/loop-maintenance simultaneously derepresses HERVs (Giménez-Orenga, HERV activation coincides with TRIM28/SETDB1 sites @GimenezOrenga2025HERVsegregation) and destabilises the 3D architecture constraining IL-2/JAK-STAT loci (Wei: TRIM28→IL-2 @Wei2025TRIM28chromatin; Hunter: IL-2/JAK-STAT hub @Hunter2025). *Falsifiability:* ME/CFS immune cells with normal TRIM28 occupancy and SETDB1-dependent H3K9me3 at the implicated loop-anchor/HERV loci refute the unifying-node hypothesis. *Consequence:* two "competing" epigenetic fingerprints may trace to one upstream chromatin-maintenance defect, a natural focus for mechanistic study and eventual drug targeting. (ch35 sec: @hyp:trim28-unifying-node; evidence Wei 2025 + Giménez-Orenga 2025, cert 0.30; origin: brainstorm.)],[Phase 5 / 0.30],

  [hyp frozen-chromatin-state], [Hypothesis: the ME/CFS EpiSwitch signature reflects a loop conformation frozen in the activated position — the chromatin-architectural residue of an immune-activation program triggered but never resolved — rather than active IL-2 signalling. IL-2 restructures the CD4+ 3D genome dynamically (Ward @Ward2025CD4threeD), so a static snapshot may capture a "trapped" state; this resolves the paradox of normal-to-low circulating cytokines despite immune-dysfunction phenotypes. *Falsifiability:* ME/CFS CD4+ T-cell Hi-C at IL-2-pathway loci indistinguishable from healthy cells after normalising for activation status, or loops relaxing to baseline within hours of rest, refute the frozen-chromatin hypothesis. *Consequence:* if immune cells are stuck in the "on" position at the DNA-folding level, it explains persistence after the trigger clears and points to therapies that reset folding rather than only adjusting signals. (ch35 sec: @hyp:frozen-chromatin-state; evidence Ward 2025, cert 0.30; origin: brainstorm.)],[Phase 5 / 0.30],

  [lim episwitch-caveats], [Critical caveats limiting the EpiSwitch diagnostic claim: (1) generic-illness confound — severe/housebound ME/CFS differs from healthy controls on deconditioning, stress, polypharmacy, sleep; the signature may reflect being severely ill, not ME/CFS-specific pathology; (2) overfitting risk — 200 markers fitted in n=47 with only internal validation is a textbook discovery-cohort overfitting hazard; (3) vendor COI — every EpiSwitch clinical paper is Oxford BioDynamics-authored, with a proprietary closed platform and no independent replication; (4) severity selection — housebound-only cohort, generalisability to mild/moderate unshown. *Consequence:* the 92%/98% figures should be treated as unconfirmed discovery-cohort numbers until a neutral, severity-representative external replication; the test is research-stage, not a clinical diagnostic. (ch35 sec: @hyp:episwitch-3d-chromatin-biomarker; origin: brainstorm critical categories.)],[Phase 5 / n/a],

  [syn episwitch-epigenetic-convergence], [Synthesis: several independent epigenetic measurement layers — 3D chromosome-conformation (EpiSwitch), the IL-2/JAK-STAT pathway it reports, endogenous-retrovirus expression, and conventional DNA-methylation and miRNA markers — converge on a common theme of immune-regulatory dysregulation. The IL-2/JAK-STAT axis is the shared hub, and a single chromatin-maintenance mechanism (TRIM28/KAP1) plausibly underlies both the 3D-genomic and HERV signatures. This convergence strengthens a mechanistic hypothesis about shared immune dysregulation but not a validated clinical diagnostic — the EpiSwitch specificity is against healthy controls only and cross-condition testing (fibromyalgia, depression, long-COVID) is untested. *Consequence:* multiple independent epigenetic fingerprints appear to point at one underlying immune-regulatory defect, which is encouraging for understanding the disease but does not yet justify using any of them as a clinical test. (ch35 sec: @syn:episwitch-epigenetic-convergence; origin: Phase 10a synthesis.)],[Phase 10a / n/a],
)

= Entries added 2026-08-15: Irisin Signaling Resistance in PEM

#table(
  columns: (1fr, 2.4fr, 1fr),
  [*ID / Label*], [*Details*], [*Phase / Cert*],

  [spec irisin-signaling-resistance], [Hypothesis: circulating thrombospondin-1 (TSP-1) antagonises irisin signaling through the HSP90#sub[$alpha$]/αvβ5 integrin axis, producing "irisin signaling resistance" that contributes to the impaired metabolic adaptation and PEM of ME/CFS. A 2026 cross-sectional cohort (92 ME/CFS, CCC) found lower baseline plasma irisin and a blunted irisin response to a 90-min mechanical stress challenge (p=0.034); functional cellular-dielectric-spectroscopy assays showed TSP-1 inhibits irisin signaling concentration-dependently and that irisin requires αvβ5 and extracellular HSP90#sub[$alpha$], while TSP-1 remains a dominant antagonist @Souma2026IrisinSignalingResistance @Bostrom2012Irisin @Kim2018IrisinIntegrin @A2023IrisinHsp90 @Rogers2014TSP1CD47 @Roberts2017MatricellularRedox. *Falsifiability:* patient-derived PBMC or muscle cells from ME/CFS patients with elevated TSP-1 showing normal irisin-stimulated signalling, or TSP-1 reduction restoring no metabolic phenotype, refute the mechanism. *Consequence:* if confirmed it reframes PEM as a failure of a specific exercise-induced signalling pathway, offering a TSP-1/irisin biomarker and testable targets (TSP-1 reduction, NO restoration, HSP90#sub[$alpha$] stabilization) — all hypothesis-stage with no human dosing/safety data. (ch07 sec-15: @spec:irisin-signaling-resistance; evidence Souma 2026 cert 0.45 discounted (raw 0.55, single cohort); severity mild+moderate-severe; translation gap in vitro→human; origin: literature integration.)],[Phase 3 / 0.45],

  [oq irisin-tsp1-severity-paradox], [Open question: baseline irisin independently predicts fatigue severity (β=0.67, p=0.021) and moderate-to-severe patients show elevated both irisin and TSP-1 — a paradox (lower group-level irisin yet higher in the most severe). Competing models: (a) compensatory-but-ineffective response overridden by TSP-1, vs (b) a distinct severity-associated regulatory programme, possibly sex-specific (irisin-PEM correlation held in males R=0.53, p=0.01, not females) @Souma2026IrisinSignalingResistance. *Falsifiability:* a longitudinal study across PEM episodes discriminates: compensation predicts irisin+TSP-1 rise together before recovery; distinct-biology predicts a stable severity set-point not tracking acute PEM. *Consequence:* resolving this determines whether TSP-1-suppressing or irisin-restoring therapies could help or chase a compensatory signal — currently unknown, requires longitudinal biomarker study. (ch07 sec-15: @oq:irisin-tsp1-severity-paradox; evidence Souma 2026; cert 0.30; severity mild+moderate-severe; cohort overlap Moreau-group biobank; origin: literature integration.)],[Phase 3 / 0.30],

  [spec tsp1-vascular-metabolic-convergence], [Hypothesis: TSP-1 is a vascular↔metabolic convergence node — the same molecule already documented as an endothelial-activation marker in ME/CFS (Heng 2025 panel; broader secretome vasculature dysregulation in Hoel 2026 proteomics) may also be the dominant antagonist of irisin signaling at the HSP90#sub[$alpha$]/αvβ5 axis, thereby simultaneously driving vascular dysfunction and impaired metabolic adaptation via CD47-mediated NO suppression and irisin-axis antagonism @heng2025mecfs @Hoel2026proteome @Souma2026IrisinSignalingResistance @Rogers2014TSP1CD47 @Roberts2017MatricellularRedox. *Falsifiability:* plasma TSP-1 will correlate with BOTH endothelial markers AND the blunted exertional irisin response in one cohort, with the top TSP-1 quartile showing the worst perfusion AND metabolic adaptation; falsified if TSP-1 elevation segregates with vascular but not metabolic dysfunction. *Consequence:* if one molecule underlies both poor circulation and post-exertional crash, it becomes a far more attractive single drug target; currently a unifying hypothesis resting on two separate single-source observations. (ch07 sec-15: @spec:tsp1-vascular-metabolic-convergence; evidence Heng/Hoel/Souma, cert 0.40; severity mild+moderate-severe; translation gap in vitro→human; origin: brainstorm.)],[Phase 5 / 0.40],
)

= Entries added 2026-08-15: L-Theanine-Caffeine Combination — Catecholamine vs Non-Dopaminergic Attention Mechanisms

#table(
  columns: (1fr, 2.4fr, 1fr),
  [*ID / Label*], [*Details*], [*Phase / Cert*],

  [spec theanine-caffeine-attention-differential], [Speculation: in a double-blind placebo-controlled three-way crossover trial in 21 adolescents with ADHD, a high-dose L-theanine-caffeine combination and methylphenidate both reduced selective-attention false alarms (P=0.038, P=0.035) and increased P3b amplitude while decreasing P3b latency (P $< 0.05$), but ONLY methylphenidate improved behavioral reaction time (43.89 ms, P=0.018) @Nawarathna2026TheanineCaffeine. The pattern is NOT a clean selection-vs-speed dissociation: P3b latency is itself a processing-speed index, and the non-dopaminergic combination improved it, so the divergence is specifically between two speed measures (neural P3b latency improved in both; behavioral RT improved only with methylphenidate). Route-separability is further undercut by convergent FPN-DMN effects of both caffeine and methylphenidate @Becker2022StimulantCognition and a non-dopaminergic theanine choice-RT effect in healthy adults @Gerolymos2026TheanineMeta; the finding rests on a single small trial from one research group (n=21, acute single-dose, ADHD cohort, no ME/CFS data, not independently replicated) @Kahathuduwa2020TheanineCaffeineADHD. Related speculation: the same caffeine-adenosine axis underlies the proposed A2A-density caffeine paradox in ME/CFS @spec:ch15-caffeine-paradox. *Falsifiability:* an adequately-powered ADHD crossover (n≈60+) showing theanine-caffeine also shortens behavioral RT would confirm the RT null was underpowering; if it replicates RT-null with improved P3b latency, it supports a motor/premotor vs perceptual speed dissociation; three nulls bound the claim — L-theanine null for fatigue @Gerolymos2026TheanineMeta, caffeine no ME/CFS association @Palacios2023MECFSRiskFactors, caffeine monotherapy null @AlShahab2025ADHDSupplements — so the adenosine route's causal role in ME/CFS is currently unsupported and probably null. *Consequence:* cross-disease mechanism context only — NOT an ME/CFS treatment recommendation; caffeine carries withdrawal-fatigue/tolerance harm @Carbone2025CaffeineAging and the entry only informs the PFC catecholamine-inverted-U model (ch07 sec-28: @spec:theanine-caffeine-attention-differential; raw cert 0.55, ADHD disease-model → discounted 0.41; severity unknown; origin: literature integration).],[Phase 3 / 0.41],

  [oq slow-but-accurate-mecfs-signature], [Open question: which cognitive pattern does ME/CFS show on a selective-attention task — "slow-but-accurate" (preserved error rate, selectively slowed reaction time, if the non-dopaminergic selection route is spared while the dopaminergic speed route fails) OR "slow-and-inaccurate" (increased false alarms from ATP-expensive inhibitory networks failing first, per the PFC-energy framework) @Nawarathna2026TheanineCaffeine. The two readings point opposite ways and both are testable; the question is unresolved. *Falsifiability:* an objective selective-attention task in ME/CFS (vs matched healthy and depressed controls) showing proportionally impaired errors+reaction time, or normal reaction time, falsifies the slow-but-accurate reading; preserved accuracy with selective speed loss supports it; an accuracy deficit supports the impulse-inhibition-first reading — the three outcomes are mutually exclusive and testable. *Consequence:* whichever pattern replicates, it provides an objective cognitive-behavioral readout of PFC energy/catecholamine state cheaper than imaging/EEG, and sharpens the ME/CFS brain-fog vs uniformly-slowed primary-depression distinction — both candidate phenotypes currently predictions from one ADHD trial, not established findings (ch07 sec-28: @oq:slow-but-accurate-mecfs-signature; cert 0.20; cross-disease extrapolation; severity unknown; origin: brainstorm).],[Phase 5 / 0.20],
)
