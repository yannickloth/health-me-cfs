#import "../shared/environments.typ": *

= Cardiovascular Dysfunction
<ch:cardiovascular>

Cardiovascular abnormalities are pervasive in ME/CFS and contribute substantially to disability, particularly through exercise intolerance and orthostatic symptoms. The 2024 NIH deep phenotyping study by Walitt et al.\ provided rigorous documentation of cardiopulmonary exercise testing abnormalities, including reduced peak oxygen consumption and chronotropic incompetence, establishing objective physiological correlates of the subjective exercise intolerance reported by patients @walitt2024deep.

== Cardiac Function
<sec:cardiac-function>

=== Exercise Testing Abnormalities
<sec:exercise-testing>

Cardiopulmonary exercise testing (CPET) provides objective measurement of integrated cardiovascular, pulmonary, and metabolic function during physical exertion. CPET findings in ME/CFS represent some of the most reproducible objective abnormalities documented in the illness.

==== Cardiopulmonary Exercise Testing (CPET) Methodology

CPET involves graded exercise (typically on a cycle ergometer or treadmill) with continuous measurement of oxygen consumption (VO#sub[2], the volume of oxygen extracted from inspired air per unit time), carbon dioxide production (VCO#sub[2], the volume of CO#sub[2] expired), and their ratio expressed as the respiratory exchange ratio (RER = VCO#sub[2]/VO#sub[2]), which indicates fuel substrate utilization. Simultaneously, the system records minute ventilation (VE, total air volume breathed per minute), heart rate via continuous electrocardiographic monitoring, periodic blood pressure measurements, and work rate (power output in watts or treadmill speed and grade).

Testing continues until volitional exhaustion or limiting symptoms. Criteria for maximal effort include an RER exceeding 1.10, achievement of age-predicted maximal heart rate, or a plateau in VO#sub[2] despite increasing work rate.

==== Key NIH Deep Phenotyping CPET Findings

The Walitt et al.\ study documented several critical cardiopulmonary abnormalities in PI-ME/CFS patients (@walitt2024deep):

*Reduced Peak Oxygen Consumption (VO#sub[2]peak)*
Peak VO#sub[2] represents maximal aerobic capacity and integrates cardiac output, oxygen delivery, and peripheral oxygen extraction. PI-ME/CFS patients demonstrated significantly reduced VO#sub[2]peak compared to matched healthy controls @walitt2024deep. This reduction indicates impaired aerobic capacity beyond what deconditioning alone would predict; ME/CFS patients showed greater deficits than sedentary controls matched for activity level, with reductions typically ranging from 15–30% below predicted values @keller2024cpet @Lim2020. More severely affected patients show greater reductions. The finding correlates with functional limitation and disability, providing objective confirmation of patient-reported exercise intolerance.

*Chronotropic Incompetence*
Chronotropic incompetence refers to an inadequate heart rate response to exercise (@walitt2024deep):

    - ME/CFS patients fail to achieve age-predicted maximal heart rate
    - Heart rate rise is blunted relative to work rate increases
    - Chronotropic index (proportion of heart rate reserve used) is reduced

Chronotropic incompetence limits cardiac output augmentation during exercise, as cardiac output = heart rate $times$ stroke volume. Without adequate heart rate increase, oxygen delivery to exercising muscles is compromised.

*Mechanisms of Chronotropic Incompetence*
Several mechanisms have been proposed; their relative contributions in ME/CFS remain under investigation:

    - *Parasympathetic excess*: Sustained vagal tone preventing heart rate acceleration—supported by HRV findings showing altered autonomic balance @Newton2007autonomicDysfunction
    - *Sympathetic dysfunction*: Impaired catecholamine release or receptor sensitivity
    - *Sinoatrial node dysfunction*: Intrinsic pacemaker abnormality (hypothesized but not directly demonstrated in ME/CFS)
    - *G-protein-coupled receptor (GPCR) autoantibodies*: A growing body of evidence implicates autoantibodies targeting G-protein-coupled receptors in ME/CFS cardiovascular dysfunction. Loebel et al.\ first documented elevated autoantibodies against beta-adrenergic ($beta_1$, $beta_2$) and muscarinic cholinergic (M3, M4) receptors in ME/CFS patients @Loebel2016, findings subsequently validated in Swedish cohorts including cerebrospinal fluid samples @Bynke2020. Azcue et al.\ (2026) provide the most detailed autonomic--autoantibody correlation data to date: $beta_2$-adrenergic AAb titers correlated significantly with sympathovagal imbalance in ME/CFS ($r=0.45$, $p=0.001$, $n=59$) as measured by HRV frequency-domain parameters, providing the strongest quantitative link yet between GPCR autoantibodies and cardiac autonomic dysfunction in ME/CFS @Azcue2026gpcr.

    The cardiovascular effects of these autoantibodies are multifaceted. Beta-adrenergic receptor autoantibodies may exert either agonistic effects (causing inappropriate receptor activation) or antagonistic effects (blocking normal catecholamine signaling), depending on the specific antibody epitope and receptor subtype. Muscarinic receptor autoantibodies similarly can enhance or impair parasympathetic signaling to the heart and vasculature. This bidirectional potential explains why the same class of autoantibodies might produce different phenotypes across patients.

    Levels of vasoregulative GPCR autoantibodies correlate with symptom severity, autonomic dysfunction, and disability in ME/CFS @Sotzny2021. The correlation with autonomic measures supports a direct pathophysiological role rather than an epiphenomenon of chronic illness. Beta-2 adrenergic receptor autoantibodies appear particularly relevant to cardiovascular symptoms, with immunoadsorption targeting these antibodies showing preliminary efficacy in post-COVID ME/CFS @Stein2024immunoadsorption. BC007, a DNA aptamer that neutralizes GPCR autoantibodies, has shown promise in case reports for improving fatigue and microcirculatory function @Hohberger2021bc007. Three complementary approaches to the autoantibody hypothesis—immunoadsorption, BC007, and daratumumab—are in active clinical trials (Appendix @app:research-registry, Section @sec:registry-autoimmunity).
    - *Central nervous system dysfunction*: Impaired autonomic outflow from brainstem centers
    - *Gut-mediated vagal impairment (Wirth-Scheibenbogen 2025)*: Recent work by Wirth and Scheibenbogen @WirthScheibenbogen2025Neurotransmitter provides mechanistic support for gut-mediated vagal dysfunction in ME/CFS. Butyrate enhances enterochromaffin cell serotonin production @Barton2025, and enterochromaffin serotonin activates vagal afferents via 5-HT#sub[3] receptors @Barton2023 @Kaelberer2018. Since ME/CFS patients show butyrate deficiency and gut dysbiosis @Hsu2025gut, reduced enterochromaffin serotonin could impair vagal afferent signaling, potentially weakening efferent vagal tone to the heart. This pathway may contribute to the chronotropic incompetence and reduced heart rate variability observed in ME/CFS patients. While no direct evidence yet links this pathway to cardiac chronotropy in ME/CFS, it offers a testable hypothesis for the gut-cardiac connection. See Section @sec:gut-brain of Chapter @ch:gut-microbiome for the full evidence chain and Section @hyp:enterochromaffin-vagal of Chapter @ch:neurological for the neurophysiological implications.

The finding of chronotropic incompetence, combined with reduced HRV and abnormal baroreflex sensitivity @Newton2007autonomicDysfunction, indicates autonomic dysfunction affecting cardiac pacing.

#limitation(title: [Primary Site of Autonomic Dysfunction Unresolved])[
Current evidence establishes that autonomic dysfunction affects cardiac pacing in ME/CFS but does not determine whether the primary site of dysfunction is central (brainstem outflow), peripheral (sinoatrial node, nerve fibers), autoimmune (GPCR autoantibodies), or gut-mediated (enterochromaffin-vagal pathway). These mechanisms are not mutually exclusive, and their relative contributions likely vary across patients. Resolving this requires intervention studies targeting each mechanism independently.
]

==== Two-Day CPET Protocol

A particularly informative methodology involves repeat CPET on consecutive days:

*Rationale*
Single CPET testing may not capture the distinctive post-exertional deterioration characteristic of ME/CFS. Two-day protocols assess recovery capacity and reproducibility of maximal effort.

*Findings in ME/CFS*

    - *Day 1*: Reduced but measurable aerobic capacity
    - *Day 2*: Further significant reductions in VO#sub[2]peak, anaerobic threshold, and work capacity
    - *Healthy controls*: Reproduce or slightly improve Day 1 performance
    - *Magnitude*: ME/CFS patients show 10–25% decline on Day 2 @keller2024cpet @Lim2020

This failure to reproduce exercise capacity distinguishes ME/CFS from other fatiguing conditions and reflects the pathognomonic post-exertional malaise. A systematic review of two-day CPET studies confirmed significant reductions in work capacity and oxygen consumption on Day 2, supporting this protocol as an objective marker of PEM @Lim2020.

*Mechanisms of Day 2 Decline*

    - Delayed recovery of metabolic substrates
    - Persistent inflammatory activation
    - Autonomic dysfunction exacerbation
    - Mitochondrial damage from oxidative stress
    - Central nervous system effects (increased perceived exertion)

==== Anaerobic Threshold
<sec:anaerobic-threshold>

The anaerobic threshold (AT, also called ventilatory threshold or lactate threshold) represents the exercise intensity at which anaerobic metabolism begins to supplement aerobic energy production:

    - *Reduced AT in ME/CFS*: Occurs at lower work rates and VO#sub[2] levels
    - *Early lactate accumulation*: Muscles rely on anaerobic glycolysis sooner
    - *Implications*: Limited sustainable activity before symptom exacerbation
    - *Mechanism*: Reflects impaired oxygen delivery, mitochondrial dysfunction, or both

The reduced AT has practical implications: patients exceed their aerobic capacity during activities that healthy individuals perform entirely aerobically, leading to metabolic stress and symptom generation.

==== Ventilatory Efficiency
<sec:ventilatory-efficiency>

Ventilatory efficiency describes how effectively ventilation eliminates CO#sub[2], typically expressed as the VE/VCO#sub[2] slope:

    - *Increased VE/VCO#sub[2] slope*: More ventilation required per unit CO#sub[2] eliminated
    - *Causes*: Ventilation-perfusion mismatch, increased dead space, hyperventilation
    - *Consequences*: Dyspnea at lower work rates, earlier exercise termination
    - *ME/CFS findings*: Variable; some patients show ventilatory inefficiency

=== Cardiac Output and Stroke Volume
<sec:cardiac-output>

Cardiac output (CO) determines oxygen delivery capacity and is the product of heart rate and stroke volume.

==== Preload Failure Hypothesis

Multiple lines of evidence support inadequate cardiac preload (ventricular filling) as a contributor to ME/CFS cardiovascular dysfunction:

    - *Reduced end-diastolic volume*: Less blood fills the ventricles during diastole
    - *Decreased stroke volume*: By Frank-Starling mechanism, reduced preload produces smaller stroke volume
    - *Compensatory tachycardia at rest*: Heart rate increases to maintain resting cardiac output; however, during exercise, chronotropic incompetence prevents further adequate heart rate augmentation, creating a ceiling effect
    - *Exercise limitation*: The combination of low stroke volume and inadequate heart rate response severely limits cardiac output augmentation during exertion

*Evidence for Preload Failure*

    - Echocardiographic studies showing reduced left ventricular end-diastolic volume @Newton2016
    - Correlation with blood volume measurements @Newton2016
    - *Invasive cardiopulmonary exercise testing (iCPET)*: Joseph et al.\ conducted a randomized, placebo-controlled trial (n=45) using invasive hemodynamic monitoring during exercise in ME/CFS patients @Joseph2022pyridostigmine. Pyridostigmine increased right atrial pressure (+1.0 vs.\ $-$0.6 mmHg; $P < 0.05$), while peak VO#sub[2] improved after pyridostigmine but _declined_ after placebo (+13.3 vs.\ $-$40.2 mL/min; $P < 0.05$; treatment effect 53.6 mL/min). The worsening hemodynamics after placebo (i.e., from exercise alone) provides direct invasive evidence that exercise itself exacerbates neurovascular dysregulation in ME/CFS—an objective physiological correlate of post-exertional malaise

*Supine Hemodynamic Abnormalities*
While cardiovascular dysfunction in ME/CFS is most apparent during orthostatic stress, some patients demonstrate abnormalities even at rest in the supine position. Newton et al.\ documented reduced cardiac volumes on cardiac MRI that correlated with blood volume deficits rather than deconditioning, with end-diastolic volume, end-systolic volume, and end-diastolic wall mass all significantly reduced @Newton2016. Critically, these reductions showed no correlation with disease duration, arguing against deconditioning as the primary mechanism.

Reduced resting cardiac output in the supine position has been reported in some ME/CFS cohorts, with the magnitude of reduction correlating with symptom severity @Newton2016. This finding suggests that the cardiovascular impairment is not solely a failure of orthostatic compensation but reflects a baseline deficit in cardiac filling and output. Patients with more severe supine abnormalities tend to show greater decompensation during orthostatic challenge, as they have less hemodynamic reserve to mobilize when gravitational stress is applied.

==== Reduced Blood Volume

Blood volume deficits are well-documented in ME/CFS (@Streeten1998blood, @Newton2016, @Raj2005):

    - *Plasma volume*: Reduced by 10–20% in most studies @Streeten1998blood
    - *Red cell mass*: Variable findings; may be proportionally reduced or relatively preserved
    - *Total blood volume*: Typically 10–15% below normal @Newton2016
    - *Correlation with symptoms*: Lower blood volume correlates with worse orthostatic intolerance and fatigue @Newton2016

*Mechanisms of Hypovolemia*

    - *RAAS dysfunction*: Impaired aldosterone response to hypovolemia
    - *Natriuretic peptide elevation*: Promoting sodium and water excretion
    - *Reduced erythropoietin*: Leading to mild anemia in some patients
    - *Capillary leak*: Increased vascular permeability shifting fluid to interstitium
    - *Inadequate fluid intake*: Secondary to nausea or other symptoms

==== Venous Pooling

Excessive venous pooling in dependent body parts reduces venous return:

    - *Lower extremity pooling*: Blood accumulates in leg veins during standing
    - *Splanchnic pooling*: Blood redistributes to abdominal vasculature
    - *Impaired venoconstriction*: Venous tone fails to increase appropriately
    - *Consequences*: Reduced cardiac preload, orthostatic symptoms

==== Anatomical Venous Compression: May Thurner Syndrome as a Potential Contributor

#speculation(title: [May Thurner Syndrome as a Contributor to Venous Return Impairment in ME/CFS])[
*Certainty: 0.25.* May Thurner syndrome (MTS)---anatomical compression of the left common iliac vein between the right common iliac artery and lumbar vertebra---may contribute to venous return impairment in a subset of ME/CFS patients through direct mechanical obstruction. No peer-reviewed literature directly links MTS to ME/CFS; the connection is inferred from shared pathophysiology.

*Epidemiological overlap.* MTS has an anatomical prevalence of 22--24% in cadaver studies, with female predominance (2--3:1) and a mean diagnostic delay of 4.2 years from symptom onset @Neglen2008MayThurnerReview @Ferreira2023VenousCompressionReview. These figures loosely parallel ME/CFS demographics (female predominance, long diagnostic delays), raising the possibility of undiagnosed MTS in ME/CFS cohorts. However, no study has systematically screened ME/CFS patients for iliac vein compression.

*Mechanistic pathways.*
- *Impaired venous return during upright posture.* Hartung et al. (2019) used transcranial Doppler to demonstrate a 36% reduction in internal jugular vein flow velocity from supine to upright posture in MTS patients, versus 24% in controls @Hartung2019CerebralVenousReturn. The upright flow velocity correlated with orthostatic symptoms (r = 0.62). If this mechanism operates in ME/CFS patients with undiagnosed MTS, venous compression could compound the pre-existing preload failure, blood volume deficits, and orthostatic intolerance discussed above.
- *Autonomic dysfunction from venous compression.* Anderson et al. (2021) documented reduced heart rate variability (SDNN), impaired Valsalva response, and elevated plasma norepinephrine in MTS patients versus controls @Anderson2021AutonomicDysfunction. The COMPASS-31 autonomic symptom score in MTS (34.2) overlaps with ME/CFS ranges, and 45% of MTS patients developed orthostatic hypotension on tilt-table testing.
- *Venous stasis and systemic inflammation.* Chronic iliac vein compression produces venous hypertension, endothelial activation, and localized inflammation---mechanisms overlapping with the endothelial dysfunction documented in ME/CFS (Section @sec:endothelial).

*Treatment response as circumstantial evidence.* Fatigue improved in 32--68% of MTS patients after iliac vein stenting, with SF-36 vitality domain gains of 19 points (far exceeding the minimal clinically important difference of 3--5 points) @Wolpert2020IliacStentingOutcomes @OSullivan2018StentingQoL @Ferreira2023VenousCompressionReview. While this venous fatigue is distinct from ME/CFS, the magnitude of improvement suggests venous drainage can be a reversible contributor to fatigue in at least some patients. However, MTS stenting literature may be affected by publication bias (positive series preferentially published), and stenting carries neurovascular risks not discussed in the fatigue outcome literature (stent thrombosis, distal embolisation).

*Critical counter-argument.* If MTS contributes to ME/CFS, why don't the 22--24% of the general population with anatomical MTS have ME/CFS rates anywhere near that proportion? The answer must be that MTS is neither necessary nor sufficient---it acts as a co-factor, compounding pre-existing ME/CFS pathology (blood volume deficits, autonomic dysfunction, cerebral hypoperfusion) rather than causing it de novo. Whether this co-factor effect is large enough to detect in a cohort study remains entirely untested.

*Falsifiable predictions:*
- Iliac vein compression severity on CT venography or MRV should correlate with orthostatic symptom severity in ME/CFS patients
- ME/CFS patients with confirmed MTS who undergo iliac vein stenting should show improvement in orthostatic intolerance and fatigue beyond that expected from non-specific procedural effects
- Internal jugular vein flow velocity during upright posture (measured by TCD) should be lower in ME/CFS patients with than without MTS

*Critical gap.* No study has screened an ME/CFS cohort for May Thurner syndrome. The 22--24% anatomical prevalence means MTS could potentially affect a substantial subset, but this remains entirely untested. Not yet replicated in any ME/CFS context.
] <spec:mts-venous-return>

