#import "../../../../shared/environments.typ": *

=== Healthy Exertion--Recovery Cycle
<sec:healthy-exertion-recovery>

With healthy parameters, the model predicts a three-phase response to a moderate exertion pulse $phi(t)$ (@eq:demand-exertion). The key quantity is the _metabolic headroom ratio_:

$
R_(upright("headroom")) = frac(J_(upright("production,max")) - J_(upright("demand,peak")), J_(upright("production,max")))
$ <eq:headroom>

In healthy individuals performing moderate exercise, $R_(upright("headroom")) approx 0.3$--$0.5$: the ETC has substantial reserve capacity above peak demand. This headroom determines the entire downstream response.

*Phase 1: Exertion (minutes to hours).* ATP demand rises but remains within production capacity ($R_(upright("headroom")) > 0$). The ATP balance (@eq:atp-balance) shows a transient dip---typically $<10%$ from baseline---that is rapidly compensated by increased ETC flux and glycolytic upregulation. Lactate rises modestly (@eq:lactate-dynamics) due to the glycolytic contribution but remains below the lactate threshold for moderate exercise. ROS production increases transiently (@eq:ros-production) because ETC flux increases, but the increase is proportional and remains within antioxidant buffering capacity: $[upright("ROS")](t) < upright("ROS")_(upright("threshold"))$ throughout, so the damage indicator function in @eq:pem-delay evaluates to zero. *No cumulative oxidative damage accumulates.*

*Phase 2: Immediate recovery (0--2 hours post-exertion).* As demand returns to baseline, lactate is cleared via the Cori cycle ($v_(upright("clear"))$ term in @eq:lactate-dynamics) with a half-life of approximately 15--30 minutes @Brooks2018lactate. ATP returns to baseline within minutes. ROS returns to steady-state levels as ETC flux normalizes. The metabolic perturbation resolves completely within 1--2 hours, consistent with the rapid metabolic recovery observed in healthy exercise studies.

*Phase 3: Adaptation (6--96 hours post-exertion).* The transient metabolic stress, although fully resolved at the whole-cell level, has triggered signaling cascades that operate on slower timescales. AMPK, activated during the ATP dip, initiates PGC-1$alpha$-mediated mitochondrial biogenesis (@eq:biogenesis). Because the healthy cell has adequate $"NAD"^"+"$ ($gamma = 1.0$), the SIRT1 pathway is fully functional, and the biogenesis rate $J_(upright("biogenesis"))$ is high. Simultaneously, the brief ROS transient---below the damage threshold but above resting levels---acts as a hormetic signal, upregulating antioxidant enzyme expression (a well-characterized phenomenon in exercise physiology). The net result over the subsequent 48--96 hours is a _supercompensation_: healthy mitochondrial mass $M_h$ overshoots its pre-exercise value.

