#import "../shared/environments.typ": *
#import "../shared/tables.typ": landscape

//
// Hypothesis, Speculation, Prediction, and Open Question Registry
// Generated 2026-03-04 by systematic harvest of all 305 environments.
//
// INSERTION: Add as new section in ch25b or as standalone appendix section.
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

=== Notation

  / *H*: Hypothesis — mechanistically grounded claim with stated certainty.
  / *S*: Speculation — plausible but lower-confidence claim.
  / *P*: Prediction — specific, directional; directly falsifiable.
  / *OQ*: Open Question — framed as unresolved; testability implied.
  / *Obs*: Observation — documented empirical finding; certainty reflects confidence in the measurement, not mechanistic interpretation.

_Dual certainty notation_ (e.g., 0.50/0.35): first value is certainty in the claim itself; second value is certainty that the proposed test design is adequate to falsify it. Used only where test feasibility is itself uncertain.

// Legacy LaTeX block removed 2026-05-03. Migration complete 2026-05-03:
// 21 entries referenced from chapter files migrated to Typst registry tables below.
// 38 unreferenced legacy entries deleted.
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
    [S], [0.40],
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
    [Fibroblast/epithelial cell metabolic profiling. RESETME trial: sustained remission favors immune causality; transient benefit favors canary model.],
    [Ch.13],

    [Genetic Mitophagy Vulnerability: The Accumulation Threshold Model],
    [S], [0.35],
    [DecodeME mitophagy (_FBXL4_) and ER-phagy (_CCPG1_) genes suggest constitutional impairment in organelle quality control. Acute metabolic stress overwhelms reduced clearance capacity; damaged mitochondria accumulate past self-reinforcing threshold. (a) ME/CFS patients show impaired PINK1/Parkin activity. (b) Severity correlates with _FBXL4_/_CCPG1_ genotype dose-dependently. (c) Mitophagy-enhancing compounds (urolithin A, NAD+ precursors) preferentially benefit autophagy risk-variant carriers.],
    [Mitophagy capacity assays in ME/CFS PBMCs — feasible but not yet done. _FBXL4_ genotype stratification in existing biobanks. Urolithin A trial with pharmacogenomic stratification. No study has directly measured mitophagy in ME/CFS.],
    [Ch.12 @hyp:mitophagy-vulnerability],

    [Glutamatergic--Autonomic Bridge: DecodeME Genes as Synaptic Vulnerability Factors],
    [S], [0.30],
    [DecodeME glutamatergic synapse genes (_SHISA6_, _UNC13C_) + neuronal development genes (_CA10_, _SOX6_, _LRRC7_, _DCC_) create constitutional vulnerability in brainstem/hypothalamic autonomic circuits. Infection tips vulnerable circuits past threshold. (a) Neuronal PRS correlates with autonomic dysfunction severity. (b) Brainstem glutamate/glutamine ratios (MRS) correlate with autonomic symptoms. (c) IBS $r_g$ mediated by autonomic genes (Mendelian randomisation). (d) Memantine/riluzole improve autonomic symptoms in high-PRS patients.],
    [PRS construction from DecodeME — feasible once full data available. MR spectroscopy of brainstem glutamate — technically challenging but feasible. Mendelian randomisation for IBS correlation — feasible with existing GWAS data. Memantine trial with genotype stratification — feasible.],
    [Ch.13 @spec:glutamatergic-autonomic-bridge],

    [The Diagnostic Mirage: hEDS/POTS/MCAS as Single Autonomic Syndrome],
    [S], [0.25],
    [The ME/CFS--POTS--hEDS--MCAS cluster = single autonomic vulnerability syndrome that fragments into diagnoses by clinical threshold. DecodeME neuronal genes are substrate; POTS/hEDS/MCAS labels capture different phenotypic presentations. (a) Treating autonomic dysfunction improves all four "conditions." (b) Comorbidity rate correlates with number of thresholds tested, not severity. (c) DecodeME PRS predicts cluster better than individual diagnoses. (d) Each diagnosis sub-threshold for others at rates above chance.],
    [Unified autonomic treatment trials (tVNS, pyridostigmine, LDN+pyridostigmine LIFT trial) with multi-diagnosis outcome measurement. PRS analysis once DecodeME data available. Retrospective chart review of comorbidity rates vs diagnostic workup thoroughness.],
    [Ch.13 @spec:diagnostic-mirage],

    [The Amitriptyline Signal: Genetic Evidence for Tricyclic Mechanism],
    [S], [0.40],
    [DecodeME $r_g = 0.61$ with amitriptyline use may reflect shared neural circuits, not just confounding. Low-dose amitriptyline's NMDA antagonism matches glutamatergic synapse genes. (a) ME/CFS benefit exceeds sleep/pain effects alone. (b) Greater benefit with higher neuronal-gene PRS. (c) Genetic correlation survives conditioning on depression and pain. (d) Mendelian randomisation supports causal efficacy.],
    [Mendelian randomisation with DecodeME data — feasible. Pharmacogenomics trial: amitriptyline stratified by DecodeME PRS — feasible but requires DecodeME data access. Retrospective analysis of amitriptyline responders vs non-responders by genotype.],
    [Ch.13 @spec:amitriptyline-signal],

    [Peptic Ulcer Parallel: What Would an _H. pylori_ Moment Look Like?],
    [S], [0.20],
    [ME/CFS follows the same trajectory as peptic ulcer disease (psychosomatic $arrow.r$ biological discovery $arrow.r$ resistance $arrow.r$ acceptance). The "discovery" will be a downstream molecular switch (TRPM3 dysfunction, epigenetic methylation lock, or autophagy gene bottleneck) rather than a single pathogen. (a) Specific switch candidates have their own predictions in respective chapters.],
    [Historical analogy — not directly testable. Specific candidates (TRPM3, epigenetic lock, autophagy genes) are testable per their own hypothesis environments.],
    [Ch.13 @spec:peptic-ulcer-parallel],
  ),
  kind: table, supplement: [Table], caption: [Hypothesis registry entries from mecfsscience.org integration and creative brainstorming (2026-03-21/22). Includes immune null findings, DecodeME genetics, exercise physiology, and cross-system synthesis.],
) <tab:hypothesis-registry-2026-03-21>
] // end landscape page

=== Entries Added 2026-04-23: FUNCAP and Functional Capacity Assessment

