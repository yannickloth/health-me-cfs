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

== B Cell-Targeted and Autoantibody-Modulating Strategies

=== Bruton's Tyrosine Kinase (BTK) Inhibition

#speculation(title: [BTK Inhibitors for IgM-Dominant Extrafollicular Autoantibody Production])[
*(Certainty: 0.35.)* If IgM-dominant tissue-specific autoantibodies arise from ongoing extrafollicular BCR signalling — as suggested by the IgM persistence (60% vs 36% in controls, 141-day follow-up) in long COVID @Tatai2026TSAutoantibodies — BTK inhibition could suppress new autoantibody production. BTK (Bruton's tyrosine kinase) is critical for BCR signal transduction; BTK inhibitors (ibrutinib, acalabrutinib) are approved for B cell malignancies with demonstrated autoantibody reduction in rheumatoid arthritis and lupus.

*Combination rationale:* BTK inhibition suppresses new autoantibody production; immunoadsorption clears existing circulating antibodies. The combination targets both production and removal — BTK inhibitor stops new IgM synthesis, while IA clears the existing pool. This is mechanistically analogous to "induction + maintenance" in oncology.

*Safety:* BTK inhibitors carry infection risk (sinopulmonary) and cardiac toxicity (atrial fibrillation, hypertension). Risk-benefit for a non-malignant indication requires careful evaluation in trials with prespecified safety endpoints. No human data in ME/CFS.

*Falsifiable prediction:* Acalabrutinib 100 mg daily for 12 weeks reduces total IgM and tissue-specific IgM autoantibody titers by $gt.eq 30%$ in ME/CFS patients with IgM-dominant profiles. Combined BTK inhibition + IA produces greater and more sustained autoantibody reduction than IA alone ($gt.eq 60%$ vs $tilde 30%$ at 6 months). @Tatai2026TSAutoantibodies.
] <spec:btk-inhibition-emerging>

=== BAFF Inhibition (Belimumab)

#speculation(title: [Belimumab for BAFF-Driven Autoantibody Persistence])[
*(Certainty: 0.30.)* BAFF (B-cell activating factor) promotes B cell survival and is required for extrafollicular plasmablast differentiation. Belimumab (anti-BAFF monoclonal antibody, approved for SLE) reduces autoantibody production by depleting BAFF-dependent transitional and naive B cells. If ME/CFS involves BAFF-driven autoantibody persistence — supported by elevated BAFF in some ME/CFS studies — belimumab could reduce autoantibody titers without the broad B cell depletion of rituximab.

*Key prediction:* ME/CFS patients with elevated serum BAFF ($>$1 ng/mL) receiving belimumab 10 mg/kg IV for 24 weeks show $gt.eq 25%$ reduction in autoantibody titers and $gt.eq 20%$ improvement in fatigue severity. Falsified if BAFF-normal ME/CFS patients show equivalent or superior response to BAFF-high patients (mechanism would be non-BAFF-mediated).

*Limitation:* BAFF elevation in ME/CFS is inconsistently reported. Belimumab has not been tested in ME/CFS. Infection risk (opportunistic infections, progressive multifocal leukoencephalopathy risk carries a black box warning). No ME/CFS trial data.
] <spec:baft-inhibition>

=== Complement C1s Inhibition (Sutimlimab)

#speculation(title: [Sutimlimab to Block IgM-Mediated Classical Complement Activation])[
*(Certainty: 0.35.)* IgM is the most potent activator of the classical complement pathway. If IgM-dominant autoantibodies are pathogenic — and complement activation products are documented in ME/CFS — C1s inhibition would prevent complement-mediated tissue injury. Sutimlimab (anti-C1s monoclonal antibody, FDA-approved for cold agglutinin disease — an IgM-mediated condition) blocks C1s proximal to C3 cleavage, preserving alternative and lectin pathway function.

*Key prediction:* ME/CFS patients with IgM-dominant profiles show elevated classical pathway markers (C4d, sC5b-9) that fall with C1s inhibition, accompanied by improved microvascular function (laser Doppler flowmetry) and reduced orthostatic intolerance. Falsified if complement markers are normal at baseline.

