#import "../../../../shared/environments.typ": *

#proposal(title: [HIF-1alpha-ECM Coupled Model Extension])[
The energy metabolism model can be extended to incorporate hypoxia-inducible factor-1$alpha$ (HIF-1$alpha$) and extracellular matrix (ECM) dynamics, providing a mechanistic link between metabolic stress and connective tissue degradation observed in ME/CFS patients with comorbid hypermobile Ehlers-Danlos syndrome. Three new state variables extend the model: $[upright("HIF1")]$ (HIF-1$alpha$ concentration), $[upright("ECM")_q]$ (ECM quality/crosslinking), and $[upright("MMP")]$ (matrix metalloproteinase activity).

$
frac(d [upright("HIF1")], d t) &= k_(upright("HIF1"))^(upright("ROS")) dot.op [upright("ROS")] - k_(upright("HIF1"))^(upright("deg")) dot.op frac([upright("HIF1")], K_(upright("O2")) + [upright("O2")]) \
frac(d [upright("ECM")_q], d t) &= k_(upright("ECM"))^(upright("synth")) dot.op f_(upright("HIF1"))([upright("HIF1")]) - k_(upright("ECM"))^(upright("deg")) dot.op [upright("MMP")] dot.op [upright("ECM")_q] \
frac(d [upright("MMP")], d t) &= k_(upright("MMP"))^(upright("HIF1")) dot.op [upright("HIF1")] + k_(upright("MMP"))^(upright("inf")) dot.op [upright("IL-6")] - k_(upright("MMP"))^(upright("clear")) dot.op [upright("MMP")]
$

where $k_("HIF1")^("ROS")$ is ROS-mediated HIF-1α induction (normally inhibited by prolyl hydroxylase), the degradation term captures oxygen-dependent proteasomal degradation, ECM synthesis is upregulated by HIF-1α, and MMP induction responds to both HIF-1α and inflammatory cytokines. The ECM quality variable $["ECM_q"]$ couples back to the energy model through the oxygen delivery equation: reduced vascular compliance from degraded ECM impairs tissue perfusion, lowering effective DO₂. This creates a positive feedback loop: energy deficit → ROS → HIF-1α → MMP → ECM degradation → reduced perfusion → exacerbated energy deficit. The model predicts specific temporal patterns of HIF-1α, MMP, and ECM markers (e.g., collagen turnover fragments) after exercise that match ME/CFS patient data and distinguish ME/CFS from healthy responses.

*Certainty: 0.55.* The HIF-1α-ECM coupling is well-established in tendinopathy @Moschini2026HIFTendinopathy, and the ROS-mediated HIF-1α stabilization mechanism is biochemically validated. The application to ME/CFS connective tissue comorbidity requires confirmation that ECM degradation contributes substantively to symptom burden, and that the temporal signatures (post-exertional MMP spikes) are present in ME/CFS with the predicted delay relative to ROS.
]
