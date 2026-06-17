#import "../../../../shared/environments.typ": *

=== B Cell Function and Antibodies
<sec:b-cells>

B lymphocytes produce antibodies and present antigens to T cells. The NIH deep phenotyping study provided compelling evidence for characteristic B cell abnormalities in PI-ME/CFS, though sample size (n=17) limits definitive conclusions pending replication @walitt2024deep.

==== B Cell Population Shifts: Key NIH Findings

The Walitt et al.\ study documented a specific pattern of B cell subset abnormalities that may represent a diagnostic signature:

*Increased Naïve B Cells*
Naïve B cells have not yet encountered their cognate antigen and can respond to any new threat:

    - Significantly elevated in PI-ME/CFS patients compared to controls
    - Reflects either increased production or impaired maturation
    - May indicate abnormal B cell development or survival
    - Could represent immune system “reset” following infection

*Decreased Switched Memory B Cells*
Switched memory B cells have undergone class-switch recombination and provide rapid, specific responses to previously encountered pathogens:

    - Significantly reduced in PI-ME/CFS patients
    - Suggests impaired generation of long-term humoral immunity
    - May explain susceptibility to recurrent infections
    - Could result from chronic antigenic stimulation “exhausting” the memory pool

*Interpretation: Chronic Antigenic Stimulation*
The NIH study concluded that this B cell pattern “suggested chronic antigenic stimulation” @walitt2024deep. This interpretation implies:

    - Persistent immune activation, possibly from ongoing infection or autoimmunity
    - Continuous recruitment of naïve B cells into responses
    - Depletion of the memory B cell compartment through sustained activation
    - Potential for developing autoantibodies through aberrant B cell selection

#achievement(title: [Distinct Proteomic Signatures Identify Long COVID Subtypes])[
Gao et al. @Gao2025LongCovidBiomarkers identified heterogeneous immune and proteomic signatures across Long COVID manifestations in validated Swedish and UK multi-cohort data. Compared to fully recovered individuals, long COVID patients showed impaired SARS-CoV-2 neutralising antibody responses and subtle CD8#super[+] T cell exhaustion (elevated PD-1 and TIM-3 co-inhibitory receptors on virus-specific cells). A distinct plasma proteomic signature—CCL3, CD40, IKBKG, IL-18, and IRAK1—characterized the breathlessness subtype, pointing to apoptotic-inflammatory pathways and platelet activation dysregulation as organ-specific mechanisms. These findings support stratification of Long COVID (and by extension, post-COVID ME/CFS) into immunologically distinct endotypes with different therapeutic requirements.
Study: (multi-cohort, Nature Immunology, multi-cohort validated, certainty: 0.80).
] <ach:gao2025-long-covid-biomarkers>

#open-question(title: [Naïve vs.\ Memory B Cell Imbalance])[
The NIH study found elevated naïve B cells and reduced memory B cells in PI-ME/CFS patients. Does this represent an immune system “stuck” in early activation, continuously attempting new responses but failing to consolidate immunological memory? If so, what maintains this state—persistent antigen, aberrant signaling, or microenvironmental factors? Could interventions promoting B cell maturation (e.g., targeted cytokine support, germinal center modulation) restore normal immune function and break the cycle of chronic activation?
]

==== B Cell Receptor Repertoire Skewing: The IGHV3-30 Puzzle
<sec:ighv3-30>

An unexpected and replicated finding has emerged from B cell receptor (BCR) sequencing studies: ME/CFS patients show skewed usage of the IGHV3-30 immunoglobulin heavy chain variable gene segment.

Sato et al.\ (2021) first documented this in a Japanese cohort, finding that IGHV3-30 and the closely related IGHV3-30-3 were significantly elevated in patients whose ME/CFS followed an infection-like episode @Sato2021BCR. The skewing was accompanied by specific CDR3 length enrichment and enhanced interferon-response gene expression in plasmablasts. Convergent evidence came from Lipkin's Columbia group: plasma proteomic profiling detected elevated circulating IGHV3-23/30 immunoglobulin protein in a subset of ME/CFS patients (approximately 12 of 39), suggesting excess production by expanded B cell populations @Milivojevic2020plasma.

The most rigorous examination came from Ryback and Cowan (2025), who performed deep BCR heavy chain sequencing in 25 mild/moderate ME/CFS patients, 36 severe patients, 21 healthy controls, and 28 MS patients @Ryback2025BCR. They partially replicated the IGHV3-30 skewing---but only in the mild/moderate group. Severe patients showed no skewing. Critically, the study documented a striking paradox: despite the repertoire bias, there was _no_ evidence of clonal expansion, _no_ increased somatic hypermutation, and _no_ affinity maturation. An additional finding was skewing of the IgM-to-IgG BCR ratio (more IgM-class), suggesting B cells that have not undergone class switching---a process requiring germinal centre transit.

#open-question(title: [The IGHV3-30 Paradox: Repertoire Skewing Without Adaptive Signatures])[
In classical immunology, repertoire skewing toward a specific IGHV gene indicates antigen-driven selection: a pathogen selects for B cells bearing complementary receptors, which then expand clonally and undergo somatic hypermutation. ME/CFS patients show the skewing but _none_ of the downstream signatures. This is immunologically anomalous.

Several explanations merit investigation:

    - *Preferential survival:* Cytokine signals (e.g., BAFF) in the ME/CFS milieu may preferentially support survival of naïve B cells bearing IGHV3-30 BCRs without triggering activation.
    - *Tonic BCR signaling:* IGHV3-30-expressing B cells may receive constitutive low-level signaling through polyreactivity with self-antigens or microbiome-derived molecules, keeping them alive longer without initiating a germinal centre response.
    - *Abortive immune activation:* B cells receive activation signals but lack the metabolic resources to complete germinal centre entry---connecting to the immune cell energy starvation hypothesis (Hypothesis @hyp:immune-energy-starvation-niche). This would explain both the repertoire bias and the IgM predominance (no energy for class switching).
    - *Independent convergent evidence from long COVID:* The IgM-dominant, polyreactive tissue-specific autoantibody profile in long COVID @Tatai2026TSAutoantibodies (60% IgM vs 36% in controls, persistent at 141-day follow-up) provides convergent support for failed class switching as a feature of post-infectious immune dysregulation. The IgM dominance in this study was observed in autoantibody output (the product) rather than BCR repertoire (the source) — suggesting the class-switching failure affects both the B cell pool and its antibody output.
    - *Severity-dependent loss:* The absence of IGHV3-30 skewing in severe patients may indicate that the skewed B cell population is eventually depleted by sustained immune exhaustion, mirroring the progression from B cell subset abnormalities (Walitt 2024) to severe B cell depletion (Section @sec:exhausted-surveillance).

The IGHV3-30 finding is notable because it is one of very few immune findings replicated across three independent groups using different methodologies (BCR sequencing, plasma proteomics, deep sequencing). Whether it represents a cause, consequence, or epiphenomenon of ME/CFS remains unknown.
]

#speculation(title: [Abortive B Cell Activation: Energy Starvation Stalls Germinal Centre Entry])[

*Certainty: 0.25.* Speculative synthesis linking the IGHV3-30 paradox to documented immune cell metabolic dysfunction. No direct experimental evidence connects these two findings.

The IGHV3-30 skewing without clonal expansion, somatic hypermutation, or class switching (Section @sec:ighv3-30) may represent B cells that receive an activation signal but cannot _complete_ the response. B cell activation requires massive metabolic upregulation: glycolysis must increase several-fold to fuel proliferation, and germinal centre transit demands sustained ATP production for iterative rounds of mutation and selection.

If ME/CFS immune cells have impaired bioenergetics---as documented for T cells by the Hanson group  and consistent with TRPM3-mediated calcium signaling defects \---B cells may lack the metabolic resources to complete activation. The result:

    - Antigen engages IGHV3-30-bearing naïve B cells (repertoire skewing occurs)
    - B cells initiate activation but cannot sustain the metabolic demands of germinal centre entry
    - Without germinal centre transit: no somatic hypermutation, no class switching (hence IgM predominance @Ryback2025BCR), no affinity maturation
    - B cells accumulate in an "activated-but-stalled" state

