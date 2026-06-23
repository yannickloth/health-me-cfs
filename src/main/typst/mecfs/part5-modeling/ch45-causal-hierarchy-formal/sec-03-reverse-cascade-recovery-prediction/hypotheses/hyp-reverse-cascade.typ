#import "../../../../shared/environments.typ": *

#hypothesis(title: [Reverse Cascade Recovery Sequence])[
In patients responding to effective treatment, biomarker normalization follows the reverse of the onset cascade: calcium signaling markers normalize within days, energy markers within weeks, safe mode indicators within months, immune markers over months, autoantibodies over months to a year, and epigenetic marks over years. Deviation from this predicted order indicates the treatment is acting on a non-primary target or that a load-bearing lock is blocking progression.

*Certainty:* 0.35. The prediction follows logically from the ODE timescale hierarchy, but has never been observed or tested in ME/CFS. Nonlinear dynamics could disrupt the simple reversal ordering, and real biological systems may not respect the clean timescale separation assumed in the model.

*Testable predictions:*

    + In patients responding to daratumumab (targeting autoantibodies), the temporal sequence of improvement should be: autoantibody decline (weeks) $arrow.r$ immune marker normalization (months) $arrow.r$ energy improvement (months) $arrow.r$ symptom resolution (months), with epigenetic normalization lagging by years.
    + Recovery "stalls" (plateau without further improvement) occur when the next-in-sequence parameter is a load-bearing lock that is not being addressed by the current treatment.
    + Deviation from predicted order---e.g., energy markers improving before immune markers---indicates the treatment acts directly on the energy subsystem rather than through immune normalization.

*Limitations:* Testing requires longitudinal multi-biomarker monitoring during treatment, which is expensive and not standard in current ME/CFS trials. The prediction assumes relatively clean timescale separation; if the ODE system has strong fast--slow coupling, the simple reversal may not hold. The prediction assumes that the net effect of pathogenic methylation is gain (reversible by passive demethylation after inflammation resolves); loci below $m_i^"crit"$ (ProB repeats after DNMT3B redistribution) require active remethylation on a different timescale and may reverse earlier or later depending on the locus class (see @oq:consolidation-directionality). The Rekeland et al.\ cyclophosphamide trial @Rekeland2020rituximab tracked some longitudinal biomarkers but not with the temporal resolution needed to test recovery ordering.
] <hyp:reverse-cascade>
