#import "../../../../shared/environments.typ": *

=== Documented ME/CFS Findings and Failure Modes


#achievement(title: [PDK Overactivation Suppresses Pyruvate Entry into the TCA Cycle])[
Fluge et al.\ found significantly increased mRNA expression of *PDK1, PDK2, and PDK4* (but not PDK3) and of the mitochondrial lipoamidase *SIRT4* in peripheral blood mononuclear cells from 200 ME/CFS patients versus 102 healthy controls . Patient serum applied to healthy muscle cells induced increased mitochondrial oxygen consumption while causing excess lactate excretion — a pattern consistent with functional impairment of PDC and compensatory anaerobic metabolism. SIRT4 deacetylates and inhibits the E3 subunit of PDC (dihydrolipoamide dehydrogenase), providing a second inhibitory mechanism parallel to PDK-mediated phosphorylation.
Study: ($n=200$ ME/CFS $+$ 102 controls; transcriptomic and cell-based assay; certainty: 0.50 — findings not yet independently replicated in muscle tissue; partially replicated by downstream metabolomic patterns).
] <ach:fluge2016-pdk>

#warning-env(title: [Replication Status: Partially Replicated])[
The PDK upregulation finding (Fluge 2016) has not been directly replicated in an independent cohort using muscle biopsy; the evidence base is transcriptomic (PBMCs) and cell-based. The closest tissue-level evidence comes from Tomas et al.\ ($n = 9$ CFS, 11 controls), who cultured primary skeletal muscle cells from vastus lateralis biopsies and found that CFS muscle cells cannot oxidize glucose normally while galactose and fatty acid oxidation were preserved — localising the defect upstream of the TCA cycle at the pyruvate→acetyl-CoA link step @Tomas2020substrate. The authors explicitly name PDK as a candidate, but direct PDC activity was not measured. Downstream metabolomic evidence (reduced TCA intermediates, elevated lactate) from multiple independent groups is consistent with PDC impairment but does not isolate this step. In long COVID, muscle biopsies show depleted TCA cycle metabolites, glycolytic fibre shift, and worsened mitochondrial function after PEM provocation @Appelman2024muscle; 31P MRS demonstrates severely prolonged phosphocreatine recovery ($τ_"PCr"$ = 92.5 vs 51.9 s, $p ≤ 0.001$) indicating in vivo OXPHOS impairment @Finnigan2024MRS. ME/CFS-specific muscle biopsies show preferential subsarcolemmal mitochondrial damage by electron microscopy, distinct from the post-COVID pattern @Bizjak2024muscleMito.
]

PDC requires four cofactors, each representing an independent failure mode: thiamine (vitamin B#sub[1]; cofactor for the E1/TPP subunit), lipoic acid (E2 subunit), riboflavin/FAD (E3 subunit, dihydrolipoamide dehydrogenase), and NAD#super[+] (final electron acceptor from E3). Functional depletion of any one cofactor can impair PDC independently of PDK regulation.

#speculation(title: [PDC Cofactor Depletion as an Untested Therapeutic Target])[
*Certainty: 0.35.*
High-dose thiamine and riboflavin are established treatments for thiamine-responsive PDH-deficiency and riboflavin-responsive Complex II deficiency respectively . Naviaux et al.\ identified riboflavin pathway abnormalities among the 20 dysregulated metabolic pathways in ME/CFS . Yet neither high-dose thiamine (600--1800 mg/day) nor riboflavin as standalone interventions have been trialled in ME/CFS . Combined cofactor replacement targeting all four PDC cofactors simultaneously represents an uninvestigated therapeutic approach.

*Testable prediction:* Erythrocyte transketolase activation ratio (functional thiamine status) and riboflavin loading tests will be abnormal in a subgroup of ME/CFS patients, and supplementation will normalize PDC-flux indicators (lactate/pyruvate ratio, acylcarnitine profiles).

*Limitation:* Cofactor replacement addresses only the substrate availability arm of PDC inhibition, not the PDK overactivation arm; combined PDK inhibition plus cofactor repletion may be required.
] <spec:pdc-cofactors>

Two small open-label studies examined sodium dichloroacetate (DCA), a direct PDK inhibitor that restores PDC activity by blocking PDK-mediated phosphorylation of the E1 subunit @Comhaire2018DCA @Comhaire2018DCAresponders. Approximately 37--45% of treatment-resistant ME/CFS patients responded favorably, and six pre-treatment characteristics predicted response with AUC = 0.92, suggesting that only a subgroup has PDC inhibition as a dominant mechanism. DCA carries neurotoxicity risk (peripheral neuropathy) with chronic use and is not approved for ME/CFS; these reports are hypothesis-generating only.

