#import "../../shared/environments.typ": *

= Integrative Models and Multi-System Pathophysiology
<ch:integrative-models>

== Evidence Level Classification

#figure(
  table(
    columns: (4fr, 3fr, 3fr, 2fr),
    align: (center, left, left, left),
    stroke: (x: 0.5pt, y: 0.5pt),
    inset: 8pt,
    table.header(
      [*Evidence Level*], [*Description*], [*ME/CFS Status*], [*Reliability*],
    ),
    [*Established*], [Replicated across multiple independent cohorts with consistent methodology], [Documented in ME/CFS (multiple studies, consistent findings)], [Highest confidence],
    [*Probable*], [Replicated in at least two cohorts with some methodological differences], [Strong suggestive evidence in ME/CFS but requires replication], [Moderate-high confidence],
    [*Preliminary*], [Single study or limited replication with consistent findings], [Emerging evidence in ME/CFS, requires validation], [Moderate confidence],
    [*Theoretical*], [Based on mechanistic inference from related conditions], [Hypothesized but not yet tested in ME/CFS], [Low confidence],
    [*Speculative*], [Limited mechanistic basis, no direct testing in ME/CFS], [Highly uncertain], [Lowest confidence],
  ),
  kind: table,
  supplement: [Table],
  caption: [Evidence level classification used throughout this chapter],
) <tab:evidence-levels>

This chapter synthesizes multi-system pathophysiology documented in Chapters 6–12 into comprehensive models of ME/CFS. The core challenge in understanding ME/CFS is that individual system abnormalities—mitochondrial dysfunction, immune dysregulation, neurological impairment, cardiovascular deficits, endocrine disruption, gut dysbiosis—co-occur in patterns that suggest coordinated, self-reinforcing mechanisms rather than independent parallel pathology.

#include "sec-01-evidence-level-classification/limitations/lim-methodological-caveat-speculation-densit.typ"

A related caveat concerns the evidential standards applied to different types of claims throughout this paper. Subjective outcome measures (patient-reported fatigue, symptom severity, quality of life) are used as valid evidence when they support biological hypotheses but are critiqued as unreliable when they support interventions the paper argues against (notably in the PACE trial). This asymmetry is a genuine limitation of the paper's methodology, not a principled position: unblinding bias affects all unblinded studies regardless of whether the intervention is behavioural or biological, and the paper's standard should be consistently applied. The reader should note that the same self-report instruments cited as evidence for biological mechanisms elsewhere carry the same epistemological limitations when used in treatment trials. The chapter's historical analysis (Section @sec:historical-arc) attempts to address this asymmetry by presenting the strongest available form of the positions being critiqued before explaining why the critique survives the steelman, but residual asymmetry may remain and should be weighed by the reader.

== Multi-System Integration and Synthesis
<sec:synthesis>

The energy-immune-autonomic triad represents a core integrative framework for ME/CFS. Energy metabolism impairment (Chapter 6) reduces ATP available for immune function and autonomic regulation. Immune activation (Chapter 7) both consumes metabolic resources and disrupts autonomic signaling. Autonomic dysfunction (Chapters 8–10) impairs cerebral blood flow and gut motility, further compromising metabolic and immune function. These three systems form a self-reinforcing cycle where dysfunction in one domain amplifies dysfunction in others.

*Clinical evidence for integration:* The NIH deep phenotyping study (Walitt et al., 2024) identified coordinated abnormalities across these three domains in the same patients. Two-day CPET studies demonstrate functional consequence: reduced work capacity that fails to recover fully after 24 hours, consistent with multi-system impairment rather than isolated muscular defect.

*Cross-disease integrative perspective:* The comparative nosology framework (see @ch:comparative-nosology, @syn:comparative-nosology-framework) proposes that PEM status, rather than diagnostic label, is the critical variable for classifying patients across the contested-diagnosis cluster. This integrative model extends the energy-immune-autonomic triad by adding a cross-disease dimension: the same triadic dysfunction may underlie ME/CFS, Long COVID, fibromyalgia, and PTLDS, with PEM status determining which patients respond similarly to exercise-based interventions regardless of which diagnosis they carry.

== Systems Biology Perspective on ME/CFS
<sec:systems-biology>

Systems biology approaches ME/CFS as a network of interacting components rather than linear causal chains. The seven-biomarker panel (AMP, cDC1, LYVE1, IGHG2, FN1, VWF, THBS1) achieving 91% diagnostic accuracy demonstrates that ME/CFS pathophysiology spans metabolic, immune, and vascular systems simultaneously. Network analysis suggests these biomarkers represent nodes in a dysregulated network rather than independent markers.

*Therapeutic implication:* Single-target interventions have limited efficacy in complex network diseases. Multi-target approaches (CoQ10 + LDN, mitochondrial support + immune modulation, autonomic support + anti-inflammatory) may achieve better outcomes by simultaneously addressing multiple network nodes.

== The Subjective-Measurable Discrepancy: A Diagnostic Pattern Across ME/CFS Measurement Domains
<sec:subjective-measurable-discrepancy>

A pattern emerges across the measurement domains examined in this paper: patients report severe symptoms that standard clinical tests fail to capture — or explicitly contradict. This discrepancy is not an anomaly. It is a replicated, multi-domain pattern spanning sleep, autonomic, cognitive, activity, and systemic biomarker measurement domains across a 12-paper evidence base. The discrepancy is documented across multiple diagnoses (ME/CFS, POTS, hEDS, MCAS, PASC — Novak2024, n=2,627), not exclusive to ME/CFS. Its diagnostic value lies not in disease specificity but in clinical expectation-setting: normal resting labs plus severe subjective symptom burden IS an expected finding in ME/CFS, not evidence of psychogenesis. Whether the discrepancy magnitude or pattern differs between ME/CFS and other diagnoses (i.e., whether it is discriminative, not merely present) has not been tested.

#achievement(title: [The Subjective-Measurable Discrepancy is Not an Isolated Befuddlement — It Patterns Across Domains])[
The subjective-measurable discrepancy has been independently documented across five measurement domains by seven independent research cohorts, with the strongest evidence coming from monozygotic co-twin control designs that eliminate genetic and family-environment confounds:

*Sleep:* In the Buchwald twin cohort, CFS twins endorsed all 8 subjective insomnia measures significantly more than their healthy co-twins, yet objective polysomnography showed zero differences in sleep latency, total sleep time, sleep efficiency, arousal index, or NREM architecture @Watson2003InsomniaDiscordance. The same cohort showed significantly worse subjective sleepiness on validated instruments but identical mean sleep latency on the Multiple Sleep Latency Test (8.9 vs 10.0 min, both non-pathologic) @Watson2004SleepinessDiscordance. Quantitative EEG spectral power analysis across delta through beta bands showed no significant differences between CFS twins and healthy co-twins in any frequency band @Armitage2009SleepEEG. The pattern is consistent across macrostructural, microstructural-scalar, and spectral measures: patients say sleep is catastrophically disturbed; standard instruments say it is normal.

*Autonomic:* Novak et al.\ (2024) administered validated subjective autonomic symptom questionnaires (SAS, COMPASS-31) and objective autonomic testing (QASAT, CASS, tilt test, sudomotor, Valsalva) to 2,627 patients across 11 diagnoses including ME/CFS, POTS, hEDS, MCAS, and PASC @Novak2024DysautonomiaMismatch. Internal correlations were strong within each measurement domain (subjective-subjective r=0.74; objective-objective r=0.81), confirming instrument validity. The cross-domain correlation — subjective vs objective — was zero. Not weak. Not statistically significant but trending. Zero. This dissociation was diagnosis-independent.

*Physical activity:* Vergauwen et al.\ (2021) found activity diaries correlated with Actical accelerometry at r#sub[s]=0.35–0.38 in 66 female CFS patients vs r#sub[s]=0.60–0.64 in 20 healthy controls @Vergauwen2021ActivityDiscrepancy. The discrepancy was not explained by illness-related complaints, health-related quality of life, or demographics.

*Cognition:* Teodoro et al.\ (2018) reviewed 186 studies across functional neurological disorder, fibromyalgia, and CFS and documented a "general discordance between high rates of subjective cognitive symptoms... and inconsistent objective neuropsychological deficits" @Teodoro2018UnifyingTheory. Performance validity testing showed poor effort in only a minority, ruling out malingering.

*Systemic biomarkers:* In the largest monozygotic twin study of ME/CFS genomics, Byrnes et al.\ (2009) found zero significant transcriptomic differences in peripheral blood leukocytes between 44 CFS twin pairs despite severe disabling illness @Byrnes2009NoBiomarker. This is the cleanest molecular-level null result in the ME/CFS literature — the illness exists, is disabling, but produces no peripheral blood transcriptomic signature detectable by microarray.

The discrepancy cannot be fully attributed to psychiatric comorbidity (the twin design controls for genetic and shared-family-environment confounds, though it does not control for acquired, non-shared psychiatric comorbidity in the affected twin), poor effort (Teodoro2018: performance validity testing), or deconditioning (van Campen et al.\ demonstrated CBF decline during tilt test is independent of deconditioning severity @vanCampen2021Deconditioning). An alternative explanation for the sleep domain in particular — sleep-state misperception (paradoxical insomnia), a recognized ICSD diagnosis defined precisely by subjective-objective sleep discordance — has not been formally excluded and is not discussed in the original papers; the sleep-discrepancy evidence does not distinguish a distinct ME/CFS sleep phenotype from the general phenomenon of sleep-state misperception that also occurs in non-fatigued populations. The within-domain correlations in Novak2024 (subjective-subjective r=0.74, objective-objective r=0.81) demonstrate test-retest reliability and internal consistency, not construct validity — instruments can consistently measure the wrong construct, and the chapter's own open question about construct confusion (@oq:bridging-subjective-objective-gap) explicitly argues they may do so.

Certainty: 0.75 — directly replicated across independent cohorts with convergent designs. Severity applicability: unknown — most studies sample ambulatory mild-moderate patients; the pattern may differ in bedbound severe patients where subjective and objective measures may both show profound abnormality.

*Consequence:* A patient presenting with severe functional impairment and entirely normal standard laboratory results is exhibiting the expected clinical pattern in ME/CFS — not psychosomatic overlay, not malingering, not "medically unexplained." The discrepancy is a signal, not noise. Clinicians who interpret normal labs as evidence that "nothing is wrong" are systematically misreading the disease.
] <ach:subjective-measurable-discrepancy-domains>

#synthesis(title: [The Subjective-Measurable Discrepancy as a Diagnostic Index])[
The core mechanistic question is not whether the discrepancy exists — it is what the discrepancy means. Three non-exclusive explanations have been proposed:

*Provocation-dependence.* Many ME/CFS abnormalities are detectable only under stress provocation (exercise, orthostatic challenge, cognitive load). Haptoglobin depletion is present post-exertion but absent at rest @Moezzi2025HaptoglobinME. Cerebral blood flow declines during tilt-testing but resting hemodynamics are normal @vanCampen2021Deconditioning. Hand grip strength correlates with symptom severity specifically in the ME/CFS phenotype @Paffrath2024HandGrip — a provocation test that reveals what resting accelerometry misses. Standard clinical labs are resting measurements, and resting measurements systematically miss provocation-dependent pathology. This is not a measurement failure — it is a measurement domain mismatch.

*Central nervous system confinement.* Byrnes2009's peripheral blood transcriptomic null result and Omdal2026's finding that Long COVID fatigue severity is unassociated with any peripheral inflammatory biomarker @Omdal2026LCFatigueStress converge on the hypothesis that a significant fraction of ME/CFS pathology may be CNS-confined — brainstem nuclei, hypothalamic circuits, microglial activation — and not reflected in every peripheral blood measurement. This is not an absolute claim — the 7-biomarker blood panel achieving 91% diagnostic accuracy (Section @sec:systems-biology) demonstrates that SOME peripheral signals do track the disease, at discriminatory levels. CNS confinement is a partial, not total, explanation: some biologies are detectable in blood (metabolic, vascular, certain immune markers); others (transcriptomic at the PBMC level, subjective fatigue perception) may not be. A CNS disease whose peripheral immunological and metabolic consequences are measurable in blood while its core neuronal transcriptomic signature is restricted to the CNS compartment is not a paradox — it is the expected compartment dissociation in a multi-system disease whose central integrator (brainstem/hypothalamus) is anatomically inaccessible to phlebotomy.

