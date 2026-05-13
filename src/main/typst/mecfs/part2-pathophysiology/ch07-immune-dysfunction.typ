#import "../shared/environments.typ": *

= Immune System Dysfunction
<ch:immune-dysfunction>

Immune abnormalities are among the most consistently documented features of ME/CFS and likely play a central role in disease pathogenesis. The 2024 NIH deep phenotyping study by Walitt et al.\ provided the most comprehensive characterisation to date of specific immune abnormalities, including characteristic B cell population shifts and sex-specific patterns of immune dysregulation @walitt2024deep. This chapter provides a comprehensive examination of immune dysfunction across the innate and adaptive immune systems, inflammatory mediators, and potential autoimmune mechanisms.

As discussed in Chapter @ch:energy-metabolism, immune activation is metabolically costly and may contribute to the bioenergetic crisis in ME/CFS. The neuroinflammatory mechanisms described here connect to autonomic and cardiovascular dysfunction (Chapter @ch:cardiovascular) and neurological impairment (Chapter @ch:neurological). Understanding immune dysfunction is thus essential for a comprehensive model of ME/CFS pathophysiology. Chapter @ch:integrative-models synthesizes these cross-system connections, examining how immune dysfunction participates in self-reinforcing pathophysiological cycles (Section @sec:unifying-mechanisms).

== Innate Immunity
<sec:innate-immunity>

The innate immune system provides immediate, non-specific defense against pathogens and plays a critical role in initiating and shaping adaptive immune responses. Multiple components of innate immunity show abnormalities in ME/CFS.

=== Natural Killer (NK) Cell Dysfunction
<sec:nk-cells>

Natural killer cell abnormalities represent one of the most replicated findings in ME/CFS research, with impaired NK cell function reported across numerous independent studies spanning decades. A 2019 systematic review of 17 case-control studies (1994–2018) found that impaired NK cell cytotoxicity remained the most consistent immunological abnormality across all publications .

==== Reduced NK Cell Cytotoxicity

NK cells eliminate virus-infected and malignant cells through direct cytotoxic mechanisms. ME/CFS patients consistently demonstrate decreased cytotoxic activity, with reduced ability to kill target cells (typically K562 erythroleukemia cells in standard assays). The magnitude of this impairment is substantial, with studies reporting statistically significant reductions across multiple cohorts . Lower NK cell function correlates with greater symptom severity in some studies. These abnormalities remain stable over time, suggesting a chronic rather than transient dysfunction. A 2024 meta-analysis of 28 studies encompassing approximately 2,982 subjects quantified this deficit as a large effect (Hedges' g = 0.96, 95% CI: 0.75--1.18), with ME/CFS NK cytotoxicity approximately half that of healthy controls .

However, the largest multi-site study to date produced a null result. The MCAM (Multi-site Clinical Assessment of ME/CFS) sub-study tested 174 ME/CFS patients and 86 healthy controls from five US specialty clinics using a flow cytometry-based killing assay on overnight-shipped PBMCs @Querec2023MCAM. Mean cytotoxicity was virtually identical: 34.1% in ME/CFS versus 33.6% in controls ($p = 0.79$). No associations with disease severity, illness duration, or onset type were found. Notably, Nancy Klimas---whose foundational 1990 study first documented large NK deficits---is a co-author on this null study, lending it credibility.

#limitation(title: [NK Cytotoxicity: Unresolved Methodological Dispute])[
The MCAM null result was excluded from the Baraniuk 2024 meta-analysis on methodological grounds: overnight sample shipping may degrade cytotoxicity sufficiently to erase real group differences, and the intracellular DNA staining endpoint detects late-stage cell death rather than early apoptosis (unlike Annexin V used in positive studies). The MCAM team's own validation study found good correlation between their shipped-sample fluorescence assay and same-day chromium-51 release ($R^2 = 0.80$, $p = 0.001$), arguing that group-level differences should still be detectable @Querec2023MCAM. Whether this correlation is sufficient to claim equivalence remains contested. The dispute has practical implications: if NK cytotoxicity requires same-day local processing to detect, it cannot serve as a scalable clinical biomarker regardless of its biological reality.
]

==== Mechanisms of Impaired Cytotoxicity

Several mechanisms may underlie reduced NK cell function:

*Perforin and Granzyme Deficiency*
NK cells kill targets by releasing cytotoxic granules containing perforin (which creates pores in target cell membranes) and granzymes (which trigger apoptosis). Maher et al.\ (2005) demonstrated a mechanistic basis for impaired cytotoxicity: ME/CFS patients show a 45% reduction in NK cell perforin content (3,320 vs 6,051 rMol/cell, $p = 0.01$), with significant correlation between perforin levels and cytotoxic function @Maher2005. Additionally, Brenu et al.\ (2011) found a paradoxical pattern of elevated perforin but decreased granzyme A and K expression in a large cohort (n=95), suggesting dysfunction in granzyme production or granule composition despite adequate perforin @Brenu2011. These cells exhibit impaired degranulation despite successfully recognizing target cells, indicating dysfunction in granule trafficking and release mechanisms.

*Receptor Abnormalities*
NK cell activation is regulated by a balance between activating and inhibitory receptors. ME/CFS patients show altered expression of activating receptors (NKG2D, NKp46, NKp30) along with changed inhibitory receptor profiles @Brenu2011 . Additionally, signaling downstream of activating receptors is impaired, and calcium flux following receptor engagement is disrupted .

*Metabolic Dysfunction*
NK cells require substantial energy for cytotoxic function. ME/CFS NK cells exhibit impaired glycolytic metabolism and mitochondrial dysfunction affecting ATP production @Brenu2011. This reduced metabolic reserve limits their capacity for sustained activity.

==== NK Cell Subsets

Human NK cells are divided into functionally distinct subsets. CD56#super[bright] NK cells primarily produce cytokines and are found mainly in lymphoid tissues, while CD56#super[dim] NK cells are primarily cytotoxic and predominate in peripheral blood. ME/CFS studies have reported altered CD56#super[bright]/CD56#super[dim] ratios, with an increased proportion of CD56#super[bright] cells in some studies  . Reduced absolute numbers of CD56#super[dim] cytotoxic cells and abnormal maturation patterns have also been observed .

==== Clinical Significance of NK Cell Dysfunction

Impaired NK cell function may contribute to ME/CFS through several mechanisms:

    - *Viral reactivation*: Inadequate control of latent herpesviruses (EBV, HHV-6, CMV)
    - *Tumor surveillance*: Theoretical increased cancer risk (though not clearly demonstrated)
    - *Immune regulation*: NK cells modulate other immune cells; dysfunction may permit chronic inflammation
    - *Infection susceptibility*: Reduced defense against new infections

These mechanisms may form a self-reinforcing cycle rather than a simple linear causal chain. In particular, the relationship between NK cell dysfunction and viral reactivation is bidirectional: impaired NK function permits viral reactivation, but chronic viral reactivation itself may further exhaust and dysregulate NK cells. Section @sec:herpesviruses examines three competing hypotheses for this relationship with their testable predictions. This bidirectional cycle represents one of several vicious cycles maintaining ME/CFS pathophysiology, discussed comprehensively in Section @sec:unifying-mechanisms of Chapter @ch:integrative-models.

#hypothesis(title: [MDSC Expansion via Exosomal HSAT2 as the Upstream Cause of NK Cytotoxicity Loss])[


*(Certainty: 0.50 — mechanistic fit to the most-replicated ME/CFS finding; all supporting evidence is from non-ME/CFS contexts.)*

The NK cytotoxicity deficit (Hedges' g = 0.96, 95% CI 0.75–1.18, 28 papers, 55 data points ) has one of the most extensive replication records of any ME/CFS immunological finding, though this assessment is contested — the MCAM null result (n = 174/86, p = 0.79; see above) was excluded from the meta-analysis on methodological grounds that remain disputed. The deficit involves reduced perforin content @Maher2005, impaired degranulation despite intact target recognition, and dysregulated activating receptor expression @Brenu2011 . No single upstream driver has been established.

Myeloid-derived suppressor cells (MDSCs; CD33+HLA-DR−) are an immunosuppressive myeloid population expanded by viral infection @Agrati2020MDSCCoVID19 and shown to persist at 5 months post-SARS-CoV-2 infection in a human cohort . In the context of EBV — the most common ME/CFS trigger following infectious mononucleosis — MDSC expansion during acute primary infection has also been documented @Mihatsch2026MDSCMono. MDSCs suppress NK cells through mechanisms that directly match the ME/CFS NK phenotype, with the arginase-1 pathway established in HCV-infected patients  —

    - Arginase-1 depletes L-arginine required for NK perforin synthesis (explaining the Maher 2005 perforin deficit @Maher2005); Goh et al.\ demonstrated this suppression is cell-contact-independent and reversed by L-arginine supplementation 
    - Membrane-bound TGFβ1 on M-MDSCs downregulates NKG2D on NK cells, abolishing activation receptor signaling (consistent with Brenu 2011 receptor abnormalities @Brenu2011) 
    - IDO1-driven tryptophan catabolism impairs NK activation in a paracrine fashion
    - IL-10 and IL-35 further suppress NK cytotoxicity

Evdokimova et al.\  demonstrated that exosomal HSAT2/HERV-K transmission to CD33+ myeloid cells induces the full MDSC program — including arginase-1, IDO1, IL-10, IL-35, and TGFβ — proposing a candidate upstream driver for MDSC expansion in post-viral ME/CFS. This positions exosomal HSAT2-driven MDSC expansion as a candidate explanation for the most replicated ME/CFS finding — a single node reconciling perforin depletion, receptor dysregulation, and metabolic impairment. The chronicity follows from the self-perpetuating exosomal loop @spec:hsat2-exosome-mdsc: as long as HSAT2 EVs circulate, MDSC-mediated NK suppression is continuous.

*Falsifiable prediction:* ME/CFS patients with the lowest NK cytotoxicity will have the highest peripheral CD33+HLA-DR− MDSC frequency (Spearman ρ < −0.4). Selective CD33+ depletion from patient PBMCs ex vivo will partially restore NK killing (≥ 20% recovery, K562 assay). If MDSC frequency does not correlate with NK cytotoxicity, the MDSC-bridge model is not supported.

*Limitations:* No ME/CFS-specific data on MDSC frequency exist — the mechanistic chain is imported from HCV , COVID-19  @Agrati2020MDSCCoVID19, and cancer contexts. The Beliakova-Bethell 2022 study measured arginase-dependent T-cell suppression; NK cell assays were not performed. EBV-IM MDSC data (Mihatsch 2026) show no ME/CFS follow-up. The upstream exosomal HSAT2 mechanism is speculative in ME/CFS. Not replicated.
] <hyp:mdsc-nk-bridge>

#hypothesis(title: [Arginine Depletion as the Nutritional Choke-Point Linking MDSC Expansion to NK Metabolic Failure])[


*(Certainty: 0.45 — mechanism established by Goh 2016 in chronic viral disease; ME/CFS-specific arginine data absent.)*

Monocytic MDSCs express high arginase-1, which depletes extracellular L-arginine in the tissue microenvironment . L-arginine is required for NK cell mTOR complex 1 activation; mTOR is required for perforin synthesis, granule polarization, and cytotoxic effector function. In chronic HCV infection, MDSC-driven arginase-1 activity depletes L-arginine and suppresses NK IFN-γ production by approximately 60% — fully reversible by L-arginine supplementation in vitro . ME/CFS NK cytotoxicity is reduced to approximately 50% of controls in meta-analysis .

The arginase-1 mechanism provides a biochemical bridge between MDSC expansion and NK metabolic failure: not direct contact-dependent killing, but enzymatic substrate deprivation. This is clinically significant because: (a) it is theoretically reversible with arginine precursors (L-citrulline, which bypasses intestinal arginine catabolism); (b) plasma arginase-1 activity is measurable as a pharmacodynamic biomarker; (c) the same mechanism operates in iNOS-dependent MDSC suppression documented in SLE  (different enzyme, same substrate), suggesting the L-arginine axis is a shared pathway across multiple MDSC-driven immune dysfunctions.

*Falsifiable prediction:* Plasma L-arginine concentration in ME/CFS will be at least 15% lower than in matched controls and will inversely correlate (Spearman ρ < −0.3) with plasma arginase-1 activity. L-citrulline 6 g/day × 8 weeks will raise plasma L-arginine by ≥ 30% and increase NK IFN-γ ex vivo by ≥ 20% in a n = 20 crossover study. If plasma L-arginine is normal in ME/CFS, the arginase-depletion mechanism is not operative.

*Limitations:* Plasma L-arginine data in ME/CFS have not been systematically reported. Arginase-1 can be elevated by multiple causes beyond MDSC expansion. L-citrulline has a good safety profile but no ME/CFS trial data exist. The iNOS route (SLE context) and arginase-1 route (HCV/post-COVID context) are distinct — the dominant suppression mechanism in ME/CFS is unknown. Replication status: mechanism well-replicated in cancer/HCV; ME/CFS application not replicated.
] <hyp:arginine-mdsc-nk>
==== TRPM3 Ion Channel Dysfunction
<sec:trpm3-dysfunction>

A major breakthrough in understanding impaired calcium signaling in ME/CFS immune cells came from research on the TRPM3 ion channel . TRPM3 (Transient Receptor Potential Melastatin 3) is a calcium-permeable ion channel, and calcium signaling is essential for healthy immune cell activity—including the degranulation process disrupted in ME/CFS NK cells.

A study conducted by researchers at Griffith University's National Centre for Neuroimmunology and Emerging Diseases (NCNED) found that TRPM3 functions abnormally in immune cells of ME/CFS patients compared to healthy controls. This finding was reproduced across two laboratories within the same NCNED network (Gold Coast and Perth, Australia). As noted in the limitation box below, independent replication by groups outside this network has not yet been published; the "4,000 km separation" refers to internal network sites, not independent research groups.

The researchers describe the faulty ion channels as acting like “stuck doors,” preventing cells from receiving the calcium they need for normal function. Calcium signaling is essential for immune cell activity, including NK cell cytotoxic function (degranulation requires calcium influx).

This discovery has several important implications:

    - *Diagnostic potential*: TRPM3 dysfunction could serve as an objective biomarker for ME/CFS
    - *Therapeutic targets*: Drugs that modulate TRPM3 function might restore normal immune cell activity
    - *Disease legitimacy*: Measurable cellular abnormalities provide concrete evidence of biological dysfunction
    - *Mechanistic understanding*: TRPM3 dysfunction may explain why NK cells fail to degranulate properly despite recognizing targets

The TRPM3 findings connect to broader ion channel research in ME/CFS and suggest that channelopathy—dysfunction of ion channels—may be a unifying mechanism underlying multiple immune abnormalities observed in the condition.

#limitation(title: [TRPM3 Channelopathy: Single Research Group])[
TRPM3 ion channel dysfunction in ME/CFS has been characterized primarily by a single research group (Griffith University NCNED). While the multi-site validation (Gold Coast and Perth) strengthens internal reproducibility, independent replication by groups outside this collaboration has not yet been published. The diagnostic biomarker potential, therapeutic implications, and status as a “unifying mechanism” for immune abnormalities remain speculative until independently replicated and mechanistically linked to clinical outcomes in prospective studies. *Clinical availability*: TRPM3 testing is not commercially available outside the NCNED research context and cannot be ordered by clinicians for individual patient decision-making. See Appendix @app:research-registry, Section @sec:registry-ncned-trpm3 for current study status and planned LDN trials.
]

=== Neutrophil and Monocyte Function
<sec:neutrophils-monocytes>

==== Neutrophil Abnormalities

Neutrophils are the most abundant circulating white blood cells and serve as first responders to infection. Kennedy et al.\ (2004) demonstrated that ME/CFS patients exhibit increased neutrophil apoptosis (37.4% vs 22.8% annexin V binding, $p = 0.001$) with elevated death receptor TNFRI expression ($p = 0.004$) and raised active TGF-$beta$1 concentrations ($p < 0.005$), consistent with an activated inflammatory process @Kennedy2004. Additional ME/CFS-associated abnormalities include:

*Phagocytosis Impairment*
Neutrophils from ME/CFS patients show reduced uptake of bacteria and particles, with impaired phagosome formation and decreased acidification of phagolysosomes .

*Respiratory Burst Defects*
The respiratory burst produces reactive oxygen species to kill ingested pathogens. Some studies have found reduced superoxide production in ME/CFS neutrophils, along with impaired NADPH oxidase function and altered baseline oxidative status .

*Chemotaxis Impairment*
Neutrophils in ME/CFS demonstrate reduced migration toward chemoattractants, with impaired directional sensing and decreased expression of chemokine receptors .

*Neutrophil Extracellular Traps (NETs) and NETosis Dysregulation*

NETs are web-like chromatin structures extruded by neutrophils to trap and kill pathogens; their formation is termed NETosis. While NETs serve an antimicrobial function, excessive or dysregulated NETosis drives thrombo-inflammation, coagulopathy, and autoimmunity. ME/CFS patients show altered NET formation, which may contribute to the chronic inflammatory state and autoimmune features of the condition .

Recent evidence from COVID-19 and long COVID research reveals a specific dysregulation: impaired _NET degradation_ rather than (or in addition to) excessive NET formation. In severe COVID-19, neutrophil-derived protease inhibitors and reduced plasmacytoid dendritic cell (pDC) counts diminish circulating DNase1L3, a serum enzyme that degrades NETs @GarciaLabroucheColomer2024. This creates an imbalance: “Elevated NET markers and reduced functional DNases are risk factors for COVID-19 severity,” and genetic polymorphisms in _DNASE1_ limit DNase production, perpetuating NET accumulation @GarciaLabroucheColomer2024. The consequence is persistent NET-mediated thrombo-inflammation: in vitro, sera from severe COVID-19 patients induced elevated NET formation in control neutrophils, positively associated with IL-1$beta$, IFN-$gamma$, and IL-6 @Romano2022. Remarkably, breakthrough infections (in vaccinated individuals) also showed elevated NETosis despite mild clinical disease, indicating “dysregulated immune response decoupled from pathogen load” @Romano2022—a pattern that parallels the immune activation seen in ME/CFS despite minimal ongoing infection.

The thrombo-inflammatory consequences are substantial: NET-elevated patients showed elevated D-dimer (coagulation activation marker; mean 503 ng/mL in severe cases) and lactate dehydrogenase, indicating tissue damage and microthrombi formation @Romano2022. This NET-driven coagulation dysregulation may explain ME/CFS features such as orthostatic intolerance (if microthrombi reduce cerebral perfusion), post-exertional malaise (reduced microvascular oxygen delivery), and cognitive dysfunction. Furthermore, NETosis-mediated mechanisms persist in long COVID, where substantial organ damage occurs in over 70% of infected individuals, with lasting structural remodeling (e.g., pulmonary scarring, fibrosis) rather than reversible functional impairment @Ewing2024.

#speculation(title: [Defective NET Clearance Despite Diminished NET Production])[
*Certainty: 0.25.* Given the suppressed neutrophil activation signature observed in ME/CFS (discussed above), the dysregulation may be more nuanced: ME/CFS neutrophils may have impaired NETosis formation at baseline (contributing to immune suppression), yet still experience dysregulated NET _degradation_, allowing accumulated NETs to drive chronic thrombo-inflammation. This speculation—defective NET clearance despite diminished NET production—remains to be directly tested in ME/CFS but is biologically plausible given the innate immune suppression and persistent inflammatory markers characteristic of the disease.

*Testable predictions:* (a) ME/CFS patients show elevated circulating NET remnants (MPO-DNA complexes, citrullinated histone H3) despite reduced ex vivo NETosis induction; (b) serum DNase1L3 activity is reduced in ME/CFS patients relative to healthy controls; (c) NET remnant levels correlate with thrombo-inflammatory markers (D-dimer, fibrinogen) and orthostatic intolerance severity.
] <spec:net-clearance-deficit>

#achievement(title: [Persistent NETosis Induction in Long COVID as Potential Pathogenic Driver])[
Krinsky et al. @Krinsky2023 measured NETosis induction capacity across 177 COVID-19 patients at two Israeli centres spanning acute and convalescent timepoints. NETosis induction correlated strongly with disease severity, platelet activation, and coagulation factor elevation, and remained significantly elevated in long COVID patients months after acute resolution. Critically, NETosis induction was more sensitive than MPO-DNA for stratifying disease severity, and dexamethasone treatment reduced induction. Persistent NETosis capacity in long COVID suggests ongoing neutrophil priming as a mechanistic contributor to post-acute pathology rather than a transient inflammatory response.
Study: ($n=177$ + 54 controls, two-centre cohort, Journal of Thrombosis and Haemostasis, certainty: 0.75, partially replicated).
] <ach:krinsky2023-netosis-long-covid>

Neutrophil extracellular trap formation is directly triggered by viral infections through both pattern-recognition receptor activation and cytokine-mediated pathways @Schonrich2016, providing a mechanistic bridge between acute viral illness and the sustained neutrophil dysfunction observed in ME/CFS @Romano2022 @Krinsky2023 @Monsalve2025. Notably, herpesviruses implicated in ME/CFS triggering (EBV, CMV) are among the established viral NETosis inducers @Schonrich2016.

#hypothesis(title: [NETosis as Bridge from Acute Viral Infection to Chronic Autoimmunity])[
Monsalve et al. @Monsalve2025 propose that excessive NETosis following SARS-CoV-2 infection generates persistent autoantigenic stimuli—citrullinated histones, extracellular DNA, and NET-associated proteins—that activate NLRP3 inflammasome pathways and sustain IL-1$beta$/IL-18 release characteristic of long COVID. Under this model, impaired NET clearance (reduced DNase activity or persistent neutrophil priming) creates a self-amplifying loop linking the acute viral trigger to chronic autoimmune-like pathology indistinguishable from primary autoimmune disease.

*Testable prediction:* Long COVID patients with persistent NETosis should show higher NLRP3 activation markers (IL-1$beta$, IL-18, caspase-1) and higher citrullinated autoantibody titres than those who resolved NET formation normally.

*Treatment implication:* PAD4 inhibitors (reducing NET citrullination) and recombinant DNase I (enhancing NET clearance) represent mechanistically grounded therapeutic targets that could be tested in ME/CFS NETosis-positive subgroups.
Study: (systematic review, certainty: 0.70, synthesises findings across multiple groups).
] <hyp:monsalve2025-nets-autoimmunity>

Aging-associated contraction of the naive lymphocyte pool specifically impairs
SARS-CoV-2-specific CD8#super[+] T cell induction in severe COVID-19, while antibody
responses remain intact @Autaa2025CD8Aging. Critically, IL-18—elevated in
severe disease and implicated in the NETosis–NLRP3 loop identified by Monsalve et al.\ above—was
identified as a direct suppressor of antigen-specific CD8#super[+] T cell induction and
memory recall. This IL-18-mediated CD8 suppression could impair viral reservoir
clearance in older post-COVID ME/CFS patients, linking immunosenescence to the
failure to eliminate SARS-CoV-2 tissue persistence.

Preclinical evidence supports NET disruption as a viable therapeutic strategy: DNase I treatment reduced multi-organ injury in SARS-CoV-2-infected mice @Veras2023, with NETs shown to directly damage lung epithelium independently of other viral effects, suggesting that pharmacological NET clearance could be protective across multiple organ systems in post-viral inflammatory states.

NETosis-mediated thromboinflammation has been documented across diverse immune stimuli: in vaccine-associated thrombotic complications (VITT), H3-NET levels and calprotectin correlated strongly with clinical severity ($r gt.eq 0.745$) @Hetland2022, establishing calprotectin (S100A8/S100A9) as a clinically accessible proxy for NET burden that could be applied in ME/CFS monitoring protocols.

*Proteomic Evidence: Suppressed Neutrophil Signature*
A large-scale serum proteomics study by Hoel et al.\ (2026) @Hoel2026proteome revealed a broad and pronounced reduction in circulating neutrophil-derived proteins in ME/CFS patients. By cross-referencing their dataset with a published list of proteins released by PMA-activated neutrophils, the authors found that 146 of 254 known neutrophil activation products were detectable, and over 85% of those showing significant differences were reduced in ME/CFS. Hallmark neutrophil granule components—bactericidal/permeability-increasing protein (BPI), peptidylarginine deiminase 4 (PADI4), matrix metalloproteinase 9 (MMP9), neutrophil elastase (ELANE), azurocidin 1 (AZU1), and lactoferrin (LTF)—were all significantly lower. This suppressed neutrophil protein signature occurred despite normal peripheral neutrophil counts (3.38 $plus.minus$1.03 $times$10#super[9]/L), suggesting a qualitative deficiency in neutrophil activation or degranulation rather than a quantitative cell deficit. This proteomic finding complements the functional neutrophil abnormalities described above (impaired phagocytosis, respiratory burst defects, chemotaxis impairment) and suggests that the circulating neutrophil pool in ME/CFS is hypoactivated at baseline—potentially contributing to the impaired innate immune defense and altered inflammatory milieu characteristic of the disease.

More broadly, the Hoel et al.\ study found that the innate immune arm—granulocyte- and monocyte-associated proteins—showed a primarily downward shift (70.3% and 64.6% of altered proteins reduced, respectively), while NK cell and T cell-associated proteins were predominantly elevated (72.0% and 62.5% upward). This innate-suppressed / adaptive-elevated pattern suggests a fundamental immune reprogramming in ME/CFS, where innate first-responder functions are dampened while adaptive immune cells show signs of chronic activation or compensatory expansion.

==== Monocyte and Macrophage Dysfunction

Monocytes and their tissue-resident derivatives (macrophages) bridge innate and adaptive immunity:

*Monocyte Subset Alterations*
Human monocytes are classified into three functionally distinct subsets: classical (CD14#super[++]CD16#super[-]) monocytes perform phagocytic and antimicrobial functions; intermediate (CD14#super[++]CD16#super[+]) monocytes handle antigen presentation and cytokine production; and non-classical (CD14#super[+]CD16#super[++]) monocytes conduct patrolling and vascular surveillance. ME/CFS studies have found increased intermediate monocytes (associated with inflammation), altered cytokine production profiles, abnormal responses to stimulation, and changed expression of activation markers.

*Macrophage Polarization*
<obs:macrophage-polarization>
Tissue macrophages can adopt pro-inflammatory (M1) or anti-inflammatory (M2) phenotypes. Evidence suggests M1 polarization in ME/CFS, with impaired transition to the resolving M2 phenotype, resulting in chronic inflammatory macrophage activation @heng2025mecfs.
=== Complement System
<sec:complement>

The complement system consists of plasma proteins that enhance (“complement”) antibody and phagocyte function. Abnormalities in ME/CFS include:

==== Complement Activation Patterns

ME/CFS patients show elevated activation products, with increased C3a, C4a, and C5a fragments indicating ongoing complement activation . Reduced levels of C3 and C4 suggest consumption of these complement components. Additionally, abnormal levels of complement regulatory proteins point to altered regulation of the system.

Serum proteomics data from Hoel et al.\ (2026) @Hoel2026proteome confirmed and extended these findings: complement factor D (CFD) and complement component C6 were among the most significantly elevated secreted proteins in ME/CFS. Elevated CFD indicates activation of the alternative complement pathway, while elevated C6 indicates increased assembly of the membrane attack complex (MAC). The authors noted that elevated CFD and C6 are implicated in vasculitis, lupus, dermatomyositis, and autoimmune nephritis, further supporting a possible autoimmune-like complement activation pattern in ME/CFS.

==== Exercise-Induced Complement Activation and PEM
<sec:complement-pem>

A series of studies has documented an association between complement activation and post-exertional malaise. Sorensen et al.\ demonstrated significant C4a elevation at 6 hours post-exercise exclusively in CFS patients ($P\<0.01$), regardless of allergy status—the first demonstration of exercise-induced complement activation in CFS @Sorensen2003complement. Nijs et al.\ subsequently identified post-exercise C4a as a clinically important biomarker for PEM, linking complement activation to the molecular mechanism of post-exertional malaise alongside elastase and IL-1$beta$ @Nijs2010pem. Polli et al.\ extended this by demonstrating moderate associations between exercise-induced C4a changes and pain thresholds in ME/CFS ($r=0.669$, $p=0.001$), directly connecting complement activation to exercise-induced hyperalgesia @Polli2019complement.

Most recently, Glass et al.\ (2025) found upregulation of complement system proteins in extracellular vesicles post-exercise in males with ME/CFS, with ER stress response changes correlating with PEM severity @Glass2025ev. This finding is consistent with the earlier soluble C4a observations and extends them to the vesicular compartment, though the male-only sample limits generalisability.

C4a generation is consistent with activation of the lectin and/or classical complement pathways rather than the alternative pathway. This is mechanistically distinct from the CFD (factor D) elevation reported in serum proteomics @Hoel2026proteome, which indicates alternative pathway activation. The co-existence of both pathway activations suggests broad complement dysregulation rather than a single pathway defect.

==== Clinical Implications

Complement abnormalities may contribute to inflammation through anaphylatoxin (C3a, C5a) production and impair pathogen clearance . They may also promote autoimmune manifestations and trigger mast cell activation through complement fragment-induced degranulation .

==== Complement Dysregulation and Infection Susceptibility
<sec:complement-infection>

Complement deficiency—particularly of the terminal pathway (C5–C9) and properdin—is a well-established risk factor for invasive meningococcal disease, with a substantial proportion of recurrent meningococcal cases occurring in complement-deficient individuals (reviewed in standard infectious disease references). ME/CFS complement findings show dysregulation (activation with consumption) rather than genetic deficiency per se: reduced C3 and C4 levels suggest consumption of these components, while elevated activation products (C3a, C4a, C5a) indicate ongoing activation . Persistent complement consumption in Long COVID has been independently confirmed @Klein2024longcovid.

#limitation(title: [Complement Dysregulation $eq.not$ Complement Deficiency])[
The ME/CFS complement phenotype—chronic activation with component consumption—is mechanistically distinct from the genetic complement deficiencies that confer high meningococcal susceptibility. Reduced C3/C4 from consumption may transiently impair opsonisation and pathogen clearance, but the terminal pathway (C5–C9 membrane attack complex) critical for killing _Neisseria meningitidis_ has not been specifically assessed in ME/CFS. Whether the exercise-induced C4a elevation @Sorensen2003complement @Glass2025ev reflects a complement system that is functionally compromised—rather than merely activated—for pathogen defense remains an open question. Extrapolating from complement dysregulation to increased meningococcal susceptibility is biologically plausible but empirically unsupported.
]

#speculation(title: [Complement-Driven Perivascular Mast Cell Amplification Loop])[
*Certainty: 0.25.* Based on complement activation evidence (Sorensen, Maya, Bragee) and mast cell biology (established C3a/C5a mechanisms). Downgraded from initial 0.45 because: the loop has never been demonstrated in ME/CFS tissue or any disease; complement and mast cell activation could equally be parallel downstream effects of a shared upstream trigger (e.g., endothelial dysfunction); the Bragee CSF evidence cited has no control group and cannot support between-group claims; multiple complement regulatory proteins (Factor H, Factor I, CD55, CD59) would need to fail simultaneously for sustained amplification, which is not addressed. -genetics @Bragée2026csf-proteome @Sorensen2003complement

The Maya et al.\ complement pQTL subgroup (high C3/low Bb) may represent individuals predisposed to a perivascular amplification loop: complement activation produces C3a/C5a anaphylatoxins → mast cell degranulation at perivascular sites → histamine, tryptase, and heparin increase vascular permeability → further complement protein leakage into perivascular tissue → alternative pathway amplification on host surfaces → more C3a/C5a → more mast cell activation. However, this loop requires: (1) sustained mast cell responsiveness (tachyphylaxis after repeated anaphylatoxin exposure is not addressed), (2) spatial confinement (no mechanism provided for why amplification would be perivascular rather than systemic), and (3) failure of complement regulatory proteins (Factor H, CD55, CD59---none of which are discussed). The simpler alternative---complement activation and mast cell activation as parallel downstream effects of systemic inflammation or endothelial dysfunction---explains the co-occurrence without requiring a novel positive feedback mechanism.

The Brag{\'e}e et al.\ CSF finding of complement cascade enrichment in severe ME/CFS cases @Bragée2026csf-proteome has been cited as supporting evidence for this loop, but that study had no healthy control group (certainty 0.35) and cannot establish differential expression.

*Testable predictions:*
    + Skin blister fluid or interstitial fluid from ME/CFS patients will show higher C3a:C3 ratio than plasma, indicating local complement amplification (research technique requiring specialized collection)
    + Complement-pQTL-positive subgroup will have higher serum tryptase and prostaglandin D2 than complement-pQTL-negative patients
    + C5a receptor antagonists (e.g., avacopan) would reduce mast cell mediators if the loop operates; a negative result would support the parallel-activation alternative
] <spec:complement-mast-cell-loop>

=== Dendritic Cells
<sec:dendritic-cells>

Dendritic cells (DCs) are professional antigen-presenting cells that initiate adaptive immune responses. ME/CFS patients show altered DC maturation with abnormal expression of co-stimulatory molecules . Changed cytokine production skews toward pro-inflammatory profiles, while impaired antigen presentation may contribute to inadequate pathogen clearance. Plasmacytoid DCs display abnormalities in type I interferon production .

== Adaptive Immunity
<sec:adaptive-immunity>

The adaptive immune system provides specific, long-lasting responses through T and B lymphocytes. The NIH deep phenotyping study identified characteristic abnormalities in B cell populations that may represent a biomarker signature for ME/CFS @walitt2024deep.

=== T Cell Abnormalities
<sec:t-cells>

T lymphocytes coordinate adaptive immune responses and directly eliminate infected cells.

==== T Cell Subset Distribution

*CD4/CD8 Ratio Changes*
The ratio of helper (CD4#super[+]) to cytotoxic (CD8#super[+]) T cells is altered in some ME/CFS patients, though findings vary considerably across studies . Some report a decreased CD4/CD8 ratio while others find an increased ratio. This heterogeneity may reflect distinct patient subgroups within the ME/CFS population.

*Helper T Cell Subsets*
CD4#super[+] T cells differentiate into functional subsets with distinct roles: Th1 cells produce interferon-gamma and promote cell-mediated immunity; Th2 cells produce IL-4, IL-5, and IL-13 to promote antibody responses; Th17 cells produce IL-17 and are involved in autoimmunity and mucosal defense; and regulatory T cells (Tregs) suppress immune responses to maintain tolerance. ME/CFS findings include Th1/Th2 imbalance (though the direction varies across studies), elevated Th17 cells in some patients, and reduced Treg numbers or function  @Brenu2012miRNA. Altered cytokine profiles reflect these subset imbalances.

==== T Cell Exhaustion Markers

Chronic antigen exposure can lead to T cell exhaustion, characterized by:

    - *Increased PD-1 expression*: Programmed death-1, an inhibitory receptor @iu2024tcell_exhaustion @walitt2024deep
    - *Elevated Tim-3*: T cell immunoglobulin and mucin domain-3 @iu2024tcell_exhaustion
    - *CTLA-4 upregulation*: Cytotoxic T-lymphocyte-associated protein 4 @iu2024tcell_exhaustion
    - *Reduced proliferative capacity*: Impaired response to stimulation @iu2024tcell_exhaustion
    - *Decreased cytokine production*: Despite activation marker expression @iu2024tcell_exhaustion

These findings suggest chronic immune stimulation in ME/CFS, consistent with persistent infection or autoimmune processes @iu2024tcell_exhaustion.

*Comprehensive T Cell Exhaustion Evidence (Iu et al.\ 2024)*

A 2024 study published in _PNAS_ provided the most detailed characterization of T cell exhaustion in ME/CFS to date @iu2024tcell_exhaustion. Using transcriptomic and epigenetic profiling, Iu et al.\ demonstrated that CD8+ T cells from ME/CFS patients undergo extensive reprogramming toward an exhausted phenotype.

==== Key Findings

    - *Elevated PD-1 expression*: Confirmed at both protein and transcriptional levels
    - *Transcriptional reprogramming*: Gene expression patterns characteristic of chronic antigenic stimulation
    - *Epigenetic modifications*: Persistent chromatin changes indicating long-term immune activation rather than transient response
    - *Similarity to chronic infections*: The exhaustion profile resembled that seen in chronic viral infections (HIV, hepatitis C) and cancer

==== Implications
The epigenetic nature of these changes suggests that T cell exhaustion in ME/CFS is not merely a snapshot of current immune activation but represents a durable reprogramming of immune cell function. This has several implications:

    - *Chronicity*: The epigenetic changes may explain why immune dysfunction persists even if the initial trigger resolves
    - *Impaired viral control*: Exhausted T cells cannot effectively clear viruses, potentially permitting herpesvirus reactivation
    - *Therapeutic targets*: Immune checkpoint inhibitors (anti-PD-1, anti-CTLA-4) used in cancer might theoretically restore T cell function, though safety in ME/CFS is unknown
    - *Biomarker potential*: T cell exhaustion markers could serve as diagnostic or prognostic indicators

==== Integration with NIH Deep Phenotyping Study
The Iu et al.\ findings complement the Walitt et al.\ NIH study @walitt2024deep, which also documented elevated CD8+ T cell PD-1 expression. Together, these studies consistently document T cell exhaustion as a reproducible feature of ME/CFS immunopathology, supporting the model of chronic antigenic stimulation driving both B cell (naïve/memory imbalance) and T cell (exhaustion) abnormalities.

// Insert Figure: Normal Immune Response
#include "../figures/fig-immune-normal.typ"

// Insert Figure: ME/CFS Immune Dysfunction
#include "../figures/fig-immune-mecfs.typ"

Figures @fig:immune-normal and @fig:immune-mecfs illustrate the paradoxical immune state in ME/CFS—simultaneously overactive and underactive. Two interconnected vicious cycles drive disease: chronic inflammation (IDO activation, energy deficit, poor pathogen control) and immune exhaustion (T-cell/NK dysfunction, failed clearance). These cycles reinforce each other. The integration of these immune-specific vicious cycles with metabolic and autonomic cycles is examined in Section @sec:unifying-mechanisms of Chapter @ch:integrative-models.

#limitation(title: [T Cell Exhaustion: Chronic Stimulation Source Unknown])[
T cell exhaustion markers (PD-1, Tim-3, CTLA-4) in ME/CFS resemble those seen in chronic viral infections and cancer. However, the antigenic source driving this exhaustion has not been identified. The exhaustion profile is _consistent with_ chronic antigenic stimulation but does not establish what the antigen is (persistent virus, autoantigen, or metabolic danger signal). Without identifying the driver, the therapeutic implication that checkpoint inhibitors might help remains speculative and carries substantial autoimmune risk.
]

#hypothesis(title: [CD8+ T-cell Exhaustion as a Downstream Consequence of Exosomal EV Cargo Rather than Antigen-Driven])[


*(Certainty: 0.45 — T-cell exhaustion documented at epigenetic level in a single scRNA-seq study (n = 28/30; unreplicated); EV-cargo mechanism remains mechanistic inference from Ewing sarcoma.)*

CD8+ T-cell exhaustion in ME/CFS has been documented in a single unreplicated scRNA-seq study. Iu et al.\  showed by scRNA-seq and ATAC-seq (n = 28 ME/CFS, 30 controls) that CD8+ effector memory T cells carry epigenetically locked exhaustion programs: TBX21/EOMES transcription factor upregulation, TCF7 chromatin closure (the hallmark of terminal exhaustion), and reduced cytotoxic gene expression. Critically, PD-L1/2 and CD86 were upregulated on ME/CFS monocytes — pointing to an immunosuppressive myeloid cell as the immediate suppressor, consistent with the MDSC hypothesis @hyp:mdsc-nk-bridge. Eaton-Fitch et al.\  confirmed shared PD-1/CTLA-4 checkpoint gene dysregulation in both ME/CFS and Long COVID (n = 14/15/18), with ME/CFS showing the more suppressed and Long COVID the more activated exhaustion phenotype.

Standard accounts assume chronic antigenic stimulation as the upstream driver, but no consistent antigen has been identified in ME/CFS. An alternative mechanism emerges from Evdokimova et al.\ : exosomal uptake of HSAT2/HERV-K RNA by CD8+ T-cells directly induces the exhaustion phenotype (CD8+CD25+PD-1+) independently of antigen presentation. The PD-L1 upregulation on monocytes observed by Iu et al.\ is mechanistically consistent with an MDSC-like myeloid cell driving checkpoint-mediated T-cell suppression. This would reframe PD-1 upregulation and exhaustion in ME/CFS as a consequence of exosomal cargo programming rather than a marker of chronic antigen exposure.

This matters therapeutically: if exhaustion is antigen-driven, the antigen must be eliminated to reverse it. If exhaustion is EV-cargo-driven, removing or blocking the offending EVs could restore T-cell function without requiring pathogen identification. Checkpoint inhibitors (anti-PD-1) would provide temporary symptomatic relief at best, with exhaustion returning as long as the exosomal loop persists.

*Falsifiable prediction:* Plasma EV HSAT2 levels will correlate with CD8+ T-cell PD-1 expression longitudinally within individuals (within-subject r > 0.5 across ≥ 6 timepoints). EV depletion from patient plasma (size-exclusion filtration) before incubation with healthy CD8+ T-cells will abolish or reduce the PD-1 induction compared to unfiltered plasma. If PD-1 induction requires antigen-presenting cells rather than direct EV uptake, antigen-driven exhaustion remains more likely. The epigenetic TCF7 closure (Iu 2024) could be tested for reversibility by EV removal.

*Limitations:* The EV-cargo mechanism was demonstrated in vitro with high EV concentrations from Ewing sarcoma cells; whether chronic low-level ME/CFS EVs produce the same phenotype is unknown. The Iu 2024 PD-L1 finding is on monocytes, not specifically CD33+HLA-DR− MDSCs. The antigen-driven and EV-cargo-driven models are not mutually exclusive — both could contribute. Replication: exhaustion confirmed (Iu 2024, Eaton-Fitch 2024); EV mechanism not replicated in any chronic disease context.
] <hyp:tcell-exhaust-ev-downstream>