Motivated by: funcap.no website; Sommerfelt2024FUNCAP and related literature; systematic creative brainstorming (30 ideas generated).

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [The Consequence Gap as PEM Biomarker],
    [S], [0.40],
    [SF-36 minus FUNCAP discrepancy measures PEM-specific functional limitation. (a) Gap correlates with 2-day CPET VO#sub[2]max decline (r > 0.4). (b) Gap correlates with post-exercise IL-6/TNF-alpha elevation at 24h. (c) Gap correlates with DSQ-PEM severity.],
    [Cohort study (n >= 100) with SF-36 + FUNCAP + 2-day CPET + cytokines. Novel derived metric—no existing data.],
    [Ch.23],

    [Domain-Specific Subtyping from FUNCAP Profiles],
    [S], [0.30],
    [FUNCAP 8-domain patterns map onto pathophysiological subtypes (autonomic, immune, metabolic, neurocognitive). (a) Unsupervised clustering produces 3-5 stable clusters. (b) Clusters differ in comorbidity profile (POTS, FM, neurocognitive tests). (c) Clusters show different treatment response patterns.],
    [Cluster analysis of FUNCAP data in n >= 200 patients. Feasible once FUNCAP adoption increases. Novel application—no existing studies.],
    [Ch.5 / Ch.20],

    [Anchor Domain Hypothesis: Differential Sensitivity to Treatment],
    [S], [0.35],
    [Not all FUNCAP domains equally sensitive to treatment effects. "Anchor domains" change earliest and most robustly, predicting treatment mechanism. (a) Pyridostigmine: "being upright" improves first. (b) LDN: "light/sound reactions" improves first. (c) Domain effect sizes differ significantly within treatments.],
    [LIFT trial analysis (n = ?) by domain. Longitudinal FUNCAP data needed. Untested prediction—requires trial with domain-level analysis.],
    [Ch.21],

    [The Severity Floor Effect Paradox],
    [H], [0.55],
    [FUNCAP detects sub-Karnofsky-10 deterioration that SF-36 misses, creating classification disagreement in critical range. (a) FUNCAP shows significant variance (SD/mean > 0.15) in severe patients where SF-36 at floor. (b) FUNCAP sub-levels predict care requirements independent of Karnofsky.],
    [Cohort of severe patients (Bell < 10) with both instruments. Feasible—severe patients exist. Novel comparison—not yet done.],
    [Ch.5],

    [The Consequence Economy: Inter-Domain Substitution],
    [S], [0.30],
    [Patients trade functional capacity across FUNCAP domains to stay within energy envelope. (a) High negative correlation between domain pairs across time indicates substitution. (b) Patients with high substitution show more stable total FUNCAP scores. (c) Low substitution correlates with volatile courses and frequent PEM crashes.],
    [Time-use diary study + weekly FUNCAP-27 for 12 weeks. Feasible but resource-intensive. Novel framework—not tested.],
    [Ch.17 / Ch.32],

    [Definitive FUNCAP Validation Study],
    [OQ], [---],
    [Multi-center, multi-country study (n >= 500 ME/CFS, 200 HC, 100 Long COVID). Test convergent validity, known-groups validity, floor/ceiling effects, cross-cultural DIF, cross-disease validity. Primary: Does FUNCAP-55 discriminate severity better than SF-36? (ROC AUC comparison).],
    [Feasible (CC BY license, 8 languages). Estimated cost: \$300--500K. Highest priority study in field---not yet done.],
    [Ch.25b],

    [FUNCAP Longitudinal Sensitivity-to-Change],
    [OQ], [---],
    [Prospective cohort (n >= 300, severity-stratified). FUNCAP-27 monthly for 12 months + PEM event log. Determine MCID, responsiveness to deterioration/improvement, test-retest reliability. Key innovation: test whether FUNCAP detects delayed consequences of PEM crashes.],
    [Feasible (remote administration). Estimated cost: \$100--200K. No longitudinal data exist---critical gap before trial endpoint use.],
    [Ch.25b],

    [Head-to-Head: FUNCAP vs. SF-36 vs. WHODAS],
    [OQ], [---],
    [Cross-sectional n >= 400 ME/CFS (severity-stratified). All three instruments + 2-day CPET subset (n >= 80). Compare floor/ceiling effects, correlation with objective measures, patient preference, clinician usability. Direct evidence that FUNCAP outperforms generic tools would drive adoption.],
    [Feasible (requires CPET for objective benchmark). Estimated cost: \$200--400K. No direct comparison exists---advocacy gap.],
    [Ch.25b],

    [FUNCAP Digital Adaptation for Real-Time PEM Monitoring],
    [OQ], [---],
    [Convert FUNCAP-27 to mobile app with daily micro-assessment (3-5 items/day rotating through all 27). Pair with wearable data (HRV, steps, sleep). Test whether daily FUNCAP domain scores predict PEM crashes 24-72h before onset. Consequence items may provide earlier warning than capability items.],
    [App development + validation study. Estimated cost: \$150--250K. Novel application---no existing digital adaptation.],
    [Ch.25b / Ch.33],

    [Cross-Cultural FUNCAP Validation],
    [OQ], [---],
    [Administer FUNCAP-55 in all 8 language versions to ME/CFS patients in 8 countries (n >= 100 per language/country). Test differential item functioning (DIF) to determine whether items behave differently across cultures. Identify items needing cultural adaptation.],
    [Feasible (requires international collaboration). CC BY license facilitates. Estimated cost: \$200--300K. Essential for international trials---not yet done.],
    [Ch.25b],

    [Domain-Guided Pharmacotherapy],
    [S], [0.30],
    [Match drugs to patient's dominant impaired FUNCAP domain. Pyridostigmine for "being upright", LDN for "light/sound reactions", methylphenidate for "concentration", CoQ10+NADH for "walking/movement". (a) Domain-stratified RCT shows greater improvement on matched domain than non-matched treatment.],
    [Domain-stratified RCT design. Feasible but requires large sample. Novel approach—no domain-specific trials exist.],
    [Ch.15],

    [Pyridostigmine Dose Titration by "Being Upright" Domain],
    [S], [0.40],
    [The "being upright" FUNCAP domain serves as patient-reported pharmacodynamic biomarker for pyridostigmine dose optimization. (a) Domain score shows monotonic dose-response (or plateau at effective dose). (b) Other domains show minimal change.],
    [Pyridostigmine dose-escalation study (30mg -> 60mg -> 90mg TID). Feasible within existing trial framework. Untested titration strategy.],
    [Ch.15],

    [LDN Sequential Domain Recovery Trajectory],
    [S], [0.25],
    [If LDN works via microglial modulation/TRPM3 restoration, predicted recovery sequence: light/sound reactions first → concentration → communication/home activities → walking/movement/being upright last. (a) "Light/sound reactions" improves earliest (month 1-2). (b) "Concentration" improves next (month 2-3). (c) Physical domains show smallest/latest change.],
    [Longitudinal LDN trial with monthly FUNCAP-27. Feasible but requires long follow-up. Speculative sequence—LIFT results will test.],
    [Ch.15],

    [Creatine for Cognitive FUNCAP Domains],
    [S], [0.35],
    [Creatine (5g/day) preferentially improves FUNCAP domains requiring rapid neural ATP turnover: concentration and communication. (a) Cognitive domains show significantly greater improvement than physical domains. (b) Effect correlates with working memory tests.],
    [Creatine vs. placebo RCT (n >= 60, 8-week crossover). Feasible. ME/CFS-specific cognitive effects untested. Domain-specific prediction novel.],
    [Ch.16],

    [Magnesium L-Threonate for Sensory Domain],
    [S], [0.25],
    [Magnesium L-threonate (144mg elemental Mg/day) reduces "light/sound reactions" FUNCAP domain via NMDA receptor modulation and enhanced glymphatic clearance. (a) Reduces domain score more than magnesium citrate or placebo. (b) Effect correlates with sensory threshold testing.],
    [8-week RCT. Feasible. Sensory hypersensitivity effects untested in any condition. Speculative mechanism.],
    [Ch.16],

    [CoQ10+NADH Expected Non-Response Pattern],
    [S], [0.35],
    [CoQ10+NADH improves fatigue VAS but NOT FUNCAP domain scores—tests genuine functional benefit vs. perceived energy. (a) Fatigue VAS shows improvement (replicating Castro-Marrero). (b) FUNCAP scores show minimal change. (c) If FUNCAP also improves, contradicts perception-performance gap hypothesis.],
    [CoQ10+NADH RCT with both outcomes. Feasible. Prediction of non-response is valuable falsification test.],
    [Ch.16],

    [FUNCAP-Informed Domain-Targeted Pacing],
    [H], [0.45],
    [Weekly FUNCAP-27 identifies deteriorating domains, enabling domain-targeted pacing adjustments. (a) Domain-targeted pacing shows greater total FUNCAP improvement than generic pacing. (b) Same total activity restriction, different distribution.],
    [12-week pacing intervention RCT. Feasible (free tool). Clinically sensible—sensitivity of weekly assessment unknown.],
    [Ch.17],

    [HRV-Guided Pacing with FUNCAP Outcomes],
    [S], [0.40],
    [Wearable HRV monitoring + FUNCAP-27 monthly outcome tests whether HRV-guided pacing produces functional improvement. (a) Significant FUNCAP improvement at 12 weeks vs. baseline. (b) "Being upright" and "walking/movement" most improved. (c) FUNCAP improvement correlates with HRV improvement metrics.],
    [HRV-guided pacing study with FUNCAP outcomes. Feasible. HRV-guided pacing established (89% adherence at 8 weeks). FUNCAP adds validated outcome.],
    [Ch.17],

    [FUNCAP-Guided Environmental Modification],
    [H], [0.50/0.35],
    ["Light/sound reactions" domain quantifies target for environmental interventions. (a) Top-quartile patients show greater improvement from dark/quiet protocol than bottom-quartile. (b) Domain score tracks intervention effectiveness.],
    [4-week environmental modification RCT stratified by domain score. Feasible. Individual interventions validated—domain tracking novel.],
    [Ch.17],

    [The FUNCAP Disability Package],
    [H], [0.45],
    [Composite package (FUNCAP-55 + 2-day CPET + COMPASS-31 + actigraphy) provides convergent validation harder to dismiss than single instrument. Addresses all limitations of individual tools.],
    [Standardization of composite protocol. Each component validated individually—combination novel. Practical: requires multiple assessments.],
    [Ch.5 / Ch.23],

    [Caregiver-Administered FUNCAP for Severe Patients],
    [S], [0.40],
    [Develop caregiver proxy version for patients who cannot self-report. Consequence-based items amenable to proxy completion. (a) Caregiver scores correlate at r >= 0.70 with patient self-report in moderate ME/CFS. (b) Proxy scores show discriminant validity across severe sub-levels.],
    [Proxy validation study. Feasible (moderate patients provide both reports). Addresses critical gap in severe assessment.],
    [Ch.6 / Ch.25b],

    [FUNCAP-27 as Standardized ePRO for Trials],
    [OQ], [---],
    [Standardize FUNCAP-27 as remote patient-reported outcome for ME/CFS trials, replacing heterogeneous fatigue scales. Brief (27 items), validated, PEM-specific, freely available. Enables cross-trial comparison and meta-analysis.],
    [Adoption initiative (not research question). Barrier is adoption, not validity. Requires consensus among trialists.],
    [Ch.21 / Ch.25b],

    [FUNCAP Score as Observable of Ratchet Model B(t)],
    [S], [0.35/0.20],
    [Map FUNCAP total score onto ratchet model's baseline functional capacity B(t). B(t) ≈ FUNCAP_total(t) / 55 (linear) or IRT-calibrated function. (a) Recovery rate nonlinear across severity levels (piecewise model fits better than linear). (b) Same absolute change represents different biological recovery at different severity.],
    [Longitudinal FUNCAP data + IRT calibration of Sommerfelt2024 data. Feasible but requires reanalysis of raw data. Novel mathematical bridge—untested.],
    [Ch.31],

    [Domain-Specific Differential Equations],
    [S], [0.20],
    [Extend ratchet model from scalar B(t) to vector B_domain(t) with 8 domain-specific damage/repair dynamics. dB_i/dt = r_i(B_i) · [ATP] - Σ_k d_ik · damage_k(t). (a) Domain scores show partially independent trajectories. (b) Physical crashes affect physical domains more than cognitive. (c) Cognitive crashes show reverse pattern.],
    [Longitudinal weekly FUNCAP-27 data. Feasible but extensive. Mathematically straightforward—requires calibration data that doesn't exist.],
    [Ch.31],

    [Consequence-Damage Coupling Model],
    [S], [0.25],
    [Formalize relationship between FUNCAP consequence scores and damage accumulation rate. damage_rate(t) = α · activity(t) · consequence_score(t). Consequence_score may increase as damage accumulates (sensitization), creating feed-forward loop. (a) Higher consequence scores predict faster functional decline. (b) Requires controlling for activity level via actigraphy.],
    [Longitudinal study with FUNCAP + actigraphy. Feasible. Sensitization component speculative—basic coupling consistent with observation.],
    [Ch.31],

    [FUNCAP in Long COVID Trials],
    [S], [0.35],
    [Long COVID trials using FUNCAP as primary outcome should show larger treatment effects than trials using generic measures—not because treatments work better, but because FUNCAP detects improvement generic measures miss. (a) Reanalysis of completed datasets shows larger effect sizes with FUNCAP. (b) Effect concentrated in PEM-related domains.],
    [Retrospective analysis of completed trial datasets. Feasible if symptom data available. Untested prediction—requires trial to adopt FUNCAP prospectively.],
    [Ch.13 / Ch.24],

    [FUNCAP for Functional Neurological Disorder],
    [S], [0.15],
    [Consequence-based design applicable to FND, where activity consequences (symptom exacerbation, functional dissociation) are central. (a) FND patients show elevated scores in symptom-relevant domains with relative sparing of others. (b) FUNCAP discriminates FND subtypes.],
    [FND cohort study. Highly speculative. FND has different pathophysiology (functional vs. organic). Consequence-based questioning may still be useful.],
    [Ch.24],

    [Post-Concussion Syndrome and FUNCAP],
    [S], [0.20],
    [Post-concussion syndrome shares PEM-like exercise intolerance and cognitive fatigue with ME/CFS. (a) ~40% head trauma/concussion history in POTS (Boris2026). (b) FUNCAP captures functional limitations standard assessments miss.],
    [Post-concussion cohort study. Overlap documented---FUNCAP not tested in this population.],
    [Ch.13],

    [FUNCAP as Trans-Diagnostic Tool for Functional Somatic Syndromes],
    [S], [0.20],
    [Consequence gap (FUNCAP minus SF-36) may identify patients across functional somatic syndromes (ME/CFS, FM, IBS, TMJ) who share PEM-like mechanism. (a) Gap highest in ME/CFS, intermediate in FM, lowest in IBS/TMJ. (b) Gradient supports exertion-intolerance spectrum hypothesis.],
    [Mixed cohort study (ME/CFS, FM, IBS, TMJ). Speculative. Requires large multi-condition dataset.],
    [Ch.13 / Ch.14d],

    [FUNCAP + Wearable Composite "Functional Fingerprint"],
    [S], [0.30],
    [Combine FUNCAP domain scores with 14-day wearable data (steps, HRV, sleep efficiency, activity regularity) for multi-dimensional classification. (a) ML classifier discriminates ME/CFS from depression, hypothyroidism, deconditioning with AUC >= 0.85. (b) Composite outperforms individual components.],
    [ML classification study with FUNCAP + wearable data. Feasible. Composite approaches typically outperform single markers. Specific combination novel.],
    [Ch.20 / Ch.33],

    [FUNCAP Domain Trajectory as Treatment Response Predictor],
    [S], [0.30],
    [Pattern of domain score changes over first 4 weeks predicts long-term response. (a) Early improvement in any domain predicts 12-week total score response (PPV >= 0.70). (b) Flat trajectories across all domains at 4 weeks predict non-response. Placebo response diffuse; genuine response domain-specific.],
    [Pooled analysis of ME/CFS treatment trials using FUNCAP-27 monthly. Feasible once trials adopt FUNCAP. Early-responder concept established in psychiatry—novel for ME/CFS.],
    [Ch.21],

    [FUNCAP-Based Severity Stratification for Trial Enrollment],
    [OQ], [---],
    [Use FUNCAP total score ranges to define trial enrollment strata: Mild (40-55), Moderate (25-39), Severe (10-24), Very Severe (0-9). Enables severity-stratified randomization and subgroup analysis calibrated to outcome measure itself.],
    [Calibration required (FUNCAP scores across severity spectrum in single cohort). Concept straightforward—data doesn't exist yet.],
    [Ch.21 / Ch.25b],

    [The "Consequence Threshold" as PEM Diagnostic Criterion],
    [S], [0.25],
    [Specific FUNCAP pattern (high consequence scores, moderate-to-low capability scores) could serve as PEM diagnostic criterion. (a) Identifies PEM-positive patients with sensitivity >= 0.85, specificity >= 0.80 against clinical diagnosis. (b) More specific than current criteria (relying on patient history).],
    [Cohort study with FUNCAP + clinical PEM diagnosis (2-day CPET or expert assessment). Concept appealing—requires empirical calibration. What specific score pattern constitutes positive screen?],
    [Ch.4 / Ch.20],
  ),
  kind: table, supplement: [Table], caption: [Hypothesis registry entries from FUNCAP integration (2026-04-23). 30 ideas generated: 5 hypotheses, 5 research directions, 3 drug ideas, 3 supplement ideas, 3 non-pharmacological, 3 access, 3 model extensions, 4 cross-disease bridges, 4 diagnostic ideas. Top 10 by impact/feasibility: validation study (2.1), longitudinal sensitivity (2.2), head-to-head (2.3), consequence gap (1.1), FUNCAP-informed pacing (5.1), domain-guided pharmacotherapy (3.1), caregiver proxy (6.2), FUNCAP + wearable composite (9.1), digital adaptation (2.4), FUNCAP as B(t) observable (7.1).],
) <tab:hypothesis-registry-2026-04-23>
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
    [S], [0.35],
    [Recovery follows reverse timescale order: Ca#super[2+] $arrow.r$ ATP $arrow.r$ safe mode $arrow.r$ immune $arrow.r$ autoantibodies $arrow.r$ epigenetics. (a) Stalls indicate unaddressed load-bearing lock. (b) Order deviation indicates non-primary treatment target.],
    [Longitudinal multi-biomarker monitoring during treatment --- not yet done with adequate temporal resolution. Daratumumab trial follow-up most promising data source.],
    [Ch.33 @hyp:reverse-cascade],

    [Treatment Order Dependence: Energy Before Epigenetics],
    [S], [0.40],
    [Epigenetic modifiers alone show transient benefit then relapse (re-consolidation). Energy restoration must precede epigenetic intervention. (a) Reverse order fails. (b) Concurrent equivalent to energy-first. (c) Re-consolidation timescale matches $tau_"epi"$.],
    [No ME/CFS epigenetic modifier trials exist. Analogous sequential therapy evidence from oncology (azacitidine). Conceptually testable with combination trial design.],
    [Ch.33 @hyp:lock-sequence],

    [Separatrix Nudging: Sub-Threshold Stacking],
    [S], [0.35],
    [5--6 sub-threshold interventions with positive synergies exceed escape threshold. (a) 6-intervention protocol $>$ any 3-subset. (b) $k$th intervention benefit is non-linear near separatrix. (c) Partial individual responders are best stacking candidates.],
    [Combination supplement pilot data (Castro 2017) suggestive. Factorial trial design prohibitive; adaptive Bayesian design needed. Synergy coefficients unmeasured.],
    [Ch.33 @hyp:separatrix-nudging],

    [CSD Detection in ME/CFS Wearable Data],
    [OQ], [---],
    [Can HRV variance + autocorrelation detect approaching crash/recovery transitions? Direction discrimination via activity/treatment context. $n >= 50$, $>= 12$ months monitoring needed.],
    [CSD validated in depression (Wichers 2016) and ICU (Olde Rikkert 2016). HRV wearable accuracy adequate (Oura, Garmin). No ME/CFS CSD study exists.],
    [Ch.33 @oq:csd-monitoring],

    [Directional Attractor Migration],
    [S], [0.40],
    [Patients migrate between attractor basins over time: immune $arrow.r$ metabolic $arrow.r$ severe. (a) Longitudinal subtyping shows shifts. (b) Migration predominantly unidirectional. (c) Migration predicts lock acquisition. (d) Treatment response depends on current attractor, not original.],
    [Longitudinal multi-omics with $>= 12$-month repeat sampling. Cross-sectional data insufficient. Chu 2019 onset patterns consistent but not longitudinal.],
    [Ch.33 @hyp:attractor-migration],

    [Antiviral Response Depends on Viral Fraction of Threat Signal],
    [S], [0.40],
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
    [S], [0.30],
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
    [S], [0.25],
    [S1R agonism suppresses IRE1$alpha$-mediated UPR, reducing ER stress signal amplitude and downstream WASF3 upregulation. (a) S1R agonist treatment reduces WASF3 expression in ME/CFS PBMCs or muscle. (b) S1R agonism improves mitochondrial supercomplex assembly ex vivo. (c) Highest-WASF3 patients show greatest fatigue benefit from fluvoxamine. (d) S1R agonist + mitochondrial antioxidant (MitoQ) shows synergy.],
    [WASF3 protein quantification in ME/CFS PBMCs vs healthy controls --- feasible. Fluvoxamine + WASF3 co-measurement trial in Long COVID/ME/CFS --- not yet done. Ex vivo S1R agonist + supercomplex assay (Wang 2023 protocol) --- feasible.],
    [Ch.18 @spec:sigma1-wasf3-brake],

    [S1R--MAM Axis as Shared Vulnerability in Post-Infectious ME/CFS],
    [S], [0.20],
    [Multiple post-infectious triggers (EBV, enterovirus, SARS-CoV-2, HHV-6) converge on ER stress; genetically S1R-vulnerable individuals have lower threshold for permanent MAM dysfunction. (a) S1R expression reduced in ME/CFS PBMCs. (b) S1R promoter methylation elevated in ME/CFS. (c) UPR markers (BiP, CHOP, sXBP-1) elevated in ME/CFS blood. (d) S1R genetic variants enriched in ME/CFS GWAS.],
    [S1R expression Western blot / ELISA in ME/CFS PBMCs vs healthy controls --- not done. Bisulfite sequencing of S1R promoter --- feasible. UPR marker ELISA (BiP, CHOP) --- feasible, inexpensive. GWAS enrichment analysis when full DecodeME data available.],
    [Ch.18 @spec:s1r-mam-vulnerability],

    [DHEA--S1R Agonism: Mechanism Behind a Common Empirical Report],
    [S], [0.20],
    [DHEA/DHEA-S have documented S1R agonist activity; reported ME/CFS benefit may reflect S1R pathway rather than androgen receptor signaling. (a) DHEA-S levels inversely correlate with UPR markers in ME/CFS. (b) Ex vivo DHEA reduces ER stress markers in ME/CFS PBMCs at equimolar S1R occupancy vs. fluvoxamine. (c) S1R-selective agonist (pridopidine) produces comparable benefit to high-dose DHEA in crossover pilot.],
    [DHEA-S quantification in ME/CFS biobanks --- feasible and some data exist (often reduced). UPR marker co-measurement --- not done. Pridopidine is in Phase 2/3 for Huntington's disease; off-label ME/CFS pilot feasible.],
    [Ch.18 @spec:dhea-s1r],

    [Fluvoxamine in ME/CFS: Does the Long COVID Signal Translate?],
    [OQ], [---],
    [REVIVE-TOGETHER shows FSS benefit (−0.43, 99% PP) in Long COVID fatigue. PEM, cognitive outcomes, and POTS were not measured. Whether benefit extends to formal ME/CFS patients and affects PEM specifically is the critical unknown.],
    [12-week RDBPC crossover in ICC/CCC-diagnosed ME/CFS measuring FSS, DSQ-PEM, cognitive battery, and WASF3 in PBMCs. CYP1A2/caffeine confound must be prospectively controlled (randomize caffeine abstinence). No such trial registered as of 2026-04.],
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

Motivated by: Nunes et al.\ 2026 endothelial senescence paper; Scheibenbogen-Wirth 2024 vascular-primary temporal model; Guo 2025 microfluidic RBC biomechanics; Flaskamp 2022 endothelial progenitor failure; El-Medany 2024 carotid body sensitization; Edgell 2025 IMT pilot RCT; van Campen 2023 orthostatic hypocapnia quantification.

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

    [RBC Phosphatidylserine Externalization as a Microclot Nucleation Signal],
    [H], [0.30],
    [Annexin-V binding to ME/CFS RBCs elevated vs healthy controls. PS externalization correlates with microclot area in fluorescence microscopy of same patient sample. Anti-PS treatment reduces microclot burden in vitro.],
    [Annexin-V flow cytometry on ME/CFS RBCs — not done; 2-hour assay from standard blood draw. PS + microclot co-measurement — feasible. RBC PS externalization not directly measured in ME/CFS despite ROS and morphology data.],
    [Ch.14k @hyp:rbc-ps-microclot-nucleation],

    [Carotid Body Sensitization as a Reversible Amplifier of Orthostatic Symptoms in ME/CFS],
    [S], [0.25],
    [(a) HVR (hypoxic ventilatory response) to 15% O#sub[2] is elevated in ME/CFS vs healthy controls. (b) Gefapixant (P2X3 antagonist) reduces HVR in ME/CFS within 2 weeks. (c) Reduced HVR correlates with improvement in orthostatic symptom scores and PETCO#sub[2] trajectories during tilt.],
    [HVR measurement with El-Medany carotid body protocol in ME/CFS — not done; 30-min test per patient. Gefapixant has established safety record (chronic cough trials). P2X3 antagonism + tilt PETCO#sub[2] measurement — feasible. Long COVID carotid body data  requires replication in formal ME/CFS.],
    [Ch.18 @spec:carotid-body-mecfs],

    [Inspiratory Muscle Training (IMT) as a PEM-Safe Autonomic Intervention in ME/CFS],
    [OQ], [---],
    [Does 8-week IMT (30 breaths at 75% MIP) improve HRV, peak VO#sub[2], and SF-36 vitality in ME/CFS without triggering PEM at a rate exceeding 15% (vs 31% in exercise groups)? Does IMT-induced HRV improvement predict exercise tolerance gains? What is the minimum effective dose?],
    [Edgell 2025 pilot ($n=16$, unblinded) shows promising signals: +1.4 mL/kg/min VO#sub[2], HRV improvement, SF-36 physical function +5.6. Sham-controlled RCT feasible ($n approx 60$). PEM monitoring by DSQ-2 at 24h and 72h post-session — not done in pilot.],
    [Ch.18 @sec:imt-mecfs],
  ),
  kind: table, supplement: [Table], caption: [Hypothesis registry entries from vascular pathology integration (2026-04-10). Covers endothelial senescence, vascular-primary causal model, failed angiogenic compensation, glycocalyx mechanosensing, orthostatic hypocapnia--microclot loop, SA-EV propagation, RBC phosphatidylserine externalization, carotid body sensitization, and IMT as autonomic intervention.],
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
    [Sodium MRI protocol  as endpoint---feasible but specialist equipment required. PEM diary + DSQ-2 as clinical endpoint. No ME/CFS taurine supplementation RCT exists. Cardiac analog (heart failure, 11 studies) non-significant . ME/CFS metabolomics show disturbed taurine pathway  but not measured depletion.],
    [Ch.16 @spec:taurine-aimm; Ch.6 @sec:calcium-dysregulation],

    [Taurine Status as Determinant of AIMM Severity Heterogeneity],
    [S], [0.30],
    [(a) Intracellular taurine (RBC lysate or muscle biopsy) inversely correlates with post-exercise sodium accumulation on sodium MRI in ME/CFS patients. (b) Taurine supplementation (2 g/day, 8 weeks) reduces intracellular sodium rise in patients with documented sodium overload.],
    [No study has simultaneously measured intracellular taurine and sodium accumulation in ME/CFS. Sodium MRI protocol established . RBC taurine assay feasible with standard amino acid analysis.],
    [Ch.6 @spec:taurine-aimm-heterogeneity; Ch.16 @sec:taurine],

    [Bile Acid Conjugation Competition Diverts Taurine from Cytoprotective Roles],
    [S], [0.20],
    [(a) ME/CFS patients have higher taurine-conjugated to glycine-conjugated bile acid ratio than controls. (b) Glycine co-supplementation raises free plasma taurine more than equivalent taurine supplementation alone.],
    [Germain 2017 found both taurine and bile acid pathways disturbed  ---independent signals or coupled? Direction of bile acid pathway disturbance unspecified. Bile acid profile + free taurine + microbiome assay is feasible and low cost.],
    [Ch.16 @spec:taurine-bile-competition],
  ),
  kind: table, supplement: [Table], caption: [Hypothesis registry entries from taurine integration (2026-04-16). Covers AIMM-cascade support, heterogeneity mechanism, and bile acid competition hypothesis.],
) <tab:hypothesis-registry-2026-04-16-taurine>
] // end landscape page

=== Entries Added 2026-05-07: Vascular Biomarker-Cognition Correlations and Therapeutic Implications

Motivated by: McAlpine et al. 2026 vascular biomarker-cognition study; extension of Long COVID findings to ME/CFS context; Phase 3 brainstorming on vascular mechanisms.

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Endothelial Adhesion Markers as Cognitive Performance Modulators in ME/CFS],
    [H], [0.40],
    [(a) ME/CFS patients show the same inverse correlation between sP-selectin/sICAM-1 levels and cognitive test performance (fluency, memory) as observed in Long COVID. (b) Vascular biomarker levels correlate with functional MRI measures of cerebral blood flow velocity. (c) Anti-adhesion therapy (targeting P-selectin or ICAM-1) improves cognitive processing speed before improving subjective fatigue.],
    [Cross-sectional ME/CFS cohort: endothelial adhesion markers vs comprehensive cognitive battery. fMRI cerebral blood flow measurement. Anti-adhesion therapy pilot trial.],
    [Ch.14 @hyp:endothelial-adhesion-cognition],

    [α1-Acid Glycoprotein as Protective Cognitive Biomarker],
    [S], [0.25],
    [(a) ME/CFS patients show the same inverse AGP-cognition relationship as Long COVID (higher AGP = better cognitive performance). (b) In vitro AGP treatment improves neuronal survival or endothelial permeability. (c) AGP supplementation or upregulation strategies improve cognitive symptoms in ME/CFS.],
    [AGP measurement in ME/CFS cohort + cognitive battery. In vitro AGP neuroprotective mechanism studies. AGP supplementation RCT design.],
    [Ch.14 @spec:agp-cognitive-protection],

    [Temporal Evolution of Vascular Biomarkers Predicts ME/CFS Recovery Trajectory],
    [H], [0.35],
    [(a) Longitudinal ME/CFS cohorts show declining endothelial biomarker levels over time despite persistent symptoms in chronic cases. (b) Early-stage ME/CFS patients (less than 12 months) respond better to anti-endothelial therapies than chronic-stage patients (greater than 3 years). (c) Vascular biomarker levels predict treatment response to senolytics or glycocalyx restoration therapies.],
    [Longitudinal ME/CFS cohort: serial vascular biomarker measurement at 6, 12, 24, 36 months post-onset. Early vs late-stage therapeutic response comparison. Biomarker-stratified clinical trial design.],
    [Ch.14 @hyp:vascular-biomarker-temporal],

    [Biomarker-Guided ME/CFS Subtype Stratification for Targeted Therapy],
    [OQ], [N/A],
    [(a) Multi-biomarker panel identifies distinct ME/CFS vascular subtypes: endothelial adhesion-dominant, angiogenic failure-dominant, glycocalyx damage-dominant, senescence-dominant. (b) Each subtype shows preferential response to targeted therapy (anti-adhesion, pro-angiogenic, glycocalyx restoration, senolytics). (c) Biomarker-guided stratification improves clinical trial efficacy and reduces unstratified patient enrollment.],
    [Multi-biomarker panel validation: endothelial adhesion, angiogenic, glycocalyx, senescence markers in n=200+ ME/CFS cohort. Cluster analysis for subtype identification. Subtype-stratified randomized therapeutic trials.],
    [Ch.14 @oq:biomarker-guided-subtyping],

    [Anti-Adhesion Therapy for Cognitive Symptoms in ME/CFS],
    [OQ], [N/A],
    [(a) Crizanlizumab (anti-P-selectin) improves cognitive performance in ME/CFS patients with elevated endothelial adhesion markers. (b) P-selectin blockade improves cognitive metrics independent of fatigue improvement. (c) Establishes mechanistic link between endothelial adhesion and cognitive dysfunction.],
    [ME/CFS pilot: crizanlizumab 5 mg/kg IV (weeks 0, 2, 4, then monthly 6 months total). Primary: cognitive battery (fluency, memory, processing speed). Secondary: vascular biomarkers, brain fog VAS, fatigue scales. Safety: infusion reactions, thrombocytopenia monitoring.],
    [Ch.14 @oq:anti-adhesion-therapy-cognitive],
  ),
  kind: table, supplement: [Table], caption: [Hypothesis registry entries from vascular biomarker integration (2026-05-07). Covers cognitive correlations, biomarker temporal evolution, therapeutic implications, and precision stratification approaches.],
) <tab:hypothesis-registry-2026-05-07-vascular-biomarkers>
]

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
    [Framing oversimplified (see limitations). Never tested in any condition. Pyridostigmine RCT exists for ME/CFS ; T3 and lithium unvalidated in ME/CFS.],
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
    [Iron repletion (ferritin $> 100$ ng/mL), BH4 cofactor support (folinic acid + vitamin C + iron for recycling; direct BH4 for GCH1 carriers), and cerebral perfusion optimization (POTS management) are clinically actionable today. Does pre-emptive correction in neurodivergent patients reduce ME/CFS incidence after infection or improve outcomes in established ME/CFS?],
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
    [Muscle biopsy from Long COVID patients with low ccf-mtDNA shows increased PINK1/Parkin co-localization (stalled mitophagy); falsified if mitophagy markers normal despite low ccf-mtDNA],
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
    [MCAM + You+ME + UK ME/CFS Biobank + UK Biobank pain data can be harmonized for phenotype clustering; different registries should identify same cluster structure if pain subtypes are real.],
    [Cross-registry analysis with common pain variables. Requires ontology mapping across instruments (BPI, PROMIS, MPQ, custom scales). Feasibility demonstrated in other chronic pain conditions.],
    [Ch.20 @oq:registry-harmonization-pain],
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
    [S], [0.30],
    [Anti-M2R and anti-β2-adrenergic receptor autoantibodies elevated in Bergen cohort ME/CFS patients vs non-ME/CFS exposed; VSP epitope homology to human GPCRs detectable computationally; immunoadsorption produces improvement in post-Giardia ME/CFS.],
    [Bergen cohort accessible for serological study; Scheibenbogen group autoantibody assays already validated for GPCR panels. VSP proteomics feasible. No direct test has been done.],
    [Ch.7 @spec:giardia-molecular-mimicry],

    [Post-Parasitic IDO1 Upregulation → Chronic Kynurenine Shunt → Neuroinflammation],
    [S], [0.35],
    [Kynurenine/tryptophan ratio elevated in Bergen ME/CFS patients vs non-ME/CFS exposed at 5–10 years; H3K4me3 enrichment at IDO1 promoter in intestinal macrophage biopsies; IDO1 inhibitors reduce kyn/trp ratio and cognitive symptoms.],
    [Bergen cohort accessible; serum kyn/trp easily measurable. Intestinal biopsy epigenomics technically feasible. IDO1 inhibitors available (epacadostat). No ME/CFS post-parasitic study done.],
    [Ch.7 @spec:parasite-ido1-kynurenine],

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
    [Recontact study: serum GPCR autoantibodies, duodenal biopsy H3K4me3 ChIP-seq, small-bowel microbiome, serum tryptase, sIgA. Cohort already characterized; recontact logistically feasible at low marginal cost.],
    [Ch.7 @oq:bergen-biobank-recontact],

    [Cryptosporidium Long-Term Cohort: Generalising Beyond Giardia],
    [OQ], [---],
    [ME/CFS conversion rate after Cryptosporidium parvum outbreak measurable via Bergen-style design; immunological profile (NK cells, sCD40L) recapitulates or differs from post-Giardia; findings generalize mechanistic hypotheses across two apicomplexan species.],
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

    [The "Wrong Fibers" Hypothesis: VNS Non-Response in ME/CFS as a Fiber-Selectivity Artifact],
    [Spec], [0.30],
    [C-fiber-confirmed VNS engagement will predict anti-inflammatory response (IL-6, TNF-alpha reduction) while A/B-only engagement predicts autonomic but not inflammatory improvement. Autonomic-dominant ME/CFS patients respond to B-fiber-range tVNS; immune/inflammatory-dominant patients require C-fiber parameters or alpha-7 nAChR agonist co-administration.],
    [tVNS trial with concurrent CNAP monitoring stratified by ME/CFS phenotype (autonomic vs.\ inflammatory dominant). No such trial exists (2026).],
    [Ch.18 @spec:vns-wrong-fibres],

    [Gut Microbiome Restoration as Indirect Vagal C-Fiber Therapy],
    [Spec], [0.40],
    [Successful microbiome restoration (increased fecal butyrate) will increase vagal afferent tone (HRV HF power or vagal evoked potential amplitude) in addition to GI and inflammatory improvements. Patients who restore butyrate but NOT vagal tone will not show systemic anti-inflammatory benefit, implicating the C-fiber afferent pathway as the mediating mechanism.],
    [Microbiome intervention trial with concurrent vagal tone monitoring (HRV) and inflammatory markers. Requires validated fecal butyrate measurement at baseline and follow-up. No ME/CFS study with this combined endpoint design exists (2026).],
    [Ch.18 @spec:gut-vagal-cfibre],
  ),
  kind: table, supplement: [Table], caption: [VNS fiber-selectivity speculations added 2026-04-10, motivated by Bu et al.\ 2026  — first comprehensive anatomical characterization of vagal fiber-class recruitment thresholds and implications for neuromodulation specificity.],
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
    [Sham-controlled trial of suramin or P2X/P2Y antagonist. Relevant: autism suramin pilot ; ME/CFS trial not conducted (2026).],
    [Ch.18 @sec:novel-frameworks],

    [Glymphatic Dysfunction and Neuroinflammatory Persistence],
    [H], [0.20],
    [ME/CFS patients with objectively impaired SWS (#sym.lt 10% TST by PSG) will show higher neuroinflammatory markers and greater cognitive impairment than ME/CFS patients with preserved SWS, independent of total sleep time.],
    [Polysomnography with 7T MRS neuroinflammation markers (glutamate, mI, Cho) and cognitive battery. Cross-sectional study design; correlates testable immediately.],
    [Ch.18 @sec:novel-frameworks],

    [Dual Pathway Requirement for PEM Prevention],
    [S], [0.20],
    [In a factorial trial: ATP/NAD#super[+] support arm alone achieves #sym.lt 30% PEM severity reduction; combined arm achieves #sym.gt 50% reduction, demonstrating necessity of cascade interruption in addition to energy substrate provision.],
    [Factorial RCT: (1) energy arm (D-ribose, NR/NMN, creatine), (2) anti-inflammatory arm (NAC, omega-3, curcumin), (3) combined, (4) placebo. Primary outcome: PEM AUC severity days 1--7. No ME/CFS trial of this design exists (2026).],
    [Ch.18 @spec:pem-dual-pathway],

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
    [Functional cofactor assays (erythrocyte transketolase, EGRAC, plasma lipoic acid) assessed individually per patient in a ME/CFS cohort; open-label supplementation pilot stratified by deficiency type. No formal trial exists (2026) .],
    [Ch.6 @spec:pdc-cofactors],

    [PGC-1α Suppression Blocks Mitochondrial Biogenesis Recovery],
    [H], [0.40],
    [PGC-1α protein and mRNA will be lower in ME/CFS skeletal muscle biopsies than in matched controls, correlating with disease severity and MnSOD level. Sub-exercise-dose PGC-1α agonists will partially restore MnSOD expression and mitochondrial density.],
    [Skeletal muscle biopsy with PGC-1α quantification (IHC or qPCR); correlation with Shankar 2025 MnSOD data . No measurement in ME/CFS tissue exists (2026).],
    [Ch.6 @hyp:pgc1alpha-suppression],

    [NAD#super[+]--Sirtuin--Acetylation Hub: Unified Upstream Regulator of G22, G34, and G39],
    [H], [0.35],
    [NAD#super[+] depletion in energy-intensive tissues (muscle, neurons) simultaneously inactivates SIRT1 and SIRT3, producing PGC-1$alpha$ hyperacetylation (G39), NRF2 functional suppression (G34), Complex I/TCA impairment, and SIRT4-mediated PDC inhibition. The PBMC NAD#super[+] elevation (Heng 2025) represents substrate backup (ETC block), not systemic surplus. Predicts that G22, G34, and G39 are three readouts of a single upstream failure.],
    [Muscle biopsy co-measuring NAD#super[+]/NADH ratio + PGC-1$alpha$ acetylation + NRF2 target gene expression in the same samples. If NAD#super[+] correlates inversely with PGC-1$alpha$ acetylation, the hub is supported. NR/NMN supplementation should simultaneously improve all three readouts. Factorial RCT (NAD#super[+] precursor $times$ AMPK activator) predicts synergistic effects. No such co-measurement exists in ME/CFS (2026).],
    [Ch.6 @hyp:nad-sirtuin-hub],

    [Brain PCr Depletion as Molecular Mechanism for Selective Energy Dysfunction],
    [Spec], [0.30],
    [Brain-specific creatine depletion (Godlewska 2025, 7T MRS ) with normal muscle creatine loading () maps onto the selective energy dysfunction pattern (@hyp:selective-energy). The PCr shuttle is the sole millisecond-timescale ATP delivery system; its depletion in brain but not muscle predicts CNS-dependent demand-responsive failures (cognition, autonomic coordination) alongside preserved autonomous peripheral functions.],
    [Brain-creatine-to-muscle-creatine ratio (brain 1H-MRS + muscle 31P-MRS in the same participants) will be lower in ME/CFS than controls. Patients with the lowest brain/muscle creatine ratio should show the greatest cognitive impairment relative to physical capacity. Never measured within one ME/CFS cohort (2026).],
    [Ch.6 @spec:brain-pcr-selective-energy],

    [The "Invisible Bottleneck": ANT Blockade Explains Normal Respirometry with Abnormal Energy],
    [H], [0.45],
    [If ANT is blocked (autoantibody, nitrosylation, or structural damage), ATP accumulates in the matrix while ETC continues consuming oxygen normally. Patient can have *normal OCR* but *abnormal cytosolic ATP*. Schulze 1999: anti-ANT raised mitochondrial ATP/ADP 4× while cytosolic fell 56% . Several studies show relatively preserved respirometry, yet patients have a functional energy deficit; this resolves that paradox.],
    [Compartment-specific ATP sensors (ATeam or iATPSnFR) in ME/CFS cells: mitochondrial-to-cytosolic ATP ratio >2 SD above controls in ≥20% of cases, even when Seahorse OCR is within normal range. Not yet tested in ME/CFS (2026).],
    [Ch.6 @hyp:invisible-bottleneck],

    [ANT Autoantibody-Mediated ATP Trapping as a Unifying ME/CFS Energy Lesion],
    [Spec], [0.30],
    [≥10% of ME/CFS patients (ICC criteria) will test positive for anti-ANT1 antibodies using human cardiac ANT1-specific ELISA, vs $<$2% of matched controls. Animal-model precedent: anti-ANT antibodies reduce cytosolic ATP/ADP by 56% and elevate mitochondrial ATP/ADP fourfold in Coxsackie B3 myocarditis . Note: anti-ANT is *not* AMA-M4 (which targets sulfite oxidase); requires dedicated ANT1-protein ELISA with C-terminal/M2-M3 loop epitopes . General AMA  and REAP  negative results do not close G28.],
    [Human cardiac ANT1-specific ELISA in ME/CFS cohort (n≥50); antigen must include C-terminal + M2/M3 loop regions. Assay established in DCM context  . Never applied to ME/CFS (2026). If confirmed, immunoadsorption already piloted for GPCR antibodies in ME/CFS .],
    [Ch.6 @spec:ant-autoantibody-atp-trapping],

    [ISCU Dysfunction as Multi-Enzyme Iron-Sulfur Failure],
    [OQ], [---],
    [Is iron-sulfur cluster assembly (ISCU) impaired in ME/CFS, producing simultaneous failure of aconitase, Complex I, Complex II, and ETF-QO --- amplifying any primary ETC dysfunction?],
    [ISCU protein measurement (WB/IHC) in ME/CFS muscle biopsy; ISCU mutation screening; aconitase activity assay. Clinical features of ISCU myopathy (exercise intolerance, lactic acidosis, myoglobinuria) overlap with ME/CFS. ISCU has never been studied in ME/CFS (2026); general mitochondrial dysfunction evidence: .],
    [Ch.6 @sec:step5-krebs],

    [Is Wound Healing Actually Impaired in ME/CFS?],
    [OQ], [---],
    [No study has directly measured wound healing in ME/CFS. Mechanistic evidence from three independent pathways — NK cell dysfunction (cytotoxicity reduced, Hedges' $g = 0.96$ ; NK cells regulate wound healing via IFN-γ/GM-CSF ; TGF-β disrupts NK-MSC temporal cycling ), sympathetic overactivation impairing reepithelialization , and immune exhaustion phenotype  — each based on single studies with substantial caveats, suggests abnormal healing dynamics rather than normal preservation. However, wound healing is not a prominent clinical complaint in ME/CFS. Possible explanations: subclinical impairment masked by low wound burden in sedentary patients; compensatory fibrosis; or genuinely preserved healing through uncharacterized mechanisms.],
    [Three-arm standardized suction blister wound healing assay: ME/CFS patients ($n = 40$) vs sedentary healthy controls ($n = 20$) vs disease controls (FM/MS, $n = 20$), measuring reepithelialization time, histological scar quality, and blister fluid cytokine profiles. Would directly test whether the selective energy dysfunction hypothesis (@hyp:selective-energy) correctly excludes wound healing from spared functions. Never studied (2026).],
    [Ch.6 @oq:wound-healing-mecfs],

    [Systemic Tissue Repair Deficit: NK Cells as Repair Coordinators Beyond Skin],
    [Spec], [0.40],
    [If NK cells are upstream regulators of wound healing () and ME/CFS NK cytotoxicity is halved (), the repair deficit should extend to all NK-dependent tissue maintenance: mucosal barrier repair (gut permeability), muscle damage repair (PEM duration), and endothelial repair. Unifies multiple separate pathophysiological findings under a single upstream cause.],
    [Gut mucosal repair rate (serial lactulose-mannitol permeability after standardized challenge) should correlate with NK cytokine secretion capacity (stimulated IFN-γ/GM-CSF, $r > 0.4$) — not NK cytotoxicity, which is a related but distinct function. Never tested in ME/CFS (2026).],
    [Ch.6 @spec:systemic-repair-deficit],

    [Autonomic Macrophage Polarisation as Unifying Tissue Repair Mechanism],
    [Spec], [0.45],
    [Sympathetic overactivation favors CD64+CCR2+ pro-inflammatory anti-repair macrophages; parasympathetic activation favors CD64+CCR2- pro-repair macrophages (). ME/CFS autonomic imbalance would bias macrophage polarization toward anti-repair across ALL tissues — brain (M1 microglia), gut, muscle, skin. VNS and beta-blockers may improve tissue repair via this mechanism.],
    [ME/CFS patients with higher sympathetic tone (lower HF-HRV) should show slower wound healing, more neuroinflammation (PET), and worse gut permeability, all correlating with the same ANS measure. Not yet tested (2026).],
    [Ch.6 @spec:autonomic-macrophage-repair],

    [PDK Upregulation as Protective Response to ROS],
    [Spec], [0.45],
    [In a stratified DCA trial: patients with low MnSOD/GPX4 will worsen (higher F2-isoprostanes, worse PEM); patients with normal antioxidant status will improve. DCA + NAC + CoQ10 + riboflavin will outperform DCA monotherapy.],
    [Stratified DCA pilot (n=40), stratified by MnSOD + GPX4 + F2-isoprostanes at baseline. No ME/CFS DCA trial has been stratified by antioxidant status..],
    [Ch.6 @spec:pdk-protective],

    [PEM Timing Reflects ISR/mtUPR Kinetics],
    [Spec], [0.40],
    [Plasma GDF15 and FGF21 peak 24--48 h post-exertion in ME/CFS (correlating with PEM severity), tracking ISR kinetics rather than immediate exercise markers. ATF4-target genes elevated in PBMCs during PEM.],
    [GDF15/FGF21 ELISA time-course at t=0, 6, 12, 24, 48, 72 h post-CPET. Feasible in existing cohorts. ISR/mtUPR axis never studied in ME/CFS (2026).],
    [Ch.6 @spec:pem-isr],

    [Riboflavin FAD as Multi-Step Master Rate-Limiter],
    [Spec], [0.42],
    [EGRAC ≥1.3 in ≥30% ME/CFS vs \<10% controls; elevated C4--C18 acylcarnitines in EGRAC-high patients; riboflavin 400 mg/day normalises EGRAC and reduces lactate/pyruvate in responders.],
    [EGRAC functional assay (cheap, standardized). Riboflavin 400 mg open-label pilot with EGRAC stratification. Never done in ME/CFS. MADD provides disease precedent .],
    [Ch.6 @spec:riboflavin-master],

    [Cardiolipin Peroxidation as ROS Damage Convergence Point],
    [Spec], [0.30],
    [Plasma CLox >2× control in moderate-severe ME/CFS; elamipretide 12-week trial reduces F2-isoprostanes and CLox and improves 6MWT in CLox-high responders.],
    [Plasma oxidized cardiolipin LC-MS (not routine; requires specialist lab). Elamipretide trial feasibility. Motivated by Molnar et al.  and .],
    [Ch.6 @spec:cardiolipin-peroxidation],

    [KGDHC Cofactor Failure Compounds PDC Dysfunction],
    [OQ], [---],
    [Does alpha-ketoglutarate dehydrogenase complex (KGDHC) share the same cofactor deficiency signature as PDC in ME/CFS, producing simultaneous failure at two TCA entry points? Would combined PDC+KGDHC cofactor assessment change treatment response to thiamine/riboflavin supplementation?],
    [Direct KGDHC enzyme activity assay (lymphocytes or muscle biopsy) alongside PDC activity. Cofactor assessment (thiamine, riboflavin, lipoic acid) in the same patients. No ME/CFS study has measured KGDHC activity directly (2026). See @sec:cartography-gaps.],
    [Ch.6 @sec:cartography-gaps],

    [CPT1/Malonyl-CoA Switch Is Dysregulated in ME/CFS],
    [OQ], [---],
    [Is the malonyl-CoA-mediated CPT1 inhibition signal abnormal in ME/CFS, altering the carbohydrate-to-fat fuel switching that normally occurs during exercise recovery? Could abnormal CPT1 gating explain the characteristic post-exertional shift toward incomplete fatty acid oxidation?],
    [Malonyl-CoA measurement in plasma or PBMCs during and after standardized exercise; CPT1 activity assay. Neither measured in ME/CFS (2026). See @sec:cartography-gaps.],
    [Ch.6 @sec:cartography-gaps],

    [NRF2 Pathway Suppression as Unifying Antioxidant Failure],
    [OQ], [---],
    [Is NRF2 — the master antioxidant transcription factor upstream of MnSOD, GPX1, catalase, and thioredoxin — suppressed in ME/CFS, producing a coordinated failure of the entire antioxidant defense system? Would NRF2 activators (sulforaphane, dimethyl fumarate) normalize downstream antioxidant enzyme levels?],
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
  kind: table, supplement: [Table], caption: [Chapter 6 energy-metabolism failure-cartography entries (added 2026-04-11; updated 2026-04-12 with three Phase 3 brainstorm-derived entries): one hypothesis (PGC-1α suppression, H, certainty 0.40); seven speculations (PDC cofactor depletion, PDK upregulation as protective, PEM timing as ISR kinetics, riboflavin FAD master rate-limiter, cardiolipin peroxidation convergence, aconitase--ferroptosis iron bridge, itaconate--NRF2 paradox); eight open questions (ANT autoantibodies, ISCU dysfunction, KGDHC cofactor failure, CPT1/malonyl-CoA regulation, NRF2 pathway suppression, PRDX3/thioredoxin system, UCP2/UCP3 upregulation, riboflavin consumption vs supply) — sixteen entries total..],
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
    [PBMC KGDHC activity assay (NADH production at 340 nm) — standardized protocol available. Muscle biopsy for definitive tissue measurement. Neither measured in ME/CFS (2026).],
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
    [Simultaneous cofactor panel: FAD deficiency (EGRAC ≥ 1.3) should predict highest co-deficiency count. Riboflavin supplementation should partially normalize lipoic acid function and NAD+ status without direct supplementation.],
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
    [Brain 31P-MRS after standardized cognitive task (30-min Stroop): greater PCr depletion + slower recovery in ME/CFS vs controls. Technically feasible at 7T but challenging (low SNR, motion).],
    [Ch.6 Step 8 @spec:cognitive-pem-pcr],

    [The Biogenesis Trap: Metabolic Sisyphus],
    [S], [0.25],
    [PGC-1α drives production of new mitochondria that are immediately dysfunctional (WASF3 disrupts supercomplex assembly). Cell wastes ATP on biogenesis with no functional return. If functional yield is sufficiently low, could be worse than no biogenesis: new dysfunctional organelles amplify ROS. WASF3/ER stress should be addressed before stimulating biogenesis.],
    [ME/CFS muscle: elevated biogenesis markers (import machinery, cardiolipin synthesis) alongside decreased functional respiratory capacity per mitochondrion (CS-normalized Complex IV). WASF3 + PGC-1α acetylation + supercomplex assembly in same biopsies.],
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
    [SFN (reduced IENFD) in ME/CFS damages vagal C-fiber afferents, preventing the brainstem from receiving "periphery is inflamed" signals. The efferent anti-inflammatory reflex is inadequately triggered, and sickness behavior persists. Vicious cycle: inflammation $arrow.r$ C-fiber damage $arrow.r$ reduced afferent signaling $arrow.r$ impaired reflex $arrow.r$ more inflammation.],
    [SFN-positive ME/CFS patients should show lower vagal C-fiber conduction (late VEP components >50~ms), higher inflammatory markers, and poorer VNS response than SFN-negative patients. VNS response in SFN-positive limited to autonomic (B-fiber) endpoints. No SFN-stratified VNS trial exists (2026).],
    [Ch.18 @spec:cfibre-deafferentation],

    [Alpha-7 nAChR Agonists as Pharmacological VNS Bypass],
    [H], [0.45],
    [Selective alpha-7 nAChR agonists (GTS-21, galantamine) directly activate the downstream effector of the cholinergic anti-inflammatory pathway on macrophages, bypassing fiber-selectivity and C-fiber deafferentation problems entirely. Anti-inflammatory effect independent of SFN status.],
    [Alpha-7 agonist (GTS-21 or galantamine) will reduce TNF-$alpha$/IL-6 in ME/CFS patients with elevated baseline inflammation, effect size $gt.eq$ standard tVNS, without hoarseness/bradycardia. Independent of SFN status (unlike VNS). No ME/CFS trial for either agent (2026).],
    [Ch.18 @hyp:alpha7-pharmacological-vns],

    [Coxsackie B3--ANT Molecular Mimicry in Post-Enteroviral ME/CFS],
    [S], [0.30],
    [Coxsackie B3 generates anti-ANT1 autoantibodies via molecular mimicry between viral epitopes and ANT1 C-terminal/M2--M3 loop regions. First specific molecular mimicry target proposed for ME/CFS (filling gap noted in Ch.7). Persists after viral clearance, causing chronic energy deficit.],
    [ME/CFS patients with enteroviral onset (Coxsackie B3 serology) should have higher anti-ANT1 titres than EBV-onset or non-infectious-onset patients. In silico homology analysis of Coxsackie B3 proteome vs ANT1 epitopes (Manchado 2002) can rapidly support/refute mimicry mechanism.],
    [Ch.6 @spec:coxsackie-ant-mimicry],
  ),
  kind: table, supplement: [Table], caption: [VNS fiber-selectivity extensions and ANT molecular mimicry brainstorm integration (2026-04-12). Two VNS-related entries (C-fiber deafferentation, alpha-7 nAChR pharmacological bypass) extend the fiber-selectivity framework; one ANT entry proposes the first specific molecular mimicry target for ME/CFS. Motivated by brainstorm files for VNS fiber selectivity and ANT autoantibodies.],
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
    [In ME/CFS, elevated ROS and prostaglandins sensitize TRPV1 and TRPA1 on sensory neurons and mast cells, creating self-sustaining feed-forward loops (TRPV1→COX2→PGE2→TRPV1  ; TRPA1 cysteine-ROS ). Co-sensitization across multiple TRP channels may explain why ME/CFS symptoms span pain, chemical sensitivity, and temperature dysregulation simultaneously.],
    [Capsaicin-induced flare thresholds in ME/CFS-MCS vs ME/CFS-no-MCS patients; TRPA1 activation threshold (mustard challenge); NK cell TRPV1/TRPA1 gating in ME/CFS (can exploit existing blood draw protocols). No ME/CFS-specific TRP sensitization study published (2026).],
    [Ch.14h @spec:ch14h-trp-expanded],

    [Piezo1 Dysregulation as a Mechanism for RBC Stiffness in ME/CFS],
    [S], [0.35],
    [Chronic oxidative stress and cytokines in ME/CFS may dysregulate Piezo1-KCa3.1 coupling in RBCs, producing dehydrated/stiff cells that impair capillary transit. RBC deformability is documented reduced in ME/CFS ; Piezo1 mechanism proposed by Cahalan2015 for RBC volume homeostasis .],
    [Patch-clamp Piezo1 gating in ME/CFS RBCs vs controls; KCa3.1 (Gardos) activity assay; RBC deformability vs 2-day CPET VO₂max correlation. No ME/CFS Piezo1 study exists (2026).],
    [Ch.14h @spec:ch14h-piezo1-rbc],

    [Piezo2 Gain-of-Function and Mechanical Allodynia in ME/CFS],
    [S], [0.35],
    [Piezo2 mediates light-touch allodynia and proprioceptive encoding . Gain-of-function Piezo2 variants (CRAMPED syndrome: hypermobility, allodynia, scoliosis) overlap with hEDS features overrepresented in ME/CFS. Chronic neuroinflammation may lower Piezo2 activation thresholds, contributing to mechanical allodynia.],
    [Piezo2-dependent sensory modality thresholds (von Frey filaments, vibration) vs pain thresholds in ME/CFS; joint position sense testing in ME/CFS-hEDS vs ME/CFS-no-hEDS; skin biopsy DRG culture for Piezo2 electrophysiology. Not yet studied (2026).],
    [Ch.14h @spec:ch14h-piezo2-allodynia],

    [Ambroxol as Repurposed TRP Channel Modulator in ME/CFS],
    [S], [0.35],
    [Ambroxol (OTC mucolytic) blocks Nav1.8 in nociceptors  and antagonizes human TRPV1 by electrophysiology . If TRPV1 sensitization drives ME/CFS pain and chemical hypersensitivity, ambroxol could reduce sensitization-driven nociceptor activation. Also modulates TRPA1 at higher concentrations.],
    [ME/CFS patients with pain/MCS features should show pain reduction with ambroxol 75--150 mg/day correlating with capsaicin flare-threshold improvement. No ME/CFS trial exists (2026). Note: species-specific Nav1.8 data (rat IC50 18 µM vs human 279 µM) limits translation.],
    [Ch.14h @spec:ch14h-ambroxol-trp],
  ),
  kind: table, supplement: [Table], caption: [TRP/Piezo channel integration (2026-04-13): three open-questions generated from Julius 2021 Nobel context applied to ME/CFS, plus ambroxol speculation from Phase 4. Motivated by , , , , , , , , , ],
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

Motivated by: McGrath et al.\ 2026 (Oxford Open Immunology) ; Bakken et al.\ 2014 (BMC Medicine) ; Jin et al.\ 2019 (Nature Communications) .

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
    [Vitiligo precedent: bimodal onset revealed MHC class II haplotype OR > 8 in early onset . ME/CFS early onset shows stronger familial clustering (OR 1.43) and IM trigger enrichment (OR 2.32). (a) GWAS stratified by onset age shows at least one locus with differential allele frequency. (b) HLA region most likely candidate. (c) Early-onset heritability exceeds late-onset heritability.],
    [DecodeME dataset (n > 17,000 with genetic data) can be stratified by onset age — not yet done. HLA fine-mapping feasible. Twin heritability analysis by onset age requires new cohort.],
    [Ch.5 @oq:bimodal-genetic-architecture; Ch.14d @spec:bimodal-genetic-subtype],

    [Pubertal Immune Remodeling Drives Early-Onset Peak],
    [S], [0.30],
    [Age ~16 coincides with pubertal thymic involution, EBV primary infection timing, and hormonal changes. (a) Early-onset ME/CFS patients have distinct immune profiles vs late onset (T cell subset differences, EBV-specific). (b) Onset-age-specific immune vulnerability window exists around puberty. (c) Sex hormones modulate susceptibility (but McGrath found no gender difference between peaks).],
    [Immune profiling stratified by onset age — not done. EBV-specific T cell assays feasible. Longitudinal adolescent cohort would be ideal but expensive.],
    [Ch.5 @sec:bimodal-onset-age],

    [Early-Onset Severity Reflects Disease Mechanism, Not Duration],
    [S], [0.35],
    [Early-onset cases more severe (OR 2.15) independent of duration . Suggests early-onset ME/CFS involves more aggressive pathophysiology rather than longer disease course. (a) Biomarker severity correlates with onset age after controlling for duration. (b) Early-onset has distinct metabolic or immune signatures predicting severity. (c) Pediatric immune response to triggers is qualitatively different.],
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

Motivated by: Nguyen 2017 ; Cabanas 2019 electrophysiology ; Eaton-Fitch 2021 PIP2 ; Eaton-Fitch 2022 NTX ; du Preez 2023 TRPM7 ; Vijayan 2015 alpha-delta model ; Crunelli 2006 CaV3.1 .

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left),
    table.header([*Hypothesis / Speculation Title*], [*Type*], [*Cert.*], [*Mechanistic Summary*], [*Key Falsifiable Predictions + Study Feasibility*], [*Location*]),

    [Subtype A vs Subtype B: Two Distinct Calcium Mechanisms in ME/CFS],
    [S], [0.35],
    [Calcium dysregulation in ME/CFS falls into two mechanistically distinct subtypes: Subtype A (energy failure → secondary Ca#super[2+] via NCX reversal; downstream, correctable via Na#super[+]/K#super[+]-ATPase restoration) and Subtype B (primary TRPM3 channelopathy → Ca#super[2+] dysfunction → multi-system failure; upstream, requiring TRPM3 restoration). Subtypes may co-exist or interact in a self-amplifying cascade. Framework motivated by , , .],
    [(a) TRPM3 dysfunction should be measurable before PEM-triggering exertion in Subtype B patients but not Subtype A. (b) MDC002 (Na#super[+]/K#super[+]-ATPase restoration) prevents NCX reversal but does not normalize TRPM3 current. (c) Mixed-subtype patients require both MDC002 and TRPM3 restoration for symptom improvement. No subtyping study exists (2026). Cross-sectional TRPM3 assays cannot distinguish subtypes --- prospective longitudinal design required.],
    [Ch.14h @spec:ch14h-calcium-subtypes],

    [Thalamic T-Type Calcium Channel Disruption as Mechanism of Alpha-Delta Sleep in ME/CFS],
    [H], [0.35],
    [CaV3.1 T-type Ca#super[2+] channels in thalamic relay neurons generate delta oscillations; CaV3.1 KO mice show reduced NREM sleep . Vijayan 2015 computational model shows altered I#sub[h]/GABA#sub[B]/K#super[+]-leak balance transforms delta into alpha-delta . Neuroinflammation, oxidative stress, or systemic channelopathy in ME/CFS may disrupt CaV3.1 gating, producing alpha-delta intrusion and non-restorative sleep. No direct ME/CFS study exists; extrapolated from fibromyalgia models.],
    [(a) ME/CFS patients with alpha-delta EEG pattern show more severe non-restorative sleep than those without. (b) T-type Ca#super[2+] channel blockers (ethosuximide, zonisamide) convert alpha-delta to delta sleep and improve PSG delta power. (c) TRPM3 dysfunction severity (NK cell assay) correlates with alpha-delta sleep severity. Feasible: PSG + TRPM3 assay in same cohort; ethosuximide N-of-1 trials with PSG pre/post.],
    [Ch.8 @hyp:thalamic-calcium-sleep],
  ),
  caption: [Calcium channelopathy integration (2026-04-18): Subtype A/B framework formalizing two mechanistically distinct calcium pathways, and thalamic CaV3.1 hypothesis linking sleep calcium channels to alpha-delta sleep in ME/CFS..],
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
  caption: [Calcium brainstorm Phase 4 integration (2026-04-18): 17 new entries from systematic brainstorm of all calcium mechanisms in ME/CFS. Includes hypotheses, speculations, and open questions across channels (TRPM3/7, Piezo, CaV3.1), treatments (LDN+MDC002, thermal, vibration, cromolyn+LDN), diagnostics (panel, subtype protocol, sleep EEG proxy), and cross-disease parallels (HypoPP, Timothy syndrome, Brugada)..],
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
  caption: [Li#super[+]/IMPase/IP3/PIP#sub[2] axis integration (2026-04-17): 6 new entries. Extends @hyp:ch14h-pip2-convergence and @spec:low-dose-lithium..],
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
  caption: [TRP pentamerization and vascular TRPV1 integration (2026-04-19): 11 entries (1 hypothesis, 9 speculations, 1 open question). Extends @spec:ch14h-trp-expanded..],
  kind: table,
) <tab:registry-trp-pentamer-vascular-2026-04-19>
] // end landscape page

=== Entries Added 2026-04-20: Orexin/Hypocretin Suppression in ME/CFS

Motivated by: López-Amador 2025 (integrative review, 27 studies) ; Grossberg et al.\ 2011 ; Gaykema \& Goehler 2009 ; Weymann et al.\ 2014 ; Ito et al.\ 2023 ; Rauf et al.\ 2025 ; Ruhrländer et al.\ 2025 änder2025orexinPASC; Heinicke et al.\ 2025 .

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

Motivated by: Hauglund et al.\ 2025 (Cell) ; Fultz et al.\ 2019 (Science) ; Holth et al.\ 2019 (Science) ; Ju et al.\ 2017 (Brain) ; Chaganti et al.\ 2025 (BMC Neurology) ; Tang et al.\ 2025 (Nat Sci Sleep) ; Zhu et al.\ 2025 (Mol Psychiatry) .

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
    [Chronic sympathetic dominance drives mitochondrial damage (ROS $arrow.r$ mtDNA $arrow.r$ cGAS-STING), immune aging ($beta$-AR desensitization $arrow.r$ NF-$kappa$B), and metabolic decline (PKA $arrow.r$ AMPK suppression), while reduced vagal tone removes anti-inflammatory brake. (a) HRV correlates with biological aging markers (telomere, epigenetic clock, ccf-mtDNA) within ME/CFS, independent of age. (b) taVNS improves both autonomic metrics and inflammaging markers. (c) $beta$-AR desensitization correlates with NF-$kappa$B activation in PBMCs.],
    [HRV + telomere/methylation clock co-measurement --- feasible in biobanks. taVNS RCT ($n = 40$, sham-controlled) completed data collection 2026 --- results pending. $beta$-AR dose-response assay in PBMCs --- feasible. No published VNS RCT in ME/CFS with results as of 2026-04-20.],
    [Ch.10 @hyp:ans-aging-unifying],

    [mtDNA--cGAS-STING Inflammaging Loop Maintains ME/CFS Chronicity],
    [S], [0.40],
    [Mitochondrial damage releases mtDNA via VDAC oligomerisation $arrow.r$ cGAS-STING $arrow.r$ type I IFN + NF-$kappa$B; loop self-reinforces as inflammation causes more mito damage. (a) Circulating mtDNA correlates with STING phosphorylation/IRF3 in ME/CFS. (b) Improved mito quality control decreases ISG expression. (c) STING inhibitors (H-151) reduce PEM severity in patients with elevated cGAS-STING.],
    [Circulating mtDNA qPCR + STING/IRF3 flow cytometry --- feasible. STING inhibitors in preclinical development only. VDAC inhibitors (VBIT-4) available for in vitro testing.],
    [Ch.7 @spec:mtdna-cgas-sting-loop],

    [Brainstem Glial Senescence as Primary Autonomic Dysfunction Driver],
    [S], [0.30],
    [Senescent brainstem glia (p16#super[INK4a]+) produce SASP cytokines impairing catecholamine signaling in LC/dmVN. Self-reinforcing: sympathetic overdrive $arrow.r$ systemic inflammation $arrow.r$ more glial senescence. (a) PET-TSPO higher in brainstem in ME/CFS with severe autonomic dysfunction. (b) CSF p16 correlates inversely with HRV. (c) Senolytics improve autonomic metrics and CSF catecholamines.],
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
  caption: [ANS-aging integration hypothesis registry entries (2026-04-20): one core hypothesis (ANS $arrow.r$ aging hallmarks), three supporting speculations (cGAS-STING loop, brainstem senescence, PKA $arrow.r$ AMPK), and one open question (multi-modal aging assessment). All motivated by Errico et al.\ 2025  and supporting literature.],
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
    [Butyrate deficiency $arrow.r$ reduced vagal afferent C-fiber input $arrow.r$ CAP failure $arrow.r$ inflammaging. Self-reinforcing: dysbiosis $arrow.r$ butyrate loss $arrow.r$ vagal deafferentation $arrow.r$ sympathetic dominance $arrow.r$ barrier dysfunction $arrow.r$ more dysbiosis. (a) Fecal butyrate inversely correlates with epigenetic clock. (b) Butyrate supplementation improves HF-HRV. (c) Preserved butyrate producers = less telomere shortening.],
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
    [Two sham-controlled RCTs of immunoadsorption in ME/CFS have completed enrolment—IA-PACS-CFS (n=66, Charité ) and EXTINCT (n=63, Hannover )—but results are unpublished as of April 2026. All prior positive results (70% response rate  ) are from open-label studies at a single centre. Does immunoadsorption for ME/CFS exceed sham?],
    [Await publication of IA-PACS-CFS and EXTINCT RCT results. If both positive: strong confirmation. If discordant: analyse differences in patient selection, IA protocol, and endpoints. If both negative: reassess autoantibody hypothesis and consider non-autoantibody mechanisms of IA benefit.],
    [Ch.14b @sec:gpcr-autoantibodies],

    [Autoantibody Removal Without Clinical Improvement: Anft Discordance],
    [OQ], [---],
    [Anft et al.\ 2025  (independent centre, n=12) showed successful autoantibody elimination and cytokine reduction but *no significant ME/CFS symptom improvement* with rebound within one month. Three competing explanations: (a) insufficient power (n=12); (b) autoantibody removal is necessary but not sufficient—downstream damage persists; (c) autoantibodies are not the primary pathogenic driver, and open-label Charité results reflect non-specific effects. Which is correct?],
    [IMPACT trial (NCT07529197 ) will measure memory B-cell dynamics and may explain rebound. Comparison of Charité vs Anft protocols (duration, depth of IgG depletion) needed. If sham-controlled RCTs positive but Anft negative: likely power issue. If sham RCTs also negative: autoantibody hypothesis substantially weakened.],
    [Ch.14b @sec:gpcr-autoantibodies],

    [Memory B-Cell Repopulation as Relapse Mechanism After Immunoadsorption],
    [H], [0.45],
    [If autoantibody relapse after IA is driven by memory B-cell repopulation and re-differentiation into autoantibody-secreting plasma cells, then IA alone is a temporary measure. Combining IA with anti-CD20 (rituximab—memory B-cells) or anti-CD38 (daratumumab—plasma cells) should produce more durable responses than IA alone. The Tölle 2020 retreatment data (4/5 responded to repeat IA ) supports that relapse is the rule, not the exception.],
    [IMPACT trial (NCT07529197 ) measures memory B-cell dynamics pre/post IA. Prediction: patients with faster memory B-cell reconstitution relapse sooner. If confirmed: sequential IA + daratumumab trial warranted.],
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
    [Weekly autoantibody measurements for 8 weeks post-IA. IMPACT trial  will measure some dynamics via memory B-cell tracking. Never formally proposed as diagnostic tool (2026).],
    [Ch.25b @oq:post-ia-decay-curve],
  ),
  caption: [Immunoadsorption trial landscape registry entries (2026-04-20): two open questions on pending RCT results and Anft discordance, one hypothesis on memory B-cell relapse, three speculations on alternative IA mechanisms (bystander clearance, threshold duration, immune reset), and two research proposals (IgG glycoform profiling, post-IA decay curve).],
  kind: table,
) <tab:registry-ia-trials>
] // end landscape page

=== Entries Added 2026-04-20: Architecture C Reserve Builder Stack

Motivated by: Architecture C metabolic reserve predisposition framework (Ch.14d); BH4 recycling support section (Ch.16); .

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
    [Central sensitization $arrow.r$ $arrow.t$ATP demand $arrow.r$ $arrow.b$reserve $arrow.r$ $arrow.t$sensitization loop is self-sustaining.],
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
    [PGC-1$alpha$ signaling impaired → training stress accumulates without supercompensation. Pre-illness biopsies should show reduced biogenesis response to exercise.],
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

=== Entries Added 2026-04-21: Exercise Blinding Bias and Cross-Disease Exercise Response

Motivated by: Zhao et al.\ 2026 exercise meta-analysis ; BRANDO collaboration ; Hróbjartsson et al.\ 2014 .

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3fr, 0.3fr, 0.4fr, 5fr, 3fr, 1.5fr),
    align: (left, center, center, left, left, left),
    table.header(
      [*Hypothesis / Speculation*], [*Type*], [*Cert.*],
      [*Testable Prediction (condensed)*], [*Available Tests / Status*],
      [*Location*],
    ),

    [Endorphin-Questionnaire Confound],
    [H], [0.55],
    [Exercise-induced endorphins alter questionnaire responses without modifying pathophysiology. Questionnaires \<2h post-exercise show improvement; \>48h show deterioration.],
    [Questionnaire timing manipulation in exercise RCT. Naloxone pre-treatment arm.],
    [Ch.24 @hyp:endorphin-questionnaire],

    [Response Shift and Therapeutic Ritual Effects],
    [S], [0.35],
    [Patients recalibrate fatigue reference standard. Therapeutic ritual independently improves subjective well-being.],
    [Then-test at follow-up. Enhanced-care control arm.],
    [Ch.24 @spec:response-shift-ritual],

    [Exercise Discordance as Diagnostic Quality Indicator],
    [H], [0.65],
    [Discordance rate measures diagnostic contamination. PEM-requiring trials #sym.arrow SMD~0; non-PEM #sym.arrow SMD~0.85.],
    [Stratify Zhao 2026 by PEM requirement.],
    [Ch.24 @hyp:discordance-diagnostic],

    [Long COVID Will Repeat ME/CFS Exercise Error],
    [P], [0.75],
    [Long COVID rehab trials: positive subjective + null objective in unblinded designs.],
    [Systematic review stratified by blinding and outcome type.],
    [Ch.24 @pred:long-covid-exercise-error],

    [Depression as Blinding Calibration Standard],
    [H], [0.50],
    [Blinding quality moderates effect size more in ME/CFS than depression.],
    [Cross-condition meta-regression with identical blinding moderators.],
    [Ch.24 @hyp:depression-calibration],

    [PEM as Cross-Disease Exercise Response Determinant],
    [H], [0.50],
    [PEM status predicts exercise harm across conditions. PEM-negative FM retains benefit; PEM-positive FM matches ME/CFS null.],
    [FM meta-analyses stratified by PEM. Cross-condition meta-regression.],
    [Ch.14d @hyp:pem-exercise-determinant],

    [Forced Exit from Metabolic Safe Mode],
    [S], [0.25],
    [Exercise forces cells out of itaconate-mediated safe mode #sym.arrow transient activation #sym.arrow deeper crash.],
    [Multi-timepoint metabolomics during exercise trial.],
    [Ch.6 @spec:forced-exit-safe-mode],

    [Exercise-Induced Immune Activation as Occult Harm],
    [S], [0.35],
    [Exercise causes immune activation + collapse. Subjective improvement masks immune deterioration.],
    [Immune biomarkers at same timepoints as questionnaires.],
    [Ch.7 @spec:exercise-immune-harm],
  ),
  caption: [Entries added 2026-04-21: Exercise blinding bias framework and cross-disease exercise response.],
  kind: table,
) <tab:hypothesis-registry-2026-04-21-exercise-blinding>
// Open questions: oq:blinding-adjusted-policy (Ch.24), oq:next-gen-exercise-trial (Ch.21), oq:bayesian-bias-correction (Ch.26)
] // end landscape page

=== Entries Added 2026-04-21: Piecewise Recovery Scaling and Extended Severity Classification

Motivated by: Jahanbani et al.\ 2024  — extended extremely severe A--E classification; analysis of emergent piecewise biophysical recovery dynamics (Equations @eq:atp-piecewise, @eq:repair-piecewise) from coupled ODE system.

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Piecewise Recovery Scaling: Cliff and Floor Regimes at Severe/Extremely Severe Levels],
    [P], [0.45],
    [Recovery time $tau_"rec"(B)$ follows three biophysically distinct regimes: plateau ($B > 0.65$), cliff ($0.10 < B lt.eq 0.65$, steep rise from ATP synthase threshold), floor ($B lt.eq 0.10$, constant-high from collapsed repair). (a) Log-log plot of recovery time vs $B$ shows two slope changes (cliff steepening, floor flattening). (b) In floor regime, ES-C/D/E show similarly slow improvement per band. (c) Patients at ES-D/E show biological improvement (cytokine normalization, HRV recovery) weeks before perceptible functional gain.],
    [Longitudinal functional capacity monitoring with wearables in extremely severe patients (Bell score $lt.eq$ 10) over $gt.eq 12$ months. Paired biological markers + functional assessment at monthly intervals. Jahanbani 2024 $n = 1$ trajectory consistent; cohort validation needed. ACHTSAM pilot  may provide severity-tolerant protocol.],
    [Ch.31 @eq:recovery-scaling],

    [Extended Severity Classification: Clinically Distinct Sub-Levels Within Very Severe ME/CFS],
    [H], [0.40],
    [The very severe range ($B lt.eq 0.15$) contains clinically distinguishable sub-levels (VS + ES-A through ES-E) that map to discrete functional milestones: oral nutrition capacity, sensory tolerance, communication ability, independent repositioning. (a) Clinician-rated sub-level assignments show inter-rater reliability $kappa gt.eq 0.6$. (b) Sub-levels correlate with objective measures (HRV, cytokine panels, activity actigraphy). (c) Transitions between sub-levels predict treatment response timescale.],
    [Jahanbani 2024 proposed the A--E framework for $n = 1$. Cohort validation requires home-visit protocols (ACHTSAM model). Inter-rater reliability study feasible with trained assessors + video-recorded assessments. No cohort study exists.],
    [Ch.31 @eq:ratchet-severity-extended],
  ),
  caption: [Entries added 2026-04-21: Piecewise recovery scaling prediction and extended severity classification for extremely severe ME/CFS.],
  kind: table,
) <tab:hypothesis-registry-2026-04-21-severity-scaling>
] // end landscape page

=== Entries Added 2026-04-21: Consequences of Piecewise Recovery Scaling

Motivated by: creative synthesis of piecewise biophysical recovery scaling implications (Equations @eq:atp-piecewise, @eq:repair-piecewise, Table @tab:recovery-regimes); integration with Jahanbani A--E classification  and ratchet model dynamics (Ch.31).

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Biological Shadow: Biomarkers Improve Before Function],
    [H], [0.50],
    [At ES-D/E, blood biomarkers (8-OHdG, cfmtDNA, cytokines, HRV) improve weeks to months before detectable functional gain. In the piecewise model, the lag grows steeply through the cliff regime and plateaus at a high constant in the floor regime. At moderate severity, biomarkers and function improve approximately in parallel.],
    [Longitudinal paired biomarker + functional assessment in $gt.eq 20$ extremely severe patients over $gt.eq 12$ months. ACHTSAM protocol  + FUNCAP . Jahanbani 2024 $n=1$ consistent.],
    [Ch.31 @hyp:biological-shadow],

    [Recovery Horizon: Computable Patience Metric],
    [H], [0.45],
    [In the floor regime, per-band recovery cost is approximately constant and very high (Table @tab:recovery-regimes). In the cliff regime, cost rises steeply with decreasing $B$. Standard 3--6 month trial endpoints systematically miss genuine improvement at ES-C and below.],
    [Within-person longitudinal tracking across severity bands. Log-log recovery-time vs $B$ plot should show slope steepening in cliff regime and flattening in floor regime; pure power-law ($tau_"rec" prop 1\/B^n$ with constant $n$) is falsified by the piecewise biophysics.],
    [Ch.31 @hyp:recovery-horizon],

    [Damage Prevention Dominance Below Severe Threshold],
    [H], [0.55],
    [In cliff and floor regimes, PEM crash recovery takes months to years while the crash itself is acute. Event prevention outperforms any repair-enhancing intervention by orders of magnitude at ES-C and below.],
    [Matched cohort: event-sparing vs event-exposed. Trajectory benefit ratio should increase with decreasing $B$ through the cliff regime and plateau in the floor regime.],
    [Ch.31 @hyp:damage-prevention-dominance],

    [Therapeutic Threshold: Minimum $B$ for Standard Repair],
    [S], [0.35],
    [$B_"crit" approx 0.009$: below this, one sub-level improvement via ATP-dependent repair takes $> 10$ years. Recovery requires repair-bypassing interventions (mitochondrial transplant, stem cells).],
    [Compare improvement rates at Bell 0--3 vs Bell 10--15 with same intervention. Falsified if rates within one order of magnitude.],
    [Ch.31 @spec:therapeutic-threshold],

    [Repair Starvation Trap: Secondary Attractor at Very Low $B$],
    [S], [0.40],
    [$exists B_"trap"$: below it, chronic damage exceeds repair even without discrete events. Patients decline despite maximal protective environment.],
    [Track extremely severe patients in controlled environments ($gt.eq 12$ months no events). Continued decline $=$ consistent. Stabilisation/improvement $=$ falsified.],
    [Ch.31 @spec:repair-starvation-trap],

    [ATP Floor Modifies Scaling Law],
    [S], [0.40],
    [Minimum viable $["ATP"]_min$ causes $tau_"rec"$ to plateau rather than diverge in the floor regime. Log-log recovery-time vs $B$ plot shows slope change at the cliff-to-floor transition.],
    [Within-person longitudinal data spanning ES-A through ES-E. Slope change detection requires $gt.eq 3$ data points below transition.],
    [Ch.31 @eq:atp-piecewise],

    [ICU-Acquired Weakness: Energy-Limited Repair Scaling Parallel],
    [S], [0.35],
    [ICUAW, severe TBI, advanced sarcopenia share $1\/B^n$ scaling ($n in [1.5, 2.5]$). Unifying "energy-limited repair" framework.],
    [Cross-condition normalized recovery trajectory comparison. FSS-ICU log-spacing is indirect evidence. Formal $n$ estimation needed.],
    [Ch.32 @spec:icuaw-parallel],

    [Repair Multiplier Priority at Extremely Severe End],
    [S], [0.40],
    [In floor regime, $r_min$ is the dominant bottleneck; doubling $r_min$ halves a recovery time that is months-to-years, producing orders-of-magnitude more absolute benefit than the same doubling at moderate severity. NAD#super[+] precursors, urolithin A, growth hormone warrant severity-stratified investigation.],
    [RCT of NR/NMN stratified by severity. Relative biomarker improvement at ES vs moderate. Falsified if relative improvement equal across strata.],
    [Ch.14a @spec:repair-multiplier],
  ),
  caption: [Entries added 2026-04-21: Consequences of piecewise recovery scaling for clinical management, monitoring, and model extensions.],
  kind: table,
) <tab:hypothesis-registry-2026-04-21-scaling-consequences>
] // end landscape page

