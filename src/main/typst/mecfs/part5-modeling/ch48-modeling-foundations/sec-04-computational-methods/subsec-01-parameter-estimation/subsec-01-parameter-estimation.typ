#import "../../../../shared/environments.typ": *

=== Parameter Estimation

Model parameters ($bold(theta)$) must be estimated from experimental data. For ME/CFS models, data sources include metabolomics @Naviaux2016metabolomics @Germain2020metabolic, cytokine panels @Hornig2015 @Montoya2017, two-day cardiopulmonary exercise testing (CPET) @keller2024cpet, and autonomic function assessments @Newton2007. Parameter estimation proceeds by minimizing the discrepancy between model predictions $hat(bold(y))(bold(theta))$ and observed data $bold(y)$:

$ hat(bold(theta)) = arg min_(bold(theta)) sum_(i=1)^(N) ( y_i - hat(y)_i (bold(theta)) )^2 / sigma_i^2 $ <eq:least-squares>

where $sigma_i$ is the measurement uncertainty for observation $i$. For nonlinear ODE models, this optimization problem is typically non-convex, requiring global optimization methods (e.g., differential evolution, simulated annealing) or Bayesian approaches.

