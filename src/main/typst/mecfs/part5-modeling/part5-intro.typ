#import "../shared/front-matter.typ": doc-part
#import "../shared/environments.typ": note-env, roadmap

#doc-part([Mathematical and Computational Modeling])[
This part presents mathematical and computational models of ME/CFS pathophysiology, including:

- *Biochemical process models*: Detailed mathematical descriptions of energy metabolism, immune function, and other key processes
- *Temporal evolution models*: How symptoms develop and progress over time
- *Response to stimuli*: Mathematical modeling of how the body responds to exertion, infections, treatments, and other inputs
- *Multi-system integration*: Models connecting different physiological systems
- *Predictive models*: Simulating disease trajectories and treatment responses
- *Causal hierarchy analysis*: Formal testing of which mechanisms are trigger-capable root causes versus amplifiers versus consequences, using sensitivity analysis, bifurcation theory, and lock removal protocols

These models synthesize biological understanding into quantitative frameworks that can generate testable predictions and guide therapeutic strategies. The part concludes with a capstone analysis (Chapter @ch:causal-hierarchy-formal) that formally tests the causal hierarchy proposed in Part II using the integrated 67-variable ODE model.

#note-env(title: [Causal-Hierarchy Thread Concludes])[
This part formally tests the *trigger-capable root causes, amplifiers, and downstream consequences* first classified qualitatively in Part II (Chapter @ch:causal-hierarchy) and catalogued as hypotheses in Part IV (Chapter @sec:hypothesis-speculation-registry, Chapter @ch:proposed-studies). Chapter @ch:causal-hierarchy-formal closes the thread.
]

#roadmap(title: [How to Use This Part])[
*For patients*: read only Chapter @ch:causal-hierarchy-formal for the qualitative conclusions of the formal models; the derivation detail requires mathematics. Read it with the understanding that these are model predictions, not proof.

*For caregivers*: this part is mathematical modeling and has little direct caregiver use. The qualitative conclusions in Chapter @ch:causal-hierarchy-formal are the only section likely relevant.

*For clinicians*: read Chapter @ch:predictive-applications for treatment-selection and drug-target-ranking outputs, and Chapter @ch:causal-hierarchy-formal for which mechanisms the models identify as root causes. Skip the derivation chapters.

*For researchers*: read Chapter @ch:modeling-foundations for conventions, then the domain models (@ch:energy-metabolism-models, @ch:immune-system-models, @ch:neuroendocrine-models) in any order, Chapter @ch:integrated-systems and Chapter @ch:temporal-evolution for integration, and Chapter @ch:causal-hierarchy-formal for the capstone.
]
] <part:modeling>
