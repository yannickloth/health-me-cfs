#import "../../../../shared/environments.typ": *

=== Coverage of Part II Pathophysiology

The models were chosen to formalize the mechanisms discussed in Part II. Table @tab:model-coverage maps each pathophysiological domain from Part II to its corresponding model(s) in Part V.

#figure(
  table(
    columns: (auto, auto, auto),
    table.header(
      [*Part II Domain*], [*Part V Model(s)*], [*Chapter*],
    ),
    [Energy metabolism (Ch.~@ch:energy-metabolism)],
    [Glycolysis, Krebs, ETC, ROS, PEM, mitochondrial QC, lactate, carnitine],
    [Ch.~@ch:energy-metabolism-models],

    [Immune dysfunction (Ch.~@ch:immune-dysfunction)],
    [NK cell, cytokine network, T/B cell, viral reactivation, mast cell, coagulation],
    [Ch.~@ch:immune-system-models],

    [Neurological dysfunction (Ch. 8)],
    [Central sensitization, small fiber neuropathy, CBF autoregulation],
    [Ch.~@ch:neuroendocrine-models],

    [Neuroendocrine (Ch. 9)],
    [HPA axis, tryptophan--kynurenine, BH4, catecholamines],
    [Ch.~@ch:neuroendocrine-models],

    [Cardiovascular (Ch.~@ch:cardiovascular)],
    [Autonomic balance, OI/POTS, endothelial dysfunction],
    [Chs.~@ch:neuroendocrine-models, @ch:immune-system-models],

    [Gut microbiome (Ch.~@ch:gut-microbiome)],
    [GI motility, SIBO dynamics, gut--brain--immune axis],
    [Ch.~@ch:integrated-systems],

    [Sleep dysfunction (Ch. 12)],
    [Sleep--wake cycle, circadian model],
    [Ch.~@ch:neuroendocrine-models],

    [Integrative models (Ch.~@ch:integrative-models)],
    [64-variable whole-body model, bistability, bifurcation],
    [Ch.~@ch:integrated-systems],

    [Cross-disease (Ch. 14)],
    [EDS coupling, mast cell triangle],
    [Ch.~@ch:integrated-systems],
  ),
  caption: [Mapping of pathophysiological domains (Part II) to mathematical models (Part V).],
) <tab:model-coverage>

