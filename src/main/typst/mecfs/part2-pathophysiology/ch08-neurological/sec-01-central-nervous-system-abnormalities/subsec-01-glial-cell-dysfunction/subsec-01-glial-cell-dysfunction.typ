#import "../../../../shared/environments.typ": *

=== Glial Cell Dysfunction
<sec:glial>

Beyond neurons and neurotransmitters, glial cells play critical support roles in brain function. Dysfunction in these cells may contribute to the neuroinflammation mentioned in catecholamine synthesis impairment and broader CNS pathology.

==== Microglial Activation and Neuroinflammation

Microglia, the resident immune cells of the central nervous system, have emerged as key players in ME/CFS neuroinflammation. Evidence for microglial activation includes elevated markers in CSF (soluble CD14, chitotriosidase), PET imaging showing increased translocator protein (TSPO) binding in specific brain regions @Nakatomi2014neuroinflammation, correlation between neuroinflammatory markers and symptom severity, and persistence of microglial activation years after initial infection.

#warning-env(title: [Replication Status and Specificity of TSPO-PET Findings])[
The Nakatomi et al.\ 2014 study (n=9) reported 45--199% higher TSPO binding in six brain regions @Nakatomi2014neuroinflammation. However, Raijmakers et al.\ (2022) found _no_ significant differences in TSPO binding between 9 CFS patients and 9 controls using the same tracer @Raijmakers2021neuroinflammation\ ---and observed a _negative_ correlation between binding and symptom severity, opposite to Nakatomi's findings. Both studies used only 9 patients with a first-generation tracer known for poor signal-to-noise ratio.

Beyond replication failure, the interpretation of TSPO signal as "neuroinflammation" faces fundamental specificity concerns. Nutma et al.\ (2023) demonstrated that TSPO is a reliable marker of activated microglia in rodent models but _not_ in human neurodegenerative diseases @Nutma2023TSPO. In human MS lesions, only approximately 40% of TSPO signal originates from microglia/macrophages; the remainder comes from astrocytes, endothelial cells, and other cell types. TSPO elevation indicates metabolic changes and energy production, not necessarily classical inflammation. No truly TSPO-negative brain reference region exists, complicating quantification. These limitations apply to all ME/CFS TSPO-PET studies and mean that even positive findings cannot be interpreted as definitive evidence of microglial activation.
]

<obs:omdal2026-null-nfl>
A case-control study ($n=48$ per group, median 69 weeks post-infection) found no
significant differences in circulating neurofilament light (NfL) or GFAP between
long-COVID patients and recovered controls @Omdal2026LongCovidNeuroinflammation,
suggesting that neuronal injury detectable via standard blood biomarkers is not a
universal feature of long COVID. This null finding does not exclude localised
microglial activation: NfL and GFAP primarily reflect neuronal injury, whereas
PET imaging studies demonstrating elevated TSPO binding in ME/CFS detect
glial inflammation without overt neurodegeneration @Nakatomi2014neuroinflammation.
Study: (case-control, $n=96$, Scientific Reports 2026, certainty: 0.55).
Chronic microglial activation, when present, can produce sustained release of pro-inflammatory cytokines (IL-1$beta$, TNF-$alpha$, IL-6), oxidative stress through reactive oxygen species production, glutamate release contributing to excitotoxicity, disruption of synaptic pruning and plasticity, and blood-brain barrier dysfunction @Frank2024S1Priming @Nakatomi2014neuroinflammation.

*HSE as a Prospective Window into Post-Viral Neuroinflammation*

The Omdal null NfL finding contrasts with results from herpes simplex encephalitis (HSE), where CSF neurofilament light chain levels correlate with both impaired neurocognitive recovery (rho=-0.36, p=0.020) and subsequent development of anti-NMDAR autoantibodies (p=0.006) @Westman2021nfl_nmdar. Westman et al.\ propose a causative chain: acute viral brain tissue damage (measured by NFL) $arrow.r$ NMDAR antigen release $arrow.r$ autoimmunization $arrow.r$ prolonged CSF proinflammatory response $arrow.r$ persistent neurocognitive dysfunction. In HSE, 24.5% of patients develop anti-NMDAR IgG antibodies, which appear only after 3 months and are associated with dramatically impaired cognitive recovery @Westman2016nmdar_hse.

#speculation(title: [Subclinical Neuroinflammation Without Overt Neuronal Injury])[
*Certainty: 0.30.* The distinction between HSE (positive NfL) and long COVID (null NfL per Omdal) may reflect a spectrum of neuronal injury severity: HSE causes frank tissue necrosis, while lower-grade neurotropic infections or systemic inflammation may produce microglial activation without sufficient neuronal damage to elevate circulating NfL. This does not exclude the autoimmune sequence — if subclinical BBB disruption allows antigen exposure to peripheral immune cells, autoantibody generation could occur without the massive neuronal death characteristic of HSE. Temporal CSF proteomics in HSE patients has identified dynamic pathway activation and specific protein signatures (including reduced apolipoprotein A1 and complement factor I) distinguishing patients who develop NMDAR autoimmunity @Naas2023hse_proteome. Whether similar CSF proteomic signatures exist in ME/CFS patients remains untested (see Section @sec:hsv1-hse for detailed HSE evidence).

*Testable prediction:* CSF proteomic profiling in ME/CFS patients with cognitive dysfunction would reveal pathway activation signatures overlapping with the NMDAR-autoimmunity-associated profiles identified in HSE, despite normal or near-normal NfL levels. Falsified if ME/CFS CSF proteomics show no overlap with the Naas et al.\ HSE signature.
] <spec:subclinical-neuroinflammation>

