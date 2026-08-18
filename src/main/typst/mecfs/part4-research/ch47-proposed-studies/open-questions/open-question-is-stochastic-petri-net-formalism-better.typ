#import "../../../shared/environments.typ": *

#open-question(title: [Is Stochastic Petri Net Formalism Better Suited Than ODEs for Modeling Multi-Scale Domain 6 Dynamics?])[
Domain 6 (mast cell / histaminergic dysregulation) spans at least four biological scales simultaneously: (1) *molecular* -- mediator release kinetics, receptor binding, calcium flux; (2) *cellular* -- mast cell state transitions (quiescent, primed, degranulated, recovering); (3) *tissue* -- perivascular mediator diffusion, nerve fiber sensitization; (4) *systemic* -- orthostatic intolerance, PEM, cognitive dysfunction. The bistable switch model integrated into Chapter:integrative-models captures one aspect (the quiescent-to-activated transition). But the full domain includes stochastic, discrete-event, multi-scale dynamics that ODEs model poorly.

Stochastic Petri nets (SPNs) offer an alternative formalism specifically designed for this structure: *tokens* represent activation events (mast cell degranulation episodes, mediator pulses); *transitions* encode degranulation probability, recovery dynamics, and inter-domain coupling (e.g., sympathetic nerve firing triggering mast cell activation, mast cell histamine affecting cardiac output). SPNs naturally represent:
- Stochastic firing (degranulation is probabilistic, not deterministic)
- Discrete events (a single large degranulation episode vs background trickle)
- Multiple time scales (fast mediator release in seconds vs slow mast cell recovery in hours)
- Partial observability (urinary mediators are system outputs; internal mast cell state is hidden)

*Proposed research question:* Fit a stochastic Petri net model of Domain 6 to urinary N-methylhistamine time-series data from a cohort of MCAS+ME/CFS patients. Test whether the SPN model (capturing bimodal state dynamics) out-predicts a linear ODE model for flare frequency distribution in a held-out cohort. Primary success criterion: the SPN model achieves lower AIC than the linear ODE model on held-out data AND improves RMSE for weekly flare count prediction by a pre-specified minimum effect (≥15% relative reduction); a KS-test on residual distributions may be used as a secondary diagnostic, but non-rejection alone (p > 0.05) is not a sufficient validation criterion.

*Feasibility:* SPN software is freely available (SHARPE, SNAKES, Stochastic Pi Calculus simulators). Parameter estimation from urinary mediator time-series requires longitudinal data (weekly urinary panels for 12 weeks per patient) -- a study design that does not currently exist for ME/CFS but is feasible with home collection kits. This is a computational modeling proposal that requires experimental data as input.

*Connection to Part V modeling:* If validated, the SPN model for Domain 6 would provide the formal foundation for a multi-scale integration layer in the Part V model framework (Chapter:modeling-foundations), connecting the ODE-based core model to the discrete-event tissue dynamics of MCAS.
]
