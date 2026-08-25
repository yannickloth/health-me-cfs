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

#roadmap(title: [Navigating This Part])[
- *Who this is for*: readers comfortable with mathematics and systems modeling; clinicians and patients can read Chapter @ch:causal-hierarchy-formal for the conclusions without the derivation detail.
- *Start here*: Chapter @ch:modeling-foundations introduces the modeling conventions. Then read the domain models in any order.
- *Recommended order*: Chapters @ch:energy-metabolism-models, @ch:immune-system-models, and @ch:neuroendocrine-models build the sub-system models; Chapter @ch:integrated-systems couples them; Chapter @ch:temporal-evolution adds time; Chapter @ch:predictive-applications applies them.
- *Skip guidance*: skip the mathematical derivation chapters if you only need the qualitative conclusions in Chapter @ch:causal-hierarchy-formal.
- *Prerequisites*: the mechanisms modeled here come from Part II.
]
] <part:modeling>
