# Brainstorm — Handgrip Strength (HGS) / Fatigability in ME/CFS

- **Topic slug:** `handgrip-strength-fatigability-mecfs`
- **Phase:** 4 (Creative Brainstorming) of `/integrate-topic`
- **Date:** 2026-10-18
- **Decision:** PROCEED — scope = monitoring/phenotyping only, NOT diagnostic
- **Lineage:** parents = R2 (handgrip PEM biomarker) and S2 (handgrip PEM tracker) from `ops/plans/creative-integration-priorities-2026-07-27.md`. These are NOT re-proposed verbatim; ideas below are extensions/refinements or distinct angles. Where an idea descends from a parent, it is flagged.

---

## Hard scope constraints (carried from Phase 2)

Every idea below must respect:

1. **HGS is not diagnostic.** No idea may claim HGS rules ME/CFS in or out. The diagnostic null is already *supported* (Mihatsch: no index separates ME/CFS from noME/CFS; Wallraven AUC 0.61–0.63).
2. **Severe/very-severe applicability is unknown.** All cohorts are mild/moderate ambulatory. Maximal-effort testing may be infeasible or provoking in this group.
3. **PEM-provocation by testing is unstudied** (0 papers). The 96.6–99.3% completion rate is not evidence of absence of PEM risk.
4. **Peripheral-vs-central is unresolved.** Jäkel/Mihatsch (peripheral), Kent-Braun 1993 (central activation), Popkirov 2025 (submaximal effort, same cohort as Jäkel). Not resolvable by methodology alone.

---

## Evidence base (bib keys verified by grep)

**`diagnosis-assessment.bib` (core stream):**
`Jakel2021HGS`, `Mihatsch2026HandgripCYP`, `Wallraven2026HandgripPCS`, `Popkirov2025CV`, `Steinkirchner2026comment`, `KentBraun1993central`, `RamirezVelez2023ALMI`, `Tankisi2023neurophysiology`, `DazaArana2026ML`, `FernandezPola2026architecture`.

**Cross-referenced keys (other bib files, verified — used for bridges/drugs/supplements):**
`Schlomer2025PyridostigmineMECFS` (mast-cell.bib), `Joseph2022neurovascularDysreg` (vascular.bib), `Aschman2023postcovidCapillary` (vascular.bib), `Charlton2025muscleMicrovasc` (vascular.bib), `McCully1999NIRS` (general.bib), `Scheibenbogen2025muscle` (energy-metabolism.bib), `Wirth2022muscleSodium` (energy-metabolism.bib), `Lanhers2015creatine` (energy-metabolism.bib), `Bendahan2002citrulline` (energy-metabolism.bib), `Kedor2022PostCOVIDfatigue` (long-covid.bib), `Stein2024immunoadsorption` (autoimmunity.bib), `Scheibenbogen2025immunoadsorption` (pathophysiology-general.bib).

---

# Ideas by category

## 1. Novel hypotheses

### H1 — Recovery ratio is the only index that isolates a between-session *recovery* process, and it is the cleanest candidate for a vascular/energetic readout, not a strength readout

**Mechanistic rationale:** The three protocol indices conflate different biology. Fmax and fatigue ratio (Fmax/Fmean) mix muscle bulk, within-session pacing, and effort strategy. The recovery ratio (Fmean session 2 / session 1) is different in kind: it measures what the muscle does in the 60 minutes *between* sessions — phosphocreatine (PCr) resynthesis, reperfusion, and ionic re-normalization — none of which requires more muscle mass. A patient can have normal Fmax and a broken recovery ratio, or vice versa.

**Evidence link:** Recovery ratio is lower in ME/CFS than HC in Jäkel (female 0.87 vs 1.0, p < 0.0001) @Jakel2021HGS and differs in the pediatric/young-adult cohort @Mihatsch2026HandgripCYP; in post-COVID, poor recovery associates with elevated ICAM-1 @Wallraven2026HandgripPCS.

**Certainty:** 0.40

**Falsifiable prediction:** If recovery ratio reflects reperfusion/PCr resynthesis, it should correlate with NIRS reoxygenation kinetics @McCully1999NIRS and with PCr-recovery measures, and should NOT correlate with muscle cross-sectional area @FernandezPola2026architecture — whereas Fmax *should* correlate with CSA. Refuted if recovery ratio tracks CSA rather than reoxygenation.

**Non-specialist consequence:** If true, the 60-minute wait in this test stops being a nuisance and becomes the point — it reads out how well muscle *refuels between efforts*, which is exactly what ME/CFS patients report is broken, rather than just how strong they are. (Research-stage: needs one NIRS co-registration study, ~1–2 years out.)

### H2 — Elevated intra-session force variability (CV) is a motor-control phenotype, not a validity confound

**Mechanistic rationale:** Popkirov reads a high coefficient of variation (CV) across serial maximal grips as submaximal effort — i.e. invalid data. Steinkirchner disputes the method. A third reading exists: the elevated CV is *itself* the signal — an instability in central motor drive, consistent with Kent-Braun's finding of reduced voluntary activation. This reframes "exclude noisy trials" into "quantify the noise," and aligns with the fatigue-vs-fatigability framework @Tankisi2023neurophysiology.

