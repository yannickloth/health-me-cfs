#import "../../../../shared/environments.typ": *

=== Sleep Architecture and Inter-Regional Coordination
<sec:sleep-architecture>

Sleep disturbances, particularly unrefreshing sleep despite adequate duration, affect up to 95% of ME/CFS patients. While subjective complaints are nearly universal, objective polysomnographic findings show more subtle alterations: longer sleep latency, reduced sleep efficiency, increased Stage 3 sleep in adults, and altered sleep microstructure @Jackson2023sleep. The paradox—severe subjective sleep dysfunction with modest objective changes—suggests the problem may lie not in sleep duration or stage percentages, but in the _coordination_ required to generate and maintain normal sleep architecture.

==== Energy Costs of Sleep Architecture Coordination

Normal sleep architecture requires sophisticated inter-regional brain coordination orchestrated primarily through thalamo-cortical circuits. During non-REM sleep, slow oscillations ( 1 Hz) originate in the anterior thalamus and precede neocortical slow oscillations, while sleep spindles ( 12–14 Hz) detected in thalamic nuclei precede their neocortical counterparts @Fernandez2022thalamus. This sequence—convergent cortical downstates leading thalamic downstates, which then trigger spindles projected back to cortex during the down-to-upstate transition—coordinates memory consolidation across distributed brain regions @Jiang2024ripples.

Sleep spindle generation itself is metabolically demanding. Thalamic reticular nucleus (TRN) neurons must generate rhythmic bursts at 12–14 Hz, which requires sustained calcium channel activity, neurotransmitter synthesis and release, and coordinated inhibition of thalamocortical relay neurons. The cortex must then respond appropriately, amplifying spindles and coupling them with hippocampal ripples for memory consolidation. This inter-regional choreography demands substantial ATP and coordinated neurotransmitter systems.

Similarly, REM sleep requires brainstem activation (particularly cholinergic nuclei), thalamic relay, cortical activation approaching waking levels, and simultaneous motor inhibition via brainstem circuits. The transitions between sleep stages—requiring coordinated deactivation of one set of circuits and activation of another—may be particularly energy-intensive.

#hypothesis(title: [Sleep Architecture Failure Hypothesis])[
*Certainty: 0.50.*

In ME/CFS, CNS energy deficits and metabolic dysfunction prevent the sustained inter-regional coordination required for normal sleep architecture, resulting in fragmented sleep microstructure despite adequate total sleep time.

*Mechanism.*
The hypothesis proposes that sleep architecture fragmentation in ME/CFS reflects energy-limited coordination failure:

    - *Spindle generation deficit*: Thalamic reticular nucleus neurons cannot sustain the metabolic demands of rhythmic 12–14 Hz burst firing, reducing sleep spindle density and power

    - *Slow-wave coordination failure*: Thalamo-cortical circuits cannot maintain synchronized slow oscillations across brain regions, fragmenting slow-wave sleep architecture

    - *Stage transition impairment*: The coordinated network reconfiguration required for sleep stage transitions (more demanding than within-stage maintenance) fails preferentially, increasing sleep fragmentation

    - *Inter-regional coherence reduction*: EEG coherence between brain regions declines during sleep, reflecting impaired functional connectivity @Sherlin2011coherence

    - *PEM-induced worsening*: During post-exertional malaise, when CNS energy deficits intensify, sleep architecture fragmentation worsens proportionally

*Supporting evidence.*
Jackson et al. @Jackson2023sleep meta-analyzed objective sleep data from 801 adults and 477 adolescents with ME/CFS, confirming altered sleep microstructure despite the subjective-objective paradox. Adult patients showed reduced sleep efficiency, altered stage distribution (decreased Stage 2, increased Stage 3), and longer sleep latency—patterns consistent with coordination difficulties rather than simple sleep deprivation.

Sherlin et al. @Sherlin2011coherence demonstrated that EEG spectral coherence distinguishes CFS patients from both healthy controls and depressed patients with 100% accuracy for unmedicated CFS patients. The involvement of bilateral temporal lobes in 9 of 10 coherence factors suggests widespread inter-regional connectivity disruption, supporting the coordination failure hypothesis.

