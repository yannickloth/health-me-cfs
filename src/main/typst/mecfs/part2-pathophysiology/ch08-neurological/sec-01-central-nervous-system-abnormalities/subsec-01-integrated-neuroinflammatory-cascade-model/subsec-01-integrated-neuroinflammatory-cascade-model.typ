#import "../../../../shared/environments.typ": *

=== Integrated Neuroinflammatory Cascade Model


The diverse neurological abnormalities documented in ME/CFS—neurotransmitter depletion, microglial activation, autonomic dysregulation—may not be independent pathologies but rather interconnected components of a unified cascade originating from the central nervous system.

#hypothesis(title: [Neuroinflammatory Cascade: From CNS to Peripheral Symptoms])[
*Certainty: 0.50.* We propose an integrated cascade model in which neuroinflammatory dysfunction serves as an upstream driver of both central and peripheral ME/CFS pathology @MCMC2024Neurometabolic @NIH2024MECFSRoadmap:

*Cascade pathway*

_Infection or immune challenge:_ Initial infection (EBV, enterovirus, or other trigger) activates innate immunity and produces transient CNS inflammation through multiple routes (direct viral CNS invasion, systemic inflammatory cytokines crossing BBB, peripheral immune cell infiltration).

_Sleep disruption and impaired glymphatic clearance:_ Acute neuroinflammation disrupts sleep architecture and circadian regulation. Critically, sleep loss impairs the glymphatic system—the brain's waste clearance mechanism dependent on aquaporin-4 water channels in astrocytes. During sleep, the glymphatic system increases interstitial space and clears accumulated metabolic byproducts. Without adequate sleep, toxic protein aggregates (misfolded proteins, amyloid, tau) accumulate in the parenchyma.

_Persistent neuroinflammation and microglial priming:_ Impaired glymphatic clearance allows accumulation of pathogen-associated molecular patterns (PAMPs) and damage-associated molecular patterns (DAMPs), which sustain microglial activation @Ibrahim2026HMGB1Neuroinflammation. Primed microglia become hyperresponsive to subsequent stimuli, producing exaggerated cytokine responses (IL-1$beta$, TNF-$alpha$, IL-6) to minor perturbations.

_Central neurotransmitter depletion:_ Sustained neuroinflammation and microglial activation reduce synthesis of catecholamines and serotonin through multiple mechanisms: (1) inflammatory cytokines inhibit tyrosine hydroxylase and tryptophan hydroxylase expression, (2) oxidative stress from microglia-derived reactive oxygen species damages the enzymes and their cofactors, (3) catecholamine reuptake is impaired by cytokine-mediated transporter dysfunction, (4) metabolic depletion reduces substrate availability for neurotransmitter synthesis.

_Central neurological dysfunction:_ Catecholamine and serotonin depletion produce multiple consequences: effort-related dysfunction (hyperdopaminergic responses to exertion trigger rapid catecholamine depletion, producing the post-exertional symptom surge characteristic of PEM), cognitive dysfunction (prefrontal catecholamine depletion impairs attention, working memory, and executive function), and sickness behavior activation (inflammatory cytokines and depleted monoamines trigger the evolutionarily conserved sickness behavior program—fatigue, anhedonia, reduced activity tolerance—which is protective but becomes maladaptive when persistent).

_Autonomic dysregulation:_ Depleted brainstem catecholamine systems (particularly the locus coeruleus) and impaired parasympathetic signaling (reduced acetylcholine availability) produce observable autonomic dysfunction: reduced heart rate variability, abnormal blood pressure regulation (orthostatic intolerance, POTS-like features), impaired vagal anti-inflammatory signaling, and loss of normal sympatho-parasympathetic balance.

_Peripheral symptom manifestation:_ The combination of catecholamine depletion, sickness behavior, and autonomic dysregulation produce the characteristic ME/CFS symptom constellation: profound fatigue, post-exertional malaise, cognitive dysfunction, pain, and orthostatic intolerance.

_Metabolic dysfunction and amplification loop:_ Forced inactivity (due to neurologically-driven inability to exert), medication effects (many treatments deplete catecholamines further), and chronic systemic inflammation drive metabolic dysfunction: mitochondrial ATP production declines, lactate accumulation increases, metabolic flexibility is impaired. Metabolic dysfunction itself produces inflammatory signals (lactate, damaged mitochondria) that amplify neuroinflammation. This creates a positive feedback loop: neuroinflammation → peripheral symptoms → reduced activity → metabolic dysfunction → amplified neuroinflammation.

*Key assumptions*

This cascade model rests on a critical causal assumption: *central nervous system dysfunction is causally primary*, driving peripheral manifestations rather than resulting from them. Alternative causal hierarchies are biologically plausible. For example, if primary immune dysfunction (impaired viral clearance, B cell dysfunction, autoantibody production) drives disease, peripheral pathology would come first, and CNS involvement would be secondary. Similarly, if metabolic dysfunction (mitochondrial ATP depletion, lactate accumulation) is the primary driver, neurological changes might reflect metabolic rather than neuroinflammatory etiology. These alternative models would predict different therapeutic hierarchies and treatment response patterns. The cascade model specifically predicts that CNS-targeted interventions (sleep restoration, microglial modulation, catecholamine restoration) should be foundational to treatment, whereas peripheral organ-targeted therapy (cardiac drugs for POTS, antivirals for presumed viral persistence) would be less effective if peripheral dysfunction is secondary. Testing this assumption requires comparative treatment trials: if CNS-first approaches produce superior outcomes to periphery-first approaches in randomized trials, the cascade model's assumption is supported; if peripheral approaches are equally or more effective, the causality assumption is questioned.

*Key implications of this model*

This cascade model positions _central neurological dysfunction as upstream of peripheral symptoms_ rather than secondary to them. If correct, it suggests fundamentally different therapeutic strategies than those targeting peripheral organs:

    - *Sleep is disease-modifying:* Sleep disruption perpetuates the cascade by impairing glymphatic clearance. Interventions that restore sleep (sleep hygiene, low-dose sedating agents, circadian restoration) may directly interrupt neuroinflammation, not merely improve symptoms.

    - *Microglial modulation is central:* Interventions targeting microglial activation (CSF-1R inhibition as discussed in Section @hyp:glial-maturation-window, fasting-mimicking diets promoting microglial turnover) may provide disease-modifying benefit.

    - *Catecholamine restoration requires CNS targeting:* Peripheral catecholamine replacement (standard treatments for POTS) may be ineffective if the primary problem is CNS depletion and impaired synthesis. Centrally-acting drugs (L-DOPA, levodopa with carbidopa to cross BBB, dopamine agonists) might be more effective than peripheral sympathomimetics.

    - *Breaking the positive feedback loop is critical:* Preventing forced inactivity through appropriate pacing prevents the metabolic dysfunction that amplifies neuroinflammation. This aligns with clinical observations that strict pacing produces better long-term outcomes than progressive exercise approaches.

] <hyp:cascade-neuroinflammatory>

#limitation(title: [Kindling Analogy: Neurological Extrapolation Without ME/CFS Data])[
The PEM kindling hypothesis (below) applies a concept from epilepsy and substance abuse neuroscience to ME/CFS by analogy. No study has measured progressive microglial priming, cumulative threshold reduction, or kindling-like neural sensitisation in ME/CFS patients. The quantitative model parameters ($alpha = 1.5$, exponential decay) are illustrative, not empirically derived, and the model has not been fitted to patient data. Alternative explanations for progressive worsening—deconditioning, psychological avoidance learning, cumulative tissue damage—have not been excluded.
]

