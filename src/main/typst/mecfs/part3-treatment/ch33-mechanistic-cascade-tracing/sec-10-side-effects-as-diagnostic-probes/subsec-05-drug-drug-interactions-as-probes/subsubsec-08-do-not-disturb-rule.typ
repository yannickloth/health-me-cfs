#import "../../../../shared/environments.typ": *

==== The "Do Not Disturb" Rule — When to Stop
  <sec:do-not-disturb-rule>

*Certainty: 0.20.* These stopping conditions are clinical heuristics derived from the side-effect diagnostic patterns (Patterns 1--5, @sec:side-effects-diagnostic) and the PEM budget constraint (@sec:pem-budget-constraint). None has been validated prospectively in ME/CFS pharmacodiagnostic trials. They represent a safety-first clinical reasoning scaffold — the cost of a false stop (failing to find the right drug) is lower than the cost of a false continue (triggering PEM from a futile trial). (Origin: brainstorm)

The previous sections describe how to interpret positive and negative drug responses, how to combine drugs into synergistic probes, and how to sequence trials. This section describes when to *stop*. Not every drug response needs a second drug added, and not every null result needs the next drug on the ladder. Some conditions indicate that the current trial *is* the diagnostic result — adding another drug would only add noise.

#speculation[Condition 1 — Severe PEM After Any Drug][

*Certainty: 0.25.* If any drug causes severe PEM (defined as a crash episode that prevents basic self-care for >24 hours, or triggers a PEM episode >50% more severe than the patient's typical spontaneous crashes):

*Action:* Stop immediately. Do not escalate. Do not add a second drug. The PEM episode obscures the diagnostic signal — you cannot distinguish a drug-induced crash from a spontaneous disease fluctuation, and the crash itself consumes PEM budget that future drug trials need.

The severe PEM event IS diagnostic information, but it is not mechanistically specific (Pattern 6 — non-specific toxicity, @sec:pattern-6-symptom-specific-dissociation). It tells you this drug at this dose is not safe for this patient, and nothing more. Resume after full recovery (≥2 weeks of baseline-level symptoms).

*Falsifiable prediction:* Patients who continue pharmacodiagnostic trialling immediately after a drug-induced severe PEM episode (within 1 week) should show a higher rate of false-positive drug responses (attributed to the next drug but actually reflecting spontaneous recovery from the PEM episode) than patients who wait ≥2 weeks. Falsified if early-resumers and late-resumers show equivalent false-positive rates.
]

#speculation[Condition 2 — Fatigue from an Energy-Neutral Drug][

*Certainty: 0.20.* If a drug that should be energy-neutral (LDN, LDA, ketotifen, CoQ10, NAC — no RMR increase, no counter-regulatory suppression) causes fatigue:

*Action:* Do NOT escalate. The fatigue IS the diagnostic signal. This is Pattern 1 — exaggerated therapeutic effect (@sec:side-effects-diagnostic). The mechanism the drug targets IS engaged — the drug is working at its intended receptor — but the patient has zero reserve in the target system. The fatigue confirms:
- The receptor is present and functional (the drug bound to it and produced a biological effect)
- The downstream pathway is intact (the biological effect reached symptom generation)
- The downstream pathway is operating at its limit (any modulation — even beneficial modulation — exceeds capacity and produces fatigue as a system-overload signal)

The fatigue is NOT a reason to try a higher dose (it will worsen) or a second drug in the same class (same mechanism, same overload). The diagnostic answer is: bottleneck confirmed, reserve zero. Move to a different mechanism class.

*Falsifiable prediction:* In patients who experience fatigue from an energy-neutral drug, the same-drug rechallenge at 50% of the initial dose should not produce fatigue (the lower dose engages the receptor less, producing less overload). If the same-dose rechallenge does produce fatigue → dose-dependent mechanism confirmed. If dose reduction does NOT eliminate fatigue → the fatigue is not mechanism-specific; the drug has an off-target effect.
]

#speculation[Condition 3 — Three Consecutive Nulls in the Same Mechanism Class][

*Certainty: 0.15.* If three drugs in the same mechanism class all produce null results:

*Action:* Eliminate the class. Do not trial a fourth drug in the same class. Three nulls is a stronger exclusion than any single null — the probability that all three "missed" a present mechanism because of individual pharmacokinetic failure is low.

Example: LDN (TLR4+Nrf2+TRPM3+μOR) is null → TRPM3/neuroinflammation not pharmacologically accessible. LDA (D2 microglial) null → microglial threshold modulation fails. Ketotifen (mast cell H1) null → mast cell stabilisation fails. Three nulls in the immune-neuroinflammatory class. Conclusion: neuroinflammation is not pharmacologically accessible in this patient. Do not trial a fourth neuroinflammatory drug (minocycline, montelukast, etc.). Move to the next class in the sequence — mitochondrial or autonomic probes.

The threshold is *three*, not one or two. One null could be pharmacokinetic failure, wrong dose, or wrong receptor subtype. Two nulls could be bad luck. Three nulls across different receptors/pathways within the same system class converge — the system is the problem, not the individual receptor.

*Falsifiable prediction:* In a cohort of ME/CFS patients undergoing sequential pharmacodiagnostic trials, the proportion who respond to the fourth drug in the same mechanism class (after three consecutive nulls in that class) should be <10%. If >10% respond to the fourth drug, three-null class elimination is too strict — the class elimination threshold should be four or five nulls.
]

#speculation[Condition 4 — >50% Improvement from Any Drug][

*Certainty: 0.20.* If a drug produces >50% improvement in the patient's primary symptom domain:

*Action:* Pause. Do not immediately add another drug. The response magnitude IS the diagnostic signal — it tells you this mechanism was severely rate-limiting. A 50% improvement from LDN tells you the lesion is at the level LDN targets (TRPM3/TLR4/Nrf2/μOR), and it was causing ≥50% of the total symptom burden.

Adding a second drug immediately would:
1. Confound attribution — you cannot tell whether the second drug's benefit is additive, synergistic, or would have occurred with the second drug alone
2. Miss the opportunity to observe the washout effect — does symptom severity return to baseline when the drug is stopped? If yes, the mechanism is tonic-maintenance (the drug suppresses an ongoing process). If no, the drug repaired something permanently
3. Waste a drug trial — you have already found a high-yield intervention. Document it fully before searching for incremental benefit from a second drug

The response magnitude should be fully characterised (onset latency per @sec:response-onset-latency, domain specificity, dose-response slope, washout duration) before any second drug is added. If the improvement sustains at 6 weeks and the washout confirms mechanism-dependence, the diagnostic question for this mechanism is answered. Only then does a second drug for additive/synergy testing become interpretable.

*Falsifiable prediction:* Patients whose pharmacodiagnostic trials are continued immediately after a >50% improvement (new drug added within 1 week) should show lower cumulative diagnostic resolution rate (proportion of patients whose bottleneck is correctly identified) compared to patients who complete full characterisation (≥6 weeks observation + washout test + confirmatory synergy probe) before adding a second drug. Falsified if fast-sequencers and slow-sequencers show equivalent cumulative resolution.
]

*Consequence:* These stopping rules prevent the clinician from chasing diminishing returns at the cost of accumulating PEM. The four conditions together establish a safety triad: when the patient crashes (PEM), when the system saturates (energy-neutral fatigue), when the class exhausts (three nulls), and when the mechanism is found (>50% improvement). Each stop condition IS a diagnostic outcome — it answers a question that adding more drugs would only obscure.
