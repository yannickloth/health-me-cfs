#import "../../../../shared/environments.typ": *

=== Bayesian Inference

Bayesian methods are preferred when parameter uncertainty must be quantified---a critical requirement for ME/CFS models given the limited and heterogeneous data available. Bayes' theorem gives the posterior distribution over parameters:

$ p(bold(theta) | bold(y)) = frac(p(bold(y) | bold(theta)) space p(bold(theta)), p(bold(y))) $ <eq:bayes>

where $p(bold(y) | bold(theta))$ is the likelihood, $p(bold(theta))$ is the prior (encoding existing biological knowledge), and $p(bold(y))$ is the marginal likelihood (model evidence). Posterior distributions are typically computed via Markov chain Monte Carlo (MCMC) sampling. The resulting credible intervals on parameters propagate directly to credible intervals on model predictions, providing honest uncertainty quantification.

