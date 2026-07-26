#import "../../../../shared/environments.typ": *

=== Microcirculation and Oxygen Delivery
<sec:microcirculation-oxygen>

The energy crisis in ME/CFS begins upstream of mitochondrial ATP synthesis. Multiple independent research groups have documented vascular and microcirculatory dysfunction that directly impairs substrate and oxygen availability, creating a pre-mitochondrial bottleneck.

==== Endothelial Dysfunction

Scherbakov et al.  found endothelial dysfunction (ED) in 51% of ME/CFS patients using peripheral arterial tonometry (EndoPAT). This early indicator of vascular disease correlates with systemic atherosclerosis risk and predicts cardiovascular events. Haffke et al. @Haffke2023fmd measured flow-mediated dilation (FMD), the gold-standard non-invasive endothelial function test, and found severely impaired responses in ME/CFS patients (5.1% vs 8.2% in healthy controls, $p < 0.0001$). This indicates reduced nitric oxide (NO) bioavailability and impaired vasodilatory capacity.

Blauensteiner et al. @Blauensteiner2021mirna identified five endothelial-regulating microRNAs (miR-21, miR-34a, miR-92a, miR-126, miR-200c) with altered expression in up to 60% of ME/CFS patients. All five microRNAs are key regulators of the NO pathway and endothelial function. This suggests dysfunction at the molecular level controlling vascular biology.

==== Red Blood Cell Deformability and Rheology

Red blood cell function is critical for oxygen delivery: RBCs must deform to traverse narrow capillaries and must maintain membrane fluidity to exchange gases efficiently. Saha et al.  studied ME/CFS patient RBCs using ektacytometry and rheological analysis, finding:

    - Higher capillary entry time (approximately 12% longer)
    - Lower transit velocity through capillaries (approximately 17% reduced)
    - Lower elongation index on deformation (approximately 14% reduced membrane deformability)
    - Lower membrane fluidity (approximately 30% reduced)
    - Higher reactive oxygen species (ROS) production (approximately 30% elevated)

Critically, recovering ME/CFS patients showed normalization of these parameters, suggesting that RBC dysfunction is a reversible consequence of the disease rather than a primary genetic defect. The combination of reduced deformability and elevated ROS creates a cascade: stiff RBCs move slower through capillaries, allowing more time for oxidative damage, further reducing deformability and oxygen delivery.

==== Capillary Structural Pathology

Wüst, Charlton, Slaghekke et al.\ @Charlton2025muscleMicrovasc conducted the largest muscle biopsy study in ME/CFS to date (n=26 ME/CFS pre-2020 dx, n=24 Long COVID, n=30 healthy controls) with vastus lateralis biopsies analysed by immunohistology and electron microscopy, plus a unique comparator group: 10 healthy volunteers after strict 60-day bed rest. This design tests the deconditioning hypothesis head-to-head against the microvascular pathology hypothesis.

Key structural findings:
    - *Capillary basement membrane (BM) thickening* ($p < 0.0001$) — the most striking finding, with a near-complete separation between patients and controls: maximum BM thickness in healthy controls was 62.7%, while minimum BM thickness in patients was 63.2%. This is a structural anatomical obstruction, not a functional deficit.
    - *Decreased capillary tortuosity* ($p < 0.0001$) — reduced capillary winding reduces the total surface area available for gas exchange
    - *Decreased capillary contact length* ($p < 0.0001$) — less capillary surface in direct contact with muscle fibers, increasing the oxygen diffusion distance
    - *Lower capillarization* ($p < 0.0005$) — but only in ME/CFS, not Long COVID (discordant with Agergaard 2023 @Agergaard2023LongCOVIDmyopathy who found reduced capillarization in Long COVID; possibly reflecting different biopsy sites — vastus lateralis vs biceps brachii)
    - *EM ultrastructural abnormalities* — basement membrane thickening confirmed at the ultrastructural level, plus microvacuolization, endothelial hypertrophy, and signs of endothelial degeneration

Deconditioning rebuttal. The bed rest comparator is critically informative. Bed rest produced the expected detraining phenotype: muscle atrophy plus reduced OXPHOS capacity. Patients did not show atrophy. Bed rest altered cardiovascular and respiratory responses at both submaximal _and_ maximal exercise; patients showed alterations only at submaximal intensity — a pattern inconsistent with simple deconditioning. Physical inactivity alone cannot explain the lower exercise capacity @Charlton2025muscleMicrovasc.

The capillary BM thickening finding has been independently replicated in three countries: Amsterdam (Charlton/Slaghekke @Charlton2025muscleMicrovasc — vastus lateralis), Berlin (Aschman et al.\ 2023 @Aschman2023postcovidCapillary — vastus lateralis, n=11 PCS), and Aarhus (Agergaard et al.\ 2023 @Agergaard2023LongCOVIDmyopathy — biceps brachii + anterior tibialis, n=18 LC). Three independent cohorts, two muscle groups, consistent core finding.

