#import "../shared/environments.typ": *

= Emerging and Investigational Therapies
<ch:emerging-therapies>

This chapter surveys emerging and investigational therapeutic approaches for ME/CFS identified through novel immunophenotyping, cross-disease mechanistic inference, and targeted pathway intervention. None of the therapies discussed have completed randomised controlled trials for ME/CFS; they are presented as mechanistically motivated research directions with explicit certainty ratings rather than clinical recommendations. Patient safety, particularly for severe and very-severe patients, and the need for rigorous clinical trial validation are emphasised throughout.

== Immune Trafficking Restoration

Recent immunophenotyping evidence demonstrates impaired CCR7-mediated immune cell trafficking in ME/CFS, with reduced CCR7 expression on monocytes and dendritic cells, reduced dendritic cell frequency, and less coordinated immune activation patterns compared to both healthy controls and long COVID @Petrov2026monocyteDC. This section examines emerging approaches to restore immune trafficking.

=== CCR7 Agonists and Chemokine Mimetics

#speculation(title: [CCL19/CCL21 Mimetics to Restore Immune Trafficking in ME/CFS])[
*Certainty: 0.30.* CCL19 and CCL21 are the endogenous chemokine ligands for CCR7 and are being developed for cancer immunotherapy (to enhance T cell trafficking to tumours) and as vaccine adjuvants (to improve dendritic cell migration). Modified chemokines (PEGylated, stabilised, or small-molecule agonists) could in principle increase CCR7 signalling @Petrov2026monocyteDC.

*Mechanistic rationale.* CCR7 is the principal receptor mediating monocyte and dendritic cell migration to lymph nodes, where antigen presentation and T cell priming occur. Impaired CCR7 expression in ME/CFS may create a trafficking bottleneck that compromises adaptive immune coordination. However, a key pharmacological distinction: in cancer immunotherapy, the problem is insufficient ligand (chemokines absent at tumour site) with normal receptor expression; in ME/CFS, the problem is reduced receptor expression. Increasing ligand availability when receptor density is the bottleneck produces diminishing returns (Clark equation — receptor saturation occurs at lower ligand concentrations when fewer receptors are present). CCR7 upregulation approaches may therefore be more directly relevant than ligand augmentation.

*Safety.* Chemokine administration carries inflammatory risk — modified versions with reduced systemic effects are under development; not available for clinical use outside trials.

*Testable prediction.* CCR7 agonist will increase dendritic cell frequency in peripheral blood (mobilisation from tissues) and improve immune correlation network integration in ME/CFS patients with preserved CCR7 signalling machinery; however, effect magnitude will be limited by receptor density and may not exceed that of healthy controls with normal CCR7.
]

=== TRPM3-Calcium-CCR7 Axis

#speculation(title: [TRPM3 Agonists to Restore Calcium-Dependent Immune Trafficking (Untested in Monocytes)])[
*Certainty: 0.20.* TRPM3 is a calcium-permeable ion channel documented to be dysfunctional in ME/CFS NK cells @Sasso2026trpm3. Calcium signalling is required for CCR7-mediated chemotaxis: calcium influx drives actin polymerisation, cytoskeletal rearrangement, and cell migration. CRITICAL CAVEAT: TRPM3 dysfunction has been demonstrated ONLY in NK cells, not in monocytes. Whether TRPM3 is expressed and dysfunctional in ME/CFS monocytes is entirely untested. IF TRPM3 dysfunction extends to monocytes, impaired calcium signalling could underlie the CCR7 trafficking defect observed by Petrov et al. @Petrov2026monocyteDC. This hypothesis bridges two independent findings — TRPM3 channelopathy and monocyte trafficking failure — but the bridge is currently a speculation with no direct monocyte calcium data. The compound probability of this multi-step chain is substantially lower than the nominal certainty rating: P(TRPM3 expressed in ME/CFS monocytes) × P(defective) × P(calcium defect impairs CCR7) × P(CCR7 impairment causes trafficking failure). TRPM3 agonists (pregnenolone sulfate, CIM0216) are research tools only; none have entered clinical trials for any indication.