#speculation(title: [PD-L1-High Monocytes in ME/CFS as the M-MDSC Compartment Under a Different Gate])[


*(Certainty: 0.40 — phenotypic overlap is mechanistically plausible; direct MDSC gating of the Iu 2024 cohort not yet performed.)*

Iu et al.\  identified PD-L1/2-upregulated monocytes as the proximate suppressor of CD8+ T-cell cytotoxicity in ME/CFS. Monocytic MDSCs (M-MDSCs) are defined as CD33+HLA-DR−/lo CD14+ monocytes  — a phenotypically suppressive myeloid population that constitutively upregulates PD-L1 as part of their exhaustion-inducing program. The Iu 2024 "PD-L1-high monocyte" gate and the canonical "CD33+HLA-DR−/lo" M-MDSC gate may describe the same or substantially overlapping cell population using different flow cytometry panels.

If so, the M-MDSC compartment has already been implicitly identified in ME/CFS by Iu et al.\ — simply without MDSC nomenclature. This would: (a) provide the first indirect evidence for M-MDSC expansion in ME/CFS; (b) connect the checkpoint-mediated CD8 exhaustion finding to the HSAT2-exosome-MDSC mechanistic framework @spec:hsat2-exosome-mdsc; and (c) explain why PD-L1 expression on monocytes tracks with ME/CFS severity — it is not an independent suppressive mechanism but a phenotypic readout of MDSC-like monocyte activation.

*Falsifiable prediction:* Re-staining the Iu 2024 cohort PBMC samples with the EuroFlow MDSC panel (CD33, HLA-DR, CD14, CD15) will show ≥ 60% phenotypic overlap between the PD-L1-high monocyte gate and the CD33+HLA-DR−/lo M-MDSC gate. If the two populations are phenotypically distinct (< 30% overlap), they represent separate suppressive mechanisms.

*Limitations:* The Iu 2024 panel did not include HLA-DR or CD33 specifically for MDSC gating; retrospective analysis would require stored samples. PD-L1 upregulation on monocytes occurs in many contexts (LPS, IFN-γ, complement activation) independent of MDSC biology; the overlap is phenotypic rather than functional. Not replicated; this is a testable retroactive hypothesis.
] <spec:pd-l1-mdsc-overlap>
Two recent single-cell transcriptomic studies strengthen the T cell exhaustion
finding.  Mayer et al.\ (2025) constructed a scRNA-seq atlas of 336,269
T lymphoid cells from 28 ME/CFS patients and 30 controls, demonstrating
transcriptional reprogramming of CD8+ T cells toward exhaustion that is
amplified by exercise provocation @Mayer2025Tcellexhaustion
(Appendix @app:research-registry,
Section @sec:registry-tcell-exhaustion).  Elahi et al.\ (2026) applied
scRNA-seq to long COVID–ME/CFS patients 12 months post-infection, finding
persistent immune remodeling—monocyte polarization, NK cell dysfunction,
and T cell exhaustion—absent in recovered
individuals @Elahi2026singlecell
(Section @sec:registry-elahi-singlecell).  Cell-free RNA profiling
by Gardella et al.\ (2025) independently detected T cell exhaustion
signatures in plasma cfRNA, confirming these findings via an orthogonal
method @Gardella2025cfRNA
(Section @sec:registry-cfrna).

Comparative virology provides indirect support for the viral persistence hypothesis. Kol et al.\ (2026) demonstrated that feline infectious peritonitis virus (FIPV), a naturally occurring coronavirus in cats, replicates not only in macrophages but also in B and T lymphocytes within mesenteric lymph nodes . Critically, rare FIPV RNA-positive lymphocytes persisted after antiviral treatment and full clinical recovery, suggesting that long-lived immune cells serve as viral reservoirs. Because lymphocytes can survive for years, this reservoir may explain relapse and chronic immune dysregulation. FIPV offers a unique comparative model: unlike human studies, where accessing infected lymphoid tissue is ethically and practically difficult, feline FIP permits direct examination of coronavirus–immune cell interactions in naturally infected tissue. While FIPV is not SARS-CoV-2, the shared coronavirus biology—tropism for immune cells, persistence despite apparent clearance, and post-treatment relapse—strengthens the plausibility that analogous mechanisms operate in post-COVID ME/CFS.

#speculation(title: [Lymphocyte Reservoir Ratchet])[

*Certainty: 0.35.* Mechanistically plausible and supported by comparative virology (FIP model), but no direct human data yet demonstrates SARS-CoV-2 or other ME/CFS-triggering virus persistence specifically within lymphocytes. The hypothesis extends the Ratchet Model (Speculation @spec:infection-damage-ratchet) with a specific reservoir mechanism.

The Kol et al.\ (2026) demonstration that FIPV persists in B and T lymphocytes after antiviral treatment  suggests a mechanism distinct from classical viral latency: triggering viruses may reside within long-lived immune cells themselves, below conventional PCR detection thresholds but sufficient to drive chronic immune activation. Because memory lymphocytes survive for years to decades, even a small fraction of virus-harbouring cells constitutes a persistent antigenic reservoir.

*Mechanism.*
Unlike classical latency (e.g., EBV in B cells, where the viral genome is silenced), this model proposes low-level active or semi-active viral transcription within circulating lymphocytes. Each time these cells are activated by any immune challenge—a new infection, vaccination, allergen exposure, or even exercise-induced immune mobilization—viral antigen is re-presented, triggering localized immune activation without classical “reactivation.” This would explain why PEM can follow diverse immune stimuli, not only physical exertion.

*Testable Predictions.*

    - Single-cell RNA sequencing of peripheral blood mononuclear cells from post-COVID ME/CFS patients will detect viral transcripts in a small percentage ($<$1%) of lymphocytes, below bulk PCR sensitivity but detectable at single-cell resolution.
    - The fraction of virus-positive lymphocytes will correlate with disease severity and duration.
    - In vitro activation of ME/CFS patient lymphocytes will produce detectable viral antigen release, while resting cells will not.
    - Patients who recover from ME/CFS will show clearance of lymphocyte-associated viral RNA, while non-recoverers will retain it.

*Falsifiability.*
This hypothesis would be falsified if ultra-sensitive single-cell methods (10x Genomics, MERFISH) applied to ME/CFS patient lymphocytes consistently fail to detect viral transcripts across multiple triggering virus types and patient cohorts. It would also be weakened if lymphocyte depletion therapies (e.g., rituximab targeting B cells) show no effect on viral antigen levels, since the model predicts B cells as a primary reservoir.

*Relationship to the Ratchet Model.*
This hypothesis provides a specific cellular mechanism for the “viral reactivation and persistent viral load” arm of the Ratchet Model (Speculation @spec:infection-damage-ratchet). The Ratchet Model describes the clinical pattern (step-wise decline); this hypothesis explains _where_ the virus hides between steps.

*Treatment Implications.*
If confirmed, treatment would require either (a) antiviral therapy sustained long enough to outlast the lifespan of virus-harbouring lymphocytes (potentially years), (b) targeted depletion of the harbouring cell population, or (c) metabolic support enabling immune cells to clear the reservoir autonomously (see Hypothesis @hyp:immune-energy-starvation-niche).

*Limitations.*
Cross-species extrapolation from FIP to human disease requires caution: FIPV and SARS-CoV-2 differ in receptor usage, tropism breadth, and host immune biology. The “below PCR threshold” claim is currently unfalsifiable with standard methods—only emerging single-cell technologies can test it. The model does not explain non-viral-onset ME/CFS.
] <spec:lymphocyte-reservoir-ratchet>

==== T Cell Metabolic Dysfunction

As discussed in Chapter @ch:energy-metabolism, mitochondrial dysfunction in ME/CFS is not limited to muscle and nervous system—it extends to immune cells themselves. Mandarano et al.\ (2020) provided the first comprehensive metabolic analysis of T cells in ME/CFS (n=53 patients, n=45 controls), demonstrating that immune dysfunction has a fundamental bioenergetic basis .

*CD8+ T Cell Metabolic Deficits*
CD8+ cytotoxic T cells showed the most severe impairment: reduced mitochondrial membrane potential (indicating mitochondrial dysfunction), impaired glycolysis at rest, and crucially, failed metabolic reprogramming following activation. Healthy T cells switch from oxidative phosphorylation to glycolysis when activated (the Warburg effect), but ME/CFS CD8+ T cells cannot make this transition effectively .

*CD4+ T Cell Abnormalities*
CD4+ helper T cells also demonstrated reduced glycolysis at rest, though their activation response was less severely impaired than CD8+ cells. This suggests a hierarchy of metabolic dysfunction, with cytotoxic cells more vulnerable than helper cells .

*Clinical Implications*
T cell metabolic dysfunction may provide a mechanistic explanation for several observations: reduced CD8+ cytotoxic function (Brenu et al.\ 2011 @Brenu2011) could result from insufficient ATP to sustain degranulation and target killing, though direct causation has not been experimentally demonstrated; impaired proliferation following stimulation may reflect inability to meet the energetic demands of cell division; and post-exertional malaise may be exacerbated by immune activation, as metabolically compromised immune cells compete with other tissues for limited ATP. This finding bridges the energy metabolism (Chapter @ch:energy-metabolism) and immune dysfunction chapters, demonstrating that ME/CFS is characterized by systemic bioenergetic failure affecting all cellular systems.

==== Regulatory T Cell Dysfunction

Tregs maintain immune tolerance and prevent autoimmunity. ME/CFS patients show reduced numbers of Tregs (CD4#super[+]CD25#super[+]FoxP3#super[+] cells) with impaired suppressive function @Brenu2012miRNA . Altered Treg/effector T cell ratios may potentially contribute to the autoimmune features observed in some patients.

==== Sex-Specific T Cell Findings from the NIH Study

The Walitt et al.\ deep phenotyping study revealed striking sex differences in T cell abnormalities @walitt2024deep:

*Male Patients*
Men with PI-ME/CFS demonstrated:

    - Altered T cell activation patterns
    - Changes in markers of innate immunity
    - Distinct inflammatory signatures compared to female patients

These findings suggest that immune pathophysiology may differ fundamentally between sexes, with implications for treatment approaches.

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
The foundational study by Loebel et al.\ (2016) established the presence of GPCR autoantibodies in ME/CFS . In a cohort of 268 ME/CFS patients, 29.5% had elevated autoantibodies against $beta_2$-adrenergic, M3 muscarinic, or M4 muscarinic receptors compared to healthy controls. This study provided the first systematic evidence that receptor-targeting autoantibodies might contribute to ME/CFS pathophysiology.

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
]

==== Passive Transfer Evidence: IgG Pathogenicity Established in Animal Models
<sec:passive-transfer-igg>

The causal question—do autoantibodies actually cause symptoms, or are they bystander products of immune dysregulation?—has been partially answered by passive transfer experiments in three independent research groups.

#achievement(title: [IgG Passive Transfer Reproduces Pain Sensitization: Three Independent Groups])[
Three independent groups (2021--2026) have demonstrated that purified IgG from patients with fibromyalgia or long COVID reproduces peripheral pain sensitization when transferred to mice, establishing that circulating IgG is sufficient to cause this symptom cluster:

    - *Goebel et al.\ (2021)* --- fibromyalgia IgG ($n=8$ patients) produced mechanical and cold hypersensitivity, reduced locomotion, and reduced grip strength in recipient mice @Goebel2021passiveTransferFM. IgG accumulated in dorsal root ganglia (DRG) and activated satellite glial cells (SGC). IgG-depleted serum had no effect, confirming the immunoglobulin fraction as the active component.
    - *Mignolet et al.\ (2026)* --- long COVID IgG ($n=13$ patients; Université de Namur / CHU Liège) produced transient mechanical allodynia and thermal hyperalgesia in recipient mice @Mignolet2026passiveTransferLC. IgG accumulated in lumbar DRG colocalising with nociceptive and proprioceptive neurons. Critically, no cognitive impairment, anxiety, neuroinflammation, or astrogliosis was observed.
    - *Chen et al.\ (2026)* --- pooled long COVID IgG (UMC Utrecht / Amsterdam UMC) produced pronounced, persistent mechanical hypersensitivity @Chen2026igGLongCOVID. IgG from the same patients 2 years later (still symptomatic) reproduced allodynia, demonstrating that pathogenic IgG persists for at least 2 years in symptomatic patients.

Effect was abolished by IgG depletion in all studies; Fc-fragment digestion (papain) further confirmed Fc-region-dependent effector function in Mignolet 2026 @Mignolet2026passiveTransferLC. These controls confirm that the immunoglobulin fraction is the active component. The target tissue in all three studies is the dorsal root ganglion --- the sensory neuron soma cluster peripheral to the blood-brain barrier --- rather than the central nervous system.

Study: (three independent passive transfer studies, 2021--2026, two post-viral cohorts + one fibromyalgia; certainty: 0.60, partially replicated).
] <ach:passive-transfer-pain>

#hypothesis(title: [Peripheral IgG--DRG Axis: Pain Without Neuroinflammation])[
The passive transfer triad supports a peripheral mechanism for IgG-mediated pain: circulating IgG accesses dorsal root ganglia, binds nociceptive and proprioceptive neuron somata, and sensitises peripheral afferents without requiring central neuroinflammation or gliosis.

This model provides a mechanistic account of pain hypersensitivity in long COVID and potentially ME/CFS that is:

    - Independent of central sensitization (Mignolet 2026: no astrogliosis, no cognitive effects)
    - Dependent on intact Fc-region function (abolition by papain digestion)
    - Consistent with small fiber neuropathy findings in ME/CFS (see @sec:sfn)
    - Consistent with the non-length-dependent SFN pattern indicating DRG-level pathology @McAlpine2024sfnCOVID

The dissociation between pain transfer (consistent across studies) and cognitive transfer (absent in Mignolet 2026; present for balance/coordination in Santos Guedes 2024) suggests that brain fog in long COVID and ME/CFS may not share the same peripheral IgG pathway as pain sensitization, or that longer observation windows or different antigens are required.

*Testable prediction:* ME/CFS patients with prominent pain and allodynia should show higher DRG-binding IgG by ex vivo staining of post-mortem ganglia than ME/CFS patients with predominantly fatigability and cognitive phenotypes. DRG-binding IgG levels should correlate with intraepidermal nerve fiber density (IENFD) reduction on skin biopsy.

*Treatment implication:* If pain is IgG-mediated via DRG targeting, therapies removing or neutralising IgG (immunoadsorption, IVIG, plasmapheresis) should preferentially benefit pain-predominant ME/CFS patients. Single-course apheresis may not suffice given 2-year IgG persistence (Chen 2026).

*Limitation:* Primary antibody targets in DRG remain uncharacterized in all three studies. The Germain 2025 null finding (n=172; no autoantibody signal on 7,542-antigen REAP+Luminex panel)  may indicate that DRG-binding IgG targets conformational or intracellular epitopes not captured by standard antigen arrays. Subgroup heterogeneity is expected: not all ME/CFS patients necessarily carry DRG-binding IgG.

Study: (mechanistic synthesis across three passive transfer studies; certainty: 0.45, peripheral targeting established, antigen identity unknown, ME/CFS-specific evidence indirect).
] <hyp:drg-igg-pain-axis>

#hypothesis(title: [DRG-IgG as Afferent-Gain Amplifier: A Peripheral Mechanism for PEM])[
The dissociation between IgG-transferred pain and absent cognitive effects in mice (Mignolet 2026 @Mignolet2026passiveTransferLC) suggests that DRG-bound IgG may function as an *afferent-gain amplifier*: by sensitising nociceptive and proprioceptive neurons below their normal activation thresholds, it causes normal interoceptive signals from exercising muscle (lactate, H+, ATP, bradykinin) to be over-reported to brainstem and hypothalamus, generating exaggerated sickness behavior, autonomic switching, and fatigue signaling — without central neuroinflammation.

Under this model, the hallmark ME/CFS feature of post-exertional malaise (PEM) reflects not a failure of central energy generation but a peripheral afferent overdrive that is amplified by IgG-mediated DRG sensitization. Autonomic symptoms (POTS, orthostatic intolerance) may also arise from over-reporting by afferents in cardiovascular and baroreceptor circuits.

*Testable prediction:* Quantitative sensory testing (QST) thresholds at baseline and after standardized exertion should show greater drops in IgG-DRG-positive ME/CFS patients than in IgG-DRG-negative patients. Microneurography (C-fiber spontaneous discharge frequency) should correlate with PEM severity within patients.

*Treatment implication:* If PEM is partly afferent-gain-mediated, therapies reducing DRG-bound IgG (immunoadsorption, IVIG, FcRn antagonists) should attenuate PEM frequency and severity, not just pain scores. Strict pacing reduces the afferent overdrive stimulus; IgG-reduction reduces the gain — they should be complementary.

*Limitation:* Mice cannot report fatigue verbally; whether the passive-transfer model produces PEM-equivalent energy limitation is unknown and requires specialized behavioral assays (forced swim, running wheel after standardized exertion). The ME/CFS-specific applicability of the long COVID passive transfer model remains to be established by direct experiments in ME/CFS-derived IgG.

Study: (cross-paper synthesis, Mignolet 2026 + McAlpine 2024 + interoception literature; certainty: 0.45, coherent mechanistic hypothesis but untested in ME/CFS-specific passive transfer; partially supported).
] <hyp:drg-igg-pem-amplifier>

#hypothesis(title: [Two-Compartment ME/CFS: Peripheral IgG--DRG Axis Versus Central Brain-Fog Mechanism])[
The cognitive sparing in the Mignolet 2026 passive transfer model @Mignolet2026passiveTransferLC provides a mechanistic argument for a *two-compartment disease* structure: (1) a peripheral compartment in which circulating IgG accesses and sensitises DRG via the leaky fenestrated capillaries of ganglia (outside the blood-brain barrier), driving pain, autonomic dysfunction, and PEM; and (2) a central compartment in which brain-fog and cognitive symptoms arise from non-IgG mechanisms (endothelial mitochondrial damage @Liu2026IgGcomplexes, microglial activation, astrocytic energy failure, or HPA-axis disruption).

Under this model, treatments that remove IgG (immunoadsorption, IVIG, FcRn antagonists) should preferentially improve sensory-autonomic-PEM phenotypes but not cognitive symptoms, while treatments targeting central mechanisms (anti-neuroinflammatory, BH4-restoration, HPA normalization) should preferentially improve cognition. Pooling cognitive-dominant and sensory-dominant phenotypes in undifferentiated ME/CFS trials will dilute treatment-response signals.

*Testable prediction:* In an IVIG or efgartigimod trial stratified by cognitive vs sensory-autonomic phenotype, sensory-autonomic patients show $gt.eq 30%$ improvement on pain and autonomic measures but $lt 10%$ on cognitive measures, while cognitive-dominant patients show the reverse pattern.

*Treatment implication:* ME/CFS clinical trials should stratify enrolment by phenotype (pain/autonomic vs cognitive) and report co-primary endpoints. Expecting IgG-targeted therapies to resolve brain fog would be a design failure.

*Limitation:* This is a parsimonious interpretation of limited mouse data. Some patients may have mixed phenotypes. The degree of IgG compartmentalisation may vary with BBB integrity (trauma, infection, stress), which is not fixed. Whether cognitive symptoms in ME/CFS ever arise from IgG acting via circumventricular organs (area postrema, subfornical organ — which also lack a tight BBB) is unexplored.

Study: (mechanistic inference from Mignolet 2026 cognitive-sparing finding; certainty: 0.50, two-compartment structure parsimonious but untested; no direct ME/CFS phenotype-stratified trial evidence yet).
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

#open-question(title: [DRG-IgG Immunohistochemistry as a Stratification Biomarker])[
A practical near-term research priority is to develop and validate a DRG-IgG immunohistochemistry (IHC) assay: patient serum or IgG fraction applied to fixed rodent DRG sections, stained with fluorescent anti-human IgG, and scored for binding intensity, spatial pattern (neuronal soma vs satellite glial cells), and co-localization with neuronal markers (CGRP for peptidergic C-fibers, IB4 for non-peptidergic C-fibers, NF200 for Aδ fibers).

Such an assay, if standardized, could:
    - Classify ME/CFS patients as IgG-DRG-positive vs IgG-DRG-negative to enrich clinical trials
    - Correlate IgG-DRG positivity with IENFD (skin biopsy), QST profiles, and autonomic test abnormalities
    - Serve as a pharmacodynamic biomarker: change in IgG-DRG intensity before/after immunoadsorption or FcRn antagonism
    - Provide retrospective stratification of existing trial datasets (Stein 2025, Fluge 2025, EXTINCT)

The passive transfer triad (Goebel 2021, Mignolet 2026, Chen 2026) already uses this methodology; translation to a clinical biomarker assay requires standardization and validation in a prospective cohort.
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

== Immunosenescence and Accelerated Immune Aging
<sec:immunosenescence-aging>

The immune abnormalities documented in the preceding sections---NK cell dysfunction, T cell exhaustion, B cell skewing, altered dendritic cell function---individually mirror features of normal immune aging (immunosenescence). This section examines whether ME/CFS involves premature or accelerated immunosenescence and introduces the molecular pathway linking mitochondrial damage to sustained innate immune activation.

=== Evidence for Accelerated Immune Aging in ME/CFS

Rajeevan et al.\ (2018) measured leukocyte telomere length in 639 CFS patients (Wichita and Georgia cohorts, Fukuda criteria) and found telomeres 957 bp shorter than age-matched controls---equivalent to 10.1--20.5 years of additional biological aging ($p = 0.0017$) @Rajeevan2018telomere. The effect was largest in females under 45, the demographic with highest ME/CFS prevalence. Telomere shortening was independent of depression, BMI, and other confounders. This remains the largest study of biological aging markers in ME/CFS.

Luo et al.\ (2025) provide a framework connecting immunosenescence to ME/CFS physical fatigue through chronic inflammation $arrow.r$ mitochondrial ATP failure $arrow.r$ muscle catabolism @Luo2025MECFSimmunophysiology. They propose that $beta_2$-adrenergic receptor dysfunction amplifies this cascade: sympathetic signaling normally modulates immune cell activation, but desensitized $beta_2$-AR allows unchecked immune activation and SASP cytokine production (IL-6, TNF-$alpha$, MCP-1). The senescence-associated secretory phenotype (SASP) sustains fatigue through direct metabolic effects on skeletal muscle.

Xu et al.\ (2026) extend this framework to cognitive dysfunction via an immune-vascular-cognitive axis: immunosenescence impairs endothelial NO synthesis and cerebral blood flow regulation, producing brain hypoperfusion and blood-brain barrier compromise @Xu2026immunosenescenceCognitive. This mechanism may explain why brain fog severity in ME/CFS correlates poorly with peripheral inflammatory markers (Chapter @ch:neurological) but strongly with central metabolic dysfunction---the immunosenescence effect operates through vascular intermediaries rather than direct cytokine signaling.

#limitation(title: [Immunosenescence Evidence Remains Indirect])[
Telomere shortening @Rajeevan2018telomere is a cross-sectional finding using Fukuda criteria (less specific than ICC/CCC). Newer epigenetic aging clocks have not been applied to large ME/CFS cohorts (see Chapter @ch:genetics-epigenetics Section @sec:epigenetics). Immunosenescence as a framework @Luo2025MECFSimmunophysiology @Xu2026immunosenescenceCognitive is review-level synthesis, not original experimental data. The temporal relationship is unknown: immune aging could be cause, consequence, or parallel effect of ME/CFS pathophysiology.
]

=== The mtDNA--cGAS-STING Inflammaging Pathway
<sec:mtdna-cgas-sting>

A critical molecular bridge between the mitochondrial dysfunction documented in Chapter @ch:energy-metabolism and the immune activation described above is the cGAS-STING pathway. Kim et al.\ (2023) review the mechanisms by which damaged mitochondrial DNA escapes into the cytosol and activates innate immune signaling @Kim2023cGASSTING.

The pathway operates through VDAC oligomerisation: when mitochondria are stressed (by ROS, calcium overload, or membrane potential loss), voltage-dependent anion channels (VDAC1) oligomerise to form pores in the outer mitochondrial membrane large enough for mtDNA fragments to escape. Once in the cytosol, mtDNA binds cyclic GMP-AMP synthase (cGAS), which produces the second messenger 2'3'-cGAMP. cGAMP activates stimulator of interferon genes (STING), triggering type I interferon production and NF-$kappa$B-dependent pro-inflammatory gene expression @Kim2023cGASSTING.

Crucially, oxidised mtDNA (a product of mitochondrial ROS) also activates the NLRP3 inflammasome, producing IL-1$beta$ and IL-18 @Kim2023cGASSTING. VDAC inhibition (by DIDS or VBIT-4) mitigates both pathways in preclinical models, suggesting a druggable bottleneck.

In the ME/CFS context, this pathway provides a mechanistic link from sympathetic overdrive (documented in Chapter @ch:cardiovascular) to sustained innate immune activation:

+ Chronic sympathetic tone $arrow.r$ NADPH oxidase activation $arrow.r$ elevated mitochondrial ROS .
+ ROS damage $arrow.r$ mtDNA mutations and strand breaks $arrow.r$ VDAC oligomerisation $arrow.r$ mtDNA escape.
+ Cytosolic mtDNA $arrow.r$ cGAS-STING $arrow.r$ type I IFN + NF-$kappa$B $arrow.r$ sustained inflammaging.
+ Oxidised mtDNA $arrow.r$ NLRP3 $arrow.r$ IL-1$beta$ $arrow.r$ sickness behavior, fatigue.

This chain connects the autonomic aging phenotype (Section @sec:ans-aging-phenotype of Chapter @ch:cardiovascular) to the innate immune findings documented earlier in this chapter.

#speculation(title: [The mtDNA--cGAS-STING Loop as a Chronicity Mechanism in ME/CFS])[
*Certainty: 0.40.* If mitochondrial damage in ME/CFS continuously releases mtDNA fragments that activate cGAS-STING, this creates a self-reinforcing loop: inflammation $arrow.r$ mitochondrial damage $arrow.r$ mtDNA release $arrow.r$ more inflammation. The loop would maintain chronic immune activation even after the initial trigger (viral infection, autonomic crisis) resolves. Circulating cell-free mtDNA has been measured in Long COVID (Matits et al.\ 2026, Section @sec:cfmtdna-mitophagy of Chapter @ch:energy-metabolism) but not alongside cGAS-STING activation markers in the same ME/CFS cohort.

*Testable predictions:* (a) Circulating mtDNA levels should correlate with STING phosphorylation and IRF3 activation in ME/CFS PBMCs. (b) Improvements in mitochondrial quality control (via mitophagy enhancement or reduced ROS) should decrease interferon-stimulated gene (ISG) expression. (c) STING inhibitors (H-151, currently preclinical) should reduce both inflammatory markers and fatigue severity in ME/CFS patients with elevated cGAS-STING signaling.

*Limitation:* The cGAS-STING pathway is well-established in preclinical models @Kim2023cGASSTING but has not been directly measured in ME/CFS patients. The connection from sympathetic overdrive to mtDNA release is mechanistically plausible but builds on the theoretical ANS-aging framework  rather than direct experimental data. Not yet replicated in ME/CFS.
] <spec:mtdna-cgas-sting-loop>

== Cytokines and Inflammatory Mediators
<sec:cytokines>

Cytokines are signaling proteins that coordinate immune responses. Cytokine abnormalities in ME/CFS have been extensively studied, though findings vary considerably across studies.

=== Pro-inflammatory Cytokines
<sec:pro-inflammatory>

==== Interleukin-1 (IL-1)

IL-1 is a master regulator of inflammation, with IL-1$beta$ often elevated in ME/CFS. Its effects include fever, fatigue, muscle breakdown, and the acute phase response. Notably, IL-1 produces “sickness behavior” in the central nervous system that closely resembles ME/CFS symptoms, and levels may correlate with symptom severity.

==== Interleukin-6 (IL-6)

IL-6 has both pro- and anti-inflammatory effects and is frequently elevated in ME/CFS, particularly in early illness. This cytokine induces acute phase proteins, promotes B cell differentiation, and crosses the blood-brain barrier to affect central nervous system function. IL-6 correlates with fatigue in other conditions, suggesting a mechanistic link to this cardinal ME/CFS symptom.

==== Tumor Necrosis Factor-Alpha (TNF-$alpha$)

TNF-$alpha$ is a central inflammatory cytokine elevated in some ME/CFS studies. It causes fatigue, malaise, and cognitive dysfunction while also affecting mitochondrial function and promoting muscle wasting (cachexia). Variable findings across studies may reflect patient heterogeneity within the ME/CFS population.

==== Interferons

Type I interferons (IFN-$alpha$, IFN-$beta$) are antiviral cytokines elevated in some ME/CFS patients. These interferons cause profound fatigue (as known from their therapeutic use in other conditions) and may indicate ongoing viral activation. Interferon-induced gene expression patterns have been observed in ME/CFS. Type II interferon (IFN-$gamma$) activates macrophages and promotes Th1 responses, though findings in ME/CFS are variable; levels may be elevated or reduced depending on disease stage.

==== Interleukin-2 (IL-2)

IL-2 is a critical cytokine for T cell function and immune regulation:

    - *T cell proliferation*: Essential for clonal expansion of activated T cells
    - *Regulatory T cell maintenance*: Required for Treg development and suppressive function
    - *NK cell activation*: Enhances NK cell cytotoxicity
    - *Memory T cell formation*: Supports long-term immunity
    - *Therapeutic use*: Low-dose IL-2 used in autoimmune diseases to boost Tregs; high-dose IL-2 used in cancer immunotherapy

IL-2 signaling requires three receptor subunits (CD25/CD122/CD132) and activates JAK/STAT pathways. Dysregulation can lead to either immune deficiency (insufficient IL-2 or receptor expression) or autoimmunity (Treg dysfunction). Recent evidence suggests IL-2 pathway abnormalities in ME/CFS (see hypothesis below).

==== Cytokine Patterns Across Disease Duration

#achievement(title: [Duration-Dependent Cytokine Signatures])[
Hornig et al.  identified distinct immune signatures in ME/CFS that vary dramatically by disease duration. In a cohort of 298 ME/CFS patients and 348 healthy controls, early-stage patients (illness duration $<$3 years, n=52) showed prominent activation of both pro- and anti-inflammatory cytokines, with elevated levels of IL-1$alpha$, IL-8, IL-10, IL-12p40, IL-17F, IFN-$gamma$, CXCL1 (GRO-$alpha$), CXCL9 (MIG), and IL-5 (all p$<$0.05, FDR-corrected). A 17-cytokine panel distinguished early ME/CFS from controls with high diagnostic accuracy.

In stark contrast, patients with longer disease duration ($>$3 years, n=246) had cytokine profiles that normalized to control levels, with no significant differences for most cytokines. This finding represents the first large-scale evidence that ME/CFS immunopathology evolves over time, potentially from initial immune activation to exhaustion or adaptation.
] <ach:cytokine-duration>

#warning-env(title: [Replication Status])[
Single study (Hornig 2015, n=298 total, but only n=52 in the critical early-stage subgroup). The duration-dependent pattern has not been independently replicated. The small early-stage sample limits confidence in the 3-year inflection point. Cross-sectional design cannot distinguish true longitudinal evolution from cohort effects. Longitudinal studies tracking individual patients over time are needed.
]

*Implications of Duration-Dependent Cytokine Changes*

The Hornig et al.\ findings have profound implications:

    - *Therapeutic windows*: Early-stage disease may respond better to immunomodulatory therapies targeting active inflammation
    - *Study heterogeneity*: Failure to stratify by disease duration explains contradictory findings in previous cytokine studies
    - *Biomarker utility*: Cytokine profiling is most useful as a diagnostic tool within the first 3 years of illness
    - *Disease progression*: Normalization may reflect immune exhaustion, regulatory adaptation, or shift to different pathological mechanisms

