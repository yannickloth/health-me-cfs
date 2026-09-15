#import "../../../../shared/environments.typ": *

=== Central Sensitization (Equations @eq:central-sensitization and @eq:sfn-dynamics)

*Measurements required.*
(1) Quantitative sensory testing (QST): pressure pain threshold, temporal summation, conditioned pain modulation (why: temporal summation directly measures wind-up/$k_(upright("wind"))$; conditioned pain modulation measures descending inhibition/$k_(upright("resolve"))$).
(2) Skin biopsy with intraepidermal nerve fiber density (IENFD) count (why: directly measures $cal(F)$, small fiber density).
(3) $beta$-endorphin levels (why: constrains endogenous opioid modulation of $k_(upright("resolve"))$).

*Worked example.*
A patient with moderate central sensitization ($cal(S) = 0.6$ on a 0--1 scale) and mild small fiber neuropathy ($cal(F)/cal(F)_0 = 0.7$, 30% fiber loss). Pain amplification factor: $(1 + alpha_(upright("sens")) times 0.6) = 1.9$ (using $alpha_(upright("sens")) = 1.5$). Nociceptive input increased by fiber loss: $P_(upright("noci")) = P_0 times (1 + 1.5 times 0.3) = 1.45 P_0$. Combined pain score: $1.9 times 1.45 = 2.76 times$ the pain expected from the inflammatory input alone. The bidirectional feedback predicts that reducing $cal(S)$ by 50% (e.g., via LDN) reduces pain to $1.45 times 1.45 = 2.10 times$---a 24% improvement---and secondarily improves sleep by 10--15% and reduces sympathetic tone by 8--12% through the pain $->$ ANS $->$ sleep pathway.

*Inter-model dependencies.*
_Inputs_: pro-inflammatory cytokines and microglial activation (drive spinal glial activation $mu_(1,upright("spinal"))$); ROS and autoantibodies (drive small fiber degeneration); endorphins (modulate resolution rate). _Outputs_: pain feeds back to sympathetic tone (ANS model), sleep disruption (sleep model), and cognitive energy demand.

*Scope and rationale.*
The base model tracks an aggregate sensitization state $cal(S)$ rather than specific dorsal horn circuits. The multi-compartment extension (Equations @eq:nerve-sheath-inflammation and @eq:total-noci-compartments) decomposes $P_(upright("noci"))$ into four tissue-specific generators---SFN, nerve sheath, periarticular, and muscular---enabling prediction of pain distribution and temporal profile, which the aggregate model alone cannot.

*Falsification criteria.*
The model predicts that pain reduction (lowering $cal(S)$) should improve autonomic function and sleep quality through the feedback pathway, independent of direct sleep or autonomic interventions. *Falsified if*: effective analgesic treatment in ME/CFS patients (confirmed by QST normalization) does not improve HRV or sleep efficiency---would indicate that the pain $->$ ANS $->$ sleep coupling is weaker than modeled. The multi-compartment extension predicts that peripheral nerve blocks should transiently reduce pain in targeted regions even in centrally sensitized patients. *Falsified if*: diagnostic nerve blocks show no analgesic effect in patients with high $cal(N)_s$ or $P_(upright("peri"))$---would indicate that peripheral generators contribute less than modeled.

*Clinical implications.*
*Whom to treat*: patients with elevated temporal summation on QST (indicating high $k_(upright("wind"))$) or reduced IENFD ($cal(F)/cal(F)_0 < 0.8$). *How*: (1) LDN operates through both immune modulation and endorphin upregulation---the model predicts analgesic onset (days) precedes anti-inflammatory onset (weeks); (2) for structurally maintained sensitization (high $cal(S)$ with low $k_(upright("resolve"))/k_(upright("wind"))$): neuromodulatory approaches (low-dose ketamine as NMDAR antagonist, transcranial stimulation); (3) the model predicts that treating the upstream inflammatory drive (reducing $mu_(1,upright("spinal"))$ and $P_(upright("noci"))$) is more effective than treating sensitization directly, because it addresses both the input and the feedback amplification simultaneously.

