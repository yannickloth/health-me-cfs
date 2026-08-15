# Brainstorm: EpiSwitch 3D-Genomic Diagnostic for ME/CFS

**Date:** 2026-08-15
**Topic slug:** `episwitch-epigenetic-test`
**Seed paper:** Hunter et al. 2025 (_J Transl Med_, @Hunter2025) — n=47 severe ME/CFS vs 61 healthy controls; 200 chromosome-conformation markers; 92% sens / 98% spec / 96% acc; IL-2/JAK-STAT enrichment.
**Decision context:** PROCEED. Diagnostic claim capped at certainty ≤0.50 (research-stage, vendor-affiliated, unreplicated). IL-2/JAK-STAT mechanism may cite Wei/Lee/Ward/Zhu at higher certainties.
**Generation model:** deepseek-v4-pro (creative analysis — requires expert review)

---

## Caps reminder (must not overclaim)

1. **"98% specificity" = healthy-controls-only.** Never tested against fibromyalgia, depression, long-COVID fatigue, or idiopathic chronic fatigue. Any diagnostic idea must state this.
2. **No independent replication.** Single retrospective cohort; the paper's "validation" is an internal split, not external.
3. **Vendor COI.** All EpiSwitch clinical papers are Oxford BioDynamics-authored.
4. **Severity selection.** Housebound/severe cohort only — generalisability to mild/moderate unknown.
5. The **IL-2/JAK-STAT ↔ 3D-chromatin mechanism** is independently supported (non-vendor: @Wei2025TRIM28chromatin, @Ward2025CD4threeD, @Lee2025CTCFenhancer, @Zhu2024miR146lupus) and is the strongest element — but it is *not ME/CFS-specific*.

---

## Ranked Ideas

### 1. "Frozen chromatin state" — 3D-genomic architecture as a trapped immune-activation memory (mech: 4, tx: 2, expl: 4, math: 2, dx: 3)

**Category:** 1 (novel hypothesis / mechanistic)
**origin: brainstorm**
**Certainty: 0.35**

**Mechanistic rationale.** The EpiSwitch panel enriches for IL-2/JAK-STAT pathway genes, but the platform measures a *static* snapshot of loop/TAD conformation in blood cells. Ward et al. (@Ward2025CD4threeD) show IL-2 stimulation alone restructures the CD4+ T-cell 3D genome, with dynamic TAD changes at least as frequent as stable ones. The ME/CFS signature may represent a **loop conformation frozen in the "activated" position** — the chromatin architectural residue of an immune-activation program that was triggered (by infection or stress) but never fully resolved. This reframes the finding from "active IL-2 signalling" (which serum cytokine studies have NOT consistently confirmed) to "chromatin remembers activation." It is consistent with the known ME/CFS paradox of normal-to-low circulating cytokines despite immune-dysfunction phenotypes.

**Evidence link.** @Hunter2025 (IL-2/JAK-STAT enrichment) + @Ward2025CD4threeD (IL-2 rewires 3D genome dynamically) + @Wei2025TRIM28chromatin (chromatin topology controls IL-2). TRIM28 is shared: Wei shows TRIM28 → IL-2; Giménez-Orenga (@GimenezOrenga2025HERVsegregation) finds ME/CFS HERV activation coincides with SETDB1/TRIM28 binding sites (epigenetic silencer loss). TRIM28 is the convergence node between the two competing biomarker stories.

**Falsifiable prediction.** In ME/CFS CD4+ T cells, Hi-C/3C at IL-2-pathway loci shows a loop-conformation distribution shifted toward the activated state *in the absence of exogenous IL-2 stimulation*, and fails to relax after rest — whereas healthy T-cell loops relax to baseline within hours. Falsified if ME/CFS loop conformations are indistinguishable from healthy after normalizing for T-cell activation status (CD69/CD25).

**Consequence for non-specialists:** If ME/CFS immune cells are "stuck in the on position" at the level of how their DNA is folded — even when the chemical signals have died down — this would explain why the disease persists after the triggering infection clears, and would point toward treatments that *reset* the folding rather than drugs that only dial the signals up or down.

---

### 2. Independent external replication cohort (mech: 1, tx: 0, expl: 0, math: 0, dx: 5)

**Category:** 2 (research direction)
**origin: brainstorm**
**Certainty: 0.10** (certainty of the *idea* is low because it is a plan, not a finding; value is high)

