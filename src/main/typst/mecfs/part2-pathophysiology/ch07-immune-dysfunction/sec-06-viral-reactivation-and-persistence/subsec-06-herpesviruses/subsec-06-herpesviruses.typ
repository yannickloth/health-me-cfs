#import "../../../../shared/environments.typ": *

=== Herpesviruses
<sec:herpesviruses>

Human herpesviruses establish lifelong latent infections with potential for reactivation.

==== Epstein-Barr Virus (EBV)

EBV infects B cells and establishes latency @ScanJImmunol2025EBV:

    - *Acute infection*: Infectious mononucleosis is a common ME/CFS trigger @FrontImmunol2024EBV
    - *Reactivation markers*: Elevated early antigen (EA) antibodies, viral load
    - *Prevalence*: 10–20% of ME/CFS patients show evidence of reactivation 
    - *Mechanism*: May drive chronic B cell activation and autoantibody production @walitt2024deep

*EBV-Infected B Cells and CNS Demyelination*
Recent research has demonstrated a direct mechanism by which EBV-infected B cells can cause neurological damage . Autoreactive B cells identified in healthy human blood can cross the blood–brain barrier following viral infection of the cerebrum. When these B cells express EBV Latent Membrane Protein 1 (LMP1), they can infiltrate the brain and induce demyelinating lesions through direct myelin antigen capture followed by complement activation and microglial activation. While this research focused on multiple sclerosis pathogenesis, the mechanism has potential relevance for ME/CFS given the documented role of EBV as a disease trigger, the neuroinflammation observed in ME/CFS patients, and the overlap between ME/CFS and MS symptomatology. This finding provides a concrete pathway by which post-infectious immune dysregulation could lead to CNS involvement.

*EBV Infection During Adolescent Immune Development*

#hypothesis(title: [EBV-Adolescence Autoimmune Window])[

*Certainty: 0.50.* EBV infection during adolescence may create unique risk for persistent autoantibody-mediated ME/CFS due to coincidence of viral B cell infection with pubertal immune maturation. The certainty level reflects: (1) strong epidemiological association between EBV-triggered mononucleosis and ME/CFS onset, particularly in adolescents; (2) well-characterized immune maturation during puberty; (3) documented mechanisms for EBV-driven autoimmunity; (4) however, EBV is ubiquitous and most infected adolescents do not develop ME/CFS, suggesting additional required factors; (5) the specific contribution of infection timing versus other variables (genetic susceptibility, viral strain) remains uncertain.

We hypothesize that EBV infection during adolescence creates a unique risk for persistent autoantibody-mediated ME/CFS, because viral B cell infection coincides with pubertal immune maturation when tolerance mechanisms are being reorganized.

*Epidemiological context:*
Infectious mononucleosis (primary EBV infection) is a common ME/CFS trigger, particularly in adolescents. While young children typically experience asymptomatic primary EBV infection, delayed first exposure in adolescence produces symptomatic mononucleosis in 35–50% of cases @ScanJImmunol2025EBV. This age-dependent presentation reflects developmental differences in immune response. When infection occurs during adolescence or young adulthood, symptoms can be more severe than in younger children, and the infection is associated with increased risk for subsequent autoimmune disease development @FrontImmunol2024EBV.

*Immunological timing hypothesis:*
EBV preferentially infects B cells, establishing lifelong latency. During adolescence, the immune system undergoes substantial reorganization: thymic output is declining, peripheral tolerance mechanisms are maturing, and the B cell repertoire is being shaped. EBV infection during this critical window may:

    - Infect B cells during active repertoire selection, potentially immortalizing autoreactive clones that would otherwise be deleted
    - Disrupt tolerance checkpoint establishment, allowing autoreactive B cells to persist
    - Drive aberrant germinal center reactions producing GPCR autoantibodies (Section @sec:autoantibodies)
    - Create long-lived plasma cells secreting autoantibodies that persist for decades

*Age-dependent outcome predictions:*

    - _Young children_ ($<$10 years): Immune system still highly plastic; ongoing development may clear aberrant B cell clones through mechanisms described in Hypothesis @hyp:immune-pruning. Higher recovery probability.
    - _Adolescents_ (10–18 years): Infection at the edge of immune maturation; some patients clear aberrant clones, others do not. Variable outcomes, overall high recovery rates.
    - _Young adults_ (18–25 years): Tolerance mechanisms largely established; aberrant B cell populations persist indefinitely. Lower recovery probability.
    - _Adults_ ($>$25 years): No developmental clearance mechanism; autoantibody-producing cells become permanent. Recovery rare without intervention.

