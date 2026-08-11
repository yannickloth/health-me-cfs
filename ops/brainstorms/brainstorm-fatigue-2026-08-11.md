# Brainstorm: Fatigue as a Standalone Core Symptom — Research Directions, Critical Nulls, and Construct Validity

Generated: 2026-08-11
Model: deepseek-v4-pro
Origin: scientific-insight-generator (Phase 4 of integrate-topic cycle)
Topic slug: fatigue-core-symptom
Decision: PROCEED (all brainstorm categories 1–12 open)
Status: Creative analysis — requires expert review

---

## Scope Constraint

The following content already exists in chapter text (`sec-00-fatigue/`) and must NOT be duplicated or re-proposed:

- `@clf:fatigue-vs-fatigability` — fatigue (subjective) vs fatigability (objective) definitional distinction (Certainty 0.60)
- `@clf:icf-framework` — ICF b1300 (energy level) vs b4552 (fatigability) codification (Certainty 0.55)
- `@ach:fatigue-severity-benchmark` — pooled fatigue severity 77.9/100 from Park 2024 meta-analysis (Certainty 0.75)
- `@clf:severity-measurement-variability` — severity range 54.2–88.6 by instrument and case definition (Certainty 0.75)
- `@clf:actigraphy-correlates` — actigraphy correlates (movement d=0.220, blunted rhythms) from Liu 2025 (Certainty 0.70)
- `@clf:central-fatigability` — central neural origin of fatigability from Bedard 2026 (Certainty 0.60)
- `@oq:subjective-objective-discordance` — subjective-vs-objective fatigue discordance as open question (Open question)
- `@hyp:fatigue-embedded-clusters` — fatigue embedded in Brain/Gut-Immune/Autonomic clusters (Certainty 0.60)
- `@hyp:severity-subgroups` — 4 severity-based k-means clusters from Eaton-Fitch 2026 (Certainty 0.65)
- `@clf:fatigue-differentiation-biomarker` — EV-miRNA distinguishes ME/CFS from ICF/depression (Certainty 0.50)

Also excluded from this brainstorm (covered by prior or parallel plans):
- The fatigue–PEM relationship structure (already integrated, `sec-01-pem`; brainstorm: `brainstorm-fatigue-pem-relationship-2026-08-11.md`)
- The fatigue-vs-CNS-inflammation mechanism (Omdal plan, ch06/ch15)
- New treatment drugs/interventions (categories 3–6 are explicitly deprioritized for this clinical-symptom/measurement topic; see §Parked Ideas below)

---

## Phase-1 Literature Referenced

| # | Bib Key | First Author | Year | Theme | Certainty |
|---|---------|-------------|------|-------|-----------|
| 1 | @Park2024fatigueSeverity | Park JW | 2024 | Fatigue severity meta-analysis (n=7,088) | 0.75 |
| 2 | @Liu2025geneticFatigueActigraphy | Liu PZ | 2025 | Genetic overlap + actigraphy (n=63,428) | 0.70 |
| 3 | @Lee2025fatigueDominantLC | Lee JS | 2025 | Post-viral fatigue characterization (n=100) | 0.51 |
| 4 | @BileviciuteLjungar2020ICF | Bileviciute-Ljungar I | 2020 | ICF core set — fatigue vs fatigability (n=100) | 0.55 |
| 5 | @EatonFitch2026registryQoL | Eaton-Fitch N | 2026 | Registry clusters + HRQoL (n=2,873) | 0.65 |
| 6 | @Tankisi2024fatigueFatigability | Tankisi H | 2024 | Neurophysiological framework: fatigue vs fatigability | 0.60 |
| 7 | @Eguchi2026EVmiRNAfatigue | Eguchi A | 2026 | EV-miRNA biomarker (n=6 discovery) | 0.50 |
| 8 | @HabermannHorstmeier2025symptomClusters | Habermann-Horstmeier L | 2025 | Symptom clusters (n=748) | 0.60 |
| 9 | @Bedard2026centralFatigability | Bedard P | 2026 | Central fatigability by fMRI/EEG/EMG (n=15) | 0.60 |
| 10 | @Campos2022PVFassessment | Campos MC | 2022 | Post-viral fatigue assessment framework | 0.47 |

---

## Ideas

---

### I-001: Fatigue as Interoceptive Predictive-Coding Failure

**Category:** 1 (Novel Hypothesis)
**Intended placement:** subsec-01-definition (construct theory) — extends `@clf:fatigue-vs-fatigability` with a mechanistic interpretation; alternatively tree-only if judged too speculative for chapter text

