#import "../../shared/environments.typ": *
#import "../../shared/tables.typ": landscape, booktabs-stroke, table-inset

= Causal Hierarchy: Root Causes, Amplifiers, and Consequences
<ch:causal-hierarchy>

#emph[“The art of medicine consists in amusing the patient while nature cures the disease.”]

— attributed to Voltaire

#v(0.5em)

#emph[The art of understanding disease consists in distinguishing what nature is doing from what nature has done.]
Chapters @ch:energy-metabolism through @ch:speculative-hypotheses catalogue an imposing inventory of pathophysiological mechanisms in ME/CFS: mitochondrial dysfunction, immune dysregulation, neuroinflammation, endocrine disruption, cardiovascular impairment, gut dysbiosis, epigenetic modification, autoimmunity, ion channelopathy, and more. Chapter @ch:integrative-models demonstrated that these mechanisms interact rather than operate in isolation, and Chapter @ch:symptom-mechanisms distinguished capacity-limiting from symptom-producing pathways. What remains unanswered is the question of _hierarchy_: which of these mechanisms are causally sufficient to generate the full ME/CFS syndrome, which amplify and perpetuate it, and which are downstream consequences of the disease process?

This question is not academic. The causal hierarchy determines where therapeutic intervention is most likely to succeed, which research directions deserve priority, and why so many single-target treatments have disappointed. A treatment that addresses a downstream consequence cannot cure the disease; a treatment that targets an amplifier may reduce severity without enabling recovery; only interventions that release the trigger-capable mechanisms—or enough of the locks they establish—can plausibly restore health. The distinction between cause, amplifier, and consequence is therefore the single most important conceptual framework for rational treatment strategy in ME/CFS.

Yet the distinction is also profoundly difficult to make. In a disease characterized by bidirectional feedback loops, where immune dysfunction worsens energy metabolism which worsens immune function, the question "which came first?" can seem unanswerable. The framework developed in this chapter does not require answering that question for individual patients. Instead, it asks a different question: which mechanisms are _capable_ of initiating the full cascade from a healthy baseline, and which require prior dysfunction to engage? This capability-based classification avoids the epistemic trap of reconstructing individual disease histories and instead focuses on the structural properties of each mechanism.

Before applying the classification, we must address a prior question that genetics has now answered: _where_ is the constitutional vulnerability encoded? Two largely independent genetic evidence types — common variant GWAS (DecodeME 2025; extended in the partially overlapping Maccallini 2026 meta-analysis, n=19,470) and rare variant whole-exome sequencing (Snyder 2025) — together with cell-type enrichment analysis of the common-variant data (Finucane 2018 pipeline across three brain atlases), point to a neuronal locus of common-variant risk. The genetic risk for ME/CFS maps to the brain — neuronal circuits, with glutamatergic synapses the most specific pathway signal and a specific cell subtype that differs by reference atlas and remains unresolved — while no immune cell-type enrichment was detected in the only available immune-cell test (power-limited, unpublished; Section @syn:genetic-neuronal-convergence). The GWAS tells us where constitutional liability is encoded (neurons), not which mechanisms are operative in the established disease. This does not contradict the extensive evidence for immune dysfunction in ME/CFS — it is consistent with immune pathology being _acquired_ (infection-triggered, environmentally driven) rather than encoded in common variants — though a power-limited, single-reference null cannot distinguish these. The brain-first architecture is a working hypothesis, not an established constraint: the four trigger-capable root causes examined below are each assessed against the possibility of a neuronally vulnerable host rather than presumed to act through one. The triggers and amplifiers describe the downstream acquired pathology that propagates from that substrate. This is formalised in the two-hit model: genetic vulnerability in neuronal circuits (hit 1) + environmental trigger — viral infection, autoimmune activation, ion channel dysfunction (hit 2) → disease, with amplifiers sustaining chronicity.

The practical consequence for the causal hierarchy analysis that follows is that mechanisms with predominantly immune *common-variant* genetic architecture (for example classical autoimmunity) are not supported as root causes by common-variant enrichment. This null, however, does not address rare-variant or monogenic immune mechanisms (primary immunodeficiency, monogenic autoinflammatory disease), which a common-variant, mouse-reference test cannot detect; those, and acquired immune mechanisms (GPCR autoantibodies, NET/DNase imbalance, T-cell exhaustion), remain viable triggers or amplifiers. The common-variant data point to a neuronal vulnerability; the precipitant appears environmental; and the resulting immune pathology is compatible with being acquired, though this is not established.

This chapter proposes a three-tier classification framework, applies it systematically to the mechanisms described in preceding chapters, and draws out the implications for treatment strategy and research design. The claims made here are themselves hypotheses—informed by evidence but not proven. The sister chapter in Part V (Chapter @ch:causal-hierarchy-formal) tests these claims using formal mathematical models; the present chapter develops the biological reasoning that those models encode.

#note-env(title: [How the Causal-Hierarchy Argument Flows])[
The causal-hierarchy thread spans three parts of this document. Four stations carry it from a qualitative classification to a formal test:

#table(
  columns: (auto, auto, auto, auto),
  inset: table-inset,
  stroke: booktabs-stroke(5),

  [*Station*], [*Where*], [*What it does*], [*Part*],

  [1. Qualitative classification], [@ch:causal-hierarchy], [Classifies each mechanism as trigger-capable root cause, amplifier, or downstream consequence], [Part II — this chapter],

  [2. Registry entries], [@sec:hypothesis-speculation-registry], [Fielded records of every hypothesis with explicit certainty scores], [Part IV],

  [3. Proposed studies], [@ch:proposed-studies], [Translates the registry hypotheses into testable research protocols], [Part IV — ch47],

  [4. Formal ODE test], [@ch:causal-hierarchy-formal], [Tests tier assignments against the integrated ODE model using sensitivity and bifurcation analysis], [Part V — ch56],
),
]

