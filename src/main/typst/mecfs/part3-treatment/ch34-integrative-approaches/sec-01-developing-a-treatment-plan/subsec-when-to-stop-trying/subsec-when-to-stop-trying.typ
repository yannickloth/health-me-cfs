#import "../../../../shared/environments.typ": *

=== The Refractory Patient: Escalation, Stopping Rules, and Referral
<subsec:when-to-stop-refractory>

Most complex ME/CFS patients fail first-line treatment. This subsection consolidates the paper's guidance for the *refractory* patient — the patient who has failed multiple appropriately-trialled treatments and whose care must shift from "add the next drug" to a structured escalation ladder with explicit stopping rules, harm detection, and referral criteria. It unifies stopping guidance from Section @subsec:when-to-stop and Chapter @ch:mechanistic-cascade-tracing (the stopping conditions in Section @sec:do-not-disturb-rule and the contraindication ladder in Section @sec:contraindication-ladder), the null-subtyping framework (Section @sec:null-subtyping, Chapter @ch:medication-response-reference), and specialist-care evidence (Chapter @ch:healthcare-systems-policy).

==== Operational Definition of Refractory ME/CFS

#open-question(title: [When Is a Patient "Refractory" to Treatment?])[

A patient is *refractory* when they have failed a defined minimum of appropriately-trialled treatments without clinically meaningful improvement. For ME/CFS, "appropriately-trialled" must respect the disease's specific pharmacology (Section @subsec:microdosing): a treatment failed at a standard dose is not a treatment failure in ME/CFS if micro-dosing or an adequate trial duration was never achieved. A working operational threshold, consistent with the document's sequencing and stopping guidance:

- *Adequate trial*: each agent trialled at a micro-dosed starting point (Section @subsec:microdosing), titrated over 8--12 weeks, and discontinued per Section @sec:do-not-disturb-rule (PEM budget, three-null class elimination, or harm signal) — not abandoned early or at an inappropriate dose.
- *Refractory threshold*: failure of a minimum of two independent mechanism classes (e.g., immune-neuroinflammatory and autonomic), each adequately trialled, without net functional improvement, AND no correctable confound (untreated comorbidity, drug interaction, or under-dosed trial) remaining identified.

*Consequence:* This definition prevents two clinical errors: declaring a patient refractory after a single under-dosed trial (which misclassifies a treatment failure as a refractory disease), and indefinitely re-trialling classes already cleanly eliminated (which accumulates futile polypharmacy and PEM). A patient meeting the threshold shifts from empirical trial-and-error to the escalation ladder and referral pathway below.

*Certainty: 0.20.* This is a proposed clinical heuristic, not an evidence-based cut-off — no study has defined refractoriness in ME/CFS. It is offered as a transparent, revisable operational standard so that "refractory" means the same thing to different clinicians.
] <oq:refractory-definition>

==== The Escalation Ladder: From Empirical Trials to Specialist Referral

#recommendation(title: [Escalation Ladder for the Non-Responding Patient])[

The following ladder sequences care for a patient who fails first-line treatment, from least to most resource-intensive. Each rung has explicit entry criteria and a stopping/referral trigger. The ladder is built on the stopping rules in Section @sec:do-not-disturb-rule and the crash-risk ranking in Section @subsec:crash-risk.

+ *Rung 0 — Optimize the foundation.* Re-audit dosing, duration, and adherence against the micro-dosing and energy-category framework (Sections @subsec:microdosing, @subsec:energy-categories). Ensure pacing and Category A energy support are in place (Section @subsec:prioritizing-interventions). *Exit:* only after confounds (under-dosing, interaction, untreated comorbidity) are ruled out — see the contraindication ladder in Section @sec:contraindication-ladder.

+ *Rung 1 — Systematic, mechanism-ordered trials.* Trial mechanism classes in order of evidence and energy cost (Section @subsec:prioritizing-interventions). Use the null matrix to maximise mechanisms eliminated per trial, and interpret nulls via null subtyping (Section @sec:null-subtyping) before abandoning a mechanism. *Stop:* Section @sec:do-not-disturb-rule (severe PEM, energy-neutral fatigue, three consecutive nulls in a class, or $>$50% improvement answered).

+ *Rung 2 — Pattern recognition and phenotype refinement.* After Rung 1 eliminates accessible classes, re-assess phenotype (Section @sec:phenotyping-imperative) and revisit hypothesis registry for the dominant mechanism (Chapter @ch:proposed-studies). Consider the "refractory" subtypes: global paradoxical reactor, medication-intolerant, or a mechanism inaccessible by current probes (Section @sec:null-subtyping). *Stop:* Section @sec:do-not-disturb-rule still applies; do not re-trial eliminated classes.

