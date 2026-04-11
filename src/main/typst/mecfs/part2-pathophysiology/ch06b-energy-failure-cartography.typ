#import "../shared/environments.typ": *

= Systematic Failure Cartography of Cellular Energy Metabolism
<ch:energy-failure-cartography>

#chapter-abstract[
Chapter @ch:energy-metabolism reviews the evidence for mitochondrial and metabolic dysfunction in ME/CFS from the direction of known findings — an argued and reviewed conclusion rather than a settled fact. This chapter reverses the direction: starting from the complete functional chain of cellular energy metabolism and asking, at each step, what can fail, what has been studied in ME/CFS, and what remains uninvestigated despite being mechanistically plausible. The goal is a _failure cartography_ — a systematic map of possible breakdowns rather than a catalogue of confirmed ones. Uninvestigated nodes are explicitly flagged, as they represent research gaps with potential therapeutic implications. Four integrative hypotheses arising from cross-step analysis are developed in the final section.
]

== Step 1: Substrate Delivery — Glucose and Fatty Acid Uptake
<sec:substrate-delivery>

Before mitochondria can produce ATP, substrate must reach the cell and enter the cytoplasm. Two delivery chains run in parallel: glucose via GLUT transporters and fatty acids via albumin-bound transport followed by membrane uptake.

*Glucose delivery.* Cellular glucose uptake depends on GLUT transporter expression and, in insulin-sensitive tissues (skeletal muscle, adipose), on insulin-stimulated GLUT4 trafficking from intracellular vesicles to the plasma membrane. Mandarano et al.\ demonstrated that ME/CFS CD4#super[+] and CD8#super[+] T cells show increased GLUT1 expression — suggesting a compensatory attempt to increase glucose uptake — but that hexokinase I (which phosphorylates glucose to trap it inside the cell) is simultaneously downregulated @Mandarano2020. The result is reduced basal glycolysis despite elevated transporter expression: substrate can enter but cannot be efficiently phosphorylated and committed to the glycolytic pathway.

*NOT STUDIED:* GLUT4 trafficking in ME/CFS skeletal muscle has not been directly examined. The malonyl-CoA/CPT1 switch — the molecular gate that controls whether cells preferentially oxidize glucose or fatty acids — has not been characterized in ME/CFS. AMPK activators (metformin, berberine) that restore GLUT4 surface expression via AMPK-dependent mechanisms have not been trialled.

*Fatty acid delivery.* Acylcarnitines and acylcholines, which reflect mitochondrial fatty acid utilization, are consistently reduced in ME/CFS across two independent cohorts studied by Germain et al.\ @Germain2020metabolic, indicating impaired flux of long-chain fatty acids into beta-oxidation. Reduced serum carnitine is a documented finding @Plioplys1995carnitine, further limiting fatty acid transport across the inner mitochondrial membrane via the CPT1/CPT2 carnitine shuttle.

== Step 2: Glycolysis
<sec:glycolysis-failure>

Glycolysis converts glucose to pyruvate in the cytoplasm, yielding 2 ATP and 2 NADH per glucose. The pathway is normally rapid but oxygen-independent, making it the fallback when mitochondrial capacity is reduced.

In ME/CFS, T cell metabolic profiling by Mandarano et al.\ shows reduced basal glycolysis in both CD4#super[+] and CD8#super[+] subsets @Mandarano2020. Naviaux et al.\ identified broad glycolytic pathway abnormalities in the metabolomic signature of ME/CFS @Naviaux2016metabolomics. However, enzyme-level analysis of the individual glycolytic steps (hexokinase, phosphofructokinase, pyruvate kinase) in ME/CFS tissue has not been performed. Hexokinase II, which normally anchors to the mitochondrial outer membrane and couples glycolysis directly to oxidative phosphorylation, has not been studied in ME/CFS.

== Step 3: Pyruvate Dehydrogenase Complex (PDC) — A Central Bottleneck
<sec:pdc-failure>

Pyruvate produced by glycolysis must cross both mitochondrial membranes via the mitochondrial pyruvate carrier (MPC) and then undergo oxidative decarboxylation by the pyruvate dehydrogenase complex (PDC) to yield acetyl-CoA, CO#sub[2], and NADH. PDC is the irreversible commitment step from glycolysis to the TCA cycle. Its activity is tightly regulated by phosphorylation: pyruvate dehydrogenase kinases (PDK1--4) inactivate PDC by phosphorylating the E1 subunit, while pyruvate dehydrogenase phosphatases (PDP1--2) reactivate it.