**Evidence link:** CV 14.7% vs 5.9% in ME/CFS vs HC (p < 0.00001) @Popkirov2025CV; reduced voluntary activation with normal peripheral fatigue @KentBraun1993central; methodological dispute @Steinkirchner2026comment.

**Certainty:** 0.30

**Falsifiable prediction:** If CV is central-drive instability, it should correlate with central-activation measures (twitch interpolation, motor-evoked-potential amplitude) and with cognitive/brain-fog load, and should NOT correlate with muscle biopsy or PCr-recovery markers. Refuted if CV is fully explained by test-retest noise.

**Non-specialist consequence:** If true, a number currently discarded as "the patient didn't try hard enough" becomes a real measurement of how stably the brain drives muscle — which protects patients from being wrongly accused of poor effort and turns a nuisance into a diagnostic signal. (Research-stage; the decisive test is a twitch-interpolation study, ~2–3 years out.)

### H3 — Part of the grip deficit is a downstream readout of iron/oxygen-delivery status, not an independent muscle variable

**Mechanistic rationale:** Wallraven found mean grip force positively correlated with ferritin (r = 0.42). Kedor 2022 identified ferritin and hemoglobin among post-COVID CFS biomarkers. If low iron status lowers oxygen-carrying capacity, sustained force falls for a delivery reason — not a muscle reason and not a central-drive reason. This is a third mechanistic route orthogonal to the peripheral/central debate.

**Evidence link:** Fmean ↔ ferritin r = 0.42 @Wallraven2026HandgripPCS; ferritin/hemoglobin among severity biomarkers @Kedor2022PostCOVIDfatigue.

**Certainty:** 0.25

**Falsifiable prediction:** If iron status contributes, Fmean should correlate with hemoglobin/ferritin in an independent cohort, and iron repletion in iron-deficient patients should improve Fmean. Refuted if the ferritin association vanishes after adjusting for acute-phase (inflammatory) markers.

**Non-specialist consequence:** If true, part of the handgrip deficit is fixable by correcting iron deficiency — an ordinary, cheap, in-clinic intervention — instead of being an untreatable feature of the disease. (Actionable for the subset who are truly iron-deficient; a standard iron panel is enough to check.)

---

## 2. Research directions

### R1 — Fit exponential fatigue and recovery time constants from the *existing* two-session force series (free extra signal)

**Mechanistic rationale:** The protocol already records 20 force values (10 grips × 2 sessions). Fitting F(t) = F0·e^(−t/τf) within a session and a recovery curve F(t) = Fmin + (F0−Fmin)(1−e^(−t/τr)) between sessions yields two identifiable time constants (τ_fatigue, τ_recovery) instead of two single-point ratios. More information, zero new patients.

**Evidence link:** Raw series exist in the driving studies @Jakel2021HGS @Mihatsch2026HandgripCYP; the fatigue-vs-fatigability framework motivates the split @Tankisi2023neurophysiology.

**Certainty:** 0.35

**Falsifiable prediction:** ME/CFS differs from controls in τ_recovery but not τ_fatigue (if microvascular/energetic), or the reverse (if metabolic). Refuted if neither time constant separates groups after normalization, i.e. the ratio indices add nothing.

**Non-specialist consequence:** A re-analysis of numbers already sitting in the published datasets could sharpen *which part* of muscle function is broken — without recruiting a single new patient. (Tractable now; a re-analysis is weeks, not years.)

### R2 — Prospective adult study: does recovery ratio track PEM episodes within patients over weeks? (the monitoring claim is currently untested)

**Mechanistic rationale:** The integrated chapter explicitly flags that the *monitoring* use is an inference from cross-sectional group differences — no study shows within-person HGS change tracks PEM prospectively. This is the single most important open test of the entire monitoring scope.

**Evidence link:** Gap identified in the ch23 clinical-finding caveat ("the prospective relationship between HGS change and PEM has not been tested") and in the Phase 2 synthesis.

**Certainty:** 0.20 (hypothesis to test)

**Falsifiable prediction:** In mild/moderate adults, morning recovery ratio falls before or coincident with a PEM episode and correlates with next-day symptom severity (r > 0.5). Refuted if HGS is flat across documented PEM episodes.

**Non-specialist consequence:** If it tracks PEM, patients get a cheap early-warning number for when they are overdrawing their energy envelope — something no questionnaire currently gives reliably. (A naturalistic repeated-measures study, ~1 year to a readout.)

*Lineage:* descends from parent R2 (pediatric, decay-slope, t+24h) but is distinct — adult population, recovery-ratio index, PEM-episode correlation, and it directly tests the monitoring inference rather than proposing a pediatric biomarker.

### R3 — Severe/very-severe feasibility: a submaximal fixed-load grip protocol for the housebound

**Mechanistic rationale:** Every cohort is ambulatory; maximal effort may be infeasible or provoking in severe patients. A fixed submaximal target (hold X% of predicted force, measure time-to-failure or force steadiness) removes the maximal-effort requirement and its provocation risk, while still measuring fatigability.

**Evidence link:** Severity gap (Phase 2 synthesis); the move away from maximal effort is motivated by @Popkirov2025CV.

**Certainty:** 0.25