=== Cardiac Biomarkers
<sec:cardiac-biomarkers>

==== Troponin

Cardiac troponins (cTnI, cTnT) are released from damaged cardiomyocytes:

    - *Baseline levels*: Generally normal in ME/CFS
    - *Post-exercise*: Whether mild elevations occur after exertion in ME/CFS is not yet established in the literature
    - *Clinical significance*: Cardiac biomarkers are not currently validated as ME/CFS diagnostic markers

==== BNP and NT-proBNP

B-type natriuretic peptide (BNP) and its N-terminal fragment are released in response to cardiac wall stress:

    - *Findings in ME/CFS*: Variable; some studies report mild elevations @Tomas2017
    - *Mechanism*: May reflect right heart strain from pulmonary issues or left ventricular stress
    - *Correlation*: Elevated BNP correlates with reduced cardiac volumes in ME/CFS @Tomas2017
    - *Clinical utility*: Not established as ME/CFS biomarker

==== Cardiac Structure and Function

Echocardiographic studies report variable findings, with evidence for subclinical dysfunction in some patients (@Newton2016):

    - *Reduced cardiac volumes*: Smaller left ventricular end-diastolic volume correlating with plasma volume deficits @Newton2016
    - *Diastolic dysfunction*: Some studies report impaired ventricular relaxation
    - *Reduced contractile reserve*: Limited ability to augment function during stress echocardiography (preliminary data)
    - *Strain imaging*: Speckle tracking echocardiography may detect subtle abnormalities not apparent on conventional imaging (requires further study)

These findings suggest that cardiac abnormalities in ME/CFS are primarily functional consequences of hypovolemia and autonomic dysfunction rather than primary myocardial disease.

#speculation(title: [NCX1 Reversal in Cardiac Muscle: A Mechanism for Baseline Diastolic Dysfunction])[
The NCX1 reversal cascade documented in skeletal muscle by Wirth et al.\ @Wirth2022muscleSodium @Wirth2024keyRole --- capillary hypoperfusion → anaerobic metabolism → intracellular Na#super[+] overload → NCX1 reverse-mode → intracellular Ca#super[2+] overload → mitochondrial damage --- applies equally to cardiac muscle, where NCX1 is the dominant calcium extrusion mechanism. In cardiomyocytes, Ca#super[2+] overload specifically impairs diastolic relaxation (lusitropy), producing the elevated E/e' ratio pattern of diastolic dysfunction.

*Proposed mechanism connecting ionic cascade to reduced cardiac output:* The reduced resting cardiac output documented in ME/CFS @Newton2016, typically attributed to hypovolemia and preload failure, may also reflect a component of chronic low-grade diastolic dysfunction from ongoing cardiac NCX1 reversal at subthreshold intensity (not generating overt PEM-equivalent events but continuously impairing myocardial relaxation). Impaired diastolic relaxation reduces preload by shortening the period available for ventricular filling, compounding the hypovolemia-driven preload failure.

*Falsifiable predictions:*
    - Echocardiography in ME/CFS patients should show elevated E/e' ratio (diastolic dysfunction marker) correlating with disease severity and with post-exercise muscle sodium accumulation on #super[23]Na-MRI
    - Cardiac #super[23]Na-MRI (feasible on 3T scanners) should demonstrate elevated myocardial sodium in ME/CFS patients at rest compared to healthy controls
    - MDC002 (targeting Na#super[+]/K#super[+]-ATPase and NCLX) should improve E/e' ratio alongside the primary muscle PEM endpoint

(Certainty: 0.35. Skeletal muscle NCX reversal is evidence-supported; extension to cardiac muscle is mechanistically sound but not yet measured. The diastolic dysfunction correlation with disease severity is not yet established. Not yet replicated in ME/CFS.)
] <spec:ch10-cardiac-ncx-reversal>

Neutrophil extracellular traps accumulate in cardiac tissue during myocarditis, where the midkine–LRP1 axis drives NET-mediated fibrosis and ventricular dysfunction @Weckbach2019. This mechanism may underlie the subclinical post-viral cardiomyopathy reported in some ME/CFS and Long COVID patients, and suggests that cardiac NET burden—not just circulating NET markers—merits investigation in this population.

== Vascular Dysfunction
<sec:vascular>

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

=== Blood Volume Abnormalities
<sec:blood-volume>

Blood volume deficits are among the most consistently documented abnormalities in ME/CFS (see also Section @sec:cardiac-output for impact on cardiac preload). This section expands on measurement methods and pathophysiological mechanisms.

==== Measurement and Magnitude

    - *Measurement methods*: Radioisotope dilution (gold standard), carbon monoxide rebreathing, dye dilution
    - *Plasma volume*: Typically 10–20% below predicted @Streeten1998blood
    - *Red cell mass*: Variable; some studies report proportional reduction, others find preserved red cell mass with disproportionate plasma volume loss
    - *Total blood volume*: 10–15% below normal in most studies @Newton2016
    - *Hemoglobin/hematocrit*: May appear normal or elevated due to hemoconcentration

==== Mechanisms of Volume Depletion

*Renin-Angiotensin-Aldosterone System Dysfunction*
Studies document a paradoxical RAAS response in POTS and ME/CFS, with elevated angiotensin II despite hypovolemia (@Raj2005, @Stewart2006):

    - Blunted aldosterone response to hypovolemia @Raj2005
    - Impaired sodium retention leading to inappropriate natriuresis
    - Elevated angiotensin II may contribute to symptoms through vasoconstriction @Stewart2006

Miwa (2016) quantified this paradox directly, demonstrating that renin and aldosterone output were abnormally low in ME/CFS patients _despite simultaneous hypovolemia_---a pattern Raj had previously identified in POTS and termed the "renin-aldosterone paradox" @Miwa2016raas @Raj2005. Under normal physiology, RAAS activity rises sharply to correct low blood volume; that it fails to do so in ME/CFS indicates a specific pathological mechanism suppressing the system rather than simple deconditioning.

*Vasoactive Substance Spillover and Bradykinin-Mediated RAAS Suppression*

#fhypothesis(title: [Bradykinin Spillover as the Mechanism of RAAS Suppression], falsifiability: [weakly], justification: [Falsified if (a) systemic bradykinin levels are normal in ME/CFS patients during and after exertion, or (b) kallikrein-kinin system blockade fails to restore RAAS activity in ME/CFS])[
Wirth and Scheibenbogen (2020) proposed that the RAAS paradox originates upstream in skeletal muscle hypoperfusion @Wirth2020unifying. Under their model, $beta_2$-adrenergic receptor dysfunction (from sympathetic desensitisation, chronic vasoconstriction, and autoantibody blocking) impairs vasodilation in muscle vasculature. The body compensates by upregulating local vasoactive substances---bradykinin, prostaglandins, adenosine, ATP, and prostacyclin---to force blood vessel opening. When this compensatory production exceeds local clearance capacity, it spills from muscle interstitium into the systemic circulation.

Bradykinin reaching the kidneys produces two hypovolemia-inducing effects:

    + _Increased renal blood flow_ forces filtration of more solute (salt and water) than normal.
    + _Kallikrein-kinin system (KKS) opposition to RAAS_: bradykinin directly suppresses renin release in the juxtaglomerular apparatus. Because renin is the rate-limiting first step in the RAAS cascade, its suppression propagates downward to reduce angiotensin~II and aldosterone output.

The net result is chronic inappropriate natriuresis---the body dumps salt despite needing to retain it---producing progressive plasma volume contraction.

*Testable predictions:*

    / *(a)*: Systemic bradykinin or kallikrein levels are elevated in ME/CFS patients at rest and rise disproportionately after exertion compared to controls.
    / *(b)*: Pharmacological KKS blockade (e.g., icatibant, a bradykinin B2 receptor antagonist) restores appropriate RAAS upregulation in response to orthostatic challenge.
    / *(c)*: The magnitude of RAAS suppression correlates with the severity of muscular hypoperfusion measured by NIRS or invasive CPET.

*Treatment implication:* If bradykinin spillover drives RAAS suppression, then treatments restoring muscular vasodilation (e.g., $beta_2$-AR resensitisation via Mitodicure/MDC002) would address the upstream cause, while oral rehydration solutions and fludrocortisone provide downstream compensation.
*Certainty: 0.50*---the model is mechanistically coherent and consistent with the Miwa (2016) and Raj (2005) RAAS paradox data, but direct measurement of systemic bradykinin in ME/CFS has not been performed.
] <hyp:bradykinin-raas>

*Natriuretic Peptide Effects*

    - Elevated ANP or BNP promoting sodium/water excretion
    - May result from atrial stretch due to cardiac filling abnormalities

*Capillary Permeability and Microvascular Leakage*

Increased vascular permeability shifts fluid to the interstitium and may be inflammation-mediated (cytokines increase endothelial permeability), explaining peripheral oedema in some patients despite intravascular hypovolemia. Wirth and Scheibenbogen (2020) identify bradykinin as a specific mediator of microvascular leakage: at sufficiently high concentrations, bradykinin disrupts endothelial tight junctions, creating microscopic vascular leaks through which blood components escape into the interstitial space @Wirth2020unifying. The leaked fluid is eventually returned via lymphatic drainage, but sluggish lymphatic function may delay this return, transiently worsening hypovolemia after exertion.

==== Hypovolemia-Driven Thirst
<sec:hypovolemic-thirst>

The brain contains two distinct thirst centres: an osmotic centre (activated by cellular dehydration from high plasma osmolality) and a hypovolemic centre (activated by low circulating volume). In ME/CFS, the dominant thirst driver may be hypovolemic: patients are thirsty because they lack blood volume, not because their cells are dehydrated @Ussher2025 (this interpretation is proposed by Ussher based on the Wirth-Scheibenbogen model; direct comparison of osmotic versus hypovolemic thirst responses in ME/CFS has not been performed). The hypovolemic thirst threshold is approximately a 10% drop in plasma volume (~280~mL), a deficit commonly exceeded in ME/CFS patients.

This distinction has important clinical consequences. Patients responding to hypovolemic thirst by drinking plain water do not resolve the problem: without adequate sodium reabsorption capacity (suppressed RAAS), water passes through the kidneys without expanding plasma volume. The result is a vicious cycle of drinking and urinating without benefit---some patients report consuming 8--20 litres per day without relief (patient-reported; no clinical measurement data available).

#clinical-finding(title: [Near-Universal Vasopressin Deficiency in ME/CFS])[
Huhmar et al. (2024) measured vasopressin levels in 111 ME/CFS patients after overnight fasting and 10~hours of fluid deprivation. 82% had vasopressin below the detection limit, and 66.7% had lower-than-normal urine osmolality---indicating that the kidneys fail to concentrate urine even under dehydration conditions @Huhmar2024vasopressin. This is consistent with secondary vasopressin suppression downstream of RAAS dysfunction rather than primary diabetes insipidus.
] <obs:vasopressin-deficiency>

Oral rehydration solutions (ORS) containing glucose, sodium, and potassium exploit the intestinal sodium-glucose cotransporter (SGLT1) to achieve efficient electrolyte absorption, effectively bypassing the renal retention deficit. Clinical evidence for ORS efficacy is discussed in Chapter @ch:supplements.

==== The CO#sub[2]--Bohr--Bradykinin Triangle
<sec:co2-bradykinin>

The bradykinin spillover model (Section @hyp:bradykinin-raas) and the low CO#sub[2] findings (Chapter @ch:lifestyle) interact through a previously unrecognised feedback loop. Low pCO#sub[2] shifts the oxygen-haemoglobin dissociation curve leftward via the Bohr effect, reducing oxygen release to tissues. This worsens tissue hypoxia---precisely the condition that drives compensatory bradykinin production. The triangle is: impaired muscular respiration $arrow.r$ low CO#sub[2] $arrow.r$ reduced O#sub[2] delivery (Bohr effect) $arrow.r$ worsened tissue hypoxia $arrow.r$ increased bradykinin production $arrow.r$ more RAAS suppression $arrow.r$ more hypovolemia $arrow.r$ worse perfusion $arrow.r$ worse muscular respiration. Interventions raising CO#sub[2] (e.g., adapted Buteyko breathing, Chapter @ch:lifestyle) would cut this triangle at the CO#sub[2]--hypoxia link, reducing bradykinin production as a secondary benefit beyond direct vascular effects.

*Certainty: 0.30* --- each individual link (low CO#sub[2], Bohr effect, bradykinin production) is physiologically established, but their integration into a self-reinforcing triangle in ME/CFS is a novel synthesis that has not been directly tested.

=== Arterial Stiffness and Vascular Compliance
<sec:arterial-stiffness>

Beyond endothelial function, arterial mechanical properties influence cardiovascular regulation. Pulse wave velocity (PWV), a measure of arterial stiffness, affects blood pressure regulation through its impact on baroreceptor function. The relationship between arterial stiffness and ME/CFS has not been extensively studied, but related conditions provide insight.

In hypermobile Ehlers-Danlos syndrome (hEDS), which frequently co-occurs with ME/CFS (Section @sec:septad), central pulse wave velocity is significantly lower than controls (4.73 m/s versus normal values), indicating excessive arterial elasticity @Miller2020arterial. This increased compliance paradoxically impairs blood pressure regulation: stretch receptors in vessel walls (baroreceptors) cannot accurately detect pressure changes when arterial walls are too compliant. The result is impaired baroreflex function and orthostatic intolerance despite (or because of) increased rather than decreased arterial elasticity.

Whether ME/CFS patients without connective tissue disorders show altered arterial stiffness remains unclear. Chronic inflammation typically increases arterial stiffness over time, while autonomic dysfunction could affect vascular smooth muscle tone. The interaction between these competing influences likely varies across patient subgroups. Pulse wave velocity measurement is non-invasive and could provide additional phenotyping data, though its clinical utility in ME/CFS management has not been established.

=== Microcirculation
<sec:microcirculation>

==== Capillary Perfusion

The microcirculation delivers oxygen and nutrients to tissues and removes metabolic waste:

    - *Red cell deformability*: Impaired RBC flexibility may impede capillary transit @Saha2019
    - *Microclot obstruction*: Amyloid-resistant fibrinaloid microclots may occlude microcapillaries, impairing perfusion @Nunes2022microclots

==== Oxygen Extraction

Peripheral oxygen extraction findings in ME/CFS appear contradictory across studies, likely reflecting patient heterogeneity or methodological differences:

    - *Contradictory findings*: Some studies report widened arteriovenous O#sub[2] difference (increased extraction compensating for reduced cardiac output), while others report impaired extraction consistent with mitochondrial limitation; these contradictions may reflect distinct patient subgroups
    - *Near-infrared spectroscopy*: Abnormal muscle oxygenation kinetics during exercise and delayed recovery are documented by NIRS, consistent with both delivery and utilization abnormalities @keller2024cpet

==== Tissue Hypoxia

Inadequate oxygen delivery produces tissue hypoxia:

    - *Muscle hypoxia*: Contributes to weakness and post-exertional symptoms
    - *Cerebral hypoperfusion*: Causes cognitive dysfunction (see Chapter @ch:neurological)
    - *Lactate accumulation*: Results from anaerobic metabolism
    - *Symptom generation*: Hypoxia-sensitive nociceptors may trigger pain

==== Cerebral Blood Flow During Orthostatic Stress
<sec:cerebral-orthostatic>

While tissue hypoxia affects multiple organs, the brain is particularly vulnerable to perfusion deficits during orthostatic challenge. Van Campen and colleagues have systematically characterized cerebral blood flow (CBF) abnormalities in ME/CFS through a series of rigorous studies using transcranial Doppler during tilt-table testing @VanCampenEtAl2020 @VanCampenEtAl2021 @VanCampenEtAl2023 @VanCampenEtAl2024.

#achievement(title: [Near-Universal CBF Decline in ME/CFS])[
Van Campen et al. @VanCampenEtAl2020 demonstrated that ME/CFS patients show reduced cerebral blood flow during head-up tilt testing even in the absence of hypotension or tachycardia. The findings are striking in their consistency across orthostatic phenotypes (percentages represent distinct, non-overlapping subgroups stratified by vital sign response):

    - *82%* of patients with normal HR/BP showed abnormal CBF reduction
    - *98%* of patients with delayed orthostatic hypotension showed abnormal CBF
    - *100%* of patients meeting POTS criteria showed abnormal CBF
    - End-tilt CBF reduction: *26% in ME/CFS vs.\ 7% in controls* (3.7-fold greater)

Abnormal CBF reduction thus occurs across all orthostatic presentations—even in patients with entirely normal vital signs. In the largest study to date (n=534), *91% of ME/CFS patients* with normal HR and BP responses demonstrated abnormal cardiac output and CBF reduction during tilt @VanCampenEtAl2024, indicating that standard orthostatic vital signs miss the primary pathology in most patients.
] <ach:cbf-decline>

