#import "../../../../shared/environments.typ": *

==== The Null Ladder Algorithm

The order of probes should minimize the number of trials needed to localize the lesion by maximizing the information content of each null. This is formally a decision tree optimization problem:

1. Start with the drug that covers the MOST mechanisms (LDN: TLR4, TRPM3, endorphin, orexin). If LDN works → the differential is broad; need narrowing. If LDN fails → four mechanisms eliminated in one trial. Null LDN is more informative than positive LDN.
2. If LDN null, probe the next broadest mechanism (mitochondrial: CoQ10/NMN covers ETC, NAD⁺, and redox). Null → mitochondrial mechanisms eliminated.
3. If both LDN and mitochondrial null, probe autoimmune (immunoadsorption or IVIG). Null → GPCR AAb not rate-limiting.
4. If all three null, probe mechanical (shoe lift + cervical collar). Null → not Gerlier, not CCI.
5. If all four null, the mechanism is outside the framework's current coverage (consider: persistent viral replication in tissue sanctuary, glymphatic failure as primary, sleep architecture defect, or a mechanism not yet modeled).

At each step, a null result eliminates the broadest remaining class of mechanisms. The ladder converges on the residual set in *logarithmic* fashion — each null approximately halves the remaining hypothesis space if the probes are chosen to bifurcate the residual set evenly.