=== Entries Added 2026-04-25: Reproductive Health and Pregnancy Outcomes

Motivated by: Schacterle & Komaroff 2004  (retrospective ME/CFS pregnancy outcomes); Slack et al.\ 2023 systematic review ; Thomas et al.\ 2022 sex differences ; Compton et al.\ 2025 endometriosis meta-analysis .

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Postpartum Immune Reconstitution as ME/CFS Onset and Relapse Trigger],
    [S], [0.30],
    [Postpartum progesterone/estrogen collapse triggers maladaptive immune reconstitution in susceptible women, precipitating ME/CFS onset or relapse. Symptom improvement during pregnancy correlates with progesterone levels; relapse timing correlates with rate of hormonal withdrawal.],
    [Longitudinal hormonal profiling (progesterone, estrogen) paired with symptom assessment in ME/CFS patients during and after pregnancy. Receptor polymorphism association study. Postpartum progesterone supplementation trial (safety permitting). No studies exist yet.],
    [Ch.23 @spec:postpartum-immune-reconstitution],

    [Does Maternal ME/CFS Causally Elevate Offspring Neurodevelopmental Risk?],
    [OQ], [—],
    [If Schacterle 2004 finding (offspring developmental delays 21% vs 8%) replicates, what is the causal mechanism? Three competing candidates: (1) maternal immune activation (cytokines crossing placenta), (2) reduced placental perfusion (autonomic cardiovascular dysfunction), (3) medication effects.],
    [Prospective cohort ($n gt.eq 200$) ME/CFS mothers followed through 12 months postpartum with matched controls. Offspring neurodevelopmental follow-up at 2 and 5 years. No study exists; a critical research gap.],
    [Ch.23 @oq:offspring-neurodevelopment],
  ),
  caption: [Entries added 2026-04-25: Reproductive health and pregnancy outcomes — postpartum immune reconstitution and offspring neurodevelopment.],
  kind: table,
) <tab:hypothesis-registry-2026-04-25-reproductive>
] // end landscape page

=== Entries Added 2026-04-25: Reproductive Health Mechanisms and Cycle-Based Pacing

Motivated by: creative synthesis of pregnancy/reproductive health literature (, , , , @boneva2015menopause).

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Pregnancy as a Natural ME/CFS Subtype Stratifier],
    [S], [0.35],
    [The 30/29/41 improve/worsen/unchanged split in ME/CFS pregnancy could reveal three subtypes: autoimmune-dominant (improvers, via Th2 shift), dysautonomia/POTS-dominant (improvers, via blood-volume expansion), metabolic/mitochondrial-dominant (worsen, demand exceeds reserves). Proportions are noise-consistent at $n = 86$; requires prospective pre-stratification. Pre-pregnancy stratification by autoantibody panel + tilt-table + CPET predicted to give concordance > 0.60.],
    [Prospective cohort study pre-stratifying ME/CFS women before pregnancy. No such study exists. Requires registry infrastructure.],
    [Ch.23 @spec:pregnancy-subtype-stratifier],

    [PRIS: Postpartum Immune Reconstitution Inflammatory Syndrome],
    [S], [0.35],
    [Postpartum immune reconstitution against latent viral reservoirs (EBV, HHV-6) causes IRIS-like syndrome at 3--6 months postpartum. Women developing ME/CFS postpartum will show higher 1st-trimester viral loads and steeper Treg decline between 3rd trimester and 3 months postpartum than healthy controls.],
    [Longitudinal viral load + Treg measurement in pregnant ME/CFS women. No studies exist. Biobanking of trimester samples required.],
    [Ch.23 @spec:pris-postpartum],

    [Allopregnanolone Withdrawal as Postpartum ME/CFS Crash Driver],
    [S], [0.25],
    [Precipitous postpartum drop in allopregnanolone (GABA-A modulator, 10--100$times$ elevated in pregnancy) amplifies ME/CFS autonomic and HPA dysregulation. Postpartum ME/CFS onset women show steeper allopregnanolone decline trajectory; gradual progesterone taper reduces ME/CFS onset in high-risk women.],
    [Longitudinal allopregnanolone profiling in pregnancy through postpartum. Progesterone taper RCT (postpartum, n~150). Brexanolone-PPD literature provides mechanistic precedent.],
    [Ch.23 @spec:allopregnanolone-postpartum],

    [Endometriosis--ME/CFS Shared Mast Cell and Neuroinflammatory Axis],
    [S], [0.35],
    [OR 2.79 association reflects shared mast cell hyperactivation, peripheral nerve sensitization, and estrogen-driven inflammation. ME/CFS + endometriosis patients show higher tryptase, IL-1β, NGF than ME/CFS alone. Endometriosis excision reduces ME/CFS severity by > 20% in > 40% of dual-diagnosis patients.],
    [Immune profiling: ME/CFS vs ME/CFS+endo cohorts. Endometriosis excision pragmatic RCT. No studies exist; requires gynecology--ME/CFS collaboration.],
    [Ch.23 @spec:endometriosis-mast-cell],

    [Iron--Hepcidin Axis: Functional Iron Deficiency in ME/CFS Women],
    [S], [0.22],
    [Chronic inflammation elevates hepcidin, blocking iron absorption and impairing mitochondrial enzymes (cytochrome c oxidase, aconitase). Elevated hepcidin/ferritin ratio predicts IV iron response. IV iron improves fatigue in hepcidin-elevated subgroup vs normal-hepcidin ME/CFS (effect size difference > 0.4 SD).],
    [Hepcidin assay in ME/CFS women with menorrhagia history. IV iron RCT stratified by hepcidin level. No ME/CFS-specific hepcidin data exist.],
    [Ch.23 @spec:iron-hepcidin-mecfs],

    [Early Menopause as Marker of Accelerated Ovarian Aging in ME/CFS],
    [S], [0.35],
    [Chronic inflammation and HPG suppression accelerate follicular atresia: ME/CFS women aged 25--40 will have AMH > 1 SD below healthy controls; AMH negatively correlates with disease duration (r < -0.30). Parallels autoimmune POI.],
    [AMH assay in ME/CFS cohort, age-stratified. Cross-correlation with disease duration and inflammatory markers. No AMH studies in ME/CFS exist.],
    [Ch.23 @spec:early-menopause-amh],

    [Cycle-Synchronized Pacing Reduces Premenstrual PEM],
    [S], [0.20],
    [Reducing activity quota 20--30% in the late luteal/menstrual phases, matched to the low-estrogen/low-progesterone window, reduces PEM episode frequency in women reporting cycle-phase symptom variation. Effect > 25% reduction vs flat pacing.],
    [Crossover trial ($n gt.eq 40$) over 4 menstrual cycles: cycle-synchronized vs flat pacing. Patient diary + actigraphy. Zero cost intervention; feasible near-term.],
    [Ch.17 @spec:cycle-synced-pacing],

    [Oral Micronized Progesterone as Immunological and Neurosteroid Bridge Therapy in ME/CFS],
    [S], [0.25],
    [Oral micronized progesterone (100--200 mg/day, oral route for allopregnanolone via first-pass metabolism) replicates pregnancy immunosuppression (PIBF → Th2 shift + NK suppression) and HPA calming (allopregnanolone → GABA-A → reduced CRH/ACTH) in non-pregnant ME/CFS patients. Responders enriched in autoimmune-dominant phenotype. Cyclic not continuous dosing required. Normal baseline progesterone in ME/CFS confirmed (pharmacological not replacement rationale).],
    [Crossover RCT: oral vs vaginal micronized progesterone vs placebo. Primary endpoint: PSQI sleep score + immune panel (NK cytotoxicity, Th1/Th2 ratio). Biomarker stratification by autoantibody status. Brexanolone Lancet RCTs ($n = 246$) provide proof-of-concept for allopregnanolone pathway. No ME/CFS trial exists.],
    [Ch.23 @spec:micronized-progesterone-bridge],
  ),
  caption: [Entries added 2026-04-25: Reproductive health mechanisms (pregnancy subtypes, PRIS, allopregnanolone, endometriosis axis, iron-hepcidin, AMH), cycle-synchronized pacing, and oral micronized progesterone bridge therapy.],
  kind: table,
) <tab:hypothesis-registry-2026-04-25-reproductive-mechanisms>
] // end landscape page


