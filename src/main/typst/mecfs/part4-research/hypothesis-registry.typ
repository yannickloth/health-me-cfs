#import "../shared/environments.typ": *
#import "../shared/tables.typ": landscape

//
// Hypothesis, Speculation, Prediction, and Open Question Registry
// Generated 2026-03-04 by systematic harvest of all 305 environments.
//
// INSERTION: Add as new 
==  in ch25b or as standalone appendix section.
// Ensure longtable package is loaded. Build with: nix build
// DO NOT auto-insert without reviewer sign-off.
// ============================================================================

== Cross-Document Hypothesis Registry
<sec:hypothesis-registry>

#chapter-abstract[
This section provides a structured registry of the document's key mechanistic
hypotheses, speculations, predictions, and open questions.  Each entry records
the environment type, certainty estimate, condensed testable predictions, the
methods currently available to test them, and the source location.  The registry
is intended as a navigational aid for researchers designing studies and as a
completeness check ensuring that every major mechanistic claim in the document
has a corresponding proposed test.  Entries are grouped by mechanism domain and
ordered within domains from highest to lowest certainty.
]

=== Notation

  / *H*: Hypothesis — mechanistically grounded claim with stated certainty.
  / *S*: Speculation — plausible but lower-confidence claim.
  / *P*: Prediction — specific, directional; directly falsifiable.
  / *OQ*: Open Question — framed as unresolved; testability implied.
  / *Obs*: Observation — documented empirical finding; certainty reflects confidence in the measurement, not mechanistic interpretation.

// TODO: Full table conversion from LaTeX format pending.
// The commented-out block below (lines 42–1239) contains all entries in broken mixed format.
// New entries (2026-03-21) are added as working Typst below.
// Last updated: 2026-03-21 (56 entries across all domains)

#block(fill: luma(240), inset: 8pt, radius: 4pt)[
  _Full registry table (48 legacy entries) — pending conversion from mixed LaTeX format; see commented block below. The 8 entries added 2026-03-21 appear in the working table that follows._
]

=== Entries Added 2026-03-21: Immune Null Findings and Creative Hypotheses

Motivated by: mecfsscience.org comprehensive immune review; six independent literature research streams.

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [TGF-$beta$ as Unifying Explanation for Two Most Replicated Immune Findings],
    [H], [0.40],
    [TGF-$beta$ elevation suppresses NK cytotoxicity via Smad/perforin-granzyme repression, mTOR inhibition, and receptor downregulation. (a) TGF-$beta$ and NK cytotoxicity correlate within ME/CFS cohorts. (b) In vitro TGF-$beta$ neutralisation rescues NK function. (c) TGF-$beta$ elevation is not entirely centrifugation artifact.],
    [Co-measurement study (TGF-$beta$ + NK cytotoxicity in same cohort) — never done. In vitro neutralisation assay feasible. Roerink 2018 artifact concern unresolved.],
    [Ch.7 @sec:tgf-beta],

    [The Cellular Fog: Normal Army, Broken Soldiers],
    [S], [0.35],
    [ME/CFS is immune cell _incompetence_ — cells present in normal numbers but functionally impaired at intracellular level. Functional assays (cytotoxicity, proliferation) abnormal while phenotypic assays (counts, markers) normal. TRPM3 provides molecular mechanism.],
    [Systematic comparison of functional vs phenotypic immune assays across cohorts. TRPM3 modulation studies. Pattern consistent with existing data but not formally tested as unified framework.],
    [Ch.7 @sec:immune-summary],

    [The TGF-$beta$ Lock: Epigenetic Hit-and-Run],
    [S], [0.30],
    [Transient TGF-$beta$ during initial infection causes persistent epigenetic remodeling at IRF/T-bet/EOMES loci in NK cells. Dysfunction persists after TGF-$beta$ normalises. (a) NK cell ATAC-seq shows TGF-$beta$-characteristic chromatin marks in patients with normal current TGF-$beta$.],
    [ATAC-seq/ChIP-seq on ME/CFS NK cells — feasible but not yet done. 2026 bioRxiv preprint (not peer-reviewed) establishes mechanism in vitro.],
    [Ch.7 @sec:tgf-beta],

    [Abortive B Cell Activation: Energy Starvation Stalls Germinal Centre Entry],
    [S], [0.25],
    [IGHV3-30 B cells receive activation signals but cannot complete germinal centre response due to metabolic deficit or absent T cell help. Explains skewing without SHM or class switching. (a) Metabolic supplementation restores class switching in vitro. (b) Severity-dependent loss as stalled B cells die.],
    [In vitro metabolic rescue of B cell function. Anti-CD40 + IL-21 rescue experiments. IGHV3-30 replicated by 3 groups (Sato 2021, Lipkin 2020, Ryback 2025).],
    [Ch.7 @sec:ighv3-30],

    [Constitutive Immune Activation Without Secretory Output],
    [S], [0.20],
    [Anellovirus depletion ($p < 0.001$, Lipkin) suggests constitutive low-level immune activation clearing harmless viruses. "Idle engine at high RPM" — intracellular activation without cytokine secretion. (a) ME/CFS immune cells show elevated baseline metabolic activity. (b) Stimulation fold-change blunted.],
    [Baseline metabolic profiling (Seahorse) of unstimulated ME/CFS immune cells. Anellovirus replication in independent cohort.],
    [Ch.7 (viral)],

    [The Immune Diaspora: Displaced Tissue-Resident Cells],
    [S], [0.20],
    [MAIT cell blood elevation reflects displacement from mucosal niches. Multiple tissue-resident immune types may be dislocated. Blood studies miss pathology because they sample displaced, non-functioning cells. (a) Gut biopsies show depleted MAIT cells inversely correlated with blood MAIT.],
    [Paired tissue biopsy + blood sampling for MAIT and other tissue-resident populations. CureME biobank finding (AUC 0.756 for severe) not yet replicated.],
    [Ch.7 @sec:immune-activation],

    [The Paradox of Invisible Immunity],
    [OQ], [---],
    [What immune mechanism causes extreme disability yet leaves no systemic trace? Three frameworks: compartmentalised immunity (tissue-level), exhaustion (early elevation normalises), post-immune damage (trigger transient, damage self-sustaining).],
    [Tissue biopsies vs blood in same patients. Early-onset ($<$3 yr) vs chronic cohort comparison. Non-immune metabolic assays in parallel.],
    [Ch.7 @sec:immune-summary],

    [The Immune System as Canary: Is Immunity Cause or Consequence?],
    [OQ], [---],
    [Alternative: immune findings are downstream of metabolic/neurological disease. Immune cells impaired because _all_ cells impaired. (a) Non-immune cells (fibroblasts) show same metabolic dysfunction. (b) Metabolic interventions improve both immune function and symptoms simultaneously.],
    [Fibroblast/epithelial cell metabolic profiling. RESETME trial: sustained remission favours immune causality; transient benefit favours canary model.],
    [Ch.13],

    [Genetic Mitophagy Vulnerability: The Accumulation Threshold Model],
    [H], [0.35],
    [DecodeME mitophagy (_FBXL4_) and ER-phagy (_CCPG1_) genes suggest constitutional impairment in organelle quality control. Acute metabolic stress overwhelms reduced clearance capacity; damaged mitochondria accumulate past self-reinforcing threshold. (a) ME/CFS patients show impaired PINK1/Parkin activity. (b) Severity correlates with _FBXL4_/_CCPG1_ genotype dose-dependently. (c) Mitophagy-enhancing compounds (urolithin A, NAD+ precursors) preferentially benefit autophagy risk-variant carriers.],
    [Mitophagy capacity assays in ME/CFS PBMCs — feasible but not yet done. _FBXL4_ genotype stratification in existing biobanks. Urolithin A trial with pharmacogenomic stratification. No study has directly measured mitophagy in ME/CFS.],
    [Ch.12 @hyp:mitophagy-vulnerability],

    [Glutamatergic--Autonomic Bridge: DecodeME Genes as Synaptic Vulnerability Factors],
    [H], [0.30],
    [DecodeME glutamatergic synapse genes (_SHISA6_, _UNC13C_) + neuronal development genes (_CA10_, _SOX6_, _LRRC7_, _DCC_) create constitutional vulnerability in brainstem/hypothalamic autonomic circuits. Infection tips vulnerable circuits past threshold. (a) Neuronal PRS correlates with autonomic dysfunction severity. (b) Brainstem glutamate/glutamine ratios (MRS) correlate with autonomic symptoms. (c) IBS $r_g$ mediated by autonomic genes (Mendelian randomisation). (d) Memantine/riluzole improve autonomic symptoms in high-PRS patients.],
    [PRS construction from DecodeME — feasible once full data available. MR spectroscopy of brainstem glutamate — technically challenging but feasible. Mendelian randomisation for IBS correlation — feasible with existing GWAS data. Memantine trial with genotype stratification — feasible.],
    [Ch.13 @hyp:glutamatergic-autonomic-bridge],

    [The Diagnostic Mirage: hEDS/POTS/MCAS as Single Autonomic Syndrome],
    [S], [0.25],
    [The ME/CFS--POTS--hEDS--MCAS cluster = single autonomic vulnerability syndrome that fragments into diagnoses by clinical threshold. DecodeME neuronal genes are substrate; POTS/hEDS/MCAS labels capture different phenotypic presentations. (a) Treating autonomic dysfunction improves all four "conditions." (b) Comorbidity rate correlates with number of thresholds tested, not severity. (c) DecodeME PRS predicts cluster better than individual diagnoses. (d) Each diagnosis sub-threshold for others at rates above chance.],
    [Unified autonomic treatment trials (tVNS, pyridostigmine, LDN+pyridostigmine LIFT trial) with multi-diagnosis outcome measurement. PRS analysis once DecodeME data available. Retrospective chart review of comorbidity rates vs diagnostic workup thoroughness.],
    [Ch.13 @spec:diagnostic-mirage],

    [The Amitriptyline Signal: Genetic Evidence for Tricyclic Mechanism],
    [H], [0.40],
    [DecodeME $r_g = 0.61$ with amitriptyline use may reflect shared neural circuits, not just confounding. Low-dose amitriptyline's NMDA antagonism matches glutamatergic synapse genes. (a) ME/CFS benefit exceeds sleep/pain effects alone. (b) Greater benefit with higher neuronal-gene PRS. (c) Genetic correlation survives conditioning on depression and pain. (d) Mendelian randomisation supports causal efficacy.],
    [Mendelian randomisation with DecodeME data — feasible. Pharmacogenomics trial: amitriptyline stratified by DecodeME PRS — feasible but requires DecodeME data access. Retrospective analysis of amitriptyline responders vs non-responders by genotype.],
    [Ch.13 @hyp:amitriptyline-signal],

    [Peptic Ulcer Parallel: What Would an _H. pylori_ Moment Look Like?],
    [S], [0.20],
    [ME/CFS follows the same trajectory as peptic ulcer disease (psychosomatic $arrow.r$ biological discovery $arrow.r$ resistance $arrow.r$ acceptance). The "discovery" will be a downstream molecular switch (TRPM3 dysfunction, epigenetic methylation lock, or autophagy gene bottleneck) rather than a single pathogen. (a) Specific switch candidates have their own predictions in respective chapters.],
    [Historical analogy — not directly testable. Specific candidates (TRPM3, epigenetic lock, autophagy genes) are testable per their own hypothesis environments.],
    [Ch.13 @spec:peptic-ulcer-parallel],
  ),
  kind: table, supplement: [Table], caption: [Hypothesis registry entries from mecfsscience.org integration and creative brainstorming (2026-03-21/22). Includes immune null findings, DecodeME genetics, exercise physiology, and cross-system synthesis.],
) <tab:hypothesis-registry-2026-03-21>
] // end landscape page

=== Entries Added 2026-03-23: Causal Hierarchy Extensions

Motivated by: systematic creative analysis of ch16 causal hierarchy and ch33 formal modeling; 12-idea development from brainstorm-causal-hierarchy-extensions.md.

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [ME/CFS-Calibrated Epigenetic Clock],
    [S], [0.40],
    [DNA methylation profiling of immune cells measures consolidation depth $cal(M)$ independent of symptom duration. (a) Methylation age deviation correlates with disease duration/severity. (b) DNMT3A gain-of-function variants predict faster consolidation. (c) Calibrated clock predicts treatment response better than duration alone.],
    [Methylation arrays (450K/EPIC) on ME/CFS cohorts exist (de Vega 2014/2018). Clock construction requires larger training set ($n > 100$). DNMT3A genotyping feasible in existing biobanks.],
    [Ch.33 @spec:epigenetic-clock],

    [Reverse Cascade Recovery Sequence],
    [H], [0.35],
    [Recovery follows reverse timescale order: Ca#super[2+] $arrow.r$ ATP $arrow.r$ safe mode $arrow.r$ immune $arrow.r$ autoantibodies $arrow.r$ epigenetics. (a) Stalls indicate unaddressed load-bearing lock. (b) Order deviation indicates non-primary treatment target.],
    [Longitudinal multi-biomarker monitoring during treatment --- not yet done with adequate temporal resolution. Daratumumab trial follow-up most promising data source.],
    [Ch.33 @hyp:reverse-cascade],

    [Treatment Order Dependence: Energy Before Epigenetics],
    [H], [0.40],
    [Epigenetic modifiers alone show transient benefit then relapse (re-consolidation). Energy restoration must precede epigenetic intervention. (a) Reverse order fails. (b) Concurrent equivalent to energy-first. (c) Re-consolidation timescale matches $tau_"epi"$.],
    [No ME/CFS epigenetic modifier trials exist. Analogous sequential therapy evidence from oncology (azacitidine). Conceptually testable with combination trial design.],
    [Ch.33 @hyp:lock-sequence],

    [Separatrix Nudging: Sub-Threshold Stacking],
    [H], [0.35],
    [5--6 sub-threshold interventions with positive synergies exceed escape threshold. (a) 6-intervention protocol $>$ any 3-subset. (b) $k$th intervention benefit is non-linear near separatrix. (c) Partial individual responders are best stacking candidates.],
    [Combination supplement pilot data (Castro 2017) suggestive. Factorial trial design prohibitive; adaptive Bayesian design needed. Synergy coefficients unmeasured.],
    [Ch.33 @hyp:separatrix-nudging],

    [CSD Detection in ME/CFS Wearable Data],
    [OQ], [---],
    [Can HRV variance + autocorrelation detect approaching crash/recovery transitions? Direction discrimination via activity/treatment context. $n >= 50$, $>= 12$ months monitoring needed.],
    [CSD validated in depression (Wichers 2016) and ICU (Olde Rikkert 2016). HRV wearable accuracy adequate (Oura, Garmin). No ME/CFS CSD study exists.],
    [Ch.33 @oq:csd-monitoring],

    [Directional Attractor Migration],
    [H], [0.40],
    [Patients migrate between attractor basins over time: immune $arrow.r$ metabolic $arrow.r$ severe. (a) Longitudinal subtyping shows shifts. (b) Migration predominantly unidirectional. (c) Migration predicts lock acquisition. (d) Treatment response depends on current attractor, not original.],
    [Longitudinal multi-omics with $>= 12$-month repeat sampling. Cross-sectional data insufficient. Chu 2019 onset patterns consistent but not longitudinal.],
    [Ch.33 @hyp:attractor-migration],

    [Antiviral Response Depends on Viral Fraction of Threat Signal],
    [H], [0.40],
    [Antiviral effectiveness = $w_V dot V slash cal(T)$. (a) Response inversely correlates with disease duration. (b) Response correlates with viral/inflammatory marker ratio. (c) Antiviral + anti-inflammatory synergistic. (d) Active replication $>$ serological evidence.],
    [Retrospective analysis of Lerner/Montoya data stratified by duration --- feasible. Combination antiviral + anti-inflammatory trial needed. Viral PCR vs serology stratification feasible.],
    [Ch.33 @hyp:antiviral-threat],

    [Oxidative Stress Sensing Polymorphisms as Safe Mode Predisposition],
    [S], [0.25],
    [SOD2/Nrf2/GPX1 variants miscalibrate threat signal weights ($w_"ROS"$), lowering safe mode activation threshold. (a) SOD2 Val/Val overrepresented in ME/CFS. (b) Nrf2 promoter methylation correlates with safe mode markers. (c) Sulforaphane (Nrf2 activator) reduces safe mode engagement probability.],
    [SOD2 genotyping in ME/CFS biobanks --- feasible but not done for this specific hypothesis. Sulforaphane prevention trial in at-risk population --- logistically challenging.],
    [Ch.16 @spec:threat-miscalibration],

    [TRPM3 Sensitization via Pregnenolone Sulfate],
    [S], [0.20],
    [PregS as direct TRPM3 agonist partially restores calcium flux, acting as therapeutic "sensitizer" for concurrent interventions. (a) PregS restores Ca#super[2+] flux in ME/CFS NK cells in vitro. Bioavailability and GABA#sub[A] modulatory effects are key unknowns.],
    [In vitro PregS + TRPM3 assay feasible with existing Sasso/Cabanas protocols. Oral bioavailability studies needed. GABA#sub[A] interaction safety assessment required.],
    [Ch.16 @spec:trpm3-pregnenolone],

    [Subthreshold Reservoir Population],
    [S], [0.30],
    [Population below separatrix identifiable by subclinical biomarker panel; prophylactic intervention during infection reduces ME/CFS conversion. (a) Continuous separatrix distance distribution, not bimodal. (b) Near-separatrix individuals have higher post-infectious ME/CFS incidence. (c) Prophylaxis reduces conversion rate.],
    [Long COVID risk factor studies (Su 2022) consistent. Biomarker panel development needed. Prevention trial requires large $n$ due to $approx$11% conversion rate.],
    [Ch.16 @spec:subthreshold-reservoir],

    [Timed Passive Epigenetic Reversal Strategy],
    [S], [0.30],
    [18--24 month anti-inflammatory + metabolic support enables passive demethylation of disease-state CpG sites. (a) Sustained anti-inflammatory + metabolic support reduces disease-associated methylation vs metabolic support alone.],
    [No ME/CFS epigenetic reversal trial exists. Passive demethylation rates in lymphocytes not precisely measured. Duration makes trial design challenging.],
    [Ch.16 @spec:timed-epigenetic-reversal],

    [Gut Dysbiosis: Trigger-Capable in a Subgroup?],
    [OQ], [---],
    [Should severe gut dysbiosis be reclassified as trigger-capable for post-gastroenteritis onset subgroup? (a) Post-GI infection ME/CFS rate comparable to respiratory viral triggers. (b) LPS alone activates safe mode in animal models. (c) FMT restores function in gut-onset subgroup.],
    [Giloteaux 2016 microbiome data, Maes 2008 leaky gut data consistent. FMT pilot (Wallis 2023) suggestive. Prospective post-GI cohort study needed.],
    [Ch.16 @oq:gut-trigger],

    [Threat-Composition-Guided Combination Therapy],
    [H], [0.30],
    [Measuring individual $cal(T)$ component ratios (viral/inflammatory/oxidative/gut) enables personalized intervention stack selection. (a) Guided combination $>$ fixed combination at same intervention count.],
    [Requires biomarker panel for $cal(T)$ components (IL-6, CRP, viral PCR, LPS, ROS markers). Randomized guided vs fixed combination trial needed.],
    [Ch.33 @hyp:threat-guided-therapy],

    [ME/CFS--Narcolepsy--Long COVID Triangle],
    [OQ], [---],
    [Shared vulnerability in CNS regulatory circuits to autoimmune/inflammatory attack? Narcolepsy = focal lesion (orexin neurons); ME/CFS = diffuse coordination failure; Long COVID = acute-onset separatrix crossing. Do ME/CFS patients have hypothalamic autoantibodies beyond GPCRs?],
    [Hypothalamic autoantibody screening in ME/CFS --- not done. Cross-condition immunotherapy trials. Narcolepsy metabolic profiling to test shared mechanism.],
    [Ch.33 @oq:cross-disease-triangle],

    [Comorbidity as Attractor Migration Across Disease Boundaries],
    [S], [0.25],
    [ME/CFS--POTS--fibromyalgia--MCAS cluster = waypoints on trajectory through shared attractor landscape. (a) Non-random comorbidity acquisition order. (b) Multi-omics shows intermediate positions for multi-diagnosis patients. (c) Early ME/CFS treatment reduces subsequent comorbidity incidence.],
    [Retrospective chart review of comorbidity acquisition order feasible. Multi-omics with multi-diagnosis cohort needed. Treatment timing vs comorbidity incidence study needed.],
    [Ch.33 @spec:comorbidity-migration],

    [Gulf War Illness as Multi-Parameter Separatrix Breach],
    [H], [0.35],
    [GWI = simultaneous multi-parameter separatrix crossing from concurrent sub-threshold insults. 25--30% prevalence (vs $approx$11% post-infectious) explained by multi-hit stacking. (a) More evenly distributed threat signal than ME/CFS. (b) More simultaneous exposures $arrow.r$ higher incidence. (c) More concurrent load-bearing locks than duration-matched ME/CFS.],
    [GWI biomarker panel comparison with ME/CFS feasible. VA exposure registry data for dose--response analysis available. Cross-condition multi-omics comparison needed.],
    [Ch.33 @hyp:gwi-multi-hit],

    [Gut Dysbiosis as Silent Separatrix Erosion Agent],
    [H], [0.35],
    [Chronic dysbiosis = most common modifiable risk factor; silently erodes separatrix distance via LPS translocation. (a) Pre-infection microbiome diversity predicts post-infectious ME/CFS. (b) Low diversity $times$ SOD2 TT synergistic risk. (c) Prophylactic gut support reduces conversion in at-risk population.],
    [Pre-infection stool samples in RECOVER/prospective cohorts. Gene$times$microbiome interaction analysis. Prevention trial in near-separatrix population.],
    [Ch.33 @hyp:gut-erosion],
  ),
  kind: table, supplement: [Table], caption: [Hypothesis registry entries from causal hierarchy extensions and cross-idea synthesis (2026-03-23). Includes formal modeling predictions, treatment strategies, diagnostic tools, boundary analyses, cross-disease connections, and creative brainstorm synthesis.],
) <tab:hypothesis-registry-2026-03-23>
] // end landscape page

=== Entries Added 2026-04-08: Sigma-1 Receptor, ER Stress, and Fluvoxamine

Motivated by: Reis et al.\ 2026 REVIVE-TOGETHER RCT (fluvoxamine in Long COVID fatigue, _Annals of Internal Medicine_); creative synthesis connecting S1R pharmacology to WASF3/ER stress/MAM pathways; Benoist commentary on treatment ≠ mechanism epistemology.

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Sigma-1 Agonism as Upstream Brake on the WASF3--ER Stress Loop],
    [H], [0.25],
    [S1R agonism suppresses IRE1$alpha$-mediated UPR, reducing ER stress signal amplitude and downstream WASF3 upregulation. (a) S1R agonist treatment reduces WASF3 expression in ME/CFS PBMCs or muscle. (b) S1R agonism improves mitochondrial supercomplex assembly ex vivo. (c) Highest-WASF3 patients show greatest fatigue benefit from fluvoxamine. (d) S1R agonist + mitochondrial antioxidant (MitoQ) shows synergy.],
    [WASF3 protein quantification in ME/CFS PBMCs vs healthy controls --- feasible. Fluvoxamine + WASF3 co-measurement trial in Long COVID/ME/CFS --- not yet done. Ex vivo S1R agonist + supercomplex assay (Wang 2023 protocol) --- feasible.],
    [Ch.18 @hyp:sigma1-wasf3-brake],

    [S1R--MAM Axis as Shared Vulnerability in Post-Infectious ME/CFS],
    [S], [0.20],
    [Multiple post-infectious triggers (EBV, enterovirus, SARS-CoV-2, HHV-6) converge on ER stress; genetically S1R-vulnerable individuals have lower threshold for permanent MAM dysfunction. (a) S1R expression reduced in ME/CFS PBMCs. (b) S1R promoter methylation elevated in ME/CFS. (c) UPR markers (BiP, CHOP, sXBP-1) elevated in ME/CFS blood. (d) S1R genetic variants enriched in ME/CFS GWAS.],
    [S1R expression Western blot / ELISA in ME/CFS PBMCs vs healthy controls --- not done. Bisulfite sequencing of S1R promoter --- feasible. UPR marker ELISA (BiP, CHOP) --- feasible, inexpensive. GWAS enrichment analysis when full DecodeME data available.],
    [Ch.18 @spec:s1r-mam-vulnerability],

    [DHEA--S1R Agonism: Mechanism Behind a Common Empirical Report],
    [H], [0.20],
    [DHEA/DHEA-S have documented S1R agonist activity; reported ME/CFS benefit may reflect S1R pathway rather than androgen receptor signalling. (a) DHEA-S levels inversely correlate with UPR markers in ME/CFS. (b) Ex vivo DHEA reduces ER stress markers in ME/CFS PBMCs at equimolar S1R occupancy vs. fluvoxamine. (c) S1R-selective agonist (pridopidine) produces comparable benefit to high-dose DHEA in crossover pilot.],
    [DHEA-S quantification in ME/CFS biobanks --- feasible and some data exist (often reduced). UPR marker co-measurement --- not done. Pridopidine is in Phase 2/3 for Huntington's disease; off-label ME/CFS pilot feasible.],
    [Ch.18 @hyp:dhea-s1r],

    [Fluvoxamine in ME/CFS: Does the Long COVID Signal Translate?],
    [OQ], [---],
    [REVIVE-TOGETHER shows FSS benefit (−0.43, 99% PP) in Long COVID fatigue. PEM, cognitive outcomes, and POTS were not measured. Whether benefit extends to formal ME/CFS patients and affects PEM specifically is the critical unknown.],
    [12-week RDBPC crossover in ICC/CCC-diagnosed ME/CFS measuring FSS, DSQ-PEM, cognitive battery, and WASF3 in PBMCs. CYP1A2/caffeine confound must be prospectively controlled (randomise caffeine abstinence). No such trial registered as of 2026-04.],
    [Ch.18 @oq:fluvoxamine-mecfs],

    [S1R Agonist Class Effects: Does S1R Affinity Rank Predict Efficacy?],
    [OQ], [---],
    [If S1R agonism is the active mechanism, SSRI efficacy in post-infectious fatigue should track S1R affinity rank (fluvoxamine > fluoxetine > sertraline/paroxetine). Retrospective registry analysis would test this at low cost.],
    [Retrospective SSRI outcome data from Long COVID registries (RECOVER, UKCCP) stratified by S1R affinity rank. Prospective head-to-head comparison of fluvoxamine vs.\ fluoxetine in Long COVID fatigue feasible with adaptive design.],
    [Ch.18 @oq:s1r-affinity-selectivity],

    [ER Stress Drugs (4-PBA, TUDCA) in ME/CFS: Upstream Test of the WASF3 Hypothesis],
    [OQ], [---],
    [If ER stress drives WASF3 upregulation and ME/CFS mitochondrial dysfunction, direct ER stress suppressors (4-PBA, TUDCA) should produce comparable benefit to S1R agonism via the same downstream pathway. Neither has been tested in ME/CFS. 4-PBA is FDA-approved (urea cycle disorders); TUDCA is OTC.],
    [3-arm pilot: 4-PBA vs.\ TUDCA vs.\ placebo, 12 weeks, measuring WASF3 expression, BiP/CHOP, FSS, and DSQ-PEM. 4-PBA safety profile in adults is established; low risk. TUDCA safety established. This would be the first direct test of the ER stress hypothesis as therapeutic target.],
    [Ch.18 @oq:er-stress-drugs-mecfs],
  ),
  kind: table, supplement: [Table], caption: [Hypothesis registry entries from sigma-1 receptor / ER stress / fluvoxamine synthesis (2026-04-08). Connects REVIVE-TOGETHER RCT evidence to WASF3 mitochondrial pathway, S1R pharmacology, and novel drug candidates.],
) <tab:hypothesis-registry-2026-04-08>
] // end landscape page

=== Entries Added 2026-04-10: Vascular Pathology, Endothelial Senescence, and Carotid Body Sensitisation

