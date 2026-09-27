#import "../../../../shared/environments.typ": *

=== Myalgia (Muscle Pain)
<subsec:myalgia>

*Clinical Presentation.*

    - Widespread muscle aching and soreness
    - Deep muscle pain, often described as "flu-like"
    - Pain worsening with activity or pressure
    - Muscle tenderness to palpation
    - Delayed-onset muscle soreness after minimal exertion
    - Persistent muscle tension

*Mechanism.*
Myalgia in ME/CFS is best understood as an *exertional* muscle pain that is mechanistically distinct from ordinary delayed-onset muscle soreness (DOMS). In healthy people DOMS is driven by mechanical micro-damage from unaccustomed (often eccentric) exercise and a local inflammatory repair cascade that peaks at 24--72 hours and resolves within a week @Hotfiel2018DOMSpathogenesis @Cheung2003DOMStreatment. It is *not* caused by lactic acid: lactate clears within roughly an hour of exercise and does not track the delayed soreness curve @Miles1994musclePain. In ME/CFS the candidate drivers differ — intramuscular acidosis (protons, H⁺), impaired muscle perfusion/ischemia, and sensitization of muscle nociceptors — consistent with the microvascular and metabolic-perturbation findings in ME/CFS muscle, with central sensitization able to amplify the signal @Goldenberg2025centralSensitization.

#limitation(title: [Soreness Is Not Caused by Lactic Acid])[
A persistent misconception — present in many patient-facing and even clinical accounts — is that muscle soreness is caused by "lactic acid." This is false for healthy DOMS and, on current evidence, for ME/CFS exertional soreness. Lactate is cleared within roughly an hour of exertion and does not match the 24--72-hour soreness time-course @Miles1994musclePain; DOMS arises from mechanical microtrauma and inflammation @Hotfiel2018DOMSpathogenesis @Cheung2003DOMStreatment. Lactate is also a signaling and fuel molecule, not inert waste (see the lactate-signaling subsection in @sec:carbohydrate). The practical consequence: strategies that aim to "flush lactic acid" do not address the mechanism of soreness. The acidic proton (H⁺) that accompanies intense glycolysis is a separate and plausible nociceptor stimulus — but that is not the same as lactate.

*Severity applicability:* unknown — the sources are not ME/CFS-stratified.

*Consequence:* It removes a false target ("clearing lactic acid") and redirects attention to the exertional threshold, muscle perfusion, acidosis (H⁺), and nociceptor sensitization.
]
<lim:soreness-not-lactic-acid>

#speculation(title: [ME/CFS Exertional Soreness Is Distinct From Ordinary DOMS])[
*Certainty: 0.40.* Ordinary DOMS requires mechanical micro-damage and adapts — the repeated-bout effect means the same exercise produces less soreness next time @Clarkson2002DOMS. ME/CFS exertional soreness occurs after minimal or even non-eccentric exertion and does not adapt; it may worsen with repetition. Candidate mechanisms that fit this pattern include intramuscular acidosis activating acid-sensing nociceptors (ASIC3/TRPV1) @Chen2014ASIC3musclePain @Ugawa2002ASICnociceptor, muscle microvascular ischemia/hypoperfusion, and central sensitization @Goldenberg2025centralSensitization. This connects to the arteriolar-vasoconstriction/ischemia cascade (@sec:trpv1-cascade).

*Evidence type / translation gap:* the acid-sensing and microtrauma evidence is animal/in-vitro or healthy-human; no ME/CFS cohort has been measured head-to-head against healthy DOMS.

*Replication status:* not tested in ME/CFS.

*Severity applicability:* unknown — not stratified by severity.

*Competing explanation:* the same soreness could reflect deconditioning-driven muscle strain, or a purely central pain-amplification process without a peripheral muscle driver; both remain viable.

*Limitations:* indirect assembly from separate model systems; no direct ME/CFS mechanism study.

*Falsifiable prediction:* ME/CFS patients will show an exertional-soreness time-course and exercise response dissociated from mechanical micro-damage markers (creatine kinase, myoglobin) but aligned with an acidosis/nociceptor or perfusion marker, and will lack the repeated-bout adaptation; falsified if ME/CFS soreness tracks micro-damage markers and shows normal adaptation.

*Consequence:* It tells clinicians and patients to stop treating exertional soreness as "damage to repair" and to look at the exertional threshold, perfusion, and nociceptor mechanisms instead.
]
<spec:soreness-distinct-from-doms>

#speculation(title: [Management of Exertional Muscle Soreness: What the DOMS Evidence Suggests])[
*Certainty: 0.35.* No intervention has been tested for ME/CFS exertional soreness specifically; the following is extrapolated from healthy-DOMS evidence and must be applied *within* pacing. Gentle movement ("active recovery"), massage, and heat (or cold) reduce DOMS symptoms modestly in healthy people @Cheung2003DOMStreatment @Davis2020massageMeta @Wang2021heatColdDOMS; compression and some supplements show small or inconsistent benefit @Hill2017compression @Tanabe2021supplementsDOMS @Reno2022magnesiumDOMS. An umbrella review finds the DOMS-intervention literature low-certainty and conflicting, with small effect sizes @Wiecha2025DOMSumbrella. In ME/CFS the overriding caveat is that the movement or heat that helps DOMS can itself cross the PEM threshold and worsen symptoms, so these are low-dose, pacing-gated options — not prescriptions. NSAIDs relieve soreness symptomatically in healthy DOMS but do not accelerate healing; in ME/CFS they are frequently reported ineffective, so symptomatic relief is not the rationale to use them, and they carry relevant risks (gastrointestinal, renal, and masking of exertional limits), with no NSAID-ME/CFS safety study.

