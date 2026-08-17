# Brainstorm: Thapaliya et al. 2025 — Brain Microstructure & Neurochemicals in Long COVID / Recovered COVID

**Topic slug:** `thapaliya2025-brain-microstructure-neurochemicals`
**Date:** 2026-08-17
**Agent:** scientific-insight-generator (Phase 4)
**Decision basis:** PROCEED (gap-fill scope); 14 papers, cert ≥0.40 for 13/14.
**Primary:** @Thapaliya2025BrainMRI

## Scope guard (duplicate avoidance)

Phase 3 already created three environments — do NOT propose duplicates:

- `@oq:t1w-t2w-myelin-substrate` — open question on T1w/T2w substrate (remyelination vs gliosis vs iron).
- `@spec:multimodal-mri-biomarker` — multimodal MRI panel as candidate biomarker.
- ch14d reinforcement — NAA↑/glutamine↓ posterior-cingulate divergence added to `@hyp:distinct-brain-neurochemistry-mecfs-longcovid`.

Ideas that touch these are marked **extends <label>** and propose a specific extension/strengthening, not a re-statement.

---

## Ranked summary

| # | Label | Category | Cert | One-line rationale |
|---|-------|----------|------|--------------------|
| 1 | T1w/T2w recovery-gradient reframe | Hypothesis (1) | 0.35 | Recovered group has the *highest* myelin-signal in brainstem/SLF — signal may track recovery (remyelination), not damage. |
| 2 | Iron-deposition alternative to myelin/gliosis | Critical (10) | 0.35 | T1w/T2w is iron-sensitive; post-COVID iron dyshomeostasis is documented — the "myelin" read may be iron. |
| 3 | NAA↑ as compensatory energy/osmolyte response | Hypothesis (1) | 0.30 | NAA↑ in long COVID (primary + Bravi) is opposite to neurodegeneration; favors a compensation read. |
| 4 | Longitudinal recovery-tracking rescan | Research (2) | 0.40 | Only longitudinal design can separate "recovery causes remyelination" from "recoverers were always higher." |
| 5 | Multimodal disambiguation with astrogliosis readout | Research (2) | 0.55 | Add MAO-B astrogliosis PET + QSM + MWF to the same cohort to settle substrate (extends `oq`). |
| 6 | Shared brainstem–cerebellar–limbic vulnerability axis | Cross-disease (8) | 0.30 | Same pons/midbrain/cerebellum/SLF/cingulum regions recur across ME/CFS and post-COVID studies. |
| 7 | Bidirectional microstructure synthesis (FA↑ vs FA↓) | Cross-disease (8) | 0.28 | Direction heterogeneity is signal (injury vs repair balance), not noise. |
| 8 | Brainstem T1w/T2w "recovery index" | Biomarker (9) | 0.25 | Narrow, directional marker for recovery/treatment response (extends `spec`). |
| 9 | Microstructural-integrity DAG/ODE node | Model (7) | 0.25 | Model needs 3 distinct substrate nodes (myelin/gliosis/iron), not one; unresolved edge sign. |
| 10 | Anti-inflammatory / remyelination pharmacological probe | Treatment (3) | 0.20 | Brief anti-inflammatory challenge disambiguates reversible gliosis vs fixed myelin. Research-only. |
| 11 | Null hypothesis: epiphenomenon + which claims revise | Critical (11) | 0.30 | Function correlations and 85% diagnostic accuracy are fragile/overfit; need revision. |
| 12 | Griffith-cluster inflation + small-n Type I + selection | Critical (12) | 0.30 | "5 independent replications" is really one lab; n=47 subgroups; selected recovered group. |

**Counts:** M = 2 hypotheses · K = 1 treatment/pharmacological · J = 6 other (2 research + 2 cross-disease + 1 biomarker + 1 model) · C = 3 critical.

---

## Constructive ideas

### Idea 1 — T1w/T2w recovery-gradient reframe
*Category 1 (novel hypothesis) · cert 0.35 · extends `@oq:t1w-t2w-myelin-substrate` and `@spec:multimodal-mri-biomarker`*

