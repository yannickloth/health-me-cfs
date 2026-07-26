#import "../../../../shared/environments.typ": *

=== BH₄ Competition (Equation @eq:bh4-dynamics)

*Measurements required.*
(1) Serum BH₄ and BH₂ (why: the BH₄:BH₂ ratio indicates net oxidative stress on the cofactor pool).
(2) Serum neopterin (why: marker of GTP cyclohydrolase activity, the rate-limiting BH₄ synthesis enzyme, upregulated by IFN-$gamma$).
(3) Concurrent serotonin, dopamine metabolites (HVA), and NO metabolites (nitrate/nitrite) (why: validates the three-way competition---all three should be reduced when BH₄ is limiting).
(4) IFN-$gamma$ (why: driver of iNOS-mediated BH₄ consumption).

*Worked example.*
Healthy: BH₄ pool = 10 nmol/L, consumed by TPH (2), TH (2), eNOS (1), iNOS (0.5) = 5.5 total, with synthesis rate matching consumption. In ME/CFS with IFN-$gamma$-driven iNOS upregulation: iNOS consumption increases to 3.5 nmol/L/h. Total demand = 8.5 vs. supply of 5.5 (assuming compensatory GTPCH upregulation adds 1.5). Deficit = 1.5 nmol/L/h. The three hydroxylases compete: TPH drops from 2 to 1.3 (35% serotonin reduction), TH drops from 2 to 1.3 (35% dopamine/NE reduction), eNOS drops from 1 to 0.6 (40% NO reduction, with uncoupling producing superoxide instead). All three systems fail simultaneously from a single cofactor shortage.

*Inter-model dependencies.*
_Inputs_: IFN-$gamma$ drives iNOS BH₄ consumption; oxidative stress converts BH₄ to BH₂. _Outputs_: serotonin and catecholamine levels to neurotransmitter models; NO to endothelial function (eNOS model, @sec:coagulation-model), cerebrovascular regulation (@sec:cbf-autoregulation), and coagulation balance.

*Scope and rationale.*
The model tracks aggregate BH₄/BH₂ rather than tissue-specific pools. This is a significant simplification---brain, endothelial, and immune BH₄ pools may be independently regulated. The aggregate model captures the key insight (three-way competition from a shared cofactor) but cannot predict tissue-specific depletion patterns.

*Falsification criteria.*
The model predicts that serotonin, catecholamine, and NO deficits correlate with each other and with inflammatory burden (IFN-$gamma$). *Falsified if*: these deficits occur independently (e.g., serotonin depletion without catecholamine depletion in the same patient), indicating that the shared BH₄ bottleneck is not the dominant mechanism.

*Clinical implications.*
*Whom to treat*: patients with low BH₄:BH₂ ratio and concurrent serotonin/catecholamine/NO deficits (the "multi-domain neurovascular signature"). *How*: (1) Sapropterin (exogenous BH₄) predicted to simultaneously improve mood, cognition, autonomic function, and vascular health; (2) anti-inflammatory therapy that reduces iNOS releases BH₄ for TPH/TH/eNOS without exogenous supplementation; (3) the model predicts that folinic acid (supports BH₂ $->$ BH₄ recycling via DHFR) is a lower-cost alternative to sapropterin for mild BH₄ depletion. *Key negative prediction*: direct neurotransmitter replacement (SSRIs, methylphenidate) addresses symptoms but not the upstream bottleneck, predicting incomplete or diminishing response over time.

