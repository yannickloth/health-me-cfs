# Phase 3 — Creative Brainstorming: Post-Exercise Recovery Optimization in ME/CFS

**Date:** 2026-06-18
**Agent:** scientific-insight-generator (opus)
**Literature Base:** 14 papers (Jammes2020 membrane/redox subgroups, Soejima2015 Waon, Munemoto2017 Waon, Li2024 massage meta, Rohrhofer2025 mast cell, Wirth2023 vascular, White2023 GET, Vink2025 GET, Godlewska2024 creatine, Lien2019 lactate, Jin2026 PEM MIN model, Aregawi2026 noradrenergic cognitive, Elson2023 exosome mtDNA, White2022 exercise cytokines)
**Existing brainstorm:** Prior recovery-PEM document (2026-05-07) covers epigenetic reversal, EV propagation, recovery debt model, CPET studies — this extends into new territory
**Special emphasis:** PEM component decomposition, inflammation interception timing, resolution vs suppression, mast cell cascade amplification, muscle mass paradox, passive recovery modalities

---

## Executive Summary

This document extends the prior recovery brainstorming (2026-05-07) into underexplored dimensions: the healthy vs ME/CFS recovery contrast, active recovery contraindication, post-exercise nutrition/supplement/medication timing, massage risk/benefit, sauna as passive recovery, mast cell degranulation from movement, muscle mass paradox, GET failure mechanisms, PEM inflammation interception, PEM component decomposition, and the resolution failure hypothesis.

**Idea distribution (90 total):**
| Category | Count |
|----------|-------|
| 1. Novel hypotheses | 10 |
| 2. Research directions | 10 |
| 3. Drug/medication ideas | 10 |
| 4. Supplement/nutraceutical ideas | 10 |
| 5. Non-pharmacological interventions | 10 |
| 6. Combinations + access | 10 |
| 7. Mathematical model extensions | 10 |
| 8. Cross-disease bridges | 10 |
| 9. Diagnostic/biomarker ideas | 10 |

---

## Category 1: Novel Hypotheses

### H1 — Resolution Failure as Primary PEM Defect (Not Excessive Inflammation)

| | |
|---|---|
| **Mechanism** | PEM in ME/CFS is not primarily a hyper-inflammatory response but a failure to resolve a normal exercise-induced inflammatory surge. Exercise triggers appropriate IL-6, IL-10, TNF-α release. In healthy individuals, resolution programs engage within 2-6h: SPM synthesis (resolvins, protectins, maresins) upregulates, efferocytosis clears apoptotic neutrophils, macrophage phenotype switches M1→M2, and tissue returns to baseline by 24h. In ME/CFS, this resolution cascade fails: SPM production is impaired, efferocytosis is slow, and macrophages remain M1-polarized, extending the inflammatory half-life 3-5×. The inflammation is normal in magnitude but pathologically prolonged — explaining why anti-inflammatories that *suppress* inflammation (NSAIDs, steroids) show modest benefit while *pro-resolving* agents may work better. |
| **Evidence** | Jin2026 MIN model notes impaired resolution as gap; Engert 2026 sleep→SPM disruption; Gracia Aznar 2024 SPM supplementation in PCS; general SPM biology: resolution is active and inducible, not passive decay |
| **Certainty** | 0.45 |
| **Falsifiable** | ME/CFS plasma resolvin D1/E1 post-exercise will be ≤50% of controls at 6h and 24h. SPM precursor PUFA (DHA, EPA) in RBC membranes will be normal (ruling out substrate deficiency). Expression of SPM receptor ChemR23, GPR32 on PBMCs will be reduced ≥30% in ME/CFS. Single-cell RNA-seq of post-exercise macrophages will show persistent M1 signature at 24h where controls have switched to M2. |

### H2 — Muscle Spindle Mechanosensitivity as Mast Cell Degranulation Trigger

| | |
|---|---|
| **Mechanism** | Mechanical stretch and vibration during movement activate mechanosensitive ion channels (Piezo1, Piezo2, TRPV4) on muscle spindles and connective tissue fibroblasts. In ME/CFS, these mechanoreceptors are sensitized (possibly via autoantibodies, as in Rohrhofer2025 MCAS link or via GPCR autoantibodies). Mechanotransduction activates local mast cells through substance P and CGRP release from sensory nerve terminals (neurogenic inflammation). Each movement — walking, standing, typing — triggers subclinical mast cell degranulation that accumulates over the day. This explains: (1) why even minimal activity triggers PEM, (2) why antihistamines partially help (they block the downstream mediator, not the trigger), (3) why passive modalities (massage, vibration) could paradoxically worsen PEM by adding mechanical stimulation, and (4) the "décrassage" paradox — active recovery adds mechanical degranulation on top of existing inflammatory burden. |
| **Evidence** | Rohrhofer2025 mast cell-exercise link; Wirth2023 vascular-mediator mechanisms; general Piezo1/Piezo2 mechanobiology in muscle; substance P-MC activation literature |
| **Certainty** | 0.35 |
| **Falsifiable** | Post-exercise skin microdialysis will show higher histamine and tryptase in ME/CFS vs controls, correlating with symptom severity. Passive limb movement (without metabolic load) will increase plasma histamine in ME/CFS but not controls. Piezo1/TRPV4 antagonists will blunt the histamine response. Pedometer count will correlate with next-day plasma tryptase in ME/CFS (not controls). |

### H3 — Decomposed PEM: Cognitive and Muscular PEM Have Independent Rate-Limiting Steps

| | |
|---|---|
| **Mechanism** | Cognitive PEM (brain fog, concentration difficulty, headache, emotional lability) and muscular PEM (weakness, myalgia, heaviness, delayed recovery) are driven by different mechanisms with different rate-limiting steps. Cognitive PEM is rate-limited by: cerebral noradrenaline depletion + neuroinflammation (microglial activation, IL-1β in hippocampus/prefrontal cortex) + cerebral hypoperfusion from hypocapnia. Muscular PEM is rate-limited by: mitochondrial NAD+ depletion + ROS damage + impaired lactate clearance + membrane depolarization (Jammes2020). These two streams share triggers (exercise) and some mediators but can be independently targeted. A patient may experience severe cognitive PEM with minimal muscular PEM and vice versa. The independence explains why Aregawi2026 found noradrenergic deficiency correlating with cognitive — but not muscular — fatigue. Partial PEM relief (eliminating cognitive PEM while muscular PEM persists) is a meaningful therapeutic goal. |
| **Evidence** | Aregawi2026 (distinct noradrenergic basis for cognitive PEM); Jammes2020 (membrane/redox subgroups differ); Jin2026 MIN model (immune+metabolic+neuro as semi-independent axes); Lien2019 lactate (metabolic recovery distinct) |
| **Certainty** | 0.55 |
| **Falsifiable** | Factor analysis of PEM symptom diaries (n≥200) will reveal two orthogonal factors: cognitive (loading: concentration, word-finding, headache, emotional sensitivity) and muscular (loading: weakness, pain, heaviness, prolonged recovery). Independent cognitive and muscular exertion challenges will produce separable PEM profiles. Drugs targeting noradrenaline (atomoxetine, reboxetine) will improve cognitive PEM but not muscular PEM; mitochondrial agents (CoQ10, carnitine) will improve muscular PEM but not cognitive PEM. |

### H4 — PGC-1α/AMPK/SIRT1 Disconnection as the Molecular Basis of "Training Through PEM" Failure

| | |
|---|---|
| **Mechanism** | Exercise normally upregulates PGC-1α (master mitochondrial biogenesis regulator) via AMPK and SIRT1. This is the basis of training adaptation. In ME/CFS, PGC-1α is suppressed (possibly via HMGB1-TLR4 signaling, NF-κB-mediated repression, and/or epigenetic silencing as in Sharma2025). AMPK activation is impaired (NAD+ depletion compromises upstream signaling). SIRT1 activity is reduced (NAD+ is a required co-substrate). This means exercise does NOT trigger mitochondrial biogenesis in ME/CFS. Instead, each exertion event activates NF-κB, which represses PGC-1α further, creating a downward spiral. GET fails because graded exercise assumes the PGC-1α/AMPK/SIRT1 axis is intact — it is not. The only way to break the cycle is to pharmacologically or nutritionally repair this axis before any graded program begins. |
| **Evidence** | General exercise biology: PGC-1α/AMPK/SIRT1 axis well-established. ME/CFS: Sharma2025 epigenetic repression of biogenesis genes; Jin2026 MIN model notes mitochondrial dysfunction. Prior brainstorm: recovery debt model, biogenesis equation (ch31). |
| **Certainty** | 0.50 |
| **Falsifiable** | ME/CFS muscle biopsy (vastus lateralis) before and 6h after exercise will show: blunted PGC-1α mRNA, no increase in mitochondrial protein synthesis, elevated NF-κB p65 binding at PGC-1α promoter. Healthy controls will show the normal 3-5× PGC-1α increase. Six weeks of NAD+ precursor + AICAR (AMPK activator) should partially restore the exercise-induced PGC-1α response. |

### H5 — The Muscle Mass Paradox: More Muscle = More Recovery Buffer BUT More Metabolic Demand

| | |
|---|---|
| **Mechanism** | Larger muscle mass provides more mitochondrial reserve (more ATP generation capacity, higher PCr buffer), which should accelerate recovery — this is true in healthy athletes. But in ME/CFS, larger muscle mass also means: (1) more metabolic surface area for ROS production at rest (higher resting energy expenditure = higher baseline metabolic load), (2) more muscle tissue for autoantibodies to target (if myositis-associated antibodies exist, as suggested by Jammes2020 membrane damage), (3) greater lactate production capacity at submaximal workloads (Lien2019), (4) more muscle spindle mechanotransduction sites for mast cell degranulation (H2). This creates a paradox: muscle mass is a recovery asset in health but may be a metabolic liability in ME/CFS. Severely affected patients often have rapid muscle wasting — this may be compensatory (reducing the metabolic load) rather than purely pathological. The body may be actively catabolizing muscle to lower baseline energy demand. |
| **Evidence** | Jammes2020 (membrane damage suggests autoimmune targeting of muscle); Lien2019 (higher lactate); general cachexia biology: muscle wasting reduces metabolic rate in chronic disease |
| **Certainty** | 0.25 |
| **Falsifiable** | In ME/CFS, lower lean muscle mass (DEXA) will correlate with lower resting energy expenditure (REE), and after adjusting for REE, muscle mass will NOT correlate with PEM severity. ME/CFS skeletal muscle will show higher resting mitochondrial ROS production per unit mass vs controls (high-resolution respirometry + H2O2 probe). Six weeks of anabolic stimulus (testosterone or exercise) will worsen PEM despite increasing muscle mass (acute phase). |

### H6 — Mast Cell Activation as First-Pass PEM Amplifier: Exercise → Histamine → Vasodilation → CBF Drop → PEM

| | |
|---|---|
| **Mechanism** | Exercise triggers mast cell degranulation in skeletal muscle, skin, and perivascular space. Released histamine causes local vasodilation, increased vascular permeability, and sensory nerve activation. In ME/CFS, histamine clearance is impaired (diamine oxidase deficiency? genetic DAO variants? elevated baseline histamine saturating clearance). The vasoactive cascade: exercise → mast cell histamine release → splanchnic vasodilation → venous pooling → compensatory cerebral vasoconstriction (via reduced CO2 from hyperventilation) → cerebral hypoperfusion → brain fog. This cascade can be interrupted at multiple points: mast cell stabilizers (cromolyn, ketotifen), H1/H2 antihistamines (fexofenadine + famotidine), or vasoconstrictors (midodrine). The cascade is not inflammatory in the classical sense — it's vasoactive — which is why anti-inflammatories (NSAIDs) are less effective than antihistamines for acute PEM symptoms. |
| **Evidence** | Rohrhofer2025 (MCAS-ME/CFS link, exercise-mast cell degranulation); Wirth2023 (vascular-mediator framework); White2022 exercise cytokines (IL-6, IL-10 changes) |
| **Certainty** | 0.50 |
| **Falsifiable** | Plasma histamine and tryptase will peak at 1-2h post-exercise in ME/CFS, preceding the PEM symptom onset at 6-24h. Pre-treatment with H1+H2 antihistamines (2h before exercise) will reduce PEM severity at 24h by ≥30% vs placebo. Near-infrared spectroscopy (NIRS) will show reduced prefrontal cortex oxygen saturation during PEM only in the ME/CFS group, and this will be blunted by antihistamine pre-treatment. |

### H7 — Exercise-Induced mtDNA Release as Dual-Acting Neuroinflammatory Trigger

| | |
|---|---|
| **Mechanism** | Exercise causes mitochondrial stress and turnover. Damaged mitochondria release mtDNA into the cytosol and extracellular space. Extracellular mtDNA activates TLR9 on microglia and macrophages, triggering NF-κB and type I IFN responses. Cytosolic mtDNA activates cGAS-STING, amplifying the type I IFN pathway. Elson2023 found exosomal mtDNA in ME/CFS — suggesting that mtDNA is packaged into EVs and transported systemically. Each exercise session releases a pulse of mtDNA that reaches the brain via circulation or vagal afferents, triggering neuroinflammation that persists until the mtDNA is cleared. This mechanism links a single stimulus (exercise→mitochondrial turnover) to both peripheral inflammation and central neuroinflammation. |
| **Evidence** | Elson2023 (exosome mtDNA in ME/CFS — already in bib? check); Giloteaux2024 EV proteome; Jin2026 MIN model; general: mtDNA-TLR9-cGAS-STING literature |
| **Certainty** | 0.40 |
| **Falsifiable** | Plasma cell-free mtDNA (ND1, ND4 copy number by qPCR) will increase at 2-6h post-exercise in ME/CFS vs controls. Exosomal mtDNA will peak at 12-24h. DNase I infusion (clearing extracellular DNA) during exercise would reduce subsequent PEM severity — this could be tested in an animal model. STING inhibitor (H-151) would reduce neuroinflammatory markers in CSF post-exercise. |

### H8 — The "Exertion Tax" Model: Each Activity Unit Costs More Recovery Units in ME/CFS

| | |
|---|---|
| **Mechanism** | Describe recovery as a currency: 1 unit of healthy activity = 1 unit of recovery. In ME/CFS, the exchange rate is pathological: 1 activity unit = 3-10 recovery units. This tax is not uniform across activity types. Cognitive activity may have a different tax rate (e.g., 1:5) than physical activity (e.g., 1:8) or social/emotional activity (e.g., 1:3). The tax arises from: impaired mitochondrial efficiency (more energy wasted as heat), impaired lactate clearance (more metabolic debt), impaired membrane repolarization (Jammes2020 — longer ion gradient restoration), impaired inflammatory resolution (H1), and impaired noradrenaline recycling (Aregawi2026). Each impairment adds tax. The total PEM is the product of these individual impairments, not their sum. This is why fixing one pathway (e.g., antihistamines for the mast cell contribution) may give partial relief: it reduces the tax from one source but leaves others intact. |
| **Evidence** | Jammes2020 (membrane repolarization delay); Lien2019 (lactate clearance impairment); Aregawi2026 (noradrenergic deficiency); Jin2026 (multi-system MIN model) |
| **Certainty** | 0.40 |
| **Falsifiable** | In a session-by-session pacing study, subjective activity logs can be used to estimate the "tax rate" per activity domain. Patients with high physical tax (>5:1) will have high Lien2019 lactate abnormality (high day2 lactate). Patients with high cognitive tax will have low CSF MHPG per Aregawi2026. The tax rate will be stable within individuals over weeks but vary 3-10× between individuals. |

### H9 — Passive Recovery Modalities Bypass the Mechanosensitive Degranulation Barrier

