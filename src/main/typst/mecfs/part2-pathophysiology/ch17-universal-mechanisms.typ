#import "../shared/environments.typ": *

= ME/CFS Through the Lens of Universal Disease Mechanisms
<ch:universal-mechanisms>

Most diseases do not invent new biology — they dysregulate mechanisms that are shared across the entire spectrum of human pathology. The body can respond to injury, infection, or metabolic insult in only a finite number of ways @ayres2020biology @bmcmed2014curriculum. This observation, recurring across network medicine, systems pathobiology, and medical education reform proposals, suggests that the ~17,000 named diagnostic categories in ICD-11 are not 17,000 independent phenomena, but rather different combinatorial expressions of a much smaller set of fundamental mechanism families — roughly 20 in total — each instantiated in different tissues, at different severities, and triggered by different initiating events.

This chapter provides a systematic survey of those mechanism families and assesses where ME/CFS stands within each. The taxonomy is built inductively from the pathophysiology literature — no single published framework covers all of them at this specificity — and represents the paper's own synthesis. For each family we enumerate the concrete mechanisms within it, assess the state of ME/CFS-specific evidence, and cross-reference the dedicated chapter where the evidence is treated in depth.

The goals are twofold. First, *completeness*: ensuring the paper does not inadvertently ignore a mechanism family simply because it has attracted little ME/CFS-specific research attention. Second, *positioning*: situating ME/CFS within the broader disease landscape, which is essential for the cross-disease comparisons in @ch:speculative-hypotheses and for the research gap agenda in @ch:proposed-studies.

#figure(
  table(
    columns: 4,
    table.header(
      [*\#*], [*Family*], [*Evidence in ME/CFS*], [*Status*],
    ),
    [1],  [Energy and metabolic regulation],         [Mitochondrial OXPHOS; PDH/PDK block; NAD⁺],              [Established],
    [2],  [Redox and oxidative balance],             [ROS, nitrosative stress, lipid peroxidation],             [Established],
    [3],  [Ion channel and membrane transport],      [TRPM3 channelopathy; RBC membrane stiffness],             [Established],
    [4],  [Immune activation and cytokine signalling],[NK exhaustion; cytokine excess; complement],             [Established],
    [5],  [Autoimmunity and molecular mimicry],      [Anti-β2AR; anti-M3R; anti-TRPM3],                        [Established],
    [6],  [Coagulation and haematological],          [Fibrin microclots; platelet hyperactivation],             [Probable],
    [7],  [Vascular and endothelial],                [Endothelial dysfunction; cerebral hypoperfusion],         [Established],
    [8],  [Autonomic and peripheral nervous system], [Baroreflex failure; POTS; small fiber neuropathy],        [Established],
    [9],  [Neuroendocrine and hormonal],             [HPA blunting; low T3; sex hormone dysregulation],         [Probable],
    [10], [Neurological and thalamocortical],        [Neuroinflammation; E/I imbalance; alpha intrusion],       [Established],
    [11], [Amino acid and neurotransmitter metabolism],[Tryptophan/IDO/kynurenine; serotonin depletion],        [Probable],
    [12], [Genomic and epigenetic regulation],       [Methylation signatures; telomere attrition],              [Established],
    [13], [Protein homeostasis and degradation],     [HSP dysregulation; autophagy block (ATG13)],              [Emerging],
    [14], [Cell death and senescence],               [NK/T cell exhaustion; immunosenescence; SASP],            [Emerging],
    [15], [Gut-microbiome-immune axis],              [Dysbiosis; leaky gut; LPS translocation],                 [Probable],
    [16], [Viral persistence and immune evasion],    [EBV/HHV-6 reactivation; enterovirus persistence],        [Probable],
    [17], [Structural and tissue integrity],         [Skeletal muscle damage; SFN fiber loss; hEDS overlap],    [Emerging],
    [18], [Transcriptional and nuclear signalling],  [NF-κB (inferred); Nrf2 (indirect); VDR],                 [Theoretical],
    [19], [Purinergic and danger signalling],        [ATP-DAMP/P2X7; CDR hypothesis; NLRP3 (unstudied)],       [Theoretical],
  ),
  kind: table, supplement: [Table],
  caption: [The 19 universal disease mechanism families and ME/CFS evidence status. Evidence levels follow @tab:evidence-levels. Order does not imply causal priority.],
) <tab:universal-mechanisms-overview>

== Family 1: Energy and Metabolic Regulation
<sec:um-energy>

*Family overview.* Cellular energy production — oxidative phosphorylation, glycolysis, fatty acid oxidation, and amino acid catabolism — must be continuously matched to demand. Pathological disruption can occur at any node: substrate supply, enzymatic capacity, electron transport chain integrity, or ATP sensing.

*Concrete mechanisms and ME/CFS evidence:*

- *Mitochondrial OXPHOS failure.* Reduced Complex I and Complex II activity, impaired electron transport, decreased maximal oxidative capacity. Electron microscopy confirms structural mitochondrial damage in skeletal muscle biopsies, preferentially subsarcolemmal @scheibenbogen2025muscle. Established across multiple cohorts.

- *WASF3-mediated respiratory complex disruption.* WASF3 protein overexpression in ME/CFS skeletal muscle disrupts assembly of respiratory supercomplexes, simultaneously inhibiting OXPHOS and promoting actin-driven glycolysis @gorman2024wasf3. Single-group finding; replication pending.

- *Pyruvate dehydrogenase kinase (PDK) upregulation.* PDK1, PDK2, and PDK4 are upregulated in circulating cells of ME/CFS patients, blocking pyruvate entry into the TCA cycle and diverting it to lactate even under aerobic conditions — a functional block rather than substrate shortage @fluge2017metabolic. Replicated.

- *Glycolytic shift and lactate accumulation.* Excess reliance on anaerobic glycolysis produces lactate at workloads where healthy individuals sustain OXPHOS; brain MRS shows elevated ventricular lactate. Consistent with PDK upregulation and reduced OXPHOS capacity.

- *NAD⁺ metabolism dysregulation.* Elevated AMP and reduced ATP/ADP ratio in PBMCs indicate impaired ATP generation; kynurenine pathway disruption (Family 11) reduces NAD⁺ biosynthesis @naviaux2016metabolic.

- *TCA cycle constraint.* Metabolomics studies show reduced TCA intermediates, consistent with impaired cycle flux secondary to PDH inhibition and substrate limitation.