These are not functional abnormalities but anatomical obstructions — capillaries structurally remodelled such that oxygen diffusion is mechanically limited independent of mitochondrial capacity. This represents a pre-mitochondrial mechanical bottleneck.

#speculation(title: [Endothelial Hypertrophy and Heterogeneous Perfusion — Functional Capillary Dropout])[
The electron microscopy finding of endothelial hypertrophy, microvacuolization, and endothelial degeneration @Charlton2025muscleMicrovasc adds a further dimension to the structural pathology. Endothelial cell swelling narrows the capillary lumen from the inside. In the narrowest capillaries (~5--7 µm, already a tight fit for an ~7 µm RBC), even modest endothelial hypertrophy (~1 µm swelling) reduces luminal diameter to 3--5 µm — functionally excluding RBC transit. Combined with documented RBC stiffness in ME/CFS (approximately 14% reduced deformability; see Red Blood Cell Deformability above), narrowed capillaries become impassable for already-stiff RBCs. The result is *heterogeneous perfusion*: some capillaries are perfused while anatomically adjacent capillaries are functionally excluded. Tissue pO₂ becomes a patchwork — well-perfused regions are normoxic, excluded regions are severely hypoxic — and whole-muscle NIRS averages across both, potentially masking the true severity of micro-regional hypoxia. This mechanism is distinct from BM thickening (diffuse diffusion resistance) and from arteriolar vasoconstriction (reduced total inflow). Here, total flow may be normal but its spatial distribution is pathologically heterogeneous due to stochastic luminal occlusion by endothelial swelling.

*Certainty: 0.40.* The EM finding of endothelial hypertrophy is from a single study (Charlton/Slaghekke 2025, preprint). The link to heterogeneous perfusion is mechanistically plausible but not directly measured — no study has mapped capillary-level perfusion heterogeneity in ME/CFS muscle. (Evidence source: vastus lateralis biopsy EM — Inference target: capillary-level perfusion distribution. Link is indirect — no perfusion mapping at single-capillary resolution in ME/CFS exists.)

(Origin: brainstorm.)

*Falsifiable predictions:*
    + EM-measured capillary luminal diameter distribution should have wider variance in ME/CFS vs controls — indicating heterogeneous narrowing — and the fraction of capillaries with luminal diameter $< 4$ µm should correlate with NIRS spatial heterogeneity (variance in tissue O₂ saturation across muscle regions)
    + Pentoxifylline (RBC deformability enhancer) should improve NIRS-measured O₂ extraction more in patients with higher RBC stiffness — but only if luminal narrowing is not so severe that even flexible RBCs cannot transit
    + Falsified if: luminal diameter distribution is identical between ME/CFS and controls — endothelial hypertrophy is EM artifact or functionally inconsequential, in which case perfusion heterogeneity is not the rate-limiting mechanism

*Consequence:* The swelling of cells lining capillaries in muscle may be creating a patchwork of oxygen delivery — some areas receive oxygen normally, adjacent areas are starved. This hidden patchwork could explain why patients feel muscle burning and weakness even when whole-muscle oxygen measurements look near-normal. An oxygen sensor on the skin averages across the patchwork and misses the silent suffocation of individual muscle regions.
] <spec:endothelial-hypertrophy-heterogeneous-perfusion>

#limitation(title: [Skeletal Muscle Specificity — A Local or Systemic Microvascular Disease?])[
The capillary BM thickening and endothelial pathology documented to date are limited to limb skeletal muscle (vastus lateralis, biceps brachii, anterior tibialis). No data exist for diaphragm, cardiac muscle, smooth muscle (GI tract, bladder), or skin capillaries. If BM thickening is restricted to limb skeletal muscle, the mechanism is limited to exertional symptoms and cannot explain CNS, GI, cardiac, or cutaneous symptoms. If BM thickening is present in all capillary beds, muscle biopsy findings reveal a systemic microvascular disease of which skeletal muscle is merely the most accessible manifestation. The distinction determines whether BM thickening is a consequence of muscle-specific factors (disuse, repetitive micro-injury, metabolite accumulation) or a systemic endothelial/BM disorder: same-patient multi-site biopsy or skin capillary BM measurement is needed to resolve this. *Consequence:* We don't yet know whether this is a muscle problem or a whole-body capillary disease — the answer determines whether treatments targeting capillary structure need to be systemic or can be muscle-localized. Patients with primarily muscle symptoms and no systemic involvement may need a different treatment strategy than patients whose every organ's capillaries are affected.
] <lim:muscle-specific-microvascular>