#achievement(title: [PDK Overactivation Suppresses Pyruvate Entry into the TCA Cycle])[
Fluge et al.\ found significantly increased mRNA expression of *PDK1, PDK2, and PDK4* (but not PDK3) and of the mitochondrial lipoamidase *SIRT4* in peripheral blood mononuclear cells from 200 ME/CFS patients versus 102 healthy controls @Fluge2016. Patient serum applied to healthy muscle cells induced increased mitochondrial oxygen consumption while causing excess lactate excretion — a pattern consistent with functional impairment of PDC and compensatory anaerobic metabolism. SIRT4 deacetylates and inhibits the E3 subunit of PDC (dihydrolipoamide dehydrogenase), providing a second inhibitory mechanism parallel to PDK-mediated phosphorylation.
Study: ($n=200$ ME/CFS $+$ 102 controls; transcriptomic and cell-based assay; certainty: 0.50 — findings not yet independently replicated in muscle tissue; partially replicated by downstream metabolomic patterns).
] <ach:fluge2016-pdk>

#warning-env(title: [Replication Status: Partially Replicated])[
The PDK upregulation finding (Fluge 2016) has not been directly replicated in an independent cohort using muscle biopsy; the evidence base is transcriptomic (PBMCs) and cell-based. Downstream metabolomic evidence (reduced TCA intermediates, elevated lactate) from multiple independent groups is consistent with PDC impairment but does not isolate this step.
]

PDC requires four cofactors, each representing an independent failure mode: thiamine (vitamin B#sub[1]; cofactor for the E1/TPP subunit), lipoic acid (E2 subunit), riboflavin/FAD (E3 subunit, dihydrolipoamide dehydrogenase), and NAD#super[+] (final electron acceptor from E3). Functional depletion of any one cofactor can impair PDC independently of PDK regulation.

#speculation(title: [PDC Cofactor Depletion as an Untested Therapeutic Target])[
*Certainty: 0.35.*
High-dose thiamine and riboflavin are established treatments for thiamine-responsive PDH-deficiency and riboflavin-responsive Complex II deficiency respectively @Maksoud2021nutraceuticals. Naviaux et al.\ identified riboflavin pathway abnormalities among the 20 dysregulated metabolic pathways in ME/CFS @Naviaux2016metabolomics. Yet neither high-dose thiamine (600--1800 mg/day) nor riboflavin as standalone interventions have been trialled in ME/CFS @Maksoud2021nutraceuticals. Combined cofactor replacement targeting all four PDC cofactors simultaneously represents an uninvestigated therapeutic approach.

*Testable prediction:* Erythrocyte transketolase activation ratio (functional thiamine status) and riboflavin loading tests will be abnormal in a subgroup of ME/CFS patients, and supplementation will normalize PDC-flux indicators (lactate/pyruvate ratio, acylcarnitine profiles).

*Limitation:* Cofactor replacement addresses only the substrate availability arm of PDC inhibition, not the PDK overactivation arm; combined PDK inhibition plus cofactor repletion may be required.
] <spec:pdc-cofactors>

Two small open-label studies examined sodium dichloroacetate (DCA), a direct PDK inhibitor that restores PDC activity by blocking PDK-mediated phosphorylation of the E1 subunit @Comhaire2018DCA @Comhaire2018DCAresponders. Approximately 37--45% of treatment-resistant ME/CFS patients responded favorably, and six pre-treatment characteristics predicted response with AUC = 0.92, suggesting that only a subgroup has PDC inhibition as a dominant mechanism. DCA carries neurotoxicity risk (peripheral neuropathy) with chronic use and is not approved for ME/CFS; these reports are hypothesis-generating only.

#warning-env(title: [DCA: Very Low Certainty, Significant Toxicity Risk])[
The DCA reports (Comhaire 2018, $n=22$ and $n=35$) are open-label single-investigator studies published in _Medical Hypotheses_ (low editorial threshold). DCA carries risk of peripheral neuropathy with prolonged use. This evidence is insufficient to support clinical use; it provides mechanistic support for the PDK/PDC hypothesis only.
]

The PDK upregulation finding is conventionally framed as a pathological lesion driving energy deficit. An alternative interpretation — that PDK overactivation may be a protective cellular response to compromised ROS handling rather than a primary cause — is developed in the Cross-Cutting section (Section @spec:pdk-protective below). These framings are reconcilable by MnSOD status: patients with intact antioxidant capacity and elevated PDK represent pathological inhibition (PDK inhibition would help); patients with low MnSOD/GPX4 represent protective restriction (PDK inhibition without antioxidant support may worsen). A stratified DCA trial with baseline antioxidant biomarkers would discriminate between subgroups — but only if the biomarkers used reflect muscle and brain MnSOD/GPX4 status, not only lymphocyte levels. The Shankar 2025 finding is currently lymphocyte-based; a validation study establishing lymphocyte-to-tissue correspondence would be a prerequisite for interpretable stratification.

== Step 4: Carnitine Shuttle and Beta-Oxidation
<sec:carnitine-betaox>