*Interoceptive amplification.* Teodoro2018 proposed a mechanistic model: pain, fatigue, and excessive interoceptive monitoring → decreased externally directed attention → increased distractibility → cognitive processes experienced as unduly effortful, mediated by a switch from automatic to controlled processing mode. This is a neurobiological model (predictive processing, attention allocation), not a psychological one. The patient's conscious experience captures dimensions of dysfunction (attention-capture by normally subconscious physiological signals) that lie outside the measurement bounds of standard clinical instruments.

These explanations are not mutually exclusive, but they do have implications for whether the subjective report should be treated as veridical. Provocation-dependence and CNS confinement assume the patient is accurately perceiving real pathology that standard instruments cannot access — the gap is in the measurement. Interoceptive amplification assumes the perception is biologically amplified — the gap is in the percept. The models can coexist (different domains may reflect different mixes; the amplification may be amplifying a real signal that provocation reveals), but the interpretation of what a narrowed discrepancy index would mean differs: for measurement-gap models, a narrowed discrepancy means the instrument was finally good enough; for the amplification model, a narrowed discrepancy means the amplification was dampened. Both are testable — but they make opposite predictions about what would happen if interoceptive accuracy were pharmacologically reduced (guanfacine, beta-blocker): the measurement-gap models predict subjective report should remain unchanged (the real pathology persists); the amplification model predicts subjective report should improve (the exaggerated perception is dampened).

*Consequence:* If provocation-dependence drives the discrepancy, the diagnostic pathway shifts from "run standard labs, find nothing, consider psychiatric" to "standard labs are expected to be normal — now run provocation testing (tilt table, CPET, dynamometry)." This would change clinical practice in ME/CFS assessment. If CNS confinement drives the discrepancy, the implication is that peripheral blood biomarkers will remain weak regardless of how sensitive the assay — the measurement target is inaccessible to phlebotomy.
] <syn:subjective-measurable-discrepancy-index>

#hypothesis(title: [The Discrepancy Index as a Subtyping Tool: High Discrepancy → Dysautonomia-Dominant])[
A formal discrepancy index — the ratio of subjective symptom severity to objectively measurable dysfunction — may subtype ME/CFS patients:

The mechanism is straightforward. Dysautonomia is provocation-dependent: orthostatic tachycardia, cerebral hypoperfusion, and HRV suppression emerge during upright posture or exertion but are absent at rest. A patient with pure dysautonomia has zero resting abnormalities and normal standard labs — but reports severe orthostatic symptoms, fatigue with upright activity, and brain fog that worsens with standing. Their discrepancy index is high: subjective report >> objective resting measurements.

In contrast, a patient with immune-inflammatory pathology (elevated CRP, elevated cytokines, microglial activation on PET, autoantibodies detectable on cell-based assay) has objectively measurable correlates of symptom severity. Their discrepancy index is low: subjective report ≈ objective measurements — both indicate pathology.

*Note on definitional circularity:* Dysautonomia is characterized in part by provocation-dependence — orthostatic abnormalities emerge only during upright posture or exertion. A discrepancy index that divides subjective severity (high during upright activity) by objective resting measures (normal) will necessarily be high in dysautonomic patients *by definition* — the index's numerator captures symptoms triggered by a postural state its denominator was not designed to detect. This means the association between high discrepancy and dysautonomia is partly definitional (the index was structured to elevate dysautonomic patients) and partly empirical (whether the COMPASS-31/QASAT discrepancy predicts best treatment response within the dysautonomic subgroup). The empirical claim — that within dysautonomic patients, discrepancy magnitude predicts autonomic drug response — is the part that requires testing. The definitional claim — that dysautonomic patients will show the highest discrepancy — may be tautological. A ratio-based index with near-zero denominators (QASAT scores close to zero in purely-provocational dysautonomia) also produces explosive ratios driven by measurement noise rather than genuine discrepancy magnitude; ratio-score reliability has not been psychometrically assessed.)

Certainty: 0.45 — the discrepancy is well-documented (0.75), but the subtyping prediction and treatment-response hypotheses are untested. No prospective study has used a discrepancy index to stratify patients or predict outcomes. Severity applicability: unknown.

*Falsifiable prediction:* In a cohort of ME/CFS patients stratified by COMPASS-31 (subjective autonomic symptom score) ÷ QASAT (objective autonomic deficit score), the high-discrepancy tertile should show (a) significantly greater improvement on midodrine or pyridostigmine than the low-discrepancy tertile, and (b) significantly less CRP, cytokine elevation, and autoantibody positivity.

*Consequence:* If the index works, clinicians could triage patients at first visit — high discrepancy → autonomic workup and treatment; low discrepancy → immunological workup and treatment — replacing the current trial-and-error approach to ME/CFS management.
] <hyp:discrepancy-index-dysautonomia-subtype>

#speculation(title: [The Discrepancy Index as an Interoceptive Accuracy Measure])[
An alternative framing: the discrepancy index is not a subtyping tool but a measure of interoceptive accuracy — how well a patient's conscious perception maps onto their actual peripheral physiology. In the predictive processing framework, interoception is Bayesian inference: the brain generates predictions about internal states and updates them based on ascending sensory signals. Precision weighting (the relative confidence assigned to predictions vs prediction errors) determines whether perception tracks peripheral physiology or drifts on prior expectations @Teodoro2018UnifyingTheory.

High-discrepancy patients may have abnormally high precision on ascending interoceptive signals — they are exquisitely sensitive to small physiological perturbations (heart rate increase, vasodilation, metabolic shift) that objectively remain within the normal range. Their conscious experience is not "wrong" — they are perceiving real signals that healthy individuals's brains filter out as noise. The discrepancy is between a high-gain interoceptive system and instruments calibrated for detecting pathology-level (not signal-level) deviations.

This reframes the discrepancy as a neurobiological property of the individual's interoceptive system, not a subtype of ME/CFS. It could be measured independently via heartbeat detection tasks, respiratory resistance discrimination, or thermal detection thresholds. If interoceptive accuracy predicts the discrepancy index, the index becomes a proxy for a neurobiological trait — not a disease classification.

Certainty: 0.30 — predictive processing and interoceptive accuracy frameworks are well-established in neuroscience but have not been applied to ME/CFS patient-measurement discrepancy specifically. Severity applicability: unknown.

*Falsifiable prediction:* ME/CFS patients should show a distinct interoceptive computational signature compared to healthy controls — either heightened interoceptive accuracy (higher on ascending signals, precision-weighting phenotype) or reduced accuracy with overweighted priors (the more common somatic-symptom-disorder pattern). The direction of the difference distinguishes between competing models: greater accuracy supports the precision-weighting hypothesis; reduced accuracy supports the prior-dominance / somatic-symptom alternative. A formal Bayesian observer model is required to distinguish the two; a simple accuracy comparison (binary correct/incorrect) is insufficient because both models can produce the same accuracy score via different mechanisms (e.g., reduced accuracy with elevated confidence vs reduced accuracy with reduced confidence). If neither parameter differs from healthy controls, the interoceptive premise collapses — patients process body signals identically to healthy individuals, and the discrepancy is structural (wrong instrument, wrong compartment, wrong timepoint), not perceptual.

*Consequence:* If confirmed, the discrepancy becomes a direct readout of interoceptive processing gain — a neurobiological trait measurable with existing psychophysics paradigms. If refuted, the interoceptive amplification model collapses to unfalsifiable status — the mismatch is structural (wrong compartment, wrong domain) rather than perceptual.
] <spec:discrepancy-index-interoceptive-accuracy>

#limitation(title: [The Discrepancy Index is a Measurement Framework, Not a Validated Diagnostic Tool])[
The discrepancy index proposed here is a conceptual framework synthesizing cross-domain evidence, not a validated clinical instrument. No study has: (a) quantified a discrepancy score using a standardised formula, (b) assessed test-retest reliability, (c) determined sensitivity/specificity against a gold standard, or (d) demonstrated clinical utility in decision-making. The concept is supported by convergent evidence but the tool does not yet exist.

Several structural issues remain unresolved:
- *Domain selection:* Which measurement domains (autonomic, cognitive, sleep, activity, biomarker) should compose the index, and with what weights?
- *Provocation standardisation:* If the discrepancy resolves under provocation, should the index use resting measurements (maximising discrepancy) or post-provocation measurements (minimising it)?
- *Severity dependency:* The index may behave differently in mild (high function, low measurable dysfunction, large discrepancy) vs severe (low function, high measurable dysfunction, small discrepancy) patients — the same score could mean the opposite. van Campen et al.\ (2021) include severe patients; the twin and activity cohorts sample mild-moderate. Severity adjustment of the index is unstudied.
- *Threshold calibration:* The subtyping prediction (high discrepancy → dysautonomia, low → immune-inflammatory) requires empirical validation of the cut-point. An untested cut-point makes the prediction unfalsifiable — post-hoc threshold adjustment can "confirm" any result.
- *Measurement direction:* Some discrepancies run opposite — Paffrath2024 found HGS as an objective measure DOES correlate with symptom severity in ME/CFS specifically. The discrepancy is domain-specific and not universally present.

Certainty: n/a — methodological caveat, not a substantive claim. Severity applicability: the resolution of the severity-sensitivity problem is a prerequisite for any clinical use.

*Consequence:* The discrepancy index should be treated as a hypothesis-generating framework — a structured way to think about measurement discordance — not as a clinical decision tool. The burden of proof is on demonstrating (not assuming) that the index adds information beyond what clinical judgment already provides.
] <lim:discrepancy-index-validation-gap>

#open-question(title: [What Measurement Paradigm Can Bridge the Discrepancy Gap?])[
The discrepancy literature reveals a paradox: instruments that correlate with each other within-domain fail to correlate across-domain. COMPASS-31 and SAS correlate at r=0.74; QASAT and CASS correlate at r=0.81. But COMPASS-31 and QASAT correlate at r=0 @Novak2024DysautonomiaMismatch. The instruments are internally consistent but cross-dimensionally orthogonal — they measure different constructs entirely.

This raises a fundamental measurement question: is there any instrument — existing or designable — that would bridge the gap? Candidates include:
- *Provocation-based patient-report* (ask patients to rate symptoms DURING tilt test, not retrospectively) — may capture the objective abnormality that resting questionnaires miss
- *Wearable physiological monitoring with ecological momentary assessment* — timestamp-aligned subjective and objective data may reveal temporal correlations that cross-sectional sampling obscures
- *Microstructural objective measures* (CAP analysis, spindle density, microarousal index for sleep; beat-to-beat HRV dynamics, baroreflex sensitivity for autonomic) — may capture the specific pathology that macrostructural measures (total sleep time, resting HR) miss
- *Challenge-test protocols* — combine provocation (tilt, cognitive load, thermal stress) with simultaneous subjective AND objective measurement

A negative result — no instrument bridges the gap regardless of paradigm — would support CNS confinement: the constructs are ontologically distinct because the patient's experience integrates CNS-level information (interoceptive precision, attention capture, predictive processing) that no peripheral instrument can access.

Certainty: n/a — methodological research question. Severity applicability: severity-stratified instrument validation is needed.

*Consequence:* Until the gap is bridged, ME/CFS research is measuring two different things with two different instrument classes and calling both "autonomic function," "sleep quality," or "cognitive performance" — systematic construct confusion. Resolving this is prerequisite to any biomarker that claims to track symptom severity.
] <oq:bridging-subjective-objective-gap>

#open-question(title: [Why Do Some Domains Show Convergence?])[
Paffrath2024 demonstrated that hand grip strength correlates with hallmark ME/CFS symptom severity — a domain where subjective and objective converge. Friedberg2022 showed that lower HRV (an objective autonomic measure) correlates with patient-reported nonimprovement trajectory — another convergence point. vanCampen2021 showed that CBF decline during tilt is present regardless of resting hemodynamics — the objective measure captures what the subjective report was already indicating.

What distinguishes converging from diverging domains? Hypotheses:
- *Provocation-intensity:* HGS is a maximal-effort test (provocation ceiling); tilt table is a moderate provocation; resting accelerometry is no provocation. Convergence may be a function of provocation intensity — the harder you stress the system, the more the objective measure and subjective report align.
- *Measurement specificity:* HRV and CBF measure specific physiological parameters with known clinical significance. COMPASS-31 aggregates heterogenous symptoms into a single score — dilution of signal.
- *Temporal coupling:* Post-exertional haptoglobin depletion requires measurement at the right time window. Standard labs at random clinic visits miss time-dependent signals.

If convergence domains share features (provocation intensity, measurement specificity, temporal coupling), the discrepancy is resolvable through instrument design rather than reflecting an irreducible patient-instrument gap. If convergence domains show no systematic pattern, the discrepancy may be stochastic — some measures align, some don't, for reasons opaque to current understanding.

