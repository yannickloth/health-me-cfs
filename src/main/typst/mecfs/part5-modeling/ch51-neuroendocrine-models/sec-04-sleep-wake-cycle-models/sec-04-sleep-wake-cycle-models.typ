#import "../../../shared/environments.typ": *

== Sleep--Wake Cycle Models
<sec:sleep-wake-models>

Unrefreshing sleep is a core symptom of ME/CFS. The two-process model of sleep regulation, originally developed by Borbély, provides a quantitative framework. Sleep propensity is determined by the interaction of a homeostatic process ($S$, sleep pressure) and a circadian process ($C$):

$
frac(d S, d t) &= cases(r_(upright("build")) dot.op (S_(max) - S) & upright("during waking"), -r_(upright("decay")) dot.op (S - S_(min)) & upright("during sleep")) \
C(t) &= C_0 + C_1 sin(frac(2 pi t, 24) - phi_s)
$ <eq:sleep-wake>

Sleep onset occurs when $S > C + theta_(upright("on"))$ (sleep pressure exceeds circadian alerting plus threshold), and waking occurs when $S < C - theta_(upright("off"))$. In ME/CFS, the model predicts unrefreshing sleep through:

+ *Impaired sleep pressure dissipation*: reduced $r_(upright("decay"))$, meaning sleep pressure does not fully clear during sleep (consistent with reduced slow-wave sleep in polysomnographic studies)
+ *Elevated waking sleep pressure build rate*: increased $r_(upright("build"))$, reflecting the higher metabolic cost of waking activities in an energy-deficient state (adenosine accumulation is linked to ATP consumption)
+ *Blunted circadian amplitude*: reduced $C_1$, flattening the circadian alerting signal (consistent with the HPA axis circadian reduction in @sec:hpa-dysfunction-model and with melatonin studies @castromarrero2021melatonin)

The combination produces a sleep phenotype where patients fall asleep easily (elevated $S$) but wake unrefreshed (residual $S$ remains high) and experience daytime somnolence (chronically elevated $S$ during waking hours). The model further predicts that circadian disruption (irregular sleep schedules) worsens the phenotype by desynchronizing the $S$ and $C$ processes, providing formal support for sleep hygiene recommendations in ME/CFS management.

#include "hypotheses/adenosine-atp-coupling-as-unrefreshing-sleep-mechanism.typ"

