#import "../shared/environments.typ": *

= Consolidated Research Proposals Index
<ch:research-proposals-index>

This chapter collects every research proposal scattered across the paper — full protocols from Chapter 36, biomarker proposals from Chapter 29, infrastructure proposals from Chapter 35, and cross-disease proposals from Chapter 14d — into a single table sorted by impact-weighted feasibility. Each row links to the full protocol or source environment.

== Sorted by Impact × Feasibility / Cost

#figure(
  table(
    columns: (1fr, 3fr, 0.5fr, 0.5fr, 0.5fr, 0.5fr, 1fr),
    table.header(
      [*Proposal*], [*What it tests / what changes if positive*], [*Type*], [*Cost*], [*Time*], [*Impact*], [*Full protocol*]
    ),

    // ─── Tier 1: Highest impact / lowest cost (Immediate + Low cost + High impact) ───

    [SleepFM Decoupling Validation], [Multimodal sleep foundation model as ME/CFS diagnostic; if positive, first objective biomarker with C-index >0.80 using existing PSG data], [Bmk-dev], [Low], [Immed], [High], [@sec:ch25b-sleepfm-proposed],
    [Existing Dataset Reanalysis (Architecture C)], [Re-analyze ALSPAC, UK Biobank, RECOVER, DecodeME to test compound-risk score for ME/CFS prediction; validates Architecture C at zero new data cost], [2° analysis], [Low], [Immed], [High], [@sec:architecture-c-research-program],
    [DecodeME Age-Stratified GWAS], [Stratify DecodeME GWAS by age-at-onset; vitiligo precedent found MHC class II OR>8 absent in late-onset], [2° analysis], [Low], [Immed], [High], [@sec:decodeme-pharmacogenomics],
    [REAP Proteome-Wide Autoantibody Screen], [Unbiased >2,500-target screening in n≥200 ME/CFS; identifies novel targets beyond GPCR panel], [Bmk-dev], [Med], [Immed], [High], [@spec:schizophrenia-reap-proposal],
    [IgG Subclass Profiling of GPCR Autoantibodies], [Profile IgG1-IgG4 in n≥100; if ratio predicts IA response, transforms patient selection for immunoadsorption], [Bmk-dev], [Low], [Immed], [High], [@hyp:igg-subclass-profiling],
    [PBMC Respirometry Comparative], [Seahorse respirometry in 180 across ADHD/ASD/ME/CFS/controls; if spare capacity follows predicted Architecture C gradient], [Bmk-dev], [Low], [Immed], [High], [@sec:architecture-c-research-program],
    [Prodromal Composite Score Validation], [Weighted 0-18 clinical checklist for pre-ME/CFS risk; if prospectively validated, enables early identification for prevention trials], [Bmk-dev], [Low], [Immed], [High], [@sec:prodromal-research-program],

    // ─── Tier 2: High impact / medium cost (Med cost + Immed-Med time) ───

    [Viral Clearance Longitudinal Study], [Prospective 2yr n=500 acute infection follow-up with serial immune/metabolic phenotyping; if predictors of ME/CFS conversion identified, enables prevention], [Observ], [High], [Med], [High], [@sec:viral-clearance-longitudinal],
    [PEM Recovery Duration Study], [CPET at 24h/48h/72h+ to quantify true PEM duration; if >24h, invalidates current 2-day CPET protocol assumptions], [Observ], [Med], [Med], [High], [@sec:pem-recovery-duration-study],
    [LC vs ME/CFS 2-Day CPET Head-to-Head], [Identical protocols in LC and ME/CFS; if PEM differs, resolves whether post-infectious PEM is a unitary phenomenon], [Observ], [Med], [Immed], [High], [@hyp:distinct-pem-pathophysiology-long-covid],
    [Sleep-Based Endotype Stratification], [Apply SleepFM to ME/CFS PSG data; if endotypes separable by decoupling pattern, enables treatment-matching], [Bmk-dev], [Low], [Immed], [Med], [@sec:sleepfm-biomarker],
    [HRV Phenotype Reanalysis], [Stratify existing ME/CFS cohorts by resting HRV; if low-HRV patients show GI/microbiome signature consistent with gut-vagal subtype], [2° analysis], [Low], [Immed], [Med], [@sec:gut-vagal-research],
    [Wearable Transition Detection], [ML analysis of pre-diagnosis wearable data from 1000+ patients; if abrupt phase transition detected, identifies prodromal window], [2° analysis], [Low], [Immed], [Med], [@sec:prodromal-research-program],
    [Exercise Non-Responder Genomics], [Cross-reference HERITAGE/DREW/Gene SMART with DecodeME; shared mitochondrial variants link deconditioning to genetics], [2° analysis], [Low], [Immed], [Med], [@sec:prodromal-research-program],
    [BZI Gut Barrier Index], [Butyrate:zonulin composite stratifying gut barrier; if validated, first blood-based permeability index for clinical use], [Bmk-dev], [Low], [Immed], [Med], [@sec:butyrate-zonulin-composite-index],
    [ADHD Hyperfocus Micro-PEM], [Sustained cognitive task in ADHD adults measuring lactate/cortisol/IL-6; if hyperfocus produces PEM-like metabolic signature], [Observ], [Low], [Immed], [Med], [@sec:architecture-c-research-program],
    [Wound Healing as Functional Biomarker], [Wound healing dynamics in ME/CFS; if impaired kinetics correlate with decline, validates selective energy dysfunction at tissue level], [Bmk-dev], [Low], [Immed], [Med], [@sec:wound-healing-biomarker-study],
    [Pediatric-Adult Biological Comparison], [First comprehensive cross-sectional comparison of biological features; if differential recovery mechanisms identified, targets for adult intervention], [Observ], [Med], [Med], [High], [@sec:pediatric-adult-study],
    [Sleep-Glymphatic Neuroinflammation Intervention], [Treat underlying sleep disorders; if neuroinflammation reduced and PEM progression slowed, validates sleep-glymphatic loop], [Interv], [Med], [Med], [High], [@sec:sleep-glymphatic-study],
    [HIF-1alpha/ECM Dynamics Study], [HIF-1alpha & MMP serially post-CPET; if delayed HIF + prolonged MMP correlates with PEM, validates ECM-PEM mechanism], [Bmk-dev], [Med], [Med], [High], [@sec:mcas-research-proposals],
    [Brain First Treatment Sequence RCT], [RCT testing central microglial-first vs peripheral-first ordering; if brain-first superior, changes treatment paradigm], [Interv], [High], [Med], [High], [@sec:treatment-sequence-rct],
    [Crash Impact Biomarker Panel], [Prospective crash cohort measuring cfDNA/cytokines/lactate/NK; if PEM biological damage quantified, justifies crash-prevention as primary endpoint], [Bmk-dev], [Med], [Med], [High], [@sec:crash-biomarkers],

    // ─── Tier 3: High impact / high cost or long timeline ───

    [ME/CFS Human Phenome Project], [Multi-site n=500 deep phenotyping cohort over 5-10yr; if executed, provides the platform for every other proposal], [Infra], [High], [Long], [High], [@sec:deep-phenotyping-cohort],
    [Recovery Potential Index], [Composite biomarker (epigenetic age + naive T cells + telomeres + HRV + metabolic flexibility); if predictive, transforms prognosis and trial stratification], [Bmk-dev], [High], [Long], [High], [@sec:recovery-potential-index],
    [ME/CFS Digital Twin], [Computational model integrating omics + wearables + clinical data; if predictive, transforms treatment selection and crash risk estimation], [Infra], [High], [Long], [High], [@sec:digital-twin],
    [Umbrella Trial Platform], [Master protocol stratifying by autoantibody/metabolic/immune/autonomic phenotype; if implemented, ends single-mechanism all-comers trials], [Infra], [High], [Long], [High], [@sec:replication-heterogeneous],
    [Adaptive Enrichment Trial Strategy], [Two-phase design: broad enrollment → wk12 biomarker analysis → enriched phase 2; if adopted, prevents dilution of treatment signals], [Infra], [High], [Med], [High], [@sec:replication-heterogeneous],
    [N-of-1 Trial Network], [Aggregated single-patient crossover trials across centers; if positive, builds population evidence from individual response profiles], [Interv], [Med], [Med], [High], [@sec:replication-heterogeneous],
    [Aggressive Early Intervention Trial], [Front-loaded multimodal treatment vs standard care in early ME/CFS; if positive, validates front-loading hypothesis with recovery at 24mo], [Interv], [High], [Med], [High], [@sec:early-intervention-trial],
    [DecodeME Pharmacogenomic Trial], [Multi-arm adaptive trial (n=300-600) by PRS cluster; if PRS×treatment interaction confirmed, first precision-medicine ME/CFS trial], [Interv], [High], [Med], [High], [@sec:decodeme-pharmacogenomics],
    [Multi-Modal Selective Energy Dysfunction Study], [Comprehensive CNS-dependent vs autonomous testing; if selective CNS energy deficit confirmed, shifts therapeutic focus], [Bmk-dev], [High], [Med], [High], [@sec:selective-energy-dysfunction-study],
    [Longitudinal Microglial Imaging (TSPO-PET)], [TSPO-PET measuring microglial activation and PEM trajectory; if validated, neuroinflammation biomarker for progression], [Bmk-dev], [High], [Med], [High], [@sec:microglial-imaging-study],

    // ─── Tier 4: Medium impact / medium cost ───

    [Sibling Stress Test (Prodromal)], [Asymptomatic siblings (n=200, age 10-25) with CPET/HRV/respirometry; if pre-symptomatic signatures found, enables screening], [Observ], [Med], [Med], [High], [@sec:prodromal-research-program],
    [Subclinical PEM Detection (2-Day CPET)], [At-risk vs healthy vs ME/CFS 2-day CPET; if intermediate VO2max decline confirmed, quantitative prodromal biomarker], [Bmk-dev], [Med], [Med], [High], [@sec:prodromal-research-program],
    [Pediatric OI Treatment Withdrawal], [Withdrawal after OI treatment during developmental windows; if permanent recalibration, supports early aggressive OI therapy], [Interv], [Med], [Med], [High], [@sec:oi-durability-study],
    [Prospective Post-Infection Metabolic Phenotyping], [500 neurodivergent + 500 controls followed through viral infections; if pre-existing deficits predict conversion, validates Architecture C prospectively], [Observ], [High], [Long], [High], [@sec:architecture-c-research-program],
    [Model Organism Panel], [Consensus minimal panel: post-viral mouse + PBMCs + organoids + iPSC neurons; if standardized, accelerates mechanism validation], [Infra], [Med], [Med], [High], [@sec:model-organisms],
    [Gut-Vagal Phenotyping Study], [Cross-sectional HRV + butyrate-producers + platelet serotonin; if distinct subtype identified, enables stratified recruitment], [Observ], [Med], [Med], [High], [@sec:gut-vagal-research],
    [Pediatric Crash Impact (Recovery Capital)], [Prospective pediatric crash cohort; if Recovery Capital model validated, crash prevention becomes dose-critical], [Observ], [Med], [Med], [High], [@sec:crash-impact-study],
    [LDN-Metabolic Crosstalk Study], [LDN + metformin interaction; if concurrent metformin preserves/enhances efficacy, practical clinical guidance generated], [Interv], [Med], [Med], [Med], [@sec:metabolic-immune-crosstalk],
    [HRV-Guided Pacing RCT], [HRV-guided vs symptom-based pacing; if HRV-guided reduces crashes + improves confidence, evidence for wearable-integrated pacing], [Interv], [Med], [Med], [Med], [@sec:hrv-pacing-rct],
    [Structured Periodization Pacing], [Pre-planned deload cycles vs flexible pacing in mild-moderate; if mandatory recovery prevents crashes], [Interv], [Med], [Med], [Med], [@sec:periodization-rct-proposal],
    [Butyrate Supplementation RCT], [Tributyrin 2g TID vs placebo in butyrate-deficient ME/CFS; if HRV improves, validates butyrate-vagal mechanism], [Interv], [Med], [Med], [Med], [@sec:gut-vagal-research],
    [Mast Cell Stabilizer + Doxycycline RCT], [4-arm trial (mast stabilizer + doxycycline + combo + placebo) for connective tissue symptoms; if synergistic], [Interv], [Med], [Med], [Med], [@sec:mcas-research-proposals],
    [Infection-Decline Correlation], [Prospective cohort quantifying whether infection frequency predicts functional decline; if positive, justifies antiviral trials], [Observ], [Med], [Med], [Med], [@sec:infection-decline-study],
    [HRV Recovery Kinetics Screening], [Population-scale HRV recovery ratio validation; if wearable-based prodromal flag works, low-cost screening for at-risk], [Bmk-dev], [Low], [Immed], [Med], [@sec:prodromal-research-program],
    [CCI Prevalence by Upright MRI], [n=200 ME/CFS upright MRI; if definitive prevalence established, resolves decades of clinical uncertainty], [Observ], [Med], [Med], [Med], [@sec:mcas-research-proposals],

    // ─── Tier 5: Computational / Mathematical (low cost, long timeline) ───

    [Multi-Scale Petri Net Model], [Stochastic Petri net formalism for integrated ME/CFS pathophysiology; if successful, formal model for hypothesis testing without patient risk], [Infra], [Low], [Immed], [Med], [@sec:domain6-petri-net],
    [ISR-ODE Extension for PEM Model], [Extend energy-exhaustion ODE with ISR state variables; if validated, identifies theoretical bifurcation points for intervention], [Infra], [Low], [Immed], [Med], [@sec:isr-ode-extension],
  ),
  caption: [Consolidated Research Proposals — Sorted by Impact × Feasibility / Cost],
) <tab:research-proposals-index>

== How to Use This Index

Each row above links to a full protocol (@ch:proposed-studies), a biomarker specification (@ch:biomarker-research), an infrastructure plan (@ch:research-infrastructure), or a cross-disease speculation with an embedded research proposal (Chapter 14d). Full protocols include methods, sample size justification, assessment schedules, analysis plans, and budget estimates. Speculation-level proposals require protocol development before implementation.

*Type key:* Bmk-dev = biomarker development. 2° analysis = secondary analysis of existing data. Observ = observational. Interv = interventional. Infra = infrastructure. Preclinical = animal/in vitro.

*Cost/Time key:* Low <\$100K / Med \$100K–\$1M / High >\$1M. Immed = existing data/cohorts. Med = 2–3yr, new recruitment. Long = 5yr+, new infrastructure.

*Consequence:* This index transforms 50 proposals scattered across 8 chapters into a single sortable decision tool. A funder can read the top 7 rows and identify the highest-leverage experiments achievable at lowest cost with existing data. The bottom rows identify programs that require infrastructure investment first. Every row is falsifiable: the proposed experiment could return a null result that redirects the field.

#include "./ch36-proposed-studies/limitations/limitation-proposed-studies-untested-hypotheses-fr.typ"