**Mechanistic rationale.**
Under the predictive-coding framework, the brain continuously generates top-down predictions about the body's internal state — including energy availability — and compares them with bottom-up interoceptive signals. The subjective experience of fatigue arises from a prediction error: the brain's estimated energy budget does not match the actual metabolic state. In most conditions, this prediction error is transient and resolves when predicted and actual energy states converge. In ME/CFS, the hypothesis holds that the prediction becomes pathologically decoupled — the brain persistently predicts an energy deficit regardless of actual peripheral energy state, generating the felt experience of exhaustion. This decoupling may arise from: (a) hyper-precise prior beliefs (the system over-weights top-down predictions and under-weights bottom-up signals), (b) noisy interoceptive afferents (the bottom-up signal is degraded, forcing reliance on the prior), or (c) a pathological set-point shift (the brain's energy-budget "thermostat" is set too low).

This hypothesis reframes fatigue from an energy-deficit problem (the intuitive model: "there isn't enough fuel") to a perception/signaling problem ("the brain thinks there isn't enough fuel"). This aligns with the puzzling clinical observation that ME/CFS patients often have normal resting metabolic rate, normal muscle ATP on MRS (in most studies), and normal mitochondrial density — yet feel profoundly exhausted.

**Evidence link.**
@Bedard2026centralFatigability shows that the brain fails to upregulate motor-cortical output despite adequate peripheral capacity. This is the opposite of muscle fatigue: the brain under-signals, the muscle is ready. This is consistent with a central predictive error rather than peripheral energy failure. @Liu2025geneticFatigueActigraphy shows objectively reduced movement (d=0.220), but the effect size is modest compared to subjective fatigue severity (pooled 77.9/100 in @Park2024fatigueSeverity) — consistent with a brain-level amplification of perceived effort that produces a small behavioral effect. @Tankisi2024fatigueFatigability provides the neurophysiological framework that distinguishes central from peripheral fatigability and discusses the role of the anterior cingulate cortex and insula — key nodes in the interoceptive predictive-coding network.

**Falsifiable prediction.**
ME/CFS patients (n≥40) undergoing a standardized energy-demand task (graded cycle ergometry) will show a significantly larger prediction-error signal — computed as (subjective effort rating at 50 W) minus (actual VO₂ at 50 W, z-scored against healthy controls) — than: (a) healthy sedentary controls, (b) disease controls (MS, RA) matched on fatigue severity. On simultaneous fMRI, the prediction-error signal will localize to anterior insula and dorsal anterior cingulate cortex, and the magnitude of insula activation will correlate with fatigue severity (r ≥ 0.50).

**Certainty:** 0.20 (speculative; the predictive-coding framework has never been applied to ME/CFS fatigue; the hypothesis requires a dedicated fMRI study that has not been performed; Bedard's paradigm measures motor-cortical output, not interoceptive prediction error, so the link is inferential)

**Consequence for non-specialists:**
If true, this would fundamentally change how ME/CFS fatigue is understood — from "the body has no fuel" to "the brain's fuel gauge is broken." The treatment target would shift from energy substrates (mitochondrial supplements, ATP precursors — which have shown limited efficacy) to therapies that recalibrate the brain's interoceptive signaling, such as neurofeedback, interoceptive exposure therapy, or neuromodulation. This is a 5–10 year research trajectory, not near-term actionable.

**Scores:**
| Dimension | Score | Rationale |
|-----------|-------|-----------|
| `mech` | 3 | Novel mechanistic framework; no direct evidence yet, but aligns with central fatigability data |
| `tx` | 1 | Redirects treatment thinking long-term, but no specific therapy identified |
| `expl` | 4 | Explains the severity/behavior discordance, "wired-but-tired," non-restorative quality, and limited efficacy of energy supplements |
| `math` | 2 | Predictive-coding models exist; would require adaptation to fatigue, not novel math |
| `dx` | 1 | No diagnostic application at this stage |
| **origin** | brainstorm (I-001) | |

---

### I-002: Fatigue-Vs-Fatigability Discordance as Diagnostic Window

**Category:** 1 (Novel Hypothesis)
**Intended placement:** subsec-03-objective-measurement — extends `@oq:subjective-objective-discordance` from an open question into a testable mechanistic hypothesis

**Mechanistic rationale.**
The gap between subjective fatigue and objective fatigability is typically treated as measurement noise — two imperfect instruments measuring the same underlying construct with different error structures. This idea proposes the opposite: the gap IS the clinical signal. In most diseases (cancer, MS, RA), subjective fatigue and objective performance decline correlate strongly because fatigue reflects actual tissue-level energy depletion or systemic inflammation that impairs both perception AND performance. In ME/CFS, the central origin of fatigability (@Bedard2026centralFatigability) may systematically decouple these two measures: the subjective perception is amplified (I-001's predictive-coding hypothesis) while objective performance is only modestly reduced, producing a "discordance signature" — high subjective fatigue, low-to-moderate objective deficit.

If this discordance is larger in ME/CFS than in comparator diseases, it becomes a diagnostic feature — not of ME/CFS per se (which requires PEM, unrefreshing sleep, etc.), but of *fatigue phenotype*. A patient with high subjective fatigue but preserved objective performance on grip endurance or cognitive testing has a "central-amplification fatigue," while a patient with correlated subjective and objective deficits has a "peripheral-limitation fatigue." These may respond to different interventions.

**Evidence link.**
@Tankisi2024fatigueFatigability establishes the fatigue/fatigability distinction neurophysiologically and notes that the two can dissociate. @Liu2025geneticFatigueActigraphy provides the objective anchor (actigraphy movement). @Park2024fatigueSeverity provides the subjective anchor (pooled severity 77.9/100). No study has measured both in the same patients and computed the discordance. @oq:subjective-objective-discordance notes the gap as an unresolved question but does not propose it as a diagnostic feature.

**Falsifiable prediction.**
In a cross-disease cohort (ME/CFS n≥100, MS n≥100, RA n≥100, post-COVID fatigue n≥100, healthy n≥100), a discordance index D = (z-scored subjective fatigue on MFI general fatigue subscale) − (z-scored grip-endurance time to 50% MVC decline) will show: (a) D_ME/CFS significantly larger than D_MS, D_RA, D_postCOVID, and D_healthy (one-way ANOVA, p<0.001), (b) AUC ≥ 0.75 for discriminating ME/CFS from pooled disease controls using D alone, (c) D correlates positively with central fatigability on fMRI (Bedard paradigm) and negatively with peripheral muscle fatigue measures (lactate accumulation during exercise).

**Certainty:** 0.25 (conceptually plausible given central fatigability data; no empirical data exists on ME/CFS-specific discordance magnitude; the index may collapse if subjective-objective correlation in ME/CFS turns out to be stronger than predicted)

**Consequence for non-specialists:**
This would give clinicians a simple, office-based way to characterize a patient's fatigue type — not "how fatigued are you?" but "how much worse do you feel than you actually perform?" This could guide treatment: a large discordance might respond to central-acting therapies; a small discordance might respond to metabolic/energy support. The tools already exist (a fatigue questionnaire + a grip-strength meter) — this could be implemented in clinics within 1–2 years if the finding replicates.

**Scores:**
| Dimension | Score | Rationale |
|-----------|-------|-----------|
| `mech` | 3 | Mechanistic interpretation of an existing measurement gap |
| `tx` | 2 | Could guide treatment stratification if validated |
| `expl` | 3 | Explains why some patients feel devastated but appear functional; the "invisible illness" phenomenon |
| `math` | 3 | Formal D-index with z-score normalization; computable from existing instruments |
| `dx` | 4 | If validated, becomes a routine clinical characterization tool |
| **origin** | brainstorm (I-002) | |

---

### I-003: Fatigue Dimensional Asymmetry as Central-Network Marker

**Category:** 1 (Novel Hypothesis)
**Intended placement:** subsec-04-phenotypes — possible phenotypic marker; could extend fatigue-embedded-clusters hypothesis with a severity gradient

**Mechanistic rationale.**
@Park2024fatigueSeverity reports that physical fatigue (74.3) and cognitive fatigue (74.2) exceed mental fatigue (70.1) in pooled RCT populations. This asymmetry is reported as a finding but is not interpreted mechanistically. Physical fatigue (motor/somatic — linked to motor-cortical, basal ganglia, and cerebellar networks) and cognitive fatigue (executive/attentional — linked to dorsolateral prefrontal and anterior cingulate networks) may share a common pathophysiology (central motor/cognitive drive failure) that spares dopaminergic mesolimbic reward/motivation pathways (the substrate of mental fatigue). Mental fatigue — the subjective "I don't want to do this" — may rely on ventral striatal and orbitofrontal circuits that are less affected in ME/CFS than sensorimotor and dorsolateral prefrontal circuits.

If this network-specificity interpretation is correct, the physical-mental fatigue gap (PM-gap = physical score minus mental score) should vary across patients and should correlate with neuroimaging markers of motor-cortical vs reward-network integrity. A patient with a large PM-gap (physical >> mental) may have selective motor-cortical involvement; a patient with a small PM-gap (physical ≈ mental) may have more diffuse network involvement including reward pathways, potentially indicating a different disease trajectory or treatment response.

**Evidence link.**
@Park2024fatigueSeverity provides the pooled severity values but does not compute within-subject gaps or interpret the asymmetry. @Bedard2026centralFatigability demonstrates motor-cortical failure but did not test cognitive or reward networks. @HabermannHorstmeier2025symptomClusters embeds fatigue across Brain, Gut-Immune, and Autonomic clusters — the dimensional asymmetry may differ by cluster membership (e.g., Brain-dominant patients may show larger cognitive fatigue; Autonomic-dominant patients may show more uniform fatigue across dimensions).

**Falsifiable prediction.**
ME/CFS patients whose PM-gap is in the top tertile (physical score − mental score ≥ 1 SD above mean) will show: (a) greater motor-cortical hypoactivation on fMRI during sustained grip force (Bedard paradigm) compared to patients in the bottom tertile, (b) preserved ventral striatal BOLD response during reward-anticipation tasks, (c) higher actigraphy movement reduction (Liu paradigm) but preserved self-reported motivation, (d) different cluster membership distribution (over-represented in Autonomic or Gut-Immune clusters, under-represented in Brain cluster).

**Certainty:** 0.15 (highly speculative; Park's severity values are pooled population means, not within-subject differences — the asymmetry may not exist at the individual level; the mechanistic link to brain networks requires fMRI data that does not exist; the PM-gap may simply be an artifact of how different subscales are normed)

**Consequence for non-specialists:**
If this asymmetry is real and varies between patients, it could help explain why some patients say "my body is exhausted but my mind wants to do things" (large PM-gap) while others say "everything is dead, body and mind" (small PM-gap). This distinction could guide treatment — motor-cortical neuromodulation for the first group, dopaminergic/motivation-targeted therapies for the second. This is years away from clinical application.

**Scores:**
| Dimension | Score | Rationale |
|-----------|-------|-----------|
| `mech` | 2 | Network-specificity interpretation is plausible but untested |
| `tx` | 1 | Indirectly suggests network-specific treatment, but no concrete target |
| `expl` | 3 | Explains qualitative differences in patient fatigue descriptions |
| `math` | 2 | PM-gap computation is simple; fMRI correlation would require more sophisticated models |
| `dx` | 1 | Not diagnostic; potential phenotypic marker |
| **origin** | brainstorm (I-003) | |

---

### I-004: ME/CFS-Specific Fatigue Instrument Development and Psychometric Validation ⭐ HIGH-VALUE RESEARCH DIRECTION

**Category:** 2 (Research Direction)
**Intended placement:** subsec-02-severity (directly addresses measurement heterogeneity); also relevant to subsec-01-definition (construct validity)

**Rationale.**
This is the single most actionable research gap. All current instruments — Chalder Fatigue Scale, Multidimensional Fatigue Inventory (MFI), Fatigue Severity Scale (FSS), Checklist Individual Strength (CIS) — were developed for other diseases (Chalder: primary care undifferentiated fatigue; MFI: cancer; FSS: MS/SLE; CIS: chronic fatigue in working populations) and validated in non-ME/CFS populations. None captures ME/CFS-specific qualitative features: the non-restorative character (rest does not relieve it), the post-exertional interaction (fatigue intensifies after activity rather than recovering), the flu-like/malaise quality (distinct from sleepiness or muscle tiredness), the central/brain-based experience ("brain won't let body move" rather than "muscles are tired"), and the wired-but-tired paradox (simultaneous exhaustion and hyperarousal). The measurement heterogeneity documented by Park — severity ranging from 54.2 to 88.6 depending on instrument — means different instruments measure different fatigue constructs. An ME/CFS-specific instrument would measure the right construct.

**Design proposal.**
Phase 1 (item generation): Semi-structured qualitative interviews with n≥50 ME/CFS patients, stratified by severity (mild, moderate, severe, very-severe with home-visit protocol), disease duration (<3yr, 3–10yr, >10yr), and case definition (IOM, ICC, Fukuda). Patient-generated item pool + literature-derived items from existing instruments. Phase 2 (expert refinement): Delphi panel of n≥15 (clinicians, researchers, patient representatives) reducing item pool to n≈30–40. Phase 3 (psychometric validation): N≥500 ME/CFS (IOM) vs N≥500 disease controls (MS, RA, major depression, post-COVID fatigue) vs N≥200 healthy controls. Measures: internal consistency (Cronbach's α ≥ 0.90), test-retest reliability (ICC ≥ 0.85 at 2-week interval), convergent validity (r ≥ 0.70 with MFI, FSS, Chalder), discriminant validity (AUC ≥ 0.80 for discriminating ME/CFS from disease controls after severity-matching), sensitivity to change (responsiveness to PEM provocation and treatment in a trial context), factorial structure (confirmatory factor analysis — does the instrument capture the multidimensionality implied by Park's physical/cognitive/mental subscales?).

**Evidence link.**
@Park2024fatigueSeverity demonstrates that existing instruments produce divergent severity estimates — the measurement heterogeneity is the direct motivation for developing a unified instrument. @Tankisi2024fatigueFatigability shows that fatigue and fatigability are distinct — an ME/CFS-specific instrument should capture fatigue (subjective) without conflating it with fatigability (performance). @HabermannHorstmeier2025symptomClusters embeds fatigue across clusters — the instrument should be cluster-agnostic, not forcing fatigue into a single dimension. @Campos2022PVFassessment provides a multi-domain assessment framework that could inform item-domain structure.

**Certainty of contribution:** 0.80 (strong mixed-methods design; the need is unambiguous given Park's measurement heterogeneity data; the primary risk is failure of discriminant validity — if I-012's null hypothesis is correct and ME/CFS fatigue is indistinguishable from other severe-disease fatigue when severity-matched, the instrument would fail to discriminate)

**Consequence for non-specialists:**
This is the "build a thermometer before you study fever" idea. ME/CFS researchers are currently using borrowed fatigue questionnaires that were never designed for this disease. A purpose-built ME/CFS fatigue instrument would transform every clinical trial (better endpoint → more reliable results), every doctor's office (consistent measurement → better tracking), and every research study (comparable numbers across labs). This is a 3–5 year development project that would pay dividends for decades.

**Scores:**
| Dimension | Score | Rationale |
|-----------|-------|-----------|
| `mech` | 1 | No mechanistic discovery; pure measurement development |
| `tx` | 4 | Indirect but powerful: better measurement → better trials → better treatments |
| `expl` | 3 | Would clarify which fatigue dimensions are ME/CFS-specific vs generic |
| `math` | 4 | Full psychometric modeling: CFA, IRT, measurement invariance testing |
| `dx` | 5 | Direct diagnostic/assessment improvement; disease-specific validated tool |
| **origin** | brainstorm (I-004) | |

---

### I-005: Within-Day Fatigue Variability EMA Study with Actigraphy Linkage ⭐ HIGH-VALUE RESEARCH DIRECTION

**Category:** 2 (Research Direction)
**Intended placement:** subsec-03-objective-measurement (temporal dynamics of fatigue) and subsec-04-phenotypes (temporal phenotypes)

**Rationale.**
No large-scale study has captured within-day and day-to-day fatigue variability in ME/CFS using Ecological Momentary Assessment (EMA). All existing severity data — Park's 77.9/100, the ICF core-set prevalence of 100%, the four Eaton-Fitch severity clusters — are derived from single-timepoint questionnaires. These capture a patient's summary judgment of their fatigue over some recall period (typically "the past week" or "on average"), which is subject to peak-end bias, recency effects, and mood-congruent recall. Real-time EMA captures: (a) diurnal pattern — do patients wake exhausted, worsen through the day, recover in the evening, or show no consistent pattern? (b) within-day variance — are some patients "stable severe" (fatigue 8/10 all day) while others are "labile" (fatigue 3–9/10 within a single day)? (c) post-prandial response — does eating trigger a fatigue surge (splanchnic steal, post-prandial hypotension)? (d) interaction with PEM — does fatigue spike 12–24h after a PEM trigger while remaining stable during non-PEM days? (e) sleep-to-fatigue coupling — how tightly does last night's sleep quality predict next-day fatigue?

Actigraphy linkage (parallel wrist accelerometry) adds: does subjective fatigue variability track objective movement variability, or do they dissociate temporally as well as cross-sectionally? A patient who reports stable severe fatigue but shows highly variable movement may have a perception-behavior decoupling that differs from a patient whose fatigue and activity track each other closely.

**Design proposal.**
N=400 ME/CFS (IOM criteria), N=200 disease controls (MS, RA, post-COVID fatigue), N=100 healthy. 28-day prospective period. EMA prompts 4×/day (morning 1h post-wake, midday, late afternoon, evening) + event-contingent (PEM crash onset + resolution + meal-time). Domains: fatigue intensity (VAS 0–10), fatigue quality (physical/cognitive/mental sub-ratings), activity level since last prompt, food intake (type, timing), PEM events (trigger type, severity). Parallel 28-day wrist actigraphy (movement count, sleep midpoint, circadian amplitude, daytime activity fragmentation). Primary endpoints: (a) within-subject fatigue variance (coefficient of variation of 4×/day ratings), (b) diurnal slope (morning-to-evening fatigue change), (c) fatigue-actigraphy within-day coupling (cross-correlation at lag 0–24h). Secondary: cluster analysis to identify temporal phenotypes (morning-worse, evening-worse, constant-high, constant-moderate, highly-labile).

**Evidence link.**
@Liu2025geneticFatigueActigraphy provides actigraphy data but only measures behavior — subjective experience was not captured simultaneously. @Park2024fatigueSeverity provides single-timepoint severity — the within-day dynamics are entirely unknown. @Lee2025fatigueDominantLC shows that long-COVID fatigue has distinct clinical characteristics but does not assess temporal variability. The EMA methodology is well-established in pain research, depression, and MS fatigue — it has simply never been applied at scale to ME/CFS fatigue specifically.

**Certainty of contribution:** 0.70 (design straightforward, well-precedented in other diseases; primary risk is feasibility — can severe patients tolerate 4×/day prompts for 28 days? Adaptation: reduce to 2×/day for severe stratum, or shorten to 14 days)

**Consequence for non-specialists:**
This study would produce the first "24-hour map" of ME/CFS fatigue — answering basic questions patients ask daily: "Is my fatigue pattern normal for this disease?" "Do other patients also crash after lunch?" "Should I rest in the morning or push through?" The results could transform pacing recommendations from generic "rest before you crash" to personalized "your fatigue dips at 2pm and rises at 7pm — schedule demanding activities in the evening window." This could be actionable within 2–3 years.

**Scores:**
| Dimension | Score | Rationale |
|-----------|-------|-----------|
| `mech` | 2 | Descriptive, not mechanistic; but temporal data enables mechanistic hypothesis generation |
| `tx` | 3 | Directly informs personalized pacing and activity scheduling |
| `expl` | 4 | Explains within-day fluctuation, post-prandial crashes, sleep-to-fatigue coupling |
| `math` | 4 | Time-series analysis: cross-correlation, diurnal modeling, latent-class growth for temporal phenotypes |
| `dx` | 2 | Temporal phenotyping supports individualized management, not diagnosis |
| **origin** | brainstorm (I-005) | |

---

### I-006: Longitudinal Fatigue-Only Trajectory Study (3–5 Year Natural History) ⭐ HIGH-VALUE RESEARCH DIRECTION

**Category:** 2 (Research Direction)
**Intended placement:** subsec-04-phenotypes (natural history and prognostic modeling)

**Rationale.**
No longitudinal study has tracked fatigue alone — separate from PEM, function, or multi-system outcomes — over multiple years in ME/CFS. Existing longitudinal studies (e.g., Nacul UK Biobank follow-ups, Norwegian RCT follow-ups) measure multi-system outcomes or focus on functional recovery. The fatigue-specific natural history is unknown: does fatigue severity at diagnosis predict long-term disability? Do fatigue trajectories diverge into stable, worsening, improving, and relapsing-remitting groups? Does fatigue trajectory predict mortality, treatment response, or biomarker evolution? Without trajectory data, clinicians cannot give patients evidence-based prognostic information ("what will my fatigue look like in 5 years?"), and researchers cannot distinguish treatment effects from natural history fluctuations.

**Design proposal.**
N≥600 ME/CFS (IOM criteria), deliberately stratified: 150 mild, 200 moderate, 150 severe, 100 very-severe (home-visit protocols for non-ambulatory patients). Annual assessments for 5 years, with EMA boosters (2-week intensive sampling) at years 0, 1, 3, and 5 to capture within-year as well as between-year variability. Measures at each timepoint: fatigue (multiple instruments — Chalder, MFI, FSS, CIS — to ensure backwards compatibility with existing literature), fatigability (grip endurance, actigraphy), PEM frequency and severity (DSQ-PEM), sleep quality (PSQI, actigraphy sleep efficiency), function/disability (SF-36 physical function, WHODAS), biomarker panel (EV-miRNA per @Eguchi2026EVmiRNAfatigue, cytokine panel, routine bloods). Primary endpoint: latent class growth analysis identifying trajectory groups and their prevalence. Secondary: baseline predictors of trajectory membership (clinical, biomarker, demographic). Tertiary: do trajectory groups differ in treatment response, disability accumulation, or biomarker change trajectories?

**Evidence link.**
@Park2024fatigueSeverity provides cross-sectional severity benchmarks but explicitly notes that "longitudinal changes in fatigue were not addressed" (a limitation of the meta-analysis). @EatonFitch2026registryQoL provides cross-sectional clustering but no trajectory. @HabermannHorstmeier2025symptomClusters provides cross-sectional factor structure — the stability of cluster membership over time is unknown. @Liu2025geneticFatigueActigraphy is cross-sectional. No paper in the integrated set provides longitudinal fatigue data.

**Certainty of contribution:** 0.75 (design is robust, primary value is descriptive natural history — even if no predictor emerges significant, the trajectory prevalence data would be clinically invaluable; risk: 5-year attrition in a severely ill population is substantial; mitigate with home-visit protocols, compensation for participation burden, and imputation methods for missing data)

**Consequence for non-specialists:**
This study would finally answer the question every newly diagnosed patient asks: "What happens to my fatigue over time?" Currently, the answer is "we don't know" — some patients improve, some worsen, some stay the same, and nobody can predict which. A 5-year trajectory study would give patients and doctors evidence-based prognostic information and would let researchers test whether a new drug actually changes the trajectory rather than just producing a temporary improvement. This is a 5–7 year investment that would anchor all future treatment trials.

**Scores:**
| Dimension | Score | Rationale |
|-----------|-------|-----------|
| `mech` | 2 | Descriptive, not mechanistic; but enables mechanistic hypothesis generation about trajectory predictors |
| `tx` | 4 | Directly informs prognosis and treatment expectations; provides natural-history control for trials |
| `expl` | 4 | Explains individual variation in disease course — why some recover and others decline |
| `math` | 5 | Full latent-class growth modeling, survival analysis, time-varying covariate modeling |
| `dx` | 2 | Prognostic, not diagnostic; trajectory biomarkers would be secondary output |
| **origin** | brainstorm (I-006) | |

---

### I-007: Cross-Disease Fatigue Phenotyping — What Distinguishes ME/CFS Fatigue?

**Category:** 2 (Research Direction)
**Intended placement:** subsec-04-phenotypes (differential diagnosis and specificity)

**Rationale.**
Fatigue is the most common symptom across all chronic diseases. The question is not whether ME/CFS patients are fatigued — they are — but whether their fatigue is *qualitatively* distinct from fatigue in other diseases when severity is matched. If ME/CFS fatigue has unique qualitative features (non-restorative character, post-exertional intensification, flu-like/malaise quality, central/brain-based locus, wired-but-tired paradox), these features should survive severity-matching against comparator diseases. If they do not (I-012 null), then ME/CFS fatigue severity is the distinguishing feature, not fatigue quality — and the chapter should emphasize severity measurement over qualitative description.

**Design proposal.**
Matched cohort study: ME/CFS (n≥200, IOM criteria) vs MS (n≥200, McDonald criteria) vs RA (n≥200, ACR/EULAR criteria) vs post-COVID fatigue (n≥200, WHO definition) vs major depression (n≥200, DSM-5, with fatigue as a presenting symptom) vs healthy (n≥200). Groups matched on: age (±5yr), sex, and fatigue severity (±5 points on MFI general fatigue subscale). Patients complete identical battery: MFI (cognitive, physical, psychosocial subscales), FSS, Chalder, CIS + ME/CFS-specific qualifier items (non-restorative, post-exertional interaction, flu-like quality, central locus, wired-but-tired). Objective tests: grip endurance (time to 50% MVC decline), cognitive fatigability (PASAT or n-back with pre-post effort ratings), 7-day actigraphy. Primary endpoint: which fatigue dimension(s) discriminate ME/CFS from each comparator disease after controlling for total fatigue severity? Analysis: multinomial logistic regression with ME/CFS as reference category; feature importance from random forest classification. Secondary: do the ME/CFS-specific qualifier items load on a distinct factor in a multi-group CFA?

**Evidence link.**
@Park2024fatigueSeverity is within-ME/CFS only — no between-disease comparison. @Eguchi2026EVmiRNAfatigue distinguishes ME/CFS from ICF and depression at the molecular level (EV-miRNA) but does not compare subjective fatigue phenomenology. @Lee2025fatigueDominantLC compares long-COVID fatigue to ME/CFS indirectly but not in a matched design. @Tankisi2024fatigueFatigability reviews fatigue/fatigability across diseases but does not perform a direct comparative study.

**Certainty of contribution:** 0.65 (strong matched design; the primary value is definitively testing whether ME/CFS fatigue has disease-specific features; a negative result — "ME/CFS fatigue is indistinguishable from comparators" — would itself be a major finding that shifts construct emphasis from quality to severity)

**Consequence for non-specialists:**
This study would answer whether ME/CFS fatigue is "just very severe fatigue" or a qualitatively different kind of fatigue. If it is qualitatively different, the findings would give clinicians specific questions to ask ("does rest relieve your fatigue?") that distinguish ME/CFS from other fatiguing conditions in the exam room. If it is not qualitatively different, the chapter should focus on severity and measurement rather than claiming a unique fatigue phenotype. Either outcome would be scientifically valuable and would clarify the core-symptom construct.

**Scores:**
| Dimension | Score | Rationale |
|-----------|-------|-----------|
| `mech` | 1 | Phenomenological/comparative, not mechanistic |
| `tx` | 2 | Informs whether fatigue treatment should be disease-specific or borrowed from other fields |
| `expl` | 4 | Directly explains whether ME/CFS fatigue is qualitatively unique or just quantitatively severe |
| `math` | 4 | Multinomial logistic regression, random forest feature importance, multi-group CFA |
| `dx` | 4 | Directly informs differential diagnosis and fatigue assessment design |
| **origin** | brainstorm (I-007) | |

---

### I-008: Fatigue Severity as Latent Variable — Multi-Indicator Measurement Model

**Category:** 7 (Mathematical Model Extension)
**Intended placement:** subsec-02-severity — provides formal measurement model to complement the severity benchmarks; alternatively tree-only

**Rationale.**
@Park2024fatigueSeverity demonstrates that different instruments produce different severity scores (54.2–88.6). This is interpreted as "measurement heterogeneity" and treated as a limitation. A structural equation modeling (SEM) approach would formalize this as a measurement problem: fatigue severity is a latent (unobserved) variable, and each instrument is a fallible indicator. SEM would: (a) estimate the latent fatigue severity construct separately from measurement error, (b) test whether different instruments measure the same latent construct (configural invariance) or different facets (lack of invariance), (c) test measurement invariance across severity levels — are instruments equally valid for mild, moderate, and severe patients? (d) test whether the latent fatigue construct correlates with biological markers (EV-miRNA from @Eguchi2026EVmiRNAfatigue, actigraphy from @Liu2025geneticFatigueActigraphy) more strongly than any single instrument score — if so, the latent construct has superior construct validity.

A secondary mathematical extension: Item Response Theory (IRT) modeling. IRT would identify which items on existing instruments provide the most information at different fatigue severity levels. An item that discriminates well at moderate severity (e.g., "I tire easily") may provide no information at extreme severity where all patients endorse it (ceiling effect). IRT would identify which items work where, enabling adaptive testing — administer only the items that provide information at that patient's severity level, reducing assessment burden.

**Evidence link.**
@Park2024fatigueSeverity provides the multiple-instrument data that motivates the SEM approach but does not perform SEM. @HabermannHorstmeier2025symptomClusters uses SEM for symptom cluster structure but treats fatigue as an observed variable, not a latent one. The datasets to perform this analysis may already exist — if any study administered ≥2 fatigue instruments to the same patients, the analysis can be done retrospectively without new data collection.

**Certainty:** 0.30 (methodologically sound; the primary uncertainty is whether existing datasets include multiple fatigue instruments in the same patients — if not, prospective data collection is required, increasing cost and timeline; the approach is well-validated in psychometrics and health-outcomes research, reducing methodological risk)

**Consequence for non-specialists:**
This would give researchers a mathematical method to "correct" fatigue scores from different instruments so they can be compared — like converting Fahrenheit to Celsius. It would finally allow meta-analysts to pool fatigue data across studies that used different questionnaires, dramatically increasing the power of evidence synthesis. If the necessary data already exist, this analysis could be completed within 6–12 months.

**Scores:**
| Dimension | Score | Rationale |
|-----------|-------|-----------|
| `mech` | 1 | Measurement methodology, not mechanism |
| `tx` | 1 | Improves measurement for trials but no direct treatment path |
| `expl` | 2 | Explains instrument divergence without invoking construct-level disagreement |
| `math` | 5 | Full SEM, CFA, measurement invariance testing, IRT — standard but sophisticated psychometrics |
| `dx` | 3 | Would improve instrument selection and score interpretation |
| **origin** | brainstorm (I-008) | |

---

### I-009: MS-Fatigue Instrument Validation Bridge

**Category:** 8 (Cross-Disease Bridge)
**Intended placement:** subsec-01-definition (measurement cross-validation) or subsec-03-objective-measurement (neurophysiological validation)

**Rationale.**
Multiple sclerosis (MS) shares several fatigue features with ME/CFS that are absent in cancer fatigue or RA fatigue: central fatigability (motor-evoked potential decline on TMS — analogous to Bedard's central motor drive failure), cognitive fatigue (slowed processing speed, attentional fatigue), heat sensitivity (Uhthoff's phenomenon in MS; heat intolerance in ME/CFS), and a non-restorative quality (MS fatigue is often described as "paralyzing" and "unrelated to activity" — similar to ME/CFS descriptions). The MS field has developed and validated MS-specific fatigue instruments — the Modified Fatigue Impact Scale (MFIS) and the Fatigue Impact Scale (FIS) — against neuroimaging (fMRI, MRS), TMS-based fatigability, and treatment response (amantadine, modafinil, fampridine). ME/CFS has no equivalent instrument, and the MS instruments have never been validated in ME/CFS.

The bridge: administer MFIS or FIS to an ME/CFS cohort alongside existing borrowed instruments (Chalder, FSS) and objective measures (actigraphy, grip endurance, cognitive n-back). Test psychometric properties (internal consistency, test-retest reliability, convergent validity with existing instruments, discriminant validity against healthy and disease controls). If MFIS/FIS performs well psychometrically, it could serve as a provisional standardized instrument while the purpose-built ME/CFS instrument (I-004) is in development — a pragmatic "good enough now" solution while awaiting the "perfect" solution.

**Evidence link.**
@Tankisi2024fatigueFatigability notes that MS fatigue instruments have neurophysiological validation that ME/CFS instruments lack and specifically discusses TMS-based central fatigability assessment in MS as a model for ME/CFS. @Bedard2026centralFatigability uses a central fatigability paradigm (fMRI during sustained grip) that is conceptually analogous to TMS-based MS fatigability paradigms — suggesting the underlying neurophysiology may be comparable. @Park2024fatigueSeverity provides the ME/CFS severity data against which MFIS/FIS scores could be calibrated.

**Certainty:** 0.40 (the bridge is conceptually sound given shared central fatigability features; MFIS/FIS have face validity for ME/CFS fatigue but have never been administered to this population; validation may succeed for some subscales but fail for others — e.g., MFIS psychosocial subscale may capture depression variance that is less relevant to ME/CFS)

**Consequence for non-specialists:**
This is a "share what works" idea. MS researchers spent decades developing and validating fatigue questionnaires against brain scans and treatment trials. Rather than starting from scratch, ME/CFS researchers could test whether MS fatigue questionnaires work in ME/CFS patients. If they do, the field gains a validated instrument essentially overnight — no 5-year development project required. This could be tested in a 12-month validation study.

**Scores:**
| Dimension | Score | Rationale |
|-----------|-------|-----------|
| `mech` | 1 | Measurement cross-validation, not mechanistic |
| `tx` | 2 | Enables better trial endpoints using validated instruments |
| `expl` | 2 | Does not explain ME/CFS directly; addresses measurement infrastructure |
| `math` | 2 | Standard psychometric validation; no novel math |
| `dx` | 4 | Could deliver a validated fatigue instrument rapidly |
| **origin** | brainstorm (I-009) | |

---

### I-010: Fatigue-Vs-Fatigability Discordance Ratio as Clinical Severity Index

**Category:** 9 (Diagnostic/Biomarker Concept)
**Intended placement:** subsec-03-objective-measurement — extends `@oq:subjective-objective-discordance` into a proposed computable index; would be an `#open-question` or `#proposal` environment

**Rationale.**
I-002 proposes the discordance as a diagnostic window at the group level. This idea operationalizes it at the individual-patient level as a clinical tool. The Discordance Index (D-index) is defined as:

D-index = Z(fatigue_subjective) − Z(fatigability_objective)

where Z(fatigue_subjective) is the patient's standardized score on a validated fatigue scale (e.g., MFI general fatigue subscale), normalized against an age- and sex-matched healthy reference population, and Z(fatigability_objective) is the patient's standardized score on an objective fatigability test (e.g., grip-endurance time to 50% MVC decline, or 7-day actigraphy mean daily movement count, or cognitive n-back accuracy decline), similarly normalized.

- D-index > 0: patient feels worse than they perform (central-amplification pattern)
- D-index ≈ 0: patient feels as bad as they perform (correlated pattern)
- D-index < 0: patient performs worse than they feel (peripheral-limitation pattern — unusual in ME/CFS but possible in comorbid conditions)

The D-index provides information that a severity score alone cannot: two patients with identical fatigue severity of 80/100 could have D-index values of +2.0 (central amplification — high subjective, near-normal objective) vs +0.2 (correlated — high subjective, poor objective). These patients may have different underlying biology, prognosis, and treatment response.

**Evidence link.**
@Liu2025geneticFatigueActigraphy provides the objective anchor (actigraphy movement count, amplitude, temperature rhythm). @Park2024fatigueSeverity provides the subjective severity reference population. @Bedard2026centralFatigability provides an alternative objective anchor (neurophysiological fatigability on fMRI/EMG). The index has never been computed in an ME/CFS population because no study has co-administered subjective and objective measures with the explicit intent of computing their discordance.

**Falsifiable prediction.**
D-index computed from (MFI general fatigue z-score − actigraphy mean daily movement z-score) in N≥200 ME/CFS patients will: (a) show a distribution shifted significantly positive (mean D-index > 0, one-sample t-test p<0.001), (b) demonstrate greater variance than in disease controls (Levene's test p<0.05 — indicating that discordance magnitude is a source of heterogeneity in ME/CFS, not just a group mean shift), (c) D-index in the top quartile (>1.5) will predict differential treatment response — patients with high D-index will respond better to central-acting interventions (neurofeedback, CBT, wakefulness-promoting agents) than to metabolic/energy interventions (CoQ10, NADH, creatine).

**Certainty:** 0.15 (concept only; no validation; the index requires reference-population norms that don't exist; the test-retest reliability of D-index within-subject is unknown; the index may collapse if subjective and objective measures correlate more strongly in ME/CFS than the central-fatigability hypothesis predicts)

**Consequence for non-specialists:**
This would give every patient a single number that captures the disconnect between how exhausted they feel and how much they actually move — quantifying the "invisible illness" in a way that clinicians, insurers, and family members can understand. A patient with a D-index of +2.0 has objective evidence that their subjective fatigue is disproportionate to their activity level — evidence that could support disability claims and counter the "it's all in your head" dismissal. This is 3–5 years from clinical availability.

**Scores:**
| Dimension | Score | Rationale |
|-----------|-------|-----------|
| `mech` | 2 | Mechanistic interpretation of discordance (central amplification) |
| `tx` | 2 | Could guide treatment stratification if validated |
| `expl` | 3 | Quantifies the subjective-objective gap — the "invisible illness" metric |
| `math` | 3 | Formal z-score index with normalization; requires reference population |
| `dx` | 3 | Not diagnostic of ME/CFS but characterizes fatigue phenotype within ME/CFS |
| **origin** | brainstorm (I-010) | |

---

### I-011: Standardized Clinical Fatigue Assessment Battery

**Category:** 9 (Diagnostic/Biomarker Concept — Assessment Protocol)
**Intended placement:** subsec-03-objective-measurement — as a `#proposal` or `#open-question`

**Rationale.**
ME/CFS clinical care lacks a standardized, reproducible fatigue assessment protocol. Patients are assessed with whatever instrument the clinician happens to prefer, producing non-comparable data across clinics and over time. A standardized battery combining subjective, behavioral, and cognitive measures would produce a multi-dimensional "fatigue profile" — three numbers that together characterize the patient's fatigue more completely than any single instrument.

Proposed battery: (a) one validated subjective scale — provisional choice: MFI (multidimensional — physical, cognitive, psychosocial, general fatigue, reduced activity subscales) or a purpose-built ME/CFS instrument if I-004 succeeds; (b) 7-day wrist actigraphy (mean daily movement count, circadian amplitude, sleep midpoint, daytime fragmentation index); (c) a standardized 2-minute cognitive fatigability test — Paced Auditory Serial Addition Test (PASAT) or adaptive n-back, with pre-test and post-test subjective fatigue ratings to compute cognitive-fatigue increment.

Output: three values — S (subjective severity, 0–100), A (activity count, z-scored against age/sex norms), C (cognitive fatigue increment, Δ between pre- and post-test ratings). Together these form a fatigue profile vector (S, A, C) that can be tracked longitudinally and compared across patients.

**Evidence link.**
Each component has individual validation: S from @Park2024fatigueSeverity; A from @Liu2025geneticFatigueActigraphy; C conceptually from @Bedard2026centralFatigability's cognitive-fatigue paradigm and @Campos2022PVFassessment's multi-domain framework. The three components have never been combined into a single standardized protocol.

**Certainty:** 0.25 (the components are individually validated; the combination protocol utility is untested; feasibility in routine clinical settings with limited equipment is uncertain — actigraphy requires devices and analysis infrastructure; cognitive testing requires staff training and standardized administration)

**Consequence for non-specialists:**
This would give every ME/CFS clinic a standard fatigue workup — like the standard blood panel every patient gets at their annual physical. Instead of a single questionnaire score that varies by instrument, patients would get a fatigue profile: "Your subjective fatigue is 82/100, your daily movement is at the 15th percentile, and your cognitive fatigue increment is +3.5 points." This profile could be tracked year-over-year to measure progression and treatment response. Implementation is feasible within 2–3 years if a consensus committee adopts the protocol.

**Scores:**
| Dimension | Score | Rationale |
|-----------|-------|-----------|
| `mech` | 1 | Protocol development, not mechanistic |
| `tx` | 3 | Standardized endpoint for clinical trials and routine care |
| `expl` | 2 | Does not explain fatigue; improves its measurement |
| `math` | 2 | Profile vector computation; longitudinal tracking |
| `dx` | 3 | Standardized assessment, not diagnosis |
| **origin** | brainstorm (I-011) | |

---

### I-012: The "Fatigue Is Wrong-Framing" Counter-Hypothesis

**Category:** 10 (Reasons This Mechanism/Construct May NOT Be Relevant to ME/CFS)
**Intended placement:** subsec-01-definition — as a conceptual caveat or `#speculation` on construct validity

**Rationale.**
The most radical challenge to the fatigue-as-core-symptom construct is not that fatigue is less severe than measured (it is not — Park's 77.9/100 is well-established), nor that it is less prevalent (it is near-universal), but that the word "fatigue" names the wrong phenomenon. What ME/CFS patients may experience is not reduced energy but *altered effort perception* — every action feels effortful, costly, and aversive out of proportion to its actual metabolic demand. This is neurobiologically distinct from energy depletion: fatigue implies a fuel shortage (peripheral ATP depletion, central glucose deficit, mitochondrial failure). Effort perception implies normal fuel availability but abnormal sensory amplification of the cost signal, localizable to interoceptive processing circuits (insula, anterior cingulate cortex, thalamocortical loops).

If this reframing is correct: (a) the entire terminology of "energy" and "fatigue" misdirects research toward metabolism when the relevant pathway is interoceptive sensory processing, (b) treatments that target energy metabolism (mitochondrial supplements, ATP precursors, creatine) address the wrong level of the problem, (c) treatments that target interoceptive processing (neurofeedback, interoceptive exposure, neuromodulation of insula/ACC) are the correct target, and (d) the chapter should be renamed or reframed around "effort perception disturbance" rather than "fatigue."

The counter-evidence: (a) @Liu2025geneticFatigueActigraphy finds a genetic signal for population-level fatigue and actigraphy — an effort-perception disturbance is harder to reconcile with a genetic substrate that affects objective behavior (actigraphy), not just subjective perception; (b) @Park2024fatigueSeverity's pooled severity of 77.9/100 is extreme — if this were purely perceptual amplification, one would expect more variability (some patients might amplify less), but SE is tight (95% CI 74.7–81.0); (c) patients consistently report that rest helps — if fatigue were purely a perceptual distortion, rest should not modulate it (but it does, partially).

This is not an argument against studying fatigue — it is an argument against committing to the fatigue *construct* without testing whether effort-perception is the more precise name.

**Evidence link.**
@Bedard2026centralFatigability shows motor-cortical output failure despite adequate peripheral capacity — consistent with effort-perception disturbance (the brain won't send the signal) rather than energy depletion (the muscle can't execute the signal). @Tankisi2024fatigueFatigability reviews central fatigability neurophysiology and notes the role of insula and ACC in fatigue perception — the same regions implicated in interoceptive processing.

**Falsifiable prediction.**
In a double-dissociation design, ME/CFS patients should show: (a) normal muscle ATP recovery kinetics on ³¹P-MRS after standardized exercise (peripheral energy metabolism intact), (b) elevated BOLD signal in anterior insula and dorsal ACC during an effort-discounting task (effort perception amplified), and (c) a significant correlation between insula/ACC BOLD and subjective fatigue severity (r ≥ 0.50) that is not present in MS or RA patients matched on fatigue severity.

**Certainty:** 0.10 (fascinating conceptual reframing; the terminology "fatigue" is too entrenched to displace without overwhelming evidence; the operational consequences of the reframing — what changes in measurement, treatment, or patient communication if we call it "effort perception disorder" instead of "fatigue" — are unclear)

**Consequence for non-specialists:**
This is a "what if we've been naming the problem wrong for 100 years?" idea. If the core experience of ME/CFS is not "I have no energy" but "everything feels impossibly hard to do," the right treatment is not an energy supplement but something that recalibrates how the brain perceives effort. This matters because patients spend billions on energy supplements with limited evidence — if the effort-perception hypothesis is correct, that money and research effort are going to the wrong target. This is pure basic science with no near-term clinical application; decades from validation if correct.

**Scores:**
| Dimension | Score | Rationale |
|-----------|-------|-----------|
| `mech` | 4 | Reframes the entire construct; if correct, redirects the field's mechanistic focus |
| `tx` | 1 | Theoretical redirection; no concrete treatment identified |
| `expl` | 4 | Explains the "wired-but-tired" paradox, limited supplement efficacy, central fatigability data, and the invisible-illness phenomenon |
| `math` | 1 | No formal model; conceptual |
| `dx` | 0 | No diagnostic application |
| **origin** | brainstorm (I-012) | |

---

### I-013: Null Hypothesis — ME/CFS Fatigue Is Indistinguishable from Severe-Chronic-Disease Fatigue

**Category:** 11 (Null Hypothesis Assessment)
**Intended placement:** subsec-01-definition — as a `#speculation` or caveat on construct specificity; strongly relevant to I-004 (instrument development) and I-007 (cross-disease phenotyping)

**Rationale.**
The null hypothesis: when matched on fatigue severity, sleep quality, and activity level, ME/CFS fatigue is phenomenologically indistinguishable from fatigue in other severe chronic diseases (MS, RA, cancer, post-stroke). The qualitative descriptors that patients and clinicians use to characterize ME/CFS fatigue — "bone-crushing," "flu-like malaise," "wired-but-tired," "brain fog," "non-restorative," "central rather than muscular" — appear in the fatigue literature of every disease that reaches comparable severity. Cancer-related fatigue is described as "paralyzing" and "unrelieved by rest." Post-stroke fatigue is described as "brain-based" and "not related to physical effort." MS fatigue is described as "overwhelming lassitude" and "heat-sensitive." The apparent uniqueness of ME/CFS fatigue may be an artifact of comparing ME/CFS (severe fatigue) to diseases studied at milder fatigue levels. When severity is equated, the qualitative differences may shrink or disappear.

If the null is true: (a) developing an ME/CFS-specific fatigue instrument (I-004) would fail discriminant validity at Phase 3 — it would not distinguish ME/CFS from MS, RA, or cancer fatigue when severity is matched; (b) fatigue as a standalone core symptom is clinically important (it is the most severe symptom and drives disability) but mechanistically non-specific — it does not reveal anything about ME/CFS pathophysiology, only about ME/CFS severity; (c) the chapter should emphasize measurement and severity (subsec-02) over construct uniqueness (subsec-01); (d) the distinguishing feature of ME/CFS is not the *quality* of its fatigue but its *combination with PEM, unrefreshing sleep, and cognitive/autonomic symptoms* — fatigue is necessary but not sufficient for ME/CFS specificity.

What would NOT be affected by the null: the clinical importance of measuring and treating fatigue in ME/CFS. Even if fatigue is generic, it remains the most severe core symptom and the primary driver of disability. The null would change the *narrative framing* (from "ME/CFS fatigue is unique" to "ME/CFS fatigue is severe and disabling"), not the clinical imperative.

**Evidence link.**
@Park2024fatigueSeverity is within-ME/CFS — no between-disease comparison. @Eguchi2026EVmiRNAfatigue distinguishes ME/CFS from ICF and depression at the molecular level, suggesting biological differentiation is possible — but does not test phenomenological differentiation of subjective fatigue. @HabermannHorstmeier2025symptomClusters embeds fatigue across clusters — this is consistent with both the null (fatigue is a cross-cutting generic symptom) and the alternative (fatigue is driven by cluster-specific mechanisms). @IOM2015redefining defines ME/CFS by the combination of fatigue + PEM + unrefreshing sleep + cognitive/orthostatic impairment — not by the qualitative uniqueness of any single symptom.

**Falsifiability.**
The null is rejected if cross-disease phenotyping (I-007) shows that ≥1 fatigue dimension (qualitative descriptor, temporal pattern, response to rest, post-exertional interaction) distinguishes ME/CFS from all comparator diseases after severity-matching with at least medium effect size (d ≥ 0.50). The null is accepted if no dimension meets this threshold.

**Certainty:** 0.45 (this is a serious null — the qualitative fatigue literature across severe chronic diseases shows substantial overlap; the ME/CFS-specificity of any fatigue descriptor has never been empirically tested in severity-matched cohorts; the IOM criteria's structure — requiring fatigue + PEM + sleep + cognitive/orthostatic — implicitly acknowledges that fatigue alone is not pathognomonic)

**Consequence for non-specialists:**
If the null is true, it means ME/CFS fatigue is not a special kind of fatigue — it is just very severe fatigue that happens to occur alongside PEM, unrefreshing sleep, and cognitive problems. This matters for what doctors say to patients: instead of "you have a unique kind of fatigue," the honest statement would be "your fatigue is as severe as it gets, and your body's response to activity (PEM) is what makes your condition distinct." It also matters for research funding: money should go to studying PEM and unrefreshing sleep (the disease-specific features), not to finding the "unique quality" of ME/CFS fatigue.

**Scores:**
| Dimension | Score | Rationale |
|-----------|-------|-----------|
| `mech` | 1 | Null hypothesis about phenomenology, not mechanism |
| `tx` | 1 | Does not affect treatment directly; redirects research emphasis |
| `expl` | 4 | Parsimonious explanation: severity, not quality, distinguishes ME/CFS fatigue |
| `math` | 0 | No model relevance |
| `dx` | 3 | Informs whether fatigue assessment should aim for disease-specificity or severity-sensitivity |
| **origin** | brainstorm (I-013) | |

---

### I-014: Evidence Quality Concerns — Multi-Source Bias in the Fatigue Evidence Base

**Category:** 12 (Evidence Quality Concerns)
**Intended placement:** Distributed — (a) in subsec-02-severity as a limitation on Park's benchmarks; (b) in subsec-03-objective-measurement as a limitation on Liu's actigraphy; (c) in subsec-01-definition as a cross-cultural caveat; (d) in subsec-01-definition as a diagnostic-circularity caveat; (e) in subsec-04-phenotypes as a limitation on Habermann-Horstmeier and Eaton-Fitch

**Rationale.**
The following biases and quality concerns are not captured by the certainty scores assigned to individual papers and should be addressed as cross-cutting caveats in the chapter text.

**(a) RCT-only severity benchmarks exclude severe patients.**
@Park2024fatigueSeverity's pooled severity of 77.9/100 is derived exclusively from randomized controlled trial populations — patients well enough to enroll in trials, travel to study sites, and complete study protocols. Housebound and bedbound patients (severe and very-severe, estimated at 25% of the ME/CFS population) are systematically excluded. If severe patients have higher fatigue (plausible — they are, by definition, more disabled) or qualitatively different fatigue (plausible — at extreme severity, fatigue may become "the water, not the fish," a pervasive background that patients stop rating as a discrete symptom), Park's benchmark underestimates true population fatigue severity. This is a generalizability limitation, not a methodological flaw in Park's meta-analysis, which correctly reports RCT data.

**(b) UK Biobank "CFS" diagnostic contamination.**
@Liu2025geneticFatigueActigraphy uses UK Biobank's self-reported "chronic fatigue syndrome" field (data-field 20002, code 1488). This field captures self-reported diagnosis, not IOM- or Fukuda-verified ME/CFS. Patients with idiopathic chronic fatigue (ICF), fatigue secondary to hypothyroidism, anemia, or depression, or post-viral fatigue not meeting ME/CFS criteria may be included. The genetic-continuity finding — CFS-associated SNVs predicting population-level fatigue — may partly reflect ICF contamination rather than true ME/CFS biology. If contamination is substantial, the genetic signal is a general fatigue signal, not an ME/CFS-specific signal. Liu et al. acknowledge this limitation.

**(c) Cross-cultural fatigue word equivalence is unvalidated.**
The word "fatigue" does not translate stably across languages. In Japanese, 疲労 (hirō) maps to physical exhaustion but may under-represent cognitive fatigue; in German, "Müdigkeit" (sleepiness) and "Erschöpfung" (exhaustion) are distinct concepts that map to different English words; in French, "fatigue" is a broader term that blurs the sleepy/tired/exhausted distinction. @Park2024fatigueSeverity pools instruments developed in different languages (Chalder: English-origin, validated in multiple translations; CIS: Dutch-origin; FSS: English-origin; MFI: Dutch-origin; MFS: Swedish-origin). The pooled severity number aggregates fatigue constructs that may not be equivalent across languages. This is a limitation of all cross-cultural meta-analysis, not specific to Park.

**(d) Diagnostic circularity: fatigue is required for diagnosis.**
Patients are selected into ME/CFS studies via case definitions that require fatigue: IOM 2015 criterion 1 ("substantial reduction in pre-illness activities accompanied by fatigue"); Fukuda 1994 criterion 1 ("persistent or relapsing fatigue"); CCC 2003 ("persistent or recurrent chronic fatigue"); ICC 2011 ("post-exertional neuroimmune exhaustion" — fatigue embedded in PEM). The finding that "100% of ME/CFS patients have fatigue" is partly circular — patients without fatigue were excluded from the diagnostic cohort a priori. The ICF core-set finding (@BileviciuteLjungar2020ICF: fatigue in 100% of patients) must be interpreted with this tautology in mind. This does not invalidate the finding (fatigue remains a cardinal feature) but qualifies its epidemiological interpretation — we do not know the prevalence of fatigue in people who meet all other ME/CFS criteria except fatigue, because those people are not diagnosed.

**(e) Cross-sectional design limits phenotypic inference.**
@HabermannHorstmeier2025symptomClusters uses factor analysis (EFA/CFA/SEM) on cross-sectional data. It identifies cluster structure in a snapshot but cannot distinguish *state* (temporary clustering driven by recent PEM episode, infection, or sleep disruption) from *trait* (stable cluster membership over months to years). A patient classified as "Gut-Immune-dominant" at a single timepoint may shift to "Brain-dominant" after a PEM crash or during an infection flare. @EatonFitch2026registryQoL's k-means clustering is also cross-sectional. The inference that clusters represent stable phenotypes — rather than state-dependent snapshots — requires longitudinal replication.

**Certainty:** N/A (these are quality concerns and caveats, not testable claims)

**Consequence for non-specialists:**
These concerns do not mean the chapter's content is wrong — they mean the numbers should be presented with humility. The pooled fatigue severity of 77.9/100 is the best available estimate, but it comes from people well enough to join research studies, not from the bedbound patients who may be suffering most. The genetic findings that tie fatigue to biology are exciting, but the UK Biobank's "CFS" label may include people who don't actually have ME/CFS. The cross-cultural concern means that "77.9/100" may mean different things to an English, Japanese, and German patient. These caveats do not weaken the chapter — they strengthen it by showing the authors understand what their numbers can and cannot say.

**Scores:**
| Dimension | Score | Rationale |
|-----------|-------|-----------|
| `mech` | 0 | No mechanism |
| `tx` | 0 | No treatment relevance |
| `expl` | 3 | Explains why fatigue prevalence/severity numbers may not generalize or translate |
| `math` | 0 | No model relevance |
| `dx` | 2 | Informs interpretation of diagnostic and severity data |
| **origin** | brainstorm (I-014) | |

---

## Highest-Value Research Directions (Top 3)

1. **I-004: ME/CFS-Specific Fatigue Instrument Development.** Most actionable; highest impact across measurement, clinical trials, and patient care. The measurement heterogeneity documented by Park (severity 54.2–88.6 depending on instrument) means the field cannot reliably compare results across studies until a unified instrument exists. A purpose-built instrument would transform every dimension of fatigue research and clinical care. Estimated timeline: 3–5 years.

2. **I-005: Within-Day Fatigue Variability EMA Study.** Fills the largest data gap (no within-day fatigue data exists for ME/CFS). Enables temporal phenotyping — identifying patients whose fatigue is "stable severe" vs "highly labile" vs "morning-worse" vs "evening-worse." Directly informs personalized pacing recommendations. Methodology is well-precedented in other diseases; the innovation is applying it at scale to ME/CFS. Estimated timeline: 2–3 years to first results.

3. **I-006: Longitudinal Fatigue-Only Trajectory Study.** Fills the natural-history gap; provides prognostic information that patients and clinicians currently lack. Enables trajectory-based treatment evaluation (did the drug change the trajectory, or just produce a temporary bump?). Would serve as the natural-history control arm for all future fatigue treatment trials. Estimated timeline: 5–7 years (5-year follow-up + analysis).

---

## Deliberately Parked Ideas (Low Priority)

### Categories 3–6: Treatment-Oriented Brainstorming

Per the Phase 2 synthesis and scope guard: this is a clinical-symptom/measurement topic, not an intervention topic. No treatment ideas (drug, supplement, non-pharmacological intervention, or combination protocol) are proposed in this brainstorm. The following are noted as conceptually adjacent but parked for potential future cycles:

- **Cat 3 (drugs):** Wakefulness-promoting agents (modafinil, solriamfetol) for central-fatigability-dominant fatigue — conceptually adjacent to Bedard's central fatigability finding but requires a treatment-oriented `/integrate-topic` cycle with harm assessment. Parked.
- **Cat 4 (supplements):** Mitochondrial cofactors (CoQ10, NADH, D-ribose, creatine) for peripheral-fatigue-dominant patients — often used off-label but efficacy evidence is weak. Parked pending stronger mechanistic rationale.
- **Cat 5 (non-pharmacological):** Personalized pacing protocols informed by EMA-derived temporal phenotypes (I-005) — but pacing is conceptually linked to PEM, not fatigue alone. Already addressed in `sec-01-pem`. Parked.
- **Cat 6 (combinations):** Integrated fatigue-management protocol combining graded cognitive training + actigraphy-guided activity pacing + interoceptive recalibration — too speculative without evidence for any individual component in ME/CFS. Parked.

### Idea I-012 (Effort-Perception Reframing)

While scored highly on mechanistic and explanatory dimensions, this idea is too radical and insufficiently evidenced for near-term integration into chapter text. It is recorded here for potential future cycles if empirical evidence emerges (e.g., an fMRI study showing insula/ACC hyperactivation during effort tasks in ME/CFS vs disease controls). Parked as **tree-only** — not recommended for Phase 5 integration at current certainty (0.10).

---

## Idea Category Summary

| Cat | Category Name | Ideas | Count |
|-----|---------------|-------|-------|
| 1 | Novel Hypotheses | I-001, I-002, I-003 | 3 |
| 2 | Research Directions | I-004 ⭐, I-005 ⭐, I-006 ⭐, I-007 | 4 |
| 7 | Mathematical Model Extensions | I-008 | 1 |
| 8 | Cross-Disease Bridges | I-009 | 1 |
| 9 | Diagnostic/Biomarker Ideas | I-010, I-011 | 2 |
| 10 | NOT Relevant / Counter-Hypothesis | I-012 | 1 |
| 11 | Null Hypothesis Assessment | I-013 | 1 |
| 12 | Evidence Quality Concerns | I-014 | 1 |
| **Total** | | | **14** |
| (Parked) | Categories 3–6 (treatment) | 4 parked notes | — |

---

## Scoring Table

| ID | Title | Cert | mech | tx | expl | math | dx |
|----|-------|------|------|-----|------|------|----|
| I-001 | Fatigue as interoceptive predictive-coding failure | 0.20 | 3 | 1 | 4 | 2 | 1 |
| I-002 | Fatigue-vs-fatigability discordance as diagnostic window | 0.25 | 3 | 2 | 3 | 3 | 4 |
| I-003 | Fatigue dimensional asymmetry as central-network marker | 0.15 | 2 | 1 | 3 | 2 | 1 |
| I-004 | ME/CFS-specific fatigue instrument development | 0.80 | 1 | 4 | 3 | 4 | 5 |
| I-005 | Within-day fatigue variability EMA study | 0.70 | 2 | 3 | 4 | 4 | 2 |
| I-006 | Longitudinal fatigue-only trajectory study | 0.75 | 2 | 4 | 4 | 5 | 2 |
| I-007 | Cross-disease fatigue phenotyping | 0.65 | 1 | 2 | 4 | 4 | 4 |
| I-008 | Fatigue severity as latent variable — SEM/IRT | 0.30 | 1 | 1 | 2 | 5 | 3 |
| I-009 | MS-fatigue instrument validation bridge | 0.40 | 1 | 2 | 2 | 2 | 4 |
| I-010 | Discordance ratio as clinical severity index | 0.15 | 2 | 2 | 3 | 3 | 3 |
| I-011 | Standardized clinical fatigue assessment battery | 0.25 | 1 | 3 | 2 | 2 | 3 |
| I-012 | "Fatigue is wrong-framing" — effort-perception reframing | 0.10 | 4 | 1 | 4 | 1 | 0 |
| I-013 | Null: ME/CFS fatigue indistinguishable from severe-disease fatigue | 0.45 | 1 | 1 | 4 | 0 | 3 |
| I-014 | Evidence quality concerns — multi-source bias | N/A | 0 | 0 | 3 | 0 | 2 |

---

## Recommended Next Steps

1. **Phase 4a (hypothesis tree):** Populate `ops/plans/hypotheses-trees/subtrees/fatigue-core-symptom.md` with the 14 scored nodes above and update root index.
2. **Phase 5 triage (I-004, I-005, I-006):** These three high-value research directions (all Category 2) meet Tier 1 criteria (certainty ≥ 0.45 or usefulness score ≥ 3). They should be integrated as `#proposal` or `#open-question` environments, likely in subsec-02-severity (I-004), subsec-03-objective-measurement (I-005), and subsec-04-phenotypes (I-006). Per the critical-categories bypass rule, I-013 and I-014 should be integrated directly as `#limitation` or caveat content regardless of tier.
3. **Phase 5 integration — Tier 2 candidates:** I-001 (cert 0.20, max usefulness 4 — promote to Tier 1 based on `expl` ≥ 3), I-002 (cert 0.25, useful dx=4 — promote to Tier 1), I-008 (cert 0.30, useful math=5 — promote to Tier 1), I-009 (cert 0.40, useful dx=4 — promote to Tier 1). I-003 (cert 0.15, max usefulness 3 — Tier 2), I-010 (cert 0.15, max usefulness 3 — Tier 2), I-011 (cert 0.25, max usefulness 3 — Tier 2).
4. **Phase 5 parked (Tier 3):** I-012 (cert 0.10, max usefulness 4 — parked despite high `expl`/`mech` scores because certainty is too low and scope too radical for current chapter integration; record in hypothesis tree for future cycles).

---

## Caveats & Limitations

- This analysis is creative extrapolation, not established fact.
- All certainties are provisional (Phase 4 generator self-assessment) and MUST be independently reassessed in Phase 5 before integration decisions.
- The bias toward research directions and critical/null assessment (categories 1–2, 10–12) reflects the topic's nature as a clinical-symptom/measurement topic, not a mechanistic or treatment topic.
- Some ideas (I-001, I-002, I-012) are conceptually overlapping — they approach the same phenomenon (central-vs-peripheral dissociation) from different angles (mechanistic, measurement, and philosophical). Phase 5 should consolidate rather than duplicate.
- The brainstorm does NOT re-propose the fatigue–PEM relationship structure (done), the fatigue-vs-inflammation mechanism (Omdal plan), or new treatment interventions (scope guard).

---

## Bib Keys Referenced

@Park2024fatigueSeverity, @Liu2025geneticFatigueActigraphy, @Lee2025fatigueDominantLC, @BileviciuteLjungar2020ICF, @EatonFitch2026registryQoL, @Tankisi2024fatigueFatigability, @Eguchi2026EVmiRNAfatigue, @HabermannHorstmeier2025symptomClusters, @Bedard2026centralFatigability, @Campos2022PVFassessment, @IOM2015redefining
