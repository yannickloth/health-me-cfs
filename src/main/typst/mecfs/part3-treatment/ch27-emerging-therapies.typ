#import "../shared/environments.typ": *

= Emerging and Investigational Therapies
<ch:emerging-therapies>

This chapter surveys emerging and investigational therapeutic approaches for ME/CFS identified through novel immunophenotyping, cross-disease mechanistic inference, and targeted pathway intervention. None of the therapies discussed have completed randomised controlled trials for ME/CFS; they are presented as mechanistically motivated research directions with explicit certainty ratings rather than clinical recommendations. Patient safety, particularly for severe and very-severe patients, and the need for rigorous clinical trial validation are emphasised throughout.

== Immune Trafficking Restoration

Recent immunophenotyping evidence demonstrates impaired CCR7-mediated immune cell trafficking in ME/CFS, with reduced CCR7 expression on monocytes and dendritic cells, reduced dendritic cell frequency, and less coordinated immune activation patterns compared to both healthy controls and long COVID @Petrov2026monocyteDC. This section examines emerging approaches to restore immune trafficking.

=== CCR7 Agonists and Chemokine Mimetics

#speculation(title: [CCL19/CCL21 Mimetics to Restore Immune Trafficking in ME/CFS])[
*Certainty: 0.30.* CCL19 and CCL21 are the endogenous chemokine ligands for CCR7 and are being developed for cancer immunotherapy (to enhance T cell trafficking to tumors) and as vaccine adjuvants (to improve dendritic cell migration). Modified chemokines (PEGylated, stabilized, or small-molecule agonists) could in principle increase CCR7 signaling @Petrov2026monocyteDC.

*Mechanistic rationale.* CCR7 is the principal receptor mediating monocyte and dendritic cell migration to lymph nodes, where antigen presentation and T cell priming occur. Impaired CCR7 expression in ME/CFS may create a trafficking bottleneck that compromises adaptive immune coordination. However, a key pharmacological distinction: in cancer immunotherapy, the problem is insufficient ligand (chemokines absent at tumor site) with normal receptor expression; in ME/CFS, the problem is reduced receptor expression. Increasing ligand availability when receptor density is the bottleneck produces diminishing returns (Clark equation — receptor saturation occurs at lower ligand concentrations when fewer receptors are present). CCR7 upregulation approaches may therefore be more directly relevant than ligand augmentation.

*Safety.* Chemokine administration carries inflammatory risk — modified versions with reduced systemic effects are under development; not available for clinical use outside trials.

*Testable prediction.* CCR7 agonist will increase dendritic cell frequency in peripheral blood (mobilization from tissues) and improve immune correlation network integration in ME/CFS patients with preserved CCR7 signaling machinery; however, effect magnitude will be limited by receptor density and may not exceed that of healthy controls with normal CCR7.
]

=== TRPM3-Calcium-CCR7 Axis

#speculation(title: [TRPM3 Agonists to Restore Calcium-Dependent Immune Trafficking (Untested in Monocytes)])[
*Certainty: 0.20.* TRPM3 is a calcium-permeable ion channel documented to be dysfunctional in ME/CFS NK cells @Sasso2026trpm3. Calcium signaling is required for CCR7-mediated chemotaxis: calcium influx drives actin polymerization, cytoskeletal rearrangement, and cell migration. CRITICAL CAVEAT: TRPM3 dysfunction has been demonstrated ONLY in NK cells, not in monocytes. Whether TRPM3 is expressed and dysfunctional in ME/CFS monocytes is entirely untested. IF TRPM3 dysfunction extends to monocytes, impaired calcium signaling could underlie the CCR7 trafficking defect observed by Petrov et al. @Petrov2026monocyteDC. This hypothesis bridges two independent findings — TRPM3 channelopathy and monocyte trafficking failure — but the bridge is currently a speculation with no direct monocyte calcium data. The compound probability of this multi-step chain is substantially lower than the nominal certainty rating: P(TRPM3 expressed in ME/CFS monocytes) x P(defective) x P(calcium defect impairs CCR7) x P(CCR7 impairment causes trafficking failure). TRPM3 agonists (pregnenolone sulfate, CIM0216) are research tools only; none have entered clinical trials for any indication.

*Mechanistic rationale.* Two independent ME/CFS findings — TRPM3 channelopathy in NK cells and monocyte trafficking failure — MAY converge on a single mechanism (defective calcium signaling impairing chemotaxis), but this remains a speculative bridge until TRPM3 expression and function are directly confirmed in ME/CFS monocytes. Testing this connection would unify two otherwise separate lines of evidence. The null hypothesis — that CCR7 reduction is independently regulated, unrelated to TRPM3 — is equally parsimonious.

*Safety.* TRPM3 agonists affect many tissues; selective agonists and patient selection (confirmed TRPM3 defect in monocytes) would be essential. None have entered clinical trials for ME/CFS.

*Testable prediction.* ME/CFS monocytes will show reduced calcium flux in response to CCL19 stimulation compared to controls (this has not been tested); if confirmed, TRPM3 agonist will partially restore chemotaxis in vitro in monocytes expressing functional TRPM3; TRPM3 expression on NK cells will correlate with CCR7 expression on monocytes across patients only if the defect is systemic rather than NK-specific.
]

== Costimulatory and Checkpoint Modulation

Petrov et al.\ demonstrated reduced CD80 expression on M1-like monocytes in ME/CFS, in contrast to elevated CD80 in long COVID — suggesting impaired costimulatory capacity specific to ME/CFS @Petrov2026monocyteDC. Combined with existing evidence for PD-1/PD-L1 checkpoint dysregulation in ME/CFS @iu2024tcell_exhaustion, this points to a potential dual deficit in T cell activation (low costimulation + active checkpoint inhibition). However, both features could be downstream consequences of a single upstream mechanism — chronic antigen stimulation, monocyte exhaustion, or epigenetic reprogramming — rather than independent targets requiring separate interventions. Therapeutic approaches that target CD80 or PD-1 directly must also contend with the unresolved question whether CD80 suppression is adaptive or maladaptive (see Open Questions below).

#speculation(title: [CD80 Costimulatory Agonists to Restore T Cell Priming])[
*Certainty: 0.20.* CD80 provides the essential second signal for T cell activation via CD28. Without adequate costimulation, T cells encountering antigen become anergic or tolerised rather than activated. CD28 superagonists (modified from the TGN1412 antibody family, with safety modifications following the 2006 cytokine storm event) could bypass deficient CD80 on monocytes and directly activate CD28 on T cells.

*Critical immunological caveat: CD80-CTLA-4 axis omitted from simplified rationale.* CD80 is a dual ligand: it binds both CD28 (costimulatory) AND CTLA-4 (inhibitory), with ~20-fold higher affinity for CTLA-4 than CD28. CD28 superagonist strategies that bypass CD80 lose the opportunity for CD80-CTLA-4 inhibitory engagement but could also fail to mimic the normal CD28/CTLA-4 balance. The net immunological effect of CD28 agonism without CD80-mediated CTLA-4 engagement is uncertain. Additionally, if CD80 suppression in ME/CFS is an adaptive protective mechanism (see Open Questions below), then restoring CD80 signaling — by any mechanism — could trigger autoimmune pathology, making the entire therapeutic rationale contingent on resolving the adaptive vs maladaptive question first.

*Safety.* CRITICAL: TGN1412 caused life-threatening cytokine release syndrome in 6 healthy volunteers in a 2006 Phase I trial — a seminal drug safety disaster. All 6 volunteers developed multi-organ failure within hours of infusion from a massive cytokine storm (IL-6, TNF-α, IFN-γ). Modified versions (dose titration starting 1--2 orders of magnitude below the expected pharmacologically active dose, partial agonism, Fc-silent antibodies) are under investigation but NONE are approved for clinical use. This approach would require:
    + Confirmed CD80 deficiency on M1-like monocytes by flow cytometry before consideration
    + Intensive inpatient cytokine monitoring (IL-6, TNF-α, IFN-γ every 2--4 hours for 24 hours post-dose)
    + Prophylactic corticosteroid and anti-IL-6 receptor antibody availability
    + Exclusion of patients with any history of autoimmunity, elevated baseline cytokines, or POTS with tachycardia episodes (autonomic instability may compound hemodynamic risk)
Given the catastrophic precedent of TGN1412 and the unresolved adaptive-vs-maladaptive question, this approach is currently suitable only as a research direction in in vitro models and should not be considered a therapeutic proposal without resolution of the CD80 tolerance question.

*Testable prediction.* In ex vivo co-culture, low-dose CD28 superagonist will restore ME/CFS monocyte-driven T cell proliferation without triggering supraphysiological cytokine release above 2x baseline; dose-response curves will identify a therapeutic window below the cytokine storm threshold.
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

== Nutritional Approaches to Monocyte Polarization

#speculation(title: [Vitamin D for CCR7 Upregulation in ME/CFS])[
*Certainty: 0.30.* Vitamin D receptor (VDR) signaling upregulates CCR7 transcription in dendritic cells. Vitamin D deficiency is prevalent in ME/CFS, and impaired CCR7 on monocytes and dendritic cells is documented @Petrov2026monocyteDC. Vitamin D3 (cholecalciferol 2,000--5,000 IU/day) or calcitriol could increase CCR7 expression, improving immune trafficking.

*Critical caveat: immunosuppressive paradox.* Vitamin D is an immunosuppressive hormone — it promotes Treg differentiation, tolerogenic DC maturation, suppresses Th1/Th17 responses, and can reduce costimulatory molecule expression (including CD80 in some contexts). In a condition already characterized by predominantly suppressively skewed monocyte/DC compartments, administering an immunosuppressive agent to upregulate a single trafficking receptor (CCR7) could worsen the overall immune deficit. The VDR-CCR7 upregulation link is primarily documented in the tolerogenic DC context — potentially counterproductive to the intended goal of restoring immune activation. The net immunological effect of vitamin D in ME/CFS (immunosuppressive vs CCR7-enhancing) has not been evaluated.

*Safety.* Generally well-tolerated; monitor serum calcium and 25(OH)D to avoid hypercalcemia. Target 25(OH)D 50--80 ng/mL.

*Testable prediction.* 8-week vitamin D3 5,000 IU/day will increase CCR7 MFI on ME/CFS monocytes ≥15% vs placebo; response will correlate with baseline 25(OH)D level; concurrent monitoring of tolerogenic DC markers and Treg frequency is essential to rule out net immunosuppressive effect.
]

#speculation(title: [Quercetin for CD80 Restoration via PI3K Inhibition])[
*Certainty: 0.30.* Quercetin inhibits PI3K/Akt signaling, which promotes M2 polarization and suppresses CD80. By shifting monocyte polarization toward M1, quercetin could increase CD80 expression, improving costimulatory capacity and T cell priming @Petrov2026monocyteDC. No ME/CFS monocyte polarization data exist; mechanism is inferred from cancer and metabolic disease literature.