Hornig et al.\ found that illness duration was more strongly predictive of cytokine patterns than symptom severity in their cross-sectional analysis, suggesting that immune changes primarily reflect disease stage . However, this group-level observation does not preclude severity-related gradients within early-stage or late-stage patients (see following section).

==== Cytokine-Severity Correlations

#achievement(title: [Cytokine-Severity Biomarker Panel])[
Montoya et al.  demonstrated dose-response relationships between cytokines and symptom severity in 192 ME/CFS patients compared to 392 healthy controls. Although only two cytokines differed overall between patients and controls (TGF-$beta$ higher and resistin lower), 17 cytokines showed statistically significant upward linear trends correlating with disease severity. Thirteen of these 17 are proinflammatory, including CCL11 (Eotaxin-1), CXCL1 (GRO-$alpha$), CXCL10 (IP-10), IFN-$gamma$, IL-4, IL-5, IL-7, IL-12p70, IL-13, IL-17F, G-CSF, GM-CSF, and TGF-$alpha$.

This dose-response relationship—rather than simple binary patient-control comparison—provides stronger evidence that immune activation tracks with symptom burden. The findings suggest cytokine profiling could stratify patients for clinical trials and identify individuals likely to benefit from anti-inflammatory therapies.
] <ach:cytokine-severity>

#warning-env(title: [Replication Status: Partially Replicated])[
The cytokine-severity correlation pattern is directionally consistent with Hornig 2015's findings, providing convergent support from a different analytic approach. However, specific cytokine identities differ between studies, and neither has been independently replicated with the same panel and methodology.
]

Notably, CXCL9 (MIG) inversely correlated with fatigue duration, showing higher levels in early disease and lower levels in chronic disease . This continuous inverse correlation mirrors Hornig's group-level finding of elevated early-disease cytokines, providing convergent support from a different analytic approach (within-group correlation versus cross-sectional comparison of early vs.\ late subgroups).

==== Sex-Specific Cytokine Dysregulation

<obs:sex-cytokines>
Recent work by Che et al.  in a large multi-center cohort revealed that hyperinflammatory cytokine responses are particularly pronounced in women over 45 years of age with diminished estradiol levels. Using multi-omics analysis including microbial stimulation assays (heat-killed _Candida albicans_), the study demonstrated exaggerated production of IL-6 and other proinflammatory cytokines in ME/CFS patients, with responses amplified before and especially after exercise.

The sex- and hormone-specific pattern provides mechanistic insight into the female predominance of ME/CFS (approximately 3:1 female-to-male ratio) and suggests potential therapeutic interventions, such as estrogen supplementation for post-menopausal women with evidence of immune hyperactivation.
This sex-specific finding complements the NIH deep phenotyping study's observation of distinct immune abnormalities in male versus female patients @walitt2024deep, underscoring that ME/CFS pathophysiology may differ fundamentally between sexes.

==== Integrated Model: Duration, Severity, and Sex

Combining findings from Hornig , Montoya , and Che , an integrated model of cytokine dysregulation emerges:

    - *Disease duration*: Early disease ($<$3 years) shows high cytokines at the group level; late disease ($>$3 years) shows normalized group-level cytokines
    - *Disease severity*: Within patient cohorts, severe patients show higher proinflammatory cytokines than mild patients through dose-response relationships
    - *Sex and hormones*: Women, particularly post-menopausal women with low estradiol, show more pronounced immune activation

*Reconciling Duration and Severity Effects*

The Hornig and Montoya findings are not contradictory but complementary. Hornig examined group differences between early-stage and late-stage patients, finding that the early-stage group as a whole had elevated cytokines. Montoya examined severity gradients _within_ their cohort (which included both early and late patients), finding that more severe patients had higher cytokines regardless of duration. These observations can coexist: early disease may be characterized by overall immune activation (shifting the entire distribution upward), while severity effects create gradients within both early and late subgroups. The interaction between duration and severity has not been directly tested in a study stratified by both factors simultaneously.

*Clinical Application*

This integrated model suggests personalized treatment approaches, though these represent theoretical predictions requiring validation:

    - *Early + severe + female + low estradiol*: Predicted to have highest cytokines; most likely to benefit from immunomodulatory therapies (extrapolated from individual studies)
    - *Late + severe + female*: May have severity-driven inflammation despite duration-dependent normalization; immune status assessment needed
    - *Late + mild + male*: Predicted to have lowest cytokines; may require therapeutic strategies targeting mechanisms beyond acute immune activation
    - *All other phenotypes*: Require individualized immune profiling before treatment selection

The implications of patient heterogeneity for treatment stratification and the concept of distinct ME/CFS subtypes are discussed in Chapter @ch:integrative-models, Section @sec:questions.

No study has yet examined all three factors (duration, severity, sex/hormones) simultaneously in a fully stratified design. The clinical predictions above are extrapolations from separate studies and require prospective validation.

#limitation(title: [Integrated Cytokine Model: Extrapolated from Separate Studies])[
The integrated duration/severity/sex model combines findings from Hornig 2015, Montoya 2017, and Che 2025—three studies using different cohorts, cytokine panels, analytic methods, and stratification criteria. No study has simultaneously examined all three factors. The clinical predictions (e.g., “early + severe + female + low estradiol” = highest cytokines) are logical extrapolations, not empirical findings. The interaction effects between duration, severity, and sex may be non-additive in ways not predictable from individual studies.
]

*IL-2 as Emerging Biomarker Target*

#hypothesis(title: [IL-2 Pathway in ME/CFS Pathophysiology])[

*Certainty: 0.45.* Two independent methodological approaches (extracellular vesicle proteomics and epigenetic chromosome conformation) converge on IL-2 pathway dysregulation, lending moderate confidence. However, whether this reflects a causal role or an epiphenomenon of chronic immune activation, and whether the two findings reflect the same underlying process, remain unresolved.

Two independent methodologies implicate the IL-2 pathway in ME/CFS, though through different mechanisms. Giloteaux et al.  found significantly elevated IL-2 specifically in extracellular vesicles from ME/CFS patient plasma (n=49 patients, n=49 controls; q=0.007 after multiple comparison correction), with proinflammatory cytokines CSF2 and TNF$alpha$ correlating with physical and fatigue symptom severity. Independently, Hunter et al.  used epigenetic profiling (EpiSwitch#super[\textregistered] technology) of chromosome conformation in 47 ME/CFS patients versus 61 controls, identifying IL-2 signaling among dysregulated pathways in a 200-marker panel (92% sensitivity, 98% specificity in validation).

The convergence—extracellular vesicle cytokine content in one study, epigenetic regulation in another—suggests the IL-2 pathway warrants focused investigation. However, several questions remain: Do elevated IL-2 levels in extracellular vesicles reflect the same process as epigenetic dysregulation of IL-2 signaling? Are ME/CFS cells producing excess IL-2, responding abnormally to normal IL-2, or both? Does IL-2 dysfunction contribute causally to symptoms or merely correlate with disease? Further studies measuring IL-2 receptor expression, downstream signaling (JAK/STAT pathway), and functional T-cell responses to exogenous IL-2 could clarify the pathway's role and therapeutic potential.
] <hyp:il2-pathway>

=== Anti-inflammatory Cytokines
<sec:anti-inflammatory>

==== Interleukin-10 (IL-10)

IL-10 is a potent immunosuppressive cytokine with variable findings in ME/CFS. Levels may be elevated (potentially reflecting an attempt to control inflammation) or reduced (which would permit inflammation to continue). IL-10 is important for resolving immune responses and is produced by regulatory T cells and other cell types.

==== Transforming Growth Factor-Beta (TGF-$beta$)
<sec:tgf-beta>

TGF-$beta$ is the most consistently elevated cytokine in ME/CFS. A systematic review of 38 papers and 77 cytokines found TGF-$beta$ elevated in 5 of 8 studies that measured it (63%)---the highest consistency of any cytokine @Blundell2015cytokines. The Montoya et al.\ Stanford study (192 patients, 392 controls, 51 cytokines) confirmed this elevation ($p = 0.0052$), with TGF-$beta$ and resistin being the only two analytes consistently different at the population level .

TGF-$beta$ has immunosuppressive and tissue remodeling functions. This elevation may represent an attempt to control inflammation, though chronic elevation can promote fibrosis. TGF-$beta$ is also important for regulatory T cell development. Critically, TGF-$beta$ is a potent suppressor of NK cell cytotoxicity through multiple established mechanisms: direct transcriptional repression of perforin (approximately 57% reduction) and granzyme B (approximately 38% reduction) via Smad pathway signaling, inhibition of mTOR (reducing NK cell metabolic capacity), and downregulation of activating receptors NKG2D and NKp30.

#limitation(title: [TGF-$beta$ Elevation: Centrifugation Artifact Concern])[
Roerink et al.\ (2018) raised a serious methodological challenge: TGF-$beta$1 measurements in ME/CFS may be confounded by platelet contamination during sample processing @Roerink2018TGFartifact. Platelets contain 40--100 times more TGF-$beta$1 than other cell types. Lower centrifuge g-force produces higher platelet activation (p-selectin correlated $r = 0.79$ with TGF-$beta$1), which artificially inflates measured concentrations. After controlling for platelet contamination in their cohort, no authentic TGF-$beta$1 elevation distinguished ME/CFS patients from controls. This methodological concern applies to all prior studies that did not standardize centrifugation protocols or measure platelet activation markers. The Montoya 2017 study used standardized multiplex plasma assays and remains the strongest evidence that TGF-$beta$ elevation is real, but even this single-site study cannot fully exclude centrifugation effects.
]

#speculation(title: [TGF-$beta$ as Unifying Explanation for the Two Most Replicated Immune Findings])[

*Certainty: 0.40.* Mechanistically well-supported by cancer immunology literature; not yet tested in ME/CFS.

The two most consistently replicated immune findings in ME/CFS are (1) elevated TGF-$beta$ and (2) reduced NK cell cytotoxicity. These are routinely treated as independent observations. We propose they may represent a single finding and its downstream consequence: chronic TGF-$beta$ elevation suppresses NK cell function.

*Mechanistic basis (established in cancer immunology):*
    - TGF-$beta$ directly represses perforin and granzyme B transcription via Smad/ATF1
    - TGF-$beta$ inhibits mTOR in NK cells, reducing metabolic capacity for sustained killing
    - TGF-$beta$ downregulates NKG2D and NKp30 activation receptors
    - Prolonged TGF-$beta$ exposure may cause persistent NK dysfunction through epigenetic remodeling of IRF, T-bet, and EOMES binding sites---meaning NK cells remain dysfunctional even after TGF-$beta$ normalizes

*Key evidence gap:* No published ME/CFS study has measured both TGF-$beta$ levels and NK cell cytotoxicity in the same cohort. This co-measurement study is the critical missing experiment.

*Implications if confirmed:*
    - Reduces the number of independent immune abnormalities in ME/CFS from two to one
    - Shifts therapeutic focus from NK cells to whatever drives TGF-$beta$ elevation
    - Explains why interventions targeting NK cells directly (BioBran, isoprinosine, interferon-$alpha$) have failed---they address the consequence, not the cause
    - Connects to the Roerink artifact concern: if TGF-$beta$ elevation is partly artifactual, the NK finding may be even more independent than assumed

*Falsification criteria:*
    - If TGF-$beta$ levels do not correlate with NK cytotoxicity within ME/CFS patients in a properly controlled co-measurement study
    - If in vitro TGF-$beta$ neutralisation does not rescue NK cytotoxicity in ME/CFS patient samples
    - If the TGF-$beta$ elevation is entirely explained by centrifugation artifact (Roerink concern), eliminating the upstream driver
] <spec:tgf-beta-rosetta>

#speculation(title: [The TGF-$beta$ Lock: Epigenetic Hit-and-Run])[

*Certainty: 0.30.* Extends the TGF-$beta$ unifying hypothesis with emerging epigenetic evidence. The epigenetic locking mechanism is from a single 2026 preprint (not yet peer-reviewed); application to ME/CFS is entirely speculative.

The TGF-$beta$ Rosetta Stone speculation (Speculation @spec:tgf-beta-rosetta) assumes _ongoing_ TGF-$beta$ elevation suppresses NK cells. But the Roerink artifact concern and Hornig duration-dependent findings raise the possibility that TGF-$beta$ elevation is _transient_---present during early disease and normalising in chronic ME/CFS. If so, how does NK dysfunction persist?

A 2026 preprint demonstrated that prolonged TGF-$beta$ exposure causes persistent epigenetic remodeling of IRF, T-bet, and EOMES binding sites in NK cells---and critically, the dysfunction persists _even after TGF-$beta$ is withdrawn_. We propose a "hit-and-run" mechanism:

    + Initial infection triggers transient TGF-$beta$ elevation (normal immune regulation)
    + In susceptible individuals, TGF-$beta$ exposure exceeds a duration threshold sufficient for epigenetic locking
    + NK cell chromatin is permanently remodeled: perforin/granzyme loci become inaccessible
    + TGF-$beta$ normalizes (explaining null measurements in chronic patients)
    + NK cells remain dysfunctional indefinitely (explaining persistent cytotoxicity deficit)
    + Dysfunctional NK cells cannot clear herpesvirus reactivations
    + Chronic low-level viral stimulation may trigger further TGF-$beta$ from regulatory T cells, locking _new_ NK cells as they mature from progenitors

This model elegantly reconciles: (a) consistent NK dysfunction in chronic ME/CFS, (b) inconsistent TGF-$beta$ elevation (present early, absent late), (c) the Roerink artifact concern (even if current measurements are artifactual, past elevation was real), and (d) the failure of interventions targeting NK cells directly (the epigenetic lock cannot be reversed by providing BioBran or interferon).

*Testable prediction:* Epigenetic profiling (ATAC-seq, ChIP-seq for H3K27me3) of NK cells from ME/CFS patients should show persistent chromatin modifications at EOMES/T-bet/IRF loci characteristic of TGF-$beta$ exposure, even in patients with _normal_ current TGF-$beta$ levels. If this chromatin signature is absent, the hit-and-run model is falsified.
] <spec:tgf-beta-lock>

==== Balance Between Pro- and Anti-inflammatory Signals

The key issue in ME/CFS may not be absolute cytokine levels but rather the balance between pro- and anti-inflammatory signals. Patients may exhibit imbalanced pro-/anti-inflammatory ratios, inappropriate cytokine responses to stimuli, and failure to resolve inflammation properly. This results in chronic low-grade immune activation.

=== Chemokines
<sec:chemokines>

Chemokines direct immune cell migration to sites of infection or inflammation:

==== Recruitment Patterns

Several chemokines show altered levels in ME/CFS. CCL2 (MCP-1), which recruits monocytes, is often elevated. CCL5 (RANTES) recruits T cells and NK cells, while CXCL8 (IL-8) recruits neutrophils. CXCL10 (IP-10), an interferon-induced chemokine, recruits T cells to sites of inflammation.

==== Tissue Infiltration

Elevated chemokines may promote immune cell infiltration into tissues such as muscle, brain, and gut, leading to local inflammation and tissue damage. This infiltration generates symptoms through inflammatory mediators acting at sites of tissue involvement.

== Immune Activation and Inflammation
<sec:immune-activation>

=== Chronic Immune Activation
<sec:chronic-activation>

Evidence for ongoing immune activation in ME/CFS includes:

==== Activation Markers

Multiple markers of immune activation are elevated in ME/CFS. Neopterin, produced by activated macrophages, is often elevated. $beta_2$-microglobulin, a marker of immune cell turnover, is frequently increased. Soluble CD25 (sIL-2R) is released by activated T cells, while soluble CD14 indicates monocyte and macrophage activation.

==== Consequences for Energy Metabolism

Chronic immune activation is metabolically expensive. Immune cells are highly metabolically active, and cytokines alter whole-body metabolism, creating competition for nutrients between immune and other tissues. This metabolic drain may partially explain the profound fatigue characteristic of ME/CFS.

==== Connection to Symptoms

Cytokines and inflammatory mediators directly cause many ME/CFS symptoms. Fatigue is induced by IL-1, IL-6, TNF-$alpha$, and interferons. Cognitive dysfunction results from pro-inflammatory cytokines crossing the blood-brain barrier. Pain arises from sensitization of nociceptors by inflammatory mediators, while sleep disturbance reflects cytokine effects on sleep regulation. Fever and chills result from pyrogenic cytokines.

#achievement(title: [Hundreds of Blood Biomarkers Distinguish ME/CFS, Independent of Inactivity])[
Using UK Biobank data ($n=1{,}455$ ME/CFS cases, $n=131{,}303$ controls) and mediation
analysis, Beentjes et al. @Beentjes2025Biomarkers identified hundreds of blood-based
traits significantly different between ME/CFS patients and controls, including 116 traits
replicated in both female and male cohorts. The pattern indicated chronic inflammation,
insulin resistance, and liver disease. Critically, mediation analysis showed ME/CFS status
had a significant direct effect on 290 traits but affected only 1 of 3,237 traits via an
activity-duration mediator—demonstrating that these biomarker differences are not
explained by reduced physical activity. Nine of fourteen traits were independently replicated
in the All-of-Us cohort, and post-exertional malaise correlated with more pronounced
biomarker alterations.
Study: (UK Biobank + All-of-Us replication, $n=132{,}758$ total,
EMBO Molecular Medicine 2025, certainty: 0.75).
] <ach:beentjes2025-biomarkers>

=== Neuroinflammation
<sec:neuroinflammation>

The brain was traditionally considered “immune privileged,” but it is now recognized that peripheral inflammation affects brain function.

==== Microglial Activation

Microglia are the brain's resident immune cells. PET imaging shows increased TSPO binding, a marker of microglial activation, which persists years after initial infection. Activated microglia produce local cytokines that affect neuronal function, potentially explaining the cognitive symptoms prevalent in ME/CFS.

==== Blood-Brain Barrier Dysfunction

Compromise of the blood-brain barrier permits entry of peripheral cytokines and infiltration of immune cells into the central nervous system. This dysfunction also exposes the brain to circulating autoantibodies and, in some cases, allows direct pathogen entry.

==== Cytokine Effects on Brain Function

Peripheral cytokines affect the brain through multiple routes: transport across the blood-brain barrier, signaling via vagal afferents, acting at circumventricular organs (which lack a blood-brain barrier), and inducing local cytokine production by glial cells. These cytokines produce multiple brain effects, including altered neurotransmitter synthesis and release, changed receptor expression, and modified synaptic plasticity. The resulting “sickness behavior” encompasses fatigue, social withdrawal, and anhedonia—symptoms prominently featured in ME/CFS.

==== Neuroimaging Evidence

Studies have demonstrated:

    - Increased microglial activation on PET
    - Elevated CSF inflammatory markers
    - Correlation between brain inflammation and symptoms
    - Persistence of neuroinflammation

#limitation(title: [Neuroinflammation Measurement Challenges])[
The single published TSPO PET study in ME/CFS (n=9 patients, n=10 controls) found no significant difference in TSPO binding between groups \cite{Raijmakers2021TSPOCFS}, contrary to neuroinflammation hypotheses.
However, this null finding may be confounded by multiple methodological limitations:
- First-generation tracer [11C]-PK11195 has poor signal-to-noise compared to modern second- and third-generation tracers (PBR28, DPA-714, LW223)
- Small sample size (n=9) provides limited statistical power
- Brain-only imaging cannot assess peripheral inflammation contribution
- *BBB transport confounding*: Peripheral inflammation (common in ME/CFS) reduces TSPO tracer brain influx rate \cite{Barzon2026TSPOBBB}, potentially masking central microglial activation

The BBB transport limitation is particularly relevant for ME/CFS interpretation:
Barzon et al.\ (2026) analyzed 358 TSPO PET scans across multiple tracers and demonstrated that peripheral inflammation (elevated CRP) correlates with reduced tracer brain influx (K1).
If ME/CFS involves systemic inflammation as suggested by plasma proteomics data, normal brain TSPO binding may reflect BBB dysfunction rather than absence of neuroinflammation.

*Clinical implications:* Negative TSPO PET results in ME/CFS cannot be interpreted as definitive evidence against neuroinflammation without measuring BBB permeability or controlling for peripheral inflammation.
*Replication status:* Single ME/CFS study \cite{Raijmakers2021TSPOCFS}, not replicated. BBB transport mechanism \cite{Barzon2026TSPOBBB} demonstrated in depression and schizophrenia, not yet tested in ME/CFS.
] <lim:neuroinflammation-measurement-challenges>

=== Immune Cell Displacement from Tissue Niches

The CureME biobank study (251 ME/CFS patients, 107 controls, 46 MS patients) found that overall immune cell proportions were largely normal, with one notable exception: mucosal-associated invariant T (MAIT) cells were significantly elevated in peripheral blood, with the effect strongest in severely affected patients (CD8+ MAIT AUC 0.756 for discriminating severe ME/CFS from controls). A modest shift toward effector memory CD8+ T cells was also observed.

MAIT cells are normally tissue-resident---they belong in mucosal tissues (gut, lung, liver) where they respond to bacterially-derived riboflavin metabolites. Finding them elevated in _blood_ may indicate displacement from their normal tissue locations.

#speculation(title: [The Immune Diaspora: Displaced Tissue-Resident Cells])[

*Certainty: 0.20.* Highly speculative framework connecting disparate observations. MAIT cell elevation in ME/CFS blood has not been independently replicated.

If MAIT cells have been displaced from mucosal tissues into the blood, other tissue-resident immune cell populations may also be dislocated. Post-infectious tissue damage (gut epithelial disruption, blood-brain barrier compromise) could dislodge immune cells from their functional niches. In this model:

    - MAIT cells appear in blood because gut mucosal architecture is disrupted (consistent with the gut microbiome abnormalities documented in Chapter @ch:gut-microbiome)
    - NK cells are functionally impaired because they are not receiving tissue-derived signals (cytokines, direct cell contacts) that exist in their normal microenvironments---their dysfunction is _contextual_, not cell-intrinsic
    - Blood-based studies consistently miss the pathology because they sample cells that are in transit or displaced, not cells performing their actual function in tissues

This framework provides an alternative explanation for the Paradox of Invisible Immunity (Section @oq:invisible-immunity): blood looks "normal" because the cells in blood _are_ normal---they are simply not the ones doing the work. The pathology is in the tissues, where immune niches have been disrupted and resident cells are absent.

*Testable predictions:* (a) Tissue biopsies (gut mucosa, muscle) from ME/CFS patients should show _depleted_ tissue-resident immune populations corresponding to the cell types found elevated in blood; (b) MAIT cell tissue frequency should inversely correlate with blood MAIT frequency within individual patients; (c) interventions that restore mucosal integrity (e.g., gut barrier repair) should normalize MAIT cell distribution.

*Falsification:* MAIT cell elevation is not replicated, or tissue biopsies show normal resident immune populations despite elevated blood MAIT cells.
] <spec:immune-diaspora>

== Viral Reactivation and Persistence
<sec:viral>

Many ME/CFS cases follow acute infections, and evidence suggests ongoing viral activity in some patients .

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
    - Encodes a dUTPase homologue (ORF8) with immunomodulatory properties @Ariza2025polyherpesvirus
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

=== Other Implicated Viruses
<sec:other-viruses>

==== Enteroviruses

Enteroviruses (Coxsackieviruses, Echoviruses) have been implicated:

    - Detection of viral RNA in muscle and gut biopsies
    - Elevated antibodies in some patients
    - Possible persistent low-level infection
    - Historical associations with epidemic ME/CFS outbreaks

==== Parvovirus B19

Parvovirus B19 can cause chronic arthritis and fatigue:

    - Associated with ME/CFS onset in some patients
    - Viral DNA detectable in tissues years after infection
    - May persist in bone marrow and synovium

==== SARS-CoV-2 and Long COVID

The COVID-19 pandemic highlighted viral triggers for ME/CFS-like illness:

    - Long COVID (post-acute sequelae of SARS-CoV-2 infection, PASC) shares many features with ME/CFS
    - Viral persistence documented in some patients
    - Similar immune abnormalities observed
    - Provides opportunity to study post-infectious ME/CFS from known onset

*Persistent Immune Activation Independent of Viral Replication*
A proteomic study of 92 non-hospitalized PASC patients (mean 34 months post-infection) versus 73 matched recovered controls identified 26 differentially expressed plasma proteins—23 upregulated and 3 downregulated—revealing a distinct low-grade inflammatory signature @Fineschi2026pasc_proteomics. The most significantly elevated proteins included oncostatin M (OSM), IL-1 receptor antagonist (IL-1RN), IL-6, IL-12B, IL-2, CCL22, CSF3, CSF1, and HLA-DRA. Gene set enrichment analysis identified five activated immune pathways: inflammatory response, TNF-$alpha$/NF-$kappa$B signaling, IL-6/JAK/STAT3, IL-2/STAT5, and allograft rejection.

Critically, plasma spike protein levels did not differ between PASC patients and controls, indicating that this persistent immune activation occurs independently of ongoing viral replication @Fineschi2026pasc_proteomics. This shares a conceptual parallel with the herpesvirus abortive lytic replication model (Section @sec:abortive-lytic): in both cases, chronic immune activation persists without evidence of productive viral infection. The mechanisms differ—ALR involves ongoing viral protein expression from incompletely reactivated herpesviruses, whereas the PASC finding may reflect a self-sustaining immune dysregulation initiated but no longer maintained by viral activity—but the clinical implication is the same: viral load negativity does not exclude virus-initiated pathology.

The activated pathways overlap substantially with those documented in ME/CFS: TNF-$alpha$ elevation (Section @sec:pro-inflammatory), IL-6/JAK/STAT3 signaling, and IL-2/STAT5 dysregulation (see Hypothesis @hyp:il2-pathway). This convergence supports the hypothesis that post-infectious ME/CFS and PASC share a common immunological endpoint regardless of the triggering pathogen. The study found no evidence for distinct biological subtypes within PASC, suggesting a unitary inflammatory state rather than the heterogeneous subtype structure sometimes proposed.

#achievement(title: [SARS-CoV-2 Viral RNA Detected in Gut Tissue for Nearly Two Years])[
Using total-body PET-CT imaging and rectosigmoid biopsies, Peluso et al. @Peluso2024ViralPersistence detected SARS-CoV-2 spike-encoding RNA—both single- and double-stranded—in gut lamina propria tissue up to 676 days after initial infection. Double-stranded RNA present in tissue would constitutively activate innate immune sensors (RIG-I, MDA5), generating a perpetual interferon signature and sustaining T cell activation without active viral replication. Total-body PET imaging revealed widespread lymphoid tissue involvement, supporting the gastrointestinal tract as a viral reservoir maintaining systemic immune dysregulation in long COVID and post-COVID ME/CFS.
Study: (tissue biopsy + PET imaging, $n=5$ biopsy participants, Science Translational Medicine, certainty: 0.70, consistent with multiple independent viral persistence studies).
] <ach:peluso2024-viral-persistence>

*SARS-CoV-2 PKR-ISR Antagonism and Long COVID Implications*

SARS-CoV-2 actively suppresses the integrated stress response (ISR) during active infection: the nucleocapsid protein domain N2b sequesters double-stranded RNA (dsRNA), preventing PKR (protein kinase R) and RIG-I receptor activation, abolishing stress granule formation and ISR-induced translational arrest . This ISR suppression is a fundamental viral immune evasion strategy conserved across coronavirus species. In the context of viral persistence (documented in gut tissue by Peluso et al.\ above), ongoing N2b-mediated PKR suppression could chronically disable the ISR response that would otherwise limit viral spread and trigger cellular repair programs.

Variant-specific differences in ISR antagonism may partly explain differential long COVID rates. Christ et al.\ found that Omicron nucleocapsid protein less efficiently suppresses stress granule formation than ancestral or Delta variants --- Omicron-infected cells formed stress granules in ~60% of cells versus ~5% for ancestral SARS-CoV-2 @Christ2023CoVISRVariants. If higher ISR activation during acute Omicron infection reduces viral establishment in tissue reservoirs, this could contribute to the lower long COVID incidence observed after Omicron waves, though this connection remains speculative and unmeasured.

#speculation(title: [Bidirectional ISR Dysregulation: Opposite States in Different ME/CFS Subgroups])[
*Certainty: 0.40.*
Different ME/CFS subgroups may have *opposite* ISR states depending on their triggering pathogen, explaining heterogeneous trial responses  @Hennig2022HHV6miRNA @wang2023wasf3. *Post-herpesviruses (HHV-6, EBV) subgroup:* ISR chronically activated --- PERK elevated, ATF4 active, WASF3 upregulated, mitochondrial supercomplex dysfunction. *Post-SARS-CoV-2 (long COVID) subgroup:* ISR suppressed during acute phase via N2b-mediated PKR inhibition , then dysregulated in recovery --- potentially a rebound state or permanently impaired ISR dynamics.

This bidirectional model predicts that ISR suppression (ISRIB, eIF2B activators) will benefit the herpesvirus-triggered subgroup (excessive ISR) but harm or provide no benefit to the post-SARS-CoV-2 subgroup (already suppressed ISR). Conversely, ISR-prolonging agents (salubrinal, guanabenz-class GADD34 inhibitors) would be predicted to benefit only the ISR-suppressed subgroup @CostaMattioli2020ISRReview. The absence of pathogen-stratified subgrouping in ME/CFS clinical trials means this divergence has not been tested.

*Testable prediction:* Stratifying ME/CFS patients by triggering pathogen (HHV-6 dUTPase IgG positive vs. post-COVID onset) will reveal opposite directions of phospho-eIF2α and ATF4 expression in skeletal muscle biopsy. In a crossover trial, ISRIB will improve fatigue in the HHV-6+ subgroup while worsening or showing no effect in the post-COVID subgroup. If ISR markers are uncorrelated with trigger → hypothesis falsified.

*Limitation:* Most ME/CFS patients cannot identify their triggering pathogen with certainty. Pathogen-stratified muscle biopsy studies do not yet exist. The ISR activation finding (Wang 2023) is from an NIH cohort with mixed trigger history (n=14); the SARS-CoV-2 ISR suppression finding is from cell models, not patient tissue .
] <hyp:isr-bidirectional>

#hypothesis(title: [Tissue Compartmentalisation Explains ISR Biomarker Failure in ME/CFS])[
*Certainty: 0.55.*
ISR activation in ME/CFS is restricted to specific tissue compartments --- skeletal muscle @wang2023wasf3, CNS tissue (choroid plexus, hippocampus, amygdala) , possibly dorsal root ganglion sensory neurons and endothelium --- and is not detectable in peripheral blood mononuclear cells. The null result from Omdal et al.\ (n=48, peripheral blood stress biomarkers, long COVID)  is therefore not a refutation of ISR involvement but evidence of compartmentalisation. This predicts that PBMC-based ME/CFS biomarker studies systematically underestimate ISR involvement, and explains the consistent failure of blood-based biomarker panels to discriminate ME/CFS from healthy controls with high sensitivity.

The tissue specificity is mechanistically plausible: PERK is preferentially activated in cells with high secretory/biosynthetic demand (muscle, neurons, endothelium) rather than circulating immune cells. HHV-6 neuroinvasion  places viral ISR triggers directly in CNS tissue. Muscle WASF3 elevation @wang2023wasf3 confirms the skeletal muscle as a primary affected compartment.

*Testable prediction:* Paired sampling in the same ME/CFS patients (PBMC + skeletal muscle biopsy + skin biopsy [DRG-adjacent fibers] + saliva [salivary glands as accessible secretory tissue]) will show ISR markers elevated in muscle and skin but not PBMC. Effect sizes in tissue will substantially exceed those in blood. If muscle and PBMC ISR markers correlate strongly → compartmentalization hypothesis falsified.

*Limitation:* Only skeletal muscle (Wang 2023, n=14) and CNS post-mortem (Kasimir 2022, n=3) have been examined. No skin biopsy ISR study exists in ME/CFS. The comparison between tissue compartments in the same patients has not been done.
] <hyp:isr-compartmentalisation>

#speculation(title: [Sex-Specific ISR Thresholds: Why ME/CFS Is 4× More Common in Females])[
*Certainty: 0.25.*
ME/CFS affects females at approximately four times the rate of males. Estrogen modulates the unfolded protein response and ER stress pathways: 17β-estradiol influences PERK sensitivity through estrogen receptor interactions at the ER membrane and XBP1 splicing efficiency via ERα-mediated co-regulation @CostaMattioli2020ISRReview. Female cells may therefore have a lower threshold for ISR activation following viral insult, predisposing to chronic ATF4 persistence after the same viral trigger that would produce only a transient ISR response in male cells.

This estrogen-modulated ISR threshold model predicts: (a) in premenopausal females, symptom severity fluctuates with oestradiol levels --- phases of lower oestradiol (follicular nadir, premenstrual) may shift the ISR threshold lower, triggering episodes of enhanced ATF4 activity and worsened PEM; (b) postmenopausal women initiating hormone replacement therapy may show altered ISR dynamics in muscle; (c) males who develop ME/CFS may show a distinct ISR signature (shifted toward the GCN2 arm rather than the PERK arm) compared with females with equivalent disease severity.

*Testable prediction:* Sex-stratified phospho-eIF2α and ATF4 levels in ME/CFS skeletal muscle will show greater elevation in females than in age- and severity-matched males. In premenopausal females, serial measurement will show cycle-phase correlation with ATF4-target metabolites (GDF15, FGF21) in plasma. If ISR markers show no sex difference at matched severity → hypothesis falsified.

*Limitation:* No sex-stratified ISR study exists in ME/CFS muscle. The oestradiol–PERK interaction is established in vitro and in animal models; its operation in human skeletal muscle under chronic viral stress has not been tested. Sex-ratio differences in ME/CFS may arise from multiple non-ISR mechanisms (immune susceptibility, health-seeking behaviour, diagnostic criteria sensitivity). (Not yet replicated.)
] <spec:isr-sex-threshold>

#speculation(title: [MCAS--ISR Bidirectional Crosstalk: Mast Cell ER Stress as a Sustaining Amplifier in the MCAS Subgroup])[
*Certainty: 0.20 — mechanistic inference from non-MCAS mast cell literature; no direct ISR measurement in MCAS patient samples.*

Approximately 25% of ME/CFS patients have concurrent MCAS . The mechanistic relationship between MCAS and the ISR pathway is bidirectional and mutually reinforcing in theory, though not yet directly tested.

*ISR acting on mast cells:* Mast cells are secretorily demanding cells whose function depends on intact unfolded protein response (UPR) machinery @Wilhelm2017MCLUPRProteotoxic. In mast cells, the eIF2α-phosphorylation arm of ISR suppresses XBP1 (a key UPR effector) @Fan2024ERStressMastCell, which would reduce IgE-mediated degranulation efficiency. Simultaneously, chronic eIF2α-P would suppress the mTORC1-driven protein synthesis required for granule reconstitution after degranulation @Iskarpatyoti2022MastCellRegranulation. The expected consequence: granule compositional changes over time and altered degranulation dynamics — potentially explaining why MCAS in ME/CFS can present differently from classical allergic MCAS.

*Mast cells acting on ISR:* Mast cell degranulation requires ER calcium mobilisation (STIM1/ORAI1 SOCE). Chronic repeated degranulation, as in MCAS, produces sustained low-level ER calcium depletion. PERK is the canonical ER stress/calcium sensor; the PERK–eIF2α–ATF4 axis is functional in mast cells @Wang2017SHP2MastCellPERK. However, a key constraint from Soboloff and Berger (2002) @Soboloff2002ERCalciumMastCell: eIF2α phosphorylation in mast cells requires *severe* sustained ER calcium depletion, not moderate single-event depletion. Single degranulation events are unlikely to trigger significant ISR; only the cumulative chronic pattern of MCAS-pattern degranulation is a plausible trigger.

*Therapeutic implication (speculative):* In the MCAS subgroup, mast cell stabilizers (ketotifen, cromolyn, Section @sec:domain6-mast-cell) that reduce degranulation frequency could secondarily reduce ER calcium stress, attenuating PERK input and potentially easing the ISR burden. This would predict that MCAS-targeted treatment in the ME/CFS MCAS subgroup produces ISR biomarker improvement (GDF15 reduction, ATF4 target metabolite normalisation) in addition to symptom improvement — a testable pharmacodynamic endpoint.

*Falsifiable prediction:* ME/CFS patients with MCAS overlap (≥2 MCAS criteria) will show higher ATF4-target gene expression (ASNS, CHOP, SLC7A11) in skin mast cells at 3mm punch biopsy compared to ME/CFS patients without MCAS. eIF2α-P will be elevated in PBMC-derived in vitro mast cell differentiation assays from ME/CFS+MCAS patients compared to ME/CFS-only controls. If ISR markers show no MCAS-dependent difference → bidirectional crosstalk hypothesis not supported.

