#import "../../../../shared/environments.typ": *

=== Endothelial Dysfunction
<sec:endothelial>

The vascular endothelium regulates vascular tone, coagulation, and inflammation. Endothelial dysfunction is increasingly recognized in ME/CFS.

==== Nitric Oxide Bioavailability

Nitric oxide (NO) is a critical vasodilator produced by endothelial NO synthase (eNOS):

    - *Altered NO metabolism during exercise*: ME/CFS patients show significantly elevated nitric oxide metabolites (plasma nitrate up to $tilde$295% above controls) during maximal exercise, consistent with abnormal vascular regulation rather than simple deficiency @Suarez2010nitricoxide
    - *Increased NO scavenging*: Oxidative stress may inactivate NO
    - *eNOS uncoupling*: Dysfunctional enzyme produces superoxide instead of NO
    - *Consequences*: Impaired vasodilation, increased vascular resistance

==== Flow-Mediated Dilation

Flow-mediated dilation (FMD) measures endothelium-dependent vasodilation of the brachial artery following brief ischemia:

    - *Reduced FMD in ME/CFS*: Multiple studies report impaired endothelium-dependent dilation, with peripheral endothelial dysfunction found in 51% of ME/CFS patients versus 20% of healthy controls @Scherbakov2020
    - *Correlation*: Associated with disease severity and severity of immune symptoms @Scherbakov2020
    - *Mechanism*: Reflects reduced NO bioavailability, elevated adhesion molecules, or chronic inflammatory state @Appel2025

==== Inflammatory Markers

Endothelial inflammation contributes to dysfunction (@Appel2025):

    - *Elevated adhesion molecules*: ICAM-1, VCAM-1, E-selectin @Appel2025
    - *Increased inflammatory cytokines*: IL-6, TNF-$alpha$ affect endothelial function
    - *Oxidative stress markers*: Indicate endothelial damage
    - *Circulating endothelial cells*: May be elevated, indicating endothelial injury

==== Immune Complex--Mediated Endothelial Injury
<sec:igg-endothelial>

The inflammatory markers above document endothelial activation, but the mechanism driving this activation has remained unclear. Liu et al.\ (2026) @Liu2026IgGcomplexes provided direct experimental evidence that IgG immune complexes from ME/CFS patients can injure endothelial cells. When purified IgG from post-infectious ME/CFS patients (n=39--40) was applied to human umbilical vein endothelial cells (HUVECs), the immune complexes entered the cells and induced mitochondrial fragmentation---a structural disruption visible on confocal microscopy. The IgG also triggered secretion of IL-1$beta$, a potent pro-inflammatory cytokine that itself promotes endothelial activation, adhesion molecule upregulation, and vascular permeability.

This finding offers a mechanistic explanation for the elevated adhesion molecules (ICAM-1, VCAM-1, E-selectin) and circulating endothelial cells described above: IgG immune complexes deposited on or internalised by endothelial cells could initiate a self-amplifying inflammatory cycle. IL-1$beta$ released by injured endothelial cells recruits further immune cells, amplifies complement activation (@sec:complement in @ch:immune-dysfunction), and sustains the chronic low-grade vascular inflammation characteristic of ME/CFS.

Mass spectrometry proteomics of the IgG complexes revealed disease-subtype-specific signatures with direct vascular relevance:

    - *Classic ME/CFS IgG*: Enriched in extracellular matrix (ECM) reorganisation pathways, consistent with the capillary basement membrane thickening and collagen IV deposition documented by Wüst et al. @Wust2024capillary
    - *Post-COVID ME/CFS IgG*: Enriched in hemostasis and blood clot formation pathways, consistent with the micro-clotting and coagulation abnormalities reported in Long COVID cohorts (@sec:coagulation)

These distinct proteomic signatures suggest that while the downstream endothelial injury may appear similar across ME/CFS subtypes, the upstream immune complex composition---and therefore the optimal therapeutic target---may differ between post-infectious and post-COVID presentations.

