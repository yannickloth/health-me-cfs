#import "../../../shared/environments.typ": *

// =============================================================================
// SECTION 5: ENTRY POINTS
// =============================================================================

== Entry Points: Multiple Doors, One Final Common Pathway
<sec:entry-points>

If ME/CFS has multiple trigger-capable root causes, a natural question arises: why do patients with different triggering events converge on such a similar clinical picture? A patient whose ME/CFS began after mononucleosis, another whose disease followed a car accident, and a third whose onset was associated with a period of extreme psychological stress all end up with the same cardinal symptoms—PEM, cognitive dysfunction, unrefreshing sleep, autonomic dysfunction. The triggering events share nothing obvious in common. How can such different causes produce the same disease?

The answer, we propose, is that the trigger-capable mechanisms all converge on the same final common pathway: CNS energy failure combined with broken restoration machinery. The entry door differs; the destination is the same. This convergence is not coincidental—it reflects the architecture of human physiology, which has a limited number of “failure modes” despite having many possible inputs. Figure @fig:entry-points-funnel maps the routes from precipitant to entry mechanism to final common pathway.

#include "../../../figures/fig-entry-points-funnel.typ"

Consider how different ME/CFS precipitants map to the trigger-capable mechanisms:

*Viral infection.* This is the most common ME/CFS precipitant, accounting for approximately 70% of cases, and it can enter through any of the four doors. Direct neurotropism (EBV infecting B cells that cross the BBB, HHV-6 infecting glial cells, SARS-CoV-2 infecting endothelial cells with ACE2 expression) or peripheral-to-central cytokine signaling can produce CNS energy crisis (Section @sec:root-cns-energy). The innate immune response to infection activates the metabolic safe mode program through IL-6, type I interferons, and TNF-$alpha$ signaling to the hypothalamus (Section @sec:root-safe-mode). Molecular mimicry between viral surface proteins and host GPCR epitopes generates autoantibodies (Section @sec:root-gpcr). Viral modification of ion channel expression, membrane lipid composition, or post-translational modifications may produce TRPM3 dysfunction (Section @sec:root-trpm3).

Different viruses may preferentially trigger different root-cause pathways. EBV, with its established tropism for B cells and its LMP1-mediated mimicry of CD40 signaling, may preferentially trigger the autoimmune pathway. Enteroviruses, with their direct mitochondrial effects, may preferentially trigger the metabolic safe mode. Influenza and SARS-CoV-2, with their potent systemic inflammatory responses, may preferentially trigger CNS neuroinflammation. This pathogen-specific pathway selection may partially explain why ME/CFS following different infections can have subtly different phenotypic profiles.

*Severe psychological or physiological stress.* Chronic or extreme stress activates the hypothalamic-pituitary-adrenal axis and the sympathetic nervous system at levels that can exhaust catecholamine reserves, shift the hypothalamic setpoint for metabolic regulation, and produce a cortisol pattern that transitions from elevated (acute stress) to blunted (chronic stress, adrenal exhaustion). This enters primarily through the metabolic safe mode door: extreme stress triggers the protective metabolic suppression program, which then fails to disengage when the stressor resolves because the hypothalamic setpoint has shifted. Stress-induced immunosuppression may also permit herpesvirus reactivation, creating a secondary inflammatory signal that maintains safe mode engagement and may secondarily generate autoantibodies.

*Surgery or trauma.* The combination of tissue damage, inflammatory response, anesthesia, and physiological stress associated with major surgery can trigger multiple entry doors simultaneously. The tissue damage releases cellular contents (including mitochondrial DNA, a potent DAMP) that activate the innate immune response. The inflammatory surge may generate autoantibodies through bystander activation of autoreactive B cells that encounter self-antigens released from damaged tissue in the context of adjuvant-like inflammatory signaling. The metabolic stress of surgery activates the safe mode program. Anesthesia and perioperative hemodynamic instability may produce transient CNS energy compromise that, if the brain is predisposed (by genetic susceptibility or subclinical prior pathology), tips into sustained neuroinflammation. The simultaneous engagement of multiple root-cause pathways may explain why post-surgical ME/CFS onset is often particularly severe and treatment-resistant.

