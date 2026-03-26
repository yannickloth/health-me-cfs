# Could Wearables Predict ME/CFS Relapses?

One of the most disorienting features of ME/CFS for patients is the apparent unpredictability of crashes. A patient can feel relatively stable and then, without obvious warning, tip into a relapse lasting days or weeks. The exertion or stressor that triggered it may have happened days earlier — the characteristic delay of post-exertional malaise means that by the time the crash is apparent, the trigger is already in the past.

A prediction from the formal dynamical systems model of ME/CFS — among the most speculative in the series, with certainty around 0.30–0.40 — suggests there may be a detectable signal weeks before such a transition, accessible through consumer wearables.

---

## Systems slow down before they tip

In dynamical systems theory, critical slowing down is a phenomenon that occurs as a system approaches a bifurcation point — a threshold at which the system's qualitative behaviour changes [Ch. 33 §Prediction 4: Critical Slowing Down Before Relapse].

The mechanism is mathematical rather than biological. Near a stable equilibrium, small perturbations are dampened: the system returns to its resting state quickly, and there is little "memory" of each disturbance. As the system approaches a bifurcation — the point at which the current stable state loses stability — the dominant eigenvalue of the Jacobian matrix (the matrix encoding how the system responds to perturbations, whose largest eigenvalue governs the rate of return to equilibrium) approaches zero. Return becomes slower. Perturbations take longer to decay. The system accumulates memory of each fluctuation rather than forgetting it.

This has two observable signatures. The autocorrelation of the time series rises: each observation becomes more similar to the preceding one, because the system is "forgetting" disturbances more slowly. Simultaneously, the variance of the time series increases: because recovery from perturbations is slower, fluctuations accumulate rather than cancelling out. Both signatures — rising autocorrelation, rising variance — are detectable in time series data before the bifurcation occurs [Ch. 33 §Prediction 4, Mathematical Basis].

This phenomenon has been observed before major transitions in diverse complex systems: lake ecosystems approaching eutrophication, financial markets before crashes, epileptic seizures before onset [Scheffer 2009; van de Leemput 2014]. It is a generic property of systems near tipping points, not specific to any particular biology.

---

## What the model predicts for HRV

Applied to ME/CFS, the model's prediction is [Ch. 33 §Prediction 4]:

A sustained increase of more than two standard deviations in the 7-day rolling variance of heart rate variability (HRV — a measure of beat-to-beat timing variation that reflects autonomic state), combined with increased autocorrelation at lag 1 (r₁ > 0.7), should precede attractor transitions — sustained improvement or sustained worsening — by 2–4 weeks.

The choice of HRV as the observable is not arbitrary. Heart rate variability integrates signals from the autonomic, metabolic, and immune systems simultaneously. In the 67-variable model, the relevant eigenvalue approaching zero is the one associated with the energy–immune feedback loop — the slowest unstable direction near the separatrix. HRV projects onto this direction because autonomic regulation couples directly to metabolic and immune state. A wearable that records HRV continuously is, in a sense, sampling a projection of the disease state in real time [Ch. 33 §Prediction 4, Mathematical Basis].

The model also predicts that the same signal should precede transitions in both directions: not only worsening into a crash but also improvement toward recovery. Both are transitions across or near the separatrix, and both should exhibit the same precursor dynamics.

---

## Two to four weeks of warning

A validated early-warning algorithm running on wearable HRV data could provide 2–4 weeks' notice of an impending crash. That window is long enough to meaningfully alter behaviour — reduce planned activity, adjust medication timing, rest pre-emptively — rather than merely documenting the crash after it happens.

For research, continuous physiological monitoring in ME/CFS cohorts would enable tracking of attractor transitions over time, measuring not just whether patients improve or worsen but how quickly they move through state space. The open question is whether the distance between a patient's current state and the separatrix — a "recovery distance" — could be estimated from measurable biomarkers, providing a scalar metric of how close a patient is to a tipping point in either direction [Ch. 33 §Open Question: Identifiability of Separatrix Proximity].

For clinical trials, the ability to detect attractor transitions would enable more sensitive outcome measurement. The current dependence on self-reported symptom scales obscures modest but real signal — a known limitation of ME/CFS trial methodology [Ch. 33 §Prediction 4, Required Data]. A biomarker of separatrix proximity would be more objective and potentially more sensitive.