*Evidence type:* healthy-population RCTs and meta-analyses; no ME/CFS trial.

*Safety (research-stage only — not a recommendation).* Pregnancy/lactation: no safety data for these levers in ME/CFS. Drug interactions: none established for massage, heat/cold, or compression; NSAIDs interact with common ME/CFS co-prescriptions (anticoagulants, SSRIs, corticosteroids) and should be clinician-reviewed. Monitoring: no validated protocol; track symptomatology and next-day PEM. Stopping criteria: stop any lever that increases PEM or soreness. Severe/bedbound patients: movement, massage/touch, and heat may be intolerable or harmful — massage especially in allodynic patients, in whom normal touch registers as pain; do not apply without clinical guidance.

*Replication status:* healthy-population evidence is replicated; untested in ME/CFS.

*Severity applicability:* unknown.

*Competing explanation:* any apparent benefit in ME/CFS could be placebo or coincident rest; and the movement lever risks PEM.

*Limitations:* no ME/CFS data; populations differ fundamentally (DOMS is damage-driven, ME/CFS soreness is not).

*Falsifiable prediction:* in an ME/CFS trial, a pacing-gated gentle-movement or massage/heat protocol reduces exertional soreness without increasing PEM; falsified if it increases PEM or fails to beat a warm-rest control.

*Consequence:* It gives a cautious, evidence-graded list of what might help muscle soreness — with pacing as the non-negotiable frame, and "flush the lactic acid" explicitly excluded as a rationale.
]
<spec:soreness-management>

#open-question(title: [How to Prove ME/CFS Exertional Soreness Is Distinct From DOMS])[
*(Origin: brainstorm.)* No ME/CFS cohort has been compared head-to-head with matched-load healthy DOMS. The decisive study would measure the soreness time-course against micro-damage markers (creatine kinase, myoglobin) *and* an acidosis/perfusion/nociceptor readout simultaneously, and test the repeated-bout adaptation: healthy DOMS adapts (less soreness after the same effort), whereas ME/CFS is predicted not to. A marker-dissociation panel — micro-damage markers low while an acidosis/perfusion/nociceptor marker is high — would convert "soreness is distinct from DOMS" from an inference into a measurable signature, and could stratify the muscle-pain-dominant phenotype. *(Severity applicability: unknown.)*

*Falsifiable prediction:* in a matched-load ME/CFS-versus-control comparison, ME/CFS soreness dissociates from CK/myoglobin and fails to adapt on repeat, while controls show the opposite; falsified if ME/CFS soreness tracks micro-damage markers and adapts normally (the null — it is ordinary DOMS or deconditioning).

*Consequence:* It turns the central claim of this section into a test — a blood-and-function signature that could tell ME/CFS exertional soreness apart from ordinary DOMS.
]
<oq:soreness-marker-dissociation>

#synthesis(title: [Exertional Soreness in ME/CFS: Not Ordinary DOMS, Not Lactic Acid])[
The evidence in this section converges on two corrections and one open question. First, exertional muscle soreness is not caused by lactic acid — lactate clears within about an hour and does not match the soreness time-course @Miles1994musclePain; DOMS is mechanical microtrauma and inflammation @Hotfiel2018DOMSpathogenesis (@lim:soreness-not-lactic-acid). Second, ME/CFS exertional soreness is mechanistically distinct from ordinary DOMS: it follows minimal exertion and lacks the adaptive repeated-bout effect @Clarkson2002DOMS, pointing to intramuscular acidosis (H⁺), impaired muscle perfusion, and nociceptor/central sensitization rather than muscle damage @Chen2014ASIC3musclePain @Goldenberg2025centralSensitization (@spec:soreness-distinct-from-doms). Management is pacing-gated and inherited from healthy-DOMS evidence with small effects (@spec:soreness-management). The decisive test — a marker-dissociation between micro-damage and acidosis/perfusion/nociceptor readouts — has not been run (@oq:soreness-marker-dissociation). The open question is whether this distinct mechanism can be measured, and whether any pacing-compatible lever beats warm rest.

*Consequence:* It replaces the misleading "lactic acid" model with a testable one, and gives patients and clinicians a safe frame — pacing first, with evidence-graded comfort measures rather than a "flush the acid" strategy.
]
<syn:soreness-doms-distinction-model>

*See also:* the healthy DOMS model and its contrasts with PEM (@sec:doms-model); the arteriolar TRPV1/ischemia cascade (@sec:trpv1-cascade); the lactate-clearance levers and the lactate-signaling subsection (@sec:lactate-lowering, @sec:carbohydrate).