Certainty: 0.30 — convergence domains are documented post-hoc; no systematic comparison of converging vs diverging domains has been conducted. Severity applicability: unknown.

*Consequence:* Identifying convergence patterns guides instrument design — invest in high-provocation, high-specificity, temporally-coupled measures (CPET + symptom rating during test; tilt + simultaneous COMPASS-31; post-exertion sampling at fixed intervals) rather than trying to extract convergence from resting measures that are structurally mismatched to the pathology's dynamics.
] <oq:convergence-domain-patterns>

#speculation(title: [Discrepancy Magnitude as Illness-Trajectory Predictor])[
Friedberg2022 found that lower HRV — an objective autonomic dysfunction measure — was associated with nonimprovement at 6-month follow-up, while patient-reported activity patterns (push-crash, limiting, pacing) did NOT differ between improvers and non-improvers @Friedberg2022Nonimprovement. This inverts the discrepancy's diagnostic role: the objective measure predicted trajectory while the subjective report did not.

Extrapolating: a patient whose discrepancy index is high (severe subjective report, mild objective dysfunction) may have a better prognosis than one whose index is low (severe subjective report, severe objective dysfunction) — the latter has measurable pathology driving the symptoms, the former has a system that is still compensating (peripheral measures within range, CNS processing generating disproportionate distress).

Alternatively: high discrepancy may represent early-stage disease (subjective distress precedes measurable pathology — the patient knows something is wrong before the lab does), while low discrepancy represents late-stage disease (measurable pathology has accumulated to match symptom severity). In this model, the discrepancy index is a disease-stage biomarker — declining with illness duration as measurable dysfunction accumulates. Vergauwen2021 and Teodoro2018 would predict the opposite ("chronic illness" would correlate with greater discrepancy), but no study has tested discrepancy magnitude against illness duration.

Certainty: 0.25 — single longitudinal study (Friedberg2022, n=148, 6-month follow-up) supports the objective-predicts-trajectory finding; extrapolation to discrepancy index as prognostic tool is speculative. Severity applicability: unknown.

*Falsifiable prediction:* In a longitudinal cohort (n≥100, 12-month follow-up), baseline discrepancy index magnitude should predict improvement vs deterioration: higher-discrepancy patients improve more (or deteriorate less) than matched low-discrepancy patients.

*Consequence:* If discrepancy predicts trajectory, the index moves from "interesting observation" to "clinically actionable prognostic tool" because it identifies which patients need aggressive early intervention (low-discrepancy = accumulating measurable damage) and which may improve with time and autonomic support (high-discrepancy = system still compensating). This is a treatment-allocation decision tool, not just a classification tool.
] <spec:discrepancy-trajectory-predictor>

=== The Discrepancy Index — Self-Critique, Null Hypotheses, and Evidence Quality Boundaries

The above environments construct a framework. The following environments interrogate it. These are categories 10–12 ideas — structural reasons the discrepancy framework may be incomplete, misleading, or wrong. They are integrated here alongside the framework they challenge because epistemic balance requires that the constructive and critical arguments occupy the same section, not be relegated to separate chapters where readers encounter one without the other. Origin: brainstorm — /integrate-topic subjective-measurable-discrepancy-index.

#speculation(title: [The Energy-Conservation Signal: The Brain Detects Metabolic Flux Failure That Blood Tests Miss])[
The brain's hypothalamus and brainstem nuclei continuously monitor metabolic state via AMPK, mTOR, and mitochondrial retrograde signaling (ROS, NAD+/NADH ratio, ATP/ADP ratio). These sensors detect FLUX failure — the rate of ATP production cannot meet demand — even when metabolite POOL sizes (blood glucose, lactate, pyruvate) are normal. Blood tests measure pools; the brain measures flux. The subjective report of fatigue, malaise, and "something is wrong" reflects the brain's correct detection of flux insufficiency; objective tests return normal because they measure pools.

This hypothesis is distinct from the three existing explanatory models (provocation-dependence, CNS confinement, interoceptive amplification): it is not provocation-dependence (the flux failure is continuous but invisible to pool assays), not CNS confinement (the signal originates in peripheral tissue mitochondria but is detected centrally via metabolic sensing — it crosses compartments), and not interoceptive amplification (the brain is correctly detecting a real signal — no amplification needed).

Evidence: mitochondrial dysfunction in ME/CFS is documented at the flux level — impaired phosphocreatine recovery on 31P-MRS post-exercise, impaired Complex V activity, reduced oxygen extraction on CPET — but NOT at the resting metabolite pool level (normal resting lactate, normal CK, normal glucose). Moezzi2025HaptoglobinME showed haptoglobin depletion post-exertion but normal at rest — a flux signal invisible to single-draw sampling. The hypothalamic metabolic sensing circuits are well-characterized in obesity/diabetes research but have not been applied to ME/CFS fatigue perception.

Certainty: 0.30 — the pool/flux distinction in ME/CFS metabolomics is well-documented (0.55 for flux abnormalities, 0.65 for normal resting pools), but the specific claim that central metabolic sensors mediate the discrepancy has zero direct evidence in ME/CFS. Severity applicability: unknown.

*Falsifiable prediction:* ME/CFS patients should show impaired phosphocreatine recovery kinetics on 31P-MRS that correlates with subjective fatigue severity (r ≥ 0.4) while resting phosphocreatine/ATP ratio is normal and does NOT correlate with fatigue. If resting metabolite pools predict subjective fatigue better than flux measures, the pool/flux distinction is irrelevant.

*Consequence:* The patient feels exhausted because their cells are running on fumes — but standard blood tests only measure how much fuel is in the tank, not how fast the engine can burn it. The tank is half-full; the problem is the fuel line is pinched. This reframes the discrepancy from "patient perception is amplified" to "standard measurement is mis-targeted." Origin: brainstorm.
] <spec:energy-conservation-signal>

#speculation(title: [Temporal Decoupling: Subjective Integration Across Weeks vs. Objective Snapshots at One Moment])[
Subjective symptom reports integrate across days to weeks (the recall period of most validated instruments), while objective measures capture a single timepoint (one night in a sleep lab, one tilt test, one blood draw). If the disease fluctuates — and ME/CFS is characterized by fluctuation — the subjective report captures the worst moments via the peak-end rule and availability heuristic, while the objective measure randomly samples one data point from the distribution. The discrepancy is the difference between the distribution's tail (subjective) and a random sample from the distribution's body (objective).

This is NOT interoceptive amplification (which says perception is amplified) — it is a temporal sampling bias that would produce discrepancy even with perfect interoception. Two patients with identical objective physiology (same mean, same variance) could report completely different subjective severity if one patient weights their worst moments more heavily. The discrepancy is a measurement domain mismatch, not a perceptual pathology.

Evidence: the peak-end rule in symptom recall is well-established in pain research. Vergauwen2021 used 12-day diary vs. 12-day accelerometry — even with best-matched instruments, rs=0.35–0.38, suggesting temporal integration partially but not fully explains the discrepancy. Friedberg2022 found patient-reported activity patterns did NOT discriminate improvers from non-improvers at 6-month follow-up — but objective HRV did — consistent with subjective reports being insensitive to the distribution while objective measures capture an average.

Certainty: 0.40 — the peak-end rule in symptom recall is well-established (0.70 in general health psychology), but its specific contribution to the ME/CFS discrepancy has not been quantified. Severity applicability: unknown.

*Falsifiable prediction:* In a 14-day continuous monitoring study (daily symptom rating + continuous HR/HRV/activity), compare: (a) mean symptom vs. mean objective, (b) peak symptom vs. mean objective, (c) mean symptom vs. objective at worst-3-days. If matched-distribution correlation is significantly higher (Δr > 0.15), temporal decoupling is confirmed. If the correlation is unchanged, temporal sampling does not explain the discrepancy.

*Consequence:* If you ask a patient "how was your month?" they remember the 3 days they couldn't get out of bed, not the 27 days they managed. If you measure their physiology on one of the 27 okay days, it looks normal. Both are "true" — they just sampled different parts of the distribution. This reframes the discrepancy as a measurement design problem (temporal window mismatch), not a patient unreliability problem. Origin: brainstorm.
] <spec:temporal-decoupling>

#limitation(title: [The Discrepancy Evidence Base Has a Systematic Instrument-Mismatch Confound])[
Every study in the discrepancy evidence base shares a structural design feature: subjective instruments use multi-week recall periods (PSQI: 1 month; COMPASS-31: recent weeks; Chalder Fatigue Scale: 1 month) while objective instruments sample a single timepoint (1-night PSG, 1-visit QASAT, 1 blood draw). The discrepancy is partly designed into the measurement protocol — a necessary consequence of the retrospective-integrative vs. instantaneous-sampling instruments chosen, not solely a discovery about the disease.

Vergauwen2021 provides the most informative constraint: even with matched time windows (12-day diary vs. 12-day actigraphy), the correlation is weak (rs=0.35–0.38). This suggests instrument-mismatch is partial, accounting for perhaps half the discrepancy magnitude. But the fact that matched windows still show weak correlation across three studies (Vergauwen2021 for activity; Watson2003 for single-night PSG vs 1-month PSQI; Armitage2009 for QEEG during one sleep laboratory night vs lifetime sleep perception) means instrument selection bias is not the whole explanation — the discrepancy is robust to instrument choice.

Certainty: 0.60 — the instrument-mismatch confound is present in all studies. The consequence for the discrepancy framework: the achievement's assertion that the discrepancy is replicated across independent domains needs the caveat that the replication includes a shared structural bias. The robustness of the pattern to instrument choice partially mitigates but does not eliminate this concern. Severity applicability: n/a — methodological concern.

*Consequence:* Each study that documents the discrepancy compared a month-long memory to a single-moment snapshot. The pattern is real, but its magnitude is inflated by the measurement design — like comparing a list of every restaurant you ate at this month (PSQI: "in general, how was your sleep this month?") to a photo of what you ate tonight (PSG: "this is your sleep architecture from 10 PM to 6 AM on Tuesday"). The discrepancy between the list and the photo is partly a discovery about memory, not about dinner. Origin: brainstorm.
] <lim:instrument-selection-bias>

#limitation(title: [Byrnes2009's Null Result May Reflect Tissue-Mismatch, Not CNS Confinement])[
Byrnes2009's null result — zero transcriptomic signal in peripheral blood leukocytes in 44 MZ twin pairs — is cited as the strongest evidence for the CNS confinement model. But the null could reflect tissue-mismatch rather than confinement: peripheral blood leukocytes are primarily immune cells. If the primary pathology is in muscle (mitochondrial), endothelium (microvascular), brainstem (autonomic), or enterochromaffin cells (serotonin), blood leukocyte transcriptomics would show nothing — not because the signal is CNS-confined, but because the sampled cell type doesn't express the relevant genes.

The null result is strong evidence against a systemic transcriptomic signal in blood leukocytes specifically. It is weak evidence for CNS confinement — tissue-mismatch is an alternative explanation that does not require the pathology to be CNS-confined. Muscle biopsy transcriptomics, endothelial cell isolation, or CSF proteomics might reveal signals that PBMC bulk transcriptomics misses.

Certainty: 0.50 — the tissue-mismatch interpretation is parsimonious and consistent with known multi-system involvement. The CNS confinement model survives as one explanation, not the only one. Severity applicability: n/a — methodological interpretation concern.

*Consequence:* The most famous null result in ME/CFS research — "no signal in blood" — may have been measuring the wrong cells. It's like looking for evidence of myocardial infarction in a toenail clipping. The signal was there — just in muscle, endothelium, or brainstem, not the blood leukocytes they assayed. The CNS confinement model should acknowledge tissue-mismatch as an alternative explanation for the null. Origin: brainstorm.
] <lim:tissue-mismatch-byrnes2009>

#limitation(title: [The Discrepancy Index's Severity Dependency May Be Fatal for Subtyping])[
The discrepancy index may be lower in mild patients (low objective dysfunction, high subjective report) and systematically lower in severe patients (high objective dysfunction, high subjective report). If so, the index measures disease severity, not mechanism subtype. The subtyping hypothesis — high discrepancy → dysautonomia-dominant, low discrepancy → immune-inflammatory — may appear correct only because mild patients are predominantly dysautonomia-dominant (early disease, autonomic dysfunction before measurable organ damage) and severe patients are predominantly immune-inflammatory (later disease, accumulated damage). The index's apparent subtyping power would be perfectly confounded with disease stage — it adds zero information beyond symptom severity and illness duration.

