#import "../../shared/environments.typ": *

// ch30: Mechanistic Cascade Tracing — From Trigger to Terminal Consequence
// Origin: Gerlier skeletal asymmetry hypothesis (2026-07-21) prompted tracing
// of ALL major hypotheses.

= Mechanistic Cascade Tracing: From Hypothesis to Clinical Probe
<ch:mechanistic-cascade-tracing>

#chapter-abstract[
For every major mechanistic hypothesis in the ME/CFS paper, this chapter traces the full downstream cascade from the proposed trigger to its terminal neurochemical, metabolic, and immunological consequences. At each node: (1) which existing medications could intercept, (2) the expected clinical effect if that node is rate-limiting, and (3) the expected clinical effect if that node is NOT rate-limiting — i.e., what a null response tells you about where the bottleneck really is.

*How to use this chapter:* Look up a hypothesis, follow the cascade from trigger to symptom, note which medication at which node provides the most specific diagnostic information. Each node's null response pushes the bottleneck downstream. A pattern of responses across multiple nodes localizes the lesion.

*Structure:* Each hypothesis is presented in three parts: (a) a cascade diagram in text form (trigger $arrow.r$ step1 $arrow.r$ step2 $arrow.r$ ... $arrow.r$ symptom), (b) at each step, the drug(s) that could intercept, and (c) the differential diagnostic logic: "if drug X works, the lesion is at or above step N; if it doesn't, the lesion is below step N."

*Disclaimer:* This chapter is a constructed mechanistic framework prompted by the Gerlier skeletal asymmetry hypothesis (2026-07-21, personal communication) and extended to all major hypotheses in the paper. Drug-response logic throughout is mechanistic inference — not clinical evidence. No medication listed here should be prescribed based on this chapter alone. Certainty values are the chapter author's assessment based on the supporting evidence for each cascade link. Where not explicitly stated, default certainties apply: 0.25--0.40 for mechanistic-inference content, 0.10 for the Gerlier model (per the paper). Each section closes with a *Consequence* line summarizing practical significance and an *Origin* line identifying provenance.
]

*Abbreviations used throughout:*

