#import "../../../template.typ": *

== Master Hypothesis Table: Likelihood and Therapeutic Potential
<sec:master-hypothesis-table>

Table @tab:all-hypotheses provides a comprehensive overview of all hypotheses presented in this chapter, ranked by evidence strength and therapeutic potential. This serves as a roadmap for both researchers prioritizing investigation directions and clinicians considering experimental interventions.

// TODO: landscape

#table(
  columns: (auto, auto, auto, auto, auto, auto, auto),
  // TODO: fix columnsp{2cm}p{2cm}p{1.8cm}p{1.8cm}p{4.5cm}p{5cm}}
// caption: [Comprehensive ranking of all speculative hypotheses by evidence level, therapeutic potential, and impact on different severity levels] <tab:all-hypotheses>

[*Hypothesis*], [*Evidence Level*], [*Therapeutic Potential*], [*Benefit: Mild*], [*Benefit: Severe*], [*Explains Key Features*], [*Nearest-Term Action*],

table.cell(colspan: 7)[_*CPET-Derived Hypotheses (Objective Functional Data)*_],

[Autonomic-mitochondrial feedback loop], [Moderate], [High], [High], [Moderate], [PEM, recovery time, autonomic symptoms], [Trial: tyrosine+Tetrahydrobiopterin (BH4)+antioxidants],

[Mitochondrial turnover rate limitation], [Moderate-High], [High], [Moderate-High], [Moderate], [13-day recovery, cumulative decline, GET failure], [Urolithin A + NAD+ precursor trial],

[Exercise metabolomics-guided therapy], [Moderate], [Very High], [High], [Low], [Individual variation, treatment heterogeneity], [Post-CPET metabolomics study],

[Circadian recovery gating], [Low-Moderate], [Moderate], [Moderate], [Moderate], [Sleep dysfunction, non-restorative rest], [Chronotherapy pilot study],

[Vagal stimulation for recovery], [Low-Moderate], [Moderate], [Moderate], [Low-Moderate], [Autonomic dysfunction, inflammation persistence], [Post-exertion VNS trial],

table.cell(colspan: 7)[_*Core Mechanistic Hypotheses*_],

[Metabolic “safe mode” lock], [Moderate], [High], [Low-Moderate], [Moderate-High], [PEM, chronicity, resistance to rehabilitation], [Hypothalamic modulation interventions],

[Glymphatic clearance failure], [Low-Moderate], [Moderate], [Moderate], [Moderate-High], [Brain fog, non-restorative sleep, orthostatic symptoms], [CSF flow imaging; craniocervical assessment],

[Tryptophan/kynurenine trap], [Moderate], [Moderate-High], [Moderate], [Moderate], [Cognitive symptoms, depression, immune activation], [IDO inhibition trials],

[Vagal afferent danger signal loop], [Low-Moderate], [Moderate-High], [Moderate], [High], [Rapid symptom onset, gut-brain connection, PEM], [Vagal modulation; gut interventions],

[Purinergic signaling dysregulation], [Low-Moderate], [Moderate], [Moderate], [Moderate], [Immune dysfunction, pain, fatigue, inflammation], [P2X/P2Y receptor modulators],

[Redox compartment collapse], [Moderate], [Moderate], [Moderate], [Low-Moderate], [Oxidative stress, chemical sensitivities], [Glutathione/N-Acetylcysteine (NAC) optimization],

[Metabolic memory/epigenetic lock], [Moderate], [Low-Moderate], [Low], [Low-Moderate], [Chronicity, treatment resistance], [Epigenetic modifiers (exploratory)],

[Circadian-metabolic desynchronization], [Moderate], [Moderate], [Moderate], [Low-Moderate], [Sleep issues, energy fluctuations], [Circadian stabilization protocols],

table.cell(colspan: 7)[_*Autoimmune/Immune Hypotheses*_],

[GPCR autoantibody-driven dysfunction], [*Moderate-High*], [*Very High*], [*High*], [*Moderate-High*], [POTS, autonomic symptoms, 60% daratumumab response], [Autoantibody testing; immunoadsorption; daratumumab],

[Plasma cell sanctuary hypothesis], [Moderate], [Very High], [High], [High], [Rituximab failure vs daratumumab success, chronicity], [Anti-CD38 therapy; combined IA+daratumumab],

