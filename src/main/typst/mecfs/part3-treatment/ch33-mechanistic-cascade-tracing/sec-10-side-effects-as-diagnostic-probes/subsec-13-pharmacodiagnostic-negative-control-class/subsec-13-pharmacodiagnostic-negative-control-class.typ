#import "../../../../shared/environments.typ": *

=== The Pharmacodiagnostic Negative-Control Class — Hypothesis Falsification by Drug Failure
  <sec:negative-control-class>

*Certainty: 0.25.* The negative-control class framework is a formal structure applied to already-inferential cascade logic. The empirical cases are well-established (rituximab RCT null, IA response heterogeneity), but their synthesis into a formal diagnostic class is a novel conceptual contribution, not extracted from existing literature.

The null matrix (@sec:null-matrix) establishes that a patient's null response to a drug eliminates the mechanisms that drug could intercept — narrowing the differential. But there is a deeper logical structure that the null matrix does not yet capture: the *negative-control medication*. A negative-control drug is one whose mechanism directly targets a hypothesized causal pathway, such that the hypothesis *predicts* it must work. If it does not work — and the trial is adequately powered — the hypothesis is falsified, not just set aside for one patient. This is mechanism-level inference, not patient-level elimination.

The distinction is important. A patient's null response to LDN eliminates TLR4/TRPM3/endorphin mechanisms *for that patient* — another patient's LDN null eliminates the same set independently. But rituximab's null in a 151-patient RCT (@Fluge2019RituximabPhase3) does not just eliminate B-cell-dependent GPCR-AAb for those 151 patients — it constrains the hypothesis for *all* patients for whom the hypothesis was ever plausible. The scope of the inference is different: patient-level nulls narrow a differential; mechanism-level nulls narrow a model.

*Consequence:* Treatment failures at the RCT level aren't just disappointing — they're the strongest evidence the field has about what isn't causing ME/CFS. Each definitive negative trial eliminates a candidate mechanism with more authority than a positive trial confirms one, because positive trial results are consistent with multiple mechanisms (the drug could work for reasons unrelated to the hypothesized pathway), while a negative trial of a mechanism-targeted drug tells you the mechanism itself isn't dominant.

#include "subsubsec-01-formal-definition-and-taxonomy.typ"
#include "subsubsec-02-rituximab-as-canonical-negative-control.typ"
#include "subsubsec-03-immunoadsorption-and-the-negative-control-boundary.typ"
#include "subsubsec-04-the-null-ladder-vs-negative-control-ladder.typ"
#include "subsubsec-05-distinguishing-negative-controls-from-null-results.typ"
#include "subsubsec-06-critical-limitations-and-extensions.typ"