**Mechanistic rationale + evidence link.** The primary paper's most overlooked pattern is the *direction* of the three-group T1w/T2w comparison: the COVID-recovered group shows the **highest** signal in pons, midbrain, cerebellar tonsil, and bilateral SLF — higher than *both* long COVID and never-infected controls (all pfdr < 0.02) @Thapaliya2025BrainMRI. If elevated T1w/T2w were a marker of ongoing pathology, one would expect long COVID (the symptomatic group) to show the highest signal in these regions. Instead the recovered group does. This inverts the default reading: elevated T1w/T2w in brainstem/cerebellar/SLF regions may track **remyelination/recovery**, with long COVID's relatively *lower* brainstem signal reflecting failed or delayed remyelination, not increased damage. This is independently supported by @Bravi2025BrainMetabolism (higher glutamate + NAA + lower diffusivity in COVID survivors up to 3 years, read by the authors as brain repair/remyelination with *positive* cognitive effect) and by @Lu2020Micro (lower MD/AD/RD + higher FA in recovered COVID, read as microstructural reorganisation).

**Falsifiable prediction.** In a longitudinal cohort, brainstem/cerebellar T1w/T2w will *rise* as patients recover, and will correlate positively with recovery trajectory and negatively with residual symptom burden. Falsified if T1w/T2w is stable across recovery, or if myelin-specific imaging (MWF) shows the elevated signal is not myelin.

**Non-specialist consequence.** If the scan signal is really "healing" rather than "damage," a simple follow-up MRI could one day tell a recovering patient whether their brain is repairing — but right now we cannot tell the two apart, so this is a research question, not a clinical tool.

`origin: brainstorm`

---

### Idea 3 — NAA↑ as compensatory energy/osmolyte response (not neurodegeneration)
*Category 1 (novel hypothesis) · cert 0.30 · extends `@hyp:distinct-brain-neurochemistry-mecfs-longcovid`*