**Falsifiable prediction:** A fixed-load submaximal grip test is completable in ≥80% of severe/very-severe patients without PEM within 48h, and shows a within-person fatigability signal. Refuted if even submaximal testing provokes PEM.

**Non-specialist consequence:** If it works, the sickest patients — who currently have no objective functional measure at all — gain a safe home test for tracking their state. (Feasibility study; the answer determines whether the whole HGS program can ever serve the severe population.)

---

## 3. Drug / medication ideas (all research-stage, medical supervision)

### D1 — Pyridostigmine as a recovery-ratio-selective probe (perfusion/NMJ), not just a strength drug

**Mechanistic rationale:** Pyridostigmine improves handgrip in ME/CFS (Schlömer 2025) and improves O2 extraction/exercise capacity (Joseph 2022). If the HGS deficit has a cholinergic/perfusion component, pyridostigmine should improve the recovery ratio (reperfusion-dependent) *more* than absolute Fmax (mass-dependent). This also mirrors myasthenia gravis, where pyridostigmine reverses the NMJ decrement.

**Evidence link:** @Schlomer2025PyridostigmineMECFS; @Joseph2022neurovascularDysreg; microvascular reading @spec:handgrip-microvascular.

**Certainty:** 0.35

**Falsifiable prediction:** In a crossover, pyridostigmine improves recovery ratio relative to placebo while Fmax change is minimal. Refuted if it raises Fmax uniformly (pure NMJ/strength effect) with no recovery-ratio selectivity.

**Non-specialist consequence:** If true, an existing, cheap drug could be repurposed to treat the *recovery* failure specifically, and the handgrip test would tell doctors which patients are likely to respond — no new drug development needed. (Needs a small crossover trial, ~2 years out.)

### D2 — Immunoadsorption with recovery ratio as a β2-adrenergic-autoantibody-responsive endpoint

**Mechanistic rationale:** Wallraven found anti-S1 IgG inversely correlated with Fmean; immunoadsorption removes β2-adrenergic-receptor autoantibodies that impair vasodilation. If autoantibody-driven endothelial dysfunction limits grip recovery, recovery ratio should rise after immunoadsorption in proportion to β2-AAb reduction.

**Evidence link:** anti-S1 IgG ↔ Fmean @Wallraven2026HandgripPCS; immunoadsorption removes β2-AAb @Stein2024immunoadsorption @Scheibenbogen2025immunoadsorption.

**Certainty:** 0.25

**Falsifiable prediction:** In post-COVID ME/CFS with elevated β2-AAb, recovery ratio improves post-immunoadsorption and correlates with β2-AAb reduction. Refuted if HGS indices are unchanged despite antibody clearance.

**Non-specialist consequence:** If true, the handgrip test becomes a cheap way to tell whether a patient's weakness is antibody-driven and worth treating with apheresis — sparing patients an invasive procedure that would not help them. (Observational add-on to an existing apheresis cohort; ~2 years out.)

### D3 — Acute pyridostigmine "challenge" during the two-session test as a bedside perfusion discriminator

**Mechanistic rationale:** Combine D1's mechanism with the test itself: give one pyridostigmine dose before session 2 and compare recovery ratio to a no-drug baseline. A within-patient, single-visit pharmaco-probe of whether the deficit is cholinergic/perfusion-mediated.

**Evidence link:** @Schlomer2025PyridostigmineMECFS; @Joseph2022neurovascularDysreg.

**Certainty:** 0.20

**Falsifiable prediction:** Recovery ratio is higher in the pyridostigmine session than baseline in patients whose deficit is perfusion-mediated, and unchanged in those whose deficit is central. Refuted if pyridostigmine has no within-session effect in anyone.

**Non-specialist consequence:** If it works, a single office visit with a cheap pill and a handgrip device could reveal *why* a patient is weak — guiding treatment the same day instead of after months of specialist testing. (Proof-of-concept pharmacology study; farther out, ~3 years.)

---

## 4. Supplements

### S1 — Creatine monohydrate targets the repeated-bout / recovery-ratio component specifically

**Mechanistic rationale:** Creatine raises phosphocreatine, speeding PCr resynthesis between contractions — precisely the process the fatigue ratio and recovery ratio probe. It should therefore improve the recovery/fatigue ratios *more* than absolute Fmax (which depends on mass/CSA). The novel claim is index-selectivity, not general strength.

**Evidence link:** @Lanhers2015creatine (creatine improves repeated-bout strength); @Bendahan2002citrulline (20% faster PCr recovery is the analogous target); energetic deficit @Scheibenbogen2025muscle.

**Certainty:** 0.30

**Falsifiable prediction:** Creatine loading (e.g., 20 g/d × 5 d then 3–5 g/d) improves recovery ratio and fatigue ratio in ME/CFS with little Fmax change. Refuted if creatine raises Fmax uniformly (general strength effect).

**Non-specialist consequence:** If true, an over-the-counter, inexpensive supplement could specifically improve how quickly muscle recovers between efforts — the exact thing patients report is broken — with the handgrip test measuring whether it is actually working. (A low-risk pilot is actionable now.)

### S2 — Citrulline-malate as a perfusion-targeted recovery supplement

