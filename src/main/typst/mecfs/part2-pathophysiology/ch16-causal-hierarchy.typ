#import "../shared/environments.typ": *

= Causal Hierarchy: Root Causes, Amplifiers, and Consequences
<ch:causal-hierarchy>

#emph[“The art of medicine consists in amusing the patient while nature cures the disease.”]

— attributed to Voltaire

#v(0.5em)

#emph[The art of understanding disease consists in distinguishing what nature is doing from what nature has done.]
Chapters @ch:energy-metabolism through @ch:speculative-hypotheses catalogue an imposing inventory of pathophysiological mechanisms in ME/CFS: mitochondrial dysfunction, immune dysregulation, neuroinflammation, endocrine disruption, cardiovascular impairment, gut dysbiosis, epigenetic modification, autoimmunity, ion channelopathy, and more. Chapter @ch:integrative-models demonstrated that these mechanisms interact rather than operate in isolation, and Chapter @ch:symptom-mechanisms distinguished capacity-limiting from symptom-producing pathways. What remains unanswered is the question of _hierarchy_: which of these mechanisms are causally sufficient to generate the full ME/CFS syndrome, which amplify and perpetuate it, and which are downstream consequences of the disease process?

This question is not academic. The causal hierarchy determines where therapeutic intervention is most likely to succeed, which research directions deserve priority, and why so many single-target treatments have disappointed. A treatment that addresses a downstream consequence cannot cure the disease; a treatment that targets an amplifier may reduce severity without enabling recovery; only interventions that release the trigger-capable mechanisms—or enough of the locks they establish—can plausibly restore health. The distinction between cause, amplifier, and consequence is therefore the single most important conceptual framework for rational treatment strategy in ME/CFS.

Yet the distinction is also profoundly difficult to make. In a disease characterized by bidirectional feedback loops, where immune dysfunction worsens energy metabolism which worsens immune function, the question “which came first?” can seem unanswerable. The framework developed in this chapter does not require answering that question for individual patients. Instead, it asks a different question: which mechanisms are _capable_ of initiating the full cascade from a healthy baseline, and which require prior dysfunction to engage? This capability-based classification avoids the epistemic trap of reconstructing individual disease histories and instead focuses on the structural properties of each mechanism.

This chapter proposes a three-tier classification framework, applies it systematically to the mechanisms described in preceding chapters, and draws out the implications for treatment strategy and research design. The claims made here are themselves hypotheses—informed by evidence but not proven. The sister chapter in Part V (Chapter @ch:causal-hierarchy-formal) tests these claims using formal mathematical models; the present chapter develops the biological reasoning that those models encode.

// =============================================================================
// SECTION 1: THREE-TIER CLASSIFICATION FRAMEWORK
// =============================================================================

== Framework: The Three-Tier Classification
<sec:three-tier-framework>

To distinguish causes from effects in a multi-system disease, we need explicit criteria. The temptation is to rely on temporal ordering—what appeared first must be the cause—but this approach fails in ME/CFS for two reasons. First, the triggering event is usually months or years in the past by the time patients are studied, making temporal reconstruction unreliable. Second, many mechanisms engage nearly simultaneously during the acute phase, before any of them has had time to clearly precede the others. We need criteria that can classify mechanisms based on their structural properties, not on the accident of which one was measured first.

The following framework classifies each mechanism into one of three tiers based on its causal role in initiating, maintaining, or resulting from the ME/CFS disease state.

<obs:three-tier>
We define three tiers of causal involvement in ME/CFS pathophysiology:

    - *Trigger-capable (root cause):* A mechanism whose failure alone is sufficient to cascade into the full ME/CFS syndrome. A trigger-capable mechanism can, in principle, account for the transition from health to disease without requiring prior dysfunction in other systems. This does not mean it always acts alone—only that it _could_.

    - *Amplifier:* A mechanism that worsens, perpetuates, or locks the disease state but cannot initiate it alone. Amplifiers are secondary processes that engage once a trigger-capable mechanism has destabilized homeostasis. Some amplifiers are _load-bearing_—their removal is necessary for recovery—while others are secondary. The distinction between load-bearing and secondary amplifiers is developed in Section @sec:load-bearing-locks.

    - *Consequence:* A real, clinically significant phenomenon that occurs downstream of the disease process. Consequences produce symptoms and reduce quality of life, but treating them alone cannot resolve the underlying disease. This classification does not diminish their clinical importance—consequences are often what makes patients suffer—but it does limit the therapeutic expectation.

Classification into these tiers requires discriminating criteria. We propose four tests, all of which a trigger-capable mechanism must pass. A mechanism that fails any single criterion is classified as an amplifier or consequence, regardless of how strongly it performs on the other three.

*Criterion 1: Precipitant compatibility.* Can the mechanism be triggered by known ME/CFS precipitants—viral infection, severe physiological stress, surgery, or other documented onset events? A mechanism that requires a cause not associated with ME/CFS onset cannot be trigger-capable. This criterion connects the mechanism to the clinical reality of how ME/CFS begins. The evidence base for ME/CFS precipitants is well established: approximately 70% of cases follow acute infection, with smaller proportions attributed to severe stress, surgery, trauma, or vaccination @Chu2019 @Hickie2006postinfectious. Any trigger-capable mechanism must be compatible with these onset patterns.

*Criterion 2: Energy collapse sufficiency.* Can the mechanism alone produce the cardinal feature of ME/CFS—post-exertional malaise and the associated energy collapse described in Section @sec:pem? PEM is the defining symptom; any root cause must account for it. This is a stringent test because PEM is not mere fatigue—it is a delayed, disproportionate worsening of symptoms following physical or cognitive exertion, with a characteristic latency of 12–72 hours and a duration that can extend for days or weeks. Any mechanism proposed as a root cause must explain not just fatigue, but this specific temporal and dose-response pattern.

*Criterion 3: Chronicity.* Does the mechanism explain why ME/CFS persists for years or decades? A process that would self-resolve without additional pathology cannot account for the chronic course. Many acute processes—inflammation, metabolic stress, hormonal disruption—are inherently self-limiting in healthy physiology. To be trigger-capable, a mechanism must either be inherently self-perpetuating or must create conditions that prevent the normal resolution mechanisms from operating.

*Criterion 4: Multi-system spread.* Does the mechanism account for the multi-system nature of ME/CFS—simultaneous neurological, immunological, cardiovascular, endocrine, and gastrointestinal involvement? A mechanism confined to a single organ system cannot explain the syndrome's breadth. ME/CFS is not a disease of the immune system, the nervous system, or the metabolic system alone—it is a disease of the integrated organism. Any root cause must have a plausible path to producing dysfunction across all of these systems, either directly or through downstream cascading.

These criteria are stringent by design. Most mechanisms documented in Chapters @ch:energy-metabolism–@ch:speculative-hypotheses fail at least one criterion and are therefore classified as amplifiers or consequences rather than root causes. This is not a deficiency of those mechanisms—it reflects the reality that most pathophysiological processes in ME/CFS are downstream of, or dependent on, a smaller number of trigger-capable failures.

#limitation(title: [Classification Uncertainty])[
The three-tier classification is a simplification of a continuous reality. Some mechanisms sit near the boundary between tiers, and future evidence may reclassify them. The framework is most useful at the extremes—clearly trigger-capable mechanisms like the CNS energy crisis, clearly downstream consequences like sleep fragmentation—and least certain in the middle ground, where mechanisms like mast cell activation have features of both amplifiers and consequences. The classification should be treated as a working hypothesis, not a taxonomic fact.
]

The formal validation of this framework—including bifurcation analysis demonstrating that trigger-capable mechanisms correspond to disease attractor basins—is developed in Section @sec:bifurcation-analysis. The mathematical testing of each tier assignment is presented in Chapter @ch:causal-hierarchy-formal.

Figure @fig:causal-hierarchy-overview provides an overview of the three-tier classification applied to all mechanisms discussed in this chapter.

#include "../figures/fig-causal-hierarchy-overview.typ"

=== Why Not Simply Use Evidence Levels?
<sec:why-not-evidence-levels>

Chapter @ch:integrative-models ranked mechanisms by evidence level (Table @tab:evidence-levels), from established phenomena through probable, preliminary, theoretical, and speculative. One might ask: why introduce a new classification when the evidence hierarchy already exists?

The answer is that evidence level and causal tier are orthogonal. A mechanism can be well-established (replicated in multiple studies) yet be an amplifier rather than a root cause. Conversely, a mechanism can be preliminary (single study) yet be trigger-capable if that study demonstrates the right structural properties. Oxidative stress in ME/CFS is _established_—documented by many groups in many cohorts—but it is an amplifier, not a root cause, because it cannot initiate the disease from a healthy baseline. TRPM3 channelopathy is _preliminary_—confirmed in one multi-site study—but may be trigger-capable because of the channel's ubiquitous expression and its role in calcium-dependent processes across tissues.

The evidence hierarchy tells us how confident we should be that a mechanism _exists_. The causal hierarchy tells us what _role_ that mechanism plays in the disease. Both are needed; neither substitutes for the other.

// =============================================================================
// SECTION 2: TRIGGER-CAPABLE MECHANISMS
// =============================================================================

== Trigger-Capable Mechanisms
<sec:trigger-capable>

Four mechanisms meet all four criteria and are therefore candidates for trigger-capable root causes. These are not mutually exclusive: different patients may enter the disease through different trigger-capable mechanisms, and in some patients, multiple root causes may engage simultaneously. What unites them is that each can, in principle, account for the full syndrome without requiring prior dysfunction elsewhere.

Before examining each candidate, what is _not_ on this list is equally important. Mitochondrial dysfunction, arguably the most studied mechanism in ME/CFS, is not classified as trigger-capable. Neither is gut dysbiosis, immune dysregulation considered generically, or hormonal disruption. This may seem counterintuitive given the evidence for each of these processes. The reason is Criterion 1: none of these mechanisms arises directly from known ME/CFS precipitants without an intermediary. Mitochondrial dysfunction does not spontaneously develop in response to viral infection; it develops because viral infection triggers neuroinflammation, metabolic suppression, or autoimmunity, which then damages mitochondria. The mitochondrial damage is real and consequential, but it is an amplifier of the upstream process, not the initiating event.

=== CNS Energy Crisis
<sec:root-cns-energy>

The central nervous system orchestrates virtually all demand-responsive physiological functions: autonomic regulation of heart rate and blood pressure, immune surveillance and cytokine coordination, endocrine signaling, sleep-wake cycling, and the allocation of metabolic resources across tissues. The brain, comprising approximately 2% of body mass, consumes roughly 20% of resting metabolic energy. When the brain's own energy supply fails, the downstream consequences are not confined to neurological symptoms—they propagate to every system the brain coordinates.

The proposed cascade begins with CNS hypometabolism: reduced glucose and oxygen delivery to neuronal populations, whether from neuroinflammation-driven metabolic suppression, neurovascular uncoupling, or direct mitochondrial dysfunction in glial and neuronal cells. The evidence for this initial step is substantial and converges from multiple methodologies. PET imaging studies demonstrate cortical and subcortical hypometabolism in ME/CFS patients, with particular involvement of the cingulate cortex, prefrontal regions, and basal ganglia @Nakatomi2014neuroinflammation. The Nakatomi study additionally demonstrated microglial activation in these regions, using the #super[11]C-PK11195 ligand, linking the hypometabolism to an active neuroinflammatory process rather than simple atrophy or disuse. SPECT studies reveal widespread cerebral hypoperfusion that correlates with cognitive dysfunction severity, consistent with neurovascular uncoupling or upstream autonomic failure to maintain cerebral perfusion pressure @Barnden2011brainstem.

Most compellingly, the 2024 NIH intramural study by Walitt et al.\ documented reduced CSF catecholamine precursors (DOPA, DOPAC, DHPG), indicating that the brain's own neurotransmitter synthesis is compromised @Walitt2024NIH. This finding is particularly important because catecholamine synthesis requires adequate supplies of tyrosine, tetrahydrobiopterin (BH4), oxygen, and iron—all of which depend on adequate energy metabolism and blood flow. The CSF catecholamine deficit therefore represents downstream evidence of CNS energy compromise at the level of biosynthetic capacity, not merely neurotransmitter utilization.

The Walitt study also identified altered effort-perception circuitry: ME/CFS patients showed abnormal functional connectivity between motor cortex, basal ganglia, and prefrontal regions during effort tasks, suggesting that the brain's assessment of effort cost is disrupted. This altered effort perception is consistent with a brain that lacks the energy resources to accurately calibrate metabolic demand signals.

