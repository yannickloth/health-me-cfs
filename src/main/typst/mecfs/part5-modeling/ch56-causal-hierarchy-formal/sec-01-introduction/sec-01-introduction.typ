#import "../../../shared/environments.typ": *

#chapter-abstract[
This chapter encodes the biological reasoning of Chapter @ch:causal-hierarchy into formal mathematical models. It develops the ODE system governing disease state evolution, the timescale hierarchy that constrains therapeutic sequencing, the minimum intervention set analysis for disease escape, and formal predictions derivable from the model structure. Each hypothesis is stated with explicit certainty estimates and testable predictions.
]
The qualitative causal hierarchy developed in Chapter @ch:causal-hierarchy — root causes, amplifiers, consequences, locks — invites formalization. Expressing these relationships as dynamical systems permits quantitative predictions that go beyond the verbal reasoning: how fast does the disease consolidate? Which intervention combinations are sufficient for escape? Can recovery be predicted from biomarker trajectories? This chapter develops these formalizations.
// =============================================================================
// SECTION 1: ODE SYSTEM AND STATE VARIABLES
// =============================================================================