*Limitation:* No study has measured ISR markers in MCAS patient samples of any kind. The mechanistic chain is assembled from non-MCAS mast cell models and non-mast cell ISR studies. HRI kinase data in mast cells are absent. The IgE-suppression finding from Fan 2024 may not generalise to non-IgE MCAS triggers (MRGPRX2, complement, substance P). The gain-of-function direction (MCAS → ISR) requires repeated/chronic mast cell activation, not single acute events. (Not yet replicated in ME/CFS or MCAS.)
] <spec:mcas-isr-crosstalk>

#achievement(title: [International Consensus Framework for Targeting SARS-CoV-2 Reservoir in Long COVID])[
A multi-institutional Lancet Infectious Diseases position paper @Proal2025Reservoir
by leading long COVID and ME/CFS researchers established the conceptual and trial-design
framework for treating long COVID as a viral reservoir disease. The authors synthesised
evidence that SARS-CoV-2 persists for months to years in tissue reservoirs in affected
individuals, propose that this persistence drives ongoing immune activation and symptoms,
and identify critical design considerations for reservoir-targeting trials: mechanism of
action of candidate therapeutics, participant selection by reservoir biomarker burden,
treatment duration, standardized measurables, and potential combination approaches.
The failure of a 15-day nirmatrelvir/ritonavir RCT to improve symptoms is reinterpreted
as evidence that active replication is not the primary target—stable viral reservoirs
require a different therapeutic strategy, drawing lessons from HIV and hepatitis C
functional cure models.
Study: (consensus review, Lancet Infectious Diseases 2025, certainty: 0.75).
] <ach:proal2025-reservoir-framework>

#limitation(title: [PASC Proteomics Generalizability])[
The Fineschi et al.\ study @Fineschi2026pasc_proteomics was restricted to non-hospitalized cases and included participants infected across different pandemic waves (pre-Omicron unvaccinated and Omicron vaccinated), introducing heterogeneity. The cross-sectional design at a single time point cannot capture the temporal evolution of immune activation documented in ME/CFS (see Section @sec:pro-inflammatory). Additionally, the absence of an ME/CFS comparator arm limits direct mechanistic comparison, though the study originated from the ME/CFS Collaborative Research Centre at Uppsala University, suggesting awareness of this overlap.
]

=== Tick-Borne Infections
<sec:tick-borne>

Tick-borne infections represent an important and often underdiagnosed trigger for ME/CFS-like illness. The clinical overlap between post-treatment Lyme disease syndrome (PTLDS), ME/CFS, and chronic tick-borne infections creates significant diagnostic and therapeutic challenges.

==== Lyme Disease and Post-Treatment Lyme Disease Syndrome

*Acute Lyme Disease.*
Lyme disease, caused by _Borrelia burgdorferi_ (North America) or _Borrelia afzelii/garinii_ (Europe), is transmitted by _Ixodes_ ticks and represents the most common vector-borne infection in temperate regions @IDSALyme2020:

    - *Incidence*: $>$470,000 cases annually in the United States @IDSALyme2020
    - *Geographic expansion*: Endemic areas expanding due to climate change and deer population increases
    - *Characteristic presentation*: Erythema migrans (bulls-eye rash) in 70–80% of cases; flu-like illness, arthralgia, neurological symptoms
    - *Standard treatment*: 2–4 weeks of oral doxycycline or amoxicillin for early localized disease

*Post-Treatment Lyme Disease Syndrome (PTLDS).*
Approximately 10–20% of patients treated for Lyme disease develop persistent symptoms despite standard antibiotic therapy @PTLDSMECFSReview2023:

    - *Defining features*: Fatigue, cognitive dysfunction (“brain fog”), musculoskeletal pain persisting $gt.eq$6 months post-treatment
    - *Symptom overlap with ME/CFS*: 26 of 29 core ME/CFS symptoms are present in PTLDS patients @PTLDSMECFSReview2023; however, the proportion meeting formal ME/CFS diagnostic criteria has not been systematically determined
    - *PEM consideration*: Some PTLDS patients report post-exertional worsening, though this has not been systematically studied with ME/CFS-specific methodology
    - *Biomarker studies*: Shared immune abnormalities including altered cytokine profiles and T cell exhaustion markers

<obs:ptlds-mecfs>
Systematic comparison of symptom profiles between PTLDS and ME/CFS cohorts reveals striking overlap @PTLDSMECFSReview2023. Of the 29 symptoms assessed using the DePaul Symptom Questionnaire, 26 (90%) showed comparable prevalence and severity between conditions. Both groups exhibited: fatigue (100% prevalence), unrefreshing sleep ($>$90%), cognitive impairment ($>$85%), post-exertional malaise ($>$80%), and widespread pain ($>$75%). This overlap suggests either shared pathophysiology or that PTLDS represents a subset of post-infectious ME/CFS.
*Mechanistic Hypotheses for Persistent Symptoms.*
Several mechanisms may explain symptom persistence after antibiotic treatment:

    - *Immune dysregulation*: Persistent inflammation and autoimmunity triggered by infection; molecular mimicry between borrelial antigens and host tissues @Steere2016postLyme
    - *Microbial persistence*: Controversy exists regarding whether _Borrelia_ can persist in tissue reservoirs (synovium, nervous system) despite negative blood tests; biofilm formation may protect organisms
    - *Tissue damage*: Irreversible damage to neural, articular, or cardiac tissues during acute infection
    - *Microbiome disruption*: Prolonged antibiotic courses may cause persistent gut dysbiosis contributing to symptom chronicity

==== Bartonella Species

_Bartonella_ species are intracellular bacteria transmitted by various vectors including ticks, fleas, lice, and sand flies.

*Species and Transmission.*

    - _Bartonella henselae_: Cat scratch disease; cats are primary reservoir
    - _Bartonella quintana_: Trench fever; transmitted by body lice
    - _Bartonella bacilliformis_: Carrión's disease; sand fly transmission in South America
    - *Tick transmission*: Multiple _Bartonella_ species have been identified in _Ixodes_ ticks, suggesting co-transmission with _Borrelia_

*Chronic Bartonellosis and ME/CFS-Like Symptoms.*
Chronic _Bartonella_ infection can present with neuropsychiatric and systemic symptoms overlapping with ME/CFS @BartonellaCFS2025:

    - *Neurological*: Encephalopathy, cognitive dysfunction, peripheral neuropathy, neuroretinitis
    - *Systemic*: Chronic fatigue, lymphadenopathy, low-grade fever, sweats
    - *Dermatological*: Striae-like lesions (characteristic “Bartonella striae”), papular eruptions
    - *Vascular*: Endothelial dysfunction, vasculitis-like presentations

<obs:bartonella-cfs>
Breitschwerdt et al.\ used specialized enrichment culture techniques to detect _Bartonella_ DNA in blood samples from patients with chronic fatigue and neurological symptoms @BartonellaCFS2025. Of patients tested, 26% were positive for _Bartonella_ species DNA. The same study also detected _Babesia_ DNA in some patients, though prevalence was not separately reported. Without healthy control data in this report, the clinical significance of detection remains uncertain—_Bartonella_ DNA may represent active infection, past exposure, or subclinical carriage. These findings require replication in larger cohorts with appropriate controls to determine whether detection rates exceed background prevalence.
*Diagnostic Challenges.*
_Bartonella_ diagnosis is notoriously difficult:

    - *Serology limitations*: Sensitivity 40–60%; cross-reactivity between species; seronegative chronic infection documented
    - *Culture requirements*: Specialized enrichment culture (BAPGM) over 2–3 weeks; not widely available
    - *PCR sensitivity*: Standard PCR may miss low-level bacteremia; requires specialized laboratories
    - *Clinical diagnosis*: Often made on clinical grounds with therapeutic trial

==== Babesia Species

_Babesia_ are intraerythrocytic parasites transmitted by _Ixodes_ ticks, frequently co-transmitted with _Borrelia_.

*Epidemiology and Presentation.*

    - *Primary species*: _B. microti_ (North America), _B. divergens_ (Europe), _B. duncani_ (Western US)
    - *Clinical syndrome*: Fever, hemolytic anemia, thrombocytopenia, splenomegaly; can be asymptomatic
    - *Chronic infection*: May persist for months to years, particularly in immunocompromised hosts
    - *Co-infection impact*: Babesiosis with concurrent Lyme disease produces more severe illness and longer symptom duration @Krause1996babesia

*ME/CFS Relevance.*

    - *Chronic fatigue*: Persistent infection causes ongoing hemolysis, cytokine activation, and profound fatigue
    - *Co-infection complexity*: Patients with ME/CFS-like symptoms after tick exposure may have undiagnosed _Babesia_ as sole or co-pathogen
    - *Treatment complexity*: Requires different antimicrobial regimen than Lyme disease; may explain antibiotic treatment failures

==== Other Tick-Borne Pathogens

Additional tick-borne infections may trigger or contribute to ME/CFS-like illness:

*Anaplasmosis and Ehrlichiosis.*

    - *Pathogens*: _Anaplasma phagocytophilum_, _Ehrlichia chaffeensis_, _E. ewingii_
    - *Clinical features*: Fever, leukopenia, thrombocytopenia, elevated transaminases
    - *Chronic sequelae*: Less well-characterized than PTLDS, but persistent symptoms reported

*Rickettsia Species.*

    - Rocky Mountain spotted fever (_R. rickettsii_), other spotted fever groups
    - Can cause severe acute illness with potential for chronic neurological sequelae

*Tick-Borne Relapsing Fever.*

    - _Borrelia hermsii_, _B. turicatae_, and related species
    - Characterized by recurring febrile episodes
    - May be confused with Lyme disease due to genus similarity

==== Clinical Implications for ME/CFS Evaluation

*When to Consider Tick-Borne Infections.*
Tick-borne infection evaluation should be considered in ME/CFS patients with:

    - Geographic residence or travel to endemic areas
    - Known tick exposure or recall of erythema migrans rash
    - Onset following outdoor activities in wooded/grassy areas
    - Symptoms suggesting disseminated Lyme: migratory arthralgias, facial palsy, heart block
    - Marked sweats, air hunger, or hemolytic laboratory abnormalities (suggesting _Babesia_)
    - Neuropsychiatric predominance with striae-like skin lesions (suggesting _Bartonella_)
    - Previous inadequately treated or seronegative Lyme disease

*Diagnostic Approach.*

    - *Lyme disease*: Two-tier testing (EIA/IFA followed by Western blot); consider C6 peptide ELISA; PCR on synovial fluid for Lyme arthritis
    - *Babesiosis*: Blood smear, _Babesia_ PCR, antibody testing; repeat testing during symptomatic episodes
    - *Bartonellosis*: Serology (IgG, IgM), enrichment culture (specialized laboratories), PCR
    - *Co-infection panels*: Given frequent co-transmission, comprehensive tick-borne disease panels are warranted

#warning-env(title: [Diagnostic Limitations and Controversy])[
Tick-borne infection diagnosis remains controversial, with significant disagreement between IDSA/AAN/ACR guidelines and organizations like ILADS. Key issues include:

    - Sensitivity of standard two-tier testing (estimated 30–40% in early disease, though estimates vary by study @Steere2016postLyme)
    - Interpretation of “indeterminate” Western blots
    - Validity of clinical diagnosis in seronegative patients
    - Role of prolonged antibiotic therapy (not supported by controlled trials, but advocated by some practitioners)

Patients and clinicians should be aware of these controversies and the current limitations of evidence for chronic tick-borne infection treatment.
]

*Treatment Considerations.*

    - *Acute Lyme*: Standard 2–4 week doxycycline course is well-established
    - *PTLDS*: No treatment proven effective in controlled trials; extended antibiotic courses not recommended by IDSA @IDSALyme2020; symptomatic management similar to ME/CFS
    - *Babesiosis*: Atovaquone plus azithromycin (7–10 days, longer for immunocompromised); clindamycin plus quinine for severe cases
    - *Bartonellosis*: Prolonged antibiotic courses (weeks to months) often required; regimens include doxycycline, azithromycin, rifampin combinations
    - *Co-infections*: Require treatment of all identified pathogens; single-agent therapy may be inadequate

#open-question(title: [Chronic Tick-Borne Infections as ME/CFS Trigger])[
What proportion of ME/CFS cases have an undiagnosed tick-borne infection as the inciting event or ongoing driver? Given the symptom overlap between PTLDS and ME/CFS, improved diagnostic tools for chronic _Borrelia_, _Bartonella_, and _Babesia_ infections could identify a treatable subset. Key research needs include: development of more sensitive diagnostic assays; prospective studies of tick-borne infection cohorts for ME/CFS development; controlled treatment trials in patients with documented chronic infection.
]

=== Intestinal Parasites as Post-Infectious Triggers
<sec:parasites-post-infectious>

While viral and bacterial triggers of ME/CFS have received substantial research attention, intestinal parasites represent an underexplored but potentially important class of triggering agents. The evidence base is heterogeneous: one large, well-controlled natural experiment provides strong population-level data, while several smaller studies document symptom overlap with contested pathogenicity.

==== The Bergen Giardia Outbreak: A Natural Experiment

The 2004 waterborne outbreak of _Giardia duodenalis_ in Bergen, Norway---affecting 1,300 laboratory-confirmed cases from contaminated drinking water---provides the most rigorous available evidence linking a parasitic infection to ME/CFS onset. Because the exposure was sudden, uniform, and documented, the cohort offers unusually clean causal inference compared to typical retrospective studies. Importantly, the entire evidence base derives from one research group at the University of Bergen; no independent replication in a separate Giardia cohort has been published. The Bergen group's series of longitudinal studies collectively traces the natural history of post-parasitic ME/CFS from the acute phase to a decade later.

*Three-year follow-up.* At three years, chronic fatigue prevalence in exposed individuals substantially exceeded background rates . A clinical case series from the same cohort found that at least 5% of all laboratory-confirmed cases developed CFS meeting Fukuda criteria, with a progressive worsening course in the majority (57%) at specialist referral @Naess2012giardia_cfs. The SF-36 profile showed disproportionate impairment in physical functioning, vitality, and social functioning with relatively preserved mental health---a pattern consistent with ME/CFS and distinct from primary depression.

*Five-year follow-up.* A structured multi-specialist evaluation at five years (psychiatry, neurology, and infectious disease) found 41.5% of persistently fatigued patients still met CFS criteria, with a further 13.2% having idiopathic chronic fatigue @Morch2013giardia_5yr. Sleep apnoea and depressive disorders were identified as differential diagnoses in a minority, underscoring that post-parasitic fatigue is not simply depression. Partial natural recovery was observed: 20.8% had resolved at five years, and fatigue scores improved significantly from the three-year mark.

*Six-year controlled prospective follow-up.* The methodologically strongest study in the series---a controlled prospective cohort with 748 exposed individuals and 878 matched population controls---found that at six years, 30.8% of Giardia-exposed reported chronic fatigue symptoms on a postal questionnaire versus controls (relative risk 2.9, 95% CI 2.3--3.4), and IBS was present in 39.4% (RR 3.4, 95% CI 2.9--3.9) @Hanevik2014giardia_6yr. Formal ME/CFS diagnostic criteria were not applied to the full cohort; the outcome measured was self-reported chronic fatigue, not clinically diagnosed ME/CFS. Conditions declined slowly from the three-year peak but remained highly elevated: a nearly threefold excess of chronic fatigue symptom burden six years after documented parasitic infection in a population-matched controlled cohort.

*Ten-year follow-up.* At ten years, 26% of exposed still reported chronic fatigue versus 11% of unexposed controls (OR 3.0); IBS remained 43% versus 14% . As with the six-year data, these are self-reported symptom prevalences from a postal questionnaire, not clinical ME/CFS diagnoses. The persistence of excess fatigue burden a full decade after parasite eradication cannot be attributed to ongoing infection.

*Immune mechanism.* Immunological substudies of the Bergen cohort, all from the same Bergen research group, have identified two abnormalities. At five years post-infection, post-infectious CFS patients showed significantly lower NK-cell counts versus non-fatigued Giardia-exposed controls, with NK-cell levels correlating negatively with both fatigue and abdominal symptom severity @Hanevik2012immunophenotype. This parallels the NK cell count reductions documented in ME/CFS from other causes (@sec:nk-cells), though those studies primarily measured cytotoxic function rather than counts. A separate study found elevated soluble CD40 ligand (sCD40L)---a marker of platelet and immune activation---in post-infectious CFS patients versus non-fatigued controls, correlating with current fatigue severity @Hanevik2017cellular_immunity; notably, that same study found no difference in antigen-specific CD4 T-cell responses between groups. Long-term _Giardia_-specific cellular immune responses are also detectable at five years @Bolstad2017giardia_immune. These findings are consistent with immune dysregulation persisting after parasite clearance, though causality has not been demonstrated and all immunological substudies originate from the same Bergen research group (n=15–19 per study), limiting independent replication.

#observation(title: [Parasite-Triggered ME/CFS: Bergen Giardia Cohort])[
The Bergen waterborne _Giardia_ outbreak constitutes the primary evidence base for parasitic ME/CFS triggers: a defined exposure event, laboratory-confirmed pathogen, matched controls, and longitudinal follow-up to ten years --- all from one research group at the University of Bergen, with no independent replication in a separate Giardia cohort. A controlled prospective study found a threefold excess risk of chronic fatigue symptoms (self-reported, not formally diagnosed ME/CFS) at six years @Hanevik2014giardia_6yr; at ten years, 26% of exposed still had chronic fatigue versus 11% controls . At least 5% of all laboratory-confirmed cases developed clinically diagnosed ME/CFS @Naess2012giardia_cfs. Immunological substudies (n=15–19 per study) found reduced NK-cell counts @Hanevik2012immunophenotype and elevated sCD40L @Hanevik2017cellular_immunity persisting years after parasite clearance, consistent with ongoing immune dysregulation @Bolstad2017giardia_immune.
] <obs:giardia-mecfs>

==== Other Intestinal Parasites with Symptom Overlap

*Cryptosporidium parvum.* A 1-year follow-up of an adult outbreak-associated cohort after acute _Cryptosporidium parvum_ infection found persistent fatigue in 22%, joint pain in 33%, and IBS-consistent symptoms in 28% @Stiff2017cryptosporidium. The multi-system symptom cluster---extending beyond GI symptoms to joint and fatigue phenotypes---is consistent with post-infectious ME/CFS, though formal CFS diagnostic criteria were not applied and follow-up was limited to 12 months. This extends the post-infectious trigger spectrum beyond Giardia to a second waterborne protozoan, though the evidence requires replication with longer follow-up and formal diagnostic ascertainment.

*Blastocystis spp.* _Blastocystis_ is a highly prevalent intestinal protozoan of contested pathogenicity. Some carriers remain entirely asymptomatic, while symptomatic individuals report gastrointestinal and fatigue symptoms. A 2013 clinical letter reported an in-house comparison of ME/CFS patients positive for _Blastocystis_ or _Dientamoeba fragilis_ @Blastocystis2013letter, but no controlled trial data exist in ME/CFS cohorts. The pathogenicity of _Blastocystis_ remains genuinely disputed in the scientific literature, with some evidence suggesting it may be commensal in many hosts, making individual-level attribution difficult.

*Dientamoeba fragilis.* _Dientamoeba fragilis_ follows a similar pattern: associated with gastrointestinal symptoms and fatigue in symptomatic carriers, with disputed pathogenicity in immunocompetent hosts. No ME/CFS-specific controlled studies exist. Diagnosis is complicated by the limited sensitivity of standard stool microscopy compared to PCR-based multiplex testing, though the latter is not routinely ordered during ME/CFS clinical evaluation.

*Toxoplasma gondii.* Latent toxoplasmosis is associated with neuropsychiatric sequelae and should be considered in the differential diagnosis before an ME/CFS diagnosis is established in patients with relevant exposure history. It is not considered an established ME/CFS co-trigger in the current literature.

*Trigger spectrum context.* Parasitic infections represent a minority of ME/CFS triggers. A large multi-country survey of 1,773 ME/CFS patients found that 60.3% reported a preceding infectious illness, with mononucleosis (EBV) the single most common trigger (30% of infections), distributed across more than 100 distinct pathogens @Jason2022triggers; no single pathogen dominates the trigger landscape. The Bergen cohort data illustrate that even relatively uncommon parasitic triggers can generate post-infectious ME/CFS in a substantial minority of exposed individuals.

==== The Inciting Trigger vs. Sustaining Mechanism Distinction

A conceptual distinction is essential for interpreting the parasite literature and for understanding why conventional medicine may appear to "ignore" this field.

Medical management of chronic illness appropriately focuses on _sustaining mechanisms_---what maintains disease activity in an established patient today. A patient with ME/CFS of ten years' duration who tests positive for _Blastocystis_ is unlikely to recover from ME/CFS after eradication, because by this stage the sustaining mechanisms (immune dysregulation, autonomic dysfunction, mitochondrial damage) are hypothesized to be operating independently of the original trigger. From the clinician's perspective, treating the parasite in this context has low expected benefit, and the Bergen data support this: ME/CFS persists a decade after confirmed parasite eradication.

This reasoning is clinically sound for established, longstanding disease. However, it creates a systematic blind spot for two important questions:

+ *Parasites as inciting triggers:* A parasite may initiate the post-infectious immune dysregulation cascade that eventually becomes self-sustaining ME/CFS, even if the parasite itself is subsequently cleared. In this model, the parasite is causally essential (it started the process) but therapeutically irrelevant by the time ME/CFS is diagnosed.
+ *The early treatment window:* If parasites act as inciting triggers, aggressive treatment at the time of acute infection---before immune dysregulation becomes self-sustaining---might prevent ME/CFS from establishing. This early therapeutic window is unstudied.

==== Diagnostic Gap and Clinical Implications

A practical diagnostic gap exists: standard stool ova and parasite (O&P) microscopy examination has limited sensitivity for _Dientamoeba fragilis_ and _Blastocystis_. PCR-based multiplex stool testing is substantially more sensitive but is not routinely ordered during ME/CFS clinical evaluation. This creates a systematic underdetection of potentially relevant findings in patients whose ME/CFS onset followed gastrointestinal symptoms.

#open-question(title: [Early Parasite Eradication as ME/CFS Prevention])[
If intestinal parasites act as inciting triggers for post-infectious ME/CFS via immune dysregulation, does aggressive early treatment of acute parasitic infection reduce subsequent ME/CFS incidence? The Bergen Giardia cohort provides the ideal test case---what proportion of the CFS cases in that cohort received timely, confirmed eradication therapy, and does treatment timing correlate with chronic outcome? A prospective cohort study tracking ME/CFS development after documented gastrointestinal parasitic infection, with early vs. delayed treatment arms, could directly address this therapeutic window hypothesis. No such study has been conducted.
] <oq:parasite-prevention>

#open-question(title: [Systematic Parasite Screening in ME/CFS Evaluation])[
What is the prevalence of _Blastocystis_, _Dientamoeba fragilis_, and other intestinal protozoa in ME/CFS patients compared to healthy controls, when assessed by sensitive PCR-based multiplex testing rather than standard microscopy? If prevalence is elevated, does treatment of symptomatic carriers with gastrointestinal phenotype improve ME/CFS outcomes? The absence of such a study is a gap in the differential diagnosis literature, particularly given the well-documented gut-brain axis dysfunction in ME/CFS (@sec:microbiome).
] <oq:parasite-screening>

==== Emerging Hypotheses from the Parasite–ME/CFS Interface

The Bergen data and the trigger-vs-sustaining framework generate several mechanistically grounded hypotheses that connect intestinal parasitic infection to known ME/CFS pathways.

#speculation(title: [Molecular Mimicry: Giardia VSPs and Autonomic Receptor Autoimmunity])[
*Certainty: 0.30.* Mechanistically coherent and consistent with the established autoimmune hypothesis for ME/CFS (@sec:autoantibodies), but no epitope homology data or autoantibody profiling in Bergen cohort patients has been published. Certainty is limited by absence of direct evidence.

_Giardia duodenalis_ (syn. _G. lamblia_) expresses a large family of variant-specific surface proteins (VSPs) that undergo rapid antigenic variation to evade immune clearance. We speculate that certain VSP epitopes may share structural homology with human G-protein-coupled receptor epitopes — particularly muscarinic and beta-2 adrenergic receptors already implicated in ME/CFS autoimmunity . Acute _Giardia_ infection could prime autoreactive B-cell clones via molecular mimicry; after parasite clearance, these clones might persist and produce receptor-blocking autoantibodies, driving the autonomic and vascular dysfunction of ME/CFS. This model would explain why post-Giardia ME/CFS clinically resembles post-viral ME/CFS: both would converge on the same GPCR autoimmune endpoint via different antigenic routes.

*Testable predictions:* (1) Anti-muscarinic and anti-β2-adrenergic receptor autoantibodies are elevated in Bergen cohort ME/CFS patients vs non-ME/CFS exposed and unexposed controls, replicating the Loebel 2016 pattern in a parasitically triggered cohort. (2) VSP structural homology to human GPCR epitopes is detectable by computational proteomics (e.g., BLAST, HHpred) at an E-value threshold ≤ 1×10⁻⁴; failure to detect homology above this threshold at both sequence and predicted-structure levels constitutes disconfirmation of this specific mechanism. (3) Immunoadsorption produces clinical improvement in post-Giardia ME/CFS patients with confirmed elevated GPCR autoantibodies, as has been shown for other ME/CFS autoimmune subgroups .
] <spec:giardia-molecular-mimicry>

#speculation(title: [Post-Parasitic Kynurenine Shunt: IDO1 as Sustained Neuroinflammatory Driver])[
*Certainty: 0.35.* The IDO1–kynurenine axis has been implicated in ME/CFS neuroinflammation in preliminary studies, and IDO1 upregulation during intestinal parasite infection has been proposed mechanistically, but no data directly link persistent IDO1 upregulation to post-Giardia ME/CFS specifically.

Intestinal parasite infection, including _Giardia_, is hypothesized to upregulate indoleamine 2,3-dioxygenase (IDO1) in intestinal macrophages---the rate-limiting enzyme diverting tryptophan into the kynurenine pathway rather than toward serotonin synthesis---though direct demonstration in the Bergen cohort is lacking. The kynurenine pathway is already implicated in ME/CFS: excess quinolinic acid (a neurotoxic NMDA receptor agonist) and deficient serotonin precursor availability are proposed contributors to cognitive dysfunction, fatigue, and disordered sleep (@sec:ch15-kynurenine). We speculate that parasitic infection may epigenetically prime IDO1 expression in gut-associated macrophages into a durably upregulated state, by analogy with the H3K4me3-mediated trained innate immunity mechanism described for other macrophage-activating stimuli @Netea2016trained; the specific H3K4me3/IDO1 connection has not been demonstrated in the context of Giardia infection. After parasite clearance, persistently elevated IDO1 activity maintains a chronic kynurenine shunt — explaining ME/CFS fatigue, cognitive dysfunction, and neuroinflammation as downstream sequelae of a gut enzyme reprogrammed by an infection that is long gone.

*Testable predictions:* (1) Serum kynurenine/tryptophan ratio is elevated in Bergen cohort ME/CFS patients vs non-ME/CFS exposed at 5 and 10 years. (2) H3K4me3 enrichment at the _IDO1_ promoter in intestinal macrophage biopsies is greater in post-Giardia ME/CFS patients than controls. (3) IDO1 inhibitors (e.g., epacadostat) reduce kynurenine/tryptophan ratio and improve cognitive symptoms in post-parasitic ME/CFS.
] <spec:parasite-ido1-kynurenine>

#open-question(title: [Secretory IgA Deficiency as ME/CFS Conversion Risk Factor])[
Selective or partial secretory IgA (sIgA) deficiency predisposes to protracted and recurrent _Giardia_ infection. If sub-clinical mucosal IgA insufficiency — not reaching the threshold for clinical diagnosis of selective IgA deficiency, but functionally reduced at intestinal mucosal surfaces — is more prevalent in individuals who converted to ME/CFS after Bergen Giardia exposure, this would: (1) identify a measurable immunogenetic risk factor for parasite-triggered ME/CFS, (2) explain the ~5% conversion rate, and (3) identify a potential prevention target. Serum IgA and secretory IgA measurement in the Bergen cohort ME/CFS subgroup vs non-converters would directly test this at low cost.
] <oq:siga-parasite-mecfs>

#speculation(title: [Mucosal Checkpoint Failure: GALT NK Depletion Permits Autoreactive Escape])[
*Certainty: 0.20.* Mechanistically coherent but entirely inferential; no direct evidence from ME/CFS or post-Giardia studies. Speculative integration of Bergen NK findings with GALT immunotolerance biology.

_Giardia_ colonizes the duodenum and proximal jejunum — the anatomical site of the intestinal immune checkpoint where NK cells in the gut-associated lymphoid tissue (GALT) normally suppress autoreactive lymphocyte clones. The Bergen immunophenotyping data show chronically reduced peripheral NK cell counts in post-infectious ME/CFS patients @Hanevik2012immunophenotype. We speculate that GALT-resident NK cell depletion during or after Giardia infection may impair this local tolerogenic checkpoint. Giardia cysteine proteases are known to degrade secretory IgA, reducing a key mucosal barrier; combined with NK depletion, autoreactive clones primed by parasite antigens (potentially via molecular mimicry as in @spec:galt-checkpoint-failure) could escape into systemic circulation, driving GPCR autoimmunity or other autoimmune mechanisms observed in ME/CFS (@sec:autoantibodies). This "mucosal checkpoint failure" model would predict that post-Giardia ME/CFS patients show evidence of a broader autoimmune diathesis, not limited to GPCR antibodies.

*Testable predictions:* (1) GALT NK cell counts (intestinal biopsy) are lower in post-Giardia ME/CFS patients vs recovered Giardia-exposed controls. (2) A broader panel of autoantibodies (ANA, anti-thyroid, anti-GPCR) is elevated in post-Giardia ME/CFS vs post-Giardia non-CFS. (3) Reconstitution of mucosal NK cell function (mechanism to be defined) reduces autoantibody titres in a relevant animal model.
] <spec:galt-checkpoint-failure>


#speculation(title: [Post-Parasitic Mast Cell Priming as MCAS–ME/CFS Overlap Driver])[
*Certainty: 0.20.* Based on known Giardia–mast cell biology and the documented MCAS–ME/CFS comorbidity, but no study has examined mast cell phenotype or tryptase levels in the Bergen cohort or any post-parasitic ME/CFS population.

Acute _Giardia_ infection induces significant intestinal mast cell degranulation as part of the innate immune response to luminal parasites. We speculate that in a subset of susceptible individuals, this acute mast cell activation permanently primes intestinal mast cell populations toward hyper-reactivity: a lowered degranulation threshold and elevated baseline tryptase. This post-parasitic mast cell sensitization would clinically manifest as Mast Cell Activation Syndrome (MCAS, @sec:allergies-mast-cells), which carries substantial phenotypic overlap with ME/CFS (fatigue, cognitive dysfunction, orthostatic intolerance, chemical sensitivities). Under this model, a proportion of post-Giardia ME/CFS patients may be post-parasitic MCAS cases in which mast cell mediators — histamine, prostaglandins, PAF — drive autonomic dysfunction, neuroinflammation, and immune dysregulation. The treatment implication is testable: mast cell stabilizers (cromolyn sodium, ketotifen) and combined H1/H2 antihistamine blockade represent low-risk interventions that could be trialled in post-parasitic ME/CFS patients with clinical MCAS features.

*Testable predictions:* (1) Serum tryptase and urinary prostaglandin D₂ metabolites are elevated in post-Giardia ME/CFS patients vs post-Giardia non-CFS and unexposed controls. (2) The proportion of ME/CFS patients meeting MCAS criteria (AAAAI 2020 consensus) is higher among those with post-parasitic onset than among those with post-viral onset. (3) H1/H2 antihistamine + cromolyn sodium trial produces symptom improvement specifically in post-parasitic ME/CFS patients with elevated baseline tryptase.
] <spec:parasite-mcas-priming>


#open-question(title: [Duodenal Microbiome Disruption as Sustaining Mechanism in Post-Parasitic ME/CFS])[
_Giardia_ selectively colonizes the proximal small intestine — a region with normally sparse, carefully regulated microbiota that is distinct from the colonic microbiome typically studied in ME/CFS research. Wensaas et al.\ 2018 documented persistent duodenal histological changes (villous atrophy, intraepithelial lymphocytes) in a subset of Bergen cohort patients at ten years . We hypothesize that Giardia infection may permanently shift the small intestinal (duodenal) microbiome composition — reducing butyrate-producing species and increasing LPS-presenting gram-negative bacteria — resulting in chronic low-grade LPS translocation, TLR4 activation, and systemic neuroinflammation as a sustaining ME/CFS mechanism. This would connect the parasite trigger mechanistically to the gut–brain axis and microbiome abnormalities documented in ME/CFS (@sec:microbiome). Unlike colonic microbiome studies (which have been conducted in ME/CFS, see @sec:microbiome), duodenal microbiome profiling via duodenal aspirate or proximal small-bowel biopsy has not been performed in any post-parasitic ME/CFS cohort.
] <oq:duodenal-microbiome>


#open-question(title: [Bergen Biobank Recontact: Maximising the Natural Experiment])[
The Bergen Giardia cohort represents one of the highest-value underutilized research resources in ME/CFS science: a cohort with a known exposure date, laboratory-confirmed pathogen, longitudinal clinical follow-up to 10 years, and a well-characterized PI-CFS subgroup. Existing studies have measured cytokine profiles, NK counts, sCD40L, and cellular immune responses — but the cohort has not been systematically interrogated for: (1) GPCR autoantibody panels (anti-muscarinic, anti-β2-adrenergic) as in @spec:galt-checkpoint-failure; (2) duodenal biopsy for epigenetic profiling (H3K4me3 at IDO1, IL-6, and TNFα promoters); (3) small intestinal microbiome composition by shotgun metagenomic sequencing; (4) serum tryptase and urinary mast cell mediators; (5) secretory IgA levels. Recontacting surviving PI-CFS patients and matched non-CFS exposed controls for a cross-sectional biomarker panel study would simultaneously test multiple mechanistic hypotheses at low marginal cost, given that the cohort is already characterized. This is likely the highest return-on-investment study available in post-parasitic ME/CFS research.
] <oq:bergen-biobank-recontact>


#open-question(title: [Cryptosporidium Long-Term Cohort Study: Generalising Beyond Giardia])[
The Stiff 2017 data establish that 22% of Cryptosporidium parvum outbreak survivors report persistent fatigue at 12 months @Stiff2017cryptosporidium, but follow-up was insufficient and formal ME/CFS criteria were not applied. A Bergen-style prospective controlled cohort study following a documented Cryptosporidium outbreak for 3–10 years with formal ME/CFS diagnostic ascertainment would determine: (1) whether the Giardia findings generalize to a second apicomplexan protozoan; (2) whether the ME/CFS conversion rate differs between parasite species; (3) whether the immunological profile (NK cells, sCD40L, antigen-specific responses) recapitulates the Bergen findings or differs systematically. Given that Cryptosporidium outbreaks occur recurrently in Europe and North America, an opportunistic prospective cohort design is feasible. No such study has been initiated.
] <oq:cryptosporidium-longitudinal>


=== Infection-Induced Cumulative Damage and Disease Progression

The progressive, often step-wise deterioration seen in many ME/CFS patients following repeated infections or viral reactivation suggests that each infectious event produces cumulative, irreversible damage rather than merely triggering reversible inflammation.

#speculation(title: [Infection-Induced Irreversible Damage: The Ratchet Model])[

*Certainty: 0.40.* This model is mechanistically plausible and consistent with clinical observations of step-wise deterioration after infections, and is supported by preliminary Long COVID epidemiological data @PNAS2025MECFSLongCOVID. However, the irreversibility claim is difficult to test prospectively, and alternative explanations (e.g., deconditioning, psychological factors in rating, or regression to the mean) have not been excluded. The certainty is limited by the absence of controlled longitudinal data directly testing the ratchet prediction.

We propose that each infection in ME/CFS patients produces cumulative, irreversible damage that progressively worsens disease through multiple interconnected mechanisms @PNAS2025MECFSLongCOVID.

*Cumulative damage mechanisms*

_Viral reactivation and persistent viral load:_ ME/CFS patients frequently experience reactivation of latent viruses (EBV, HHV-6, CMV) or recurrent infections with new pathogens. Each reactivation adds to the total viral antigenic load. Unlike an immunocompetent host who clears viruses completely, ME/CFS patients with impaired immune function may never fully clear these reactivations. The viral genome and viral proteins (which are inherently immunogenic and inflammatory) persist or accumulate. This creates a ratchet effect—viral burden goes up with each reactivation and rarely returns to baseline. A specific cellular mechanism for this persistence—virus residing within long-lived lymphocytes themselves, below conventional detection thresholds—is proposed in Speculation @spec:lymphocyte-reservoir-ratchet, supported by comparative virology evidence from feline coronavirus .