*Mechanistic rationale.* Two independent ME/CFS findings — TRPM3 channelopathy in NK cells and monocyte trafficking failure — MAY converge on a single mechanism (defective calcium signalling impairing chemotaxis), but this remains a speculative bridge until TRPM3 expression and function are directly confirmed in ME/CFS monocytes. Testing this connection would unify two otherwise separate lines of evidence. The null hypothesis — that CCR7 reduction is independently regulated, unrelated to TRPM3 — is equally parsimonious.

*Safety.* TRPM3 agonists affect many tissues; selective agonists and patient selection (confirmed TRPM3 defect in monocytes) would be essential. None have entered clinical trials for ME/CFS.

*Testable prediction.* ME/CFS monocytes will show reduced calcium flux in response to CCL19 stimulation compared to controls (this has not been tested); if confirmed, TRPM3 agonist will partially restore chemotaxis in vitro in monocytes expressing functional TRPM3; TRPM3 expression on NK cells will correlate with CCR7 expression on monocytes across patients only if the defect is systemic rather than NK-specific.
]

== Costimulatory and Checkpoint Modulation

Petrov et al.\ demonstrated reduced CD80 expression on M1-like monocytes in ME/CFS, in contrast to elevated CD80 in long COVID — suggesting impaired costimulatory capacity specific to ME/CFS @Petrov2026monocyteDC. Combined with existing evidence for PD-1/PD-L1 checkpoint dysregulation in ME/CFS @iu2024tcell_exhaustion, this points to a potential dual deficit in T cell activation (low costimulation + active checkpoint inhibition). However, both features could be downstream consequences of a single upstream mechanism — chronic antigen stimulation, monocyte exhaustion, or epigenetic reprogramming — rather than independent targets requiring separate interventions. Therapeutic approaches that target CD80 or PD-1 directly must also contend with the unresolved question whether CD80 suppression is adaptive or maladaptive (see Open Questions below).

#speculation(title: [CD80 Costimulatory Agonists to Restore T Cell Priming])[
*Certainty: 0.20.* CD80 provides the essential second signal for T cell activation via CD28. Without adequate costimulation, T cells encountering antigen become anergic or tolerised rather than activated. CD28 superagonists (modified from the TGN1412 antibody family, with safety modifications following the 2006 cytokine storm event) could bypass deficient CD80 on monocytes and directly activate CD28 on T cells.

*Critical immunological caveat: CD80-CTLA-4 axis omitted from simplified rationale.* CD80 is a dual ligand: it binds both CD28 (costimulatory) AND CTLA-4 (inhibitory), with ~20-fold higher affinity for CTLA-4 than CD28. CD28 superagonist strategies that bypass CD80 lose the opportunity for CD80-CTLA-4 inhibitory engagement but could also fail to mimic the normal CD28/CTLA-4 balance. The net immunological effect of CD28 agonism without CD80-mediated CTLA-4 engagement is uncertain. Additionally, if CD80 suppression in ME/CFS is an adaptive protective mechanism (see Open Questions below), then restoring CD80 signalling — by any mechanism — could trigger autoimmune pathology, making the entire therapeutic rationale contingent on resolving the adaptive vs maladaptive question first.

*Safety.* CRITICAL: TGN1412 caused life-threatening cytokine release syndrome in 6 healthy volunteers in a 2006 Phase I trial — a seminal drug safety disaster. All 6 volunteers developed multi-organ failure within hours of infusion from a massive cytokine storm (IL-6, TNF-α, IFN-γ). Modified versions (dose titration starting 1--2 orders of magnitude below the expected pharmacologically active dose, partial agonism, Fc-silent antibodies) are under investigation but NONE are approved for clinical use. This approach would require:
    + Confirmed CD80 deficiency on M1-like monocytes by flow cytometry before consideration
    + Intensive inpatient cytokine monitoring (IL-6, TNF-α, IFN-γ every 2--4 hours for 24 hours post-dose)
    + Prophylactic corticosteroid and anti-IL-6 receptor antibody availability
    + Exclusion of patients with any history of autoimmunity, elevated baseline cytokines, or POTS with tachycardia episodes (autonomic instability may compound hemodynamic risk)
