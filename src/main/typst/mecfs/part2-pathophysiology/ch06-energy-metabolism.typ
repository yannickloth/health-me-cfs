#import "../shared/environments.typ": *

= Energy Metabolism and Mitochondrial Function
<ch:energy-metabolism>

#chapter-abstract[
Energy production impairment is a central feature of ME/CFS pathophysiology and likely underlies the characteristic fatigue and post-exertional malaise that define the illness. This chapter approaches cellular energy metabolism as a ten-step chain from substrate delivery to ATP utilisation, asking at each step what normally happens, how much ATP is produced or gated, what has been documented in ME/CFS, what failure modes have been observed or mechanistically predicted, and what remains uninvestigated. The 2024 NIH deep phenotyping study by Walitt et al.\ @walitt2024deep provides important metabolomic data from cerebrospinal fluid analysis, linking energy metabolism dysfunction to neurological symptoms, and frames the chapter's relevance to Chapter @ch:integrative-models. Four integrative hypotheses connecting multiple steps are developed in the final section.
]

== The Energy Chain: Ten Steps from Substrate to ATP
<sec:energy-chain-overview>

Cellular ATP production proceeds in a chain of functionally dependent steps. Each step is necessary but not sufficient on its own, and failure at any one step can propagate to downstream capacity loss. This chapter organises the chain into ten steps and reviews each step's normal function, ATP accounting, documented ME/CFS findings, documented failure modes, and research gaps.

=== ATP Accounting Basis

ATP yields in this chapter are reported on a _glucose basis_: ATP molecules produced per mole of glucose fully oxidised under aerobic conditions. The textbook total is approximately 30--32 ATP per glucose, using consensus P/O ratios of 2.5 for NADH and 1.5 for FADH#sub[2] (Hinkle 2005). Each step is reported with three numbers: _direct yield_ (ATP or ATP-equivalent reducing equivalents produced at this step), _gated yield_ (downstream ATP that depends on this step completing), and _percent of total_ (gated yield / ~30 ATP).

Glucose-basis accounting was chosen because textbook values are uncontroversial and directly comparable across steps. Fatty acid oxidation yields more ATP per molecule (~106 for palmitate) but runs through the same ETC, so the glucose basis is conservative and transferable. The distinction between _direct_ and _gated_ yields matters because several steps (PDC, cofactor supply, ANT export) produce no ATP directly but gate a large fraction of downstream ATP: their failure is catastrophic precisely because they are pipeline gates rather than producers.

_Limitations._ Textbook values apply under ideal conditions; real cellular yields are lower due to proton leak (10--20%) and substrate partitioning, already partly reflected in the 30-ATP figure. Partial failure is non-linear: 50% PDK inhibition does not produce 50% yield loss. Values apply to aerobic tissue (muscle, neurons); immune cells and other tissues have different dependency profiles. The accounting is a framework for ordering failure modes, not a quantitative predictor of ATP deficit in any specific patient.

=== The Ten Steps

#figure(
  kind: table,
  caption: [ATP accounting across the ten steps of cellular energy metabolism (glucose basis, ~30 ATP per glucose fully oxidised). Direct yield: ATP or ATP-equivalent reducing equivalents produced at this step. Gated yield: downstream ATP that depends on this step completing. Percent of total: gated yield as fraction of ~30 ATP.],
  table(
    columns: (auto, 1fr, auto, auto, auto),
    align: (left, left, right, right, right),
    table.header([*Step*], [*Function*], [*Direct*], [*Gated*], [*% total*]),
    [1], [Substrate delivery], [0], [~30], [100%],
    [2], [Glycolysis], [+2 ATP, +2 NADH], [~30], [100%],
    [3], [Pyruvate dehydrogenase (PDC)], [+2 NADH (=+5 gated)], [~25], [~83%],
    [4], [Carnitine shuttle / β-oxidation], [0 (glucose basis)], [—], [—],
    [5], [Krebs cycle], [+2 GTP, +6 NADH, +2 FADH#sub[2]], [~20], [~67%],
    [6], [Cofactors (CoQ10, FAD, NAD#super[+], thiamine)], [0 direct], [up to ~25], [up to ~83%],
    [7], [ANT (ATP export)], [0], [~28], [~93%],
    [8], [Creatine phosphate shuttle], [0 (kinetic buffer)], [—], [—],
    [9], [ROS scavenging], [0 (net-negative)], [—], [—],
    [10], [Dynamics / biogenesis], [0 (capacity setter)], [—], [—],
  )
) <tab:atp-accounting>

Step 4 (carnitine/β-oxidation) reports zero direct yield on a glucose basis because it is a fatty-acid-specific pathway; for palmitate the yield is +7 FADH#sub[2] + 7 NADH + 8 acetyl-CoA per molecule. Steps 8, 9, and 10 are not stoichiometric producers: creatine phosphate is a kinetic buffer, ROS scavenging is net-negative (consuming NADPH and glutathione), and dynamics/biogenesis is a longitudinal capacity setter. All three can fail without changing the per-cycle ATP count, yet their failure degrades overall system performance through kinetic, protective, and regenerative mechanisms respectively.

=== Cellular Energy Production Overview
<sec:atp-synthesis>

Adenosine triphosphate (ATP) is the universal energy currency of cells, powering virtually all cellular processes. ATP is generated through three interconnected pathways:

==== Glycolysis

Glycolysis occurs in the cytoplasm and converts glucose to pyruvate:

    - *Substrate*: One glucose molecule (6 carbons)
    - *Products*: Two pyruvate molecules (3 carbons each), 2 ATP (net), 2 NADH
    - *Oxygen requirement*: None (anaerobic process)
    - *Rate*: Fast but relatively inefficient

Glycolytic intermediates also provide substrates for biosynthetic pathways (amino acids, lipids, nucleotides), making glycolysis central to cellular metabolism beyond energy production.

==== Krebs Cycle (Citric Acid Cycle)

The Krebs cycle occurs in the mitochondrial matrix and completes glucose oxidation:

    - *Substrate*: Acetyl-CoA (derived from pyruvate, fatty acids, or amino acids)
    - *Products per acetyl-CoA*: 3 NADH, 1 FADH#sub[2], 1 GTP (equivalent to ATP), 2 CO#sub[2]
    - *Function*: Generates reducing equivalents (NADH, FADH#sub[2]) for electron transport chain
    - *Regulation*: Controlled by substrate availability, product inhibition, and allosteric regulators

==== Electron Transport Chain and Oxidative Phosphorylation

The electron transport chain (ETC) in the inner mitochondrial membrane generates the majority of cellular ATP:

    - *Complex I (NADH dehydrogenase)*: Accepts electrons from NADH, pumps protons
    - *Complex II (Succinate dehydrogenase)*: Accepts electrons from FADH#sub[2], does not pump protons
    - *Complex III (Cytochrome bc#sub[1])*: Transfers electrons to cytochrome c, pumps protons
    - *Complex IV (Cytochrome c oxidase)*: Transfers electrons to O#sub[2] (forming H#sub[2]O), pumps protons
    - *Complex V (ATP synthase)*: Uses proton gradient to synthesize ATP from ADP + P#sub[i]

Complete oxidation of one glucose molecule yields approximately 30–32 ATP, though actual yield varies with cellular conditions.

// Insert Figure: Normal Energy Production
#include "../figures/fig-energy-production-normal.typ"

// Insert Figure: ME/CFS Energy Production Dysfunction
#include "../figures/fig-energy-production-mecfs.typ"

#include "../figures/fig-energy-cascade-normal.typ"
#include "../figures/fig-energy-cascade-mecfs.typ"
Figures @fig:energy-cascade-normal and @fig:energy-cascade-mecfs illustrate normal ATP production and the multiple impairment points in ME/CFS. ATP deficit cascades into multi-system dysfunction affecting muscle, brain, immune, cardiovascular, and autonomic systems. This multi-system cascade is synthesized with other pathophysiological mechanisms in Chapter @ch:integrative-models, particularly in the discussion of energy-immune-autonomic interactions (Section @sec:synthesis).

=== Normal Energy Metabolism
<sec:normal-metabolism>

==== Baseline ATP Requirements

Different tissues have vastly different energy demands:

    - *Brain*: 20–25% of resting metabolic rate despite 2% of body mass
    - *Heart*: Continuously contracting, requires constant ATP supply
    - *Skeletal muscle*: Variable demand; enormous increase during exercise
    - *Immune cells*: High energy demand during activation
    - *Liver*: Metabolic hub with substantial ATP consumption

The human body produces and consumes approximately 40–70 kg of ATP daily, with turnover occurring every few seconds.

==== Energy Demands During Exertion

Physical activity dramatically increases ATP demand:

    - *Muscle ATP consumption*: Can increase 100-fold during maximal exercise
    - *Immediate energy*: Phosphocreatine provides seconds of buffering
    - *Short-term*: Glycolysis provides rapid but limited ATP
    - *Sustained activity*: Requires oxidative phosphorylation
    - *Substrate shift*: From glucose to increasing fatty acid utilization

==== Recovery Processes

Following exertion, energy systems must be restored:

    - *Oxygen debt repayment*: Elevated metabolism to restore baseline
    - *Phosphocreatine resynthesis*: Rapid recovery (seconds to minutes)
    - *Glycogen resynthesis*: Hours to days depending on depletion
    - *Lactate clearance*: Conversion back to glucose (Cori cycle)
    - *Protein synthesis*: Repair of exercise-induced damage

=== Evidence for Mitochondrial Impairment
<sec:mito-evidence>

Mitochondria are increasingly recognised as central to ME/CFS pathophysiology, with evidence for dysfunction at multiple levels. The evidence reviewed here is organised by measurement modality rather than by step in the energy chain; findings are then attached to specific steps in the ten-step analysis that follows.

==== Studies Showing Reduced ATP Production

Multiple lines of evidence support impaired ATP generation:

    - *Lymphocyte studies*: Reduced ATP production in peripheral blood mononuclear cells
    - *Muscle biopsies*: Abnormal mitochondrial morphology and function in some patients
    - *Metabolomic profiles*: Patterns consistent with impaired oxidative phosphorylation
    - *Exercise studies*: Early transition to anaerobic metabolism (reduced anaerobic threshold)

*The ATP Profile Test*
One proposed biomarker approach measures:

    - ATP concentration in neutrophils
    - ATP production efficiency
    - Mitochondrial membrane potential

Studies using this approach have found reduced ATP levels and impaired efficiency in ME/CFS patients, though methodological debates continue.

#achievement(title: [Multi-Omics Biomarker Panel: Integrated Energy-Immune-Vascular Dysfunction])[
A landmark 2025 study by Heng et al. @heng2025mecfs, published in _Cell Reports Medicine_, applied multi-omics analysis to 61 ME/CFS patients (Canadian Criteria) matched with 61 healthy controls, revealing coordinated dysfunction across energy metabolism, immune function, and vascular systems. Key energy metabolism findings included elevated adenosine monophosphate (AMP) and adenosine diphosphate (ADP) in white blood cells, with median AMP levels of 312.2 nM in ME/CFS versus 147.2 nM in controls, reduced ATP/ADP ratio consistent with decreased ATP generation and cellular energy stress, and abnormal nicotinamide adenine dinucleotide (NAD#super[+]) metabolism affecting cellular energy production.

The study identified a predictive model comprising seven biological variables that distinguished ME/CFS patients with 85.2% sensitivity, 96.7% specificity, and 91% accuracy. These seven biomarkers span adenosine metabolism (AMP), immune functions (cDC1, LYVE1, IGHG2), and vascular factors (FN1, VWF, THBS1)—demonstrating that energy dysfunction in ME/CFS is not isolated but integrated with immune and vascular abnormalities. This multi-system integration suggests that future treatments may need to target energy metabolism, immune maturation, and vascular health simultaneously. The implications of this coordinated dysfunction for treatment strategy are discussed in Chapter @ch:integrative-models, particularly in the context of the Energy-Immune-Autonomic Triad (Section @sec:synthesis). For the systems biology perspective on this biomarker panel, see Achievement @ach:systems-biomarkers in Chapter @ch:integrative-models.
] <ach:heng-multiomics>

#warning-env(title: [Replication Status])[
Single study (Heng 2025, n=61 pairs) from one Australian center. No independent cohort has replicated the multi-omics biomarker panel or its diagnostic accuracy. The CART-derived 7-biomarker model requires prospective validation in independent populations with diverse demographics and diagnostic criteria before clinical application. Independent replication required.
]

#speculation(title: [Depression and ME/CFS May Share a Stress-Responsive Mitochondrial Failure Mode])[
Cullen et al. @Cullen2026ATP found that cells from young adults with major depression produce paradoxically elevated ATP at rest but show markedly reduced capacity to upscale energy output under metabolic stress—a pattern they term _stress-responsive mitochondrial failure_. This phenotype is conceptually similar to the post-exertional energy collapse in ME/CFS: near-normal baseline function until an energy demand threshold is exceeded, whereupon output fails catastrophically. Whether ME/CFS mitochondria share this specific regulatory defect (rather than, or in addition to, absolute ATP deficiency) remains to be directly tested in ME/CFS populations.
Study: ($n=18$, major depression cohort, Translational Psychiatry 2026, certainty: 0.40; relevance to ME/CFS is speculative).
] <spec:cullen2026-atp-fatigue>

==== Electron Microscopy Findings

Ultrastructural examination of mitochondria has revealed:

    - *Abnormal morphology*: Swollen, disrupted cristae structure
    - *Variable size*: Both enlarged and fragmented mitochondria
    - *Reduced number*: Decreased mitochondrial density in some tissues
    - *Intramuscular abnormalities*: Changes in muscle biopsy specimens

==== Functional Assays

Direct measurement of mitochondrial function shows:

    - *Respirometry*: Reduced oxygen consumption rates in some studies
    - *Enzyme activities*: Variable findings for individual ETC complexes
    - *Membrane potential*: May be altered, affecting ATP synthesis efficiency
    - *Calcium handling*: Impaired mitochondrial calcium uptake

==== Biomarkers of Mitochondrial Dysfunction

Several biomarkers indicate mitochondrial stress:

    - *Lactate*: Elevated at rest or with minimal exertion
    - *Pyruvate*: Altered lactate/pyruvate ratio
    - *Organic acids*: Abnormal urinary organic acid patterns
    - *Acylcarnitines*: Reflecting impaired fatty acid oxidation
    - *Coenzyme Q10*: Sometimes reduced


== Step 1: Substrate Delivery — Glucose, Fatty Acid, and Oxygen Uptake
<sec:step1-substrate-delivery>

=== Normal Function

Before mitochondria can produce ATP, substrate must reach the cell. Two fuel-delivery chains run in parallel: glucose via GLUT transporters and fatty acids via albumin-bound transport followed by CPT-mediated membrane uptake. Oxygen delivery — the third substrate — depends on vascular perfusion, red blood cell deformability, and capillary diffusion distance.

=== ATP Accounting

Substrate delivery is a _binary gate_: 0 ATP produced directly, but ~30 ATP per glucose are gated on it. Without substrate and oxygen, no downstream step operates. Partial delivery failure — which is the clinically relevant case — produces proportionally reduced capacity across every subsequent step, not a graceful degradation at any single one.

=== Documented ME/CFS Findings and Failure Modes

Before mitochondria can produce ATP, substrate must reach the cell and enter the cytoplasm. Two delivery chains run in parallel: glucose via GLUT transporters and fatty acids via albumin-bound transport followed by membrane uptake.

*Glucose delivery.* Cellular glucose uptake depends on GLUT transporter expression and, in insulin-sensitive tissues (skeletal muscle, adipose), on insulin-stimulated GLUT4 trafficking from intracellular vesicles to the plasma membrane. Mandarano et al.\ demonstrated that ME/CFS CD4#super[+] and CD8#super[+] T cells show increased GLUT1 expression — suggesting a compensatory attempt to increase glucose uptake — but that hexokinase I (which phosphorylates glucose to trap it inside the cell) is simultaneously downregulated . The result is reduced basal glycolysis despite elevated transporter expression: substrate can enter but cannot be efficiently phosphorylated and committed to the glycolytic pathway.

*Partially characterised:* GLUT4 trafficking in ME/CFS skeletal muscle has not been directly examined, though Brown et al.\ showed that glucose uptake (a functional GLUT4 output) is impaired in cultured ME/CFS muscle cells, with the defect localised proximal to AMPK @Brown2018AMPK. The malonyl-CoA/CPT1 switch — the molecular gate that controls whether cells preferentially oxidize glucose or fatty acids — has not been characterized in ME/CFS, though Reuter and Evans inferred reduced CPT-I activity from long-chain acylcarnitine deficiency ($n = 44$ CFS vs 49 controls, 30--40% lower C18:1/C18:2, $p < 0.0001$) . AMPK activators have been tested _in vitro_: metformin and compound 991 rescued both AMPK activation and glucose uptake in ME/CFS muscle cells @Brown2018AMPK. Clinically, the REVIVE-TOGETHER adaptive RCT ($n = 399$) halted its metformin 750 mg BID arm for futility at 60 days while the fluvoxamine arm showed significant fatigue reduction , and the earlier COVID-OUT trial showed early metformin _prevented_ Long COVID by ~41% but did not treat established fatigue @Reis2023COVIDOUT. No AMPK-activator trial has been conducted in primary ME/CFS.

*Fatty acid delivery.* Acylcarnitines and acylcholines, which reflect mitochondrial fatty acid utilization, are consistently reduced in ME/CFS across two independent cohorts studied by Germain et al.\ , indicating impaired flux of long-chain fatty acids into beta-oxidation. Reduced serum carnitine is a documented finding , further limiting fatty acid transport across the inner mitochondrial membrane via the CPT1/CPT2 carnitine shuttle.

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

Wust et al.  conducted electron microscopy studies of muscle capillaries from ME/CFS patients and documented structural abnormalities: massive collagen IV deposition in the capillary basement membrane, thickening and narrowing of capillary passageways, and physical barriers to oxygen diffusion. These are not functional abnormalities but anatomical obstructions—capillaries cannot transport oxygen effectively due to structural remodeling. This represents a mechanical bottleneck independent of mitochondrial function.

==== Brain Microvascular Insufficiency

Godlewska et al.  used 7-Tesla magnetic resonance spectroscopy (7T MRS) in 24 ME/CFS patients to measure brain lactate levels at high spatial resolution. They found elevated brain lactate in the pregenual anterior cingulate cortex (pACC) and dorsal anterior cingulate cortex (d ACC)—regions critical for mood, pain processing, and autonomic regulation. Elevated brain lactate reflects anaerobic metabolism in brain tissue, consistent with localized microvascular insufficiency in these regions.

==== Integration: Substrate Delivery Failure and Vascular-Primary Causation

Together, these findings identify a pre-mitochondrial energy bottleneck: endothelial dysfunction reduces perfusion pressure, RBC deformability limits capillary transit, structural capillary pathology blocks oxygen diffusion, and localised brain insufficiency impairs central regulatory systems. Cells cannot generate energy efficiently when they cannot access substrates, regardless of mitochondrial capacity.

A critical question for both mechanistic understanding and therapeutic targeting is whether vascular oxygen delivery failure *causes* mitochondrial dysfunction or results from it. The 2022--2025 literature increasingly supports vascular pathology as primary, with mitochondrial damage as the downstream consequence of chronic ischaemia/reperfusion.

Scheibenbogen and Wirth (2024)  proposed an explicit temporal model: early post-COVID syndrome is dominated by microvascular disturbance (microclots, inflammatory capillary changes) with mitochondrial damage appearing later and selectively in patients who develop ME/CFS. The proposed causal chain is: capillary hypoperfusion $arrow.r$ ischaemia/reperfusion $arrow.r$ anaerobic metabolism $arrow.r$ proton accumulation $arrow.r$ NHE1 sodium influx $arrow.r$ NCX1 reversal $arrow.r$ mitochondrial Ca#super[2+] overload $arrow.r$ mitochondrial structural damage. Once mitochondria are damaged, the loop becomes self-sustaining via ROS-mediated worsening of endothelial function and reduced ATP availability for ion pump maintenance (Section @sec:sodium-calcium-cascade).

Three independent lines of interventional and structural evidence support vascular primacy:

    - *Structural precedence*: Electron microscopy shows capillary basement membrane thickening (collagen IV deposition) in ME/CFS skeletal muscle  — a structural change that precedes and imposes mechanical limits independent of mitochondrial state
    - *Cell-autonomous RBC oxygen sensing failure*: ME/CFS RBCs fail to sense and respond to tissue hypoxia by accelerating capillary transit @GuoRBC2025microfluidic, a defect that is independent of mitochondrial function in the target tissue
    - *Interventional evidence*: Pharmacological correction of preload failure (pyridostigmine) improves peak VO#sub[2] and cardiac output in ME/CFS  — a vascular-targeted intervention producing functional improvement without directly targeting mitochondria

These data do not exclude mitochondrial primary dysfunction in all patients, but they challenge the assumption that vascular abnormalities are secondary epiphenomena. For therapeutic purposes, the distinction matters: a patient whose primary lesion is capillary ischaemia requires a different intervention strategy than one whose primary lesion is mitochondrial supercomplex disruption. The acquired ischaemic mitochondrial myopathy (AIMM) framework proposed by Scheibenbogen and Wirth frames ME/CFS as arising from a primary vascular event producing acquired — and therefore potentially reversible — mitochondrial damage, with important implications for ion homeostasis restoration therapies (Section @sec:sodium-calcium-cascade).

=== Research Gaps at Step 1

Three substrate-delivery mechanisms remain uncharacterised in ME/CFS despite being standard targets in diabetes, mitochondrial myopathy, and obesity research: GLUT4 trafficking in skeletal muscle, the malonyl-CoA/CPT1 fuel-switch, and AMPK-activator trials (metformin, berberine) for GLUT4 restoration. The three are enumerated below, with an explicit assessment of essentiality, worst-case impact if the mechanism fails, and a priority tier.

==== Prioritisation Framework

To decide which gaps to study first, the following four criteria are applied to each gap:

    / *Essentiality*: Is the mechanism a _sole_ pathway (no redundancy) or one of several parallel routes? A sole pathway's failure is catastrophic; a redundant pathway's failure is compensable.
    / *Worst-case impact*: If the mechanism is fully failed, what fraction of the ~30 ATP/glucose total is lost downstream? Expressed as a percentage of Step 1's gated yield (100% of ~30 ATP).
    / *Tractability*: How hard is the measurement to perform in patients? Scored as _easy_ (plasma/serum, existing assay), _moderate_ (PBMC or imaging, specialist lab), _hard_ (muscle biopsy, research-only assay), or _very hard_ (tissue that requires invasive sampling or post-mortem).
    / *Therapeutic leverage*: Is a correction already available, or would development be required? _Immediate_ (FDA-approved drug exists for analogous indication), _near-term_ (off-label repurposing with reasonable prior), _long-term_ (new drug development required).

A gap is _priority 1_ (highest) if its essentiality is high, worst-case impact is ≥50% of step-gated yield, and tractability is easy or moderate. A gap is _priority 2_ if any one of those is downgraded. A gap is _priority 3_ if essentiality is low, worst-case impact is modest, or tractability is hard. The framework is deliberately biased toward actionable measurements — a gap that would take a decade to measure and would not change treatment is explicitly de-prioritised against one that could be resolved in months with an existing assay.

_Exception for sole-route catastrophic gaps:_ a gap that is high-essentiality (sole route, no redundancy) AND high worst-case impact (≥80%) may be assigned priority 1 even with _hard_ tractability, because the cost of not knowing is strictly higher than the cost of measuring. This exception applies to a small number of Step 3 (PDC), Step 4 (ETF/ETF-QO), and Step 10 (PGC-1α, mitophagy flux) gaps where the mechanism is both sole-route and catastrophic.

_Intervention gaps_ (those asking whether a particular trial has been run, rather than whether a mechanism has been measured) are evaluated on a separate axis: priority is driven by whether the trial would change clinical practice conditional on a positive mechanistic signal, and by drug availability. Intervention gaps marked "N/A" on essentiality are conditional gaps — their priority reflects the prior probability that the upstream mechanistic gap will turn out to be positive.

==== Essentiality Note

None of the three listed Step 1 gaps is _individually essential_ to cellular energy production. Step 1 as a whole is essential (it gates 100% of downstream ATP), but within Step 1 there are parallel delivery routes (glucose via GLUT1/2/3/4, fatty acids via CPT1/2, and oxygen via vascular perfusion — all independently reviewed in this Step). Failure of one substrate route forces compensation through the others, not catastrophic shutdown. This is different from Steps 3 (PDC) and 7 (ANT), which are sole-route bottlenecks and therefore intrinsically high-priority. At Step 1, prioritisation must weigh the _combined_ leverage of a mechanism across multiple subroutes, not just its individual necessity.

==== Gap-by-Gap Assessment

#figure(
  kind: table,
  caption: [Step 1 research gaps — essentiality, worst-case impact, tractability, therapeutic leverage, measurement accessibility, and priority tier. Worst-case impact is expressed as the fraction of Step 1's gated ATP yield (~30 ATP/glucose = 100%) that would be lost if the mechanism fully failed, assuming no compensation from parallel routes. Priority tiers integrate all four criteria.],
  table(
    columns: (auto, auto, auto, auto, auto, auto, auto),
    align: (left, left, left, left, left, left, center),
    table.header(
      [*Gap*], [*Essentiality*], [*Worst-case impact*], [*Tractability*], [*Therapeutic leverage*], [*Measurement*], [*Priority*]
    ),
    [G1: GLUT4 trafficking (skeletal muscle)],
    [Medium — one of 4 GLUT isoforms; GLUT1/3 compensate partially at rest but not under insulin-stimulated demand; glucose uptake impaired in ME/CFS muscle cells with defect proximal to AMPK @Brown2018AMPK],
    [~30--60% of gated yield in insulin-sensitive tissues during exertion; negligible at rest],
    [Hard — muscle biopsy with GLUT4 immunofluorescence or surface-biotinylation assay],
    [Immediate — metformin, berberine, exercise-mimetics (AICAR research-grade)],
    [Muscle biopsy (IF)],
    [2],
    [G2: Malonyl-CoA/CPT1 fuel switch],
    [High — sole gate between glucose-preferential and fatty-acid-preferential metabolism; no parallel switch; Reuter 2011 inferred reduced CPT-I from 30--40% lower long-chain acylcarnitines ],
    [~20--40% of gated yield if the switch is locked in either mode (prevents substrate-flexible compensation during exertion or fasting)],
    [Moderate — plasma malonyl-CoA (specialist LC-MS) + PBMC ACC/AMPK phospho-Western],
    [Near-term — AMPK activators (metformin); ACC inhibitors (firsocostat) in phase II for NASH],
    [Blood draw (specialist LC-MS)],
    [1],
    [G3: AMPK-activator trials (metformin, berberine)],
    [N/A — intervention gap; in vitro proof-of-concept exists (Brown 2018: metformin rescues AMPK and glucose uptake in ME/CFS muscle cells @Brown2018AMPK); Long COVID RCT null for established fatigue (Reis 2026: metformin halted for futility ); prevention-stage evidence from COVID-OUT (41% Long COVID reduction @Reis2023COVIDOUT)],
    [Unknown pending G1/G2; Long COVID RCT null weakens the case for established fatigue],
    [Easy — metformin is FDA-approved, cheap, and widely tolerated; RCT designs for ME/CFS are straightforward],
    [Immediate — metformin is off-patent and available],
    [Blood draw (RCT)],
    [3 (downgraded: in vitro positive but clinical null in Long COVID fatigue)],
  )
) <tab:step1-gap-priorities>

==== Prioritisation Summary

G2 (malonyl-CoA/CPT1 switch) is the highest-priority Step 1 gap: it is the sole gate between carbohydrate and fatty-acid oxidation, tractable via plasma and PBMC assays, and has an immediate therapeutic anchor (metformin). G1 (GLUT4 trafficking) is priority 2 because its measurement requires muscle biopsy — the main barrier is tractability, not impact. G3 (metformin/berberine RCT) is priority 3: Brown 2018 provided in vitro proof-of-concept but the REVIVE-TOGETHER Long COVID RCT found metformin null for established fatigue , weakening the clinical case. The priority could be upgraded if a positive mechanistic signal emerges from G1 or G2 in ME/CFS specifically.

None of the three gaps is essential to the chain in the way that PDC (Step 3) or ANT (Step 7) is. Fully resolving all three would close a significant diagnostic and therapeutic gap in insulin-sensitive tissues, but Step 1 has enough parallel redundancy (GLUT1/3, alternative fuel sources, passive oxygen diffusion at low demand) that its failure mode tends to be _graded capacity loss under exertion_ rather than _absolute shutdown at rest_. This is consistent with the clinical pattern of ME/CFS: preserved baseline function with catastrophic failure under demand (Section @sec:selective-energy-dysfunction).

The same four-criterion framework is applied to each subsequent step's research gaps in the subsections below. Step 1 establishes the scoring rubric; Steps 2–10 apply it without restating the criteria. See @sec:cartography-gaps for the chapter-wide summary list of uninvestigated failure modes.

== Step 2: Glycolysis
<sec:step2-glycolysis>

=== Normal Function

Glycolysis converts glucose to pyruvate in the cytoplasm, yielding 2 ATP net and 2 NADH per glucose. The pathway is rapid but oxygen-independent, making it the fallback when mitochondrial capacity is reduced.

=== ATP Accounting

Direct yield: +2 ATP (net) and +2 NADH (~+5 ATP when oxidised via the malate-aspartate shuttle or glycerol-3-phosphate shuttle). Gated yield: ~30 ATP, because glycolysis produces the pyruvate that feeds PDC, TCA, and the ETC. When glycolysis is impaired the whole downstream chain starves; when it is upregulated as a fallback (under hypoxia or ETC dysfunction), only the +2 direct ATP is retained and ~25 ATP of aerobic capacity is lost.

=== Documented ME/CFS Findings and Gaps


Glycolysis converts glucose to pyruvate in the cytoplasm, yielding 2 ATP and 2 NADH per glucose. The pathway is normally rapid but oxygen-independent, making it the fallback when mitochondrial capacity is reduced.

In ME/CFS, T cell metabolic profiling by Mandarano et al.\ shows reduced basal glycolysis in both CD4#super[+] and CD8#super[+] subsets . Naviaux et al.\ identified broad glycolytic pathway abnormalities in the metabolomic signature of ME/CFS . However, enzyme-level analysis of the individual glycolytic steps (hexokinase, phosphofructokinase, pyruvate kinase) in ME/CFS tissue has not been performed. Hexokinase II, which normally anchors to the mitochondrial outer membrane and couples glycolysis directly to oxidative phosphorylation, has not been studied in ME/CFS.


=== Research Gaps at Step 2

Three glycolytic-enzyme-level gaps remain open in ME/CFS: (G4) direct activity assay of hexokinase I/II, phosphofructokinase-1 (PFK1), and pyruvate kinase M2 (PKM2) in patient tissue; (G5) the mitochondrial-outer-membrane anchoring of hexokinase II, which normally couples glycolysis to oxidative phosphorylation; and (G6) whether PFK1 allosteric regulation (AMP/ATP, fructose-2,6-bisphosphate) is dysfunctional in ME/CFS PBMCs or muscle. Prioritisation uses the framework from @sec:step1-substrate-delivery.

#figure(
  kind: table,
  caption: [Step 2 (Glycolysis) research gap prioritisation.],
  table(
    columns: (auto, auto, auto, auto, auto, auto, auto),
    align: (left, left, left, left, left, left, center),
    table.header([*Gap*], [*Essentiality*], [*Worst-case impact*], [*Tractability*], [*Therapeutic leverage*], [*Measurement*], [*Priority*]),
    [G4: Glycolytic enzyme activity assay (HK, PFK1, PKM2)], [Medium — each enzyme has isoform redundancy but PFK1 is the rate-limiting committed step; a mouse CFS model showed PKM2 amplifies glycolysis→lactate→H4K12 lactylation→NF-$kappa$B neuroinflammation→mitochondrial damage, and PKM2 knockdown ameliorated the CFS phenotype @Sun2025PKM2CFS — but no human ME/CFS enzyme data exist], [~10--30% of gated yield (direct 2 ATP) plus indirect loss of pyruvate supply to PDC], [Moderate — enzyme activity assays on PBMC lysates are standardised; muscle requires biopsy], [Long-term — no approved enzyme-targeted therapy], [Blood draw (PBMC lysate) or muscle biopsy], [2],
    [G5: Hexokinase II mitochondrial anchoring (VDAC association)], [High if confirmed — anchoring physically couples glycolytic ATP to ETC and regulates apoptosis], [~15--25% of gated yield via lost mito-glycolytic coupling], [Hard — requires muscle biopsy with subcellular fractionation or immuno-EM], [Long-term — HK2-displacement compounds are research tools only], [Muscle biopsy (immuno-EM)], [3],
    [G6: PFK1 allosteric regulation], [Low — PFK1 is rate-limiting but its dysregulation would already be detected in G4], [Overlaps with G4], [Moderate — metabolomic F2,6BP measurement is feasible], [Long-term — no approved modulators], [Blood draw (metabolomics)], [3],
  )
) <tab:step2-gap-priorities>

G4 is the highest-priority Step 2 gap because it is the single measurement that would resolve whether the reduced basal glycolysis observed by Mandarano et al.\ in PBMCs  reflects enzyme-level lesions or upstream substrate limitation. No Step 2 gap is _individually essential_ to the chain; glycolysis is a rate-limiting pipeline with parallel isoforms, so partial failure produces graded capacity loss rather than shutdown.

== Step 3: Pyruvate Dehydrogenase Complex (PDC)
<sec:step3-pdc>

=== Normal Function and ATP Accounting

Pyruvate produced by glycolysis crosses both mitochondrial membranes via the mitochondrial pyruvate carrier (MPC) and undergoes oxidative decarboxylation by PDC to yield acetyl-CoA, CO#sub[2], and NADH. PDC is the irreversible commitment step from glycolysis to the TCA cycle. Direct ATP yield is zero (the step produces +2 NADH per glucose, =+5 ATP equivalent gated via the ETC). Gated yield is ~25 ATP per glucose (the aerobic portion); the glycolytic 2 ATP remain available even with PDC blocked. PDC activity is tightly regulated by phosphorylation: PDK1--4 inactivate PDC by phosphorylating the E1 subunit; PDP1--2 reactivate it.

=== Documented ME/CFS Findings and Failure Modes

#achievement(title: [PDK Overactivation Suppresses Pyruvate Entry into the TCA Cycle])[
Fluge et al.\ found significantly increased mRNA expression of *PDK1, PDK2, and PDK4* (but not PDK3) and of the mitochondrial lipoamidase *SIRT4* in peripheral blood mononuclear cells from 200 ME/CFS patients versus 102 healthy controls . Patient serum applied to healthy muscle cells induced increased mitochondrial oxygen consumption while causing excess lactate excretion — a pattern consistent with functional impairment of PDC and compensatory anaerobic metabolism. SIRT4 deacetylates and inhibits the E3 subunit of PDC (dihydrolipoamide dehydrogenase), providing a second inhibitory mechanism parallel to PDK-mediated phosphorylation.
Study: ($n=200$ ME/CFS $+$ 102 controls; transcriptomic and cell-based assay; certainty: 0.50 — findings not yet independently replicated in muscle tissue; partially replicated by downstream metabolomic patterns).
] <ach:fluge2016-pdk>

#warning-env(title: [Replication Status: Partially Replicated])[
The PDK upregulation finding (Fluge 2016) has not been directly replicated in an independent cohort using muscle biopsy; the evidence base is transcriptomic (PBMCs) and cell-based. The closest tissue-level evidence comes from Tomas et al.\ ($n = 9$ CFS, 11 controls), who cultured primary skeletal muscle cells from vastus lateralis biopsies and found that CFS muscle cells cannot oxidise glucose normally while galactose and fatty acid oxidation were preserved — localising the defect upstream of the TCA cycle at the pyruvate→acetyl-CoA link step @Tomas2020substrate. The authors explicitly name PDK as a candidate, but direct PDC activity was not measured. Downstream metabolomic evidence (reduced TCA intermediates, elevated lactate) from multiple independent groups is consistent with PDC impairment but does not isolate this step. In long COVID, muscle biopsies show depleted TCA cycle metabolites, glycolytic fibre shift, and worsened mitochondrial function after PEM provocation @Appelman2024muscle; 31P MRS demonstrates severely prolonged phosphocreatine recovery ($τ_"PCr"$ = 92.5 vs 51.9 s, $p ≤ 0.001$) indicating in vivo OXPHOS impairment @Finnigan2024MRS. ME/CFS-specific muscle biopsies show preferential subsarcolemmal mitochondrial damage by electron microscopy, distinct from the post-COVID pattern @Bizjak2024muscleMito.
]

PDC requires four cofactors, each representing an independent failure mode: thiamine (vitamin B#sub[1]; cofactor for the E1/TPP subunit), lipoic acid (E2 subunit), riboflavin/FAD (E3 subunit, dihydrolipoamide dehydrogenase), and NAD#super[+] (final electron acceptor from E3). Functional depletion of any one cofactor can impair PDC independently of PDK regulation.

#speculation(title: [PDC Cofactor Depletion as an Untested Therapeutic Target])[
*Certainty: 0.35.*
High-dose thiamine and riboflavin are established treatments for thiamine-responsive PDH-deficiency and riboflavin-responsive Complex II deficiency respectively . Naviaux et al.\ identified riboflavin pathway abnormalities among the 20 dysregulated metabolic pathways in ME/CFS . Yet neither high-dose thiamine (600--1800 mg/day) nor riboflavin as standalone interventions have been trialled in ME/CFS . Combined cofactor replacement targeting all four PDC cofactors simultaneously represents an uninvestigated therapeutic approach.

*Testable prediction:* Erythrocyte transketolase activation ratio (functional thiamine status) and riboflavin loading tests will be abnormal in a subgroup of ME/CFS patients, and supplementation will normalize PDC-flux indicators (lactate/pyruvate ratio, acylcarnitine profiles).

*Limitation:* Cofactor replacement addresses only the substrate availability arm of PDC inhibition, not the PDK overactivation arm; combined PDK inhibition plus cofactor repletion may be required.
] <spec:pdc-cofactors>

Two small open-label studies examined sodium dichloroacetate (DCA), a direct PDK inhibitor that restores PDC activity by blocking PDK-mediated phosphorylation of the E1 subunit @Comhaire2018DCA @Comhaire2018DCAresponders. Approximately 37--45% of treatment-resistant ME/CFS patients responded favorably, and six pre-treatment characteristics predicted response with AUC = 0.92, suggesting that only a subgroup has PDC inhibition as a dominant mechanism. DCA carries neurotoxicity risk (peripheral neuropathy) with chronic use and is not approved for ME/CFS; these reports are hypothesis-generating only.

#warning-env(title: [DCA: Very Low Certainty, Significant Toxicity Risk])[
The DCA reports (Comhaire 2018, $n=22$ and $n=35$) are open-label single-investigator studies published in _Medical Hypotheses_ (low editorial threshold). DCA carries risk of peripheral neuropathy with prolonged use. This evidence is insufficient to support clinical use; it provides mechanistic support for the PDK/PDC hypothesis only.
]

A mechanistic bridge between ME/CFS immune dysfunction and muscle-level PDK4 overactivation is provided by Park & Jeoung, who demonstrated in C2C12 skeletal muscle myoblasts that LPS-induced inflammation upregulates PDK4 (but not PDK1/2/3) via JNK phosphorylation, with JNK inhibition preventing both PDK4 upregulation and lactate excess @ParkJeoung2016PDK4. If chronic low-grade inflammation in ME/CFS (elevated TNF-α, IL-6, IL-1β) activates the JNK pathway in muscle, this would drive PDK4-mediated PDC inhibition in the metabolically relevant tissue without requiring the PBMC-to-muscle generalisation that limits the Fluge 2016 finding.

The PDK upregulation finding is conventionally framed as a pathological lesion driving energy deficit. An alternative interpretation — that PDK overactivation may be a protective cellular response to compromised ROS handling rather than a primary cause — is developed in the Cross-Cutting section (Section @spec:pdk-protective below). These framings are reconcilable by MnSOD status: patients with intact antioxidant capacity and elevated PDK represent pathological inhibition (PDK inhibition would help); patients with low MnSOD/GPX4 represent protective restriction (PDK inhibition without antioxidant support may worsen). A stratified DCA trial with baseline antioxidant biomarkers would discriminate between subgroups — but only if the biomarkers used reflect muscle and brain MnSOD/GPX4 status, not only lymphocyte levels. The Shankar 2025 finding is currently lymphocyte-based; a validation study establishing lymphocyte-to-tissue correspondence would be a prerequisite for interpretable stratification.


#speculation(title: [Tissue-Divergent PDK: Brain Resting Lactate vs. Muscle Exertion-Gated PDC Inhibition])[
*Certainty: 0.30.* The Godlewska/Syan 2025 7T MRS finding creates a striking puzzle: elevated brain lactate (pgACC 1.52 vs 1.22 mM) alongside normal resting muscle metabolites . If PDK upregulation were systemic, both tissues should show resting lactate elevation. Three explanations resolve the dissociation:

+ *Tissue-selective PDK isoform expression:* PDK4 dominates in skeletal muscle while PDK2 and PDK3 are more highly expressed in brain. The Fluge 2016 PBMC finding (PDK1/2/4 all upregulated ) may map differently onto each tissue. Brain PDK2/3 upregulation could produce resting lactate elevation; muscle PDK4 upregulation may manifest only under exertion when pyruvate flux increases — explaining normal resting muscle metabolites.
+ *Activity-gated threshold:* PDK4 is acutely upregulated by fasting, exercise, and fatty acid availability. In ME/CFS, the baseline may be near-normal but the PDK4 response to even mild exertion may be exaggerated and recovery delayed — a metabolic trap that produces the characteristic PEM pattern.
+ *Different metabolic reserve margins:* Brain has essentially zero glycogen reserve and relies on continuous glucose oxidation; even modest PDC inhibition immediately elevates lactate. Muscle has substantial glycogen and creatine phosphate buffers that absorb mild PDC inhibition at rest, decompensating only under load.

*Testable predictions:* (1) Exercise-provoked muscle #super[31]P-MRS or venous lactate will show dramatically exaggerated PDK-signature (high lactate, slow PCr recovery) compared to the mild resting abnormality; a paired brain MRS + exercise muscle MRS study would demonstrate the divergence. (2) A muscle biopsy finding only PDK4 elevated (not PDK1/2) would implicate inflammation-driven JNK→PDK4 mechanisms @ParkJeoung2016PDK4 rather than cell-autonomous reprogramming.

*Limitation:* The brain-vs-muscle comparison is a cross-study inference from different populations and modalities. DCA crosses the BBB but carries neurotoxicity risk — paradoxically, the brain compartment showing more resting dysfunction is the one most vulnerable to DCA side effects. No tissue-selective PDK inhibitor delivery method currently exists; pharmacological PDK inhibition cannot be targeted to muscle while sparing brain.
] <spec:pdk-tissue-divergence>

=== Research Gaps at Step 3

PDC sits at a sole-route bottleneck between glycolysis and the TCA cycle, so every Step 3 gap is _high essentiality_ by construction. The open gaps are: (G7) muscle-biopsy replication of the Fluge 2016 PDK1/2/4 upregulation finding ; (G8) direct PDC activity assay in ME/CFS muscle (not just transcriptomic inference); (G9) simultaneous measurement of all four PDC cofactors (thiamine, lipoic acid, riboflavin/FAD, NAD#super[+]) within the same cohort; and (G10) MnSOD-stratified DCA trial design to test the PDK-as-protective reinterpretation (@spec:pdk-protective).

G9 is a confirmed open gap despite existing partial evidence. The closest published approach is Heap et al.\ 1999 ($n = 12$), who simultaneously measured erythrocyte transketolase (thiamine), glutathione reductase (riboflavin), and aspartate aminotransferase (pyridoxine) — finding all three reduced in CFS — but omitted CoQ10, NAD#super[+], magnesium, and lipoic acid @Heap1999vitaminB. Myhill et al.\ 2012 co-measured red cell NAD, plasma CoQ10, and L-carnitine in a clinical audit ($n ≈ 34$ subset) and found only 11% of patients had all three simultaneously within reference ranges  — but the study lacked a control group for cofactor data and the ATP Profile methodology was not reproduced by Tomas et al.\ 2019. Castro-Marrero et al.\ 2015 measured both CoQ10 and NAD#super[+]/NADH in the same RCT ($n = 73$) but only these two cofactors . A systematic review of 45 studies on vitamins and minerals in CFS found little evidence for individual deficiencies but critically excluded CoQ10 and NAD#super[+] from the primary analysis despite their being the cofactors with the strongest mechanistic rationale @Joustra2017micronutrients. A 2025 supplementation review ($n = 809$ across 14 studies) identified CoQ10+NADH as the combination with the strongest fatigue-reduction signal but noted that no study measured all relevant cofactors at baseline @Dorczok2025supplements. Lipoic acid and iron-sulfur cluster status have never been measured in any ME/CFS study.

#figure(
  kind: table,
  caption: [Step 3 (PDC) research gap prioritisation. PDC is a sole-route pipeline gate; essentiality is high for every gap.],
  table(
    columns: (auto, auto, auto, auto, auto, auto, auto),
    align: (left, left, left, left, left, left, center),
    table.header([*Gap*], [*Essentiality*], [*Worst-case impact*], [*Tractability*], [*Therapeutic leverage*], [*Measurement*], [*Priority*]),
    [G7: Muscle-biopsy replication of Fluge 2016 PDK upregulation], [High — confirms or refutes the anchor finding; indirect tissue support from Tomas 2020 (glucose oxidation defect at PDC link step) and Bizjak 2024 (subsarcolemmal mito damage)], [Determines whether the current PDC framing is correct; up to ~83% of gated yield], [Hard — muscle biopsy qPCR + PDK Western; inflammation→PDK4 mechanism via JNK available (Park 2016)], [Near-term — DCA is available (Comhaire 2018)], [Muscle biopsy (qPCR + Western)], [1],
    [G8: Direct PDC activity assay in ME/CFS muscle], [High], [Same as G7], [Hard — radioactive pyruvate decarboxylation assay requires specialist lab], [Near-term], [Muscle biopsy (specialist assay)], [1],
    [G9: Combined cofactor measurement (thiamine + LA + riboflavin + NAD#super[+])], [High — any single cofactor failure inactivates PDC; partial data exist (Heap 1999: 3 B vitamins; Myhill 2012: NAD+CoQ10+carnitine; Castro-Marrero 2015: CoQ10+NAD) but no study covers all four PDC cofactors], [Up to 83% if any cofactor is limiting], [Easy (individual assays all standardised) to moderate (integration); lipoic acid and Fe-S cluster status have never been measured in ME/CFS], [Immediate — all four cofactors are OTC supplements; CoQ10+NADH shows strongest supplementation signal (Dorczok 2025 systematic review)], [Blood draw (standardised assays)], [1],
    [G10: MnSOD-stratified DCA trial], [Dependent on @spec:pdk-protective], [Intervention test, not a mechanism gap], [Moderate — requires stratified recruitment], [Immediate — DCA is orphan-drug available], [Blood draw (stratified RCT)], [2],
  )
) <tab:step3-gap-priorities>

All four gaps at Step 3 are high-essentiality because PDC is a sole-route bottleneck. G7--G9 are priority 1; G10 is priority 2 as an interventional follow-up contingent on the protective/pathological reinterpretation being tested. PDC is one of the two _individually essential_ steps in the chain (the other is Step 7 ANT export) — failure cannot be compensated by any parallel route.

== Step 4: Carnitine Shuttle and Beta-Oxidation
<sec:step4-carnitine-betaox>

=== Normal Function and ATP Accounting

Long-chain fatty acids cannot cross the inner mitochondrial membrane unaided. They require conjugation to carnitine by CPT1 on the outer membrane, translocation by a translocase, and reconversion by CPT2 on the inner membrane. Inside the matrix, β-oxidation cleaves acetyl-CoA units from the chain in repeated cycles, each producing 1 NADH, 1 FADH#sub[2], and 1 acetyl-CoA. Direct ATP yield on a _glucose basis_ is zero (this step is fatty-acid-specific); for palmitate, one molecule yields +7 FADH#sub[2] + 7 NADH + 8 acetyl-CoA, converting via the TCA cycle and ETC to ~106 ATP total.

=== Documented ME/CFS Findings and Failure Modes


Serum carnitine is significantly lower in ME/CFS patients, and lower carnitine levels correlate with worse functional capacity . A controlled crossover study of L-carnitine (3 g/day) and acetyl-L-carnitine (Vermeulen 2004, n=30) found improvement in 12 of 18 clinical parameters and 59--63% responder rates . Germain et al.\ confirmed reduced acylcarnitine species in two independent ME/CFS cohorts, providing metabolomic corroboration of impaired beta-oxidation flux .

#warning-env(title: [L-Carnitine Evidence: Preliminary — Placebo Effect Not Excluded])[
The Vermeulen 2004 crossover ($n=30$; single-group; not independently replicated) cannot exclude placebo effects, which typically account for 40--60% response rates in open-label fatigue trials. Carnitine has multiple biological actions beyond the CPT1 shuttle (acetyl buffering, membrane effects, neurotransmitter precursor roles), so improvement does not specifically confirm beta-oxidation rescue as the mechanism.
]

*NOT STUDIED:* CPT1 activity and its regulation by malonyl-CoA (the master switch between glucose and fatty acid utilization) has not been characterized in ME/CFS. In normal physiology, AMPK suppresses ACC activity, lowers malonyl-CoA, and opens CPT1 when energy is needed. Whether this AMPK--ACC--malonyl-CoA axis is dysfunctional in ME/CFS is unknown. Individual beta-oxidation enzyme activities (VLCAD, LCAD, MCAD, SCAD) and the electron transfer flavoprotein-ubiquinone oxidoreductase (ETF-QO) that bridges beta-oxidation to the ubiquinone pool have not been measured in ME/CFS muscle tissue.

Beta-oxidation is entirely FAD-dependent: all four acyl-CoA dehydrogenases (VLCAD, LCAD, MCAD, SCAD), the ETF, and ETF-QO require riboflavin-derived FAD. If the riboflavin pathway abnormality identified by Naviaux et al.\ reflects FAD depletion, it would simultaneously impair every step of beta-oxidation. This is identical to the biochemical picture in multiple acyl-CoA dehydrogenase deficiency (MADD), for which riboflavin 400 mg/day is standard treatment  — yet riboflavin has not been formally trialled in ME/CFS.

=== Additional Lipid Metabolism Findings


==== Fatty Acid Oxidation Defects

Fatty acids are the primary fuel for sustained activity:

    - *Carnitine shuttle*: Transports fatty acids into mitochondria
    - *Beta-oxidation*: Sequential removal of 2-carbon units
    - *Acetyl-CoA generation*: Feeds into Krebs cycle

ME/CFS abnormalities include:

    - Reduced carnitine levels in some patients
    - Elevated acylcarnitines suggesting incomplete oxidation
    - Impaired utilization of fatty acids during exercise
    - Earlier shift to glucose oxidation

==== Membrane Lipid Alterations

Cell membrane composition affects function:

    - *Phospholipid changes*: Altered fatty acid profiles
    - *Reduced omega-3 fatty acids*: May affect inflammation and membrane fluidity
    - *Oxidized lipids*: Accumulate due to peroxidation
    - *Cholesterol*: May affect membrane rigidity and signaling

==== Ceramide Metabolism

Ceramides are signaling lipids with metabolic effects:

    - *Elevated ceramides*: Found in some ME/CFS studies
    - *Insulin resistance*: Ceramides impair insulin signaling
    - *Mitochondrial effects*: Can promote apoptosis
    - *Inflammation link*: Produced in response to inflammatory signals


=== Research Gaps at Step 4

Five gaps are open at Step 4: (G11) CPT1 activity and malonyl-CoA regulation of the carbohydrate/fat fuel switch; (G12) individual acyl-CoA dehydrogenase activities (VLCAD, LCAD, MCAD, SCAD); (G13) ETF and ETF-QO function (the FAD-dependent bridge from β-oxidation to the ubiquinone pool); (G14) carnitine transporter (OCTN2/SLC22A5) expression and function; and (G15) a formal riboflavin standalone trial, given that riboflavin-responsive multiple acyl-CoA dehydrogenase deficiency (MADD) produces a clinically similar syndrome . Prioritisation per @sec:step1-substrate-delivery.

#figure(
  kind: table,
  caption: [Step 4 (Carnitine shuttle / β-oxidation) research gap prioritisation.],
  table(
    columns: (auto, auto, auto, auto, auto, auto, auto),
    align: (left, left, left, left, left, left, center),
    table.header([*Gap*], [*Essentiality*], [*Worst-case impact*], [*Tractability*], [*Therapeutic leverage*], [*Measurement*], [*Priority*]),
    [G11: CPT1/malonyl-CoA switch (= G2 at Step 1, restated)], [High — sole gate for long-chain FA entry], [~100% of fatty-acid-derived ATP; variable on glucose-basis], [Moderate], [Near-term — metformin, AMPK activators], [Blood draw (specialist LC-MS)], [1],
    [G12: Individual β-oxidation enzyme activities (VLCAD/LCAD/MCAD/SCAD)], [Medium — chain-length redundancy but not complete; in PASC (not ME/CFS), plasma acylcarnitines are elevated across all chain lengths (Guntur 2022, $n = 29$ PASC vs 30 controls @Guntur2022PASCfattyacid), consistent with proximal FAO impairment or shuttle limitation rather than a single enzyme defect — but this is a small cross-disease sample and direct enzyme activities remain unmeasured in both conditions], [Up to ~60% of fatty-acid-derived ATP if one enzyme fails], [Hard — muscle biopsy with chain-length-specific assays], [Near-term — riboflavin (MADD precedent)], [Muscle biopsy (chain-length-specific)], [2],
    [G13: ETF / ETF-QO function], [High — sole bridge from β-oxidation FADH#sub[2] to the ubiquinone pool], [~100% of fatty-acid-derived ATP if ETF-QO fails], [Hard — muscle biopsy with electron transfer assay], [Near-term — riboflavin], [Muscle biopsy (electron transfer assay)], [1],
    [G14: Carnitine transporter (OCTN2/SLC22A5)], [High — sole route for carnitine uptake into muscle cells], [~100% of fatty-acid-derived ATP in muscle], [Moderate — serum carnitine + urinary carnitine (standard)], [Immediate — L-carnitine supplementation is OTC and tolerated], [Blood draw (serum + urine carnitine)], [1],
    [G15: Formal riboflavin RCT], [N/A — intervention gap; no standalone riboflavin trial in ME/CFS or Long COVID exists ; a large patient survey ($n = 3{,}925$) provides observational context but not RCT-level evidence @Eckey2025PRO], [Bounded by G12+G13 impact], [Easy — riboflavin 400 mg/day is cheap and well tolerated], [Immediate], [Blood draw (RCT)], [1],
  )
) <tab:step4-gap-priorities>

Step 4 has three priority-1 mechanism gaps (G11, G13, G14) because long-chain fatty acid oxidation has multiple _sole-route_ components (one carnitine transporter, one ETF bridge, one CPT1 switch). G15 is priority 1 as an intervention because riboflavin is already in common use for MADD and the ME/CFS metabolomic pattern is consistent with flavin deficit. Step 4 is _conditionally essential_: cells that can fully rely on glucose can survive without fatty acid oxidation, but exertion-tolerant cells (muscle, heart) depend on it, and ME/CFS patients consistently show acylcarnitine patterns suggesting the step is perturbed .

== Step 5: Krebs Cycle — Enzyme-Level Failure Modes
<sec:step5-krebs>

=== Normal Function and ATP Accounting

The Krebs cycle generates NADH and FADH#sub[2] for the ETC via eight sequential enzymatic steps. Per glucose (two turns of the cycle): direct yield is +2 GTP, +6 NADH, and +2 FADH#sub[2]; gated yield through the ETC is ~20 ATP (≈67% of total glucose-basis ATP). Each enzymatic step is a potential point of failure; the analysis below focuses on those most affected by the ME/CFS biology (ROS, calcium, cofactor supply).

=== Documented ME/CFS Findings and Failure Modes

The Krebs cycle generates NADH and FADH#sub[2] for the ETC via eight sequential enzymatic steps. Naviaux et al.\ found decreased TCA intermediates (citrate, isocitrate, malate, fumarate) in the ME/CFS metabolome, indicating globally reduced TCA flux . However, the specific enzymatic bottleneck(s) have not been identified.

*Aconitase (step 2: citrate → isocitrate).* Aconitase contains a [4Fe--4S] iron-sulfur cluster that is exquisitely sensitive to superoxide: a single molecule of superoxide inactivates the cluster and halts the enzyme. With Shankar et al.\ confirming elevated ROS and decreased MnSOD in ME/CFS lymphocytes , aconitase inactivation is a mechanistically predicted consequence. Yamano et al.\ ($n = 67$ CFS, 66 controls) found citrate, isocitrate, and malate significantly reduced in CFS plasma, with the pyruvate/isocitrate ratio elevated, and explicitly proposed aconitase inactivation via chronic oxidative stress as the explanation . Ciregia et al.\ found aconitase protein (ACO2) _upregulated_ 1.9-fold ($p = 0.02$) in a CFS cohort ($n = 45 + 45$) via proteomics @Ciregia2016proteomics — paradoxically, this is consistent with compensatory overexpression of an enzyme that is being oxidatively destroyed: cells produce more aconitase to compensate for functional inactivation by ROS. Despite this convergent indirect evidence, aconitase enzymatic activity has never been directly measured in ME/CFS tissue or cells (G16).

*Alpha-ketoglutarate dehydrogenase complex (KGDHC, step 4).* KGDHC has identical cofactor requirements to PDC (thiamine, lipoic acid, riboflavin/FAD, NAD#super[+]) and shares the same E2/E3 architecture, making it vulnerable to the same failure modes. KGDHC is exquisitely sensitive to oxidative stress: Tretter & Adam-Vizi demonstrated 40--50% inhibition at 0.1--0.5 mM H#sub[2]O#sub[2], irreversible HNE modification of E2 lipoic acid residues, peroxynitrite-mediated E1/E2 tyrosine nitration, and a positive feedback loop where elevated NADH/NAD#super[+] drives E3 to generate additional ROS @TretterAdamVizi2005 — every one of these inactivating conditions is independently documented in ME/CFS. A critically under-exploited connection: Fluge et al.\ documented SIRT4 upregulation in ME/CFS PBMCs  but tested only PDC consequences. SIRT4 is a mitochondrial lipoamidase that also acts on the E2 subunit of KGDHC — its upregulation would impair KGDHC in parallel with PDC.

Indirect metabolomic evidence supports a functional KGDHC block. Che et al.\ ($n = 106$ ME/CFS, 91 controls) found both $α$-ketoglutarate and succinate elevated in ME/CFS plasma @Che2022peroxisomal — substrate accumulation upstream and product accumulation downstream of KGDHC, consistent with impaired flux through the step. More strikingly, Germain et al.\ found that $α$-ketoglutarate was the second most significant metabolite distinguishing ME/CFS from controls after exercise: controls showed an $α$-KG increase while ME/CFS patients showed a _decrease_ @Germain2022exercise — an inverse trajectory consistent with selective KGDHC inhibition under metabolic stress, when NADH/NAD#super[+] rises and oxidative burden increases. Despite this convergent indirect evidence, KGDHC activity has never been directly measured in ME/CFS tissue or cells (G17).

*Succinate dehydrogenase (Complex II, step 6).* Succinate dehydrogenase is the only enzyme that participates in both the TCA cycle and the ETC. It contains iron-sulfur clusters and is the entry point for FADH#sub[2] electrons into the ubiquinone pool. It is therefore simultaneously vulnerable to ROS (via iron-sulfur cluster damage) and to CoQ10 deficiency (via impaired electron acceptance).

*Iron-sulfur cluster assembly as a systemic bottleneck.* Aconitase, KGDHC, Complex I (which contains eight [Fe--S] clusters), Complex II, and ETF-QO all depend on iron-sulfur clusters assembled by the ISCU machinery. ISCU mutations cause exercise intolerance, myopathy, and lactic acidosis — a syndrome with significant clinical overlap with ME/CFS . ISCU function has not been studied in ME/CFS. MnSOD decrease (Shankar 2025) would accelerate superoxide-mediated destruction of all iron-sulfur proteins simultaneously, creating a multi-enzyme failure pattern that could amplify the effects of any primary Complex I dysfunction.


=== Research Gaps at Step 5

Six gaps at Step 5 focus on individual TCA-enzyme measurement and the iron-sulfur cluster assembly machinery: (G16) aconitase activity (predicted low given ROS-vulnerable [4Fe--4S] cluster); (G17) KGDHC activity (shares PDC cofactors, likely co-impaired); (G18) succinate dehydrogenase (Complex II) activity; (G19) isocitrate dehydrogenase and malate dehydrogenase (both NAD#super[+]-dependent, relevant to the NAD+ gap at Step 6); (G20) ISCU iron-sulfur cluster assembly machinery; and (G21) aconitase as a biomarker of mitochondrial superoxide.

#figure(
  kind: table,
  caption: [Step 5 (Krebs cycle) research gap prioritisation.],
  table(
    columns: (auto, auto, auto, auto, auto, auto, auto),
    align: (left, left, left, left, left, left, center),
    table.header([*Gap*], [*Essentiality*], [*Worst-case impact*], [*Tractability*], [*Therapeutic leverage*], [*Measurement*], [*Priority*]),
    [G16: Aconitase activity], [High — sole TCA step 2; no isoform redundancy; indirect support from reduced isocitrate (Yamano 2016) and compensatory ACON protein upregulation (Ciregia 2016)], [~67% of gated yield (entire TCA downstream)], [Moderate — aconitase activity assay is standardised; citrate/isocitrate ratio is a non-invasive proxy], [Long-term — ROS reduction only; aconitase also serves as mitochondrial superoxide biomarker (G21)], [Blood draw (citrate/isocitrate ratio) or muscle biopsy], [1],
    [G17: KGDHC activity], [High — sole TCA step 4; indirect metabolomic support (elevated α-KG + succinate, Che 2022; inverse exercise α-KG trajectory, Germain 2022); SIRT4 E2 lipoamidase mechanism (Fluge 2016); 40--50% ROS inhibition at physiological H#sub[2]O#sub[2] (Tretter 2005)], [~50% of gated yield downstream], [Moderate — NADH production assay at 340 nm is standardised], [Immediate — cofactor supplementation (thiamine, LA, riboflavin)], [Muscle biopsy (NADH assay, 340 nm)], [1],
    [G18: Succinate dehydrogenase / Complex II], [High — sole TCA step 6 and ETC entry point; open for ME/CFS specifically — Long COVID biopsy data show reduced Complex II flux (Colosio 2023 , already cited) but ME/CFS-specific SDH histochemistry has not been formally reported in modern cohorts], [~30% of gated yield], [Moderate — SDH histochemistry is routine], [Near-term — riboflavin], [Muscle biopsy (SDH histochemistry)], [1],
    [G19: IDH + MDH activity], [Medium — shared with NAD#super[+] pool availability; IDH2 protein decreased in ME/CFS PBMCs by SWATH-MS proteomics (Sweetman 2020, $n = 11$ @Sweetman2020proteomics) — protein abundance only, not enzyme activity], [Covered by Step 6 NAD#super[+] gap], [Moderate], [Immediate — NAD#super[+] precursors (NR/NMN)], [Muscle biopsy], [2],
    [G20: ISCU iron-sulfur cluster assembly], [High — upstream of aconitase, Complex I, Complex II, ETF-QO], [Multi-step cascade; could zero-out ~80% of gated yield], [Hard — muscle biopsy with [Fe-S] cluster reconstitution], [Long-term], [Muscle biopsy (Fe-S reconstitution)], [2 (high impact but hard to measure and no immediate therapy)],
    [G21: Aconitase as ROS biomarker], [N/A — biomarker repurposing], [Dependent on G16], [Moderate], [Near-term — could stratify ROS interventions], [Blood draw (citrate/isocitrate proxy) or muscle biopsy], [2],
  )
) <tab:step5-gap-priorities>

G16, G17, and G18 are priority 1: each is a sole-route TCA enzyme with standardised activity assays and either immediate (cofactor) or near-term (riboflavin) therapeutic anchors. G20 (ISCU) is the highest-impact single gap but is demoted to priority 2 because the measurement is very difficult and no immediate therapy exists — resolving it would require a multi-year research programme whereas G17 could be closed in a single cohort study.

Step 5 as a whole is _individually essential_ on the glucose-oxidation branch: there is no parallel path from acetyl-CoA to NADH/FADH#sub[2] for the ETC. Any severe TCA enzyme failure shuts down aerobic ATP production on carbohydrates. The chain has compensation through ketone-body oxidation (which bypasses glycolysis and PDC but still feeds into the TCA cycle at acetyl-CoA), so Step 5 remains essential even under the ketogenic bypass hypothesis discussed in @sec:metabolism-summary.

#speculation(title: [Aconitase Inactivation as the Iron Source for Mitochondrial Ferroptotic Stress])[
*Certainty: 0.30.* When superoxide attacks aconitase's [4Fe-4S] cluster, the enzyme releases labile iron (Fe#super[2+]) into the mitochondrial matrix. This iron catalyses the Fenton reaction (Fe#super[2+] + H#sub[2]O#sub[2] $arrow.r$ OH$dot$ + OH#super[-] + Fe#super[3+]), generating hydroxyl radicals that attack inner mitochondrial membrane polyunsaturated fatty acids. If MnSOD is reduced (as documented by Shankar 2025 ), superoxide is elevated, aconitase continuously loses its cluster iron, and GPX4 (elevated 1.9× as a compensatory response but potentially enzymatically insufficient ) may be unable to clear the resulting lipid peroxides. This creates a mechanistic chain: reduced MnSOD $arrow.r$ elevated O#sub[2]#super[$dot -$] $arrow.r$ aconitase [4Fe-4S] destruction $arrow.r$ labile iron release $arrow.r$ Fenton chemistry $arrow.r$ lipid peroxidation $arrow.r$ GPX4 overwhelmed $arrow.r$ sub-lethal ferroptotic stress. Aconitase is not merely a TCA cycle casualty of oxidative stress — it may be the _iron donor_ that converts a mitochondrial ROS problem into a membrane damage problem, bridging the energy metabolism deficit (this chapter) to the ferroptosis hypothesis.

A parallel cytosolic mechanism amplifies the effect. Cytosolic aconitase (ACO1) moonlights as Iron Regulatory Protein 1 (IRP1): when its [4Fe-4S] cluster is destroyed by oxidative stress, ACO1 gains RNA-binding activity, upregulating transferrin receptor (increasing iron import) while suppressing ferritin (reducing iron storage) and ferroportin (reducing iron export). The net result is intracellular labile iron accumulation despite normal or low serum ferritin — standard iron panels measure serum levels but not intracellular labile iron, creating a diagnostic blind spot through which Fenton-chemistry-driven damage could proceed undetected.

*Testable predictions:* (1) Mitochondrial labile iron (calcein-AM quenching) will be elevated in ME/CFS PBMCs and will inversely correlate with ACO2 enzymatic activity. (2) IRP1 RNA-binding activity (EMSA) will be elevated while ACO1 enzymatic activity is reduced. (3) Post-exercise C4a elevation (documented in ME/CFS) will correlate with aconitase inactivation markers.

*Limitation:* The entire chain is inferred from general biochemistry and indirect ME/CFS data; no step has been directly demonstrated in ME/CFS tissue. Alternative sources of mitochondrial labile iron exist — impaired ferritin synthesis, ISCU iron-sulfur cluster assembly failure (G20), and heme degradation — and any of these could drive Fenton chemistry independently of aconitase inactivation. The Ciregia 2016 compensatory protein upregulation @Ciregia2016proteomics is consistent with but does not prove this mechanism.
] <spec:aconitase-ferroptosis-bridge>

#speculation(title: [KGDHC as the Primary TCA Bottleneck in ME/CFS — More Vulnerable and More Consequential Than PDC])[
*Certainty: 0.35.* The ME/CFS field has focused on PDC as the critical TCA entry-point lesion , but KGDHC may be more vulnerable and more consequential for three reasons:

+ *ROS sensitivity hierarchy:* KGDHC is inhibited 40--50% at oxidative-stress-range H#sub[2]O#sub[2] concentrations (0.1--0.5 mM, as used in neuronal oxidative stress models) @TretterAdamVizi2005, making it the most oxidant-sensitive TCA enzyme. The KGDHC complex contains multiple redox-sensitive cysteine residues @Starkov2004KGDHC, contributing to its ROS vulnerability.
+ *SIRT4 dual-targeting:* Fluge 2016 documented SIRT4 upregulation in ME/CFS PBMCs . SIRT4 has demonstrated lipoamidase activity on PDC-E2 and likely acts on KGDHC-E2 by the same mechanism (both share the dihydrolipoamide acetyltransferase architecture, though KGDHC-E2 activity has not been directly tested). The field has discussed only the PDC consequence. If SIRT4 inhibits both complexes simultaneously, KGDHC impairment may be the _larger_ metabolic consequence because KGDHC sits mid-cycle where the substrate ($alpha$-ketoglutarate) is harder to replenish via anaplerosis, whereas PDC has glucose as an effectively unlimited upstream substrate.
+ *The "mid-cycle trap":* When PDC is impaired, pyruvate backs up but the cell can shunt to lactate (documented in ME/CFS). When KGDHC is impaired, $alpha$-KG backs up but there is no analogous overflow valve mid-cycle — the cell must either reverse the cycle (thermodynamically unfavourable) or export $alpha$-KG, creating a more severe metabolic trap.

*Testable prediction:* Paired PDC + KGDHC activity measurement in ME/CFS PBMCs or muscle will show KGDHC reduction _exceeding_ PDC reduction in magnitude, particularly in patients with longer disease duration (where cumulative ROS damage would accumulate on redox-sensitive cysteine residues). Post-exercise KGDHC activity (PBMCs at 4h and 24h post-CPET) should decline in ME/CFS but not controls, with the magnitude of decline correlating with PEM severity.

*Competing explanation:* If PDC is the sole rate-limiting step (the current consensus framing), KGDHC activity should be normal or elevated (compensatory) rather than reduced. A simultaneous measurement of both enzymes would resolve this directly.

*Limitation:* KGDHC activity has never been measured in any ME/CFS study. The entire argument is from general enzymology and indirect metabolomics.
] <spec:kgdhc-primary-bottleneck>

#speculation(title: [The Glutathionylation Depletion Spiral: Duration-Dependent KGDHC Vulnerability])[
*Certainty: 0.25.* Chen et al.\ @Chen2016glutathionylation demonstrated a duration-dependent switch in KGDHC regulation: acute KGDHC reduction _increases_ glutathionylation by 114% (a protective modification), but chronic reduction _depletes_ glutathionylation by 40% (removing protection). This maps onto ME/CFS natural history:

+ *Early phase (months to low-single-digit years):* Viral trigger reduces KGDHC via ROS and SIRT4. Glutathionylation increases as a protective response. Some patients recover during this window — possibly because glutathionylation protection is still intact.
+ *Transition phase:* Chronic KGDHC reduction exhausts glutathionylation capacity. The protective mechanism fails. ROS damage becomes cumulative rather than buffered.
+ *Chronic phase:* Glutathionylation is depleted. KGDHC is now unprotected against ROS. Further inactivation occurs via a self-amplifying spiral: reduced KGDHC $arrow.r$ reduced glutathionylation capacity $arrow.r$ more ROS damage $arrow.r$ further KGDHC reduction.

*Testable prediction:* KGDHC activity measured in PBMCs will show an inverse correlation with disease duration, with a non-linear acceleration point at some disease stage (the precise timing is unknown — the phase boundaries are conceptual, not empirically calibrated). The same intervention (cofactor repletion) will have _different efficacy depending on disease duration_ — effective in the acute phase (where glutathionylation protection is intact) but ineffective in the chronic phase (where the protective mechanism is exhausted). Glutathionylation status would serve as a biomarker of treatment responsiveness.

*Limitation:* The Chen 2016 finding was in neuronal culture, not in ME/CFS tissue. The time-course mapping to years of disease is extrapolated from a cellular phenomenon lasting hours — the correspondence is conceptual, not quantitative.
] <spec:glutathionylation-spiral>

#speculation(title: [Itaconate--Aconitase Double Block: Two Independent Mechanisms Converge at TCA Step 2])[
*Certainty: 0.25.* Aconitase activity at TCA step 2 (citrate $arrow.r$ isocitrate) may be impaired by two simultaneous, mechanistically independent mechanisms:

+ *Substrate diversion:* ACOD1 (immune responsive gene 1) shunts cis-aconitate — the obligate intermediate between citrate and isocitrate — toward itaconate production. Thomas & Peterson @ThomasPeterson2025zebrafish demonstrated in a zebrafish model that ACOD1 overexpression alone produces a fatigue phenotype (preprint; not peer-reviewed; phylogenetically remote from human ME/CFS). If ACOD1 is upregulated in ME/CFS immune cells (consistent with the metabolic safe mode model in Chapter @ch:integrative-models), it directly reduces aconitase substrate availability.
+ *Enzyme inactivation:* ROS destroys the aconitase [4Fe-4S] cluster, reducing enzymatic capacity (detailed in @spec:aconitase-ferroptosis-bridge above).

If both mechanisms produce partial rather than complete inhibition, the combined effect would be more severe than either mechanism alone. Critically, they operate through different pathways: the itaconate shunt is _intentional_ immune metabolic reprogramming (part of the safe mode), while aconitase inactivation is _collateral damage_ from ROS. This means they can be independently modulated — and failing to address both would produce incomplete therapeutic response.

*Testable prediction:* In ME/CFS PBMCs, itaconate levels will be elevated AND ACO2 activity will be reduced simultaneously. The citrate/isocitrate ratio will be more severely disrupted than predicted by either mechanism alone. ACOD1 suppression (genetic knockdown or validated pharmacological inhibitors, once available) will partially restore isocitrate production, but full restoration will additionally require ROS reduction.

*Limitation:* ACOD1 expression has not been measured in ME/CFS cells. The itaconate shunt is best characterised in macrophages; its relevance to muscle and neuronal aconitase is unclear.
] <spec:itaconate-aconitase-double-block>

#speculation(title: [Forced Exit from Metabolic Safe Mode: Temporal Illusion of Exercise Benefit])[
*Certainty: 0.25.* Cells in ME/CFS may occupy a low-energy "safe mode" characterised by itaconate-mediated metabolic suppression and reduced TCA flux . Exercise forcibly increases metabolic demands, potentially driving cells out of this conserved state. This forced exit could produce a transient increase in metabolic activity---experienced subjectively as improved energy---followed by a deeper crash as the system re-enters safe mode with depleted reserves. If outcome questionnaires are administered during the "forced activation" window, patients may report improvement, while the subsequent crash would be missed by standard assessment timepoints. Not yet replicated---temporal metabolic dynamics during exercise in ME/CFS have not been profiled.

*Testable prediction.* Multi-timepoint metabolomics during an exercise trial should show transient mid-intervention aerobic marker increase, then deeper suppression at 2 weeks post-intervention versus baseline.
] <spec:forced-exit-safe-mode>

== Step 6: Key Cofactors as Cross-Cutting Failure Modes
<sec:step6-cofactors>

=== Normal Function and ATP Accounting

Several cofactors are required by multiple steps in the chain simultaneously. Their depletion therefore impairs energy metabolism at several nodes at once. Direct yield from this step is zero (cofactors are not consumed stoichiometrically in catalysis), but gated yield is up to ~25 ATP (Steps 3, 5, and the ETC combined), because a single cofactor failure can disable multiple enzymatic steps. This makes cofactor depletion uniquely high-leverage for therapy and uniquely hard to diagnose (the metabolomic signature is indistinguishable from direct enzymatic damage).

=== Documented ME/CFS Findings and Failure Modes

Several cofactors are required by multiple steps in the chain simultaneously. Their depletion therefore impairs energy metabolism at several nodes at once.

*Coenzyme Q10 (CoQ10/ubiquinone).* CoQ10 is the mobile electron carrier between Complexes I/II and Complex III, and also a lipid-soluble antioxidant in the inner mitochondrial membrane. Reduced CoQ10 is among the most replicated findings in ME/CFS: Holden et al.'s systematic review of 19 studies identified it in every study that measured it @Holden2020mitosysrev. The inverse correlation between CoQ10 levels and fatigue/autonomic symptom severity has been documented , and a randomised controlled trial of CoQ10 combined with NADH showed improved heart rate recovery . CoQ10 deficiency thus simultaneously impairs electron transfer (reducing ATP yield), increases electron leakage at Complexes I and III (increasing ROS), and reduces membrane antioxidant protection.

*Cardiolipin.* Cardiolipin is a phospholipid unique to the inner mitochondrial membrane, required for the structural stability of all five ETC complexes, ANT, and the cristae architecture that concentrates the proton gradient. Its oxidation by ROS impairs all IMM-dependent functions simultaneously. Historical data report anti-cardiolipin antibodies in ME/CFS , and Molnar et al.\ highlight cardiolipin-targeting elamipretide (the SS-31 peptide, currently in trials for Barth syndrome and heart failure) as an uninvestigated therapeutic candidate for Long COVID mitochondrial dysfunction  — with equivalent theoretical rationale in ME/CFS.

*NAD#super[+]/NADH ratio.* NAD#super[+] is required by the E3 subunits of both PDC and KGDHC, by isocitrate dehydrogenase (TCA step 3), by malate dehydrogenase (TCA step 8), by Complex I, and by the sirtuin family of metabolic regulators. Two independent mechanisms threaten NAD#super[+] availability in ME/CFS: the kynurenine pathway diverts tryptophan away from NAD#super[+] synthesis, and PARP overactivation (responding to oxidative DNA damage) consumes NAD#super[+] as a substrate. Germain et al.\ found nicotinate and nicotinamide metabolism — the NAD#super[+] precursor pathway — significantly disrupted at baseline in female ME/CFS plasma (KEGG $p = 0.0006$, $q = 0.04$; $n = 60 + 45$ controls), even before exercise challenge @Germain2022exercise. Groven et al.\ independently demonstrated that kynurenine metabolite profiles distinguish CFS from fibromyalgia and controls ($n = 49/57/54$, all female): the neuroprotective KA/QA ratio was specifically reduced in CFS ($p = 0.016$), suggesting condition-specific diversion of kynurenine toward the neurotoxic/NAD#super[+]-synthetic branch @Groven2021kynurenine. Neither PARP activity (poly-ADP-ribose quantification) nor CD38 expression has been directly measured in ME/CFS — both depletion mechanisms remain inferred from indirect evidence.

The picture is complicated by the only direct PBMC NAD#super[+] measurement in ME/CFS. Heng et al.\ ($n = 61 + 61$ controls) found NAD#super[+] _elevated_ in ME/CFS white blood cells (300.3 nM vs 257.7 nM), while the ATP/ADP ratio was simultaneously _reduced_ @heng2025mecfs. This pattern — substrate accumulation upstream of a processing block — is consistent with Complex I dysfunction: NAD#super[+] is present but cannot be efficiently reduced to NADH because the ETC cannot accept electrons. It does not refute systemic NAD#super[+] insufficiency: in energy-intensive tissues (skeletal muscle, neurons), PARP overactivation and kynurenine diversion could produce genuine depletion even if PBMCs show substrate backup. No muscle biopsy NAD#super[+] data exist for ME/CFS. An earlier, lower-resolution study found serum NAD(P)H reduced in CFS (8.0 vs 10.8 nmol/mL, $n = 44 + 30$ controls) by fluorescence emission, but the method does not distinguish individual nicotinamide adenine dinucleotides and has not been replicated @Mikirova2012NADPH.

Downstream of NAD#super[+] availability, Missailidis et al.\ reported SIRT3 and SIRT6 downregulation in ME/CFS lymphoblast cell lines (transcriptomics; $n = 23$ vs 17 controls), with SIRT2 upregulated @Missailidis2021substrates. SIRT3 is the principal mitochondrial deacetylase regulating oxidative metabolism; its downregulation is consistent with either reduced NAD#super[+] flux through the mitochondrial compartment or a compensatory transcriptional response to impaired electron transport. The EBV-immortalisation caveat applies.

Therapeutically, the largest NAD#super[+] precursor trial to date — nicotinamide 1000 mg/day ($n = 900$, double-blind RCT in acute COVID-19) — accelerated clinical recovery and, in a post-hoc 6-month follow-up, reduced the burden of post-COVID symptoms (median symptom score 6.5 vs 10.5, $p = 0.010$) @Schreiber2025Nicotinamide. In established Long COVID, nicotinamide riboside (NR) 2000 mg/day ($n = 58$, double-blind RCT) raised blood NAD#super[+] 2.6--3.1-fold within 5 weeks but did not significantly improve the primary cognitive endpoint; secondary outcomes (fatigue, sleep, depression) improved after $≥$10 weeks on NR . No NR or NMN trial has been conducted specifically in ME/CFS. A mechanistic bridge between NAD#super[+] depletion and the persistent interferon-like immune signature observed in ME/CFS was provided by Chini et al., who demonstrated in vitro that chronic NAD depletion triggers mitochondrial DNA leakage into the cytoplasm via VDAC1, activating the cGAS-STING pathway and inducing a Type I interferon response indistinguishable from viral infection @Chini2025NADInterferon — a candidate explanation for why post-viral ME/CFS may sustain an innate immune activation state even after pathogen clearance.

*Riboflavin (FAD precursor).* FAD is required by Complex I (as FMN), Complex II, the E3 subunits of both PDC and KGDHC, all four acyl-CoA dehydrogenases in beta-oxidation, ETF, ETF-QO, and glutathione reductase. Three independent lines of evidence now converge on riboflavin pathway disruption in ME/CFS. First, Naviaux et al.\ identified riboflavin pathway dysregulation among the 20 abnormal metabolic pathways in their plasma metabolomics study, with FAD decreased in both male and female CFS patients . Second, Baraniuk found riboflavin and FMN levels lower in ME/CFS cerebrospinal fluid than in sedentary controls ($n = 45 + 20$), with Riboflavin Metabolism enriched among significantly different CSF metabolite pathways — extending the deficit from plasma to the central nervous system @Baraniuk2025CSFmetabolomics. Third, Heap et al.\ measured erythrocyte glutathione reductase (GTR) basal activity in CFS ($n = 12 + 18$ controls) and found it significantly reduced (6.13 vs 7.42 U/g Hb, $p < 0.04$) @Heap1999vitaminB — however, they measured basal enzyme activity only, not the activation coefficient ratio (EGRAC), so the result cannot distinguish between reduced enzyme protein mass and functional FAD depletion. The EGRAC assay (ratio of GTR activity with and without exogenous FAD) remains the gold-standard functional riboflavin biomarker and has never been performed in ME/CFS (G23).

Despite this converging evidence, riboflavin as a standalone intervention has never been formally trialled in ME/CFS  — an absence notable given three features that would make a pilot trial low-risk and potentially informative. First, riboflavin-responsive forms of multiple acyl-CoA dehydrogenase deficiency (RR-MADD, typically ETFDH mutations) produce a clinically similar syndrome of fatigue, exercise intolerance, and proximal myopathy that responds to riboflavin 100--400 mg/day; a fatigue-dominant MADD phenotype without overt myopathy has been reported in ETFDH c.1130T>C carriers. Second, riboflavin 400 mg/day is an evidence-based migraine prophylactic (59% responder rate vs 15% placebo, NNT = 2.3 @Schoenen1998riboflavinmigraine), and migraine is among the most common ME/CFS comorbidities — the proposed mechanism (mitochondrial energy reserve enhancement via FAD-dependent Complex I/II) is identical to the energy-deficit hypothesis in ME/CFS. Third, riboflavin is inexpensive, widely available, and has an excellent safety profile even at high doses.

#open-question(title: [Is Riboflavin Insufficiency in ME/CFS a Consumption Problem Rather Than a Supply Problem?])[
Glutathione reductase (GR) is FAD-dependent — it recycles GSSG back to GSH. Under the chronic oxidative stress documented in ME/CFS (elevated F2-isoprostanes @Kennedy2005isoprostanes @Robinson2010isoprostanes, depleted GSH, elevated 8-OHdG), GR turns over at abnormally high rates to maintain the GSH/GSSG ratio. This constitutes a potential "FAD sink": riboflavin may not be deficient in dietary supply but may be consumed faster than it can be replenished by the very redox-cycling machinery that defines oxidative stress. If so, EGRAC (G23) will correlate with F2-isoprostane and GSSG/GSH ratio: patients with the highest oxidative stress burden will have the worst functional riboflavin status. The therapeutic implication is that supplementation dose calculations must account for the consumption rate, and that co-administration of antioxidants (NAC, CoQ10) with riboflavin may be more effective than riboflavin alone — because reducing oxidative demand simultaneously reduces FAD consumption. This reframes the riboflavin question from "do ME/CFS patients get enough riboflavin?" to "do ME/CFS patients _use up_ riboflavin faster than they can replace it?"
] <oq:riboflavin-consumption-vs-supply>

*Thiamine (TPP precursor).* Thiamine pyrophosphate is the cofactor for the E1 subunits of both PDC and KGDHC. Functional thiamine deficiency (documented by elevated erythrocyte transketolase activation ratio in historical CFS series) would simultaneously impair pyruvate entry into the TCA cycle and reduce alpha-ketoglutarate oxidation. High-dose thiamine (600--1800 mg/day) is used in thiamine-responsive metabolic disorders and in POTS-adjacent autonomic conditions. It has not been tested in ME/CFS in a formal trial . The closest formal evidence is Bager et al.'s RCT of high-dose oral thiamine (600 mg TID) in IBD patients with chronic fatigue ($n = 40$), which showed significant fatigue reduction versus placebo @Bager2021thiamineIBD — but the IBD fatigue mechanism may differ from ME/CFS. A large patient-reported outcomes survey ($n = 3{,}925$) found that benfotiamine and TTFD (fat-soluble thiamine derivatives) showed statistically significant differential response rates between ME/CFS and Long COVID patients, suggesting disease-specific thiamine handling @Eckey2025PRO.


=== Research Gaps at Step 6

Cofactor gaps are inherently high-leverage because a single cofactor gates multiple steps simultaneously. Open gaps: (G22) direct NAD#super[+] measurement in ME/CFS _muscle or neuronal tissue_ — PBMC data now exist (Heng 2025: elevated NAD#super[+], consistent with substrate backup rather than depletion) but no energy-intensive tissue has been assayed, and direct PARP activity and CD38 expression measurements remain absent; (G23) EGRAC functional riboflavin assay — the gold-standard activation coefficient ratio has never been computed in ME/CFS, though converging evidence from plasma FAD (Naviaux 2016), CSF riboflavin/FMN (Baraniuk 2025), and erythrocyte GTR basal activity (Heap 1999) all point to riboflavin pathway disruption; (G24) high-dose thiamine trial; (G25) lipoic acid status and supplementation; (G26) CoQ10 tissue (not plasma) measurement; (G27) magnesium status — Cox 1991 reported reduced RBC magnesium and a positive IM magnesium RCT, but three independent replications failed to confirm the finding @Clague1992magnesiumCFS @Hinds1994magnesiumCFS @Swanink1995magnesiumCFS; the positive finding has not been replicated.

#figure(
  kind: table,
  caption: [Step 6 (Cofactors) research gap prioritisation.],
  table(
    columns: (auto, auto, auto, auto, auto, auto, auto),
    align: (left, left, left, left, left, left, center),
    table.header([*Gap*], [*Essentiality*], [*Worst-case impact*], [*Tractability*], [*Therapeutic leverage*], [*Measurement*], [*Priority*]),
    [G22: NAD#super[+] muscle/tissue measurement + PARP/CD38 activity], [High — NAD#super[+] gates Complex I, PDC, KGDHC, IDH, MDH, sirtuins; PBMC data exist (Heng 2025: elevated) but no energy-intensive tissue], [Up to ~83% of gated yield across multiple steps], [Moderate — LC-MS NADome profiling validated (Braidy 2021); muscle requires biopsy; PARP/CD38 assays standardised], [Immediate — NR/NMN are OTC; NAM 1000 mg/day reduced post-COVID symptoms (Schreiber 2025, $n = 900$)], [Muscle biopsy (LC-MS NADome); PBMC data exist], [1],
    [G23: EGRAC functional riboflavin assay], [High — gates PDC E3, KGDHC E3, β-ox, Complex I, Complex II; converging evidence from plasma FAD (Naviaux 2016), CSF riboflavin/FMN (Baraniuk 2025), erythrocyte GTR (Heap 1999)], [Up to ~83%], [Easy — EGRAC is a simple erythrocyte assay; standardised protocol published (Powers 2023)], [Immediate — riboflavin 400 mg/day; evidence-based for migraine (NNT = 2.3); RR-MADD responds to 100--400 mg/day], [Blood draw (erythrocyte EGRAC)], [1],
    [G24: High-dose thiamine trial], [High — gates PDC E1 and KGDHC E1; proximate evidence from IBD fatigue RCT (Bager 2021: significant benefit, $n = 40$, but different population) @Bager2021thiamineIBD; large patient survey shows differential benfotiamine/TTFD response between ME/CFS and Long COVID @Eckey2025PRO], [Up to ~50%], [Easy — erythrocyte transketolase activation is standardised], [Immediate — thiamine is OTC and cheap], [Blood draw (erythrocyte transketolase)], [1],
    [G25: Lipoic acid status and supplementation], [Medium — gates PDC E2 and KGDHC E2 but cellular synthesis is normally sufficient; no ME/CFS baseline measurement exists; an unblinded, non-randomised Long COVID trial (CoQ10+ALA, $n = 174$, Barletta 2022 @Barletta2022CoQ10ALA) reported fatigue benefit but did not measure lipoic acid levels], [Up to ~50% if fully depleted; rare], [Hard — no routine assay; requires LC-MS], [Immediate — ALA is OTC], [Blood draw (specialist LC-MS)], [2],
    [G26: CoQ10 tissue (muscle biopsy) measurement], [High — sole mobile electron carrier between Complexes I/II and III], [~50% of gated yield], [Hard — muscle biopsy], [Immediate — CoQ10 supplementation is widely used], [Muscle biopsy], [2],
    [G27: Magnesium status (serum + RBC)], [High — required by every kinase and ATPase; but Cox 1991 positive finding not replicated (3 negative: Clague 1992, Hinds 1994, Swanink 1995)], [Indirect; gates ATP _utilisation_ more than production], [Easy — RBC magnesium is available], [Immediate — magnesium supplementation is OTC], [Blood draw (RBC magnesium)], [2],
  )
) <tab:step6-gap-priorities>

Step 6 has the highest density of priority-1 gaps in the chapter (G22, G23, G24). This reflects the cross-cutting nature of cofactors: a single measurement resolves multiple downstream steps simultaneously. G27 (magnesium) was downgraded to priority 2 because the sole positive finding (Cox 1991) was not replicated by three independent groups @Clague1992magnesiumCFS @Hinds1994magnesiumCFS @Swanink1995magnesiumCFS. G23 (EGRAC) is especially high-value because the riboflavin master-rate-limiter hypothesis (@spec:riboflavin-master) predicts that ≥30% of ME/CFS patients will have EGRAC ≥1.3, and the assay is both cheap and immediately actionable.

Step 6 is not a distinct pipeline step in the stoichiometric sense — cofactors are consumed catalytically, not stoichiometrically, and their supply is typically upstream (diet, absorption, tissue-level handling). But the _functional essentiality_ of Step 6 is uniquely high because a single cofactor failure cascades across multiple downstream steps. Cofactor gaps are therefore disproportionately leveraged: if any one of G22--G27 turns out positive, multiple apparent failures at Steps 3, 5, and 7 can be explained by a single upstream lesion.

#speculation(title: [The Dual-Compartment NAD#super[+] Paradox: PBMCs and Muscle Are Dysregulated in Opposite Directions])[
*Certainty: 0.30.* The Heng 2025 finding — NAD#super[+] _elevated_ in PBMCs while ATP/ADP is _reduced_ @heng2025mecfs — is a single-study observation ($n = 61$) requiring replication that, if confirmed, would challenge the simple depletion narrative. It suggests the conventional framing (NAD#super[+] is depleted, supplement it) may be wrong in PBMCs, while muscle and neurons may behave differently.

+ *Compartment A (PBMCs):* One interpretation: NAD#super[+] accumulates because Complex I cannot accept electrons from NADH — the ETC is blocked or dysfunctional, stranding NAD#super[+] upstream. Alternatives include upregulated salvage pathway activity or reduced NAD#super[+] consumption in metabolically quiescent PBMCs.
+ *Compartment B (skeletal muscle / neurons):* NAD#super[+] is _predicted_ to be depleted by three concurrent consumers: (i) PARP overactivation from exercise-induced DNA damage and oxidative stress, (ii) CD38 upregulation from chronic immune activation, (iii) kynurenine pathway diversion reducing de novo NAD#super[+] synthesis . This compartment has never been measured in ME/CFS.

If both compartments are dysfunctional but in _opposite directions_, any blood-based NAD#super[+] measurement (predominantly PBMCs) will systematically mislead. Supplementing NAD#super[+] precursors would raise an already-elevated PBMC pool (useless or harmful) while potentially helping muscle/neurons (beneficial) — explaining the inconsistent clinical trial results for NR/NMN.

*Testable predictions:* (1) Muscle biopsy NAD#super[+] will be _reduced_ (opposite to PBMC NAD#super[+]) in ME/CFS vs controls. (2) The PBMC NAD#super[+] / muscle NAD#super[+] ratio will be $> 1$ in ME/CFS and $< 1$ in controls. (3) NR/NMN supplementation will improve muscle-specific outcomes (handgrip, exercise tolerance) more than cognitive outcomes if muscle is the depleted compartment. (4) PBMC NAD#super[+] elevation will correlate with Complex I dysfunction markers (NADH/NAD#super[+] ratio, Complex I activity assay) — confirming the backup rather than surplus interpretation.

*Falsifiability:* This model would be falsified if muscle NAD#super[+] is _also_ elevated in ME/CFS (same direction as PBMCs, eliminating the compartment dissociation); or if PBMC NAD#super[+] elevation is absent in a larger replication cohort (Heng 2025 is a single study); or if PBMC Complex I activity is normal (removing the substrate-backup explanation). Note that the model cannot be tested by blood-based NAD#super[+] measurements alone — it specifically predicts that such measurements are uninformative, which risks making the model unfalsifiable by the most accessible assay. The critical test requires paired PBMC + muscle tissue measurement.

*Limitation:* The tissue-compartment dissociation is a prediction extrapolated from a single PBMC dataset ($n = 61$); PBMC and muscle NAD#super[+] have never been measured in the same ME/CFS cohort. The substrate-backup interpretation (PBMC NAD#super[+] elevated because Complex I cannot accept electrons) is one of several possible explanations — alternatives include upregulated salvage pathway activity, reduced NAD#super[+] consumption in quiescent PBMCs, or assay artefact. This speculation should not be used to guide NR/NMN prescribing decisions until the tissue-compartment prediction is directly tested.
] <spec:dual-compartment-nad>

#speculation(title: [CD38--Senescence--NAD#super[+] Vicious Cycle: A Self-Amplifying Loop Connecting Four Observations])[
*Certainty: 0.25.* CD38 is upregulated on senescent cells and is the dominant NAD#super[+]-consuming enzyme in aged tissues. A critical confound: CD38 expression increases with chronological age independently of disease state; if the cited studies did not rigorously age-match, the observations below could partly reflect normal ageing rather than ME/CFS-specific pathology. With that caveat, a self-amplifying loop may connect four previously separate observations in ME/CFS:

+ Viral infection triggers endothelial senescence (@Nunes2026endothelialsenescence, hypothesis).
+ Senescent endothelial cells upregulate surface CD38.
+ CD38 consumes NAD#super[+] in the local microenvironment (endothelium, perivascular tissue).
+ NAD#super[+] depletion triggers mtDNA leakage via VDAC1, activating cGAS-STING @Chini2025NADInterferon.
+ The type I interferon response from cGAS-STING further promotes cellular senescence (IFN-$beta$ is a known senescence inducer).
+ More senescence $arrow.r$ more CD38 $arrow.r$ more NAD#super[+] depletion $arrow.r$ more mtDNA leakage $arrow.r$ more interferon $arrow.r$ more senescence.

_In principle_, breaking the loop at any node could interrupt the cycle. Candidate intervention classes include senolytics, CD38 inhibitors (apigenin, luteolin), NAD#super[+] precursors (NR, NMN), and cGAS-STING inhibitors — but none has been tested in ME/CFS in this context, and senolytic agents such as dasatinib carry significant toxicity (myelosuppression, pleural effusion, hepatotoxicity) that precludes use outside formal clinical trials.

*Testable predictions:* (1) ME/CFS patient endothelial cells will co-express senescence markers (p16, SA-$beta$-gal) and CD38 at higher rates than age-matched controls. (2) In vitro CD38 inhibition (78c) will reduce cGAS-STING activation in ME/CFS patient-derived cells. (3) Senolytics will reduce CD38 expression and partially restore tissue NAD#super[+] levels.

*Critical caveat:* No link in this six-step chain has been demonstrated in ME/CFS tissue. Each arrow is inferred from a different disease context: CD38-senescence from ageing biology, NAD#super[+]-VDAC1-cGAS-STING from in vitro cancer models @Chini2025NADInterferon, IFN-$beta$-senescence from viral immunology, and endothelial senescence from a Long COVID hypothesis (Nunes 2026). The chain's validity requires _all_ links to hold simultaneously in ME/CFS. An alternative explanation — that NAD#super[+] depletion, senescence, and immune activation are independent consequences of a common upstream cause (e.g., chronic viral reactivation) rather than a self-amplifying loop — would predict the same individual observations without requiring the cyclic mechanism.
] <spec:cd38-senescence-nad-cycle>

#speculation(title: [Cofactor Recycling Network Failure: FAD as the Master Rate-Limiter Via Interdependent Recycling])[
*Certainty: 0.35.* Most cofactors are not consumed stoichiometrically — they cycle between oxidised and reduced forms. The rate of recycling depends on _other_ cofactors, creating an interdependent recycling network:

+ FAD recycling in glutathione reductase requires NADPH.
+ Lipoic acid recycling on PDC-E2 and KGDHC-E2 requires NAD#super[+] (via E3/dihydrolipoamide dehydrogenase, which _also_ requires FAD).
+ CoQ10 reduction (ubiquinone $arrow.r$ ubiquinol) occurs at Complexes I and II; the reduced form is then oxidised at Complex III via the Q-cycle. CoQ10 pool depletion impairs electron shuttling between these complexes.

A deficit in one cofactor can impair recycling of others, creating cascading failure. Specifically: FAD depletion $arrow.r$ impaired E3 function $arrow.r$ impaired lipoic acid _and_ NAD#super[+] recycling simultaneously. FAD depletion also impairs Complex I (FMN cofactor shares the flavin pathway), Complex II, and glutathione reductase (the master antioxidant recycler). This network analysis mechanistically strengthens the riboflavin master-rate-limiter speculation (@spec:riboflavin-master) by identifying FAD as the cofactor that gates the most other recycling reactions — it is required by E3 (which regenerates both lipoic acid and NAD#super[+]), Complex I, Complex II, and glutathione reductase.

*Testable prediction:* In a simultaneous cofactor panel (G9), FAD deficiency (EGRAC $gt.eq$ 1.3) will predict deficiency in the most other cofactors (highest co-deficiency count). Riboflavin supplementation will partially normalise lipoic acid function and NAD#super[+] status even without directly supplementing those cofactors — because restoring FAD restores the E3 recycling hub that regenerates both.

*Competing explanation:* A simpler model where each cofactor is depleted independently by oxidative stress (@sec:step6-cofactors) does not require the recycling network. The recycling model predicts _correlated_ depletion patterns (FAD predicts NAD#super[+] and lipoic acid status); the independent model predicts uncorrelated depletion.

*Limitation:* The recycling network dependencies are established in general biochemistry but the quantitative contribution of inter-cofactor recycling (vs direct dietary supply and de novo synthesis) to steady-state cofactor pools in human tissue is poorly characterised.
] <spec:cofactor-recycling-fad-hub>

== Step 7: ATP Export — The Adenine Nucleotide Translocator (ANT)
<sec:step7-ant>

=== Normal Function and ATP Accounting

Even if ATP is synthesised normally in the mitochondrial matrix, it must exit via the adenine nucleotide translocator (ANT), which exchanges matrix ATP#super[4−] for cytosolic ADP#super[3−] across the inner membrane. ANT is not a passive channel but an active exchanger consuming one proton's worth of membrane potential per cycle; it is the sole route for ATP export. Direct ATP yield is zero (ANT does not synthesise ATP); gated yield is ~28 ATP per glucose (all matrix-produced ATP), ~93% of total. Blocking ANT traps ATP inside the matrix regardless of how efficiently it is made.

Four isoforms exist (ANT1--4) with tissue-specific expression: ANT1 predominates in cardiac and skeletal muscle, ANT2 in proliferating and regenerating tissues, ANT3 is ubiquitous, and ANT4 is testis-restricted @ChenEtAl2023ant. In dilated cardiomyopathy (DCM), an ANT1↑/ANT2↓ isoform shift reduces maximal ATP transport capacity (V#sub[max]) by ~55% @DornerEtAl2006.

=== Documented ME/CFS Findings and Failure Modes

==== Anti-ANT autoantibodies: mechanistic precedent from cardiac autoimmune disease

Anti-ANT autoantibodies are well-characterised in cardiac autoimmune disease but have *never been tested in ME/CFS*. The key mechanistic evidence comes from three independent groups:

- Schultheiss & Bolte (1985) reported 17/18 (94%) DCM patients positive for anti-ANT antibodies, with zero positives in all control groups; antibody titre correlated with haemodynamic function, and the antibodies directly inhibited ADP/ATP exchange in isolated mitochondria .
- Takemoto et al. (1993) independently confirmed anti-ANT positivity in 16% of DCM (n=37) and 42% of active myocarditis (n=12) patients, with negative controls . The lower prevalence compared to Schultheiss likely reflects methodological differences in antigen preparation.
- Schulze et al. (1999) provided the definitive animal-model demonstration: in Coxsackie B3 viral myocarditis, 14/19 mice developed anti-ANT antibodies, with cytosolic ATP/ADP ratios falling by 56% (136±20 → 59±18) while mitochondrial ATP/ADP ratios rose fourfold (1.1±0.3 → 4.2±1.0), directly demonstrating the ATP-trapping mechanism . This is the experimental proof-of-concept for the failure mode proposed in G28.

Epitope mapping by Manchado et al. (2002) localised anti-ANT1 reactivity to at least three epitopes in the C-terminal 146 amino acids and the M2/M3 hydrophilic loops, specifying the antigen regions required for a diagnostically specific ELISA .

#warning-env(title: [Nomenclature Correction: Anti-ANT ≠ AMA-M4])[
  Anti-ANT autoantibodies are *not* classified under the standard anti-mitochondrial antibody (AMA) subtype system. AMA-M4 targets sulfite oxidase (52 kDa), not ANT. AMA-M2 targets the PDC-E2/BCOADC-E2/OGDC-E2 complex. Anti-ANT antibodies found in DCM and myocarditis constitute a separate cardiac-specific autoantibody class, measured by dedicated ANT-protein ELISA or radioimmunoassay — not by standard PBC-focused AMA panels @SchultheissReview1989.
]

==== Mechanistic caveat: autoantibody access to ANT

A key mechanistic question is how circulating IgG autoantibodies access ANT, which resides on the inner mitochondrial membrane. Unlike GPCR autoantibodies targeting cell-surface receptors with extracellular epitopes, anti-ANT antibodies must reach an intracellular, intramitochondrial target. The Schultheiss and Schulze studies demonstrate that anti-ANT antibodies *do* functionally impair ATP export in intact tissue  , but the mechanism of access — likely involving cell damage, mitochondrial release during necrosis, or complement-mediated membrane disruption — has not been fully elucidated. This access constraint may also explain why standard extracellular-focused autoantibody platforms (REAP, Luminex) cannot detect anti-ANT reactivity even when it is present.

==== Assay specificity constraint

Antigen source critically determines assay specificity. Mendel-Hartvig et al. (1986) showed that when rat liver ANT (predominantly the ANT2 isoform) is used as antigen, healthy controls and SLE patients show equal or higher titres compared to disease groups, eliminating diagnostic value @MendelHartvig1986. Disease-specific detection requires human cardiac ANT1, specifically the C-terminal and M2/M3 loop regions .

==== Absence of evidence is not evidence of absence

Two recent large-scale autoantibody studies in ME/CFS have been misinterpreted as closing G28. They do not:

- Nilsson et al. (2020) tested 161 ME/CFS patients across three cohorts for anti-PDC antibodies and general AMA by indirect immunofluorescence (IIF) — all negative . However, ANT-specific antibodies were *not tested*; IIF on rat tissue sections cannot sensitively detect low-titre ANT-specific antibodies that require purified human ANT1 protein as antigen.
- Germain et al. (2025) screened 1,134 Luminex autoantibodies and 6,183 REAP (Rapid Extracellular Antigen Profiling) targets in up to 95 ME/CFS patients — no significant differences . However, REAP covers the *extracellular* proteome by design; intramitochondrial proteins including ANT are outside its detection scope.

The gap therefore remains fully open: no ME/CFS study has tested anti-ANT antibodies using the methodology known to be required (human cardiac ANT1-specific ELISA).

==== Additional ANT failure modes

Beyond autoantibodies, ANT function can be impaired by post-translational modifications including acetylation and S-nitrosylation, both of which reduce transport activity @ChenEtAl2023ant. Given the elevated oxidative and nitrosative stress reported in ME/CFS , nitrosylative ANT inhibition represents a non-autoimmune ANT failure pathway. Whether mitochondrial fragmentation — observed in cells exposed to ME/CFS patient serum via the HHV-6/miR-aU14/DRP1 axis @SchreinerEtAl2020 — secondarily affects ANT function through cristae disruption has not been tested; this remains a speculative link.

==== Genetic disease precedent

Sengers syndrome (autosomal recessive ANT1 loss-of-function) produces exercise intolerance and lactic acidosis — features overlapping with ME/CFS post-exertional malaise, though Sengers also includes cataracts and cardiomyopathy @ChenEtAl2023ant. This genetic precedent demonstrates that ANT1 dysfunction alone is sufficient to produce exercise intolerance and lactic acidosis, supporting (but not confirming) the plausibility of ANT involvement in ME/CFS.

==== Therapeutic implications if anti-ANT confirmed

If anti-ANT autoantibodies are confirmed in ME/CFS, the therapeutic framework already exists: immunoadsorption has been piloted for GPCR autoantibodies in post-COVID ME/CFS (14/20 patients improved after five sessions) . The same approach — and newer Fc receptor-targeting agents such as efgartigimod — would be directly applicable to anti-ANT autoimmunity. Given the broad autoantibody landscape in ME/CFS  — noting that whether GPCR autoantibodies are pathogenic or epiphenomenal remains actively debated — standard protein A immunoadsorption, which removes IgG non-specifically, would simultaneously deplete both GPCR and any anti-ANT autoantibodies present.

#hypothesis(title: [The "Invisible Bottleneck": ANT Blockade Explains Normal Respirometry with Abnormal Energy])[
  *Certainty: 0.45.* Standard mitochondrial function assays (Seahorse, high-resolution respirometry) measure oxygen consumption rate (OCR) at the ETC. If ANT is blocked — whether by autoantibody, nitrosylation, or structural damage — ATP accumulates in the matrix while the ETC continues to consume oxygen normally. The critical implication: a patient can have *normal OCR* but *profoundly abnormal cytosolic ATP availability*. The Schulze et al. data directly demonstrate this: anti-ANT raised mitochondrial ATP/ADP fourfold (matrix full of unexportable ATP) while cytosolic ATP/ADP fell by 56% . This resolves a persistent paradox in ME/CFS research: several studies show relatively preserved mitochondrial respiration, yet patients clearly have a functional energy deficit.

  *Falsifiable prediction:* In ME/CFS patients, compartment-specific ATP sensors (ATeam or iATPSnFR) will show elevated mitochondrial-to-cytosolic ATP ratio (>2 SD above controls) in ≥20% of cases, even when Seahorse OCR is within normal range.

  *If falsified:* The energy deficit in ME/CFS is upstream of ANT (production, not export), and respirometry results are genuinely representative of the cellular energy state.

  *Limitations:* Compartment-specific ATP measurement has not been performed in ME/CFS. The prediction extrapolates from animal myocarditis to human ME/CFS. Partially replicated conceptually (Schulze 1999 in animal model) but not yet tested in ME/CFS.
] <hyp:invisible-bottleneck>

#speculation(title: [ANT Autoantibody-Mediated ATP Trapping as a Unifying ME/CFS Energy Lesion])[
  *Certainty: 0.30.* If anti-ANT1 autoantibodies are present in a subset of ME/CFS patients, they would produce a failure mode uniquely consistent with the disease phenotype: normal oxygen consumption (ETC operates normally), normal mitochondrial membrane potential, but profoundly reduced cytosolic ATP availability. This would explain the paradox of normal-appearing mitochondrial respiration in some studies alongside severe functional energy limitation. The post-viral trigger (Coxsackie B3 → anti-ANT in animal models ; EBV/HHV-6 as common ME/CFS triggers) provides an aetiological bridge.

  *Falsifiable prediction:* ≥10% of ME/CFS patients meeting ICC criteria will test positive for anti-ANT1 antibodies using human cardiac ANT1-specific ELISA, compared to $<$2% of matched healthy controls.

  *If falsified:* ANT autoimmunity can be excluded as a common ME/CFS mechanism, though post-translational ANT inhibition (nitrosylation, acetylation) remains testable.

  *Limitations:* No ME/CFS data exist. The prediction is extrapolated from cardiac autoimmune disease prevalence, which may not transfer to a non-cardiac autoimmune context. Not yet replicated in ME/CFS — entirely speculative.
] <spec:ant-autoantibody-atp-trapping>

#speculation(title: [Coxsackie B3--ANT Molecular Mimicry as a Specific Autoimmune Target in Post-Enteroviral ME/CFS])[
*Certainty: 0.30.* Coxsackie B3 is one of the best-documented enteroviral triggers of ME/CFS, and independently, Coxsackie B3 viral myocarditis is the exact model system in which Schulze et al.\ (1999) demonstrated anti-ANT autoantibody generation with 56% cytosolic ATP/ADP reduction . The bridge hypothesis: Coxsackie B3 infection in ME/CFS patients generates anti-ANT autoantibodies via molecular mimicry between viral capsid or protease epitopes and ANT1 C-terminal/M2--M3 loop epitopes (mapped by Manchado et al.\ 2002 ), producing a chronic energy deficit that persists long after viral clearance.

If confirmed, this would constitute the first _specific molecular mimicry target_ identified in ME/CFS --- a gap explicitly noted in Chapter @ch:immune-dysfunction (Section @sec:autoimmunity), where no pathogen-epitope to self-antigen cross-reaction has been demonstrated. The Coxsackie--ANT link has the advantage of being established in a related autoimmune context (viral myocarditis), with epitopes already mapped, making the hypothesis testable with existing tools.

*Testable predictions:*
+ ME/CFS patients with documented enteroviral onset (Coxsackie B3 serology or PCR-positive acute illness) will have higher anti-ANT1 titres than ME/CFS patients with EBV onset or non-infectious onset, using recombinant human ANT1 in conformationally correct proteoliposome presentation  (not rat liver ANT @MendelHartvig1986, which lacks human isoform specificity).
+ In silico sequence homology analysis between Coxsackie B3 proteome and the ANT1 C-terminal and M2/M3 loop epitope regions should reveal $gt.eq$6 amino acid stretches of identity or conservative substitution --- a weekend bioinformatics project that could rapidly support or refute the mimicry mechanism before wet-lab work.

*Limitations:* The Coxsackie--ANT1 mimicry has been demonstrated only in murine myocarditis, not in human ME/CFS. The 56% cytosolic ATP/ADP reduction in Schulze 1999 was observed in a murine cardiac model; skeletal muscle and brain may respond differently. Molecular mimicry is only one of several autoantibody generation mechanisms --- bystander activation and epitope spreading during tissue damage are alternative explanations that do not require sequence homology. The proportion of ME/CFS with documented enteroviral onset is uncertain and likely represents a minority of cases, limiting the population-level impact even if the mechanism is confirmed for this subgroup.
] <spec:coxsackie-ant-mimicry>

#speculation(title: [Anti-ANT Complement Fixation: Exercise-Triggered Complement Activation on Mitochondrial Membranes])[
*Certainty: 0.15.* Anti-ANT autoantibodies are IgG class . IgG fixes complement via C1q binding to Fc regions. ANT resides on the inner mitochondrial membrane, normally inaccessible to circulating antibodies — but three scenarios expose it:

+ *Cell death / necrosis:* Dying cells release mitochondria. Anti-ANT IgG binds exposed ANT on free mitochondria, initiating the classical complement cascade. The resulting complement-opsonised mitochondrial DAMPs are a much stronger pro-inflammatory signal than naked mitochondrial fragments.
+ *Mitochondrial-derived vesicles (MDVs):* If damaged mitochondria are extruded via MDVs (during impaired mitophagy, as proposed in @hyp:impaired-mitophagy-longcovid), anti-ANT IgG on these vesicles activates complement in the extracellular space.
+ *Exercise-induced mPTP opening:* During intense exercise, calcium transients transiently open the mitochondrial permeability transition pore. However, mPTP opening releases matrix contents into the cytoplasm — it does not directly expose the inner membrane surface to extracellular IgG. For this scenario to operate, circulating IgG would need to enter the cell and traverse the cytoplasm, which is not the mechanism of classical complement fixation. This scenario is the weakest of the three.

The self-amplifying cascade — exercise $arrow.r$ mPTP opening $arrow.r$ ANT exposure $arrow.r$ anti-ANT binding $arrow.r$ complement activation $arrow.r$ membrane damage $arrow.r$ more mitochondrial release $arrow.r$ more anti-ANT binding — would activate only above an exercise threshold (when mPTP opens), explaining the threshold nature of PEM. Post-exertional C4a elevation, specifically documented in ME/CFS, has lacked a specific molecular target; anti-ANT-mediated complement fixation on mitochondrial membranes could potentially contribute to this phenomenon, though the mechanism is entirely speculative at this certainty level.

*Testable predictions:* (1) Complement components (C3d, C5b-9) will be found deposited on circulating cell-free mitochondria in anti-ANT-positive ME/CFS patients at higher levels than in anti-ANT-negative patients. (2) Post-exercise C4a elevation will correlate with anti-ANT titre but not with anti-GPCR titre .

*Limitation:* The inner mitochondrial membrane accessibility problem is real and may prevent this mechanism in vivo for scenarios (a) and (c). Anti-ANT prevalence in ME/CFS is itself unknown (G28). The entire speculation depends on G28 being positive. Certainty: very low (0.15).
] <spec:ant-complement-mitochondria>

=== Research Gaps at Step 7

Only one gap at Step 7, but it is _high-impact if confirmed_ and _entirely unstudied_: (G28) anti-ANT autoantibody prevalence in ME/CFS. ANT is a sole-route ATP exporter; failure traps all matrix-produced ATP inside mitochondria regardless of how efficiently it is made.

#figure(
  kind: table,
  caption: [Step 7 (ANT) research gap prioritisation.],
  table(
    columns: (auto, auto, auto, auto, auto, auto, auto),
    align: (left, left, left, left, left, left, center),
    table.header([*Gap*], [*Essentiality*], [*Worst-case impact*], [*Tractability*], [*Therapeutic leverage*], [*Measurement*], [*Priority*]),
    [G28: Anti-ANT1 autoantibodies], [High — ANT is the sole ATP export route; no redundancy], [~93% of gated yield (~28/30 ATP, the matrix-produced fraction)], [Easy — human ANT1-specific ELISA; epitopes mapped ], [Medium-term — immunoadsorption already piloted in ME/CFS for GPCR autoantibodies ], [Blood draw (ANT1-specific ELISA)], [1],
  )
) <tab:step7-gap-priorities>

G28 is the single highest-impact, lowest-cost gap in the entire chapter: Step 7 is one of only two _individually essential_ steps (with Step 3 PDC), a single ELISA can resolve it, and ME/CFS already has broad GPCR autoantibody findings  providing a mechanistic prior. Existing studies ruling out general AMA  and extracellular autoantibodies  do not close G28 because they used methods incapable of detecting ANT-specific antibodies. The combination of high potential impact, low assay cost, and existing positive-control sera from DCM makes this gap unusually tractable. *Priority 1, highest-leverage single gap in Chapter 6.*

== Step 8: Creatine Phosphate Shuttle
<sec:step8-creatine-shuttle>

=== Normal Function and ATP Accounting

The creatine phosphate (PCr) shuttle provides spatial and temporal buffering between mitochondrial ATP production and cytoplasmic ATP consumption. In brain and muscle, creatine kinase at the mitochondrial outer membrane converts mitochondrial ATP into phosphocreatine, which diffuses to the myofibril or synapse where the cytoplasmic CK isoform instantly regenerates ATP on demand. Direct ATP yield is zero (the shuttle is a kinetic buffer, not a net producer); failure is _kinetic_ (ATP not available fast enough at the demand site) rather than _stoichiometric_ (ATP count unchanged per cycle).

=== Documented ME/CFS Findings and Failure Modes

The PCr shuttle has additional significance in the context of ANT dysfunction (@sec:step7-ant): if ANT is partially blocked, each ATP molecule that does exit the matrix is immediately captured by mitochondrial CK and shuttled to the cytosol as PCr, preventing product inhibition at the ANT exit site. Creatine supplementation ensures the shuttle substrate is not limiting, effectively functioning as a partial bypass of an ANT bottleneck. This is one possible mechanistic rationale — among several, including simple energy buffering — for why creatine might benefit ME/CFS patients; the ANT-bypass explanation is post-hoc and would require demonstration of ANT dysfunction before it can be preferred over simpler accounts.

#achievement(title: [Creatine Supplementation Increases Brain Creatine and Reduces Fatigue])[
In a feasibility study ($n=11$ completers), Godlewska et al.\ found that 6 weeks of creatine monohydrate (16 g/day) significantly increased brain creatine in the pregenual anterior cingulate cortex (+8.3%, $p=0.004$) and dorsolateral prefrontal cortex (+2.9%, $p=0.012$), measured by 7T MRS @Godlewska2024creatineMRS. Secondary outcomes showed decreased fatigue scores and improved Stroop reaction time and hand-grip strength. This is the first intervention evidence that brain creatine deficiency in ME/CFS — previously documented by 7T MRS cross-sectionally  — is pharmacologically correctable.
Study: (open-label feasibility, no placebo arm; certainty: 0.45 — requires blinded RCT before clinical recommendation). Note: the 16 g/day dose is 3.2$times$ the standard loading dose and substantially above the 6 g/day used in the positive Long COVID RCT (Dos Santos 2026); at this dose, GI distress (bloating, diarrhea, cramping) is common and may be functionally debilitating, particularly for ME/CFS patients with comorbid IBS.
] <ach:godlewska2024-creatine>

#warning-env(title: [Replication Status: Preliminary])[
Godlewska 2024 is an open-label feasibility study without a placebo control. The observed improvements in fatigue and cognition cannot be distinguished from placebo effects at this stage. A blinded RCT is required.
]

*Converging evidence from related conditions:* Three lines of evidence from outside ME/CFS constrain expectations for a future creatine RCT:

+ *CFS GAA study (creatine precursor):* Ostojic et al.\ conducted the only placebo-controlled RCT of a creatine-loading compound in CFS proper — a double-blind crossover trial ($n = 21$ women, CDC 1994 criteria) of guanidinoacetic acid (GAA) 2.4 g/day for 3 months . GAA successfully increased muscular creatine (+36.3% vs +2.4%, $p < 0.01$) and improved muscular strength and aerobic power ($p < 0.05$), but had *no effect on general fatigue or musculoskeletal pain*. This dissociation — muscle creatine loading without fatigue benefit — suggests that the fatigue-relevant compartment in ME/CFS may be the brain rather than skeletal muscle, consistent with Godlewska's brain-focused MRS findings.

#warning-env(title: [GAA Is Not Creatine: Methylation Toxicity Risk in ME/CFS])[
A critical pharmacological distinction: GAA is converted to creatine by guanidinoacetate N-methyltransferase (GAMT), which consumes S-adenosylmethionine (SAM) as the methyl donor. Creatine synthesis is the single largest consumer of labile methyl groups in human metabolism — accounting for approximately 40% of all SAM-derived methylation (the commonly cited ~70% figure does not account for methyl-group recycling) @Brosnan2011creatineSAM. In ME/CFS patients with methylation pathway impairment (MTHFR C677T polymorphism reduces enzyme activity and is hypothesised as a vulnerability factor — see @hyp:homocysteine-etc-disruption; homocysteine may be elevated; B12/folate cycling may be disrupted), GAA supplementation may _worsen_ the methylation bottleneck by diverting SAM toward creatine synthesis at the expense of DNA methylation, neurotransmitter synthesis (catecholamines, melatonin), phospholipid methylation, and other SAM-dependent processes. *Direct creatine monohydrate supplementation bypasses GAMT entirely*, eliminating the methylation cost. If methylation impairment is present, the Ostojic 2016 null result for fatigue may partly reflect a pharmacological confound (GAA-induced SAM depletion opposing any benefit from creatine loading) rather than a clean negative for the creatine hypothesis. This does not rescue the creatine hypothesis from the null — alternative explanations include genuine absence of benefit from muscle creatine loading regardless of compound choice. Importantly, the Ostojic trial ran for 3 months without reporting methylation-related adverse effects (elevated homocysteine, clinical deterioration), which argues against acute GAA-induced methylation toxicity at the dose used — though subclinical methylation diversion may not produce detectable adverse events within that timeframe. The methylation concern is theoretical, not demonstrated. Nonetheless, a future ME/CFS creatine RCT should use creatine monohydrate rather than GAA to avoid the methylation confound.
]

+ *Long COVID RCTs:* Dos Santos et al.\ 2026 conducted the largest placebo-controlled creatine trial in post-viral fatigue ($n = 67$ randomized, 58 completers; single-blind): 6 g/day creatine for 4 weeks significantly reduced fatigue (Piper Fatigue Scale change $-2.05$, $p = 0.005$) and improved handgrip strength ($+4.40$ kgf, $p = 0.037$), while 18 g/day showed no superiority @DosSantos2026creatineCovid. Smaller long COVID trials ($n = 12$--$15$) by the Ostojic group also reported benefit, including increased tissue creatine on MRS and improved clinical features (effect sizes $d = 0.80$--$1.33$) @Slankamenac2023creatineLongCovid. These results are encouraging but carry a conflict-of-interest note: the Ostojic group has received creatine-industry funding.

+ *Fibromyalgia RCT:* Alves et al.\ conducted a 16-week double-blind placebo-controlled RCT of creatine in fibromyalgia @Alves2013creatineFM. Creatine dramatically increased muscle phosphocreatine ($+80.3$% vs $-2.7$%, $p = 0.04$) and improved muscle strength across multiple measures, but had *no effect on pain, fatigue, aerobic conditioning, cognitive function, sleep quality, or quality of life*. This is a cautionary precedent: creatine can successfully load muscle without resolving fatigue in a comorbid condition.

*Pattern:* Muscle creatine loading alone does not resolve _patient-reported general fatigue_ in either CFS (GAA trial; caveat: GAA is a creatine precursor, not creatine monohydrate, so pharmacological differences cannot be excluded) or fibromyalgia (creatine monohydrate RCT), despite improving _muscular strength and aerobic power_ in both. The Godlewska signal is brain-specific — brain creatine correlated with _cognitive_ improvement, suggesting the fatigue-relevant deficit may be central (CNS energy buffering) rather than peripheral (muscle energy stores). A future ME/CFS creatine RCT should therefore be designed with brain MRS as the primary mechanistic outcome and should measure brain-specific endpoints (cognition, brain fog) alongside whole-body fatigue, explicitly distinguishing central and peripheral fatigue components.

#warning-env(title: [Creatinine Monitoring Note])[
Creatine supplementation routinely elevates serum creatinine by approximately 20--30 μmol/L due to non-enzymatic cyclisation of the creatine excess. This does not reflect renal impairment but can trigger unnecessary concern (or further testing) on routine labs if the prescribing clinician is unaware of the supplementation. Document creatine use clearly before any renal function panel.
]

*NOT STUDIED:* The creatine transporter (SLC6A8) and the synthesis enzymes (AGAT, GAMT) have not been characterised in ME/CFS. Whether brain creatine deficiency reflects impaired synthesis, impaired transport into cells, or increased consumption (e.g., by activated astrocytes or microglia) is unknown.


=== Research Gaps at Step 8

Four gaps at Step 8 revolve around creatine-phosphate-shuttle components: (G29) creatine transporter SLC6A8 expression; (G30) creatine synthesis enzymes AGAT (l-arginine:glycine amidinotransferase) and GAMT (guanidinoacetate N-methyltransferase); (G31) mitochondrial vs cytosolic creatine kinase isoform balance; (G32) a placebo-controlled creatine RCT to confirm the Godlewska 2024 feasibility signal @Godlewska2024creatineMRS.

#figure(
  kind: table,
  caption: [Step 8 (Creatine shuttle) research gap prioritisation. Note that creatine is a kinetic buffer: failure degrades demand-response capacity, not per-cycle ATP count.],
  table(
    columns: (auto, auto, auto, auto, auto, auto, auto),
    align: (left, left, left, left, left, left, center),
    table.header([*Gap*], [*Essentiality*], [*Worst-case impact*], [*Tractability*], [*Therapeutic leverage*], [*Measurement*], [*Priority*]),
    [G29: SLC6A8 (creatine transporter)], [Medium — sole route for creatine uptake into muscle and brain, but creatine can be partially synthesised _in situ_], [Kinetic, not stoichiometric; affects burst capacity not steady-state ATP], [Moderate — serum creatinine tracking plus MRS of brain creatine], [Immediate — creatine supplementation is OTC], [Blood draw (serum creatinine) + MRS], [2],
    [G30: AGAT + GAMT (synthesis enzymes)], [Low — dietary creatine compensates], [Minor in presence of diet], [Hard — specialist LC-MS or biopsy], [Immediate — creatine supplementation bypasses both], [Muscle biopsy (specialist LC-MS)], [3],
    [G31: Mitochondrial vs cytosolic CK isoform balance], [High if disrupted — mito-CK is the _direct_ coupler of matrix ATP to cytosolic demand], [Kinetic; up to 100% of demand-response capacity], [Hard — muscle biopsy with isoform fractionation], [Long-term], [Muscle biopsy (isoform fractionation)], [2],
    [G32: Placebo-controlled creatine RCT with brain MRS], [N/A — confirmatory intervention; GAA loaded CFS muscle without fatigue benefit  (caveat: GAA $eq.not$ creatine monohydrate); FM creatine loaded muscle without fatigue benefit @Alves2013creatineFM (caveat: FM $eq.not$ ME/CFS)], [Determines whether the _brain-specific_ Godlewska signal is real; Long COVID RCTs encouraging @DosSantos2026creatineCovid], [Easy — RCT design is simple; brain MRS adds cost but is essential for mechanism], [Immediate — creatine is OTC], [Blood draw + brain MRS (RCT)], [1],
  )
) <tab:step8-gap-priorities>

G32 remains priority 1 but the landscape has shifted. A creatine-precursor RCT in CFS proper (Ostojic 2016, GAA, $n = 21$) successfully loaded muscle creatine but did *not* reduce fatigue ; a fibromyalgia creatine RCT similarly improved muscle strength without affecting fatigue or cognition @Alves2013creatineFM. Long COVID creatine RCTs show promise ($n = 58$ completers, fatigue $p = 0.005$ @DosSantos2026creatineCovid), but the Godlewska signal is brain-specific: _brain_ creatine correlated with _cognitive_ improvement. A future ME/CFS creatine RCT should include brain MRS as a mechanistic outcome. The muscle-loading question is not definitively answered — GAA is pharmacologically distinct from creatine monohydrate, and the fibromyalgia population differs from ME/CFS — but the available evidence shifts the prior toward brain-specific mechanisms. Step 8 is not individually essential to ATP production (creatine shuttles are kinetic buffers) but its failure mode is consistent with the demand-response failure pattern observed in PEM, making it a candidate mechanism for the selective-dysfunction hypothesis (@hyp:selective-energy).

=== Brain Creatine and the Selective Energy Dysfunction Hypothesis

The brain-specific creatine signal deserves particular emphasis because the PCr shuttle plays a uniquely critical role in CNS energy metabolism. Unlike skeletal muscle, where glycolytic ATP generation can partially substitute during demand spikes, synaptic transmission and action potential propagation require ATP delivery on a millisecond timescale where the PCr shuttle is the primary buffering system. Mitochondrial CK at the synapse pre-phosphorylates creatine using locally generated ATP; when a burst of synaptic vesicle release or ion-pump activity occurs, cytosolic CK instantly regenerates ATP from the local PCr pool without waiting for mitochondrial oxidative phosphorylation to ramp up. Glycolytic enzymes physically associated with ion pumps and synaptic vesicle machinery provide a secondary ATP source, but glycolysis operates on a seconds timescale and cannot match PCr-mediated buffering for transient demand spikes.

The brain-to-muscle dissociation in the creatine data — brain creatine decreased  while muscle creatine loads normally with supplementation  — maps directly onto the selective energy dysfunction pattern described in @hyp:selective-energy. Cognitive processes (working memory, executive function, sustained attention) place high burst demands on the PCr shuttle in prefrontal and cingulate cortex — precisely the regions where Godlewska found creatine depletion. Autonomous peripheral processes (resting cardiac output, hepatic metabolism, basal skeletal muscle tone) operate at steady-state demand levels that do not depend critically on PCr temporal buffering. If brain creatine is selectively depleted while muscle creatine is normal, the clinical result would be preserved resting peripheral function alongside impaired cognition, impaired demand-responsive coordination, and exercise intolerance driven by central rather than peripheral fatigue — which is the ME/CFS phenotype.

#speculation(title: [Brain PCr Depletion as Molecular Mechanism for Selective Energy Dysfunction])[
*Certainty: 0.30.* The brain-specific creatine depletion documented by Godlewska 2025  may represent the molecular substrate of the selective energy dysfunction hypothesis (@hyp:selective-energy). If the PCr shuttle — the sole millisecond-timescale ATP delivery system — is depleted in brain but not muscle, the resulting phenotype would show precisely the CNS-dependent, demand-responsive failures characteristic of ME/CFS (cognitive impairment, orthostatic intolerance via autonomic coordination failure, exercise intolerance from central motor drive dysfunction) alongside preserved autonomous peripheral functions (resting cardiac output, hepatic metabolism).

*Testable prediction:* The brain-creatine-to-muscle-creatine ratio (measurable by comparing brain 1H-MRS with muscle 31P-MRS in the same participants) will be lower in ME/CFS patients than healthy controls. This ratio — if validated — could serve as a non-invasive index of selective energy dysfunction severity. Patients with the lowest brain/muscle creatine ratio should show the greatest cognitive impairment relative to their physical capacity.

*Limitation:* This speculation rests on a single open-label feasibility study ($n = 11$) for brain creatine and a small RCT ($n = 21$) for muscle creatine loading. The brain-vs-muscle comparison has never been performed within the same ME/CFS cohort — the apparent dissociation is a cross-study inference from different populations, compounds, and outcome measures. The cause of brain-selective depletion (impaired SLC6A8 transport, astrocyte consumption, or reduced local synthesis) is unknown. A simpler alternative: brain creatine depletion may be a downstream consequence of chronic deconditioning and reduced physical activity rather than a primary pathological mechanism — exercise increases brain creatine in healthy subjects, and the Godlewska study did not include activity-matched deconditioned controls.
] <spec:brain-pcr-selective-energy>

#speculation(title: [The Astrocyte Creatine Sink: Neuroinflammation Hoards Brain Creatine])[
*Certainty: 0.25.* Activated astrocytes undergo metabolic reprogramming toward glycolysis (a Warburg-like shift documented in neuroinflammation) and have markedly increased creatine kinase activity and PCr turnover — they consume creatine at an accelerated rate to fuel immune signalling and glutamate recycling. If neuroinflammation is present in ME/CFS (supported by TSPO-PET elevation in Nakatomi et al.\  and Mueller et al.\ @Mueller2020MRS), reactive astrocytes may create a _creatine sink_ in neuroinflamed tissue, depleting the neuronal PCr pool.

This provides a mechanistic explanation for why brain creatine is decreased  while muscle creatine loads normally : astrocytes in neuroinflamed regions sequester creatine, starving neurons of their primary rapid-response ATP buffer. The resulting neuronal energy deficit forces increased glycolytic reliance during demand spikes, producing the brain lactate elevation documented by Godlewska et al.\ 2025 .

*Testable prediction:* In brain regions with higher neuroinflammation (measured by TSPO-PET or elevated myo-inositol on MRS), creatine depletion should be more severe. A combined TSPO-PET + 1H-MRS study would test this directly.

*Therapeutic implication (research-stage only):* If confirmed, anti-neuroinflammatory interventions might restore brain creatine levels by reducing the astrocyte sink, while creatine supplementation alone might require perpetual high-dose maintenance. These are mechanistic inferences from a 0.25-certainty speculation, not clinical recommendations — no intervention study has tested this framework.

*Limitation:* The neuroinflammation premise itself is contested in ME/CFS. The TSPO-PET evidence (Nakatomi et al.\ 2014, $n = 9$; Mueller et al.\ 2020) uses small samples with a radiotracer (PK11195) that has known specificity limitations, and replication attempts have produced mixed results. Astrocyte creatine kinase upregulation during neuroinflammation is characterised in rodent models; human in vivo confirmation is lacking. If neuroinflammation is absent or mild in ME/CFS, the entire astrocyte-sink mechanism collapses and brain creatine depletion would require a different explanation (e.g., SLC6A8 transport impairment or reduced local synthesis).
] <spec:astrocyte-creatine-sink>

#speculation(title: [The Creatine--Lactate Seesaw: Brain PCr Depletion Directly Causes Brain Lactate Elevation])[
*Certainty: 0.35.* Godlewska/Syan 2025 reported decreased brain creatine and elevated brain lactate as separate findings , but they are mechanistically linked and may represent a single underlying failure. The PCr shuttle normally absorbs transient ATP demand within milliseconds; without it, glycolysis must ramp up within seconds, producing lactate as a byproduct. The seesaw model: brain [Cr] down $arrow.r$ PCr buffering capacity down $arrow.r$ glycolytic demand up during demand spikes $arrow.r$ lactate up. This is a direct kinetic consequence (PCr depletion forces reliance on the slower glycolytic backup), not merely a correlation.

*Testable prediction (falsifiable):* In a creatine supplementation RCT, measure both brain creatine (should increase) and brain lactate (should _decrease_) with MRS pre- and post-supplementation. Plot $Delta$-brain-creatine against $Delta$-brain-lactate: the seesaw model predicts a negative correlation ($r < -0.5$). If $r approx 0$, the phenomena are independent and the lactate elevation has a separate cause (e.g., mitochondrial dysfunction independent of creatine). This provides an elegant dual-endpoint for the creatine RCT design proposed at G32.

*Competing explanation:* Brain lactate may be elevated due to impaired mitochondrial oxidation (Complex I dysfunction, PDC inhibition) rather than PCr buffer depletion. Under this model, creatine supplementation would raise brain creatine but _not_ reduce lactate, because the lactate source is upstream of the PCr system.

*Limitation:* The seesaw model treats brain creatine and brain lactate as primarily linked through the PCr buffer mechanism, but both are influenced by multiple additional factors (glucose delivery, astrocyte-neuron lactate shuttle, monocarboxylate transporter activity).
] <spec:creatine-lactate-seesaw>

#speculation(title: [Cognitive PEM as Brain PCr Depletion--Repletion Failure])[
*Certainty: 0.30.* Physical PEM is extensively discussed in this chapter, but cognitive PEM (brain fog worsening after mental exertion) is equally debilitating and less mechanistically explained. The PCr shuttle model offers a specific mechanism:

+ Mental effort depletes brain PCr in activated regions (prefrontal cortex, cingulate — the regions where Godlewska found creatine depletion ).
+ In healthy individuals, mitochondrial ATP production rapidly regenerates the PCr pool via mitochondrial creatine kinase.
+ In ME/CFS with impaired mitochondrial function _and_ a depleted baseline creatine pool, recovery is doubly impaired: the starting pool is smaller (longer to deplete) and the regeneration rate is slower (impaired oxidative phosphorylation).

Cognitive PEM is therefore a _depletion + repletion failure_ event: the brain's creatine buffer is already running near-empty, so moderate cognitive demand causes a transient ATP crisis in activated brain regions. The characteristic delay in cognitive PEM (symptoms worsening hours after mental exertion) reflects the time course of PCr pool recovery failure, analogous to the delayed PCr recovery kinetics documented in Long COVID muscle by Finnigan et al.\ ($tau_"PCr"$ 92.5 vs 51.9 s @Finnigan2024MRS).

*Testable prediction:* Brain #super[31]P-MRS immediately after a standardised cognitive task (e.g., 30-min Stroop test) should show greater PCr depletion in ME/CFS vs controls, with slower recovery kinetics. This is technically feasible with 7T #super[31]P-MRS.

*Competing explanations:* Cognitive PEM could equally reflect neuroinflammatory flare (microglial activation triggered by mental exertion), autonomic dysregulation (cerebral blood flow instability), or astrocyte-neuron metabolic uncoupling — none of which require PCr depletion. The PCr model is one of several candidate mechanisms and does not exclude the others.

*Limitation:* #super[31]P-MRS of brain during cognitive tasks is technically challenging (low SNR, motion artefacts). The analogy between muscle PCr recovery kinetics and brain PCr recovery kinetics is assumed but not established.
] <spec:cognitive-pem-pcr>

== Step 9: ROS Scavenging — The Mitochondrial Antioxidant Defence
<sec:step9-ros-scavenging>

=== Normal Function and ATP Accounting

The ETC leaks electrons to molecular oxygen producing superoxide (O#sub[2]#super[•−]), particularly at Complexes I and III. Mitochondrial superoxide dismutase (MnSOD, encoded by SOD2) converts superoxide to H#sub[2]O#sub[2], which glutathione peroxidase (GPX) and peroxiredoxin 3 (PRDX3) then reduce to water. This multi-step scavenging system prevents superoxide from inactivating iron-sulfur clusters and oxidising cardiolipin. ROS scavenging is _net-negative_ for ATP: it consumes NADPH and GSH rather than producing energy. Failure is amplificatory: unchecked ROS damage propagates to Steps 3 (PDC), 5 (aconitase, KGDHC), 6 (cardiolipin), and 7 (ANT).

=== Documented ME/CFS Findings and Failure Modes

#achievement(title: [Decreased MnSOD and GPX4 Dysfunction in ME/CFS and Long COVID])[
Shankar et al.\ demonstrated that both ME/CFS and Long COVID lymphocytes exhibit elevated oxidative stress with *decreased mitochondrial MnSOD protein levels* and *GPX4-mediated lipid peroxidation* damage . Female patients show higher total ROS and mitochondrial calcium; male patients show normal total ROS but greater lipid oxidative damage — indicating sex-specific failure modes in mitochondrial antioxidant defence. This is the first direct measurement showing reduced MnSOD protein (not merely elevated ROS markers) in ME/CFS lymphocytes.
Study: (multi-cohort; flow cytometry and mass spectrometry; _PNAS_ 2025; certainty: 0.55 — lymphocytes may not reflect tissue-specific MnSOD levels in muscle or brain; study not yet independently replicated; smaller cohort and cell-type specificity warrant conservative calibration relative to Fluge 2016).
] <ach:shankar2025-mnsod>

#warning-env(title: [Replication Status: Not Yet Independently Replicated])[
Shankar 2025 is a single study. The lymphocyte measurements may not generalise to skeletal muscle, neurons, or cardiac tissue, where MnSOD has the greatest energy-metabolism significance.
]

MnSOD decrease has cascading consequences that amplify all other failure modes: elevated mitochondrial superoxide inactivates aconitase (Section @sec:step5-krebs), oxidises cardiolipin (Section @sec:step6-cofactors), and damages iron-sulfur clusters in Complexes I and II. Notably, PGC-1$alpha$ — the master regulator of mitochondrial biogenesis — transcriptionally upregulates MnSOD; its suppression by chronic inflammation would therefore impair antioxidant defence alongside biogenesis.

*NOT STUDIED in ME/CFS:*
    - *Peroxiredoxin 3 (PRDX3) expression*: PRDX3-knockout mice develop exercise intolerance, reduced ATP production, impaired mitochondrial fusion, and diminished physical endurance @Lee2020prdxKO — features that overlap with ME/CFS but are also shared by many mitochondrial and metabolic conditions. A critical mechanistic link: PRDX3 protects PINK1 from OMA1-mediated proteolytic degradation, so PRDX3 loss simultaneously impairs both H#sub[2]O#sub[2] scavenging and mitophagy @Sonn2022prdx3cardiac — potentially connecting the ROS and mitochondrial quality-control defects observed in ME/CFS. PRDX3 in ME/CFS patient tissue has not been measured.
    - *NRF2 pathway*: NRF2 (nuclear factor erythroid 2-related factor 2) is the master antioxidant transcription factor that simultaneously upregulates MnSOD, GPX1, catalase, thioredoxin, HO-1, NQO1, and glutamate-cysteine ligase (the rate-limiting enzyme for glutathione synthesis). Its suppression by chronic inflammation is well-established in other diseases. Davis et al.\ explicitly identify NRF2 inhibition as a contributor to symptom persistence in ME/CFS, Gulf War Syndrome, and fibromyalgia @Davis2025nrf2lipid, yet *no published study has directly measured NRF2 protein levels, NRF2 nuclear translocation, or NRF2 target gene expression panels in ME/CFS patient samples*. The MERUK-funded study at the University of Dundee (PI: Khan, 2014) was specifically designed to measure NRF2 protein and NRF2-target gene expression in ME/CFS blood samples but appears never to have published results. Shankar et al.\  measured several NRF2 target gene products (MnSOD protein, GPX4, glutathione) without measuring NRF2 itself — the upstream regulator remains unmeasured while downstream consequences are well-documented. In Long COVID, SARS-CoV-2 directly suppresses NRF2 protein and NRF2-dependent gene expression (SOD1, catalase, GPX1, GCLC, NQO1, HMOX1) in airway epithelial cells, with NRF2-knockout mice showing worse disease outcomes @Morris2023nrf2covid — providing a mechanistic bridge for post-viral NRF2 suppression that may persist into ME/CFS. An important caveat: the directionality of NRF2 dysfunction is unknown. Under chronic oxidative stress, NRF2 may be _compensatorily upregulated_ (via KEAP1 oxidation and nuclear translocation) rather than suppressed — producing the same downstream pattern (depleted MnSOD, GPX4, glutathione) if the antioxidant demand exceeds NRF2-driven supply. In this scenario, NRF2 activators would be ineffective or even counterproductive (adding activation signal to an already saturated system). The Morris 2023 viral-suppression model and the compensatory-upregulation model predict identical downstream findings but opposite therapeutic implications — distinguishing them requires direct NRF2 protein and nuclear translocation measurement. NRF2 activators (sulforaphane, dimethyl fumarate, omaveloxolone) are clinically available for other conditions but their use in ME/CFS is premature pending this measurement; dimethyl fumarate carries PML risk requiring lymphocyte monitoring, and omaveloxolone requires hepatic monitoring.
    - *Thioredoxin/thioredoxin reductase (TRX/TXNRD)*: The secondary H#sub[2]O#sub[2] scavenging system and redox regulator. Paul et al.\ documented impaired H#sub[2]S and cysteine metabolism (upstream of thioredoxin) @Paul2021redox but the thioredoxin proteins themselves have not been directly measured.

// Insert Figure: Normal Oxidative Stress Balance
#include "../figures/fig-oxidative-stress-normal.typ"

// Insert Figure: ME/CFS Oxidative Stress Vicious Cycle
#include "../figures/fig-oxidative-stress-mecfs.typ"

Figures @fig:oxidative-stress-normal and @fig:oxidative-stress-mecfs illustrate how oxidative stress creates a self-perpetuating cycle in ME/CFS, where excessive ROS production (5–10% electron leakage vs.\ normal 2%) combined with depleted antioxidants leads to progressive damage.

=== Oxidative and Nitrosative Stress in ME/CFS
<sec:oxidative-stress>

Oxidative and nitrosative stress are consistently documented in ME/CFS and likely contribute to both mitochondrial dysfunction and symptom generation.

=== Reactive Oxygen Species (ROS)
<sec:ros>

==== Sources of ROS in ME/CFS

Multiple sources generate excess ROS:

    - *Mitochondrial electron leakage*: Primary source during normal metabolism
    - *NADPH oxidase*: Activated by immune stimulation
    - *Xanthine oxidase*: Generates superoxide during purine metabolism
    - *Uncoupled eNOS*: Produces superoxide instead of NO
    - *Inflammatory cells*: Respiratory burst during immune activation

==== Damage to Cellular Components

ROS damage multiple targets:

    - *DNA*: Base modifications, strand breaks, mutations
    - *Proteins*: Carbonylation, cross-linking, loss of function
    - *Lipids*: Peroxidation of membrane phospholipids
    - *Carbohydrates*: Glycation reactions

==== Antioxidant System Dysfunction

The antioxidant defense system may be compromised:

    - *Glutathione*: Often reduced in ME/CFS; critical for detoxification
    - *Superoxide dismutase (SOD)*: Variable findings
    - *Catalase*: May be reduced
    - *Vitamins C and E*: Nutritional antioxidants may be depleted
    - *Thioredoxin system*: Important for protein redox balance

=== Reactive Nitrogen Species
<sec:rns>

==== Nitric Oxide Metabolism

Nitric oxide (NO) has complex roles in ME/CFS:

    - *Normal functions*: Vasodilation, neurotransmission, immune defense
    - *iNOS induction*: Inflammatory cytokines induce high NO production
    - *NO excess*: Can inhibit mitochondrial respiration
    - *eNOS uncoupling*: Produces superoxide instead of NO

==== Peroxynitrite Formation

When superoxide and NO react, they form peroxynitrite (ONOO#super[-]):

    - *Highly reactive*: More damaging than either parent molecule
    - *Protein nitration*: 3-nitrotyrosine formation (documented in ME/CFS)
    - *Lipid oxidation*: Damages membrane integrity
    - *Mitochondrial inhibition*: Irreversibly damages ETC complexes

==== Effects on Energy Metabolism

Nitrosative stress specifically impairs energy production:

    - *Complex I inhibition*: NO reversibly inhibits electron transfer
    - *Complex IV inhibition*: NO competitively inhibits oxygen binding at cytochrome c oxidase. Gut-derived hydrogen sulfide (H#sub[2]S) inhibits the same CuB/heme~a#sub[3] site via a distinct mechanism (see @sec:h2s-mitochondrial-toxin) @Nicholls2013sulfideCOX
    - *Aconitase inactivation*: Impairs Krebs cycle
    - *Glyceraldehyde-3-phosphate dehydrogenase*: Inhibited by peroxynitrite

=== Lipid Peroxidation
<sec:lipid-peroxidation>

==== Membrane Damage

Lipid peroxidation disrupts cellular membranes:

    - *Polyunsaturated fatty acids*: Primary targets of peroxidation
    - *Chain reactions*: One initiation event triggers multiple peroxidations
    - *Membrane fluidity*: Peroxidation rigidifies membranes
    - *Permeability changes*: Membranes become leaky

==== Isoprostanes and Other Markers

Lipid peroxidation products serve as biomarkers:

    - *F#sub[2]-isoprostanes*: Prostaglandin-like compounds from arachidonic acid peroxidation
    - *Malondialdehyde (MDA)*: End product of peroxidation
    - *4-hydroxynonenal (4-HNE)*: Reactive aldehyde that modifies proteins
    - *Oxidized LDL*: Marker of lipoprotein oxidation

Plasma F#sub[2]-isoprostanes are elevated in ME/CFS across two independent studies. Kennedy et al.\ ($n = 47$ CFS vs 34 controls) found elevated 8-iso-PGF#sub[2α]; in a low-cardiovascular-risk subgroup, isoprostane levels correlated with PEM severity in a cross-sectional analysis ($p = 0.027$, uncorrected, no effect size reported) @Kennedy2005isoprostanes. Robinson et al.\ ($n = 33$ vs 33) independently confirmed elevation at rest, persisting 24 hours post-exercise @Robinson2010isoprostanes.


=== Research Gaps at Step 9

Six gaps at Step 9, all concerning the mitochondrial antioxidant machinery: (G33) PRDX3 expression in ME/CFS patient tissue (PRDX3-KO mice phenotypically resemble ME/CFS); (G34) NRF2 pathway activation status; (G35) thioredoxin / thioredoxin reductase (TRX/TXNRD) system; (G36) GPX4 lipid-peroxidation surveillance; (G37) direct muscle F2-isoprostanes (the gold-standard lipid peroxidation biomarker); (G38) mitochondrial glutathione (mGSH) pool.

#figure(
  kind: table,
  caption: [Step 9 (ROS scavenging) research gap prioritisation. Step 9 is net-negative for ATP; failure is amplificatory, propagating damage to Steps 3, 5, 6, 7.],
  table(
    columns: (auto, auto, auto, auto, auto, auto, auto),
    align: (left, left, left, left, left, left, center),
    table.header([*Gap*], [*Essentiality*], [*Worst-case impact*], [*Tractability*], [*Therapeutic leverage*], [*Measurement*], [*Priority*]),
    [G33: PRDX3 expression], [High — secondary H#sub[2]O#sub[2] scavenger downstream of MnSOD; Prdx3-KO mice show reduced mtDNA content, reduced ATP, impaired mitochondrial fusion, and diminished exercise endurance @Lee2020prdxKO (phenotype shared with many mitochondrial conditions, not ME/CFS-specific); Sonn et al.\ showed in cardiac tissue that PRDX3 protects PINK1 from OMA1-mediated degradation — PRDX3 loss impairs mitophagy @Sonn2022prdx3cardiac (tissue context may differ in skeletal muscle)], [Indirect: amplifies aconitase, Complex I, cardiolipin damage; additionally impairs mitophagy via PINK1 destabilisation], [Hard — muscle biopsy Western or IHC], [Long-term], [Muscle biopsy (Western or IHC)], [2],
    [G34: NRF2 pathway (master antioxidant regulator)], [High — upregulates MnSOD, GPX1, catalase, thioredoxin, HO-1 simultaneously; but each target also has NRF2-independent regulation], [Indirect but widespread; directionality unknown (suppressed vs compensatorily activated)], [Moderate — NRF2 target mRNA panel in PBMCs (NQO1, HO-1, GCLC); not available through standard clinical labs], [Research-stage — sulforaphane, dimethyl fumarate (requires lymphocyte monitoring), omaveloxolone (hepatic monitoring); premature pending NRF2 measurement], [Blood draw (PBMC qPCR/RNA-seq; research lab, not standard clinical)], [1],
    [G35: Thioredoxin / TXNRD system], [High — parallel to GSH as a major redox buffer; TXN transcript elevated in male Long COVID patients (Shankar 2025 ) but TXNRD1/2 protein and activity unmeasured], [Indirect; could mask or worsen G33], [Moderate — erythrocyte TXNRD activity is available], [Long-term], [Blood draw (erythrocyte TXNRD activity)], [2],
    [G36: GPX4 lipid peroxidation surveillance], [High — sole enzyme preventing ferroptotic membrane damage; GPX4 protein _elevated_ 1.9× in ME/CFS lymphocytes (Shankar 2025, compensatory response)  — but enzymatic activity, tissue-specific data (muscle/brain), and ferroptosis markers (ACSL4, 4-HNE) remain unmeasured], [Indirect; links to cardiolipin peroxidation (@spec:cardiolipin-peroxidation)], [Moderate — lymphocyte data exist; remaining work is activity assay and tissue-specific replication], [Near-term — selenium, vitamin E, CoQ10], [Blood draw (PBMC data exist); muscle biopsy for tissue-specific], [1],
    [G37: Muscle F2-isoprostanes], [Plasma F2-isoprostanes _established_ as elevated in CFS: Kennedy 2005 ($n = 47$ vs 34, correlated with PEM in low-cardiovascular-risk subgroup, $p = 0.027$, cross-sectional) @Kennedy2005isoprostanes and Robinson 2010 ($n = 33$ vs 33, elevated at rest and persisting 24h post-exercise) @Robinson2010isoprostanes — muscle-specific measurement remains genuinely open], [Objective quantification of tissue-level ROS-damage state], [Moderate — LC-MS assay available; muscle biopsy required for tissue-specific data], [Immediate — baseline and response-to-intervention marker], [Blood draw (plasma LC-MS); muscle biopsy for tissue-specific], [1],
    [G38: Mitochondrial glutathione pool (mGSH)], [High — the cytosolic GSH compartment is not equivalent; mGSH is separately regulated], [Direct on ROS scavenging capacity], [Hard — requires subcellular fractionation from biopsy], [Immediate — NAC, GSH precursors already in use], [Muscle biopsy (subcellular fractionation)], [2],
  )
) <tab:step9-gap-priorities>

G34 (NRF2 pathway) and G37 (F2-isoprostanes) are priority 1 because they are tractable PBMC/plasma assays with immediately actionable interventions (sulforaphane, dimethyl fumarate; antioxidant dose-titration). G34 is notable because downstream NRF2 targets are documented as abnormal (Shankar 2025: reduced MnSOD protein, GPX4-mediated lipid peroxidation ), a review has identified NRF2 inhibition as a candidate contributor @Davis2025nrf2lipid, yet the regulator itself has not been measured. The NRF2 target mRNA panel (NQO1, HO-1, GCLC) in PBMCs is a well-established assay requiring only a blood draw. The Long COVID bridge adds plausibility: Morris et al.\ showed that SARS-CoV-2 directly suppresses NRF2 protein and NRF2-dependent gene expression @Morris2023nrf2covid, raising the possibility that post-viral NRF2 suppression persists into ME/CFS. However, reduced downstream targets are also consistent with compensatory NRF2 _upregulation_ overwhelmed by oxidative demand (see Step 9 discussion above); the measurement would resolve directionality. G36 (GPX4) is priority 1 because it connects directly to cardiolipin peroxidation (@spec:cardiolipin-peroxidation) and is already partially characterised by Shankar 2025 — the remaining work is replication. Step 9 as a whole is _amplificatory_ rather than stoichiometric: its failure does not reduce per-cycle ATP output but accelerates damage to every other step, which is why antioxidant-targeted interventions have the potential for non-linear benefit once the primary ROS source is identified.

#speculation(title: [The Itaconate--NRF2 Paradox: NRF2 May Be Activated But Functionally Overwhelmed])[
*Certainty: 0.30 (conditional on itaconate shunt being active in ME/CFS, which itself remains unconfirmed; unconditional certainty is lower).* Itaconate is a direct, potent NRF2 activator: 4-octyl-itaconate alkylates KEAP1 at Cys151, releasing NRF2 for nuclear translocation. If the metabolic safe mode model is correct and itaconate shunt activation is present in ME/CFS, then NRF2 _should already be activated_ by itaconate-mediated KEAP1 modification. Yet downstream NRF2 targets are depleted (Shankar 2025: reduced MnSOD ). This creates a paradox: the problem may not be NRF2 _suppression_ but rather NRF2 activation that is _functionally overwhelmed_ by oxidative demand. Three sub-hypotheses: (a) NRF2 is nuclear and transcriptionally active, but antioxidant enzyme proteins are consumed faster than they can be synthesised; (b) NRF2 target gene promoters (NQO1, GCLC, HMOX1) are epigenetically silenced, preventing transcription despite nuclear NRF2; (c) chronic stress selects for NRF2 splice variants (e.g., NRF2-$Delta$Neh2) with reduced transactivation capacity. These three interpretations have opposite therapeutic implications: if (a), adding NRF2 activators (sulforaphane) would be futile and the correct intervention is reducing oxidative demand (MitoQ, elamipretide); if (b), epigenetic modifiers would be needed; if (c), the NRF2 pathway itself requires isoform-specific targeting. The G34 measurement protocol should therefore include not just NRF2 protein and nuclear localisation but also NRF2 target mRNA levels, promoter methylation status, and NRF2 isoform profiling.

This paradox connects to G39 (PGC-1$alpha$) via the NRF2--PGC-1$alpha$ bidirectional circuit: PGC-1$alpha$ co-activates NRF2 transcription, and NRF2 induces PGC-1$alpha$ expression. In ME/CFS, both arms may be simultaneously impaired — PGC-1$alpha$ hyperacetylated (G39) and NRF2 overwhelmed (G34) — creating a broken hormetic loop. In healthy individuals, exercise generates a brief ROS pulse that activates NRF2, which cooperates with PGC-1$alpha$ to drive both antioxidant defence and mitochondrial biogenesis (mitohormesis). In ME/CFS, this loop is broken at every node: exercise is contraindicated (PEM), AMPK is impaired @Brown2018AMPK, PGC-1$alpha$ cannot be deacetylated (impaired SIRT1), and even if NRF2 is activated, the transcriptional programme is overwhelmed. The patient cannot exercise to activate hormesis, cannot activate PGC-1$alpha$ pharmacologically without AMPK, and the resulting antioxidant deficit makes any subsequent exercise more damaging — a self-reinforcing trap.

*Testable prediction:* NRF2 nuclear protein in ME/CFS PBMCs will be normal or _elevated_ (not reduced); NQO1/HO-1 mRNA may be elevated; but the corresponding protein levels will be disproportionately low relative to mRNA (indicating post-transcriptional failure or excessive protein turnover). Falsified if NRF2 nuclear protein is genuinely reduced, consistent with simple suppression.
] <spec:itaconate-nrf2-paradox>

== Step 10: Mitochondrial Dynamics and Biogenesis
<sec:step10-dynamics-biogenesis>

=== Normal Function and ATP Accounting

Mitochondria undergo continuous fusion (mediated by MFN1/2 and OPA1) and fission (mediated by DRP1 and FIS1). Biogenesis is driven by PGC-1$alpha$. Quality control integrates both processes: impaired segments are isolated by fission and cleared by mitophagy, while new organelles replace them. Direct ATP yield per cycle is zero (this is a capacity setter, not a producer); gated yield depends on the number and quality of functional mitochondria available over longer timescales. Failure reduces total cellular respiratory capacity across Steps 3--9 and is diagnostically difficult because the effect is longitudinal.

=== Documented ME/CFS Findings and Failure Modes

IgG immune complexes from ME/CFS patient serum cause mitochondrial fragmentation (shift toward fission) in endothelial cells (Section @sec:igg-mito-disruption in Chapter @ch:energy-metabolism) @Liu2026IgGcomplexes. Direct measurement of DRP1/FIS1 versus MFN1/2/OPA1 balance in ME/CFS patient tissue has not been performed; the fragmentation is inferred from morphological observation.

#hypothesis(title: [PGC-1α Suppression Blocks Mitochondrial Biogenesis Recovery])[
*Certainty: 0.40.*
Chronic neuroinflammation and elevated TNF-$alpha$ documented in ME/CFS are predicted to suppress PGC-1$alpha$ — the master regulator of mitochondrial biogenesis — thereby preventing compensatory mitochondrial proliferation in response to energy deficits . PGC-1$alpha$ also transcriptionally upregulates MnSOD, meaning its suppression would simultaneously impair ROS clearance (consistent with the Shankar 2025 MnSOD deficit ) and prevent biogenesis recovery after exertion-induced mitochondrial damage. In ME/CFS, where exercise triggers damage but PEM prevents the adaptive exercise response, PGC-1$alpha$ may be caught in a state where it cannot be upregulated (because exercise is contraindicated) yet is chronically suppressed (by inflammation).

Four lines of indirect evidence now constrain this hypothesis:

+ *PBMC null result:* Castro-Marrero et al.\ measured PGC-1$alpha$ protein by immunoblotting in CFS PBMCs ($n approx 23$ CFS, $n approx 15$ FM, $n approx 15$ controls) and found *no significant reduction* in CFS versus controls — while PGC-1$alpha$ and TFAM were both significantly reduced in fibromyalgia @CastroMarrero2013mito. CoQ10 was reduced in both conditions. This is the only published measurement of PGC-1$alpha$ protein in ME/CFS samples. The null result may reflect tissue specificity: PBMCs are not the relevant compartment for a biogenesis hypothesis centred on skeletal muscle and neurons.

+ *Idiopathic chronic fatigue muscle:* Wawrzyniak et al.\ performed vastus lateralis biopsies in sedentary older adults ($n = 20$ with idiopathic chronic fatigue vs $n = 28$ non-fatigued, mean age 72.4) and found PGC-1$alpha$ protein reduced 37.4% ($p < 0.05$), NRF-1 reduced 19.4%, and SIRT3 reduced 18.1% @Wawrzyniak2016biogenesis. Cytochrome c oxidase activity was reduced 18.4%. TFAM was not significantly changed — raising questions about PGC-1$alpha$→TFAM pathway coupling. This is not ME/CFS (idiopathic fatigue in elderly, age and sedentary status confound), but it is the only study demonstrating the PGC-1$alpha$→NRF-1→TFAM cascade in muscle of chronically fatigued individuals.

+ *Compensatory mRNA upregulation:* Wang et al.\ found that WASF3 overexpression in ME/CFS muscle ($n = 14$ biopsies vs $n = 10$ controls) paradoxically *upregulated* PGC-1$alpha$ mRNA alongside respiratory complex genes, despite decreased respiration @wang2023wasf3. This represents a failed compensatory response: the cell attempts biogenesis but cannot overcome WASF3-mediated disruption of respiratory supercomplex assembly. The distinction between PGC-1$alpha$ _mRNA_ (upregulated) and _protein_ (unmeasured in ME/CFS muscle) is critical — post-translational regulation via the AMPK/SIRT1 axis determines whether PGC-1$alpha$ is functionally active.

+ *Upstream AMPK impairment:* Brown et al.\ showed that AMPK activation and glucose uptake are impaired in primary skeletal muscle cells from ME/CFS patients in response to electrical pulse stimulation (exercise mimetic), but pharmacological AMPK activators (metformin, compound 991) *rescued* both deficits @Brown2018AMPK. The defect is proximal to AMPK, not in AMPK itself. AMPK is the major upstream activator of the AMPK→SIRT1→PGC-1$alpha$ biogenesis axis. Combined with the Fluge 2016 finding that SIRT4 (which opposes SIRT1/PGC-1$alpha$) is upregulated in ME/CFS PBMCs , this suggests a dual brake: impaired activation of the pro-biogenesis AMPK/SIRT1 arm plus active suppression via the SIRT4 arm.

*Synthesis:* The picture is more nuanced than simple PGC-1$alpha$ suppression, and two competing interpretations must be distinguished. In PBMCs, PGC-1$alpha$ protein is normal; in ME/CFS muscle, PGC-1$alpha$ mRNA is compensatorily upregulated but the upstream activating cascade (AMPK→SIRT1→deacetylation) is impaired. *Interpretation A (post-translational inactivation):* PGC-1$alpha$ protein in ME/CFS skeletal muscle may be normal or even elevated, but its acetylation state (marking it as inactive) will be increased, and its functional output (TFAM, NRF-1, cytochrome c levels) will be reduced. This predicts benefit from AMPK activators (metformin) or SIRT1 activators (resveratrol). *Interpretation B (WASF3-downstream block):* PGC-1$alpha$ signalling is intact and its acetylation ratio is normal, but the new mitochondria it produces are immediately dysfunctional because WASF3 disrupts respiratory supercomplex assembly @wang2023wasf3. Under this interpretation, the mRNA upregulation reflects a genuine compensatory response that is working correctly but cannot overcome the downstream block; AMPK/SIRT1 activators would be ineffective because the bottleneck is not at PGC-1$alpha$. These two interpretations have opposite therapeutic implications and could be distinguished by measuring PGC-1$alpha$ acetylation ratio alongside WASF3 levels and supercomplex assembly in the same muscle biopsies.

*Testable prediction:* PGC-1$alpha$ protein and mRNA will be measurable in ME/CFS skeletal muscle biopsies. The critical measurement is not total PGC-1$alpha$ but its *acetylation ratio* (inactive:active) and its functional output (TFAM, NRF-1, cytochrome c, MnSOD protein). Under Interpretation A, pharmacological AMPK activators (metformin; requires renal monitoring, contraindicated at eGFR $< 30$) or SIRT1 activators (resveratrol) at sub-exercise doses should reduce PGC-1$alpha$ acetylation and partially restore biogenesis markers without requiring physical exertion. Under Interpretation B, these agents would be ineffective — the critical discriminating experiment.

*Limitation:* PGC-1$alpha$ _protein_ has not been directly measured in ME/CFS skeletal muscle. The PBMC null result @CastroMarrero2013mito and the muscle mRNA upregulation @wang2023wasf3 suggest that the failure mode is post-translational (acetylation/phosphorylation) rather than transcriptional — but this remains a hypothesis.
] <hyp:pgc1alpha-suppression>

#speculation(title: [The Biogenesis Trap: ME/CFS Cells Waste Energy on Dysfunctional Mitochondrial Production])[
*Certainty: 0.25.* PGC-1$alpha$ mRNA is upregulated in ME/CFS muscle @wang2023wasf3, yet AMPK activation is impaired @Brown2018AMPK, SIRT4 opposes SIRT1 , and WASF3 disrupts respiratory supercomplex assembly @wang2023wasf3. This combination creates a _biogenesis trap_ — a metabolic Sisyphus:

+ The cell correctly senses mitochondrial insufficiency and transcribes more PGC-1$alpha$.
+ The PGC-1$alpha$ protein is hyperacetylated (inactive) because SIRT1 cannot deacetylate it (NAD#super[+] depletion in skeletal muscle — not PBMCs, where Heng et al.\ found NAD#super[+] elevated; see @spec:dual-compartment-nad — per @hyp:nad-sirtuin-hub).
+ Even the fraction that _is_ active drives production of new mitochondria that are immediately dysfunctional because WASF3 prevents Complex IV supercomplex assembly.
+ The cell expends energy on biogenesis but receives no functional return.

If the fraction of functional new mitochondria is sufficiently low (i.e., the biosynthetic ATP cost exceeds the functional ATP return from partially assembled organelles), this could be worse than no biogenesis at all, because: (a) lipid and protein synthesis for new membranes consumes ATP; (b) importing nuclear-encoded mitochondrial proteins via TIM/TOM complexes consumes ATP; (c) new dysfunctional mitochondria generate additional ROS (electrons that cannot be efficiently passed to oxygen at Complex IV back up through the chain, increasing electron leak at Complexes I and III); (d) the cell cannot distinguish functional from dysfunctional new mitochondria for mitophagy (they may initially retain membrane potential).

*Testable prediction:* ME/CFS muscle will show elevated markers of active biogenesis (mitochondrial protein import machinery, cardiolipin synthesis intermediates) alongside _decreased_ functional respiratory capacity per mitochondrion (citrate synthase-normalised Complex IV activity) — a signature of "spinning wheels." The WASF3/ER-stress axis should be addressed _before_ stimulating PGC-1$alpha$/biogenesis; otherwise, more biogenesis amplifies ROS and energy waste.

*Competing explanation:* The three components (WASF3, AMPK impairment, SIRT4 upregulation) may be independent consequences of chronic inflammation or metabolic stress rather than forming a coordinated "trap." Under this simpler model, PGC-1$alpha$ mRNA upregulation is a genuine compensatory response that partially works (producing some functional mitochondria), WASF3 is an ER-stress epiphenomenon, and AMPK impairment is upstream of biogenesis entirely. The trap model predicts simultaneous elevation of biogenesis markers with decreased per-organelle function; the independent model predicts variable patterns depending on which component dominates.

*Limitation:* The biogenesis trap combines three findings from different tissue compartments and different studies into a single model. No study has simultaneously measured all components in the same ME/CFS tissue sample. The composite cannot be falsified by a negative result in any single component — only a study measuring WASF3 + PGC-1$alpha$ acetylation + supercomplex assembly + functional respiratory capacity in the same biopsies could test the integrated model.
] <spec:biogenesis-trap>

==== Sympathetic Nervous System as an Upstream AMPK Suppressor
<sec:sns-ampk-suppression>

The upstream AMPK impairment documented by Brown et al.\ @Brown2018AMPK (point 4 above) may have a specific autonomic origin. Sympathetic nervous system activation elevates intracellular cAMP via $beta$-adrenergic receptors, activating protein kinase A (PKA). PKA directly phosphorylates AMPK$alpha$ at Ser485/491, inhibiting its activation by LKB1 @Park2023AMPK. In a state of chronic sympathetic dominance---characteristic of ME/CFS autonomic dysfunction (Chapter @ch:cardiovascular)---sustained PKA activity would tonically suppress AMPK, blocking the AMPK $arrow.r$ SIRT1 $arrow.r$ PGC-1$alpha$ biogenesis axis described above .

Park et al.\ (2023) further demonstrate that AMPK's role in autophagy is more nuanced than previously understood: during acute energy depletion, AMPK actually suppresses autophagy (via ULK1 inhibition) to preserve cellular viability, only permitting autophagy during recovery @Park2023AMPK. In ME/CFS, where energy depletion may be chronic rather than transient, this dual role could create a paradox: AMPK is both tonically suppressed by sympathetic PKA _and_ functionally programmed to suppress autophagy during the energy deficit it is experiencing. The result is a double brake on mitophagy and mitochondrial quality control.

This SNS $arrow.r$ PKA $arrow.r$ AMPK suppression mechanism connects to the broader autonomic aging framework (Chapter @ch:cardiovascular Section @sec:ans-aging-phenotype): reduced vagal tone simultaneously removes the cholinergic anti-inflammatory brake on NF-$kappa$B , while sympathetic overdrive suppresses the AMPK-dependent quality control machinery responsible for clearing damaged mitochondria. The two arms of autonomic imbalance converge on the same outcome: accumulation of dysfunctional mitochondria and sustained inflammaging.

The Brown et al.\ finding that pharmacological AMPK activators (metformin, compound 991) rescued the deficit @Brown2018AMPK suggests that the AMPK machinery itself is intact---the problem is upstream signalling. If sympathetic PKA is the upstream suppressor, then interventions reducing sympathetic tone ($beta$-blockers, vagal nerve stimulation) could theoretically restore AMPK activity without requiring direct pharmacological activation. This is speculative: no study has tested whether autonomic modulation improves AMPK phosphorylation in ME/CFS tissue.

=== mtDNA Alterations and Impaired Mitophagy

Mitochondrial DNA (mtDNA) is vulnerable to damage:

    - *Mutations*: Point mutations accumulate with oxidative stress
    - *Deletions*: Large deletions impair multiple ETC components
    - *Copy number*: Altered mtDNA copy number in some ME/CFS studies
    - *Heteroplasmy*: Mixture of normal and mutant mtDNA

==== Impaired Mitophagy

Mitophagy removes damaged mitochondria:

    - *PINK1/Parkin pathway*: Marks damaged mitochondria for degradation
    - *Impaired clearance*: May allow dysfunctional mitochondria to persist
    - *Accumulation*: Damaged mitochondria continue producing ROS
    - *Quality control failure*: Network of damaged organelles


=== Circulating Cell-Free Mitochondrial DNA and Mitophagy Signalling
<sec:cfmtdna-mitophagy>

Circulating cell-free mitochondrial DNA (ccf-mtDNA) is released from cells during both physiological processes (exercise, mitophagy) and pathological states (cell death, inflammation). Its levels therefore reflect the balance between mitochondrial turnover, damage, and clearance. In acute SARS-CoV-2 infection, markedly elevated ccf-mtDNA signals massive mitochondrial release during cell death and predicts adverse outcomes. By contrast, Matits et al.\  ($n = 228$; EPILOC cohort) reported nominally lower ccf-mtDNA in Long COVID patients compared to recovered controls, though the finding did not reach statistical significance after full covariate adjustment ($p = 0.089$; partial $eta^2 = 0.01$--$0.02$; $p = 0.038$ only in a sensitivity analysis excluding high-CRP outliers). A preliminary case series (Szögi et al.\ ; $n = 5$ Long COVID, $n = 5$ ciliary dyskinesia controls) also reported reduced ccf-mtDNA alongside mitochondrial ultrastructural abnormalities, though the extremely small sample and non-standard controls preclude generalisation.

#hypothesis(title: [Impaired Mitophagy Traps Damaged Mitochondria in Long COVID])[
*Certainty: 0.35.* _If_ ccf-mtDNA is genuinely reduced in Long COVID (a finding that did not reach conventional significance after full covariate adjustment in the sole adequately powered study), one interpretation is that impaired mitophagy prevents clearance and extracellular release of damaged mitochondria, causing their intracellular accumulation. This would produce chronic cellular stress and energy deficits without the external damage signal seen in acute infection  . This connects to the mitophagy coordination pathway proposed in Section @sec:thyroid-mito-regulation. If the ERR$alpha$/ULK1/DRP1 fission-mitophagy-biogenesis cycle is disrupted, damaged organelles persist. However, the deconditioning alternative has not been excluded---physically active individuals have higher ccf-mtDNA, and Long COVID patients are typically less active than recovered controls.

*Testable prediction:* Muscle biopsy from Long COVID patients with low ccf-mtDNA should show increased mitochondrial PINK1/Parkin co-localisation (stalled mitophagy) compared to recovered controls with normal ccf-mtDNA. Falsified if mitophagy markers are normal or reduced despite low ccf-mtDNA.
] <hyp:impaired-mitophagy-longcovid>

In ME/CFS, Tsilioni et al.\  found exosome-associated mtDNA _elevated_ after exercise\ ---a different compartment, different timing, and potentially a different mechanism (active exosomal secretion rather than passive release from cell death). Quantitative details (sample size, effect size) for the Tsilioni study are not available from the abstract, and the finding has not been independently replicated; it should be weighted accordingly. Whether resting ccf-mtDNA is also altered in ME/CFS is unknown (see @spec:cfmtdna-distinguish in Section @sec:cross-disease for the cross-disease comparison).

*Post-hoc observation: IgG immune complexes and the mitophagy block.*
The following connection was constructed after both the Liu and Matits findings were available; it was not predicted by either study and should be read as a hypothesis-generating observation, not as a deduction. The IgG immune complex finding (Section @sec:igg-mito-disruption above) could in principle relate to the impaired mitophagy hypothesis. Liu et al.\ @Liu2026IgGcomplexes showed that IgG from ME/CFS patients induces mitochondrial fragmentation _without_ depolarising the fragments---spare respiratory capacity was maintained or increased. Since the canonical PINK1/Parkin mitophagy pathway requires depolarisation, IgG-induced fragments that retain membrane potential might evade this clearance route, potentially contributing to intracellular accumulation. However, this reasoning has several unverified steps: (a) PINK1/Parkin dynamics have not been measured in IgG-treated cells; (b) PINK1-independent mitophagy pathways (BNIP3, FUNDC1) could clear polarised fragments; (c) the Liu experiment used ME/CFS sera while the Matits finding is in Long COVID patients; (d) the HUVEC model may not represent whole-body ccf-mtDNA dynamics. The connection remains speculative and requires direct experimental testing before it can be considered mechanistically supported.

*Deconditioning as a causal feedback loop, not merely a confound.*
Physical activity is a potent stimulus for mitophagy via AMPK activation. The deconditioning commonly seen in ME/CFS and Long COVID patients may therefore not simply confound the ccf-mtDNA measurement---it may _mediate_ the mitophagy impairment. Reduced activity $arrow.r$ reduced AMPK-stimulated mitophagy $arrow.r$ accumulation of damaged mitochondria $arrow.r$ further impaired energy production $arrow.r$ further reduced activity capacity. This creates a self-reinforcing loop in which deconditioning is both a consequence and a cause of mitochondrial quality control failure. Strict pacing, while essential for preventing PEM-mediated kindling (Chapter @ch:neurological), may paradoxically worsen this mitophagy deficit. Whether a "therapeutic window" exists---activity sufficient to maintain AMPK-mediated mitophagy signalling without crossing the PEM threshold---is an open question with direct clinical implications (see Chapter @ch:lifestyle for pacing recommendations).

#warning-env(title: [Deconditioning--Mitophagy Loop Does Not Justify Graded Exercise Therapy])[
The observation that reduced physical activity may impair AMPK-mediated mitophagy does _not_ justify graded exercise therapy (GET), which operates at intensities far above any plausible mitophagy-only threshold and carries well-documented risk of harm in ME/CFS patients. The "therapeutic window" concept---if one exists---would involve minimal activity levels (e.g., gentle movement well below the PEM threshold), not structured exercise programmes. This distinction is critical: the deconditioning loop is a mechanistic observation, not a clinical recommendation.
]

*Clinical translation:* None of the pathways described in this subsection (ccf-mtDNA, mitophagy, PINK1/Parkin) are currently testable or targetable in clinical practice. ccf-mtDNA measurement is a research-only assay. No approved drug specifically targets mitophagy in ME/CFS or Long COVID. The one provisional clinical implication is that strict rest-only approaches may have a theoretical cost; discuss gentle movement within the patient's individual PEM threshold with a pacing specialist (Chapter @ch:lifestyle). For severe or very severe patients who are bedbound, this consideration does not apply---rest is essential.

#warning-env(title: [Replication Status and Limitations])[
The mitochondrial fragmentation effect was predominantly observed in female patients; male-specific mechanisms remain unexplored. The HUVEC model relies heavily on glycolysis, which may mask oxidative phosphorylation effects that would manifest in more OXPHOS-dependent tissues (skeletal muscle, neurons). The IgG purification method did not effectively capture pentameric IgM, which may carry additional pathogenic activity. Not all ME/CFS patients' IgG induced fragmentation, consistent with disease heterogeneity. Independent replication is pending.
]


=== Research Gaps at Step 10

Five gaps at Step 10, all concerning the longitudinal capacity-setting machinery: (G39) PGC-1$alpha$ protein acetylation state and functional output in ME/CFS skeletal muscle — PGC-1$alpha$ mRNA is paradoxically upregulated @wang2023wasf3, protein is normal in PBMCs @CastroMarrero2013mito, and upstream AMPK is impaired @Brown2018AMPK, but the critical muscle-biopsy measurement of PGC-1$alpha$ post-translational state has never been performed; (G40) DRP1/FIS1 vs MFN1/2/OPA1 balance (fission/fusion tone); (G41) direct mitophagy flux in patient cells (PINK1/Parkin co-localisation, LC3-II turnover); (G42) mtDNA copy number in skeletal muscle (inconsistent findings from blood; muscle is the relevant tissue); (G43) TFAM expression (mitochondrial transcription factor A, downstream of PGC-1$alpha$).

#figure(
  kind: table,
  caption: [Step 10 (Dynamics and biogenesis) research gap prioritisation. Step 10 failure is longitudinal — it reduces total mitochondrial capacity over days to weeks rather than per-cycle output.],
  table(
    columns: (auto, auto, auto, auto, auto, auto, auto),
    align: (left, left, left, left, left, left, center),
    table.header([*Gap*], [*Essentiality*], [*Worst-case impact*], [*Tractability*], [*Therapeutic leverage*], [*Measurement*], [*Priority*]),
    [G39: PGC-1α acetylation state and functional output in muscle], [High — master transcription factor gating every biogenesis target (TFAM, NRF-1, MnSOD, cytochrome c, etc.); mRNA upregulated @wang2023wasf3 but protein normal in PBMCs @CastroMarrero2013mito — post-translational state is the critical unknown], [Longitudinal; halving PGC-1α _activity_ halves new mitochondrial synthesis rate], [Hard — muscle biopsy Western + acetylation-specific IP + qPCR for targets], [Near-term — metformin (AMPK; Brown 2018 showed rescue @Brown2018AMPK), low-dose resveratrol (SIRT1), AICAR], [Muscle biopsy (Western + acetylation IP)], [1],
    [G40: DRP1/FIS1 vs MFN1/2/OPA1 balance (fission/fusion tone)], [High — determines whether damaged segments are isolated for mitophagy or kept in the network], [Kinetic; affects quality-control efficiency], [Hard — muscle biopsy IF + Western], [Long-term — Mdivi-1 is research-only], [Muscle biopsy (IF + Western)], [2],
    [G41: Direct mitophagy flux (PINK1/Parkin, LC3-II turnover)], [High — the _only_ mechanism for removing damaged mitochondria; Hochecker 2025: LC3-II elevated ~20% in ME/CFS PBMCs (trend $p = 0.054$) but without lysosomal inhibitors the direction of flux (increased initiation vs stalled completion) cannot be resolved @Hochecker2025mitophagy; PINK1/Parkin/BNIP3 not yet measured], [Determines whether damaged mitochondria accumulate (G39 + G40 interaction)], [Hard — PBMC mitophagy flux assay exists but specialist; requires bafilomycin A1 or chloroquine block for flux measurement], [Near-term — urolithin A (OTC, phase 1--2 in sarcopenia; not yet phase 3)], [Blood draw (PBMC flux assay, specialist)], [1],
    [G42: Skeletal muscle mtDNA copy number], [Medium — proxy for total mitochondrial content], [~proportional to mtDNA depletion], [Moderate — muscle biopsy qPCR is standard], [Long-term], [Muscle biopsy (qPCR)], [2],
    [G43: TFAM expression], [Medium — downstream of PGC-1α; G39 covers most of the signal], [Overlaps with G39], [Moderate], [Long-term], [Muscle biopsy], [3],
  )
) <tab:step10-gap-priorities>

G39 (PGC-1α) remains the highest-priority Step 10 gap, though the evidence landscape has shifted from "entirely unstudied" to "partially characterised with contradictory signals." Castro-Marrero 2013 found PGC-1$alpha$ protein normal in CFS PBMCs @CastroMarrero2013mito; Wawrzyniak 2016 found it reduced 37% in idiopathic chronic fatigue muscle (not ME/CFS) @Wawrzyniak2016biogenesis; the WASF3 study found PGC-1$alpha$ _mRNA_ upregulated in ME/CFS muscle @wang2023wasf3; and Brown 2018 showed impaired upstream AMPK signalling that could prevent PGC-1$alpha$ functional activation @Brown2018AMPK. The resolution likely lies in post-translational regulation: PGC-1$alpha$ may be present but inactive (hyperacetylated) in ME/CFS muscle due to the dual brake of impaired AMPK/SIRT1 activation and active SIRT4 suppression . _What is needed:_ a muscle biopsy study measuring not just total PGC-1$alpha$ protein but its acetylation state and functional outputs (TFAM, NRF-1, cytochrome c). Step 10 is _conditionally essential_: cells can run on existing mitochondria for days without biogenesis, but sustained dysfunction depletes capacity non-linearly via a damaged-mitochondria accumulation cycle — a pattern consistent with the progressive capacity loss proposed for post-exertional malaise.

=== The NAD#super[+]--Sirtuin--Acetylation Hub

The preceding sections treat NAD#super[+] depletion (G22, Step 6), NRF2 pathway dysfunction (G34, Step 9), and PGC-1$alpha$ hyperacetylation (G39, Step 10) as separate research gaps. A post-hoc observation: these three gaps _could_ be mechanistically linked through a single upstream regulator — NAD#super[+]-dependent sirtuin activity — if tissue NAD#super[+] depletion proves real. This convergence rests on well-established enzymology (the sirtuin-substrate relationships are documented in non-ME/CFS biology), though the specific claim that these connections are operative in ME/CFS tissue remains a hypothesis.

SIRT1 deacetylates PGC-1$alpha$ at multiple lysine residues, converting it from an inactive hyperacetylated form to the active transcription factor that drives mitochondrial biogenesis . SIRT1 has also been reported to deacetylate NRF2, promoting its nuclear retention and transcriptional activity on antioxidant response elements, though the directness and significance of this interaction remain debated (SIRT1 may also modulate NRF2 indirectly via KEAP1 or other regulators). SIRT3, a mitochondrial matrix sirtuin, deacetylates and activates isocitrate dehydrogenase 2 (IDH2), MnSOD, and components of Complex I — the last of which directly affects electron transport chain flux. All three sirtuins require NAD#super[+] as a co-substrate (not merely a cofactor — NAD#super[+] is consumed stoichiometrically, one molecule per deacetylation event, producing nicotinamide and O-acetyl-ADP-ribose).

In ME/CFS, three independent NAD#super[+]-consuming mechanisms are plausible, though their tissue-specific operation remains largely inferred rather than directly measured:

+ *PARP hyperactivation (inferred):* The Shankar 2025 MnSOD deficit in lymphocytes  predicts increased mitochondrial superoxide $arrow.r$ oxidative DNA damage $arrow.r$ PARP1 activation $arrow.r$ NAD#super[+] consumption. A single DNA double-strand break can consume hundreds of NAD#super[+] molecules through PARP poly-ADP-ribosylation. PARP activity has not been directly measured in ME/CFS tissue.
+ *CD38 upregulation (inferred from immunology):* CD38 is the dominant NAD#super[+]-consuming enzyme in most tissues and is strongly upregulated by inflammatory cytokines (TNF-$alpha$, IFN-$gamma$) — both chronically elevated in ME/CFS. CD38 also degrades the NAD#super[+] precursor NMN, creating a double block on the salvage pathway. Note that CD38 upregulation in PBMCs would _also_ consume NAD#super[+] there — yet Heng et al.\ found PBMC NAD#super[+] _elevated_ @heng2025mecfs, suggesting that if CD38 is active in PBMCs, its consumption is outpaced by ETC-driven NAD#super[+] backup in that compartment.
+ *Kynurenine pathway diversion (documented in plasma):* Tryptophan is the sole substrate for de novo NAD#super[+] synthesis via the kynurenine pathway. IDO1 upregulation by IFN-$gamma$ diverts tryptophan toward quinolinic acid (neurotoxic) rather than completing the synthesis to NAD#super[+] — documented in ME/CFS plasma metabolomics , though the tissue-specific impact on muscle or neuronal NAD#super[+] pools is unmeasured.

#hypothesis(title: [NAD#super[+]--Sirtuin--Acetylation Hub: Unified Upstream Regulator of G22, G34, and G39])[
*Certainty: 0.35.* NAD#super[+] depletion in energy-intensive tissues (skeletal muscle, neurons — not PBMCs, where Heng et al.\ found NAD#super[+] _elevated_ @heng2025mecfs, consistent with substrate backup rather than depletion) simultaneously inactivates SIRT1, SIRT3, and shifts the SIRT1/SIRT4 balance toward the inhibitory SIRT4 arm . The downstream consequences propagate through four documented pathways:

+ *PGC-1$alpha$ hyperacetylation* (G39): SIRT1 cannot deacetylate PGC-1$alpha$ $arrow.r$ biogenesis is blocked despite compensatory mRNA upregulation @wang2023wasf3 $arrow.r$ mitochondrial mass declines over weeks (Step 10).
+ *NRF2 functional suppression* (G34): SIRT1 cannot deacetylate NRF2 $arrow.r$ reduced nuclear retention and ARE binding $arrow.r$ antioxidant target genes (MnSOD, GPX4, NQO1) are under-expressed even if NRF2 protein is present  @Davis2025nrf2lipid (Step 9).
+ *Complex I and TCA cycle impairment:* SIRT3 cannot deacetylate Complex I subunits (NDUFA9) and IDH2 $arrow.r$ reduced electron transport and TCA flux $arrow.r$ lower ATP and more ROS (Steps 4--5).
+ *PDC regulation via SIRT4:* When SIRT1 activity falls but SIRT4 remains active (as documented in ME/CFS PBMCs ), SIRT4 opposes energy metabolism through at least two mechanisms: ADP-ribosylation of glutamate dehydrogenase (reducing glutamine-derived TCA anaplerosis) and lipoamidase activity that removes lipoyl groups from the E2 subunit of PDC $arrow.r$ reduced pyruvate entry into the TCA cycle (Step 3).

This model predicts that G22, G34, and G39 are not independent gaps but three readouts of a single upstream failure. Resolving G22 (measuring tissue NAD#super[+] and PARP/CD38 activity) would therefore provide mechanistic context for all three.

*Testable predictions:*
+ NAD#super[+] in ME/CFS skeletal muscle will be _reduced_ (opposite to the PBMC elevation found by Heng et al.\ @heng2025mecfs), predicting a tissue-compartment dissociation.
+ The muscle NAD#super[+]/NADH ratio will correlate inversely with PGC-1$alpha$ acetylation ratio in the same biopsies — the tighter the correlation, the stronger the evidence that NAD#super[+] depletion is the rate-limiting step for SIRT1-mediated PGC-1$alpha$ activation.
+ NR or NMN supplementation (which raises tissue NAD#super[+]) should simultaneously reduce PGC-1$alpha$ acetylation, increase NRF2 target gene expression, and improve Complex I-linked respiration in ME/CFS patient-derived cells — all three effects from a single intervention targeting the hub.
+ A factorial RCT (NAD#super[+] precursor $times$ AMPK activator) should show synergistic rather than additive effects on biogenesis markers, because AMPK and SIRT1 mutually activate each other (AMPK increases SIRT1 activity by upregulating NAMPT, raising the NAD#super[+] pool; SIRT1 deacetylates LKB1, which activates AMPK).

*Falsifiability:* This hub model would be falsified if (a) muscle NAD#super[+] is normal in ME/CFS despite PGC-1$alpha$ hyperacetylation, indicating a SIRT1-independent mechanism for the acetylation; or (b) NR/NMN supplementation raises tissue NAD#super[+] but does not change PGC-1$alpha$ acetylation or NRF2 target expression, indicating that NAD#super[+] is not rate-limiting for sirtuin activity in this context; or (c) PGC-1$alpha$ acetylation is normal in ME/CFS muscle, eliminating the need for a sirtuin-based explanation.

*Competing explanation:* A simpler model does not require NAD#super[+] depletion as a unifying hub. Chronic inflammation — well-documented in ME/CFS — can independently suppress PGC-1$alpha$ transcription (via NF-$kappa$B), impair NRF2 signalling (via inflammatory pathway crosstalk), and damage Complex I (via ROS) through their own well-characterised regulatory mechanisms. Under this three-cause model, G22, G34, and G39 are genuinely independent and do not require a shared upstream regulator. The hub model would be preferred over this simpler alternative only if co-measurement shows that NAD#super[+] depletion _correlates more tightly_ with all three downstream readouts than inflammatory markers do — i.e., if a multivariate model with NAD#super[+] as predictor outperforms one using TNF-$alpha$/IL-6 as predictors for the combined PGC-1$alpha$ acetylation + NRF2 target + Complex I activity outcome.

*Limitation:* The PBMC NAD#super[+] elevation @heng2025mecfs and the predicted muscle NAD#super[+] depletion have never been measured in the same cohort. The tissue-compartment dissociation is a prediction — specifically for skeletal muscle — not an observation; if muscle NAD#super[+] proves normal, the model does not retreat to "the relevant tissue is neurons" but is falsified (criterion a above). SIRT1 has numerous substrates beyond PGC-1$alpha$ and NRF2 (p53, FOXO3, NF-$kappa$B), and the acetylation changes may reflect a broader regulatory shift rather than a specific biogenesis/antioxidant mechanism. The hub model risks unfalsifiable circularity if every downstream effect is attributed to NAD#super[+] without specifying which effects would disprove the connection. This model was assembled post-hoc from pre-existing gap analyses; it should be evaluated as a hypothesis-generating framework, not as a confirmed mechanistic finding.
] <hyp:nad-sirtuin-hub>

== Summary: Uninvestigated Failure Modes with Therapeutic Implications
<sec:cartography-gaps>


_Methodological caveat._ The speculations developed throughout this chapter consistently propose vicious cycles, self-amplifying cascades, and multi-node feedback loops. This pattern warrants explicit acknowledgement: every proposed loop conveniently generates therapeutic targets, and alternative models in which the same observations arise from independent, non-interacting causes are systematically less developed. The reader should weight the cyclic framings as hypothesis-generating tools — useful for motivating specific experiments — rather than as established mechanisms. The directionality of the speculations (toward complexity and toward treatment targets) reflects the author's integrative framing; a reductionist framing that explains the same data through fewer, independent mechanisms deserves equal prior probability until differentiating experiments are performed.

The systematic analysis above identifies the following failure modes that are mechanistically established in other diseases, plausibly operative in ME/CFS based on upstream or downstream evidence, but have never been directly studied in ME/CFS patients:

    - *PDC cofactor depletion* (thiamine, riboflavin, lipoic acid): each causes PDC failure in isolation; combination deficiency is untrialled
    - *KGDHC failure*: same cofactors as PDC; simultaneous impairment is mechanistically expected but unmeasured
    - *ISCU (iron-sulfur cluster assembly)*: failure would cause combined aconitase, Complex I, Complex II, and ETF-QO deficiency simultaneously
    - *ANT autoantibodies*: could produce cellular energy crisis with normal ETC oxygen consumption
    - *Cardiolipin oxidation*: elamipretide intervention studied in Barth syndrome and Long COVID; not trialled in ME/CFS
    - *CPT1/malonyl-CoA regulation*: the fatty acid--glucose utilisation switch has not been characterised
    - *NRF2 pathway*: master antioxidant regulator upstream of documented antioxidant deficits (MnSOD, GPX4, glutathione), though each target also has NRF2-independent regulation; directionality unknown (suppressed vs compensatorily upregulated but overwhelmed) — the measurement would resolve this and determine whether NRF2 activators are appropriate @Davis2025nrf2lipid @Morris2023nrf2covid
    - *PRDX3 and thioredoxin*: PRDX3-KO animal model is phenotypically similar to ME/CFS; not measured in patients
    - *PGC-1α post-translational inactivation*: blocks both biogenesis and antioxidant recovery; PGC-1$alpha$ mRNA paradoxically upregulated in ME/CFS muscle @wang2023wasf3, protein normal in PBMCs @CastroMarrero2013mito, upstream AMPK signalling impaired @Brown2018AMPK — the failure is likely post-translational (hyperacetylation), not transcriptional
    - *NAD#super[+]--sirtuin--acetylation hub*: NAD#super[+] depletion in energy-intensive tissues may simultaneously inactivate SIRT1 (blocking PGC-1$alpha$ and NRF2 deacetylation) and SIRT3 (impairing Complex I and IDH2), unifying gaps G22, G34, and G39 under a single upstream regulator (@hyp:nad-sirtuin-hub)
    - *UCP2/UCP3 upregulation*: predicted compensatory response to ROS that would further reduce ATP yield; not measured in ME/CFS skeletal muscle
    - *Riboflavin* (as standalone intervention): the FAD-dependent beta-oxidation/ETC failure signature has never been formally trialled

See Chapter @ch:medications-mechanisms for treatment protocols related to established interventions (CoQ10, L-carnitine, NADH). The gaps listed above represent priority research directions rather than current clinical recommendations.


== Integrative Reference Tables
<sec:integrative-tables>

The following tables synthesise the ten-step analysis into cross-step reference views: reactions (success and failure), therapeutic targets, yield accounting, and step interactions.

=== Key Reactions: Success and Failure Modes per Step

#figure(
  kind: table,
  caption: [Primary biochemical reaction and documented or predicted failure-mode reactions at each step. Failure modes listed are those with ME/CFS-specific evidence or strong mechanistic prior.],
  table(
    columns: (auto, 1fr, 1fr),
    align: (left, left, left),
    table.header([*Step*], [*Success reaction*], [*ME/CFS failure mode(s)*]),
    [1: Substrate delivery], [Glucose $arrow.r$ cell via GLUT1/4; fatty acids via CD36/CPT1], [Impaired GLUT4 trafficking (G1); reduced fatty acid oxidation with paradoxical lipid accumulation ],
    [2: Glycolysis], [Glucose $arrow.r$ 2 pyruvate + 2 ATP + 2 NADH], [Impaired AMPK-stimulated glycolytic activation @Brown2018AMPK; possible HK/PFK1/PKM2 deficits (G4, unstudied)],
    [3: PDC], [Pyruvate + CoA + NAD#super[+] $arrow.r^("TPP, FAD, lipoate")$ acetyl-CoA + CO#sub[2] + NADH], [PDK-mediated PDC phosphorylation (inactivation); cofactor depletion (thiamine, riboflavin, lipoate); SIRT4 lipoamidase E2 delipoylation],
    [4: Beta-oxidation], [Fatty acyl-CoA $arrow.r^("FAD, NAD+, CoA")$ acetyl-CoA + FADH#sub[2] + NADH (per 2C removed)], [Reduced CPT1 activity or malonyl-CoA dysregulation; VLCAD/LCAD/MCAD deficits (G12, unstudied)],
    [5: Krebs cycle], [Acetyl-CoA $arrow.r^("NAD+, FAD, GDP")$ 3 NADH + FADH#sub[2] + GTP + 2 CO#sub[2]], [Aconitase inactivation by superoxide (G16: protein up 1.9$times$, activity unmeasured); KGDHC inhibition by H#sub[2]O#sub[2] and HNE (G17)],
    [6: Cofactors], [NAD#super[+] $arrow.l.r$ NADH; FAD $arrow.l.r$ FADH#sub[2]; CoQ10 shuttles electrons], [NAD#super[+] depletion in energy-intensive tissues (G22, predicted); riboflavin/FAD insufficiency (G23); CoQ10 tissue deficit (G26)],
    [7: ANT], [ATP#sub[matrix] + ADP#sub[cytosol] $arrow.l.r^("ANT")$ ADP#sub[matrix] + ATP#sub[cytosol]], [Anti-ANT1 autoantibodies trapping ATP in matrix (G28, unstudied)],
    [8: PCr shuttle], [ATP + Cr $arrow.l.r^("mi-CK")$ ADP + PCr; PCr + ADP $arrow.l.r^("cy-CK")$ Cr + ATP], [Brain creatine depletion (Godlewska 2025, 7T MRS ); SLC6A8 dysfunction (G29, unstudied)],
    [9: ROS scavenging], [O#sub[2]#super[•−] $arrow.r^("MnSOD")$ H#sub[2]O#sub[2] $arrow.r^("GPX, PRDX3")$ H#sub[2]O], [Decreased MnSOD protein ; GPX4-mediated lipid peroxidation; NRF2 unmeasured (G34)],
    [10: Dynamics], [Fission $arrow.r$ mitophagy; PGC-1$alpha$ $arrow.r$ biogenesis], [PGC-1$alpha$ hyperacetylation (inferred: impaired AMPK/SIRT1 + elevated SIRT4 ); IgG-induced fragmentation @Liu2026IgGcomplexes],
  )
) <tab:reactions-per-step>

=== Therapeutic Map: Interventions Targeting Each Step

#figure(
  kind: table,
  caption: [Medications and supplements with mechanistic rationale at each step. Evidence: RCT = randomised controlled trial in ME/CFS or related condition; OL = open-label; Mech = mechanistic rationale only. All require physician review.],
  table(
    columns: (auto, 1fr, auto),
    align: (left, left, center),
    table.header([*Step*], [*Intervention (target)*], [*Evidence*]),
    [1], [Metformin (AMPK $arrow.r$ GLUT4) @Brown2018AMPK], [Mech],
    [2], [AMPK activators (glycolytic flux) @Brown2018AMPK], [Mech],
    [3], [DCA (PDK inhibitor); _caution:_ may worsen ROS], [Mech],
    [3], [Thiamine 300--600 mg/day (PDC E1) @Bager2021thiamineIBD], [RCT (IBD)],
    [3], [Riboflavin 400 mg/day (PDC E3) @Schoenen1998riboflavinmigraine], [RCT (migraine)],
    [4], [L-carnitine 1--2 g/day (CPT1 substrate)], [OL],
    [5], [Alpha-lipoic acid 600 mg/day (KGDHC E2)], [Mech],
    [6], [CoQ10 200--400 mg/day ubiquinol ], [RCT],
    [6], [NR/NMN 250--500 mg/day (NAD#super[+]) @heng2025mecfs], [Mech],
    [7], [Elamipretide (cardiolipin stabiliser)], [Mech],
    [8], [Creatine monohydrate 5 g/day @Godlewska2024creatineMRS], [OL],
    [9], [Sulforaphane (NRF2); _caution:_ may be futile if NRF2 overwhelmed], [Mech],
    [9], [NAC 600--1200 mg/day (glutathione precursor)], [Mech],
    [10], [Metformin (AMPK $arrow.r$ PGC-1$alpha$) @Brown2018AMPK], [Mech],
    [10], [Urolithin A (mitophagy; phase 1--2 in sarcopenia)], [Mech],
  )
) <tab:therapeutic-map>

=== Yield Accounting: Cumulative ATP Loss Under Failure Scenarios

#figure(
  kind: table,
  caption: [Rough estimated ATP yield per glucose under isolated single-step failure; values are author estimates based on gated-yield logic from @tab:atp-accounting, not derived from quantitative modelling or experimental data. Combined failures are worse than additive (@tab:interaction-matrix). Steps 8--10 ($dagger$) do not change per-cycle yield but degrade performance over time.],
  table(
    columns: (auto, auto, auto, auto, 1fr),
    align: (left, center, center, center, left),
    table.header([*Step*], [*Healthy*], [*Mild*], [*Severe*], [*Mechanism of loss*]),
    [1: Substrate delivery], [~30], [~25], [~5], [Reduced substrate $arrow.r$ lower flux],
    [2: Glycolysis], [~30], [~28], [~20], [Glycolytic ATP lost; downstream flux reduced],
    [3: PDC], [~30], [~20], [~7], [~25 gated ATP lost (83%); only glycolytic ATP remains],
    [4: Beta-oxidation], [~30], [~30], [~15], [Glucose basis unaffected; fatty-acid tissues lose ~50%],
    [5: Krebs cycle], [~30], [~22], [~7], [~20 gated ATP (67%) at risk],
    [6: Cofactors], [~30], [~22], [~5], [Multi-step gate: one deficit impairs multiple steps],
    [7: ANT], [~30], [~20], [~2], [Matrix ATP trapped; 93% is matrix-produced],
    [8$dagger$: PCr shuttle], [~30], [~30], [~30], [Per-cycle yield unchanged; burst capacity degraded],
    [9$dagger$: ROS scavenging], [~30], [~28], [~15], [Progressive: ROS damages Steps 3, 5, 6, 7 over days--weeks],
    [10$dagger$: Dynamics], [~30], [~28], [~10], [Longitudinal: mito mass declines over weeks--months],
  )
) <tab:yield-accounting>

=== Cross-Step Interaction Matrix

#figure(
  kind: table,
  caption: [Failure at Step X (row) exacerbating Step Y (column), based on mechanistic reasoning from the step-by-step analysis. $arrow.r.double$ = direct amplification with cited evidence; $arrow.r$ = indirect/delayed or inferred from general biochemistry; — = no significant interaction. Individual cell assignments reflect author judgment and have not been systematically validated.],
  table(
    columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto),
    align: (center, center, center, center, center, center, center, center, center, center, center),
    table.header([*↓X \\ Y→*], [*1*], [*2*], [*3*], [*4*], [*5*], [*6*], [*7*], [*8*], [*9*], [*10*]),
    [*1*], [—], [$arrow.r.double$], [$arrow.r.double$], [$arrow.r.double$], [$arrow.r.double$], [—], [—], [—], [—], [—],
    [*2*], [—], [—], [$arrow.r$], [—], [—], [—], [—], [—], [—], [—],
    [*3*], [—], [—], [—], [—], [$arrow.r.double$], [—], [—], [—], [$arrow.r$], [—],
    [*4*], [—], [—], [—], [—], [$arrow.r.double$], [—], [—], [—], [—], [—],
    [*5*], [—], [—], [—], [—], [—], [$arrow.r$], [—], [—], [$arrow.r$], [—],
    [*6*], [—], [—], [$arrow.r.double$], [$arrow.r$], [$arrow.r.double$], [—], [$arrow.r$], [—], [$arrow.r$], [$arrow.r$],
    [*7*], [—], [—], [—], [—], [—], [—], [—], [$arrow.r$], [—], [—],
    [*8*], [—], [—], [—], [—], [—], [—], [—], [—], [—], [—],
    [*9*], [—], [—], [$arrow.r.double$], [—], [$arrow.r.double$], [$arrow.r.double$], [$arrow.r.double$], [—], [—], [$arrow.r.double$],
    [*10*], [$arrow.r$], [—], [$arrow.r$], [$arrow.r$], [$arrow.r$], [$arrow.r$], [$arrow.r$], [$arrow.r$], [$arrow.r.double$], [—],
  )
) <tab:interaction-matrix>

Key interactions: Step 9 (ROS scavenging) failure amplifies nearly every other step — superoxide inactivates aconitase (Step 5), oxidises cardiolipin (Step 7), damages PDC E2 lipoyl groups (Step 3), depletes cofactors (Step 6), and accelerates mitochondrial damage requiring biogenesis (Step 10). Step 10 (biogenesis) failure is a slow amplifier: over weeks the declining mitochondrial population reduces capacity at Steps 3--9. Step 6 (cofactors) has the widest _direct_ amplification because a single cofactor gates multiple enzymatic steps simultaneously. Step 7 (ANT) failure reduces cytosolic ATP availability, secondarily depleting the PCr pool as creatine kinase cannot regenerate PCr without ATP substrate.

== Cross-Cutting Mechanisms
<sec:cross-cutting-mechanisms>

Several mechanisms span multiple steps of the energy chain and cannot be localised to any single step. They are collected here to preserve the parallel structure of the ten-step analysis while retaining the full mechanistic content.

=== Calcium Dysregulation and the Na#super[+]/K#super[+]-ATPase Failure Cascade
<sec:calcium-dysregulation>

Mitochondria buffer cytosolic calcium and use it for signaling:

    - *Calcium overload*: Excessive mitochondrial calcium triggers permeability transition
    - *ER-mitochondria crosstalk*: Abnormal calcium transfer between organelles
    - *Apoptosis signaling*: Calcium overload can trigger cell death pathways
    - *Enzyme regulation*: Many mitochondrial enzymes are calcium-sensitive

==== The Na#super[+]/K#super[+]-ATPase Failure Cascade

The sodium-potassium pump (Na#super[+]/K#super[+]-ATPase) normally maintains a steep electrochemical gradient: 3~Na#super[+] exported for every 2~K#super[+] imported per cycle. This gradient is essential for nerve signalling, glucose transport, cell volume regulation, and muscle contraction. In ME/CFS, multiple mechanisms converge to slow this pump:

    + *Hypoperfusion*: Reduced oxygen and substrate delivery impairs the ATP supply the pump requires (each cycle consumes one ATP molecule).
    + *Frequent anaerobic threshold crossing*: Anaerobic metabolism produces lactate, lowering intracellular pH and activating the sodium-hydrogen exchanger (NHE1), which imports Na#super[+] to extrude H#super[+]; the already-impaired pump cannot clear this excess Na#super[+].
    + *$beta_2$-adrenergic receptor dysfunction*: These receptors directly activate Na#super[+]/K#super[+]-ATPase during physical activity; their desensitisation and autoantibody blocking (see Section @sec:blood-volume of Chapter @ch:cardiovascular) removes this activation signal.

When intracellular Na#super[+] rises sufficiently, the sodium-calcium exchanger (NCX) enters "reverse mode": instead of exporting Ca#super[2+] (its normal function), it imports Ca#super[2+] in exchange for Na#super[+] efflux. The result is excessive intracellular calcium accumulation---a cytotoxic state.

#clinical-finding(title: [Elevated Intracellular Sodium in ME/CFS Skeletal Muscle])[
Wirth and Scheibenbogen (2022) used MRI-based sodium imaging to measure intracellular sodium in the gastrocnemius muscle of ME/CFS patients after a calf-raise protocol (30 per minute for 3~minutes). ME/CFS patients showed a 30% intracellular sodium rise versus 17% in controls, measured 12~minutes post-exercise (likely underestimating the peak difference during exertion) . ME/CFS patients also had elevated muscle sodium at baseline, and higher resting sodium correlated with lower handgrip strength---suggesting pump dysfunction as a primary driver of weakness.
] <obs:muscle-sodium>

#fhypothesis(title: [Calcium Toxicity as the Primary Mechanism of Post-Exertional Malaise], falsifiability: [weakly], justification: [Falsified if (a) intracellular calcium levels in ME/CFS muscle fibres are normal during PEM, or (b) calcium channel blockers or NCX inhibitors fail to reduce PEM severity, or (c) an alternative mechanism for exercise-induced muscle necrosis in ME/CFS is identified])[
The calcium toxicity cascade---Na#super[+]/K#super[+]-ATPase failure $arrow.r$ NCX reversal $arrow.r$ Ca#super[2+] overload---may be the primary cellular mechanism of post-exertional malaise. Excessive intracellular calcium causes muscle pain, direct mitochondrial damage, reduced ATP production, and in severe cases drives mitochondria to _consume_ rather than produce ATP in a futile attempt to buffer the calcium load @Walkon2022calcium. At extreme levels, calcium toxicity causes necrotic muscle fibre death.

Appelman et al. (2024) provided direct histological evidence: light microscopy of Long~COVID patient muscle biopsies revealed an unusually high number of necrotic (dead) muscle fibres during PEM @Appelman2024muscle. Wirth and Scheibenbogen (2024) argue that calcium toxicity is the only mechanism in their systematic analysis that can account for exercise-induced muscle fibre necrosis , though independent systematic reviews of this claim have not yet been published.

Wirth and Scheibenbogen propose positioning ME/CFS as an "acquired ischaemic mitochondrial myopathy" --- a classification that, if validated, would imply dysfunction in mitochondria occurring simultaneously with reduced blood perfusion (ischaemia). PEM severity and duration depend on the extent of calcium overload and the body's capacity to restore ionic homeostasis---a process severely hampered by the same hypoperfusion that caused the overload.

*Testable predictions:*

    / *(a)*: Intracellular calcium levels (measured by #super[31]P-MRS or calcium-sensitive fluorescent probes in biopsy) are elevated in ME/CFS muscle during PEM compared to baseline.
    / *(b)*: The degree of post-exercise sodium accumulation (Wirth-Scheibenbogen sodium MRI protocol) predicts PEM severity and duration in a dose-response relationship.
    / *(c)*: Pharmacological Na#super[+]/K#super[+]-ATPase stimulation (e.g., MDC002/Mitodicure) reduces or eliminates PEM by preventing the sodium-calcium cascade from reaching the toxicity threshold.

*Treatment implication:* If calcium toxicity is the proximate PEM mechanism, then MDC002---which restores Na#super[+]/K#super[+]-ATPase function---would address the immediate trigger. Upstream interventions improving muscular blood flow (see bradykinin model, Section @sec:blood-volume of Chapter @ch:cardiovascular) would reduce the pump's metabolic burden. Taurine may provide supplementary support at two nodes of this cascade: maintaining Na#super[+]/K#super[+]-ATPase activity and buffering downstream calcium overload (see Section @sec:taurine in Chapter @ch:supplements  ); however, no ME/CFS supplementation trial has tested this hypothesis.
*Certainty: 0.50*---strong mechanistic logic supported by the sodium MRI data and muscle necrosis finding, but direct calcium measurements in ME/CFS muscle during PEM have not yet been performed.
] <hyp:calcium-pem>

#speculation(title: [Taurine Status as a Determinant of AIMM Severity Heterogeneity])[
*Certainty: 0.30.* No study has simultaneously measured intracellular taurine and sodium accumulation in ME/CFS patients. Rationale is mechanistic extrapolation.

The AIMM cascade describes a deterministic sequence, but patients with similar degrees of hypoperfusion show substantially different PEM severity. The existing model contains no variable to explain this heterogeneity. Many factors could contribute (fitness level, mitochondrial reserve, autoantibody burden, autonomic tone, sleep quality, genetic variation in ion channel isoforms). Intracellular taurine status is one candidate variable: taurine acts as a two-node ionic buffer at the Na#super[+]/K#super[+]-ATPase support point (upstream ) and at calcium buffering (downstream ), effectively raising the sodium threshold at which NCX reversal occurs and the calcium threshold at which mitochondrial damage begins. Patients with higher intracellular taurine would have a larger ionic safety margin before PEM cascade onset.

*Falsifiable prediction:* Intracellular taurine concentration (muscle biopsy or RBC lysate proxy) inversely correlates with post-exercise sodium accumulation measured by the Petter et al.\ sodium MRI protocol  in ME/CFS patients. A direct trial: taurine supplementation (2 g/day, 8 weeks) reduces the magnitude of intracellular sodium rise in patients with documented sodium overload.

See Section @sec:taurine in Chapter @ch:supplements for supplement protocol.
] <spec:taurine-aimm-heterogeneity>

#open-question(title: [Endogenous Ouabain Depletion: A Missing Regulatory Signal for Na#super[+]/K#super[+]-ATPase?])[
Cardiac glycosides (digoxin, ouabain) inhibit Na#super[+]/K#super[+]-ATPase at pharmacological concentrations. However, endogenous ouabain --- a steroid hormone produced by the adrenal cortex at picomolar-nanomolar concentrations --- _activates_ Na#super[+]/K#super[+]-ATPase through a distinct signaling pathway (Src kinase phosphorylation of the alpha subunit) rather than inhibiting transport. Endogenous ouabain thereby fine-tunes pump activity under physiological conditions.

*Research question:* If ME/CFS involves impaired Na#super[+]/K#super[+]-ATPase function (the AIMM hypothesis, Section @sec:sodium-calcium-cascade), one underexplored question is whether endogenous ouabain levels are depleted in ME/CFS patients. Reduced adrenal output of this regulatory hormone could remove an activating signal from the pump, contributing to the pump failure even before the downstream ionic cascade.

*Proposed measurement:* Serum endogenous ouabain is measurable by radioimmunoassay. A case-control study comparing ME/CFS patients to healthy controls and patients with other fatigue conditions would be low-cost and potentially informative.

_Important distinction from therapeutic use:_ This is a basic science question about endogenous signaling, not a rationale for cardiac glycoside therapy. Pharmacological cardiac glycosides at therapeutic doses inhibit rather than activate the pump, and have a narrow toxic window. Therapeutic cardiac glycoside use in ME/CFS would have a highly unfavorable risk-benefit ratio and is not under consideration.
] <oq:ch06-endogenous-ouabain>

=== Thyroid Hormone Regulation of Mitochondrial Function
<sec:thyroid-mito-regulation>

The mechanisms of mitochondrial damage described above---oxidative stress, calcium overload, impaired mitophagy---do not operate in isolation. Thyroid hormones, particularly triiodothyronine (T3), regulate mitochondrial biogenesis, respiratory chain assembly, and quality control through well-characterised pathways in general endocrinology @Singh2022bioenergetic @Liao2024thyroidMito. Whether disruption of thyroid hormone signalling contributes to mitochondrial dysfunction in ME/CFS specifically has not been directly tested. Comparable mechanistic arguments could be constructed for other hormones with broad mitochondrial regulatory roles (cortisol, insulin, IGF-1), so the existence of a mechanistic overlap is necessary but not sufficient to prioritise this axis. The case for considering thyroid hormones here rests on the documented Low T3 Syndrome in ~16% of ME/CFS patients @ruiznunez2018thyroid and the selenoprotein P autoantibody finding @Sun2023selenop (Chapter @ch:endocrine, Section @sec:thyroid), which provide ME/CFS-specific evidence---albeit from single unreplicated studies---for disrupted thyroid hormone availability.

T3 regulates mitochondrial function through two distinct pathways operating on different timescales @Singh2022bioenergetic @Liao2024thyroidMito. (Note: the relative quantitative importance of T3 versus other mitochondrial regulators---insulin signalling, AMPK, mTOR, glucocorticoids, PPAR ligands---varies by tissue and metabolic context. The description below presents the T3-specific pathways; it does not imply T3 is the dominant regulator in all settings.)

==== Nuclear/Genomic Pathway (Hours to Days)

T3 binds nuclear thyroid hormone receptors (TR$alpha$1 and TR$beta$1), which act as ligand-dependent transcription factors at thyroid response elements (TREs) in nuclear DNA. This activates a transcriptional cascade: T3 $arrow.r$ PGC-1$alpha$ induction $arrow.r$ NRF-1/GABPA (Nuclear Respiratory Factor 2, distinct from the Nrf2/NFE2L2 antioxidant pathway) coactivation $arrow.r$ TFAM (mitochondrial transcription factor A) expression $arrow.r$ mtDNA replication and transcription. The net result is increased mitochondrial mass, mtDNA copy number, and respiratory capacity over 1--several days. T3 also coordinates fission, mitophagy, and biogenesis through a pathway proposed to involve ERR$alpha$-dependent ULK1 and DRP1 expression @Singh2017thyroidERR: in this proposed model, T3-induced DRP1-mediated fission physically separates damaged mitochondrial segments, enabling their PINK1/Parkin-dependent mitophagic clearance, while PGC-1$alpha$ simultaneously drives biogenesis of replacement organelles (demonstrated in specific cell types in vitro; generalisability to skeletal muscle and neurons is assumed but not confirmed). This quality-control cycle, if operative, would ensure that the mitochondrial population remains functional---a process compromised when tissue T3 is low.

==== Direct Mitochondrial Pathway (Minutes to Hours)

The full-length TR$alpha$1 mRNA also encodes two truncated proteins that are imported directly into mitochondria @WrutniakCabello2018p43. The p43 isoform (~43 kDa) localises to the mitochondrial matrix, binds T3, and evidence from in vitro transactivation assays suggests it functions as a T3-dependent transcription factor of the mitochondrial genome---binding putative TREs in the mitochondrial D-loop region to promote synthesis of the 13 mitochondrial-encoded OXPHOS subunits. This dual system (nuclear + mitochondrial) ensures coordinated expression of both nuclear-encoded and mtDNA-encoded respiratory chain components; loss of either pathway produces stoichiometric imbalance and assembly defects.

==== Supercomplex Assembly and Cardiolipin

T3 promotes the assembly of individual respiratory complexes (I, III, IV) into *supercomplexes* (respirasomes), which channel electrons more efficiently and limit ROS generation @Singh2022bioenergetic. Supercomplex stability depends on cardiolipin, the signature phospholipid of the inner mitochondrial membrane: T3 rapidly increases cardiolipin synthase activity, and cardiolipin acts as molecular "glue" bridging Complexes III and IV (multiple cardiolipin molecules per interface in cryo-EM structures, with variable occupancy across species). Hypothyroidism causes reduced cardiolipin content and impaired supercomplex formation---a phenotype that overlaps with the supercomplex disruption produced by WASF3 overexpression, though via distinct mechanisms (@ach:wasf3-mechanism below). T3 deficiency and WASF3 elevation could in principle disrupt supercomplexes through complementary mechanisms (reduced assembly signals vs. active disassembly). Whether these two mechanisms co-occur in individual ME/CFS patients has not been tested---no study has measured both WASF3 levels and tissue T3 in the same cohort @Liao2024thyroidMito.

==== 3,5-Diiodothyronine (T2): Rapid Mitochondrial Effects

3,5-Diiodo-L-thyronine (3,5-T2), a thyroid hormone metabolite previously considered inactive, has rapid non-genomic effects on mitochondria that are independent of protein synthesis and evident within one hour @Lombardi2015T2skeletal. In vitro evidence suggests 3,5-T2 interacts with Complex IV (cytochrome $c$ oxidase), modulating the allosteric ATP-inhibitory conformation---effectively reducing the brake on terminal electron transfer (the precise binding subunit remains to be confirmed by structural studies). 3,5-T2 also stimulates fatty acid oxidation (+80--104% increase with palmitoyl substrates) via SIRT1 activation of AMPK, which phosphorylates and inhibits ACC, reducing malonyl-CoA production and thereby relieving CPT1-mediated inhibition of mitochondrial fatty acid import. T2 reduces H#sub[2]O#sub[2] production while increasing respiration rate, suggesting it shifts mitochondria toward efficient coupled respiration. Whether T2 levels are altered in ME/CFS has not been investigated.

==== Relevance to ME/CFS: The Thyroid--Mitochondrial Convergence

#fhypothesis(title: [Low Tissue T3 as Amplifier of Mitochondrial Dysfunction in a Subset of ME/CFS Patients], falsifiability: [weakly], justification: [Falsified if (a) intramuscular T3 concentrations in ME/CFS patients with serum Low T3 are normal, or (b) T3 supplementation in Low T3 ME/CFS patients fails to improve the primary endpoint of maximal coupled respiration in muscle biopsy respirometry at 12 weeks])[
*Certainty: 0.45.* In the ~16% of ME/CFS patients with documented Low T3 Syndrome (Section @sec:thyroid in Chapter @ch:endocrine), reduced tissue T3 availability may amplify several of the mitochondrial damage mechanisms described in this section through a convergent cascade. Note that this hypothesis applies specifically to the Low T3 subgroup and does not claim to explain mitochondrial dysfunction in ME/CFS patients with normal thyroid profiles:

    + *Reduced PGC-1$alpha$ activation*: Impaired mitochondrial biogenesis---fewer new mitochondria to replace damaged ones.
    + *Reduced cardiolipin synthesis*: Destabilised respiratory supercomplexes---increased electron leak and ROS generation.
    + *Impaired mitophagy coordination (if the proposed ERR$alpha$/ULK1/DRP1 pathway operates in relevant tissues)*: Reduced fission-mitophagy-biogenesis cycle---damaged mitochondria accumulate rather than being cleared @Singh2017thyroidERR. This step depends on a pathway demonstrated in vitro but not confirmed in human skeletal muscle or neurons.
    + *Potential supercomplex disruption overlap with WASF3*: Low T3 reduces assembly signals while WASF3 actively disrupts assembled supercomplexes---whether these co-occur in individual patients has not been tested @wang2023wasf3.
    + *Reduced p43-mediated mtDNA transcription*: Insufficient production of the 13 mtDNA-encoded OXPHOS subunits, creating stoichiometric imbalance with nuclear-encoded subunits @WrutniakCabello2018p43.

A hypothesised self-reinforcing cycle could operate as follows: low tissue T3 $arrow.r$ impaired biogenesis and quality control $arrow.r$ accumulation of damaged, ROS-producing mitochondria. The proposed closing link---ROS-driven oxidative inactivation of deiodinase selenocysteine residues, further reducing T4-to-T3 conversion---is the weakest step in the cycle: while sustained oxidative stress can irreversibly oxidise selenocysteine to seleninic acid, this requires severe and sustained ROS levels beyond what has been directly demonstrated in ME/CFS tissues. *This closing link should be treated as an open question rather than an established feedback mechanism.* If it does not operate, the cycle is open (T3 deficit worsens mitochondrial function, but mitochondrial dysfunction does not necessarily worsen T3 availability through this route).

Selenoprotein P autoantibodies, documented in 9.6--15.6% of ME/CFS patients @Sun2023selenop, represent a separate mechanism that could impair deiodinase function by reducing selenium delivery (Section @sec:thyroid in Chapter @ch:endocrine). However, this is a distinct mechanistic branch (autoimmune selenium transport impairment), not a substitute for the ROS-deiodinase closing link: it does not demonstrate that mitochondrial dysfunction _causes_ worsened T3 availability, which is what a true self-reinforcing cycle requires. Without evidence for either closing link, the most conservative interpretation is a one-directional pathway: low T3 may worsen mitochondrial function, but whether mitochondrial dysfunction reciprocally worsens T3 availability remains an open question.

*Testable predictions:*

    / *(a)*: ME/CFS patients with documented Low T3 Syndrome should show lower supercomplex content (measured by blue native PAGE of muscle biopsy mitochondria) than ME/CFS patients with normal thyroid hormone profiles.
    / *(b)*: Intramuscular T3 concentrations (measured by LC-MS/MS in biopsy) should be disproportionately reduced relative to serum FT3 in patients with selenoprotein P autoantibodies.
    / *(c)*: T3 supplementation in Low T3 ME/CFS patients should increase mtDNA copy number and improve respirometric parameters (maximal coupled respiration, spare respiratory capacity) measured in PBMCs or muscle biopsy at 8--12 weeks.

*Research implication:* This hypothesis predicts that future clinical trials of mitochondrial cofactor supplementation (CoQ10, NAD#super[+] precursors, carnitine) should stratify by thyroid status, as patients in the Low T3 subgroup might respond differently. This is a testable prediction, not a clinical recommendation---no evidence currently shows that cofactor supplementation fails due to T3 deficiency, and well-tolerated supplements should not be withheld pending thyroid investigation. The alternative hypothesis---that Low T3 is a protective adaptation to energy deficiency (Section @sec:thyroid in Chapter @ch:endocrine)---would predict the opposite: that correcting T3 without addressing the underlying energy deficit could worsen outcomes by raising metabolic demand beyond supply.
] <hyp:t3-mito-amplifier>

#warning-env(title: [No Direct Measurement of Intramuscular T3 in ME/CFS])[
No study has directly measured T3 concentrations in ME/CFS skeletal muscle or other target tissues. The hypothesis that tissue-level T3 is reduced rests on indirect evidence: serum Low T3 pattern @ruiznunez2018thyroid, reduced deiodinase activity indices (SPINA-GD) @Sun2023selenop, and the general finding that serum T3 underestimates tissue deficits when deiodinase function is impaired. Direct tissue measurement using LC-MS/MS in muscle biopsy is technically feasible but has not been performed in ME/CFS.
]

=== IgG Immune Complex--Mediated Mitochondrial Disruption
<sec:igg-mito-disruption>

While the mechanisms above describe cell-intrinsic pathways of mitochondrial damage, recent evidence demonstrates that circulating immune factors can directly injure mitochondria in vascular endothelial cells. Liu et al.\ (2026) @Liu2026IgGcomplexes isolated IgG immune complexes from post-infectious ME/CFS patients (n=39--40, including 15--16 with post-COVID ME/CFS) and applied them to human umbilical vein endothelial cells (HUVECs), revealing a distinct pattern of mitochondrial injury.

Patient-derived IgG induced mitochondrial fragmentation---a shift from elongated, networked mitochondria toward small, punctate organelles---detectable by confocal microscopy. Notably, this fragmentation did not result in bioenergetic collapse: Seahorse extracellular flux analysis showed that total ATP generation was maintained, with increased spare respiratory capacity and glycolytic compensation. This pattern suggests a stress adaptation response rather than outright energy failure, consistent with the clinical observation that ME/CFS patients maintain basal cellular function but fail under metabolic demand (@sec:energy-consequences).

#achievement(title: [IgG Transfer Reproduces Mitochondrial Pathology in Endothelial Cells])[
Liu et al.\ (2026) @Liu2026IgGcomplexes demonstrated that IgG immune complexes purified from ME/CFS patient sera are sufficient to induce mitochondrial fragmentation and inflammatory cytokine secretion (IL-1$beta$) when applied to healthy endothelial cells. This "transfer experiment" establishes that a circulating humoral factor---not cell-intrinsic defects---can drive the mitochondrial structural abnormalities observed in ME/CFS. Mass spectrometry proteomics revealed disease-specific signatures in the IgG complexes: classic ME/CFS IgG was enriched in extracellular matrix reorganisation pathways, while post-COVID ME/CFS IgG was enriched in hemostasis and blood clot formation pathways.
] <ach:igg-mito-transfer>

#warning-env(title: [IgG Mitochondrial Transfer: Replication Status and Limitations])[
The mitochondrial fragmentation effect was predominantly observed in female patients; male-specific mechanisms remain unexplored. The HUVEC model relies heavily on glycolysis, which may mask oxidative phosphorylation effects that would manifest in more OXPHOS-dependent tissues (skeletal muscle, neurons). The IgG purification method did not effectively capture pentameric IgM, which may carry additional pathogenic activity. Not all ME/CFS patients' IgG induced fragmentation, consistent with disease heterogeneity. Independent replication is pending.
]

Several features distinguish this finding from the WASF3 pathway described below. While WASF3 acts through ER stress to disrupt Complex IV assembly (a cell-intrinsic mechanism), IgG-mediated fragmentation represents an extrinsic, immune-driven pathway that alters mitochondrial morphology without targeting specific respiratory chain complexes. The two mechanisms are not mutually exclusive: IgG-induced mitochondrial stress could trigger ER stress, which in turn upregulates WASF3, creating a convergent pathway toward mitochondrial dysfunction. This immune--metabolic bridge connects to the autoantibody and immune complex evidence in @ch:immune-dysfunction (@sec:autoimmunity) and to the endothelial dysfunction evidence in @ch:cardiovascular (@sec:endothelial).

=== WASF3 and ER Stress: A Specific Molecular Mechanism

A 2023 study by Wang et al., using muscle biopsies from the NIH intramural ME/CFS cohort, identified a specific molecular pathway linking cellular stress to mitochondrial dysfunction @wang2023wasf3.

#achievement(title: [ER Stress–WASF3–Mitochondrial Dysfunction Pathway: Druggable Mechanism])[
A 2023 study by Wang et al. @wang2023wasf3, using muscle biopsies from the NIH intramural ME/CFS cohort, identified a specific molecular pathway linking cellular stress to mitochondrial dysfunction. WASF3 (Wiskott-Aldrich syndrome protein family member 3) was significantly elevated in ME/CFS patient muscle biopsies compared to controls. This protein, when overexpressed, localizes to mitochondria and disrupts respiratory chain function.

The study revealed a mechanistic chain: endoplasmic reticulum (ER) stress activation drives increased WASF3 expression, which then translocates to mitochondria where it interferes with respiratory chain supercomplex assembly, particularly affecting Complex IV (cytochrome c oxidase), resulting in decreased oxygen consumption and reduced exercise endurance. Critically, pharmacologic inhibition of ER stress in patient-derived cells improved mitochondrial function, suggesting this pathway represents a potentially druggable target. ER stress modulators or WASF3 inhibitors could restore normal mitochondrial respiration.

The WASF3 mechanism provides a molecular explanation for several ME/CFS features: viral infection can trigger ER stress through viral protein accumulation (explaining post-infectious onset), once established ER stress can become self-perpetuating (explaining chronic persistence), and Complex IV impairment directly limits oxidative capacity (explaining exercise intolerance and reduced VO#sub[2]peak observed in CPET studies). This finding bridges the gap between cellular stress responses and the clinical manifestation of exercise intolerance, providing mechanistic support for the energy deficit model of ME/CFS.
] <ach:wasf3-mechanism>

#warning-env(title: [Replication Status])[
Single study (Wang et al. 2023) from the NIH intramural ME/CFS cohort. While the mechanism was validated in cell culture (pharmacologic ER stress inhibition rescued mitochondrial function), no independent cohort has replicated the WASF3 elevation finding in ME/CFS muscle biopsies. The “druggable target” claim remains preclinical. Independent replication in patient tissue is required before therapeutic development.
]

A 2025 muscle biopsy study in long COVID and ME/CFS patients confirmed
elevated WASF3 and ER stress markers with decreased Complex IV subunits,
and critically demonstrated that these abnormalities differ from bed
rest-induced deconditioning @SkeletalMuscle2025longCOVID
(Appendix @app:research-registry,
Section @sec:registry-skeletal-muscle).  A multi-modal study in
_Cell Reports Medicine_ further showed reduced ATP/ADP ratios in
immune cells, linking energy deficits to immune
dysfunction @CellReportsMedicine2025MECFS
(Section @sec:registry-cell-reports-medicine).

=== ISR Context-Dependence: Activation vs.\ Suppression
<sec:isr-context-dependence>

The PERK/WASF3 data @wang2023wasf3 establishes ISR activation in ME/CFS muscle, but evidence from multiple model systems cautions against treating ISR suppression as straightforwardly beneficial. The relationship between ISR activity and cellular outcomes is dose- and context-dependent @CostaMattioli2020ISRReview @Altintas2024GCN2Review.

*Protective role in acute mitochondrial stress:* Baron et al.\ demonstrated that pharmacologic activation of ISR kinases (HRI or GCN2) promotes mitochondrial elongation and prevents DRP1-mediated fragmentation . In this context, ISR activation is a protective response that maintains mitochondrial architecture; the ISR inhibitor ISRIB blocked these protective effects . The eIF2α--ATF4 axis is also required for the transcriptional program that maintains mitochondrial dynamics and mtDNA replication during ER stress: cells lacking eIF2α phosphorylation show dysregulated mitochondrial morphology and impaired bioenergetics @Le2025ATF4Mitochondria.

*Detrimental role under chronic activation:* Conversely, genetic suppression of the GCN2--ATF4 pathway extended lifespan in _Drosophila melanogaster_, while overexpression shortened it . This finding --- currently a preprint, not yet peer-reviewed, and directly contradicting prior yeast and _C. elegans_ results --- suggests that in more complex organisms, chronic ATF4 activity suppresses proteostasis and DNA repair capacity and is net-harmful.

#speculation(title: [Chronic ISR Activation in ME/CFS: Adaptive Initiation, Maladaptive Persistence])[
*Certainty: 0.35.*
A unifying interpretation: ISR activation in ME/CFS may be initially adaptive (protecting mitochondria from acute exertion-induced damage, limiting viral spread via translational arrest) but becomes maladaptive when sustained. Chronic eIF2α phosphorylation suppresses global anabolic synthesis, impairs mitochondrial biogenesis, and --- per the Götz preprint  --- may reduce cellular longevity through ATF4-driven transcriptional reprogramming that trades repair capacity for stress tolerance.

Under this model, the therapeutic target is not simple ISR activation or suppression but *ISR normalisation*: restoring appropriate pulsatile ISR responses to genuine stress signals, while preventing tonic baseline elevation. ISRIB and eIF2B activators @CostaMattioli2020ISRReview would be appropriate only if tonic ISR exceeds the beneficial threshold; HRI kinase agonists  would be appropriate only where mitochondrial fragmentation reflects insufficient ISR response.

*Testable prediction:* ME/CFS muscle will show elevated phospho-eIF2α at baseline alongside a blunted delta-ISR response to an acute stressor (tonic saturation preventing further induction). ISRIB treatment will worsen mitochondrial fragmentation markers (DRP1 phosphorylation, mitochondrial aspect ratio) in ME/CFS patient cells despite reducing phospho-eIF2α.

*Limitation:* The Götz lifespan data are _Drosophila_-only, unreviewed, and not replicated in mammals. No study has measured ISR inducibility vs.\ baseline level in ME/CFS patients. The tonic saturation model is mechanistic inference, not direct evidence.
] <spec:isr-chronic>

#hypothesis(title: [PEM as Biphasic ISR Cycle: Adaptive Initiation and Maladaptive Persistence])[
*Certainty: 0.45.*
Post-exertional malaise may represent a two-phase ISR cycle rather than a single failure state @CostaMattioli2020ISRReview @Le2025ATF4Mitochondria . *Phase 1 (0--24 h post-exertion):* acute eIF2α phosphorylation --- adaptive, protective mitochondrial elongation (Baron/Wiseman mechanism ), translational pause. Symptom correlate: immediate fatigue. *Phase 2 (24--72 h):* ATF4-driven transcriptional reprogramming --- suppresses OXPHOS subunit synthesis, induces amino acid stress genes, activates CHOP @Le2025ATF4Mitochondria. When chronic, this phase becomes net-harmful . Symptom correlate: delayed crash, cognitive symptoms, PEM peak. *Phase 3 (recovery):* GADD34/PP1-mediated eIF2α dephosphorylation; if impaired, no full recovery and symptoms persist @CostaMattioli2020ISRReview.

The characteristic 24--48 h delay between exertion and PEM peak matches ISR temporal kinetics precisely. The PERK elevation found in ME/CFS muscle @wang2023wasf3 is consistent with this hypothesis: a constitutively elevated PERK baseline would shift the Phase 1/Phase 2 boundary earlier and make Phase 2 persist longer.

*Testable prediction:* Time-course muscle biopsy using a standardised CPET protocol (pre / +6h / +24h / +48h / +7d post-exertion) will show distinct temporal waves: phospho-eIF2α peaking early, ATF4 target gene expression (ASNS, FGF21 mRNA, GDF15 mRNA) peaking at 24--48 h. Healthy controls will show resolution by 72 h; ME/CFS patients will show persistence. If ISR markers are flat or non-temporal across timepoints → hypothesis falsified.

*Limitation:* No time-resolved ISR biopsy study in ME/CFS exists. GADD34 impairment is a mechanistic inference not yet tested. The two-phase model borrows temporal kinetics from model systems (cell culture, animal) that may not translate quantitatively to human skeletal muscle.
] <hyp:pem-biphasic-isr>

#speculation(title: [Chronic ATF4 Activity as Metabolic Ceiling in ME/CFS])[
*Certainty: 0.40.*
Persistent low-grade ATF4 activity creates a "metabolic ceiling" that PEM cannot exceed  @CostaMattioli2020ISRReview. ATF4, the master ISR transcription factor induced downstream of all four eIF2α kinases, represses mitochondrial OXPHOS subunit translation and activates amino acid metabolism genes (aminoacyl-tRNA synthetases, one-carbon/serine pathway flux), diverting resources away from energy production toward stress tolerance. In the Götz Drosophila model, this chronic ATF4 activity reduced lifespan and suppressed proteostasis and DNA repair ; in the Le 2025 cell model, the acute eIF2α--ATF4 axis is required for mitochondrial maintenance, but chronic activation becomes maladaptive @Le2025ATF4Mitochondria.

In ME/CFS, if the ATF4 axis is tonically elevated (via chronic PERK activation from WASF3/ER stress @wang2023wasf3), then the maximum achievable OXPHOS output is structurally constrained at a lower ceiling than in healthy individuals --- not because ATP synthesis machinery is destroyed, but because its transcription is chronically suppressed by the ISR reprogramming response.

*Testable prediction:* ATF4 ChIP-seq in ME/CFS skeletal muscle will show enrichment at mitochondrial gene promoters (suppressive occupancy) and amino acid metabolism gene promoters (activating occupancy). Serum ATF4-target metabolites --- GDF15, FGF21, asparagine, serine, and glycine ratios --- will be elevated relative to matched controls. If no ATF4 target signature is detectable in ME/CFS muscle → hypothesis falsified.

*Limitation:* Götz data are _Drosophila_-only and not replicated in mammals. No direct ATF4 ChIP-seq data exists in ME/CFS muscle. The ceiling model assumes chronic activation; acute protective activation is beneficial and should not be suppressed (see @spec:isr-chronic).
] <spec:isr-atf4-ceiling>

#speculation(title: [WASF3--DRP1 Convergence: Two Routes to the Same Mitochondrial Failure])[
*Certainty: 0.30.*
Wang's WASF3 mechanism (ER stress → WASF3 → supercomplex disruption @wang2023wasf3) and Prusty's HHV-6 miR-aU14 mechanism (viral miRNA → DRP1 activation → mitochondrial fragmentation @Hennig2022HHV6miRNA) converge on the same downstream outcome --- mitochondrial dysfunction and exercise intolerance --- via parallel but potentially additive routes. WASF3 impairs respiratory supercomplex assembly; DRP1 fragments the organelle before assembly can occur. Whether WASF3 also promotes DRP1 recruitment to mitochondria is currently unstudied.

If these mechanisms are additive, patients with both HHV-6 reactivation (miR-aU14 active) and elevated WASF3 would have the most severe mitochondrial dysfunction and exercise intolerance --- a prediction consistent with the dose-response pattern in clinical ME/CFS severity. ISR kinase activation  protects against DRP1-mediated fragmentation but not against WASF3-mediated supercomplex disruption, predicting partial rather than complete rescue by HRI agonists.

*Testable prediction:* WASF3 knockdown in HHV-6 miR-aU14-expressing cells will partially rescue mitochondrial morphology but not completely. DRP1 inhibitor (Mdivi-1 or Drpitor1a) will rescue the miR-aU14 phenotype but not the WASF3 phenotype. If these are independent, combined inhibition will be additive; if WASF3 acts downstream of DRP1, DRP1 inhibition will rescue both.

*Limitation:* The convergence is inferred from two separate model systems (Wang: human muscle biopsies/fibroblasts; Hennig: viral cell models). No study has simultaneously measured WASF3 expression and miR-aU14 activity in the same ME/CFS patient samples.
] <spec:wasf3-drp1-convergence>

=== The Sodium-Calcium Overload Cascade
<sec:sodium-calcium-cascade>

Wirth and Scheibenbogen  integrated emerging evidence into a model of ion homeostasis failure in ME/CFS. The cascade begins with hypoperfusion (Section @sec:microcirculation-oxygen), which forces cells into anaerobic metabolism. Anaerobic metabolism generates protons as a byproduct. Accumulating protons increase the activity of the sodium-hydrogen exchanger (NHE1), which extrudes protons by importing sodium. Under normal aerobic conditions, the Na#super[+]/K#super[+]-ATPase can clear this sodium, but under hypoperfusion and ATP limitation, this pump becomes saturated and dysfunctional.

When the Na#super[+]/K#super[+]-ATPase fails to maintain the inward sodium gradient, the plasma membrane sodium-calcium exchanger NCX1 (SLC8A1)---which operates electrogenically in a 3 Na#super[+]:1 Ca#super[2+] exchange---reverses direction. In forward mode NCX1 imports three sodium ions to export one calcium ion; in reverse mode (driven by elevated intracellular Na#super[+]) it imports one calcium ion per cycle. The thermodynamic reversal point is set by the NCX reversal potential $E_"NCX" = 3 E_"Na" - 2 E_"Ca"$, where $E_"Na"$ and $E_"Ca"$ are the Nernst potentials for Na#super[+] and Ca#super[2+] respectively. As intracellular Na#super[+] rises, $E_"Na"$ shifts positive, lowering $E_"NCX"$ below the resting membrane potential and driving sustained reverse-mode calcium import.

Critically, the mitochondrial sodium-calcium exchanger NCLX (SLC8B1)---the primary route of calcium efflux from the mitochondrial matrix---is simultaneously impaired: NCLX imports Na#super[+] to export Ca#super[2+], so cytoplasmic sodium overload reduces its driving force. Sodium accumulation therefore traps calcium inside mitochondria via two independent routes: influx through reversed NCX1 and blocked efflux through NCLX. The combined result is mitochondrial calcium overload, direct damage to the electron transport chain, amplified ROS production, and further ATP depletion---reinforcing the original sodium overload.

Petter et al.  provided the first direct _in vivo_ quantification using #super[23]Na-MRI in ME/CFS patients ($n = 6$ per group). Baseline intracellular sodium was elevated across all five lower-leg muscle compartments (12.20 mM vs 9.38 mM in anterior extensors; $p = 0.0034$). Post-exercise sodium accumulation was greater in ME/CFS, and intracellular sodium correlated inversely with hand-grip strength ($p = 0.0319$)---a quantitative link between the ionic signature and functional impairment. Wirth et al.  extended these findings with electron microscopy showing subsarcolemmal mitochondrial damage preferentially localised at sites of calcium influx, consistent with NCLX-mediated calcium trapping.

Scheibenbogen and Wirth  synthesised accumulated histological, MRI, and proteomic data into the concept of *acquired ischemic mitochondrial myopathy* (AIMM): a disease phenotype in which post-infectious vascular dysfunction produces chronic muscle ischaemia, driving the NHE1 → Na#super[+] overload → NCX1 reversal → NCLX block → calcium overload → mitochondrial damage cycle as a self-reinforcing acquired pathology, distinct from primary genetic mitochondrial diseases. Proteomics confirmed reduced expression of Na#super[+]/K#super[+]-ATPase subunits (weakened sodium clearance capacity) and upregulated ENaC expression (sodium-sensing retention), indicating the dysfunction involves sustained pathological remodelling at the protein level. The AIMM framing has a direct therapeutic implication: an acquired ionic myopathy is potentially reversible through pharmacological correction of the sodium/calcium overload, without requiring genetic intervention (see Section @sec:mdc002 in Chapter @ch:emerging-therapies).

=== TRPM3 Ion Channel Dysfunction

Cabanas et al. @Cabanas2024trpm3 studied TRPM3 calcium channels in natural killer (NK) cells from ME/CFS patients and found reduced calcium influx amplitude and prolonged half-time (slower kinetics). TRPM3 is critical for NK cell calcium signaling and cytotoxic function. Importantly, low-dose naltrexone (LDN) restored TRPM3-dependent calcium influx in patient NK cells in vitro, suggesting a reversible pharmacological mechanism. Sasso et al.  extended these findings with large-scale validation confirming the TRPM3 dysfunction across broader patient populations.

=== WASF3 and ER Stress-Induced Metabolic Switching

Wang et al. @wang2023wasf3 (cross-referenced as WASF3 studies in Chapter @ch:mechanistic-studies) identified endoplasmic reticulum (ER) stress upregulation of WASF3 (Wiskott-Aldrich syndrome protein family member 3). WASF3 simultaneously disrupts respiratory supercomplex assembly (impairing OXPHOS efficiency) and promotes actin polymerization, driving a forced switch toward glycolysis. Muscle biopsies from ME/CFS patients showed elevated WASF3 expression, confirming ER stress-mediated metabolic reprogramming.

This represents a cell-autonomous mechanism: ER stress—triggered by calcium overload, oxidative stress, or viral persistence—activates a program that simultaneously reduces OXPHOS capacity while increasing glycolytic flux. Even if mitochondria are structurally intact, WASF3-mediated disruption of supercomplexes reduces their efficiency.

=== Distinction: Production vs. Utilization Defects

These mechanisms reveal a critical distinction: ATP production defects (failing mitochondria, substrate delivery) are different from ATP utilization defects (ion pump failure, calcium overload, forced metabolic switching). Both limit cellular energy availability, but they require different therapeutic targets. A patient with sodium-calcium overload may have normal mitochondrial capacity but cannot function because ion homeostasis is broken. A patient with WASF3-driven supercomplex disruption may have sufficient ATP but inefficient energy use due to forced glycolysis.

=== Immune-Metabolic Crosstalk Maintaining the Energy Crisis
<sec:immune-metabolic-crosstalk>

Immune activation is not independent of metabolic dysfunction—instead, immune-mediated pathways actively maintain and amplify the energy crisis. This creates a feedback loop where immune activation perpetuates energy failure.

==== Tryptophan-Kynurenine Metabolism and NAD#super[+] Depletion

The tryptophan-kynurenine pathway is one of the primary immune-activated routes of tryptophan catabolism. Elevated kynurenine production is associated with chronic immune activation (elevated IFN-$gamma$, TNF-$alpha$). However, the balance of kynurenine metabolites matters: normal kynurenine metabolism feeds into NAD#super[+] synthesis, supporting mitochondrial energy production; imbalanced metabolism produces neurotoxic metabolites while depleting NAD#super[+].

A recent metabolomics study @Abujrais2024tryptophan (published in ACS Chemical Neuroscience) profiled tryptophan metabolism in ME/CFS plasma and found higher 3-hydroxykynurenine (a neurotoxic branch product), lower kynurenic acid (neuroprotective, NAD#super[+]-producing), and lower quinolinic acid (a neurotoxic NMDA agonist that also feeds NAD#super[+] synthesis via QPRT). The net effect: immune-mediated tryptophan catabolism is diverted away from NAD#super[+] synthesis and toward neurotoxic branches. This directly links immune activation to NAD#super[+] depletion and impaired mitochondrial function.

==== T-Cell Exhaustion with Metabolic Reprogramming

Iu et al. @iu2024tcell_exhaustion (published in PNAS) profiled CD8#super[+] T cell epigenetics and metabolism in ME/CFS, finding that T cells are epigenetically primed toward an exhausted phenotype (high PD-1, TIM-3, LAG-3) while simultaneously showing altered metabolic reprogramming. Post-exercise, this metabolic dysregulation worsened. This suggests T cells cannot sustain normal metabolic flexibility in response to immune demands, contributing to both the dysfunctional immune response and persistent metabolic strain.

==== Exaggerated Innate Immune Response with Metabolic Consequences

Che, Hornig, and Lipkin  (published in npj Metabolic Health and Disease) documented an exaggerated innate immune response to standard challenges in ME/CFS. Their metabolomic data showed that immune activation is associated with impaired citric acid cycle (TCA cycle) flux and reduced beta-oxidation capacity. Mechanistically, IFN-gamma (elevated in their cohort) accelerates tryptophan degradation via indoleamine 2,3-dioxygenase (IDO), directly linking innate immune state to NAD#super[+] depletion and energy failure.

==== Oxidative Stress in Immune Cells

Paul and Bhatt @PaulBhatt2025oxidative (published in PNAS) measured reactive oxygen species (ROS) in circulating lymphocytes from ME/CFS and Long COVID patients. They found elevated ROS in memory T cells, with striking sex differences: females showed higher ROS production and T-cell hyperproliferation; males showed evidence of mitochondrial lipid oxidative damage. Critically, metformin treatment attenuated T-cell hyperproliferation in vitro, suggesting ROS-driven immune dysregulation may be pharmacologically reversible.

==== Multi-Omics Integration: The Full Picture

The Heng 2025 multi-omics study @heng2025mecfs integrated cellular ATP profiling with plasma proteomics from 61 matched pairs, revealing coordinated abnormalities: elevated AMP and ADP with a reduced ATP/ADP ratio (indicating cellular energy stress), altered immune cell subsets skewed toward less mature effector populations, and elevated vascular dysfunction markers (VWF, fibronectin, thrombospondin-1). A 7-biomarker panel spanning these three domains achieved 91% diagnostic accuracy (Section @sec:systems-biology in Chapter @ch:integrative-models).

These findings were substantially extended by Hoel et al.\ (2026) @Hoel2026proteome, who applied aptamer-based proteomics (SomaScan, 7,326 aptamers targeting 6,493 proteins) to serum from 50 ME/CFS patients and 29 healthy controls. Their analysis revealed a striking metabolic enzyme signature: key glycolytic enzymes—glyceraldehyde-3-phosphate dehydrogenase (GAPDH), fructose-bisphosphate aldolase A (ALDOA), and L-lactate dehydrogenase B chain (LDHB)—were among the most significantly reduced intracellular proteins in ME/CFS serum. Since these enzymes are normally abundant in skeletal muscle, their reduced circulating levels suggest decreased muscle protein turnover or altered cellular release patterns rather than simple enzyme deficiency. Notably, ATP synthase inhibitory factor 1 (ATP5IF1), which regulates mitochondrial ATP hydrolysis under hypoxic conditions, was also reduced, consistent with the mitochondrial stress protection deficit described in Section @sec:mito-evidence.

Complementing the intracellular enzyme reductions, Hoel et al.\ found chronically elevated metabolic stress hormones: FGF-21 was significantly higher in ME/CFS patients, validated by ELISA in an extended cohort (n = 212 ME/CFS, n = 66 HC), with women showing a particularly significant elevation. GDF-15, leptin, resistin, and fatty acid-binding proteins FABP3 and FABP4 were also elevated. FGF-21 and GDF-15 are “exerkines” that normally rise transiently during intense exercise to coordinate systemic energy adaptation @Hoel2026proteome. Their chronic elevation in ME/CFS—in the absence of intense exercise—suggests a state of persistent metabolic emergency signaling, as though the body is continuously experiencing the energy crisis of maximal exertion at rest. This pattern connects to the clinical observation that ME/CFS patients describe exhaustion disproportionate to activity level: their metabolic stress signaling reflects a genuine cellular energy crisis, not a perceptual distortion.

Together, these studies demonstrate that energy metabolism dysfunction in ME/CFS is not limited to mitochondrial abnormalities but extends to a coordinated shift in the circulating metabolic landscape: reduced intracellular metabolic enzymes, elevated stress hormones, and altered secretory patterns spanning multiple tissues. Breaking this cycle may require simultaneous intervention at multiple levels—addressing both the mitochondrial energy deficit and the chronic stress signaling that perpetuates it.

=== The Multi-Level Vicious Cycle
<sec:vicious-cycle>

Integrating findings from vascular, metabolic, and immune domains reveals a multi-level positive feedback loop where dysfunction at any level amplifies all others. This model, synthesized by Wirth, Scheibenbogen, and colleagues, explains both the severity and persistence of the energy crisis.

==== The Cycle in Detail

The vicious cycle operates as follows:

    - *Vascular dysfunction* (Section @sec:microcirculation-oxygen): Endothelial dysfunction, RBC deformability impairment, and capillary remodeling reduce oxygen and substrate delivery to tissue.

    - *Ischemia*: Reduced oxygen availability forces cells toward anaerobic metabolism, producing lactate and protons.

    - *Proton accumulation*: Intracellular acidosis increases sodium-hydrogen exchanger (NHE1) activity, importing sodium to extrude protons.

    - *Sodium overload*: Na#super[+]/K#super[+]-ATPase is insufficient to clear accumulated sodium, particularly under ATP limitation.

    - *NCX1 reversal + NCLX block*: Elevated intracellular Na#super[+] shifts the NCX1 reversal potential, driving reverse-mode calcium import. Simultaneously, sodium overload reduces the driving force of the mitochondrial calcium exporter NCLX (SLC8B1), trapping calcium in the mitochondrial matrix.

    - *Calcium overload*: Cytoplasmic and mitochondrial calcium accumulate via these two independent mechanisms, causing direct mitochondrial damage at subsarcolemmal sites, further impairing ATP production.

    - *Mitochondrial dysfunction*: Damaged mitochondria produce less ATP and more ROS.

    - *ROS amplification*: Elevated ROS damages endothelial cells, further impairing vascular function; damages Na#super[+]/K#super[+]-ATPase, reducing sodium clearance; and damages RBC membranes, further reducing deformability.

    - *Return to step 1*: ROS-mediated vascular damage perpetuates the original ischemia.

This is not a linear pathway with a beginning and end. Rather, it is a positive feedback loop where each step amplifies the next, and dysfunction propagates in all directions simultaneously.

==== Multi-Level Integration

Critically, this cycle operates at multiple biological levels simultaneously:

    / *Vascular level*: Endothelial dysfunction → reduced perfusion
    / *Cellular level*: Ischemia → anaerobic metabolism, ion dysregulation, mitochondrial damage
    / *Molecular level*: ROS, calcium, sodium dysregulation → persistent vascular and mitochondrial injury
    / *Immune level*: Immune activation accelerates tryptophan catabolism (NAD#super[+] depletion) and oxidative stress, perpetuating energy failure

No single level can be addressed in isolation. A therapeutic intervention that improves mitochondrial function alone, without addressing vascular dysfunction or ion dysregulation, will have limited impact because ROS and calcium overload will continue to damage mitochondria. Similarly, anti-inflammatory therapy alone cannot restore energy if vascular dysfunction persists. Effective treatment likely requires simultaneous multi-level intervention.

==== Evidence for the Integrated Cycle

Appelman et al. @Appelman2024muscle (published in Nature Communications) studied muscle mitochondrial function before and after post-exertional malaise (PEM). They found that exercise triggered reductions in OXPHOS capacity and succinate dehydrogenase (SDH) activity, consistent with mitochondrial damage during PEM. Importantly, this occurred despite normal cardiopulmonary responses during exercise—the heart and lungs functioned normally, confirming that the energy crisis is peripheral (muscle) and mitochondrial, not cardiopulmonary.

Syed et al.  (published in Physiology) provided a comprehensive review of mitochondrial dysfunction across ME/CFS literature, synthesizing evidence from biochemistry, imaging, genetics, and clinical studies. Their analysis supports the multi-level model: mitochondrial pathology is real and well-documented, but its severity and persistence are amplified by upstream vascular, immune, and ion dysregulation.

#hypothesis(title: [The Multi-Level Energy Crisis and Vicious Cycle in ME/CFS])[

ME/CFS pathophysiology is fundamentally a multi-level positive feedback loop where vascular dysfunction → ischemia → ion dysregulation → mitochondrial damage → ROS → vascular amplification, perpetuated by immune-mediated NAD#super[+] depletion and metabolic reprogramming. Unlike linear models predicting clear breakpoints for intervention, this cycle requires multi-level therapeutic targeting. Evidence comes from multiple independent research groups documenting vascular pathology (Scherbakov, Haffke, Wust, Mueller), ion dysregulation (Wirth, Scheibenbogen), mitochondrial damage (Appelman), and immune-metabolic coupling (Che, Hornig, Lipkin; Paul, Bhatt; Germain). The cycle is consistent with both symptom severity (multiple simultaneous failures) and disease persistence (mutual amplification). Scheibenbogen and Wirth  formalised this as a proposed framework termed AIMM, noting that its acquired character implies potential reversibility---a claim that itself awaits direct human validation. *Falsifiable predictions*: (1) combination interventions targeting ≥2 cycle levels will produce greater sustained benefit than mono-target approaches in RCT comparison; (2) patients with elevated intracellular muscle sodium by #super[23]Na-MRI will show greater response to ion-homeostasis-correcting therapies than patients with normal sodium; (3) correcting sodium overload alone will attenuate but not fully resolve the cycle. Certainty: 0.55 (mechanistic evidence for individual cycle components comes from multiple independent groups; the integrated positive feedback loop is logical inference not yet demonstrated in a single interventional study; the ion cascade sub-component rests primarily on one small pilot  requiring independent replication; AIMM reversibility is an untested sub-claim).

] <hyp:vicious-cycle-integrated>

#limitation(title: [Multi-Level Vicious Cycle: Integrated Loop Not Demonstrated])[
The vicious cycle model (vascular $arrow.r$ ischemia $arrow.r$ ion dysregulation $arrow.r$ mitochondrial damage $arrow.r$ ROS $arrow.r$ vascular amplification) integrates findings from multiple independent research groups, but no single study has demonstrated the complete loop operating in ME/CFS patients. Each link is supported by evidence from separate cohorts using different methodologies. The integration is logical inference, not empirical demonstration. Positive feedback loops are inherently difficult to distinguish from parallel independent dysfunctions that happen to co-occur. The therapeutic implication that multi-level targeting is required has not been tested against sequential single-target intervention.
]

== Cross-Cutting Hypotheses
<sec:cross-cutting-hypotheses>

The failure cartography reveals several integrative hypotheses that connect multiple steps in the chain. Four are developed here. Note that these hypotheses are not strictly additive: the riboflavin master-rate-limiter, PDK pathological/protective, MnSOD-primary, and cardiolipin-convergence models each predict a largely overlapping metabolomic signature (reduced TCA intermediates, elevated lactate, altered acylcarnitines). A design that discriminates between them — rather than retaining all four as parallel candidates — would use a combination of EGRAC (riboflavin functional status), baseline MnSOD/GPX4, plasma oxidized cardiolipin, and PBMC PDK transcript levels measured in the same individuals, so that competing predictions can be tested against shared data rather than in isolation.

#speculation(title: [PDK Upregulation May Be Protective, Not Pathological])[
*Certainty: 0.45.*
PDK overactivation (Section @sec:step3-pdc) is routinely framed as a pathological lesion causing energy deficit. An alternative interpretation is that PDK upregulation is a *protective cellular response* to a downstream failure in ROS handling. If MnSOD and PRDX3 are impaired, increasing pyruvate flux through a leaky ETC would generate additional superoxide — worsening oxidative damage to iron-sulfur clusters, cardiolipin, and ETC proteins. PDK-mediated restriction of TCA substrate is then the cell's "dimmer switch," trading reduced ATP production for reduced oxidative injury.

This reinterpretation has a specific clinical consequence: PDK inhibition with dichloroacetate (DCA) *without* simultaneous antioxidant support could worsen ME/CFS by flooding an already-compromised ETC. The small DCA studies (Section @sec:step3-pdc) showing heterogeneous response are consistent with this: responders may be those with intact antioxidant systems; non-responders or worseners may have low MnSOD/GPX4.

*Testable prediction:* In a stratified DCA trial, patients with low baseline MnSOD and GPX4 activity will worsen (higher plasma F2-isoprostanes, worse PEM severity); patients with normal antioxidant status will improve (normalized lactate/pyruvate ratio, reduced PEM). DCA combined with NAC + CoQ10 + riboflavin will outperform DCA monotherapy.

*Limitation:* This remains entirely speculative pending direct evidence. The PDK-as-protective framing has not been tested in ME/CFS or any similar condition. The mechanism assumes a threshold beyond which additional TCA flux becomes net-harmful — a threshold that may vary widely between patients.
] <spec:pdk-protective>

#speculation(title: [Post-Exertional Malaise Timing Reflects Integrated Stress Response Kinetics])[
*Certainty: 0.40.*
The integrated stress response (ISR) --- a conserved cellular stress program governed by four eIF2α kinases (PERK, GCN2, PKR, HRI) --- is activated when mitochondrial proteostasis fails @CostaMattioli2020ISRReview. Exertion-induced cardiolipin peroxidation, iron-sulfur cluster damage, or ETC protein misfolding triggers OMA1 cleavage of DELE1, which activates the HRI kinase, which phosphorylates eIF2α, which initiates a 24--72 hour cellular reprogramming via ATF4 @CostaMattioli2020ISRReview . This reprogramming includes transient suppression of anabolic protein synthesis, amino acid redistribution, and the mitochondrial unfolded protein response (mtUPR). The characteristic 24--48 hour delay between exertion and PEM peak matches ISR kinetics precisely.

The only direct ISR-activation evidence in ME/CFS comes from the PERK arm: Wang et al.\ found elevated PERK markers in ME/CFS skeletal muscle, establishing that the ER-stress branch of the ISR is active in this tissue @wang2023wasf3. PERK is one of the four eIF2α kinases; its elevation confirms ISR engagement via the ER-stress route, consistent with WASF3-mediated ER dysfunction (@ach:wasf3-mechanism). Whether the HRI arm (mitochondrial stress), GCN2 arm (amino acid starvation), or PKR arm (viral dsRNA sensing) are also activated in ME/CFS remains unmeasured.

If PEM is mechanistically an ISR response to exertion-induced mitochondrial damage, then GDF15 and FGF21 (canonical plasma ISR biomarkers) should peak 24--48 hours post-exertion and track PEM severity @CostaMattioli2020ISRReview. ATF4-target gene expression in PBMCs should be elevated during PEM. This framing also predicts that protecting mitochondria from exertion-induced damage (antioxidants, cardiolipin stabilisers, pre-activity creatine loading) would attenuate PEM by reducing the ISR trigger.

*Testable prediction:* Plasma GDF15 and FGF21 will peak 24--48 h after a standardized exertion challenge in ME/CFS patients, correlating with symptom severity, and will not peak at comparable levels in healthy controls or in ME/CFS patients without PEM. The ISR inhibitor ISRIB (experimental) would attenuate PEM in an animal model if the mechanism is confirmed.

*Limitation:* Direct ISR measurement in ME/CFS is limited to PERK elevation in muscle (n=14, single study) @wang2023wasf3. Peripheral blood stress biomarkers showed no difference between long COVID and controls in one controlled study (n=48) , suggesting ISR signatures may be tissue-confined rather than circulating. GDF15 has other causes including cardiac and inflammatory conditions. The connection between ISR kinetics and PEM timing remains mechanistic reasoning without direct empirical support.
] <spec:pem-isr>

#speculation(title: [Riboflavin Deficiency as a Multi-Step Master Rate-Limiter])[
*Certainty: 0.42.*
FAD (flavin adenine dinucleotide, the active form of riboflavin) is an obligate prosthetic group or cofactor at eight or more distinct energy-chain steps: PDC E3 (dihydrolipoamide dehydrogenase), KGDHC E3 (same enzyme), all four acyl-CoA dehydrogenases in beta-oxidation (VLCAD, LCAD, MCAD, SCAD), the electron transfer flavoprotein (ETF) and ETF-QO that bridge beta-oxidation to the ubiquinone pool, and succinate dehydrogenase (Complex II) as FADH#sub[2] donor. A single cofactor thus gates simultaneously the carbohydrate-to-acetyl-CoA arm, the fatty-acid-to-acetyl-CoA arm, and one direct ETC entry point.

Marginal riboflavin status — common in Western diets and worsened by GI malabsorption, mast cell activation, or bile acid dysbiosis — would produce a metabolomic signature nearly indistinguishable from the combination of PDK overactivation plus beta-oxidation failure plus Complex II dysfunction: exactly the pattern reported across ME/CFS metabolomics studies  . Riboflavin-responsive multiple acyl-CoA dehydrogenase deficiency (MADD) produces exercise intolerance, myopathy, and elevated acylcarnitines indistinguishable from severe ME/CFS.

*Testable prediction:* Erythrocyte glutathione reductase activation coefficient (EGRAC, the gold-standard functional riboflavin biomarker) will be ≥1.3 in ≥30% of ME/CFS patients vs \<10% of matched controls. Patients with elevated EGRAC will show plasma C4--C18 acylcarnitine elevation (the MADD/ETF-QO signature). Riboflavin 400 mg/day for 12 weeks will normalise EGRAC and reduce lactate/pyruvate ratio in EGRAC-high responders.

*Limitation:* No ME/CFS study has measured EGRAC. Standard serum riboflavin may be misleading: Hypothesized impairment of riboflavin transporter (SLC52A2) or mitochondrial FAD loading means tissue-level FAD deficit could exist with normal serum riboflavin.
] <spec:riboflavin-master>

#speculation(title: [Cardiolipin Peroxidation as the Convergence Point of ROS Damage])[
*Certainty: 0.30* (reduced from an initial 0.40 to reflect the negative MMPOWER-3 Phase 3 result in primary mitochondrial myopathy, which provides a discouraging prior for cardiolipin-targeted intervention in adjacent mitochondrial indications).
Cardiolipin (CL), the mitochondria-specific phospholipid, is uniquely vulnerable to peroxidation: it contains four polyunsaturated fatty acid chains (vs two for other phospholipids) and sits directly adjacent to the principal superoxide generators at Complexes I and III. Oxidized cardiolipin (CLox) triggers: release of cytochrome c from Complex III (disrupting electron transfer), inflammasome activation, and disassembly of ETC supercomplexes. With MnSOD decreased and PRDX3 uninvestigated, CLox accumulation is a mechanistically predicted consequence of sustained elevated ROS in ME/CFS.

Elamipretide (SS-31/bendavia) is a mitochondria-targeted tetrapeptide that selectively binds cardiolipin, stabilises its interaction with cytochrome c, and prevents peroxidation. It has completed Phase 3 trials in Barth syndrome (CL synthesis defect) and primary mitochondrial myopathy (MMPOWER-3); the MMPOWER-3 trial did not meet its primary endpoint (6-minute walk distance) at 24 weeks. This negative result in the closest analogous indication substantially tempers expectations for ME/CFS: even if cardiolipin peroxidation is confirmed in ME/CFS, elamipretide's clinical efficacy profile in a related mitochondrial disease is a discouraging prior, not a permissive one. Molnar et al.\ have specifically proposed it as a candidate for Long COVID mitochondrial dysfunction ; pursuing this rationale in ME/CFS requires first confirming CL oxidation in a ME/CFS cohort, and any eventual trial would need to pre-specify why it should succeed where MMPOWER-3 did not.

*Testable prediction:* Plasma oxidized cardiolipin (by LC-MS) will be >2× control in moderate-to-severe ME/CFS and will correlate with 4-HNE, F2-isoprostane, and MnSOD levels. A 12-week elamipretide open-label trial will reduce F2-isoprostanes and CLox, improve 6-minute walk distance, and reduce PEM frequency in responders with elevated baseline CLox. Non-response with normal baseline CLox would refute cardiolipin peroxidation as a driver.

*Limitation:* Plasma CLox may not reflect intramitochondrial CLox in muscle or brain. Elamipretide is injectable, limiting accessibility for severely ill patients.
] <spec:cardiolipin-peroxidation>

== Consequences of Energy Deficits
<sec:energy-consequences>

=== Cellular Function Impairment

Inadequate ATP affects all cellular processes:

    - *Ion pumps*: Na#super[+]/K#super[+]-ATPase consumes 20–40% of cellular ATP
    - *Protein synthesis*: Highly energy-intensive process
    - *Cell signaling*: Many signaling pathways require ATP
    - *Membrane function*: Active transport and vesicle trafficking

=== Tissue-Specific Effects

Different tissues manifest energy deficits differently:

*Muscle*

    - Weakness and fatigue with minimal exertion
    - Early lactate accumulation
    - Delayed recovery from activity
    - Post-exertional pain and soreness

*Brain*

    - Cognitive dysfunction (“brain fog”)
    - Reduced neurotransmitter synthesis
    - Impaired synaptic function
    - Vulnerability to excitotoxicity

*Immune Cells*

    - Impaired T cell activation (requires metabolic reprogramming)
    - Reduced NK cell cytotoxicity
    - Abnormal cytokine production
    - Ineffective pathogen clearance

=== Calcium Toxicity, Exercise Chunking, and Threshold Dynamics

The calcium toxicity model (Section @sec:calcium-dysregulation) has a critical therapeutic implication: calcium overload is a _threshold_ phenomenon, not a linear dose-response. The Na#super[+]/K#super[+]-ATPase can maintain ionic homeostasis below a certain workload; above it, intracellular sodium accumulates faster than the pump can clear, NCX reverses, and calcium floods in. Damage is then proportional to the _area above threshold_, not to total work performed.

#speculation(title: [Exercise Chunking Works by Staying Below the Calcium Toxicity Threshold])[
The Klimas reconditioning protocol (Chapter @ch:lifestyle)---short exercise bouts separated by supine rests---may work specifically because it keeps intracellular sodium below the NCX reversal threshold throughout. Supine rest between bouts is critical for a precise reason: it restores muscular perfusion (by eliminating orthostatic demand), which restores aerobic ATP production, which powers the Na#super[+]/K#super[+]-ATPase to clear accumulated sodium _before_ NCX reversal occurs. The rest period is a race between sodium clearance rate and the reversal threshold.

If correct, the optimal rest interval is patient-specific and depends on individual Na#super[+]/K#super[+]-ATPase kinetics (measurable via the Wirth-Scheibenbogen sodium MRI protocol). Compression stockings during exercise (by maintaining perfusion) should extend the tolerable bout duration before pump failure.

*Testable predictions:*

    / *(a)*: Two equal-total-work exercise sessions---one continuous, one chunked with supine rests---should produce dramatically different PEM severity, with the chunked session producing near-zero PEM if rest intervals are sufficient.
    / *(b)*: Intracellular sodium should return to baseline during properly timed supine rests, measurable by repeated sodium MRI.
    / *(c)*: Combining compression stockings with exercise chunking should allow longer bouts before sodium accumulation reaches the reversal threshold.

*Treatment implication:* Personalised exercise prescription based on sodium MRI-derived pump kinetics, rather than empirical activity restriction alone.
*Certainty: 0.40*---the logic follows directly from the calcium toxicity model and known Na#super[+]/K#super[+]-ATPase physiology, but the threshold dynamics have not been directly measured during exercise chunking in ME/CFS.
] <spec:exercise-calcium-threshold>

=== Connection to Post-Exertional Malaise

Mitochondrial dysfunction provides a compelling explanation for PEM:

    - *Limited reserve*: Baseline energy production is already compromised
    - *Exercise stress*: Activity depletes already-limited ATP stores
    - *Oxidative burst*: Exercise generates additional ROS, damaging mitochondria further
    - *Delayed recovery*: Impaired mitophagy and biogenesis slow restoration
    - *Cumulative damage*: Each exertion may worsen mitochondrial function
    - *Symptom cascade*: Energy deficit affects multiple organ systems

// Insert Figure: Normal Exercise Response
#include "../figures/fig-pem-normal.typ"

// Insert Figure: ME/CFS Post-Exertional Malaise
#include "../figures/fig-pem-mecfs.typ"

Figures @fig:pem-normal and @fig:pem-mecfs illustrate the critical distinction between normal exercise response (rapid recovery, positive adaptation) and ME/CFS PEM (ATP crisis, maladaptive inflammatory cascade, delayed deterioration). Repeated PEM episodes cause progressive decline.

*The Effort-Performance Disconnect: Physiological Mechanisms*

The profound subjective experience described in Section @sec:pem—the sensation of “giving everything” yet achieving minimal output—has direct physiological correlates that distinguish ME/CFS from psychological disorders or deconditioning.

*Central Nervous System Effort Signaling:*

The brain's effort-generating systems appear to function normally or even hyperactivate in ME/CFS:

    - *Motor cortex activation*: fMRI studies suggest normal or increased motor cortex activation during attempted movement
    - *Catecholamine mobilization attempts*: The brain attempts to mobilize energy reserves through sympathetic activation
    - *Subjective intensity*: The sense of maximal effort reflects genuine CNS activation and stress response engagement
    - *Central command*: Motor planning and initiation circuits generate normal or excessive drive

The Walitt et al.\ 2024 NIH study documented altered effort preference rather than reduced effort capability @walitt2024deep. ME/CFS patients can generate effort signals, but the consequences of doing so (PEM) appropriately modify behavior. This represents adaptive learning, not primary motivation deficit.

*Peripheral Energy Production Failure:*

Despite normal or excessive central drive, peripheral tissues cannot respond proportionally:

    - *Mitochondrial ATP deficit*: Muscle cells cannot generate sufficient ATP to sustain contraction despite receiving motor neuron signals
    - *Ion pump failure*: Inadequate ATP impairs Na#super[+]/K#super[+]-ATPase function, disrupting muscle excitability and contraction
    - *Calcium handling impairment*: Energy-dependent calcium reuptake into sarcoplasmic reticulum fails, preventing muscle relaxation and subsequent contraction
    - *Metabolite accumulation*: Lactate, hydrogen ions, and other metabolites accumulate rapidly, triggering muscle pain and afferent signaling
    - *Neuromuscular transmission stress*: Repeated activation with insufficient recovery depletes neurotransmitter and impairs synaptic function

*Cardiovascular Oxygen Delivery Limitations:*

The two-day CPET data demonstrate that oxygen delivery and utilization fail during and after exertion @keller2024cpet:

    - *Chronotropic incompetence*: Heart rate fails to increase appropriately, limiting cardiac output
    - *Reduced stroke volume*: Autonomic dysfunction impairs venous return and cardiac filling
    - *Impaired oxygen extraction*: Oxygen pulse (VO#sub[2]/HR) declines on Day 2, suggesting reduced tissue oxygen uptake
    - *Ventilatory limitation*: Reduced ventilation limits oxygen availability even when respiratory muscles receive motor commands

*The Subjective-Objective Mismatch Explained:*

This creates a situation unique to ME/CFS:

    - *Central effort generation*: Brain generates normal or maximal effort signals $arrow.r$ subjectively feels like “giving everything”

    - *Peripheral energy failure*: Muscles receive commands but cannot execute due to ATP deficit, ion pump failure, oxygen delivery limitation $arrow.r$ minimal force production, minimal work output

    - *Afferent feedback*: Massive signaling from muscle (metabolite accumulation, tissue hypoxia, cellular stress) returns to brain $arrow.r$ reinforces sensation of extreme exertion

    - *Autonomic stress response*: Sympathetic activation (elevated heart rate, norepinephrine release attempt) further intensifies subjective sense of emergency

    - *Observable output*: Despite all this internal activation and distress, actual work performed is minimal $arrow.r$ external observers see “not trying hard enough”

*Learned Helplessness as Accurate Pattern Recognition:*

The development of learned helplessness in ME/CFS differs fundamentally from learned helplessness in depression:

    - *Accurate perception*: Patients accurately perceive that their maximal effort does not produce expected outcomes—this is not a cognitive distortion but a direct experiential truth

    - *Appropriate behavioral adaptation*: Reducing effort expenditure after learning it produces crashes represents adaptive learning, not pathological avoidance

    - *Physiological validation*: Two-day CPET objectively documents that effort Day 1 produces measurable impairment Day 2, validating patient perception

    - *Controllability assessment*: In classic learned helplessness paradigms, outcomes are truly uncontrollable; in ME/CFS, outcomes are controllable through limitation (pacing works), making the adaptation rational

The psychological distress arises not from cognitive distortion but from accurate recognition of one's physiological limitations in a world structured around normal energy availability. The helplessness is _realistic_—patients genuinely cannot reliably produce normal output despite normal or excessive subjective effort expenditure.

*Vulnerability as Physiological Reality:*

The sense of extreme vulnerability—“I wouldn't amount to shit in a fight”—reflects accurate assessment of current physiological capacity:

    - *Energy unavailability for defense*: Fight-or-flight responses require massive ATP mobilization; ME/CFS patients cannot sustain this
    - *Delayed consequences*: Any acute energy expenditure (fleeing danger, defending self) would trigger severe PEM, leaving the patient even more vulnerable for days to weeks afterward
    - *Dependence on others*: Inability to reliably generate protective physical responses creates realistic dependence
    - *Identity disruption*: For patients previously defined by physical capability, this represents genuine loss, not negative self-perception

This vulnerability is not imagined or exaggerated—it is a direct consequence of documented metabolic, cardiovascular, and mitochondrial dysfunction that prevents reliable energy mobilization on demand.

=== Exercise-Induced Metabolic Failure: Two-Day CPET Evidence

The most compelling objective evidence for exercise-induced metabolic failure comes from two-day cardiopulmonary exercise testing (CPET) protocols. Unlike single-day assessments that may be confounded by deconditioning or effort, the two-day protocol documents the failure to reproduce initial performance after 24 hours—a hallmark of post-exertional malaise @keller2024cpet.

*Two-Day CPET Protocol and Rationale*

The two-day CPET protocol requires maximal exercise tests on consecutive days, separated by 24 hours. Healthy individuals and those with deconditioning typically maintain or slightly improve performance on Day 2 after familiarization with the protocol. In contrast, ME/CFS patients show consistent, reproducible declines.

#achievement(title: [Two-Day CPET: Objective Validation of Post-Exertional Malaise])[
In the largest rigorous two-day CPET study to date, Keller and colleagues examined 84 ME/CFS participants (Canadian Criteria) and 71 sedentary controls across multiple sites @keller2024cpet. The study design included a matched subset (55 pairs) controlled for sex, age, and baseline aerobic capacity, allowing assessment of whether observed abnormalities were attributable to deconditioning.

ME/CFS participants demonstrated consistent, reproducible declines in multiple cardiopulmonary parameters on Day 2: peak oxygen consumption (VO#sub[2]peak) declined by 5.3% (p \< 0.01), work output by 5.5% (p \< 0.01), ventilation by 7.8% (p \< 0.01), heart rate by 2.6% (p \< 0.05), oxygen pulse by 4.0% (p \< 0.05), and anaerobic threshold VO#sub[2] by 6.7% (p \< 0.05). In contrast, control participants showed no significant changes in any parameter between Day 1 and Day 2.

Critically, when ME/CFS participants were matched with controls having identical baseline VO#sub[2]peak (aerobic capacity), the abnormal Day 2 responses persisted, demonstrating that impaired recovery is not attributable to fitness level but represents a disease-specific pathophysiological process. This provides the most rigorous objective validation of post-exertional malaise to date, distinguishing ME/CFS from deconditioning and validating PEM as a reproducible biological phenomenon rather than subjective experience.
] <ach:two-day-cpet>

#warning-env(title: [Replication Status: Partially Replicated])[
The two-day CPET abnormality has been observed in earlier smaller studies (Snell 2013, Stevens 2014), and Keller 2024 is the largest and most rigorously controlled. However, all major studies originate from overlapping research networks. Fully independent replication by groups without prior involvement would strengthen confidence.
]

#limitation(title: [Two-Day CPET: Biomarker Utility Limitations])[
Critical analysis of the Keller 2024 data reveals important limitations for diagnostic or biomarker utility @MECFSScience2024exercise. While the group-level Day 2 decline is statistically significant, the VO#sub[2]peak decline ($-5.1%$ in ME/CFS versus $-2%$ in controls) represents a moderate effect size with substantial overlap between groups---many individual ME/CFS patients show no Day 2 decline, and some controls show declines in the ME/CFS range. The Bell Disability Scale, commonly used to measure ME/CFS functional capacity, showed near-zero correlation with CPET parameters ($rho = -0.009$ for VO#sub[2]peak), suggesting that exercise testing captures a dimension of pathophysiology that is largely independent of patient-reported disability @MECFSScience2024exercise.

Additionally, the mecfsscience.org analysis#footnote[mecfsscience.org is a non-peer-reviewed science communication site; see Chapter @ch:genetics-epigenetics for a fuller characterization of this source.] identified three methodological concerns in the broader two-day CPET literature @MECFSScience2024discrepancies: (1) conflicting data values appearing in different publications from the same dataset, (2) improbable clustering of zero-difference results in some analyses, and (3) circular reasoning in patient/control separation where the criterion for group assignment overlaps with the outcome variable. These concerns do not invalidate the finding of Day 2 decline but suggest the effect size and diagnostic specificity may be overstated in some publications.

The two-day CPET is therefore best understood as a research tool demonstrating the biological reality of PEM at the group level, rather than as a clinical diagnostic test for individual patients.
]

==== Deconditioning Alone Cannot Explain ME/CFS Exercise Intolerance
<sec:deconditioning-refutation>

A persistent alternative explanation for exercise intolerance in ME/CFS is that patients are merely deconditioned from inactivity. Note that deconditioning may be a _contributing_ factor (as discussed above in the mitophagy section, which describes deconditioning as both a consequence and a cause of mitochondrial quality control failure through reduced AMPK signalling). The claim examined here is the stronger one: whether deconditioning is a _sufficient_ explanation. NASA bed rest studies provide a direct test of this stronger claim @MECFSScience2024deconditioning. In controlled bed rest experiments, prolonged immobilisation produces measurable deconditioning---but the resulting phenotype differs qualitatively from ME/CFS:

    - *Magnitude:* Bed rest deconditioning produces mild fatigue that is readily distinguished from the profound energy failure in ME/CFS
    - *Reversibility:* Deconditioning reverses rapidly with reconditioning programmes; ME/CFS exercise intolerance shows no improvement on objective measures (actometry, Day 2 CPET) with graded exercise, and many patients report worsening — though some report subjective improvement on self-rated outcomes in unblinded trials (see Chapter @ch:symptom-management for evidence discussion)
    - *VO#sub[2]max range:* ME/CFS patients' aerobic capacity typically falls in the 10th--25th percentile of population norms---reduced, but within the range of sedentary individuals rather than in the severely deconditioned range @MECFSScience2024deconditioning @keller2024cpet. This overlap complicates the distinction: the VO#sub[2]max values of ME/CFS patients and sedentary but healthy controls overlap substantially, meaning that aerobic capacity alone cannot differentiate between deconditioning and ME/CFS-specific pathology. The Day 2 CPET decline (Achievement @ach:two-day-cpet) provides the additional discriminating evidence.
    - *Birth cohort evidence:* As reviewed by mecfsscience.org, prospective birth cohort studies show no association between pre-illness physical activity levels and subsequent development of ME/CFS, arguing against a deconditioning pathway @MECFSScience2024deconditioning

==== The Boom-and-Bust Model: Accelerometer Evidence
<sec:boom-bust-myth>

The "boom-and-bust" behavioural model posits that ME/CFS patients alternate between overexertion on "good days" and prolonged recovery, maintaining illness through a maladaptive activity pattern. This model has informed some cognitive behavioural therapy (CBT) approaches and graded exercise therapy (GET) recommendations, though proponents of these approaches also cite deconditioning and fear-avoidance models as complementary rationales. Multiple accelerometer studies measuring objective physical activity patterns have not found boom-and-bust cycling as the dominant activity pattern in established ME/CFS patients @MECFSScience2024boombust:

    - Objective activity monitoring shows ME/CFS patients maintain remarkably stable, low activity levels rather than the peaks and troughs predicted by boom-and-bust theory
    - Symptom exacerbations (crashes) occur without preceding activity spikes, indicating they reflect PEM biology triggered by normal daily activities rather than behavioural overexertion
    - The data are more consistent with a pathologically low activity threshold for triggering PEM than with pathologically high activity levels, suggesting the boom-and-bust model misidentifies the source of the problem

An alternative interpretation deserves consideration: the stable low activity levels observed in accelerometer studies may themselves reflect successful adaptive behavior by patients who have learned to pace effectively. On this reading, the absence of boom-bust peaks is evidence that pacing works, not that the boom-bust pattern never existed. Longitudinal studies capturing the transition from early illness (before pacing is learned) to established illness would help distinguish between these interpretations.

These findings support the interpretation that PEM is a biological phenomenon better managed through pacing-based approaches (Chapter @ch:symptom-management) than through behavioural modification via CBT or GET.

*Impairment Severity Worsening*

Based on anaerobic threshold criteria, impairment classification shifted dramatically:

    - *Day 1*: 14% classified as severely impaired
    - *Day 2*: 27% classified as severely impaired (nearly doubled)

This demonstrates that exertional stress unmasks or exacerbates functional impairment.



The two-day CPET findings are consistent with the mitochondrial dysfunction framework:

    - *VO#sub[2]peak decline*: Reduced maximal oxygen consumption indicates impaired oxidative metabolism at the tissue level—either reduced oxygen delivery (cardiovascular), oxygen extraction (cellular uptake), or oxygen utilization (mitochondrial dysfunction)

    - *Anaerobic threshold shift*: Earlier reliance on anaerobic metabolism suggests mitochondria cannot meet energy demands through oxidative phosphorylation, forcing premature lactate production

    - *O#sub[2] pulse reduction*: Oxygen pulse (VO#sub[2]/heart rate) reflects stroke volume or oxygen extraction; its decline suggests either cardiac dysfunction or impaired peripheral oxygen utilization

    - *Ventilatory dysfunction*: Reduced ventilation at maximal effort may reflect central respiratory drive impairment (consistent with brainstem/autonomic dysfunction) or metabolic signaling abnormalities

    - *Chronotropic incompetence*: Reduced heart rate response indicates autonomic nervous system dysregulation affecting cardiac control

*Autonomic Dysregulation as Primary Mechanism*

Keller and colleagues concluded that *autonomic nervous system dysregulation* affecting blood flow and oxygen delivery represents the primary mechanism linking these abnormalities @keller2024cpet. This integrates with the Walitt study's findings of reduced central catecholamines (Section @sec:catecholamine-metabolism)—catecholamines are essential for autonomic cardiovascular regulation during exercise.

*Complementarity with Walitt 2024 NIH Study*

The two-day CPET findings complement the NIH deep phenotyping study @walitt2024deep:

    - *Walitt*: Documented reduced CSF catecholamines, altered effort preference due to temporoparietal junction dysfunction, metabolic abnormalities, and single-day CPET showing reduced VO#sub[2]peak and chronotropic incompetence
    - *Keller*: Demonstrated that exercise Day 1 produces measurable physiological impairment on Day 2, validating PEM as a reproducible phenomenon with objective correlates

Together, these studies establish that:

    - Central catecholamine deficiency impairs effort generation and autonomic control
    - Exertional stress on Day 1 further compromises already-limited energy metabolism
    - Recovery processes fail to restore baseline function within 24 hours
    - The functional impairment is measurable, reproducible, and distinct from deconditioning

*Clinical Implications for Activity Management*

The two-day CPET findings provide a quantitative foundation for pacing strategies:

    - *Heart rate thresholds*: Staying below anaerobic threshold (often estimated as AT $-$15 bpm) may prevent Day 2 impairment
    - *Recovery periods*: Activity sufficient to trigger metabolic stress requires \>24 hours for restoration
    - *Graded exercise therapy contraindication*: Progressive increases in exertion worsen measurable physiological function rather than improving fitness
    - *Disability documentation*: Two-day CPET provides objective, reproducible evidence of functional impairment for benefits/insurance claims

*Recovery Kinetics Beyond 24 Hours*

While the Keller study assessed only 24-hour recovery, clinical observations and Cornell Center research suggest full restoration requires approximately *13 days* for ME/CFS patients compared to $tilde$2 days for sedentary controls. This prolonged recovery period likely reflects:

    - Impaired mitophagy delaying removal of damaged mitochondria
    - Reduced mitochondrial biogenesis slowing replacement
    - Persistent oxidative stress from the exertional episode
    - Systemic inflammation triggered by metabolic stress


== Selective Energy Dysfunction: The CNS-Dependency Hypothesis
<sec:selective-energy-dysfunction>


While the preceding sections document energy production impairment across multiple tissues, emerging evidence suggests ME/CFS may not represent _global_ cellular energy failure but rather _selective_ dysfunction affecting primarily CNS-dependent and demand-responsive processes while sparing genuinely autonomous, locally-controlled peripheral functions.

#hypothesis(title: [Selective Energy Dysfunction])[
ME/CFS involves selective impairment of CNS-dependent and demand-responsive processes while sparing genuinely autonomous, locally-controlled peripheral functions (hair follicle cycling, basal cardiac automaticity, resting renal clearance). This pattern suggests either primary brain energy dysfunction affecting downstream coordination, or failure of demand-response coupling mechanisms, rather than uniform global cellular energy failure.

Cerebral blood flow during orthostatic challenge exemplifies this selectivity: 91% of patients with normal resting hemodynamics show abnormal CBF reduction during demand , while baseline perfusion is often preserved. Brain hypometabolism has also been documented , though replication remains incomplete (see Chapter @ch:neurological Section @sec:glial). Together, these findings support coordination failure rather than global energy deficit as the underlying pathophysiology.
] <hyp:selective-energy>

#hypothesis(title: [Immune Cell Energy Starvation Creates a Viral Persistence Niche])[

*Certainty: 0.40.* Supported by documented T cell metabolic dysfunction in ME/CFS  and the established bioenergetic requirements of cytotoxic killing. However, the causal link between immune cell energy deficit and viral persistence has not been directly tested in ME/CFS.

This hypothesis proposes that the mitochondrial dysfunction documented in ME/CFS immune cells  is not merely a symptom but a _cause_ of viral persistence: metabolically impaired T cells and NK cells lack sufficient ATP to sustain cytotoxic function, creating a permissive niche where virus-harbouring cells survive despite immune recognition. This generates a self-reinforcing trap: viral persistence $arrow.r$ chronic immune activation $arrow.r$ T cell exhaustion and metabolic failure $arrow.r$ inadequate viral clearance $arrow.r$ more persistence.

*Mechanistic Basis.*
Cytotoxic killing is among the most energy-intensive immune functions: degranulation, perforin pore formation, and granzyme delivery each require substantial ATP. Mandarano et al.\ demonstrated that ME/CFS CD8+ T cells fail to switch from oxidative phosphorylation to glycolysis upon activation (the Warburg effect) . Without this metabolic reprogramming, effector function is impaired even if the cell correctly recognizes its target. The Kol et al.\ FIP data  provide indirect support: antiviral treatment reduced viral load but did not eliminate virus from lymphocytes, suggesting host immunity is needed for final clearance—and if that immunity is metabolically compromised, clearance never completes.

*Testable Predictions.*

    - In vitro supplementation with metabolic support (D-ribose, CoQ10, or mitochondria-targeted antioxidants such as MitoQ) will restore ME/CFS NK cell and CD8+ T cell cytotoxic function in killing assays against virus-infected target cells.
    - ME/CFS patients on combined antiviral + metabolic support therapy will show greater viral clearance (measured by pathogen-specific PCR or T-SPOT) than patients on antiviral therapy alone.
    - The degree of T cell metabolic impairment (measured by Seahorse metabolic flux analysis) will inversely correlate with viral clearance efficiency in longitudinal studies.
    - Patients with the most severe NK cell metabolic dysfunction will show the highest persistent viral antigen levels.

*Falsifiability.*
This hypothesis would be falsified if (a) restoring immune cell metabolism via in vitro supplementation does not improve cytotoxic function against virus-infected targets, or (b) ME/CFS patients with documented viral persistence show normal immune cell bioenergetics. It would also be weakened if antiviral monotherapy achieves complete viral clearance without metabolic support, suggesting the energy deficit is not rate-limiting for clearance.

*Treatment Implications.*
If confirmed, this hypothesis argues that antiviral therapy alone is insufficient—it must be combined with metabolic support targeting immune cell mitochondria. This reframes mitochondrial supplementation (CoQ10, NAD#super[+] precursors, D-ribose) not merely as energy support for the patient, but as _immune-enabling therapy_ that restores the body's ability to clear persistent infection. It also provides mechanistic rationale for the Selective Energy Dysfunction hypothesis (Hypothesis @hyp:selective-energy): immune surveillance is a demand-responsive, CNS-coordinated process that fails under energy constraint.

*Limitations.*
The hypothesis assumes viral persistence is a primary driver in a substantial proportion of ME/CFS cases, which may not hold for non-viral-onset subgroups. The in vitro prediction (metabolic supplementation restoring killing) may not translate to in vivo efficacy due to bioavailability and tissue distribution constraints. The self-reinforcing loop makes it difficult to determine which arm (metabolic failure or viral persistence) is primary.
] <hyp:immune-energy-starvation-niche>

=== Evidence for Selectivity

The distinction between _preserved_ and _impaired_ processes follows a consistent pattern:

*Impaired Processes (CNS-Dependent + Demand-Responsive)*

    - *Voluntary muscle exertion*: Requires motor cortex coordination + scaling to demand
    - *Cognitive effort*: Inherently CNS-based + scales with task complexity
    - *Orthostatic adaptation*: Requires autonomic coordination + responds to positional demand
    - *Adaptive immune responses*: Requires CNS-immune signaling + scales to antigen challenge
    - *Temperature regulation*: Requires hypothalamic coordination + responds to environmental demands

*Apparently Preserved Processes (Autonomous + Locally Controlled)*

<obs:preserved-autonomous>
Clinical observation suggests the following autonomous, locally-controlled processes continue at apparently normal rates in ME/CFS despite severe systemic symptoms:

    - *Hair follicle cycling*: Operates independent internal Cori cycle; no CNS coordination required
    - *Nail growth*: Locally controlled keratin synthesis
    - *Baseline cellular metabolism*: Homeostatic processes not requiring demand scaling
    - *Basal cardiac automaticity*: SA node pacing is intrinsic and does not require CNS input
    - *Resting renal clearance*: Glomerular filtration at rest is pressure-driven, not CNS-coordinated
    - *Hepatic constitutive enzyme expression*: Phase I detoxification operates at constitutive baseline without demand scaling

Formal documentation of these observations is lacking in the ME/CFS literature, representing a gap requiring systematic validation. However, their apparent preservation contrasts markedly with profound impairment of CNS-coordinated demand-responsive functions.

*Wound healing is excluded from the preserved category.* Although wound healing might appear to be an autonomous local process, it is in fact a complex, multi-phase, demand-responsive cascade (haemostasis → inflammation → proliferation → remodelling) requiring NK cell mobilisation, autonomic vascular regulation, fibroblast activation, angiogenesis, and significant mitochondrial ATP. No study has directly measured wound healing in ME/CFS patients. Mechanistic evidence from three independent pathways — each based on single studies with important caveats — suggests _abnormal_ wound healing dynamics rather than normal preservation:

    + *NK cell dysfunction pathway:* NK cell cytotoxicity is reduced in ME/CFS (Hedges' $g = 0.96$, 95% CI: 0.75–1.18, 28 studies ). Sobecki et al. showed that NK cells regulate wound healing through IFN-γ and GM-CSF secretion under hypoxia — but the relevant NK function is _cytokine output_, not cytotoxicity per se, and these are distinct functional properties regulated by different signalling pathways . Furthermore, Sobecki's mechanism predicts that reduced NK output produces _faster initial closure at the cost of impaired immune coordination_ — abnormal healing dynamics rather than simple delay. Whether this mechanism operates in normoxic cutaneous wounds, and whether cytotoxicity reduction in ME/CFS (the measured quantity) corresponds to reduced wound-relevant cytokine secretion (the mechanistically required quantity), are both assumed, not demonstrated.
    + *Autonomic dysregulation pathway:* Sympathetic overactivation directly inhibits reepithelialization and shifts macrophage polarisation toward anti-repair in a mouse corneal model . Whether tissue-level catecholamine concentrations in ME/CFS patients reach the inhibitory threshold used in the Xue model is unknown — ME/CFS dysautonomia manifests in systemic HRV and postural tachycardia markers, and local tissue sympathetic tone at wound sites is uncharacterised.
    + *Immune exhaustion pathway:* The immune exhaustion phenotype in burn patients produces clinically documented wound healing impairment . However, burn-induced immune exhaustion involves massive cytokine storm, systemic protein loss, and global ischaemia — a far more extreme model than ME/CFS. The validity of downward generalisation from this extreme to the milder ME/CFS immune phenotype is not established.

Each pathway has substantial caveats; if any single caveat is fatal, the remaining two pathways carry the prediction alone. Whether ME/CFS patients actually experience abnormal wound healing remains an unstudied question, and minor wound repair may remain functionally autonomous even if complex wound healing is impaired. The assumption of preservation is unsupported, but so is the prediction of impairment — direct measurement is needed to resolve the question (see Section @oq:wound-healing-mecfs).

*Critical Implication*
If ME/CFS were global mitochondrial dysfunction, all energy-requiring processes — including hair growth — should be affected proportionally. The preservation of truly autonomous peripheral processes suggests the pathology may lie in _energy coordination and allocation_ rather than _energy production capacity_ per se. The key criterion for "preserved" status is that a process must be genuinely autonomous and locally controlled, not merely slow or low-energy.

=== The Demand-Response Failure Pattern

A consistent finding across multiple physiological systems is preserved baseline function with impaired challenge response   @keller2024cpet:

    - *Cardiovascular*: Resting cardiac parameters often normal; profound dysfunction during orthostatic or exercise challenge (Section @sec:cerebral-orthostatic)
    - *Cognitive*: Basic language comprehension preserved; executive function and working memory (high-demand) severely impaired @walitt2024deep
    - *Autonomic*: Baseline HRV present; blunted response to physiological challenges
    - *Cerebral perfusion*: 91% of patients with normal resting HR/BP show abnormal cerebral blood flow reduction during tilt testing 

This pattern is consistent with intact energy production capacity but impaired ability to _mobilize_ energy in response to demand—a coordination failure rather than a production failure.

=== Mechanistic Implications

#speculation(title: [Brain as Energy Coordination Bottleneck])[
The near-universal cognitive dysfunction and documented brain hypometabolism  @walitt2024deep suggest CNS energy crisis may be the primary pathophysiological event. The brain consumes 20–25% of resting energy despite comprising only 2% of body mass (Section @sec:normal-metabolism), making it uniquely vulnerable to energy constraint. Failure of the brain to coordinate peripheral demand-responsive processes could explain the selective dysfunction pattern: autonomous processes continue because they don't require CNS coordination, while CNS-coordinated responses (exercise capacity, orthostatic tolerance, cognitive effort) fail because the coordinating organ itself is energy-depleted.

This model explains why pharmacological bypass of autonomic coordination (midodrine, fludrocortisone) can partially restore orthostatic function—the peripheral targets respond when appropriately stimulated, suggesting the dysfunction is in _coordination_ rather than _peripheral capacity_.
] <spec:brain-energy-bottleneck>

See Chapter @ch:neurological Section @sec:brain-bottleneck for expanded discussion of brain-centric pathophysiology, and Chapter @ch:cardiovascular Section @sec:cerebral-orthostatic for cerebral blood flow evidence during orthostatic challenge.

=== Therapeutic Implications of Selective Dysfunction

If ME/CFS involves selective coordination failure rather than global energy production deficit, treatment strategies should prioritize:

    - *CNS-targeted interventions*: Compounds that cross the blood-brain barrier and support brain energy metabolism specifically, rather than systemic mitochondrial supplements that may not reach the CNS at therapeutic concentrations

    - *Autonomic coordination bypass*: Pharmacological agents that directly activate peripheral targets, bypassing impaired CNS signaling (e.g., midodrine for vasoconstriction, fludrocortisone for volume expansion, droxidopa for norepinephrine replacement)

    - *Demand management*: Strict pacing to remain within the envelope of available coordination capacity, rather than attempting to increase energy production through exercise or stimulants

#speculation(title: [CNS Penetration as Limiting Factor])[
This reframing suggests that failed trials of systemic energy supplements (CoQ10, carnitine, B-vitamins) may reflect inadequate CNS penetration rather than incorrect therapeutic targets. If brain energy coordination is the primary bottleneck, supplements that do not cross the blood-brain barrier at therapeutic concentrations would be expected to show limited efficacy regardless of their peripheral effects. This hypothesis is testable through comparative trials of CNS-penetrant versus non-penetrant formulations of the same compounds.
] <spec:cns-penetration>

#speculation(title: [NETosis as Metabolic Sink Contributing to Energy Depletion])[
NETosis requires substantial NADPH oxidase activity, chromatin decondensation,
and membrane remodelling—all energy-intensive processes. In a system where
mitochondria already show stress-responsive failure @Cullen2026ATP, ongoing
NETosis @Krinsky2023 may act as a metabolic drain that competes with normal
cellular energy demands. This creates a potential vicious cycle: energy depletion
impairs NET clearance (DNase production requires cellular energy), accumulated NETs
drive further inflammation, and inflammation increases energy demand.

Study: (mechanistic reasoning, certainty: 0.30, untested).
] <spec:netosis-metabolic-sink>

#limitation(title: [Selective Energy Dysfunction: Preserved Processes Not Formally Documented])[
The “selective vs.\ global” energy dysfunction distinction rests on clinical observation that hair growth, nail growth, and other autonomous processes are preserved in ME/CFS. Formal documentation of these preserved processes is lacking — the claim derives from patient self-reports and clinical impression, not from controlled measurement. Processes classified as “preserved” also have much lower absolute energy demands than those classified as “impaired,” meaning a moderate global energy deficit could produce the same clinical pattern without any selectivity mechanism.

Wound healing — previously listed among preserved processes — has been removed from this framework. Wound healing is a complex, multi-phase, demand-responsive cascade requiring NK cell mobilisation, autonomic regulation, and substantial energy expenditure. No study has measured wound healing in ME/CFS patients, and mechanistic evidence from three independent pathways — NK cell dysfunction  , sympathetic overactivation , and immune exhaustion  — each based on single studies with substantial caveats (see above), suggests abnormal healing dynamics rather than normal preservation. This correction improves the mechanistic coherence of the framework by restricting the "preserved" category to genuinely autonomous, locally-controlled, steady-state processes, though the preserved status of the remaining items (hair growth, nail growth) itself remains based on patient self-reports without formal measurement.

For quantitative analysis of this alternative explanation, see the selective dysfunction framework in Section @sec:selective-dysfunction.
]

See Part III for detailed treatment protocols, particularly Chapter @ch:medications-mechanisms for pharmacological approaches and Chapter @ch:symptom-management for symptom-specific interventions.

#open-question(title: [Is Wound Healing Actually Impaired in ME/CFS?])[
No study has directly measured wound healing rate, quality, or complication frequency in ME/CFS patients. Mechanistic evidence from NK cell dysfunction  , autonomic dysregulation , immune exhaustion , and chronic TGF-β elevation disrupting NK-MSC wound repair circuits  predicts impairment — though each pathway is based on single studies and extrapolation to ME/CFS is inferential. However, patients and clinicians have not reported wound healing as a prominent clinical complaint, creating an apparent discrepancy between mechanistic prediction and clinical observation. A further possibility is that sedentary, homebound patients simply encounter fewer wound-producing situations, making clinical silence uninformative about either preserved or impaired function.

Possible reconciliations: (1) subclinical impairment exists but is masked by the low wound burden of sedentary, homebound patients; (2) compensatory mechanisms (e.g., elevated TGF-β promoting fibrosis) produce apparently normal closure at the cost of scar quality; (3) wound healing is genuinely preserved through mechanisms not captured by the pathways studied. A controlled study comparing standardised wound healing rates (e.g., suction blister healing time) between ME/CFS patients and age-matched controls would resolve this question and directly test the selective energy dysfunction hypothesis.
] <oq:wound-healing-mecfs>

#speculation(title: [Systemic Tissue Repair Deficit: NK Cells as Repair Coordinators Beyond Skin])[
If NK cells regulate wound healing through IFN-γ and GM-CSF secretion , and ME/CFS NK function is broadly impaired  (noting that the measured quantity is cytotoxicity, while the wound-relevant function is cytokine secretion — a related but distinct property), then the repair deficit could extend beyond skin wounds to all NK-dependent tissue maintenance. This would predict impaired mucosal barrier repair (consistent with documented gut permeability in ME/CFS), slower muscle damage repair after exertion (contributing to prolonged PEM duration), and impaired vascular endothelial repair (consistent with endothelial dysfunction in Chapter @ch:cardiovascular). These phenomena are currently treated as separate pathophysiological findings with separate explanations (mast cell activation for gut permeability, metabolic failure for PEM, oxidative stress for endothelial dysfunction); this hypothesis proposes a complementary upstream cause — halved NK repair function — that could contribute to all three. It does not claim to replace the existing explanations but suggests an additional mechanism that may compound them.

*Falsifiable prediction:* Gut mucosal repair rate (measured by serial lactulose-mannitol permeability tests after standardised challenge) should correlate with NK cytokine secretion capacity (stimulated IFN-γ and GM-CSF output from PBMCs, $r > 0.4$) in ME/CFS patients _after controlling for overall disease severity_ (Bell score). Note: the prediction requires measuring NK cytokine output specifically, not NK cytotoxicity — which is a related but distinct functional property — to test the Sobecki wound-repair mechanism.

*Certainty: 0.40* — strong mechanistic chain from Sobecki 2021 and Baraniuk 2024, but multiple inferential steps; NK role in non-skin tissue repair is less established than in skin. Not yet replicated in ME/CFS context.
] <spec:systemic-repair-deficit>

#speculation(title: [Autonomic Macrophage Polarisation as Unifying Tissue Repair Mechanism])[
Xue et al. identified two macrophage populations with opposing wound healing effects: CD64+CCR2+ (β2-adrenergic, SNS-responsive, pro-inflammatory, anti-repair) and CD64+CCR2- (α7-nAChR, PNS-responsive, anti-inflammatory, pro-repair) . ME/CFS is characterised by sympathetic overactivation and parasympathetic withdrawal (Chapter @ch:cardiovascular). If this systemic autonomic imbalance translates to altered tissue-level sympathetic tone (an assumption — ME/CFS dysautonomia is characterised by systemic markers such as HRV and postural tachycardia, but local tissue sympathetic nerve activity is uncharacterised), it would favour the pro-inflammatory, anti-repair macrophage phenotype across tissues — not only skin wounds but also brain (neuroinflammation suggested by PET markers , consistent with M1-biased microglial polarisation though direct polarisation data in ME/CFS is lacking), gut (intestinal macrophage polarisation toward barrier-disrupting), and muscle (impaired satellite cell activation after exertion).

This creates a potential unifying mechanism: autonomic dysfunction → macrophage polarisation bias → impaired tissue repair across organs. The effectiveness of vagus nerve stimulation and beta-blockers in some ME/CFS patients (Chapter @ch:emerging-therapies) may partly reflect restoration of repair-permissive macrophage polarisation, not only anti-inflammatory effects.

*Falsifiable prediction:* ME/CFS patients with higher sympathetic tone (lower HRV, higher resting HR, more severe POTS) should show slower wound healing, more neuroinflammation (PET ligand binding), and worse gut permeability, all correlating with the same autonomic measure.

*Certainty: 0.45* — multiple independent lines support the ANS-macrophage link; direct ME/CFS tissue macrophage polarisation data is lacking. Not yet replicated.
] <spec:autonomic-macrophage-repair>

=== Subtype Considerations
<sec:selective-subtypes>

The selective dysfunction pattern may manifest differently across patient subgroups. Some patients show primarily CNS-energy deficit (cognitive and autonomic symptoms predominating with relatively preserved peripheral muscle function), while others show primarily peripheral demand-response failure (exercise intolerance and orthostatic symptoms with relatively preserved cognition at rest). These patterns may represent different points along a continuum or distinct pathophysiological subtypes requiring tailored interventions.

Formal subtype analysis based on the selective dysfunction framework is developed in Chapter @ch:speculative-hypotheses Section @sec:selective-dysfunction, including quantitative predictions for dysfunction severity across processes based on their CNS-dependency and demand-responsiveness.

== Amino Acid Metabolism and Tryptophan Pathway
<sec:amino-acid>


=== Tryptophan Metabolism: NIH Study Findings

The NIH deep phenotyping study documented significant abnormalities in tryptophan metabolism in cerebrospinal fluid @walitt2024deep. Tryptophan is an essential amino acid that serves as precursor for:

    - *Serotonin*: Via tryptophan hydroxylase pathway
    - *Melatonin*: Via serotonin N-acetyltransferase
    - *Kynurenine pathway metabolites*: Via indoleamine 2,3-dioxygenase (IDO)

*The Kynurenine Pathway*
Approximately 95% of dietary tryptophan is metabolized through the kynurenine pathway:

    - *Tryptophan → Kynurenine*: Rate-limiting step; induced by inflammatory cytokines (IFN-$gamma$)
    - *Kynurenine → Kynurenic acid*: Neuroprotective branch (NMDA antagonist)
    - *Kynurenine → 3-hydroxykynurenine → Quinolinic acid*: Neurotoxic branch
    - *Quinolinic acid*: NMDA receptor agonist, excitotoxin, pro-oxidant

*ME/CFS Kynurenine Pathway Abnormalities*

    - Increased IDO activity (driven by inflammation)
    - Elevated kynurenine/tryptophan ratio
    - Increased neurotoxic metabolites (quinolinic acid, 3-HK)
    - Reduced neuroprotective metabolites (kynurenic acid) in some studies
    - Depletion of tryptophan available for serotonin synthesis

=== Implications for Neurotransmitter Production

Tryptophan diversion into the kynurenine pathway reduces serotonin synthesis:

    - *Serotonin depletion*: May contribute to mood symptoms, pain, sleep disturbance
    - *Melatonin reduction*: May explain sleep-wake cycle disruption
    - *Quinolinic acid excess*: May cause excitotoxicity and cognitive dysfunction
    - *Oxidative stress*: 3-hydroxykynurenine generates free radicals

=== Other Amino Acid Abnormalities

Metabolomic studies have identified broader amino acid disturbances:

    - *Branched-chain amino acids*: Often altered; important for muscle metabolism
    - *Glutamate/glutamine*: Excitatory neurotransmitter precursors
    - *Glycine*: Inhibitory neurotransmitter, glutathione precursor
    - *Cysteine*: Rate-limiting for glutathione synthesis

=== Homocysteine and Methylation Cycle

#hypothesis(title: [Homocysteine-Mediated ETC Disruption as a Contributing Mechanism])[
Elevated homocysteine — whether arising from methylenetetrahydrofolate reductase (MTHFR) polymorphisms,
B12 or folate deficiency, or post-viral methylation depletion — may contribute to the mitochondrial
dysfunction documented in ME/CFS through direct inhibition of electron transport chain (ETC) complexes.

Mechanistic evidence from cardiovascular and neurological models documents that
hyperhomocysteinemia (HHcy) reduces activities of ETC complexes I–V in cardiac and neural tissue,
generates reactive oxygen species (ROS) through both direct auto-oxidation and secondary ETC impairment,
and depletes mitochondrial antioxidant defenses (superoxide dismutase, catalase) @Kaplan2020.
Additionally, the reactive metabolite homocysteine thiolactone causes N-homocysteinylation of
cytochrome c, directly disrupting electron transfer @Kaplan2020.

Clinically, Regland et al.\ found that all 12 FM/CFS patients examined showed elevated cerebrospinal
fluid (CSF) homocysteine (with normal serum levels), and that CSF homocysteine correlated positively
with fatiguability severity . This CNS-compartment-specific elevation suggests
that routine serum homocysteine testing may underdetect a metabolically relevant abnormality in a
subset of ME/CFS patients.

A separate genetic predisposition pathway involves MTHFR C677T polymorphism, which reduces enzyme
activity to 25–67% of normal, impairing remethylation of homocysteine to methionine .
Disrupted one-carbon metabolism from MTHFR dysfunction also affects mitochondrial DNA methylation,
with downstream consequences for OXPHOS gene expression .

*Testable predictions:* (1) ME/CFS patients with MTHFR TT genotype should show higher CSF
homocysteine than CT or CC genotype patients. (2) CSF homocysteine levels should correlate with
ETC complex activity in PBMCs in the same patients. (3) MTHFR-guided B12/folate supplementation
should preferentially reduce fatigue in ME/CFS patients with confirmed elevated CSF homocysteine.

*Limitations:* The ETC inhibition data are from animal and in vitro cardiovascular/neurological
models, not from ME/CFS patients. The Regland 1997 CSF study has n=12 and no control group. The
proposed MTHFR–HHcy–ETC–fatigue causal chain, while mechanistically coherent, has not been
tested as an integrated pathway in ME/CFS.

(Certainty: Low; animal/in vitro mechanism + single small clinical study; not yet independently replicated.)
] <hyp:homocysteine-etc-disruption>

== Carbohydrate Metabolism and Lactate
<sec:carbohydrate>


=== Glucose Utilization

Abnormal glucose handling occurs in ME/CFS:

    - *Hypoglycemia symptoms*: Reported by many patients, though blood glucose often normal
    - *Impaired glucose uptake*: May affect specific tissues
    - *Altered insulin sensitivity*: Variable findings
    - *Post-prandial symptoms*: Reactive responses to meals

=== Lactate Accumulation

Elevated lactate indicates reliance on anaerobic metabolism:

    - *Resting lactate*: May be elevated in some patients
    - *Exercise lactate*: Earlier and greater accumulation
    - *Recovery*: Slower lactate clearance
    - *Brain lactate*: Elevated on MR spectroscopy in some studies

*Clinical Phenomenology: Similarities to Athletic Post-Exercise States.*

The chronic lactate accumulation and reliance on anaerobic metabolism in ME/CFS produces a muscle metabolic state remarkably similar to what elite athletes experience temporarily after exhausting physical efforts:

    - *Muscle cramping*: ATP depletion prevents proper muscle relaxation; magnesium and calcium handling disrupted
    - *“Ready for cramps” sensation*: Persistent partial ATP deficit maintains muscles in pre-cramp tension state
    - *Metabolic acidosis*: Lactate accumulation creates acidic intracellular environment
    - *Delayed recovery*: Impaired lactate clearance prolongs metabolic stress

The critical difference: athletes experience this state transiently after intense exertion and recover within hours to days; ME/CFS patients exist in this state continuously, even at rest or after minimal activity.

This parallel has practical treatment implications. Sports medicine recovery protocols—electrolyte replacement, magnesium supplementation, ATP precursors (D-ribose), lactate clearance strategies—may provide symptomatic benefit by addressing the chronic metabolic stress state.  These recovery strategies informed the development of baseline metabolic support protocols discussed in the treatment chapters.

ME/CFS muscle pathophysiology may be understood as a state of continuous post-exercise metabolic stress without the triggering exercise. Interventions that support athletic recovery from intense exertion may provide baseline metabolic support for ME/CFS patients:

    - Oral rehydration solutions for blood volume and lactate clearance
    - Magnesium for ATP synthesis and muscle relaxation
    - Acetyl-L-carnitine to restore fat oxidation capacity
    - D-ribose as direct ATP building block

This framework suggests ME/CFS patients require continuous application of recovery protocols, not as performance enhancement but as compensatory support for chronically impaired energy metabolism.

=== Insulin Sensitivity

Insulin resistance features in some ME/CFS patients:

    - *Hyperinsulinemia*: Compensatory insulin excess
    - *Impaired glucose tolerance*: Abnormal oral glucose tolerance tests
    - *Metabolic syndrome overlap*: Shared features in some patients
    - *Inflammation link*: Cytokines promote insulin resistance


== Catecholamine Metabolism: NIH Study Findings
<sec:catecholamine-metabolism>

The NIH deep phenotyping study provided groundbreaking data on catecholamine abnormalities in cerebrospinal fluid @walitt2024deep, establishing a direct link between neurotransmitter metabolism and ME/CFS symptoms.

=== CSF Catecholamine Findings

==== Reduced Catecholamine Levels

Lumbar puncture analysis revealed significantly reduced central catecholamines:

    - *Dopamine metabolites*: Lower homovanillic acid (HVA)
    - *Norepinephrine metabolites*: Reduced 3-methoxy-4-hydroxyphenylglycol (MHPG)
    - *Implications*: Central catecholamine synthesis or turnover is impaired

==== Correlation with Symptoms

The study established direct correlations between CSF catecholamines and clinical measures:

    - *Motor performance*: Lower catecholamines correlated with reduced grip strength
    - *Effort behaviors*: Predicted reduced selection of difficult tasks
    - *Cognitive function*: Correlated with memory and executive function deficits
    - *Fatigue severity*: Inverse correlation with norepinephrine markers

=== Catecholamine Synthesis Pathway

Understanding the pathway illuminates potential dysfunction points:

    - *Tyrosine → L-DOPA*: Tyrosine hydroxylase (rate-limiting, requires tetrahydrobiopterin)
    - *L-DOPA → Dopamine*: Aromatic amino acid decarboxylase (requires pyridoxal phosphate)
    - *Dopamine → Norepinephrine*: Dopamine $beta$-hydroxylase (requires copper, ascorbate)
    - *Norepinephrine → Epinephrine*: PNMT (primarily in adrenal medulla)

=== Potential Mechanisms of Catecholamine Deficiency

==== Cofactor Deficiencies

Catecholamine synthesis requires multiple cofactors:

    - *Tetrahydrobiopterin (BH4)*: Essential for tyrosine hydroxylase; depleted by oxidative stress
    - *Iron*: Required by tyrosine hydroxylase
    - *Pyridoxal phosphate (B6)*: Required for decarboxylation
    - *Ascorbate (Vitamin C)*: Required for dopamine $beta$-hydroxylase
    - *Copper*: Required for dopamine $beta$-hydroxylase

==== Oxidative Stress Effects

Oxidative stress can impair catecholamine metabolism:

    - *BH4 oxidation*: Converts active BH4 to inactive BH2
    - *Enzyme damage*: Oxidative modification of synthetic enzymes
    - *Catecholamine oxidation*: Auto-oxidation generates more ROS
    - *Neuromelanin formation*: Oxidized catecholamines form potentially toxic aggregates

==== Inflammation Effects

Inflammatory cytokines affect catecholamine metabolism:

    - *GTP cyclohydrolase induction*: Initially increases BH4 but depletes with chronic inflammation
    - *Altered enzyme expression*: Cytokines modify gene expression
    - *Competition for BH4*: Increased iNOS activity consumes BH4
    - *Microglial activation*: Affects local neurotransmitter metabolism

=== Functional Consequences

==== Dopamine Deficiency

Reduced dopamine affects multiple systems:

    - *Motivation and reward*: Dopamine mediates reward anticipation
    - *Motor function*: Contributes to motor initiation and execution
    - *Cognition*: Essential for working memory and executive function
    - *Mood*: Contributes to anhedonia and depression symptoms

==== Norepinephrine Deficiency

Reduced norepinephrine affects:

    - *Arousal*: Norepinephrine maintains wakefulness and alertness
    - *Attention*: Required for sustained and selective attention
    - *Autonomic function*: Central norepinephrine modulates autonomic outflow
    - *Stress response*: Mediates appropriate responses to stressors


== The "Metabolic Trap" Hypothesis
<sec:metabolic-trap>

Several researchers have proposed that ME/CFS involves metabolic “traps” — stable dysfunctional states that persist even after the initial trigger resolves.

=== IDO Metabolic Trap

One prominent hypothesis involves tryptophan metabolism:

    - *Trigger*: Infection induces IFN-$gamma$, activating IDO
    - *Tryptophan depletion*: IDO diverts tryptophan from serotonin to kynurenine
    - *Kynurenine effects*: Metabolites may perpetuate immune activation
    - *Feedback loop*: Chronic activation maintains the altered state

=== The “Dauer” Hypothesis

Drawing on C. elegans biology, some researchers propose ME/CFS represents a hypometabolic survival state:

    - *Dauer state*: Nematode survival mode with reduced metabolism
    - *Human analog*: ME/CFS as a protective metabolic downregulation
    - *Persistence*: The hypometabolic state becomes self-perpetuating
    - *Treatment implications*: May require specific signals to exit the state

== Compartmental Energy Models
<sec:compartmental-energy>


Recent evidence suggests ME/CFS may represent _selective_ rather than global energy dysfunction. The observation that certain processes (hair growth, nail growth) appear to remain intact despite severe systemic symptoms challenges the assumption of uniform mitochondrial failure.

=== CNS-Specific vs. Global Dysfunction

The selective energy dysfunction hypothesis proposes that ME/CFS preferentially affects:

    - *CNS-dependent processes*: Functions requiring central coordination (cognition, autonomic regulation, motor control)
    - *Demand-responsive processes*: Functions that must scale with physiological challenge (exercise capacity, orthostatic regulation)

While sparing:

    - *Autonomous local processes*: Hair follicle cycling, keratinocyte proliferation, basal cardiac automaticity
    - *Constant-output processes*: Functions that operate at steady state without demand scaling (resting renal clearance, hepatic constitutive enzyme expression)

=== Evidence for Compartmentalization

Several findings support compartmental rather than global dysfunction:

    - *Preserved peripheral ATP at rest*: 31P-MRS studies show variable findings, with some patients showing normal resting muscle ATP despite symptoms
    - *Demand-response failure*: 91–100% of ME/CFS patients show abnormal cerebral blood flow reduction during orthostatic challenge—3-fold greater than controls —yet baseline perfusion may be preserved
    - *Brain-specific hypometabolism*: PET and SPECT studies reveal regional brain hypometabolism without corresponding peripheral findings 
    - *Pharmacological bypass effectiveness*: Direct-acting agents like midodrine can restore function that CNS coordination cannot achieve, suggesting intact peripheral machinery

=== The Astrocyte-Neuron Lactate Shuttle

The brain's unique metabolic architecture may explain CNS-specific vulnerability. Unlike peripheral tissues with direct glucose access, neurons depend on astrocytes to provide lactate via the astrocyte-neuron lactate shuttle (ANLS)  :

    - Astrocytes take up glucose and convert it to lactate
    - Lactate is exported via MCT4 transporters
    - Neurons import lactate via MCT2 transporters
    - Lactate oxidation provides 30–50% of neuronal ATP @Belanger2011

Dysfunction in this shuttle—from MCT transporter impairment, astrocyte pathology, or neuroinflammation—could cause CNS-specific energy failure while peripheral tissues (with direct glucose access) remain functional.

#key-point(title: [Compartmental Model Implications])[
If energy dysfunction is compartmentalized rather than global:

    - Peripheral mitochondrial biomarkers may underestimate CNS dysfunction
    - Treatment strategies should prioritize CNS-penetrant approaches
    - Subtyping may depend on which compartment shows primary dysfunction

See Section @sec:selective-dysfunction for comprehensive treatment of the selective dysfunction hypothesis with formal mathematical framework.
]

== Potential Interventions
<sec:energy-interventions>

=== Mitochondrial Support

==== Cofactors and Substrates

Supporting mitochondrial function may help:

    - *Coenzyme Q10*: Electron carrier in ETC; antioxidant
    - *L-carnitine/acetyl-L-carnitine*: Fatty acid transport; neuroprotection
    - *B vitamins*: Cofactors for multiple metabolic enzymes
    - *Magnesium*: Required for ATP utilization
    - *D-ribose*: Substrate for ATP synthesis
    - *Alpha-lipoic acid*: Antioxidant; mitochondrial cofactor

==== Mitochondrial-Targeted Therapies

Emerging approaches target mitochondria specifically:

    - *MitoQ*: Mitochondria-targeted antioxidant
    - *SS-31 (Elamipretide)*: Cardiolipin-binding peptide
    - *Nicotinamide riboside*: NAD#super[+] precursor
    - *Urolithin A*: Promotes mitophagy

=== Antioxidants

==== Glutathione Support

Restoring glutathione may be beneficial:

    - *N-acetylcysteine (NAC)*: Provides cysteine for glutathione synthesis (a dose-response trial using brain MRS is underway; see Appendix @app:research-registry, Section @sec:registry-cornell-nac)
    - *Liposomal glutathione*: May improve absorption
    - *Glycine supplementation*: Second rate-limiting substrate
    - *Selenium*: Required for glutathione peroxidase

==== Other Antioxidants

    - *Vitamin C*: Water-soluble antioxidant; cofactor for catecholamine synthesis
    - *Vitamin E*: Fat-soluble membrane antioxidant
    - *Polyphenols*: Plant-derived antioxidants (resveratrol, quercetin)
    - *Melatonin*: Potent antioxidant with mitochondrial effects

=== Addressing Catecholamine Deficiency

==== Precursor Support

Supporting neurotransmitter synthesis:

    - *Tyrosine*: Catecholamine precursor
    - *Phenylalanine*: Converted to tyrosine
    - *BH4 support*: Sapropterin or folate to support BH4 recycling
    - *Cofactors*: Iron, B6, vitamin C, copper

==== Pharmacological Approaches

Medications affecting catecholamine systems:

    - *Stimulants*: Methylphenidate, amphetamines (increase catecholamine release)
    - *Bupropion*: Norepinephrine-dopamine reuptake inhibitor
    - *SNRIs*: Serotonin-norepinephrine reuptake inhibitors
    - *MAO-B inhibitors*: Reduce dopamine breakdown

== Energy Utilization Beyond ATP Production
<sec:energy-utilization>

Even when ATP is produced, cells in ME/CFS may have impaired ability to use that ATP effectively. This is mechanistically distinct from ATP production defects and requires different intervention strategies. See @sec:sodium-calcium-cascade (Cross-Cutting Mechanisms) for the detailed cascade.

== Summary: Integrated Metabolic Model
<sec:metabolism-summary>

This chapter and the broader document identify over thirty distinct mechanisms affecting energy creation, delivery, and utilization in ME/CFS. These are not all of the same kind. The taxonomy below organizes them into six conceptually distinct categories: (1) the five normal ATP synthesis pathways that constitute the biochemical machinery of energy production; (2) documented dysfunctions that break or impair that machinery or its prerequisites, subdivided by whether they affect production, delivery, or consumption; (3) hypothesized dysfunctions of the same kind as the documented ones, but not yet confirmed at the same evidential level; (4) normal biological programs that have become pathologically self-sustaining, suppressing energy production as a side effect of their persistence; (5) a proposed compensatory mechanism—a normal pathway that may partially offset specific production failures; and (6) an explanatory framework proposing that the pattern of impairment reflects selective allocation failure rather than global production deficit. Understanding which category a mechanism belongs to matters for treatment in principle, even where validated protocols do not yet exist: a broken enzyme requires replacement or support; a stuck protective program requires an exit signal rather than more substrate; a compensatory pathway may be deliberately amplified; an allocation failure requires routing interventions rather than more fuel. These implications are theoretical—no clinical trial has yet randomized patients by taxonomic category—but they orient the direction of research and constrain which interventions are plausible candidates.

=== Normal ATP Synthesis Pathways

Five baseline energy systems supply cellular ATP under normal conditions. All are relevant to ME/CFS because each represents a potential point of failure:

    / *Glycolysis*: Cytoplasmic, anaerobic conversion of glucose to pyruvate yielding 2 ATP and 2 NADH per glucose (Section @sec:atp-synthesis).
    / *Krebs cycle (TCA cycle)*: Mitochondrial matrix oxidation of acetyl-CoA generating 3 NADH, 1 FADH#sub[2], and 1 GTP per turn (Section @sec:atp-synthesis).
    / *Electron transport chain and oxidative phosphorylation*: Inner mitochondrial membrane complexes I–V producing 30–32 ATP per glucose via the proton gradient (Section @sec:atp-synthesis).
    / *Fatty acid $beta$-oxidation*: Carnitine-shuttle-dependent mitochondrial degradation of long-chain fatty acids into acetyl-CoA units (Section @sec:step4-carnitine-betaox).
    / *Phosphocreatine buffering*: Immediate ATP regeneration from phosphocreatine, operating on a timescale of seconds (Section @sec:normal-metabolism).

=== Documented Energy Dysfunctions

The following dysfunctions are supported by peer-reviewed evidence at the level of established or probable findings. They are subdivided by what they impair: the biochemical production machinery itself, the delivery of oxygen and signaling that the machinery depends on, or the consumption of ATP by processes that become wasteful sinks. Evidence quality varies across items: some rest on multiple independent cohorts; others (WASF3 pathway, intracellular sodium, AMP/ADP ratio in lymphocytes) currently derive from single studies and await independent replication. See the replication status notes in the body sections for individual items.

==== Production Failures

These dysfunctions directly impair one or more of the five normal pathways above:

    / *Impaired mitochondrial ATP production*: Reduced ATP in lymphocytes/PBMCs, abnormal mitochondrial morphology on electron microscopy, and reduced oxygen consumption rates across multiple studies (Section @sec:mito-evidence).

    / *Elevated AMP/ADP with reduced ATP/ADP ratio*: Heng et al. 2025 multi-omics study ($n=61$) documented elevated AMP (median 312.2 nM vs 147.2 nM controls) and reduced ATP generation in white blood cells @heng2025mecfs (Section @sec:mito-evidence).

    / *WASF3–ER stress–Complex IV pathway*: Viral ER stress elevates WASF3, which translocates to mitochondria and disrupts respiratory chain supercomplex assembly, specifically impairing Complex IV @wang2023wasf3 (Section @sec:cross-cutting-mechanisms).

    / *Reactive oxygen species vicious cycle*: Electron leakage at Complexes I and III (5–10% in ME/CFS vs normal 2%) damages mitochondrial DNA, proteins, and membranes, producing further ROS in a self-amplifying loop (Section @sec:ros).

    / *Nitrosative stress*: Excess NO and peroxynitrite inhibit Complex I, Complex IV, and aconitase, directly impairing both the ETC and TCA cycle (Section @sec:rns).

    / *Glutathione depletion*: Reduced cortical glutathione correlating with physical functioning ($rho=0.506$) and energy ($rho=0.606$) ; glutathione is the primary antioxidant protecting ETC complexes from oxidative damage (Section @sec:oxidative-stress).

    / *TCA cycle intermediate deficiencies*: Significantly reduced plasma citrulline, malate, and isocitrate; diagnostic pyruvate/isocitrate and ornithine/citrulline ratios  (Chapter @ch:gut-microbiome).

    / *Pyruvate dehydrogenase dysfunction*: Impaired conversion of pyruvate to acetyl-CoA at the TCA cycle entry point; thiamine and lipoic acid are cofactors (Section @sec:energy-interventions).

    / *Fatty acid oxidation defects*: Reduced carnitine levels, elevated acylcarnitines suggesting incomplete oxidation, and premature shift to glucose utilization during exercise (Section @sec:step4-carnitine-betaox).

    / *CoQ10 deficiency*: Significantly lower plasma CoQ10 with 44.8% of patients below the lowest control value; CoQ10 is the mobile electron carrier between Complexes II and III in the ETC, and its deficiency directly reduces chain throughput  (Section @sec:energy-interventions).

    / *NAD#super[+]/NADH dysregulation*: Abnormal NAD#super[+] metabolism documented in ME/CFS white blood cells, impairing Complex I function, glycolysis, and TCA cycle activity simultaneously @heng2025mecfs (Section @sec:mito-evidence).

    / *Immune cell metabolic dysfunction*: CD8#super[+] T cells show failed Warburg-effect transition: reduced mitochondrial membrane potential and inability to switch from oxidative phosphorylation to glycolysis upon activation  (Chapter @ch:immune-dysfunction).

    / *Lactate accumulation and anaerobic shift*: Earlier and greater lactate accumulation during exercise, elevated resting and brain lactate, slower post-exercise clearance, and leftward-shifted anaerobic threshold; reflects overflow from glycolysis when the ETC cannot process pyruvate fast enough (Section @sec:carbohydrate).

    / *Brain lactate elevation*: Elevated ventricular and regional brain lactate on MR spectroscopy, with lactate-to-creatine ratio increases in right insula, thalamus, and cerebellum ; indicates compartment-specific failure of oxidative metabolism in the CNS (Section @sec:compartmental-energy).

==== Delivery Failures

These dysfunctions do not break the biochemical machinery directly. Instead they impair the upstream prerequisites—oxygen, substrate, and neuroendocrine demand-signaling—without which the five pathways cannot operate at capacity:

    / *Oxygen delivery impairment*: Fibrinaloid microclots (>10-fold greater burden), reduced red blood cell mass (93.8% of female patients below normal), impaired flow-mediated dilation, and 91% abnormal cerebral blood flow reduction during tilt testing collectively reduce the oxygen available to mitochondria regardless of their intrinsic functional state (Chapter @ch:cardiovascular).

    / *Catecholamine deficiency*: Reduced CSF dopamine metabolites (HVA) and norepinephrine metabolites (MHPG) @walitt2024deep impair autonomic cardiovascular regulation and energy mobilization on demand; this is a failure of the signaling system that routes energy to where it is needed, not of production capacity itself (Section @sec:catecholamine-metabolism).

==== Consumption Failures

This dysfunction does not reduce ATP production. Instead it increases wasteful ATP consumption, widening the gap between production and usable supply:

    / *Na#super[+]/K#super[+]-ATPase impairment*: Elevated baseline intracellular muscle sodium (12.2 mM vs 9.4 mM, $p=0.003$) with greater post-exercise accumulation indicates that the Na#super[+]/K#super[+] pump—itself an ATP consumer, not a producer—is working against a leak rather than restoring resting ion gradients efficiently  (Chapter @ch:supplements).

=== Hypothesized Dysfunctions

The following are proposed failures of the same kinds as the documented dysfunctions above—impairments of production, delivery, or consumption—but not yet confirmed at the same evidential level. Certainty values reflect the classification conventions used throughout this document: ≥ 0.45 warrants a _hypothesis_ designation; < 0.45 a _speculation_.

    / *Astrocyte-neuron lactate shuttle dysfunction (certainty 0.35 — production, compartmental)*: Neuroinflammation may reprogram astrocytes toward a glycolytic-inflammatory phenotype, reducing lactate transfer to neurons via MCT2/MCT4 downregulation. This would constitute a production failure at the compartmental level: glycolysis in astrocytes would continue, but neurons would be denied the lactate they depend on as fuel, explaining coexistent elevated brain lactate with cognitive dysfunction (Section @sec:compartmental-energy; Chapter @ch:neurological).

    / *Purinergic signaling dysregulation (certainty 0.30 — delivery/signaling)*: Extracellular ATP released during exertion may act as a pathological danger signal via sensitized P2X/P2Y receptors rather than returning to the intracellular ATP pool. This would constitute a delivery failure: ATP is lost to extracellular signaling cascades—including NLRP3 inflammasome activation—rather than being recycled for cellular work, and may explain the delayed PEM timecourse (Chapter @ch:speculative-hypotheses).

    / *Metabolic flexibility loss (certainty 0.40 — production)*: The inability to switch between fuel sources (glucose, fatty acids, ketones) based on availability and demand would constitute a production failure: when one substrate pathway is impaired, a healthy system shifts to alternatives, but this adaptive capacity appears reduced in ME/CFS, leaving cells dependent on whichever pathway happens to be most impaired (Chapter @ch:emerging-therapies).

    / *Arginine-citrulline/NO cycle dysfunction (certainty 0.40 — delivery)*: Low citrulline/arginine availability produces substrate-limited NO synthesis, impairing vasodilation and endothelial function. Additionally, NO is required for mitochondrial biogenesis signaling via PGC-1$alpha$ ; this dysfunction therefore impairs both acute oxygen delivery and the longer-term capacity to build new mitochondria (Chapter @ch:gut-microbiome).

    / *Thyroid hormone resistance (certainty 0.35 — production, upstream regulation)*: Suboptimal T4→T3 conversion and selenoprotein P autoantibodies @Sun2023selenop impair tissue T3 availability, reducing PGC-1$alpha$-mediated mitochondrial biogenesis, cardiolipin-dependent supercomplex assembly, and ERR$alpha$-coordinated mitophagy. Unlike production failures that damage existing mitochondria, this reduces the rate at which new mitochondria are synthesized—a failure of regenerative capacity rather than acute biochemical function (Section @sec:thyroid-mito-regulation; Chapter @ch:endocrine, Section @sec:thyroid).

=== Normal Mechanisms Turned Pathological

The following are not failures of the energy machinery in the conventional sense. Each is a normal biological program—one that evolved for protective purposes—that has become self-sustaining and now suppresses energy production as a consequence of its persistence. The distinction matters therapeutically: these programs cannot be treated by supplying more substrate or replacing a broken enzyme. They require a different kind of intervention—a signal that tells the system the danger has passed—and until that signal arrives, they will continue to consume or suppress the very energy they originally evolved to protect.

    / *Cell danger response (certainty 0.40)*: The cell danger response (CDR) is a normal coordinated defensive program: when a cell is threatened, it reduces mitochondrial function, shifts metabolism toward protective inflammatory readiness, and alters purinergic signaling to alert neighboring cells . In ME/CFS, this program appears to fail to terminate after the initial trigger resolves—or, under the strongest alternative interpretation, the trigger itself (persistent virus, autoantibodies, microclots) has not resolved, and the CDR continues responding appropriately to an ongoing stimulus. Either interpretation implies chronically suppressed oxidative phosphorylation; they differ in what treatment is required (Section @sec:metabolic-trap).

    / *Hypometabolic dauer state (certainty 0.30)*: The dauer state is a well-characterized survival program in _C. elegans_: when environmental conditions become hostile, the organism suppresses approximately 80% of metabolic activity to conserve resources until conditions improve. The hypothesis is that ME/CFS represents an analogous human hypometabolic survival state, with a ~2-year threshold beyond which the state becomes entrenched and potentially irreversible. As with the CDR, this is not a broken mechanism—it is a working one applied in the wrong context (Section @sec:metabolic-trap).

    / *IDO metabolic trap (certainty 0.35)*: Indoleamine 2,3-dioxygenase (IDO) is a normal immune enzyme: when activated by IFN-$gamma$ during infection, it diverts tryptophan away from serotonin synthesis toward the kynurenine pathway, depleting an amino acid that pathogens need. In ME/CFS, chronic immune activation maintains IDO activity, producing neurotoxic kynurenine metabolites that perpetuate the immune activation that drives IDO—a self-sustaining loop. The IDO pathway is functioning correctly; it is the immune context that maintains it that has become pathological (Section @sec:metabolic-trap).

    / *Succinate as metabolic danger signal (certainty 0.35)*: Succinate is a normal TCA cycle intermediate. When it accumulates—as occurs when oxidative phosphorylation is impaired and the TCA cycle backs up—it acts as a danger signal: it activates the NLRP3 inflammasome and stabilizes HIF-1$alpha$, both of which promote glycolytic-inflammatory metabolism. This is a designed signaling role, but in ME/CFS the impaired ETC creates chronic succinate accumulation, locking cells into a self-reinforcing glycolytic-inflammatory state that further suppresses oxidative metabolism (Chapter @ch:symptom-mechanisms).

=== Proposed Compensatory Mechanism

One mechanism identified in this document is neither a dysfunction nor a pathological program. It is a normal pathway proposed as a potential workaround around specific documented production failures:

    / *Ketone bypass (certainty 0.30)*: Beta-hydroxybutyrate and acetoacetate can enter neurons directly via MCT1/MCT2 transporters and feed into the ETC as acetyl-CoA, bypassing both the TCA cycle entry step (impaired by pyruvate dehydrogenase dysfunction) and the astrocyte-neuron lactate shuttle (potentially impaired by neuroinflammation). This pathway is entirely normal and functional; the hypothesis is simply that it may partially compensate for ME/CFS-specific blockades in patients whose ETC remains sufficiently intact to use the fuel (Chapter @ch:speculative-hypotheses).

=== Explanatory Framework

One item in this taxonomy is not a mechanism at all—neither a dysfunction, a normal program, nor a compensatory pathway. It is a hypothesis about the _pattern_ of which mechanisms are selectively impaired:

    / *Selective energy dysfunction / CNS-dependency hypothesis (certainty 0.40 — interpretive framework, not a testable mechanism)*: ME/CFS selectively impairs CNS-dependent and demand-responsive processes while sparing autonomous steady-state functions — hair growth, basal cardiac automaticity, resting renal clearance — that do not require active CNS demand-signaling. This pattern suggests an energy _allocation_ problem rather than a global production deficit: not that cells cannot make ATP, but that the system cannot route energy appropriately in response to demand. This framework does not replace any of the documented production or delivery failures; it proposes a higher-level explanation for why those failures produce the specific pattern of disability seen clinically, and it implies that treatment requires addressing coordination and routing mechanisms, not only biochemical production (Section @sec:selective-energy-dysfunction).

Therapeutic interventions targeting these energy deficits—including mitochondrial cofactors, substrates, and biogenesis signals—are discussed in Section @sec:energy-interventions and extensively in #link(<part:treatment>)[Part III (Treatment and Management)].




== Neurosteroid Cross-Talk with Mitochondrial Bioenergetics
<sec:neurosteroid-mitochondria>

A speculative but mechanistically grounded connection links the allopregnanolone axis to the mitochondrial dysfunction documented in this chapter. Allopregnanolone has been reported to modulate mitochondrial bioenergetics beyond its well-characterized GABA-A effects.

#speculation(title: [Allopregnanolone Mitochondrial Effects as a Third Mechanism of Neurosteroid Benefit in ME/CFS])[
*Certainty: 0.18.* Allopregnanolone and progesterone have been shown in preclinical studies to affect mitochondrial membrane potential, respiratory chain complex activity, and ATP production — effects independent of GABA-A receptor activation. If these mitochondrial effects are operative in ME/CFS, neurosteroid bridge therapy (@spec:micronized-progesterone-bridge, Chapter @ch:epidemiology-outcomes) may improve ME/CFS partly via direct mitochondrial bioenergetic support, rather than solely through HPA calming (allopregnanolone route) or immune modulation (PIBF route).

This would be particularly relevant given that ME/CFS mitochondrial dysfunction may resist cofactor supplementation alone; a hormonal signal acting at the level of mitochondrial membrane dynamics could address a distinct node in the dysfunction network.

*Falsifiable prediction:* Seahorse extracellular flux assays (measuring PBMC oxygen consumption rate and extracellular acidification rate) will improve in ME/CFS patients on cycle-synchronized oral micronized progesterone, independently of changes in immune phenotype markers. If mitochondrial respiration does not improve while immune markers do change, the mitochondrial route is not operative.

*Limitations:* Preclinical mitochondrial effects of allopregnanolone are from non-ME/CFS models. No study has measured PBMC mitochondrial function during progesterone supplementation in ME/CFS. The effect size is expected to be modest; this is proposed as a contributing factor, not a primary mechanism.
] <spec:neurosteroid-mitochondria>

#speculation(title: [Sigma-1 Receptor at the ER--Mitochondria Interface as a Progesterone-Axis Co-Mechanism])[
*Certainty: 0.15.* Allopregnanolone and progesterone modulate sigma-1 receptor (Sig-1R) activity. Sig-1R is a ligand-activated chaperone at the mitochondria-associated endoplasmic reticulum membrane (MAM) — the interface between ER and mitochondria. Sig-1R regulates ER stress response, mitochondrial-ER calcium transfer, and mitochondrial biogenesis; its dysfunction contributes to ER stress and impaired ATP production.

If some progesterone-axis benefits in ME/CFS operate via Sig-1R at the MAM rather than via GABA-A, this would explain why the brexanolone (pure GABA-A modulator without Sig-1R activity) proof-of-concept may underestimate the efficacy of oral micronized progesterone in ME/CFS: oral progesterone reaches Sig-1R, while brexanolone does not. It also connects the neurosteroid hypothesis to the broader ER stress and mitochondrial dysfunction framework developed in this chapter and in @sec:sigma1-fluvoxamine (Chapter @ch:emerging-therapies).

*Falsifiable prediction:* Selective Sig-1R agonists (fluvoxamine at high dose, pridopidine) will produce an overlapping symptom improvement signature with progesterone bridge therapy in ME/CFS, particularly for the mitochondrial and cognitive fatigue components — while brexanolone-like pure GABA-A agonists will improve sleep/HPA symptoms but not cognitive fatigue.

*Limitations:* Sig-1R modulation by progesterone is documented in vitro; ME/CFS-specific Sig-1R function is entirely unstudied. The predicted signature overlap between Sig-1R agonists and progesterone therapy is untested.
] <spec:sigma1-neurosteroid>

#speculation(title: [TSPO as Dual Marker: Inflammation or Mitochondrial Dysfunction?])[
*Certainty: 0.40.* TSPO biology supports dual role; ME/CFS-specific evidence is lacking. Mechanistic inference from established TSPO function.

TSPO (18 kDa translocator protein, formerly peripheral benzodiazepine receptor) is located on the outer mitochondrial membrane and participates in cholesterol transport, steroidogenesis, and apoptosis \cite{VanElzakker2019TSPOReview}. While TSPO-PET is widely used as a marker of neuroinflammation (microglial activation), its mitochondrial location raises an important ambiguity for interpreting ME/CFS findings:

- *Peripheral TSPO elevation*: If whole-body TSPO PET studies in ME/CFS show increased signal in postural muscles, shoulders, neck, and bone marrow (as suggested by conference data from Michelle James, Stanford, though this study is not yet published), this could reflect (1) activated peripheral immune cells (monocytes, macrophages) in these tissues, or (2) mitochondrial dysfunction in muscles and bone marrow, or (3) both simultaneously.
- *Brain TSPO signal*: The null finding of ME/CFS TSPO-PET studies \cite{Raijmakers2021TSPOCFS} (no increased brain binding) may indicate (1) absence of central microglial activation, or (2) BBB transport confounding masking microglial activation \cite{Barzon2026TSPOBBB}, or (3) different primary pathology (peripheral mitochondrial dysfunction without central immune involvement).

TSPO's dual role complicates biomarker interpretation: TSPO-PET cannot distinguish between inflammation and mitochondrial dysfunction without additional data (plasma cytokines, flow cytometry, or mitochondrial function assays).

*Testable prediction:* In ME/CFS patients, peripheral TSPO signal (muscle, bone marrow) will correlate more strongly with mitochondrial function assays (phosphocreatine recovery, ATP production) than with immune cell activation markers (CRP, cytokines). If TSPO primarily tracks mitochondrial dysfunction in ME/CFS, mitochondrial biomarkers should predict TSPO signal better than inflammatory markers.

*Limitations:* No published whole-body TSPO PET study in ME/CFS exists. The Michelle James conference data (mentioned in briefing) is not yet peer-reviewed. TSPO's dual role is established in general biology; ME/CFS-specific validation is entirely lacking. Replication status: dual role established; ME/CFS application not tested.
] <spec:tspo-dual-role>

This metabolic dysfunction interacts bidirectionally with immune dysfunction (Chapter @ch:immune-dysfunction) and neurological abnormalities (Chapter @ch:neurological): inflammation impairs metabolism, metabolic dysfunction impairs immune cell function, and energy deficits affect brain function. Chapter @ch:integrative-models synthesizes these bidirectional interactions into comprehensive models of ME/CFS pathophysiology, examining how metabolic dysfunction participates in vicious cycles (Section @sec:unifying-mechanisms) and contributes to the multi-lock state that perpetuates chronic illness (Section @sec:synthesis).
