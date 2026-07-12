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

==== Central CRH-Neuron Loss in the Hypothalamus
<sec:central-crh-loss>

The five mechanisms above locate HPA dysfunction at progressively more peripheral levels---enhanced central feedback, cytokine signalling, adrenal enzyme function, pituitary injury, and adrenal atrophy. A sixth candidate mechanism operates at the most upstream point of the entire axis: loss of the hypothalamic neurons that manufacture corticotropin-releasing hormone (CRH) itself. If the paraventricular nucleus (PVN) can no longer produce adequate CRH, every downstream compartment---pituitary ACTH, adrenal cortisol---is deprived of its initiating signal, and no intervention acting below the hypothalamus can restore normal regulation.

#speculation(title: [Selective Depletion of Hypothalamic CRH Neurons in Severe ME/CFS])[
A preliminary brain-autopsy series presented at the IACFS/ME 2025 conference (Da Silva and colleagues, University of Amsterdam, using tissue from the Netherlands Brain Bank ME/CFS donation programme) reported that the hypothalamus of seven severely affected, deceased ME/CFS patients contained dramatically reduced numbers of CRH-immunoreactive neurons in the PVN---in some cases almost none---compared with matched controls @dasilva2025iacfscrh. Because these counts reflect CRH-peptide immunostaining, they cannot by themselves distinguish loss of neurons from loss of detectable peptide in surviving cells (see limitation below). The change was reported as cell-type specific: neurons producing vasopressin (AVP) and oxytocin (OXT) were normal or relatively preserved, arguing against a global hypothalamic atrophy. Downstream, the pituitary reportedly showed downregulated receptors for regulatory hormones and reduced output of the ACTH precursor pro-opiomelanocortin (POMC). If borne out, this pattern would relocate the origin of the well-documented ME/CFS hypocortisolism (@sec:hpa-axis; meta-analytic hypocortisolism @tak2011hpa) from the adrenal gland to the hypothalamus, reframing low morning cortisol as the readout of a central manufacturing deficit rather than an adrenal or feedback problem.

The single most important caveat is evidential: this is an unpublished conference presentation ($n = 7$, severe/very-severe cases only, single centre, no peer review or independent replication as of 2026). It is reported here at low certainty and must not be treated as an established feature of ME/CFS. The finding is nonetheless notable because direct human hypothalamic histology in ME/CFS is exceptionally rare---the prior peer-reviewed autopsy literature is limited to isolated reports of gliosis and white-matter change without cell-type-specific hypothalamic quantification @ferrero2017cns.

*Certainty: 0.30* --- single non-peer-reviewed source; strong methodological lineage (the Swaab group's PVN CRH-neuron quantification is well established @bao2010crh @bao2008stress) but no ME/CFS-specific replication.

*Refuted if:* independent, blinded stereological quantification of the PVN finds CRH-neuron numbers in severe ME/CFS comparable to matched controls, or the apparent deficit disappears after controlling for agonal state and medication.

*Consequence:* If replicated, this would move the presumed root of the stress-hormone failure in severe ME/CFS from the adrenal gland up to the brain itself, meaning that cortisol deficiency would be secondary to lost central drive rather than a primary adrenal or feedback problem---but the finding is far too preliminary to change any clinical decision today.
] <spec:central-crh-loss>

#speculation(title: [Cell-Type-Specific CRH Vulnerability Distinguishes ME/CFS from Depression and MS])[
The reported *direction* of the CRH change is as informative as its magnitude. In major depression @raadsheer1994crh and in multiple sclerosis @purba1995crhms (both studied by the same Netherlands Brain Bank methodology) PVN CRH-expressing neurons are *increased*, reflecting a hyperactive or up-driven stress axis. Da Silva's ME/CFS finding is the opposite: CRH-immunoreactive neurons *reduced*. This reversal, if confirmed, would raise questions about whether ME/CFS hypocortisolism is the tail end of chronic stress-system overdrive ("burnout")---which would predict CRH-neuron preservation or increase---and would instead be consistent with a distinct process that selectively silences or depletes peptide from CRH neurons while sparing neighbouring AVP and OXT populations. A cell-type-specific vulnerability of this kind would parallel the selective GnRH-neuron death documented in the hypothalamus of Long COVID patients @sauve2023gnrh (a cross-disease precedent, not yet demonstrated in ME/CFS), consistent with a shared post-infectious mechanism that targets particular hypothalamic neuronal subtypes rather than the region as a whole.

*Certainty: 0.25* --- rests on the same unpublished finding plus cross-condition histology; the ME/CFS-versus-depression contrast is indirect (different cohorts, not a head-to-head study).

*Refuted if:* a single-run blinded stereology study finds ME/CFS PVN CRH-neuron counts at or above control/depression levels, or finds AVP/OXT neurons also depleted (indicating global rather than cell-type-selective loss).