Given the catastrophic precedent of TGN1412 and the unresolved adaptive-vs-maladaptive question, this approach is currently suitable only as a research direction in in vitro models and should not be considered a therapeutic proposal without resolution of the CD80 tolerance question.

*Testable prediction.* In ex vivo co-culture, low-dose CD28 superagonist will restore ME/CFS monocyte-driven T cell proliferation without triggering supraphysiological cytokine release above 2× baseline; dose-response curves will identify a therapeutic window below the cytokine storm threshold.
]

#speculation(title: [PD-1/PD-L1 Checkpoint Inhibition in CD80-Low ME/CFS])[
*Certainty: 0.20.* Existing evidence shows PD-1/PD-L1 exhaustion in ME/CFS T cells, and Iu et al.\ documented PD-L1 upregulation on ME/CFS monocytes @iu2024tcell_exhaustion. CD80 suppression may represent an adaptive tolerance mechanism co-occurring with checkpoint-mediated exhaustion — together creating a profound T cell activation deficit. PD-1/PD-L1 inhibitors (nivolumab, pembrolizumab) could reverse exhaustion, but carry autoimmune adverse event risk that may be elevated in ME/CFS given documented autoantibody prevalence. CRITICAL: as with CD28 superagonists, this therapeutic rationale is contingent on CD80 suppression being maladaptive rather than adaptive. If CD80 suppression is protective (see Open Questions below), checkpoint inhibition could remove a necessary brake on autoimmunity, creating a risk profile for which no ME/CFS-specific safety data exist. No patient with ME/CFS has received checkpoint inhibitor therapy in a published study.

*Safety.* Checkpoint inhibitors cause immune-related adverse events (irAEs) in 15--40% of cancer patients, including potentially fatal colitis (10--15%), pneumonitis (3--5%), endocrinopathies (hypophysitis 5--10%, thyroiditis 10--20%), hepatitis (5--10%), and myocarditis (1--2%). ME/CFS patients may have ADDITIONAL susceptibility due to pre-existing immune dysregulation, autoantibody prevalence, and documented autoimmune comorbidity clustering. The proposed low-dose induction (20--40 mg flat dose vs standard 240 mg) has no evidence base in ME/CFS. This approach should be considered only in the context of a formal clinical trial with:
    + Confirmed PD-1+ CD8+ T cell exhaustion by flow cytometry and PD-L1+ monocytes
    + Exclusion of patients with pre-existing autoimmune antibodies (ANA, RF, anti-thyroid, anti-GPCR)
    + Weekly monitoring for colitis (diarrhoea, abdominal pain), pneumonitis (dyspnoea, cough), and endocrinopathy (fatigue, hypotension, electrolyte abnormalities)
    + Pre-specified stopping criteria: any Grade ≥ 2 irAE or new autoantibody seroconversion
Current risk profile in ME/CFS is entirely unknown.

*Testable prediction.* Ex vivo PD-1 blockade will restore ME/CFS T cell proliferation to viral antigens only when combined with CD80 costimulation; checkpoint blockade alone will produce incomplete restoration, suggesting combined CD80 + PD-1 targeting is required — or alternatively, that neither target is addressable in isolation if CD80 suppression is adaptive.
]

== Nutritional Approaches to Monocyte Polarisation

#speculation(title: [Vitamin D for CCR7 Upregulation in ME/CFS])[
*Certainty: 0.30.* Vitamin D receptor (VDR) signalling upregulates CCR7 transcription in dendritic cells. Vitamin D deficiency is prevalent in ME/CFS, and impaired CCR7 on monocytes and dendritic cells is documented @Petrov2026monocyteDC. Vitamin D3 (cholecalciferol 2,000--5,000 IU/day) or calcitriol could increase CCR7 expression, improving immune trafficking.