From CNS hypometabolism, the cascade propagates through every system the brain coordinates:

    - *Autonomic dysfunction* (Chapter @ch:cardiovascular): Failed coordination of sympathetic and parasympathetic outflow produces orthostatic intolerance, impaired cardiac output regulation, and the orthostatic tachycardia that afflicts over 30% of ME/CFS patients @Hoad2008pots @Yu2022. The brain's inability to dynamically adjust vasomotor tone to postural changes explains why symptoms are position-dependent.

    - *Immune dyscoordination* (Chapter @ch:immune-dysfunction): The hypothalamus regulates immune function through the hypothalamic-pituitary-adrenal axis and the cholinergic anti-inflammatory pathway (vagal efferent signaling that suppresses peripheral TNF-$alpha$ production). CNS energy failure disrupts both pathways, producing the paradoxical immune state described in Chapter @ch:immune-dysfunction: elevated inflammatory markers alongside impaired immune effector function.

    - *Endocrine disruption* (Chapter @ch:endocrine): The hypothalamic-pituitary axes governing thyroid function, adrenal output, growth hormone secretion, and gonadal function all depend on adequate hypothalamic energy supply. CNS hypometabolism produces the characteristic “hypothalamic pattern” of ME/CFS: low-normal cortisol with blunted diurnal rhythm, reduced growth hormone pulsatility, and altered thyroid set-points.

    - *Sleep architecture disruption* (Chapter @ch:neurological): Sleep-wake cycling depends on the coordinated activity of hypothalamic orexin neurons, ventrolateral preoptic area GABAergic neurons, and brainstem monoaminergic nuclei. Energy-depleted sleep-regulating circuits cannot maintain normal slow-wave sleep architecture, producing the unrefreshing sleep universal in ME/CFS.

    - *Gut-brain axis dysfunction* (Chapter @ch:gut-microbiome): Vagal efferent tone regulates gut motility, intestinal barrier function, and mucosal immune responses. Reduced vagal output from an energy-depleted brainstem permits gut barrier compromise, bacterial translocation, and the downstream immune activation that further burdens the already-struggling CNS.

The cascade's reach is limited only by the brain's reach—which is to say, not limited at all. Every organ system that receives neural input, hormonal regulation, or immune coordination from the CNS is a potential downstream casualty of CNS energy failure. This structural property is what makes the CNS energy crisis uniquely qualified as a trigger-capable mechanism: it does not need to invoke independent pathology in multiple organ systems because a single central failure cascades to all of them.

*Assessment against the four criteria.*

    - *Precipitant compatibility:* Viral infection is a potent cause of neuroinflammation; both direct viral neurotropism (as demonstrated for EBV, HHV-6, and SARS-CoV-2) and peripheral cytokine signaling to the brain (via circumventricular organs, vagal afferents, and BBB transport) can produce CNS metabolic suppression. Severe physiological stress activates hypothalamic stress responses that, if sustained, deplete catecholamine reserves and shift the balance between excitatory and inhibitory neurotransmission toward a hypometabolic state. Surgery combines inflammatory insult, anesthetic-induced neuronal stress, and the physiological shock of tissue trauma. All three major ME/CFS precipitants converge on the CNS.

    - *Energy collapse sufficiency:* If the brain cannot coordinate the autonomic, endocrine, and metabolic responses required for exertion, any physical or cognitive demand will exceed the system's capacity to respond. The result is post-exertional malaise—not because peripheral energy production has failed (though it may also be compromised), but because the central coordinator has insufficient energy to manage the demand. The 12–72 hour delay characteristic of PEM is consistent with a CNS-mediated mechanism: the brain initially attempts to meet the demand by drawing on reserves, and the “crash” occurs when those reserves are exhausted and the neuroinflammatory response to the overshoot peaks.

    - *Chronicity:* Neuroinflammation is self-perpetuating through multiple reinforcing loops. Activated microglia release pro-inflammatory cytokines (TNF-$alpha$, IL-1$beta$, IL-6) that damage the blood-brain barrier, permitting further peripheral immune cell infiltration, which sustains microglial activation. Microglial activation also produces reactive oxygen species that damage local mitochondria, worsening the CNS energy deficit. Catecholamine depletion reduces the brain's capacity to activate the cholinergic anti-inflammatory pathway, removing a key brake on both central and peripheral inflammation. Epigenetic changes in microglia can stabilize the activated phenotype, making the inflammatory state self-sustaining even if the original trigger resolves.

    - *Multi-system spread:* The brain innervates and regulates every organ system. A central coordination failure naturally produces multi-system dysfunction without requiring independent pathology in each system. This is the strongest criterion met by the CNS energy crisis hypothesis: it is the only trigger-capable mechanism whose multi-system reach is guaranteed by anatomy rather than dependent on molecular diffusion or receptor expression patterns.

#hypothesis(title: [CNS Energy Crisis as Trigger-Capable Root Cause])[
Central nervous system hypometabolism, arising from neuroinflammation, neurovascular uncoupling, or direct mitochondrial dysfunction in neural tissue, is sufficient to generate the full ME/CFS syndrome through failed central coordination of autonomic, immune, endocrine, and metabolic responses. The brain's role as master coordinator means that its energy failure cascades to all dependent systems. The CNS energy crisis is the only trigger-capable mechanism whose multi-system reach is anatomically guaranteed rather than dependent on molecular distribution.

*Certainty:* 0.50. PET/SPECT evidence for CNS hypometabolism is replicated across multiple studies, and the Walitt 2024 CSF findings provide direct neurochemical evidence of biosynthetic failure. The cascade logic is biologically sound and consistent with known neuroanatomy. However, it remains unproven that CNS dysfunction is _primary_ rather than secondary to peripheral immune activation, and animal models that would establish directionality are lacking. The Nakatomi PET study, while influential, used a relatively small sample and a first-generation TSPO ligand with known limitations.

*Testable predictions:*

    - Degree of CNS hypometabolism should predict multi-system dysfunction severity, not merely cognitive symptoms. Patients with the most severe cerebral metabolic deficits should also show the most severe autonomic, immune, and endocrine dysfunction.
    - Interventions that restore CNS energy metabolism (e.g., transcranial photobiomodulation, intranasal insulin, hyperbaric oxygen targeting cerebral tissue) should produce improvements across all symptom domains, not just neurological ones.
    - In early-stage ME/CFS, CNS metabolic abnormalities should precede peripheral metabolic abnormalities in longitudinal studies. If the CNS energy crisis is primary, brain hypometabolism should be detectable before systemic mitochondrial dysfunction develops.
    - CSF catecholamine levels should correlate with autonomic severity and predict treatment response to catecholamine-sparing interventions.

*Limitations:* The Walitt 2024 study had a small sample size ($n=17$) and was cross-sectional, preventing causal inference. The PET findings from Nakatomi et al.\ used a first-generation TSPO ligand (#super[11]C-PK11195) with limited signal-to-noise; replication with second- or third-generation ligands is needed. The fundamental question—whether CNS dysfunction is cause or consequence—cannot be resolved without longitudinal studies from disease onset or experimental animal models, neither of which currently exist for ME/CFS.
] <hyp:cns-energy-root>

The formal dynamical systems analysis of the CNS energy crisis as an attractor basin is developed in Section @sec:bifurcation-analysis, where the CNS energy state is modeled as a bifurcation parameter whose reduction below a critical threshold drives the system into the ME/CFS disease attractor.

=== Metabolic Safe Mode Lock
<sec:root-safe-mode>

Where the CNS energy crisis hypothesis posits a failure of the brain's energy supply, the metabolic safe mode hypothesis proposes something more radical: the body's energy suppression is _deliberate_. The metabolic downregulation observed in ME/CFS is not a malfunction but an evolutionarily conserved protective program—the cellular equivalent of a computer entering safe mode—that has become locked in the activated state.

The conceptual distinction is important. Under the CNS energy crisis model, the brain is _unable_ to produce enough energy; under the safe mode model, the body is _choosing not to_. The distinction matters therapeutically: if the problem is inability, the solution is to restore capacity; if the problem is a deliberate program that refuses to disengage, the solution is to reset the program. These are fundamentally different treatment strategies.

The mechanistic details of the safe mode hypothesis are developed in Section @sec:safe-mode. In summary: upon detecting a severe threat (infection, trauma, extreme stress), the body activates a coordinated metabolic suppression program through multiple converging pathways. Itaconate shunt activation diverts cis-aconitate away from the TCA cycle via the enzyme aconitate decarboxylase 1 (ACOD1/IRG1), reducing mitochondrial ATP production while simultaneously generating the immunomodulatory metabolite itaconate @Naviaux2016metabolomics. IDO (indoleamine 2,3-dioxygenase) upregulation shunts tryptophan toward the kynurenine pathway, simultaneously depleting serotonin precursors and generating immunomodulatory metabolites—with the additional consequence of reducing NAD#super[+] synthesis via the de novo pathway (Section @sec:kynurenine-trap). Mitochondrial dynamics shift toward fission (via DRP1 activation), fragmenting the mitochondrial network and reducing oxidative phosphorylation efficiency. The net result is a coordinated, whole-body metabolic downregulation that conserves resources for immune defense while limiting substrate availability to intracellular pathogens.

This program has clear evolutionary logic. During acute infection, the host faces a dilemma: many intracellular pathogens (including viruses) depend on host metabolic machinery for replication. Reducing metabolic output restricts pathogen replication at the cost of host performance—a trade-off that is favorable during acute infection, where survival matters more than performance. The sickness behavior that accompanies this metabolic suppression (fatigue, anorexia, social withdrawal) enforces the energy conservation by making activity aversive.

The critical failure in ME/CFS is not the activation of this program—which is normal and adaptive—but its failure to disengage. Several lock mechanisms can prevent disengagement:

*Persistent low-grade immune activation.* Even after the triggering infection resolves, ongoing immune stimulation from autoantibodies, reactivated herpesviruses, gut bacterial translocation, or other sources maintains the cytokine signals (particularly IL-6 and type I interferons) that keep the safe mode program engaged. The program cannot distinguish between “infection persists” and “immune system is activated for other reasons”; it responds to the cytokine signal regardless of its source.

*Hypothalamic setpoint shift.* The hypothalamus integrates peripheral immune signals and sets metabolic “targets” for the organism. A severe enough initial insult—particularly one that involves direct hypothalamic inflammation—may shift these setpoints such that the metabolic targets are permanently lowered. The organism then “defends” a lower metabolic rate, interpreting attempts to increase metabolism as dangerous deviation from the setpoint.

*Epigenetic stabilization.* The gene expression changes that implement the safe mode program (ACOD1 upregulation, IDO induction, mitochondrial fission gene expression) may become epigenetically stabilized through DNA methylation or histone modifications during the acute phase. Once epigenetically fixed, these expression patterns persist even after the signaling that induced them resolves, creating a metabolic state that is self-sustaining at the chromatin level.

*Self-reinforcing exertion logic.* The most insidious lock mechanism is the program's own logic. During metabolic suppression, the body's response to exertion is abnormal: energy demands cannot be met normally, metabolic waste accumulates, and the autonomic response to exercise is dysregulated. The safe mode program interprets these abnormal responses as evidence that the threat persists—because in the evolutionary environment, abnormal exercise responses during infection _were_ evidence of ongoing threat. Physical exertion during ME/CFS therefore triggers further suppression rather than the gradual disengagement that would occur during normal recovery from infection. This is the biological basis of post-exertional malaise under the safe mode model: PEM is not a failure to cope with exertion, but the program's enforcement mechanism for continued energy conservation.

*Assessment against the four criteria.*

    - *Precipitant compatibility:* Infection and severe stress are the canonical activators of the sickness behavior and metabolic suppression programs. The safe mode response evolved precisely to be triggered by these events. This criterion is met with particular strength: the safe mode hypothesis does not merely _accommodate_ known precipitants—it _predicts_ them.

    - *Energy collapse sufficiency:* The program deliberately suppresses energy production. Post-exertional malaise is the body's enforcement mechanism: the metabolic cost of exertion is deferred (Section @sec:evolutionary-deferred-cost) and then collected aggressively, producing the characteristic delayed crash. The delay is not pathological—it reflects normal physiology of deferred metabolic cost—but the severity of the crash is amplified by the suppressed restoration capacity.

    - *Chronicity:* The self-reinforcing nature of the program—where exertion signals continued threat, and the resulting further suppression prevents the normal disengagement process—creates a stable lock. Epigenetic stabilization of the metabolic gene expression changes (Section @sec:epigenetic-dynamics) can make the lock effectively permanent. The longer the program remains engaged, the more deeply it becomes entrenched.

    - *Multi-system spread:* The safe mode program is a whole-body metabolic shift, not a tissue-specific phenomenon. Every cell that depends on mitochondrial ATP production is affected. The behavioral components (fatigue, anorexia, withdrawal) are mediated by hypothalamic signaling that coordinates the whole organism. The immune components affect all immune cell lineages. The metabolic components affect every tissue that uses oxidative phosphorylation.

#hypothesis(title: [Metabolic Safe Mode as Trigger-Capable Root Cause])[
ME/CFS represents an evolutionarily conserved metabolic suppression program—activated by infection, stress, or trauma—that fails to disengage due to persistent immune signaling, hypothalamic setpoint shift, epigenetic stabilization, or the program's own self-reinforcing exertion logic. The program's deliberate suppression of energy production, combined with its interpretation of exertion as evidence of ongoing threat, creates a stable lock that explains both the multi-system nature of the disease and the characteristic worsening with activity.

*Certainty:* 0.45. The evolutionary logic is compelling and the metabolomic data (itaconate pathway activation, IDO upregulation, tryptophan depletion, coordinated mitochondrial changes) are consistent with a deliberate program rather than random damage. The behavioral profile of ME/CFS closely matches the sickness behavior program described in Chapter @ch:symptom-mechanisms. However, direct evidence that ME/CFS metabolism represents an _intentional_ program rather than _damage_ is lacking, and the hypothesis risks being unfalsifiable if any metabolic abnormality can be reinterpreted as “safe mode.”

