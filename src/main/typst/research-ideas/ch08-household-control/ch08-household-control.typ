#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Chapter 8: The Household Negative Control Study
// Type: Study Design
// =============================================================================

= The Household Negative Control Study
<ch:household-control>

#chapter-abstract[
A low-cost, high-signal epidemiological design: recruit households where one person has ME/CFS and the cohabiting partner does not. Both share environment (diet, microbiome, air quality, infectious exposure). If the partner shows subclinical versions of ME/CFS abnormalities, that implicates an environmental trigger. If the partner is perfectly healthy, that strongly favors host-specific drivers (genetics, autoimmunity, epigenetic vulnerability). The design uses the cohabiting partner as a built-in negative control, eliminating the confounding that plagues conventional case-control studies.
]

== Motivation

Standard ME/CFS case-control studies compare patients to unrelated healthy controls. This approach confounds:
- Environment (patients and controls live in different homes, eat different diets, have different infectious exposure histories)
- Genetics (unrelated individuals)
- Microbiome (environmentally and genetically determined)
- Socioeconomic factors

The household design eliminates all of these by using the cohabiting partner as the control. The partner shares:
- Home environment (mold, air quality, water)
- Diet (same meals, same food sources)
- Microbial environment (shared microbiome through cohabitation)
- Geographic location
- Socioeconomic status

What differs:
- Host genetics (unrelated, unless consanguineous)
- Disease status
- Potentially: chronic stress (the healthy partner may have caregiver stress)
- Potentially: the initiating infectious trigger (if the ME/CFS-triggering infection was specific to the patient)

This design is rare in the ME/CFS literature despite being standard in infectious disease epidemiology (household transmission studies) and microbiome research (cohabitation studies).

== Study Design

=== Cohorts

*Group 1: ME/CFS patients (n = 100).* Meeting IOM 2015 criteria, stratified by severity and duration.

*Group 2: Cohabiting healthy partners (n = 100).* Living in the same household, sharing meals, no ME/CFS diagnosis. Age- and sex-matched to their partner by design (partnership correlation).

*Group 3: Unrelated healthy controls (n = 100).* Age- and sex-matched to the patient cohort, living in separate households. This arm provides the conventional comparison baseline and allows quantification of how much the household design improves over the standard design.

=== Deep Phenotyping Panel (Reduced)

The household design prioritizes parameters with strong environmental or infectious determinants:

*Immune function.* NK cytotoxicity, T cell subsets (flow cytometry), plasma cytokine panel (27-plex). *Hypothesis:* If partners show subclinical NK dysfunction or cytokine elevation, an environmental trigger (common infectious agent, shared microbiome dysbiosis) is implicated.

*Autoimmunity.* GPCR autoantibody panel (β2, M3, M4), ANA. *Hypothesis:* Autoantibodies should be absent in partners, regardless of environment — autoimmunity is host-specific.

*Epigenetics.* PBMC DNA methylation array (EPIC 850K). *Hypothesis:* If partners show methylation signatures intermediate between patients and unrelated controls, the environment contributes to the epigenetic profile. If partners are identical to unrelated controls, epigenetic changes are disease-specific or genetically determined.

*Gut microbiome.* Stool 16S rRNA sequencing, plasma LPS-binding protein, plasma zonulin. *Hypothesis:* Partners share microbiome profiles with patients (cohabitation effect); any differences between patients and partners represent disease-specific rather than environmental effects.

*Metabolomics.* Plasma metabolomics (LC-MS untargeted). *Hypothesis:* Partners share dietary metabolites with patients but differ in disease-related metabolites (kynurenine pathway products, NAD+ precursors, TCA cycle intermediates).

*Viral serology.* EBV VCA IgG, EBV EA IgG, HHV-6 IgG, CMV IgG, SARS-CoV-2 nucleocapsid IgG. *Hypothesis:* Partners share exposure history for common viruses but may differ in chronicity/reactivation markers (EBV EA IgG elevation is expected in patients but not partners if viral reactivation is a consequence rather than a cause of immune dysfunction).

*Wearable data.* 2-week continuous HR, HRV, step count, sleep. *Hypothesis:* Partners will show normal physiology; any subclinical autonomic abnormalities suggest environmental modulation of the autonomic nervous system.

=== Analysis Plan

*Primary analysis.* Three-group comparison (patients vs partners vs unrelated controls) for each parameter. The key comparison is *patients vs partners* — this isolates disease effects after controlling for environment.

*Household-level analysis.* For each parameter, compute the intraclass correlation coefficient (ICC) across households: ICC = (between-household variance) / (total variance). High ICC indicates strong environmental contribution (patients and partners are similar because they share environment). Low ICC indicates strong host-specific contribution (patients and partners differ despite shared environment).

