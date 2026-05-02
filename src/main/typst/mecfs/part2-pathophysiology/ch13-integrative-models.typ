#import "../shared/environments.typ": *

= Integrative Models and Related Phenomena
<ch:integrative-models>

_“All models are wrong, but some are useful.”_ 

— George E.P.\ Box
This chapter attempts to synthesize the diverse findings presented in previous chapters into coherent models of ME/CFS pathophysiology. We present these models with explicit acknowledgment of their evidence levels, from well-established observations to speculative hypotheses. The goal is intellectual honesty: to distinguish what we know, what we suspect, and what we're guessing.

== Evidence Classification Framework
<sec:evidence-classification>

Before presenting hypotheses, we define our evidence classification system. This framework is conservative—we classify based on the _weakest_ link in the evidence chain.



#figure(
  table(
    columns: 6,
    // TODO: fix columnsp{4cm}p{6cm}}
  
  [*Level*], [*Definition*], [*What This Means*],
  
  [*Established*], [Replicated in multiple independent studies with consistent findings], [High confidence this is real; disagreement is about interpretation, not existence],
  
  
  [*Probable*], [Documented in $gt.eq$2 studies OR single large/well-designed study], [Likely real, but replication needed; could be overturned],
  
  
  [*Preliminary*], [Single study or small studies with suggestive findings], [Interesting signal, but may not replicate; treat as hypothesis],
  
  
  [*Theoretical*], [Biologically plausible based on known mechanisms, but not directly tested in ME/CFS], [Reasonable extrapolation from other conditions; needs direct testing],
  
  
  [*Speculative*], [Creative hypothesis without direct supporting data], [May inspire research but should not guide treatment decisions],
  
  ),
  kind: table, supplement: [Table], caption: [Evidence Level Definitions],
) <tab:evidence-levels>


Much of what follows involves substantial uncertainty. The ME/CFS field has been plagued by premature certainty—both from those who dismissed the illness as psychological and from those who promoted specific biological theories without adequate evidence. We aim to avoid both errors by clearly labeling our confidence levels and acknowledging where we may be wrong.
== Comprehensive Hypothesis Ranking
<sec:hypothesis-ranking>

Table @sec:hypothesis-ranking presents the major hypotheses about ME/CFS pathophysiology, ranked by our assessment of their likelihood of being substantially correct. This ranking is inherently subjective and will change as new evidence emerges. We weight: (1) quality and quantity of direct evidence, (2) explanatory power for core symptoms, (3) consistency with treatment responses, and (4) biological plausibility.

// TODO: landscape
#table(
  columns: 6,

[*Hypothesis*], [*Evidence Level*], [*Key Supporting Evidence*], [*Explains Which Symptoms/Observations*], [*Treatment Implications*], [*Potential for Rapid Benefit*],

// TIER 1: ESTABLISHED
table.cell(colspan: 6)[*TIER 1: ESTABLISHED PHENOMENA*],



[Post-exertional malaise (PEM) as cardinal feature (@sec:pem)], [Established], [2-day CPET studies; universal patient reports; objective physiological decline on day 2], [Exercise intolerance; delayed crashes; why GET harms], [Pacing; energy management; avoid overexertion], [High (pacing prevents crashes)],



[Autonomic dysfunction (@sec:autonomic)], [Established], [Abnormal tilt table tests; HRV abnormalities; POTS prevalence $>$30%], [Orthostatic intolerance; tachycardia; temperature dysregulation; coat hanger pain], [Salt/fluids; compression; fludrocortisone; midodrine; ivabradine], [Moderate–High],



[Sleep architecture abnormalities (@sec:sleep)], [Established], [Polysomnography showing reduced slow-wave, fragmented sleep; universal unrefreshing sleep], [Unrefreshing sleep; cognitive dysfunction; fatigue], [Sleep hygiene; low-dose trazodone; address comorbid sleep disorders], [Moderate],



[Immune dysregulation (ch07)], [Established], [Cytokine abnormalities; NK cell dysfunction; T cell subset changes; B cell abnormalities], [Flu-like symptoms; susceptibility to infections; post-infectious onset], [LDN; immunomodulators; avoid immune stressors], [Moderate],



table.cell(colspan: 6)[*TIER 2: PROBABLE MECHANISMS*],



[Mitochondrial/energy metabolism dysfunction (@sec:mito-evidence)], [Probable], [ATP profile abnormalities; Heng 2025 AMP/ADP elevation; lactate abnormalities; metabolomic signatures], [Fatigue; exercise intolerance; PEM; muscle weakness], [CoQ10; NAD#super[+] precursors; D-ribose; B vitamins], [Low–Moderate],



[Neuroinflammation (ch08)], [Probable], [PET imaging (Nakatomi); CSF abnormalities; microglial activation markers], [Brain fog; cognitive dysfunction; sensory sensitivities; headaches], [Anti-inflammatory approaches; LDN; avoid neuroinflammatory triggers], [Low–Moderate],



[GPCR autoantibodies (@sec:gpcr-autoantibodies)], [Probable], [Elevated anti-$beta$2, M3, M4 antibodies @Loebel2016 @Bynke2020; correlation with symptoms @Sotzny2021; immunoadsorption re\-sponses @Stein2024immunoadsorption; monocyte dysfunction @Hackel2025monocyte], [Autonomic dysfunction; fatigue; muscle symptoms; cytokine dys\-regulation; why some re\-spond to IA], [Immunoadsorption; BC007 @Hohberger2021bc007; daratumumab @Fluge2025daratumumab], [Moderate–High (in subset)],



[Gut microbiome dysbiosis (ch14)], [Probable], [Reduced butyrate producers; altered diversity; correlation with symptoms], [GI symptoms; systemic inflammation; food intolerances], [Probiotics; dietary modification; possibly FMT], [Low–Moderate],



[Reduced cerebral blood flow], [Probable], [SPECT/MRI showing hypoperfusion; correlation with cognitive symptoms], [Brain fog; cognitive dysfunction; orthostatic cognitive worsening], [Address underlying POTS; potentially vasodilators], [Moderate],



table.cell(colspan: 6)[*TIER 3: PRELIMINARY/EMERGING*],



[Plasma cell-mediated autoimmunity (@hyp:plasma-cell-sanctuary)], [Preliminary], [Daratumumab pilot (60% response); explains rituximab failure; IgG reduction correlates with response], [Autoimmune subset; why B-cell depletion failed but plasma cell depletion worked], [Daratumumab; combined IA + plasma cell targeting], [High (in auto\-immune subset)],



[Vascular-Immune-Energy Triad], [Preliminary], [Heng 2025 7-biomarker panel; Hoel 2026 serum proteomics cross-vali\-dation @Hoel2026proteome; coordinated abnormalities across 3 systems from two independent cohorts], [Multi-system nature; why single-target treatments fail], [Triple-target protocol; simultaneous intervention], [Unknown (untested)],



[Endothelial dysfunction / microclotting (ch14)], [Preliminary], [Elevated VWF, fibronectin, thrombospondin; Hoel 2026: reduced VIM, ANTXR2, CXADR + disrupted Ephrin signaling @Hoel2026proteome; Long COVID microclot findings], [Exercise intolerance; brain fog; multi-system involvement], [Anticoagulation; fibrinolytics; endothelial support; Ephrin-targeted therapy?], [Moderate (if confirmed)],



[Central cate\-chol\-amine deficiency], [Preliminary], [Walitt 2024 CSF findings (reduced DOPA, DOPAC, DHPG); effort prefer\-ence abnor\-mality], [Altered effort per\-ception; moti\-vation diffi\-culties; why “pushing through” fails], [Dopa\-mine pre\-cursors?; stimu\-lants with caution], [Unknown],



[NAD#super[+] depletion (ch14)], [Preliminary], [Meta\-bolomic abnormalities; 2025 NR trial in Long COVID; theo\-retical PARP con\-sumption], [Energy failure; mito\-chon\-drial dysfunction; immune cell dysfunction], [NR/\allowbreak NMN 1000–2000 mg; prolonged treatment ($>$10 weeks)], [Low (slow onset)],



[Small fiber neuro\-pathy], [Preliminary], [Skin biopsy studies; correlation with dys\-auto\-nomia; elevated in subset], [Pain; auto\-nomic symptoms; temper\-ature regu\-lation issues], [IVIG (in some); immuno\-modu\-lation; symptom manage\-ment], [Moderate (in subset)],



[Viral persist\-ence/\allowbreak re\-acti\-vation (ch14)], [Preliminary], [HHV-6 miRNA in CNS; elevated herpes\-virus antibodies; EBV re\-acti\-vation markers], [Post-infectious onset; relapsing course; why anti\-virals help some], [Vala\-cyclo\-vir; val\-ganci\-clovir; potentially IVIG], [Low–Moderate],



[EBV-driven CNS autoimmunity], [Preliminary], [EBV-infected B cells cross BBB @Pless2026ebv_demyelination; LMP1 expres\-sion enables brain infil\-tration; comple\-ment/\allowbreak micro\-glial acti\-vation], [Post-EBV onset; neuro\-inflam\-mation; brain fog distinct from peri\-pheral fatigue], [Anti\-virals; B cell depletion; comple\-ment inhi\-bition], [Moderate (in EBV+ subset)],



[Auto\-anti\-body-monocyte re\-pro\-gram\-ming (@hyp:autoantibody-monocyte)], [Pre\-lim\-i\-nary], [GPCR autoantibodies re\-pro\-gram monocyte cytokine pro\-duc\-tion @Hackel2025monocyte; MIP-1$delta$, PDGF-BB, TGF-$beta$3 el\-e\-va\-tion], [Sys\-tem\-ic in\-flam\-ma\-tion; why ef\-fects per\-sist be\-yond re\-cep\-tor bind\-ing; tis\-sue re\-mod\-el\-ing], [Auto\-anti\-body re\-mov\-al + monocyte mod\-u\-la\-tion (JAK in\-hib\-i\-tors)], [Moderate–High],



table.cell(colspan: 6)[*TIER 4: THEORETICAL*],



[Glymphatic clearance failure (@sec:glymphatic)], [Theoretical], [Sleep dysfunction; cognitive symptoms; cranio\-cervical junction issues in subset], [Brain fog; un\-refreshing sleep; position-dependent symptoms], [Address CCI if present; optimize slow-wave sleep], [Unknown],



[Trypto\-phan/\allowbreak kynure\-nine trap (@sec:kynurenine-trap)], [Theoretical], [IDO acti\-vation docu\-mented; trypto\-phan pathway abnormalities; elevated QUIN:\allowbreak KYNA ratio in some studies], [Depression-like symptoms; neuro\-inflam\-mation; NAD#super[+] depletion], [IDO inhi\-bitors?; shift pathway toward KYNA], [Unknown],



[Circadian de\-syn\-chroni\-zation (ch14)], [Theoretical], [Cortisol rhythm abnormalities; sleep timing issues; fluc\-tuating symptoms], [Un\-pre\-dictable symptom patterns; un\-refreshing sleep; why timing matters], [Chrono\-therapy; mela\-tonin; time-restricted feeding; light therapy], [Moderate],



[Epi\-genetic “lock”], [Theoretical], [DNA methy\-lation changes docu\-mented; duration predicts prognosis; why early intervention helps], [Persist\-ence; treatment resist\-ance; why disease stabi\-lizes], [Epi\-genetic modi\-fiers (experi\-mental); early aggres\-sive treatment], [Unknown],



[Purinergic signaling dysregulation], [Theoretical], [ATP is danger signal; P2X7 and inflammation; exercise releases ATP], [PEM delay (24–72h matches DTH kinetics); pain sensitization; inflammation], [P2X7 antagonists (experimental)], [Unknown],



table.cell(colspan: 6)[*TIER 5: SPECULATIVE*],



[“Safe mode” / stuck sickness behavior], [Speculative], [Fits symptom pattern; evolutionarily plausible; explains why pushing harms], [All core symptoms as adaptive (but stuck) response], [Reset hypothalamic setpoint?; break the “lock”], [Unknown],



[HERV reactivation], [Speculative], [HERVs can be de-silenced; would explain persistent immune activation without pathogen], [Post-viral onset; autoimmunity; female predominance], [Antiretrovirals?; epigenetic silencing?], [Unknown],



[Ion channel autoimmunity], [Speculative], [Precedent in other conditions (LEMS, MG); would explain “wired but tired”], [Sensory sensitivities; autonomic dysfunction; muscle fatigue; cardiac symptoms], [Plasmapheresis; IVIG; channel-specific interventions], [Moderate (if confirmed)],



[Receptor internalization (not blockade)], [Speculative], [NMDA receptor autoantibodies cause internalization @Kim2026nmdar_cryoem; would explain lag between Ab removal and recovery], [Why symptoms persist after immunoadsorption; need for receptor regeneration time], [Autoantibody removal + time for receptor resynthesis], [Moderate (delayed)],



[Lactate compartmentalization (MCT dysfunction)], [Speculative], [Lactate abnormalities documented; would explain tissue-specific symptoms], [PEM; muscle symptoms; brain fog; why systemic lactate seems okay], [DCA?; lactate supplementation?], [Unknown],



[Ferroptosis susceptibility], [Speculative], [Lipid abnormalities; oxidative stress; iron dysregulation documented], [Why high-energy tissues affected; why iron supplementation can harm], [Ferroptosis inhibitors; careful with iron], [Unknown],



[Trained endotheliopathy], [Speculative], [Endothelial markers elevated (Heng 2025); Hoel 2026 impaired repair signature (reduced ANTXR2, VIM, Ephrin disruption) @Hoel2026proteome; innate immune training established; vascular symptoms], [Multi-system involvement; persistent endothelial activation; impaired vascular repair; microvascular dysfunction], [Vascular-focused protocol; angio\-genesis support; epigenetic reversal?], [Unknown],

)
// end landscape

=== Interpretation Notes

    - *Ranking reflects current evidence, not ultimate truth.* The “Speculative” hypotheses may prove correct; the “Established” phenomena may be reinterpreted. Science is provisional.

    - *Multiple hypotheses may be simultaneously true.* ME/CFS is almost certainly heterogeneous. Different patients may have different primary drivers, and individual patients may have multiple contributing mechanisms.

    - *“Treatment implications” does not mean “proven treatment.”* We list logical therapeutic consequences of each hypothesis, not demonstrated efficacy. Very few ME/CFS treatments have robust RCT support.

    - *“Potential for rapid benefit” is our subjective assessment* of how quickly patients might improve _if_ the hypothesis is correct _and_ appropriate treatment is applied. “Unknown” means we cannot predict.

    - *Severely ill patients face different considerations.* Some interventions (immunoadsorption, daratumumab) require hospital access impossible for bedbound patients. Others (pacing, supplements) are accessible. The table does not capture this dimension adequately.

    - *Cross-references to detailed discussions.* Many hypotheses are explored in depth in earlier chapters: immune dysfunction (Chapter @ch:immune-dysfunction), neurological abnormalities (Chapter @ch:neurological), energy metabolism (Chapter @ch:energy-metabolism), cardiovascular findings (Chapter @ch:cardiovascular), and microbiome alterations (Chapter @ch:gut-microbiome). This chapter synthesizes those findings; consult earlier chapters for mechanistic detail.

== Synthesis: What the Evidence Suggests
<sec:synthesis>

Drawing together the ranked hypotheses, several patterns emerge:

=== The Core Triad: Energy-Immune-Autonomic

Three systems show consistent abnormalities across evidence levels:

    - *Energy metabolism* (mitochondrial dysfunction, ATP depletion, metabolomic abnormalities)—see integrated metabolic model in Section @sec:metabolism-summary
    - *Immune function* (cytokine dysregulation, autoantibodies, NK cell dysfunction)—detailed in Chapter @ch:immune-dysfunction
    - *Autonomic regulation* (POTS, HRV abnormalities, catecholamine changes)—integrated cardiovascular dysfunction discussed in Section @sec:cv-summary

The Heng 2025 study @heng2025mecfs suggests these are not independent—the 7-biomarker panel spanning all three systems achieved 91% diagnostic accuracy. This correlation is consistent with coordinated dysfunction. If these systems are functionally coupled, this would have profound implications:

#limitation(title: [Diagnostic Correlation $eq.not$ Causal Interdependence])[
A multi-system biomarker panel achieving high diagnostic accuracy establishes that these systems are co-altered in ME/CFS. It does not establish that they are causally interdependent: the same upstream driver could independently perturb all three systems without any system-to-system causal link. Distinguishing coordinated dysfunction from independent co-occurrence requires intervention studies (e.g., correcting one system and observing whether others normalize).
]

    - Treatments targeting only one system may fail because the others maintain dysfunction
    - Patient subgroups may differ in which system predominates, not which system is involved
    - A “multi-lock” model (see Chapter @ch:speculative-hypotheses) may explain treatment resistance

=== The Autoimmune Subgroup

The daratumumab pilot trial (60% response) @Fluge2025daratumumab provides the strongest evidence yet for an autoimmune mechanism in _a subset_ of patients. Key insights:

    - Rituximab (anti-CD20, targets B cells) failed in large trials @Fluge2019
    - Daratumumab (anti-CD38, targets plasma cells) succeeded in pilot @Fluge2025daratumumab
    - This suggests *long-lived plasma cells*, not B cells, are the critical autoantibody source
    - The 60% response rate implies heterogeneity—not all ME/CFS is autoimmune
    - Biomarkers for patient selection are urgently needed
    - The ResetME RCT ($n=66$, placebo-controlled) is now recruiting to test these findings (Appendix @app:research-registry, Section @sec:registry-resetme)

The daratumumab finding @Fluge2025daratumumab may explain one of ME/CFS research's biggest disappointments. Rituximab showed promise in early trials but failed in the large Norwegian RCT @Fluge2019. If the critical autoantibodies come from long-lived plasma cells (CD38#super[+], CD20#super[-]), rituximab would deplete the wrong cells. Existing plasma cells would continue producing autoantibodies for months, and by the time B cells returned, no improvement would be evident. The trial “failed” not because autoimmunity isn't involved, but because the wrong cells were targeted.
=== The Vascular Dimension

Elevated VWF, fibronectin, and thrombospondin @heng2025mecfs point to *endothelial activation*—the blood vessel lining is chronically stressed. This connects to:

    - Long COVID microclot findings (emerging evidence)
    - Cerebral hypoperfusion documented in ME/CFS @VanCampenEtAl2020
    - Exercise intolerance (endothelium cannot vasodilate properly)
    - Multi-system involvement (endothelium is everywhere)

The Hoel et al.\ (2026) serum proteomics study @Hoel2026proteome substantially deepened this picture. Beyond confirming elevated coagulation and complement factors, the study revealed a specific vascular injury signature: reduced vimentin (endothelial structural protein), reduced ANTXR2/CMG2 (capillary morphogenesis regulator), reduced CXADR (shear stress sensor), and elevated endothelial lipase (LIPG). Critically, Ephrin receptor signaling—a pathway governing vascular development and angiogenesis—showed coordinated disruption, with four Ephrin A receptors and their ligands simultaneously altered. The authors also documented elevated WASF3 (a HIF-1$alpha$ target), providing direct proteomic evidence for tissue hypoxia. Together, these findings suggest not just endothelial activation but impaired endothelial repair capacity: the vasculature is stressed, and the molecular machinery for repairing and remodeling damaged vessels appears compromised.

If ME/CFS is partly an *endotheliopathy*, vascular-targeted treatments (anticoagulation, fibrinolytics, endothelial support) might help—but this remains preliminary.

=== The Central Nervous System

The Walitt 2024 finding @walitt2024deep of altered *effort preference* (not physical fatigue) localizes part of the problem to the brain. Combined with:

    - CSF catecholamine deficiency @walitt2024deep
    - Neuroinflammation on PET imaging @Nakatomi2014neuroinflammation
    - Cognitive dysfunction correlating with perfusion @VanCampenEtAl2020
    - Brainstem abnormalities @walitt2024deep

This suggests ME/CFS involves a *central state change*—the brain is computing effort-reward differently, possibly appropriately given peripheral metabolic dysfunction, but creating the subjective experience of profound unwillingness/inability to exert.

=== The “Stuck” State

Multiple hypotheses converge on the idea that ME/CFS represents a *stable pathological state* that resists perturbation:

    - Epigenetic changes may “lock” gene expression patterns
    - Autoantibodies from long-lived plasma cells provide continuous dysfunction
    - Metabolic pathway shifts may be self-perpetuating
    - The brain's effort computation may be recalibrated
    - Circadian rhythms may be desynchronized

This “multi-lock” concept (detailed in Chapter @ch:speculative-hypotheses) suggests why:

    - Single interventions rarely produce cures
    - Early treatment may prevent lock stabilization
    - Disease duration correlates with prognosis
    - Some patients spontaneously recover (locks didn't fully stabilize)
    - Treatment may need to target multiple locks simultaneously

<obs:multi-lock-treatment>
If ME/CFS involves multiple self-reinforcing abnormalities, this has profound implications for clinical trials. A treatment targeting one mechanism (e.g., immunoadsorption removing autoantibodies) might show modest benefit if other locks (epigenetic, metabolic, autonomic) maintain dysfunction. This could explain the disappointing results of many single-mechanism trials. Future research should explore: (1) sequential combination therapies (break locks one at a time), (2) simultaneous multi-targeted protocols (address all locks together), or (3) biomarker-guided sequencing (identify which lock predominates in each patient). The daratumumab 60% response rate @Fluge2025daratumumab may reflect successful targeting in patients where autoimmunity is the primary lock, while non-responders have different dominant mechanisms.
#speculation(title: [Sickness Behavior “Stuck On” Hypothesis])[

Sickness behavior is an evolutionarily conserved motivational state triggered by pro-inflammatory cytokines (IL-1$beta$, IL-6, TNF-$alpha$) acting on the brain through both humoral and neural (vagal afferent) pathways @Dantzer2008inflammation @Dantzer2007twenty. Its hallmarks—fatigue, social withdrawal, anorexia, hyperalgesia, cognitive impairment, and somnolence—precisely parallel the core symptom constellation of ME/CFS @Morris2013sickness. We speculate that ME/CFS represents a state in which the sickness behavior program, normally self-limiting, becomes chronically activated or fails to disengage.

*Adaptive Function of Sickness Behavior.*
In acute infection, sickness behavior redirects energy from locomotion, foraging, and social interaction toward immune function. This reallocation is metabolically efficient: fever alone increases metabolic rate by approximately 13% per degree Celsius, and immune activation consumes substantial glucose and amino acids @Dantzer2023evolutionary. The “cost” of sickness behavior (reduced activity) is offset by the “benefit” of enhanced pathogen clearance. Crucially, sickness behavior involves active CNS reprogramming of motivation and effort perception, not merely peripheral weakness @Lopes2021sickness.

*Mechanisms of Persistence.*
Several mechanisms could prevent sickness behavior from resolving:

_Chronic low-grade immune activation._ Even after the initial infection resolves, persistent immune activation (from viral reservoirs, autoantibodies, dysbiosis-driven LPS translocation, or mast cell activation) may continuously provide the cytokine signals that maintain sickness behavior. This does not require high-level inflammation—even subtle elevations in IL-1$beta$ and TNF-$alpha$ are sufficient to trigger sickness behavior circuits @Dantzer2008inflammation.

_Vagal afferent sensitization._ The vagus nerve transmits peripheral inflammatory signals to the nucleus tractus solitarius and subsequently to the hypothalamus. Repeated activation may sensitize this pathway, such that progressively lower levels of peripheral inflammation trigger full sickness behavior responses @Huerta2025vagal. This could explain why ME/CFS patients experience severe symptoms despite only modest peripheral inflammatory markers.

_Hypothalamic set-point shift._ The hypothalamus integrates immune, metabolic, and autonomic signals to determine the sickness behavior “set point.” Chronic activation may shift this set point, requiring active intervention (rather than mere absence of infection) to return to baseline. This parallels allostatic load theory: the regulatory system itself becomes dysregulated.

_Cytokine-epigenetic feedback._ Pro-inflammatory cytokines induce epigenetic changes (DNA methylation, histone modification) in hypothalamic neurons and microglia @Lasselin2021future. These epigenetic modifications may persist after the cytokine signal diminishes, creating a self-maintaining state where the sickness behavior program remains “written into” neural gene expression.

*Testable Predictions.*

    - *Anti-cytokine response*: IL-1 receptor antagonist (anakinra) should reduce sickness behavior symptoms in ME/CFS. Preliminary evidence is mixed: Roerink et al.\ found no significant benefit from anakinra in ME/CFS in an RCT @Roerink2017anakinra, though the 4-week treatment duration may have been insufficient to reverse established set-point shifts.
    - *Vagal modulation*: Non-invasive vagal nerve stimulation should modulate sickness behavior intensity, potentially providing rapid (hours to days) symptomatic relief.
    - *Motivational dissociation*: If ME/CFS is “stuck” sickness behavior, patients should show altered neural responses to reward and effort in fMRI, specifically resembling experimentally induced sickness (e.g., LPS challenge studies) rather than depression or deconditioning.
    - *Cytokine sensitivity*: ME/CFS patients should show amplified sickness behavior responses to standardized immune challenges (e.g., typhoid vaccination) compared to healthy controls, reflecting sensitized sickness circuits.

*Treatment Implications.*

    - *Desensitization approaches*: Graduated immune challenge protocols (conceptually analogous to allergy desensitization) might recalibrate sensitized sickness circuits.
    - *Epigenetic interventions*: If epigenetic modifications maintain the stuck state, histone deacetylase inhibitors or other epigenetic modulators might help reverse the programming.
    - *Reframing*: Understanding ME/CFS as “stuck sickness behavior” reframes symptoms as adaptive responses in an inappropriate context, potentially reducing stigma and guiding mechanistic research.

#limitation(title: [Sickness Behavior Model: Explanatory Gaps])[
The sickness behavior model does not explain all ME/CFS features. PEM—the hallmark worsening after exertion—is not a recognized feature of acute sickness behavior. The negative anakinra trial @Roerink2017anakinra suggests that simply blocking one cytokine pathway is insufficient, though this does not refute the broader hypothesis. The model also struggles to explain why some patients develop ME/CFS after non-infectious triggers (physical trauma, surgery) where the initial sickness behavior program may not have been engaged.
]

*Certainty:* 0.40 (symptom overlap is striking; mechanistic persistence pathway speculative; negative anakinra trial complicates picture)
] <spec:sickness-behavior-stuck>