*Limitation:* Cold agglutinin disease involves a well-defined, single-specificity IgM paraprotein — ME/CFS IgM is polyreactive and its pathogenic role is unproven. No data in ME/CFS. Infection risk from classical pathway blockade (encapsulated bacteria, particularly *Neisseria* species carry a black box warning). @Tatai2026TSAutoantibodies.
] <spec:c1s-inhibition-emerging>

=== Low-Dose IL-2 Therapy

#speculation(title: [Low-Dose IL-2 to Restore Regulatory T Cell Control of Autoreactive B Cells])[
*(Certainty: 0.30.)* Treg dysfunction is documented in ME/CFS. Low-dose IL-2 selectively expands CD4$""^+$CD25#super[hi]FoxP3#super[+] Tregs without activating effector T cells and has shown efficacy in type 1 diabetes and alopecia areata. By restoring Treg-mediated B cell tolerance, low-dose IL-2 could suppress autoantibody production at its regulatory source rather than at downstream effector stages (antibody removal, B cell depletion).

*Key prediction:* ME/CFS patients with baseline Treg deficiency (less than 5 percent of CD4$""^+$ T cells) receiving low-dose IL-2 (1 million IU subcutaneously, 5-day cycles) show no less than 50 percent Treg expansion and no less than 15 percent autoantibody reduction at 6 months. Falsified if Treg expansion occurs without autoantibody reduction --- suggesting autoantibody production is Treg-independent.

*Limitation:* No data in ME/CFS. Treg expansion does not guarantee functional restoration (expanded Tregs may be exhausted or incapable of suppressing in an inflammatory milieu). Fever, injection-site reactions.
] <spec:low-dose-il2-emerging>

=== Severity-Stratified Immunomodulatory Protocols

#hypothesis(title: [Autoantibody Profile-Guided Severity Stratification])[
*(Certainty: 0.35.)* Treatment response heterogeneity in ME/CFS immunomodulation trials — open-label response rates of 47–70% but sham-controlled null results — may reflect unselected patient cohorts with different underlying mechanisms. A severity-stratified and autoantibody-profile-guided treatment algorithm could match patients to interventions:

    - *Mild–moderate, antibody-positive:* Home-based protocol (quercetin, omega-3, vitamin D3, tVNS) — low risk, accessible
    - *Moderate–severe, IgM-dominant:* BTK inhibitor trial enrolment — targets production
    - *Moderate–severe, IgG-dominant:* Immunoadsorption or daratumumab trial enrolment — targets existing antibodies and plasma cells
    - *Severe–very severe, dual-positive:* Combined immunoadsorption + anti-plasma-cell therapy + intensive monitoring — addresses both populations

*Rationale for stratification:* Different autoantibody profiles predict different dominant antibody production pathways (extrafollicular for IgM, germinal-centre-derived for IgG), requiring different therapeutic strategies. Treating all patients with the same protocol — as was done in IA-PACS-CFS @Pressler2024IAPACSCFSprotocol — dilutes treatment effects within responsive subgroups.

*Implementation requirement:* A validated autoantibody panel measuring both GPCR and tissue-specific antibodies (see Section @sec:immunological-biomarkers for the multi-tissue panel proposal) is a prerequisite for stratification. Without such a panel, stratification is speculative. @Tatai2026TSAutoantibodies.
] <hyp:severity-stratified-immunomodulation>

== NET-Targeting Therapies

Recent evidence from COVID-19 and long COVID research implicates neutrophil extracellular trap (NET) dysregulation as a post-viral thrombo-inflammatory mechanism with potential therapeutic implications for ME/CFS (Chapter @ch:immune-dysfunction). The core pathology—impaired NET degradation due to reduced DNase activity, pDC deficiency, and/or genetic susceptibility—suggests two complementary therapeutic strategies: enhancing NET clearance and inhibiting excessive NET formation. All approaches described below are investigational; none have been tested in ME/CFS or long COVID.

=== Recombinant DNase I (Dornase Alfa)