#speculation(title: [Immune Complex--Endothelial Injury as a Central Vascular Mechanism])[
The convergence of IgG-mediated endothelial injury @Liu2026IgGcomplexes with the proteomic evidence for reduced endothelial integrity (vimentin, ANTXR2, CXADR reduction @Hoel2026proteome), impaired flow-mediated dilation @Scherbakov2020 @Haffke2023fmd, and capillary structural remodelling @Wust2024capillary raises the possibility that immune complex deposition on microvasculature is not a secondary consequence but a primary driver of endothelial dysfunction in ME/CFS. In this model, persistent post-infectious immune activation (@sec:viral in @ch:immune-dysfunction) generates pathogenic IgG complexes that continuously injure endothelial cells, producing the chronic microvascular dysfunction that underlies exercise intolerance, orthostatic intolerance, and cognitive impairment.

_Certainty: 0.35._ The in vitro evidence is strong for the direct IgG #sym.arrow endothelial injury step, but the claim that this represents a _central_ rather than contributory mechanism in vivo requires: (1) demonstration of immune complex deposition in patient microvasculature (biopsy or imaging), (2) correlation between IgG complex composition and endothelial function measures (e.g., FMD), and (3) therapeutic evidence that IgG reduction (immunoadsorption, plasmapheresis) improves endothelial function parameters.

*Falsifiable predictions:*
    + Immunoadsorption that removes pathogenic IgG should improve flow-mediated dilation within weeks
    + Endothelial biopsy or skin punch biopsy should show IgG/complement deposition in ME/CFS microvasculature
    + Patients whose IgG induces greater mitochondrial fragmentation in vitro should have worse EndoPAT scores

*Limitations:* Not all patients' IgG induced endothelial injury (heterogeneity); the HUVEC model may not reflect tissue-specific endothelial responses; female-predominant effect limits generalisability.
] <spec:igg-endothelial-central>

The mitochondrial effects of these immune complexes on endothelial cell energetics are discussed in detail in @ch:energy-metabolism (@sec:igg-mito-disruption).

==== Proteomic Evidence for Endothelial Dysfunction and Tissue Hypoxia

Hoel et al.\ (2026) @Hoel2026proteome provided large-scale proteomic confirmation of endothelial and vascular abnormalities in ME/CFS. Several proteins linked to microcirculatory and hypoxia responses were altered:

    - *Reduced vimentin (VIM)*: An intermediate filament protein critical for endothelial cell structure and mechanotransduction; its reduction may indicate impaired endothelial integrity
    - *Reduced ANTXR2 (CMG2)*: Also known as capillary morphogenesis gene 2, this receptor regulates angiogenesis and endothelial cell chemotaxis; its reduction suggests impaired vascular repair capacity
    - *Reduced CXADR*: The coxsackievirus and adenovirus receptor mediates endothelial responses to fluid shear stress; its decrease may reflect impaired vascular mechanosensing
    - *Reduced ATP5IF1*: ATP synthase inhibitory factor 1 protects against mitochondrial ATP hydrolysis during hypoxia; its reduction implies compromised mitochondrial stress tolerance in endothelial cells
    - *Elevated LIPG*: Endothelial cell-derived lipase, involved in lipoprotein metabolism and vascular biology, was increased—consistent with immune activation and endothelial stress
    - *Elevated FAM20A*: A hematopoietic signaling factor elevated in ME/CFS, suggesting bone marrow-endothelial signaling disruption

Additionally, ME/CFS patients showed increased WASF3 expression, a target of the hypoxia-regulated transcription factor HIF-1$alpha$, directly linking the proteomic signature to tissue hypoxia. Together, these findings support a model in which endothelial dysfunction, impaired vascular repair, and chronic tissue hypoxia form an interconnected pathological axis in ME/CFS.

==== Ephrin Signaling: A Novel Vascular Pathway

Ligand-receptor interaction analysis from the Hoel et al.\ proteomics data @Hoel2026proteome revealed concordant changes in multiple members of the Ephrin signaling family: four Ephrin subfamily A receptors (EPHA1, EPHA2, EPHA4, EPHA7) and their EFNA ligands showed coordinated alterations in ME/CFS. Ephrin signaling regulates vascular development, endothelial cell migration, and angiogenesis. Disrupted Ephrin-Eph signaling had been previously suggested in ME/CFS based on earlier proteomic studies @Germain2021plasma, and the Hoel et al.\ findings provide independent confirmation across a different cohort and analytical platform. This pathway represents a potential mechanistic link between immune activation (Ephrin signaling also modulates immune cell migration and T cell activation) and the vascular dysfunction observed in ME/CFS.