#speculation(title: [Partial Torpor Trap Hypothesis])[

Torpor is a phylogenetically conserved state of controlled metabolic suppression in which organisms dramatically reduce body temperature, heart rate, and metabolic rate to survive periods of energy scarcity @Hrvatin2020torpor @Takahashi2020torpor. We speculate that ME/CFS involves activation of torpor-related metabolic suppression pathways without the coordinated physiological program that enables safe entry into and arousal from torpor—a “partial torpor trap.”

*Torpor Biology.*
Recent research has identified specific neural circuits controlling torpor in mice:

    - *QRFP neurons*: Hypothalamic neurons expressing pyroglutamylated RFamide peptide (QRFP) are both necessary and sufficient to induce torpor-like states in mice @Takahashi2020torpor. Chemogenetic activation of these neurons reduces body temperature by 5–10#super[compose]C and metabolic rate by 40–70%.
    - *Preoptic area circuits*: Genetically distinct neuronal populations in the preoptic area drive distinct features of torpor (temperature reduction, metabolic suppression, behavioral quiescence) @Hrvatin2020torpor.
    - *Coordinated entry and arousal*: Normal torpor involves coordinated engagement of thermoregulatory, metabolic, and cardiovascular systems, with active arousal mechanisms ensuring safe exit.

*ME/CFS as Partial Torpor.*
Several ME/CFS features resemble incomplete torpor engagement:

_Metabolic suppression without temperature reduction._ ME/CFS patients show reduced metabolic rate and metabolic inflexibility but generally maintain normal core body temperature (though some report subjective coldness and temperature dysregulation). This pattern is consistent with activation of metabolic suppression pathways without the thermoregulatory component—as if only part of the torpor program has engaged.

_Cardiovascular changes._ Torpor involves reduced heart rate and cardiac output. ME/CFS patients show reduced cardiac output, blunted heart rate responses (chronotropic incompetence), and orthostatic intolerance—changes directionally consistent with partial torpor cardiovascular adjustment.

_Behavioral quiescence with preserved awareness._ In torpor, animals become behaviorally quiescent. ME/CFS patients show profound reduction in physical activity while maintaining cognitive awareness (albeit impaired)—consistent with dissociation between behavioral and consciousness components of the torpor program.

_Arousal failure._ Normal torpor includes coordinated arousal involving UCP1-mediated thermogenesis, sympathetic activation, and TRPM2-mediated calcium signaling. If ME/CFS involves partial torpor, the arousal program may be incomplete or repeatedly failing, trapping the organism in a low-metabolic state.

*Testable Predictions.*

    - *QRFP pathway markers*: ME/CFS patients should show altered QRFP signaling (measurable in CSF) compared to healthy controls and fatigued-but-not-ME/CFS patients.
    - *Arousal marker deficiency*: Markers of torpor arousal (UCP1 expression in brown adipose tissue, sympathetic activation patterns, TRPM2 channel activity) should be reduced or dysregulated in ME/CFS.
    - *Brown adipose tissue*: ME/CFS patients may show altered brown adipose tissue activity (measurable by FDG-PET cold stimulation), reflecting impaired thermogenic arousal.
    - *Dauer analogy*: In _C.\ elegans_, the dauer state (metabolic arrest under adverse conditions) is triggered by specific signaling pathways. If ME/CFS involves an analogous “dauer-like” state in humans, metabolic profiling should reveal pathway-specific suppression patterns distinct from simple caloric restriction.

*Treatment Implications.*
If ME/CFS involves partial torpor, treatment should focus on completing the arousal program:

    - *Thyroid optimization*: Thyroid hormones are critical torpor arousal signals. Even “normal range” thyroid function might be insufficient if arousal pathways are suppressed.
    - *Brown adipose stimulation*: Cold exposure protocols or pharmacological BAT activation might engage arousal circuits.
    - *Sympathomimetics*: Carefully titrated sympathomimetic agents might provide the sympathetic activation component missing from incomplete arousal.

*Limitations.*
This hypothesis is highly speculative. Humans do not normally enter torpor, and it is unclear whether human hypothalamic circuits retain functional torpor-induction capacity. The analogy between ME/CFS and torpor is based on phenomenological similarity rather than demonstrated mechanistic overlap. Core body temperature is generally normal in ME/CFS, which argues against full torpor pathway engagement. No human studies have examined QRFP or related torpor-control pathways in ME/CFS.

*Certainty:* 0.30 (intriguing conceptual framework; minimal direct evidence; highly speculative)
] <spec:partial-torpor>

== Proposed Unifying Mechanisms
<sec:unifying-mechanisms>

=== Vicious Cycle Models

Several vicious cycles may perpetuate ME/CFS. These cycles are identified and discussed in detail within their respective system chapters: immune vicious cycles in Chapter @ch:immune-dysfunction, HPA-immune feedback in Chapter @ch:endocrine, MCAS-POTS interactions in Chapter @ch:cardiovascular, and gut-brain bidirectional dysfunction in Chapter @ch:gut-microbiome. Here we synthesize these chapter-specific cycles into a comprehensive framework:

*Inflammation-Metabolism Cycle.*

    - Inflammation activates IDO, shunting tryptophan toward kynurenine @Kavyani2022kynurenine
    - Kynurenine pathway produces neurotoxic quinolinic acid @Dehhaghi2022kynurenine
    - Neuroinflammation maintains cytokine production @Nakatomi2014neuroinflammation
    - Cytokines perpetuate IDO activation

*Energy-Immune Cycle.*

    - Mitochondrial dysfunction depletes ATP @heng2025mecfs
    - Immune cells cannot complete activation/maturation (ATP-dependent)
    - Dysfunctional immune response fails to clear triggers
    - Persistent triggers maintain inflammation
    - Inflammation impairs mitochondria @Syed2025

*Autonomic-Vascular Cycle.*

    - Autonomic dysfunction impairs vascular regulation
    - Poor perfusion causes tissue hypoxia
    - Hypoxia triggers HIF pathway and metabolic shifts
    - Metabolic abnormalities affect autonomic centers

*Gut–Serotonin–Vagal–Autonomic Cycle (Hypothesized).*
This proposed cycle chains five observations—the first three individually documented, the last two inferred:

    - Gut dysbiosis in ME/CFS reduces butyrate-producing bacteria @ButyrateDeficiency2023 _(documented)_
    - Butyrate enhances enterochromaffin cell serotonin synthesis @Barton2025; butyrate deficiency would therefore be expected to reduce it _(documented mechanism, inferred consequence in ME/CFS)_
    - Enterochromaffin serotonin activates vagal afferents via 5-HT#sub[3] receptors @Barton2023 @Kaelberer2018 _(documented)_
    - Reduced vagal afferent input may diminish efferent vagal tone via brainstem integration, impairing autonomic output to heart, gut, and immune system _(inferred; not directly demonstrated in ME/CFS)_
    - Impaired vagal efferent output would worsen gut motility, potentially promoting further dysbiosis—closing the cycle _(inferred)_

Wirth and Scheibenbogen's broader framework of neurotransmitter dysregulation @WirthScheibenbogen2025Neurotransmitter provides theoretical context for steps 2–4, though the specific cyclic pathway proposed here extends beyond their analysis. This hypothesized cycle links the Autonomic-Vascular Cycle above to gut pathophysiology (Chapter @ch:gut-microbiome, Section @sec:gut-brain). Validation would require measuring enterochromaffin serotonin output and vagal afferent activity in ME/CFS patients alongside butyrate levels.

*Exertion-Crash Cycle.*

    - Patient feels slightly better, increases activity
    - Activity exceeds metabolic capacity
    - Post-exertional crash (24–72 hours delayed)
    - Crash worsens baseline, triggers immune/metabolic responses
    - Partial recovery, patient attempts activity again

Breaking these cycles is the goal of effective treatment—but which cycle to break, and how, likely differs between patients.

*Inflammation-Barrier Bidirectional Cycle.*

A self-sustaining pathophysiological cycle may become entrenched in severe ME/CFS patients, in which systemic inflammation and intestinal barrier dysfunction perpetually reinforce each other:

    - *Baseline systemic inflammation*: ME/CFS patients exhibit elevated pro-inflammatory cytokines (IL-1$beta$, IL-6, TNF-$alpha$, IFN-$gamma$) @Montoya2017 that correlate with disease severity.
    - *Tight junction disruption*: These cytokines directly suppress expression of tight junction proteins (claudin-1, occludin, zonula occludens-1), disrupting the intestinal epithelial seal @GutPermeability2023.
    - *LPS translocation*: Permeability increases, allowing bacterial lipopolysaccharide (LPS) to cross the intestinal epithelium and enter systemic circulation @GutPermeability2023.
    - *TLR4 activation and cytokine amplification*: Translocated LPS activates toll-like receptor 4 (TLR4) on innate immune cells, triggering production of additional pro-inflammatory cytokines (IL-1$beta$, IL-6, TNF-$alpha$) @Junker2012.
    - *Barrier repair impairment*: The elevated cytokines that trigger barrier disruption simultaneously suppress anti-inflammatory mechanisms and stress the repair capacity of already compromised enterocytes. Additionally, low cortisol in severe patients (discussed in Chapter @ch:endocrine) reduces expression of tight junction proteins @Papadopoulos2012HPA.
    - *Cycle amplification*: With each cycle, baseline permeability increases, baseline cytokines increase, and the barrier's repair capacity becomes increasingly exhausted. This self-sustaining loop may explain why disease severity tends to increase over time in some severe patients without intervention.

#hypothesis(title: [Breaking the Inflammation-Barrier Cycle in Severe Patients])[
Ceasing the perpetuation of this cycle may require simultaneous multi-target interventions rather than single-pathway strategies. Possible approaches include: (1) *Barrier restoration* via glutamine supplementation, collagen peptides, or other enterocyte-supportive nutrients; (2) *Wheat elimination* to remove zonulin-mediated barrier stress; (3) *Anti-inflammatory support* via omega-3 fatty acids, curcumin, or other dietary polyphenols; (4) *Mast cell stabilization* with quercetin or ketotifen to reduce histamine-mediated inflammatory mediator release; and (5) *Cortisol optimization* to support endogenous barrier repair. Addressing only one mechanism (e.g., wheat elimination without anti-inflammatory support or barrier repair substrates) may prove insufficient if the cycle has become deeply entrenched, requiring comprehensive multi-pathway interventions for clinical efficacy in severe patients.

*Certainty: 0.75* (mechanistic logic strong; direct evidence for this integrated multi-target approach lacking in ME/CFS).
] <hyp:multi-target-intervention>

#key-point(title: [Orthostatic Intolerance as Potential Upstream Driver])[

Pediatric ME/CFS data suggest that orthostatic intolerance (OI) may function as an upstream driver—a lynchpin whose early correction can prevent cascade into multi-system dysfunction.

In pediatric ME/CFS treatment studies, aggressive OI management produces improvements not only in cardiovascular symptoms but also in fatigue, cognitive function, and overall wellbeing @Rowe2019pediatric. This broad benefit pattern suggests that OI is not merely one symptom among many, but rather a primary pathophysiological driver whose downstream effects include immune activation, neuroinflammation, and metabolic dysfunction.

*Mechanistic rationale:*

Chronic cerebral hypoperfusion from untreated OI creates a cascade: reduced brain oxygen delivery triggers compensatory metabolic shifts, impairs neurotransmitter synthesis, activates microglia (neuroinflammation), and disrupts autonomic regulatory centers. The resulting autonomic dysfunction further worsens perfusion, completing a vicious cycle. Additionally, systemic hypoperfusion during orthostatic challenge causes tissue hypoxia, oxidative stress, and immune activation throughout the body.

If OI is the initiating driver, then correcting it early—before secondary systems become dysregulated—could prevent the recruitment of additional vicious cycles (energy-immune, inflammation-metabolism) that characterize established ME/CFS.

*Clinical implications:*

This framework suggests that _early, aggressive OI treatment_ may be disease-modifying rather than merely symptomatic:

    - In pediatric patients, OI correction may prevent progression to multi-system ME/CFS
    - In early-stage adult ME/CFS (under 2 years duration), aggressive OI treatment could interrupt cascade before lock-in
    - In established ME/CFS, OI treatment remains important but may be insufficient alone—additional cycles have been recruited
    - Treatment aggressiveness should match disease stage: maximal in early disease when prevention is possible

*Caveats:*

This interpretation remains speculative. Alternative explanations exist: OI treatment's broad benefits could reflect improved perfusion supporting all systems rather than preventing cascade, or pediatric OI responsiveness could reflect developmental plasticity enabling recovery through multiple pathways simultaneously. Additionally, not all ME/CFS patients have prominent OI, suggesting heterogeneity in primary drivers. The hypothesis applies most strongly to the OI-predominant subgroup, particularly in early disease stages.

See Section @sec:septad for the Septad framework that positions OI as one of seven interconnected pathophysiological domains, and Chapter @ch:cardiovascular for detailed discussion of OI mechanisms and treatments.

] <keypoint:oi-lynchpin>

#speculation(title: [Recovery Capital Model])[
We propose a conceptual framework of “Recovery Capital”—the cumulative
biological capacity for recovery that is consumed by severe post-exertional
malaise episodes and regenerated over time. In this model, children possess
high initial Recovery Capital (developmental plasticity, immune renewal,
metabolic flexibility) and regenerate it rapidly, while adults start with
lower capital and regenerate slowly if at all. Each severe crash “spends”
Recovery Capital through epigenetic changes, accumulated cellular damage,
and immune exhaustion. Once Recovery Capital is depleted below a threshold,
recovery becomes unlikely. This framework explains why strict pacing (capital
preservation) and early intervention (maximizing capital before depletion)
are particularly critical in pediatric patients, and why aggressive early
treatment in adult patients may preserve recovery potential that would
otherwise be lost.
] <spec:recovery-capital>

#speculation(title: [Hematopoietic Stem Cell Exhaustion Model])[

*Certainty: 0.30.* ME/CFS may involve accelerated exhaustion of hematopoietic stem cells (HSCs), with the pediatric recovery advantage reflecting children's larger HSC reserves. This speculation extends the Recovery Capital framework by identifying HSC function as a critical, quantifiable component of biological reserve. The certainty level reflects: (1) highly speculative extrapolation from aging biology to ME/CFS; (2) indirect peripheral blood markers as proxy for bone marrow HSC status; (3) absence of direct bone marrow biopsy studies in ME/CFS populations; (4) lack of direct intervention trials targeting HSC function.

We propose that ME/CFS involves accelerated exhaustion of hematopoietic stem cells (HSCs), and that the pediatric recovery advantage reflects children's larger HSC reserves and greater regenerative capacity.

*Conceptual foundation:*

Hematopoietic stem cells reside in bone marrow niches and give rise to all blood and immune cells throughout life. HSC function declines with age through multiple mechanisms: telomere shortening limits replicative capacity, accumulation of DNA damage triggers senescence, epigenetic drift alters differentiation potential, and clonal selection reduces diversity. This age-related decline is well-characterized and contributes to immunosenescence—the progressive deterioration of immune function with aging @NatureCellBio2025haematopoietic @FrontHematology2025aging.

Recent 2024–2025 research demonstrates that inflammation is a driving force of HSC aging, causing irreversible exhaustion of functional HSCs @JExpMed2021inflammation. Critically, HSCs can be induced to proliferate and differentiate in response to stress signals during infection, inflammation, chemotherapy, radiation, and aging @ExpHematology2020protection. However, with chronic or repeated stimulation, HSCs show loss of function and exhaustion @ExpHematology2020protection. Transient LPS exposure primes aged HSCs to undergo accelerated differentiation at the expense of self-renewal, leading to depletion of HSCs, with the central regulator NF-$kappa$B mediating functional impairment by inflammation insult @JExpMed2021inflammation.