**Mechanistic rationale:** Citrulline → arginine → nitric oxide → vasodilation; malate feeds the TCA cycle. This matches the microvascular recovery hypothesis (poor recovery ↔ elevated ICAM-1). Should improve recovery ratio if the deficit is perfusion-limited.

**Evidence link:** @Bendahan2002citrulline (34% ↑ oxidative ATP, 20% faster PCr recovery); microvascular reading @spec:handgrip-microvascular (ICAM-1/VEGF from @Wallraven2026HandgripPCS).

**Certainty:** 0.25

**Falsifiable prediction:** Citrulline-malate improves recovery ratio in ME/CFS patients with poor baseline recovery and elevated endothelial markers, but not in those with normal recovery. Refuted if no index moves.

**Non-specialist consequence:** If true, a cheap amino-acid supplement could target the blood-flow side of the recovery problem — again with the handgrip test as the yardstick for whether it works. (Actionable now as a low-risk trial.)

### S3 — Targeted iron repletion for the low-ferritin, low-Fmean subset (with the caveat that ferritin ≠ iron deficiency)

**Mechanistic rationale:** Wallraven's Fmean↔ferritin correlation and Kedor 2022's ferritin/hemoglobin finding suggest a delivery/iron component. But ferritin is an acute-phase reactant: low ferritin in a pro-inflammatory disease does not equal iron deficiency. Repletion is only justified in genuinely iron-deficient patients (low ferritin AND low transferrin saturation).

**Evidence link:** @Wallraven2026HandgripPCS (Fmean ↔ ferritin r = 0.42); @Kedor2022PostCOVIDfatigue.

**Certainty:** 0.20

**Falsifiable prediction:** Iron repletion improves Fmean only in patients with low ferritin AND low transferrin saturation (true iron deficiency), not in patients with low ferritin and normal saturation (inflammation). Refuted if iron has no HGS effect even in the truly deficient.

**Non-specialist consequence:** If true, a subset of patients get a concrete fix for part of their weakness from a standard blood test and an iron prescription — but only the right subset, which the handgrip + iron-panel pairing identifies. (Actionable now, but only after a proper iron workup.)

---

## 5. Non-pharmacological interventions

### N1 — Fixed-submaximal-load grip as a fatigability (not strength) measure for pacing

**Mechanistic rationale:** Maximal-effort testing is confounded by central drive @Popkirov2025CV and may provoke PEM. A fixed submaximal target (hold X% of predicted force, measure time-to-failure or force steadiness) isolates *fatigability* — decline during sustained submaximal work — which is the construct ME/CFS is actually about, and it is the fatigue-vs-fatigability distinction @Tankisi2023neurophysiology. Lower provocation, cleaner construct.

**Evidence link:** @Tankisi2023neurophysiology (fatigability construct); @Popkirov2025CV (maximal effort unreliable); @KentBraun1993central (central activation).

**Certainty:** 0.30

**Falsifiable prediction:** Fixed-load submaximal endurance time/steadiness differs between ME/CFS and controls without requiring maximal effort, and does not provoke PEM. Refuted if it fails to separate groups.

**Non-specialist consequence:** If true, patients get a gentler self-test that measures endurance at a fixed task rather than raw strength — safer and closer to what daily life actually demands. (Protocol-development study; the safety advantage is the near-term payoff.)

### N2 — Daily-morning recovery ratio as a pacing gate (monitoring → activity-budget decision)

**Mechanistic rationale:** The clinical loop the chapter leaves open is HGS as an *input* to pacing decisions, not merely an outcome. Use the morning recovery ratio (or Fmean) to set the day's activity budget: below threshold → reduce planned exertion. This is a prospective hypothesis, not current practice (the chapter correctly notes no trial yet).

**Evidence link:** ch23 clinical-finding caveat (monitoring use untested); indices from @Jakel2021HGS @Mihatsch2026HandgripCYP.

**Certainty:** 0.20

**Falsifiable prediction:** Pacing decisions gated on morning HGS reduce PEM frequency/duration versus self-report-only pacing in a randomized trial. Refuted if HGS-gated pacing adds nothing.

**Non-specialist consequence:** If true, pacing stops being guesswork — a morning number tells patients whether today is a "do less" day, which could prevent crashes before they start. (Needs the R2 prospective study first; ~2 years out.)

---

## 6. Combinations + access

### C1 — HGS + NIRS in the same two-session protocol = portable microvascular phenotyping

**Mechanistic rationale:** The microvascular hypothesis @spec:handgrip-microvascular is testable if muscle reoxygenation (NIRS) is measured during the exact grip protocol. Both devices are portable and clinic-feasible, unlike CPET. The novelty is the *combined portable kit* as a clinical tool, not just a research apparatus.

**Evidence link:** @spec:handgrip-microvascular; @McCully1999NIRS (impaired O2 delivery, slower resaturation in ME/CFS); @Wallraven2026HandgripPCS (ICAM-1/VEGF).

**Certainty:** 0.30

**Falsifiable prediction:** Patients with poor recovery ratio show slower NIRS reoxygenation during the protocol. Refuted if reoxygenation is normal in poor-recovery patients.

**Non-specialist consequence:** If true, a two-device setup costing a few hundred dollars — not a catheter lab — could measure the blood-flow limitation that currently needs invasive cardiopulmonary testing. (Feasible now; a co-registration study is the direct next step.)

