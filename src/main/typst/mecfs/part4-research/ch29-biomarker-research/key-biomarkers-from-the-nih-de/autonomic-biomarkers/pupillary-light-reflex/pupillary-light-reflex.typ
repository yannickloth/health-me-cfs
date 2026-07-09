#import "../../../../../shared/environments.typ": *

==== Pupillary Light Reflex as Autonomic Probe
<sec:pupillometry-biomarker>

The pupillary light reflex (PLR) provides a quantitative, noninvasive window into autonomic function that operates through well-characterized neuroanatomical pathways. The parasympathetic branch drives constriction via acetylcholine release at M3 muscarinic receptors on the iris sphincter muscle (Edinger-Westphal nucleus → ciliary ganglion → short ciliary nerves), while the sympathetic branch drives dilation via norepinephrine release at α1-adrenergic receptors on the iris dilator muscle (superior cervical ganglion → long ciliary nerves) @lisowski2025pupillary.

#speculation(title: [Pupillometry as ME/CFS Autonomic Biomarker])[
*Certainty: 0.30.* Pupillometry has been explored as an autonomic biomarker in several conditions with autonomic dysfunction overlapping ME/CFS — pure autonomic failure, diabetic neuropathy, multiple sclerosis (exploratory ML analysis shows feasibility, but the only direct PLR-fatigue study in MS found a null result @egg2002pupillary), concussion — but has never been studied in a modern, properly-powered ME/CFS cohort. The only direct CFS pupillometry study (Sendrowski et al. 1997, n small, outdated methodology) tested sympathetic denervation hypersensitivity using pharmacological pupillary measures @sendrowski1997sympathetic. A replication study has never been conducted.

The mechanistic rationale for pupillometry in ME/CFS is unusually direct compared to most candidate biomarkers: the M3 muscarinic and α1-adrenergic receptors that control pupil constriction and dilation are the exact same receptors targeted by autoantibodies elevated in ME/CFS @szklarski2021cd26 @azcue2026gpcrpupil. However, this serological evidence is contested: Germain et al. (2025, n=172, 7,542 antibody-antigen interactions via REAP + Luminex) found zero ME/CFS-specific autoantibody signal across all GPCR targets @Germain2025autoantibody, and the CellTrend ELISA platform used by Azcue 2026 showed 100% control positivity in a POTS cohort — a complete failure to replicate @POTS2022failed_replication. The GPCR autoantibody literature is methodologically heterogeneous: ELISA positives do not consistently replicate on orthogonal platforms, and binding does not establish functional receptor blockade (see @oq:autoantibody-binding-vs-function). If pathogenic GPCR autoantibodies impair autonomic signaling at pupil receptors, pupillometry should detect functional impairment in the form of slowed constriction (parasympathetic), abnormal dilation (sympathetic), or both — but this prediction depends on autoantibodies being both present and functional, neither of which is firmly established.

Key PLR parameters with known autonomic significance @sander2025pupillometry @rizzuto2025hippus:

    - *Constriction amplitude* — parasympathetic integrity (M3-mediated). Reduced in diabetic autonomic neuropathy @li2026pupil @thakar2025pupillometry and pure autonomic failure.
    - *Constriction latency* — nerve conduction speed through Edinger-Westphal → ciliary ganglion pathway.
    - *Dilation velocity* — sympathetic integrity (α1-mediated). Diminished baseline pupil diameter and asymmetric arousal-mediated dilation in CRPS @drummond2022crps; slowed dilation in autonomic failure.
    - *Baseline pupil diameter* — balance of sympathetic dilator tone vs. parasympathetic sphincter tone.
    - *Pupillary hippus* — spontaneous oscillations reflecting autonomic rhythmicity. Spectral analysis maps to respiratory/vasomotor frequencies @rizzuto2025hippus.

Methodological strengths: measurement takes ~30 seconds with handheld devices, no patient effort required (can be performed supine, suitable for severe/bedbound patients), cost is low, and normative data exist for autonomic failure patients @sander2025pupillometry. Machine learning approaches applied to pupillographic features have shown exploratory diagnostic potential for autonomic impairment in multiple sclerosis @parmakyener2026pupillography, demonstrating feasibility of automated PLR-based autonomic screening.