**Mechanistic rationale + evidence link.** The primary paper found NAA *higher* in long COVID (posterior cingulate, 15.04 vs 14.53, pfdr = 0.009) @Thapaliya2025BrainMRI, and @Bravi2025BrainMetabolism independently found higher NAA + glutamate in COVID survivors up to 3 years. NAA elevation is the *opposite* of the canonical neurodegeneration signature (NAA declines in Alzheimer's disease and HIV — e.g., @DeRosa2000NACHIV documents NAA decline with HIV progression). Two non-exclusive readings: (a) **compensatory upregulation** — NAA synthesis is mitochondrial/energetic, and its rise may reflect an adaptive response to energetic stress (linking to the brain-lactate finding @Godlewska2025MRS and the broader energy-metabolism theme); (b) **osmolyte response** — NAA is a neuronal osmolyte, and a rise may buffer osmotic stress from edema (the NII edema finding @Yu2026diffusion-neuroinflammation). A third, less interesting reading is an LCModel quantitation artefact driven by the *lower* glutamine in the same voxel.

**Falsifiable prediction.** Absolute (water-referenced) MRS will reproduce the NAA↑; NAA will correlate positively with other energy-stress markers (lactate, PCr dynamics) if compensatory, and will *not* decline over time (unlike neurodegeneration). Falsified if absolute quantification nullifies the effect, or if NAA tracks glutamine inversely in a way fully explained by reference handling.

**Non-specialist consequence.** If the NAA rise is a compensation rather than damage, it flips what this marker means — a "high" reading would signal a strained-but-adapting brain, changing how researchers interpret brain-chemistry scans in these patients; it does not change any current clinical decision.

`origin: brainstorm`

---

### Idea 4 — Longitudinal recovery-tracking rescan (the decisive design)
*Category 2 (research direction) · cert 0.40 (value of the design, not the finding)*

**Mechanistic rationale + evidence link.** The primary paper is cross-sectional (self-stated limitation) @Thapaliya2025BrainMRI. Its three-group design cannot distinguish two causal directions: (a) recovery *causes* remyelination/signal change (a within-person trajectory), versus (b) selection — people who recovered were constitutionally different (more remyelination capacity, less injury) from the outset. Only longitudinal rescanning of the *same* long-COVID cohort as symptoms resolve resolves this. It is the single most informative follow-up because it simultaneously tests Ideas 1, 2, and 3.

**Falsifiable prediction.** A 6/12/24-month rescan of long-COVID patients (with ME/CFS-phenotype capture) will show, in those who improve: rising brainstem T1w/T2w (remyelination), falling NAA (compensation unwinding), and FA/MD normalization. If instead signal is stable across recovery, the cross-sectional "recovered > long COVID" gradient is selection, not repair.

**Non-specialist consequence.** This is the study that would tell patients and doctors whether the brain actually heals after these infections and what that healing looks like on a scan — it matters for prognosis, but is years of follow-up away from any bedside use.

`origin: brainstorm`

---

### Idea 5 — Multimodal disambiguation with an astrogliosis-specific readout
*Category 2 (research direction) · cert 0.55 · extends `@oq:t1w-t2w-myelin-substrate`*

**Mechanistic rationale + evidence link.** The existing open question already names the disambiguating experiment (MWF vs QSM vs TSPO-PET) @oq:t1w-t2w-myelin-substrate. The specific strengthening this idea adds: **TSPO-PET alone is not an adequate gliosis readout** — long-COVID TSPO is heterogeneous (some increased, some decreased @Visser2025TSPOfatigue) and regionally specific rather than global (@Tuomaala2026TSPOLongCovid, limbic-correlated only). The gliosis arm should instead use the **astroglial MAO-B marker** [11C]SL25.1188, already applied to long COVID with elevated striatal/PFC/ACC astrogliosis @Braga2025astrogliosis, which tracks the *astroglial* side of the T1w/T2w "gliosis" hypothesis more directly. The decisive battery is therefore: T1w/T2w + **MWF** (myelin) + **QSM/R2*** (iron) + **MAO-B PET** (astrogliosis) in the *same* long-COVID/recovered/ME-CFS cohort, with TSPO as a secondary/context readout.

**Falsifiable prediction.** The elevated T1w/T2w regions will co-localize with exactly one of MWF, QSM, or MAO-B signal — and the winning modality will differ by region (e.g., brainstem could be iron, SLF could be myelin), which would itself be informative.

**Non-specialist consequence.** Running these three scans together would settle, in one study, a question that currently blocks every interpretation of these brain findings — whether the signal is healing, inflammation, or iron — which is a prerequisite before any of it can mean anything clinically.

`origin: brainstorm`

---

### Idea 6 — Shared brainstem–cerebellar–limbic vulnerability axis
*Category 8 (cross-disease bridge) · cert 0.30 · extends ch14d cross-disease content*

**Mechanistic rationale + evidence link.** The primary paper's regional findings (pons, midbrain, cerebellar tonsil, SLF) @Thapaliya2025BrainMRI coincide with the Griffith-lab ME/CFS regions (cortico-cerebellar midbrain/pons AD/MD↓ @Thapaliya2021DTI; subcortical T1w/T2w↑ @Thapaliya2020T1) and with the cross-disease corona-radiata difference @Singh2026DTIDKI. Independently, the cingulum (limbic) finding replicates at n=100 @Wu2026Cingulum, and post-COVID DWI reviews find longitudinal fasciculi and thalamic radiations nearly consistently @Jahanshahi2026. Anatomically these cohere into a single distributed circuit — brainstem → cerebellum → thalamus → cingulate/SLF limbic-cortical loop — the ascending autonomic-cerebellar-limbic axis. Hypothesis: post-infectious fatigue conditions (ME/CFS and long COVID) share a vulnerability in this distributed circuit, which is why the *regions* recur even though the *metrics/directions* differ.

**Falsifiable prediction.** Harmonised multi-site tractometry of the brainstem–cerebellar–thalamic–cingulate axis will show group-level alteration in ME/CFS and long COVID that is *stronger* in this circuit than in matched control tracts (e.g., visual or motor tracts), supporting circuit-specificity rather than diffuse/global change.

**Non-specialist consequence.** If a specific brain circuit is the shared site of trouble, it gives researchers a focused target to study and image rather than scanning the whole brain for scattered changes — but it is still a research map, not a diagnosis.

`origin: brainstorm`

---

### Idea 7 — Bidirectional microstructure synthesis (FA↑ vs FA↓ is signal, not noise)
*Category 8 (cross-disease bridge) · cert 0.28*

**Mechanistic rationale + evidence link.** The literature shows *opposite* diffusion directions across studies: FA↑ (primary right SLF in long COVID @Thapaliya2025BrainMRI; arcuate FA↑ in ME/CFS @Zeineh2015white) versus FA↓ (cingulum FA↓ @Wu2026Cingulum; IFOF FA↓/AD↓ in post-COVID sleep disorder @Qin2024); and restricted diffusion (lower MD/AD/RD in recovered caudate @Thapaliya2025BrainMRI and @Lu2020Micro) versus elevated-diffusivity edema (NII @Yu2026diffusion-neuroinflammation). The synthesis: microstructural change is **bidirectional**, indexing a dynamic injury-repair balance. FA↑/restricted diffusion = remyelination/compensatory reorganization (recovery-side or tract-specific); FA↓/elevated MD = demyelination/edema/injury. This reframes the "inconsistent findings" complaint (documented in @Maksoud2020Neuro) as a predictable two-sided signature rather than noise.

**Falsifiable prediction.** Within-subject, tracts showing FA↑ should co-localize with elevated T1w/T2w (both = remyelination) and with *recovering* regions, while tracts showing FA↓ should co-localize with NII edema signatures and with symptom severity. Falsified if FA↑ and T1w/T2w↑ are anatomically unrelated, or if direction is random with respect to recovery state.

**Non-specialist consequence.** If the "confusing" scan results are actually a coherent picture of simultaneous damage and repair, researchers can stop arguing about which direction is "right" and start measuring the damage-vs-repair balance — which is what a patient and doctor actually care about.

`origin: brainstorm`

---

### Idea 8 — Brainstem T1w/T2w "recovery index"
*Category 9 (biomarker) · cert 0.25 · extends `@spec:multimodal-mri-biomarker`*

**Mechanistic rationale + evidence link.** The broad multimodal panel (@spec:multimodal-mri-biomarker) is a candidate for *detecting* post-infectious brain involvement. This idea proposes a narrower, directional claim better suited to a longitudinal/treatment-response role: the pons/midbrain/cerebellar-tonsil T1w/T2w gradient (recovered > long COVID, pfdr < 0.001 @Thapaliya2025BrainMRI) is a candidate **recovery index** — a single-region, single-metric readout that should rise with recovery (Idea 1) and could serve as an objective outcome measure in recovery/treatment trials. It is more falsifiable than the multimodal panel because it makes a specific regional + directional + longitudinal prediction.

**Falsifiable prediction.** Brainstem T1w/T2w rises monotonically with recovery and correlates with the midbrain-cognition relationship already reported (r = −0.64 @Thapaliya2025BrainMRI). Falsified if brainstem T1w/T2w does not change with recovery or fails to discriminate recovering from stable patients in an independent cohort.

**Non-specialist consequence.** A single, simple-to-acquire brainstem measurement that tracks recovery would give drug trials an objective "is the brain getting better" endpoint — but it is unproven and still requires the substrate question to be resolved first.

`origin: brainstorm`

---

### Idea 9 — Microstructural-integrity state with three substrate nodes (DAG/ODE)
*Category 7 (model extension) · cert 0.25*

**Mechanistic rationale + evidence link.** The document's causal/formal models should not encode a single "myelin" node for T1w/T2w. The ratio is sensitive to three distinct biological substrates — myelin content, gliosis, and iron @Thapaliya2025BrainMRI — each with a *different* causal upstream and a *different* sign relationship to symptoms. Modeling implication: the DAG needs three nodes (`myelin`, `gliosis`, `iron`) feeding one measurement (`T1w/T2w`), with **unresolved edge signs**. Concretely: `neuroinflammation → gliosis → T1w/T2w↑` (pathological, negative symptom correlation) versus `neuroinflammation → demyelination → (recovery) → remyelination → T1w/T2w↑` (healing, positive recovery correlation). The sign of the `T1w/T2w ↔ function` edge is therefore *conditional on the unresolved substrate* and should be flagged as such rather than fixed. Second extension: NAA as an energy-compensation variable coupled to the existing lactate/energetic ODE, with a prediction that NAA and lactate co-vary under energetic stress @Godlewska2025MRS.

**Falsifiable prediction.** If gliosis-driven, T1w/T2w correlates positively with glial markers (MAO-B) and negatively with function; if remyelination-driven, it correlates positively with function and recovery time (mirrors Ideas 1 and 5). The model is falsified to the extent the substrate resolves to a driver not in the three-node set.

**Non-specialist consequence.** Getting the wiring of the model right (three separate causes feeding one scan reading) prevents the document's formal reasoning from silently assuming the scan means "myelin" when it might mean inflammation or iron — an internal-consistency fix, not a clinical one.

`origin: brainstorm`

---

### Idea 10 — Anti-inflammatory / remyelination pharmacological probe
*Category 3 (drug/pharmacological — genuine mechanistic angle) · cert 0.20 · ⚠ research-only*

**Mechanistic rationale + evidence link.** A pharmacological challenge can disambiguate the substrate in a way static imaging cannot. If the elevated T1w/T2w reflects *reversible* neuroinflammatory gliosis, a brief anti-inflammatory intervention (e.g., a short corticosteroid course, or a microglial/astroglial modulator) should *lower* T1w/T2w on re-scan; if it reflects fixed myelin or iron, it should not move. Conversely, a remyelination-promoting probe (e.g., clemastine, an M1/H1 agent shown to promote oligodendrocyte differentiation in MS) should *raise* T1w/T2w only if the signal tracks myelin and if remyelination capacity remains. This is a **mechanistic probe, not a treatment recommendation** — the goal is to read the substrate off the response, not to treat anyone. It is the only category-3 idea that earns inclusion because it is a genuine mechanistic angle on a diagnostic question.

**Falsifiable prediction.** T1w/T2w drops with anti-inflammatory challenge (⇒ gliosis) or rises with remyelination challenge (⇒ myelin); null response to both (⇒ iron/fixed). Any response pattern is informative.

**Non-specialist consequence.** If a short test with an existing drug could reveal *what* the abnormal scan signal is made of, it would shortcut years of expensive multi-modality imaging — but no one should take these drugs off-label for ME/CFS/long COVID based on this.

`origin: brainstorm`

---

## Critical ideas (mandatory)

### Idea 2 — Iron-deposition alternative to the myelin/gliosis reading
*Category 10 (mechanism may NOT be relevant) · cert 0.35*

**Mechanistic rationale + evidence link.** T1w/T2w is directly sensitive to iron — tissue iron shortens T2 and thereby *raises* the T1w/T2w ratio, exactly mimicking the "myelin" reading. The primary paper's own caveat names iron as one possible substrate @Thapaliya2025BrainMRI, but the document's bib contains independent reason to take iron seriously: post-COVID iron dyshomeostasis is documented (hyperferritinaemia 35% at 60 days, persistent iron dyshomeostasis at 360 days @Sonnweber2022CovILD; impaired erythrocyte function and altered iron handling @KronsteinWiedemann2024RBC). If the elevated T1w/T2w in the brainstem/cerebellar regions reflects iron deposition rather than myelin or gliosis, then the entire "remyelination/recovery" interpretation (Idea 1) collapses, and the finding becomes a marker of metal/iron handling, not repair. This is the strongest single alternative explanation and should gate any positive remyelination claim.

**Falsifiable prediction.** Quantitative susceptibility mapping (QSM) or R2* in the same regions will show no iron elevation in the T1w/T2w-positive voxels; conversely, positive QSM in those voxels falsifies the remyelination reading. (This is already partly named in @oq; the addition is the *independent biomedical reason* — documented post-COVID iron dyshomeostasis — that makes iron the leading candidate, not a tie.)

**Non-specialist consequence.** If the abnormal scan signal is actually iron rather than brain repair, it points at a treatable metal-metabolism problem rather than a "the brain is healing" story — but that also means the current "recovery" interpretation is likely wrong and should not be used to reassure patients yet.

`origin: brainstorm`

---

### Idea 11 — Null hypothesis: epiphenomenon, and which claims need revision
*Category 11 (null hypothesis assessment) · cert 0.30*

**Mechanistic rationale + evidence link.** Under the null, the microstructural/neurochemical changes are epiphenomenal or non-specific — driven by deconditioning, mood, age, or small-sample cluster-thresholding, and carrying no causal role in symptoms. Specific claims that would need revision if the null holds:

- **Function correlations are fragile.** The "T1w/T2w correlates with physical/cognitive function" claim rests on exactly two correlations (r = 0.56, r = −0.64) in n = 47, and *no* DTI–clinical correlation survived correction @Thapaliya2025BrainMRI. This is thin evidence for a structure–function link and should be flagged as preliminary, not carried forward as established.
- **The 85% diagnostic accuracy claim is likely overfit.** @Wu2026Cingulum's ML classifier is single-lab, single-cohort, no independent validation set — a classic overfit scenario. "85% accuracy" should be reported as in-sample, not as a diagnostic biomarker.
- **The "NAA↑ = compensation" read is unvalidated** (Idea 3); it could equally be a quantitation artefact.
- The **severity-gated partial nulls** (@Arendt2026: no overall FA difference in unselected cohorts; @Yu2025PI: no FA/MD/RD group effect) are consistent with the changes being severity- or subset-specific rather than a general disease signature.

**Falsifiable prediction.** A multi-site replication correcting for age/sex/mood/deconditioning will find no group difference, or a difference fully explained by these covariates. If so, the microstructural signal demotes from "disease mechanism" to "epiphenomenal correlate," and the function-correlation and diagnostic-accuracy claims are withdrawn or downgraded.

**Non-specialist consequence.** If these brain-scan differences turn out to be incidental — explained by inactivity, mood, or normal variation rather than the illness itself — then no amount of imaging will produce a usable biomarker, and researchers would be better off spending that effort elsewhere; this matters for research priorities, not for any individual patient today.

`origin: brainstorm`

---

### Idea 12 — Griffith-cluster replication inflation, small-n Type I, and selection/generalizability
*Category 12 (evidence quality) · cert 0.30*

**Mechanistic rationale + evidence link.** Three distinct quality concerns temper every positive claim in this topic:

1. **Single-lab cluster masquerading as replication.** The "elevated T1w/T2w + altered DTI" finding is a 5-paper single-lab cluster (Thapaliya 2020/2021/2025, Singh 2026, Maksoud 2020 — all Griffith NCNED) @Thapaliya2020T1 @Thapaliya2021DTI @Thapaliya2025BrainMRI @Singh2026DTIDKI @Maksoud2020Neuro. These are *not* independent replications of each other; the apparent "consistency" is one lab re-finding its own signal. The genuinely independent support (≥6 organic labs) exists but with **direction heterogeneity and one severity-gated partial null**, so the independent picture is "real but not uniform," not a clean replication.
2. **Small-n + exploratory cluster thresholding → Type I inflation.** Primary n = 47 with subgroups of 12–19; the authors themselves concede cluster-based analysis may inflate Type I error @Thapaliya2025BrainMRI. Multiple pfdr values near 0.001–0.05 across many regions in a small sample is a recipe for some findings being noise.
3. **Selection and generalizability.** The COVID-recovered group are "healthy controls who had COVID" — a *selected resilient* group (survivors with no persistent symptoms), not a random post-COVID sample, so "recovered > long COVID" contrasts a resilient subset against a symptomatic subset. The never-infected controls may differ in unmeasured ways (activity, healthcare-seeking). And the cohort is WHO-long-COVID, *not* ME/CFS-diagnosed — so no finding transfers to ME/CFS without a direct ME/CFS replication; the ME/CFS link is by lab-provenance and regional analogy, not direct measurement.

**Falsifiable prediction.** Independent (non-Griffith) labs applying the same T1w/T2w protocol in a non-selected post-COVID or ME/CFS cohort will fail to reproduce the specific regional pattern, or reproduce it only in severity-selected subgroups — which would demote the finding from "established" to "single-lab, subset-specific."

**Non-specialist consequence.** Most of what this paper claims is one Australian lab's finding in a small, hand-picked sample — patients and clinicians should treat any "we found a brain biomarker" headline from this line of work as preliminary until a different, independent team sees the same thing.

`origin: brainstorm`

---

## Certainty summary

All certainties are preliminary self-assessments for Phase-5 reassessment. None exceed 0.55; the two most defensible ideas are the *design* proposals (Idea 4 longitudinal rescan, Idea 5 disambiguation battery), which are methodological rather than substantive claims. The substantive mechanistic claims (Ideas 1–3) are held at 0.28–0.35 pending substrate resolution.

## Cross-cutting caveat

Ideas 1, 8, and 10 all depend on the *unresolved* T1w/T2w substrate (@oq:t1w-t2w-myelin-substrate). If Idea 2 (iron) is correct, Ideas 1 and 8 fail as stated and should be re-read as "T1w/T2w iron-deposition gradient," not "recovery gradient." The brainstorm's internal dependency chain: Idea 5 (disambiguation) and Idea 4 (longitudinal) are upstream of everything substantive; they are the highest-value investments.
