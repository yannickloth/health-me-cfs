#import "../../../shared/environments.typ": *

== Differential Diagnostic Algorithm — From Drug Responses to Bottleneck Localization <sec:differential-diagnostic-algorithm>

Given a set of drug responses (positive, null, side-effect profile, dose-response curve shape), the following algorithm localizes the rate-limiting bottleneck with maximum specificity per trial. Each step probes a mechanism group; a null response at a step eliminates the entire group and advances to the next step.

=== Step 0 — Audit Existing Data

Before any new trial, audit every drug the patient has ever taken: dose, duration, response, side effects, temporal pattern. A drug taken 5 years ago for a different indication is still pharmacodiagnostic data — the mechanism it targeted was either active or not at that time. Assemble the pre-existing data into a preliminary null matrix.

=== Step 1 — Broad Probe: LDN (0.5 mg, titrate to 4.5 mg)

*Coverage:* TLR4 (neuroinflammation), TRPM3 (ion channel), endorphin (pain/mood), orexin (wakefulness). Energy-neutral — can be tried in severe patients.

*If positive:* Neuroinflammation/TRPM3/endorphin/orexin is present. Narrow by dose: benefit at 0.5--1.5 mg → TLR4/Nrf2 hormetic dominant. Benefit at 3.0--4.5 mg → TRPM3/orexin dominant. Benefit plateau at 1.5--3.0 mg → endorphin dominant. Proceed to Step 2 to identify the source.

*If null:* Four mechanisms eliminated in one trial. The patient should trial at least two dose bands (0.5--1.5 mg AND 3.0--4.5 mg) for >=4 weeks each before concluding null — premature null from insufficient dose-range testing is the most common false negative. If truly null at all doses: skip to Step 3.

=== Step 2 — Neuroinflammation Source Identification

Within the LDN+ group, identify the upstream source of neuroinflammation:

- *Ketotifen (0.25--2 mg):* Mast-cell → microglial pathway. If ketotifen works where LDN did NOT → mast cells were the dominant upstream driver. If ketotifen + LDN both work → mast cells AND TLR4 are both active inputs.
- *taVNS:* Cholinergic anti-inflammatory pathway (vagus → splenic nerve → α7 nAChR on macrophages). If taVNS works → CAP efferent pathway is functional; neuroinflammation is vagally suppressible.
- *DLPFC TMS:* Prefrontal → amygdala/striatal → autonomic → inflammatory. If TMS works → top-down neuroinflammatory pathway confirmed.
- *IVIG/rituximab (Step 5):* GPCR autoantibody-driven neuroinflammation.

=== Step 3 — Noradrenergic/Dopaminergic Axis

Probe whether catecholamine dysfunction is rate-limiting:

- *Aripiprazole (0.2--2 mg):* D2/D3 partial agonist. If positive → D2-mediated microglial involvement OR mesocorticolimbic dopamine deficiency. If positive at ≤1 mg → microglial D2. If positive at 1--2 mg → mesocorticolimbic D2.
- *Pyridostigmine (30--180 mg):* AChE inhibitor. If positive → cholinergic neurotransmission is the bottleneck; brainstem neuroinflammation affecting autonomic control.
- *Modafinil (25--200 mg):* DAT/NET inhibitor. If positive → catecholamine inverted-U from the left arm (low baseline DA/NE). The inversion dose maps baseline catecholamine tone.

=== Step 4 — Energy Bottleneck

Probe whether mitochondrial ATP production is rate-limiting:

- *CoQ10 + D-ribose + creatine:* Mitochondrial cofactor repletion. If positive → ETC substrate deficiency confirmed; the energy bottleneck is at the substrate level. If null → the energy bottleneck is not substrate-reversible; try rapamycin (mTORC1-mediated autophagy) or LLLT (Complex IV photostimulation).
- *Rapamycin (0.5--3 mg/week):* mTORC1 inhibition restoring autophagy/mitophagy. If positive → autophagy failure is maintaining mitochondrial dysfunction.

=== Step 5 — Autoimmune Probe

- *IVIG (0.4 g/kg/month) or rituximab (1,000 mg every 6 months):* If positive → circulating IgG autoantibody-mediated pathology confirmed; GPCR-AAb → PIP2 depletion → multi-channel dysfunction is the leading candidate. If null → autoimmune pathway excluded or non-IgG-mediated.

=== Step 6 — Mechanical Probe (Gerlier Model)

- *Shoe lift:* If positive → mechanical asymmetry driving sympathetic overdrive → dopaminergic depletion (Gerlier Pathway 2). If positive + aripiprazole positive → multi-level confirmation of the mechanical→dopaminergic pathway.
- *Cervical bracing:* If positive → functional CCI driving brainstem compression → ascending dopaminergic disruption (Gerlier Pathway 4).

=== Step 7 — Antiviral Probe

- *Valacyclovir (1--3 g/day):* If positive → active herpesvirus replication contributing to symptoms. If null + LDN null + IVIG null → post-infectious mechanism with persistent immune dysregulation independent of ongoing viral replication.

=== Step 8 — Assemble the Null Matrix

Construct the patient-specific null matrix: rows = all medications trialled, columns = all mechanistic hypotheses. A cell is marked positive if the drug produced a therapeutic response; null if it didn't; side-effect if it produced a specific diagnostic side effect. The intersection of all null cells across all rows defines the set of mechanisms that remain live hypotheses. The intersection of positive cells across all rows identifies which mechanisms are confirmed. The combination of positive signals from drugs targeting different nodes on the same cascade localizes the bottleneck to the narrowest relevant interval.

=== Consequence

The algorithm's output is a differential diagnosis not of disease, but of *rate-limiting mechanisms* — which systems are the immediate drivers of symptoms, which are contributing passively, and which are intact. Treatment targets are prioritized by therapeutic depth: Restorative > Corrective > Threshold-modulatory > Substrate-repletion > Symptomatic. The algorithm is iterative — each new drug trial provides a new row for the null matrix, which may revise the bottleneck localization.

*Certainty: 0.20.* No step of this algorithm has been validated in a prospective trial. The sequence is derived from mechanistic inference and clinical observation. The HIP-B trial specification is at @ch:mechanistic-cascade-tracing (Chapter 33, sec-08). Until validated, the algorithm is a hypothesis-generating framework, not a clinical decision tool.

For the extended algorithm with full branching logic, see @ch:mechanistic-cascade-tracing (Chapter 33, sec-11).
