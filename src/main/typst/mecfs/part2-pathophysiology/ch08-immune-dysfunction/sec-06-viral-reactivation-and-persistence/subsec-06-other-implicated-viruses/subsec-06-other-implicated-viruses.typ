#import "../../../../shared/environments.typ": *

=== Other Implicated Viruses
<sec:other-viruses>

==== Enteroviruses

Enteroviruses (Coxsackieviruses, Echoviruses) have been implicated:

    - Detection of viral RNA in muscle and gut biopsies
    - Elevated antibodies in some patients
    - Possible persistent low-level infection
    - Historical associations with epidemic ME/CFS outbreaks

==== Parvovirus B19

Parvovirus B19 can cause chronic arthritis and fatigue:

    - Associated with ME/CFS onset in some patients
    - Viral DNA detectable in tissues years after infection
    - May persist in bone marrow and synovium

==== SARS-CoV-2 and Long COVID

The COVID-19 pandemic highlighted viral triggers for ME/CFS-like illness:

    - Long COVID (post-acute sequelae of SARS-CoV-2 infection, PASC) shares many features with ME/CFS
    - Viral persistence documented in some patients
    - Similar immune abnormalities observed
    - Provides opportunity to study post-infectious ME/CFS from known onset

*Persistent Immune Activation Independent of Viral Replication*
A proteomic study of 92 non-hospitalized PASC patients (mean 34 months post-infection) versus 73 matched recovered controls identified 26 differentially expressed plasma proteins—23 upregulated and 3 downregulated—revealing a distinct low-grade inflammatory signature @Fineschi2026pasc_proteomics. The most significantly elevated proteins included oncostatin M (OSM), IL-1 receptor antagonist (IL-1RN), IL-6, IL-12B, IL-2, CCL22, CSF3, CSF1, and HLA-DRA. Gene set enrichment analysis identified five activated immune pathways: inflammatory response, TNF-$alpha$/NF-$kappa$B signaling, IL-6/JAK/STAT3, IL-2/STAT5, and allograft rejection.

Critically, plasma spike protein levels did not differ between PASC patients and controls, indicating that this persistent immune activation occurs independently of ongoing viral replication @Fineschi2026pasc_proteomics. This shares a conceptual parallel with the herpesvirus abortive lytic replication model (Section @sec:abortive-lytic): in both cases, chronic immune activation persists without evidence of productive viral infection. The mechanisms differ—ALR involves ongoing viral protein expression from incompletely reactivated herpesviruses, whereas the PASC finding may reflect a self-sustaining immune dysregulation initiated but no longer maintained by viral activity—but the clinical implication is the same: viral load negativity does not exclude virus-initiated pathology.

The activated pathways overlap substantially with those documented in ME/CFS: TNF-$alpha$ elevation (Section @sec:pro-inflammatory), IL-6/JAK/STAT3 signaling, and IL-2/STAT5 dysregulation (see Hypothesis @hyp:il2-pathway). This convergence supports the hypothesis that post-infectious ME/CFS and PASC share a common immunological endpoint regardless of the triggering pathogen. The study found no evidence for distinct biological subtypes within PASC, suggesting a unitary inflammatory state rather than the heterogeneous subtype structure sometimes proposed.

#achievement(title: [SARS-CoV-2 Viral RNA Detected in Gut Tissue for Nearly Two Years])[
Using total-body PET-CT imaging and rectosigmoid biopsies, Peluso et al. @Peluso2024ViralPersistence detected SARS-CoV-2 spike-encoding RNA—both single- and double-stranded—in gut lamina propria tissue up to 676 days after initial infection. Double-stranded RNA present in tissue would constitutively activate innate immune sensors (RIG-I, MDA5), generating a perpetual interferon signature and sustaining T cell activation without active viral replication. Total-body PET imaging revealed widespread lymphoid tissue involvement, supporting the gastrointestinal tract as a viral reservoir maintaining systemic immune dysregulation in long COVID and post-COVID ME/CFS.
Study: (tissue biopsy + PET imaging, $n=5$ biopsy participants, Science Translational Medicine, certainty: 0.70, consistent with multiple independent viral persistence studies).
] <ach:peluso2024-viral-persistence>

