#import "../../../../shared/environments.typ": *

=== Limitations

#limitation(title: [Recruitment: Rare Population with Geographic Constraints])[
Discordant MZ twins with ME/CFS are rare. The disease prevalence (~0.2--0.4%) multiplied by the MZ twin birth rate (~0.3% of births) yields approximately 0.6--1.2 affected MZ twins per 100,000 individuals. Of these, only the subset whose co-twin remains healthy AND who can travel to the imaging site is eligible. The yield from all available registries and outreach is uncertain — the study may recruit fewer than 30 pairs. At n=15, power is ~54% for δ = 0.53 SD, and only large effects (δ > 1.0) would be detectable. The study's feasibility depends on comprehensive, multi-national recruitment with the willingness to fund travel.

*Mitigation:* If recruitment lags behind schedule at month 18 (fewer than 15 pairs enrolled), the study pivots from a powered primary analysis to a descriptive/pilot design with effect size estimation and Bayesian analysis (reporting posterior distributions rather than hypothesis tests). The data would still be uniquely informative — even n=10 pairs with imaging is the largest MZ twin imaging study in ME/CFS by an order of magnitude.
]

#limitation(title: [Selection Bias Toward Less Severe Patients])[
The requirement to travel to an imaging site and undergo two days of testing selects for mild-to-moderate ME/CFS patients who can tolerate travel, sustained upright posture, and cognitive testing. Severe and very severe patients (~25% of the ME/CFS population) are systematically excluded. This matters because the striatal pathology might be more pronounced in severe patients — the observed effect size could underestimate the true population effect. If the null hypothesis is not rejected, it could be because VMAT2 reduction exists only in the severe subgroup that was not sampled.

*Mitigation:* Include home-visit options for clinical phenotyping in patients who cannot travel. Consider a mobile imaging unit (MRI truck with PET capability) in a future extension. Acknowledge that generalisability to severe/very severe patients is unknown.
]

#limitation(title: [Single Timepoint — Causality Unresolved])[
The cross-sectional design captures one snapshot. It cannot determine whether VMAT2 reduction preceded illness onset (pre-existing vulnerability that lowered the threshold for post-infectious ME/CFS) or developed after onset (acquired pathology). The twin design eliminates genetic confounding, but it does not establish temporality between the trigger event and the imaging findings.

*Mitigation:* Include questions about pre-illness apathy, motor slowing, and reward sensitivity (retrospective report — limited but informative). The longitudinal extension (re-imaging after recovery or worsening) would resolve temporality but requires a separate study.
]

#limitation(title: [VMAT2 PET Tracer Availability])[
(+)-11C-DTBZ requires an on-site cyclotron (carbon-11 half-life = 20.4 minutes). This restricts the study to imaging centres with cyclotron capability — typically academic medical centres. 18F-AV-133 (fluorine-18, half-life = 109.8 minutes) can be distributed regionally but is less established for VMAT2 quantification. The Liu 2026 long COVID data used (+)-11C-DTBZ, so switching to 18F-AV-133 would require tracer-specific reference ranges and limits direct comparison.

*Mitigation:* Partner with a PET centre that has existing VMAT2 imaging programmes (e.g., Toronto group behind the Liu 2026 study). If 18F-AV-133 is used, include a cross-validation substudy (n=5 healthy volunteers scanned with both tracers).
]

#limitation(title: [Microbiome: Cross-Sectional, Single Sample])[
A single stool sample per participant captures point-prevalence microbiome composition but misses temporal variability. The microbiome fluctuates with diet, sleep, stress, and medication — a snapshot may misclassify participants. ME/CFS patients also have altered gastrointestinal transit time, which affects stool consistency and microbial composition independent of microbial ecology @NagySzakal2017.

*Mitigation:* Include dietary and medication covariates in all analyses. Collect stool consistency data (Bristol Stool Scale). A longitudinal microbiome substudy (weekly samples for 4 weeks in n=10 pairs) would quantify within-subject variability and inform interpretation of the single-sample design.
]

