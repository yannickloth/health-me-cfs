#import "../../../../shared/environments.typ": *

=== Chronic CNS Inflammation: Mechanistic and Epistemic Hypotheses
<sec:chronic-cns-inflammation-hypotheses>

The environments in this subsection originate from a structured brainstorm
(origin: brainstorm) rather than from direct literature claims. They extend the
evidence-derived material in Section @sec:chronic-cns-inflammation — in particular
the compartmentalised-subtype claim (@spec:chronic-inflammation-subtype) and its null
counter-evidence (@lim:chronic-inflammation-null-evidence) — and they carry
deliberately low certainty. None of them should be read as a competing claim of equal
standing with the material above; they are proposals about where to look next and
about how the existing evidence could be wrong.

#speculation(title: [Resolution Capacity Versus Activation Load])[
*Certainty: 0.20.* The dominant framing treats chronic CNS inflammation as
*too much* immune activity. One candidate reading of the same data is a *resolution
deficit* — persistence reflecting insufficient clearance rather than excess
activation. In the repeated-colitis model that motivates the chronicity
claim, cortical and hippocampal microglia adopted *opposite* phenotypes in the same
animal — cortical microglia an iNOS-enriched pro-inflammatory state, hippocampal
microglia an ARG1-dominant, TREM2/P2Y12R-enriched reparative state
@Morton2026persistentmicroglia. The authors describe the hippocampal program as
preserving circuit integrity, so the honest reading is not "repair is failing
everywhere" but "repair capacity is present in one compartment and absent in another".
The weaker claim that survives that reading is a ratio claim: persistence may reflect
the balance between resolution capacity and activation load in each compartment,
rather than the absolute amount of activation. Where that balance is unfavourable, the
two readings do predict different treatments — suppression versus promotion of
resolution — and TREM2 is consistent with resolution capacity being rate-limiting,
because its deletion worsened pathology without changing the protein load being
cleared @Carpanini2025trem2prion.

*Falsifiable prediction:* in a post-infectious cohort, the *ratio* of
resolution-pathway markers (ARG1, TREM2, P2Y12R, pro-resolving lipid mediators) to
pro-inflammatory markers should predict symptom persistence better than either term
alone, and should do so region by region. If resolution markers are uniformly low
wherever pro-inflammatory markers are high, the over-activation reading wins and this
proposal is refuted; if resolution markers are high in the same region as the
activation, the ratio claim is refuted in the opposite direction.

*Consequence:* where resolution capacity is the limiting term, suppressing activation
without restoring resolution may not resolve symptoms, and the therapeutic target
would be a different class of drug; where activation load is the limiting term, the
existing suppression strategy remains correct. The ratio, not the hypothesis label,
selects the treatment.

*Origin:* brainstorm (category 1).
] <spec:chronic-inflammation-failed-repair>

#speculation(title: [Regional Divergence: One Brain, Opposite Microglial States])[
*Certainty: 0.15.* Whole-brain averaging may be the wrong measurement. If cortical and
hippocampal microglia can hold opposite phenotypes simultaneously
@Morton2026persistentmicroglia, then a whole-brain TSPO-PET summary — the design used
in the strongest available human cohort @Visser2025TSPOfatigue — could dilute a real
regional signal toward the control mean, or attribute a reparative hippocampal signal
to pathology. Two consequences follow. First, a "subtype" defined by whole-brain
binding may under-count patients whose activation is regional. Second, the
cognitive-versus-affective symptom split (brain fog versus mood and memory) could
track a regional split rather than a global burden. A third possibility is that the
circumventricular organs — the area postrema in particular, which lacks a normal
blood-brain barrier and showed sustained microglial activation in a chronic-arthritis
model @Matsushita2021areapostrema — act as the entry port through which peripheral
senescence signals reach the parenchyma, making them the region where a systemic
signal would first be visible.

*Why this stays at low certainty:* the regional data are rodent; the human cohort
reported no regional subtype analysis in the available record; and the
circumventricular-organ proposal is an inference from one arthritis model.

