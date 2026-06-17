#import "../../../../shared/environments.typ": *

=== Pro-inflammatory Cytokines
<sec:pro-inflammatory>

==== Interleukin-1 (IL-1)

IL-1 is a master regulator of inflammation, with IL-1$beta$ often elevated in ME/CFS. Its effects include fever, fatigue, muscle breakdown, and the acute phase response. Notably, IL-1 produces “sickness behavior” in the central nervous system that closely resembles ME/CFS symptoms, and levels may correlate with symptom severity.

==== Interleukin-6 (IL-6)

IL-6 has both pro- and anti-inflammatory effects and is frequently elevated in ME/CFS, particularly in early illness. This cytokine induces acute phase proteins, promotes B cell differentiation, and crosses the blood-brain barrier to affect central nervous system function. IL-6 correlates with fatigue in other conditions, suggesting a mechanistic link to this cardinal ME/CFS symptom.

==== Tumor Necrosis Factor-Alpha (TNF-$alpha$)

TNF-$alpha$ is a central inflammatory cytokine elevated in some ME/CFS studies. It causes fatigue, malaise, and cognitive dysfunction while also affecting mitochondrial function and promoting muscle wasting (cachexia) via ubiquitin-proteasome pathway activation. Variable findings across studies may reflect patient heterogeneity within the ME/CFS population. Nutritional anti-catabolic strategies that inhibit the ubiquitin-proteasome pathway — such as HMB, a leucine metabolite that preserved lean mass in a bed rest RCT — may partially offset TNF-$alpha$-driven muscle catabolism in immobilized patients; this is discussed in Section @subsec:muscle-preservation-bedbound @Deutz2013HMB.

==== Interferons

Type I interferons (IFN-$alpha$, IFN-$beta$) are antiviral cytokines elevated in some ME/CFS patients. These interferons cause profound fatigue (as known from their therapeutic use in other conditions) and may indicate ongoing viral activation. Interferon-induced gene expression patterns have been observed in ME/CFS. Type II interferon (IFN-$gamma$) activates macrophages and promotes Th1 responses, though findings in ME/CFS are variable; levels may be elevated or reduced depending on disease stage.

==== Interleukin-2 (IL-2)

IL-2 is a critical cytokine for T cell function and immune regulation:

    - *T cell proliferation*: Essential for clonal expansion of activated T cells
    - *Regulatory T cell maintenance*: Required for Treg development and suppressive function
    - *NK cell activation*: Enhances NK cell cytotoxicity
    - *Memory T cell formation*: Supports long-term immunity
    - *Therapeutic use*: Low-dose IL-2 used in autoimmune diseases to boost Tregs; high-dose IL-2 used in cancer immunotherapy

IL-2 signaling requires three receptor subunits (CD25/CD122/CD132) and activates JAK/STAT pathways. Dysregulation can lead to either immune deficiency (insufficient IL-2 or receptor expression) or autoimmunity (Treg dysfunction). Recent evidence suggests IL-2 pathway abnormalities in ME/CFS (see hypothesis below).

==== Cytokine Patterns Across Disease Duration

#achievement(title: [Duration-Dependent Cytokine Signatures])[
Hornig et al.  identified distinct immune signatures in ME/CFS that vary dramatically by disease duration. In a cohort of 298 ME/CFS patients and 348 healthy controls, early-stage patients (illness duration $<$3 years, n=52) showed prominent activation of both pro- and anti-inflammatory cytokines, with elevated levels of IL-1$alpha$, IL-8, IL-10, IL-12p40, IL-17F, IFN-$gamma$, CXCL1 (GRO-$alpha$), CXCL9 (MIG), and IL-5 (all p$<$0.05, FDR-corrected). A 17-cytokine panel distinguished early ME/CFS from controls with high diagnostic accuracy.

In stark contrast, patients with longer disease duration ($>$3 years, n=246) had cytokine profiles that normalized to control levels, with no significant differences for most cytokines. This finding represents the first large-scale evidence that ME/CFS immunopathology evolves over time, potentially from initial immune activation to exhaustion or adaptation.
] <ach:cytokine-duration>

