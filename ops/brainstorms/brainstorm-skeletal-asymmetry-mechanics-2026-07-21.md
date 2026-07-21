# Brainstorm: Skeletal Asymmetry as Mechanical Driver of ME/CFS

**Date:** 2026-07-21
**Agent:** scientific-insight-generator (opus-level)
**Topic slug:** `skeletal-asymmetry-mechanics`
**Phase 2 decision:** PARTIAL — speculation/open-question only
**Categories generated:** 1–2, 10–12 (3–9 skipped per PARTIAL caps)

**Scope note:** This brainstorm covers novel hypotheses and research directions NOT already addressed by the four Phase 3 environments (`spec:skeletal-asymmetry-cascade`, `spec:ch08-thoracolumbar-sympathetic-irritation`, `spec:mechanical-postural-subgroup`, `lim:skeletal-asymmetry-evidence-gap`). The four-pathway model, the subgroup definition, the thoracolumbar sympathetic extension, and the evidence-gap limitation are considered covered. Novel ideas focus on missing mechanistic links, untested predictions, reasons the hypothesis may fail, and evidence quality concerns.

---

## Quality Ranking

Ideas ranked by combined factors: mechanistic plausibility, distinctiveness from Phase 3 environments, falsifiability, testability with existing technology, and contribution to bounding the hypothesis (both directions).

---

### Tier 1: High Impact / Strongest Mechanistic Gaps

---

#### 1.1 The Mechanotransduction Missing Link: How Does Mechanical Load Become Mitochondrial Failure?

**Category:** 1 — Novel Hypothesis
**Origin:** brainstorm

**Mechanistic rationale:** The four-pathway model (@spec:skeletal-asymmetry-cascade, Pathway 1) posits that compensatory muscle overuse drives premature anaerobic metabolism. But it skips a critical question: how does sustained mechanical load on a muscle fiber translate into mitochondrial impairment? The answer requires cell-level mechanotransduction. Muscle cells express mechanosensitive ion channels (TRPV4, Piezo1, TRPC1) that open under sustained stretch, admitting Ca²⁺. In healthy muscle, this Ca²⁺ signal is transient and triggers adaptive mitochondrial biogenesis via CaMKII→PGC-1α. In ME/CFS muscle — where baseline Ca²⁺ handling is already dysregulated (impaired SERCA, RyR leak, ch06 energy metabolism section) — sustained stretch-induced Ca²⁺ influx may push the cell past a threshold where the same signal that normally triggers adaptation instead triggers the pathological Na⁺/Ca²⁺ overload cascade. This converts a mechanical input into the same ionic pathology the paper already describes for exertion: compensatory posture = continuous low-grade stretch = continuous TRPV4/Piezo1 activation = chronic Ca²⁺ loading. This hypothesis bridges the mechanical and ionic domains in a way the current four-pathway model does not.

**Evidence link:** TRPV4 in skeletal muscle mechanotransduction (Ho 2012, muscle TRPV4 regulates oxidative metabolism); Piezo1 in muscle stem cell mechanosensing (Ma 2019); CaMKII→PGC-1α pathway (Wu 2002, Handschin 2007); ME/CFS Ca²⁺ dysregulation (ch06, Na⁺/Ca²⁺ overload cascade); no study has measured TRPV4/Piezo1 expression or activity in ME/CFS muscle — complete gap.

**Preliminary certainty:** 0.15

**Falsifiable prediction:** (a) TRPV4 or Piezo1 expression is upregulated in ME/CFS muscle biopsies compared to sedentary controls — compensatory to chronic mechanical load. (b) In vitro: ME/CFS-derived myotubes show exaggerated Ca²⁺ transients in response to cyclic stretch compared to control myotubes. (c) Pharmacological blockade of TRPV4 (GSK2193874) normalizes the stretch-induced Ca²⁺ response in ME/CFS myotubes more than in controls. (d) Falsified if: TRPV4/Piezo1 expression and stretch responses are normal in ME/CFS muscle — then mechanical load must act through a different mechanism (neural, vascular, or systemic) rather than cell-autonomous mechanotransduction.

**Non-specialist consequence:** If muscle cells in ME/CFS overreact to stretch because their stretch-sensing ion channels are stuck open, a drug that blocks those channels could make standing still feel like lying down — mechanically, not just perceptually.

---

#### 1.2 The Two-Hit Model: Asymmetry as Permissive Substrate, Not Causal Driver

**Category:** 1 — Novel Hypothesis
**Origin:** brainstorm