=== Entries Added 2026-04-25: Progesterone/Neurosteroid Axis Hypotheses (Phase 4 Brainstorm Integration)

Motivated by: scientific-insight-generator brainstorm on oral micronized progesterone as ME/CFS therapeutic bridge, building on , , , , , .

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Pregnancy as Forced Tolerogenic Reset: Why ~30% Improve],
    [S], [0.35],
    [Pregnancy expands CD56#super[bright] decidual NK and Tregs, suppressing exhausted CD56#super[dim] NK and effector T cells. Improvers have immune-driven subtype; non-improvers have metabolic/neurological subtype. Baseline NK phenotype predicts pregnancy response.],
    [Prospective cohort: NK subtype panel + Treg fraction before conception. No ME/CFS pregnancy immunophenotyping study exists.],
    [Ch.07 @spec:tolerogenic-reset],

    [Mast Cell Stabilization via Progesterone Receptor B],
    [S], [0.25],
    [PR-B on mast cells reduces histamine and tryptase release. MCAS-overlap ME/CFS patients (elevated tryptase/urinary methylhistamine) show greater improvement on luteal progesterone than those with normal mast cell markers.],
    [Mast cell markers (tryptase, urinary methylhistamine) as progesterone trial stratifiers. MCAS-overlap cohort trial. No ME/CFS PR-B mast cell data.],
    [Ch.07 @spec:mast-cell-progesterone],

    [Sequential Estrogen--Progesterone Required for PIBF Induction Outside Pregnancy],
    [S], [0.25],
    [PIBF requires estrogen priming. Sequential transdermal estradiol (days 1--14) + oral progesterone (days 15--28) induces PIBF ex vivo; progesterone-alone protocol does not.],
    [Ex vivo PBMC PIBF assay: sequential vs progesterone-alone protocol. Combined HRT safety screen required. No ME/CFS PIBF ex vivo data.],
    [Ch.07 @spec:estrogen-pibf-priming],

    [Post-Viral Immune Context as a PIBF-Sensitizing Window],
    [S], [0.15],
    [Acute viral/vaccine immune perturbation transiently permits PIBF induction by exogenous progesterone in non-pregnant patients. Within 4 weeks of trigger: PIBF inducible; > 6 months from trigger: not inducible.],
    [PIBF ex vivo assay in ME/CFS patients within 4 weeks vs > 6 months of documented immune trigger. Entirely novel hypothesis; no supporting data.],
    [Ch.07 @spec:postviral-pibf-window],

    [Extrasynaptic α4βδ GABA-A Receptor Dysregulation as Cycle-Phase ME/CFS Severity Modulator],
    [S], [0.28],
    [PMDD-like α4βδ dysregulation explains the bifurcation of ME/CFS luteal responders vs non-responders. EEG tonic GABA-A signature and sleep spindle density will differ between "luteal-better" and "luteal-worse" ME/CFS subgroups across cycle days 5, 14, 21, 26.],
    [Cycle-phase EEG + polysomnography study in ME/CFS stratified by luteal symptom response. No ME/CFS α4βδ EEG data exist.],
    [Ch.09 @spec:alpha4betadelta-mecfs],

    [Pre-Treatment Allopregnanolone Conversion Capacity as a Neurosteroid Response Stratifier],
    [S], [0.35],
    [Patients with low mid-luteal allopregnanolone/pregnenolone ratio (low 5α-reductase capacity) are the highest-benefit target for oral micronized progesterone. Pre-treatment ratio stratifies responders with AUC > 0.70.],
    [Serum neurosteroid panel (allopregnanolone, pregnenolone, DHEA-S) at cycle days 3 and 21; requires LC-MS/MS assay. Stratifier for any progesterone trial.],
    [Ch.09 @spec:allopregnanolone-ratio-predictor],

    [Allopregnanolone--Glymphatic Coupling as Secondary Mechanism of Neurosteroid Benefit],
    [S], [0.22],
    [Progesterone bridge → allopregnanolone → increased N3 SWS → glymphatic clearance → reduced neuroinflammatory burden. Brain fog/morning fatigue improvement correlates with N3 gain, not daytime allopregnanolone level.],
    [Polysomnography during progesterone supplementation in ME/CFS. Correlation analysis: N3 change vs symptom change. No ME/CFS neurosteroid + polysomnography study exists.],
    [Ch.15 @spec:allopregnanolone-glymphatic],

    [Sleep Spindle Density as Pharmacodynamic Readout for Neurosteroid Interventions],
    [OQ], [---],
    [Does baseline spindle density predict ME/CFS severity and neurosteroid response? Does on-treatment spindle change correlate with symptom improvement?],
    [Polysomnography or ambulatory EEG across menstrual cycle in ME/CFS. Within-subject comparison luteal vs follicular phase. Pre-treatment in any neurosteroid trial.],
    [Ch.15 @oq:spindle-density-biomarker],

    [Cycle-Synchronized Luteal-Phase Progesterone as a Precision Dosing Strategy],
    [S], [0.30],
    [Luteal-phase-synchronized oral micronized progesterone (200 mg nightly, LH-surge-timed) reduces PSQI more than a fixed calendar schedule in women with documented cycle-phase worsening.],
    [Crossover trial: LH-synchronized vs calendar-fixed dosing. Requires OPK monitoring. Not studied in ME/CFS.],
    [Ch.18 @spec:cycle-synchronized-progesterone],

    [Postpartum-Onset ME/CFS as a Neurosteroid Withdrawal Subtype Amenable to PPD Trial Design],
    [S], [0.30],
    [A 14-day oral neurosteroid pulse in postpartum-onset ME/CFS (within 12 months of delivery) produces ≥ 30% DSQ-PEM reduction at day 28, exceeding non-postpartum-onset ME/CFS controls.],
    [14-day oral neurosteroid trial in postpartum-onset ME/CFS subgroup. Brexanolone  and oral analog PPD trials provide design template. No ME/CFS trial exists.],
    [Ch.18 @spec:ppd-methodology-transfer],

    [Pregnenolone as Substrate-Level Neurosteroid Enhancement in ME/CFS],
    [S], [0.25],
    [Pregnenolone 50--500 mg/day increases serum allopregnanolone in ME/CFS women; response correlates with baseline 5α-reductase activity (urine 5α/5β androgen metabolite ratio).],
    [Pregnenolone dose-escalation + neurosteroid metabolite profiling. No ME/CFS data.],
    [Ch.18 @spec:pregnenolone-mecfs],

    [DHEA-S-Stratified Supplementation in ME/CFS],
    [S], [0.25],
    [ME/CFS patients with baseline DHEA-S below age-adjusted 25th percentile show > 0.3 SD greater FUNCAP improvement on DHEA 25--50 mg/day × 12 weeks than normal-DHEA-S patients.],
    [Stratified DHEA supplementation RCT; stratification by baseline DHEA-S. Monitor testosterone, estradiol, androgenic side effects.],
    [Ch.18 @spec:dhea-s-stratified],

    [Severity-Tiered Neurosteroid Bridge Protocol],
    [S], [0.30],
    [Matching intervention burden to functional capacity (supplements for mild, cycle-synchronized progesterone for moderate, deferred for severe) produces higher response rates than a uniform protocol.],
    [Factorial trial comparing tiered vs uniform protocol. FUNCAP threshold validation required. No precedent trial.],
    [Ch.18 @spec:severity-tiered-neurosteroid],

    [Ganaxolone as Hormonally Inert Oral Allopregnanolone Analog in ME/CFS],
    [S], [0.20],
    [Ganaxolone 600--1800 mg/day × 4 weeks improves PSQI and reduces PEM frequency in ME/CFS patients with low baseline allopregnanolone; no effect in normal-baseline patients.],
    [Off-label ganaxolone trial; access barrier. Requires allopregnanolone baseline stratification. No ME/CFS data.],
    [Ch.18 @spec:ganaxolone-mecfs],

    [Zuranolone Pulse Therapy in Postpartum-Onset ME/CFS],
    [S], [0.25],
    [14-day zuranolone (50 mg/day) in postpartum-onset ME/CFS within 12 months of delivery produces > 30% DSQ-PEM reduction at day 28, sustained at day 90.],
    [14-day zuranolone trial in postpartum-onset subgroup. Zuranolone approved for PPD ; design transfer to ME/CFS requires outcome adaptation.],
    [Ch.18 @spec:zuranolone-mecfs],

    [LDN + Cyclic Micronized Progesterone as a Non-Overlapping Combination],
    [S], [0.20],
    [Non-overlapping mechanisms (TLR4 vs GABA-A/immune) produce additive symptom improvement in a 2×2 factorial trial; no pharmacokinetic interaction expected.],
    [2×2 factorial RCT: LDN alone vs cyclic progesterone alone vs combination vs placebo. No combination precedent.],
    [Ch.18 @spec:ldn-progesterone-combination],

    [Magnesium-L-Threonate + P5P as OTC GABA-A Modulator Stack],
    [S], [0.40],
    [Mg-threonate 2 g + P5P 50 mg nightly × 8 weeks improves PSQI sleep score in ME/CFS without affecting PEM frequency. Negative result on PEM expected; positive on sleep consistent with GABA-A mechanism.],
    [Placebo-controlled RCT: Mg-threonate + P5P vs placebo, 8 weeks. PSQI + actigraphy. Low cost, low risk; feasible near-term.],
    [Ch.17 @spec:gaba-supplement-stack],

    [Mild Heat Adaptation as Allopregnanolone-Independent GABA Tone Modulator],
    [S], [0.15],
    [Tepid bath (38°C, 15 min, 3×/week, 8 weeks) improves PSQI in heat-tolerant mild-to-moderate ME/CFS without triggering PEM at 48 hours. Heat tolerance screen required.],
    [Single-arm pilot: tepid bath protocol in pre-screened heat-tolerant ME/CFS. No ME/CFS thermal neurosteroid data.],
    [Ch.17 @spec:heat-gaba-mecfs],

    [Pregnancy Response History as Clinical Subtype Stratifier],
    [S], [0.45],
    [Historical improvers show higher immune-driven subtype markers and greater response to progesterone-related interventions vs historical worseners; effect size difference > 0.4 SD in any trial stratified by pregnancy history.],
    [Add pregnancy response history question to clinical ME/CFS assessment. Stratify in any progesterone trial. Based entirely on Schacterle 2004 .],
    [Ch.23 @spec:pregnancy-history-stratifier],

    [Multiple Sclerosis Pregnancy Effect as Cross-Disease Template for ME/CFS Research],
    [S], [0.42],
    [ME/CFS pregnancy improvers share T-cell autoreactivity profile with MS pregnancy responders; estriol trial design (8 mg/day) directly transferable to ME/CFS autoimmune subtype.],
    [ME/CFS pregnancy improvers vs non-improvers: T-cell panel, autoantibody screen. Estriol trial in autoimmune-dominant ME/CFS subgroup. MS PRIMS study provides design precedent.],
    [Ch.23 @spec:ms-pregnancy-analogy],

    [Schacterle & Komaroff Replication as Highest-Leverage Pregnancy Research Investment],
    [OQ], [---],
    [Does the ~30% improvement rate replicate? Does baseline biomarker signature predict response? Does postpartum crash trajectory predict progesterone trial response?],
    [Prospective cohort, $n gt.eq 200$ ME/CFS women, preconception enrollment through 24 months postpartum. Quarterly DSQ-PEM, FUNCAP, immune phenotype, neurosteroid metabolites, actigraphy.],
    [Ch.23 @oq:schacterle-replication],

    [Allopregnanolone Mitochondrial Effects as a Third Neurosteroid Mechanism in ME/CFS],
    [S], [0.18],
    [Seahorse PBMC respiratory function improves on cycle-synchronized progesterone independently of immune marker changes; confirms mitochondrial (non-GABA-A) mechanism.],
    [PBMC Seahorse assay before and during progesterone supplementation in ME/CFS. No ME/CFS neurosteroid + bioenergetics study exists.],
    [Ch.06 @spec:neurosteroid-mitochondria],

    [Sigma-1 Receptor at ER--Mitochondria Interface as Progesterone-Axis Co-Mechanism],
    [S], [0.15],
    [Sig-1R agonists (fluvoxamine high dose, pridopidine) produce overlapping symptom signature with progesterone bridge therapy, particularly for cognitive fatigue; brexanolone-like agents improve sleep/HPA but not cognitive fatigue.],
    [Comparative trial: Sig-1R agonist vs progesterone bridge vs placebo. Cognitive fatigue as secondary endpoint. No ME/CFS Sig-1R + neurosteroid comparison study exists.],
    [Ch.06 @spec:sigma1-neurosteroid],

  ),
  caption: [Entries added 2026-04-25: Progesterone/neurosteroid axis hypotheses --- Phase 4 brainstorm integration across ch06, ch07, ch09, ch15, ch17, ch18, ch23.],
  kind: table,
) <tab:hypothesis-registry-2026-04-25-neurosteroid>
] // end landscape page


=== Entries Added 2026-04-26: Stratified Combination Therapy Hypothesis

Motivated by: synthesis of network controllability prediction (@sec:network-controllability) and subtype-stratified sensitivity analysis (@sec:sensitivity-drug-targets); operationalization of the primary mechanism map (@sec:primary-mechanism-map) for clinical-translation use.

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Combination Therapy Stratified by Dominant Loop],
    [H], [0.55],
    [The ME/CFS disease attractor is sustained by multiple feedback loops; recovery requires shrinking enough loops simultaneously. (a) Patient-tailored 4--6-mechanism combination therapy outperforms monotherapy by $> 2 times$ at 12 months. (b) Patients with $gt.eq 4$ engaged loops respond worse to monotherapy than patients with $lt.eq 2$ engaged loops. (c) Successful clinical responders typically use 4--6 concurrent interventions, while non-responders use 1--3.],
    [Stratified RCT design comparing monotherapy vs. biomarker-tailored 4--6-mechanism combination at 12 months. Retrospective analysis of established ME/CFS specialist practices (Mestinon + LDN + fludrocortisone + antihistamine + supplement stack patterns) for combination-vs-monotherapy outcome differential.],
    [Ch.19 @hyp:stratified-combination-therapy],
  ),
  caption: [Entries added 2026-04-26: Stratified combination therapy hypothesis built on the primary mechanism map and network controllability predictions.],
  kind: table,
) <tab:hypothesis-registry-2026-04-26-stratified-combination>
] // end landscape page


=== Entries Added 2026-04-26: Epigenetics — PTPRN2 / miR-153-3p / PHB2 Axis

Motivated by: Chalder, Moreau et al. 2026 () — PTPRN2 hypomethylation and PHB2-associated miR-153-3p maturation in ME/CFS saliva EWAS (n=54 vs 21); supported by prior miRNA work   and PTPRN2 biology review .

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [PTPRN2 Hypomethylation as Epigenetic Anchor of Cognitive Subtype],
    [S], [0.28],
    [ME/CFS patients with PTPRN2 hypomethylation show measurably worse delayed recall vs those without; PTPRN2 mRNA/protein differ between subgroups; monoaminergic treatments preferentially benefit hypomethylated subgroup.],
    [No interventional data; requires saliva EWAS replication in n > 100 cohort + matched PTPRN2 mRNA data. Single unreplicated study (n=54).],
    [Ch.12 @spec:ptprn2-cognitive-subtype],

    [PTPRN2–miR-153-3p–PHB2 Multi-Level Epigenetic Axis],
    [S], [0.25],
    [Patients with lowest miR-153-3p show deepest delayed recall deficits; PHB2 protein altered in ME/CFS; miR-153-3p mimic transfection rescues APP/SNCA/NLRP3 expression.],
    [No ME/CFS data; PHB2 cytoplasmic miRNA maturation mechanism undemonstrated in any published study. Cross-sectional, n=54.],
    [Ch.12 @spec:ptprn2-mir153-phb2-axis],

    [PTPRN2 Hypomethylation as Autonomic Stress Biomarker],
    [S], [0.35],
    [Methylation inversely correlates with 24h urinary catecholamines and tilt-table sympathetic indices. Severe OI patients show deepest hypomethylation.],
    [Feasible via paired saliva methylation + tilt-table testing in ME/CFS cohort. Not yet tested.],
    [Ch.12 @spec:ptprn2-autonomic-stress],

    [PHB2–Estrogen Axis Drives Female Predominance and Perimenstrual Flares],
    [S], [0.30],
    [Longitudinal miR-153-3p nadir in late-luteal/early-follicular phase correlating with peak cognitive symptom severity in cycling females; postmenopausal: stable low miR-153-3p; males: no cyclical pattern.],
    [Longitudinal within-subject design (daily sampling across 2+ cycles). Moreau group has infrastructure; no published design for this endpoint.],
    [Ch.12 @spec:phb2-estrogen-mecfs],

    [PHB2 as Shared Upstream Node for Cognitive and Energy Phenotypes],
    [S], [0.28],
    [Plasma miR-153-3p reduction should correlate with PBMC mitophagy flux impairment within patients. If uncorrelated, PHB2 functions are dissociated.],
    [Single blood-draw study: plasma miR-153-3p + PBMC mitophagy flux (mt-Keima or LC3-II). Not yet done in ME/CFS.],
    [Ch.12 @spec:phb2-mitophagy-cognition],

    [Methylation-Based Subgrouping Predicts Differential Treatment Response],
    [S], [0.30],
    [PTPRN2-hypomethylated patients respond preferentially to autonomic interventions; methylation-normal patients respond preferentially to immune-targeted interventions.],
    [Retrospective analysis of stratified treatment cohorts. Prospective stratified trial would be definitive. Entirely untested.],
    [Ch.20 @spec:methylation-subgrouping-treatment],

    [Low-Dose Metformin as PHB2-Axis Mitophagy Activator],
    [S], [0.28],
    [12-week metformin 500 mg/day produces $gt.eq 0.3$ SD improvement on delayed recognition memory + $gt.eq 5$-point FUNCAP vs placebo in ME/CFS.],
    [Pilot RCT feasible; no ME/CFS metformin trial exists; Long COVID Bramante 2023 provides precedent for post-infectious syndrome benefit.],
    [Ch.18 @spec:metformin-phb2-mecfs],

    [Urolithin A as PHB2-Targeted Mitophagy Supplement],
    [S], [0.30],
    [16-week urolithin A 500 mg/day improves handgrip endurance + post-exertional recovery time vs placebo; PBMC mitophagy flux increases.],
    [Andreux 2019 human RCT (elderly, muscle) provides dose/safety precedent. No ME/CFS trial. OTC availability enables rapid pilot.],
    [Ch.18 @spec:urolithin-a-phb2-mecfs],

    [taVNS as Autonomic Load Reducer and Epigenetic Modifier],
    [S], [0.30],
    [12-week taVNS improves HRV + FUNCAP + fatigue; trend toward PTPRN2 methylation normalization in serial saliva samples. If autonomic improves but methylation unchanged, causal link is wrong.],
    [taVNS devices available; no ME/CFS taVNS RCT with methylation endpoint; Long COVID Verbanck 2024 provides autonomic precedent.],
    [Ch.17 @spec:tavns-epigenetic-modifier],

  ),
  caption: [Entries added 2026-04-26: Epigenetics --- PTPRN2/miR-153-3p/PHB2 axis hypotheses and treatment speculations across ch12, ch17, ch18, ch20.],
  kind: table,
) <tab:hypothesis-registry-2026-04-26-epigenetics>
] // end landscape page

#landscape[
#figure(
  table(
    columns: (2fr, 0.4fr, 0.5fr, 3fr, 2fr, 1.5fr),
    align: (left, center, center, left, left, left),
    table.header(
      [*Hypothesis / Speculation / Prediction / Open Question*],
      [*Type*], [*Cert.*],
      [*Testable Prediction*],
      [*Available Test Methods*],
      [*Source*],
    ),

    [Peripheral IgG--DRG Axis: Pain Without Neuroinflammation],
    [H], [0.45],
    [ME/CFS patients with pain/allodynia phenotype show higher DRG-binding IgG (ex vivo) and lower IENFD (skin biopsy) than fatigue-predominant patients. DRG-binding IgG correlates with IENFD reduction.],
    [Post-mortem DRG IgG staining; skin punch biopsy IENFD; stratify by pain vs cognitive phenotype. Goebel 2021 and Mignolet 2026 passive transfer protocols already validated.],
    [Ch.7 @hyp:drg-igg-pain-axis],

    [IgG-Mediated Non-Length-Dependent SFN: DRG-Level Autoimmune Mechanism],
    [H], [0.40],
    [Post-COVID ME/CFS patients with non-length-dependent SFN show higher DRG-binding IgG titres vs length-dependent SFN; IVIG response is greater in non-length-dependent subtype.],
    [Stratified skin biopsy (length-dependent vs non-length-dependent) + IVIG RCT with SFN subtype as stratification variable. McAlpine 2024 IVIG pilot provides precedent.],
    [Ch.8 @hyp:drg-sfn-igg-mecfs],

    [DRG-IgG as Afferent-Gain Amplifier in PEM],
    [H], [0.45],
    [QST thresholds drop further post-exertion in IgG-DRG-positive vs IgG-DRG-negative ME/CFS patients. Microneurography C-fiber discharge correlates with PEM severity.],
    [QST at baseline + post-exertion challenge; C-fiber microneurography. Passive transfer behavioral assays (running-wheel post-exertion).],
    [Ch.7 @hyp:drg-igg-pem-amplifier],

    [Two-Compartment ME/CFS: Peripheral IgG--DRG vs Central Brain-Fog],
    [H], [0.50],
    [IVIG/efgartigimod in sensory-autonomic patients: $gt.eq 30%$ improvement pain/autonomic, $lt 10%$ cognitive. Cognitive-dominant patients show reverse. Phenotype-stratified trial needed.],
    [Stratified RCT: sensory-autonomic arm (IVIG/FcRn antagonist) vs cognitive arm (anti-neuroinflammatory). McAlpine 2024 IVIG hints at dissociation.],
    [Ch.7 @hyp:two-compartment-mecfs],

    [Nodose Ganglion IgG: Peripheral Mechanism for Autonomic and GI Symptoms],
    [H], [0.45],
    [Nodose ganglia in passive-transfer mice show IgG accumulation comparable to DRG. Vagal-afferent recordings hyperexcitable. Post-mortem nodose IgG staining positive in autonomic-phenotype ME/CFS patients.],
    [Histology of nodose ganglion in existing passive-transfer mouse models; vagal electrophysiology. Requires cadaveric ME/CFS nodose tissue.],
    [Ch.7 @hyp:nodose-igg-autonomic],

    [Fc-Glycosylation Profile Gates IgG Pathogenicity at DRG],
    [S], [0.35],
    [Pro-inflammatory G0F glycoforms enriched in IgG fractions that transfer pain in mice vs non-transferring fractions from healthy controls. ME/CFS patients show lower sialylation index.],
    [Fc N-glycan mass spectrometry of IgG fractions from passive-transfer studies; comparison to healthy controls. Feasible add-on to existing biobanked samples.],
    [Ch.7 @spec:fc-glycoprofile-pathogenicity],

  ),
  caption: [Entries added 2026-04-30: IgG passive transfer and DRG-mediated pain sensitization --- Mignolet 2026, Goebel 2021, Chen 2026, McAlpine 2024.],
  kind: table,
) <tab:hypothesis-registry-2026-04-30-passive-transfer>
] // end landscape page