The contradictory predictions within this chapter illustrate the problem: the subtyping hypothesis predicts high-discrepancy patients are dysautonomia-dominant; the trajectory-predictor speculation (@spec:discrepancy-trajectory-predictor) predicts high-discrepancy patients have better prognosis. Both could be true if high discrepancy simply means mild disease — and mild patients are more likely to improve AND more likely to have dysautonomia as their dominant mechanism. The index's interpretation is ambiguous until severity is controlled.

Certainty: 0.45 — the severity confound is acknowledged but its magnitude and direction are unknown. Without severity-stratified validation, the subtyping hypothesis is unfalsifiable — post-hoc threshold adjustment could confirm any result. Severity applicability: the confound IS the severity-applicability problem.

*Consequence:* If all the high-discrepancy patients are just the mild patients — and mild patients respond better to everything — the discrepancy index didn't discover the dysautonomia subtype. It rediscovered "less-sick people get better more easily." This is not a breakthrough; it is a tautology wearing a regression coefficient. Until severity-stratified data exist, the subtyping hypothesis must be treated as a research question, not a diagnostic framework. Origin: brainstorm.
] <lim:severity-confound-fatal>

#limitation(title: [The Achievement's Certainty (0.75) Overestimates the Independence of the Evidence Base])[
The existing achievement assigns 0.75 certainty to the claim that the discrepancy is replicated across 5 domains. Each domain's evidence has correlated sampling sources that weaken the independence assumption: sleep — Watson2003 and Armitage2009 use the same twin cohort, quasi-independent at best; autonomic — Novak2024 (n=2,627) is the strongest single study but is one study on one instrument pair; activity — Vergauwen2021 found rs=0.35–0.38, which is significantly greater than zero (p < 0.05) — this is a weak positive relationship, not a zero discrepancy; cognition — Teodoro2018 is a systematic review, not a primary study with original effect sizes for discrepancy magnitude; biomarker — Byrnes2009 is the cleanest null, but the tissue-mismatch concern weakens its interpretation.

The five domains do not provide five independent replications. They provide: one twin cohort (sleep), one large cross-diagnosis cohort (autonomic), one moderate-effect study (activity), one review (cognition), and one tissue-specific null (biomarker). The combined certainty 0.75 is inflated by treating partially overlapping evidence sources as fully independent. A more appropriate certainty after accounting for shared sampling biases, correlated evidence sources, and domain-level interpretative heterogeneity is 0.55–0.60.

Certainty: 0.55 — the evidence for the discrepancy is genuinely strong. The concern is about the interpretation of its strength, not the existence of the effect. Severity applicability: n/a — certainty calibration concern.

*Consequence:* The five legs of the discrepancy table look solid, but two were carved from the same piece of wood (the same twins), one is a summary of other people's measurements, and one shows a weak relationship rather than a zero. The table stands — the discrepancy is real — but it wobbles more than 0.75 implies. The achievement's certainty should be downgraded to 0.60 to accurately reflect the correlated evidence structure. Origin: brainstorm.
] <lim:overestimated-certainty>

#open-question(title: [Null Hypothesis: Does the Discrepancy Index Add Clinical Value Beyond Severity and Duration?])[
The null hypothesis is not that the discrepancy doesn't exist — it does (certainty 0.75 for the phenomenon). The null is that the discrepancy index adds zero clinical value beyond existing assessment: diagnostic null — does not improve accuracy beyond IOM criteria; prognostic null — does not predict outcome better than severity and duration; therapeutic null — does not predict differential treatment response. If all three hold, the discrepancy index is scientifically interesting but clinically useless — an academic construct.

This is the default state for any novel clinical instrument: the burden of proof is on demonstrating that a new measure adds information beyond what clinicians already use. Until validated against the null, the discrepancy index framework — including the subtyping hypothesis, trajectory predictor, and diagnostic criterion proposal — is hypothesis-generation, not clinical guidance.

Certainty: n/a — null hypothesis assessment. Severity applicability: the null's diagnostic and prognostic arms require severity-stratified testing.

*Falsifiable prediction:* The discrepancy index must demonstrate utility in at least one of: (a) diagnostic — improves sensitivity/specificity by ≥5 percentage points over IOM; (b) prognostic — predicts outcome AUC ≥ 0.65, exceeding severity+duration (ΔAUC ≥ 0.05); (c) therapeutic — stratified treatment yields ≥0.3 SD outcome difference vs. unstratified. If all three fail, the index is academically interesting but clinically null.

*Consequence:* If the discrepancy score cannot tell clinicians anything they don't already know from talking to the patient and looking at the chart, it belongs in a journal's methods section — not in a clinical assessment. The most important thing to do is not to refine the index; it is to test whether the index adds anything. Origin: brainstorm — null hypothesis assessment.
] <oq:discrepancy-index-null-hypothesis>

#open-question(title: [Is the Discrepancy an ME/CFS-Specific Signal or Fully Explained by Known Confounds?])[
Controlling for known confounds — illness severity, symptom fluctuation variance (severity × coefficient of variation), psychiatric comorbidity (HADS anxiety/depression), medication count and class (beta-blockers suppress HR → widen autonomic discrepancy; hypnotics alter sleep architecture → widen sleep discrepancy), age, and gender — the ME/CFS-specific residual discrepancy may be zero. The discrepancy would be a quantitative amplification of normal human interoceptive noise driven by disease severity, not a qualitative shift in how patients perceive their physiology.

If the ME/CFS discrepancy disappears after confound control, the entire discrepancy framework collapses to "severe illness produces large subjective-objective mismatch — and this is true in any disease, not just ME/CFS." If a disease-specific residual survives after full confound control, the discrepancy is a genuine property of ME/CFS physiology beyond what severity alone predicts.

Certainty: 0.40 — each individual confound is plausible (severity: face validity; fluctuation variance: peak-end rule; psychiatric comorbidity: symptom amplification, certainty 0.60; medication effects: well-characterized pharmacology), but the collective explanatory power of all confounds is unknown. Severity applicability: the test requires severity-stratified analysis.

*Falsifiable prediction:* Regress discrepancy index on severity, symptom fluctuation variance, HADS-A, HADS-D, medication count/class, age, and gender. If R² ≥ 0.60 and the ME/CFS vs. healthy control coefficient becomes non-significant (p ≥ 0.01), the discrepancy is fully explained by confounds. If ME/CFS status remains significant after full confound control, a disease-specific residual survives.

*Consequence:* If the discrepancy is fully explained by confounds, researchers should stop investigating it as an ME/CFS mechanism and redirect resources toward understanding why severe illness in general produces subjective-objective mismatch — this would have implications for multiple contested diagnoses, not just ME/CFS. If a disease-specific residual survives, the discrepancy IS an ME/CFS mechanism worth dedicated investigation. Origin: brainstorm — null hypothesis assessment.
] <oq:confound-explained-null>

== Unifying Mechanisms Across Systems
<sec:unifying-mechanisms>

Several mechanisms operate across multiple systems to maintain chronic illness:

*Vicious cycles:* Metabolic dysfunction impairs immune clearance; chronic inflammation consumes metabolic resources; autonomic dysfunction reduces cerebral perfusion needed for repair. Each cycle self-reinforces, creating path dependency.

*Multi-lock hypothesis:* Multiple independent failure modes must be addressed simultaneously. Breaking one lock (e.g., mitochondrial support) may be insufficient if other locks (autoantibodies, autonomic dysfunction) remain engaged.

*Cycle dynamics:* Critical transitions explain sudden deteriorations and non-linear progression. Small perturbations may trigger large state changes when near thresholds.



*Non-monotonic dose-response (inverted-U / biphasic / hormetic) as a systems principle (triggered by Kevin Lee, personal communication, July 2026; expanded to all medications with non-monotonic dose-response, July 2026):* A recurring pattern across ME/CFS pharmacotherapy is the non-monotonic dose-response. This framework synthesizes at least four pharmacologically distinct mechanism categories that share only a U-shaped dose-response curve shape. The term "hormesis" — in which low-dose stress triggers compensatory adaptive upregulation via Nrf2/ARE signaling while higher doses suppress the same pathway — applies specifically to the Nrf2 cluster (Calabrese corpus @Calabrese2002hormesisHistory @CalabreseBaldwin2003toxicologyRethinks @Calabrese2010hormesisCentral @Sun2020yinYangHormesis). Other non-monotonic patterns derive from different mechanisms (partial-agonist inverted-U, receptor-isoform selectivity, BBB penetration, biphasic concentration-response at ion channels) and are grouped here because they share the empirical pattern — not the same molecular mechanism. The Calabrese literature establishes hormesis as a common dose-response pattern in toxicology (cell proliferation, enzyme induction), though its status as the "default" in clinical pharmacology is not consensus. In ME/CFS specifically: in healthy humans, exercise activates Nrf2/AMPK/PGC-1α signaling via mitohormesis @Ristow2009oxidativehormesis. In ME/CFS, where exercise triggers PEM rather than adaptation, this pathway may be broken (inferred from known mitohormesis in health + documented exercise intolerance in ME/CFS — the NRF2–PGC-1α bidirectional circuit has not been directly measured during exercise in ME/CFS patients). The consequence may be that hormetic pathways are either hypercompensatory at low doses or blunted, but direction and magnitude are unknown.

The following medications in this paper exhibit non-monotonic dose-response patterns. This candidate list was generated by pattern-review of this paper's own content and has not been validated in any external dataset — whether these patterns share a common mechanism or are drug-specific artifacts is the core question the hormetic reserve hypothesis poses:

*Nrf2-mediated hormesis (compensatory upregulation):* LDN (optimal dose varies from 0.5--4.5 mg; TLR4/Nrf2 hormetic window — low-dose TLR4 blockade triggers compensatory anti-inflammatory priming; higher doses remove basal TLR4 tone, collapsing benefit. At 50 mg, naltrexone becomes a full mu-opioid antagonist — this is dose-dependent target selection, not a second inversion on the response curve @Calabrese2021Nrf2 @Calabrese2021UltraLow @Dara2023 @Toljan2018), low-dose lithium (potential benefit at 2--5 mg/day via GSK-3β inhibition → Nrf2 nuclear localization; also acts on IMPase/inositol at higher concentrations — see mTOR cluster below), melatonin (sleep benefit at 0.3--0.5 mg; worsening at 3+ mg — MT1/MT2 receptor desensitization at supraphysiological doses), sulforaphane (theoretical Nrf2 hormetic window; high-dose pro-oxidant effect may reverse low-dose benefit).

*Partial-agonist inverted-U (receptor-occupancy pharmacology, not Nrf2-mediated):* LDA/aripiprazole (therapeutic at 0.2--2 mg; D2 partial agonism provides net agonism at low occupancy; antagonist dominance at >50% occupancy inverts benefit — U-shaped dose-response @Crosby2021LDA @Sun2020yinYangHormesis). This is a receptor-occupancy property applicable in any population with dopamine deficit, not ME/CFS-specific.

*Catecholamine inverted-U (inverted-U dose-response at D1/α2A receptors in prefrontal cortex — canonical neuroscience principle @Arnsten2011catecholaminePFC @Cools2011invertedU @Cools2022neuromodulationPFC):* modafinil (cognitive benefit at 50--100 mg via DAT blockade; 200+ mg triggers histaminergic/orexin activation → insomnia, anxiety — D1 inverted-U exceeded), duloxetine (serotonergic benefit at 20--30 mg; 60+ mg NE reuptake inhibition dominates → sympathetic activation worsens orthostatic intolerance), beta-blockers (β1-selective HR reduction at low dose; β2 blockade at higher dose removes lipolysis → fatigue worsens — Yerkes-Dodson inverted-U arousal optimization @Calabrese2008yerkesDodson), guanfacine (PFC-selective α2A at 0.5--1 mg; global NE suppression at 2--4 mg → cognition inverts), gabapentinoids (pathological-circuit-selective α2δ block at 100--300 mg; global neurotransmitter suppression at higher doses → sedation).

