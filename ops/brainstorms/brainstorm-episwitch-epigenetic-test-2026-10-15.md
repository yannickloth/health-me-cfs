# Brainstorm: EpiSwitch 3D-Genomic Diagnostic — UPDATE (Critique + Competing Methylation Evidence)

**Date:** 2026-10-15
**Topic slug:** `episwitch-epigenetic-test`
**Cycle:** 3 (update — critical/competing evidence)
**Prior brainstorm:** `brainstorm-episwitch-epigenetic-test-2026-08-15.md` (16 ideas; cycle 1)
**Decision context:** PROCEED, but **NO certainty bumps** (all incoming evidence < 0.60 floor). New content is critical/competing; the critique is opinion-tier and must not be treated as proof of invalidity.
**Generation model:** deepseek-v4-pro (creative analysis — requires expert review)

---

## Caps reminder (must not overclaim)

1. **No certainty bumps this cycle.** Every incoming paper is below the 0.60 Evidence Quality Floor. Nothing here raises the EpiSwitch diagnostic claim (capped ≤0.50).
2. **The critique is opinion-tier** (`@Tirelli2026WheatAndChaff`, cert 0.35). Its *verifiable* points (irreproducible cohort, untested cross-condition specificity, null rituximab comparator) are useful; its OOT advocacy is self-serving. Do not treat the critique as refutation.
3. **The EpiSwitch classifier is NOT validated.** No independent replication, no ME/CFS Hi-C/TAD/CTCF study, no author response to the critique. Do not build ideas that assume the classifier works.
4. **The burden-axis problem is now empirically demonstrated** (`@Polli2026MethylationAxes`): a blood-epigenetic signal can carry a shared illness-burden component that does not separate ME/CFS from fibromyalgia.
5. **Do not propose oxygen-ozone therapy (OOT)** as a research direction. It appears only as the critique authors' competing interest — an example of advocacy-driven citation.

---

## What changed since cycle 1 (what these ideas build on)

Cycle 1 generated 16 ideas: frozen-chromatin state, external replication, cross-condition study, EpiSwitch-vs-HERV head-to-head, JAK-inhibitor probe, low-dose-IL-2 responder predictor, TRIM28 unifying node, ODE state variable, longitudinal PEM monitoring, butyrate/HDAC, composite score, CiRT/PSE bridge, generic-sickness hypothesis, causal-null assessment, overfitting risk, vendor COI. Those are NOT repeated here except where genuinely extended.

New material this cycle:
- **Tirelli 2026** — 10 objections; verified null rituximab comparator (`@Fluge2019RituximabPhase3`); irreproducible cohort definition; no confounder analysis; category error; vendor COI *and* critic COI.
- **Polli 2026** — the first post-Hunter cross-condition EWAS (ME/CFS vs FM): a **disease-specific axis (PC5)** aligned with PEM/cognition, and a **shared-burden axis (PC6)** that fails to separate ME/CFS from FM.
- **Sharma 2026** — CpG methylation (not 3D genome) as the tractable unifying readout across ME/CFS/LC/FM/hEDS.

The truth-value this cycle lies in **categories 10–12**: the burden-axis problem, the null hypothesis, and the layered evidence-quality concerns.

---

## Ranked Ideas

### 1. Two-axis architecture is a general property of ME/CFS blood epigenetics (mech: 3, tx: 0, expl: 4, math: 2, dx: 3)

**Category:** 1 (novel hypothesis)
**origin: brainstorm**
**Certainty: 0.40**

**Mechanistic rationale.** Polli 2026 found that a single blood-epigenetic dataset decomposes into two orthogonal components: a *disease-specific* axis (PC5, ME/CFS vs both FM and controls, aligned with PEM + cognition) and a *shared-burden* axis (PC6, patient-vs-control, aligned with widespread pain/sleep/visceral symptoms). The structural hypothesis is that this two-axis architecture is not idiosyncratic to CpG methylation but is a general property of *any* blood epigenetic readout in ME/CFS — including 3D chromosome-conformation. If true, the EpiSwitch panel's 200 markers must also contain a disease-specific and a burden-shared component, and its reported "98% specificity vs healthy controls" conflates the two.

**Evidence link.** `@Polli2026MethylationAxes` (two-axis structure) + `@Hunter2025` (single-axis, healthy-controls-only discrimination). The generalization is inferred, not yet demonstrated for 3D genome.

**Falsifiable prediction.** Running the EpiSwitch panel on a three-arm cohort (ME/CFS / FM / controls) yields a marker subset that fails to separate ME/CFS from FM (burden component) and a (possibly empty) subset that does (disease component). Falsified if the EpiSwitch signature is *entirely* disease-specific with no shared component — which would make 3D genome unlike methylation, an important negative result.

**Consequence for non-specialists:** Every blood "fingerprint" of ME/CFS may be a mix of two things — a signal of the disease itself, and a signal of simply being chronically ill — and only by separating the two can anyone know which part is actually ME/CFS.

---

### 2. The disease-specific signal tracks PEM/cognition programs, not the immune-activation hub (mech: 3, tx: 1, expl: 4, math: 1, dx: 2)