*SARS-CoV-2 PKR-ISR Antagonism and Long COVID Implications*

SARS-CoV-2 actively suppresses the integrated stress response (ISR) during active infection: the nucleocapsid protein domain N2b sequesters double-stranded RNA (dsRNA), preventing PKR (protein kinase R) and RIG-I receptor activation, abolishing stress granule formation and ISR-induced translational arrest . This ISR suppression is a fundamental viral immune evasion strategy conserved across coronavirus species. In the context of viral persistence (documented in gut tissue by Peluso et al.\ above), ongoing N2b-mediated PKR suppression could chronically disable the ISR response that would otherwise limit viral spread and trigger cellular repair programs.

Variant-specific differences in ISR antagonism may partly explain differential long COVID rates. Christ et al.\ found that Omicron nucleocapsid protein less efficiently suppresses stress granule formation than ancestral or Delta variants --- Omicron-infected cells formed stress granules in ~60% of cells versus ~5% for ancestral SARS-CoV-2 @Christ2023CoVISRVariants. If higher ISR activation during acute Omicron infection reduces viral establishment in tissue reservoirs, this could contribute to the lower long COVID incidence observed after Omicron waves, though this connection remains speculative and unmeasured.

#speculation(title: [Bidirectional ISR Dysregulation: Opposite States in Different ME/CFS Subgroups])[
*Certainty: 0.40.*
Different ME/CFS subgroups may have *opposite* ISR states depending on their triggering pathogen, explaining heterogeneous trial responses  @Hennig2022HHV6miRNA @wang2023wasf3. *Post-herpesviruses (HHV-6, EBV) subgroup:* ISR chronically activated --- PERK elevated, ATF4 active, WASF3 upregulated, mitochondrial supercomplex dysfunction. *Post-SARS-CoV-2 (long COVID) subgroup:* ISR suppressed during acute phase via N2b-mediated PKR inhibition , then dysregulated in recovery --- potentially a rebound state or permanently impaired ISR dynamics.

This bidirectional model predicts that ISR suppression (ISRIB, eIF2B activators) will benefit the herpesvirus-triggered subgroup (excessive ISR) but harm or provide no benefit to the post-SARS-CoV-2 subgroup (already suppressed ISR). Conversely, ISR-prolonging agents (salubrinal, guanabenz-class GADD34 inhibitors) would be predicted to benefit only the ISR-suppressed subgroup @CostaMattioli2020ISRReview. The absence of pathogen-stratified subgrouping in ME/CFS clinical trials means this divergence has not been tested.

*Testable prediction:* Stratifying ME/CFS patients by triggering pathogen (HHV-6 dUTPase IgG positive vs. post-COVID onset) will reveal opposite directions of phospho-eIF2α and ATF4 expression in skeletal muscle biopsy. In a crossover trial, ISRIB will improve fatigue in the HHV-6+ subgroup while worsening or showing no effect in the post-COVID subgroup. If ISR markers are uncorrelated with trigger → hypothesis falsified.

*Limitation:* Most ME/CFS patients cannot identify their triggering pathogen with certainty. Pathogen-stratified muscle biopsy studies do not yet exist. The ISR activation finding (Wang 2023) is from an NIH cohort with mixed trigger history (n=14); the SARS-CoV-2 ISR suppression finding is from cell models, not patient tissue .
] <hyp:isr-bidirectional>

#hypothesis(title: [Tissue Compartmentalization Explains ISR Biomarker Failure in ME/CFS])[
*Certainty: 0.55.*
ISR activation in ME/CFS is restricted to specific tissue compartments --- skeletal muscle @wang2023wasf3, CNS tissue (choroid plexus, hippocampus, amygdala) , possibly dorsal root ganglion sensory neurons and endothelium --- and is not detectable in peripheral blood mononuclear cells. The null result from Omdal et al.\ (n=48, peripheral blood stress biomarkers, long COVID)  is therefore not a refutation of ISR involvement but evidence of compartmentalization. This predicts that PBMC-based ME/CFS biomarker studies systematically underestimate ISR involvement, and explains the consistent failure of blood-based biomarker panels to discriminate ME/CFS from healthy controls with high sensitivity.