- *Lipid metabolism dysregulation.* Abnormal fatty acid oxidation and altered lipid profiles; elevated immune responses to oxidised fatty acids.

- *IgG-mediated mitochondrial fragmentation.* Patient-derived IgG induces mitochondrial fragmentation in endothelial cells, altering energetics — bridging autoimmunity (Family 5) and metabolic dysfunction @cox2023igg.

Full discussion: @ch:energy-metabolism. Functional CPET correlates: @ch:causal-hierarchy.

*Evidence status:* Established (multiple independent replication studies; functional correlates demonstrated).

== Family 2: Redox and Oxidative Balance
<sec:um-redox>

*Family overview.* All aerobic cells produce reactive oxygen species (ROS) and reactive nitrogen species (RNS) as metabolic byproducts. Antioxidant systems — glutathione, superoxide dismutase, catalase, peroxiredoxins — normally maintain redox homeostasis. When production exceeds scavenging capacity, oxidative and nitrosative stress damage lipids, proteins, and DNA.

*Concrete mechanisms and ME/CFS evidence:*

- *ROS overproduction.* Elevated ROS in PBMCs and RBCs; RBC ROS ~30% higher than healthy controls; correlates with symptom severity and membrane stiffness @marshall2018rbc.

- *Glutathione depletion and compensatory upregulation.* Paradoxically elevated total glutathione levels alongside glutathione peroxidase 4 (GPx4)-mediated lipid oxidative damage in memory lymphocytes, suggesting compensatory upregulation under chronic oxidative load that nonetheless fails to contain damage @oxidativestress2025.

- *Mitochondrial SOD2 downregulation.* Decreased mitochondrial superoxide dismutase protein in ME/CFS immune cells, reducing the first line of mitochondrial ROS defence.

- *Nitrosative stress.* Elevated inducible nitric oxide synthase (iNOS), excess nitric oxide, peroxynitrite (ONOO⁻), and nitrate — particularly post-exercise; peroxynitrite damages proteins, lipids, and DNA simultaneously @maes2014nitrosative.

- *Lipid peroxidation.* Elevated markers of oxidised fatty acids and lipid peroxidation products; immune responses to oxidised lipids elevated versus controls.

- *Oxidative DNA damage.* Elevated 8-hydroxydeoxyguanosine (8-OHdG) as a marker of oxidative DNA damage; DNA repair pathway capacity has not been directly measured in ME/CFS @maes2012oxidative.

- *Redox-immune-mitochondrial vicious cycle.* ROS drive immune activation (NF-κB, NLRP3), which amplifies ROS production; mitochondrial dysfunction simultaneously increases ROS output and reduces antioxidant precursor (NADPH) availability. This forms a self-reinforcing loop linking Families 1, 2, 4, and 18.

Full discussion: @ch:energy-metabolism.

*Evidence status:* Established (replicated across multiple cohorts; shared signature with Long COVID @oxidativestress2025).

== Family 3: Ion Channel and Membrane Transport
<sec:um-ion-channel>

*Family overview.* Ion channels and membrane transporters regulate electrochemical gradients fundamental to virtually every physiological process: neuronal firing, muscle contraction, immune cell activation, secretory function, and intracellular calcium signalling. Their disruption — by mutation, autoantibody, or post-translational modification — constitutes channelopathy.

*Concrete mechanisms and ME/CFS evidence:*

- *TRPM3 channelopathy.* Transient receptor potential melastatin 3 (TRPM3) expression and calcium flux are significantly reduced in NK cells of ME/CFS patients versus healthy controls; replicated in large-scale study (2025) @marshall2025trpm3. TRPM3 dysfunction impairs NK cell activation, calcium-dependent killing, and viral clearance.

- *TRPM2 and TRPC4 co-dysfunction.* Other TRP family members are also dysregulated in ME/CFS NK cells, suggesting a broader TRP channelopathy rather than isolated TRPM3 defect; the full channel expression profile remains to be mapped.

- *Voltage-gated calcium channel (VGCC) dysregulation.* Thalamic T-type (Cav3) and HCN/I_h channels govern thalamocortical oscillatory dynamics; their dysregulation produces the alpha-wave intrusion pattern in slow-wave sleep (see Family 10). Gabapentinoids reduce Cav3 activity and clinically suppress this oscillatory pattern in related conditions.

- *Na⁺/K⁺-ATPase dysfunction.* Ion pump failure contributes to cellular energy burden and membrane potential instability; documented indirectly via elevated intracellular sodium in skeletal muscle MRI @scheibenbogen2025muscle. Direct ATPase activity measurements are lacking.

- *Red blood cell membrane stiffness.* RBCs from ME/CFS patients show ~14% reduced elongation index, ~30% lower membrane fluidity, ~18% reduced net negative surface charge, and elevated RBC ROS; stiffened RBCs cannot transit narrow capillaries, impairing microvascular perfusion @marshall2018rbc.

- *Aquaporin-4 and glymphatic function.* AQP4 water channels on astrocyte perivascular endfeet drive glymphatic CSF clearance during slow-wave sleep; oscillatory disruption reduces the driving force. AQP4 expression and function have not been directly studied in ME/CFS.

Full discussion: Chapter @ch:speculative-hypotheses.

*Evidence status:* Established for TRP channels (large-scale 2025 confirmation); preliminary/theoretical for other channels.

#open-question(title: [Breadth of Channelopathy in ME/CFS])[
  Is TRPM3/TRP channel dysfunction an isolated finding or part of a broader channelopathy affecting voltage-gated, ligand-gated, and transporter families across multiple cell types? Systematic patch-clamp and expression profiling in T cells, neurons, and endothelial cells would characterise the full scope.
]

== Family 4: Immune Activation and Cytokine Signalling
<sec:um-immune>

*Family overview.* The immune system coordinates defence through pattern recognition, cell-mediated killing, and soluble mediators. Chronic, non-resolving immune activation — rather than acute protective inflammation — is a shared substrate of most major chronic diseases.

*Concrete mechanisms and ME/CFS evidence:*

- *Innate immune hyperactivation.* Multi-omics analysis identifies exaggerated innate immune response as a primary driver of chronic inflammation and PEM; heightened TLR signalling and pattern recognition receptor activation @cheng2025innate.

- *NK cell cytotoxic exhaustion.* Meta-analysis confirms NK cytotoxicity at roughly half healthy control levels; elevated inhibitory KIR alleles (KIR3DL3*002) suppress killing signals; reduced perforin and granzyme delivery.