#warning-env(title: [Replication Status: Single Research Group])[
All van Campen CBF studies originate from a single Dutch referral center using the same tilt-table protocol and transcranial Doppler methodology @VanCampenEtAl2020 @VanCampenEtAl2021 @VanCampenEtAl2023 @VanCampenEtAl2024. While internally consistent across multiple publications (n=107 to n=534), no independent research group has replicated these findings using equivalent methodology. The sequential publication pattern from one center may give the appearance of independent replication but represents a single group's cohort. Independent replication with standardized protocols at other centers is essential. See also the related CBF findings in Chapter @ch:neurological (Achievement @ach:cbf-universal).
]

*Clinical Implications of CBF Findings*

The cognitive symptoms during orthostatic stress—including brain fog, difficulty concentrating, and word-finding problems—correlate directly with the degree of cerebral hypoperfusion @VanCampenEtAl2023. Patients often report that cognitive function worsens progressively during prolonged standing and improves rapidly upon assuming a recumbent position. This positional dependence of cognitive symptoms provides clinical evidence for the cerebrovascular contribution to ME/CFS neurological dysfunction.

#clinical-finding(title: [Incomplete CBF Recovery After Orthostatic Stress])[
CBF reduction persists even after returning to supine position. Van Campen et al. @VanCampenEtAl2021 documented CBF reduction of $-29%$ at end-tilt, improving to only $-16%$ post-tilt. The degree of recovery correlated with disease severity rather than hemodynamic parameters, suggesting the CBF abnormality reflects intrinsic cerebrovascular or metabolic dysfunction rather than simple hemodynamic failure.
] <obs:cbf-recovery>

*Absence of Compensatory Vasodilation*

A particularly significant finding is the near 1:1 relationship between cardiac output reduction and CBF reduction in ME/CFS patients @VanCampenEtAl2024. In healthy individuals, reduced cardiac output triggers compensatory cerebral vasodilation to maintain brain perfusion. The absence of this compensation in ME/CFS suggests possible endothelial dysfunction affecting cerebrovascular autoregulation. This may represent a critical vulnerability: the brain cannot protect itself from systemic hemodynamic perturbations.

*Mechanisms of Cerebral Hypoperfusion*

Multiple mechanisms likely contribute to orthostatic cerebral hypoperfusion in ME/CFS. Evidence strength varies: *(documented)* = directly measured in ME/CFS studies; *(inferred)* = logically derived from observed relationships; *(hypothesized)* = proposed mechanism not yet directly tested.

    - *Reduced cardiac output* *(documented)*: Preload failure and chronotropic incompetence limit systemic perfusion pressure; directly measured in tilt studies showing parallel CO and CBF reduction @VanCampenEtAl2024 (see Section @sec:cardiac-output)
    - *Impaired cerebral autoregulation* *(inferred)*: Failure of compensatory vasodilation during reduced perfusion pressure; inferred from near 1:1 CO-CBF relationship where healthy controls show compensatory vasodilation @VanCampenEtAl2024 @Medow2024cerebralautoregulation
    - *Endothelial dysfunction* *(hypothesized)*: May impair nitric oxide-mediated vasodilation; suggested by absence of compensatory response but not directly measured in CBF studies
    - *Autonomic dysregulation* *(documented)*: Impaired sympathetic vasoconstriction in peripheral vascular beds allows excessive venous pooling; documented via HRV and catecholamine studies (see Chapter @ch:neurological Section @sec:autonomic-imbalance)
    - *Blood volume deficit* *(documented)*: Reduced circulating volume exacerbates orthostatic hemodynamic stress; documented in multiple studies showing 10–15% blood volume reduction (see Section @sec:blood-volume)
    - *Orthostatic hypocapnia* *(documented)*: Van Campen et al.\ (2023) @VanCampen2023co2cbf quantified PETCO#sub[2] during tilt in 535 female ME/CFS patients: end-tilt PETCO#sub[2] was 26–30~mmHg vs.\ 36±3~mmHg in controls. CO#sub[2] reactivity slopes were preserved, meaning the hypocapnia drives CBF reduction via normal cerebrovascular reactivity — orthostatic hypocapnia functions as a physiological amplifier: reduced cardiac output causes ventilation/perfusion mismatch, PETCO#sub[2] falls, CO#sub[2]-sensitive cerebral vessels constrict, and CBF falls further than systemic haemodynamics alone would predict @Badhwar2025brainbloodflow @Medow2024cerebralautoregulation. This mechanism may explain why CBF reductions (26–31%) consistently exceed systemic cardiac output reduction in ME/CFS tilt studies

In mast cell disorder patients, Novak et al.\ documented 20–24% reduction in orthostatic cerebral blood flow velocity using transcranial Doppler @Novak2022. Given the substantial overlap between mast cell activation and ME/CFS, histamine-mediated vasodilation during orthostatic stress may contribute to cerebral hypoperfusion in some patients. The combination of reduced blood volume, impaired vasoconstriction, and potentially histamine-induced vasodilation creates multiple mechanisms converging on inadequate cerebral perfusion during upright posture.

*Integration with Selective Energy Dysfunction Hypothesis*

The profound and consistent CBF reduction during orthostatic challenge exemplifies the broader pattern of _preserved baseline function with impaired challenge response_ characteristic of ME/CFS (see Chapter @ch:energy-metabolism Section @sec:selective-energy-dysfunction). Resting cerebral perfusion may be adequate, but the system cannot maintain CBF during the increased demand of orthostatic stress. The brain—with its high energy demands and critical dependence on continuous perfusion—may serve as the “canary in the coal mine” for systemic energy coordination dysfunction.

See Chapter @ch:neurological Section @sec:brain-bottleneck for discussion of brain-centric pathophysiology and the role of CBF abnormalities in the broader ME/CFS disease model.

== Blood Pressure Regulation
<sec:blood-pressure>

Blood pressure dysregulation is common in ME/CFS and manifests as various orthostatic disorders.

=== Orthostatic Hypotension
<sec:orthostatic-hypotension>

#definition(title: [Orthostatic Hypotension])[
A sustained reduction in systolic blood pressure $gt.eq$20 mmHg or diastolic blood pressure $gt.eq$10 mmHg within 3 minutes of standing. _Initial orthostatic hypotension_ refers to a brief BP drop within the first 15 seconds, which is common in ME/CFS.
]

Orthostatic hypotension occurs in a subset of ME/CFS patients, presenting with lightheadedness, visual disturbances, weakness, and syncope. Contributing mechanisms include autonomic failure, hypovolemia, and medications.

=== Neurally Mediated Hypotension
<sec:nmh>

#definition(title: [Neurally Mediated Hypotension])[
Also called vasovagal syncope or neurocardiogenic syncope. Characterized by paradoxical vasodilation and bradycardia during prolonged standing, triggered when vigorous ventricular contraction of an underfilled heart activates vagal reflexes. Presents as delayed BP drop after 10+ minutes of standing, with prodromal nausea, diaphoresis, and pallor preceding syncope.
]

Diagnosis is confirmed by head-up tilt table testing, which can provoke the characteristic hemodynamic response under controlled conditions.

=== Postural Orthostatic Tachycardia Syndrome (POTS)
<sec:pots>

#definition(title: [Postural Orthostatic Tachycardia Syndrome])[
A syndrome characterized by excessive heart rate increase upon standing without significant blood pressure drop. According to the 2015 Heart Rhythm Society expert consensus @Sheldon2015POTScriteria, diagnostic criteria include: heart rate increase $gt.eq$30 bpm (or $gt.eq$40 bpm in adolescents) within 10 minutes of standing, absence of orthostatic hypotension, symptoms of orthostatic intolerance, and symptom duration exceeding 6 months.
]

#limitation(title: [POTS Diagnostic Threshold: Clinical Utility vs. Specificity])[
The POTS diagnosis in the ME/CFS context should be interpreted cautiously. The defining $gt.eq$30 bpm criterion has poor specificity (10--15% of healthy controls meet it), poor day-to-day reproducibility, and explains only approximately 2% of symptom variance @MECFSScience2024pots. Only 21% of ME/CFS patients with orthostatic intolerance symptoms meet formal POTS criteria, indicating that the majority of autonomic dysfunction in ME/CFS is not captured by this diagnosis.

The diagnostic reliability has been further challenged. Hedge et al. (2026) demonstrated poor test-retest reliability of clinical supine-to-stand tests in POTS patients (Vernino/Levine lab) — day-to-day HR variability may lead to misdiagnosis or misclassification @Hedge2026reliability. However, this variability may carry biological signal rather than pure noise: a patient who meets criteria on some days but not others may have dynamically unstable autonomic circuits, whereas consistently positive tests may indicate fixed structural impairment. The day-to-day coefficient of variation in standing HR increment could itself be a diagnostic biomarker — an "autonomic stability index" — rather than nuisance variance that disqualifies the diagnosis.

The Diagnostic Mirage hypothesis (Chapter @ch:integrative-models, Speculation @spec:diagnostic-mirage) proposes that POTS, hEDS, and MCAS may represent phenotypic fragments of a single underlying autonomic vulnerability rather than distinct comorbid conditions. See Section @sec:cross-disease for the full comorbidity diagnostic validity analysis.
]


==== Prevalence in ME/CFS

    - Estimated 25--50% of ME/CFS patients meet POTS criteria @Newton2008POTSprevalence. A systematic review and meta-analysis (n=21 studies) found pooled POTS prevalence of 36.2% in post-acute sequelae of COVID-19, with higher incidence in mild vs severe acute cases and younger populations @Wang2026POTS36prevalence
    - Substantial symptom overlap between conditions
    - May represent overlapping or related conditions
    - Similar pathophysiological mechanisms

POTS is one component of the “Septad” framework of frequently co-occurring conditions in ME/CFS (Section @sec:septad). The interplay between dysautonomia, mast cell activation, EDS, and other Septad components suggests shared pathophysiological mechanisms warranting comprehensive evaluation.

==== POTS Subtypes
Different pathophysiological mechanisms produce similar clinical phenotypes.

==== Hemodynamic Subtypes in ME/CFS+POTS

van Campen et al. (2024) identified two distinct hemodynamic response patterns during head-up tilt specifically in ME/CFS+POTS patients @vanCampen2024twoHemodynamic:

    - *Hypovolemic-like*: Reduced stroke volume (SV) as the primary driver, with compensatory tachycardia to maintain cardiac output. These patients have low blood volume, impaired venous return, and their orthostatic symptoms are dominated by preload failure.
    - *Hyperadrenergic-like*: Near-normal SV but exaggerated heart rate response driven by sympathetic overactivation. Standing norepinephrine is elevated, and symptoms include tremor, anxiety, and supine hypertension.

These two patterns may represent sequential stages on a disease trajectory rather than stable subtypes (cross-sectional data; longitudinal progression not directly observed). Early ME/CFS: hypovolemia-predominant (low blood volume, low SV, modest tachycardia). Over time, chronic low SV → sustained baroreceptor unloading → chronic sympathetic overactivation → baroreflex resetting → progressive hyperadrenergic state. This conversion from "compensatory tachycardia" to "pathological sympathetic dominance" represents a hypothesized transition from functional to structural OI (Speculation @spec:oi-distinction). The distinction matters for treatment selection: hypovolemic patients need volume expansion first; hyperadrenergic patients may need sympatholytic agents or neuromodulation. Midodrine (alpha-1 agonist), which primarily improves venous return and SV, should work best at the hypovolemic stage; sympatholytics (ivabradine, beta-blockers) may be more appropriate once sympathetic tone is dysregulated, with the caveat that HR reduction without SV support can be deleterious (see Speculation @spec:compensatory-tachycardia).

*Certainty: 0.55* (van Campen 2024, n≈75, single center, first dedicated hemodynamic subtyping in ME/CFS+POTS specifically).

==== Related Hypotheses

#speculation(title: [Compensatory Tachycardia in POTS — HR Reduction as CBF Destabilization])[
*Certainty: 0.50.* If tachycardia in POTS is compensatory — defending cerebral perfusion when stroke volume drops — then pharmacologically reducing HR without first normalizing SV risks cardiac output and cerebral perfusion. This hypothesis is supported by converging lines of evidence:

    - Marchetta et al. (2025) demonstrated that ivabradine reduces HR in POTS but symptom burden improvement does not correlate with HR reduction magnitude — dissociating rate control from clinical benefit @Marchetta2025ivabradine
    - Chopra (2026) presented a mechanistic argument that POTS tachycardia is compensatory and should not be the primary treatment target; treatment should target root causes (hypovolemia, venous pooling) @Chopra2026compensatory
    - Miranda-Hurtado et al. (2026, Raj lab) established the SV→ETCO2→CBF pathway: reduced SV → lower end-tidal CO2 → hypocapnic cerebral vasoconstriction → impaired CBF, providing the mechanistic link between low SV and orthostatic cognitive symptoms @MirandaHurtado2026CBFpots

The clinical implication is that ivabradine and beta-blockers should be prescribed with caution in patients with low SV-dominant POTS: pre-treatment SV measurement (impedance cardiography or echo during HUT) could stratify patients into those likely to benefit (normal/high SV, hyperadrenergic POTS) versus those at risk of worsening (low SV, hypovolemic/neuropathic POTS).

*Falsifiable prediction:* Pre-treatment SV predicts ivabradine response — patients in the lowest SV tertile show net worsening of orthostatic cognitive performance (PASAT-3 score during HUT) after 4 weeks of ivabradine; patients in the highest SV tertile show improvement. The SV-by-treatment interaction term is significant (p $<$ 0.05) in a crossover design. *Falsified if* SV does not predict differential cognitive response (interaction p $gt.eq$ 0.10), or if no SV tertile shows worsening (all tertiles show neutral or positive effects).
] <spec:compensatory-tachycardia>

*Neuropathic POTS*
Neuropathic POTS results from partial autonomic neuropathy affecting lower extremity vasoconstriction, leading to blood pooling in the legs during standing. This subtype is associated with small fiber neuropathy (SFN) and may be autoimmune in some cases. SFN specifically affects the small-diameter autonomic nerve fibers that innervate blood vessels and sweat glands, and its prevalence in POTS has been confirmed through skin biopsy studies demonstrating reduced intraepidermal nerve fiber density @Azcue2023sfn.

==== Small Fiber Neuropathy in POTS and ME/CFS
The connection between SFN and cardiovascular dysautonomia is increasingly recognized. Azcue et al.\ demonstrated that ME/CFS patients show heat response latencies indicating C-fiber denervation, with 31% meeting POTS criteria and 34% showing non-length-dependent SFN patterns @Azcue2023sfn. This non-length-dependent pattern (affecting proximal and distal sites equally) suggests autoimmune or inflammatory etiology rather than length-dependent degeneration seen in metabolic neuropathies.

The autonomic consequences of SFN in ME/CFS are substantial. Damaged sympathetic sudomotor fibers contribute to temperature dysregulation, while damaged vasomotor fibers impair the normal vasoconstrictor response to orthostatic stress. When patients stand, intact baroreceptors detect the gravitational blood shift, but the effector arm of the reflex (sympathetic vasoconstriction mediated by small fibers) functions inadequately, resulting in venous pooling and compensatory tachycardia characteristic of neuropathic POTS.

