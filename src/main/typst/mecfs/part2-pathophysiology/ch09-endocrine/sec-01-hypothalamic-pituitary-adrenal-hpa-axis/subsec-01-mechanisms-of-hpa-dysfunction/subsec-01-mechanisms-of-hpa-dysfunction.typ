#import "../../../../shared/environments.typ": *

=== Mechanisms of HPA Dysfunction


The dysregulation of the HPA axis in ME/CFS reflects multiple interconnected mechanisms operating at different levels of the neuroendocrine cascade. Understanding these mechanisms is essential for developing targeted therapeutic interventions and explaining why simple hormone replacement strategies have shown limited efficacy.

==== Central Glucocorticoid Receptor Sensitivity

#fhypothesis(title: [Enhanced Central Glucocorticoid Feedback], falsifiability: [weakly], justification: [Falsified if hypothalamic GR expression is normal or reduced in ME/CFS patients, or if elevated cortisol fails to suppress ACTH via enhanced feedback])[
The enhanced negative feedback sensitivity observed in ME/CFS may result from altered glucocorticoid receptor (GR) expression or function in hypothalamic and pituitary tissues. Several mechanisms could produce this effect. Upregulation of GR expression would increase sensitivity to existing cortisol levels. Altered GR isoform expression (GR$alpha$ vs.\ GR$beta$) might shift the balance toward enhanced feedback. Reduced expression of 11$beta$-hydroxysteroid dehydrogenase type 1 (11$beta$-HSD1), the enzyme that locally amplifies cortisol action by converting inactive cortisone to active cortisol, could diminish local glucocorticoid signaling. Finally, epigenetic modifications of the GR gene might affect transcription and receptor function.
] <hyp:gcr-sensitivity>

This enhanced feedback creates a self-reinforcing cycle. Slightly elevated cortisol (or even normal-low cortisol) triggers disproportionate suppression of CRH and ACTH secretion, further reducing cortisol output. Under normal circumstances, this would reduce feedback inhibition and restore output, but the hypersensitive feedback prevents this compensatory response, maintaining chronically low HPA axis activity. This mechanism explains why ME/CFS patients do not develop frank adrenal insufficiency (baseline cortisol remains detectable) yet fail to mount appropriate stress responses (blunted reactivity to challenges). This self-reinforcing HPA dysfunction represents one of several vicious cycles in ME/CFS pathophysiology, as discussed in Section @sec:unifying-mechanisms of Chapter @ch:integrative-models.

==== Inflammatory Cytokine Effects on HPA Axis

The bidirectional relationship between the immune system and the HPA axis represents a critical mechanism in ME/CFS pathophysiology. Under normal circumstances, immune activation from infection or tissue damage stimulates HPA axis activity. Pro-inflammatory cytokines (IL-1, IL-6, TNF-$alpha$) signal the hypothalamus to increase CRH secretion, resulting in elevated cortisol that dampens the immune response. This creates negative feedback that prevents excessive inflammation. The acute response adaptively contains immune activation while preventing immunopathology.

#fhypothesis(title: [Maladaptive Chronic Inflammatory Signaling], falsifiability: [weakly], justification: [Falsified if ME/CFS immune cells show normal glucocorticoid receptor function and normal immune suppression at physiological cortisol concentrations])[
In ME/CFS, chronic low-grade inflammation (documented in Chapter @ch:immune-dysfunction) may induce glucocorticoid resistance at immune cells while simultaneously increasing central negative feedback sensitivity. This paradoxical pattern produces the worst of both scenarios: insufficient cortisol secretion to control peripheral inflammation due to enhanced central feedback, yet reduced cortisol effectiveness at immune cells due to receptor downregulation or dysfunction @walitt2024deep @heng2025sexspecific. The result is persistent inflammation despite apparent “normal” cortisol levels that would typically suppress such immune activation.
] <hyp:chronic-inflammation-hpa>

Recent evidence from Heng et al.\ (2025) documenting sex-specific immune dysregulation supports this model, showing that females with ME/CFS exhibit particularly pronounced pro-inflammatory profiles with elevated type 2 interferon signaling despite cortisol levels within the reference range @heng2025sexspecific. This suggests functional glucocorticoid resistance at target tissues.

