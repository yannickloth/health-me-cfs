#import "../../../../shared/environments.typ": *

=== Hormetic Multi-Target Dose-Response Optimization
#label("sec:hormetic-dose-response") \
#label("spec:ldn-hormetic-window") \
#label("hyp:multi-target-dose-optimum-divergence") \
#label("spec:hormesis-multi-drug-principle") \

*Certainty: 0.25.* The hormetic dose-response framework extends the cascade logic from single-mechanism tracing to multi-target drugs where individual mechanisms have non-overlapping dose optima. Classic cascade diagnostics assume a drug hits one target at one dose --- LDN demonstrates the methodological problem: four mechanisms (TLR4/Nrf2, opioid compensatory, TRPM3, orexin) engage at different doses, and the dose-dependent diagnostic signal is as informative as the binary response/non-response. *Triggered by Kevin Lee (personal communication, July 2026).*

#include "subsubsec-01-cascade-ldn-multi-target-dose-response-non-overlapping-optima.typ"

#include "subsubsec-02-cascade-time-dependent-hormetic-windows-pulsed-dosing.typ"