In mast cell disorder patients, Novak et al.\ documented SFN in 80% of cases, with universal dysautonomia when combining sympathetic, parasympathetic, and sudomotor testing @Novak2022. Given the overlap between mast cell activation and ME/CFS (Section @sec:septad), SFN may represent a common pathway linking immune dysregulation to cardiovascular symptoms in both conditions.

Ekman et al. (2025) demonstrated that objective peripheral sensory neuropathy signs in POTS, measured by quantitative sensory testing, correlate specifically with gastrointestinal symptom burden @Ekman2025SFNpots. This finding links SFN to the GI dysfunction common in POTS-ME/CFS patients — though QST measures limb sensory fibers, not enteric small fibers, so the mechanistic inference (enteric denervation → GI dysfunction) is indirect: peripheral neuropathy may serve as a systemic marker for nerve damage that also affects the enteric nervous system, rather than indicating directly measured gut denervation. If enteric small fibers are similarly affected, they may impair gut motility, barrier function, and the splanchnic vasoconstrictor response simultaneously — creating the clinical presentation of patients who experience both orthostatic intolerance and post-prandial symptom exacerbation. This provides mechanistic grounding for the Postural Orthostatic Gut Syndrome (POGS) concept (see Speculation @spec:postural-gut-syndrome): if enteric small fibers are denervated, the gut mucosa is doubly vulnerable — impaired perfusion (due to dysregulated splanchnic vasoconstriction) combined with impaired epithelial maintenance (due to denervation of trophic fibers).

*Hyperadrenergic POTS*

    - Excessive sympathetic activation @Raj2005
    - Standing norepinephrine $>$600 pg/mL
    - Associated with tremor, anxiety, hypertension during episodes
    - May involve norepinephrine transporter deficiency

*Hypovolemic POTS*

    - Low blood volume as primary driver @Raj2005 @Stewart2006
    - Compensatory tachycardia to maintain cardiac output
    - May respond to volume expansion
    - Overlaps with ME/CFS blood volume deficits

==== Cerebral Blood Flow Deficits in POTS

The link between orthostatic tachycardia and cerebral symptoms (brain fog, dizziness, cognitive impairment) is increasingly understood as a cerebral blood flow (CBF) problem, not merely a heart rate problem. Three recent studies converge on CBF deficits as central to POTS pathophysiology:

*Stroke volume–CO2–CBF pathway (Miranda-Hurtado 2026).*
Miranda-Hurtado et al. (Raj lab) demonstrated a mechanistic pathway: reduced stroke volume → lower end-tidal CO2 (ETCO2) → hypocapnic cerebral vasoconstriction → impaired CBF. The key insight is that SV reduction does not simply lower cardiac output linearly — it triggers hypocapnic cerebral vasoconstriction that amplifies the CBF deficit. This is a multiplicative impairment: SV drops → linear CBF reduction × CO2-mediated vasoconstriction → supralinear cognitive symptom burden. The finding establishes a direct, measurable causal chain from the peripheral cardiovascular deficit (low SV) to the central symptom (brain fog) via a pulmonary intermediate (reduced CO2 exchange) that is routinely measurable with capnography @MirandaHurtado2026CBFpots.

*Structural brain changes (Malik 2026).*
Malik et al. (2026) demonstrated that POTS patients show gray matter volume reductions, altered brain network connectivity, and cerebral hemodynamic deficits on MRI. Structural brain changes correlate with symptom severity, suggesting that repeated, chronic orthostatic CBF deficits may produce cumulative brain injury — transitioning POTS from a "benign" autonomic syndrome to a progressive neurovascular disease in some patients @Malik2026brainPOTS.

*Regional perfusion deficits (Seeley 2025).*
Seeley et al. (2025) used brain SPECT imaging to demonstrate region-specific hypoperfusion in POTS patients with cognitive complaints. Perfusion deficits correlated with domain-specific cognitive scores — prefrontal hypoperfusion with executive dysfunction, temporal hypoperfusion with memory impairment — suggesting that the clinical phenotype of POTS brain fog is determined by which brain regions are most perfusion-compromised @Seeley2025SPECTpots.

The cumulative picture positions CBF as the central mediator of POTS symptoms: the low-SV state (hypovolemia, SFN, splanchnic pooling) produces orthostatic CBF deficits via multiple pathways (reduced perfusion pressure, CO2-mediated vasoconstriction, impaired autoregulation); these CBF deficits determine symptom severity and, over time, may produce structural brain changes in the most vulnerable regions.

#hypothesis(title: [Cerebral Blood Flow as Unifying Hub of POTS Symptoms])[
*Certainty: 0.50.* We propose that cerebral blood flow deficits — not heart rate elevation per se — are the central mediator of POTS symptoms in ME/CFS. The orthostatic HR increment is a compensatory response to defend CBF; symptom severity tracks CBF decline, not HR increment magnitude. This reframing has therapeutic consequences: treatments should be evaluated by their effect on orthostatic CBF (transcranial Doppler) and cognitive performance, not by HR reduction alone. Ivabradine may reduce HR but worsen CBF in low-SV patients; midodrine may improve CBF without affecting HR; compression may improve CBF via SV support without pharmacological intervention.

*Falsifiable predictions:*
- Orthostatic cognitive performance (PASAT-3, n-back) correlates more strongly with ΔMCA velocity (r $>$ 0.6) than with ΔHR (r $<$ 0.3) during HUT
- Regional CBF (measured by simultaneous NIRS or ASL-MRI during tilt) predicts domain-specific cognitive impairment: prefrontal ΔCBF predicts Δexecutive function; hippocampal ΔCBF predicts Δverbal memory
- Capnometry-guided CO2 augmentation during standing (maintaining ETCO2 at supine baseline) normalizes orthostatic cognitive performance without affecting HR — confirming the CO2→CBF→cognition mechanistic chain

*Falsified if* (a) ΔMCA velocity correlates with cognitive performance no more strongly than ΔHR (r difference $<$ 0.2), or (b) CO2 augmentation fails to improve orthostatic cognitive performance (Cohen's d $<$ 0.3 vs normal breathing), or (c) regional CBF does not predict domain-specific cognition (ΔR² < 0.10 over whole-brain CBF model).
] <hyp:cbf-unifying-hub>

*Splanchnic Blood Flow Dysregulation*

The splanchnic vascular bed—comprising the circulation to the gastrointestinal tract, liver, spleen, and pancreas—contains approximately 30% of total blood volume. This substantial reservoir plays a critical role in cardiovascular homeostasis, but also represents a vulnerability in dysautonomic conditions. In POTS and ME/CFS, splanchnic blood flow dysregulation has implications beyond cardiovascular symptoms, potentially contributing to gastrointestinal dysfunction and systemic inflammation through gut barrier compromise.

==== Splanchnic Pooling in POTS
POTS patients demonstrate excessive abdominal blood pooling, which can occur even in supine and resting positions @terSteege2012. Different POTS subtypes exhibit distinct splanchnic mechanisms:

    - *Neuropathic POTS*: Sympathetic denervation extends beyond lower extremities to include splanchnic vessels, leading to inadequate vasoconstriction and pooling in the abdominal vasculature. This pooling reduces effective circulating volume and cardiac preload.

    - *Normal-flow POTS*: Characterized by splanchnic vasodilation even when supine, these patients show inappropriate relaxation of mesenteric vessels, sequestering blood in the abdomen and reducing venous return to the heart.

    - *Post-prandial exacerbation*: Splanchnic pooling increases substantially after meals in all POTS patients. Digestion requires 10–30% increase in splanchnic blood flow; in patients with impaired autonomic compensation, this post-prandial demand cannot be met without compromising perfusion to other organs. Many POTS-ME/CFS patients report worsening symptoms during and after meals, potentially reflecting this competitive redistribution.

*Treatment Evidence:* Abdominal compression garments (40 mmHg) combined with leg compression (20–30 mmHg) have been shown to reduce splanchnic-mesenteric venous pooling and improve orthostatic tolerance in POTS patients @terSteege2012. This mechanical intervention suggests that splanchnic pooling is not merely an epiphenomenon but actively contributes to hemodynamic instability.

==== Paradoxical Hypoperfusion During Activity
While pooling implies increased blood volume in the splanchnic bed, this does not translate to adequate _perfusion_ at the microvascular level. Blood accumulates in distended capacitance vessels rather than flowing through nutrient capillaries. During activity—even minimal exertion in severe patients—sympathetic activation attempts to redistribute blood to exercising muscles and the brain, but dysautonomic patients cannot effectively mobilize pooled splanchnic blood. The result is paradoxical: splanchnic vessels remain dilated (pooling persists) while capillary perfusion pressure drops (hypoperfusion), creating ischemic stress in the intestinal mucosa.

Van Campen et al. @VanCampen2020SeverityCPET demonstrated that severe ME/CFS patients show 27% reduction in cerebral blood flow during minimal orthostatic stress (20-degree head-up tilt), compared to only 7% reduction in healthy controls. Given that splanchnic vessels are more compliant and receive lower circulatory priority than cerebral vessels during sympathetic activation, it is mechanistically plausible that severe ME/CFS patients experience _equal or greater_ splanchnic blood flow reduction during routine postural changes.

*Inference for Severe Patients (Certainty: 0.40):* If a 20-degree tilt—a nearly supine position—causes 27% cerebral blood flow reduction, then sitting upright, standing attempts, or even cognitive exertion requiring blood redistribution likely trigger substantial splanchnic hypoperfusion in severe ME/CFS patients. This hypoperfusion may occur during activities that would not be considered “exercise” in healthy individuals: reading, conversation, sitting upright for meals, or toileting.

==== Connection to Gut Barrier Function
The gastrointestinal mucosa is highly metabolically active and exquisitely sensitive to hypoperfusion. In healthy individuals, 60 minutes of vigorous exercise (70% VO#sub[2]max) causes portal blood flow to decrease by 80%, with splanchnic hypoperfusion detectable within 10 minutes @vanWijck2011. This exercise-induced hypoperfusion results in measurable intestinal injury: plasma I-FABP (intestinal fatty acid-binding protein, a marker of enterocyte damage) increases within 1 hour, and intestinal permeability transiently rises, allowing bacterial lipopolysaccharide (LPS) to translocate into systemic circulation @vanWijck2011.

In ME/CFS patients—particularly those with POTS overlap—chronic baseline splanchnic pooling combined with exaggerated hypoperfusion during minimal activities may create sustained or repeated ischemic stress to the gut mucosa. When combined with wheat consumption (which upregulates zonulin and primes tight junctions for permeability), even brief hypoperfusion episodes could trigger bacterial translocation and LPS-mediated inflammatory responses.

*Clinical Translation:* The high comorbidity between POTS and ME/CFS (25–50% of ME/CFS patients meet POTS criteria @Newton2008POTSprevalence) suggests shared splanchnic dysregulation pathways. For patients with both conditions, abdominal compression may serve a dual purpose: not only improving orthostatic tolerance by reducing pooling, but also protecting gut barrier function by maintaining adequate splanchnic perfusion during activities. This hypothesis remains untested but is mechanistically grounded.

#speculation(title: [Postural Orthostatic Gut Syndrome])[
We propose the concept of *Postural Orthostatic Gut Syndrome (POGS)* for a subset of severe ME/CFS patients with POTS comorbidity, in whom upright posture alone causes sufficient splanchnic hypoperfusion to trigger wheat-primed gut barrier failure. The mechanistic sequence would be:

    - Upright posture → gravitational blood pooling in abdomen and legs
    - Baroreceptor-mediated sympathetic activation → attempt to restore cardiac output
    - Splanchnic vasoconstriction (reflex response) → paradoxical hypoperfusion despite local pooling
    - Wheat-primed tight junctions (zonulin-upregulated) → acute permeability increase under ischemic stress
    - LPS translocation → post-orthostatic symptoms (brain fog, nausea, fatigue, delayed systemic inflammation)

*Certainty: 0.40* (inferred from documented CBF reduction via van Campen cerebral blood flow studies @VanCampenEtAl2020 @VanCampenEtAl2024 combined with established splanchnic mechanisms from ter Steege 2012 @terSteege2012; the inference chain is: documented orthostatic CBF reduction $arrow.r$ inferred splanchnic hypoperfusion $arrow.r$ hypothesized gut barrier failure in wheat-primed mucosa; the POGS construct itself is novel and untested).

*Testable Predictions:*

    - Plasma LPS and I-FABP will increase 2–4 hours after 20-minute seated position (vs.\ supine baseline) in severe ME/CFS+POTS patients but not in ME/CFS-only or POTS-only patients without wheat consumption
    - Abdominal compression will reduce post-postural LPS spikes in severe ME/CFS+POTS patients
    - Wheat elimination will reduce symptom exacerbation during upright positioning (in POGS patients)

This model emphasizes that gut barrier function is not isolated from autonomic and cardiovascular dysfunction—it is intimately coupled. Therapeutic interventions targeting one system (compression for POTS) may simultaneously benefit gastrointestinal function through improved splanchnic perfusion.

*Future Research Directions:* These predictions provide a roadmap for future validation studies to establish whether POGS represents a distinct clinical entity or a mechanistic subtype within the ME/CFS spectrum. Prospective studies combining tilt-table testing with serial gut permeability biomarkers (LPS, I-FABP, zonulin) in severity-stratified ME/CFS cohorts with and without POTS comorbidity would be particularly informative.
] <spec:postural-gut-syndrome>

#speculation(title: [Functional vs. Structural OI Distinction])[
The higher prevalence but better reversibility of orthostatic intolerance in
pediatric ME/CFS (70–90% prevalence with high response to treatment @Ojha2024pediatricPOTS @Heine2019pediatricCFS) compared
to adult disease suggests qualitatively different mechanisms. We speculate that
pediatric OI may primarily represent functional miscalibration of an autonomic
system still undergoing developmental tuning, while adult OI may involve structural damage (small fiber neuropathy, receptor autoantibody-mediated
damage) accumulated over illness duration. This distinction would explain why
OI treatment in children often produces multi-domain improvement (fatigue,
cognition, wellbeing) while adult responses may be more limited. If correct,
this supports aggressive early OI treatment in both populations to prevent
functional miscalibration from progressing to structural damage.

*Certainty: 0.35* (prevalence and prognosis data documented @Ojha2024pediatricPOTS @Heine2019pediatricCFS; functional vs.\ structural mechanism distinction is speculative and untested)
] <spec:oi-distinction>

#hypothesis(title: [Structural vs Functional Orthostatic Intolerance Stratification])[
*Certainty: 0.60.* Bragee et al. (2020) documented that ME/CFS patients with craniocervical instability (CCI) show strong correlation between CCI severity and orthostatic intolerance symptoms (r=0.42) @Bragee2020. This suggests that CCI-mediated autonomic dysfunction represents a *structural* form of orthostatic intolerance distinct from *functional* POTS (pure autonomic dysregulation without mechanical compression). Structural OI (CCI-mediated) and functional OI (standard POTS) require different treatment profiles and should be stratified in clinical practice.

*Two distinct pathophysiologies:*

*Structural OI (CCI-mediated):*
- Mechanism: Cervical instability compresses sympathetic ganglia (superior cervical ganglion, stellate ganglion) and brainstem autonomic nuclei, producing mechanical irritation of sympathetic outflow
- Treatment profile: Responds to structural interventions—cervical stabilization (collar, physical therapy targeting deep cervical flexors), potentially surgical decompression in refractory cases
- Supporting evidence: Bragee 2020 showed r=0.42 CCI-orthostatic correlation; Ramirez-Paesano 2023 demonstrated symptom improvement with CCI treatment @Ramirez-Paesano2023CCI

*Functional OI (standard POTS):*
- Mechanism: Autonomic dysregulation without structural compression—involves hypovolemia, beta-adrenergic receptor autoantibodies, peripheral denervation
- Treatment profile: Responds to volume expansion (fludrocortisone, increased salt/water), autonomic medications (midodrine, ivabradine), immunomodulation (autoantibody reduction)
- Supporting evidence: Established POTS literature; Ryabkova 2024 showed HRV abnormalities in ME/CFS @Ryabkova2024dysautonomia

*Clinical stratification test:*
Upright cervical MRI (performed during active symptoms) can identify CCI+ vs. CCI- patients:
- CCI+: Cervical tonsillar descent >5 mm, reduced craniocervical junction space, dural thickening
- CCI-: Normal cervical anatomy

*Falsifiable predictions:*
- Upright MRI CCI+ patients will show better response to cervical stabilization (collar, PT) than to standard POTS medications (midodrine, fludrocortisone)
- Upright MRI CCI- patients will show better response to volume expansion and autonomic meds than to cervical interventions
- CCI+ patients will have elevated standing norepinephrine and abnormal sympathetic testing disproportionate to other autonomic measures