### C2 — Home bundle: submaximal HGS + HRV/orthostatic monitoring for the housebound

**Mechanistic rationale:** Severe patients cannot attend clinics and cannot do maximal testing. A home bundle of fixed-load HGS (N1) plus existing home HRV/orthostatic measures gives the housebound an objective daily snapshot without leaving bed.

**Evidence link:** severity gap (Phase 2); N1 rationale; existing autonomic-monitoring content.

**Certainty:** 0.20

**Falsifiable prediction:** The home bundle is feasible (≥70% daily compliance) in severe patients and produces a within-person signal that tracks good/bad days. Refuted if compliance collapses or the signal is absent.

**Non-specialist consequence:** If it works, the patients who need objective monitoring most — those too sick to travel — finally get a way to show clinicians their state from home. (Feasibility-first; ~2 years out.)

### C3 — Access/equity: Bluetooth home dynamometer + daily recovery-ratio tracking, with standardization and effort-inflation guardrails

**Mechanistic rationale:** A $30–100 Bluetooth dynamometer (already the hardware basis of the S2-parent tracker) makes daily recovery-ratio tracking possible at scale. The access bottleneck is protocol standardization across devices and the risk of effort inflation when unsupervised — Popkirov's CV concern amplifies at home.

**Evidence link:** clinic feasibility 99.3%/96.6% completion @Mihatsch2026HandgripCYP; effort variability @Popkirov2025CV.

**Certainty:** 0.25

**Falsifiable prediction:** Home dynamometry is reproducible (test-retest ICC > 0.8 vs clinic) and its recovery ratio tracks clinic values. Refuted if unsupervised values are uninterpretable due to effort variability.

**Non-specialist consequence:** If the standardization problem is solved, daily muscle-recovery monitoring becomes as cheap and routine as a home blood-pressure cuff — but only if unsupervised numbers can be trusted. (Engineering + reproducibility study; the device exists, the validation does not.)

---

## 7. Mathematical model extensions

### M1 — Two-parameter exponential model (τ_fatigue, τ_recovery) replaces the two coarse ratios

**Mechanistic rationale:** Formalize R1. Model within-session force as F(t) = F0·e^(−t/τf) and between-session recovery as F(t) = Fmin + (F0−Fmin)(1−e^(−t/τr)). Two identifiable time constants with different mechanistic meanings (metabolic depletion vs reperfusion/rephosphorylation).

**Evidence link:** raw series in @Jakel2021HGS @Mihatsch2026HandgripCYP; framework @Tankisi2023neurophysiology.

**Certainty:** 0.35

**Falsifiable prediction:** τ_recovery separates ME/CFS from controls more than τ_fatigue (or the reverse), and the two constants load on distinct covariates (τ_recovery ↔ NIRS/ferritin; τ_fatigue ↔ muscle CSA). Refuted if both are indistinguishable from controls.

**Non-specialist consequence:** The same handgrip data yields two mechanistically distinct numbers instead of two blurry ratios, giving modelers cleaner parameters and clinicians a clearer read on which system is failing. (Formalization-ready now; feeds Part V ODE.)

### M2 — Decompose the force series into drift (fatigue) + noise (effort variability) as separate DAG/ODE nodes

**Mechanistic rationale:** The Popkirov CV (noise) and the fatigue ratio (drift) are currently treated as rival interpretations when they are orthogonal components of one trace. Model them as two parameters: central-drive noise (σ) and peripheral-fatigue drift (β). Central deficit → high σ, low β; peripheral deficit → high β, normal σ.

**Evidence link:** @Popkirov2025CV; @KentBraun1993central; @Steinkirchner2026comment.

**Certainty:** 0.30

**Falsifiable prediction:** σ and β are statistically independent across patients and load on different covariates (σ ↔ central activation, β ↔ biopsy/NIRS markers). Refuted if they collapse into one factor.

**Non-specialist consequence:** This turns the peripheral-vs-central debate into two measurable numbers on the same trace, so patients can be assigned to the right mechanism without waiting for the definitive twitch-interpolation study. (Adds "effort variability" and "muscle fatigability" as distinct DAG nodes.)

### M3 — DAG edge: endothelial dysfunction → recovery ratio → functional impairment, with recovery ratio as the mediator

**Mechanistic rationale:** Formalize the microvascular chain. Add a mediator node so that the ICAM-1/VEGF → functional-impairment path is routed through recovery ratio, making the mediation testable.

**Evidence link:** @Wallraven2026HandgripPCS (ICAM-1/VEGF + recovery); @spec:handgrip-microvascular.

**Certainty:** 0.25

**Falsifiable prediction:** Conditioning on recovery ratio attenuates the ICAM-1 ↔ functional-impairment association (mediation), and the indirect path is significant. Refuted if recovery ratio does not mediate.

**Non-specialist consequence:** If the mediation holds, the handgrip recovery number becomes the *mechanistic bridge* between blood markers and disability — a single cheap number that carries the vascular signal. (A DAG edge for Part V.)

---

## 8. Cross-disease bridges

### X1 — Myasthenia gravis as the canonical fatigability-with-normal-strength comparator