==== Steroidogenic Enzyme Dysfunction

The recent findings by Pipper et al.\ (2024) identifying elevated cortisol precursors (11-deoxycortisol, 17$alpha$-hydroxyprogesterone) in severe ME/CFS patients suggest impaired function of steroidogenic enzymes, particularly 11$beta$-hydroxylase (CYP11B1) which catalyzes the final step converting 11-deoxycortisol to cortisol @pipper2024steroid. This enzyme dysfunction could result from several factors. Mitochondrial impairment may play a role, as steroidogenesis occurs in mitochondria and requires adequate ATP supply (discussed in Chapter @ch:energy-metabolism). Cytokine-mediated suppression of enzyme expression or activity represents another possibility. Micronutrient deficiencies affecting enzyme cofactors or oxidative stress damaging enzyme proteins may also contribute.

If confirmed, this mechanism suggests that the problem is not purely regulatory (hypothalamic-pituitary signaling) but also biosynthetic (adrenal enzymatic capacity). This has important therapeutic implications, as interventions targeting upstream signaling may prove ineffective if the limiting step is enzymatic conversion within the adrenal gland.

==== Post-Viral Pituitary Injury and Secondary Adrenal Insufficiency
<sec:postviral-pituitary>

The three mechanisms described above—enhanced glucocorticoid feedback, cytokine-mediated suppression, and steroidogenic enzyme dysfunction—all involve functional dysregulation of an anatomically intact HPA axis. A distinct and clinically important fourth mechanism operates at the structural level: direct viral injury to the pituitary gland producing secondary adrenal insufficiency. This mechanism warrants separate consideration because it implies a fundamentally different clinical trajectory, a different diagnostic approach, and potentially a different therapeutic response.

#achievement(title: [SARS-1 Survivors Show 39.3% Prevalence of Central Hypocortisolism from Pituitary Involvement])[
Leow et al. @Leow2005sars prospectively followed 61 SARS-1 survivors at three months post-discharge using dynamic endocrine testing. Twenty-four patients (39.3%) met criteria for central hypocortisolism consistent with secondary adrenal insufficiency of pituitary or hypothalamic origin. Two patients (3.3%) had concomitant subclinical thyrotoxicosis; three had central hypothyroidism. Crucially, the hormonal dysfunction of the majority resolved within one year, suggesting that early injury is partially reversible with adequate clinical management. ACE2 receptors are expressed on pituitary cells, providing a direct mechanism for SARS-CoV-1—and by extension SARS-CoV-2—to infect and injure pituitary tissue.
Study: (prospective cohort, $n=61$, Clinical Endocrinology 2005, certainty: 0.70 for SARS-1; translation to post-COVID/ME-CFS inferential).
] <ach:sars-pituitary>

The SARS-1 finding has been extended by evidence from the COVID-19 pandemic. Carosi et al.\ (2024) reviewed COVID-19's impact on pituitary function, documenting variable degrees of pituitary deficiency across published case series, with both direct viral cytopathic effects and immune-mediated hypophysitis proposed as mechanisms @Carosi2024hypopituitarism. ACE2 expression in the hypothalamus and pituitary provides the entry point; the resulting inflammation, ischemia, or autoimmune targeting of pituitary corticotrophs can reduce ACTH output, producing secondary adrenal insufficiency that is clinically indistinguishable from functional HPA suppression unless dynamic testing is performed. Pituitary defects may persist long after acute infection, potentially contributing to the chronic symptom burden of long COVID.

Ruiz-Pablos et al.\ (2024) synthesise these mechanisms into a unified model: genetically predisposed individuals (HLA-DRB1) with deficient CD4 T-cell viral control develop an uncontrolled CD8/antibody response, some directed against pituitary antigens, producing autoimmune hypophysitis or direct pituitary cytopathic injury @Ruiz2024hpa. The resulting ACTH deficiency drives the “hypocortisolemic ASIA” phenotype—a neuroendocrine-immune vicious cycle shared between post-COVID ME/CFS and the broader spectrum of post-infectious and post-vaccine autoimmune syndromes. Notably, the model predicts a reversibility window: early identification of pituitary injury, before long-lived autoreactive plasma cells become established, allows potential recovery of HPA axis function with appropriate intervention.

