#import "../shared/environments.typ": *

= Emerging and Investigational Therapies
<ch:emerging-therapies>

This chapter surveys emerging and investigational therapeutic approaches for ME/CFS identified through novel immunophenotyping, cross-disease mechanistic inference, and targeted pathway intervention. None of the therapies discussed have completed randomised controlled trials for ME/CFS; they are presented as mechanistically motivated research directions with explicit certainty ratings rather than clinical recommendations. Patient safety, particularly for severe and very-severe patients, and the need for rigorous clinical trial validation are emphasised throughout.

== Immune Trafficking Restoration

Recent immunophenotyping evidence demonstrates impaired CCR7-mediated immune cell trafficking in ME/CFS, with reduced CCR7 expression on monocytes and dendritic cells, reduced dendritic cell frequency, and less coordinated immune activation patterns compared to both healthy controls and long COVID @Petrov2026monocyteDC. This section examines emerging approaches to restore immune trafficking.

=== CCR7 Agonists and Chemokine Mimetics

#speculation(title: [CCL19/CCL21 Mimetics to Restore Immune Trafficking in ME/CFS])[
*Certainty: 0.35.* CCL19 and CCL21 are the endogenous chemokine ligands for CCR7 and are being developed for cancer immunotherapy (to enhance T cell trafficking to tumours) and as vaccine adjuvants (to improve dendritic cell migration). Modified chemokines (PEGylated, stabilised, or small-molecule agonists) could overcome reduced CCR7 expression in ME/CFS by increasing ligand availability @Petrov2026monocyteDC.

*Mechanistic rationale.* CCR7 is the principal receptor mediating monocyte and dendritic cell migration to lymph nodes, where antigen presentation and T cell priming occur. Impaired CCR7 expression in ME/CFS may create a trafficking bottleneck that compromises adaptive immune coordination. Increasing chemokine availability could partially compensate for reduced receptor expression.

*Safety.* Chemokine administration carries inflammatory risk — modified versions with reduced systemic effects are under development; not available for clinical use outside trials.

*Testable prediction.* CCR7 agonist will increase dendritic cell frequency in peripheral blood (mobilisation from tissues) and improve immune correlation network integration in ME/CFS patients with preserved CCR7 signalling machinery.
]

=== TRPM3-Calcium-CCR7 Axis

#speculation(title: [TRPM3 Agonists to Restore Calcium-Dependent Immune Trafficking (Untested in Monocytes)])[
*Certainty: 0.35.* TRPM3 is a calcium-permeable ion channel documented to be dysfunctional in ME/CFS NK cells @Sasso2026trpm3. Calcium signalling is required for CCR7-mediated chemotaxis: calcium influx drives actin polymerisation, cytoskeletal rearrangement, and cell migration. CRITICAL CAVEAT: TRPM3 dysfunction has been demonstrated ONLY in NK cells, not in monocytes. Whether TRPM3 is expressed and dysfunctional in ME/CFS monocytes is entirely untested. IF TRPM3 dysfunction extends to monocytes, impaired calcium signalling could underlie the CCR7 trafficking defect observed by Petrov et al. @Petrov2026monocyteDC. This hypothesis bridges two independent findings — TRPM3 channelopathy and monocyte trafficking failure — but the bridge is currently a speculation with no direct monocyte calcium data. TRPM3 agonists (pregnenolone sulfate, CIM0216) are research tools only; none have entered clinical trials for any indication.

*Mechanistic rationale.* Two independent ME/CFS findings — TRPM3 channelopathy in NK cells and monocyte trafficking failure — MAY converge on a single mechanism (defective calcium signalling impairing chemotaxis), but this remains a speculative bridge until TRPM3 expression and function are directly confirmed in ME/CFS monocytes. Testing this connection would unify two otherwise separate lines of evidence.

*Safety.* TRPM3 agonists affect many tissues; selective agonists and patient selection (confirmed TRPM3 defect in monocytes) would be essential. None have entered clinical trials for ME/CFS.

