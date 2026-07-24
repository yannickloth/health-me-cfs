#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Chapter 1: The Grand Exhaustive Pharmacodiagnostic Matrix
// Type: Pharmacodiagnostic Method
// =============================================================================

= The Grand Exhaustive Pharmacodiagnostic Matrix
<ch:pharmacodiagnostic-matrix>

#chapter-abstract[
A systematic extension of the mechanistic cascade tracing framework (Ch30): every commercially available medication with plausible ME/CFS relevance, cross-indexed against every mechanistic hypothesis, producing a complete pharmacodiagnostic decision tree. A patient's response pattern across multiple medications simultaneously constrains which hypotheses remain viable and which are eliminated, enabling bottleneck localization without any new laboratory assay.
]

== Motivation

Ch30 traces cascades per hypothesis and identifies medications that could intercept at each node. But the current presentation is hypothesis-indexed: look up a hypothesis, then follow the cascade. What is missing is the drug-indexed, cross-hypothesis view: for a given medication, what does a positive response imply across *all* hypotheses, and what does a null response eliminate across *all* hypotheses?

The diagnostic power of medication response is multiplicative when responses are cross-referenced. A single drug trial produces one constraint. Two drug trials produce ~N^2 constraints (one per hypothesis pair where responses differ). Ten drug trials produce a near-complete constraint satisfaction problem whose solution identifies the most probable bottleneck with far greater precision than any single drug trial.

== Proposal

=== Core Mechanism: Response Matrix

For each medication M_i and each hypothesis H_j, define the expected response as:

$"Resp"(M_i, H_j) in { "positive", "null", "paradoxical", "unknown" }$

A *positive* response to M_i for H_j means: if H_j is the dominant pathophysiology, M_i should produce clinical improvement (with a certainty rating derived from the cascade evidence in Ch30). A *null* response means: if H_j is dominant, M_i should not produce improvement because either M_i targets a node downstream of H_j's bottleneck or M_i targets a pathway unrelated to H_j. A *paradoxical* response is one where the observed effect is opposite to the expected effect given H_j — strong evidence against H_j.

Each cell in the matrix is accompanied by:
- Certainty rating (0–1) for the mechanistic inference
- The cascade node(s) at which M_i intercepts H_j
- The expected latency to clinical effect
- The expected effect magnitude (partial vs complete)

=== Constraint Propagation Algorithm

A patient completes drug trials for medications {M_1, ..., M_k}, obtaining observed responses {R_1, ..., R_k}. For each hypothesis H_j:

$"Score"(H_j) = (sum_{i=1}^{k} "Agreement"(R_i, "Resp"(M_i, H_j))) / k$

where $"Agreement"$ weights by certainty and incorporates the diagnostic value of null responses (a null response where positive was expected is penalized, and vice versa).

The surviving hypotheses are those above a threshold score. The algorithm additionally outputs:
1. Which single additional drug trial would most discriminate among surviving hypotheses (maximizes expected information gain)
2. Which drug combinations produce responses that are only explicable under a specific hypothesis (pathognomonic response patterns)
3. The confidence interval on bottleneck localization

#proposal[
*Implementation.* The matrix is built as a structured Typst table (~200 rows × ~30 columns), with a separate compact version suitable for clinical use. Each cell contains: expected response direction, certainty, cascade node reference. The algorithm is described in prose with a worked example tracing 5 hypothetical drug trials through 8 hypotheses to localize a bottleneck. The matrix includes every medication discussed in Ch24, Ch27, and Ch30, plus commonly prescribed medications patients have already tried (SSRIs, benzodiazepines, beta-blockers, antihistamines) — making it retroactively applicable.
]

=== Clinical Applications

*Immediate use (no new data required).* For a patient who has already tried 8–15 medications (typical for long-duration ME/CFS), retrospective application of the matrix may identify the most probable bottleneck without any new trial. This is the matrix's most powerful feature: it extracts diagnostic signal from trials already conducted.

*Prospective use.* A physician selects 3–5 medications with maximal cross-hypothesis discriminating power (identified by the algorithm), trials them sequentially, and after each trial the constraint set narrows. After 3–5 trials, the surviving hypotheses are typically reduced to 1–2. This is the pharmacodiagnostic equivalent of a decision tree — but for disease mechanism, not symptom.

*Research use.* Aggregate responses across hundreds of patients into a population-level constraint satisfaction problem. The distribution of bottleneck locations across subgroups tests whether ME/CFS is one disease with variable bottleneck position or multiple diseases with different dominant mechanisms.

== Feasibility

*Effort.* High — requires systematic review of every medication × hypothesis pair, drawing on the cascade evidence already compiled in Ch24 and Ch30. Estimated 40–80 hours of compilation and verification.

*Data requirements.* None for construction. For validation: existing patient medication histories (already collected by most ME/CFS specialists) can be used to test whether the matrix retrospectively identifies consistent bottleneck patterns.

*Validation approach.* Apply to cases with known mechanism (e.g., GPCR autoantibody-positive patients whose response to immunoadsorption is known; TRPM3-confirmed patients) and verify that the matrix places highest probability on the correct mechanism.

== Limitations

#limitation[
*Certainty ceiling.* Individual mechanistic inferences rarely exceed 0.40, and the product of multiple uncertain inferences compounds error. The matrix should be treated as hypothesis generation, not diagnosis. A low-certainty correct inference is better than no inference, but the user must understand the ceiling.

*Cascade incompleteness.* Some medications act at multiple nodes in ways not captured by the cascade model. Off-target effects may produce responses that the matrix interprets incorrectly. Each medication's pharmacology must be reviewed exhaustively.

*Placebo and regression to the mean.* ME/CFS symptoms fluctuate; a patient may attribute natural fluctuation to medication response. The matrix requires rigorous documentation practices: baseline stabilization period, objective outcome measures, washout periods between trials.

*Patient safety.* Any pharmacodiagnostic approach must explicitly warn that medications are not prescribed for the purpose of diagnosis unless under physician supervision with appropriate monitoring.
]

== Consequence

#key-point[
The pharmacodiagnostic matrix transforms the narrative "this patient tried X and it helped/didn't help" into a formal constraint satisfaction problem with measurable diagnostic power. It extracts signal from medication trials that have already occurred — no new data required — and guides prospective trials toward maximum information gain. For a disease where laboratory diagnostics remain elusive, this is the most immediately deployable mechanistic diagnostic tool.
]

== Potential Impact

| *Audience*     | *Value* |
|----------------|---------|
| Patients       | Understanding *why* a medication did or didn't work; rational basis for next trial |
| Physicians     | Structured diagnostic algorithm replacing trial-and-error with information-maximizing sequence |
| Researchers    | Population-level bottleneck distribution across subgroups; validation of cascade models; identification of pathognomonic response patterns |

== Relationship to Existing Content

This proposal directly extends Ch30 (Mechanistic Cascade Tracing), Ch24 (Medications by System), and Ch18 (Mechanism-Treatment Map). It provides the clinical interface that connects the mechanistic reasoning of Ch30 to the medication reference of Ch24. The cross-hypothesis dimension is novel: no existing chapter systematically compares expected drug responses across hypotheses.
