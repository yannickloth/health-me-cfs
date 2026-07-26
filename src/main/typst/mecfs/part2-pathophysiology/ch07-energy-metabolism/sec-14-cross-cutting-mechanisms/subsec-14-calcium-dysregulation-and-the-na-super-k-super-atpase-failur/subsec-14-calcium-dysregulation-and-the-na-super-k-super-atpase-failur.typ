#import "../../../../shared/environments.typ": *

=== Calcium Dysregulation and the Na#super[+]/K#super[+]-ATPase Failure Cascade
<sec:calcium-dysregulation>

Mitochondria buffer cytosolic calcium and use it for signaling:

    - *Calcium overload*: Excessive mitochondrial calcium triggers permeability transition
    - *ER-mitochondria crosstalk*: Abnormal calcium transfer between organelles
    - *Apoptosis signaling*: Calcium overload can trigger cell death pathways
    - *Enzyme regulation*: Many mitochondrial enzymes are calcium-sensitive

==== The Na#super[+]/K#super[+]-ATPase Failure Cascade

The sodium-potassium pump (Na#super[+]/K#super[+]-ATPase) normally maintains a steep electrochemical gradient: 3~Na#super[+] exported for every 2~K#super[+] imported per cycle. This gradient is essential for nerve signaling, glucose transport, cell volume regulation, and muscle contraction. In ME/CFS, multiple mechanisms converge to slow this pump:

    + *Hypoperfusion*: Reduced oxygen and substrate delivery impairs the ATP supply the pump requires (each cycle consumes one ATP molecule).
    + *Frequent anaerobic threshold crossing*: Anaerobic metabolism produces lactate, lowering intracellular pH and activating the sodium-hydrogen exchanger (NHE1), which imports Na#super[+] to extrude H#super[+]; the already-impaired pump cannot clear this excess Na#super[+].
    + *$beta_2$-adrenergic receptor dysfunction*: These receptors directly activate Na#super[+]/K#super[+]-ATPase during physical activity; their desensitization and autoantibody blocking (see Section @sec:blood-volume of Chapter @ch:cardiovascular) removes this activation signal.

When intracellular Na#super[+] rises sufficiently, the sodium-calcium exchanger (NCX) enters "reverse mode": instead of exporting Ca#super[2+] (its normal function), it imports Ca#super[2+] in exchange for Na#super[+] efflux. The result is excessive intracellular calcium accumulation---a cytotoxic state.

#clinical-finding(title: [Elevated Intracellular Sodium in ME/CFS Skeletal Muscle])[
Wirth and Scheibenbogen (2022) used MRI-based sodium imaging to measure intracellular sodium in the gastrocnemius muscle of ME/CFS patients after a calf-raise protocol (30 per minute for 3~minutes). ME/CFS patients showed a 30% intracellular sodium rise versus 17% in controls, measured 12~minutes post-exercise (likely underestimating the peak difference during exertion) . ME/CFS patients also had elevated muscle sodium at baseline, and higher resting sodium correlated with lower handgrip strength---suggesting pump dysfunction as a primary driver of weakness.
] <obs:muscle-sodium>

#fhypothesis(title: [Calcium Toxicity as the Primary Mechanism of Post-Exertional Malaise], falsifiability: [weakly], justification: [Falsified if (a) intracellular calcium levels in ME/CFS muscle fibres are normal during PEM, or (b) calcium channel blockers or NCX inhibitors fail to reduce PEM severity, or (c) an alternative mechanism for exercise-induced muscle necrosis in ME/CFS is identified])[
The calcium toxicity cascade---Na#super[+]/K#super[+]-ATPase failure $arrow.r$ NCX reversal $arrow.r$ Ca#super[2+] overload---may be the primary cellular mechanism of post-exertional malaise. Excessive intracellular calcium causes muscle pain, direct mitochondrial damage, reduced ATP production, and in severe cases drives mitochondria to _consume_ rather than produce ATP in a futile attempt to buffer the calcium load @Walkon2022calcium. At extreme levels, calcium toxicity causes necrotic muscle fibre death.

Appelman et al. (2024) provided direct histological evidence: light microscopy of Long~COVID patient muscle biopsies revealed an unusually high number of necrotic (dead) muscle fibres during PEM @Appelman2024muscle. Wirth and Scheibenbogen (2024) argue that calcium toxicity is the only mechanism in their systematic analysis that can account for exercise-induced muscle fibre necrosis , though independent systematic reviews of this claim have not yet been published.

Wirth and Scheibenbogen propose positioning ME/CFS as an "acquired ischemic mitochondrial myopathy" --- a classification that, if validated, would imply dysfunction in mitochondria occurring simultaneously with reduced blood perfusion (ischemia). PEM severity and duration depend on the extent of calcium overload and the body's capacity to restore ionic homeostasis---a process severely hampered by the same hypoperfusion that caused the overload.