*Falsifiable prediction:* a region-of-interest reanalysis of existing second-generation
TSPO-PET data should find that a subgroup has elevated binding confined to one or two
regions (with the whole-brain mean inside the control range), and that the affected
region differs between patients with predominant cognitive versus predominant
affective symptoms. If regional binding is uniformly distributed whenever the
whole-brain mean is elevated, the divergence proposal is refuted.

*Consequence:* if true, "brain inflammation" would need to be measured region by
region, and a negative whole-brain scan would not exclude a real focal signal — which
changes how future trials select and stratify patients.

*Origin:* brainstorm (categories 1 and 2; absorbs the area-postrema entry-port idea and
the cell-type-disambiguation research direction).
] <spec:chronic-inflammation-regional-divergence>

#speculation(title: [Astrocyte Network Destabilisation as a Cause of Fluctuating Brain Fog])[
*Certainty: 0.15.* The chronicity discussion is microglia-centred, but astrocytes
coordinate the properties that most closely match the *phenomenology* of cognitive
symptoms: they buffer extracellular potassium and glutamate, regulate local blood
flow, and couple to one another through gap junctions as a network. A review of
post-COVID neuroinflammation proposes astrocyte-mediated network destabilisation as a
mechanism for fluctuating cognitive symptoms and impaired memory reconsolidation
@Martins2026postcovidneuroinflammation. The distinguishing feature is *timescale*:
microglial activation is slow and cumulative, whereas astrocyte network state can
change over minutes to hours — which is the timescale on which brain fog fluctuates
within a day.

*Translation gap:* this is a review-level proposal with no ME/CFS measurement; GFAP,
the usual astrocyte marker, was null or lower in two post-COVID cohorts
@DeBoni2022postcovidheadache @Omdal2026LongCovidNeuroinflammation. The obvious rescue
— that GFAP reflects astrocyte injury rather than network coupling — must be applied
symmetrically: had GFAP been elevated, it would have been read as support, so the null
weakens rather than merely sidesteps the astrocyte-carrier claim. The timescale
contrast (minutes to hours for network state, days to weeks for microglial activation)
is likewise a premise of the proposal, not an established measurement in ME/CFS.

*Falsifiable prediction:* within-patient cognitive variability should correlate with a
dynamic astrocyte or network readout (for example MRS myo-inositol, or
functional-connectivity network stability) measured on the same day, and should not
correlate with a slow microglial marker (CSF sTREM2). If cognitive fluctuation tracks
microglial rather than astrocytic markers, this proposal is refuted.

*Consequence:* if true, the target for brain fog would be astrocyte function and
network stability rather than microglial suppression, and the measurement would have to
be repeated within a day rather than taken once.

*Origin:* brainstorm (category 1).
] <spec:chronic-inflammation-astrocyte-network>

#limitation(title: [TSPO Genotype Is an Unresolved Confound in Ungenotyped Second-Generation PET Studies])[
The TSPO rs6971 (Ala147Thr) polymorphism produces high-, mixed-, and low-affinity
binders, and second-generation tracers of the class used in the strongest available
cohort @Visser2025TSPOfatigue are genotype-sensitive: unstratified cohorts can
manufacture apparent group differences or hide real ones. The strongest cohort is
protected — all participants were genotyped and restricted to high-affinity binders —
and that protection also narrows the claim: the finding applies to high-affinity
binders and cannot be extended to mixed or low-affinity binders without evidence.
Whether the earlier ME/CFS TSPO studies were genotype-restricted is moot, because
they used first-generation [11C]PK11195, which is not rs6971-sensitive; genotype
cannot explain the Nakatomi-positive versus Raijmakers-negative discrepancy
@Nakatomi2014neuroinflammation @Raijmakers2021neuroinflammation. The confound
therefore applies to second-generation tracers such as DPA-714 and PBR28 — that is,
to the Visser cohort and to any future replication of it. TSPO heterogeneity across
second-generation studies may partly reflect genotype composition rather than
biology — an explanation that negative *second-generation* studies remain open to.
This does not overturn any claim in this section; it lowers the confidence that can
be placed in *any* ungenotyped second-generation TSPO-PET inference, in either
direction.

