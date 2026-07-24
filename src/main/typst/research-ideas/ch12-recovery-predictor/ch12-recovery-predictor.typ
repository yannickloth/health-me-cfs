#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Chapter 12: The Differential Recovery Predictor
// Type: Clinical Decision Tool
// =============================================================================

= The Differential Recovery Predictor
<ch:recovery-predictor>

#chapter-abstract[
The paper documents 5–22% recovery rates but provides limited guidance on who recovers and why. A structured predictive model — using baseline features (age, severity, duration, trigger type, specific biomarker panel) to estimate individual recovery probability at 5 years — would give patients and physicians the data they need for realistic planning. It transforms "we don't know" into "here's your most likely trajectory and what might bend it."
]

== Motivation

Patients ask a universal question: "Will I recover?" Physicians answer with population statistics ("some people do") that provide no individual guidance. The recovery predictor addresses this gap by modeling the features that distinguish recoverers from non-recoverers and producing an individualized probability estimate.

The predictor is not a crystal ball — it's a transparent statistical model updated as new evidence emerges. Its primary value is not the number itself but the identification of which features most strongly predict recovery, which in turn identifies the highest-value next actions.

== Recovery Predictor Features

=== Established Predictors (from published literature)

*Age at onset.* Pediatric and adolescent onset has higher recovery rates (~50% in some pediatric cohorts vs 5–22% in adults). Mechanism: greater neural plasticity, more active thymic function supporting immune reconstitution, less accumulated oxidative damage, fewer comorbidities.

*Duration.* Shorter disease duration (< 2–3 years) is associated with higher recovery probability. Each additional year of disease reduces probability, with the decline steepest in the first 5 years. Mechanism: epigenetic consolidation, structural damage accumulation (SFN fiber loss, capillary rarefaction), and attractor basin deepening (Ch47) all increase with time.

*Severity at baseline.* Mild/moderate patients recover more often than severe/very severe patients. Mechanism: severe patients have more deeply entrenched pathophysiology; the attractor basin is wider and the separatrix harder to cross.

*Trigger type.* Post-infectious onset may have higher recovery than gradual onset (direction of effect disputed — some studies show the reverse). The data is inconsistent and may depend on the specific infectious trigger.

=== Proposed Predictors (hypothesis-driven, not yet validated)

*Autoantibody profile.* GPCR autoantibody-positive patients may show differential recovery rates depending on whether the autoantibody is transient (post-infectious molecular mimicry that resolves) or persistent (long-lived plasma cell-driven). Daratumumab response data suggests that the persistent form can be addressed, implying higher recovery potential if the autoantibody source is targetable.

*Epigenetic age acceleration.* Patients with greater DNA methylation age acceleration (older epigenetic age than chronological age) may have lower recovery potential because the epigenome is more rigid. Patients with minimal age acceleration may have more plastic epigenomes capable of reversion. The epigenetic clock (Ch47 §2) is proposed as a recovery predictor.

*Mitochondrial reserve capacity.* PBMC Seahorse spare respiratory capacity (SRC) — the difference between maximal and basal OCR — is a measure of how much additional energy the cell can produce under demand. Higher SRC predicts greater capacity to tolerate metabolic stress and may predict greater recovery potential when the bottleneck is relieved.

*HRV recovery rate.* The speed at which HRV normalizes after a crash (recovery time constant τ) may predict overall recovery velocity. Patients with rapid HRV recovery have intact autonomic regulatory capacity; those with slow recovery have damaged regulatory machinery.

*Comorbidity burden.* MCAS, POTS, hEDS, FM, IBS — each comorbidity represents an additional dysregulated system that must normalize for recovery. Higher comorbidity count predicts lower recovery probability.

=== The Predictive Model

A Cox proportional hazards model (or, for a point prediction, logistic regression) with:

$P("recovery by " t) = 1 - exp( -H_0(t) dot exp(beta_1 X_1 + beta_2 X_2 + ... + beta_k X_k) )$

where $H_0(t)$ is the baseline cumulative hazard and $X_i$ are the predictor features.

The model outputs:
1. Point estimate: probability of recovery by time t (e.g., 5 years)
2. Uncertainty interval: 95% confidence interval around the estimate
3. Feature contributions: which features most influence the prediction (SHAP values)
4. Modifiable vs fixed features: which predictors are actionable (mitochondrial reserve capacity can potentially be improved; age at onset cannot)
5. Scenario projections: "if your mitochondrial SRC improved by 20%, your 5-year recovery probability would increase from X% to Y%"

=== Clinical Integration

#proposal[
*Implementation.* A clinical tool (web-based or integrated into EHR) that takes baseline patient data and outputs a recovery prediction with uncertainty intervals and actionable recommendations. The model is transparent: every prediction includes the evidence basis for each coefficient.

*Dynamic updating.* As the patient undergoes treatments and biomarkers change, the prediction updates. A patient whose autoantibodies clear after daratumumab, whose HRV recovery time constant improves, and whose mitochondrial SRC increases sees a rising recovery probability. This provides patients and physicians with feedback on whether the treatment strategy is working — not just symptomatically but mechanistically.

*Population surveillance.* Aggregate predictions across a clinic's patient panel to estimate the distribution of expected outcomes and identify patients who are deviating from their predicted trajectory (either better or worse than expected), triggering review.
]

== Validation

*Retrospective.* Apply the model to existing longitudinal cohorts (Dubbo, DecodeME, SolveCFS Biobank) with known outcomes. Test whether the model, trained on one dataset, predicts outcomes in another.

*Prospective.* Enroll 500 patients with baseline measurements, predict 2-year and 5-year outcomes, and compare against actual outcomes. Update the model as prediction errors accumulate.

== Limitations

#limitation[
*Low recovery rate.* With only 5–22% of patients recovering, the model is predicting a rare event. Positive predictive value will be low even if discrimination is acceptable. The model may be more useful for identifying features associated with non-recovery (which is the common outcome) than predicting recovery per se.

*Definitional ambiguity.* "Recovery" is variably defined across studies — return to premorbid function, return to employment, substantial symptom improvement. The model must use a consistent, objectively defined recovery endpoint. The IOM criteria specify that ME/CFS is diagnosed by symptoms, not biomarkers, so recovery by definition means symptom resolution, regardless of biomarker persistence.

*Causality vs prediction.* Features that predict recovery are not necessarily causal. A patient with short duration may recover because short duration is a marker of mild disease biology, not because duration itself causes irreversibility.

*Self-fulfilling prophecy risk.* A low recovery prediction may demoralize patients and reduce treatment adherence, creating a self-fulfilling prophecy. The tool must be presented with appropriate framing and always accompanied by actionable recommendations.
]

== Consequence

#key-point[
The recovery predictor transforms the universal patient question from an unanswerable "will I recover?" to an evidence-based "based on your profile, here's your estimated probability, here's why, and here's what might improve it." It provides the information patients need for life planning and the feedback physicians need for treatment evaluation. Most importantly, it identifies which modifiable features are the highest-value targets for intervention — giving patients an actionable path rather than a passive prognosis.
]