#speculation(title: [Recombinant DNase I to Restore NET/DNase Balance])[
*(Certainty: 0.20.)* Recombinant human DNase I (dornase alfa, Pulmozyme) is FDA-approved for cystic fibrosis, where it cleaves extracellular DNA in airway mucus to reduce viscosity. Its mechanism—cleaving the DNA backbone of NETs to promote their clearance—is directly applicable to the NET/DNase imbalance identified in severe COVID-19 by Garcia et al. @GarciaLabroucheColomer2024, where functional DNase deficiency drives NET accumulation and thrombo-inflammation. Preclinical support: DNase I treatment reduced multi-organ injury in SARS-CoV-2-infected mice @Veras2023. However, NET degradation releases DAMPs (histones, MPO, proteases) that are themselves pro-inflammatory, and systemic DNase administration in non-CF populations has not been studied for safety or efficacy.

*Expected time to response:* Hours–days (pharmacokinetic clearance of circulating NETs). The CF experience suggests onset within 2 weeks for mucus effects; systemic NET clearance time course is unknown.

*Monitoring parameters:* NET remnant levels (MPO-DNA, H3cit), D-dimer, calprotectin, inflammatory markers (CRP, IL-6), DNase activity assay.

*Stopping criteria:* Anaphylaxis, haemoptysis (CF warning), paradoxical inflammatory flare (NET degradation releasing DAMPs), no NET marker reduction after 4 weeks.

*Drug interactions (ME/CFS co-prescriptions):* No known interactions with fludrocortisone, midodrine, LDN, mestinon, beta-blockers, or antihistamines, but systemic use in non-CF populations is entirely novel. Nebulised formulation may not achieve adequate systemic bioavailability for vascular NET clearance; IV/inhaled comparative PK data needed.

*Severe/very-severe patients:* No data. CF safety data from chronic use are reassuring but patients have normal (not depleted) DNase physiology. Risk of paradoxical inflammation in already-symptomatic patients is unknown.

*Key prediction:* ME/CFS patients with documented NET/DNase imbalance (elevated NET/DNase ratio) receiving dornase alfa show reduced circulating NET markers at 4 weeks compared to baseline. Falsified if NET markers unchanged despite confirmed DNase deficiency—suggesting NETs are tissue-sequestered (microclots, endothelium) and inaccessible to circulating enzyme.
] <spec:dnase-i-therapy>

=== PAD4 Inhibition

#speculation(title: [Disulfiram as PAD4 Inhibitor to Suppress NET Formation])[
*(Certainty: 0.15.)* Disulfiram, FDA-approved for alcohol use disorder, inhibits peptidyl arginine deiminase 4 (PAD4), the enzyme required for histone citrullination during NETosis. By blocking PAD4, disulfiram could prevent new NET formation, complementing DNase-mediated clearance of existing NETs. However, disulfiram has significant toxicity (hepatotoxicity, peripheral neuropathy) and NET inhibition may impair anti-pathogen immunity—a particular concern in ME/CFS where innate immune function is already suppressed. The risk-benefit profile is unfavourable for a mechanism with only indirect relevance to ME/CFS.

*Contraindications for bedbound patients:* Hepatotoxicity risk is unacceptable for patients who cannot be easily monitored with regular LFTs.

*Key prediction:* PAD4 inhibition should reduce H3cit formation ex vivo in ME/CFS neutrophils. Falsified if disulfiram does not reduce NET-specific markers despite confirmed PAD4 binding.

*Limitation:* Disulfiram is not a selective PAD4 inhibitor (off-target effects abundant). No human NETosis prevention data exist.
] <spec:pad4-inhibition-netosis>

=== Metabolic NETosis Modulation

#speculation(title: [Metformin for Insulin-Driven NETosis Reduction])[
*(Certainty: 0.20.)* Sanhueza et al. @Sanhueza2026NETosisIR demonstrated that post-infectious insulin resistance drives NETosis independently of glucose in long COVID (n=60 prospective cohort). Metformin activates AMPK, inhibiting mTOR—a pathway required for NETosis—while simultaneously improving insulin sensitivity. This dual mechanism (insulin sensitization + direct AMPK-mediated NET suppression) makes metformin a candidate for reducing metabolic-NETosis in ME/CFS, though no ME/CFS data exist.

*Expected time to response:* Weeks (metabolic remodelling + insulin sensitization requires sustained AMPK activation).

*Starting dose for severe patients:* 250 mg once daily (well below standard 500–850 mg BID; ME/CFS GI sensitivity common).

*Monitoring parameters:* HOMA-IR, fasting insulin, NET markers, GI tolerability, B12 (metformin depletes).