*Critical caveat: targets polarization, not M1-intrinsic CD80 defect.* Petrov et al.\ found reduced CD80 specifically on M1-like (CD206-low) monocytes — cells that have already adopted an M1 phenotype but still have low CD80. This suggests an intrinsic costimulatory defect within the M1-like subset rather than merely an M2-skewing problem. Quercetin targets the polarization balance (M2→M1), but if M1-like cells in ME/CFS cannot express normal CD80 regardless of polarization state, shifting more cells into the M1-like subset will not restore CD80. Additional caveat: PI3K/Akt inhibition has pleiotropic effects — PI3K signaling is essential for T cell activation and proliferation, NK cell cytotoxic function, and B cell class-switch recombination. Systemic PI3K inhibition could impair the very cells already documented as dysfunctional in ME/CFS.

*Safety.* Generally safe at 500--1,000 mg/day; widely available. Bioavailability varies by formulation. No ME/CFS polarization data.

*Testable prediction.* 4-week quercetin 500 mg BID will increase CD80 MFI on ME/CFS M1-like monocytes ≥20% vs placebo ONLY if the primary defect is M2-skewing; if the defect is M1-intrinsic, CD80 will not improve despite polarization shift toward M1. Concurrent monitoring of T cell, NK cell, and B cell function needed to rule out PI3K-mediated impairment.
]

== Emergency PEM Prevention Protocol
#practical-warning[This is a mechanistic speculation (certainty 0.30), not an established clinical protocol. No RCTs validate this approach. The doses below are extrapolated from general metabolic biochemistry, not ME/CFS trials. Discuss with your physician before considering any component.]

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

The Sigma-1 receptor (S1R) is a unique chaperone protein located at the mitochondrial-associated ER membrane (MAM) that regulates calcium signaling, mitochondrial function, and cellular stress responses. S1R agonists like fluvoxamine have shown promise in ME/CFS due to their ability to modulate multiple dysregulated pathways simultaneously.

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
*(Certainty: 0.35.)* If IgM-dominant tissue-specific autoantibodies arise from ongoing extrafollicular BCR signaling — as suggested by the IgM persistence (60% vs 36% in controls, 141-day follow-up) in long COVID @Tatai2026TSAutoantibodies — BTK inhibition could suppress new autoantibody production. BTK (Bruton's tyrosine kinase) is critical for BCR signal transduction; BTK inhibitors (ibrutinib, acalabrutinib) are approved for B cell malignancies with demonstrated autoantibody reduction in rheumatoid arthritis and lupus.

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
    - *Moderate–severe, IgM-dominant:* BTK inhibitor trial enrollment — targets production
    - *Moderate–severe, IgG-dominant:* Immunoadsorption or daratumumab trial enrollment — targets existing antibodies and plasma cells
    - *Severe–very severe, dual-positive:* Combined immunoadsorption + anti-plasma-cell therapy + intensive monitoring — addresses both populations

*Rationale for stratification:* Different autoantibody profiles predict different dominant antibody production pathways (extrafollicular for IgM, germinal-center-derived for IgG), requiring different therapeutic strategies. Treating all patients with the same protocol — as was done in IA-PACS-CFS @Pressler2024IAPACSCFSprotocol — dilutes treatment effects within responsive subgroups.

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

*Expected time to response:* Weeks (metabolic remodeling + insulin sensitization requires sustained AMPK activation).

*Starting dose for severe patients:* 250 mg once daily (well below standard 500–850 mg BID; ME/CFS GI sensitivity common).

*Monitoring parameters:* HOMA-IR, fasting insulin, NET markers, GI tolerability, B12 (metformin depletes).

*Stopping criteria:* Intolerable GI symptoms, no change in HOMA-IR after 12 weeks, lactic acidosis (rare, less than 10 per 100,000 patient-years).

*Contraindications for bedbound patients:* GI side effects may be intolerable in patients with pre-existing nausea. Lactic acidosis risk theoretical but severe.
] <spec:metformin-netosis>

== Microclot and NET Structural Interventions

#speculation(title: [Targeting NET-Stabilised Microclots])[
*(Certainty: 0.25.)* Thierry et al. @Thierry2025MicroclotsNETs demonstrated that NETs are structurally incorporated into microclots in long COVID, with NET markers (MPO, NE, cfDNA) colocalising with microclot cores. This suggests NET scaffolding stabilizes microclots—a mechanism that would make microclots resistant to standard anticoagulants (heparin, DOACs) that target fibrin but not extracellular DNA. DNase I, by degrading the NET scaffold, could destabilize microclots without anticoagulant-associated bleeding risk—an attractive safety profile for ME/CFS patients with concurrent dysautonomia and fall risk. However, clinical microclot effects are unproven in ME/CFS, and the functional significance of microclots for symptoms is debated.

*Key prediction:* In vitro incubation of ME/CFS microclots with DNase I should reduce clot size and structural integrity. Falsified if microclots are DNase-resistant (suggesting fibrin-dominant composition without NET scaffolding).

*Limitation:* Microclot measurement is non-standardized; clinical significance unknown; no ME/CFS microclot-NET colocalisation data exist.
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

== HSP70 Pathway Enhancement for Neuroprotection

The Kang et al.@Kang2026ExosomeHSP70Sleep demonstration that exosome-delivered HSP70 mRNA reverses neuroinflammation raises the question of whether endogenous HSP70 enhancement — without engineered exosomes — could provide partial neuroprotection in ME/CFS. Several pharmacological and non-pharmacological approaches upregulate HSP70 expression.

#speculation(title: [HSP70-Inducing Pharmacological Agents as Neuroprotective Adjuncts in ME/CFS])[
*Certainty: 0.45.* HSP70 inducers are clinically available for other indications; neuroprotective effect in ME/CFS is inferred from Kang et al. and general HSP70 biology; BBB crossing mechanisms documented by Ramos-Zaldívar et al.; brain-targeted engineering platforms reviewed by Sanadgol et al.. (0.40→0.45: independent convergence with heat therapy as HSP70 induction strategy strengthens mechanistic rationale.) No ME/CFS-specific data.

*Candidate agents with existing human safety data:*
    - *Arimoclomol*: Co-inducer of the heat shock response; prolongs HSF1 activation; crosses BBB; Phase III completed for ALS (orphan drug status in EU). No ME/CFS data.
    - *Geranylgeranylacetone (GGA)*: Gastric mucosal protectant used in Japan for decades; induces HSP70 in CNS at standard doses. Low cost, favourable safety profile, but CNS penetration modest.
    - *BGP-15*: Hydroxylamine derivative; insulin sensitiser + HSP70 co-inducer; Phase II completed for diabetes. CNS penetration data limited.

*Mechanistic rationale.* Kang et al.@Kang2026ExosomeHSP70Sleep showed that HSP70 in CNS cells reduces TNF-α, IL-6, and IL-1β while increasing IL-10, BDNF, and pCREB. Pharmacological HSP70 induction would not replicate the spatial targeting of RVG-exosomes but would provide systemic HSP70 elevation, potentially crossing the BBB in regions where permeability is already increased (Section @sec:bbb). The HSP70 pathway is already relevant to ME/CFS via the HSF1-HSAT2 axis — heat therapy recommendations exist for ME/CFS (Section Chapter @ch:lifestyle) — but the HSAT2 activation concern (pericentromeric satellite repeat transcription under HSF1) must be weighed against HSP70's anti-inflammatory benefits.

*Synergy with exosome delivery.* Idea 1.5 from brainstorm: HSP70-inducing drugs could provide sustained chaperone capacity while exosome-delivered HSP70 mRNA provides immediate peak levels. The combination would address the delay between drug administration and transcriptional HSP70 induction (hours to days).

*Safety.* Arimoclomol: generally well-tolerated (GI disturbance most common AE). BGP-15: limited long-term data. Heat therapy: already in the paper with explicit HSAT2 cautions. All pharmacological HSP70 inducers are contraindicated in active infection (HSP70 supports viral replication in some contexts).

*Testable prediction.* ME/CFS patients receiving HSP70-inducing agents (arimoclomol or GGA, 8 weeks) will show increased peripheral blood mononuclear cell HSP70 levels by ≥30% from baseline and corresponding reduction in serum inflammatory biomarkers (IL-6, TNF-α) compared to placebo. Falsified if HSP70 induction occurs without neuroinflammatory biomarker improvement, or if HSAT2 retroelement RNA increases in plasma EVs proportionally with HSP70 elevation (indicating HSF1-mediated retroelement activation outweighs anti-inflammatory benefit).

*Limitations.* Certainty 0.35. No ME/CFS data for any HSP70 inducer. The optimal agent, dose, and duration for CNS HSP70 elevation are unknown. The HSAT2 transcription risk under sustained HSF1 activation has not been quantified in ME/CFS patients — this could be a net-harm scenario if retroelement activation outweighs anti-inflammatory benefit. This is a research direction, not a treatment recommendation.
] <spec:hsp70-inducers>

#speculation(title: [PPARγ Agonists as Exosome Uptake Enhancers])[
*Certainty: 0.20.* Macropinocytosis enhancement documented for pioglitazone in cancer cell lines; no CNS exosome uptake data; no ME/CFS data.

Ramos-Zaldívar et al. identified macropinocytosis as one of several mechanisms by which EVs cross the BBB. PPARγ agonists (pioglitazone, rosiglitazone) upregulate macropinocytosis pathway components and have been shown to enhance nanoparticle uptake in some experimental systems. If PPARγ agonism increases exosome internalisation by CNS target cells, it could lower the required therapeutic exosome dose — addressing the very low (less than 1 percent) CNS delivery fraction limitation of systemic administration.

*ME/CFS-specific considerations.* Pioglitazone has anti-inflammatory effects independent of exosome uptake enhancement (PPARγ activation suppresses NF-κB, reduces microglial activation) — these may provide independent benefit in ME/CFS neuroinflammation. However, pioglitazone carries FDA black-box warnings for congestive heart failure and is associated with weight gain, fluid retention, and bone fracture risk — all problematic in a bedbound/severe population with pre-existing orthostatic intolerance and potential cardiac dysfunction.

*Testable prediction.* Pioglitazone pretreatment will increase exosome uptake in primary hippocampal neurons by ≥1.5-fold in vitro, measured by flow cytometry or fluorescence microscopy; this effect will be abolished by the macropinocytosis inhibitor EIPA.

*Limitations.* Certainty 0.20. No CNS exosome uptake data exist for any PPARγ agonist. The macropinocytosis-to-exosome-uptake pathway is documented for some cell types but not neurons or microglia. Pioglitazone safety profile is unfavourable for a non-life-threatening condition; even if effective, the risk-benefit ratio would be challenging. This is a mechanistic probe, not a treatment proposal.
] <spec:pparg-exosome-uptake>

