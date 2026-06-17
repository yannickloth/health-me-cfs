#import "../../../../shared/environments.typ": *

=== Physical Exertion
<sec:physical-exertion-response>

Physical exertion produces the most well-characterized stimulus--response relationship in ME/CFS via the two-day CPET protocol @keller2024cpet. The model simulates a standardized exercise test as a ramping $J_upright("demand") (t)$ function.

*Healthy temporal profile.*
In healthy individuals, the model (Section @sec:healthy-exercise-response) predicts a multi-timescale response that serves as the baseline against which ME/CFS deviations are measured. (1) _Immediate recovery_ (0--2 hours): ATP and lactate return to baseline as metabolic demand normalizes; this is the fast timescale of metabolic kinetics. (2) _Delayed-onset muscle soreness_ (24--72 hours): local inflammatory repair of mechanical micro-damage peaks at 24--48 hours (Equation @eq:doms-inflammation); this is self-limiting and confined to the exercised tissue, producing soreness without systemic symptoms. (3) _Supercompensation_ (48--96 hours): AMPK-driven mitochondrial biogenesis produces a net increase in healthy mitochondrial mass ($Delta M_h^upright("net") > 0$, Equation @eq:supercompensation), leaving the system _stronger_ than before the exertion. The fact that the model reproduces these well-established healthy timescales---without parameter fitting, purely from the interaction of its fast (metabolic), intermediate (inflammatory), and slow (biogenesis) ODE components---constitutes a face validation of the model framework before it is applied to ME/CFS.

*ME/CFS temporal profile.*
In ME/CFS, each of the three healthy timescales is pathologically altered. Key model predictions, validated against CPET data:

+ *Reduced peak VO₂*: Limited by both cardiovascular (reduced CO) and metabolic (reduced ETC capacity) constraints
+ *Early anaerobic threshold*: Transition to glycolytic dominance at lower workloads because oxidative capacity ceiling is reduced
+ *Day-2 decrement*: The model predicts that ROS-mediated damage from day-1 exertion reduces ETC capacity by 5--15% on day 2, lowering peak VO₂ and anaerobic threshold. This is the pathological counterpart of healthy DOMS: where healthy individuals experience local, self-limiting inflammation, ME/CFS patients experience systemic ROS-mediated ETC damage that worsens capacity rather than repairing tissue
+ *Prolonged recovery*: The model predicts that post-exercise ATP and cytokine levels require 48--96 hours to return to pre-exercise baseline, versus $<24$ hours for metabolic normalization in healthy controls. The 48--96 hour window that produces supercompensation in health (Section @sec:supercompensation) instead produces net mitochondrial loss ($Delta M_h^upright("net") < 0$)---the anti-supercompensation phenomenon that is the hallmark of the disease (Section @sec:branch-point)