*Receptor-isoform selectivity:* rapamycin/sirolimus (mTORC1 inhibition at 1--3 mg/week restores autophagy/mitophagy; higher cumulative exposure suppresses mTORC2 → immunosuppression, insulin resistance — this is an inherent property of rapamycin's mTORC1/mTORC2 selectivity, not a host-tissue hormetic response @Sarbassov2006rapamycin @Lamming2012rapamycin), corticosteroids (physiological replacement at 5--10 mg prednisone modulates immunity; higher doses suppress HPA axis → rebound crash on taper).

*Pharmacokinetic / BBB penetration effects:* DORAs (partial orexin blockade at low dose improves sleep; complete blockade at higher dose causes sleep paralysis/daytime hypersomnia), H1 antihistamines (peripheral H1 at 5--10 mg cetirizine relieves MCAS; CNS H1 penetration above 20 mg → sedation — a concentration-gradient phenomenon, not a biphasic receptor-level mechanism).

*Biphasic neurotransmitter concentration-response:* allopregnanolone (GABA-A PAM — low concentrations 1--5 nM paradoxically increase anxiety; higher concentrations >10 nM produce anxiolysis @Andreen2009allopregnanoloneBiphasic), NAC (paradoxical worsening at 600 mg that resolves at 1,200 mg — thiol-radical burst exhausts GSH at low dose; high dose shunts toward net GSH synthesis), ketotifen (MCAS benefit at low dose; sedation above H1 threshold — similar to H1 antihistamine BBB penetration phenomenon), quercetin (COMT inhibition → catecholamine inverted-U optimum for cognition), taVNS (hypothesized non-monotonic dose-response — standard parameters may overshoot into vagal overload; low-intensity input remains within functional range).

*Time-dependent hormesis — the temporal dimension of the dose-response window (certainty: 0.30):* The preceding framework describes dose-response as a function of concentration. But the Calabrese corpus further demonstrates that hormetic features are time-dependent — stimulatory and inhibitory effects integrate across dose AND time simultaneously, producing a 3D response surface rather than a 2D curve @Sun2018SeesawHormesis. Many hormetic responses are transient: they appear at one exposure duration and disappear with continued exposure @Mushak2016TemporalHormesis. The therapeutic window is a volume (dose × time × response), not a plane, and failing to account for time collapses it into a potentially misleading 2D projection. This has direct clinical implications for ME/CFS: if the hormetic window is time-dependent, then continuous daily dosing may extinguish it — not because the dose is wrong, but because the resensitization interval that the pathway requires has been filled. Pulsed or intermittent dosing would preserve the window by allowing stress-signal recovery and receptor resensitization during the drug-free interval.

*The GPCR resensitization clock:* G protein-coupled receptors require a coordinated cycle of activation → desensitization → resensitization. Desensitized GPCRs internalize, undergo dephosphorylation in endosomes, and recycle to the membrane in a reactivated state — a process that requires a drug-free interval whose length is receptor-specific @CostaNeto2025GPCRTachyphylaxis @Gupta2018GPCRResensitization @Kliewer2017GPCRDephosph. Continuous receptor occupancy fills this interval, preventing the resensitization that would otherwise occur. The dephosphorylation half-life of a given receptor sets the minimum off-period for preservation of drug sensitivity. This principle is distinct from receptor-isoform selectivity (Category 4 in the mechanistic clustering below): it operates on the same receptor through temporal kinetics rather than on different receptor complexes through concentration kinetics. Rapamycin provides the cleanest proof of concept: intermittent dosing (e.g., every 5 days in mice) preserves mTORC1 inhibition benefits while sparing mTORC2-mediated adverse effects — the therapeutic and adverse targets have different temporal sensitivities to the same drug molecule @ArriolaApelo2016RapamycinIntermittent @Konopka2023RapamycinTherapeutic. This principle — differential drug-target recovery kinetics — generalizes to any drug whose therapeutic and adverse targets resensitize at different rates.

*ME/CFS-specific vulnerability to tachyphylaxis:* Oxidative stress amplifies receptor tachyphylaxis through ROS-mediated receptor oxidation @Teyani2024Beta2Tachyphylaxis. Since ME/CFS is characterized by oxidative stress across multiple studies, the disease state that most requires sustained pharmacology is the one in which receptor tachyphylaxis is most likely. This creates a clinical paradox: patients with the highest allostatic load may be the fastest to lose benefit from continuous dosing and the most in need of pulsed strategies that preserve therapeutic windows. The withdrawal risk counterpart — some drugs with tachyphylaxis also produce withdrawal or rebound when paused @Hodding1980DrugWithdrawal — constrains this framework: rapid pulsing (short off-periods) may work for drugs with fast resensitization kinetics and low withdrawal liability, while gradual tapering is required for drugs with slow resensitization and high withdrawal risk. A clinical precedent exists in dermatology: psoriasis management has adopted proactive pulse therapy — treating intermittently after clearance to maintain effect while avoiding cumulative corticosteroid exposure @Papp2021ProactivePsoriasis. The medical community already accepts pulse therapy when the risk-benefit calculus shifts in a chronic inflammatory condition. Which strategy applies to which drug is a drug-specific empirical question — not a general principle — and the framework proposed here is a classification scaffold, not a dosing algorithm.

#speculation[
  *Consequence:* The time-dependent dimension of hormesis reclassifies dosing schedules as a mechanistic variable, not just a convenience. If the hormetic window is transient, then continuous daily dosing of Nrf2-activating drugs (sulforaphane, NAC, melatonin) may be self-defeating — the benefit extinguishes not because the drug stopped working but because the resensitization interval was filled. This would make intermittent dosing strategies (e.g., every other day, two days on / one day off) a testable intervention for drugs already in clinical use. Equally important: this framework provides a formal rationale for why LDN's overnight dosing schedule — a de facto pulsed regimen with a 4–6 hour blockade window followed by daytime washout — is mechanistically appropriate, not just a convenience convention. Certainty: 0.30 — time-dependent hormesis is well-established in the Calabrese corpus and GPCR resensitization kinetics are conserved across receptor families, but no pulsed-vs-continuous dosing trial has been conducted for any drug in ME/CFS. (Translation gap: all evidence is from in vitro systems, animal models, and general-population pharmacology — no ME/CFS-specific data exist.)
] <spec:time-dependent-hormesis-pulsed>

*Tachyphylaxis risk classification — a 2×2 decision matrix for the 17-drug framework (certainty: 0.20):* Each drug in the hormesis framework can be classified on two axes: (a) does its therapeutic mechanism depend on transient receptor perturbation that requires resensitization? (b) does it have significant withdrawal/rebound risk? Drugs scoring high on (a) and low on (b) are candidates for pulsed dosing; drugs low on (a) are indifferent to timing; drugs high on (b) should NOT be pulsed regardless of (a) because withdrawal risk outweighs any resensitization benefit. Projected classification: {(a) high, (b) low} — sulforaphane, NAC, melatonin (Nrf2 activators, low withdrawal), modafinil, guanfacine (catecholamine cluster, low withdrawal); {(a) high, (b) high} — LDN (GPCR target through opioid/TLR4 but withdrawal risk from endorphin dependence cessation), beta-blockers (tachycardia rebound); {(a) low, (b) low} — LDA (partial-agonist inverted-U is receptor-occupancy-dependent, not time-dependent), allopregnanolone (biphasic concentration-response, not tachyphylaxis); {(a) low, (b) high} — corticosteroids (HPA suppression, high withdrawal risk), gabapentinoids (dependence, high withdrawal). This classification is a first-principles scaffold — no empirical validation exists. The resensitization half-lives for the relevant receptors (TLR4, DAT, NET, β1, α2A, D2, μ-opioid) have not been measured in ME/CFS patients. The classification may be wrong for any specific drug — it is a hypothesis-generating framework, not a clinical algorithm. Origin: brainstorm — /integrate-topic pulsed-therapy.

#limitation[
  *Continuous dosing may be necessary for some mechanisms.* The pulsed-therapy framework assumes resensitization intervals are beneficial, but for opioid compensatory upregulation (LDN's primary mechanism at 1.5–3.0 mg), therapeutic effect depends on sustained receptor blockade followed by circadian compensatory rebound. If the pulsed interval is too short, the compensatory response never develops; if it's too long, the blockade never accumulates enough to trigger compensation. The 24-hour overnight dosing cycle may be the ONLY interval that works for this mechanism class because it matches the circadian rhythm of opioid receptor expression. For TRPM3-dependent LDN benefit (3.0–4.5 mg), sustained receptor modulation may also be required — a drug holiday could extinguish the TRPM3 restoration signal. The pulsing framework is drug-specific and mechanism-specific, not universal. Certainty: 0.30 — the circadian dependence of endorphin compensation is plausible but untested. Origin: brainstorm — /integrate-topic pulsed-therapy.
]

#limitation[
  *Tachyphylaxis may be misattributed to disease fluctuation.* ME/CFS is a fluctuating illness with spontaneous remissions and relapses. A patient who reports "the drug stopped working" may simply be in a natural disease trough — symptoms would have worsened regardless of dosing schedule. Attributing all loss of benefit to tachyphylaxis overestimates the framework's scope. A substantial fraction of "stopped working" reports are disease fluctuation misattributed to pharmacology. The drug holiday restore-test (protocol @prot:drug-holiday-restore-test) distinguishes the two mechanisms: benefit restoration after a holiday confirms tachyphylaxis; no change confirms disease fluctuation. But the test itself has not been validated, and a single negative test does not definitively rule out adaptive desensitization — the off-period may have been too short. Certainty: 0.40 — general confound in all chronic illness pharmacology, not specific to ME/CFS. Origin: brainstorm — /integrate-topic pulsed-therapy.
]

#open-question[
  *If pulsed dosing is irrelevant — what would need revision.* The null hypothesis: time-dependent dosing has zero effect on therapeutic outcomes for any drug in the 17-drug framework, and all observed loss of benefit is dose-dependent only. If null is true: ch15's time-dependent hormesis paragraph is an overstatement to be removed; the ch33 cascade on pulsed dosing should be reduced or removed; ch32's GPCR resensitization rationale for LDN overnight dosing should be downgraded to "empirical convention — mechanism rationale unconfirmed." A pulsed-vs-continuous RCT of any Nrf2 activator showing zero difference in maintenance of benefit at 12 weeks (n≥60, correct pulsing interval) would provide evidence toward the null. A single null trial would not disprove the framework, but ≥3 null trials across mechanistically distinct drugs with receptor-appropriate intervals would. Consequence: if null is true, a substantial section of the pulsed-therapy content would need removal. This would be a positive outcome for the paper's epistemic integrity — it would demonstrate willingness to correct overstatement.
  Certainty: n/a — null hypothesis assessment.
]

*Falsifiable prediction:* If hormetic reserve is a general systems property of ME/CFS physiology (not merely a collection of drug-specific artifacts), patients with a narrow window for one drug should show narrow windows for at least one other mechanistically distinct drug in a within-patient crossover — the inversion-point positions should correlate across drugs targeting different systems. The registry entry spec:hormesis-multi-drug-principle defines the falsification boundaries for 6-drug HIP-B testing: mean pairwise r ≥ 0.4 to confirm cross-system hormetic reserve; mean r < 0.2 to falsify; 0.2 ≤ r < 0.4 is an indeterminate zone requiring larger sample sizes or additional drugs to resolve. The orthogonal-mechanism correlation test par excellence is LDN × modafinil: these drugs operate through completely distinct receptors (TLR4 vs DAT/NET), cell types (microglia vs presynaptic catecholamine terminals), and anatomical targets. If LDN and modafinil inversion points correlate (r ≥ 0.4 with n ≥ 80 — under n=20 the 95% CI on r covers both 0.2 and 0.4, preventing decisive classification), hormetic reserve is a genuine cross-system trait. Which direction a patient falls (hypercompensation vs. blunting) depends on baseline activation state and individual genetic variation in Nrf2, TLR4, opioid receptor genes, COMT, CYP2D6, and other pharmacogenetic factors. @Calabrese2023NO