#open-question(title: [Can Transcutaneous Vagus Nerve Stimulation Enhance Therapeutic Exosome CNS Delivery?])[
Vagus nerve stimulation transiently increases BBB permeability via cholinergic anti-inflammatory pathway activation. If tVNS applied 30 minutes before exosome administration increases CNS exosome accumulation — as hypothesised from the inflammation-enhanced EV permeability documented by Ramos-Zaldívar et al. — it could provide a non-pharmacological method to boost therapeutic delivery. This is completely untested. The risk is that tVNS-mediated BBB opening is non-selective, potentially allowing entry of peripheral inflammatory mediators alongside therapeutic exosomes. Pilot biodistribution studies in animal models would be required before any human application.
]

== Engineered Exosome-Mediated mRNA Delivery to the CNS

Engineered extracellular vesicles represent an emerging therapeutic delivery platform that may address a central obstacle in ME/CFS treatment: the blood-brain barrier's restriction of most pharmacological agents from reaching CNS targets (Section @sec:bbb-vulnerability).

#speculation(title: [Engineered Exosomes as CNS-Targeted Therapeutic Delivery Vehicles for ME/CFS Neuroinflammation])[
*Certainty: 0.30.* Preclinical proof-of-principle in mouse sleep deprivation; no human or ME/CFS data; manufacturing and targeting challenges substantial.

*Mechanistic rationale.* Endogenous extracellular vesicles already traffic bidirectionally across the BBB in ME/CFS and related conditions (Section @sec:bbb), carrying both pathological cargo (retroelement RNAs, inflammatory signals) and potentially regulatory signals. Engineering exosomes to carry therapeutic mRNA — anti-inflammatory cytokines, neurotrophic factors, mitophagy enhancers, or TRPM3 normalisers — exploits this existing trafficking pathway for therapeutic gain. The Kang et al.@Kang2026ExosomeHSP70Sleep demonstration that RVG-targeted exosomes carrying HSP70 mRNA reverse cognitive deficits and reduce hippocampal neuroinflammation in sleep-deprived mice establishes that: (1) engineered EV mRNA cargo is functional in CNS recipient cells, (2) systemic administration achieves CNS delivery, and (3) a single neuroprotective mRNA can shift the neuroinflammatory environment from pro-inflammatory to restorative.

*Engineering platform.* Current strategies for brain-targeted exosome delivery include: RVG peptide targeting (exploits nicotinic acetylcholine receptor expression on neurons), Lamp2b fusion proteins, CD63-based cargo loading, and electroporation-mediated mRNA loading . Source cell engineering (HEK293T, mesenchymal stem cells, or autologous patient-derived cells) determines exosome surface protein composition and immunogenicity. Each variable — source cell type, targeting ligand, cargo type (mRNA vs siRNA vs miRNA vs protein), and loading method — affects CNS delivery efficiency and off-target distribution.

*ME/CFS-specific considerations.* Several features of ME/CFS may alter EV trafficking dynamics in ways that either help or hinder therapeutic delivery:
    - Increased BBB permeability in a subset of patients (elevated CSF/serum albumin ratio) may enhance EV CNS entry — the same permeability that permits pathological EV entry could facilitate therapeutic EV entry
    - Chronic neuroinflammation may upregulate adhesion molecules and alter transcytosis rates — preclinical studies show that TNF-α and LPS increase BBB EV permeability , but whether this applies to engineered EVs carrying specific targeting ligands is unknown
    - Autonomic dysfunction and reduced cardiac output may alter EV biodistribution — systemically administered exosomes distribute primarily to liver, spleen, and lungs; the fraction reaching the brain is typically less than 1 percent of the injected dose, and this fraction may be further reduced in ME/CFS with global hypoperfusion
    - Repeated dosing immunogenicity is a concern in a condition already characterized by immune dysregulation and autoantibody production — patient-derived autologous exosomes would minimise immunogenicity but introduce manufacturing complexity

*Safety.* No engineered exosome therapy has entered human clinical trials for any CNS indication as of 2026. Key unknowns: (1) off-target mRNA expression in non-CNS tissues (liver, spleen, bone marrow), (2) immunogenicity of exosome surface proteins (particularly if sourced from xenogeneic cell lines), (3) horizontal transfer of engineered genetic material to unintended cell types, (4) long-term effects of repeated exogenous mRNA delivery on endogenous gene regulation. These concerns are theoretical — the Kang et al. study reported no adverse effects, but this was a single-administration study in immunocompetent mice. ME/CFS patients with documented autoantibodies, MCAS, or prior immunoadsorption therapy may have altered responses that are entirely uncharted.

*Testable predictions.*
    - ME/CFS patient-derived CSF should show EV subpopulations with cargo profiles (miRNA, protein, lipid) distinct from healthy controls — characterising these endogenous subpopulations would inform the design of therapeutic exosomes
    - In vitro, iPSC-derived ME/CFS neurons and microglia treated with anti-inflammatory mRNA-loaded exosomes should show reduced cytokine production and improved mitochondrial respiration compared to untreated cells
    - In vivo, radiolabeled or fluorescently tagged engineered exosomes should show measurable CNS uptake in ME/CFS animal models — if they do not, the entire therapeutic concept is moot

*Limitations.* Certainty 0.30. Single preclinical study; no ME/CFS data of any kind; manufacturing standardisation, scalability, and regulatory pathways for mRNA-loaded exosomes do not exist; CNS delivery fraction is typically less than one percent of injected dose, and whether ME/CFS-specific physiology alters this fraction is unknown; cost and complexity place this in the research-only category for the foreseeable future. This is a research direction, not a therapeutic proposal.

*Research priority.* Low for clinical translation (no near-term path to human trials), high for mechanistic understanding (characterising endogenous EV trafficking in ME/CFS would illuminate inter-compartment signaling regardless of whether therapeutic exosomes ever reach the clinic).
]

#speculation(title: [Alternative BBB Targeting Ligands Beyond RVG])[
*Certainty: 0.20.* RVG targets neuronal nicotinic acetylcholine receptors — alternative ligands (ApoE, transferrin receptor antibodies, RVG-9R) may have superior pharmacokinetics or regional specificity for ME/CFS-relevant brain regions . No comparative CNS exosome targeting data exist. This is a platform engineering question, not a clinical proposal.
] <spec:alternative-exosome-targeting>

#speculation(title: [Ultrasound-Mediated BBB Opening for Spatially Targeted Exosome Delivery])[
*Certainty: 0.15.* Focused ultrasound transiently opens BBB at precise locations; combining with systemically administered therapeutic exosomes could increase CNS accumulation 5--10 fold at targeted regions while minimising systemic exposure. FDA-approved for drug delivery in trials but never combined with exosomes. Completely untested in any model.
] <spec:ultrasound-exosome-delivery>

#speculation(title: [Exosome-Mediated siRNA Delivery for Viral Clearance in CNS Reservoirs])[
*Certainty: 0.15.* If latent herpesviruses (EBV, HHV-6) persist in CNS reservoirs contributing to ME/CFS symptoms, exosomes engineered to deliver antiviral siRNA or CRISPR cargo could theoretically target these reservoirs. Exosome-mediated siRNA delivery is established in cancer models; CNS antiviral delivery is entirely speculative. Research curiosity only.
] <spec:exosome-antiviral-cns>

#speculation(title: [Exosome-Mediated BDNF Gene Therapy for Sustained Neuroplasticity])[
*Certainty: 0.15.* Kang et al.@Kang2026ExosomeHSP70Sleep demonstrated mRNA delivery; BDNF upregulation was observed as a secondary effect. Engineering exosomes to deliver BDNF gene (not mRNA) could produce sustained BDNF overexpression in hippocampal neurons with single administration — bypassing the need for repeated dosing. Gene therapy via viral vectors raises safety concerns; exosome-mediated delivery could address these. No gene-therapy exosome exists; this is a conceptual future direction only.
] <spec:exosome-bdnf-gene-therapy>

#speculation(title: [Exosomes + Mitochondrial Biogenesis Agents as Multi-Axis Combination Therapy])[
*Certainty: 0.25.* ME/CFS involves both neuroinflammation and mitochondrial dysfunction. Combining exosome-delivered HSP70 (reducing neuroinflammation) with mitochondrial biogenesis enhancers (nicotinamide riboside, urolithin A) could address two pathophysiological axes simultaneously. HSP70 also supports mitochondrial protein import, suggesting mechanistic synergy beyond simple additivity. Entirely untested — no combination exosome + supplement study exists.
] <spec:exosome-mitochondrial-combo>

== Thermoregulatory Drug Candidates

#speculation(title: [Bosentan — ET-1 Receptor Antagonism for Thermoregulatory Dysfunction])[
*Certainty: 0.25.* Bosentan (dual ET_A/ET_B antagonist, approved for pulmonary arterial hypertension) reduces vascular tone by blocking endothelin-1 signaling. If ET-1-mediated tonic vasoconstriction contributes to thermoregulatory failure (ch10:@spec:vasomotor-constriction-bias, Cambras et al. \ @Cambras2023SkinTemperatureEndothelin), bosentan could restore vasomotor flexibility and improve heat tolerance. However, bosentan carries hepatotoxicity risk (monthly liver enzyme monitoring required) and is teratogenic (contraindicated in pregnancy), making risk-benefit for non-life-threatening thermoregulatory symptoms highly unfavorable outside clinical trials. Falsifiable: bosentan vs placebo x 8 weeks in ME/CFS patients with elevated ET-1 (>2.5 pg/mL) improves skin temperature rhythm amplitude by >30% and heat tolerance by Δ2°C, with no benefit in ET-1-normal subgroup. No ME/CFS data; ET-1-thermoregulation link is correlational only @Cambras2023SkinTemperatureEndothelin.
] <spec:bosentan-thermoreg>

#speculation(title: [Arimoclomol — Pharmacological HSP70 Induction Without Thermal Stress])[
*Certainty: 0.25.* Arimoclomol (HSP70 co-inducer, approved for Niemann-Pick disease type C in the EU) amplifies HSP70 expression during cellular stress without requiring thermal exposure. If WBH improves mitochondrial function in ME/CFS via HSP70 induction @Hochecker2025HyperthermiaMECFS, arimoclomol could provide the same benefit without sauna access or thermal intolerance risk. The drug amplifies endogenous stress responses rather than creating new ones, potentially lowering the risk of triggering PEM compared to thermal therapy. Falsifiable: arimoclomol vs placebo x 12 weeks increases PBMC HSP70 protein >2-fold and improves ISR biomarkers (p-eIF2α, ATF4) by >30%. No ME/CFS data; approved only for Niemann-Pick type C (orphan drug).
] <spec:arimoclomol-hsp70>

#speculation(title: [MitoQ — Mitochondria-Targeted Antioxidant for ROS-HSP70 Coupling])[
*Certainty: 0.25.* Hypothesis H3 (brainstorm) proposes that mitochondrial ROS overload prevents adequate HSP70 induction in ME/CFS, creating a self-reinforcing loop: ROS → proteotoxic stress → HSP70 sequestration → worse mitochondrial quality → more ROS. MitoQ (mitochondria-targeted ubiquinone) concentrates at the inner mitochondrial membrane and reduces superoxide production at source. By lowering mitochondrial ROS burden, MitoQ could restore HSP70 inducibility and break the ROS-HSP70 feedback loop — independently of any thermal stimulus. Falsifiable: MitoQ vs placebo x 8 weeks reduces PBMC mitochondrial ROS (MitoSOX) by >30% and restores thermal-HSP70 inducibility to >80% of healthy control levels. No ME/CFS MitoQ data; human safety established in Parkinson's and NAFLD trials.
] <spec:mitoq-ros-hsp70>

