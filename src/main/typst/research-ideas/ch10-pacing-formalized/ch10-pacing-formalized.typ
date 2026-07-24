#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Chapter 10: The Pacing Algorithm — Control Theory Applied to ME/CFS
// Type: Clinical Decision Tool
// =============================================================================

= The Pacing Algorithm: Control Theory Applied to ME/CFS
<ch:pacing-formalized>

#chapter-abstract[
Ch26 discusses pacing conceptually. Ch47 provides the mathematical infrastructure (67-variable ODE model, attractor dynamics, separatrix). This chapter proposes bridging the two: a formal pacing algorithm derived from control theory that, given a patient's personal exertion-to-crash transfer function, computes the exact exertion budget that maximizes total function over any planning horizon. It transforms pacing from "listen to your body" into a prescribable, verifiable, adaptive protocol.
]

== Motivation

Pacing is the only universally recommended intervention for ME/CFS. Every treatment guideline endorses it. Every patient tries it. And every patient struggles with it because "stay within your energy envelope" is a conceptually simple instruction that is practically impossible to execute.

The problem is not that the concept is wrong — it's that the implementation is underspecified. How do you know where your envelope boundary is today, when yesterday's boundary functioned differently? How do you decide between doing X now (at the risk of a crash) and deferring X (at the cost of lost function)? How do you recover from a crash — rest completely or maintain minimal activity?

Control theory — the mathematical framework that optimizes spacecraft trajectories, industrial processes, and diabetes insulin dosing — provides precise answers to all of these questions. The patient's physiology is the plant; exertion is the control input; symptoms and HRV are the observed outputs; the objective function is total function (not peak function) over the planning horizon.

== The Control-Theoretic Pacing Model

=== System Dynamics

The patient's internal state is not directly observable, but its effects are measurable through:

- Resting HR (proxy for sympathetic activation and overall physiological stress)
- HRV (RMSSD or SDNN, proxy for parasympathetic reserve and recovery capacity)
- Sleep quality (proxy for glymphatic clearance and neural recovery)
- Subjective energy/fatigue (proxy for the composite state of multiple systems)
- Recent crash history (recovery state — the system takes days to return to equilibrium after a crash)

Define the state vector $x(t) = [x_"energy", x_"inflammation", x_"autonomic"]$ as latent variables estimated from the observables.

The system evolves as:

$d x \/ d t = f(x, u, t)$

where $u(t)$ is the exertion control input (combination of physical, cognitive, emotional, and orthostatic exertion). The function $f$ captures:
1. Energy depletion proportional to $u$
2. Recovery rate proportional to available energy and inversely proportional to inflammatory state
3. Inflammatory response proportional to overexertion (the difference between $u$ and the current safe capacity)
4. Crash dynamics: a nonlinear threshold function where exceeding a critical exertion level triggers a state transition to the crash attractor

=== The Optimization Problem

Maximize:

$J = integral_0^T g(x(t), u(t)) d t$

where $g(x,u)$ is the instantaneous reward function: function (activities completed, satisfaction) minus penalty for overexertion and crash risk.

Subject to the constraint that the system must remain in the healthy attractor basin — i.e., must not cross the separatrix into the crash attractor (Ch47 §5).

The constraint is the pacing problem in mathematical form: *maximize function while never triggering a crash.* The solution is the optimal exertion policy $u*(x,t)$ — how much to exert given the current state and the remaining planning horizon.

=== Practical Implementation: The Four-Quadrant Protocol

Full control-theoretic optimization requires model identification (fitting $f$ to the individual patient) and is computationally intensive. A simplified four-quadrant protocol captures ~80% of the benefit with ~20% of the complexity:

*Quadrant 1: Energy budget calculation.* Determine basal energy expenditure (resting metabolic rate + unavoidable daily activities). Subtract from total available energy (estimated from the energy envelope — the observed exertion level below which crashes do not occur). The remainder is the discretionary energy budget.

