# Brainstorm: Chronic (Sustained) CNS/Brain Inflammation in ME/CFS

Date: 2026-10-20 | Stream: `chronic-cns-brain-inflammation` | Phase 4 (creative brainstorming)
Decision: **PARTIAL** — categories 1–2 and 10–12 ONLY. Categories 3–9 (drug/supplement/
intervention/combination/math/cross-disease-bridge/diagnostic-idea) are skipped by the Phase 2
decision: no validated chronicity target exists and no ME/CFS-specific chronicity measurement
exists, so therapeutic and diagnostic brainstorming would be premature and could mislead readers.

Topic class: mechanistic / biomarker topic with **zero ME/CFS-specific chronicity evidence** and
**zero human ME/CFS measurement of the chronicity axis**. The strongest human signal is a single
post-COVID TSPO-PET cohort; every chronicity *mechanism* is animal or review.

Uncertainties quoted are DISCOUNTED Phase-1/2 values (already population-weighted).
Keys verified case-exact against `bib/neuroinflammation.bib`, `bib/long-covid.bib`,
`bib/autonomic-cardiovascular.bib`.

---

## Scope discipline (what this brainstorm must NOT re-argue)

The following are already integrated this cycle (Phase 3) or already live in the paper; a novel
idea may EXTEND them but must not restate them:

| Anchor (label / claim) | Already covers |
|------------------------|----------------|
| `spec:chronic-inflammation-subtype` (cert 0.47) | The compartmentalised neuroinflammatory subtype (Visser2025); TSPO non-specificity and the vascular competing-explanation already travel with it |
| `spec:chronic-inflammation-cns-memory` (cert 0.20) | CNS immune memory / activation outlasting its trigger (Morton/Matsushita/Carpanini animal); E/I imbalance is already named here |
| `spec:chronic-inflammation-strem2` (cert 0.38) | CSF sTREM2 as candidate readout (Wang2025); already carries prognostic/predictive + red-flag sweep |
| `oq:chronic-inflammation-trigger-dependence` | Retained vs continuously-driven trigger question; longitudinal paired sampling is already named as the discriminating measurement |
| `lim:chronic-inflammation-null-evidence` | Null evidence (DeBoni2022, Omdal2026, Raijmakers2021, Nutma2023) surfaced with equal visibility |
| `lim:chronic-inflammation-unmeasured-axes` | CHI3L1/YKL-40, IL-6 trans-signalling, leptin as data gaps |
| `spec:brainstem-glial-senescence` (cert 0.30) | Brainstem glial senescence → autonomic trap (Balasubramanian 2021) |
| `hyp:cascade-neuroinflammatory` | Integrated neuroinflammatory cascade model |
| `hyp:pem-kindling-sensitization` (cert 0.45) | Kindling / progressive sensitization limitation |

This brainstorm pushes genuinely NOVEL angles: within-brain regional divergence, the circumventricular
organ as a senescence signal port, a repair-deficit reframing of "activation", astrocyte (not
microglial) dynamics, and the full critical-category sweep (10–12) that the integrated text only
gestures at.

---

## Category 1 — Novel hypotheses (mechanistic connections not yet in literature)

