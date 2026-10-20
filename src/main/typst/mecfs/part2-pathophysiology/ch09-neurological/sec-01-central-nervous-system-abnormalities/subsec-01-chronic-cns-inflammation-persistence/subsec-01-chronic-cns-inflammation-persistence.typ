#import "../../../../shared/environments.typ": *

=== Chronic CNS Inflammation: Persistence, Compartmentalisation, and the Limits of Measurement
<sec:chronic-cns-inflammation>

The preceding sections describe *that* neuroinflammatory signalling occurs in ME/CFS
and what it may do downstream. A separate question is *how long it lasts and where it
lives*: acute neuroinflammation is self-limiting in most infections, yet the
symptoms it is invoked to explain persist for years. This section separates three
claims that are frequently merged — that CNS inflammation is *chronic*, that it is
*compartmentalised* (present in brain and CSF but not in blood), and that it is
*sub-universal* (a subtype rather than a feature of every patient) — and records
what current evidence does and does not support for each.

Two constraints govern this section. First, *no included study measures the
chronicity axis — persistence over time — in an ME/CFS-defined cohort*: the
strongest human data come from post-COVID cohorts selected by persistent fatigue, not
by ME/CFS criteria, and the chronicity *mechanism* is demonstrated only in animal
models and narrative reviews.
Second, the paper already carries a brainstem-specific senescence model
(Section @sec:brainstem-glial-senescence); this section generalises the chronicity
question and must not be read as a second, independent senescence claim.

#speculation(title: [The Compartmentalised Neuroinflammatory Subtype])[
*Certainty: 0.44 (source 0.47 after the Long COVID population weight, reduced a
further 0.03 for the unquantified subgroup and the absent severity relationship;
speculation-grade, not hypothesis-grade).* A
whole-body second-generation TSPO-PET study ([18F]DPA-714 with arterial input,
$n = 47$ post-COVID; the 33 with persistent complaints were scanned 27 ± 9 months
after infection and the 14 without at 25 ± 10 months) found globally increased
*cerebral* tracer binding in some individuals with persistent fatigue and difficulty
concentrating, while finding *no* group-level differences in extracerebral binding,
and *no* correlation between cerebral and extracerebral binding or between either
and symptom severity @Visser2025TSPOfatigue. The authors conclude that an
"inflammatory subtype" is present. Stated most defensibly: sustained cerebral
TSPO-binding elevation is *possible* in a post-COVID fatigue cohort (not an
ME/CFS-defined cohort) two to three years after infection, is *not universal*, and is
*not proportional to symptom burden*. The report does not give, in the record
available here, the number of participants in the elevated subgroup; "some
individuals" is therefore an unquantified tail rather than a sized subgroup.

*Why this is written as speculation and not as a supported hypothesis:* the finding
is a single cross-sectional cohort, the population is post-COVID rather than ME/CFS
(post-COVID fatigue, custom criteria — no ME/CFS case definition applied), the cohort
was restricted to high-affinity TSPO binders
(@lim:chronic-inflammation-rs6971), and no dataset in the record separates a true
subgroup from the upper tail of normal between-subject variance with this sample
size. One unreplicated cohort with no
severity relationship cannot carry a hypothesis-grade claim.

*Competing explanation that must travel with this claim:* TSPO signal is *not a
specific microglial marker* in humans. In human MS lesions only about 40% of TSPO
signal derives from microglia/macrophages, and a PASC cohort found TSPO binding
correlated with *vascular* disease measures @VanElzakker2024PASCneuro @Nutma2023TSPO.
A vascular source of the same signal is therefore not excluded by the study design.

*Evidence source: brain PET (in vivo tracer binding). Inference target: microglial
activation state. Link is indirect: TSPO is expressed by microglia, astrocytes,
endothelium and vascular smooth muscle, so tracer binding does not identify the cell
type generating the signal.* (Severity applicability: unknown — the cohort was not
stratified by ME/CFS severity.)

*Falsifiable prediction:* if this is a genuine microglial subtype, a longitudinal
second-generation TSPO-PET rescan of the *same* individuals should show stable or
progressive binding in the high-binding subgroup and should co-vary with a
cell-type-specific microglial readout (for example CSF sTREM2,
@spec:chronic-inflammation-strem2). If binding regresses to the control range in the
same individuals while symptoms persist, the *sustained* reading is refuted for that
subgroup — the possibility that an elevation existed at one time point is not
testable retrospectively, which is the main weakness of a single-scan design.

*Consequence:* if replicated, this would mean that "brain inflammation" is a
*stratifier* — a way to identify a subgroup of patients for future anti-inflammatory
trials — rather than a universal explanation of ME/CFS; a negative or unstable
rescan would remove that rationale.
] <spec:chronic-inflammation-subtype>