_Additional microglial priming events:_ As described in the neuroinflammatory cascade model (Hypothesis @hyp:cascade-neuroinflammatory), each infection represents a major microglial priming event. Acute infections trigger intense microglial activation, and subsequent viral reactivations produce additional priming. Since primed microglia show exaggerated responses to subsequent stimuli (as discussed in the PEM kindling hypothesis, Hypothesis @hyp:pem-kindling-sensitization), each infectious episode not only causes direct damage but increases the microglial response to future infections. This creates a positive feedback: infection → microglial priming → exaggerated response to next infection → more priming.

_Critical note on model interdependence:_ This ratchet model shares core mechanistic assumptions with the Kindling Hypothesis (Hypothesis @hyp:pem-kindling-sensitization) and the neuroinflammatory cascade model (Hypothesis @hyp:cascade-neuroinflammatory); they should be interpreted as complementary components of a unified explanatory framework rather than independent corroboration of each other. Specifically: the Ratchet Model predicts irreversible step-wise decline with each infection, while the Kindling Model predicts progressive threshold reduction from exertion triggers. Both could be simultaneously true (infections cause larger priming steps; exertion causes smaller priming steps), but they make distinct testable predictions. The Ratchet Model uniquely predicts that baseline functioning follows a ratchet pattern (asymmetric: high damage but minimal recovery), whereas pure Kindling predicts threshold reduction independent of infection status. Distinguishing between these predictions empirically requires longitudinal threshold tracking with separate quantification of crash frequency from infections versus non-infectious triggers.

_Further depletion of metabolic reserves:_ During acute infection, energy expenditure increases substantially due to fever, immune activation, and metabolic stress. In ME/CFS patients, metabolic reserves are already depleted. Each infection represents a major metabolic stress that exhausts remaining reserves. Unlike immunocompetent hosts who recover metabolically after infection, ME/CFS patients may never fully restore their metabolic baseline before the next infection occurs. The metabolic nadir becomes progressively lower with each infection.

_Immune exhaustion from repeated activation:_ The adaptive immune system responds to each infection by activating clones of T cells and B cells specific to the infection. In the context of persistent and recurrent infections, these same clones are repeatedly activated. Repeated activation produces immune exhaustion—T cell exhaustion markers increase, B cell function declines. Additionally, the repeated need to generate immune responses may accelerate telomere shortening and cellular senescence, reducing the lifespan of immune cells.

*Clinical manifestation: Step-wise baseline deterioration*

The combination of these mechanisms produces a characteristic clinical pattern: each infection is followed by a step-wise decline in baseline functioning that does not fully resolve before the next infection. A patient might experience:

    - Baseline functioning: Level A (e.g., able to work 4 hours daily)
    - Infection 1 → acute illness → recovery to baseline attempt, but only reaches Level B (3 hours daily) due to incomplete metabolic recovery and persistent microglial priming
    - Infection 2 → acute illness → recovery to attempted baseline, but only reaches Level C (2 hours daily)
    - Infection 3 → acute illness → recovery to attempted baseline, but only reaches Level D (bedbound)

This step-wise progression differs from other chronic conditions where infections represent temporary setbacks from which full recovery to baseline is expected. In the ratchet model, each infection represents a permanent downward step in baseline capacity. Over years, repeated infections can convert a mildly-affected patient into a severely-affected patient, even if individual infections are not severe.

*Key clinical implications*

_Infection prevention is disease-modifying:_ In the ratchet model, preventing infections is not merely symptomatic management but disease-modifying therapy. Each prevented infection preserves baseline functioning and prevents another step-wise decline. A patient with effective infection prevention can potentially avoid progressive deterioration that would occur with repeated infections.

_Prophylactic interventions are justified:_ Standard infection prevention approaches (masking during high-transmission periods, hand hygiene, limiting exposure to ill contacts) might be expected in moderately or severely affected patients. More aggressive approaches—such as FFP2 masking in community settings during respiratory season, or prophylactic antiviral therapy during high-risk periods if safe options become available—could potentially have substantial long-term benefit by preventing cumulative damage.

_Rapid infection treatment is critical:_ Early, aggressive treatment of identified infections (rapid antiviral therapy for herpesvirus reactivation, prompt antibiotic therapy for bacterial infections) might minimize the damage window and reduce the microglial priming response by shortening infection duration.

_Immunological intervention may not restore lost function:_ In conditions where immune deficiency is reversed (e.g., HIV treatment restoring CD4 counts), patients often improve dramatically because the deficit was reversible. In the ratchet model, infection-induced damage is largely irreversible. Therefore, immunological interventions (such as immune modulation or restoration) might prevent future decline but would not restore previously-lost baseline functioning. This suggests that prevention is substantially more important than treatment—once damage is done, it persists.

*Relationship to baseline deterioration in Long COVID*

The ratchet model of cumulative infection-induced damage provides a mechanistic framework that explains the step-wise baseline deterioration observed in Long COVID patients experiencing recurrent COVID-19 infections. Preliminary epidemiological data and clinical observations suggest that each COVID reinfection produces additional baseline functional loss beyond what would be expected from reinfection alone. This pattern aligns with the infection ratchet hypothesis and suggests that similar mechanisms may apply to ME/CFS @PNAS2025MECFSLongCOVID.

] <spec:infection-damage-ratchet>

#limitation(title: [Infection Ratchet Model: Irreversibility Not Demonstrated])[
The ratchet model's central claim—that each infection produces _irreversible_ baseline decline—has not been tested prospectively. Key data gaps:

    - No longitudinal study has tracked ME/CFS patients through sequential infections with pre- and post-infection functional measurement to quantify stepwise decline versus recovery.
    - The model shares core assumptions with the Kindling Hypothesis and the neuroinflammatory cascade model; these cannot serve as independent corroboration of each other.
    - Alternative explanations for observed step-wise decline (deconditioning during acute illness, psychological reporting bias, regression to the mean after flare) have not been excluded.
    - The claim that “immunological intervention may not restore lost function” is unfalsifiable without first identifying which damage is structural versus functional.

]

=== Infection Susceptibility in ME/CFS
<sec:infection-susceptibility>

The immune dysfunction documented in ME/CFS—NK cell cytotoxicity deficits @Caligiuri1987nk , CD8#super[+] T cell exhaustion @iu2024tcell_exhaustion @Gil2023cd8, complement consumption  @Sorensen2003complement, and neutrophil/monocyte abnormalities (Section @sec:neutrophils-monocytes)—converges on a profile of impaired pathogen defense. Each of these deficits independently reduces the capacity to clear infections; their combination creates compounding vulnerability.

*Clinical significance for bacterial infections.*
While viral reactivation is the most studied consequence of ME/CFS immune dysfunction (Section @sec:herpesviruses), the implications for bacterial infection susceptibility are underexplored. NK cells contribute to early bacterial defense through direct killing and cytokine-mediated neutrophil recruitment; their functional impairment in ME/CFS @Caligiuri1987nk may delay initial containment of bacterial pathogens. CD8#super[+] T cell exhaustion—with elevated SLAMF6, SLAMF7, EOMES, and TOX markers and altered metabolic programming @iu2024tcell_exhaustion—may reduce the adaptive immune system's capacity to clear intracellular bacteria and coordinate immune responses to extracellular pathogens. Complement consumption (reduced C3/C4 with elevated activation fragments ) may transiently impair opsonisation, though whether the terminal pathway (C5–C9) critical for killing encapsulated bacteria such as _Neisseria meningitidis_ is compromised has not been specifically assessed (see Section @sec:complement-infection).

*Infection as a disease-modifying event.*
Within the ratchet model of cumulative infection-induced damage (Speculation @spec:infection-damage-ratchet), each infection in an ME/CFS patient carries dual risk: the acute infection itself _and_ the potential for permanent baseline deterioration. The Q Fever Fatigue Syndrome literature provides the strongest evidence for this in the bacterial domain: 98.9% of 368 QFS patients experienced PEM at 10-year follow-up, with severely compromised quality of life . This provides evidence that bacterial infections can produce persistent post-infectious syndromes resembling ME/CFS and supports the clinical imperative of infection prevention as disease-modifying therapy.

=== Vaccination in ME/CFS: Efficacy and Safety
<sec:vaccination-mecfs>

Given the immune dysfunction documented in ME/CFS, a critical clinical question is whether patients mount adequate vaccine responses and whether vaccination is safe.

==== Vaccine Immunogenicity

The only study directly measuring vaccine immunogenicity in CFS patients found reassuring results: Prinsen et al.\ showed that CFS patients mounted antibody responses to influenza vaccination identical to healthy controls, with similar seroprotection rates across all three influenza strains @Prinsen2012vaccine. CFS patients actually showed increased cellular proliferation post-vaccination. The authors concluded that “standard seasonal influenza vaccination is thus justified and, when indicated, should be recommended for patients suffering from CFS.”

#limitation(title: [Single Study, Single Vaccine Type])[
The Prinsen et al.\ finding @Prinsen2012vaccine is the only published study of vaccine immunogenicity in ME/CFS. It assessed influenza vaccination only; responses to other vaccines (meningococcal, pneumococcal, COVID-19) remain unstudied. Given that ME/CFS immune dysfunction varies substantially across patients and that the Iu et al.\ CD8#super[+] T cell exhaustion findings @iu2024tcell_exhaustion postdate this study, vaccine responses in ME/CFS patients with documented severe immune dysfunction may differ from those with milder phenotypes.
]

==== Vaccine Safety: Infection vs.\ Antigen Exposure

Population-level data from Norway provide strong evidence distinguishing infection risk from vaccination risk:

    - *Meningococcal vaccine:* No association between meningococcal B vaccine and CFS in a case-control study (adjusted OR 1.06, CI 0.67–1.66) @Magnus2009meningococcal
    - *Pandemic influenza:* Actual influenza infection doubled ME/CFS risk (HR 2.04, CI 1.78–2.33), while the adjuvanted pandemic vaccine showed no increased risk (HR 0.97) @Magnus2015influenza

These findings provide strong population-level evidence that, at least for pandemic influenza, it is _infection_ rather than antigen exposure or adjuvant challenge that triggers ME/CFS. This has direct clinical implications: vaccination reduces infection risk without adding ME/CFS risk, making it a net protective intervention. The Magnus et al.\ influenza data @Magnus2015influenza are particularly powerful, as they tracked the entire Norwegian population from 2009 to 2012, providing statistical power unavailable to smaller studies.

#open-question(title: [Post-COVID Immune Damage and Vaccine Efficacy])[
COVID-19 causes persistent T cell exhaustion (elevated PD-1, TIM-3, CTLA-4) @Gil2023cd8 and complement consumption @Klein2024longcovid. However, studies tracking pre-existing vaccine antibodies have found that COVID-19 does _not_ cause measles-like immune amnesia @Klein2024longcovid. Whether the combination of pre-existing ME/CFS immune dysfunction with post-COVID immune damage compounds to reduce vaccine efficacy for _future_ vaccinations is unstudied and clinically relevant: if it does, ME/CFS patients with post-COVID worsening may require additional booster doses or antibody titre monitoring.
] <q:postcovid-vaccine-efficacy>

==== The Anellovirus Paradox: A Hidden Positive in Negative Viral Screening

Large-scale viral screening studies have consistently failed to find pathogenic viruses enriched in ME/CFS blood, saliva, or stool. However, one overlooked finding from Lipkin's multicenter virome study (391 ME/CFS patients, 292 controls) may contain a clue: anelloviruses---ubiquitous, normally harmless commensal viruses---were _significantly less prevalent_ in ME/CFS plasma (30.5% vs 54.1%, $p < 0.001$). The study authors hypothesized this may reflect a "hyperimmune state" in which the immune system is clearing these normally tolerated viruses more aggressively than in healthy individuals.

#speculation(title: [Constitutive Immune Activation Without Secretory Output])[

*Certainty: 0.20.* Based on a single observation from one study. Highly speculative but generates testable predictions.

The anellovirus depletion suggests ME/CFS immune cells may be constitutively activated at a low level---sufficient to clear harmless commensal viruses more aggressively, but below the threshold for producing detectable circulating cytokine elevations. This "idle engine at high RPM" model would explain:

    - *Normal cytokines:* The activation is intracellular (metabolic, calcium-dependent), not secretory
    - *Normal cell counts:* Cells are present, just burning energy on inappropriate low-level activation
    - *Reduced NK cytotoxicity:* Cells are already partially degranulated from chronic low-level activation and cannot mount acute responses to laboratory challenges
    - *Metabolic exhaustion:* Chronic low-level activation is a continuous energy drain, contributing to the bioenergetic crisis

This model predicts that ME/CFS immune cells should show elevated baseline metabolic activity (oxygen consumption, glucose uptake) compared to controls despite producing normal cytokine levels, and that their _stimulation response_ (fold-change upon challenge) will be blunted even though their _resting_ state appears overactive. The CureME biobank finding that ME/CFS showed reduced anellovirus but normal herpesvirus seroprevalence would be consistent: herpesvirus control requires adaptive immunity (which may be impaired), while anellovirus clearance relies on innate mechanisms that are constitutively overactive.

*Falsification:* ME/CFS immune cells show normal or reduced baseline metabolic activity (not elevated), and anellovirus depletion is not replicated in independent cohorts.
] <spec:anellovirus-hyperimmune>

== Autoimmunity in ME/CFS
<sec:autoimmunity>

Evidence increasingly supports autoimmune mechanisms in at least a subset of ME/CFS patients.

=== Autoantibodies Identified
<sec:autoantibodies>

==== Anti-Nuclear Antibodies

Anti-nuclear antibody (ANA) prevalence is elevated in ME/CFS, with 15–25% of patients testing positive compared to 5–10% in healthy individuals @Nishikai2007. Various ANA patterns are observed, with positive ANA possibly indicating general immune dysregulation rather than a specific autoimmune disease.

#open-question(title: [Clinical Significance of ANA in ME/CFS])[
Whether elevated ANA titres in ME/CFS patients represent a pathogenic autoimmune process, an epiphenomenon of systemic immune dysregulation, or a prognostically relevant subgroup marker remains unresolved.
] <q:ana-clinical-significance>

#open-question(title: [Can Calprotectin Serve as an Objective PEM Biomarker?])[
Given the strong correlation between calprotectin and NET burden @Hetland2022
and the role of NETosis in post-viral thrombo-inflammation @Krinsky2023,
serial calprotectin measurement before and after standardized exertion protocols
(e.g., 2-day CPET) could test whether NET release mediates post-exertional malaise.
If calprotectin rises predictably 6–24 hours post-exertion and correlates with
subsequent symptom severity, it would provide an inexpensive, objective, real-time
biomarker for the signature feature of ME/CFS.
] <q:calprotectin-pem>

Son et al. @Son2023 tracked 106 COVID-19 convalescent patients longitudinally and found that anti-nuclear antibody (ANA) positivity at 3 months post-infection predicted persistent symptoms (fatigue, dyspnoea) at 12 months. Specific antibodies targeting U1-snRNP and SS-B/La correlated with fatigue severity; elevated TNF-$alpha$ independently predicted both ANA persistence and symptom continuation. The autoantibody profile resembled early connective tissue disease, suggesting post-viral autoimmunity as a distinct endotype of long COVID with implications for ME/CFS subgroups.
Study: ($n=106$, prospective cohort 3–12 months post-infection, European Respiratory Journal, certainty: 0.65, partially replicated).
The temporal relationship between NETosis and autoantibody emergence is now
supported by converging evidence: viral-triggered NETosis generates citrullinated
autoantigens @Monsalve2025, and anti-nuclear autoantibodies detectable at
3 months post-infection—the expected timeframe for a germinal centre reaction
initiated by NET-derived antigens—predict symptom persistence at 12
months @Son2023. The causal relevance of these autoantibodies is
established by passive transfer experiments: purified IgG from Long COVID
patients reproduces neurological symptoms in recipient
mice @GuedesDeSa2024. Taken together, these findings position NETosis as
the upstream driver and autoantibodies as the downstream effectors of a unified
post-viral autoimmune cascade.

==== G-Protein-Coupled Receptor (GPCR) Autoantibodies

GPCR autoantibodies represent one of the most well-studied autoantibody classes in ME/CFS, with substantial evidence for their pathogenic role. The B cell abnormalities described in Section @sec:b-cells likely contribute to autoantibody generation. For comprehensive coverage of GPCR autoantibodies—including initial discovery, validation across cohorts, correlation with symptom severity, downstream mechanisms, and therapeutic targeting through immunoadsorption, plasma cell depletion, and direct neutralization—see the detailed discussion in Section @sec:b-cells.

==== Anti-Neuronal Antibodies

Antibodies targeting nervous system components have been identified in ME/CFS, including anti-ganglioside antibodies, antibodies against voltage-gated ion channels, and anti-neuronal surface antigen antibodies. These autoantibodies may contribute to the neurological symptoms observed in the condition.

=== Autoimmune Mechanisms
<sec:autoimmune-mechanisms>

==== Molecular Mimicry

Molecular mimicry occurs when structural similarity between pathogen and self-antigens leads antibodies or T cells generated against an infection to cross-react with self-tissues. This phenomenon has been documented for several viruses associated with ME/CFS and may explain the link between infection and subsequent autoimmunity.

==== Epitope Spreading

Epitope spreading occurs when tissue damage exposes new antigens to the immune system. The initial immune response causes tissue injury, releasing self-antigens that trigger new autoimmune responses. This leads to progressive expansion of autoimmune targets over time.

==== Loss of Self-Tolerance

Loss of self-tolerance occurs when regulatory mechanisms fail. Treg dysfunction permits autoreactive cells to escape suppression, while B cell tolerance checkpoints fail to eliminate autoreactive B cells. Chronic inflammation further promotes autoimmunity by creating a permissive environment for autoimmune responses.

#limitation(title: [Autoimmune Mechanisms: Extrapolated from Other Diseases])[
Molecular mimicry, epitope spreading, and loss of self-tolerance are well-characterized mechanisms in established autoimmune diseases (SLE, rheumatoid arthritis, type 1 diabetes). Their role in ME/CFS is inferred by analogy, not demonstrated:

    - No specific molecular mimicry target (pathogen epitope $\to$ self-antigen cross-reaction) has been identified in ME/CFS.
    - Epitope spreading has not been documented longitudinally in ME/CFS cohorts.
    - Treg dysfunction is reported in ME/CFS but has not been causally linked to loss of tolerance versus being a downstream consequence of chronic immune activation.
    - The proportion of ME/CFS patients with a genuinely autoimmune etiology (as opposed to immune dysregulation without autoimmunity) remains unknown.

]

#hypothesis(title: [Frustrated NETosis: Incomplete NET Formation as Autoantigen Generator])[
If ME/CFS neutrophils share the stress-responsive mitochondrial failure phenotype
described in depression @Cullen2026ATP, NETosis initiation may proceed normally
but completion may fail due to energy insufficiency. This “frustrated NETosis”
would release citrullinated autoantigens @Monsalve2025 without effective
pathogen trapping, reconciling the suppressed neutrophil activation proteome
observed by Hoel et al. @Hoel2026proteome with persistent NET-driven
thrombo-inflammation @Krinsky2023 @Romano2022.

*Testable prediction:* Ex vivo NETosis assays in ME/CFS neutrophils should
show reduced NET completion rates (lower percentage of fully extruded NETs) but
equivalent or elevated citrullinated histone release compared to healthy controls.

*Treatment implication:* If confirmed, DNase I therapy @Veras2023
would be particularly important for clearing incompletely formed NETs that the
body cannot resolve normally.

Study: (cross-paper synthesis, certainty: 0.35, untested).
] <hyp:frustrated-netosis>

=== Developmental Immune Tolerance and Recovery
<sec:developmental-tolerance>

The autoimmune mechanisms described above—molecular mimicry, epitope spreading, and loss of self-tolerance—operate in both pediatric and adult ME/CFS patients. Yet pediatric patients recover at dramatically higher rates (54–94%) than adults ($lt.eq$22%), often despite similar autoantibody profiles at disease onset. This paradox suggests that developing immune systems may possess unique mechanisms for eliminating aberrant immune memory that adult systems lack.

#hypothesis(title: [Immune Memory Pruning in Development])[

*Certainty: 0.50.* Pediatric recovery from ME/CFS may be facilitated by developmental immune tolerance mechanisms that actively delete or reprogram aberrant immune memory cells—a process termed “immune memory pruning.” The developing immune system, particularly during puberty and adolescence, appears to undergo quality control checkpoints that can eliminate autoreactive B cells, exhausted T cells, and pathological memory populations. The certainty level reflects: (1) well-characterized developmental changes in peripheral B and T cell tolerance mechanisms; (2) evidence for thymic output through adolescence; (3) documented sex hormone effects on immune regulation; (4) however, the specific mechanisms enabling clearance of ME/CFS-associated autoantibodies remain unclear; (5) the distinction between resolution via immune pruning versus other pediatric recovery mechanisms (glial plasticity, HSC regeneration, recovery capital) cannot yet be resolved.

Pediatric recovery from ME/CFS may be facilitated by developmental immune tolerance mechanisms that actively delete or reprogram aberrant immune memory cells—a process we term “immune memory pruning.”

*Mechanistic basis:*

The developing immune system is not merely a smaller version of the adult system; it is qualitatively different in its capacity for self-correction. Several mechanisms may contribute to immune memory pruning:

_Peripheral B cell tolerance checkpoints._ Autoreactive B cells that escape central tolerance in the bone marrow normally undergo peripheral tolerance mechanisms including anergy (functional unresponsiveness), receptor editing (modification of the B cell receptor to eliminate autoreactivity), and deletion (apoptosis of autoreactive cells) @JExpMed2024bcell @FrontImmunol2024thymic. These peripheral checkpoints are most active during immune development and may decline with age. Recent evidence demonstrates that impaired clearance of autoreactive B cells due to disruption of negative selection barriers causes autoantibody-producing B cells to mature and subsequently differentiate into plasma cells @JExpMed2024bcell. In children with ME/CFS, autoantibodies generated during acute illness may be subject to these active tolerance mechanisms, leading to gradual elimination of autoreactive B cell clones. In adults, with attenuated peripheral tolerance, these clones persist.

_Thymic contribution to T cell repertoire._ The thymus remains highly active through adolescence, continuously generating naive T cells that have undergone rigorous negative selection against self-antigens. This ongoing thymic output may dilute and eventually replace dysfunctional T cell populations (exhausted cells, aberrantly activated cells) that accumulate during ME/CFS. Adult thymic involution eliminates this regenerative capacity, leaving dysfunctional T cell populations to persist.

_Pubertal immune reorganization._ Puberty involves substantial reorganization of immune function, driven by sex hormones and growth factors. This reorganization period may include “quality control” checkpoints that assess immune memory and eliminate populations that fail to meet tolerance criteria. Adolescents who develop ME/CFS before completing this reorganization may benefit from these checkpoints; those who develop ME/CFS after puberty have already passed this window.

_Regulatory T cell plasticity._ Tregs in children show greater plasticity and proliferative capacity than adult Tregs. Pediatric ME/CFS patients may mount more effective regulatory responses that suppress autoreactive populations, eventually leading to their deletion through lack of antigenic stimulation.

*Testable predictions:*

This hypothesis generates several falsifiable predictions:

    - _Autoantibody trajectory differences:_ In recovering pediatric patients, autoantibody titers (particularly GPCR autoantibodies) should decline over time, whereas in non-recovering adults, titers should remain stable or increase. Longitudinal measurement of autoantibody levels in pediatric versus adult cohorts would test this prediction.

    - _Tolerance gene signatures:_ Peripheral blood from recovering pediatric patients should show gene expression signatures of active tolerance mechanisms—upregulation of genes involved in receptor editing (RAG1, RAG2), anergy (CBLB, ITCH), and deletion (FAS, BIM)—that are absent in adults. RNA-seq comparing pediatric recoverers versus non-recoverers versus adults could identify these signatures.

    - _Thymic output markers:_ Recent thymic emigrants (CD31#super[+] naive CD4 T cells, T cell receptor excision circles or TRECs) should correlate with recovery probability. Patients with higher thymic output, regardless of age, should have better prognosis.

    - _B cell subset dynamics:_ Recovering patients should show declining frequencies of CD21#super[lo] atypical memory B cells (associated with chronic immune activation) and autoantibody-secreting plasmablasts, with increasing naive B cell proportions.

    - _Pubertal timing effects:_ Among pediatric patients, those who develop ME/CFS pre-pubertally (Tanner stages 1–2) should have higher recovery rates than those developing ME/CFS post-pubertally (Tanner stages 4–5), as the former still have pubertal immune reorganization ahead of them.

*Treatment implications:*

If immune memory pruning explains pediatric recovery advantage, several therapeutic strategies could be explored to induce analogous processes in adults:

_Tolerance-inducing therapies._ Low-dose antigen administration can induce peripheral tolerance in autoimmune conditions. If specific autoantigens driving ME/CFS are identified (e.g., GPCR peptides), tolerance induction protocols could be developed.

_Regulatory T cell therapy._ Expansion and infusion of autologous Tregs could enhance regulatory mechanisms that suppress autoreactive populations.

_Timed B cell depletion._ Rituximab showed mixed results in ME/CFS trials, but the immune memory pruning hypothesis suggests that B cell depletion might be more effective in younger patients or when combined with therapies that prevent re-emergence of autoreactive clones during B cell reconstitution. The timing of B cell depletion relative to immune developmental stage may be critical.

_Thymic rejuvenation._ Experimental approaches to restore thymic function (IL-7 therapy, sex steroid ablation, thymic transplantation) could potentially restore the naive T cell output that enables immune repertoire renewal.

*Limitations and caveats:*

This hypothesis remains speculative and requires validation. Alternative explanations for the pediatric recovery advantage exist, including greater metabolic reserves, neural plasticity, psychosocial factors, and ascertainment bias (milder cases preferentially diagnosed in children). The hypothesis does not explain why some children do not recover or why rare adults do recover. Additionally, even if the hypothesis is correct, translating developmental tolerance mechanisms into adult therapeutics presents substantial challenges.
] <hyp:immune-pruning>

*Enterochromaffin-Vagal Pathway: Gut-Immune-Brain Axis*

Recent work by Wirth and Scheibenbogen (2025)  on the enterochromaffin-vagal pathway provides novel insights into gut-immune-brain interactions that may influence autoimmune processes in ME/CFS. The full mechanistic evidence chain—butyrate-enterochromaffin serotonin-vagal signaling—is developed in Section @sec:gut-brain of Chapter @ch:gut-microbiome; here we focus on its immune dysregulation implications:

#speculation(title: [Enterochromaffin-Vagal Pathway in ME/CFS Autoimmunity])[
*Certainty: 0.35.* The enterochromaffin-vagal pathway may contribute to immune dysregulation in ME/CFS through multiple mechanisms . Gut dysbiosis with reduced butyrate production   impairs enterochromaffin cell serotonin synthesis , leading to reduced vagal afferent signaling @Barton2023 . This vagal dysfunction may disrupt immune regulation through:

*Potential immune mechanisms:*

    - *Reduced cholinergic anti-inflammatory pathway activity*: Vagal efferents inhibit cytokine production via the cholinergic anti-inflammatory pathway @Barton2023. Reduced vagal tone may impair this regulatory mechanism.
    - *Altered gut immune homeostasis*: Vagal dysfunction may disrupt gut-associated lymphoid tissue (GALT) regulation, contributing to intestinal inflammation and bacterial translocation .
    - *Neuro-immune feedback disruption*: The vagus nerve provides afferent input to brain regions that regulate immune function, including the hypothalamus and brainstem .
    - *MCAS bidirectional amplification*: Mast cells and enterochromaffin cells interact in the gut lamina propria . Reduced vagal tone removes cholinergic inhibition of mast cell degranulation @Barton2023, potentially amplifying mast cell activation syndrome (MCAS) in susceptible patients  . Conversely, chronic histamine elevation may plausibly impair enterochromaffin function and worsen vagal afferent input (speculative; no direct ME/CFS evidence). This bidirectional loop may contribute to the observed co-occurrence of MCAS and autonomic dysfunction in ME/CFS .

*Implications for autoimmunity:*

    - Provides a mechanistic link between gut dysbiosis and systemic immune dysregulation
    - Suggests that vagal stimulation therapies may have immunomodulatory effects
    - Explains how gut-directed therapies (probiotics, butyrate) might influence systemic inflammation
    - Offers testable hypotheses for future research on gut-immune-brain interactions

*Limitations:*

    - Preprint status (not peer-reviewed)
    - Direct evidence for vagal-immune interactions in ME/CFS is limited
    - Causality and directionality remain uncertain
    - Clinical implications require validation in controlled studies

] <spec:enterochromaffin-autoimmune>

#speculation(title: [EBV Reactivation Impairs Gut-Vagal Signalling via IDO2])[
*Certainty: 0.25.* EBV reactivation is documented in ME/CFS @hwang2023viral. EBV infection induces interferon-$gamma$ @Huang2020IDO, which upregulates IDO2, diverting tryptophan into the kynurenine pathway @phair2019ido  and depleting the substrate available for enterochromaffin serotonin synthesis . Simultaneously, kynurenine pathway products—particularly quinolinic acid—may impair mitochondrial function via PARP-mediated NAD#super[+] depletion @Kavyani2022kynurenine @Dehhaghi2022kynurenine , creating both substrate depletion and cellular dysfunction in enterochromaffin cells.

This chain (EBV reactivation $\to$ IFN-$gamma$ $\to$ IDO2 $\to$ tryptophan depletion $\to$ impaired enterochromaffin serotonin $\to$ vagal afferent dysfunction) may explain why post-EBV ME/CFS patients often have prominent autonomic dysfunction @hwang2023viral. If correct, patients with high EBV antibody titers or active reactivation would show higher kynurenine/tryptophan ratios, lower platelet serotonin, and more severe autonomic impairment (lower HRV) than non-EBV cases. 5-HTP supplementation, which bypasses the IDO2 diversion point , may be particularly relevant for this subgroup.

*Limitations:* The EBV $\to$ IDO2 $\to$ gut-vagal chain involves multiple extrapolation steps, each with limited direct ME/CFS evidence. Quinolinic acid effects on enterochromaffin cells have not been studied in ME/CFS. Causal directionality between EBV reactivation and IDO2 upregulation in ME/CFS is unestablished.
] <spec:ebv-ido2-gut-vagal>

#speculation(title: [Autoantibody Inefficiency Hypothesis])[

*Certainty: 0.35.* This is a novel mechanistic reinterpretation of existing GPCR autoantibody data. While consistent with published correlational and therapeutic findings   , the core claim—that autoantibodies increase effort-per-output rather than simply blocking or activating receptors—has not been directly tested. Functional assays distinguishing partial agonism from complete blockade in ME/CFS are absent, and the “effort-to-output ratio” metric does not yet have a validated measurement instrument.

The standard model of autoantibody pathogenesis posits binary effects: agonist antibodies overstimulate receptors, antagonist antibodies block them. However, emerging evidence suggests GPCR autoantibodies in ME/CFS may operate through a more subtle mechanism—*increasing the physiological “effort” required per unit of functional output* rather than preventing output entirely.

*Conceptual Framework.*

Consider two scenarios:

    - *Complete blockade*: A receptor antagonist prevents signal transduction. To achieve a given output, the system compensates by upregulating receptor expression, increasing ligand production, or activating alternative pathways. This produces a stable new equilibrium with normal output at higher baseline cost.

    - *Partial interference*: An autoantibody binds receptors with partial agonist/antagonist activity @Wallukat2021gpcr_mechanisms, causing stochastic signal degradation. Some signals succeed, others fail. The system cannot establish stable compensation because the interference is probabilistic rather than deterministic. To achieve reliable output, the system must increase signal redundancy, pathway cross-talk, and error-correction mechanisms—dramatically raising metabolic cost per successful signal.

The autoantibody inefficiency hypothesis proposes that ME/CFS GPCR autoantibodies function primarily through scenario 2: they increase the _effort-to-output ratio_ rather than blocking output capacity.

*Mechanistic Basis.*

Multiple mechanisms could contribute to effort-per-output elevation:

_Partial agonism and desensitization._ GPCR autoantibodies can act as partial agonists, activating receptors less efficiently than endogenous ligands while simultaneously triggering desensitization cascades @Wallukat2021gpcr_mechanisms. This creates a state of chronic low-level activation paired with reduced receptor availability. Functional output requires overcoming both the partial antagonism and the desensitization state, necessitating increased ligand release, receptor cycling, and downstream amplification.

_Receptor internalization and trafficking dysregulation._ Autoantibody binding can trigger receptor internalization through arrestin-mediated pathways . Unlike normal agonist-induced internalization (which promotes receptor recycling), autoantibody-mediated internalization may produce abnormal trafficking patterns, sequestering receptors in non-productive compartments. The cell must continuously synthesize new receptors to maintain surface expression, increasing basal metabolic demand.

_Compensatory pathway activation._ When primary signaling pathways operate inefficiently due to autoantibody interference, cells activate compensatory mechanisms . In monocytes, GPCR autoantibody binding triggers production of MIP-1$delta$, PDGF-BB, and TGF-$beta$3—cytokines that activate alternative inflammatory and stress-response pathways. These compensatory cascades consume ATP, generate reactive oxygen species, and demand continuous cellular attention, raising the metabolic cost of maintaining homeostasis.

_Stochastic signaling noise._ If autoantibodies cause intermittent rather than consistent receptor modulation, downstream systems cannot adapt through simple upregulation. Instead, they must implement redundancy: multiple parallel pathways, error-checking mechanisms, and repeated signal verification. This transforms efficient point-to-point signaling into expensive consensus-based communication, analogous to the difference between a direct phone call and a committee meeting requiring majority vote.

*Predictions and Testable Hypotheses.*

The inefficiency model generates distinct predictions from the simple blockade/activation model:

    - *Effort-symptom dissociation*: Autoantibody-positive patients should show higher perceived effort for equivalent objective tasks compared to autoantibody-negative patients with similar disability levels.

    - *Titer correlation with effort, not capacity*: GPCR autoantibody titers should correlate more strongly with effort-per-task measures than with absolute functional capacity. High-titer patients might maintain near-normal performance briefly but report extreme subjective effort and experience rapid decompensation.

    - *Metabolic cost elevation*: During controlled tasks, autoantibody-positive patients should show elevated oxygen consumption, lactate production, or other metabolic markers for equivalent work output compared to autoantibody-negative patients.

    - *Immunoadsorption reduces effort-per-output*: The primary benefit of immunoadsorption should be reduced subjective effort for equivalent tasks, measurable before changes in absolute capacity. Stein et al.\ showed SF-36 improvements , but effort-normalized metrics were not reported.

    - *PEM pattern differences*: If autoantibodies increase baseline effort, PEM in autoantibody-positive patients should follow an effort-accumulation model (gradual exhaustion of compensatory reserves) rather than a damage-repair model (discrete injury requiring recovery).

    - *CNS vs peripheral manifestations*: If the inefficiency mechanism operates primarily through adrenergic and muscarinic receptors, symptoms should concentrate in systems dependent on rapid, high-frequency receptor signaling: autonomic regulation, attention/vigilance, fine motor control. Gross muscle strength might be relatively preserved despite profound fatigue.

*Existing Evidence Alignment.*

Several published findings align with the inefficiency model:

    - *Correlation patterns*: Sotzny et al.\ found GPCR autoantibody levels correlated with fatigue severity, muscle pain, cognitive impairment, and autonomic dysfunction —all effort-dependent symptoms that worsen with sustained activity.

    - *Heterogeneous treatment response*: In the Stein et al.\ immunoadsorption study, 70% responded but 30% did not . The inefficiency model predicts that patients with primary autoantibody-driven disease should respond dramatically, while those with additional pathology may show limited benefit.

    - *Delayed recovery after antibody removal*: While autoantibody titers drop immediately (77% reduction in Stein et al.), clinical improvement evolves over weeks to months. This delay is inconsistent with simple receptor unblocking but consistent with gradual normalization of compensatory mechanisms.

    - *Monocyte reprogramming persistence*: Hackel et al.\ showed GPCR autoantibodies reprogram monocyte cytokine production . This inflammatory signature might persist even after antibody removal if monocytes have been epigenetically reprogrammed.

*Clinical Implications.*

If the inefficiency model is correct, treatment strategies should focus on:

    - *Early intervention*: Before compensatory mechanisms become maladaptive, autoantibody removal might produce rapid recovery.

    - *Combination therapy*: Immunoadsorption or plasma cell depletion (daratumumab ) to remove autoantibodies, paired with therapies supporting cellular energy metabolism (CoQ10, NADH) to offset elevated effort costs during recovery.

    - *Effort-based rather than capacity-based pacing*: For autoantibody-positive patients, effort-tracking (heart rate variability, subjective effort scales) might be more predictive of crashes than activity level alone.

    - *Patient selection for trials*: The inefficiency model predicts a subgroup—autoantibody-positive, relatively acute onset, without severe mitochondrial damage—should show dramatic response to antibody removal.