*Testable predictions:*

    - The metabolic profile of ME/CFS should resemble early infection more closely than mitochondrial disease, deconditioning, or chronic fatigue of other etiologies. Specifically, the itaconate/succinate ratio and kynurenine/tryptophan ratio should match acute infection patterns.
    - Interventions that “reset” the hypothalamic setpoint (e.g., controlled immune challenge followed by immune suppression, or pharmacological manipulation of hypothalamic cytokine receptors) should be more effective than interventions that directly supplement metabolic intermediates.
    - The metabolic suppression should show coordinated patterns (multiple pathways suppressed simultaneously in a pattern consistent with a program) rather than scattered, independent deficits.
    - Gene expression analysis should reveal activation of a coherent “sickness behavior” transcriptional module, not random metabolic gene dysregulation.

*Limitations:* The boundary between “deliberate suppression” and “damage” may be empirically indistinguishable at the level of current measurement technology. Itaconate elevation and IDO upregulation are consistent with both interpretations. The hypothesis also does not specify the molecular identity of the “lock” with enough precision to design a targeted intervention—“reset the hypothalamic setpoint” is a goal, not a pharmacological target.
] <hyp:safe-mode-root>

=== GPCR Autoantibody Cascade
<sec:root-gpcr>

The autoimmune hypothesis, detailed in Section @sec:gpcr-autoantibodies, proposes that autoantibodies against G-protein coupled receptors—particularly $beta_2$-adrenergic and muscarinic M3/M4 receptors—are sufficient to initiate the ME/CFS cascade. GPCRs are not niche signaling molecules: they constitute the largest family of cell surface receptors in the human genome, mediating adrenergic control of vasomotor tone, cardiac contractility, bronchial smooth muscle relaxation, immune cell trafficking, lipolysis, insulin secretion, and neurotransmitter release. Functional autoantibodies against these receptors produce endothelial dysfunction, impaired vasoregulation, dysregulated immune responses, and autonomic failure—a multi-system catastrophe arising from a single immunological mechanism.

The evidence base is substantial though internally conflicting, a tension that demands honest assessment. Elevated anti-$beta_2$-adrenergic and anti-muscarinic autoantibodies are reported in 29–91% of ME/CFS patients across studies @Loebel2016 @Bynke2020, with the wide range reflecting differences in assay methodology, patient selection, and definition of “elevated.” Symptom severity correlates with autoantibody titers in some studies @Sotzny2021, though the correlation is modest and not replicated in all cohorts.