*Treatment implications:*
If this hypothesis is correct, B cell depletion therapy (rituximab) might be particularly effective in adolescents and young adults with recent EBV-triggered ME/CFS, before long-lived plasma cells establish permanent autoantibody production. The timing of intervention relative to disease onset may be critical—early B cell depletion could prevent establishment of pathogenic plasma cell populations.

*Research directions:*

    - Compare GPCR autoantibody titers by age at ME/CFS onset and EBV status
    - Track autoantibody trajectories in EBV-triggered versus non-EBV-triggered cases
    - Assess whether EBV-triggered cases show different B cell subset distributions
    - Trial of early rituximab in adolescents with recent EBV-triggered ME/CFS

*Limitations:*
This hypothesis is speculative. EBV is ubiquitous (95% adult seropositivity), so most ME/CFS patients will have been infected regardless of trigger. The specific role of infection timing versus other factors (genetic susceptibility, viral strain, co-infections) is unknown. Additionally, many adolescents with EBV-triggered ME/CFS do recover, suggesting protective factors beyond simple timing. See Section @sec:pediatric-adult-study for a proposed study design that could inform this hypothesis.
] <hyp:ebv-adolescence>

Longitudinal data from the first German study of adolescent and young adult ME/CFS following EBV-triggered infectious mononucleosis provide partial support for the age-dependent hypothesis. Pricoco et al. (2024) followed 25 patients (12 adolescents, 13 young adults) for 12 months after EBV-confirmed onset . The results revealed a stark age-dependent recovery pattern: 45% of adolescents no longer met ME/CFS diagnostic criteria at 12 months and showed improvement in fatigue and health-related quality of life, whereas 100% of young adults retained their diagnosis with minimal symptom or quality-of-life improvement. Patients averaged 27 distinct symptoms each, with exhaustion, daily-life limitations, rest requirements, and PEM being the most persistent. While the sample size is small and the study lacked a non-EBV control group, the differential recovery trajectory is consistent with the hypothesis that post-pubertal immune maturation reduces the capacity for spontaneous resolution of virus-triggered autoimmune processes.

#hypothesis(title: [Infectious Mononucleosis as a Three-Compartment Distinct Subtype of ME/CFS])[
Infectious mononucleosis (IM), caused by primary EBV infection, may trigger a form of ME/CFS with greater immunological burden than non-IM post-infectious ME/CFS, involving three measurable dimensions of immune dysregulation. First, massive polyclonal B cell activation during acute IM likely establishes a larger latent EBV reservoir in CD27+ memory B cells than subclinical EBV seroconversion, though direct reservoir-size comparison between IM and subclinical seroconversion has not been performed in ME/CFS. Second, NK cells, which expand dramatically during acute IM, may show impaired long-term EBV surveillance after the acute response resolves (note: NK "exhaustion" is a less established paradigm than T cell exhaustion; post-activation recovery kinetics differ, and the analogy to T cell exhaustion borrows credibility that the NK literature does not yet support). Third, CD8+ T cells targeting EBV epitopes develop exhausted phenotypes (PD-1+, TIM-3+, LAG-3+) from chronic antigen exposure, mirroring the T cell exhaustion already documented in ME/CFS. These three dimensions may all be downstream of a single core mechanism — overwhelming EBV antigen load during acute IM → global immune dysregulation — rather than three independent compartment failures. The consequence may be a subtype with larger viral reservoir, impaired antiviral surveillance, and enrichment of autoantibodies cross-reactive with EBV antigens. Whether IM-triggered patients differ from non-IM post-infectious ME/CFS in treatment response remains an open question. The IM association is disproportionately concentrated in early-onset ME/CFS (OR 2.32) @McGrath2026bimodalOnset, consistent with the thymic-EBV synchrony model (Section @sec:bimodal-cross-disease). However, the 87% non-conversion rate after IM @Katz2009IMadolescentCFS equally supports a host-susceptibility model where trigger identity matters less than individual vulnerability factors, and the rituximab Phase III trial (Fluge 2019, n=151) showed no overall benefit in unselected ME/CFS — if IM-triggered ME/CFS is a distinct B-cell/autoantibody-driven subtype, the absence of even a subgroup response signal is relevant counterevidence, though rituximab spares CD20- plasma cells which may mediate autoantibody production independently.
*Certainty: 0.40* (IM→ME/CFS conversion rate ~13% in prospective adolescent studies @Katz2009IMadolescentCFS; differential adolescent recovery documented @Pricoco2024EBVyouth; three-compartment model based on known IM immunology but no head-to-head immunophenotyping of IM-ME/CFS vs non-IM ME/CFS). *Not yet replicated: no study has directly compared IM-triggered to non-IM post-infectious ME/CFS with deep immune profiling.*
*Falsifiable prediction:* Head-to-head immunophenotyping of IM-triggered vs non-IM ME/CFS will show: (a) larger EBV reservoir in CD27+ memory B cells; (b) lower NK cytotoxicity (K562 assay); (c) higher exhausted CD8+ T cell frequency (PD-1+TIM-3+LAG-3+). All three dimensions are directional predictions with effect sizes drawn from general IM biology — not from ME/CFS-specific data. If any show no meaningful difference between groups, the three-dimension excess-burden model is not supported. Note: this is a compound hypothesis (three conjoint predictions); the certainty of 0.40 reflects the compound probability discount.
] <hyp:im-three-compartment-failure>