*Consequence:* If pupillometry detects autonomic dysfunction in ME/CFS, it would provide a low-burden, objective biomarker accessible even to severely affected patients — with the caveat that its patient accessibility advantage (supine, no active cooperation) is offset by its medication sensitivity disadvantage compared to HRV or tilt-table testing. A positive finding would also independently confirm GPCR autoantibody-mediated autonomic impairment, since pupil receptors are the same target.

*Falsifiable predictions:* (a) ME/CFS patients with elevated α1-adrenergic or M3 muscarinic autoantibodies will show significantly slower PLR constriction velocity and/or reduced dilation velocity compared to ME/CFS patients without these autoantibodies and healthy controls. (b) PLR parameters will correlate with autonomic symptom severity (COMPASS-31) and orthostatic intolerance measures. (c) PLR parameters will show PEM-dependent changes: altered constriction/dilation dynamics post-exertional challenge compared to pre-exertion baseline.

*Limitations.* No modern ME/CFS pupillometry data exists. Egg et al. (2002) found that pupillary unrest (hippus) was inversely correlated with fatigue in MS (r=−0.521, p=0.001) — a null result warning that not all PLR parameters track fatigue, even in diseases with documented autonomic involvement @egg2002pupillary. PLR is sensitive to medications (anticholinergics, α-blockers, opioids), ambient light, alertness state, and age — all require standardization. Day-to-day reliability in ME/CFS is unknown.

*Origin: brainstorm*
] <spec:pupillometry-biomarker>

#open-question(title: [Pupillometry During PEM Provocation])[
The dynamic nature of ME/CFS — where autonomic function is often normal at rest but deranged after provocation — makes pupil dynamics during or after exercise challenge a natural experimental design. No study has measured PLR before vs. after a PEM provocation protocol. A handheld pupillometer could capture serial measurements at rest, during orthostatic challenge, and at multiple timepoints post-exertion.

*Consequence:* A PLR response to PEM provocation, if present, would provide objective evidence of dynamic autonomic decompensation — the "physiological crash" that patients describe — in a format that is quantifiable, reproducible, and accessible to researchers lacking tilt-table or metabolic chamber facilities.

*Falsifiable prediction:* PLR constriction velocity and dilation velocity measured 2 hours post-exertion will be significantly slower than pre-exertion baseline in ME/CFS patients, with magnitude of slowing proportional to subjective PEM severity, while healthy controls will show no change or faster recovery.
] <oq:pupillometry-pem>

The GPCR autoantibody literature provides a biochemical bridge that distinguishes pupillometry from other autonomic measurements. Unlike HRV or baroreflex sensitivity — which measure the output of the autonomic system — pupillometry measures *end-organ function* at receptors directly targeted by ME/CFS-associated autoantibodies. This receptor-level readout could identify a subset of ME/CFS patients with functionally significant GPCR autoantibodies: those with positive GPCR antibody titers AND impaired PLR dynamics would have both the immunological signature and its end-organ consequence, providing stronger evidence of pathogenic relevance than antibody titers alone.

#open-question(title: [PLR as GPCR Autoantibody Functional Bioassay])[
Pupillometry could serve as an in vivo functional assay for the pathogenic significance of GPCR autoantibodies. In vitro GPCR antibody testing (CellTrend ELISA, bioassay) measures binding to recombinant receptor fragments or transfected cells, but binding does not establish functional impairment at physiological receptor densities in native tissue. The pupil is a native tissue where M3 and α1 receptors function at physiological densities and can be measured noninvasively with high temporal resolution — potentially distinguishing functionally neutralizing from non-pathogenic autoantibodies.

*Consequence:* If PLR dynamics discriminate between patients with functional (pathogenic) vs. non-functional GPCR autoantibodies, pupillometry could identify which autoantibody-positive patients would benefit from immunomodulatory therapies (IVIG, plasmapheresis) — addressing a central challenge in ME/CFS immunotherapy trials, where response heterogeneity may reflect this distinction.

*Falsifiable prediction:* Among ME/CFS patients with positive anti-α1 or anti-M3 antibody titers, PLR constriction/dilation velocity will be slower in those who show clinical improvement after IVIG than the same patients' post-treatment values, while antibody titers alone will not predict treatment response.
] <oq:plr-gpcr-bioassay>

==== Machine Learning-Based Pupillography