#speculation(title: [Pregnenolone Sulfate — TRPM3 Agonist for Calcium Signaling and TRPV1 Inhibition])[
*Certainty: 0.20.* Pregnenolone sulfate is an endogenous neurosteroid and TRPM3 agonist. If TRPM3 channelopathy impairs calcium signaling in ME/CFS immune cells, and if TRPM3 agonism functionally inhibits TRPV1-mediated heat hyperresponsiveness (brainstorm Hypothesis H8), pregnanolone sulfate could simultaneously restore TRPM3-dependent calcium flux and reduce heat-triggered MCAS symptoms. The dual mechanism — calcium rescue + TRPV1 suppression — makes it mechanistically distinct from purely thermal TRPM3 activation. Falsifiable: pregnanolone sulfate normalizes TRPM3 calcium influx in ME/CFS PBMCs and reduces heat-triggered CGRP release by 40% within 4 weeks. No ME/CFS data; TRPM3 agonism is established in vitro only; TRPM3-TRPV1 antagonism demonstrated in sensory neurons, not immune cells.
] <spec:pregnenolone-trpm3>

#speculation(title: [Clonidine Patch — α2-Adrenergic Agonist for Vasomotor Bias Correction])[
*Certainty: 0.25.* Clonidine (α2-agonist, 0.1 mg/24h patch) reduces central sympathetic outflow, which could counteract the tonic vasoconstriction bias proposed to underlie dual heat+cold intolerance (ch10:@spec:vasomotor-constriction-bias). Reduced sympathetic tone would permit cutaneous vasodilation during heat stress and allow perfusion recruitment for thermogenesis during cold stress — restoring vasomotor dynamic range from the neural side rather than the vascular (ET-1) side. However, clonidine can worsen orthostatic hypotension in POTS patients, making it contraindicated in the dysautonomic ME/CFS majority. Further, Sulheim et al. (2014) RCT of clonidine in adolescent CFS (n=120) found no clinical improvement @Sulheim2014clonidine, and the central NE deficiency documented in ME/CFS (Aregawi 2026) suggests clonidine would further suppress already-low central noradrenergic output @Aregawi2026Noradrenergic. Falsifiable: clonidine patch over 4 weeks increases baseline cutaneous perfusion by 25% and restores vasomotor responses to both heat and cold challenge; orthostatic symptoms do not worsen in patients without pre-existing hypotension. No ME/CFS clonidine thermoregulation data; safety concern in dysautonomia is well-documented; the null RCT in CFS weakens the mechanistic rationale.
] <spec:clonidine-vasomotor>

#open-question(title: [Could Low-Dose Naltrexone Improve Thermoregulation via Microglial TRPM3 Modulation?])[
LDN (1--4.5 mg nightly) modulates microglial activation via toll-like receptor 4 antagonism and has documented effects on TRPM3 calcium channel function in ME/CFS NK cells @Cabanas2021. If central thermoregulatory centers (hypothalamus, brainstem) are under chronic microglial-mediated inflammatory tone, LDN could improve thermoregulation indirectly by reducing neuroinflammation, independently of its TRPM3 effects. The dual mechanism — peripheral TRPM3 normalization + central glial modulation — would predict thermoregulatory benefit as a secondary outcome. Falsifiable: LDN over 12 weeks improves TRPM3 calcium influx by 25% and reduces heat intolerance symptoms by 30%; improvement correlates with baseline inflammatory markers. No ME/CFS LDN thermoregulation data; LDN evidence in ME/CFS is from small open-label studies.
] <oq:ldn-thermoreg>

=== GPCR Autoantibody-Targeted Pharmacological Strategies

All below are research-stage only; no ME/CFS human dosing data exists for any. No clinical GPCR autoantibody test is available — CellTrend ELISA is research-only; these stratifications cannot be implemented in routine care. No stopping criteria, monitoring parameters, or drug-interaction data specific to ME/CFS exist for any proposal below. @Azcue2026gpcr.

#speculation(title: [Low-Dose Propranolol for $beta_2$-AAb-Positive ME/CFS])[
*Certainty: 0.50.* Low-dose propranolol (5mg BID, titrated to max 40mg BID) as competitive antagonist blocking $beta_2$-AAb binding, allowing receptor resensitization. Titration based on HRV response and orthostatic BP. Prediction: $beta_2$-AAb-positive patients show greater HRV improvement on propranolol vs $beta_2$-AAb-negative. Contraindicated in asthma, bradycardia, hypotension. Not a clinical recommendation — research-stage. @Azcue2026gpcr @Stein2024immunoadsorption.
] <spec:low-dose-propranolol-beta2-aab>

#open-question(title: [M1/M4 Positive Allosteric Modulators for Muscarinic-Cognitive Enhancement])[
Experimental M1/M4 PAMs (e.g., VU0467154) enhance endogenous acetylcholine signaling without direct agonism, potentially synergizing with moderate M1/M4-AAb-mediated cognitive protection. Could benefit M1/M4-AAb-low ME/CFS with cognitive impairment. No approved M1/M4 PAMs exist; all are experimental compounds. Prediction: greater cognitive improvement in moderate-AAb vs low-AAb patients on PAM. Safety: cholinergic excess (bradycardia, GI upset) at high doses. @Azcue2026gpcr.
] <oq:m1-m4-pam-muscarinic-cognition>

#speculation(title: [Fc$gamma$R Blockade with Fc(ab')$""_2$ Fragments])[
*Certainty: 0.45.* If $beta_2$-AAbs are pathogenic via Fc$gamma$R engagement (not direct receptor agonism), Fc(ab')$""_2$ fragments (IVIG digested, Fc removed) would block Fc$gamma$R-mediated monocyte activation without removing antibodies. Requires experimental compounding. Prediction: Fc$gamma$R blockade reduces IL-6 and TNF$alpha$ in $beta_2$-AAb-positive patients vs placebo. High cost. @Hackel2025monocyte @Azcue2026gpcr.
] <spec:fcgr-blockade-ivig-fragment>

#speculation(title: [Raloxifene for $beta_2$-AAb Reduction in Postmenopausal Females])[
*Certainty: 0.35.* Raloxifene 60mg daily (FDA-approved SERM for osteoporosis), ER$alpha$ antagonist, may reduce $beta_2$-AR expression on B cells and thus $beta_2$-AAb antigenicity in postmenopausal females. Prediction: $beta_2$-AAb titer reduction at 6 months vs placebo. Contraindicated in premenopausal women; thrombosis risk. Purely mechanistic — no AAb-specific data. @Azcue2026gpcr.
] <spec:raloxifene-serm-female-beta2-aab>

#speculation(title: [Low-Dose Dronabinol for CB1-Mediated Cognitive Protection])[
*Certainty: 0.30.* Dronabinol 2.5mg BID as partial CB1 agonist to amplify muscarinic-AAb-mediated cognitive protection (via CB1-mAChR heterodimer cross-activation) in M1/M4-AAb-low ME/CFS. Prediction: cognitive improvement greater in low-AAb vs high-AAb patients (ceiling effect). Psychoactive side effects limit tolerability. @Azcue2026gpcr.
] <spec:low-dose-dronabinol-cb1-cognition>

#speculation(title: [Quercetin for $beta_2$-AR Resensitization])[
*Certainty: 0.40.* Quercetin 500mg phytosome BID upregulates $beta_2$-AR expression via CREB pathway, potentially resensitizing receptors desensitized by chronic $beta_2$-AAb binding. Prediction: HRV improvement in $beta_2$-AAb-positive vs negative patients at 12 weeks. Caution: quinolone antibiotic interaction reduces absorption. @Azcue2026gpcr.
] <spec:quercetin-beta2-ar-resensitization>

#speculation(title: [Omega-3 (EPA/DHA) for Fc$gamma$R Modulation])[
*Certainty: 0.45.* EPA 2g + DHA 1g daily incorporates into immune cell membranes, altering lipid raft composition and reducing Fc$gamma$R signaling affinity. May dampen Fc$gamma$R-mediated cytokine production triggered by GPCR-IgG1 AAbs. Prediction: IL-6 reduction correlates with omega-3 index >8% at 24 weeks. Well-tolerated; low risk. @Hackel2025monocyte @Azcue2026gpcr.
] <spec:omega3-fcgr-modulation>

#speculation(title: [NAC for GPCR AAb Bystander Suppression])[
*Certainty: 0.38.* NAC 600mg TID increases glutathione, shifting redox balance toward reduced state. Oxidative stress promotes B cell activation; NAC may suppress aberrant B cell activity and reduce GPCR AAb production. Prediction: GPCR AAb titer reduction correlates with glutathione increase at 16 weeks. Caution: rare paradoxical bronchospasm. @Azcue2026gpcr.
] <spec:nac-gpcr-aab-bystander-suppression>

#speculation(title: [Vitamin D Repletion for GPCR AAb Immune Tolerance])[
*Certainty: 0.42.* Vitamin D3 5,000 IU daily to 25-OH-D 50--80 ng/mL induces Tregs and promotes B cell tolerance. Repletion may reduce GPCR AAb production by restoring immune regulation. Prediction: AAb reduction correlates with CD4#super[+]CD25#super[+]FoxP3#super[+] Treg increase at 6 months. Low risk; vitamin D deficiency common in ME/CFS. @Azcue2026gpcr.
] <spec:vitamin-d-gpcr-aab-immune-tolerance>

#speculation(title: [Roflumilast — PDE4 Inhibition for cAMP-Mediated Autophagy Regulation])[
*Certainty: 0.20.* PDE4 inhibitors increase intracellular cAMP, which modulates autophagy via AMPK and mTOR pathways. In ME/CFS, where autophagy is dysregulated (elevated ATG13, elevated LC3-II), roflumilast (PDE4 inhibitor, approved for COPD, 500 µg/day) could shift autophagy balance from chronic selective overload toward bulk degradation — complementing the WBH-induced autophagy switch proposed at ch06:@spec:autophagy-switch-heat. Falsifiable: roflumilast over 4 weeks reduces LC3-II/p62 ratio toward control levels and improves mitochondrial spare capacity by 30%. No ME/CFS PDE4 data; gastrointestinal side effects in 20% at COPD dose.
] <spec:roflumilast-autophagy>

#speculation(title: [4-Phenylbutyrate — Chemical Chaperone for ER Stress-HSP70 Coupling])[
*Certainty: 0.20.* 4-Phenylbutyrate (4-PB, chemical chaperone approved for urea cycle disorders, 9 g/day TID) reduces ER stress by stabilizing protein folding, potentially freeing HSP70 from ER chaperone duty for mitochondrial protein import support. If ER stress contributes to functional HSP70 deficiency in ME/CFS, 4-PB could restore HSP70 availability independently of thermal induction. Falsifiable: 4-PB over 4 weeks reduces ER stress markers (GRP78, CHOP) by 30% and increases available HSP70 by 25%. No ME/CFS data; taste disturbance in 20% at therapeutic dose.
] <spec:4pb-er-stress-hsp70>