**Category:** 1 (novel hypothesis)
**origin: brainstorm**
**Certainty: 0.35**

**Mechanistic rationale.** The EpiSwitch panel's headline enrichment is IL-2/JAK-STAT — an *immune-activation* hub (`@Hunter2025`). But Polli's *disease-specific* axis (PC5) aligned with **post-exertional malaise and cognitive symptoms**, not with the immune/cytokine programs that dominated the shared-burden axis (PC6: NF-κB, cytokine, widespread pain, sleep). This inverts the assumed priority: the *immune* signal may be the generic, shared part, while the *ME/CFS-specific* signal may be neuro-energetic/cognitive in character. If so, the field has been over-weighting the wrong (immune) axis because it is the loudest, not because it is the most disease-specific.

**Evidence link.** `@Polli2026MethylationAxes` (PC5 = PEM/cognition; PC6 = NF-κB/cytokine/burden) + `@Hunter2025` (IL-2/JAK-STAT hub emphasized). Contrast is inferred across platforms.

**Falsifiable prediction.** When the EpiSwitch marker set is partitioned against Polli's PC5/PC6 DMRs, the *disease-specific* EpiSwitch markers co-enrich with PC5 (PEM/cognition) programs rather than with the IL-2/JAK-STAT immune hub. Falsified if the disease-specific 3D-genomic component is itself immune-centric, in which case 3D genome and methylation capture different disease biology.

**Consequence for non-specialists:** The part of the blood test that is actually *specific* to ME/CFS may be tied to the crash-and-brain-fog symptoms, while the immune signal everyone has focused on may just be a generic "this person is sick" flag.

---

### 3. Map the 200 EpiSwitch markers onto Polli's PC5/PC6 structure (mech: 2, tx: 0, expl: 2, math: 1, dx: 4)

**Category:** 2 (research direction)
**origin: brainstorm**
**Certainty: 0.15** (plan, not a finding)

**Mechanistic rationale.** The decisive cheap experiment that this cycle's evidence makes possible: re-annotate the 200 EpiSwitch chromosome-conformation markers against the DMR sets Polli identified (591 PC5-DMRs, 54 PC6-DMRs) and ask which axis the EpiSwitch panel belongs to. This requires no new wet-lab data for a first pass — only cross-referencing the published locus lists — and directly answers whether the EpiSwitch signature is disease-specific, burden-shared, or a mix.

**Evidence link.** `@Hunter2025` (200 markers, published loci) + `@Polli2026MethylationAxes` (591 + 54 DMRs).

**Falsifiable prediction.** The 200 EpiSwitch markers show no significant overlap/enrichment with either PC5-DMRs or PC6-DMRs (i.e., the two layers are mechanistically disjoint). This would not falsify the EpiSwitch diagnostic but would show its biology is not the biology the methylation axes capture — itself important.

**Consequence for non-specialists:** Before spending money on new patients, researchers can re-use two already-published gene lists to ask whether the DNA-folding test and the DNA-methylation test are seeing the same disease — an almost-free first step.

---

### 4. Confounder-controlled replication (CMV/EBV/SARS-CoV-2 status, medication, smoking) (mech: 1, tx: 0, expl: 1, math: 1, dx: 4)

**Category:** 2 (research direction)
**origin: brainstorm**
**Certainty: 0.15** (plan)

**Mechanistic rationale.** Tirelli objection (7) — no confounder analysis — is one of the critique's *substantiated* points and is independent of its COI. DNA methylation and chromatin state are both known to be altered by latent herpesvirus reactivation (CMV/EBV), by SARS-CoV-2 infection history, by chronic medications, and by smoking. A replication that does not measure and covary for these cannot distinguish an ME/CFS signature from a "latent-virus-status + medication + smoking" signature. This applies to *both* Hunter 2025 and Polli 2026.

**Evidence link.** `@Tirelli2026WheatAndChaff` (objection 7, substantiated) + `@Hunter2025` + `@Polli2026MethylationAxes` (neither reported full confounder adjustment).

**Falsifiable prediction.** After covarying for CMV/EBV serostatus, SARS-CoV-2 exposure, medication, and smoking, the ME/CFS-vs-control epigenetic separation shrinks materially (e.g., PC5 or the EpiSwitch signature loses significance). Falsified if the disease-specific signal survives full confounder adjustment unchanged — which would substantially strengthen it.

**Consequence for non-specialists:** If a patient's latent-virus history, medications, or smoking status can partly fake the ME/CFS signal, then no blood test is trustworthy until those are measured and corrected for — and neither main study has fully done so.

---

### 5. The rituximab null reclassifies ME/CFS as non-B-cell-mediated, narrowing the immune-drug space (mech: 2, tx: 3, expl: 2, math: 0, dx: 0)

**Category:** 3 (drug/medication — a *negative* implication)
**origin: brainstorm**
**Certainty: 0.45** (the underlying null result is well-established)