### Idea 1.1: Regional microglial phenotype divergence as a within-brain subtype axis (origin: brainstorm)
**Category:** 1
**Certainty:** 0.15
**Rationale:** The "outlasts its trigger" model (already integrated in
`spec:chronic-inflammation-cns-memory`) treats cortical microglia as uniformly pro-inflammatory.
But the underlying animal data show the *opposite of uniformity*: in the same repeated-colitis
model, cortical microglia adopted an iNOS-enriched, VGLUT1↑/VGAT↓ (excitotoxic) state while
hippocampal microglia adopted an ARG1-dominant, TREM2/P2Y12R-enriched *reparative* state
@Morton2026persistentmicroglia. This predicts that a single "brain inflammation" label masks two
opposite central states in different regions — and therefore that a TSPO-PET whole-brain average
(Visser2025's design) could *cancel out* a real regional signal, or misattribute a hippocampal
reparative signal as pathology. The novel claim: the ME/CFS "neuroinflammatory subtype" may itself
be split by region, and the cognitive-vs-affective symptom split (brain fog vs mood/memory) could
track cortical (pro-inflammatory) vs hippocampal (reparative) divergence rather than global burden.
**Evidence link:** @Morton2026persistentmicroglia (animal regional divergence); @Visser2025TSPOfatigue
(whole-brain averaging, no regional subtype reported).
**Falsifiable prediction:** A regional (atlas-based) analysis of second-generation TSPO-PET in a
post-infectious fatigue cohort should show *opposite* cortical and hippocampal binding patterns in
some individuals, and the direction of the difference should correlate with cognitive-vs-memory
symptom predominance. Refuted if regional binding is uniform in sign across all subcortical/cortical
regions.
**Non-specialist consequence:** If true, a single "brain inflammation" measurement would be too
blunt to capture what is actually wrong — one brain region could be fighting off damage while another
is being harmed, which changes what a scan would need to look for.

### Idea 1.2: The area postrema as the SASP entry port that links peripheral senescence to brainstem autonomic failure (origin: brainstorm)
**Category:** 1
**Certainty:** 0.12
**Rationale:** Three strands converge on a circuit the paper has not yet connected. (a) Senescent
microglia/astrocytes secrete SASP factors (IL-6, TGF-β, MMP-10, IGFBPs) that sustain low-grade
neuroinflammation @Kempuraj2026neurosenescence @Wendimu2022microgliaaging. (b) Microglial activation
persists in the *area postrema* — a circumventricular organ with a deficient blood-brain barrier —
during chronic peripheral arthritis @Matsushita2021areapostrema. (c) The paper already posits
brainstem glial senescence driving autonomic failure (Section `spec:brainstem-glial-senescence`)
@Balasubramanian2021glialSenescence. The novel synthesis: the area postrema is the *port* through
which blood-borne SASP factors (from peripheral senescent cells, gut, or adipose) reach the very
brainstem nuclei whose senescence drives sympathetic overdrive. This gives the brainstem senescence
model a *source* — it is not autonomous, it is fed from the periphery through a leaky door.
**Evidence link:** @Matsushita2021areapostrema @Kempuraj2026neurosenescence @Balasubramanian2021glialSenescence.
**Falsifiable prediction:** In a chronic peripheral-inflammation model, blocking SASP signalling
(e.g. IL-6 neutralisation) should reduce area-postrema microglial activation and downstream brainstem
autonomic measures without any direct CNS intervention. Refuted if area-postrema activation is
unaffected by peripheral SASP blockade.
**Non-specialist consequence:** If true, "brain inflammation" in ME/CFS may partly be a leak from
body-wide inflammation into the brainstem through a weak point in the blood-brain barrier, which
would make the peripheral source — not the brain itself — the thing to measure.

### Idea 1.3: The chronic microglial state is a *failed-repair* state, not an over-activation state (origin: brainstorm)
**Category:** 1
**Certainty:** 0.20
**Rationale:** The paper and literature both treat "chronic microglial activation" as excess
inflammation to be damped. The TREM2 data invert this. In prion mice, Trem2 deletion *worsened*
neuropathology without changing misfolded-protein deposition, meaning TREM2 regulates the
*reactivity and repair* of chronically activated microglia rather than the insult itself
@Carpanini2025trem2prion. Combined with the human finding that CSF sTREM2 tracks TSPO binding
@Wang2025dpa714strem2, the harmful state may be *high activation (high TSPO) with inadequate
repair (low functional TREM2)* — not high activation alone. The novel claim: the pathological
combination is a ratio (activation ÷ repair capacity), and a patient with high TSPO but adequate
TREM2 signalling may be functionally compensated, whereas the decompensated state is what produces
symptoms. This is a mechanistic reframing, not a treatment proposal.
**Evidence link:** @Carpanini2025trem2prion @Wang2025dpa714strem2.
**Falsifiable prediction:** In a cohort with both TSPO-PET and CSF sTREM2, symptom burden should
correlate with the *ratio* of TSPO binding to sTREM2 (or with a low-sTREM2/high-TSPO subgroup),
more strongly than with either measure alone. Refuted if TSPO binding alone predicts symptoms as well
as the ratio.
**Non-specialist consequence:** If true, the problem would not be "too much inflammation to turn off"
but "an immune-repair system that failed to finish its job" — a distinction that matters for what
scientists would try to measure, even though no treatment follows from it today.

### Idea 1.4: Reactive-astrocyte network destabilisation explains the *fluctuating* (not tonic) character of brain fog (origin: brainstorm)
**Category:** 1
**Certainty:** 0.15
**Rationale:** A tonic microglial state predicts tonic symptoms; ME/CFS cognitive impairment is
episodic (good days/bad days, PEM-triggered crashes). The chronicity review proposes a mechanism the
microglia-focused integration did not carry forward: reactive astrocytes destabilise local network
function and impair memory reconsolidation, acting dynamically on network excitability
@Martins2026postcovidneuroinflammation. Astrocytes, unlike a fixed microglial burden, couple their
state to ongoing activity and metabolic demand — which is precisely the PEM energy context
(Section `@hyp:cascade-neuroinflammatory`). The novel claim: the *time-varying* component of brain
fog is astrocyte-mediated network destabilisation riding on a slower microglial baseline, making the
two distinguishable by their temporal signature (episodic vs tonic).
**Evidence link:** @Martins2026postcovidneuroinflammation (astrocyte network destabilisation,
memory reconsolidation).
**Falsifiable prediction:** An EEG/MEG or fMRI dynamic-functional-connectivity measure taken during a
PEM challenge should show transient network destabilisation (reduced local stability, failed
reconsolidation markers) that tracks the astrocyte (not microglial) activation time-course — i.e.
fluctuates within hours-to-days — and is absent at rest. Refuted if network measures are stable across
the PEM cycle.
**Non-specialist consequence:** If true, the "crash-and-recover" pattern of brain fog would have its
own distinct cellular cause (astrocytes) separate from any long-term "brain inflammation," which
matters for predicting when symptoms will spike.

---

## Category 2 — Research directions (experiments resolving key uncertainties)

### Idea 2.1: ME/CFS-defined, longitudinally re-scanned whole-body TSPO-PET (the decisive replication) (origin: brainstorm)
**Category:** 2
**Certainty:** n/a (design)
**Rationale:** The single most important gap in this entire cycle: *no included study applies ME/CFS
diagnostic criteria to the chronicity question*, and no study has repeated the measurement over time.
Visser2025 is post-COVID, cross-sectional, single time-point @Visser2025TSPOfatigue. A study using
second-generation TSPO-PET in patients meeting ME/CFS case definitions (Fukuda/IOM), stratified by
disease duration and severity, with a *longitudinal rescan* of the same individuals, would
simultaneously settle (a) whether the subtype exists in ME/CFS proper, and (b) whether it *persists*
— the definition of "chronic" that a single time-point cannot establish. This is the experiment the
trigger-dependence open question (`oq:chronic-inflammation-trigger-dependence`) and the subtype
speculation (`spec:chronic-inflammation-subtype`) both depend on, but it is named here as a concrete
study, not re-argued as a gap.
**Evidence link:** @Visser2025TSPOfatigue @Raijmakers2021neuroinflammation (the null to reconcile).
**Falsifiable prediction (of the study design):** If the subtype is real and chronic, the high-binding
subgroup should show stable-or-progressive binding at rescan and should be enriched in patients with
longer duration; if the nulls are correct, binding should be indistinguishable from controls in an
ME/CFS-defined cohort at both time-points.
**Non-specialist consequence:** Running this one study would tell patients whether "chronic brain
inflammation" is a real thing in ME/CFS itself, or only a feature of some post-COVID cases — and
until it is run, the honest answer is "we do not know."

### Idea 2.2: Cell-type-specific disambiguation of the TSPO signal (microglia vs vascular vs astrocyte) (origin: brainstorm)
**Category:** 2
**Certainty:** n/a (design)
**Rationale:** The measurement-validity problem is already flagged (TSPO is not microglial-specific;
~40% microglial in human lesions @Nutma2023TSPO; a PASC cohort found TSPO correlated with *vascular*
measures @VanElzakker2024PASCneuro). The research direction is to *disambiguate* rather than to
restate the ambiguity: pair TSPO-PET with (a) a microglial-specific or astrocyte-specific tracer
(e.g. MAO-B or CSF1R-targeted PET), (b) single-nucleus RNA-seq of post-mortem ME/CFS brain or
CSF-immune-cell transcriptomics, and/or (c) a vascular-specific measure (DCE-MRI permeability). Only
a cell-type-resolved readout can turn "TSPO binding ↑ in a subtype" into "microglial activation ↑ in
a subtype." This is distinct from the integrated limitation, which records the problem but does not
specify the disambiguation design.
**Evidence link:** @Nutma2023TSPO @VanElzakker2024PASCneuro.
**Falsifiable prediction (of the design):** If the signal is genuinely microglial, the cell-type
resolved readout should re-localise the Visser2025 subtype to microglia-specific binding; if vascular,
microglia-specific binding should be null while permeability measures explain the TSPO signal.
**Non-specialist consequence:** This study would determine whether the scan signal patients hear about
as "brain inflammation" is actually inflammation or merely leaky blood vessels — two very different
problems.

### Idea 2.3: ME/CFS CSF multi-marker senescence panel cross-validated against TSPO-PET (origin: brainstorm)
**Category:** 2
**Certainty:** n/a (design)
**Rationale:** The unmeasured-axes limitation (`lim:chronic-inflammation-unmeasured-axes`) records
that CHI3L1/YKL-40 and IL-6 trans-signalling have *zero* ME/CFS studies, and that the chronicity axis
(senescent microglia, primed-state persistence) is unmeasured. The research direction is the concrete
panel that would operationalise this gap: a single ME/CFS CSF collection measuring sTREM2 (validated
proxy @Wang2025dpa714strem2), YKL-40/CHI3L1 (astroglial/microglial activation), IL-6 trans-signalling
(sIL-6R/gp130), and senescence markers (p16, SASP factors per @Kempuraj2026neurosenescence),
cross-validated in the same individuals against regional TSPO-PET — the Wang2025 cross-modality
relationship transferred to ME/CFS. This is the cheapest path to a fluid readout for the chronic
microglial state that PET cannot provide at scale.
**Evidence link:** @Wang2025dpa714strem2 @Kempuraj2026neurosenescence @Martins2026postcovidneuroinflammation.
**Falsifiable prediction (of the design):** If the chronic-microglia state is real and measurable in
ME/CFS, ≥1 of these markers should co-vary with regional TSPO binding in the same patients; if all are
null in an adequately powered cohort, the "compartmentalised inflammation" claim loses its fluid-road
to testability.
**Non-specialist consequence:** Success here would give researchers a spinal-fluid (or eventually
blood) test that stands in for an expensive, radioactive brain scan — making "is my brain inflamed?"
answerable for many more patients than PET ever could.

---

## Category 10 — Reasons this mechanism may NOT be relevant to ME/CFS (MANDATORY)

### Idea 10.1: The entire "chronic CNS inflammation" signal can be re-read as vascular or metabolic, not inflammatory (origin: brainstorm)
**Category:** 10
**Certainty:** 0.40
**Rationale:** The strongest competing explanation for every positive TSPO signal is that it is not
inflammation at all. TSPO is not microglial-specific (~40% of human lesion signal is microglial,
the rest endothelial/vascular/astrocytic @Nutma2023TSPO), and a PASC cohort found TSPO binding
correlated with *vascular* disease measures rather than uniform gliosis @VanElzakker2024PASCneuro.
If the Visser2025 "subtype" is really a vascular-endothelial signal — consistent with the paper's
own well-supported endothelial/hypoperfusion models — then "chronic CNS inflammation" would be a
mislabel for a perfusion/endothelial problem, and the entire topic's central object would dissolve.
This is the single most damaging competitor and must be weighted at least as heavily as the subtype
claim it opposes.
**Evidence link:** @Nutma2023TSPO @VanElzakker2024PASCneuro @Visser2025TSPOfatigue.
**Falsifiable prediction:** Cell-type-resolved imaging (Idea 2.2) should show the elevated cerebral
binding re-localises to endothelial/vascular rather than microglial compartments, and should
co-vary with a perfusion/permeability measure rather than with CSF microglial markers.
**Non-specialist consequence:** If this is right, the whole "brain inflammation" framing of ME/CFS
would need to be replaced by a "brain blood-flow / vessel" framing — which points in a completely
different direction for what to investigate next.

### Idea 10.2: Reverse causation — reduced activity and deconditioning drive the neuroinflammatory state, not the reverse (origin: brainstorm)
**Category:** 10
**Certainty:** 0.30
**Rationale:** All human CNS-inflammation→symptom links here are cross-sectional. Visser2025's own
finding that cerebral binding did *not* correlate with severity @Visser2025TSPOfatigue is more
consistent with a reverse or common-cause model than with inflammation-as-driver. A patient too
fatigued to move has reduced activity, altered metabolism, and chronic physiological stress — all of
which independently shift microglial/astrocytic state. The "chronic CNS inflammation" could be a
*consequence* of being ill (bedrest, inactivity, sleep loss) rather than a cause of the illness. If
so, it is real but therapeutically and mechanistically irrelevant to the disease's origin.
**Evidence link:** @Visser2025TSPOfatigue (no severity correlation).
**Falsifiable prediction:** In a cohort with matched inactivity (e.g. comparing ME/CFS patients to
bedrest/deconditioned controls), the CNS inflammatory signal should be equivalent between groups,
showing it tracks inactivity rather than ME/CFS-specific pathology.
**Non-specialist consequence:** If true, the brain inflammation would be a *symptom* of the illness
(a downstream effect of being too unwell to move) rather than its cause — which matters enormously
for whether anyone should try to treat it.

### Idea 10.3: The chronicity mechanism is non-transferable — the animal models do not model post-infectious fatigue (origin: brainstorm)
**Category:** 10
**Certainty:** 0.35
**Rationale:** The three animal pillars of the "outlasts its trigger" claim are a collagen-induced
*arthritis* model @Matsushita2021areapostrema, a DSS-*colitis* model @Morton2026persistentmicroglia,
and a *prion* model @Carpanini2025trem2prion. None models a resolving viral infection followed by
fatigue. In each, the "persistent" central state may reflect *incomplete resolution of a peripheral
insult that is still ongoing at low level* (e.g. sub-clinical colitis, persistent joint inflammation)
— which is the "continuously driven" scenario, not the "retained memory" scenario the chronicity
claim needs. If the models only show that an ongoing peripheral inflammation keeps microglia active,
they do not transfer to ME/CFS, where the peripheral trigger is presumed resolved. The "chronicity
mechanism" may simply not exist in the disease it is invoked to explain.
**Evidence link:** @Matsushita2021areapostrema @Morton2026persistentmicroglia @Carpanini2025trem2prion.
**Falsifiable prediction:** A post-infectious *fatigue* animal model (e.g. viral + fatigue phenotype,
not arthritis/colitis) should fail to reproduce the persistent microglial state after the virus
clears — or should show it decaying once the peripheral insult is fully resolved.
**Non-specialist consequence:** If true, the "brain remembers the infection after it is gone" story —
the most intuitively compelling part of this topic — would be an artefact of the wrong animal models,
and would need to be discarded until a proper model exists.

---

## Category 11 — Null hypothesis assessment (MANDATORY)

### Idea 11.1: Null — chronic CNS inflammation has no causal role in ME/CFS (origin: brainstorm)
**Category:** 11
**Certainty:** 0.30
**Rationale:** The null is live and has real evidential support: three independent nulls (blood
NfL/GFAP lower or unchanged @DeBoni2022postcovidheadache @Omdal2026LongCovidNeuroinflammation; TSPO
null in ME/CFS @Raijmakers2021neuroinflammation) plus the TSPO non-specificity objection
@Nutma2023TSPO. Under the null, the positive signals (Nakatomi2014; Visser2025 subtype) are
vascular/metabolic/epiphenomenal. What would need revision is substantial: (a) `@Nakatomi2014neuroinflammation`'s
"widespread neuroinflammation" would be re-read as vascular/metabolic tracer handling; (b)
`hyp:cascade-neuroinflammatory` would lose its initiating central-inflammatory node (the cascade
would need a non-inflammatory first cause, e.g. metabolic or vascular); (c) `spec:brainstem-glial-senescence`
would be downgraded to an animal-only, ME/CFS-unvalidated conjecture. The null is not refuted by any
current human ME/CFS data — that is the honest bottom line.
**Evidence link:** @DeBoni2022postcovidheadache @Omdal2026LongCovidNeuroinflammation @Raijmakers2021neuroinflammation @Nutma2023TSPO @Nakatomi2014neuroinflammation.
**Falsifiable prediction:** Idea 2.1's ME/CFS-defined replication returns no group difference and no
stable subtype at rescan; regional binding tracks perfusion measures, not microglial markers.
**Non-specialist consequence:** If the null is right, several chapters of the paper that currently
build on "brain inflammation" as a cause would need to be rewritten around a non-inflammatory first
cause — a large but necessary correction rather than a minor footnote.

### Idea 11.2: The null is narrow — it defeats only the *chronic causal* claim, leaving acute neuroinflammation and kindling/priming intact (origin: brainstorm)
**Category:** 11
**Certainty:** 0.40
**Rationale:** Even if chronic CNS inflammation is fully nullified, the paper's broader
neuroinflammatory architecture does not collapse with it. Acute post-infectious neuroinflammation is
well-established and temporally bounded; the kindling/priming model (`hyp:pem-kindling-sensitization`)
and the ratchet model require only that each infection or crash produce a *priming event*, not that
a tonic inflammatory state persist indefinitely. Priming is a *state change* (lowered threshold)
that survives after the inflammatory burst resolves — exactly the situation the null cannot touch.
So the null's true scope is: "no persistent, elevated, measurable CNS inflammatory state at rest,"
which is compatible with "repeated transient inflammatory bursts produce durable sensitisation."
This delimitation prevents over-correction: rejecting the chronic claim should not drag down the
kindling/priming claims, which have independent (if still partial) support.
**Evidence link:** @Nakatomi2014neuroinflammation (acute/transient support); priming logic is carried
in `hyp:pem-kindling-sensitization` and the ratchet model.
**Falsifiable prediction:** Priming/kindling endpoints (threshold-lowering across repeated PEM events)
should remain demonstrable in cohorts where resting CSF markers are null, showing the two are
separable.
**Non-specialist consequence:** This keeps the null from being over-read: patients would lose the
"always-on brain inflammation" claim but keep the "each crash makes the next one easier to trigger"
claim, which is a different — and more clinically actionable — mechanism.

### Idea 11.3: Minimum design to reject the null (origin: brainstorm)
**Category:** 11
**Certainty:** n/a (design)
**Rationale:** A single, pre-specified experiment can move the null from "not yet refuted" to
"rejected." The minimum is: an ME/CFS-defined cohort (n sized to detect the Visser2025 subtype effect),
regional second-generation TSPO-PET plus CSF sTREM2 (the validated proxy @Wang2025dpa714strem2),
a deconditioned control arm (to close the reverse-causation loophole, Idea 10.2), and a longitudinal
rescan. Rejecting the null requires BOTH a group or stable-subgroup elevation AND co-variation with a
microglial-specific readout that survives the deconditioned-control comparison. One positive PET alone
cannot reject it (vascular/metabolic alternative stays open); a null PET result would, conversely,
*strengthen* the null to near-decisive — which is why this experiment is worth running regardless of
its outcome.
**Evidence link:** @Visser2025TSPOfatigue @Wang2025dpa714strem2 @Raijmakers2021neuroinflammation.
**Falsifiable prediction (of the design's power):** The study is powered to reject the null only if
the subtype effect size observed in Visser2025 is real and stable; an underpowered null result is
indeterminate and must be labelled as such, not as evidence of absence.
**Non-specialist consequence:** This is the single study that, either way it comes out, would replace
"we do not know" with a defensible yes-or-no — the difference between a paper that speculates and a
paper that answers.

---

## Category 12 — Evidence quality concerns (MANDATORY)

### Idea 12.1: Population mismatch — zero ME/CFS-defined human subjects across the entire chronicity evidence (origin: brainstorm)
**Category:** 12
**Certainty:** 0.45
**Rationale:** The strongest human chronicity claim is post-COVID @Visser2025TSPOfatigue; the
marker-validation claim is anti-LGI1 autoimmune encephalitis @Wang2025dpa714strem2; the nulls are
post-COVID headache @DeBoni2022postcovidheadache and long COVID @Omdal2026LongCovidNeuroinflammation.
*Not one* human study applies ME/CFS case definitions to the chronicity question. This is a
generalizability gap, not a certainty discount already captured: the population weight applied in
Phase 2 (0.85 Long COVID, 0.75 cross-disease) assumes post-COVID fatigue is a reasonable proxy for
ME/CFS, but that assumption is itself unproven — post-COVID cohorts are selected by a known single
trigger with a known viral aetiology, whereas ME/CFS is heterogeneous in trigger. The transfer is
assumed, never demonstrated.
**Evidence link:** @Visser2025TSPOfatigue @Wang2025dpa714strem2 @DeBoni2022postcovidheadache @Omdal2026LongCovidNeuroinflammation.
**Falsifiable prediction:** Idea 2.1 (ME/CFS-defined cohort) is the test; a null or qualitatively
different result there would show the population-weight assumption was wrong.
**Non-specialist consequence:** Until a study is done in people who actually meet ME/CFS criteria,
everything this topic claims about "ME/CFS" is borrowed from different diseases — an important gap
between what the literature says and what the paper's readers might assume it says.

### Idea 12.2: Measurement-validity confound not captured by certainty scores — the TSPO rs6971 affinity polymorphism (origin: brainstorm)
**Category:** 12
**Certainty:** 0.35
**Rationale:** TSPO tracer binding is confounded by the rs6971 single-nucleotide polymorphism, which
produces high-, mixed-, and low-affinity binders; failure to genotype and either exclude or correct
for low-affinity binders can manufacture apparent "subgroups" that are genotypic artefacts rather
than biological inflammation. A "compartmentalised subtype" that is partly a rs6971 affinity
artefact would look exactly like Visser2025's finding: elevated binding in *some* individuals, no
relationship to severity. The Phase 2 certainty discount did not incorporate whether affinity status
was measured and controlled. This is a measurement-validity red flag, not an alternative mechanism
(distinct from Idea 10.1): even if the signal *is* inflammatory, the subtype's boundary may be
wrongly drawn if rs6971 is unaccounted for.
**Evidence link:** @Visser2025TSPOfatigue (the cohort whose subtype claim is at risk); @Nutma2023TSPO
(marker-specificity context).
**Falsifiable prediction:** Re-analysing Visser2025's cohort stratified by rs6971 status should
show whether the high-binding subgroup is enriched for high-affinity genotypes; if it is, the
"inflammatory subtype" is partly a genotype stratum, and the effect size shrinks after correction.
**Non-specialist consequence:** A genetic variant that changes how the tracer sticks to the brain
could be masquerading as a "subgroup of patients with brain inflammation" — meaning the headline
subtype finding may partly be a measurement artefact, not a real biological divide.

### Idea 12.3: Cross-sectional design cannot establish "chronic" — a single elevated time-point is not persistence (origin: brainstorm)
**Category:** 12
**Certainty:** 0.40
**Rationale:** The entire topic's load-bearing word — *chronic* — is an inference, not a measurement.
Every human study is cross-sectional (a single TSPO-PET, a single CSF draw). A single elevated
measurement at ~27 months post-infection @Visser2025TSPOfatigue is consistent with (a) a persistent
state, (b) a state that has waxed and waned and happened to be caught high, or (c) a state that
resolves and recurs with each symptom flare. None of the three is distinguished. The paper's own
kindling/priming model predicts (c) — recurrent transient bursts — yet the "chronic" label quietly
assumes (a). This is a design limitation that no amount of cross-sectional replication can fix; only
longitudinal sampling (Idea 2.1) can, and it has not been done.
**Evidence link:** @Visser2025TSPOfatigue (single time-point).
**Falsifiable prediction:** Longitudinal rescan of the high-binding subgroup should reveal which of
(a)/(b)/(c) holds; stability supports (a), regression-to-control supports (b) or (c).
**Non-specialist consequence:** Calling this "chronic brain inflammation" is currently a guess about
timing — the scans show a snapshot, not a duration, so the central word in the topic has not yet
actually been measured.

---

## Category-count summary

| Category | Label | Ideas | Notes |
|----------|-------|-------|-------|
| 1 | Novel hypotheses | 4 | Regional divergence; AP-SASP port; repair-deficit reframing; astrocyte dynamics |
| 2 | Research directions | 3 | ME/CFS replication; cell-type disambiguation; CSF senescence panel |
| 3–9 | (drug/supplement/intervention/combination/math/cross-disease/diagnostic) | 0 | SKIPPED by PARTIAL decision — no validated target, no ME/CFS chronicity measurement |
| 10 | Reasons NOT relevant (MANDATORY) | 3 | Vascular re-reading; reverse causation; animal non-transferability |
| 11 | Null hypothesis assessment (MANDATORY) | 3 | Null + revisions; null is narrow; minimum design to reject null |
| 12 | Evidence quality concerns (MANDATORY) | 3 | Population mismatch; rs6971 confound; cross-sectional ≠ chronic |
| — | **Total** | **16** | 7 constructive + 9 critical |

Critical categories 10–12 are fully populated (9 ideas, ≥2 each) — mandatory requirement met.
Categories 3–9 are explicitly skipped, not padded, per the Phase 2 PARTIAL cap.

## Ranking summary

| Rank | ID | Category | Idea (short) | Certainty |
|------|----|----------|--------------|-----------|
| 1 | 12.1 | 12 | Zero ME/CFS-defined subjects across all chronicity evidence | 0.45 |
| 2 | 10.1 | 10 | Whole TSPO signal re-readable as vascular/metabolic | 0.40 |
| 3 | 11.2 | 11 | Null is narrow — kindling/priming survives | 0.40 |
| 4 | 12.3 | 12 | Cross-sectional ≠ "chronic" | 0.40 |
| 5 | 10.3 | 10 | Animal models don't model post-infectious fatigue | 0.35 |
| 6 | 12.2 | 12 | rs6971 affinity polymorphism confound | 0.35 |
| 7 | 10.2 | 10 | Reverse causation (inactivity → neuroinflammation) | 0.30 |
| 8 | 11.1 | 11 | Null — no causal role (claims needing revision) | 0.30 |
| 9 | 1.3 | 1 | Chronic state = failed-repair, not over-activation | 0.20 |
| 10 | 1.1 | 1 | Regional microglial phenotype divergence | 0.15 |
| 11 | 1.4 | 1 | Astrocyte network destabilisation → fluctuating brain fog | 0.15 |
| 12 | 1.2 | 1 | Area postrema as SASP entry port | 0.12 |
| 13 | 2.1 | 2 | ME/CFS-defined longitudinal TSPO-PET replication | n/a (design) |
| 14 | 2.2 | 2 | Cell-type-specific disambiguation of TSPO | n/a (design) |
| 15 | 2.3 | 2 | CSF multi-marker senescence panel + TSPO cross-validation | n/a (design) |
| 16 | 11.3 | 11 | Minimum design to reject the null | n/a (design) |

All ideas tagged `origin: brainstorm`. All citations restricted to the verified bib keys listed in
the header (case-exact, confirmed present in `bib/neuroinflammation.bib`, `bib/long-covid.bib`,
`bib/autonomic-cardiovascular.bib`) plus in-corpus anchors referenced by label — no unverified keys cited.

## Suppressed duplicates (already covered — deliberately NOT re-proposed)

| Suppressed angle | Already covered by |
|------------------|--------------------|
| Compartmentalised neuroinflammatory subtype (Visser2025) | `spec:chronic-inflammation-subtype` |
| CNS immune memory / activation outlasting trigger (Morton/Matsushita/Carpanini) | `spec:chronic-inflammation-cns-memory` |
| CSF sTREM2 as candidate readout (Wang2025) | `spec:chronic-inflammation-strem2` |
| Retained-vs-continuously-driven trigger question | `oq:chronic-inflammation-trigger-dependence` |
| Null-evidence limitation (DeBoni2022/Omdal2026/Raijmakers2021/Nutma2023) | `lim:chronic-inflammation-null-evidence` |
| Unmeasured axes (CHI3L1/YKL-40, IL-6 trans-signalling, leptin) | `lim:chronic-inflammation-unmeasured-axes` |
| Brainstem glial senescence → autonomic trap | `spec:brainstem-glial-senescence` |
| Neuroinflammatory cascade model | `hyp:cascade-neuroinflammatory` |
| Kindling / progressive sensitisation | `hyp:pem-kindling-sensitization` |

## Queued topics (Gates A/B)

None new. The "repair-deficit (TREM2) reframing" (Idea 1.3) could later surface as its own topic if
a TREM2-loss-of-function or sTREM2-functional human ME/CFS study appears; current evidence is too weak
(one prion-KO model + one cross-disease correlation) to queue.

## Phase 4a → hypothesis tree

Subtree file (if created in Phase 4a): `ops/plans/hypotheses-trees/chronic-cns-brain-inflammation.md`.