#speculation(title: [Mirabegron — Beta3-Adrenergic Agonist for BAT-Mediated Cold Intolerance])[
*Certainty: 0.20.* Mirabegron (beta3-adrenergic agonist, 50 mg/day, approved for overactive bladder) activates brown adipose tissue via UCP1-dependent thermogenesis. If ME/CFS cold intolerance reflects failed BAT activation from sympathetic dysregulation (ch10:@oq:bat-cold-intolerance), mirabegron could bypass the sympathetic deficit and restore cold thermogenesis directly at the adipocyte beta3 receptor. However, active BAT is minimal in adults over 40 — the typical ME/CFS demographic — and tachycardia is a known side effect that could worsen POTS symptoms. Falsifiable: mirabegron over 4 weeks increases BAT ^18F-FDG uptake by >50% in ME/CFS patients under 40 with detectable baseline BAT. No ME/CFS data; BAT activation demonstrated in healthy young adults only. Pre-existing POTS is a relative contraindication.
] <spec:mirabegron-bat>

== Inflammation Resolution-Targeted Therapies
<sec:resolution-targeted-therapies>

=== Glycyrrhizin for HMGB1-Mediated PEM Prevention
<sec:glycyrrhizin-hmgb1>

#speculation(title: [Glycyrrhizin for HMGB1-Mediated PEM Prevention])[
*Certainty: 0.35.* Glycyrrhizin (glycyrrhizic acid), the active component of licorice root, is a direct inhibitor of HMGB1's chemotactic and cytokine-inducing activities. It binds HMGB1 at the Box A/B interface, blocking its interaction with TLR4 and RAGE without affecting DNA-binding functions. Glycyrrhizin is FDA-approved as an oral supplement (standardized to 15-30% glycyrrhizic acid) and available as intravenous glycyrrhizin in Japan (Stronger Neo-Minophagen C) for chronic hepatitis.

*Rationale for PEM prevention.* HMGB1 translocates from nucleus to extracellular space under oxidative stress, and its redox state determines whether it acts as a pro-inflammatory cytokine (disulfide-HMGB1) or chemotactic factor (fully reduced HMGB1). Exercise-induced oxidative stress during exertion may shift HMGB1 toward the pro-inflammatory disulfide form, triggering the PEM cascade @Ibrahim2026HMGB1Neuroinflammation @Chen2026HMGB1pCTSLAxis.

*Mechanism:*
- Glycyrrhizin binds HMGB1 directly, blocking TLR4/RAGE binding
- Prevents HMGB1-mediated microglial activation (reducing neuroinflammatory amplification)
- Reduces HMGB1-driven TNF-alpha and IL-1beta release
- Does not affect HMGB1's nuclear function (DNA chaperone), preserving normal cellular stress responses
- Half-life ~8h; oral bioavailability limited but sufficient

*Implementation:* Oral glycyrrhizin 200-400 mg (50-100 mg glycyrrhizic acid) taken before planned exertion or at first sign of PEM onset. Drug interaction: glycyrrhizin inhibits 11beta-HSD2, increasing cortisol availability at mineralocorticoid receptors — this mechanism causes pseudoaldosteronism (hypertension, hypokalemia, edema) in susceptible individuals.

*Safety considerations:*
- Dose-dependent pseudoaldosteronism limits chronic use; avoid in hypertension, hypokalemia, renal impairment
- Concurrent use with thiazide diuretics or loop diuretics increases hypokalemia risk
- Duration: short-term/PRN for PEM prevention rather than continuous daily use
- Carbenoxolone (a glycyrrhetinic acid derivative) has stronger 11beta-HSD2 inhibition; glycyrrhizin is preferred for lower mineralocorticoid activity

*Testable prediction:* ME/CFS patients receiving glycyrrhizin 200 mg before standardized CPET show reduced plasma disulfide-HMGB1 at 6h post-exercise and reduced PEM severity (PEM duration reduced by >24h) compared to placebo. Falsified if glycyrrhizin does not reduce post-exertional HMGB1 or if HMGB1 reduction does not correlate with PEM improvement.

*Cross-reference:* HMGB1 DAMP hypothesis (@sec:um-resolution, Chapter @ch:universal-mechanisms). HMGB1-ferroptosis ODE model (@prop:hmgb1-ferroptosis-ode, Chapter @ch:causal-hierarchy). DAMP clearance protocol (@spec:c2-damp-clearance).
] <spec:glycyrrhizin-hmgb1>

=== TUDCA/4-PBA for UPR Inhibition
<sec:tudca-4pba-upr>

#speculation(title: [TUDCA and 4-Phenylbutyrate for ER Stress/UPR Inhibition])[
*Certainty: 0.30.* The unfolded protein response (UPR) is chronically activated in conditions involving oxidative stress, viral infection, and mitochondrial dysfunction — all documented in ME/CFS. If UPR activation contributes to ME/CFS pathophysiology via IRE1alpha-driven IL-6/TNF-alpha production and PERK-eIF2alpha-mediated NF-kB activation, chemical chaperones that reduce ER stress could provide a therapeutic avenue @Kawano2023ERSleep.

*Tauroursodeoxycholic acid (TUDCA):*
- Endogenous bile acid that acts as a chemical chaperone, stabilizing protein folding in the ER
- Reduces ER stress markers (GRP78, CHOP, spliced XBP1) in multiple disease models
- FDA-approved (as ursodiol) for primary biliary cholangitis at 13-15 mg/kg/day; TUDCA is the taurine-conjugated form with better solubility
- Half-life ~4-6h; well-tolerated (diarrhea most common AE at high doses)
- Neuroprotective in preclinical models of Huntington's, Parkinson's, and Alzheimer's

*4-Phenylbutyrate (4-PBA):*
- Low molecular weight fatty acid that reduces ER stress by stabilizing protein conformation and enhancing ERAD (ER-associated degradation) capacity
- FDA-approved for urea cycle disorders (Ammonul, Buphenyl) at 9 g/day (divided TID)
- Also acts as a histone deacetylase (HDAC) inhibitor, providing potential epigenetic benefit
- Side effects: taste disturbance, menstrual irregularities, edema; ammonia scavenging effect may alter clinical ammonia monitoring
- Distinguish from sodium phenylbutyrate (which contains sodium load problematic for POTS patients): glycerol phenylbutyrate preferred in ME/CFS

*ME/CFS-specific rationale:*
- ER stress is the upstream activator of all three UPR arms (IRE1alpha, PERK, ATF6)
- IRE1alpha-XBP1 drives IL-6 and TNF-alpha transcription — directly relevant to ME/CFS inflammatory profile
- PERK-eIF2alpha activates NF-kB via IkB degradation, linking UPR to the broader inflammatory cascade
- ER-mitochondria contact sites (MAMs) regulate calcium transfer; ER stress at MAMs impairs mitochondrial function directly
- The UPR connects to sleep disruption (Kawano et al. @Kawano2023ERSleep demonstrated ER proteostasis signals regulate sleep), providing a mechanistic link to ME/CFS sleep pathology
- Bistable UPR switching (once activated, persists without ongoing trigger — see @prop:ire1alpha-bistable-model) predicts that early intervention before irreversible commitment to chronic UPR may be most effective

*Implementation:*
- TUDCA: 500-1000 mg/day (typically 15 mg/kg) for 12 weeks; taken with food to improve absorption
- 4-PBA (glycerol phenylbutyrate): 3-6 g/day divided TID (half the standard urea cycle dose to reduce side effect burden); requires monitoring of phenylacetate levels
- Combination TUDCA + 4-PBA may provide additive benefit through different chaperone mechanisms

*Testable prediction:* ME/CFS patients receiving TUDCA 1g/day show reduced ER stress markers (GRP78, sXBP1, CHOP) in PBMCs at 12 weeks, correlating with reduced TNF-alpha and IL-6 levels and improved fatigue scores. Adding 4-PBA provides additional reduction in CHOP (pro-apoptotic marker) not seen with TUDCA alone. Falsified if UPR markers are normal at baseline or if TUDCA/4-PBA does not suppress ME/CFS UPR despite target engagement.

*Cross-reference:* IRE1alpha bistable switch model (@prop:ire1alpha-bistable-model, Chapter @ch:causal-hierarchy). UPR/ER stress section (@sec:um-proteostasis, Chapter @ch:universal-mechanisms). ER stress resolution protocol (@spec:c3-er-stress-resolution).
] <spec:tudca-4pba-upr>

=== tVNS for SPM Induction
<sec:tvns-spm-induction>

#speculation(title: [Transcutaneous Vagal Nerve Stimulation for SPM Induction])[
*Certainty: 0.35.* Vagal signaling via the cholinergic anti-inflammatory pathway stimulates resolvin production: alpha7-nAChR activation on macrophages and monocytes promotes SPM biosynthesis through a STAT3-dependent pathway. tVNS (transcutaneous vagus nerve stimulation) applied to the auricular branch at the cymba conchae activates this pathway without surgical implantation.

*Rationale:*
- The vagus nerve → alpha7-nAChR → SPM synthesis axis links autonomic function to active inflammation resolution
- ME/CFS patients have reduced vagal tone (low HRV, blunted baroreflex sensitivity) predicting impaired baseline SPM production
- tVNS is non-invasive, well-tolerated, and has preliminary evidence in ME/CFS (Yu 2022, Natelson 2022)
- SPM induction represents a distinct mechanism from tVNS's other effects (autonomic stabilization, mast cell modulation, BBB permeability enhancement)

*Mechanism:*
- Auricular tVNS activates vagal afferents → nucleus tractus solitarius → vagal efferent activation
- Efferent vagal signaling via alpha7-nAChR on macrophages suppresses TNF-alpha while simultaneously promoting SPM biosynthesis
- Resolvins (RvD1, RvE1), protectins (PD1), and maresins (MaR1) are elevated in plasma within 2-4h of vagus nerve stimulation in animal models
- This SPM-mediated anti-inflammatory effect is qualitatively different from TNF-alpha suppression alone — SPMs actively clear cellular debris via efferocytosis and promote tissue repair

*Implementation:*
- tVNS device: left ear cymba conchae, 25 Hz, 200-300 µs pulse width, 5 min 1-2x daily
- Timing for SPM induction: once daily in the morning (SPMs peak 2-4h post-stimulation)
- Additional session before planned exertion for PEM prevention
- Duration: 4-8 weeks for baseline SPM elevation; ongoing for maintenance
- Consider combining with omega-3 supplementation (SPM precursor provision) and low-dose aspirin (AT-SPM generation) for synergistic SPM enhancement