==== Brain Microvascular Insufficiency

Godlewska et al.  used 7-Tesla magnetic resonance spectroscopy (7T MRS) in 24 ME/CFS patients to measure brain lactate levels at high spatial resolution. They found elevated brain lactate in the pregenual anterior cingulate cortex (pACC) and dorsal anterior cingulate cortex (d ACC)—regions critical for mood, pain processing, and autonomic regulation. Elevated brain lactate reflects anaerobic metabolism in brain tissue, consistent with localized microvascular insufficiency in these regions.

==== Integration: Substrate Delivery Failure and Vascular-Primary Causation

Together, these findings identify a pre-mitochondrial energy bottleneck: endothelial dysfunction reduces perfusion pressure, RBC deformability limits capillary transit, structural capillary pathology blocks oxygen diffusion, and localized brain insufficiency impairs central regulatory systems. Cells cannot generate energy efficiently when they cannot access substrates, regardless of mitochondrial capacity.

A critical question for both mechanistic understanding and therapeutic targeting is whether vascular oxygen delivery failure *causes* mitochondrial dysfunction or results from it. The 2022--2025 literature increasingly supports vascular pathology as primary, with mitochondrial damage as the downstream consequence of chronic ischemia/reperfusion.

Scheibenbogen and Wirth (2024)  proposed an explicit temporal model: early post-COVID syndrome is dominated by microvascular disturbance (microclots, inflammatory capillary changes) with mitochondrial damage appearing later and selectively in patients who develop ME/CFS. The proposed causal chain is: capillary hypoperfusion $arrow.r$ ischemia/reperfusion $arrow.r$ anaerobic metabolism $arrow.r$ proton accumulation $arrow.r$ NHE1 sodium influx $arrow.r$ NCX1 reversal $arrow.r$ mitochondrial Ca#super[2+] overload $arrow.r$ mitochondrial structural damage. Once mitochondria are damaged, the loop becomes self-sustaining via ROS-mediated worsening of endothelial function and reduced ATP availability for ion pump maintenance (Section @sec:sodium-calcium-cascade).

Three independent lines of interventional and structural evidence support vascular primacy:

    - *Structural precedence*: Electron microscopy shows capillary basement membrane thickening (collagen IV deposition) in ME/CFS skeletal muscle  — a structural change that precedes and imposes mechanical limits independent of mitochondrial state
    - *Cell-autonomous RBC oxygen sensing failure*: ME/CFS RBCs fail to sense and respond to tissue hypoxia by accelerating capillary transit @GuoRBC2025microfluidic, a defect that is independent of mitochondrial function in the target tissue
    - *Interventional evidence*: Pharmacological correction of preload failure (pyridostigmine) improves peak VO#sub[2] by +0.9~mL/kg/min ($p = 0.002$) in ME/CFS @Joseph2022neurovascularDysreg — a vascular-targeted intervention producing functional improvement without directly targeting mitochondria. Joseph et al.\ used invasive CPET (arterial and venous catheters) — the gold standard — demonstrating that the exercise limitation is peripheral O#sub[2] extraction (0.69 vs 0.77 in controls, $p < 0.001$), not cardiac output or pulmonary gas exchange
    - *NIRS confirmation*: Near-infrared spectroscopy during maximal cycling exercise in the Charlton/Slaghekke cohort @Charlton2025muscleMicrovasc confirmed lower tissue O#sub[2] uptake ($p = 0.001$) and lower vasodilatory capacity ($p = 0.011$) in both ME/CFS and Long COVID patients, despite no differences in maximal heart rate or ventilatory equivalents — direct functional evidence that capillary-level structural pathology translates to impaired oxygen extraction during exercise
    - *Deconditioning excluded*: The 60-day bed rest comparator (above) definitively excluded physical inactivity as the sole or primary explanation for reduced VO#sub[2]max — the patient phenotype (capillary BM thickening + glycolytic shift + no atrophy) is structurally distinct from the detraining phenotype (atrophy + reduced OXPHOS), confirming the exercise limitation has a disease-specific structural basis

These data do not exclude mitochondrial primary dysfunction in all patients, but they challenge the assumption that vascular abnormalities are secondary epiphenomena. For therapeutic purposes, the distinction matters: a patient whose primary lesion is capillary ischemia requires a different intervention strategy than one whose primary lesion is mitochondrial supercomplex disruption. The acquired ischemic mitochondrial myopathy (AIMM) framework proposed by Scheibenbogen and Wirth frames ME/CFS as arising from a primary vascular event producing acquired — and therefore potentially reversible — mitochondrial damage, with important implications for ion homeostasis restoration therapies (Section @sec:sodium-calcium-cascade).