*Circulating mitochondrial DNA and cognitive function.*
An emerging line of evidence connects mitochondrial dynamics to cognitive impairment independently of classical inflammatory markers. In a population-based Long COVID cohort ($n = 228$), Matits et al.\ @Matits2026cfmtDNA found that general cognition score correlated positively with relative circulating cell-free mitochondrial DNA (ccf-mtDNA): less ccf-mtDNA was associated with worse cognition. Notably, CRP showed no independent association with cognition after controlling for ccf-mtDNA, suggesting mitochondrial dynamics may be a more proximal correlate of cognitive dysfunction than systemic inflammation. The authors propose that impaired mitophagy leads to intracellular accumulation of damaged mitochondria, depriving neurons and glia of adequate energy supply while failing to generate the extracellular mtDNA signal. Effect sizes were small; causal direction is unknown. Whether this pattern extends to ME/CFS cognitive impairment---where brain fog severity shows weak correlation with peripheral inflammatory markers but strong association with central metabolic dysfunction @Nakatomi2014neuroinflammation ---is an open question. The astrocyte energy gate hypothesis (Section @sec:astrocyte-energy-gate) offers a mechanistic explanation: if astrocyte mitochondria are damaged, lactate shuttle capacity is reduced, and the resulting neuronal energy deficit manifests as cognitive dysfunction. Systemic ccf-mtDNA would correlate with this deficit because astrocyte mitochondrial health is part of the global mitochondrial quality control picture, whereas CRP reflects hepatic acute-phase response with no direct relationship to astrocyte-specific metabolism. This explanation is speculative: no study has directly measured astrocyte mitochondrial health alongside ccf-mtDNA in ME/CFS or Long COVID. An important alternative: physical fitness independently predicts both ccf-mtDNA levels (via exercise-stimulated release) and cognitive function, so the ccf-mtDNA--cognition correlation may be entirely confounded by activity level without requiring any direct mitochondrial--cognitive link. Additionally, the Matits partial correlation that eliminates CRP may reflect multicollinearity between two weakly predictive variables (both $eta^2 lt.eq 0.02$) rather than true causal proximity.

*Exosomal mtDNA as a molecular substrate for PEM kindling.*
The kindling hypothesis (Section @sec:pem-kindling) proposes that each PEM episode lowers the threshold for subsequent episodes through progressive neuronal sensitisation, but lacks a specific molecular mechanism. The Tsilioni et al.\ @Tsilioni2022exosome finding may provide one: exercise-triggered exosomal mtDNA release activates microglia (demonstrated in vitro to produce IL-1$beta$), and primed microglia have a lower activation threshold for subsequent stimuli. Each PEM episode would thus release exosomal mtDNA $arrow.r$ prime microglia $arrow.r$ lower the threshold for the next episode. This creates a molecular kindling loop: exosomal mtDNA is the kindling signal, microglial priming is the substrate, and IL-1$beta$ is the effector. Since mtDNA is also recognised by mast cell TLR9 and MRGPRX2, exercise-released mtDNA exosomes could simultaneously engage the mast cell--microglia amplification loop, creating a dual amplification circuit for each PEM episode. If ME/CFS patients release more exosomal mtDNA per exertion than Long COVID patients (consistent with the Tsilioni vs.\ Matits pattern), this would explain why some ME/CFS patients show relentless progressive deterioration through kindling while some Long COVID patients stabilise at a moderate disability level.

#hypothesis(title: [Glial Maturation Window and Pediatric Recovery])[

*Certainty: 0.45.* Adolescent ME/CFS patients may benefit from a developmental window during which active microglial remodeling can reset pathological activation states—a mechanism unavailable to adult patients whose glial maturation is complete. The certainty level reflects: (1) the Nakatomi et al.\ 2014 PET findings documenting microglial activation have not been consistently replicated; (2) the proposed mechanism extrapolates from developmental neuroscience to ME/CFS pathophysiology; (3) testable predictions can directly address these uncertainties through age-stratified neuroimaging studies.

*Background: Adolescent Microglial Maturation*

Microglia undergo dramatic functional reorganization during adolescence, performing complex developmental tasks beyond their immune surveillance role. From embryonic neuronal migration to adolescent circuit refinement, immune signaling molecules serve as a common language allowing microglia to modulate brain function in both health and disease @Dziabis2022microglia.

Three critical periods define microglial contributions to neural development: embryonic wiring, early postnatal synaptic pruning (peak near birth continuing into late-20s), and adolescent circuit refinement @Dziabis2022microglia. During adolescence specifically, microglia mediate experience-dependent synaptic pruning through complement-mediated mechanisms, with C3 binding to CR3 receptors facilitating selective synapse elimination. This process exhibits sex-specific patterns and regional variation, with particularly robust activity in prefrontal cortex and nucleus accumbens @ScienceAdvances2024adolescent @PMC11758907synapse.

Crucially, transient microglial deficiency during adolescence—but not adulthood—produces lasting cognitive impairments, identifying adolescence as a sensitive period for prefrontal microglia to act on cognitive development @ScienceAdvances2024adolescent. The developmental program requires coordinated microglial activity for proper circuit maturation, with major transitions largely complete by early 20s.

*Application to ME/CFS: The Reset Hypothesis*

If ME/CFS involves chronic microglial activation locked in a pro-inflammatory state (as suggested by Nakatomi et al.\ PET findings @Nakatomi2014neuroinflammation), then adolescent microglial remodeling may provide a natural mechanism for resolution:

    - *Active turnover*: Adolescent microglia undergo programmed replacement and phenotypic switching as part of circuit refinement, potentially eliminating pathologically activated cells

    - *Developmental override signals*: The hormonal and neurochemical milieu of adolescence (BDNF elevation, sex hormones, growth factors) provides strong pro-plasticity signals that may override inflammatory set-points

    - *Synaptic reorganization*: Pathological neuroinflammatory states often involve aberrant synaptic connections; adolescent pruning may eliminate these circuits while preserving functional connectivity

    - *Adult lock-in*: After developmental windows close ( age 25), microglia lose plasticity for wholesale phenotypic switching, becoming locked in their current activation state without the developmental cues that enable adolescent reset

This framework explains why pediatric ME/CFS shows substantially higher recovery rates (estimated 54–94% in studies of mild-moderate cases) compared to adult-onset disease where recovery is rare @Rowe2019pediatric. The critical variable is not disease duration but rather whether onset occurs before or after completion of microglial maturation.

*Testable Predictions*

This hypothesis generates specific, falsifiable predictions:

    - *Age-dependent neuroinflammation*: Longitudinal PET imaging should show declining microglial activation in recovering adolescents but persistent activation in adults with similar disease duration

    - *Transition age threshold*: Recovery rates should decline sharply around age 22–25 (completion of prefrontal maturation) rather than showing gradual age-related decline

    - *Biomarker trajectories*: CSF inflammatory markers (sCD14, chitotriosidase) should normalize in recovering adolescents but remain elevated in non-recovering adults

    - *Microglial turnover markers*: Adolescent patients should show elevated markers of microglial turnover (CSF1R expression, fractalkine signaling) compared to adults

    - *Severity interactions*: Hypothesis predicts age matters less if microglial activation is mild (can resolve spontaneously) but becomes critical if activation is severe (requires active remodeling to clear)