#limitation(title: [LSR: First-in-Class Measurement in Twins])[
The LSR has never been measured in any disease population — there is no reference range for healthy adults, let alone for discordant twin pairs. The interpretation of within-pair LSR differences depends on the assay's test-retest reliability, which is unknown. If technical variability exceeds the expected biological effect size, the twin design cannot distinguish signal from noise.

*Mitigation:* The pilot phase (Phase 0) includes LSR measurements in n=20 healthy controls and n=5 healthy twin pairs to establish reference ranges and within-pair variability. If within-pair variability in healthy twins is high (coefficient of variation $>$20%), the LSR component is demoted to exploratory.
]

#limitation(title: [Medication Confounds on Dopaminergic Imaging])[
Many ME/CFS patients take medications that affect dopaminergic signalling: SSRIs/SNRIs (indirect DA modulation via serotonin-dopamine interactions), stimulants (methylphenidate, modafinil — DAT blockade directly confounds DAT SPECT), low-dose naltrexone (opioid modulation of DA), antipsychotics (D2 blockade), antiemetics (D2 blockade). DAT blockade by stimulants is a direct confound for the DAT SPECT measure (not just an indirect pathway confound). The washout period (5 half-lives) is feasible for most medications but may be clinically unacceptable for patients stabilised on SSRIs.

*Mitigation:* Allow stable SSRIs (≥3 months, unchanged dose) as an exception, with sensitivity analysis excluding SSRI users. Document all medications and perform post-hoc analysis stratified by medication class. An observational compromise — the alternative (mandatory washout of all CNS-active medications) would make recruitment impossible.
]

#limitation(title: [Radiation Exposure Cumulation])[
VMAT2 PET + DAT SPECT + (optional) TSPO PET exposes each participant to ~15--25 mSv total effective dose, depending on tracers and administered activities. Within research ethics guidelines for studies with direct participant benefit potential; precludes repeated imaging (longitudinal design requires separate ethics justification) and may deter participation.

*Mitigation:* Explicit informed consent with personalised radiation risk counselling. Participant information materials include plain-language radiation dose comparison (e.g., equivalent to 5--8 years of background radiation). The single-site design avoids cumulative exposure from repeated visits.
] <sec:mz-twin-limitations>

=== Analysis Plan

*Primary analysis (VMAT2 PET):* Within-pair paired t-test of BP_ND in each of 5 striatal subregions (ventral striatum, dorsal putamen pre-commissural, dorsal putamen post-commissural, dorsal caudate head, dorsal caudate body), FDR-corrected across subregions (q < 0.05). Secondary: linear mixed-effects model with pair as random effect and affection status as fixed effect, adjusting for age, sex, and scan order (affected vs unaffected twin scanned first).

*Multiplicity correction across primary outcome domains (VMAT2, DAT, microbiome α-diversity):* the three primary comparisons are hierarchically ordered (tier 1: VMAT2; tier 2: DAT; tier 3: microbiome α-diversity). Tier 2 and 3 are tested only if tier 1 is significant, providing strong control of familywise error at α=0.05. If the hierarchical structure is not invoked, Benjamini-Hochberg FDR correction (q < 0.05) is applied across the three primary p-values.

*DAT SPECT analysis:* Identical to VMAT2 analysis within each subregion. Primary readout: within-pair DAT SBR difference. Secondary: VMAT2 × DAT interaction — does the discordance pattern (concordant vs dissociated presynaptic markers) discriminate terminal loss from functional vesicular impairment?

*Microbiome analysis:* Paired tests: α-diversity (Shannon index) compared within-pair using paired Wilcoxon signed-rank test. β-diversity: PERMANOVA on Bray-Curtis distance with pair as strata. Differentially abundant species: MaAsLin 2 with within-pair blocking (pair as random effect). Correlation analysis: Spearman's ρ between Shannon index and VMAT2 BP_ND across all twins (n=100).

*LSR analysis:* Within-pair paired t-test of LSR. Secondary: LSR in affected twins vs healthy reference pairs (independent t-test); LSR in unaffected twins vs healthy reference pairs. Avidity index distribution: histogram with mixture model testing for bimodality.