#landscape[
#figure(
  table(
    columns: (2fr, 0.4fr, 0.5fr, 3fr, 2fr, 1.5fr),
    align: (left, center, center, left, left, left),
    table.header(
      [*Hypothesis / Speculation / Prediction / Open Question*],
      [*Type*], [*Cert.*],
      [*Testable Prediction*],
      [*Available Test Methods*],
      [*Source*],
    ),

    [PEM as Biphasic ISR Cycle: Adaptive Initiation, Maladaptive Persistence],
    [H], [0.45],
    [Time-course muscle biopsy (CPET protocol: pre/+6h/+24h/+48h/+7d) shows distinct waves: phospho-eIF2α peaking early, ATF4 targets (ASNS, GDF15 mRNA, FGF21 mRNA) peaking 24--48 h. ME/CFS patients show persistence vs 72 h resolution in controls.],
    [Standardised CPET + serial biopsy protocol. ELISA/WB phospho-eIF2α Ser51. qPCR ATF4 targets. GDF15/FGF21 plasma time-course. Feasible in existing ME/CFS biobank cohorts.],
    [Ch.6 @hyp:pem-biphasic-isr],

    [Bidirectional ISR Dysregulation: Opposite States in ME/CFS Subgroups],
    [H], [0.40],
    [Pathogen-stratified muscle biopsy (HHV-6 dUTPase IgG+ vs post-COVID onset) shows opposite phospho-eIF2α/ATF4 direction. ISRIB improves HHV-6+ subgroup, worsens or has no effect on post-COVID subgroup.],
    [HHV-6 dUTPase ELISA (serology); muscle biopsy phospho-eIF2α/ATF4 IHC stratified by trigger. ISRIB human-use pending regulatory approval; crossover design in biobanked samples.],
    [Ch.7 @hyp:isr-bidirectional],

    [Tissue Compartmentalisation Explains ISR Biomarker Failure],
    [H], [0.55],
    [Paired sampling (PBMC + muscle biopsy + skin biopsy) in same ME/CFS patients: ISR markers elevated in muscle/skin, not PBMC. Tissue effect sizes substantially exceed blood. Omdal 2026 null result reproduced in PBMC compartment only.],
    [Multi-tissue biopsy protocol (1 clinic visit). PBMC isolation + muscle punch + 3mm skin punch. Phospho-eIF2α, ATF4 WB/IHC per compartment. Feasible add-on to existing biopsy studies.],
    [Ch.7 @hyp:isr-compartmentalisation],

    [Chronic ISR Activation in ME/CFS: Adaptive Initiation, Maladaptive Persistence],
    [S], [0.35],
    [ME/CFS muscle shows elevated baseline phospho-eIF2α AND blunted delta-ISR response to ex vivo stressor (tonic saturation). ISRIB worsens mitochondrial fragmentation markers despite reducing phospho-eIF2α.],
    [Ex vivo acute stressor (thapsigargin) + ISRIB in patient-derived myoblasts/fibroblasts. Mitochondrial morphology by confocal. DRP1 phosphorylation (Ser616) as fragmentation marker.],
    [Ch.6 @spec:isr-chronic],

    [Chronic ATF4 as Metabolic Ceiling in ME/CFS],
    [S], [0.40],
    [ATF4 ChIP-seq in ME/CFS muscle shows enrichment at mitochondrial gene promoters (suppressive). Serum GDF15, FGF21, asparagine/serine/glycine ratios elevated vs controls. Correlates with exercise intolerance severity.],
    [ChIP-seq (requires ~50mg muscle biopsy). Serum metabolomics panel (feasible). GDF15/FGF21 ELISA in large ME/CFS cohort (high feasibility, high impact).],
    [Ch.6 @spec:isr-atf4-ceiling],

    [WASF3--DRP1 Convergence: Two Routes to the Same Mitochondrial Failure],
    [S], [0.30],
    [WASF3 knockdown in HHV-6 miR-aU14-expressing cells partially rescues mitochondrial morphology. DRP1 inhibitor rescues miR-aU14 but not WASF3 phenotype. Combined inhibition additive if independent.],
    [Patient-derived myoblasts with WASF3 siRNA + miR-aU14 expression vectors. Mdivi-1/Drpitor1a treatment. Mitochondrial aspect ratio + supercomplex BN-PAGE.],
    [Ch.6 @spec:wasf3-drp1-convergence],

    [ISR Activation in DRG as a Mechanism for Small Fibre Neuropathy],
    [S], [0.30],
    [ME/CFS patients with SFN show higher HHV-6 dUTPase IgG and plasma miR-aU14 than ME/CFS without SFN. Skin biopsy from SFN+ patients shows ATF4 immunoreactivity in surviving DRG-derived fibers.],
    [IENFD skin biopsy + HHV-6 serology (feasible, clinically available). ATF4 IHC on skin biopsy (research protocol). Plasma miR-aU14 exosome assay (research-stage).],
    [Ch.8 @spec:isr-drg-sfn],

    [ISR in Brainstem Nuclei: Autonomic Dysregulation Without Peripheral Nerve Damage],
    [OQ], [---],
    [Does ME/CFS post-mortem brainstem tissue show HHV-6 miR-aU14, phospho-eIF2α, or mitochondrial fragmentation in autonomic nuclei (NTS, dorsal vagal motor nucleus)? Do HRV abnormalities correlate with brainstem vs peripheral markers?],
    [Post-mortem brainstem tissue ISH/IHC (requires donated specimens). PET imaging with emerging ISR-sensitive tracers (research-stage). Functional MRI brainstem connectivity + HRV correlation.],
    [Ch.8 @oq:isr-brainstem-autonomic],

    [GDF15 as Peripheral Readout of Tissue-Specific ISR in ME/CFS],
    [H], [0.55],
    [Serum GDF15 elevated in ME/CFS vs matched controls (effect size 0.4--0.7). GDF15 rises post-CPET in ME/CFS but not healthy controls, tracking ATF4-induction kinetics. GDF15 correlates with PEM frequency/severity.],
    [GDF15 ELISA (clinically available). Post-CPET time-course (0, 6, 24, 48 h). Age- and BMI-matched cohort (n ≥ 60 per group). Cross-reference existing ME/CFS plasma biobanks for secondary analysis.],
    [Ch.20 @hyp:gdf15-isr-readout],

    [Sex-Specific ISR Thresholds as a Partial Explanation for Female Predominance in ME/CFS],
    [S], [0.25],
    [Sex-stratified phospho-eIF2α/ATF4 levels in ME/CFS muscle greater in females than severity-matched males. Premenstrual symptom worsening correlates with cycle-phase ATF4-target metabolites (GDF15, FGF21).],
    [Sex-stratified muscle biopsy ISR study (requires existing NIH cohort data). Menstrual cycle phase log correlated with ATF4 metabolite serial blood draws. Feasible add-on to existing biopsy studies.],
    [Ch.7 @spec:isr-sex-threshold],

    [ME/CFS as Prodromal Proteinopathy: Long-Term Neurodegenerative Risk via Chronic ISR],
    [S], [0.15],
    [Long-term cohort follow-up (20--30y) shows elevated AD/ALS/PD incidence in ME/CFS vs matched controls. CSF p-tau/Aβ42 in long-duration ME/CFS trends toward AD-risk direction.],
    [Long-term cohort linkage (registry-based, requires large biobank). CSF biomarkers in long-duration ME/CFS (feasible single-site study, n ≥ 30). Not testable within short research horizons.],
    [Ch.13 @spec:isr-prodromal-proteinopathy],

    [Shared ISR Tissue Signature Across Post-Acute Infection Syndromes],
    [S], [0.35],
    [Muscle biopsy ATF4/PERK IHC elevated across ME/CFS, fibromyalgia, long COVID, and Gulf War illness vs depression/deconditioning controls at similar magnitude. ISR direction differs systematically by trigger type.],
    [Cross-condition biopsy study (requires multicentre coordination). Existing ME/CFS muscle biopsy data can be extended to adjacent cohorts. ISR direction (HHV-6 vs post-COVID) testable within existing ME/CFS data.],
    [Ch.13 @spec:isr-shared-signature],

    [Pacing as ISR Cycle Prevention: Staying Below the eIF2α Phosphorylation Threshold],
    [H], [0.50],
    [Wearable HR threshold pacing calibrated to CPET ventilatory threshold reduces plasma GDF15/FGF21 over 12 weeks (tonic ATF4 decrease). Adherence correlates inversely with PEM frequency and GDF15 level.],
    [12-week pacing RCT with continuous HRV monitoring (heart rate at VT threshold) vs standard activity diary. GDF15/FGF21 as pharmacodynamic endpoint. Feasible in existing pacing RCT infrastructure.],
    [Ch.17 @hyp:pacing-isr-threshold],

    [GDF15/FGF21 Ratio as Scalable ISR Activity Index for ME/CFS Trials],
    [S], [0.45],
    [GDF15/FGF21 ratio elevated in ME/CFS vs sedentary controls (fasting-controlled). Ratio persists at 48h post-CPET in ME/CFS; returns to baseline in controls within 24h.],
    [Post-CPET GDF15/FGF21 ELISA time-course (0, 24, 48 h). Fasting-state standardisation essential. Ratio as pharmacodynamic endpoint in ISR-modulating drug trials.],
    [Ch.20 @spec:gdf15-fgf21-ratio],

    [miR-aU14 in Plasma Exosomes as HHV-6-Triggered ME/CFS Stratification Biomarker],
    [OQ], [---],
    [Is HHV-6 miR-aU14 measurable in plasma EVs of HHV-6-seropositive ME/CFS patients at levels distinguishing active reactivation from latency? Does miR-aU14 level predict antiviral treatment response?],
    [EV isolation (SEC) + Prusty-group miRNA-seq adapted for plasma. Technical challenge: virion vs EV-packaged miR-aU14 distinction. Feasible add-on to existing HHV-6 serology studies.],
    [Ch.20 @oq:mir-au14-exosome],

    [tRNA Charging Assay for Subclinical GCN2-Arm Amino Acid Stress],
    [OQ], [---],
    [Do ME/CFS patients show partially uncharged tRNA profiles sufficient to activate GCN2 without detectable plasma amino acid abnormalities? Which aminoacyl-tRNA synthetase specificities are involved?],
    [Acylation-sensitive tRNA microarray or ribosome-profiling-based stalling detection in ME/CFS PBMCs. Research-stage; no clinical assay available. Certainty of positive result: 0.20.],
    [Ch.20 @oq:trna-charging-isr],

    [PET ISR Tracers for Non-Invasive CNS ISR Detection],
    [OQ], [---],
    [Can [^18F]-labelled ATF4-target tracers visualise brainstem ISR activation in ME/CFS without tissue biopsy? Would this confirm the HHV-6 brainstem ISR hypothesis?],
    [Tracer development for ASNS/SLC7A11 PET is in early cancer contexts. Translation to ME/CFS neuroimaging would require 5--10 years development; high mechanistic impact. Certainty: 0.30 (contingent on tracer development).],
    [Ch.20 @oq:pet-isr-tracers],

    [Skin Biopsy Three-Marker ISR Panel: IENFD + ATF4 + Tryptase],
    [OQ], [---],
    [Does adding ATF4 IHC and mast cell tryptase to the existing SFN skin biopsy workflow produce a multi-mechanism tissue readout accessible without muscle biopsy? Does ATF4 in dermal fibroblasts correlate with muscle ISR?],
    [3mm punch biopsy protocol extension. ATF4 IHC requires antibody validation in normal human skin. Correlation study with muscle biopsy required to establish skin as ISR surrogate. Certainty: 0.40.],
    [Ch.20 @oq:skin-isr-biopsy],

    [ISR ODE State Variables I(t) and A(t) Extending the PEM Energy Model],
    [OQ], [---],
    [Does adding eIF2α phosphorylation I(t) and ATF4 activity A(t) as ISR state variables to the existing PEM ODE system improve model fit to time-resolved biopsy data? Does α > 0 (ATF4 lowering energy ceiling)?],
    [Fit model to CPET-protocol time-resolved muscle biopsy (pre/+6h/+24h/+48h/+7d). Parameters unconstrained without biopsy data. Certainty of positive result: 0.45.],
    [Ch.25b @oq:isr-ode-state-variables],

    [ISR Parameter Bifurcation Predicts Healthy vs ME/CFS Attractor Switch],
    [OQ], [---],
    [In the (k_dephos, S0) parameter plane, does a fold bifurcation exist separating monostable healthy (I_ss ≈ 0) from bistable ME/CFS (high-I and low-I attractors) regimes? Does this predict treatment hysteresis?],
    [Bifurcation analysis of expanded PEM ODE; bistability predicts why single-mechanism interventions fail. Certainty: 0.35.],
    [Ch.25b @oq:isr-bifurcation-analysis],

    [ISR Kinase Quadruplex DAG Extension with Viral Modulation Edges],
    [OQ], [---],
    [Does formalising PERK/GCN2/HRI/PKR as four parallel causal nodes in the ME/CFS DAG, with HHV-6-miR-aU14→DRP1 and SARS-CoV-2-N→PKR (inhibitory) edges, identify high-priority intervention targets via causal ancestor analysis?],
    [DAG extension; no new experiments required — formalism exercise using existing DAG infrastructure. High model-enrichment value if ancestor analysis identifies novel targets.],
    [Ch.25b @oq:isr-dag-extension],

    [Two-Subpopulation Stochastic Model for ISR Trial Response Heterogeneity],
    [OQ], [---],
    [Can a two-subpopulation model (ISR-high vs ISR-suppressed, proportions p_A and 1−p_A) predict that mixed-subgroup ISR trials will produce null results, motivating stratification design?],
    [Fit p_A from HHV-6 epidemiology. Quantitative prediction: mixed trial expected effect ≈ 0. Falsifiable if ISR-stratified trial produces non-zero effect in either stratum. Certainty: 0.40.],
    [Ch.25b @oq:isr-two-population-model],

    [Mild Repeated Heat Exposure Reduces Chronic PERK Activation via HSP70/GRP78 Induction],
    [OQ], [---],
    [Does mild repeated heat exposure (5×/week × 4 weeks, 55–60°C, ≤15 min) reduce muscle PERK phosphorylation and WASF3 expression, and decrease plasma GDF15 compared to temperature-matched control? Benefit larger in ISR-high patients?],
    [Randomised cross-over with muscle biopsy (pre/post: PERK-P, WASF3 IHC) + plasma GDF15 ELISA. HSAT2 caution: below overt heat-shock threshold only. Certainty: 0.25.],
    [Ch.17 @oq:heat-isr-perk],

    [Time-Restricted Eating as ISR Dynamic-Range Restoration via Pulsatile GCN2 Activation],
    [OQ], [---],
    [Does 14:10 TRE (4 weeks) restore pulsatile FGF21 dynamics (morning peak / afternoon nadir) and reduce tonic GDF15 in ME/CFS patients? Contraindicated for severe patients with orthostatic intolerance risk.],
    [Morning/afternoon FGF21 and GDF15 ELISA before and after 14:10 TRE vs isocaloric control. Certainty: 0.20 — GCN2 pulsatile rationale from amino acid biology; no ME/CFS data.],
    [Ch.17 @oq:tre-isr-gcn2],

    [Hyperbaric Oxygen as HIF-1α Suppressor Reducing ER Stress via PERK Input Reduction],
    [OQ], [---],
    [Does HBO reduce HIF-1α-driven PERK activation in ME/CFS tissue hypoperfusion contexts, measurable as reduction in plasma PERK-activity surrogates (GDF15, ATF4 targets) after 20-session HBO protocol?],
    [Pre/post HBO plasma GDF15, FGF21, ASNS (ATF4 target) in ME/CFS cohort. Certainty: 0.25 — HIF/PERK axis plausible; no ISR-endpoint HBO ME/CFS data.],
    [Ch.17 @oq:hbo-isr],

    [ISR-Adjacent Nutritional Candidates: GlyNAC, Urolithin A, Spermidine, NAD+, CoQ10, Lithium Microdose],
    [OQ], [---],
    [Do ISR-stratified supplementation trials (GlyNAC, urolithin A, spermidine, NR/NMN, CoQ10+ALA, lithium microdose) produce measurable reductions in GDF15/FGF21 and ATF4 target metabolites compared to placebo? Certainty range: 0.15–0.35 across candidates.],
    [ISR-biomarker-stratified cross-over or RCT per candidate. Shared endpoint: GDF15, FGF21, ATF4-target metabolomics panel. Methylene blue: serotonin syndrome risk with SSRIs (contraindication). Lithium: renal/thyroid monitoring.],
    [Ch.18 @oq:isr-nutritional-candidates],

  ),
  caption: [Entries added 2026-05-01 (first batch): ISR/GCN2--ATF4 pathway integration --- 3 hypotheses, 4 speculations, 1 open question across ch06, ch07, ch08. Entries added 2026-05-02 (second batch): 2 hypotheses (GDF15, pacing-ISR), 4 speculations (sex-ISR, prodromal-proteinopathy, shared-ISR, GDF15/FGF21 ratio), 1 open question (miR-aU14) across ch07, ch13, ch17, ch20. Entries added 2026-05-02 (third batch, Phase 4 completion): 11 open questions (tRNA-charging, PET-tracers, skin-biopsy, ODE-ISR, bifurcation, DAG-extension, two-population-model, heat-PERK, TRE, HBO-ISR, ISR-nutritional-candidates) integrated across ch17, ch18, ch20, ch25b..],
  kind: table,
) <tab:hypothesis-registry-2026-05-01-isr>
] // end landscape page

#landscape[
#figure(
  table(
    columns: (2fr, 0.4fr, 0.4fr, 3fr, 2fr, 1fr),
    align: (left, center, center, left, left, left),
    table.header(
      [*Hypothesis / Speculation / Question*], [*Type*], [*Certainty*],
      [*Key Testable Prediction*], [*Proposed Method*], [*Location*]
    ),

    [Exosomal HSAT2/HERV-K RNA as a Self-Perpetuating MDSC Expansion Mechanism],
    [S], [0.25],
    [HSAT2 and HERV-K RNA detectable in ME/CFS plasma EVs at higher levels than healthy controls; correlate inversely with NK cytotoxicity and directly with MDSC frequency (CD33+HLA-DR− cells).],
    [Plasma EV RNA-seq or ddPCR for HSAT2/HERV-Kenv in ME/CFS cohort vs controls. Flow cytometry: CD33+HLA-DR− MDSCs, CD8+PD-1+ exhausted T-cells. NK cytotoxicity assay (K562 targets) in same donors.],
    [Ch.7 @spec:hsat2-exosome-mdsc],

    [Exosomal Pericentromeric RNA as a Self-Perpetuating Immune Suppression Loop in ME/CFS],
    [S], [0.25],
    [EV depletion (plasmapheresis or EV capture) transiently reduces MDSC expansion and T-cell exhaustion signals. EV HSAT2 levels correlate with NK cytotoxicity deficits across patients.],
    [In vitro: healthy donor PBMCs + ME/CFS plasma EVs vs control EVs; MDSC and T-cell exhaustion phenotyping. Clinical: plasmapheresis pilot (n=5--10) with pre/post NK cytotoxicity + MDSC flow cytometry.],
    [Ch.14a @sec:herv-exosome-loop],
    [Ch.14d @spec:ebv-cmv-hsat2-subset],
    [Ch.14d @hyp:hsat2-kinetic-distinction],
    [Ch.14d @spec:fibrotic-hsat2-gap],
    [Ch.14d @oq:exosomal-hsat2-origin],
    [Ch.14d @spec:hsat2-methylation-lock],
    [Ch.14d @pr:cross-disease-hsat2-network],
    [Ch.14d @spec:retrotransposon-autoimmunity],
    [Ch.20 @pr:multi-modal-retrotransposon-panel],

  ),
  caption: [Entries added 2026-05-01: HSAT2/HERV exosomal immune suppression --- 2 speculations across ch07, ch14a..],
  kind: table,
) <tab:hypothesis-registry-2026-05-01-hsat2>
] // end landscape page

#landscape[
#figure(
  table(
    columns: (2fr, 0.4fr, 0.4fr, 3fr, 2fr, 1fr),
    align: (left, center, center, left, left, left),
    table.header(
      [*Hypothesis / Speculation / Question*], [*Type*], [*Certainty*],
      [*Key Testable Prediction*], [*Proposed Method*], [*Location*]
    ),

    [HSAT2 Exosomal Loop as Molecular Substrate of Post-Viral Immune Memory in ME/CFS],
    [S], [0.35],
    [Plasma EVs from post-infectious ME/CFS (within 2 yrs onset) contain HSAT2/HERV-K at ≥ 2× control levels AND induce CD33+HLA-DR− phenotype in healthy donor PBMCs ex vivo.],
    [Plasma EV RNA-seq or ddPCR (HSAT2, HERV-K env). Functional PBMC induction assay using patient EVs. Stratify by onset trigger and disease duration.],
    [Ch.14a @spec:hsat2-postviral-memory],

    [PEM as Transient Amplification of Exosomal HSAT2 Release via Exertional Stress],
    [S], [0.30],
    [Plasma exosomal HSAT2 rises significantly at 12–48 h post-CPET in ME/CFS but not controls; AUC correlates with PEM severity rating.],
    [Serial plasma sampling at 0/12/24/48/72 h post-CPET. EV isolation + HSAT2 ddPCR. Within-subject paired test. PEM diary.],
    [Ch.14a @spec:hsat2-pem-amplification],

    [Exosomal HSAT2 as Non-Cell-Autonomous Centromere-Stress Signal in ME/CFS Stromal Tissues],
    [S], [0.30],
    [Primary skin/muscle fibroblasts from ME/CFS patients (passage 3) show elevated CENPA and NDC80 transcripts; elevation partially reverses with AZT 1 µM × 72 h.],
    [Primary fibroblast culture from biopsies. qRT-PCR for CENPA, NDC80, PLK1. AZT treatment arm. Compare passage-3 patient vs. control.],
    [Ch.14a @spec:hsat2-centromere-stress],

    [MDSC Expansion via Exosomal HSAT2 as Upstream Cause of NK Cytotoxicity Loss],
    [H], [0.50],
    [MDSC frequency (CD33+HLA-DR−) correlates inversely with NK cytotoxicity (Spearman ρ < −0.4). CD33+ depletion of patient PBMCs restores NK killing ≥ 20%.],
    [Multi-parameter flow cytometry. NK K562 cytotoxicity assay ± anti-CD33 microbead depletion. Cross-sectional ME/CFS cohort (n ≥ 50).],
    [Ch.7 @hyp:mdsc-nk-bridge],

    [CD8+ T-cell Exhaustion as Downstream Consequence of EV Cargo Rather than Antigen-Driven],
    [H], [0.45],
    [EV depletion from patient plasma abolishes or reduces PD-1 induction in healthy CD8+ T-cells vs. unfiltered plasma. Plasma EV HSAT2 correlates with CD8+ PD-1 expression longitudinally.],
    [EV depletion by SEC filtration. Incubate healthy CD8+ T-cells with filtered vs. unfiltered patient plasma. PD-1 flow cytometry. Longitudinal sampling (≥ 6 timepoints).],
    [Ch.7 @hyp:tcell-exhaust-ev-downstream],

    [Thermal Stress May Amplify Exosomal HSAT2 in Susceptible ME/CFS Patients],
    [S], [0.25],
    [HSAT2-high patients show measurable plasma exosomal HSAT2 rise at 6–24 h post-sauna session (15 min, 55°C); HSAT2-low patients do not.],
    [Standardised sauna exposure. Pre/post plasma EV HSAT2 ddPCR. Symptom diary (next-day fatigue). Stratified by HSAT2 baseline tercile.],
    [Ch.17 @spec:heat-hsat2-caution],

    [NRTI Repurposing for HSAT2 Loop Interruption in ME/CFS],
    [OQ], [---],
    [TDF 245 mg/day × 12 weeks reduces plasma exosomal HSAT2 and HERV-K env RNA ≥ 50% in ≥ 60% of HSAT2-high patients; clinical fatigue improvement correlates with HERV-K reduction.],
    [Open-label pilot (n=20, HSAT2-high stratified). Plasma EV HSAT2/HERV-K ddPCR. NK cytotoxicity. FUNCAP. Renal monitoring. HBV pre-screening required.],
    [Ch.18 @oq:nrti-hsat2],

    [Methyl-Donor Support as Epigenetic Re-Silencing of HSAT2 in ME/CFS],
    [S], [0.40],
    [ME/CFS patients with low SAMe/SAH ratio show higher exosomal HSAT2. 12 weeks methylcobalamin + methylfolate + SAMe reduces both HSAT2 and SAMe/SAH with correlated effect sizes.],
    [SAMe/SAH plasma ratio. HSAT2 EV ddPCR at baseline and 12 weeks. Randomised vs. placebo in patients with documented methyl-donor depletion.],
    [Ch.16 @spec:methyl-donor-hsat2],

    [NAC as Indirect Suppressor of Exosomal HSAT2 via Oxidative-Stress Reduction],
    [S], [0.25],
    [NAC 1.8 g/day × 12 weeks reduces plasma 8-OHdG AND exosomal HSAT2 with correlated effect sizes.],
    [Plasma 8-OHdG ELISA + EV HSAT2 ddPCR. Pre/post design or RCT. Correlation analysis.],
    [Ch.16 @spec:nac-hsat2],

    [Plasma Exosomal HSAT2 + HERV-K Panel as a Patient Stratification Biomarker],
    [S], [0.40],
    [Two-marker panel (HSAT2 + HERV-K env) distinguishes a ME/CFS subgroup from healthy controls with AUROC > 0.75 in n ≥ 100 cohort.],
    [Plasma EV isolation by SEC. qRT-PCR or ddPCR for HSAT2 and HERV-K env. HERV-W as negative control. Large cohort validation.],
    [Ch.20 @spec:hsat2-biomarker-panel],

    [CD33+HLA-DR− MDSC Frequency as Functional Readout of the HSAT2 Loop],
    [H], [0.50],
    [MDSC frequency elevated > 1.5× in ≥ 30% of ME/CFS patients vs. controls; correlates inversely with NK cytotoxicity (ρ < −0.4).],
    [Flow cytometry: CD33+HLA-DR− gating. NK K562 cytotoxicity. Cross-sectional cohort (n ≥ 80). Assess HSAT2 RNA in CD33+ cells by PrimeFlow assay.],
    [Ch.20 @hyp:mdsc-biomarker],

    [Does Plasma Exosomal HSAT2 Track Clinical State Longitudinally?],
    [OQ], [---],
    [Exosomal HSAT2 rises at 24–48 h post-CPET in ME/CFS (state marker) OR remains chronically elevated regardless of symptom fluctuation (trait marker). Distinguishing these informs study design.],
    [Serial CPET sampling (0/24/48/72 h) + resting monthly sampling × 6 months. Compare within-subject variability (state) vs. between-visit stability (trait).],
    [Ch.20 @oq:hsat2-longitudinal],

    [Shared Exosomal HSAT2/HERV-K Signature in Long COVID and ME/CFS],
    [S], [0.30],
    [Long COVID patients with persistent fatigue at ≥ 6 months show higher exosomal HSAT2 than recovered post-COVID controls; 3-month HSAT2 predicts 12-month persistence vs. recovery (AUROC > 0.70).],
    [Prospective Long COVID cohort. Plasma EV HSAT2/HERV-K at 3, 6, 12 months. Recovery vs. persistence classification. Parallel ME/CFS arm.],
    [Ch.14d @spec:hsat2-long-covid-bridge],

    [HSAT2 Exosomal Loop as Accelerated Inflammaging in ME/CFS],
    [S], [0.30],
    [ME/CFS patients show GrimAge acceleration correlating with plasma HSAT2 EV content. Fisetin 100 mg × 2 days/week × 12 weeks reduces plasma HSAT2 and improves NK cytotoxicity in patients aged > 50.],
    [GrimAge clock from blood DNA. Plasma HSAT2 EV ddPCR. Correlation analysis. Fisetin pilot (n=20, age > 50).],
    [Ch.13 @spec:hsat2-inflammaging],

    [Arginine Depletion as Nutritional Choke-Point Linking MDSC to NK Metabolic Failure],
    [H], [0.45],
    [Plasma L-arginine ≥ 15% lower in ME/CFS vs controls; inversely correlates with arginase-1 activity (ρ < −0.3). L-citrulline 6 g/day × 8 weeks raises arginine ≥ 30% and increases NK IFN-γ ≥ 20%.],
    [Plasma amino acid profile (arginine, citrulline). Arginase-1 ELISA. NK IFN-γ ex vivo flow. Crossover n=20.],
    [Ch.7 @hyp:arginine-mdsc-nk],

    [PD-L1-High Monocytes in ME/CFS as the M-MDSC Compartment],
    [S], [0.40],
    [Re-staining Iu 2024 cohort with EuroFlow MDSC panel shows ≥ 60% overlap between PD-L1-high monocyte gate and CD33+HLA-DR−/lo M-MDSC gate.],
    [Retrospective re-staining of stored PBMCs from Iu 2024. EuroFlow MDSC panel. Phenotypic overlap quantification.],
    [Ch.7 @spec:pd-l1-mdsc-overlap],

    [SIRT1/NAD+ Depletion as Upstream Trigger for HSAT2 Derepression],
    [S], [0.35],
    [Plasma NAD+/NADH ratio inversely correlates with EV HSAT2 load (ρ < −0.4) in n ≥ 50. NR 1 g/day × 12 weeks raises NAD+ ≥ 50% and reduces EV HSAT2 ≥ 20%.],
    [Plasma NAD+/NADH (enzymatic or LC-MS). EV HSAT2 ddPCR. Correlation study + 12-week NR open pilot.],
    [Ch.13 @spec:sirt1-hsat2-upstream],

    [CTCF Insulator Loss as Second Route to HSAT2 Derepression, Amplifiable by HSF1],
    [S], [0.30],
    [CTCF ChIP-seq at 48 h post-CPET shows ≥ 30% CTCF occupancy loss at HSAT2-flanking insulator sites; precedes HSAT2 RNA accumulation.],
    [PBMC CTCF ChIP-seq (baseline vs 48h post-CPET). HSAT2 RNA quantification at same timepoints. n=10 ME/CFS.],
    [Ch.13 @spec:ctcf-hsat2-route],

    [EV-Delivered HSAT2 as TLR3/RIG-I Ligand Triggering IFN-β in Stromal Fibroblasts],
    [S], [0.30],
    [ME/CFS patient plasma EVs produce ≥ 3× more IFN-β in primary dermal fibroblasts than healthy control EVs; TLR3 siRNA knockdown abolishes IFN-β production.],
    [Primary fibroblast culture. ME/CFS vs control plasma EVs. IFN-β ELISA. TLR3 siRNA knockdown. RIG-I knockout CRISPR control.],
    [Ch.13 @spec:hsat2-tlr3-rig-i],

    [CENPA Overexpression in EV-Exposed Fibroblasts Leading to p53-Dependent Senescence],
    [S], [0.32],
    [ME/CFS skin biopsies show ≥ 2-fold elevation in p16+ SA-β-gal+ fibroblasts; HSAT2 RNA-positive fibroblasts correlate with p16+ burden (ρ > 0.5).],
    [4 mm skin biopsy punch. p16 immunohistochemistry + SA-β-gal histochemistry + HSAT2 RNA-FISH. n=20 ME/CFS + 20 age-matched controls.],
    [Ch.13 @spec:cenpa-senescence-stromal],

    [Fibromyalgia: Partial HSAT2 Overlap via HSF1 Arm Without MDSC Arm],
    [S], [0.20],
    [Fibromyalgia plasma EV HSAT2 elevated vs controls (AUC > 0.65) but MDSC frequency normal. ME/CFS shows both elevated EV HSAT2 and elevated MDSCs.],
    [Head-to-head comparison: ME/CFS vs fibromyalgia vs controls. Plasma EV HSAT2 + EuroFlow MDSC + NK cytotoxicity. n=30 per group.],
    [Ch.14d @spec:fibromyalgia-hsat2-partial],

    [Accelerated Biological Aging in ME/CFS as Measurable Proxy for HSAT2 Inflammaging],
    [S], [0.35],
    [ME/CFS patients (mean age 35–45) show GrimAge/DunedinPACE 3–8 years above matched controls; acceleration correlates with EV HSAT2 (ρ > 0.4).],
    [Blood DNA methylation → GrimAge clock. Plasma EV HSAT2 ddPCR. n ≥ 50 ME/CFS + matched controls. Correlation analysis.],
    [Ch.14d @spec:mecfs-biological-aging-hsat2],

    [NR/NMN as SIRT1/SUV39H1-Mediated HSAT2 Silencing Support],
    [S], [0.25],
    [NR 1 g/day × 12 weeks raises whole-blood NAD+ ≥ 50% and reduces EV HSAT2 ≥ 20%. NAD+ rise without HSAT2 fall falsifies the SIRT1-HSAT2 chain.],
    [Whole-blood NAD+ enzymatic assay. EV HSAT2 ddPCR. 12-week open pilot (n=20). Parallel arginase-1 measurement.],
    [Ch.16 @spec:nr-nmn-hsat2],

    [L-Citrulline to Restore NK Cytotoxicity via Arginine Repletion in MDSC Microenvironment],
    [S], [0.40],
    [L-citrulline 6 g/day × 8 weeks raises plasma L-arginine ≥ 30% and increases NK IFN-γ ≥ 20%. MDSC frequency unchanged.],
    [Amino acid profile. NK IFN-γ ex vivo. EuroFlow MDSC panel. n=20 crossover.],
    [Ch.16 @spec:citrulline-nk-mdsc],

    [Tadalafil (PDE5i) as MDSC Arginase-1 Depleter to Rescue NK Cytotoxicity],
    [S], [0.25],
    [Tadalafil 5 mg/day × 8 weeks reduces plasma arginase-1 ≥ 25% and increases NK cytotoxicity (CD107a) ≥ 20%.],
    [Plasma arginase-1 ELISA. NK flow cytometry (CD107a). EuroFlow MDSC panel. n=20 pilot.],
    [Ch.18 @spec:tadalafil-mdsc-nk],

    [Could Checkpoint Blockade (Anti-PD-L1) Reverse ME/CFS T-Cell Exhaustion?],
    [OQ], [---],
    [PD-1 blockade restores CD8+ and NK function ex vivo in ME/CFS PBMCs without inflammatory overshoot; safety data required before any clinical consideration.],
    [Ex vivo PBMC incubation with anti-PD-L1 antibody. CD8+ cytotoxicity + NK degranulation assay. Inflammatory marker panel.],
    [Ch.18 @oq:checkpoint-blockade-mecfs],

    [Sleep Optimisation as SIRT1/NAD+-Mediated HSAT2 Silencing Support],
    [S], [0.25],
    [Actigraphy-measured total sleep time inversely correlates with EV HSAT2 (ρ < −0.3). 4-night sleep restriction raises EV HSAT2 ≥ 30% more in ME/CFS than controls.],
    [Actigraphy + plasma EV HSAT2. Sleep restriction protocol (controlled, ethical). Parallel NAD+ measurement.],
    [Ch.17 @spec:sleep-sirt1-hsat2],

    [Could Brief Cold Exposure Provide Hormetic Stress Without HSAT2 Risk?],
    [OQ], [---],
    [Facial immersion 10°C × 60 s will NOT increase EV HSAT2 at 24h in HSAT2-high ME/CFS patients (unlike predicted heat exposure response).],
    [Standardised cold stimulus. Pre/post EV HSAT2 ddPCR at 0/6/24h. OI exclusion screening. n=20 HSAT2-high patients.],
    [Ch.17 @oq:cold-exposure-hsat2],

    [EV HSAT2 + Arginase-1 Combined Plasma Panel],
    [S], [0.35],
    [Combined panel AUC ≥ 0.85 (single markers ≤ 0.75) for ME/CFS vs controls. Markers correlated (ρ > 0.4) within patients, not controls.],
    [Plasma EV HSAT2 TRAP-ddPCR + arginase-1 colorimetric assay. n ≥ 50. Combined AUC vs single marker AUC analysis.],
    [Ch.20 @spec:hsat2-arginase-panel],

    [Post-PEM EV HSAT2 Fold-Change as Superior Diagnostic vs Baseline Absolute Level],
    [S], [0.30],
    [Fold-change ratio (24h post-CPET / pre-CPET) AUC ≥ 0.80 vs baseline absolute EV HSAT2 AUC ≤ 0.70 in same cohort.],
    [CPET or modified step-test protocol. Serial EV HSAT2 TRAP-ddPCR (pre, 6h, 24h). PEM severity diary correlation.],
    [Ch.20 @spec:hsat2-cpet-fold-change],

    [ME/CFS Skin Biopsy Senescence Score as Tissue-Level HSAT2 Stromal Validation],
    [OQ], [---],
    [p16+ SA-β-gal+ fibroblast burden AUC ≥ 0.70 for ME/CFS vs age-matched controls; HSAT2-positive and p16+ cells co-localize in same biopsy.],
    [4 mm skin punch biopsy. p16 IHC + SA-β-gal + HSAT2 RNA-FISH. n=20+20. Co-localization analysis.],
    [Ch.20 @oq:skin-senescence-biopsy],

  ),
  caption: [Entries added 2026-05-01: HSAT2/HERV exosomal immune suppression Phase 4 integrations --- 12 speculations, 2 open questions across ch07, ch13, ch14a, ch14d, ch16, ch17, ch18, ch20. Phase 5 additions (2026-05-01): 17 new environments from Clusters C+D expansion and brainstorm integration --- 1 hypothesis, 13 speculations, 3 open questions across ch07, ch13, ch14d, ch16, ch17, ch18, ch20..],
  kind: table,
) <tab:hypothesis-registry-2026-05-01-hsat2-phase4>
] // end landscape page