**Mechanistic rationale.** The critique's verified objection (5) — rituximab Phase III was null (26.0% vs 35.1% placebo, `@Fluge2019RituximabPhase3`) and targets CD20/B-cells, off-axis from the IL-2/JAK-STAT signal the EpiSwitch panel reports — has a constructive corollary: ME/CFS is *not* a B-cell-mediated autoimmune disease, so the entire class of B-cell-directed immunomodulation (rituximab, obinutuzumab, ofatumumab) is mechanistically off-target, while T-cell/cytokine-directed approaches (low-dose IL-2, JAK inhibition) remain the only mechanistically coherent immune space. This directly undermines the Hunter2026 cross-condition convergence claim, which groups ME/CFS with RA/MS (B-cell/autoimmune diseases) as if they shared a druggable network.

**Evidence link.** `@Fluge2019RituximabPhase3` (null) + `@Tirelli2026WheatAndChaff` (objection 5, correct) + `@Hunter2026EpiSwitchCrossCondition` (groups ME/CFS with RA/MS).

**Falsifiable prediction.** Any trial of B-cell depletion in ME/CFS would show no benefit (already supported), and network analyses that place ME/CFS in a B-cell/autoimmune cluster would fail to produce a shared actionable target. Falsified if a genuinely novel B-cell-directed agent (non-depleting) shows efficacy — which would reopen the space.

**Consequence for non-specialists:** The failure of the B-cell drug rituximab in ME/CFS tells us *which door is closed* — so scarce trial money should go to T-cell and cytokine approaches, not to repeating the B-cell experiment.

---

### 6. One-carbon/methylation substrate (folate/B12/SAMe) as a probe of CpG-axis modifiability (mech: 2, tx: 2, expl: 1, math: 0, dx: 0)

**Category:** 4 (supplement/nutraceutical)
**origin: brainstorm**
**Certainty: 0.15**

**Mechanistic rationale.** Cycle 1 proposed butyrate/HDAC as a probe of the *3D-genome* layer. Polli's axes are **CpG methylation**, whose substrate is the one-carbon cycle (folate → B12 → SAMe → S-adenosylmethionine, the universal methyl donor). If the ME/CFS disease-specific methylation axis (PC5) is *modifiable* by substrate supply, then a controlled, supervised trial of B-vitamin/SAMe precursors would shift PC5 — a cheap, low-risk test of whether the disease axis is a malleable state rather than a fixed trait. This is a probe, not a treatment claim.

**Evidence link.** `@Polli2026MethylationAxes` (CpG axes provide the readout) + `@Sharma2026MethylationUnifying` (methylation as the tractable layer). One-carbon-cycle ↔ methylation link is general biochemistry (no ME/CFS-specific bib key yet; mark as no direct literature anchor).

**Falsifiable prediction.** A 12-week folate/B12/SAMe regimen produces no measurable shift in PC5 methylation → the disease axis is not substrate-limited (or the relevant loci are not substrate-responsive). ✓ Low-risk.

**Consequence for non-specialists:** Because this version of the "fingerprint" is made of chemical tags that the body writes using B-vitamins, a safe, supervised trial of those vitamins could tell us whether the ME/CFS-specific tag is something we can erase — or something fixed.

---

### 7. Pacing/burden-reduction should preferentially shift the burden axis (PC6), not the disease axis (PC5) (mech: 2, tx: 2, expl: 2, math: 1, dx: 2)

**Category:** 5 (non-pharmacological)
**origin: brainstorm**
**Certainty: 0.25**

**Mechanistic rationale.** If PC6 is a *general illness-burden* methylation axis (widespread pain, sleep disturbance, visceral symptoms), then interventions that reduce *overall* illness burden — pacing within the energy envelope, sleep restoration, symptom management — should preferentially move PC6, while leaving PC5 (the PEM/cognition disease axis) comparatively stable. This gives the document's pacing framework an *epigenetic* readout hypothesis: pacing reduces burden, and a burden-axis biomarker is how you would measure that objectively.

**Evidence link.** `@Polli2026MethylationAxes` (PC6 = burden) + the document's existing pacing framework (no bib key; internal).

**Falsifiable prediction.** In a longitudinal study, effective pacing reduces symptom burden but PC6 methylation does not move (or moves indistinguishably from non-paced controls) → the burden axis is not tracking recoverable burden, undermining its use as a monitoring endpoint. Falsified if pacing reliably moves PC6 but not PC5.

**Consequence for non-specialists:** If a "burden" fingerprint moves when a patient successfully paces and rests, clinicians would gain a blood-based way to confirm that pacing is doing its job — without having to wait for subjective fatigue scores.

---

### 8. Two-component composite: regress out the burden axis, score the disease axis only (mech: 2, tx: 0, expl: 2, math: 2, dx: 4)

**Category:** 6 (combination) / 9 (diagnostic)
**origin: brainstorm**
**Certainty: 0.30**

**Mechanistic rationale.** Cycle 1's composite-score idea (idea 11) assumed stacking epigenetic layers improves cross-condition discrimination. Polli's finding sharpens this: a naive composite that sums layers will be *dominated* by the burden component (which is the loudest, most generic signal). The correct composite must **explicitly estimate and regress out the burden axis (PC6-like component) before scoring the disease axis (PC5-like component)** — across whatever layers are stacked (3D genome + CpG + HERV + lncRNA). This is a genuine extension, not a repeat: the two-axis structure changes *how* the composite must be built.