Motivated by: Nunes et al.\ 2026 endothelial senescence paper; Scheibenbogen-Wirth 2024 vascular-primary temporal model; Guo 2025 microfluidic RBC biomechanics; Flaskamp 2022 endothelial progenitor failure; El-Medany 2024 carotid body sensitisation; Edgell 2025 IMT pilot RCT; van Campen 2023 orthostatic hypocapnia quantification.

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Senescent Endothelial Cell Burden as a Central Maintaining Mechanism],
    [H], [0.40],
    [(a) p16/p21 immunostaining in ME/CFS skin/muscle biopsies elevated vs healthy controls. (b) SASP markers (GDF-15, IL-6, syndecan-1) correlate with disease severity. (c) NK cell cytotoxicity inversely correlates with senescent cell burden in same patient. (d) Senolytic treatment (D+Q) reduces SASP and improves FMD.],
    [Skin punch biopsy p16/p21 immunostaining — not done in ME/CFS. SASP marker correlation with severity — feasible with existing biobanks. NK cytotoxicity + senescence co-measurement — not done. D+Q pilot trial feasible (established safety record from IPF trials).],
    [Ch.7 @hyp:endothelial-senescence-loop],

    [Vascular-Primary Causal Model: Microvascular Damage Precedes Mitochondrial Injury],
    [H], [0.45],
    [(a) Post-COVID patients converting to ME/CFS show capillary basement membrane thickening appearing before mitochondrial ultrastructure abnormalities on serial biopsies. (b) Interventions improving microvascular flow (sulodexide, HELP apheresis) improve post-exertional oxygen delivery before improving mitochondrial function markers. (c) Blood volume expansion alone improves CPET VO#sub[2] proportionally to restored capillary density.],
    [Serial muscle biopsy at 3, 6, 12 months post-COVID stratified by ME/CFS development — not done. Mechanistic sequence requires prospective biopsy design. Sulodexide/HELP apheresis with parallel mitochondrial and microvascular outcome measurement — feasible but no trial with that design.],
    [Ch.6 @hyp:vascular-primary-mecfs],

    [Failed Angiogenic Compensation as ME/CFS Chronification Threshold],
    [H], [0.30],
    [(a) Circulating endothelial progenitor cells (EPCs) are depleted in ME/CFS. (b) EPC count correlates inversely with disease duration. (c) Agents that mobilise EPCs (G-CSF, exercise mimetics) improve capillary density in ME/CFS.],
    [EPC quantification (flow cytometry, CD34+/CD133+/VEGFR2+ cells) in ME/CFS — not systematically done. Flaskamp 2022 data in Long COVID only. Exercise mimetics trial not feasible without safety data.],
    [Ch.10 @hyp:failed-angiogenesis-mecfs],

    [The Glycocalyx as a Molecular Pacing Device: Impaired Flow-Mediated Exercise Regulation],
    [H], [0.30],
    [(a) ME/CFS patients show blunted flow-mediated dilation responses disproportionately worse during incremental exercise. (b) Syndecan-1 shedding correlates with VE/VCO#sub[2] slope on CPET. (c) Glycocalyx restoration (sulodexide) normalises intra-exercise FMD before improving resting FMD.],
    [Intra-exercise Doppler FMD during low-level ergometry — not performed in ME/CFS. Syndecan-1 + CPET co-measurement — feasible. Sulodexide trial with Doppler FMD endpoints — feasible.],
    [Ch.14k @hyp:glycocalyx-pacing-device],

    [Orthostatic Hypocapnia as a Positive Feedback Loop for Microclot Formation],
    [H], [0.20],
    [Tilt-induced alkalosis (capillary pH) correlates with post-tilt microclot burden (fluorescence microscopy) in within-patient comparison. Preventing hypocapnia (CO#sub[2] rebreathing during tilt) reduces post-tilt microclot accumulation.],
    [Simultaneous tilt-table + capillary blood gas + microclot fluorescence microscopy — not done. CO#sub[2] rebreathing tilt protocol feasible. Each individual link physiologically grounded; integrated cycle not tested.],
    [Ch.14k @hyp:hypocapnia-microclot-loop],

    [Senescent Endothelial Cell Exosomes as Systemic SASP Propagators],
    [S], [0.15],
    [(a) ME/CFS plasma EVs show elevated SA-EV markers (p21, p16, SA-$beta$-galactosidase cargo). (b) ME/CFS EVs induce senescence in healthy endothelial cells in vitro. (c) SA-EV burden correlates with severity and SASP marker levels.],
    [SA-EV characterisation in ME/CFS plasma — not done. In vitro senescence induction assay — feasible. SA-EV biology established in aging literature; ME/CFS application entirely speculative.],
    [Ch.14k @spec:saev-propagation],

    [RBC Phosphatidylserine Externalisation as a Microclot Nucleation Signal],
    [H], [0.30],
    [Annexin-V binding to ME/CFS RBCs elevated vs healthy controls. PS externalisation correlates with microclot area in fluorescence microscopy of same patient sample. Anti-PS treatment reduces microclot burden in vitro.],
    [Annexin-V flow cytometry on ME/CFS RBCs — not done; 2-hour assay from standard blood draw. PS + microclot co-measurement — feasible. RBC PS externalisation not directly measured in ME/CFS despite ROS and morphology data.],
    [Ch.14k @hyp:rbc-ps-microclot-nucleation],

    [Carotid Body Sensitisation as a Reversible Amplifier of Orthostatic Symptoms in ME/CFS],
    [S], [0.25],
    [(a) HVR (hypoxic ventilatory response) to 15% O#sub[2] is elevated in ME/CFS vs healthy controls. (b) Gefapixant (P2X3 antagonist) reduces HVR in ME/CFS within 2 weeks. (c) Reduced HVR correlates with improvement in orthostatic symptom scores and PETCO#sub[2] trajectories during tilt.],
    [HVR measurement with El-Medany carotid body protocol in ME/CFS — not done; 30-min test per patient. Gefapixant has established safety record (chronic cough trials). P2X3 antagonism + tilt PETCO#sub[2] measurement — feasible. Long COVID carotid body data @ElMedany2024carotid requires replication in formal ME/CFS.],
    [Ch.18 @spec:carotid-body-mecfs],

    [Inspiratory Muscle Training (IMT) as a PEM-Safe Autonomic Intervention in ME/CFS],
    [OQ], [---],
    [Does 8-week IMT (30 breaths at 75% MIP) improve HRV, peak VO#sub[2], and SF-36 vitality in ME/CFS without triggering PEM at a rate exceeding 15% (vs 31% in exercise groups)? Does IMT-induced HRV improvement predict exercise tolerance gains? What is the minimum effective dose?],
    [Edgell 2025 pilot ($n=16$, unblinded) shows promising signals: +1.4 mL/kg/min VO#sub[2], HRV improvement, SF-36 physical function +5.6. Sham-controlled RCT feasible ($n approx 60$). PEM monitoring by DSQ-2 at 24h and 72h post-session — not done in pilot.],
    [Ch.18 @sec:imt-mecfs],
  ),
  kind: table, supplement: [Table], caption: [Hypothesis registry entries from vascular pathology integration (2026-04-10). Covers endothelial senescence, vascular-primary causal model, failed angiogenic compensation, glycocalyx mechanosensing, orthostatic hypocapnia--microclot loop, SA-EV propagation, RBC phosphatidylserine externalisation, carotid body sensitisation, and IMT as autonomic intervention.],
) <tab:hypothesis-registry-2026-04-10>
] // end landscape page

#landscape[
#figure(
  table(
    columns: (2fr, 0.6fr, 0.5fr, 3fr, 2.5fr, 1.5fr),
    fill: (col, row) => if row == 0 { luma(220) } else if calc.odd(row) { luma(245) } else { white },

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Taurine as Downstream Support in the AIMM Cascade],
    [S], [0.30],
    [(a) Taurine supplementation (1--2 g/day, 12 weeks) reduces post-exertional sodium accumulation measured by sodium MRI in patients with documented intracellular sodium overload. (b) Null result expected in patients without intracellular sodium overload (AIMM-negative phenotype). (c) Serum taurine levels do not predict mitochondrial outcomes (consistent with Marcangeli 2025 null result; compartment-specific depletion may be at issue).],
    [Sodium MRI protocol @Petter2022sodium as endpoint---feasible but specialist equipment required. PEM diary + DSQ-2 as clinical endpoint. No ME/CFS taurine supplementation RCT exists. Cardiac analog (heart failure, 11 studies) non-significant @McGurk2022taurineHFreview. ME/CFS metabolomics show disturbed taurine pathway @Germain2017taurineME but not measured depletion.],
    [Ch.16 @spec:taurine-aimm; Ch.6 @sec:calcium-dysregulation],

    [Taurine Status as Determinant of AIMM Severity Heterogeneity],
    [S], [0.30],
    [(a) Intracellular taurine (RBC lysate or muscle biopsy) inversely correlates with post-exercise sodium accumulation on sodium MRI in ME/CFS patients. (b) Taurine supplementation (2 g/day, 8 weeks) reduces intracellular sodium rise in patients with documented sodium overload.],
    [No study has simultaneously measured intracellular taurine and sodium accumulation in ME/CFS. Sodium MRI protocol established @Petter2022sodium. RBC taurine assay feasible with standard amino acid analysis.],
    [Ch.6 @spec:taurine-aimm-heterogeneity; Ch.16 @sec:taurine],

    [Bile Acid Conjugation Competition Diverts Taurine from Cytoprotective Roles],
    [S], [0.20],
    [(a) ME/CFS patients have higher taurine-conjugated to glycine-conjugated bile acid ratio than controls. (b) Glycine co-supplementation raises free plasma taurine more than equivalent taurine supplementation alone.],
    [Germain 2017 found both taurine and bile acid pathways disturbed @Germain2017taurineME ---independent signals or coupled? Direction of bile acid pathway disturbance unspecified. Bile acid profile + free taurine + microbiome assay is feasible and low cost.],
    [Ch.16 @spec:taurine-bile-competition],
  ),
  kind: table, supplement: [Table], caption: [Hypothesis registry entries from taurine integration (2026-04-16). Covers AIMM-cascade support, heterogeneity mechanism, and bile acid competition hypothesis.],
) <tab:hypothesis-registry-2026-04-16-taurine>
] // end landscape page

=== Entries Added 2026-04-17: Universal Mechanism Families Survey (ch17)

Motivated by: systematic survey of 19 universal disease mechanism families applied to ME/CFS; bottom-up taxonomy synthesis; Phase 3 brainstorming on ch17 content.

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Breadth of Channelopathy in ME/CFS],
    [OQ], [---],
    [Is TRPM3/TRP channel dysfunction an isolated finding or part of a broader channelopathy affecting voltage-gated, ligand-gated, and transporter families across multiple cell types? Systematic profiling would determine whether channelopathy is a convergent feature across immune, neural, and endothelial lineages.],
    [Patch-clamp electrophysiology and ion channel expression profiling (RNAseq + proteomics) in T cells, neurons (iPSC-derived), and endothelial cells from ME/CFS patients vs healthy controls. TRPM2/TRPC4 co-profiling feasible with existing NK cell protocols @sasso2026trpm3.],
    [Ch.17 @sec:um-ion-channel],

    [Scope of Proteostasis Failure in ME/CFS],
    [OQ], [---],
    [Does proteostasis failure in ME/CFS extend beyond extracellular fibrin microclots to intracellular protein aggregation in neurons, NK cells, or endothelial cells? Primary vs secondary phenomenon remains unresolved.],
    [Amyloid detection assays (thioflavin T, Congo red) on ME/CFS-derived iPSC neurons. Cryo-EM on patient-derived NK cells and endothelial cells. Long COVID intracellular aggregation data (Pretorius group) as comparator.],
    [Ch.17 @sec:um-proteostasis],

    [Senolytic Therapy Potential in ME/CFS],
    [OQ], [---],
    [If senescent cells accumulate in vascular endothelium, CNS glia, or immune compartments in ME/CFS, senolytic agents (dasatinib + quercetin, fisetin) might reduce SASP-driven neuroinflammation and vascular dysfunction. Entirely unstudied in ME/CFS.],
    [Senescence burden quantification (p16/p21 immunostaining, SA-β-galactosidase, SASP marker panel) in ME/CFS skin/muscle biopsies. Phase 1/2 dasatinib + quercetin pilot in ME/CFS (established safety in IPF, diabetic kidney disease). Fisetin is OTC with acceptable safety profile.],
    [Ch.17 @sec:um-cell-death],

    [Cell Danger Response Resolution in ME/CFS],
    [OQ], [---],
    [Is the cell danger response chronically engaged in ME/CFS, and if so, what prevents resolution? Ectonucleotidase failure, purine metabolite imbalance, and P2X7R overactivation are candidate mechanisms.],
    [CD73/CD39 ectonucleotidase activity assay in ME/CFS PBMCs vs healthy controls. Extracellular purine ratio (ATP/AMP/adenosine) quantification by HPLC in ME/CFS plasma. P2X7R expression and function in ME/CFS monocytes and microglia (iPSC-derived). Naviaux suramin data (2019) provides partial CDR framework context @naviaux2019salugenesis.],
    [Ch.17 @sec:um-purinergic],

    [The CD73 Dual Bottleneck: Purinergic Resolution and NAD⁺ Salvage Share a Single Rate-Limiting Step],
    [S], [0.30],
    [CD73 serves dual duty: ATP→adenosine (danger resolution) AND NMN→NR (NAD⁺ salvage). If overwhelmed by purine catabolism in ME/CFS, neither pathway resolves. (a) CD73 activity in ME/CFS PBMCs inversely correlates with extracellular ATP:adenosine AND intracellular NAD⁺ simultaneously. (b) NMN supplementation fails in low-CD73 patients while NR bypasses bottleneck.],
    [CD73 enzymatic activity assay (malachite green phosphate assay) — feasible; not done in ME/CFS. Purine metabolite panel (LC-MS/MS) simultaneously with CD73 activity — not done. NMN vs NR crossover stratified by CD73 activity — tractable pilot design @naviaux2016metabolic @naviaux2019salugenesis.],
    [Ch.17 @sec:um-purinergic],

    [The Three-Brake Failure Hypothesis: Simultaneous NF-κB Checkpoint Loss in ME/CFS],
    [H], [0.35],
    [All three major NF-κB transcriptional brakes fail simultaneously in ME/CFS: (1) GR epigenetic hyposensitivity @roberts2017glucocorticoid, (2) VDR blockade by EBV EBNA-3 (established EBV biology; see Family 16), (3) Nrf2 impairment (hypothetical). Triple brake loss explains self-sustaining inflammation without ongoing acute infection. (a) ME/CFS PBMCs show reduced Nrf2+GR+VDR nuclear translocation vs controls simultaneously. (b) Sulforaphane reduces NF-κB markers only in Nrf2-responsive patients.],
    [Three-transcription-factor ChIP-seq or nuclear fractionation Western blot (Nrf2, GR p65, VDR) — not done in ME/CFS. ChIP-seq feasible (PBMCs, n=60). VDR binding assay after EBV-antigen challenge feasible. Sulforaphane dose-escalation + biomarker panel — low risk, no trial registered.],
    [Ch.17 @sec:um-transcriptional],

    [The Structural Ratchet Hypothesis: Irreversible Damage Accumulation Across Mechanism Families],
    [H], [0.50],
    [Capillary rarefaction, SFN fiber loss, telomere shortening, epigenetic lock-in, muscle fiber type shift, and senescent cell accumulation all resist reversal on physiological timescales — each crash advances the ratchet. (a) Disease duration predicts structural damage burden (capillary density, IENFD, telomere length) more strongly than current symptom severity. (b) Functional improvement outpaces structural recovery on biopsy. (c) Early-treatment cohorts ($<=$2yr) show higher complete-remission rates vs late-treatment ($>=$5yr) with identical interventions.],
    [Longitudinal biopsy study (muscle + skin) in newly diagnosed ME/CFS tracking capillary density, IENFD, mitochondrial morphology — not done. Cross-sectional disease-duration vs structural damage — feasible with existing biobank samples. Early vs late treatment comparison — requires registry data with treatment timing @knights2024telomere @scheibenbogen2025muscle @giannoccaro2021sfn.],
    [Ch.17 @sec:structural-ratchet],

    [Which ME/CFS Mechanism Families Are Keystones?],
    [OQ], [---],
    [A 19-family interaction matrix (estimated from co-occurrence in multi-omics datasets) would identify keystones with highest downstream impact and the minimum family-targeting set to collapse the disease-state attractor. Preliminary analysis suggests Family 19 (purinergic) is highest-leverage: sits upstream of both immune activation (P2X7/NLRP3) and metabolic sensing (CDR).],
    [19×19 interaction matrix construction from ME/CFS multi-omics — feasible bioinformatics task. Eigenstructure analysis of existing network medicine datasets. Validation: predicted keystone families should show strongest correlations with overall severity. Multi-target vs single-target RCT design powered to test keystone prediction.],
    [Ch.17 @sec:family-interactions],

    [Can a 19-Marker Panel Stratify ME/CFS Patients by Mechanism Profile?],
    [OQ], [---],
    [One canonical biomarker per family (19-marker panel) to compute a "Multi-Family Mechanism Score" per patient. Would confirm diagnosis, grade severity by mechanism breadth, stratify for targeted treatment, and track response. Mechanism breadth (number of active families) predicted to correlate with severity and duration. $>=$12/19 families active predicted to indicate poorest prognosis.],
    [19-marker panel study design is feasible at research level; no such multi-family characterisation study exists. Individual markers are all validated — combinatorial study is the gap. Predicted discrimination: >90% AUC vs healthy controls if 10+ families are captured.],
    [Ch.17 @sec:mfms],
  ),
  kind: table, supplement: [Table], caption: [Hypothesis registry entries from ch17 universal mechanism families survey (2026-04-17). Covers channelopathy breadth, proteostasis scope, senolytic therapy potential, CDR resolution, CD73 dual bottleneck, three-brake failure, structural ratchet, keystone families, and 19-marker diagnostic panel.],
) <tab:hypothesis-registry-2026-04-17>
] // end landscape page

