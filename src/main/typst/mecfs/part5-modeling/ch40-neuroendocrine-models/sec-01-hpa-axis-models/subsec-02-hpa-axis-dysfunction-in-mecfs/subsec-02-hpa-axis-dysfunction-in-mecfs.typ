#import "../../../../shared/environments.typ": *

=== HPA Axis Dysfunction in ME/CFS
<sec:hpa-dysfunction-model>

ME/CFS patients frequently exhibit subtle HPA axis abnormalities: mildly reduced basal cortisol, blunted cortisol awakening response, and attenuated cortisol response to stress @Cleare1999. These findings are not consistent with primary adrenal insufficiency (which produces markedly low cortisol) but rather with altered central regulation. The model represents ME/CFS HPA dysfunction through three parameter modifications:

+ *Enhanced negative feedback sensitivity*: increased $n_F$ (steeper Hill function), causing the system to suppress CRH output at lower cortisol concentrations. This produces the observed low-normal cortisol with preserved ACTH response.
+ *Reduced circadian amplitude*: decreased $a_c$, flattening the diurnal cortisol rhythm. This is consistent with the blunted cortisol awakening response and may contribute to unrefreshing sleep.
+ *Altered stress responsiveness*: reduced $sigma_(upright("stress"))$ gain, reflecting impaired hypothalamic stress signal integration.

The model predicts that these modifications shift the HPA axis to a low-output steady state that is stable under normal conditions but responds inadequately to metabolic or immune challenges. This has direct consequences for the immune models (Chapter @ch:immune-system-models): cortisol is a major anti-inflammatory signal, and its deficiency permits sustained immune activation that would normally be self-limiting.

#include "limitations/hpa-axis-model-simplifications.typ"

#include "../../../../figures/fig-baroreflex-model.typ"

