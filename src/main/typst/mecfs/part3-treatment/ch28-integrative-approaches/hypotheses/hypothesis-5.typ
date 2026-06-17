#import "../../../shared/environments.typ": *

#hypothesis(title: [Combination Therapy Stratified by Dominant Loop])[
The disease attractor is sustained by multiple loops simultaneously, with patient-specific variation in which loops dominate. The model predicts that biomarker-stratified combination therapy targeting the patient's 4--6 most-engaged loops will substantially outperform either monotherapy or unstratified combination therapy. _(Certainty: 0.55.)_

Specifically:

(1) *Single-loop interventions reduce attractor depth incrementally.* If only one loop is targeted, the attractor remains stable but the patient may relax to a higher $B$ within the same basin (within-envelope improvement, Table @tab:three-recovery-timescales). Symptoms improve; the disease state persists.

(2) *Multi-loop interventions can collapse the attractor.* Targeting four or more dominant loops simultaneously can shrink the basin enough that noise-driven escape (stochastic resonance, Section @sec:stochastic-resonance) becomes feasible, or can reverse the saddle-node bifurcation entirely.

(3) *Loop dominance is patient-specific.* Sensitivity analysis predicts that the relevant 4--6 loops differ between metabolic-dominant, immune-dominant, autonomic-dominant, and severe/locked subtypes (Section @sec:sensitivity-drug-targets).

*Falsifiable predictions:*

(a) In a stratified RCT comparing monotherapy vs. patient-tailored 4--6-mechanism combination therapy, the combination arm should show $> 2 times$ the effect size of monotherapy at 12 months.

(b) Patients whose biomarker profile identifies $gt.eq 4$ engaged loops should respond worse to monotherapy than patients with $lt.eq 2$ engaged loops, because monotherapy in the multi-loop case leaves most of the attractor intact.

(c) The minimum cocktail size (Section @sec:network-controllability) of 4--6 should match the empirical observation that successful clinical responders typically use 4--6 concurrent interventions, while non-responders or partial responders typically use 1--3.

This hypothesis builds on the network controllability prediction (already in @sec:network-controllability) and the subtype-specific sensitivity prediction (@sec:sensitivity-drug-targets), unifying them with the practical observation that experienced ME/CFS clinicians (Mestinon + LDN + fludrocortisone + antihistamine + supplement stack patterns) achieve better results than single-agent trials.
] <hyp:stratified-combination-therapy>
