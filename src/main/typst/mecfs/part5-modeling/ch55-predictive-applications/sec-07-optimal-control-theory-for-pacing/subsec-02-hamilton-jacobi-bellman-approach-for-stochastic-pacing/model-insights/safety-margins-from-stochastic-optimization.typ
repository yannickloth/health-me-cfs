#import "../../../../../shared/environments.typ": *

#model-insight(title: [Safety Margins From Stochastic Optimization])[
The stochastic formulation predicts that the optimal safety margin (gap between activity level and energy envelope) scales as $sigma sqrt(T_"recovery")$, where $sigma$ is the day-to-day variability in energy availability and $T_"recovery"$ is the PEM recovery time. Patients with longer PEM recovery (severe ME/CFS) should maintain proportionally larger safety margins---a quantitative prediction that matches clinical intuition but has never been formally derived. The model further predicts an _asymmetric_ penalty structure: under-activity has linear cost (lost function) while over-activity has convex cost (PEM with superlinear damage), explaining why conservative pacing strategies outperform aggressive ones despite similar average activity levels.
]