*Relationship to Other Hypotheses.*

The autoantibody inefficiency hypothesis complements rather than contradicts other ME/CFS mechanisms:

    - *Vicious cycles*: Elevated effort-per-output increases metabolic demand, potentially triggering mitochondrial stress, oxidative damage, and further dysfunction . The inefficiency becomes self-reinforcing.

    - *Autonomic dysfunction*: If autoantibodies target adrenergic receptors with partial agonist effects, the autonomic nervous system operates in a state of chronic low-level activation paired with reduced responsiveness.

    - *Immune memory*: The immune memory pruning hypothesis (Hypothesis @hyp:immune-pruning) suggests pediatric patients might clear autoreactive plasma cell populations, while adults cannot—explaining age-related prognosis differences in autoantibody-driven disease.

*Limitations and Uncertainties.*

    - *Mechanistic heterogeneity*: Different autoantibodies likely have different effects. Lumping all GPCR autoantibodies together may obscure subtype-specific mechanisms.

    - *Assay limitations*: As noted by Vernino et al. , current ELISA assays measure antibody binding but not functional effects. Functional assays measuring receptor activation, desensitization kinetics, and downstream signaling are needed.

    - *Causal uncertainty*: Autoantibodies correlate with symptom severity but correlation is not causation. They may be a consequence rather than a cause of ME/CFS.

    - *Quantification challenges*: “Effort per output” is difficult to measure objectively. Developing validated effort-efficiency metrics is essential for testing this hypothesis.

    - *Alternative explanations*: Elevated perceived effort could arise from CNS dysfunction (altered interoception, motivation circuits) rather than peripheral receptor interference.

Despite these limitations, the inefficiency hypothesis provides a coherent framework for understanding why approximately 30% of ME/CFS patients have elevated GPCR autoantibodies, why these correlate with specific symptom domains, why immunoadsorption produces gradual rather than immediate improvement, and why outcome heterogeneity exists.
] <spec:autoantibody-inefficiency>

== Connections to Allergies and Mast Cell Activation
<sec:allergies-mast-cells>

Many ME/CFS patients report increased sensitivity to foods, medications, and environmental factors.

=== Mast Cell Activation Syndrome (MCAS)
<sec:mcas>

MCAS is the diagnosable subset of the broader "mast cell / histaminergic dysregulation" domain (Domain 6 in the multi-domain framework; Section @sec:domain6-mast-cell). Not all patients with histaminergic symptoms meet formal MCAS criteria.

==== Overlap with ME/CFS

MCAS involves inappropriate mast cell degranulation:

    - Substantial symptom overlap with ME/CFS
    - Fatigue, cognitive dysfunction, pain common in both
    - May represent comorbidity or shared pathophysiology
    - Estimated 30–50% of ME/CFS patients may have MCAS features 

==== Mast Cell Phenotype Abnormalities in ME/CFS

Recent research provides objective evidence of mast cell dysfunction in ME/CFS :

    - *Naïve mast cells*: Significant increase in CD117#super[+]CD34#super[+]Fc$epsilon.alt$RI#super[-]chymase#super[-] naïve mast cells in moderate and severe ME/CFS ($p\<0.05$)
    - *Activation markers*: Elevated CD40 ligand and MHC-II receptors on differentiated mast cells in severe cases
    - *Clinical correlation*: Mast cell abnormalities more pronounced in severe disease
    - *Implication*: Demonstrates measurable cellular pathology supporting mast cell involvement in ME/CFS pathophysiology

==== Histamine and Other Mediators

Mast cells release numerous vasoactive and inflammatory mediators :

    - *Histamine*: Causes vasodilation, vascular permeability, brain fog, orthostatic intolerance
    - *Platelet-activating factor (PAF)*: Triggers vascular leakage, amplifies mast cell activation (vicious cycle)
    - *Tryptase*: Marker of mast cell activation; diagnostic if elevated during symptomatic episodes
    - *Prostaglandins*: Inflammatory mediators contributing to pain and fatigue
    - *Leukotrienes*: Cause bronchoconstriction, vascular dysfunction, inflammation
    - *Cytokines*: IL-6, IL-8, TNF-$alpha$, VEGF contribute to systemic inflammation

==== Vascular Pathomechanisms

Mast cell activation shares pathogenic mechanisms with ME/CFS through vascular dysfunction :

    - *Spillover of vasoactive mediators* into systemic circulation
    - *Histamine's vascular effects*: Worsens orthostatic intolerance via vasodilation and blood pooling
    - *$beta_2$-adrenergic receptor dysfunction*: Amplifies symptoms through impaired vascular regulation
    - *Clinical correlation*: ME/CFS patients with MCAS and orthostatic intolerance reported symptom alleviation significantly more often following mast cell-targeted treatment ($p\<0.0001$) 

==== Diagnostic Criteria

MCAS diagnosis requires:

    - Typical symptoms (flushing, hives, GI symptoms, cognitive dysfunction, fatigue)
    - Elevated mast cell mediators during symptomatic episodes:
    
        - Tryptase: 20% increase plus 2 ng/mL rise from baseline (must be obtained within 1–4 hours)
        - Urinary N-methylhistamine, prostaglandin D2, or leukotriene E4
    
    - Response to mast cell-directed therapy

*Diagnostic challenge*: Only small percentage of ME/CFS patients have elevated tryptase; many may have MCAS features without meeting formal diagnostic criteria.

==== Treatment Implications and Evidence

*Critical Evidence on Antihistamine Therapy*

*Negative trial*: H1 antihistamine alone (terfenadine) showed NO benefit in double-blind RCT of CFS :

    - No improvement in symptoms, functioning, or health perceptions
    - High-quality evidence demonstrates H1 monotherapy insufficient

*Positive case evidence*: H1+H2 combination showed dramatic benefit in Long COVID patient meeting ME/CFS criteria :

    - Loratadine OR fexofenadine (H1) + famotidine (H2): “helpful with energy and cognitive dysfunction”
    - Discontinuation test: Stopping medications $arrow.r$ “increased fatigue and increased cognitive dysfunction”
    - Resumption: Rapid improvement upon restarting
    - Cromolyn 400 mg QID: Heart rate fell from 130–140 bpm to 100–105 bpm
    - Quercetin 1000 mg BID: “Improvement in fatigue and allergic symptoms”

*Key insight*: *H1+H2 combination required*; H1 alone insufficient.

*Antihistamine and Mast Cell Stabilizer Options*

*H1 antihistamines*:

    - *Standard*: Loratadine, cetirizine, fexofenadine
    - *Superior*: Rupatadine (triple action: H1 antagonist + PAF antagonist + mast cell stabilizer) -Gonzalez2024 
    
        - Network meta-analysis: Rupatadine 20 mg highest rank (SUCRA 99.7%) for symptom control
        - 31$times$ more potent than loratadine at PAF antagonism (IC#sub[50] 4.6 vs 142 $mu$M)
        - Inhibits mast cell degranulation: IL-8 (80%), VEGF (73%), histamine (88%)
        - PAF antagonism addresses vascular pathomechanisms in ME/CFS
    

*H2 antihistamines*:

    - Famotidine 20–40 mg daily (BID dosing)
    - Essential for combination therapy with H1 blockers

*Mast cell stabilizers*:

    - *Quercetin* (natural): 500–1000 mg daily
    
        - MORE effective than cromolyn in vitro 
        - Reduced contact dermatitis $>$50% in 8 of 10 patients
        - Over-the-counter, well-tolerated
    
    - Cromolyn sodium 200–400 mg QID (prescription)
    - Ketotifen 1–2 mg BID (not FDA-approved in US)

*Amitriptyline* (dual benefit for pain/sleep + mast cells):

    - 10–50 mg bedtime
    - Specific mast cell inhibition: Reduces IL-8, VEGF, IL-6, histamine release 
    - *Unique to amitriptyline*: Other antidepressants (bupropion, citalopram, atomoxetine) do NOT inhibit mast cells 
    - Mechanism: Modulates intracellular calcium in mast cells

*Low-histamine diet*:

    - Avoid aged/fermented foods, alcohol, cured meats, leftovers $>$24 hours
    - 2-week strict trial, then gradual reintroduction

#achievement(title: [Evidence for H1+H2 Combination Therapy in Post-Viral Fatigue])[
While a double-blind RCT demonstrated that H1 antihistamine monotherapy (terfenadine) provides no benefit in CFS , emerging evidence from Long COVID case reports  suggests that *H1+H2 combination therapy* may be effective for the subset of ME/CFS patients with mast cell activation features. The discontinuation-rechallenge response (symptom worsening upon stopping, improvement upon restarting) provides compelling evidence for treatment effect. Superior H1 agents with additional PAF antagonism and mast cell stabilization properties (rupatadine) may offer advantages over standard antihistamines -Gonzalez2024 . ME/CFS patients with documented allergies, orthostatic intolerance, or MCAS features warrant empirical trial of combination antihistamine therapy.
] <ach:h1h2-combination>

Patient communities consistently report that a subset of ME/CFS and Long COVID patients experience meaningful symptom improvement with MCAS-directed therapies, even absent formal MCAS diagnosis.

*Commonly reported benefits:*

    - Reduced “brain fog”
    - Fewer panic-like episodes
    - Decreased flushing
    - Improved gastrointestinal symptoms

*Typical empirical approach:* H1+H2 antihistamine combination (preferably rupatadine + famotidine) with optional quercetin and low-histamine diet for 2–4 weeks. Discontinuation testing confirms treatment effect.

The low risk profile and potential for significant benefit in the MCAS-overlap subgroup justify consideration of empirical trials in patients with compatible symptom patterns (flushing, urticaria, food reactions, autonomic episodes, documented allergies).
#speculation(title: [MCAS Energy Amplifier Hypothesis])[

*Certainty: 0.40.* Mechanistically plausible given documented AMPK-mast cell regulation and energy-dependent degranulation @Theoharides2021Cells, and supported by observational data showing MCAS-ME/CFS comorbidity   and ketotifen PEM reduction . However, a direct causal link from mast cell activation to ME/CFS energy deficit worsening has not been demonstrated in controlled studies, and the reported ketotifen benefits lack randomized controlled confirmation.

*Core proposition:* Mast cell activation episodes create acute energy demands that worsen pre-existing CNS energy deficits in ME/CFS, establishing a positive feedback loop that amplifies PEM severity and frequency.

*Energy Cost of Mast Cell Activation.*

Mast cell degranulation and the subsequent histamine cascade impose substantial metabolic demands @Theoharides2021Cells:

    - *Degranulation energetics*: IgE-mediated mast cell activation utilizes ATP and rapidly induces glycolysis. While oxidative phosphorylation generates 32 ATP per glucose molecule, glycolysis produces only 2 ATP per glucose but can metabolize many glucose molecules simultaneously, creating “short bursts of large amounts of ATP” to support the degranulation process.

    - *AMPK dysregulation*: AMP-activated protein kinase (AMPK), the cell's central energy sensor, normally provides negative feedback to suppress mast cell activation when energy is low. ERK1/2 signaling during Fc$epsilon.alt$RI activation can abolish this AMPK-dependent brake @Theoharides2021Cells.

    - *Systemic energy diversion*: Managing the histamine cascade (vasodilation, inflammatory response, immune mediator production) requires substantial metabolic resources systemically, not just within mast cells themselves.

    - *CNS histamine burden*: Mast cells serve as the predominant histamine source within the brain ($>$50% of total CNS histamine). Excessive histamine release from brain mast cells or peripheral histamine crossing a disrupted blood-brain barrier can impair CNS energy homeostasis .

*MCAS Prevalence and Clinical Overlap.*

The substantial comorbidity between MCAS and ME/CFS suggests shared or mutually reinforcing pathophysiology:

    - *Prevalence*: Estimates range from 25.3%  to 30–50%  of ME/CFS patients meeting MCAS criteria or exhibiting clinically relevant mast cell activation.

    - *Progressive involvement*: Mast cell activation prevalence *increases over the disease course* , suggesting that chronic energy deficit may progressively impair mast cell regulation.

    - *Orthostatic overlap*: Patients with both MCAS and orthostatic intolerance (particularly POTS) show significantly higher treatment response rates to mast cell-directed therapy compared to OI alone ($p\<0.0001$)  .

    - *Cellular abnormalities*: Objective evidence of altered mast cell phenotypes in ME/CFS includes increased na\"ive mast cells and elevated activation markers on differentiated mast cells in severe cases .

*Proposed Positive Feedback Mechanism.*

The hypothesis posits a vicious cycle:

    - *Baseline energy deficit*: ME/CFS patients operate with limited CNS energy reserves (see Chapter @ch:energy-metabolism and the selective dysfunction hypothesis, Section @sec:selective-dysfunction).

    - *Impaired immune regulation*: Energy scarcity compromises AMPK-mediated negative regulation of mast cells and other energy-intensive immune processes.

    - *MCAS flare*: Triggers (allergens, stress, exertion, infections) provoke mast cell degranulation in the context of reduced inhibitory control.

    - *Energy consumption surge*: Degranulation and histamine cascade management acutely “steal” energy from an already depleted budget, particularly impacting the CNS given brain mast cells' role as the primary CNS histamine source.

    - *Worsened energy deficit*: The acute energy drain deepens the baseline deficit, further impairing mast cell regulation and increasing vulnerability to subsequent triggers.

    - *PEM amplification*: Energy depletion precipitates or worsens post-exertional malaise episodes, with the severity and duration potentially proportional to the degree of mast cell involvement.

This model predicts that MCAS episodes function as *energy amplifiers*: each activation event not only consumes energy directly but also lowers the threshold for future activations and crashes.

*Testable Predictions.*

    - *Temporal relationship*: MCAS flares (flushing, urticaria, GI symptoms, autonomic instability) should frequently precede or coincide with PEM crash onset.

    - *Biomarker correlations*: Elevated tryptase and histamine levels during symptomatic periods should correlate with reduced markers of energy availability (e.g., decreased ATP/ADP ratios, elevated lactate).

    - *Severity correlation*: MCAS symptom severity should predict PEM severity and frequency, independent of exertional triggers.

    - *Threshold effects*: Prophylactic mast cell stabilization should raise the PEM threshold—patients should tolerate greater activity levels without crashing when mast cells are pharmacologically stabilized.

    - *Treatment response pattern*: Mast cell stabilizers should reduce crash frequency and severity beyond their direct anti-allergic effects, even in patients without formal MCAS diagnosis.

*Supporting Evidence.*

_Clinical evidence:_ Retrospective analyses of ketotifen (a mast cell stabilizer with H1 and leukotriene antagonism) in ME/CFS and Long COVID patients showed substantial PEM reduction in 77–95% of patients who continued treatment . This suggests mast cell stabilization specifically targets PEM mechanisms, not merely allergic symptoms. ME/CFS patients with documented MCAS and OI features respond significantly better to mast cell-directed treatment ($p\<0.0001$)  .

_Mechanistic plausibility:_ AMPK links cellular energy status directly to mast cell regulation @Theoharides2021Cells. Energy deficits reduce AMPK activity, which disinhibits mast cells—a clear mechanistic path from energy scarcity to immune hyperreactivity. Histamine's documented effects on CNS energy metabolism, behavioral state, and biological rhythms  provide a direct pathway for mast cell activity to worsen cognitive and energy symptoms. Mast cell-derived mediators cause vascular dysfunction , which can worsen tissue perfusion and oxygen delivery—further constraining energy availability.

*Treatment Implications.*

    - *Prophylactic stabilization*: Mast cell stabilizers (ketotifen, cromones, quercetin) and H1+H2 antihistamine combinations may serve as *energy-protective* interventions, not merely anti-allergic treatments.

    - *Empirical trials justified*: Given the low risk profile and the potential for substantial PEM reduction, empirical trials are justified even in ME/CFS patients without formal MCAS diagnosis, particularly those with compatible symptom patterns.

    - *Combination approaches*: Addressing both energy metabolism (e.g., mitochondrial support, pacing) and mast cell stabilization simultaneously may yield synergistic benefits by breaking the positive feedback loop at multiple points.

*Limitations and Uncertainties.*

    - *Observational evidence only*: Ketotifen studies lack randomized controls. The reported PEM improvements could reflect placebo effects, natural disease fluctuation, or regression to the mean.

    - *Heterogeneous MCAS criteria*: Diagnostic criteria for MCAS vary across studies and clinicians, complicating prevalence estimates and subgroup identification.

    - *Mechanistic gaps*: The hypothesis extrapolates from cellular energy costs of mast cell activation to systemic and CNS energy deficits. Direct measurement of energy availability before, during, and after MCAS flares is lacking.

    - *Alternative explanations*: MCAS and ME/CFS may share common upstream causes (e.g., viral triggers, autoimmunity, genetic predispositions) without direct causal interaction.

] <spec:mcas-energy-amplifier>

#limitation(title: [MCAS–ME/CFS Overlap: Comorbidity vs.\ Shared Pathophysiology])[
The substantial symptom overlap and estimated 25–50% co-occurrence rate between MCAS and ME/CFS   does not establish whether these conditions share pathogenic mechanisms or are independent conditions that co-occur due to shared risk factors. Key epistemic boundaries:

    - Prevalence estimates vary widely (25–53%) depending on diagnostic criteria applied, and MCAS diagnostic criteria themselves remain contested.
    - Treatment response data (e.g., ketotifen PEM reduction ) are from retrospective, uncontrolled analyses; placebo response, natural fluctuation, and regression to the mean are not excluded.
    - The proposed energy amplifier feedback loop (mast cell activation $\to$ energy depletion $\to$ reduced mast cell regulation) is mechanistically plausible but has not been demonstrated in vivo. No study has simultaneously measured mast cell activation markers and energy availability during ME/CFS symptom episodes.

]

#hypothesis(title: [Carotid Body Mast Cell Sensitization as the Upstream Driver of Orthostatic Intolerance in MCAS+ME/CFS])[
*(Certainty: 0.55 — not yet replicated; mechanistic inference from Theoharides 2024 carotid body anatomy + Rohrhofer 2025 OI prevalence data.)*

Mast cells cluster at the carotid body glomus and release histamine, tryptase, and VEGF in response to CRH (stress) and local hypoxia. Carotid body chemoreceptors are exquisitely sensitive to local mediators; mast cell degranulation lowers the chemoreceptor activation threshold, producing inappropriate sympathetic outflow during orthostatic challenge. Under this model, the 89% orthostatic intolerance rate in MCAS+ME/CFS patients versus 72% in MCAS-negative patients  is explained not by autonomic neuropathy or volume depletion alone, but by peripheral chemoreceptor sensitization driven by mast cell mediator load at the carotid body .

This mechanism is distinct from POTS caused by cardiac innervation damage or volume deficiency. Testable predictions:

    - MCAS+ME/CFS patients will show exaggerated ventilatory and sympathetic responses to mild hypercapnia/hypoxia versus MCAS-negative ME/CFS and OI-only controls
    - 4-week cromolyn or ketotifen pretreatment will normalize carotid body sensitivity and reduce OI symptom scores
    - The effect will be dose-dependent on mast cell mediator load (urinary N-methylhistamine as proxy)

*Treatment implication:* In patients with OI (Domain 4) and MCAS features (Domain 6), concurrent mast cell stabilization alongside standard dysautonomia management may produce additive benefit not achievable by either approach alone.

*Not yet replicated. Requires dedicated carotid body imaging and controlled mast cell stabilization trials.*
] <hyp:carotid-mast-oi>

#hypothesis(title: [Hypothalamic Mast Cells as the Master Switch for Sickness-Behavior Persistence in ME/CFS])[
*(Certainty: 0.50 — mechanistic reasoning from neuroanatomy; no direct ME/CFS human evidence.)*

The median eminence and paraventricular nucleus of the hypothalamus contain dense mast cell populations outside the blood-brain barrier, in direct contact with the portal circulation and CSF. CRH-driven activation at these sites produces local IL-6, TNF, and histamine that disrupt HPA axis rhythm, leptin signaling, and TRH release -- generating the fatigue, thermal dysregulation, weight changes, and anhedonia characteristic of ME/CFS sickness behavior . This model may explain why peripheral immune markers in ME/CFS are inconsistently elevated and normalize over time while symptoms persist: if the critical mast cell activation is hypothalamic, standard blood draws underestimate actual immune activation.

*Testable predictions:*

    - CSF tryptase and tele-methylhistamine will be elevated in ME/CFS compared to healthy controls even when serum tryptase is normal
    - Intranasal cromolyn sodium (reaching the median eminence via nose-to-brain mucosal transport) will reduce sickness-behavior scores and HPA dysregulation markers within 4 weeks

*Replication status:* Not yet replicated. Mechanism extrapolated from animal models and the Theoharides 2024 mechanistic review; no ME/CFS-specific human data.

*Limitations:* No CSF mast cell mediator data exist for ME/CFS. Intranasal cromolyn delivery to the median eminence is pharmacokinetically plausible but unconfirmed in humans. Hypothalamic mast cell data come from animal models and the Theoharides 2024 review.
] <hyp:hypothalamic-mast-switch>

#speculation(title: [Spike Protein-Imprinted Mast Cell Memory via MRGPRX2 as a Long COVID-ME/CFS Divergence Mechanism])[
*(Certainty: 0.35 -- in vitro mechanistic evidence only; no ME/CFS patient cohort data.)*

SARS-CoV-2 spike protein can directly activate mast cells via MRGPRX2, a G-protein-coupled receptor mediating IgE-independent pseudoallergic degranulation. Repeated antigenic exposure during COVID-19 may produce epigenetically imprinted mast cells with chronically elevated MRGPRX2 expression, responding more aggressively to substance P, neuropeptides, and other non-IgE stimuli for months to years after viral clearance. This is distinct from general "post-viral MCAS" and specifically predicts that Long COVID MCAS involves substance-P-pathway hypersensitivity rather than IgE-mediated allergy -- and therefore responds poorly to H1/H2 antihistamines (which do not block MRGPRX2) while potentially responding to MRGPRX2-modulating compounds.

*Testable predictions:*

    - Long COVID-MCAS mast cells will show elevated MRGPRX2 mRNA expression versus pre-pandemic ME/CFS-MCAS controls
    - Substance P-stimulated degranulation will be significantly greater in Long COVID-MCAS versus pre-pandemic MCAS mast cells at equivalent receptor density
    - Bromelain (MRGPRX2-modulating compound) will preferentially benefit Long COVID MCAS subgroup versus pre-pandemic ME/CFS MCAS subgroup

*Limitations:* Primary mast cell MRGPRX2 quantification is technically demanding. Accessible skin biopsy mast cells may not reflect CNS or GI populations. No clinical data for MRGPRX2-targeted therapy in ME/CFS or Long COVID exist.
] <spec:mrgprx2-long-covid-mast>

#speculation(title: [Mast Cell Mitochondrial Transfer as a Bidirectional Domain 2-Domain 6 Bridge])[
*(Certainty: 0.25 -- mechanistically novel; no ME/CFS-specific evidence; mast cell mitochondrial biology is an emerging field.)*

Recent work demonstrates that mast cells can transfer mitochondria to neighboring cells via tunneling nanotubes, and conversely accept dysfunctional mitochondria from stressed cells. In ME/CFS, dysfunctional mitochondria from skeletal muscle and neurons may trigger mast cell activation upon transfer -- creating a bidirectional coupling between Domain 2 (mitochondrial dysfunction) and Domain 6 (mast cell activation). Exhausted mitochondria from PEM-affected tissues could prime adjacent tissue mast cells, amplifying their reactivity and contributing to the post-exertional mediator storm.

*Testable prediction:* Serum cell-free mitochondrial DNA levels will positively correlate with urinary N-methylhistamine (a mast cell activation marker) in ME/CFS patients, particularly after exercise challenge. Co-culture of ME/CFS PBMCs with mitochondria isolated from post-exercise ME/CFS blood will produce greater mast cell degranulation than culture with pre-exercise mitochondria.

*Limitations:* Mast cell mitochondrial transfer biology is from 2022-2024 in vitro literature; not demonstrated in vivo or in ME/CFS. The correlation prediction could be confounded by shared upstream inflammation.
] <spec:mast-mito-transfer>

#speculation(title: [Mast Cell-Derived Heparin as a Contributor to Coagulation Anomalies in ME/CFS])[
*(Certainty: 0.30 -- mast cell granule composition is established; clinical extrapolation to ME/CFS coagulation is speculative.)*

Mast cell granules contain heparin -- the biological prototype of anticoagulant therapy. Sustained low-grade degranulation over months to years could produce a chronic, low-level anticoagulant effect. This may explain why some ME/CFS patients (particularly those with MCAS comorbidity) report easy bruising, prolonged menses, and post-procedure bleeding while having normal standard coagulation panels. Anti-Xa activity or thrombin time measurements may detect subtle heparin effect missed by standard PT/INR.

*Testable prediction:* Anti-Xa activity will be detectable above baseline in MCAS-positive ME/CFS patients reporting bleeding symptoms, correlating with urinary N-methylhistamine. An 8-week cromolyn trial will normalize anti-Xa in responders.

*Limitations:* Mast cell heparin release in chronic low-grade activation is not characterized in humans. This idea has not been explored in any ME/CFS or MCAS cohort.
] <spec:mast-heparin-coag>

#open-question(title: [Can Standardized Dermatographism Threshold Testing Serve as a Bedside Domain 6 Screen?])[
Dermatographism (wheal formation from minor skin pressure) is a classic MCAS sign but is rarely quantified in clinical practice. A standardized stylus delivering graded mechanical force (5 g, 10 g, 20 g, 40 g) could measure the *threshold* for wheal formation as a reproducible, instrument-free bedside assessment. If the 5 g threshold has high sensitivity for biochemically confirmed MCAS in ME/CFS, it could serve as a low-cost screening tool before ordering urinary mediator panels.

*What needs to be established:* sensitivity and specificity of specific force thresholds against Valent 2021 MCAS criteria in an ME/CFS population; test-retest reliability; correlation with urinary N-methylhistamine and LTE#sub[4].
] <oq:dermatographism-screen>

#speculation(title: [Mast Cell–Plasmacytoid Dendritic Cell Type-I Interferon Echo Loop])[
*(Certainty: 0.15 — mechanistic inference from two separate literatures; the loop has not been demonstrated in ME/CFS tissue or any chronic fatigue model. Not yet replicated.)*

Activated mast cells release CXCL8 and IL-4, which recruit plasmacytoid dendritic cells (pDCs) to sites of mast cell degranulation. pDCs are the principal producers of type-I interferons (IFN-α, IFN-β); mast cell-derived CXCL8 is a potent pDC chemokine. pDCs that arrive at mast cell-rich sites may misread the sterile inflammatory environment as viral and produce IFN-α. IFN-α in turn primes mast cells for further activation via IFN-α receptor signaling, creating a positive feedback loop: mast cell degranulation → pDC recruitment → IFN-α production → mast cell sensitization → lower degranulation threshold → more mast cell activity.

If sustained, this loop would produce a chronic, low-grade type-I interferonopathy that clinically mimics persistent viral illness without detectable active virus — consistent with the interferon gene expression signature observed in a subset of ME/CFS patients. This is mechanistically distinct from the post-viral interferon hypothesis (Section @sec:viral): this loop is mast-cell-initiated, not virus-initiated, and would persist even after complete viral clearance.

*Testable predictions:*
- (a) MCAS+ME/CFS patients will show co-elevation of serum CXCL8 and IFN-α2 simultaneously, more frequently than ME/CFS-MCAS-negative patients
- (b) JAK1/2 inhibition (baricitinib, which blocks IFN-α receptor signaling) will reduce both IFN-α levels and urinary N-methylhistamine in the MCAS+IFN-signature subgroup, with proportional symptom benefit
- (c) pDC depletion assays in PBMC cultures from MCAS+ME/CFS patients will reduce tryptase release upon mast cell stimulation, compared to pDC-replete cultures

*Limitations:* The IFN signature in ME/CFS is present in some but not all patients and its cellular source has not been localized to pDCs in any ME/CFS study. Mast cell–pDC spatial proximity in ME/CFS tissue has not been examined. Baricitinib, while used in COVID-19 and rheumatoid arthritis, carries immunosuppression risks in ME/CFS patients who already have NK cell and T-cell dysfunction. The loop could equally be an epiphenomenon of upstream immune dysregulation rather than a self-sustaining driver.
] <spec:mast-pdc-ifn-loop>

=== Allergic Responses
<sec:allergic-responses>

==== Food Sensitivities

Many ME/CFS patients report food intolerances :

    - May be IgE-mediated (true allergy) or non-IgE-mediated
    - Common triggers: gluten, dairy, histamine-rich foods
    - Mechanism may involve mast cell activation or gut barrier dysfunction 
    - Elimination diets help some patients

==== Environmental Allergies

Increased sensitivity to environmental factors is reported in ME/CFS:

    - Pollen, dust mites, mold
    - Chemical sensitivities (fragrances, cleaning products)
    - Medication sensitivities
    - May reflect mast cell hyperreactivity or neurogenic inflammation 

==== Shared Immune Pathways

Links between allergy and ME/CFS  :

    - Th2 skewing in some patients
    - Elevated IgE in subsets
    - Mast cell dysfunction 
    - Neurogenic inflammation (sensory nerve-mast cell interactions)

== Virus-Induced Endothelial Senescence
<sec:endothelial-senescence>

Nunes et al.\ (2026)  proposed a unifying mechanistic framework in which acute viral infection triggers endothelial cell senescence at multiple tissue sites, and an already-dysfunctional immune system fails to clear these senescent cells, establishing a self-perpetuating pathological loop that drives ME/CFS and Long COVID.

=== The Senescence Mechanism

Acute viral infection — including SARS-CoV-2, EBV, and HHV-6, all documented triggers of ME/CFS — induces endothelial cell senescence at the blood-brain barrier, cerebral arteries, gastrointestinal microvasculature, and skeletal muscle capillaries. Senescent endothelial cells are not simply dormant; they develop a *senescence-associated secretory phenotype (SASP)* that renders them actively harmful:

    - *Proinflammatory*: SASP includes IL-6, IL-8, TNF-$alpha$, and other cytokines that sustain chronic inflammation
    - *Pro-oxidative*: Elevated reactive oxygen species from senescent cells damage adjacent endothelium
    - *Procoagulant*: Upregulation of PAI-1 and tissue factor shifts the local coagulation balance toward thrombosis and fibrin microclot formation
    - *Vasoconstrictive*: Reduced nitric oxide production and elevated endothelin-1 shift vascular tone toward constriction, impairing tissue perfusion
    - *Adhesion-promoting*: Upregulation of ICAM-1, VCAM-1, and E-selectin promotes leukocyte adhesion and further endothelial activation

=== The Immune Clearance Failure

In healthy subjects, senescent cells are recognized and cleared by NK cells and cytotoxic T cells. In ME/CFS, this clearance mechanism is specifically impaired at both effector arms:

    - *NK cell dysfunction*: The well-documented reduction in NK cell cytotoxicity (Hedges' g = 0.96 ; Section @sec:nk-cells) prevents efficient recognition and elimination of SASP-producing endothelial cells
    - *T cell exhaustion*: Chronic stimulation exhausts cytotoxic T cell responses (Section @sec:t-cells), further reducing senescent cell clearance capacity

The result is a bidirectional amplifying loop: SASP from senescent endothelial cells drives cytokine-mediated suppression of NK and T cell function, which in turn prevents clearance of senescent cells, which continue to produce SASP. Once established, this loop is self-sustaining regardless of whether the initial viral trigger is still present.

=== Tissue-Specific Manifestations

The tissue distribution of endothelial senescence maps coherently onto ME/CFS symptom clusters:

    - *BBB and cerebral arteries*: Impaired cerebral blood flow and neuroinflammatory signaling → cognitive impairment, brain fog, headache
    - *Skeletal muscle microvasculature*: Reduced capillary perfusion → exercise intolerance, muscle pain, post-exertional malaise
    - *Gastrointestinal microvasculature*: Gut barrier dysfunction, mucosal inflammation → IBS-type symptoms, food intolerances
    - *Systemic microvasculature*: Chronic low-grade SASP-driven inflammation → immune dysregulation, fatigue amplification

=== Therapeutic Implications: Senolytics

If senescent endothelial cells are causal rather than epiphenomenal, senolytic drugs — agents that selectively eliminate senescent cells — represent a rational therapeutic target. The combination of *dasatinib* (a tyrosine kinase inhibitor) and *quercetin* (a flavonoid) has shown senolytic efficacy in animal models and early human trials for other conditions (idiopathic pulmonary fibrosis, diabetic kidney disease). Neither has been tested in ME/CFS or Long COVID at the time of writing.

The mechanistic prediction is that reducing the senescent cell burden would:
1. Attenuate the SASP-driven endothelial dysfunction and procoagulant state
2. Relieve the SASP-mediated suppression of NK and T cell function, enabling immune system recovery
3. Reduce chronic low-grade inflammation and its metabolic cost

This framework also explains why previous immunomodulatory trials targeting cytokines (anakinra) or B cells (rituximab) produced limited benefit: they addressed downstream SASP products without eliminating the senescent cell source.

#speculation(title: [Senescent Endothelial Cell Burden as a Central Maintaining Mechanism])[
Virus-induced endothelial senescence and the consequent SASP create a self-perpetuating pathological state that maintains ME/CFS independently of the initial viral trigger. NK cell and T cell dysfunction in ME/CFS prevent senescent cell clearance, establishing a bidirectional amplifying loop between immune dysfunction and endothelial SASP .

_Certainty: 0.40._ The mechanistic logic is compelling and each component (NK dysfunction, T cell exhaustion, endothelial SASP biology) is individually well-supported. The central limitation is that endothelial senescence has not yet been directly measured in ME/CFS patient tissue (biopsy or imaging). The framework is currently theory-level, not yet empirically established in this specific disease context.

*Falsifiable predictions:*
    + Skeletal muscle or skin punch biopsies from ME/CFS patients should show elevated p21, p16INK4a, and SA-$beta$-galactosidase staining in capillary endothelial cells compared to healthy controls
    + Plasma SASP markers (GDF-15, PAI-1, syndecan-1 as glycocalyx shedding index) should be elevated and correlate with disease severity
    + Senolytic intervention (dasatinib + quercetin, or navitoclax) should reduce endothelial dysfunction markers (FMD, EndoPAT), SASP cytokines, and ME/CFS symptom burden in a prospective trial
    + NK cell cytotoxicity restoration (via LDN, TRPM3 modulators, or low-dose IL-2) should be associated with reduced circulating SASP markers over time

*Limitations:* Review/theory paper — endothelial senescence not yet directly measured in ME/CFS tissue; senolytic trials in ME/CFS are pending; the framework does not resolve whether immune dysfunction or endothelial senescence is the primary initiating event.
] <hyp:endothelial-senescence-loop>

== Immune Remodeling: Beyond Activation
<sec:immune-remodeling>

Multiple 2025--2026 studies report that the immune disturbance in ME/CFS involves a complex reorganization---some arms upregulated, others downregulated, with altered inter-cellular communication networks---rather than uniform activation @Hoel2026proteome @Shahbaz2026single-cell-immune -proteome-exertion . Whether this pattern reflects a coordinated "remodeling program" or simply the heterogeneous response expected of any multi-component immune system under chronic stress remains debated.

#observation(title: [Heterogeneous Immune Findings Across Platforms: Activation, Exhaustion, and Collapse])[
*Certainty: 0.30.* Based on four independent studies using different methodologies (serum proteomics, scRNA-seq, longitudinal exercise proteomics, multi-omics immune stimulation), all finding heterogeneous immune changes rather than uniform activation. However, the studies use different cohorts, different disease definitions (some LC-ME/CFS only), and different platforms; true convergence requires independent groups finding the _same_ molecular abnormalities, which has not occurred. @Hoel2026proteome @Shahbaz2026single-cell-immune -proteome-exertion 

Hoel et al.\ (2026) charted the circulating proteome using SomaScan 7K (n=50 ME/CFS vs 29 HC) and found immune _reprogramming_: a broad increase in secreted proteins with distinct reduction in activated-neutrophil secreted proteins, and intensified regulatory interactions across immune, inflammatory, vasculature, and metabolic pathways @Hoel2026proteome.

Germain, Hanson, and colleagues (2025) conducted the largest longitudinal exercise proteomics study in ME/CFS to date (n=79 ME/CFS vs 53 sedentary controls; SomaScan 7K) and found that post-exertional malaise is characterized by suppression of T and B cell signaling, downregulation of IL-17 and cell-cell communication, and upregulation of glycolysis/gluconeogenesis---a pattern of immune _collapse_ under stress rather than immune activation -proteome-exertion. Sex-stratified analyses revealed distinct molecular responses between females and males.

