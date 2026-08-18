#import "../../../../shared/environments.typ": *

=== Sensitivity Analysis

Sensitivity analysis determines which parameters most strongly influence model outputs, guiding both experimental priorities and intervention design. Local sensitivity coefficients are defined as:

$ S_(i j) = frac(partial x_i, partial theta_j) dot frac(theta_j, x_i) $ <eq:sensitivity>

where $S_(i j)$ is the normalized sensitivity of state variable $x_i$ to parameter $theta_j$. Global sensitivity analysis (e.g., Sobol indices) partitions output variance across parameters and their interactions, accounting for nonlinearities and parameter correlations. Parameters with high sensitivity indices are candidate intervention targets; parameters with low sensitivity indices indicate robustness of the model output to biological variability.