| | |
|---|---|
| **Mechanism** | Active recovery ("décrassage": light movement after exertion) works in healthy athletes by increasing blood flow, enhancing lactate clearance, and maintaining muscle pliability. In ME/CFS, active recovery adds mechanical stimulation to already-sensitized mechanoreceptors (H2), triggering additional mast cell degranulation. The increased blood flow delivers vasoactive mediators to the brain, worsening cognitive PEM. Active recovery is thus biomechanically contraindicated in ME/CFS. However, PASSIVE recovery modalities that increase blood flow WITHOUT mechanical muscle stimulation should be effective: infrared sauna (heat→vasodilation without movement), pneumatic compression devices, mild hyperthermia, vasodilatory supplements (l-arginine, beetroot juice), and gentle manual lymphatic drainage (very light, minimal vibration). This predicts a dissociation: active recovery will worsen PEM outcomes vs rest, while passive thermal recovery will improve them. |
| **Evidence** | Soejima2015, Munemoto2017 (Waon/IR sauna improves CFS fatigue); general active recovery literature (healthy athletes); H2 mechanism (mechanosensitive degranulation) |
| **Certainty** | 0.35 |
| **Falsifiable** | Crossover trial: after standardized CPET, n=30 ME/CFS patients complete three recovery conditions (active recovery: 10min light cycling; passive thermal: 15min IR sauna; rest), each 1 week apart. Order randomized. Primary: PEM severity at 24h (DSQ-5). Prediction: PEM severity order will be: active recovery WORST, rest MIDDLE, IR sauna BEST. Plasma histamine will be highest after active recovery, lowest after IR sauna. |

### H10 — Blood Flow Recovery Heterogeneity: Muscles Recover at Different Rates in ME/CFS

| | |
|---|---|
| **Mechanism** | Post-exercise hyperemia (increased blood flow to exercised muscles) is essential for recovery — it delivers oxygen, removes lactate and inflammatory mediators. Jammes2020 found differential M-wave changes between rectus femoris (exercised) and flexor digitorum longus (resting) during leg exercise. This suggests that post-exercise blood flow is not uniformly impaired: some muscle groups may recover faster than others due to regional differences in microvascular function, pericyte coverage, or autonomic innervation. The clinical implication: alternating which muscle groups are used across days (a "local pacing" strategy — e.g., upper body day, lower body day) might allow partial recovery because the non-exercised group retains full perfusion capacity. Whole-body exertion (running, swimming) would be the worst because every muscle group is simultaneously impaired and competing for limited cardiac output. |
| **Evidence** | Jammes2020 (differential M-wave changes between muscle groups); Wirth2023 (microvascular heterogeneity); general exercise physiology: regional blood flow varies |
| **Certainty** | 0.30 |
| **Falsifiable** | Near-infrared spectroscopy (NIRS) on multiple muscle groups post-exercise will show: in controls, all exercised muscles have similar O2 saturation recovery curves; in ME/CFS, some muscles will show slow recovery (>48h to baseline) while others recover normally. Alternating upper/lower body exercise across days will produce less cumulative PEM than whole-body exercise of equivalent total work. Muscle-group-level perfusion tracking will predict which exercises are least costly for individual patients. |

---

## Category 2: Research Directions

### R1 — PEM Component Decomposition via Factor Analysis of N≥200 Symptom Diaries

| | |
|---|---|
| **Rationale** | PEM is treated as a unitary phenomenon in most studies (total DSQ score). If cognitive and muscular PEM have independent mechanisms (H3), they need separate measurement. Best approach: prospective symptom diaries (n≥200 patients, 14-28 days) with hourly or 4-hourly ratings of specific symptoms: concentration difficulty, word-finding difficulty, headache, photosensitivity (cognitive); muscle weakness, muscle pain, heaviness, need to rest (muscular); dizziness, palpitations, temperature dysregulation (autonomic). Factor analysis should extract 2-3 orthogonal factors. |
| **Evidence** | Aregawi2026 (cognitive/muscular PEM distinction); H3 above; existing DSQ and daily diary methods |
| **Certainty** | 0.75 |
| **Testability** | High — established methods, online or app-based data collection, large n feasible via patient registries |

### R2 — Pre-Exercise Antihistamine Blockade Crossover Trial

| | |
|---|---|
| **Rationale** | If mast cell degranulation is a first-pass PEM amplifier (H6), antihistamines before exercise should blunt PEM. Simple, low-risk, high-impact trial. Protocol: n=30 ME/CFS. Crossover: 3 days of standardized physical challenge (e.g., 10-min step test or 6-min walk). Conditions: (A) fexofenadine 180mg + famotidine 40mg, 2h pre-exercise; (B) placebo; (C) fexofenadine only. Order randomized, 1-week washout. Primary outcome: DSQ-5 at 24h. Secondary: hourly symptom tracking, actigraphy, HRV. |
| **Evidence** | Rohrhofer2025 (mast cell-exercise link); H6 (vasoactive cascade); general antihistamine safety |
| **Certainty** | 0.60 |
| **Testability** | High — established drugs, simple protocol, measurable outcome |

### R3 — IR Sauna vs Active Recovery vs Rest Crossover for Post-Exertion Recovery

| | |
|---|---|
| **Rationale** | Direct test of H9 (passive thermal recovery superior to active recovery and rest). Protocol: n=30 ME/CFS. After standardized CPET (or 3-min step test), recovery condition: (A) 15min far-IR sauna 60°C + 30min blanket (Waon protocol from Soejima2015); (B) 15min light cycling at 30% VO2max (active recovery); (C) 15min supine rest. Primary: PEM severity at 24h. Measures: NIRS (prefrontal oxygenation), HRV, plasma histamine/tryptase/cytokines. Each condition 1 week apart. |
| **Evidence** | Soejima2015, Munemoto2017 (Waon improves fatigue); H9 (passive vs active recovery); Li2024 massage (massive variation in outcomes — IR sauna may be more consistent) |
| **Certainty** | 0.55 |
| **Testability** | Medium — requires IR sauna setup but Waon protocol is well-defined |

### R4 — Lactate Clearance Rate Constant Determination in ME/CFS

| | |
|---|---|
| **Rationale** | Lien2019 showed abnormal lactate accumulation on day 2 but did not determine the clearance rate constant. Is the problem: (1) faster lactate production at submaximal loads, (2) slower clearance, or (3) both? Protocol: n=20 ME/CFS, n=20 controls. Submaximal exercise to steady-state lactate (2-4 mmol/L). Monitor lactate every 5 min during 60-min recovery. Fit mono-exponential decay: L(t) = L0·e^(-k·t) + Lrest. Primary: k (clearance rate constant). Predict: k will be 30-50% lower in ME/CFS. |
| **Evidence** | Lien2019 (abnormal day2 lactate); general exercise physiology (lactate clearance kinetics) |
| **Certainty** | 0.65 |
| **Testability** | High — standard exercise physiology protocol, cheap (lactate meter), definitive result |

### R5 — Graded NA+ Challenge to Determine Noradrenaline Reuptake Ceiling

| | |
|---|---|
| **Rationale** | Aregawi2026 found low CSF MHPG correlating with cognitive PEM. Is the ceiling for noradrenaline release reached at lower cognitive loads in ME/CFS? Protocol: n=20 ME/CFS, n=20 controls. Graded cognitive challenge (n-back at increasing difficulty levels). Measure: pupil diameter (noradrenergic tone proxy), plasma MHPG, subjective cognitive fatigue, cognitive performance. Primary: cognitive load at which pupil response saturates (ceiling) — predicted to be lower in ME/CFS. |
| **Evidence** | Aregawi2026 (central noradrenergic deficiency); general: pupil dilation as noradrenergic marker |
| **Certainty** | 0.55 |
| **Testability** | High — established pupillometry, graded cognitive tasks |

### R6 — "Muscle Group Rotation" Pacing Feasibility Study

| | |
|---|---|
| **Rationale** | If local muscle recovery is rate-limited and blood flow is heterogeneously impaired (H10), rotating which muscle groups are used each day might allow partial recovery. Protocol: n=15 ME/CFS (mild-moderate). 2-week standard pacing (whole-body activity as tolerated). 2-week muscle-group rotation (e.g., Monday: arm-focused, Tuesday: leg-focused, Wednesday: core, etc.; upper body/lower body days). Crossover, randomized. Primary: daily PEM score. Secondary: actigraphy, daily step counts, weekly exercise capacity (step test). |
| **Evidence** | Jammes2020 (muscle-specific M-wave changes); H10 (heterogeneous recovery) |
| **Certainty** | 0.40 |
| **Testability** | Medium — requires activity modification, feasible for mild-moderate |

### R7 — SPM Supplementation PEM Trial (Pilot)

| | |
|---|---|
| **Rationale** | Direct test of H1 (resolution failure). If ME/CFS fails to produce adequate SPMs, exogenous SPMs (resolvin precursors, or potentially active resolvins) should accelerate PEM recovery. Protocol: n=20 ME/CFS. 4 weeks EPA+DHA (3g/day, high DHA for resolvin D-series precursors). Pre/post: 2-day CPET. Primary: Day 2 VO2 decline. Secondary: plasma SPM levels (LC-MS/MS), inflammatory cytokines, PEM duration. |
| **Evidence** | H1 (resolution failure); Gracia Aznar 2024 (SPM in PCS); Engert 2026 (sleep-SPM link); general: resolvin biology |
| **Certainty** | 0.45 |
| **Testability** | Medium — requires SPM assay (LC-MS/MS) which is specialized but available |

### R8 — PGC-1α Exercise Response Biopsy Study

| | |
|---|---|
| **Rationale** | Critical pathophysiological question: does exercise stimulate ANY mitochondrial biogenesis in ME/CFS? Vastus lateralis biopsy before and 6h after standardized exercise. Measure: PGC-1α mRNA (qPCR), PGC-1α protein (western blot), mitochondrial subpopulation markers (subsarcolemmal vs intermyofibrillar), electron transport chain activity. Compare ME/CFS vs sedentary controls vs healthy athletes. |
| **Evidence** | H4 (PGC-1α/AMPK/SIRT1 disconnection); general exercise biology (biopsy gold standard) |
| **Certainty** | 0.50 |
| **Testability** | Medium — invasive (muscle biopsy), but definitive mechanistic data |

### R9 — Cognitive PEM Selective Challenge: Does Mental Exertion Alone Trigger PEM?