*Testable prediction:* ME/CFS patients using daily tVNS for 8 weeks show elevated plasma SPM levels (RvD1, RvE1, MaR1; >50% increase from baseline) that correlate with improved HRV (RMSSD +20%) and reduced PEM duration. The SPM elevation is detectable within 4 weeks and plateaus by 8 weeks. Falsified if SPM levels do not increase despite HRV improvement (suggesting vagal tone improvement alone is insufficient for SPM upregulation).

*Cross-reference:* SPM deficiency hypothesis (@sec:um-resolution). Omega-3 and aspirin SPM strategy (@spec:aspirin-omega3-spm, Chapter @ch:speculative-hypotheses). SPM restoration protocol (@spec:c1-spm-restoration).
] <spec:tvns-spm-induction>

=== Protocol C1: SPM Restoration Protocol
<sec:c1-spm-restoration>

#speculation(title: [C1: SPM Restoration Protocol — Aspirin + Omega-3 + tVNS + Diet])[
*Certainty: 0.30.* Combines four SPM-enhancing interventions targeting complementary nodes in the resolution pathway:

1. *Aspirin 81 mg daily (morning):* Acetylates COX-2, enabling AT-SPM (aspirin-triggered resolvin) synthesis
2. *Omega-3 (EPA 2-4g + DHA 1-2g daily):* Provides SPM substrate; re-esterified triglyceride form for optimal absorption
3. *tVNS 5 min daily (morning):* Activates vagal-alpha7-nAChR-SPM synthesis pathway
4. *SPM-supportive diet:* Omega-3-rich foods (fatty fish, flax, chia), polyphenol-rich foods (berries, olive oil) for additional SPM precursor and anti-inflammatory support; limit omega-6 excess (reduce processed seed oils)

*Rationale for combination:* Each component targets a different bottleneck in the SPM synthesis pathway: substrate provision (omega-3), enzymatic conversion (aspirin-acetylated COX-2), neural activation of SPM biosynthesis (tVNS), and dietary support for overall resolution capacity.

*Safety:*
- Aspirin + omega-3 combination increases bleeding risk slightly (theoretical) — monitor for bruising, GI bleeding
- tVNS contraindicated in cardiac arrhythmias
- High-dose omega-3 may cause fishy aftertaste, mild GI upset, and prolong bleeding time at very high doses (>4g combined EPA+DHA)
- Monitor for aspirin intolerance

*Testable prediction:* The combination produces greater SPM elevation (RvD1+RvE1+MaR1 increase >100%) than any single component alone, with additive effects. PEM severity and duration reduced by >40% in the combination group at 12 weeks.

*Cross-reference:* Individual components (@spec:aspirin-omega3-spm, @spec:tvns-spm-induction). DAMP clearance protocol (@spec:c2-damp-clearance, below).
] <spec:c1-spm-restoration>

=== Protocol C2: DAMP Clearance Protocol
<sec:c2-damp-clearance>

#speculation(title: [C2: DAMP Clearance Protocol — Glycyrrhizin + NAC + Iron Chelation])[
*Certainty: 0.25.* Targets extracellular DAMP accumulation through three complementary mechanisms:

1. *Glycyrrhizin 200-400 mg daily (short-term/PRN):* Direct HMGB1 neutralization
2. *NAC 600-1200 mg daily:* Glutathione precursor for enhanced antioxidant capacity; reduces DAMP generation by neutralizing ROS; supports GPX4 activity for ferroptosis prevention
3. *Iron chelation (low-dose deferiprone or curcumin with piperine):* Reduces labile iron available for Fenton chemistry, decreasing ferroptosis-driven DAMP release

*Rationale for combination:*
- Glycyrrhizin neutralizes extracellular HMGB1 (the DAMP) after it is released
- NAC reduces oxidative stress that triggers HMGB1 release (reducing DAMP generation)
- Iron chelation reduces the lipid peroxidation-ferroptosis-DAMP release cascade
- The combination addresses DAMP accumulation at three points: generation (NAC, iron chelation), release (iron chelation), and extracellular activity (glycyrrhizin)

*Safety:*
- Glycyrrhizin: pseudoaldosteronism risk limits duration to 4-8 weeks; monthly BP and K+ monitoring required
- NAC: generally well-tolerated; rare bronchospasm; may cause GI upset at high doses
- Iron chelation: deferiprone carries risk of agranulocytosis (weekly CBC monitoring required); curcumin with piperine is safer but less potent; avoid in patients without documented iron overload
- DAMP clearance may transiently worsen symptoms ("herx-like" reaction) as tissue repair releases sequestered DAMPs

*Testable prediction:* ME/CFS patients receiving the triple protocol for 8 weeks show reduced plasma DAMP levels (HMGB1 -40%, 4-HNE -30%, mtDNA -25%) and improved fatigue scores (SF-36 PF +15 points) compared to placebo. NAC alone reduces oxidative markers but not HMGB1; glycyrrhizin alone reduces HMGB1 but not oxidative markers; the combination is required for both.

*Cross-reference:* HMGB1-DAMP hypothesis (@sec:um-resolution). HMGB1-ferroptosis ODE model (@prop:hmgb1-ferroptosis-ode). Glycyrrhizin speculation (@spec:glycyrrhizin-hmgb1).
] <spec:c2-damp-clearance>

=== Albumin Infusion for DAMP Sequestration and Iron Buffering
<sec:albumin-damp-clearance>

#speculation(title: [Intravenous Albumin for Triple-Mechanism DAMP Clearance and Iron Buffering])[
*Certainty: 0.25.* Intravenous albumin infusion (25% albumin, 100 mL weekly × 4) provides three complementary anti-inflammatory mechanisms from a single, well-established intervention already used in critical care: (a) iron-binding capacity — albumin binds free iron, reducing Fenton chemistry-driven ROS generation and ferroptosis; (b) HMGB1 sequestration — albumin directly binds and neutralizes extracellular HMGB1, the central DAMP implicated in PEM amplification (Section @sec:um-resolution); (c) thiol-mediated antioxidant activity — albumin's free cysteine (Cys34) is a major plasma thiol reservoir with radical-scavenging capacity. These three effects — iron buffering, DAMP neutralization, and antioxidant activity — address distinct nodes of the ferroptosis-DAMP-oxidative stress cycle with one intervention. Important parsimony caveat: these "three mechanisms" may represent three descriptions of the same underlying redox pathway (iron buffering *is* antioxidant activity; HMGB1 sequestration *operates through* redox state) rather than dissociable, independent targets. The triple-mechanism claim is an organizational convenience, not evidence of three separate therapeutic modes. A pilot study design (n=10, pre/post) would measure free iron, ferritin, HMGB1, isoprostanes, and fatigue scores before and after 4 weekly infusions.

*Safety:*
- Albumin infusion is well-tolerated in critical care and volume expansion indications
- Contraindications: congestive heart failure, severe anemia, sensitivity to albumin
- Volume expansion may temporarily worsen POTS in hypovolemic-predominant patients
- This is a research-stage concept — no ME/CFS data exist

*Testable prediction:* 4 weekly albumin infusions reduce serum free iron and HMGB1 by ≥25%, reduce isoprostanes by ≥20%, and improve fatigue (SF-36 PF ≥5 points) compared to baseline in a pre/post pilot study. Falsified if free iron AND HMGB1 do not decrease — if only DAMP or only iron improves, the "triple-mechanism" claim is refuted; single-mechanism efficacy would require separate hypothesis reformulation.

*Cross-reference:* HMGB1 DAMP hypothesis (@sec:um-resolution, Chapter @ch:universal-mechanisms). DAMP clearance protocol C2 (@spec:c2-damp-clearance). Iron/ferroptosis mechanism (Chapter @ch:energy-metabolism). Hepcidin-iron trap hypothesis (ch14b).
] <spec:albumin-damp-iron-clearance>

=== Protocol C3: ER Stress Resolution Protocol
<sec:c3-er-stress-resolution>

#speculation(title: [C3: ER Stress Resolution — TUDCA + Fasting + Huperzine A])[
*Certainty: 0.20.* Combines three ER stress-reducing strategies:

1. *TUDCA 500-1000 mg/day:* Chemical chaperone stabilizing ER protein folding, reducing UPR activation
2. *Intermittent fasting or time-restricted eating (16:8 daily or 5:2 weekly):* Autophagy enhancement; fasting reduces ER load by limiting protein synthesis and promoting autophagic clearance of misfolded proteins
3. *Huperzine A 50-100 mcg BID:* Acetylcholinesterase inhibitor; enhances cholinergic signaling, which suppresses PERK-eIF2alpha via alpha7-nAChR; may also reduce ER calcium depletion through nicotinic receptor modulation

*Rationale for combination:*
- TUDCA reduces ER stress directly (chaperone mechanism)
- Intermittent fasting reduces protein synthesis flux into the ER (substrate reduction), simultaneously activating autophagy for clearance
- Huperzine A provides cholinergic UPR suppression through a distinct (neuronal-immune) mechanism
- The combination addresses ER stress through chaperone enhancement (TUDCA), substrate reduction (fasting), and neural regulation (huperzine A)

*Safety:*
- TUDCA: generally well-tolerated; diarrhea at high doses; long-term safety in ME/CFS unknown
- Intermittent fasting: may worsen orthostatic intolerance and POTS symptoms; contraindicated in underweight patients; monitor for hypoglycemia
- Huperzine A: cholinergic side effects (nausea, diarrhea, muscle cramps, bradycardia); narrow therapeutic window; avoid with concurrent cholinergic drugs; beta-blockers may compound bradycardia risk

*Testable prediction:* The combination reduces PBMC UPR markers (GRP78, sXBP1, CHOP) by >50% at 12 weeks in ME/CFS patients with elevated baseline UPR markers. TUDCA alone reduces GRP78 but not sXBP1; TUDCA + fasting is required for both markers.

*Cross-reference:* TUDCA/4-PBA speculation (@spec:tudca-4pba-upr). IRE1alpha bistable switch model (@prop:ire1alpha-bistable-model). Autophagy-heat switch (@spec:autophagy-switch-heat, Chapter @ch:energy-metabolism).
] <spec:c3-er-stress-resolution>

=== Ziritaxestat/Autotaxin-LPA for Fibrotic-Neuroinflammatory Crosstalk
<sec:ziritaxestat-atx-lpa-emerging>

#speculation(title: [Ziritaxestat/Autotaxin-LPA Inhibition for Fibrotic-Neuroinflammatory Crosstalk])[
*Certainty: 0.20.* Autotaxin converts LPC to LPA, a bioactive lipid signaling through LPA1-6 receptors that drives TGF-beta1 induction, fibroblast activation, ECM deposition, and microglial activation. Ziritaxestat (Phase III IPF) provides a clinically-ready ATX inhibitor with established safety. If ATX-LPA is elevated in ME/CFS, it provides a druggable bridge between fibrotic pathology (capillary basement membrane thickening) and neuroinflammation (LPA1-mediated microglial activation). See @spec:ziritaxestat-atx-lpa (Chapter @ch:speculative-hypotheses) for full mechanism. Falsifiable: ATX activity and LPA levels are elevated in ME/CFS; ziritaxestat reduces LPA and improves fatigue in ATX-high patients.
] <spec:ziritaxestat-atx-lpa-emerging>