We hypothesize that ME/CFS triggers and perpetuates accelerated HSC exhaustion through mechanisms that may be reversible if addressed early but become permanent once thresholds are crossed.

*Proposed mechanism:*

_Initial insult._ The triggering event (typically infection) produces massive immune activation requiring rapid expansion of effector cells. This expansion draws heavily on HSC reserves, as progenitor cells must proliferate to replace the mature cells consumed in the immune response. A severe or prolonged initial infection could substantially deplete HSC reserves through this demand-driven exhaustion.

_Post-exertional amplification._ Each crash episode may trigger additional waves of immune activation, cytokine release, and oxidative stress—all of which place demands on HSCs. Unlike healthy individuals who have HSC reserves to accommodate occasional stressors, ME/CFS patients operating with depleted reserves experience cumulative damage with each crash. This creates a vicious cycle: crashes deplete HSCs, reduced HSC function impairs recovery, incomplete recovery leads to more crashes.

_Inflammatory damage to the niche._ Chronic inflammation may damage the bone marrow microenvironment (the “niche”) that supports HSC function. Inflammatory cytokines alter niche cell function, disrupt the signals that maintain HSC quiescence, and may directly damage HSCs through oxidative stress. This niche damage could persist even if systemic inflammation resolves, leaving HSCs unable to function normally.

_Clonal restriction._ As HSC diversity declines, the remaining clones may be less capable of generating the full spectrum of immune cells needed for healthy function. Clonal hematopoiesis of indeterminate potential (CHIP)—dominance of blood production by a small number of HSC clones—is associated with increased inflammation, cardiovascular disease, and mortality in aging populations. ME/CFS may accelerate this clonal restriction.

*The pediatric advantage:*

Children possess several HSC-related advantages that could explain their superior recovery rates:

_Larger initial reserves._ Children have more HSCs per unit of bone marrow and a higher proportion of functionally competent, long-term repopulating HSCs. They can sustain greater HSC consumption before crossing critical thresholds.

_Active bone marrow._ Pediatric bone marrow is highly cellular (red marrow), while adult marrow progressively converts to fatty (yellow) marrow with reduced hematopoietic capacity. The active pediatric marrow can regenerate HSC populations more effectively.

_Greater regenerative capacity._ Pediatric HSCs have longer telomeres, less accumulated DNA damage, and more robust self-renewal capacity. After an insult, they can recover function more completely.

_More plastic niche._ The pediatric bone marrow microenvironment is more plastic and may be able to repair inflammatory damage that would be permanent in adults.

*Connection to other hypotheses:*

HSC exhaustion integrates with other proposed ME/CFS mechanisms:

_Immune dysfunction._ Many immune abnormalities in ME/CFS—reduced NK cell function, T cell exhaustion, altered cytokine profiles—could stem from inability to regenerate healthy immune cells due to HSC exhaustion.

_Epigenetic aging._ Epigenetic clocks measure biological age partly through methylation patterns established during hematopoiesis. Accelerated epigenetic aging in ME/CFS could reflect HSC exhaustion and altered differentiation.

_Autoimmunity._ HSC exhaustion could impair tolerance mechanisms that depend on continuous generation of naive, properly selected lymphocytes, potentially contributing to autoantibody persistence.

_Recovery Capital._ HSC reserve is a concrete, measurable component of Recovery Capital. Patients with preserved HSC function retain capacity for immune regeneration; those with exhausted HSCs do not.

*Biomarker development:*

If HSC exhaustion contributes to ME/CFS, several biomarkers could be developed:

    - *Circulating progenitors:* CD34#super[+] cell counts in peripheral blood as a proxy for bone marrow output
    - *Clonal diversity:* TCR/BCR repertoire diversity as an indirect measure of HSC diversity; reduced diversity suggests clonal restriction
    - *CHIP mutations:* Screening for clonal hematopoiesis mutations (DNMT3A, TET2, ASXL1) that indicate oligoclonal dominance
    - *Telomere length:* Particularly in HSC-enriched populations or as a predictor of replicative capacity
    - *Single-cell HSC profiling:* Advanced approaches (single-cell RNA-seq of bone marrow aspirates) could directly characterize HSC populations

*Treatment implications:*

If HSC exhaustion is a key mechanism, treatments could aim to:

_Preserve remaining HSCs._ Strict pacing, crash prevention, and anti-inflammatory therapy would minimize ongoing HSC consumption. This provides additional rationale for the “preservation” arm of ME/CFS management.

_Support HSC regeneration._ Fasting-mimicking diets have been shown to promote HSC regeneration in animal models and may be beneficial in ME/CFS. Growth factors (G-CSF, EPO) could be explored, though with caution given their complexity.

_Niche repair._ Therapies targeting the bone marrow microenvironment could potentially restore HSC function even when HSCs themselves are viable but quiescent due to niche dysfunction.

_HSC supplementation (speculative)._ In severe cases with confirmed HSC exhaustion, autologous HSC boost (collection during a good period, expansion ex vivo, reinfusion) could theoretically replenish reserves. This would require extensive development and carries significant risks.

*Limitations:*

This model is highly speculative. Direct evidence for HSC exhaustion in ME/CFS is limited; most evidence is indirect, based on peripheral blood markers and reasoning from aging biology. Bone marrow studies in ME/CFS are rare due to the invasiveness of biopsy. The model does not explain why some patients with long disease duration do eventually recover, or why some young patients do not recover. Additionally, HSC exhaustion could be a consequence rather than a cause of ME/CFS—a downstream effect of other primary mechanisms.
] <spec:hsc-exhaustion>

=== Multisystem Failure Cascade

A proposed sequence for ME/CFS development:

*Phase 1: Triggering Event.*

    - Infection (EBV, enteroviruses, SARS-CoV-2, others)
    - Severe stress (physical, psychological, surgical)
    - Combination of factors in vulnerable individual

*Phase 2: Acute Response.*

    - Normal sickness behavior program activates
    - Metabolic suppression, immune activation, behavioral changes
    - This is _adaptive_—conserving resources for recovery

*Phase 3: Failed Resolution.*

    - In most people, acute phase resolves in days to weeks
    - In ME/CFS-susceptible individuals, resolution fails
    - Possible reasons: genetic susceptibility, severity of insult, timing, comorbidities

*Phase 4: Lock Establishment.*

    - Autoantibodies generated and plasma cells established
    - Epigenetic changes stabilize “sick” gene expression
    - Metabolic pathways shift to new equilibrium
    - Brain recalibrates effort computation
    - Autonomic setpoints shift

*Phase 5: Stable Pathological State.*

    - Multiple locks reinforce each other
    - Perturbations (exertion, stress, infection) trigger defensive responses
    - Spontaneous recovery becomes unlikely
    - Treatment must address multiple locks

=== Temporal Dynamics of Cycle Recruitment
<subsec:cycle-recruitment-dynamics>

The multisystem failure cascade above describes discrete phases, but understanding _what triggers transitions between phases_—particularly the recruitment of additional vicious cycles—is critical for prevention strategies. The cycle dynamics framework (Chapter @ch:core-symptoms, @sec:pem) identifies specific triggers that may accelerate progression from single-cycle to multi-cycle disease.

==== Proposed Recruitment Sequence

#hypothesis(title: [Sequential Cycle Recruitment Model])[
ME/CFS typically begins with one primary vicious cycle (usually mitochondrial) and progressively recruits additional cycles over time:

*Stage 1* (0–6 months): Mitochondrial cycle only

$arrow.b$

*Stage 2* (6–18 months): Mitochondrial + Immune (triggered by sustained ROS signaling)

$arrow.b$

*Stage 3* (12–36 months): + Autonomic (triggered by chronic immune activation crossing BBB)

$arrow.b$

*Stage 4* ($>$2 years): + Neuroinflammatory + Endocrine (central sensitization)

$arrow.b$

*Stage 5* ($>$5 years): Full cycle engagement with epigenetic lock-in

*Evidence Grade*: D (hypothesized based on clinical progression patterns and mechanistic logic; not empirically validated as universal sequence)
]

==== Recruitment Triggers



#figure(
  table(
    columns: 6,
    // TODO: fix columnsp{5.5cm}p{2.5cm}p{2cm}}
  
  [*Trigger*], [*Proposed Mechanism*], [*Target Cycle*], [*Evidence*],
  
  [Severe crashes (Grade 4–5)], [Massive ROS release triggers inflammatory cascade; exceeds repair capacity], [Immune, neuroinflammatory], [D],
  
  
  [Secondary infections], [Reactivate immune system; overwhelm already-depleted reserves], [Immune], [C],
  
  
  [Cumulative damage threshold], [Gradual mtDNA mutations reach critical mass], [Mitochondrial (amplification)], [C],
  
  
  [Chronic hypoperfusion], [Sustained autonomic dysfunction impairs BBB, enables CNS penetration], [Neuroinflammatory], [D],
  
  
  [Psychosocial stress], [HPA axis activation recruits endocrine dysfunction], [Endocrine], [C],
  
  ),
  kind: table, supplement: [Table], caption: [Hypothesized Triggers for Cycle Recruitment],
) <tab:recruitment-triggers>


#key-point(title: [Prevention Implications of Cycle Recruitment])[
If severe crashes are the primary trigger for cycle recruitment, then *aggressive pacing from diagnosis* may prevent or delay progression from single-cycle to multi-cycle disease:

*Testable prediction*: Patients adhering strictly to energy envelope pacing show slower cycle recruitment over 2 years (hazard ratio $<$0.5 for each additional cycle activation) compared to those with frequent crashes.

*Clinical implication*: Pediatric ME/CFS studies report 54–94% improvement or recovery rates @Rowe2017pediatric, while adult ME/CFS shows median recovery of only 5% (range 0–31%) in systematic review @Cairns2005prognosis. If this difference reflects disease stage rather than age _per se_, the high early-recovery rates may result from aggressive rest preventing cycle recruitment beyond Stage 1–2. The low adult recovery rate in established disease would then reflect multi-cycle involvement where spontaneous resolution becomes increasingly improbable with each additional engaged cycle—a prediction of the model requiring prospective validation, not an empirical observation.

This framework transforms pacing from “symptom management” to *disease-modifying therapy*—not merely reducing current symptoms but preventing irreversible progression.
]

==== Sentinel Biomarkers for Cycle Activation

Early detection of cycle recruitment could enable preemptive intervention:

    - *Immune cycle sentinel*: Rising IL-6, TNF-$alpha$, or emergence of autoantibodies before clinical immune symptoms manifest
    - *Autonomic cycle sentinel*: Declining HRV, increasing resting heart rate, or emerging orthostatic intolerance
    - *Neuroinflammatory sentinel*: Rising substance P, emerging sensory sensitivities, or new cognitive symptoms
    - *Endocrine sentinel*: Blunted cortisol awakening response, emerging temperature dysregulation

Regular monitoring for these sentinel biomarkers in early-stage patients could trigger preemptive intervention before full cycle activation.

==== Research Priority: Inception Cohort Study

Validating the cycle recruitment model requires a prospective inception cohort:

    - *Population*: New-onset ME/CFS ($<$6 months), confirmed Stage 1–2 status
    - *Follow-up*: 5 years with quarterly cycle mapping (Years 1–2), semi-annual (Years 3–5)
    - *Intervention sub-study*: Randomize to intensive pacing support vs.\ standard care; compare cycle recruitment rates
    - *Sample size*: $n = 130$ (65 per arm) for 80% power to detect HR = 0.5 for cycle recruitment
    - *Primary endpoint*: Time to first additional cycle activation (Stage 1–2 $arrow.r$ Stage 3+)

Such a study would provide the first empirical test of whether crash prevention truly delays disease progression.

=== Orthostatic Intolerance as Potential Upstream Driver
<subsec:oi-lynchpin>

#key-point(title: [OI as Mechanistic Lynchpin in Early ME/CFS])[

*Certainty: 0.55.* Orthostatic intolerance may function as an upstream mechanistic driver in early ME/CFS, triggering a cascade of secondary dysfunction across immune, metabolic, and neuroimmune systems. This model is grounded in pediatric clinical observations and splanchnic perfusion physiology, though high-quality trials testing the causal direction remain limited.

*Clinical Foundation: Pediatric Treatment Response*
Pediatric ME/CFS specialists consistently report that aggressive orthostatic intolerance (OI) treatment produces improvements extending far beyond cardiovascular symptoms—including fatigue duration and severity, cognitive function, post-exertional malaise patterns, and general wellbeing @Rowe2017pediatric. Rowe and colleagues document recovery or substantial improvement in 40–70% of pediatric ME/CFS patients with aggressive tilt table-guided fludrocortisone, midodrine, and compression therapy, even in patients with severe initial disability. Critically, symptom improvements precede increases in exercise tolerance by weeks to months, suggesting causality rather than simple symptom clustering.

*Proposed Mechanism: Splanchnic Perfusion as Integrative Hub*
During orthostatic stress, splanchnic blood flow declines by 50–80% to maintain cerebral and coronary perfusion. In dysautonomic patients, this adaptive response becomes exaggerated, creating chronic splanchnic hypoperfusion that triggers three downstream cascades:

_Gut barrier failure and endotoxemia._ Splanchnic ischemia impairs intestinal epithelial function, increasing zonulin-mediated permeability and allowing lipopolysaccharide (LPS) translocation. Chronic LPS exposure triggers mast cell activation, systemic inflammation, and adaptive immune responses (Section @sec:zonulin-permeability).

_Metabolic dysregulation._ The small intestine normally produces 40% of the body's glutamine, a critical fuel for rapidly dividing cells. Splanchnic hypoperfusion reduces intestinal glutamine synthesis, depleting substrates for immune cell proliferation and mitochondrial recovery. This may explain the selective energy dysfunction pattern in ME/CFS.

_Neuroimmune amplification._ Chronic endotoxemia and sleep disruption (consequent to autonomic instability) activate neuroinflammation through microglia and astrocytes. Over weeks to months, epigenetic changes (histone modifications, DNA methylation) lock cells into pro-inflammatory phenotypes (Section @sec:trained-immunity), and autoantibodies against autonomous nerve receptors establish, perpetuating dysfunction even if OI is later corrected.

*Integration with Septad Framework*
Within the vicious cycle septad (Section @sec:septad), OI occupies a distinctive position: it is simultaneously a primary symptom (orthostatic intolerance) and a mechanistic hub connecting infection/immune activation → autonomic dysfunction → splanchnic ischemia → gut barrier failure, endotoxemia, and secondary metabolic and immune dysfunction. Early OI treatment interrupts the cycle before epigenetic lock-in and autoimmune establishment, explaining the higher efficacy in recently-onset disease.

*Testable Predictions*
This framework generates specific, falsifiable predictions:

    - *Age-stratified efficacy.* Aggressive early OI treatment should produce higher remission rates in patients with disease onset $<$6 months versus $>$2 years, due to prevention of epigenetic reprogramming and autoantibody establishment.

    - *Barrier marker response.* Patients responding to OI treatment should show declining serum zonulin, I-FABP, and LPS-binding antibodies; non-responders should show persistent elevation despite OI correction.

    - *Symp tom sequence.* Orthostatic symptoms should improve first (weeks), followed by fatigue (4–12 weeks), then cognition and immune symptoms (8–16 weeks). Reversal of this sequence (cognition improving before orthostasis) would argue against OI as primary driver.

*Adult Implications and Caveats*
In adults with long-standing ME/CFS (\>5 years), aggressive OI treatment shows lower response rates @Newton2007, consistent with the hypothesis that secondary dysfunctions have become epigenetically entrenched. However, recent-onset adult ME/CFS ($<$1 year, high OI severity) may show responses comparable to pediatric patients, suggesting disease duration rather than age per se is the critical variable. This predicts that OI-focused treatment in recently-diagnosed adults with prominent autonomic features should receive high priority.

*Clinical Rationale: Front-Loading OI Treatment*
This model provides mechanistic justification for front-loading orthostatic interventions (Section @subsubsec:front-loading-strategy) early in disease course, even when cardiovascular symptoms seem modest. Delaying OI treatment in hope of spontaneous resolution risks epigenetic reprogramming and autoimmunity establishment, narrowing the window for cascade interruption.

*Limitations*
The proposed mechanism remains partially speculative: (1) splanchnic perfusion has not been directly measured in ME/CFS populations; (2) OI-related barrier failure and endotoxemia are inferred from indirect markers; (3) the temporal sequence of epigenetic changes remains unclear; (4) approximately 30–40% of ME/CFS patients lack significant OI, suggesting alternative primary drivers for OI-negative subgroups; (5) controlled trials of aggressive early OI treatment with non-cardiovascular endpoints are lacking.

*Research Priorities*
Resolving this question requires: (1) comparative longitudinal trials of aggressive versus standard OI treatment in early-onset ME/CFS with non-cardiovascular endpoints; (2) measurement of splanchnic perfusion (Doppler ultrasound) and gut barrier markers (zonulin, I-FABP) in OI-positive and OI-negative subgroups; (3) epigenetic profiling of microglial and splanchnic endothelial cells in responders versus non-responders to OI treatment; (4) studies of the early-intervention trial concept described in Chapter @ch:proposed-studies.

] <key:oi-lynchpin>

=== Selective Energy Dysfunction Framework
<subsec:selective-dysfunction-integration>

The selective energy dysfunction hypothesis (Section @sec:selective-dysfunction) proposes that ME/CFS preferentially affects CNS-dependent, demand-responsive processes while sparing autonomous local processes. This framework integrates with and clarifies several aspects of the vicious cycle models above.

#key-point(title: [Integration of Selective Dysfunction with Unifying Models])[
*Clarifies the vicious cycle targets:* The energy-immune cycle and autonomic-vascular cycle both operate through CNS coordination. If CNS energy is the primary bottleneck, all cycles dependent on CNS signaling become vulnerable simultaneously—explaining why ME/CFS affects multiple systems.

*Explains preserved functions:* Hair growth, nail growth, and basal cardiac automaticity continue because they operate via local autonomous regulation ($delta_("CNS") < 0.2$) outside the affected coordination pathways.

*Reframes the “stuck state”:* The multi-lock model proposes multiple independent locks. Selective dysfunction suggests these locks may be downstream manifestations of a single upstream CNS energy bottleneck. If the brain cannot generate coordination signals, all CNS-dependent systems fail regardless of their local machinery's integrity.

*Explains pharmacological bypass:* The effectiveness of direct-acting agents (midodrine, pyridostigmine) that bypass CNS coordination supports the selective dysfunction model—peripheral end-organs are functional; only the coordination signal is missing.
]

*Evidence Synthesis Across Systems.*

The selective energy dysfunction framework is supported by consistent evidence across multiple physiological systems, each documenting preserved baseline function with impaired demand-responsive capacity:

    - *Energy Metabolism (Chapter @ch:energy-metabolism, Section @sec:selective-energy-dysfunction):* CNS-dependent and demand-responsive processes show selective impairment while autonomous steady-state peripheral functions (hair growth, nail growth, basal cardiac automaticity) continue at apparently normal rates despite severe systemic symptoms. This pattern distinguishes selective coordination failure from global mitochondrial dysfunction.

    - *Neurological System (Chapter @ch:neurological, Section @sec:brain-bottleneck):* Near-universal cognitive dysfunction, documented brain hypometabolism, neuroinflammation (45–199% elevation across key regions), and catecholamine deficiency suggest the brain serves as the primary energy bottleneck. The brain's disproportionate energy demand (20–25% of total energy while comprising only 2% of body mass) makes it uniquely vulnerable to energy constraint, with downstream failures in autonomic coordination affecting all CNS-dependent systems.

    - *Cardiovascular System (Chapter @ch:cardiovascular, Section @sec:cerebral-orthostatic):* Cerebral blood flow abnormalities exemplify the selective dysfunction pattern: 91% of ME/CFS patients with normal resting heart rate and blood pressure show abnormal CBF reduction during orthostatic challenge, with reduction magnitude 3.7-fold greater than controls (26% vs.\ 7%). CBF remains reduced even after returning to supine position, correlating with disease severity rather than hemodynamic parameters, indicating intrinsic cerebrovascular or metabolic dysfunction.

Collectively, these findings establish a coherent mechanistic framework where CNS energy failure drives the selective pattern: autonomous processes escape impairment because they operate independently of CNS coordination; CNS-dependent demand-responsive processes fail because the coordinating organ itself is energy-depleted. This framework explains why pharmacological agents bypassing CNS coordination (midodrine, fludrocortisone) can partially restore function in otherwise energy-depleted patients.

*Reconciliation with Multi-Lock Model.*

The selective dysfunction and multi-lock models are not mutually exclusive:

    - *CNS energy crisis as initiating lock*: The multi-lock cascade may begin with CNS energy failure, which then triggers downstream immune, epigenetic, and autonomic locks
    - *Lock entrenchment*: Even if CNS energy is restored, downstream locks (autoantibodies, epigenetic changes) may persist independently
    - *Therapeutic implications*: Early intervention targeting CNS energy might prevent lock establishment; late intervention requires addressing both primary bottleneck and established downstream locks