#landscape[
#figure(
  table(
    columns: (2fr, 0.4fr, 0.4fr, 3fr, 2fr, 1fr),
    align: (left, center, center, left, left, left),
    table.header(
      [*Hypothesis / Speculation / Question*], [*Type*], [*Certainty*],
      [*Key Testable Prediction*], [*Proposed Method*], [*Location*]
    ),

    [MCAS--ISR Bidirectional Crosstalk: Mast Cell ER Stress as ISR Amplifier in MCAS Subgroup],
    [S], [0.20],
    [ME/CFS+MCAS patients show higher ATF4-target gene expression in skin mast cells than ME/CFS-only controls. eIF2α-P elevated in in vitro mast cell differentiation from ME/CFS+MCAS donors. MCAS treatment reduces GDF15/FGF21 as secondary endpoint.],
    [Skin biopsy tryptase+/ATF4 co-IHC in ME/CFS±MCAS cohort. In vitro mast cell differentiation ISR panel. GDF15/FGF21 as pharmacodynamic endpoint in MCAS trial add-on. Certainty: 0.20.],
    [Ch.7 @spec:mcas-isr-crosstalk],

    [MCAS--ISR Self-Reinforcing Loop as Domain 6 Amplifier in Multi-System Model],
    [S], [0.20],
    [MCAS treatment (mast cell stabilizers) produces secondary GDF15/FGF21 reduction as ISR pharmacodynamic endpoint. ISR-modulating agents alter mast cell tryptase/histamine dynamics in MCAS+ME/CFS subgroup.],
    [Add ISR biomarker panel to existing MCAS trial in ME/CFS. Cross-correlate MCAS treatment response with ISR biomarker change. Certainty: 0.20.],
    [Ch.13 @spec:mcas-isr-loop],

    [ATF4 Expression in Skin Mast Cells as MCAS-Subgroup ISR Biomarker],
    [OQ], [---],
    [In ME/CFS+MCAS patients, tryptase+ dermal mast cells show higher ATF4 nuclear localisation than ME/CFS-only controls and healthy controls. ATF4 level correlates with MCAS severity (mediator load).],
    [Extend skin biopsy three-marker protocol (@oq:skin-isr-biopsy) with tryptase/ATF4 co-IHC. ATF4 antibody validation in normal dermal mast cells required. Certainty: 0.20.],
    [Ch.20 @oq:mast-cell-atf4-biopsy],

    [ISR Modulator Pharmacodynamics in MCAS-Subgroup: Do ISR Drugs Affect Tryptase/Histamine Dynamics?],
    [OQ], [---],
    [ISR suppressors (ISRIB) may transiently increase mast cell reactivity via XBP1 de-suppression. MCAS stabilizers reduce GDF15/FGF21 as ISR secondary endpoint. Cross-prediction: MCAS treatment response correlates with ISR biomarker reduction.],
    [Add GDF15/FGF21/ATF4-target metabolomics as secondary endpoints in any planned ME/CFS MCAS trial. Minimal additional cost (~5 draws/patient). Certainty: 0.15 — speculative but low-cost falsifiable.],
    [Ch.25b @oq:isr-mcas-pharmacodynamics],

  ),
  caption: [Entries added 2026-05-02: MCAS--ISR bidirectional crosstalk (child cycle of ISR H9) --- 2 speculations, 2 open questions across ch07, ch13, ch20, ch25b..],
  kind: table,
) <tab:hypothesis-registry-2026-05-02-mcas-isr>
] // end landscape page

#landscape[
#figure(
  table(
    columns: (2fr, 0.4fr, 0.4fr, 3fr, 2fr, 1fr),
    align: (left, center, center, left, left, left),
    table.header(
      [*Hypothesis / Speculation / Question*], [*Type*], [*Certainty*],
      [*Key Testable Prediction*], [*Proposed Method*], [*Location*]
    ),

    [MCAS-Triggered ME/CFS Phenotype],
    [S], [0.35],
    [In the subset with MCAS onset before ME/CFS onset: MCAS treatment produces ≥50% improvement in PEM frequency and fatigue severity, AND PEM triggers overlap ≥2 MCAS triggers (heat, food, fragrance). In the majority (MCAS onset after ME/CFS): no such improvement pattern.],
    [Retrospective temporal mapping of MCAS vs ME/CFS onset in n ≥ 200. Treatment response stratified by onset sequence. Overlap scoring of PEM vs. MCAS trigger profiles.],
    [Ch.5 @spec:mcas-mecfs-phenotype],

    [Conditional Genetic Predisposition Layer for Septad (TPSAB1 / KIT / HNMT)],
    [S], [0.40 / 0.20 / 0.05],
    [HaT (extra TPSAB1 copies) in hEDS+MCAS patients predicts severe MCAS phenotype (anaphylaxis, dysphagia) with OR > 4 (certainty 0.40, per Vazquez 2022). HNMT Thr105Ile in MCAS-positive ME/CFS predicts higher antihistamine dose requirement (certainty 0.20, no ME/CFS cohort data). KIT D816V distinguishes clonal from idiopathic mast cell disease (certainty 0.40 for KIT testing; 0.05 for hEDS genetics — no gene identified).],
    [Conditional genotyping: TPSAB1 copy number in hEDS+severe MCAS subset; HNMT rs11558538 in MCAS-positive ME/CFS cohort; KIT D816V in tryptase-elevated patients. Phenotype-genotype association analysis.],
    [Ch.5 @spec:septad-genetics],

  ),
  caption: [Entries added 2026-05-01: Strengthened Septad diagnostic map --- 1 hypothesis (MCAS-triggered ME/CFS pathway), 1 speculation (conditional genetic predisposition layer)..],
  kind: table,
) <tab:hypothesis-registry-2026-05-01-septad-map>
] // end landscape page

#landscape[
#figure(
  table(
    columns: (2fr, 0.4fr, 0.4fr, 3fr, 2fr, 1fr),
    align: (left, center, center, left, left, left),
    table.header(
      [*Hypothesis / Speculation / Question*], [*Type*], [*Certainty*],
      [*Key Testable Prediction*], [*Proposed Method*], [*Location*]
    ),

    [Domain 6 (Mast Cell / Histaminergic Dysregulation) as Rate-Limiting Upstream Driver in ME/CFS Subset],
    [S], [0.38],
    [(a) In patients with Domain 6 positive + Domain 4 positive (dysautonomia): combined H1/H2 antihistamine + dysautonomia treatment produces greater COMPASS-31 improvement than dysautonomia treatment alone. (b) Urinary NMH/LTE4 elevation correlates with POTS severity within ME/CFS patients. (c) Subset with episodic MCAS flares predating ME/CFS onset responds to mast cell stabilization with ≥30% PEM frequency reduction.],
    [Cross-over trial: dysautonomia treatment ± H1/H2 antihistamines in Domain 4+6 dual-positive ME/CFS patients. Correlational study: urinary mast cell mediators vs. NASA Lean Test heart rate rise. Treatment-response registry stratified by onset sequence (MCAS before vs. after ME/CFS).],
    [Ch.4 @sec:domain6-mast-cell],

    [Six-Domain Co-Occurrence Model (extension of Multi-Domain Hypothesis to include Domain 6)],
    [H], [0.45],
    [ME/CFS patients with Domain 6 positive will have higher rates of Domain 3 (neuroinflammation) and Domain 4 (dysautonomia) positivity than Domain 6 negative patients, consistent with mast cell mediators as upstream driver of these two domains. Domain 6 positivity increases total domain count and predicts worse outcomes.],
    [Cross-sectional study: assess all 6 domains in n ≥ 150 ME/CFS patients. Logistic regression: Domain 6 positivity predicting Domain 3+4 positivity, controlling for illness duration and severity. Correlation with SF-36 Physical Function and Bell Disability Scale.],
    [Ch.4 @hyp:multi-domain],

  ),
  caption: [Entries added 2026-05-01: Domain 6 (Mast Cell / Histaminergic Dysregulation) framework entries..],
  kind: table,
) <tab:hypothesis-registry-2026-05-01-domain6>
] // end landscape page

#landscape[
#figure(
  table(
    columns: (2fr, 0.4fr, 0.4fr, 3fr, 2fr, 1fr),
    align: (left, center, center, left, left, left),
    table.header(
      [*Hypothesis / Speculation / Question*], [*Type*], [*Certainty*],
      [*Key Testable Prediction*], [*Proposed Method*], [*Location*]
    ),

    [Hypermobility as Permissive Substrate, Not Primary Septad Driver],
    [H], [0.55],
    [Joint instability scores predict MCAS mediator severity (r ≥ 0.30) but predict fatigue/PEM severity (r ≤ 0.10) in hypermobile ME/CFS.],
    [Cross-sectional: Beighton dynamic score + 24h urinary mediator composite + MFI/DSQ-PEM in hypermobile ME/CFS (n ≥ 100). Partial correlation analysis.],
    [Ch.5 @hyp:hypermobility-substrate],

    [Mast Cell as Cascade Ignition Node in the Septad],
    [H], [0.45],
    [3-arm sequential RCT: only MCAS-first arm achieves ≥2-component Septad improvement in ≥60% at 8 weeks; POTS-first and pain-first arms ≤30%.],
    [Multi-site RCT n=180. Arms: MCAS-first, POTS-first, pain-first 8-wk monotherapy then crossover.],
    [Ch.5 @hyp:mcas-ignition-node],

    [Septad as Single Neuroimmune Connective Syndrome (NICS)],
    [S], [0.40],
    [LCA on n ≥ 500 Septad patients yields one dominant latent class explaining ≥40% of variance across all 7 condition scores.],
    [Deep phenotyping. LCA + BIC model comparison. Variables: all 7 Septad severity scores, mediator panel, HRV, Beighton.],
    [Ch.5 @spec:nics],

    [Amplification Ratchet — Cascade Irreversibility Threshold],
    [S], [0.35],
    [Disease duration negatively predicts MCAS-therapy multi-component response — ≥15 pp drop per 5 years, stronger than tryptase or MCAS severity.],
    [Retrospective stratification of MCAS trial data by illness duration. Mixed-model regression.],
    [Ch.5 @spec:amplification-ratchet],

    [Third Trigger Required for ME/CFS Emergence from MCAS and Hypermobility],
    [S], [0.30],
    [In hypermobile-MCAS patients without ME/CFS, ME/CFS incidence concentrates in those with a viral/surgical/trauma trigger at HR ≥ 3 vs. untriggered.],
    [Prospective 5-year cohort, n ≥ 300 hypermobile-MCAS without ME/CFS.],
    [Ch.5 @spec:third-trigger],

    [MCAS Mediator Subtype Predicts Septad Cascade Direction],
    [S], [0.40],
    [Pre-treatment 24h mediator ratios (NMH vs PGD2-M vs LTE4) predict which Septad component improves most at 8 weeks, concordance ≥ 0.60 vs. chance 0.33.],
    [Pre-treatment mediator panel + 8-wk response across 4 Septad domains. Concordance analysis.],
    [Ch.5 @spec:mcas-mediator-subtype],

    [HNMT-Mediated Histamine Clearance Failure Subtype],
    [S], [0.35],
    [HNMT Thr105Ile homozygotes enriched among MCAS-therapy responders with normal biochemistry vs. non-responders with same biochemistry (OR ≥ 2.5).],
    [Genotype-stratified MCAS trial analysis. HNMT rs11558538 pre-stratification. n ≥ 600.],
    [Ch.5 @spec:hnmt-clearance],

    [Does the Septad Have a Latent Class Structure?],
    [OQ], [---],
    [LCA reveals either a single dominant class (NICS hypothesis @spec:nics) or 2--3 distinct clusters with differential drivers and treatment implications.],
    [LCA in existing biobanks (UK ME/CFS Biobank, DecodeME, You+ME Registry).],
    [Ch.5 @oq:septad-lca],

    [Does MCAS Treatment Response Decline with Disease Duration?],
    [OQ], [---],
    [MCAS therapy response declines with illness duration; duration should be a pre-specified stratification variable in all future Septad intervention trials.],
    [Retrospective stratification of MCAS therapy data by duration at treatment initiation.],
    [Ch.5 @oq:mcas-duration-response],

  ),
  caption: [Entries added 2026-05-01: Mechanistic hypotheses from strengthened Septad map --- 3 hypotheses, 4 speculations, 2 open questions..],
  kind: table,
) <tab:hypothesis-registry-2026-05-01-septad-mechanistic>
] // end landscape page

#landscape[
#figure(
  table(
    columns: (2fr, 0.4fr, 0.4fr, 3fr, 2fr, 1fr),
    align: (left, center, center, left, left, left),
    table.header(
      [*Hypothesis / Speculation / Question*], [*Type*], [*Certainty*],
      [*Key Testable Prediction*], [*Proposed Method*], [*Location*]
    ),

    [Carotid Body Mast Cell Sensitization as Upstream Driver of Orthostatic Intolerance in MCAS+ME/CFS],
    [H], [0.55],
    [MCAS+ME/CFS patients show exaggerated ventilatory/sympathetic responses to hypercapnia vs MCAS-negative controls; 4-week cromolyn pretreatment normalizes response and reduces OI scores.],
    [Hypercapnia challenge (3-5% CO2) with heart rate + minute ventilation monitoring in MCAS+/- ME/CFS groups. Pre/post cromolyn crossover.],
    [Ch.7 @hyp:carotid-mast-oi],

    [Hypothalamic Mast Cells as the Master Switch for Sickness-Behavior Persistence in ME/CFS],
    [H], [0.50],
    [CSF tryptase and tele-methylhistamine elevated in ME/CFS vs healthy controls even when serum tryptase normal. Intranasal cromolyn reduces sickness-behavior scores within 4 weeks.],
    [Lumbar puncture CSF mediator panel in consenting ME/CFS patients. Intranasal cromolyn RCT with sickness-behavior primary endpoint.],
    [Ch.7 @hyp:hypothalamic-mast-switch],

    [Spike Protein-Imprinted Mast Cell Memory via MRGPRX2 as Long COVID-ME/CFS Divergence Mechanism],
    [S], [0.35],
    [Long COVID-MCAS mast cells show elevated MRGPRX2 mRNA vs pre-pandemic ME/CFS-MCAS controls. Substance P-stimulated degranulation greater in Long COVID-MCAS.],
    [Primary mast cell culture (skin biopsy or CD34+ differentiation). MRGPRX2 expression by qPCR. Degranulation assay with dose-response substance P.],
    [Ch.7 @spec:mrgprx2-long-covid-mast],

    [Connective Tissue Matrix Permissivity as Unifying Mechanism of hEDS-POTS-MCAS-ME/CFS Cluster],
    [H], [0.50],
    [ME/CFS patients with Beighton >= 5 will show higher skin biopsy mast cell density (>20/HPF) than Beighton <= 2 patients, even when matched for serum tryptase.],
    [Skin punch biopsy: mast cell immunohistochemistry (tryptase staining) in ME/CFS patients stratified by Beighton score.],
    [Ch.14d @hyp:permissive-matrix-mcas],

    [Domain 6 as a Bistable Switch Layer in the ME/CFS Causal Network],
    [S], [0.40],
    [Time-series urinary N-methylhistamine and LTE4 in MCAS-positive ME/CFS will show bimodal distribution (quiescent vs activated) with sharp transitions, not unimodal/Gaussian.],
    [Weekly urinary mediator sampling in n >= 30 MCAS+ ME/CFS for 12 weeks. Statistical test: Hartigan's dip test for bimodality; autocorrelation analysis.],
    [Ch.13 @spec:domain6-bistable-switch],

    [Mast Cell Mitochondrial Transfer as Bidirectional Domain 2-Domain 6 Bridge],
    [S], [0.25],
    [Serum ccf-mtDNA correlates with urinary N-methylhistamine in ME/CFS, particularly post-exercise. Co-culture of post-exercise PBMC mitochondria with mast cells produces greater degranulation than pre-exercise.],
    [Simultaneous ccf-mtDNA (qPCR) and urinary N-methylhistamine in ME/CFS exercise challenge study. In vitro mast cell degranulation assay.],
    [Ch.7 @spec:mast-mito-transfer],

    [DAO Replacement with P5P + Copper Cofactor Optimization for Histamine Intolerance Subset],
    [S], [0.35],
    [ME/CFS patients with low pyridoxal-5-phosphate at baseline show greater response to DAO + P5P + copper than DAO alone, measured by post-meal symptom scores.],
    [Crossover trial: DAO alone vs DAO+P5P+copper in HIT-positive ME/CFS patients stratified by baseline P5P.],
    [Ch.16 @spec:dao-cofactor-hit],

    [Ketotifen + Famotidine as First-Line Domain 6 Combination in ME/CFS],
    [H], [0.45],
    [A 12-week RCT of ketotifen 1 mg BID + famotidine 40 mg BID in MCAS-positive ME/CFS will produce > 30% improvement in DSQ-PEM score vs placebo, with effect size correlating with baseline urinary N-methylhistamine.],
    [Double-blind RCT in Domain 6-positive ME/CFS (n >= 60). Primary endpoint: DSQ-PEM score. Secondary: COMPASS-31, urinary N-methylhistamine.],
    [Ch.18 @hyp:ketotifen-famotidine-first-line],

  ),
  caption: [Entries added 2026-05-01: Domain 6 Phase 4 brainstorm integrations — 1 hypothesis (carotid body mast cell OI), 6 speculations (hypothalamic master switch, MRGPRX2, permissive matrix, bistable switch, mito transfer, DAO cofactor, ketotifen+famotidine), 0 open questions (added inline)..],
  kind: table,
) <tab:hypothesis-registry-2026-05-01-domain6-phase4>
] // end landscape page

#landscape[
#figure(
  table(
    columns: (2fr, 0.4fr, 0.4fr, 3fr, 2fr, 1.5fr),
    align: (left, center, center, left, left, left),
    table.header(
      [*Claim*], [*Type*], [*Cert.*], [*Testable Prediction*], [*Proposed Test*], [*Location*],
    ),

    [Lichen Sclerosus as Cutaneous Signal of ME/CFS Immune Predisposition Terrain],
    [S], [0.25],
    [ME/CFS cohorts prospectively screened for LS will show LS prevalence exceeding age/sex-matched population controls; LS cohorts screened for ME/CFS criteria will show ME/CFS prevalence exceeding controls.],
    [Prevalence study: systematic LS screening in ME/CFS registry cohort (n >= 200) with dermatologist confirmation. Converse arm: ME/CFS criteria + PEM assessment in established LS clinic cohort.],
    [Ch.7 @spec:lichen-sclerosus-immune-terrain],

    [ME/CFS Patients with LS as a Heightened-Autoimmune-Terrain Subgroup],
    [S], [0.20],
    [LS-positive ME/CFS patients will show higher rates of anti-muscarinic and anti-beta-adrenergic autoantibodies, lower NK cytotoxicity, and elevated Th1 cytokines compared to LS-negative ME/CFS patients.],
    [Biomarker comparison within ME/CFS registry: LS-positive vs LS-negative subgroups on immune panel (autoantibodies, NK cytotoxicity, cytokine panel).],
    [Ch.5 @spec:lichen-sclerosus-subgroup],

    [Does LS Precede ME/CFS Onset (Prodromal Signal)?],
    [OQ], [—],
    [Retrospective registry questionnaire: LS diagnosis date relative to ME/CFS onset date. Hypothesis: LS onset precedes ME/CFS criteria in > 50% of patients with both conditions.],
    [Targeted questionnaire addition to You+ME or UK ME/CFS Biobank registry; minimal cost.],
    [Ch.7 @oq:lichen-sclerosus-temporal],

    [ECM1 Autoantibodies as ME/CFS Autoimmune Subgroup Stratification Marker],
    [OQ], [—],
    [ECM1-Ab prevalence in ME/CFS exceeds population background (approx. 2–5%); ECM1-Ab positivity correlates with ME/CFS Th1 cytokine profile and NK cytotoxicity deficit.],
    [ELISA-based ECM1-Ab measurement in existing ME/CFS biobanked serum. No new patient recruitment required.],
    [Ch.20 @oq:ecm1-autoantibody-mecfs],

    [IL-15 Trans-Presentation as Shared Cytokine Mechanism (LS + ME/CFS)],
    [H], [0.45],
    [Soluble IL-15Rα in ME/CFS plasma will correlate inversely with NK cytotoxicity (r > 0.4) and be elevated in high-PEM-frequency patients; LS+fatigue patients will show higher sIL-15Rα than LS-only controls.],
    [Plasma sIL-15Rα assay in ME/CFS cohort (n≥100) + NK cytotoxicity measurement + PEM frequency correlation.],
    [Ch.7 @hyp:il15-trans-presentation],

    [miR-155/Foxp3 as Shared Epigenetic Switch in LS and ME/CFS],
    [S], [0.30],
    [Plasma EV miR-155 >1.5× elevated in ME/CFS vs controls; inverse correlation with circulating Foxp3+ Treg frequency; highest in LS+ME/CFS subgroup.],
    [EV miRNA profiling (ddPCR) + Treg flow cytometry in ME/CFS cohort, stratified by autoimmune comorbidity.],
    [Ch.7 @spec:mir155-foxp3-mecfs],

    [ME/CFS as Multi-Organ TRM Persistence Syndrome],
    [S], [0.30],
    [Muscle biopsy post-PEM will show CD103+CD69+ TRM density >2× pre-PEM baseline; blocking IL-15 will reduce PEM frequency in a controlled trial.],
    [Paired muscle biopsy (pre/post PEM provocation) + TRM immunofluorescence; anti-IL-15 pilot trial (n≥20).],
    [Ch.7 @spec:trm-mecfs, Ch.14d @spec:ssc-ifn-fatigue-model],

    [Lichen Sclerosus as Pre-ME/CFS Trip-Switch (PTPN22 R620W)],
    [S], [0.35],
    [Women with biopsy-confirmed LS will show ≥1.5× incidence of ME/CFS following EBV/COVID compared to age-matched non-LS controls over 5-year follow-up.],
    [Registry-linkage study: LS biopsy records linked to ME/CFS diagnosis + infection history in national health databases.],
    [Ch.5 @spec:lichen-trip-switch],

    [Sub-Clinical Fibrosis as ME/CFS Chronicity/Irreversibility Mechanism],
    [S], [0.40],
    [Thoracolumbar fascia shear-wave elastography stiffness higher in ME/CFS duration >5y vs less than 2y; stiffness correlates with serum TGF-β1 and PIIINP; LS+ME/CFS higher fascial stiffness than ME/CFS-only matched for duration.],
    [Cross-sectional shear-wave elastography study in ME/CFS cohort stratified by duration; serum TGF-β1 and PIIINP assay; LS subgroup comparison.],
    [Ch.13 @spec:subclinical-fibrosis-mecfs],

    [SSc High IFN Signature as ME/CFS Fatigue Model],
    [S], [0.30],
    [SSc patients with high IFN-stimulated gene panel scores will show higher ME/CFS-criteria fatigue (with PEM) than low-IFN-signature SSc, independent of SSc severity.],
    [IFN signature scoring + PEM questionnaire in SSc clinic cohort (n≥100).],
    [Ch.14d @spec:ssc-ifn-fatigue-model],

    [Vitiligo as Non-Fibrotic TRM Control for ME/CFS TRM Hypothesis],
    [S], [0.25],
    [Vitiligo prevalence elevated above population baseline in ME/CFS; ME/CFS+vitiligo patients show higher EV miR-155 and lower NK cytotoxicity than ME/CFS without skin autoimmunity.],
    [Registry prevalence survey + biomarker comparison in ME/CFS subgroups stratified by skin autoimmune comorbidity.],
    [Ch.14d @spec:vitiligo-trm-control],

    [LDN Response Enrichment in ME/CFS Autoimmune-Terrain Subgroup],
    [S], [0.25],
    [ME/CFS patients with ≥1 autoimmune comorbidity will show ≥1.5× responder rate to LDN at 12 weeks vs ME/CFS without autoimmune comorbidities in a stratified trial.],
    [LDN crossover trial with pre-specified autoimmune-comorbidity stratification; responder defined as ≥30% PEM reduction.],
    [Ch.18 @spec:ldn-autoimmune-terrain],

    [Methylprednisolone Pulse at PEM Onset to Interrupt TRM Reactivation],
    [S], [0.15],
    [Methylprednisolone 16 mg ×3 days initiated at PEM onset will reduce median PEM duration by ≥30% vs placebo in a within-patient crossover (n=40 PEM events per arm).],
    [Crossover trial: methylprednisolone 16 mg ×3d vs placebo at standardized PEM onset; washout between events; PEM duration as primary endpoint.],
    [Ch.18 @spec:steroid-pulse-pem],

    [Quercetin + NAC Stack for Oxidative–Th1 Terrain in ME/CFS],
    [S], [0.20],
    [Quercetin 500 mg + NAC 1200 mg/day ×12 weeks will reduce serum 8-OHdG by ≥25% in ME/CFS with baseline oxidative stress elevation; reduction correlates with PEM frequency improvement (ρ > 0.4).],
    [Open-label trial (n≥30) with oxidative stress biomarker stratification at baseline. Primary endpoint: 8-OHdG reduction.],
    [Ch.16 @spec:quercetin-nac-th1],

    [ECM1 Hypofunction as Connective-Tissue-Immune Bridge in ME/CFS],
    [S], [0.40],
    [Anti-ECM1 antibodies >2× population baseline in ME/CFS cohort (n≥200); seropositive patients show elevated zonulin and higher S100B variability vs seronegative controls.],
    [Anti-ECM1 ELISA + zonulin + S100B in ME/CFS biobanked serum; no new recruitment required.],
    [Ch.7 @spec:ecm1-axis-mecfs],

    [Estrogen Withdrawal as Shared Th1-Derepression Trigger (LS + ME/CFS Worsening)],
    [S], [0.35],
    [Topical E2 responders in LS with comorbid ME/CFS show concurrent PEM improvement; perimenopausal ME/CFS women show higher IL-15, lower Treg frequency, and higher LS co-prevalence than pre-menopausal controls.],
    [Prospective LS+ME/CFS cohort follow-up (n≥30) tracking PEM scores alongside LS response to topical E2. Cross-sectional biomarker comparison in ME/CFS stratified by menopausal status.],
    [Ch.5 @spec:estrogen-th1-subgroup],

  ),
  caption: [Entries added 2026-05-01: Lichen sclerosus–ME/CFS integration (Phase 2+4) — 9 hypotheses (terrain marker, trip-switch, IL-15, miR-155, TRM, fibrosis, ECM1, estrogen-Th1, SSc/vitiligo comparators), 5 speculations (subgroup ch05, LDN, steroid pulse, quercetin+NAC, LS terrain), 2 open questions (temporal prodrome, ECM1 biomarker)..],
  kind: table,
) <tab:hypothesis-registry-2026-05-01-lichen-sclerosus>
] // end landscape page