**Evidence link.** `@Polli2026MethylationAxes` (the two-axis decomposition) + `@Hunter2025` + `@GimenezOrenga2025HERVsegregation` + `@Wyns2026OPRM1methylation` + `@Yang2018vlncRNA` (the layers to combine).

**Falsifiable prediction.** A composite that does *not* separately model the burden axis fails to beat the best single modality for ME/CFS-vs-FM discrimination (AUC), whereas a burden-adjusted composite does. Falsified if burden-adjustment confers no improvement — i.e., the burden component is not actually contaminating the individual layers.

**Consequence for non-specialists:** The fix for "the test can't tell ME/CFS from fibromyalgia" is not just to combine more tests — it is to first mathematically *remove* the shared 'just being sick' part, then look at what remains.

---

### 9. Two-latent-variable formalization: disease axis D(t) + burden axis B(t) (mech: 3, tx: 0, expl: 2, math: 5, dx: 1)

**Category:** 7 (mathematical model extension)
**origin: brainstorm**
**Certainty: 0.25**

**Mechanistic rationale.** Cycle 1's idea 8 added a single bistable slow variable `C(t)` (chromatin loop state) to the DAG/ODE. Polli's two-axis result motivates replacing/augmenting this with **two latent slow variables**: `D(t)` (disease-specific, PEM/cognition-aligned, present only in ME/CFS) and `B(t)` (burden, present in any chronic illness, shared across ME/CFS/FM/LC/hEDS). The model predicts: (a) `B(t)` is driven by generic illness load and correlates *across* diseases, while (b) `D(t)` is driven by ME/CFS-specific pathophysiology and does not. This gives the formal model a principled way to represent the "specific vs non-specific" distinction that the biomarker literature has been conflating.

**Evidence link.** `@Polli2026MethylationAxes` (D = PC5, B = PC6) + `@Ward2025CD4threeD` (slow chromatin dynamics) + `@Wei2025TRIM28chromatin` (loop ↔ signalling). New DAG nodes + ODE variables with quantifiable timescales.

**Falsifiable prediction.** Fitting `B(t)` across diseases shows it is a common latent factor (high cross-disease correlation), while `D(t)` is orthogonal to it and ME/CFS-specific. Falsified if the two latent variables are statistically indistinguishable (a single factor suffices) — which would refute the two-axis structure's generalizability.

**Consequence for non-specialists:** Writing "disease signal" and "sickness signal" as two separate mathematical quantities lets modelers predict — on paper — which experiments can ever separate them, before running those experiments.

---

### 10. The burden axis as the empirical substrate for the ME/CFS–FM–LC–hEDS overlap (mech: 3, tx: 1, expl: 4, math: 1, dx: 2)

**Category:** 8 (cross-disease bridge)
**origin: brainstorm**
**Certainty: 0.40**

**Mechanistic rationale.** Clinicians have long observed that ME/CFS, fibromyalgia, long COVID, and hEDS blur together in diagnosis. Sharma 2026 argues CpG methylation is the unifying readout for these. Polli's PC6 provides the *mechanism* for that overlap: a shared, symptom-burden-aligned methylation axis that does not separate the conditions. The bridge is: **the diagnostic confusion between these conditions is not just a nosology problem — it reflects a real, shared molecular "chronic-illness" state (PC6) sitting on top of distinct disease-specific states (PC5 for ME/CFS, others for FM/LC).**

**Evidence link.** `@Polli2026MethylationAxes` (PC6 shared) + `@Sharma2026MethylationUnifying` (unifying framework) + the document's comparative-nosology chapter (internal).

**Falsifiable prediction.** In a multi-condition EWAS (ME/CFS + FM + LC + hEDS + controls), a single shared-burden factor explains most of the patient-vs-control variance across *all* conditions, while disease-specific factors are pairwise orthogonal. Falsified if each condition carries a fully distinct signature with no shared burden factor.

**Consequence for non-specialists:** The reason ME/CFS and fibromyalgia are so hard to tell apart is that they share a real molecular "chronic illness" layer — which means future tests must target the thinner disease-specific layer underneath it.

---

### 11. The rituximab null is a caution against the cross-condition "shared autoimmune network" convergence claim (mech: 2, tx: 1, expl: 3, math: 1, dx: 0)

**Category:** 8 (cross-disease bridge — negative)
**origin: brainstorm**
**Certainty: 0.40**

**Mechanistic rationale.** Hunter2026's cross-condition convergence places ME/CFS in a network with RA and MS and implies a shared regulatory architecture (`@Hunter2026EpiSwitchCrossCondition`). The rituximab null (`@Fluge2019RituximabPhase3`) is a direct empirical falsification of the *strongest* form of that claim: if ME/CFS genuinely shared an autoimmune network with RA/MS, B-cell depletion — which works in RA/MS — should have worked in ME/CFS. It did not. Therefore the "shared network" is more plausibly a shared *burden/immune-activation* layer (PC6-like) than a shared *druggable autoimmune* mechanism. The convergence claim must be demoted accordingly.