**Mechanistic rationale.** The single highest-value experiment. No third-party lab has ever reproduced the 92%/98% figures. Until a blinded external cohort (n ≥ 100 ME/CFS vs matched controls, run in a non-vendor laboratory, pre-registered analysis plan) reproduces sensitivity/specificity within ±5 points, the diagnostic claim is unvalidated by definition.

**Evidence link.** @Hunter2025 note explicitly flags "no independent external replication cohort." The literature summary confirms zero replication in PubMed as of 2026-08-15.

**Falsifiable prediction.** The replication itself is the falsification test: failure to reproduce at n ≥ 100 refutes the diagnostic claim; success is a prerequisite for any further diagnostic use.

**Consequence for non-specialists:** One well-run independent study by a neutral laboratory would transform this from a company's own promising result into a real, usable blood test — until that happens, every number in the paper should be treated as "unconfirmed."

---

### 3. Cross-condition specificity study (ME/CFS vs FM/depression/long-COVID/idiopathic fatigue) (mech: 1, tx: 0, expl: 1, math: 0, dx: 5)

**Category:** 2 (research direction)
**origin: brainstorm**
**Certainty: 0.10** (plan, not finding)

**Mechanistic rationale.** The 98% specificity is against healthy controls only. A diagnostic is only useful if it separates ME/CFS from the conditions it is actually confused with in clinic. The critical untested axis is ME/CFS vs fibromyalgia — where a competing method (@GimenezOrenga2025HERVsegregation) achieves *perfect* separation. This is the single most important discriminator the test has not faced.

**Evidence link.** @Hunter2025 (healthy-controls-only) + @GimenezOrenga2025HERVsegregation (HERV achieves ME/CFS-vs-FM separation) + @Wyns2026OPRM1methylation (OPRM1 pools ME/CFS and FM — cannot discriminate).

**Falsifiable prediction.** EpiSwitch fails to distinguish ME/CFS from fibromyalgia/depression beyond chance (AUC < 0.7) in a blinded multi-arm cohort → the "specificity" claim collapses to "distinguishes sick from healthy," which is not a diagnostic.

**Consequence for non-specialists:** A blood test that only tells a sick person apart from a healthy person is not a diagnostic test for ME/CFS — it must also tell ME/CFS apart from fibromyalgia, depression, and long-COVID, and that has never been shown.

---

### 4. Head-to-head EpiSwitch vs HERV profiling on one cohort (orthogonality test) (mech: 3, tx: 0, expl: 3, math: 0, dx: 4)

**Category:** 2 (research direction) / 9 (diagnostic)
**origin: brainstorm**
**Certainty: 0.25**

**Mechanistic rationale.** EpiSwitch (3D genome) and HERV expression profiling are mechanistically *convergent*: HERV activation in ME/CFS coincides with TRIM28/SETDB1 silencer loss (@GimenezOrenga2025HERVsegregation), and TRIM28 is the chromatin-organizing protein that couples 3D topology to IL-2 (@Wei2025TRIM28chromatin). Both may be measuring different faces of the same epigenetic-dysregulation state. Running both assays on the same patients answers whether they are (a) orthogonal — in which case a composite score gains power — or (b) redundant — in which case the cheaper/more-open platform should win.

**Evidence link.** TRIM28 convergence between @GimenezOrenga2025HERVsegregation and @Wei2025TRIM28chromatin; HERV achieves ME/CFS-vs-FM separation that EpiSwitch has not tested.

**Falsifiable prediction.** If EpiSwitch and HERV signatures are correlated (r > 0.6 on a shared patient cohort) and driven by the same TRIM28-dependent loci, they are redundant. Falsified if the two signatures are statistically independent yet both achieve group separation — supporting a composite.

**Consequence for non-specialists:** Two independent research groups have found epigenetic "fingerprints" of ME/CFS using different methods; testing them together would reveal whether they are two windows onto one broken mechanism (the DNA-folding/immune axis) or two separate problems — which determines whether a future diagnostic should combine them.

---

### 5. JAK inhibitor as a pharmacodiagnostic probe of the 3D-chromatin axis (mech: 3, tx: 3, expl: 2, math: 1, dx: 2)

**Category:** 3 (drug/medication)
**origin: brainstorm**
**Certainty: 0.20**