Long-chain fatty acids cannot cross the inner mitochondrial membrane unaided. They require conjugation to carnitine by carnitine palmitoyltransferase 1 (CPT1) on the outer membrane, translocation by a translocase, and reconversion by CPT2 on the inner membrane. Inside the matrix, beta-oxidation cleaves acetyl-CoA units from the fatty acid chain in repeated cycles, each producing 1 NADH, 1 FADH#sub[2], and 1 acetyl-CoA.

Serum carnitine is significantly lower in ME/CFS patients, and lower carnitine levels correlate with worse functional capacity @Plioplys1995carnitine. A controlled crossover study of L-carnitine (3 g/day) and acetyl-L-carnitine (Vermeulen 2004, n=30) found improvement in 12 of 18 clinical parameters and 59--63% responder rates @Vermeulen2004carnitine. Germain et al.\ confirmed reduced acylcarnitine species in two independent ME/CFS cohorts, providing metabolomic corroboration of impaired beta-oxidation flux @Germain2020metabolic.

#warning-env(title: [L-Carnitine Evidence: Preliminary — Placebo Effect Not Excluded])[
The Vermeulen 2004 crossover ($n=30$; single-group; not independently replicated) cannot exclude placebo effects, which typically account for 40--60% response rates in open-label fatigue trials. Carnitine has multiple biological actions beyond the CPT1 shuttle (acetyl buffering, membrane effects, neurotransmitter precursor roles), so improvement does not specifically confirm beta-oxidation rescue as the mechanism.
]

*NOT STUDIED:* CPT1 activity and its regulation by malonyl-CoA (the master switch between glucose and fatty acid utilization) has not been characterized in ME/CFS. In normal physiology, AMPK suppresses ACC activity, lowers malonyl-CoA, and opens CPT1 when energy is needed. Whether this AMPK--ACC--malonyl-CoA axis is dysfunctional in ME/CFS is unknown. Individual beta-oxidation enzyme activities (VLCAD, LCAD, MCAD, SCAD) and the electron transfer flavoprotein-ubiquinone oxidoreductase (ETF-QO) that bridges beta-oxidation to the ubiquinone pool have not been measured in ME/CFS muscle tissue.

Beta-oxidation is entirely FAD-dependent: all four acyl-CoA dehydrogenases (VLCAD, LCAD, MCAD, SCAD), the ETF, and ETF-QO require riboflavin-derived FAD. If the riboflavin pathway abnormality identified by Naviaux et al.\ reflects FAD depletion, it would simultaneously impair every step of beta-oxidation. This is identical to the biochemical picture in multiple acyl-CoA dehydrogenase deficiency (MADD), for which riboflavin 400 mg/day is standard treatment @Maksoud2021nutraceuticals — yet riboflavin has not been formally trialled in ME/CFS.

== Step 5: Krebs Cycle — Enzyme-Level Failure Modes
<sec:krebs-failure>

The Krebs cycle generates NADH and FADH#sub[2] for the ETC via eight sequential enzymatic steps. Naviaux et al.\ found decreased TCA intermediates (citrate, isocitrate, malate, fumarate) in the ME/CFS metabolome, indicating globally reduced TCA flux @Naviaux2016metabolomics. However, the specific enzymatic bottleneck(s) have not been identified.

*Aconitase (step 2: citrate → isocitrate).* Aconitase contains a [4Fe--4S] iron-sulfur cluster that is exquisitely sensitive to superoxide: a single molecule of superoxide inactivates the cluster and halts the enzyme. With Shankar et al.\ confirming elevated ROS and decreased MnSOD in ME/CFS lymphocytes @Shankar2025oxidativestress, aconitase inactivation is a mechanistically predicted consequence. Reduced isocitrate in ME/CFS metabolomics is consistent with this prediction but aconitase activity has not been directly measured in ME/CFS tissue.