The compartmental model (Figure @fig:compartmental-energy-model) visualizes how CNS serves as both the primary dysfunction site and the coordination bottleneck for other compartments.

=== Circadian Energy Distribution Failure
<subsec:circadian-energy-distribution>

#hypothesis(title: [Circadian Distribution Failure Hypothesis])[

The suprachiasmatic nucleus (SCN) coordinates energy allocation across the 24-hour cycle in healthy individuals @kalsbeek2012suprachiasmatic @van2012circadian. In ME/CFS, we hypothesize that SCN dysfunction causes *temporal energy misallocation*: the brain distributes its limited energy budget incorrectly across the day, resulting in the paradoxical “second wind” phenomenon where patients often feel worse during normal waking hours and experience improved energy in the evening.

*Normal Circadian Energy Distribution.*
The SCN orchestrates metabolic rhythms through multiple pathways @van2012circadian:

  - *Orexin system activation*: Prepares glucose metabolism and cardiovascular function for active phase
  - *HPA axis entrainment*: Cortisol peaks in morning to mobilize energy resources
  - *Core body temperature rhythm*: Temperature rises during day, facilitating metabolic activity
  - *Melatonin suppression*: Daytime suppression maintains alertness and energy availability
  - *Peripheral clock synchronization*: Coordinates tissue-specific metabolic programs

*ME/CFS Circadian Disruption.*
Multiple lines of evidence suggest circadian dysfunction in ME/CFS:

_Cortisol rhythm abnormalities:_
ME/CFS patients show flattened diurnal cortisol variation, with lower morning levels and higher evening levels compared to controls @nater2008stress @papadopoulos2009hypothalamus. This represents a _temporal misallocation_ of HPA axis resources.

_Sleep-wake cycle disruption:_
Sleep dysfunctions in ME/CFS include sleep reversal patterns (sleeping throughout day, awake at night), suggesting fundamental circadian misalignment @mccarthy2022circadian. Disrupted TGF-$beta$ signaling may disrupt physiological rhythms in sleep, activity, and cognition.

_Temperature rhythm alterations:_
While core body temperature mean values are normal, ME/CFS patients show greater variability in circadian temperature rhythm @williams2001circadian, potentially indicating SCN dysregulation of thermoregulatory energy allocation.

_“Second wind” phenomenon:_
Many ME/CFS patients report feeling worse in morning when energy should be allocated for activity, yet experience paradoxical energy improvement in evening hours. This temporal inversion is consistent with inverted circadian energy distribution.

*Hypothesized Mechanism.*
In ME/CFS with limited total energy capacity, SCN dysfunction causes:

  - *Morning energy deficit*: Failure to allocate sufficient resources during normal active phase (flattened cortisol peak, poor sleep quality prevents restoration)
  - *Evening energy surge*: Inappropriate energy allocation during evening hours (elevated evening cortisol, disrupted melatonin timing)
  - *Forced circadian misalignment*: Attempting to follow normal daytime schedule while energy distribution favors evening creates additional physiological stress
  - *Cycle reinforcement*: Poor daytime function leads to later activity shifting, further disrupting circadian entrainment

*Testable Predictions.*

  - *Inverted energy curve*: Metabolic measurements (cortisol, glucose, temperature) should show relative inversion compared to healthy controls
  - *Chronotype shift*: ME/CFS patients should show delayed chronotype preference and improved function with delayed schedules
  - *Forced alignment worsens symptoms*: Requiring strict morning schedules should worsen symptom severity
  - *Night-shift paradox*: Some ME/CFS patients may report _improved_ function when working night shifts aligned with their endogenous rhythm
  - *Circadian biomarkers*: Dim light melatonin onset (DLMO) should be phase-delayed in ME/CFS patients
  - *Activity pattern correlation*: Patients with more severe “second wind” should show more pronounced cortisol rhythm flattening

*Treatment Implications.*

  - *Schedule accommodation*: Allow patients to follow endogenous rhythm rather than forcing conventional schedule (may reduce symptom burden)
  - *Light therapy*: Morning bright light exposure to entrain SCN (with caution—note previous studies showed limited efficacy @williams2002therapy)
  - *Melatonin timing*: Strategically timed melatonin to shift circadian phase (individualized based on DLMO measurement)
  - *Activity scheduling*: Align important activities with patient's natural energy peaks rather than conventional timing

*Important null finding:*
Williams et al.\ found that neither melatonin nor bright-light phototherapy showed significant effects on ME/CFS symptoms or circadian phase markers @williams2002therapy. This _negative result is informative_: simple circadian re-entrainment may be insufficient if the underlying problem is SCN-level energy distribution dysfunction rather than mere phase misalignment.

*Integration with Other Hypotheses.*

  - *Energy limitation models*: Assumes limited total energy (consistent with metabolic dysfunction hypotheses); adds temporal distribution component
  - *HPA axis dysfunction*: Explains flattened cortisol rhythm as consequence of SCN energy misallocation
  - *Autonomic dysfunction*: SCN coordinates autonomic rhythms; dysfunction could contribute to orthostatic intolerance variability across day
  - *Immune dysfunction*: Circadian clocks regulate immune function; SCN dysfunction may contribute to temporal patterns in inflammation @scheiermann2018circadian

*Limitations and Uncertainties.*

  - Direct SCN imaging/function studies in ME/CFS patients lacking
  - “Second wind” phenomenon documented anecdotally but not systematically quantified
  - Null findings from light therapy/melatonin trials suggest simple circadian interventions insufficient
  - Unclear whether SCN dysfunction is primary or secondary consequence
  - Individual variability high—not all patients report “second wind”

*Certainty:* 0.50 (cortisol rhythm abnormalities documented; circadian disruption well-established; SCN-level mechanism requires validation)
] <hyp:circadian-energy-distribution>

=== Disease Subtype Progression
<subsec:subtype-progression>

#hypothesis(title: [Subtype Progression Hypothesis])[

ME/CFS may follow a predictable progression from CNS-primary disease to multi-system involvement over years, with disease duration serving as a proxy for progression stage. We hypothesize four stages: (1) CNS-primary (cognitive-dominant, mild), (2) autonomic spread (CNS + POTS), (3) peripheral involvement (multi-system + PEM), and (4) global/systemic (severe, bedbound). Early intervention may prevent progression beyond the initial stage.

*Evidence for Progression.*
Several lines of evidence support a staged progression model:

_Diagnostic delay and prognosis._ Castro-Marrero et al.\ reported that disease duration strongly predicted outcome: patients who improved had mean duration of 2.3 years versus 6.7 years for those who did not improve @CastroMarrero2022prognosis. This suggests that something changes with disease duration—consistent with progressive entrenchment of pathological processes.

_Course heterogeneity._ Stoothoff et al.\ identified five distinct illness trajectory patterns in a large cohort (n=1,086): fluctuating (59.7%), constantly worsening (15.9%), persisting (14.1%), relapsing-remitting (8.5%), and improving (1.9%) @Stoothoff2017subtypes. The constantly worsening subgroup showed significantly higher multi-system severity, suggesting progressive accumulation of affected systems.

_CNS dysfunction prominence._ Cognitive symptoms are reported by 85–89% of ME/CFS patients, and brainstem hypoperfusion is among the earliest neuroimaging findings @pmc11899462cog. This suggests CNS involvement may precede peripheral manifestations, consistent with a CNS-primary initial stage.

_Autonomic progression._ ME/CFS patients with comorbid POTS show worse outcomes than those with POTS alone, suggesting that the addition of autonomic dysfunction to an existing CNS-primary state represents a progression milestone.

*Proposed Stage Model.*

    - *Stage 1—CNS-Primary*: Predominantly cognitive symptoms (brain fog, concentration difficulty), mild fatigue, preserved physical capacity. Neuroimaging may show early hypometabolism. Duration: onset to $tilde$6 months.

    - *Stage 2—Autonomic Spread*: CNS symptoms plus orthostatic intolerance (POTS, NMH), heart rate dysregulation, temperature instability. Autonomic testing abnormal. Duration: 6 months to $tilde$2 years.

    - *Stage 3—Peripheral Involvement*: Multi-system symptoms including PEM, immune activation, sleep disturbance, pain. Vicious cycles (Chapter @ch:integrative-models) become established. Duration: 2–5 years.

    - *Stage 4—Global/Systemic*: Severe, often bedbound. All systems affected. Epigenetic changes, autoantibodies, and metabolic shifts create self-sustaining pathology (the “multi-lock” state). Duration: $>$5 years.

*Testable Predictions.*

    - *Stage-biomarker correlation*: Patients at earlier stages should show fewer biomarker abnormalities (e.g., autoantibodies, NK cell dysfunction, metabolic shifts) than later-stage patients, controlling for severity.
    - *Longitudinal tracking*: A prospective inception cohort (n$gt.eq$200, 5-year follow-up) should document sequential appearance of system involvement following the predicted stage order.
    - *Early intervention*: Aggressive treatment within 6 months of onset (Stage 1) should produce higher recovery rates than identical treatment at Stage 3–4, independent of treatment type.
    - *Acute vs.\ gradual onset*: Acute-onset patients (e.g., post-infectious) may progress faster through stages than gradual-onset patients, but both should follow the same sequence.

*Treatment Implications.*

    - *Stage-appropriate intervention*: Stage 1 patients may respond to CNS-targeted treatments (anti-neuroinflammatory agents, cognitive rest); Stage 3–4 patients likely require multi-targeted approaches.
    - *Urgency of early treatment*: If progression is time-dependent, the window for preventing lock-in of severe disease may be narrow ($<$6–12 months). This supports aggressive early treatment even before full diagnostic criteria are met.
    - *Prognosis estimation*: Stage assessment could help set realistic expectations and guide treatment intensity.

*Limitations.*
All supporting evidence is cross-sectional or retrospective; no longitudinal study has tracked actual stage transitions in individual patients. The proposed stages may not be sequential in all patients—some may skip stages or experience bidirectional transitions. Disease heterogeneity means different subtypes may follow different progression patterns. The model also does not account for patients with rapid severe onset who appear to enter Stage 3–4 immediately.

*Certainty:* 0.45 (diagnostic delay/prognosis data supportive; staged progression pattern plausible but unvalidated longitudinally)
] <hyp:disease-stage-progression>

#hypothesis(title: [Neutrophil Functional Exhaustion Hypothesis])[

Hoel et al.\ (2026) @Hoel2026proteome documented a paradox: ME/CFS patients have normal peripheral neutrophil counts but profoundly suppressed circulating neutrophil-derived proteins—hallmark granule components (BPI, PADI4, MMP9, ELANE, AZU1, LTF) are all significantly reduced. We propose that ME/CFS neutrophils exist in a state of *functional exhaustion*: they are present in normal numbers but hypoactivated, failing to degranulate or mount appropriate antimicrobial responses.

*Mechanistic Basis.*
Chronic low-grade immune activation—whether from persistent viral antigens, autoantibodies, or gut-derived LPS—may drive neutrophil tolerance, analogous to the endotoxin tolerance observed in sepsis survivors. Repeated subthreshold activation exhausts granule stores without triggering full antimicrobial programs. This would explain the simultaneous presence of elevated inflammatory markers (complement, cytokines) alongside suppressed neutrophil effector function: the alarm system is perpetually activated while the first-responder force is depleted.

*Consequences.*
Functionally exhausted neutrophils would impair: (1) pathogen clearance, permitting low-grade infections and viral reactivation; (2) NET formation, reducing extracellular antimicrobial defense; (3) tissue repair, as neutrophil-derived growth factors are diminished; and (4) immune regulation, since neutrophils modulate adaptive immunity through cytokine secretion and antigen presentation. This hypothesis explains why ME/CFS patients are susceptible to opportunistic infections without overt immunodeficiency.

*Testable Predictions.*

    - Ex vivo stimulation of ME/CFS neutrophils with PMA or fMLP should produce attenuated degranulation and ROS production compared to healthy controls, despite normal cell counts
    - Neutrophil granule protein content (measured by intracellular flow cytometry) should be reduced in ME/CFS
    - Recovery from ME/CFS (e.g., daratumumab responders) should coincide with normalization of circulating neutrophil granule proteins
    - Interventions restoring neutrophil function (G-CSF priming, if tolerable) should improve innate immune defense markers

*Treatment Implications.*
If neutrophils are functionally exhausted rather than absent, therapeutic strategies might include: low-dose G-CSF to prime neutrophil activation (used cautiously given the inflammatory milieu), resolution-phase lipid mediators (resolvins, protectins) to reprogram rather than stimulate neutrophils, or addressing the upstream drivers of chronic activation (autoantibodies, persistent antigens) to allow neutrophil recovery.

*Certainty: 0.40.* Strong proteomic evidence for suppressed neutrophil signature (Hoel 2026, n=50+29, validated platform), complemented by functional neutrophil studies (Kennedy 2004). However, the exhaustion mechanism is inferred, not directly demonstrated; alternative explanations (e.g., altered neutrophil lifespan, bone marrow output changes) have not been excluded.
] <hyp:neutrophil-exhaustion>

#hypothesis(title: [Chronic Exerkine Signaling Hypothesis])[

Exercise transiently elevates FGF-21, GDF-15, and other “exerkines” to coordinate systemic metabolic adaptation—mobilizing energy substrates, promoting insulin sensitivity, and initiating tissue repair. Hoel et al.\ (2026) @Hoel2026proteome found that these exerkines are chronically elevated in ME/CFS, even at rest, with FGF-21 validated in an extended cohort of 278 participants. We hypothesize that this chronic exerkine elevation represents a *metabolic emergency broadcast* that the body cannot resolve, creating a persistent state of metabolic mobilization without the exercise stimulus that would normally trigger substrate utilization and resolution.

*Mechanistic Cascade.*
The normal exerkine cycle is: exercise → energy depletion → exerkine release → substrate mobilization → recovery → exerkine normalization. In ME/CFS, we propose: tissue hypoxia + mitochondrial dysfunction → energy depletion _at rest_ → exerkine release → substrate mobilization attempted → impaired utilization (mitochondrial dysfunction prevents efficient oxidative metabolism) → persistent energy deficit → continued exerkine release. The cycle cannot resolve because the downstream utilization machinery is impaired.

*Why This Matters.*
Chronically elevated FGF-21 drives hepatic gluconeogenesis, lipolysis, and ketogenesis—metabolic programs appropriate for acute exercise recovery but harmful when sustained. Chronic GDF-15 elevation suppresses appetite (potentially explaining the anorexia some ME/CFS patients experience) and alters body composition. Persistent leptin and resistin elevation contributes to insulin resistance and inflammatory signaling. This “stuck metabolic emergency” may explain why ME/CFS patients feel as though they are perpetually recovering from extreme exertion: biochemically, they are.

*Testable Predictions.*

    - FGF-21 and GDF-15 levels should correlate with disease severity (particularly functional capacity and PEM threshold)
    - Successful treatment (by any mechanism) should normalize exerkine levels as downstream consequence
    - ME/CFS patients should show blunted _additional_ exerkine response to actual exercise (ceiling effect), unlike healthy controls who show large fold-increases
    - Metabotype 2 patients (highest FGF-21 in Hoel 2026) should have the most severe metabolic symptoms and lowest exercise tolerance

*Treatment Implications.*
Rather than targeting exerkines directly (they may be compensatory), treatment should address the upstream energy deficit: mitochondrial support (CoQ10, NAD#super[+] precursors), tissue oxygenation improvement (addressing endothelial dysfunction), or substrate utilization enhancement. FGF-21 could serve as a treatment response biomarker—declining levels would indicate metabolic recovery even before symptom improvement becomes apparent.

*Certainty: 0.45.* FGF-21 elevation robustly validated (n=278, ELISA). The exerkine framework is well-established in exercise physiology. However, the “stuck cycle” mechanism is inferred from the chronic elevation pattern, and alternative explanations (hepatic stress, mitochondrial myopathy) contribute to uncertainty. Longitudinal studies tracking exerkines before and after treatment are needed.
] <hyp:chronic-exerkine>

#speculation(title: [Secretome-Driven Vascular Autoimmune Loop])[

Hoel et al.\ (2026) @Hoel2026proteome documented two seemingly contradictory patterns: (1) reduced intracellular protein release (especially from skeletal muscle and bone marrow) and (2) increased secreted protein release (coagulation factors, complement, chemokines, hormones). We speculate that this secretome shift—elevated extracellular proteins with altered post-translational modifications from the disease environment—may generate *neo-antigens* that drive autoimmune targeting of the vasculature.

*Proposed Mechanism.*
Under conditions of tissue hypoxia, oxidative stress, and chronic inflammation, secreted proteins may acquire abnormal modifications (carbonylation, citrullination, oxidized lipid adducts). Citrullinated proteins are recognized neo-antigens in rheumatoid arthritis; oxidized lipoproteins drive atherosclerotic autoimmunity. In ME/CFS, the chronically stressed secretome could present modified self-proteins to the adaptive immune system, generating autoantibodies against vascular and endothelial targets. The elevated complement components (CFD, C6) and reduced neutrophil proteins documented by Hoel et al.\ are consistent with complement-mediated vascular injury. Elevated histones (which are known damage-associated molecular patterns) and reduced neutrophil MPO (reducing antigen clearance) could amplify this process.

*Why This Is Speculative.*
No study has directly demonstrated neo-antigen formation in ME/CFS secreted proteins, nor has vascular-specific autoimmunity been confirmed. The hypothesis chain (hypoxia → modified secretome → neo-antigen presentation → autoantibody generation → vascular targeting) involves multiple unverified links. However, it would parsimoniously connect the proteomic findings (secretome shift), the autoimmune evidence (GPCR autoantibodies, daratumumab response), and the vascular dysfunction (endothelial markers, Ephrin disruption) into a single mechanistic arc.

*Testable Predictions.*

    - ME/CFS serum should contain proteins with higher rates of oxidative and citrullination modifications than healthy controls
    - Autoantibodies targeting modified vascular proteins (citrullinated vimentin, oxidized LIPG) should be detectable in a subset of patients
    - The autoimmune ME/CFS subset (daratumumab responders) should show the strongest secretome shift

*Certainty: 0.25.* Speculative hypothesis connecting established findings (secretome shift, autoimmunity, vascular dysfunction) through an unproven mechanism. Requires dedicated proteomic studies of post-translational modifications in ME/CFS secreted proteins.
] <spec:secretome-autoimmune>

#speculation(title: [Bone Marrow Stress and Immune Lineage Reprogramming])[

The Hoel et al.\ (2026) tissue panel analysis @Hoel2026proteome revealed that bone marrow showed the most dramatic protein reductions of any tissue type (25.4% overall net downregulation), with widespread decreases in both intracellular and secreted proteins. Simultaneously, the immune cell analysis showed a shift from innate (neutrophil/granulocyte suppression) toward adaptive predominance (elevated NK and T cell markers). We speculate that ME/CFS involves a *bone marrow stress state* that reprograms hematopoietic stem cell lineage commitment—favoring lymphoid over myeloid differentiation—resulting in the observed immune imbalance.

*Biological Plausibility.*
Chronic inflammatory signaling (especially IFN-$gamma$ and TNF-$alpha$, both elevated in ME/CFS) is known to reprogram hematopoietic stem cells toward lymphoid differentiation at the expense of myeloid lineages—a phenomenon termed “emergency lymphopoiesis.” This would produce exactly the pattern Hoel et al.\ observed: normal or elevated lymphoid cell markers alongside suppressed myeloid (neutrophil, monocyte) protein signatures. Bone marrow metabolic stress (reflected in the severe bone marrow protein reductions) could further impair normal granulopoiesis, producing functionally compromised neutrophils even at normal counts.

*Testable Predictions.*

    - Bone marrow biopsy in ME/CFS patients should show altered myeloid:lymphoid progenitor ratios
    - Hematopoietic stem cells from ME/CFS patients should show epigenetic marks consistent with inflammatory reprogramming
    - The bone marrow protein signature should improve with effective immunomodulatory treatment

*Certainty: 0.20.* Highly speculative—bone marrow has not been directly studied in ME/CFS. The tissue panel analysis is indirect (circulating proteins annotated to bone marrow origin). However, the pattern is striking and consistent with known inflammatory reprogramming of hematopoiesis.
] <spec:bone-marrow-reprogramming>

== Hypothesis-Specific Treatment Implications
<sec:treatment-implications>

Table @tab:treatment-by-hypothesis maps selected hypotheses to their logical treatment implications, with honest assessment of evidence and accessibility. This table focuses on hypotheses with actionable treatment options; speculative hypotheses without current interventions are omitted but appear in Table @sec:hypothesis-ranking.

// Placeholder for commented-out table:
#figure([], kind: table, supplement: [Table], caption: [Treatment Implications by Hypothesis — table conversion pending]) <tab:treatment-by-hypothesis>