*Treatment implications:* Pre-treatment upright cervical MRI or careful clinical CCI assessment should guide first-line therapy. Structural OI patients receive cervical stabilization first; functional OI patients receive standard POTS treatment. This stratification may improve treatment response rates by matching mechanism to intervention.
] <hyp:ch10-structural-functional-oi>

#speculation(title: [tVNS for Structural-Autonomic Dysfunction in Hypermobile ME/CFS])[
*Certainty: 0.40.* Transcutaneous vagus nerve stimulation (tVNS) at the tragus (25 Hz, below sensory threshold) may provide dual benefit in hypermobile ME/CFS patients with concurrent autonomic instability and mast cell activation syndrome (MCAS): (1) enhances parasympathetic tone to counter sympathetic overdrive in POTS/dysautonomia; (2) suppresses mast cell degranulation via alpha7-nicotinic acetylcholine receptor (alpha7-nAChR) activation on mast cells.

*Dual mechanism in hypermobile ME/CFS:*
Hypermobile Ehlers-Danlos syndrome (hEDS) co-occurs with ME/CFS in the Septad framework (Section @sec:septad). hEDS patients frequently have both autonomic dysfunction (POTS prevalence 80% @Miller2020arterial) and MCAS (prevalence 33–50% in connective tissue disorder clinics). These conditions interact: mast cell histamine release exacerbates orthostatic symptoms via vasodilation; sympathetic overdrive increases mast cell activation. tVNS addresses both arms simultaneously.

*Alpha7-nAChR anti-inflammatory pathway:*
The alpha7-nAChR on mast cells is activated by acetylcholine release from vagus nerve endings. When stimulated, this receptor suppresses mast cell degranulation and reduces release of histamine, tryptase, and pro-inflammatory cytokines. tVNS provides controlled acetylcholine release at the target tissue level without systemic effects, potentially stabilizing mast cells in MCAS-positive ME/CFS patients.

*Autonomic stabilization:*
tVNS enhances parasympathetic vagal tone, which: (1) reduces sympathetic overactivity (improving HRV and baroreflex sensitivity), (2) normalizes heart rate response to orthostatic challenge, (3) improves cerebral blood flow regulation via brainstem autonomic nuclei modulation.

*Testable predictions:*
- Hypermobile ME/CFS patients with MCAS+POTS will show greater symptom reduction from tVNS than non-hypermobile patients, reflecting dual mechanism benefit
- tVNS will reduce urinary N-methylhistamine (mast cell activation marker) in MCAS+ ME/CFS patients, confirming alpha7-nAChR effect
- HRV parameters (RMSSD, HF power) will improve after 4 weeks of tVNS treatment, correlating with orthostatic symptom improvement

*Clinical considerations:*
tVNS devices are available as prescription medical devices (gammaCore, Nemos) and consumer devices (Sensate). Dosing protocols vary: typical regimens involve 1–3 sessions daily of 2–5 minutes each at sub-threshold intensity. Side effects are generally mild (local skin irritation, mild throat discomfort at onset). Contraindications include active vagotomy, implanted vagus nerve stimulators, and certain cardiac arrhythmias.

*Limitations:* No ME/CFS-specific tVNS trials have been published. Evidence comes from extrapolation from POTS studies (small case series) and alpha7-nAChR biology (established in other inflammatory conditions). The dual benefit hypothesis has not been tested directly.
] <spec:ch10-tvns-hypermobile>

#speculation(title: [Complement-Mediated Glycocalyx Destruction in POTS])[
*Certainty: 0.35.* The endothelial glycocalyx — a carbohydrate-rich layer lining the vascular lumen — regulates vascular permeability, mechanotransduction, and nitric oxide bioavailability. In POTS, complement activation (documented in ME/CFS, Chapter @ch:immune-dysfunction, Section @sec:complement; elevated C3a, C5a, C4a) may directly degrade the glycocalyx via: (1) C5a-mediated neutrophil degranulation releasing heparanase and matrix metalloproteinases (MMP-2, MMP-9); (2) membrane attack complex (C5b-9) deposition causing endothelial microvesicle shedding that carries glycocalyx components into circulation; (3) anaphylatoxin-induced mast cell degranulation releasing tryptase and chymase that cleave glycocalyx syndecan-1 and glypican core proteins @Becker2015glycocalyx @Ostrowski2015glycocalyx.

*Proposed mechanism.* Complement activation (from any trigger: immune complexes, infection, endothelial damage) generates C5a, which binds C5aR1 on neutrophils. Activated neutrophils release heparanase (degrades heparan sulfate, the glycocalyx backbone) and MMP-9 (degrades syndecan-1 ectodomains). Glycocalyx degradation exposes underlying endothelial adhesion molecules (VCAM-1, ICAM-1), promoting leukocyte adhesion and further complement activation — a self-amplifying surface-loss loop. The degraded glycocalyx reduces nitric oxide bioavailability (mechanotransduction failure → eNOS uncoupling), impairing flow-mediated vasodilation and contributing to the orthostatic intolerance characteristic of POTS. Measuring shed glycocalyx components (syndecan-1, heparan sulfate) in ME/CFS plasma has not yet been attempted.

*ME/CFS+POTS context.* If complement-mediated glycocalyx destruction occurs in POTS-comorbid ME/CFS, it would explain: (a) the exercise-induced complement activation documented in PEM (Chapter @ch:immune-dysfunction, Section @sec:complement-pem) — exertion activates complement, which degrades glycocalyx, worsening orthostatic tolerance post-exercise; (b) the endothelial dysfunction documented by flow-mediated dilation studies; (c) the therapeutic benefit of interventions targeting glycocalyx restoration (sulodexide — Speculation @hyp:vascular-primary-mecfs) which may reduce orthostatic symptom severity.

*Falsifiable predictions.* (1) ME/CFS+POTS patients will show elevated circulating glycocalyx degradation markers (syndecan-1, heparan sulfate, hyaluronan) compared to ME/CFS without POTS and healthy controls. (2) Glycocalyx marker levels will correlate with POTS severity (heart rate increment on tilt table) and complement activation markers (C3a, C5a). (3) Serial measurements before and after exercise will show a spike in glycocalyx degradation markers coinciding with C5a elevation (6 h post-exertion). (4) In vitro, C5a-treated human microvascular endothelial cells will show reduced glycocalyx thickness (wheat germ agglutinin staining) that is blocked by an MMP inhibitor (GM6001) or C5aR1 antagonist (avacopan).

*Limitations.* Glycocalyx integrity has not been assessed in any ME/CFS or POTS study. The specific complement-to-MMP pathway in endothelial glycocalyx degradation has been demonstrated in sepsis and ischemia-reperfusion models but not in post-viral or dysautonomic conditions. Shed syndecan-1 has multiple sources (epithelial, endothelial); plasma levels reflect net shedding not specifically vascular glycocalyx loss. The glycocalyx hypothesis is the most testable of these limitations (syndecan-1 ELISA is routine), but no data exist in ME/CFS.
] <spec:complement-glycocalyx-pots>

=== Hypertension in ME/CFS
<sec:hypertension>

While hypotension is more commonly discussed, hypertension also occurs:

    - *Supine hypertension*: Some patients have elevated BP when lying down
    - *Labile hypertension*: Wide BP fluctuations
    - *Stress-related*: BP spikes during symptom exacerbations
    - *Medication-related*: Sympathomimetics for orthostatic symptoms may raise BP

== Heart Rate Abnormalities
<sec:heart-rate>

=== Resting Tachycardia
<sec:resting-tachycardia>

Many ME/CFS patients exhibit elevated resting heart rate:

    - *Mechanism*: Compensatory response to low stroke volume
    - *Sympathetic activation*: Chronic low-grade sympathetic overdrive
    - *Deconditioning*: Loss of cardiovascular fitness
    - *Clinical significance*: Correlates with symptom severity

=== Heart Rate Variability
<sec:hrv>

Heart rate variability (HRV) reflects autonomic modulation of the sinoatrial node (see Chapter @ch:neurological for detailed discussion). Multiple studies document autonomic dysfunction in ME/CFS @Newton2007autonomicDysfunction, and the NIH deep phenotyping study confirmed significantly reduced HRV in ME/CFS patients (@walitt2024deep):

    - *Reduced overall HRV*: Lower SDNN and total power
    - *Diminished parasympathetic markers*: Reduced high-frequency power and RMSSD
    - *Altered sympathovagal balance*: Changed LF/HF ratio
    - *Prognostic implications*: Low HRV predicts poor health outcomes generally

A comparative study by Ryabkova et al. (2024) demonstrated that while both ME/CFS and post-COVID syndrome patients show similar patterns of reduced HRV and baroreflex sensitivity at rest, the two conditions diverge under controlled slow breathing: HRV parameters normalised in PCS patients but remained abnormal in ME/CFS patients @Ryabkova2024dysautonomia. This differential response suggests that autonomic dysfunction in ME/CFS involves a more fixed or structural impairment than the potentially reversible dysautonomia seen in post-COVID, and may serve as a distinguishing feature between the two conditions. Notably, HRV and blood pressure variability parameters correlated with fatigue severity but not with depression or anxiety scores, supporting a physiological rather than psychological basis for the autonomic findings.

==== Within-Person HRV Fluctuations as Symptom Predictors
<sec:hrv-fluctuations>

A large intensive longitudinal study of daily HRV monitoring in complex chronic illness (Aitken et al.\ 2026; n=4244 Visible app users with Long COVID, ME/CFS, or other energy-limiting conditions) found that within-person fluctuations in morning HR and HRV (measured as RMSSD scaled to a 0–100 score) predicted same-day symptom reports @Aitken2026digitalHRV. Participants provided 60-second photoplethysmography (PPG) assessments each morning and self-reported crash, fatigue, and brain fog severity each evening, yielding an average of 125 biometric observations per participant. The study was retrospective in design, analysing data already collected through the commercial Visible app; participants self-identified their conditions without standardized diagnostic confirmation.

Within-person increases in morning HR and decreases in HRV were significantly associated with worsening evening symptoms across all three outcomes. Greater 7-day variability (coefficient of variation) in HR and HRV further predicted symptom deterioration, suggesting that short-term instability in cardiovascular dynamics—not just tonic levels—is associated with worsening daily symptom patterns. Walk-forward cross-validation showed that models combining morning biometrics with prior-day symptom reports achieved AUC values of 0.82 for crash, 0.74 for fatigue, and 0.85 for brain fog, representing statistically significant improvements over prior-day symptoms alone (AUC 0.78 for crash, 0.73 for fatigue, 0.83 for brain fog) @Aitken2026digitalHRV.

Between-person patterns were also informative: individuals with more stable morning HR experienced fewer symptoms on average, while lower average morning HRV was associated with increased crash likelihood @Aitken2026digitalHRV. While these observations parallel the autonomic dysfunction findings from research-grade studies documented above, the methodological differences (consumer PPG vs.\ ECG, self-identified vs.\ clinician-confirmed diagnoses) preclude treating them as mutual validation. The data suggest that day-to-day HRV dynamics accessible via consumer devices may carry within-person predictive value for symptom fluctuations, but this remains to be confirmed in clinician-confirmed ME/CFS cohorts using standardized protocols.

#limitation(title: [Digital HRV Monitoring Limitations])[
The Aitken et al.\ study used retrospective data from a commercial app without standardized ME/CFS diagnostic confirmation; participants self-identified their conditions, and the proportion with ME/CFS specifically (vs.\ Long COVID or other conditions) is not reported. PPG-derived HRV from smartphone cameras and armbands may be less accurate than research-grade ECG, particularly for frequency-domain metrics. The 60-second morning PPG protocol did not standardize posture (supine vs.\ seated), time since waking, or medication status—pre-analytical variables that can shift RMSSD by 20–40%. The modest AUC improvements from biometrics over prior-day symptoms alone (0.01–0.04 in some comparisons) raise questions about clinical utility beyond existing self-monitoring. The study population was self-selected ambulatory app users; severe and very severe patients who cannot sustain daily monitoring were effectively excluded. Future prospective studies with confirmed ME/CFS diagnosis and continuous (rather than 60-second) monitoring are needed to establish clinical applicability @Aitken2026digitalHRV.
]

=== Heart Rate Recovery
<sec:hr-recovery>

Heart rate recovery (HRR) after exercise reflects parasympathetic reactivation:

    - *Definition*: HR decrease from peak to 1 or 2 minutes post-exercise
    - *ME/CFS findings*: Delayed HRR indicating impaired vagal reactivation
    - *Clinical significance*: Abnormal HRR predicts mortality in other populations
    - *Mechanism*: Consistent with parasympathetic dysfunction

=== Autonomic Aging Phenotype: HRV Reduction as Accelerated Biological Aging Signature
<sec:ans-aging-phenotype>

The autonomic abnormalities documented in the preceding sections---reduced HRV, chronotropic incompetence, blunted baroreflex sensitivity, delayed heart rate recovery---are individually established as ME/CFS findings. A 2025 theoretical perspective reframes them collectively as manifestations of accelerated autonomic aging @Errico2025ANSaging.

Errico et al.\ propose that chronic sympathetic-parasympathetic imbalance drives all major hallmarks of biological aging: mitochondrial dysfunction, inflammaging, cellular senescence, epigenetic degradation, and gut dysbiosis @Errico2025ANSaging. The model posits a bidirectional cascade: sympathetic dominance activates NADPH oxidase and ROS production, damaging mitochondrial DNA; the released mtDNA fragments activate cGAS-STING and TLR9 innate immune pathways (Chapter @ch:immune-dysfunction, Section @sec:immunosenescence-aging); PKA/cAMP signalling from sustained sympathetic tone suppresses AMPK, blocking autophagy and mitochondrial quality control (Chapter @ch:energy-metabolism, Section @sec:step10-dynamics-biogenesis); and $beta$-adrenergic receptor desensitisation shifts the inflammatory equilibrium toward NF-$kappa$B-dependent inflammaging @Giunta2023ANSinflamaging.

Conversely, vagal tone restoration via acetylcholine release activates $alpha$7-nAChR on immune cells, inhibiting NF-$kappa$B and stimulating JAK2/STAT3 signalling to produce pro-resolving mediators (resolvins, protectins, lipoxins). PGC-1$alpha$ activation downstream of vagal signalling promotes mitochondrial biogenesis and mitophagy @Errico2025ANSaging. This cholinergic anti-inflammatory pathway (CAP) diminishes with age and may be prematurely impaired in ME/CFS @Giunta2023ANSinflamaging. Sleep disturbance further dysregulates SPM biosynthesis, compounding the resolution deficit — producing a state of failed resolution rather than excessive inflammation @Engert2026SPMSleepLongCOVID @Rauf2026PASCResolutionFailure.

The ME/CFS relevance is direct. The Ryabkova et al.\ finding that ME/CFS HRV remains abnormal under slow breathing (unlike post-COVID syndrome, where it normalises) suggests structural rather than reversible autonomic impairment @Ryabkova2024dysautonomia --- consistent with a fixed aging phenotype rather than acute dysregulation. Rajeevan et al.\ (2018) demonstrated that CFS patients show telomere shortening equivalent to 10--20 years of additional biological aging ($n = 639$; $p = 0.0017$), with the largest effect in females under 45 @Rajeevan2018telomere. This telomere finding provides direct empirical support for accelerated biological aging in ME/CFS independent of the ANS framework.

#hypothesis(title: [ANS Imbalance as a Unifying Driver of Accelerated Aging in ME/CFS])[
*Certainty: 0.45.* Chronic sympathetic dominance in ME/CFS simultaneously drives mitochondrial damage (via ROS $arrow.r$ mtDNA release $arrow.r$ cGAS-STING), immune aging (via $beta$-AR desensitisation $arrow.r$ NF-$kappa$B inflammaging), and metabolic decline (via PKA $arrow.r$ AMPK suppression $arrow.r$ autophagy failure), while reduced vagal tone removes the anti-inflammatory brake (CAP) and blocks PGC-1$alpha$-mediated mitochondrial recovery @Errico2025ANSaging @Giunta2023ANSinflamaging. The framework integrates documented ME/CFS findings---reduced HRV, telomere shortening, mitochondrial dysfunction, chronic low-grade inflammation, gut dysbiosis---under a single upstream driver.

The framework is theoretical (no empirical validation in ME/CFS or aging cohorts). Its strength lies in explanatory coherence rather than direct evidence.

*Testable predictions:* (a) HRV parameters should correlate with biological aging markers (telomere length, epigenetic clock age, circulating mtDNA) within ME/CFS cohorts, independent of chronological age. (b) Vagus nerve stimulation (taVNS) should improve not only autonomic metrics but also inflammaging markers (IL-6, CRP) and mitochondrial function markers (ccf-mtDNA). (c) $beta$-AR desensitisation (measured by isoprenaline dose-response) should correlate with NF-$kappa$B activation in PBMCs.