/ *3β-HSD / 17β-HSD*:  3β-/17β-hydroxysteroid dehydrogenase; androgenic steroid conversion enzymes
/ *5-HTP*:  5-hydroxytryptophan; serotonin precursor
/ *AAb*:  autoantibody
/ *AADC*:  aromatic L-amino acid decarboxylase; converts L-DOPA to dopamine
/ *ACh*:  acetylcholine
/ *AChE*:  acetylcholinesterase
/ *AChR*:  acetylcholine receptor
/ *AIMM*:  acquired ischemic mitochondrial myopathy
/ *ALA*:  alpha-lipoic acid; antioxidant and pyruvate dehydrogenase cofactor
/ *AMPK*:  AMP-activated protein kinase; cellular energy sensor
/ *ANC*:  absolute neutrophil count
/ *ANT*:  adenine nucleotide translocator; mitochondrial inner membrane ATP/ADP exchanger
/ *AQP2*:  aquaporin-2; renal collecting duct water channel
/ *ATP*:  adenosine triphosphate
/ *BBB*:  blood-brain barrier
/ *BH4*:  tetrahydrobiopterin; tyrosine hydroxylase cofactor
/ *BP*:  blood pressure
/ *cAMP*:  cyclic adenosine monophosphate
/ *CAP*:  cholinergic anti-inflammatory pathway
/ *Ca²⁺*:  calcium ion
/ *CCI*:  craniocervical instability
/ *cGMP*:  cyclic guanosine monophosphate
/ *CK*:  creatine kinase; phosphocreatine buffer enzyme
/ *CNS*:  central nervous system
/ *COMPASS-31*:  Composite Autonomic Symptom Score
/ *COMT*:  catechol-O-methyltransferase; catecholamine degrading enzyme
/ *CoQ10*:  coenzyme Q10; ubiquinol/ubiquinone
/ *COX-2*:  cyclooxygenase-2
/ *CPET*:  cardiopulmonary exercise testing
/ *CREB*:  cAMP response element-binding protein
/ *CRP*:  C-reactive protein
/ *CSF*:  cerebrospinal fluid
/ *CYP*:  cytochrome P450
/ *CysLT1*:  cysteinyl leukotriene receptor type 1; montelukast target
/ *DA*:  dopamine
/ *DAMI*:  dopaminergic asymmetry measurement index (composite: striatal fluorodeoxyglucose PET, Composite Autonomic Symptom Score, aripiprazole slope)
/ *DAMPs*:  damage-associated molecular patterns
/ *DAT*:  dopamine transporter
/ *DBH*:  dopamine-beta-hydroxylase
/ *DCA*:  dichloroacetate; pyruvate dehydrogenase kinase inhibitor
/ *DDR*:  discoidin domain receptor
/ *DHEA*:  dehydroepiandrosterone; neurosteroid and androgen precursor
/ *DMF*:  dimethyl fumarate
/ *DMV*:  dorsal motor nucleus of vagus
/ *DNRI*:  dopamine-norepinephrine reuptake inhibitor
/ *DORA*:  dual orexin receptor antagonist
/ *DPP-4*:  dipeptidyl peptidase-4; incretin-degrading enzyme
/ *DRG*:  dorsal root ganglion
/ *DTBZ*:  dihydrotetrabenazine; vesicular monoamine transporter 2 PET ligand
/ *EBV*:  Epstein-Barr virus
/ *EC cells*:  enterochromaffin cells; gut serotonin-producing cells
/ *ECM*:  extracellular matrix
/ *ESR*:  erythrocyte sedimentation rate
/ *ET-1*:  endothelin-1; potent vasoconstrictor
/ *ETA*:  endothelin receptor type A; mediates vasoconstriction
/ *ETC*:  electron transport chain
/ *FAO*:  fatty acid oxidation
/ *FDG*:  fluorodeoxyglucose; glucose analogue for PET imaging
/ *G-CSF*:  granulocyte colony-stimulating factor
/ *GABA*:  gamma-aminobutyric acid
/ *GAD*:  glutamate decarboxylase; gamma-aminobutyric acid synthesis enzyme
/ *GI*:  gastrointestinal
/ *GLP-1*:  glucagon-like peptide-1; incretin hormone
/ *GLP-1R*:  glucagon-like peptide-1 receptor
/ *GPCR*:  G protein-coupled receptor
/ *GSH*:  glutathione; primary intracellular antioxidant
/ *Gαq*:  G protein alpha-q subunit; activates PLC-β
/ *HCA2/GPR109A*:  hydroxycarboxylic acid receptor 2; niacin receptor on mast cells
/ *HCN*:  hyperpolarization-activated cyclic nucleotide-gated channel
/ *hEDS*:  hypermobile Ehlers-Danlos syndrome
/ *HHV-6*:  human herpesvirus 6
/ *HIF-1α*:  hypoxia-inducible factor 1 alpha
/ *HIT*:  histamine intolerance
/ *HPA*:  hypothalamic-pituitary-adrenal axis
/ *HR*:  heart rate
/ *HRV*:  heart rate variability
/ *HSC*:  haematopoietic stem cell
/ *HSP70*:  heat shock protein 70
/ *HTN*:  hypertension
/ *H₂S*:  hydrogen sulfide; gaseous vasodilator and mitochondrial electron donor
/ *IA*:  immunoadsorption
/ *IDO*:  indoleamine 2,3-dioxygenase
/ *IENFD*:  intraepidermal nerve fibre density
/ *IFN-γ*:  interferon gamma
/ *IgE*:  immunoglobulin E
/ *IgG*:  immunoglobulin G
/ *IL*:  interleukin
/ *ILMI*:  ipsilateral limb metabolic index (FDG-PET comparison of left vs right limb glucose uptake)
/ *IMPase*:  inositol monophosphatase; lithium target in phosphatidylinositol 4,5-bisphosphate resynthesis
/ *iNOS*:  inducible nitric oxide synthase
/ *IP receptor*:  prostacyclin I2 receptor; mediates vasodilation
/ *IVIG*:  intravenous immunoglobulin
/ *KAT*:  kynurenine aminotransferase
/ *KMO*:  kynurenine 3-monooxygenase
/ *KYNA*:  kynurenic acid; N-methyl-D-aspartate receptor antagonist
/ *LC-NE*:  locus coeruleus-norepinephrine
/ *LDN*:  low-dose naltrexone
/ *LTD4*:  leukotriene D4; bronchoconstrictor and mast cell activation syndrome mediator
/ *LTP*:  long-term potentiation
/ *MAO-B*:  monoamine oxidase B; degrades dopamine
/ *MCAS*:  mast cell activation syndrome
/ *MMP*:  matrix metalloproteinase
/ *mPTP*:  mitochondrial permeability transition pore
/ *MRGPRX2*:  Mas-related G protein-coupled receptor X2; mast cell receptor
/ *MRS*:  magnetic resonance spectroscopy
/ *mTORC1*:  mechanistic target of rapamycin complex 1
/ *mTORC2*:  mechanistic target of rapamycin complex 2; regulates cell survival and cytoskeleton
/ *NAC*:  N-acetylcysteine
/ *NAD⁺*:  nicotinamide adenine dinucleotide
/ *NCLX*:  mitochondrial sodium/calcium/lithium exchanger
/ *NCX1*:  Na⁺/Ca²⁺ exchanger 1
/ *NE*:  norepinephrine
/ *NET*:  norepinephrine transporter
/ *NF-κB*:  nuclear factor kappa-B
/ *NHE1*:  Na⁺/H⁺ exchanger 1
/ *NK cell*:  natural killer cell
/ *NMDA*:  N-methyl-D-aspartate
/ *Nrf2*:  nuclear factor erythroid 2-related factor 2; antioxidant master regulator
/ *NRI*:  norepinephrine reuptake inhibitor
/ *NSAID*:  non-steroidal anti-inflammatory drug
/ *NTS*:  nucleus tractus solitarius
/ *OH*:  orthostatic hypotension
/ *OI*:  orthostatic intolerance
/ *OXPHOS*:  oxidative phosphorylation
/ *PARP*:  poly-ADP ribose polymerase
/ *PDE4*:  phosphodiesterase 4
/ *PDH*:  pyruvate dehydrogenase
/ *PDK*:  pyruvate dehydrogenase kinase
/ *PEA*:  palmitoylethanolamide; PPAR-alpha agonist
/ *PEM*:  post-exertional malaise
/ *PFC*:  prefrontal cortex
/ *PGD2*:  prostaglandin D2; mast-cell-derived prostaglandin
/ *PGDS*:  prostaglandin D2 synthase
/ *PGE2*:  prostaglandin E2
/ *PGH2*:  prostaglandin H2; COX product and PGDS/PGES substrate
/ *PIP2*:  phosphatidylinositol 4,5-bisphosphate
/ *PKA*:  protein kinase A; cAMP-dependent kinase
/ *PKC*:  protein kinase C
/ *PLA2*:  phospholipase A2
/ *PLC-β*:  phospholipase C beta
/ *POTS*:  postural orthostatic tachycardia syndrome
/ *PPAR-alpha*:  peroxisome proliferator-activated receptor alpha
/ *QUIN*:  quinolinic acid; N-methyl-D-aspartate receptor agonist from kynurenine pathway
/ *RAAS*:  renin-angiotensin-aldosterone system
/ *RAGE*:  receptor for advanced glycation end-products
/ *REE*:  resting energy expenditure
/ *RLS*:  restless legs syndrome
/ *ROS*:  reactive oxygen species
/ *RVLM*:  rostral ventrolateral medulla; primary sympathetic output nucleus
/ *S100B*:  S100 calcium-binding protein B; astrocyte damage marker
/ *SA node*:  sinoatrial node
/ *SC*:  supercomplex
/ *SERT*:  serotonin transporter
/ *SFN*:  small-fiber neuropathy
/ *SIBO*:  small intestinal bacterial overgrowth
/ *sigma1R*:  sigma-1 receptor; endoplasmic reticulum chaperone regulating autophagy and ER stress
/ *SkQ1*:  plastoquinonyl-decyl-triphenylphosphonium; mitochondrial-targeted antioxidant
/ *SNRI*:  serotonin-norepinephrine reuptake inhibitor
/ *SSRI*:  selective serotonin reuptake inhibitor
/ *SV2A*:  synaptic vesicle glycoprotein 2A; levetiracetam binding site
/ *taVNS*:  transcutaneous auricular vagus nerve stimulation
/ *TCA*:  tricarboxylic acid cycle
/ *TDO*:  tryptophan 2,3-dioxygenase
/ *TLR4*:  Toll-like receptor 4
/ *TNF-α*:  tumour necrosis factor alpha
/ *TPH1*:  tryptophan hydroxylase 1; peripheral serotonin synthesis enzyme (gut EC cells)
/ *TPH2*:  tryptophan hydroxylase 2; central nervous system serotonin synthesis enzyme (raphe nuclei)
/ *Treg*:  regulatory T cell; CD4+CD25+FoxP3+
/ *TRPC*:  transient receptor potential canonical
/ *TRPM3*:  transient receptor potential melastatin 3; non-selective cation channel
/ *TRPM7*:  transient receptor potential melastatin 7
/ *TRPV1*:  transient receptor potential vanilloid 1; capsaicin receptor; mediates heat/pain and arteriolar vasoconstriction
/ *TSPO*:  translocator protein; microglial activation PET marker
/ *TXA2*:  thromboxane A2; platelet-derived vasoconstrictor
/ *VEGF*:  vascular endothelial growth factor
/ *VLM*:  ventrolateral medulla
/ *VMAT2*:  vesicular monoamine transporter 2
/ *WASF3*:  Wiskott-Aldrich syndrome protein family member 3; respiratory supercomplex assembly inhibitor
/ *ΔΨm*:  mitochondrial membrane potential (proton gradient across inner mitochondrial membrane)

#include "sec-01-ion-channel-hypotheses/sec-01-ion-channel-hypotheses.typ"

#include "sec-02-mitochondrial-hypotheses/sec-02-mitochondrial-hypotheses.typ"

#include "sec-03-autoimmune-hypotheses/sec-03-autoimmune-hypotheses.typ"

#include "sec-04-neuroinflammatory-hypotheses/sec-04-neuroinflammatory-hypotheses.typ"

#include "sec-05-connective-tissue-hypotheses/sec-05-connective-tissue-hypotheses.typ"

#include "sec-06-autonomic-hypotheses/sec-06-autonomic-hypotheses.typ"

#include "sec-07-gerlier-skeletal-asymmetry-4-pathway-model/sec-07-gerlier-skeletal-asymmetry-4-pathway-model.typ"

#include "sec-08-integrative-models/sec-08-integrative-models.typ"

#include "sec-09-cross-hypothesis-convergence-patterns/sec-09-cross-hypothesis-convergence-patterns.typ"

#include "sec-10-side-effects-as-diagnostic-probes/sec-10-side-effects-as-diagnostic-probes.typ"

#include "sec-11-synthesis-differential-diagnostic-algorithm-extended/sec-11-synthesis-differential-diagnostic-algorithm-extended.typ"