==== Human Herpesvirus 6 (HHV-6)
<sec:hhv6-mecfs>

HHV-6 infects T cells and can integrate into chromosomes :

    - Two species: HHV-6A and HHV-6B
    - Evidence for active infection in some ME/CFS patients 
    - Can affect mitochondrial function
    - Neurotropic (infects brain tissue)

*HHV-6 miRNA-Mediated Mitochondrial Fragmentation*

A key molecular mechanism linking HHV-6 reactivation to ME/CFS mitochondrial dysfunction was identified by Hennig, Prusty et al.\ @Hennig2022HHV6miRNA. HHV-6A encodes a viral microRNA, miR-aU14, which selectively inhibits host miR-30 family processing by binding pri-miRNA hairpin loops. Loss of miR-30 activates the miR-30--p53--DRP1 axis, producing profound mitochondrial fragmentation. The same mechanism impairs the type I interferon response, enabling productive HHV-6A reactivation from latency. miR-aU14 was characterized as a "readily druggable master regulator of the herpesvirus lytic--latent switch" @Hennig2022HHV6miRNA. The DRP1-driven fragmentation downstream of miR-aU14 is the same pathway that ISR kinase activation protects against , placing HHV-6 reactivation directly upstream of the mitochondrial architecture disruption discussed in Section @sec:isr-context-dependence of Chapter @ch:energy-metabolism.

*HHV-6 Neuroinvasion in ME/CFS Post-Mortem Tissue*

Kasimir, Prusty et al.\ examined post-mortem brain tissue from ME/CFS patients (n=3) vs controls (n=24) . HHV-6 viral miRNA (miR-aU14) was detected in multiple CNS regions --- choroid plexus, hippocampus, amygdala, and dorsal root ganglia --- exclusively in ME/CFS patients. EBV dUTPase was also found in all three ME/CFS brains but absent in controls. These findings confirm HHV-6 reactivation with neuroinvasion in ME/CFS CNS tissue, though the extremely small sample (n=3) requires replication before conclusions can be drawn.

==== Cytomegalovirus (CMV)

CMV establishes latency in monocytes and other cells :

    - Reactivation documented in some ME/CFS patients 
    - Can cause significant inflammation upon reactivation
    - Associated with T cell exhaustion @iu2024tcell_exhaustion

==== Varicella-Zoster Virus (VZV)

VZV establishes latency in sensory ganglia following primary infection (chickenpox) and reactivates as herpes zoster (shingles) @Ariza2025polyherpesvirus:

    - Elevated anti-VZV dUTPase antibodies detected in ME/CFS patients as part of the poly-herpesvirus co-reactivation pattern @Palomo2026herpesvirus
    - Encodes a dUTPase homolog (ORF8) with immunomodulatory properties @Ariza2025polyherpesvirus
    - Neurotropism in sensory ganglia may contribute to sensory and autonomic symptoms, though this has not been directly studied in ME/CFS
    - Included in the poly-herpesvirus co-reactivation pattern described below (Section @sec:poly-herpesvirus)

==== Herpes Simplex Virus 1 (HSV-1) and Encephalitis
<sec:hsv1-hse>

