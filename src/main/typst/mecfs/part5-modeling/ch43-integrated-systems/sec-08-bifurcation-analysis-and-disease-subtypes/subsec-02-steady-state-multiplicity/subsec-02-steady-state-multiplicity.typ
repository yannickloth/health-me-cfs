#import "../../../../shared/environments.typ": *

=== Steady-State Multiplicity

The energy--immune coupling alone (@eq:energy-immune-coupling and @eq:immune-energy-feedback) produces bistability for a range of parameter values, as hypothesized in @sec:energy-immune-coupling. The extended model, with additional positive feedback loops (mast cell--energy, coagulation--oxygenation, epigenetic--parameter), is expected to produce richer attractor structure. Numerical continuation methods (e.g., AUTO, MATCONT) applied to the steady-state equations $bold(f)(bold(x)^*, bold(theta)) = bold(0)$ can map the complete bifurcation diagram.

*The central prediction of bifurcation analysis, impossible without the mathematical model*: the integrated system supports not one but multiple distinct disease attractors, each corresponding to a different ME/CFS phenotype:

+ *Immune-dominant attractor*: high cytokine levels, elevated exhausted T cells, near-normal mitochondrial parameters. Patients in this attractor present with immune-mediated symptoms (lymphadenopathy, sore throat, flu-like malaise) and respond preferentially to immunomodulatory therapy.
+ *Metabolic-dominant attractor*: low ATP, elevated lactate, impaired metabolic flexibility, near-normal immune markers. Patients present with exercise intolerance and PEM as primary complaints and respond to mitochondrial support.
+ *Neurovascular-dominant attractor*: impaired CBF autoregulation, BH₄ depletion, autonomic dysfunction, moderate energy and immune impairment. Patients present with cognitive dysfunction, orthostatic intolerance, and pain as primary symptoms.
+ *Severe/locked attractor*: all subsystems degraded, epigenetic consolidation complete. This attractor has the deepest basin of attraction and the highest intervention threshold for escape.

Each attractor has a characteristic biomarker signature derivable from the model's steady-state equations. This subtyping is mechanistic: it derives from the mathematical structure of the coupled ODEs, not from statistical clustering of symptoms. The model predicts that patients within the same attractor basin should respond similarly to targeted interventions, providing a rational basis for treatment stratification.

An important caveat: the discrete-attractor subtype model competes with the alternative that ME/CFS heterogeneity forms a continuous spectrum, as proposed by symptom-based severity models @Nacul2020naturalhistory @Jason2010subtypes. These are empirically distinguishable: discrete attractors predict clusters in multi-omics data with gaps between them, while a continuous spectrum predicts a smooth distribution. Current data are insufficient to discriminate (most studies lack the multi-domain simultaneous measurements the model requires), and the truth may be intermediate: discrete attractors with noisy parameter variation producing apparent continuity within each basin.