*Treatment Implications*

If adolescent microglial plasticity enables recovery, then therapeutically inducing similar plasticity in adults might improve outcomes:

    - *CSF-1R inhibitors*: Drugs like PLX5622 or pexidartinib force microglial turnover by depleting existing populations and promoting repopulation from progenitors. This mimics the natural turnover occurring during adolescence, potentially resetting activation states @MDPI2024microglial.

    - *Fasting-mimicking diets*: Prolonged fasting promotes microglial autophagy and phenotypic switching, potentially enabling transition from pro-inflammatory to surveillance phenotypes without complete depletion

    - *BDNF enhancement*: Brain-derived neurotrophic factor drives developmental plasticity; strategies to boost BDNF (exercise within energy envelope, ketogenic diet, certain medications) may partially reopen plasticity windows

    - *Timing considerations*: Interventions targeting microglial reset may be most effective in younger adults (under 30) where some residual developmental plasticity remains, with diminishing returns in older patients

*Integration with Broader ME/CFS Pathophysiology*

This hypothesis complements rather than contradicts other mechanistic proposals. Microglial activation may be downstream of initial triggers (viral infection, autoantibodies, autonomic dysfunction) while still representing a critical perpetuating factor. The developmental window hypothesis specifically addresses _why recovery patterns differ by age_ rather than explaining disease initiation.

The glial maturation window may interact synergistically with other proposed pediatric advantages: immune memory pruning (Hypothesis @hyp:immune-pruning, if present), greater HSC regenerative capacity, higher baseline recovery capital (Speculation @spec:recovery-capital), and incomplete epigenetic aging.

*Limitations and Uncertainties*

Several important caveats apply:

    - The Nakatomi et al.\ microglial activation findings have not been consistently replicated; if microglial activation is not a universal ME/CFS feature, this hypothesis applies only to a subset

    - The proposed mechanism assumes glial maturation windows close around age 25, but individual variation exists; some adults may retain plasticity longer

    - Pediatric recovery may reflect multiple mechanisms simultaneously; isolating the specific contribution of microglial remodeling requires longitudinal studies with neuroimaging

    - CSF-1R inhibitor strategies carry significant risks (meningitis, visual changes) and remain experimental; safety in ME/CFS populations is unknown

*Research Priorities*

To test this hypothesis rigorously:

    - *Age-stratified longitudinal neuroimaging*: Serial PET scans in adolescent vs adult ME/CFS tracking microglial activation trajectories over 2–5 years

    - *CSF biomarker studies*: Compare inflammatory markers and microglial turnover signatures across age groups and recovery status

    - *Preclinical models*: Post-viral fatigue models in adolescent vs adult mice to test whether developmental microglia enable recovery

    - *Treatment trials*: Small pilot studies of CSF-1R modulation in carefully selected adult ME/CFS patients with documented microglial activation

This hypothesis provides a mechanistic framework for understanding one component of the pediatric recovery advantage while suggesting potential therapeutic strategies for adult patients.

] <hyp:glial-maturation-window>

==== Brainstem Glial Senescence and Sympathetic Overactivity
<sec:brainstem-glial-senescence>

The preceding glial maturation window hypothesis addresses age-dependent recovery. A complementary question is whether glial senescence in brainstem autonomic nuclei directly drives the sympathetic overactivity documented in ME/CFS.

Balasubramanian et al.\ (2021) demonstrated in a mouse aging model that brainstem glia show dramatic age-related senescence: p16#super[INK4a] expression increased 32--90-fold in aged versus young brainstem tissue, accompanied by elevated NF-$kappa$B, SASP cytokines (IL-1$beta$, IL-6, TNF-$alpha$), and elevated serum norepinephrine @Balasubramanian2021glialSenescence. The brainstem houses the locus coeruleus (LC, the primary source of brain norepinephrine) and the dorsal motor vagal nucleus (dmVN, parasympathetic outflow to viscera). Senescent glia surrounding these nuclei would produce a local inflammatory milieu that could impair catecholamine reuptake, alter neuronal firing patterns, and shift the sympathovagal balance toward sustained sympathetic dominance.

In ME/CFS, this mechanism connects several documented findings:

+ *CSF catecholamine deficiency* (NIH deep phenotyping study @walitt2024deep): senescent brainstem glia may impair catecholamine synthesis (tyrosine hydroxylase requires non-inflammatory microenvironment) or accelerate catecholamine degradation, explaining the paradox of sympathetic overactivity with low CSF catecholamines.
+ *Reduced HRV* (Chapter @ch:cardiovascular Section @sec:hrv): brainstem glial senescence affecting dmVN would directly impair parasympathetic outflow to the heart.
+ *Cerebral hypoperfusion*: senescent brainstem glia disrupting autonomic vasomotor control centres in the rostral ventrolateral medulla would impair cerebral blood flow autoregulation.

#speculation(title: [Brainstem Glial Senescence as a Self-Reinforcing Autonomic Trap])[
*Certainty: 0.30.* Senescent glia in brainstem autonomic nuclei produce SASP cytokines that impair local catecholamine signalling, increasing sympathetic tone and reducing parasympathetic output @Balasubramanian2021glialSenescence. Sustained sympathetic overdrive in turn generates systemic ROS and inflammatory mediators that further promote glial senescence via blood-brain barrier penetration---creating a feedback loop. This mechanism would explain why autonomic dysfunction in ME/CFS is structurally fixed (HRV does not normalise under slow breathing @Ryabkova2024dysautonomia) and worsens with disease duration.

*Testable predictions:* (a) PET-TSPO imaging should show higher tracer uptake in brainstem regions (pons, medulla) in ME/CFS patients with more severe autonomic dysfunction, independent of supratentorial neuroinflammation. (b) CSF p16#super[INK4a] levels should correlate inversely with HRV parameters. (c) Senolytic compounds (fisetin, dasatinib+quercetin) should improve both autonomic metrics and CSF catecholamine levels if brainstem senescence is load-bearing.

*Limitation:* Evidence comes from a mouse aging study ($n = 4$--$6$ per group) @Balasubramanian2021glialSenescence; human brainstem senescence markers have not been measured in ME/CFS. TSPO-PET has poor specificity for senescence versus activation (see limitation box in Section @sec:glial above). The causal direction (senescence $arrow.r$ sympathetic overdrive versus reverse) cannot be determined from cross-sectional data. Not yet replicated.
] <spec:brainstem-glial-senescence>

