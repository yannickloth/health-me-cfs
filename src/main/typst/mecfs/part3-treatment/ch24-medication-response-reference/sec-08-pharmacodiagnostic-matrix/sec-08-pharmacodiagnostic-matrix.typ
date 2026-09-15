#import "../../../shared/environments.typ": *

== Pharmacodiagnostic Matrix — Constraint-Satisfaction Inference <sec:pharmacodiagnostic-matrix-clinical>

The pharmacodiagnostic matrix is a formal constraint-satisfaction structure: each row is a medication, each column is a mechanistic hypothesis. A cell contains the expected response of medication M under hypothesis H. The matrix's diagnostic inference operates through constraint propagation — each drug response (positive, null, side-effect) constrains which columns remain viable.

=== Matrix Structure

*Rows:* Every medication for which the paper provides pharmacodiagnostic reasoning (~192 entries). Each row encodes the medication's expected response under every hypothesis in the paper.

*Columns:* Every mechanistic hypothesis with at least one pharmacologically probe-able node. Grouped by hypothesis class: ion channel (TRPM3, TRPM7, TRPV1, PIP2 convergence), mitochondrial (PDH inhibition, NAD+ depletion, IDO metabolic trap, WASF3), autoimmune (GPCR-AAb, B-cell, T-cell, complement), neuroinflammatory (microglial priming, brainstem neuroinflammation, glymphatic failure), connective tissue (hEDS/HSD, CCI/AAI), autonomic (POTS subtypes, baroreflex failure), Gerlier (4 pathways).

*Cells:* Each cell encodes: (a) expected direction (positive response or null), (b) certainty of the inference chain, (c) specificity — whether the response strongly discriminates this hypothesis from alternatives.

=== Inference Through Constraint Propagation

A drug-positive response → all hypotheses for which the drug is expected positive remain viable; hypotheses for which a null was expected are weakened (potential false-positive or the drug engaged a different mechanism).

A drug-null response → all hypotheses for which the drug is expected positive are eliminated; hypotheses for which a null was expected are strengthened.

A drug-specific side-effect → the side effect identifies a vulnerable system. Hypotheses involving that system are strengthened; hypotheses that predict the OPPOSITE side effect are eliminated.

The matrix resolves down to a small set of surviving hypotheses — the intersection of all constraints. The resolution limit is determined by the number of drugs tested and the information density of each drug's response pattern.

=== Mathematical Limits

*Inference depth multiplicative uncertainty.* Each matrix cell rests on a cascade inference chain of 3--6 steps. In Bayesian networks, the posterior certainty of a multi-node chain is p#super[n], not the arithmetic mean. The compound certainty of most cells is an order of magnitude below the stated terminal certainty values. This is not a matrix error — it is a structural limit of cascaded mechanistic inference.

*Spectral resolution.* Two hypotheses are spectrally unresolvable if every medication in the matrix predicts the same response under both hypotheses. No set of drug responses can distinguish them — they are pharmacodiagnostically identical. The matrix's resolution = the number of hypotheses that can be uniquely distinguished by the available drug set.

*Hypothesis coverage.* Most medications discriminate 3--8 hypotheses; aripiprazole discriminates 5 of 8; stimulants discriminate 1 of 8. No single drug is expected to discriminate all hypotheses. The matrix's power comes from constraint propagation across multiple drugs, not from single-drug specificity.

=== Example — Aripiprazole × All Hypotheses

| Hypothesis | Expected LDA Response | Discriminative? |
|------------|----------------------|-----------------|
| Microglial priming (D2-mediated) | Positive | Yes — low-dose D2 agonism suppresses microglial cytokines specifically |
| Dopamine deficiency (mesocorticolimbic) | Positive | Yes — partial agonism restores tonic DA tone |
| TRPM3 channelopathy | Null | No — LDA does not target TRPM3; null non-informative |
| GPCR autoantibody (PIP2 depletion) | Null | No — LDA doesn't address PIP2; null non-informative |
| PDH inhibition (mitochondrial) | Null | No — LDA doesn't address PDH |
| Mast-cell-driven neuroinflammation | Possibly positive | Weak — mast cells express D2 but are not LDA's primary target |
| Gerlier Pathway 2 (sympathetic) | Positive | Yes — D2 agonism compensates for dopamine depletion from DBH overactivity |
| Glymphatic failure | Null | No — no direct glymphatic mechanism |

Chapter @ch:mechanistic-cascade-tracing sec-10 provides the full drug × hypothesis cross-reference for all ~192 entries.

=== Spectral Resolution Limits

A *limit:* every matrix cell is an inference, not an observation. The inference depth — the number of experimentally unvalidated arrows in each cell's mechanistic chain — compounds multiplicatively. The matrix identifies resolvable from unresolvable hypotheses, but the certainty of any resolved pair is bounded by the weakest link in the inference chain.

If two hypotheses predict opposite responses from a drug that is safe and accessible → the patient's response resolves them. If two hypotheses predict the same response from every safe and accessible drug → they are pharmacodiagnostically unresolvable and require a non-pharmacological probe (blood biomarker, imaging, or functional test).
