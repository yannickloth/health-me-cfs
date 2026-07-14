#import "../../../../shared/environments.typ": *

=== Blood--Brain Barrier Model
<sec:bbb-model>

The blood--brain barrier (BBB) regulates the transport of cytokines, immune cells, and metabolites between the peripheral circulation and the CNS. BBB permeability is modeled as a function of inflammatory state:

$
P_(upright("BBB"))(t) = P_0 + Delta P dot.op frac([upright("TNF-")alpha]^2 + [upright("IL-1")beta]^2, K_(upright("BBB"))^2 + [upright("TNF-")alpha]^2 + [upright("IL-1")beta]^2)
$ <eq:bbb-permeability>

where $P_0$ is the baseline permeability and $Delta P$ is the maximum inflammation-induced increase. The squared terms reflect the cooperative nature of tight junction disruption: moderate cytokine levels have minimal effect, but sustained elevation above $K_(upright("BBB"))$ is predicted to cause progressive barrier breakdown. Cytokine transport across the BBB follows:

$
J_(upright("BBB"),i) = P_(upright("BBB")) dot.op (C_i^(upright("plasma")) - C_i^(upright("CNS"))) + T_(upright("active"),i)
$ <eq:bbb-transport>

where $T_(upright("active"),i)$ represents active (saturable) transport mechanisms for specific cytokines. This coupling ensures that peripheral immune activation in ME/CFS produces CNS effects with a delay and attenuation determined by BBB integrity---potentially explaining why neurological symptoms worsen during immune flares and improve during periods of immune quiescence.

