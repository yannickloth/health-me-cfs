#import "../../../../shared/environments.typ": *

=== Natural Killer (NK) Cell Dysfunction
<sec:nk-cells>

Natural killer cell abnormalities represent one of the most replicated findings in ME/CFS research, with impaired NK cell function reported across numerous independent studies spanning decades. A 2019 systematic review of 17 case-control studies (1994–2018) found that impaired NK cell cytotoxicity remained the most consistent immunological abnormality across all publications .

==== Reduced NK Cell Cytotoxicity

NK cells eliminate virus-infected and malignant cells through direct cytotoxic mechanisms. ME/CFS patients consistently demonstrate decreased cytotoxic activity, with reduced ability to kill target cells (typically K562 erythroleukemia cells in standard assays). The magnitude of this impairment is substantial, with studies reporting statistically significant reductions across multiple cohorts . Lower NK cell function correlates with greater symptom severity in some studies. These abnormalities remain stable over time, suggesting a chronic rather than transient dysfunction. A 2024 meta-analysis of 28 studies encompassing approximately 2,982 subjects quantified this deficit as a large effect (Hedges' g = 0.96, 95% CI: 0.75--1.18), with ME/CFS NK cytotoxicity approximately half that of healthy controls .

However, the largest multi-site study to date produced a null result. The MCAM (Multi-site Clinical Assessment of ME/CFS) sub-study tested 174 ME/CFS patients and 86 healthy controls from five US specialty clinics using a flow cytometry-based killing assay on overnight-shipped PBMCs @Querec2023MCAM. Mean cytotoxicity was virtually identical: 34.1% in ME/CFS versus 33.6% in controls ($p = 0.79$). No associations with disease severity, illness duration, or onset type were found. Notably, Nancy Klimas---whose foundational 1990 study first documented large NK deficits---is a co-author on this null study, lending it credibility.

#limitation(title: [NK Cytotoxicity: Unresolved Methodological Dispute])[
The MCAM null result was excluded from the Baraniuk 2024 meta-analysis on methodological grounds: overnight sample shipping may degrade cytotoxicity sufficiently to erase real group differences, and the intracellular DNA staining endpoint detects late-stage cell death rather than early apoptosis (unlike Annexin V used in positive studies). The MCAM team's own validation study found good correlation between their shipped-sample fluorescence assay and same-day chromium-51 release ($R^2 = 0.80$, $p = 0.001$), arguing that group-level differences should still be detectable @Querec2023MCAM. Whether this correlation is sufficient to claim equivalence remains contested. The dispute has practical implications: if NK cytotoxicity requires same-day local processing to detect, it cannot serve as a scalable clinical biomarker regardless of its biological reality.
]

==== Mechanisms of Impaired Cytotoxicity

Several mechanisms may underlie reduced NK cell function:

*Perforin and Granzyme Deficiency*
NK cells kill targets by releasing cytotoxic granules containing perforin (which creates pores in target cell membranes) and granzymes (which trigger apoptosis). Maher et al.\ (2005) demonstrated a mechanistic basis for impaired cytotoxicity: ME/CFS patients show a 45% reduction in NK cell perforin content (3,320 vs 6,051 rMol/cell, $p = 0.01$), with significant correlation between perforin levels and cytotoxic function @Maher2005. Additionally, Brenu et al.\ (2011) found a paradoxical pattern of elevated perforin but decreased granzyme A and K expression in a large cohort (n=95), suggesting dysfunction in granzyme production or granule composition despite adequate perforin @Brenu2011. These cells exhibit impaired degranulation despite successfully recognizing target cells, indicating dysfunction in granule trafficking and release mechanisms.

*Receptor Abnormalities*
NK cell activation is regulated by a balance between activating and inhibitory receptors. ME/CFS patients show altered expression of activating receptors (NKG2D, NKp46, NKp30) along with changed inhibitory receptor profiles @Brenu2011 . Additionally, signaling downstream of activating receptors is impaired, and calcium flux following receptor engagement is disrupted .

*Metabolic Dysfunction*
NK cells require substantial energy for cytotoxic function. ME/CFS NK cells exhibit impaired glycolytic metabolism and mitochondrial dysfunction affecting ATP production @Brenu2011. This reduced metabolic reserve limits their capacity for sustained activity. The concept of mitochondrial reserve as a functional bottleneck extends beyond immune cells: spare respiratory capacity may also limit thermoregulatory work (@spec:mitochondrial-reserve-thermoreg), illustrating how the same cellular energetic deficit manifests across multiple physiological systems. A 2026 study in SLE demonstrated that NK cell mitochondrial dysfunction — enlarged dysfunctional mitochondria with impaired mitophagy and lysosomal acidification — directly drives defective cytotoxicity @Fluder2026NKmitoSLE, raising the testable hypothesis that mitochondrial impairment may contribute to, rather than merely accompany, NK dysfunction in ME/CFS. Note that SLE NK cells operate in a distinct immunological environment (type I IFN, BAFF, immune complexes) absent in ME/CFS; whether mitochondrial structural abnormalities in ME/CFS NK cells are comparable remains uncharacterized.

==== NK Cell Subsets

Human NK cells are divided into functionally distinct subsets. CD56#super[bright] NK cells primarily produce cytokines and are found mainly in lymphoid tissues, while CD56#super[dim] NK cells are primarily cytotoxic and predominate in peripheral blood. ME/CFS studies have reported altered CD56#super[bright]/CD56#super[dim] ratios, with an increased proportion of CD56#super[bright] cells in some studies  . Reduced absolute numbers of CD56#super[dim] cytotoxic cells and abnormal maturation patterns have also been observed .

==== Clinical Significance of NK Cell Dysfunction

Impaired NK cell function may contribute to ME/CFS through several mechanisms:

    - *Viral reactivation*: Inadequate control of latent herpesviruses (EBV, HHV-6, CMV)
    - *Tumor surveillance*: Theoretical increased cancer risk (though not clearly demonstrated)
    - *Immune regulation*: NK cells modulate other immune cells; dysfunction may permit chronic inflammation
    - *Infection susceptibility*: Reduced defense against new infections

These mechanisms may form a self-reinforcing cycle rather than a simple linear causal chain. In particular, the relationship between NK cell dysfunction and viral reactivation is bidirectional: impaired NK function permits viral reactivation, but chronic viral reactivation itself may further exhaust and dysregulate NK cells. The following section examines viral persistence and clearance failure mechanisms that may drive this cycle, with testable predictions for distinguishing recovery from chronicity. This bidirectional cycle represents one of several vicious cycles maintaining ME/CFS pathophysiology, discussed comprehensively in Section @sec:unifying-mechanisms of Chapter @ch:integrative-models.

