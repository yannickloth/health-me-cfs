#import "../../../../shared/environments.typ": *

=== Cytokine Effects on Brain Function

Peripheral cytokines affect CNS function through two mechanisms modeled in @ch:immune-system-models: (1) transport across the blood--brain barrier (@eq:bbb-transport), and (2) activation of vagal afferents that signal to the brainstem @Dantzer2007twenty. Once in the CNS, pro-inflammatory cytokines activate microglia (@eq:microglia), disrupt neurotransmitter synthesis (@eq:tryptophan and @eq:ido-regulation), and alter HPA axis function (through direct effects on hypothalamic CRH neurons). The integrated model connects these pathways:

$
bold(C)_upright("CNS")(t) = P_upright("BBB")(t) dot.op bold(C)_upright("plasma")(t) + bold(T)_upright("active") + bold(C)_upright("local")(mu_1)
$ <eq:neuroimmune-cns>

where $bold(C)_upright("local")(mu_1)$ represents cytokines produced locally by activated microglia. @eq:neuroimmune-cns is a quasi-steady-state approximation of the full transport dynamics (@eq:bbb-transport), valid when CNS cytokine turnover is fast relative to BBB permeability changes. The CNS cytokine environment then modulates neurotransmitter dynamics, autonomic output, and HPA axis function---creating a pathway from peripheral immune activation to cognitive dysfunction, sleep disturbance, and autonomic symptoms.

