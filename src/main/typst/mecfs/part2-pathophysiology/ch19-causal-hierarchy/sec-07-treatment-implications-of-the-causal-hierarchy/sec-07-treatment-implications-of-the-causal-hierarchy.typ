#import "../../../shared/environments.typ": *
#import "../../../shared/tables.typ": landscape, booktabs-stroke, table-inset

// =============================================================================
// SECTION 7: TREATMENT IMPLICATIONS
// =============================================================================

== Treatment Implications of the Causal Hierarchy
<sec:treatment-vs-cause>

The causal hierarchy developed in this chapter leads to a counterintuitive insight that deserves emphasis: *root cause does not equal treatment priority*. The most upstream, most causally fundamental mechanism is not necessarily the most important therapeutic target. Three reasons explain this disconnect, and together they define a more nuanced approach to treatment strategy.

#include "warnings/warn-treatment-priority-eq-not-causal-priorit.typ"

*Reason 1: The root cause may be gone.* In many patients, the triggering event—a viral infection, a period of extreme stress, a surgical procedure—resolved years ago. The virus was cleared by the immune system; the stressor ended; the surgical wound healed. The disease persists not because the root cause is still active, but because the amplifier locks it established have become self-sustaining (Section @sec:load-bearing-locks). Treating the trigger now does nothing. Antiviral therapy in a patient whose triggering virus was cleared five years ago addresses neither the root cause (which is absent) nor the locks (which are independent of the virus). The clinical implication is that the question “what caused your ME/CFS?” may be less therapeutically relevant than “what is maintaining your ME/CFS now?”

*Reason 2: The most upstream cause may be least accessible.* CNS energy metabolism cannot currently be directly restored with available therapeutics. We cannot inject ATP into the brain, repair neurovascular coupling pharmacologically with targeted precision, or reverse microglial activation without collateral immunosuppression. The most causally fundamental mechanism—if it is the CNS energy crisis—is also the least therapeutically accessible with current technology. Meanwhile, downstream amplifiers like mast cell activation (high tractability: antihistamines, mast cell stabilizers) or NAD#super[+] depletion (moderate tractability: NR/NMN supplementation) are addressable now, with established safety profiles and demonstrated (if incomplete) efficacy.

*Reason 3: The multi-lock model predicts that single-mechanism treatments fail.* Even if a root cause is both present and accessible, treating it alone may fail because the amplifier locks maintain the disease independently. The multi-lock trap (Section @sec:multi-lock-trap) predicts that recovery requires releasing enough locks simultaneously that the remaining ones cannot sustain the disease state. This means treatment strategy is inherently combinatorial: the relevant question is not “which single mechanism should we target?” but “which combination of mechanisms, when addressed simultaneously, enables escape from the disease attractor?”

The practical conclusion is that treatment priority should be determined by the product of _causal importance_ and _therapeutic tractability_, not by causal importance alone. A highly causal mechanism with zero tractability has zero treatment priority (you cannot treat what you cannot reach). A moderately causal mechanism with high tractability may have the highest treatment priority (you can treat it, and treating it contributes to the combination needed for escape). 
Table @tab:treatment-priority applies this reasoning to the mechanisms classified in this chapter.

#landscape[
  #figure(
    table(
      columns: (2.5fr, 2fr, 2fr, 1.5fr, 5.5fr),
      inset: table-inset,
      stroke: booktabs-stroke(11),
      align: (left, left, left, center, left),

      [*Mechanism*], [*Causal Tier*], [*Tractability*], [*Priority Rank*], [*Rationale*],

      [GPCR autoantibody cascade], [Root cause], [Moderate--High], [1], [Daratumumab and immunoadsorption demonstrate feasibility; targets a root cause that may still be active; 60% response rate is among the highest reported],

      [Mast cell–energy loop], [Amplifier], [High], [2], [Antihistamines and mast cell stabilizers are safe, widely available, and produce rapid symptomatic relief; high tractability compensates for amplifier status; improves quality of life while other interventions take effect],

      [NAD#super[+] depletion spiral], [Amplifier], [Moderate], [3], [NR/NMN supplementation is commercially available and well-tolerated; addresses a key amplifier of energy failure; benefits accrue over 8--12 weeks],

      [Epigenetic consolidation], [Amplifier (load-bearing)], [Low], [4], [Critically important for recovery but current tools are limited; early intervention to _prevent_ consolidation is far more feasible than _reversal_ of established consolidation; argues for aggressive early treatment],

      [Metabolic safe mode lock], [Root cause], [Low--Moderate], [5], [No specific intervention exists to "reset" the hypothalamic setpoint; indirect approaches (controlled immune challenge, metabolic reprogramming protocols) are experimental and poorly characterized],

      [Endothelial activation / microclotting], [Amplifier], [Moderate], [6], [Anticoagulants and endothelial support are available; benefit depends on upstream immune activation being concurrently addressed; may enable other treatments to reach target tissues],

      [CNS energy crisis], [Root cause], [Low], [7], [Most causally important but least therapeutically accessible; transcranial photobiomodulation, intranasal insulin, and hyperbaric oxygen are experimental with limited ME/CFS-specific data],

      [TRPM3 channelopathy], [Root cause], [Low], [8], [No approved TRPM3-targeted therapies exist; channel modulation by existing compounds (pregnenolone sulfate) is a research tool, not a therapeutic; pharmaceutical TRPM3 modulators are in early development],

      [Viral reactivation $arrow.l.r$ immune exhaustion], [Amplifier], [Low--Moderate], [9], [Antivirals address only one component of a bidirectional loop; benefit inconsistent across trials; most appropriate as adjunct to immune-targeting therapies],

      [Oxidative stress vicious cycle], [Amplifier (secondary)], [Moderate], [10], [Antioxidants are widely available but address a secondary lock; benefit is real but modest and supportive; most useful as part of a combination protocol],
    ),
    kind: table,
    supplement: [Table],
    caption: [Treatment Priority as a Function of Causal Tier and Tractability],
  ) <tab:treatment-priority>
]

