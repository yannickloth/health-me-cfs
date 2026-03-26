# Why Only Some People Get ME/CFS After Infection

In the months following a wave of COVID-19, a fraction of infected individuals develop Long COVID. Of those, a subset — distinguished, so far, only imperfectly from the rest — progress to what meets full ME/CFS criteria. The fraction is not small, but it is a fraction. Most people who contract EBV, HHV-6, or SARS-CoV-2 recover. They do not develop ME/CFS.

This is one of the central puzzles of the disease. Why, from the same infection in the same community, do some people recover fully while others do not? The infection cannot be the whole answer. Something else distinguishes those who tip over from those who don't.

---

## A boundary, not a cliff

The dynamical systems framework developed in chapters 16 and 33 proposes a specific answer based on the concept of a separatrix — the boundary in state space that separates the basin of the healthy attractor from the basins of the disease attractors [Ch. 33 §Trigger Sufficiency Analysis].

Think of it as a watershed ridge. Rainfall landing on one side flows to one valley; rainfall on the other side flows elsewhere. In physiological terms, a person whose baseline parameters place them well inside the healthy basin can absorb a significant infection and return to health: the perturbation pushes the system toward the boundary but not across it, and the restoring forces pull it back. A person whose parameters place them already close to the separatrix needs only a small additional push. The same infection, different outcomes.

The model's explanation for why only some people develop ME/CFS after infection is that the difference lies not primarily in the infection itself but in where each person's baseline already places them, relative to the separatrix, before the trigger arrives [Ch. 16 §Trigger-Capable Mechanisms].

---

## What closes the gap

Several factors can shift a person's baseline position toward the boundary without producing overt disease [Ch. 31 §Triggering Events]:

Genetic variation affecting mitochondrial Complex I efficiency, NK cell function, and HLA-linked autoimmune susceptibility can place individuals closer to the threshold from birth. These variants do not cause ME/CFS in the absence of a trigger; they narrow the margin for recovery when a trigger does arrive [Ch. 33 §Multi-Hit Scenarios and Trigger Interactions].

Prior autoimmunity — subclinical autoantibody formation before any ME/CFS trigger — is another predisposing factor. The model estimates the critical autoantibody threshold at approximately 0.55–0.65 (normalized), meaning patients with circulating GPCR autoantibodies already elevated from prior immune events may be in a state where even a moderate infectious insult is sufficient to cross the separatrix [Ch. 33 §GPCR Autoantibody Cascade Analysis].

TRPM3 channelopathy deserves separate mention. TRPM3 is a calcium-permeable ion channel involved in NK cell activation and sensory neuron function. Polymorphisms that reduce TRPM3 function do not, on their own, appear to be trigger-sufficient — they do not independently drive the system into the disease state. But they are the strongest predisposing factor in the framework: the TRPM3–Complex I interaction coefficient is 0.45, meaning TRPM3 dysfunction lowers the threshold for other triggers substantially [Ch. 33 §Multi-Hit Scenarios and Trigger Interactions].

---

## How sub-threshold vulnerabilities combine

The question is how these sub-threshold perturbations combine. For two mechanisms, the combined trigger condition is [Ch. 33 §Multi-Hit Scenarios, Equation multi-hit]:

> (perturbation_i / threshold_i) + (perturbation_j / threshold_j) + γ_ij × (perturbation_i / threshold_i) × (perturbation_j / threshold_j) ≥ 1

where γ_ij is the interaction coefficient. If γ_ij is positive, the mechanisms are synergistic — the combined threshold is lower than the sum of individual contributions, meaning less of each is required. If γ_ij is zero, they are simply additive.

All pairwise interaction coefficients estimated from the model are positive — and all are heuristic estimates from qualitative coupling analysis, not formal numerical computation [Ch. 33 §Multi-Hit Scenarios and Trigger Interactions]. The strongest synergy is between Complex I reduction and GPCR autoantibodies (γ_CI,AAb = 0.55), which makes biological sense: both converge on the same bottleneck, oxygen-dependent ATP production. Autoantibodies reduce oxygen delivery through endothelial dysfunction; Complex I reduction impairs its utilization. A person with moderately reduced Complex I efficiency and moderately elevated GPCR autoantibodies — neither sufficient alone — may be pushed across the separatrix by an infection that would leave either vulnerability in isolation far from dangerous.

The same caveat applies to the threshold values: the autoantibody threshold of 0.55–0.65 (normalized) and the TRPM3–Complex I coefficient of 0.45 are model-derived approximations requiring full numerical bifurcation analysis to confirm [Ch. 33 §Interaction Coefficient Estimates].