==== Endothelial Senescence and Failed Angiogenic Compensation
<sec:endothelial-senescence-cv>

Two findings advance the mechanistic understanding of endothelial dysfunction beyond functional impairment to a structural and cellular biology level.

Flaskamp et al.\ (2022) @Flaskamp2022endothelial compared the effect of ME/CFS and post-COVID serum on endothelial cell behaviour _in vitro_. Post-COVID serum significantly enhanced angiogenic tube formation — a compensatory vascular response to hypoperfusion — whereas ME/CFS serum did not. ME/CFS serum selectively abolished this compensatory angiogenic response while also reducing ICAM-1 and E-selectin expression. If confirmed in vivo, this failed angiogenic compensation would explain why microvascular hypoperfusion becomes structural and self-sustaining in ME/CFS, consistent with the collagen IV deposition and basement membrane thickening documented by Wüst et al.\ @Wust2024capillary.

Nunes et al.\ (2026) @Nunes2026endothelialSenescence proposed that virus-induced endothelial senescence at the BBB, cerebral arteries, gut vasculature, and skeletal muscle capillaries produces a SASP (senescence-associated secretory phenotype) that is pro-inflammatory, pro-oxidative, procoagulant, and vasoconstrictive. Senescent endothelial cells lose the capacity for vascular regeneration, consistent with the failed angiogenic response above. NK cell dysfunction and T cell exhaustion (Chapter @ch:immune-dysfunction, Section @sec:endothelial-senescence) prevent clearance of senescent cells, establishing a self-perpetuating loop. The therapeutic implication is that senolytic agents (dasatinib + quercetin) may reduce the senescent cell burden and break this cycle; no ME/CFS trial has yet tested this approach.

The ACHTSAM outreach study @Fricke2026achtsam is deploying EndoPAT
(peripheral arterial tonometry) as a non-invasive, home-based endothelial
function assessment in severe ME/CFS patients (Bell score $lt.eq$30)—a
population typically excluded from vascular studies. Results, expected mid-2026,
will provide the first endothelial function data specifically from severe and
very severe patients assessed in their home environment.

==== HIF-2$alpha$-Mediated Endothelial Dysfunction as a Post-Viral Mechanism
<sec:hif2a-endothelial>

A distinct line of evidence points to sustained hypoxia-inducible factor 2$alpha$ (HIF-2$alpha$, encoded by *EPAS1*) activation as a molecular mechanism for endothelial dysfunction specifically in post-viral ME/CFS, with implications for the ~70% of ME/CFS patients who lack $beta_2$-adrenergic receptor autoantibodies and whose endothelial dysfunction mechanism has remained unexplained @Sandvik2023EndothelialMECFS @Stein2025ImmunoadsorptionPostCOVIDMECFS.

Ribeiro et al.\ (2026) @Ribeiro2026HIF2alpha demonstrated that SARS-CoV-2 spike S1 protein produces a dichotomous HIF response in retinal endothelial cells: transient HIF-1$alpha$ activation (resolving within hours) followed by sustained HIF-2$alpha$ activation persisting for days, driving VEGF production, intercellular gap formation, and increased permeability. Critically, belzutifan — a selective HIF-2$alpha$ inhibitor approved for VHL disease-associated tumours — rescued endothelial barrier integrity in this model. This establishes a direct molecular pathway from viral protein exposure to chronic endothelial dysfunction via sustained HIF-2$alpha$, distinct from the acute HIF-1$alpha$ response that is normally adaptive @Ribeiro2026HIF2alpha @Bishop2025HIF2alphaReview.