**Evidence link.** `@Hunter2026EpiSwitchCrossCondition` (convergence) + `@Fluge2019RituximabPhase3` (null, the falsification) + `@Polli2026MethylationAxes` (shared layer is burden, not disease).

**Falsifiable prediction.** The cross-condition network's shared hubs (RUNX1, STAT1, etc.) fail to translate into a shared therapeutic target that responds to the same intervention across ME/CFS and RA/MS. Falsified if a shared network-derived target shows cross-disease efficacy — which would revive the convergence claim.

**Consequence for non-specialists:** The 2026 "shared network" claim groups ME/CFS with autoimmune diseases — but the clean failure of an autoimmune drug in ME/CFS is a warning that the shared part may be generic sickness, not shared cause.

---

### 12. Disease-axis (PC5-like) score, not total signal, is the correct diagnostic target (mech: 2, tx: 0, expl: 2, math: 1, dx: 5)

**Category:** 9 (diagnostic/biomarker)
**origin: brainstorm**
**Certainty: 0.44**

**Mechanistic rationale.** The single most important *diagnostic* reframing from this cycle: a useful ME/CFS diagnostic must score the **disease-specific axis (PC5-like) and regress out the burden axis (PC6-like)**. Any biomarker that reports sensitivity/specificity against healthy controls only — as EpiSwitch does — is measuring total signal, which is dominated by the burden component and therefore cannot discriminate ME/CFS from fibromyalgia, depression, or long-COVID. The diagnostic target is the *residual* signal after burden removal.

**Evidence link.** `@Polli2026MethylationAxes` (the two axes) + `@Hunter2025` (healthy-controls-only, i.e., burden-contaminated) + `@Sharma2026MethylationUnifying` (methylation as the layer to build it on).

**Falsifiable prediction.** An EpiSwitch-derived disease-axis score fails to separate ME/CFS from FM/depression/long-COVID beyond chance (AUC < 0.7) in a multi-arm cohort → the platform has no disease-specific diagnostic content, only burden content. Falsified (i.e., the test is salvageable) if a burden-adjusted EpiSwitch score achieves cross-condition AUC ≥ 0.8.

**Consequence for non-specialists:** The test that matters is not "can you tell a sick person from a healthy one" — it is "can you tell ME/CFS from fibromyalgia and depression," and the way to build that test is to subtract the generic sickness signal first.

---

### 13. The EpiSwitch 98% specificity may be 100% burden-axis signal with zero disease-specific content (mech: 2, tx: 0, expl: 3, math: 1, dx: 3)

**Category:** 10 (reason the mechanism may NOT be relevant)
**origin: brainstorm**
**Certainty: 0.50** (flagship critical idea — the most likely-to-be-true of this cycle)

**Mechanistic rationale.** This is the strongest single truth-claim available this cycle. Hunter 2025 tested 47 severely ill (housebound) ME/CFS patients against 61 *healthy* controls. "Severely ill vs healthy" is the maximum-contrast, minimum-information comparison: it is exactly the comparison where a *generic illness-burden* signal — deconditioning, chronic stress, sleep loss, polypharmacy, low-grade immune activation — will maximally separate. Polli 2026 then demonstrated empirically that a blood-epigenetic signal *does* contain a component (PC6) that separates patients from controls without separating ME/CFS from FM. It is therefore entirely possible — and currently unexcluded — that the EpiSwitch signature's entire discriminative power is PC6-equivalent (burden) signal, with **zero disease-specific (PC5-equivalent) content**. Under this reading, the 92%/98% figures are a measure of "how sick vs how healthy," not "ME/CFS vs other illness."

**Evidence link.** `@Hunter2025` (healthy-controls-only) + `@Polli2026MethylationAxes` (PC6 burden axis exists and is real) + `@Tirelli2026WheatAndChaff` (objection 4: shared pleiotropic IL-2/TLR pathways are non-specific).

**Falsifiable prediction.** Running the EpiSwitch panel against FM/depression/idiopathic-fatigue comparators shows ME/CFS is *not* discriminated from them (AUC ~0.5) — i.e., the signature's only content is patient-vs-healthy burden. This is directly testable and is the decisive experiment the vendor has not run.

**Consequence for non-specialists:** The single most important possibility this new evidence raises is that the "98% accurate" blood test is only detecting "how sick you are," not "whether you have ME/CFS" — and no one has yet run the comparison that would settle it.

---

### 14. Better alternative: conventional CpG methylation is cheaper, more reproducible, and already shows disease-specific signal — 3D genome adds no demonstrated value (mech: 1, tx: 0, expl: 2, math: 0, dx: 3)

**Category:** 10 (better alternative explanation)
**origin: brainstorm**
**Certainty: 0.45**