Sleep fragmentation studies show that chronic fragmentation impairs brain energy metabolism to an extent similar to total sleep deprivation, with lower glucose uptake in cortex and hippocampus @Baud2016fragmentation. In ME/CFS, the causal arrow may reverse: primary metabolic dysfunction fragments sleep, which further worsens metabolism in a vicious cycle.

*Testable predictions.*

    - Sleep spindle density and power correlate inversely with ME/CFS symptom severity and biomarkers of CNS dysfunction
    - Slow-wave sleep fragmentation (not just total SWS percentage) correlates with measures of metabolic dysfunction (e.g., cerebral lactate on MRS)
    - Sleep architecture fragmentation worsens 24–72 hours post-exertion, tracking PEM time course
    - Sleep stage transition frequency increases (shorter, more fragmented sleep stages) compared to healthy controls, even when stage percentages appear normal
    - Inter-regional EEG coherence during sleep is reduced in ME/CFS patients, particularly in frequency bands critical for sleep oscillations (delta, sigma)
    - Interventions improving cerebral metabolism (e.g., mitochondrial support) improve objective sleep microstructure, not just subjective sleep quality

*Treatment implications.*
If sleep architecture failure reflects energy-limited coordination, interventions should target: (1) circadian optimization—maximizing sleep opportunity during the circadian nadir when sleep pressure is highest; (2) metabolic support—mitochondrial cofactors (CoQ10, NADH) during evening hours may improve overnight cerebral metabolism @CastroMarrero2021CoQ10; (3) sleep stage-specific support—low-dose gabapentin or pregabalin may reduce thalamo-cortical excitability demands while supporting spindle generation; (4) glymphatic enhancement—sleep position (lateral decubitus), avoiding late caffeine, and sleep continuity strategies; (5) pacing-sleep integration—recognizing that sleep quality worsens predictably during PEM can guide activity management.

*Limitations.*
This hypothesis has moderate certainty (0.50). No published studies have quantified spindle density or power in ME/CFS with simultaneous metabolic measures. Coherence data exists for waking but not sleep EEG. Alternative explanations include primary brainstem pathology, autonomic dysfunction, or circadian disruption rather than energy limitation. Causality direction remains unclear: does poor metabolism fragment sleep, or does fragmented sleep worsen metabolism?
] <hyp:sleep-architecture-failure>

==== Thalamic T-Type Calcium Channels and Alpha-Delta Sleep Intrusion
<sec:thalamic-calcium-sleep>

The thalamus is not merely a relay station for sleep oscillations—it is their primary _generator_. T-type voltage-gated calcium channels (CaV3.1, the predominant thalamic isoform) are the principal conductance underlying thalamic delta oscillations. CaV3.1 knockout mice show markedly reduced NREM sleep and altered sleep oscillations, establishing CaV3.1 as the critical molecular substrate for delta wave generation @Crunelli2006thalamicTtype. During deep NREM sleep, CaV3.1 channels in thalamocortical relay neurons generate the low-threshold Ca#super[2+] spikes that underlie 0.5--4 Hz delta oscillations --- the dominant EEG rhythm of restorative slow-wave sleep.

