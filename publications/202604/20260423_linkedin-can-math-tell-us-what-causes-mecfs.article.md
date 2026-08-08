# Can Math Tell Us What Causes ME/CFS?

Biology answers causal questions in the laboratory: you perturb a system, observe the outcome, and infer the relationship. But in human disease, most perturbations are neither controllable nor reversible, most patients arrive with disease already established, and the thing you most want to know — what happened at the moment of onset — is usually unobservable. Biology reaches its limit.

Mathematics has a different approach. Instead of directly observing the causal event, you build a formal model of the system's dynamics, encode the mechanisms you believe are operating, and then ask: can this mechanism alone, starting from a healthy state, drive the system across the boundary into disease? That question can be answered analytically, without running the experiment on a patient.

That is what Ch. 33 of the framework does. It takes the qualitative causal hierarchy from Ch. 16 — the three-tier classification of root causes, amplifiers, and consequences, developed through verbal biological reasoning — and subjects it to formal testing using a 67-variable dynamical systems model [Ch. 33 §Introduction].

---

## Three complementary analyses

The formal analysis asks three questions, each targeting a different aspect of disease dynamics [Ch. 33 §Methodology]. The first is trigger sufficiency: starting from the healthy steady state, can perturbing a single mechanism drive the system across the separatrix — the boundary between the healthy attractor and the disease attractor — without any other change? If yes, that mechanism can alone initiate the disease. The second is sensitivity analysis: at the disease steady state, which parameters most strongly control the disease configuration? High sensitivity means that small changes in a parameter produce large shifts in disease severity, identifying the load-bearing mechanisms with the greatest therapeutic leverage. The third is lock removal: starting from the disease steady state, can restoring a single mechanism to healthy values allow the system to escape the disease attractor? If yes, that mechanism is a necessary lock whose presence is required for disease maintenance.

Trigger sufficiency identifies what can cause the disease; lock removal identifies what maintains it. The two are not symmetric, because a mechanism that triggers disease may not be necessary for its maintenance once other loops have engaged, and a mechanism that is necessary for maintenance may not have been the original trigger.

---

## Trigger sufficiency results

Three of the four candidate root causes pass the trigger sufficiency test [Ch. 33 §Trigger Sufficiency Analysis].

The CNS energy crisis — Complex I activity reduction — is the most direct route. Below approximately 65% of healthy Complex I activity, the energy–immune feedback system undergoes a saddle-node bifurcation: the healthy attractor disappears, and the only remaining stable state is the disease attractor [Ch. 33 §CNS Energy Crisis: Complex I Reduction]. The cascade runs as follows: ATP drops, immune control weakens, cytokines rise, the energy–immune vicious cycle locks in, and epigenetic consolidation begins.

Metabolic safe mode activation follows a different mechanism. The safe mode switch exhibits hysteresis, a bistable structure where activation and deactivation have different thresholds. A transient threat signal exceeding the activation threshold triggers the switch to the high-suppression state, and internal feedbacks — ETC suppression raising ROS, ROS driving cytokine rise, cytokines sustaining the threat signal — keep the switch activated even after the external threat has cleared. The mechanism is self-perpetuating once triggered [Ch. 33 §Metabolic Safe Mode Activation].

The GPCR autoantibody cascade operates more slowly. When autoantibody titer reaches approximately 55–65% of the normalized maximum, endothelial dysfunction reduces effective oxygen delivery enough to trigger the energy–immune bifurcation. Because autoantibody accumulation takes weeks to months, this route is consistent with the gradual-onset ME/CFS subtype rather than the acute post-infectious presentation [Ch. 33 §GPCR Autoantibodies].

TRPM3 channelopathy is conditionally trigger-sufficient rather than independently so. Even complete TRPM3 loss reduces Complex I activity to approximately 70% of healthy — close to but not across the critical threshold of 65% — so it does not independently trigger disease in most individuals. What it does instead is shift the threshold for every other mechanism: a patient with TRPM3 dysfunction requires only a 20% Complex I reduction to cross the bifurcation, versus 35% in a patient with intact calcium signaling. The dysfunction is a vulnerability that makes routine infections dangerous [Ch. 33 §TRPM3 Trigger Sufficiency].

---

## Sensitivity: what controls the disease state most