An alternative or complementary mechanism: if T cells are exhausted (documented via elevated PD-1 @walitt2024deep), they cannot provide the co-stimulation and cytokines needed for germinal centre entry. B cells activate but never receive their "go" signal.

*The severity-dependent loss explained:* Ryback found IGHV3-30 skewing in mild/moderate but not severe patients @Ryback2025BCR. If severe ME/CFS represents deeper immune exhaustion, the stalled B cells may eventually die through apoptosis---consistent with the progression from B cell subset abnormalities to B cell depletion documented in Speculation @spec:exhausted-surveillance.

*Falsification:* (a) In vitro metabolic supplementation (glucose, pyruvate, ATP precursors) of ME/CFS B cells restores normal germinal centre entry and class switching, confirming energy as the bottleneck; (b) IGHV3-30-skewed B cells from ME/CFS patients show normal metabolic profiles, ruling out energy starvation; (c) providing exogenous T cell help (anti-CD40 + IL-21) to ME/CFS B cells rescues class switching, implicating T cell exhaustion rather than B cell-intrinsic defects.
] <spec:abortive-activation>

==== Severe B Cell Depletion: Exhausted Immune Surveillance
<sec:exhausted-surveillance>

While the NIH study documented B cell _subset_ abnormalities with preserved total B cell counts, clinical observation suggests a more severe phenotype exists: profound B cell depletion with apparent immune exhaustion.

#speculation(title: [Exhausted Immune Surveillance Phenotype])[

*Certainty: 0.35.* This hypothesis is based on clinical observation and plausible mechanistic reasoning, but lacks systematic epidemiological validation. B cell depletion of the severity described has been observed, and EBV reactivation patterns are documented; however, whether this constitutes a distinct, reproducible phenotype driven by the proposed mechanism remains unconfirmed.

A subset of ME/CFS patients may progress to an “exhausted immune surveillance” state characterized by:

    - *Severe B cell depletion*: CD19+ counts at 10% of lower reference limit (e.g., 0.05 G/l vs.\ reference 0.11–0.47)
    - *Compensatory T cell elevation*: CD3+ percentage elevated (e.g., 84–85% vs.\ reference 55–83)
    - *Low NK cells*: Impaired viral surveillance capacity (e.g., 6–7% vs.\ reference 7–31)
    - *Extremely elevated viral titers*: Despite antibody production (e.g., EBV IgG 25–30$times$ upper limit)

*Proposed mechanism:*
Chronic viral stimulation (particularly EBV) drives continuous B cell differentiation into antibody-secreting plasma cells. NK cell deficiency prevents clearance of virally-infected cells, perpetuating antigenic stimulation. Terminal plasma cell differentiation progressively depletes the CD19+ B cell pool. The resulting state produces high antibody titers (EBV IgG extremely elevated) but fails to achieve viral control because:

    - Antibodies alone cannot clear intracellular infections
    - NK cells (primary viral surveillance) are insufficient
    - The system _produces_ antibodies but cannot _act_ on them

*Clinical implications:*
This phenotype may respond to immunomodulation that enhances cellular immunity (NK/T-cell function) rather than interventions that further stimulate humoral responses. Cimetidine's mechanism—blocking H2 receptors on suppressor T cells to enhance cellular immunity —aligns with this specific deficit. See Section @sec:cimetidine-antiviral-synergy for treatment considerations.

*Relationship to NIH findings:*
This extreme phenotype may represent late-stage progression of the chronic antigenic stimulation pattern identified by Walitt et al. @walitt2024deep. Where the NIH study found B cell _subset_ shifts, the exhausted surveillance phenotype shows B cell _compartment_ depletion—potentially the end-state of years of sustained activation.

*Research directions:*

    - Prospective tracking of B cell counts in long-duration ME/CFS patients
    - Correlation of B cell depletion severity with disease duration and viral titers
    - Evaluation of immunomodulatory (vs.\ immunosuppressive) interventions in this phenotype
    - Assessment of whether B cell depletion predicts response to cellular immunity enhancers

*Falsifiable:*
    + CD19+ \u{3c}0.07 G/L in ≥5% of patients with ME/CFS duration >5 years (vs \u{3c}1% of controls)
    + B cell count inversely correlates with EBV VCA IgG titer (r \< -0.4) and disease duration (r \< -0.3)
    + Response to immunomodulation (cimetidine or similar cellular-enhancing therapy) >30% greater in CD19+ \u{3c}0.07 subgroup than in CD19+-normal subgroup
    + NK percentage \u{3c}7% and CD3+ >83% co-occur with CD19+ \u{3c}0.07 in >75% of depleted cases. Falsified if CD19+ depletion is not associated with these specific immunological correlates.
] <spec:exhausted-surveillance>

==== Autoantibodies in ME/CFS

Multiple autoantibodies have been identified in ME/CFS patients:

*Anti-Nuclear Antibodies (ANA)*
Early research by Nishikai (2007) established that antinuclear antibodies are present in 15–25% of CFS patients using indirect immunofluorescence with HEp-2 cells @Nishikai2007. The ANA titers were generally low and showed heterogeneous immunofluorescent staining patterns. Additionally, Nishikai's group identified autoantibodies to a 68/48 kDa protein in 13.2% of CFS patients compared to 0% of healthy controls ($p < 0.05$), with these autoantibodies more common in patients with hypersomnia and difficulty concentrating @Nishikai2007. Key characteristics include:

    - Present in 15–25% of ME/CFS patients (compared to 5–10% of healthy individuals)
    - Usually low titer
    - Various patterns (homogeneous, speckled, nucleolar)
    - Clinical significance unclear, though specific autoantibodies may correlate with cognitive symptoms

*G-Protein-Coupled Receptor (GPCR) Autoantibodies*
Autoantibodies targeting G-protein-coupled receptors represent one of the most actively investigated areas of ME/CFS research, with substantial evidence supporting their role in disease pathophysiology.

==== Initial Discovery and Prevalence
The foundational study by Loebel et al.\ (2016) established the presence of GPCR autoantibodies in ME/CFS @Loebel2016. In a cohort of 268 ME/CFS patients, 29.5% had elevated autoantibodies against $beta_2$-adrenergic, M3 muscarinic, or M4 muscarinic receptors compared to healthy controls. This study provided the first systematic evidence that receptor-targeting autoantibodies might contribute to ME/CFS pathophysiology.

Azcue et al.\ (2026) confirm and extend these findings in a comprehensive study ($n=59$ ME/CFS, $n=96$ PCC, $n=36$ HCs) using CellTrend ELISA with concurrent autonomic (COMPASS-31, Sudoscan, hemodynamic tests, HRV) and cognitive (7 domains) assessment @Azcue2026gpcr. ME/CFS patients showed significantly higher $beta_2$-adrenergic AAb titers compared to both PCC patients and HCs ($F_{2,186}=3.15$, $p=0.046$). Distinct AAb profiles were observed between ME/CFS and PCC, with ME/CFS characterized by higher $beta_2$-adrenergic AAbs and PCC by a trend toward elevated M3 muscarinic AAbs. These profile differences suggest that the immunological mechanisms driving autoantibody production may differ between post-infectious conditions, consistent with the broader finding that PCC and ME/CFS share overlapping but not identical pathophysiology (Section @sec:cross-disease).

==== Validation Studies
Bynke et al.\ (2020) validated these findings in two Swedish cohorts . Strikingly, 79–91% of ME/CFS patients had at least one elevated autoantibody compared to only 25% of healthy controls. A critical finding was that no autoantibodies were detected in cerebrospinal fluid, suggesting peripheral rather than intrathecal production and indicating that these autoantibodies likely originate from systemic B cells or plasma cells rather than CNS-resident immune cells.

==== Correlation with Symptom Severity

