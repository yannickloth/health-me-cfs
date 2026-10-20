#import "../../../../shared/environments.typ": *

=== Objective Functional Monitoring with Handgrip Dynamometry

Pacing depends on knowing where the energy envelope currently sits. Self-report is the usual source; it can lag the envelope, particularly after a crash or during a good week when capacity is temporarily larger, so an objective anchor is complementary rather than substitutive. A cheap objective measure that tracks functional capacity without a laboratory visit would close part of that gap.

Two-session handgrip strength (HGS) testing is a candidate. The protocol used in the published cohorts is short and portable: ten maximal grips with the dominant hand (3 s contraction, 5 s rest), a 60-minute rest, then the same ten grips again. Four indices are derived — maximal force (Fmax), mean force (Fmean), within-session fatigue ratio (Fmax/Fmean), and 60-minute recovery ratio (Fmean session 2 / session 1). Adults with ME/CFS show lower Fmax and Fmean, a higher fatigue ratio, and a lower recovery ratio than controls @Jakel2021HGS; children and young adults show the same direction of effect @Mihatsch2026HandgripCYP; patients with post-COVID syndrome and ME/CFS show lower mean force, greater fatigability and poorer recovery than post-COVID patients without ME/CFS @Wallraven2026HandgripPCS.

#clinical-finding(title: [Two-Session Handgrip Testing as a Low-Burden Functional Monitor])[
The test is feasible in a clinical setting and low-burden in ambulatory patients. In the pediatric/young-adult cohort, session 1 was completed by 146/147 patients (99.3%) and session 2 by 142/147 (96.6%) @Mihatsch2026HandgripCYP. In adults with ME/CFS, all three HGS indices differed from healthy controls @Jakel2021HGS. In post-COVID patients, HGS indices correlated with symptom severity (PCS severity score r = −0.31, 95% CI −0.48 to −0.12) and with fatigue severity (FSS r = −0.36, 95% CI −0.52 to −0.17) @Wallraven2026HandgripPCS.

What it can be used for:
    - Establishing a within-person baseline of maximal force and recovery at a stable point in the illness.
    - Tracking change across months, or before and after a paced activity programme, using the patient as their own control.
    - Supporting documentation of functional impairment in clinical letters, as one input among several. It cannot substitute for a PEM history, and a normal result must never be used to contest a PEM-based disability or accommodation claim.

What it cannot be used for:
    - Ruling ME/CFS in or out. Discrimination against other fatiguing conditions is moderate at best (see @lim:handgrip-diagnostic-discrimination).
    - Inferring effort, sincerity, or symptom validity from test variability (see @pwarn-handgrip-effort-judgment).
    - Concluding that exertional intolerance is absent because grip force is normal. Maximal force and PEM are different constructs, and in the pediatric cohort grip indices did not correlate with PEM duration @Mihatsch2026HandgripCYP.
    - Guiding a treatment decision. No trial has used HGS as a treatment-response endpoint in ME/CFS.

*Practical caveats:* within-patient reliability, minimal detectable change, and practice effects are unstudied in ME/CFS, so longitudinal interpretation is provisional; test at a fixed time of day because diurnal variation will otherwise masquerade as change. *Evidence type:* prospective observational cohorts. *Replication status:* partially replicated across three cohorts. *Severity applicability:* mild and moderate ambulatory patients. Severe and very severe: unknown — untested, and repeated maximal effort may be inappropriate. *Time to result:* same visit plus a 60-minute wait.

*Certainty: 0.55.* (Consistent direction and moderate-to-large effect in three cohorts; the *monitoring* use is an inference from cross-sectional group differences — no study yet shows that within-patient HGS change tracks PEM episodes prospectively.)

*Consequence:* A clinician can put a number on functional capacity in one visit, which helps with documentation and with pacing conversations — but a single reading does not tell the patient anything about tomorrow, because the prospective relationship between HGS change and PEM has not been tested.
] <cf:handgrip-functional-monitor>

#include "../../warnings/warn-handgrip-effort-judgment.typ"
#include "../../open-questions/oq:handgrip-prospective-pem-tracking.typ"
#include "../../open-questions/oq:handgrip-severe-submax-protocol.typ"
