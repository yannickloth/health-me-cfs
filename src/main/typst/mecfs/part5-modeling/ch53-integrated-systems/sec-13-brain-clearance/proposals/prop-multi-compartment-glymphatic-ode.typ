#import "../../../../shared/environments.typ": *

#proposal(title: [Multi-Compartment ODE Model of Regional Clearance with Yang 2026 Exit Route Kinetics])[
*Certainty: 0.30 (model formalism; parameter values from mouse data).*

The paper's existing glymphatic framework treats clearance as a single-compartment process. Chayama et al.\ (2026) @Chayama2026BrainClearance demonstrate that brain-derived proteins drain through anatomically distinct compartments (dorsal dura, dorsal skull, basal skull, cribriform plate, nasal cavity) with different kinetics ($k_{"skull"} = -0.008$, $k_{"dura"} = 0.127--0.261$). A multi-compartment ODE model can capture this architecture:

*State variables:*
- $Q_{"dorsal"}(t)$: waste in dorsal drainage compartment (cortex $arrow.r$ dorsal dura/skull)
- $Q_{"basal"}(t)$: waste in basal drainage compartment (striatum $arrow.r$ basal skull/nasal)
- $Q_{"skull"}(t)$: waste in skull marrow compartment (slow outflow)
- $Q_{"nasal"}(t)$: waste in nasal/cribriform compartment (rapid turnover)
- $Q_{"blood"}(t)$: waste leaked into bloodstream (inflammation-induced rerouting)

*Governing equations:*
$ (d Q_{"dorsal"})/(d t) = G_{"dorsal"} - k_{"dorsal"} dot Q_{"dorsal"} + k_{"inflam,dorsal"}(t) dot Q_{"blood"} $
$ (d Q_{"basal"})/(d t) = G_{"basal"} - k_{"basal"} dot Q_{"basal"} + k_{"inflam,basal"}(t) dot Q_{"blood"} $
$ (d Q_{"skull"})/(d t) = G_{"skull"} - k_{"skull"} dot Q_{"skull"} $
$ (d Q_{"nasal"})/(d t) = G_{"nasal"} - k_{"nasal"} dot Q_{"nasal"} $
$ (d Q_{"blood"})/(d t) = sum_{"i"} k_{"inflam,i"}(t) dot Q_{"i"} - k_{"clear,blood"} dot Q_{"blood"} $

*ME/CFS parameter modifications:*
- $k_{"dorsal"}, k_{"basal"}, k_{"skull"}, k_{"nasal"}$: reduced from normal (glymphatic impairment)
- $k_{"inflam,i"}(t)$: spikes during PEM (inflammation function of cytokine levels)
- $G_i$: may be normal or elevated (mitochondrial dysfunction increases waste per ATP produced)

*Testable predictions:*
1. Regional symptom patterns (executive vs. memory vs. sensorimotor brain fog) correlate with compartment-specific $k_i$ impairment
2. PEM severity correlates with peak $k_{"inflam,i"}(t)$ magnitude
3. Treatment effect heterogeneity predicted by which compartment's $k_i$ improves (NE-targeted: dorsal/advective; AQP4-targeted: diffuse/slow; anti-inflammatory: reduces $k_{"inflam"}$)

*Limitations:* Compartment kinetic constants extrapolated from mouse data. Human compartment boundaries may differ. Requires MR-AIV compartment-resolved velocity measurements for parameter estimation, which do not yet exist for ME/CFS.
] <prop:multi-compartment-glymphatic-ode>