/*
#table(
  columns: (auto, auto, auto, auto, auto, auto),

caption: [Cross-document hypothesis and open question registry (56 key entries).
  “Cert.” = certainty on the 0–1 scale used throughout the document;
  “inf.” = inferred from context language.
  <tab:hypothesis-registry>], 

*Hypothesis Title* &
*Type* &
*Cert.* &
*Testable Predictions (condensed)* &
*Available Tests / Status* &
*Location*  

\footnotesize_(continued from previous page)_ 

*Hypothesis Title* &
*Type* &
*Cert.* &
*Testable Predictions (condensed)* &
*Available Tests / Status* &
*Location*  

\footnotesize_(continued on next page)_ 

// ============================================================
// DOMAIN 1 – ENERGY METABOLISM
// ============================================================
\small_*Domain 1: Energy Metabolism*_ \

Selective Energy Dysfunction
(@hyp:selective-energy)
&
[H], [0.55],
&
(a) Hair/nail growth normal despite severe fatigue.
(b) Brain FDG-PET hypometabolism correlates with CNS symptoms.
(c) Electrical stimulation produces greater force than voluntary contraction
(CNS bypass effect).
(d) Two-day CPET worsens while resting muscle ATP remains normal.
&
Hair/nail growth measurement; FDG-PET; two-day CPET with muscle biopsy;
neuromuscular electrical stimulation.
All methods available today; no new tools required.
&
Ch.6 @sec:selective-energy-dysfunction;
Ch.25b @sec:selective-energy-dysfunction-study \

Multi-Level Energy Crisis and Vicious Cycle
(@hyp:vicious-cycle-integrated)
&
[H], [0.55],
&
Vascular $\to$ ischemia $\to$ ion dysregulation $\to$ mitochondrial damage
$\to$ ROS $\to$ vascular amplification.
Multi-target interventions more effective than mono-target; breaking any link
attenuates cycle but does not eliminate it.
&
Simultaneous ROS, I-FABP, TRPM3 current, mitochondrial O#sub[2] flux, and
microvascular imaging before/after multi-target intervention.
Multi-centre coordination needed; no single new assay required.
&
Ch.6 @sec:vicious-cycle \

Homocysteine-Mediated ETC Disruption as a Contributing Mechanism
(@hyp:homocysteine-etc-disruption)
&
[H], [0.30],
&
(a) ME/CFS patients with MTHFR TT genotype show higher CSF homocysteine than CT or CC.
(b) CSF homocysteine correlates with ETC complex activity in PBMCs.
(c) MTHFR-guided B12/folate supplementation reduces fatigue in elevated CSF homocysteine patients.
&
CSF and serum homocysteine measurement; MTHFR genotyping; ETC complex activity assay (Seahorse);
MTHFR-guided supplementation RCT in homocysteine-elevated subgroup.
CSF collection is invasive; requires specialized center.
&
Ch.6 @sec:amino-acid \

CNS Penetration as Limiting Factor
(@spec:cns-penetration)
&
[S], [inf.],
&
Failed CoQ10/carnitine trials reflect inadequate CNS penetration, not wrong
target.
CNS-penetrant formulations of same compounds show different efficacy.
&
CSF pharmacokinetics; MR spectroscopy to measure brain metabolite response;
comparative PK/PD trials of CNS-penetrant vs.\ non-penetrant formulations.
Feasible; requires CSF consent.
&
Ch.6 @sec:selective-energy-dysfunction \

Depression and ME/CFS May Share a Stress-Responsive Mitochondrial Failure Mode
(@spec:cullen2026-atp-fatigue)
&
[S], [0.40],
&
Near-normal ATP at baseline, but reduced capacity to upscale energy output
under metabolic stress in depression may parallel post-exertional energy
collapse in ME/CFS.
Whether ME/CFS mitochondria share this regulatory defect requires direct testing.
&
Metabolic flux assay (Seahorse) in ME/CFS cells at rest and under stress;
ATP measurement with direct energy demand elevation.
Methods available; cross-disease comparison needed.
&
Ch.6 @sec:selective-energy-dysfunction \

NETosis as Metabolic Sink Contributing to Energy Depletion
(@spec:netosis-metabolic-sink)
&
[S], [0.30],
&
(a) Ongoing NETosis creates energy drain competing with normal cellular demands
via NADPH oxidase, chromatin decondensation, membrane remodelling.
(b) Energy depletion impairs NET clearance; accumulated NETs drive further
inflammation; vicious cycle: energy $\to$ NETosis $\to$ inflammation $\to$ energy depletion.
(c) Dual treatment (NET clearance + mitochondrial support) breaks cycle
more effectively than mono-target.
&
Neutrophil oxygen consumption (extracellular flux) during NETosis induction;
ATP quantification during NET clearance (DNase I treatment);
calprotectin (NET burden proxy) and inflammatory markers before/after dual therapy.
Cross-referencing with immune dysfunction biomarkers (Ch.7).
&
Ch.6 @sec:mechanistic-implications; Ch.7 @sec:viral \

Stimulant-Enabled Push-Crash Cycle as Disease Progression Driver
(@spec:stimulant-progression)
&
[S], [0.40],
&
ME/CFS patients who use stimulants to maintain pre-illness activity levels
show worse 2-year functional outcomes than matched patients who reduce
activity and use pacing, even controlling for baseline severity.
&
Longitudinal cohort study comparing functional trajectories of
stimulant-using vs.\ pacing-only ME/CFS patients; confounding by
indication is the main challenge.
No longitudinal stimulant-specific outcome data exist.
&
Ch.15 @subsec:energy-credit \

Pitolisant in ME/CFS
&
[OQ], [—],
&
(a) Does pitolisant reduce fatigue without enabling overexertion?
(b) Does anti-neuroinflammatory effect provide durable benefit beyond symptom masking?
(c) How does it interact with dysregulated histamine in MCAS comorbidity?
&
No ME/CFS-specific clinical trials exist.
RCT needed; MCAS subgroup analysis would be informative.
&
Ch.15 @subsec:pitolisant \

// ============================================================
// DOMAIN 2 – IMMUNE DYSFUNCTION
// ============================================================
\small_*Domain 2: Immune Dysfunction*_ \

NETosis as Bridge from Acute Viral Infection to Chronic Autoimmunity
(@hyp:monsalve2025-nets-autoimmunity)
&
[H], [0.70],
&
Excessive NETosis following viral infection generates persistent autoantigenic
stimuli (citrullinated histones, extracellular DNA) activating NLRP3
inflammasome. Impaired NET clearance creates self-amplifying loop linking
acute viral trigger to chronic autoimmune-like pathology.
&
NLRP3 activation markers (IL-1$beta$, IL-18, caspase-1) and citrullinated
autoantibody titres in NETosis-positive vs.\ resolved subgroups;
PAD4 inhibitor and DNase I as mechanistically grounded targets.
&
Ch.7 @sec:viral \

Bidirectional Viral-Immune Feedback Loop
(@hyp:viral-reactivation-bidirectional)
&
[H], [0.50],
&
(a) Antiviral monotherapy gives partial, incomplete benefit.
(b) Combined antiviral + immune-modulating therapy is synergistic.
(c) Breaking cycle at either node eventually normalises both viral titres and
immune markers, with temporal lag.
&
Randomised 2$times$2 factorial trial (antiviral / immune-modulator /
combination / placebo) measuring EBV/HHV-6 PCR + cytokine panel + symptoms.
Existing antivirals (valaciclovir) and LDN available.
&
Ch.7 @sec:viral \

Poly-Herpesvirus ALR Cascade
(@spec:poly-herpesvirus-alr)
&
[S], [0.35],
&
(a) Patients with antibodies against more herpesvirus dUTPases have more severe
symptoms.
(b) Single-agent antiviral therapy produces only partial benefit; combination
approaches more effective.
(c) Longitudinal sampling reveals sequential herpesvirus reactivation events.
(d) dUTPase-targeted interventions reduce immune activation independently of
viral load.
&
Prospective longitudinal sampling of dUTPase IgG (EBV, HHV-6, VZV) with
symptom correlation; combination antiviral trial; dUTPase inhibitor
development.  Anti-dUTPase ELISA exists but is not yet commercially
standardised.
&
Ch.7 @sec:poly-herpesvirus \

EBV-Adolescence Autoimmune Window
(@hyp:ebv-adolescence)
&
[H], [0.50],
&
(a) GPCR autoantibody titres higher in adult-onset vs.\ adolescent-onset ME/CFS.
(b) EBV-triggered cases show distinct B-cell subset distributions.
(c) Early rituximab in adolescents with recent EBV-triggered ME/CFS prevents
plasma cell establishment.
&
Retrospective biobank stratified by age at onset + EBV serology;
GPCR autoantibody ELISA; B-cell subset flow cytometry;
adolescent rituximab pilot ($n approx 20$).
&
Ch.7 @sec:herpesviruses \

IL-2 Pathway Dysregulation
(@hyp:il2-pathway)
&
[H], [0.45],
&
(a) IL-2 receptor expression (CD25, CD122, CD132) abnormal.
(b) JAK/STAT5 downstream signalling dysregulated.
(c) Functional T-cell responses to exogenous IL-2 differ from controls.
(d) EV IL-2 elevation and epigenetic signature reflect same upstream process.
&
IL-2 receptor flow cytometry; phospho-STAT5 intracellular staining;
low-dose IL-2 challenge with serial cytokine measurement.
All methods exist; $n gt.eq 50$ per group.
&
Ch.7 @sec:cytokines \

GPCR Autoantibody Pathogenicity
(@oq:gpcr-pathogenicity)
&
[OQ], [—],
&
Are binding-detected antibodies the same as those causing symptoms?
Do healthy individuals harbour similar antibodies that only become pathogenic
under inflammation?
Would functional receptor-activation assays better identify pathogenic antibodies?
&
Cell-based functional assays (receptor internalisation, cAMP);
head-to-head CellTrend ELISA vs.\ functional assay in same cohort;
longitudinal pre/post immunoadsorption functional measurement.
&
Ch.7 @sec:autoantibodies \

Exhausted Immune Surveillance Phenotype
(@spec:exhausted-surveillance)
&
[S], [0.35],
&
(a) B-cell count $<$10% lower reference limit co-occurs with elevated CD3+
and low NK cells in a reproducible subgroup.
(b) Subgroup correlates with EBV titres $>$20$times$ upper limit.
(c) NK-activating immunomodulators produce greater benefit in this subgroup.
&
Lymphocyte subset panel + EBV PCR + IgG titre in registry;
cimetidine case series subgroup analysis; NK cytotoxicity assay (K562 target).
&
Ch.7 @sec:exhausted-surveillance \

Frustrated NETosis: Incomplete NET Formation as Autoantigen Generator
(@hyp:frustrated-netosis)
&
[H], [0.35],
&
(a) ME/CFS neutrophils show reduced NET completion rates but equivalent/elevated
citrullinated histone release vs.\ controls (frustrated phenotype).
(b) Stress-responsive mitochondrial failure (Cullen2026ATP phenotype) correlates
with NET completion failure.
(c) DNase I therapy reduces calprotectin levels more effectively in frustrated-NETosis
subgroup than in normal-NETosis or control.
&
Ex vivo NETosis assay with live imaging quantifying NET completion;
citrullinated histone (citH3) ELISA; mitochondrial stress-response testing
(Seahorse); calprotectin measurement pre/post DNase I.
Methods available; sample size $n approx 40$ (20 ME/CFS, 20 controls).
&
Ch.7 @sec:autoimmune-mechanisms \

Can Calprotectin Serve as an Objective PEM Biomarker?
(@q:calprotectin-pem)
&
[OQ], [testable],
&
(a) Calprotectin rises 6–24 h post-exertion and predicts subsequent symptom severity.
(b) Rise correlates with NET burden markers (citH3, D-dimer).
(c) Serial calprotectin measurement objectively distinguishes normal fatigue recovery
from pathological PEM trajectory.
&
2-day CPET protocol with serial calprotectin measurement (baseline, 2 h, 6 h,
24 h, 48 h, 72 h post-exertion); parallel symptom diaries and NET markers
(citH3, D-dimer, DNase activity).
Low cost; within-subject design ($n approx 20$); methods all available.
&
Ch.7 @sec:autoantibodies \

Post-COVID Immune Damage and Vaccine Efficacy
(@q:postcovid-vaccine-efficacy)
&
[OQ], [—],
&
(a) ME/CFS patients with post-COVID worsening show lower seroconversion rates
to subsequent vaccinations than ME/CFS patients without COVID history.
(b) Pre-existing vaccine antibodies remain stable after COVID (no immune amnesia).
(c) Combined ME/CFS + post-COVID immune dysfunction requires additional booster
doses for adequate protection.
&
Prospective vaccination study in ME/CFS $plus.minus$ COVID history; antibody titre
monitoring pre/post vaccination; comparison with healthy controls.
Methods available; requires ME/CFS cohort with documented COVID status.
&
Ch.7 @sec:vaccination-mecfs \

// ============================================================
// DOMAIN 3 – NEUROLOGICAL
// ============================================================
\small_*Domain 3: Neurological*_ \

Autoantibodies Causally Drive Neurological Dysfunction in Long COVID
(@hyp:guedesde-sa2024-autoab-neuro)
&
[H], [0.60],
&
Diverse autoantibodies against nervous system targets (pontine tissue, meninges,
spinal cord, sciatic nerve) identified in Long COVID; passive transfer to mice
reproduced neurological phenotypes.
Higher anti-pons and anti-meningeal titres in neurologically-prominent vs.\
fatigue-dominant patients; plasmapheresis/IVIG/rituximab appropriate in
autoantibody-positive subgroups.
&
Neurological symptom severity stratification; autoantibody arrays covering
nervous system proteome;
passive transfer validation in animal models; paired immunoadsorption trials.
&
Ch.8 @sec:bbb \

Maladaptive Sickness Behavior Program
(@hyp:maladaptive-sickness-behavior)
&
[H], [0.50],
&
(a) Fatigue correlates with inflammatory markers but not deconditioning metrics.
(b) Sickness behaviour scale exceeds equally deconditioned non-ME/CFS controls.
(c) Anti-inflammatory interventions reduce sickness behaviour and cytokines in
parallel.
(d) TPJ activation (fMRI) during effort-allocation tasks abnormal in ME/CFS.
&
Sickness Behaviour Scale + cytokine panel;
fMRI effort-allocation paradigm (used in Walitt 2024 NIH study);
tocilizumab proof-of-concept trial with parallel fatigue + SBS endpoints.
&
Ch.8 @sec:fatigue-mechanisms \

Glial Maturation Window and Pediatric Recovery
(@hyp:glial-maturation-window)
&
[H], [0.45],
&
(a) TSPO-PET shows declining microglial activation in recovering adolescents
but persistence in duration-matched adults.
(b) Recovery rates decline sharply at age 22–25, not gradually.
(c) CSF sCD14 and chitotriosidase normalise in recovering adolescents.
(d) CSF-1R expression elevated in adolescents vs.\ adults with same duration.
&
Age-stratified TSPO-PET; CSF inflammatory markers; CSF-1R ELISA;
5-year longitudinal cohort (adolescent vs.\ young-adult onset).
PET infrastructure at several ME/CFS centres; paediatric registries available.
&
Ch.8 @sec:glial \

Spike Protein Primes Brain Innate Immunity, Lowering the Neuroinflammatory Threshold
(@hyp:frank2024-s1-priming)
&
[H], [0.55],
&
(a) Prior S1 spike exposure sensitises brain innate immunity in rats,
producing sustained neuroinflammatory responses (MhcII$alpha$, Nlrp3, Tlr4 upregulation).
(b) Long COVID patients show elevated CSF neuroinflammation markers specifically
after minor intercurrent infections.
(c) Magnitude of neuroinflammatory response correlates with interval since primary
SARS-CoV-2 infection and residual S1 antigen burden.
(d) PEM frequency increases after intercurrent infections in proportion to S1 priming.
&
Rodent S1 priming model with LPS challenge (foundational);
CSF neuroinflammation markers (IL-1$beta$, IL-6, TNF-$alpha$) after experimental
respiratory challenge or natural intercurrent infection;
longitudinal symptom diary + CSF sampling post-infection;
TLR4 antagonist proof-of-concept trial (modelling TLR4 blockade).
&
Ch.8 @sec:bbb \

TRPM3 as Missing Link in Thermoregulation
(@hyp:trpm3-thermoregulation)
&
[H], [inf.],
&
(a) Sensory neuron TRPM3 current reduced in ME/CFS (not only immune cells).
(b) TRPM3 dysfunction severity correlates with temperature dysregulation score.
(c) Pregnenolone sulphate partially restores thermal perception.
&
Patch-clamp of iPSC-derived sensory neurons;
corneal confocal microscopy (non-invasive SFN/TRPM3 surrogate);
pregnenolone sulphate n-of-1 series with thermosensory threshold testing.
&
Ch.14h @sec:trpm3-hypotheses \

TRPM3 Dysfunction Upstream of Mitochondrial Failure
(@sec:trpm3-hypotheses)
&
[OQ], [—],
&
(a) TRPM3 dysfunction severity correlates with mitochondrial O#sub[2] flux
impairment ($r > 0.6$).
(b) Restoring TRPM3 function improves mitochondrial parameters.
(c) Mitochondrial therapies without TRPM3 restoration show only temporary benefit.
(d) Calcium imaging during stress shows abnormal transients in ME/CFS.
&
Seahorse XFe96 assay + TRPM3 current measurement in same PBMCs;
Fura-2 live-cell calcium imaging;
before/after pregnenolone sulphate.
Technically demanding; achievable in specialist laboratory.
&
Ch.14h @sec:trpm3-hypotheses \

Meningitis as Disproportionate Neurological Threat (Double Vulnerability)
(@spec:meningitis-double-vulnerability)
&
[S], [0.35],
&
(a) ME/CFS meningitis patients show worse Glasgow Outcome Scale at 6 months
vs.\ non-ME/CFS meningitis patients.
(b) Post-meningitis ME/CFS shows greater PET microglial activation than
either condition alone.
(c) CSF inflammatory markers disproportionately elevated relative to peripheral
burden during acute meningitis in ME/CFS.
(d) MCAS comorbidity predicts worse post-meningitis cognitive outcomes.
&
Retrospective chart review of ME/CFS patients who contracted meningitis
(rare events; registry-based identification needed);
prospective PET-MRI in post-meningitis ME/CFS vs.\ controls.
Methods available but events rare.
&
Ch.8 @sec:meningitis-bbb \

MCAS-Mediated Glymphatic Impairment via Dural Mast Cell Dysfunction
(@spec:mcas-glymphatic)
&
[S], [0.25],
&
(a) MCAS patients show impaired glymphatic clearance on diffusion-tensor
MRI compared to non-MCAS controls.
(b) Dural mast cell density or degranulation markers correlate with CSF
flow rates at ACE points in post-mortem studies.
(c) Mast cell stabilisers improve cognitive symptoms via glymphatic
rather than anti-inflammatory mechanisms.
&
Diffusion-tensor MRI glymphatic imaging in MCAS vs.\ non-MCAS ME/CFS;
post-mortem dural mast cell histology; mast cell stabiliser trials
with CSF biomarkers. Novel imaging techniques required; post-mortem
studies feasible.
&
Ch.8 @sec:glymphatic-meningitis \

// ============================================================
// DOMAIN 4 – ENDOCRINE / HPA
// ============================================================
\small_*Domain 4: Endocrine / HPA Axis*_ \

Cytokine-Mediated Deiodinase Suppression
(@hyp:deiodinase-suppression)
&
[H], [inf.],
&
(a) IL-6 and TNF-$alpha$ inversely correlate with T3/T4 ratio in same patients.
(b) Anti-inflammatory treatment (LDN, PEA) increases T3/T4 ratio as cytokines fall.
(c) Direct T3 supplementation improves symptoms without reducing cytokines.
&
Paired cytokine panel + full thyroid panel (TSH, FT4, FT3, rT3, T3/T4) in
$n gt.eq 80$ cross-sectional cohort; longitudinal substudy during LDN trial.
Standard clinical laboratory; no new assays.
&
Ch.9 @sec:thyroid \

Clock Gene Dysregulation
(@hyp:clock-gene-dysregulation)
&
[H], [inf.],
&
(a) CLOCK, BMAL1, PER1/2/3 expression in PBMCs shows altered phase/amplitude.
(b) Flattened cortisol diurnal rhythm co-occurs with disrupted peripheral clock
oscillation.
(c) Melatonin or chronotherapy restoring clock phase also improves HPA rhythm.
&
Serial blood sampling (every 4 hours, 24 hours) for cortisol + clock gene
RT-qPCR; actigraphy; melatonin timing crossover trial.
Feasible in inpatient setting; chronobiology protocols published.
&
Ch.9 @sec:circadian \

Post-Viral Pituitary Injury as ME/CFS Trigger
(@hyp:postviral-pituitary)
&
[H], [0.50],
&
(a) A subgroup of post-viral ME/CFS patients shows impaired cortisol on ACTH
stimulation / ITT consistent with secondary AI.
(b) Pituitary MRI in this subgroup reveals structural abnormalities.
(c) This subgroup responds to physiological hydrocortisone ($lt.eq$10mg/day)
better than ME/CFS patients without pituitary injury.
(d) Prevalence of secondary AI correlates with viral tropism: higher after
SARS-CoV-1/2 (ACE2-expressing pituitary) than EBV or enterovirus triggers.
&
ACTH stimulation test or insulin tolerance test + pituitary MRI in post-COVID
ME/CFS cohort ($n gt.eq 50$) within 12 months of onset;
hydrocortisone replacement RCT stratified by ACTH response.
All tests available today; no new assays required.
&
Ch.9 @sec:postviral-pituitary \

// ============================================================
// DOMAIN 5 – GUT MICROBIOME
// ============================================================
\small_*Domain 5: Gut Microbiome*_ \

Severity-Dependent Baseline Gut Permeability
(@hyp:severity-gut-permeability)
&
[H], [0.50],
&
(a) Plasma zonulin and LPS stratify: mild $<$ moderate $<$ severe.
(b) I-FABP chronically elevated at rest in severe patients (not only post-exercise).
(c) LPS fluctuations correlate with minimal daily activities (cognitive tasks,
postural changes) at 2–4-hour intervals.
(d) Wheat elimination produces gradual LPS baseline reduction over 12+ weeks in
severe patients.
&
Plasma zonulin, LPS, sCD14, I-FABP, anti-LPS IgA/IgM (commercial ELISAs);
severity stratification by SF-36 PF score;
wheat elimination crossover with serial biomarker sampling.
Bedbound patient recruitment requires home visits; logistically challenging
but feasible.
&
Ch.11 @sec:leaky-gut \

Gut Serotonin–Vagal–Cardiovascular Link
(@oq:gut-serotonin-vagal)
&
[OQ], [—],
&
(a) Peripheral plasma serotonin inversely correlates with POTS symptom severity.
(b) Probiotic restoration of butyrate producers increases vagal tone (HRV).
(c) 5-HT4 agonist (prucalopride) improves autonomic function in ME/CFS patients
with documented gut dysbiosis.
&
16S rRNA gut profiling + faecal SCFA + plasma serotonin + 24-hour HRV
in cross-sectional cohort; probiotic RCT with HRV primary endpoint.
Methods available; careful timing required for serotonin assay.
&
Ch.11 @sec:gut-brain-axis \

Bidirectional Serotonin Dysregulation in ME/CFS
(@spec:bidirectional-serotonin)
&
[S], [0.25],
&
(a) Regional serotonin mapping (PET with selective 5-HT1A ligand) shows raphe hyperactivity coexisting with cortical hyposerotonergia in ME/CFS.
(b) 5-HT1A autoreceptor binding potential is reduced in ME/CFS vs controls.
(c) SSRI response heterogeneity correlates with regional serotonin tone measurements.
&
5-HT1A PET (e.g., [11C]WAY-100635) + tryptophan/kynurenine metabolomics in same cohort; stratified SSRI response analysis.
Methods available but expensive; requires radioligand PET facility.
&
Ch.8 @obs:serotonin \

Wheat-Primed Exercise Intolerance
(@spec:wheat-primed-exercise)
&
[S], [0.35],
&
(a) Wheat elimination (4–6 weeks) reduces baseline PEM severity in affected
patients.
(b) Post-elimination wheat reintroduction triggers PEM exacerbation within
24–72 hours.
(c) Biomarkers (zonulin, LPS, I-FABP) normalize during wheat elimination in
responders.
&
Wheat elimination crossover with serial LPS, I-FABP, zonulin sampling;
double-blind gluten vs.\ fructan challenge (cf.\ Skodje 2018 design);
exercise tolerance measurement pre/post elimination.
Feasible but requires careful FODMAP control.
&
Ch.17 @sec:food-sensitivities-wheat \

Activity-Adjusted Meal Timing for Dysautonomic ME/CFS
(@hyp:postprandial-pacing)
&
[H], [0.50],
&
(a) Post-prandial rest (30–60 min supine) reduces symptom exacerbation in POTS
comorbid patients.
(b) Small frequent meals (5–6/day) reduce peak splanchnic demand and improve
orthostatic tolerance.
(c) Concurrent cognitive activity during meals worsens post-prandial symptoms
vs.\ passive eating.
&
Within-subjects crossover: meal timing/size protocol vs.\ habitual eating;
continuous HR/BP monitoring; orthostatic tolerance testing pre/post meals.
Standard equipment; feasible in outpatient or home setting.
&
Ch.17 @sec:food-sensitivities-wheat \

Oral Microbiome as Inflammatory Reservoir
(@oq:oral-microbiome)
&
[OQ], [---],
&
(a) Is periodontal disease prevalence elevated in ME/CFS vs.\ matched controls?
(b) Does oral microbiome composition differ in ME/CFS and correlate with systemic
inflammatory markers?
(c) Does periodontal treatment reduce CRP/IL-6 or improve symptoms?
(d) Severity gradient: do more severe patients show worse periodontal status?
&
Cross-sectional periodontal assessment (pocket depth, attachment loss, BOP)
+ oral 16S rRNA sequencing + systemic CRP/IL-6 in ME/CFS cohort vs.\ controls.
Interventional arm: periodontal SRP with 3--6 month inflammatory marker follow-up.
Standard periodontal methods; requires dental collaboration.
&
Ch.11 @sec:oral-microbiome \

Oral Dysbiosis--Disability Vicious Cycle
(@spec:oral-dysbiosis-cycle)
&
[S], [0.30],
&
(a) ME/CFS symptom severity correlates with periodontal disease markers after
controlling for age, smoking, diabetes.
(b) Assisted oral hygiene in severe patients reduces systemic CRP/IL-6 within 3--6 months.
(c) Periodontal treatment produces greater symptom improvement in ME/CFS patients
with comorbid periodontitis than those without.
&
Severity-stratified cross-sectional with periodontal assessment; oral hygiene
intervention trial in severe/very-severe patients (caregiver-delivered); pre/post
inflammatory markers.
Feasible but requires domiciliary dental services for severe patients.
&
Ch.11 @sec:oral-microbiome \

_P.\ gingivalis_--Autoimmunity Bridge
(@spec:oral-autoimmunity)
&
[S], [0.20],
&
(a) ME/CFS patients with GPCR autoantibodies show higher _P.\ gingivalis_
colonisation than autoantibody-negative patients.
(b) _P.\ gingivalis_ DNA/gingipains detectable in ME/CFS CSF at rates exceeding
healthy controls.
(c) Periodontal treatment in _P.\ gingivalis_-positive ME/CFS patients reduces GPCR
autoantibody titres over 6--12 months.
(d) Monocytes from periodontitis-positive ME/CFS patients show trained immunity
epigenetic signatures.
&
Oral _P.\ gingivalis_ PCR + serum GPCR autoantibody panel in cross-sectional cohort;
CSF gingipain assay in subset; monocyte stimulation assay with epigenetic profiling.
Requires specialised immunology and periodontal labs; CSF collection limits feasibility.
&
Ch.14 @sec:oral-autoimmunity-bridge \

// ============================================================
// DOMAIN 6 – GENETICS / EPIGENETICS
// ============================================================
\small_*Domain 6: Genetics and Epigenetics*_ \

Epigenetic Basis of T-Cell Exhaustion
(@hyp:epigenetic-tcell-exhaustion)
&
[H], [inf.],
&
(a) T-cells show closed chromatin at IFN-$gamma$ and TNF-$alpha$ loci;
elevated H3K27me3 at effector genes.
(b) PD-1, TIM-3, LAG-3 correlate with disease duration.
(c) Epigenetic exhaustion score correlates with NK cytotoxicity and symptom severity.
(d) Low-dose HDAC inhibitors partially reverse exhaustion signatures _in vitro_.
&
ATAC-seq and CUT&RUN on sorted T-cell populations;
PD-1/TIM-3/LAG-3 flow cytometry;
disease-duration stratification.
Methods established in cancer immunology; specialist genomics core required;
$n gt.eq 40$ per group.
&
Ch.12 @sec:chromatin \

MicroRNA Biomarker Panels
(@pred:mirna-biomarker)
&
[P], [inf.],
&
A panel of 5–10 miRNAs achieves $>$80% sensitivity and $>$80% specificity
for ME/CFS vs.\ fibromyalgia, depression, and primary sleep disorders.
Candidates: miR-21, miR-146a, miR-155.
&
miRNA profiling (NanoString or small-RNA-seq) in replication cohort
($n gt.eq 100$ ME/CFS, $n gt.eq 50$ each comparator);
ROC analysis; independent validation cohort.
Commercially available platforms; moderate cost.
&
Ch.12 @sec:micrornas \

// ============================================================
// DOMAIN 7 – CARDIOVASCULAR / AUTONOMIC
// ============================================================
\small_*Domain 7: Cardiovascular and Autonomic*_ \

Motor-Autonomic Coordination Overload
(@hyp:motor-autonomic-coordination)
&
[H], [0.55],
&
(a) ME/CFS patients show greater cognitive impairment during physical activity
than controls (dual-task paradigm).
(b) Inverse relationship between motor performance and HRV during exercise
(autonomic-motor trade-off).
(c) Seated fine motor tasks and passive tilt each less impaired than combined
motor-autonomic challenges.
(d) Pre-treatment with midodrine or pyridostigmine improves exercise tolerance
by offloading CNS autonomic demand.
&
Dual-task treadmill + cognitive battery; simultaneous HRV + force output;
passive tilt vs.\ active exercise within-subjects;
midodrine vs.\ placebo crossover with CPET.
Standard equipment; cardiology/exercise physiology lab needed;
$n approx 30$ per arm (crossover design).
&
Ch.10 @sec:exercise-intolerance \

Immune Complex–Endothelial Injury as Central Vascular Mechanism
(@spec:igg-endothelial-central)
&
[S], [0.35],
&
(a) Immunoadsorption that removes pathogenic IgG should improve flow-mediated
dilation within weeks.
(b) Endothelial or skin punch biopsy should show IgG/complement deposition in
ME/CFS microvasculature.
(c) Patients whose IgG induces greater mitochondrial fragmentation in vitro
should have worse EndoPAT scores.
&
FMD before/after immunoadsorption; immunofluorescence staining of skin biopsies
for IgG and C3/C4 deposition; paired in-vitro IgG–HUVEC fragmentation assay +
EndoPAT in same patients.
Standard immunology and vascular physiology equipment; $n gt.eq 20$ for
correlation analysis.
&
Ch.10 @sec:igg-endothelial \

Bradykinin Spillover as the Mechanism of RAAS Suppression
(@hyp:bradykinin-raas)
&
[H], [0.50],
&
(a) Systemic bradykinin or kallikrein levels elevated in ME/CFS at rest; rise disproportionately after exertion.
(b) KKS blockade (icatibant) restores RAAS upregulation during orthostatic challenge.
(c) RAAS suppression magnitude correlates with muscular hypoperfusion severity (NIRS/iCPET).
&
Plasma bradykinin ELISA pre/post exercise; icatibant challenge with renin/aldosterone monitoring; NIRS during tilt.
&
Ch.10 @sec:blood-volume \

Calcium Toxicity as the Primary PEM Mechanism
(@hyp:calcium-pem)
&
[H], [0.50],
&
(a) Intracellular calcium elevated in ME/CFS muscle during PEM (#super[31]P-MRS or biopsy).
(b) Post-exercise sodium accumulation (Wirth-Scheibenbogen MRI) predicts PEM severity dose-dependently.
(c) MDC002 (Na#super[+]/K#super[+]-ATPase stimulator) reduces or eliminates PEM.
&
Sodium MRI pre/post exercise; calcium-sensitive probes in muscle biopsy; MDC002 clinical trial.
&
Ch.6 @sec:calcium-dysregulation \

Low CO#sub[2] as Consequence of Impaired Muscular Respiration
(@hyp:co2-consequence)
&
[H], [0.50],
&
(a) ME/CFS patients with normal muscular O#sub[2] extraction (iCPET) have normal ETCO#sub[2].
(b) Respiratory rate is normal while respiratory depth is increased (hyperpnea not tachypnea).
(c) ETCO#sub[2] correlates with disease severity and orthostatic CO#sub[2] drop predicts functional capacity.
&
Simultaneous iCPET with capnography; respiratory plethysmography for tidal volume vs.\ rate; tilt-table with ETCO#sub[2] monitoring.
&
Ch.17 @sec:breathing-co2 \

Exercise Chunking Works by Staying Below the Calcium Toxicity Threshold
(@spec:exercise-calcium-threshold)
&
[S], [0.40],
&
(a) Continuous vs.\ chunked equal-work sessions produce different PEM severity.
(b) Intracellular sodium returns to baseline during supine rests (sodium MRI).
(c) Compression stockings extend tolerable bout duration.
&
Within-subjects crossover: continuous vs.\ chunked exercise with PEM tracking; repeated sodium MRI during rest intervals.
&
Ch.6, Ch.17 @sec:klimas-program \

Na#super[+]/K#super[+]-ATPase Failure Links PEM and MCAS Flares
(@spec:pump-mcas)
&
[S], [0.30],
&
(a) Mast cells from ME/CFS patients show elevated intracellular sodium (fluorescent dyes).
(b) MDC002 reduces both PEM severity and MCAS flare frequency.
(c) Mast cell stabilisers (cromolyn) provide modest PEM benefit.
&
Isolated mast cells + sodium-sensitive dyes; MDC002 trial with MCAS symptom tracking; cromolyn crossover with PEM diary.
&
Ch.14d @spec:pump-mcas \

// ============================================================
// DOMAIN 8 – INTEGRATIVE / MULTI-SYSTEM
// ============================================================
\small_*Domain 8: Integrative and Multi-System*_ \

Long COVID as Stage 1–2 ME/CFS
&
[H], [inf.],
&
(a) Long COVID at 6–12 months shows 1–2 active pathophysiological cycles vs.\
3–5 in established ME/CFS (biomarker-quantified).
(b) Long COVID patients meeting ME/CFS criteria at 24+ months are biologically
indistinguishable from duration-matched ME/CFS.
(c) Early aggressive multi-target intervention halves 5-year ME/CFS progression.
&
Pragmatic RCT: intensive multi-target treatment vs.\ enhanced usual care
in Long COVID 6–18 months post-infection;
primary endpoint = ME/CFS diagnosis at 5 years;
$n approx 400$ (80% power for 50% reduction).
Secondary: CPET, cytokine panel, GPCR autoantibody, neuroimaging.
Long COVID cohorts exist; design in Ch.13.
&
Ch.13 @subsubsec:long-covid-cycle-dynamics \

_— V6 additions (March 2026) —_\

Lymphocyte Reservoir Ratchet
(@hyp:lymphocyte-reservoir-ratchet)
[], [H], [0.35],
(a) scRNA-seq of ME/CFS PBMCs detects viral transcripts in $<$1% lymphocytes.
(b) Virus-positive fraction correlates with severity.
(c) In vitro lymphocyte activation releases viral antigen.
(d) Recovery = clearance; non-recovery = persistence.
&
10x Genomics scRNA-seq on PBMCs (available); MERFISH spatial transcriptomics;
requires post-COVID ME/CFS cohort with matched controls.
Comparative data from FIP model @Kol2026fipv.
&
Ch.7 @sec:viral \

Immune Cell Energy Starvation Creates Viral Persistence Niche
(@hyp:immune-energy-starvation-niche)
[], [H], [0.40],
(a) Metabolic supplementation in vitro restores ME/CFS NK cell killing.
(b) Antiviral + metabolic support $\>$ antiviral alone for viral clearance.
(c) T cell metabolic impairment inversely correlates with clearance.
(d) Worst NK bioenergetics = highest viral antigen persistence.
&
Seahorse metabolic flux (available); NK killing assays (available);
D-ribose/CoQ10/MitoQ supplementation in vitro.
Clinical trial: antiviral $plus.minus$ metabolic support.
&
Ch.6 \

Post-Viral Methyl-Group Depletion as a ME/CFS Onset Mechanism
(@spec:methyl-assault-onset)
&
[S], [0.25],
&
(a) Elevated CSF homocysteine should be detectable acutely and persist chronically post-viral.
(b) Serum and CSF SAM reduced in long-COVID/ME/CFS vs.\ controls.
(c) Early B12/methylfolate post-viral illness reduces ME/CFS onset risk (preventive trial).
&
Prospective biomarker studies in post-viral cohorts (CSF homocysteine, SAM, B12, methylfolate);
preventive supplementation trial design. Invasive CSF sampling required.
&
Ch.14e (@spec:methyl-assault-onset) \

Deconditioning Narrative as Iatrogenic Harm Multiplier
(@hyp:deconditioning-iatrogenic)
[], [H], [0.50],
(a) Deconditioning-managed patients show greater 5-yr decline.
(b) Time-to-diagnosis longer under deconditioning paradigm.
(c) Higher mild$\to$severe progression in GET vs.\ pacing cohorts.
(d) Regional GET rates correlate with severe ME/CFS prevalence.
&
Retrospective cohort study using medical records;
regional prescription rate analysis (UK pre/post 2021);
patient registry data (e.g., UK ME/CFS Biobank).
&
Ch.24 @sec:deconditioning-hypothesis \

hEDS Lymph Node Architecture as ME/CFS Susceptibility Factor
(@spec:heds-lymphnode-architecture)
[], [S], [0.25],
(a) hEDS lymph node biopsies show altered FRC network density.
(b) Imaging reveals structural lymph node differences in hEDS.
(c) Post-COVID hEDS patients have higher lymphoid viral persistence.
(d) Immune cells on hEDS-ECM scaffolds show reduced viral clearance.
&
Lymph node FNA + histology; contrast-enhanced US or MR lymphangiography;
in vitro ECM scaffold assays.
Requires hEDS cohort with post-COVID ME/CFS subset.
&
Ch.14d \

Sports Medicine Paradigm Shift as Natural Experiment
(@oq:paradigm-shift-natural-experiment)
[], [OQ], [—],
(a) Do GET prescription rates decline after BJSM 2026 publication?
(b) Source journal authority affects practice change speed?
(c) What is the half-life of iatrogenic practice change?
(d) Regional outcomes improve after guideline changes?
&
Administrative prescribing data; patient registry outcomes;
interrupted time-series analysis at guideline change dates.
&
Ch.24 @sec:deconditioning-hypothesis \

Viral RNA in Circulating Lymphocytes as Biomarker
(@oq:viral-rna-lymphocyte-biomarker)
[], [OQ], [—],
(a) Minimum virus-positive lymphocyte fraction for immune activation?
(b) Viral species specificity or generic mechanism?
(c) Can biomarker distinguish viral from non-viral ME/CFS subgroups?
(d) Current single-cell platform sensitivity sufficient?
&
10x Genomics scRNA-seq; MERFISH; digital PCR on sorted lymphocyte subsets.
Requires multi-pathogen ME/CFS cohort.
&
Ch.22 @sec:animal-models \

Temporal Mapping: Deconditioning to Pathology Transition
(@oq:deconditioning-pathology-transition)
[], [OQ], [—],
(a) Serial biopsy: when do reversible fibre shifts become irreversible?
(b) CPET trajectory over 24 months distinguishes deconditioning from pathology?
(c) Long-duration patients show qualitatively different tissue changes?
&
Serial muscle biopsy + two-day CPET at 0, 6, 12, 24 months;
newly diagnosed vs.\ $\>$5-year cohort comparison.
Invasive; requires ethics approval and willing participants.
&
Ch.22 \

Three-Field Convergence Against Deconditioning
(@key:deconditioning-convergence)
[], [—], [—],
N/A (synthesis keypoint, not testable hypothesis).
Documents convergence from exercise physiology, clinical guidelines,
and comparative virology against the deconditioning model.
&
Narrative synthesis of existing evidence streams.
&
Ch.13 \

FIP as ME/CFS Comparative Model
[], [—], [—],
(a) Longitudinal immune profiling of FIP-recovered cats.
(b) Activity monitoring for PEM analogue in cats.
(c) Immune cell metabolomics: virus-positive vs.\ cleared cats.
(d) Combined antiviral + metabolic support intervention testing.
&
Veterinary research infrastructure;
GS-441524-treated cat cohorts exist at UC Davis.
Seahorse analysis, accelerometry, scRNA-seq all applicable.
&
Ch.22 @sec:animal-models \

Neutrophil Functional Exhaustion
(@hyp:neutrophil-exhaustion)
[], [H], [0.40],
(a) Ex vivo PMA/fMLP stimulation of ME/CFS neutrophils shows attenuated degranulation and ROS vs.\ controls despite normal counts.
(b) Intracellular flow cytometry reveals depleted granule protein content.
(c) Recovery (e.g., daratumumab responders) normalizes circulating neutrophil granule proteins.
(d) G-CSF priming restores innate defense markers.
&
Functional neutrophil assays (degranulation, ROS);
intracellular flow cytometry for granule content;
paired sampling pre/post treatment in daratumumab or IA trials.
$n approx 30$ pairs minimum.
&
Ch.13 (@hyp:neutrophil-exhaustion) \

Chronic Exerkine Signaling
(@hyp:chronic-exerkine)
[], [H], [0.45],
(a) FGF-21 and GDF-15 correlate with disease severity and PEM threshold.
(b) Successful treatment normalizes exerkine levels.
(c) ME/CFS patients show blunted additional exerkine response to exercise (ceiling effect).
(d) Metabotype 2 patients have lowest exercise tolerance.
&
ELISA panels (FGF-21, GDF-15, leptin, resistin) in graded cohort;
exercise challenge with serial exerkine sampling;
correlation with CPET parameters.
Hoel 2026 extended cohort (n=278) available for validation.
&
Ch.13 (@hyp:chronic-exerkine) \

Secretome-Driven Vascular Autoimmune Loop
(@spec:secretome-autoimmune)
[], [S], [0.25],
(a) ME/CFS serum proteins show elevated citrullination/oxidative modifications.
(b) Autoantibodies against modified vascular proteins detectable in subset.
(c) Autoimmune subset (daratumumab responders) shows strongest secretome shift.
&
Mass spectrometry PTM analysis of ME/CFS vs.\ HC serum;
autoantibody arrays targeting citrullinated/oxidized endothelial proteins;
paired proteomic + autoantibody profiling in treatment responder studies.
&
Ch.13 (@spec:secretome-autoimmune) \

Bone Marrow Stress and Immune Lineage Reprogramming
(@spec:bone-marrow-reprogramming)
[], [S], [0.20],
(a) Bone marrow biopsy shows altered myeloid:lymphoid progenitor ratios.
(b) HSCs show inflammatory epigenetic reprogramming marks.
(c) Bone marrow protein signature improves with immunomodulation.
&
Bone marrow aspirate with flow cytometry lineage analysis;
ATAC-seq/ChIP-seq of hematopoietic progenitors;
highly invasive — likely requires ancillary study within existing treatment trials.
&
Ch.13 (@spec:bone-marrow-reprogramming) \

// ============================================================
// DOMAIN – MATHEMATICAL MODELING (Part V)
// ============================================================
\small_*Domain: Mathematical Modeling (Part V)*_ \

ATP Threshold Model of PEM
&
[H], [0.45],
&
(a) PEM severity correlates with depth/duration of ATP depletion below threshold.
(b) Metabolic substrate provision raises threshold and reduces PEM susceptibility.
(c) Threshold is individually variable, explaining inter-patient exercise tolerance differences.
&
Two-day CPET with intracellular ATP measurement (muscle biopsy or #super[31]P-MRS);
metabolic substrate supplementation trials with PEM as endpoint.
Feasible with existing methods.
&
Ch.@ch:energy-metabolism-models \

Supercompensation Failure as Mechanistic Basis of Exercise Intolerance
&
[H], [0.50],
&
(a) mtDNA copy number decreases 72h post-exercise in ME/CFS but increases in controls.
(b) PGC-1$alpha$ target genes fail to upregulate post-exercise despite adequate AMPK activation (NAD#super[+] bottleneck).
(c) NAD#super[+] precursor supplementation partially restores supercompensation before improving exercise tolerance.
(d) Repeated bout effect (DOMS attenuation) absent or inverted in ME/CFS.
&
Two-day CPET with serial mtDNA quantification and PGC-1$alpha$ expression at 24, 48, 72h;
NR supplementation trial with pre/post mtDNA and CPET endpoints.
Feasible with existing methods.
&
Ch.@ch:energy-metabolism-models \

Bistability of the Energy–Immune Cycle
&
[H], [0.50],
&
(a) Disease onset requires perturbation exceeding threshold severity, not specific pathogen.
(b) Spontaneous recovery is rare because disease attractor is stable.
(c) Effective treatment must be sustained long enough to shift system past separatrix.
&
Longitudinal measurement of immune and metabolic variables to map state-space trajectory;
intervention washout studies to test attractor stability.
Requires multi-month longitudinal cohorts.
&
Ch.@ch:integrated-systems \

Adenosine–ATP Coupling as Unrefreshing Sleep Mechanism
&
[H], [0.35],
&
(a) Sleep pressure builds faster in ME/CFS than controls for equivalent activity.
(b) Improving mitochondrial function improves sleep quality independent of sleep-targeted interventions.
(c) Glymphatic function markers correlate with unrefreshing sleep severity.
&
Adenosine microdialysis (invasive); #super[31]P-MRS during sleep;
MRI-based glymphatic imaging; mitochondrial supplement trials with sleep quality endpoints.
Most methods available; brain adenosine measurement challenging.
&
Ch.@ch:neuroendocrine-models \

Validation Standards for ME/CFS Models
&
[OQ], [—],
&
What constitutes sufficient validation for computational ME/CFS models?
Analogous to FDA PBPK guidance but for emergent phenomena lacking molecular definitions.
&
Consensus process among modelers, clinicians, and regulators needed.
&
Ch.@ch:modeling-foundations \

Autoantibody Subtypes and Clinical Response
&
[OQ], [—],
&
Do different autoantibody specificities ($beta_2$-adrenergic, muscarinic) contribute independently to distinct symptom domains?
Requires antigen-specific modeling.
&
Multiplexed autoantibody assays with symptom domain correlation analysis.
&
Ch.@ch:immune-system-models \

Emergent Cycling Behavior
&
[OQ], [—],
&
Does the coupled 42-variable model produce endogenous limit cycle oscillations (symptom cycling) without external perturbation?
&
Numerical bifurcation analysis (continuation, Hopf detection) of the full integrated model.
Computationally feasible.
&
Ch.@ch:integrated-systems \

Digital Twins for ME/CFS
&
[OQ], [—],
&
Can patient-specific computational models be maintained and updated with real-time wearable/biomarker data for adaptive pacing and treatment optimization?
&
Feasibility study: real-time model fitting with sensor integration and uncertainty quantification.
Analogous systems under development for cardiac care and diabetes.
&
Ch.@ch:predictive-applications \

// ============================================================
// DOMAIN 10 – EVOLUTIONARY MEDICINE
// ============================================================
\small_*Domain 10: Evolutionary Medicine*_ \

Preserved Emergency Override with Broken Restoration
(@spec:evolutionary-deferred-cost)
&
[S], [0.25],
&
(a) Adrenergic reserve inversely correlated with disease severity and duration.
(b) Functional window during exertion predicts crash severity.
(c) $beta$-blockade during exertion attenuates subsequent crash magnitude.
(d) Very severe patients show blunted catecholamine response to acute stressors.
&
Adrenergic stimulation testing; wearable-based exertion/crash correlation studies;
$beta$-blocker crossover trial; plasma epinephrine during orthostatic/cognitive challenge.
All methods available today.
&
Ch.@ch:speculative-hypotheses,
@sec:evolutionary-deferred-cost \

*Speculation* &
Pyridostigmine Immunomodulation in ME/CFS &
@spec:pyridostigmine-immunomod &
0.25 &
Cholinergic anti-inflammatory pathway (vagal ACh on $alpha$7 nAChR) may provide
dual autonomic + immune benefit in ME/CFS, as suggested by mortality reduction
without cytokine changes in COVID-19 RCT. &
ME/CFS patients on chronic pyridostigmine show improved HRV correlating with
reduced tissue-level neuroinflammation (e.g., PET-detected) without serum
cytokine changes. &
Ch.@ch:medications-mechanisms,
@sec:pyridostigmine \

Phase-Dependent Appetite Model
&
[S], [0.35],
&
Prospective dietary tracking across disease phases shows consistent relationship
between disease severity and appetite suppression;
acute/PEM phases show greater appetite loss than stable phases.
&
Prospective food diary studies with phase classification;
cytokine co-measurement during appetite episodes;
comparison of eating patterns during PEM vs.\ remission.
&
Ch.@ch:endocrine,
@sec:insulin-glucose,
`spec:appetite-phases` \

Exercise Adaptation for ME/CFS Comorbidities
(@oq:comorbidity-exercise)
[], [OQ], [—],
(a) Does CPET-guided sub-anaerobic exercise improve glycaemic control in
ME/CFS patients with type 2 diabetes without triggering PEM?
(b) Can isometric resistance protocols stabilise hEDS joints without worsening
ME/CFS severity?
(c) Do non-exercise interventions for depression (ACT, pharmacotherapy) achieve
equivalent outcomes to exercise-based approaches in PEM-positive patients?
&
Dual-diagnosis RCTs: ME/CFS + T2D, ME/CFS + hEDS, ME/CFS + depression.
Two-day CPET to set individual activity ceilings; PEM diaries as safety
outcome. Multi-site recruitment essential given dual-diagnosis rarity.
&
Ch.@ch:lifestyle
@sec:comorbidity-exercise-conflict \

Food-Triggered Non-IgE Mast Cell Activation in ME/CFS
(@hyp:food-mast-cell-mecfs)
[], [H], [0.40],
In ME/CFS patients with comorbid MCAS ($tilde$17–25%), food triggers mast cell
degranulation through non-IgE pathways (MRGPRX2, complement C3a/C5a, lectin–IgE
glycan cross-linking) undetected by standard allergy testing. Resulting mediator
release contributes to post-meal fatigue, brain fog, tachycardia, and GI distress.
Amplified by intestinal barrier dysfunction and reduced SCFA inhibition.
&
Prospective paired urinary mediator (NMH, LTE4, PGD#sub[2] metabolite) measurement
before/after controlled food challenges in ME/CFS patients with negative allergy
testing. MRGPRX2 expression on intestinal mast cells via biopsy immunohistochemistry.
Correlation of gut permeability markers (LBP, zonulin) with food-triggered mediator
elevations.
&
Ch.14 @subsec:food-mast-cell; Ch.19 @subsec:mcas-treatment;
Ch.20 @subsec:mast-cell-biomarkers \

PEM Partially Mediated by Food–Exercise Mast Cell Co-Triggering
(@spec:pem-food-mast)
[], [S], [0.25],
Exercise releases substance P activating mast cells via MRGPRX2; prior food-triggered
mast cell priming lowers the exertion threshold for PEM—analogous to food-dependent
exercise-induced anaphylaxis operating at subthreshold levels. Meals consumed close
to physical activity could worsen PEM in MCAS+ME/CFS patients.
&
Compare PEM severity after fasted vs.\ fed exercise in MCAS+ME/CFS patients.
Measure urinary mediators post-exercise in fed vs.\ fasted state. Pre-treat with
mast cell stabilizers before food+exercise challenges.
&
Ch.14 @subsec:food-mast-cell \

rTMS as Neuromodulatory Intervention for ME/CFS Motor and Autonomic Dysfunction
(@spec:tms-mecfs)
[], [S], [0.30],
Dual-target iTBS (DLPFC + M1) addresses objectively demonstrated motor cortex
hypoexcitability and may improve orthostatic intolerance and disequilibrium.
Sham-controlled trial should show effect sizes $gt.eq$SMD 0.35 (fibromyalgia benchmark).
If sham-controlled effects absent, attribute open-label results to placebo/expectancy.
&
Sham-controlled RCT of dual-target iTBS in ME/CFS, stratified by OI severity.
Primary endpoints: tilt-table tolerance, disequilibrium resolution. No registered
trial exists. Fibromyalgia meta-analyses confirm effects survive sham control for
pain (11 RCTs, $n=303$) and QoL (18 RCTs, $n=643$).
&
Ch.18 @subsubsec:tms-mecfs \

)
*/

=== Entry Added 2026-03-27: Post-Viral Encephalitis and Autoimmune Template

Motivated by: OMF Canada article on Bergquist/Westman HSE research program; Nääs et al. 2023 CSF proteomics; Westman et al. 2016/2018/2021/2025 NMDAR autoimmunity series.

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Viral Encephalitis as Mechanistic Template for Post-Infectious ME/CFS],
    [H], [0.45],
    [HSE $arrow.r$ NMDAR autoimmunity $arrow.r$ persistent neurocognitive dysfunction sequence generalises to ME/CFS triggers. (a) ME/CFS patients with higher acute NFL should have worse outcomes. (b) Subclinical neuroinflammation markers should precede autoantibody development. (c) Early immunomodulation post-infection should reduce NMDAR autoantibody incidence. (d) ME/CFS from neurotropic triggers should show higher autoantibody prevalence than non-neurotropic triggers.],
    [NFL already measured in HSE (Westman 2021); needs replication in ME/CFS onset cohorts. CSF autoantibody testing feasible. OMF Harvard 160-patient trial (LDN + pyridostigmine) ongoing. PhIP-Seq predictive biomarker (OR 209, Westman 2025) identifies at-risk HSE patients.],
    [Ch.7 @hyp:hse-mecfs-template],
  ),
  kind: table, supplement: [Table], caption: [Hypothesis registry entry from OMF Canada HSE research integration (2026-03-27).],
) <tab:hypothesis-registry-2026-03-27>
] // end landscape page

=== Entries Added 2026-03-27: Neuroplasticity Agents and Brain Rewiring

