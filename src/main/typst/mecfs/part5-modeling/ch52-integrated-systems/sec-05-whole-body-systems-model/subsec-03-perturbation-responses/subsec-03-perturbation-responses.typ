#import "../../../../shared/environments.typ": *

=== Perturbation Responses
<sec:perturbation-responses>

The whole-body model is validated by simulating responses to standardized perturbations and comparing with clinical observations:

+ *Exercise challenge*: A pulse increase in $J_upright("demand")$ produces transient ATP depletion. In the healthy model, all variables return to baseline within hours. In the ME/CFS model, the perturbation triggers the PEM cascade (@sec:pem-modeling), with secondary immune activation and delayed symptom worsening---reproducing the two-day CPET findings @keller2024cpet.
+ *Infection challenge*: A pulse increase in viral load $V$ activates the immune response. In the healthy model, the infection is cleared and the immune system returns to baseline. In the ME/CFS model, the immune response is sluggish (due to NK cell exhaustion and energy limitation), clearing the infection more slowly and producing a larger and more prolonged inflammatory response---consistent with the clinical observation that infections cause prolonged relapses in ME/CFS patients.
+ *Stress challenge*: A pulse increase in $sigma_upright("stress")$ activates the HPA axis. In the healthy model, cortisol rises appropriately and returns to baseline. In the ME/CFS model, the cortisol response is blunted, providing insufficient anti-inflammatory feedback, and the stress-induced sympathetic activation exacerbates autonomic symptoms.