The ranking discussed below explains several patterns in the ME/CFS treatment literature. GPCR-targeted immunotherapy ranks highest because it addresses a root cause with demonstrated tractability; the 60% daratumumab response rate is among the highest reported for any ME/CFS intervention, suggesting that in the autoantibody-positive subgroup, the autoimmune mechanism is both active and accessible. Mast cell stabilization ranks second despite being "merely" an amplifier because its high tractability and rapid onset make it an efficient first-line intervention that improves quality of life immediately while slower, more causally fundamental treatments take effect. By contrast, the CNS energy crisis—arguably the most causally important mechanism—ranks seventh because no current therapeutic approach can directly and selectively address it.
See Table @tab:treatment-priority.

The ranking also suggests a treatment sequencing strategy: begin with high-tractability interventions (mast cell stabilization, NAD#super[+] supplementation) that provide immediate symptomatic relief, add root-cause-targeting interventions (immunoadsorption or daratumumab in autoantibody-positive patients) as they become available, and incorporate experimental approaches targeting low-tractability mechanisms (CNS energy restoration, epigenetic modification) as the field advances.

Figure @fig:treatment-priority-scatter visualizes the relationship between causal importance and therapeutic tractability for all classified mechanisms. The GPCR autoantibody cascade occupies the most favorable position among root causes (high importance, moderate–high tractability), while the CNS energy crisis—despite being the most causally fundamental—falls in the “important but inaccessible” quadrant. This visual representation makes concrete the chapter's central therapeutic insight: root cause does not equal treatment priority.

#include "../../../figures/fig-treatment-priority-scatter.typ"

The treatment optimization framework in Chapter @ch:predictive-applications builds on this hierarchy to model combinatorial treatment strategies, predicting which combinations of interventions are most likely to release enough locks for disease escape.

// =============================================================================
// SECTION 7b: TIMED EPIGENETIC REVERSAL
// =============================================================================

=== The Patient-Accessible Epigenetic Reversal Strategy
<sec:timed-epigenetic-reversal>

For patients with established disease where epigenetic consolidation is a load-bearing lock, the formal analysis in Chapter @ch:causal-hierarchy-formal (@oq:consolidation-directionality, Section @sec:lock-sequence) predicts that the optimal treatment order depends on whether the patient is gain-dominant, loss-dominant, or mixed. For gain-dominant patients, energy restoration must precede or accompany epigenetic intervention. For loss-dominant patients, remethylation at ProB repeats may precede energy restoration. For the most typical mixed patients, methyl-donor support (SAMe, methyl-folate, methyl-B12, betaine) combined with energy restoration provides the safest default. This section describes the gain-dominant scenario (passive demethylation); for the complementary loss-dominant scenario (active remethylation), see Speculation @spec:methylation-loss-consolidation and the full mathematical treatment at @oq:consolidation-directionality. The practical long-duration strategy below avoids toxic epigenetic drugs (5-azacitidine, HDAC inhibitors) in favor of sustained anti-inflammatory and metabolic support to permit _passive_ epigenetic reversal at hypermethylated loci.

The logic for gain-dominant patients: hypermethylation at ProA/gene-region loci is driven upward by DNMT3A/3B activity, which responds to inflammatory and metabolic stress signals ($C_"pro"$, oxidative stress). Sustained reduction of these signals---through 18--24 months of anti-inflammatory therapy plus metabolic support---would reduce the _driving force_ for methylation, allowing the natural process of passive demethylation (TET-mediated oxidation followed by replication-coupled dilution @Bolton2020passivedemethylation) to gradually erode $cal(M)$ at gain-dominant loci without pharmacological intervention at the epigenetic level. For loss-dominant patients (ProB repeat hypomethylation), this passive-reversal logic does not apply: remethylation at hypomethylated loci requires active DNMT3B activity and adequate SAM pools, not merely the withdrawal of eroding signals.

#include "subsec-01-the-patient-accessible-epigenetic-revers/warnings/warn-not-a-treatment-recommendation.typ"

#include "subsec-01-the-patient-accessible-epigenetic-revers/speculations/spec-timed-epigenetic-reversal-strategy.typ"
