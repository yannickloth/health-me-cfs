#import "../../../../shared/environments.typ": *

=== Optimal Driver Node Selection

Among all minimum driver sets, the optimal set minimizes treatment cost (defined as the control energy $integral_0^T ||bold(u)(t)||^2 d t$ required to drive the system from disease attractor to health attractor). The control energy depends on the controllability Gramian:

$
bold(W)_c(T) = integral_0^T e^(bold(J)t) bold(B) bold(B)^top e^(bold(J)^top t) , d t
$ <eq:controllability-gramian>

The minimum-energy control is $bold(u)^*(t) = bold(B)^top e^(bold(J)^top (T-t)) bold(W)_c^(-1)(T) (bold(x)_"target" - e^(bold(J)T)bold(x)_0)$. Driver nodes with large diagonal entries in $bold(W)_c$ require less control energy---these are the therapeutically "easy" intervention points. The model predicts that $alpha_"CI"$ (mitochondrial Complex I) consistently requires the least control energy across all attractors, reinforcing its primacy as a therapeutic target.

