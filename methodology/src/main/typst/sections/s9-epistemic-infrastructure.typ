= Epistemic Infrastructure

The document's quality assurance is not only procedural—it is also structural. The document itself encodes its epistemic commitments in a system of named environments that reviewers can target precisely.

The environments, their meaning, and their certainty thresholds are:

- *Achievement:* A finding supported by strong evidence—replicated results from peer-reviewed studies with adequate sample sizes. The most reliable claim type.
- *Hypothesis:* An unproven conjecture with moderate plausibility (certainty $gt.eq 0.45$). Must include at least one falsifiable prediction, identified limitations, and citations.
- *Speculation:* A conjecture with lower plausibility (certainty $< 0.45$), often based on limited evidence, mechanistic reasoning, or extrapolation from related conditions.
- *Prediction:* A testable claim about future observations, providing a concrete path toward validation or falsification of a hypothesis.
- *Warning:* A critical caveat about risks, limitations, or potential misinterpretations.
- *Limitation:* An explicit epistemic boundary—what the available data cannot conclude.
- *Recommendation:* An evidence-based clinical or management suggestion, strictly distinguished from hypotheses. A recommendation says "consider doing this," grounded in clinical evidence. A hypothesis says "this might be true," grounded in mechanistic reasoning.

This classification system is enforced at two levels: by the scientific rigor auditor (which checks that environments are correctly assigned) and by the safety auditor (which specifically hunts for recommendations that should be hypotheses).

A cross-document hypothesis registry tracks every `hypothesis`, `speculation`, `prediction`, and `open_question` environment in the manuscript. When any such environment is added, modified, or removed in any chapter, the registry is updated. This prevents contradictions between chapters and provides a single reference point for the document's epistemic commitments.