**Mechanistic rationale.** The EpiSwitch panel implicates JAK-STAT. Lee et al. (@Lee2025CTCFenhancer) show that CTCF depletion *reprograms* the CD4+ T-cell response to JAK inhibitors by rewiring the STAT5 enhancer network — meaning the 3D-genomic state itself modulates JAK-inhibitor efficacy. If the ME/CFS signature reflects a genuine JAK-STAT-active chromatin state, then a short-course JAK inhibitor (tofacitinib or baricitinib, both FDA-approved for autoimmune disease) should (a) shift the EpiSwitch signature toward the healthy baseline, and (b) produce a measurable clinical change. A signature-shift-without-clinical-change would indicate the chromatin state is epiphenomenal, not causal.

**Evidence link.** @Hunter2025 (JAK-STAT enrichment) + @Lee2025CTCFenhancer (3D architecture determines JAK-inhibitor response). Baricitinib/tocitinib precedent in rheumatoid arthritis (context: @Carini2018mtxCCS, platform prior-art in RA).

**Falsifiable prediction.** A 12-week baricitinib course in severe ME/CFS (n=15 pilot) fails to shift the 200-marker EpiSwitch signature toward the healthy centroid by more than chance → the JAK-STAT chromatin signature is a marker, not a driver. ⚠️ High-risk: JAK inhibitors are immunosuppressive; ME/CFS-specific safety data absent.

**Consequence for non-specialists:** If a JAK-blocking drug — already approved for other immune diseases — both changed the ME/CFS DNA-folding fingerprint and improved symptoms, it would be the first direct proof that the fingerprint is a cause of the illness, not just a bystander; but these drugs suppress immunity and carry real risk, so this is a supervised research question, not a self-treatment option.

---

### 6. EpiSwitch IL-2/JAK-STAT signature as a responder-predictor for existing low-dose IL-2 (mech: 2, tx: 4, expl: 1, math: 1, dx: 4)

**Category:** 3 (drug) / 9 (diagnostic/stratification)
**origin: brainstorm**
**Certainty: 0.25**

**Mechanistic rationale.** Low-dose IL-2 is already proposed in this document as a Treg-restoration therapy (@spec:low-dose-il2-mecfs, Chapter 30/33, ch8 sec-12). The key unresolved question is *who responds*: if the problem is IL-2 resistance (impaired signalling, downregulated receptors), low-dose IL-2 fails; if it is deficiency, it works. The EpiSwitch IL-2-pathway signature is a candidate *predictive* biomarker: patients whose IL-2-pathway loci are in a specific loop conformation (reflecting either active signalling or exhausted downstream effectors) could be prospectively stratified as likely responders vs non-responders.

**Evidence link.** @Hunter2025 (IL-2 hub in the panel) + existing in-document low-dose IL-2 hypothesis + ch8 sec-12 which explicitly flags "functional assays measuring T-cell proliferation in response to exogenous IL-2 should be conducted first to identify likely responders" — the EpiSwitch signature is a candidate non-stimulatory readout for the same question.

**Falsifiable prediction.** Baseline EpiSwitch IL-2-pathway loop-conformation score does NOT separate low-dose IL-2 clinical responders from non-responders in a prospective cohort → the signature has no stratification value for this therapy.

**Consequence for non-specialists:** Rather than trying low-dose IL-2 on everyone and waiting months to see who improves, a fingerprint taken before treatment could tell a doctor in advance which patients are most likely to benefit — turning a shot-in-the-dark into a targeted choice.

---

### 7. TRIM28 as the unifying node: 3D-chromatin + HERV + IL-2 (novel convergence) (mech: 4, tx: 1, expl: 4, math: 1, dx: 2)

**Category:** 1 (novel hypothesis / cross-mechanism convergence)
**origin: brainstorm**
**Certainty: 0.30**

**Mechanistic rationale.** Three independent lines converge on TRIM28 (KAP1): (1) Wei et al. show TRIM28 binds loop-anchor regions overlapping CTCF and its loss disrupts IL-2 production in CD8+ T cells (@Wei2025TRIM28chromatin); (2) Giménez-Orenga et al. find ME/CFS HERV activation coincides with TRIM28/SETDB1 binding sites — i.e., loss of the epigenetic silencer that TRIM28 enforces (@GimenezOrenga2025HERVsegregation); (3) Hunter et al. find IL-2/JAK-STAT as the EpiSwitch hub (@Hunter2025). A parsimonious unifying hypothesis: **impaired TRIM28-mediated silencing/loop-maintenance** simultaneously (a) derepresses HERVs and (b) destabilizes the 3D-chromatin architecture that normally constrains IL-2/JAK-STAT loci — producing both the HERV *and* the EpiSwitch signatures as consequences of one upstream chromatin-maintenance defect. This would unify two "competing" biomarkers into one mechanism.

