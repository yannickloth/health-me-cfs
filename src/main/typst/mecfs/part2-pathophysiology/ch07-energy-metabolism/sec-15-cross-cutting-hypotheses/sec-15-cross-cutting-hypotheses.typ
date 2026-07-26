#import "../../../shared/environments.typ": *

== Cross-Cutting Hypotheses
<sec:cross-cutting-hypotheses>

The failure cartography reveals several integrative hypotheses that connect multiple steps in the chain. Four are developed here. Note that these hypotheses are not strictly additive: the riboflavin master-rate-limiter, PDK pathological/protective, MnSOD-primary, and cardiolipin-convergence models each predict a largely overlapping metabolomic signature (reduced TCA intermediates, elevated lactate, altered acylcarnitines). A design that discriminates between them — rather than retaining all four as parallel candidates — would use a combination of EGRAC (riboflavin functional status), baseline MnSOD/GPX4, plasma oxidized cardiolipin, and PBMC PDK transcript levels measured in the same individuals, so that competing predictions can be tested against shared data rather than in isolation.

#speculation(title: [PDK Upregulation May Be Protective, Not Pathological])[
*Certainty: 0.45.*
PDK overactivation (Section @sec:step3-pdc) is routinely framed as a pathological lesion causing energy deficit. An alternative interpretation is that PDK upregulation is a *protective cellular response* to a downstream failure in ROS handling. If MnSOD and PRDX3 are impaired, increasing pyruvate flux through a leaky ETC would generate additional superoxide — worsening oxidative damage to iron-sulfur clusters, cardiolipin, and ETC proteins. PDK-mediated restriction of TCA substrate is then the cell's "dimmer switch," trading reduced ATP production for reduced oxidative injury.

This reinterpretation has a specific clinical consequence: PDK inhibition with dichloroacetate (DCA) *without* simultaneous antioxidant support could worsen ME/CFS by flooding an already-compromised ETC. The small DCA studies (Section @sec:step3-pdc) showing heterogeneous response are consistent with this: responders may be those with intact antioxidant systems; non-responders or worseners may have low MnSOD/GPX4.

*Testable prediction:* In a stratified DCA trial, patients with low baseline MnSOD and GPX4 activity will worsen (higher plasma F2-isoprostanes, worse PEM severity); patients with normal antioxidant status will improve (normalized lactate/pyruvate ratio, reduced PEM). DCA combined with NAC + CoQ10 + riboflavin will outperform DCA monotherapy.

*Limitation:* This remains entirely speculative pending direct evidence. The PDK-as-protective framing has not been tested in ME/CFS or any similar condition. The mechanism assumes a threshold beyond which additional TCA flux becomes net-harmful — a threshold that may vary widely between patients.
] <spec:pdk-protective>

#speculation(title: [Post-Exertional Malaise Timing Reflects Integrated Stress Response Kinetics])[
*Certainty: 0.40.*
The integrated stress response (ISR) --- a conserved cellular stress program governed by four eIF2α kinases (PERK, GCN2, PKR, HRI) --- is activated when mitochondrial proteostasis fails @CostaMattioli2020ISRReview. Exertion-induced cardiolipin peroxidation, iron-sulfur cluster damage, or ETC protein misfolding triggers OMA1 cleavage of DELE1, which activates the HRI kinase, which phosphorylates eIF2α, which initiates a 24--72 hour cellular reprogramming via ATF4 @CostaMattioli2020ISRReview . This reprogramming includes transient suppression of anabolic protein synthesis, amino acid redistribution, and the mitochondrial unfolded protein response (mtUPR). The characteristic 24--48 hour delay between exertion and PEM peak matches ISR kinetics precisely.

The only direct ISR-activation evidence in ME/CFS comes from the PERK arm: Wang et al.\ found elevated PERK markers in ME/CFS skeletal muscle, establishing that the ER-stress branch of the ISR is active in this tissue @wang2023wasf3. PERK is one of the four eIF2α kinases; its elevation confirms ISR engagement via the ER-stress route, consistent with WASF3-mediated ER dysfunction (@ach:wasf3-mechanism). Whether the HRI arm (mitochondrial stress), GCN2 arm (amino acid starvation), or PKR arm (viral dsRNA sensing) are also activated in ME/CFS remains unmeasured.

If PEM is mechanistically an ISR response to exertion-induced mitochondrial damage, then GDF15 and FGF21 (canonical plasma ISR biomarkers) should peak 24--48 hours post-exertion and track PEM severity @CostaMattioli2020ISRReview. ATF4-target gene expression in PBMCs should be elevated during PEM. This framing also predicts that protecting mitochondria from exertion-induced damage (antioxidants, cardiolipin stabilizers, pre-activity creatine loading) would attenuate PEM by reducing the ISR trigger.

*Testable prediction:* Plasma GDF15 and FGF21 will peak 24--48 h after a standardized exertion challenge in ME/CFS patients, correlating with symptom severity, and will not peak at comparable levels in healthy controls or in ME/CFS patients without PEM. The ISR inhibitor ISRIB (experimental) would attenuate PEM in an animal model if the mechanism is confirmed.