#achievement(title: [Quantitative GPCR Autoantibody-Symptom Correlation])[
Sotzny et al.\ (2021) demonstrated dose-response relationships between GPCR autoantibody concentrations and clinical measures in infection-triggered ME/CFS patients . Autoantibody levels correlated quantitatively with fatigue severity, muscle pain intensity, cognitive impairment, gastrointestinal symptoms, and autonomic dysfunction measures. While these quantitative correlations are consistent with causation, this cross-sectional evidence does not establish that autoantibodies cause symptoms. However, the dose-response relationship and subsequent mechanistic findings (Hackel 2025) strengthen the case for a causal role.
] <ach:gpcr-correlation>

#warning-env(title: [Replication Status: Partially Replicated])[
GPCR autoantibodies in ME/CFS have been detected by multiple groups (Loebel 2016, Bynke 2020, Sotzny 2021), but Vernino 2022 failed to replicate in POTS using standard ELISA, raising assay specificity concerns. The CellTrend ELISA platform used in most positive studies has been questioned. Dose-response correlations (Sotzny 2021) have not been independently replicated.
]

==== Downstream Mechanisms: Monocyte Dysfunction
Recent work by Hackel et al.\ (2025) elucidated how GPCR autoantibodies might cause symptoms . In 24 post-COVID ME/CFS patients compared to 12 controls, autoantibodies were shown to mediate inflammatory and neurotrophic cytokine production via monocyte activation. Specifically, autoantibody binding upregulated MIP-1$delta$, PDGF-BB, and TGF-$beta$3 production. This study provides a mechanistic link between circulating autoantibodies and the downstream inflammatory cascade characteristic of ME/CFS.

==== Therapeutic Targeting: Immunoadsorption
The autoantibody hypothesis has been tested therapeutically through immunoadsorption, which non-selectively removes IgG from plasma. Scheibenbogen et al.\ (2018) conducted an initial pilot study treating 10 post-infectious ME/CFS patients with elevated $beta_2$-adrenergic receptor antibodies . 70% showed rapid improvement during treatment, and 30% sustained moderate-to-marked improvement at 6–12 months follow-up.

#achievement(title: [Autoantibody Removal Produces Clinical Improvement])[
Stein et al.\ (2025) treated 20 post-COVID ME/CFS patients with five immunoadsorption sessions, reducing IgG by 79% and $beta_2$-adrenergic receptor autoantibodies by 77% . 70% (14/20) were classified as responders with $gt.eq$10 point improvement in SF-36 Physical Function score, with benefits sustained to 6 months. This represents the strongest evidence to date that autoantibody removal can produce clinically meaningful improvement in ME/CFS.
] <ach:immunoadsorption>

#warning-env(title: [Replication Status])[
Open-label pilot study (Stein 2025, n=20) with no control arm. Placebo effects from an invasive multi-session procedure cannot be excluded. An earlier pilot (Scheibenbogen 2018, n=10) showed similar response rates, but both are from the same Berlin research group. Blinded, sham-controlled trials are essential before efficacy can be established.
]

The mechanistic basis for why IgG removal produces clinical benefit has been clarified by Liu et al.\ (2026) @Liu2026IgGcomplexes, who demonstrated that IgG immune complexes purified from ME/CFS patient sera enter endothelial cells, induce mitochondrial fragmentation, and trigger IL-1$beta$ secretion. This provides a direct pathogenic mechanism for circulating IgG: immune complex deposition on microvasculature causes endothelial injury and metabolic disruption. The mitochondrial effects are discussed in @ch:energy-metabolism (@sec:igg-mito-disruption), and the vascular consequences in @ch:cardiovascular (@sec:igg-endothelial).

==== Therapeutic Targeting: Plasma Cell Depletion
Fluge et al.\ (2025) took a different approach by targeting the cellular source of autoantibodies . In an open-label pilot study, 10 female ME/CFS patients received daratumumab, an anti-CD38 antibody that depletes plasma cells (the terminally differentiated B cells responsible for sustained antibody production). 60% (6/10) showed marked improvement, with SF-36 Physical Function scores increasing from 25.9 to 55.0 (p=0.002). Responders achieved near-normal function with SF-36 scores of 80–95. Notably, low baseline NK-cell count predicted non-response, suggesting patient selection criteria may be important. This study suggests that long-lived plasma cells, rather than B cells themselves, may be the critical source of pathogenic autoantibodies.

==== Therapeutic Targeting: Autoantibody Neutralization
Hohberger et al.\ (2021) reported a case of BC007, a DNA aptamer that directly neutralizes GPCR autoantibodies . A Long COVID patient with elevated GPCR autoantibodies received a single 1350mg intravenous dose. Autoantibodies were neutralized within hours, with dramatic clinical improvement: fatigue normalized, brain fog resolved, taste sensation was restored, and retinal microcirculation improved on optical coherence tomography angiography. Effects were sustained at 4-week follow-up. This proof-of-concept case demonstrates that direct autoantibody neutralization can produce rapid symptomatic improvement.

==== Methodological Controversies
The GPCR autoantibody field faces important methodological challenges. Vernino et al.\ (2022) attempted to replicate autoantibody findings in postural orthostatic tachycardia syndrome (POTS) using standard ELISA methodology . In 116 POTS patients versus 81 healthy controls, they found no differences in GPCR autoantibody concentrations. Moreover, 98.3% of POTS patients and 100% of controls had $alpha_1$-adrenergic receptor antibodies above the detection threshold, raising questions about assay specificity. The authors concluded that CellTrend ELISAs (used in most positive studies) may lack diagnostic value for POTS.

Adding to the mixed autoantibody picture, Lukáčová et al. (2025) detected autoantibodies against α1- and β1-adrenergic receptors in POTS patients using ELISA, but found no correlation with clinical severity or hemodynamic parameters — further evidence that even when GPCR autoantibodies are detectable, their pathogenic contribution to POTS symptoms is uncertain @Lukacova2025autoab.

This methodological critique highlights several unresolved issues:

    - Whether detected autoantibodies are functionally pathogenic or merely epiphenomenal
    - The appropriate control populations and cutoff values
    - Whether ELISA-detected antibodies reflect the same populations as functionally active autoantibodies
    - The need for functional assays beyond binding detection

The most extensive autoantibody study to date substantially deepened these concerns. Germain et al.\ (2025) screened 172 participants using two orthogonal high-throughput platforms---REAP (Rapid Extracellular Antigen Profiling, covering 6,183 human exoproteome proteins) and Luminex (1,134 autoantigens)---for a total of 7,542 antibody-antigen interactions . The result was a complete null: no autoantibody differed between ME/CFS patients and controls at any statistically meaningful threshold (no $q$-value below 0.68 after Benjamini-Hochberg correction). GPCR-specific targets---including $beta_1$, $beta_2$, and $beta_3$-adrenergic receptors and muscarinic M1--M4 receptors---were all negative. The one notable secondary finding was elevated reactivity against EBV gp42 and HSV-1 gL in ME/CFS patients, consistent with herpesvirus reactivation rather than autoimmunity.

#limitation(title: [Germain 2025: Technical Caveats for GPCR Autoantibody Detection])[
The REAP platform displays extracellular protein domains on yeast surfaces. GPCRs are multi-pass transmembrane proteins whose pathogenically relevant epitopes may span multiple extracellular loops in a conformational arrangement that cannot be recapitulated by displaying individual domains. If the CellTrend ELISA detects antibodies against conformational epitopes absent from the REAP library, the two platforms are testing different hypotheses. Additionally, the Germain cohort comprised long-duration pre-COVID ME/CFS (mean 11--14 years); autoantibody profiles might differ in post-COVID ME/CFS or early-onset disease. However, the Luminex platform---which uses full-length proteins on beads---also found no signal, weakening the conformational-epitope explanation.
]