**Mechanistic rationale:** The current hypothesis frames skeletal asymmetry as the *primary upstream driver*. But an alternative formulation is more defensible: skeletal asymmetry is a *permissive substrate* that lowers the threshold for developing ME/CFS when a second hit occurs (infection, trauma, psychological stress, hormonal change). This is the two-hit model familiar from genetics (APOE4 + TBI → Alzheimer's, HLA-B27 + infection → ankylosing spondylitis). In this framework, asymmetry alone rarely causes disease (explaining why most people with scoliosis do not have ME/CFS), but it reduces the reserve capacity of the autonomic, metabolic, and pain-processing systems such that a trigger that would be subclinical in a symmetric person becomes disease-initiating in an asymmetric person. This reframes the hypothesis from "asymmetry causes ME/CFS" to "asymmetry is a risk factor of magnitude X for developing ME/CFS after trigger Y" — a more testable and less ambitious claim.

**Evidence link:** Two-hit model in post-polio syndrome (initial polio infection + compensatory overuse decades later → PPS; Jubelt2004Jubelt2004PostPolio); HLA-disease interactions (HLA-B27 + infection → AS); APOE4 + TBI; no study has tested asymmetry as a risk factor for post-infectious ME/CFS — untested.

**Preliminary certainty:** 0.25 (two-hit framing is more plausible than one-hit), 0.10 (magnitude of risk increase unknown)

**Falsifiable prediction:** (a) In a prospective post-infectious cohort (EBV, SARS-CoV-2), pre-existing leg length discrepancy >10 mm increases the odds of developing ME/CFS at 12 months by ≥2× compared to symmetric individuals, after controlling for age, sex, and infection severity. (b) The effect size is larger for female patients (hormonal modulation of ligamentous laxity + asymmetry) and for patients >40 (cumulative wear + asymmetry). (c) Falsified if: asymmetry prevalence is identical in post-infectious ME/CFS cases and recovered controls (OR ~1.0) — asymmetry is not a risk factor of any magnitude. (d) Critically falsified if: asymmetry prevalence is *lower* in ME/CFS cases than controls — directionality reversal.

**Non-specialist consequence:** If asymmetry is a risk factor rather than a cause, measuring it at diagnosis tells you *how* the person got sick — viral trigger plus a tilted pelvis — not *what* to treat. Preventing the second hit (early pacing after infection) becomes more important than correcting the asymmetry.

---

#### 1.3 The Muscle Spindle Overdrive Hypothesis: Proprioceptive Noise as PEM Generator

**Category:** 1 — Novel Hypothesis
**Origin:** brainstorm

**Mechanistic rationale:** Skeletal asymmetry produces asymmetric length-tension relationships in postural muscles. Muscle spindles — the proprioceptive sensors embedded in muscle — are exquisitely sensitive to static muscle length. When pelvic obliquity forces one side's hip abductors to operate at a longer resting length and the other side's at a shorter length, the spindle afferent firing rates become chronically asymmetric. The CNS receives contradictory proprioceptive information from left and right sides. Maintaining postural stability under this sensory conflict requires continuous, effortful cortical processing — a "proprioceptive tax" on cognitive resources. In a healthy person, this is managed unconsciously. In ME/CFS, where cognitive processing is already compromised (ch03 cognitive impairment, ch07 neuroinflammation), the sustained demand of resolving proprioceptive conflict may directly generate the cognitive fatigue (brain fog) and contribute to PEM. This is a CNS-mediated pathway distinct from the metabolic/autonomic pathways in the four-pathway model — a sensory-integration load hypothesis.

**Evidence link:** Muscle spindle physiology (Proske 2005, Matthews 1972); Proprioceptive conflict in chronic pain (Tsay 2015, sensorimotor incongruence generates pain); Proprioceptive deficits in ME/CFS (Cordero 2024, joint position sense); Vestibular-proprioceptive integration cost in healthy subjects (increased reaction time during sensory conflict); no study has measured EEG/PET during proprioceptive conflict in ME/CFS — untested.

**Preliminary certainty:** 0.15

**Falsifiable prediction:** (a) ME/CFS patients with rotoscoliosis >10° show worse joint position sense (cervical, lumbar) and higher reaction time cost during proprioceptive conflict tasks than spinally aligned ME/CFS patients. (b) EEG during quiet standing shows higher frontal theta power (cognitive load marker) in asymmetric vs symmetric ME/CFS patients. (c) A 4-week shoe lift intervention reduces frontal theta during standing by ≥20% and improves cognitive fatigue scores (MFI-20 mental fatigue subscale). (d) Falsified if: no difference in proprioceptive accuracy or EEG cognitive load between asymmetric and symmetric ME/CFS patients — then asymmetric spindle firing does not translate to perceptible CNS load.

**Non-specialist consequence:** If standing crooked forces your brain to work harder just to stay upright, the cognitive fatigue isn't "brain fog" from inflammation — it's a computational overload that levels the playing field when you fix the tilt.

---

#### 1.4 Fascial Continuity and Visceral Symptoms: The Tensegrity Link

**Category:** 1 — Novel Hypothesis
**Origin:** brainstorm

**Mechanistic rationale:** The four-pathway model addresses skeletal, neural, and autonomic connections but omits the fascia. The deep front line (Thomas Myers, Anatomy Trains model) is a continuous fascial chain from the plantar fascia through the pelvic floor, anterior spinal ligament, and diaphragm to the hyoid and jaw. Pelvic obliquity changes tension distribution throughout this chain. Increased fascial tension at the pelvic floor and diaphragm has two consequences: (1) impaired diaphragmatic excursion → reduced venous return, reduced thoracic pump effect on glymphatic/lymphatic flow — contributing to the already-impaired CSF dynamics (ch08 glymphatic section); (2) chronic tension on the mesenteric root and visceral fascial sleeves → IBS-like symptoms, gastroparesis, bloating (explaining why GI symptoms are near-universal in ME/CFS and not solely explicable by autonomic dysfunction). This transforms the mechanical hypothesis from a purely musculoskeletal problem to a visceral mechanical problem — the skeleton pulls on fascia which pulls on organs.

**Evidence link:** Myers 2020 Anatomy Trains (deep front line, fascial continuity); Fascial mechanotransduction (Langevin 2011, fibroblasts respond to sustained stretch with inflammatory mediator release); Diaphragmatic dysfunction in ME/CFS (Van Oosterwijck 2011, reduced MIP/MEP); Osteopathic literature on fascial-visceral coupling (Tozzi 2015, fascial osteopathy — low-quality evidence but mechanistically informative); no study has measured fascial tension distribution or diaphragmatic mechanics in asymmetric ME/CFS patients — complete gap.

**Preliminary certainty:** 0.12

**Falsifiable prediction:** (a) Ultrasound elastography of the iliotibial band and thoracolumbar fascia shows asymmetric stiffness (shear wave velocity difference >15% left vs right) in ME/CFS patients with pelvic obliquity >10 mm. (b) Diaphragmatic excursion (measured by ultrasound during tidal breathing) is reduced on the side of the longer leg compared to the shorter leg. (c) Osteopathic diaphragmatic release produces transient improvement in GI symptoms (IBS-SSS reduction >30%) in asymmetric patients but not in symmetric patients. (d) Falsified if: fascial stiffness is symmetric in asymmetric ME/CFS patients, or visceral symptoms do not respond to fascial release — suggesting fascia is compliant and accommodates asymmetry without transmitting force to viscera.

**Non-specialist consequence:** If a tilted pelvis pulls on your intestines through internal connective tissue, your IBS isn't a separate diagnosis from your ME/CFS — it's the same mechanical problem, just further down the chain.

---

#### 1.5 The Sleep Position Asymmetry Hypothesis: Nighttime Mechanical Ventilatory Impairment

**Category:** 1 — Novel Hypothesis
**Origin:** brainstorm

**Mechanistic rationale:** ME/CFS sleep is unrefreshing by definition. Current explanations focus on neurochemical (orexin, adenosine), autonomic (sympathetic dominance), and glymphatic deficits. A mechanical hypothesis is missing: skeletal asymmetry alters spinal alignment in sleep. A person with rotoscoliosis and pelvic obliquity cannot achieve neutral spinal alignment in any sleep position — the thorax is always slightly twisted, the pelvis tilted. In supine position, the lumbar spine cannot flatten; in side-lying, the pelvis cannot stack; in prone, the cervical spine cannot stay neutral. This produces three sleep-specific mechanical effects: (1) mild positional airway narrowing (thoracic rotation changes rib cage geometry → reduced functional residual capacity), (2) sustained paraspinal muscle tension to protect the spine in an unstable position (preventing the EMG silence of REM sleep), (3) positional nerve compression (lateral femoral cutaneous in side-lying on longer-limb side). Together these prevent the sleep-dependent processes the paper identifies as critical (glymphatic clearance, synaptic downscaling, metabolic reset) — providing a *mechanical* explanation for unrefreshing sleep that is independent of the neurochemical pathways.

**Evidence link:** Positional sleep apnea (thoracic scoliosis → restrictive lung pattern → positional OSA; Koumbourlis 2006); REM sleep muscle atonia and spinal stability (paraspinal EMG during sleep, Kubin 2004); Sleep position and pain in scoliosis (Wong 2005, scoliosis patients have more nocturnal pain); ME/CFS sleep architecture (ch04 sleep section, reduced deep sleep, alpha-delta intrusion); no study has measured overnight oximetry, sleep endoscopy, or nocturnal paraspinal EMG in asymmetric ME/CFS patients — untested.

**Preliminary certainty:** 0.10

**Falsifiable prediction:** (a) ME/CFS patients with rotoscoliosis >20° show higher apnea-hypopnea index (AHI) and lower nadir SpO₂ than spinally aligned ME/CFS patients matched for BMI, age, sex. (b) Nighttime paraspinal EMG activity during REM sleep is higher in asymmetric vs symmetric patients (failure of REM atonia in postural muscles). (c) A custom sleep positioning system (lateral supports, pelvic wedge) reduces AHI and increases slow-wave sleep by ≥15% in asymmetric patients. (d) Falsified if: no difference in sleep architecture, AHI, or oximetry between asymmetric and symmetric ME/CFS patients — then sleep quality is driven entirely by non-mechanical factors in this disease.

**Non-specialist consequence:** If a crooked spine prevents deep sleep because no sleeping position is truly flat, a simple foam wedge might improve sleep quality more than any sleeping pill — untested and cheap.

---

### Tier 2: Research Directions

---

#### 2.1 Population-Level Linkage Study: Scoliosis Registry × ME/CFS Diagnosis Registry

**Category:** 2 — Research Direction
**Origin:** brainstorm

**Mechanistic rationale:** The most fundamental question — is skeletal asymmetry more common in ME/CFS than in the general population? — is unanswered and could be answered without a de novo study. Multiple countries maintain scoliosis registries (Swedish Spine Registry, Danish National Patient Registry, Scoliosis Research Society database) and national health registries with ICD codes for ME/CFS (Norway, Sweden, UK CPRD). A simple linkage study: extract all individuals with scoliosis diagnosis (ICD-10 M41) from a national spine registry; cross-reference with ME/CFS diagnosis codes (G93.3); calculate age/sex-standardized prevalence ratio of ME/CFS in the scoliosis cohort vs the general population. This requires zero new data collection, only data access and ethics approval. A positive result (SMR >1.5) would be the first population-level evidence for the hypothesis. A null result (SMR ~1.0) would substantially weaken it.

**Evidence link:** Swedespine registry (Strömqvist 2013, >100,000 patients); Danish National Patient Registry (Schmidt 2014, nationwide coverage); ME/CFS ICD-10 G93.3 in Scandinavian registries (Magnus 2015, Norwegian Mother-Child Cohort linked to patient registry). No such linkage has been published or, to our knowledge, attempted.

**Preliminary certainty:** 0.35 (feasibility), 0.20 (positive result probability — most registry linkages in ME/CFS yield weak signals)

**Falsifiable prediction:** (a) SMR for ME/CFS in scoliosis patients is >1.5 (95% CI excluding 1.0) — positive signal. (b) SMR <1.0 — negative signal, asymmetry is *negatively* associated with ME/CFS (possible confound: scoliosis patients get more medical attention → higher diagnosis rates of all conditions → SMR >1 for many conditions, not ME/CFS-specific). (c) SMR ~1.0 with narrow CI — null, asymmetry does not increase ME/CFS risk at population level. (d) Critical design concern: registry-based ME/CFS diagnosis is unreliable (G93.3 used variably; many ME/CFS patients undiagnosed) → SMR may be biased toward null even if true association exists.

**Non-specialist consequence:** The question "are people with curved spines more likely to get ME/CFS?" has never been asked using health records that already exist. The answer is sitting in government databases — and it's free to find out.

---

#### 2.2 N-of-1 Shoe Lift Autonomic Monitoring Trial

**Category:** 2 — Research Direction
**Origin:** brainstorm

**Mechanistic rationale:** The four-pathway model predicts that correcting pelvic obliquity (via shoe lift) should reduce sympathetic tone — less compensatory muscle loading → reduced metabolic demand, reduced sympathetic chain mechanical irritation, improved venous return. The simplest experimental test is an n-of-1 trial: a single ME/CFS patient with documented LLD >10 mm wears a continuous HR/HRV monitor (chest strap or wrist wearable with beat-to-beat capability), accelerometer (postural sway), and completes symptom diaries for a 4-week baseline (no lift), 4-week active (shoe lift), 4-week washout, 4-week active (replication). Primary endpoints: 24h mean heart rate, HRV (RMSSD, LF/HF ratio), postural sway (accelerometer RMS), daily symptom scores (fatigue, pain, brain fog VAS). This design controls for all between-subject variables, is implementable with consumer-grade wearables, and can be self-administered by a motivated patient-researcher. A positive result in even one patient does not establish efficacy but establishes that the signal exists and is measurable — justifying a larger trial. A negative result in a well-characterized patient weakens but does not falsify (single subject).

**Evidence link:** N-of-1 trial methodology (Lillie 2011, Mirza 2017 — FDA recognizes n-of-1 for rare diseases); Campbell2019ShoeLiftLLD (shoe lifts reduce pain, fatigue not studied); wearable HRV monitoring in ME/CFS (Escorihuela 2021, HRV as PEM predictor); no n-of-1 autonomic shoe lift trial published.

**Preliminary certainty:** 0.50 (feasibility — consumer wearables exist, shoe lifts are safe and low-cost), 0.20 (probability of positive signal in a given patient)

**Falsifiable prediction:** (a) Positive: 24h mean HR decreases by ≥5 bpm during active phases vs baseline; RMSSD increases (higher vagal tone); postural sway decreases (more stable); symptom scores improve ≥20%. (b) Negative: no systematic difference between active and baseline/washout phases on any endpoint — no measurable autonomic effect of shoe lift. (c) Partial: HR and sway improve but symptoms do not (mechanical correction insufficient for symptomatic relief) — or symptoms improve but autonomic metrics don't change (placebo). (d) Key confound: expectation effect — patient knows they're wearing a lift → placebo. Mitigation: objective endpoints (HR, HRV, accelerometry) are harder to placebo than subjective symptoms.

**Non-specialist consequence:** If a shoe lift measurably calms your nervous system, we've found a $30 treatment for a subset of ME/CFS that doesn't require a prescription or a doctor's appointment.

---

#### 2.3 Cadaveric Sympathetic Chain Dissection in Scoliotic vs Non-Scoliotic Spines

**Category:** 2 — Research Direction
**Origin:** brainstorm

**Mechanistic rationale:** The sympathetic chain vulnerability hypothesis (Pathway 2, Schulte2010) rests on the claim that vertebral rotation brings the sympathetic chain into contact with osteophytes or laterally displaced vertebral bodies, causing compression or stretch. This claim is mechanically plausible but anatomically unverified in idiopathic scoliosis — Schulte2010 documented sympathetic dysfunction *after surgery*, which disrupts anatomy. The question is whether the sympathetic chain is mechanically distorted in *native* scoliotic spines. Answerable by cadaveric dissection: compare sympathetic chain position, tension, perineural fibrosis, and ganglion morphology in scoliotic (Cobb >30°) vs non-scoliotic cadaveric spines (n=10 per group). Measure: distance from ganglion to vertebral body, evidence of mechanical deformation (flattening, displacement), histological markers of chronic compression (perineural fibrosis, axonal loss). This is a small, feasible anatomy study that would move the sympathetic chain hypothesis from "plausible" to "anatomically confirmed" or "anatomically rejected."

**Evidence link:** Schulte2010SympathChainScoliosis (surgical disruption, not native anatomy); Cadaveric scoliosis anatomy (Kouwenhoven 2007, spinal cord position in scoliosis — not sympathetic chain); Sympathetic chain anatomy in general (Pick 1975, anatomical textbook); no cadaveric study of sympathetic chain position in scoliotic spines — complete gap.

**Preliminary certainty:** 0.20 (positive result probability — why has no one looked at this? Possible: it looks normal and that's why it was never published)

**Falsifiable prediction:** (a) In scoliotic spines, ≥3 thoracic sympathetic ganglia show evidence of mechanical deformation (flattening, displacement from vertebral body, perineural fibrosis) not present in non-scoliotic spines. (b) The deformation is maximal at the apex of the scoliotic curve (T7–T9 for right thoracic scoliosis). (c) Falsified if: sympathetic chain position, tension, and ganglion morphology are indistinguishable between scoliotic and non-scoliotic spines — the chain is mobile and adapts to vertebral rotation without compression. This would substantially weaken Pathway 2.

**Non-specialist consequence:** We don't know whether a twisted spine actually pinches the nerves that control your organs — and we could find out by examining donated bodies, without a single living patient.

---

#### 2.4 Biplanar Radiography + COMPASS-31 + 2-Day CPET: The Triple-Characterization Protocol

**Category:** 2 — Research Direction
**Origin:** brainstorm

**Mechanistic rationale:** The hypothesis predicts a data pattern: greater skeletal asymmetry → worse autonomic function → worse metabolic response to exercise → worse PEM. Testing this requires a single study measuring all three domains in the same patients. Design: n=100 ME/CFS patients, n=50 sedentary controls. Day 1: EOS biplanar full-spine radiography (low-radiation, ~0.1 mSv vs ~1.5 mSv for conventional X-ray) → measures Cobb angle, pelvic obliquity, sagittal vertical axis, vertebral rotation. Day 2: COMPASS-31 autonomic symptom questionnaire + tilt-table test with continuous HR/BP. Day 3–4: 2-day CPET with gas exchange analysis. Analysis: (a) In ME/CFS, does LLD >10 mm or rotoscoliosis >10° predict worse COMPASS-31 scores? (b) Does asymmetry predict CPET-1 to CPET-2 decline (PEM severity)? (c) Does the asymmetry→autonomic→metabolic chain hold as a mediation pathway (path analysis)? This is the minimum study that could reject or tentatively support the full hypothesis in a single dataset.

**Evidence link:** EOS system (Illes 2012, low-radiation biplanar radiography validated for scoliosis); COMPASS-31 (Sletten 2015, validated autonomic symptom scale); 2-day CPET (Keller 2014, PEM gold standard); no study has combined all three in ME/CFS — complete gap.

**Preliminary certainty:** 0.40 (design feasibility — equipment exists, sample size is achievable), 0.15 (probability of clear positive result — the null in Proessl2018 and the literature-sparse pattern suggest weak signal)

**Falsifiable prediction:** (a) Supporting the hypothesis: asymmetry severity (composite score: Cobb angle + LLD mm + pelvic obliquity degrees) correlates with COMPASS-31 (r >0.3) and with CPET-2 VO₂max decline (r >0.3) in ME/CFS but not controls. Mediation: COMPASS-31 partially mediates the asymmetry→CPET decline relationship (indirect effect significant, p <0.05). (b) Weak support: asymmetry correlates with COMPASS-31 but not with CPET decline (mechanical → autonomic link, but autonomic dysfunction does not drive PEM — PEM has a non-autonomic dominant pathway). (c) Null/negative: no correlation of asymmetry with any autonomic or metabolic measure in ME/CFS (all p >0.1). This would strongly suggest the hypothesis is incorrect — asymmetry is orthopedically relevant but not physiologically relevant in ME/CFS. (d) The Proessl2018 replication: if the null result replicates in a larger sample, the hypothesis is falsified at the first measurable link.

**Non-specialist consequence:** For the cost of one moderate-sized study (~$500K), we could either validate a new subgroup or kill a plausible hypothesis decisively — either outcome advances the field.

---

### Tier 3: Reasons This Hypothesis May NOT Be Relevant

---

#### 10.1 Prevalence Mismatch: Scoliosis Is Common, ME/CFS Is Rare

**Category:** 10 — Reasons This Mechanism May NOT Be Relevant
**Origin:** brainstorm

**Mechanistic rationale:** Adolescent idiopathic scoliosis (Cobb >10°) affects 2–3% of the population (~200 million people worldwide). ME/CFS affects ~0.2–0.4% (~17–30 million). If skeletal asymmetry were a strong causal driver, the scoliosis→ME/CFS conversion rate would need to be implausibly low — most people with scoliosis do NOT develop ME/CFS. This is the "base rate problem": a risk factor that is 10× more prevalent than the disease it supposedly causes is either very weak (OR <1.2) or irrelevant (OR ~1.0). Counterarguments: (a) only severe asymmetry (>20°, >15 mm LLD) matters — prevalence of moderate+ scoliosis is ~0.3%, comparable to ME/CFS; (b) the two-hit model (1.2 above) explains low conversion — asymmetry is necessary but insufficient, requiring a trigger; (c) asymmetry may cause a *symptom cluster* (positional fatigue, pain) that is misdiagnosed as ME/CFS rather than true ME/CFS. But the fundamental epidemiological pattern — ubiquitous scoliosis, rare ME/CFS — is the strongest argument against asymmetry as a dominant causal driver.

**Evidence link:** Scoliosis prevalence: Weinstein 2008 (2% adolescent, 0.5% Cobb >20°), Asher 2006 (2–3% global). ME/CFS prevalence: Jason 2020 (0.2–0.4%), Lim 2020 meta-analysis (0.43%). No study has calculated the scoliosis→ME/CFS conversion rate or SMR — the linkage study (2.1 above) would directly address this.

**Preliminary certainty:** 0.55 (prevalence mismatch is real and concerning), 0.20 (whether it's fatal to the hypothesis — depends on conversion rate)

**Falsifiable prediction:** (a) If SMR for ME/CFS in scoliosis patients is ~1.0 (95% CI 0.8–1.2), the hypothesis is inert at the population level — asymmetry does not cause ME/CFS at a detectable frequency. (b) If SMR is 1.5–2.5, the hypothesis has modest population validity — asymmetry is a weak risk factor in a multifactorial disease. (c) If SMR >5, asymmetry would be one of the strongest known risk factors for ME/CFS — but this is inconsistent with the prevalence mismatch and clinical experience, and would likely already have been noticed.

**Non-specialist consequence:** For every person with ME/CFS and a curved spine, there are 10 people with curved spines who are perfectly healthy — so the curve probably isn't the cause.

---

#### 10.2 Directionality Reversal: ME/CFS Causes Asymmetry, Not the Reverse

**Category:** 10 — Reasons This Mechanism May NOT Be Relevant
**Origin:** brainstorm

**Mechanistic rationale:** The hypothesis assumes asymmetry → ME/CFS. But the reverse direction is equally plausible: ME/CFS → severe deconditioning → muscle atrophy → postural collapse → acquired asymmetry. This would make asymmetry a *consequence* of ME/CFS, not a cause. Mechanistic pathway: prolonged bed rest and drastically reduced activity → paraspinal muscle atrophy (core stabilizers, multifidi) → loss of active spinal support → gradual development of functional scoliosis and pelvic obliquity from muscle imbalance (one side stronger than the other in residual activity). This is well-documented in other deconditioning states: ICU-acquired weakness produces postural deformity; spaceflight produces spinal elongation and muscle atrophy; chronic low back pain produces asymmetric paraspinal atrophy visible on MRI. If ME/CFS patients develop asymmetry *after* disease onset (rather than having it pre-morbidly), the entire hypothesis reverses — making it a downstream consequence, not an upstream driver.

**Evidence link:** Paraspinal muscle atrophy in chronic low back pain (Hides 1994, multifidus atrophy ipsilateral to pain — MRI-verified); ICU-acquired weakness and postural deformity (Hermans 2015); Bed rest deconditioning (Pavy-Le Traon 2007, 60-day bed rest produces muscle atrophy and postural changes); ME/CFS deconditioning (Newton 2017, reduced VO₂max; Wallman 2004, reduced physical activity). No study has measured pre-morbid vs post-morbid spinal alignment in ME/CFS — would require pre-existing spinal radiographs (rare) or prospective post-infectious cohort with baseline imaging (2.4 above).

**Preliminary certainty:** 0.30

**Falsifiable prediction:** (a) In patients with childhood/adolescent radiographs (e.g., pre-participation sports physicals, scoliosis screening), pre-morbid asymmetry (pre-dating ME/CFS onset by years) is present → supports original direction. (b) In patients with serial imaging, asymmetry severity *increases* with disease duration → supports deconditioning direction. (c) If both: pre-morbid asymmetry exists in some, and acquired asymmetry in others → two distinct subgroups (primary mechanical vs secondary mechanical). (d) If neither direction can be established (no pre-morbid imaging, no longitudinal data), the directionality question is unanswerable with current evidence.

**Non-specialist consequence:** If your curved spine developed *after* you got sick — from muscles wasting away in bed — fixing the curve won't fix the disease. It's a symptom, not the cause.

---

#### 10.3 The Proessl Null Result Is More Damaging Than Acknowledged

**Category:** 10 — Reasons This Mechanism May NOT Be Relevant
**Origin:** brainstorm

**Mechanistic rationale:** Proessl2018 (n=15) found no association between leg strength asymmetry and fatigue in multiple sclerosis. The Phase 3 treatment of this finding as "one null study, n=15, low power" understates its significance. Multiple sclerosis is the *ideal* test condition for the asymmetry→fatigue hypothesis: (a) MS fatigue is a well-recognized, disabling symptom with both central and peripheral components; (b) MS frequently produces asymmetric weakness (leg strength asymmetry is common, unlike healthy populations); (c) the study measured asymmetry objectively (isokinetic dynamometry, not self-report); (d) fatigue was measured with a validated scale (MFIS). If asymmetry→fatigue were a real, measurable pathway, it should have been *easiest* to detect in MS — where asymmetry is common, fatigue is severe, and measurement tools are validated. The null result in this ideal testbed is stronger evidence against the hypothesis than a null result in a general population — it suggests the pathway doesn't exist at detectable magnitude even under optimal conditions for detecting it.

**Evidence link:** Proessl2018LegAsymmetryMS (n=15, null for fatigue; asymmetry predicted gait asymmetry but not fatigue). MS fatigue prevalence: 75–90% (Krupp 2011). MS asymmetry: 30–50% have unilateral motor symptoms (Confavreux 2000). The null is not just "one small study" — it's the *only* study testing the asymmetry→fatigue link in a neurological disease, and it found nothing.

**Preliminary certainty:** 0.40 (negative evidence strength — null in optimal testbed is informative), 0.25 (whether MS fatigue is mechanistically similar enough to ME/CFS fatigue to generalize — MS fatigue may be more CNS-driven, PEM-specific pathways may differ)

**Falsifiable prediction:** A replication of Proessl2018 with n≥100 MS patients, adding 2-day CPET (PEM measurement, not just fatigue questionnaire), would either: (a) confirm null for all fatigue measures → hypothesis dead across MS and likely ME/CFS; (b) confirm null for questionnaire fatigue but find CPET asymmetry → asymmetry predicts metabolic PEM, not perceived fatigue, and the Proessl null is a limitation of outcome measure, not hypothesis.

**Non-specialist consequence:** The only study that asked "do uneven legs make you tired?" — in multiple sclerosis, where uneven legs are common — found nothing. That's a bigger red flag than it looks.

---

#### 10.4 Treatment Null: Shoe Lifts Help Pain, Not Fatigue — Across All Studies

**Category:** 10 — Reasons This Mechanism May NOT Be Relevant
**Origin:** brainstorm

**Mechanistic rationale:** The systematic review by Campbell2019 found that shoe lifts reduce low back pain in LLD patients — but fatigue was NOT assessed in any included study. This is not an accident of study design. Across the broader orthotic/LLD literature, the pattern is consistent: shoe lifts and orthotics improve pain (especially low back, hip, knee — the joints directly loaded by asymmetry), but *no study has documented fatigue improvement*. If asymmetry drove fatigue through the metabolic or autonomic pathways the hypothesis proposes, orthotic correction should improve fatigue as well — probably more reliably than it improves pain (metabolic/autonomic effects are systemic and should respond to mechanical unloading of the root cause). The consistent absence of fatigue improvement in the LLD treatment literature — across decades of orthopedic research — is a strong negative signal. Why would fatigue be the one outcome never measured? Because it was never observed to improve, and null results are not published. The absence of evidence for fatigue improvement after orthotic correction is evidence of absence.

**Evidence link:** Campbell2019ShoeLiftLLD (pain improvement, no fatigue outcomes); broader LLD treatment literature: Defrin 2005 (shoe lift reduces pain, no fatigue data); Gofton 1978 (shoe lift for LLD improves gait symmetry, no fatigue); no study has measured pre/post shoe lift fatigue with validated instruments — systematic gap that itself is informative.

**Preliminary certainty:** 0.35

**Falsifiable prediction:** (a) A shoe lift trial in LLD patients (not ME/CFS — test the pathway in a general population first) measuring fatigue (MFI-20) pre/post lift will find no improvement (Cohen's d <0.2), consistent with the historical null. (b) If fatigue improves in LLD patients without ME/CFS, the pathway exists but ME/CFS adds additional locks preventing recovery — a different claim. (c) If fatigue improves in LLD patients with ME/CFS but not without, asymmetry is specific to the ME/CFS phenotype — but this pattern is medically unlikely (why would LLD cause fatigue only in ME/CFS?).

**Non-specialist consequence:** Orthopedic surgeons have been prescribing shoe lifts for decades. If they fixed fatigue, someone would have noticed by now — and the fact that nobody has studied it is itself a clue.

---

#### 10.5 The Developmental Latency Problem: Why Would Congenital Asymmetry Cause Disease Decades Later?

**Category:** 10 — Reasons This Mechanism May NOT Be Relevant
**Origin:** brainstorm

**Mechanistic rationale:** Most leg length discrepancies and scoliosis are present from childhood or adolescence. If skeletal asymmetry causes ME/CFS through cumulative mechanical wear, the disease should onset gradually, in mid-to-late life (40s–60s), after decades of cumulative load — matching the cervical aging spiral (Pathway 4). But ME/CFS commonly onsets acutely in the 20s–40s, often after an infection, including in patients with pre-existing asymmetry present since childhood. The question: if your pelvis has been tilted since you were 12, why does it suddenly cause ME/CFS at 25 — right after mononucleosis — rather than at 15 or 35? The two-hit model partly addresses this (infection as trigger), but the latency problem remains: a congenital or adolescent structural abnormality that produces no symptoms for 10–30 years, then suddenly becomes causal, is an unusual disease model. It requires either (a) the asymmetry to be *worsening* over time (progressive scoliosis in adulthood, which occurs in only a minority of idiopathic scoliosis cases), (b) the body's compensations to be *failing* over time (a reserve-exhaustion model), or (c) the asymmetry to be irrelevant until some other pathology (autoimmunity, infection, metabolic) reduces the body's tolerance for its effects.

**Evidence link:** ME/CFS onset age: typically 20–40, often acute post-infectious (IOM 2015). Scoliosis natural history: most idiopathic scoliosis stabilizes after skeletal maturity; progression in adulthood occurs in ~15–25% of curves >30° (Weinstein 2003, 50-year follow-up). LLD: present from childhood, stable after growth plate closure. The latency between childhood skeletal development and adult ME/CFS onset is typically 10–30 years — unexplained by the current model.

**Preliminary certainty:** 0.25 (latency is a real unexplained gap), 0.35 (two-hit/reserve-exhaustion models can accommodate latency — but are post hoc, not predictive)

**Falsifiable prediction:** (a) If asymmetry is causal: ME/CFS patients with skeletal asymmetry should have *later* onset age (cumulative wear model) and *more gradual* onset than non-asymmetric patients. (b) If asymmetry is a permissive substrate (1.2): no difference in onset age or mode — asymmetry lowers threshold but does not determine timing. (c) If asymmetry is a consequence (10.2): asymmetry severity correlates with disease duration, not pre-dating onset. (d) Chart review of pre-morbid records: in ME/CFS patients with documented adolescent scoliosis, was the ME/CFS onset consistent with cumulative mechanical wear (gradual, 40s–50s) or with post-infectious (acute, 20s–30s)? The answer is currently unknown.

**Non-specialist consequence:** If you've had one leg shorter than the other since you were a kid, and ME/CFS suddenly hits you at 30 after a virus — the virus did it, not the leg. The leg might have made you vulnerable, but the timing makes no sense if the leg is the primary driver.

---

### Tier 4: Null Hypothesis and Evidence Quality

---

#### 11.1 Formal Null Hypothesis: Skeletal Asymmetry Is an Incidental Orthopedic Finding in ME/CFS

**Category:** 11 — Null Hypothesis Assessment
**Origin:** brainstorm

**Mechanistic rationale:** The null hypothesis: Skeletal asymmetry (rotoscoliosis, LLD, DAMI) is an incidental orthopedic finding in ME/CFS patients — present at population-expected rates, not causally related to disease onset, severity, symptoms, or treatment response. Under this null, the Gerlier clinical observation arises from: (a) confirmation bias (clinician sees asymmetry in ME/CFS patients, doesn't count symmetric patients); (b) base rate neglect (asymmetry is common in the general population, so seeing it in ME/CFS patients is expected); (c) narrative post-hoc reasoning (patient has ME/CFS + asymmetry → asymmetry must explain the ME/CFS because no other explanation is available). This is the standard null for any proposed risk factor or biomarker. The null can be rejected by any of the studies proposed above (2.1, 2.2, 2.4), but until such data exist, the null is the default position.

**Evidence link:** General population scoliosis prevalence (2–3%, Weinstein 2008); LLD >10 mm prevalence (~5–10% of general population, Knutson 2005); no ME/CFS-specific prevalence data (gap). The burden of proof is on the hypothesis, not the null — and the hypothesis currently has zero direct evidence at any link.

**Preliminary certainty:** 0.70 (null is the default prior given the evidence state — a hypothesis with 0 direct ME/CFS papers starts from the null), 0.55 (whether the null will survive testing — completely unknown, pending data)

**Falsifiable prediction:** The null is rejected if any of the following are established with p <0.05 after multiplicity correction: (a) SMR for ME/CFS in scoliosis/LDD patients >1.5; (b) Asymmetry severity correlates with COMPASS-31, CPET decline, or PEM frequency in ME/CFS patients (r >0.3); (c) Shoe lift intervention produces measurable autonomic improvement (HR reduction, HRV increase) in n-of-1 or small-n trials. The null survives if none of these are established after adequate study.

**Non-specialist consequence:** The default assumption should be that crooked spines and ME/CFS are two common problems that sometimes happen in the same person by chance — until someone measures it and proves otherwise.

---

#### 11.2 The CONAN (Confirmation Over Null-expectation Asymmetry Neglect) Critique

**Category:** 11 — Null Hypothesis Assessment
**Origin:** brainstorm

**Mechanistic rationale:** The Gerlier hypothesis originates from a clinician observing asymmetry in ME/CFS patients. This is vulnerable to a well-characterized cognitive bias: the asymmetric patient is memorable (MECHANICAL CAUSE!) while the symmetric patient is invisible (nothing to notice). If a clinician sees 100 ME/CFS patients, and 10 have noticeable asymmetry, the 10 asymmetric patients form a vivid cluster that demands explanation. The 90 symmetric patients fade into the undifferentiated background. The clinician naturally asks "what's different about these 10?" rather than "is 10/100 more than population prevalence?" This is the "conjunction fallacy" applied to clinical observation: P(asymmetry | ME/CFS) feels high because asymmetric patients are salient, but P(asymmetry | general population) is also high (2–10% depending on definition), meaning the posterior probability of causality may be near zero. Explicitly naming and analogizing this bias — CONAN: Confirmation Over Null-expectation Asymmetry Neglect — may help frame why structured epidemiological testing (2.1) is essential before the hypothesis is taken seriously.

**Evidence link:** Cognitive bias literature: availability heuristic (Tversky 1973), confirmation bias in clinical reasoning (Croskerry 2003, diagnostic error taxonomy), base rate neglect (Kahneman 2011). No argument against the hypothesis — this is a methodological caution about hypothesis generation from clinical observation without population denominator.

**Preliminary certainty:** 0.60 (CONAN is a real cognitive bias), 0.30 (whether it explains the Gerlier observation — depends on whether asymmetry prevalence in the observed clinic population is actually above population rates, which is unknown)

**Falsifiable prediction:** (a) Asymmetry prevalence in an unselected ME/CFS cohort (consecutive recruitment, not clinician-identified) is within the 95% CI of general population prevalence → CONAN explains the observation. (b) Asymmetry prevalence is significantly above population rates → CONAN does not explain the observation, and the hypothesis has a denominator. Note: this is a one-direction test — only (a) falsifies the hypothesis, not the bias critique.

**Non-specialist consequence:** A doctor notices the patients with crooked spines because they're memorable, and forgets the ones with straight spines because they're not. That's human nature — but it's also why anecdotes aren't data.

---

#### 12.1 DAMI/ILMI: Clinical Concepts Without Measurement Validity

**Category:** 12 — Evidence Quality Concern
**Origin:** brainstorm

**Mechanistic rationale:** The Phase 3 limitation (@lim:skeletal-asymmetry-evidence-gap) notes that DAMI and ILMI yield zero PubMed results. But the problem is deeper than absence from the English-language literature: these may be clinical concepts that *cannot* be measured with adequate reliability. The core issues:
- **DAMI (Des Axes Morphostatiques Insuffisants):** "Insufficient morphostatic axes" is not a defined radiological measurement. It has no operational definition (what axis? measured how? what is "sufficient" vs "insufficient"?). Without an operational definition, it is a clinical impression, not a diagnostic construct. Two clinicians examining the same patient could disagree on whether DAMI is present, and there is no gold standard to adjudicate.
- **ILMI (Inégalité de Longueur des Membres Inférieurs):** Leg length inequality *is* measurable (standing pelvic radiograph, CT scanogram), but the clinical significance threshold is debated: some use >5 mm, others >10 mm, others >20 mm. The French clinical concept of ILMI may encompass not just measured LLD but a gestalt of postural consequences (pelvic tilt, compensatory scoliosis, gait asymmetry) — making it a syndrome rather than a measurement. This creates a distinction between "LLD" (measurable) and "ILMI" (clinical syndrome including consequences) that is useful clinically but problematic for research.
- **Inter-rater reliability:** Neither DAMI nor ILMI has published inter-rater reliability data. This is a minimum requirement for any measurement used in clinical research. If two trained clinicians cannot agree on whether a patient has DAMI/ILMI (kappa <0.6), research using these constructs is measuring clinician judgment, not patient anatomy.

**Evidence link:** Zero PubMed results for DAMI, ILMI (search-log-skeletal-asymmetry-mechanics-2026-07-21, queries 5–6). LLD measurement reliability: standing pelvic radiograph (Friberg 1988, reliable); clinical tape measure method (unreliable, ICC 0.5–0.7, Beattie 1990). Generalizability of French clinical concepts to Anglophone research: similar problem with "fermeture de l'angle splénique" (radiological sign described in French literature, absent from English textbooks).

**Preliminary certainty:** 0.65 (measurement validity concern is real and serious), 0.50 (whether the concepts could be operationalized — probably yes, but effort required is substantial)

**Falsifiable prediction:** (a) Operationalize DAMI as: EOS-measured pelvic obliquity >10 mm AND coronal imbalance >20 mm AND sagittal vertical axis >50 mm (three-plane morphostatic insufficiency). If this operationalization has intra-rater ICC >0.9 and inter-rater ICC >0.8, DAMI is a valid measurement construct. (b) If inter-rater ICC <0.6 despite training and standardized protocol, DAMI is not a research-usable construct and the hypothesis must use standard orthopedic measurements (Cobb angle, LLD mm, pelvic obliquity degrees) instead.

**Non-specialist consequence:** DAMI is a French clinical concept that doesn't exist in the scientific literature. Before we can study whether it causes ME/CFS, we need to define it well enough that two doctors measuring the same patient would agree it's there.

---

#### 12.2 The Confounding Cascade: Pain → Deconditioning → Fatigue vs Asymmetry → Metabolic Failure → Fatigue

**Category:** 12 — Evidence Quality Concern
**Origin:** brainstorm

**Mechanistic rationale:** Skeletal asymmetry is a known cause of chronic pain (low back pain, hip pain, knee pain — the joints compensating for asymmetry). Chronic pain is a known cause of deconditioning (avoidance of activity → muscle atrophy, reduced VO₂max). Deconditioning is a known correlate of fatigue (even in healthy people, bed rest produces fatigue). So an alternative causal chain is: asymmetry → pain → activity avoidance → deconditioning → fatigue. This chain is well-evidenced at every step and requires no novel physiology. The four-pathway model proposes a different chain: asymmetry → compensatory muscle overuse (not underuse) → metabolic failure → fatigue. These make opposite predictions about activity: the deconditioning model predicts *reduced* activity (avoidance); the overuse model predicts *normal or increased* metabolic cost for the same activity (higher energy expenditure, not lower activity volume). Disentangling these requires measuring both activity volume (accelerometry) and metabolic cost (indirect calorimetry during standardized tasks) in the same asymmetric ME/CFS patients. If asymmetric patients are *less active* than symmetric patients (deconditioning model), the overuse model is wrong. If asymmetric patients have *higher metabolic cost* for the same activity (metabolic inefficiency model), the deconditioning model is wrong. If both are true (less active AND higher cost per step), both models contribute — asymmetry drives both underuse (from pain) and overuse (from inefficiency), a "worst of both worlds" phenotype.

**Evidence link:** Asymmetry → pain: Campbell2019ShoeLiftLLD, Gofton 1978; Pain → deconditioning: Verbunt 2003 (fear-avoidance model in chronic pain); Deconditioning → fatigue: Pavy-Le Traon 2007 (bed rest produces fatigue in healthy subjects). No study has measured both activity volume AND metabolic efficiency in asymmetric vs symmetric ME/CFS patients — both pathways untested.

**Preliminary certainty:** 0.45 (deconditioning pathway is well-evidenced and parsimonious — asymmetry → pain → deconditioning → fatigue is an Occam's razor explanation requiring no novel mechanisms), 0.20 (overuse pathway as alternative — more interesting scientifically but less parsimonious)

**Falsifiable prediction:** (a) In ME/CFS patients with LLD >10 mm, daily step count (accelerometer, 7-day wear) is *lower* than symmetric ME/CFS patients → supports deconditioning. (b) In the same patients, metabolic cost of walking (O₂ consumption at 2 km/h, indirect calorimetry) is *higher* per step than symmetric patients → supports overuse. (c) If (a) true and (b) false → pure deconditioning model, asymmetry → fatigue through pain-avoidance, not metabolic overload. (d) If (a) false and (b) true → pure overuse model, asymmetry → metabolic inefficiency, pain is not the dominant mechanism. (e) If both true → dual-pathway model, asymmetry is harmful through two distinct mechanisms.

**Non-specialist consequence:** If crooked spines cause fatigue because they hurt → you stop moving → you get weak → you're tired, then the fix is pain management + graded activity. If they cause fatigue because every step costs twice as much energy, the fix is shoe lifts + orthotics. Same observation, opposite treatment.

---

#### 12.3 The Rett Syndrome Model Is Inapplicable: MECP2 Drives Both Scoliosis AND Autonomic Dysfunction

**Category:** 12 — Evidence Quality Concern
**Origin:** brainstorm

**Mechanistic rationale:** Killian2017 is cited as evidence that scoliosis co-occurs with autonomic dysfunction, supporting the hypothesis. But this is a misapplication of the evidence. In Rett syndrome, both scoliosis AND autonomic dysfunction are downstream consequences of the same upstream cause — MECP2 mutation, a transcription factor that regulates thousands of neuronal genes. The scoliosis in Rett is not causing the autonomic dysfunction; they are parallel, independent consequences of the same genetic lesion. This is classic confounding by common cause: MECP2 mutation → scoliosis AND MECP2 mutation → autonomic dysfunction, but scoliosis and autonomic dysfunction are correlated without being causally linked. Using Rett as evidence for scoliosis → autonomic dysfunction is like using Down syndrome as evidence that short stature causes intellectual disability (trisomy 21 causes both independently). The Rett data supports a *different* hypothesis: neurological disease affecting both bone and ANS — which is true but does not support the specific claim that skeletal asymmetry causes autonomic dysfunction through mechanical pathways.

**Evidence link:** Killian2017ScoliosisRett (scoliosis in 27%, autonomic dysfunction from MECP2, no analysis testing scoliosis→autonomic pathway). MECP2 function: Amir 1999 (MECP2 as transcriptional repressor mutated in Rett); Chahrour 2008 (MECP2 regulates thousands of genes, including autonomic and bone-related targets). Confounding in disease models: Rothman 2008 (Modern Epidemiology, confounding by common cause).

**Preliminary certainty:** 0.70 (Rett as evidence for the mechanical hypothesis is a category error — common cause, not causal chain), 0.30 (whether Killian2017 could be reanalyzed to test directionality — unlikely, cross-sectional data cannot establish direction)

**Falsifiable prediction:** A statistical test of directionality in Rett: does scoliosis severity predict autonomic dysfunction severity after controlling for MECP2 mutation severity (mutation type: early truncating vs missense) and motor function? If yes → supports mechanical pathway (scoliosis contributes independently to autonomic dysfunction in Rett). If no (mutation severity explains both) → Rett is irrelevant to the mechanical hypothesis. This analysis has not been performed in the Killian 2017 dataset — it is possible but requires access to individual patient data.

**Non-specialist consequence:** Rett syndrome proves that a brain gene can mess up both your spine and your heart rate — but it doesn't prove the spine caused the heart rate problem. They're siblings from the same genetic parent, not cause and effect.

---

#### 12.4 The Schulte 2010 Surgical vs Idiopathic Distinction: A Qualitative Difference, Not a Quantitative One

**Category:** 12 — Evidence Quality Concern
**Origin:** brainstorm

**Mechanistic rationale:** Schulte2010 documented sympathetic chain dysfunction after *anterior scoliosis surgery* — a procedure involving direct dissection and retraction of the sympathetic chain, intentional segmental vessel ligation (which can devascularize ganglia), and postoperative scarring. This is qualitatively different from the mechanical effects of idiopathic scoliosis: gradual vertebral rotation producing chronic low-grade compression, not acute surgical trauma. The surgical model establishes that the sympathetic chain *can be injured* at the thoracic spine — but surgical transection is a different mechanism from chronic compression. Comparing the two: surgery → axonotmesis or neurotmesis (axon or nerve transection); chronic compression → neurapraxia (conduction block without axonal damage, at least initially). The symptoms differ: surgical injury → anhidrosis, vasomotor changes (confirmed in Schulte by sudomotor testing); chronic compression → hyperhidrosis (irritative), fluctuating symptoms. Schulte2010 is the best mechanistic anchor for the hypothesis, but it is best understood as proof-of-anatomical-concept (the chain is vulnerable here) rather than proof-of-mechanism (idiopathic scoliosis produces the same injury).

**Evidence link:** Schulte2010SympathChainScoliosis (surgical approach, anterior thoracoscopic, n=31). Nerve injury classification: Seddon 1942 (neurapraxia, axonotmesis, neurotmesis) and Sunderland 1951 (grades I–V). Chronic nerve compression pathophysiology: Mackinnon 2002 (compression neuropathy produces distinct histological changes from transection). Anterior scoliosis surgery technique: Lenke 2008 (thoracoscopic anterior release and instrumentation).

**Preliminary certainty:** 0.60 (surgical vs idiopathic distinction is real and methodologically important), 0.35 (whether chronic compression produces similar autonomic deficits to surgical transection — plausible, but see 10.3: the only test in a non-surgical population found nothing)

**Falsifiable prediction:** A head-to-head comparison: (a) sudomotor testing (sympathetic skin response, quantitative sudomotor axon reflex test) in n=30 ME/CFS patients with rotoscoliosis >20° vs n=30 spinally aligned ME/CFS patients. If the Schulte surgical finding generalizes to idiopathic scoliosis, the asymmetric group should show measurable sudomotor deficits (reduced SSR amplitude, increased latency) in the dermatomes corresponding to the scoliotic apex. If no difference, the Schulte finding is surgery-specific and does not support the mechanical hypothesis in idiopathic scoliosis.

**Non-specialist consequence:** Surgeons cutting near the spine can damage the nerves that control sweating — that doesn't mean a slow-developing curve does the same thing. A surgical injury is a hammer; a tilted vertebra is a steady pressure. Different mechanisms, maybe different results.

---

#### 12.5 Construct Validity of "Mechanical Asymmetry" as a Single Entity: Heterogeneity Within the Exposure

**Category:** 12 — Evidence Quality Concern
**Origin:** brainstorm

**Mechanistic rationale:** The hypothesis groups rotoscoliosis (spinal curvature), LLD (limb length), and DAMI (postural insufficiency) under one construct: "skeletal asymmetry." But these are biomechanically different entities with different anatomical consequences:
- **Rotoscoliosis:** vertebral rotation, asymmetric rib cage → risk to sympathetic chain (T1–L2) and spinal nerve roots at apex
- **LLD (anatomical):** pelvic obliquity, compensatory lumbar scoliosis → risk to hip/knee/ankle joints, not directly to sympathetic chain (pelvis is below the sympathetic chain)
- **Pelvic obliquity (DAMI):** sacral unleveling, global postural compensation → risk is diffuse, indeterminate, depends on individual compensation pattern
- **Cervical arthrosis:** degenerative osteophytes at uncovertebral joints → risk to cervical nerve roots and vertebral artery, distinct from lower-body asymmetry

Conflating these under "skeletal asymmetry" assumes they all produce the same downstream effects through a common pathway (metabolic overload, sympathetic irritation). But the biomechanics differ significantly: LLD imposes hip/knee load, not sympathetic chain irritation; rotoscoliosis bypasses the hip and directly loads the spine; pelvic obliquity may produce neither pure hip load nor pure spine load but a global compensatory pattern. Treating them as a single exposure variable in research would mask divergent effects and increase Type II error. The hypothesis needs to specify *which* asymmetry type produces *which* downstream pathway, or risk being unfalsifiable (any asymmetry + any symptom = "consistent with the hypothesis").

**Evidence link:** Biomechanics of LLD (Gurney 2002, kinetic chain from foot to lumbar spine); Biomechanics of scoliosis (Stokes 2006, asymmetric loading of vertebrae and discs); Pelvic obliquity biomechanics (Lee 2015, pelvic compensation patterns). None have been studied in ME/CFS context.

**Preliminary certainty:** 0.55 (heterogeneity within the exposure is a real methodological concern), 0.20 (whether the heterogeneity matters — it's possible all asymmetry types converge on a final common pathway of increased metabolic cost, regardless of anatomical site)

**Falsifiable prediction:** In a study measuring multiple asymmetry types (2.4 protocol), the correlation of each asymmetry measure with COMPASS-31 and CPET decline should be compared: if rotoscoliosis correlates more strongly with COMPASS-31 (sympathetic chain) and LLD correlates more strongly with CPET decline (metabolic from hip loading), the pathways are specific to asymmetry type and should be analyzed separately. If all asymmetry types correlate similarly, the final common pathway model is supported.

**Non-specialist consequence:** A twisted spine and a short leg aren't the same thing — one might pinch your nerves, the other might make you tired from walking funny. Lumping them together as "asymmetry" might hide which one matters.

---

## Quality Summary

| Tier | Ideas | Certainty range |
|------|-------|-----------------|
| 1 — Novel Hypotheses (mechanistic gaps) | 1.1–1.5 | 0.10–0.25 |
| 2 — Research Directions | 2.1–2.4 | 0.20–0.50 |
| 10 — Reasons May Not Be Relevant | 10.1–10.5 | 0.25–0.55 |
| 11 — Null Hypothesis Assessment | 11.1–11.2 | 0.30–0.70 |
| 12 — Evidence Quality Concerns | 12.1–12.5 | 0.45–0.70 |

**Overall assessment:** The brainstorm identifies five novel mechanistic gaps (mechanotransduction, two-hit model, proprioceptive overdrive, fascial continuity, sleep mechanics) that the four-pathway model does not address. Four research directions span from a zero-cost registry linkage to a definitive triple-characterization protocol. The five "reasons this may fail" ideas are collectively stronger than the positive hypotheses — the prevalence mismatch and Proessl null are particularly damaging to the simple causal model. The evidence quality concerns reveal fundamental measurement and confounding problems (DAMI validity, Rett inapplicability, Schulte surgical-vs-idiopathic distinction) that require resolution before the hypothesis can be tested rigorously. The net assessment is that this hypothesis remains in the "structured clinical intuition" phase and would benefit most from a definitive prevalence study (2.1) before any mechanistic investigation is warranted.

