#import "../../../../shared/environments.typ": *

=== Viral Persistence and Clearance Failure
<sec:viral-persistence>

ME/CFS is predominantly a post-infectious syndrome, with 60-80% of cases reporting onset following an acute infection. The critical question is not just which pathogens trigger ME/CFS, but why some patients successfully clear post-viral pathology while others develop chronic fatigue syndromes. The divergence between recovery and chronicity may depend on viral clearance dynamics during a critical window following acute infection.

==== The Critical Clearance Window Hypothesis

#hypothesis(title: [Critical Clearance Window Determining Chronic Outcomes])[
*Certainty: 0.40.* There exists a time-limited window (approximately 2-8 weeks post-infection) during which effective viral clearance determines long-term outcome. Patients who fail to clear viral antigens and resolve immune activation within this window are at high risk of developing ME/CFS, while those who achieve complete clearance recover fully.

*Evidence Base.* Longitudinal studies of infectious mononucleosis show that approximately 10-12% of patients develop CFS-like symptoms at 6 months post-infection (the Dubbo cohort finding), with the failure rate being remarkably pathogen-agnostic (similar rates for EBV, Coxiella burnetii, and Ross River virus). This suggests that the pathogen matters less than the host response pattern. In Long COVID, similar proportions develop persistent symptoms, with immune signatures at 3 months predicting 12-month outcomes. The time course suggests a critical period where the immune system either successfully resolves the post-infectious state or becomes locked in a pathological configuration.

*Mechanistic Rationale.* During the clearance window, several interconnected processes must occur successfully:

1. *Viral eradication or containment*: Complete elimination of replicating virus or establishment of effective latency control
2. *Immune resolution*: Transition from acute inflammatory response to homeostatic baseline
3. *Tissue repair*: Clearance of damaged cells and restoration of normal tissue function
4. *Immune reprogramming*: Re-establishment of normal immune surveillance and tolerance mechanisms

Failure at any of these steps during the critical window may initiate self-sustaining pathological loops that persist indefinitely.

*Clinical Implications.* This hypothesis has profound implications for early intervention:

- *Treatment timing*: Antiviral or immunomodulatory interventions may only be effective if administered during the clearance window
- *Biomarker development*: Immune profiles during the acute phase could predict who will develop ME/CFS
- *Prevention strategies*: Early aggressive treatment of high-risk patients might prevent chronicity

*Testable Predictions.*
- Immune profiles at 4 weeks post-infection will predict 6-month ME/CFS status with >80% accuracy
- Patients who receive antiviral treatment within 2 weeks of infection will have lower ME/CFS incidence than untreated controls
- The duration of elevated inflammatory markers (IL-6, CRP) beyond 8 weeks will correlate with ME/CFS severity
- Early intervention (within 4 weeks) with immunomodulators will prevent the establishment of chronic immune signatures

*Limitations.* The specific timing of the clearance window may vary by pathogen and individual factors. The hypothesis assumes that viral clearance is the primary determinant, whereas host factors (genetics, prior immune history) may be equally important. No prospective trial has tested early intervention strategies.
] <hyp:critical-clearance-window>

==== Viral Reservoir Mechanisms

Multiple mechanisms may enable viral persistence despite apparent clinical recovery:

*Active Low-Level Replication.*
Some evidence suggests that ME/CFS patients may harbor ongoing low-level viral replication that evades standard detection. Sensitive PCR techniques have detected viral RNA in tissues (gut, nervous system) months after apparent recovery. However, the significance of these findings remains controversial, as low-level viral detection does not establish causality.

*Viral Latency and Reactivation.*
Herpesviruses (EBV, HHV-6, CMV) establish lifelong latency following primary infection and can reactivate under conditions of immune stress. ME/CFS patients show elevated antibody titers to these viruses, suggesting frequent reactivation. However, antibody elevation alone cannot distinguish between active replication and immune memory.

#observation(title: [Herpesvirus Triggers in ME/CFS])[
*Certainty: 0.65.* Multiple herpesviruses (EBV, CMV, HHV-6) are implicated as triggering factors for ME/CFS based on observational evidence and comprehensive immunopathobiology reviews. EBV-specific B- and T-cell responses are deficient in ME/CFS, while responses to other pathogens remain normal, suggesting specific viral memory dysfunction. CMV-seropositive individuals show expansion of CMV-specific innate-like CD4 T cells (CD161+ CD56+), providing a mechanistic link between persistent viral infection and tissue-resident T cell expansion. Review articles synthesize evidence from multiple cohorts, though primary data remain heterogeneous and not all findings are replicated.