**Mechanistic rationale.** Sharma 2026 argues CpG methylation is the tractable unifying readout for ME/CFS/LC/FM/hEDS on three grounds EpiSwitch cannot currently match: (1) methylation arrays (Illumina EPIC) are cheap, standardized, and run in many independent labs — EpiSwitch is a proprietary single-vendor platform; (2) methylation is already the substrate of the *majority* of ME/CFS epigenetic studies (`@Helliwell2020methylation`, `@Peppercorn2025methylation`), giving it a replication base 3D genome lacks; (3) Polli 2026 has now *already* demonstrated a disease-specific methylation axis (PC5) in a cross-condition design — something EpiSwitch has never done. The "better alternative" claim is not that methylation is proven diagnostic, but that it is the cheaper, more replicable, and *already-further-along* layer, so 3D genome currently offers no marginal advantage.

**Evidence link.** `@Sharma2026MethylationUnifying` + `@Polli2026MethylationAxes` + `@Helliwell2020methylation` / `@Peppercorn2025methylation` (methylation replication base) + `@Hunter2025` (proprietary, unreplicated).

**Falsifiable prediction.** If a 3D-genome panel were shown to add *incremental* cross-condition discrimination over methylation alone (i.e., a burden-adjusted composite of 3D + CpG beats CpG alone at ME/CFS-vs-FM AUC), then 3D genome earns its cost. Falsified (i.e., methylation-only wins) if 3D genome adds no incremental AUC — in which case the field should consolidate on methylation.

**Consequence for non-specialists:** Even if the DNA-folding test is real, a cheaper, already-widely-available DNA-tag test may do the same job better — so the practical question is whether the fancier test earns its extra cost and proprietary lock-in.

---

### 15. Null: if the EpiSwitch signature plays no causal role (and is burden-only), the IL-2/JAK-STAT "hub" is a generic immune readout and the 2026 cross-condition convergence collapses to shared illness burden (mech: 1, tx: 0, expl: 2, math: 1, dx: 2)

**Category:** 11 (null hypothesis assessment)
**origin: brainstorm**
**Certainty: 0.45** (assessment of how likely the causal/mechanistic reading is false)

**Mechanistic rationale.** The clean null: **the EpiSwitch signature plays no causal role in ME/CFS, and its apparent mechanistic "hub" (IL-2/JAK-STAT) is a generic immune-activation readout that appears whenever any chronically-ill cohort is compared to healthy controls.** Under this null, three existing in-document claims require revision: (1) the IL-2/JAK-STAT mechanistic bridge (`@hyp:3d-chromatin-IL2-jakstat-axis`) would be downgraded from "pathway implicated by ME/CFS biology" to "pathway implicated by generic immune perturbation"; (2) the TRIM28 unifying node (`@hyp:trim28-unifying-node`) would survive only as a non-ME/CFS-specific chromatin-maintenance mechanism, not a ME/CFS driver; (3) the 2026 cross-condition convergence (`@hyp:cross-condition-3d-convergence`) would be reinterpreted as the *expected* result of comparing five chronic-illness cohorts — a shared burden layer — rather than a shared disease architecture. The only evidence *against* this null is non-ME/CFS T-cell/mouse work (`@Wei2025TRIM28chromatin`, `@Ward2025CD4threeD`, `@Lee2025CTCFenhancer`), which establishes plausibility but not ME/CFS causation.

**Evidence link.** `@Hunter2025` (associational) + `@Polli2026MethylationAxes` (burden axis is real) + `@Fluge2019RituximabPhase3` (a shared-network prediction already failed) + the non-ME/CFS mechanism papers.

**Falsifiable prediction.** Intervening to normalize the chromatin/immune state (e.g., JAK or HDAC inhibition) changes the *signature* but not the *symptoms* — confirming the non-causal, burden-only reading. Conversely, symptom improvement tightly coupled to signature normalization would reject the null.

**Consequence for non-specialists:** The honest default is that this DNA-folding finding is a bystander — a fingerprint of being sick, not the cause of being sick — and the burden is now on the finding's proponents to show it does anything beyond that.

---

### 16. Cell-type composition + unmeasured confounders (medication, latent virus, smoking) are unaddressed in both the 3D-genome and methylation studies (mech: 0, tx: 0, expl: 1, math: 1, dx: 2)

**Category:** 12 (evidence quality)
**origin: brainstorm**
**Certainty: 0.45**

**Mechanistic rationale.** Two technical confounds cut across *both* Hunter 2025 and Polli 2026. (1) **Cell-type composition:** EpiSwitch uses whole blood, Polli used PBMCs — but both are bulk cell mixtures, and epigenetic signals are strongly cell-type dependent; a signature can arise purely from shifts in lymphocyte/monocyte proportions driven by illness or infection, not from per-cell chromatin changes. (2) **Unmeasured confounders:** neither study fully covariates CMV/EBV serostatus, SARS-CoV-2 history, medication use, or smoking — all of which measurably alter both methylation and chromatin state (Tirelli objection 7, substantiated). Together these mean the "ME/CFS-specific" and "burden" axes could be partially or fully confounded by cell-composition and exposure variables.

**Evidence link.** `@Tirelli2026WheatAndChaff` (objection 7) + `@Hunter2025` (whole blood) + `@Polli2026MethylationAxes` (PBMC, partial medication sensitivity only).

