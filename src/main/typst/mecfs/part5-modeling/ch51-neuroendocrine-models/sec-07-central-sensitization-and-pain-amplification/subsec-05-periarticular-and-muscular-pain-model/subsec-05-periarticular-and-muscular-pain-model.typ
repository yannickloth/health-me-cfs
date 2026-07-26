#import "../../../../shared/environments.typ": *

=== Periarticular and Muscular Pain Model
<subsec:periarticular-muscle-pain-model>

Joint and muscle pain in ME/CFS arise from tissue-specific nociceptive generators that are then amplified by the central sensitization model (see @subsec:ch15-joint-muscle-pain for biological mechanisms). The model introduces two tissue-compartment nociceptive sources that feed into the total nociceptive input.

==== Periarticular Nociceptive Input

Periarticular pain is driven primarily by local mast cell degranulation in the joint capsule and synovium, where mast cell density is 10--50$times$ higher than in subcutaneous tissue:

$
P_(upright("peri"))(t) = rho_(upright("mc,joint")) dot.op H_(upright("mc"))(t) dot.op (1 + alpha_(upright("NGF")) dot.op [upright("NGF")])
$ <eq:periarticular-noci>

where $rho_(upright("mc,joint"))$ is the joint-to-systemic mast cell density ratio (reflecting the anatomical concentration), $H_(upright("mc"))(t)$ is the systemic mast cell activation level, and the NGF term represents nerve growth factor-mediated upregulation of TRPV1 on periarticular nociceptors. In hEDS patients, an additional mechanical term applies:

$
P_(upright("peri,hEDS")) = P_(upright("peri")) + k_(upright("lax")) dot.op (1 - upright("stability") / upright("stability")_0) dot.op dot(q)
$ <eq:periarticular-heds>

where $dot(q)$ represents joint movement rate and the stability ratio captures hypermobility-related microtrauma at fascial attachment sites (coupling to the hEDS model in Chapter @ch:integrated-systems, @sec:eds-coupling).

==== Muscular Metabolic Nociception

Deep muscle pain arises from metabolic nociceptor activation driven by the interaction of low pH, elevated lactate, and extracellular ATP---the "metabolic danger triad" sensed by ASIC3 channels:

$
P_(upright("musc"))(t) = k_(upright("ASIC")) dot.op underbrace([upright("H")^+]_m dot.op [upright("Lac")]_m dot.op [upright("ATP")]_(upright("ext,") m), upright("ASIC3 combinatorial activation")) dot.op (1 + alpha_(upright("isch")) dot.op (1 - frac(dot(V) O_(2,upright("musc")), dot(V) O_(2,upright("musc"))^0))^+)
$ <eq:muscle-noci>

where $[upright("H")^+]_m$, $[upright("Lac")]_m$, and $[upright("ATP")]_(upright("ext,") m)$ are intramuscular proton, lactate, and extracellular ATP concentrations (from the energy metabolism model, Chapter @ch:energy-metabolism-models), $k_(upright("ASIC"))$ is the ASIC3 activation coefficient, and the ischemia term represents microvascular dysfunction reducing muscle oxygen delivery $dot(V) O_(2,upright("musc"))$ below baseline $dot(V) O_(2,upright("musc"))^0$. The multiplicative ASIC3 activation term captures the experimentally established combinatorial gating: ASIC3 responds to the simultaneous presence of all three signals, not their individual levels.

Post-exertional upregulation of ASIC3 gene expression (persisting 48 h) is modeled as a slow modulation:

$
frac(d k_(upright("ASIC")), d t) = k_(upright("up")) dot.op E(t) - k_(upright("down")) dot.op (k_(upright("ASIC")) - k_(upright("ASIC"))^0)
$ <eq:asic3-upregulation>

where $E(t)$ is exertion intensity, $k_(upright("up"))$ is the upregulation rate, and $k_(upright("down"))$ governs return to baseline $k_(upright("ASIC"))^0$. In ME/CFS, $k_(upright("down"))$ is reduced (slower return to baseline), consistent with the 48 h persistence observed in gene expression studies.

==== Total Nociceptive Input with Tissue Compartments

The complete nociceptive input to the central sensitization model becomes:

$
P_(upright("noci,total"))(t) = underbrace(P_0 dot.op (1 + beta_(upright("SFN")) dot.op (1 - frac(cal(F), cal(F)_0))^+), upright("SFN (distal)")) + underbrace(gamma_(upright("sheath")) dot.op cal(N)_s, upright("nerve sheath")) + underbrace(P_(upright("peri"))(t), upright("periarticular")) + underbrace(P_(upright("musc"))(t), upright("muscular"))
$ <eq:total-noci-compartments>

This four-compartment nociceptive model replaces the simpler $P_(upright("noci"))$ in Equation @eq:central-sensitization. Each compartment has distinct temporal dynamics and therapeutic targets:

- *SFN compartment:* Slow (months--years); modifiable by neuroprotection (alpha-lipoic acid, IVIG for autoimmune SFN).
- *Nerve sheath compartment:* Intermediate (hours--days); modifiable by mast cell stabilization, antioxidants, and postural management.
- *Periarticular compartment:* Fast--intermediate (minutes--hours); modifiable by mast cell stabilizers and anti-NGF approaches. In hEDS: joint stabilization reduces mechanical input.
- *Muscular compartment:* Fast during exertion, slow post-exertional decay (48 h); modifiable primarily by pacing (reducing $E(t)$) and metabolic support (CoQ10, NADH to improve $dot(V) O_(2,upright("musc"))$).

*The multi-compartment model generates a clinically actionable prediction*: patient-specific pain phenotyping (by temporal dynamics, anatomical distribution, and biomarker correlation) should identify which compartments dominate, enabling targeted treatment. A patient whose pain fluctuates with posture and mast cell episodes (nerve sheath + periarticular dominant) requires a different strategy than a patient whose pain tracks exertion with 48 h decay (muscular dominant) or a patient with slowly progressive burning pain (SFN dominant). The central sensitization state $cal(S)$ acts as a gain multiplier on all compartments---reducing $cal(S)$ (via LDN, NMDA antagonists) benefits all pain phenotypes, while compartment-specific interventions provide targeted improvement.

#include "open-questions/compartment-dominance-shifts-with-disease-progression.typ"