The therapeutic evidence is more compelling than the biomarker evidence. Immunoadsorption—which non-selectively removes circulating antibodies including autoantibodies—produced clinical improvement in approximately 70% of treated patients in open-label studies @Stein2024immunoadsorption. The improvement was transient, recurring within months as autoantibody titers recovered, consistent with the autoantibodies being pathogenic (removing them helps) and continuously produced (the effect wears off when they return). Most compellingly, daratumumab (targeting CD38#super[+] plasma cells, the cellular factories that produce autoantibodies) produced marked improvement in 60% of patients in a pilot study @Fluge2025daratumumab, with the response latency (8–9 months) matching the expected decay kinetics of autoantibodies after their source is eliminated (IgG half-life approximately 3 weeks, but tissue-bound and sequestered antibodies persist longer).

The cascade from GPCR autoantibodies to full ME/CFS proceeds through several parallel pathways:

*Endothelial pathway.* Anti-$beta_2$ autoantibodies impair endothelium-dependent vasodilation by interfering with $beta_2$-adrenergic receptor signaling on endothelial cells. This reduces tissue perfusion, particularly in capillary beds where flow depends on active vasodilation. The resulting tissue hypoxia forces anaerobic metabolism, generating lactate and depleting NAD#super[+]. Chronic hypoperfusion additionally damages the endothelium itself, creating a secondary loop of endothelial dysfunction $arrow.r$ reduced flow $arrow.r$ more endothelial damage.

*Immune reprogramming pathway.* GPCR autoantibodies reprogram monocyte cytokine production toward a pro-inflammatory, tissue-remodeling phenotype, as reported by Hackel et al. @Hackel2025monocyte. This reprogramming produces elevated MIP-1$delta$, PDGF-BB, and TGF-$beta$3—cytokines that drive fibrosis, angiogenesis, and chronic inflammation. The reprogrammed monocytes create a self-sustaining inflammatory environment that persists even between autoantibody binding events (Section @hyp:autoantibody-monocyte).

*Autonomic pathway.* Anti-muscarinic autoantibodies (particularly anti-M3) disrupt parasympathetic signaling, while anti-$beta_2$ autoantibodies dysregulate sympathetic signaling. The combined effect is autonomic dysfunction affecting heart rate variability, blood pressure regulation, gut motility, and thermoregulation.

*Neuroinflammatory pathway.* Autoantibody-mediated endothelial dysfunction compromises the blood-brain barrier, permitting peripheral immune mediators and autoantibodies to access the CNS. Once in the brain, autoantibodies can directly affect neuronal and glial GPCRs, while the accompanying inflammatory infiltrate triggers microglial activation and the neuroinflammatory cascade described in Section @sec:root-cns-energy.

*Assessment against the four criteria.*

    - *Precipitant compatibility:* Molecular mimicry between viral antigens and GPCR epitopes is a well-established mechanism of post-infectious autoimmunity, documented in Chagas disease (anti-$beta_1$ autoantibodies following _Trypanosoma cruzi_ infection) and dilated cardiomyopathy. Bystander activation during acute infection can break tolerance to self-antigens that become exposed in damaged tissue. Surgical trauma releases sequestered self-antigens in the context of adjuvant-like inflammatory signaling, providing both antigen and activation signals for autoreactive B cells.

    - *Energy collapse sufficiency:* Endothelial dysfunction $arrow.r$ tissue hypoxia $arrow.r$ anaerobic metabolic shift $arrow.r$ ATP depletion. Exertion increases oxygen demand that hypoperfused tissues cannot meet, producing the delayed energy failure characteristic of PEM. The delay reflects the time required for tissue-level oxygen debt to accumulate and for the inflammatory response to the ischemia-reperfusion insult of exertion to peak.

    - *Chronicity:* Long-lived plasma cells in bone marrow and mucosal niches can secrete autoantibodies for decades without requiring ongoing B cell stimulation (Section @hyp:plasma-cell-sanctuary). These plasma cells are resistant to conventional immunosuppression and to B cell depletion (explaining the rituximab failure). Only plasma cell-targeting agents (daratumumab) or non-selective antibody removal (immunoadsorption) can address this reservoir.

    - *Multi-system spread:* GPCRs are expressed in virtually every tissue. $beta_2$-adrenergic receptors are found on cardiomyocytes, bronchial smooth muscle, vascular endothelium, hepatocytes, adipocytes, and immune cells. Muscarinic receptors are expressed in the brain, heart, smooth muscle, secretory glands, and immune cells. Functional autoantibodies against these receptors would produce dysfunction wherever these receptors mediate physiological responses—which is essentially everywhere.

#hypothesis(title: [GPCR Autoantibody Cascade as Trigger-Capable Root Cause])[
Functional autoantibodies against $beta_2$-adrenergic and muscarinic receptors, generated through molecular mimicry or bystander activation during infection, are sufficient to produce the full ME/CFS syndrome through endothelial dysfunction, tissue hypoperfusion, immune reprogramming, autonomic disruption, and multi-organ GPCR signaling dysfunction. Long-lived plasma cell sanctuaries in bone marrow and mucosal niches maintain autoantibody production indefinitely, explaining disease persistence.

*Certainty:* 0.45. The autoantibody findings are replicated across multiple laboratories, the immunoadsorption and daratumumab responses provide therapeutic proof-of-concept (the strongest form of evidence for pathogenicity), and the mechanistic cascade is well-characterized through both clinical observation and _in vitro_ studies. However, the BC007 Phase II trial—the only placebo-controlled study of autoantibody-targeted therapy to date—failed to demonstrate superiority over placebo at the population level @Hohberger2021bc007, raising serious questions about whether autoantibodies are pathogenic in all patients or merely a biomarker in a subset.

*Testable predictions:*

    - Autoantibody titers should predict treatment response to immunoadsorption and daratumumab. Patients with higher titers should respond better; patients without detectable autoantibodies should not respond.
    - Passive transfer of patient-derived autoantibodies (purified IgG fraction) to animal models should reproduce endothelial and autonomic dysfunction measureable by flow-mediated dilation and heart rate variability.
    - Autoantibody-positive patients should form a clinically distinct subgroup with characteristic features (e.g., more prominent autonomic dysfunction, more prominent vasomotor symptoms, earlier onset after infection) compared to autoantibody-negative patients.
    - Sequential immunoadsorption sessions should show a dose-response relationship between autoantibody titer reduction and clinical improvement.

*Limitations:* The wide prevalence range across studies (29–91%) suggests fundamental measurement inconsistency that must be resolved before the hypothesis can be rigorously tested. The BC007 Phase II failure is a significant challenge: if autoantibody neutralization does not produce benefit in a controlled setting, the causal role of autoantibodies is undermined (though the possibility remains that BC007's mechanism of action—DNA aptamer binding—is insufficient to neutralize all relevant autoantibody effects, particularly tissue-bound antibodies). Not all ME/CFS patients have detectable autoantibodies, implying that even if pathogenic, autoantibodies cannot explain all cases.
] <hyp:gpcr-root>

=== TRPM3 Channelopathy
<sec:root-trpm3>

The most recently validated candidate, TRPM3 ion channel dysfunction, was confirmed in a 2026 multi-site study @Sasso2026trpm3 and is detailed in Section @sec:trpm3-hypotheses. TRPM3 (Transient Receptor Potential Melastatin 3) is a calcium-permeable non-selective cation channel expressed in a remarkably diverse set of tissues: NK cells, T cells, B cells, neurons (including dorsal root ganglion nociceptors), pancreatic beta cells, vascular smooth muscle, renal epithelium, and retinal ganglion cells. Dysfunction of this single molecular target produces a breadth of downstream effects that rivals the multi-system reach of GPCR autoantibodies.

The central insight is that TRPM3 mediates calcium influx required for multiple calcium-dependent cellular processes: immune cell degranulation (the release of cytotoxic granules by NK cells and cytotoxic T cells), neurotransmitter vesicle fusion and release, insulin granule exocytosis, and vascular smooth muscle contraction. Calcium is the universal intracellular second messenger; a channel that gates calcium entry in multiple cell types is, by definition, a multi-system regulator.

When TRPM3 function is impaired, the consequences manifest simultaneously across all expressing tissues:

*Immunological consequences.* The “stuck doors” metaphor from Section @sec:trpm3-hypotheses captures the core immunological defect: immune cells (particularly NK cells) recognize their targets normally—the pattern recognition and activation machinery is intact—but cannot complete the killing because degranulation requires calcium influx through TRPM3 (among other channels). The cytotoxic granules are loaded, the cell is activated, but the final exocytosis step is impaired. The result is the paradoxical immune state characteristic of ME/CFS: simultaneous overactivation (persistent recognition, recruitment of more immune cells, elevated cytokine signaling) and underperformance (failed effector function, persistent target survival). This frustrated immune response consumes energy—activated immune cells have metabolic rates 10–100 times their resting rate—without achieving pathogen clearance, creating a sustained metabolic drain.

*Neurological consequences.* TRPM3 in dorsal root ganglion neurons participates in nociception and thermal sensation. Channel dysfunction may contribute to the pain sensitization, temperature dysregulation, and sensory processing abnormalities reported in ME/CFS. In central neurons, disrupted calcium signaling affects neurotransmitter release kinetics, potentially contributing to the cognitive dysfunction and altered synaptic plasticity.

*Metabolic consequences.* TRPM3 in pancreatic beta cells participates in glucose-stimulated insulin secretion. Channel dysfunction may impair insulin release, contributing to the glucose utilization abnormalities and metabolic inflexibility documented in ME/CFS (Chapter @ch:energy-metabolism). Additionally, mitochondrial calcium uptake—which regulates TCA cycle enzyme activity and oxidative phosphorylation rate—depends on cytosolic calcium signals that TRPM3 contributes to. Impaired TRPM3 function may therefore directly reduce mitochondrial metabolic capacity.

*Vascular consequences.* TRPM3 in vascular smooth muscle contributes to vessel tone regulation. Channel dysfunction may alter the balance between vasoconstriction and vasodilation, contributing to the perfusion abnormalities documented in ME/CFS.

*Assessment against the four criteria.*

    - *Precipitant compatibility:* Post-viral acquisition of TRPM3 dysfunction is plausible through several routes: direct viral modification of channel protein or its regulatory subunits, autoantibody formation against channel epitopes (particularly the extracellular domains), epigenetic silencing of TRPM3 gene expression during the inflammatory response, or persistent modification of the lipid membrane environment that affects channel gating (TRPM3 activity is modulated by membrane cholesterol and PIP#sub[2] content). The inflammatory and oxidative environment of acute infection could produce any of these modifications.

    - *Energy collapse sufficiency:* Impaired mitochondrial calcium signaling reduces oxidative phosphorylation capacity by limiting calcium-dependent activation of TCA cycle dehydrogenases. The frustrated immune response described above consumes ATP without resolution, creating a sustained metabolic drain. Disrupted insulin secretion impairs glucose utilization in insulin-dependent tissues. Together, these produce a multi-pathway energy failure that worsens with exertion, because exertion increases calcium-dependent metabolic demands that dysfunctional channels cannot support.

    - *Chronicity:* If TRPM3 dysfunction reflects a structural channel modification (covalent post-translational modification, autoimmune targeting, or epigenetic silencing), it persists independently of the triggering event. The secondary immune dysregulation—chronic activation without resolution—further stabilizes the pathological state by maintaining the inflammatory environment that may have caused the channel dysfunction in the first place.

    - *Multi-system spread:* TRPM3 is expressed across immune, neural, endocrine (pancreatic), and vascular tissues. Channel dysfunction in all these tissues produces the multi-system presentation characteristic of ME/CFS. The tissue distribution of TRPM3 maps remarkably well onto the organ systems affected in ME/CFS.

#hypothesis(title: [TRPM3 Channelopathy as Trigger-Capable Root Cause])[
Dysfunction of the TRPM3 calcium channel, acquired post-virally through structural modification, autoimmune targeting, or epigenetic silencing, is sufficient to generate multi-system ME/CFS through impaired immune effector function, disrupted mitochondrial calcium signaling, and widespread calcium-dependent process failure across tissues. The tissue distribution of TRPM3 expression provides a molecular basis for the multi-system nature of the disease.

*Certainty:* 0.40. The multi-site validation of TRPM3 dysfunction by Sasso et al.\ is methodologically strong (multiple independent sites, standardized protocols, blinded analysis), and the breadth of TRPM3 expression provides a uniquely plausible mechanism for multi-system disease. However, it is not yet established that TRPM3 dysfunction is _primary_ rather than secondary to upstream signaling abnormalities (e.g., GPCR autoantibodies modulating TRPM3 gating via second messenger pathways involving PLC and PIP#sub[2] depletion, as proposed in Section @sec:trpm3-hypotheses). The finding is recent and awaits replication with larger, more diverse, well-characterized cohorts.

*Testable predictions:*

    - Severity of TRPM3 dysfunction (measured by calcium flux amplitude and kinetics) should correlate with NK cell cytotoxicity impairment, mitochondrial function on exercise testing, and overall disease severity.
    - TRPM3 agonists (pregnenolone sulfate, CIM0216) should partially restore immune cell function _in vitro_, measured by NK cell degranulation assays.
    - If TRPM3 dysfunction is secondary to GPCR autoantibodies, removing the autoantibodies (by immunoadsorption or daratumumab) should restore TRPM3 function within weeks; if primary, TRPM3 dysfunction should persist despite autoantibody removal. This is a critical discriminating experiment.
    - Patients with more severe TRPM3 impairment should show worse metabolic flexibility on two-day cardiopulmonary exercise testing (the gold standard for PEM quantification).

*Limitations:* TRPM3 dysfunction has been demonstrated primarily in peripheral blood immune cells; whether it extends to neural, pancreatic, and vascular TRPM3 in ME/CFS patients is assumed based on systemic expression but not yet directly measured. Tissue-specific TRPM3 function studies would require biopsy specimens or advanced imaging, neither of which is routinely available. The causal direction—whether TRPM3 dysfunction drives the disease or is itself a consequence of the chronic inflammatory and metabolic environment—is the key unresolved question.
] <hyp:trpm3-root>

=== Relationships Among Trigger-Capable Mechanisms
<sec:root-cause-relationships>

The four trigger-capable mechanisms are not independent. Their interconnections are extensive and create a web of potential co-activation that complicates the question of “which came first” while simultaneously explaining why ME/CFS is so resistant to single-target treatments.

GPCR autoantibodies may modulate TRPM3 gating through second messenger pathways: muscarinic receptor autoantibodies activate phospholipase C, which hydrolyzes PIP#sub[2]—a lipid required for TRPM3 channel activity (Section @sec:trpm3-hypotheses). Chronic PIP#sub[2] depletion from sustained autoantibody-driven PLC activation could reduce TRPM3 function, making the GPCR autoantibody cascade and TRPM3 channelopathy two aspects of a single pathogenic process rather than independent root causes.

CNS energy failure may activate the metabolic safe mode program: if hypothalamic energy supply drops below a threshold, the brain may interpret this as a threat signal and engage the metabolic suppression program, linking the CNS energy crisis to the safe mode lock. Conversely, the safe mode program's deliberate metabolic suppression includes reduced cerebral blood flow and neurotransmitter synthesis, contributing to the CNS energy deficit.

The safe mode program's immune activation component—maintained cytokine production, persistent inflammatory signaling—creates an environment conducive to autoimmune break through molecular mimicry or bystander activation, potentially generating GPCR autoantibodies as a secondary consequence of the safe mode state.

These interconnections mean that in practice, trigger-capable mechanisms may co-activate, and the question of which mechanism was “first” may be unanswerable in individual patients. The more productive question—and the one with therapeutic relevance—is: which root-level processes are _currently active_ and maintaining the disease? A patient whose disease began with GPCR autoantibodies may now be maintained primarily by the metabolic safe mode lock, if epigenetic consolidation has rendered the safe mode self-sustaining independent of its original autoantibody trigger. Conversely, a patient who entered through the safe mode door may now have developed secondary GPCR autoantibodies that represent a new, independent disease-maintaining mechanism.

This distinction between _initiating cause_ and _maintaining cause_ is crucial for treatment strategy and is developed further in Section @sec:treatment-vs-cause.

Figure @fig:trigger-mechanism-relationships maps the bidirectional interactions among the four trigger-capable mechanisms, illustrating how co-activation and mutual reinforcement complicate the identification of a single initiating cause.

#include "../figures/fig-trigger-mechanism-relationships.typ"

// =============================================================================
// SECTION 3: AMPLIFIER MECHANISMS
// =============================================================================

== Amplifier Mechanisms
<sec:amplifiers>

Amplifier mechanisms are real, well-documented pathophysiological processes that worsen and perpetuate ME/CFS but cannot initiate the disease independently. Each fails at least one of the four trigger-capable criteria. Their importance should not be underestimated: amplifiers are often the difference between mild and severe disease, and some are _load-bearing_—meaning their removal is necessary for recovery even if they were not the original cause. In a multi-lock disease, amplifiers can matter as much as root causes for treatment strategy.

Table @tab:amplifiers summarizes the amplifier mechanisms, identifying which criterion each fails, what it amplifies, and its therapeutic tractability. The sections that follow provide the biological reasoning for each classification.

// TODO: landscape
// Placeholder for commented-out table:
#figure([], kind: table, supplement: [Table], caption: [tab:amplifiers — table conversion pending]) <tab:amplifiers>

/* TODO: Fix this table
#table(
  columns: (auto, auto, auto, auto, auto, auto),
  // TODO: fix columnsp{2.5cm}p{4.5cm}p{3.5cm}p{2.0cm}p{2.5cm}}
// caption: [Amplifier Mechanisms in ME/CFS: Classification and Tractability], <tab:amplifiers>

[*Amplifier*], [*Failed Criterion*], [*Why It Fails*], [*What It Amplifies*], [*Tractability*], [*Formal Model*],

[*Amplifier*], [*Failed Criterion*], [*Why It Fails*], [*What It Amplifies*], [*Tractability*], [*Formal Model*],

[NAD#super[+] depletion spiral], [Criterion 1 (precipitant)], [Requires prior oxidative stress or DNA damage to activate PARPs; does not arise from infection directly], [Energy failure; mitochondrial dysfunction; immune cell exhaustion], [Moderate (NR/NMN supplementation)], [Sec. @sec:energy-immune-coupling],



[Oxidative stress vicious cycle], [Criterion 1 (precipitant)], [Consequence of upstream mitochondrial dysfunction; ROS overproduction follows energy failure], [Mitochondrial damage; membrane lipid peroxidation; protein carbonylation], [Moderate (antioxidants, Nrf2 activators)], [Sec. @sec:bifurcation-analysis],



[Mast cell–energy loop], [Criterion 2 (PEM sufficiency)], [MCAS produces neuroinflammation and histamine-mediated symptoms but does not independently produce PEM], [Neuroinflammation; gut permeability; pain; cognitive dysfunction], [High (antihistamines, mast cell stabilizers)], [Sec. @sec:energy-immune-coupling],



[Viral reactivation $arrow.l.r$ immune exhaustion], [Criterion 1 (precipitant)], [Requires prior immune compromise; HHV-6/EBV reactivation is consequence, not cause, of immune failure], [Immune activation; cytokine burden; T cell exhaustion; tissue damage], [Low–Moderate (antivirals)], [Sec. @sec:energy-immune-coupling],



[Endothelial activation / microclotting], [Criterion 1 (precipitant)], [Requires upstream inflammatory trigger; endothelial dysfunction follows immune activation], [Tissue hypoxia; cerebral hypoperfusion; exercise intolerance], [Moderate (anticoagulants, endothelial support)], [Sec. @sec:bifurcation-analysis],



[Epigenetic consolidation], [Criterion 1 (precipitant)], [Responds to disease state; DNA methylation changes follow prolonged immune activation and metabolic stress], [Disease persistence; treatment resistance; lock stabilization], [Low (epigenetic modifiers are experimental)], [Sec. @sec:epigenetic-dynamics],



)
*/
// end landscape

=== NAD#super[+] Depletion Spiral
<sec:amp-nad>

NAD#super[+] is a central metabolic cofactor required for over 500 enzymatic reactions, including all three segments of the electron transport chain, sirtuin-mediated gene regulation (SIRT1–7), PARP-dependent DNA repair, and CD38-mediated calcium signaling. The total intracellular NAD#super[+] pool turns over multiple times per day, making its synthesis rate a critical determinant of metabolic capacity. In ME/CFS, NAD#super[+] levels are depleted through at least three converging mechanisms (Chapter @ch:energy-metabolism).

First, excessive PARP activation consumes NAD#super[+]. PARP1 and PARP2 are DNA repair enzymes that use NAD#super[+] as a substrate; each base excision repair event consumes one NAD#super[+] molecule, and severe DNA damage can activate PARP “hyperactivation,” which consumes NAD#super[+] faster than it can be regenerated. The oxidative stress environment of ME/CFS produces ongoing DNA damage, keeping PARPs chronically activated.

Second, CD38 on activated immune cells consumes NAD#super[+]. CD38 is a multifunctional ectoenzyme that degrades both NAD#super[+] and its precursor NMN. In ME/CFS, chronic immune activation produces elevated CD38 expression on T cells, NK cells, and monocytes, creating an immune-mediated sink for NAD#super[+] that operates systemically.

Third, NAD#super[+] de novo synthesis via the kynurenine pathway is impaired. When IDO shunts tryptophan toward kynurenine rather than serotonin, the downstream product quinolinic acid should eventually be converted to NAD#super[+] by QPRT (quinolinate phosphoribosyltransferase). However, if the kynurenine pathway is saturated or QPRT activity is limiting, the pathway produces neurotoxic intermediates (quinolinic acid, 3-hydroxykynurenine) without generating proportional NAD#super[+], creating the worst of both worlds: tryptophan depletion plus NAD#super[+] deficit (Section @sec:kynurenine-trap).

The spiral is self-reinforcing: NAD#super[+] depletion impairs mitochondrial complex I activity (which requires NADH), producing more reactive oxygen species from frustrated electron transport, causing more DNA damage, consuming more NAD#super[+] via PARPs. Reduced sirtuin activity (from low NAD#super[+]) impairs mitochondrial biogenesis and antioxidant gene expression, further worsening mitochondrial function and oxidative stress.

However, this spiral requires an _initiating event_ that produces the first round of oxidative stress and DNA damage—it cannot start from a healthy baseline. NAD#super[+] levels in healthy individuals are maintained in a stable steady state; they do not spontaneously collapse. Infection, CNS energy failure, autoantibody-mediated tissue hypoxia, or another root-cause mechanism must provide the initial oxidative insult. NAD#super[+] depletion is therefore a powerful amplifier that accelerates the disease but cannot be its origin. It fails Criterion 1.

The therapeutic tractability of NAD#super[+] depletion is moderate. Nicotinamide riboside (NR) and nicotinamide mononucleotide (NMN) supplementation can bypass the impaired de novo synthesis pathway and restore NAD#super[+] pools via the salvage pathway. Preliminary evidence from ME/CFS and Long COVID trials suggests potential benefit with NAD#super[+] precursors, though large-scale replication is lacking @Rekeland2024. The modest (rather than dramatic) benefit is itself evidence for the amplifier classification: addressing NAD#super[+] depletion helps, but does not cure, because the upstream processes driving NAD#super[+] consumption remain active.

=== Oxidative Stress Vicious Cycle
<sec:amp-oxidative>

Reactive oxygen species overproduction is among the most consistently documented abnormalities in ME/CFS (Chapter @ch:energy-metabolism). Elevated markers of lipid peroxidation (malondialdehyde, 4-hydroxynonenal, F2-isoprostanes), protein oxidation (protein carbonyls), and DNA oxidation (8-hydroxydeoxyguanosine) are reported across multiple cohorts. The antioxidant defense system shows corresponding depletion: reduced glutathione, diminished superoxide dismutase activity, and impaired catalase function.

The vicious cycle operates through mitochondrial membrane damage. Reactive oxygen species peroxidize cardiolipin, the signature phospholipid of the inner mitochondrial membrane that anchors the electron transport chain complexes and facilitates their supercomplex assembly. Cardiolipin peroxidation destabilizes the supercomplexes, increasing electron leak from complexes I and III, generating more ROS. Simultaneously, lipid peroxidation produces 4-hydroxynonenal (4-HNE), a reactive aldehyde that covalently modifies mitochondrial proteins including aconitase, $alpha$-ketoglutarate dehydrogenase, and NADH:ubiquinone oxidoreductase—all critical TCA cycle and ETC enzymes. The Nrf2 antioxidant response pathway, which should activate compensatory antioxidant gene expression, may become epigenetically suppressed in chronic ME/CFS through methylation of the Nrf2 promoter.

Oxidative stress is a powerful amplifier that accelerates mitochondrial decline, exacerbates neuroinflammation (via oxidation-triggered inflammasome activation), and contributes to the endothelial dysfunction that impairs tissue perfusion. It also drives the ferroptosis susceptibility discussed in Section @sec:consequences. But oxidative stress fails Criterion 1 because it is downstream of mitochondrial dysfunction, not its cause. Healthy mitochondria with intact electron transport chains and competent antioxidant defenses do not spontaneously generate pathological ROS levels in response to infection. The infection must first compromise mitochondrial function through another pathway (neuroinflammation, metabolic suppression, autoantibody-mediated hypoxia), and only then does the oxidative stress cycle engage.

The formal relationship between oxidative stress and the disease attractor is modeled in Section @sec:bifurcation-analysis, where oxidative stress acts as a parameter that deepens the disease basin (making escape more difficult and worsening the disease state) without creating the basin itself.

=== Mast Cell–Energy Loop
<sec:amp-mast-cell>

Mast cell activation syndrome (MCAS) is increasingly recognized as prevalent in ME/CFS, with estimates of comorbidity ranging from 30% to over 60% depending on diagnostic criteria used @Castells2024mcasreview. MCAS produces a formidable and clinically debilitating symptom burden: histamine-mediated cognitive dysfunction (“brain fog” from histamine H1/H3 receptor activation in the brain), increased gut permeability (mast cell degranulation in the intestinal mucosa disrupts tight junctions), cutaneous reactions (urticaria, flushing, dermatographia), and neuroinflammation via CNS mast cell degranulation (brain-resident mast cells release tryptase, which activates protease-activated receptors on microglia, triggering microglial activation and cytokine release @Theoharides2021Cells).

The mast cell–energy loop operates bidirectionally. Mast cell mediators (histamine, tryptase, prostaglandins, leukotrienes) worsen the ME/CFS disease state by increasing BBB permeability, activating neuroinflammation, disrupting gut barrier function, and consuming metabolic resources. Conversely, the ME/CFS disease state—particularly the autonomic dysfunction, neuroinflammation, and oxidative stress—activates mast cells through stress neuropeptides (substance P, corticotropin-releasing hormone), reactive oxygen species, and complement fragments.

MCAS amplifies ME/CFS powerfully but fails Criterion 2: mast cell activation alone does not produce post-exertional malaise. Patients with primary MCAS (without ME/CFS or other fatiguing illness) experience allergic and inflammatory symptoms—flushing, gastrointestinal distress, urticaria, anaphylactoid episodes—but not the delayed, disproportionate energy collapse characteristic of PEM. They may experience fatigue from the metabolic cost of degranulation episodes, but it is immediate and proportional, not delayed and amplified. The mast cell–energy loop requires pre-existing energy metabolism dysfunction or central coordination failure to produce PEM; it worsens the crash but does not create the underlying vulnerability.

This classification has direct and important therapeutic implications. Mast cell stabilizers (cromolyn sodium, ketotifen) and antihistamines (H1 blockers like cetirizine, H2 blockers like famotidine) can substantially reduce the symptom burden generated by the mast cell–energy loop. In some patients, the reduction is dramatic—cognitive function improves, gut symptoms resolve, skin reactions abate. This high tractability makes MCAS treatment a priority despite its amplifier status (see Table @tab:treatment-priority). However, mast cell stabilization should not be expected to cure ME/CFS, because it addresses the amplifier without touching the root cause. Patients who respond well to MCAS treatment should be counseled that the underlying disease process remains active even as symptoms improve.

=== Viral Reactivation and Immune Exhaustion
<sec:amp-viral>

Reactivation of latent herpesviruses (EBV, HHV-6, CMV) is documented in ME/CFS through multiple lines of evidence: elevated IgG antibody titers against early antigen (EA), detection of viral DNA in peripheral blood, and identification of viral transcripts in tissue samples (Chapter @ch:immune-dysfunction). The reactivation creates a destructive feedback loop: immune exhaustion permits viral reactivation, which consumes immune resources (activated T cells have metabolic rates 10–100 times resting levels) and produces viral proteins that further exhaust the immune response through checkpoint receptor upregulation (PD-1, CTLA-4, LAG-3 on virus-specific T cells).

The resulting chronic immune activation produces cytokines that maintain the sickness behavior program (Section @sec:ch15-sickness-behavior), contributes to the metabolic burden, and may generate autoantibodies through molecular mimicry between herpesvirus proteins and host self-antigens. EBV is particularly relevant: its LMP1 protein mimics CD40 signaling, potentially driving autoreactive B cell survival and differentiation into autoantibody-producing plasma cells.

However, viral reactivation fails Criterion 1: it requires pre-existing immune compromise to occur. In immunocompetent individuals, latent herpesviruses remain controlled by a balanced immune response (memory T cells, NK cell surveillance, interferon signaling). Reactivation occurs when this surveillance fails. The initial immune compromise must come from elsewhere—CNS-mediated immune dyscoordination, autoantibody-driven immune dysfunction, the metabolic safe mode's deliberate immune suppression, or TRPM3-mediated immune effector failure. Viral reactivation is a consequence of, not a cause of, the initial immune failure.

The distinction matters clinically. Antiviral therapy (valacyclovir for EBV, valganciclovir for HHV-6/CMV) may reduce viral burden and the associated immune activation, providing symptomatic benefit in patients with documented reactivation. But it addresses an amplifier loop, which is why antiviral monotherapy produces inconsistent results in trials—it quiets one consequence of immune failure without correcting the immune failure itself. The patients most likely to benefit are those in whom viral reactivation is a dominant amplifier contributing disproportionately to their symptom burden; patients whose disease is maintained primarily by other amplifiers may show little response.

=== Endothelial Activation and Microclotting
<sec:amp-endothelial>

Endothelial dysfunction and microclot formation have received increasing attention following discoveries in Long COVID, with growing evidence for similar processes in pre-pandemic ME/CFS. Elevated VWF (von Willebrand factor), fibronectin, and thrombospondin levels document endothelial activation and a pro-thrombotic state @Hoel2026proteome. The Hoel 2026 serum proteomics study additionally identified disrupted Ephrin signaling and reduced endothelial adhesion molecules (vimentin, ANTXR2, CXADR), suggesting active endothelial remodeling—the endothelium is not merely activated but is undergoing structural reorganization that may permanently alter vascular function.

The downstream consequences of endothelial dysfunction are severe. Microclot formation in capillary beds reduces the effective capillary surface area available for gas exchange, forcing tissues to operate with reduced oxygen delivery. This is particularly damaging in metabolically active tissues—brain, muscle, heart—where oxygen demand is high and reserves are limited. The resulting tissue hypoxia forces anaerobic metabolism, generates lactate, depletes NAD#super[+], and produces the exercise intolerance and post-exertional metabolic crisis characteristic of ME/CFS.

Endothelial activation fails Criterion 1 because it requires an upstream inflammatory trigger. Healthy endothelium does not spontaneously activate in response to infection without intervening immune signaling. The sequence is: triggering event $arrow.r$ immune activation $arrow.r$ cytokine and complement-mediated endothelial activation $arrow.r$ VWF release and prothrombotic shift $arrow.r$ microclot formation $arrow.r$ tissue hypoxia. The endothelial dysfunction amplifies energy failure by restricting oxygen and nutrient delivery but does not create the initial energy failure.

Therapeutic tractability is moderate. Anticoagulant therapy (low-dose aspirin, low-molecular-weight heparin), fibrinolytic approaches (nattokinase, lumbrokinase), and endothelial support (omega-3 fatty acids, sulforaphane for endothelial Nrf2 activation) may improve perfusion and reduce microclot burden. However, without addressing the upstream immune activation that drives ongoing endothelial activation, the benefit is likely to be partial and to require indefinite continuation.

=== Epigenetic Consolidation
<sec:amp-epigenetic>

Epigenetic modification—DNA methylation changes, histone modifications, and chromatin remodeling—is perhaps the most consequential amplifier in ME/CFS because it transforms reversible functional dysfunction into durable structural change at the level of gene regulation. DNA methylation changes are documented in ME/CFS immune cells, and disease duration predicts the extent of epigenetic modification (Chapter @ch:genetics-epigenetics). Patients with longer disease duration show more extensive methylation changes, and these changes correlate with disease severity and treatment resistance.

The process of epigenetic consolidation can be understood as the genome “learning” the disease state. During the acute phase of ME/CFS onset, gene expression changes are driven by signaling events: cytokines activate transcription factors that upregulate inflammatory genes; metabolic stress activates AMPK that shifts metabolic gene expression; hypoxia activates HIF-1$alpha$ that reprograms energy metabolism toward glycolysis. These signaling-driven changes are inherently reversible—remove the signal, and gene expression returns to baseline.

However, if the altered gene expression pattern persists long enough (weeks to months), the chromatin machinery begins to inscribe it into the epigenome. DNA methyltransferases (DNMT3A, DNMT3B) add methyl groups to CpG sites in the promoters of genes that have been silenced, making the silencing permanent. Histone deacetylases remove acetyl groups from histones at activated gene loci, compacting the chromatin and restricting future transcription factor access. The result is a gene expression pattern that persists through cell division, independent of the signals that originally established it.

Epigenetic consolidation fails Criterion 1 definitively: methylation patterns _respond to_ the disease state; they do not initiate it. No known ME/CFS precipitant directly causes the specific epigenetic changes observed in ME/CFS immune cells. Rather, the sustained metabolic stress, chronic immune activation, and altered signaling environment of ME/CFS gradually inscribe the disease state into the epigenome, making it self-perpetuating even if the original triggers resolve.

This makes epigenetic consolidation uniquely important among amplifiers—it is almost certainly _load-bearing_ (see Section @sec:load-bearing-locks). Even if every other mechanism were corrected—autoantibodies removed, safe mode disengaged, CNS energy restored—epigenetically stabilized gene expression patterns could maintain the disease state by keeping immune cells in their activated phenotype, metabolic enzymes in their suppressed expression pattern, and inflammatory programs in their perpetually “on” state. The clinical implication is that early intervention—before epigenetic consolidation occurs—should produce dramatically better outcomes than delayed treatment. This prediction would be consistent with clinical reports suggesting that early intervention may improve outcomes, though systematic evidence for this observation remains limited @Cairns2005prognosis @Lacourt2022prognosis.

The dynamics of epigenetic consolidation are formalized in Section @sec:epigenetic-dynamics, where the epigenetic state is modeled as a slow variable (changing over months to years) that progressively deepens the disease attractor basin. The mathematical analysis shows that the attractor deepens non-linearly: there is a critical period during which the disease is still relatively shallow and escapable, followed by a transition to a deeply entrenched state that resists even aggressive multi-target intervention.

// =============================================================================
// SECTION 4: DOWNSTREAM CONSEQUENCES
// =============================================================================

== Downstream Consequences
<sec:consequences>

The mechanisms classified below are real, clinically significant, and often the immediate source of patient suffering. They are classified as consequences—not because they are unimportant, but because treating them in isolation, without addressing the upstream causes and amplifiers, cannot resolve the disease. They are the smoke, not the fire; extinguishing them brings relief but does not put out the blaze.

The distinction between amplifiers and consequences is sometimes blurry. The key difference is that amplifiers have self-reinforcing feedback loops that can maintain or worsen the disease independently, while consequences are passively generated by the disease state and would resolve if the upstream processes were corrected. In practice, some consequences have weak feedback effects (sleep fragmentation mildly impairs immune function, for example), but these effects are insufficient to maintain the disease in the absence of the primary drivers.

*Persistent sickness behavior.* The chronic activation of the hypothalamic sickness behavior program, detailed in Chapter @ch:symptom-mechanisms, produces much of the lived experience of ME/CFS: fatigue, malaise, cognitive impairment, pain, and social withdrawal. These symptoms are generated by cytokine signaling to the brain, prostaglandin-mediated hypothalamic effects, and vagal afferent activation—not by tissue damage per se. Sickness behavior is a consequence of the upstream immune dysregulation and neuroinflammation rather than a self-sustaining independent process. If the upstream immune activation were completely suppressed, the sickness behavior program should disengage—though epigenetic consolidation of microglial activation may delay this resolution by maintaining CNS cytokine production even after peripheral immune activation normalizes.

*Sleep fragmentation.* The unrefreshing sleep universal in ME/CFS reflects disrupted sleep architecture: reduced slow-wave sleep (which is required for glymphatic clearance, growth hormone secretion, and memory consolidation), increased cortical arousals, and altered circadian signaling (Chapter @ch:neurological). While sleep disruption worsens cognitive function and impairs the restorative processes that occur during deep sleep, it is downstream of the autonomic dysfunction (which disrupts sleep-regulating circuits), neuroinflammation (which alters neurotransmitter balance in sleep centers), and hypothalamic dysregulation (which disrupts circadian rhythm generation) produced by the trigger-capable mechanisms. Improving sleep quality through pharmacological means (low-dose trazodone, suvorexant, melatonin) helps patients symptomatically but does not address the neuroinflammatory and autonomic processes that fragment sleep.

*Catecholamine synthesis failure.* The reduced CSF catecholamine precursors documented by Walitt et al. @Walitt2024NIH—DOPA reduced by approximately 50%, DOPAC and DHPG correspondingly diminished—reflect cofactor depletion rather than primary enzymatic failure. Catecholamine synthesis requires tyrosine hydroxylase (which needs BH4, iron, and oxygen as cofactors) and dopamine $beta$-hydroxylase (which needs ascorbate and copper). In the oxidative, hypoxic, nutritionally depleted environment of ME/CFS, all of these cofactors are compromised. Supplementing cofactors (BH4, iron if deficient, vitamin C) may provide some benefit, but the oxidative and metabolic environment that depletes them would need to change fundamentally for sustained improvement.

*Ferroptosis susceptibility.* The chronic state of oxidative stress, iron dysregulation, and glutathione depletion in ME/CFS creates conditions favorable to ferroptotic cell death (Section @sec:ferroptosis). Ferroptosis is an iron-dependent form of programmed cell death driven by lipid peroxidation; it requires the convergence of free iron, depleted glutathione (the substrate for GPX4, the key anti-ferroptotic enzyme), and polyunsaturated fatty acid-rich membranes. ME/CFS provides all three conditions. Cells in affected tissues may exist at the “edge of ferroptosis”—not dying en masse, but experiencing chronic low-grade cell loss that contributes to progressive tissue damage and functional decline. This is a consequence of the upstream oxidative and metabolic environment, not an independent driver.

*Deferred-cost PEM architecture.* The evolutionary deferred-cost model (Section @sec:evolutionary-deferred-cost) proposes that PEM exploits normal physiology: the body's evolved capacity to defer the metabolic cost of acute exertion and collect it later. In health, this mechanism enables emergency performance (fight-or-flight responses that borrow against future metabolic capacity); the deferred cost is repaid during subsequent rest with minimal consequence. In ME/CFS, the “collection” phase is amplified by broken restoration machinery: the metabolic debt incurred during exertion cannot be efficiently repaid because the restoration processes (mitochondrial repair, glycogen replenishment, oxidative damage clearance) are themselves compromised. The deferred-cost architecture is normal physiology—what makes it pathological in ME/CFS is the failure of the restoration systems. Treating the architecture (e.g., by suppressing the deferral mechanism) would be counterproductive; treating the broken restoration machinery requires addressing the upstream causes.

Table @tab:mechanism-classification consolidates the three-tier classification of all mechanisms discussed in this chapter, providing a single reference for the causal role, key evidence, and therapeutic tractability of each.

// TODO: landscape
// Placeholder for commented-out table:
#figure([], kind: table, supplement: [Table], caption: [tab:mechanism-classification — table conversion pending]) <tab:mechanism-classification>

/* TODO: Fix this table
#table(
  columns: (auto, auto, auto, auto, auto, auto),
  // TODO: fix columnsp{2.2cm}p{1.2cm}p{4.5cm}p{3.0cm}p{2.5cm}}
// caption: [Complete Mechanism Classification: Root Causes, Amplifiers, and Consequences], <tab:mechanism-classification>

[*Mechanism*], [*Causal Tier*], [*Cert.*], [*Key Evidence*], [*Failed Criterion*], [*Tractability*],

table.cell(colspan: 6)[*Trigger-Capable Root Causes*],

[CNS energy crisis], [Root cause], [0.50], [PET/SPECT hypometabolism; CSF catecholamine deficit (Walitt 2024)], [Passes all 4], [Low],


[Metabolic safe mode lock], [Root cause], [0.45], [Itaconate/IDO upregulation; coordinated metabolic suppression pattern], [Passes all 4], [Low–Moderate],


[GPCR autoantibody cascade], [Root cause], [0.45], [Elevated autoantibodies; 60% daratumumab response; endothelial dysfunction], [Passes all 4], [Moderate–High],


[TRPM3 channelopathy], [Root cause], [0.35], [Multi-site NK cell TRPM3 dysfunction; ubiquitous tissue expression], [Passes all 4], [Low],



table.cell(colspan: 6)[*Amplifier Mechanisms*],

[NAD#super[+] depletion spiral], [Amplifier], [—], [PARP/CD38 consumption; impaired de novo synthesis], [Criterion 1 (precipitant)], [Moderate],


[Oxidative stress cycle], [Amplifier (secondary)], [—], [Elevated ROS markers; cardiolipin peroxidation; Nrf2 suppression], [Criterion 1 (precipitant)], [Moderate],


[Mast cell–energy loop], [Amplifier], [—], [30–60% MCAS comorbidity; neuroinflammation via CNS mast cells], [Criterion 2 (PEM)], [High],


[Viral reactivation $arrow.l.r$ immune exhaustion], [Amplifier], [—], [Elevated EBV/HHV-6 titers; T cell exhaustion markers], [Criterion 1 (precipitant)], [Low–Moderate],


[Endothelial activation / microclotting], [Amplifier], [—], [Amyloid microclots; endothelial biomarkers], [Criterion 1 (precipitant)], [Moderate],


[Epigenetic consolidation], [Amplifier (load-bearing)], [—], [DNA methylation changes; histone modifications; duration-dependent entrenchment], [Criterion 1 (precipitant)], [Low],



table.cell(colspan: 6)[*Downstream Consequences*],

[Sickness behavior], [Consequence], [—], [Cytokine-mediated hypothalamic activation], [All 4 (dependent)], [Low–Moderate],


[Sleep fragmentation], [Consequence], [—], [Reduced slow-wave sleep; circadian disruption], [All 4 (dependent)], [Moderate],


[Catecholamine synthesis failure], [Consequence], [—], [CSF DOPA/DOPAC reduction; cofactor depletion], [All 4 (dependent)], [Moderate],


[Ferroptosis susceptibility], [Consequence], [—], [Iron dysregulation; glutathione depletion; lipid peroxidation], [All 4 (dependent)], [Low],


[Deferred-cost PEM architecture], [Consequence], [—], [Normal physiology exploited by broken restoration machinery], [All 4 (dependent)], [N/A],



)
*/
// end landscape

// =============================================================================
// SECTION 5: ENTRY POINTS
// =============================================================================

== Entry Points: Multiple Doors, One Final Common Pathway
<sec:entry-points>

If ME/CFS has multiple trigger-capable root causes, a natural question arises: why do patients with different triggering events converge on such a similar clinical picture? A patient whose ME/CFS began after mononucleosis, another whose disease followed a car accident, and a third whose onset was associated with a period of extreme psychological stress all end up with the same cardinal symptoms—PEM, cognitive dysfunction, unrefreshing sleep, autonomic dysfunction. The triggering events share nothing obvious in common. How can such different causes produce the same disease?

The answer, we propose, is that the trigger-capable mechanisms all converge on the same final common pathway: CNS energy failure combined with broken restoration machinery. The entry door differs; the destination is the same. This convergence is not coincidental—it reflects the architecture of human physiology, which has a limited number of “failure modes” despite having many possible inputs. Figure @fig:entry-points-funnel maps the routes from precipitant to entry mechanism to final common pathway.

Consider how different ME/CFS precipitants map to the trigger-capable mechanisms:

*Viral infection.* This is the most common ME/CFS precipitant, accounting for approximately 70% of cases, and it can enter through any of the four doors. Direct neurotropism (EBV infecting B cells that cross the BBB, HHV-6 infecting glial cells, SARS-CoV-2 infecting endothelial cells with ACE2 expression) or peripheral-to-central cytokine signaling can produce CNS energy crisis (Section @sec:root-cns-energy). The innate immune response to infection activates the metabolic safe mode program through IL-6, type I interferons, and TNF-$alpha$ signaling to the hypothalamus (Section @sec:root-safe-mode). Molecular mimicry between viral surface proteins and host GPCR epitopes generates autoantibodies (Section @sec:root-gpcr). Viral modification of ion channel expression, membrane lipid composition, or post-translational modifications may produce TRPM3 dysfunction (Section @sec:root-trpm3).

Different viruses may preferentially trigger different root-cause pathways. EBV, with its established tropism for B cells and its LMP1-mediated mimicry of CD40 signaling, may preferentially trigger the autoimmune pathway. Enteroviruses, with their direct mitochondrial effects, may preferentially trigger the metabolic safe mode. Influenza and SARS-CoV-2, with their potent systemic inflammatory responses, may preferentially trigger CNS neuroinflammation. This pathogen-specific pathway selection may partially explain why ME/CFS following different infections can have subtly different phenotypic profiles.

*Severe psychological or physiological stress.* Chronic or extreme stress activates the hypothalamic-pituitary-adrenal axis and the sympathetic nervous system at levels that can exhaust catecholamine reserves, shift the hypothalamic setpoint for metabolic regulation, and produce a cortisol pattern that transitions from elevated (acute stress) to blunted (chronic stress, adrenal exhaustion). This enters primarily through the metabolic safe mode door: extreme stress triggers the protective metabolic suppression program, which then fails to disengage when the stressor resolves because the hypothalamic setpoint has shifted. Stress-induced immunosuppression may also permit herpesvirus reactivation, creating a secondary inflammatory signal that maintains safe mode engagement and may secondarily generate autoantibodies.

*Surgery or trauma.* The combination of tissue damage, inflammatory response, anesthesia, and physiological stress associated with major surgery can trigger multiple entry doors simultaneously. The tissue damage releases cellular contents (including mitochondrial DNA, a potent DAMP) that activate the innate immune response. The inflammatory surge may generate autoantibodies through bystander activation of autoreactive B cells that encounter self-antigens released from damaged tissue in the context of adjuvant-like inflammatory signaling. The metabolic stress of surgery activates the safe mode program. Anesthesia and perioperative hemodynamic instability may produce transient CNS energy compromise that, if the brain is predisposed (by genetic susceptibility or subclinical prior pathology), tips into sustained neuroinflammation. The simultaneous engagement of multiple root-cause pathways may explain why post-surgical ME/CFS onset is often particularly severe and treatment-resistant.

*Vaccination.* In rare cases, vaccination can trigger ME/CFS, likely through molecular mimicry generating autoantibodies against GPCRs or ion channels (the adjuvant provides the immune activation context, and the antigen provides the molecular mimicry target). The adjuvant-driven immune activation may also engage the metabolic safe mode in genetically susceptible individuals who have exaggerated innate immune responses to adjuvant signals.

The convergence on a final common pathway—CNS energy failure plus broken restoration machinery—explains several otherwise puzzling features of ME/CFS:

    - *Clinical homogeneity despite diverse triggers:* Once the final common pathway is engaged, the downstream manifestations are determined by the pathway itself (autonomic failure, immune dysregulation, metabolic suppression, sleep disruption), not by the entry door.

    - *Within-disease heterogeneity:* Patients who entered through different doors retain features of their specific entry mechanism. Patients with GPCR autoantibodies may have more prominent autonomic dysfunction; patients who entered through CNS neuroinflammation may have more prominent cognitive symptoms; patients who entered through the safe mode may have more prominent metabolic features (cold intolerance, metabolic inflexibility). These “entry signatures” overlay the shared core features.

    - *Varying treatment responses:* If different patients are maintained by different mechanisms (reflecting their entry pathway and which amplifiers have engaged), then no single treatment will work for everyone. Daratumumab works for the autoimmune-entry subgroup; it would not be expected to help patients whose disease entered through the safe mode pathway and is now maintained by epigenetic consolidation.

Once a patient reaches the final common pathway, the amplifier mechanisms described in Section @sec:amplifiers engage and lock the disease state. The entry door no longer matters because the amplifiers maintain the disease independently of the triggering mechanism. This is why the triggering event is often years in the past by the time patients seek treatment, yet the disease persists: the locks are self-sustaining.

#include "../figures/fig-entry-points-funnel.typ"

#hypothesis(title: [Multiple Entry Points, Single Final Common Pathway])[
Different ME/CFS precipitants engage different trigger-capable mechanisms, but all converge on a shared final common pathway of CNS energy failure combined with broken metabolic restoration machinery. This convergence explains the clinical homogeneity of ME/CFS despite heterogeneous triggers, while residual entry-mechanism features account for patient-to-patient variation. The convergence is not accidental but reflects the limited number of stable “failure modes” available to the human physiological system.

*Certainty:* 0.45. The logic is compelling and consistent with the clinical epidemiology of ME/CFS onset, the phenotypic similarity across onset types, and the variable treatment responses. However, the “final common pathway” has not been directly demonstrated at the molecular level; it is inferred from clinical similarity across onset types and from the theoretical analysis of disease attractor basins. Multi-omics studies comparing patients with different onset types would be required to confirm convergence.

*Testable predictions:*

    - Patients stratified by onset type (post-viral, post-stress, post-surgical) should show different biomarker profiles early in disease (within the first year) but converging profiles as disease duration increases (after 3–5 years).
    - Early-stage patients should respond preferentially to treatments targeting their specific entry mechanism; late-stage patients should respond more uniformly to treatments targeting the final common pathway or its locks.
    - Multi-omics trajectory analysis should reveal a “funnel” topology: diverse initial states in high-dimensional omics space converging on a smaller number of attractor basins over time.
    - Patients with mixed precipitants (e.g., infection during a period of extreme stress) should show more rapid progression and more severe disease, consistent with simultaneous engagement of multiple entry doors.

*Limitations:* The hypothesis is difficult to test without longitudinal cohorts followed from disease onset, which are expensive and logistically challenging for a disease with unpredictable onset. The concept of a “final common pathway” may be an oversimplification—there may be 2–4 distinct disease attractors rather than a single one, corresponding to different stable configurations of the multi-lock system. Additionally, if entry signatures fade quickly (within months), they may be impossible to detect in clinical cohorts where diagnosis typically occurs years after onset.
] <hyp:final-common-pathway>

The infection cascade walkthrough in Chapter @ch:temporal-evolution provides a worked example of how a specific precipitant (viral infection) progresses through entry, amplification, and lock establishment to reach the final common pathway.

// =============================================================================
// SECTION 6: LOAD-BEARING VS. SECONDARY LOCKS
// =============================================================================

== Load-Bearing versus Secondary Locks
<sec:load-bearing-locks>

The multi-lock trap model (Section @sec:multi-lock-trap) established that ME/CFS persistence depends on multiple self-reinforcing mechanisms—“locks”—that maintain the disease state even after the original trigger has resolved. Not all locks are equal. A _load-bearing lock_ is one whose removal is necessary (though not necessarily sufficient) for escape from the disease attractor. A _secondary lock_ worsens symptoms and slows recovery but is not essential for disease maintenance: the remaining locks can sustain the disease without it.

The structural analogy is to a building: load-bearing walls support the structure; removing them causes collapse (of the disease state, in this case—which is the therapeutic goal). Non-load-bearing walls define spaces and provide insulation; removing them improves the interior without threatening the structure. In the disease context, “collapse” of the disease attractor means the system can return to the healthy state; removing secondary locks improves the patient's experience within the disease state without enabling escape. Figure @fig:load-bearing-locks illustrates this distinction and its predicted effect on disease trajectory.

#include "../figures/fig-load-bearing-locks.typ"

The distinction has profound therapeutic implications. Treating a secondary lock provides symptomatic benefit—often substantial, and sometimes dramatic enough that patients report feeling “much better.” But the benefit plateaus because the disease architecture remains intact. Treating a load-bearing lock may produce _no immediate improvement_ (because other locks compensate and maintain the disease state), yet it is essential for the eventual possibility of recovery. A treatment strategy that focuses exclusively on the most symptomatic locks—the ones causing the most daily suffering—may paradoxically be less effective in the long term than one that prioritizes load-bearing locks, even if the latter produces less immediate relief.

This creates a therapeutic dilemma: do you treat what hurts now (secondary locks) or what matters for recovery (load-bearing locks)? The answer, of course, is both—but the distinction ensures that load-bearing lock treatment is not neglected because its benefits are less immediately visible.

*Predicted load-bearing locks.*

_Epigenetic consolidation._ As discussed in Section @sec:amp-epigenetic, epigenetic modifications can maintain the disease gene expression program independently of the original triggers. If epigenetic consolidation has occurred, addressing the original root cause alone is insufficient: the disease state is now self-sustaining at the chromatin level. Epigenetic consolidation is load-bearing because its persistence guarantees disease persistence regardless of what else is treated. Remove the autoantibodies, disengage the safe mode, restore CNS energy—but if the epigenome still encodes the disease program, the system will re-establish the pathological state.

The load-bearing nature of epigenetic consolidation also explains the clinical observation that disease duration is the strongest predictor of prognosis. Early disease (before consolidation) is more responsive to treatment; late disease (after consolidation) resists even aggressive intervention. The “window of opportunity” for effective treatment is, in part, the window before epigenetic consolidation deepens the attractor beyond the reach of available interventions.

_Autoimmune persistence._ In patients with GPCR autoantibodies, the plasma cell sanctuaries that produce them represent a load-bearing lock. As long as autoantibody production continues, the downstream endothelial dysfunction, immune reprogramming, and multi-organ GPCR disruption will be maintained. This is true even if every other lock is released: the ongoing autoantibody assault will re-establish the pathological state within weeks to months.

The daratumumab response pattern is consistent with autoimmune persistence being a load-bearing lock: eliminating the plasma cell source of autoantibodies enables recovery in patients whose other locks are not yet fully consolidated (the 60% responders), while patients with deeply entrenched epigenetic consolidation may not recover even after autoantibody elimination (the 40% non-responders, who may need epigenetic intervention in addition to plasma cell depletion).

*Predicted secondary locks.*

_Oxidative stress cycle._ While oxidative stress amplifies mitochondrial damage and accelerates disease progression, it is downstream of the primary energy failure and would resolve if upstream mechanisms were corrected. Reducing oxidative stress (through antioxidant therapy) may slow deterioration and improve symptoms but cannot resolve the disease because the upstream mechanisms generating oxidative stress remain active. The oxidative stress cycle does not independently maintain the disease attractor.

_Sleep fragmentation._ Improving sleep quality reduces the symptom burden and may modestly improve restorative processes (glymphatic clearance, growth hormone secretion), but sleep fragmentation is generated by autonomic and neuroinflammatory dysfunction, not maintained independently. Patients whose sleep normalizes pharmacologically (e.g., with trazodone or suvorexant) without addressing upstream causes do not recover—they sleep better within the disease state.

_Viral reactivation._ Suppressing reactivated herpesviruses reduces immune activation and the associated metabolic burden, potentially improving symptoms. But the immune compromise that permitted reactivation persists, and other sources of immune activation remain. Antiviral therapy removes one input to the inflammatory loop, but the loop has other inputs that maintain it.

#hypothesis(title: [Load-Bearing Lock Identification])[
Among the amplifier mechanisms in ME/CFS, epigenetic consolidation and autoimmune persistence (plasma cell sanctuaries) are load-bearing locks whose removal is necessary for recovery. Oxidative stress, sleep fragmentation, and viral reactivation are secondary locks whose treatment provides symptomatic benefit but is neither necessary nor sufficient for recovery. The load-bearing locks are distinguished by their ability to independently sustain the disease attractor state, while secondary locks merely modulate its depth and the patient's position within it.

*Certainty:* 0.40. The distinction is logically grounded in the dynamics of each mechanism and consistent with treatment response patterns (e.g., daratumumab's 60% response rate when targeting a predicted load-bearing lock versus the modest, incomplete responses to antioxidants and antivirals targeting predicted secondary locks). However, no direct experimental test has distinguished load-bearing from secondary locks in ME/CFS, and the classification may differ across patient subgroups or disease stages.

*Testable predictions:*

    - Interventions targeting predicted load-bearing locks (epigenetic modifiers, plasma cell depletion) should produce sustained improvement that continues to accrue over months, even when secondary locks remain, provided the root cause has been addressed or has resolved.
    - Interventions targeting only secondary locks (antioxidants, antivirals, sleep aids) should produce improvement that plateaus within weeks and remains well below recovery, regardless of treatment duration or dose escalation.
    - Disease duration should correlate with the number and strength of load-bearing locks (measured by epigenetic modification extent and autoantibody titer), not with secondary lock severity (oxidative stress markers, viral titers, sleep architecture disruption).
    - In a multi-target treatment protocol, removing load-bearing locks should alter the _trajectory_ of disease progression (slope change), while removing secondary locks should alter the _level_ (intercept change).

*Limitations:* The load-bearing versus secondary classification may not be stable across patients or disease stages. A lock that is secondary early in disease (when the root cause is still the primary driver) may become load-bearing as the root cause resolves but the lock persists. The classification is based on theoretical reasoning about attractor dynamics rather than empirical measurement of individual lock contribution to disease maintenance.
] <hyp:load-bearing>

The formal analysis of lock removal—including the minimum number and combination of locks that must be released for escape from the disease attractor—is developed in Chapter @ch:causal-hierarchy-formal, where each lock is modeled as a parameter that modifies the attractor landscape and whose removal is analyzed for sufficiency and necessity.

// =============================================================================
// SECTION 7: TREATMENT IMPLICATIONS
// =============================================================================

== Treatment Implications of the Causal Hierarchy
<sec:treatment-vs-cause>

The causal hierarchy developed in this chapter leads to a counterintuitive insight that deserves emphasis: *root cause does not equal treatment priority*. The most upstream, most causally fundamental mechanism is not necessarily the most important therapeutic target. Three reasons explain this disconnect, and together they define a more nuanced approach to treatment strategy.

#warning-env(title: [Treatment Priority $eq.not$ Causal Priority])[
The framework presented here is a conceptual tool for reasoning about treatment strategy, not a clinical recommendation. Individual treatment decisions require physician evaluation, patient-specific assessment, and consideration of factors far beyond causal hierarchy—including drug interactions, comorbidities, patient preferences, access, cost, and risk tolerance. All therapeutic implications discussed below are preliminary and require clinical validation before informing treatment decisions.
]