Motivated by: systematic research on lithium, valproate, anticonvulsants, and thyroid hormones as neuroplasticity-modifying agents; integration with existing kindling hypothesis and Low T3 Syndrome.

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Pharmacological Critical Period Reopening for ME/CFS Circuit Reset],
    [S], [0.30],
    [HDAC inhibition (valproate) or GSK-3$beta$ inhibition (lithium) creates transient neuroplasticity windows enabling circuit reorganization. (a) VPA/lithium + anti-neuroinflammatory produces >30% CSI reduction vs $lt$15% anti-inflammatory alone. (b) PET shows greater microglial activation reduction with combination. (c) Improvements during plasticity windows show greater post-withdrawal persistence.],
    [Gervain 2013 RCT proved critical period reopening in healthy adults (absolute pitch). No replication. No pathological state testing. Clinical trial design complex (window + guide timing).],
    [Ch.8 @spec:critical-period-reopening],

    [Low-Dose Lithium as Neuroprotective Agent in ME/CFS],
    [S], [0.40],
    [Lithium at 40--45 mg/day (serum 0.18--0.49 mEq/L) provides BDNF upregulation, microglial modulation, and autophagy enhancement. (a) Cognitive testing improves at 8--12 weeks. (b) Serum BDNF increases. (c) Grey matter volume stable or increased at 6--12 months.],
    [Long COVID RCT (Guttuso 2024, JAMA Network Open) showed dose-dependent effect at 40--45 mg/day. Lithium orotate available OTC but lacks pharmacokinetic data. No ME/CFS-specific trial. Nature 2025: lithium depleted in MCI brains.],
    [Ch.8 @spec:low-dose-lithium],

    [T3-BDNF-Microglial Vicious Cycle in ME/CFS],
    [S], [0.40],
    [Low T3 $arrow.r$ reduced BDNF $arrow.r$ loss of PI3K-Akt inhibition $arrow.r$ M1 microglial polarization $arrow.r$ cytokines suppress DIO2 $arrow.r$ lower T3. Self-perpetuating attractor state. (a) T3 supplementation reduces IL-6/TNF-$alpha$ at 8--12 weeks. (b) BDNF increases proportionally to free T3 improvement. (c) DIO2 Thr92Ala carriers show greater cognitive T3 response.],
    [Animal models support each link individually (Ge 2024, Chamas 2024). Complete cycle not demonstrated in ME/CFS. DIO2 polymorphism testable (~50% carrier rate). Ruiz-N\'u\~nez 2018 documented Low T3 in ME/CFS (n=98).],
    [Ch.9 @spec:t3-bdnf-microglial-cycle],

    [Lithium + T3 Dual Neuroplasticity Restoration],
    [S], [0.30],
    [Complementary grey matter (lithium/GSK-3$beta$) + white matter (T3/myelination) repair. T3 compensates lithium's thyroid suppression. (a) Combination produces $gt.eq$ 2-point MoCA improvement over 12 weeks. (b) TSH stays in range due to T3 compensation. (c) Greater improvement than either alone.],
    [No precedent for this specific combination in any neurological condition. Both agents individually well-characterized. Sequential titration (T3 first) required. Combined cardiac monitoring essential.],
    [Ch.14i @spec:lithium-t3-combo],

    [Levetiracetam as Disease-Modifying Anti-Kindling Agent],
    [S], [0.35],
    [SV2A modulation provides anti-kindling + anti-neuroinflammation + cognitive sparing. (a) PEM threshold increases at 6 months. (b) Crash severity decreases. (c) Threshold gains maintained $gt.eq$ 3 months post-discontinuation (true disease modification).],
    [Anti-kindling persistence post-discontinuation proven in animal epilepsy models (Lynch 2004). Superior microglial suppression vs VPA and CBZ (Itoh 2019). "Keppra rage" (13--17%) limits tolerability; brivaracetam as alternative.],
    [Ch.14i @spec:levetiracetam-anti-kindling],

    [Gabapentinoid Anti-Synaptogenesis for Central Sensitization],
    [S], [0.30],
    [$alpha$2$delta$-1/thrombospondin blockade prevents pathological excitatory synaptogenesis. (a) High-CSI patients show greater pregabalin response. (b) Response correlates with thrombospondin levels. Long-term dementia risk signals (29--40% increase at 6--12+ prescriptions) raise safety concerns.],
    [Pregabalin FDA-approved for fibromyalgia. Gabapentin survey in ME/CFS (n=119): 34 moderate/major improvement. Dementia risk data from observational studies (confounding by indication possible). Thrombospondin measurement not routine.],
    [Ch.14i @spec:gabapentinoid-synaptogenesis],

    [ME/CFS as Pathological Attractor State (Dynamical Systems Model)],
    [S], [0.35],
    [Multiple self-reinforcing feedback loops (kindling, T3 depletion, microglial priming, epigenetic silencing) create a pathological attractor. (a) Targeting < critical fraction of loops produces no benefit; above critical fraction produces disproportionate improvement. (b) Predicts nonlinear dose-response and threshold effects in multi-agent trials. (c) Explains consistent failure of single-agent trials.],
    [Mathematical modeling (attractor dynamics) feasible. Requires multi-parameter longitudinal data to fit. Conceptually extends Ch.30 integrated systems modeling. Testable via systematic combination trial designs.],
    [Ch.14i @spec:attractor-landscape],

    [Selenium Autoantibody-Defined Subgroup with Impaired Neuroplasticity],
    [S], [0.25],
    [9.6--15.6% of ME/CFS patients with selenium autoantibodies may have autoimmune-mediated DIO2 impairment creating brain-specific T3 deficit. (a) Autoantibody-positive patients show worse cognition at equivalent serum T3. (b) T3 produces greater cognitive response than T4 in autoantibody-positive subgroup.],
    [Selenium autoantibodies documented in one study. DIO2 is selenoprotein. Subgroup stratification testable. No intervention trial targeting this mechanism.],
    [Ch.9 @spec:selenium-neuroplasticity],

    [Staged Multi-Target Neuroplasticity Protocol],
    [S], [0.20],
    [Sequential targeting of T3 loop, anti-kindling, and neuroprotection may produce nonlinear (attractor-destabilizing) benefit. Research direction for factorial trial design.],
    [No precedent. Conceptual scaffold from attractor model. Specific dosing undetermined. Safety of multi-agent combinations unknown.],
    [Ch.14i @spec:layer-cake-protocol],

    [Pyridostigmine + T3 + Lithium Triple-Target for Autonomic-Primary ME/CFS],
    [S], [0.30],
    [Three agents at three anatomical levels: peripheral effector (pyridostigmine), axonal myelination (T3), central neuroprotection (lithium). (a) Combination > monotherapy for orthostatic tolerance improvement.],
    [Framing oversimplified (see limitations). Never tested in any condition. Pyridostigmine RCT exists for ME/CFS @Joseph2022pyridostigmine; T3 and lithium unvalidated in ME/CFS.],
    [Ch.14i @spec:triple-autonomic],

    [Pyridostigmine as Anti-Kindling Agent by Proxy],
    [S], [0.20],
    [Autonomic stabilization reduces daily kindling trigger load (fewer autonomic crises $arrow.r$ fewer microglial priming events). (a) Patients on chronic pyridostigmine show slower PEM threshold decline over 6--12 months.],
    [Inferred from combining kindling hypothesis with pyridostigmine's autonomic mechanism. No direct evidence. LIFT trial cognitive outcomes may provide indirect evidence.],
    [Ch.15 @spec:pyridostigmine-anti-kindling],

    [Subclinical Neuroinflammation Without Overt Neuronal Injury],
    [S], [0.30],
    [Post-viral microglial activation can occur without neuronal damage sufficient to elevate NfL. CSF proteomics in ME/CFS would reveal HSE-like pathway activation signatures despite normal NfL. Falsified if ME/CFS CSF proteomics show no overlap with Naas et al.\ HSE signature.],
    [Omdal 2026 null NfL in long COVID; Naas 2023 HSE proteomics; Westman 2021 NFL-NMDAR link. No ME/CFS CSF proteomic study has tested this.],
    [Ch.8 @spec:subclinical-neuroinflammation],

    [Circadian Resynchronization as Multi-System Intervention],
    [S], [0.30],
    [Chronotherapy (timed light + melatonin + activity scheduling) in ME/CFS with documented circadian disruption improves $>=$ 2 non-sleep outcome domains beyond sleep improvement alone. Falsified if chronotherapy normalises sleep without improving non-sleep circadian outputs.],
    [Castro-Marrero 2021 melatonin+zinc RCT only trial. No multi-modal chronotherapy trial in ME/CFS. Circadian flattening also occurs in depression and fibromyalgia.],
    [Ch.9 @spec:circadian-resynchronization],

    [Hormonal Intervention as Disease-Modifying Strategy],
    [OQ], [---],
    [Could timely HRT or androgen supplementation prevent or mitigate ME/CFS progression in susceptible individuals? Prospective cohort tracking hormonal status before ME/CFS onset, or RCT of HRT in perimenopausal ME/CFS patients, needed.],
    [Boneva 2015 early menopause finding (11 years earlier than controls). Correlational only. No prospective or interventional data.],
    [Ch.9 @oq:hormonal-disease-modification],
  ),
  kind: table, supplement: [Table], caption: [Hypothesis registry entries from neuroplasticity agents research and brain rewiring integration (2026-03-27). Covers lithium, valproate, anticonvulsants, thyroid hormones, attractor dynamics, and Round 2 review additions (subclinical neuroinflammation, circadian resynchronization, hormonal disease modification).],
) <tab:hypothesis-registry-2026-03-27-neuro>
] // end landscape page

#page(flipped: true)[
#figure(
  table(
    columns: (3fr, 0.3fr, 0.4fr, 5fr, 3fr, 1.5fr),
    align: (left, center, center, left, left, left),
    table.header(
      [*Hypothesis / Speculation*], [*Type*], [*Cert.*],
      [*Testable Prediction (condensed)*], [*Available Tests / Status*],
      [*Location*],
    ),

    [Shared Neuroinflammatory Cascade as Generator of ADHD/ASD/Depression],
    [S], [0.35],
    [Chronic microglial activation in mesolimbic, thalamocortical, and prefrontal circuits produces ADHD-like, ASD-like, and depressive phenotypes secondarily. (a) Anti-neuroinflammatory interventions (LDN, anti-cytokine) should partially reverse secondary neuropsychiatric phenotypes independently of fatigue improvement. (b) Psychiatric symptom severity should correlate with PET-measured neuroinflammation in relevant circuits.],
    [PET neuroinflammation imaging available (Nakatomi 2014 paradigm). LDN trials ongoing but do not measure ADHD/ASD/depression endpoints separately from fatigue. Requires add-on psychiatric outcome measures in existing anti-inflammatory trial designs.],
    [Ch.14d @spec:neuroinflammation-cascade-generator],

    [Dopaminergic Tonic Depletion as Generator of ADHD-Like Phenotype in ME/CFS],
    [H], [0.45],
    [Chronic dopaminergic depletion (IDO pathway, metabolic constraint, HPA hypocortisolism) produces tonic effort-invigoration deficit distinct from primary ADHD. (a) Stimulant response should be uniform and dose-linear (tonic depletion) vs.\ variable (primary ADHD incentive salience). (b) CSF HVA should predict stimulant response magnitude. (c) Inattention severity should correlate with inflammatory markers.],
    [CSF HVA data from Walitt 2024 (n=17). Vernon 2025 PNAS survey: 77.1% brain fog improvement with stimulants. No study has compared stimulant response curves in ME/CFS vs.\ primary ADHD. Falsification: if response profile matches primary ADHD variability pattern.],
    [Ch.14d @hyp:dopamine-adhd-secondary],

    [Interoceptive Hierarchy Failure as Generator of Autism-Like Features in ME/CFS],
    [S], [0.30],
    [Thalamocortical disruption generates persistent unresolvable prediction errors; compensatory prior-precision increase produces acquired sensory rigidity, alexithymia, and social withdrawal. (a) ASD-like features should correlate with neuroinflammatory markers. (b) ASD-like features should worsen during PEM and improve during remission. (c) Features should be more context-dependent than primary ASD.],
    [Interoceptive accuracy paradigms (heartbeat detection) available. No study has measured ASD-trait stability across PEM cycles in ME/CFS. Requires longitudinal experience-sampling with inflammatory biomarkers.],
    [Ch.14d @spec:interoceptive-asd-secondary],

    [Failed Body-Wandering as Pathway to ME/CFS-Secondary Depression],
    [S], [0.40],
    [Corrupted interoceptive hierarchy generates unresolvable prediction errors; brain accumulates evidence of allostatic self-inefficacy (Stephan 2016). Depression is rational Bayesian inference from corrupted information, not primary mood disorder. (a) Depression severity should correlate with interoceptive prediction error markers (HRV, interoceptive accuracy) more than rumination scores. (b) Anti-inflammatory interventions should reduce depression independently of psychotherapy.],
    [Banellis 2025 (N=536) established body-wandering dimension and paradoxical protective effect. No ME/CFS body-wandering study exists. Heartbeat detection + inflammatory markers + depression scales in ME/CFS cohort would test directly.],
    [Ch.14d @spec:body-wandering-depression],

    [Can Neuroinflammation Treatment Reverse Secondary Neuropsychiatric Phenotypes?],
    [OQ], [—],
    [Does LDN or anti-inflammatory treatment reduce ADHD symptom scores, interoceptive rigidity, or depressive affect in ME/CFS independently of fatigue improvement? Tractable add-on to existing LDN trial designs.],
    [Current LDN trials do not separate psychiatric from fatigue endpoints. Requires ADHD rating scales and depression instruments as secondary outcomes in anti-inflammatory trials.],
    [Ch.14d @oq:neuroinflammation-reversal],

    [Does Habitual Body-Wandering Predict ME/CFS Onset or Trajectory?],
    [OQ], [—],
    [Pre-illness body-wandering capacity may predict whether post-infectious fatigue resolves or becomes chronic. Low baseline body-wandering $arrow.r$ greater depression vulnerability; hypervigilant body-wandering $arrow.r$ greater symptom amplification.],
    [Testable in post-infection cohort studies with pre-illness cognitive phenotyping. Banellis CCA protocol is freely available. No ME/CFS application yet.],
    [Ch.14d @oq:body-wandering-mecfs-predictor],
  ),
  kind: table, supplement: [Table], caption: [Hypothesis registry entries from ADHD/ASD/depression as secondary ME/CFS manifestations and body-wandering integration (2026-03-27). Covers neuroinflammatory cascade, dopaminergic depletion, interoceptive hierarchy failure, and body-wandering protective paradox.],
) <tab:hypothesis-registry-2026-03-27-neurodevelopmental>
] // end landscape page

=== Entries Added 2026-04-20: Metabolic Reserve Predisposition (Architecture C)

#page(flipped: true)[
#figure(
  table(
    columns: (3fr, 0.3fr, 0.4fr, 5fr, 3fr, 1.5fr),
    align: (left, center, center, left, left, left),
    table.header(
      [*Hypothesis / Speculation*], [*Type*], [*Cert.*],
      [*Testable Prediction (condensed)*], [*Available Tests / Status*],
      [*Location*],
    ),

    [Metabolic Reserve Depletion as ME/CFS Predisposition (Architecture C)],
    [H], [0.50],
    [Pre-existing conditions (ADHD, ASD, hEDS/POTS, migraine, GCH1 variants) chronically reduce brain metabolic reserve; immune trigger precipitates ME/CFS in individuals with insufficient buffer. (a) ADHD/ASD patients should show higher ME/CFS incidence after EBV/COVID than non-neurodivergent controls. (b) Compound risk: ASD + hEDS + iron deficiency → higher incidence than single condition. (c) Pre-illness metabolic markers (FDG-PET, BH4, ferritin, ASL-MRI CBF) should predict post-infectious ME/CFS risk. (d) Correcting modifiable reserve reducers (iron, BH4 for GCH1 carriers, POTS cerebral perfusion) should reduce risk or improve outcomes.],
    [ALSPAC data: OR=2.18 ADHD, OR=1.78 ASD for CDF at 18, IL-6 mediated. 29.7% childhood ADHD in CFS. hEDS registries exist for compound-risk testing. No prospective post-infection study with metabolic phenotyping. Falsification: equal/lower ME/CFS incidence in ADHD/ASD after matched infection.],
    [Ch.14d @hyp:metabolic-reserve-predisposition],

    [ADHD Hyperfocus Crash as Micro-PEM],
    [OQ], [—],
    [Post-hyperfocus exhaustion in ADHD parallels PEM: cognitive energy envelope depletion at subclinical scale. If ADHD is energy deficit, hyperfocus depletes limited budget → disproportionate recovery cost. Predicts: ADHD patients already experience micro-PEM; crash severity should correlate with metabolic reserve markers; pattern should worsen after infection.],
    [No formal study. ADHD community self-reports widely describe the phenomenon. Requires actigraphy + cognitive testing + metabolic markers in ADHD cohort before/after sustained cognitive effort. Comparison with ME/CFS PEM profile.],
    [Ch.14d @oq:adhd-hyperfocus-micro-pem],

    [Two-Hit Threshold Model for ME/CFS Onset],
    [S], [0.40],
    [Post-infectious fatigue → ME/CFS transition occurs when immune insult pushes below critical metabolic reserve threshold ($R_"crit"$), triggering self-sustaining mitochondrial damage cycle. Pre-existing low reserve (neurodivergent, hEDS, iron-deficient) determines who crosses threshold. Model exhibits hysteresis: reversing infection does not reverse ME/CFS. (a) Pre-COVID metabolic markers should predict Long COVID → ME/CFS conversion. (b) Neurodivergent Long COVID patients should have higher ME/CFS conversion rates.],
    [Raw 2025: autistic traits predict prolonged COVID symptoms ($n = 267$). Testable via UK Biobank (ADHD/ASD diagnosis + COVID + Long COVID data). No prospective pre-infection metabolic phenotyping study exists.],
    [Ch.14d @spec:two-hit-threshold-onset],

    [BH4 Depletion as Convergent Bottleneck Linking Predisposing Conditions to ME/CFS],
    [S], [0.35],
    [BH4 is the single metabolic chokepoint through which ADHD (consumption), ASD (oxidative destruction via IL-6), hEDS/POTS (ischemia-reperfusion oxidation), iron deficiency (impaired recycling), and GCH1 variants (reduced production) all reduce metabolic reserve. (a) Urinary neopterin:biopterin should be elevated in ALL predisposing conditions. (b) Pre-illness BH4 status should predict post-infectious ME/CFS risk better than any single diagnosis.],
    [ColpaniFilho 2025: low BH4 in ASD (systematic review). Williams 2025: GCH1 rs841 $arrow.r$ ADHD improvement with BH4 ($n = 5$). Neopterin:biopterin ratio measurable via HPLC (\~\$30--50). Falsification: if BH4 is normal in ADHD and hEDS patients.],
    [Ch.14d @spec:bh4-convergent-bottleneck],

    [Can Modifiable Reserve Reducers Be Corrected to Prevent or Treat ME/CFS?],
    [OQ], [—],
    [Iron repletion (ferritin $> 100$ ng/mL), BH4 cofactor support (folinic acid + vitamin C + iron for recycling; direct BH4 for GCH1 carriers), and cerebral perfusion optimisation (POTS management) are clinically actionable today. Does pre-emptive correction in neurodivergent patients reduce ME/CFS incidence after infection or improve outcomes in established ME/CFS?],
    [No study. All individual interventions are standard care for their respective conditions; the combination framed as metabolic reserve building is novel. Retrospective analysis possible in hEDS clinics with ME/CFS outcome tracking.],
    [Ch.14d @oq:modifiable-reserve-correction],
  ),
  kind: table, supplement: [Table], caption: [Hypothesis registry entries for metabolic reserve predisposition framework (Architecture C) and ADHD hyperfocus-crash as micro-PEM (2026-04-20). Links ADHD, ASD, hEDS/POTS, migraine, and GCH1 variants as pre-existing metabolic reserve reducers predisposing to ME/CFS.],
) <tab:hypothesis-registry-2026-04-20-metabolic-reserve>
] // end landscape page

=== Entries Added 2026-03-27: Thyroid Hormone--Mitochondrial Axis

#page(flipped: true)[
#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto),
    align: (left, center, center, left, left, left),
    table.header(
      [*Entry*], [*Type*], [*Cert.*], [*Testable Prediction*], [*Method*], [*Source*],
    ),
    // --- Row 1: Low Tissue T3 as Amplifier ---
    [Low Tissue T3 as Amplifier of Mitochondrial Dysfunction in ME/CFS],
    [H], [0.45],
    [ME/CFS patients with Low T3 should show lower supercomplex content (blue native PAGE) than those with normal thyroid profiles; intramuscular T3 should be disproportionately reduced in SELENOP-aAb+ patients; T3 supplementation should increase mtDNA copy number and improve respirometry at 8--12 weeks.],
    [Muscle biopsy + blue native PAGE; LC-MS/MS tissue T3; PBMCs respirometry (Seahorse); SELENOP-aAb stratification],
    [Ch.6 @hyp:t3-mito-amplifier],

    // --- Row 2: T2 open question ---
    [Are T2 Levels Altered in ME/CFS?],
    [OQ], [---],
    [T2 levels should be reduced in ME/CFS patients with Low T3 Syndrome; T2 deficiency should correlate with exercise intolerance severity.],
    [Serum/tissue T2 measurement by LC-MS/MS; correlation with CPET VO#sub[2]peak; exercise challenge protocol],
    [Ch.9 @oq:t2-mecfs],

    // --- Row 3: Selenoprotein P autoantibodies ---
    [Selenoprotein P Autoantibodies as ME/CFS Subtype Marker],
    [H (ach)], [0.55],
    [SELENOP-aAb+ patients should respond preferentially to direct T3 (not T4); selenium supplementation should partially restore deiodinase indices in aAb+ subgroup.],
    [SELENOP-aAb ELISA; T3 vs T4 supplementation trial stratified by aAb status; SPINA-GD index pre/post selenium],
    [Ch.9 @ach:selenop-autoantibodies],
  ),
  kind: table, supplement: [Table], caption: [Hypothesis registry entries from thyroid hormone--mitochondrial axis integration (2026-03-27). Covers tissue T3 amplification of mitochondrial damage, T2 diiodothyronine gap, and selenoprotein P autoantibody subtyping.],
) <tab:hypothesis-registry-2026-03-27-thyroid-mito>
] // end landscape page

=== Entries Added 2026-03-28: Circulating Cell-Free Mitochondrial DNA

#page(flipped: true)[
#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto),
    align: (left, center, left, left, left, left),
    table.header(
      [*Label*], [*Type*], [*Certainty*], [*Condensed prediction*], [*Methods*], [*Source*],
    ),
    [ccf-mtDNA as Long COVID vs ME/CFS distinguishing biomarker],
    [S],
    [0.25],
    [ME/CFS, Long COVID, and healthy controls show divergent ccf-mtDNA trajectories at rest and post-exercise; falsified if resting ccf-mtDNA equivalently low in both conditions],
    [qPCR ccf-mtDNA measurement in matched cohorts at rest and post-exercise],
    [Ch.14d `spec:cfmtdna-distinguish`],

    [Impaired mitophagy traps damaged mitochondria in Long COVID],
    [H],
    [0.35],
    [Muscle biopsy from Long COVID patients with low ccf-mtDNA shows increased PINK1/Parkin co-localisation (stalled mitophagy); falsified if mitophagy markers normal despite low ccf-mtDNA],
    [Muscle biopsy immunofluorescence for PINK1/Parkin + ccf-mtDNA measurement],
    [Ch.6 `hyp:impaired-mitophagy-longcovid`],
  ),
  kind: table, supplement: [Table], caption: [Hypothesis registry entries from Matits et al.\ 2026 ccf-mtDNA integration (2026-03-28). Covers Long COVID vs ME/CFS mitochondrial dynamics divergence and impaired mitophagy hypothesis.],
) <tab:hypothesis-registry-2026-03-28>
] // end landscape page

=== Entries Added 2026-03-29: Pain Mechanisms and Assessment

Motivated by: comprehensive pain research synthesis including MCAM study (Fall 2024), Marshall 2010 pain characteristics, Lu 2025 assessment scales review, Baraniuk 2025 nociplastic framework.

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [PEM-Driven Pain Amplification as Prominent ME/CFS Feature],
    [H], [0.45],
    [Pain worsens 8--72h post-exertion in ME/CFS but not FM-only; ASIC3/P2X4/TLR4 gene expression correlates with delayed pain scores in ME/CFS but not FM; CPM efficiency decreases post-exertionally in ME/CFS but not FM. Parsimonious alternative (FM + PEM without distinct mechanism) not yet excluded.],
    [Partially supported by Barhorst 2022 meta-analysis ($d = 0.71$ delayed vs $d = 0.32$ acute) and Nijs 2012 gene expression data. Direct head-to-head ME/CFS vs FM-only comparison lacking. Barhorst pools ME/CFS and FM cohorts.],
    [Ch.2 @hyp:ch02-pem-pain-amplification],

    [ME/CFS Pain as Nociplastic-Neuropathic Hybrid],
    [H], [0.40],
    [SFN+ patients respond to peripheral nerve treatments (IVIG, immunotherapy); SFN- patients respond to centrally acting agents (LDN, NMDA antagonists, pregabalin); hybrid phenotype has worse pain outcomes than either alone; pain phenotype predicts treatment response. Note: FM also shows ~49% SFN prevalence; hybrid not unique to ME/CFS.],
    [Stratified treatment trial by SFN biopsy status --- not yet done. SFN prevalence 30--80% supports substantial neuropathic subgroup. FM also has ~49% SFN (Grayston 2019). No trial has stratified by pain mechanism.],
    [Ch.15 @hyp:ch15-nociplastic-neuropathic-hybrid],

    [Pain Phenotype Predicts Treatment Response],
    [S], [0.35],
    [Neuropathic-predominant responds to IVIG/gabapentinoids; widespread-nociplastic responds to LDN/PEA; PEM-pain responds to pacing; headache-predominant responds to CGRP antagonists. Prospective phenotype-stratified treatment trial needed.],
    [No phenotype-stratified pain treatment trial exists in ME/CFS. Retrospective analysis of existing trial data with pain subtyping may be feasible.],
    [Registry-only (derived from Ch.15 phenotype discussion; no standalone #speculation environment in chapter)],

    [Instrument Gap: Existing Pain Measures Miss PEM-Pain],
    [OQ], [---],
    [Standard instruments (MPQ, BPI, NRS) fail to capture PEM-delayed pain onset, activity-contingent exacerbation, and day-to-day variability driven by energy envelope violations. NINDS CDE Pain Subgroup explicitly flagged three unmet needs.],
    [Psychometric validation study comparing standard instruments to ME/CFS-adapted pain diary in MCAM/You+ME cohorts. No ME/CFS-specific pain instrument exists.],
    [Ch.2 @oq:pain-instrument-gap],

    [Registry Harmonisation for Pain Subtyping],
    [OQ], [---],
    [MCAM + You+ME + UK ME/CFS Biobank + UK Biobank pain data can be harmonised for phenotype clustering; different registries should identify same cluster structure if pain subtypes are real.],
    [Cross-registry analysis with common pain variables. Requires ontology mapping across instruments (BPI, PROMIS, MPQ, custom scales). Feasibility demonstrated in other chronic pain conditions.],
    [Ch.20 @oq:registry-harmonisation-pain],
  ),
  kind: table, supplement: [Table], caption: [Hypothesis registry entries from pain mechanisms and assessment research synthesis (2026-03-29). Includes PEM-pain amplification, nociplastic-neuropathic hybrid model, pain phenotype stratification, and assessment instrument gaps.],
) <tab:hypothesis-registry-2026-03-29>
] // end landscape page


=== Entries Added 2026-04-06: Intestinal Parasites as ME/CFS Triggers

Motivated by: integration of Bergen Giardia outbreak evidence (Wensaas 2012, 2018; Bolstad 2017) and the inciting-trigger vs sustaining-mechanism conceptual framework developed for ch07 Section on intestinal parasites.

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Molecular Mimicry: Giardia VSPs and Autonomic Receptor Autoimmunity],
    [H], [0.30],
    [Anti-M2R and anti-β2-adrenergic receptor autoantibodies elevated in Bergen cohort ME/CFS patients vs non-ME/CFS exposed; VSP epitope homology to human GPCRs detectable computationally; immunoadsorption produces improvement in post-Giardia ME/CFS.],
    [Bergen cohort accessible for serological study; Scheibenbogen group autoantibody assays already validated for GPCR panels. VSP proteomics feasible. No direct test has been done.],
    [Ch.7 @hyp:giardia-molecular-mimicry],

    [Post-Parasitic IDO1 Upregulation → Chronic Kynurenine Shunt → Neuroinflammation],
    [H], [0.35],
    [Kynurenine/tryptophan ratio elevated in Bergen ME/CFS patients vs non-ME/CFS exposed at 5–10 years; H3K4me3 enrichment at IDO1 promoter in intestinal macrophage biopsies; IDO1 inhibitors reduce kyn/trp ratio and cognitive symptoms.],
    [Bergen cohort accessible; serum kyn/trp easily measurable. Intestinal biopsy epigenomics technically feasible. IDO1 inhibitors available (epacadostat). No ME/CFS post-parasitic study done.],
    [Ch.7 @hyp:parasite-ido1-kynurenine],

    [Secretory IgA Deficiency as Parasite-Triggered ME/CFS Conversion Risk Factor],
    [OQ], [---],
    [Sub-clinical sIgA insufficiency is more prevalent in Bergen cohort ME/CFS converters than non-converters; sIgA level predicts ME/CFS incidence after documented Giardia infection; sIgA restoration reduces conversion risk.],
    [Bergen cohort serum IgA measurable retrospectively on archived samples. sIgA measurement in incident ME/CFS cohorts feasible. No study has tested this.],
    [Ch.7 @oq:siga-parasite-mecfs],

    [Early Parasite Eradication as ME/CFS Prevention (Therapeutic Window)],
    [OQ], [---],
    [Aggressive early treatment of acute Giardia reduces ME/CFS incidence at 12 months vs delayed/standard treatment; treatment timing within Bergen cohort correlates with CFS conversion rate; prospective RCT in outbreak setting would directly test.],
    [Bergen cohort treatment records potentially available for retrospective analysis of timing. Prospective RCT ethically feasible in outbreak context (standard care arm exists). No trial done.],
    [Ch.7 @oq:parasite-prevention],

    [Systematic PCR Multiplex Parasite Screening in ME/CFS],
    [OQ], [---],
    [Blastocystis ST1/ST3 and Dientamoeba fragilis prevalence elevated in incident ME/CFS patients vs matched healthy controls by PCR multiplex; standard O&P microscopy misses >50% of positive cases in this population.],
    [PCR multiplex panels (FilmArray GI, BioFire) commercially available (~€200/sample). Incident ME/CFS cohort recruitment via specialist clinics. Study feasible within 18 months; not yet initiated.],
    [Ch.7 @oq:parasite-screening],

    [Mucosal Checkpoint Failure: GALT NK Depletion Permits Autoreactive Escape],
    [S], [0.20],
    [GALT NK cell counts (intestinal biopsy) lower in post-Giardia ME/CFS vs recovered Giardia-exposed controls; broader autoantibody panel (ANA, anti-thyroid, anti-GPCR) elevated in post-Giardia ME/CFS vs non-CFS; NK reconstitution reduces autoantibody titres in animal model.],
    [Intestinal biopsy for NK cell quantification; autoantibody ELISA panels; animal model NK reconstitution trial. Requires specialist intestinal immunophenotyping. No study done.],
    [Ch.7 @spec:galt-checkpoint-failure],

    [Post-Parasitic Mast Cell Priming as MCAS–ME/CFS Overlap Driver],
    [S], [0.20],
    [Serum tryptase and urinary PGD₂ metabolites elevated in post-Giardia ME/CFS vs non-CFS exposed; MCAS criteria prevalence higher in post-parasitic vs post-viral ME/CFS onset; H1/H2 antihistamine + cromolyn trial improves symptoms in elevated-tryptase subgroup.],
    [Serum tryptase and urinary mast cell mediators; cross-cohort MCAS prevalence comparison; antihistamine + cromolyn proof-of-concept trial in elevated-tryptase subgroup. Methods available; no study done.],
    [Ch.7 @spec:parasite-mcas-priming],

    [Duodenal Microbiome Disruption as Sustaining ME/CFS Mechanism],
    [OQ], [---],
    [Duodenal microbiome persistently altered in post-Giardia ME/CFS (reduced butyrate-producers, increased gram-negative bacteria); persistent low-grade LPS translocation detectable in blood; microbiome restoration reduces systemic inflammation and improves outcomes.],
    [Duodenal aspirate or proximal jejunal biopsy for 16S/metagenomic sequencing; endotoxin assays; small-bowel microbiome restoration trial. Requires endoscopic access; methods available in specialist centres. No study done.],
    [Ch.7 @oq:duodenal-microbiome],

    [Bergen Biobank Recontact: Cross-Sectional Multi-Biomarker Study],
    [OQ], [---],
    [GPCR autoantibody panels, duodenal epigenetic profiles, small intestinal microbiome, serum tryptase, and secretory IgA levels differ between Bergen PI-CFS patients and matched non-CFS exposed controls; results correlate with ME/CFS development status.],
    [Recontact study: serum GPCR autoantibodies, duodenal biopsy H3K4me3 ChIP-seq, small-bowel microbiome, serum tryptase, sIgA. Cohort already characterised; recontact logistically feasible at low marginal cost.],
    [Ch.7 @oq:bergen-biobank-recontact],

    [Cryptosporidium Long-Term Cohort: Generalising Beyond Giardia],
    [OQ], [---],
    [ME/CFS conversion rate after Cryptosporidium parvum outbreak measurable via Bergen-style design; immunological profile (NK cells, sCD40L) recapitulates or differs from post-Giardia; findings generalise mechanistic hypotheses across two apicomplexan species.],
    [Prospective cohort following documented Cryptosporidium outbreak for 3–10 years with formal ME/CFS ascertainment and immunophenotyping. Outbreaks recurrent in Europe/North America; opportunistic prospective design feasible. No study initiated.],
    [Ch.7 @oq:cryptosporidium-longitudinal],
  ),
  kind: table, supplement: [Table], caption: [Hypothesis registry entries from intestinal parasite–ME/CFS trigger research (2026-04-06). Includes molecular mimicry, IDO1/kynurenine, sIgA risk, early treatment window, diagnostic screening, GALT checkpoint failure, MCAS priming, duodenal microbiome, Bergen biobank recontact, and Cryptosporidium cohort hypotheses (10 entries).],
) <tab:hypothesis-registry-2026-04-06>
] // end landscape page

=== New Entries 2026-04-07: Physical Device Therapies and Monitoring

Added with integration of BEMER/PEMF, earthing/grounding, and NIRS/Moxy research into Ch.18.

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Earthing and Autonomic Modulation: Does Any Effect Persist Beyond Relaxation?],
    [OQ], [---],
    [If earthing genuinely shifts autonomic tone toward parasympathetic dominance, this is mechanistically relevant to ME/CFS sympathetic excess. Entire evidence base is COI-contaminated with no independent replication. No ME/CFS trial exists.],
    [Sham-controlled crossover sleep study: grounded vs ungrounded mats, continuous HRV monitoring, n$>=$ 40 ME/CFS patients.],
    [Ch.18 @sec:earthing-grounding],

    [SmO₂-Guided Pacing: Can Real-Time Muscle Oxygenation Data Improve PEM Prevention?],
    [OQ], [---],
    [NIRS-documented muscle O₂ abnormalities are well-established in ME/CFS (McCully 1999, Vermeulen 2014, Miller 2015) and Long COVID (Colosio 2023, Jamieson 2024). Heart-rate pacing is indirect; SmO₂ could provide a more direct anaerobic threshold signal. No pacing trial using SmO₂ exists.],
    [Pilot RCT comparing HR-guided vs SmO₂-guided activity management over 12 weeks; PEM frequency and severity as primary outcomes.],
    [Ch.18 @sec:nirs-moxy-pacing],
  ),
  kind: table, supplement: [Table], caption: [Hypothesis registry entries from physical device therapy and monitoring research (2026-04-07). Two open questions: earthing autonomic modulation and SmO₂-guided pacing.],
) <tab:hypothesis-registry-2026-04-07>
] // end landscape page