#open-question(title: [GPCR Autoantibody Pathogenicity])[
While correlational and early therapeutic evidence supports a role for GPCR autoantibodies in ME/CFS, definitive proof of causality remains elusive. The Vernino et al.\ failed replication in POTS raises important questions: Are the autoantibodies detected by current assays the same as those causing symptoms? Do healthy individuals harbor similar autoantibodies that only become pathogenic under certain conditions (e.g., infection, inflammation)? Would more specific functional assays—measuring receptor activation or internalization rather than mere binding—better identify pathogenic autoantibodies? Resolution of these questions will determine whether autoantibody-targeted therapies become a mainstay of ME/CFS treatment.

*Key methodological gap:* No study has run the same ME/CFS samples through CellTrend ELISA and REAP/Luminex platforms in parallel. If ELISA detects IgG1-dominant autoantibodies while REAP favors IgG4 epitopes (or vice versa), the discrepancy between Azcue/Loebel/Sotzny positive results and Germain 2025 null results would be explained by isotype specificity rather than assay unreliability. A single head-to-head study with isotype subclass discrimination could resolve this conflict and determine whether GPCR autoantibodies are pathogenic variables or measurement artifacts.
]

#open-question(title: [IgG4-to-IgG1 Isotype Shift as Disease Progression Marker])[
The methodological conflict between ELISA-based GPCR autoantibody studies (positive: Loebel 2016, Sotzny 2021, Azcue 2026) and high-throughput platforms (null: Germain 2025 REAP/Luminex, Vernino 2022 standard ELISA) has at least four explanations:
- ELISA detects non-specific low-affinity binding not captured by higher-stringency platforms (assay artifact). This is the most parsimonious explanation — supported by Vernino's 100% control positivity rate with the same ELISA methodology.
- REAP misses conformational epitopes requiring native GPCR structure (platform limitation)
- Cohort differences: Germain studied long-duration chronic ME/CFS (11--14 years) in which autoantibodies may have naturally resolved (natural history)
- Isotype subclass differences: ELISA captures total IgG (including both IgG4 and IgG1) while REAP may favor one subclass over another (biological signal)

This open question focuses on the fourth possibility, which is the least tested and most novel, but readers should note that the non-specific binding explanation is both the simplest and most consistent with the Vernino control data. Testing strategy: a head-to-head comparison of the same ME/CFS samples across CellTrend ELISA, REAP/Luminex, and functional receptor assays (calcium flux, beta-arrestin recruitment) with IgG subclass discrimination would simultaneously test all four explanations. If CellTrend ELISA signals fail to correlate with functional receptor activity, the non-specific binding explanation is confirmed and the isotype shift hypothesis is falsified. Falsifiable — unlike prior versions that could accommodate any outcome.

*Certainty: 0.22.* No existing IgG subclass data for GPCR autoantibodies in ME/CFS. IgG4 dominance in early post-infectious autoimmunity has precedent in pemphigus and myasthenia gravis but not ME/CFS. This is the least parsimonious of four explanations and is presented for research completeness, not as a preferred model.
] <oq:igg4-igg1-isotype-shift>

#hypothesis(title: [GPCR Autoantibody-Based Autonomic Phenotyping Defines Treatable ME/CFS Subtypes])[
*Certainty: 0.40.*
The combination of GPCR autoantibody profiles ($beta_2$, M1, M3, M4 titers) with autonomic testing (HRV, tilt-table, COMPASS-31) may define biologically distinct ME/CFS subtypes with differential treatment responses @Azcue2026gpcr @Sotzny2021:
- *$beta_2$-dominant:* High $beta_2$-adrenergic AAbs, reduced HRV, POTS phenotype → candidates for beta-blocker trials or immunoadsorption
- *M3-dominant:* High M3 muscarinic AAbs, orthostatic intolerance, vagal dysfunction → candidates for vagal stimulation (tVNS) or anticholinergic modulation
- *M1/M4-low cognitive:* Low M1/M4 AAbs, significant cognitive impairment → candidates for cognitive remediation (AAb-mediated cognitive protection absent)
- *Autoantibody-negative:* No elevated GPCR AAbs → alternative pathophysiology (metabolic, viral persistence, neuroinflammatory)

The therapeutic implication is that autoantibody-based stratification may improve treatment response rates compared to unselected ME/CFS cohorts, though this has not been tested: Stein 2025 immunoadsorption enrolled only $beta_2$-AAb-positive patients (70% responded in that pre-selected cohort) and Fluge 2025 daratumumab enrolled unselected patients (60% responded, with NK-cell count predicting response rather than AAb status). Neither study tested whether AAb-based stratification adds predictive value beyond what unselected treatment achieves.

*Falsifiable prediction:* A prospective stratified trial ($n >= 150$) comparing autoantibody-matched vs mismatched treatments will show higher response rates in matched arms ($beta_2$-dominant → immunoadsorption > tVNS; M3-dominant → tVNS > immunoadsorption).

*Limitations:* Single GPCR AAb measurement paper with comprehensive autonomic phenotyping (Azcue 2026, $n=59$). Subtype definitions provisional — cluster analysis not yet performed on AAb + autonomic + cognitive data. Certainty lowered to 0.40 (from initial draft 0.50) because: (a) the four-subtype taxonomy is constructed from a single dataset without formal clustering, (b) no treatment-response data exist for any of the proposed stratified indications, (c) Germain 2025 null raises fundamental questions about which detection platform defines "autoantibody-positive," and (d) CellTrend ELISA specificity concerns unresolved. The hypothesis is testable but currently rests on a single correlation study.
] <hyp:gpcr-aab-autonomic-phenotyping>

==== Passive Transfer Evidence: IgG Pathogenicity Established in Animal Models
<sec:passive-transfer-igg>

The causal question—do autoantibodies actually cause symptoms, or are they bystander products of immune dysregulation?—has been partially answered by passive transfer experiments in four independent research groups.

#achievement(title: [IgG Passive Transfer Reproduces Symptomatology: Four Independent Groups])[
Four independent groups (2021--2026) have demonstrated that purified IgG from patients with fibromyalgia or long COVID reproduces symptomatology when transferred to mice, establishing that circulating IgG is sufficient to cause multiple symptom domains:

    - *Goebel et al.\ (2021)* --- fibromyalgia IgG ($n=8$ patients) produced mechanical and cold hypersensitivity, reduced locomotion, and reduced grip strength in recipient mice @Goebel2021passiveTransferFM. IgG accumulated in dorsal root ganglia (DRG) and activated satellite glial cells (SGC). IgG-depleted serum had no effect, confirming the immunoglobulin fraction as the active component.
    - *Mignolet et al.\ (2026)* --- long COVID IgG ($n=13$ patients; Université de Namur / CHU Liège) produced transient mechanical allodynia and thermal hyperalgesia in recipient mice @Mignolet2026passiveTransferLC. IgG accumulated in lumbar DRG colocalising with nociceptive and proprioceptive neurons. No cognitive impairment, anxiety, neuroinflammation, or astrogliosis was observed.
    - *Chen et al.\ (2026)* --- pooled long COVID IgG (UMC Utrecht / Amsterdam UMC) produced pronounced, persistent mechanical hypersensitivity @Chen2026igGLongCOVID. IgG from the same patients 2 years later (still symptomatic) reproduced allodynia, demonstrating that pathogenic IgG persists for at least 2 years in symptomatic patients. GFAP activation indicated astrocyte response and neuroinflammation. Patient subgroups identified by GFAP/NFL/IFN-$beta$ biomarkers.
    - *Santos Guedes de Sá et al.\ (2026)* --- long COVID IgG ($n=55$ LC, protein array $gt 21{,}000$ targets; Yale / Mount Sinai) produced fatigue-like behavior, balance/coordination loss, thermal hyperalgesia, and reduced intraepidermal nerve fibre density in recipient mice @SantosGuedes2024autoantibodiesLC. Published in Cell after peer review. Proteomic confirmation of >70 CNS/PNS autoantigens (MED20, USP5 top targets). IgG crossed the blood-brain barrier (5% at day 5). Abnormal neuronal activation in brain regions for pain, fatigue, memory, and emotional regulation. Three independent groups reported similar findings (including Chen et al.). Certainty: 0.80 for Santos Guedes 2026 as a standalone publication (Cell peer review + independent replication by Chen et al.), but the ME/CFS-extrapolated claim that IgG is pathogenic in ME/CFS is rated at 0.65 (see Study line below) reflecting the complete absence of ME/CFS-specific passive transfer data and the Germain 2025 null.