#speculation(title: [CNS Immune Memory: Microglial Activation That Outlasts Its Trigger])[
*Certainty: 0.20 (discounted; raw 0.40, animal population weight 0.50).* A candidate
explanation for chronicity is that central immune activation acquires a
self-sustaining state that no longer requires the peripheral trigger. In a
repeated-colitis mouse model, cortical microglia retained an iNOS-enriched activation
state *during remission*, after peripheral inflammation had resolved, with raised
glutamatergic and reduced GABAergic synaptosome markers and suppressed c-fos —
an excitatory/inhibitory imbalance persisting in the absence of the peripheral
insult @Morton2026persistentmicroglia. The same study reports a second, opposite
finding in the hippocampus, where a reparative ARG1/TREM2/P2Y12R-enriched program was
present and the authors describe it as preserving circuit integrity — so the cortical
and hippocampal compartments behaved differently in one animal
(@spec:chronic-inflammation-failed-repair). In a chronic-arthritis model, microglial
activation in the area postrema (a circumventricular organ with a deficient
blood-brain barrier) persisted beyond the acute phase while the peripheral arthritis
continued @Matsushita2021areapostrema.
In prion-infected mice, TREM2 deletion worsened neuropathology without changing
misfolded-protein deposition, indicating that TREM2 regulates the *reactivity* of
chronically activated microglia rather than the deposition itself
@Carpanini2025trem2prion. Neither of those two establishes persistence *after* the
drive is removed: they show that activation persists while a peripheral or cerebral
insult continues, which is equally compatible with the continuously driven model
(@oq:chronic-inflammation-trigger-dependence). Only the remission finding supports
the stronger claim that the central state outlives its trigger.

*Translation gap:* all three findings are rodent, two are of peripheral inflammatory
disease rather than post-infectious fatigue, and only the colitis remission model
removes the trigger. No human ME/CFS study has
measured whether microglial activation persists after a trigger resolves; the only
human chronicity evidence is the single cross-sectional PET cohort above
(@spec:chronic-inflammation-subtype).

*Falsifiable prediction:* in a post-infectious cohort, microglial activation markers
(CSF sTREM2, TSPO binding) measured after the peripheral inflammatory marker has
normalised should remain elevated in the subgroup that later meets ME/CFS criteria,
and should fall in those who recover. Persistent elevation only while a peripheral
marker also remains elevated would refute the "outlasts its trigger" formulation and
support a continuously driven state instead.

*Consequence:* if true, this would explain why treating an initial infection does not
stop ME/CFS, and would shift the therapeutic question from "remove the trigger" to
"reset a retained central state" — but that shift rests on animal data only.
] <spec:chronic-inflammation-cns-memory>

#speculation(title: [CSF sTREM2 as a Candidate Readout of the Chronic Microglial State])[
*Certainty: 0.30 (raw 0.50 × 0.75 cross-disease population weight × 0.80
acute-to-chronic distance factor).* The
chronic-microglia state has lacked a fluid readout — TSPO-PET is costly, irradiated
and not repeatable at will, and blood GFAP/NfL measure neuronal/astrocytic injury
rather than microglial activation. In a cohort of 46 patients with anti-LGI1
encephalitis, CSF soluble TREM2 correlated with hippocampal TSPO binding
($R^2 = 0.18$, $p = 0.04$), and hippocampal uptake predicted prognosis
@Wang2025dpa714strem2. This is a *human cross-modality validation* of sTREM2 as a
CSF proxy for microglial activation — to the extent that TSPO binding indexes
microglia, which the competing-explanation paragraph above shows it does only partly.

*What this claim is and is not:* the study validates a *measurement relationship* in
a different disease; it does not show that sTREM2 is elevated in ME/CFS, and the
$R^2$ is modest. The validation is also in *acute, high-intensity* autoimmune
inflammation, whereas the state it is proposed to read out here is chronic and
low-grade — the concentration range, the shedding dynamics and the assay behaviour
need not transfer across that difference. It is a *prognostic/descriptive*
correlation in a *discovery cohort* — no external replication, no locked threshold,
and therefore no *predictive* claim and no diagnostic use. No PPV/NPV is claimed.

*Red-flag sweep:* variable selection not reported outside the cohort; single-site
discovery cohort; no calibration reported; small effect ($R^2 = 0.18$); no
independent validation. Consequence of these flags: the biomarker is not usable for
stratification outside research.

*Falsifiable prediction:* in an ME/CFS or post-infectious cohort, CSF sTREM2 should
correlate with TSPO binding (or with a validated microglial transcriptomic signature
in CSF cells) in the same individuals, with the relationship holding in an
independent centre. Absence of correlation in an adequately powered ME/CFS cohort
refutes the readout's transferability.

*Consequence:* if it transfers, a lumbar-puncture or improved CSF-assay readout would
make the "chronically activated microglia" claim testable in patients at reasonable
cost; until then the state remains measurable only by PET in research settings.
] <spec:chronic-inflammation-strem2>

