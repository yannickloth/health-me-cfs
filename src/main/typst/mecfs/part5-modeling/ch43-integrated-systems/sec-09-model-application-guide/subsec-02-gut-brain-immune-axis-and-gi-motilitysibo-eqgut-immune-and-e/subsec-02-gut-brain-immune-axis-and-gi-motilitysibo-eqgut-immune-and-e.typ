#import "../../../../shared/environments.typ": *

=== Gut--Brain--Immune Axis and GI Motility/SIBO (@eq:gut-immune and @eq:sibo-butyrate)

*Measurements required.*
(1) Lactulose/mannitol breath test or SIBO-specific breath test (glucose or lactulose) (why: validates SIBO presence and $B_upright("SI")$ level).
(2) Fecal calprotectin (why: intestinal inflammation marker).
(3) Fecal short-chain fatty acid profile, especially butyrate (why: constrains $[upright("butyrate")]$).
(4) Gastric emptying scintigraphy (why: directly measures motility index $cal(G)$).
(5) Plasma LPS or LPS-binding protein (why: validates gut permeability and LPS translocation).
(6) Serum zonulin (why: marker of tight junction integrity, inversely related to butyrate-mediated barrier protection).

*Worked example.*
A patient with vagal tone $V = 40%$ of healthy and moderate mast cell activation ($upright("MC")_d = 0.3$). Motility set point from @eq:motility-setpoint: $cal(G)_upright("set") = (0.4^2 \/ (0.5^2 + 0.4^2)) times (1.0 \/ (1.0 + 0.3)) = 0.39 times 0.77 = 0.30$ (vs. 0.80 healthy). With $cal(G) = 0.30$, SIBO carrying capacity from @eq:sibo-carrying-capacity: $K_B = K_(B,upright("min")) + (K_(B,upright("max")) - K_(B,upright("min"))) times 0.70 = 1 + 99 times 0.70 = 70.3 times B_(upright("SI,0"))$---the small intestine can sustain 70$times$ normal bacterial load. MMC clearance: $delta_upright("MMC") times 0.30^2 = 0.09 times delta_upright("MMC")$ (91% reduced). Combined: SIBO is virtually inevitable. Adding prucalopride ($cal(G)_upright("pro") = 0.25$): effective $cal(G) = 0.55$, reducing $K_B$ to 46$times$ normal and increasing clearance to $0.30 times delta_upright("MMC")$---a 3-fold improvement that may be sufficient to prevent SIBO recurrence after antibiotic eradication.

*Inter-model dependencies.*
_Inputs_: vagal tone from ANS model; mast cell state from immune model; bacterial load affects butyrate production. _Outputs_: LPS translocation drives immune activation (cytokine network); malabsorption ($eta$) reduces energy substrate availability; butyrate depletion increases gut permeability. Four cross-system feedback loops are formalized in @sec:gi-motility-model.

*Scope and rationale.*
The gut model tracks motility, SIBO load, and absorption efficiency but omits microbiome composition (hundreds of species), bile acid metabolism, and enteric nervous system detail. This captures the key ME/CFS-relevant dynamics (autonomic $->$ dysmotility $->$ SIBO $->$ immune activation $+$ malabsorption) at a level parameterizable from clinical tests.

*Falsification criteria.*
The model predicts that (1) SIBO prevalence correlates with vagal impairment (measurable via HRV) and mast cell activation markers; (2) prokinetic-maintained motility prevents SIBO recurrence after antibiotic eradication. *Falsified if*: SIBO recurrence rate is independent of motility index (i.e., patients with restored motility relapse at the same rate as those without), or if SIBO eradication does not reduce systemic inflammatory markers.

*Clinical implications.*
*Whom to treat*: ME/CFS patients with GI symptoms, positive SIBO breath test, or low fecal butyrate. *How*: the model predicts a specific treatment sequence: (1) eradicate SIBO with rifaximin; (2) maintain motility with prokinetic (prucalopride or low-dose erythromycin) to prevent recurrence; (3) treat underlying mast cell activation (stabilizers) and restore vagal tone (vagal nerve stimulation) for durable benefit. The model predicts that rifaximin alone without prokinetic maintenance has $>$70% relapse rate within 6 months (because the motility deficit persists and $K_B$ remains elevated).