Parmak Yener et al. (2026) demonstrated the feasibility of machine learning applied to pupillographic features for automated autonomic dysfunction screening in multiple sclerosis @parmakyener2026pupillography. This approach automatically extracts PLR dynamic parameters and applies a supervised classifier distinguishing patients with autonomic impairment from those without. Adapting this framework to ME/CFS would require (a) collecting normative PLR data in ME/CFS severity-stratified cohorts, (b) integrating PLR features with clinical autonomic assessments (COMPASS-31, tilt-table), and (c) validating the classifier against an independent holdout set — none of which has been done. Any ML pipeline is contingent on first demonstrating that basic PLR signal exists in ME/CFS — a simple case-control comparison with n ≥ 30 per group must precede computational infrastructure.

#open-question(title: [Multi-Parameter PLR Composite Score for ME/CFS])[
The logical extension of multi-parameter pupillometry is a weighted composite score integrating constriction amplitude (parasympathetic, M3), dilation velocity (sympathetic, α1), constriction latency (nerve conduction), baseline diameter (tonic autonomic balance), and hippus spectral power (oscillatory regulation) into a single autonomic dysfunction index optimized for ME/CFS. Master et al. (2020) used a similar multi-parameter approach for concussion, deriving a composite that outperformed individual parameters @master2020plr. Koay et al. (2025) demonstrated that multimodal autonomic panels (pupillometry + cardiovascular + sudomotor) predict clinical progression in pure autonomic failure @koay2025multimodal.

A derivation study (n≥100 ME/CFS, n≥50 controls) would use logistic regression to weight parameters, then validate the composite score in an independent cohort. The primary advantage over single-parameter PLR is that a composite integrates cholinergic *and* adrenergic pupil function — capturing the dual-receptor autoantibody mechanism in a single metric. Combined with machine learning feature extraction from pupillographic time series @parmakyener2026pupillography, a PLR composite could provide automated, operator-independent autonomic assessment.

*Consequence:* A single number from a 30-second eye test could summarize autonomic function — analogous to how an EKG summary interval (QTc) distills a complex electrical trace. For clinicians, this would be vastly more accessible than interpreting raw PLR waveforms; for researchers, a standardized composite enables cross-study comparisons.

*Falsifiable prediction:* PLR composite score will discriminate ME/CFS from healthy controls with AUC ≥ 0.80 in a validation cohort (significantly better than any single PLR parameter), and will correlate with COMPASS-31 score (r ≥ 0.40).
] <oq:plr-composite-score>

==== Practical Limitations

#limitation(title: [Confound Sensitivity — Medications, Diurnal Variation, and Arousal State])[
PLR parameters are sensitive to numerous confounds common in ME/CFS populations: antidepressants (SSRIs, SNRIs, tricyclics — all affect pupil via neurotransmitter reuptake), anticholinergics, antihistamines, beta-blockers, α2-agonists (clonidine, guanfacine), and stimulants used off-label. Pupil diameter varies 1-2 mm with circadian phase, caffeine intake within 2 hours, nicotine, recent sleep quality, and ambient light adaptation. ME/CFS patients are often on multiple medications. The effect size of autoantibody-mediated autonomic dysfunction on PLR may be smaller than the variance introduced by these confounders, limiting real-world clinical utility even if a laboratory effect exists.

*Consequence:* Pupillometry may work in a controlled research setting (medication washout, standardized lighting, time-of-day control) but fail in real-world clinics where patients take multiple medications and cannot discontinue them for testing. Medication washout is often ethically and clinically impractical in ME/CFS (e.g., withdrawing SSRIs risks discontinuation syndrome, beta-blockers for POTS). For the method to be clinically useful, confound-adjusted norms specific to medicated populations will be required — which may require substudies larger than the primary validation cohorts. Until such data exist, a normal PLR in a medicated patient provides no information about whether underlying autonomic function is impaired.
] <lim:plr-confounds>

#open-question(title: [Ocular Autonomic Redundancy — Is the Pupil Too Robust to Fail?])[
The pupil's autonomic control has multiple layers of redundancy: the iris sphincter receives supranuclear modulation from the midbrain, the dilator is controlled by both neural noradrenaline and circulating catecholamines, and the ciliary ganglion integrates input from multiple CNS sources. Autoantibody-mediated blockade of M3 or α1 receptors sufficient to cause systemic symptoms may be insufficient to measurably alter PLR precisely because ocular autonomic regulation has evolved to be robust. PLR may be normal despite clinically significant autonomic dysfunction.