*Testable predictions:*

    / *(a)*: Intracellular calcium levels (measured by #super[31]P-MRS or calcium-sensitive fluorescent probes in biopsy) are elevated in ME/CFS muscle during PEM compared to baseline.
    / *(b)*: The degree of post-exercise sodium accumulation (Wirth-Scheibenbogen sodium MRI protocol) predicts PEM severity and duration in a dose-response relationship.
    / *(c)*: Pharmacological Na#super[+]/K#super[+]-ATPase stimulation (e.g., MDC002/Mitodicure) reduces or eliminates PEM by preventing the sodium-calcium cascade from reaching the toxicity threshold.

*Treatment implication:* If calcium toxicity is the proximate PEM mechanism, then MDC002---which restores Na#super[+]/K#super[+]-ATPase function---would address the immediate trigger. Upstream interventions improving muscular blood flow (see bradykinin model, Section @sec:blood-volume of Chapter @ch:cardiovascular) would reduce the pump's metabolic burden. Taurine may provide supplementary support at two nodes of this cascade: maintaining Na#super[+]/K#super[+]-ATPase activity and buffering downstream calcium overload (see Section @sec:taurine in Chapter @ch:supplements  ); however, no ME/CFS supplementation trial has tested this hypothesis.
*Certainty: 0.50*---strong mechanistic logic supported by the sodium MRI data and muscle necrosis finding, but direct calcium measurements in ME/CFS muscle during PEM have not yet been performed.

*Mechanistic scope limitation:* The assertion that AIMM is DOWNSTREAM of other mechanisms rather than trigger-capable itself is a hypothesis, not a demonstrated fact. The calcium toxicity cascade (hypoperfusion $arrow.r$ Na#super[+]/K#super[+]-ATPase failure $arrow.r$ NCX reversal $arrow.r$ Ca#super[2+] overload) could be initiated directly by mitochondrial damage (viral, genetic, environmental) without requiring the four upstream mechanisms classified as trigger-capable in our causal hierarchy. The vascular primacy argument presents correlations as evidence of directionality but does not rule out reverse causality (mitochondrial dysfunction causing vascular pathology through energy-dependent endothelial cell dysfunction). MDC002 addresses the proximate PEM trigger but does not correct the upstream cause that initiated the disease state. Consequently, MDC002 monotherapy is expected to produce *partial or temporary benefit* in many patients, and *no benefit* in patients whose ME/CFS is driven primarily by non-AIMM mechanisms (e.g., CNS energy crisis, metabolic safe mode lock, TRPM3 channelopathy without secondary AIMM). The most clinically realistic expectation, consistent with Wirth's own position that "severely ill patients will need multiple medications," is that MDC002 will work best as part of combination therapy: downstream ion homeostasis restoration (MDC002) plus upstream mechanism-targeted interventions (autoantibody removal, beta-2 AR resensitization, blood volume restoration). However, this combination requirement is itself speculative and has not been empirically tested. Expected responder phenotype: sodium MRI-confirmed overload, exercise-triggered PEM with delayed onset, muscle-ischemic symptoms dominant over CNS symptoms. Population-level response rate: unknown — no clinical trial data for MDC 002 in ME/CFS exists as of 2026 @Rucker2026WirthScheibenbogen.
] <hyp:calcium-pem>

#speculation(title: [Taurine Status as a Determinant of AIMM Severity Heterogeneity])[
*Certainty: 0.30.* No study has simultaneously measured intracellular taurine and sodium accumulation in ME/CFS patients. Rationale is mechanistic extrapolation.

The AIMM cascade describes a deterministic sequence, but patients with similar degrees of hypoperfusion show substantially different PEM severity. The existing model contains no variable to explain this heterogeneity. Many factors could contribute (fitness level, mitochondrial reserve, autoantibody burden, autonomic tone, sleep quality, genetic variation in ion channel isoforms). Intracellular taurine status is one candidate variable: taurine acts as a two-node ionic buffer at the Na#super[+]/K#super[+]-ATPase support point (upstream ) and at calcium buffering (downstream ), effectively raising the sodium threshold at which NCX reversal occurs and the calcium threshold at which mitochondrial damage begins. Patients with higher intracellular taurine would have a larger ionic safety margin before PEM cascade onset.

*Falsifiable prediction:* Intracellular taurine concentration (muscle biopsy or RBC lysate proxy) inversely correlates with post-exercise sodium accumulation measured by the Petter et al.\ sodium MRI protocol  in ME/CFS patients. A direct trial: taurine supplementation (2 g/day, 8 weeks) reduces the magnitude of intracellular sodium rise in patients with documented sodium overload.

See Section @sec:taurine in Chapter @ch:supplements for supplement protocol.
] <spec:taurine-aimm-heterogeneity>

#open-question(title: [Endogenous Ouabain Depletion: A Missing Regulatory Signal for Na#super[+]/K#super[+]-ATPase?])[
Cardiac glycosides (digoxin, ouabain) inhibit Na#super[+]/K#super[+]-ATPase at pharmacological concentrations. However, endogenous ouabain --- a steroid hormone produced by the adrenal cortex at picomolar-nanomolar concentrations --- _activates_ Na#super[+]/K#super[+]-ATPase through a distinct signaling pathway (Src kinase phosphorylation of the alpha subunit) rather than inhibiting transport. Endogenous ouabain thereby fine-tunes pump activity under physiological conditions.

*Research question:* If ME/CFS involves impaired Na#super[+]/K#super[+]-ATPase function (the AIMM hypothesis, Section @sec:sodium-calcium-cascade), one underexplored question is whether endogenous ouabain levels are depleted in ME/CFS patients. Reduced adrenal output of this regulatory hormone could remove an activating signal from the pump, contributing to the pump failure even before the downstream ionic cascade.

*Proposed measurement:* Serum endogenous ouabain is measurable by radioimmunoassay. A case-control study comparing ME/CFS patients to healthy controls and patients with other fatigue conditions would be low-cost and potentially informative.

_Important distinction from therapeutic use:_ This is a basic science question about endogenous signaling, not a rationale for cardiac glycoside therapy. Pharmacological cardiac glycosides at therapeutic doses inhibit rather than activate the pump, and have a narrow toxic window. Therapeutic cardiac glycoside use in ME/CFS would have a highly unfavorable risk-benefit ratio and is not under consideration.
] <oq:ch06-endogenous-ouabain>