*Limitation:* The core paper @Errico2025ANSaging is a theoretical perspective with no original data. No published VNS RCT in ME/CFS has reported results as of 2026-04-20. The direction of causality is unclear: ANS dysfunction may be downstream of mitochondrial or immune pathology rather than upstream. Not yet replicated.
] <hyp:ans-aging-unifying>

#speculation(title: [The Autoantibody-Aging Amplification Loop])[
*Certainty: 0.40.* GPCR autoantibodies against $beta_2$-adrenergic and muscarinic receptors (documented in ME/CFS by Loebel et al.\ @Loebel2016, Sotzny et al.\ @Sotzny2021) may lock the ANS into a pro-aging configuration. Anti-$beta_2$-AR autoantibodies functionally mimic chronic sympathetic activation or receptor desensitisation, while anti-muscarinic autoantibodies impair the cholinergic anti-inflammatory pathway (CAP) @Giunta2023ANSinflamaging. The resulting sustained pro-aging state drives NF-$kappa$B inflammaging, mitochondrial ROS, SASP accumulation, and telomere erosion. Senescent cells in turn produce SASP cytokines that further dysregulate the immune system, potentially driving more autoantibody production via bystander activation---creating a self-reinforcing loop: autoantibodies $arrow.r$ ANS imbalance $arrow.r$ aging hallmarks $arrow.r$ immune dysregulation $arrow.r$ more autoantibodies.

*Testable predictions:* (a) GPCR autoantibody titres should correlate with biological aging markers (epigenetic clock acceleration, telomere shortening) after controlling for chronological age and disease duration. (b) Immunoadsorption or daratumumab should reduce not only autoantibody titres but also SASP markers (IL-6, MCP-1) and epigenetic clock age within 6 months. (c) Autoantibody-positive ME/CFS patients should show greater ANS-aging acceleration than autoantibody-negative patients.

*Limitation:* The connection from GPCR autoantibodies to aging hallmarks is mechanistically plausible but untested. No study has measured autoantibody titres alongside aging biomarkers in the same ME/CFS cohort. Not yet replicated.
] <spec:autoantibody-aging-loop>

#hypothesis(title: [The Two-Hit Model: Infection Primes, ANS-Aging Sustains])[
*Certainty: 0.45.* Post-infectious ME/CFS may require two hits: (1) the infection itself, which causes transient immune activation, autonomic stress, and mitochondrial damage; and (2) activation of the ANS-aging feedback loop when infection-induced damage pushes autonomic balance past a tipping point. Below this tipping point, the system recovers; above it, sympathetic dominance becomes self-sustaining via inflammaging $arrow.r$ brainstem glial senescence $arrow.r$ more sympathetic dominance @Errico2025ANSaging @Balasubramanian2021glialSenescence.

This model explains: (a) why diverse infections trigger ME/CFS (EBV, COVID, Giardia---all capable of Hit 1); (b) why only ~5% of infected individuals develop ME/CFS (genetic vulnerability to tipping, Chapter @ch:genetics-epigenetics); (c) why the disease persists long after pathogen clearance (the ANS-aging loop is self-sustaining); (d) why early rest during acute infection may be protective (keeping the system below the tipping point).

*Testable predictions:* (a) Patients who develop ME/CFS post-infection will show ANS-aging biomarker acceleration detectable within 3 months of onset, before the full clinical picture develops. (b) A "rest intervention" during acute infection that maintains HRV above a threshold will reduce ME/CFS incidence versus standard care. (c) Pre-infection HRV (from wearable data) will predict ME/CFS risk: lower pre-infection vagal tone = higher risk of crossing the tipping point.

*Limitation:* This is a theoretical framework combining the ANS-aging perspective @Errico2025ANSaging with tipping-point dynamics. No prospective study has tracked autonomic-aging biomarkers from acute infection through to ME/CFS development. The tipping-point threshold has not been empirically estimated. Not yet replicated.
] <hyp:two-hit-ans-aging>

== Coagulation and Rheological Abnormalities
<sec:coagulation>

=== Hypercoagulability
<sec:hypercoagulability>

Converging evidence from haematology, proteomics, and functional assays documents a prothrombotic, procoagulant state in ME/CFS.

Nunes et al.\ (2022) @NunesPlatelets2022mecfs provided the first quantitative characterisation of haematological pathology in ME/CFS specifically. Key findings in 25 ME/CFS patients vs.\ controls:

    - *Platelet hyperactivation*: Mean spreading score 2.72 ± 1.24 vs.\ 1.00 for healthy controls — confirmed by PAC-1 and CD62P markers, indicating pre-activated platelets circulating in the blood
    - *Fibrinaloid microclots*: Amyloid-resistant fibrin microclots present at more than 10-fold greater area than in healthy controls, establishing that microclot pathology is not unique to Long COVID
    - *Thromboelastography*: Hypercoagulable state detected in approximately 50% of ME/CFS participants across multiple parameters

Plasma proteomics by Nunes et al.\ (2024) @NunesProteomics2024mecfs (15 ME/CFS patients vs.\ 10 controls, data-independent LC-MS/MS) identified 24 significantly elevated proteins, with a coherent procoagulant pattern:

    - *Thrombospondin-1 (THBS1) elevated*: Produced by activated endothelial cells and platelets; promotes endothelial dysfunction via pro-oxidative and proinflammatory mechanisms
    - *Platelet factor 4 (PF4) elevated*: A platelet-released chemokine that potentiates coagulation
    - *P-selectin elevated*: Reflects platelet and endothelial activation
    - *Protein S decreased*: An endogenous anticoagulant; its reduction predisposes to pathological clotting

These findings were corroborated by Heng et al.\ (2025) @heng2025mecfs, whose multi-omics study in 61 ME/CFS patients independently identified VWF (von Willebrand factor), THBS1, and FN1 (fibronectin 1) among the top discriminating biomarkers — convergence across independent cohorts and analytical platforms strengthens confidence in this prothrombotic signature.

=== Fibrin Deposition and Microclot Biology
<sec:fibrin>

Kruger et al.\ (2022) @KrugerMicroclot2022longcovid characterised the proteome of Long COVID microclots, finding 27 distinct immunoglobulin variants trapped within fibrin microclots absent from controls, alongside elevated VWF (2.6-fold), PF4 (3.5-fold), and reduced plasma kallikrein (4.4-fold). Entrapped pro-inflammatory molecules impair fibrinolysis from within the clot, and microclots exceeding capillary diameter ($<$10~$mu$m) physically obstruct capillary flow, limiting red blood cell transit and oxygen exchange.

Nunes et al.\ (2023) @NunesBloodReviews2023mecfs reviewed cardiovascular and haematological pathology in ME/CFS, documenting a 26% mean reduction in cerebral blood flow and orthostatic intolerance prevalence exceeding 95% in some cohorts, with microclot and platelet pathology at lower levels than Long COVID but significantly above healthy controls. Viral reservoirs (EBV, HHV-6, HHV-7) are proposed as maintenance factors that continuously reactivate coagulation through direct endothelial infection and proinflammatory cytokine release.

    - *Fibrinolysis resistance*: Amyloid conformation renders microclots resistant to normal fibrinolytic clearance
    - *Oxygen delivery deficit*: Modelling of comparable RBC rheological disruption in COVID-19 indicates maintaining equivalent oxygen delivery would require a $tilde$135% increase in cardiac output @RogersRBC2024covidoxygen — a physiologically impossible compensation
    - *Treatment implications*: Anticoagulation and fibrinolytic agents have been investigated in preliminary Long COVID case series; no controlled trial data exist specifically in ME/CFS

=== Red Blood Cell Deformability and Oxygen Delivery Failure
<sec:rbc-deformability>

Red blood cells must deform to traverse narrow capillaries (5--8~$mu$m, smaller than the unstressed RBC diameter of $tilde$8~$mu$m). Impaired deformability directly reduces capillary transit velocity and oxygen delivery independently of haemoglobin concentration or cardiac output.

Saha et al.\ (2019) @Saha2019 demonstrated ME/CFS RBCs show approximately 12% longer capillary entry time, 17% reduced transit velocity, and 14% reduced membrane deformability, alongside 30% elevated ROS production — creating a self-amplifying cycle of oxidative membrane damage and further deformability reduction.

Guo et al.\ (2025) @GuoRBC2025microfluidic provided direct capillary-level evidence using microfluidic channels (5.05~$times$~5.94~$mu$m, matching real capillary dimensions) under controlled hypoxia (PO#sub[2] = 0--34~mmHg): ME/CFS patient RBCs showed significantly compromised capillary velocity compared to healthy controls under low oxygen tension. Critically, the hypoxia-sensing mechanism — which normally triggers local vasodilation and increased RBC flow to hypoxic tissue — was impaired in ME/CFS RBCs. This is a cell-autonomous defect in the oxygen delivery feedback loop: ME/CFS RBCs not only transit capillaries more slowly but also fail to signal for increased local perfusion when tissue oxygen falls.

Grau et al.\ (2024) @GrauRBC2024longcovid documented persistent RBC morphological abnormalities in Long COVID at mean 42 weeks post-infection — beyond the 120-day RBC lifespan — indicating ongoing production of morphologically abnormal RBCs rather than survival of initially damaged ones. Echinocytes and acanthocytes constituted 16.0 ± 9.9% vs.\ 2.3 ± 1.4% in controls (p $<$ 0.0001). RBC morphological abnormality correlated with fatigue severity (r = $-$0.51, p = 0.006), establishing a quantitative haematological-symptom link.

The combined picture is of multi-level oxygen delivery failure: microclots obstruct capillary lumina mechanically, abnormal RBC morphology reduces membrane flexibility for transit, impaired hypoxia-sensing prevents compensatory vasodilation, and accumulated ROS further damage already-impaired RBC membranes. Scheibenbogen and Wirth (2024) @ScheibenbogenWirth2024sarcopenia proposed that this chronic capillary hypoperfusion — initiating in the post-COVID or post-infectious phase — is the upstream event that eventually drives mitochondrial calcium toxicity in skeletal muscle, with ME/CFS representing the chronic phase in which mitochondrial damage has become structurally fixed (see @ch:energy-metabolism, @sec:sodium-calcium-cascade).

== Cardiovascular Dysfunction in Post-COVID ME/CFS
<sec:post-covid-cardiovascular>

The COVID-19 pandemic has provided an unfortunate natural experiment in post-infectious illness, with Long COVID (post-acute sequelae of SARS-CoV-2, PASC) showing remarkable overlap with ME/CFS cardiovascular manifestations. This convergence strengthens the evidence for shared pathophysiological mechanisms and may accelerate therapeutic development.

=== Parallel Cardiovascular Findings

Long COVID patients demonstrate cardiovascular abnormalities closely mirroring those documented in ME/CFS, including POTS (affecting 30–50% of Long COVID patients with persistent symptoms), reduced exercise capacity on CPET with similar patterns of reduced VO#sub[2]peak and early anaerobic threshold, autonomic dysfunction with altered HRV and baroreflex sensitivity, and endothelial dysfunction with impaired flow-mediated dilation @Devigili2023SFN.

Small fiber neuropathy has been documented in both conditions using identical methodologies. Azcue et al.\ found that ME/CFS and post-COVID patients showed comparable patterns of heat response latencies indicating C-fiber denervation @Azcue2023sfn. The non-length-dependent pattern observed in both conditions suggests autoimmune or inflammatory etiology rather than metabolic neuropathy.

=== GPCR Autoantibodies in Post-COVID

The GPCR autoantibody hypothesis has received substantial support from post-COVID research. Elevated beta-adrenergic and muscarinic receptor autoantibodies have been documented in Long COVID patients with cardiovascular symptoms, and immunoadsorption targeting these autoantibodies has shown efficacy in post-COVID ME/CFS @Stein2024immunoadsorption. The Scheibenbogen group demonstrated that repeated immunoadsorption in patients with post-COVID ME/CFS and elevated beta-2 adrenergic receptor autoantibodies produced significant improvements in fatigue and autonomic symptoms.

Hackel et al.\ demonstrated that GPCR autoantibodies reprogram monocyte function in post-COVID ME/CFS, altering cytokine production patterns and potentially explaining systemic inflammatory features @Hackel2025monocyte. This finding links autoantibodies to immune dysfunction beyond direct receptor effects, suggesting multiple downstream consequences of the autoimmune process.

=== Implications for Understanding ME/CFS

The convergence of Long COVID and ME/CFS cardiovascular findings supports the hypothesis that both conditions share common post-infectious pathophysiology. The larger Long COVID research effort, driven by the pandemic's scale, is generating mechanistic insights likely applicable to ME/CFS. Therapeutic interventions developed for Long COVID—including immunoadsorption, GPCR-targeting aptamers, and mast cell stabilizers—may prove equally effective in ME/CFS patients with similar pathophysiology.

== Sex Differences in Cardiovascular Manifestations
<sec:cv-sex-differences>

ME/CFS demonstrates a 3:1 to 4:1 female predominance @jason2018prevalence, and emerging evidence suggests that cardiovascular manifestations may differ between sexes beyond simple prevalence differences.

POTS is more common in females, with cohort studies consistently showing 4:1 to 5:1 female-to-male ratios @Newton2008POTSprevalence. This sex difference exceeds the overall ME/CFS female predominance, suggesting additional sex-specific factors in POTS pathophysiology. Potential contributors include differences in blood volume regulation (females have lower baseline blood volume per kilogram), hormonal effects on vascular tone and autonomic function, and sex differences in autoimmune propensity affecting GPCR autoantibody production.

The NIH deep phenotyping study revealed distinct immune abnormalities in male versus female ME/CFS patients @walitt2024deep, and these differences likely extend to cardiovascular manifestations. Sex hormone effects on endothelial function, baroreflex sensitivity, and autonomic balance may modulate how the underlying disease process manifests cardiovascularly.

Blood volume deficits may be proportionally greater in females. van Campen et al.\ found that red blood cell mass was reduced in 93.8% of female ME/CFS patients compared to 50% of males, while plasma volume was subnormal in the majority of both sexes @vanCampen2018. This sex difference in red cell mass reduction may reflect hormonal influences on erythropoiesis or differential inflammatory effects.

Clinical implications include the need for sex-stratified analysis in cardiovascular research and potentially different therapeutic thresholds. The higher prevalence of POTS in females may warrant lower diagnostic thresholds for autonomic testing referral in female patients with orthostatic symptoms.

== Mast Cell Activation and Cardiovascular Dysfunction
<sec:mcas-cardiovascular>

Mast cell activation syndrome (MCAS) frequently co-occurs with POTS and ME/CFS, forming part of the “Septad” of overlapping conditions. The cardiovascular effects of mast cell degranulation provide a mechanistic link between immune activation and hemodynamic instability.

=== Cardiovascular Mediators of Mast Cell Activation

Mast cells release multiple vasoactive mediators upon degranulation:

    - *Histamine*: Causes vasodilation through H1 and H2 receptor activation on vascular smooth muscle, increasing vascular permeability and contributing to hypotension
    - *Prostaglandin D#sub[2]*: Potent vasodilator that may contribute to flushing and hypotensive episodes
    - *Tryptase*: Serine protease that can activate protease-activated receptors on endothelial cells, potentially contributing to endothelial dysfunction
    - *Platelet-activating factor (PAF)*: Causes vasodilation, increases vascular permeability, and promotes platelet aggregation
    - *Heparin*: Released during degranulation, may contribute to bleeding tendency and affect coagulation

During mast cell degranulation episodes, the sudden release of vasodilatory mediators can produce acute hypotensive episodes, flushing, and tachycardia. When mast cell activation is chronic and low-grade, the cumulative effect may include sustained endothelial dysfunction and impaired vascular reactivity.

=== The MCAS-POTS Connection

The relationship between MCAS and POTS is bidirectional. Mast cell mediators, particularly histamine, cause peripheral vasodilation that exacerbates venous pooling during orthostatic stress. Conversely, orthostatic stress may trigger mast cell degranulation in susceptible individuals, creating a feed-forward loop. This bidirectional interaction exemplifies the reinforcing pathophysiological cycles discussed in Section @sec:unifying-mechanisms of Chapter @ch:integrative-models.

Novak et al.\ documented that mast cell disorder patients universally showed dysautonomia when combining sympathetic, parasympathetic, and sudomotor testing @Novak2022. The same patients showed 20–24% reduction in orthostatic cerebral blood flow, directly linking mast cell activation to cerebral hypoperfusion during standing.

The high prevalence of small fiber neuropathy (80%) in mast cell disorder patients @Novak2022 suggests that mast cell mediators may directly damage autonomic nerve fibers or that both findings reflect a common underlying autoimmune process. Tryptase and other mast cell proteases can cleave components of the extracellular matrix and potentially damage nerve terminals.

=== Therapeutic Implications

The mast cell-cardiovascular connection has therapeutic implications. H1 antihistamines (cetirizine, loratadine, rupatadine) and H2 blockers (famotidine) may improve orthostatic symptoms in patients with concurrent MCAS. Mast cell stabilizers (cromolyn sodium, ketotifen) may provide broader suppression of mediator release. In patients with ME/CFS and prominent flushing, episodic tachycardia, or symptom fluctuation temporally associated with meals or environmental triggers, evaluation for MCAS should be considered, and empiric antihistamine therapy may be warranted.

== Summary: Integrated Cardiovascular Model
<sec:cv-summary>

Cardiovascular dysfunction in ME/CFS involves multiple interacting abnormalities (@walitt2024deep):

    - *Reduced blood volume*: Hypovolemia compromises cardiac preload and limits cardiac output reserve

    - *Autonomic dysfunction*: Parasympathetic withdrawal reduces HRV and impairs baroreflex function; chronotropic incompetence limits exercise heart rate response

    - *Endothelial dysfunction*: Impaired vasodilation reduces tissue perfusion

    - *Cardiac limitation*: Preload failure and chronotropic incompetence reduce maximal cardiac output

    - *Microcirculatory impairment*: Abnormal capillary perfusion and oxygen extraction limit peripheral oxygen delivery

    - *Exercise intolerance*: The cumulative effect is reduced VO#sub[2]peak and early anaerobic threshold, objectively confirmed by the NIH study

    - *Post-exertional deterioration*: Unique to ME/CFS, the failure to recover exercise capacity on day 2 CPET reflects pathological response to exertion

    - *Orthostatic intolerance*: Blood pressure dysregulation (POTS, NMH, OH) produces symptoms with upright posture

This cardiovascular dysfunction explains much of the disability in ME/CFS: patients cannot sustain physical activity because their cardiovascular system cannot deliver adequate oxygen to meet metabolic demands. The objective documentation of reduced VO#sub[2]peak and chronotropic incompetence in the NIH deep phenotyping study provides biological validation of patients' reported exercise intolerance. These cardiovascular abnormalities integrate with metabolic dysfunction (Chapter @ch:energy-metabolism), autonomic dysfunction (Chapter @ch:neurological), and immune dysregulation (Chapter @ch:immune-dysfunction) to produce the multi-system pathophysiology synthesized in Chapter @ch:integrative-models.

Treatment approaches targeting cardiovascular dysfunction include volume expansion (fludrocortisone, increased fluid and salt intake), direct-acting autonomic agents (midodrine as alpha-agonist for vasoconstriction), and careful activity management to avoid exceeding the reduced aerobic threshold. The efficacy of midodrine (acting directly on peripheral alpha-receptors) is consistent with any model in which peripheral vasoconstriction aids orthostatic tolerance — including simple hypovolemia, peripheral autonomic failure, or central coordination failure. It is not specific evidence for the selective energy dysfunction hypothesis, as multiple mechanistic frameworks predict the same clinical response.

The recognition that cardiovascular abnormalities are objective and measurable helps counter misconceptions that ME/CFS exercise intolerance reflects psychological factors or simple deconditioning. Charlton et al.\ (2026) formalized this argument in the _British Journal of Sports Medicine_, concluding that post-exertional malaise cannot be explained by cardiac deconditioning and calling for a fundamental rethinking of exercise pathophysiology in post-viral illness @Charlton2026pem.

#hypothesis(title: [Motor-Autonomic Coordination Overload Hypothesis])[

Physical activity requires simultaneous CNS coordination of motor output (muscle recruitment, movement planning, proprioceptive feedback) and autonomic regulation (heart rate adjustment, blood pressure maintenance, thermoregulation, respiratory drive). In healthy individuals, these coordination tasks operate efficiently within the brain's energy budget. We hypothesize that in ME/CFS, where CNS energy is the primary bottleneck (Section @sec:selective-dysfunction), motor and autonomic coordination compete for insufficient resources, causing both systems to fail under demand.

*The Dual-Coordination Problem.*
During exercise, the CNS must:

    - *Motor coordination*: Generate movement commands, integrate proprioceptive feedback, maintain balance, adjust force output—all requiring continuous cortical, cerebellar, and spinal processing.
    - *Autonomic coordination*: Increase heart rate, redistribute blood flow, maintain blood pressure during postural changes, regulate respiration, initiate sweating—all requiring brainstem and hypothalamic processing.
    - *Integration*: Coordinate motor and autonomic outputs so that cardiovascular supply matches muscular demand in real time.

In ME/CFS, if total CNS energy available for coordination is reduced, attempting both tasks simultaneously will exceed the available budget sooner than either task alone. This explains the central governor theory observation (@Noakes2004governor, @StClairGibson2004fatigue): the brain limits motor output to protect itself from energy depletion.

*ME/CFS-Specific Predictions.*
This hypothesis explains several puzzling CPET findings:

_Reduced VO#sub[2]peak beyond deconditioning._ The NIH deep phenotyping study documented VO#sub[2]peak reductions exceeding what deconditioning alone would predict @walitt2024deep. If the brain limits motor output to preserve autonomic coordination capacity, peak exercise performance reflects the CNS energy budget, not peripheral muscle capacity.

_Chronotropic incompetence._ The failure to achieve age-predicted maximal heart rate @walitt2024deep may reflect CNS prioritization: under energy constraint, the brain may reduce autonomic drive to the heart in order to preserve motor coordination, or vice versa. The specific pattern of failure depends on which system the CNS prioritizes in a given individual.

_Day-2 CPET deterioration._ The pathognomonic worsening on repeat CPET the following day reflects CNS energy depletion that has not recovered. The first test depletes CNS coordination reserves; insufficient recovery time means the second test starts from a lower baseline, producing objectively worse performance.

_PEM as coordination exhaustion._ Post-exertional malaise may represent the downstream consequence of depleting CNS coordination reserves. Once exhausted, the brain cannot adequately coordinate autonomic function (causing orthostatic symptoms, heart rate irregularity) or motor output (causing weakness, poor coordination), producing the multi-system symptom exacerbation characteristic of PEM.

*Testable Predictions.*

    - *Cognitive-physical interference*: ME/CFS patients should show greater cognitive impairment during physical activity (dual-task paradigm) than healthy controls, reflecting competition for shared CNS resources.
    - *Autonomic-motor trade-off*: During exercise, ME/CFS patients should show an inverse relationship between motor performance and autonomic function quality (e.g., better muscle output correlates with worse HRV, and vice versa).
    - *Separate-task preservation*: Motor tasks without significant autonomic demand (e.g., seated fine motor tasks) and autonomic challenges without motor demand (e.g., passive tilt testing) should each show less impairment than combined motor-autonomic challenges (e.g., exercise).
    - *Pharmacological bypass*: Agents that directly support autonomic function (midodrine, pyridostigmine) should improve exercise tolerance by offloading CNS autonomic coordination, freeing energy for motor output.

*Treatment Implications.*

    - *Pre-treatment with autonomic agents*: Taking autonomic-supporting medications before planned physical activity could extend exercise tolerance by reducing CNS autonomic coordination demands.
    - *Activity design*: Activities that minimize simultaneous motor-autonomic demand (recumbent exercise, swimming) should be better tolerated than upright weight-bearing exercise.
    - *Pacing rationale*: The coordination overload model provides a mechanistic rationale for pacing: staying below the threshold where motor and autonomic demands simultaneously exceed CNS capacity prevents the cascade of coordination failure that produces PEM.

*Limitations.*
The hypothesis assumes CNS energy is the primary constraint, which remains debated. Peripheral factors (mitochondrial dysfunction, reduced blood volume, deconditioning) independently contribute to exercise intolerance. The dual-task prediction requires careful experimental design to distinguish CNS resource competition from general fatigue. Central governor theory itself remains controversial in exercise physiology.

*Certainty:* 0.55 (CPET findings well-documented; CNS coordination mechanism plausible; dual-task predictions testable but not yet tested in ME/CFS)
] <hyp:motor-autonomic-coordination>