*Consequence:* If the pattern holds, it would give ME/CFS a biological signature that is the mirror image of depression at the level of brain tissue---further evidence that the two illnesses are mechanistically different, even where their surface symptoms overlap.
] <spec:crh-cell-type-specificity>

#open-question(title: [What Drives CRH-Neuron Loss---Neuroinflammation, Autoimmunity, or Excitotoxicity?])[
The mechanism that would produce selective CRH-neuron depletion is unresolved, and the candidate drivers make competing, testable predictions.

    / *Chronic neuroinflammation / excitotoxicity:*: Years of low-grade inflammatory or excitatory overactivation of stress centres could progressively damage the metabolically demanding CRH neurons. This is consistent with immune-inflammatory models of central HPA hypofunction @morris2017hpa. However, it is constrained by a null finding: TSPO-PET studies have not consistently detected neuroinflammation in ME/CFS, though TSPO imaging has limited sensitivity for chronic low-grade hypothalamic inflammation and attributes signal ambiguously across cell types.
    / *Autoimmune targeting:*: Anti-pituitary and anti-hypothalamus autoantibodies have been detected in a subset of CFS patients @debellis2021pituitary, offering an alternative in which CRH-producing cells (or their pituitary targets) are damaged by autoimmunity rather than inflammation. Distinguishing this from the inflammatory model requires simultaneous autoantibody and histological data in the same brains---which do not yet exist.
    / *Post-infectious neuronal death:*: The GnRH-neuron precedent @sauve2023gnrh raises the possibility of direct viral or para-infectious injury to specific hypothalamic subtypes.

These are not mutually exclusive, and the current evidence cannot adjudicate between them. The decisive experiment is multiplexed staining of the same CRH-depleted PVN sections for activated microglia, T-cells, and IgG deposition: microglial nodules concentrated in depleted zones would support the inflammatory model, IgG selectively on CRH (not AVP/OXT) neurons would support the autoimmune model, and the absence of both despite CRH loss would point to a metabolic/excitotoxic driver.

*Consequence:* Which driver is correct matters for treatment: an inflammatory cause would point toward anti-inflammatory or immune-calming therapies, an autoimmune cause toward immunomodulation, and neither would be helped by simply replacing the missing hormone---so resolving this question is a prerequisite for any rational therapy aimed at the cause.
] <oq:crh-loss-driver>

#speculation(title: [Downstream Symptom Predictions of CRH-Neuron Loss: Pain Amplification and Exertional Autonomic Failure])[
If PVN CRH neurons are genuinely depleted, the loss should have consequences beyond low cortisol, because these neurons contribute to two circuits relevant to core ME/CFS symptoms. (Origin: brainstorm.)

    / *Loss of central stress-induced analgesia:*: CRH and the related urocortins act as endogenous analgesics through CRH receptors in the periaqueductal grey, rostral ventromedial medulla, and spinal dorsal horn. Reduced output from the principal central CRH source would weaken this tonic inhibition of pain transmission, predicting reduced stress-induced analgesia and raised baseline pain sensitivity---a plausible contributor to the widespread pain and fibromyalgia overlap seen in ME/CFS, framed as an abnormal stress--pain interaction rather than simply "more pain."
    / *Loss of exertion-evoked sympathetic reserve:*: Parvocellular PVN CRH neurons project to brainstem presympathetic centres and shape the acute sympathetic response to stressors. Selective loss (with AVP/OXT and baseline autonomic tone spared) predicts a reserve-dependent deficit: normal resting heart rate and blood pressure but impaired orthostatic and thermoregulatory compensation specifically when demand rises, consistent with the documented exertional and orthostatic intolerance of ME/CFS.

Both predictions are indirect---no ME/CFS study has measured CRH-neuron number against pain or autonomic reserve---and each rests on the unconfirmed depletion finding, assumes permanent circuit loss rather than recoverable peptide depletion, and assumes PVN CRH is the dominant functional pool (extrahypothalamic CRH sources such as the central amygdala and bed nucleus of the stria terminalis could partially compensate).

*Certainty: 0.18* --- physiologically grounded but doubly contingent (on the depletion finding and on untested ME/CFS-specific links).

*Refuted if:* ME/CFS patients show normal conditioned pain modulation and normal stress-evoked sympathetic responses (with intact orthostatic/thermoregulatory compensation on challenge), or these measures show no relationship to HPA-axis output.

*Consequence:* If correct, some of the pain and the activity-triggered crashes in ME/CFS would trace back to the same small population of lost brain cells---but this is a reasoned prediction awaiting the basic experiments to test it, not a current explanation.
] <spec:crh-loss-downstream-symptoms>