*Consequence:* Normal PLR parameters do not rule out significant systemic autonomic dysfunction. A negative pupillometry result cannot be interpreted as evidence of normal autonomic function — it may simply reflect ocular redundancy masking systemic impairment.

*Falsifiable prediction:* ME/CFS patients with documented GPCR autoantibodies AND abnormal HRV/tilt-table testing will show PLR parameters within 1 SD of healthy means, indicating pupil-level compensation despite systemic autonomic dysfunction. The redundancy hypothesis itself is falsified if direct comparison of iris M3/α1 receptor density or pupil supersensitivity testing (e.g., dose-dependent phenylephrine mydriasis) shows no structural or functional basis for compensation — i.e., ocular redundancy is invoked only when it can be independently verified, not as a universal escape clause.
] <oq:plr-redundancy>

==== Critical Evidence Quality Concerns

#open-question(title: [Autoantibody Binding Does Not Establish Functional Blockade])[
The key mechanistic bridge for ME/CFS pupillometry — that M3 and α1 autoantibodies impair pupil autonomic function — rests on binding assays (ELISA, cell-based assay). Binding does not establish functional receptor blockade. The autoantibodies could: (a) bind to non-functional epitopes without affecting signaling, (b) act as partial agonists rather than antagonists, or (c) be epiphenomena of general immune dysregulation without causal significance @szklarski2021cd26 @azcue2026gpcrpupil. This concern is reinforced by Germain et al. (2025), who found zero ME/CFS-specific GPCR autoantibody signal in the largest screen to date (n=172, 7,542 antibody-antigen interactions, REAP + Luminex) @Germain2025autoantibody, and by Vernino et al. (2022), who found 100% control positivity using the CellTrend ELISA methodology in POTS @POTS2022failed_replication — the same platform used by Azcue 2026. Direct functional testing of ME/CFS M3/α1 autoantibodies on isolated iris muscle or receptor-transfected cells has never been performed.

*Consequence:* Positive autoantibody titers do not guarantee functional autonomic impairment. Until these autoantibodies are validated by bioassay, the pupillometry-autoantibody bridge remains inferential rather than established. 

*Falsifiable prediction:* Purified IgG from ME/CFS patients with elevated M3/α1 autoantibodies, when applied to M3 or α1-transfected cell lines or isolated iris preparations, will alter agonist-induced contraction in ≤40% of samples — confirming that binding titer does not equal functional activity.
] <oq:autoantibody-binding-vs-function>

#limitation(title: [No Modern ME/CFS Pupillometry Study — the Critical Gap])[
All mechanistic claims in this section rest on cross-disease inference (concussion, diabetes, MS, PAF) and biochemical bridging (autoantibody receptor targets). The only direct ME/CFS pupillometry study (Sendrowski et al. 1997) is 29 years old, used pharmacological methodology predating modern automated pupillometry, and was conducted with n < 20 @sendrowski1997sympathetic. There is no case series, case-control study, cohort, or trial validating PLR parameters in ME/CFS. The evidence pyramid for this topic has a missing apex: no ME/CFS-specific clinical validation at any level exists.

Furthermore, the pupillometry literature is subject to publication bias favoring statistically significant group differences. The Egg et al. (2002) null finding (pupillary unrest inversely correlated with fatigue in MS) @egg2002pupillary is a rare published counterexample. If the file-drawer effect is strong, the true effect size in ME/CFS may be substantially smaller than cross-disease precedents suggest.

*Consequence:* All pupillometry claims in this section are hypothesis-generating only. Researchers: a preregistered study with adequate power (n ≥ 100 per group) is the only safeguard against publication bias and cross-disease inference failure. Clinicians: pupillometry has no validated clinical role in ME/CFS assessment until such a study exists. Patients: the eye test is not yet validated for your condition — reported abnormalities in other diseases do not guarantee similar findings in ME/CFS.
] <lim:no-modern-mecfs-data>