*Critical caveat: immunosuppressive paradox.* Vitamin D is an immunosuppressive hormone — it promotes Treg differentiation, tolerogenic DC maturation, suppresses Th1/Th17 responses, and can reduce costimulatory molecule expression (including CD80 in some contexts). In a condition already characterised by predominantly suppressively skewed monocyte/DC compartments, administering an immunosuppressive agent to upregulate a single trafficking receptor (CCR7) could worsen the overall immune deficit. The VDR-CCR7 upregulation link is primarily documented in the tolerogenic DC context — potentially counterproductive to the intended goal of restoring immune activation. The net immunological effect of vitamin D in ME/CFS (immunosuppressive vs CCR7-enhancing) has not been evaluated.

*Safety.* Generally well-tolerated; monitor serum calcium and 25(OH)D to avoid hypercalcemia. Target 25(OH)D 50--80 ng/mL.

*Testable prediction.* 8-week vitamin D3 5,000 IU/day will increase CCR7 MFI on ME/CFS monocytes ≥15% vs placebo; response will correlate with baseline 25(OH)D level; concurrent monitoring of tolerogenic DC markers and Treg frequency is essential to rule out net immunosuppressive effect.
]

#speculation(title: [Quercetin for CD80 Restoration via PI3K Inhibition])[
*Certainty: 0.30.* Quercetin inhibits PI3K/Akt signalling, which promotes M2 polarisation and suppresses CD80. By shifting monocyte polarisation toward M1, quercetin could increase CD80 expression, improving costimulatory capacity and T cell priming @Petrov2026monocyteDC. No ME/CFS monocyte polarisation data exist; mechanism is inferred from cancer and metabolic disease literature.

*Critical caveat: targets polarisation, not M1-intrinsic CD80 defect.* Petrov et al.\ found reduced CD80 specifically on M1-like (CD206-low) monocytes — cells that have already adopted an M1 phenotype but still have low CD80. This suggests an intrinsic costimulatory defect within the M1-like subset rather than merely an M2-skewing problem. Quercetin targets the polarisation balance (M2→M1), but if M1-like cells in ME/CFS cannot express normal CD80 regardless of polarisation state, shifting more cells into the M1-like subset will not restore CD80. Additional caveat: PI3K/Akt inhibition has pleiotropic effects — PI3K signalling is essential for T cell activation and proliferation, NK cell cytotoxic function, and B cell class-switch recombination. Systemic PI3K inhibition could impair the very cells already documented as dysfunctional in ME/CFS.

*Safety.* Generally safe at 500--1,000 mg/day; widely available. Bioavailability varies by formulation. No ME/CFS polarisation data.

*Testable prediction.* 4-week quercetin 500 mg BID will increase CD80 MFI on ME/CFS M1-like monocytes ≥20% vs placebo ONLY if the primary defect is M2-skewing; if the defect is M1-intrinsic, CD80 will not improve despite polarisation shift toward M1. Concurrent monitoring of T cell, NK cell, and B cell function needed to rule out PI3K-mediated impairment.
]

== Emergency PEM Prevention Protocol
<subsec:pem-prevention>

Post-exertional malaise (PEM) represents a metabolic crisis in ME/CFS. The emergency PEM prevention protocol aims to intervene during the critical 0–72 hour window after exertion to prevent entry into prolonged crash state.

*Core principle:* Provide exogenous metabolic substrates that bypass damaged production machinery during the period when endogenous synthesis fails.

=== Emergency PEM Intervention Details
<subsubsec:emergency-pem-protocol>