The pathophysiological significance of sustained HIF-2$alpha$ (rather than HIF-1$alpha$) as the mediator of post-viral endothelial injury is supported by convergent evidence. In pulmonary endothelium, acute hypoxia drives HIF-1$alpha$-dependent barrier disruption, while chronic hypoxia produces HIF-2$alpha$-dependent vascular remodelling — a temporal dissociation that mirrors the pattern triggered by spike protein @Reiterer2019AcuteChronicHypoxia. Mechanistically, antiviral signalling intersects directly with HIF regulation: interferon regulatory factor 3 (IRF3) retains both HIF-1$alpha$ and HIF-2$alpha$ in the cytoplasm under resting conditions, and its depletion during viral infection increases HIF signalling @Deng2026IRF3HIFalpha. The HIF-2$alpha$ isoform is exploited by multiple viruses for replication — hepatitis C virus requires HIF-2$alpha$ for production of infectious lipoviroparticles @Couteaudier2025HIF2HCV, and respiratory syncytial virus stabilises HIFs under normoxic conditions @Morris2025HIFRSV — suggesting that post-viral HIF-2$alpha$ activation may be a general phenomenon rather than SARS-CoV-2-specific.

This mechanism may explain several observations in post-viral ME/CFS. First, it provides a molecular basis for endothelial dysfunction in the $beta_2$AR-autoantibody-negative majority: approximately 70% of ME/CFS patients have documented endothelial dysfunction (impaired FMD, reduced PORH) without detectable $beta_2$-adrenergic receptor autoantibodies @Sandvik2023EndothelialMECFS @Stein2025ImmunoadsorptionPostCOVIDMECFS. HIF-2$alpha$-mediated VEGF production and barrier disruption would produce the same net tissue hypoxia as autoantibody-mediated vasoconstriction, but through increased capillary permeability rather than reduced vessel calibre — a mechanistic distinction with therapeutic implications (HIF-2$alpha$ inhibition vs immunomodulation). Second, sustained HIF-2$alpha$ activation could drive the immunothrombotic microclot phenotype documented in ME/CFS: HIF-2$alpha$ target VEGF triggers Weibel-Palade body exocytosis, releasing ultra-large von Willebrand factor multimers that promote platelet adhesion and microclot formation @VanderLinden2023microclots @Wirth2024MicrovascularPostCOVIDMECFS. Third, the NRF2-HIF-2$alpha$ axis offers a framework for understanding why endothelial dysfunction persists: NRF2 normally competes with HIF-2$alpha$ for transcriptional co-activators and maintains endothelial junction integrity @Shen2024NRF2HIF2Senescence, but NRF2 depletion from prolonged oxidative stress (documented in ME/CFS) removes this brake, permitting unchecked HIF-2$alpha$ dominance @Zhang2026HIFSwitchICH.

#speculation(title: [Sustained HIF-2$alpha$ as a Mechanistic Explanation for $beta_2$AR-Autoantibody-Negative Endothelial Dysfunction])[
The ~70% of ME/CFS patients without detectable $beta_2$AR autoantibodies @Stein2025ImmunoadsorptionPostCOVIDMECFS nonetheless show endothelial dysfunction comparable to the autoantibody-positive subgroup @Sandvik2023EndothelialMECFS. This paradox may reflect two distinct proximal mechanisms converging on the same distal phenotype: autoantibody-driven vasoconstriction in the ~30% vs HIF-2$alpha$-driven capillary permeability in the ~70%. The latter would explain normal or elevated VEGF in this subgroup, responsiveness to compression therapy (which counteracts capillary leak), and the association between post-viral onset and elevated endothelial activation markers (vWF, ICAM-1). This framework generates a testable prediction: $beta_2$AR-autoantibody-negative ME/CFS patients will show elevated plasma VEGF, vWF, and EPO compared to autoantibody-positive and healthy controls, with VEGF levels correlating with FMD impairment. Certainty: 0.55 (indirect evidence from separate literatures converged; direct ME/CFS testing is pending).

*Falsifiable predictions:*
    + In a cohort of ME/CFS patients stratified by $beta_2$AR autoantibody status, the autoantibody-negative subgroup will show higher plasma VEGF and vWF than the autoantibody-positive subgroup
    + VEGF levels will correlate inversely with FMD in the autoantibody-negative subgroup (r $<$ -0.5) but not in the autoantibody-positive subgroup
    + Belzutifan (HIF-2$alpha$ inhibitor) will improve FMD and reduce VEGF preferentially in the autoantibody-negative subgroup
] <spec:hif2a-beta2ar-negative>