*Consequence:* a reader should treat second-generation TSPO-PET group differences as
provisional until genotype-restricted findings are independently replicated, and
future studies must report genotype composition to be interpretable — including
negative studies, whose null can otherwise be a genotype artefact.

*Origin:* brainstorm (category 12, evidence-quality).
] <lim:chronic-inflammation-rs6971>

#open-question(title: [Could Inactivity, Not Inflammation, Explain the Inflammatory Signal?])[
Reverse causation has not been excluded in any included study. Reduced activity —
itself a consequence of fatigue — alters immune regulation, adiposity, sleep and
vascular function, each of which can move the markers used here. Leptin signalling to
reactive microglia is one concrete route by which a peripheral, activity-linked state
could produce a central inflammatory signal @Abdelrheem2026leptinfm, and the
post-COVID cohort that supplies the strongest TSPO signal did not report
activity-matched controls @Visser2025TSPOfatigue. The same objection applies to the
null studies: a sedentary control group would be the correct comparator and none of the
cited studies used one.

The minimum design that would settle this is a study matched on objectively measured
activity (accelerometry) with a longitudinal component, asking whether central markers
change when activity is experimentally held constant. If group differences survive
activity matching and do not track activity change over time, reverse causation is
excluded; if they disappear under matching, the "inflammatory" signal is a
deconditioning signal.

*Consequence:* if reverse causation explains the signal, then the correct intervention
is graded activity support rather than immunomodulation — and the inflammatory framing
would be actively misleading.

*Origin:* brainstorm (categories 10 and 11; absorbs the minimum-design idea).
] <oq:chronic-inflammation-reverse-causation>

#synthesis(title: [What the Chronic-Inflammation Evidence Does and Does Not Settle])[
The environments above, read together with the persistence evidence that precedes them,
support a narrow conclusion and leave a wide one open. What survives scrutiny: a
measurable cerebral
TSPO-binding elevation exists in a minority of post-infectious patients roughly two to
three years after infection, it is not proportional to symptom burden, and it is not
universal (@spec:chronic-inflammation-subtype). What does not survive: that chronic CNS
inflammation is a general feature of ME/CFS, that any measurement to date establishes
chronicity in humans, or that suppression is the correct therapeutic direction. Three
proposals in this subsection are ways the surviving evidence could be organised — resolution
capacity versus activation load (@spec:chronic-inflammation-failed-repair), a
focal rather than global signal (@spec:chronic-inflammation-regional-divergence), and an
astrocyte rather than microglial carrier of the fluctuating component
(@spec:chronic-inflammation-astrocyte-network) — and each makes a prediction that would
refute it. Two measurement objections constrain all of them: TSPO genotype composition in
ungenotyped cohorts (@lim:chronic-inflammation-rs6971) and the absence of activity-matched
comparators (@oq:chronic-inflammation-reverse-causation). The most informative measurement is
temporal and compartmental: whether central markers persist after peripheral markers
normalise in the patients who go on to meet ME/CFS criteria. No included study has
measured this (@lim:chronic-inflammation-null-evidence), and the measurement is
expensive — repeat central sampling is not repeatable at will
(@spec:chronic-inflammation-strem2). The feasible first step is a single paired
peripheral-and-CSF sample in patients already undergoing a clinically indicated lumbar
puncture, stratified by time since infection; that design gives partial purchase on
the compartment question without requiring serial PET, and it is a step towards the
longitudinal design rather than a substitute for it.

*Consequence:* a patient should not conclude that "brain inflammation" has been
demonstrated in ME/CFS, and a clinician should not treat a TSPO-PET result as a
treatment-selecting test; the honest position is that a subgroup signal is plausible,
its meaning is unresolved, the most informative measurement is a longitudinal paired sample,
and the feasible next step is a single paired sample in patients who are already
having a lumbar puncture.
] <syn:chronic-cns-brain-inflammation-model>