=== Full Harvest Statistics

The complete document contains approximately *333 environments* of the
four harvested types (updated 2026-04-10):

  - *Hypothesis:* $approx 137$ — Ch.9, 13, 14d, 14j, 18, 27, 29, 30 most dense.
  - *Speculation:* $approx 79$ — Ch.14a–i, 14d, 15–19 most dense.
  - *Prediction:* $approx 10$ — Ch.12 and Ch.14j primarily.
  - *Open Question:* $approx 102$ — Ch.14a–h, 14d, 14e, 14g, 14h, 22, 26, 28, 30, 32 most dense.
  - *Keypoint:* 1 new (convergence argument, Ch.13).

Selection criteria for the 42 table entries: (1) mechanism domain coverage;
(2) actionability with existing methods; (3) clinical impact if resolved;
(4) cross-chapter linkage to existing study designs in Ch.@ch:proposed-studies.

Entries excluded from the table but meriting future registries:
brainstorm-level speculations in Ch.14i without testable predictions;
redundant entries superseded elsewhere; cross-disease open questions in Ch.14d
requiring expertise outside ME/CFS scope.

=== Perioperative Care Registry Entry (2026-04-10)

#figure(
  table(
    columns: (2fr, 1fr, 1fr, 3fr, 2fr, 1.5fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Does Surgery Trigger Clinically Significant PEM in ME/CFS, and Can Pre-operative Protocols Mitigate It?],
    [OQ], [---],
    [Surgical stress (exertion, anesthesia, immune activation, sleep disruption) is expected to trigger PEM in a clinically significant proportion of ME/CFS patients. Predictions: (1) $>=$ 50% of ME/CFS patients report clinically significant PEM within 72~h post-surgery; (2) PEM severity correlates with baseline ME/CFS severity; (3) minimally invasive procedures produce less PEM than open surgery; (4) pre-operative metabolic preparation reduces PEM burden.],
    [Prospective cohort: recruit ME/CFS patients scheduled for elective surgery, capture PEM outcomes via validated instruments (DSQ-2) at 24~h, 72~h, 1~wk, 4~wk post-op. Compare by procedure type and pre-operative protocol. No such study exists (2026).],
    [Ch.14a @sec:perioperative-management],
  ),
  kind: table, supplement: [Table], caption: [Perioperative open question added 2026-04-10 following Steinkirchner et al.\ 2026 preprint — first empirical perioperative study in ME/CFS, which did not capture PEM as an outcome.],
) <tab:hypothesis-registry-perioperative-2026-04-10>

=== VNS Fibre Selectivity Registry Entries (2026-04-10)

#figure(
  table(
    columns: (2fr, 1fr, 1fr, 3fr, 2fr, 1.5fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [The "Wrong Fibres" Hypothesis: VNS Non-Response in ME/CFS as a Fibre-Selectivity Artifact],
    [Spec], [0.30],
    [C-fibre-confirmed VNS engagement will predict anti-inflammatory response (IL-6, TNF-alpha reduction) while A/B-only engagement predicts autonomic but not inflammatory improvement. Autonomic-dominant ME/CFS patients respond to B-fibre-range tVNS; immune/inflammatory-dominant patients require C-fibre parameters or alpha-7 nAChR agonist co-administration.],
    [tVNS trial with concurrent CNAP monitoring stratified by ME/CFS phenotype (autonomic vs.\ inflammatory dominant). No such trial exists (2026).],
    [Ch.18 @spec:vns-wrong-fibres],

    [Gut Microbiome Restoration as Indirect Vagal C-Fibre Therapy],
    [Spec], [0.40],
    [Successful microbiome restoration (increased faecal butyrate) will increase vagal afferent tone (HRV HF power or vagal evoked potential amplitude) in addition to GI and inflammatory improvements. Patients who restore butyrate but NOT vagal tone will not show systemic anti-inflammatory benefit, implicating the C-fibre afferent pathway as the mediating mechanism.],
    [Microbiome intervention trial with concurrent vagal tone monitoring (HRV) and inflammatory markers. Requires validated faecal butyrate measurement at baseline and follow-up. No ME/CFS study with this combined endpoint design exists (2026).],
    [Ch.18 @spec:gut-vagal-cfibre],
  ),
  kind: table, supplement: [Table], caption: [VNS fibre-selectivity speculations added 2026-04-10, motivated by Bu et al.\ 2026 @Bu2026VNSReview — first comprehensive anatomical characterisation of vagal fibre-class recruitment thresholds and implications for neuromodulation specificity.],
) <tab:hypothesis-registry-vns-fibre-2026-04-10>

=== Ch18 Therapeutic Framework Hypotheses Registry Entries (2026-04-11)

#figure(
  table(
    columns: (2fr, 1fr, 1fr, 3fr, 2fr, 1.5fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Metabolic State Transition],
    [H], [0.25],
    [Protocols including a controlled metabolic stressor (24-hour fast or brief hypoxic exposure) will outperform matched controls receiving pacing alone on 6-month SF-36 PF score in a prospective trial.],
    [Prospective RCT comparing metabolic stressor protocol vs.\ pacing-only control. Primary endpoint: SF-36 PF at 6 months. No ME/CFS trial of this design exists (2026).],
    [Ch.18 @sec:novel-frameworks],

    [Cellular Danger Response Persistence],
    [H], [0.25],
    [A sham-controlled trial of antipurinergic therapy in ME/CFS will show significant reduction in post-exertional symptom severity relative to sham, SMD #sym.gt 0.4.],
    [Sham-controlled trial of suramin or P2X/P2Y antagonist. Relevant: autism suramin pilot @Naviaux2018suraminpilot; ME/CFS trial not conducted (2026).],
    [Ch.18 @sec:novel-frameworks],

    [Glymphatic Dysfunction and Neuroinflammatory Persistence],
    [H], [0.20],
    [ME/CFS patients with objectively impaired SWS (#sym.lt 10% TST by PSG) will show higher neuroinflammatory markers and greater cognitive impairment than ME/CFS patients with preserved SWS, independent of total sleep time.],
    [Polysomnography with 7T MRS neuroinflammation markers (glutamate, mI, Cho) and cognitive battery. Cross-sectional study design; correlates testable immediately.],
    [Ch.18 @sec:novel-frameworks],

    [Dual Pathway Requirement for PEM Prevention],
    [H], [0.20],
    [In a factorial trial: ATP/NAD#super[+] support arm alone achieves #sym.lt 30% PEM severity reduction; combined arm achieves #sym.gt 50% reduction, demonstrating necessity of cascade interruption in addition to energy substrate provision.],
    [Factorial RCT: (1) energy arm (D-ribose, NR/NMN, creatine), (2) anti-inflammatory arm (NAC, omega-3, curcumin), (3) combined, (4) placebo. Primary outcome: PEM AUC severity days 1--7. No ME/CFS trial of this design exists (2026).],
    [Ch.18 @hyp:pem-dual-pathway],

    [AIMM Cascade Node: Which is Rate-Limiting for Clinical Improvement?],
    [OQ], [---],
    [A mechanistic head-to-head trial randomising patients to agents targeting different AIMM cascade nodes (NHE1 inhibition vs.\ Na#super[+]/K#super[+]-ATPase stimulation vs.\ mitochondrial downstream support) would identify the rate-limiting node for clinical improvement.],
    [No AIMM node-comparison trial exists. Active trials: NCT05697640 (vericiguat, sGC/vasodilation); TRI-ME (trimetazidine, mitochondrial metabolic); MDC002 Phase I (dual-target NKA + NCLX, pending).],
    [Ch.18 @oq:aimm-cascade-node],
  ),
  kind: table, supplement: [Table], caption: [Ch18 therapeutic framework hypotheses added 2026-04-11: three chapter-introduction hypotheses (Metabolic State Transition, CDR Persistence, Glymphatic Dysfunction) migrated from LaTeX source; one PEM prevention dual-pathway hypothesis and one AIMM cascade open question arising from AIMM bridging therapies section.],
) <tab:hypothesis-registry-ch18-frameworks-2026-04-11>

=== Ch06 Energy Metabolism Cartography Registry Entries (2026-04-11)

#figure(
  table(
    columns: (2fr, 1fr, 1fr, 3fr, 2fr, 1.5fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [PDC Cofactor Depletion as Untested Therapeutic Target],
    [Spec], [0.35],
    [Individual cofactor tests (erythrocyte transketolase for thiamine; EGRAC for riboflavin; alpha-lipoic acid plasma) will each identify a distinct ME/CFS subgroup with abnormal status; combined deficiency will be more prevalent than any single deficiency alone. Supplementation targeting the identified cofactor(s) will normalize lactate/pyruvate ratio and acylcarnitine profiles.],
    [Functional cofactor assays (erythrocyte transketolase, EGRAC, plasma lipoic acid) assessed individually per patient in a ME/CFS cohort; open-label supplementation pilot stratified by deficiency type. No formal trial exists (2026) @Maksoud2021nutraceuticals.],
    [Ch.6 @spec:pdc-cofactors],

    [PGC-1α Suppression Blocks Mitochondrial Biogenesis Recovery],
    [H], [0.40],
    [PGC-1α protein and mRNA will be lower in ME/CFS skeletal muscle biopsies than in matched controls, correlating with disease severity and MnSOD level. Sub-exercise-dose PGC-1α agonists will partially restore MnSOD expression and mitochondrial density.],
    [Skeletal muscle biopsy with PGC-1α quantification (IHC or qPCR); correlation with Shankar 2025 MnSOD data @Shankar2025oxidativestress. No measurement in ME/CFS tissue exists (2026).],
    [Ch.6 @hyp:pgc1alpha-suppression],

    [NAD#super[+]--Sirtuin--Acetylation Hub: Unified Upstream Regulator of G22, G34, and G39],
    [H], [0.35],
    [NAD#super[+] depletion in energy-intensive tissues (muscle, neurons) simultaneously inactivates SIRT1 and SIRT3, producing PGC-1$alpha$ hyperacetylation (G39), NRF2 functional suppression (G34), Complex I/TCA impairment, and SIRT4-mediated PDC inhibition. The PBMC NAD#super[+] elevation (Heng 2025) represents substrate backup (ETC block), not systemic surplus. Predicts that G22, G34, and G39 are three readouts of a single upstream failure.],
    [Muscle biopsy co-measuring NAD#super[+]/NADH ratio + PGC-1$alpha$ acetylation + NRF2 target gene expression in the same samples. If NAD#super[+] correlates inversely with PGC-1$alpha$ acetylation, the hub is supported. NR/NMN supplementation should simultaneously improve all three readouts. Factorial RCT (NAD#super[+] precursor $times$ AMPK activator) predicts synergistic effects. No such co-measurement exists in ME/CFS (2026).],
    [Ch.6 @hyp:nad-sirtuin-hub],

    [Brain PCr Depletion as Molecular Mechanism for Selective Energy Dysfunction],
    [Spec], [0.30],
    [Brain-specific creatine depletion (Godlewska 2025, 7T MRS @Godlewska2025MRS) with normal muscle creatine loading (@Ostojic2016GAA) maps onto the selective energy dysfunction pattern (@hyp:selective-energy). The PCr shuttle is the sole millisecond-timescale ATP delivery system; its depletion in brain but not muscle predicts CNS-dependent demand-responsive failures (cognition, autonomic coordination) alongside preserved autonomous peripheral functions.],
    [Brain-creatine-to-muscle-creatine ratio (brain 1H-MRS + muscle 31P-MRS in the same participants) will be lower in ME/CFS than controls. Patients with the lowest brain/muscle creatine ratio should show the greatest cognitive impairment relative to physical capacity. Never measured within one ME/CFS cohort (2026).],
    [Ch.6 @spec:brain-pcr-selective-energy],

    [The "Invisible Bottleneck": ANT Blockade Explains Normal Respirometry with Abnormal Energy],
    [H], [0.45],
    [If ANT is blocked (autoantibody, nitrosylation, or structural damage), ATP accumulates in the matrix while ETC continues consuming oxygen normally. Patient can have *normal OCR* but *abnormal cytosolic ATP*. Schulze 1999: anti-ANT raised mitochondrial ATP/ADP 4× while cytosolic fell 56% @SchulzeEtAl1999. Several studies show relatively preserved respirometry, yet patients have a functional energy deficit; this resolves that paradox.],
    [Compartment-specific ATP sensors (ATeam or iATPSnFR) in ME/CFS cells: mitochondrial-to-cytosolic ATP ratio >2 SD above controls in ≥20% of cases, even when Seahorse OCR is within normal range. Not yet tested in ME/CFS (2026).],
    [Ch.6 @hyp:invisible-bottleneck],

    [ANT Autoantibody-Mediated ATP Trapping as a Unifying ME/CFS Energy Lesion],
    [Spec], [0.30],
    [≥10% of ME/CFS patients (ICC criteria) will test positive for anti-ANT1 antibodies using human cardiac ANT1-specific ELISA, vs $<$2% of matched controls. Animal-model precedent: anti-ANT antibodies reduce cytosolic ATP/ADP by 56% and elevate mitochondrial ATP/ADP fourfold in Coxsackie B3 myocarditis @SchulzeEtAl1999. Note: anti-ANT is *not* AMA-M4 (which targets sulfite oxidase); requires dedicated ANT1-protein ELISA with C-terminal/M2-M3 loop epitopes @ManchadoEtAl2002. General AMA @NilssonEtAl2020 and REAP @GermainEtAl2025 negative results do not close G28.],
    [Human cardiac ANT1-specific ELISA in ME/CFS cohort (n≥50); antigen must include C-terminal + M2/M3 loop regions. Assay established in DCM context @SchultheissBolte1985 @TakemotoEtAl1993. Never applied to ME/CFS (2026). If confirmed, immunoadsorption already piloted for GPCR antibodies in ME/CFS @WohlrabEtAl2025.],
    [Ch.6 @spec:ant-autoantibody-atp-trapping],

    [ISCU Dysfunction as Multi-Enzyme Iron-Sulfur Failure],
    [OQ], [---],
    [Is iron-sulfur cluster assembly (ISCU) impaired in ME/CFS, producing simultaneous failure of aconitase, Complex I, Complex II, and ETF-QO --- amplifying any primary ETC dysfunction?],
    [ISCU protein measurement (WB/IHC) in ME/CFS muscle biopsy; ISCU mutation screening; aconitase activity assay. Clinical features of ISCU myopathy (exercise intolerance, lactic acidosis, myoglobinuria) overlap with ME/CFS. ISCU has never been studied in ME/CFS (2026); general mitochondrial dysfunction evidence: @MorrisMaes2014mitochondria.],
    [Ch.6 @sec:step5-krebs],

    [Is Wound Healing Actually Impaired in ME/CFS?],
    [OQ], [---],
    [No study has directly measured wound healing in ME/CFS. Mechanistic evidence from three independent pathways — NK cell dysfunction (cytotoxicity reduced, Hedges' $g = 0.96$ @Baraniuk2024NKMeta; NK cells regulate wound healing via IFN-γ/GM-CSF @Sobecki2021NKWoundHypoxia; TGF-β disrupts NK-MSC temporal cycling @Petri2017MSCNKTGFb), sympathetic overactivation impairing reepithelialization @Xue2018ANSWoundHealing, and immune exhaustion phenotype @Stanojcic2016ImmuneExhaustionBurns — each based on single studies with substantial caveats, suggests abnormal healing dynamics rather than normal preservation. However, wound healing is not a prominent clinical complaint in ME/CFS. Possible explanations: subclinical impairment masked by low wound burden in sedentary patients; compensatory fibrosis; or genuinely preserved healing through uncharacterised mechanisms.],
    [Three-arm standardised suction blister wound healing assay: ME/CFS patients ($n = 40$) vs sedentary healthy controls ($n = 20$) vs disease controls (FM/MS, $n = 20$), measuring reepithelialization time, histological scar quality, and blister fluid cytokine profiles. Would directly test whether the selective energy dysfunction hypothesis (@hyp:selective-energy) correctly excludes wound healing from spared functions. Never studied (2026).],
    [Ch.6 @oq:wound-healing-mecfs],

    [Systemic Tissue Repair Deficit: NK Cells as Repair Coordinators Beyond Skin],
    [Spec], [0.40],
    [If NK cells are upstream regulators of wound healing (@Sobecki2021NKWoundHypoxia) and ME/CFS NK cytotoxicity is halved (@Baraniuk2024NKMeta), the repair deficit should extend to all NK-dependent tissue maintenance: mucosal barrier repair (gut permeability), muscle damage repair (PEM duration), and endothelial repair. Unifies multiple separate pathophysiological findings under a single upstream cause.],
    [Gut mucosal repair rate (serial lactulose-mannitol permeability after standardised challenge) should correlate with NK cytokine secretion capacity (stimulated IFN-γ/GM-CSF, $r > 0.4$) — not NK cytotoxicity, which is a related but distinct function. Never tested in ME/CFS (2026).],
    [Ch.6 @spec:systemic-repair-deficit],

    [Autonomic Macrophage Polarisation as Unifying Tissue Repair Mechanism],
    [Spec], [0.45],
    [Sympathetic overactivation favours CD64+CCR2+ pro-inflammatory anti-repair macrophages; parasympathetic activation favours CD64+CCR2- pro-repair macrophages (@Xue2018ANSWoundHealing). ME/CFS autonomic imbalance would bias macrophage polarisation toward anti-repair across ALL tissues — brain (M1 microglia), gut, muscle, skin. VNS and beta-blockers may improve tissue repair via this mechanism.],
    [ME/CFS patients with higher sympathetic tone (lower HF-HRV) should show slower wound healing, more neuroinflammation (PET), and worse gut permeability, all correlating with the same ANS measure. Not yet tested (2026).],
    [Ch.6 @spec:autonomic-macrophage-repair],

    [PDK Upregulation as Protective Response to ROS],
    [Spec], [0.45],
    [In a stratified DCA trial: patients with low MnSOD/GPX4 will worsen (higher F2-isoprostanes, worse PEM); patients with normal antioxidant status will improve. DCA + NAC + CoQ10 + riboflavin will outperform DCA monotherapy.],
    [Stratified DCA pilot (n=40), stratified by MnSOD + GPX4 + F2-isoprostanes at baseline. No ME/CFS DCA trial has been stratified by antioxidant status. Motivated by @Shankar2025oxidativestress and @Comhaire2018DCA.],
    [Ch.6 @spec:pdk-protective],

    [PEM Timing Reflects ISR/mtUPR Kinetics],
    [Spec], [0.40],
    [Plasma GDF15 and FGF21 peak 24--48 h post-exertion in ME/CFS (correlating with PEM severity), tracking ISR kinetics rather than immediate exercise markers. ATF4-target genes elevated in PBMCs during PEM.],
    [GDF15/FGF21 ELISA time-course at t=0, 6, 12, 24, 48, 72 h post-CPET. Feasible in existing cohorts. ISR/mtUPR axis never studied in ME/CFS (2026).],
    [Ch.6 @spec:pem-isr],

    [Riboflavin FAD as Multi-Step Master Rate-Limiter],
    [Spec], [0.42],
    [EGRAC ≥1.3 in ≥30% ME/CFS vs \<10% controls; elevated C4--C18 acylcarnitines in EGRAC-high patients; riboflavin 400 mg/day normalises EGRAC and reduces lactate/pyruvate in responders.],
    [EGRAC functional assay (cheap, standardised). Riboflavin 400 mg open-label pilot with EGRAC stratification. Never done in ME/CFS. MADD provides disease precedent @Maksoud2021nutraceuticals.],
    [Ch.6 @spec:riboflavin-master],

    [Cardiolipin Peroxidation as ROS Damage Convergence Point],
    [Spec], [0.30],
    [Plasma CLox >2× control in moderate-severe ME/CFS; elamipretide 12-week trial reduces F2-isoprostanes and CLox and improves 6MWT in CLox-high responders.],
    [Plasma oxidized cardiolipin LC-MS (not routine; requires specialist lab). Elamipretide trial feasibility. Motivated by Molnar et al. @Molnar2024LCmitochondria and @Shankar2025oxidativestress.],
    [Ch.6 @spec:cardiolipin-peroxidation],

    [KGDHC Cofactor Failure Compounds PDC Dysfunction],
    [OQ], [---],
    [Does alpha-ketoglutarate dehydrogenase complex (KGDHC) share the same cofactor deficiency signature as PDC in ME/CFS, producing simultaneous failure at two TCA entry points? Would combined PDC+KGDHC cofactor assessment change treatment response to thiamine/riboflavin supplementation?],
    [Direct KGDHC enzyme activity assay (lymphocytes or muscle biopsy) alongside PDC activity. Cofactor assessment (thiamine, riboflavin, lipoic acid) in the same patients. No ME/CFS study has measured KGDHC activity directly (2026). See @sec:cartography-gaps.],
    [Ch.6 @sec:cartography-gaps],

    [CPT1/Malonyl-CoA Switch Is Dysregulated in ME/CFS],
    [OQ], [---],
    [Is the malonyl-CoA-mediated CPT1 inhibition signal abnormal in ME/CFS, altering the carbohydrate-to-fat fuel switching that normally occurs during exercise recovery? Could abnormal CPT1 gating explain the characteristic post-exertional shift toward incomplete fatty acid oxidation?],
    [Malonyl-CoA measurement in plasma or PBMCs during and after standardised exercise; CPT1 activity assay. Neither measured in ME/CFS (2026). See @sec:cartography-gaps.],
    [Ch.6 @sec:cartography-gaps],

    [NRF2 Pathway Suppression as Unifying Antioxidant Failure],
    [OQ], [---],
    [Is NRF2 — the master antioxidant transcription factor upstream of MnSOD, GPX1, catalase, and thioredoxin — suppressed in ME/CFS, producing a coordinated failure of the entire antioxidant defence system? Would NRF2 activators (sulforaphane, dimethyl fumarate) normalise downstream antioxidant enzyme levels?],
    [NRF2 nuclear translocation assay in PBMCs; ARE-luciferase reporter in patient-derived cells; downstream target mRNAs (NQO1, HO-1, GCLC). NRF2 not measured in ME/CFS (2026). Sulforaphane open-label pilot feasible. See @sec:cartography-gaps.],
    [Ch.6 @sec:cartography-gaps],

    [PRDX3 and Thioredoxin System Impairment in ME/CFS],
    [OQ], [---],
    [Is the mitochondrial PRDX3 and thioredoxin/thioredoxin reductase H#sub[2]O#sub[2] scavenging system impaired in ME/CFS patients, as predicted by the PRDX3-knockout phenotype (exercise intolerance, mitochondrial fragmentation)? Has human tissue not been measured because it is technically difficult or because no one has tried?],
    [PRDX3 protein and activity in muscle biopsy (WB/IHC); erythrocyte thioredoxin reductase activity (accessible proxy). Neither measured in ME/CFS (2026). PRDX3-KO mouse is phenotypically relevant. See @sec:cartography-gaps.],
    [Ch.6 @sec:cartography-gaps],

    [UCP2/UCP3 Upregulation as Compensatory ATP-Yield Sacrifice],
    [OQ], [---],
    [Are mitochondrial uncoupling proteins (UCP2 in visceral tissues, UCP3 in skeletal muscle) upregulated in ME/CFS as a compensatory ROS-reduction mechanism, with the side-effect of dissipating the proton gradient and further reducing ATP yield? Would this explain why ME/CFS patients feel worse with higher metabolic demand even when ETC substrates appear adequate?],
    [UCP2/UCP3 mRNA and protein in skeletal muscle biopsy; proton leak measurement in isolated mitochondria. Neither measured in ME/CFS (2026). Proton leak correlates with ROS in model systems. See @sec:cartography-gaps.],
    [Ch.6 @sec:cartography-gaps],

    [Aconitase--Ferroptosis Iron Bridge],
    [S], [0.30],
    [Aconitase [4Fe-4S] cluster destruction by superoxide releases labile iron into the mitochondrial matrix, catalysing Fenton chemistry and driving sub-lethal ferroptotic membrane damage. The parallel cytosolic ACO1→IRP1 switch redistributes iron intracellularly (upregulating TfR1, suppressing ferritin), explaining normal serum iron with elevated intracellular labile iron. This bridges the energy metabolism deficit (TCA blockade) to the ferroptosis hypothesis.],
    [Mitochondrial labile iron pool (calcein-AM quenching) in ME/CFS PBMCs; ACO2 activity vs protein ratio; IRP1 RNA-binding (EMSA) vs ACO1 enzymatic activity. None measured in ME/CFS (2026). See @spec:aconitase-ferroptosis-bridge.],
    [Ch.6 Step 5],

    [Itaconate--NRF2 Paradox: NRF2 Activated But Overwhelmed],
    [S], [0.30],
    [If itaconate shunt is active in ME/CFS, NRF2 should already be activated (itaconate alkylates KEAP1). Yet downstream targets are depleted. Three sub-hypotheses: (a) demand exceeds supply; (b) NRF2 target promoters are epigenetically silenced; (c) NRF2 splice variants with reduced transactivation dominate. Connects bidirectionally to PGC-1α (G39) via the broken hormetic loop.],
    [NRF2 nuclear protein + NQO1/HO-1 mRNA + protein levels + ARE promoter methylation in PBMCs. NRF2 not measured in ME/CFS (2026). If NRF2 nuclear protein is elevated but target proteins are low, supports overwhelm hypothesis. See @spec:itaconate-nrf2-paradox.],
    [Ch.6 Step 9],

    [Riboflavin: Consumption vs Supply Problem],
    [OQ], [---],
    [Is FAD insufficiency in ME/CFS driven by increased consumption (oxidative-stress-driven GR turnover acting as a FAD sink) rather than dietary deficiency? If so, EGRAC will correlate with oxidative stress markers, and riboflavin + antioxidant co-administration will outperform riboflavin alone.],
    [EGRAC measured alongside F2-isoprostanes and GSSG/GSH ratio; riboflavin dose-response with and without NAC co-administration. EGRAC not yet measured in ME/CFS (2026). See @oq:riboflavin-consumption-vs-supply.],
    [Ch.6 Step 6],
  ),
  kind: table, supplement: [Table], caption: [Chapter 6 energy-metabolism failure-cartography entries (added 2026-04-11; updated 2026-04-12 with three Phase 3 brainstorm-derived entries): one hypothesis (PGC-1α suppression, H, certainty 0.40); seven speculations (PDC cofactor depletion, PDK upregulation as protective, PEM timing as ISR kinetics, riboflavin FAD master rate-limiter, cardiolipin peroxidation convergence, aconitase--ferroptosis iron bridge, itaconate--NRF2 paradox); eight open questions (ANT autoantibodies, ISCU dysfunction, KGDHC cofactor failure, CPT1/malonyl-CoA regulation, NRF2 pathway suppression, PRDX3/thioredoxin system, UCP2/UCP3 upregulation, riboflavin consumption vs supply) — sixteen entries total. Motivated by @Fluge2016, @Shankar2025oxidativestress, @Maksoud2021nutraceuticals, @MorrisMaes2014mitochondria, @Molnar2024LCmitochondria, @Kennedy2005isoprostanes, @Robinson2010isoprostanes.],
) <tab:hypothesis-registry-ch06-cartography-2026-04-11>

=== Entries Added 2026-04-12: Ch06 Gap Brainstorm Integration (Session 12)

Motivated by: systematic brainstorming across 10 gap-specific analyses (G7, G9, G16, G17, G22, G23, G28, G32, G34, G39); top ideas selected by Novelty $gt.eq$ 4 AND Feasibility $gt.eq$ 3.

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Tissue-Divergent PDK: Brain Resting Lactate vs. Muscle Exertion-Gated PDC Inhibition],
    [S], [0.30],
    [PDK isoform expression varies by tissue (PDK4 in muscle, PDK2/PDK3 in brain). Brain PDK2/PDK3 upregulation produces resting lactate elevation; muscle PDK4 manifests only under exertion. Paired brain MRS + exercise muscle MRS would demonstrate divergence. Muscle biopsy finding PDK4-only elevation implicates JNK-driven inflammation.],
    [Paired brain 1H-MRS + exercise muscle 31P-MRS — feasible but never done in same ME/CFS cohort. Muscle biopsy with isoform-specific PDK Western blot — feasible.],
    [Ch.6 Step 3 @spec:pdk-tissue-divergence],

    [KGDHC as the Primary TCA Bottleneck],
    [S], [0.35],
    [KGDHC is more ROS-sensitive than PDC (40--50% inhibition at oxidative-stress-range H#sub[2]O#sub[2]; multiple redox-sensitive cysteine residues). SIRT4 dual-targets both PDC and KGDHC E2. Mid-cycle trap: no overflow valve (unlike PDC→lactate). Paired PDC + KGDHC measurement should show KGDHC reduction exceeding PDC.],
    [PBMC KGDHC activity assay (NADH production at 340 nm) — standardised protocol available. Muscle biopsy for definitive tissue measurement. Neither measured in ME/CFS (2026).],
    [Ch.6 Step 5 @spec:kgdhc-primary-bottleneck],

    [Glutathionylation Depletion Spiral],
    [S], [0.25],
    [Acute KGDHC reduction increases glutathionylation (+114%, protective); chronic reduction depletes it (-40%, harmful). Maps onto ME/CFS natural history: recovery possible in years 0--2, irreversible decline after 5+. Same intervention may have different efficacy depending on disease duration.],
    [KGDHC activity vs disease duration (non-linear acceleration at 2--5 years). Glutathionylation status as treatment-responsiveness biomarker. Chen 2016 (neuronal culture) is the basis — ME/CFS validation needed.],
    [Ch.6 Step 5 @spec:glutathionylation-spiral],

    [Itaconate--Aconitase Double Block],
    [S], [0.25],
    [Aconitase impaired by two independent mechanisms: (a) ACOD1 substrate diversion (cis-aconitate→itaconate) and (b) ROS-mediated [4Fe-4S] cluster destruction. Combined effect exceeds either alone. Failing to address both yields incomplete response.],
    [Simultaneous itaconate + ACO2 activity + ACOD1 expression in ME/CFS PBMCs. ACOD1 suppression (genetic knockdown or validated pharmacological inhibitors, once available) for partial restoration. Neither ACOD1 expression nor itaconate measured in ME/CFS cells (2026).],
    [Ch.6 Step 5 @spec:itaconate-aconitase-double-block],

    [Dual-Compartment NAD+ Paradox],
    [S], [0.30],
    [NAD+ elevated in PBMCs (single study, $n = 61$, requires replication; substrate backup from ETC block) but predicted depleted in muscle/neurons (consumed by PARP, CD38, kynurenine diversion). Blood-based NAD+ measurements may systematically mislead. Could explain inconsistent NR/NMN trial results.],
    [Paired PBMC + muscle biopsy NAD+ measurement in same cohort — never done. PBMC NAD+/muscle NAD+ ratio as diagnostic. Complex I activity assay in PBMCs to confirm backup interpretation.],
    [Ch.6 Step 6 @spec:dual-compartment-nad],

    [CD38--Senescence--NAD+ Vicious Cycle],
    [S], [0.25],
    [Self-amplifying loop: endothelial senescence → CD38 upregulation → NAD+ depletion → mtDNA leakage via VDAC1 → cGAS-STING → IFN-β → more senescence. Connects four separate observations. Breakable at any node (senolytics, CD38 inhibitors, NAD+ precursors, cGAS-STING inhibitors).],
    [Endothelial senescence markers (p16, SA-β-gal) + CD38 co-expression in ME/CFS biopsies — requires rigorous age-matching (CD38 increases with age independently of disease). In vitro CD38 inhibition (78c) effect on cGAS-STING in patient cells. Endothelial senescence itself unconfirmed in ME/CFS (2026).],
    [Ch.6 Step 6 @spec:cd38-senescence-nad-cycle],

    [Cofactor Recycling Network Failure: FAD as Master Rate-Limiter],
    [S], [0.35],
    [Cofactors form an interdependent recycling network. FAD gates E3 (which recycles lipoic acid AND NAD+), Complex I, Complex II, and glutathione reductase — highest outdegree in the dependency graph. FAD deficiency causes cascading co-deficiency.],
    [Simultaneous cofactor panel: FAD deficiency (EGRAC ≥ 1.3) should predict highest co-deficiency count. Riboflavin supplementation should partially normalise lipoic acid function and NAD+ status without direct supplementation.],
    [Ch.6 Step 6 @spec:cofactor-recycling-fad-hub],

    [Anti-ANT Complement Fixation on Mitochondrial Membranes],
    [S], [0.15],
    [Anti-ANT IgG fixes complement on exposed mitochondrial membranes (cell death, MDVs, exercise-induced mPTP opening). Self-amplifying cascade explains threshold nature of PEM and provides molecular target for post-exertional C4a elevation.],
    [Complement components (C3d, C5b-9) on circulating cell-free mitochondria in anti-ANT-positive vs anti-ANT-negative ME/CFS patients. Requires G28 (anti-ANT prevalence) to be positive first.],
    [Ch.6 Step 7 @spec:ant-complement-mitochondria],

    [Astrocyte Creatine Sink],
    [S], [0.25],
    [Reactive astrocytes in neuroinflamed tissue consume creatine at accelerated rates, depleting the neuronal PCr pool. Explains brain creatine decreased (Godlewska 2025) while muscle loads normally. Anti-neuroinflammatory interventions might restore brain creatine without supplementation.],
    [Combined TSPO-PET + 1H-MRS: creatine depletion should be worse in regions with higher neuroinflammation (elevated myo-inositol). TSPO-PET + MRS feasible but not yet combined in ME/CFS.],
    [Ch.6 Step 8 @spec:astrocyte-creatine-sink],

    [Creatine--Lactate Seesaw in Brain Energy],
    [S], [0.35],
    [Brain creatine down and brain lactate up are mechanistically linked: PCr buffer depletion forces glycolytic compensation during demand spikes, producing lactate. Creatine supplementation should reduce brain lactate (dual-endpoint for RCT). Falsified if Δ-creatine and Δ-lactate are uncorrelated ($r approx 0$).],
    [Creatine RCT with pre/post brain MRS measuring both creatine and lactate. Plot Δ-creatine vs Δ-lactate: seesaw predicts $r < -0.5$. Design is simple but MRS adds cost.],
    [Ch.6 Step 8 @spec:creatine-lactate-seesaw],

    [Cognitive PEM as Brain PCr Depletion--Repletion Failure],
    [S], [0.30],
    [Mental exertion depletes brain PCr in a pool already running near-empty; impaired mitochondrial function prevents rapid regeneration. The delay in cognitive PEM reflects PCr recovery failure kinetics. Analogous to delayed muscle PCr recovery in Long COVID.],
    [Brain 31P-MRS after standardised cognitive task (30-min Stroop): greater PCr depletion + slower recovery in ME/CFS vs controls. Technically feasible at 7T but challenging (low SNR, motion).],
    [Ch.6 Step 8 @spec:cognitive-pem-pcr],

    [The Biogenesis Trap: Metabolic Sisyphus],
    [S], [0.25],
    [PGC-1α drives production of new mitochondria that are immediately dysfunctional (WASF3 disrupts supercomplex assembly). Cell wastes ATP on biogenesis with no functional return. If functional yield is sufficiently low, could be worse than no biogenesis: new dysfunctional organelles amplify ROS. WASF3/ER stress should be addressed before stimulating biogenesis.],
    [ME/CFS muscle: elevated biogenesis markers (import machinery, cardiolipin synthesis) alongside decreased functional respiratory capacity per mitochondrion (CS-normalised Complex IV). WASF3 + PGC-1α acetylation + supercomplex assembly in same biopsies.],
    [Ch.6 Step 10 @spec:biogenesis-trap],
  ),
  kind: table, supplement: [Table], caption: [Chapter 6 gap brainstorm integration entries (2026-04-12, Session 12): twelve speculations (PDK tissue divergence, glutathionylation spiral, itaconate--aconitase double block, dual-compartment NAD+ paradox, CD38--senescence cycle, ANT complement fixation, astrocyte creatine sink, cognitive PEM via PCr, biogenesis trap) — twelve entries total. Motivated by brainstorm files for G7, G9, G16, G17, G22, G28, G32, G39.],
) <tab:hypothesis-registry-brainstorm-2026-04-12>

=== VNS Fibre Selectivity and ANT Mimicry Brainstorm Integration (2026-04-12)

#figure(
  table(
    columns: (2fr, 1fr, 1fr, 3fr, 2fr, 1.5fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Vagal C-Fibre Afferent Deafferentation Maintains the Neuroinflammatory Set-Point],
    [S], [0.40],
    [SFN (reduced IENFD) in ME/CFS damages vagal C-fibre afferents, preventing the brainstem from receiving "periphery is inflamed" signals. The efferent anti-inflammatory reflex is inadequately triggered, and sickness behaviour persists. Vicious cycle: inflammation $arrow.r$ C-fibre damage $arrow.r$ reduced afferent signalling $arrow.r$ impaired reflex $arrow.r$ more inflammation.],
    [SFN-positive ME/CFS patients should show lower vagal C-fibre conduction (late VEP components >50~ms), higher inflammatory markers, and poorer VNS response than SFN-negative patients. VNS response in SFN-positive limited to autonomic (B-fibre) endpoints. No SFN-stratified VNS trial exists (2026).],
    [Ch.18 @spec:cfibre-deafferentation],

    [Alpha-7 nAChR Agonists as Pharmacological VNS Bypass],
    [H], [0.45],
    [Selective alpha-7 nAChR agonists (GTS-21, galantamine) directly activate the downstream effector of the cholinergic anti-inflammatory pathway on macrophages, bypassing fibre-selectivity and C-fibre deafferentation problems entirely. Anti-inflammatory effect independent of SFN status.],
    [Alpha-7 agonist (GTS-21 or galantamine) will reduce TNF-$alpha$/IL-6 in ME/CFS patients with elevated baseline inflammation, effect size $gt.eq$ standard tVNS, without hoarseness/bradycardia. Independent of SFN status (unlike VNS). No ME/CFS trial for either agent (2026).],
    [Ch.18 @hyp:alpha7-pharmacological-vns],

    [Coxsackie B3--ANT Molecular Mimicry in Post-Enteroviral ME/CFS],
    [S], [0.30],
    [Coxsackie B3 generates anti-ANT1 autoantibodies via molecular mimicry between viral epitopes and ANT1 C-terminal/M2--M3 loop regions. First specific molecular mimicry target proposed for ME/CFS (filling gap noted in Ch.7). Persists after viral clearance, causing chronic energy deficit.],
    [ME/CFS patients with enteroviral onset (Coxsackie B3 serology) should have higher anti-ANT1 titres than EBV-onset or non-infectious-onset patients. In silico homology analysis of Coxsackie B3 proteome vs ANT1 epitopes (Manchado 2002) can rapidly support/refute mimicry mechanism.],
    [Ch.6 @spec:coxsackie-ant-mimicry],
  ),
  kind: table, supplement: [Table], caption: [VNS fibre-selectivity extensions and ANT molecular mimicry brainstorm integration (2026-04-12). Two VNS-related entries (C-fibre deafferentation, alpha-7 nAChR pharmacological bypass) extend the fibre-selectivity framework; one ANT entry proposes the first specific molecular mimicry target for ME/CFS. Motivated by brainstorm files for VNS fibre selectivity and ANT autoantibodies.],
) <tab:hypothesis-registry-brainstorm-remaining-2026-04-12>
] // end landscape page for brainstorm integration

=== TRP/Piezo Channel Integration (2026-04-13)

#figure(
  table(
    columns: (2fr, 1fr, 1fr, 3fr, 2fr, 1.5fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Beyond TRPM3: A Broader TRP Channelopathy in ME/CFS],
    [S], [0.40],
    [In ME/CFS, elevated ROS and prostaglandins sensitize TRPV1 and TRPA1 on sensory neurons and mast cells, creating self-sustaining feed-forward loops (TRPV1→COX2→PGE2→TRPV1 @Li2021 @Moriyama2005; TRPA1 cysteine-ROS @Macpherson2007). Co-sensitization across multiple TRP channels may explain why ME/CFS symptoms span pain, chemical sensitivity, and temperature dysregulation simultaneously.],
    [Capsaicin-induced flare thresholds in ME/CFS-MCS vs ME/CFS-no-MCS patients; TRPA1 activation threshold (mustard challenge); NK cell TRPV1/TRPA1 gating in ME/CFS (can exploit existing blood draw protocols). No ME/CFS-specific TRP sensitization study published (2026).],
    [Ch.14h @spec:ch14h-trp-expanded],

    [Piezo1 Dysregulation as a Mechanism for RBC Stiffness in ME/CFS],
    [S], [0.35],
    [Chronic oxidative stress and cytokines in ME/CFS may dysregulate Piezo1-KCa3.1 coupling in RBCs, producing dehydrated/stiff cells that impair capillary transit. RBC deformability is documented reduced in ME/CFS @Saha2019; Piezo1 mechanism proposed by Cahalan2015 for RBC volume homeostasis @Cahalan2015.],
    [Patch-clamp Piezo1 gating in ME/CFS RBCs vs controls; KCa3.1 (Gardos) activity assay; RBC deformability vs 2-day CPET VO₂max correlation. No ME/CFS Piezo1 study exists (2026).],
    [Ch.14h @spec:ch14h-piezo1-rbc],

    [Piezo2 Gain-of-Function and Mechanical Allodynia in ME/CFS],
    [S], [0.35],
    [Piezo2 mediates light-touch allodynia and proprioceptive encoding @Szczot2018. Gain-of-function Piezo2 variants (CRAMPED syndrome: hypermobility, allodynia, scoliosis) overlap with hEDS features overrepresented in ME/CFS. Chronic neuroinflammation may lower Piezo2 activation thresholds, contributing to mechanical allodynia.],
    [Piezo2-dependent sensory modality thresholds (von Frey filaments, vibration) vs pain thresholds in ME/CFS; joint position sense testing in ME/CFS-hEDS vs ME/CFS-no-hEDS; skin biopsy DRG culture for Piezo2 electrophysiology. Not yet studied (2026).],
    [Ch.14h @spec:ch14h-piezo2-allodynia],

    [Ambroxol as Repurposed TRP Channel Modulator in ME/CFS],
    [S], [0.35],
    [Ambroxol (OTC mucolytic) blocks Nav1.8 in nociceptors @Gaida2005Ambroxol and antagonizes human TRPV1 by electrophysiology @Hefner2025AmbroxolTRPV1. If TRPV1 sensitization drives ME/CFS pain and chemical hypersensitivity, ambroxol could reduce sensitization-driven nociceptor activation. Also modulates TRPA1 at higher concentrations.],
    [ME/CFS patients with pain/MCS features should show pain reduction with ambroxol 75--150 mg/day correlating with capsaicin flare-threshold improvement. No ME/CFS trial exists (2026). Note: species-specific Nav1.8 data (rat IC50 18 µM vs human 279 µM) limits translation.],
    [Ch.14h @spec:ch14h-ambroxol-trp],
  ),
  kind: table, supplement: [Table], caption: [TRP/Piezo channel integration (2026-04-13): three open-questions generated from Julius 2021 Nobel context applied to ME/CFS, plus ambroxol speculation from Phase 4. Motivated by @Macpherson2007, @Li2021, @Moriyama2005, @Saha2019, @Cahalan2015, @Szczot2018, @Molot2023, @Gaida2005Ambroxol, @Hefner2025AmbroxolTRPV1, @Russo2023Ambroxol],
) <tab:hypothesis-registry-trp-piezo-2026-04-13>

=== Entries Added 2026-04-14: CSF Drainage Synergy

Motivated by: Wall 2014 IIHTT; Mitchell 2025 drug comparison; Riste 2025 Perrin RCT; Midtlien 2024 CTD phenotype.

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Synergistic CSF Volume Reduction and Neurolymphatic Drainage],
    [S], [0.30],
    [CA inhibitor (acetazolamide/topiramate) reduces CSF production; Perrin Technique provides mechanical drainage. Combination addresses glymphatic failure from both sides. (a) CSF flow metrics improve with combination vs monotherapy. (b) ICP-sign patients respond better. (c) Cognitive improvement precedes fatigue improvement. (d) Lower CA inhibitor doses sufficient with concurrent Perrin.],
    [Phase-contrast MRI + Perrin + acetazolamide trial in hEDS/CCI ME/CFS subgroup — never tested. Mitchell2025 cognition worsening is key safety barrier. Medow2024 negative for acute OI cognition.],
    [Ch.14a @sec:csf-drainage-synergy],
  ),
  caption: [CSF drainage synergy hypothesis],
  kind: table,
) <tab:registry-csf-drainage>
] // end landscape page

=== Entries Added 2026-04-14: Sequential Therapy, ONSD Biomarker, and NPH Bridge

Motivated by: Riste 2025 Perrin RCT; Mitchell 2025 cognitive safety; Xie 2013 glymphatic sleep coupling; NPH literature cognitive recovery; Walitt 2024 CSF catecholamines.

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Sequential Therapy: Perrin First, CA Inhibitor Only If Needed],
    [S], [0.55],
    [≥30% of hEDS/CCI ME/CFS patients normalize CSF flow with Perrin alone, requiring no CA inhibitor. CA addition only for inadequate responders. Avoids Mitchell 2025 cognitive risk. Provides natural comparator within each patient.],
    [Sequential trial (Perrin first → assess → add CA if needed) — never tested. Riste 2025 showed Perrin alone improved fatigue. Mitchell 2025 cognitive worsening can be avoided for responders.],
    [Ch.14a @sec:sequential-therapy-perrin-ca],

    [Overnight ONSD Change as Non-Invasive Glymphatic Biomarker],
    [S], [0.50],
    [ONSD evening → morning decrease ≥0.2 mm = effective overnight glymphatic clearance in healthy controls. ME/CFS patients will show no decrease or paradoxical increase. Normalizers vs non-responders predict treatment response. Titration guide: target ONSD 4.0–5.0 mm (higher than IIH). Screening tool for ICP elevation.],
    [Bedside ultrasound probe immediately available. Serial measurement to track Perrin/CA inhibitor/sleep response. Novel non-invasive glymphatic biomarker.],
    [Ch.14a @sec:onsd-overnight],

    [Normal Pressure Hydrocephalus (NPH) as ME/CFS "CSF Dynamics-Only" Parallel],
    [S], [0.35],
    [ME/CFS "micro-NPH" — CSF dynamics impairment without ventriculomegaly. Diagnostic tap test (20–30 mL removal) produces dramatic cognitive recovery in NPH. ME/CFS brain-fog phenotype should respond similarly. MRI shows reduced aqueductal CSF stroke volume. ONSD normalizes with drainage. Opening pressure predicts response.],
    [Diagnostic lumbar puncture with CSF removal as proof-of-concept — immediately testable. Phase-contrast MRI CSF flow metrics available. NPH cognitive recovery literature provides outcome measures. SmithVerkman 2018 critique supports CSF turnover model.],
    [Ch.14a @sec:micro-nph-bridge],
  ),
  caption: [Sequential therapy and glymphatic biomarkers (2026-04-14): three new speculations motivated by Perrin feasibility and Mitchell cognitive safety, extending CSF drainage framework with staged approach, non-invasive monitoring, and NPH cross-disease bridge],
  kind: table,
) <tab:registry-sequential-onsd-nph>
] // end landscape page