*Immediate phase (0–6 hours post-exertion):*
- D-ribose: 15 g immediately, then 5 g every 4–6 hours for 24 hours. Provides ATP backbone when mitochondrial synthesis fails.
- NAD+ precursors: 1000–2000 mg NR or NMN immediately post-exertion, then 500 mg twice daily for 3–5 days. Replenishes NAD+ depleted by PARP activation during DNA repair.
- High-dose antioxidants: Vitamin C 1000–2000 mg, ALA 300–600 mg, NAC 600–1200 mg. Reduces oxidative repair burden.

*Acute phase (6–72 hours post-exertion):*
- MCT oil: 30 mL daily. Provides ketones that bypass damaged mitochondrial complexes.
- CoQ10: 300–600 mg ubiquinol. Supports remaining electron transport chain function.
- Magnesium: 400–600 mg chelated form. Essential for ATP synthesis.

*Important warnings:*
- This protocol is speculative and based on mechanistic reasoning, not clinical trials.
- High-dose supplements may cause gastrointestinal side effects.
- Discuss with physician before attempting, especially for severe patients.
- May not prevent PEM in all cases; individual variation in response is expected.

 == Sigma-1 Receptor Mechanisms and Fluvoxamine Therapy
 <sec:sigma1-fluvoxamine>

 === Sigma-1 Receptor Biology and Mechanism
 <subsubsec:sigma1-mechanism>

 The Sigma-1 receptor (S1R) is a unique chaperone protein located at the mitochondrial-associated ER membrane (MAM) that regulates calcium signalling, mitochondrial function, and cellular stress responses. S1R agonists like fluvoxamine have shown promise in ME/CFS due to their ability to modulate multiple dysregulated pathways simultaneously.

 *Mechanism of action:* S1R binds to IP3 receptors at MAMs, stabilising calcium transfer between ER and mitochondria. This regulation prevents calcium overload and mitochondrial permeability transition pore opening. In ME/CFS, where calcium dysregulation is documented across multiple cell types (TRPM3 channelopathy, impaired calcium handling), S1R agonism may restore normal calcium homeostasis.

 *Therapeutic implications:* Fluvoxamine, at doses effective for ME/CFS (50–100 mg), acts primarily as an S1R agonist rather than as an antidepressant. Clinical observations suggest efficacy in PEM reduction, cognitive symptoms, and sleep disruption, likely through restoration of calcium-dependent processes in neurons, immune cells, and mitochondria.

 *Evidence status:* While RCT evidence in ME/CFS is pending, fluvoxamine has shown benefit in acute COVID-19 for preventing clinical deterioration, establishing S1R mechanism in infectious contexts. Case reports and small series in ME/CFS show promise but lack controlled validation.

 *Certainty:* 0.40 (moderate mechanistic plausibility with limited clinical validation)

=== Sodium-Calcium Cycle Correction for AIMM
<sec:mdc002>

#proposal(title: [Pharmacological Correction of Sodium-Calcium Overload in AIMM])[
*Section label:* `sec:mdc002`

*Rationale and Mechanism:*

The acquired ischemic mitochondrial myopathy (AIMM) model identifies sodium-calcium overload as the core pathogenic mechanism in ME/CFS. This creates a self-reinforcing cycle: hypoperfusion → anaerobic metabolism → proton accumulation → NHE1 activation → sodium overload → NCX1 reversal → NCLX inhibition → mitochondrial calcium overload → mitochondrial damage → further ATP depletion → impaired Na+/K+-ATPase function → persistent sodium overload.

*Intervention strategies:*

1. *NHE1 inhibition:* Blocking the sodium-hydrogen exchanger to prevent sodium influx
   - Amiloride and analogues (e.g., eniporide) directly target NHE1
   - Clinical evidence: Amiloride reduced sodium accumulation in heart failure models
   - ME/CFS rationale: Breaks the initial sodium influx step

2. *NCX1 modulators:* Normalizing sodium-calcium exchange direction
   - Low-dose ranolazine inhibits late sodium current, reducing reverse-mode NCX1 activity
   - Clinical evidence: Ranolazine improves calcium handling in cardiac ischemia
   - ME/CFS rationale: Prevents pathological calcium overload through reversed NCX1