== Hypoxia and Oxygen-Sensing Pathway Modulation

#speculation(title: [Normobaric Intermittent Hypoxic Training (IHT) for ME/CFS])[
*Certainty: 0.45.* Brief controlled hypoxic exposures may induce beneficial HIF-1$alpha$-dependent adaptations including mitochondrial biogenesis, angiogenesis, and metabolic efficiency @Gangwar2019IHTaltitude. IHT has shown promise in Parkinson's disease @JanssenDaalen2025hypoxicPD and in athletic conditioning. The ME/CFS adaptation requires: supine position (eliminates orthostatic stress), mild hypoxia (FiO#sub[2] 0.16, equivalent to ~2000~m), short cycles (3--5~min hypoxia alternating with 3~min normoxia, total 30~min), and strict PEM monitoring (48~h post-session).

*Mechanistic rationale.* Brief hypoxia → HIF-1$alpha$ stabilization → transcriptional programme activation → VEGF (angiogenesis), EPO (erythropoiesis), PGC-1$alpha$ (mitochondrial biogenesis), GLUT1 (glycolytic capacity). Repeated sessions are hypothesised to raise the hypoxic threshold and improve exercise tolerance.

*Safety.* Potential PEM trigger if protocol exceeds individual tolerance — requires graduated introduction (start FiO#sub[2] 0.19, decrease 0.01 per week). Contraindicated in severe ME/CFS (bedbound patients), uncontrolled POTS, or hemoglobinopathies. Normobaric hypoxia carries no barotrauma risk. Hypoxia-induced vasodilation could worsen orthostatic intolerance in susceptible patients.

*Testable prediction.* 8 weeks IHT (3 sessions/week) improves 6MWT distance ≥40~m vs sham (FiO#sub[2] 0.21) in mild-to-moderate ME/CFS, with sustained CBFv during hypoxic cycles.
] <spec:iht-mecfs>

#speculation(title: [HIF-PH Inhibitors (Roxadustat, Daprodustat) for ME/CFS])[
*Certainty: 0.30.* Prolyl hydroxylase domain (PHD) inhibitors stabilize HIF-1$alpha$/2$alpha$ by blocking oxygen-dependent degradation, increasing endogenous EPO and erythropoiesis. Roxadustat is approved for anemia of chronic kidney disease; daprodustat is in clinical use. In ME/CFS, low-dose PHD inhibition could restore the hypoxic adaptation programme that appears blunted (see HIF Pathway Inertia hypothesis @spec:hif-pathway-inertia). Unlike exogenous EPO, PHD inhibitors upregulate the full HIF transcriptional programme (EPO + VEGF + glycolytic enzymes + mitophagy regulators), potentially producing broader metabolic benefit @Winkler2004.

*CAUTION:*
    + Could exacerbate autoimmunity — HIF-1$alpha$ promotes Th17 differentiation and B cell activation @Little2023HIF1lupus
    + VEGF elevation from HIF-2$alpha$ stabilization could worsen endothelial barrier dysfunction in patients whose HIF-2$alpha$ is already pathologically active (Section @sec:hif2a-endothelial) @Ribeiro2026HIF2alpha. This risk is subtype-dependent: patients with elevated baseline VEGF/vWF should not receive PHD inhibitors
    + Excessive erythropoiesis increases blood viscosity, potentially worsening cerebral hypoperfusion
    + No ME/CFS safety data exist; all literature is from CKD populations with different baseline physiology

*Testable prediction.* Low-dose daprodustat (1mg TIW, one-quarter the CKD dose) increases constant-workload cycling time to exhaustion by $>=30$% without elevating hematocrit above 45% in ME/CFS patients with blunted hypoxia-challenge EPO response.
] <spec:hif-ph-inhibitors>

#speculation(title: [Belzutifan (HIF-2$alpha$ Inhibitor) for Post-Viral ME/CFS with Endothelial Dysfunction])[
*Certainty: 0.45.* Belzutifan is a selective HIF-2$alpha$ inhibitor approved for VHL disease-associated tumors that blocks HIF-2$alpha$/ARNT heterodimerization, preventing transcriptional activation of VEGF, EDN1, and SERPINE1. Ribeiro et al.\ (2026) @Ribeiro2026HIF2alpha directly demonstrated that belzutifan rescues endothelial barrier integrity in spike S1-stimulated retinal endothelial cells — the only drug shown to reverse this specific post-viral mechanism. The initial certainty (0.25) has been increased to 0.45 based on convergent supporting evidence: (a) Sales et al.\ (2026) independently showed that HIF-2$alpha$ inhibition (via darunavir) preserves tight junction proteins ZO-1 and occludin in a separate epithelial barrier model @Sales2026DarunavirHIF2Barrier, (b) the NRF2-HIF-2$alpha$ axis provides a mechanistic framework for sustained HIF-2$alpha$ dominance after NRF2 depletion @Shen2024NRF2HIF2Senescence @Zhang2026HIFSwitchICH, and (c) the general principle of viral HIF-2$alpha$ exploitation is supported across multiple virus types (HCV @Couteaudier2025HIF2HCV, RSV @Morris2025HIFRSV). However, belzutifan's brain penetration is unknown — peripheral endothelial improvement is expected, but BBB effects are uncertain.

*Mechanistic rationale.* SARS-CoV-2 spike protein upregulates HIF-2$alpha$ in pulmonary and retinal endothelium, promoting VEGF production, intercellular gap formation, and increased permeability. If a similar mechanism operates in ME/CFS (whether from SARS-CoV-2, EBV, HHV-6, or other viral triggers), HIF-2$alpha$ inhibition could restore endothelial barrier integrity. The antiviral signaling protein IRF3 directly regulates HIF-$alpha$ cytoplasmic retention — viral infection relieves this retention, linking diverse viral triggers to the same HIF-2$alpha$ pathway @Deng2026IRF3HIFalpha.

*Selection criteria:* Post-viral onset, elevated VEGF/vWF, $beta_2$AR-autoantibody-negative (the ~70% subgroup with no known ED mechanism — Section @sec:hif2a-endothelial).

*Dosing:* Start 40~mg daily. Monitor hemoglobin (risk of anemia — HIF-2$alpha$ supports renal EPO production), blood pressure, VEGF q2 wks.

*CAUTION.* HIF-2$alpha$ is not HIF-1$alpha$ — the isoforms have distinct, sometimes opposing functions. HIF-2 inhibition could paradoxically worsen hypoxia sensing. HIF-2$alpha$ supports erythropoietin production in adults; its inhibition could cause anemia (15--20% incidence in VHL trials). No ME/CFS data exist. Contraindicated in pregnancy.

*Testable prediction.* 8 weeks belzutifan 40~mg daily reduces VWF antigen (endothelial activation marker) by ≥20% and improves 6MWT distance by ≥30~m in post-viral ME/CFS patients with elevated baseline VWF (>150% normal) and $beta_2$AR-autoantibody-negative status. VEGF reduction should precede clinical improvement by 2--4 weeks.
] <spec:belzutifan-endothelial>

#speculation(title: [Darunavir/Ritonavir (HIV Protease Inhibitor, HIF-2$alpha$ Blocker) for Endothelial Barrier Rescue])[
*Certainty: 0.40.* Darunavir, an HIV protease inhibitor in clinical use since 2006, was recently shown to prevent HIF-2$alpha$ activation and preserve tight junction proteins (ZO-1, occludin) in an experimental oesophageal barrier disruption model @Sales2026DarunavirHIF2Barrier. The mechanism is independent of protease inhibition — darunavir directly blocks HIF-2$alpha$ transcriptional activity, preventing the VEGF-driven permeability programme. This represents a repurposing opportunity with an established safety track record (20+ years in HIV populations), dramatically lower cost than belzutifan, and known pharmacokinetics.

*Mechanistic rationale.* HIF-2$alpha$ activation drives VEGF production, which induces intercellular gap formation and barrier disruption. Darunavir inhibits HIF-2$alpha$ activation, preserving junctional integrity @Sales2026DarunavirHIF2Barrier. If the same HIF-2$alpha$ mechanism operates in post-viral ME/CFS endothelial cells, darunavir may provide barrier protection comparable to belzutifan but at a fraction of the cost.

*Dosing:* Darunavir 600~mg BID boosted with ritonavir 100~mg BID (standard HIV dosing). CYP3A4 interaction profile is well-characterized.

*CAUTION.* Hepatotoxicity (3--7%), rash, GI intolerance. Drug interactions via CYP3A4: fludrocortisone, midodrine, LDN, mestinon — all substrates or co-metabolised; levels may change substantially. Requires specialist monitoring. Low CNS penetration — peripheral endothelial protection expected; cognitive symptoms may not improve.

*Drug interactions with common ME/CFS co-prescriptions:* Darunavir/ritonavir is a strong CYP3A4 inhibitor and CYP2D6 inducer. Fludrocortisone: levels may increase (CYP3A4 substrate) — monitor for hypertension, hypokalemia. Midodrine: levels may increase (CYP3A4). LDN: naltrexone is CYP3A4 substrate — levels may increase. Mestinon (pyridostigmine): not CYP3A4-dependent — no interaction. Beta-blockers: metoprolol and propranolol are CYP2D6 substrates — levels may decrease. Antihistamines: fexofenadine is not CYP3A4-dependent — no interaction; loratadine is CYP3A4 substrate — levels may increase.

*Contraindications for bedbound patients:* Hepatotoxicity risk requires regular LFT monitoring. GI intolerance may worsen malnutrition risk. Drug interactions are substantial — polypharmacy in bedbound patients requires careful review.

*Testable prediction.* 4 weeks darunavir/ritonavir in post-viral ME/CFS reduces plasma VEGF and vWF by ≥25% and improves FMD compared to placebo in a double-blind, randomised crossover trial (n=20).
] <spec:darunavir-hif2a>

#speculation(title: [EPO Stimulation Test as Diagnostic Probe for HIF Pathway Integrity])[
*Certainty: 0.40.* A standardized hypoxia challenge with serial EPO measurement could serve as a dynamic functional test of HIF pathway integrity in ME/CFS, analogous to the ACTH stimulation test for adrenal insufficiency @Winkler2004.

*Protocol.* 2~h mild hypoxia (FiO#sub[2] 0.14, supine, continuous SpO#sub[2] monitoring, SpO#sub[2] maintained ≥88%) with serum EPO measured at baseline, 2~h, 4~h, 8~h, 24~h, and 48~h. The outcome metric is EPO AUC over 48~h, with detection threshold defined as less than 60% of age/sex-matched control median.

*Mechanistic rationale.* If HIF pathway inertia is a core feature of ME/CFS, the EPO response to a controlled hypoxic stimulus should be blunted relative to controls while basal EPO remains normal — a pattern consistent with impaired inducibility rather than absolute HIF deficiency.

*Testable prediction.* AUC of EPO response over 48~h is ≥40% lower in ME/CFS vs age/sex-matched healthy controls. Abnormal test (>2 SD below control mean) identifies a HIF-inert ME/CFS subtype with distinct clinical features (worse orthostatic intolerance, lower CBFv, steeper PEM gradient).
] <spec:epo-stimulation-test>