==== Astrocyte Abnormalities and the Astrocyte Energy Gate
<sec:astrocyte-energy-gate>

Astrocytes perform essential functions including neurotransmitter uptake and recycling, blood-brain barrier maintenance, metabolic support for neurons, synaptic modulation, and ion homeostasis. Astrocyte dysfunction in ME/CFS may contribute to impaired glutamate clearance and excitotoxicity, reduced metabolic support for neurons, blood-brain barrier compromise, and abnormal synaptic transmission. Elevated GFAP (glial fibrillary acidic protein) in some ME/CFS patients suggests astrocyte reactivity, though findings have been inconsistent.

Beyond these recognized roles, astrocytes occupy a uniquely critical position in brain energy metabolism that may constitute a central vulnerability in ME/CFS. The following hypothesis develops this metabolic dimension in detail.

*The Astrocyte-Neuron Lactate Shuttle: Normal Physiology*

The brain consumes 20–25% of the body's glucose despite comprising only 2% of body mass @Belanger2011. A substantial fraction of this energy reaches neurons not as glucose directly, but via the *astrocyte-neuron lactate shuttle* (ANLS), first described by Pellerin and Magistretti @Pellerin1994. In this system, glutamate released during synaptic transmission is taken up by astrocytes via excitatory amino acid transporters (EAATs), triggering astrocytic glucose uptake through GLUT1 transporters and subsequent glycolysis. Astrocytes convert glucose to pyruvate and then to lactate via lactate dehydrogenase A (LDHA), which preferentially catalyzes the pyruvate-to-lactate direction. This lactate is then exported from astrocytes through monocarboxylate transporter 4 (MCT4, a low-affinity, high-capacity exporter) and imported into neurons through MCT2 (a high-affinity importer) @Pierre2005. Within neurons, LDHB converts lactate back to pyruvate for oxidative phosphorylation in mitochondria.

This architecture elegantly couples neuronal energy supply to neuronal activity: when a synapse fires, the glutamate released simultaneously signals the local astrocyte to increase energy delivery @Magistretti2018. Lactate provides an estimated 30–50% of neuronal ATP under physiological conditions @Magistretti2018, and this fraction likely increases during periods of intense neural activity when neurons' own glycolytic capacity is insufficient.

Several features make this shuttle critical rather than merely supplementary:

    - *Activity coupling:* The glutamate-triggered mechanism ensures energy supply scales with demand at the single-synapse level
    - *Metabolic specialization:* Neurons preferentially express LDHB (favoring lactate $\to$ pyruvate) while astrocytes express LDHA (favoring pyruvate $\to$ lactate), creating directional metabolic flow @Kim2025ANLS
    - *Antioxidant protection:* By outsourcing glycolysis to astrocytes, neurons can direct more glucose through the pentose phosphate pathway for glutathione regeneration, protecting against oxidative damage
    - *Signaling function:* Lactate also acts as a signaling molecule via the hydroxycarboxylic acid receptor 1 (HCAR1/GPR81), modulating neuronal excitability and synaptic plasticity @Magistretti2018

*Important Nuance: Neuronal Metabolic Flexibility*

The classical ANLS model has been refined by recent evidence demonstrating that neurons possess greater metabolic flexibility than originally assumed. Single-cell RNA sequencing studies reveal that neurons express both LDHA and LDHB, not exclusively LDHB @Kim2025ANLS. Neurons can directly take up and oxidize glucose, particularly during high-demand states. LDHB-deficient neurons maintain stable energy metabolism under physiological glucose conditions, suggesting compensatory pathways exist.

However, this flexibility has limits. During high-frequency neural activity—precisely the conditions of cognitive exertion—direct neuronal glucose oxidation may prove insufficient, and astrocyte-derived lactate becomes the critical marginal fuel source. This distinction between _basal_ sufficiency and _demand-responsive_ insufficiency is central to the hypothesis that follows.

#speculation(title: [Astrocyte Energy Gate])[
*Certainty: 0.35.* We hypothesize that dysfunction in the astrocyte-neuron lactate shuttle creates a *metabolic bottleneck*—an “energy gate”—that produces CNS-specific energy failure in ME/CFS while peripheral tissues with direct glucose access remain unaffected.

*Three Candidate Mechanisms*

The energy gate may fail at any of three nodes, singly or in combination:

    - *Astrocyte glucose uptake impairment (GLUT1 dysfunction):* Reduced GLUT1 expression or function on astrocytes limits the raw substrate entering the shuttle. GLUT1 deficiency syndrome demonstrates that impaired astrocytic glucose transport causes seizures, cognitive impairment, and brain hypometabolism—features that partially overlap with ME/CFS neurological symptoms. Neuroinflammatory mediators (IL-1$beta$, TNF-$alpha$) documented in ME/CFS can downregulate GLUT1 expression.

    - *Lactate production impairment (glycolytic defects):* Reactive astrogliosis—documented via elevated GFAP in ME/CFS—involves metabolic reprogramming that may paradoxically impair effective lactate delivery. While reactive astrocytes initially upregulate glycolysis, chronic neuroinflammation shifts astrocyte metabolism toward a state where mitochondrial dysfunction reduces overall metabolic efficiency. Inflammatory cytokines can alter pyruvate dehydrogenase kinase (PDK) activity, disrupting the glycolysis/oxidative phosphorylation balance within astrocytes themselves.

    - *Lactate transport impairment (MCT dysfunction):* Downregulation of MCT4 (astrocyte export) or MCT2 (neuronal import) directly restricts lactate flow. This mechanism has the strongest precedent in other neurological diseases: MCT1/MCT4 downregulation reduces neuronal lactate supply by approximately 60% @Kim2025ANLS. In Alzheimer's disease, decreased expression of MCT1, MCT2, and MCT4 is documented. In amyotrophic lateral sclerosis, reduced MCT1 in oligodendrocytes precedes motor neuron degeneration. In temporal lobe epilepsy, MCT2 redistribution and MCT4 reduction are observed in epileptic foci.

*Why This Creates Selective Dysfunction*