#speculation(title: [Small Fiber Neuropathy Increases CNS Metabolic Load])[
Small fiber neuropathy affects approximately 30% of ME/CFS patients @Azcue2023sfn @Azcue2025sfn, creating a bidirectional communication burden between the peripheral nervous system and central nervous system that may amplify energy constraints.

*Afferent Signal Degradation.*
SFN reduces the quality of autonomic afferent signals reaching the CNS—temperature sensing, baroreceptor feedback, visceral sensation. Degraded sensory input increases CNS processing demands to extract meaningful information. Neural systems must increase firing rates quadratically to achieve linear improvements in signal-to-noise ratio @Laughlin2003energy, creating disproportionate metabolic costs when processing noisy peripheral signals. This is analogous to listening to conversation in a noisy environment: the brain expends more energy processing degraded input to achieve adequate perception.

*Efferent Command Amplification.*
When efferent small fibers are damaged, the CNS must generate stronger, more frequent, or redundant autonomic commands to achieve target physiological responses. Fewer functional nerve fibers mean each must be driven harder, or signals must be repeated, increasing the metabolic cost of autonomic control. During orthostatic stress, the CNS may detect inadequate vasoconstriction (via baroreceptor feedback) despite issuing normal commands, triggering escalating compensatory signals that further drain central energy reserves.

*Testable Predictions.*

    - Intraepidermal nerve fiber density (IENFD) should inversely correlate with brainstem and hypothalamic glucose uptake (FDG-PET) during autonomic challenges such as tilt testing ($r < -0.5$ expected).
    - ME/CFS patients with confirmed SFN should demonstrate worse cognitive fatigue and brain fog than those without SFN, controlling for pain severity and autonomic dysfunction magnitude.
    - Treatment of autoimmune SFN with IVIG should reduce CNS metabolic burden measurable by PET or MR spectroscopy, with corresponding improvements in cognitive symptoms.
    - Corneal nerve fiber tortuosity (measured non-invasively via corneal confocal microscopy) should correlate with CNS lactate accumulation and cognitive impairment.
    - Cognitive load should exacerbate autonomic dysfunction more severely in SFN-positive patients, reflecting competition for limited CNS energy resources.

*Treatment Implications.*
If this hypothesis is correct, treating SFN may reduce CNS metabolic burden and improve cognitive symptoms even without direct CNS interventions. The non-length-dependent SFN pattern documented in ME/CFS @Azcue2023sfn suggests autoimmune etiology, potentially responsive to immunomodulation. Case series (low certainty) suggest IVIG improves pain and autonomic symptoms in autoimmune SFN @Liu2020IVIG @Oaklander2016autoimmuneSFN, though randomized controlled trials in idiopathic SFN have shown mixed results. The distinct autoimmune pattern in ME/CFS-associated SFN may predict better immunotherapy response than idiopathic cases.

*Limitations.*
No studies have directly measured CNS metabolic demand in relation to SFN severity in ME/CFS. SFN and cognitive dysfunction may share common causes (e.g., autoimmunity or inflammation) rather than having a causal relationship. The relative contribution of SFN to overall CNS energy constraints is unknown and may be minor compared to other factors.

*Current Evidence.*
Azcue et al.\ documented that ME/CFS patients show prolonged heat response latencies indicating C-fiber dysfunction, with 31% meeting POTS criteria @Azcue2023sfn. A follow-up study using corneal confocal microscopy demonstrated increased small fiber tortuosity in ME/CFS compared to controls ($F=6.80$, $p < 0.01$), with tortuosity serving as the primary discriminator between patients and controls (AUC$=0.720$) @Azcue2025sfn. The non-length-dependent pattern (upper and lower extremities equally affected) distinguishes ME/CFS-associated SFN from metabolic neuropathies like diabetic neuropathy; by analogy with other immune-mediated neuropathies @Oaklander2016autoimmuneSFN, this distribution pattern is consistent with immune-mediated damage, though the specific antigens targeted in ME/CFS have not been identified. The connection between reduced parasympathetic activation and worse cognitive performance @Azcue2023sfn provides indirect support for peripheral-CNS interface dysfunction, though directionality remains uncertain.

*Certainty:* 0.40 (SFN prevalence established; CNS metabolic mechanism speculative)
] <spec:sfn-interface-failure>


#hypothesis(title: [Vascular Pathology as the Primary Initiating Event in ME/CFS])[
The temporal, structural, and interventional evidence is _consistent with_ a model in which vascular and microvascular dysfunction precedes and causes mitochondrial damage, rather than representing a downstream consequence of primary mitochondrial failure. This temporal ordering is the hypothesis, not an established finding: the current evidence is cross-sectional, and the causal direction remains unconfirmed.

*Evidence for vascular primacy:*
    + *Temporal sequence*: Early post-COVID syndrome is dominated by microvascular disturbance (microclots, inflammatory capillary changes), with mitochondrial structural damage appearing later and selectively in patients who develop ME/CFS @ScheibenbogenWirth2024sarcopenia
    + *Mechanistic chain*: Capillary hypoperfusion $arrow.r$ ischaemia/reperfusion $arrow.r$ proton accumulation $arrow.r$ NHE1 sodium influx $arrow.r$ NCX1 reversal $arrow.r$ mitochondrial Ca#super[(2+)] overload $arrow.r$ mitochondrial structural damage (Section @sec:sodium-calcium-cascade in @ch:energy-metabolism)
    + *Structural irreversibility*: Collagen IV deposition and basement membrane thickening in skeletal muscle capillaries @Wust2024capillary represent structural (not merely functional) pathology not explained as consequences of mitochondrial failure
    + *Cell-autonomous RBC sensing failure*: ME/CFS RBCs fail to sense and respond to tissue hypoxia @GuoRBC2025microfluidic — a defect independent of target tissue mitochondrial state
    + *Interventional evidence*: Correcting preload failure pharmacologically (pyridostigmine) improves peak VO#sub[2] and cardiac output @Joseph2022pyridostigmine — consistent with a model in which preload failure contributes to exercise limitation. Note: pyridostigmine acts via cholinergic autonomic mechanisms, not direct vascular effects; its benefit is consistent with multiple models (autonomic, vascular, mixed) and does not differentially confirm vascular primacy over other explanations

_Certainty: 0.45._ Evidence for vascular primacy is strengthening but remains circumstantial for the causal direction claim. The temporal model from Scheibenbogen and Wirth is the strongest argument (early PCS vascular-only, later ME/CFS mitochondrial), but requires prospective cohort confirmation. Some patients may have primary mitochondrial pathology without preceding vascular disease (e.g., those with genetic mitochondrial variants).

*Falsifiable predictions:*
    + Prospective early post-COVID cohort studies should show vascular abnormalities (microclots, endothelial dysfunction) preceding mitochondrial structural changes in muscle biopsies, with mitochondrial changes only in those who progress to ME/CFS
    + Vascular-targeted interventions (sulodexide, glycocalyx restoration) implemented early in post-COVID course should reduce ME/CFS incidence
    + Correcting microvascular obstruction (e.g., targeted fibrinolysis) should normalise mitochondrial energetics in ME/CFS patients with demonstrable capillary obstruction

*Limitations:* No prospective biopsy-series from early to chronic ME/CFS exists; the Wirth/Scheibenbogen temporal model comes from cross-sectional comparison, not longitudinal tracking; some mitochondrial defects (WASF3) may be primary.
] <hyp:vascular-primary-mecfs>

#hypothesis(title: [Failed Angiogenic Compensation as the Transition Mechanism from Post-COVID to ME/CFS])[
Flaskamp et al.\ (2022) @Flaskamp2022endothelial demonstrated that post-COVID serum (without ME/CFS) retains the capacity to induce angiogenic tube formation in endothelial cells in vitro, while ME/CFS serum selectively loses this response. This failed angiogenic compensation may represent the biological transition point: post-COVID patients who retain vascular repair capacity recover; those in whom this mechanism fails progress to ME/CFS.

_Certainty: 0.30._ The in vitro finding is from a single study with small numbers; the clinical implication (failed angiogenesis as the transition event) is extrapolated, not directly tested.

*Falsifiable predictions:*
    + Longitudinal sampling of post-COVID patients before and after ME/CFS development should show loss of angiogenic serum activity coinciding with clinical deterioration
    + Angiogenic capacity of patient serum should correlate inversely with capillary basement membrane thickness on biopsy
    + Pro-angiogenic interventions (e.g., VEGF-based approaches, hypoxia-inducible factor stabilisers) should attenuate ME/CFS development in at-risk post-COVID patients if given early