/* TODO: Fix this table - columns need adjustment
#table(
  columns: 6,
  // TODO: fix columnsp{4.2cm}p{1.8cm}p{2.3cm}p{3.2cm}}
// caption: [Treatment Implications by Hypothesis]

[*Hypothesis*], [*Logical Treatment*], [*Evidence for Treatment*], [*Accessibility*], [*Notes*],

[*Hypothesis*], [*Logical Treatment*], [*Evidence for Treatment*], [*Accessibility*], [*Notes*],

[Autonomic dysfunction], [Salt/fluids; compression; fludrocortisone; midodrine; ivabradine; beta-blockers (ch14b)], [Moderate (POTS literature)], [High], [Often first-line; helps many],



[GPCR autoantibodies], [Immunoadsorption; BC007; daratumumab], [Preliminary–Moderate], [Very Low (specialized centers)], [Most promising for autoimmune subset],



[Plasma cell autoimmunity], [Daratumumab; bortezomib], [Preliminary (pilot study)], [Very Low], [60% response in pilot],



[Mitochondrial dysfunction], [CoQ10 (ubiquinol); NAD#super[+] precursors; D-ribose; B vitamins; PQQ (@sec:mitochondrial-support)], [Low–Moderate], [High], [Widely used; modest benefit for many],



[NAD#super[+] depletion], [NR/NMN 1000–2000 mg/day for $gt.eq$10 weeks], [Preliminary], [Moderate (cost)], [RCT in Long COVID showed NAD#super[+] increase],



[Neuroinflammation], [LDN; anti-inflammatories; avoid triggers], [Low–Moderate], [High (LDN)], [LDN widely used; helps some],



[Gut dysbiosis], [Probiotics; dietary changes; possibly FMT], [Low], [High (probiotics) to Very Low (FMT)], [Variable response],



[Endothelial dysfunction], [L-citrulline/arginine; statins; low-dose aspirin; omega-3s], [Theoretical], [High], [Untested in ME/CFS specifically],



[Viral persistence], [Valacyclovir; valganciclovir (@sec:antivirals)], [Low], [Moderate], [May help subset with viral markers],



[Small fiber neuropathy], [IVIG; immunomodulation], [Preliminary], [Low (IVIG access)], [Helps some with documented SFN],



[Circadian disruption], [Melatonin; light therapy; time-restricted feeding; chronotherapy], [Theoretical], [High], [Low risk; may help sleep],



[Glymphatic failure], [Address CCI if present; optimize sleep; position], [Theoretical], [Variable], [CCI surgery controversial],



[Neutrophil functional exhaustion (@hyp:neutrophil-exhaustion)], [Address upstream drivers (autoantibodies, chronic antigens); resolution mediators (resolvins); cautious G-CSF priming], [Theoretical], [Variable], [Neutrophil functional assays needed first],



[Chronic exerkine signaling (@hyp:chronic-exerkine)], [Mitochondrial support; tissue oxygenation; FGF-21 as treatment response biomarker], [Theoretical], [High (biomarker monitoring)], [ELISA-based; FGF-21 decline may predict clinical improvement],



)
*/

#warning-env(title: [The Accessibility Crisis in ME/CFS Treatment])[
The most promising emerging treatments are essentially inaccessible to most patients:

*High-Barrier Treatments:*

    - *Daratumumab* @Fluge2025daratumumab: Requires specialized infusion center, costs \$10,000–\$20,000+ per treatment cycle, rarely covered by insurance for ME/CFS, multiple infusions needed
    - *Immunoadsorption* @Stein2024immunoadsorption: Available only at handful of centers worldwide, requires hospitalization, costs \$15,000–\$50,000, not FDA-approved for ME/CFS in US
    - *Both*: Require travel to specialized centers—impossible for severe/bedbound patients

*Low-Barrier Treatments:*

    - *Accessible*: Pacing, supplements (CoQ10, NAD+ precursors), salt/fluids, compression
    - *Evidence*: Modest effect sizes; help some patients but rarely produce major improvements

This creates a cruel disparity: the sickest patients, often bedbound and unable to travel or advocate for themselves, have the _least_ access to potentially transformative treatments. Meanwhile, accessible interventions provide only modest symptomatic relief.

*Implications:*
Research must prioritize: (1) biomarkers predicting treatment response to guide patient selection, (2) developing accessible formulations of effective therapies, and (3) understanding mechanisms to create next-generation treatments that don't require specialized delivery.
] <warn:accessibility-gap>

== Relationships to Other Conditions
<sec:related-conditions>

=== Fibromyalgia

Fibromyalgia (FM) shares substantial symptom overlap with ME/CFS, leading to diagnostic confusion and frequent comorbidity. Both conditions feature chronic widespread pain, fatigue, sleep disturbances, and cognitive difficulties. However, several features distinguish them:

*Shared Mechanisms.*
Both conditions demonstrate central sensitization (amplified pain processing in the CNS), sleep architecture abnormalities (reduced slow-wave sleep, alpha-delta intrusion), autonomic dysfunction (altered HRV, orthostatic intolerance), and neuroendocrine changes (HPA axis dysfunction, altered cortisol patterns).

*Thalamic Calcium as a Shared Pathophysiological Node.*
The alpha-delta sleep model of Vijayan et al.\ (2015) was developed _for fibromyalgia_ as the primary target @Vijayan2015alphaDelta. If thalamic T-type Ca#super[2+] channel dysfunction underlies alpha-delta sleep in fibromyalgia, and ME/CFS shares this sleep phenotype (Section @sec:thalamic-calcium-sleep), the thalamic calcium mechanism may be a shared pathophysiological node between the two conditions rather than independent findings. This reframes the alpha-delta sleep overlap from "symptom similarity due to diagnostic imprecision" to "shared specific pathophysiology." A corollary: gabapentinoids (alpha-2-delta subunit ligands) used in both FM and ME/CFS reduce surface expression of CaV2.1/2.2 channels and modulate thalamic excitability through calcium channel mechanisms — the calcium rationale for gabapentinoid benefit in ME/CFS sleep has not previously been articulated but is mechanistically grounded.

*Distinct Features.*
ME/CFS is characterized by post-exertional malaise with objective deterioration on 2-day CPET, immune abnormalities (NK cell dysfunction, B cell shifts, cytokine dysregulation), and post-infectious onset in many cases. Fibromyalgia primarily features widespread pain with tender points (though diagnostic criteria have evolved), pain as the dominant symptom (whereas fatigue dominates in ME/CFS), and less consistent immune abnormalities.

*Comorbidity Patterns.*
Studies report 35–70% comorbidity between FM and ME/CFS. This may reflect: (1) overlapping pathophysiology (shared central sensitization, autonomic dysfunction), (2) diagnostic imprecision (symptom-based criteria for both), or (3) common triggering factors (infection, trauma, stress). Some patients clearly have both conditions; others may be misdiagnosed due to symptom overlap.

=== Postural Orthostatic Tachycardia Syndrome (POTS)

POTS, defined by sustained heart rate increase $gt.eq$30 bpm (or $gt.eq$40 bpm in adolescents) within 10 minutes of standing without orthostatic hypotension, occurs in 25–50% of ME/CFS patients. POTS is a core component of the Septad framework (Section @sec:septad).

*Overlap and Distinction.*
Many ME/CFS patients meet POTS criteria, and many POTS patients experience post-exertional symptom exacerbation. However, POTS patients without ME/CFS typically lack the severe PEM with objective physiological deterioration characteristic of ME/CFS. The key distinction: orthostatic intolerance dominates in POTS; PEM dominates in ME/CFS.

*Shared Autonomic Mechanisms.*
Both conditions demonstrate reduced parasympathetic activity @walitt2024deep, impaired baroreflex sensitivity, cerebral hypoperfusion during orthostatic stress @VanCampenEtAl2020, and blood volume abnormalities (hypovolemia in subset). The mechanisms underlying autonomic dysfunction may differ: ME/CFS shows central catecholamine deficiency @walitt2024deep; POTS mechanisms include hypovolemia, peripheral denervation, autoimmune (adrenergic receptor antibodies), and hyperadrenergic subtypes.

*Treatment Considerations.*
POTS treatments (increased salt/fluid intake, compression garments, fludrocortisone, midodrine, ivabradine, beta-blockers) often help ME/CFS patients with orthostatic intolerance. However, these address only one component of ME/CFS pathophysiology. Pacing remains essential—POTS treatments may allow more upright time without triggering PEM, but they do not eliminate PEM risk.

See Chapters @ch:neurological and @ch:cardiovascular for detailed autonomic pathophysiology, and Chapter @ch:translational-findings for POTS-MCAS-EDS mechanistic links.

=== Mast Cell Activation Syndrome

Mast cell activation syndrome (MCAS) involves inappropriate mast cell degranulation releasing histamine, tryptase, prostaglandins, and other mediators. MCAS is a core component of the Septad framework (Section @sec:septad).

*Shared Features.*
ME/CFS and MCAS patients report overlapping symptoms: flushing, food intolerances, GI disturbances (bloating, diarrhea, abdominal pain), neurological symptoms (brain fog, headaches), and cardiovascular symptoms (tachycardia, blood pressure fluctuations). The prevalence of MCAS in ME/CFS is uncertain due to diagnostic challenges, with estimates ranging from 10–50%.

*Diagnostic Challenges.*
MCAS diagnosis remains controversial. Consensus criteria require: (1) clinical symptoms consistent with mast cell mediator release in $gt.eq$2 organ systems, (2) laboratory evidence of elevated mast cell mediators during symptomatic episodes (serum tryptase, urinary methylhistamine, prostaglandin D2 metabolites), and (3) response to mast cell-directed therapy. However, mediator testing is difficult (requires collection during flare, short half-lives, specialized labs), and symptom-based diagnosis risks false positives.

*Mechanistic Links.*
The hEDS-POTS-MCAS triad suggests shared pathophysiology. Proposed mechanisms include connective tissue abnormalities affecting mast cell stability, autonomic dysfunction triggering mast cell degranulation, and inflammatory mediators from mast cells exacerbating dysautonomia. Additionally, elevated histamine may impair cerebral blood flow and contribute to cognitive symptoms.

See Chapter @ch:translational-findings for MCAS-dysautonomia-vascular mechanisms and treatment chapters for screening and management protocols.

#speculation(title: [Domain 6 as a Bistable Switch Layer in the ME/CFS Causal Network])[
*(Certainty: 0.40 -- mechanistically grounded; bistability in mast cell systems is established; ME/CFS-specific application is novel.)*

The existing multi-domain causal model treats each biological domain as a continuously-graded node with roughly linear or weakly-coupled feedback. Mast cells, however, are characterized by *bistability*: below their activation threshold they remain quiescent; above threshold they enter a self-sustaining autocrine loop (CRH $arrow.r$ SCF $arrow.r$ IL-6 $arrow.r$ CRH, plus calcium-driven degranulation) that maintains activation indefinitely. This bistable behavior -- described mathematically as a Hill-function switch with cooperativity coefficient $n gt.eq 4$ -- produces hysteresis: the system does not return to quiescence by merely removing the activating stimulus; it requires active suppression.

*Modeling implication:* Incorporating Domain 6 as a bistable switch (rather than a linear node) predicts the observed clinical pattern of sudden MCAS flares and prolonged inter-flare quiescence that a linear model cannot reproduce. Once triggered into the activated state, mast cell domain positivity will persist even if other domains are treated -- providing a mechanism for treatment-refractory ME/CFS in the MCAS-dominant subset.

*Testable prediction:* Time-series measurements of urinary mast cell mediators (N-methylhistamine, LTE#sub[4]) in MCAS-positive ME/CFS patients will show a bimodal distribution (quiescent vs.\ activated states with sharp transitions), not a unimodal/Gaussian distribution. This is falsified if mediator levels vary continuously and randomly.

*Limitations:* Mast cell bistability is established in vitro and in murine models; translating this to in vivo human tissue dynamics requires longitudinal sampling with high temporal resolution (weekly or more frequent urinary mediators). No ME/CFS study has collected the time-series data needed to test this prediction.
] <spec:domain6-bistable-switch>

=== Autoimmune Conditions

ME/CFS shares immunological features with established autoimmune diseases and may represent an autoimmune condition in a subset of patients. The daratumumab trial @Fluge2025daratumumab and GPCR autoantibody findings provide the strongest evidence for autoimmune mechanisms.

*Clinical Overlap.*
Systemic lupus erythematosus (SLE), Sjögren's syndrome, and ME/CFS all feature fatigue, cognitive dysfunction, multi-system involvement, and female predominance. Multiple sclerosis (MS) patients often report severe fatigue resembling ME/CFS. Diagnostic challenge: distinguishing primary ME/CFS from fatigue secondary to autoimmune disease requires careful evaluation for organ-specific involvement.

*Shared Immunological Features.*
Both ME/CFS and autoimmune diseases demonstrate B cell abnormalities (naïve/memory imbalance in ME/CFS @walitt2024deep; autoreactive B cells in SLE/Sjögren's), autoantibody production (GPCR antibodies in ME/CFS; organ-specific antibodies in classic autoimmunity), T cell exhaustion markers, cytokine dysregulation, and response to immunomodulatory therapies in subsets.

*Why the Immune System Connection Matters.*
If ME/CFS involves autoimmunity, this implies: (1) biomarker-guided patient selection for immune-targeted therapies, (2) potential for disease-modifying treatments (immunoadsorption, plasma cell depletion, B cell modulation), and (3) the need for autoimmune screening in ME/CFS patients (ANA, RF, complement, organ-specific antibodies).

Autoimmunity is one component of the Septad framework (Section @sec:septad). See treatment chapters for autoimmune screening recommendations.

=== Ehlers-Danlos Syndrome

Ehlers-Danlos syndrome (EDS), particularly the hypermobile subtype (hEDS), co-occurs with ME/CFS at rates far exceeding chance. EDS/hypermobility is a core component of the Septad framework (Section @sec:septad).

*Prevalence of Comorbidity.*
Studies report joint hypermobility in 18–77% of ME/CFS patients (compared to 10–20% in general population). The hEDS-POTS-MCAS triad is well-recognized clinically, and many patients in this triad also meet ME/CFS criteria.

*Proposed Mechanistic Connections.*
Connective tissue abnormalities (defective collagen) may cause: (1) vascular compliance changes leading to blood pooling and orthostatic intolerance, (2) mast cell instability (connective tissue matrix affects mast cell behavior), (3) autonomic dysfunction (structural support for blood vessels and nerve fibers compromised), and (4) craniocervical instability (CCI) in a subset, potentially impairing CSF flow and brainstem function.

*Clinical Implications.*
ME/CFS patients should be screened for hypermobility (Beighton score). Those with significant hypermobility may benefit from: physical therapy emphasizing joint stability over flexibility, careful monitoring for structural complications (CCI, tethered cord), and treatments targeting the hEDS-POTS-MCAS triad. However, the relationship between joint hypermobility and ME/CFS pathophysiology remains incompletely understood.

See Chapter @ch:translational-findings for mechanistic connections and treatment chapters for screening protocols and CCI evaluation criteria.

=== Long COVID (Post-Acute Sequelae of SARS-CoV-2)

Long COVID shares remarkable symptom and pathophysiological overlap with ME/CFS, leading some researchers to propose they represent the same underlying condition triggered by different infectious agents.

*Symptom Similarities.*
Both conditions feature: fatigue and PEM (exercise intolerance with delayed worsening), cognitive dysfunction ("brain fog"), autonomic symptoms (POTS, tachycardia, temperature dysregulation), sleep disturbances, pain, and GI symptoms. Many Long COVID patients meet ICC or CCC criteria for ME/CFS.

*Pathophysiological Overlap.*
Shared findings include: immune dysregulation (cytokine abnormalities, T cell exhaustion, autoantibodies), endothelial dysfunction and microclotting, mitochondrial and metabolic abnormalities, autonomic dysfunction, and neuroinflammation. The Heng 2025 study @heng2025mecfs applied to ME/CFS could likely distinguish Long COVID with similar accuracy.

*Lessons from COVID-19 Research.*
Long COVID research benefits from: massive funding and research attention, large patient cohorts for well-powered studies, known trigger and timing (SARS-CoV-2 infection), and less historical stigma than ME/CFS. Findings from Long COVID studies (microclots, endothelial dysfunction, viral persistence, autoantibodies) may apply directly to ME/CFS. Clinical trials for Long COVID treatments may benefit ME/CFS patients if conditions share pathophysiology.

*Implications.*
Long COVID validates ME/CFS patient experiences—similar symptoms arising from clear viral trigger. The pandemic created millions of Long COVID cases, increasing research funding and clinical awareness that may benefit all post-viral illness patients. However, some worry Long COVID will overshadow ME/CFS, diverting resources from a decades-neglected population.

*Epigenetic Convergence Test.*
The 2026 Chalder-Moreau EWAS identified _PTPRN2_ hypomethylation and miR-153-3p reduction as epigenetic signatures associated with cognitive symptoms in ME/CFS @ChalderMoreau2026ptprn2. Whether Long COVID patients with PEM and brain fog share these signatures is unknown but testable. If the two conditions show > 70% directional concordance on the same methylation and miRNA markers, the epigenetic axis is downstream of shared post-infectious pathophysiology — supporting unified mechanism models and strengthening the diagnostic utility of the markers. If the signatures are discordant, they may be ME/CFS-specific, representing a more specific diagnostic target but arguing against a fully shared mechanism. This cross-disease epigenetic comparison is currently the most informative single experiment to run for both conditions.

==== Cycle Dynamics Comparison: Long COVID as Early-Stage ME/CFS
<subsubsec:long-covid-cycle-dynamics>

The vicious cycle framework (Chapter @ch:core-symptoms, @sec:pem) provides a mechanistic lens for understanding the Long COVID–ME/CFS relationship: Long COVID may represent ME/CFS at an earlier stage of cycle recruitment.

#hypothesis(title: [Long COVID as Stage 1–2 ME/CFS])[
Long COVID at 6–18 months post-infection represents early-stage ME/CFS (Stage 1–2: mitochondrial $plus.minus$ immune cycles active), while established ME/CFS represents late-stage disease (Stage 3–5: multiple cycles engaged with potential epigenetic lock-in).

*Testable predictions*:

    - Long COVID patients at 6–12 months show lower cycle involvement (1–2 cycles) than duration-matched ME/CFS patients
    - Long COVID patients meeting ME/CFS criteria at 24+ months become clinically and biologically indistinguishable from ME/CFS patients of similar duration
    - Early aggressive intervention in Long COVID (first 12 months) prevents progression to severe ME/CFS

*Evidence Grade*: C (mechanistically plausible; requires prospective validation)
]



#figure(
  table(
    columns: 6,
    // TODO: fix columnsp{3.5cm}p{3.5cm}p{3cm}}
  
  [*Disease Stage*], [*Long COVID (6–12 mo)*], [*Long COVID (24+ mo)*], [*ME/CFS ($>$5 yr)*],
  
  [Active cycles (hypothesized)], [1–2 (mitochondrial, immune)], [2–3 (+ autonomic)], [3–5 (all systems)],
  
  
  [Spontaneous recovery rate], [30–50%#super[\*]], [10–20%#super[\*]], [$tilde$5%#super[†]],
  
  
  [Reversibility tier (hypothesized)], [Tier 1–2 (high)], [Tier 2 (moderate)], [Tier 2–3 (low-moderate)],
  
  
  [Epigenetic changes (hypothesized)], [Minimal], [Emerging], [Established],
  
  
  [Autoantibody prevalence], [30–40%#super[‡]], [40–50%#super[‡]], [40–60%#super[§]],
  
  
  [Treatment response (hypothesized)], [High potential], [Moderate potential], [Variable, often limited],
  
  ),
  kind: table, supplement: [Table], caption: [Cycle Stage Comparison: Long COVID vs.\ Established ME/CFS (Hypothesized)],
) <tab:long-covid-stages>


{#super[\*]Long COVID recovery estimates vary widely by study and symptom definition; these ranges are model extrapolations requiring validation. #super[†]Systematic review median @Cairns2005prognosis. #super[‡]Autoantibody prevalence in Long COVID varies by assay and population. #super[§]GPCR autoantibodies in ME/CFS @Loebel2016.}


#key-point(title: [Three-Field Convergence Against the Deconditioning Narrative])[
By 2026, the deconditioning hypothesis for ME/CFS exercise intolerance has been independently refuted from three distinct fields, each applying its own methods and standards of evidence:

    - *Exercise physiology:* Charlton et al.\ (2026), writing in the _British Journal of Sports Medicine_—a mainstream sports medicine journal—argued that post-exertional malaise cannot be explained by cardiac deconditioning and called for rethinking the pathophysiology of exercise intolerance in post-viral illness @Charlton2026pem. This marks the exercise science community challenging its own prior paradigm.

    - *Clinical guideline revision:* The UK National Institute for Health and Care Excellence withdrew graded exercise therapy from its ME/CFS guidelines in 2021, declaring it potentially harmful based on systematic evidence review @NICE2021mecfs. This was a policy-level repudiation of the deconditioning model.

    - *Comparative virology:* The Kol et al.\ (2026) demonstration that coronavirus persists in lymphocytes after antiviral treatment and clinical recovery @Kol2026fipv provides mechanistic plausibility against the deconditioning narrative: if post-viral symptoms are maintained by a viral reservoir in immune cells, exercise cannot address the underlying pathology. Note that this is a feline coronavirus model; cross-species extrapolation to human ME/CFS requires caution.

This convergence from independent fields—each applying different methodologies and answering to different epistemic communities—constitutes stronger evidence than any single line of inquiry alone. The deconditioning narrative persists in some clinical settings despite this convergence, raising questions about knowledge translation and the sociology of medical belief change (see Section @sec:deconditioning-hypothesis).
] <key:deconditioning-convergence>

*Prevention Opportunity.*

The massive Long COVID cohort presents an unprecedented opportunity to test whether early intervention can prevent ME/CFS development:

#speculation(title: [Post-Viral Syndrome Prevention Protocol])[
A proactive intervention protocol for Long COVID patients showing early ME/CFS features:

*Weeks 4–12 post-infection*: Aggressive rest if persistent symptoms; avoid “pushing through”

*Months 3–6*: If symptoms persist, initiate:

    - Strict pacing with heart rate monitoring
    - NAD#super[+] precursor supplementation (NR or NMN 500–1000 mg/day)
    - Mitochondrial support (CoQ10, D-ribose)

*Month 6*: If not resolved, full cycle mapping (Chapter @ch:emerging-therapies, @subsec:cycle-gain-measurement)

*Months 6–12*: Cycle-targeted treatment based on mapping results

*Rationale*: Intervene while reversibility windows remain open and before cycle recruitment cascade engages additional systems.

*Evidence Grade*: D (theoretical protocol; requires RCT validation)
]