== Glutamatergic Modulators
<sec:glutamatergic-modulators>

=== Neuroimmune Investigational Therapies

{{/* DR16: LDN + verapamil (Tier 3, cert 0.25) */}}
#speculation(title: [Low-Dose Naltrexone + Verapamil Combination — TLR4 Blockade + Calcium Channel Modulation for GPCR Autoantibody-Driven Neuroinflammation])[
*Certainty: 0.25.* Low-dose naltrexone (LDN, 1.5-4.5 mg) is a TLR4 antagonist at low concentrations — it blocks microglial TLR4-mediated neuroinflammation. Verapamil (L-type calcium channel blocker, 40-80 mg bid) reduces intracellular Ca2+ flux — the downstream signal from GPCR autoantibody-induced receptor activation (both α1-AR and M3 mAChR signal through Gq → PLC → IP3 → Ca2+). The combination: LDN reduces microglial output; verapamil blunts cellular response to GPCR autoantibody signaling in neurons, cardiomyocytes, and vascular smooth muscle. LDN is widely used in ME/CFS (anecdotal). Verapamil is rarely used but mechanistically rational for the GPCR autoantibody+ subset. @Blitshteyn2026Neuroimmune @Fedorowski2017Antiadrenergic

*Warning.* Verapamil can worsen constipation (in a population with GI dysmotility). Bradycardia risk in POTS patients. Hypotension risk with concurrent fludrocortisone. Requires cardiac monitoring. No ME/CFS safety data for the combination.

*Falsifiable prediction.* 8-week LDN (4.5 mg qhs) + verapamil ER (120 mg qd) in GPCR AAb+ ME/CFS+POTS (n=20, open-label): ≥40% show ≥30% PROMIS Fatigue improvement; standing HR decreases ≥5 bpm; NfL decreases ≥15%.
] <spec:ldn-verapamil-combo>

{{/* DR17: C1-INH (Tier 3, cert 0.20) */}}
#speculation(title: [C1-Esterase Inhibitor for Complement-Mediated Glycocalyx Damage in GPCR Autoantibody-Positive ME/CFS+POTS])[
*Certainty: 0.20.* GPCR autoantibodies (IgG1 subclass) fix complement via C1q, activating the classical complement pathway and generating C5a/C3a anaphylatoxins. Complement activation damages the endothelial glycocalyx (heparan sulfate shedding → impaired vasomotor tone). C1-esterase inhibitor (C1-INH) blocks complement at the earliest step, preventing C5a/C3a generation. In hereditary angioedema, C1-INH prevents bradykinin-mediated vascular leak — a parallel mechanism to glycocalyx loss described in POTS/ME/CFS. Target: GPCR AAb-positive patients with elevated complement split products (C3a, C5a, sC5b-9). @Blitshteyn2026Neuroimmune @Gunning2019GPCRPOTS

*Warning.* Investigational only. C1-INH is very expensive (approx 5,000--15,000 per dose). Thrombotic risk (rare). No ME/CFS safety data. Requires IV administration.

*Falsifiable prediction.* C1-INH (1000 U IV, then weekly ×3) in GPCR AAb+ ME/CFS+POTS with elevated C3a/C5a (n=10): reduces C3a/C5a to ≤1.2 × ULN within 24h; reduces standing HR ≥8 bpm at week 4; plasma syndecan-1 (glycocalyx marker) decreases ≥25%.
] <spec:c1-inh-complement>

#speculation(title: [Memantine for Glutamatergic PRS-Positive ME/CFS])[
*Certainty: 0.45.* Low-dose memantine (5-10 mg daily) — a non-competitive NMDA receptor antagonist FDA-approved for Alzheimer's disease — may normalise glutamatergic signaling in patients with high glutamatergic PRS. If glutamatergic hyperexcitability drives E/I imbalance in ME/CFS (Hypothesis @hyp:glutamatergic-synaptic-dysfunction), NMDA blockade could reduce excitotoxic signaling and restore cortical excitability toward normal range @Maccallini2026metaGWAS.

*Stratification:* Genotype-guided — high glutamatergic PRS (neuronal gene set) predicts response; patients with low glutamatergic PRS or primarily immune/autophagy genetic architecture are unlikely to benefit and may experience side effects without therapeutic gain.

*Safety note (no human ME/CFS data):* No controlled trials of memantine exist in ME/CFS. Side effects include dizziness, confusion, sedation, and headache. In ME/CFS, brain fog worsening is a particular concern — start 2.5 mg daily and titrate slowly (increase by 2.5 mg every 2 weeks) to minimise cognitive side effects. Contraindicated in severe renal impairment (CrCl < 30 mL/min). Memantine is not CYP-metabolised; minimal interactions expected with LDN, fludrocortisone, midodrine.

*Falsifiable prediction:* 12-week RCT of memantine 5-10 mg daily vs placebo in ME/CFS stratified by glutamatergic PRS will show significant improvement in cognitive processing speed and PEM frequency only in the high-PRS subgroup (PRS > 75th percentile). The low-PRS subgroup will show no benefit or worsening.
] <spec:memantine-glutamate>

#speculation(title: [Riluzole for Glutamatergic Hyperexcitability])[
*Certainty: 0.35.* Riluzole reduces presynaptic glutamate release, stabilises inactivated sodium channels, and enhances astrocytic glutamate uptake via EAAT2. FDA-approved for ALS. Glutamatergic tone reduction mechanism directly addresses genetically anchored E/I imbalance. 50mg BID standard ALS dose; 25mg QD starting dose in severe ME/CFS. Safety: hepatotoxicity risk — requires monthly LFT monitoring. No ME/CFS data.

*Falsifiable prediction.* 12-week RCT of riluzole 25mg BID vs placebo stratified by Glu-PRS will show improved cognitive processing speed only in high-PRS subgroup.
] <spec:riluzole-glutamate>

#speculation(title: [Lamotrigine for E/I Balance])[
*Certainty: 0.30.* Lamotrigine reduces presynaptic glutamate release via sodium channel blockade, upregulates BDNF and Bcl-2, and is widely considered the most cognitive-sparing anticonvulsant. Extensive existing ME/CFS clinical discussion already in ch08 (kindling hypothesis). Cross-reference `@sec:glutamatergic-modulators` and existing ch08 lamotrigine content. 25mg QD starting, titrate over 6-8 weeks to 100-200mg. Safety: Stevens-Johnson syndrome risk — slow titration mandatory. No ME/CFS RCT data.

*Falsifiable prediction.* Lamotrigine 100mg vs placebo in high Glu-PRS ME/CFS will reduce PEM frequency ≥30% at 12 weeks vs baseline.
] <spec:lamotrigine-glutamate>

#speculation(title: [Memantine + NAC + Pyridoxal-5-Phosphate Triple Therapy for Glutamatergic Hyperexcitability])[
*Certainty: 0.35.* Three complementary mechanisms: memantine (non-competitive NMDA antagonist, 5–10 mg daily) blocks postsynaptic glutamate action; NAC (600–1200 mg BID) modulates extracellular glutamate via the cystine-glutamate antiporter and restores glutathione; pyridoxal-5-phosphate (P5P, 50–100 mg daily) drives glutamate decarboxylation to GABA via GAD65/67. Three-hit approach: block receptor, modulate release, enhance inhibitory conversion. Never tested as combination in any condition; each component has independent human safety data.

*Falsifiable prediction:* 12-week triple therapy vs memantine alone in high Glu-PRS ME/CFS (PRS > 75th percentile) will show superior cognitive processing speed improvement (≥0.5 SD on SDMT) and greater PEM frequency reduction (≥40%).
] <spec:memantine-nac-p5p-triple>

#speculation(title: [Pregabalin/Gabapentin Stratified by Glutamatergic PRS])[
*Certainty: 0.35.* Pregabalin and gabapentin bind α2δ-1/2 subunits of voltage-gated calcium channels, reducing presynaptic glutamate release — directly addressing the glutamatergic signal from GWAS. Already used clinically in ME/CFS for pain and sleep. GWAS provides a mechanistic rationale for stratification: high Glu-PRS patients should derive greater benefit because their pathophysiology is driven by excessive glutamatergic signaling. Gabapentin 300–900 mg daily or pregabalin 75–300 mg daily, titrated to tolerance.

*Falsifiable prediction:* High Glu-PRS patients (PRS > 75th percentile) show ≥2× pain reduction (NRS) on gabapentin vs low Glu-PRS over 8 weeks; the response gap is not accounted for by baseline pain severity alone.
] <spec:gabapentinoid-glu-prs>

#speculation(title: [L-DOPA/Carbidopa for Dopaminergic PRS-Positive ME/CFS])[
*Certainty: 0.30.* If the dopaminergic midbrain GWAS signal represents impaired dopamine synthesis in VTA/SN, L-DOPA/carbidopa (25/100 mg TID) could restore effort valuation. Dopamine drives effort-cost computation in mesolimbic and mesocortical circuits; low DA tone predicts effort avoidance. High risk: dyskinesia (chronic use), nausea, orthostatic hypotension — particularly problematic in ME/CFS with concurrent POTS. Contraindicated in POTS with prominent hypotension.

*Falsifiable prediction:* DA-PRS-positive patients (PRS > 75th percentile, n=30) show effort-discounting improvement (effort expenditure for reward task) on L-DOPA vs placebo over 4 weeks; DA-PRS-negative patients show no improvement. PEM worsening in the POTS subgroup would contraindicate the approach.
] <spec:ldopa-da-prs>

#speculation(title: [Amiloride as Acid-Sensing Ion Channel Blocker for Lactate-Driven Hyperexcitability])[
*Certainty: 0.20.* Acid-sensing ion channels (ASICs) are proton-gated sodium channels activated during tissue acidosis — the direct consequence of glycolytic shift and lactate accumulation in ME/CFS (Chapter @ch:energy-metabolism). Amiloride blocks ASICs at low micromolar concentrations (5–10 mg daily, below diuretic threshold), reducing acid-induced pain and potentially cerebellar granule cell hyperexcitability during PEM. Potassium-sparing diuretic; contraindicated in hyperkalemia, renal impairment, and concurrent ACE inhibitors/ARBs. Distinguish this ASIC-blocking rationale from the NHE1-blocking rationale in the AIMM model (Section @sec:mdc002) — different molecular target, different dose range.

*Falsifiable prediction:* Amiloride 5 mg daily reduces PEM-associated pain severity (NRS ≥2-point reduction) in ME/CFS patients with high post-exertional lactate (>2× resting) vs placebo over 6 weeks; effect correlates with post-exertional lactate AUC.
] <spec:amiloride-asic>

#include "ch27-brain-clearance-drugs/ch27-brain-clearance-drugs.typ"
