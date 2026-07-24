#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Chapter 1: Virtual Drug Trial Simulator
// =============================================================================

= Virtual Drug Trial Simulator
<sw:vdt-simulator>

#chapter-abstract[
Given the 67-variable ODE model (Ch47, parent paper) and pharmacokinetic parameters for each medication (Ch24), simulate what would happen if patient X took drug Y at dose Z for duration T. Output: predicted trajectory of energy, inflammation, autonomic function, crash risk. A physician could test 50 drug combinations _in silico_ before the patient ever takes a pill.
]

== Motivation

Medication trials in ME/CFS are slow (weeks to months per trial), costly, and risky — each trial can cause crashes, paradoxical reactions, or permanent worsening. Patients typically try 8–15 medications over years, most of which do nothing or make them worse. The search space of possible drug combinations (including dose variations and timing) is enormous and cannot be explored empirically.

The parent paper's formal ODE model (Ch47) provides the infrastructure to explore this space computationally. Each drug can be modeled as a perturbation to one or more state variables with a pharmacokinetic profile (onset time, peak concentration, half-life). Running the ODE forward with these perturbations predicts the trajectory of the full disease state — energy metabolism, immune activation, autonomic tone, neuroinflammation, etc.

A virtual trial costs milliseconds and causes zero harm. It can eliminate combinations predicted to do nothing or cause deterioration, and surface combinations predicted to cross the separatrix into the healthy attractor basin.

== Core Functionality

=== Patient Parameterization

The patient's current disease state is estimated from their mechanism fingerprint (Ch6, the Mechanism Fingerprint Platform spec in the companion document). For each of the 67 state variables in the ODE model, the initial value is estimated from the corresponding fingerprint measurement where available; default ME/CFS population values are used for unmeasured variables.

The model's structural parameters (reaction rates, coupling strengths, degradation constants) are populated from literature values and the calibration described in Ch47. Uncertainty in each parameter is represented as a distribution (not a point estimate), enabling stochastic simulation.

=== Drug Model

Each medication is characterized by:
- Target state variable(s) in the ODE system
- Effect magnitude (fractional change in the target variable, e.g., +15% Complex I activity, -40% TNF-α production)
- Pharmacokinetic profile: absorption rate, time to peak, elimination half-life
- Dose-response curve: how effect magnitude scales with dose (linear, Michaelis-Menten, or Hill function where supported by evidence)
- Certainty of each parameter

=== Simulation Engine

For each drug × dose × duration combination:

1. Perturb the target state variables according to the drug model
2. Integrate the ODE system forward for T days
3. Track: energy state, inflammatory state, autonomic state, crash risk (distance to separatrix), and predicted symptom burden (mapped from state variables via the symptom-producing mechanisms in Ch15)
4. Repeat with parameter sampling (Monte Carlo over uncertainty distributions) to produce outcome distributions, not point predictions

Output per simulation: trajectory plot, probability of crossing the separatrix within time T, expected symptom reduction (with confidence interval), and risk of worsening (probability that any state variable deteriorates beyond baseline).

=== Interface

A physician inputs:
- Patient's known biomarkers (mechanism fingerprint, or defaults for unknown values)
- Drug(s) to test (up to 3 simultaneously for combination therapy)
- Dose and duration

Output: interactive trajectory plots for the key state variables, a summary table ("70% probability of crossing separatrix within 90 days, expected SF-36 improvement +8 points (95% CI: +3 to +14), 5% risk of permanent worsening"), and a comparison view (side-by-side trajectories for drug A vs drug B vs combination A+B).

The tool does _not_ recommend treatments — it simulates them. The physician interprets the output and makes the clinical decision.

== Relationship to Existing Content

- Ch47 (Formal Causal Hierarchy): the ODE model that provides the simulation engine
- Ch24 (Medications by System): the drug pharmacology data that parameterizes drug effects
- Ch6 / the Mechanism Fingerprint Platform spec (Mechanism Fingerprint): the patient state estimation from biomarkers
- the Pharmacodiagnostic Matrix proposal (Pharmacodiagnostic Matrix): the constraint-propagation diagnostic tool that could be integrated as a pre-simulation filter (use the matrix to narrow the drug search space, then simulate only the top candidates)

== Limitations

#limitation[
*Model fidelity.* The 67-variable ODE is a simplified representation of physiology. Virtual trial predictions are only as reliable as the model's structural accuracy. The tool must communicate that these are model-based projections, not clinical predictions.

*Parameter uncertainty.* Many drug-effect parameters have not been measured in ME/CFS patients specifically. Effect magnitudes estimated from other populations or from mechanistic inference may differ substantially from actual ME/CFS responses.

*Unmodeled effects.* The ODE captures known interactions; unknown off-target drug effects, drug-drug interactions, and idiosyncratic reactions cannot be simulated. The paradox that the adverse drug reaction atlas (the Adverse Drug Reaction Database spec in the companion document) documents — paradoxical reactions — is precisely what the simulation _cannot_ predict.

*Validation requirement.* The simulator must be validated against actual treatment outcomes before clinical use. This requires a prospective trial comparing simulated predictions against observed outcomes for a set of standard ME/CFS medications.
]

== Consequence

#key-point[
The virtual drug trial simulator accelerates the search for effective treatments by orders of magnitude. A search space that would take decades to explore empirically (50 drugs × 5 doses × 3 combinations = millions of options) can be narrowed to a handful of top candidates in hours. Risk is eliminated: harmful combinations are identified and discarded before a patient ever takes a pill. The tool does not replace clinical judgment — it augments it with the best available systems-level model of the disease.
]