The energy gate hypothesis explains why CNS function fails while peripheral tissues remain functional:

    - *CNS vulnerability:* Neurons depend on the ANLS for a substantial portion of their activity-dependent energy supply. No other cell type in the body has this intermediary requirement for its primary fuel.
    - *Peripheral independence:* Skeletal muscle, cardiac muscle, and peripheral tissues express GLUT4 (insulin-responsive) and can directly oxidize glucose without astrocytic intermediation. Hair follicles operate autonomous local Cori cycles, recycling lactate within the follicular unit without CNS coordination.
    - *Demand-dependence:* The ANLS is most critical during cognitive exertion (when glutamate release surges trigger proportional lactate demand). This explains why cognitive symptoms worsen with mental effort while resting cognition may remain closer to normal—a hallmark of ME/CFS “brain fog.”

This mechanism connects directly to the selective energy dysfunction hypothesis (Section @sec:selective-dysfunction), which predicts that high CNS-dependency ($alpha$) and high demand-responsiveness ($rho$) processes should be most impaired. The ANLS provides the _specific molecular mechanism_ through which this selective vulnerability operates.

*Certainty Assessment*

This speculation integrates well-established neuroscience (ANLS physiology: high certainty) with speculative application to ME/CFS (low-to-moderate certainty). No study has directly measured ANLS flux, MCT expression, or astrocyte-specific glycolytic rates in ME/CFS patients. The hypothesis is graded at *certainty 0.35*: mechanistically plausible, consistent with indirect evidence, but requiring direct experimental validation.
] <spec:astrocyte-energy-gate>

*Supporting Evidence: Brain Lactate Elevation*

While no study has directly assayed ANLS function in ME/CFS, magnetic resonance spectroscopy (MRS) studies provide indirect evidence consistent with impaired brain energy metabolism:

    - *7T MRS (2025):* Godlewska et al. @Godlewska2025MRS found elevated lactate in the pregenual anterior cingulate cortex (pgACC: 1.52 vs.\ 1.22 mM, $p = 0.003$) and dorsal ACC (d ACC) of ME/CFS patients (n=24) compared to healthy controls (n=24), using ultra-high-field 7 Tesla MRS. Notably, ME/CFS and Long COVID patients showed _different_ neurochemical profiles despite similar clinical presentations.

    - *Whole-brain MRS (2020):* Mueller et al. @Mueller2020MRS documented elevated lactate-to-creatine ratios in the right insula, thalamus, and cerebellum (n=15 ME/CFS vs.\ n=15 controls), with brain temperature increases correlated with lactate elevations—suggesting neuroinflammation drives metabolic shifts.

    - *Mitochondrial review (2025):* Syed et al. @Syed2025 synthesize evidence of elevated CSF lactate, impaired ATP synthesis, and increased glycolytic activity in ME/CFS, consistent with oxidative stress and conditions favoring anaerobic metabolism.

#warning-env(title: [Interpreting Elevated Brain Lactate])[
Elevated brain lactate in ME/CFS is consistent with the energy gate hypothesis but does not uniquely support it. At least three interpretations are possible:

    - *ANLS dysfunction:* Lactate accumulates in astrocytes because it cannot be efficiently exported to or utilized by neurons (supports the energy gate hypothesis)
    - *Mitochondrial dysfunction:* Neuronal mitochondria cannot oxidize lactate efficiently, causing backpressure (supports a downstream mitochondrial hypothesis)
    - *Anaerobic shift:* Increased glycolysis due to hypoperfusion or oxygen limitation produces excess lactate (supports a vascular hypothesis)

These mechanisms are not mutually exclusive and may operate simultaneously. Distinguishing between them requires studies that measure not just lactate levels but lactate _flux_ between cellular compartments—technically challenging but feasible with advanced #super[13]C-MRS techniques.
]

*Testable Predictions*

The astrocyte energy gate hypothesis generates specific, falsifiable predictions that distinguish it from alternative explanations:

    - *CSF lactate gradient:* If astrocytes produce lactate but neurons cannot utilize it, the CSF lactate/blood lactate ratio should be elevated in ME/CFS (astrocyte-derived lactate accumulating in extracellular space). In mitochondrial disorders affecting the CNS, a CSF/blood lactate ratio $> 0.91$ indicates central origin @Syed2025.  

    _Prediction:_ ME/CFS patients will show CSF/blood lactate ratio $> 0.91$, distinguishing CNS-origin lactate from peripheral sources.

    - *MCT expression profiling:* Post-mortem or biopsy studies should reveal reduced MCT2 (neuronal) and/or MCT4 (astrocyte) expression in ME/CFS brain tissue, particularly in regions showing functional deficits (prefrontal cortex, anterior cingulate).  

    _Prediction:_ MCT2/MCT4 expression reduced $gt.eq$30% vs.\ matched controls.

    - *Astrocyte-specific metabolomics:* Single-cell or spatial transcriptomics of ME/CFS brain tissue should show altered expression of glycolytic enzymes (hexokinase, phosphofructokinase, LDHA) and glucose transporters (GLUT1) in astrocytes specifically.  

    _Prediction:_ Astrocyte glycolytic gene expression altered while neuronal oxidative genes remain intact.

    - *Exogenous lactate challenge:* If the bottleneck is at the glucose $\to$ lactate step (mechanisms 1 or 2 above), then providing exogenous lactate should partially bypass the gate and improve cognitive function. If the bottleneck is at MCT transport (mechanism 3), exogenous lactate should not help.  

    _Prediction:_ IV sodium lactate infusion during cognitive testing will improve performance in a subgroup of ME/CFS patients.

    - *Ketone body bypass:* Ketone bodies ($beta$-hydroxybutyrate, acetoacetate) enter neurons via MCT2 and are metabolized directly in neuronal mitochondria, bypassing the astrocyte glycolysis step entirely @Jang2024Ketone. If the energy gate is at the astrocyte level, ketones should preferentially benefit CNS symptoms.  

    _Prediction:_ Ketogenic diet or exogenous ketone supplementation will improve cognitive symptoms disproportionately to peripheral fatigue symptoms.

    - *Activity-dependent worsening:* Since the ANLS is most critical during high neural activity (when glutamate-triggered demand surges), the energy gate should cause greater deficits during cognitive exertion than at rest.  

    _Prediction:_ The difference between resting and task-evoked brain lactate (measured by functional MRS) will be larger in ME/CFS than controls—reflecting both increased demand signaling and impaired supply response.

*Treatment Implications*