**Evidence link.** @Wei2025TRIM28chromatin + @GimenezOrenga2025HERVsegregation + @Hunter2025 + @Ward2025CD4threeD.

**Falsifiable prediction.** ME/CFS immune cells show reduced TRIM28 occupancy at the specific loop-anchor loci implicated by the EpiSwitch panel, and/or reduced SETDB1-dependent H3K9me3 at HERV loci — whereas these are intact in healthy cells. Falsified if TRIM28 binding/occupancy is normal at these loci despite the 3D and HERV signatures.

**Consequence for non-specialists:** Two separate "epigenetic fingerprints" of ME/CFS — one measuring DNA folding, one measuring reactivated viral remnants — may both trace back to a single protein (TRIM28) that normally keeps genes locked down; if so, the field's competing tests are actually pointing at the same upstream defect, which becomes the natural drug target.

---

### 8. 3D-chromatin "epigenetic state variable" in the causal DAG / ODE (mech: 3, tx: 0, expl: 1, math: 5, dx: 1)

**Category:** 7 (mathematical model extension)
**origin: brainstorm**
**Certainty: 0.30**

**Mechanistic rationale.** The formal model (causal DAG + EPC + ODE) currently represents cytokine/immune signalling but not a *slow* chromatin-architecture variable. Ward et al. show 3D genome is both dynamic (IL-2-driven, fast-ish) and stable (TAD scaffolds, slow) (@Ward2025CD4threeD). A formal extension would add a **bistable slow variable** `C(t)` (chromatin loop state at IL-2/JAK-STAT loci) coupled to the fast cytokine variables: fast signalling drives `C` toward an "open/active" conformation, which in turn sustains low-level signalling, creating a positive-feedback loop with two stable fixed points (healthy/resting vs ME/CFS/trapped). This is a candidate formal substrate for the "post-exertional persistence" that linear cytokine models cannot produce — the state persists after the fast signal decays.

**Evidence link.** @Ward2025CD4threeD (dynamic TAD reorganisation) + @Wei2025TRIM28chromatin (loop structure ↔ IL-2) + @Lee2025CTCFenhancer (loop positioning of JAK-STAT enhancers). New ODE variable / DAG node with a quantifiable slow-timescale parameter.

**Falsifiable prediction.** The bistable model predicts that a transient IL-2 pulse (e.g., from an infection) can flip `C` into the active state and that it stays there after the pulse — this is a *mathematically testable* hysteresis claim. Falsified if empirical relaxation-time data show `C` decays monotonically with no threshold/hysteresis.

**Consequence for non-specialists:** Writing the "stuck DNA folding" idea into equations would let researchers predict — before running expensive experiments — what kind of intervention could flip the system back to healthy, and how long that reset might take.

---

### 9. Longitudinal EpiSwitch monitoring: state-vs-trait test across PEM cycles (mech: 2, tx: 1, expl: 2, math: 1, dx: 3)

**Category:** 9 (biomarker) / 5 (non-pharmacological context)
**origin: brainstorm**
**Certainty: 0.25**

**Mechanistic rationale.** A diagnostic with 92% sensitivity might be stable (a "trait" — permanent architecture) or fluctuating (a "state" — tracking disease activity). Ward et al. imply the 3D genome can move on IL-2 timescales. Measuring the EpiSwitch signature at multiple timepoints — baseline, after a standardised mild exertion (within ethics limits), and during recovery — would test whether the signature is a stable trait marker (diagnostic) or a state marker that tracks PEM/crashes (monitoring/severity marker). If it tracks PEM, it becomes a candidate objective correlate of the defining ME/CFS symptom.

**Evidence link.** @Hunter2025 (cross-sectional) + @Ward2025CD4threeD (IL-2-driven 3D dynamism → plausibly exertion-responsive).

**Falsifiable prediction.** The signature is stable across a PEM cycle (no significant shift from baseline after controlled exertion) → it is a trait marker only, with no monitoring/severity value. A significant, reversible shift supports state-marker use.

**Consequence for non-specialists:** If the fingerprint changes when a patient crashes and recovers, doctors would finally have an objective way to *measure* post-exertional malaise — the core, most disabling symptom of ME/CFS — instead of relying on patient self-report.

