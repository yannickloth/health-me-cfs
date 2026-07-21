#import "../../../../shared/environments.typ": *

=== Why Average-Effect Replication Fails

The fundamental challenge in replicating treatments for heterogeneous diseases is that a population average effect may not apply to any identifiable subgroup within that population. This principle is captured in two complementary concepts: the ecological fallacy and Simpson's paradox.
The ecological fallacy, as articulated by Kent and Hayward @Kent2007, occurs when population-level associations fail to represent individual-level phenomena. An average treatment effect of zero across an entire population may conceal subgroups experiencing strong benefit and others experiencing harm. In simplified terms, if only 30% of patients respond to a given treatment, the observed average effect is diluted even if responders achieve a large clinical benefit. The magnitude of dilution depends on effect size in responders, the effect in non-responders, and the responder prevalence.
Simpson's paradox, documented systematically in clinical contexts by Kievit and colleagues @Kievit2013, demonstrates that a treatment appearing ineffective overall can simultaneously be highly effective when data are stratified by an unmeasured or unconsidered subgroup variable. This paradox is not a statistical artifact but a direct consequence of unaccounted treatment-by-subgroup interactions.
The PATH Statement (Predictive Approaches to Treatment Effect Heterogeneity), developed by Kent, Steyerberg, and van Klaveren @Kent2020PATH, provides a formal framework for recognizing and addressing this problem: not all patients benefit equally from the same treatment, and replication of aggregate trials without addressing heterogeneity will continue to fail.

#include "./mecfs-case-study-the-rituximab/mecfs-case-study-the-rituximab.typ"