#speculation(title: [HIF-2$alpha$ as the Proximal Mechanism for Post-Viral Microclot Formation])[
HIF-2$alpha$ target VEGF induces Weibel-Palade body exocytosis, releasing ultra-large vWF multimers that promote platelet adhesion without requiring coagulation cascade activation @Ribeiro2026HIF2alpha. This provides a direct mechanism for the fibrinolysis-resistant amyloid-type microclots documented in ME/CFS and Long COVID @VanderLinden2023microclots. The HIF-2$alpha$-driven pathway does not require autoantibodies and would operate in any post-viral state where viral proteins or nucleic acids persist sufficiently to maintain HIF-2$alpha$ activation. Certainty: 0.50 (VEGF-vWF link is established; microclot composition data are consistent; direct demonstration of HIF-2$alpha$ dependence in ME/CFS microclots is pending).

*Falsifiable predictions:*
    + Plasma vWF antigen and vWF propeptide (marker of acute Weibel-Palade release) will be elevated in post-viral ME/CFS and correlate with microclot burden measured by fluorescence microscopy
    + vWF levels will correlate with VEGF but not with $beta_2$AR autoantibody titres
    + In vitro, belzutifan reduces spike-induced vWF release from cultured endothelial cells (HUVEC or HREC)
] <spec:hif2a-microclot-vwf>

#speculation(title: [NRF2 Exhaustion Permits Unchecked HIF-2$alpha$ Dominance in Post-Viral Endothelial Cells])[
Acute viral infection depletes NRF2 antioxidant reserve (GSH consumption, lipid peroxidation). NRF2 normally maintains endothelial junction integrity and competes with HIF-2$alpha$ for CBP/p300 transcriptional co-activators @Shen2024NRF2HIF2Senescence. NRF2 exhaustion removes this brake, allowing unchecked HIF-2$alpha$ activation and sustained VEGF production — a bimodal switch: moderate oxidative stress recruits protective NRF2-HIF-2$alpha$ signalling, but severe or prolonged stress depletes NRF2, permitting pathological HIF-2$alpha$ dominance @Zhang2026HIFSwitchICH. This provides a mechanistic link between the oxidative stress documented in ME/CFS and the sustained endothelial dysfunction: the same reactive species that mark the disease may also lock the HIF-2$alpha$ system in its pathological state. Certainty: 0.50 (Shen2024NRF2HIF2Senescence and Zhang2026HIFSwitchICH mechanistic studies; NRF2 depletion in ME/CFS is plausible but not directly measured in endothelial cells).

*Falsifiable predictions:*
    + NRF2 target genes (NQO1, HO-1, GCLC) will be suppressed in post-viral ME/CFS endothelial cells relative to HIF-2$alpha$ targets
    + Sulforaphane (NRF2 activator) will rescue barrier integrity in spike-stimulated endothelial cells in vitro
    + NRF2 activation status will predict VEGF response: patients with low NRF2 activity show the greatest VEGF reduction with NRF2 activator treatment
] <spec:nrf2-exhaustion-hif2a>