---

## What the Dubbo studies showed

This explains a pattern that has been documented but incompletely understood. ME/CFS onset is most commonly triggered by infections, but only a small fraction of infected individuals develop ME/CFS [Hickie 2006, Chu 2019]. Prospective cohort studies — the Dubbo infection studies being the clearest — followed individuals through acute infectious illness and tracked who developed post-infectious fatigue syndromes. The picture is mixed: acute illness severity was the strongest single predictor in Dubbo [Hickie 2006], suggesting the infection's intensity also matters, not only the baseline. But risk factors associated with conversion included the prior health state as well: pre-existing fatigue, prior stress events, other vulnerabilities. The multi-hit framework is consistent with both: acute severity determines the size of the perturbation; baseline position determines how much perturbation is needed [Ch. 33 §Multi-Hit Framework — Epidemiological Implication].

The model's explanation — and it is an explanation, not an established mechanism — is that those who develop ME/CFS correspond to the fraction of the exposed population whose pre-existing sub-threshold perturbations place them in the multi-hit regime, close enough to the separatrix that the infection provides the final push.

This is not a statement that some people are simply "less resilient" in a vague sense. It is a specific mechanistic claim: prior autoimmunity, mitochondrial vulnerability, TRPM3 polymorphisms, and cumulative prior stressors are the substrate on which the trigger acts. The same trigger is more dangerous to a system already positioned near the boundary.

---

## From "who gets it" to "who is at risk"

The multi-hit framework shifts the question from "which pathogens cause ME/CFS" to "who is at risk, and what reduces that risk."

If pre-existing autoantibody formation, TRPM3 dysfunction, and Complex I impairment are the predisposing vulnerabilities, then these are, in principle, measurable. Not currently in routine clinical practice — the assays are research-grade and the threshold values model-derived, not empirically validated — but the framework predicts that these biomarkers would stratify post-infectious risk better than pathogen characteristics alone.

It also predicts that the hit from infection is not binary: sub-threshold infections that do not trigger ME/CFS may still move the system incrementally closer to the separatrix — eroding the margin without crossing it. The multi-hit pattern observed clinically, where patients report prior infections or stressors from which they "recovered," may reflect a series of such boundary approaches, each leaving the system slightly more precarious, until one more hit is sufficient [Ch. 31 §Failure of Recovery Mechanisms].

Early intervention after a potential first hit — before sub-threshold damage accumulates and before epigenetic consolidation begins — is what the model suggests would be most effective. This prediction is discussed in more detail in the next article in this series.

---

## What this is and isn't

This framework is grounded in formal analysis of a 67-variable ODE model that has not been independently validated. The interaction coefficients are derived from reduced subsystem analysis with heuristic elements; the threshold values require full numerical bifurcation analysis to confirm. The predisposing factor assignments are mechanistically argued but not yet empirically tested in prospective cohort studies [Ch. 33 §Multi-Hit Scenarios and Trigger Interactions].

What the framework provides is a structural explanation — not a "some people are just unlucky" story, but a specific account of which pre-existing vulnerabilities matter, how they combine, and what that combination implies for risk stratification and prevention. This is not the only candidate explanation: viral persistence models, in which residual pathogen-driven signalling maintains the disease state independently of pre-existing vulnerability, make different predictions and are being investigated in parallel. The multi-hit and persistence models are not mutually exclusive — both may operate in different patients or different phases of disease — but they have distinct implications for early intervention timing.

Certainty: 0.35–0.45. The multi-hit principle is well-supported by epidemiological observation; the specific interaction coefficients and threshold values are model-derived approximations.

---

*Previous article in this series: [Load-Bearing Walls vs. Interior Walls](https://www.linkedin.com/pulse/) (2026-04-13)*

*Next: An Early Treatment Window — the epigenetic clock that determines how long the window stays open*

---

*Full framework available open-access (CC-BY 4.0): Loth (2026), [doi:10.5281/zenodo.19184064](https://zenodo.org/records/19184064).*

*This is a mechanistic and modeling framework, not clinical guidance. Nothing here should inform treatment decisions without physician oversight.*

---

*Yannick Loth — Independent Researcher — ORCID: 0009-0003-5754-827X*

*#MECFS #MyalgicEncephalomyelitis #ChronicFatigueSyndrome #LongCOVID #PostInfectiousDisease #Immunology #CausalInference #PatientAdvocacy #MedicalResearch #InvisibleIllness #OpenAccess*
