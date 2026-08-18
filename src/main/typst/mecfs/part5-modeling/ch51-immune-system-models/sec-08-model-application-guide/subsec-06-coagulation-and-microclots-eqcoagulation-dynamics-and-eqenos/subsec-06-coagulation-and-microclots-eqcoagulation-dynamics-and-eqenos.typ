#import "../../../../shared/environments.typ": *

=== Coagulation and Microclots (@eq:coagulation-dynamics and @eq:enos-model)

*Measurements required.*
(1) D-dimer (why: marker of fibrin turnover, elevated in microclot formation).
(2) Fluorescence amyloid microscopy of platelet-poor plasma (why: directly visualizes microclots, the Pretorius method).
(3) PAI-1 levels (why: constrains fibrinolytic capacity).
(4) ADMA and BH₄:BH₂ ratio (why: constrain eNOS function and NO availability).
(5) Transcutaneous VO₂ (why: validates the microclot$->$oxygen delivery prediction at the tissue level).

*Worked example.*
The multiplicative oxygen delivery effect: a patient with 80% cardiac output (autonomic dysfunction), 85% ETC capacity ($alpha_(upright("CI")) = 0.85$), and 10% capillary occlusion ($M_c\/M_(c,upright("max")) = 0.10$). Effective VO₂ = $0.80 times 0.85 times (1 - 0.10)^(1.5) approx 0.80 times 0.85 times 0.85 = 0.58$ of healthy. A 42% VO₂ reduction from three individually modest impairments. Without the microclots (replacing 0.85 with 1.0): VO₂ = 0.68. The microclots therefore account for an additional 10 percentage points of impairment---clinically significant but easy to miss on individual tests.

*Inter-model dependencies.*
_Inputs_: pro-inflammatory cytokines drive tissue factor expression; endothelial dysfunction (from BH₄ depletion) reduces NO and promotes clotting; PAI-1 is elevated in inflammatory states. _Outputs_: effective oxygen delivery $upright("DO")_2^(upright("eff"))$ constrains maximal ETC flux in the energy model. NO levels feed back to BBB permeability and autonomic regulation.

*Scope and rationale.*
The model uses four aggregate coagulation variables rather than the full coagulation cascade ($>$30 factors). This captures the net balance between clot formation and dissolution relevant to chronic microclot pathology. The full cascade would be needed for acute coagulation events (DIC, stroke) but is unnecessary for the slow microclot accumulation hypothesized in ME/CFS.

*Falsification criteria.*
The model predicts multiplicative VO₂ impairment from coagulation $times$ cardiac $times$ mitochondrial deficits. *Falsified if*: (1) fibrinolytic therapy (nattokinase/lumbrokinase) that demonstrably reduces microclot burden does not improve tissue oxygenation or exercise capacity; or (2) patients with elevated microclot burden show additive rather than multiplicative VO₂ impairment (i.e., total deficit equals the sum, not the product, of individual deficits).

*Clinical implications.*
*Whom to treat*: patients with elevated D-dimer, visible microclots on amyloid microscopy, or elevated PAI-1. *How*: the model predicts that fibrinolytic agents (nattokinase, lumbrokinase) address the microclot burden while anti-inflammatory treatment addresses the upstream driver. The model further predicts that BH₄ depletion impairs eNOS, reducing NO and promoting coagulation---so BH₄ supplementation (sapropterin) or anti-inflammatory therapy (reducing iNOS-mediated BH₄ consumption) should have anticoagulant effects as a secondary benefit. Isolated anticoagulation without addressing inflammation is predicted to require indefinite treatment, as microclots re-accumulate when therapy stops.

