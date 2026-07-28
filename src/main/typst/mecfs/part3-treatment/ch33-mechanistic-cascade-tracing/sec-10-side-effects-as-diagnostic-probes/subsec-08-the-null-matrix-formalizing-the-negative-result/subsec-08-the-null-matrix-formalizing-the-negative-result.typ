#import "../../../../shared/environments.typ": *

=== The Null Matrix: Formalizing the Negative Result
  <sec:null-matrix>

*Certainty: 0.15.* The null matrix framework is a formal structure applied to already-inferential cascade logic. No ME/CFS patient data has been organized this way.
The chapter's most radical claim is that a null response is as informative as a positive one. But the information in a null response can be formalized: each drug trial updates a Bayesian probability distribution over the set of possible mechanisms. The pattern of nulls converges on the remaining viable mechanisms faster than positive results — because a positive result (LDN works) is consistent with multiple mechanisms, while a null result (LDN does not work) eliminates all mechanisms that LDN could intercept.

#include "subsubsec-01-the-information-content-of-null-vs-positive-results.typ"
#include "subsubsec-02-the-null-ladder-algorithm.typ"
#include "subsubsec-03-the-patient-specific-null-matrix.typ"

#v(1em)
*Origin-axis extension:* The null matrix eliminates *mechanisms*. Translating mechanism-level elimination to origin-level elimination — can a patient's null pattern rule out viral, autoimmune, or genetic origin? — requires additional logical scaffolding that the null matrix alone does not provide. This is formalized in @sec:origin-elimination (Chapter 32, sec-02h). In brief: the rituximab null eliminates B-cell-dependent autoantibody production but does not eliminate autoimmune origin — four autoimmune pathways survive the null. The valacyclovir null eliminates ongoing viral replication but does not eliminate viral origin — trigger-only and amplifier models survive. Genetic origin is inherently unfalsifiable by any null pattern. Origin inference requires combining the null matrix with the patient's temporal trajectory and pre-morbid state — an axis not captured by drug-response data alone @Maziarz2024CausalPluralism.

*Null subtyping extension:* The null matrix treats each cell as binary (mechanism eliminated or not). The null subtyping framework (@sec:null-subtyping) adds a third dimension: null type — absent, blocked, overwhelmed, or biased — refining each matrix cell from a binary flag to a categorical classification. A null cell marked "eliminated" may actually represent a blocked, overwhelmed, or biased-signalling receptor whose mechanism survives but is pharmacologically inaccessible. See Chapter 32, sec-02i for the full taxonomy and distinguishing probes.