*Key findings:*
- EBV, HHV-6, and CMV infections are consistently reported as ME/CFS triggering factors across studies
- Deficient EBV-specific B- and T-cell responses in ME/CFS patients, with normal responses to other viruses and bacteria
- CMV-seropositive individuals exhibit expansion of CD161+ CD56+ CD4 T cells enriched in CMV-specific TCRs
- This expansion provides a mechanistic link between persistent viral infection and tissue-resident innate-like T cell population changes

*Implications.* These findings support the viral persistence hypothesis and suggest that specific herpesvirus memory dysfunction may contribute to ME/CFS pathophysiology. The CMV-specific innate-like T cell expansion observed in healthy donors may be dysregulated in ME/CFS, contributing to both local (intestinal) and systemic immune dysfunction.

*Limitations.* The evidence is primarily from review articles and observational studies. No direct studies have examined CMV-specific tissue-resident T cells in ME/CFS patients. Heterogeneity across studies limits definitive conclusions about causal relationships.
] <obs:herpesvirus-triggers-Lerner2020>

#hypothesis(title: [Compartmentalized Viral Reservoirs in ME/CFS])[
*Certainty: 0.35.* ME/CFS patients may harbor viral reservoirs in immune-privileged or poorly accessible compartments (gut-associated lymphoid tissue, central nervous system, bone marrow) that drive chronic immune activation through intermittent viral antigen release. These reservoirs evade standard blood-based detection but maintain continuous immune stimulation.

*Evidence Base.* Comparative virology provides a compelling model: Kol et al. (2026) demonstrated that feline infectious peritonitis virus (FIPV), a coronavirus, persists in B and T lymphocytes within mesenteric lymph nodes after antiviral treatment and clinical recovery. Because memory lymphocytes survive for years, even a small fraction of virus-harbouring cells constitutes a persistent antigenic reservoir that can explain relapse and chronic immune dysregulation. While FIPV is not SARS-CoV-2, the shared coronavirus biology—tropism for immune cells, persistence despite apparent clearance, and post-treatment relapse—strengthens the plausibility that analogous mechanisms operate in post-COVID ME/CFS.

*Mechanistic Implications.* If lymphocyte reservoirs exist in ME/CFS:

- Viral antigen is continuously presented during any immune activation (infection, vaccination, exercise-induced immune mobilization)
- This would explain why diverse immune stimuli can trigger symptom exacerbation
- The reservoir maintains chronic antigenic stimulation without requiring active viral replication
- Standard antiviral therapies may fail because they cannot access or eliminate the reservoir

*Testable Predictions.*
- Single-cell RNA sequencing of ME/CFS patient lymphocytes will detect viral transcripts in a small percentage (less than 1%) of cells
- The fraction of virus-positive lymphocytes will correlate with disease severity and duration
- In vitro activation of ME/CFS patient lymphocytes will increase detectable viral antigen
- Patients who recover from ME/CFS will show clearance of lymphocyte-associated viral RNA

*Limitations.* Cross-species extrapolation from felines to humans requires caution. No study has directly demonstrated SARS-CoV-2 or ME/CFS-triggering virus persistence in human lymphocytes. The "below PCR threshold" claim is currently untestable with standard methods.
] <hyp:lymphocyte-reservoir>

*Viral Protein Persistence.*
Even without intact virus, viral proteins (particularly SARS-CoV-2 spike protein) can persist in tissues for months. Spike protein has been detected in gut epithelium and immune cells of Long COVID patients up to 12 months post-infection. These persistent proteins may:

- Serve as continuous antigenic stimuli driving immune activation
- Directly activate immune cells through pattern recognition receptors
- Induce autoimmunity through molecular mimicry
- Cause endothelial dysfunction and microvascular damage

*Impaired Viral Clearance Mechanisms.*

Multiple mechanisms may contribute to failed viral clearance in ME/CFS:

1. *NK Cell Dysfunction*: Impaired cytotoxicity reduces elimination of virally-infected cells
2. *T Cell Exhaustion*: Exhausted CD8+ T cells cannot effectively clear virus-infected cells
3. *Dendritic Cell Dysfunction*: Impaired antigen presentation limits adaptive immune response initiation
4. *Complement Consumption*: Reduced opsonization impairs clearance of virus-antibody complexes
5. *MDSC Expansion*: Immunosuppressive myeloid cells inhibit effective antiviral immunity

These mechanisms create a self-reinforcing cycle: impaired viral clearance maintains antigenic stimulation, which drives immune exhaustion and further impairs clearance capacity.

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