#open-question(title: [Does Chronic CNS Inflammation Require an Ongoing Peripheral Trigger?])[
The two chronicity models make opposite predictions and both remain live. If CNS
activation is *retained* after a trigger resolves (the "immune memory" model,
@spec:chronic-inflammation-cns-memory), then peripheral inflammatory markers
should normalise while central markers stay elevated, and peripheral
anti-inflammatory treatment should not alter the central state. If CNS activation is
*continuously driven* from outside the brain — by persistent antigen, gut-derived
signals, or an adipose–CNS axis such as leptin signalling to reactive microglia
@Abdelrheem2026leptinfm — then peripheral and central markers should rise and fall
together and peripheral treatment should help. No study discriminates between these
in ME/CFS. The discriminating measurement is a longitudinal paired sampling
(peripheral marker + central marker in the same patients over time), which has not
been performed.

*Consequence:* the answer determines whether future trials should target the brain
compartment directly or the periphery, and whether "brain inflammation" is a cause to
treat or a marker to monitor.
] <oq:chronic-inflammation-trigger-dependence>

#limitation(title: [Null and Negative Evidence on Chronic CNS Inflammation])[
Counter-evidence carries equal visibility to the supporting evidence above. In a
post-COVID persistent-headache cohort, serum NfL and GFAP were *lower*, not higher,
than in severe acute COVID-19, and the authors concluded that persistent symptoms
"may not be a sign of underlying neuronal damage or neuroinflammation"
@DeBoni2022postcovidheadache. In a case-control study of long COVID, circulating NfL
and GFAP did not differ from recovered controls @Omdal2026LongCovidNeuroinflammation
(@obs:omdal2026-null-nfl). In ME/CFS specifically, a small TSPO-PET study
found no difference from controls and a *negative* correlation with symptom severity
@Raijmakers2021neuroinflammation, and the specificity of TSPO as a microglial marker
in humans is itself contested @Nutma2023TSPO.

Four readings are compatible with this pattern, and the paper does not choose
between them: (a) the subtype model is correct and nulls come from cohorts dominated
by non-subtype patients; (b) chronic CNS inflammation is not a feature of ME/CFS and
the positive PET signals reflect vascular or metabolic tracer handling; (c) blood
markers and PET measure different compartments and cannot corroborate or refute each
other; (d) the elevated subgroup is the upper tail of normal between-subject variance,
which a single scan of 33 patients cannot exclude — the record available to this
review does not give the subgroup count, the effect size for the subgroup, or whether
the region-wise comparisons were corrected for multiplicity. Reading (d) is the cheapest to test and the most damaging if
true, because it removes the need for any biological explanation. The absence of any
ME/CFS study that measures the *chronicity* axis directly — as opposed to a single
time-point — means the question is currently underdetermined rather than settled in
either direction.

The scope of these nulls is also narrower than it first appears. They test whether
inflammation is *sustained and measurable at rest*, and they say nothing about a
primed or kindled state, in which a normal-looking baseline produces an exaggerated
response to a subsequent challenge — the sense in which microglial priming is invoked
in the kindling account of post-exertional malaise (Section @sec:pem-kindling). A
null resting measurement and a real provoked response are compatible findings, so
even a fully negative chronic-inflammation result would not by itself remove priming
from the picture.

*Consequence:* a reader should not conclude from this section that ME/CFS involves
chronic brain inflammation; the honest summary is that a measurable inflammatory
subtype may exist in a minority of post-COVID patients (not an ME/CFS-defined
cohort) and that the null evidence is as strong as the positive evidence. The
proposals that would survive a fully negative result are collected in
Section @sec:chronic-cns-inflammation-hypotheses and summarised in
@syn:chronic-cns-brain-inflammation-model.
] <lim:chronic-inflammation-null-evidence>

#limitation(title: [Two Indirect Axes Have No ME/CFS Data])[
The topic's downstream biochemistry was searched against ME/CFS rather than only
against the literal topic string, and two axes returned *zero* ME/CFS studies:
chitinase-3-like protein 1 (CHI3L1/YKL-40), an astroglial/microglial activation
marker, and interleukin-6 *trans-signalling* (soluble IL-6 receptor/gp130), the
route by which IL-6 produces chronic rather than acute inflammatory effects. Both
remain untested hypotheses about ME/CFS rather than findings, and no environment in
this section rests on them. Their absence is a gap in the literature, not evidence
of absence. A third axis — leptin-driven microglial activation — is supported only by
a review in fibromyalgia @Abdelrheem2026leptinfm and is therefore cited only as a
candidate driver in @oq:chronic-inflammation-trigger-dependence.

*Consequence:* these two measurements are cheap relative to PET and would materially
advance the question; the fact that neither has been reported in ME/CFS is a
research-priority statement, not a negative result.
] <lim:chronic-inflammation-unmeasured-axes>
