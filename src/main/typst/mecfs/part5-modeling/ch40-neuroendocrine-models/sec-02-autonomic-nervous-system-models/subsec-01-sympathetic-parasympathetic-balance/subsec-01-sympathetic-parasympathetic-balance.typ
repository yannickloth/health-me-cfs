#import "../../../../shared/environments.typ": *

=== Sympathetic--Parasympathetic Balance
<sec:sympathetic-parasympathetic>

The autonomic nervous system (ANS) regulates cardiovascular, respiratory, and gastrointestinal function through the opposing actions of the sympathetic (SNS) and parasympathetic (PNS) branches. Heart rate variability (HRV) analysis provides a non-invasive window into ANS function and is consistently abnormal in ME/CFS @Newton2007. The model tracks sympathetic tone ($S$) and parasympathetic (vagal) tone ($V$):

$
frac(d S, d t) &= sigma_S dot.op g_S (upright("BP"), upright("pain"), upright("stress")) - delta_S S - k_(S V) V \
frac(d V, d t) &= sigma_V dot.op g_V (upright("BP"), upright("respiration")) - delta_V V - k_(V S) S
$ <eq:ans-balance>

where $g_S$ and $g_V$ are input functions driven by baroreceptor signals (blood pressure, BP), pain, stress, and respiratory phase; $k_(S V)$ and $k_(V S)$ represent reciprocal inhibition between branches. Heart rate is determined by the balance:

$
upright("HR")(t) = upright("HR")_(upright("intrinsic")) + alpha_S dot.op S(t) - alpha_V dot.op V(t)
$ <eq:heart-rate>

where $upright("HR")_(upright("intrinsic")) approx 100$ bpm is the intrinsic sinoatrial node rate (without autonomic input), and $alpha_S$, $alpha_V$ are gain coefficients. In ME/CFS, the model represents autonomic dysfunction as elevated baseline $S$ and reduced $V$---sympathetic predominance with vagal withdrawal---producing reduced HRV and elevated resting heart rate.

