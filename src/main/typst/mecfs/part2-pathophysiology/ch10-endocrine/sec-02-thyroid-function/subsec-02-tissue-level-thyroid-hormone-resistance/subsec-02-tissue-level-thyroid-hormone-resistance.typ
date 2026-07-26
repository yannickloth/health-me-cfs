#import "../../../../shared/environments.typ": *

=== Tissue-Level Thyroid Hormone Resistance


Beyond impaired T4 to T3 conversion, emerging evidence suggests that some ME/CFS patients may exhibit functional thyroid hormone resistance at the cellular level. This could involve reduced expression or function of thyroid hormone transporters (MCT8, MCT10) that move hormones into cells, altered expression of thyroid hormone receptors (TR$alpha$, TR$beta$) in target tissues, or impaired receptor-coactivator interactions that reduce transcriptional responses to thyroid hormone binding.

#clinical-finding(title: [Selenoprotein P Autoantibodies in a Subset of ME/CFS Patients])[
Sun et al.\ (2023) @Sun2023selenop identified autoantibodies to selenoprotein P (SELENOP-aAb) in 9.6--15.6% of ME/CFS patients compared to only 0.9--2.0% of healthy controls---an approximately 10-fold enrichment, though this means 84--90% of ME/CFS patients do _not_ carry these autoantibodies. Selenoprotein P is the major selenium transport protein; autoantibodies against it may impair selenium delivery to tissues expressing SELENOP receptors (brain, skeletal muscle, kidney, bone). SELENOP-aAb--positive patients showed the lowest deiodinase activity (SPINA-GD index: 13.1 vs 15.8 in controls, $p < 0.001$), lower FT3/FT4 ratio (27.7 vs 34.0, $p < 0.001$), lower TT3/TT4 ratio (1.84 vs 2.19, $p = 0.005$), and lower urinary iodine (43.2 vs 89.0 $mu$g/L, $p < 0.001$). The normal correlation between serum selenium and GPx3 activity was abolished in SELENOP-aAb--positive patients, indicating impaired selenium utilisation despite adequate serum selenium levels.

These findings suggest---but do not yet establish---a possible autoimmune mechanism for acquired thyroid hormone resistance in the SELENOP-aAb--positive subgroup: SELENOP-aAb $arrow.r$ impaired tissue selenium delivery $arrow.r$ intracellular selenium deficiency $arrow.r$ reduced DIO2 catalytic activity $arrow.r$ impaired local T4-to-T3 conversion $arrow.r$ tissue-level hypothyroidism despite normal serum TSH and T4. The intermediate steps (tissue selenium delivery, intracellular selenium deficiency) are inferred from general selenoprotein biology; none have been directly measured in ME/CFS tissue. If confirmed, this mechanism would explain why standard thyroid function tests (TSH, FT4) appear normal in these patients while target tissues may be functionally hypothyroid. The potential downstream mitochondrial consequences are discussed in Section @sec:thyroid-mito-regulation of Chapter @ch:energy-metabolism.
] <ach:selenop-autoantibodies>

#warning-env(title: [Replication Status: Not Yet Replicated])[
Single study (Sun et al.\ 2023, $n = 167$ ME/CFS across two cohorts, $n = 545$ controls). The SELENOP-aAb assay used an in-house ELISA; standardised commercial assays are not available. The functional consequence of SELENOP-aAb on tissue selenium delivery is inferred from the biomarker pattern (reduced SPINA-GD, lost Se-GPx3 correlation) but has not been directly measured via tissue biopsy. Independent replication with direct selenium tissue measurement is required.
]

==== Selenium Autoantibodies: Potential Implications for Brain T3 Availability

The implications of selenium autoantibodies extend beyond systemic thyroid hormone metabolism to brain neuroplasticity specifically. All three deiodinases (DIO1, DIO2, DIO3) are selenoproteins requiring selenocysteine at their catalytic site. DIO2, expressed at ~50-fold higher levels in astrocytes than other brain cells, is the brain's primary T3 source (Section @sec:astrocyte-t3-factory in Chapter @ch:neurological). Selenium autoantibodies that impair selenium transport would reduce DIO2 catalytic activity in astrocytes, creating a brain-specific T3 deficit that compounds the systemic Low T3 Syndrome.

Additionally, selenium is required for glutathione peroxidases (GPx1--GPx4), thioredoxin reductases, and selenoprotein P---all of which protect neurons against oxidative stress. If SELENOP autoantibodies impair selenium availability in brain tissue (which has not been directly measured), this could in principle affect both antioxidant defence (via GPx) and thyroid hormone activation (via DIO2)---though the magnitude and clinical significance of each effect remain speculative.

#speculation(title: [Selenium Autoantibody-Defined ME/CFS Subgroup with Impaired Neuroplasticity])[
*Certainty: 0.25.* The 9.6--15.6% of ME/CFS patients with selenium autoantibodies may represent a clinically identifiable subgroup with autoimmune-mediated impairment of brain neuroplasticity. These patients would be predicted to show: (a) more severe cognitive dysfunction relative to their systemic disease markers; (b) disproportionately poor response to T4 monotherapy (because DIO2 cannot convert it to T3); (c) preferential response to direct T3 supplementation (bypassing DIO2 entirely); and (d) potential benefit from selenium supplementation to partially overcome the autoantibody-mediated transport deficit.

*Testable prediction:* ME/CFS patients stratified by selenium autoantibody status should show divergent cognitive outcomes with T3 versus T4 supplementation---autoantibody-positive patients should improve more with T3 than T4, while autoantibody-negative patients may respond comparably to either.

*Null prediction:* The same data pattern (impaired DIO2 in a subgroup) could equally indicate that SELENOP-aAb--positive patients are simply more severely ill and respond to any effective treatment, not specifically T3 or selenium. If SELENOP-aAb status does not predict differential treatment response, the subgroup distinction has prognostic but not therapeutic significance.
] <spec:selenium-neuroplasticity>