#synthesis(title: [Sustained HIF-2$alpha$ as a Candidate Endothelial-Barrier Mechanism for Post-Viral ME/CFS])[
The HIF-2$alpha$ environments in this section assemble a single candidate mechanism for the subset of ME/CFS endothelial dysfunction that follows viral infection: SARS-CoV-2 spike drives a *dichotomous* hypoxia-inducible-factor response — transient HIF-1$alpha$ followed by *sustained* HIF-2$alpha$ that persists after the trigger clears (@hyp:hif2a-sustained-postviral, @sec:hif2a-endothelial). This section's contribution is to trace that single (in-vitro, unvalidated-in-ME/CFS) finding into three *interpretive implications* — not three independent findings — for endothelial dysfunction, complementary to and deliberately not duplicating the VEGF/angiogenic-failure and sFlt-1/PlGF-biomarker arm already synthesised in the cross-disease chapter (@syn:vegf-pathway-convergence). First, sustained HIF-2$alpha$ offers *one* candidate mechanism — not the only one — for the roughly 70% of ME/CFS endothelial dysfunction that is independent of $beta$2-adrenergic-receptor autoantibodies (@spec:hif2a-beta2ar-negative): a non-autoimmune route to the same functional deficit, parallel in logic to the structural-vs-functional dichotomies elsewhere in the paper. It competes with, rather than supersedes, the IgG immune-complex endothelial-injury model advanced in this same section (@spec:igg-endothelial-central), which proposes a different non-autoantibody route (internalised IgG complexes driving mitochondrial fragmentation and IL-1$beta$ release); the two are experimentally separable — the HIF-2$alpha$ account predicts correlation with VEGF/vWF and HIF-2$alpha$-target expression, the IgG account predicts correlation with circulating immune-complex/IgG proteomics — and it is unknown whether they operate in the same patients or define distinct subgroups. Second, via VEGF-driven Weibel-Palade exocytosis of von Willebrand factor, it links the transcriptional state to the microclot phenomenon (@spec:hif2a-microclot-vwf), tying a gene-regulation abnormality to a coagulation readout. Third, it is *permitted* rather than caused in isolation: NRF2 antioxidant exhaustion is proposed as the condition under which HIF-2$alpha$ escapes normal restraint (@spec:nrf2-exhaustion-hif2a), making the mechanism a two-factor (loss-of-brake plus gain-of-drive) rather than single-hit story. Because HIF-2$alpha$ is pharmacologically tractable, this mechanism carries an unusually concrete — though entirely investigational — therapeutic corollary: HIF-2$alpha$ inhibition (belzutifan) and HIF-2$alpha$-blocking repurposed agents (darunavir) are discussed as mechanistic probes in the treatment chapters, with the explicit caution that HIF-PH inhibitors could *worsen* a HIF-2$alpha$-dominant endotype and therefore require stratification.

The honest status is that the *entire mechanistic chain is inferential for ME/CFS*: the dichotomous-HIF finding is from in vitro spike-stimulated endothelial cells (Ribeiro 2026), the CPET-dynamics and sFlt-1/PlGF proposals (@spec:hif2a-cpet-dynamics) are untested, and no study has measured endothelial HIF-2$alpha$ status in ME/CFS patients. What makes the mechanism attractive is not evidential weight but that it is *falsifiable and stratifiable*: it predicts a measurable HIF-2$alpha$-target signature that should be present in post-viral but not gradual-onset endothelial dysfunction, should correlate with vWF/microclot burden, and should track NRF2 status — a set of predictions a single well-designed endothelial-biopsy or circulating-endothelial-cell study could confirm or refute. The central open question is whether sustained HIF-2$alpha$ is a *driver* of post-viral endothelial dysfunction or a *marker* of the same upstream inflammatory insult that damages the endothelium by other routes.

*Consequence:* This offers a testable reason why some post-viral ME/CFS patients have "leaky," clot-prone blood vessels without the autoantibodies usually blamed — a stuck oxygen-sensing switch in the vessel lining — and, unusually, it points at an existing drug class (HIF-2$alpha$ inhibitors) that could be trialled to test the idea; but the whole chain is so far shown only in cultured cells and has never been measured in ME/CFS patients, so its immediate value is telling researchers exactly which measurement would confirm or kill it, not guiding treatment.
] <syn:hif2a-endothelial-mechanism-model>

Several 2025–2026 studies extend the endothelial dysfunction evidence.
Retinal vessel analysis revealed reduced venular flicker-induced dilation in
ME/CFS and post-COVID patients, providing a non-invasive measure of
persistent microvascular dysfunction @MicrovascularRemodeling2026
(Appendix @app:research-registry,
Section @sec:registry-microvascular).  Azcue et al.\ (2025) documented
small fibre neuropathy in both ME/CFS and post-COVID patients using corneal
confocal microscopy and electrochemical skin
conductance @Azcue2025sfn
(Section @sec:registry-sfn).  The MCAM multi-site study confirmed that
autonomic dysfunction (assessed by COMPASS-31 and NASA lean test) is
pervasive across diverse ME/CFS
cohorts @MCAM2025autonomic
(Section @sec:registry-mcam).