*Alpha-ketoglutarate dehydrogenase complex (KGDHC, step 4).* KGDHC has identical cofactor requirements to PDC (thiamine, lipoic acid, riboflavin/FAD, NAD#super[+]) and is similarly sensitive to oxidative stress and calcium overload. If PDC is impaired by cofactor depletion or oxidative damage, KGDHC is likely impaired in parallel. KGDHC has not been studied as a specific target in ME/CFS.

*Succinate dehydrogenase (Complex II, step 6).* Succinate dehydrogenase is the only enzyme that participates in both the TCA cycle and the ETC. It contains iron-sulfur clusters and is the entry point for FADH#sub[2] electrons into the ubiquinone pool. It is therefore simultaneously vulnerable to ROS (via iron-sulfur cluster damage) and to CoQ10 deficiency (via impaired electron acceptance).

*Iron-sulfur cluster assembly as a systemic bottleneck.* Aconitase, KGDHC, Complex I (which contains eight [Fe--S] clusters), Complex II, and ETF-QO all depend on iron-sulfur clusters assembled by the ISCU machinery. ISCU mutations cause exercise intolerance, myopathy, and lactic acidosis — a syndrome with significant clinical overlap with ME/CFS @MorrisMaes2014mitochondria. ISCU function has not been studied in ME/CFS. MnSOD decrease (Shankar 2025) would accelerate superoxide-mediated destruction of all iron-sulfur proteins simultaneously, creating a multi-enzyme failure pattern that could amplify the effects of any primary Complex I dysfunction.

== Step 6: Key Cofactors as Cross-Cutting Failure Modes
<sec:cofactor-failures>

Several cofactors are required by multiple steps in the chain simultaneously. Their depletion therefore impairs energy metabolism at several nodes at once.

*Coenzyme Q10 (CoQ10/ubiquinone).* CoQ10 is the mobile electron carrier between Complexes I/II and Complex III, and also a lipid-soluble antioxidant in the inner mitochondrial membrane. Reduced CoQ10 is among the most replicated findings in ME/CFS: Holden et al.'s systematic review of 19 studies identified it in every study that measured it @Holden2020mitosysrev. The inverse correlation between CoQ10 levels and fatigue/autonomic symptom severity has been documented @Maes2009CoQ10, and a randomised controlled trial of CoQ10 combined with NADH showed improved heart rate recovery @CastroMarrero2021CoQ10. CoQ10 deficiency thus simultaneously impairs electron transfer (reducing ATP yield), increases electron leakage at Complexes I and III (increasing ROS), and reduces membrane antioxidant protection.

*Cardiolipin.* Cardiolipin is a phospholipid unique to the inner mitochondrial membrane, required for the structural stability of all five ETC complexes, ANT, and the cristae architecture that concentrates the proton gradient. Its oxidation by ROS impairs all IMM-dependent functions simultaneously. Historical data report anti-cardiolipin antibodies in ME/CFS @MorrisMaes2014mitochondria, and Molnar et al.\ highlight cardiolipin-targeting elamipretide (the SS-31 peptide, currently in trials for Barth syndrome and heart failure) as an uninvestigated therapeutic candidate for Long COVID mitochondrial dysfunction @Molnar2024LCmitochondria — with equivalent theoretical rationale in ME/CFS.

*NAD#super[+]/NADH ratio.* NAD#super[+] is required by the E3 subunits of both PDC and KGDHC, by isocitrate dehydrogenase (TCA step 3), by malate dehydrogenase (TCA step 8), by Complex I, and by the sirtuin family of metabolic regulators. In ME/CFS, the kynurenine pathway diverts tryptophan away from NAD#super[+] synthesis, and PARP overactivation (responding to oxidative DNA damage) consumes NAD#super[+] as a substrate — two independent depletion mechanisms acting simultaneously. Direct NAD#super[+] measurement in ME/CFS tissue has not been performed, though nicotinamide riboside (NR) has been trialled in Long COVID with some benefit.

*Riboflavin (FAD precursor).* FAD is required by Complex I (as FMN), Complex II, the E3 subunits of both PDC and KGDHC, all four acyl-CoA dehydrogenases in beta-oxidation, ETF, ETF-QO, and glutathione reductase. Naviaux et al.\ identified riboflavin pathway dysregulation among the 20 abnormal metabolic pathways in their ME/CFS metabolomics study @Naviaux2016metabolomics. Despite this, riboflavin as a standalone intervention has never been formally trialled in ME/CFS @Maksoud2021nutraceuticals — an absence that is difficult to explain given that riboflavin-responsive forms of multiple acyl-CoA dehydrogenase deficiency produce a clinically similar syndrome and respond to 400 mg/day.

*Thiamine (TPP precursor).* Thiamine pyrophosphate is the cofactor for the E1 subunits of both PDC and KGDHC. Functional thiamine deficiency (documented by elevated erythrocyte transketolase activation ratio in historical CFS series) would simultaneously impair pyruvate entry into the TCA cycle and reduce alpha-ketoglutarate oxidation. High-dose thiamine (600--1800 mg/day) is used in thiamine-responsive metabolic disorders and in POTS-adjacent autonomic conditions. It has not been tested in ME/CFS in a formal trial @Maksoud2021nutraceuticals.

== Step 7: ATP Export — The Adenine Nucleotide Translocator (ANT)
<sec:ant-failure>

Even if ATP is synthesised normally in the mitochondrial matrix, it must exit via the adenine nucleotide translocator (ANT), which exchanges matrix ATP#super[4-] for cytosolic ADP#super[3-] across the inner membrane. ANT is not a passive channel but an active exchanger that consumes one proton's worth of membrane potential per cycle. It is the sole route for ATP export from mitochondria.

Four ANT isoforms exist (ANT1--4) with tissue-specific expression; ANT1 predominates in cardiac and skeletal muscle. Autoantibodies against ANT (antimitochondrial antibodies of the M4 subtype, AMA-M4) are well-characterized in primary biliary cirrhosis and have been described in dilated cardiomyopathy. Given the broad autoantibody findings in ME/CFS (including antibodies against beta-adrenergic receptors, muscarinic receptors, and other membrane proteins @Sotzny2021), ANT-specific autoantibodies represent a mechanistically plausible but *entirely unstudied* failure mode: a cell with normal ETC function could still be energy-starved if ANT is blocked by autoantibody. This distinction matters because it would not be detectable by standard mitochondrial function assays measuring oxygen consumption.

== Step 8: Creatine Phosphate Shuttle — Spatial Energy Buffering
<sec:creatine-shuttle>

The creatine phosphate (PCr) shuttle provides spatial and temporal buffering between mitochondrial ATP production and cytoplasmic ATP consumption. In brain and muscle, creatine kinase (CK) at the mitochondrial outer membrane converts mitochondrial ATP into phosphocreatine (PCr), which diffuses to the myofibril or synapse where the cytoplasmic CK isoform instantly regenerates ATP on demand. Without this shuttle, cells would require direct diffusion of ATP from the matrix to the consumption site — too slow for burst demands.

#achievement(title: [Creatine Supplementation Increases Brain Creatine and Reduces Fatigue])[
In a feasibility study ($n=11$ completers), Godlewska et al.\ found that 6 weeks of creatine monohydrate (16 g/day) significantly increased brain creatine in the pregenual anterior cingulate cortex (+8.3%, $p=0.004$) and dorsolateral prefrontal cortex (+2.9%, $p=0.012$), measured by 7T MRS @Godlewska2024creatineMRS. Secondary outcomes showed decreased fatigue scores and improved Stroop reaction time and hand-grip strength. This is the first intervention evidence that brain creatine deficiency in ME/CFS — previously documented by 7T MRS cross-sectionally @Godlewska2025MRS — is pharmacologically correctable.
Study: (open-label feasibility, no placebo arm; certainty: 0.45 — requires blinded RCT before clinical recommendation).
] <ach:godlewska2024-creatine>

