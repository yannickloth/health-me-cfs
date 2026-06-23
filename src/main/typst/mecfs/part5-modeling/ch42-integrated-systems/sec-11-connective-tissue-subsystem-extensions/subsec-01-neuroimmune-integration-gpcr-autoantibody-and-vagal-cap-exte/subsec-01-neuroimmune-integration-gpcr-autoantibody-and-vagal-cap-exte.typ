#import "../../../../shared/environments.typ": *

=== Neuroimmune Integration — GPCR Autoantibody and Vagal CAP Extensions

{{/* M29: CAP ODE vagus-immune axis (Tier 2, cert 0.35) */}}
#include "proposals/prop-cap-ode.typ"

{{/* M30: GPCR binding-internalization ODE (Tier 3, cert 0.30) */}}
#include "proposals/prop-gpcr-binding-internalization-ode.typ"

#include "speculations/spec-exosome-ode-feedback-loop.typ"

#include "speculations/spec-stochastic-bbb-exosome.typ"

#include "speculations/spec-exosome-pkpd-model.typ"

#include "../../../ch42-brain-clearance-models.typ"