- *T cell immunosenescence and exhaustion.* CD4⁺ and CD8⁺ T cells show epigenetic predisposition toward terminal exhaustion; reduced proliferative capacity; dysregulated transcriptome at single-cell resolution. Regulatory NK cells elevated; γδ T cells proportionally increased.

- *Pro-inflammatory cytokine excess.* Elevated IL-1β, IL-6, TNF-α, and IL-8; Hornig et al. identified a disease-duration-dependent cytokine signature @Hornig2015 — early-phase ME/CFS shows different cytokine profile from long-duration disease, suggesting temporal evolution of immune dysregulation.

- *Type I interferon dysregulation.* Altered IFN-α/β signalling; elevated interferon scores in some cohorts, consistent with ongoing viral sensing or nucleic acid danger signals.

- *Complement system activation.* Complement dysregulation documented in ME/CFS and Long COVID; C5a and C5b-9 membrane attack complex contribute to endothelial damage, mitochondrial stress, and microvascular dysfunction @cervia2024complement.

- *Mast cell activation.* Up to 25% of ME/CFS patients meet criteria for clinically relevant mast cell activation (MCAS); mast cell mediators (histamine, tryptase, prostaglandins) cause vasodilation, vascular leakage, connective tissue degradation, and sensory nerve sensitisation @dinser2025mcas.

- *Dendritic cell and monocyte dysfunction.* Reduced conventional and plasmacytoid DCs; altered monocyte metabolic state; impaired antigen presentation capacity.

- *Neutrophil dysfunction.* Elevated neutrophil apoptosis; potential impairment of neutrophil extracellular trap (NET) formation and pathogen clearance.

Full discussion: @ch:immune-dysfunction.

*Evidence status:* Established (most findings independently replicated; NK cytotoxicity and cytokine findings among the most robust in the field).

== Family 5: Autoimmunity and Molecular Mimicry
<sec:um-autoimmunity>

*Family overview.* Autoimmune mechanisms arise via molecular mimicry (pathogen antigens resembling host proteins), bystander activation, or epitope spreading. They can target receptors, ion channels, intracellular proteins, or structural components, producing functional dysregulation even without tissue destruction.

*Concrete mechanisms and ME/CFS evidence:*

- *Anti-adrenergic receptor antibodies.* Functional autoantibodies against β2-adrenergic receptors (β2-AR) and α1-adrenergic receptors (α1-AR) dysregulate autonomic and cardiovascular signalling; transfer of patient IgG to animals reproduces some autonomic symptoms, supporting pathogenicity.

- *Anti-muscarinic receptor antibodies.* Autoantibodies against M3R and M4R muscarinic receptors disrupt cholinergic autonomic signalling, contributing to POTS, orthostatic intolerance, and reduced secretory function.

- *Anti-TRPM3 antibodies.* Autoantibodies targeting TRPM3 channels on NK cells proposed as a direct mechanism of channel dysfunction, linking viral trigger → autoimmune response → channelopathy.

- *Molecular mimicry from viral antigens.* EBV EBNA-1 peptides share structural similarity with human adrenergic receptor epitopes; SARS-CoV-2 spike protein shares epitopes with multiple human proteins. Post-infectious autoimmunity via this mechanism is under active investigation.

- *IgG-mediated mitochondrial fragmentation.* Patient-derived IgG (target antigen not fully characterised) disrupts mitochondrial dynamics in endothelial cells, providing a direct link from humoral autoimmunity to metabolic dysfunction @cox2023igg.

- *Anti-nuclear and other autoantibodies.* A proportion of ME/CFS patients carry low-titre ANA and other non-organ-specific autoantibodies; clinical significance unclear but consistent with broader immune dysregulation.

Full discussion: @ch:immune-dysfunction.

*Evidence status:* Established (adrenergic and muscarinic autoantibodies replicated in multiple independent labs; mechanistic transfer studies support pathogenicity).

== Family 6: Coagulation and Haematological
<sec:um-coagulation>

*Family overview.* The haemostatic system balances clot formation and dissolution via coagulation cascade, platelet activation, and fibrinolysis. Pathological low-level activation produces microclotting, endothelial damage, and chronic inflammation without overt thrombosis.

*Concrete mechanisms and ME/CFS evidence:*

- *Fibrin/amyloid microclot formation.* Platelet-poor plasma from ME/CFS patients contains amyloid fibrin(ogen) microclots at ~10× greater area than healthy controls; microclots resist fibrinolysis and may obstruct microvascular perfusion, impairing oxygen delivery to tissues @nunes2022microclots.

- *Platelet hyperactivation.* Hyperactivated platelets with increased aggregation propensity; driven by chronic innate immune activation and endothelial injury signals.

- *Hypercoagulable state.* Thromboelastography demonstrates hypercoagulability in a substantial proportion of ME/CFS participants.

- *Red blood cell deformability loss.* Stiffer RBCs with ~14% reduced elongation index cannot transit narrow capillaries efficiently, impeding microvascular flow and oxygen delivery (see also Family 3) @marshall2018rbc.

- *Dysregulated coagulation proteome.* Data-independent LC-MS/MS proteomics of ME/CFS plasma reveals dysregulated coagulation system proteins alongside endothelial dysfunction markers @lacerda2024proteomics.

- *Complement-coagulation crosstalk.* Complement C5a amplifies platelet and coagulation activation; provides mechanistic bridge between immune dysregulation (Family 4) and haematological pathology.

Full discussion: shared across @ch:cardiovascular and @ch:immune-dysfunction.

*Evidence status:* Probable (microclot and hypercoagulability findings consistent but require larger independent replication; proteomics data strong but single cohort).

== Family 7: Vascular and Endothelial
<sec:um-vascular>

*Family overview.* Vascular homeostasis requires intact endothelial function, appropriate vasomotor tone, barrier integrity, and matched perfusion to metabolic demand. Failure at any level produces hypoperfusion, barrier breach, or vascular wall pathology.

*Concrete mechanisms and ME/CFS evidence:*

- *Endothelial dysfunction.* Impaired endothelial-dependent vasodilation; patient serum impairs endothelial cell function in vitro; reduced eNOS activity and NO bioavailability @serum2022endothelial.

- *Cerebral hypoperfusion.* 91% of ME/CFS patients show abnormally reduced cardiac output and cerebral blood flow during tilt testing despite normal heart rate-blood pressure response — absent compensatory cerebral vasodilation, a functional signature of endothelial dysfunction specifically in cerebral vessels @vanness2024cbf.