Effect was abolished by IgG depletion in all studies; Fc-fragment digestion (papain) further confirmed Fc-region-dependent effector function in Mignolet 2026 @Mignolet2026passiveTransferLC. These controls confirm that the immunoglobulin fraction is the active component. The target tissue across studies includes DRG (three of four: Goebel, Mignolet, Santos Guedes; Chen shows mechanical hypersensitivity without reported DRG localization), with Santos Guedes additionally demonstrating CNS protein targeting (MED20, USP5) and BBB crossing (5%), expanding the anatomical scope beyond the peripheral compartment.

Study: (four independent passive transfer studies, 2021--2026, three post-viral cohorts + one fibromyalgia; certainty: 0.65, convergent behavioral + histological + proteomic evidence, but declining to 0.65 from 0.75 after adversarial review because: (a) zero studies used ME/CFS IgG — all evidence is indirect via FM/LC extrapolation, (b) the Germain 2025 comprehensive autoantibody null in n=172 ME/CFS patients is a serious counterweight, (c) the four groups converge on peripheral DRG pain transfer but CNS findings (balance/fatigue, BBB crossing) come from only Santos Guedes 2026 and require independent replication. Downgraded 0.75→0.65.)
] <ach:passive-transfer-pain>

#hypothesis(title: [Peripheral IgG--DRG Axis: Pain Without Neuroinflammation])[
The passive transfer studies support a peripheral mechanism for IgG-mediated pain: circulating IgG accesses dorsal root ganglia, binds nociceptive and proprioceptive neuron somata, and sensitises peripheral afferents without requiring central neuroinflammation or gliosis.

This model provides a mechanistic account of pain hypersensitivity in long COVID and potentially ME/CFS that is:

    - Independent of central sensitization (Mignolet 2026: no astrogliosis, no cognitive effects)
    - Dependent on intact Fc-region function (abolition by papain digestion)
    - Consistent with small fiber neuropathy findings in ME/CFS (see @sec:sfn)
    - Consistent with the non-length-dependent SFN pattern indicating DRG-level pathology @McAlpine2024sfnCOVID

The dissociation between pain transfer (consistent across all four studies) and cognitive transfer (absent in Mignolet 2026 and Chen 2026; present for balance/coordination and fatigue-like behavior in Santos Guedes 2026 @SantosGuedes2024autoantibodiesLC) suggests that different symptom domains may be mediated by distinct IgG populations with different antigen targets: DRG-targeting IgG for pain and peripheral sensitization versus CNS-protein-targeting IgG for balance, coordination, and potentially fatigue.

*Testable prediction:* ME/CFS patients with prominent pain and allodynia should show higher DRG-binding IgG by ex vivo staining of post-mortem ganglia than ME/CFS patients with predominantly fatigability and cognitive phenotypes. DRG-binding IgG levels should correlate with intraepidermal nerve fiber density (IENFD) reduction on skin biopsy.

*Treatment implication:* If pain is IgG-mediated via DRG targeting, therapies removing or neutralising IgG (immunoadsorption, IVIG, plasmapheresis) should preferentially benefit pain-predominant ME/CFS patients. Single-course apheresis may not suffice given 2-year IgG persistence (Chen 2026).

*Limitation:* Primary antibody targets in DRG remain uncharacterized in all four studies. The Germain 2025 null finding (n=172; no autoantibody signal on 7,542-antigen REAP+Luminex panel)  may indicate that DRG-binding IgG targets conformational or intracellular epitopes not captured by standard antigen arrays. Subgroup heterogeneity is expected: not all ME/CFS patients necessarily carry DRG-binding IgG.

Study: (mechanistic synthesis across four passive transfer studies; certainty: 0.55, peripheral targeting established by four groups plus CNS targeting in Santos Guedes 2026; antigen identity partially known [MED20, USP5, GPCRs]; ME/CFS-specific evidence indirect).
] <hyp:drg-igg-pain-axis>

#hypothesis(title: [DRG-IgG as Afferent-Gain Amplifier: A Peripheral Mechanism for PEM])[
The dissociation between IgG-transferred pain and absent cognitive effects in mice (Mignolet 2026 @Mignolet2026passiveTransferLC) suggests that DRG-bound IgG may function as an *afferent-gain amplifier*: by sensitising nociceptive and proprioceptive neurons below their normal activation thresholds, it causes normal interoceptive signals from exercising muscle (lactate, H+, ATP, bradykinin) to be over-reported to brainstem and hypothalamus, generating exaggerated sickness behavior, autonomic switching, and fatigue signaling — without central neuroinflammation.

Under this model, the hallmark ME/CFS feature of post-exertional malaise (PEM) reflects not a failure of central energy generation but a peripheral afferent overdrive that is amplified by IgG-mediated DRG sensitization. Autonomic symptoms (POTS, orthostatic intolerance) may also arise from over-reporting by afferents in cardiovascular and baroreceptor circuits.

*Testable prediction:* Quantitative sensory testing (QST) thresholds at baseline and after standardized exertion should show greater drops in IgG-DRG-positive ME/CFS patients than in IgG-DRG-negative patients. Microneurography (C-fiber spontaneous discharge frequency) should correlate with PEM severity within patients.

*Treatment implication:* If PEM is partly afferent-gain-mediated, therapies reducing DRG-bound IgG (immunoadsorption, IVIG, FcRn antagonists) should attenuate PEM frequency and severity, not just pain scores. Strict pacing reduces the afferent overdrive stimulus; IgG-reduction reduces the gain — they should be complementary.

*Limitation:* Mice cannot report fatigue verbally; whether the passive-transfer model produces PEM-equivalent energy limitation is unknown and requires specialized behavioral assays (forced swim, running wheel after standardized exertion). The ME/CFS-specific applicability of the long COVID passive transfer model remains to be established by direct experiments in ME/CFS-derived IgG.

Study: (cross-paper synthesis, Mignolet 2026 + McAlpine 2024 + interoception literature; certainty: 0.45, coherent mechanistic hypothesis but untested in ME/CFS-specific passive transfer; partially supported. Falsification condition: hypothesis refuted if QST threshold drop after standardized exertion is NOT greater in IgG-DRG-positive than IgG-DRG-negative ME/CFS patients, or if C-fiber discharge frequency does NOT correlate with PEM severity. No escape hatch — if both predictions fail, the amplifier model is wrong.).
] <hyp:drg-igg-pem-amplifier>

#speculation(title: [Revised Two-Compartment Model: DRG-Dominated Pain vs CNS-Mediated Balance/Fatigue])[
The Mignolet 2026 and Chen 2026 cognitive-sparing findings must be reconciled with the Santos Guedes 2026 demonstration of CNS protein targeting, BBB crossing (5%), and balance/coordination/fatigue transfer @SantosGuedes2024autoantibodiesLC @Mignolet2026passiveTransferLC @Chen2026igGLongCOVID. A parsimonious resolution: pain hypersensitivity and thermal hyperalgesia are mediated by peripheral IgG--DRG targeting (consistent across all four studies), while balance/coordination deficits and fatigue-like behavior require IgG targeting CNS proteins (MED20, USP5) that cross the BBB at low but functionally significant levels, or act at circumventricular organs where the BBB is fenestrated.

