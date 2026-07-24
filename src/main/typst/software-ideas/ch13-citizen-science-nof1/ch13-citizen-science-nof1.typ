#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Chapter 16: Citizen Science N-of-1 Trial Designer
// =============================================================================

= Citizen Science N-of-1 Trial Designer
<sw:citizen-science-nof1>

#chapter-abstract[
For the motivated patient who wants to test whether a specific intervention works for them: a tool that designs a rigorous n-of-1 trial protocol. It randomizes intervention vs placebo periods, specifies washout periods, defines objective outcome measures, computes required crossovers for statistical power, and generates a report for their physician or a research registry. Converts individual experimentation from anecdote into evidence.
]

== Motivation

ME/CFS patients are already experimenting — trying supplements, dietary changes, sleep interventions, and off-label medications, often without physician guidance because physicians have nothing to offer. This experimentation generates anecdotes ("I tried X and felt better") but almost never generates evidence. The anecdotes are lost, or shared on forums without controls for placebo, regression to the mean, or natural fluctuation.

The n-of-1 trial designer formalizes this experimentation. It turns "I tried X and felt better" into "I conducted a 6-week randomized, blinded n-of-1 trial of X vs placebo with 3 crossovers. The treatment effect on my primary outcome (daily function, 0–10) was +1.8 points (p = 0.03, one-sided paired t-test, 21 treatment days vs 21 placebo days). The effect was consistent across all 3 crossovers."

This is evidence that a patient can take to their physician, share with a research registry, and use to make informed treatment decisions. Multiplied across thousands of patients, aggregated n-of-1 trials become a powerful evidence source — many single-patient trials, collectively analyzed.

== Core Functionality

=== Trial Designer

The patient specifies:
- *Intervention.* What they want to test (supplement X, dietary change Y, behavioral intervention Z)
- *Primary outcome.* What to measure (daily function 0–10, steps, HRV, crash frequency, specific symptom severity) — from wearable data or self-report
- *Expected effect size.* The minimum clinically meaningful difference (e.g., "I'd consider this worthwhile if it improves my function by 1 point on a 0–10 scale")
- *Acceptable trial duration.* How long they're willing to run the trial (typically 4–12 weeks)
- *Blinding feasibility.* Can the intervention be blinded? (Supplement in identical capsules: yes. Dietary change: no. Behavioral intervention: no.)

The tool:
1. Computes the required number of crossovers for adequate statistical power given the expected effect size, outcome variability, and desired alpha (typically 0.05 one-sided, or 0.10 for exploratory)
2. Randomizes the treatment/placebo periods with appropriate washout between phases
3. Generates a blinding protocol (identical capsules, sham vs real for behavioral interventions)
4. Provides a data logging template (integrated with the Wearable Dashboard spec or a simple daily form)
5. Schedules checkpoints (end of each phase, trial completion)

=== Analysis Engine

At trial completion, the tool:
1. Computes the treatment effect (mean difference, treatment vs control periods)
2. Tests significance (paired t-test or non-parametric equivalent; Bayesian alternatives available)
3. Checks for period effects (did the treatment work better in early phases than later phases — suggesting tolerance or cumulative benefit?)
4. Checks for carryover effects (did the treatment effect persist into washout/placebo periods — suggesting inadequate washout?)
5. Generates a visual summary: phase-by-phase outcome trajectory with treatment periods highlighted

=== Research Registry Integration

The patient can (optionally, with informed consent) contribute their trial results to a public n-of-1 registry. The registry aggregates trials of the same intervention across patients, enabling:
- Meta-analysis of n-of-1 trials (combining effect sizes across patients)
- Subgroup analysis (does the intervention work better in specific patient subgroups — e.g., viral-onset vs gradual-onset?)
- Identification of interventions that show consistent effects across multiple n-of-1 trials — a signal for larger RCTs
- Identification of interventions that show highly variable effects — suggesting patient-specific factors that need investigation

=== Physician Report

A one-page summary for the patient's physician:
- Trial design (intervention, control, duration, crossovers, blinding)
- Results (effect size, significance, consistency across phases)
- Patient's conclusion ("I found this helpful and plan to continue" / "I found no benefit and plan to discontinue")
- Statistical caveats (n-of-1 design limitations, generalizability limitations)

The report is designed to be persuasive: a well-designed n-of-1 trial with a clear positive result is stronger evidence than anecdote, and some physicians will prescribe off-label treatments based on n-of-1 evidence when the alternative is doing nothing.

== Relationship to Existing Content

- the Wearable Dashboard spec (Wearable Dashboard): the outcome data source
- the Recovery Predictor proposal (Recovery Predictor): the n-of-1 results could feed into the predictor as additional data
- Ch38 (Proposed Studies, parent paper): the n-of-1 registry could serve as pilot data for the proposed RCTs
- Ch25 (Supplements/Nutraceuticals, parent paper): the supplement reference that patients will be testing

== Technical Architecture

*Trial designer.* Rule-based engine implementing standard n-of-1 trial design principles (cross-over design, washout calculation, sample size estimation for single-subject designs).

*Analysis.* Statistical package (Python/SciPy or R-based, compiled to WebAssembly for browser execution). The analysis is standard n-of-1 methodology — no novel statistics required.

*Registry.* A de-identified public database of n-of-1 trial results. Structured metadata (intervention, dose, outcome, patient characteristics). Privacy-preserving: only aggregate data is public; individual-level data is accessible only with the contributor's explicit consent.

== Limitations

#limitation[
*Blinding impossibility.* Many interventions cannot be blinded (dietary changes, behavioral interventions, exercise protocols). The placebo effect cannot be controlled. The trial is still valuable (it controls for natural fluctuation via crossover design), but the effect estimate includes placebo.

*Low statistical power.* Single-patient trials have limited power. A moderate effect size (Cohen's d = 0.5) with typical outcome variability requires 6+ crossovers for adequate power — a 12+ week trial. Most patients will not sustain a trial this long.

*Self-experimentation risk.* Patients may test interventions that are unsafe (high-dose supplements, medication combinations, restrictive diets). The tool must screen for safety — flagging interventions with known risks and recommending physician consultation for any intervention beyond standard supplements.

*Registry quality.* Self-reported n-of-1 trials vary enormously in quality. Without enforcement of design standards (blinding, randomization, adequate washout), the registry becomes a collection of anecdotes rather than evidence. The tool must grade trial quality and weight meta-analyses accordingly.
]

== Consequence

#key-point[
The citizen science n-of-1 trial designer formalizes what patients are already doing — experimenting — into a methodology that produces evidence rather than anecdotes. A single well-designed n-of-1 trial is the strongest evidence a patient can generate about what works for them. Thousands of aggregated n-of-1 trials are a research infrastructure that could identify promising interventions faster and cheaper than traditional RCTs, while simultaneously empowering patients to become active participants in ME/CFS research rather than passive subjects of it.
]