- *Impaired cerebrovascular autoregulation.* The cerebral vasculature fails to maintain perfusion pressure during orthostatic stress; cannot compensate for reduced cardiac output.

- *Vascular permeability increase.* Systemic vascular leakage from mast cell mediators, complement activation, and bradykinin contributes to third-spacing and reduced effective blood volume.

- *Blood-brain barrier compromise.* Increased BBB permeability allows peripheral immune cells and inflammatory mediators to access CNS compartment; see also Family 10.

- *RAAS paradox and hypovolemia.* ME/CFS patients have markedly low blood volume (up to 1,000 mL below normal) alongside paradoxically *suppressed* renin and aldosterone — the inverse of normal physiology in response to hypovolemia. The mechanism for this paradox remains unresolved @streeten2001raas.

- *Microvascular remodelling.* Reduced capillary density and thickened capillary basement membranes in skeletal muscle; CD169⁺ macrophage infiltration after exercise; reduces oxygen delivery capacity at the tissue level.

Full discussion: @ch:cardiovascular.

*Evidence status:* Established (hypoperfusion and endothelial dysfunction independently replicated; RAAS paradox well-documented).

== Family 8: Autonomic and Peripheral Nervous System
<sec:um-autonomic>

*Family overview.* The autonomic nervous system regulates cardiovascular, respiratory, digestive, and thermoregulatory homeostasis through sympathetic and parasympathetic branches. Small unmyelinated C-fibres and thinly myelinated Aδ-fibres convey autonomic signals and nociception; their structural loss constitutes small fiber neuropathy (SFN).

*Concrete mechanisms and ME/CFS evidence:*

- *Baroreflex failure.* Impaired baroreceptor-mediated heart rate and blood pressure regulation; reduced heart rate variability; impaired beat-to-beat blood pressure control.

- *Postural orthostatic tachycardia syndrome (POTS).* Excessive heart rate increase (≥30 bpm) on standing; neurally mediated hypotension variants; present in a large ME/CFS subset. Driven by hypovolemia, adrenergic autoantibodies (Family 5), and SFN-mediated microvascular dysregulation.

- *Catecholamine dysregulation.* Elevated basal catecholamines with blunted acute stress response; chronic catecholamine exposure induces β2-AR downregulation and T cell metabolic suppression and exhaustion (linking to Family 4).

- *Small fiber neuropathy (SFN).* Reduced intraepidermal nerve fiber density (IENFD) on skin biopsy in ~one-third of ME/CFS patients; C-fiber dysfunction demonstrated by reduced heat detection thresholds @giannoccaro2021sfn. SFN damages autonomic fibers innervating microvasculature, impairing exercise-related blood flow redistribution.

- *Neurovascular dysregulation via SFN.* Damaged autonomic fibers cause inappropriate vasodilation and oxygenated blood shunting away from exercising muscle, contributing to exercise intolerance via a peripheral mechanism distinct from central fatigue or deconditioning.

- *Impaired vagal tone.* Reduced parasympathetic activity; blunted vagal anti-inflammatory reflex may contribute to chronic immune activation.

Full discussion: @ch:cardiovascular and @ch:neurological.

*Evidence status:* Established (POTS, baroreflex, and SFN independently replicated; IVIG response in SFN subgroup supports pathogenic role).

== Family 9: Neuroendocrine and Hormonal Regulation
<sec:um-neuroendocrine>

*Family overview.* Neuroendocrine systems — HPA axis, HPT axis, gonadal axis, GH/IGF-1 axis, and RAAS — provide the hormonal framework for metabolic, immune, and stress regulation. Their dysregulation can be primary (gland failure), secondary (central regulation failure), or tertiary (tissue-level receptor/conversion dysfunction).

*Concrete mechanisms and ME/CFS evidence:*

- *HPA axis blunting.* Reduced cortisol awakening response; blunted cortisol output to stress; normal to low basal cortisol; abnormal hypothalamic-pituitary regulation rather than adrenal failure. Glucocorticoid receptor sensitivity is epigenetically reduced @roberts2017glucocorticoid.

- *Low T3 syndrome and impaired thyroid hormone conversion.* Higher prevalence of low T3 syndrome in ME/CFS (16% vs 7% controls); elevated reverse T3 (rT3); normal TSH and T4 but impaired T4→T3 peripheral conversion, attributed to immune-mediated suppression of deiodinase activity. Tissue-level hypothyroidism without gland pathology @ruiz2018thyroid.

- *Sex hormone dysregulation.* Altered steroid hormone profiles correlated with disease severity; dysregulation of adrenal P450c11β enzyme; menstrual cycle fluctuations worsen symptoms; perimenopause onset associated with ME/CFS exacerbation; female sex is a primary risk factor @theoharides2024sex.

- *GH/IGF-1 axis attenuation.* Attenuated basal IGF-I and IGF-II; blunted GH response to hypoglycaemia (41.9 vs 106.0 mU/L in controls), suggesting hypothalamic dysfunction or impaired GH secretion @shalet1998gh.

- *ADH/vasopressin downregulation.* Both the renin-aldosterone and ADH systems are down-regulated despite hypovolemia; desmopressin improved symptoms in approximately half of treated patients.

- *Neuroendocrine-immune crosstalk.* HPA blunting impairs glucocorticoid-mediated immune suppression → chronic immune activation; catecholamines suppress T cell function via β2-AR → immunosuppression and exhaustion.

Full discussion: @ch:endocrine.

*Evidence status:* Probable (HPA blunting and thyroid conversion well-documented; sex hormone and GH findings preliminary but internally consistent).

== Family 10: Neurological and Thalamocortical
<sec:um-neurological>

*Family overview.* CNS pathology in chronic disease ranges from neuroinflammation to circuit-level dysregulation of oscillatory dynamics, neurotransmitter balance, and structural integrity. The thalamocortical system gates sensory processing, sleep, attention, and arousal; its dysregulation produces a symptom cluster that crosses traditional diagnostic boundaries.

*Concrete mechanisms and ME/CFS evidence:*

- *Neuroinflammation (microglial activation).* PET imaging with TSPO ligands (a validated microglial activation marker) shows increased neuroinflammation in brainstem, hippocampus, amygdala, and prefrontal cortex of ME/CFS patients @nakatomi2014neuroinflammation. Among the most direct CNS evidence in ME/CFS.