Under this revised model, the peripheral DRG and nodose ganglia (fenestrated capillaries, no BBB) are accessible to all circulating IgG and mediate pain, thermal hypersensitivity, and autonomic dysfunction across phenotypes. The CNS compartment (cortex, hippocampus) is accessible only to a subset of IgG with appropriate epitope specificity and BBB-crossing capacity (Santos Guedes 2026: 5% crossing at day 5), potentially mediating balance/coordination loss and fatigue-like behavior in a CNS-targeted patient subgroup. IgG-targeted therapies would be expected to benefit peripheral symptoms in all IgG-positive patients, while CNS symptom benefit would depend on whether pathogenic CNS-targeting IgG is present and accessible.

*Testable prediction:* In an IVIG or efgartigimod trial stratified by CNS-autoantibody positivity (MED20, USP5, or other confirmed CNS targets), CNS-positive patients show improvement in balance, coordination, and fatigue scores; CNS-negative patients show improvement only in pain and autonomic measures.

*Treatment implication:* IgG-targeted therapy response prediction requires not just "autoantibody-positive vs negative" but further stratification by CNS- vs peripheral-targeting antigen profile.

*Limitation:* The parsimony of the revised model depends on CNS-targeting IgG being a minority of total pathogenic IgG (consistent with 5% BBB crossing and pain being the most replicated transfer finding). This is speculative; direct ME/CFS passive transfer experiments with CNS behavioral outcomes are needed.

Study: (revised two-compartment model incorporating Cell-published Santos Guedes 2026 CNS findings; certainty: 0.55, strengthened by CNS targeting evidence but CNS symptom transfer requires replication beyond Santos Guedes; peripheral DRG compartment now supported by four independent groups. Falsification condition: model refuted if CNS-autoantibody-positive ME/CFS patients do NOT show greater balance/coordination/fatigue improvement after IgG depletion compared to CNS-negative patients. If CNS-positive and CNS-negative patients improve equally on all measures, the compartment distinction is clinically meaningless and the model is wrong — the "speculative" qualifier expires at CNS symptom transfer replication.).
] <hyp:two-compartment-mecfs>

#speculation(title: [Fc-Glycosylation Profile Gates IgG Pathogenicity at the DRG])[
IgG effector function depends critically on the N-glycan attached to the Fc region: pro-inflammatory glycoforms (low galactosylation, low sialylation, high fucosylation — "G0F" forms) bind FcγRIIIa with high affinity and activate macrophages and satellite glial cells (SGC) in DRG. Mignolet et al.\ (2026) @Mignolet2026passiveTransferLC and Goebel et al.\ (2021) @Goebel2021passiveTransferFM both show that Fc-fragment digestion abolishes pain transfer, confirming effector function is required. This predicts that antibody titre alone is a poor predictor of pathogenicity, and that the Fc glycoprofile determines whether DRG-binding IgG activates SGCs and sensitises neurons.

Pro-inflammatory IgG glycoforms (elevated G0F, reduced sialylation) are documented in rheumatoid arthritis, lupus, COVID-19, and ageing. If ME/CFS patients carry higher G0F IgG fractions, this could explain DRG sensitization at titers that would be non-pathogenic in healthy controls — and could account for why REAP and CellTrend ELISA studies (which measure antibody binding, not effector function) give inconsistent results.

*Testable prediction:* Fc-glycoprofiling by mass spectrometry of IgG fractions that successfully transfer pain in mice will show significantly higher G0F and lower G2F fractions than non-transferring fractions from healthy controls. ME/CFS patients should have lower sialylation index than age-matched controls.

*Treatment implication:* If Fc-glycoprofile rather than titer is the key variable, sialic-acid supplementation or intravenous immunoglobulin (which contains highly sialylated IgG) might shift the endogenous glycome toward anti-inflammatory forms.

Study: (mechanistic inference from Fc-digestion data + autoimmune Fc-glycan literature; certainty: 0.35, plausible but untested in passive transfer studies; speculative).
] <spec:fc-glycoprofile-pathogenicity>

#hypothesis(title: [Nodose Ganglion IgG Accumulation: A Peripheral Mechanism for Autonomic and GI Symptoms])[
The nodose ganglion (vagal afferent cell bodies) shares the fenestrated-capillary feature of dorsal root ganglia and therefore lacks the blood-brain barrier protection that shields cortex and hippocampus from circulating IgG. If the pathogenic IgG identified in passive transfer studies also accumulates in nodose ganglia and sensitises vagal afferents, it would provide a peripheral mechanism for autonomic and gastrointestinal symptoms that are prominent in ME/CFS: postural orthostatic tachycardia (via cardiac afferents), gastroparesis, air hunger, functional dyspepsia, and IBS-like features.

This model would unify the three cardinal extra-CNS ganglia accessible to circulating IgG (DRG, nodose, sympathetic) under a single peripheral mechanism, without invoking a separate central pathway for each symptom cluster.

*Testable prediction:* Histology of nodose ganglia in passive-transfer mice (Mignolet 2026 or Goebel 2021 model) should show analogous IgG accumulation to lumbar DRG. Vagal-afferent electrophysiology should show hyperexcitability. ME/CFS patients with autonomic phenotype should show IgG staining in nodose ganglion post-mortem.

Study: (mechanistic extrapolation from DRG passive transfer data; certainty: 0.45, fenestrated-capillary premise well-established, nodose accumulation untested; not yet replicated in any study).
] <hyp:nodose-igg-autonomic>

#open-question(title: [FcRn Antagonists as IgG-Reduction Therapy in IgG-DRG-Positive ME/CFS])[
FcRn (neonatal Fc receptor) recycles IgG by rescuing it from lysosomal degradation; blocking FcRn with antagonists (efgartigimod, approved for myasthenia gravis and CIDP; rozanolixizumab; nipocalimab) reduces total serum IgG by 60--70% within weeks, in a class-effect manner without depleting plasma cells. Since IgG-DRG pathogenicity appears Fc-dependent @Mignolet2026passiveTransferLC @Goebel2021passiveTransferFM, FcRn antagonists represent a targeted, reversible alternative to immunoadsorption.

Relevant open questions:
    - Is the DRG-binding fraction of IgG proportionally reduced by FcRn antagonism (expected yes, as FcRn is class-wide), and does DRG-bound IgG clear within the same timeframe as serum IgG?
    - Do pain and PEM scores improve proportionally to IgG reduction in IgG-DRG-positive patients?
    - Can IgG-DRG positivity (ex vivo binding assay on rodent DRG sections) serve as an enrichment biomarker for FcRn-antagonist trials?

#hypothesis(title: [Mast Cell-Targeted MMP Inhibition Protocol])[
*Certainty: 0.50.* Mast cells activate collagen-degrading MMPs via tryptase and chymase, while simultaneous mast cell stabilization and selective MMP inhibition could break the degradation cycle. ME/CFS patients with mast cell activation may benefit from low-dose doxycycline (subantimicrobial doses) combined with mast cell stabilizers (cromolyn, ketotifen). (Mechanistically sound pathway supported by cross-disease evidence from tendinopathy and connective tissue disorders; clinical precedent in rosacea and periodontal disease; mast cell activation prevalent in ME/CFS.)

*Mechanistic Rationale.* Mast cells release tryptase and chymase that activate collagen-degrading matrix metalloproteinases (MMPs), particularly MMP-3 and MMP-9. In ME/CFS, chronic mast cell activation may drive progressive connective tissue weakness through this pathway. The proposed combination therapy addresses both the cellular source (mast cell stabilization) and the enzymatic effect (MMP inhibition). Doxycycline at 20mg BID inhibits MMP-9 without significant antimicrobial effects, making it suitable for long-term use. Cromolyn (10mg TID) stabilizes mast cells by inhibiting calcium influx and degranulation.

*Testable Predictions.*
- ME/CFS patients with elevated mast cell markers (tryptase, histamine) will show reduced serum MMP-3/MMP-9 levels after 8 weeks of combination therapy
- Improvement will correlate with joint stability measures (Beighton score, joint hypermobility index) and reduced POTS severity
- Combination therapy will show synergistic reduction in connective tissue symptoms compared to monotherapies
- Serum collagen degradation markers (CTX, NTx) will decrease with treatment in responsive patients