#roadmap(title: [How to Use This Chapter])[
*For patients*: read the three-tier framework to understand why many single treatments disappoint, and the root-cause sections (CNS energy crisis, safe mode) for what the causal story implies about recovery.

*For caregivers*: read the three-tier framework and the load-bearing-vs-secondary discussion to understand why treating consequences alone does not resolve the illness.

*For clinicians*: read the framework and the treatment-implications section — it explains why interventions that only address downstream consequences are unlikely to cure, and which mechanisms are candidates for root-cause targeting.

*For researchers*: read the four trigger-capable candidates and the research-implications section. These feed the formal tests in Chapter @ch:causal-hierarchy-formal.
]

#include "sec-01-framework-the-three-tier-classification/sec-01-framework-the-three-tier-classification.typ"

#include "sec-02-trigger-capable-mechanisms/sec-02-trigger-capable-mechanisms.typ"

#include "sec-03-amplifier-mechanisms/sec-03-amplifier-mechanisms.typ"

#include "sec-04-downstream-consequences/sec-04-downstream-consequences.typ"

#include "sec-05-entry-points-multiple-doors-one-final-common-pathway/sec-05-entry-points-multiple-doors-one-final-common-pathway.typ"

#include "sec-06-load-bearing-versus-secondary-locks/sec-06-load-bearing-versus-secondary-locks.typ"

#include "sec-07-treatment-implications-of-the-causal-hierarchy/sec-07-treatment-implications-of-the-causal-hierarchy.typ"

#include "sec-08-research-implications/sec-08-research-implications.typ"

#include "sec-09-formal-model-proposals/sec-09-formal-model-proposals.typ"
// =============================================================================
// CONCLUSION
// =============================================================================


#line(length: 50%, stroke: 0.4pt)


Not all mechanisms are equal. The pathophysiology of ME/CFS, sprawling as it is across immune, neurological, metabolic, cardiovascular, endocrine, and gastrointestinal systems, admits a hierarchy when examined through the lens of causal sufficiency. Four mechanisms—CNS energy crisis, metabolic safe mode lock, GPCR autoantibody cascade, and TRPM3 channelopathy—meet the stringent criteria for trigger-capable root causes: each can account for the full syndrome's initiation from a healthy baseline, each explains post-exertional malaise, each can sustain itself chronically, and each has a plausible path to multi-system involvement. Six amplifier mechanisms worsen and perpetuate the disease, with epigenetic consolidation and autoimmune persistence identified as load-bearing locks whose removal is necessary for recovery. And a set of downstream consequences, while generating much of the daily symptom burden that defines patients' lived experience, cannot be addressed in isolation with any expectation of cure.

The hierarchy resolves several longstanding puzzles. Why do different triggering events—viral infection, stress, surgery, vaccination—produce the same disease? Because multiple entry doors converge on a single final common pathway of CNS energy failure and broken restoration machinery. Why do single-target treatments consistently disappoint, even when they target well-validated mechanisms? Because the multi-lock architecture requires simultaneous intervention across mechanisms, and addressing one lock allows the others to compensate. Why does disease duration predict prognosis so strongly, more strongly than initial severity? Because epigenetic consolidation progressively deepens the disease attractor over time, converting a reversible functional state into an entrenched structural one.

The practical implication is that treatment priority should be guided by the product of causal importance and therapeutic tractability---not by causal importance alone. The most upstream mechanism is not necessarily the best therapeutic target if it cannot be reached with current tools. The most tractable intervention is not necessarily the most causally important if it addresses only a secondary lock. Rational treatment strategy navigates between these two axes, combining tractable amplifier-targeting interventions that provide immediate relief with root-cause-targeting interventions that address the disease architecture.

Beyond the core hierarchy, several extensions developed in this chapter and its formal companion (Chapter @ch:causal-hierarchy-formal) open new directions: the subthreshold reservoir population (Section @sec:subthreshold-reservoir) suggests a preventive medicine approach to ME/CFS, applicable to the large population sitting near the disease separatrix; the threat signal miscalibration concept (Section @sec:threat-miscalibration) identifies genetic predisposition factors that lower the safe mode activation threshold; and the gut dysbiosis reanalysis (Section @sec:amp-gut-reanalysis) challenges the amplifier classification for a specific patient subgroup. The timed passive epigenetic reversal strategy (Section @sec:timed-epigenetic-reversal) offers a patient-accessible approach to the most intractable lock in the disease, while the TRPM3 sensitization concept explores pharmacological modulation of a recently validated root cause mechanism.

This chapter's claims are themselves hypotheses, informed by the evidence accumulated in Chapters @ch:energy-metabolism–@ch:speculative-hypotheses but not proven by it. The sister chapter in Part V (Chapter @ch:causal-hierarchy-formal) subjects them to formal mathematical testing, encoding the biological reasoning developed here into dynamical systems models that can be interrogated with precision. Where the two approaches agree, confidence increases; where they disagree, the disagreement identifies specific gaps in understanding that future research must address.

The hierarchy is a framework for thinking, not a dogma for believing. It will be revised as evidence accumulates, as new mechanisms are discovered, and as therapeutic experiments test its predictions. The honest acknowledgment of this uncertainty is not a weakness of the framework—it is its defining feature. In a field long plagued by premature certainty, from those who dismissed the illness as psychological to those who promoted specific biological theories without adequate evidence, the most useful contribution may be not the answers, but a disciplined way of asking the questions.
