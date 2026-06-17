#import "../../../../shared/environments.typ": *

=== Cerebrovascular Autoregulation Model

Cerebral blood flow depends on cerebral perfusion pressure (CPP) and cerebrovascular resistance (CVR):

$
upright("CBF") = frac(upright("CPP"), upright("CVR")), quad upright("CPP") = upright("MAP") - upright("ICP")
$ <eq:cbf-model>

where ICP is intracranial pressure (~10 mmHg normally). Autoregulation adjusts CVR to maintain CBF constant across a MAP range of approximately 60--150 mmHg:

$
frac(d upright("CVR"), d t) = frac(1, tau_(upright("auto"))) [upright("CVR")_0 dot.op frac(upright("MAP"), upright("MAP")_(upright("target"))) dot.op g_(upright("CO")_2)(upright("PaCO")_2) dot.op g_(upright("NO"))([upright("NO")]) - upright("CVR")]
$ <eq:cvr-autoregulation>

where $tau_(upright("auto")) approx 5$--$15$ s is the autoregulatory time constant, $upright("MAP")_(upright("target"))$ is the set point, $g_(upright("CO")_2)$ captures CO₂ reactivity (hypercapnia dilates cerebral vessels), and $g_(upright("NO"))$ captures NO-mediated vasodilation from the endothelial model (Equation @eq:enos-model). In ME/CFS, the model represents impaired autoregulation through three mechanisms:

+ *Delayed autoregulatory response*: increased $tau_(upright("auto"))$, causing transient CBF undershoots during orthostatic stress before CVR adjusts
+ *Narrowed autoregulatory range*: the MAP range over which CBF is maintained narrows, so that even moderate MAP reductions (during standing) cause CBF drops
+ *Reduced NO-mediated vasodilation*: $g_(upright("NO"))$ is attenuated by BH₄ depletion (@sec:bh4-competition) and endothelial dysfunction (@sec:coagulation-model), impairing the vasodilatory arm of autoregulation

*The model produces a clinically actionable prediction that requires mathematical analysis*: the CBF response to orthostatic stress depends on the product of two independent impairments (systemic MAP drop $times$ autoregulatory delay), predicting that patients with both autonomic dysfunction (large MAP drop) and endothelial dysfunction (impaired autoregulation) will experience disproportionately severe cerebral hypoperfusion compared to patients with either alone. This multiplicative interaction explains why cognitive symptoms during orthostatic challenge are highly variable across patients with similar tilt-table hemodynamics---the cerebrovascular autoregulatory reserve differs. The model predicts that CBF ultrasound during tilt-table testing would add prognostic value beyond MAP and HR monitoring alone.