*Quadrant 2: Adaptive budget adjustment.* Monitor HRV (RMSSD) every morning. If RMSSD > baseline by 10%+: increase discretionary budget by 10%. If RMSSD < baseline by 10%+: decrease by 20% (asymmetry: it's safer to undershoot). If recent crash (< 3 days): budget = 50% of basal only (no discretionary).

*Quadrant 3: Exertion sequencing.* Within the discretionary budget, sequence activities from highest-value to lowest. Stop when budget is exhausted. *Never* borrow from tomorrow's budget — the credit model (doing extra today and resting tomorrow) fails because the crash penalty is nonlinear (one overexertion costs more function than the extra activity gained).

*Quadrant 4: Crash recovery protocol.* After a crash: Day 1–2: basal only (rest). Day 3–5: basal + 10% discretionary. Day 6+: return to adaptive protocol. The "rest completely" approach (days of total inactivity) is counterproductive because it causes deconditioning, boredom, and psychological distress that impair recovery. The protocol specifies *minimal safe activity* during recovery.

=== Personalization: Identifying the Transfer Function

Each patient's transfer function $f$ differs. A 2-week calibration period identifies individual parameters:

1. *Energy envelope boundary.* Track exertion (step count, active energy, cognitive load rating) and next-day function. Find the maximum exertion level that does not predict next-day deterioration. This is the envelope boundary.

2. *Crash threshold.* Identify the exertion level that triggers PEM (through deliberate, gradual dose escalation over a week). Find the threshold where the probability of crash transitions from < 10% to > 50%.

3. *Recovery time constant.* After a crash, track the time to return to pre-crash HRV. Model as exponential recovery with time constant τ. This parameter determines how long to rest after a crash before resuming activity.

4. *HRV sensitivity.* Determine the correlation between morning HRV and that day's safe exertion capacity. Some patients show strong HRV-exertion coupling (RMSSD drop of 5 ms → safe exertion drops by 20%); others show weak coupling. The adaptive budget adjustment (Quadrant 2) is proportionally weighted.

=== Technology Integration

The protocol is implementable as a smartphone app that:

- Reads morning HRV, resting HR, and sleep data from the patient's wearable
- Computes the daily energy budget
- Tracks exertion in real time (step count, active minutes) and alerts the patient when approaching the budget limit
- Monitors HRV trends and adjusts the budget daily
- Detects crash onset (sustained HRV drop, HR elevation, reduced activity) and automatically transitions to the recovery protocol
- Provides a weekly report: budget adherence, crash frequency, function trends, and long-term trajectory

#proposal[
*Implementation.* Phase 1: Develop and validate the four-quadrant protocol in a pilot study (n = 30, wearable + symptom tracking for 12 weeks). Phase 2: Develop the app and validate in a randomized controlled trial (n = 200, adaptive protocol vs standard pacing advice, primary outcome: SF-36 physical function at 6 months). Phase 3: Deploy as an open-access clinical tool.

*Expected outcomes.* Primary: improved physical function relative to standard pacing advice. Secondary: fewer crashes per month, reduced crash severity, improved HRV, improved sleep quality, reduced anxiety about activity.
]

== Feasibility

*Effort.* Moderate — the mathematical framework is standard control theory applied to a novel domain. Protocol development: 20–30 hours. App development: 3–6 months (1–2 engineers). Clinical validation: 12–18 months.

*Barriers.* Patient adherence to tracking. HRV data quality from consumer wearables. Individual variation in transfer function (some patients' physiology may be too noisy for reliable model identification). Regulatory pathway for a clinical decision support tool.

== Relationship to Existing Content

This proposal bridges Ch26 (Lifestyle Interventions — pacing) and Ch47 §5 (Separatrix Nudging). It operationalizes the energy envelope theory using the mathematical tools developed in Part V. It also provides the empirical validation for the critical slowing down concept (Ch47 §6) — if HRV decline reliably predicts crash proximity, the pacing algorithm has a continuous rather than binary safety signal.

== Limitations

#limitation[
*Model fidelity.* The four-quadrant protocol is a simplified heuristic, not a full control-theoretic solution. Full optimization requires accurate system identification, which requires more data than is typically available from consumer wearables.

*Individual variation.* The protocol's parameters (envelope boundary, crash threshold, recovery τ, HRV sensitivity) vary across patients and likely within patients across time (e.g., seasonal variation, illness episodes). The protocol requires continuous recalibration.

*Crash prediction uncertainty.* Even with optimal monitoring, some crashes will occur because the system includes stochastic elements (e.g., random infection elevating inflammatory state unpredictably). The protocol minimizes crash frequency but cannot eliminate crashes entirely.

*Severe patients.* The protocol assumes the patient has some discretionary energy budget. Patients with zero discretionary budget (severe/very severe, where all energy goes to basal maintenance) cannot benefit from exertion optimization and need interventions that expand the basal budget itself.
]

== Consequence

#key-point[
The pacing algorithm formalizes the only universally recommended ME/CFS intervention from folk wisdom into a prescribable protocol. It replaces "listen to your body" (which is correct but unactionable) with "your budget today is X, your safe activities are Y, your HRV is Z, and if you follow this plan your predicted function over the next month is W." It gives patients, physicians, and carers a concrete tool that quantifies the core challenge of living with ME/CFS.
]