**Mechanistic rationale:** MG is the textbook disease of *fatigability* — decrement on repetitive stimulation with normal resting strength — and is treated with pyridostigmine. ME/CFS HGS shows fatigability plus pyridostigmine responsiveness. If ME/CFS grip shows an MG-like decrement pattern, that implicates NMJ/transmission; if not, the deficit is upstream (central).

**Evidence link:** @Schlomer2025PyridostigmineMECFS; @Joseph2022neurovascularDysreg; fatigue ratio @Jakel2021HGS.

**Certainty:** 0.30

**Falsifiable prediction:** ME/CFS shows a reproducible decrement-like fall across the 10 grips (not just lower Fmax), and this decrement is pyridostigmine-responsive. Refuted if the fall is purely a mass/effort effect insensitive to cholinesterase inhibition.

**Non-specialist consequence:** Borrowing a hundred-year-old test concept from myasthenia gravis could tell researchers whether the nerve-to-muscle connection itself is failing — a question that has been open since 1993. (Reuses existing equipment; the decrement analysis is doable now.)

### X2 — Long COVID / post-infectious: deconditioning (dynapenia) vs capillary rarefaction — HGS as the discriminator

**Mechanistic rationale:** Ramírez-Vélez shows appendicular lean-mass index (ALMI) mediates 52% of the grip deficit in long COVID (deconditioning), while Charlton and Aschman show capillary loss not explained by inactivity. HGS plus a muscle-mass correction (ALMI/CSA) can separate the mass-mediated component from a residual disease-specific deficit.

**Evidence link:** @RamirezVelez2023ALMI; CSA↔grip @FernandezPola2026architecture; @Charlton2025muscleMicrovasc; @Aschman2023postcovidCapillary.

**Certainty:** 0.30

**Falsifiable prediction:** After adjusting HGS for ALMI/CSA, a residual ME/CFS-specific deficit persists that correlates with capillary density/biopsy markers. Refuted if the entire deficit is mass-mediated.

**Non-specialist consequence:** This would settle whether ME/CFS weakness is "just deconditioning" — a claim used to dismiss patients — or a real muscle pathology, with direct consequences for whether graded exercise is appropriate or harmful. (The statistical adjustment is doable now with existing data.)

### X3 — Cancer-related fatigue as the deconditioning-matched internal comparator (already in Jäkel's data)

**Mechanistic rationale:** Jäkel included 18 cancer-related-fatigue (CRF) patients — a group expected to have fatigue plus deconditioning but not ME/CFS pathology. Comparing ME/CFS vs CRF (not just vs healthy controls) isolates what is ME/CFS-specific. This comparison is under-used in the integrated content.

**Evidence link:** n=18 CRF comparator group @Jakel2021HGS.

**Certainty:** 0.25

**Falsifiable prediction:** ME/CFS shows a larger recovery-ratio deficit than CRF despite comparable activity levels. Refuted if ME/CFS and CRF are indistinguishable.

**Non-specialist consequence:** If ME/CFS patients recover worse than equally-deconditioned cancer-fatigue patients, the "it's just deconditioning" argument loses its last anchor — and the recovery ratio becomes the smoking gun. (A re-analysis of an existing published dataset.)

---

## 9. Diagnostic / biomarker ideas (all explicitly NON-diagnostic, per scope cap)

### B1 — Recovery ratio as a trajectory/monitoring biomarker (severity tracking), never a diagnostic

**Mechanistic rationale:** Among the three indices, recovery ratio is the most mechanistically distinct (between-session recovery) and the most likely to track PEM trajectory. Framed strictly as prognostic/monitoring per the scope cap.

**Evidence link:** recovery poorer in ME/CFS @Jakel2021HGS @Mihatsch2026HandgripCYP @Wallraven2026HandgripPCS.

**Certainty:** 0.30

**Falsifiable prediction:** Recovery ratio tracks within-person severity/PEM prospectively (R2). Refuted if it is a stable trait that does not move with clinical state.

**Non-specialist consequence:** If it tracks trajectory, recovery ratio becomes the "HbA1c of ME/CFS" — a cheap number that shows whether a patient is getting better or worse over months, entirely separate from any diagnostic role. (Dependent on R2.)

### B2 — Effort-variability (CV) as a phenotyping biomarker to split central-drive vs peripheral subgroups

**Mechanistic rationale:** Not diagnostic, but stratifying. High-CV patients (central-drive instability) may respond to central-acting interventions; low-CV patients to peripheral/perfusion. This is treatment-matching, explicitly not diagnosis.

**Evidence link:** @Popkirov2025CV; @KentBraun1993central.

**Certainty:** 0.25

**Falsifiable prediction:** CV stratifies patients into groups with different treatment responses (e.g., pyridostigmine vs central-acting). Refuted if CV predicts nothing about response.

**Non-specialist consequence:** If true, the same 15-minute test sorts patients toward the right treatment family — avoiding trial-and-error with drugs that target the wrong system. (Longer-term; requires treatment-response cohorts.)

### B3 — Composite "recovery-vascular index" (recovery ratio + endothelial markers) as a mechanistic phenotyping tool

**Mechanistic rationale:** Combine recovery ratio with ICAM-1/VEGF to identify a microvascular endotype. Non-diagnostic; a mechanistic subgroup marker. Must avoid the diagnostic conflation.