*Reason 1: The root cause may be gone.* In many patients, the triggering event—a viral infection, a period of extreme stress, a surgical procedure—resolved years ago. The virus was cleared by the immune system; the stressor ended; the surgical wound healed. The disease persists not because the root cause is still active, but because the amplifier locks it established have become self-sustaining (Section @sec:load-bearing-locks). Treating the trigger now does nothing. Antiviral therapy in a patient whose triggering virus was cleared five years ago addresses neither the root cause (which is absent) nor the locks (which are independent of the virus). The clinical implication is that the question “what caused your ME/CFS?” may be less therapeutically relevant than “what is maintaining your ME/CFS now?”

*Reason 2: The most upstream cause may be least accessible.* CNS energy metabolism cannot currently be directly restored with available therapeutics. We cannot inject ATP into the brain, repair neurovascular coupling pharmacologically with targeted precision, or reverse microglial activation without collateral immunosuppression. The most causally fundamental mechanism—if it is the CNS energy crisis—is also the least therapeutically accessible with current technology. Meanwhile, downstream amplifiers like mast cell activation (high tractability: antihistamines, mast cell stabilizers) or NAD#super[+] depletion (moderate tractability: NR/NMN supplementation) are addressable now, with established safety profiles and demonstrated (if incomplete) efficacy.

