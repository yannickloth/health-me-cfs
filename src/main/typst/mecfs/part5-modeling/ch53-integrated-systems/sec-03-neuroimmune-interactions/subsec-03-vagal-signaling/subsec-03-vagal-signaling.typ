#import "../../../../shared/environments.typ": *

=== Vagal Signaling

The vagus nerve provides a rapid bidirectional communication pathway between the periphery and the CNS. Afferent vagal fibers detect peripheral cytokines (particularly IL-1$beta$ and TNF-$alpha$) and transmit inflammatory signals to the nucleus tractus solitarius (NTS) @Marty2008NTS, producing sickness behavior (fatigue, anorexia, social withdrawal). Efferent vagal fibers mediate the cholinergic anti-inflammatory pathway, suppressing macrophage TNF-$alpha$ production through $alpha$7 nicotinic acetylcholine receptors @Huerta2025vagal. The vagal coupling is modeled as:

$
sigma_upright("TNF")^upright("eff") = sigma_upright("TNF") dot.op frac(K_upright("vagal"), K_upright("vagal") + V_upright("efferent"))
$ <eq:vagal-coupling>

where $V_upright("efferent")$ is vagal efferent tone from the ANS model (@eq:ans-balance). Reduced vagal tone in ME/CFS therefore diminishes the cholinergic anti-inflammatory pathway, providing an additional mechanism for sustained peripheral inflammation.