#open-question(title: [Null Hypothesis — PLR May Be Normal in ME/CFS])[
The most parsimonious null hypothesis is that ME/CFS-associated autonomic dysfunction spares the pupillary light reflex pathway. The autonomic ganglia and end-organs controlling pupil function (ciliary ganglion, iris sphincter, iris dilator) may not be involved in the specific autonomic pathology of ME/CFS, even when cardiovascular autonomic circuits are affected. Alternatively, a subgroup effect may exist — PLR abnormalities may be restricted to the minority of ME/CFS patients with elevated GPCR autoantibodies, making pupillometry useful for subset identification but insufficient as a general screening tool.

A third possibility — informed by Egg et al. (2002) — is that PLR parameters correlate *inversely* with fatigue: more pupil oscillation may be associated with less fatigue, contradicting the "autonomic instability → fatigue" narrative @egg2002pupillary. If this pattern holds in ME/CFS, interventions that stabilize pupil oscillations could paradoxically worsen symptoms.

*Consequence:* All three null scenarios (no effect, subset-only effect, inverse effect) remain plausible until an adequately powered ME/CFS pupillometry study is performed. The null should be the starting assumption, not the hypothesis to be disproven.

*Falsifiable prediction:* In a well-powered study (n ≥ 100 per group, 80% power, α = 0.05), all PLR parameters will show effect size d < 0.20 between ME/CFS and healthy controls; Bayesian analysis will favor H0 (BF01 > 3).
] <oq:plr-null-hypothesis>

#synthesis(title: [Pupillometry as Receptor-Level Autonomic Probe — a Convergent Evidence Model])[
Pupillometry occupies an unusual position in the ME/CFS biomarker landscape: it has shown group-level discrimination in multiple diseases (concussion, diabetic autonomic neuropathy, MS) — but is entirely unstudied in ME/CFS. The evidence supporting its candidacy is indirect but unusually specific. The method measures end-organ function at M3 muscarinic and α1-adrenergic receptors @lisowski2025pupillary — the exact same receptors targeted by autoantibodies elevated in ME/CFS @szklarski2021cd26 @azcue2026gpcrpupil. If those autoantibodies are real and functional, pupillometry probes the consequence of a candidate pathogenic mechanism, unlike HRV or baroreflex sensitivity which measure autonomic *output* rather than receptor-level *target engagement*.

The convergent model is: GPCR autoantibodies (serological signal) → impaired receptor function at autonomic end-organs (physiological signal) → measurable PLR abnormalities (biomarker signal). If validated, this triple link — antibody → receptor → end-organ function — would be stronger evidence for pathogenesis than any single component alone. The critical open question is whether the autoantibodies are *functional* (antagonists or partial agonists) or merely *binding* (non-pathogenic). Pupillometry could answer this by measuring end-organ function directly @oq:plr-gpcr-bioassay — a question ELISA titers cannot resolve.

At present, this remains hypothesis-generating. No modern ME/CFS pupillometry study exists @lim:no-modern-mecfs-data, the null hypothesis (PLR normal in ME/CFS) has not been tested @oq:plr-null-hypothesis, and medication/diurnal confounds may overwhelm any disease signal in real-world settings @lim:plr-confounds. The cost of a first study is modest — a n = 100 case-control study with handheld pupillometry — but the hypothesis chain from autoantibodies to PLR abnormality contains multiple untested links, any one of which could break it. If Germain et al. (2025) @Germain2025autoantibody is correct that no GPCR autoantibody signal exists in ME/CFS, the specific mechanistic bridge for pupillometry collapses, and the method offers only generic autonomic assessment no more specific than HRV.

The model would be falsified if (a) a well-powered PLR study in ME/CFS patients with GPCR autoantibodies confirmed by ≥2 orthogonal assays (ELISA + bioassay or two independent platforms) finds PLR parameters indistinguishable from controls, with no evidence of ocular redundancy (independent verification of receptor density or supersensitivity), OR (b) Germain 2025 is confirmed by an independent proteome-wide screen, establishing that the GPCR autoantibody foundation does not exist.

*Consequence:* For researchers, this is a testable but conditional hypothesis. If the GPCR autoantibody evidence holds, pupillometry is a candidate biomarker awaiting its first study. If it does not, pupillometry in ME/CFS reduces to a generic autonomic probe without disease-specific rationale. For clinicians: no clinical role exists. Do not purchase pupillometers for ME/CFS assessment — no normative data, medication-stratified thresholds, or validation studies support clinical use. Until at least one case-control study is published, pupillometry in ME/CFS remains a research method only.
] <syn:pupillometry-autonomic-biomarker-mecfs-model>