Shahbaz et al.\ (2026) provided single-cell resolution in Long COVID with ME/CFS features: marked reduction in naive CD4+/CD8+ T cells, Tregs, MAIT cells, and gamma-delta T cells; expansion of effector T cells; NK cells reduced with altered activation; monocytes showing reduced phagocytosis genes alongside increased pro-inflammatory cytokine genes @Shahbaz2026single-cell-immune. _Critically_, idiopathic ME/CFS showed less pronounced changes---T cell activation without MAIT/NK cell reduction or T cell exhaustion---suggesting LC-ME/CFS and idiopathic ME/CFS may be immunologically distinct entities rather than points on a single remodeling spectrum. This distinction partially undermines the unified "remodeling" narrative: the two conditions share a broad rejection of simple activation models but may arrive at their respective immune states through different mechanisms.

This observation coexists with the chapter's "Paradox of Invisible Immunity" (Section @oq:invisible-immunity), which documents that the broadest profiling studies (391 patients, 7,542 autoantibody interactions, 64 cytokines) have found nothing systematically different. The tension between specific heterogeneous findings in small cohorts and null findings in large cohorts remains unresolved.

*Limitations:* Cross-sectional designs (except Germain 2025); scRNA-seq limited to female LC-ME/CFS cohort; idiopathic ME/CFS comparison across datasets introduces batch effects; no independent replication of the immune remodeling framework as a unified construct; the "remodeling" label is broadly defined enough that almost any heterogeneous immune pattern would fit, making it difficult to falsify; critically, none of the cited studies use severity-matched chronic illness controls (e.g., rheumatoid arthritis, lupus) --- the "immune remodeling" pattern may be a generic feature of any severe chronic illness rather than ME/CFS-specific, and this cannot be distinguished from the current evidence base.
] <obs:immune-remodeling-convergence>

#speculation(title: [Exercise-Induced Immune Activation as Occult Long-Term Harm])[
*Certainty: 0.35.* Post-exercise ME/CFS patients show upregulation of metabolite-detecting receptors (ASIC3, P2X4, P2X5) and TLR4 persisting 48 hours (Light et al.\ 2012), while Germain et al.\ (2025) found suppression of T and B cell signaling during PEM---immune _collapse_ under stress -proteome-exertion. Even when exercise trials report subjective improvement on questionnaires, they may simultaneously cause immune activation and NK cell metabolic depletion that worsens the underlying disease process. The subjective improvement masks immune deterioration that manifests as disease progression months to years later. No exercise trial has measured immune biomarkers at outcome assessment timepoints. Not yet replicated---long-term immune consequences of structured exercise in ME/CFS are unmeasured.

*Testable prediction.* Exercise trials including immune biomarkers (NK cell cytotoxicity, ASIC3/TLR4 expression, cytokine panels) at questionnaire timepoints should show immune deterioration in the subgroup reporting subjective improvement.
] <spec:exercise-immune-harm>

=== Galectin-9--TIM-3: A Novel Mechanism for Tissue-Resident Cell Depletion

#speculation(title: [Galectin-9--TIM-3 Axis as Driver of Gamma-Delta and MAIT Cell Depletion])[
*Certainty: 0.35.* Based on single scRNA-seq study in LC-ME/CFS (Shahbaz et al.\ 2026); mechanism not directly demonstrated in ME/CFS; Galectin-9--TIM-3 well-established in cancer immunology. @Shahbaz2026single-cell-immune

Shahbaz et al.\ identified Galectin-9--TIM-3 expression as correlated with gamma-delta and MAIT cell depletion in LC-ME/CFS @Shahbaz2026single-cell-immune. This is mechanistically significant because: (1) Galectin-9 is expressed by activated monocytes and endothelial cells---both cell types showing abnormalities in ME/CFS; (2) TIM-3 is an immune checkpoint receptor whose engagement triggers T cell exhaustion and apoptosis; (3) gamma-delta T cells and MAIT cells are tissue-resident populations critical for barrier immunity, and their depletion aligns with the gut barrier dysfunction and infection susceptibility documented in ME/CFS  @sec:infection-susceptibility. Alternative explanations for tissue-resident cell depletion include barrier dysfunction displacing lymphocytes from mucosal sites, activation-induced cell death from chronic stimulation, and cytokine-mediated suppression---the Galectin-9--TIM-3 pathway is one candidate mechanism among several.

If confirmed, this pathway would connect several disparate findings: monocyte activation (which produces Galectin-9), tissue-resident cell depletion (which impairs mucosal immunity), and T cell exhaustion (which limits adaptive immune surveillance). Galectin-9 and TIM-3 directed agents are currently in early-stage oncology development and are not available for clinical use; this pathway should be considered a long-term research target.

*Testable predictions:*
    + Galectin-9 levels in ME/CFS serum should be elevated and correlate with MAIT/gamma-delta T cell depletion
    + In vitro Galectin-9 blockade should rescue MAIT and gamma-delta T cell survival in ME/CFS PBMC cultures
    + Galectin-9 levels should correlate with gut barrier dysfunction markers (zonulin, LPS-binding protein)
] <spec:galectin-9-tim3-axis>

=== Complement Genetics and the Inflammatory Subgroup

#speculation(title: [A Complement-Mediated Inflammatory Subgroup in ME/CFS])[
*Certainty: 0.35.* CDC pQTL study (n=50 ME/CFS vs 121 non-fatigued) with UK Biobank validation of fatigue associations; genetic approach is novel; complement involvement supported by multiple independent studies. Certainty reduced from initial 0.50 because: n=50 is underpowered for pQTL analysis; UK Biobank fatigue associations are not ME/CFS-specific (fatigue is generic across hundreds of conditions); "high C3/low Bb" could reflect activation (Bb consumption) _or_ alternative pathway deficiency (reduced Bb production), with diametrically opposite clinical implications. -genetics @Sorensen2003complement @Polli2019complement 

Maya et al.\ (2026) used protein quantitative trait locus (pQTL) analysis to identify a ME/CFS subgroup with genetic predisposition to altered complement protein levels---specifically, a high C3/low Bb profile -genetics. Six significant pQTLs were also associated with fatigue phenotypes in the UK Biobank (four complement-related). However, UK Biobank fatigue is a broad phenotype including depression-related fatigue, medication effects, and sleep disorders---validation against this broader phenotype does not establish ME/CFS specificity and may instead indicate that the signal is non-specific.

This finding is significant for several reasons. First, it provides a potential _genetic basis_ for complement dysregulation in ME/CFS, complementing the biochemical evidence for complement activation after exercise @Sorensen2003complement @Polli2019complement and the complement pathway enrichment in multi-omics data . Second, the identification of a subgroup suggests that complement activation is not universal in ME/CFS---many patients may arrive at complement dysregulation through different routes (infection, autoimmunity, endothelial damage) rather than genetic predisposition, though this subgroup definition is post-hoc and may not replicate. Third, the alternative complement pathway specifically connects to mast cell activation (via C3a and C5a anaphylatoxins) and coagulation (via the terminal complement complex), providing a mechanistic bridge between the immune remodeling and blood vessel dysfunction themes @sec:complement. A simpler alternative explanation is that elevated C3 reflects nonspecific acute-phase inflammation rather than complement-specific pathology, and that low Bb reflects consumption from any upstream inflammatory trigger.

*Testable predictions:*
    + ME/CFS patients carrying complement pQTL risk variants should show higher C3 levels and more severe post-exertional symptoms
    + Alternative pathway functional assays (AH50) should distinguish activation from deficiency in the high C3/low Bb subgroup
    + CSF proteomics should show complement enrichment specifically in the complement-pQTL-positive subgroup
] <spec:complement-inflammatory-subgroup>

=== Extracellular Vesicles as Inter-Compartment Signaling Vectors

#speculation(title: [Extracellular Vesicle-Mediated Signaling in ME/CFS Pathophysiology])[
*Certainty: 0.25.* Based on small discovery study (n<=12) in post-COVID ME/CFS; EV biology well-established but ME/CFS-specific findings preliminary. -vesicles

Seifert et al.\ (2026) found altered extracellular vesicle (EV) cargo in post-COVID ME/CFS, including hemoglobin subunit alpha and IGFBP acid labile subunit changes, with downregulation of hsa-let-7b-5p correlating with fatigue and impaired physical functioning -vesicles. *Important caveat:* hemoglobin subunit alpha in EV preparations is a well-known red blood cell contamination artifact---it may reflect erythrocyte damage or vascular injury rather than a dedicated signaling pathway. EVs can cross the blood-brain barrier in the brain-to-blood direction (CNS-derived EVs are detectable in peripheral blood), but peripheral-to-central EV trafficking across an intact BBB is extremely limited.

*Testable predictions:*
    + ME/CFS EVs should carry distinct miRNA signatures that alter gene expression in recipient neurons, endothelial cells, or immune cells
    + EV cargo should change after exercise stress, providing a dynamic biomarker of PEM
    + Hemoglobin contamination markers should be assessed; if the hemoglobin signal persists after contamination correction, it may reflect genuine erythrocyte or endothelial pathology
] <spec:ev-signaling-mecfs>

#speculation(title: [Exosomal HSAT2/HERV-K RNA as a Self-Perpetuating MDSC Expansion Mechanism])[


*(Certainty: 0.30 — mechanistic inference from Ewing sarcoma biology upgraded by post-viral MDSC persistence evidence; no direct ME/CFS HSAT2 data.)*

Evdokimova et al.\  demonstrated that exosomes from Ewing sarcoma cells enriched with HSAT2 and HERV-K RNA are taken up by CD33+ myeloid cells and CD8+ T-cells, inducing MDSC-like phenotypes (CD33+HLA-DR−, CD33+PD-1+, CD33+CD25+) and T-cell exhaustion (CD8+CD25+PD-1+) respectively. Critically, recipient cells become secondary transmitters — releasing their own HSAT2-containing EVs and propagating the immunosuppressive signal through at least three serial passages without ongoing tumor input.

This mechanism is candidate-relevant to ME/CFS because:

    + Herpesviruses (HSV-1, HCMV) induce HSAT2 expression via viral microRNAs ; EBV and HHV-6 — the primary ME/CFS viral triggers — have not been tested but the pathway is plausible; EBV specifically expands PMN-MDSCs during acute infectious mononucleosis @Mihatsch2026MDSCMono
    + Post-viral MDSC persistence is directly demonstrated: M-MDSCs remain elevated at 5 months post-SARS-CoV-2 infection, correlating with IL-6 (r = 0.62) and suppressing T-cell IFNγ by arginase+ROS mechanisms ; MDSC expansion during acute COVID-19 reaches 90% of mononuclear cells in severe cases @Agrati2020MDSCCoVID19
    + ME/CFS shows widespread DNA methylation alterations; if pericentromeric loci (chr2p11.2, 4p11) are hypomethylated, HSAT2 could be chronically expressed without active viral replication ; folate-cycle impairment reduces H3K9me3 at pericentromeric loci, permitting satellite repeat transcription 
    + The NK cell and T-cell exhaustion pattern in ME/CFS — reduced NK cytotoxicity (Hedges' g = 0.96 ), epigenetically locked CD8+ T-cell exhaustion (TBX21/EOMES up, TCF7 closed ), and PD-1/CTLA-4 checkpoint dysregulation  — is phenotypically consistent with exosomal MDSC-mediated suppression
    + The paradox of simultaneous immune activation (interferon signatures, cytokines) and immune suppression (impaired NK killing, T-cell exhaustion) mirrors the Ewing sarcoma phenotype characterized in Evdokimova 2019

The exosomal propagation loop would be self-sustaining: once established post-infection, it does not require continued viral presence. This provides a concrete mechanism for the loss of viral control in ME/CFS without identifying a single persisting pathogen.

*Falsifiable prediction:* HSAT2 and HERV-K RNA should be detectable in plasma EVs from ME/CFS patients at higher levels than healthy controls; these levels should correlate inversely with NK cytotoxicity and directly with MDSC frequency. If EV HSAT2 levels are comparable to healthy controls, this mechanism is not operative.

*Limitations:* All supporting evidence for the HSAT2 exosomal mechanism is from Ewing sarcoma (aggressive paediatric cancer), a context with far higher transcript levels than chronic infection. Post-viral MDSC persistence (Beliakova-Bethell 2022) was demonstrated for T-cell suppression; NK assays were not performed. The folate-MTHFR-H3K9me3 link (Zhu 2014) used extreme siRNA knockdown in cell lines — partial dietary/genetic depletion may not reach the same threshold. Not yet replicated in ME/CFS or any post-viral chronic disease context.
] <spec:hsat2-exosome-mdsc>
== Summary: Integrated Model of Immune Dysfunction
<sec:immune-summary>

The immune abnormalities in ME/CFS form a coherent, if complex, picture @walitt2024deep:

    - *Triggering event*: Infection or other immune challenge initiates the process

    - *Innate immune dysfunction*: NK cells and other innate effectors fail to clear the pathogen or control reactivation

    - *Chronic antigenic stimulation*: Persistent infection or autoimmunity drives ongoing B cell activation, producing the characteristic naïve B cell expansion and switched memory B cell depletion documented by the NIH study

    - *Autoantibody development*: Aberrant B cell responses generate autoantibodies targeting receptors and other self-antigens

    - *T cell exhaustion*: Chronic stimulation exhausts T cell responses

    - *Cytokine dysregulation*: Ongoing inflammation produces symptom-causing cytokines

    - *Sex-specific patterns*: Men and women show different immune abnormalities, suggesting distinct pathophysiological pathways

    - *Neuroinflammation*: Peripheral immune signals affect brain function, contributing to fatigue and cognitive symptoms

    - *Mast cell involvement*: Mast cell activation may amplify symptoms in susceptible individuals

This sequence represents one plausible ordering of events; many steps may occur in parallel, and the sequence may vary between patients or subgroups. For example, autoantibody development (step 4) could precede, follow, or coincide with T cell exhaustion (step 5), and sex-specific immune patterns (step 7) likely influence all stages rather than emerging at a discrete point.

This model provides multiple potential therapeutic targets: antiviral agents for persistent infection, immunomodulators for autoimmunity, mast cell stabilizers for those with MCAS, and anti-inflammatory approaches for cytokine-mediated symptoms. The recognition of sex-specific immune patterns may eventually enable personalized treatment selection.

#open-question(title: [The Paradox of Invisible Immunity])[

The integrated model above presents a coherent narrative, but it must be reconciled with a striking pattern of null results from well-powered studies. Comprehensive viral screening (Lipkin: 391 patients, no pathogen differences; Davis/Stanford: 185 viruses in severe patients, more viruses in _controls_), broad autoantibody profiling (Germain 2025: 7,542 interactions, complete null ), cytokine meta-analysis (Corbitt 2019: "of 64 cytokines, none differ consistently" @Corbitt2019), and multi-site NK assessment (MCAM: $p = 0.79$ @Querec2023MCAM) have all failed to find systemic immune signatures proportionate to the severity of disability.

This generates a fundamental puzzle: _what immune mechanism is potent enough to cause extreme disability yet leaves no measurable trace in blood, saliva, or stool?_

Three frameworks can account for this paradox:

    - *Compartmentalised immunity:* The pathology resides in tissues that blood sampling cannot access---gut mucosa, dorsal root ganglia, brain parenchyma, lymph node microenvironments. Peluso et al.\ (2024) demonstrated SARS-CoV-2 viral persistence in gut tissue biopsies of Long COVID patients with no detectable virus in blood, proving this is biologically possible. Blood-based studies may be systematically missing the relevant compartment.

    - *The exhaustion interpretation:* Hornig et al.\ documented that cytokine elevations occur in early ME/CFS ($<$3 years) but normalize in chronic disease . By the time patients enter research studies (often after years of illness), the inflammatory fire has burned out. The null results in chronic cohorts may accurately reflect late-stage immunology while missing the critical early window.

    - *Post-immune damage:* The immune trigger was transient but caused permanent downstream damage---metabolic reprogramming, epigenetic changes, structural neurological alterations---that persists independently of ongoing immune activity. In this framework, the immune system is now _genuinely normal_, and the null results are correct; the damage is done and self-sustaining through non-immune mechanisms.

These frameworks make different predictions. Compartmentalised immunity predicts tissue biopsy abnormalities with normal blood values. Exhaustion predicts that early-onset patients ($<$3 years) will show blood abnormalities that chronic patients lack. Post-immune damage predicts that even early-onset patients will show normal blood immunity if studied _after_ the acute trigger resolves, but will show metabolic or structural changes detectable by non-immune assays. Distinguishing among these is among the highest priorities in ME/CFS research.
] <oq:invisible-immunity>

#speculation(title: [The Cellular Fog: Normal Army, Broken Soldiers])[

*Certainty: 0.35.* Integrative framework consistent with the overall pattern of null blood-level results alongside positive functional results. Not directly tested as a unified hypothesis.

The pattern of immune findings in ME/CFS is not one of immune activation or immune suppression---it is one of immune cell _incompetence_. Individual immune cells are structurally present in normal numbers and proportions but functionally impaired at the level of intracellular machinery:

    - *NK cells*: Normal counts, impaired cytotoxicity (Hedges' g = 0.96 )
    - *T cells*: Normal proportions, reduced glycolysis and metabolic dysfunction 
    - *B cells*: Normal counts, skewed repertoire without adaptive signatures @Ryback2025BCR
    - *Cytokines*: Normal circulating levels, but individual cells may fail to produce appropriate bursts upon stimulation
    - *Autoantibodies*: Not detectable by broad screening , yet functional assays and treatment responses suggest pathology

This framework---"normal army, broken soldiers"---predicts that _functional_ assays (cytotoxicity, proliferation upon stimulation, class switching capacity, metabolic flux) will consistently show abnormalities even when _phenotypic_ assays (cell counts, surface markers, resting cytokine levels) are normal. The TRPM3 calcium channel dysfunction (Section @sec:trpm3-dysfunction) provides a concrete molecular mechanism: if calcium signaling is globally impaired in immune cells, every downstream function---degranulation, proliferation, cytokine burst, metabolic activation---is compromised. The cell is present but cannot execute its programs.

*Therapeutic implication:* If verified, this framework redirects therapeutic strategy from immunosuppression (which has consistently failed: anakinra, rituximab in the RCT) toward _immune cell repair_---restoring intracellular signaling capacity (TRPM3 modulators), metabolic rescue (CoQ10, NAD+ precursors), and mitochondrial support rather than dampening immune output that is already inadequate.

*Falsification:* The framework would be falsified if large studies using standardized _functional_ assays (not just phenotypic counts) consistently find normal immune cell function in ME/CFS, or if a systemic circulating signal (cytokine, autoantibody, pathogen) is identified that fully explains the disability.
] <spec:cellular-fog>

== Emerging Research Directions in Immune Dysregulation
<sec:immune-research-directions>

The recent cytokine biomarker findings, combined with advances in understanding immune exhaustion, autoantibodies, and sex-specific patterns, suggest several promising research directions. These are organized by potential impact for severe ME/CFS cases and feasibility of rapid translation to clinical benefit.

=== Tier 1: Immediate Translation Potential (Existing Drugs, Severe Case Priority)
<sec:tier1-research>

These interventions use already-approved medications or simple protocols and could benefit severe cases within months of trial initiation.

==== Hormonal Immune Modulation in Post-Menopausal Women

*Rationale*
The Che et al.  finding that women over 45 with diminished estradiol show exaggerated IL-6 responses provides a mechanistic basis for estrogen supplementation. Estrogen receptors are present on immune cells (B cells, monocytes, T cells), and estrogen reduces production of IL-6, TNF-$alpha$, and IL-1$beta$.

*Proposed Study Design*

    - *Population*: Post-menopausal women with severe ME/CFS and documented low estradiol ($<$30 pg/mL)
    - *Intervention*: Transdermal estradiol patch (0.05–0.1 mg/day) with appropriate progesterone for women with intact uterus
    - *Duration*: 6-month open-label pilot (n=20), followed by 12-month RCT (n=100) if successful
    - *Primary outcomes*: IL-6 levels, SF-36 Physical Function, PEM severity
    - *Biomarker stratification*: Measure baseline IL-6 response to microbial stimulation; predict responders as those with highest baseline IL-6

*Expected Benefit for Severe Cases*
Post-menopausal women with severe ME/CFS represent approximately 15–20% of the severe patient population. If estrogen normalizes immune hyperactivation, this subgroup could see substantial symptom improvement within 3–6 months. The intervention is low-risk, FDA-approved, and immediately available.

*Timeline*
Pilot study results: 9–12 months; RCT results: 24–30 months.

==== Low-Dose IL-2 Therapy for Regulatory T Cell Restoration

*Rationale*
ME/CFS patients show reduced Treg numbers and function, contributing to loss of immune tolerance and potential autoimmunity. Low-dose IL-2 therapy (1–2 million IU subcutaneous, 2–3 times weekly) selectively expands Tregs without activating effector T cells, and has shown efficacy in systemic lupus erythematosus, type 1 diabetes, and graft-versus-host disease.

*Convergent Evidence for IL-2 Dysregulation*

    - Elevated IL-2 in extracellular vesicles 
    - IL-2 signaling pathways identified in epigenetic biomarker panel 
    - Reduced Treg function documented in multiple ME/CFS studies
    - Possible “IL-2 resistance” mechanism (cells produce IL-2 but cannot respond properly)

*Proposed Study Design*

    - *Population*: Severe ME/CFS patients with documented Treg deficiency (CD4#super[+]CD25#super[+]FoxP3#super[+] $<$5% of CD4#super[+] T cells)
    - *Intervention*: Subcutaneous IL-2 (1 million IU) three times weekly for 12 weeks
    - *Mechanistic assessments*: Treg expansion (flow cytometry), IL-2 receptor expression (CD25/CD122/CD132), downstream signaling (pSTAT5)
    - *Primary outcomes*: Treg percentage, symptom severity, autoantibody titers
    - *Safety monitoring*: Flu-like symptoms common but typically mild; monitor for excessive immune activation

*Expected Benefit for Severe Cases*
If Treg restoration reduces autoimmune symptoms and normalizes immune balance, severe patients with prominent autoimmune features (elevated GPCR autoantibodies, ANA positivity) may experience meaningful improvement. Response likely within 6–12 weeks if mechanism is valid.

*Alternative Hypothesis: IL-2 Receptor Dysfunction*
If the problem is IL-2 _resistance_ (downregulated receptors, impaired signaling), low-dose IL-2 may fail. This would be informative: functional assays measuring T-cell proliferation in response to exogenous IL-2 should be conducted first to identify likely responders.

*Timeline*
Pilot study (mechanistic + safety): 6–9 months; efficacy RCT: 18–24 months.

==== Phase-Targeted Anti-Cytokine Therapy (Early Disease Window)

*Rationale*
Hornig et al.  demonstrated that cytokine elevations occur primarily in early disease ($<$3 years), with normalization in late disease. This suggests a *time-sensitive therapeutic window*: anti-inflammatory therapies may only benefit patients in the hyperactive phase before immune exhaustion sets in.

*The “Immune Exhaustion Timeline” Hypothesis*

    - *Years 0–3 (Hyperactive Phase)*: Elevated cytokines, active inflammation, NK cells attempting (but failing) to clear infection. Therapeutic target: suppress inflammation to prevent exhaustion.
    - *Years 3+ (Exhaustion Phase)*: Normalized cytokines (false “recovery”), epigenetic T-cell reprogramming, memory B-cell depletion. Therapeutic target: immune “reboot” strategies (B-cell depletion, plasma cell depletion) rather than suppression.

*Proposed Study Design*

    - *Population*: Severe ME/CFS patients with illness duration $<$3 years and documented cytokine elevation (IL-6 $>$5 pg/mL, or elevated IL-1$beta$, TNF-$alpha$, or others from severity-correlated panel)
    - *Intervention*: Tocilizumab (IL-6 receptor blocker, 162 mg subcutaneous monthly) or etanercept (TNF-$alpha$ blocker, 50 mg subcutaneous weekly)
    - *Duration*: 6-month treatment, with 6-month follow-up to assess durability
    - *Primary outcomes*: Prevent progression to exhaustion phase (measured by T-cell exhaustion markers PD-1, Tim-3), symptom improvement, cytokine normalization
    - *Critical control*: Late-stage patients ($>$3 years) treated with same agents to test whether therapeutic window is truly time-limited

*Expected Benefit for Severe Cases*
If early aggressive anti-cytokine therapy prevents the transition to immune exhaustion, it could fundamentally alter disease trajectory. Severe early-stage patients represent approximately 10–15% of all severe cases. Benefit would be disease-modifying rather than purely symptomatic.

*Risk Consideration*
Anti-cytokine biologics increase infection risk. In patients with suspected persistent viral infection (EBV, HHV-6), immunosuppression could worsen viral reactivation. Concurrent antiviral therapy (valacyclovir, valganciclovir) should be considered.

*Timeline*
Pilot study: 12–15 months; RCT with long-term follow-up: 36–48 months.

==== Extracellular Vesicle Depletion via Enhanced Plasmapheresis

*Rationale*
Giloteaux et al.  identified elevated IL-2 and other cytokines specifically in _extracellular vesicles_ (EVs), not bulk plasma. EVs are membrane-bound nanoparticles (30–1000 nm) that cells release to communicate with distant cells. They cross the blood-brain barrier, deliver cargo (proteins, RNA, microRNAs) to recipient cells, and can reprogram cellular function.

*The “Pathogenic EV” Hypothesis*
ME/CFS immune cells release EVs containing:

    - Pro-inflammatory cytokines (IL-2, TNF-$alpha$, CSF2)
    - MicroRNAs that reprogram recipient cells toward exhaustion or dysfunction
    - Damage-associated molecular patterns (DAMPs) triggering sterile inflammation

These pathogenic EVs may:

    - Enter the brain and activate microglia (explaining neuroinflammation and cognitive symptoms)
    - Reprogram muscle cells (explaining PEM and mitochondrial dysfunction)
    - Amplify systemic inflammation in a self-sustaining loop

*Why EV Depletion May Explain Immunoadsorption Successes*
Stein et al.  reported that 70% of post-COVID ME/CFS patients improved with immunoadsorption, with benefits sustained to 6 months. While attributed to autoantibody removal, standard immunoadsorption also removes extracellular vesicles. EV depletion may be the actual therapeutic mechanism.

*Proposed Study Design*

    - *Population*: Severe ME/CFS patients, particularly those with cognitive dysfunction (suggesting CNS involvement via EV trafficking)
    - *Intervention*: Immunoadsorption (5 sessions over 10 days using Immunosorba columns or equivalent)
    - *Mechanistic assessments*:
    
        - EV cytokine content pre/post treatment (IL-2, TNF-$alpha$, CSF2)
        - EV concentration and size distribution (nanoparticle tracking analysis)
        - EV microRNA cargo (sequencing to identify pathogenic microRNAs)
        - Plasma cytokines (to compare bulk vs.\ EV-specific changes)
    
    - *Primary outcomes*: Cognitive function (Montreal Cognitive Assessment), fatigue (Chalder Fatigue Scale), SF-36
    - *Durability assessment*: Monthly follow-up for 6 months to determine if EVs reaccumulate

*Expected Benefit for Severe Cases*
Severe ME/CFS with prominent cognitive dysfunction may benefit most. If pathogenic EVs drive neuroinflammation, removal could produce rapid improvement (within days to weeks). Approximately 80–90% of severe cases have significant cognitive impairment.

*Advanced Approach: EV-Specific Filtration*
Standard immunoadsorption removes IgG non-selectively. Newer technologies (ExoLution, Plasmax) can selectively filter EVs while preserving antibodies. If EVs are the true therapeutic target, EV-specific filtration could be more effective with fewer side effects.

*Timeline*
Pilot study with mechanistic assessments: 12–18 months; RCT: 24–30 months; EV-specific filtration development: 36–48 months.

=== Tier 2: Near-Term Clinical Trials (Moderate Complexity, High Impact)
<sec:tier2-research>

These interventions require more complex trial designs or involve experimental therapies but could still reach severe patients within 2–4 years.

==== TRPM3 Modulation for Calcium-Cytokine Axis Restoration

*Rationale*
TRPM3 ion channel dysfunction impairs calcium signaling in ME/CFS immune cells . Calcium is essential for:

    - NK cell and T-cell degranulation
    - Cytokine gene transcription (calcium activates NFAT transcription factors)
    - Extracellular vesicle release (calcium-dependent membrane fusion)

*Connecting TRPM3 to Cytokine Dysregulation*
The TRPM3-cytokine connection may explain multiple findings:

    - Impaired NK cytotoxicity (cannot degranulate without calcium influx)
    - Dysregulated cytokine production (abnormal calcium signaling → abnormal transcription)
    - Elevated EV cytokines (altered calcium-dependent EV formation/release)

*Therapeutic Approaches*

    - *TRPM3 agonists*: Drugs that directly activate TRPM3 to restore calcium entry
    
        - Pregnenolone sulfate (endogenous TRPM3 agonist, available as supplement)
        - CIM0216 (experimental selective TRPM3 agonist)
    
    - *Calcium ionophores*: Compounds that bypass TRPM3 by directly shuttling calcium across membranes
    
        - Ionomycin (research tool, too toxic for clinical use)
        - A23187 (research tool)
        - Need development of safer clinical-grade ionophores
    
    - *Indirect approaches*: Drugs that enhance residual TRPM3 function
    
        - PIP2 supplementation (TRPM3 requires PIP2 for activation)
        - Membrane fluidity enhancers
    

*Proposed Study Design*

    - *Phase 1: Mechanistic validation*
    
        - Isolate PBMCs from severe ME/CFS patients
        - Measure cytokine production with/without calcium supplementation
        - Test whether TRPM3 agonists (pregnenolone sulfate) restore normal cytokine responses _in vitro_
        - If positive, proceed to clinical trial
    
    - *Phase 2: Clinical pilot*
    
        - Pregnenolone sulfate oral supplementation (50–100 mg daily for 12 weeks)
        - Primary outcomes: NK cytotoxicity, cytokine levels, symptom improvement
        - Biomarker: TRPM3 function assay (calcium flux in response to agonist)
    

*Expected Benefit for Severe Cases*
If TRPM3 dysfunction is a core defect, restoration could improve multiple systems simultaneously (immune function, muscle function, autonomic function—all require calcium signaling). Benefit could be substantial and rapid (weeks). All severe cases could potentially benefit regardless of disease duration.

*Timeline*
In vitro validation: 6–12 months; pregnenolone sulfate pilot: 18 months; development of novel TRPM3 agonists: 48–60 months.

==== Microbiome-Targeted Immune Normalization

*Rationale*
Che et al.  used heat-killed _Candida albicans_ to demonstrate exaggerated cytokine responses. This fungal stimulation assay suggests that ME/CFS patients' immune systems are “primed” to overreact to microbial antigens. Gut dysbiosis with fungal overgrowth could provide constant low-level antigenic exposure, maintaining immune hyperactivation.

*The “Dysbiotic Priming” Hypothesis*

    - Gut barrier dysfunction (“leaky gut”) permits translocation of fungal/bacterial antigens
    - Constant low-level exposure primes immune cells to overreact
    - When challenged (infection, stress, exertion), primed immune system produces exaggerated cytokine response
    - Explains both baseline immune activation and PEM (exertion disrupts gut barrier further)

*Why Sex Differences May Relate to Microbiome*
Estrogen affects gut microbiome composition. Post-menopausal women have altered gut flora with increased Candida colonization. This could explain Che's finding of amplified IL-6 in women over 45 with low estradiol.

*Proposed Multi-Modal Intervention*

    - *Antifungal therapy*: Fluconazole 100–200 mg daily for 4 weeks, then intermittent dosing
    - *Gut barrier repair*: L-glutamine (5 g twice daily), zinc carnosine (75 mg twice daily), butyrate supplementation
    - *Microbiome restoration*: Targeted probiotics (Saccharomyces boulardii, Lactobacillus/Bifidobacterium strains) or fecal microbiota transplantation (FMT) from highly screened donors
    - *Dietary modification*: Low-fermentation diet during acute treatment, then gradual reintroduction

*Proposed Study Design*

    - *Population*: Severe ME/CFS patients with GI symptoms and documented dysbiosis (stool testing showing elevated Candida, low bacterial diversity)
    - *Design*: 2$times$2 factorial design testing antifungal + gut repair vs.\ placebo over 6 months
    - *Mechanistic assessments*:
    
        - Baseline Candida stimulation assay (replicate Che protocol)
        - Gut permeability (lactulose/mannitol test, zonulin levels)
        - Microbiome sequencing pre/post treatment
        - Cytokine responses to microbial stimulation pre/post treatment
    
    - *Primary outcomes*: GI symptom improvement, systemic symptom improvement, cytokine normalization

*Expected Benefit for Severe Cases*
Severe ME/CFS patients with prominent GI symptoms (estimated 60–70% of severe cases) may benefit most. If dysbiotic priming is a maintaining factor, addressing it could reduce baseline immune activation and PEM severity. Benefits likely gradual (3–6 months for microbiome reconstitution).

*Timeline*
Pilot study: 12–18 months; RCT: 24–36 months.

==== Duration-Severity Stratified Trials with Mechanistic Biomarkers

*Rationale*
The logic audit identified that no study has examined duration, severity, and sex simultaneously in a stratified design. Current trials may fail because they combine patients in different disease phases (early hyperactive vs.\ late exhausted) who require different therapeutic approaches.

*The “Two-Hit” Model Requiring Stratification*

    - *Hit 1 (Initial trigger)*: Determines whether patient enters high-cytokine trajectory or not
    - *Hit 2 (Ongoing factors)*: Determines severity within trajectory (genetics, sex, hormones, comorbidities)
    - *Interaction*: Early + severe = highest cytokines, rapid progression to exhaustion; Late + severe = severity driven by non-cytokine mechanisms

*Proposed Master Protocol Design*

    - *Universal screening*: All participants receive comprehensive immune profiling
    
        - Cytokine panel (including IL-2, IL-6, TNF-$alpha$, CCL11, CXCL9)
        - T-cell exhaustion markers (PD-1, Tim-3, LAG-3)
        - B-cell subsets (naïve, memory, plasmablasts)
        - Autoantibody titers (GPCR antibodies)
        - EV cytokine content
        - TRPM3 function
    
    - *Stratification*: Assign to treatment arm based on biomarker profile
    
        - *Arm A (Early hyperactive)*: Duration $<$3 years, elevated cytokines → anti-cytokine therapy
        - *Arm B (Late exhausted)*: Duration $>$3 years, normal cytokines, high PD-1 → B-cell depletion (daratumumab)
        - *Arm C (Female hormonal)*: Post-menopausal with low estradiol, high IL-6 → estrogen supplementation
        - *Arm D (TRPM3 dysfunction)*: Impaired calcium signaling → TRPM3 agonist
        - *Arm E (EV-dominant)*: Elevated EV cytokines → immunoadsorption
    
    - *Crossover*: Non-responders at 6 months cross to alternative arm based on response patterns

*Expected Benefit for Severe Cases*
This precision-medicine approach could achieve higher response rates (50–60%) compared to unstratified trials (typically 20–30%). All severe patients would be profiled and matched to optimal therapy. Trial would also validate the duration-severity-sex model and identify which biomarkers predict treatment response.

*Timeline*
Protocol development and regulatory approval: 12–18 months; enrollment and treatment: 36 months; analysis and publication: 48 months.

==== Exosomal HSAT2 RNA as Biomarker and Pathogenic Mediator

*Rationale*
Human-specific satellite 2 (HSAT2) RNA is a pericentromeric repeat sequence activated by viral infection, heat shock, and cellular senescence. In cancer models, HSAT2-containing exosomes drive immunosuppressive myeloid cell expansion and T-cell exhaustion . A parallel mechanism may operate in ME/CFS, particularly in post-viral subsets.

*Evidence Base*

    - *HSAT2 activation triggers*: Heat shock factor 1 (HSF1) activation, CTCF loss, DNA hypomethylation at pericentromeric heterochromatin—all documented in viral infection and ME/CFS
    - *Exosomal packaging*: HSAT2 and HERV-K RNAs selectively packaged into exosomes from stressed cells (Ewing sarcoma model) 
    - *Immune effects*: HSAT2+ exosomes taken up by CD33+ myeloid cells, driving MDSC-like phenotypes (CD33+HLA-DR–, CD33+PD-1+) and CD8+ T-cell exhaustion via IL-10, IL-35, IDO1, and TGF-$beta$
    - *Detection methods*: Serum HSATII RNA detectable using TRAP-ddPCR (tandem repeat amplification + droplet digital PCR) with high sensitivity in cancer discrimination 
    - *Therapeutic target*: Reverse transcriptase inhibitor AZT reduced HSAT2 accumulation in cancer models 

*Hypothesis: Exosomal HSAT2 Transmission in ME/CFS*
#hypothesis[Exosomal HSAT2 transmission in ME/CFS]<hyp:exosomal-hsat2-transmission>
Viral infections (EBV, HHV-6, SARS-CoV-2) induce HSF1 activation and DNA hypomethylation at pericentromeric heterochromatin, potentially derepressing HSAT2 satellite repeat RNA in ME/CFS patients. Analogous to Ewing sarcoma exosomes , HSAT2-containing extracellular vesicles may be selectively packaged and taken up by CD33+ myeloid cells, driving MDSC expansion and CD8+ T-cell exhaustion via IL-10, IL-35, IDO1, and TGF-$beta$ production. RT inhibitor AZT reduced HSAT2 accumulation in cancer models , suggesting a testable therapeutic hypothesis for ME/CFS.

*Certainty assessment:* Preprint data only (n=12--30, Ewing sarcoma context), no direct ME/CFS evidence.

*Testable predictions:*

    1. HSAT2 RNA elevated in ME/CFS serum exosomes vs healthy controls (TRAP-ddPCR )
    2. CD33+HLA-DR– MDSC frequency correlates with exosomal HSAT2 levels
    3. AZT or reverse transcriptase inhibitors reduce exosomal HSAT2 and improve fatigue scores in RCT

*Proposed Study Design*

    - *Phase 1 (Biomarker validation)*:
        - Population: 100 ME/CFS patients (50 post-viral, 50 non-post-viral) vs 50 healthy controls
        - Primary aim: Detect HSAT2 RNA in serum exosomes using TRAP-ddPCR 
        - Secondary aims: Correlate HSAT2 levels with (a) MDSC frequency (CD33+HLA-DR–), (b) T-cell exhaustion markers (PD-1+, Tim-3+, LAG-3+), (c) disease duration and severity
        - Stratification: Compare post-viral vs non-post-viral, early (less than 3 years) vs late (more than 3 years)

    - *Phase 2 (Mechanistic validation)*:
        - Isolate exosomes from ME/CFS patient plasma
        - Test uptake by healthy donor CD33+ myeloid cells in vitro
        - Measure induction of MDSC markers (HLA-DR–, PD-1+, IL-10 production)
        - Test whether AZT pre-treatment of patient cells reduces HSAT2 cargo and MDSC induction

    - *Phase 3 (Therapeutic pilot)*:
        - Population: Severe ME/CFS patients with elevated exosomal HSAT2 (top 25% from Phase 1)
        - Intervention: AZT 300 mg BID vs placebo for 12 weeks
        - Primary outcomes: Exosomal HSAT2 levels, MDSC frequency, fatigue severity
        - Safety monitoring: CBC, liver enzymes, mitochondrial toxicity (lactate, ATP levels)

*Expected Benefit for Severe Cases*
If HSAT2 exosomal transmission contributes to immune exhaustion in a subset of ME/CFS patients (particularly post-viral), then (1) biomarker-guided patient stratification could identify responders, and (2) AZT or other RT inhibitors could provide rapid therapeutic benefit. Severe patients with prominent post-viral onset and immune exhaustion biomarkers may benefit most.

*Caveats and Limitations*

    - *No direct ME/CFS evidence*: All data from cancer models; HSAT2 may not be elevated in ME/CFS
    - *Exosome packaging uncertain*: Cambier et al.  found HSAT2 DNA in EV preparations but not in exosome-enriched fractions, suggesting alternative carriers (protein complexes, lipoproteins)
    - *AZT toxicity*: Reverse transcriptase inhibitors have significant side effects (mitochondrial toxicity, bone marrow suppression); risk-benefit must be carefully evaluated
    - *Heterogeneity*: HSAT2 elevation may be restricted to specific ME/CFS subtypes (post-viral, HSF1-activated, senescent)

*Timeline*
Phase 1 (biomarker): 12 months; Phase 2 (mechanistic): 18 months; Phase 3 (therapeutic): 24 months. Total: 4–5 years to completed RCT.

=== Tier 3: Long-Term Mechanistic Research (Foundational Understanding)
<sec:tier3-research>

These studies address fundamental questions about ME/CFS immunopathology and will guide future therapeutic development but require 5–10 years to complete.

==== Longitudinal Immune Evolution Cohort (Onset to Exhaustion)

*Rationale*
The duration-dependent findings (Hornig, Montoya) are cross-sectional snapshots. A prospective longitudinal cohort following patients from disease onset through the first 5 years would definitively establish:

    - Whether individual patients transition from high-cytokine to exhaustion phase
    - Exact timing and predictors of transition
    - Whether early intervention prevents exhaustion
    - Which patients never enter high-cytokine phase (and why)

*Proposed Study Design*

    - *Enrollment*: Patients within 6 months of ME/CFS onset (infectious mononucleosis, COVID-19, or other identified triggers)
    - *Target enrollment*: n=500 to account for spontaneous recovery (approximately 15–20%)
    - *Assessments*: Quarterly for first 2 years, semi-annually thereafter
    
        - Comprehensive cytokine panel (plasma and EV fractions)
        - T-cell exhaustion markers and epigenetic profiling
        - B-cell subsets and autoantibody titers
        - NK cell function
        - TRPM3 function
        - Microbiome (stool samples)
        - Symptom severity, functional status
    
    - *Substudies*:
    
        - Randomize subset to early anti-cytokine therapy vs.\ observation
        - Compare natural history vs.\ intervention outcomes
    

*Expected Insights*

    - Define ME/CFS “stages” with precision
    - Identify biomarkers that predict progression vs.\ recovery
    - Establish optimal treatment windows
    - Determine whether preventing exhaustion changes long-term outcomes

*Impact for Severe Cases*
Findings would guide future treatment timing for all newly diagnosed patients, potentially preventing progression to severe disease. Results would take 5–7 years but could transform clinical approach.

*Timeline*
Enrollment: 24–36 months; follow-up: 60 months; analysis: 72–84 months.

==== IL-2 Resistance Functional Studies

*Research Questions*

    - Do ME/CFS T cells proliferate normally in response to exogenous IL-2?
    - Are IL-2 receptors (CD25/CD122/CD132) expressed normally on T cells and NK cells?
    - Is downstream signaling (JAK1/JAK3/STAT5 phosphorylation) intact?
    - Are elevated EV-IL-2 levels functionally active or sequestered/inactive?
    - Can pharmacologic IL-2 overcome the dysfunction?

*Proposed Mechanistic Studies*

    - *In vitro proliferation assays*
    
        - Isolate PBMCs from ME/CFS patients and controls
        - Stimulate with increasing doses of recombinant IL-2
        - Measure proliferation (CFSE dilution), STAT5 phosphorylation, Treg expansion
        - If ME/CFS cells respond poorly → IL-2 resistance confirmed
        - If ME/CFS cells respond normally → problem is insufficient IL-2 availability despite elevated EV levels
    
    - *Receptor expression and signaling*
    
        - Flow cytometry for CD25/CD122/CD132 surface expression
        - Phospho-flow for pSTAT5 after IL-2 stimulation
        - Western blot for JAK1/JAK3 expression
    
    - *EV-IL-2 functional testing*
    
        - Purify EVs from ME/CFS plasma
        - Test whether EV-IL-2 can signal to recipient cells
        - Compare bioactivity of EV-bound vs.\ free IL-2
    

*Therapeutic Implications*

    - If resistance confirmed → need IL-2 receptor agonists with higher potency, or downstream pathway activators
    - If insufficient availability → standard low-dose IL-2 therapy should work
    - If EV-IL-2 is sequestered → EV depletion is the correct approach

*Timeline*
Mechanistic studies: 12–24 months; therapeutic trials based on findings: 36–48 months.

==== CCL11 (Eotaxin) Neutralization for Cognitive Dysfunction

*Rationale*
CCL11 (eotaxin-1) correlates with ME/CFS severity , decreases during healthier periods, and is known to:

    - Impair hippocampal neurogenesis
    - Cause cognitive dysfunction in animal models
    - Increase with aging (“cognitive aging” biomarker)
    - Cross the blood-brain barrier readily

*Why CCL11 Is a Promising Target*

    - Directly toxic to neural progenitor cells
    - Specific correlation with cognitive symptoms
    - Aging research has developed CCL11-neutralizing antibodies
    - Statins reduce CCL11 (may explain why some ME/CFS patients report benefit from statins)

*Proposed Research Path*

    - *Observational study*: Correlate CCL11 levels with cognitive testing (Montreal Cognitive Assessment, Trail Making Test)
    - *Mechanistic study*: CSF CCL11 levels and correlation with neuroimaging (MRI volumetrics, PET microglial activation)
    - *Intervention pilot*: Atorvastatin 40 mg daily (known to reduce CCL11) in severe ME/CFS with cognitive dysfunction
    - *Advanced therapy*: Anti-CCL11 monoclonal antibody (if statin pilot successful)

*Expected Benefit for Severe Cases*
Severe cognitive dysfunction is often the most disabling symptom. If CCL11 neutralization improves cognition, quality of life could improve substantially even without improving physical fatigue. Approximately 80–90% of severe cases have cognitive impairment.

*Timeline*
Observational + mechanistic studies: 18–24 months; statin pilot: 12–18 months; antibody development and trials: 60–84 months.

=== Prioritization Summary: Research Directions by Impact and Timeline
<sec:research-prioritization>



#figure(
  table(
    columns: (auto, auto, auto, auto, auto),
    // TODO: fix columnsp{2cm}p{2cm}p{2cm}p{2.5cm}}

    [*Research Direction*], [*Severe Case Benefit*], [*Timeline to Results*], [*Feasibility*], [*Priority Rank*],

    table.cell(colspan: 5)[*TIER 1: Immediate Translation (Existing Drugs)*],

    [Hormonal modulation (post-menopausal women)], [High (15–20% of severe)], [12–24 mo], [Very High], [*1*],

    [Low-dose IL-2 (Treg restoration)], [High (all with autoimmunity)], [18–24 mo], [High], [*2*],

    [EV depletion (immunoadsorption)], [Very High (80–90% with cognitive)], [12–18 mo], [High], [*3*],

    [Phase-targeted anti-cytokine (early)], [Very High (disease-modifying)], [24–36 mo], [Moderate], [*4*],

    table.cell(colspan: 5)[*TIER 2: Near-Term Trials (Moderate Complexity)*],

    [TRPM3 modulation], [Very High (all severe cases)], [36–48 mo], [Moderate], [*5*],

    [Microbiome normalization], [High (60–70% with GI)], [24–36 mo], [High], [*6*],

    [Stratified biomarker trials], [Very High (precision medicine)], [48 mo], [Moderate], [*7*],

    table.cell(colspan: 5)[*TIER 3: Long-Term Research (Foundational)*],

    [Longitudinal cohort (onset to exhaustion)], [High (prevents severe cases)], [72–84 mo], [Low], [*8*],

    [IL-2 resistance mechanistic studies], [Moderate (guides therapy)], [36–48 mo], [High], [*9*],

    [CCL11 neutralization], [High (cognitive-dominant)], [60–84 mo], [Low], [*10*],
  ),
  caption: [Prioritized research directions for severe ME/CFS],
) <tab:research-priorities>