+ *Rung 3 — Specialist referral.* If Rungs 0--2 fail to improve function AND the patient has adequate functional reserve to tolerate the burden, refer to a specialist center (criteria below). *Stopping:* see Section @sec:do-not-disturb-rule for harm signals; referral is not an order to continue futile trialling.

*Escalation is not additive by default.* Moving up the ladder does not mean adding more simultaneous drugs. Each rung re-allocates effort toward understanding the failure (Rungs 1--2) or toward higher-level care (Rung 3), not toward broader polypharmacy. The ladder's purpose is to detect when treatments are doing harm and when to stop, as much as when to escalate.

*Certainty: 0.25.* The ladder is a clinical-structuring synthesis of the document's existing evidence-based components (stopping rules, crash-risk ranking, null subtyping, phenotype prioritization). The ordering is rational, not validated by a comparative study of escalation sequences in ME/CFS.

*Consequence:* For a patient who has failed first-line treatment, the ladder gives clinician and patient a shared, ordered path — and, just as importantly, explicit triggers to stop and to refer. It prevents the two most common errors in the refractory patient: endless sequential drug-trialling (futile polypharmacy) and premature abandonment of a mechanism class that was simply under-dosed or mis-probed.
] <rec:refractory-escalation-ladder>

==== Criteria for Referral to a Specialist Center

#recommendation(title: [Referral Criteria for Refractory Patients])[

Referral to a specialist ME/CFS center is appropriate when the clinical picture exceeds what well-informed primary care can resolve. Candidate criteria, consistent with Section @subsec:when-to-stop and Chapter @ch:healthcare-systems-policy:

- *Diagnostic uncertainty that primary care cannot resolve*: suspected serious organic disease, or a treatment-emergent deterioration needing specialist interpretation (Chapter @ch:urgent-action-severe, emergency triggers).
- *Refractory confirmed by the operational definition above*: two mechanism classes adequately trialled and failed, with correctable confounds excluded.
- *Specialist-only interventions under consideration*: interventions available only at specialist centers (e.g., immunoadsorption, apheresis, or complex immunomodulation — Chapter @ch:emerging-therapies).
- *Access to specialist phenotyping or diagnostics* that would change the treatment plan (e.g., biomarker panels, specialist autonomic or neuroimaging assessment).
- *Severe/very-severe patients failing home-based management*: the patient cannot be stabilised in the community (Chapter @ch:healthcare-systems-policy notes specialist access is most critical for severe patients).

*Honest caveat (evidence gap):* Section @oq:specialist-clinic-evidence in Chapter @ch:healthcare-systems-policy documents that *no study has shown specialist clinic care improves outcomes over well-informed primary care.* Referral is therefore justified by unmet diagnostic or intervention needs, not by a demonstrated superiority of specialist care. Where a referral is impractical (geography, access barriers, or the homebound severe patient), the Rungs 0--2 framework remains the standard of care, and the honest communication to the patient is that specialist referral may not change the treatment trajectory.

*Certainty: 0.25.* Referral criteria are a clinical-structuring synthesis; the underlying evidence is the specialist-clinic evidence gap documented in Chapter @ch:healthcare-systems-policy and the urgent-action referral triggers in Chapter @ch:urgent-action-severe.

*Consequence:* Clear referral criteria give the clinician a defensible, evidence-honest basis to refer the refractory patient and to justify not referring when it would not change care — protecting the homebound severe patient from a futile, inaccessible referral while ensuring diagnostic and intervention needs are met. Severity applicability: most clinically relevant for severe/very-severe patients, for whom specialist access and honest non-referral guidance both matter most.
] <rec:refractory-referral-criteria>

#limitation(title: [The Refractory Framework Is Rational, Not Validated])[

The escalation ladder, refractory definition, and referral criteria are clinical-structuring consolidations of the document's existing evidence-based components. None has been validated as an integrated protocol in a prospective ME/CFS study. The thresholds (e.g., "two mechanism classes", "8--12 week trials") are proposed defaults for consistency, not evidence-based cut-offs; clinicians should adjust them to the individual trajectory. The framework's value is organisational: it gives clinicians and patients a shared vocabulary for the refractory patient and prevents the two common errors of premature abandonment and futile polypharmacy.

*Consequence:* For the clinician, this framework turns scattered stopping rules and referral fragments into a single decision structure for the hardest patients. For the patient who has failed everything, it provides honest, evidence-grounded guidance on when further trials are futile and when higher-level care is appropriate — without overstating what specialist care can achieve.
] <lim:refractory-framework-unvalidated>