*Reason 3: The multi-lock model predicts that single-mechanism treatments fail.* Even if a root cause is both present and accessible, treating it alone may fail because the amplifier locks maintain the disease independently. The multi-lock trap (Section @sec:multi-lock-trap) predicts that recovery requires releasing enough locks simultaneously that the remaining ones cannot sustain the disease state. This means treatment strategy is inherently combinatorial: the relevant question is not “which single mechanism should we target?” but “which combination of mechanisms, when addressed simultaneously, enables escape from the disease attractor?”

The practical conclusion is that treatment priority should be determined by the product of _causal importance_ and _therapeutic tractability_, not by causal importance alone. A highly causal mechanism with zero tractability has zero treatment priority (you cannot treat what you cannot reach). A moderately causal mechanism with high tractability may have the highest treatment priority (you can treat it, and treating it contributes to the combination needed for escape). Table @tab:treatment-priority applies this reasoning to the mechanisms classified in this chapter.

// TODO: landscape
// Placeholder for commented-out table:
#figure([], kind: table, supplement: [Table], caption: [tab:treatment-priority — table conversion pending]) <tab:treatment-priority>

/* TODO: Fix this table
#table(
  columns: (auto, auto, auto, auto, auto, auto),
  // TODO: fix columnsp{2.5cm}p{2.5cm}p{2.5cm}p{5.5cm}}
// caption: [Treatment Priority as a Function of Causal Tier and Tractability], <tab:treatment-priority>

[*Mechanism*], [*Causal Tier*], [*Tractability*], [*Priority Rank*], [*Rationale*],

[*Mechanism*], [*Causal Tier*], [*Tractability*], [*Priority Rank*], [*Rationale*],

[GPCR autoantibody cascade], [Root cause], [Moderate–High], [1], [Daratumumab and immunoadsorption demonstrate feasibility; targets a root cause that may still be active; 60% response rate is among the highest reported],



[Mast cell–energy loop], [Amplifier], [High], [2], [Antihistamines and mast cell stabilizers are safe, widely available, and produce rapid symptomatic relief; high tractability compensates for amplifier status; improves quality of life while other interventions take effect],



[NAD#super[+] depletion spiral], [Amplifier], [Moderate], [3], [NR/NMN supplementation is commercially available and well-tolerated; addresses a key amplifier of energy failure; benefits accrue over 8–12 weeks],



[Epigenetic consolidation], [Amplifier (load-bearing)], [Low], [4], [Critically important for recovery but current tools are limited; early intervention to _prevent_ consolidation is far more feasible than _reversal_ of established consolidation; argues for aggressive early treatment],



[Metabolic safe mode lock], [Root cause], [Low–Moderate], [5], [No specific intervention exists to “reset” the hypothalamic setpoint; indirect approaches (controlled immune challenge, metabolic reprogramming protocols) are experimental and poorly characterized],



[Endothelial activation / microclotting], [Amplifier], [Moderate], [6], [Anticoagulants and endothelial support are available; benefit depends on upstream immune activation being concurrently addressed; may enable other treatments to reach target tissues],



[CNS energy crisis], [Root cause], [Low], [7], [Most causally important but least therapeutically accessible; transcranial photobiomodulation, intranasal insulin, and hyperbaric oxygen are experimental with limited ME/CFS-specific data],



[TRPM3 channelopathy], [Root cause], [Low], [8], [No approved TRPM3-targeted therapies exist; channel modulation by existing compounds (pregnenolone sulfate) is a research tool, not a therapeutic; pharmaceutical TRPM3 modulators are in early development],



[Viral reactivation $arrow.l.r$ immune exhaustion], [Amplifier], [Low–Moderate], [9], [Antivirals address only one component of a bidirectional loop; benefit inconsistent across trials; most appropriate as adjunct to immune-targeting therapies],



[Oxidative stress vicious cycle], [Amplifier (secondary)], [Moderate], [10], [Antioxidants are widely available but address a secondary lock; benefit is real but modest and supportive; most useful as part of a combination protocol],



)
*/
// end landscape