HSV-1 infects 57% of American adults and establishes latency in trigeminal ganglia. While most carriers remain asymptomatic, HSV-1 can cause herpes simplex encephalitis (HSE), an acute neurotropic infection affecting approximately 1 in 500,000 individuals per year. HSE presents with decreased consciousness, fatigue, confusion, and personality changes, and can mimic stroke presentation.

*HSE as a Prospective Model for Post-Viral ME/CFS*

The Uppsala University ME/CFS Collaborative Research Center (directed by Jonas Bergquist, OMF-funded) has studied HSE as a uniquely informative model for post-viral fatigue and ME/CFS onset, since HSE patients can be followed prospectively from the acute infection  . A series of studies in approximately 50 HSE patients with serial CSF and blood sampling has revealed:

    - *NMDA receptor autoimmunity:* Anti-NMDAR IgG antibodies developed in 24.5% of HSE patients, never present at disease onset but appearing after 3 months . 56% had anti-NMDAR antibodies of any isotype class (IgG 25%, IgM 29%, IgA 27%), though only IgG correlated with cognitive outcome @Westman2018nmdar_igg_igm.
    - *Impaired neurocognitive recovery:* NMDAR-seropositive patients had dramatically worse neurocognitive recovery — median MDRS score increase of 1.5 points versus 10 points at 24 months (p=0.018) .
    - *Proposed causative chain:* Neurofilament light chain (NFL, a marker of neuronal damage) correlated with both impaired cognition (rho=-0.36, p=0.020) and subsequent NMDAR autoimmunization (p=0.006), suggesting: brain tissue damage $arrow.r$ NMDAR antigen release $arrow.r$ autoimmunization $arrow.r$ prolonged CSF inflammation $arrow.r$ persistent neurocognitive dysfunction .
    - *CSF proteomics:* Temporal analysis of 890 CSF proteins (LC-MS) revealed an acute multi-pathway response at days 0--9 (acute phase, antimicrobial pattern recognition, glycolysis/gluconeogenesis), which resolved by 2 weeks. Six proteins were significantly reduced in NMDAR-seropositive patients, including apolipoprotein A1 — previously linked to NMDAR encephalitis — and complement factor I .
    - *Predictive viral antibody signature:* PhIP-Seq analysis identified HSV-1 UL42 and UL48 antibody signatures that predict which HSE patients develop secondary NMDAR encephalitis (75% sensitivity, >99% specificity, PPV 90%, OR 209) @Westman2025phipseq_nmdar.

#hypothesis(title: [Viral Encephalitis as Mechanistic Template for Post-Infectious ME/CFS])[

*Certainty: 0.45.* The HSE $arrow.r$ NMDAR autoimmunity $arrow.r$ persistent neurocognitive dysfunction sequence, documented prospectively in a cohort with known viral onset, may represent a generalizable mechanism for post-infectious ME/CFS. The certainty level reflects: (1) strong prospective evidence for the causative chain in HSE (NFL $arrow.r$ NMDAR autoimmunization $arrow.r$ cognitive decline); (2) 70--80% of ME/CFS patients report infection-triggered onset; (3) GPCR autoantibodies are documented in ME/CFS (Section @sec:gpcr-autoantibodies), and receptor internalization by autoantibodies is established for NMDAR (Section @sec:receptor-internalization); (4) however, HSE causes severe, focal brain damage with high NFL, whereas most ME/CFS-triggering infections (EBV, enteroviruses) do not typically produce this degree of tissue destruction; (5) extrapolation from HSV-1 to other viral triggers remains unconfirmed.

If viral-induced brain tissue damage is a necessary precursor to autoantibody-mediated ME/CFS, then: (1) ME/CFS patients with higher acute-phase NFL levels should have worse long-term outcomes; (2) subclinical neuroinflammation markers (CSF neopterin, TSPO-PET signal) should precede autoantibody development; (3) early immunomodulatory therapy post-infection should reduce NMDAR autoantibody incidence and improve neurocognitive outcomes; (4) ME/CFS triggered by non-neurotropic infections should show lower autoantibody prevalence than ME/CFS triggered by neurotropic viruses.

*Treatment implications:* This model suggests a therapeutic window in the acute and early recovery phases of triggering infections. If autoantibody development follows neuronal damage with a 3-month lag (as in HSE), early anti-inflammatory or immunosuppressive intervention during this window could prevent the establishment of chronic autoimmunity. Bergquist's group is conducting a 160-patient clinical trial at Harvard testing low-dose naltrexone, pyridostigmine, and their combination, which may provide relevant data.