The energy gate framework suggests several therapeutic strategies, ordered by plausibility and feasibility:

    - *Ketogenic diet or exogenous ketones:* By providing $beta$-hydroxybutyrate directly to neurons via MCT2, this approach bypasses the astrocyte glycolysis step entirely. The ketogenic diet has established neuroprotective effects in epilepsy (where MCT dysfunction is documented) and emerging evidence in psychiatric disorders associated with brain energy dysfunction @Jang2024Ketone. _This represents the most immediately testable intervention._

    - *Exogenous lactate supplementation:* Sodium lactate infusion or oral lactate has shown cognitive benefits in Alzheimer's disease models by restoring hippocampal and CSF lactate concentrations. In ME/CFS, this could bypass impaired astrocyte glycolysis (mechanisms 1–2) but would not help if MCT2 transport is the bottleneck (mechanism 3).

    - *MCT upregulation:* Exercise and certain pharmacological agents can upregulate MCT expression. However, exercise intolerance in ME/CFS limits this approach. Pharmacological MCT modulators remain experimental.

    - *Anti-neuroinflammatory strategies:* If chronic neuroinflammation drives astrocyte metabolic reprogramming and MCT downregulation, targeting neuroinflammation at its source may restore ANLS function. Low-dose naltrexone (LDN), which modulates microglial activation, could theoretically improve astrocyte metabolic function through reduced neuroinflammatory signaling.

    - *Astrocyte-targeted delivery:* Emerging drug delivery technologies using astrocyte-specific targeting (e.g., nanoparticles with GFAP-binding peptides) could deliver metabolic support directly to astrocytes, enhancing glycolytic capacity or MCT expression without systemic effects.

*Limitations and Alternative Explanations*

Several important caveats apply to this hypothesis:

    - *No direct evidence in ME/CFS:* No study has measured ANLS flux, MCT expression, or astrocyte-specific glycolytic rates in ME/CFS patients. The hypothesis rests entirely on indirect evidence (elevated brain lactate, documented neuroinflammation) and analogy to other neurological conditions.

    - *Elevated lactate is ambiguous:* As noted above, elevated brain lactate has at least three interpretations. The ANLS dysfunction interpretation is not uniquely supported by current data.

    - *The ANLS itself is debated:* While the ANLS is well-established, its quantitative contribution remains contested. Some evidence suggests neurons can sustain activity through direct glucose oxidation alone, at least under non-demanding conditions @Kim2025ANLS. The hypothesis is strongest for high-demand cognitive states.

    - *Downstream mitochondrial dysfunction:* Even if lactate reaches neurons normally, impaired neuronal mitochondria (a well-documented finding in ME/CFS @Syed2025) would produce similar symptoms. The energy gate and mitochondrial hypotheses are not mutually exclusive but have different treatment implications.

    - *GLUT1 paradox:* Recent studies show that astrocyte-specific GLUT1 reduction can _paradoxically improve_ brain glucose metabolism, suggesting compensatory mechanisms may complicate predictions based on simple GLUT1 downregulation.

    - *Small sample sizes:* The MRS studies supporting brain lactate elevation in ME/CFS have samples of n=15–24, which limits statistical power and generalizability. Larger, multi-site replication studies are needed.

For the relationship between the astrocyte energy gate and the broader selective energy dysfunction framework, including formal mathematical treatment and additional predictions, see Section @sec:selective-dysfunction, specifically the astrocyte energy gate sub-hypothesis (@spec:astrocyte-gate).

==== Astrocytes as the Brain's T3 Factory: A Dual Vulnerability
<sec:astrocyte-t3-factory>

The astrocyte energy gate hypothesis above addresses astrocytes' role as metabolic intermediaries for neurons. However, astrocytes serve a second critical function that has received less attention in the ME/CFS context: they are the brain's primary producers of active thyroid hormone (T3).

Type 2 deiodinase (DIO2)---the enzyme that converts inactive T4 to active T3---is expressed approximately 50-fold higher in astrocytes than in any other brain cell type. In the normal paracrine signaling model, T4 crosses the blood-brain barrier via OATP1C1 transporters, enters astrocyte end-feet, is converted to T3 by DIO2, and is then released into the extracellular space for uptake by neurons via MCT8 transporters @Bianco2018DIO2. Approximately 50% of adult brain T3 is produced locally through this astrocytic pathway; the remainder comes from circulating T3.

#speculation(title: [Astrocyte Dual-Failure: Energy Gate and T3 Factory Collapse])[
*Certainty: 0.35.* Astrocyte dysfunction in ME/CFS may simultaneously impair both the lactate shuttle (energy gate, Speculation @spec:astrocyte-energy-gate) and local T3 production. If reactive, metabolically stressed astrocytes have reduced DIO2 activity, the brain experiences a *hidden hypothyroidism* that is invisible to all blood tests---because it arises from impaired local conversion rather than reduced circulating hormone levels.

This creates a convergent failure: neurons receive inadequate metabolic fuel (impaired lactate shuttle) AND inadequate trophic/plasticity signaling (impaired T3 supply) from the same dysfunctional cell type. The consequences of reduced brain T3 compound the energy deficit: T3 drives mitochondrial biogenesis via PGC-1$alpha$, promotes oligodendrocyte differentiation for myelin maintenance, upregulates BDNF for synaptic plasticity, and modulates microglial phenotype toward anti-inflammatory surveillance states (Section @sec:thyroid-neuroplasticity). Without adequate astrocytic T3 production, all of these processes are impaired simultaneously.

Importantly, this local brain T3 deficit is independent of and additive with the systemic Low T3 Syndrome documented in ME/CFS (Section @sec:thyroid): cytokine-mediated DIO2 suppression reduces both circulating T3 (via liver/kidney DIO1) and brain T3 (via astrocytic DIO2). The DIO2 Thr92Ala polymorphism (present in ~50% of the population), which further impairs astrocytic DIO2 function, would exacerbate this hidden brain hypothyroidism in carriers.

*Testable predictions*

  - ME/CFS patients should show reduced brain T3 relative to serum T3 if measured (requires post-mortem tissue or advanced imaging). The brain/serum T3 ratio should be lower in ME/CFS than in controls.
  - DIO2 Thr92Ala carriers with ME/CFS should have more severe cognitive dysfunction than non-carriers at equivalent serum T3 levels, because their astrocytic T3 production is doubly compromised (genetic + inflammatory).
  - Interventions that rescue astrocyte function (e.g., reduced GFAP reactivity, improved astrocyte metabolism) should simultaneously improve both brain energy delivery (cognitive endurance under load) AND markers of brain T3 sufficiency (BDNF levels, oligodendrocyte-related myelin markers).

