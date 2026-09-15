// sec-01 aggregator for ch33

#import "../../../shared/environments.typ": *

== Why This Chapter Exists

#synthesis(title: [The Dose Is Diagnostic: The Dose Axis Is the First Variable, Not the Last])[
For eighteen of the medications discussed in this book, the dose--response curve is *non-monotonic*: a dose exists at which the drug works, a dose at which benefit stops, and a dose at which it harms (@ch:integrative-models, @sec:unifying-mechanisms). Because this window is narrow and patient-specific, the patient's own dose--response curve — which dose works, which dose stops, which dose harms — is itself a diagnostic readout. The inversion point (the dose at which benefit turns to worsening) maps the reserve of the underlying system, exactly as the consolidated per-drug tables in @sec:hormetic-dose-range-reference interpret it. The dose axis is therefore the *first* variable to explore when a medication is considered, not the last: the registry principle spec:hormesis-multi-drug-principle and the HIP-B battery (Chapter @ch:mechanistic-cascade-tracing) formalize how an individual's inversion points across drugs carry diagnostic weight.

*The null corollary — a single failed dose is not a failed drug.* A null at one dose is a statement about *that dose*, not about the drug. It may reflect a dose below the therapeutic window (a null-failure-mode of dose access, @sec:null-failure-modes), a dose that has crossed the individual's inversion point into net antagonism, or a receptor state that needs a different null interpretation (@sec:null-subtyping). The null ladder (@sec:null-ladder-clinical) and the inverted-U as a diagnostic pattern (@sec:inverted-u-curve, Chapter @ch:mechanistic-cascade-tracing) together warn against reading a single null as a verdict on the medication or its mechanism. Benefit that appears and disappears as the dose moves is itself informative — a signal, not a titration failure.
] <syn:dose-is-diagnostic>

#speculation(title: [Why Medication Response as a Diagnostic Probe — A Methodological Justification])[
*Current reality.* As of 2026, there is no clinically available blood test, scan, or biomarker that can tell a doctor which root cause of ME/CFS — TRPM3 channelopathy, CNS energy crisis, GPCR autoantibody cascade, or metabolic safe mode lock (@ch:causal-hierarchy) — is driving a given patient's illness. Gold-standard tests require lumbar puncture, research-grade flow cytometry, specialized autoantibody panels, or invasive cardiopulmonary exercise testing — none accessible in routine practice.

*The logic of medication-as-probe.* When a biomarker is unavailable, a medication with a known mechanism of action serves as a functional test: if drug X targets mechanism Y, and the patient improves, mechanism Y was likely dysfunctional. This is the same logic underlying the L-DOPA challenge test in Parkinson's disease and the bronchodilator reversibility test in asthma.

*What this approach CANNOT do.* Medication response cannot distinguish pharmacological effect from placebo. Response cannot distinguish root cause correction from downstream compensation. Non-response is weaker evidence than response — a drug may fail for reasons unrelated to the target mechanism. Most medications discussed lack large ME/CFS-specific RCTs. Combination response patterns multiply individual uncertainties and have never been prospectively validated.

*What this approach CAN do.* It identifies which physiological systems are likely dysfunctional. It narrows plausible root causes by excluding mechanisms that would have responded to a failed medication. It guides the next treatment step. And it gives patients a framework for understanding their illness — "my body responds to this, which tells us something about what is happening."

*Certainty.* The approach is rational given the diagnostic vacuum, but unvalidated. Every inference should be read with the caveats above in mind. The certainty of each per-medication inference is stated individually. The framework as a whole is Low to Medium — biologically plausible and clinically necessary, but unproven.

*Why this matters.* This is the chapter patients can hand to their doctors to explain why systematically trying medications, one at a time, with careful monitoring and interpreting the results, is not guesswork. It is diagnostic reasoning under uncertainty, using the tools available in 2026, while we wait for the biomarkers that will eventually make it obsolete.

*(Origin: medication-differential-analysis)*
]