#warning-env(title: [DCA: Very Low Certainty, Significant Toxicity Risk])[
The DCA reports (Comhaire 2018, $n=22$ and $n=35$) are open-label single-investigator studies published in _Medical Hypotheses_ (low editorial threshold). DCA carries risk of peripheral neuropathy with prolonged use. This evidence is insufficient to support clinical use; it provides mechanistic support for the PDK/PDC hypothesis only.
]

A mechanistic bridge between ME/CFS immune dysfunction and muscle-level PDK4 overactivation is provided by Park & Jeoung, who demonstrated in C2C12 skeletal muscle myoblasts that LPS-induced inflammation upregulates PDK4 (but not PDK1/2/3) via JNK phosphorylation, with JNK inhibition preventing both PDK4 upregulation and lactate excess @ParkJeoung2016PDK4. If chronic low-grade inflammation in ME/CFS (elevated TNF-α, IL-6, IL-1β) activates the JNK pathway in muscle, this would drive PDK4-mediated PDC inhibition in the metabolically relevant tissue without requiring the PBMC-to-muscle generalization that limits the Fluge 2016 finding.

The PDK upregulation finding is conventionally framed as a pathological lesion driving energy deficit. An alternative interpretation — that PDK overactivation may be a protective cellular response to compromised ROS handling rather than a primary cause — is developed in the Cross-Cutting section (Section @spec:pdk-protective below). These framings are reconcilable by MnSOD status: patients with intact antioxidant capacity and elevated PDK represent pathological inhibition (PDK inhibition would help); patients with low MnSOD/GPX4 represent protective restriction (PDK inhibition without antioxidant support may worsen). A stratified DCA trial with baseline antioxidant biomarkers would discriminate between subgroups — but only if the biomarkers used reflect muscle and brain MnSOD/GPX4 status, not only lymphocyte levels. The Shankar 2025 finding is currently lymphocyte-based; a validation study establishing lymphocyte-to-tissue correspondence would be a prerequisite for interpretable stratification.


#speculation(title: [Tissue-Divergent PDK: Brain Resting Lactate vs. Muscle Exertion-Gated PDC Inhibition])[
*Certainty: 0.30.* The Godlewska/Syan 2025 7T MRS finding creates a striking puzzle: elevated brain lactate (pgACC 1.52 vs 1.22 mM) alongside normal resting muscle metabolites . If PDK upregulation were systemic, both tissues should show resting lactate elevation. Three explanations resolve the dissociation:

+ *Tissue-selective PDK isoform expression:* PDK4 dominates in skeletal muscle while PDK2 and PDK3 are more highly expressed in brain. The Fluge 2016 PBMC finding (PDK1/2/4 all upregulated ) may map differently onto each tissue. Brain PDK2/3 upregulation could produce resting lactate elevation; muscle PDK4 upregulation may manifest only under exertion when pyruvate flux increases — explaining normal resting muscle metabolites.
+ *Activity-gated threshold:* PDK4 is acutely upregulated by fasting, exercise, and fatty acid availability. In ME/CFS, the baseline may be near-normal but the PDK4 response to even mild exertion may be exaggerated and recovery delayed — a metabolic trap that produces the characteristic PEM pattern.
+ *Different metabolic reserve margins:* Brain has essentially zero glycogen reserve and relies on continuous glucose oxidation; even modest PDC inhibition immediately elevates lactate. Muscle has substantial glycogen and creatine phosphate buffers that absorb mild PDC inhibition at rest, decompensating only under load.

*Testable predictions:* (1) Exercise-provoked muscle #super[31]P-MRS or venous lactate will show dramatically exaggerated PDK-signature (high lactate, slow PCr recovery) compared to the mild resting abnormality; a paired brain MRS + exercise muscle MRS study would demonstrate the divergence. (2) A muscle biopsy finding only PDK4 elevated (not PDK1/2) would implicate inflammation-driven JNK→PDK4 mechanisms @ParkJeoung2016PDK4 rather than cell-autonomous reprogramming.

*Limitation:* The brain-vs-muscle comparison is a cross-study inference from different populations and modalities. DCA crosses the BBB but carries neurotoxicity risk — paradoxically, the brain compartment showing more resting dysfunction is the one most vulnerable to DCA side effects. No tissue-selective PDK inhibitor delivery method currently exists; pharmacological PDK inhibition cannot be targeted to muscle while sparing brain.
] <spec:pdk-tissue-divergence>