[Autoantibody-monocyte activation cascade], [Low-Moderate], [Moderate-High], [Moderate], [Moderate], [Inflammatory cytokines, MIP-1$delta$, PDGF-BB elevation], [Monocyte-targeted therapy; autoantibody removal],

[Ion channel autoimmunity], [Low-Moderate], [Moderate-High], [Moderate-High], [Moderate], [Autonomic symptoms, POTS, cognitive issues], [Autoantibody screening; immunoadsorption],

[TRPM3 channelopathy], [*Moderate-High*], [*High*], [*High*], [*Moderate-High*], [NK cell dysfunction, impaired immune cell calcium signaling], [TRPM3 functional testing; calcium signaling studies; pregnenolone trial (speculative)],

[Endothelial trained immunity], [Low], [Moderate-High], [Moderate], [Moderate], [Multi-system symptoms, vascular dysfunction, PEM], [Endothelial epigenetic profiling],

[Receptor internalization (not blockade)], [Low-Moderate], [Moderate-High], [Moderate], [Moderate], [Lag between Ab removal and improvement; receptor density changes], [Receptor density assays on patient lymphocytes],

[Functional vs.\ binding assay discrepancy], [Moderate], [Very High], [High], [High], [Failed replications; heterogeneous treatment response], [Develop functional autoantibody assays],

table.cell(colspan: 7)[_*Viral/Cellular Hypotheses*_],

[EBV-B cell CNS infiltration], [Low-Moderate], [High], [Moderate], [Moderate-High], [Post-EBV onset; neuroinflammation; brain fog], [CSF B cell analysis; LMP1 profiling],

[EBV-GPCR molecular mimicry], [Low], [High], [Moderate-High], [Moderate-High], [EBV trigger specificity; persistent autoantibodies], [Computational homology; cross-reactivity testing],

[Endogenous retrovirus reactivation], [Very Low], [Low], [Low], [Low], [Post-viral onset, immune activation, chronicity], [HERVs expression profiling],

[Cellular quorum sensing dysfunction], [Very Low], [Low], [Low-Moderate], [Low], [Systemic coordination loss, multi-system involvement], [Basic research needed],

table.cell(colspan: 7)[_*Metabolic Compartmentalization Hypotheses*_],

[Lactate compartmentalization disorder], [Low], [Moderate], [Low-Moderate], [Low-Moderate], [Exercise intolerance, muscle symptoms, brain lactate], [MCT function studies; dietary ketones],

[Ferroptosis susceptibility], [Low], [Low-Moderate], [Low-Moderate], [Low], [Oxidative stress, lipid peroxidation, tissue damage], [Ferroptosis inhibitors (research)],

table.cell(colspan: 7)[_*Integrated/Multi-System Hypotheses*_],

[Selective energy dysfunction], [Moderate], [High], [Moderate-High], [Moderate-High], [Preserved autonomous functions (hair, nails), impaired CNS-dependent processes; demand-response failure], [Hair follicle mito assay; CSF lactate; CNS-targeted delivery (Sec. @sec:selective-dysfunction)],

[Multi-lock integrated trap], [High conceptual], [Very High], [Variable], [Variable], [Heterogeneity, treatment resistance, chronicity], [Multi-target interventions],

table.cell(colspan: 7)[_*Cycle Dynamics Hypotheses*_],

[Vicious cycle network coupling], [Moderate], [Very High], [High], [High], [Treatment resistance, heterogeneity, why single interventions fail], [Multi-target combination trials (CoQ10+LDN); biomarker-guided selection],

[Critical transition bifurcation], [Low-Moderate], [High], [High], [Moderate], [Sudden deteriorations, non-linear progression, “tipping points”], [Longitudinal monitoring for warning signals (increased symptom variance)],

[Cycle-predominant subgroups], [Moderate], [High], [High], [High], [Treatment heterogeneity, why same treatment works for some], [Comprehensive cycle diagnostic battery; targeted interventions],

[Crash dose-response with threshold], [Moderate-High], [Very High], [Very High], [Very High], [Why small overexertion can be catastrophic, cumulative harm], [Individual VT measurement; strict envelope pacing],