#warning-env(title: [Replication Status: Preliminary])[
Godlewska 2024 is an open-label feasibility study without a placebo control. The observed improvements in fatigue and cognition cannot be distinguished from placebo effects at this stage. A blinded RCT is required.
]

#warning-env(title: [Creatinine Monitoring Note])[
Creatine supplementation routinely elevates serum creatinine by approximately 20--30 μmol/L due to non-enzymatic cyclisation of the creatine excess. This does not reflect renal impairment but can trigger unnecessary concern (or further testing) on routine labs if the prescribing clinician is unaware of the supplementation. Document creatine use clearly before any renal function panel.
]

*NOT STUDIED:* The creatine transporter (SLC6A8) and the synthesis enzymes (AGAT, GAMT) have not been characterised in ME/CFS. Whether brain creatine deficiency reflects impaired synthesis, impaired transport into cells, or increased consumption (e.g., by activated astrocytes or microglia) is unknown.

== Step 9: ROS Scavenging — The Mitochondrial Antioxidant Defence
<sec:ros-scavenging-failure>

The ETC leaks electrons to molecular oxygen producing superoxide (O#sub[2]#super[•−]), particularly at Complexes I and III. Mitochondrial superoxide dismutase (MnSOD, encoded by SOD2) converts superoxide to H#sub[2]O#sub[2], which glutathione peroxidase (GPX) and peroxiredoxin 3 (PRDX3) then reduce to water. This multi-step scavenging system prevents superoxide from inactivating iron-sulfur clusters and lipid peroxidation of the inner membrane.

#achievement(title: [Decreased MnSOD and GPX4 Dysfunction in ME/CFS and Long COVID])[
Shankar et al.\ demonstrated that both ME/CFS and Long COVID lymphocytes exhibit elevated oxidative stress with *decreased mitochondrial MnSOD protein levels* and *GPX4-mediated lipid peroxidation* damage @Shankar2025oxidativestress. Female patients show higher total ROS and mitochondrial calcium; male patients show normal total ROS but greater lipid oxidative damage — indicating sex-specific failure modes in mitochondrial antioxidant defence. This is the first direct measurement showing reduced MnSOD protein (not merely elevated ROS markers) in ME/CFS lymphocytes.
Study: (multi-cohort; flow cytometry and mass spectrometry; _PNAS_ 2025; certainty: 0.55 — lymphocytes may not reflect tissue-specific MnSOD levels in muscle or brain; study not yet independently replicated; smaller cohort and cell-type specificity warrant conservative calibration relative to Fluge 2016).
] <ach:shankar2025-mnsod>

#warning-env(title: [Replication Status: Not Yet Independently Replicated])[
Shankar 2025 is a single study. The lymphocyte measurements may not generalise to skeletal muscle, neurons, or cardiac tissue, where MnSOD has the greatest energy-metabolism significance.
]