*Vaccination.* In rare cases, vaccination can trigger ME/CFS, likely through molecular mimicry generating autoantibodies against GPCRs or ion channels (the adjuvant provides the immune activation context, and the antigen provides the molecular mimicry target). The adjuvant-driven immune activation may also engage the metabolic safe mode in genetically susceptible individuals who have exaggerated innate immune responses to adjuvant signals. A distinct but related proposal attributes the effect directly to aluminium-adjuvant biopersistence (macrophagic myofasciitis) rather than to molecular mimicry — a single-site hypothesis that a nationwide registry already counts against at the population level (Section @spec:aluminum-adjuvant-mmfs-subgroup, @lim:aluminum-adjuvant-mmf-single-site).

The convergence on a final common pathway—CNS energy failure plus broken restoration machinery—explains several otherwise puzzling features of ME/CFS:

    - *Clinical homogeneity despite diverse triggers:* Once the final common pathway is engaged, the downstream manifestations are determined by the pathway itself (autonomic failure, immune dysregulation, metabolic suppression, sleep disruption), not by the entry door.

    - *Within-disease heterogeneity:* Patients who entered through different doors retain features of their specific entry mechanism. Patients with GPCR autoantibodies may have more prominent autonomic dysfunction; patients who entered through CNS neuroinflammation may have more prominent cognitive symptoms; patients who entered through the safe mode may have more prominent metabolic features (cold intolerance, metabolic inflexibility). These “entry signatures” overlay the shared core features.

    - *Varying treatment responses:* If different patients are maintained by different mechanisms (reflecting their entry pathway and which amplifiers have engaged), then no single treatment will work for everyone. Daratumumab works for the autoimmune-entry subgroup; it would not be expected to help patients whose disease entered through the safe mode pathway and is now maintained by epigenetic consolidation.

Once a patient reaches the final common pathway, the amplifier mechanisms described in Section @sec:amplifiers engage and lock the disease state. The entry door no longer matters because the amplifiers maintain the disease independently of the triggering mechanism. This is why the triggering event is often years in the past by the time patients seek treatment, yet the disease persists: the locks are self-sustaining.

#include "hypotheses/hyp-multiple-entry-points-single-final-commo.typ"

The infection cascade walkthrough in Chapter @ch:temporal-evolution provides a worked example of how a specific precipitant (viral infection) progresses through entry, amplification, and lock establishment to reach the final common pathway.

// =============================================================================
// SECTION 5b: SUBTHRESHOLD RESERVOIR POPULATION
// =============================================================================

=== The Subthreshold Reservoir Population
<sec:subthreshold-reservoir>

The multi-entry-point model, combined with the separatrix concept from dynamical systems theory, predicts the existence of a population that has received insufficient attention: individuals sitting just _below_ the disease separatrix. These are people with subclinical perturbations---vague fatigue, mild exercise intolerance, "not feeling right"---who do not meet ME/CFS diagnostic criteria but who are perched near the tipping point. A second hit (infection, severe stress, surgery) would push them over.

This prediction has gained urgency from the Long COVID pandemic. Su et al.\ demonstrated that pre-existing subclinical markers---autoantibodies, latent EBV reactivation, subclinical metabolic perturbations, and low cortisol at the time of COVID-19 infection---predicted development of post-acute sequelae @Su2022longcovid. Cervia-Hasler et al.\ found that persistent complement dysregulation was detectable in Long COVID patients from the acute phase, suggesting pre-existing immune vulnerability @Cervia2022longcovid. The Dubbo Infection Outcomes Study showed that post-infectious CFS develops at approximately 11% regardless of pathogen identity, suggesting a host-response vulnerability that pre-dates the infection @Hickie2006postinfectious.

These findings are consistent with a continuous distribution of "separatrix distance" in the general population, not a bimodal healthy/sick division. Most people sit far from the separatrix; their physiological reserves can absorb even substantial insults without tipping into disease. But a subset---perhaps 10--15% of the population---sit close enough that a sufficiently severe or well-targeted insult can push them across. This near-separatrix subset is recognisable in the mild and lifetime-energy presentations that populate the low end of the severity spectrum: severity clustering within ME/CFS identifies a low-severity subset functioning on a constrained daily energy envelope @Jason2010FatigueTypes, a childhood-onset chronic-disabling-fatigue trajectory is measurable without PEM @Collin2015childFatigue, and lifelong fatigue, far from excluding the diagnosis, is non-discriminating and should not be treated as a categorical exclusion @Sunnquist2015lifelongFatigue. Population data nevertheless caution that the clearest premorbid predictor of later persistent fatigue is excessive childhood energy, not low baseline energy @Harvey2009neurasthenia, so the near-separatrix population may be reached by overactivity as well as by constitutional low reserve.

#include "subsec-01-the-subthreshold-reservoir-population/speculations/spec-subthreshold-reservoir-population.typ"