---

### 10. Butyrate / HDAC-inhibition as a 3D-chromatin remodeler (mech: 3, tx: 3, expl: 1, math: 0, dx: 0)

**Category:** 4 (supplement/nutraceutical)
**origin: brainstorm**
**Certainty: 0.15**

**Mechanistic rationale.** Histone acetylation is a determinant of chromatin loop and TAD dynamics; HDAC inhibitors (including the short-chain fatty acid butyrate, a microbiome-derived gut metabolite) remodel 3D genome architecture. If the ME/CFS EpiSwitch signature reflects an aberrant chromatin state, butyrate (or dietary fiber/prebiotics that raise endogenous butyrate) is a mechanistically plausible, low-risk, accessible intervention that could shift loop conformations at immune loci. Note: this is *not* a claim that butyrate fixes ME/CFS — only that it is a tractable, low-risk probe of whether chromatin state is modifiable and whether modification correlates with symptom change. There is a prior butyrate/intestinal-permeability brainstorm in this repo to cross-reference.

**Evidence link.** HDAC/butyrate ↔ 3D genome general literature (not yet in bib); @Hunter2025 (3D-genomic readout provides a way to *measure* whether butyrate changes the signature).

**Falsifiable prediction.** A 12-week butyrate/prebiotic intervention produces no measurable shift in the EpiSwitch IL-2/JAK-STAT signature → butyrate does not remodel the relevant chromatin state at clinically achievable doses. ✓ Low-risk.

**Consequence for non-specialists:** A cheap, safe gut-bacteria byproduct (butyrate) might be able to nudge the "stuck" DNA folding — and because the EpiSwitch test can measure that folding, we could tell within weeks whether the nudge is doing anything rather than waiting months on symptoms alone.

---

### 11. Composite multi-modal epigenetic score (3D + HERV + methylation + lncRNA) (mech: 1, tx: 0, expl: 1, math: 1, dx: 5)

**Category:** 9 (diagnostic) / 6 (combination)
**origin: brainstorm**
**Certainty: 0.20**

**Mechanistic rationale.** No single platform has demonstrated cross-condition discrimination: EpiSwitch untested vs FM/depression; HERV separates ME/CFS vs FM but is one small cohort; OPRM1 methylation cannot separate ME/CFS from FM; lncRNA (NTT/MIAT) predates all and implicates immune/oxidative programs. Each modality captures a different layer (3D genome, transposable-element silencing, CpG methylation, non-coding RNA). A composite index combining orthogonal layers could achieve what no single layer has: discrimination *across* ME/CFS, FM, depression, and long-COVID. This is the natural response to the "healthy-controls-only" weakness.

**Evidence link.** @Hunter2025 + @GimenezOrenga2025HERVsegregation + @Wyns2026OPRM1methylation + @Yang2018vlncRNA. Already flagged as an open-question in-document (composite-epi-score).

**Falsifiable prediction.** A composite score built from all four modalities on one multi-arm cohort fails to improve cross-condition AUC over the best single modality → the layers are redundant, not additive. Falsified (i.e., composite supported) if combination AUC for ME/CFS-vs-FM exceeds 0.9 where no single layer does.

**Consequence for non-specialists:** Because each epigenetic test "sees" a different layer of the cell's control system, stacking them may be the only way to build a test that reliably separates ME/CFS from the look-alike conditions — a problem no single test has solved.

---

### 12. Cross-disease bridge: CiRT/PSE platform data as indirect validation of 3D-genomic *state* capture (mech: 2, tx: 1, expl: 1, math: 0, dx: 2)

**Category:** 8 (cross-disease bridge)
**origin: brainstorm**
**Certainty: 0.20**

**Mechanistic rationale.** The strongest *indirect* evidence that EpiSwitch captures biologically meaningful immune states is not the ME/CFS paper but the platform's other clinical-utility data: CiRT predicts checkpoint-inhibitor immunotherapy response across solid tumors (@Abdo2025CiRTPROWES, n=205), and PSE stratifies prostate risk (@Berghausen2025PSErealworld, n=187; @Alshaker2021prostateCCS). CiRT is mechanistically adjacent to the ME/CFS finding because both concern 3D-genomic capture of an immune-active state. These do NOT validate the ME/CFS diagnostic, but they establish that the *platform* can capture immune-state biology reproducibly across diseases — which modestly raises prior on the ME/CFS finding being non-artifactual. Must be weighted against vendor COI throughout.

