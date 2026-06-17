#import "../../../../shared/environments.typ": *

=== Nerve Sheath Inflammation Dynamics
<subsec:nerve-sheath-model>

The preceding SFN model (Equation @eq:sfn-dynamics) tracks distal small fiber density. A complementary model is needed for pain arising from the nerve sheath itself, where Schwann cell activation, endoneurial hypoxia, perineurial mast cell degranulation, and autoimmune attack converge (see @subsec:ch15-nerve-sheath-pain for the biological mechanisms). The model introduces a nerve sheath inflammation state $cal(N)_s$ representing the aggregate inflammatory burden within the endoneurial and perineurial compartments:

$
frac(d cal(N)_s, d t) = underbrace(k_(upright("schw")) dot.op [upright("ROS")] dot.op frac([upright("CGRP")], K_(upright("CGRP")) + [upright("CGRP")]), upright("Schwann cell TRPA1 activation")) + underbrace(k_(upright("peri")) dot.op H_(upright("mc")), upright("perineurial mast cell input")) + underbrace(k_(upright("isch")) dot.op (1 - frac(O_(2,upright("endo")), O_(2,upright("endo"))^0))^+, upright("endoneurial ischemia")) - k_(upright("res"),N) dot.op cal(N)_s
$ <eq:nerve-sheath-inflammation>

where $k_(upright("schw"))$ is the rate of Schwann cell-mediated neurogenic inflammation (driven by the combination of ROS and CGRP, reflecting the TRPA1 pathway), $H_(upright("mc"))$ is the mast cell histamine release rate from the mast cell model (@sec:ch15-mast-cells), $O_(2,upright("endo"))/O_(2,upright("endo"))^0$ is the fractional endoneurial oxygen delivery (reduced by endothelial dysfunction), and $k_(upright("res"),N)$ is the spontaneous resolution rate.

The endoneurial oxygen term couples to the endothelial dysfunction model. In ME/CFS, vasa nervorum share the microvascular pathology of the systemic endothelium:

$
O_(2,upright("endo")) = O_(2,upright("endo"))^0 dot.op frac([upright("NO")], K_(upright("NO,endo")) + [upright("NO")]) dot.op frac(upright("MAP"), K_(upright("MAP,endo")) + upright("MAP"))
$ <eq:endoneurial-oxygen>

where NO availability (from the BH₄ model, @sec:bh4-competition) and mean arterial pressure (from the ANS model, @sec:orthostatic-model) jointly determine endoneurial perfusion. BH₄ depletion reduces NO, constricting vasa nervorum; orthostatic hypotension further compromises nerve perfusion during upright posture.

The nerve sheath inflammation state modifies nociceptive input to the central sensitization model:

$
P_(upright("noci,total")) = P_0 dot.op (1 + beta_(upright("SFN")) dot.op (1 - frac(cal(F), cal(F)_0))^+) + gamma_(upright("sheath")) dot.op cal(N)_s
$ <eq:noci-nerve-sheath>

where $gamma_(upright("sheath"))$ converts nerve sheath inflammation into nociceptive input units. The total nociceptive input $P_(upright("noci,total"))$ replaces $P_(upright("noci"))$ in Equation @eq:central-sensitization, feeding into the central sensitization wind-up term. *The model predicts that nerve sheath pain and SFN pain have different temporal profiles*: SFN pain worsens slowly over months to years (governed by slow fiber degeneration $cal(F)$), while nerve sheath pain fluctuates on the timescale of hours to days (governed by the faster dynamics of mast cell activation, posture-dependent ischemia, and ROS levels). This prediction is clinically testable through pain diary analysis correlated with posture, activity, and mast cell markers.