#open-question(title: [Which Experiments Would Confirm or Refute Central CRH-Neuron Loss?])[
Because the finding is preliminary, its value lies chiefly in the specific, feasible experiments it invites---most executable on existing Netherlands Brain Bank tissue. (Origin: brainstorm.)

    / *Resolve the driver:*: Multiplexed staining of the same PVN sections for CRH neurons, activated microglia (IBA1/CD68), T-cells (CD3), and human IgG would show whether CRH-depleted zones colocalise with inflammatory infiltrate, autoantibody deposition, or neither---distinguishing the neuroinflammatory, autoimmune, and metabolic/excitotoxic models in one experiment.
    / *Test the depression contrast directly:*: A single blinded stereology run comparing severe ME/CFS, severe major depression, and matched controls in one staining batch would establish whether the reported ME/CFS decrease versus the known depression increase @raadsheer1994crh @purba1995crhms is a real biological reversal or a cross-study artefact.
    / *Distinguish cause from consequence:*: Regressing CRH-neuron count on documented disease duration tests whether loss is progressive (ongoing, implying a treatment window) or a fixed early deficit.
    / *Look beyond CRH:*: Single-nucleus RNA sequencing of hypothalamic micropunches would reveal whether other neuron subtypes are also affected and would carry a glial transcriptomic signature indicating the dominant pathological process.

*Consequence:* The finding's main present value is that it points to a short list of concrete experiments, most executable on existing Netherlands Brain Bank tissue, that could within a small number of studies either establish a brain-tissue signature of ME/CFS or retire the claim.
] <oq:crh-loss-experiments>

#speculation(title: [Trigger-Specific and Autoimmune-Mediated CRH Loss (Weak, Tree-Retained)])[
Two further possibilities are recorded for completeness at very low certainty. (Origin: brainstorm.) First, by analogy to the selective GnRH-neuron death seen after SARS-CoV-2 @sauve2023gnrh, CRH-neuron loss might be *trigger-specific*---present only in ME/CFS following particular neurotropic infections and absent in other onset types, which would make it a subtype marker rather than a universal feature. Second, the autoimmune and neurodegenerative accounts might be unified in a two-hit model in which anti-hypothalamus autoantibodies @debellis2021pituitary supply targeting specificity (explaining why CRH but not AVP/OXT neurons are affected) while complement and microglia supply the effector killing. Both ideas are currently too weakly evidenced for independent development and are retained only as directions for future cycles should the core finding replicate.

*Certainty: 0.10* --- speculative extensions of an already-preliminary finding.

*Refuted if:* CRH-neuron loss proves trigger-independent across onset types, or PVN co-staining shows no IgG deposition on CRH neurons.

*Consequence:* These are placeholders for future investigation, not claims---if the basic finding fails to replicate, both fall away.
] <spec:crh-loss-trigger-autoimmune>

#limitation(title: [CRH-Neuron Finding Is Preliminary and Severity-Restricted])[
Several boundaries constrain any use of the CRH-depletion finding. It derives from a single unpublished conference presentation with no primary publication or independent replication as of 2026, reported only secondarily; "near-absent" may be a paraphrase rather than the investigators' quantitative language. The quantification method is undisclosed---if it was qualitative or unblinded rather than the Swaab group's unbiased stereology @bao2008stress, observer bias aligned with the well-known expectation of HPA dysfunction in ME/CFS is a real risk. A specific technical confound also applies: CRH is a fast-turnover neuropeptide, so terminal HPA hyperactivation could deplete peptide stores below the immunostaining threshold in structurally intact neurons, making "near-absent CRH staining" potentially reflect peptide exhaustion rather than cell death (resolvable by CRH mRNA in-situ hybridisation). The sample ($n = 7$) comprised only severe and very-severe deceased patients; whether comparable CRH-neuron loss occurs in mild or moderate ME/CFS is entirely unknown, and it may represent an end-stage change---or a consequence of prolonged immobility, cachexia, polypharmacy, agonal state, or post-mortem interval---rather than an ME/CFS-specific feature, absent comparison to non-ME/CFS chronically-ill controls. As end-of-life tissue, it cannot distinguish whether CRH-neuron loss is a cause of ME/CFS, a consequence of severe illness, or an artefact. No CRH quantification in other brain regions was reported, so region-specificity is unconfirmed. Until a peer-reviewed publication with a larger, severity-stratified cohort and matched controls appears, this mechanism should be treated as a provocative hypothesis-generating observation, not an established mechanism.

*Consequence:* This finding is exciting but not yet trustworthy enough to act on---patients and clinicians should regard it as a promising lead to watch, not a reason to change diagnosis or treatment.
]

*DHEA deficiency prevalence:* Nathan (2013) @Nathan2013healing, drawing on clinical experience with over 5,000 patients, reported that more than 90% of fibromyalgia and ME/CFS patients are DHEA-deficient, "often to a profound degree." DHEA supplementation has shown promising results in ME/CFS (see Section on Testosterone and Androgens below for details). Interpretation of DHEA results requires age-appropriate reference ranges, as levels naturally decline from a peak in adolescence; a result appearing "normal" on wide laboratory ranges may represent functional deficiency for a younger patient.