*Research Priority.*

A pragmatic prevention trial in early Long COVID could provide critical evidence:

    - *Population*: Long COVID patients 6–18 months post-infection, not yet meeting severe ME/CFS criteria
    - *Arms*: Intensive multi-target treatment vs.\ enhanced usual care
    - *Primary endpoint*: ME/CFS diagnosis rate at 5 years
    - *Sample size*: $n approx 400$ (200 per arm) for 80% power to detect 50% reduction in ME/CFS development

If early intervention halves progression to chronic disease, this would transform post-viral syndrome management and validate the cycle dynamics prevention framework.

=== Multiple Chemical Sensitivity

Multiple chemical sensitivity (MCS)—adverse reactions to low-level chemical exposures—is reported by 20–50% of ME/CFS patients. Shared features include: sensitivity to fragrances, cleaning products, pesticides; symptom exacerbation from environmental exposures; and neurological symptoms (headache, brain fog, fatigue) following exposure.

Proposed mechanisms linking MCS and ME/CFS include: mast cell activation (chemicals trigger degranulation), neuroinflammation (sensitized microglia respond to chemical exposures), impaired detoxification (reduced hepatic clearance of xenobiotics), and central sensitization (amplified CNS response to peripheral stimuli). The relationship remains poorly understood, with MCS itself lacking clear diagnostic criteria or validated biomarkers.

=== Hypokalemic Periodic Paralysis: A Channelopathy Model for PEM
<sec:hypopp-parallel>

Hypokalemic periodic paralysis (HypoPP) is a genetic channelopathy with striking functional parallels to ME/CFS post-exertional malaise. HypoPP is caused by mutations in CaV1.1 (L-type calcium channel, _CACNA1A_) or Nav1.4 (sodium channel, _SCN4A_) that create an anomalous gating pore current --- a small depolarizing conductance active in the voltage range where normal channels are closed. This gating pore current, amplified by exercise, carbohydrate intake, and rest after exertion, progressively depolarizes muscle fibers until voltage-gated sodium channels inactivate, producing inexcitable paralysis.

The parallel to ME/CFS:

    - *Triggers*: HypoPP attacks are triggered by exertion, carbohydrate intake, and rest after activity --- strikingly similar to ME/CFS PEM triggers
    - *Mechanism*: Ion channel dysfunction produces episodes of reduced cellular excitability under metabolic stress
    - *Post-exertional pattern*: Like ME/CFS PEM, HypoPP weakness follows exertion by hours and recovers with prolonged rest
    - *Acquired variant*: HypoPP can be acquired after thyrotoxicosis (not exclusively genetic), establishing that channelopathy phenotypes can arise from acquired physiological disruption

#speculation(title: [ME/CFS as an Acquired Multi-Channel HypoPP-Like State])[
In HypoPP, a single channel mutation disrupts ionic homeostasis; in ME/CFS, post-infectious mechanisms may disrupt multiple channel families (TRPM3, TRPM7, potentially CaV and Nav) through autoimmune targeting, post-viral protein modifications, or epigenetic silencing. The functional consequence --- episodes of reduced cellular excitability triggered by metabolic stress --- could be similar despite different molecular causes.

*Treatment insight from HypoPP:* Acetazolamide (carbonic anhydrase inhibitor) prevents HypoPP attacks, possibly by acidifying muscle pH and hyperpolarizing gating pore current. Acetazolamide is already used in ME/CFS for intracranial pressure reduction; its muscle-protective mechanism in HypoPP suggests an independent and untested rationale for its potential role in PEM prevention. Whether the gating pore mechanism operates in ME/CFS is unknown; HypoPP patient RBCs show normal electrophysiology, while ME/CFS patients show elevated intracellular sodium and abnormal RBC deformability --- suggesting a related but distinct ionic phenotype.

*Falsifiable prediction:* ME/CFS patients should show post-exertional changes in compound muscle action potential (CMAP) amplitude measured by electromyography, analogous to (but milder than) the CMAP reduction during HypoPP attacks. If present, this would confirm that the muscle inexcitability mechanism in HypoPP is partially recapitulated in ME/CFS.

(Certainty: 0.25. The parallel is mechanistically suggestive; direct comparative data do not exist. Not yet studied in ME/CFS.)
] <spec:ch13-hypopp-parallel>

=== Timothy Syndrome: Proof-of-Concept for Channelopathy-Driven Immunodeficiency
<sec:timothy-syndrome>

Timothy syndrome is caused by a gain-of-function mutation in CaV1.2 (L-type calcium channel, _CACNA1C_), producing multi-organ dysfunction including cardiac arrhythmias, syndactyly, autism spectrum features, and --- crucially --- recurrent infections due to impaired T cell activation. The immune deficiency in Timothy syndrome arises because T cell activation requires sustained Ca#super[2+] influx through CRAC channels (mediated by STIM1/ORAI1); when CaV1.2 dysfunction disrupts the broader cellular calcium homeostasis, T cell calcium signaling is also impaired.

*Relevance to ME/CFS channelopathy hypothesis:* Timothy syndrome provides a genetic proof-of-concept that calcium channel dysfunction of _any_ type can produce immunodeficiency as a downstream consequence. The specific channel matters less than the disruption of overall calcium homeostasis. If ME/CFS involves acquired multi-channel dysfunction (TRPM3, TRPM7, potentially others), the result --- impaired immune calcium signaling --- mirrors the Timothy syndrome immunodeficiency, but through post-infectious acquisition rather than germline mutation.

*Insight from treatment:* Timothy syndrome management focuses on arrhythmia prevention and supportive care; no TRPM3-targeted therapy exists in this context. The relevance to ME/CFS is mechanistic, not therapeutic.

(Certainty: 0.15. Timothy syndrome channelopathy-immunodeficiency link is established; extension to ME/CFS acquired channelopathy is an inference by analogy. Not yet tested.)

=== Allergic and Atopic Conditions

ME/CFS patients report higher rates of allergies, asthma, eczema, and food sensitivities compared to the general population. This may reflect: (1) mast cell involvement (MCAS increases allergic-type reactions), (2) immune dysregulation (Th1/Th2 imbalance, IgE abnormalities), (3) histamine intolerance (reduced DAO enzyme activity, impaired histamine clearance), or (4) shared genetic susceptibility.

The mechanistic link remains unclear. Does immune dysregulation in ME/CFS predispose to atopy? Do allergic conditions trigger ME/CFS in susceptible individuals? Or does mast cell dysfunction underlie both? Current evidence cannot distinguish these possibilities, but the clinical association suggests immune system involvement extends beyond specific autoimmunity or viral responses to broader dysregulation affecting multiple pathways.

#open-question(title: [The Immune System as Canary: Is Immunity Cause or Consequence?])[

The integrative models above assume immune dysfunction drives ME/CFS pathophysiology---either as the initiating event or as a central node in self-reinforcing cycles. But the accumulating null results from well-powered immune studies (Section @oq:invisible-immunity in Chapter @ch:immune-dysfunction) raise a provocative alternative: _what if the immune findings are downstream consequences of a primarily metabolic or neurological disease?_

If infection triggers ME/CFS through non-immune mechanisms---direct mitochondrial damage (WASF3-mediated supercomplex disruption, Chapter @ch:energy-metabolism), autonomic reprogramming (Chapter @ch:cardiovascular), or epigenetic changes to metabolic genes (Chapter @ch:genetics-epigenetics)---then immune cells would be impaired because _all cells_ in the body are impaired. Immune cells are simply the easiest to measure in blood. The immune system would be a canary in the coal mine, not the coal mine itself.

This reframing makes specific predictions that differ from the immune-causal model:

    - *If immune-causal:* Immunomodulatory treatments (daratumumab, immunoadsorption) should produce sustained improvement, and non-immune cells (fibroblasts, epithelial cells) should be metabolically normal
    - *If immune-consequential:* Immunomodulatory treatments may produce temporary improvement (removing a downstream amplifier) but not sustained remission; non-immune cells should show the _same_ metabolic dysfunction as immune cells; and metabolic interventions (targeting mitochondria directly) should improve both immune function and clinical symptoms simultaneously

The Heng 2025 systems-level data @heng2025mecfs may help resolve this: if immune markers and metabolic markers are _independently_ abnormal (after controlling for each other), the immune contribution is likely causal. If immune abnormalities are fully explained by metabolic dysfunction, the canary interpretation gains ground. Similarly, the ongoing RESETME daratumumab trial will be informative: sustained remission after plasma cell depletion would strongly favor immune causality, while transient benefit followed by relapse would be consistent with removing a downstream amplifier while the upstream metabolic driver persists.
] <oq:immune-canary>

== Systems Biology Approaches
<sec:systems-biology>

ME/CFS complexity---multi-system involvement, heterogeneous presentations, treatment resistance---suggests that reductionist approaches (studying individual pathways in isolation) may miss critical emergent properties. Systems biology offers complementary methods for understanding how multiple abnormalities interact to produce the disease state.

=== Multi-Omics Integration

#achievement(title: [Systems-Level Biomarker Panel Outperforms Single Markers])[
The Heng 2025 study @heng2025mecfs exemplifies a systems approach: integrating cellular ATP profiling (measuring AMP/ADP), plasma proteomics (2,924 proteins), and clinical data from 61 ME/CFS patients matched with 61 healthy controls revealed coordinated abnormalities across energy metabolism, immune function, and vascular biology.

A CART-derived 7-biomarker panel achieved 91% diagnostic accuracy, spanning adenosine metabolism (AMP), immune functions (cDC1, LYVE1, IGHG2), and vascular factors (FN1, VWF, THBS1). This accuracy far exceeds what any single biomarker could accomplish—individual markers show substantial overlap with controls, but their _combination_ reveals disease-specific patterns. For full biomarker details and energy metabolism implications, see Achievement @ach:heng-multiomics in Chapter @ch:energy-metabolism.
] <ach:systems-biomarkers>

#warning-env(title: [Replication Status])[
Single study (Heng 2025, n=61 pairs) from one Australian center. No independent cohort has replicated the multi-omics biomarker panel or its diagnostic accuracy. See the detailed replication assessment in Chapter @ch:energy-metabolism (Achievement @ach:heng-multiomics).
]

This finding was independently reinforced by Hoel et al.\ (2026) @Hoel2026proteome, who applied aptamer-based proteomics (SomaScan, 7,326 aptamers) to 50 ME/CFS patients from the Norwegian RituxME and CycloME trial biobanks. Despite using a different analytical platform, different cohort (Norwegian vs.\ Australian), and different biological matrix (serum proteomics vs.\ cellular metabolomics + plasma proteomics), Hoel et al.\ found strikingly concordant multi-system signatures: immune reprogramming (suppressed neutrophil proteins, elevated complement), vascular dysfunction (altered Ephrin signaling, endothelial markers), and metabolic stress (reduced glycolytic enzymes, elevated FGF-21 and GDF-15). The convergence of two independent large-scale studies from different continents using complementary methodologies substantially strengthens the multi-system dysfunction model.

This demonstrates the power of multi-omics integration and supports the hypothesis that ME/CFS involves coordinated dysfunction across multiple systems rather than isolated abnormalities. Future studies combining genomics, epigenomics, transcriptomics, proteomics, metabolomics, and microbiomics may identify patient subgroups with distinct molecular signatures, enabling precision medicine approaches.

=== Network Analysis

Biological systems function through networks of interacting molecules, cells, and pathways. Network analysis asks: which nodes (genes, proteins, metabolites) are central to disease pathophysiology? Which perturbations propagate through the network? Where are intervention points?

Applied to ME/CFS, network approaches could:

    - Identify hub genes or proteins connecting immune, metabolic, and autonomic abnormalities
    - Reveal feedback loops maintaining the disease state (e.g., inflammation → mitochondrial dysfunction → immune impairment → persistent triggers → inflammation)
    - Predict which interventions will have network-wide effects versus local effects
    - Explain why single-target treatments often fail (network compensation/redundancy)

=== Computational Modeling

Mathematical models can integrate disparate findings into testable hypotheses about system dynamics. For ME/CFS, this could include:

*Dynamical Systems Models.*
Representing ME/CFS as a multi-stable system with “healthy” and “diseased” attractors. Treatment would aim to push the system from the pathological basin of attraction back to health. This framework explains why: (1) triggers push susceptible individuals from healthy to diseased state, (2) the disease persists without ongoing trigger (stable attractor), and (3) small perturbations rarely produce recovery (high barrier between attractors).

*Agent-Based Models.*
Simulating interactions between immune cells, endothelial cells, metabolic pathways, and autonomic regulation. Such models could test whether observed cellular abnormalities are sufficient to produce system-level symptoms, or whether additional mechanisms are required.

==== Critical Transition Theory: Bifurcation Points in ME/CFS
<subsubsec:critical-transitions>

Critical transition theory, derived from dynamical systems mathematics, proposes that complex systems can exhibit abrupt shifts between stable states when key parameters cross threshold values @Scheffer2009early. This framework has been validated in ecology (lake eutrophication, coral reef collapse) and proposed for depression @vandeLeemput2014critical. Whether it applies to ME/CFS is speculative but may explain several puzzling features.

#hypothesis(title: [ME/CFS as Critical Transition Phenomenon])[
ME/CFS disease progression may exhibit bifurcation dynamics where small parameter changes trigger abrupt, potentially irreversible state transitions.

*Mathematical framework*: The cusp catastrophe model is a standard form from catastrophe theory @Zeeman1977catastrophe. The disease state $S$ is governed by a potential function $V(S; mu)$:

$
(d S) / (d t) = -(partial V) / (partial S)
$

For a cusp catastrophe:

$
V(S) = (1) / (4)S^4 - (1) / (2)mu S^2 - epsilon S
$

where $mu$ is the control parameter (e.g., mitochondrial reserve capacity) and $epsilon$ represents asymmetry (bias toward illness or health).

*Why cusp catastrophe?* This is the simplest model exhibiting bistability and hysteresis—two states (healthy, ill) that persist even when conditions change, with sudden transitions between them. We do not claim ME/CFS _is_ a cusp catastrophe; rather, the cusp provides a minimal mathematical framework for exploring bistability hypotheses. More complex models (e.g., higher-order catastrophes, stochastic dynamics) may prove more appropriate.

*Bifurcation structure*:

    - *Monostable region* ($mu < \mu_c$): Single stable state (healthy or ill depending on $epsilon$)
    - *Bistable region* ($mu > \mu_c$): Both healthy and ill states are stable; history determines current state
    - *Bifurcation point* ($mu = \mu_c$): Small perturbations can trigger state transition

*Biological interpretation* (speculative):

    - Control parameter $mu$: Mitochondrial reserve capacity, NAD#super[+] levels, or composite “resilience” measure
    - State variable $S$: Disease severity / functional capacity
    - Stable states: Health, mild ME/CFS, severe ME/CFS (possibly multiple attractors)
    - Bifurcation point: “Tipping point” after which recovery becomes unlikely without intervention
    - Basin of attraction: Range of perturbations from which spontaneous recovery is possible

*Limitations*: Applying critical transition theory from ecology to human disease is analogical, not proven. Lakes and humans differ in timescales, feedback mechanisms, and measurability. The analogy motivates hypotheses but does not validate them.

*Evidence Grade*: D (mathematical framework established; ME/CFS application is entirely theoretical and requires empirical validation)
]

*Early Warning Signals.*

Critical transition theory predicts detectable warning signals before state transitions:

    - *Critical slowing down*: Recovery time from minor perturbations increases as the system approaches a bifurcation. Near the critical point, the dominant eigenvalue $lambda_1 arrow.r 0$, so recovery time $tau = 1/|lambda_1| arrow.r infinity$.

    - *Increased autocorrelation*: Symptom fluctuations become more persistent ($rho(tau) arrow.r 1$) as the system loses resilience.

    - *Increased variance*: Symptom variability increases ($sigma^2 prop 1/|lambda_1|$) before major transitions.

    - *Flickering*: The system may show transient excursions toward the alternative state before permanent transition.

*Testable prediction*: In the 3–6 months preceding a major severity transition (e.g., moderate $\to$ severe), patients show $>$50% increase in recovery time from minor perturbations and $>$30% increase in daily symptom variance.

*Clinical Implications.*

If ME/CFS follows critical transition dynamics:

    - *Early intervention window*: Early-stage patients near the bifurcation point may respond dramatically to interventions that would be ineffective later. Treatment timing matters as much as treatment choice.

    - *Warning signal monitoring*: A smartphone app tracking daily symptoms could detect increased autocorrelation and variance, alerting patients and clinicians to impending deterioration with 30–60 day lead time.

    - *Prevention vs.\ reversal*: Preventing progression across a bifurcation may be far easier than reversing an established transition. This provides additional rationale for aggressive early intervention.

    - *Non-linear treatment response*: Some patients near bifurcation points may show dramatic responses to modest interventions (“tipping back”); others in deep pathological attractors may show minimal response to intensive treatment.

*Research Priority.*

Validating critical transition theory in ME/CFS requires intensive longitudinal monitoring:

    - *Design*: Prospective cohort with daily ecological momentary assessment (EMA)
    - *Population*: ME/CFS patients at varying severity levels ($n = 200$), 12-month follow-up
    - *Monitoring*: Daily 5-item symptom checklist; weekly standardized perturbation (10-minute walk); continuous heart rate variability via wearable
    - *Analysis*: Time series analysis for autocorrelation, variance, and perturbation recovery time preceding transition events
    - *Primary outcome*: Sensitivity/specificity of warning signals for predicting deterioration with $gt.eq$30 day lead time

==== Computational Model of ME/CFS Pathophysiology
<subsubsec:computational-model>

Building on the dynamical systems and critical transition frameworks, a comprehensive computational model could integrate multiple data sources to simulate disease progression and predict intervention outcomes _in silico_ before costly clinical trials.

*Model Architecture.*



#figure(
  table(
    columns: 6,
    // TODO: fix columnsp{4cm}p{5cm}}
  
  [*Component*], [*Representation*], [*State Variables*],
  
  [Mitochondria], [Population of agents], [Function level (0–1), mutation burden, ROS production],
  
  
  [Immune cells], [Population of agents], [Activation state, cytokine production, autoantibody status],
  
  
  [Metabolic pools], [Continuous variables], [ATP, NAD#super[+], lactate, ROS],
  
  
  [Signaling molecules], [Continuous variables], [Cytokines (IL-6, TNF-$alpha$), hormones (cortisol)],
  
  
  [Autonomic system], [Continuous variables], [Sympathetic/parasympathetic tone, blood flow],
  
  
  [Neural sensitization], [Continuous variable], [Central sensitization threshold],
  
  ),
  kind: table, supplement: [Table], caption: [Proposed Computational Model Components],
) <tab:model-components>


*Core Equations.*

The model couples multiple dynamical systems representing each vicious cycle:

*ATP dynamics*:

$
(d ["ATP"]) / (d t) = P_{"mito"}(M, "NAD"^+) - U("exertion") - L_{"maintenance"}
$

*Mitochondrial function*:

$
(d M_{"function"}) / (d t) = B_{"genesis"}("PGC1"alpha) - D_{"ROS"}(["ROS"]) - D_{"age"}
$

*ROS production*:

$
(d ["ROS"]) / (d t) = R_{"ETC"}(M_{"function"}, ["ATP"]) - C_{"antioxidant"}(["ROS"])
$

*Cytokine dynamics*:

$
(d ["Cytokines"]) / (d t) = S_{"immune"}("autoAb", ["ROS"]) - C_{"clearance"}
$