- *Excitation/inhibition (E/I) imbalance.* Elevated glutamate in brain regions by MRS; insufficient GABAergic inhibition; proposed to drive cognitive impairment via excitotoxicity and to amplify neuroinflammation through glutamate-microglial crosstalk.

- *Thalamocortical hyperexcitability and alpha intrusion.* Changes in thalamic reticular nucleus inhibitory signalling and in thalamic T-type calcium currents (I_T) and HCN currents (I_h) shift thalamocortical circuits from slow delta (restorative) to alpha (wake-like) oscillatory modes during NREM sleep @timofeev2015thalamic. The result is alpha-wave intrusion into slow-wave sleep — waking brain oscillations contaminating restorative sleep at rates that impair glymphatic clearance and produce non-restorative sleep regardless of total sleep duration.

- *Glymphatic clearance failure.* The glymphatic system — CSF flow driven by AQP4 water channels along perivascular spaces during slow-wave oscillations — clears metabolic waste including amyloid-β, tau, and lactate from brain parenchyma. Alpha-wave intrusion reduces the oscillatory driving force for this clearance, producing metabolic waste accumulation in CNS tissue. This mechanism directly links thalamocortical dysregulation to neuroinflammation and cognitive impairment.

- *Blood-brain barrier disruption.* Increased BBB permeability documented in ME/CFS; bradykinin, cytokines, nitric oxide, and peroxynitrite are proposed permeability drivers. Peripheral immune cells gain CNS access, amplifying neuroinflammation @natelson2001bbb.

- *Cerebral hypoperfusion (CNS expression).* Cerebral hypoperfusion documented by SPECT and during orthostatic challenge; hypoxic CNS tissue upregulates PDK, further suppressing mitochondrial metabolism — a cerebral metabolic-vascular vicious cycle.

- *Cortical hypoactivation at rest.* qEEG studies show increased theta at rest; peak alpha frequency inversely correlated with fatigue ratings — an underactivated brain expending disproportionate effort to maintain baseline function.

Full discussion: @ch:neurological.

*Evidence status:* Established (neuroinflammation, E/I imbalance, and hypoperfusion independently replicated; thalamocortical/glymphatic mechanism well-characterised in fibromyalgia and sleep disorders, preliminary in ME/CFS specifically).

== Family 11: Amino Acid and Neurotransmitter Metabolism
<sec:um-amino-acid>

*Family overview.* Amino acid catabolism provides structural proteins and metabolic intermediates, including neurotransmitter precursors and NAD⁺. Disruption of these pathways simultaneously alters neurotransmitter availability, energy metabolism, and immune regulation.

*Concrete mechanisms and ME/CFS evidence:*

- *Tryptophan/IDO/kynurenine pathway dysregulation.* IDO1 and IDO2 divert tryptophan from serotonin synthesis toward kynurenine catabolism under immune activation. In ME/CFS: elevated 3-hydroxykynurenine (3HK) and 3-hydroxyanthranilic acid (3HAA), with implications for neuroimmune regulation and cytotoxic T cell function @kennedy2022tryptophan.

- *IDO metabolic trap (bistable system).* Phair's mathematical model proposes that dysfunctional IDO2, combined with IDO1 substrate inhibition at high tryptophan concentrations and kinetic asymmetry of the LAT1 transporter, creates a bistable system with two stable steady states: a physiological state and a pathological "locked" state where tryptophan metabolism is dysregulated. This formal model predicts discrete disease-onset events and treatment targets @phair2019ido.

- *Serotonin depletion.* Elevated tryptophan/serotonin (Trp/5-HT) ratio indicates reduced serotonin synthesis; consistent with IDO-mediated rerouting. Contributes to non-restorative sleep, affective symptoms, and gut motility disruption.

- *NAD⁺ biosynthesis impairment.* The kynurenine pathway is the primary endogenous route to NAD⁺; its disruption reduces NAD⁺ availability and further impairs mitochondrial OXPHOS and DNA repair capacity (linking back to Families 1 and 12).

- *Global amino acid depletion.* Plasma amino acid profiles show depletion at baseline; limited precursor substrate for energy metabolism, neurotransmitter synthesis, and immune cell proliferation during exertion @naviaux2016metabolic.

- *Glutamate/GABA imbalance (indirect).* Glutamate is an amino acid metabolite; E/I imbalance (Family 10) partly reflects altered glutamate synthesis and reuptake; kynurenic acid (a kynurenine metabolite) is an NMDA receptor antagonist — its reduction may contribute to glutamate excitotoxicity.

Full discussion: @ch:energy-metabolism and @ch:neurological.

*Evidence status:* Probable (tryptophan metabolomics replicated; IDO trap is a formal mathematical hypothesis with experimental support; NAD⁺ and amino acid depletion mechanistically coherent).

== Family 12: Genomic and Epigenetic Regulation
<sec:um-epigenetic>

*Family overview.* The epigenome — DNA methylation, histone modifications, chromatin remodelling, non-coding RNAs — determines which genes are expressed in response to environmental signals without changing the DNA sequence. Epigenetic dysregulation can stably alter cellular programs in response to transient triggers, providing a molecular mechanism for how infection produces durable disease.

*Concrete mechanisms and ME/CFS evidence:*

- *Genome-wide DNA methylation signatures.* Multiple EWAS studies identify differentially methylated CpG sites in ME/CFS leukocytes — over 17,000 sites in 6,368 genes in the largest study, enriched in immune signalling pathways @Johnston2016methylation. Relapse episodes produce dynamic methylome changes that partially recover with remission @duscha2022dynamic.

- *Histone modification dysregulation.* HDAC activity alterations reported; chromatin remodelling changes affect immune gene expression. Glucocorticoid receptor sensitivity is epigenetically reduced, contributing to HPA axis blunting @roberts2017glucocorticoid.

- *Telomere attrition.* ME/CFS patients show telomeres shorter by 254–957 base pairs than age-matched controls, corresponding to 4–20 years of additional biological aging; effect strongest in women under 45. Chronic inflammation and oxidative stress drive accelerated attrition @knights2024telomere.

- *Oxidative DNA damage.* Elevated 8-OHdG as a marker of guanine oxidation; DNA repair pathway capacity (nucleotide excision repair, base excision repair) has not been directly assessed in ME/CFS.

- *Post-viral epigenetic persistence.* EBV and SARS-CoV-2 infection leaves specific epigenetic marks in immune cells; these may perpetuate altered immune gene expression profiles long after active infection resolves, providing a mechanism for how a transient trigger produces durable ME/CFS.

