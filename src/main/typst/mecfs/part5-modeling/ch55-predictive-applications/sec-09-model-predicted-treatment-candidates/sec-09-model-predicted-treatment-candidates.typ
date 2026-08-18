#import "../../../shared/environments.typ": *

== Model-Predicted Treatment Candidates
<sec:treatment-candidates>

Combining sensitivity analysis (Section @sec:sensitivity-drug-targets), controllability analysis (Section @sec:network-controllability), and the pharmacodynamic models from earlier chapters, the integrated model generates specific treatment predictions. Table @tab:treatment-predictions summarizes candidates organized by target parameter and predicted mechanism. For a clinical-translation map that pairs each driver parameter with sustaining-loop description, evidence-tiered intervention list, and recovery-timescale classification, see Section @sec:primary-mechanism-map.

#figure(
  table(
    columns: (auto, auto, auto, auto, auto),
    table.header(
      [*Target*], [*Agent*], [*Predicted mechanism*], [$S_T$], [*Model-unique?*]
    ),
    [$alpha_"CI"$], [CoQ10/ubiquinol], [Restore ETC electron transfer], [0.22], [Dose threshold],
    [$alpha_"CI"$], [Methylene blue], [Alternative electron carrier bypassing CI], [0.22], [Bypass kinetics],
    [$alpha_"CI"$], [NR/NMN], [Increase NAD⁺/NADH ratio], [0.22], [Carnitine vs NAD⁺ bottleneck ID],
    [$P_0$ (BBB)], [Palmitoylethanolamide], [Reduce BBB permeability via PPAR-$alpha$], [0.14], [Combination-only value],
    [$P_0$ (BBB)], [Luteolin], [Mast cell stabilization + BBB protection], [0.14], [Dual-target synergy],
    [$k_"exh"$], [LDN], [Modify immune exhaustion dynamics], [0.12], [Rebound timing],
    [$k_"exh"$], [Daratumumab], [Deplete CD38⁺ plasma cells (Eq. @eq:daratumumab)], [0.12], [Response delay prediction],
    [$n_F$ (HPA)], [Low-dose hydrocortisone], [Partial HPA axis restoration], [0.10], [Taper protocol optimization],
    [$K_"MC"$], [Cromolyn sodium], [Raise mast cell activation threshold], [0.08], [Monotherapy futility prediction],
    [$K_"MC"$], [Ketotifen], [H1 antagonism + mast cell stabilization], [0.08], [Histamine loop gain reduction],
    [$beta_"epoxy"$], [Nattokinase], [Reduce microclot burden], [0.07], [VO₂ improvement quantification],
    [$beta_"epoxy"$], [Triple anticoagulation], [Fibrinolysis + antiplatelet + anticoagulant], [0.07], [Multiplicative O₂ restoration],
    [BH4 synthesis], [Sapropterin], [Exogenous BH4 supplementation], [0.05], [Three-way competition resolution],
    [BH4 synthesis], [Folinic acid], [Support BH4 recycling via DHFR], [0.05], [Cofactor redistribution],
    [$cal(G)_"set"$], [Prucalopride], [$5 "-HT"_4$ agonist restores MMC cycling], [0.04], [SIBO recurrence prevention],
    [$cal(G)_"set"$], [Rifaximin], [Reduce $B_"SI"$ directly ($delta_"Abx"$ term)], [0.04], [Relapse without prokinetic],
  ),
  caption: [Model-predicted treatment candidates ranked by global sensitivity index. _Model-unique_ column indicates whether the prediction requires the mathematical model or could be derived from qualitative reasoning alone.]
) <tab:treatment-predictions>

#include "subsec-01-synergy-matrix-for-combination-therapy/subsec-01-synergy-matrix-for-combination-therapy.typ"
