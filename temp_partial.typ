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