*Testable prediction.* ME/CFS monocytes will show reduced calcium flux in response to CCL19 stimulation compared to controls (this has not been tested); if confirmed, TRPM3 agonist will partially restore chemotaxis in vitro in monocytes expressing functional TRPM3; TRPM3 expression on NK cells will correlate with CCR7 expression on monocytes across patients only if the defect is systemic rather than NK-specific.
]

== Costimulatory and Checkpoint Modulation

Petrov et al.\ demonstrated reduced CD80 expression on M1-like monocytes in ME/CFS, in contrast to elevated CD80 in long COVID — suggesting impaired costimulatory capacity specific to ME/CFS @Petrov2026monocyteDC. Combined with existing evidence for PD-1/PD-L1 checkpoint dysregulation in ME/CFS @iu2024tcell_exhaustion, this points to a dual deficit in T cell activation that may be amenable to targeted intervention.

#speculation(title: [CD80 Costimulatory Agonists to Restore T Cell Priming])[
*Certainty: 0.30.* CD80 provides the essential second signal for T cell activation via CD28. Without adequate costimulation, T cells encountering antigen become anergic or tolerised rather than activated. CD28 superagonists (modified from the TGN1412 antibody family, with safety modifications following the 2006 cytokine storm event) could bypass deficient CD80 on monocytes and directly activate CD28 on T cells.

*Safety.* CRITICAL: TGN1412 caused life-threatening cytokine release syndrome in 6 healthy volunteers in a 2006 Phase I trial — a seminal drug safety disaster. All 6 volunteers developed multi-organ failure within hours of infusion from a massive cytokine storm (IL-6, TNF-α, IFN-γ). Modified versions (dose titration starting 1--2 orders of magnitude below the expected pharmacologically active dose, partial agonism, Fc-silent antibodies) are under investigation but NONE are approved for clinical use. This approach would require:
    + Confirmed CD80 deficiency on M1-like monocytes by flow cytometry before consideration
    + Intensive inpatient cytokine monitoring (IL-6, TNF-α, IFN-γ every 2--4 hours for 24 hours post-dose)
    + Prophylactic corticosteroid and anti-IL-6 receptor antibody availability
    + Exclusion of patients with any history of autoimmunity, elevated baseline cytokines, or POTS with tachycardia episodes (autonomic instability may compound hemodynamic risk)
Given the catastrophic precedent of TGN1412, this approach is among the highest-risk interventions discussed in this chapter and is currently suitable only as a research direction in in vitro models.

*Testable prediction.* In ex vivo co-culture, low-dose CD28 superagonist will restore ME/CFS monocyte-driven T cell proliferation without triggering supraphysiological cytokine release above 2× baseline; dose-response curves will identify a therapeutic window below the cytokine storm threshold.
]

#speculation(title: [PD-1/PD-L1 Checkpoint Inhibition in CD80-Low ME/CFS])[
*Certainty: 0.30.* Existing evidence shows PD-1/PD-L1 exhaustion in ME/CFS T cells, and Iu et al.\ documented PD-L1 upregulation on ME/CFS monocytes @iu2024tcell_exhaustion. CD80 suppression may represent an adaptive tolerance mechanism co-occurring with checkpoint-mediated exhaustion — together creating a profound T cell activation deficit. PD-1/PD-L1 inhibitors (nivolumab, pembrolizumab) could reverse exhaustion, but carry autoimmune adverse event risk that may be elevated in ME/CFS given documented autoantibody prevalence.

*Safety.* Checkpoint inhibitors cause immune-related adverse events (irAEs) in 15--40% of cancer patients, including potentially fatal colitis (10--15%), pneumonitis (3--5%), endocrinopathies (hypophysitis 5--10%, thyroiditis 10--20%), hepatitis (5--10%), and myocarditis (1--2%). ME/CFS patients may have ADDITIONAL susceptibility due to pre-existing immune dysregulation, autoantibody prevalence, and documented autoimmune comorbidity clustering. This approach should be considered only in the context of a formal clinical trial with:
    + Confirmed PD-1+ CD8+ T cell exhaustion by flow cytometry and PD-L1+ monocytes
    + Exclusion of patients with pre-existing autoimmune antibodies (ANA, RF, anti-thyroid, anti-GPCR)
    + Low-dose induction (e.g., nivolumab 20--40 mg flat dose vs standard 240 mg) with biomarker monitoring
    + Weekly monitoring for colitis (diarrhoea, abdominal pain), pneumonitis (dyspnoea, cough), and endocrinopathy (fatigue, hypotension, electrolyte abnormalities)
    + Pre-specified stopping criteria: any Grade ≥ 2 irAE or new autoantibody seroconversion
