#import "../../../shared/environments.typ": *

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

#include "../../../figures/fig-causal-hierarchy-overview.typ"

#include "limitations/lim-classification-uncertainty.typ"

The formal validation of this framework—including bifurcation analysis demonstrating that trigger-capable mechanisms correspond to disease attractor basins—is developed in Section @sec:bifurcation-analysis. The mathematical testing of each tier assignment is presented in Chapter @ch:causal-hierarchy-formal.

Figure @fig:causal-hierarchy-overview provides an overview of the three-tier classification applied to all mechanisms discussed in this chapter.

=== Why Not Simply Use Evidence Levels?
<sec:why-not-evidence-levels>

Chapter @ch:integrative-models ranked mechanisms by evidence level (Table @tab:evidence-levels), from established phenomena through probable, preliminary, theoretical, and speculative. One might ask: why introduce a new classification when the evidence hierarchy already exists?

The answer is that evidence level and causal tier are orthogonal. A mechanism can be well-established (replicated in multiple studies) yet be an amplifier rather than a root cause. Conversely, a mechanism can be preliminary (single study) yet be trigger-capable if that study demonstrates the right structural properties. Oxidative stress in ME/CFS is _established_—documented by many groups in many cohorts—but it is an amplifier, not a root cause, because it cannot initiate the disease from a healthy baseline. TRPM3 channelopathy is _preliminary_—confirmed in one multi-site study—but may be trigger-capable because of the channel's ubiquitous expression and its role in calcium-dependent processes across tissues.

The evidence hierarchy tells us how confident we should be that a mechanism _exists_. The causal hierarchy tells us what _role_ that mechanism plays in the disease. Both are needed; neither substitutes for the other.