**Evidence link.** @Abdo2025CiRTPROWES + @Berghausen2025PSErealworld + @Alshaker2021prostateCCS + @Carini2018mtxCCS. All OBD-authored (COI).

**Falsifiable prediction.** If CiRT/PSE results fail to replicate in independent (non-vendor) cohorts, the platform's cross-disease track record collapses and the indirect support evaporates — leaving the ME/CFS finding standing on nothing but its own single cohort.

**Consequence for non-specialists:** The company's other blood tests (for cancer treatment response) give a cautious reason to think the technology is real — but every one of those studies comes from the same company, so the whole record needs neutral outsiders to confirm it.

---

### 13. The signature may reflect generic sickness/deconditioning, not ME/CFS pathology (mech: 2, tx: 0, expl: 2, math: 0, dx: 2)

**Category:** 10 (reasons the mechanism may NOT be relevant)
**origin: brainstorm**
**Certainty: 0.30**

**Mechanistic rationale.** Severe, housebound ME/CFS patients differ from healthy controls on many axes simultaneously: physical deconditioning, chronic stress (glucocorticoid-driven chromatin remodelling), polypharmacy, sleep disruption, inactivity, and ongoing low-grade immune perturbation. Any or all of these could produce a blood 3D-genomic signature distinct from healthy controls *without* being specific to ME/CFS pathophysiology. The IL-2/JAK-STAT enrichment is exactly what one would expect from any chronically-activated-or-dysregulated immune state. The "signature" may be a downstream epiphenomenon of being severely ill, not a cause or a disease-specific marker.

**Evidence link.** @Hunter2025 (healthy-controls-only design cannot rule out non-specific illness effects) + @BenAmar2026epigeneticpain (mainstream reviews do not even discuss 3D conformation — field-positioning gap suggests the axis is unproven as a disease marker).

**Falsifiable prediction.** If the EpiSwitch signature is generic illness, then equally severe non-ME/CFS patients (e.g., severe rheumatoid arthritis, multiple sclerosis, housebound depression) will show overlapping signatures, and the ME/CFS-vs-healthy discrimination will not survive a multi-illness comparator arm. This is directly testable and is exactly the cross-condition study (idea 3).

**Consequence for non-specialists:** Being severely ill in *any* way — not just ME/CFS — changes how a patient's blood cells look; until the test is checked against equally-sick people with other diseases, it cannot be assumed to find anything specific to ME/CFS at all.

---

### 14. Null hypothesis: 3D-chromatin has NO causal role (diagnostic-utility decoupled from mechanism) (mech: 1, tx: 0, expl: 1, math: 1, dx: 3)

**Category:** 11 (null hypothesis assessment)
**origin: brainstorm**
**Certainty: 0.40** (as an assessment of likelihood that the *causal* claim is false)

**Mechanistic rationale.** The null must be stated cleanly: **3D-chromatin conformation has no causal role in ME/CFS pathogenesis.** Even under this null, two distinct sub-cases remain important: (a) the signature is pure noise/overfitting (n=47, 200 markers, internal split — high overfitting risk) and will not replicate; or (b) the signature *does* replicate as a *correlational* biomarker (a useful diagnostic readout of the immune state) even though the chromatin architecture itself is a downstream consequence, not a driver. Case (b) is the crucial nuance: a biomarker can be diagnostically useful while being mechanistically irrelevant. The evidence *for* causality rests entirely on non-ME/CFS T-cell studies (Wei/Ward/Lee/Zhu), which establish plausibility but not ME/CFS causation.

**Evidence link.** @Hunter2025 (associational, not causal) + @Wei2025TRIM28chromatin / @Ward2025CD4threeD / @Lee2025CTCFenhancer (causal but in mouse/healthy T cells, not ME/CFS).

**Falsifiable prediction.** Under the null (no causal role), intervening to force the chromatin state back to healthy (e.g., HDAC inhibitor, JAK inhibitor) would change the *signature* but not the *symptoms*. Observing symptom improvement tightly coupled to signature normalization would reject the null. Conversely, signature-normalization-without-symptom-change confirms the "diagnostic-only, non-causal" reading.

**Consequence for non-specialists:** Even if the DNA-folding finding is a completely innocent bystander of the disease, it might still make a fine blood test — "useful as a test" and "important as a cause" are two separate questions, and the evidence currently supports only the first (and even that only weakly).

---