where $M$ = mitochondrial population, $P_{"mito"}$ = ATP production function, $B_{"genesis"}$ = biogenesis rate, $D_{"ROS"}$ = ROS-induced damage rate.

*Evidence Grade*: D (theoretical framework; parameters require empirical fitting)

*Model Validation Criteria.*

    - *Face validity*: Simulations reproduce clinically observed behaviors (PEM delay, severity heterogeneity, treatment resistance)
    - *Predictive validity*: Model predictions match published trial effect sizes within 50%
    - *External validity*: Model trained on one dataset generalizes to independent cohorts

*Clinical Applications.*

A validated computational model could enable:

    - *In silico drug testing*: Simulate intervention effects before trials, identifying promising candidates and optimal dosing
    - *Personalized trajectory prediction*: Input patient biomarkers, output probability distribution of 1-year trajectory
    - *Treatment optimization*: For individual patients, simulate multiple intervention strategies and recommend optimal approach
    - *Synergy identification*: Predict which treatment combinations produce super-additive effects through cycle interference

*Development Roadmap.*

    - *Phase 1* (Year 1): Literature-based parameter estimation; initial implementation in Python (ODE systems + agent-based components)
    - *Phase 2* (Year 2): Bayesian parameter fitting to existing cohort data; uncertainty quantification
    - *Phase 3* (Years 2–3): Validation against published trials; prospective predictions for ongoing studies
    - *Phase 4* (Year 3+): Clinical decision support tool development; open-source release

=== Challenges and Limitations

Systems biology approaches face significant challenges in ME/CFS:

    - *Data requirements*: Multi-omics studies require large, well-phenotyped cohorts with standardized protocols
    - *Heterogeneity*: Patient subgroups may have distinct network architectures, requiring stratification
    - *Causality*: Correlation networks identify associations but cannot determine causal direction
    - *Validation*: Computational predictions must be tested experimentally or clinically
    - *Complexity*: Human biological networks have millions of interactions; identifying signal from noise is difficult

Despite these challenges, the multi-system nature of ME/CFS makes it an ideal candidate for systems approaches. Reductionist methods have identified many abnormalities; systems biology may reveal how they interact to produce the syndrome.

== Outstanding Questions
<sec:questions>

Despite substantial progress, fundamental questions about ME/CFS pathophysiology remain unanswered. Resolving these questions will be essential for developing effective treatments and understanding the disease.

=== What Triggers ME/CFS Onset?

Most ME/CFS cases follow infection (EBV, enteroviruses, SARS-CoV-2, others), but only a small fraction of infected individuals develop ME/CFS. What determines susceptibility? Candidates include genetic variants (immune genes, metabolic pathways, HLA types), prior immune priming (previous infections, vaccinations), baseline metabolic reserve, microbiome composition at time of infection, and severity/timing of initial infection.

Large prospective cohort studies following infected individuals could identify pre-infection biomarkers predicting ME/CFS development. Understanding susceptibility could enable preventive interventions in high-risk individuals.

==== Genetic Modifiers of Cycle Gain and Susceptibility
<subsubsec:genetic-cycle-modifiers>

The vicious cycle framework suggests genetic variants in cycle-relevant pathways modulate: (1) baseline reserve capacity (threshold before cycles engage), (2) cycle gain (amplification factor once engaged), and (3) recovery capacity.



#figure(
  table(
    columns: 6,
    // TODO: fix columnsp{4cm}p{5.5cm}}
  
  [*Gene Category*], [*Example Genes*], [*Cycle Relevance*],
  
  [Mitochondrial function], [WASF3, POLG, PGC-1$alpha$], [Mitochondrial cycle gain; biogenesis capacity],
  
  
  [Immune regulation], [HLA types, IL-6, TNF-$alpha$], [Immune cycle activation threshold],
  
  
  [NAD#super[+] metabolism], [NAMPT, NMNAT], [Metabolic reserve; recovery rate],
  
  
  [Oxidative stress], [SOD2, catalase, GPX], [Cycle dampening capacity],
  
  
  [Autonomic function], [ADRB2], [Autonomic cycle susceptibility],
  
  ),
  kind: table, supplement: [Table], caption: [Genetic Variants Potentially Affecting Cycle Dynamics],
) <tab:genetic-cycle-modifiers>


*WASF3 as exemplar*: The WASF3 mutation in an ME/CFS family @Syed2025 demonstrates how genetic variants affect cycle dynamics—reduced ETC efficiency lowers ATP reserve and slows damage repair, effectively increasing mitochondrial cycle gain.

#hypothesis(title: [Polygenic Cycle Gain Score])[
A polygenic risk score combining cycle-relevant variants predicts both ME/CFS susceptibility and trajectory.

*Testable predictions*: (1) Top quartile score shows OR $>$3 for post-infection ME/CFS vs.\ bottom quartile; (2) Higher score correlates with faster cycle recruitment and poorer prognosis; (3) Pathway-specific scores predict which cycles activate in individual patients.

*Evidence Grade*: D (requires large GWAS with cycle phenotyping)
]

=== Why Do Some Patients Recover While Others Don't?

Spontaneous recovery occurs in some ME/CFS patients, particularly those with shorter disease duration. What distinguishes recoverers from those with persistent disease? Possibilities include: early aggressive treatment preventing “lock” establishment, less severe initial pathophysiology, genetic factors promoting recovery, effective immune resolution mechanisms, and successful identification and treatment of maintaining factors.

Understanding recovery mechanisms could identify therapeutic targets. Do recoverers have different immune profiles? Do they clear persistent viral reservoirs? Does their metabolic or autonomic function normalize, or do they compensate through alternative pathways?

==== The Pediatric Protection Puzzle
<subsubsec:pediatric-protection>

Pediatric ME/CFS studies report substantially higher improvement/recovery rates (54–94% depending on study and definition) compared to adult ME/CFS (median 5%, range 0–31% in systematic review) @Rowe2017pediatric @Cairns2005prognosis. This dramatic difference provides a natural experiment in protective mechanisms. Understanding _why_ children recover at higher rates can inform adult treatment strategies.

#warning-env(title: [Confounding in Pediatric vs.\ Adult Recovery Comparisons])[
The pediatric–adult recovery comparison is confounded by: (1) *disease duration*: pediatric cases are often caught earlier, while many adult cases represent established disease—a fair comparison requires duration-matched cohorts; (2) *diagnostic criteria*: pediatric studies may use different or less stringent criteria; (3) *ascertainment bias*: pediatric cases in clinical settings may differ from community prevalence. The mechanisms below are hypothesized explanations for whatever true pediatric advantage exists after controlling for these confounders.
]



#figure(
  table(
    columns: 6,
    // TODO: fix columnsp{3.5cm}p{3.5cm}p{3cm}}
  
  [*Mechanism*], [*Pediatric Advantage*], [*Adult Disadvantage*], [*Pharmacological Recreation*],
  
  [Mitochondrial biogenesis rate], [Higher PGC-1$alpha$ expression; faster turnover#super[\*]], [Age-related decline in biogenesis capacity], [Exercise mimetics (AICAR); NAD#super[+] precursors],
  
  
  [NAD#super[+] levels], [Higher baseline NAD#super[+]#super[†]], [$tilde$50% decline by age 50#super[†]], [NMN or NR supplementation (500–1000 mg/day)],
  
  
  [Immune tolerance], [Immature adaptive immunity; less autoantibody production#super[‡]], [Mature immune system prone to autoimmunity], [Early immunomodulation (LDN, low-dose immunosuppression)],
  
  
  [Epigenetic flexibility], [More plastic chromatin; less accumulated methylation#super[\*]], [Accumulated epigenetic changes resist reversal], [Sirtuin activators; exercise mimetics (with caution)],
  
  
  [Hormonal status], [Pre-pubertal; stable hormonal milieu], [Post-pubertal hormonal fluctuations; menstrual cycle effects], [Not directly recreatable; consider hormonal optimization],
  
  
  [Recovery environment], [School accommodation enforces rest/pacing], [Work pressures; less accommodation], [Disability leave in early disease],
  
  
  [Cumulative exposures], [Fewer prior infections, toxins], [More cumulative cellular damage], [Not recreatable],
  
  ),
  kind: table, supplement: [Table], caption: [Candidate Pediatric Protection Mechanisms and Adult Recreation Strategies (Hypothesized)],
) <tab:pediatric-protection>


{#super[\*]General aging biology; not ME/CFS-specific data @Lopez-Otin2013aging. #super[†]NAD#super[+] decline with age documented in general population @Massudi2012nad. #super[‡]Autoantibody prevalence increases with age generally; ME/CFS-specific pediatric–adult comparisons lacking.}


#hypothesis(title: [Pediatric Advantage Through Cycle Dynamics Lens])[
The pediatric recovery advantage reflects multiple factors that reduce cycle gain and preserve reversibility windows:

*Lower cycle gain ($G$)*: Children have higher mitochondrial biogenesis rates and NAD#super[+] levels, enabling faster damage repair between perturbations. This effectively reduces the net amplification factor within the mitochondrial vicious cycle, maintaining $G < 1$ where adults would have $G > 1$.

*Slower cycle recruitment*: The lower autoantibody production in children's immature immune systems slows recruitment of the immune vicious cycle. Fewer cycles engaged = higher spontaneous resolution probability.

*Larger reversibility windows*: Higher epigenetic plasticity means damage is more readily reversed before lock-in occurs. The time-dependent reversibility decay constant ($lambda$) may be lower in children, preserving higher $R(t)$ at any given disease duration.

*Environmental pacing enforcement*: School accommodations effectively enforce rest, reducing crash frequency and preventing cycle recruitment cascade.

*Testable prediction*: Pediatric ME/CFS patients show higher PGC-1$alpha$ expression, higher NAD#super[+] levels, and lower autoantibody prevalence than duration-matched adult patients; these biomarkers correlate with recovery probability.

*Evidence Grade*: C (mechanistically plausible; requires comparative biomarker studies)
]

*The “Pediatric Advantage Protocol” for Adults.*

If pediatric protection mechanisms are recreatable, an adult protocol might include:

    - *Immediate disability leave* for first 6–12 months (if possible)—recreate the “enforced rest” of school accommodation
    - *NAD#super[+] precursor supplementation* (NR or NMN 500–1000 mg/day)—restore NAD#super[+] toward youthful levels
    - *Aggressive pacing* with heart rate monitoring—prevent crash-triggered cycle recruitment
    - *Early immunomodulation* if autoantibody-positive (LDN, immunoadsorption consideration)—prevent immune cycle entrenchment
    - *Mitochondrial biogenesis support* (CoQ10, D-ribose, urolithin A)—enhance damage repair capacity

*Evidence Grade*: D (theoretical protocol; requires controlled trial)

*Research Priority.*

A cross-sectional biomarker comparison study could test whether pediatric protection mechanisms are measurable:

    - *Groups*: Pediatric ME/CFS ($n = 50$), adult ME/CFS matched for duration ($n = 50$), healthy controls (pediatric $n = 25$, adult $n = 25$)
    - *Biomarkers*: PGC-1$alpha$ expression, NAD#super[+]/NADH ratio, autoantibody panel, mtDNA copy number
    - *Follow-up*: 2 years to correlate baseline biomarkers with recovery outcome
    - *Hypothesis*: Pediatric patients show 2–3$times$ higher biogenesis markers and 30–50% lower autoantibody prevalence

=== What Maintains the Disease State?

Even if the initial trigger (infection) is cleared, ME/CFS persists. Proposed maintenance mechanisms include: persistent viral reservoirs (latent herpesviruses, integrated RNA fragments), autoantibodies from long-lived plasma cells, epigenetic changes locking pathological gene expression, metabolic pathway shifts to new equilibrium, immune system recalibration (trained immunity), autonomic nervous system setpoint changes, and microbiome alterations perpetuating dysbiosis.

Determining which mechanisms operate in which patients is critical for treatment selection. A patient with autoantibody-driven disease requires immunomodulation; one with epigenetic changes might benefit from epigenetic modifiers; one with metabolic traps needs metabolic interventions.

=== How Do Different Subtypes Differ Mechanistically?

ME/CFS heterogeneity likely reflects distinct pathophysiological mechanisms rather than a single disease entity. Potential subgroups include: autoimmune subtype (daratumumab responders, GPCR antibody-positive), metabolic subtype (primary mitochondrial dysfunction), autonomic subtype (POTS-predominant), neuroinflammatory subtype (microglial activation, CNS-predominant symptoms), post-viral subtype (persistent viral markers, reactivation), and gut-mediated subtype (dysbiosis-driven).

Rigorous cluster analysis of multi-omic data may objectively define subtypes. Treatment trials should stratify by subtype to avoid diluting signals when effective therapies help only specific patient groups.

=== Can We Identify Critical Intervention Points?

If ME/CFS involves multiple reinforcing abnormalities (multi-lock model), which locks must be broken for recovery? Do certain interventions have cascading benefits (break one lock, others follow)? Or must all locks be addressed simultaneously? Can early intervention prevent lock establishment, making treatment more effective in acute/early disease?

These questions will determine treatment strategy: sequential targeting of individual mechanisms versus simultaneous multi-pronged interventions. The answer may differ by patient subtype.

*Conclusion*: Chapters @ch:immune-dysfunction–@ch:gut-microbiome documented specific abnormalities across physiological systems. This chapter attempted to synthesize those findings into coherent models while acknowledging uncertainty. The complexity of ME/CFS—multi-system involvement, heterogeneity, treatment resistance—demands both reductionist investigation of individual mechanisms and systems-level integration. Progress requires both approaches working in concert, guided by honest assessment of evidence quality and explicit acknowledgment of what we do not yet understand.

=== Research Priorities

Based on this synthesis, the following research directions appear most critical:

    - *Biomarker validation for patient stratification*: The Heng 2025 panel @heng2025mecfs and daratumumab response patterns @Fluge2025daratumumab suggest identifiable subgroups. Large multi-center studies should validate these biomarkers and develop clinical decision tools.

    - *Mechanism-targeted trials with biomarker selection*: Rather than treating all ME/CFS patients identically, trials should enroll patients based on mechanistic biomarkers (autoantibody-positive, severe autonomic dysfunction, primary metabolic abnormalities) and test subgroup-specific interventions.

    - *Combination therapy trials*: Test whether simultaneously targeting multiple mechanisms (e.g., immunoadsorption + metabolic support + autonomic treatment) produces superior outcomes to single interventions.

    - *Prospective cohort studies of infection*: Follow individuals before and after triggering infections (influenza, COVID-19, EBV) to identify pre-morbid risk factors and early biomarkers predicting ME/CFS development. This could enable prevention.

    - *Recovery mechanism studies*: Systematically characterize patients who improve or recover—what distinguishes them biologically? Understanding recovery pathways could identify therapeutic targets applicable to those with persistent disease.

    - *Early intervention trials*: Test whether aggressive treatment within 6-12 months of onset prevents “lock” establishment and improves long-term outcomes. The window of treatment responsiveness may be limited.

    - *Systems biology approaches*: Apply network analysis and multi-omics integration to identify critical nodes in ME/CFS pathophysiology. Computational modeling may reveal non-obvious intervention points.

=== Novel Integrative Insights from Critical Evidence Synthesis
<sec:critical-evidence-synthesis>

Integration of critical evidence analyses with the existing pathophysiology framework reveals several novel cross-system connections that deserve further investigation.

#hypothesis(title: [The Glutamatergic--Autonomic Bridge: DecodeME Genes as Synaptic Vulnerability Factors])[

*Certainty: 0.30.* The DecodeME GWAS identified glutamatergic synapse genes (_SHISA6_, _UNC13C_) alongside genes governing neuronal development and axon guidance (_CA10_, _SOX6_, _LRRC7_, _DCC_)---all converging on neuronal communication in brain regions (Section @sec:decodeme-genes of Chapter @ch:genetics-epigenetics). The genetic correlation pattern ($r_g = 0.75$ with IBS, $r_g = 0.60$ with depression, absent for autoimmune diseases) places ME/CFS squarely in the neurological--functional disorder spectrum rather than the autoimmune spectrum @DecodeME2025.

We propose that these genetic variants create a constitutional vulnerability in the brain's autonomic regulatory circuits. Glutamatergic signaling in autonomic regulatory brain regions governs sympathetic and parasympathetic outflow; developmental variants affecting synapse formation or transmission efficiency in these circuits could produce a system that functions normally under basal conditions but fails under stress. (The specific brain regions involved remain to be determined; brainstem, hypothalamus, and insular cortex are candidates based on known autonomic circuitry, but the DecodeME data do not localize the effect.) An acute infection then imposes a metabolic and inflammatory insult on already-vulnerable circuits, tipping them past a threshold into sustained dysfunction.

This model predicts: (1) ME/CFS patients carrying more DecodeME neuronal risk alleles should show more severe autonomic dysfunction (HRV, tilt table, baroreflex sensitivity); (2) brainstem and insula glutamate/glutamine ratios (MR spectroscopy) should correlate with autonomic symptom severity; (3) the IBS genetic correlation ($r_g = 0.75$) should be mediated by shared autonomic regulatory genes (testable via Mendelian randomisation); (4) glutamatergic modulators (memantine, riluzole) may improve autonomic symptoms in patients with high neuronal-gene PRS.

*Treatment implications:* Memantine (NMDA antagonist, approved for neurological use) could be trialled with genotype stratification. The IBS genetic overlap suggests that treatments effective for IBS autonomic symptoms---low-dose tricyclics, which modulate glutamate at low doses, consistent with the amitriptyline $r_g = 0.61$---may work through the same neural circuits in ME/CFS.

*Limitations:* DecodeME loci await independent replication. Brainstem MR spectroscopy is technically challenging. The glutamatergic--autonomic link is mechanistically plausible but untested in ME/CFS. Sub-threshold genes may not survive replication.
] <hyp:glutamatergic-autonomic-bridge>

#speculation(title: [The Diagnostic Mirage: hEDS, POTS, and MCAS as Phenotypic Fragments of a Single Autonomic Disease])[

*Certainty: 0.25.* Critical analyses challenge the diagnostic validity of both POTS (10--15% of healthy controls meet the 30 bpm threshold; poor reproducibility; 2% symptom variance explained) and hEDS (no identified connective tissue defect; autonomic profile resembles fibromyalgia not other EDS types) @MECFSScience2024pots @MECFSScience2024heds. Meanwhile, DecodeME finds no genetic correlation with classical autoimmune diseases but strong correlation with IBS, depression, and fatigue traits @DecodeME2025.

We speculate that the "ME/CFS--POTS--hEDS--MCAS cluster" does not represent four comorbid diseases but rather a single autonomic vulnerability syndrome that fragments into different diagnoses depending on which clinical threshold is crossed first. The DecodeME neuronal genes provide the constitutional substrate; the "POTS" label captures patients whose autonomic failure manifests most visibly in heart rate; the "hEDS" label captures those whose connective tissue laxity (a normal population variant) is noticed because clinicians search for an explanation of autonomic symptoms; and the "MCAS" label captures those whose mast cell activation (regulated by autonomic innervation) produces the most prominent mediator symptoms.

If correct: (1) treating the underlying autonomic dysfunction should improve all four "conditions" simultaneously; (2) apparent comorbidity rate should correlate with the number of diagnostic thresholds tested, not disease severity; (3) DecodeME PRS should predict the cluster as a whole better than any individual diagnosis; (4) patients diagnosed with one condition should show sub-threshold features of the others at rates far exceeding chance.

*Treatment implications:* A unified autonomic-targeting approach---tVNS, pyridostigmine, or the LDN + pyridostigmine combination (LIFT trial)---might be more effective than treating each "comorbidity" separately. This is a testable alternative to the current clinical approach of stacking diagnoses and treatments.

*Limitations:* Lumping hypothesis that risks overlooking genuine heterogeneity. Some patients may have true independent connective tissue or mast cell pathology. The simpler explanation, that these conditions share risk factors and genuinely co-occur without forming a single entity, must be given equal consideration. A Bayesian framework comparing the "single entity" model against the "shared risk factors, independent pathologies" model would be needed to distinguish them. Makes specific testable predictions about genetic architecture and treatment response.
] <spec:diagnostic-mirage>

#hypothesis(title: [The Amitriptyline Signal: Genetic Evidence for Tricyclic Mechanism in ME/CFS])[

*Certainty: 0.40.* Among DecodeME genetic correlations, amitriptyline use shows $r_g = 0.61$ ($p < 0.00001$)---comparable to depression ($r_g = 0.60$) @MECFSScience2025decodeme. The standard interpretation is confounding (patients take amitriptyline for pain/sleep). An alternative: genetic variants predisposing to ME/CFS also predispose to conditions that respond to amitriptyline, because amitriptyline acts on the same neural circuits affected by ME/CFS risk genes.

At low doses (10--25 mg), amitriptyline's pharmacology includes serotonin/noradrenaline reuptake inhibition, NMDA receptor antagonism, sodium channel blockade, and histamine H1 antagonism. The NMDA antagonism is particularly relevant given the glutamatergic synapse genes at DecodeME loci (Section @sec:decodeme-genes, Chapter @ch:genetics-epigenetics). It is used for IBS ($r_g = 0.75$), neuropathic pain, migraine, and sleep---all genetically correlated with ME/CFS.

Predictions: (1) low-dose amitriptyline should improve ME/CFS symptoms beyond sleep/pain effects; (2) benefit should be greater with higher DecodeME neuronal-gene PRS; (3) the genetic correlation should survive conditioning on depression and chronic pain; (4) Mendelian randomisation could test whether the genetic architecture causally supports amitriptyline efficacy.

*Treatment implications:* Reframes low-dose amitriptyline from "palliative sleep aid" to "mechanistically targeted intervention acting on genetically-identified circuits." A pharmacogenomics trial stratifying by DecodeME PRS could test this directly.

*Limitations:* The genetic correlation almost certainly includes a substantial confounding component: patients with ME/CFS-like symptoms are prescribed amitriptyline for pain and sleep, creating a direct ascertainment pathway that does not require shared mechanism. Disentangling confounding from shared mechanism requires Mendelian randomisation or genotype-stratified RCTs, neither of which has been performed. No trial has tested amitriptyline against DecodeME genetic predictors.
] <hyp:amitriptyline-signal>