*Clinical Implications.* If validated, this represents a targeted approach to connective tissue pathology in mast cell-activated ME/CFS. The combination addresses both upstream mast cell activation and downstream MMP-mediated collagen degradation.

*Safety Considerations.* Doxycycline at subantimicrobial doses (20mg BID) has minimal antibiotic effects but still requires monitoring for photosensitivity and GI upset. Cromolyn is generally well-tolerated but can cause local irritation. Baseline liver function tests and periodic monitoring recommended.

*Limitations.* May only benefit mast cell-activated subset; optimal dosing and timing not established; long-term safety of chronic combination therapy unknown; may require careful titration to avoid PEM triggers; individual variation in mast cell phenotype may affect response.

*Treatment Implications.* Trial protocol: cromolyn 10mg TID for 2 weeks (mast cell stabilization) then add doxycycline 20mg BID with food. Monitor mast cell markers (tryptase, histamine), MMP levels, joint stability, and symptom diaries. Discontinue if no response at 8 weeks or if adverse effects develop.
]
    - Does the 2-year IgG persistence (Chen 2026 @Chen2026igGLongCOVID) reflect long-lived plasma cell production — in which case FcRn antagonism would require continuous dosing — or DRG accumulation as a reservoir, which might respond differently?

These questions are resolvable by stratified clinical trials in IgG-DRG-positive ME/CFS patients. All FcRn antagonists currently approved for neuromuscular autoimmune disease carry infection risk and require immunological monitoring; they are not appropriate outside trial settings.
] <q:fcrn-antagonists-mecfs>

#speculation(title: [FcRn-Mediated IgG Recycling Amplifies CNS Autoantibody Exposure Beyond Initial 5% BBB Crossing])[
Santos Guedes 2026 @SantosGuedes2024autoantibodiesLC demonstrated that 5% of systemically injected patient IgG crossed the blood-brain barrier by day 5 post-injection — sufficient to produce balance/coordination loss and fatigue-like behavior. This single-pass estimate may substantially underestimate cumulative CNS exposure. The neonatal Fc receptor (FcRn) is expressed on brain endothelial cells and actively recycles IgG across the BBB, protecting it from lysosomal degradation and shuttling it bidirectionally across the endothelium. If pathogenic IgG enters the CNS at 5% per pass but undergoes FcRn-mediated recycling at each transit, the steady-state CNS concentration could be 3--10× higher than a single-pass estimate would predict, progressively accumulating over months to reach functionally significant concentrations. This mechanism provides a testable explanation for why low single-pass BBB permeability is nonetheless sufficient to produce CNS symptoms: FcRn amplifies the effective dose.

*Testable prediction:* FcRn blockade (efgartigimod or rozanolixizumab) should reduce CNS IgG levels by >70% in passive-transfer mice beyond what serum IgG reduction alone would predict, since blockade collapses the recycling amplification loop. CSF:serum IgG ratio should drop disproportionately to total IgG reduction.

*Treatment implication:* FcRn antagonists may provide CNS protection beyond simple IgG reduction — by dismantling the recycling amplifier, they could protect the CNS compartment even when serum IgG is only partially reduced. This distinguishes FcRn blockade from immunoadsorption, which only transiently lowers serum IgG without altering CNS recycling kinetics.

*Limitation:* FcRn expression and kinetics at the human BBB are poorly characterized; recycling amplification has been demonstrated primarily at the blood-placenta and gut barriers. CNS FcRn may serve protective functions (e.g., clearing immune complexes from the brain); blocking it could have unanticipated consequences. The concept is supported by FcRn blockade efficacy in CNS-autoantibody diseases (myasthenia gravis, NMDAR encephalitis) but CNS-specific kinetic data are absent.

Study: (mechanistic inference from Santos Guedes 2026 BBB crossing data + FcRn biology; certainty: 0.30, downgraded from 0.45 after adversarial review because: the quantitative 3--10× amplification factor is extrapolated from blood-placenta and gut barriers, not measured at the BBB; FcRn expression and kinetics at the human BBB are poorly characterized; CNS FcRn may serve protective functions making blockade unpredictable; speculative. Falsification condition: hypothesis refuted if FcRn blockade does NOT produce disproportionate CNS IgG reduction (>70% beyond serum IgG reduction) in passive-transfer mice. If CNS:serum IgG ratio remains proportional under FcRn blockade, the amplification amplifier does not exist at the BBB and the hypothesis is wrong. The "FcRn kinetics at human BBB poorly characterized" caveat expires when CNS FcRn expression and kinetics are directly measured.).
] <spec:fcrn-bbb-amplification>

#hypothesis(title: [MED20 Autoantibodies Disrupt Neuronal Transcriptional Programs Producing Central Fatigue])[
Santos Guedes 2026 @SantosGuedes2024autoantibodiesLC identified MED20 — a subunit of the Mediator complex that links transcription factors to RNA polymerase II — as one of the most highly ranked CNS autoantigens, confirmed by proteomics. MED20 is a nuclear protein not normally exposed on the neuronal surface, suggesting that autoantibodies may access it via neuronal injury, BBB breakdown, or aberrant surface expression during stress. If anti-MED20 IgG enters neurons (via FcRn-mediated transcytosis or injury-induced entry), it could physically disrupt the Mediator complex, impairing transcription of energy-metabolism and synaptic plasticity genes — producing a transcriptional "energy crisis" manifesting as the central fatigue observed in passive-transfer mice.

This hypothesis links autoantibody CNS targeting directly to the transcriptional dysregulation documented in ME/CFS peripheral blood cells (PBMCs) and provides a molecular mechanism for the fatigue-like behavior observed in Santos Guedes 2026 passive transfer — distinct from the peripheral DRG-pain mechanism demonstrated by Mignolet 2026 and Goebel 2021.

*Testable prediction:* Anti-MED20 IgG applied to iPSC-derived cortical neurons should reduce transcription of PGC-1α-regulated mitochondrial biogenesis genes and synaptic plasticity genes (BDNF, Arc) within 24 hours. MED20-positive LC/ME/CFS patients should show distinct transcriptional signatures in PBMCs compared to MED20-negative patients.

*Treatment implication:* MED20 is a novel therapeutic target — unlike GPCR antibodies (extracellular, receptor-blocking), MED20 antibodies require intracellular access for pathogenicity. This suggests two therapeutic strategies: (a) prevent IgG entry into neurons (FcRn blockade, BBB stabilization), or (b) remove MED20-specific IgG via antigen-specific immunoadsorption columns functionalised with recombinant MED20.

*Limitation:* MED20 is a nuclear protein; the mechanism by which circulating IgG accesses intranuclear targets is non-canonical and unestablished. Neuronal uptake of IgG has been documented in some models but is not a well-characterized pathway. The finding rests on proteomic confirmation of MED20 binding, not functional demonstration of transcriptional disruption. Single target identification; MED20 may be one of many convergent transcriptional disruptors.

