#import "../../../../shared/environments.typ": *

=== Exertion-Induced Metabolic Crisis
<sec:exertion-crisis>

Post-exertional malaise (PEM) is the hallmark symptom of ME/CFS: a disproportionate and delayed worsening of symptoms following physical, cognitive, or emotional exertion. The energy metabolism model provides a mechanistic framework for PEM. During exertion, ATP demand increases:

$
J_(upright("demand"))(t) = J_(upright("basal")) + J_(upright("exertion")) dot.op phi(t)
$ <eq:demand-exertion>

where $phi(t)$ is the exertion profile (e.g., a pulse of duration $tau_(upright("ex"))$). In healthy individuals, the ETC increases flux to match demand, maintaining $[upright("ATP")]$ within a narrow physiological range---the Phase 1 response described in @sec:healthy-exertion-recovery, where $R_(upright("headroom")) > 0$ (@eq:headroom) ensures that production capacity exceeds demand. In the ME/CFS model, the reduced $V_(max)$ values limit the maximum achievable flux, causing $[upright("ATP")]$ to fall when demand exceeds the impaired capacity ($R_(upright("headroom")) lt.eq 0$):

$
[upright("ATP")](t) = [upright("ATP")]_0 - integral_0^t (J_(upright("demand"))(s) - J_(upright("production"))(s)) d s quad upright("when ") J_(upright("demand")) > J_(upright("production,max"))
$ <eq:atp-depletion>

The critical difference in ME/CFS is not the depletion itself but the recovery. Two-day CPET studies demonstrate that ME/CFS patients show reduced peak oxygen consumption on day 2 compared to day 1, whereas healthy controls maintain or improve performance @keller2024cpet ---the supercompensation response formalized in @sec:supercompensation. This recovery failure is modeled through the ROS feedback loop: exertion-induced ATP depletion $->$ compensatory increase in ETC flux $->$ increased ROS production $->$ further ETC damage $->$ reduced recovery capacity. In terms of the branch-point analysis (@sec:branch-point), ME/CFS patients operate below $R_(upright("crit"))$, converting what would be an adaptive stimulus into a damaging one ($Delta M_h^(upright("net")) < 0$, @eq:supercompensation).