[Time-dependent reversibility decay], [Low-Moderate], [High], [High], [Moderate], [Why early intervention crucial, chronic treatment resistance], [Aggressive early treatment; realistic expectation setting],

[Cycle recruitment cascade], [Low-Moderate], [Moderate-High], [Very High], [Low-Moderate], [Disease progression, why mild becomes severe without intervention], [Early pacing to prevent cascade; monitor for new cycle activation],

table.cell(colspan: 7)[_*High-Risk/Counterintuitive Hypotheses*_],

[Metabolic preconditioning (hormesis)], [Very Low], [Low (High Risk)], [Unknown], [Contraindicated], [Adaptation failure?], [NOT RECOMMENDED clinically],

[Blood flow restriction training], [Low], [Low-Moderate], [Low-Moderate], [Contraindicated], [Oxygen delivery dysfunction], [Research only; high risk],

)
// end landscape

=== How to Use This Table

==== For Researchers

*High-priority investigations* (Moderate-High evidence, testable):

    - TRPM3 channelopathy: Replication in additional cohorts; characterization of dysfunction mechanism (hypo- vs hyperfunction); correlation with symptom severity
    - Mitochondrial turnover limitation: Urolithin A intervention with repeat two-day CPET
    - Autonomic-mitochondrial loop: Multi-target combination trial
    - Exercise metabolomics: Post-CPET metabolomic profiling to identify subgroups
    - Ion channel autoimmunity: Comprehensive autoantibody screening (including anti-TRPM3)

*Medium-priority investigations* (plausible mechanisms, need preliminary data):

    - Glymphatic function: Imaging studies assessing CSF flow dynamics
    - Tryptophan trap: IDO inhibitor safety/efficacy trials
    - Vagal interventions: VNS for post-exertional recovery
    - Circadian optimization: Chronotherapy protocols

*Basic research needed* (very low evidence, high theoretical interest):

    - Cellular quorum sensing mechanisms
    - Endogenous retrovirus expression patterns
    - Ferroptosis markers and susceptibility

==== For Clinicians

*Relatively safe to trial* (assuming medical supervision and appropriate patient selection):

    - Autonomic-mitochondrial support (supplements, generally recognized as safe)
    - Mitochondrial turnover acceleration (urolithin A, NAD+ precursors have human safety data)
    - Chronotherapy/circadian stabilization (behavioral, very low risk)
    - Vagal stimulation (non-invasive, established safety profile)
    - Tryptophan metabolism support (within normal supplement ranges)

*Requires specialist supervision*:

    - Ion channel autoantibody testing and immunoadsorption
    - IDO inhibition (investigational)
    - Epigenetic modifiers

*Not recommended outside research protocols*:

    - Metabolic preconditioning/hormesis approaches (high risk of PEM)
    - Blood flow restriction training (could worsen oxygen delivery dysfunction)
    - Endogenous retrovirus interventions (purely theoretical)

==== For Patients

*Understanding evidence levels:*

    - *Very Low:* Purely theoretical speculation; interesting for research but no evidence
    - *Low:* Mechanism makes sense based on other diseases; no ME/CFS-specific data
    - *Low-Moderate:* Some indirect evidence in ME/CFS; plausible but unproven
    - *Moderate:* Multiple ME/CFS studies support mechanism; direct intervention untested
    - *Moderate-High:* Strong mechanistic support; similar interventions show promise
    - *High:* Direct evidence from ME/CFS trials (rare in this chapter, as these are speculative hypotheses)

*Severity-specific guidance:*

    - *Mild-moderate patients:* May benefit from metabolomics-guided approaches, autonomic support, circadian optimization
    - *Severe patients:* Prioritize hypotheses addressing core metabolic function (safe mode, mitochondrial turnover, glymphatic clearance); avoid any interventions requiring exertion
    - *All severities:* Multi-lock hypothesis suggests combinations may work better than single interventions

=== Qualification and Caveats

#warning-box(title: [Speculative Content])[
ALL hypotheses in this chapter are speculative to varying degrees. The evidence levels indicate relative plausibility and existing support, but even “Moderate-High” evidence hypotheses remain unproven. Therapeutic approaches derived from these hypotheses should be considered experimental and discussed with knowledgeable physicians. Patient self-experimentation carries risks, especially for severe patients where any metabolic perturbation might trigger crashes.
]