#speculation(title: [The Peptic Ulcer Parallel: What Would an _H. pylori_ Moment Look Like for ME/CFS?])[

*Certainty: 0.20.* The psychosomatic history review (Section @sec:psychosomatic-parallels, Chapter @ch:controversies) identifies peptic ulcer as the strongest parallel to ME/CFS: universally assumed stress-related until Marshall and Warren discovered _H. pylori_ in 1982 @MECFSScience2021psychosomatic. We speculate that the "discovery" for ME/CFS will not be a single pathogen but the demonstration that diverse triggers converge on a single downstream molecular switch---analogous to how various mucosal damage factors facilitate _H. pylori_ colonisation, but the bacterium is what maintains disease.

Candidates for this molecular switch:

    - *TRPM3 ion channel dysfunction* (Section @sec:trpm3-dysfunction, Chapter @ch:immune-dysfunction): A single molecular target affecting calcium signaling across immune, neuronal, and metabolic cells. If TRPM3 is the "stuck door" that, once jammed, maintains multi-system dysfunction independently of the trigger, then TRPM3-restoring drugs would be the "antibiotic" of ME/CFS.
    - *Epigenetic methylation lock* at autonomic regulatory genes: The "hit-and-run" model proposes transient viral products cause persistent epigenetic changes. If a specific methylation signature can be identified and reversed (DNMT inhibitors, targeted demethylation), this would be molecular "eradication."
    - *DecodeME autophagy genes*: If _FBXL4_/_CCPG1_ variants create a genetic bottleneck in mitochondrial quality control (Hypothesis @hyp:mitophagy-vulnerability, Chapter @ch:genetics-epigenetics), mitophagy-enhancing drugs would be curative in the genetically vulnerable subset---precision medicine analogous to _H. pylori_ eradication for infected ulcer patients.

The peptic ulcer parallel predicts that resistance to the biological explanation will continue even after strong evidence accumulates, that the discovery will come from an adjacent field, and that the therapeutic revolution will be surprisingly simple once the mechanism is identified.

*Limitations:* Structurally unfalsifiable in its general form; this is a historical analogy, not a testable hypothesis. This is better classified as a historical analogy motivating research directions than as a speculation with falsifiable predictions. Specific candidates have their own predictions in respective chapters. The analogy is heuristic, not predictive.
] <spec:peptic-ulcer-parallel>

#open-question(title: [Can Genetic Architecture Resolve the Subtype Problem?])[
DecodeME data combined with diagnostic validity concerns suggest a new approach to ME/CFS subtyping. Rather than symptoms or triggers, genetic architecture might reveal biological subtypes cutting across clinical presentations.

Specifically: (1) Do patients with high neuronal-gene PRS differ clinically from those with high autophagy-gene or immune-gene PRS? (2) Does the IBS genetic correlation cluster with particular symptom profiles? (3) Can the absence of autoimmune genetic correlation be reconciled with the immunoadsorption-responsive subset---are these patients genetically distinct? (4) Does genetic architecture predict treatment response better than symptom-based subtyping?

If DecodeME PRS can stratify patients into mechanistically coherent subgroups, this would transform clinical trials from "test one intervention on all ME/CFS" (repeatedly failing) to "test intervention X on the genetic subgroup most likely to respond"---the pharmacogenomic approach that has revolutionized oncology.
] <oq:genetic-subtypes>

The field stands at an inflection point. Decades of patient advocacy and recent high-profile cases (Long COVID) have increased research funding and clinical awareness. The biological basis of ME/CFS is now strongly supported by multiple independent lines of evidence @walitt2024deep @heng2025mecfs @Fluge2025daratumumab. The challenge is translating mechanistic insights into effective treatments accessible to all patients who need them.

 Chapter @ch:speculative-hypotheses extends this analysis to more speculative mechanisms that, while lacking direct evidence in ME/CFS, may provide insights into disease pathophysiology and suggest novel therapeutic approaches. Where this chapter focused on evidence-based integration, the next explores creative hypotheses that may inspire future research.

#speculation(title: [HSAT2 Exosomal Loop as an Accelerated Inflammaging Process in ME/CFS])[


*(Certainty: 0.35 — LINE-1/cGAS-STING inflammaging pathway now mechanistically established in Nature (De Cecco 2019); application to ME/CFS via HSAT2 remains indirect.)*

Heterochromatin loss with aging de-silences transposable elements and satellite repeats — a process now mechanistically established for LINE-1 retrotransposons: De Cecco et al.\ @DeCecco2019LINE1 demonstrated in aged mouse tissues and human skin biopsies that LINE-1 derepression in senescent cells produces cytoplasmic cDNA that activates cGAS-STING → type-I interferon, promoting the senescence-associated secretory phenotype (SASP) and amplifying age-associated inflammation. Lamivudine (NRTI) suppresses this pathway, providing pharmacological proof. The same pericentromeric dismantling mechanism has been demonstrated for satellite II/III in replication-stressed cells: TP53 activation → TRF2 downregulation → KAP1/Lamin B1 release → H3K9me3 loss → satellite DNA derepression → cytosolic cGAS ligand @MendezBermudez2022pericentromeric. Viral infection could trigger this same pathway acutely.

The inflammatory consequences of repeat de-silencing in aging ("repeat-driven inflammaging") provide a direct mechanistic framework for ME/CFS: viral infection could trigger an acute, high-velocity version of the same slow process that underlies age-associated immune dysfunction. Supporting convergences:

    - Senescent cells accumulate LINE-1 and HERV-K RNA via DNMT3B downregulation @DeCecco2019LINE1; ME/CFS shows features of accelerated biological aging (epigenetic clock studies, shortened telomeres in some cohorts)
    - HSF1, the master stress transcription factor, forms nuclear stress bodies at pericentromeric satellite loci under oxidative, osmotic, and proteotoxic stress — all documented in ME/CFS @Vourc_h2022HSF1SatIII
    - HERV-K antibodies are persistently elevated in ME/CFS patients post-COVID-19 @Apostolou2022HERVmecfs, consistent with ongoing epigenetic derepression
    - Senolytic drugs (dasatinib + quercetin, fisetin) reduce LINE-1 expression and SASP by eliminating senescent cells @DeCecco2019LINE1 — the same drugs have mechanistic rationale in ME/CFS via the accelerated-inflammaging model

If ME/CFS represents a "viral short-circuit" of inflammaging — triggering in days what normally takes decades — then senolytics (dasatinib + quercetin, fisetin) and methyl-donor support for pericentromeric re-silencing @spec:methyl-donor-hsat2 could have dual relevance for both ME/CFS and aging-associated immune dysfunction. Lamivudine suppressing the LINE-1/cGAS-STING pathway @DeCecco2019LINE1 provides a novel rationale complementary to the HERV-K RT inhibition rationale for NRTIs in ME/CFS @oq:nrti-hsat2.

*Falsifiable prediction:* ME/CFS patients will show biological age acceleration (GrimAge epigenetic clock divergence from chronological age) that correlates with plasma HSAT2 exosomal content. Patients who recover will show clock renormalization. Fisetin 100 mg/day × 2 days/week × 12 weeks in ME/CFS patients aged > 50 will reduce plasma HSAT2, LINE-1 expression in PBMCs, and improve NK cytotoxicity markers. Lamivudine 150 mg/day × 8 weeks will reduce LINE-1-mediated cGAS-STING activation (measurable by plasma cGAMP or IFN-β).

*Limitations:* The De Cecco 2019 LINE-1 mechanism is well-established but operates via retrotransposition and cDNA (not exosomal RNA propagation) — it is a parallel inflammaging pathway, not an exact analogue of the HSAT2 exosomal loop. Analogy between aging-driven and acute post-viral ME/CFS is biologically imprecise. Senolytics carry significant side-effect profiles and are not established ME/CFS treatments. The inflammaging framework does not explain onset specificity or post-infectious latency. Not replicated in ME/CFS.
] <spec:hsat2-inflammaging>

#speculation(title: [SIRT1/NAD+ Depletion as the Upstream Trigger for HSAT2 Derepression in ME/CFS])[


*(Certainty: 0.35 — SIRT1-SUV39H1 axis mechanistically established; NAD+ depletion in ME/CFS documented; direct SIRT1-HSAT2 link in ME/CFS absent.)*

SIRT1 stabilizes SUV39H1 — the primary writer of H3K9me3 at pericentromeric heterochromatin — by blocking MDM2-mediated ubiquitination @BoschPresegue2011SIRT1SUV39H1. SUV39H1 activity is required to maintain the H3K9me3 mark that keeps HSAT2 loci silenced. SIRT1 is an NAD+-dependent deacetylase; its activity is directly proportional to the cellular NAD+/NADH ratio. ME/CFS is characterized by documented metabolic dysfunction that includes reduced NAD+ availability in multiple cohorts. The proposed chain is: ME/CFS metabolic impairment → NAD+ depletion → SIRT1 inactivation → SUV39H1 hyperacetylation and turnover → H3K9me3 loss at pericentromeric loci → HSAT2 derepression. This positions SIRT1/NAD+ as a master upstream switch sitting above both the HSF1 (heat/oxidative stress) and CTCF-loss derepression routes documented in Clusters C and D.

The clinical corollary is that NAD+ precursor supplementation (nicotinamide riboside or nicotinamide mononucleotide) could address HSAT2 derepression upstream by restoring SIRT1 activity and SUV39H1 stability. This is distinct from direct H3K9me3 restoration (the methyl-donor approach @spec:methyl-donor-hsat2), which targets the mark itself rather than the enzyme that writes it.

*Falsifiable prediction:* Plasma NAD+/NADH ratio in ME/CFS will inversely correlate with EV-packaged HSAT2 RNA load (Spearman ρ < −0.4) in a cohort of n ≥ 50. NR 1 g/day × 12 weeks will raise whole-blood NAD+ by ≥ 50% and reduce EV HSAT2 by ≥ 20%; if NAD+ rises without HSAT2 falling, the SIRT1-SUV39H1-HSAT2 chain is not the dominant pathway in ME/CFS.

*Limitations:* Direct measurement of SIRT1 activity or SUV39H1 ubiquitination in ME/CFS blood cells has not been reported. NAD+ depletion in ME/CFS is documented but the effect size and cell-type specificity vary across studies. The SIRT1-SUV39H1 study (Bosch-Preseguè 2011) was conducted in cell lines; in vivo applicability is uncertain. Oxidative stress paradoxically activates SIRT1 via this same pathway — SIRT1 depletion as the driver of HSAT2 requires that chronic, sustained oxidative stress eventually exhausts the SIRT1/NAD+ buffer. Replication: mechanism well-replicated at individual steps; chain not demonstrated end-to-end in any disease context.
] <spec:sirt1-hsat2-upstream>

#speculation(title: [CTCF Chromatin Insulator Loss as a Second Route to HSAT2 Derepression, Amplifiable by HSF1])[


*(Certainty: 0.30 — both CTCF-loss route and HSF1 nSB route individually documented; their interaction at HSAT2 loci unstudied.)*

Two independent routes to HSAT2 derepression have been established: (1) HSF1 nuclear stress body formation at pericentromeric satellite sequences under heat or proteotoxic stress @Eymery2010HSF1SatII @Decottignies2012Sat2heatshock; (2) CTCF chromatin insulator loss, as demonstrated by Miyata et al.\ @Miyata2021HSAT2senescence, where HSAT2 ncRNA accumulates in senescent cells and displaces CTCF from insulator sites flanking HSAT2 loci, permitting satellite read-through and SASP gene activation. Oxidative stress reduces CTCF expression, opening this second route independently of HSF1.

A plausible interaction: HSF1 nuclear stress bodies may locally evict CTCF from insulator sites within pericentromeric chromatin domains as they form, removing boundary constraints on satellite transcription and allowing HSAT2 expression to spread into flanking regulatory regions. This would mean that each PEM-associated stress event (activating HSF1) also degrades the CTCF insulator boundary, progressively lowering the threshold for HSAT2 derepression in subsequent events. This could explain the "lowered PEM threshold" observed in progressive ME/CFS without requiring additional triggering viruses.

*Falsifiable prediction:* CTCF ChIP-seq in peripheral blood mononuclear cells at baseline and 48 h post-exertional challenge (CPET) will show ≥ 30% CTCF occupancy loss at HSAT2-flanking insulator sites, preceding measurable HSAT2 RNA accumulation. In patients with the highest CPET-triggered HSAT2 rise, CTCF loss will be greatest.

*Limitations:* HSF1 nSB-induced CTCF eviction at HSAT2 loci has not been directly demonstrated in any cell type. The CTCF-loss mechanism was characterized in senescent fibroblasts, not immune cells or during acute stress. CTCF has thousands of binding sites genome-wide; the pericentromeric sites represent a small fraction. Replication: each route individually documented; their interaction at HSAT2 in any cell type is speculative.
] <spec:ctcf-hsat2-route>

#speculation(title: [EV-Delivered HSAT2 as a TLR3/RIG-I Ligand Triggering Type-I IFN in Recipient Stromal Fibroblasts])[


*(Certainty: 0.30 — dsRNA sensing by TLR3/RIG-I in fibroblasts is established; HSAT2 RNA dsRNA character and EV delivery to stromal cells inferred from Evdokimova 2019.)*

HSAT2 repeat RNA forms self-complementary stem-loop structures with double-stranded character — a canonical pattern recognized by innate immune RNA sensors TLR3 (endosomal dsRNA) and RIG-I/MDA5 (cytosolic dsRNA). Evdokimova et al.\ @Evdokimova2019HSAT2exosome demonstrated transfer of HSAT2 RNA from cancer EVs to recipient MRC5 fibroblasts, driving the full CENPA/kinetochore stress program. In recipient stromal fibroblasts with intact innate immune sensing (unlike the cancer cells from which the EVs originate), EV-delivered dsRNA cargo should engage TLR3 and/or RIG-I, triggering IFN-β production and a type-I interferon response. This would convert the existing centromere-stress hypothesis into a unified IFN-driven stromal SASP loop.

This parallels the cGAS-STING mechanism demonstrated for cytoplasmic repeat DNA in senescent cells @DeCecco2019LINE1, but applies to EV-delivered RNA. The implication: the HSAT2 loop may produce two distinct inflammatory outputs — MDSC-mediated immune suppression (via myeloid cell programming) and IFN-driven stromal inflammation (via fibroblast TLR3/RIG-I). Both are self-reinforcing.

*Falsifiable prediction:* Primary dermal fibroblasts from healthy donors incubated with ME/CFS patient plasma EVs will produce IFN-β within 24 h (ELISA); this production will be abolished by TLR3 knockdown (siRNA) or RIG-I knockout (CRISPR). ME/CFS patient EVs will produce ≥ 3× more IFN-β than matched healthy control EVs.

*Limitations:* HSAT2 RNA dsRNA character under physiological conditions is inferred from repeat structure, not directly demonstrated. Whether ME/CFS EVs carry sufficient HSAT2 cargo to trigger TLR3/RIG-I in fibroblasts at physiological concentrations is unknown. Fibroblasts in vivo have blunted innate sensing compared to immune cells; IFN-β output may be below threshold. Not replicated in any disease context.
] <spec:hsat2-tlr3-rig-i>

#speculation(title: [CENPA Overexpression in EV-Exposed Stromal Fibroblasts Leading to p53-Dependent Senescence in ME/CFS])[


*(Certainty: 0.32 — CENPA overexpression → senescence confirmed in p53-WT cells by Jeffery 2021; EV-HSAT2 → CENPA induction in fibroblasts documented in Evdokimova 2019 preprint only.)*

Two 2021 studies converge on the cellular fate of CENPA overexpression: Jeffery et al.\ @Jeffery2021CENPAp53 showed that in human p53-WT cells, CENPA mislocalization to chromosome arms triggers senescence (p16 induction, SA-β-gal positivity, radiosensitivity) rather than malignant transformation; Shrestha et al.\ @Shrestha2021CENPAaneuploidy confirmed kinetochore instability as the upstream event. Evdokimova et al.\ @Evdokimova2019HSAT2exosome showed EV-delivered HSAT2 induces CENPA transcription up to 10-fold in recipient MRC5 fibroblasts. Chain inference: ME/CFS circulating EVs → CENPA upregulation in stromal fibroblasts → CENPA mislocalization → (p53 intact) → cellular senescence → SASP production → local and systemic inflammation.

This predicts that ME/CFS connective tissue (skin, muscle, fascia) harbours an elevated burden of senescent fibroblasts, producing a chronic low-grade SASP. This would manifest as: connective tissue features (hypermobility, skin extensibility, poor wound healing); post-exertional muscle repair failure (senescent satellite cells cannot regenerate); and a local inflammatory milieu maintaining mast cell activation and nociceptor sensitization. The prediction is histologically testable with standard senescence assays.

*Falsifiable prediction:* ME/CFS skin punch biopsies (4 mm) will show ≥ 2-fold elevation in p16^INK4a+ and SA-β-gal+ fibroblasts versus age- and sex-matched controls; HSAT2 RNA-positive fibroblasts (RNA-FISH) will correlate with p16+ burden (Spearman ρ > 0.5 within the ME/CFS group).

*Limitations:* The Evdokimova preprint is unpublished in a peer-reviewed journal. Whether ME/CFS circulating EVs carry sufficient HSAT2 to drive CENPA to the 10-fold induction threshold is untested. Senescent fibroblasts accumulate with age independently of ME/CFS; age-matched controls are essential. Fibromyalgia and hEDS may show similar senescent fibroblast accumulation without the HSAT2 mechanism; specificity requires careful controls. Replication: Jeffery 2021 and Shrestha 2021 partially replicated in cancer lines only; Evdokimova single preprint.
] <spec:cenpa-senescence-stromal>

#hypothesis(title: [Sub-Clinical Fibrosis as a Chronicity and Irreversibility Mechanism in Long-Duration ME/CFS])[

*Certainty: 0.40.* Supported by TGF-β1 elevation in long-duration ME/CFS cohorts, LS fibrosis biology providing a mechanistic template, and fascia/connective tissue reports in fibromyalgia-adjacent conditions. Direct histological evidence in ME/CFS connective tissue is absent. Not yet replicated.

Lichen sclerosus demonstrates that chronic Th1/IFN-γ activation → TGF-β → fibroblast activation can become self-sustaining and structurally irreversible once collagen remodeling is established. ME/CFS chronicity (>5 years) is poorly accounted for by current models that emphasize cytokine dysregulation, NK dysfunction, or metabolic reprogramming — all of which are in principle reversible. Sub-clinical fibrotic remodeling in fascia, perivascular space, autonomic ganglia, or enteric nervous tissue — driven by the same TGF-β cascade — could provide a structural irreversibility mechanism that explains why the therapeutic window closes as disease duration extends @Batham2024MECFSAutoimmunity @DeLuca2023LS2023Update.

In this model, LS in a patient with ME/CFS is not merely a comorbidity but a visible indicator that the patient's immune terrain has already progressed from cytokine-mediated inflammation toward fibrotic remodeling. The presence of LS-associated fibrosis in accessible tissue (skin, mucosa) would serve as a proxy for systemic fibrotic risk.

*Falsifiable prediction:* (1) Shear-wave elastography of thoracolumbar fascia will show significantly higher stiffness in ME/CFS patients with illness duration >5y compared to $<$2y, independent of deconditioning. (2) Stiffness will correlate with serum TGF-β1 and procollagen III N-terminal peptide (PIIINP). (3) ME/CFS patients with concurrent LS will show higher fascial stiffness than ME/CFS patients without LS, matched for illness duration.

*Limitations:* Shear-wave elastography of fascial tissue has not been standardized in ME/CFS research; confounders include deconditioning, BMI, and age. TGF-β1 elevation in long-duration ME/CFS has not been consistently replicated across cohorts. The LS-fascia prediction is multiply inferential — each inferential step (LS predicts fibrotic terrain → systemic fibrotic risk) dilutes certainty proportionally.
] <hyp:subclinical-fibrosis-mecfs>