The tissue specificity is mechanistically plausible: PERK is preferentially activated in cells with high secretory/biosynthetic demand (muscle, neurons, endothelium) rather than circulating immune cells. HHV-6 neuroinvasion  places viral ISR triggers directly in CNS tissue. Muscle WASF3 elevation @wang2023wasf3 confirms the skeletal muscle as a primary affected compartment.

*Testable prediction:* Paired sampling in the same ME/CFS patients (PBMC + skeletal muscle biopsy + skin biopsy [DRG-adjacent fibers] + saliva [salivary glands as accessible secretory tissue]) will show ISR markers elevated in muscle and skin but not PBMC. Effect sizes in tissue will substantially exceed those in blood. If muscle and PBMC ISR markers correlate strongly → compartmentalization hypothesis falsified.

*Limitation:* Only skeletal muscle (Wang 2023, n=14) and CNS post-mortem (Kasimir 2022, n=3) have been examined. No skin biopsy ISR study exists in ME/CFS. The comparison between tissue compartments in the same patients has not been done.
] <hyp:isr-compartmentalisation>

#speculation(title: [Sex-Specific ISR Thresholds: Why ME/CFS Is 4× More Common in Females])[
*Certainty: 0.25.*
ME/CFS affects females at approximately four times the rate of males. Estrogen modulates the unfolded protein response and ER stress pathways: 17β-estradiol influences PERK sensitivity through estrogen receptor interactions at the ER membrane and XBP1 splicing efficiency via ERα-mediated co-regulation @CostaMattioli2020ISRReview. Female cells may therefore have a lower threshold for ISR activation following viral insult, predisposing to chronic ATF4 persistence after the same viral trigger that would produce only a transient ISR response in male cells.

This estrogen-modulated ISR threshold model predicts: (a) in premenopausal females, symptom severity fluctuates with estradiol levels --- phases of lower estradiol (follicular nadir, premenstrual) may shift the ISR threshold lower, triggering episodes of enhanced ATF4 activity and worsened PEM; (b) postmenopausal women initiating hormone replacement therapy may show altered ISR dynamics in muscle; (c) males who develop ME/CFS may show a distinct ISR signature (shifted toward the GCN2 arm rather than the PERK arm) compared with females with equivalent disease severity.

*Testable prediction:* Sex-stratified phospho-eIF2α and ATF4 levels in ME/CFS skeletal muscle will show greater elevation in females than in age- and severity-matched males. In premenopausal females, serial measurement will show cycle-phase correlation with ATF4-target metabolites (GDF15, FGF21) in plasma. If ISR markers show no sex difference at matched severity → hypothesis falsified.

*Limitation:* No sex-stratified ISR study exists in ME/CFS muscle. The estradiol–PERK interaction is established in vitro and in animal models; its operation in human skeletal muscle under chronic viral stress has not been tested. Sex-ratio differences in ME/CFS may arise from multiple non-ISR mechanisms (immune susceptibility, health-seeking behavior, diagnostic criteria sensitivity). (Not yet replicated.)
] <spec:isr-sex-threshold>

#speculation(title: [MCAS--ISR Bidirectional Crosstalk: Mast Cell ER Stress as a Sustaining Amplifier in the MCAS Subgroup])[
*Certainty: 0.20 — mechanistic inference from non-MCAS mast cell literature; no direct ISR measurement in MCAS patient samples.*

Approximately 25% of ME/CFS patients have concurrent MCAS . The mechanistic relationship between MCAS and the ISR pathway is bidirectional and mutually reinforcing in theory, though not yet directly tested.

*ISR acting on mast cells:* Mast cells are secretorily demanding cells whose function depends on intact unfolded protein response (UPR) machinery @Wilhelm2017MCLUPRProteotoxic. In mast cells, the eIF2α-phosphorylation arm of ISR suppresses XBP1 (a key UPR effector) @Fan2024ERStressMastCell, which would reduce IgE-mediated degranulation efficiency. Simultaneously, chronic eIF2α-P would suppress the mTORC1-driven protein synthesis required for granule reconstitution after degranulation @Iskarpatyoti2022MastCellRegranulation. The expected consequence: granule compositional changes over time and altered degranulation dynamics — potentially explaining why MCAS in ME/CFS can present differently from classical allergic MCAS.