*Mechanistic clustering of non-monotonic dose-response drugs (certainty: 0.25):* The drugs group into at least five mechanistic categories. If inversion-point positions correlate within categories (r ≥ 0.4 for LDN ↔ sulforaphane, duloxetine ↔ modafinil) but not across categories (r < 0.2 for LDN ↔ modafinil), hormetic reserve is a multi-component trait with dissociable subsystems. (1) *Nrf2 cluster* (LDN, low-dose lithium, melatonin, sulforaphane, NAC, quercetin) — drugs converging on Keap1-Nrf2-ARE signaling and GSK-3β-mediated Nrf2 nuclear exclusion. (2) *Catecholamine cluster* (duloxetine, modafinil, beta-blockers, guanfacine, gabapentinoids) — drugs whose inverted-U converges on prefrontal D1/α2A receptor dynamic range and catecholamine tone. (3) *D2 partial-agonist cluster* (aripiprazole/LDA) — inverted-U driven by occupancy-dependent net effect: partial agonism dominates at low occupancy (therapeutic at 0.2–2 mg in dopamine-deficient systems), antagonist property dominates above ~50% occupancy (worsening). This is a receptor-occupancy phenomenon distinct from Nrf2 hormesis and PFC catecholamine inverted-U — the curve is identical in any population with dopamine deficit, not ME/CFS-specific. Whether aripiprazole's inversion point correlates with the catecholamine cluster (common dopamine substrate) or is fully independent is the empirical question its single-member status poses. (4) *mTOR/autophagy cluster* (rapamycin) — mTORC1/mTORC2 dose selectivity. Lithium spans Nrf2 and mTOR (via GSK-3β → both Nrf2 nuclear localization and TSC2 → mTORC1) and is designated a "bridge" drug (r ~0.2–0.4 with both clusters). Corticosteroids span mTOR (via FKBP5) and GABAergic (via receptor subunit modulation) — similarly a bridge drug. (5) *GABAergic/neurosteroid cluster* (allopregnanolone, DORAs) — drugs converging on GABA-A subunit composition, neurosteroid sensitivity, and orexin/GABAergic sleep circuitry. Ketotifen and taVNS are unclassified — their non-monotonic patterns derive from BBB penetration and autonomic overshoot respectively, not from the five mechanistic categories above. *Conditional on the clustering being confirmed — no clinical decisions should be based on unvalidated clusters at the present certainty (0.25):* A patient classified as "Nrf2-compromised" (narrow LDN+sulforaphane windows, normal duloxetine+modafinil windows) would be expected to benefit from Nrf2-targeting drugs more than catecholamine-targeting drugs. A patient classified as "Global-compromised" (narrow windows across categories) would suggest fragile stress-response physiology requiring ultra-low, ultra-slow single-drug sequential testing — polypharmacy would risk paradoxical response at uncharacterized inversion points.

*Research questions:* Distinguishing which mechanisms are primary drivers vs. secondary consequences remains challenging. Longitudinal studies tracking biomarker trajectories from acute onset are needed. The hormetic dose-response hypothesis is entirely theoretical in ME/CFS — no prospective dose-response trial has tested the inverted-U prediction for any drug in this population. A within-range LDN dose-response trial (0.5, 1.5, 3.0, 4.5 mg) would simultaneously test the hormesis framework and establish the single most clinically relevant data point for the most widely prescribed off-label medication in ME/CFS. The HIP-B trial (Hormetic Inversion-Point Battery: 6 drugs — LDN, sulforaphane, duloxetine, modafinil, rapamycin, allopregnanolone — each at 4 within-range doses in within-patient crossover, designed as a Phase 0 pilot for effect-size estimation with n ≥ 80 needed for definitive testing; with n=20 the 95% CI on r spans approximately −0.05 to 0.71, preventing decisive classification for most outcomes) would estimate the cross-drug correlation signal needed to determine whether hormetic reserve is a single trait, a multi-component trait, or an artifact of drug-specific pharmacology. The complete trial specification is maintained in the hypothesis registry (entry spec:hormetic-inversion-point-battery-hip-b) and this chapter — see @ch:research-methods-mecfs for discussion of methodological challenges specific to dose-response trials in ME/CFS populations.

#synthesis(title: [Time-Dependent Dosing — The Missing Temporal Axis in the Hormesis Framework])[
Four converging lines of evidence — time-dependent hormesis @Sun2018SeesawHormesis @Mushak2016TemporalHormesis @Calabrese2016PreconditioningHormesis, GPCR resensitization kinetics @CostaNeto2025GPCRTachyphylaxis @Gupta2018GPCRResensitization @Kliewer2017GPCRDephosph, intermittent rapamycin dosing as proof of concept @ArriolaApelo2016RapamycinIntermittent, and a clinical precedent in psoriasis pulse therapy @Papp2021ProactivePsoriasis — collectively argue that the therapeutic window is a 3D volume (dose × time × response), not the 2D curve the existing hormesis framework describes. Continuous daily dosing of drugs whose therapeutic mechanism depends on transient receptor perturbation (Nrf2 activators, GPCR-targeting drugs) fills the resensitization interval, converting a reversible adaptive desensitization into apparent drug failure. The framework provides a molecular rationale for existing clinical practice — LDN's overnight blockade window and rapamycin's intermittent weekly dosing are de facto pulsed regimens with mechanistic justification — and a zero-cost clinical tool: the drug holiday restore-test (@prot:drug-holiday-restore-test) distinguishes adaptive desensitization from true tolerance. The strongest constraint is the withdrawal risk counterpart @Hodding1980DrugWithdrawal: drugs with high withdrawal liability (corticosteroids, gabapentinoids) should NOT be pulsed regardless of resensitization kinetics. The most important open question is whether oxidative stress accelerates tachyphylaxis in ME/CFS specifically @Teyani2024Beta2Tachyphylaxis — if so, the disease state that most needs sustained pharmacology is the one in which receptor desensitization is fastest. All evidence is preclinical or general-population: no pulsed-vs-continuous dosing trial has been conducted for any drug in ME/CFS.

*Consequence:* Time-dependent dosing is not a dosing convenience — it is a mechanistic variable at the same level of importance as dose selection. For every drug in the 17-drug hormesis framework, the clinical question is now "what dose AND at what interval?" rather than "what dose?" alone. A drug holiday restore-test costs nothing, requires no lab, and could prevent years of taking a medication that stopped working months ago simply because the resensitization interval was never provided.
] <syn:pulsed-therapy-model>

=== The Unified Post-Infectious Model: Impaired Physiological Resilience
<sec:unified-post-infectious-model>

Watton and Prusty @Watton2026unified have proposed a comprehensive reframing of ME/CFS as a disorder of impaired physiological resilience within post-infectious disease biology. This unified model integrates findings across immunological, vascular, metabolic, and virological domains into a single overarching framework centered on loss of adaptive capacity.

#include "sec-01-misc/subsec-01-the-unified-post-infectious-model-impair/achievements/ach-unified-mechanistic-model-of-me-cfs.typ"

#include "sec-01-misc/subsec-01-the-unified-post-infectious-model-impair/open-questions/oq-mechanistic-convergence-vs-divergence-ac.typ"

=== The Historical Arc: From Post-Infectious Framing to Biological Re-Framing
<sec:historical-arc>

The Watton--Prusty review @Watton2026unified provides a historical analysis contextualising current biological models within the broader evolution of ME/CFS understanding. This review synthesis should be read alongside primary historical sources and the responses of researchers whose work is critiqued. (Certainty: 0.45 — a review synthesis, not original historical research)

*Early post-infectious framing.* Descriptions of illness consistent with ME date to mid-20th-century epidemic outbreaks, most notably the Royal Free Hospital outbreak in London (1955). These accounts documented prolonged post-infectious disability with neurological and autonomic features, establishing an initial biomedical framing. The outbreak affected 292 staff members over several months and was investigated by multiple clinicians who concluded it represented an organic encephalomyelitis. However, in 1970, McEvedy and Beard retrospectively reclassified the Royal Free and other outbreaks as "mass psychogenic illness" — a records review, not an epidemiological investigation. This reclassification has itself been contested: physicians involved in the outbreak disputed the psychogenic interpretation, and a 2020 re-examination (Parsons, *Medical Humanities*) argued the psychogenic diagnosis reflected gendered assumptions about women's health rather than dispassionate analysis. Nevertheless, the reclassification introduced an enduring scepticism that influenced subsequent research priorities and funding allocations. The episode illustrates how explanatory frameworks, once established in the absence of definitive laboratory tests, can persist beyond the evidence that originally supported them — a pattern relevant to both the psychogenic and the biological framings of ME/CFS. @Watton2026unified

*The strongest case for the biopsychosocial model.* Engel's biopsychosocial (BPS) model, properly understood, was conceived as an *extension* of biomedical reasoning — not a replacement. It proposed that health and disease arise from interactions between biological, psychological, and social factors, with biological processes remaining a central component. Applied to ME/CFS, the strongest form of the BPS argument holds: (a) all chronic illnesses, not just ME/CFS, involve interaction between biological pathology and psychological/social adaptation — the question is one of weighting, not category; (b) in the absence of validated biomarkers, a model incorporating reversible perpetuating factors (deconditioning, activity avoidance, illness beliefs) is a reasonable clinical framework rather than an ideological position — it provides clinicians with actionable treatment targets while biological research continues; (c) the original PACE protocol included therapist-guided, patient-negotiated activity targets with explicit instructions not to push beyond tolerated limits, which is more nuanced than simple "graded exercise"; (d) pre-PACE trials (Fulcher and White 1997; Powell et al. 2001) showed benefit on both subjective and some objective measures, and these findings deserve engagement rather than omission; and (e) the 2021 Cochrane review of exercise therapy for CFS (Larun et al.) concluded that exercise therapy probably reduces fatigue — a finding consistent with, not contradicted by, the PACE data, and one that must be weighed against the patient survey evidence of harm for a complete picture. @Watton2026unified

*The PACE trial: evidence, critique, and contested interpretation.* The PACE trial (2011, $n = 641$) tested CBT and graded exercise therapy (GET) against specialist medical care and adaptive pacing therapy for CFS/ME, reporting that CBT and GET were "moderately effective." The trial has since become one of the most heavily scrutinised studies in modern medicine. Subsequent critiques by patients, independent researchers, and investigative journalists identified: outcome switching (post-hoc relaxation of recovery thresholds such that a participant could deteriorate on two primary outcomes and still be classified as "recovered"), reliance on subjective outcomes in an unblinded trial (participants knew which treatment they received), and claims of recovery that were inconsistent with objective measures (the 6-minute walk test showed no clinically significant between-group difference at final follow-up). Freedom of Information tribunal rulings compelled data release; independent reanalyses of the trial data (by Alem Matthees, and by Wilshire et al.) demonstrated that the originally reported treatment effects were substantially attenuated or eliminated when the protocol-specified outcomes and thresholds were used. These critiques led to the 2021 revision of UK NICE guidance, which removed GET as a recommended treatment and reframed CBT as supportive rather than curative. @Watton2026unified

*Counterpoints that must be weighed.* The PACE investigators maintain that: (a) the primary outcomes specified in the published protocol differed from those in the earlier trial registration, but both were published and available for comparison; (b) unblinding is inherent to any behavioural intervention trial and affects all such studies — singling out PACE applies a standard not consistently applied to other unblinded ME/CFS research; (c) self-report outcomes are the standard primary endpoints in most ME/CFS and chronic pain trials, including many studies cited favourably elsewhere in this paper — the epistemological problem of unblinding is universal in behavioural research, not unique to PACE; and (d) the 2021 NICE committee was subject to significant lobbying and parliamentary pressure from patient advocacy groups, raising the question of whether the reversal reflected pure evidential reassessment or also political dynamics — the same question the paper asks of PACE's original adoption, and one that should be symmetrically applied. Other national guidelines (Australian, Dutch) retained graded exercise recommendations after 2021. The NICE reversal is not the universal consensus the term "reversal" implies. @Watton2026unified

*The broader lesson — symmetrically stated.* ME/CFS illustrates two symmetrical risks in clinical reasoning: the risk of prematurely adopting explanatory models because they are convenient, scalable, or professionally reassuring (applicable to the BPS-as-applied, just as the BPS model might argue that premature adoption of unreplicated biological models carries the same risk), and the risk of dismissing treatment approaches before their evidence is fully and fairly evaluated. The availability of an explanation, whether psychosocial or biological, should not be conflated with its validity. In conditions of uncertainty, explanatory frameworks should remain continuously accountable to evolving evidence, with the same standards of scrutiny applied regardless of whether the framework supports or challenges the reader's prior beliefs. @Watton2026unified

*From chronic underfunding to mechanistic investigation.* The longstanding absence of definitive biomarkers or targeted therapies reflects, in part, a persistent mismatch between disease burden and biomedical investment. For decades, ME/CFS research lacked the funding to support large, well-phenotyped cohorts or to test systems-level hypotheses. The emergence of Long-COVID changed this: within months, unprecedented funding, infrastructure, and interdisciplinary efforts were mobilised, enabling more detailed investigation of biological processes relevant to ME/CFS. This investment demonstrated that post-infectious biological signals are detectable when studied at adequate scale — a finding that does not, on its own, resolve whether prior null results reflected insufficient methodology, genuine biological heterogeneity, or both. The Long-COVID experience suggests that increased investment in ME/CFS research is warranted, but the specific claims of the unified model must be judged on their own evidence, not on the funding differential. @Watton2026unified

*Additional historical context and limitations.* This historical analysis is a review synthesis, not original historical research. The PACE trial's original investigators maintain that methodological criticisms are overstated, and their published responses deserve engagement alongside the critiques. The McEvedy and Beard reclassification of the Royal Free outbreak has itself been challenged on methodological and sociological grounds. Engel's original BPS framework was developed to counter biomedical reductionism, and some ME/CFS researchers have argued that the paper's own multi-system model is broadly compatible with BPS principles, differing primarily in the weighting assigned to biological versus psychological factors. Readers should weigh the full record — trial protocols, reanalyses, investigator responses, independent critiques, and the 2021 NICE revision — when forming conclusions about this period of ME/CFS history. A steelman of any position is a prerequisite for a durable critique.