*Correlation structure across domains:* Canonical correlation analysis (CCA) or regularised CCA (rCCA) relating the VMAT2 vector (5 subregions), microbiome vector (genus-level relative abundances), and LSR within each participant. This tests the multivariate hypothesis that striatal imaging, microbiome composition, and herpesvirus serology co-vary in a coordinated pattern.

*Severity gradient analysis:* Within-pair VMAT2 difference regressed on within-pair FSS difference, SF-36 difference, and DSQ-PEM difference. Mixed-effects models with pair-level random intercepts.

*Sensitivity analyses:* (a) Exclude SSRI/SNRI users; (b) exclude participants with antibiotic use ≤6 months; (c) exclude participants with prebiotic/probiotic use ≤2 weeks; (d) restrict to post-infectious onset pairs; (e) restrict to pairs where affected twin has apathy score above the median.

=== Data Sharing and Reproducibility

All de-identified data (VMAT2 BP_ND values, DAT SBR values, microbiome OTU tables, LSR values, clinical phenotypes) will be deposited in a public repository (e.g., dbGaP, Synapse, or Zenodo) at the time of publication. Imaging data (DICOM) will be shared through an appropriate neuroimaging repository (e.g., OpenNeuro). Twin data require additional privacy protections: within-pair identifiers will be coded such that co-twin linkage is preserved for analysis but individual identification is impossible. All analysis code will be published as version-controlled repositories with containerised environments (Docker) to ensure computational reproducibility.

=== Funding and Implementation

*Funding sources:* NIH (NINDS, NIAID, or Common Fund High-Risk High-Reward programme), Wellcome Trust, Open Medicine Foundation, or European Research Council. The study qualifies as high-risk/high-reward: the recruitment target is ambitious, the imaging modalities have never been combined in ME/CFS, and the null result is as informative as a positive one — a characteristic of well-designed high-risk studies.

*Implementation consortium:* A multi-institutional collaboration is required. At minimum: (1) a PET centre with VMAT2 imaging capability and an on-site cyclotron (or regional 18F-AV-133 supply chain); (2) a nuclear medicine department with DaTSCAN SPECT capability; (3) a microbiome sequencing core with shotgun metagenomics pipelines; (4) a clinical ME/CFS centre with diagnostic expertise and patient networks; (5) a twin registry with discordant-pair identification infrastructure; (6) a biostatistics group with expertise in paired designs and high-dimensional correlation structures.

*Neuro-COVID bridge funding:* The Toronto group (Liu, Braga, et al.) has existing VMAT2, TSPO, and MAO-B PET data in long COVID. A direct collaboration would enable cross-syndrome comparison of striatal pathology between ME/CFS and long COVID in genetically controlled (twin) and uncontrolled designs. This bridge would be a unique contribution — no study has compared striatal PET findings across post-infectious syndromes.

=== Relationship to Existing Work

- *Identical Twin Matcher:* The present study generates the deep-phenotype twin registry that the Matcher requires. The Matcher is a patient-facing nearest-neighbor lookup; the present study provides the infrastructure-grade entries.
- *DecodeME (@DecodeME2025):* The MSN enrichment finding provides the genetic rationale for targeting the striatum. The present study tests whether this genetic signal translates to functional pathology.
- *Long COVID VMAT2 PET (@Liu2026VMAT2longcovid):* The present study extends the VMAT2 finding to ME/CFS, testing generalisability across post-infectious syndromes.
- *LSR Biomarker Validation (@sec:lsr-biomarker-validation-study):* The present study provides within-subject genetic control evidence that complements the larger cross-sectional validation design.
- *Striatal Dopaminergic Terminal Loss Speculation:* The present study provides the empirical test of this speculation.
- *Chaudhuri & Behan Striatal-Thalamic-Frontal Hypothesis (@hyp:striatal-symptom-signalling):* The present study provides the first direct striatal imaging test of this 25-year-old hypothesis with genetic control.