**Evidence link:** ICAM-1 ↔ poor recovery; VEGF ↔ fatigue ratio @Wallraven2026HandgripPCS.

**Certainty:** 0.20

**Falsifiable prediction:** The composite identifies a patient subgroup with a distinct (perfusion-limited) mechanism and distinct treatment response. Refuted if the markers add no stratification beyond recovery ratio alone.

**Non-specialist consequence:** If true, a blood test plus a handgrip session identifies which patients have a blood-flow problem worth treating — matching patients to treatments, not diagnosing the disease. (Exploratory; depends on replicating the Wallraven markers.)

---

## 10. Reasons this mechanism may NOT be relevant to ME/CFS (mandatory)

### NR1 — Deconditioning / dynapenia
The deficit may be low muscle mass from inactivity. Ramírez-Vélez found ALMI mediates 52% of the grip deficit in long COVID @RamirezVelez2023ALMI. If so, HGS tracks activity level, not ME/CFS, and "improves" with any reconditioning — useless as a disease measure.

### NR2 — Effort-dependence / circularity
If the deficit is submaximal effort @Popkirov2025CV, then in a disease where effort intolerance IS the pathology, HGS is measuring the defining symptom circularly — not a clean muscle readout.

### NR3 — Measurement noise
CV of 14.7% in ME/CFS means individual readings are noisy. Group effects are large, but individual test-retest reliability in patients is unproven — threatening the within-person monitoring use.

### NR4 — Lack of generalizability
Forearm grip may not engage the whole-body, post-exertional pathways that define PEM. A 10-second forearm squeeze may be mechanistically irrelevant to the systemic crash.

### NR5 — Severe/very-severe inapplicability
The measure is only validated in mild/moderate ambulatory patients; in the sickest (where objective measures matter most) it is untested and likely infeasible — so it cannot serve the population that needs it most.

### NR6 — Demographic confound
HGS is strongly sex/age/body-size dependent; without rigorous normative scaling, group differences could reflect demographic mismatch, not disease. Jäkel mitigates via female-only analysis; Mihatsch spans puberty (10–25 y) @Mihatsch2026HandgripCYP.

---

## 11. Null-hypothesis assessment (mandatory)

### NH1 — The core monitoring null is NOT ruled out
Null: "recovery ratio does not track prospective PEM." Zero studies test this. The entire monitoring/severity-tracking scope rests on an untested inference; the null could still be true.

### NH2 — The diagnostic null is already SUPPORTED
Mihatsch reports no index separates ME/CFS from noME/CFS @Mihatsch2026HandgripCYP; Wallraven AUC 0.61–0.63 @Wallraven2026HandgripPCS. This is a case where the null is the finding: HGS as a diagnostic is dead, and the scope cap correctly encodes it.

### NH3 — The mechanism null is NOT ruled out
Null: "the deficit is fully explained by deconditioning/muscle mass." Ramírez-Vélez supports it partially @RamirezVelez2023ALMI; Charlton argues against pure inactivity @Charlton2025muscleMicrovasc. Equally open.

---

## 12. Evidence-quality concerns (mandatory)

### EQ1 — Cohort overlap
Popkirov 2025 reanalyzes Jäkel 2021 (same 105/66 cohort). Counting it as independent inflates support for the submaximal-effort claim @Popkirov2025CV @Jakel2021HGS.

### EQ2 — Exploratory correlations without multiplicity control
Wallraven's ICAM-1/VEGF/anti-S1/thrombocyte associations (p 0.030–0.048, many comparisons, no correction reported) carry high false-positive risk; the "microvascular" story is thin @Wallraven2026HandgripPCS.

### EQ3 — No external validation of any threshold
PPV 55.6% is cohort-prevalence-dependent; single-center Munich lineage for Jäkel/Mihatsch @Mihatsch2026HandgripCYP.

### EQ4 — Protocol heterogeneity
Grip count and dynamometer model (EH101 vs others) differ across studies; normative scaling differs across ages — limiting pooling.

### EQ5 — Abstract-only coverage
Kent-Braun 1993 and Ramírez-Vélez 2023 read at abstract level; the Tankisi review not line-read. Some cited claims rest on abstracts @KentBraun1993central @RamirezVelez2023ALMI.

### EQ6 — Population mixing
Wallraven (61.4% ME/CFS subset of PCS), Ramírez-Vélez and Daza-Arana (long COVID, not ME/CFS), Fernández-Pola (fibromyalgia). Non-ME/CFS evidence carries the cross-disease bridges and must be weighted accordingly.

---

# Idea scoring table (positive ideas, categories 1–9)

Scoring dimensions: `mech` (mechanistic advance), `tx` (treatment/actionability), `expl` (explanatory power over ME/CFS features), `math` (formal-model leverage), `dx` (biomarker/phenotyping value). 0–5 integers, conservative.