=== Neuroimmune Classification Framework
<sec:neuroimmune-classification>

#include "sec-01-misc/subsec-03-neuroimmune-classification-framework/achievements/ach-pots-me-cfs-and-long-covid-converge-on-s.typ"

#include "sec-01-misc/subsec-03-neuroimmune-classification-framework/hypotheses/hyp-gpcr-autoantibodies-as-a-shared-transdia.typ"

{{/* H4: GPCR AAb → mast cell sensitization loop (Tier 2, cert 0.35) */}}
#include "sec-01-misc/subsec-03-neuroimmune-classification-framework/speculations/spec-gpcr-autoantibody-mediated-mast-cell-sen.typ"

{{/* H6: CAP-autoantibody blockade (Tier 1, cert 0.40) */}}
#include "sec-01-misc/subsec-03-neuroimmune-classification-framework/speculations/spec-cholinergic-anti-inflammatory-pathway-bl.typ"

{{/* H7: Structural vagal cholinergic denervation → CAP disruption (cert 0.35; cross-disease extrapolation from Acanfora/Woo/Lladós Long COVID; vagal-gastric-denervation-longcovid stream) */}}
#include "sec-01-misc/subsec-03-neuroimmune-classification-framework/hypotheses/hyp-structural-vagal-denervation-cap.typ"

{{/* Critical categories 10-12: three threats to the structural model (vagal-enteric ambiguity, deconditioning, winner's curse) */}}
#include "sec-01-misc/subsec-03-neuroimmune-classification-framework/hypotheses/lim-vagal-enteric-deconditioning.typ"

{{/* Phase 10a synthesis: vagal structural-functional axis (condenses ach/hyp/spec/lim/oq across ch08/ch10/ch13) */}}
#include "sec-01-misc/subsec-03-neuroimmune-classification-framework/hypotheses/syn-vagal-structural-functional-axis.typ"

== Research Questions and Future Directions
<sec:questions>

Key unanswered questions in ME/CFS pathophysiology:

1. What is the temporal sequence of system failures? Do metabolic, immune, and autonomic abnormalities appear simultaneously or sequentially?
2. Which vicious cycles are primary drivers vs. secondary consequences?
3. How do pathophysiological mechanisms differ between severity levels and disease subtypes?
4. What biomarkers predict treatment response to specific interventions?
5. Can early intervention prevent transition from acute to chronic ME/CFS?

These questions frame research priorities for the coming decade.

=== Achievement: Seven-Biomarker Systems Panel
<ach:systems-biomarkers>

The identification of a seven-biomarker panel (AMP, cDC1, LYVE1, IGHG2, FN1, VWF, THBS1) that achieves 91% diagnostic accuracy represents a major achievement in ME/CFS research. This panel demonstrates that ME/CFS is a multi-system disease with coordinated abnormalities across metabolic, immune, and vascular domains.

*Significance:* This biomarker panel provides first objective diagnostic test with high specificity, enabling earlier diagnosis and treatment initiation. The multi-system nature of the panel validates integrative models developed in this chapter and suggests that effective treatments will need to address multiple systems simultaneously.

== Additional Integrative Topics

=== Carotid Body Dysfunction in ME/CFS
<sec:carotid-body-mecfs>

Carotid body chemoreceptor dysfunction may contribute to autonomic abnormalities and exercise intolerance in ME/CFS. Preliminary evidence suggests altered chemosensitivity to hypoxia and hypercapnia, potentially explaining abnormal ventilatory responses and dysregulated autonomic tone.

*Evidence:* Studies reporting abnormal ventilatory responses to exercise in ME/CFS may reflect carotid body chemoreceptor dysfunction. Peripheral chemoreceptor hypersensitivity could contribute to sympathetic overactivation and POTS.

*Research need:* Direct measurement of carotid body activity in ME/CFS patients vs. controls during rest and exercise.

=== Integrated Microglia Theory (IMT) in ME/CFS
<sec:imt-mecfs>

The Integrated Microglia Theory proposes that microglial priming and dysfunction underlies multiple ME/CFS symptoms. Activated microglia release pro-inflammatory cytokines, impair glymphatic clearance, and disrupt neurotransmitter balance.

*Evidence:* TSPO PET imaging shows microglial activation in ME/CFS. This activation may explain central fatigue, cognitive impairment, and sleep disruption through multiple pathways.

*Therapeutic implication:* Microglial modulators (LDN, minocycline) and interventions promoting glymphatic clearance may be particularly relevant.

=== Novel Frameworks for ME/CFS Pathophysiology
<sec:novel-frameworks>

Recent research has proposed several novel frameworks:

*Trained immunity:* Innate immune cells may retain epigenetic memory of initial infection, maintaining pro-inflammatory state long after pathogen clearance.

*Metabolic memory:* Epigenetic changes in mitochondrial and metabolic genes may perpetuate energy production impairment independent of ongoing triggers.

*Viral integration:* Persistent viral elements (endogenous retroviruses, EBV episomes) may maintain immune activation through low-level antigen expression.

=== Wheat-Primed Exercise Intolerance
<sec:wheat-primed-exercise>

The wheat-primed exercise hypothesis proposes that gliadin-mediated intestinal barrier dysfunction creates vulnerability to exercise-induced ischemia and endotoxemia. Wheat exposure compromises tight junctions; exercise then triggers increased intestinal permeability and bacterial translocation, amplifying PEM.

*Mechanism:* Gliadin increases zonulin and intestinal permeability. Exercise in this compromised state allows bacterial products (LPS) to enter circulation more readily, triggering systemic inflammation and severe PEM.

*Clinical implication:* Wheat elimination may reduce PEM severity in susceptible patients, particularly those with concurrent gastrointestinal symptoms.

=== Butyrate-Microbiome Combination Therapy
<sec:tributyrin-biome-combo>

Combined butyrate supplementation with microbiome-targeted interventions may enhance efficacy through synergistic mechanisms. Butyrate provides anti-inflammatory and gut barrier support, while microbiome modulation increases endogenous butyrate production and microbial diversity.

*Evidence:* Butyrate reduces inflammation via HDAC inhibition and strengthens tight junctions. Probiotics and prebiotics increase microbial butyrate production. Combining exogenous butyrate with microbiome support may achieve additive benefits.

*Clinical application:* Sodium butyrate 500–750 mg/day plus probiotic supplementation targeting butyrate-producing species.

=== MDC002: Additional Clinical Considerations

The MDC002 hypothesis extends to clinical observations beyond basic mechanism:

*Progressive nature:* The ionic myopathy may worsen over time as sodium handling becomes increasingly dysregulated.
*Treatment resistance:* Patients with established ionic remodeling may be less responsive to standard ME/CFS treatments.
*Biomarker potential:* Serum markers of sodium handling (NHE1 activity) could serve as diagnostic markers.

=== Sigma-1 Fluvoxamine: Extended Mechanisms

The Sigma-1 fluvoxamine approach has additional theoretical benefits:

*Neurosteroid regulation:* S1R modulates neurosteroid synthesis, potentially addressing multiple neurotransmitter imbalances simultaneously.
*Mitochondrial protection:* S1R agonism may directly protect mitochondria from calcium overload and oxidative stress.
*Autonomic stabilization:* S1R effects on autonomic nuclei could reduce POTS and orthostatic symptoms.

== Integrative Speculations

=== Recovery Capital: Finite Biological Reserves
<spec:recovery-capital>

*Certainty: 0.30.* The Recovery Capital model proposes that ME/CFS patients begin with finite biological reserves that deplete over time with crashes and chronic illness. Recovery potential may not be static but represents a continuum that can be objectively measured.

*Mechanistic basis:* Each crash episode and month of illness depletes reserves through multiple pathways: stem cell exhaustion, epigenetic hardening, autoantibody establishment, neural pathway consolidation. Early aggressive intervention—before significant reserve depletion—may have greater efficacy than same interventions applied later.

*Clinical implications:* Pediatric outcomes may partly reflect timing advantage (shorter illness duration before intervention). Front-loading treatment trades methodological clarity for potential preservation of intervention window.

*Testable predictions:*
1. Early-stage patients will show greater treatment response than late-stage patients with similar protocols.
2. Biomarkers of regenerative capacity will decline with illness duration and crash frequency.
3. Aggressive early intervention will preserve recovery potential better than conservative stepwise approaches.

=== Glutamatergic-Autonomic Bridge
<spec:glutamatergic-autonomic-bridge>

*Certainty: 0.35.* DecodeME GWAS identified glutamatergic genes (SHISA6, UNC13C) and neuronal development genes (CA10, DCC) associated with ME/CFS. This suggests a two-hit model: genetically vulnerable glutamatergic circuits are tipped into dysfunction by infection-driven quinolinic acid accumulation.

*Mechanistic basis:* Kynurenine pathway activation produces quinolinic acid, an NMDA agonist. In genetically vulnerable glutamatergic circuits, this creates excitatory/inhibitory imbalance. Simultaneously, disrupted neuronal development impairs autonomic regulatory centers, creating convergence between glutamatergic dysfunction and autonomic dysregulation.

*Therapeutic candidates:* Memantine (NMDA antagonist), riluzole (glutamate release inhibitor), and pregnenolone (S1R agonist with NMDA effects) may address this convergence.

*Testable predictions:*
1. ME/CFS patients will show abnormal glutamate/GABA ratios in CSF.
2. Genetic variants at SHISA6/UNC13C will correlate with symptom severity and autonomic measures.
3. NMDA antagonists will improve both cognitive and autonomic symptoms in genotyped subgroups.

=== Amitriptyline Signal Hypothesis
<spec:amitriptyline-signal>

*Certainty: 0.30.* DecodeME GWAS found r_g = 0.61 between ME/CFS and amitriptyline use, comparable to depression correlation (r_g = 0.60). This may reflect more than confounding: amitriptyline's NMDA antagonism targets same glutamatergic circuits identified at DecodeME genome-wide significant loci.

*Mechanistic basis:* Amitriptyline at low doses (5 mg) acts primarily as NMDA antagonist rather than antidepressant. Low-dose amitriptyline may thus act on genetically-identified neural substrates in ME/CFS, not merely palliate symptoms.

*Clinical implications:* Explains why low-dose amitriptyline shows efficacy in ME/CFS where standard antidepressant doses fail. Suggests precision psychiatry approach: target specific receptor abnormalities rather than treating fatigue generically as depression.

*Testable predictions:*
1. ME/CFS patients with SHISA6/UNC13C variants will respond preferentially to low-dose amitriptyline.
2. Amitriptyline response will correlate with glutamatergic biomarker profiles.
3. NMDA antagonists (memantine) will show similar efficacy patterns.

=== HSC Exhaustion Hypothesis
<spec:hsc-exhaustion>

*Certainty: 0.25.* Repeated inflammatory stress of PEM episodes—each triggering acute immune activation and cytokine release—may deplete hematopoietic stem cell (HSC) reserves over time. Accelerated HSC exhaustion would impair regenerative capacity and contribute to treatment resistance.

*Mechanistic basis:* Each crash represents an acute inflammatory event requiring rapid immune cell production. Chronic repeated activation may accelerate HSC turnover, leading to premature exhaustion. NF-κB activation (documented in ME/CFS immune cells) is a key pathway driving HSC stress.

*Evidence parallels:* HSC exhaustion patterns are documented in chronic infections and inflammatory diseases. ME/CFS patients show evidence of immune exhaustion phenotypes.

*Therapeutic implication:* Interventions reducing crash severity and frequency may preserve HSC function more than any direct HSC-targeted approach. Anti-inflammatory strategies targeting cytokine storms may be protective.

*Testable predictions:*
1. ME/CFS patients will show reduced HSC diversity in bone marrow samples.
2. Crash frequency and severity will correlate with HSC exhaustion markers.
3. Anti-inflammatory prophylaxis during high-risk activities will preserve HSC function.

=== Peptic Ulcer Parallel Hypothesis
<spec:peptic-ulcer-parallel>

*Certainty: 0.30.* Peptic ulcer disease was historically attributed to "stress" until Marshall and Warren identified H. pylori as bacterial cause with simple antibiotic cure. This history provides a template for ME/CFS: a complex syndrome assumed psychosomatic may have a persistent biological "molecular switch" maintaining it.