*Limitations:* HSE causes catastrophic, often fatal brain injury; the degree of neuronal damage in typical ME/CFS-triggering infections is orders of magnitude lower. The relevance of this severe model to mild post-viral fatigue requires demonstration that the same mechanism operates at subclinical tissue damage levels. Additionally, only a subset of ME/CFS patients report post-infectious onset, limiting the generalizability of any virus-triggered model.
] <hyp:hse-mecfs-template>

#include "subsec-06-antibody-persistence/subsec-06-antibody-persistence.typ"

==== Abortive Lytic Replication and dUTPase
<sec:abortive-lytic>

A key challenge in ME/CFS virology is that standard viral load measurements frequently show no difference between patients and controls, despite serological evidence of immune activation against herpesviruses. Ariza et al.\ propose that *abortive lytic replication* (ALR) resolves this paradox @Ariza2025polyherpesvirus.

In ALR, herpesviruses initiate the lytic cycle but do not complete it: immediate-early and early lytic genes are expressed, producing viral proteins, but no infectious virions are assembled @Ariza2025polyherpesvirus. Because no new virions are produced, conventional viral load assays (qRT-PCR for viral DNA in plasma) remain negative, while the host immune system responds to the expressed viral proteins.

*dUTPase as Immunomodulatory Driver*
Among the early gene products expressed during ALR, herpesvirus-encoded deoxyuridine triphosphate nucleotidohydrolases (d UTPases) have emerged as particularly significant @Ariza2025polyherpesvirus @Palomo2026herpesvirus:

    - dUTPases are conserved across EBV (BLLF3), HHV-6 (U45), and VZV (ORF8)
    - These enzymes possess novel immunomodulatory and neuromodulatory functions beyond their catalytic role
    - They can directly activate innate immune signaling, potentially driving chronic immune activation without productive infection
    - Anti-dUTPase IgG antibodies are elevated in ME/CFS: across cohorts, 30.91% (single-sample analysis) to 52.7% (longitudinal sampling) of patients show simultaneous antibodies against multiple herpesvirus dUTPases versus 17.21% of controls @Ariza2025polyherpesvirus
    - Anti-dUTPase antibody levels correlate directly with fatigue and pain severity @Palomo2026herpesvirus
    - EBV dUTPase protein has been detected in postmortem ME/CFS brain tissue but not in non-ME/CFS controls, suggesting ALR occurs in the central nervous system @Ariza2025polyherpesvirus

#limitation(title: [dUTPase Evidence Base])[
The dUTPase findings derive primarily from one research group (Ariza, Williams, and collaborators). While results are internally consistent across multiple cohorts and include longitudinal data, independent replication by other groups is needed. The postmortem brain tissue finding is from a small sample. Additionally, elevated anti-dUTPase antibodies establish an association with ME/CFS but do not prove that ALR-derived dUTPase is causally driving symptoms rather than serving as a marker of broader immune dysregulation.
]

==== Poly-Herpesvirus Co-Reactivation
<sec:poly-herpesvirus>

Rather than a single herpesvirus driving ME/CFS, accumulating evidence points to simultaneous reactivation of multiple herpesviruses as a hallmark of post-infectious ME/CFS @Ariza2025polyherpesvirus @Palomo2026herpesvirus:

    - 72.5% of ME/CFS patients co-express antibodies to EBV, HHV-6, and VZV simultaneously, versus 31% of controls @Palomo2026herpesvirus
    - This pattern suggests systemic immune surveillance failure rather than reactivation of a single pathogen
    - The proposed cascade: initial herpesvirus undergoes ALR $arrow.r$ chronic dUTPase production drives T cell exhaustion $arrow.r$ CD8#super[+] T cell dysfunction permits sequential reactivation of additional herpesviruses
    - Disease severity may correlate with the number of co-reactivated viruses and the duration of T cell exhaustion

#speculation(title: [Poly-Herpesvirus ALR Cascade])[

*Certainty: 0.35.* The poly-herpesvirus ALR model is mechanistically coherent and consistent with the dUTPase antibody data (multiple cohorts showing 30–72% co-reactivation in ME/CFS versus 17–31% in controls). However, the hypothesis has not been directly tested: no study has prospectively tracked the temporal sequence of herpesvirus reactivation events, and the proposed T cell exhaustion cascade remains inferred from cross-sectional serological data. Independent replication of the dUTPase findings is pending.

