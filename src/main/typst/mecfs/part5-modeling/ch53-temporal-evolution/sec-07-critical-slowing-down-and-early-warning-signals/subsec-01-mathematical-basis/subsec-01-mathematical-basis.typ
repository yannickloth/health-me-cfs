#import "../../../../shared/environments.typ": *

=== Mathematical Basis

The recovery rate from perturbation is determined by the dominant eigenvalue $lambda_1$ of the Jacobian matrix $bold(J) = partial bold(f) \/ partial bold(x)$ evaluated at the current steady state. At a saddle-node bifurcation (where the disease attractor is created or destroyed), $lambda_1 -> 0$. As the system approaches the bifurcation---whether through parameter drift (disease progression) or state-space proximity to the separatrix (accumulation of perturbations)---the recovery time $tau_upright("recovery") = -1 \/ upright("Re")(lambda_1)$ diverges.

*This produces measurable early warning signals that are a direct and unique consequence of the mathematical model*:

+ *Increased autocorrelation*: As $lambda_1 -> 0$, the autocorrelation of physiological time series (HRV, activity level, symptom scores) at lag $Delta t$ increases: $rho(Delta t) = e^(lambda_1 Delta t) -> 1$. The system "remembers" perturbations longer because it returns to baseline more slowly.
+ *Increased variance*: Fluctuations grow because the restoring force weakens: $upright("Var")(x) prop sigma^2 \/ (2 |lambda_1|) -> infinity$, where $sigma^2$ is the noise intensity.
+ *Flickering*: Near the bifurcation, noise-driven excursions occasionally reach the alternative attractor, producing brief "flickers" of the alternative state before the system returns. In ME/CFS, this manifests as intermittent symptom spikes of unusual character or duration.
+ *Asymmetric recovery*: Recovery from positive perturbations (toward the separatrix) slows more than recovery from negative perturbations (away from the separatrix), producing a skewed perturbation response.