Study: (mechanistic inference from Santos Guedes 2026 proteomics + Mediator complex biology; certainty: 0.30, downgraded from 0.45 after adversarial review because: MED20 is a nuclear protein requiring four-barrier intracellular access (BBB crossing, neuronal entry, cytoplasmic trafficking, nuclear entry) — each step unestablished. MED20 was identified by binding to a protein array, not by functional demonstration of transcriptional disruption. A parsimonious alternative: surface receptor binding in CNS circuits (already demonstrated by Santos Guedes' neuronal activation data) produces the observed effects without intracellular access. Surface-IgG vs nuclear-IgG pathogenicity must be distinguished experimentally before certainty can be raised. Falsification condition: hypothesis refuted if anti-MED20 IgG applied to iPSC cortical neurons does NOT reduce transcription of PGC-1α-regulated mitochondrial biogenesis genes (BDNF, Arc) within 24 hours under conditions where IgG uptake is independently confirmed. If surface receptor blockade alone reproduces the transcriptional changes, the nuclear entry pathway is unnecessary and the hypothesis collapses to surface-receptor pathogenesis. The "non-canonical intranuclear access" caveat expires when neuronal IgG uptake is demonstrated by co-localization microscopy — if uptake occurs but no transcriptional disruption follows, the hypothesis is wrong.).
] <hyp:med20-transcriptional-disruption>

#speculation(title: [Symptom-Symptom Autoantibody Correspondence Defines Clinical Endotypes])[
The 85% symptom-symptom correspondence in Santos Guedes 2026 @SantosGuedes2024autoantibodiesLC — where pain-phenotype mice predominantly received IgG from pain-reporting donors — suggests that autoantibody profiles are not random but correspond to distinct clinical phenotypes. Rather than a single pathogenic autoantibody, each patient carries a unique "autoantibody fingerprint" targeting complementary CNS and peripheral circuits: pain-dominant patients may have IgG predominantly targeting DRG nociceptors (low MED20, high DRG-binding IgG), while fatigue/balance-dominant patients carry IgG targeting CNS proteins (high MED20/USP5, low DRG-binding IgG), and mixed-phenotype patients carry both.

This model explains the clinical heterogeneity of post-viral syndromes without invoking separate disease entities: the same mechanism (pathogenic IgG) produces different phenotypes depending on which tissue compartment and which antigen targets are involved. If validated, unsupervised clustering of >70 CNS/PNS autoantigen reactivities should identify 3--5 distinct endotypes that map to clinical clusters with at least 75% accuracy.

*Testable prediction:* In an independent validation cohort (n≥100 LC patients), autoantibody reactivity profiles cluster into at least three groups (DRG-dominant pain, CNS-dominant fatigue/balance, and mixed) that predict phenotype with >75% accuracy. Each cluster shows distinct treatment response patterns: DRG-dominant responds to peripheral IgG reduction; CNS-dominant requires CNS-penetrant therapies.

*Treatment implication:* Autoantibody endotyping could guide therapeutic selection — IgG removal alone (immunoadsorption) for DRG-pain patients; FcRn blockade or antigen-specific immunoadsorption for CNS-fatigue patients; combination for mixed phenotypes. This moves beyond binary "autoantibody-positive" stratification to precision medicine.

*Limitation:* Endotypes are inferred from 85% pain correlation in one study; multi-phenotype clustering not yet demonstrated. Antigen targets for most of the >70 CNS/PNS autoantibodies remain unvalidated beyond MED20 and USP5. Small subgroups may be unstable in clustering analyses. Requires large independent cohorts to validate.

Study: (mechanistic inference from symptom-symptom correspondence + endotype clustering hypothesis; certainty: 0.50, 85% correspondence robust, clustering prediction untested; partially supported. Falsification condition: hypothesis refuted if unsupervised clustering of ≥70 autoantigen reactivities in n≥100 LC patients does NOT identify ≥3 clusters with ≥75% phenotype prediction accuracy, or if treatment response does NOT differ between clusters. The "unvalidated antigen targets" caveat expires when independent replication of MED20 and USP5 targets is performed. If clustering fails despite validated targets, the endotype model is wrong.).
] <spec:autoantibody-endotype-clusters>

#limitation(title: [Clinical Actionability: Research-Stage, Not Clinical Practice])[
*Certainty: n/a.* None of the IgG-targeted therapies discussed in this section — immunoadsorption, FcRn antagonists (efgartigimod, rozanolixizumab), IVIG, plasmapheresis, or antigen-specific immunoadsorption columns — are approved or clinically established for ME/CFS. FcRn antagonists are FDA-approved for myasthenia gravis and CIDP only; immunoadsorption is available only at a few research centres; antigen-specific columns functionalised with recombinant MED20 do not exist clinically. All treatment implications in this section are mechanistic hypotheses intended to guide trial design, not clinical recommendations. The IA-PACS-CFS sham-controlled RCT (n=65) found no statistically significant difference between immunoadsorption and sham on the Chalder Fatigue Scale @Pressler2024IAPACSCFSprotocol @Rucker2026WirthScheibenbogen; the Anft 2025 independent-centre study (n=12) eliminated autoantibodies without significant symptom improvement @Anft2025immunoadsorption; and the BC007 Phase II trial failed to show superiority over placebo. These negative results in ME/CFS-relevant populations must be weighed against the cross-condition passive transfer evidence from long COVID and fibromyalgia. No physician should prescribe these interventions for ME/CFS outside a registered clinical trial.
] <lim:igg-therapy-not-clinical>

#open-question(title: [DRG-IgG Immunohistochemistry as a Stratification Biomarker])[
A practical near-term research priority is to develop and validate a DRG-IgG immunohistochemistry (IHC) assay: patient serum or IgG fraction applied to fixed rodent DRG sections, stained with fluorescent anti-human IgG, and scored for binding intensity, spatial pattern (neuronal soma vs satellite glial cells), and co-localization with neuronal markers (CGRP for peptidergic C-fibers, IB4 for non-peptidergic C-fibers, NF200 for Aδ fibers).

Such an assay, if standardized, could:
    - Classify ME/CFS patients as IgG-DRG-positive vs IgG-DRG-negative to enrich clinical trials
    - Correlate IgG-DRG positivity with IENFD (skin biopsy), QST profiles, and autonomic test abnormalities
    - Serve as a pharmacodynamic biomarker: change in IgG-DRG intensity before/after immunoadsorption or FcRn antagonism
    - Provide retrospective stratification of existing trial datasets (Stein 2025, Fluge 2025, EXTINCT)

The passive transfer studies (Goebel 2021, Mignolet 2026, Chen 2026) already use this methodology; translation to a clinical biomarker assay requires standardization and validation in a prospective cohort.
] <q:drg-igg-biomarker>

*Other Receptor Autoantibodies*
Beyond GPCR autoantibodies, additional receptor-targeting antibodies have been identified:

    - *$alpha_1$-adrenergic receptor antibodies*: May affect vascular function and contribute to orthostatic intolerance
    - *Angiotensin II type 1 receptor antibodies*: May affect blood pressure regulation and fluid homeostasis

These receptor autoantibodies can exert effects through multiple mechanisms:

    - Activate receptors (agonistic), causing overstimulation and downstream signaling
    - Block receptors (antagonistic), preventing normal ligand binding and signaling
    - Induce receptor internalization, reducing cell surface receptor density
    - Modulate receptor function in complex, context-dependent ways

*Anti-Neuronal Antibodies*
Autoantibodies targeting nervous system components:

    - Anti-ganglioside antibodies
    - Anti-neuronal nuclear antibodies
    - Antibodies against ion channels
    - May contribute to neurological symptoms

Recent cryo-electron microscopy research has mapped the precise binding sites of autoantibodies targeting NMDA receptors in autoimmune encephalitis . These autoantibodies recognize specific antigenic hotspots on the GluN1 amino-terminal domain, causing receptor internalization and neurological dysfunction. While anti-NMDAR encephalitis is a distinct condition, the structural characterization of receptor-targeting autoantibodies provides a framework for understanding how similar autoantibodies identified in ME/CFS (targeting adrenergic and muscarinic receptors) might cause functional impairment through receptor modulation.

==== Immunoglobulin Levels

Serum immunoglobulin levels show variable abnormalities:

    - *IgG*: May be low (selective IgG subclass deficiency) or elevated
    - *IgA*: Sometimes reduced, particularly secretory IgA
    - *IgM*: Variable findings
    - *IgE*: May be elevated in patients with allergic features

==== Sex-Specific B Cell Findings from the NIH Study

The deep phenotyping study revealed that female patients showed distinct B cell abnormalities @walitt2024deep:

*Female Patients*
Women with PI-ME/CFS demonstrated:

    - Abnormal B cell proliferation patterns
    - Distinct white blood cell growth characteristics
    - Different inflammatory markers compared to male patients

These sex-specific findings underscore that ME/CFS may involve fundamentally different immunological processes in men and women, potentially requiring sex-specific therapeutic approaches.