=== Entries Added 2026-04-16: Bimodal Onset Age Peaks

Motivated by: McGrath et al.\ 2026 (Oxford Open Immunology) @McGrath2026bimodalOnset; Bakken et al.\ 2014 (BMC Medicine) @Bakken2014bimodalOnset; Jin et al.\ 2019 (Nature Communications) @Jin2019vitiligoBimodal.

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Early-Onset ME/CFS Has a Distinct Genetic Architecture],
    [S], [0.40],
    [Vitiligo precedent: bimodal onset revealed MHC class II haplotype OR > 8 in early onset @Jin2019vitiligoBimodal. ME/CFS early onset shows stronger familial clustering (OR 1.43) and IM trigger enrichment (OR 2.32). (a) GWAS stratified by onset age shows at least one locus with differential allele frequency. (b) HLA region most likely candidate. (c) Early-onset heritability exceeds late-onset heritability.],
    [DecodeME dataset (n > 17,000 with genetic data) can be stratified by onset age — not yet done. HLA fine-mapping feasible. Twin heritability analysis by onset age requires new cohort.],
    [Ch.5 @oq:bimodal-genetic-architecture; Ch.14d @spec:bimodal-genetic-subtype],

    [Pubertal Immune Remodelling Drives Early-Onset Peak],
    [S], [0.30],
    [Age ~16 coincides with pubertal thymic involution, EBV primary infection timing, and hormonal changes. (a) Early-onset ME/CFS patients have distinct immune profiles vs late onset (T cell subset differences, EBV-specific). (b) Onset-age-specific immune vulnerability window exists around puberty. (c) Sex hormones modulate susceptibility (but McGrath found no gender difference between peaks).],
    [Immune profiling stratified by onset age — not done. EBV-specific T cell assays feasible. Longitudinal adolescent cohort would be ideal but expensive.],
    [Ch.5 @sec:bimodal-onset-age],

    [Early-Onset Severity Reflects Disease Mechanism, Not Duration],
    [S], [0.35],
    [Early-onset cases more severe (OR 2.15) independent of duration @McGrath2026bimodalOnset. Suggests early-onset ME/CFS involves more aggressive pathophysiology rather than longer disease course. (a) Biomarker severity correlates with onset age after controlling for duration. (b) Early-onset has distinct metabolic or immune signatures predicting severity. (c) Pediatric immune response to triggers is qualitatively different.],
    [DecodeME and EMEA datasets have both severity and onset-age data — stratified analysis feasible. Muscle biopsy studies by onset age not available.],
    [Ch.5 @cf:bimodal-clinical-differences],

    [Hormonal Modulation Explains Pregnancy/Breastfeeding Improvement in Early-Onset Patients],
    [S], [0.20],
    [Clinical observation (Tate, blog comment): early-onset patients report improvement during pregnancy/breastfeeding with relapse after weaning. If real, suggests hormonal state modulates the disease mechanism specific to early-onset subtype. (a) Early-onset patients show hormonal biomarker differences (estrogen/progesterone metabolites). (b) Pregnancy hormone profile (high progesterone, prolactin) correlates with symptom improvement. (c) Relapse timing correlates with hormonal transition.],
    [No published evidence. Case series with hormonal profiling needed. Retrospective survey of pregnancy outcomes by onset age feasible. Very low certainty due to anecdotal origin.],
    [Ch.5 @sec:bimodal-onset-age],    [Thymic--EBV Synchrony: Early Peak as Pubertal "Perfect Storm"],
    [H], [0.45],
    [Age ~16 = thymic involution + EBV primary infection + puberty. EBV creates memory B cells just as nTreg output collapses → autoreactive clones escape. (a) Early-onset patients have lower RTEs (CD31+ naive CD4). (b) RTE:EBV-memory ratio at seroconversion predicts ME/CFS. (c) HLA variants affecting thymic selection enriched in early onset.],
    [RTE measurement in ME/CFS patients by onset age — not done. Prospective EBV cohort with immune profiling — expensive but feasible. DecodeME HLA analysis by onset age — data exists.],
    [Ch.14d @hyp:thymic-ebv-synchrony],

    [Developmental Neurovulnerability Explains Early-Onset Severity],
    [S], [0.30],
    [Brain myelination continues to mid-20s. Neuroinflammation during developmental window → permanent structural changes. (a) Early-onset shows reduced DTI fractional anisotropy vs late-onset matched for duration. (b) Severity difference mediated by white matter integrity. (c) Altered functional connectivity in networks maturing at age 16.],
    [Neuroimaging by onset age — not done. DTI/fMRI study stratified by onset age feasible.],
    [Ch.14d @spec:developmental-neuro-severity],

    [Late Peak as Cumulative Mitochondrial Reserve Exhaustion],
    [S], [0.25],
    [Age ~37: mtDNA deletions accumulate, mitophagy declines, NAD+ drops, peak stress. Unlike early onset (catastrophic immune event), late onset = gradual erosion past threshold. (a) Late-onset shows higher mtDNA deletion burden vs controls but lower than early-onset. (b) Oxidative stress metabolites correlate with pre-illness stress. (c) NAD+ precursors preferentially benefit late-onset patients.],
    [Muscle biopsy mtDNA deletion analysis by onset age — not done. NAD+ stratified trial by onset age feasible.],
    [Ch.14d @spec:mitochondrial-reserve-late-peak],

    [IM-Specific ME/CFS as Three-Compartment Immune Failure],
    [S], [0.35],
    [IM triggers simultaneous B cell activation, NK expansion, CD8 expansion → three-compartment failure: large EBV latent reservoir + NK exhaustion + CD8 T cell exhaustion. (a) IM-triggered ME/CFS clusters separately from non-IM in immunophenotype analysis. (b) Higher EBV viral load, more NK exhaustion, more clonal EBV-specific T cells. (c) Autoantibody repertoire enriched for EBV-cross-reactive specificities.],
    [IM vs non-IM head-to-head immunophenotyping — not done. EBV viral load comparison feasible.],
    [Ch.14d @sec:bimodal-cross-disease],

    [XCI Escape Explains Constant Female Ratio Across Both Peaks],
    [S], [0.25],
    [80% female in both peaks despite diverging hormonal states → non-hormonal mechanism. X chromosome carries highest density of immune genes (TLR7/8, CD40L, FOXP3). Incomplete XCI for immune genes creates baseline immune activation difference independent of hormonal state. (a) ME/CFS patients show higher XCI-escapee gene expression. (b) XCI skewness predicts risk in females. (c) Klinefelter (XXY) males have elevated risk; Turner (XO) females reduced.],
    [XCI escape measurement — not done in ME/CFS. Methylation-based skewness assay feasible.],
    [Ch.14d @sec:bimodal-cross-disease],
  ),
  caption: [Bimodal onset age peaks (2026-04-16): two hypotheses and seven speculations motivated by McGrath et al.\ 2026 bimodal onset discovery and vitiligo genetic precedent],
  kind: table,
) <tab:registry-bimodal-onset>
] // end landscape page

=== Entries Added 2026-04-16: Blood and Immune System Convergence

Motivated by: Health Rising synthesis of 11 recent ME/CFS pathophysiology studies; two major convergent themes identified (immune remodeling, blood/vascular dysfunction).

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [A Complement-Mediated Inflammatory Subgroup in ME/CFS],
    [S], [0.35],
    [CDC pQTL: high C3/low Bb subgroup. UK Biobank fatigue validation is non-specific. Activation vs deficiency ambiguity. (a) Complement pQTL risk variant carriers show higher C3 and worse PEM. (b) AH50 distinguishes activation from deficiency. (c) CSF complement enrichment specific to pQTL-positive subgroup.],
    [C3/Bb ELISA standard; AH50 send-out test --- feasible. Subgroup identification requires genotyping not clinically available.],
    [Ch.7 @spec:complement-inflammatory-subgroup],

    [Galectin-9--TIM-3 Axis as Driver of Tissue-Resident Cell Depletion],
    [S], [0.35],
    [Galectin-9--TIM-3 associated with gamma-delta/MAIT depletion in LC-ME/CFS (scRNA-seq, not protein-level). Alternative explanations: barrier displacement, AICD, cytokine suppression. May be LC-ME/CFS-specific. (a) Galectin-9 elevated in ME/CFS serum, correlates with MAIT/gamma-delta depletion. (b) In vitro Galectin-9 blockade rescues cell survival. (c) Galectin-9 correlates with gut barrier markers.],
    [Galectin-9 ELISA + flow cytometry for MAIT/gamma-delta counts --- feasible. Therapeutic agents in early oncology development only.],
    [Ch.7 @spec:galectin-9-tim3-axis],

    [Extracellular Vesicle-Mediated Signaling in ME/CFS Pathophysiology],
    [S], [0.25],
    [Altered EV cargo (n<=12 discovery). Hemoglobin likely RBC contamination artifact. BBB crossing in brain-to-blood direction established; peripheral-to-central limited. (a) ME/CFS EVs alter gene expression in recipient cells. (b) EV cargo changes after exercise stress. (c) Hemoglobin persists after contamination correction.],
    [EV isolation + small RNA sequencing --- expensive. Contamination controls required.],
    [Ch.7 @spec:ev-signaling-mecfs],

    [NII Metrics as Translatable Neuroinflammation Biomarkers],
    [Obs], [0.35],
    [NII model on standard diffusion MRI detects white matter abnormalities (n=67/group). Neuroinflammation vs hypoperfusion ambiguity; unreplicated model. (a) NII metrics replicate in independent ME/CFS cohort. (b) NII-HR correlates with TSPO-PET (distinguishes neuroinflammation from ischemia). (c) NII metrics track treatment response longitudinally.],
    [NII model application to existing diffusion datasets --- requires collaboration. NII is research software, not clinically available.],
    [Ch.8 @ach:nii-neuroinflammation],

    [Cross-Compartment Convergence: Immune-Blood-Brain Axis in ME/CFS],
    [OQ], [---],
    [Multiple 2025--2026 studies (proteomics, scRNA-seq, neuroimaging, CSF, exercise challenge) show heterogeneous, mixed findings across platforms, cohorts, and disease definitions. No study uses cross-compartment design or severity-matched chronic illness controls; convergence cannot be established from the current evidence base.],
    [Multi-compartment longitudinal study (blood + CSF + neuroimaging + exercise challenge in same patients) --- not done. Blood contamination controls essential for any CSF proteomics study.],
    [Ch.7 @sec:immune-remodeling; Ch.8 @sec:nii-neuroinflammation],

    [Complement-Driven Perivascular Mast Cell Amplification Loop],
    [S], [0.25],
    [Complement and mast cell activation could be parallel downstream effects of shared upstream trigger rather than causally linked. Loop requires regulatory protein failure (Factor H, CD55, CD59 not addressed), spatial confinement (no mechanism), and sustained mast cell responsiveness (tachyphylaxis not addressed). (a) Skin blister fluid C3a:C3 ratio higher than plasma. (b) Complement-pQTL subgroup has higher tryptase/PGD2. (c) C5aRA reduces mast cell mediators --- negative result supports parallel-activation alternative.],
    [Skin blister complement assay --- specialised research technique. Serum tryptase + PGD2 ELISA --- standard.],
    [Ch.7 @spec:complement-mast-cell-loop],

    [Brainstem Autonomic Loop: Three-Node Cycle vs Shared Upstream Cause],
    [S], [0.20],
    [Three-node vicious cycle assembled from non-overlapping cohorts; simpler alternative is all three nodes as parallel downstream effects of a shared upstream event. Vicious cycle hypotheses are generically unfalsifiable. Vagal anti-inflammatory pathway controversial in humans. NII shows widespread (not brainstem-specific) changes. (a) Brainstem NII correlates with HRV more than cognition. (b) POTS+ have worse brainstem NII. (c) Shared upstream cause model predicts all three nodes correlate with severity; cycle model predicts each predicts others after controlling for severity.],
    [NII analysis of brainstem tracts --- requires model application to existing data.],
    [Ch.8 @spec:brainstem-autonomic-loop],
  ),
  caption: [Blood and immune system convergence entries (2026-04-16; revised after adversarial review): zero hypotheses, five speculations, one observation, one open question. Certainty scores reduced; complement-mast-cell loop and brainstem autonomic loop reclassified from hypothesis to speculation after adversarial review identified unfalsifiability, circular logic, and cohort heterogeneity concerns; complement subgroup reclassified from hypothesis to speculation (certainty 0.35, underpowered pQTL); NII entry reclassified from prediction to observation with certainty corrected to 0.35.],
  kind: table,
) <tab:registry-blood-immune-convergence>
] // end landscape page

=== Entries Added 2026-04-18: Calcium Channelopathy Integration

