#import "../../../shared/environments.typ": *

== Gut--Brain--Immune Axis
<sec:gut-brain-immune-axis>

Gut microbiome alterations in ME/CFS (@ch:gut-microbiome) affect both immune function and CNS signaling through multiple pathways. The integrated model includes three gut-derived signals:

+ *Short-chain fatty acids (SCFAs)*: Butyrate, produced by commensal bacteria, maintains intestinal barrier integrity and exerts anti-inflammatory effects @Folkerts2020butyrate. Reduced butyrate-producing bacteria in ME/CFS @Hsu2025gut is modeled as decreased $[upright("butyrate")]$, which increases intestinal permeability and permits translocation of bacterial products (lipopolysaccharide, LPS) into the circulation.
+ *LPS-driven immune activation*: Translocated LPS activates monocytes/macrophages through TLR4, increasing pro-inflammatory cytokine production. This is an additional input to the cytokine network model (@eq:cytokine-general).
+ *Microbiome-derived neurotransmitter precursors*: Gut bacteria produce tryptophan metabolites, GABA, and other neuroactive compounds that reach the CNS via the vagus nerve or systemic circulation, modulating the neurotransmitter models in @ch:neuroendocrine-models.

The gut--brain--immune axis coupling is modeled as:

$
J_upright("LPS") = k_upright("perm") dot.op frac(K_upright("butyrate"), K_upright("butyrate") + [upright("butyrate")]) dot.op [upright("LPS")_upright("gut")]
$ <eq:gut-immune>

where intestinal permeability increases as butyrate decreases, allowing more LPS translocation. The circulating LPS then drives immune activation, which via the neuroimmune pathway affects CNS function. This chain provides a mechanistic link between gut dysbiosis and neurological symptoms in ME/CFS.

#include "subsec-01-gi-motility-and-sibo-dynamics/subsec-01-gi-motility-and-sibo-dynamics.typ"