**Falsifiable prediction.** After cell-type deconvolution (e.g., reference-based composition estimation) and full confounder adjustment, the ME/CFS-specific axis (PC5) and/or the EpiSwitch signature attenuate materially. Falsified if both survive deconvolution + confounder adjustment unchanged.

**Consequence for non-specialists:** A blood test is only as good as what it *controls for* — if shifts in the mix of immune cells (from any illness or infection) can mimic the ME/CFS signal, the test's apparent accuracy is partly an illusion.

---

### 17. Both sides of this literature are interest-polluted: vendor COI on one side, critic's oxygen-ozone advocacy on the other (mech: 0, tx: 0, expl: 1, math: 0, dx: 1)

**Category:** 12 (evidence quality — meta)
**origin: brainstorm**
**Certainty: 0.40**

**Mechanistic rationale.** This is a *meta*-evidence-quality point, not a biological one. The EpiSwitch evidence is saturated with vendor COI (Oxford BioDynamics authors on every primary platform paper, including both `@Hunter2025` and `@Hunter2026EpiSwitchCrossCondition`). But the *critique* is itself interest-polluted: Tirelli 2026 declares "no conflict of interest" while co-author Franzini is affiliated with the Italian Oxygen-Ozone Therapy society (SIOOT), and references 5–7 are the authors' own oxygen-ozone papers — the demand that Hunter cite OOT is advocacy, not methodology. The consequence is that **both the claim and the counter-claim come from parties with a stake in the outcome**, and the literature's neutral middle ground (independent replication) is empty. This is itself a reason the field has not resolved the question.

**Evidence link.** `@Tirelli2026WheatAndChaff` (declared "no COI" + SIOOT affiliation + self-citing OOT) + `@Hunter2025` / `@Hunter2026EpiSwitchCrossCondition` (vendor COI). No new data.

**Falsifiable prediction.** An independent, stakeholder-free replication (no vendor funding, no therapy to sell on either side) would produce performance figures materially below the vendor's headline numbers. Falsified if independent replication matches vendor figures — which would be the cleanest possible vindication of the platform.

**Consequence for non-specialists:** The company selling the test has a stake in it working, and the critics pushing back have a stake in *their* alternative therapy — so the only trustworthy answer will come from neutral scientists with no horse in the race, and that study does not exist yet.

---

## Idea Scoring Table

| ID | Title | Cat | Cert | mech | tx | expl | math | dx | Usefulness (sum) |
|----|-------|-----|------|------|----|------|------|-----|------------------|
| 13 | EpiSwitch specificity may be 100% burden-axis signal | 10 | 0.50 | 2 | 0 | 3 | 1 | 3 | 9 |
| 12 | Disease-axis score, not total signal, is the diagnostic target | 9 | 0.44 | 2 | 0 | 2 | 1 | 5 | 10 |
| 10 | Burden axis as substrate for ME/CFS–FM–LC–hEDS overlap | 8 | 0.40 | 3 | 1 | 4 | 1 | 2 | 11 |
| 1 | Two-axis architecture is a general property | 1 | 0.40 | 3 | 0 | 4 | 2 | 3 | 12 |
| 2 | Disease-specific signal = PEM/cognition, not immune hub | 1 | 0.35 | 3 | 1 | 4 | 1 | 2 | 11 |
| 14 | Better alternative: CpG methylation beats 3D genome | 10 | 0.45 | 1 | 0 | 2 | 0 | 3 | 6 |
| 15 | Null: burden-only → IL-2 hub is generic, convergence collapses | 11 | 0.45 | 1 | 0 | 2 | 1 | 2 | 6 |
| 16 | Cell-type + confounder confounding unaddressed | 12 | 0.45 | 0 | 0 | 1 | 1 | 2 | 4 |
| 17 | Both sides interest-polluted (vendor vs OOT advocacy) | 12 | 0.40 | 0 | 0 | 1 | 0 | 1 | 2 |
| 5 | Rituximab null narrows immune-drug space | 3 | 0.45 | 2 | 3 | 2 | 0 | 0 | 7 |
| 11 | Rituximab null cautions against shared-autoimmune convergence | 8 | 0.40 | 2 | 1 | 3 | 1 | 0 | 7 |
| 8 | Two-component burden-adjusted composite | 6/9 | 0.30 | 2 | 0 | 2 | 2 | 4 | 10 |
| 9 | Two-latent-variable D(t)+B(t) formalization | 7 | 0.25 | 3 | 0 | 2 | 5 | 1 | 11 |
| 7 | Pacing shifts burden axis (PC6), not disease axis (PC5) | 5 | 0.25 | 2 | 2 | 2 | 1 | 2 | 9 |
| 3 | Map 200 EpiSwitch markers onto PC5/PC6 DMRs | 2 | 0.15 | 2 | 0 | 2 | 1 | 4 | 9 |
| 4 | Confounder-controlled replication | 2 | 0.15 | 1 | 0 | 1 | 1 | 4 | 7 |
| 6 | One-carbon substrate probe of CpG-axis modifiability | 4 | 0.15 | 2 | 2 | 1 | 0 | 0 | 5 |

