#import "../../../../shared/environments.typ": *

=== Small Fiber Neuropathy Coupling

Small fiber neuropathy (SFN)---documented in a subset of ME/CFS patients---reduces peripheral nerve fiber density, paradoxically both reducing normal sensory input and increasing aberrant nociceptive signaling. The model represents SFN as a slow variable modifying the nociceptive input function:

$
frac(d cal(F), d t) = -k_(upright("degen")) dot.op ([upright("ROS")] + alpha_(upright("auto")) dot.op [upright("Ab")]) + k_(upright("regen")) dot.op frac([upright("NGF")] dot.op [upright("ATP")], (K_(upright("NGF")) + [upright("NGF")])(K_(upright("ATP,regen")) + [upright("ATP")]))
$ <eq:sfn-dynamics>

where $cal(F)$ is small fiber density (normalizing between 0 and 1), $k_(upright("degen"))$ is the degeneration rate (driven by oxidative stress and autoantibodies), $k_(upright("regen"))$ is the regeneration rate (dependent on nerve growth factor and ATP availability), and the nociceptive input increases as fiber density decreases below a threshold: $P_(upright("noci")) = P_0 dot.op (1 + beta_(upright("SFN")) dot.op (1 - cal(F)/cal(F)_0)^+)$, where $( dot.op )^+$ denotes the positive part. *The model predicts that SFN is both a consequence and an amplifier of ME/CFS*: ROS and autoantibodies (from the disease) cause fiber loss, and fiber loss increases pain signaling, which increases sympathetic tone and energy demand, worsening the underlying disease. This feedback loop explains why SFN prevalence increases with ME/CFS disease duration.

#prediction(title: [Corneal Nerve Fiber Density Supplies a Non-Invasive Observable for the SFN State Variable])[
*(Origin: brainstorm.)* *(Certainty: 0.35.)* The state variable $cal(F)$ in Equation @eq:sfn-dynamics is abstract — it has never been anchored to a repeatable measurement in ME/CFS, forcing the model to rely on infrequent skin-punch biopsy for intraepidermal nerve fiber density. Corneal confocal microscopy provides a non-invasive, radiation-free, repeatable measurement of corneal nerve fiber density (CNFD), already shown to be reduced (and nerve tortuosity increased) in ME/CFS @Azcue2025sfn and in post-COVID cohorts with ocular symptoms @moustardas2026ocular @Cañadas2023CornealConfocal. Treating normalised CNFD as a direct observable of $cal(F)$ makes the SFN ODE empirically identifiable from serial eye scans rather than serial biopsies.

*Falsifiable prediction:* In a longitudinal ME/CFS cohort, serial CNFD (corneal confocal) will track the model trajectory of $cal(F)$: declining during symptom worsening (high ROS/autoantibody terms) and recovering during remission (adequate NGF/ATP terms), with CNFD change rate proportional to $d cal(F) \/ d t$. A joint fit of the ODE to paired corneal-confocal and skin-biopsy IENFD data will yield consistent $k_(upright("degen"))$ and $k_(upright("regen"))$ estimates across both tissues (within a fixed scaling constant). Falsified if corneal and skin fiber-density trajectories diverge systematically, or if CNFD is static despite documented clinical fluctuation in SFN symptoms.

*Consequence:* If confirmed, an eye scan taken repeatedly at low cost and zero risk could substitute for repeated skin biopsies as the way to track nerve damage and recovery over time — turning an abstract model term into something a clinical trial can actually measure.
] <pred:cnfd-sfn-observable>

#include "open-questions/reversibility-of-central-sensitization-in-mecfs.typ"