*Recommended Immediate Actions*

For maximum impact on severe ME/CFS within 2 years:

    - *Launch in parallel* (can run simultaneously):
    
        - Hormonal modulation pilot (post-menopausal women, n=20)
        - EV depletion mechanistic study (immunoadsorption with EV analysis, n=15)
        - Low-dose IL-2 open-label pilot (n=15)
    

    - *Mechanistic validation* (to guide Tier 2 trials):
    
        - TRPM3 _in vitro_ studies (calcium rescue experiments)
        - IL-2 resistance functional assays
        - Microbiome-cytokine correlation studies
    

    - *Registry development*:
    
        - Establish prospective registry for newly diagnosed patients (enrollment for longitudinal cohort)
        - Implement universal biomarker profiling to enable stratified trial enrollment
    

*Expected Cumulative Impact*

If these research directions succeed:

    - *Year 1–2*: Hormonal modulation, EV depletion, low-dose IL-2 pilots complete → 3 potential new therapies for distinct subgroups (combined coverage: 40–50% of severe cases)
    - *Year 2–4*: TRPM3 modulation, microbiome normalization, stratified trials complete → precision medicine approach validated, additional 30–40% coverage
    - *Year 5–7*: Longitudinal cohort results guide early intervention → prevent progression to severe disease in newly diagnosed patients
    - *Year 7–10*: Advanced therapies (CCL11 antibodies, novel TRPM3 agonists) → address remaining treatment-refractory cases

Combined, these approaches could provide therapeutic options for 70–80% of severe ME/CFS patients within 5 years, with prevention strategies for newly diagnosed patients following within 7–10 years.

#limitation(title: [Research Direction Projections: Optimistic Extrapolation])[
The timelines, expected response rates, and cumulative impact projections in this section are best-case estimates based on historical precedent from other fields, not ME/CFS-specific data. Key caveats:

    - Historical ME/CFS clinical trials have a high failure rate (rituximab Phase III, rintatolimod FDA rejection), and promising pilot results frequently do not replicate in larger RCTs.
    - The projected “70–80% coverage within 5 years” assumes all Tier 1 and Tier 2 interventions succeed — an improbable scenario given typical attrition rates in translational research.
    - Stratified trial designs assume biomarker-defined subgroups correspond to mechanistically distinct treatment-responsive populations — this has not been validated in ME/CFS.
    - Regulatory, funding, and recruitment barriers specific to ME/CFS (stigma, limited research infrastructure, patient inability to attend trial sites) are not reflected in the timeline estimates.

]

=== Post-Infectious Pathogenesis
<sec:post-infectious-pathogenesis>

Post-infectious ME/CFS arises when acute infections trigger persistent pathophysiological changes that outlast the initial pathogen. Key mechanisms include:

    - *Viral persistence*: Some pathogens (EBV, enteroviruses) may establish low-level persistent infections
    - *Immune dysregulation*: Acute infection disrupts immune homeostasis, leading to chronic activation
    - *Metabolic reprogramming*: Pathogen-induced metabolic changes persist after clearance
    - *Neuroinflammatory priming*: Acute neuroinflammation creates long-lasting glial cell activation
    - *Epigenetic modifications*: Infection-induced epigenetic changes alter gene expression patterns

This section explains why ME/CFS persists after the inciting infection has resolved, creating a self-sustaining pathological state independent of the original trigger.

=== Trained Immunity and Epigenetic Lock-in
<sec:trained-immunity>

Trained immunity refers to the long-term functional reprogramming of innate immune cells following exposure to microbial products. In ME/CFS:

    - *Monocyte training*: Pathogen-associated molecular patterns (PAMPs) induce epigenetic modifications
    - *Histone modifications*: H3K4me3 marks at inflammatory gene promoters enhance responsiveness
    - *Metabolic rewiring*: Shift from oxidative phosphorylation to glycolysis in trained cells
    - *Persistent activation*: Trained cells maintain hyperresponsive state for months to years
    - *Therapeutic implications*: Epigenetic modifiers may reverse trained immunity phenotypes

This epigenetic lock-in mechanism explains the chronic nature of immune dysfunction in ME/CFS and represents a potential therapeutic target.

#limitation(title: [Trained Immunity in ME/CFS: No Disease-Specific Data])[
Trained immunity (epigenetic reprogramming of innate immune cells) is well-characterized in general immunology and has been demonstrated in atherosclerosis, sepsis, and BCG vaccination responses. Its application to ME/CFS is entirely extrapolated — no study has measured H3K4me3 marks at inflammatory gene promoters, metabolic rewiring from OXPHOS to glycolysis in monocytes, or trained immunity reversal in ME/CFS patients. Whether ME/CFS monocytes exhibit a trained phenotype, and whether this is cause or consequence of chronic immune activation, is unknown.
]

=== Zonulin-Mediated Gut Permeability
<sec:zonulin-permeability>

Zonulin is a protein that regulates intestinal tight junctions. In ME/CFS:

    - *Increased zonulin*: Elevated levels correlate with gut permeability and symptom severity
    - *LPS translocation*: Bacterial lipopolysaccharide enters circulation, triggering systemic inflammation
    - *Mast cell activation*: LPS stimulates mast cells, exacerbating neuroinflammatory responses
    - *Immune activation*: Chronic endotoxemia maintains systemic inflammatory state
    - *Therapeutic target*: Zonulin inhibitors (larazotide acetate) may reduce gut permeability

Gut barrier dysfunction represents a critical interface between peripheral inflammation and systemic ME/CFS pathophysiology.

== Pregnancy Immunology and ME/CFS
<sec:pregnancy-immunology-mecfs>

The approximately 30% of ME/CFS patients who improve during pregnancy () provide a natural experiment revealing immune-axis plasticity. This section examines the immunological mechanisms that may underlie that signal and the research questions they raise.

=== Pregnancy as a Forced Tolerogenic Reset

#speculation(title: [Pregnancy as a Forced Tolerogenic Reset — Why ~30% Improve])[
*Certainty: 0.35.* Existing mechanistic frameworks for pregnancy improvement in ME/CFS invoke PIBF-driven Th2 shift and allopregnanolone-mediated HPA calming (introduced in @spec:micronized-progesterone-bridge, Chapter @ch:epidemiology-outcomes). A deeper immunological mechanism may operate in parallel: pregnancy forces sustained expansion of decidual NK cells (CD56#super[bright]CD16#super[−]) and tolerogenic regulatory T cells (Tregs), transiently suppressing the exhausted or autoreactive CD56#super[dim] NK and effector T-cell phenotypes characteristic of ME/CFS .

The 30% who improve may represent patients whose ME/CFS is driven primarily by *peripheral immune dysregulation amenable to tolerogenic reset* — a mechanistically distinct subgroup from those driven by mitochondrial, autonomic, or structural neurological pathology. This immune-driven subtype would be enriched in patients responsive to rituximab (per rituximab), to immunoadsorption, and to progesterone bridge therapy — all of which modulate peripheral immune effector cells rather than the nervous system.

*Falsifiable prediction:* Baseline NK-cell phenotype (CD56#super[bright]/CD56#super[dim] ratio, NKG2A expression, KIR repertoire) and Treg fraction, measured before planned conception, will predict pregnancy response in a prospective cohort. Improvers will begin with a more "exhausted/effector-skewed" profile that normalizes during gestation; non-improvers will show a phenotype driven by non-immune mechanisms (metabolic or neurological).

*Limitations:* No prospective study has measured NK subtype evolution across pregnancy in ME/CFS. The mechanism is extrapolated from general pregnancy immunology. Single unreplicated source for the 30% figure  limits confidence.
] <spec:tolerogenic-reset>

=== Mast Cell Stabilization via Progesterone Receptor B

#speculation(title: [Mast Cell Activation Attenuation via Progesterone Receptor B as a Secondary Mechanism])[
*Certainty: 0.25.* Mast cells express progesterone receptor isoform B (PR-B); progesterone reduces histamine release and tryptase secretion from mast cells in vitro. In the ME/CFS context, a subgroup with mast cell activation syndrome (MCAS) overlap — characterized by elevated serum tryptase, urinary methylhistamine, and flushing episodes @Theoharides2021Cells — may obtain a secondary benefit from cycle-synchronized oral micronized progesterone: cyclic mast cell stabilization during luteal-phase dosing, reducing the neuroinflammatory and pain amplification cascade driven by mast cell-nerve interaction.

This mechanism is distinct from both PIBF-mediated Th2 shift and allopregnanolone GABA-A modulation, and would be expected to be most prominent in the MCAS-overlap ME/CFS phenotype rather than the broader population.

*Falsifiable prediction:* ME/CFS patients with elevated baseline tryptase or 24-hour urinary N-methylhistamine will show greater symptomatic improvement on luteal-phase oral micronized progesterone than those with normal mast cell activation markers.

*Limitation:* Mast cell PR-B expression and functional response in ME/CFS have not been studied. Effect in non-pregnant, non-sensitized conditions is extrapolated from in vitro work.
] <spec:mast-cell-progesterone>

=== Estrogen Priming as a Prerequisite for PIBF Induction

#speculation(title: [Sequential Estrogen–Progesterone May Be Required for PIBF Induction Outside Pregnancy])[
*Certainty: 0.25.* A critical mechanistic gap in the oral micronized progesterone hypothesis (@spec:micronized-progesterone-bridge, Chapter @ch:epidemiology-outcomes) is that progesterone-induced blocking factor (PIBF) was not induced by progesterone alone in non-pregnant controls in the key in vitro study . Pregnancy uniquely combines high estrogen, high progesterone, and placental-derived factors; the absence of PIBF in non-pregnant controls may reflect a requirement for preceding estrogen priming that remodels lymphocyte progesterone receptor density and downstream signaling.

If PIBF induction requires sequential estrogen–progesterone exposure (mimicking the follicular-to-luteal hormonal transition, or the first-trimester surge), then a simple progesterone-only protocol may fail to activate the immune route while still producing allopregnanolone neurosteroid effects. This implies that the PIBF immune mechanism is more accessible during late-luteal phase (when estrogen has primed receptors) than during follicular-phase supplementation.

*Falsifiable prediction:* Sequential transdermal estradiol (days 1–14 of cycle) followed by oral micronized progesterone (days 15–28) will induce measurable PIBF in ME/CFS patients' peripheral blood mononuclear cells (ex vivo assay), while a progesterone-alone protocol using the same progesterone dose will not.

*Safety caveat:* Sequential combined HRT carries higher thromboembolic and endometrial cancer risk than progesterone alone; combined HRT requires more specialist oversight and is not appropriate for self-administration. Any trial design must screen for and exclude high-risk individuals.

*Limitation:* Combined HRT trials in ME/CFS are not on any current trial registry. The PIBF ex vivo assay described in the prediction would need to be developed and validated before large trials.
] <spec:estrogen-pibf-priming>

=== Post-Viral Immune Context as a PIBF-Sensitizing Window

#speculation(title: [Post-Viral Immune Activation as a Transient PIBF-Permissive State])[
*Certainty: 0.15.* PIBF production appears to require an immune context that resembles the pregnancy milieu — characterized by elevated progesterone, specific lymphocyte priming, and placental signaling factors that have no non-pregnant equivalent . However, other states of acute systemic immune perturbation — acute viral infection, vaccine response, post-Epstein-Barr virus reactivation window — may transiently create sufficient immune-context overlap to permit PIBF induction by exogenous progesterone in non-pregnant patients.

This would imply a narrow *therapeutic window* following acute immune triggers where progesterone bridge therapy is most likely to engage the immune route: administration shortly after an immune trigger, when the immune milieu is most dynamically altered. Outside this window, the neurosteroid (allopregnanolone) route may be the only operative mechanism.

*Falsifiable prediction:* Oral micronized progesterone administered within 4 weeks of a confirmed acute immune trigger (documented viral infection or vaccine) will induce measurable PIBF in non-pregnant ME/CFS patients' PBMCs (ex vivo), while the same protocol administered > 6 months from any trigger will not.

*Limitation:* This hypothesis lacks any direct supporting evidence — it is a mechanistic extrapolation. The PIBF assay itself does not exist in standardized form. Certainty is intentionally low (0.15).
] <spec:postviral-pibf-window>

== Lichen Sclerosus as a Shared Immune Terrain Marker
<sec:lichen-sclerosus-immune-terrain>


Lichen sclerosus (LS) is a chronic inflammatory dermatosis classified as a Th1-dominant auto­immune condition. Its cytokine signature — elevated IL-7, IL-15, IFN-γ, and TNF-α, with reduced IL-10 — overlaps substantially with the immune profile documented in active-phase ME/CFS  . Both conditions also show regulatory T cell dysfunction via the miR-155/Foxp3 axis and share genetic risk loci (PTPN22, CTLA4) associated with classical autoimmune diseases  @Batham2024MECFSAutoimmunity. Oxidative stress markers (elevated malondialdehyde and 8-hydroxydeoxyguanosine, reduced superoxide dismutase) are independently documented in both .

Large population studies confirm that LS clusters with other autoimmune conditions: thyroiditis, alopecia areata, vitiligo, Sjögren syndrome, and systemic lupus erythematosus are among the most elevated comorbidities @Kassels2024LSAutoimmune @Gulin2023LSComorbiditySweden. ME/CFS shows a similar comorbidity phenotype — its autoimmune overlap includes Hashimoto thyroiditis, Sjögren syndrome, and SLE @Batham2024MECFSAutoimmunity. This shared comorbidity landscape suggests a common immune predisposition terrain rather than coincidental co-occurrence.

Critically, no published study has directly measured LS prevalence in ME/CFS populations or vice versa. The question of whether LS co-occurs in ME/CFS at rates exceeding population background is entirely open. The null result from the closest available proxy — fibromyalgia — is informative but not decisive: Halonen et al.\ (n = 10,692) found no significant association between fibromyalgia and LS (OR 0.85, 95% CI 0.61–1.18) @Halonen2024LSRiskFactorsFinland. Since fibromyalgia and ME/CFS overlap substantially but are not equivalent, this result constrains but does not close the question.

#speculation(title: [Lichen Sclerosus as a Cutaneous Signal of ME/CFS Immune Predisposition Terrain])[

*Certainty: 0.25.* Based on shared Th1 cytokine profiles, overlapping Treg dysfunction, shared genetic risk loci, and a parallel autoimmune comorbidity landscape between LS and ME/CFS. No direct epidemiological evidence exists; certainty reflects mechanistic inference only. Not replicated.

Both lichen sclerosus and ME/CFS fail to fulfil classical autoimmune disease criteria despite clear immune dysregulation signatures. Both are associated with the same cluster of autoimmune conditions (Hashimoto's, Sjögren's, SLE, vitiligo), suggesting they may arise from a shared underlying immune predisposition — a terrain of chronic Th1 over-activation and Treg insufficiency that can manifest in different target organs depending on genetic, hormonal, and local tissue factors. In this model, LS is not a consequence of ME/CFS but a parallel manifestation of the same dysregulated immune terrain: the skin and mucosa expressing what ME/CFS expresses systemically.

*Mechanistic pathway:* Persistent Th1 overactivation → clonal antigen-driven T cell selection in tissue → local cytokine loop (IL-7/IL-15 sustain effector T cells; IFN-γ drives stromal fibrosis via TGF-β) → irreversible fibrosis once established. ECM1 dysfunction (extracellular matrix protein 1, autoantibodies present in 75% of vulvar LS cases) amplifies the loop by impairing basement membrane integrity and releasing neoantigens  .

*Implication for ME/CFS patients:* LS presenting in a patient with unexplained fatigue and post-exertional malaise may represent a diagnostic signal for underlying systemic immune dysregulation rather than an isolated dermatological condition. This does not establish ME/CFS as a cause of LS; it suggests both may reflect a shared immune predisposition that warrants systematic evaluation.

*Falsifiable prediction:* ME/CFS cohorts prospectively screened for LS will show LS prevalence exceeding age- and sex-matched population controls (expected LS population prevalence: 0.1–3%); conversely, LS cohorts screened for ME/CFS criteria (with PEM assessment) will show ME/CFS prevalence exceeding controls.

*Limitations:* Entirely speculative; no cohort data. The fibromyalgia-LS null result (Halonen 2024) suggests caution. LS associates selectively with cutaneous/mucosal autoimmunity — RA, T1DM, and MS are null or protective in LS studies, indicating that not all autoimmune terrain produces LS risk @Halonen2024LSRiskFactorsFinland. Sex and hormonal factors (LS is far more common in post-menopausal women) may confound any ME/CFS-LS prevalence comparison without careful stratification.
] <spec:lichen-sclerosus-immune-terrain>

#open-question(title: [Does LS Precede ME/CFS Onset, and Could It Represent a Prodromal Immune Signal?])[

If LS and ME/CFS share immune predisposition terrain, the temporal question becomes clinically relevant: does LS onset typically precede, follow, or coincide with ME/CFS onset? A prodromal pattern — LS appearing months to years before ME/CFS criteria are met — would support a shared terrain model where cutaneous immune dysregulation is an early systemic signal. A concurrent pattern would suggest parallel manifestations. A post-ME/CFS pattern could indicate ME/CFS-driven systemic immune dysfunction enabling secondary mucosal autoimmunity.

Retrospective patient registries (You+ME, UK ME/CFS Biobank) could resolve this with a targeted questionnaire addition (LS diagnosis date relative to ME/CFS onset), at negligible cost.
] <oq:lichen-sclerosus-temporal>
=== IL-15/IL-7 Trans-Presentation: The Shared Cytokine Fingerprint
<sec:il15-il7-shared-fingerprint>

#hypothesis(title: [IL-15 Trans-Presentation as a Shared Mechanism Sustaining Chronic Immune Activation in LS and ME/CFS])[

*Certainty: 0.45.* Based on convergent evidence from independent LS and ME/CFS cytokine studies; direct comparative measurement in patients with both conditions is absent. Partially replicated.

Both LS lesions and ME/CFS plasma show independently elevated IL-15 and IL-7 — homeostatic γc-chain cytokines that maintain memory CD8+ T-cell and NK cell survival while driving chronic low-grade activation  . In LS, IL-15 trans-presentation by tissue-resident dendritic cells sustains dermal effector T cells despite absent systemic inflammatory signals. An analogous mechanism in ME/CFS — trans-presentation in muscle, gut mucosa, or gut-associated lymphoid tissue — could sustain tissue-localized exhausted-effector states without producing overt systemic cytokine elevations, directly explaining the "inflamed but not inflammatory" paradox documented by Corbitt 2019 (64 cytokines: none differ consistently in bulk plasma; see Section @oq:invisible-immunity).

*Implication:* If IL-15 trans-presentation is operative in ME/CFS, therapeutic blockade of soluble IL-15Rα — not IL-15 itself, which is pleiotropic and essential — could specifically interrupt the local amplification loop without broad immunosuppression.

*Falsifiable prediction:* Soluble IL-15Rα in ME/CFS plasma will correlate inversely with NK cytotoxicity (r > 0.4) and will be elevated in patients with higher PEM frequency. LS patients with co-existing fatigue will show higher sIL-15Rα than LS-only age-matched controls.

*Limitations:* Soluble IL-15Rα is not yet a standardized ME/CFS research assay. The trans-presentation mechanism in ME/CFS tissues is entirely inferred; tissue biopsy data are absent. Not yet replicated in ME/CFS context.
] <hyp:il15-trans-presentation>

=== miR-155/Foxp3 Axis as a Shared Epigenetic Switch
<sec:mir155-foxp3-axis>

#speculation(title: [miR-155 Upregulation as a Convergent Epigenetic Driver of Treg Dysfunction in LS and ME/CFS])[

*Certainty: 0.30.* Based on LS miR-155 mechanistic evidence and ME/CFS miRNA EV cargo data from independent studies; direct comparative measurement is absent. Not yet replicated in the ME/CFS context.

LS lesions show consistently elevated miR-155 driving Foxp3 transcript destabilization and regulatory T cell dysfunction . Foxp3 instability removes the brake on Th1 effector responses, perpetuating the IL-7/IL-15/IFN-γ cytokine loop. In ME/CFS, extracellular vesicle miRNA profiling has identified miR-155 family changes in independent cohorts @Wang2025LSEpigenetic, suggesting a shared epigenetic switch at the Treg/Th1 balance point. If validated, the miR-155/Foxp3 axis would explain the convergence of both conditions on the same autoimmune comorbidity cluster (Hashimoto's, Sjögren's, SLE, vitiligo) while predicting that epigenetic Treg restoration strategies — rather than cytokine-level blockade — would be the durable therapeutic approach.

*Falsifiable prediction:* Plasma EV miR-155 will be elevated >1.5× in ME/CFS vs healthy controls; elevation will correlate inversely with circulating Foxp3+ Treg frequency (r < −0.35). In an LS+ME/CFS subgroup, miR-155 will be highest.

*Limitations:* ME/CFS miRNA studies are small and use heterogeneous methods. EV miR-155 elevation is not specific to ME/CFS — it is elevated in many inflammatory states. The causal chain (miR-155 → Foxp3 instability → ME/CFS phenotype) is inferred; direct Treg manipulation experiments in ME/CFS cells are absent.
] <spec:mir155-foxp3-mecfs>

=== Tissue-Resident Memory T Cells: ME/CFS as Multi-Organ TRM Hyperinflammation
<sec:trm-mecfs-hypothesis>

#speculation(title: [ME/CFS as a Multi-Organ Tissue-Resident Memory T-Cell Persistence Syndrome])[

*Certainty: 0.30.* Supported by LS TRM biology, ME/CFS muscle CD8+ infiltrate data, and the IL-15 trans-presentation convergence; no dedicated TRM density study in ME/CFS tissues exists. Not yet replicated.

LS lesions are dominated by CD8+ tissue-resident memory T cells (TRM; CD103+CD69+) that persist locally through IL-15 trans-presentation and re-activate upon epithelial stress  . The same TRM biology has emerged in post-viral syndromes generally. A unifying hypothesis for ME/CFS: the initial infectious trigger seeds multi-organ TRM deposits (gut mucosa, skeletal muscle, dorsal root ganglia, brain parenchyma) that persist indefinitely via IL-15; each subsequent metabolic demand — physical exertion, cognitive load, immune challenge — triggers local TRM reactivation with focal IFN-γ/TNF-α release, producing PEM without detectable systemic inflammation in bulk blood. This framework directly resolves the compartmentalized immunity paradox (Section @oq:invisible-immunity): the pathology is in tissue, blood-based studies miss it.

*Implication for PEM:* PEM onset delay (symptoms peak 12–24h post-exertion) would correspond to TRM reactivation kinetics — slower than immediate cytokine responses, matching clinical observation. Recovery time (days to weeks) reflects the contraction phase of locally reactivated TRM.

*Falsifiable prediction:* (1) Muscle biopsy after a standardized PEM provocation will show CD103+CD69+ TRM density >2× pre-PEM baseline. (2) Blocking IL-15 will reduce PEM frequency in a small controlled trial. (3) CD8+ TRM density in gut biopsy will correlate with PEM severity score.

*Limitations:* Muscle and gut biopsies post-PEM are ethically demanding and rarely performed; the evidence base rests on Light et al. (2009) CD8+ infiltrate data (limited methodology) and cross-disease inference. TRM persistence without ongoing antigen is possible but less stable than antigen-supported TRM; if antigen is absent, TRM would be expected to contract over years — inconsistent with decades-long ME/CFS in some patients unless sustained IL-15 replaces antigenic stimulus. Not yet directly tested in ME/CFS.
] <spec:trm-mecfs>

=== ECM1-Axis Dysfunction as a Connective-Tissue-Immune Bridge
<sec:ecm1-axis-mecfs>

#speculation(title: [ECM1 Hypofunction as a Unifying Connective-Tissue-Immune Bridge in ME/CFS])[

*Certainty: 0.40.* Based on ECM1's documented role in LS pathogenesis, its expression in multiple ME/CFS-relevant tissues (gut basement membrane, vascular endothelium, CNS pericytes), and convergent ME/CFS evidence for gut barrier disruption and BBB fragility. No direct ECM1 measurement in ME/CFS exists. Not yet replicated.

ECM1 (extracellular matrix protein 1) regulates basement membrane integrity by binding perlecan and laminin, and modulates angiogenesis and immune cell trafficking across tissue barriers. In LS, anti-ECM1 autoantibodies (present in ~75% of vulvar cases) unmask neoantigens at the dermoepithelial junction and sustain a self-amplifying inflammatory loop  . ECM1 is also expressed in vascular endothelium, gut basement membrane, and CNS pericytes (Human Protein Atlas). If a subset of ME/CFS patients develops anti-ECM1 antibodies or functional ECM1 deficiency — either through autoimmune generation or secondary to chronic Th1-driven basement membrane stress — the consequences would span multiple ME/CFS-relevant compartments simultaneously: increased gut permeability (facilitating LPS translocation and systemic immune activation), impaired BBB integrity (enabling neuroinflammation), and abnormal vascular wall compliance (contributing to orthostatic intolerance).

This would make ECM1 dysfunction a unifying connective-tissue-immune bridge, potentially explaining why ME/CFS patients with LS (or with ECM1 autoantibodies without overt LS) show clustering of gut, neurological, and autonomic symptoms — not as independent comorbidities but as manifestations of a single barrier-integrity deficit.

*Falsifiable prediction:* Anti-ECM1 antibodies will be detectable at >2× population baseline prevalence (expected ~2–5%) in an unselected ME/CFS cohort (n ≥ 200). Seropositive patients will show elevated zonulin (gut permeability marker) and higher S100B variability (BBB stress marker) compared to seronegative ME/CFS controls, independent of disease duration or severity.

*Limitations:* ECM1 autoantibody ELISA is standardized for LS diagnosis but has not been applied to ME/CFS cohorts. Whether ECM1 dysfunction in ME/CFS would produce overt LS phenotype or a subclinical barrier-fragility syndrome is unknown. The multicompartment prediction (gut + BBB + vascular simultaneously) is mechanistically plausible but would require highly specific ECM1 loss to produce; local ECM1 isoform variation may limit systemic effects. ECM1 knockout mice (Hamada 2003 — lipoid proteinosis phenotype) suggest severe loss produces dramatic phenotype, but partial loss/autoantibody-mediated dysfunction may have subtler effects.
] <spec:ecm1-axis-mecfs>
