#import "../../../../shared/environments.typ": *

=== Microglial Activation
<sec:microglia-model>

Microglia are the resident immune cells of the central nervous system. PET imaging studies have reported increased TSPO binding in ME/CFS, but a later cohort found no difference @Nakatomi2014neuroinflammation @Raijmakers2021neuroinflammation. Microglia exist in a continuum of activation states, simplified here to resting ($mu_r$), activated pro-inflammatory ($mu_1$), and activated anti-inflammatory/reparative ($mu_2$):

$
frac(d mu_r, d t) &= -k_1(bold(S)) mu_r - k_2(bold(S)) mu_r + k_(upright("deact"),1) mu_1 + k_(upright("deact"),2) mu_2 \
frac(d mu_1, d t) &= k_1(bold(S)) mu_r - k_(upright("deact"),1) mu_1 - k_(12) mu_1 \
frac(d mu_2, d t) &= k_2(bold(S)) mu_r + k_(12) mu_1 - k_(upright("deact"),2) mu_2
$ <eq:microglia>

where $bold(S)$ is the vector of activation signals (including peripheral cytokines crossing the blood--brain barrier, neuronal damage signals, and ATP released from stressed cells), $k_1$ promotes pro-inflammatory activation (driven by TNF-$alpha$, IFN-$gamma$), $k_2$ promotes anti-inflammatory activation (driven by IL-4, IL-10), and $k_(12)$ is the rate of polarization from $mu_1$ to $mu_2$. In ME/CFS, the model predicts a shift toward sustained $mu_1$ dominance due to persistent peripheral inflammatory signals crossing the blood--brain barrier.