Current risk profile in ME/CFS is entirely unknown; no patient with ME/CFS has received checkpoint inhibitor therapy in a published study.

*Testable prediction.* Ex vivo PD-1 blockade will restore ME/CFS T cell proliferation to viral antigens only when combined with CD80 costimulation; checkpoint blockade alone will produce incomplete restoration, suggesting combined CD80 + PD-1 targeting is required.
]

== Nutritional Approaches to Monocyte Polarisation

#speculation(title: [Vitamin D for CCR7 Upregulation in ME/CFS])[
*Certainty: 0.40.* Vitamin D receptor (VDR) signalling upregulates CCR7 transcription in dendritic cells. Vitamin D deficiency is prevalent in ME/CFS, and impaired CCR7 on monocytes and dendritic cells is documented @Petrov2026monocyteDC. Vitamin D3 (cholecalciferol 2,000--5,000 IU/day) or calcitriol could increase CCR7 expression, improving immune trafficking.

*Safety.* Generally well-tolerated; monitor serum calcium and 25(OH)D to avoid hypercalcemia. Target 25(OH)D 50--80 ng/mL.

*Testable prediction.* 8-week vitamin D3 5,000 IU/day will increase CCR7 MFI on ME/CFS monocytes ≥15% vs placebo; response will correlate with baseline 25(OH)D level.
]

#speculation(title: [Quercetin for CD80 Restoration via PI3K Inhibition])[
*Certainty: 0.35.* Quercetin inhibits PI3K/Akt signalling, which promotes M2 polarisation and suppresses CD80. By shifting monocyte polarisation toward M1, quercetin could increase CD80 expression, improving costimulatory capacity and T cell priming @Petrov2026monocyteDC. No ME/CFS monocyte polarisation data exist; mechanism is inferred from cancer and metabolic disease literature.

*Safety.* Generally safe at 500--1,000 mg/day; widely available. Bioavailability varies by formulation. No ME/CFS polarisation data.

*Testable prediction.* 4-week quercetin 500 mg BID will increase CD80 MFI on ME/CFS M1-like monocytes ≥20% vs placebo; will shift monocyte cytokine profile toward M1 (IL-12 increase, IL-10 decrease).
]

== Open Questions

#open-question(title: [Does Immune-Targeted Therapy Require Endotype Stratification?])[
Petrov et al.\ achieved only moderate discrimination between ME/CFS and long COVID using composite immune markers, suggesting significant within-group heterogeneity @Petrov2026monocyteDC. If ME/CFS encompasses multiple immune endotypes (CCR7-predominant defect, CD80-predominant defect, combined defect, checkpoint-dominant exhaustion), treating all patients with a single immune-restorative strategy would dilute effect sizes and risk exacerbating the wrong pathway. Single-cell immunophenotyping to identify endotypes may be a prerequisite for rational immune-targeted trial design.

*Key question.* Can CCR7-low, CD80-low, and PD-L1-high ME/CFS endotypes be reproducibly identified, and do they predict differential treatment response?
] <oq:me-cfs-immune-endotype-stratification>

#open-question(title: [Is ME/CFS Immune Suppression Adaptive or Maladaptive?])[
Petrov's finding of reduced CD80 on M1-like monocytes could represent either: (a) an adaptive protective mechanism preventing chronic immune hyperactivation that would otherwise cause tissue damage, or (b) a maladaptive tolerance state that prevents viral clearance and perpetuates immune dysfunction. The distinction has profound therapeutic implications: breaking adaptive tolerance could trigger autoimmunity; failing to break maladaptive tolerance could permit ongoing pathology. Longitudinal studies tracking CD80 dynamics from acute infection through ME/CFS development are needed to resolve this question.
] <oq:cd80-adaptive-vs-maladaptive>