#warning-env(title: [Replication Status])[
Single study (Hornig 2015, n=298 total, but only n=52 in the critical early-stage subgroup). The duration-dependent pattern has not been independently replicated. The small early-stage sample limits confidence in the 3-year inflection point. Cross-sectional design cannot distinguish true longitudinal evolution from cohort effects. Longitudinal studies tracking individual patients over time are needed.
]

*Implications of Duration-Dependent Cytokine Changes*

The Hornig et al.\ findings have profound implications:

    - *Therapeutic windows*: Early-stage disease may respond better to immunomodulatory therapies targeting active inflammation
    - *Study heterogeneity*: Failure to stratify by disease duration explains contradictory findings in previous cytokine studies
    - *Biomarker utility*: Cytokine profiling is most useful as a diagnostic tool within the first 3 years of illness
    - *Disease progression*: Normalization may reflect immune exhaustion, regulatory adaptation, or shift to different pathological mechanisms

Hornig et al.\ found that illness duration was more strongly predictive of cytokine patterns than symptom severity in their cross-sectional analysis, suggesting that immune changes primarily reflect disease stage . However, this group-level observation does not preclude severity-related gradients within early-stage or late-stage patients (see following section).

==== Cytokine-Severity Correlations

#achievement(title: [Cytokine-Severity Biomarker Panel])[
Montoya et al.  demonstrated dose-response relationships between cytokines and symptom severity in 192 ME/CFS patients compared to 392 healthy controls. Although only two cytokines differed overall between patients and controls (TGF-$beta$ higher and resistin lower), 17 cytokines showed statistically significant upward linear trends correlating with disease severity. Thirteen of these 17 are proinflammatory, including CCL11 (Eotaxin-1), CXCL1 (GRO-$alpha$), CXCL10 (IP-10), IFN-$gamma$, IL-4, IL-5, IL-7, IL-12p70, IL-13, IL-17F, G-CSF, GM-CSF, and TGF-$alpha$.

This dose-response relationship—rather than simple binary patient-control comparison—provides stronger evidence that immune activation tracks with symptom burden. The findings suggest cytokine profiling could stratify patients for clinical trials and identify individuals likely to benefit from anti-inflammatory therapies.
] <ach:cytokine-severity>

#warning-env(title: [Replication Status: Partially Replicated])[
The cytokine-severity correlation pattern is directionally consistent with Hornig 2015's findings, providing convergent support from a different analytic approach. However, specific cytokine identities differ between studies, and neither has been independently replicated with the same panel and methodology.
]

Notably, CXCL9 (MIG) inversely correlated with fatigue duration, showing higher levels in early disease and lower levels in chronic disease . This continuous inverse correlation mirrors Hornig's group-level finding of elevated early-disease cytokines, providing convergent support from a different analytic approach (within-group correlation versus cross-sectional comparison of early vs.\ late subgroups).

==== Sex-Specific Cytokine Dysregulation

<obs:sex-cytokines>
Recent work by Che et al.  in a large multi-center cohort revealed that hyperinflammatory cytokine responses are particularly pronounced in women over 45 years of age with diminished estradiol levels. Using multi-omics analysis including microbial stimulation assays (heat-killed _Candida albicans_), the study demonstrated exaggerated production of IL-6 and other proinflammatory cytokines in ME/CFS patients, with responses amplified before and especially after exercise.

The sex- and hormone-specific pattern provides mechanistic insight into the female predominance of ME/CFS (approximately 3:1 female-to-male ratio) and suggests potential therapeutic interventions, such as estrogen supplementation for post-menopausal women with evidence of immune hyperactivation.
This sex-specific finding complements the NIH deep phenotyping study's observation of distinct immune abnormalities in male versus female patients @walitt2024deep, underscoring that ME/CFS pathophysiology may differ fundamentally between sexes.

==== Integrated Model: Duration, Severity, and Sex