---

## The study that hasn't been done

The prediction requires validation in a prospective cohort study: continuous HRV monitoring in at least 50 ME/CFS patients over 12 months or more, with at least 5 documented attractor transitions (defined by consistent criteria) in the cohort, sufficient to test for the autocorrelation and variance signatures at adequate statistical power [Ch. 33 §Prediction 4, Required Data]. No such study has been reported in the ME/CFS literature, as of this writing.

Several things could prevent the prediction from working in practice even if the underlying model is correct. The HRV observable may not project strongly enough onto the critical mode — if the energy–immune feedback loop does not dominate HRV variability in some patients, the signal-to-noise ratio may be insufficient. Stochastic driving (random perturbations from external sources — infections, exertion, sleep disruption) might overwhelm the deterministic slowing-down signal.

The most fundamental limitation is also worth stating plainly: critical slowing down is a precursor to *gradual* bifurcation transitions — systems that spend time near the tipping point before crossing. Many ME/CFS crashes appear clinically to be abrupt threshold events driven by a single large perturbation (a difficult day of activity, a concurrent infection) rather than slow drift toward a boundary. For patients whose transitions are primarily perturbation-driven rather than bifurcation-driven, the CSD signal may not appear. The prediction applies to the gradual-approach scenario; it is silent about crashes that are effectively large random shocks.

These are conditions under which the prediction would be falsified: if attractor transitions are not preceded by detectable changes in variance and autocorrelation in a properly designed study, the critical slowing down prediction fails [Ch. 33 §Prediction 4, Falsification].

---

## The hardware exists; the algorithm doesn't

Consumer wearables have reached the point where continuous HRV monitoring is technically feasible. Several major wearable platforms now report HRV metrics in their companion apps. The signal quality varies, but high-frequency chest strap monitors (and some wrist-based devices with adequate sampling) can provide the raw data that the prediction requires.

What does not yet exist is a validated algorithm for critical slowing down detection in ME/CFS patients, a reference dataset of attractor transitions to train and test such an algorithm against, or a clinical workflow for acting on early-warning signals. These are research-stage problems, not engineering problems.

The prediction from the model is that the signal exists and is detectable. Whether it is detectable with sufficient reliability to be useful in practice is an empirical question that requires the cohort study described above. That study could, in principle, be run using existing wearable hardware — the bottleneck is the research infrastructure, the patient cohort, and the willingness to treat wearable data as scientifically serious.

---

## Speculation with a clear test

This is among the more speculative predictions of the framework, carrying certainty of approximately 0.30–0.40 [Ch. 33 §Emergent Predictions from Cross-Idea Synthesis]. The mathematics of critical slowing down is well-established in dynamical systems theory, and the formal derivation of the autocorrelation and variance signatures from the model's Jacobian structure is correct. What is uncertain is the projection: whether HRV captures the right mode of variability in ME/CFS, whether the transitions that patients experience are the kind the model describes (near-separatrix dynamics rather than large-perturbation responses), and whether the 2–4 week lead time is accurate.

The prediction is worth stating clearly and worth testing. If it survives a properly designed study, it would represent something genuinely new in ME/CFS monitoring: a physiological early-warning signal that precedes clinical deterioration by weeks, accessible through hardware patients already own.

Certainty: 0.30–0.40. The critical slowing down prediction follows from the dynamical systems structure of the model; the specific observable (HRV), lead time (2–4 weeks), and threshold values are model-derived approximations awaiting empirical validation.

---

*Previous article in this series: [An Early Treatment Window](https://www.linkedin.com/pulse/) (2026-04-30)*

*Next: ME/CFS Is Not One Disease — a mathematical case for subtyping*

---

*Full framework available open-access (CC-BY 4.0): Loth (2026), [doi:10.5281/zenodo.19184064](https://zenodo.org/records/19184064).*

*This is a mechanistic and modeling framework, not clinical guidance. Nothing here should inform treatment decisions without physician oversight.*

---

*Yannick Loth — Independent Researcher — ORCID: 0009-0003-5754-827X*

*#MECFS #MyalgicEncephalomyelitis #ChronicFatigueSyndrome #LongCOVID #PostInfectiousDisease #DynamicalSystems #PatientAdvocacy #MedicalResearch #InvisibleIllness #OpenAccess #Wearables*