### 15. Evidence-quality concern: overfitting risk in n=47 with 200 markers (mech: 0, tx: 0, expl: 0, math: 1, dx: 2)

**Category:** 12 (evidence quality)
**origin: brainstorm**
**Certainty: 0.45** (as assessment of the concern's validity)

**Mechanistic rationale.** 200 markers selected from a high-dimensional conformation space in n=47 patients, validated only by an internal split of the same retrospective samples, is a textbook overfitting risk. 92%/98% in a discovery cohort with internal validation is routinely inflated relative to external performance. This is the single largest *technical* threat to the headline numbers, independent of COI.

**Evidence link.** @Hunter2025 (n=47, 200 markers, internal validation split — noted in the bib entry's LIMITATIONS).

**Falsifiable prediction.** External replication (idea 2) will show sensitivity/specificity shrinkage to the range typical of discovery-to-replication decay (often 10–25 point drops in specificity for high-dimensional signatures). Absence of shrinkage would be surprising and would itself be informative about the platform's robustness.

**Consequence for non-specialists:** When a study fits 200 measurements to only 47 patients, it can "learn" patterns that are just coincidence; the impressive-looking 98% number is very likely to drop once neutral researchers test it on new patients.

---

### 16. Vendor COI + severity selection systematically inflate the apparent value (mech: 0, tx: 0, expl: 0, math: 0, dx: 1)

**Category:** 12 (evidence quality)
**origin: brainstorm**
**Certainty: 0.40**

**Mechanistic rationale.** Two structural biases compound. (1) **COI:** every EpiSwitch clinical paper is authored by Oxford BioDynamics employees (@Carini2018mtxCCS, @Alshaker2021prostateCCS, @Berghausen2025PSErealworld, @Abdo2025CiRTPROWES, @Mellor2025paradigmLost, @Hunter2025). A commercial vendor with a proprietary, closed platform and no independent replication has every incentive to report favorable numbers and no strong incentive to test the hard discriminations (FM/depression) that could undermine the product. (2) **Severity selection:** the cohort is severe/housebound only — the population where *any* biomarker (inflammation, deconditioning, immune activation) is most likely to differ from healthy controls. Generalizability to mild/moderate ME/CFS — the majority of patients, and the group where diagnosis is hardest — is entirely unshown.

**Evidence link.** @Hunter2025 (housebound cohort, proprietary platform) + COI lineage across all OBD papers.

**Falsifiable prediction.** An independent, non-vendor replication with a representative severity spectrum (mild through severe) will show lower discrimination in mild/moderate cases than in the severe discovery cohort. Falsified if performance is severity-invariant.

**Consequence for non-specialists:** The test was built on the most extreme patients (housebound) and by the company that sells it — two reasons to be skeptical that it will work as well for the typical, milder patient that doctors actually struggle to diagnose.

---

## Idea Scoring Table

| ID | Title | Cat | Cert | mech | tx | expl | math | dx | Usefulness (sum) |
|----|-------|-----|------|------|----|------|------|-----|------------------|
| 1 | Frozen chromatin state (trapped activation memory) | 1 | 0.35 | 4 | 2 | 4 | 2 | 3 | 15 |
| 7 | TRIM28 unifying node (3D + HERV + IL-2) | 1 | 0.30 | 4 | 1 | 4 | 1 | 2 | 12 |
| 2 | Independent external replication cohort | 2 | 0.10 | 1 | 0 | 0 | 0 | 5 | 6 |
| 3 | Cross-condition specificity study (FM/depression/LC) | 2 | 0.10 | 1 | 0 | 1 | 0 | 5 | 7 |
| 4 | Head-to-head EpiSwitch vs HERV (orthogonality) | 2/9 | 0.25 | 3 | 0 | 3 | 0 | 4 | 10 |
| 5 | JAK inhibitor pharmacodiagnostic probe | 3 | 0.20 | 3 | 3 | 2 | 1 | 2 | 11 |
| 6 | EpiSwitch IL-2 signature → low-dose IL-2 responder predictor | 3/9 | 0.25 | 2 | 4 | 1 | 1 | 4 | 12 |
| 8 | 3D-chromatin state variable in DAG/ODE | 7 | 0.30 | 3 | 0 | 1 | 5 | 1 | 10 |
| 9 | Longitudinal PEM state-vs-trait monitoring | 9/5 | 0.25 | 2 | 1 | 2 | 1 | 3 | 9 |
| 10 | Butyrate/HDAC 3D-chromatin remodeler | 4 | 0.15 | 3 | 3 | 1 | 0 | 0 | 7 |
| 11 | Composite multi-modal epigenetic score | 9/6 | 0.20 | 1 | 0 | 1 | 1 | 5 | 8 |
| 12 | Cross-disease CiRT/PSE platform bridge | 8 | 0.20 | 2 | 1 | 1 | 0 | 2 | 6 |
| 13 | Signature = generic sickness/deconditioning | 10 | 0.30 | 2 | 0 | 2 | 0 | 2 | 6 |
| 14 | Null: 3D-chromatin has no causal role | 11 | 0.40 | 1 | 0 | 1 | 1 | 3 | 6 |
| 15 | Overfitting risk (n=47, 200 markers) | 12 | 0.45 | 0 | 0 | 0 | 1 | 2 | 3 |
| 16 | Vendor COI + severity selection bias | 12 | 0.40 | 0 | 0 | 0 | 0 | 1 | 1 |

**Scoring note:** diagnostic-category ideas (2, 3, 11) score high on `dx` but are plans/concerns, hence low `mech`. The mechanistic ideas (1, 7) are the highest composite value because they bind the strongest independent evidence (Wei/Ward/Lee/Zhu) to the unvalidated biomarker — converting a weak diagnostic claim into a testable mechanistic story. Certainty values above distinguish "certainty of the idea/concern's validity" from "certainty of a finding"; research plans (2, 3) carry low certainty *of being findings* by construction, not low value.

---

## Document Integration Recommendations

### Highest priority (would materially strengthen the paper)

1. **Idea 7 (TRIM28 convergence)** → new `#hypothesis-box` in ch35 (episwitch section) or ch14. It converts the weakest element (unvalidated vendor biomarker) into the strongest narrative (independent multi-line convergence on a named protein with a known mechanism). Cite @Wei2025TRIM28chromatin + @GimenezOrenga2025HERVsegregation + @Hunter2025. Certainty ~0.30, `origin: brainstorm`.

2. **Idea 1 (frozen chromatin state)** → candidate `#hypothesis-box` adjacent to @hyp:3d-chromatin-IL2-jakstat-axis in ch35, reframing the IL-2 finding from "active signalling" to "chromatin memory of activation." Directly addresses the serum-cytokine paradox the document already documents elsewhere.

3. **Ideas 13/14/15/16 (critical)** → the document's existing `#practical-warning` / `#open-question` environments already carry the healthy-controls-only caveat; idea 13 (generic illness) and 14 (null) should be folded into the falsifiability field of the existing registry entries to sharpen them.

### Secondary (future cycles)

- Idea 6 (responder-predictor for low-dose IL-2) → ch30/ch33 pharmacodiagnostic entry extension; ties the biomarker to an existing in-document therapy.
- Idea 8 (ODE state variable) → formalization-pipeline backlog.
- Idea 3 (cross-condition study) → research-agenda entry.

### Certainty levels
- Novel mechanisms (1, 7): **Low-Medium** (0.30–0.35) — mechanistically grounded but ME/CFS-unvalidated.
- Research plans (2, 3, 4, 9): **actionable plans**, not findings.
- Drug ideas (5, 6): **Low** (0.20–0.25) — mechanistically sound, untested in ME/CFS; JAK inhibitor high-risk (⚠️).
- Supplement (10): **Low** (0.15), but low-risk and testable.
- Critical assessments (13, 14, 15, 16): **Medium** (0.30–0.45) — these are the *most likely to be correct* of all ideas here.

---

## Caveats & Limitations

- All ideas are creative extrapolation, not established fact. `origin: brainstorm`.
- The EpiSwitch diagnostic claim stays capped at certainty ≤0.50. Nothing here raises it.
- JAK inhibitors (idea 5) carry immunosuppressive risk — research-supervised only, never self-treatment.
- No independent replication exists; the strongest mechanistic support is non-ME/CFS (healthy T cells / mouse).
- Vendor COI saturates all primary platform evidence.

---

## Expert Review Recommended

- [ ] Immunologist/3D-genomics expert (validate TRIM28/CTCF convergence, idea 7)
- [ ] Biostatistician (validate overfitting assessment, idea 15)
- [ ] Clinical trialist (feasibility of cross-condition cohort, idea 3)
- [ ] Patient advocate (feasibility of longitudinal PEM sampling, idea 9)