*Limitations*

  - No study has directly measured astrocytic DIO2 activity in ME/CFS brain tissue.
  - The "dual failure" framing is a narrative device based on co-localization of two functions in one cell type, not an independently testable claim beyond the two individual hypotheses (energy gate failure + DIO2 impairment). The simpler explanation---that stressed astrocytes lose multiple functions---generates the same predictions. Independent impairment of each pathway cannot be excluded.
  - Brain T3 measurement in living patients is not currently feasible with standard clinical tools.
] <spec:astrocyte-dual-failure>

==== Oligodendrocyte Function

Oligodendrocytes produce the myelin sheaths essential for rapid nerve conduction. Potential abnormalities include demyelination contributing to white matter hyperintensities, impaired remyelination capacity, oxidative damage to oligodendrocytes, and disrupted axon-glial signaling.

#open-question(title: [Oligodendrocyte Contribution to White Matter Changes])[
Do the white matter changes observed on MRI in ME/CFS patients reflect oligodendrocyte dysfunction? No studies have directly examined oligodendrocyte pathology in ME/CFS, and the mechanisms linking white matter hyperintensities to oligodendrocyte function remain to be elucidated.
] <q:oligodendrocyte>

==== Post-Viral CNS Reprogramming

The preceding sections document microglial activation, astrocyte dysfunction, and neuroinflammatory cascades in ME/CFS. A critical question is why these states persist long after the triggering infection resolves. Emerging evidence from trained immunity research suggests that a single viral infection can permanently alter glial cell function through epigenetic mechanisms.

#speculation(title: [Post-Viral CNS Reprogramming Hypothesis])[
*Certainty: 0.40.*

Viral infection causes persistent epigenetic reprogramming of astrocytes and microglia, creating a lasting shift in CNS metabolism that persists long after viral clearance. This mechanism—analogous to “trained immunity” in peripheral innate immune cells—may explain why ME/CFS becomes chronic following acute infection.

*Trained immunity and epigenetic memory.*
Trained immunity refers to the capacity of innate immune cells to develop long-lasting functional memory following initial stimulation @Humer2025TrainedImmunityMECFS. Unlike adaptive immune memory mediated by lymphocyte clonal expansion, trained immunity operates through persistent epigenetic modifications—particularly histone marks such as H3K4me1 and H3K27ac at inflammatory gene promoters—that prime cells for enhanced responses to subsequent stimuli. Humer et al.\ advocate trained immunity as a contributing factor to ME/CFS pathogenesis, proposing that post-infectious epigenetic reprogramming of innate immune cells produces a hyperresponsive phenotype that sustains chronic inflammation @Humer2025TrainedImmunityMECFS.

*Microglial epigenetic reprogramming.*
Wendeln et al.\ demonstrated in a landmark _Nature_ study that peripheral inflammatory stimuli induce long-lasting epigenetic reprogramming of brain microglia @Wendeln2018InnateImmuneMemoryBrain. Trained microglia develop enhanced H3K4me1 marks at inflammatory gene loci that persist for months after the initial stimulus and exacerbate subsequent neurological pathology. This immune memory operates through metabolic reprogramming: activated microglia shift from oxidative phosphorylation to aerobic glycolysis, and this metabolic phenotype becomes epigenetically stabilized @Nirakis2025MetabolicRegulationMicroglial. The persistence of these marks means that a single viral infection could establish a “new normal” of microglial function that outlasts the infection by years.

*Viral reprogramming of glial metabolism.*
Rodrigues et al.\ demonstrate that neurotropic viruses—including SARS-CoV-2, HIV-1, and Zika virus—directly infect astrocytes and microglia, causing metabolic shifts from oxidative phosphorylation to glycolysis with consequent NLRP3 inflammasome activation @Rodrigues2025ViralReprogrammingGlialMetabolism. This metabolic reprogramming is not merely a transient response to active infection; it persists because the glycolytic shift triggers epigenetic modifications that stabilize the pro-inflammatory phenotype. The result is a self-sustaining cycle: viral infection $arrow.r$ metabolic shift $arrow.r$ epigenetic stabilization $arrow.r$ chronic neuroinflammation.

This mechanism has direct relevance to the astrocyte energy gate hypothesis (Section @sec:astrocyte-energy-gate): if viral infection reprograms astrocytes to favor glycolysis over oxidative phosphorylation, lactate production via the astrocyte-neuron lactate shuttle may be disrupted. Astrocytes locked in a glycolytic-inflammatory phenotype may consume glucose for their own inflammatory signaling rather than converting it to lactate for neuronal use.

*Broader epigenetic landscape in ME/CFS.*
Apostolou and Ros\'en document over 12,000 altered CpG methylation sites in ME/CFS patients, with particular enrichment at immune and metabolic gene loci @Apostolou2024EpigeneticReprogrammingMECFS. They propose that latent herpesviruses (particularly EBV) employ long-term epigenetic strategies that may permanently alter host cell function. Complementing this, Iu et al.\ demonstrate that CD8#super[+] T cells in ME/CFS exhibit epigenetic predisposition toward terminal exhaustion, with exhaustion markers upregulated following exercise challenge @iu2024tcell_exhaustion—linking immune reprogramming directly to post-exertional malaise.

*Testable predictions.*

    - Post-infectious ME/CFS patients should show distinct microglial epigenetic signatures (elevated H3K4me1/H3K27ac at inflammatory loci) compared to gradual-onset patients, detectable via CSF-derived microglia or post-mortem analysis
    - Astrocyte metabolic profiles (measurable via MRS glutamate/glutamine ratios) should differ between post-viral and non-viral ME/CFS subtypes
    - Epigenetic modifiers targeting trained immunity (e.g., histone methyltransferase inhibitors, mTOR pathway modulators) should preferentially benefit post-infectious ME/CFS
    - Early antiviral or anti-inflammatory intervention during acute infection should reduce ME/CFS incidence by preventing epigenetic stabilization
    - CSF cytokine profiles should show trained immunity signatures (enhanced IL-6, TNF-$alpha$ responses to ex vivo stimulation) in post-infectious but not gradual-onset patients

*Treatment implications.*
If post-viral CNS reprogramming drives chronic ME/CFS, therapeutic strategies should target epigenetic reversal rather than symptomatic suppression: (1) epigenetic modifiers that can cross the BBB and reset microglial histone marks; (2) metabolic interventions that shift astrocytes back from glycolysis to oxidative phosphorylation; (3) microglial depletion and repopulation via CSF-1R inhibition (see Section @hyp:glial-maturation-window), which may generate microglia without the trained immunity epigenetic marks; (4) early intervention protocols during acute viral illness to prevent epigenetic stabilization.

