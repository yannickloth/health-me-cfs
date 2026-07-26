#import "../../../../shared/environments.typ": *

=== Tryptophan--Kynurenine Axis (Equations @eq:tryptophan and @eq:ido-regulation)

*Measurements required.*
(1) Plasma tryptophan, kynurenine, and kynurenine/tryptophan (K/T) ratio (why: K/T ratio is a direct readout of IDO activity).
(2) Serotonin (platelet-poor plasma or CSF) (why: validates the serotonin depletion prediction).
(3) IFN-$gamma$ (why: the primary driver of IDO upregulation in the model).
(4) Quinolinic acid and kynurenic acid (why: neurotoxic vs. neuroprotective branches of the kynurenine pathway).

*Worked example.*
Healthy: $v_(upright("IDO")) = v_(upright("IDO,basal")) = 0.5$ $mu$M/h, $v_(upright("TPH")) = 1.0$ $mu$M/h. With dietary tryptophan input $I_W = 2.0$ $mu$M/h: steady-state $W approx 60$ $mu$M, serotonin production = $1.0 times 60/(K_(upright("TPH")) + 60) approx 0.86$ $mu$M/h. In ME/CFS with $[upright("IFN-") gamma] = 20$ pg/mL (vs. 5 healthy): $v_(upright("IDO")) = 0.5 + 2.0 times 20^2/(15^2 + 20^2) = 0.5 + 1.28 = 1.78$ $mu$M/h. Now IDO outcompetes TPH: tryptophan drops to ~35 $mu$M, serotonin production falls to 0.54 $mu$M/h (37% reduction), and kynurenine production increases to 1.1 $mu$M/h (doubled). This quantifies the "serotonin steal" mechanism.

*Inter-model dependencies.*
_Inputs_: IFN-$gamma$ from immune model drives IDO. _Outputs_: serotonin level affects mood, sleep (via sleep model), and pain modulation; kynurenine metabolites contribute to neurotoxicity and microglial activation.

*Scope and rationale.*
The model tracks the branch point (IDO vs. TPH competition for tryptophan) but omits downstream kynurenine metabolism (quinolinic acid, kynurenic acid, picolinic acid). This branch-point focus captures the clinically relevant serotonin depletion mechanism. A full kynurenine pathway model would require tissue-specific enzyme data (brain vs. peripheral IDO) currently unavailable for ME/CFS.

*Falsification criteria.*
The model predicts that the K/T ratio correlates with IFN-$gamma$ levels and that serotonin depletion is proportional to IDO upregulation. *Falsified if*: ME/CFS patients show serotonin depletion _without_ elevated K/T ratio (indicating a serotonin synthesis or degradation defect unrelated to IDO), or if anti-inflammatory treatment that reduces IFN-$gamma$ does not normalize K/T ratio.

*Clinical implications.*
*Whom to treat*: patients with elevated K/T ratio (measurable by standard metabolomics). *How*: the model predicts that SSRIs will have _reduced efficacy_ in these patients because the synthesis bottleneck (not reuptake) limits serotonin availability. More effective approaches: (1) reduce IFN-$gamma$ (anti-inflammatory therapy, LDN) to de-repress TPH; (2) tryptophan supplementation (but the IDO trap hypothesis predicts this may paradoxically increase kynurenine production if IDO is in the high-activity state); (3) BH₄ supplementation (addresses TPH cofactor limitation, @sec:bh4-competition). The model provides a specific _negative_ prediction: SSRIs should fail preferentially in patients with high K/T ratios---a testable pharmacogenomic hypothesis.