#fhypothesis(title: [Post-Viral Pituitary Injury as a Structurally Distinct ME/CFS Trigger], falsifiability: [weakly], justification: [Falsified if: (a) prospective pituitary MRI in post-viral ME/CFS cohorts shows no structural abnormalities; (b) ACTH stimulation test responses are uniformly normal across post-COVID ME/CFS patients regardless of acute illness severity; (c) the subgroup with ACTH-deficient secondary AI shows no clinical response to physiological hydrocortisone replacement])[
A subgroup of post-viral ME/CFS patients may develop secondary adrenal insufficiency through structural pituitary injury—including direct ACE2-mediated viral cytopathic effects, ischemia, or autoimmune hypophysitis—rather than through the functional feedback dysregulation that characterises the broader ME/CFS HPA phenotype. Evidence from SARS-1 survivors ($tilde$40% central hypocortisolism @Leow2005sars) and from COVID-19 pituitary case series @Carosi2024hypopituitarism establishes a proof of concept; the Ruiz-Pablos et al.\ model @Ruiz2024hpa proposes a specific autoimmune mechanism linking viral immune dysregulation to pituitary damage.

*Testable predictions:*

    / *(a)*: A subgroup of post-viral ME/CFS patients shows impaired cortisol response on ACTH stimulation testing or insulin tolerance test, consistent with secondary AI rather than functional hypoactivation.
    / *(b)*: Pituitary MRI in this subgroup reveals structural abnormalities (volume reduction, signal changes, enhancement on gadolinium).
    / *(c)*: This subgroup responds to physiological hydrocortisone replacement ($lt.eq$10mg/day) better than ME/CFS patients without pituitary injury.
    / *(d)*: Prevalence of secondary AI correlates with viral tropism for pituitary tissue: higher after SARS-CoV-1/2 (ACE2-expressing pituitary cells) than after EBV or enterovirus triggers.

*Treatment implication:* Dynamic testing (see Appendix @app:diagnostic-tools) is required to identify this subgroup; morning cortisol alone is insufficient because ACTH is low or low-normal, not suppressed.
*Certainty: 0.50* — strong SARS-1 evidence and COVID-19 case series support, but no direct prospective evidence linking pituitary injury specifically to ME/CFS onset; ACE2-mediated mechanism is coronavirus-specific and may not generalise to other ME/CFS triggers.
] <hyp:postviral-pituitary>

#warning-env(title: [Morning Cortisol Alone Cannot Exclude Post-Viral Secondary Adrenal Insufficiency])[
Standard laboratory screening uses morning cortisol to exclude primary adrenal insufficiency (Addison's disease), where cortisol is markedly low and ACTH is elevated. Post-viral secondary adrenal insufficiency presents differently: cortisol may fall in the low-normal range (not flagged as abnormal), and ACTH is low or inappropriately normal rather than elevated. This pattern is invisible to morning cortisol screening alone. Dynamic testing—ACTH stimulation test or insulin tolerance test (ITT)—is required for diagnosis. In any post-COVID ME/CFS patient with fatigue disproportionate to other findings, unexplained hypotension, or clinical features suggestive of cortisol insufficiency, dynamic testing should be considered (see Appendix @app:diagnostic-tools).
] <warn:secondary-ai-testing>

#limitation(title: [SARS-1 Evidence Generalisability to Broader ME/CFS])[
The Leow et al.\ (2005) cohort comprised hospitalised SARS-1 patients with severe acute illness—a higher-severity group than typical community-acquired post-viral ME/CFS. SARS-CoV-1/2 have documented ACE2-mediated pituitary tropism; it remains undemonstrated whether EBV, enteroviruses, or other ME/CFS-triggering pathogens cause comparable structural pituitary injury via different mechanisms. Post-viral pituitary damage should therefore be considered a plausible contributor in the post-COVID ME/CFS subgroup but should not be assumed to represent a universal mechanism across all ME/CFS triggers.
]