If poly-herpesvirus ALR is a primary driver of post-infectious ME/CFS, then: (1) patients with antibodies against more herpesvirus dUTPases should have more severe symptoms; (2) single-agent antiviral therapy should produce only partial benefit, while broad-spectrum or combination antiviral approaches should be more effective; (3) prospective longitudinal sampling should reveal sequential herpesvirus reactivation events following the index infection; (4) dUTPase-targeted interventions should reduce immune activation markers independently of viral load.

*Treatment implications:* This model predicts that antiviral selection should target all reactivated herpesviruses rather than a single agent. It also suggests that dUTPase itself could be a therapeutic target, and that immune checkpoint modulation to reverse T cell exhaustion might break the reactivation cycle.

*Limitations:* The ALR concept, while explaining the negative viral load paradox, is difficult to measure directly in clinical settings. The proposed temporal cascade (initial ALR $arrow.r$ dUTPase $arrow.r$ T cell exhaustion $arrow.r$ further reactivation) has not been captured in longitudinal data. The framework currently applies primarily to post-infectious ME/CFS; its relevance to non-infectious-onset cases is unknown.
] <spec:poly-herpesvirus-alr>

==== Reactivation Patterns and Causal Relationships

The relationship between herpesvirus reactivation and ME/CFS immune dysfunction remains incompletely understood. Three mechanistic hypotheses can be distinguished by their testable predictions:

#hypothesis(title: [Viral Reactivation as Consequence])[

*Certainty: 0.45.* Consistent with documented NK cell dysfunction impairing viral clearance; however, the directionality of causation between NK dysfunction and viral reactivation has not been experimentally established in ME/CFS.

If reactivation is primarily a consequence of impaired immune control (particularly NK cell dysfunction), then: (1) improving NK cell function should reduce viral titers without affecting other ME/CFS symptoms; (2) viral reactivation markers should correlate with NK cell cytotoxicity but not independently predict symptom severity; (3) antiviral therapy alone should have minimal clinical benefit.
] <hyp:viral-reactivation-consequence>

#speculation(title: [Viral Reactivation as Cause])[

*Certainty: 0.30.* Limited antiviral trial data (Lerner, Montoya) show some benefit in subgroups, but controlled trials have not consistently demonstrated that viral suppression produces sustained clinical improvement across the ME/CFS population, lowering confidence in this model as a universal driver.

If reactivation is a primary driver of ongoing immune activation, then: (1) antiviral therapy should reduce both viral titers and immune activation markers (cytokines, immune cell activation); (2) viral load should independently predict symptom severity after controlling for immune markers; (3) successful viral suppression should produce sustained clinical improvement.
] <spec:viral-reactivation-cause>

#hypothesis(title: [Bidirectional Feedback Loop])[

*Certainty: 0.50.* This model is the most mechanistically plausible given the documented bidirectional interactions between immune dysfunction and viral reactivation; it is consistent with the partial and heterogeneous response to antiviral monotherapy, though direct experimental evidence for a self-sustaining cycle in ME/CFS remains limited.

If reactivation and immune dysfunction form a self-sustaining cycle, then: (1) interventions targeting either viral replication or immune dysfunction should produce partial but incomplete benefit; (2) combined antiviral and immune-modulating therapy should be synergistic; (3) breaking the cycle at any point should eventually normalize both viral titers and immune function, though with temporal lag.
] <hyp:viral-reactivation-bidirectional>

Current evidence does not definitively distinguish these mechanisms, though the limited efficacy of antiviral monotherapy in most ME/CFS patients suggests reactivation is unlikely to be solely causal. Longitudinal studies tracking viral titers, immune markers, and symptom severity following targeted interventions are needed to resolve this question.

#limitation(title: [Viral Reactivation: Causal Direction Unresolved])[
While herpesvirus reactivation is documented in a subset of ME/CFS patients, no study has established the causal direction. Elevated viral titers and reactivation markers could be: (a) a cause of immune dysfunction driving symptoms, (b) a consequence of pre-existing NK cell/T cell dysfunction permitting reactivation, or (c) an epiphenomenon of general immune dysregulation with no independent causal role. The partial and inconsistent response to antiviral monotherapy does not resolve this ambiguity. Longitudinal intervention studies with simultaneous tracking of viral load, immune function, and symptoms are required.
]