Global sensitivity analysis (Sobol indices) ranks the parameters by how much they control the disease-state ATP level, accounting for nonlinear interactions [Ch. 33 §Sensitivity Analysis]. The ranking is: Complex I activity (Sobol index 0.42), immune exhaustion rate (0.31), safe mode activation (0.28), epigenetic methylation index (0.22), and autoantibody titer (0.19). The sum of these indices reaches 1.77 — well above 1 — because parameter interactions are themselves substantial. The disease state is not controlled by any single variable but by their collective configuration, which is the mathematical signature of a multi-lock system.

Complex I activity is the most influential single parameter, but immune exhaustion ranks second, higher than local sensitivity analysis would suggest, reflecting strong nonlinear coupling between the energy and immune subsystems. The epigenetic methylation index ranks fourth, a moderate but pervasive influence that affects all output variables without dominating any single one. This is consistent with its role as a slow modifier that progressively deepens the disease attractor rather than directly driving any subsystem.

---

## Lock removal: what the system cannot escape without

For three of the four disease subtypes, a single-parameter restoration is sufficient to escape the disease attractor [Ch. 33 §Lock Removal Results]. In the immune-dominant subtype, restoring the immune exhaustion rate achieves escape; in the metabolic-dominant subtype, either restoring Complex I activity or deactivating the safe mode switch is sufficient; in the neurovascular-dominant subtype, eliminating autoantibodies achieves escape.

The severe/locked attractor is different. No single-parameter restoration allows escape — every intervention shifts the system within the disease basin without crossing the boundary out of it. The minimum successful combinations all require epigenetic methylation reversal paired with an energy-producing restoration [Ch. 33 §Minimum Intervention Sets]. This is the mathematical basis of the argument, made earlier in this series, that severe ME/CFS requires combination rather than single-target treatment. Epigenetic consolidation has suppressed multiple parameters below the escape threshold simultaneously, so restoring any one leaves the others suppressed and the disease attractor intact in the modified landscape [Ch. 33 §Interpretation: Why Epigenetic Reversal Is Rate-Limiting].

---

## What this kind of analysis can and cannot claim

The results here derive from a model. The 67 ODEs encode current biological understanding, and the coupling equations reflect known feedback topology. But many parameter values are estimated from limited data, the model has not been fully numerically validated, and the qualitative predictions — trigger-sufficient mechanisms, necessary locks, minimum intervention sets — depend on the feedback structure rather than precise parameter values [Ch. 33 §Analytical vs. Numerical Results].

The analytical claims (which mechanisms are trigger-sufficient, which are necessary locks) are expected to be robust to model details because they reflect the topology of the feedback network. The specific numerical thresholds (Complex I at 65%, autoantibody titer at 55–65% normalized) are order-of-magnitude estimates that will be refined with better data.

What makes the analysis valuable is not that it proves the hierarchy, but that it makes the hierarchy testable in a specific way. The model makes predictions — about which intervention types should succeed, about which should plateau at improvement without recovery, about which combinations should produce qualitatively different outcomes — that can be checked against clinical data. When predictions fail, the failure tells you something specific about which part of the model's feedback structure is wrong.

That is the contribution mathematics makes to a disease that cannot easily be studied experimentally. Not proof, but precision — the kind of precision that turns a verbal hypothesis into a falsifiable one.

---

*Previous article in this series: [Why Single-Target Treatments Keep Failing in ME/CFS](https://www.linkedin.com/pulse/) (2026-04-20)*

*Next in this series: The Multi-Hit Model — why only some people develop ME/CFS after infection, and what predisposing vulnerabilities look like mathematically*

---

*Full framework available open-access (CC-BY 4.0): Loth (2026), [doi:10.5281/zenodo.19184064](https://zenodo.org/records/19184064).*

*This is a mechanistic and modeling framework, not clinical guidance. Nothing here should inform treatment decisions without physician oversight.*

---

*Yannick Loth — Independent Researcher — ORCID: 0009-0003-5754-827X*

*#MECFS #MyalgicEncephalomyelitis #ChronicFatigueSyndrome #LongCOVID #PostInfectiousDisease #Immunology #CausalInference #DynamicalSystems #PatientAdvocacy #MedicalResearch #InvisibleIllness #OpenAccess*