*Partner subclinical analysis.* For each parameter, test whether the partner mean differs from unrelated controls. The direction and magnitude of any subclinical shift reveals:
- *Significant shift toward patient values:* Environment-driven parameter (e.g., a shared microbiome signature, a shared dietary metabolite profile).
- *No shift (partner = unrelated control):* Disease-specific parameter (e.g., NK cytotoxicity exhaustion, GPCR autoantibodies).

*Caregiver stress analysis.* Partners of severe patients experience chronic stress and sleep disruption that could produce physiological changes independent of environmental factors. A subgroup analysis comparing partners of severe vs mild patients controls for this confound: if the partner shift scales with patient severity, caregiver stress is implicated; if the shift is independent of severity, environment is implicated.

=== Expected Findings by Parameter

| Parameter | Expected pattern | Implication if confirmed |
|-----------|-----------------|--------------------------|
| GPCR autoantibodies | Patient >> Partner = Control | Host-specific autoimmune process |
| NK cytotoxicity | Patient < Partner < Control (intermediate) | Environmental immune suppression |
| Gut dysbiosis | Patient ~ Partner < Control | Shared environmental dysbiosis; disease effect is additive |
| LPS translocation | Patient > Partner = Control | Disease-induced barrier dysfunction, not shared environmental exposure |
| DNA methylation | Patient ≠ Partner ≠ Control (three distinct profiles) | Combined host + environmental + disease-specific epigenetic landscapes |
| Viral serology (chronicity) | Patient > Partner = Control | Viral reactivation is disease-consequence, not shared exposure |
| HRV (RMSSD) | Patient < Partner = Control | Autonomic dysfunction is disease-specific |
| Metabolomics (dietary) | Patient ~ Partner ~ Control | Shared diet, not disease-related |
| Metabolomics (kynurenine) | Patient > Partner = Control | Disease-specific metabolic shift, not dietary |

=== The Unique Value: Resolving Environment vs Host

The household design addresses the fundamental question that the field has circled for decades: is ME/CFS triggered by an environmental agent (persistent infection, environmental toxin, microbiome dysbiosis) that the healthy partner has also been exposed to but somehow resisted, or a host-specific vulnerability (genetic susceptibility, autoimmune breakthrough, epigenetic predisposition) that the partner lacks?

The answer is not binary — it will likely be a mixed picture with some parameters showing environmental contribution and others showing host-specificity. But the household design can *quantify the relative contribution* of environment vs host for each parameter, which no conventional case-control study can do.

#proposal[
*Implementation.* Multi-center recruitment through ME/CFS clinics (patients already in contact with the healthcare system; partners are easily recruited through the patient). Single-visit data collection (blood draw, stool sample, wearable deployment, questionnaire). The design is logistically simpler than the deep phenotyping contrast (Ch5) because it does not require CPET, MRI, PET, or tilt table testing — it leverages epidemiological design rather than technological depth.

*Budget.* Estimated USD 500,000–1,000,000 for 300 participants (the metabolomics and epigenetics are the cost drivers).
]

== Feasibility

*Effort.* Moderate — primarily recruitment coordination and assay costs. The design itself is simple.

*Recruitment.* The household design has natural recruitment advantages: the patient is the entry point to the household, and motivated patients bring their partners. This is easier than recruiting unrelated controls. The main barrier is partner willingness to participate (time commitment, blood draw, stool sample).

== Limitations

#limitation[
*Confounding by caregiving.* The healthy partner of a severe ME/CFS patient experiences chronic stress, sleep disruption, and reduced personal health maintenance. These can produce physiological changes (elevated cortisol, reduced HRV, mild immune changes) that mimic subclinical environmental effects. The subgroup analysis by patient severity partially addresses this but cannot fully eliminate it.

*Assortative mating.* Partners may share pre-existing similarities (dietary preferences, health behaviors, socioeconomic status) that create spurious environmental correlations. Unrelated controls address this partially.

*Transmission direction ambiguity.* If partners share microbiome dysbiosis, does the patient's dysbiosis transmit to the partner (horizontal transmission), or did the shared environment produce dysbiosis in both? Longitudinal data (testing partners at relationship start vs years later) would resolve this but is logistically challenging.

*No longitudinal arm.* The cross-sectional design cannot distinguish whether the patient's physiology changed after disease onset or was always different. A longitudinal arm tracking partners over time would detect whether partners develop abnormalities — but this requires years of follow-up.
]

== Consequence

#key-point[
The household negative control design is among the most cost-effective epidemiological study designs available for ME/CFS. It exploits an existing natural experiment — cohabitation — to disentangle environmental from host-specific drivers without requiring any new assay or technology. The design has been standard in infectious disease and microbiome research for decades; its absence from the ME/CFS literature is a gap waiting to be filled.
]
