#import "../../../../shared/environments.typ": *

=== Whole-Body 64-Variable Model (@sec:whole-body-model)

*How to use the model.*
The 64-variable model is not intended for bedside use. Its applications are:
(1) _In silico hypothesis testing_: simulate "what if" scenarios (e.g., what happens if Complex I activity is restored but immune activation persists?) to identify which interventions are necessary vs. sufficient.
(2) _Sensitivity analysis_: identify which parameters most influence which symptoms across the heterogeneous patient population (@ch:predictive-applications).
(3) _Virtual clinical trial design_: generate virtual patient populations, simulate treatment responses, and optimize trial design before committing to expensive real trials.
(4) _Prediction generation_: the model generates specific, falsifiable predictions (e.g., the multiplicative VO₂ impairment, the 4--6 driver node minimum for controllability, the intervention window duration) that can be tested independently of the full model.

*What the model captures and what it omits.*
_Captured_: energy metabolism (glycolysis, Krebs, ETC, ROS, mitochondrial dynamics, metabolic flexibility, lactate), immune function (NK, T, B cells, cytokines, mast cells, coagulation), neuroendocrine (HPA, ANS, neurotransmitters, BH₄, sleep, pain/sensitization, CBF autoregulation), gut (motility, SIBO, permeability), connective tissue (EDS/vascular compliance), and epigenetics (methylation, acetylation). _Omitted_: microRNA networks, intracellular signaling cascades (NF-$kappa$B, JAK-STAT, mTOR), detailed receptor pharmacology, tissue-specific heterogeneity (e.g., brain vs. muscle mitochondria), individual microbiome species, and reproductive hormone effects. These omissions reflect data availability: adding them would increase parameter count beyond what current ME/CFS datasets can constrain.

*Falsification criteria for the integrated model.*
The integrated model's central prediction is _emergent multi-system dysfunction from modest individual impairments_ (the multiplicative interaction principle). *Falsified if*: comprehensive multi-system profiling reveals that ME/CFS patients have _one_ severely impaired system with others unaffected (additive, not multiplicative, pathology), or if correcting a single system (e.g., normalizing immune function alone) produces complete remission (would disprove the multi-system coupling requirement).