#landscape[
#figure(
  table(
    columns: (2fr, 0.4fr, 0.4fr, 3fr, 2fr, 1fr),
    align: (left, center, center, left, left, left),
    table.header(
      [*Hypothesis / Speculation / Question*], [*Type*], [*Certainty*],
      [*Key Testable Prediction*], [*Proposed Method*], [*Location*]
    ),

    [Two-Compartment MDSC×HSAT2-EV Bistable Model],
    [S], [0.30],
    [Bimodal onset trajectories in ME/CFS (abrupt vs slow); abrupt-onset patients show higher baseline EV HSAT2 and MDSC at first assessment vs unimodal continuous model.],
    [Longitudinal cohort (n≥200); onset trajectory classification + baseline EV HSAT2 + EuroFlow MDSC at enrolment.],
    [Ch.13 @spec:hsat2-mdsc-ode-model],

    [Stochastic CENPA Mislocalization → Senescence Threshold in ME/CFS Fibroblasts],
    [OQ], [---],
    [RNA-FISH HSAT2 per-cell distribution is super-Poisson (over-dispersed); p16+ fibroblasts cluster in upper HSAT2 quintile.],
    [Single-cell RNA-FISH for HSAT2 in ME/CFS skin biopsies + p16 IHC co-stain. n=20+20. Variance-to-mean ratio test.],
    [Ch.13 @oq:hsat2-stochastic-cenpa],

    [Hysteresis in HSAT2 Epigenetic State: Asymmetric NAD+ Dose-Response],
    [S], [0.22],
    [Single high-dose NR bolus will NOT reduce EV HSAT2 at 72h; same total dose as daily NR × 12 weeks WILL reduce EV HSAT2 ≥ 20% (asymmetric dose-response).],
    [Crossover: acute NR bolus vs daily NR × 12 weeks in confirmed EV HSAT2-high ME/CFS. TRAP-ddPCR endpoints.],
    [Ch.13 @spec:hsat2-bistability-hysteresis],

    [CTCF ChIP-seq Across PEM: Testing CTCF-Insulator-Loss Route],
    [OQ], [---],
    [CTCF occupancy at HSAT2-flanking insulator sites drops ≥ 30% at 48h post-CPET vs baseline in PBMC.],
    [PBMC CTCF ChIP-seq: baseline + 48h post-CPET in 10 ME/CFS patients. Pericentromeric target loci: Chr1q12 and Chr16q11.],
    [Ch.13 @oq:ctcf-chipseq-pem],

    [hEDS Stromal CENPA/Senescence Arm — Partial Overlap Question],
    [OQ], [---],
    [hEDS skin fibroblasts show elevated p16+ burden but NORMAL NK cytotoxicity and MDSC frequency (distinguishing from ME/CFS).],
    [4-group biopsy study: ME/CFS, hEDS, ME/CFS+hEDS, controls. Senescence score + NK + MDSC from concurrent blood.],
    [Ch.14d @oq:heds-stromal-hsat2],

    [ME/CFS as Cancer Immune-Evasion Environment Without the Cancer],
    [S], [0.30],
    [ME/CFS MDSC transcriptomics cluster with chronic-viral MDSCs (HCV, post-COVID), not tumour-associated MDSCs.],
    [ME/CFS PBMC bulk or scRNA-seq (MDSC gate); comparison to multi-disease MDSC reference atlas.],
    [Ch.14d @spec:mecfs-cancer-immune-mirror],

    [NAC + Exercise Study: Direct HSAT2 Readout],
    [OQ], [---],
    [NAC 1.8 g/day × 4 weeks will NOT change EV HSAT2 (consistent with human exercise disconfirmation), or will INCREASE it (SIRT1-SUV39H1 competing direction). EV HSAT2 is the specific readout missing from prior disconfirmation.],
    [Crossover (NAC vs placebo × 4 weeks). TRAP-ddPCR EV HSAT2 + 8-OHdG + NK cytotoxicity. n=20 HSAT2-high ME/CFS.],
    [Ch.16 @oq:nac-hsat2-direct-test],

    [Sulforaphane: Nrf2/KDM6A HSAT2 Mitigation],
    [S], [0.20],
    [Sulforaphane 30 mg/day × 8 weeks reduces 8-OHdG ≥ 25% but EV HSAT2 < 15% (upstream Nrf2 alone insufficient).],
    [OL pilot (n=20). Plasma 8-OHdG + EV HSAT2 TRAP-ddPCR at 0 and 8 weeks.],
    [Ch.16 @spec:sulforaphane-hsat2],

    [Spermidine + NR Synergy for Pericentromeric Silencing],
    [OQ], [---],
    [Spermidine alone will not change EV HSAT2; combination with NR 1 g/day will exceed NR-alone effect (synergy test in 2×2 factorial).],
    [2×2 factorial: spermidine ± NR × 12 weeks. EV HSAT2 TRAP-ddPCR primary endpoint.],
    [Ch.16 @oq:spermidine-hsat2],

    [Zinc + Vitamin D as NK-Supportive Nutrient Floor (Deficiency Correction Only)],
    [S], [0.25],
    [In ME/CFS patients with 25-OH-D < 30 ng/mL, normalizing to 40–60 ng/mL raises NK CD107a degranulation ≥ 10%. No NK improvement in patients with baseline D > 40 ng/mL.],
    [Stratified OL: deficient vs replete at baseline. NK CD107a flow before and after 12-week D3 correction.],
    [Ch.16 @spec:zinc-vitd-nk-floor],

    [SIRT1-Axis Combination: NR + Spermidine + Pacing],
    [S], [0.22],
    [NR + spermidine + pacing × 12 weeks reduces EV HSAT2 ≥ 30%; either alone ≤ 15%.],
    [3-arm OL pilot + pacing-only arm (n=20/arm). EV HSAT2 TRAP-ddPCR at 0/12 weeks.],
    [Ch.16 @spec:hsat2-sirt1-combo],

    [Arginase-Targeting Combination: Tadalafil + L-Citrulline],
    [S], [0.28],
    [Tadalafil 5 mg + citrulline 6 g × 8 weeks raises NK cytotoxicity ≥ 30%; either alone ≤ 15%.],
    [3-arm OL pilot (n=20/arm). NK CD107a + arginase-1 activity at 0/8 weeks.],
    [Ch.16 @spec:hsat2-arginase-combo],

    [MTHFR-Stratified SAMe + Folate Combination],
    [S], [0.30],
    [TT genotype: ≥ 20% EV HSAT2 reduction at 12 weeks; CC genotype: < 10% change.],
    [Stratified OL: MTHFR C677T genotype-first enrolment. EV HSAT2 + SAMe/SAH ratio at 0/12 weeks.],
    [Ch.16 @spec:hsat2-mthfr-combo],

    [Strict Pacing as HSAT2 Amplification Prevention (Epigenetic Prophylaxis)],
    [S], [0.35],
    [HR-capped pacers (< 5% time above anaerobic threshold × 6 months) show lower rate of EV HSAT2 increase vs non-adherent controls matched for baseline severity.],
    [Prospective 6-month cohort with wearable HR data + serial EV HSAT2 TRAP-ddPCR every 8 weeks.],
    [Ch.17 @spec:pacing-hsat2-prophylaxis],

    [Low-Dose IL-2 to Rebalance Treg/MDSC Suppressive Pressure],
    [S], [0.20],
    [LDIL2 1 MIU sc × 8 weeks raises Treg:M-MDSC ratio ≥ 50%, reduces arginase-1 ≥ 15%, increases NK cytotoxicity ≥ 15%.],
    [Open-label IL-2 trial (specialist centre). EuroFlow MDSC + Treg + arginase-1 + NK at 0/8 weeks. Safety monitoring board required.],
    [Ch.18 @spec:ldil2-treg-mdsc],

    [Lamivudine + NR + Pacing Inflammaging Package],
    [OQ], [0.20],
    [24-week pilot reduces plasma IFN-α2 ≥ 30% AND EV HSAT2 ≥ 25% AND NK cytotoxicity + 15%.],
    [Open-label pilot (n=20 HSAT2-high, lamivudine 150 mg + NR 1 g + pacing). Primary composite: IFN-α2 + EV HSAT2 + NK.],
    [Ch.18 @oq:hsat2-inflammaging-package],

    [EuroFlow CD33+HLA-DR− MDSC Panel as Clinical-Grade ME/CFS Biomarker],
    [S], [0.30],
    [EuroFlow inter-lab CV ≤ 15% in ≥ 2 ME/CFS sites; MDSC > 1.5× healthy reference in ≥ 30% ME/CFS patients; MDSC inversely correlates with NK cytotoxicity (ρ < −0.4).],
    [Multi-site EuroFlow MDSC panel (Salminen 2022 protocol). n ≥ 50 ME/CFS + healthy reference comparison.],
    [Ch.20 @spec:euroflow-mdsc-mecfs],

    [EuroFlow + EV HSAT2 Dual-Readout Cross-Sectional Study],
    [OQ], [---],
    [MDSC frequency and EV HSAT2 co-cluster in ≥ 30% of ME/CFS but < 5% of controls ("HSAT2-high" subgroup); Long COVID with PEM MDSC does not differ from ME/CFS (within ±20%).],
    [100 ME/CFS + 50 Long COVID + 50 controls. Single blood draw: EuroFlow MDSC + TRAP-ddPCR EV HSAT2 + NK + arginase-1.],
    [Ch.20 @oq:hsat2-mdsc-cross-sectional],

    [Within-Patient PEM Challenge with Serial EV HSAT2 Timecourse],
    [OQ], [---],
    [EV HSAT2 rises ≥ 2-fold at 24–48h post-CPET; MDSC frequency rises at 48–72h.],
    [2-day CPET in 20 mild-moderate ME/CFS. Serial blood at 0/2/4/24/48/72h. TRAP-ddPCR + EuroFlow MDSC + NK.],
    [Ch.20 @oq:hsat2-pem-challenge],

    [Skin Biopsy CENPA/p53/Senescence Study Protocol],
    [OQ], [---],
    [ME/CFS skin biopsies: ≥ 2-fold p16+SA-β-gal+ fibroblast burden vs age-matched controls; HSAT2 RNA-positive fibroblasts correlate with p16+ burden (ρ > 0.5).],
    [4 mm punch biopsy (n=20+20). p16 IHC + SA-β-gal + HSAT2 RNA-FISH + CENPA IF. Three-way co-localization analysis.],
    [Ch.20 @oq:hsat2-skin-biopsy-protocol],

  ),
  caption: [Entries added 2026-05-02: HSAT2 brainstorm Phase 4 completion — 20 new environments across ch13, ch14d, ch16, ch17, ch18, ch20. Includes 2 mathematical model speculations, 1 hypothesis (EuroFlow), 7 speculations, 10 open questions. Motivated by HSAT2 research.],
  kind: table,
) <tab:hypothesis-registry-2026-05-02-hsat2-phase4-completion>
] // end landscape page

=== Entries Added 2026-05-02: MtDNA Predisposition and ADHD Shared Substrate

Motivated by:  (haplogroup symptom modulation),  (anomalous variant distribution, two cohorts),  (family relative risk),  (haplogroup U protective in ADHD, n > 7,000),  (systematic review),  (cybrid functional impairment),  (null onset predisposition review),  (CDR reserve capacity framing).

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Mitochondrial Reserve Threshold as ME/CFS Predisposition],
    [S], [0.25],
    [Inherited haplogroup reduces reserve capacity; viral trigger cannot be resolved below threshold → persistent hypometabolic state. (a) At-risk relatives show lower SRC by Seahorse at baseline. (b) Higher ME/CFS conversion rate in low-SRC individuals after infection. (c) Reserve-enhancing interventions during acute infection reduce conversion.],
    [Prospective cohort (ME/CFS first-degree relatives + IM cohort). Baseline Seahorse PBMC SRC + haplogroup + NDUFAF2/UCP2. 12-month follow-up. Feasible with existing IM cohorts if PBMCs cryopreserved. No study done.],
    [Ch.13 @spec:mtdna-reserve-threshold; Ch.25b @oq:baseline-reserve-prospective],

    [MtDNA Haplogroup Symptom Modulation Without Onset Predisposition],
    [S], [0.45],
    [Haplogroups J/U/H modulate symptom cluster expression in established ME/CFS without affecting onset susceptibility. Haplogroup H will correlate with higher DSQ-PEM subscale scores vs J/U patients matched for duration and severity in independent cohort (n ≥ 300).],
    [Independent ME/CFS cohort with whole-mtDNA sequencing + DSQ-PEM symptom subscale. Billing-Ross 2016 (n=193) replicated in direction but not individual markers. Replication needed.],
    [Ch.14d @spec:mtdna-haplogroup-symptoms],

    [Haplogroup U as Shared ADHD--ME/CFS Mitochondrial Modifier],
    [S], [0.20],
    [Haplogroup U protective in ADHD (Chang 2020, n > 7,000) and symptom-modifying in ME/CFS (Billing-Ross 2016) — same haplogroup, cross-disease modifier. (a) ADHD-comorbid ME/CFS patients will show different haplogroup distribution vs non-ADHD ME/CFS patients, with haplogroup U depleted in non-ADHD group.],
    [Single cohort study: ME/CFS + ADHD comorbidity status + whole-mtDNA sequencing. No such study exists. Haplogroup U overlap is single cross-study data point.],
    [Ch.14d @spec:haplogroup-u-adhd-mecfs],

    [Maternal Inheritance Clustering in ME/CFS: Untested],
    [OQ], [---],
    [If maternal clustering exceeds paternal in ME/CFS families, mtDNA-mediated predisposition gains mechanistic support. If equivalent, nuclear or epigenetic transmission is comparatively more plausible. Reportable from existing pedigree databases (Utah Population Database, UK Biobank).],
    [Pedigree analysis of ME/CFS family registries. Albright 2011 (n=811) did not separate maternal/paternal. Feasible with existing data. Not done.],
    [Ch.14d @oq:maternal-inheritance-clustering],

    [Why Do ME/CFS Patients Carry Fewer Deleterious mtDNA Variants?],
    [OQ], [---],
    [Venter 2019 (two cohorts, n=261+241): ME/CFS patients carry fewer mildly deleterious variants than controls — reverse of "damaged mtDNA" prediction. Mechanism unknown. Three candidate interpretations: selection pressure, threshold inversion, nuclear-mitochondrial mismatch. Each predicts different pattern in nuclear mitochondrial gene variants.],
    [Targeted nuclear mitochondrial gene sequencing (NDUFAF2, UCP2, FBXL4, CCPG1) in Venter 2019 cohorts. Compare nuclear variant burden in high-vs-low-mtDNA-variant-burden ME/CFS subgroups. Not done.],
    [Ch.14d @oq:mtdna-variant-distribution],

    [Prospective Baseline Mitochondrial Reserve in At-Risk Populations],
    [OQ], [---],
    [Individuals who convert to ME/CFS after infection will show lower Seahorse PBMC spare respiratory capacity at baseline vs non-converters. Feasibility shortcut: retrospective Seahorse on cryopreserved PBMCs from IM cohorts (Katz 2009 type) if specimens available.],
    [Prospective cohort: ME/CFS first-degree relatives + acute IM patients. Baseline Seahorse SRC + haplogroup. 12-month ME/CFS diagnosis follow-up. No study done. Retrospective IM biobank analysis is faster.],
    [Ch.25b @oq:baseline-reserve-prospective],

  ),
  caption: [Entries added 2026-05-02: mtDNA predisposition and ADHD shared substrate integration — 6 new environments across ch13, ch14d, ch25b. Includes 3 speculations and 3 open questions..],
  kind: table,
) <tab:hypothesis-registry-2026-05-02-mtdna>
] // end landscape page

=== Entries Added 2026-05-02 (Phase 4): MtDNA Predisposition Brainstorm Integration

Motivated by: , , , , , , .

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Haplogroup H Tight Coupling as PEM Substrate],
    [S], [0.20],
    [Haplogroup H ME/CFS patients show ≥15% greater day-2 VO2max decrement than haplogroup U/J patients matched for severity in 2-day CPET.],
    [2-day CPET with haplogroup stratification (n ≥ 80). Feasible; haplogroup from saliva DNA. Not yet done.],
    [Ch.13 @spec:haplogroup-h-pem],

    [Survivorship Bias Explains Fewer-Deleterious-Variants Anomaly],
    [S], [0.20],
    [Pediatric ME/CFS cohort (not yet filtered by survivorship) will NOT show "fewer deleterious mtDNA variants" pattern. If pediatric distribution matches controls, survivorship interpretation supported.],
    [Pediatric ME/CFS whole-mtDNA sequencing (n ≥ 100). No pediatric mtDNA study in ME/CFS exists.],
    [Ch.13 @spec:survivorship-bias-variants],

    [Dopaminergic Demand Crossover: ADHD and ME/CFS as Reserve-Ceiling Expressions],
    [S], [0.20],
    [ME/CFS cohorts show higher childhood ADHD rates than controls, concentrated in non-U/K haplogroups. WURS-25 >36 in pre-illness adults predicts ME/CFS development (OR ≥ 2.0) after viral trigger.],
    [ADHD history survey in ME/CFS cohort + haplogroup. WURS-25 in prospective post-viral cohort. Neither done.],
    [Ch.13 @spec:dopaminergic-crossover; Ch.14d @oq:wurs-risk-flag],

    [Reserve-Threshold ODE Variable (R(t))],
    [S], [0.15],
    [Fitted ODE with R(t) will reproduce bimodal ME/CFS onset age distribution (adolescent + 37-year peaks) using haplogroup-stratified R(0) and population stressor frequency, without additional parameters.],
    [Parameter calibration to published mitochondrial aging data + ME/CFS onset epidemiology. No ODE model of CDR predisposition published.],
    [Ch.13 @spec:reserve-threshold-ode],

    [Two-Hit DAG Extension: Haplogroup as Upstream Modifier Node],
    [S], [0.20],
    [Path analysis in cohort (n > 500) with haplogroup + ADHD + ME/CFS phenotype data will show non-zero indirect path: haplogroup → ADHD probability → ME/CFS cognitive-symptom severity.],
    [Requires cohort with all 4 variables co-measured. No such dataset exists. Feasible with future biobank design.],
    [Ch.13 @spec:two-hit-dag-haplogroup],

    [Migraine as Third Reserve-Ceiling Expression],
    [S], [0.15],
    [Migraine prevalence in ME/CFS elevated specifically in haplogroup H and reduced in haplogroup U, controlling for sex and duration.],
    [ME/CFS registry with haplogroup + migraine comorbidity data. Not yet done.],
    [Ch.13 @spec:migraine-reserve-bridge],

    [Long COVID ME/CFS Subset Haplogroup Prediction],
    [S], [0.20],
    [Long COVID patients meeting ICC ME/CFS criteria show haplogroup H enrichment vs non-ME/CFS Long COVID patients. Testable in RECOVER/PHOSP-COVID biobanks with stored DNA.],
    [Haplogroup determination from existing Long COVID biobank DNA + retrospective ICC ME/CFS phenotyping. Feasible with existing biobanks. Not done.],
    [Ch.13 @spec:long-covid-haplogroup],

    [Heteroplasmy Sex Asymmetry as Female-Predominance Contributor],
    [S], [0.30],
    [Female ME/CFS patients show higher heteroplasmy variance at OXPHOS-relevant mtDNA sites than male patients matched for severity, in deep-coverage (>1000×) mtDNA sequencing.],
    [Deep-coverage mtDNA sequencing with sex-stratified analysis. Existing studies (BR16, V19) used standard depth; sex-stratified heteroplasmy not reported. Feasible.],
    [Ch.14d @spec:heteroplasmy-sex-asymmetry],

    [Nuclear-Mitochondrial Mismatch as Predisposition Substrate],
    [S], [0.30],
    [ME/CFS prevalence elevated in populations with high recent maternal-paternal continental admixture vs populations with stable haplogroup-nuclear pairing.],
    [Epidemiological analysis linking admixture estimates (autosomal vs mitochondrial continental origin) to ME/CFS prevalence. Requires large multi-ethnic cohort. Not done.],
    [Ch.14d @spec:nuclear-mito-mismatch],

    [Trio Sequencing in ME/CFS Families: Maternal vs. Paternal Test],
    [OQ], [---],
    [100 affected proband + mother + father trios: if maternal-side relatives show significantly higher ME/CFS prevalence than paternal-side (p < 0.05), mtDNA predisposition hypothesis strengthened.],
    [Family trio recruitment via ME/CFS registries + saliva sequencing. Feasible within 12–24 months. Not done.],
    [Ch.14d @oq:trio-mtdna-sequencing],

    [Long-Read mtDNA Sequencing Retest],
    [OQ], [---],
    [Long-read duplex sequencing (heteroplasmy detection ≥0.1%) in n ≥ 200 ME/CFS will identify at least one structural variant or low-heteroplasmy site enriched in cases (p < 0.05 corrected). Null would confirm existing null finding with higher sensitivity.],
    [Nanopore/PacBio duplex sequencing. Existing short-read studies are the benchmark. Technically feasible; cost is decreasing.],
    [Ch.14d @oq:long-read-mtdna-retest],

    [Pathogenic mtDNA Carrier Relatives as Natural Experiment],
    [S], [0.35],
    [Asymptomatic carriers of pathogenic mtDNA mutations (low heteroplasmy) in mitochondrial disease registries show post-viral ME/CFS-like illness ≥3× general population rate.],
    [Mitochondrial disease registry survey (MitoCohort, UMDF). Retrospective; ascertainment bias risk. Not done.],
    [Ch.14d @spec:pathogenic-carrier-experiment],

    [WURS Score as Zero-Cost ME/CFS Risk Stratifier],
    [OQ], [---],
    [WURS-25 >36 predicts ME/CFS development after acute viral illness with OR ≥ 2.0 in prospective post-viral cohort (n ≥ 300, 12-month follow-up).],
    [WURS-25 at enrollment in IM/COVID prospective cohort with ME/CFS ascertainment at 12 months. Feasible; no cost beyond questionnaire administration. Not done.],
    [Ch.14d @oq:wurs-risk-flag],

    [Composite Reserve Index Including Haplogroup as Trial Stratifier],
    [S], [0.25],
    [Reserve Index (Seahorse SRC + haplogroup + post-exertional L/P ratio + mtDNA copy number) explains ≥15% of variance in 2-day CPET decrement, exceeding any single component.],
    [Assembly of composite in n ≥ 100 ME/CFS with full battery. No such dataset exists; components individually validated. Feasible with coordination.],
    [Ch.20 @spec:composite-reserve-index],

    [Post-Exertional L/P Ratio as Haplogroup-Sensitive Coupling Proxy],
    [OQ], [---],
    [Δ(L/P ratio) at 24h post 6MWT ≥2× higher in haplogroup H than U/J ME/CFS patients at matched severity.],
    [Paired plasma L/P before and 24h after 6MWT + haplogroup. Feasible with existing CPET infrastructure. Not done.],
    [Ch.20 @oq:lactate-pyruvate-haplogroup],

    [Bezafibrate for PPAR-Mediated Reserve Expansion],
    [S], [0.30],
    [12-week bezafibrate RCT: ≥10% improvement in day-2 CPET VO2max decrement vs placebo; greatest effect in haplogroup H subgroup.],
    [RCT n=60 with haplogroup stratification. Safety monitoring for myopathy and renal function. No ME/CFS trial done.],
    [Ch.18 @spec:bezafibrate-reserve],

    [Riboflavin 400 mg Dual PEM--Migraine Target],
    [S], [0.30],
    [16-week riboflavin RCT: ≥30% reduction in PEM event frequency AND migraine days vs placebo in ME/CFS with comorbid migraine. Safe; low cost; no drug interactions.],
    [RCT n=80 in ME/CFS+migraine subgroup. Feasible; riboflavin is OTC. Not done in ME/CFS.],
    [Ch.18 @spec:riboflavin-dual-target],

    [Atomoxetine/Modafinil Stratified by ADHD Comorbidity],
    [S], [0.30],
    [ADHD-comorbid ME/CFS patients (WURS-25 >36) report ≥30% greater cognitive improvement on modafinil than non-ADHD ME/CFS patients in parallel-group trial (n=100).],
    [Parallel-group trial with ADHD comorbidity as pre-specified stratification. Feasible; modafinil is available. Not done in ME/CFS with ADHD stratification.],
    [Ch.18 @spec:stimulant-adhd-stratification],

    [Haplogroup-Guided Supplement Personalization],
    [S], [0.25],
    [Haplogroup-matched vs cross-matched supplement assignment produces distinguishable difference in exercise-crash frequency (H) and bloating (U/J) at p < 0.05 in 16-week pilot.],
    [Open-label pilot n=60 stratified by haplogroup H vs non-H. Consumer haplogroup tests sufficient for pilot; research requires validation sequencing. Not done.],
    [Ch.18 @spec:haplogroup-supplement-personalization],

  ),
  caption: [Entries added 2026-05-02 (Phase 4): mtDNA predisposition brainstorm integration — 17 new environments across ch13, ch14d, ch18, ch20. Includes 13 speculations, 4 open questions..],
  kind: table,
) <tab:hypothesis-registry-2026-05-02-mtdna-phase4>
] // end landscape page

#landscape[
#figure(
  table(
    columns: (2fr, 0.4fr, 0.4fr, 3fr, 2fr, 1.5fr),
    align: (left, center, center, left, left, left),
    table.header(
      [*Claim*], [*Type*], [*Cert.*], [*Testable Prediction*], [*Proposed Test*], [*Location*],
    ),

    [Mast Cell--pDC Type-I IFN Echo Loop],
    [S], [0.15],
    [(a) MCAS+ME/CFS patients co-elevate serum CXCL8 and IFN-α2. (b) Baricitinib reduces both IFN-α and urinary N-methylhistamine in IFN-signature+MCAS subgroup. (c) pDC depletion in PBMC co-cultures reduces mast cell tryptase release on stimulation.],
    [Serum CXCL8 + IFN-α2 co-elevation study in MCAS+ME/CFS vs MCAS-negative ME/CFS. PBMC co-culture pDC depletion assay. Baricitinib as research-stage probe (not clinical recommendation).],
    [Ch.7 @spec:mast-pdc-ifn-loop],

    [Mast Cell Gene Expression Convergence Across ME/CFS, Chronic Lyme, and Bartonellosis],
    [S], [0.20],
    [(a) scRNA-seq identifies shared "chronic-pathogen-primed" mast cell cluster in ME/CFS, PTLDS, and bartonellosis absent in atopic controls. (b) MRGPRX2 expression elevated in Borrelia/Bartonella-seropositive ME/CFS. (c) MRGPRX2-modulating treatment pattern preferentially benefits stealth-pathogen-onset ME/CFS.],
    [scRNA-seq skin punch biopsy mast cells across three disease groups + atopic controls. Serology-stratified MCAS screening in ME/CFS cohort.],
    [Ch.14d @spec:mast-stealth-pathogen-convergence],

    [Low-Dose Imatinib for KIT-Driven Mast Cell Hyperplasia Subset],
    [S], [0.25],
    [ME/CFS-MCAS patients with tryptase >11 ng/mL + KIT pathway expression will show >40% symptom reduction on imatinib 100 mg/day at 6 months.],
    [Open-label pilot n=20 in tryptase-elevated, mast-cell-stabilizer-refractory ME/CFS-MCAS patients. Requires haematology specialist co-investigator. KIT D816V testing via peripheral blood.],
    [Ch.18 @spec:imatinib-kit-mast-subset],

    [tVNS as Non-Invasive Mast Cell Suppressor in MCAS+ME/CFS],
    [S], [0.30],
    [30 min daily auricular tVNS for 8 weeks in MCAS+ME/CFS will reduce urinary N-methylhistamine by >=20% versus sham; concurrent HRV increase will confirm vagal tone as mechanism marker.],
    [Sham-controlled tVNS RCT in MCAS-positive ME/CFS (n=40). Primary: urinary N-methylhistamine at 8 weeks. Secondary: COMPASS-31, MCAS flare frequency. Available devices: Parasym, NEMOS.],
    [Ch.18 @spec:tvns-mast-brake],

    [Mast Cell-Driven Lymphatic Stasis Contributing to Unrefreshing Sleep and Brain Fog],
    [S], [0.20],
    [(a) DTI-ALPS index is lower in MCAS-positive vs MCAS-negative ME/CFS. (b) DTI-ALPS improves after 12 weeks mast cell stabilization in MCAS+ but not MCAS- patients. (c) Morning cognitive performance correlates inversely with prior-night urinary N-methylhistamine.],
    [DTI-ALPS MRI in MCAS-stratified ME/CFS cohort. Pre/post mast cell stabilization MRI sub-study. Morning cognitive battery + urinary mediator diary design.],
    [Ch.15 @spec:mast-lymphatic-stasis-fog],

    [Luteolin-Quercetin-PEA Stack with Enhanced Delivery for Domain 6],
    [S], [0.35],
    [A prospective crossover trial in Domain 6-positive ME/CFS patients will show that quercetin phytosome 500 mg BID + luteolin 100 mg BID + PEA 600 mg BID reduces validated mast cell symptom scores by ≥30% vs placebo at 12 weeks; combination arm shows significant advantage over quercetin monotherapy.],
    [Randomized crossover trial: 3-component stack vs quercetin monotherapy vs placebo, 12 weeks each phase. Primary: COMPASS-31 autonomic sub-score. Secondary: urinary N-methylhistamine, symptom diary. CYP3A4 interaction monitoring.],
    [Ch.16 @spec:luteolin-quercetin-pea],

    [Procyanidin + Resveratrol as Natural Cromolyn-Mimetic Stack],
    [S], [0.15],
    [(a) Bliss synergy score >0.2 for procyanidin+resveratrol in RBL-2H3 mast cell degranulation assay. (b) Grape seed OPC 300 mg + resveratrol 250 mg daily reduces urinary N-methylhistamine by >=15% in baseline-elevated MCAS+ME/CFS at 8 weeks.],
    [In vitro degranulation synergy assay. Open-label pilot n=20 in MCAS+ME/CFS with elevated baseline mediators. Monitor CYP3A4 interactions.],
    [Ch.16 @spec:procyanidin-resveratrol-mcas],

    [Histamine-Smart Nutritional Timing (Chronobiological Rather Than Eliminationist)],
    [S], [0.40],
    [Patients on time-restricted histamine eating (10am--2pm window) will experience fewer symptom flare days per month than continuous low-histamine restriction at equivalent total histamine load, by daily symptom diary at 4 weeks.],
    [Randomized crossover: time-restricted histamine window (10am--2pm) vs continuous low-histamine restriction, 4 weeks each, daily diary, urinary mediators at baseline and end of each arm.],
    [Ch.17 @spec:histamine-timing-chrono],

  ),
  caption: [Entries added 2026-05-02: MCAS Domain 6 Phase 4 completion — 8 new environments: 7 speculations (pDC IFN loop, Lyme/Bartonella mast cell convergence, luteolin-quercetin-PEA, imatinib KIT subset, tVNS mast brake, lymphatic stasis brain fog, procyanidin+resveratrol) + 1 speculation (histamine-smart timing). Open-question environments added inline in ch25b (N-of-1 cromolyn causality, PBR28 PET-MRI disambiguation, topical cromolyn hemibody trial, Petri net domain 6 model)..],
  kind: table,
) <tab:hypothesis-registry-2026-05-02-domain6-completion>
] // end landscape page

=== Entries Added 2026-05-03: MCAS Domain 6 Review-Fix Convergence

#landscape[
#figure(
  table(
    columns: (2fr, 0.4fr, 0.4fr, 3fr, 2fr, 1.5fr),
    align: (left, center, center, left, left, left),
    table.header(
      [*Claim*], [*Type*], [*Cert.*], [*Testable Prediction*], [*Proposed Test*], [*Location*],
    ),

    [TGF-$beta$ as Unifying Explanation for NK Dysfunction],
    [S], [0.40],
    [(a) TGF-$beta$ levels and NK cytotoxicity correlate inversely within ME/CFS patients in a co-measurement study. (b) In vitro TGF-$beta$ neutralisation rescues NK cytotoxicity in ME/CFS patient samples. (c) Interventions reducing TGF-$beta$ show secondary improvement in NK function.],
    [Co-measurement study (TGF-$beta$ + NK cytotoxicity in same cohort) — no published ME/CFS study has done this. In vitro neutralisation assay in patient-derived NK cells. If TGF-$beta$ elevation is confirmed artifactual (Roerink concern), hypothesis is falsified.],
    [Ch.7 @spec:tgf-beta-rosetta],

    [Defective NET Clearance Despite Diminished NET Production],
    [S], [0.25],
    [(a) ME/CFS patients show elevated circulating NET remnants (MPO-DNA complexes, citrullinated histone H3) despite reduced ex vivo NETosis induction. (b) Serum DNase1L3 activity is reduced in ME/CFS vs healthy controls. (c) NET remnant levels correlate with thrombo-inflammatory markers (D-dimer, fibrinogen) and orthostatic intolerance severity.],
    [Parallel measurement of ex vivo NETosis induction and circulating NET remnants in same ME/CFS cohort. DNase1L3 functional assay. Correlation analysis NET remnants vs D-dimer and OI severity score.],
    [Ch.7 @spec:net-clearance-deficit],

    [Food-Triggered Non-IgE Mast Cell Activation as Contributor to ME/CFS Symptom Burden],
    [S], [0.40],
    [(a) Urinary mast cell mediators (NMH, LTE4, PGD#sub[2] metabolite) rise after controlled food challenges in ME/CFS+MCAS patients even when specific IgE is negative. (b) MRGPRX2 expression elevated in food-reactive ME/CFS vs non-reactive. (c) Elimination diet responders show mediator normalisation on paired urinary testing.],
    [Controlled food challenge with paired urinary mediator measurement in ME/CFS+MCAS patients. Intestinal biopsy MRGPRX2 immunostaining. Paired urinary mediators elimination vs rechallenge. No prospective study has been done in ME/CFS to date.],
    [Ch.14d @spec:food-mast-cell-mecfs],

  ),
  caption: [Entries added 2026-05-03: MCAS Domain 6 review-fix convergence — 3 speculations: TGF-$beta$ Rosetta Stone (Ch.7), defective NET clearance (Ch.7), food-triggered non-IgE mast cell activation (Ch.14d). These environments were added during the 12-round convergence review but had no corresponding registry entries.],
  kind: table,
) <tab:hypothesis-registry-2026-05-03-domain6-review>
] // end landscape page

=== Entries Added 2026-05-03: Legacy Migration — Cardiovascular, Endocrine, Neurological

Motivated by: LaTeX→Typst registry migration; these environments existed in chapter files but had no working registry table entries after the legacy block was removed (commit 837ad98).