**Scoring note:** as in cycle 1, `dx`-heavy ideas (12, 8, 3, 4) are plans/targets with low `mech`; the critical-category ideas (13, 14, 15, 16, 17) carry the highest *certainty of being correct* (0.40–0.50) precisely because they are skeptical assessments resting on the strongest evidence (Polli's empirical burden axis + Fluge's established null), not on the unvalidated EpiSwitch claim. Certainty values distinguish "certainty the concern/idea is valid" from "certainty of a finding"; research plans (3, 4) carry low certainty by construction, not low value.

---

## Category coverage

- Cat 1 (novel hypotheses): 1, 2
- Cat 2 (research directions): 3, 4
- Cat 3 (drug/medication): 5
- Cat 4 (supplement/nutraceutical): 6
- Cat 5 (non-pharmacological): 7
- Cat 6 (combinations + access): 8
- Cat 7 (mathematical model): 9
- Cat 8 (cross-disease bridges): 10, 11
- Cat 9 (diagnostic/biomarker): 12
- Cat 10 (NOT relevant / disprove / better alternative): 13, 14
- Cat 11 (null hypothesis): 15
- Cat 12 (evidence quality): 16, 17

**Critical categories 10–12 = 5 ideas (13–17)** — the strongest section by design, as required for a critique-driven update.

---

## Document Integration Recommendations

### Highest priority (this cycle's truth-value)

1. **Idea 13 (burden-axis-only)** → fold into the falsifiability field of the existing EpiSwitch registry entry (`@hyp:episwitch-3d-chromatin-biomarker`) and the existing open-question `@oq:episwitch-cross-condition-discrimination`. It is already substantially reflected in the integrated section's `@spec:methylation-shared-burden-axis` — this idea sharpens it to the *specific* claim that the EpiSwitch 92%/98% may be burden-only.

2. **Idea 12 (disease-axis score)** → candidate `#open-question` or research-agenda entry: the correct diagnostic target is the burden-adjusted disease axis, and this is what every candidate biomarker (not just EpiSwitch) should be scored on.

3. **Idea 5 + 11 (rituximab null)** → the document already records the null (`@Fluge2019RituximabPhase3`) and the 2026 convergence claim (`@hyp:cross-condition-3d-convergence`) with its limitations (`@lim:cross-condition-convergence-evidence`). Idea 11 adds the explicit cross-link: the rituximab null is a *falsification* of the shared-autoimmune reading of the convergence claim, and should be cited as such in `@lim:cross-condition-convergence-evidence`.

### Secondary (future cycles)

- Ideas 1, 2, 10 (two-axis generalizability; disease signal = PEM/cognition; burden = overlap substrate) → future `#hypothesis-box` candidates in ch36, citing `@Polli2026MethylationAxes`.
- Idea 9 (two-latent-variable model) → formalization-pipeline backlog (extends cycle-1 idea 8).
- Idea 8 (burden-adjusted composite) → extends the existing composite-epi-score open-question.
- Idea 17 (both-sides interest pollution) → could strengthen the existing critique limitation `@lim:episwitch-methodological-critique` by noting the critic's own COI is already flagged there.

### Certainty levels (summary)

- Critical assessments (13, 14, 15, 16, 17): **Medium (0.40–0.50)** — the most likely-to-be-correct ideas this cycle.
- Novel hypotheses (1, 2, 10): **Low-Medium (0.35–0.40)** — grounded in Polli's empirical axes, but the 3D-genome generalization is inferred.
- Negative drug implication (5): **Medium (0.45)** for the *null* itself, though it is a narrowing/negative claim, not a positive therapeutic target.
- Research plans (3, 4): **actionable plans**, not findings.
- Supplement probe (6): **Low (0.15)**, low-risk.

---

## Caveats & Limitations

- All ideas are creative extrapolation; `origin: brainstorm`. Requires expert review.
- No certainty bump is implied by anything here; the EpiSwitch diagnostic claim stays capped ≤0.50, and the critique (0.35) is below the 0.60 floor.
- The critique is opinion-tier; ideas 5, 11, 16 use only its *independently verifiable* points (rituximab null, no confounders), not its OOT advocacy.
- Oxygen-ozone therapy is deliberately excluded as a candidate; it appears only in idea 17 as an example of advocacy-driven citation.
- Polli 2026 is female-only (n=188) and single-lab; its axes are unvalidated in males (~25% of ME/CFS).
- No ME/CFS Hi-C/TAD/CTCF study exists; all 3D-genome-to-ME/CFS causal claims remain inference.

---

## Expert Review Recommended

- [ ] Biostatistician / EWAS methodologist (validate burden-axis decomposition + cell-type deconvolution concerns, ideas 12/13/16)
- [ ] Rheumatologist or B-cell immunologist (validate rituximab-null narrowing, ideas 5/11)
- [ ] Epigeneticist (validate one-carbon-substrate modifiability + methylation-vs-3D-genome trade-off, ideas 6/14)
- [ ] Patient advocate (feasibility of pacing-coupled longitudinal methylation sampling, idea 7)