MnSOD decrease has cascading consequences that amplify all other failure modes: elevated mitochondrial superoxide inactivates aconitase (Section @sec:krebs-failure), oxidises cardiolipin (Section @sec:cofactor-failures), and damages iron-sulfur clusters in Complexes I and II. Notably, PGC-1$alpha$ — the master regulator of mitochondrial biogenesis — transcriptionally upregulates MnSOD; its suppression by chronic inflammation would therefore impair antioxidant defence alongside biogenesis.

*NOT STUDIED in ME/CFS:*
    - *Peroxiredoxin 3 (PRDX3) expression*: PRDX3-knockout mice develop an ME/CFS-like phenotype with exercise intolerance and mitochondrial dysfunction, but PRDX3 in ME/CFS patient tissue has not been measured.
    - *NRF2 pathway*: NRF2 is the master antioxidant transcription factor that upregulates MnSOD, GPX1, catalase, and thioredoxin. Its suppression by chronic inflammation is well-established in other diseases. NRF2 activators (sulforaphane, dimethyl fumarate) are approved in other inflammatory conditions; their use in ME/CFS is uninvestigated.
    - *Thioredoxin/thioredoxin reductase (TRX/TXNRD)*: The secondary H#sub[2]O#sub[2] scavenging system and redox regulator. Paul et al.\ documented impaired H#sub[2]S and cysteine metabolism (upstream of thioredoxin) @Paul2021redox but the thioredoxin proteins themselves have not been directly measured.

== Step 10: Mitochondrial Dynamics and Biogenesis
<sec:mito-dynamics>

Mitochondria undergo continuous fusion (mediated by MFN1/2 and OPA1) and fission (mediated by DRP1 and FIS1). Biogenesis is driven by PGC-1$alpha$. Quality control integrates both processes: impaired segments are isolated by fission and cleared by mitophagy.

IgG immune complexes from ME/CFS patient serum cause mitochondrial fragmentation (shift toward fission) in endothelial cells (Section @sec:igg-mito-disruption in Chapter @ch:energy-metabolism) @Liu2026IgGcomplexes. Direct measurement of DRP1/FIS1 versus MFN1/2/OPA1 balance in ME/CFS patient tissue has not been performed; the fragmentation is inferred from morphological observation.

#hypothesis(title: [PGC-1α Suppression Blocks Mitochondrial Biogenesis Recovery])[
*Certainty: 0.40.*
Chronic neuroinflammation and elevated TNF-$alpha$ documented in ME/CFS are predicted to suppress PGC-1$alpha$ — the master regulator of mitochondrial biogenesis — thereby preventing compensatory mitochondrial proliferation in response to energy deficits @MorrisMaes2014mitochondria. PGC-1$alpha$ also transcriptionally upregulates MnSOD, meaning its suppression would simultaneously impair ROS clearance (consistent with the Shankar 2025 MnSOD deficit @Shankar2025oxidativestress) and prevent biogenesis recovery after exertion-induced mitochondrial damage. In ME/CFS, where exercise triggers damage but PEM prevents the adaptive exercise response, PGC-1$alpha$ may be caught in a state where it cannot be upregulated (because exercise is contraindicated) yet is chronically suppressed (by inflammation).

*Testable prediction:* PGC-1$alpha$ protein and mRNA will be lower in ME/CFS skeletal muscle biopsies than in matched controls, with the decrease correlating with disease severity and MnSOD level. PGC-1$alpha$ agonists administered at sub-exercise doses (e.g., low-dose resveratrol, AICAR, or exercise-mimetic compounds) should partially restore MnSOD expression and mitochondrial density without requiring physical exertion.

*Limitation:* PGC-1$alpha$ has not been directly measured in ME/CFS tissue. This is an entirely unstudied node in the failure cartography.
] <hyp:pgc1alpha-suppression>

== Summary: Uninvestigated Failure Modes with Therapeutic Implications
<sec:cartography-gaps>

The systematic analysis above identifies the following failure modes that are mechanistically established in other diseases, plausibly operative in ME/CFS based on upstream or downstream evidence, but have never been directly studied in ME/CFS patients:

    - *PDC cofactor depletion* (thiamine, riboflavin, lipoic acid): each causes PDC failure in isolation; combination deficiency is untrialled
    - *KGDHC failure*: same cofactors as PDC; simultaneous impairment is mechanistically expected but unmeasured
    - *ISCU (iron-sulfur cluster assembly)*: failure would cause combined aconitase, Complex I, Complex II, and ETF-QO deficiency simultaneously
    - *ANT autoantibodies*: could produce cellular energy crisis with normal ETC oxygen consumption
    - *Cardiolipin oxidation*: elamipretide intervention studied in Barth syndrome and Long COVID; not trialled in ME/CFS
    - *CPT1/malonyl-CoA regulation*: the fatty acid--glucose utilisation switch has not been characterised
    - *NRF2 pathway*: master antioxidant regulator; pharmacologically accessible but unstudied
    - *PRDX3 and thioredoxin*: PRDX3-KO animal model is phenotypically similar to ME/CFS; not measured in patients
    - *PGC-1α suppression*: blocks both biogenesis and antioxidant recovery; not measured in ME/CFS tissue
    - *UCP2/UCP3 upregulation*: predicted compensatory response to ROS that would further reduce ATP yield; not measured in ME/CFS skeletal muscle
    - *Riboflavin* (as standalone intervention): the FAD-dependent beta-oxidation/ETC failure signature has never been formally trialled