*ME/CFS candidates for molecular switch:* Three potential mechanisms may maintain ME/CFS independently of original trigger:
1. TRPM3 ion channel dysfunction affecting calcium signaling across immune, neuronal, and metabolic cells.
2. Epigenetic methylation changes at regulatory genes (gain at some loci, loss at others — in cancer via global DNMT3B redistribution; in ME/CFS more targeted, with HSAT2-specific loss-meCpG proposed) that persist after the triggering infection resolves (see the unified vector model, Chapter @ch:causal-hierarchy-formal @oq:consolidation-directionality).

*Clinical implication:* Each candidate predicts a different "eradication therapy": TRPM3-restoring drugs, methylation restoration strategies (methyl-donor support for loss-dominant patients, passive demethylation for gain-dominant patients — direction-dependent, not unidirectional targeting), or mitophagy enhancers. All share peptic ulcer pattern: simple persistent factor maintaining complex disease.

#synthesis(title: [Thermal Autonomic Stress Testing: Convergent Evidence for a Low-Cost At-Home Autonomic Probe])[
Three separate chapters converge on a single testable protocol: a standardised thermal challenge (sauna, cold-water immersion) followed by post-thermal autonomic recovery monitoring as a zero-cost at-home autonomic stress test for ME/CFS. Chapter @ch:cardiovascular (Section @sec:hr-recovery) establishes that post-exercise heart rate recovery is impaired in ME/CFS (HRR ≤34.5 bpm discriminatory @Nelson2021HRVrecoveryMECFS) and proposes that the same parasympathetic recovery deficit should be measurable after thermal stress @spec:hrr-thermal-extension. Chapter @ch:speculative-hypotheses (Section @sec:trpv1-thermal-autonomic-stress-test) provides the molecular bridge: TRPV1-expressing sensory neurons transduce temperature change into sympathetic outflow @Larson2023TRPV1bezoldjarisch, and cold pressor testing already reveals sympathetic overactivity in ME/CFS @DeBecker1998coldpressorCFS — the novel step is measuring *recovery kinetics* rather than acute response magnitude @spec:cold-pressor-recovery-convergence. This chapter (Section @spec:thermal-recovery-pem-threshold) extends the logic to PEM prediction: if post-thermal T90 correlates with daily activity tolerance, a patient could track their PEM threshold daily with a consumer pulse oximeter (~EUR 30) and a standardised thermal exposure — replacing subjective trial-and-error pacing with a biophysical decision aid @Mancini2026CPETrecoveryNull.

The strongest constraint is the evidence vacuum: zero direct human studies of post-thermal autonomic recovery time exist in ME/CFS. Each mechanistic component is supported independently (TRPV1→autonomic, HRR impairment, HRV→PEM correlation in Long COVID) but the combined protocol has never been tested. The weakest link is the ME/CFS-specificity of thermal recovery delay: 81.3% of Long COVID patients report thermoregulatory impairment @Kouyoumdjian2025LCvsMECFSthermoreg, and circadian thermoregulatory decoupling @Williams1996circadianCFS could produce prolonged thermal recovery independent of autonomic dysfunction. The competitive test — time-of-day-controlled thermal challenge — would distinguish autonomic from circadian drivers.

The central unanswered question is whether post-thermal T90 predicts PEM threshold within individual patients (test-retest ICC ≥0.7, correlation with next-day actigraphy r ≥0.4). If validated, the thermal autonomic stress test would give ME/CFS patients an objective, repeatable, medication-free at-home monitoring tool. If refuted (T90 uncorrelated with PEM, or circadian phase explains >50% of variance), the thermal probe degenerates to a research curiosity — mechanistically interesting but clinically useless. The null is null: the thermal challenge reveals nothing the patient does not already know.

*Consequence:* The thermal autonomic stress test is a high-leverage hypothesis precisely because it is cheap to falsify — a single prospective study (n≥40, sauna+wearable HRV+actigraphy, 14 days) could confirm or refute it. If confirmed, it replaces the 3000 CPET with a 30 protocol and transforms pacing from subjective guesswork to biophysically-informed decision-making. If refuted, the paper's TRPV1, autonomic, and thermoregulatory content remain independently valid — the combination hypothesis fails, not the components.
] <syn:trpv1-temperature-autonomic-stress-test-model>

*Research priority:* Identifying which molecular switch is operative in individual patients could enable precision medicine approaches.

=== Diagnostic Mirage Hypothesis
<spec:diagnostic-mirage>

*Certainty: 0.35.* POTS, hEDS, and MCAS may represent phenotypic fragments of a single underlying autonomic vulnerability rather than distinct comorbid conditions. Current diagnostic fragmentation into separate specialties (cardiology, genetics, immunology) may create a "diagnostic mirage" where a single underlying mechanism is mischaracterized as multiple disorders.

*Mechanistic basis:* Genetic and physiological evidence suggests shared autonomic dysregulation underlies these conditions. POTS diagnostic criteria (≥30 bpm HR increase) has poor specificity (10–15% of healthy controls meet it). Comorbidity rates between these conditions in ME/CFS are higher than expected by chance.

*Clinical implication:* Integrated autonomic assessment may identify a single pathophysiology explaining multiple symptom clusters. Treatment targeting shared mechanisms may be more effective than condition-specific approaches.

*Testable predictions:*
1. Patients meeting multiple criteria (POTS + hEDS + MCAS) will share underlying genetic variants.
2. Autonomic function tests will show correlated abnormalities across conditions.
3. Targeted autonomic therapy will improve symptoms across all three conditions simultaneously.

#include "sec-01-misc/subsec-06-diagnostic-mirage-hypothesis/open-questions/oq-genetic-subtypes-in-me-cfs.typ"

=== Speculative Model Extensions and Diagnostic Integration

#include "sec-01-misc/subsec-07-speculative-model-extensions-and-diagnos/speculations/spec-extracellular-vesicle-mediated-cdr-propa.typ"

#include "sec-01-misc/subsec-07-speculative-model-extensions-and-diagnos/speculations/spec-ev-mediated-intercellular-communication-.typ"

#include "sec-01-misc/subsec-07-speculative-model-extensions-and-diagnos/open-questions/oq-state-dependent-cdr-dynamics-with-stress.typ"

#include "sec-01-misc/subsec-07-speculative-model-extensions-and-diagnos/open-questions/oq-pem-hysteresis-loop-quantification.typ"

#include "sec-01-misc/subsec-07-speculative-model-extensions-and-diagnos/speculations/spec-stochastic-cdr-state-transitions-with-in.typ"

#include "sec-01-misc/subsec-07-speculative-model-extensions-and-diagnos/open-questions/oq-multi-modal-biomarker-panel-for-post-inf.typ"

#include "sec-01-misc/subsec-07-speculative-model-extensions-and-diagnos/speculations/spec-lipid-raft-dynamics-coupled-to-mitochond.typ"

#include "sec-01-misc/subsec-07-speculative-model-extensions-and-diagnos/speculations/spec-thermal-recovery-pem-threshold-predictor.typ"

=== Connective Tissue Disorder Parallels and ECM Pathology

The high comorbidity between ME/CFS and hypermobile Ehlers-Danlos syndrome (hEDS) suggests shared pathophysiology involving extracellular matrix (ECM) regulation, hypoxia signaling, and connective tissue mechanics. The following hypotheses explore cross-disease parallels that may inform ME/CFS mechanisms and treatment approaches.

#include "sec-01-misc/subsec-08-connective-tissue-disorder-parallels-and/hypotheses/hyp-hif-1alpha-mitochondrial-ecm-self-reinfo.typ"

#include "sec-01-misc/subsec-08-connective-tissue-disorder-parallels-and/speculations/spec-systemic-tendinopathy-as-distinct-me-cfs.typ"

#include "sec-01-misc/subsec-08-connective-tissue-disorder-parallels-and/speculations/spec-tendinopathy-as-me-cfs-model-hif-1alpha-.typ"

#include "sec-01-misc/subsec-08-connective-tissue-disorder-parallels-and/speculations/spec-diabetic-microangiopathy-and-me-cfs-base.typ"

#include "sec-01-misc/subsec-08-connective-tissue-disorder-parallels-and/speculations/spec-marfan-syndrome-mechanical-failure-model.typ"

#include "sec-01-misc/subsec-08-connective-tissue-disorder-parallels-and/speculations/spec-scleroderma-me-cfs-tissue-specific-ecm-d.typ"

#include "sec-01-misc/subsec-08-connective-tissue-disorder-parallels-and/speculations/spec-alzheimer-disease-mmp-mediated-ecm-degra.typ"

=== Peripheral Serotonin Depletion: Multi-Compartment Dysregulation

Peripheral serotonin depletion — driven by IDO-mediated tryptophan diversion, enterochromaffin cell damage, and platelet storage defects — has been reported in ME/CFS (a single n=38 study) and more robustly in Long COVID, POTS, and fibromyalgia. Because peripheral serotonin is associated with mitochondrial function, vagal tone, vascular stability, gut motility, and immune modulation, its depletion has been proposed as a candidate multi-system convergence point that would cut across individual organ-system boundaries — though for several of these links (notably the mitochondrial one) the direction of causality is unestablished. The following hypothesis formalises this proposed mechanism and the open question that immediately follows assesses the null hypothesis.

#include "sec-01-misc/subsec-09-peripheral-serotonin-multi-compartment/hypotheses/hyp-peripheral-serotonin-multi-compartment-convergence.typ"

#include "sec-01-misc/subsec-09-peripheral-serotonin-multi-compartment/open-questions/oq-peripheral-serotonin-null-hypothesis.typ"

#synthesis(title: [Peripheral Serotonin Depletion: Convergent Evidence, Convergent Caution])[
The preceding environments collectively argue that peripheral serotonin depletion — documented across ME/CFS, Long COVID, POTS, and fibromyalgia — is a partial common pathway linking gut dysbiosis, immune activation, autonomic dysfunction, mitochondrial impairment, and pain amplification. The strongest constraint is the absence of interventional data: no trial has tested whether serotonin restoration improves ME/CFS outcomes. The cross-disease convergence (@spec:cross-disease-serotonin-convergence, cert 0.50) provides clinical context — 81% of POTS patients have platelet serotonin deficiency, and an RCT showed SSRIs worsen POTS hemodynamics — but this is POTS data, not ME/CFS. The multi-system mechanism (@hyp:peripheral-serotonin-convergence, cert 0.50) is biologically plausible and consistent with the established IDO/kynurenine pathway diversion, but dietary tryptophan intake (the dominant determinant of peripheral serotonin) has not been controlled in any study. The null hypothesis assessment (@oq:serotonin-null-hypothesis) identifies multiple ways the signal could be artifactual or epiphenomenal, including a structural parallel to the failed serotonin hypothesis of depression. The central unanswered question is whether platelet serotonin measurement in a large, well-controlled ME/CFS cohort would confirm depletion independently of diet, inflammation, and medication confounds — and whether serotonin restoration improves outcomes. Until that study is done, the hypothesis is mechanistically attractive but clinically unvalidated.

*Clinical note:* The SSRI caution discussed across these environments applies only to ME/CFS patients with confirmed POTS comorbidity. For ME/CFS patients without POTS, SSRIs remain indicated for comorbid depression per standard psychiatric guidelines — untreated depression worsens ME/CFS outcomes. For patients with POTS comorbidity who require antidepressant therapy, non-serotonergic alternatives (bupropion, SNRIs with orthostatic monitoring) may be considered. The serotonin-restoring interventions mentioned are research hypotheses only — no dosing, safety, or efficacy data exist in ME/CFS. 5-HTP carries a risk of serotonin syndrome when combined with SSRIs or MAOIs and must never be used without medical supervision.

*Consequence:* Peripheral serotonin depletion is a promising mechanistic model that connects gut, immune, autonomic, and energy systems in a way few other hypotheses do — but promising mechanism does not equal proven treatment. Patients and clinicians should understand this as a research framework, not a basis for self-treatment. The most important action now is a properly controlled measurement study, not a treatment trial.
] <syn:peripheral-serotonin-depletion-model>

== Inflammation Source Interaction Network: Extended Causal DAG
<sec:inflammation-source-dag>

#include "sec-08-inflammation-source-interaction-network-/speculations/spec-inflammation-source-interaction-network-.typ"

#include "sec-08-inflammation-source-interaction-network-/speculations/spec-resolution-failure-as-a-candidate-chroni.typ"

{{/* Structural vagal damage as distinct DAG node (V_str); brainstorm 7.1/7.2/7.3/7.5; vagal-gastric-denervation-longcovid stream */}}
#include "sec-08-inflammation-source-interaction-network-/speculations/spec-vstr-structural-vagal-dag-node.typ"