The ranking in Table @tab:treatment-priority explains several patterns in the ME/CFS treatment literature. GPCR-targeted immunotherapy ranks highest because it addresses a root cause with demonstrated tractability; the 60% daratumumab response rate is among the highest reported for any ME/CFS intervention, suggesting that in the autoantibody-positive subgroup, the autoimmune mechanism is both active and accessible. Mast cell stabilization ranks second despite being “merely” an amplifier because its high tractability and rapid onset make it an efficient first-line intervention that improves quality of life immediately while slower, more causally fundamental treatments take effect. By contrast, the CNS energy crisis—arguably the most causally important mechanism—ranks seventh because no current therapeutic approach can directly and selectively address it.

The ranking also suggests a treatment sequencing strategy: begin with high-tractability interventions (mast cell stabilization, NAD#super[+] supplementation) that provide immediate symptomatic relief, add root-cause-targeting interventions (immunoadsorption or daratumumab in autoantibody-positive patients) as they become available, and incorporate experimental approaches targeting low-tractability mechanisms (CNS energy restoration, epigenetic modification) as the field advances.

Figure @fig:treatment-priority-scatter visualizes the relationship between causal importance and therapeutic tractability for all classified mechanisms. The GPCR autoantibody cascade occupies the most favorable position among root causes (high importance, moderate–high tractability), while the CNS energy crisis—despite being the most causally fundamental—falls in the “important but inaccessible” quadrant. This visual representation makes concrete the chapter's central therapeutic insight: root cause does not equal treatment priority.

#include "../figures/fig-treatment-priority-scatter.typ"

The treatment optimization framework in Chapter @ch:predictive-applications builds on this hierarchy to model combinatorial treatment strategies, predicting which combinations of interventions are most likely to release enough locks for disease escape.

// =============================================================================
// SECTION 8: RESEARCH IMPLICATIONS
// =============================================================================

== Research Implications
<sec:causal-hierarchy-research>

The causal hierarchy proposed in this chapter generates specific, testable research priorities. If the hierarchy is correct, certain experimental designs should produce characteristic results; if it is wrong, those experiments will demonstrate that. The hierarchy's value is not in being right—it is almost certainly wrong in some particulars—but in being specific enough to be _wrong in identifiable ways_ that advance understanding.

*Single-parameter restoration experiments.* The most direct test of the hierarchy is to normalize a single mechanism and observe whether ME/CFS resolves. The prediction is clean: normalizing a trigger-capable mechanism should produce complete or near-complete recovery in the subgroup where that mechanism is active, while normalizing an amplifier should produce partial improvement that plateaus short of recovery.

The daratumumab trial provides preliminary evidence for this prediction. Depleting CD38#super[+] plasma cells—which are the source of GPCR autoantibodies—produced marked improvement in 60% of patients. If autoantibodies are trigger-capable in that subgroup, 60% is a plausible response rate (accounting for patients with concurrent load-bearing locks that prevent full recovery). The 40% non-responders may represent patients whose disease entered through a different door (safe mode, CNS energy crisis) or patients in whom epigenetic consolidation has made the disease self-sustaining independent of autoantibodies.

By contrast, NAD#super[+] supplementation trials have consistently shown modest benefit—improvement in some symptoms without approaching recovery. This “helps but doesn't cure” pattern is precisely what the hierarchy predicts for normalizing an amplifier rather than a root cause.

Future experiments should apply this logic systematically. If an intervention normalizing a predicted root cause produces only amplifier-level improvement, the hierarchy is wrong about that mechanism's tier. If an intervention normalizing a predicted amplifier produces root-cause-level recovery, the hierarchy is wrong in the other direction. Both outcomes are informative.

*Multi-omics trajectory mapping.* If the multiple-entry-point, single-final-common-pathway hypothesis (Section @sec:entry-points) is correct, then multi-omics profiling of ME/CFS patients should reveal convergent trajectories: patients with different onset types showing distinct early profiles that converge over time onto shared attractor states. Current cross-sectional omics studies cannot test this—they capture one time point and cannot distinguish convergence from initial heterogeneity. Longitudinal cohorts following patients from early disease are required.

The technical approach would involve repeated metabolomic, proteomic, and transcriptomic sampling at defined intervals (3, 6, 12, 24 months post-onset), with dimensionality reduction (UMAP, t-SNE, or diffusion maps) applied to the combined multi-omics dataset to identify trajectory convergence. The prediction is that trajectories initiated by viral infection, stress, and surgery should occupy different regions of omics space at 3 months but converge by 24 months. The convergence should be more rapid in patients with more severe disease (stronger attractor pull) and slower in patients with milder disease.

*Intervention window studies.* The epigenetic consolidation amplifier (Section @sec:amp-epigenetic) predicts that early intervention should produce dramatically better outcomes than delayed treatment, because early treatment acts before epigenetic locks stabilize the disease attractor. This prediction is testable through prospective trials that compare outcomes in patients treated at different disease durations, ideally with the same intervention protocol applied at different time points post-onset.

Ethical constraints prevent pure delay randomization (deliberately withholding treatment to study the effect of delay). However, natural variation in diagnostic and treatment delay provides a quasi-experimental opportunity: patients diagnosed and treated within 6 months of onset can be compared with patients diagnosed and treated at 1, 2, 3, and 5 years post-onset, controlling for disease severity and other confounders. The prediction is a non-linear relationship: treatment response should be relatively preserved up to the epigenetic consolidation threshold (predicted at 1–2 years), then decline sharply.

The tipping-point analysis in Section @sec:tipping-point provides a formal mathematical framework for predicting the intervention window—the period during which treatment can prevent transition from the reversible to the irreversible disease state.

*Lock hierarchy validation.* The load-bearing versus secondary lock distinction (Section @sec:load-bearing-locks) predicts different response patterns for treatments targeting each type. A systematic comparison of treatment effects—measuring both immediate symptom improvement and long-term disease trajectory—would test whether predicted load-bearing lock treatments (epigenetic modifiers, plasma cell depletion) produce different trajectory changes than predicted secondary lock treatments (antioxidants, antivirals, sleep medications).

*Genetic architecture as hierarchy validator.* The DecodeME GWAS findings provide an independent test of the causal hierarchy. The three genetic themes---neuronal/synaptic, autophagy/mitophagy, and immune-ambiguous (Section @sec:decodeme-genes, Chapter @ch:genetics-epigenetics)---should map onto the three causal tiers proposed here. If neuronal genes predict autonomic dysfunction severity (consistent with CNS energy crisis as root cause), if autophagy genes predict treatment response to mitophagy enhancers (consistent with amplifier status), and if immune genes predict immunotherapy response (consistent with GPCR autoantibody root cause), then the genetic architecture is consistent with the hierarchy, providing convergent evidence from an entirely independent data source. The proposed DecodeME-Stratified Pharmacogenomic Trial Platform (Section @sec:decodeme-pharmacogenomics, Chapter @ch:proposed-studies) would test this directly. The absence of genetic correlation with classical autoimmune diseases is already consistent with the hierarchy's placement of the GPCR autoantibody cascade as a novel immune mechanism distinct from established autoimmunity.

The formal prediction is specific: load-bearing lock removal should alter the _slope_ of the disease trajectory (enabling progressive improvement over time as the system migrates toward the healthy attractor), while secondary lock removal should alter the _level_ (producing a one-time improvement that is maintained but does not continue to accrue). This slope-versus-level distinction is testable with longitudinal outcome data and would provide strong evidence for or against the lock classification.

*Subgroup identification.* The hierarchy predicts that ME/CFS is not one disease but several diseases sharing a final common pathway, with subgroups defined by their entry mechanism and their active lock configuration. Research that treats ME/CFS as a single homogeneous condition will consistently produce disappointing results because it averages across subgroups with different active mechanisms. The hierarchy motivates a research strategy of aggressive subgroup identification—using autoantibody status, TRPM3 function, metabolomic profiling, and epigenetic markers to stratify patients before treatment assignment.

#open-question(title: [Experimental Validation of Causal Hierarchy])[
The causal hierarchy proposed in this chapter is a framework, not a fact. Its validation requires experiments that are technically demanding, logistically complex, and in some cases not yet feasible with current technology. Key experimental gaps include:

    - No animal model faithfully reproduces the multi-system, chronic, relapsing nature of ME/CFS, limiting the ability to test causality through experimental manipulation. Existing models (viral infection, forced exercise, passive transfer) capture aspects of the disease but not the full multi-lock architecture.
    - Longitudinal multi-omics studies from disease onset do not yet exist at the scale and resolution needed to map disease trajectories and test convergence predictions. Such studies require prospective enrollment of acute infection cohorts with long-term follow-up.
    - Single-parameter restoration experiments require interventions (e.g., selective CNS energy restoration, precise epigenetic reprogramming) that are not yet available. As these technologies develop, the hierarchy becomes testable.
    - The distinction between initiating cause and maintaining cause requires prospective data from disease onset that current cross-sectional designs cannot provide. Retrospective reconstruction is unreliable due to recall bias and the absence of pre-disease biomarker baselines.
    - Ethical constraints limit the experimental designs (delay randomization, placebo control of potentially beneficial treatments in severely ill patients) that would most cleanly test the hierarchy.

The hierarchy should therefore be treated as a working model that generates specific predictions, guides research priorities, and informs treatment reasoning—not as established fact. It will be revised, and in some particulars likely overturned, as evidence accumulates. The goal is not to be right but to be useful: to provide a framework that organizes thinking about a complex disease and highlights the experiments most likely to advance understanding.
] <oq:hierarchy-validation>