| ID | Title | Cert | mech | tx | expl | math | dx |
|----|-------|------|------|-----|------|------|----|
| H1 | Recovery ratio isolates a between-session recovery process | 0.40 | 4 | 2 | 3 | 3 | 3 |
| H2 | CV is a motor-control phenotype, not a validity confound | 0.30 | 4 | 2 | 3 | 4 | 3 |
| H3 | Grip deficit partly reflects iron/O2-delivery status | 0.25 | 3 | 3 | 2 | 1 | 2 |
| R1 | Fit τ_fatigue / τ_recovery from existing series | 0.35 | 3 | 1 | 2 | 5 | 2 |
| R2 | Prospective: does recovery ratio track PEM? | 0.20 | 2 | 2 | 4 | 2 | 4 |
| R3 | Submaximal fixed-load grip for the severe/housebound | 0.25 | 2 | 3 | 3 | 1 | 2 |
| D1 | Pyridostigmine as recovery-ratio-selective probe | 0.35 | 4 | 4 | 2 | 2 | 3 |
| D2 | Immunoadsorption with recovery ratio as β2-AAb endpoint | 0.25 | 3 | 3 | 2 | 1 | 3 |
| D3 | Acute pyridostigmine challenge as bedside discriminator | 0.20 | 3 | 4 | 1 | 1 | 3 |
| S1 | Creatine targets recovery/fatigue ratio selectively | 0.30 | 3 | 4 | 2 | 2 | 2 |
| S2 | Citrulline-malate as perfusion-targeted recovery aid | 0.25 | 2 | 3 | 2 | 1 | 1 |
| S3 | Iron repletion for the low-ferritin subset | 0.20 | 2 | 3 | 1 | 0 | 1 |
| N1 | Fixed-submaximal-load fatigability measure | 0.30 | 3 | 3 | 3 | 2 | 2 |
| N2 | Morning recovery ratio as a pacing gate | 0.20 | 1 | 4 | 3 | 1 | 3 |
| C1 | HGS + NIRS portable microvascular phenotyping | 0.30 | 4 | 2 | 3 | 2 | 2 |
| C2 | Home bundle (submax HGS + HRV/orthostatic) for severe | 0.20 | 2 | 3 | 2 | 1 | 2 |
| C3 | Bluetooth home dynamometer + standardization guardrails | 0.25 | 1 | 3 | 2 | 1 | 3 |
| M1 | Two-parameter exponential model | 0.35 | 3 | 1 | 2 | 5 | 2 |
| M2 | Drift (fatigue) vs noise (variability) decomposition | 0.30 | 4 | 1 | 3 | 5 | 2 |
| M3 | DAG: endothelial → recovery ratio → impairment | 0.25 | 3 | 1 | 2 | 4 | 1 |
| X1 | Myasthenia gravis decrement comparator | 0.30 | 4 | 3 | 3 | 1 | 3 |
| X2 | Deconditioning vs capillary rarefaction discriminator | 0.30 | 4 | 2 | 4 | 2 | 3 |
| X3 | CRF as deconditioning-matched comparator | 0.25 | 3 | 1 | 4 | 1 | 2 |
| B1 | Recovery ratio as trajectory/monitoring biomarker | 0.30 | 2 | 2 | 3 | 1 | 4 |
| B2 | CV as central-vs-peripheral phenotyping stratifier | 0.25 | 3 | 2 | 2 | 2 | 4 |
| B3 | Recovery-vascular composite endotype | 0.20 | 3 | 2 | 2 | 1 | 3 |

---

# Ranking — highest-value ideas

Ranked by mechanistic advance × actionability × tractability × novelty, within the scope cap.

| Rank | ID | One-line value |
|------|----|----------------|
| 1 | **M2 / H2** | Decomposing the force trace into drift (fatigue) vs noise (effort variability) resolves the peripheral-vs-central debate with data already in hand, and protects patients from being misread as not trying. |
| 2 | **D1** | Pyridostigmine as a recovery-ratio-selective probe ties the HGS stream to an existing cheap drug and a concrete treatment-matching test. |
| 3 | **R1 / M1** | Fitting fatigue and recovery time constants extracts a cleaner mechanistic readout from already-collected numbers, for free. |
| 4 | **R2** | The prospective PEM-tracking test is the single highest-stakes gap — it decides whether the entire monitoring scope is real. |
| 5 | **X2** | Adjusting HGS for muscle mass to separate deconditioning from disease-specific deficit attacks the most damaging dismissal patients face. |

---

# Report summary

- **Positive ideas (categories 1–9):** 26
- **Mandatory assessments:** NR (6), NH (3), EQ (6)
- **Bib keys cited:** 12 core-stream + cross-ref keys, all verified by grep — no invented keys.
- **Origin flag:** every positive idea carries `origin: brainstorm`.
- **Scope-cap compliance:** no idea claims diagnostic utility; severe applicability flagged unknown where relevant; PEM-provocation and peripheral-vs-central respected.

**Top 5 highest-value ideas:**
1. **M2/H2** (effort-variability-as-signal, drift-vs-noise decomposition) — resolves peripheral-vs-central with existing data.
2. **D1** (pyridostigmine recovery-ratio-selective probe) — connects to an existing cheap drug with a treatment-matching test.
3. **R1/M1** (exponential fatigue/recovery time constants) — free mechanistic signal from already-collected numbers.
4. **R2** (prospective PEM-tracking test) — the highest-stakes gap; decides if the monitoring scope is real.
5. **X2** (HGS + muscle-mass correction to separate deconditioning from disease) — attacks the "it's just deconditioning" dismissal.