3. *NCLX enhancement:* Restoring mitochondrial calcium efflux
   - NCLX activators (experimental compounds)
   - Clinical evidence: Limited, but NCLX overexpression improves mitochondrial calcium handling
   - ME/CFS rationale: Addresses the mitochondrial calcium trapping mechanism

4. *Na+/K+-ATPase enhancement:* Improving sodium clearance capacity
   - Cardiotonic steroids (e.g., ouabain) at sub-toxic doses (experimental)
   - Magnesium supplementation (supports Na+/K+-ATPase function)
   - ME/CFS rationale: Addresses the downstream consequence of impaired sodium clearance

*Evidence and Rationale:*

Direct ME/CFS evidence is preliminary. However, the model is built on:
- Petter et al.'s #super[23]Na-MRI showing elevated intracellular sodium in ME/CFS muscle
- Wirth et al.'s electron microscopy showing mitochondrial damage at calcium influx sites
- Proteomic confirmation of Na+/K+-ATPase subunit downregulation
- The mechanistic coherence of the sodium-calcium overload cycle

*Safety and Clinical Considerations:*

- NHE1 inhibitors: Monitor for hyperkalemia (risk with amiloride)
- NCX1 modulators: Avoid in patients with long QT syndrome
- NCLX enhancers: Experimental, no clinical safety data available
- Na+/K+-ATPase modulation: Narrow therapeutic window, requires careful dosing

*Expected outcomes:*

- Reduced intracellular sodium levels (measured by #super[23]Na-MRI)
- Improved mitochondrial calcium handling (indirect markers)
- Potential reduction in exercise-induced symptoms
- Requires 3-6 months for full mitochondrial recovery

*Clinical uncertainty:*

The intervention targets the proposed AIMM mechanism, but direct validation in ME/CFS is lacking. Sodium-calcium dysregulation may be one of multiple pathways. Treatment response may vary based on disease stage and individual sodium handling capacity.

] <prop:mdc002>

 == Open Questions

#open-question(title: [Does Immune-Targeted Therapy Require Endotype Stratification?])[
Petrov et al.\ achieved only moderate discrimination between ME/CFS and long COVID using composite immune markers, suggesting significant within-group heterogeneity and overlapping distributions between the two conditions @Petrov2026monocyteDC. If ME/CFS encompasses multiple discrete immune endotypes (CCR7-predominant defect, CD80-predominant defect, combined defect, checkpoint-dominant exhaustion), treating all patients with a single immune-restorative strategy would dilute effect sizes and risk exacerbating the wrong pathway. However, the alternative — that immune variation in ME/CFS is continuous and multidimensional with no natural clustering — is equally consistent with the data and would argue against categorical endotype-based trial designs. Single-cell immunophenotyping to identify whether discrete endotypes actually exist — and whether they predict differential treatment response — may be a prerequisite for rational immune-targeted trial design.

*Key question.* Can CCR7-low, CD80-low, and PD-L1-high ME/CFS endotypes be reproducibly identified, or does immune variation in ME/CFS represent a continuous multidimensional distribution with no natural clusters?
] <oq:me-cfs-immune-endotype-stratification>

#open-question(title: [Is ME/CFS Immune Suppression Adaptive or Maladaptive?])[
Petrov's finding of reduced CD80 on M1-like monocytes could represent either: (a) an adaptive protective mechanism preventing chronic immune hyperactivation that would otherwise cause tissue damage, or (b) a maladaptive tolerance state that prevents viral clearance and perpetuates immune dysfunction. The distinction has profound therapeutic implications: breaking adaptive tolerance could trigger autoimmunity; failing to break maladaptive tolerance could permit ongoing pathology. Longitudinal studies tracking CD80 dynamics from acute infection through ME/CFS development are needed to resolve this question.
] <oq:cd80-adaptive-vs-maladaptive>
