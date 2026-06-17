#import "../../../../shared/environments.typ": *

=== HPA Axis Dynamics
<sec:hpa-dynamics>

The HPA axis is a neuroendocrine cascade in which the hypothalamus releases corticotropin-releasing hormone (CRH), which stimulates pituitary adrenocorticotropic hormone (ACTH) release, which in turn stimulates adrenal cortisol production. Cortisol exerts negative feedback at both the hypothalamic and pituitary levels. The model tracks three state variables---CRH ($H$), ACTH ($A$), and cortisol ($F$, from Kendall's compound F)---with a circadian driving function:

$
frac(d H, d t) &= sigma_H dot.op (1 + a_c sin(frac(2 pi t, 24) - phi_c)) dot.op frac(K_F^(n_F), K_F^(n_F) + F^(n_F)) + sigma_(upright("stress"))(t) - delta_H H \
frac(d A, d t) &= sigma_A dot.op frac(H^(n_H), K_H^(n_H) + H^(n_H)) dot.op frac(K_F^(n_(F A)), K_F^(n_(F A)) + F^(n_(F A))) - delta_A A \
frac(d F, d t) &= sigma_F dot.op frac(A, K_A + A) - delta_F F
$ <eq:hpa-axis>

where $sigma_H$, $sigma_A$, $sigma_F$ are basal secretion rates; $a_c$ and $phi_c$ parameterize the circadian oscillation (peak CRH release in the early morning); $K_F$ and $n_F$ control the cortisol negative feedback (Hill-type inhibition); $sigma_(upright("stress"))(t)$ represents external stress inputs; and $delta_H$, $delta_A$, $delta_F$ are degradation rates. The Hill exponents $n_F$ and $n_(F A)$ determine the sharpness of the feedback switch, with $n_F approx 2$--$4$ producing the pulsatile cortisol release pattern observed physiologically.