*Stopping criteria:* Intolerable GI symptoms, no change in HOMA-IR after 12 weeks, lactic acidosis (rare, less than 10 per 100,000 patient-years).

*Contraindications for bedbound patients:* GI side effects may be intolerable in patients with pre-existing nausea. Lactic acidosis risk theoretical but severe.
] <spec:metformin-netosis>

== Microclot and NET Structural Interventions

#speculation(title: [Targeting NET-Stabilised Microclots])[
*(Certainty: 0.25.)* Thierry et al. @Thierry2025MicroclotsNETs demonstrated that NETs are structurally incorporated into microclots in long COVID, with NET markers (MPO, NE, cfDNA) colocalising with microclot cores. This suggests NET scaffolding stabilises microclots—a mechanism that would make microclots resistant to standard anticoagulants (heparin, DOACs) that target fibrin but not extracellular DNA. DNase I, by degrading the NET scaffold, could destabilise microclots without anticoagulant-associated bleeding risk—an attractive safety profile for ME/CFS patients with concurrent dysautonomia and fall risk. However, clinical microclot effects are unproven in ME/CFS, and the functional significance of microclots for symptoms is debated.

*Key prediction:* In vitro incubation of ME/CFS microclots with DNase I should reduce clot size and structural integrity. Falsified if microclots are DNase-resistant (suggesting fibrin-dominant composition without NET scaffolding).

*Limitation:* Microclot measurement is non-standardised; clinical significance unknown; no ME/CFS microclot-NET colocalisation data exist.
] <spec:microclot-net-dnase>

== Connective Tissue Targeted Emerging Therapies
<sec:connective-tissue-emerging>

Emerging therapies targeting connective tissue pathology in ME/CFS address extracellular matrix dysregulation, mast cell-mediated degradation, and growth factor imbalance. These approaches are investigational and require careful stratification for comorbid hypermobility and cervical instability.

#speculation(title: [Transcutaneous Vagal Nerve Stimulation for Mast Cell-ECM-Vascular Modulation])[
*(Certainty: 0.40.)* tVNS via left ear concha (5 min, 1-2x daily). Addresses autonomic dysfunction AND mast cell-mediated ECM degradation. Early ME/CFS data (Yu2022, Natelson2022). Certainty 0.40.

*Mechanistic Rationale.* Transcutaneous vagus nerve stimulation (tVNS) activates the cholinergic anti-inflammatory pathway, reducing mast cell degranulation and pro-inflammatory cytokine release. In ME/CFS with connective tissue pathology, mast cell-mediated ECM degradation (via MMP-9 and tryptase) contributes to ligamentous weakness and vascular fragility. tVNS may simultaneously address autonomic dysfunction and reduce mast cell-driven ECM degradation.

*Evidence Base.* tVNS reduces inflammatory cytokines and mast cell activation in controlled trials. Small ME/CFS open-label studies show symptom improvement (Yu2022, Natelson2022). Mast cell-ECM degradation pathway is established in other conditions. No ME/CFS-specific connective tissue endpoint data.

*Clinical Implementation.* tVNS device applied to left ear concha (cymba conchae). Stimulation parameters: 25 Hz, 200–300 μs pulse width, 5 minutes once or twice daily. Start with 5 minutes daily, increase to twice daily if tolerated. Monitor mast cell symptoms (flushing, GI symptoms) and cervical symptoms.

*Monitoring Parameters.* Mast cell markers (serum tryptase, urinary histamine). Autonomic measures (HRV, blood pressure variability). Subjective: connective tissue symptoms, Beighton score stability. Vagus nerve tone (calf brachial index, respiratory sinus arrhythmia).

*Safety Considerations.* tVNS is generally safe with minimal side effects. Contra-indicated in active cardiac arrhythmias. Mild skin irritation at electrode site possible. Requires consistent device use for benefit.

*Limitations.* Small ME/CFS datasets. Uncertain effect on connective tissue endpoints. Individual variation in tVNS response. Device quality varies; requires FDA-cleared or CE-marked device. Cost may be barrier.
]