#landscape[
#figure(
  table(
    columns: (2fr, 0.4fr, 0.4fr, 3fr, 2fr, 1.5fr),
    align: (left, center, center, left, left, left),
    table.header(
      [*Claim*], [*Type*], [*Cert.*], [*Testable Prediction*], [*Proposed Test*], [*Location*],
    ),

    [Bradykinin Spillover as the Mechanism of RAAS Suppression],
    [H], [0.50],
    [(a) Systemic bradykinin or kallikrein levels elevated at rest and rise disproportionately after exertion vs controls. (b) KKS blockade (icatibant) restores RAAS upregulation on orthostatic challenge. (c) RAAS suppression magnitude correlates with muscular hypoperfusion by NIRS/invasive CPET.],
    [Systemic bradykinin measurement at rest and post-exertion — never done in ME/CFS. Icatibant crossover challenge study. NIRS + RAAS co-measurement during CPET.],
    [Ch.10 @hyp:bradykinin-raas],

    [Calcium Toxicity as Primary Mechanism of Post-Exertional Malaise],
    [H], [0.50],
    [(a) Intracellular calcium elevated in ME/CFS muscle during PEM (³¹P-MRS or fluorescent probes). (b) Post-exercise sodium accumulation (²³Na-MRI) predicts PEM severity/duration dose-dependently. (c) Pharmacological Na#super[+]/K#super[+]-ATPase stimulation (MDC002) reduces/eliminates PEM.],
    [²³Na-MRI Wirth-Scheibenbogen protocol. Calcium-sensitive fluorescent probes in muscle biopsy during PEM. MDC002 trial with PEM endpoints.],
    [Ch.6 @hyp:calcium-pem],

    [Cytokine-Mediated Deiodinase Suppression],
    [H], [0.50],
    [(a) Deiodinase enzyme activity is reduced in ME/CFS patients with elevated IL-6/TNF-α, directly measured — not inferred from T3/rT3 ratios. (b) Patients with documented deiodinase suppression show low free T3 and elevated reverse T3. Falsified if DIO activity is normal despite cytokine elevation.],
    [SPINA-GD deiodinase activity index measured in ME/CFS cohorts alongside IL-6/TNF-α. Correlation analysis. Selenoprotein P autoantibody stratification (Sun 2023 assay).],
    [Ch.9 @hyp:deiodinase-suppression],

    [Post-Viral Pituitary Injury as a Structurally Distinct ME/CFS Trigger],
    [H], [0.50],
    [(a) Subgroup of post-viral ME/CFS patients shows impaired cortisol on ACTH stimulation test (secondary AI). (b) Pituitary MRI reveals structural abnormalities in this subgroup. (c) Subgroup responds to physiological hydrocortisone ≤10 mg/day. (d) Prevalence of secondary AI higher after SARS-CoV-1/2 than EBV/enterovirus.],
    [ACTH stimulation testing in post-COVID ME/CFS cohort within 12 months of onset. Pituitary MRI with gadolinium. Randomized hydrocortisone replacement trial in confirmed secondary AI subgroup.],
    [Ch.9 @hyp:postviral-pituitary],

    [Maladaptive Sickness Behavior Program],
    [H], [0.50],
    [TPJ misinterprets chronic low-grade inflammation as ongoing acute illness, chronically suppressing activity. Prediction: neuroinflammatory signal intensity (PET/MRS) correlates with TPJ underactivation amplitude within ME/CFS patients across activity challenges. Anti-neuroinflammatory interventions should partially restore TPJ activation patterns.],
    [Simultaneous TSPO-PET + fMRI effort-allocation task in same ME/CFS patients. Neuroinflammation-targeted treatment trial with fMRI endpoints.],
    [Ch.8 @hyp:maladaptive-sickness-behavior],

    [Glial Maturation Window and Pediatric Recovery],
    [H], [0.45],
    [(a) Longitudinal PET shows declining microglial activation in recovering adolescents but persistent activation in non-recovering adults with equal disease duration. (b) Recovery rates decline sharply near age 22–25, not gradually. (c) CSF sCD14/chitotriosidase normalize in recovering adolescents. (d) CSF-1R inhibition in adults mimics adolescent reset.],
    [Age-stratified longitudinal TSPO-PET in adolescent vs adult ME/CFS. CSF biomarker trajectories. Preclinical post-viral fatigue models in adolescent vs adult mice.],
    [Ch.8 @hyp:glial-maturation-window],

    [EBV-Adolescence Autoimmune Window],
    [H], [0.50],
    [(a) GPCR autoantibody titers higher in EBV-triggered adolescent-onset vs non-EBV or adult-onset ME/CFS. (b) Autoantibody trajectories differ by age at onset: adolescents show spontaneous decline, adults show persistence. (c) B cell depletion (rituximab) produces greater/longer remission in adolescents with recent EBV trigger.],
    [Comparative GPCR autoantibody panels by age at onset and EBV status. Longitudinal autoantibody tracking in Pricoco 2024-type cohorts. Early rituximab pilot in EBV-triggered adolescent ME/CFS.],
    [Ch.7 @hyp:ebv-adolescence],

  ),
  caption: [Entries added 2026-05-03: Legacy migration batch 1 — cardiovascular, endocrine, neurological. Includes bradykinin RAAS suppression (Ch.10), calcium-PEM cascade (Ch.6), deiodinase suppression (Ch.9), post-viral pituitary injury (Ch.9), maladaptive sickness behavior (Ch.8), glial maturation window (Ch.8), EBV-adolescence autoimmune window (Ch.7). Migrated from legacy LaTeX block (commit 837ad98).],
  kind: table,
) <tab:hypothesis-registry-2026-05-03-legacy-batch1>
] // end landscape page

=== Entries Added 2026-05-03: Legacy Migration — Immune, Metabolic, Integrative

#landscape[
#figure(
  table(
    columns: (2fr, 0.4fr, 0.4fr, 3fr, 2fr, 1.5fr),
    align: (left, center, center, left, left, left),
    table.header(
      [*Claim*], [*Type*], [*Cert.*], [*Testable Prediction*], [*Proposed Test*], [*Location*],
    ),

    [IL-2 Pathway in ME/CFS Pathophysiology],
    [H], [0.45],
    [(a) IL-2 levels in extracellular vesicles correlate with epigenetic IL-2 pathway dysregulation score in the same patients. (b) IL-2 receptor expression and JAK/STAT downstream signaling are abnormal in ME/CFS T cells. (c) Whether IL-2 dysfunction is cause or epiphenomenon of chronic immune activation.],
    [Co-measurement study: EV proteomics + EpiSwitch epigenetic profiling + IL-2R/JAK-STAT panel in same cohort. In vitro IL-2 stimulation assays on ME/CFS T cells.],
    [Ch.7 @hyp:il2-pathway],

    [Immune Cell Energy Starvation Creates a Viral Persistence Niche],
    [H], [0.40],
    [(a) Metabolic supplementation (D-ribose, CoQ10, MitoQ) restores ME/CFS NK and CD8+ T cell cytotoxic function in vitro. (b) Combined antiviral + metabolic support achieves greater viral clearance than antiviral alone. (c) T cell metabolic impairment (Seahorse) inversely correlates with viral clearance efficiency longitudinally.],
    [In vitro metabolic rescue killing assays (patient-derived NK/CD8 vs virus-infected targets). Combined antiviral + metabolic support RCT with pathogen-specific PCR endpoints. Seahorse metabolic flux analysis longitudinal study.],
    [Ch.6 @hyp:immune-energy-starvation-niche],

    [Homocysteine-Mediated ETC Disruption as a Contributing Mechanism],
    [H], [0.30],
    [(1) ME/CFS patients with MTHFR TT genotype show higher CSF homocysteine than CT/CC genotype. (2) CSF homocysteine levels correlate with ETC complex activity in PBMCs in the same patients. (3) MTHFR-guided B12/folate supplementation preferentially reduces fatigue in confirmed elevated CSF homocysteine patients.],
    [CSF homocysteine in MTHFR-genotyped ME/CFS cohort. Same-patient CSF homocysteine + PBMC ETC activity. Genotype-stratified B12/methylfolate supplementation trial.],
    [Ch.6 @hyp:homocysteine-etc-disruption],

    [The Multi-Level Energy Crisis and Vicious Cycle in ME/CFS],
    [H], [0.55],
    [(1) Combination interventions targeting ≥2 cycle levels produce greater sustained benefit than mono-target approaches in RCT comparison. (2) Patients with elevated intracellular muscle sodium (²³Na-MRI) show greater response to ion-homeostasis-correcting therapies. (3) Correcting sodium overload alone attenuates but does not fully resolve the cycle.],
    [Head-to-head RCT: mono-target vs multi-target intervention. ²³Na-MRI patient stratification in treatment trials. MDC002 + vascular intervention combined vs monotherapy arm.],
    [Ch.6 @hyp:vicious-cycle-integrated],

    [Chronic Exerkine Signaling Hypothesis],
    [H], [0.45],
    [(a) FGF-21 and GDF-15 levels correlate with disease severity (functional capacity, PEM threshold). (b) Successful treatment normalizes exerkine levels. (c) ME/CFS patients show blunted additional exerkine response to exercise (ceiling effect) vs healthy controls. (d) Metabotype 2 patients (highest FGF-21) have most severe metabolic symptoms.],
    [Exerkine panel (FGF-21, GDF-15, leptin, resistin) stratified by functional capacity. Exercise provocation with pre/post exerkine measurement. Longitudinal treatment-response tracking using FGF-21 as biomarker.],
    [Ch.13 @hyp:chronic-exerkine],

    [The Deconditioning Narrative as Iatrogenic Harm Multiplier],
    [H], [0.50],
    [(a) ME/CFS patients with documented deconditioning-based advice in records show greater 5-year functional decline than PEM-aware–managed patients, controlling for baseline severity. (b) Time-to-diagnosis longer under deconditioning paradigm. (c) Progression mild→severe higher in GET-managed vs pacing-from-onset cohorts. (d) Regional GET prescription rates pre-2021 correlate with regional severe ME/CFS rates.],
    [Retrospective cohort with medical record audit for deconditioning belief documentation. Natural experiment: UK vs Scandinavian pre/post-NICE 2021 guideline adoption. Time-to-diagnosis analysis by index clinical narrative.],
    [Ch.24 @hyp:deconditioning-iatrogenic],

    [Activity-Adjusted Meal Timing for Dysautonomic ME/CFS],
    [H], [0.50],
    [In a 12-week pacing intervention, patients receiving FUNCAP-informed post-prandial rest protocols should show greater reduction in post-prandial symptom severity than patients receiving generic pacing advice. Post-prandial orthostatic tolerance improves with supine/semi-recumbent positioning during meals in POTS-confirmed ME/CFS patients.],
    [Prospective pacing RCT with post-prandial symptom diary endpoints. Tilt-table test pre/post meal with posture variation. Continuous CGM + symptom tracking correlating glycemic response with dysautonomic symptoms.],
    [Ch.17 @hyp:postprandial-pacing],

  ),
  caption: [Entries added 2026-05-03: Legacy migration batch 2 — immune, metabolic, integrative. Includes IL-2 pathway (Ch.7), immune energy starvation niche (Ch.6), homocysteine-ETC disruption (Ch.6), multi-level vicious cycle (Ch.6), chronic exerkine signaling (Ch.13), deconditioning iatrogenic harm (Ch.24), activity-adjusted meal timing (Ch.17). Migrated from legacy LaTeX block (commit 837ad98).],
  kind: table,
) <tab:hypothesis-registry-2026-05-03-legacy-batch2>
] // end landscape page

=== Entries Added 2026-05-03: Legacy Migration — Speculations, Open Questions

#landscape[
#figure(
  table(
    columns: (2fr, 0.4fr, 0.4fr, 3fr, 2fr, 1.5fr),
    align: (left, center, center, left, left, left),
    table.header(
      [*Claim*], [*Type*], [*Cert.*], [*Testable Prediction*], [*Proposed Test*], [*Location*],
    ),

    [Exhausted Immune Surveillance Phenotype],
    [S], [0.35],
    [(a) Longitudinal B cell count tracking in long-duration ME/CFS shows progressive CD19+ depletion correlating with disease duration and viral titers. (b) CD19+ depletion severity predicts response to cellular immunity enhancers (cimetidine). (c) Immunomodulatory (vs immunosuppressive) interventions reverse phenotype while immunosuppression worsens it.],
    [Prospective B cell count tracking with viral titer co-measurement. Cimetidine trial with stratification by B cell count. Paired immunophenotyping (CD19+, CD3+, NK) with EBV-IgG titers.],
    [Ch.7 @spec:exhausted-surveillance],

    [Lymphocyte Reservoir Ratchet],
    [S], [0.35],
    [(a) Single-cell RNA sequencing of PBMCs from post-COVID ME/CFS detects viral transcripts in \<1% of lymphocytes. (b) Virus-positive lymphocyte fraction correlates with disease severity and duration. (c) In vitro lymphocyte activation produces detectable viral antigen release; resting cells do not. (d) Recovered ME/CFS patients show clearance of lymphocyte-associated viral RNA.],
    [10x Genomics scRNA-seq on PBMCs from post-COVID ME/CFS patients. Longitudinal viral RNA fraction tracking. B cell-depleted vs non-depleted patient viral antigen comparison.],
    [Ch.7 @spec:lymphocyte-reservoir-ratchet],

    [Meningitis as Disproportionate Neurological Threat in ME/CFS: Double Vulnerability],
    [S], [0.35],
    [(a) ME/CFS patients contracting meningitis show worse Glasgow Outcome Scale scores at 6 months vs age-matched non-ME/CFS meningitis patients. (b) Post-meningitis ME/CFS patients show greater PET microglial activation than either condition alone. (c) CSF IL-1β/TNF-α/quinolinic acid disproportionately elevated in ME/CFS during acute meningitis.],
    [Retrospective meningitis outcome registry with ME/CFS comorbidity flag. Post-meningitis TSPO-PET in ME/CFS survivors. Prospective CSF profiling during hospitalization for meningitis in known ME/CFS patients.],
    [Ch.8 @spec:meningitis-double-vulnerability],

    [Neutrophil Functional Exhaustion Hypothesis],
    [S], [0.40],
    [(a) Ex vivo stimulation with PMA/fMLP produces attenuated degranulation and ROS vs healthy controls despite normal counts. (b) Neutrophil granule protein content (intracellular flow cytometry) reduced in ME/CFS. (c) Daratumumab responders show normalization of circulating neutrophil granule proteins.],
    [Ex vivo neutrophil stimulation assay (PMA/fMLP + degranulation markers). Intracellular granule protein flow cytometry. Longitudinal profiling in daratumumab-treated patients.],
    [Ch.13 @spec:neutrophil-exhaustion],

    [Is the Oral Microbiome an Overlooked Inflammatory Reservoir in ME/CFS?],
    [OQ], [---],
    [Is periodontal disease prevalence elevated in ME/CFS? Does oral microbiome composition differ and correlate with systemic inflammatory markers? Does periodontal treatment reduce systemic IL-6/CRP or improve symptoms? Is there a severity gradient with worse periodontal status in more disabled patients?],
    [Case-control periodontal examination + oral microbiome 16S/shotgun in ME/CFS vs healthy controls. Scaling and root planing RCT with systemic CRP/IL-6 + symptom endpoints. Severity-stratified cross-sectional study.],
    [Ch.11 @oq:oral-microbiome],

    [Periodontal _P. gingivalis_ as a Contributor to ME/CFS Autoimmunity],
    [S], [0.20],
    [(a) ME/CFS patients with GPCR autoantibodies show higher _P. gingivalis_ colonisation prevalence than autoantibody-negative patients. (b) _P. gingivalis_ DNA/gingipains detectable in CSF of ME/CFS patients with neuroinflammatory features at rates exceeding healthy controls. (c) Periodontal treatment in _P. gingivalis_-positive patients reduces GPCR autoantibody titres over 6–12 months.],
    [GPCR autoantibody panel + subgingival _P. gingivalis_ PCR in ME/CFS cohort. CSF gingipain ELISA in neuroinflammatory ME/CFS. Pre/post periodontal treatment autoantibody titres.],
    [Ch.14i @spec:oral-autoimmunity],

    [The Oral Dysbiosis–Disability Vicious Cycle],
    [S], [0.30],
    [(a) ME/CFS symptom severity correlates with periodontal markers (pocket depth, attachment loss, bleeding on probing), controlling for age/smoking/diabetes. (b) Assisted oral hygiene protocols in severe ME/CFS reduce systemic CRP/IL-6 within 3–6 months. (c) Periodontal treatment in ME/CFS+periodontitis patients produces greater symptom improvement than in ME/CFS patients without periodontitis.],
    [Periodontal examination + CRP/IL-6 in severe ME/CFS. Randomized assisted oral hygiene intervention. Periodontal treatment RCT stratified by baseline periodontitis status.],
    [Ch.11 @spec:oral-dysbiosis-cycle],

  ),
  caption: [Entries added 2026-05-03: Legacy migration batch 3 — speculations and open question. Includes exhausted immune surveillance (Ch.7), lymphocyte reservoir ratchet (Ch.7), meningitis double vulnerability (Ch.8), neutrophil exhaustion (Ch.13), oral microbiome open question (Ch.11), oral autoimmunity (Ch.14i), oral dysbiosis cycle (Ch.11). Migrated from legacy LaTeX block (commit 837ad98).],
  kind: table,
) <tab:hypothesis-registry-2026-05-03-legacy-batch3>
] // end landscape page

=== Entries Added 2026-05-03: Systemic Sclerosis (SSc) and ME/CFS Integration

Motivated by: Systemic Sclerosis (SSc) and ME/CFS integration.

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [Complex III as Convergent ETC Bottleneck Across ME/CFS Triggers],
    [S], [0.35],
    [Post-viral ME/CFS, SSc-ME/CFS, and Long-COVID-ME/CFS all show reduced CyB (Complex III) expression and antimycin-sensitive respiration fraction; absent in fatigued-SSc-not-ME/CFS controls.],
    [Head-to-head Seahorse + RNA-seq of PBMCs in 4 groups. n≥30/group. Van Eeden 2023 is n=12 single-centre --- replication required.],
    [Ch.14d @spec:complex-iii-convergent-bottleneck],

    [eNOS/NOS3 Hypofunction as Shared Endothelial Substrate],
    [S], [0.40],
    [ME/CFS patients show elevated ADMA/SDMA and reduced post-occlusive reactive hyperaemia vs controls; deficit correlates with DSQ-PEM severity. L-citrulline (6 g/day, 8 weeks) improves FMD ≥1.5% absolute in the low-FMD subgroup.],
    [ADMA LC-MS assay + EndoPAT reactive hyperaemia (n≥80). Crossover citrulline trial (n≥30) in FMD-impaired subgroup. No ME/CFS NOS3 genotyping or ADMA data currently available.],
    [Ch.14d @spec:nos3-shared-endothelial-substrate],

    [Cardiac Autonomic Neuropathy as Hidden ME/CFS Phenotype],
    [S], [0.45],
    [Ewing 5-test battery in 100 ME/CFS patients will identify ≥30% with definite CAN (≥2 abnormal tests); CAN status predicts 2-day CPET VO2 decrement magnitude.],
    [Ewing battery in ME/CFS clinic cohort. Comparison to CAN in SSc (Masini 2021: 50%). No formal CAN prevalence study in ME/CFS exists.],
    [Ch.14d @spec:can-hidden-mecfs-phenotype],

    [ADRA2A Vasospasm in ME/CFS Raynaud-OI Subgroup],
    [S], [0.30],
    [ADRA2A Raynaud GWAS lead variants enriched (OR≥1.5) in ME/CFS patients with Raynaud-positive history AND OI-positive tilt test, vs ME/CFS with neither.],
    [ME/CFS GWAS data (DecodeME) + Raynaud/OI phenotype data. Two-sample MR: Raynaud genetic liability → ME/CFS risk. No ME/CFS-specific ADRA2A data currently.],
    [Ch.14d @spec:adra2a-mecfs-raynaud-oi],

    [SSc: Does PEM Occur Independent of Fibrosis?],
    [OQ], [---],
    [What fraction of SPIN/EUSTAR SSc patients meet DSQ-PEM criteria? Do PEM-positive SSc patients show the same immunometabolic signature as the van Eeden 2023 SSc-ME/CFS subgroup?],
    [DSQ-PEM or 2-day CPET in SPIN sub-cohort (n≥500). Compare CyB, IFN-I score, CAN status in PEM-positive vs PEM-negative SSc.],
    [Ch.14d @oq:pem-in-ssc],

    [IFN-I Score + CyB Two-Axis ME/CFS Stratifier],
    [OQ], [---],
    [Cluster analysis of IFN-I score + CyB expression (n≥150) yields ≥3 reproducible ME/CFS subtypes with distinct symptom profiles, validated in an independent cohort.],
    [Whole-blood ISG score + PBMC CyB qPCR in cohort study. No ME/CFS study has combined these axes.],
    [Ch.14d @oq:ifn-cyb-two-axis-stratifier],

  ),
  caption: [Entries added 2026-05-03: Systemic Sclerosis (SSc)--ME/CFS integration --- 4 speculations (Complex III convergent bottleneck, NOS3 endothelial substrate, cardiac autonomic neuropathy, ADRA2A vasospasm subgroup) and 2 open questions (PEM in SSc, IFN-I+CyB stratifier).],
  kind: table,
) <tab:hypothesis-registry-2026-05-03-ssc>
] // end landscape page

=== Entries Added 2026-05-05: HSAT2 Exosome Research Integration

Motivated by:  (Exosomal HSAT2 transmission in Ewing sarcoma),  (Serum HSATII RNA detection via TRAP-ddPCR),  (Plasma cfDNA HSAT2 detection),  (EV-associated HSAT2 DNA, not exosomal),  (Endothelial apoptotic EVs carry immunostimulatory RNAs),  (Senescence-associated retrotransposon accumulation).

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    table.header([*Title*], [*Type*], [*Cert.*], [*Testable Predictions*], [*Methods*], [*Source*]),
    
    [Exosomal HSAT2 Transmission in ME/CFS],
    [H], [0.45],
    [(a) HSAT2 RNA elevated in ME/CFS serum exosomes vs healthy controls (TRAP-ddPCR). (b) CD33+HLA-DR-- MDSC frequency correlates with exosomal HSAT2 levels. (c) AZT or reverse transcriptase inhibitors reduce exosomal HSAT2 and improve fatigue scores in RCT.],
    [Exosome isolation from ME/CFS plasma. TRAP-ddPCR HSAT2 quantification. Flow cytometry for MDSC (CD33+HLA-DR--). AZT RCT with exosomal HSAT2 endpoint.],
    [Ch.7 @hyp:exosomal-hsat2-transmission],

    [Endothelial Apoptosis-Derived EVs as Peripheral-to-Central Immune Signal Transducers],
    [S], [0.35],
    [(a) ME/CFS patients show elevated endothelial apoptosis markers (circulating endothelial microparticles, soluble E-selectin) vs controls. (b) ME/CFS plasma EVs contain higher retroelement RNA cargo (HSAT2, HERV-K, Alu, LINE-1) than control EVs. (c) ME/CFS patient EVs induce stronger TLR7/8 and RIG-I activation in reporter cell lines. (d) EV RNA content correlates with neuroinflammatory biomarkers and cognitive symptoms.],
    [Endothelial microparticle flow cytometry. EV RNA-seq for retroelement quantification. TLR7/8 and RIG-I reporter cell assays. CSF cytokine profiling. TSPO-PET for neuroinflammation.],
    [Ch.8 @spec:endothelial-apoexos-neuroinflammation],

    [HSAT2 Activation Pathways in ME/CFS],
    [H], [0.40],
    [(a) ME/CFS patient cells show elevated HSAT2 RNA levels vs healthy controls (qPCR, RNA-seq). (b) ME/CFS patients demonstrate HSF1 activation and pericentromeric hypomethylation vs controls (ChIP-seq, bisulfite sequencing). (c) ME/CFS patients show CTCF loss at pericentromeric regions vs controls (ChIP-seq). (d) HSAT2 RNA levels correlate with senescence markers (p16, p21, β-galactosidase). (e) Post-viral ME/CFS patients show higher HSAT2 levels than non-post-viral patients.],
    [HSAT2 qPCR in patient PBMCs. HSF1 and CTCF ChIP-seq. Pericentromeric bisulfite sequencing. Senescence marker flow cytometry. Viral serology stratification.],
    [Ch.12 @hyp:hsat2-activation-mecfs],

    [Vascular Dysfunction Biomarkers in ME/CFS (First Direct Evidence)],
    [H], [0.30],
    [Nunes et al.~\cite{Nunes2026endothelialsenescence} propose that acute viral infection induces endothelial dysfunction and senescence at blood-brain barrier, cerebral arteries, gastrointestinal tract, and skeletal muscle. The endothelial senescence-associated secretory phenotype (SASP) is characterized by proinflammatory, prooxidative, procoagulant, and vasoconstriction-prone properties. Critically, authors distinguish endothelial dysfunction from coagulopathy: SASP is procoagulant but does not equate to overt clotting disorder~\cite{McAlpine2026,Nunes2026}. Study: (hypothesis framework, no primary data, certainty: Low). Testable predictions: (1) senescent endothelial cells accumulate in ME/CFS/Long COVID patients; (2) SASP factors elevated in plasma; (3) immune dysfunction prevents clearance of senescent cells; (4) senolytic therapy improves symptoms.],
    [Ch.14d @hyp:nunes2026endothelialsenescence],

    [Long COVID: Vascular Biomarkers Correlate with Cognitive and Psychiatric Symptoms],
    [Clinical Finding], [0.75],
    [McAlpine et al.~\cite{McAlpine2026vascular} found that vascular biomarkers in neuropsychiatric Long COVID differ from recovered controls and acute COVID-19. Elevated endothelial adhesion markers (sL-selectin, ADAMTS13, sP-selectin, sICAM-1) and vascular reactivity proteins (fetuin, α-2 macroglobulin) characterize Long COVID vascular pathology. Importantly, coagulation markers (D-dimer, fibrinogen) did not differ from recovered controls, supporting endothelial dysfunction WITHOUT overt coagulopathy. These vascular biomarkers correlated with cognitive measures (fluency, verbal learning, memory) and psychiatric symptoms (depression, anxiety), linking endothelial dysfunction to "brain fog." Study: (n=50 Long COVID, n=29 recovered controls, n=28 acute COVID-19, certainty: Medium-High).],
    [Ch.14d @clinical-findings:mcAlpine2026-cognitive-correlations],

    [Is HSAT2 Elevation in ME/CFS Restricted to Specific Subtypes?],
    [OQ], [---],
    [Is HSAT2 elevation restricted to (1) post-viral onset patients with HSF1 activation, (2) patients with accelerated senescence signatures, or (3) patients with specific immune exhaustion phenotypes? Do unstratified case-control studies miss the signal entirely?],
    [HSAT2 measurement in pre-stratified ME/CFS cohort: post-viral vs non-post-viral, senescence-positive vs senescence-negative, immune exhaustion-positive vs exhaustion-negative. Subtype-specific reference ranges.],
    [Ch.20 @oq:hsat2-subtype-restriction],

  ),
  caption: [Entries added 2026-05-05: HSAT2 exosome research integration --- 2 hypotheses (exosomal HSAT2 transmission, HSAT2 activation pathways), 1 speculation (endothelial ApoExos), 1 open question (HSAT2 subtype restriction). No direct ME/CFS evidence; all mechanisms inferred from cancer literature.],
  kind: table,
) <tab:hypothesis-registry-2026-05-05-hsat2>
]

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    stroke: 0.5pt + gray,
    table.header([*Entry*], [*Type*], [*Certainty*], [*Testable Predictions*], [*Test Methods*], [*Source*]),

    [Severity-Independent PEM Mechanism],
    [S], [0.45],
    [(a) CPET-2 impairment occurs across all severity levels with only magnitude differences. (b) Even mild ME/CFS patients show CPET-2 deterioration. (c) Severity reflects chronicity or cumulative damage rather than PEM mechanism per se.],
    [Longitudinal 2-day CPET tracking individual patients across severity transitions. Cross-sectional severity-stratified CPET studies.],
    [Ch.5 @spec:severity-independent-pem],

    [CPET-2 Deterioration as ME/CFS-Specific Signature],
    [H], [0.60],
    [(a) ME/CFS patients show CPET-2 deterioration regardless of onset trigger. (b) Long COVID patients meeting ME/CFS criteria show CPET-2 deterioration; those not meeting criteria do not. (c) CPET-2 deterioration magnitude correlates with ME/CFS-specific biomarkers but not fatigue severity in ICF or Long COVID.],
    [Head-to-head 2-day CPET comparison: ME/CFS vs ICF vs Long COVID. Correlation of CPET-2 decline with immune/metabolic biomarkers.],
    [Ch.14f @hyp:cpet-2-deterioration-signature],

    [Distinct PEM Pathophysiology in Long COVID vs ME/CFS],
    [H], [0.50],
    [(a) Long COVID patients with self-reported PEM show NO CPET-2 deterioration. (b) Long COVID patients meeting full ME/CFS criteria will show CPET-2 deterioration. (c) Longitudinal follow-up: Long COVID patients who develop CPET-2 impairment more likely to meet ME/CFS criteria over time.],
    [Longitudinal 2-day CPET in Long COVID cohort. Molecular profiling of exercise responses in Long COVID vs ME/CFS.],
    [Ch.14d @hyp:distinct-pem-pathophysiology-long-covid],

    [Prolonged Epigenetic Recovery in PEM],
    [H], [0.50],
    [(a) Healthy controls show fewer/no DNA methylation changes at 48h post-exercise vs ME/CFS. (b) DNA methylation changes at 48h correlate with symptom severity more strongly than at 24h. (c) Extending CPET intervals to 48h shows greater recovery in ME/CFS (less CPET-2 deterioration) vs 24h intervals.],
    [Multi-timepoint epigenetic profiling (0h, 24h, 48h, 72h) post-CPET. Comparison of 24h vs 48h CPET intervals in ME/CFS.],
    [Ch.14a @hyp:prolonged-epigenetic-recovery-pem],

    [EV-Mediated Intercellular Signaling in PEM],
    [S], [0.45],
    [(a) ME/CFS patient EVs collected post-exercise induce fatigue/metabolic dysfunction in healthy animal models. (b) EV protein cargo differs between ME/CFS and other fatigue conditions even at rest. (c) Symptom severity correlates with specific EV protein concentrations rather than total EV number.],
    [EV proteomics at rest and post-exercise. Administration of patient EVs to animal models. Comparative EV studies across fatigue conditions.],
    [Ch.14a @spec:ev-mediated-intercellular-signaling-pem],

    [PEM Recovery Exceeds 24 Hours],
    [H], [0.55],
    [(a) ME/CFS patients show incomplete recovery at 24h post-CPET, incremental improvement at 48h/72h, full recovery by 7 days. (b) Healthy controls show full recovery by 24h. (c) Recovery duration correlates with baseline severity. (d) Specific molecular signatures predict time to recovery.],
    [Multi-timepoint CPET and molecular profiling (24h, 48h, 72h, 7 days). Severity-stratified cohort including bedbound patients.],
    [Ch.25b @hyp:pem-recovery-exceeds-24h],

  ),
  caption: [Entries added 2026-05-07: Exercise recovery and PEM duration integration --- 3 hypotheses (CPET-2 signature, distinct Long COVID pathophysiology, prolonged epigenetic recovery, PEM recovery >24h), 2 speculations (severity-independent PEM, EV-mediated signaling). Based on 20-paper literature review including Keller2024CPET, vanCampen2020SeverityCPET, Sharma2025EpigeneticPEM, Giloteaux2024EVExercise, Gattoni2025LongCOVIDCPET.],
  kind: table,
) <tab:hypothesis-registry-2026-05-07-exercise-recovery>
] // end landscape page

=== Entries Added 2026-05-07: TSPO PET Imaging in ME/CFS

Motivated by: LinkedIn post summarizing Michelle James (Stanford) presentation at Berlin conference on whole-body [11C]DPA-713-PET/MR imaging; 8-paper literature review including Raijmakers2021TSPOCFS (single published ME/CFS TSPO PET study, null finding), Barzon2026TSPOBBB (BBB transport confounding), VanElzakker2019TSPOReview (comprehensive review), and related studies in GWI, AD, MS, PD. Critical gap: Michelle James ME/CFS study not found in PubMed as of 2026-05-07 (conference-only or preprint).

#page(flipped: true, margin: 1.5cm)[
#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left),

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [TSPO Dual Role: Inflammation or Mitochondrial Dysfunction?],
    [S], [0.40],
    [(a) Peripheral TSPO signal (muscle, bone marrow) correlates more strongly with mitochondrial function assays than immune markers. (b) Brain TSPO signal in ME/CFS is not elevated even when peripheral TSPO is elevated. (c) Whole-body TSPO PET studies can discriminate between inflammation and mitochondrial dysfunction.],
    [Whole-body TSPO PET imaging in ME/CFS. Comparative assays: phosphocreatine recovery, ATP production vs CRP, cytokines, flow cytometry. Multi-tracer approach (TSPO, TREM1, FDG-PET for metabolism).],
    [Ch.06 @spec:tspo-dual-role],

    [BBB Transport Confounding of TSPO PET Findings],
    [H], [0.35],
    [(a) TSPO tracer brain influx rate (K1) is lower in ME/CFS vs healthy controls. (b) K1 inversely correlates with CRP/plasma cytokine levels in ME/CFS. (c) Patients with highest peripheral inflammation show lowest brain TSPO K1 values. (d) No correlation between K1-corrected brain TSPO and symptom severity.],
    [TSPO PET with K1 influx rate measurement in ME/CFS. Correlation of K1 with peripheral inflammatory markers (CRP, cytokines). Comparison of K1-corrected vs uncorrected TSPO signal. PEM flare-up longitudinal K1 measurement.],
    [Ch.14k @hyp:bbb-tspo-confounding],

  ),
  caption: [Entries added 2026-05-07: TSPO PET imaging integration --- 1 speculation (TSPO dual role), 1 hypothesis (BBB transport confounding). Based on 8-paper literature review including Raijmakers2021TSPOCFS, Barzon2026TSPOBBB, VanElzakker2019TSPOReview, Alshelh2020GWITSPO, Khaing2026LW223, Yasuno2025DPA713AD, Chaney2023TREM1MS, Lucot2022TREM1PD. Critical gap: no published whole-body TSPO PET study in ME/CFS exists in PubMed; Michelle James conference data remains unpublished.],
  kind: table,
) <tab:hypothesis-registry-2026-05-07-tspo-pet>
] // end landscape page
