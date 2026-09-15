#import "../../shared/environments.typ": *

= Foundations of ME/CFS Modeling
<ch:modeling-foundations>

#chapter-abstract[
Part V builds formal mathematical models of ME/CFS. This opening chapter lays the foundations: it explains why modelling the disease is worthwhile, reviews prior work and the scope of this contribution, and sets out the modelling approaches, computational methods, and data requirements used throughout. It then defines how the models are validated, justifies which biological subsystems are represented, and establishes the conventions on which all later chapters build. The reader who understands this chapter can interpret the quantitative models of energy metabolism, immunity, neuroendocrine and autonomic function, and integrated multi-system dynamics presented in the chapters that follow.
]

#roadmap(title: [How to Use This Chapter])[
*For patients*: little direct use; it sets conventions for quantitative models rather than clinical content, so read only the Prior Work and Scope of Contribution section if you want context.

*For caregivers*: little direct use; the chapter explains why the disease is modelled, not how to care, so no targeted section applies.

*For clinicians*: read the Model Validation and Model Coverage Justification sections to judge how trustworthy the downstream predictions are before relying on them.

*For researchers*: read the Modeling Approaches, Computational Methods, Data Requirements, and Model Validation sections to establish the conventions and requirements on which all Part V models build.
]

#include "sec-01-introduction/sec-01-introduction.typ"

#include "sec-02-why-model-mecfs/sec-02-why-model-mecfs.typ"
#include "sec-03-prior-work-and-scope-of-contribution/sec-03-prior-work-and-scope-of-contribution.typ"
#include "sec-04-modeling-approaches/sec-04-modeling-approaches.typ"
#include "sec-05-computational-methods/sec-05-computational-methods.typ"
#include "sec-06-data-requirements/sec-06-data-requirements.typ"
#include "sec-07-model-validation/sec-07-model-validation.typ"
#include "sec-08-model-coverage-justification/sec-08-model-coverage-justification.typ"