#speculation(title: [HIF-1alpha/HIF-2alpha Isoform Rebalancing for ECM Pathology])[
*(Certainty: 0.35.)* HIF-1alpha drives ECM pathology; HIF-2alpha may be protective. Isoform-specific inhibition (PT2385 for HIF-2alpha) could rebalance. Certainty 0.35 (highly specific, requires validation).

*Mechanistic Rationale.* Hypoxia-inducible factor (HIF) isoforms have opposing effects on ECM. HIF-1alpha drives pro-fibrotic ECM remodeling and basement membrane thickening via TGF-beta and MMP induction. HIF-2alpha may be protective, promoting angiogenesis without fibrosis. ME/CFS shows basement membrane thickening and ECM dysregulation. Isoform-specific inhibition—targeting HIF-1alpha or enhancing HIF-2alpha—could rebalance ECM pathology.

*Evidence Base.* HIF-1alpha/HIF-2alpha opposing roles are established in fibrosis models. PT2385 (HIF-2alpha inhibitor) is in clinical trials for cancer; paradoxically, HIF-2alpha inhibition may increase HIF-1alpha activity. Basement membrane thickening documented in ME/CFS. No ME/CFS HIF isoform data or targeted interventions.

*Clinical Implementation.* Requires specialized compounds in clinical trial setting only. Isoform-specific inhibitors (PT2385, PT2977) or HIF-1alpha modulators. Biomarker-guided: assess HIF-1alpha/HIF-2alpha balance in tissue or serum before intervention. Monitor ECM markers (collagen synthesis, MMP/TIMP ratio).

*Monitoring Parameters.* HIF-1alpha and HIF-2alpha targets (VEGF, GLUT1). ECM remodeling markers (PINP, PIIIINP, MMP-9, TIMP-1). Basement membrane thickness (skin biopsy, if feasible). Symptom tracking.

*Safety Considerations.* HIF inhibitors have significant toxicity profile in oncology trials. Not for clinical use outside trials. Requires intensive monitoring. Off-target effects on multiple HIF-dependent pathways.

*Limitations.* No ME/CFS data. Uncertain whether HIF imbalance drives ECM pathology in ME/CFS. Isoform-specific compounds are investigational only. Risk-benefit unfavorable for non-fatal condition at this stage.
]

#speculation(title: [TGF-beta1-Specific Blockade for Basement Membrane Thickening])[
*(Certainty: 0.30.)* TGF-beta1 profibrotic drives BM thickening; TGF-beta3 anti-fibrotic. Fresolimumab (anti-TGF-beta1) could address BM pathology. Certainty 0.30 (highly specific, no ME/CFS data).

*Mechanistic Rationale.* Transforming growth factor-beta (TGF-beta) isoforms have opposing effects on ECM. TGF-beta1 is profibrotic, driving basement membrane thickening, collagen deposition, and fibrosis. TGF-beta3 is anti-fibrotic, promoting normal ECM remodeling. ME/CFS shows basement membrane thickening. Fresolimumab (anti-TGF-beta1 monoclonal antibody) could address BM pathology by selective TGF-beta1 blockade.

*Evidence Base.* TGF-beta1/fibrosis relationship is well-established. TGF-beta3 anti-fibrotic effects documented in wound healing models. Basement membrane thickening documented in ME/CFS muscle biopsies. Fresolimumab has shown efficacy in other fibrotic diseases. No ME/CFS TGF-beta data or trials.

*Clinical Implementation.* Requires clinical trial setting only. Fresolimumab intravenous infusion per trial protocol. Biomarker-guided: assess TGF-beta1/beta3 balance and basement membrane thickness before intervention. Monitor ECM and renal parameters.

*Monitoring Parameters.* TGF-beta1/beta3 levels. Basement membrane markers (laminin, collagen IV). Skin biopsy for basement membrane thickness. Renal function (TGF-beta blockade affects kidney). Symptom tracking.

*Safety Considerations.* TGF-beta blockade has significant toxicity: skin lesions, bleeding risk, potential carcinogenesis (TGF-beta is tumor suppressor). Not for clinical use outside trials. Requires intensive monitoring. Long-term effects unknown.

*Limitations.* No ME/CFS data. Uncertain whether TGF-beta1 drives BM pathology in ME/CFS. Fresolimumab is expensive and investigational. Risk-benefit unfavorable for non-fatal condition at this stage.
]