#limitation(title: [HPA Axis Dysfunction: Cause, Consequence, or Epiphenomenon])[
The direction of causality between HPA axis abnormalities and ME/CFS remains unresolved. Key epistemic boundaries:

    - No prospective study has demonstrated that HPA dysfunction _precedes_ ME/CFS onset; all data are cross-sectional or retrospective. The closest to prospective evidence remains Leow et al. @Leow2005sars, who documented central hypocortisolism in 39.3% of SARS-1 survivors at three months—but this captures post-acute pituitary injury, not the functional HPA suppression typical of established ME/CFS.
    - Similar HPA axis changes occur in chronic pain syndromes and PTSD (hypoactivation), while melancholic depression shows the opposite pattern (HPA hyperactivation)—the specificity of the ME/CFS profile is unclear.
    - CRH stimulation test results are inconsistent across studies (normal, blunted, or dissociated ACTH/cortisol responses), suggesting heterogeneity rather than a unitary mechanism.
    - Deconditioning, sleep disruption, and psychological stress—all common in chronic illness—independently produce HPA axis changes indistinguishable from those attributed to ME/CFS pathophysiology.
    - The “self-reinforcing cycle” model (enhanced feedback $\to$ low cortisol $\to$ inflammation $\to$ further HPA suppression) is mechanistically plausible but has not been demonstrated longitudinally in ME/CFS patients.

]

==== Structural Adrenal Atrophy
<sec:adrenal-atrophy>

The mechanisms described above---enhanced glucocorticoid feedback, cytokine-mediated suppression, steroidogenic enzyme dysfunction, and post-viral pituitary injury---are primarily functional or signalling-level dysregulations. A fifth mechanism operates at the structural level: physical shrinkage of the adrenal glands themselves.

#achievement(title: [Adrenal Glands Approximately 50% Smaller in ME/CFS])[
Scott and Dinan (1999) performed CT imaging of adrenal glands in 8 ME/CFS patients and healthy controls. All 8 patients had adrenal glands approximately half the volume of controls @ScottDinan1999adrenal. All patients also showed lower 24-hour urinary free cortisol and blunted cortisol response to ACTH stimulation testing, consistent with reduced adrenal cortical mass limiting both hormone storage and synthesis capacity.

Study: (cross-sectional CT imaging, $n = 8$ ME/CFS vs.\ controls, Psychoneuroendocrinology 1999; certainty: 0.45---striking finding but very small sample, not yet replicated).
] <ach:adrenal-shrinkage>

The proposed mechanism is trophic: ACTH acts as a growth stimulus for the adrenal cortex. Chronically low ACTH output (from any of the upstream HPA dysfunction mechanisms) removes this trophic signal, leading to gradual adrenocortical atrophy over months to years. This creates a self-reinforcing vicious cycle: HPA dysfunction $arrow.r$ low ACTH $arrow.r$ adrenal atrophy $arrow.r$ reduced cortisol capacity $arrow.r$ inadequate stress responses $arrow.r$ further HPA suppression via negative feedback.

This structural finding provides an important differential against major depression, where the HPA axis is _hyperactive_ and adrenal glands _enlarge_ due to chronic ACTH overstimulation. The opposite structural pattern in ME/CFS (hypoactive HPA, shrunken adrenals) argues against ME/CFS being a depressive disorder and supports a distinct neuroendocrine pathology.

#limitation(title: [Replication Urgently Needed])[
The Scott and Dinan finding has not been independently replicated in 25+ years. The sample size ($n = 8$) precludes confident generalisation. Modern imaging studies with larger cohorts and correlation to illness duration, severity, and hormonal profiles are needed before structural atrophy can be considered an established feature of ME/CFS.
]

*DHEA deficiency prevalence:* Nathan (2013) @Nathan2013healing, drawing on clinical experience with over 5,000 patients, reported that more than 90% of fibromyalgia and ME/CFS patients are DHEA-deficient, "often to a profound degree." DHEA supplementation has shown promising results in ME/CFS (see Section on Testosterone and Androgens below for details). Interpretation of DHEA results requires age-appropriate reference ranges, as levels naturally decline from a peak in adolescence; a result appearing "normal" on wide laboratory ranges may represent functional deficiency for a younger patient.

