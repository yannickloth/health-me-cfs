#import "../../../shared/environments.typ": *

== Separating Deconditioning from Intrinsic Limitation
<sec:deconditioned-matched-cpet-separation>

The Davenport et al.\ 2025 Matters Arising @Davenport2025EffortDeconditioning identified a critical methodological gap in the Walitt et al.\ deep-phenotyping study @walitt2024deep: the absence of an objectively activity-matched deconditioned control group. Davenport argued that a single CPET cannot characterize PEM, and that the observed *lower* (rather than elevated) exercise heart rate in post-infectious ME/CFS is inconsistent with deconditioning and more consistent with chronotropic incompetence and impaired oxidative metabolism. This section proposes the decisive experiment and the quantitative markers that would separate deconditioning from intrinsic metabolic and autonomic limitation. (Origin: brainstorm.)

#hypothesis(title: [Directional Heart-Rate Signal Separates Deconditioning from ME/CFS])[
In deconditioning, submaximal exercise heart rate is *elevated* at a fixed workload (low stroke volume is compensated by tachycardia). In ME/CFS with chronotropic incompetence, submaximal heart rate is instead *reduced* or normal while perceived exertion is disproportionately high. This directional dissociation — elevated HR in deconditioning vs reduced HR in ME/CFS — is the falsifiable separating signal that Davenport identified but Walitt's single-CPET design could not measure. (Certainty: 0.55 — the directional claim is directly argued by @Davenport2025EffortDeconditioning and supported by @Davenport2019Chronotropic, @Cook2022MCAMExercise, @vanCampen2023OrthostaticChronotropic, @Miwa2023OrthostaticChronotropic; the specific three-arm design has not yet been run.)

*Proposed design:* Three arms — (1) ME/CFS, (2) objectively activity-matched *deconditioned* controls (accelerometer step-count matched, not self-report), (3) trained healthy controls — all undergoing the two-day CPET protocol. Deconditioning predicts: elevated submaximal HR at fixed workload, low VO#sub[2peak], no Day-1→Day-2 decline. ME/CFS predicts: Day-2 decline (PEM), reduced submaximal HR (chronotropic incompetence), elevated RPE at all workloads. The direction of submaximal HR change is the separating signal.

*Falsifiable predictions:*
- ME/CFS submaximal HR at a fixed workload falls *below* that of activity-matched deconditioned controls
- ME/CFS shows a Day-1→Day-2 decline in workload at ventilatory threshold; deconditioned controls do not
- The ME/CFS chronotropic index ([(HR_max − HR_rest)/(HR_pred_max − HR_rest)]) is below 0.80 and below that of deconditioned-matched controls
- Falsified if deconditioned controls reproduce the ME/CFS pattern (blunted HR + Day-2 decline), in which case the "lower HR" and "Day-2 decline" signals no longer separate the two conditions

*Consequence:* If deconditioned people show the opposite heart-rate pattern (fast heart rate at low effort, no next-day crash) while ME/CFS patients show a sluggish heart rate with a next-day collapse, no clinician can honestly claim ME/CFS is "just deconditioning" — the two groups would be physiologically opposite on the very measure being argued about. Severity applicability: this submaximal protocol is safe across mild-to-moderate severity; maximal testing excludes the most severely affected.
]

#speculation(title: [Chronotropic-Index Profiling as a Deployable Separator])[
The raw "lower heart rate" observation conflates peak HR (which both deconditioning and chronotropic incompetence lower, for different reasons) with submaximal HR (which deconditioning *raises* and chronotropic incompetence *lowers*). The cardiology-standard chronotropic index and the heart-rate-versus-workload slope convert this into a quantitative, continuous parameter measurable on a standard exercise test. If ME/CFS patients show a blunted chronotropic index and a flattened HR-vs-METs slope relative to both age/sex norms and deconditioned-matched controls, the "lower HR" claim becomes a routine screening measurement rather than an interpretive argument. (Certainty: 0.50 — the chronotropic-intolerance construct is established in cardiology and supported in ME/CFS by @Davenport2019Chronotropic, @vanCampen2023OrthostaticChronotropic, @Miwa2023OrthostaticChronotropic; its application as a *directional separator* from deconditioning is proposed here.)

*Falsifiable prediction:* ME/CFS chronotropic index is below 0.80 with a blunted HR-vs-METs slope relative to age/sex norms and deconditioned-matched controls; deconditioned controls have an index ≥0.80 with *elevated* submaximal HR. Falsified if the two groups show indistinguishable chronotropic-index distributions (then chronotropic incompetence is a deconditioning epiphenomenon).

*Consequence:* This would turn "the heart doesn't speed up enough in ME/CFS" from an argument into a single number a cardiologist can read off any standard exercise test — a routine cardiology test becomes a screening tool, not just a research instrument. Severity applicability: submaximal or maximal protocols both measure chronotropic response; submaximal versions are safer for severe patients.
]

#limitation(title: [The "Lower Heart-Rate" Argument Has Testable Vulnerabilities])[
The deconditioning-rebuttal's most decisive line — lower HR cannot be deconditioning — depends on unverified conditions. (1) Deconditioning also lowers *peak* HR (small cardiac reserve), so if the lower HR was measured at or near peak effort, it is consistent with deconditioning; the argument only survives if measured at a fixed *submaximal* workload. (2) Chronic inactivity downregulates β-adrenergic responsiveness, so prolonged deconditioning can itself blunt HR response — chronotropic incompetence is not cleanly intrinsic. (3) Rate-limiting medications (β-blockers, ivabradine, some calcium-channel blockers) and the POTS/hyperadrenergic subset (which has *elevated* HR) are uncontrolled in the n=8 CPET subset. (4) If patients terminate exercise early (which elevated RPE predicts), HR appears "lower" as a recording artifact, not chronotropic incompetence. Each is testable with the proposed designs, but none is resolved by the rebuttal itself. (Certainty of the counterargument: 0.40.)

*Consequence:* The "their heart rate is too low to be deconditioning" argument only works if the low heart rate was measured at a gentle matched workload, not at maximum, and if blood-pressure drugs and early stopping are ruled out. Stating this limitation honestly is what keeps the rebuttal rigorous rather than rhetorical.
]