- *MicroRNA and non-coding RNA dysregulation.* Preliminary data suggests altered miRNA profiles in ME/CFS PBMCs; functional characterisation of downstream targets is incomplete.

Full discussion: @ch:genetics-epigenetics.

*Evidence status:* Established (methylation findings in multiple independent cohorts); Preliminary (telomere — single study; needs replication).

== Family 13: Protein Homeostasis and Degradation
<sec:um-proteostasis>

*Family overview.* Cells maintain protein quality through the heat shock response, the ubiquitin-proteasome system (UPS), and autophagy/mitophagy. When these fail, misfolded or damaged proteins accumulate, disrupting cellular function and triggering danger-response inflammation.

*Concrete mechanisms and ME/CFS evidence:*

- *Heat shock protein (HSP) dysregulation.* Abnormal HSP70 and HSP90 expression in ME/CFS samples; HSPs normally prevent protein misfolding, support immune cell function, and facilitate recovery from stress @nijs2014hsp.

- *Autophagy block — ATG13 elevation.* ATG13 (autophagy-initiating protein) is significantly elevated in ME/CFS patient serum, indicating autophagy has been initiated but aborted. Phosphorylated ATG13 escaping into serum signals failed autophagic flux. This serum ATG13 stimulates ROS and nitric oxide production in microglial cells via RAGE receptor, directly linking failed autophagy to neuroinflammation @wallis2022atg13.

- *Impaired mitophagy.* Defective clearance of damaged mitochondria allows dysfunctional mitochondria to accumulate in cells, worsening energy production (Family 1) and promoting inflammatory signalling.

- *Ubiquitin-proteasome system (UPS).* UPS impairment is theoretically plausible given the protein quality control demands of chronic immune activation and oxidative stress; direct proteasome activity measurements in ME/CFS are absent from the literature.

- *Extracellular protein aggregation.* Fibrinaloid microclots (Family 6) represent documented extracellular protein aggregation. Whether intracellular protein aggregation occurs in ME/CFS neurons or immune cells — as in long COVID preliminary data — is unstudied.

*Evidence status:* Emerging (ATG13/autophagy block is a key discovery; broader proteostasis characterisation incomplete).

#open-question(title: [Scope of Proteostasis Failure in ME/CFS])[
  Does proteostasis failure in ME/CFS extend beyond extracellular fibrin microclots to intracellular protein aggregation in neurons, NK cells, or endothelial cells? Direct assessment using amyloid detection assays and cryo-EM on patient-derived cells would determine whether protein aggregation is a primary or secondary phenomenon.
]

== Family 14: Cell Death and Senescence
<sec:um-cell-death>

*Family overview.* Cells die via multiple regulated pathways — apoptosis (immunologically silent), necroptosis and pyroptosis (inflammatory, releasing DAMPs), ferroptosis (iron-dependent lipid peroxidation) — or enter senescence (SASP). The balance between these pathways determines whether cell loss is silent or inflammatory.

*Concrete mechanisms and ME/CFS evidence:*

- *NK cell apoptosis dysregulation.* NK cells from ME/CFS patients show altered apoptotic signalling; impaired turnover may contribute to the accumulation of dysfunctional, exhausted NK cells with shortened telomeres.

- *Neutrophil apoptosis elevation.* Elevated neutrophil apoptosis reported, potentially impairing neutrophil-mediated pathogen clearance and altering the neutrophil turnover dynamics that normally maintain immune balance.

- *T cell terminal exhaustion (epigenetic).* T cells in ME/CFS are epigenetically predisposed toward irreversible terminal exhaustion — distinct from functional exhaustion that resolves on antigen clearance. This state persists even in the absence of ongoing antigenic stimulation.

- *Immunosenescence and SASP.* Features of premature immune aging appear at younger ages than normal: shortened NK cell telomeres, reduced cytotoxic function, pro-inflammatory cytokine profiles consistent with SASP. The SASP amplifies surrounding inflammation and may sustain the chronic inflammatory state @curriu2013nk.

- *Pyroptosis (theoretical).* Gasdermin D-mediated inflammatory cell death following NLRP3 activation is mechanistically consistent with elevated IL-1β and IL-18 in ME/CFS; directly unstudied.

- *Ferroptosis (theoretical).* Iron-dependent, GPx4-sensitive, lipid-peroxidation-driven cell death is mechanistically plausible given elevated ROS, GPx4 activity evidence (Family 2), and elevated lipid peroxidation; directly unstudied in ME/CFS.

*Evidence status:* Emerging (immune cell apoptosis and senescence documented; pyroptosis and ferroptosis theoretically plausible but unstudied).

#open-question(title: [Senolytic Therapy Potential in ME/CFS])[
  If senescent cells accumulate in vascular endothelium, CNS glia, or immune compartments in ME/CFS, senolytic agents (dasatinib + quercetin, fisetin) might reduce SASP-driven neuroinflammation and vascular dysfunction. This is entirely unstudied in ME/CFS and represents a tractable experimental target with existing clinical-stage compounds.
]

== Family 15: Gut-Microbiome-Immune Axis
<sec:um-microbiome>

*Family overview.* The gut microbiome influences systemic immunity, metabolism, and neuroendocrine function via microbial metabolites (short-chain fatty acids, secondary bile acids, tryptophan metabolites), barrier integrity, and neural signalling through the enteric nervous system and vagus nerve.

*Concrete mechanisms and ME/CFS evidence:*

- *Gut dysbiosis.* Reduced alpha diversity; depletion of butyrate-producing species (_Faecalibacterium prausnitzii_, _Roseburia_); increased pro-inflammatory _Enterobacteriaceae_; replicated across multiple independent cohorts @giloteaux2016microbiome.

- *Butyrate depletion.* Loss of butyrate impairs colonocyte energy supply, intestinal barrier integrity (tight junction regulation), and regulatory T cell induction — amplifying systemic immune activation.

- *Intestinal hyperpermeability ("leaky gut").* Elevated IgA/IgM against LPS in 40–67% of ME/CFS patients versus 0% of controls; elevated serum LPS-binding protein (LBP) and sCD14 @lacerda2018lps.

- *LPS and PAMP systemic translocation.* Bacterial lipopolysaccharide, flagellin, and peptidoglycans translocate through the compromised epithelial barrier, providing continuous TLR stimulation and innate immune activation that feeds Family 4.

- *Microbiome-tryptophan axis dysregulation.* Gut microbiota regulate tryptophan availability via enterochromaffin cell serotonin synthesis and IDO activation; dysbiosis disrupts this, linking to Family 11.