Motivated by: Nguyen 2017 @Nguyen2017trpm3; Cabanas 2019 electrophysiology @Cabanas2019trpm3val; Eaton-Fitch 2021 PIP2 @EatonFitch2021trpm3pip2; Eaton-Fitch 2022 NTX @EatonFitch2022trpm3ntx; du Preez 2023 TRPM7 @DuPreez2023trpm7; Vijayan 2015 alpha-delta model @Vijayan2015alphaDelta; Crunelli 2006 CaV3.1 @Crunelli2006thalamicTtype.

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left),
    table.header([*Hypothesis / Speculation Title*], [*Type*], [*Cert.*], [*Mechanistic Summary*], [*Key Falsifiable Predictions + Study Feasibility*], [*Location*]),

    [Subtype A vs Subtype B: Two Distinct Calcium Mechanisms in ME/CFS],
    [S], [0.35],
    [Calcium dysregulation in ME/CFS falls into two mechanistically distinct subtypes: Subtype A (energy failure → secondary Ca#super[2+] via NCX reversal; downstream, correctable via Na#super[+]/K#super[+]-ATPase restoration) and Subtype B (primary TRPM3 channelopathy → Ca#super[2+] dysfunction → multi-system failure; upstream, requiring TRPM3 restoration). Subtypes may co-exist or interact in a self-amplifying cascade. Framework motivated by @Wirth2024keyRole, @Nguyen2017trpm3, @Sasso2026trpm3.],
    [(a) TRPM3 dysfunction should be measurable before PEM-triggering exertion in Subtype B patients but not Subtype A. (b) MDC002 (Na#super[+]/K#super[+]-ATPase restoration) prevents NCX reversal but does not normalize TRPM3 current. (c) Mixed-subtype patients require both MDC002 and TRPM3 restoration for symptom improvement. No subtyping study exists (2026). Cross-sectional TRPM3 assays cannot distinguish subtypes --- prospective longitudinal design required.],
    [Ch.14h @spec:ch14h-calcium-subtypes],

    [Thalamic T-Type Calcium Channel Disruption as Mechanism of Alpha-Delta Sleep in ME/CFS],
    [H], [0.35],
    [CaV3.1 T-type Ca#super[2+] channels in thalamic relay neurons generate delta oscillations; CaV3.1 KO mice show reduced NREM sleep @Crunelli2006thalamicTtype. Vijayan 2015 computational model shows altered I#sub[h]/GABA#sub[B]/K#super[+]-leak balance transforms delta into alpha-delta @Vijayan2015alphaDelta. Neuroinflammation, oxidative stress, or systemic channelopathy in ME/CFS may disrupt CaV3.1 gating, producing alpha-delta intrusion and non-restorative sleep. No direct ME/CFS study exists; extrapolated from fibromyalgia models.],
    [(a) ME/CFS patients with alpha-delta EEG pattern show more severe non-restorative sleep than those without. (b) T-type Ca#super[2+] channel blockers (ethosuximide, zonisamide) convert alpha-delta to delta sleep and improve PSG delta power. (c) TRPM3 dysfunction severity (NK cell assay) correlates with alpha-delta sleep severity. Feasible: PSG + TRPM3 assay in same cohort; ethosuximide N-of-1 trials with PSG pre/post.],
    [Ch.8 @hyp:thalamic-calcium-sleep],
  ),
  caption: [Calcium channelopathy integration (2026-04-18): Subtype A/B framework formalizing two mechanistically distinct calcium pathways, and thalamic CaV3.1 hypothesis linking sleep calcium channels to alpha-delta sleep in ME/CFS. Motivated by @Nguyen2017trpm3, @Cabanas2019trpm3val, @EatonFitch2021trpm3pip2, @EatonFitch2022trpm3ntx, @DuPreez2023trpm7, @Vijayan2015alphaDelta, @Crunelli2006thalamicTtype.],
  kind: table,
) <tab:registry-calcium-channelopathy-2026-04-18>
] // end landscape page

=== Entries Added 2026-04-18: Calcium Brainstorm Integration (Phase 4)

#page(flipped: true, margin: 1.5cm)[
#figure(
  table(
    columns: (1.6fr, 0.5fr, 0.6fr, 2.8fr, 1.2fr, 1.2fr),
    align: (left, center, center, left, left, left),
    table.header(
      [*Hypothesis / Speculation / Open Question*],
      [*Type*],
      [*Certainty*],
      [*Condensed Predictions / Key Points*],
      [*Test Method*],
      [*Location*],
    ),
    [TRPM3+TRPM7 Dual Channelopathy as Subtype-Defining Signature],
    [[H]],
    [[0.42]],
    [Dual dysfunction creates compounded NK cell deficit (can't migrate AND can't degranulate). Disease severity correlates inversely with number of dysfunctional TRP channels.],
    [Patch-clamp Ca#super[2+] flux in NK cells comparing TRPM3-only vs TRPM3+TRPM7 dysfunction groups; Bell scale correlation.],
    [Ch.14h @hyp:ch14h-trpm3-trpm7-dual],
    [PIP#sub[2] Exhaustion Links GPCR Autoantibodies to Multi-Channel Dysfunction],
    [[H]],
    [[0.45]],
    [Chronic GPCR autoantibody stimulation depletes PIP#sub[2], simultaneously impairing TRPM3, TRPM7, Piezo, and KCNQ channels. PIP#sub[2] levels inversely correlate with autoantibody titers.],
    [Anti-PIP#sub[2] immunofluorescence in NK cells; exogenous diC8-PIP#sub[2] rescue of TRPM3 Ca#super[2+] flux; autoantibody/PIP#sub[2] correlation analysis.],
    [Ch.14h @hyp:ch14h-pip2-convergence],
    [TRPM3+TRPM7+NK Cytotoxicity as Mechanistic Biomarker Panel],
    [[H]],
    [[0.50]],
    [Three-parameter panel achieves $>$80% sensitivity/$>$75% specificity for ME/CFS. Predicts LDN response: TRPM3 normalizes, TRPM7 unchanged.],
    [Standardized Ca#super[2+] flux + NK cytotoxicity panel; blinded multi-site validation; LDN pre/post comparison.],
    [Ch.14h @hyp:ch14h-calcium-biomarker-panel; Ch.20 @sec:trpm3-biomarker-candidate],
    [Sodium MRI + TRPM3 Assay: Subtype A/B Identification Protocol],
    [[S]],
    [[0.30]],
    [2x2 classification (A+/B+/-) yields distinct clinical profiles and predicts differential treatment response: MDC002 for A, LDN for B, combination for AB.],
    [Post-exercise #super[23]Na-MRI + TRPM3 Ca#super[2+] flux assay applied to clinical cohort; clinical profile comparison across 2x2 groups.],
    [Ch.14h @spec:ch14h-subtype-protocol],
    [LDN + MDC002 Orthogonal Calcium Correction],
    [[S]],
    [[0.40]],
    [LDN restores Ca#super[2+] signaling in immune cells; MDC002 prevents Ca#super[2+] toxicity in muscle cells. Combination improves both NK cytotoxicity AND post-exercise sodium accumulation; monotherapy improves only one.],
    [Combination vs monotherapy RCT with NK cytotoxicity and #super[23]Na-MRI as co-primary endpoints; subgroup by Subtype A/B classification.],
    [Ch.18 @spec:ch18-ldn-mdc002-combination],
    [NCX1 Reversal in Cardiac Muscle: Mechanism for Diastolic Dysfunction],
    [[S]],
    [[0.35]],
    [Cardiac NCX1 reversal under chronic hypoperfusion causes diastolic dysfunction, amplifying preload failure. E/e' ratio correlates with post-exercise muscle sodium accumulation.],
    [Echocardiography (E/e'); cardiac #super[23]Na-MRI; MDC002 trial with cardiac endpoints.],
    [Ch.10 @spec:ch10-cardiac-ncx-reversal],
    [Brugada Post-Viral Channelopathy Parallel],
    [[S]],
    [[0.15]],
    [Post-infectious Nav1.5 dysfunction in Brugada provides mechanistic precedent for post-viral TRPM3 dysfunction. Viral proteases may directly cleave TRPM3.],
    [Viral protease screening (SARS-CoV-2 3CL#super[pro], EBV proteases) against recombinant TRPM3 protein in vitro.],
    [Ch.14h @spec:ch14h-brugada-parallel],
    [Thalamic Calcium: Ethosuximide Direction Uncertainty],
    [[OQ]],
    [[-]],
    [T-type block may worsen delta (if CaV3.1 hypoactive) OR improve sleep (if alpha-frequency bursting persists). Direction determines therapeutic viability. Single-dose crossover PSG study needed.],
    [Ethosuximide 250 mg vs placebo crossover; overnight PSG measuring delta power and alpha-delta index.],
    [Ch.8 @oq:ch08-ethosuximide-direction],
    [Sleep EEG Delta/Alpha Ratio as Thalamic Calcium Proxy],
    [[S]],
    [[0.35]],
    [NREM delta/alpha ratio correlates with ME/CFS severity; worsens before PEM; improves with thalamic calcium-targeted interventions. Scalable via home EEG.],
    [Longitudinal home EEG (Dreem/Muse); PEM prediction study; intervention pre/post (T-type modulators, metabolic support).],
    [Ch.8 @spec:ch08-sleep-eeg-proxy],
    [HypoPP Parallel: Acquired Multi-Channel Channelopathy Producing PEM],
    [[S]],
    [[0.25]],
    [ME/CFS may represent an acquired multi-channel HypoPP-like state. Post-exertional CMAP reduction expected. Acetazolamide may have untested muscle-protective rationale via gating pore mechanism.],
    [CMAP measurement pre/post exercise in ME/CFS vs HypoPP vs controls; acetazolamide crossover for PEM reduction.],
    [Ch.13 @spec:ch13-hypopp-parallel],
    [Timothy Syndrome: Channelopathy-Driven Immunodeficiency Proof-of-Concept],
    [[S]],
    [[0.15]],
    [Timothy syndrome (CaV1.2 GoF) demonstrates that calcium channel dysfunction of any type produces immunodeficiency, supporting the channelopathy-immunodeficiency link in ME/CFS.],
    [TRPM3 function measurement in Timothy syndrome patients (rare); comparison to ME/CFS.],
    [Ch.13, Timothy syndrome section],
    [Cromolyn + LDN for MCAS-ME/CFS Overlap],
    [[S]],
    [[0.35]],
    [Opposing calcium modulation: cromolyn suppresses pathological mast cell Ca#super[2+] entry; LDN restores physiological NK cell Ca#super[2+] entry. Neither alone achieves both endpoints.],
    [MCAS+ME/CFS cohort; NK cytotoxicity + urinary N-methylhistamine as co-endpoints; monotherapy vs combination.],
    [Ch.18 @spec:ch18-cromolyn-ldn-mcas],
    [Graded Warm Thermal Stimulation as TRPM3 Agonism],
    [[S]],
    [[0.25]],
    [38--39°C brief immersion activates remaining TRPM3, providing Ca#super[2+] entry insufficient at thermoneutral. Measurable acute NK Ca#super[2+] flux increase post-immersion.],
    [NK Ca#super[2+] flux before/after 38°C vs 34°C hand immersion; 8-week protocol TRPM3 assay pre/post.],
    [Ch.17 @spec:ch17-thermal-trpm3],
    [Low-Magnitude Vibration as Piezo1 Activator Without Exercise Demand],
    [[S]],
    [[0.20]],
    [WBV (0.3g, 30 Hz) activates Piezo1 in RBCs and endothelium, potentially improving microcirculation without PEM-triggering metabolic cost.],
    [RBC deformability (ektacytometry) pre/post WBV session; 4-week protocol orthostatic tolerance test; acute RBC Ca#super[2+] content.],
    [Ch.17 @spec:ch17-vibration-piezo],
    [Endogenous Ouabain Depletion as Missing Na#super[+]/K#super[+]-ATPase Regulatory Signal],
    [[OQ]],
    [[-]],
    [Endogenous ouabain (picomolar adrenal hormone) activates Na#super[+]/K#super[+]-ATPase via Src kinase. Depletion in ME/CFS could contribute to pump failure before ionic cascade. Not a therapeutic target --- research question only.],
    [Serum endogenous ouabain radioimmunoassay in ME/CFS vs healthy controls; correlate with post-exercise Na accumulation.],
    [Ch.6 @oq:ch06-endogenous-ouabain],
    [GsMTx-4 In Vitro Test of Piezo1-RBC Hypothesis],
    [[OQ]],
    [[-]],
    [Selective Piezo1 inhibition by spider venom peptide GsMTx-4 applied to ME/CFS RBCs in vitro. Deformability restoration = Piezo1 overactivation mechanism; no restoration = competing mechanism (oxidative damage, ATP depletion).],
    [Ektacytometry of ME/CFS RBCs ± GsMTx-4 (research tool only, not therapeutic).],
    [Ch.14h @oq:ch14h-gsmtx4-piezo1],
    [CRISPR-TRPM3 Reporter for High-Throughput Drug Screening],
    [[OQ]],
    [[-]],
    [GFP + GCaMP reporter in iPSC-derived NK cells enables compound library screening for TRPM3 function restoration. Systematic identification of TRPM3 modulators for drug repurposing.],
    [Reporter cell line engineering; compound library screen; hits tested on patient-derived NK cells.],
    [Ch.20 @oq:ch20-crispr-trpm3-reporter],
  ),
  caption: [Calcium brainstorm Phase 4 integration (2026-04-18): 17 new entries from systematic brainstorm of all calcium mechanisms in ME/CFS. Includes hypotheses, speculations, and open questions across channels (TRPM3/7, Piezo, CaV3.1), treatments (LDN+MDC002, thermal, vibration, cromolyn+LDN), diagnostics (panel, subtype protocol, sleep EEG proxy), and cross-disease parallels (HypoPP, Timothy syndrome, Brugada). Motivated by @EatonFitch2021trpm3pip2, @DuPreez2023trpm7, @Sasso2026trpm3, @Vijayan2015alphaDelta, @Crunelli2006thalamicTtype, @Wirth2024keyRole.],
  kind: table,
) <tab:registry-calcium-brainstorm-2026-04-18>
] // end landscape page

=== Entries Added 2026-04-17: Li#super[+]/IMPase/IP3/PIP#sub[2] Axis Integration

Motivated by: integration of the Li#super[+] → IMPase → PIP#sub[2] depletion → reduced IP3-mediated Ca#super[2+] release chain; 8 papers on the inositol depletion hypothesis and NCS-1/InsP3R1 axis. Sources: @saha2023impa1 @schlecker2006ncs1 @boeckel2018ncs1 @harwood2005inositol @belmaker1998inositol @sade2016ip3 @nguyen2019ncs1 @yu2016inositolGSK3.

#page(flipped: true, margin: 1.5cm)[
#figure(
  table(
    columns: (1.6fr, 0.5fr, 0.6fr, 2.8fr, 1.2fr, 1.2fr),
    align: (left, center, center, left, left, left),
    table.header(
      [*Hypothesis / Speculation / Open Question*],
      [*Type*],
      [*Certainty*],
      [*Condensed Predictions / Key Points*],
      [*Test Method*],
      [*Location*],
    ),
    [NCS-1 Expression in ME/CFS: Elevated, Normal, or Reduced?],
    [[OQ]],
    [[-]],
    [NCS-1 amplifies InsP3R1 ~5×; Li#super[+] disrupts this. If elevated: Li#super[+] is therapeutic. If normal/reduced: Li#super[+] may be harmful. Divergent treatment implications make this a critical unknown.],
    [NCS-1 ELISA/Western blot on ME/CFS PBMCs vs healthy controls — feasible on stored biobank samples. Correlation with disease severity and TRPM3 dysfunction.],
    [Ch.8 @oq:ncs1-mecfs-expression],

    [PLC-delta Positive Feedback: PIP#sub[2] Depletion as Autonomous State],
    [[S]],
    [[0.15]],
    [Elevated cytosolic Ca#super[2+] activates PLC-$delta$, consuming more PIP#sub[2] — a self-amplifying loop making depletion persist after autoantibody removal.],
    [PLC-$delta$ expression/activity in ME/CFS cells. Autoantibody clearance ± PLC-$delta$ inhibition for PIP#sub[2] recovery.],
    [Ch.14h @spec:plc-delta-feedback],

    [Futile ER Calcium Cycling via STIM1/Orai1 SOCE],
    [[S]],
    [[0.25]],
    [Chronic IP3-driven ER depletion activates SOCE; imported Ca#super[2+] immediately re-released; SERCA wastes ATP. Orai1 also PIP#sub[2]-dependent — double failure. (a) Elevated STIM1 puncta; (b) reduced TG-releasable ER Ca#super[2+]; (c) elevated SERCA-dependent OCR.],
    [STIM1 puncta immunofluorescence; thapsigargin protocol; Seahorse OCR fractionation.],
    [Ch.14h @spec:soce-futile-cycling],

    [Dual-Route Mitochondrial Calcium Overload: NCX Reversal + IP3R/VDAC/MCU],
    [[S]],
    [[0.30]],
    [NCX-reversal (plasma-membrane Ca#super[2+] import) and IP3R/VDAC/MCU (ER → mitochondria via MAM) both operate during PEM, causing additive mitochondrial Ca#super[2+] overload disproportionate to ischemia alone.],
    [Rhod-2 AM baseline mitochondrial Ca#super[2+]; 2-APB in ME/CFS vs controls; GRP75/VDAC1/IP3R3 co-localization.],
    [Ch.14h @spec:ip3r-vdac-mcu-overload],

    [Myo-Inositol + Lithium Co-Therapy: Decoupled Benefit/Harm Arms],
    [[S]],
    [[0.30]],
    [Myo-inositol restores PIP#sub[2] (reversing Li#super[+] IMPase arm) while IP3-driven autophagy persists. LC3-II/I preserved with Li#super[+] + inositol; PIP#sub[2] restored.],
    [Li#super[+] ± myo-inositol in ME/CFS PBMCs: LC3-II/I (autophagy), membrane PIP#sub[2] (IF), TRPM3 Ca#super[2+] flux.],
    [Ch.16 @spec:inositol-lithium-cotherapy],

    [Fluvoxamine + Low-Dose Lithium: Complementary IP3R Axis Modulation],
    [[S]],
    [[0.25]],
    [Li#super[+] dampens bulk IP3R ER Ca#super[2+] release; fluvoxamine/S1R preserves IP3R3/MAM transfer for mitochondria. Combined: reduced pathological Ca#super[2+] with preserved mitochondrial Ca#super[2+] supply.],
    [iPSC neurons + muscarinic agonist: cytosolic Ca#super[2+] (Fura-2) + mitochondrial Ca#super[2+] (Rhod-2). Li#super[+] alone reduces both; Li#super[+] + fluvoxamine reduces cytosolic, preserves mitochondrial.],
    [Ch.18 @spec:fluvoxamine-lithium-ip3r],
  ),
  caption: [Li#super[+]/IMPase/IP3/PIP#sub[2] axis integration (2026-04-17): 6 new entries. Extends @hyp:ch14h-pip2-convergence and @spec:low-dose-lithium. Motivated by @saha2023impa1 @schlecker2006ncs1 @harwood2005inositol @belmaker1998inositol @sade2016ip3.],
  kind: table,
) <tab:registry-lithium-ip3-pip2-2026-04-17>
] // end landscape page

=== Entries Added 2026-04-19: TRP Pentamerization and Vascular TRPV1

Motivated by: LinkedIn comment on v7 calcium post (Lansky 2023/2025 TRPV3 pentamer; Cavanaugh 2011/Phan 2020/2022 arteriolar TRPV1); 8 papers integrated.

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (2.5fr, 0.4fr, 0.5fr, 3fr, 3fr, 1.5fr),
    align: (left, center, center, left, left, left),
    table.header([*Title*], [*Type*], [*Cert.*], [*Core Claim*], [*Test (Method)*], [*Location*]),

    [TRP Pentamer Formation as Gain-of-Function Escalation in ME/CFS],
    [[S]],
    [[0.20]],
    [Sustained TRP agonist exposure drives tetramer→pentamer transition (5.3× wider pore); if occurring in ME/CFS, produces uncontrolled ionic leak via hyper-conductive pore. Feedforward: each inflammatory episode increases pentamer fraction.],
    [Single-molecule imaging or native gel of TRP channels in ME/CFS patient cells: pentamer:tetramer ratio vs controls. Tetrameric stabilizers should reduce Ca#super[2+] flux.],
    [Ch.14h @spec:trp-pentamer-escalation],

    [Arteriolar TRPV1 as PEM Vasoconstriction Mechanism],
    [[H]],
    [[0.40]],
    [TRPV1 in skeletal muscle arteriolar smooth muscle activated by exercise-generated LPA → sustained non-desensitizing vasoconstriction → impaired perfusion during and after exertion. Explains prolonged PEM duration (12–72h) via LPA kinetics.],
    [TRPV1 antagonist (AMG 517) + NIRS during exercise in ME/CFS: attenuated perfusion drop = positive. Plasma LPA post-exercise should be elevated vs controls and correlate with PEM severity.],
    [Ch.14h @hyp:arteriolar-trpv1-pem],

    [PIP#sub[2] Depletion Lowers Pentamerization Threshold],
    [[S]],
    [[0.15]],
    [PIP#sub[2] stabilizes TRP tetrameric closed state; depletion (via GPCR autoantibody-driven PLC) lowers barrier to pentamer transition. ME/CFS channels constitutively closer to pentamerization threshold.],
    [In vitro: PIP#sub[2] depletion + HS-AFM should increase TRPV3 pentamer frequency. ME/CFS cells + exogenous diC8-PIP#sub[2] should show reduced pentamer fraction.],
    [Ch.14h @spec:pip2-pentamer-susceptibility],

    [Two-Compartment PEM: NCX Reversal + Arteriolar TRPV1],
    [[S]],
    [[0.35]],
    [NCX reversal (cellular Ca#super[2+]) and arteriolar TRPV1 (vascular tone) couple through ischemia: vasoconstriction prevents ATP recovery needed to reverse NCX. Three temporal phases (0–2h, 2–24h, 24–72h).],
    [Combined NCX modulator + TRPV1 antagonist should reduce PEM duration more than either alone. Sequential NIRS + #super[23]Na-MRI at 24h post-exercise.],
    [Ch.14h @spec:two-compartment-pem],

    [LPA--Microclot--TRPV1 Triangle],
    [[S]],
    [[0.30]],
    [Three-way positive feedback: microclots → ischemia → LPA → TRPV1 vasoconstriction → altered flow → more microclots. Connects ch10 coagulation to ch14h channelopathy via LPA.],
    [Post-exercise simultaneous LPA + D-dimer + NIRS. Anticoagulation should attenuate LPA elevation.],
    [Ch.14h @spec:lpa-microclot-trpv1-triangle],

    [Mast Cell--TRPV1 Dual Amplification Loop],
    [[S]],
    [[0.25]],
    [Mast cell degranulation → PGE#sub[2] → TRPV1 sensitization → vasoconstriction → ischemia → mast cell activation. Self-sustaining local circuit.],
    [Ketotifen should reduce exercise-induced vasoconstriction (NIRS). Ketotifen + ambroxol synergistic for PEM reduction vs either alone.],
    [Ch.14h @spec:mast-cell-trpv1-loop],

    [Tissue-Specific TRP Response Map],
    [[S]],
    [[0.35]],
    [Single TRP channelopathy produces different phenotypes per tissue (TRPV1 vasoconstriction in muscle, TRPM3 relaxation failure in skin, TRPM3 degranulation failure in NK cells). Explains multi-system disease from one mechanism.],
    [Symptom domain should predict tissue-specific TRP dysfunction profile. Vascular-dominant patients: greater arteriolar TRPV1; immune-dominant: greater TRPM3.],
    [Ch.14h @spec:tissue-trp-map],

    [NEO6860 TRPV1 Antagonist for ME/CFS],
    [[S]],
    [[0.30]],
    [Next-gen TRPV1 antagonist blocking inflammatory activation while preserving thermoregulation. Phase II complete for osteoarthritis.],
    [NEO6860 should improve exercise tolerance (NIRS, CPET) and reduce PEM in ME/CFS with confirmed exercise-induced perfusion deficit.],
    [Ch.14h @spec:neo6860-trpv1],

    [Autotaxin Inhibitors to Block LPA-Driven PEM],
    [[S]],
    [[0.25]],
    [Autotaxin converts LPC → LPA; inhibition reduces LPA available to activate arteriolar TRPV1. Ziritaxestat in Phase III for IPF.],
    [Autotaxin inhibitor should reduce post-exercise LPA (LC-MS/MS) and PEM severity. Highest-LPA patients should benefit most.],
    [Ch.14h @spec:autotaxin-inhibitors],

    [Omega-3 as LPA Substrate Competitors],
    [[S]],
    [[0.25]],
    [EPA/DHA compete with AA for PLA2; higher omega-3 membrane incorporation shifts products away from LPA precursors.],
    [High-dose EPA/DHA (3 g/day, 3 mo) should lower post-exercise LPA. Effect correlates with omega-3 index.],
    [Ch.14h @spec:omega3-lpa-competition],

    [Post-Exercise LPA Panel as PEM Subtyping Biomarker],
    [[OQ]],
    [],
    [LC-MS/MS of plasma LPA species at baseline + 4h post-exercise distinguishes vascular-component PEM from metabolic-only PEM. Adds third dimension to Subtype A/B classification.],
    [Elevated LPA + elevated Na = A+LPA+ (metabolic + vascular). Normal LPA + elevated Na = A+LPA− (metabolic only). Stratifies intervention trials.],
    [Ch.14h @oq:lpa-biomarker-panel],
  ),
  caption: [TRP pentamerization and vascular TRPV1 integration (2026-04-19): 11 entries (1 hypothesis, 9 speculations, 1 open question). Extends @spec:ch14h-trp-expanded. Motivated by @Lansky2023trpv3pentamer @Lansky2025trpv3dynamics @Cavanaugh2011trpv1vascular @Phan2020trpv1arterial @Phan2022trpv1myogenic @RiveraMancilla2024trpDermal.],
  kind: table,
) <tab:registry-trp-pentamer-vascular-2026-04-19>
] // end landscape page

=== Entries Added 2026-04-20: Orexin/Hypocretin Suppression in ME/CFS

Motivated by: López-Amador 2025 (integrative review, 27 studies) @LopezAmador2025orexin; Grossberg et al.\ 2011 @Grossberg2011orexinLethargy; Gaykema \& Goehler 2009 @Gaykema2009orexinSickness; Weymann et al.\ 2014 @Weymann2014orexinChemoFatigue; Ito et al.\ 2023 @Ito2023orexinREM; Rauf et al.\ 2025 @Rauf2025narcolepsyOrexin; Ruhrländer et al.\ 2025 @Ruhrländer2025orexinPASC; Heinicke et al.\ 2025 @Heinicke2025orexinCOVID.

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Chronic Orexin Suppression as Central Driver of ME/CFS Fatigue and Sleep-Wake Instability],
    [H], [0.50],
    [Chronic neuroinflammation suppresses lateral hypothalamic orexin neurons via neurotensin interneurons (Grossberg 2011). Partial orexin deficiency (CSF ~250 pg/mL, intermediate between health and narcolepsy) drives fatigue, unrefreshing sleep, autonomic instability, and "tired but wired" paradox. (a) CSF orexin-A $<$200 correlates with worse fatigue and sleep quality. (b) Anti-inflammatory treatment increases CSF orexin-A. (c) OX2R agonist improves fatigue in orexin-low ME/CFS. (d) Orexin-B/A ratio distinguishes subtypes.],
    [CSF orexin-A measurement --- feasible, standard lab. López-Amador 2025 reviews 27 studies showing reduced orexin-A. No ME/CFS OX2R agonist trial. Danavorexton/oveporexton in narcolepsy development. Animal causal proof: 3 independent studies.],
    [Ch.15 @hyp:ch15-orexin-suppression],

    [Orexin-B as ME/CFS Subtyping Biomarker],
    [S], [0.35],
    [Orexin-B variability (unlike consistent orexin-A reduction) may distinguish ME/CFS subtypes with different autonomic profiles and treatment responses. (a) Orexin-B correlates with POTS severity. (b) OX2R agonist preferentially benefits low-orexin-B patients. (c) Orexin-B predicts sleep architecture phenotype.],
    [CSF orexin-B measurement feasible but rarely done in ME/CFS. López-Amador 2025 notes variable responses. No subtyping study using orexin-B. Plasma orexin correlation with CSF uncertain.],
    [Ch.15 @sec:ch15-orexin],

    [ME/CFS as Intermediate Orexin Deficiency on Narcolepsy Spectrum],
    [S], [0.30],
    [ME/CFS occupies CSF orexin-A zone between health ($>$300 pg/mL) and NT1 ($<$110 pg/mL). Functional suppression rather than neuronal destruction; potentially reversible. Post-infectious trigger parallel (H1N1→NT1 vs EBV→ME/CFS). (a) CSF orexin-A in ME/CFS falls 110--250 pg/mL range. (b) Unlike NT1, ME/CFS orexin levels fluctuate with disease activity. (c) Orexin neurons intact on post-mortem (if ever available).],
    [CSF orexin-A measurement with simultaneous immune markers --- not done. Longitudinal orexin tracking during remission/relapse --- technically feasible. Narcolepsy registry comparison for shared HLA alleles.],
    [Ch.15 @sec:ch15-orexin],
  ),
  caption: [Orexin/hypocretin suppression (2026-04-20): one hypothesis and two speculations. Cytokine-driven orexin neuron suppression as central mediator of ME/CFS fatigue, unrefreshing sleep, and autonomic instability. López-Amador 2025 27-study review as primary evidence.],
  kind: table,
) <tab:registry-orexin-2026-04-20>
] // end landscape page

=== Entries Added 2026-04-20: Glymphatic NE-Vasomotion and Neurodegeneration Risk

Motivated by: Hauglund et al.\ 2025 (Cell) @Hauglund2025neVasomotion; Fultz et al.\ 2019 (Science) @Fultz2019csfOscillations; Holth et al.\ 2019 (Science) @Holth2019tauSleep; Ju et al.\ 2017 (Brain) @Ju2017slowWaveAmyloid; Chaganti et al.\ 2025 (BMC Neurology) @Chaganti2025longCovidGlymphatic; Tang et al.\ 2025 (Nat Sci Sleep) @Tang2025covidSleepDTIALPS; Zhu et al.\ 2025 (Mol Psychiatry) @Zhu2025noradrenergicGlymphatic.

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [LC-NE Oscillatory Dysfunction Impairs Glymphatic Clearance in ME/CFS (Triple Hit)],
    [H], [0.40],
    [LC-NE dysfunction (DHPG deficit, Walitt 2024) + alpha-delta SWS intrusion + reduced arterial pulsatility (OI/POTS) converge to impair glymphatic clearance via three independent mechanisms. NE oscillations drive vasomotion (Hauglund 2025); SWS drives neural slow-wave CSF coupling (Fultz 2019); arterial pulsatility drives perivascular convection (Hablitz 2021). (a) ME/CFS shows reduced DTI-ALPS vs controls. (b) DTI-ALPS correlates with brain fog severity and OI severity. (c) LC-NE-sparing sleep aids (trazodone, gabapentin) preserve glymphatic flow better than NE-suppressing agents (zolpidem, quetiapine).],
    [DTI-ALPS imaging feasible (Chaganti 2025 protocol). Brain fog + OI + sleep quality correlation analysis. Head-to-head sleep medication comparison with overnight DTI-ALPS pre/post --- technically challenging but feasible. No ME/CFS glymphatic imaging study exists.],
    [Ch.15 @sec:ch15-ne-vasomotion],

    [Chronic Glymphatic Impairment as Neurodegeneration Risk Factor in ME/CFS],
    [S], [0.25],
    [Years-to-decades of impaired tau/amyloid clearance may elevate Alzheimer's risk. (a) ME/CFS $>$5 yrs shows elevated plasma p-tau181 and/or NfL vs controls. (b) DTI-ALPS correlates with disease duration. (c) SWS-improving interventions reduce CSF tau. (d) Registry-linkage shows elevated age-adjusted dementia incidence in ME/CFS.],
    [Plasma p-tau181/NfL measurement --- feasible, low cost. DTI-ALPS by disease duration --- cross-sectional feasible. Registry linkage (Danish, UK Biobank) --- data exists. No study has tested any of these predictions. Omdal 2026 null NfL in Long COVID (69 wks) tests acute injury, not gradual accumulation.],
    [Ch.15 @spec:ch15-neurodegeneration-risk],

    [Z-Drugs and Alpha-Blockers Paradoxically Impair Glymphatic Function],
    [S], [0.30],
    [Zolpidem suppresses NE oscillations ~50% (Hauglund 2025, mouse). Alpha-1 blockers reduce vasomotion amplitude (Zhu 2025). Orexin antagonists affect LC pathway. These drugs improve subjective sleep but may impair waste clearance. (a) DTI-ALPS is lower in ME/CFS patients on Z-drugs vs LC-sparing alternatives. (b) Switching from zolpidem to trazodone improves brain fog without worsening sleep. (c) NE oscillation amplitude (measurable via pupillometry proxy) is suppressed by Z-drugs in ME/CFS patients.],
    [Retrospective chart review (brain fog by sleep medication class) --- feasible. Crossover switching study --- feasible. Mouse data strong; human clinical magnitude unknown. No ME/CFS-specific data.],
    [Ch.15 @warn:ch15-glymphatic-medications],
  ),
  caption: [Glymphatic NE-vasomotion and neurodegeneration risk (2026-04-20): one hypothesis and two speculations. NE oscillatory vasomotion identified as primary glymphatic pump; ME/CFS LC-NE, SWS, and arterial pulsatility deficits converge on triple-hit clearance failure. Long-term neurodegeneration risk predicted but untested. Drug warning for NE-suppressing sleep medications.],
  kind: table,
) <tab:registry-glymphatic-ne-neurodegeneration>
] // end landscape page

=== Entries Added 2026-04-20: Sleep--Glymphatic--Orexin Creative Synthesis

Motivated by: Creative brainstorm synthesising Hauglund 2025, Fultz 2019, López-Amador 2025, Holth 2019, Ju 2017, and existing document content (ch08 thalamic calcium, ch15 cytokine-to-brain, ch33 bistability model).

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Orexin--Vasomotion--Glymphatic Triad: Unified Sleep Failure Model],
    [S], [0.35],
    [Chronic orexin-A reduction prevents clean LC on--off signal $arrow.r$ LC operates in dysregulated intermediate state $arrow.r$ insufficient wakefulness AND insufficient NE oscillation quality for glymphatic pumping. Selective OX1R (LC-targeting) vs OX2R (histamine) impairment explains "tired but wired." (a) Lower CSF orexin-A $arrow.r$ lower DTI-ALPS. (b) Reduced infraslow pupil oscillation coherence in ME/CFS. (c) Orexin-B/A ratio correlates with "tired but wired" severity.],
    [DTI-ALPS + CSF orexin-A in same cohort --- not done. Pupillometry infraslow analysis --- novel, feasible with consumer eye tracker. OX1R/OX2R differential established neuroscience; ME/CFS application novel.],
    [Ch.15 @spec:ch15-orexin-vasomotion-triad],

    [PGE#sub[2]--EP3 Self-Sustaining CNS Feedback Loop],
    [S], [0.30],
    [PGE#sub[2] $arrow.r$ EP3 on orexin neurons $arrow.r$ reduced orexin $arrow.r$ impaired LC NE oscillation $arrow.r$ reduced glymphatic clearance $arrow.r$ waste accumulation $arrow.r$ microglial activation $arrow.r$ more PGE#sub[2]. Self-sustaining after peripheral immune resolution. (a) CSF PGE#sub[2] inversely correlates with CSF orexin-A. (b) COX-2 inhibitors transiently improve delta power. (c) EP3 antagonists restore orexin activity in animal fatigue model.],
    [CSF PGE#sub[2] + orexin-A co-measurement --- feasible but not done. EP3 antagonists available as research tools (L-798,106, DG-041). Animal model proof-of-concept is the critical next step.],
    [Ch.15 @spec:ch15-pge2-orexin-feedback],

    [Glymphatic Ratchet in Cognitive Post-Exertional Malaise],
    [S], [0.25],
    [Impaired overnight glymphatic clearance $arrow.r$ additive waste accumulation from daily activity $arrow.r$ progressive cognitive deterioration over days $arrow.r$ recovery requires multiple rest days. Explains cognitive PEM independent of muscular PEM. (a) Cognitive PEM correlates with prior-night delta power. (b) Plasma NfL/p-tau shows transient post-cognitive-exertion increase. (c) SWS-improving interventions preferentially improve cognitive vs muscular PEM recovery.],
    [Daily diary + home EEG correlation --- feasible. Post-exertion p-tau measurement --- feasible with Simoa platform. SWS intervention + differential PEM outcome --- requires stratified trial design.],
    [Ch.15 @spec:ch15-glymphatic-pem-ratchet],

    [Thalamocortical--Vasomotion Resonance Failure],
    [S], [0.25],
    [Alpha-delta sleep decouples thalamocortical oscillations from NE infraslow rhythm. Phase-locking between $tilde$0.05 Hz (NE) and 0.5--4 Hz (delta) is required for coordinated glymphatic flow. Alpha intrusion produces incoherent oscillatory pattern worse for clearance than simple low-delta. (a) Phase-amplitude coupling between infraslow and delta reduced in ME/CFS. (b) Alpha-delta sleep shows worse DTI-ALPS than low-delta-without-alpha. (c) Delta-frequency-restoring interventions improve glymphatic metrics.],
    [Phase-coupling analysis of existing ME/CFS PSG datasets --- LOW COST, no new data needed, computational only. DTI-ALPS by EEG phenotype --- feasible as part of imaging study.],
    [Ch.15 @spec:ch15-thalamocortical-resonance],

    [Orexin--Cortisol Phase Separation as Internal Desynchrony],
    [S], [0.20],
    [If PGE#sub[2] suppression of orexin is tonic (constant) rather than phasic, orexin rhythm flattens independently of cortisol rhythm. Result: two master circadian outputs (cortisol, orexin) desynchronise $arrow.r$ internal incoherence distinct from simple delay. Explains "out of phase" feeling with alternating paradoxical alertness and crashes. (a) 24h orexin-A profiling shows reduced amplitude and phase shift vs cortisol. (b) Orexin--cortisol phase separation correlates with symptom variability.],
    [24h serial CSF/saliva orexin profiling --- technically challenging but feasible. Proxy via pupillometry circadian pattern may be possible.],
    [Ch.15 @spec:ch15-orexin-cortisol-desynchrony],

    [Orexin--Autonomic--Vascular Convergence: Dual-Route Glymphatic Impairment],
    [S], [0.25],
    [Orexin neurons project to sympathetic preganglionic neurons. Orexin-A reduction impairs glymphatic clearance via two independent routes: (1) LC NE oscillation quality, (2) peripheral vascular sympathetic regulation of arterial vasomotion. Dual-route convergence. Prediction: ME/CFS patients with OI/POTS show worse DTI-ALPS than ME/CFS patients without OI, independent of sleep quality.],
    [DTI-ALPS stratified by OI status --- feasible as subgroup analysis within DTI-ALPS study. Autonomic testing + overnight PSG + MRI in same cohort.],
    [Ch.15 @spec:ch15-orexin-autonomic-vascular],
  ),
  caption: [Sleep--glymphatic--orexin creative synthesis (2026-04-20): six speculations connecting orexin dysfunction, NE vasomotion, and glymphatic clearance into novel mechanistic loops. Orexin--vasomotion--glymphatic triad, PGE#sub[2]--EP3 feedback loop, cognitive PEM ratchet, thalamocortical--vasomotion resonance failure, dual-route glymphatic impairment, and orexin--cortisol desynchrony are novel constructs.],
  kind: table,
) <tab:registry-sleep-glymphatic-creative>
] // end landscape page

=== Entries Added 2026-04-20: ANS Imbalance and Accelerated Aging Integration

Motivated by: Errico et al.\ 2025 (npj Aging) ANS-aging perspective; supporting literature on cGAS-STING, AMPK, immunosenescence, brainstem glial senescence, and telomere shortening in ME/CFS.

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [ANS Imbalance as Unifying Driver of Accelerated Aging in ME/CFS],
    [H], [0.45],
    [Chronic sympathetic dominance drives mitochondrial damage (ROS $arrow.r$ mtDNA $arrow.r$ cGAS-STING), immune aging ($beta$-AR desensitisation $arrow.r$ NF-$kappa$B), and metabolic decline (PKA $arrow.r$ AMPK suppression), while reduced vagal tone removes anti-inflammatory brake. (a) HRV correlates with biological aging markers (telomere, epigenetic clock, ccf-mtDNA) within ME/CFS, independent of age. (b) taVNS improves both autonomic metrics and inflammaging markers. (c) $beta$-AR desensitisation correlates with NF-$kappa$B activation in PBMCs.],
    [HRV + telomere/methylation clock co-measurement --- feasible in biobanks. taVNS RCT ($n = 40$, sham-controlled) completed data collection 2026 --- results pending. $beta$-AR dose-response assay in PBMCs --- feasible. No published VNS RCT in ME/CFS with results as of 2026-04-20.],
    [Ch.10 @hyp:ans-aging-unifying],

    [mtDNA--cGAS-STING Inflammaging Loop Maintains ME/CFS Chronicity],
    [S], [0.40],
    [Mitochondrial damage releases mtDNA via VDAC oligomerisation $arrow.r$ cGAS-STING $arrow.r$ type I IFN + NF-$kappa$B; loop self-reinforces as inflammation causes more mito damage. (a) Circulating mtDNA correlates with STING phosphorylation/IRF3 in ME/CFS. (b) Improved mito quality control decreases ISG expression. (c) STING inhibitors (H-151) reduce PEM severity in patients with elevated cGAS-STING.],
    [Circulating mtDNA qPCR + STING/IRF3 flow cytometry --- feasible. STING inhibitors in preclinical development only. VDAC inhibitors (VBIT-4) available for in vitro testing.],
    [Ch.7 @spec:mtdna-cgas-sting-loop],

    [Brainstem Glial Senescence as Primary Autonomic Dysfunction Driver],
    [S], [0.30],
    [Senescent brainstem glia (p16#super[INK4a]+) produce SASP cytokines impairing catecholamine signalling in LC/dmVN. Self-reinforcing: sympathetic overdrive $arrow.r$ systemic inflammation $arrow.r$ more glial senescence. (a) PET-TSPO higher in brainstem in ME/CFS with severe autonomic dysfunction. (b) CSF p16 correlates inversely with HRV. (c) Senolytics improve autonomic metrics and CSF catecholamines.],
    [PET-TSPO brainstem ROI analysis --- feasible as re-analysis of existing data. CSF p16 ELISA --- feasible. Senolytic trial (fisetin/dasatinib+quercetin) --- ongoing in aging research; none in ME/CFS.],
    [Ch.8 @spec:brainstem-glial-senescence],

    [Sympathetic PKA as Upstream AMPK Suppressor in ME/CFS Energy Crisis],
    [H], [0.35],
    [Chronic $beta$-adrenergic $arrow.r$ PKA phosphorylates AMPK$alpha$ Ser485/491, blocking LKB1 activation. Double brake: PKA suppresses AMPK + AMPK suppresses autophagy during energy deficit. (a) Sympathetic overdrive correlates with reduced AMPK activity in immune/muscle tissue. (b) $beta$-blockers increase AMPK phosphorylation. (c) Pharmacological AMPK activators plus $beta$-blockers synergise.],
    [AMPK phosphorylation state in PBMCs --- feasible (invasive for muscle biopsy). Brown 2018 showed pharmacological rescue. $beta$-blocker + metformin combination trial --- conceptually feasible. No study has tested autonomic modulation $arrow.r$ AMPK in ME/CFS.],
    [Ch.6 @sec:sns-ampk-suppression],

    [Multi-Modal Biological Aging Assessment as ME/CFS Diagnostic/Stratification Tool],
    [OQ], [---],
    [Do epigenetic clock acceleration, telomere shortening, and immunosenescence markers correlate within ME/CFS patients? If yes: composite biological aging score could stratify patients for senescence-targeted therapies. If no: different aging modalities reflect independent processes requiring different interventions.],
    [Horvath/Hannum clock + telomere qPCR + p16/SASP panel in same cohort ($n > 100$, ICC criteria) --- feasible but expensive. de Vega 2018 methylation data exists but not integrated with telomere/senescence data.],
    [Ch.12 @sec:aging-integration],
  ),
  caption: [ANS-aging integration hypothesis registry entries (2026-04-20): one core hypothesis (ANS $arrow.r$ aging hallmarks), three supporting speculations (cGAS-STING loop, brainstem senescence, PKA $arrow.r$ AMPK), and one open question (multi-modal aging assessment). All motivated by Errico et al.\ 2025 @Errico2025ANSaging and supporting literature.],
  kind: table,
) <tab:registry-ans-aging>
] // end landscape page

=== Entries Added 2026-04-20: ANS-Aging Creative Synthesis (Phase 4)

Motivated by: creative brainstorming from Phase 3 of ANS-aging integration pipeline; cross-domain synthesis of autonomic-aging framework with existing ME/CFS pathophysiology.

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Autoantibody-Aging Amplification Loop],
    [S], [0.40],
    [GPCR autoantibodies ($beta_2$-AR, muscarinic) lock ANS into pro-aging configuration. Anti-$beta_2$-AR mimics sympathetic activation; anti-muscarinic impairs CAP. Autoantibodies $arrow.r$ ANS imbalance $arrow.r$ aging $arrow.r$ immune dysregulation $arrow.r$ more autoantibodies. (a) Autoantibody titres correlate with aging markers after controlling for age/duration. (b) Daratumumab reduces SASP markers and epigenetic clock age. (c) Ab-positive patients show greater aging acceleration than Ab-negative.],
    [Autoantibody titres + aging biomarkers in same cohort --- feasible with existing biobanks. Daratumumab pilot (Fluge 2025) collecting samples. No study has measured both simultaneously.],
    [Ch.10 @spec:autoantibody-aging-loop],

    [Two-Hit Model: Infection Primes, ANS-Aging Sustains],
    [H], [0.45],
    [Hit 1 (infection) causes transient damage; Hit 2 = ANS-aging loop activation when damage exceeds tipping point. Below threshold: recovery; above: self-sustaining. (a) ANS-aging biomarker acceleration detectable within 3 months of onset. (b) Rest intervention during acute infection maintains HRV and reduces ME/CFS incidence. (c) Pre-infection HRV predicts risk.],
    [Prospective cohort from acute infection through 12 months --- feasible in pandemic contexts. Wearable HRV data + biobanking at infection. No study has tracked ANS-aging from infection to ME/CFS.],
    [Ch.10 @hyp:two-hit-ans-aging],

    [Gut-Vagal-Aging Triad: Butyrate Deficiency as Parasympathetic Aging Accelerant],
    [S], [0.40],
    [Butyrate deficiency $arrow.r$ reduced vagal afferent C-fibre input $arrow.r$ CAP failure $arrow.r$ inflammaging. Self-reinforcing: dysbiosis $arrow.r$ butyrate loss $arrow.r$ vagal deafferentation $arrow.r$ sympathetic dominance $arrow.r$ barrier dysfunction $arrow.r$ more dysbiosis. (a) Faecal butyrate inversely correlates with epigenetic clock. (b) Butyrate supplementation improves HF-HRV. (c) Preserved butyrate producers = less telomere shortening.],
    [Faecal SCFA + HRV + methylation clock co-measurement --- feasible. Butyrate supplementation trial --- feasible (sodium butyrate OTC). No simultaneous measurement in ME/CFS.],
    [Ch.11 @spec:gut-vagal-aging-triad],

    [Disease Duration Predicts Treatment Modality: Aging Phase Model],
    [H], [0.40],
    [Early ($<$3 yr): immune dysregulation, minimal senescence --- immunomodulation preferred. Mid (3--10 yr): accumulating senescent cells --- senolytic + metabolic support. Late ($>$10 yr): locked epigenetic aging --- multi-target combination. Mixing stages in trials dilutes effects. (a) Rituximab reanalysis by duration shows higher early response. (b) Senescent cell burden increases non-linearly with duration. (c) Duration-stratified trial design shows differential effects.],
    [Rituximab (Fluge 2019) and Ampligen retrospective reanalysis by duration --- feasible. SASP panel + p16 vs disease duration cross-sectional study --- feasible. Duration-stratified adaptive trial needed.],
    [Ch.5 + Ch.25b],

    [PEM-Aging Bridge: Each PEM Episode as a Measurable Aging Pulse],
    [H], [0.50],
    [Exercise triggers ccf-mtDNA release via VDAC $arrow.r$ cGAS-STING $arrow.r$ inflammaging. Each PEM episode = acute pulse of biological aging. Cumulative PEM explains progressive deterioration in Ch.5. (a) Post-CPET ccf-mtDNA spike correlates with subsequent PEM severity. (b) Serial spikes over 6 months predict epigenetic clock acceleration. (c) MitoQ pre-treatment reduces ccf-mtDNA spike.],
    [2-day CPET + serial ccf-mtDNA measurement --- feasible. MitoQ pre-treatment crossover --- feasible. No study has measured ccf-mtDNA kinetics during PEM.],
    [Ch.6 + Ch.25b],

    [Paced Breathing at Resonance Frequency as Anti-Aging Intervention],
    [H], [0.50],
    [Slow breathing ($tilde$6/min) maximises RSA, activates vagal efferents $arrow.r$ $alpha$7-nAChR $arrow.r$ NF-$kappa$B suppression + PGC-1$alpha$ activation. Zero cost; severity-tiered (bedbound patients: 5 min). (a) 8-week daily breathing improves HF-HRV + reduces IL-6/CRP. (b) Effect largest in lowest-baseline-HRV patients. (c) Salivary cortisol reduction confirms HPA deactivation.],
    [HRV biofeedback + inflammatory panel RCT --- feasible. Home-based protocol accessible. RSA training shown effective in POTS (small trials). No ME/CFS-specific trial with inflammatory endpoints.],
    [Ch.17 biofeedback section],

    [HRV as Surrogate Aging Endpoint for Clinical Trials],
    [H], [0.55],
    [If HRV correlates with aging biomarkers, it becomes a cheap, continuous, non-invasive surrogate for anti-aging endpoints. Enables n-of-1 trials, large remote monitoring, real-time dose titration. (a) Wearable RMSSD over 7-day windows correlates with lab SASP markers ($r > 0.40$). (b) HRV change over 12 weeks predicts aging biomarker change. (c) HRV-guided taVNS outperforms fixed-dose.],
    [Wearable HRV + serial blood draws validation study --- feasible. Garmin/Oura data + biobank integration. No ME/CFS validation of HRV as aging surrogate.],
    [Ch.10 + Ch.25b],

    [ME/CFS as Model for Premature Autonomic Aging Across Diseases],
    [OQ], [---],
    [ME/CFS may be the clearest clinical model of premature autonomic aging: sudden onset (natural experiment), measurable ANS dysfunction, multiple aging hallmarks, young population. Do Parkinson's (vagal degeneration), Long COVID, POTS, and fibromyalgia share the same ANS-aging axis? (a) GrimAge acceleration correlates with HRV reduction across all four conditions. (b) VNS improves aging biomarkers across conditions. (c) ANS-aging magnitude ranks: ME/CFS $>$ Long COVID $>$ FM $>$ POTS.],
    [Cross-disease aging biomarker comparison study --- feasible with existing cohorts. Multi-disease VNS trial design. No cross-disease aging comparison exists.],
    [Ch.14d],
  ),
  caption: [ANS-aging creative synthesis registry entries (2026-04-20, Phase 4): eight entries from cross-domain brainstorming. Includes autoantibody-aging amplification, two-hit infection model, gut-vagal triad, aging phase staging, PEM-aging bridge, paced breathing, HRV surrogate endpoint, and cross-disease comparison.],
  kind: table,
) <tab:registry-ans-aging-creative>
] // end landscape page

// =============================================================================
// Immunoadsorption Trial Landscape Open Questions (added 2026-04-20)
// =============================================================================

#page(flipped: true)[
#figure(
  table(
    columns: (2.2in, 0.3in, 0.35in, 3.3in, 2.8in, 0.8in),
    align: (left, center, center, left, left, left),
    table.header(
      [*Title (Label)*], [*Type*], [*Cert.*],
      [*Statement / Rationale*], [*Testing Protocol*], [*Chapter*],
    ),

    [Immunoadsorption Efficacy: Awaiting Sham-Controlled Confirmation],
    [OQ], [---],
    [Two sham-controlled RCTs of immunoadsorption in ME/CFS have completed enrolment—IA-PACS-CFS (n=66, Charité @Pressler2024IAPACSCFSprotocol) and EXTINCT (n=63, Hannover @EXTINCTtrial2023)—but results are unpublished as of April 2026. All prior positive results (70% response rate @Stein2024immunoadsorption @Scheibenbogen2018immunoadsorption) are from open-label studies at a single centre. Does immunoadsorption for ME/CFS exceed sham?],
    [Await publication of IA-PACS-CFS and EXTINCT RCT results. If both positive: strong confirmation. If discordant: analyse differences in patient selection, IA protocol, and endpoints. If both negative: reassess autoantibody hypothesis and consider non-autoantibody mechanisms of IA benefit.],
    [Ch.14b @sec:gpcr-autoantibodies],

    [Autoantibody Removal Without Clinical Improvement: Anft Discordance],
    [OQ], [---],
    [Anft et al.\ 2025 @Anft2025immunoadsorption (independent centre, n=12) showed successful autoantibody elimination and cytokine reduction but *no significant ME/CFS symptom improvement* with rebound within one month. Three competing explanations: (a) insufficient power (n=12); (b) autoantibody removal is necessary but not sufficient—downstream damage persists; (c) autoantibodies are not the primary pathogenic driver, and open-label Charité results reflect non-specific effects. Which is correct?],
    [IMPACT trial (NCT07529197 @IMPACTtrial2026) will measure memory B-cell dynamics and may explain rebound. Comparison of Charité vs Anft protocols (duration, depth of IgG depletion) needed. If sham-controlled RCTs positive but Anft negative: likely power issue. If sham RCTs also negative: autoantibody hypothesis substantially weakened.],
    [Ch.14b @sec:gpcr-autoantibodies],

    [Memory B-Cell Repopulation as Relapse Mechanism After Immunoadsorption],
    [H], [0.45],
    [If autoantibody relapse after IA is driven by memory B-cell repopulation and re-differentiation into autoantibody-secreting plasma cells, then IA alone is a temporary measure. Combining IA with anti-CD20 (rituximab—memory B-cells) or anti-CD38 (daratumumab—plasma cells) should produce more durable responses than IA alone. The Tölle 2020 retreatment data (4/5 responded to repeat IA @Tolle2020immunoadsorption) supports that relapse is the rule, not the exception.],
    [IMPACT trial (NCT07529197 @IMPACTtrial2026) measures memory B-cell dynamics pre/post IA. Prediction: patients with faster memory B-cell reconstitution relapse sooner. If confirmed: sequential IA + daratumumab trial warranted.],
    [Ch.14b @hyp:plasma-cell-sanctuary],

    [Bystander Clearance: IA Works by Removing Non-Autoantibody IgG],
    [Spec], [0.40],
    [IA is non-selective—it removes all IgG. The therapeutic effect may come from removing pro-inflammatory IgG glycoforms (agalactosylated IgG), immune complexes, anti-neuronal antibodies not on GPCR panels, or soluble spike protein—not GPCR autoantibodies specifically. Explains Germain 2025 null, BC007 failure, and Anft discordance simultaneously.],
    [IA responders will have more agalactosylated IgG pre-treatment than non-responders. Selective lectin affinity column removal of agalactosylated IgG reproduces IA's clinical effect. Never tested in ME/CFS (2026).],
    [Ch.14b @spec:bystander-clearance],

    [Threshold Duration: Anft Rebound Too Fast for Downstream Recovery],
    [H], [0.50],
    [Anft 2025 autoantibody rebound within 1 month means downstream pathology (endothelial repair, receptor re-expression, neuroinflammatory resolution, metabolic recovery) was never initiated. Charité patients may have had slower rebound, giving more time for tissue recovery. Tölle 2020 retreatment data (4/5 responded) supports that sustained suppression via repeated IA is key.],
    [In pending RCTs, response will correlate with post-IA autoantibody half-life. Patients with faster rebound will be non-responders. Retreatment protocol with 2+ IA courses will outperform single course.],
    [Ch.14b @hyp:threshold-duration],

    [Immune Reset: IA as Non-Specific Immunomodulation],
    [H], [0.45],
    [Massive IgG depletion (~80%) triggers homeostatic immune recalibration: compensatory B-cell activation, cytokine milieu shift, possible Treg expansion, FcRn upregulation. Explains BC007 failure (specific neutralisation without broader reset) and why both IA and daratumumab show open-label benefit (both cause broad immunomodulation). Discriminating experiment: FcRn inhibitors (efgartigimod) produce similar IgG reduction non-invasively—if they work in ME/CFS, IgG-mediated pathology confirmed but not autoantibody-specific.],
    [Efgartigimod or rozanolixizumab produces similar clinical effects to IA in biomarker-selected ME/CFS. Phase 2 RCT of efgartigimod was negative but unstratified @subsec:efgartigimod. Biomarker-stratified trial needed.],
    [Ch.14b @hyp:immune-reset],

    [IgG Glycoform Profiling as IA Response Predictor],
    [OQ], [---],
    [Do ME/CFS patients have skewed IgG glycoform profiles (lower galactosylation/sialylation)? If so, IA's benefit may come from removing pro-inflammatory IgG glycoforms. Post-IA reconstituted IgG may have temporarily improved glycoform profile if inflammation has resolved—a self-reinforcing benefit cycle.],
    [Cross-sectional: IgG glycoforms in ME/CFS vs controls (n=100 each). Interventional: correlate pre-treatment glycoform profile with IA response in pending RCT datasets. Never tested in ME/CFS (2026).],
    [Ch.25b @oq:igg-glycoform-ia],

    [Post-IA Autoantibody Decay Curve as Diagnostic Stratification],
    [OQ], [---],
    [The rate of autoantibody rebound after IA reveals plasma cell pool size/activity: fast rebound ($lt$2 weeks) = large pool → daratumumab needed; slow rebound ($gt$8 weeks) = small pool → retreatment sufficient; no rebound = non-autoantibody mechanism. The decay curve is itself diagnostic.],
    [Weekly autoantibody measurements for 8 weeks post-IA. IMPACT trial @IMPACTtrial2026 will measure some dynamics via memory B-cell tracking. Never formally proposed as diagnostic tool (2026).],
    [Ch.25b @oq:post-ia-decay-curve],
  ),
  caption: [Immunoadsorption trial landscape registry entries (2026-04-20): two open questions on pending RCT results and Anft discordance, one hypothesis on memory B-cell relapse, three speculations on alternative IA mechanisms (bystander clearance, threshold duration, immune reset), and two research proposals (IgG glycoform profiling, post-IA decay curve).],
  kind: table,
) <tab:registry-ia-trials>
] // end landscape page

=== Entries Added 2026-04-20: Architecture C Reserve Builder Stack

Motivated by: Architecture C metabolic reserve predisposition framework (Ch.14d); BH4 recycling support section (Ch.16); @DelRosso2026ironNeurodevelopmental.

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Reserve Builder Stack Targeting Upstream Bottlenecks],
    [S], [0.30],
    [The combined upstream approach --- iron status, BH4 recycling, antioxidant protection, phosphocreatine buffering, and neurotransmitter cofactors --- produces greater cognitive and energy improvement in neurodivergent ME/CFS patients than standard mitochondrial protocols targeting only ETC throughput. (a) Reserve Builder stack outperforms CoQ10 + NADH + D-ribose on cognitive fatigue measures in neurodivergent ME/CFS. (b) Effect size is larger in patients with baseline ferritin $< 50$ ng/mL or documented ADHD.],
    [Crossover RCT ($n = 40$, neurodivergent ME/CFS): 8 weeks Reserve Builder stack vs 8 weeks standard CoQ10 + NADH + D-ribose. Primary endpoint: cognitive fatigue (CFQ). Individual components have moderate evidence; the combination is untested. Not yet replicated.],
    [Ch.16 @spec:reserve-builder-stack],
  ),
  caption: [Architecture C Reserve Builder Stack (2026-04-20): one speculation on upstream bottleneck targeting in neurodivergent ME/CFS. Complements standard ETC-targeting protocols. Motivated by Architecture C metabolic reserve predisposition framework.],
  kind: table,
) <tab:registry-reserve-builder-stack>
] // end landscape page

=== Entries Added 2026-04-20: Architecture C Brainstorm Development

Motivated by: Architecture C metabolic reserve predisposition framework (Ch.14d) brainstorm expansion; treatment implications (Ch.15, Ch.16, Ch.17, Ch.18, Ch.19, Ch.20).

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (2.2fr, 0.5fr, 0.5fr, 2.5fr, 2fr, 1.3fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,
    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Focal PEM Threshold],
    [S], [0.25],
    [Cognitive exertion alone triggers PEM independently of physical effort; prefrontal metabolic markers predict cognitive PEM threshold.],
    [No formal study; testable with neuroimaging + actigraphy.],
    [Ch.14d @spec:focal-pem-threshold],

    [Pre-Pandemic Biobank Two-Hit Test],
    [P], [---],
    [Compound low-reserve markers predict ME/CFS conversion; neurodivergent Long COVID patients convert at higher rates.],
    [UK Biobank, ALSPAC, RECOVER, DecodeME data exist.],
    [Ch.14d @pred:two-hit-biobank-test],

    [Neurodivergent Mitochondria: Constitutional Lower Capacity],
    [S], [0.20],
    [ND muscle biopsies show lower maximal and spare respiratory capacity; different Complex I/II ratios vs neurotypical controls.],
    [No study comparing isolated mitochondrial function ND vs NT.],
    [Ch.14d @spec:neurodivergent-mito-genetic],

    [Stimulant + Pacing Interaction],
    [P], [---],
    [Strict pacers on stimulants show lower PEM frequency; activity-escalators on stimulants show higher PEM frequency.],
    [No trial stratifying by pacing adherence.],
    [Ch.14d @pred:stimulant-pacing-interaction],

    [Progressive Reserve Erosion with Age],
    [S], [0.20],
    [ADHD adults show faster prefrontal FDG-PET decline; higher mtDNA mutation burden at matched ages vs neurotypical controls.],
    [No longitudinal metabolic imaging in ADHD; mtDNA testable in biobanks.],
    [Ch.14d @spec:progressive-reserve-erosion],

    [ME/CFS as Hysteretic Phase Transition],
    [S], [0.30],
    [System cannot return to healthy attractor by removing trigger alone; treatment requires breaking feed-forward cycle.],
    [Testable with longitudinal metabolic imaging during/after infection.],
    [Ch.14d @spec:mecfs-phase-transition],

    [Sapropterin for ME/CFS],
    [S], [0.30],
    [GCH1-stratified ME/CFS patients show cognitive and orthostatic improvement on BH4 supplementation.],
    [Crossover trial $n = 20$ GCH1-stratified; zero ME/CFS data currently.],
    [Ch.18 @spec:sapropterin-mecfs],

    [Methylphenidate + Pacing Protocol],
    [S], [0.40],
    [Compliant pacers on MPH show lower PEM vs untreated; critical outcome is PEM frequency, not fatigue score.],
    [Crossover trial $n = 30$ ADHD+ME/CFS with pacing diary.],
    [Ch.18 @spec:methylphenidate-pacing-protocol],

    [Higher Ferritin Targets for ND ME/CFS],
    [H], [0.50],
    [Ferritin $> 100$ ng/mL target improves fatigue and cognition in ND ME/CFS with baseline ferritin 30--100 ng/mL.],
    [Pragmatic RCT $n = 60$ ME/CFS+ND; $> 100$ vs $> 30$ ng/mL target.],
    [Ch.18 @hyp:iron-repletion-higher-target],

    [Solriamfetol for ND ME/CFS],
    [S], [0.35],
    [DNRI improves cognitive reserve without amphetamine depletion risk in neurodivergent ME/CFS.],
    [Trial in ADHD+ME/CFS measuring PEM + cognition with pacing diary.],
    [Ch.15 @spec:solriamfetol-neurodivergent-mecfs],

    [Memantine as Demand-Side Reserve Intervention],
    [S], [0.20],
    [Low-dose memantine reduces baseline neural metabolic cost via NMDA antagonism, preserving reserve.],
    [Case reports exist; no controlled ME/CFS data.],
    [Ch.18 @spec:memantine-demand-reduction],

    [OTC BH4 Recycling Support],
    [S], [0.25],
    [Folinic acid + vitamin C + iron improves neopterin:biopterin ratio in ME/CFS patients.],
    [Pre/post biomarker study; all components OTC and available.],
    [Ch.16 @spec:otc-bh4-recycling],

    [Reserve Builder Stack],
    [S], [0.30],
    [6-component upstream stack outperforms standard CoQ10 + NADH + D-ribose on cognitive fatigue in ND ME/CFS.],
    [Crossover trial $n = 40$ ND ME/CFS vs standard protocol.],
    [Ch.16 @spec:reserve-builder-stack],

    [ADHD Cognitive Pacing Protocol],
    [S], [0.35],
    [Externally-enforced timer-based pacing reduces cognitive PEM frequency in ADHD+ME/CFS.],
    [No evidence; combines ADHD and ME/CFS pacing literature.],
    [Ch.17 @spec:adhd-cognitive-pacing],

    [POTS Management as Cognitive Reserve],
    [S], [0.30],
    [Perfusion optimization reduces cognitive PEM frequency; ASL-MRI as endpoint.],
    [Standard POTS treatment; not tested for cognitive PEM specifically.],
    [Ch.17 @spec:pots-cognitive-reserve],

    [Sleep Optimization as Reserve Recovery],
    [H], [0.45],
    [ND-adapted sleep protocol slows reserve erosion; PBMC spare respiratory capacity improves over 3 months.],
    [Actigraphy + PBMC respirometry over 3 months.],
    [Ch.17 @hyp:sleep-reserve-recovery],

    [Severity-Stratified Reserve Protocol],
    [S], [0.25],
    [Tiered protocol (severe/moderate/mild) reduces PEM across severity levels vs uniform approach.],
    [Pragmatic trial $n = 60$, 3 arms, 6-month follow-up.],
    [Ch.19 @spec:severity-stratified-reserve-protocol],

    [Parkinson's: Terminal Reserve Depletion],
    [S], [0.15],
    [ND individuals show earlier or later PD onset (direction uncertain due to competing mechanisms).],
    [PD registries + neurodevelopmental history cross-reference.],
    [Ch.14d @spec:parkinsons-reserve-depletion],

    [Alzheimer's: Compounded Glymphatic Failure],
    [S], [0.15],
    [ND ME/CFS patients show faster cognitive decline and lower CSF A$beta$42 vs ME/CFS-only controls.],
    [Longitudinal cognitive testing + CSF biomarkers.],
    [Ch.14d @spec:alzheimers-glymphatic-compound],

    [Bipolar: Reserve Threshold Oscillation],
    [S], [0.20],
    [ME/CFS onset clusters after depressive episodes; infection during depressive phase carries higher ME/CFS risk.],
    [Bipolar registries with infection and ME/CFS outcome records.],
    [Ch.14d @spec:bipolar-reserve-oscillation],

    [Fibromyalgia: Self-Amplifying Metabolic Cost],
    [S], [0.35],
    [Central sensitization $arrow.r$ $uparrow$ATP demand $arrow.r$ $downarrow$reserve $arrow.r$ $uparrow$sensitization loop is self-sustaining.],
    [Individual links documented; feed-forward loop as a whole untested.],
    [Ch.14d @spec:fibromyalgia-metabolic-amplification],

    [Depression: BH4 Bidirectional Loop],
    [S], [0.25],
    [BH4 + SSRI $>$ SSRI alone in low-BH4 depressed ME/CFS; BH4 status predicts SSRI response.],
    [Trial combining BH4 supplementation + SSRI in ME/CFS with depression.],
    [Ch.14d @spec:depression-bh4-bidirectional],

    [Composite Metabolic Reserve Score],
    [S], [0.20],
    [MRS predicts ME/CFS risk and guides treatment stratification; simplified version (ferritin + VO2max + ND) is pilotable now.],
    [Simplified version pilotable immediately; full MRS requires prospective cohort.],
    [Ch.20 @spec:metabolic-reserve-score],

    [Neopterin:Biopterin Screening Biomarker],
    [S], [0.40],
    [Elevated ratio across ALL predisposing conditions (ADHD, ASD, hEDS, GCH1), not only post-infection.],
    [$tilde$\$30--50/test at specialty labs; available now.],
    [Ch.20 @spec:neopterin-biopterin-screen],

    [Tiered Pre-Infection Screening],
    [S], [0.30],
    [Tier 1--3 screening identifies highest-risk ND patients pre-infection; Tier 1 implementable today.],
    [Tier 1 implementable today; Tier 2 specialist; Tier 3 research only.],
    [Ch.20 @spec:pre-infection-screening],
  ),
  caption: [Entries added 2026-04-20: Architecture C metabolic reserve brainstorm development.],
  kind: table,
) <tab:hypothesis-registry-2026-04-20-brainstorm>
] // end landscape page

=== Entries Added 2026-04-20: Retrospective Prodromal Signs

Motivated by: Wirth 2026 (N=36,332 ICD pre-diagnostic data), Collin 2018 (ALSPAC prospective sleep data), clinical pattern recognition of subclinical energy deficit in children and adults before ME/CFS diagnosis.

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Retrospective Prodromal Syndrome as Subclinical Metabolic Reserve Depletion],
    [S], [0.40],
    [Clinical vignettes (overtrained-but-unfit, late-game fader, always-tired high performer, unexplained tremor, cold extremities) represent unified subclinical energy deficit preceding ME/CFS by years. Predicts: (a) pre-illness CPET shows reduced VO#sub[2]max relative to training volume, (b) siblings show subclinical exercise intolerance, (c) school absence records elevated 3--5 years before Dx.],
    [Retrospective wearable data analysis; sibling CPET studies; school record linkage. Wirth 2026 ICD data (N=36,332) supports 5-year pre-diagnostic window. Not yet prospectively validated.],
    [Ch.5 @spec:prodromal-syndrome],

    [Prospective Validation of ME/CFS Prodromal Signs],
    [OQ], [---],
    [Can prodromal signs be validated prospectively? What sensitivity/specificity? Can early intervention prevent progression? Are adult and pediatric prodromal patterns identical?],
    [Children-of-ME/CFS-parents cohort with wearables + annual CPET. Birth cohort data mining (ALSPAC, Generation R). Intervention trial in identified prodromal individuals.],
    [Ch.5 @oq:prodromal-validation],

    [Adaptation Debt — Failed Mitochondrial Biogenesis Despite Training],
    [S], [0.40],
    [PGC-1$alpha$ signalling impaired → training stress accumulates without supercompensation. Pre-illness biopsies should show reduced biogenesis response to exercise.],
    [Muscle biopsy + exercise challenge protocol in at-risk athletes. Rutherford 2016 consistent but post-diagnosis.],
    [Ch.5 @spec:adaptation-debt],

    [Cognitive Energy Cliff — Discrete Phase Transition in Brain ATP Allocation],
    [S], [0.35],
    [Brain exhibits abrupt (not linear) cognitive failure when ATP drops below threshold. fNIRS should show step-function prefrontal oxyHb decline.],
    [fNIRS during dual-task paradigm in prodromal vs controls. Threshold detection in time series.],
    [Ch.5 @spec:cognitive-cliff],

    [Holiday Paradox — Sympathetic Withdrawal Unmasking Energy Deficit],
    [H], [0.55],
    [Rest-day crashes reflect catecholamine withdrawal unmasking true baseline. Weekday-to-weekend catecholamine drop should correlate with symptom severity.],
    [Salivary cortisol + urinary catecholamines across weekday-weekend transitions. Wyller 2007 consistent.],
    [Ch.5 @hyp:holiday-paradox],

    [Puberty as Reserve-Depleting Event — Explaining Age 16 Peak],
    [H], [0.45],
    [Pubertal energy demand + reduced ceiling = catastrophic window. Earlier menarche, rapid growth velocity, iron deficiency should predict risk.],
    [Retrospective ALSPAC analysis with pubertal timing variables. Iron status at puberty vs ME/CFS outcome.],
    [Ch.5 @hyp:puberty-reserve-depletion],

    [Overtraining Syndrome as Recoverable ME/CFS],
    [S], [0.50],
    [OTS = same mechanism pre-hysteresis. OTS athletes should have >5$times$ ME/CFS risk over 10 years.],
    [Longitudinal follow-up of documented OTS athletes. Shared biomarker profiles documented.],
    [Ch.5 @spec:overtraining-recoverable-mecfs],

    [RED-S as Gender-Specific Prodrome],
    [S], [0.45],
    [RED-S simultaneously reduces ceiling AND exceeds it. RED-S athletes should have elevated ME/CFS incidence post-infection.],
    [Longitudinal ME/CFS tracking in RED-S populations. Dose-dependent severity correlation.],
    [Ch.5 @spec:reds-prodrome],

    [Burnout-to-ME/CFS Pipeline — Allostatic Overload as Adult Prodrome],
    [S], [0.40],
    [Burnout = adult version of chronic reserve depletion. Post-infection ME/CFS should be >3$times$ rate in burnout cohort.],
    [Prospective burnout cohort (Maslach) with post-infection ME/CFS tracking. PBMC respirometry intermediate.],
    [Ch.5 @spec:burnout-pipeline],

    [Training Ratio Protocol for Prodromal Athletes],
    [S], [0.55],
    [HRV-gated sub-threshold training preserves biogenesis without ceiling breach. Should yield equivalent fitness with zero crashes.],
    [RCT: Training Ratio Protocol vs conventional coaching × 12 months in at-risk athletes.],
    [Ch.5 @spec:training-ratio-protocol],

    [Prodromal Recognition Education Reduces Diagnostic Delay],
    [P], [0.65],
    [Education targeting coaches, school nurses, paediatricians should reduce time-to-referral by >12 months.],
    [School-based intervention study. Current delay 4–8 years; 40% error rate (Geraghty 2019).],
    [Ch.5 @pred:prodromal-education],
  ),
  caption: [Entries added 2026-04-20: Retrospective prodromal signs of ME/CFS.],
  kind: table,
) <tab:hypothesis-registry-2026-04-20-prodromal>
] // end landscape page

=== Entries Added 2026-04-21: H#sub[2]S--Mitochondria Axis

#page(flipped: true)[
#figure(
  table(
    columns: (3fr, 0.3fr, 0.4fr, 5fr, 3fr, 1.5fr),
    align: (left, center, center, left, left, left),
    table.header(
      [*Hypothesis / Speculation*], [*Type*], [*Cert.*],
      [*Testable Prediction (condensed)*], [*Available Tests / Status*],
      [*Location*],
    ),

    [Gut-Derived H#sub[2]S as Contributor to ME/CFS Energy Failure],
    [H], [0.40],
    [ME/CFS patients with GI symptoms show elevated breath H#sub[2]S ($gt.eq$3 ppm) and urinary thiosulfate vs GI-negative ME/CFS. Dietary sulfur restriction or bismuth should reduce markers and improve fatigue in this subset.],
    [Trio-Smart breath test + urinary thiosulfate in GI-symptomatic vs GI-asymptomatic ME/CFS. 8-week low-sulfur dietary intervention with fatigue outcomes. No ME/CFS-specific H#sub[2]S data exists.],
    [Ch.11 @sec:h2s-mitochondrial-toxin],

    [SQOR--CoQ10 Vicious Cycle],
    [S], [0.35],
    [CoQ10 deficiency impairs SQOR #sym.arrow reduced H#sub[2]S clearance #sym.arrow Complex IV inhibition #sym.arrow worsened energy failure. CoQ10 repletion should reduce breath H#sub[2]S in deficient patients.],
    [SQOR activity + CoQ10 + breath H#sub[2]S before/after CoQ10 supplementation in CoQ10-deficient ME/CFS subset. Mechanistically established (Landry 2021) but untested in ME/CFS.],
    [Ch.11 @sec:h2s-mitochondrial-toxin],
  ),
  caption: [Entries added 2026-04-21: Gut-derived hydrogen sulfide and mitochondrial energy metabolism.],
  kind: table,
) <tab:hypothesis-registry-2026-04-21-h2s>
] // end landscape page