| | |
|---|---|
| **Rationale** | Critical clinical question: do cognitively demanding activities (sustained concentration, social interaction, screen time) independently trigger PEM, or is PEM always secondary to physical exertion? Protocol: n=30 ME/CFS. Three conditions: (A) 2h intensive cognitive task (Stroop + n-back + Raven's matrices, no physical component); (B) 30min light physical activity (walking, 2-3 METs); (C) rest control. Randomize order, each 1 week apart. Primary: DSQ-5 at 24h. Cognitive PEM subscale (factor-analyzed from R1). |
| **Evidence** | H3 (decomposed PEM); Aregawi2026 (cognitive PEM distinct); Jin2026 MIN model |
| **Certainty** | 0.60 |
| **Testability** | High — simple crossover design, cheap, addresses a fundamental clinical question |

### R10 — Dose-Response of Massage: Does Pressure Level Predict PEM Worsening?

| | |
|---|---|
| **Rationale** | Li2024 massage meta-analysis found benefit on average, but individual response heterogeneity was high (some patients worsened, some improved). Hypothsis: deep tissue massage (high pressure, vibration, shearing) activates mechanosensitive mast cells (H2) → histamine release → PEM worsening. Light Swedish massage or effleurage (low pressure, gliding) minimizes mechanotransduction and may be beneficial through parasympathetic activation. Protocol: n=30 ME/CFS. Standardized 20-min massage at three pressure levels (light, moderate, deep), crossover. Primary: PEM severity at 24h. Secondary: plasma histamine/tryptase pre/post massage. |
| **Evidence** | Li2024 massage meta (heterogeneous outcomes); H2 (mechanosensitive degranulation); Rohrhofer2025 (mast cell-exercise link) |
| **Certainty** | 0.45 |
| **Testability** | Medium — requires experienced massage therapist, but pressure standardization is feasible |

---

## Category 3: Drug/Medication Ideas

### D1 — Combined H1+H2 Antihistamine as PEM Prophylaxis

| | |
|---|---|
| **Mechanism** | Block both histamine receptors: H1 (fexofenadine — vascular/neurological effects) and H2 (famotidine — gastric/vascular effects, plus H1-independent anti-inflammatory effects via NF-κB inhibition). Timing: take 2h before anticipated exertion. This intercepts the mast cell degranulation → vasodilation → hypoperfusion cascade (H6) before it starts. Duration of action: ~12h for fexofenadine, ~12h for famotidine, covering the immediate post-exertion window. For patients with unpredictably triggered PEM, daily dosing may be needed. |
| **Evidence** | Rohrhofer2025 (mast cell activation); H6 (vasoactive cascade); Wirth2023 (vascular mediators); general: antihistamine safety and tolerability |
| **Dose** | Fexofenadine 180mg + famotidine 40mg, 2h pre-exercise, or divided BID for daily coverage |
| **Certainty** | 0.50 |
| **Falsifiable** | Crossover trial (R2) will show fexofenadine+famotidine superior to placebo for PEM reduction. Single-agent fexofenadine will be inferior to combination. Patients with higher baseline plasma histamine will have greater response. Timing matters: 2h pre-exercise will outperform same drugs taken 2h POST-exercise. |

### D2 — Cromolyn Sodium (Mast Cell Stabilizer) for Long-Term PEM Reduction

| | |
|---|---|
| **Mechanism** | Cromolyn stabilizes mast cell membranes, preventing degranulation regardless of trigger (mechanical, allergic, chemical). Unlike antihistamines (which block the effect of histamine after release), cromolyn prevents histamine and tryptase release entirely. This should reduce the cumulative day-long degranulation from routine movement (H2). Cromolyn is poorly absorbed orally (1-2% bioavailability) but this is sufficient for gut mast cells. For systemic effect, nebulized or subcutaneous cromolyn would be needed. Ketotifen (oral mast cell stabilizer + H1 antagonist) is an alternative with better absorption. |
| **Evidence** | Rohrhofer2025 (mast cell activation); H2, H6 (mechanosensitive degranulation); general: cromolyn efficacy in MCAS |
| **Dose** | Cromolyn 100-200mg PO QID (gut mast cells); ketotifen 1-2mg BID preferred for systemic effect |
| **Certainty** | 0.40 |
| **Falsifiable** | Ketotifen 8-week trial in n=40 ME/CFS will show: reduced PEM frequency/severity (daily diary), reduced plasma tryptase, reduced daily activity variability (less boom-bust). Patients with high baseline tryptase will have greatest response. |

### D3 — Atomoxetine or Reboxetine for Cognitive PEM

| | |
|---|---|
| **Mechanism** | Selective noradrenaline reuptake inhibitors (NRIs). Atomoxetine (ADHD drug) increases synaptic noradrenaline by blocking NET (norepinephrine transporter). In ME/CFS with central noradrenergic deficiency (Aregawi2026 low CSF MHPG), this should improve cognitive stamina and reduce cognitive PEM. Unlike methylphenidate or amphetamines (which also increase dopamine and have abuse potential), NRIs are non-addictive and have cleaner safety profiles. The effect should be specific to cognitive PEM — not muscular PEM. |
| **Evidence** | Aregawi2026 (central noradrenergic deficiency → cognitive fatigue); H3 (decomposed PEM); general: atomoxetine for cognitive function in ADHD and TBI |
| **Dose** | Atomoxetine 10-40mg/day (start low 10mg — ME/CFS may be sensitive to side effects); monitor HR/BP |
| **Certainty** | 0.40 |
| **Falsifiable** | Atomoxetine will improve cognitive PEM (n-back performance + subjective mental fatigue after cognitive challenge) but NOT muscular PEM (muscle strength recovery after CPET). Effect will be present in patients with low CSF MHPG but absent in those with normal MHPG. |

### D4 — Low-Dose Aripiprazole or Pimavanserin for Neuroinflammatory PEM

| | |
|---|---|
| **Mechanism** | Aripiprazole is a partial D2 agonist with 5-HT2A antagonism. At low doses (0.5-2mg), it has anti-inflammatory effects on microglia: reduces TNF-α, IL-6, and NF-κB activation. Pimavanserin is a selective 5-HT2A inverse agonist (no dopamine activity). Both reduce microglial activation in neuroinflammatory models. If PEM involves microglial activation (Jin2026, H1 resolution failure), low-dose aripiprazole or pimavanserin could reduce the neuroinflammatory component. Aripiprazole has the advantage of also improving anergia and motivation at low doses. |
| **Evidence** | Jin2026 MIN model; H3 (cognitive PEM via neuroinflammation); general: aripiprazole anti-microglial effects in animal models; pimavanserin for neuropsychiatric symptoms |
| **Dose** | Aripiprazole 0.5-2mg/day or pimavanserin 10-17mg/day |
| **Certainty** | 0.30 |
| **Falsifiable** | Low-dose aripiprazole will improve cognitive PEM scores but not muscular PEM. Response will correlate with baseline TSPO PET signal (microglial activation). Higher doses (>2mg) will lose the anti-inflammatory benefit and worsen fatigue. |

### D5 — HSD-1 Inhibitors (e.g., AZD4017) for Glucocorticoid-Mediated Metabolic Recovery Impairment

| | |
|---|---|
| **Mechanism** | Tissue-level glucocorticoid activity is amplified by 11β-HSD1 (converts inactive cortisone to active cortisol). In muscle, excessive local cortisol suppresses PGC-1α, protein synthesis, and mitochondrial biogenesis. ME/CFS may have upregulated 11β-HSD1 in muscle (from chronic stress or inflammation), creating a state of functional local hypercortisolism despite normal serum cortisol. HSD-1 inhibitors (AZD4017, developed for metabolic syndrome, safe in human trials) should restore PGC-1α expression and improve post-exercise recovery. This bypasses the need to target the systemic HPA axis. |
| **Evidence** | H4 (PGC-1α suppression); general: 11β-HSD1 biology; AZD4017 human safety data (osteoporosis, T2DM trials) |
| **Dose** | AZD4017 400-800mg/day (doses used in T2DM trials) |
| **Certainty** | 0.20 |
| **Falsifiable** | ME/CFS muscle biopsy will show elevated 11β-HSD1 mRNA vs controls. HSD-1 inhibition for 4 weeks will increase PGC-1α expression and improve 2-day CPET day2 performance. No effect on serum cortisol (confirm tissue-specific action). |

### D6 — IVIG for PEM Resolution Enhancement via Improved Immune Switching

| | |
|---|---|
| **Mechanism** | IVIG modulates the immune system through multiple mechanisms: Fc receptor blockade, anti-idiotypic antibodies, complement inhibition, promotion of regulatory T cells, and enhancement of efferocytosis (clearance of apoptotic cells). If PEM involves failure to clear inflammatory debris (H1 resolution failure), IVIG could accelerate resolution by: (1) providing anti-inflammatory Fc fragments that shift macrophages to M2, (2) neutralizing pro-inflammatory autoantibodies, (3) enhancing Treg function. This is not about PEM prevention but about accelerating recovery once PEM has started — a "rescue" strategy. |
| **Evidence** | H1 (resolution failure); general: IVIG for autoimmune and inflammatory conditions; small ME/CFS IVIG trials show mixed results (may need timing optimization) |
| **Dose** | 0.4-1g/kg IVIG, given at start of PEM (day 1) or as chronic maintenance every 3-4 weeks |
| **Certainty** | 0.25 |
| **Falsifiable** | IVIG given at PEM onset (within 12h of exertion) will shorten recovery time by ≥50% vs placebo. Effects will be largest in patients with elevated autoantibodies (GPCR, nuclear, etc.) at baseline. Timing matters: IVIG AFTER exertion will outperform IVIG as chronic maintenance. |

### D7 — Guanfacine for PEM Prevention via Sympathoinhibition

| | |
|---|---|
| **Mechanism** | Guanfacine is an α2A-adrenergic agonist that reduces central sympathetic outflow. In ME/CFS, the sympathetic response to exercise is excessive: the heart rate response is higher at submaximal loads, and recovery HR is prolonged. Guanfacine dampens this hyper-sympathetic state, potentially: (1) reducing myocardial oxygen demand during exertion, (2) lowering peak catecholamine surge → reducing catecholamine-driven inflammation and oxidative stress, (3) improving sleep quality (α2A agonism promotes slow-wave sleep). Unlike β-blockers (which lower HR and BP but increase peripheral resistance and can worsen fatigue), guanfacine centrally downregulates the entire stress response. |
| **Evidence** | General: guanfacine for ADHD, PTSD, hypertension; autonomic dysfunction in ME/CFS (ch10); H6 (catecholamines amplify inflammatory cascade) |
| **Dose** | 0.5-2mg QHS (start 0.5mg; hypotension risk in POTS patients) |
| **Certainty** | 0.25 |
| **Falsifiable** | Guanfacine will reduce HR at given submaximal workload. PEM severity post-standardized challenge will be reduced vs placebo. Effect will be largest in patients with hyperadrenergic POTS phenotype (high baseline HR, high BP variability). Patients with low baseline BP will not tolerate guanfacine (monitoring needed). |

### D8 — Methylene Blue as Mitochondrial Electron Shuttle for Accelerated Recovery

| | |
|---|---|
| **Mechanism** | Methylene blue (MB) is a redox-active compound that bypasses Complex I/III inhibition by accepting electrons from NADH and transferring them directly to cytochrome c, restoring electron transport chain flux when the proximal ETC is impaired. At low doses (0.5-2mg/kg), MB acts as a mitochondrial therapeutic: it increases oxygen consumption, reduces ROS (by improving ETC efficiency), and enhances ATP synthesis. In ME/CFS, if Complex I or III activity is impaired post-exercise (oxidative damage to iron-sulfur clusters), MB could serve as a temporary electron shunt, accelerating ATP recovery. MB also has monoamine oxidase inhibition (neurotransmitter support) and autophagy-enhancing effects, giving it a multi-target profile. High-dose MB is a pro-oxidant (used in methemoglobinemia at 1-2mg/kg IV) — correct dosing is critical. |
| **Evidence** | General: MB mitochondrial effects (Compton 2020, Tucker 2018); ME/CFS: mitochondrial dysfunction well-documented; Lien2019 (lactate — impaired oxidative phosphorylation) |
| **Dose** | 0.5-1mg/kg PO (40-80mg for 80kg person), 1h before exertion or immediately post-exertion; MAOI interaction risk with SSRIs — caution |
| **Certainty** | 0.20 |
| **Falsifiable** | Low-dose MB (0.5mg/kg) post-exercise will reduce the time for ATP recovery (³¹P-MRS PCr recovery halftime) in skeletal muscle. Lactate clearance rate (R4) will improve. At 2mg/kg, opposite effects (pro-oxidant). Serotonin syndrome risk with concomitant SSRI use must be monitored. |

### D9 — N-Acetylcysteine (NAC) Timing Optimization for ROS Peak Interception

| | |
|---|---|
| **Mechanism** | Exercise induces a predictable ROS surge. The timing of NAC administration determines whether it acts as: (1) pre-exercise glutathione precursor (building antioxidant capacity before the surge), (2) immediate post-exercise free radical scavenger (direct ROS neutralization via thiol groups), or (3) delayed post-exercise modulator of redox signaling (excessive NAC can actually block beneficial exercise adaptations by scavenging exercise-induced ROS that are needed for mitochondrial signaling). The optimal timing for ME/CFS is PRE-exercise, to support the existing NAC-glutathione pathway. Post-exercise NAC should be delayed ≥2h to allow ROS signaling for mitochondrial biogenesis (which is already impaired in ME/CFS — H4 — so this risk may be moot). |
| **Evidence** | General: NAC timing in exercise (Michailidis 2013, Trewin 2018); ME/CFS: oxidative stress in Jammes2020, Keller2024; H4 (impaired biogenesis — blunting ROS signal less concerning) |
| **Dose** | NAC 600-1200mg, 1h BEFORE exertion; repeat 600mg at 4h post-exertion if needed |
| **Certainty** | 0.45 |
| **Falsifiable** | Pre-exercise NAC will reduce oxidative stress markers (isoprostanes, ORP from Jammes2020 protocol) and reduce PEM severity at 24h. Post-exercise NAC (immediate) will be LESS effective. NAC given 4h post will have intermediate effect. In healthy controls, immediate post-exercise NAC will blunt training adaptations — in ME/CFS this will NOT occur (because adaptations are already blunted). |

### D10 — Apocynin (NADPH Oxidase Inhibitor) for Muscle-Specific ROS Reduction

| | |
|---|---|
| **Mechanism** | NADPH oxidase (NOX) is a major source of exercise-induced ROS in skeletal muscle, distinct from mitochondrial ROS. NOX2 and NOX4 are upregulated during muscle contraction. Apocynin is a selective NOX inhibitor that blocks the assembly of the NOX2 complex. By targeting NOX-generated ROS (as opposed to mitochondrial ROS), apocynin could reduce exercise-induced membrane damage without affecting mitochondrial ROS that serve signaling functions. Jammes2020 found M-wave alterations suggesting membrane damage — NOX2 is expressed in sarcolemma and T-tubules, making it a plausible contributor. Apocynin has poor bioavailability (~5%) but is well-tolerated. |
| **Evidence** | Jammes2020 (muscle membrane damage, redox subgroups); general: NOX biology in muscle (Ferreira 2011, Sakellariou 2014); NOX in exercise-induced ROS |
| **Dose** | Apocynin 500-1000mg/day (poor bioavailability; higher doses or NADPH oxidase peptide inhibition may be needed; this is a theoretical dosing) |
| **Certainty** | 0.15 |
| **Falsifiable** | Ex vivo: ME/CFS muscle fibers (vastus lateralis biopsy) will show higher NOX2 activity than controls. Apocynin pre-treatment will reduce M-wave amplitude decline (Jammes2020 protocol) during repeated contractions. Lack of good oral apocynin bioavailability limits clinical translation — alternative: GKT137831 (NOX1/4 inhibitor, better PK). |

---

## Category 4: Supplement/Nutraceutical Ideas

### S1 — D-ribose for PCr Resynthesis Acceleration

| | |
|---|---|
| **Mechanism** | D-ribose is a pentose sugar that accelerates purine nucleotide synthesis and PCr resynthesis. Exercise depletes muscle ATP and PCr. Ribose provides the sugar backbone for AMP/ADP/ATP resynthesis and creatine rephosphorylation via the pentose phosphate pathway. In ME/CFS, the pentose phosphate pathway may be rate-limited (NADPH is diverted to antioxidant systems), making exogenous ribose particularly beneficial. Timing: immediately post-exercise (when nucleotide pools are most depleted). |
| **Evidence** | General: D-ribose for exercise recovery in healthy athletes (Hellsten 2004, Zarowna 2022); ME/CFS: anecdotal (Teitelbaum 2006 open-label); Lien2019 (impaired metabolic recovery); Godlewska2024 creatine (PCr/MRS approach but null for brain — muscle may differ) |
| **Dose** | 5g TID for 3 days post-exertion (high dose, well-tolerated — only GI side effects) |
| **Certainty** | 0.35 |
| **Falsifiable** | D-ribose post-exercise will shorten PCr recovery halftime (³¹P-MRS of quadriceps) and reduce subjective PEM. Effect will be larger in the impaired-recovery subgroup (high day2 lactate per Lien2019) than in less-affected patients. |

### S2 — Betaine (Trimethylglycine) for Methionine-Methylation Recovery

| | |
|---|---|
| **Mechanism** | Exercise increases demand for methylation (DNA repair, protein repair, neurotransmitter synthesis). Betaine is a methyl donor that supports homocysteine→methionine recycling via BHMT. In ME/CFS, if methylation is already compromised (common hypothesis), exercise increases methylation demand beyond capacity, leading to homocysteine accumulation and impaired recovery. Betaine supports methylation without the methionine load, bypassing the methionine cycle bottleneck. |
| **Evidence** | General: betaine for exercise recovery (Hoffman 2013, Cholewa 2013); ME/CFS: methylation hypothesis (but mixed clinical evidence); Sharma2025 (epigenetic changes post-exercise — methylation demand) |
| **Dose** | 2.5-5g/day, ideally taken post-exercise with water |
| **Certainty** | 0.25 |
| **Falsifiable** | Betaine supplementation will reduce post-exercise homocysteine elevation in ME/CFS and improve subjective recovery. Effects will be largest in patients with high baseline homocysteine or low SAM/SAH ratio. |

### S3 — Palmitoylethanolamide (PEA) for Mast Cell Stabilization + Neuroprotection

| | |
|---|---|
| **Mechanism** | PEA is an endogenous fatty acid amide that acts as a mast cell stabilizer via PPAR-α and GPR55. It also has neuroprotective effects: reduces microglial activation, supports neuronal health, and reduces neuropathic pain. PEA is a natural ALIAmide (autacoid local injury antagonist amide) — produced on demand and rapidly degraded by FAAH. Exogenous supplementation increases local PEA levels, stabilizing mast cells (complementary to antihistamines — PEA prevents degranulation, antihistamines block histamine's effects). This makes it a dual-action supplement for PEM: reduces mast cell inflammatory inputs (H2, H6) + reduces neuroinflammation (H3). |
| **Evidence** | Rohrhofer2025 (mast cell activation); H2, H6 (mechanosensitive degranulation); general: PEA safety, PEA for MCAS, PEA for neuropathic pain, PEA for exercise recovery (Palma 2025 — preprint on PEA and muscle damage) |
| **Dose** | PEA 600-1200mg daily, with or without luteolin (co-flavonoid for absorption and anti-mast cell synergy) |
| **Certainty** | 0.40 |
| **Falsifiable** | PEA 600mg BID for 4 weeks will: reduce daily PEM symptoms (diary), reduce plasma tryptase, improve cognitive PEM more than muscular PEM (neuroprotective > mast cell effect). PEA+antihistamine combination will outperform either alone. |

### S4 — Aspartate + Taurine for Muscle Membrane Repolarization

| | |
|---|---|
| **Mechanism** | Jammes2020 showed prolonged muscle membrane depolarization post-exercise in a subgroup of ME/CFS patients. Aspartate and taurine support membrane repolarization: aspartate is a substrate for the malate-aspartate shuttle (regenerating cytosolic NAD+ for glycolysis) and supports the Na+/K+-ATPase; taurine modulates Cl- channels and Ca2+ handling, stabilizing membrane potential and reducing muscle excitability. The combination supports ion gradient restoration after exercise. |
| **Evidence** | Jammes2020 (M-wave alterations suggest membrane depolarization); general: taurine and aspartate for exercise recovery, taurine for muscle membrane stability |
| **Dose** | Taurine 2-4g + potassium aspartate 1-3g, taken within 2h post-exercise |
| **Certainty** | 0.30 |
| **Falsifiable** | In the subgroup with M-wave alterations (Jammes2020), aspartate+taurine post-exercise will shorten M-wave recovery time. In the subgroup without M-wave alterations, no effect. This provides a mechanism-based stratification for supplement efficacy. |

### S5 — Glycerol for Exercise-Induced Cerebral Hypoperfusion

| | |
|---|---|
| **Mechanism** | Exercise causes fluid shifts: plasma volume decreases, blood thickens, and cerebral perfusion may drop, especially if hypovolemia compounds hypocapnic vasoconstriction. Glycerol is an osmotic agent that increases plasma volume (used for hyperhydration in athletes). By maintaining plasma volume during and after exercise, glycerol could: (1) maintain cerebral perfusion → reduced cognitive PEM, (2) improve thermoregulation → reduced heat stress → reduced mast cell degranulation, (3) reduce blood viscosity → improved microcirculatory flow (Wirth2023). |
| **Evidence** | Van Campen2023 (hypocapnia→cerebral hypoperfusion); Wirth2023 (microvascular dysfunction); general: glycerol hyperhydration in exercise (Goulet 2011, Koufakis 2018) |
| **Dose** | 1g glycerol + 1L water, 2h before exertion; caution: blood glucose effects |
| **Certainty** | 0.20 |
| **Falsifiable** | Glycerol pre-loading will improve cerebral oxygenation (NIRS prefrontal cortex) during and after exercise, reduce cognitive PEM. Effect will be independent of lactate/energy markers (confirming it's perfusion-mediated, not metabolic). Contraindicated if heart failure or kidney disease. |

### S6 — Post-Exercise Glycogen Supercompensation Timing in ME/CFS

| | |
|---|---|
| **Mechanism** | Healthy athletes have a "glycogen window" — 30-60 min post-exercise when muscle glycogen synthase is maximally active and glucose uptake is insulin-independent (GLUT4 translocation to sarcolemma is exercise-stimulated). In ME/CFS, this window may be shifted or impaired due to: (1) impaired GLUT4 translocation (insulin resistance common in ME/CFS), (2) reduced glycogen synthase activity (AMPK signaling impairment — H4), (3) delayed exercise signal reaching muscle. Therefore, the standard post-exercise carb timing recommendation may be wrong for ME/CFS. Protocol: test different carbohydrate timing windows (immediate, 30min, 2h, 4h post) for glycogen resynthesis rate (muscle biopsy or ¹³C-MRS). |
| **Evidence** | Lien2019 (impaired metabolic recovery); H4 (impaired AMPK signaling); general: exercise glycogen biology |
| **Dose** | 1.2g/kg body weight high-GI carbohydrates, timing to be determined individually |
| **Certainty** | 0.30 |
| **Falsifiable** | In ME/CFS, the post-exercise glycogen synthesis rate will be lower than controls at all time points. The peak timing of glycogen resynthesis will be delayed (2-4h post vs 30-60min in controls). Immediate post-exercise carbs will NOT improve recovery in ME/CFS (vs delayed carbs).

### S7 — Sulforaphane for NRF2 Pathway Activation and Resolution Enhancement

| | |
|---|---|
| **Mechanism** | Sulforaphane (from broccoli sprouts) is the most potent known activator of NRF2, the master transcription factor for antioxidant, detoxification, and resolution gene expression. NRF2 upregulates: heme oxygenase-1 (HO-1, anti-inflammatory and vasoprotective), NQO1 (quinone detoxification), glutathione synthesis enzymes, and several resolution pathways. In ME/CFS, NRF2 activation is impaired (Jin2026), creating a chronic oxidative stress state. Sulforaphane could: (1) boost antioxidant capacity → reduce ROS-mediated mitochondrial damage post-exercise, (2) upregulate HO-1 → vasoprotective (Wirth2023), (3) enhance resolution → shorter PEM (H1). Sulforaphane crosses the BBB and activates NRF2 in the CNS, providing neuroprotection. |
| **Evidence** | Jin2026 (impaired resolution — NRF2 is a resolution pathway); Jammes2020 (oxidative stress subgroup); general: sulforaphane NRF2 activation (Fahey 1997, numerous human studies) |
| **Dose** | Sulforaphane 50-100mg/day (from glucoraphanin-rich broccoli sprout extract, standardized to sulforaphane yield); avoid if hypothyroid (high-dose goitrogen effect) |
| **Certainty** | 0.35 |
| **Falsifiable** | Sulforaphane 8-week supplementation will: increase NRF2 target gene expression in PBMCs (NQO1, HO-1), reduce plasma oxidative stress markers (ORP, isoprostanes post-exercise), and shorten PEM recovery time by ≥24h. Response will be largest in the Jammes2020 high-oxidative-stress subgroup. |

### S8 — Leucine-Enriched Essential Amino Acids + HMB for Muscle Protein Synthesis Post-Exercise

| | |
|---|---|
| **Mechanism** | Exercise suppresses muscle protein synthesis in the immediate post-exercise period (exercise is catabolic for proteins, anabolic for mitochondria). Healthy athletes reverse this with essential amino acids, especially leucine (mTOR activator). In ME/CFS, if mTOR signaling is impaired (possible from AMPK dominance or chronic low-grade inflammation), the anabolic response to protein may be blunted. HMB (β-hydroxy-β-methylbutyrate, a leucine metabolite) inhibits proteolysis and activates mTOR independently. The combination of leucine-rich EAA + HMB could: (1) accelerate muscle protein recovery → reduce muscle PEM, (2) support mitochondrial biogenesis (mTOR and PGC-1α are interconnected), (3) prevent the linear muscle mass decline seen in severe ME/CFS (H5). |
| **Evidence** | H5 (muscle mass paradox — loss may create a buffer deficit); general: leucine-HMB for muscle recovery in sarcopenia, cachexia, and post-exercise |
| **Dose** | 10-20g EAA (3g leucine) + 1.5-3g HMB, within 2h post-exercise; may repeat pre-bed |
| **Certainty** | 0.30 |
| **Falsifiable** | EAA+HMB post-exercise will improve quadriceps strength recovery at 24h and 48h vs placebo. Effect will correlate with baseline lean mass (patients with lowest muscle mass have most to gain). Protein synthesis marker (D5-leucine tracer incorporation in muscle biopsy) will show blunted response in ME/CFS vs healthy controls even with supplementation. |

### S9 — Magnesium Glycinate for Muscle Relaxation and Autonomic Recovery

| | |
|---|---|
| **Mechanism** | Magnesium is an NMDA antagonist (neuroprotective), a Ca2+ channel modulator (vasodilator, muscle relaxant), and promotes parasympathetic tone. Post-exercise, magnesium is lost through sweat and redistributed. In ME/CFS, magnesium deficiency has been reported (though inconsistent). Magnesium glycinate has high bioavailability and the glycine component is itself anti-inflammatory (acts on glycine receptors on macrophages → anti-inflammatory cytokine shift). Post-exercise timing is critical: magnesium before bed could promote slow-wave sleep (magnesium promotes GABAergic tone via NMDA antagonism), supporting recovery. |
| **Evidence** | General: Mg for exercise recovery, Mg for sleep, Mg for muscle relaxation; ME/CFS: Mg status controversial — some studies show low RBC Mg, others normal |
| **Dose** | Magnesium glycinate 200-400mg elemental Mg, pre-bed; avoid Mg oxide (poor absorption) |
| **Certainty** | 0.20 |
| **Falsifiable** | Magnesium glycinate post-exercise will: improve sleep quality (actigraphy → longer SWS), reduce next-day muscle soreness, improve HRV (higher RMSSD — better parasympathetic recovery). Effects will be largest in patients with low RBC magnesium. |

### S10 — CoQ10 + Selenium for Persisting Electron Transport Chain Impairment

| | |
|---|---|
| **Mechanism** | CoQ10 (ubiquinone) is the electron carrier from Complex I/II to Complex III. Selenium is a cofactor for glutathione peroxidase (GPX), reducing oxidative damage to mitochondrial membranes. Exercise depletes CoQ10 in muscle, and resynthesis takes 24-48h — this may be a rate-limiting step for recovery in ME/CFS (Lien2019's impaired day2 recovery). Supplementing CoQ10 with selenium ensures both the electron carrier and the antioxidant protection of the ETC are available. This is distinct from general antioxidant supplementation (S7) — it directly targets the ETC capacity. |
| **Evidence** | Lien2019 (impaired day2 — ETC capacity may be limiting); Jammes2020 (oxidative stress); general: CoQ10 for exercise recovery, CoQ10 for mitochondrial function |
| **Dose** | Ubiquinone 200-400mg/day + selenium 100-200μg/day; split doses for absorption; ubiquinol form may be preferred for direct antioxidant effect |
| **Certainty** | 0.35 |
| **Falsifiable** | CoQ10+Se for 8 weeks will: increase muscle CoQ10 content, reduce the day-2 CPET performance decline, and accelerate PCr recovery (³¹P-MRS). Effect will be larger in patients with low baseline CoQ10 levels. Immediate CoQ10 pre-exercise will NOT help (tissue saturation takes weeks). |

---

## Category 5: Non-Pharmacological Interventions

### NP1 — Pneumatic Compression Devices for Passive Muscle Recovery

| | |
|---|---|
| **Mechanism** | Sequential pneumatic compression (intermittent pressure from distal to proximal on limbs) increases venous return and lymphatic drainage without active muscle contraction. This mimics the circulatory benefits of active recovery without the mechanosensitive trigger (H2). By mechanically assisting blood flow, it enhances lactate clearance (R4) and removes inflammatory mediators. The pressure also stimulates vagal afferents (tactile stimulation of C-fibers → parasympathetic activation). |
| **Evidence** | H9 (passive recovery bypasses mechanical degranulation); general: pneumatic compression for post-exercise recovery in athletes (Northey 2017, Cochrane 2013) |
| **Dose** | 20-30 min per leg, 30-60 mmHg, daily post-exertion or as needed for PEM |
| **Certainty** | 0.35 |
| **Falsifiable** | Pneumatic compression post-exercise will: reduce lactate clearance time (R4 protocol), improve subjective muscle recovery, and reduce PEM severity vs sham (compression turned off). Effects will be independent of antihistamine use (different mechanism). |

### NP2 — Stellate Ganglion Blockade or Transcervical Vagus Nerve Block for Sympathetic Storm

| | |
|---|---|
| **Mechanism** | PEM involves a post-exertional sympathetic surge: elevated HR, reduced HRV, vasoconstriction, reduced gut perfusion. Stellate ganglion block (SGB) is an injection of local anesthetic into the sympathetic chain at C6-C7, blocking sympathetic outflow to the head, neck, and upper extremities. It has been used for PTSD, CRPS, and POTS. A right-sided SGB could: (1) reduce the sympathetic surge post-exercise, (2) improve cerebral blood flow (by reducing sympathetically-mediated vasoconstriction), (3) reduce the cognitive PEM component. Less invasive: transcervical vagus nerve block (external device) that shifts autonomic balance toward parasympathetic. |
| **Evidence** | Autonomic dysfunction in ME/CFS (ch10); general: SGB for PTSD (Lipov 2012), SGB for POTS; H3 (cognitive PEM via cerebral hypoperfusion) |
| **Dose** | SGB: single injection at C6, effect lasts 2-6 weeks; vagal block: external device, 30-60min daily |
| **Certainty** | 0.15 |
| **Falsifiable** | SGB will: increase prefrontal cortex rCBF (Munemoto2017 SPECT protocol), reduce cognitive PEM scores, improve HRV. Effect will be larger in hyperadrenergic patients (high baseline HR >80). Minimal effect on muscular PEM (confirming H3 independence). |

### NP3 — Retronasal Trigeminal Stimulation (Menthol/Vapor) for Dyspnea and Perceived Exertion

| | |
|---|---|
| **Mechanism** | Dyspnea (air hunger) is a common PEM symptom. Dyspnea is perceived via mechanoreceptors (chest wall stretch) and chemoreceptors (CO2, O2), but also modulated by trigeminal nerve input from the nose and airways. Menthol activates TRPM8 receptors on trigeminal afferents, creating a sensation of nasal patency and reduced dyspnea, even without changes in ventilation. Cool air inhalation similarly activates TRPM8. By reducing the perceived effort of breathing during PEM, this could reduce the psychological exacerbation of PEM (anxiety → hyperventilation → hypocapnia → worse PEM). |
| **Evidence** | General: menthol for dyspnea in COPD (Kanezaki 2020), menthol for exercise performance; H4 (hyperventilation → hypocapnia in ME/CFS — Van Campen2023) |
| **Dose** | Menthol lozenge 5-10mg or menthol vapor inhaler during PEM episodes; cool facial airflow |
| **Certainty** | 0.20 |
| **Falsifiable** | Menthol inhalation during PEM will reduce perceived dyspnea (Borg scale) and improve cognitive test performance (fewer resources diverted to breathing sensation). No change in objective spirometry or oxygenation (confirming it's sensory, not mechanical). |

### NP4 — Graduated Cold Exposure for Autonomic and Metabolic Conditioning

| | |
|---|---|
| **Mechanism** | Cold exposure activates the sympathetic nervous system acutely, but chronic cold exposure (cold adaptation, cold habituation) leads to: (1) improved mitochondrial function (cold activates PGC-1α in brown fat and muscle — possibly bypassing the exercise-dependent pathway that is broken in ME/CFS), (2) improved autonomic flexibility (reduced baseline sympathetic tone), (3) increased BDNF (neuroplasticity), (4) β-endorphin release (antinociceptive). However, cold exposure is also a stressor — wrong dosing could worsen PEM. The approach should be GRADUATED: start with face-only cold (10°C for 30s → 3min over weeks), then cold showers, then brief full-body cold (winter swim protocol). |
| **Evidence** | General: cold exposure for metabolic health (van der Lans 2013, Hanssen 2015); cold for BDNF (Kox 2014); PGC-1α pathway in brown fat; H4 (PGC-1α broken via exercise — cold bypasses this) |
| **Dose** | Start: face immersion 10°C, 30s daily, increase to 3min over 4 weeks. Progress: cold shower 1-3min, then brief (1-3min) cold bath 10-15°C if tolerated. Stop if PEM worsens. |
| **Certainty** | 0.20 |
| **Falsifiable** | 8-week graduated cold exposure will increase PGC-1α expression in PBMCs, improve HRV, and reduce PEM severity. Cold-induced PGC-1α (via β-adrenergic/cAMP pathway) will occur even in patients whose exercise-induced PGC-1α is blunted (confirming independent pathway). Patients with Raynaud's or cold urticaria (both MCAS-associated) will NOT tolerate this and should be excluded. |

### NP5 — Zero-Gravity Body Positioning for Post-Exertion Orthostatic Relief

| | |
|---|---|
| **Mechanism** | The supine position relieves orthostatic stress but does NOT eliminate gravitational pooling entirely (dependent regions still pool). A 6°-15° head-down tilt (Trendelenburg) increases central blood volume, cerebral perfusion, and reduces sympathetic activation. Used in astronauts for cardiovascular deconditioning. After exercise in ME/CFS, head-down tilt could: (1) rapidly restore cerebral blood flow → reduced cognitive PEM, (2) increase renal perfusion → facilitate metabolic waste clearance, (3) reduce sympathetic tone via baroreflex desensitization. A gravity-assisted recovery position (legs elevated above heart, back flat) is a low-tech version. |
| **Evidence** | Van Campen2020/2023 (orthostatic intolerance); Wirth2023 (microcirculatory failure); H3 (cognitive PEM via cerebral hypoperfusion); general: head-down tilt for cardiovascular recovery, post-exercise hypotension management |
| **Dose** | 15-30 min in head-down tilt (15°) or legs-elevated position, immediately post-exercise and whenever PEM symptoms emerge |
| **Certainty** | 0.35 |
| **Falsifiable** | Head-down tilt (vs supine rest) post-exercise will: improve cerebral oxygenation (NIRS), reduce cognitive PEM at 1h and 24h, reduce HR (vagal activation), and improve cognitive test performance. No effect on muscular PEM markers (lactate clearance, muscle soreness). |

### NP6 — Paced Slow Breathing (6 breaths/min) for Post-Exertion Vagal Activation

| | |
|---|---|
| **Mechanism** | Slow breathing at 0.1 Hz (6 breaths/min) resonates with the baroreflex loop, entraining heart rate oscillations and increasing baroreflex sensitivity. This activates vagal efferents, reducing heart rate, blood pressure, and systemic inflammation (via the cholinergic anti-inflammatory pathway). In PEM, when sympathetic tone is high and inflammation is elevated, paced slow breathing could: (1) dampen the post-exercise sympathetic surge, (2) increase vagal tone → anti-inflammatory (reduced TNF-α, IL-6), (3) improve cerebral blood flow by reducing hypocapnic hyperventilation (Van Campen2023). |
| **Evidence** | Slow breathing for HRV improvement (Bernardi 2000, 2001); vagal anti-inflammatory pathway (Tracey 2002, Pavlov 2012); ME/CFS: autonomic dysfunction, Van Campen2023 (hypocapnia — slow breathing normalizes CO2) |
| **Dose** | 6 breaths/min (inhale 4s, exhale 6s), 10-15 min, 2-3× daily, especially during PEM episodes |
| **Certainty** | 0.40 |
| **Falsifiable** | Paced slow breathing post-exercise will: increase RMSSD (HRV marker), normalize PETCO2 (correct hypocapnia), reduce cognitive PEM (improved cerebral oxygenation), and reduce plasma IL-6 and TNF-α at 24h post-exercise. Effect will be additive with antihistamines (different targets: cholinergic vs histaminergic). Effect will be larger than paced FAST breathing (30 breaths/min, hypocapnic control). |

### NP7 — Mechanical Vibration Threshold Determination for Individualized Movement Restriction

| | |
|---|---|
| **Mechanism** | Not all movement is equal for PEM generation. Walking produces whole-body vertical vibration (1-3 Hz at the spine during gait). This activates mechanoreceptors (Pacinian corpuscles, muscle spindles) at frequencies that overlap with the resonant frequency of these receptors (40-300 Hz for Pacinian). If movement-related PEM is partially mediated by mechanosensitive mast cell degranulation (H2), then specific frequencies and amplitudes of mechanical stimulation should predict PEM. Patients could be tested with a vibration plate at different frequencies (10-100 Hz) to find their degranulation threshold. Below-threshold activities are safe; above-threshold should be avoided or mitigated (with antihistamine pre-treatment). |
| **Evidence** | H2 (mechanosensitive degranulation); general: vibration biology, mast cell mechanobiology (Fowlkes 2023 — Piezo2 in mast cells) |
| **Dose** | Test with vibration plate: 10, 30, 50, 80, 100 Hz at 2mm amplitude, 5min each. Measure: plasma histamine at 0, 30, 60 min. Find threshold frequency. |
| **Certainty** | 0.20 |
| **Falsifiable** | ME/CFS patients will show histamine release at lower vibration frequencies and amplitudes than controls. Individual threshold will correlate with reported PEM sensitivity to walking/vibration (e.g., driving on rough roads predicts PEM). Antihistamines given before vibration exposure will block the histamine rise and reduce post-exposure fatigue. |

### NP8 — Low-Level Light Therapy (Photobiomodulation) for Mitochondrial Recovery

| | |
|---|---|
| **Mechanism** | Red and near-infrared light (600-1000 nm) is absorbed by cytochrome c oxidase (Complex IV) in mitochondria, increasing electron transport chain activity, ATP synthesis, and reducing ROS (via photodissociation of NO from CCO). Applied transcutaneously to large muscle groups (quadriceps, lumbar, trapezius) and/or the forehead (transcranial), photobiomodulation (PBM) could: (1) accelerate muscle ATP recovery post-exercise, (2) reduce inflammation (via NF-κB inhibition), (3) improve cerebral energy metabolism. PBM is a passive modality — no mechanical stimulation, no muscular work, making it ideal for PEM recovery (H9 framework). |
| **Evidence** | General: PBM for exercise recovery (Ferrasi 2015, Borsa 2013, Vanin 2018); PBM for mitochondrial function; Lien2019 (impaired metabolic recovery — PBM targets ETC directly) |
| **Dose** | 800-900 nm (near-IR), 10-30 J/cm², applied to quadriceps and paraspinal muscles, 10-20 min, twice daily during PEM. Transcranial: 800 nm, forehead, 10 min. |
| **Certainty** | 0.30 |
| **Falsifiable** | PBM post-exercise will: increase muscle ATP recovery rate (³¹P-MRS), reduce lactate accumulation (R4 protocol), improve muscle PEM scores. Transcranial PBM will additionally improve cognitive PEM (separate from muscle effects). Sham PBM (device off or 500 nm ineffective wavelength) will show no effect. |

### NP9 — Lymphatic Self-Massage (Very Light, No Vibration) for Immune Clearance

| | |
|---|---|
| **Mechanism** | The lymphatic system clears inflammatory debris, damaged cells, and metabolic waste from tissues. After exercise, lymph flow increases from muscle pumping. In ME/CFS, if muscle contraction is limited (due to fatigue or pacing), lymph flow may be insufficient. Very light manual lymphatic drainage (MLD) — skin stretching at specific lymphatic territories, extremely light pressure (30-40 mmHg ≈ 5g/cm²) — stimulates lymphatic contractility without activating deeper mechanoreceptors or mast cells. This is fundamentally different from deep tissue massage (which triggers H2). MLD could accelerate clearance of inflammatory mediators from exercised muscles, shortening PEM duration. |
| **Evidence** | Li2024 massage meta (heterogeneous — light touch vs deep pressure matter); H2 (mechanosensitive degranulation — light pressure threshold); general: MLD for lymphedema, post-surgical recovery |
| **Dose** | 15-20 min self-MLD: gentle skin stretching in direction of lymph flow (arms → axillary nodes, legs → inguinal nodes), daily post-exertion. Pressure should be light enough that the skin does not redden (no histamine response). |
| **Certainty** | 0.30 |
| **Falsifiable** | Light MLD post-exercise will reduce muscle PEM (DSQ muscle subscale) compared to rest and compared to deep tissue massage. Plasma cytokines (IL-6, IL-8) will clear faster post-exercise with MLD. Deep tissue massage will WORSEN PEM vs rest in a subset of patients (H2 activation). |

### NP10 — Temporal Pacing: Activity Windows Based on Circadian Energy Predictors

| | |
|---|---|
| **Mechanism** | Energy availability fluctuates with circadian rhythms, postural changes, food intake, and sleep quality. In ME/CFS, these fluctuations may be larger (more sensitive to circadian timing) and more predictable (the same patient has similar daily patterns). Temporal pacing uses predictors (time since waking, menstrual phase if female, recent meal, last night's sleep quality, heart rate variability at waking) to predict energy windows and schedule activities within them. Unlike fixed energy envelope pacing (which sets a daily limit), temporal pacing optimizes WHEN to do activities, not just how much. Post-exercise, temporal pacing becomes critical: the first 24h is the "vulnerable window" when energy recovers but is fragile. Activity during this window should be minimized and scheduled for predictable peaks. |
| **Evidence** | Circadian recovery gating (prior brainstorm ch14f); H3, R1 (PEM component decomposition — cognitive PEM may have different diurnal pattern from muscular PEM); general: chronobiology of exercise recovery (Chtourou 2012) |
| **Dose** | App or diary-based: record energy level (0-10) 4-6× daily for 1-2 weeks → identify personal window. Schedule priority activities within window, avoid activity outside window. Post-exertion: reduce to 1-2 short windows/day for first 48h. |
| **Certainty** | 0.35 |
| **Falsifiable** | Temporal pacing (6 weeks) will reduce PEM frequency and severity compared to standard energy envelope pacing (same total activity, different timing). Individual energy windows will be stable within-person (ICC > 0.7) and will NOT correlate with chronotype (suggesting it's a severity-related phenomenon, not preference). |

---

## Category 6: Combinations + Access

### C1 — The PEM Prevention Stack: Cromolyn + Antihistamine + PEA + Slow Breathing

| | |
|---|---|
| **Rationale** | Targets the mast cell → vasoactive → inflammatory → neuroinflammatory cascade at four sequential points: (1) cromolyn (mast cell stabilizer) prevents degranulation at the source; (2) H1+H2 antihistamines (fexofenadine+famotidine) block released histamine; (3) PEA supports PPAR-α mediated mast cell stabilization and microglial neuroprotection; (4) slow breathing (NP6) activates the cholinergic anti-inflammatory pathway as a backup. The stack is designed for patients with known or suspected MCAS (Rohrhofer2025) or for those whose PEM responds partially to antihistamines alone. |
| **Evidence** | D1, D2, S3, NP6; Rohrhofer2025; Wirth2023; H2, H6 |
| **Components** | Cromolyn 100mg PO QID or ketotifen 1mg BID; fexofenadine 180mg + famotidine 40mg BID; PEA 600mg BID; slow breathing 6/min × 15 min BID |
| **Certainty** | 0.30 |
| **Falsifiable** | The 4-component stack will reduce PEM severity by ≥60% (DSQ-5) vs placebo. Each successive component added will produce additive benefit. The stack will be most effective in patients with elevated baseline tryptase (>10 ng/mL). Individual component contributions can be assessed via sequential withdrawal. |

### C2 — Cognitive PEM Rescue Kit: Atomoxetine + Paced Breathing + Head-Down Tilt

| | |
|---|---|
| **Rationale** | For patients whose cognitive PEM (brain fog, concentration failure) is more disabling than muscular PEM. Three independent mechanisms: (1) atomoxetine (D3) increases synaptic noradrenaline → improved cognitive stamina; (2) paced slow breathing (NP6) improves cerebral oxygenation via CO2 normalization; (3) head-down tilt (NP5) mechanically increases cerebral perfusion. Used together at the earliest sign of cognitive PEM. |
| **Evidence** | D3 (atomoxetine for cognitive PEM); NP6 (slow breathing for vagal+CBF); NP5 (head-down tilt for cerebral perfusion); H3 (decomposed PEM); Aregawi2026 (noradrenergic deficiency) |
| **Components** | Atomoxetine 10-40mg at PEM onset; slow breathing 6/min × 10 min; head-down tilt 15° × 20 min (or legs elevated on pillows) |
| **Certainty** | 0.30 |
| **Falsifiable** | The Cognitive Rescue Kit will improve cognitive PEM scores by 50% within 2h vs placebo. Each component alone will have partial effect. Combination will have subadditive + additive synergies (different mechanisms). No effect on muscular PEM. |

### C3 — Severe/Homebound PEM Recovery Protocol: Passive Thermal + Head-Down Tilt + Diurnal Rest

| | |
|---|---|
| **Rationale** | For severe patients who cannot exercise (including as part of a recovery study) and cannot tolerate active interventions. A purely passive, low-effort protocol: (1) far-IR heating pad targeting the lumbar and leg regions (localized Waon effect without needing a sauna — increases local blood flow and rCBF); (2) head-down tilt (legs elevated on pillows — zero equipment needed); (3) diurnal rest alignment (dark room, no screens, circadian-aligned sleep). This protocol requires no transfers, no devices, no medication, and can be implemented by a caregiver. |
| **Evidence** | Soejima2015, Munemoto2017 (Waon/rCBF); NP5 (head-down tilt); NP10 (temporal pacing); H9 (passive recovery) |
| **Components** | Far-IR heating pad (lumbar + legs, 40-50°C, 20 min, then covered with blanket 30 min); legs elevated on pillows ≥20 min, 2-3× daily at scheduled times; strict rest in dark room during circadian recovery windows (2-6 AM, 2-4 PM) |
| **Certainty** | 0.30 |
| **Falsifiable** | 4-week protocol will show: reduced daily PEM (diary), improved sleep quality (actigraphy), improved HRV (if wearable feasible). Effect will be smaller but present in very severe patients (bedbound) — relying on subjective diary and caregiver observation. |

### C4 — Muscle Group Rotation + Localized Passive Recovery

| | |
|---|---|
| **Rationale** | Combines R6 (muscle group rotation pacing) with NP1 (pneumatic compression) for patients who can do some physical activity. Upper-body days: pneumatic compression on legs (to clear systemic mediators passively while legs rest). Lower-body days: compression on arms. This creates a "recovery asymmetry" — one body region exercises while the other actively recovers. |
| **Evidence** | R6 (rotation pacing); H10 (heterogeneous recovery); NP1 (pneumatic compression); Jammes2020 (muscle-specific changes) |
| **Components** | Alternating upper body / lower body day schedule; pneumatic compression on the non-exercised limbs (20-30 min, at the end of the day); antihistamines as baseline (taken regardless of schedule) |
| **Certainty** | 0.25 |
| **Falsifiable** | Rotation + compression protocol will outperform standard pacing on: cumulative weekly activity, PEM days/week, and subjective recovery. Compression on exercised limbs will be LESS effective than on non-exercised limbs (different mechanisms: exercised limb needs metabolic recovery, non-exercised limb provides systemic clearance). |

### C5 — The "Four-Window" Post-Exertion Protocol

| | |
|---|---|
| **Rationale** | Standardizes what to do at four critical post-exertion windows. Accessible to patients of all severity levels with adaptations per tier. |
| **Windows:** | **Window 1 (0-2h):** Antihistamine + head-down tilt + cold face stimulation + no cognitive demand. **Window 2 (2-6h):** Light protein/carbohydrate + taurine/aspartate + slow breathing. **Window 3 (6-24h):** PEA + far-IR heat (localized) + lymphatic self-massage + sleep promotion. **Window 4 (24-72h):** Gradual return to baseline routine; monitor for PEM rebound. |
| **Evidence** | All previous mechanisms; timing optimization from exercise physiology (D1 for antihistamine timing, S6 for nutrition timing, S4 for membrane repolarization timing) |
| **Certainty** | 0.25 |
| **Falsifiable** | The 4-window protocol will reduce PEM recovery time by ≥50% compared to "do nothing" (rest ad lib). Patients who skip any window will have worse outcomes. Protocol adherence ≥80% will correlate with best outcomes. |

### C6 — PEM Prevention for Essential Cognitive Tasks (Work, Driving, Childcare)

| | |
|---|---|
| **Rationale** | Some activities cannot be avoided despite PEM: work meetings, driving, childcare. For these, a targeted prevention protocol: antihistamine (D1) 2h before + atomoxetine (D3) 30 min before + slow breathing 10 min before (NP6) + 10 min head-down tilt recovery (NP5) immediately after. This is NOT a daily protocol — it's reserved for essential tasks that would otherwise trigger cognitive PEM. |
| **Evidence** | D1, D3, NP6, NP5; H3 (cognitive PEM independent); H6 (mast cell → vasodilation → cognitive) |
| **Components** | Fexofenadine 180mg + famotidine 40mg 2h before; atomoxetine 10-20mg 30min before (if prescribed); slow breathing 6/min × 10min before; head-down tilt 15° × 10min after. Use only for essential tasks, not routine. |
| **Certainty** | 0.25 |
| **Falsifiable** | The essential-task protocol will: improve sustained attention performance (AX-CPT) during the task hours, reduce post-task cognitive PEM, and reduce the next-day PEM flaring. Protocol overuse (daily for non-essential tasks) will lead to tolerance or overexertion (masked symptoms → later PEM). |

### C7 — Massage Pressure Personalization: Tonometry-Guided Light Touch Protocol

| | |
|---|---|
| **Rationale** | Li2024 massage meta showed average benefit but high heterogeneity. The missing variable is pressure: deep touch triggers mast cell degranulation (H2) while light touch activates C-tactile afferents (parasympathetic, anti-pain). Protocol: use a tonometer (or simple algometer) to find each patient's pressure threshold for skin reddening or histamine response (wheal-and-flare). Set massage pressure at 50% of this threshold. Train caregivers or self-administer. |
| **Evidence** | Li2024 massage meta; H2 (mechanosensitive degranulation); general: C-tactile afferent activation with light stroking (light touch, 1-10 cm/s, activates anti-pain pathways) |
| **Components** | Tonometry to find mechanical threshold; 20-min massage at 50% threshold pressure, 2-3× weekly; use slow strokes (3-5 cm/s) to optimize C-tactile activation; avoid vibration, percussion, deep pressure |
| **Certainty** | 0.30 |
| **Falsifiable** | Personalized light-pressure massage will reduce fatigue (Chalder score) and PEM severity vs standardized deep-pressure massage. Histamine will increase after deep massage but not light massage. C-tactile afferent activation (assessed by pleasantness ratings and HRV increase) will correlate with benefit. |

### C8 — PEM Rapid-Response Kit (for Research or Rescue Setting)

| | |
|---|---|
| **Rationale** | A combination protocol tested within the first 2-6h of PEM onset, designed to abort or shorten the episode. Components: (1) IV vitamin C + magnesium (used in MCAS rescue protocols — reduces histamine, supports mast cell stability); (2) nasal ketotifen or cromolyn (rapid absorption, systemic effect); (3) slow breathing + eye mask + noise-canceling headphones (sensory reduction). This is for acute PEM management, not prevention. |
| **Evidence** | MCAS rescue protocols (IV VitC + Mg); D2 (cromolyn/ketotifen); NP6 (slow breathing); H6 (acute phase of PEM is mast cell/vasoactive, not just inflammatory) |
| **Components** | IV: Vitamin C 7.5-15g + magnesium sulfate 1-2g in 500mL saline over 2h; nasal ketotifen 1mg each nostril (compounded); 30 min dark quiet rest with paced breathing. For home (non-IV version): liposomal vitamin C 2-4g + magnesium glycinate 200mg + ketotifen 1mg + sensory reduction. |
| **Certainty** | 0.15 |
| **Falsifiable** | The PEM rapid-response kit given within 2h of PEM onset will: reduce peak PEM severity (DSQ-5 at 12h) by ≥40% vs placebo, and shorten recovery time by ≥24h. IV route will outperform oral (faster absorption, higher peak concentration for histamine clearance). |

### C9 — Graded Exercise Adjunct: Pre-Exercise Metabolic Conditioning

| | |
|---|---|
| **Rationale** | GET fails because it starts with exercise when the metabolic machinery is broken (H4). Before ANY graded exercise, precondition the PGC-1α/AMPK/SIRT1 axis: (1) NAD+ precursors (NMN or NR, 500mg/day × 4 weeks) to restore NAD+ for SIRT1 and AMPK; (2) CoQ10 300mg + ALA 600mg × 4 weeks for mitochondrial support; (3) gradual postprandial walking (3 min after protein-rich meal, adding 1 min/week — this uses postprandial metabolic state to support recovery). Only after 4-8 weeks of preconditioning, begin actual graded training. |
| **Evidence** | H4 (PGC-1α/AMPK/SIRT1 broken); NAD+ precursors (general: NAD+ supports SIRT1); CoQ10+ALA (general: mitochondrial support); S10 (CoQ10+Se) |
| **Components** | Phase 1 (4 weeks): NMN 500mg + CoQ10 300mg + ALA 600mg daily. Postprandial walking 3 min/day, add 1 min/week, max 10 min. Phase 2 (8 weeks): continue supplements, add graded exercise program (e.g., recumbent bike or body-weighted exercises), start at 3 min at very low intensity, increase duration by 1 min every 2 sessions. Stop if PEM score >2/10. |
| **Certainty** | 0.20 |
| **Falsifiable** | Metabolic preconditioning for 4 weeks will increase muscle NAD+ levels (MRS or biopsy) and PGC-1α expression. Subsequent graded exercise will be better tolerated: fewer PEM episodes, faster recovery, ability to progress without PEM. Patients who skip preconditioning will show the standard GET failure pattern (PEM within first 2 weeks). |

### C10 — PEM Severity-Tiered Recovery Protocols

| | |
|---|---|
| **Rationale** | One size does not fit all. Recovery optimization must be tiered by PEM severity and frequency. |
| **Tiers:** | **Mild (PEM <24h, activity reduced <25%):** Antihistamine pre-exercise + slow breathing + post-exercise nutrition (S6 carbs + S4 taurine/aspartate). Active recovery (gentle movement) may be tolerated. **Moderate (PEM 24-72h, activity reduced 25-50%):** Antihistamine + cromolyn + PEA daily + pneumatic compression post-exercise + head-down tilt. NO active recovery. **Severe (PEM 2-7 days, activity reduced 50-75%):** Full mast cell stabilization (ketotifen + H1+H2 + PEA). Passive recovery only (IR heating pad, head-down tilt, slow breathing). Cognitive PEM rescue (C2) for essential tasks. **Very severe (PEM >7 days, activity reduced >75%):** Caregiver-implemented: zero-challenge environment, IR heating, head-down tilt, sensory reduction, circadian alignment. No at-risk intention for any activity. |
| **Evidence** | All previous mechanisms; existing severity stratification (Van Campen2020); H3 (different PEM components may need different tiers) |
| **Certainty** | 0.25 |
| **Falsifiable** | Tiered protocol will improve outcomes vs untailored advice for all severity levels. The mild tier will benefit from active recovery (contradicting H9 for mild only). The severe tier will worsen with any active recovery attempt. Tier misclassification (mild patient assigned severe protocol) will lead to deconditioning; severe patient assigned mild protocol → PEM worsening. |

---

## Category 7: Mathematical Model Extensions

### M1 — The Resolution Failure Parameter (φ): Extending the MIN Model

| | |
|---|---|
| **Variables** | Add φ (resolution efficiency, 0-1) to the existing MIN model (Jin2026). φ = 1 means inflammation resolves at the healthy rate. φ = 0 means no resolution, inflammation accumulates. The recovery differential equation becomes: dI/dt = P(t) - φ·R(t)·I(t), where P(t) = exercise-induced production, R(t) = resolution capacity. PEM duration ∝ 1/φ. |
| **Rationale** | H1 argues resolution failure is primary. Adding φ allows the model to account for why patients with identical inflammation magnitude (same P) have different PEM duration (different φ). Also explains why acute anti-inflammatories (which suppress P) give only partial benefit (φ unchanged). |
| **Parameters** | φ range 0-1 (healthy ≈ 0.8-1.0; ME/CFS ≈ 0.2-0.5). φ measurable from: serial cytokine half-lives post-exercise (ln(2)/τ), where τ = recovery time constant. |
| **Certainty** | 0.40 |
| **Prediction** | ME/CFS φ will be 0.2-0.5 vs healthy >0.8. Interventions that raise φ (SPMs, exercise-induced but SPM-like molecules, efferocytosis enhancers) will shorten PEM. Interventions that only reduce P (NSAIDs, steroids) will reduce peak PEM severity but NOT PEM duration. |

### M2 — Mast Cell Degranulation Threshold Model

| | |
|---|---|
| **Variables** | Define θ_degran = degranulation threshold (mechanical force, pressure, or frequency). Each movement produces mechanical stimulus S(t). Mast cell degranulation D(t) = 1 if S(t) > θ_degran, 0 otherwise. Cumulative degranulation over a day: C_daily = ΣD(t). P(t) = α·C_daily + β·exercise_intensity, where P(t) = total inflammatory production, α = mast cell contribution, β = metabolic contribution. |
| **Rationale** | H2 proposes that low-level movement-triggered degranulation accumulates and amplifies PEM. This model quantifies the mast cell component (α) separately from the metabolic component (β), explaining why even non-exertional movement (light housework, socializing) can trigger PEM. |
| **Parameters** | θ_degran (individual, measurable via vibration threshold testing — NP7). α/β ratio (individual, from regression of PEM severity on activity type: physical intensity vs non-metabolic movement). |
| **Certainty** | 0.35 |
| **Prediction** | Patients with low α/β ratio (PEM primarily metabolic) will benefit most from pacing (reducing exercise intensity). Patients with high α/β ratio (PEM primarily mast cell) will benefit more from antihistamines + mechanical avoidance (sedentary lifestyle modifications). The model predicts that for high α patients, even passive vibration (car ride, train trip) can trigger PEM. |

### M3 — Two-Compartment PEM Model: Cognitive and Muscular Pools

| | |
|---|---|
| **Variables** | Two coupled ODEs: dC/dt = f_cog(load) - γ_c·C(t) + κ·M(t) for cognitive PEM; dM/dt = f_musc(load) - γ_m·M(t) + κ·C(t) for muscular PEM. C and M are cognitive and muscular PEM pools. γ_c and γ_m are clearance rate constants (independent). κ is cross-coupling (a small term: brain fatigue affects muscle performance and vice versa). Most of the variance comes from γ_c vs γ_m differences. |
| **Rationale** | H3 proposes cognitive and muscular PEM have independent rate-limiting steps. This model quantifies independence: patients with γ_c ≪ γ_m have cognitive-dominant PEM; those with γ_m ≪ γ_c have muscular-dominant PEM; κ accounts for the minor secondary activation. |
| **Parameters** | γ_c (cognitive clearance, from cognitive recovery time), γ_m (muscular clearance, from muscle function recovery), κ (cross-coupling, typically 0.05-0.2). |
| **Certainty** | 0.45 |
| **Prediction** | Individual-specific γ_c and γ_m can be estimated from symptom diaries (R1 factor analysis) and predict which interventions work. Atomoxetine increases γ_c only. CoQ10 increases γ_m only. κ is small (<0.2) — cognitive PEM does NOT produce muscular PEM (and vice versa). |

### M4 — The "Recovery Tax" Surface: Linking Activity Type, Duration, and PEM

| | |
|---|---|
| **Variables** | Define activity vector A = [type, duration, intensity]. Recovery tax R(A) = Σ(w_i · T_i(A_i)), where w_i are weights for each activity domain (physical, cognitive, emotional, sensory), and T_i is the tax function for that domain. T_i may be linear (1 unit activity = 1 unit tax), sublinear (healthy: adaptation, T_i < 1), or superlinear (ME/CFS: T_i > 1, possibly exponential). PEM = ∫R(A(t)) dt over the day — cumulative tax. |
| **Rationale** | H8 conceptualizes recovery as a currency with pathological exchange rates. This model formalizes it: everyday activities that are "free" in health (watching TV, having a conversation, light reading) may have nonzero tax in ME/CFS. T_i are estimated per individual from activity-symptom logs. |
| **Parameters** | w_i (individual domain weights, from factor analysis of activity-PEM correlations). T_i exponents (1.0 for linear healthy, 1.5-3.0 for ME/CFS, estimated from dose-response experiments of each activity type). |
| **Certainty** | 0.35 |
| **Prediction** | Individual recovery tax surfaces will reveal "safe zones" — activity combinations that keep cumulative PEM below threshold. Tax functions will differ between PEM types: physical has high T_i but low threshold; cognitive has moderate T_i but no threshold (cumulative cognitive activity always worsens cognitive PEM linearly). Sensory tax (light, noise) will be near-zero for most but very high for a subset (<20%). |

### M5 — Inflammation Timing Window Optimization Model

| | |
|---|---|
| **Variables** | Model the time course of exercise-induced inflammatory mediators as Gaussian pulses: I_i(t) = A_i · exp(-(t-μ_i)² / 2σ_i²), where i indexes mediator type (histamine at 1h peak, IL-6 at 2h, TNF-α at 4h, HMGB1 at 6-12h, etc.). Each intervention j has a time window of effectiveness: E_j(t) = 1 if t ∈ [τ_{j,start}, τ_{j,end}], 0 otherwise. Total intervention benefit = Σ∫I_i(t)·E_j(t)·target_i_j dt. |
| **Rationale** | Different PEM mechanisms peak at different times post-exercise. The optimal timing of each intervention depends on which mediator it targets. This model predicts the best timing for each combination. |
| **Parameters** | μ_i and σ_i for each mediator (from serial blood sampling studies — R2 protocol). τ_{j,start}, τ_{j,end} from pharmacokinetics of each drug/supplement. target_i_j = 1 if drug j targets mediator i, 0 otherwise. |
| **Certainty** | 0.40 |
| **Prediction** | Antihistamine timing (D1) should be pre-exercise (histamine peaks early, μ = 1h). NAC (D9) should be pre-exercise (glutathione synthesis takes 1-2h). PEA (S3) can be anytime (steady-state effect). Atomoxetine (D3) for cognitive PEM should be taken only when cognitive tasks are expected (not constant dosing — waste). The model will identify the "therapeutic sweet spot" for each intervention pair. |

### M6 — Muscle Mass-Recovery Tradeoff Function

| | |
|---|---|
| **Variables** | Define muscle mass M. Recovery benefit B(M) = k_1 · M (more mitochondria, more PCr buffer, more glycogen storage). Recovery cost C(M) = k_2 · M + k_3 · (ROS/M) + k_4 · (lactate/M) (more metabolic demand, more ROS production surface area, more lactate generation). Net recovery advantage N(M) = B(M) - C(M). Healthy: k_2 ≈ 0 (resting metabolic demand of muscle is negligible). ME/CFS: k_2 > 0 (muscle has higher resting metabolic cost — possibly from higher membrane leak, higher baseline ROS production, etc.), so N(M) has an optimum at intermediate M (the paradox from H5). |
| **Rationale** | H5 proposes muscle mass is paradoxical in ME/CFS. This model formalizes the tradeoff and predicts an optimal muscle mass for each individual, likely below the healthy optimum. |
| **Parameters** | k_1 (benefit slope), k_2 (metabolic cost slope), k_3 (ROS production per unit mass), k_4 (lactate production per unit mass). Estimated from cross-sectional data: DEXA lean mass + REE + post-exercise ROS markers + PEM severity. |
| **Certainty** | 0.25 |
| **Prediction** | The optimal muscle mass M* will be lower in ME/CFS than healthy controls and inversely correlated with basal oxidative stress markers (TBARS, ORP from Jammes2020). Patients above M* will have paradoxically WORSE PEM. Muscle wasting in severe ME/CFS may be homeostatic (returning toward M*). This predicts that anabolic interventions (testosterone, growth hormone) could worsen PEM in patients already at or above M*. |

### M7 — Mechanosensitive Degranulation as Stochastic Resonance

| | |
|---|---|
| **Variables** | Model mast cell degranulation as a stochastic process with threshold dynamics. Each mechanical stimulus S(t) is filtered through a leaky integrate-and-fire model: dV/dt = -V(t)/τ + S(t), where V = "activation potential" of the mast cell, τ = recovery time constant. Degranulation occurs when V > θ_threshold. Below threshold, sub-threshold fluctuations accumulate (sub-threshold degranulation events that don't reach symptom-detection threshold but sum over time). Background activity from daily movement creates a baseline V that fluctuates just below θ. Exercise pushes V over θ. |
| **Rationale** | Explains why some patients have "good days" and "bad days" without clear triggers: V randomly fluctuates near θ due to accumulated micro-degranulation from everyday movement (H2). Also explains why antihistamines help even without obvious trigger (they set a lower ceiling on peak mast cell activity). |
| **Parameters** | τ (individual mast cell recovery constant, from histamine clearance half-life). θ_threshold (individual degranulation threshold, from NP7 vibration testing). Baseline V (estimated from daily activity level). |
| **Certainty** | 0.30 |
| **Prediction** | The model predicts that on days with high baseline activity (many stimulus events), V will be higher and closer to θ — explaining why even small additional exertion can trigger PEM (a "straw that breaks the camel's back" model). Patients with shorter τ will recover faster between stimuli and have more stable PEM-free periods. |

### M8 — PEM Wave Propagation with Spatial Heterogeneity

| | |
|---|---|
| **Variables** | Model the body as N compartments (muscle groups, brain, gut) connected by circulation. Each compartment i has: PEM pool P_i, clearance rate γ_i, and coupling to compartment j via diffusion: dP_i/dt = f_i(load_i) - γ_i·P_i + Σ(D_ij·(P_j - P_i)), where D_ij is the coupling coefficient (proportional to blood flow between compartments). |
| **Rationale** | H10 proposes that different muscle groups recover at different rates (γ_i differ). Compartment B (brain) has different γ_b than compartment L (leg muscles). The coupling D_ij captures the systemic propagation: mediators from the leg reach the brain via circulation, causing cognitive PEM. This explains the time lag (2-6h) between exercise and brain fog. |
| **Parameters** | γ_i per compartment (from NIRS or Doppler recovery kinetics). D_ij (from blood flow data — higher flow = higher coupling). Initial load distribution f_i(load_i) from exercise type. |
| **Certainty** | 0.30 |
| **Prediction** | The model predicts that local interventions (compression on legs) affect systemic PEM (reduce brain coupling D_brain,leg). Systemic interventions (antihistamines) affect all compartments equally. The model identifies which compartments have the highest clearance rates — these are the safest to exercise. Heterogeneity (H10) is confirmed when γ_arm ≠ γ_leg for the same patient. |

### M9 — Cumulative PEM Risk as Time-Varying Hazard Model

| | |
|---|---|
| **Variables** | Model PEM risk as a Cox proportional hazards process: h(t) = h_0(t) · exp(β_1·X_1(t) + β_2·X_2(t) + ...), where h(t) = instantaneous PEM risk at time t, h_0 = baseline hazard, X_i = time-varying covariates (recent activity, sleep quality, stress, histamine level, inflammation markers). PEM occurs when cumulative hazard H(t) = ∫h(s)ds exceeds threshold H_critical. After PEM, hazard resets. |
| **Rationale** | PEM does not have a fixed recovery time — it is a probabilistic process influenced by ongoing exposures. A hazard model captures this: even during the "recovery window," each additional exposure (activity, stress) increases the risk of PEM onset or prolongation. |
| **Parameters** | β_i (covariate weights, from daily diary + wearable data in n≥100 patients for >4 weeks). H_critical (individual threshold). h_0(t) (baseline hazard shape — likely exponential decay after exertion). |
| **Certainty** | 0.45 |
| **Prediction** | The hazard model will identify which covariates have the highest β — these are the most potent PEM triggers. For most patients, recent activity (β_act) will dominate, but for a subset, sleep quality (β_sleep) or emotional stress (β_stress) will be equally important. The model can be used as a PEM early warning system: when H(t) exceeds a fraction of H_critical (e.g., 70%), the patient receives an alert. |

### M10 — Energy-Epigenetic Coupling in Recovery

| | |
|---|---|
| **Variables** | Couple the metabolic state to an epigenetic state variable E(t) that represents the methylation status of key genes (PGC-1α, NRF2, TFAM — from Sharma2025). dE/dt = k_me(t)·(1 - E) - k_dem(t)·E, where k_me = methylation rate (function of SAM availability, ATP, one-carbon metabolism), k_dem = demethylation rate (function of TET enzyme activity, α-KG, cellular energy). Exercise → ATP depletion → reduced α-KG → reduced TET activity → k_dem decreases → E increases (more methylation). Recovery requires restoration of TET activity, which requires ATP and α-KG. |
| **Rationale** | H1 (prior brainstorm) proposed epigenetic reversal kinetics as PEM determinant. This model couples the energy state (ATP, α-KG, SAM) to the epigenetic state, creating a positive feedback loop: energy depletion → epigenetic silencing of metabolic genes → further energy depletion. Recovery requires breaking this loop. |
| **Parameters** | k_me and k_dem (from serial methylation analysis pre/post exercise — Sharma2025 protocol). α-KG concentration (from blood or muscle biopsy). SAM/SAH ratio (one-carbon metabolism status). |
| **Certainty** | 0.35 |
| **Prediction** | The model predicts that interventions that increase TET activity (α-KG supplementation, ascorbate, moderate exercise after metabolic preconditioning) will accelerate epigenetic reversal and shorten PEM. Interventions that deplete α-KG (high-intensity exercise, fasting, metformin) will prolong PEM by keeping E high. This provides a mechanistic link between energy metabolism and epigenetic PEM regulation. |

---

## Category 8: Cross-Disease Bridges

### DB1 — Chronic Fatigue in Multiple Sclerosis: Shared Resolution Failure ≠ Shared Trigger

| | |
|---|---|
| **Bridge** | MS fatigue has a similar PEM-like pattern but driven by demyelinating lesions. MS also has resolution failure (impaired SPM production documented — Prüss 2020, Wong 2022). In MS, the resolution failure is secondary to chronic CNS inflammation that saturates resolution capacity. In ME/CFS, resolution failure may be primary (H1). If resolvin therapy helps MS fatigue (being tested in EAE models), it should be tested in ME/CFS regardless of the different trigger. SPMs treat the resolution step, not the trigger. |
| **Prediction** | SPM supplementation (resolvin D1, 300-600μg/day) will improve fatigue in both MS and ME/CFS, with larger effects in ME/CFS (resolution failure is less scarred — less gliosis, shorter disease duration in ME/CFS?). Resolution markers (resolvin D1, maresin 1) will be lower in MS than healthy but higher than ME/CFS (more secondary than primary failure). |
| **Certainty** | 0.35 |

### DB2 — Ehlers-Danlos Syndrome (EDS): Connective Tissue Mechanosensitivity as Shared Diathesis

| | |
|---|---|
| **Bridge** | EDS (especially hypermobile type) has high comorbidity with ME/CFS and MCAS (Wirth2023). EDS involves abnormal connective tissue collagen, which: (1) alters mechanotransduction (Piezo channels in fibroblasts detect altered matrix stiffness → chronic fibroblast activation → TGF-β release → inflammation), (2) increases joint laxity → more mechanical stimulation of joint capsule mast cells (H2), (3) impairs vascular integrity (Wirth2023). The ME/CFS-EDS-MCAS triad suggests that connective tissue mechanosensitivity is a shared diathesis. Mechanical treatments (bracing, splinting, taping) used in EDS might reduce PEM by stabilizing joints → reducing mechanosensitive degranulation. |
| **Prediction** | ME/CFS patients with EDS comorbidity will have: higher plasma tryptase, lower mechanical threshold for mast cell degranulation (NP7), and greater benefit from antihistamines and joint stabilization. EDS patients WITHOUT ME/CFS will have normal exercise recovery (no PEM) but may still have elevated mast cell markers — suggesting a second hit needed for PEM. |
| **Certainty** | 0.40 |

### DB3 — Post-Concussion Syndrome: Neuroinflammatory PEM Parallel

| | |
|---|---|
| **Bridge** | Post-concussion syndrome (PCS) shares key features with PEM: cognitive exertion worsens symptoms, recovery takes days-weeks, and the triggering dose threshold varies. PCS involves: persistent microglial activation (TSPO PET), impaired cerebral autoregulation, and reduced cerebral blood flow. This parallels the cognitive PEM mechanism (H3: microglial activation + hypoperfusion). PCS treatment includes: strictly graded cognitive rest, avoiding overstimulation, and gradual return to cognitive activity. The PCS "cognitive rest" protocol maps directly onto PEM pacing for the cognitive domain. |
| **Prediction** | The strict cognitive pacing protocol from PCS rehabilitation (no screens × 48h, no reading, no multitasking, dark room) will reduce cognitive PEM in ME/CFS as effectively as in PCS. PCS patients will show elevated plasma histamine or mast cell markers after cognitive exertion (extending H6 to the cognitive domain). Both conditions will respond to antihistamines for cognitive symptoms — suggesting a shared neuroinflammatory-mast cell mechanism. |
| **Certainty** | 0.35 |

### DB4 — Chemotherapy-Induced Fatigue: Mitochondrial Damage + Inflammation = PEM

| | |
|---|---|
| **Bridge** | Chemotherapy-induced fatigue (CIF) shares key mechanisms: (1) mitochondrial damage (platinum agents damage mtDNA, taxanes impair microtubule transport to mitochondria), (2) systemic inflammation (chemotherapy activates NLRP3, releases HMGB1), (3) reduced exercise capacity. CIF patients also show "exertion intolerance" similar to PEM but at lower severity and shorter duration. Interventions that reduce CIF (exercise during chemotherapy, methylphenidate, CoQ10) could be tested in ME/CFS for PEM. Crucially, CIF resolves when chemotherapy ends — suggesting the driver is persistent but reversible. ME/CFS PEM might require removing the persistent driver (autoantibodies, viral persistence, etc.) for full resolution. |
| **Prediction** | A CIF recovery protocol (methylphenidate 10mg + structured activity pacing + CoQ10 400mg) will reduce PEM in ME/CFS by 20-30% but will NOT normalize recovery — confirming that CIF and PEM share some mechanisms but ME/CFS has additional persistent drivers. Mitochondrial damage markers (mtDNA copy number, Complex I activity) will be similarly reduced in CIF and ME/CFS post-exercise, but ME/CFS will have additional epigenetic changes (Sharma2025) that CIF patients lack. |
| **Certainty** | 0.35 |

### DB5 — Fibromyalgia: Muscle Pain and PEM Overlap with Distinct Resolution Kinetics

| | |
|---|---|
| **Bridge** | Fibromyalgia (FM) has high comorbidity with ME/CFS. Both have exercise-induced symptom worsening. But FM's post-exercise worsening is primarily pain-dominant (central sensitization, nociceptive amplification), while ME/CFS is fatigue-dominant (metabolic failure). In FM, post-exercise pain peaks at 6-12h and resolves in 24-48h. In ME/CFS, PEM peaks at 24-48h and resolves in 2-14 days. The different time courses suggest different rate-limiting steps: FM = central sensitization decay (hours-days), ME/CFS = mitochondrial recovery (days-weeks). Comorbid patients will have a "double bump" — early pain (FM mechanism) followed by late fatigue (ME/CFS mechanism). |
| **Prediction** | In comorbid ME/CFS+FM patients, post-exercise symptom decomposition will show: pain peaks at 6-12h (FM component), fatigue peaks at 24-48h (ME/CFS component). FM-only patients will show pain peak at 6-12h and NO fatigue peak at 24-48h. ME/CFS-only will show NO pain peak at 6-12h but clear fatigue peak at 24-48h. Antihistamines will blunt the early pain peak in FM (confirming mast cell involvement in FM pain) but not the late ME/CFS fatigue peak. |
| **Certainty** | 0.45 |

### DB6 — McArdle Disease (GSD-V): Genetic Model for the Metabolic PEM Trajectory

| | |
|---|---|
| **Bridge** | McArdle disease (glycogen storage disease type V, muscle phosphorylase deficiency) produces a "second wind" phenomenon: after 5-10 min of exercise, muscle pain and fatigue resolve as the body switches from glycogen to blood glucose + fatty acids. Before the second wind → severe exercise intolerance with myoglobinuria risk. The metabolic trajectory parallels ME/CFS PEM but compressed into minutes. In McArdle, the defect is purely metabolic (glycogen → glucose blockade). In ME/CFS, the defect may be metabolic + inflammatory + neurogenic. If McArdle patients have elevated post-exercise inflammatory markers (which they should NOT — their problem is purely metabolic), it would prove the metabolic pathway is sufficient to cause PEM-like symptoms even without inflammation. If they DON'T have inflammatory markers, it would suggest inflammation is a necessary amplifier (not the primary driver). |
| **Prediction** | McArdle patients will show exercise-induced fatigue and muscle pain resembling early ME/CFS PEM (first 2-6h) with abnormal lactate handling (like Lien2019) but WILL NOT show the delayed inflammatory component (24-48h cytokine elevation, cognitive PEM). This would prove that the metabolic component can generate fatigue but cannot sustain PEM beyond 24h without inflammation. ME/CFS patients with normal lactate handling (Lien2019 subgroup) may have a predominantly inflammatory PEM rather than metabolic PEM — and may respond to different interventions. |
| **Certainty** | 0.30 |

### DB7 — Parkinson's Disease Fatigue: Noradrenergic + Mitochondrial Convergence

| | |
|---|---|
| **Bridge** | Parkinson's disease (PD) fatigue correlates with noradrenergic neuron loss in the locus coeruleus (not just dopamine loss in substantia nigra) AND with mitochondrial dysfunction (Complex I deficiency in PD substantia nigra). PD fatigue does NOT respond to levodopa (dopamine) but may respond to atomoxetine (NRI — same target as D3 for cognitive PEM). The PD-ME/CFS parallel: both involve noradrenergic deficiency and mitochondrial impairment, but in PD these are degenerative (irreversible neuronal loss), while in ME/CFS they may be functional (reversible). Atomoxetine for PD fatigue (Marsh 2021, pilot showed improvement) supports the NRI approach for cognitive PEM. PD also has elevated CSF cytokines and microglial activation — neuroinflammation as a common downstream pathway. |
| **Prediction** | Atomoxetine will improve cognitive PEM in ME/CFS to a similar degree as it improves PD fatigue. Both conditions will show: (1) baseline cognitive PEM/P.D. fatigue correlates with pupil dilation blunting (deficient LC-NA response to cognitive challenge), (2) atomoxetine restores the pupil response, (3) improvement at 4-6 weeks (not immediate — requires adaptation). If PD fatigue improves with atomoxetine, this supports the NRI approach without requiring a diagnosis of ADHD. |
| **Certainty** | 0.40 |

### DB8 — Idiopathic Intracranial Hypertension: The Opposite of PEM Cerebral Hypoperfusion

| | |
|---|---|
| **Bridge** | IIH involves elevated intracranial pressure → cerebral hyperperfusion, headache, cognitive slowing. Treatment: acetazolamide (carbonic anhydrase inhibitor → reduces CSF production → reduces ICP). ME/CFS has the opposite: cerebral hypoperfusion (Van Campen2023 hypocapnia, Munemoto2017 low rCBF). If ME/CFS cerebral hypoperfusion causes cognitive PEM (H3), then interventions that increase cerebral perfusion should help — which is the OPPOSITE of IIH treatment. IIH is treated with weight loss, acetazolamide, topiramate — all of which vasoconstrict or reduce CSF. ME/CFS might benefit from the opposite: volume expansion (glycerol — S5), vasodilation (CO2 rebreathing — NP2), or increased cardiac output (midodrine). The IIH-ME/CFS contrast provides a "therapeutic control" — if an IIH drug makes IIH better but ME/CFS worse (or vice versa), it suggests the cerebral perfusion mechanism is important. |
| **Prediction** | Acetazolamide (IIH drug) will worsen cognitive PEM in ME/CFS (reduces cerebral perfusion further). Midodrine (α1 agonist, increases BP and CBF) will improve cognitive PEM. This creates a therapeutic double-dissociation: IIH improves with vasoconstrictors, ME/CFS improves with vasodilators or volume expansion. Headache during PEM in ME/CFS should correlate with low rCBF (not high ICP). |
| **Certainty** | 0.30 |

### DB9 — Long COVID PEM: Distinguishing Overlapping and Distinct Mechanisms

| | |
|---|---|
| **Bridge** | Long COVID (LC) and ME/CFS share PEM as a diagnostic feature. Gattoni2025 found LC patients show 2-day CPET decline similar to ME/CFS (contradicting earlier null findings — the LC literature is heterogeneous). Key question: do they share the resolution failure (H1), mast cell amplification (H6), and noradrenergic deficiency (H3), or are the mechanisms different? LC may have additional mechanisms: persistent viral antigen driving ongoing immune activation (viral persistence hypothesis), residual microclots impairing microcirculation, or autoantibodies with distinct targets (ACE2, angiotensin receptors). |
| **Prediction** | LC patients with PEM will NOT have noradrenergic deficiency (CSF MHPG normal — distinguishing from Aregawi2026 ME/CFS). They WILL have resolution failure (H1 — shared with ME/CFS). They MAY have elevated mast cell markers (MCAS can be triggered by viral infection or by LC-specific mechanisms). Treatment differentiation: antihistamines help both equally; atomoxetine helps ME/CFS more (noradrenergic deficiency specific to ME/CFS); anticoagulants (microclot-targeting) help LC more. LC patients who meet ME/CFS diagnostic criteria will have the ME/CFS biomarker profile (low MHPG). |
| **Certainty** | 0.45 |

### DB10 — Postural Tachycardia Syndrome (POTS): Autonomic PEM Shared Mechanism

| | |
|---|---|
| **Bridge** | POTS is highly comorbid with ME/CFS. POTS involves: impaired autonomic regulation, reduced stroke volume, cerebral hypoperfusion on upright posture, and increased sympathetic activation. Exercise in POTS: prolonged HR elevation, reduced CBF, worsened cognitive function. POTS patients experience post-exercise worsening resembling PEM but typically shorter (hours, not days). The POTS post-exercise state may represent an "aborted PEM" — the autonomic contribution to PEM without the metabolic/mitochondrial component. POTS-only patients show the early phase of PEM (0-6h post-exercise: tachycardia, lightheadedness, brain fog) but recover fully by 24h because their mitochondrial and inflammatory resolution systems are intact. ME/CFS+POTS patients show this early phase PLUS the delayed metabolic/inflammatory phase (24-72h). |
| **Prediction** | POTS-only patients (meet POTS but not ME/CFS criteria): post-exercise HR elevation and orthostatic cognitive symptoms at 1-2h, recovered by 6-12h, NO PEM at 24-48h. ME/CFS+POTS patients: POTS symptoms at 1-2h PLUS PEM at 24-48h. POTS treatment (β-blockers, fludrocortisone, salt) will improve the early (<6h) but not the late PEM phase. This predicts that combining POTS treatment (early phase) with mast cell treatment (late phase antihistamines) provides sequential coverage for comorbid patients. |
| **Certainty** | 0.50 |

---

## Category 9: Diagnostic/Biomarker Ideas

### B1 — Post-Exercise Histamine and Tryptase Panel for PEM Phenotyping

| | |
|---|---|
| **Rationale** | Direct measurement of mast cell degranulation post-exercise. If H6 is correct, plasma histamine and tryptase should be elevated post-exercise in a subset of ME/CFS patients — and this subset should respond preferentially to antihistamines. |
| **Protocol** | Blood draw at baseline, 1h, 2h, and 4h post-standardized exercise. Measure: plasma histamine (sensitive ELISA), tryptase (mast cell-specific), PGD2 metabolite (alternative pathway). Define "mast cell PEM" phenotype: >50% increase in histamine at 1-2h + tryptase elevation. |
| **Certainty** | 0.55 |
| **Falsifiable** | ~30-40% of ME/CFS patients will show a positive post-exercise mast cell activation panel. These patients will have: (1) better response to antihistamines (D1) than negative patients, (2) higher PEM sensitivity to mechanical vibration (NP7), (3) higher MCAS comorbidity (Rhohrhofer2025). Negative patients may have predominately metabolic PEM (Lien2019 lactate pattern) and respond better to mitochondrial support. |

### B2 — Lactate Clearance Rate Constant (k_lac) as PEM Recovery Biomarker

| | |
|---|---|
| **Rationale** | Lien2019 showed abnormal day2 lactate but did not calculate the clearance rate constant. Serial lactate measurements post-exercise (every 5 min for 60 min) allow fitting: L(t) = L0·e^(-k·t) + Lrest. k_lac summarizes metabolic recovery capacity in one number. |
| **Protocol** | Submaximal cycling or stepping to reach steady-state lactate (2-4 mmol/L). 12 blood draws over 60 min during recovery. Fit exponential decay. k_lac (min⁻¹): healthy ≈ 0.05-0.08 min⁻¹, ME/CFS ≈ 0.02-0.04 min⁻¹. |
| **Certainty** | 0.65 |
| **Falsifiable** | k_lac will correlate with: PEM duration (lower k = longer PEM), day 2 CPET decline, and subjective muscle PEM scores. k_lac will be stable within individuals (ICC >0.7) but highly variable between individuals. k_lac will predict response to metabolic interventions (CoQ10, D-ribose, carnitine) — patients with low k_lac will show best response. |

### B3 — Prefrontal NIRS Cerebral Oxygenation During Cognitive PEM Challenge

| | |
|---|---|
| **Rationale** | Cognitive PEM involves cerebral hypoperfusion (H3, H6, Van Campen2023). Near-infrared spectroscopy (NIRS) measures prefrontal cortex oxygenated hemoglobin (HbO2) noninvasively. During cognitive challenge (n-back, Stroop), healthy individuals show increased HbO2 (activation). ME/CFS in PEM may show decreased HbO2 (hypoperfusion) or blunted increase. |
| **Protocol** | n-back task (0-back to 3-back) for 10 min + forehead NIRS. Measure: HbO2 change from baseline to maximum load. In healthy: → +3-5 μM. In ME/CFS with cognitive PEM: → +1 μM or negative. |
| **Certainty** | 0.50 |
| **Falsifiable** | NIRS cerebral oxygenation during cognitive challenge will: (1) distinguish ME/CFS from healthy with >80% sensitivity/specificity, (2) correlate with subjective cognitive PEM severity, (3) improve with interventions that increase CBF (CO2 rebreathing, head-down tilt, midodrine), (4) remain abnormal even when muscular PEM recovers (confirming H3 independence). |

### B4 — PEM Recovery Subtype Classification Based on Time-to-90% Recovery

| | |
|---|---|
| **Rationale** | PEM recovery time varies hugely (12h to 14+ days). This variation is likely categorical, not continuous. Cluster analysis of recovery trajectories from daily symptom diaries (n≥200) should reveal recovery subtypes. |
| **Protocol** | 14-day daily diary: DSQ-5, activity log, sleep quality. After any PEM trigger, record daily recovery trajectory. Time to 90% of baseline function. Cluster analysis. Expected subtypes: (1) Fast recovery (<24h) — predominantly mast cell phenotype? (2) Intermediate (2-4 days) — predominantly metabolic phenotype? (3) Slow (5-14 days) — predominantly epigenetic + resolution failure? |
| **Certainty** | 0.60 |
| **Falsifiable** | Recovery subtypes will have distinct biomarker profiles: Fast → high histamine, normal k_lac; Intermediate → low k_lac, normal tryptase; Slow → epigenetic changes (Sharma2025 pattern), low SPMs, normal k_lac and tryptase. Subtypes will predict treatment response: Fast → antihistamines; Intermediate → CoQ10, D-ribose; Slow → SPMs, NAD+ precursors. |

### B5 — Exosomal mtDNA as Exercise-Induced Mitochondrial Damage Marker

| | |
|---|---|
| **Rationale** | Elson2023 found exosomal mtDNA in ME/CFS. If exercise releases mtDNA from damaged mitochondria (H7), the amount of exosomal mtDNA post-exercise should quantify mitochondrial damage and predict PEM severity. |
| **Protocol** | Blood draw at baseline, 6h, 24h post-exercise. EV isolation (ultracentrifugation or precipitation). qPCR for mtDNA (ND1, ND4, D-loop). Normalize to EV count (NTA or CD63 ELISA). Define "mitochondrial PEM" phenotype: >2× increase in exosomal mtDNA at 6h. |
| **Certainty** | 0.40 |
| **Falsifiable** | Exosomal mtDNA at 6h post-exercise will correlate with PEM severity at 24h (r > 0.6) and with k_lac (r < -0.5). Patients with high exosomal mtDNA will preferentially respond to: mitophagy enhancers (urolithin A), mitochondrial antioxidants (MitoQ), or NAD+ precursors (which support mitophagy). |

### B6 — Heart Rate Recovery Slope (HRR_30s) as Autonomic Recovery Metric

| | |
|---|---|
| **Rationale** | Heart rate recovery (HRR) in the first 30s post-exercise is mediated by parasympathetic reactivation (vagal re-engagement). HRR is impaired in ME/CFS (Gattoni2025, Van Campen2020) and correlates with PEM. The HRR slope (beats/min per second) provides a continuous metric of autonomic recovery. |
| **Protocol** | HR recording during CPET termination: record HR at peak, 10s, 20s, 30s, 60s, 120s. Calculate HRR_30s (peak HR minus HR at 30s). Healthy: >20 bpm drop. ME/CFS: <15 bpm drop. |
| **Certainty** | 0.55 |
| **Falsifiable** | HRR_30s will correlate with PEM severity at 24h (r > 0.5) and with slow breathing (NP6) training response. HRR_30s will improve with interventions that enhance vagal tone (NP6, taVNS) but NOT with interventions that target other PEM components (antihistamines, CoQ10 — confirming H3 autonomic independence). HRR_30s may distinguish POTS-comorbid vs pure ME/CFS (POTS-comorbid = lowest HRR). |

### B7 — Composite "PEM Signature" Score from Multiple Biomarker Streams

| | |
|---|---|
| **Rationale** | No single biomarker captures the multi-system PEM phenotype. A composite score integrating multiple dimensions would be more informative. |
| **Components** | (1) k_lac (metabolic recovery — B2); (2) NIRS HbO2 during cognitive challenge (cerebral perfusion — B3); (3) plasma histamine change pre→1h post exercise (mast cell — B1); (4) exosomal mtDNA change at 6h (mitochondrial damage — B5); (5) HRR_30s (autonomic — B6). PEM Signature Score = weighted sum (z-scores) of these 5. |
| **Certainty** | 0.50 |
| **Falsifiable** | The composite score will outperform any single biomarker for predicting PEM duration, severity, and treatment response. It will define 3-5 PEM "endotypes" based on which component is dominant. Each endotype will respond preferentially to mechanism-matched interventions. |

### B8 — Vibratory Threshold Test for Mast Cell Mechanosensitivity

| | |
|---|---|
| **Rationale** | NP7 proposed individual vibratory thresholds for mast cell degranulation. A clinical test using a calibrated vibration device could quantify mechanosensitivity. |
| **Protocol** | Apply vibration to forearm skin (vibration plate or tuning fork, 10-100 Hz, 2mm amplitude). After 5 min, measure skin histamine levels (microdialysis or dermal blister fluid) or skin temperature (laser Doppler). Find threshold frequency where histamine rises >20% above baseline. |
| **Certainty** | 0.30 |
| **Falsifiable** | Vibratory threshold will: (1) be lower in ME/CFS than healthy controls, (2) correlate with daily PEM sensitivity to movement, (3) predict response to antihistamines (low threshold = best responders), (4) correlate with mechanosensitive symptoms (pain from vibration triggers like driving, trains). |

### B9 — Post-Exercise SPM Profile (LC-MS/MS Lipidomics)

| | |
|---|---|
| **Rationale** | H1 proposes resolution failure as primary PEM defect. Directly measure the resolution pathway: SPMs (resolvin D1/E1, protectin D1, maresin 1, lipoxin A4) and their precursors (DHA, EPA, AA) before and after exercise. |
| **Protocol** | Blood draw at baseline, 2h, 6h, 24h post-exercise. LC-MS/MS lipidomics for SPM panel. Healthy: SPMs increase 2-5× at 2-6h post-exercise, then decline. ME/CFS: blunted SPM increase, or delayed peak, or lower baseline SPMs. |
| **Certainty** | 0.40 |
| **Falsifiable** | ME/CFS patients will show ≤50% of the SPM response of matched controls at 6h. Patients with the most blunted SPM response will have the longest PEM recovery times. SPM deficiency will be independent of inflammatory cytokine levels (confirming H1: resolution is the failure, not suppression of production). SPM profile will identify patients most likely to benefit from SPM precursor supplementation (R7). |

### B10 — Post-Exercise Symptom Trajectory Machine Learning Classifier

| | |
|---|---|
| **Rationale** | Aggregate multiple data streams (symptom diary, actigraphy, HRV, sleep metrics, step count) over 14+ days into a machine learning model that: (1) classifies PEM vs non-PEM days, (2) predicts PEM onset 6-12h before patient awareness, (3) identifies which activity→symptom chains are most informative for each patient. |
| **Protocol** | n=100 ME/CFS patients wear actigraph + HR monitor + complete hourly symptom diary for 14 days. Features: HRV metrics, step count, step rate, sleep latency/duration/efficiency, symptom trajectory. Model: gradient boosting or LSTM. Output: PEM probability at 6h and 24h ahead. |
| **Certainty** | 0.50 |
| **Falsifiable** | The ML classifier will predict PEM onset with AUC >0.80 at 6h lead time, >0.70 at 24h. The most informative features will be: HRV (especially RMSSD decline in the 3h preceding PEM), activity variance (boom-bust pattern), and sleep efficiency the night before. The classifier will identify individual-specific risk profiles: some patients are best predicted by HRV, others by sleep, others by step counts. This enables personalized early warning systems and reduces the cognitive burden of self-pacing. |

---

## Priority Ranking

### Tier 1 (Highest Certainty, Most Testable)
| ID | Idea | Certainty | Rationale |
|----|------|-----------|-----------|
| H3 | Decomposed PEM: cognitive/muscular independence | 0.55 | Direct MHPG evidence (Aregawi2026), factor-analyzable, falsifiable |
| B2 | Lactate clearance rate constant k_lac | 0.65 | Simple, cheap, direct Lien2019 extension; immediately testable |
| R1 | PEM component decomposition factor analysis | 0.75 | Fundamentally descriptive — no intervention, just measurement; highest feasibility |
| B4 | PEM recovery subtype classification | 0.60 | Addresses heterogeneity — clinical utility for trial stratification |
| R2 | Pre-exercise antihistamine blockade trial | 0.60 | Low-risk, cheap, definitive test of mast cell hypothesis |

### Tier 2 (Mechanistically Important)
| ID | Idea | Certainty | Rationale |
|----|------|-----------|-----------|
| H1 | Resolution failure as primary PEM defect | 0.45 | Paradigm-shifting if true; SPM measurement is feasible |
| H6 | Mast cell vasoactive cascade PEM amplifier | 0.50 | Testable with antihistamine trial; explains several PEM features |
| D1 | Combined H1+H2 antihistamine PEM prophylaxis | 0.50 | Safe, available, testable immediately |
| DB10 | POTS-ME/CFS autonomic PEM spectrum | 0.50 | Explains comorbidity; treatment implications |
| B1 | Post-exercise histamine/tryptase phenotype | 0.55 | Direct measurement testable with existing assays |

### Tier 3 (Novel but Need More Evidence)
| ID | Idea | Certainty | Rationale |
|----|------|-----------|-----------|
| H4 | PGC-1α/AMPK/SIRT1 disconnection | 0.50 | Explains GET failure; requires muscle biopsy to test |
| H9 | Passive recovery bypasses mechanosensitive barrier | 0.35 | Novel but indirect evidence; IR sauna studies are small |
| M1 | Resolution failure parameter φ | 0.40 | Adds explanatory power to existing MIN model |
| R7 | SPM supplementation PEM trial | 0.45 | Mechanistic depth but expensive (LC-MS/MS) |
| DB5 | Fibromyalgia double-bump PEM | 0.45 | Clinical observation-based; simple to test |

### Tier 4 (Long-Shot / Speculative)
| ID | Idea | Certainty | Rationale |
|----|------|-----------|-----------|
| H2 | Muscle spindle mechanosensitivity → mast cell degranulation | 0.35 | Mechanistic plausibility but no direct ME/CFS data |
| H5 | Muscle mass paradox | 0.25 | Contradicts conventional wisdom; needs DEXA + correlational data |
| H7 | Exercise-induced mtDNA → neuroinflammation | 0.40 | Supported by Elson2023 but no exercise-specific data |
| D5 | HSD-1 inhibitors for metabolic recovery | 0.20 | Interesting mechanism but no ME/CFS studies |
| NP2 | Stellate ganglion block for PEM | 0.15 | Invasive; evidence base very thin |
| M9 | Cumulative PEM hazard model | 0.45 | Mathematically well-founded but requires large n dataset |

---

## Key Gaps Identified for Future Research

1. **No active recovery studies in ME/CFS** — all healthy-athlete literature
2. **No SPM measurement post-exercise** — resolution failure remains indirect
3. **No PEM component decomposition** — cognitive vs muscular PEM never factor-analyzed
4. **No muscle biopsy studies of PGC-1α response in ME/CFS** — the GET failure mechanism is inferred
5. **No direct test of mechanosensitive mast cell degranulation** — vibration threshold studies absent
6. **No combined PEM protocol trials** — all studies test single interventions
7. **No MR spectroscopy of muscle ATP recovery in ME/CFS** (Godlewska2024 did brain, not muscle)
8. **No IR sauna protocol specifically for PEM recovery** (Soejima/Munemoto studies were fatigue management, not post-exercise recovery)
9. **No PEM chronicity model** — does each PEM episode leave residual deficit?
10. **No dose-response data for any PEM intervention**

---

## Caveats and Limitations

1. All drug/supplement suggestions are research-stage hypotheses requiring medical supervision
2. Doses for ME/CFS-specific use are estimated from general population data — no ME/CFS-specific PK/PD data
3. Mathematical models are conceptual — require empirical parameter estimation
4. Severity-specific recommendations are untested — tiered protocols need validation
5. PEM component decomposition assumes independence — some coupling may exist
6. Resolution failure (H1) may coexist with inflammation overproduction — not mutually exclusive
7. Mast cell mechanisms may apply only to MCAS-comorbid subset — not universal
8. Cross-disease bridges rely on mechanism similarity — differences may outweigh similarities
9. Biomarkers proposed are research-stage — none validated for clinical use
10. Passive recovery superiority (H9) contradicts sports medicine dogma — requires direct testing

---

**End of Document**