*Mast cells acting on ISR:* Mast cell degranulation requires ER calcium mobilization (STIM1/ORAI1 SOCE). Chronic repeated degranulation, as in MCAS, produces sustained low-level ER calcium depletion. PERK is the canonical ER stress/calcium sensor; the PERK–eIF2α–ATF4 axis is functional in mast cells @Wang2017SHP2MastCellPERK. However, a key constraint from Soboloff and Berger (2002) @Soboloff2002ERCalciumMastCell: eIF2α phosphorylation in mast cells requires *severe* sustained ER calcium depletion, not moderate single-event depletion. Single degranulation events are unlikely to trigger significant ISR; only the cumulative chronic pattern of MCAS-pattern degranulation is a plausible trigger.

*Therapeutic implication (speculative):* In the MCAS subgroup, mast cell stabilizers (ketotifen, cromolyn, Section @sec:domain6-mast-cell) that reduce degranulation frequency could secondarily reduce ER calcium stress, attenuating PERK input and potentially easing the ISR burden. This would predict that MCAS-targeted treatment in the ME/CFS MCAS subgroup produces ISR biomarker improvement (GDF15 reduction, ATF4 target metabolite normalization) in addition to symptom improvement — a testable pharmacodynamic endpoint.

*Falsifiable prediction:* ME/CFS patients with MCAS overlap (≥2 MCAS criteria) will show higher ATF4-target gene expression (ASNS, CHOP, SLC7A11) in skin mast cells at 3mm punch biopsy compared to ME/CFS patients without MCAS. eIF2α-P will be elevated in PBMC-derived in vitro mast cell differentiation assays from ME/CFS+MCAS patients compared to ME/CFS-only controls. If ISR markers show no MCAS-dependent difference → bidirectional crosstalk hypothesis not supported.

*Limitation:* No study has measured ISR markers in MCAS patient samples of any kind. The mechanistic chain is assembled from non-MCAS mast cell models and non-mast cell ISR studies. HRI kinase data in mast cells are absent. The IgE-suppression finding from Fan 2024 may not generalize to non-IgE MCAS triggers (MRGPRX2, complement, substance P). The gain-of-function direction (MCAS → ISR) requires repeated/chronic mast cell activation, not single acute events. (Not yet replicated in ME/CFS or MCAS.)
] <spec:mcas-isr-crosstalk>

#achievement(title: [International Consensus Framework for Targeting SARS-CoV-2 Reservoir in Long COVID])[
A multi-institutional Lancet Infectious Diseases position paper @Proal2025Reservoir
by leading long COVID and ME/CFS researchers established the conceptual and trial-design
framework for treating long COVID as a viral reservoir disease. The authors synthesized
evidence that SARS-CoV-2 persists for months to years in tissue reservoirs in affected
individuals, propose that this persistence drives ongoing immune activation and symptoms,
and identify critical design considerations for reservoir-targeting trials: mechanism of
action of candidate therapeutics, participant selection by reservoir biomarker burden,
treatment duration, standardized measurables, and potential combination approaches.
The failure of a 15-day nirmatrelvir/ritonavir RCT to improve symptoms is reinterpreted
as evidence that active replication is not the primary target—stable viral reservoirs
require a different therapeutic strategy, drawing lessons from HIV and hepatitis C
functional cure models.
Study: (consensus review, Lancet Infectious Diseases 2025, certainty: 0.75).
] <ach:proal2025-reservoir-framework>

#limitation(title: [PASC Proteomics Generalizability])[
The Fineschi et al.\ study @Fineschi2026pasc_proteomics was restricted to non-hospitalized cases and included participants infected across different pandemic waves (pre-Omicron unvaccinated and Omicron vaccinated), introducing heterogeneity. The cross-sectional design at a single time point cannot capture the temporal evolution of immune activation documented in ME/CFS (see Section @sec:pro-inflammatory). Additionally, the absence of an ME/CFS comparator arm limits direct mechanistic comparison, though the study originated from the ME/CFS Collaborative Research Centre at Uppsala University, suggesting awareness of this overlap.
]

