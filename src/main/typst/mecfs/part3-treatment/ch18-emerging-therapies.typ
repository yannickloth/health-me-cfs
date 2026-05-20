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

#speculation(title: [TRPM3 Agonists to Restore Calcium-Dependent Immune Trafficking])[
*Certainty: 0.40.* TRPM3 is a calcium-permeable ion channel documented to be dysfunctional in ME/CFS NK cells @Sasso2026trpm3. Calcium signalling is required for CCR7-mediated chemotaxis: calcium influx drives actin polymerisation, cytoskeletal rearrangement, and cell migration. If TRPM3 dysfunction extends to monocytes (untested), impaired calcium signalling could underlie the CCR7 trafficking defect observed by Petrov et al. @Petrov2026monocyteDC. TRPM3 agonists (pregnenolone sulfate, CIM0216) could restore calcium influx in monocytes, enabling CCR7 trafficking machinery.

*Mechanistic rationale.* Two independent ME/CFS findings — TRPM3 channelopathy and monocyte trafficking failure — may converge on a single mechanism: defective calcium signalling impairing chemotaxis. Testing this connection would unify two otherwise separate lines of evidence and provide a tractable therapeutic target.

*Safety.* TRPM3 agonists affect many tissues; selective agonists and patient selection (confirmed TRPM3 defect) would be essential. None have entered clinical trials for ME/CFS.

*Testable prediction.* ME/CFS monocytes will show reduced calcium flux in response to CCL19 stimulation compared to controls; TRPM3 agonist will partially restore chemotaxis in vitro; TRPM3 expression on NK cells will correlate with CCR7 expression on monocytes across patients.
]

== Costimulatory and Checkpoint Modulation

Petrov et al.\ demonstrated reduced CD80 expression on M1-like monocytes in ME/CFS, in contrast to elevated CD80 in long COVID — suggesting impaired costimulatory capacity specific to ME/CFS @Petrov2026monocyteDC. Combined with existing evidence for PD-1/PD-L1 checkpoint dysregulation in ME/CFS @iu2024tcell_exhaustion, this points to a dual deficit in T cell activation that may be amenable to targeted intervention.

#speculation(title: [CD80 Costimulatory Agonists to Restore T Cell Priming])[
*Certainty: 0.30.* CD80 provides the essential second signal for T cell activation via CD28. Without adequate costimulation, T cells encountering antigen become anergic or tolerised rather than activated. CD28 superagonists (modified from the TGN1412 antibody family, with safety modifications following the 2006 cytokine storm event) could bypass deficient CD80 on monocytes and directly activate CD28 on T cells.

*Safety.* Critical: TGN1412 caused life-threatening cytokine release syndrome in healthy volunteers in 2006. Modified versions (dose titration, partial agonism, Fc-silent antibodies) are under investigation but not approved. This approach would require extreme caution, confirmed CD80 deficiency, and intensive cytokine monitoring.

*Testable prediction.* In ex vivo co-culture, low-dose CD28 superagonist will restore ME/CFS monocyte-driven T cell proliferation without triggering supraphysiological cytokine release above 2× baseline.
]

#speculation(title: [PD-1/PD-L1 Checkpoint Inhibition in CD80-Low ME/CFS])[
*Certainty: 0.30.* Existing evidence shows PD-1/PD-L1 exhaustion in ME/CFS T cells, and Iu et al.\ documented PD-L1 upregulation on ME/CFS monocytes @iu2024tcell_exhaustion. CD80 suppression may represent an adaptive tolerance mechanism co-occurring with checkpoint-mediated exhaustion — together creating a profound T cell activation deficit. PD-1/PD-L1 inhibitors (nivolumab, pembrolizumab) could reverse exhaustion, but carry autoimmune adverse event risk that may be elevated in ME/CFS given documented autoantibody prevalence.

*Safety.* Checkpoint inhibitors cause immune-related adverse events (colitis, pneumonitis, endocrinopathies) in 15--40% of cancer patients. ME/CFS patients may have additional susceptibility due to pre-existing immune dysregulation. Low-dose protocols, patient selection (confirmed exhaustion markers), and close monitoring would be essential.

*Testable prediction.* Ex vivo PD-1 blockade will restore ME/CFS T cell proliferation to viral antigens only when combined with CD80 costimulation; checkpoint blockade alone will produce incomplete restoration, suggesting combined CD80 + PD-1 targeting is required.
]

== Nutritional Approaches to Monocyte Polarisation

#speculation(title: [Vitamin D for CCR7 Upregulation in ME/CFS])[
*Certainty: 0.50.* Vitamin D receptor (VDR) signalling upregulates CCR7 transcription in dendritic cells. Vitamin D deficiency is prevalent in ME/CFS, and impaired CCR7 on monocytes and dendritic cells is documented @Petrov2026monocyteDC. Vitamin D3 (cholecalciferol 2,000--5,000 IU/day) or calcitriol could increase CCR7 expression, improving immune trafficking.

*Safety.* Generally well-tolerated; monitor serum calcium and 25(OH)D to avoid hypercalcemia. Target 25(OH)D 50--80 ng/mL.

*Testable prediction.* 8-week vitamin D3 5,000 IU/day will increase CCR7 MFI on ME/CFS monocytes ≥15% vs placebo; response will correlate with baseline 25(OH)D level.
]

#speculation(title: [Quercetin for CD80 Restoration via PI3K Inhibition])[
*Certainty: 0.45.* Quercetin inhibits PI3K/Akt signalling, which promotes M2 polarisation and suppresses CD80. By shifting monocyte polarisation toward M1, quercetin could increase CD80 expression, improving costimulatory capacity and T cell priming @Petrov2026monocyteDC.

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