*Limitation:* Direct ISR measurement in ME/CFS is limited to PERK elevation in muscle (n=14, single study) @wang2023wasf3. Peripheral blood stress biomarkers showed no difference between long COVID and controls in one controlled study (n=48) , suggesting ISR signatures may be tissue-confined rather than circulating. GDF15 has other causes including cardiac and inflammatory conditions. The connection between ISR kinetics and PEM timing remains mechanistic reasoning without direct empirical support.
] <spec:pem-isr>

#speculation(title: [Riboflavin Deficiency as a Multi-Step Master Rate-Limiter])[
*Certainty: 0.42.*
FAD (flavin adenine dinucleotide, the active form of riboflavin) is an obligate prosthetic group or cofactor at eight or more distinct energy-chain steps: PDC E3 (dihydrolipoamide dehydrogenase), KGDHC E3 (same enzyme), all four acyl-CoA dehydrogenases in beta-oxidation (VLCAD, LCAD, MCAD, SCAD), the electron transfer flavoprotein (ETF) and ETF-QO that bridge beta-oxidation to the ubiquinone pool, and succinate dehydrogenase (Complex II) as FADH#sub[2] donor. A single cofactor thus gates simultaneously the carbohydrate-to-acetyl-CoA arm, the fatty-acid-to-acetyl-CoA arm, and one direct ETC entry point.

Marginal riboflavin status — common in Western diets and worsened by GI malabsorption, mast cell activation, or bile acid dysbiosis — would produce a metabolomic signature nearly indistinguishable from the combination of PDK overactivation plus beta-oxidation failure plus Complex II dysfunction: exactly the pattern reported across ME/CFS metabolomics studies  . Riboflavin-responsive multiple acyl-CoA dehydrogenase deficiency (MADD) produces exercise intolerance, myopathy, and elevated acylcarnitines indistinguishable from severe ME/CFS.

*Testable prediction:* Erythrocyte glutathione reductase activation coefficient (EGRAC, the gold-standard functional riboflavin biomarker) will be ≥1.3 in ≥30% of ME/CFS patients vs \<10% of matched controls. Patients with elevated EGRAC will show plasma C4--C18 acylcarnitine elevation (the MADD/ETF-QO signature). Riboflavin 400 mg/day for 12 weeks will normalise EGRAC and reduce lactate/pyruvate ratio in EGRAC-high responders.

*Limitation:* No ME/CFS study has measured EGRAC. Standard serum riboflavin may be misleading: Hypothesized impairment of riboflavin transporter (SLC52A2) or mitochondrial FAD loading means tissue-level FAD deficit could exist with normal serum riboflavin.
] <spec:riboflavin-master>

#speculation(title: [Cardiolipin Peroxidation as the Convergence Point of ROS Damage])[
*Certainty: 0.30* (reduced from an initial 0.40 to reflect the negative MMPOWER-3 Phase 3 result in primary mitochondrial myopathy, which provides a discouraging prior for cardiolipin-targeted intervention in adjacent mitochondrial indications).
Cardiolipin (CL), the mitochondria-specific phospholipid, is uniquely vulnerable to peroxidation: it contains four polyunsaturated fatty acid chains (vs two for other phospholipids) and sits directly adjacent to the principal superoxide generators at Complexes I and III. Oxidized cardiolipin (CLox) triggers: release of cytochrome c from Complex III (disrupting electron transfer), inflammasome activation, and disassembly of ETC supercomplexes. With MnSOD decreased and PRDX3 uninvestigated, CLox accumulation is a mechanistically predicted consequence of sustained elevated ROS in ME/CFS.

Elamipretide (SS-31/bendavia) is a mitochondria-targeted tetrapeptide that selectively binds cardiolipin, stabilizes its interaction with cytochrome c, and prevents peroxidation. It has completed Phase 3 trials in Barth syndrome (CL synthesis defect) and primary mitochondrial myopathy (MMPOWER-3); the MMPOWER-3 trial did not meet its primary endpoint (6-minute walk distance) at 24 weeks. This negative result in the closest analogous indication substantially tempers expectations for ME/CFS: even if cardiolipin peroxidation is confirmed in ME/CFS, elamipretide's clinical efficacy profile in a related mitochondrial disease is a discouraging prior, not a permissive one. Molnar et al.\ have specifically proposed it as a candidate for Long COVID mitochondrial dysfunction ; pursuing this rationale in ME/CFS requires first confirming CL oxidation in a ME/CFS cohort, and any eventual trial would need to pre-specify why it should succeed where MMPOWER-3 did not.

*Testable prediction:* Plasma oxidized cardiolipin (by LC-MS) will be >2× control in moderate-to-severe ME/CFS and will correlate with 4-HNE, F2-isoprostane, and MnSOD levels. A 12-week elamipretide open-label trial will reduce F2-isoprostanes and CLox, improve 6-minute walk distance, and reduce PEM frequency in responders with elevated baseline CLox. Non-response with normal baseline CLox would refute cardiolipin peroxidation as a driver.

*Limitation:* Plasma CLox may not reflect intramitochondrial CLox in muscle or brain. Elamipretide is injectable, limiting accessibility for severely ill patients.
] <spec:cardiolipin-peroxidation>