// =============================================================================
// CONCLUSION
// =============================================================================


#line(length: 50%, stroke: 0.4pt)


Not all mechanisms are equal. The pathophysiology of ME/CFS, sprawling as it is across immune, neurological, metabolic, cardiovascular, endocrine, and gastrointestinal systems, admits a hierarchy when examined through the lens of causal sufficiency. Four mechanisms—CNS energy crisis, metabolic safe mode lock, GPCR autoantibody cascade, and TRPM3 channelopathy—meet the stringent criteria for trigger-capable root causes: each can account for the full syndrome's initiation from a healthy baseline, each explains post-exertional malaise, each can sustain itself chronically, and each has a plausible path to multi-system involvement. Six amplifier mechanisms worsen and perpetuate the disease, with epigenetic consolidation and autoimmune persistence identified as load-bearing locks whose removal is necessary for recovery. And a set of downstream consequences, while generating much of the daily symptom burden that defines patients' lived experience, cannot be addressed in isolation with any expectation of cure.

The hierarchy resolves several longstanding puzzles. Why do different triggering events—viral infection, stress, surgery, vaccination—produce the same disease? Because multiple entry doors converge on a single final common pathway of CNS energy failure and broken restoration machinery. Why do single-target treatments consistently disappoint, even when they target well-validated mechanisms? Because the multi-lock architecture requires simultaneous intervention across mechanisms, and addressing one lock allows the others to compensate. Why does disease duration predict prognosis so strongly, more strongly than initial severity? Because epigenetic consolidation progressively deepens the disease attractor over time, converting a reversible functional state into an entrenched structural one.

The practical implication is that treatment priority should be guided by the product of causal importance and therapeutic tractability—not by causal importance alone. The most upstream mechanism is not necessarily the best therapeutic target if it cannot be reached with current tools. The most tractable intervention is not necessarily the most causally important if it addresses only a secondary lock. Rational treatment strategy navigates between these two axes, combining tractable amplifier-targeting interventions that provide immediate relief with root-cause-targeting interventions that address the disease architecture.

This chapter's claims are themselves hypotheses, informed by the evidence accumulated in Chapters @ch:energy-metabolism–@ch:speculative-hypotheses but not proven by it. The sister chapter in Part V (Chapter @ch:causal-hierarchy-formal) subjects them to formal mathematical testing, encoding the biological reasoning developed here into dynamical systems models that can be interrogated with precision. Where the two approaches agree, confidence increases; where they disagree, the disagreement identifies specific gaps in understanding that future research must address.

The hierarchy is a framework for thinking, not a dogma for believing. It will be revised as evidence accumulates, as new mechanisms are discovered, and as therapeutic experiments test its predictions. The honest acknowledgment of this uncertainty is not a weakness of the framework—it is its defining feature. In a field long plagued by premature certainty, from those who dismissed the illness as psychological to those who promoted specific biological theories without adequate evidence, the most useful contribution may be not the answers, but a disciplined way of asking the questions.