See Chapter @ch:medications-mechanisms for treatment protocols related to established interventions (CoQ10, L-carnitine, NADH). The gaps listed above represent priority research directions rather than current clinical recommendations.

== Cross-Cutting Hypotheses from the Cartography

The failure cartography reveals several integrative hypotheses that connect multiple steps in the chain. Four are developed here. Note that these hypotheses are not strictly additive: the riboflavin master-rate-limiter, PDK pathological/protective, MnSOD-primary, and cardiolipin-convergence models each predict a largely overlapping metabolomic signature (reduced TCA intermediates, elevated lactate, altered acylcarnitines). A design that discriminates between them — rather than retaining all four as parallel candidates — would use a combination of EGRAC (riboflavin functional status), baseline MnSOD/GPX4, plasma oxidized cardiolipin, and PBMC PDK transcript levels measured in the same individuals, so that competing predictions can be tested against shared data rather than in isolation.

#speculation(title: [PDK Upregulation May Be Protective, Not Pathological])[
*Certainty: 0.45.*
PDK overactivation (Section @sec:pdc-failure) is routinely framed as a pathological lesion causing energy deficit. An alternative interpretation is that PDK upregulation is a *protective cellular response* to a downstream failure in ROS handling. If MnSOD and PRDX3 are impaired, increasing pyruvate flux through a leaky ETC would generate additional superoxide — worsening oxidative damage to iron-sulfur clusters, cardiolipin, and ETC proteins. PDK-mediated restriction of TCA substrate is then the cell's "dimmer switch," trading reduced ATP production for reduced oxidative injury.

This reinterpretation has a specific clinical consequence: PDK inhibition with dichloroacetate (DCA) *without* simultaneous antioxidant support could worsen ME/CFS by flooding an already-compromised ETC. The small DCA studies (Section @sec:pdc-failure) showing heterogeneous response are consistent with this: responders may be those with intact antioxidant systems; non-responders or worseners may have low MnSOD/GPX4.

*Testable prediction:* In a stratified DCA trial, patients with low baseline MnSOD and GPX4 activity will worsen (higher plasma F2-isoprostanes, worse PEM severity); patients with normal antioxidant status will improve (normalized lactate/pyruvate ratio, reduced PEM). DCA combined with NAC + CoQ10 + riboflavin will outperform DCA monotherapy.

*Limitation:* This remains entirely speculative pending direct evidence. The PDK-as-protective framing has not been tested in ME/CFS or any similar condition. The mechanism assumes a threshold beyond which additional TCA flux becomes net-harmful — a threshold that may vary widely between patients.
] <spec:pdk-protective>

#speculation(title: [Post-Exertional Malaise Timing Reflects Integrated Stress Response Kinetics])[
*Certainty: 0.40.*
The integrated stress response (ISR) is activated when mitochondrial proteostasis fails: exertion-induced cardiolipin peroxidation, iron-sulfur cluster damage, or ETC protein misfolding triggers OMA1 cleavage of DELE1, which activates the HRI kinase, which phosphorylates eIF2α, which initiates a 24--72 hour cellular reprogramming via ATF4. This reprogramming includes transient suppression of anabolic protein synthesis, amino acid redistribution, and the mitochondrial unfolded protein response (mtUPR). The characteristic 24--48 hour delay between exertion and PEM peak matches ISR kinetics precisely.

If PEM is mechanistically an ISR response to exertion-induced mitochondrial damage, then GDF15 and FGF21 (canonical plasma ISR biomarkers) should peak 24--48 hours post-exertion and track PEM severity. ATF4-target gene expression in PBMCs should be elevated during PEM. This framing also predicts that protecting mitochondria from exertion-induced damage (antioxidants, cardiolipin stabilisers, pre-activity creatine loading) would attenuate PEM by reducing the ISR trigger.

*Testable prediction:* Plasma GDF15 and FGF21 will peak 24--48 h after a standardized exertion challenge in ME/CFS patients, correlating with symptom severity, and will not peak at comparable levels in healthy controls or in ME/CFS patients without PEM. The ISR inhibitor ISRIB (experimental) would attenuate PEM in an animal model if the mechanism is confirmed.

*Limitation:* The ISR/mtUPR axis has not been studied in ME/CFS. GDF15 has other causes including cardiac and inflammatory. The connection to PEM is mechanistic reasoning, not empirical observation.
] <spec:pem-isr>