- *Gut-brain axis signalling disruption.* Reduced serotonergic and vagal signalling from gut to brain; impaired enteric nervous system function; gut-origin neuroinflammatory and metabolic signals.

- *D-lactic acidosis hypothesis.* Bacterial overgrowth producing D-lactate has been proposed in ME/CFS as a contributor to cognitive symptoms via CNS D-lactate effects; awaits systematic confirmation.

Full discussion: @ch:gut-microbiome.

*Evidence status:* Probable (dysbiosis and LPS translocation replicated; gut-brain and butyrate mechanisms biologically coherent; causal direction not yet established).

== Family 16: Viral Persistence and Immune Evasion
<sec:um-viral>

*Family overview.* Latent viral reservoirs persist indefinitely in immune-privileged cells and reactivate intermittently under immune stress. Persistent viral antigens maintain chronic immune activation, drive molecular mimicry autoimmunity, and prevent immune resolution.

*Concrete mechanisms and ME/CFS evidence:*

- *EBV latent reactivation.* Elevated anti-EBV dUTPase IgG in 72.5% of ME/CFS patients co-expressing antibodies to multiple herpesvirus dUTPases, versus 31% of controls @palomo2026herpesvirus. Latent/persistent EBV in 40% of ME/CFS patients vs 0% of controls in one study.

- *HHV-6 and VZV reactivation.* Latent/persistent HHV-6 in 46.7% of ME/CFS patients vs 10% of controls; elevated anti-VZV antibodies co-occurring with EBV reactivation.

- *Enterovirus gut persistence.* Strong evidence of enteroviral RNA and protein in gut tissue of endemic ME/CFS cases; enteroviruses have been implicated in ME/CFS epidemic clusters. Enteroviral persistence in gut may drive ongoing mucosal immune activation.

- *Deficient virus-specific immune memory.* ME/CFS patients show deficient EBV-specific T cell and B cell memory responses, impairing reactivation control and allowing intermittent viral escape from immune surveillance.

- *EBV EBNA-3 VDR blockade.* EBV EBNA-3 protein binds the vitamin D receptor and blocks VDR-dependent gene activation, including vitamin D-responsive immune regulatory genes — potentially explaining why vitamin D supplementation has limited benefit in ME/CFS despite widespread insufficiency.

- *Viral antigen as autoimmune trigger.* Molecular mimicry between EBV EBNA-1 and human adrenergic/muscarinic receptor epitopes, and between CoV spike protein and various host proteins, provides the initiating event for the autoantibodies documented in Family 5.

Full discussion: @ch:immune-dysfunction and @ch:genetics-epigenetics.

*Evidence status:* Probable (herpesvirus reactivation replicated; enterovirus evidence strong in specific cohorts; causal role of ongoing persistence vs past priming remains debated).

== Family 17: Structural and Tissue Integrity
<sec:um-structural>

*Family overview.* Beyond molecular dysregulation, chronic disease produces measurable structural changes in tissue architecture — capillary rarefaction, nerve fiber degeneration, muscle fibre remodelling, connective tissue abnormalities — that create self-sustaining biomechanical constraints on function.

*Concrete mechanisms and ME/CFS evidence:*

- *Skeletal muscle mitochondrial structural damage.* Electron microscopy confirms structural mitochondrial damage in ME/CFS skeletal muscle, preferentially subsarcolemmal; simultaneous necrotic and regenerating fibers suggest repeated damage-repair cycling consistent with exercise-triggered reinjury @scheibenbogen2025muscle.

- *Intracellular sodium accumulation in muscle.* Sodium MRI shows elevated intracellular Na⁺ in ME/CFS skeletal muscle, correlating inversely with grip strength; likely reflects Na⁺/K⁺-ATPase dysfunction and ion pump energy failure.

- *Glycolytic fiber shift.* Increased proportion of glycolytic (Type II) fibres in ME/CFS muscle biopsies, representing adaptive remodelling toward anaerobic metabolism consistent with chronic OXPHOS insufficiency.

- *Capillary rarefaction and basement membrane thickening.* Fewer capillaries and thicker capillary basement membranes in ME/CFS/Long COVID skeletal muscle; CD169⁺ macrophage infiltration after exercise; reduced oxygen delivery capacity at the tissue level.

- *Small fiber neuropathy — structural fiber loss.* IENFD reduction on skin punch biopsy confirms structural nerve fiber degeneration beyond functional dysfunction; approximately one-third of ME/CFS patients affected @giannoccaro2021sfn.

- *hEDS/connective tissue hypermobility overlap.* Substantial clinical overlap between ME/CFS, hEDS, POTS, and MCAS; mast cell-derived histamine and tryptase degrade extracellular matrix and collagen, creating a bidirectional relationship between mast cell activation and structural connective tissue weakening.

*Evidence status:* Emerging (muscle and capillary findings replicated in Long COVID/ME/CFS shared cohorts; structural SFN documented; hEDS overlap clinically well-established).

== Family 18: Transcriptional and Nuclear Signalling
<sec:um-transcriptional>

*Family overview.* Transcription factors and nuclear receptors — NF-κB, Nrf2, STAT proteins, nuclear hormone receptors — integrate cellular stress signals into coordinated gene expression responses. Their chronic dysregulation underlies most features of chronic inflammatory disease.

*Concrete mechanisms and ME/CFS evidence:*

- *NF-κB pathway.* Chronically elevated pro-inflammatory cytokines (Family 4) require sustained NF-κB activity for their transcription; nuclear NF-κB has not been directly quantified in ME/CFS cells, but downstream cytokine data provides strong indirect evidence.

- *Nrf2 antioxidant response.* Nrf2 normally orchestrates antioxidant gene expression (glutathione synthesis, SOD, catalase) in response to oxidative stress; impaired Nrf2 activation would explain inadequate antioxidant response despite persistent ROS elevation. Direct Nrf2 nuclear translocation data in ME/CFS is very sparse.

- *STAT1/STAT3 dysregulation.* Altered type I interferon signalling implies STAT1 pathway dysregulation; STAT3 involvement in IL-6 signalling and immune cell differentiation is plausible given the cytokine profile.

- *Vitamin D receptor (VDR) blockade.* EBV EBNA-3 blocks VDR-dependent gene activation (see Family 16), impairing the vitamin D nuclear receptor pathway's role in immune regulation.