*CAUTION regarding VEGF-based approaches:* The Ribeiro et al.\ (2026) @Ribeiro2026HIF2alpha findings complicate the straightforward pro-angiogenic rationale. In post-viral ME/CFS specifically, VEGF elevation from sustained HIF-2$alpha$ activation may itself be pathological — driving capillary permeability rather than angiogenesis. Exogenous VEGF or HIF stabilisation (which also increases HIF-2$alpha$) could *worsen* endothelial barrier dysfunction in patients whose HIF-2$alpha$ is already pathologically active (Section @sec:hif2a-endothelial). This means pro-angiogenic strategies must be stratified: patients with elevated VEGF/vWF (HIF-2$alpha$-active phenotype) would be harmed, while those with blunted VEGF (HIF-inert phenotype) might benefit. VEGF or sFlt-1 measurement is recommended before any pro-angiogenic intervention.

*Limitations:* Single in vitro study; serum angiogenic activity is a composite of many factors; mechanism of selective angiogenic failure in ME/CFS is not established. The HIF-2$alpha$ stratification caveat is theoretical — no interventional data exist.
] <hyp:failed-angiogenesis-mecfs>

=== Neuroimmune POTS: Autoimmune Evidence and Genetic Predisposition

{{/* ch10: POTS autoimmunity integration */}}
#achievement(title: [POTS as an Autoimmune/Neuroimmune Condition — Convergent Evidence])[
*Certainty: 0.60.* The evidence that POTS has an autoimmune basis has strengthened substantially and now reaches moderate-high certainty. Multiple independent lines converge: (1) GPCR autoantibodies (α1, β1/β2, M2/M4) found in 89% of POTS patients (ELISA, Gunning 2019 @Gunning2019GPCRPOTS) with functional validation in cell-based assays showing IgG-dependent activation of α1AR, β1AR, and β2AR @Fedorowski2017Antiadrenergic; (2) passive transfer: POTS patient IgG induces tachycardia in rabbits @Li2019AdrenergicRabbit, satisfying the key Koch-like criterion for causal autoantibody involvement; (3) serum GPCR autoantibody activity correlates with orthostatic symptom severity in cross-sectional analysis (Lund cohort, Kharraziha 2020 functional bioassay @Kharraziha2020GPCRseverity); (4) HLA associations: DRB1*15:01 and DQB1*06:02 significantly associated with POTS in a Korean cohort (n=93 POTS, 196 controls) @Shin2019HLAPOTS, suggesting an autoimmune genetic predisposition; (5) elevated autoimmune comorbidity prevalence (37% ANA ≥1:80, Hashimoto thyroiditis, SLE, RA, Sjögren's) @Blitshteyn2015AutoimmuneMarkers; (6) immunomodulatory treatment benefit (IVIG, immunoadsorption) in case series.

*Mechanistic model.* POTS autoimmunity involves multiple autoimmune targets: (a) GPCR autoantibodies directly alter cardiovascular receptor function (α1 → vasoconstriction, β1/β2 → heart rate contractility, M2 → vagal inhibition); (b) autoantibodies may target autonomic ganglia (ganglionic AChR antibodies) impairing signal transmission between pre- and post-ganglionic neurons; (c) brainstem neuroinflammation (Section @spec:brainstem-neuroinflammation-mecfs) at NTS/RVLM may be triggered or maintained by circulating autoantibodies accessing medulla via area postrema.

*Cross-disease significance.* The same GPCR autoantibody profile found in POTS is also found in subsets of ME/CFS and Long COVID patients, supporting the Blitshteyn 2026 thesis that these three conditions converge on shared neuroimmune mechanisms. The HLA association (DRB1*15:01) may represent a common genetic susceptibility across the three conditions, though this has not been tested in ME/CFS or Long COVID.

*Limitations.* GPCR autoantibody detection is not standardized across labs. The Germain 2025 null @Germain2025autoantibody using REAP/Luminex (in ME/CFS, not POTS) raises the possibility that assay sensitivity issues confound prevalence estimates. The HLA association (Shin 2019) is single-cohort (Korean), not replicated, and may not generalize. No POTS-specific animal model demonstrating disease transfer by GPCR autoantibodies alone has been developed (the rabbit model @Li2019AdrenergicRabbit shows tachycardia but not the full POTS phenotype).

*Replication status.* GPCR autoantibodies in POTS replicated by three independent groups (Oklahoma @Li2014AutoimmunePOTS, Lund @Fedorowski2017Antiadrenergic, CellTrend/Germany @Gunning2019GPCRPOTS). HLA association (Shin 2019) not yet replicated.
] <ach:pots-autoimmune>

{{/* H5: Ganglionic AChR AAb pan-autonomic ME/CFS (Tier 2, cert 0.25) */}}
#speculation(title: [Ganglionic AChR Autoantibodies in Pan-Autonomic ME/CFS Subtype — Autoimmune Autonomic Ganglionopathy Overlap])[
*Certainty: 0.25.* A subset of ME/CFS patients with pan-autonomic involvement (all domains of COMPASS-31 abnormal — orthostatic, GI, thermoregulatory, pupillary, secretomotor) may have ganglionic AChR (α3 subunit) autoantibodies that impair signal transmission from pre- to post-ganglionic autonomic neurons. This would represent an autoimmune autonomic ganglionopathy (AAG) look-alike that responds to standard AAG treatment (IVIG 2 g/kg monthly or immunoadsorption). The ganglionic AChR autoantibody finding in POTS @Blitshteyn2026Neuroimmune @ElRhermoul2023AutoimmunityLCPOTS provides the bridge.

*Mechanism.* Autoantibodies bind the α3 subunit of the nicotinic acetylcholine receptor on autonomic ganglia. This blocks fast synaptic transmission from preganglionic to postganglionic autonomic neurons, producing: (a) impaired sympathetic vasoconstriction → orthostatic pooling → POTS; (b) impaired parasympathetic GI motility → gastroparesis; (c) impaired sudomotor function → thermoregulatory dysfunction; (d) impaired pupillary function → blurred vision. The global pattern — pan-autonomic failure — is the hallmark that distinguishes this subtype from isolated GPCR autoantibody-mediated POTS.

*Evidence.* Blitshteyn 2026 cites autonomic ganglia as autoimmune targets. AAG is a well-characterized condition with known autoantibody target (ganglionic AChR) and established treatment algorithm (IVIG, immunoadsorption). The autoantibody assays (ganglionic AChR ELISA) are commercially available.

*Limitations.* Ganglionic AChR autoantibodies have been tested in POTS (some positive, some negative) but not systematically in ME/CFS. AAG is rare (estimated 1:1,000,000) — even if enriched in ME/CFS, the absolute prevalence may be small (under 5% of ME/CFS). The COMPASS-31 pattern predicting ganglionic AChR positivity has not been validated.

*Replication status.* Not tested in ME/CFS.

*Falsifiable prediction:* ME/CFS patients with COMPASS-31 >60 will show ≥15% positivity for ganglionic AChR (α3) autoantibodies. Falsified if under 5% positive in this subgroup.
] <spec:ganglionic-achr-mecfs>

=== Speculative Endothelial Diagnostics and Therapeutics

#open-question(title: [Standardised Provocative Endothelial Stress Test for ME/CFS])[
Watton emphasises that endothelial cells appear normal at rest but fail under stress. Could a standardised provocative endothelial stress test — exposing patient-derived endothelial cells (or in vivo flow-mediated dilation with metabolic challenge) to oxidative (H#sub[2]O#sub[2]), immune (TNF-$alpha$), or metabolic (glucose/insulin) challenges — quantify individual adaptive capacity and serve as a clinical diagnostic? Falsifiable: ME/CFS patients will show normal baseline but impaired upregulation of oxidative phosphorylation and delayed barrier recovery after challenge compared to controls, with impairment magnitude correlating with PEM severity. Probability of diagnostic utility: 0.20. @Watton2026unified
] <oq:provocative-endothelial-test>

#speculation(title: [Fibrinolytic Enhancement for Fibronectin-IgG Complex Clearance])[
*Certainty: 0.38. Probability of clinically meaningful efficacy: 0.03.* If Fn1-IgG complex dysregulation impairs immune-clearance and endothelial resilience, enhancing fibrinolytic activity (tissue plasminogen activator, PAI-1 modulators) could normalise Fn1 handling. However, fibrinolytic therapy carries haemorrhagic risk and is indicated only in acute thrombosis — the risk-benefit ratio for a chronic, non-thrombotic condition is likely unfavourable. The concept is mechanistically interesting but the therapeutic window appears prohibitive for ME/CFS. Falsifiable: plasminogen activator or PAI-1 inhibition in ME/CFS plasma will increase Fn1 content in IgG-bound CICs and improve endothelial barrier function under stress. @Watton2026unified
] <spec:fibrinolytic-fn1>

#speculation(title: [Heme Scavengers for Complementary Haptoglobin Support])[
*Certainty: 0.50. Probability of clinically meaningful efficacy: 0.06.* Moreau's group identified reduced functional haptoglobin capacity permitting exaggerated haem-mediated oxidative stress during exertion. Heme scavengers — haptoglobin supplementation, hemopexin, or HO-1 inducers (sulforaphane) — could provide complementary haem clearance during PEM when endogenous Hp is insufficient. Hp supplementation is conceptually clean but no pharmaceutical Hp product exists for non-acute use. Sulforaphane (broccoli sprout extract) is a dietary HO-1 inducer with human safety data. Falsifiable: heme scavenger treatment during exertion challenge will reduce plasma free haem, decrease endothelial activation markers (VCAM-1, E-selectin), and preserve barrier integrity. @Watton2026unified
] <spec:heme-scavengers>

#open-question(title: [Remote Endothelial Function Assessment for Primary Care])[
Endothelial dysfunction is central to the unified model but flow-mediated dilation is inaccessible outside specialised centres. Could remote endothelial assessment — pulse wave velocity, digital thermal monitoring, or endothelial progenitor cell quantification via dried blood spot — enable primary care screening and early intervention? Falsifiable: remote endothelial assessment will correlate with flow-mediated dilation and identify patients at risk for severe complications earlier than symptom-based referral. Probability of clinical utility: 0.12. @Watton2026unified
] <oq:remote-endothelial-assessment>

=== Vasomotor Dysfunction and Thermoregulatory Failure

#speculation(title: [Tonic Cutaneous Vasoconstriction Bias Explains Dual Heat+Cold Intolerance])[
*Certainty: 0.40.* ME/CFS patients paradoxically report both heat and cold intolerance — two symptoms that appear to require opposite vascular states. Heat intolerance requires vasodilation failure (cannot dissipate heat), cold intolerance requires thermogenesis failure (cannot conserve or generate heat). Cambras et al. demonstrated that skin temperature circadian rhythm disruption is associated with elevated endothelin-1 (ET-1), a potent vasoconstrictor @Cambras2023SkinTemperatureEndothelin. This suggests a vasomotor bias toward tonic vasoconstriction: ET-1 elevation may lock cutaneous vessels in a chronically constricted state, preventing both heat-induced vasodilation (→ heat intolerance) and cold-induced perfusion for thermogenesis (→ cold intolerance). Normally, cutaneous vessels flip-flop between dilated (heat dissipation) and constricted (heat conservation) states with high dynamic range. In ME/CFS, the vasomotor setpoint may be shifted toward constriction, compressing the dynamic range from both sides — vessels cannot dilate enough for cooling, and cannot recruit enough perfusion for warming. This single mechanism would explain the dual-intolerance paradox without requiring separate heat and cold pathways. Falsifiable: laser Doppler flowmetry will show baseline cutaneous perfusion 40% lower in ME/CFS than controls; both heat challenge (43°C) and cold challenge (15°C) will elicit blunted perfusion responses in ME/CFS; ET-1 receptor antagonism will restore perfusion flexibility.
] <spec:vasomotor-constriction-bias>

#open-question(title: [Could Cold Intolerance Reflect Failed Brown Adipose Tissue Activation via Sympathetic Dysfunction?])[
Cold adaptation requires brown adipose tissue (BAT) activation via sympathetic nervous system norepinephrine release at β3-adrenergic receptors, triggering UCP1-mediated thermogenesis. ME/CFS sympathetic dysregulation — documented adrenergic receptor dysfunction, POTS, and reduced HRV — may prevent BAT activation, causing cold intolerance via failed thermogenesis. This would mirror heat intolerance from failed vasodilation: both reflect sympathetic output that is tonically elevated but dynamically inflexible — high enough to maintain vasoconstriction, but unable to mount the coordinated sympathetic surge needed for BAT activation. Falsifiable: PET-CT with ^18F-FDG after controlled cold exposure (16°C, 2 h) will show absent BAT activation in ME/CFS vs age/BMI-matched controls; β3-agonist (mirabegron) will restore BAT uptake and cold tolerance. This is mechanistically grounded in established BAT physiology but entirely untested in ME/CFS.
] <oq:bat-cold-intolerance>

#speculation(title: [Peri-Exertional COX-2 Inhibition with Celecoxib for PEM Prevention])[
*Certainty: 0.40. Probability of clinically meaningful efficacy: 0.08.* Post-exertional malaise (PEM) involves an inflammatory cascade peaking 6–48 h after exertion: C4a complement elevation @Sorensen2003complement, IL-1beta and IL-6 surges, and prostaglandin E2 (PGE2) release from COX-2 upregulation in activated immune cells and endothelium. If COX-2-derived PGE2 is a necessary amplifier of the PEM inflammatory cascade, selective COX-2 inhibition (celecoxib) timed to the peri-exertional window could prevent or attenuate PEM by blocking PGE2 synthesis at its peak.

*Mechanism.* Exertion in ME/CFS triggers: (1) complement activation → C5a → neutrophil/monocyte COX-2 upregulation; (2) mechanical stress on skeletal muscle → COX-2 induction in myocytes and satellite cells; (3) endothelial shear stress → endothelial COX-2 expression. COX-2 converts arachidonic acid to PGH2, the precursor of PGE2, PGD2, PGI2, and TXA2. PGE2 amplifies the inflammatory signal through EP2/EP4 receptor-mediated cAMP signalling and NF-kappaB activation. If PGE2 is a positive feedback amplifier rather than a downstream bystander in the PEM cascade, blocking its synthesis during the critical 6–24 h post-exertion window could reduce PEM magnitude without requiring full anti-inflammatory immunosuppression.

*Timing hypothesis.* Standard NSAID dosing (TID, continuous) may not prevent PEM because: (a) continuous COX-2 inhibition allows upstream complement activation to proceed unopposed, and (b) the prostanoid mediator mix after exertion changes over time (PGE2 dominant at 6–12 h, PGI2 at 24–48 h). A peri-exertional protocol — celecoxib 200 mg at exertion onset + 200 mg at 12 h — would target the PGE2-rich window while avoiding continuous suppression. The protocol differs from standard COX-2 inhibitor use in requiring exertion-triggered, not scheduled, dosing.

*Safety considerations.* Cardiovascular safety is paramount in a population with already-impaired endothelial function: selective COX-2 inhibitors carry cardiovascular risk (increased thrombotic events) by suppressing endothelial PGI2 without platelet COX-1 inhibition. Celecoxib has the most favourable cardiovascular profile among COX-2-selective NSAIDs at 200 mg BID. However, in ME/CFS patients with POTS, hypovolemia, or endothelial dysfunction, even short-course COX-2 inhibition may: (1) raise blood pressure (sodium retention, reduced renal PGE2); (2) impair flow-mediated dilation; (3) interact with antihypertensives (ACE inhibitors, ARBs, beta-blockers common in this population). The risk-benefit ratio is unfavourable unless the PEM-prevention effect size is large (≥50% PEM severity reduction).

*Falsifiable predictions.* (1) Randomised, placebo-controlled, within-subject crossover trial (n=20, two identical standardized exercise challenges separated by ≥4 weeks): celecoxib 200 mg at exertion start + 200 mg at 12 h will reduce 24 h PEM severity (visual analogue scale) by ≥30% vs placebo. (2) Urinary PGE-M (PGE2 metabolite) at 6 h post-exertion will be suppressed by celecoxib and correlate with PEM severity. (3) C4a and IL-1beta elevations will NOT be suppressed by celecoxib (confirming COX-2 acts downstream of complement/cytokine triggering, not upstream). (4) Patients with the largest C4a spike at 6 h will show the greatest celecoxib response.

*Limitations.* No ME/CFS-specific COX-2 data exist. The cardiovascular risk in a population with known endothelial dysfunction is a serious concern — a negative safety outcome would outweigh any potential PEM benefit. Celecoxib is a moderate CYP2C9 substrate; ME/CFS patients on other CYP2C9-metabolised drugs (cannabidiol, losartan, fluoxetine) may have altered exposure. The peri-exertional dosing protocol requires patients to predict exertion — feasible for planned activities but not for spontaneous PEM triggers.
] <spec:celecoxib-pem-prevention>