#speculation(title: [Riboflavin Deficiency as a Multi-Step Master Rate-Limiter])[
*Certainty: 0.42.*
FAD (flavin adenine dinucleotide, the active form of riboflavin) is an obligate prosthetic group or cofactor at eight or more distinct energy-chain steps: PDC E3 (dihydrolipoamide dehydrogenase), KGDHC E3 (same enzyme), all four acyl-CoA dehydrogenases in beta-oxidation (VLCAD, LCAD, MCAD, SCAD), the electron transfer flavoprotein (ETF) and ETF-QO that bridge beta-oxidation to the ubiquinone pool, and succinate dehydrogenase (Complex II) as FADH#sub[2] donor. A single cofactor thus gates simultaneously the carbohydrate-to-acetyl-CoA arm, the fatty-acid-to-acetyl-CoA arm, and one direct ETC entry point.

Marginal riboflavin status — common in Western diets and worsened by GI malabsorption, mast cell activation, or bile acid dysbiosis — would produce a metabolomic signature nearly indistinguishable from the combination of PDK overactivation plus beta-oxidation failure plus Complex II dysfunction: exactly the pattern reported across ME/CFS metabolomics studies @Naviaux2016metabolomics @Germain2020metabolic. Riboflavin-responsive multiple acyl-CoA dehydrogenase deficiency (MADD) produces exercise intolerance, myopathy, and elevated acylcarnitines indistinguishable from severe ME/CFS.

*Testable prediction:* Erythrocyte glutathione reductase activation coefficient (EGRAC, the gold-standard functional riboflavin biomarker) will be ≥1.3 in ≥30% of ME/CFS patients vs \<10% of matched controls. Patients with elevated EGRAC will show plasma C4--C18 acylcarnitine elevation (the MADD/ETF-QO signature). Riboflavin 400 mg/day for 12 weeks will normalise EGRAC and reduce lactate/pyruvate ratio in EGRAC-high responders.

*Limitation:* No ME/CFS study has measured EGRAC. Standard serum riboflavin may be misleading: Hypothesized impairment of riboflavin transporter (SLC52A2) or mitochondrial FAD loading means tissue-level FAD deficit could exist with normal serum riboflavin.
] <spec:riboflavin-master>

#speculation(title: [Cardiolipin Peroxidation as the Convergence Point of ROS Damage])[
*Certainty: 0.30* (reduced from an initial 0.40 to reflect the negative MMPOWER-3 Phase 3 result in primary mitochondrial myopathy, which provides a discouraging prior for cardiolipin-targeted intervention in adjacent mitochondrial indications).
Cardiolipin (CL), the mitochondria-specific phospholipid, is uniquely vulnerable to peroxidation: it contains four polyunsaturated fatty acid chains (vs two for other phospholipids) and sits directly adjacent to the principal superoxide generators at Complexes I and III. Oxidized cardiolipin (CLox) triggers: release of cytochrome c from Complex III (disrupting electron transfer), inflammasome activation, and disassembly of ETC supercomplexes. With MnSOD decreased and PRDX3 uninvestigated, CLox accumulation is a mechanistically predicted consequence of sustained elevated ROS in ME/CFS.

Elamipretide (SS-31/bendavia) is a mitochondria-targeted tetrapeptide that selectively binds cardiolipin, stabilises its interaction with cytochrome c, and prevents peroxidation. It has completed Phase 3 trials in Barth syndrome (CL synthesis defect) and primary mitochondrial myopathy (MMPOWER-3); the MMPOWER-3 trial did not meet its primary endpoint (6-minute walk distance) at 24 weeks. This negative result in the closest analogous indication substantially tempers expectations for ME/CFS: even if cardiolipin peroxidation is confirmed in ME/CFS, elamipretide's clinical efficacy profile in a related mitochondrial disease is a discouraging prior, not a permissive one. Molnar et al.\ have specifically proposed it as a candidate for Long COVID mitochondrial dysfunction @Molnar2024LCmitochondria; pursuing this rationale in ME/CFS requires first confirming CL oxidation in a ME/CFS cohort, and any eventual trial would need to pre-specify why it should succeed where MMPOWER-3 did not.

*Testable prediction:* Plasma oxidized cardiolipin (by LC-MS) will be >2× control in moderate-to-severe ME/CFS and will correlate with 4-HNE, F2-isoprostane, and MnSOD levels. A 12-week elamipretide open-label trial will reduce F2-isoprostanes and CLox, improve 6-minute walk distance, and reduce PEM frequency in responders with elevated baseline CLox. Non-response with normal baseline CLox would refute cardiolipin peroxidation as a driver.

*Limitation:* Plasma CLox may not reflect intramitochondrial CLox in muscle or brain. Elamipretide is injectable, limiting accessibility for severely ill patients.
] <spec:cardiolipin-peroxidation>