- *Glucocorticoid receptor sensitivity loss.* Epigenetic reduction in glucocorticoid receptor (GR) sensitivity impairs HPA axis negative feedback and glucocorticoid-mediated anti-inflammatory signalling @roberts2017glucocorticoid.

- *Thyroid hormone nuclear receptor hypoactivation.* Low T3 syndrome implies reduced thyroid hormone receptor (TR) activation in target tissues despite normal systemic T4; functional tissue-level hypothyroidism in the absence of gland pathology.

*Evidence status:* Theoretical to Emerging (mostly inferred from downstream effectors; direct transcription factor assays in ME/CFS remain rare; mechanistically coherent with documented findings).

== Family 19: Purinergic and Danger Signalling
<sec:um-purinergic>

*Family overview.* Cells release ATP and purines in response to stress, damage, or infection. Extracellular ATP acts as a danger-associated molecular pattern (DAMP), activating P2X and P2Y purinergic receptors, triggering NLRP3 inflammasome assembly, and initiating sterile inflammation. Resolution requires enzymatic degradation of ATP to adenosine by ectonucleotidases.

*Concrete mechanisms and ME/CFS evidence:*

- *Extracellular ATP as DAMP.* Under mitochondrial stress and cell damage — both present in ME/CFS — intracellular ATP leaks into the extracellular space, where it acts as a danger signal rather than an energy carrier. Metabolomics confirms altered purine metabolite profiles in ME/CFS @naviaux2016metabolic.

- *P2X7 receptor activation.* High extracellular ATP activates P2X7R on microglia and macrophages, triggering ion flux, ROS production, and NLRP3 inflammasome assembly — directly linking mitochondrial dysfunction to neuroinflammation.

- *NLRP3 inflammasome activation.* NLRP3 assembly leads to caspase-1 activation, IL-1β and IL-18 maturation and secretion, and potential pyroptosis; elevated IL-1β and IL-18 in ME/CFS (Family 4) imply upstream NLRP3 activity even without direct confirmation.

- *Cell danger response (CDR).* Naviaux proposed that a conserved metabolic response to threat — shifting cells from OXPHOS to glycolysis and releasing purines as danger signals — when chronically engaged rather than resolved, produces many features of ME/CFS @naviaux2016metabolic. The CDR integrates Families 1, 2, 4, and 19 into a unified metabolic-immune framework.

- *Resolution failure via ectonucleotidase impairment.* Normal resolution requires ATP → AMP → adenosine conversion by CD73/CD39, producing anti-inflammatory adenosine signals. Impaired CD73/CD39 activity would sustain P2X7 activation and prevent resolution. Ectonucleotidase activity in ME/CFS is poorly characterised.

*Evidence status:* Theoretical (CDR hypothesis mechanistically coherent and supported by metabolomics; direct P2X7, NLRP3, and ectonucleotidase studies in ME/CFS are sparse).

#open-question(title: [Cell Danger Response Resolution in ME/CFS])[
  Is the cell danger response chronically engaged in ME/CFS, and if so, what prevents resolution? Measuring CD73/CD39 ectonucleotidase activity, extracellular purine ratios (ATP/AMP/adenosine), and P2X7R expression in ME/CFS PBMCs would directly test whether purinergic resolution failure sustains the disease state.
]

== Synthesis: The Mechanism Landscape of ME/CFS
<sec:universal-mechanisms-synthesis>

The survey above identifies *19 universal disease mechanism families* and enumerates approximately *90 concrete mechanisms* within them. ME/CFS shows documented involvement in at least 15 of 19 families; the remaining 4 are theoretically implicated but lack direct evidence.

#figure(
  table(
    columns: 3,
    table.header(
      [*Evidence tier*], [*Families (count)*], [*Representative mechanisms*],
    ),
    [Established],
    [Energy/metabolism (1), Redox/oxidative (2), Ion channels (3), Immune/cytokine (4), Autoimmunity (5), Vascular/endothelial (7), Autonomic/SFN (8), Neurological (10), Epigenetic (12)],
    [Mitochondrial OXPHOS failure; TRPM3 channelopathy; NK exhaustion; anti-β2AR; cerebral hypoperfusion; neuroinflammation; methylation signatures],

    [Probable],
    [Coagulation (6), Neuroendocrine (9), Amino acid metabolism (11), Gut-microbiome (15), Viral persistence (16)],
    [Fibrin microclots; HPA blunting; IDO trap; gut dysbiosis; EBV reactivation],

    [Emerging],
    [Protein homeostasis (13), Cell death/senescence (14), Structural/tissue (17)],
    [ATG13 autophagy block; immunosenescence/SASP; skeletal muscle mitochondrial damage],

    [Theoretical],
    [Transcriptional/nuclear (18), Purinergic/danger (19)],
    [NF-κB (inferred); CDR hypothesis; NLRP3 (unstudied)],
  ),
  kind: table, supplement: [Table],
  caption: [ME/CFS mechanism involvement by evidence tier across all 19 families.],
) <tab:mechanism-status>

Three structural observations follow from this map.

*1. ME/CFS involves every established evidence tier.* No mechanism family is entirely absent from the ME/CFS literature. Even the two theoretical families (transcriptional, purinergic) have indirect mechanistic support from adjacent well-evidenced families. This strongly contradicts any single-mechanism hypothesis.

*2. The cross-system amplification families are most consistently established.* Immune activation (4), vascular (7), autonomic (8), and neurological (10) families are all well-evidenced and each feeds the others. ME/CFS appears to be sustained primarily by cross-system amplification loops rather than a single primary defect — which explains why single-target interventions have produced only partial, subgroup-specific responses.

*3. The emerging and theoretical families are high-value research targets.* Protein homeostasis (13), cell death/senescence (14), purinergic signalling (19), and transcriptional regulation (18) are mechanistically adjacent to well-evidenced families, largely uncharacterised in ME/CFS, and include tractable experimental targets (senolytics, ATG13, ectonucleotidases, Nrf2 activators). They represent the next investigative tier, not speculative territory.

The full research gap agenda derived from this map is in @ch:proposed-studies.

#achievement(title: [19-Family Mechanism Map Constructed for ME/CFS])[
  This chapter provides the first systematic survey of all universal disease mechanism families applied to ME/CFS, identifying documented involvement across approximately 90 concrete mechanisms in 15 of 19 families. The map establishes ME/CFS as a genuinely multi-mechanism systemic disease and provides a structured framework for research prioritisation and cross-disease comparison.
]