Alpha-delta sleep (intrusion of alpha waves, normally associated with wakefulness, into delta sleep) has been documented in fibromyalgia and reported in ME/CFS. Vijayan et al.\ (2015) developed a computational thalamocortical model demonstrating how alterations in three ionic currents --- the hyperpolarization-activated cation current (I#sub[h]), GABA#sub[B]-mediated K#super[+] conductance, and background K#super[+] leak --- transform thalamic delta oscillations into alpha-delta patterns @Vijayan2015alphaDelta. Crucially, the T-type Ca#super[2+] channels (CaV3) providing the low-threshold calcium spikes are the substrate on which these disruptions act: altering the balance of competing currents shifts the oscillation away from CaV3-dependent delta and toward alpha frequency.

#hypothesis(title: [Thalamic T-Type Calcium Channel Disruption as a Mechanism of Alpha-Delta Sleep in ME/CFS])[
*Certainty: 0.35.*

In a subset of ME/CFS patients, disruption of thalamic T-type Ca#super[2+] channel (CaV3.1) function---whether from neuroinflammation, altered membrane lipid composition, autoimmune targeting, or systemic channelopathy---may generate the alpha-delta sleep intrusion pattern that underlies non-restorative sleep.

*Proposed mechanism:*

    - CaV3.1 channels generate low-threshold Ca#super[2+] spikes that drive delta oscillations in thalamocortical relay neurons
    - Neuroinflammation, oxidative stress, or channelopathy shifts the balance of competing ionic currents (I#sub[h], GABA#sub[B]-K#super[+], background K#super[+] leak), as modeled by Vijayan et al.\ @Vijayan2015alphaDelta
    - Delta oscillations are replaced by alpha-frequency activity --- patients experience subjectively non-restorative sleep despite adequate total sleep time
    - Sleep spindle generation (dependent on thalamic reticular nucleus burst firing) is also impaired, as it shares the same thalamocortical circuit

*Connection to systemic channelopathy:*

If TRPM3 dysfunction in ME/CFS reflects a systemic channelopathy affecting ion channels across multiple tissues (Section @sec:trpm3-hypotheses), thalamic CaV3.1 channels represent a plausible additional target. The same upstream mechanisms proposed for TRPM3 dysfunction (post-viral channel remodeling, autoimmune targeting, epigenetic downregulation, membrane lipid disruption) could in principle disrupt CaV3.1 gating. This would create a mechanistic link between the immune arm of calcium dysfunction (TRPM3 in NK cells) and the sleep arm (CaV3.1 in thalamus) --- suggesting these are not independent comorbidities but manifestations of the same root pathology.

*Important limitation:* No study has directly measured CaV3.1 expression or function in ME/CFS patients. The thalamic calcium channel hypothesis for ME/CFS is extrapolated from fibromyalgia sleep models and basic CaV3.1 neuroscience; whether it applies to ME/CFS specifically is untested.

*Testable predictions.*

    - ME/CFS patients with alpha-delta sleep EEG pattern should show more severe non-restorative sleep symptoms than those without it
    - T-type Ca#super[2+] channel blockers (ethosuximide, zonisamide, low-dose pregabalin) should convert alpha-delta to delta sleep in affected ME/CFS patients and improve sleep quality (objective measure: increased delta power on PSG)
    - Thalamic neurochemistry (MRS) in ME/CFS patients with alpha-delta sleep should differ from those without it, consistent with altered I#sub[h]/GABA#sub[B]/K#super[+] balance
    - If TRPM3 channelopathy is systemic, TRPM3 dysfunction severity (measured in NK cells) should correlate with severity of alpha-delta sleep intrusion

*Treatment implication:* Ethosuximide (a selective T-type Ca#super[2+] channel blocker used in absence epilepsy) and zonisamide reduce CaV3.1-dependent burst firing. Low-dose use in ME/CFS patients with documented alpha-delta sleep is a testable research hypothesis, not a recommendation; adverse effects include sedation, GI upset, and --- at higher doses --- cognitive effects that may be particularly poorly tolerated in ME/CFS.
] <hyp:thalamic-calcium-sleep>

#open-question(title: [Ethosuximide and Zonisamide: Which Direction Does T-Type Block Go?])[
The mechanistic direction for T-type calcium channel blockers in ME/CFS sleep is genuinely uncertain, and the uncertainty matters clinically:

*If alpha-delta arises from insufficient T-type current for delta generation:* CaV3.1 is already hypoactive (reduced by energy failure or systemic channelopathy) and further blocking with ethosuximide would worsen delta generation and deepen non-restorative sleep. This is the likely scenario if the Wirth energy failure model applies to thalamic metabolism.

*If alpha-delta arises from residual T-type burst firing at the wrong frequency:* CaV3.1 still fires but now generates alpha-frequency bursts instead of delta (due to altered Ih/GABAB balance per the Vijayan 2015 model @Vijayan2015alphaDelta). In this case, selective T-type suppression might specifically dampen the aberrant alpha component while leaving delta largely intact.

*Zonisamide as a dual-mechanism option:* Unlike ethosuximide (selective T-type block), zonisamide also blocks sodium channels and enhances GABA-A signaling. The GABA-A enhancement could address the GABAB/K#super[+] conductance imbalance in Vijayan's alpha-delta model independently of T-type block. Antioxidant properties (free radical scavenging) of zonisamide could additionally reduce the neuroinflammatory milieu affecting thalamic membrane properties.

*Research design:* A single-dose crossover study (ethosuximide 250 mg vs. placebo, overnight PSG) measuring delta power and alpha-delta index would directly answer the direction question. If delta increases and alpha intrusion decreases, the alpha component is T-channel-mediated. If delta decreases, T-channels are needed for delta generation and the drug worsens sleep. This is a low-cost mechanistically decisive trial that would either support or refute the thalamic calcium hypothesis.

*Glymphatic endpoint:* The identification of NE-mediated vasomotion as the primary glymphatic pump (Section @sec:ch15-ne-vasomotion) adds a critical dimension to this trial. If ethosuximide restores delta frequency, it should also restore thalamocortical--vasomotion phase coupling, amplifying glymphatic benefits beyond subjective sleep quality improvement. Conversely, if ethosuximide worsens delta, it would further decouple these oscillatory systems and worsen glymphatic clearance. DTI-ALPS (diffusion tensor imaging along perivascular spaces) should be included as a pre/post endpoint, supplemented by MR-AIV velocimetry (Toscano et al., 2026, Section @sec:ch15-dual-speed) to separately track fast advective vs slow diffusive transport changes --- transforming a sleep-quality study into a glymphatic-function study. Note: Chayama et al. (2026) demonstrated that DTI-ALPS may reflect CSF flow rather than parenchymal protein clearance, so MR-AIV tissue permeability estimates provide a complementary readout less dependent on CSF tracer dynamics @Chayama2026BrainClearance @Toscano2026MRAIV.

_Not a clinical recommendation._ Both agents have significant adverse effect profiles. This is a research question only.
] <oq:ch08-ethosuximide-direction>

#speculation(title: [Sleep EEG Delta/Alpha Ratio as a Non-Invasive Thalamic Calcium Proxy])[
If thalamic CaV3.1 dysfunction underlies alpha-delta sleep in ME/CFS, the NREM delta/alpha power ratio serves as a non-invasive functional proxy for thalamic calcium channel activity. This is measurable with consumer home EEG devices. Longitudinal tracking of the delta/alpha ratio could:

    - Serve as a pharmacodynamic biomarker for calcium-targeted treatments: does T-type modulation shift the ratio?
    - Predict PEM episodes: does the delta/alpha ratio worsen in the nights preceding a crash?
    - Subtype patients by sleep calcium phenotype: consistent alpha-delta vs. normal sleep architecture on home EEG
    - Replace expensive PSG for longitudinal tracking at the cost of reduced spatial resolution

The advantage over laboratory sleep study is scalability; the disadvantage is that frontal consumer-grade EEG does not provide thalamic source-localization. The ratio measure is correlational, not mechanistically validated.

*Falsifiable predictions:* (a) NREM delta/alpha ratio measured by home EEG should correlate with ME/CFS severity scores across patients. (b) The ratio should worsen during PEM and recover during post-PEM rest. (c) Interventions that improve thalamic calcium function (T-type modulators, improved metabolic support of thalamic tissue) should shift the ratio toward higher delta/lower alpha.

(Certainty: 0.35. The delta/alpha ratio as an EEG severity marker is established in fibromyalgia; whether it serves as a thalamic calcium proxy in ME/CFS specifically is extrapolation.)
] <spec:ch08-sleep-eeg-proxy>