Combining findings from Hornig , Montoya , and Che , an integrated model of cytokine dysregulation emerges:

    - *Disease duration*: Early disease ($<$3 years) shows high cytokines at the group level; late disease ($>$3 years) shows normalized group-level cytokines
    - *Disease severity*: Within patient cohorts, severe patients show higher proinflammatory cytokines than mild patients through dose-response relationships
    - *Sex and hormones*: Women, particularly post-menopausal women with low estradiol, show more pronounced immune activation

*Reconciling Duration and Severity Effects*

The Hornig and Montoya findings are not contradictory but complementary. Hornig examined group differences between early-stage and late-stage patients, finding that the early-stage group as a whole had elevated cytokines. Montoya examined severity gradients _within_ their cohort (which included both early and late patients), finding that more severe patients had higher cytokines regardless of duration. These observations can coexist: early disease may be characterized by overall immune activation (shifting the entire distribution upward), while severity effects create gradients within both early and late subgroups. The interaction between duration and severity has not been directly tested in a study stratified by both factors simultaneously.

*Clinical Application*

This integrated model suggests personalized treatment approaches, though these represent theoretical predictions requiring validation:

    - *Early + severe + female + low estradiol*: Predicted to have highest cytokines; most likely to benefit from immunomodulatory therapies (extrapolated from individual studies)
    - *Late + severe + female*: May have severity-driven inflammation despite duration-dependent normalization; immune status assessment needed
    - *Late + mild + male*: Predicted to have lowest cytokines; may require therapeutic strategies targeting mechanisms beyond acute immune activation
    - *All other phenotypes*: Require individualized immune profiling before treatment selection

The implications of patient heterogeneity for treatment stratification and the concept of distinct ME/CFS subtypes are discussed in Chapter @ch:integrative-models, Section @sec:questions.

No study has yet examined all three factors (duration, severity, sex/hormones) simultaneously in a fully stratified design. The clinical predictions above are extrapolations from separate studies and require prospective validation.

#limitation(title: [Integrated Cytokine Model: Extrapolated from Separate Studies])[
The integrated duration/severity/sex model combines findings from Hornig 2015, Montoya 2017, and Che 2025—three studies using different cohorts, cytokine panels, analytic methods, and stratification criteria. No study has simultaneously examined all three factors. The clinical predictions (e.g., “early + severe + female + low estradiol” = highest cytokines) are logical extrapolations, not empirical findings. The interaction effects between duration, severity, and sex may be non-additive in ways not predictable from individual studies.
]

*IL-2 as Emerging Biomarker Target*

#hypothesis(title: [IL-2 Pathway in ME/CFS Pathophysiology])[

*Certainty: 0.45.* Two independent methodological approaches (extracellular vesicle proteomics and epigenetic chromosome conformation) converge on IL-2 pathway dysregulation, lending moderate confidence. However, whether this reflects a causal role or an epiphenomenon of chronic immune activation, and whether the two findings reflect the same underlying process, remain unresolved.

Two independent methodologies implicate the IL-2 pathway in ME/CFS, though through different mechanisms. Giloteaux et al.  found significantly elevated IL-2 specifically in extracellular vesicles from ME/CFS patient plasma (n=49 patients, n=49 controls; q=0.007 after multiple comparison correction), with proinflammatory cytokines CSF2 and TNF$alpha$ correlating with physical and fatigue symptom severity. Independently, Hunter et al.  used epigenetic profiling (EpiSwitch® technology) of chromosome conformation in 47 ME/CFS patients versus 61 controls, identifying IL-2 signaling among dysregulated pathways in a 200-marker panel (92% sensitivity, 98% specificity in validation).

The convergence—extracellular vesicle cytokine content in one study, epigenetic regulation in another—suggests the IL-2 pathway warrants focused investigation. However, several questions remain: Do elevated IL-2 levels in extracellular vesicles reflect the same process as epigenetic dysregulation of IL-2 signaling? Are ME/CFS cells producing excess IL-2, responding abnormally to normal IL-2, or both? Does IL-2 dysfunction contribute causally to symptoms or merely correlate with disease? Further studies measuring IL-2 receptor expression, downstream signaling (JAK/STAT pathway), and functional T-cell responses to exogenous IL-2 could clarify the pathway's role and therapeutic potential.
] <hyp:il2-pathway>