*Limitations.*
This hypothesis has certainty 0.40. No study has directly measured trained immunity epigenetic marks in ME/CFS patient microglia. The evidence is synthesized from trained immunity research in neurodegenerative diseases @Wendeln2018InnateImmuneMemoryBrain @Zhang2025TrainedImmunityNeurological, viral glial reprogramming @Rodrigues2025ViralReprogrammingGlialMetabolism, and ME/CFS epigenetic profiling @Apostolou2024EpigeneticReprogrammingMECFS. The mechanism may not explain gradual-onset ME/CFS without clear viral trigger. Individual variation in epigenetic susceptibility and viral tropism could produce heterogeneous responses.
] <spec:post-viral-cns-reprogramming>

#speculation(title: [Non-Viral Tick-Borne Pathogens May Drive Comparable Glial and Immune Glycolytic Reprogramming])[
*Certainty: 0.25.*

The post-viral CNS reprogramming hypothesis above is framed around neurotropic _viruses_. An emerging literature suggests the mechanism may not be virus-specific: non-viral tick-borne pathogens implicated in ME/CFS-like illness — _Borrelia_, _Bartonella_, and _Babesia_ (Chapter @ch:immune-dysfunction, @hyp:tickborne-glycolytic-reprogramming) — also drive glycolytic reprogramming of host cells. If they do so in glia, the same self-sustaining cycle (metabolic shift $arrow.r$ epigenetic stabilisation $arrow.r$ chronic neuroinflammation) could apply.

The peripheral evidence is suggestive but glia-specific data are absent. _Borrelia burgdorferi_ induces a persistent, trained-immunity glycolytic phenotype with mitochondrial downregulation in macrophages, reversible in vivo by glycolysis inhibition @Barriales2021BorreliaMacrophage — a mechanism directly analogous to the microglial trained-immunity reprogramming documented for peripheral inflammatory stimuli @Wendeln2018InnateImmuneMemoryBrain @Nirakis2025MetabolicRegulationMicroglial. _Bartonella henselae_ stabilises HIF-1$alpha$ and depletes host-cell ATP @Kempf2005BartonellaHIF1, the same glycolytic switch invoked for viral glial reprogramming @Rodrigues2025ViralReprogrammingGlialMetabolism. Because these pathogens (particularly _Bartonella_, which is neurotropic and can cause encephalopathy) can reach the CNS, extension of the trained-immunity model from peripheral macrophages to microglia and astrocytes is plausible.

*Falsifiable prediction.* Microglia or astrocytes exposed to _Borrelia_ or _Bartonella_ antigens in vitro will show a sustained OXPHOS-to-glycolysis shift (elevated LDHA/lactate, downregulated mitochondrial transcripts, H3K4me1/H3K27ac deposition at inflammatory loci) persisting after antigen removal, comparable to the viral glial reprogramming of @Rodrigues2025ViralReprogrammingGlialMetabolism. Falsified if bacterial/protozoal antigen exposure produces only transient metabolic change with no epigenetic stabilisation in glia.

*Limitations.* No study has measured glial glycolytic reprogramming for any tick-borne pathogen; all evidence is from peripheral macrophages/monocytes or non-CNS tissue, and no ME/CFS glial data exist. Whether these pathogens reprogram glia specifically — as opposed to peripheral immune cells — is untested. This is a _compound_ speculation: it multiplies the already-speculative peripheral tick-borne hypothesis (@hyp:tickborne-glycolytic-reprogramming, cert 0.35) by an untested glial extrapolation, hence the low certainty (0.25).

*Consequence:* If tick-borne bacteria and protozoa reprogram glia the way viruses appear to, then the "post-viral" framing of chronic neuroinflammation is too narrow — a broader "post-infectious glial reprogramming" model would predict that patients with tick-borne triggers could benefit from the same metabolic/epigenetic-reversal strategies proposed for post-viral ME/CFS, rather than antimicrobials alone; this remains an untested research direction.
] <spec:tickborne-glial-reprogramming>

#speculation(title: [Borrelia-Trained Immune Glycolysis May Reverse the Astrocyte–Neuron Lactate Gradient])[
*Certainty: 0.20.* (Origin: brainstorm.) This links two mechanisms the paper documents separately. Borrelia-trained macrophages sustain elevated glycolytic lactate output with mitochondrial downregulation, persisting after the initial stimulus @Barriales2021BorreliaMacrophage. The astrocyte–neuron lactate shuttle (ANLS, @sec:astrocyte-energy-gate) depends on a concentration gradient driving lactate from astrocytes to neurons. If widely distributed trained-immune cells (including perivascular macrophages) chronically raise systemic lactate, the resulting serum-to-brain gradient could _reduce_ or reverse net lactate delivery to neurons — depriving them of a fuel that normally supplies 30–50% of neuronal ATP, and doing so in a way that is distinct from (and could compound) the failed-Warburg deficit already described in ME/CFS immune cells @Mandarano2020.

*Falsifiable prediction.* In a tick-borne-triggered ME/CFS subset, resting venous lactate and the arterial-to-venous lactate difference will be elevated versus non-tick-borne ME/CFS, and the CSF-to-serum lactate ratio (normally ~0.6–0.8) will be reduced toward ~0.4, indicating reduced net brain lactate export/import balance. Falsified if none of these three lactate measures (resting venous lactate, arterial-to-venous difference, CSF-to-serum ratio) differ by tick-exposure history.

*Limitations.* Entirely inferential: no study has measured immune-derived lactate flux, ANLS function, or lactate gradients in tick-borne-triggered ME/CFS. The magnitude of systemic lactate contributed by trained-immune cells is unquantified and may be negligible; the direction-of-effect contradiction for Borrelia host glycolysis (Chapter @ch:immune-dysfunction, @hyp:tickborne-glycolytic-reprogramming) applies here too. Lower certainty (0.20) than either parent mechanism.

*Consequence:* If real, this would give a concrete biochemical account of tick-associated brain fog — immune "metabolic memory" flooding the circulation with lactate at the wrong times and starving neurons of their preferred fuel — and would make the CSF-to-serum lactate ratio a testable readout; for now it is an untested bridge between two established ideas.
] <spec:tickborne-anls-gradient-reversal>

