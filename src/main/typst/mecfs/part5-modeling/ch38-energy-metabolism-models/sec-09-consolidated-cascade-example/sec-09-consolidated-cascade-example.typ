#import "../../../shared/environments.typ": *

== Consolidated Cascade Example
<sec:cascade-example>

The preceding worked examples illustrate each subsystem in isolation. In ME/CFS, however, the subsystems interact: impairment at one level propagates through the others. This section traces the cascade for a single patient to show how modest individual deficits compound into severe energy failure.

*Patient profile.* A moderate ME/CFS patient with 35% Complex I impairment ($alpha_(upright("CI")) = 0.65$) and 30% $"NAD"^"+"$ depletion ($gamma = 0.7$).

*Step 1: Electron transport chain --- the cliff effect.* The ATP synthase driving force depends on how far the mitochondrial membrane potential $Delta Psi$ exceeds its minimum operating threshold ($Delta Psi_(upright("threshold")) approx 110$ mV). From @eq:atp-synthase:

$
upright("Driving force") = frac(Delta Psi - Delta Psi_(upright("threshold")), Delta Psi)
$

In health, $Delta Psi approx 160$ mV: driving force $= (160 - 110)/160 = 31%$ of theoretical maximum. With $alpha_(upright("CI")) = 0.65$, reduced proton pumping lowers $Delta Psi$ to $approx 135$ mV: driving force $= (135 - 110)/135 = 19%$ of maximum. This is a *39% reduction* in ATP synthase output from 35% Complex I damage---disproportionate because the nonlinear threshold term amplifies impairment as $Delta Psi$ approaches $Delta Psi_(upright("threshold"))$.

*Step 2: Krebs cycle --- $"NAD"^"+"$ bottleneck.* The Krebs cycle flux depends on $"NAD"^"+"$ availability through @eq:krebs-flux:

$
J_(upright("Krebs")) prop frac([upright("NAD")^+], [upright("NAD")^+] + [upright("NADH")])
$

In health, this ratio $approx 0.85$. With $gamma = 0.7$ (30% $"NAD"^"+"$ depletion), the ratio drops to $approx 0.60$. Reduction: $(0.85 - 0.60)/0.85 = 29%$. The Krebs cycle feeds electrons to the ETC via NADH, so this 29% reduction in Krebs output _further_ reduces the already-impaired ETC flux. The two deficits compound multiplicatively: effective ATP production is approximately $0.61 times 0.71 = 0.43$ of healthy---a *57% total reduction* from two individually moderate impairments.

*Step 3: Reactive oxygen species --- amplified damage.* ROS production scales with unused ETC capacity (@eq:ros-production):

$
J_(upright("ROS")) prop 1 - frac(J_(upright("CI")), J_(upright("CI,max")))
$

In health, Complex I runs at ~95% capacity: ROS factor $= 1 - 0.95 = 0.05$. At $alpha_(upright("CI")) = 0.65$: ROS factor $= 1 - 0.65 = 0.35$. Ratio: $0.35/0.05 =$ *7-fold increase* in ROS production. This elevated ROS damages ETC complexes further, creating a positive feedback loop that the antioxidant system must counterbalance. If antioxidant capacity is not proportionally upregulated, oxidative damage accumulates, progressively reducing $alpha_(upright("CI"))$ and deepening the deficit.

*Combined picture.* Two individually moderate deficits (35% Complex I impairment, 30% $"NAD"^"+"$ depletion) produce: 57% reduced ATP production (multiplicative), 7-fold elevated ROS (self-reinforcing damage), and an energy envelope so narrow that ordinary activities trigger PEM. This cascade explains why ME/CFS severity is often disproportionate to any single measurable abnormality---it is the _interaction_ between subsystems that generates the clinical phenotype.

#include "limitations/cascade-example-assumptions.typ"

