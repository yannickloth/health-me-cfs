#import "../shared/environments.typ": *

// Severity levels content for Chapter 5
// This file is \input from ch05-disease-course.tex

==== Defining Severity

The International Consensus Criteria (ICC) defines ME/CFS severity based on functional capacity relative to pre-illness baseline @Carruthers2011ICC. These classifications have been objectively validated through activity monitoring, cardiopulmonary exercise testing, and standardized questionnaires @vanCampen2020severity. Understanding severity levels is essential for appropriate clinical management, realistic expectations, and resource allocation.

Prevalence across severity levels follows a characteristic distribution: approximately 29% mild, 58% moderate, 11% severe, and 2% very severe @Lacerda2019prevalence. However, functional impairment studies using different criteria (housebound/bedbound status) report that 25–25.7% of patients experience severe functional limitation at some point in their illness @Pendergrast2020housebound @Montoya2021severe. The discrepancy between these figures (13% severe/very severe vs.\ 25% housebound/bedbound) likely reflects several factors: (1) some moderate patients experience periods of being housebound during severe crashes without meeting criteria for severe ME/CFS classification, (2) the 25% figure represents lifetime prevalence ("at some point") while the 13% figure is a cross-sectional snapshot, and (3) severe patients are systematically underrepresented in research cohorts due to inability to participate. These proportions likely underestimate the true burden of severe disease.

==== Functional Capacity and Objective Measures

Objective validation studies demonstrate that self-reported severity classifications correlate strongly with measurable physiological parameters @vanCampen2020severity:



#figure(
  table(
    columns: (auto, auto, auto, auto),
    // TODO: fix columns

    [*Measure*], [*Mild*], [*Moderate*], [*Severe*],

    [Daily steps (mean)], [8,235], [5,195], [2,031],

    [SF-36 Physical Functioning], [70], [43], [15],

    [Peak VO#sub[2] (% predicted)], [90%], [64%], [48%],

    [VO#sub[2] at ventilatory threshold], [47%], [38%], [30%],
  ),
  caption: [Objective measures across ME/CFS severity levels],
) <tab:severity-measures>


All differences between severity groups are statistically significant ($p < 0.0001$), confirming that patient-reported severity reflects genuine physiological impairment rather than subjective perception.

=== Functional Capacity Assessment Tools

Functional capacity assessment is critical for severity classification, disability evaluation, and clinical trial outcome measurement. Traditional generic questionnaires (SF-36, WHODAS 2.0) developed for other conditions have significant limitations when applied to ME/CFS: they fail to capture the activity-limiting nature of post-exertional malaise (PEM), exhibit ceiling effects for severe patients, and focus on "can you do X" rather than "what happens when you do X" @Goxhaj2026OutcomeMeasures.

#achievement(title: [FUNCAP: Patient-Informed Functional Capacity Assessment])[
The FUNCAP (Functional Capacity Assessment) questionnaire, developed by Sommerfelt et al.\ (2024), represents the first ME/CFS-specific tool designed explicitly for PEM-affected patients @Sommerfelt2024FUNCAP. (Certainty: 0.70)

*Design Principles.* FUNCAP uses a novel "consequence-based" question design. Instead of asking patients whether they "can" perform an activity, it asks about the consequences of performing that activity on other activities. This approach directly captures the energy budgeting reality of ME/CFS: a patient may be physically capable of showering, but doing so may preclude preparing a meal or leaving the house for the remainder of the day.

*Questionnaire Structure.* Two versions are available:
- *FUNCAP-55*: 55 items across 8 domains (personal hygiene, walking/movement, being upright, home activities, communication, activities outside home, light/sound reactions, concentration). Designed for comprehensive assessment in diagnosis and disability evaluation.
- *FUNCAP-27*: 27-item abbreviated version. Designed for follow-up monitoring and research settings where brevity is required.

*Validation.* Developed through five rounds of web-based surveys with Norwegian patients ($n = 1{,}263$ ME/CFS, $178$ HC) and independently validated in an international English-speaking cohort ($n = 1{,}387$ ME/CFS). The questionnaire demonstrates:
- Good test-retest reliability
- Valid discrimination across severity levels (mild to very severe)
- Negligible floor and ceiling effects—a critical advantage for severe and very severe patients who score at the floor of generic instruments
- Availability in 8 languages (Dutch, English, French, German, Italian, Japanese, Norwegian, Swedish) under Creative Commons Attribution (CC BY) license, enabling free use for clinical and research purposes

*Applications.* FUNCAP addresses multiple critical needs in ME/CFS care and research:
- *Clinical*: Objective functional capacity documentation for diagnosis, severity classification, and treatment monitoring
- *Disability evaluation*: Evidence-based functional impairment assessment for insurance and social security determinations
- *Research*: Validated outcome measure for clinical trials; the LIFT (Life Improvement Trial) protocol (pyridostigmine + low-dose naltrexone for ME/CFS) uses FUNCAP-55 as its primary outcome @Meadows2025LIFTprotocol
- *Cross-disease relevance*: A Lancet Infectious Diseases commentary highlighting poor outcome measure selection in Long COVID trials recommends FUNCAP as a functional capacity scale designed for PEM-affected patients, extending its relevance beyond ME/CFS to post-COVID condition @Goxhaj2026OutcomeMeasures

*Limitations.* FUNCAP is a new tool (published June 2024) with a growing evidence base. Key limitations include:
- No independent external validation by a different research group as of 2026-04-23
- Cross-sectional validation only; longitudinal sensitivity-to-change data are not yet published
- No direct comparison studies against other functional capacity tools (SF-36, WHODAS) in ME/CFS populations
- The LIFT trial results are pending; interventional trial performance data are not yet available

Despite these limitations, FUNCAP represents a significant advancement in ME/CFS assessment methodology. Its patient-informed design, PEM-specific focus, and avoidance of floor/ceiling effects address longstanding gaps in the field.
]

#limitation(title: [Functional Capacity Assessment: No Gold Standard])[
No functional capacity assessment tool for ME/CFS has achieved universal acceptance as a gold standard. While FUNCAP is the most ME/CFS-specific instrument available, its newness and lack of independent validation mean that clinicians and researchers should interpret results cautiously. Cross-validation with objective measures (actigraphy, cardiopulmonary exercise testing) and complementary tools (PEM-specific measures like the brief PEM measure by Jason & Chee 2025 @JasonChee2025PEMmeasure) provides a more comprehensive assessment.
]

==== Mild ME/CFS

Mild ME/CFS represents approximately 50% reduction in pre-illness activity level @Carruthers2011ICC. Despite the designation “mild,” this category describes substantial disability that would be considered severe in most other medical contexts.

*Functional Capacity.*
Patients with mild ME/CFS may maintain some degree of employment or education, though typically with significant accommodations:

    - Reduced hours (part-time work or study)
    - Flexible scheduling to accommodate energy fluctuations
    - Remote work arrangements to eliminate commuting
    - Extended deadlines and modified workloads
    - Frequent rest breaks throughout the day

Daily step counts averaging 8,235 steps indicate preserved mobility but at the lower end of healthy population norms (typically 7,000–10,000 steps daily). Peak oxygen consumption at 90% of predicted suggests maintained aerobic capacity under controlled testing conditions, though real-world performance is constrained by post-exertional malaise.

*The Invisible Illness Phenomenon.*
Patients with mild ME/CFS often appear healthy to outside observers, creating a dangerous disconnect between perceived and actual capacity. This “invisible illness” phenomenon leads to:

    - Disbelief from employers, educators, family, and healthcare providers
    - Pressure to perform at pre-illness levels
    - Social isolation when patients decline activities to conserve energy
    - Self-doubt about the legitimacy of their condition
    - Delayed diagnosis and inappropriate treatment recommendations

The ability to “pass” as healthy exacts a heavy toll. Patients may push through symptoms to meet social expectations, triggering post-exertional malaise and risking progression to more severe disease.

*Energy Envelope Management.*
Successful management of mild ME/CFS requires strict adherence to the energy envelope—staying within available energy reserves rather than borrowing against future capacity @jason2012energy. Patients must:

    - Track activity levels and symptoms systematically
    - Identify personal triggers for post-exertional malaise
    - Accept permanent lifestyle modifications
    - Resist the temptation to “test” limits during good periods
    - Build substantial rest margins into daily schedules

*Risk of Progression.*
Mild ME/CFS is not a stable endpoint. Patients who exceed their energy envelope repeatedly, whether through choice or necessity, face significant risk of progression to moderate or severe disease. Common triggers for deterioration include:

    - Intercurrent infections (viral, bacterial)
    - Physical overexertion (exercise, travel, demanding work)
    - Cognitive overexertion (intensive mental work, emotional stress)
    - Medical procedures (surgery, dental work, vaccinations)
    - Life stressors (bereavement, relationship breakdown, financial pressure)

Once deterioration occurs, return to baseline is not guaranteed. Many patients describe a “ratchet effect” where each crash leaves them at a lower functional level than before.

==== Moderate ME/CFS

Moderate ME/CFS describes patients who are mostly housebound, with severely restricted activity in all domains @Carruthers2011ICC @NICE2021mecfs. This category represents the largest proportion of the ME/CFS population (approximately 58%) and encompasses significant heterogeneity in functional capacity.

*Functional Limitations.*
The NICE guideline characterizes moderate ME/CFS by @NICE2021mecfs:

    - Reduced mobility affecting all daily activities
    - Cessation of work or education
    - Required rest periods, often 1–2 hours in the afternoon
    - Poor quality, disturbed sleep that fails to restore energy
    - Significant reduction in social activities

Daily step counts averaging 5,195 reflect the housebound nature of this severity level—enough mobility to move within the home but insufficient for regular excursions. SF-36 physical functioning scores of 43 (compared to population norms near 85) quantify the profound limitation.

*The Daily Energy Budget.*
Patients with moderate ME/CFS face constant decisions about energy allocation. A finite daily budget must cover all activities, and exceeding this budget triggers post-exertional malaise. Typical trade-offs include:

    - Shower _or_ prepare a meal, but not both
    - Brief phone conversation _or_ a short walk
    - Medical appointment requiring days of pre-appointment rest and post-appointment recovery
    - Social visit measured in minutes rather than hours

The cognitive and emotional dimensions of this constant calculation constitute a burden in themselves. Patients describe exhaustion from the relentless need to monitor, plan, and restrict.

*Loss of Independence.*
Moderate ME/CFS typically requires some degree of assistance with daily living:

    - Meal preparation and household management
    - Transportation for medical appointments
    - Shopping and errands
    - Medication management during cognitive impairment
    - Personal care during severe symptom flares

This dependence represents a profound loss for previously independent individuals. The psychological impact of needing help with basic functions compounds the physical suffering of the disease.

*Employment and Financial Impact.*
Most patients with moderate ME/CFS cannot maintain employment. Among the ME/CFS population overall, only 13% work full-time and 54% are unemployed (compared to 9% in the general population) @Pendergrast2020housebound. The financial consequences cascade:

    - Loss of income at peak earning years
    - Depletion of savings for living expenses
    - Inability to afford treatments not covered by insurance
    - Housing instability when rent or mortgage becomes unaffordable
    - Dependence on family support or social welfare programs
    - Lengthy disability claim battles with insurers who dispute ME/CFS legitimacy

*Social Isolation.*
The combination of energy limitations, unpredictable symptoms, and inability to participate in normal activities leads to progressive social isolation:

    - Friends drift away when invitations are repeatedly declined
    - Family relationships strain under the burden of caregiving
    - Online interaction becomes the primary social connection
    - Special occasions (weddings, graduations, funerals) become impossible to attend
    - The patient's world shrinks to the confines of their home

==== Severe ME/CFS

Severe ME/CFS describes patients who are mostly bedridden, with profound limitation in all activities @Carruthers2011ICC. Approximately 11% of ME/CFS patients fall into this category, though they are underrepresented in research due to inability to travel to study sites or tolerate research protocols.

*Functional Status.*
The NICE guideline characterizes severe ME/CFS by @NICE2021mecfs:

    - Inability to perform any activity for themselves, or only minimal tasks (face washing, teeth cleaning)
    - Severe cognitive difficulties affecting concentration, memory, and communication
    - Wheelchair dependence for any mobility outside the bed
    - Inability to leave the house, or severe prolonged after-effects if they do
    - Mostly bedridden with only brief periods of sitting up
    - Extreme sensitivity to light and sound

Daily step counts averaging only 2,031 reflect the near-complete loss of mobility. Peak oxygen consumption at 48% of predicted indicates severe impairment of the body's fundamental capacity to generate energy.

*Caregiver Dependence.*
Patients with severe ME/CFS require substantial assistance with all activities of daily living:

    - Personal hygiene (bathing, toileting, grooming)
    - Feeding and hydration
    - Medication administration
    - Position changes to prevent pressure injuries
    - Communication with healthcare providers
    - Protection from environmental triggers

This level of care typically requires a dedicated family caregiver or, for those without family support, professional home care services that few can afford and that few providers understand how to deliver appropriately for ME/CFS.

*Qualitative Difference.*
Research suggests that severe ME/CFS may represent a qualitatively different disease state rather than simply a more extreme point on a continuum @Kingdon2020severe. Compared to mild and moderate patients, those with severe ME/CFS demonstrate:

    - Greater autonomic dysfunction
    - More frequent and more severe post-exertional malaise
    - More pronounced cognitive impairment
    - More multisystem symptom involvement
    - Significantly worse scores on every SF-36 domain

These findings suggest that progression to severe disease may involve additional pathophysiological mechanisms beyond those operating in milder forms, with implications for treatment approaches.

*Healthcare Access Crisis.*
Approximately 25% of ME/CFS patients are severely affected and almost exclusively housebound, yet many receive no medical care despite being most in need @Kingdon2020housebound. Barriers include:

    - Inability to travel to medical facilities
    - Post-exertional malaise triggered by the examination itself
    - Lack of physicians willing to make home visits
    - Medical professionals unfamiliar with severe ME/CFS presentation
    - Insurance systems designed around ambulatory care
    - Emergency departments that provide inappropriate treatment (bright lights, noise, activity recommendations)

The result is a population of severely ill patients who are medically abandoned—too sick to access the healthcare system, and invisible to a system that has no mechanism to find them.

==== Very Severe ME/CFS

Very severe ME/CFS represents the extreme end of the disease spectrum: patients who are completely bedridden and require help with all basic functions @Carruthers2011ICC. Approximately 2% of ME/CFS patients fall into this category, representing an estimated 62,000 people in the United States alone @Pendergrast2020housebound.

The detailed reality of very severe ME/CFS—the complete energy bankruptcy, the necessity of existence in darkness and silence, the loss of basic bodily functions, and the existential suffering that leads many to wish for death—is addressed comprehensively in Section @sec:severe-reality.

*Extended Extremely Severe Classification.*
The standard four-level classification collapses all patients below "very severe" into a single category, yet these patients exhibit clinically meaningful differences in functional capacity. Jahanbani et al. proposed a finer-grained framework that subdivides the extremely severe range into five sub-levels (A through E, with E the most profound), reflecting discrete functional milestones: oral nutrition capacity, sensory tolerance, communication ability, and independent repositioning @Jahanbani2024severity. Norwegian survey data ($n = 586$) confirm the heterogeneity within this range: among very severe patients, 17% required tube feeding, 43% had swallowing difficulties, 60% could not tolerate normal speech volume, and 76% never received visitors @Sommerfelt2023NorwaySevere. The FUNCAP questionnaire, specifically designed to avoid floor effects at the extreme end, may enable longitudinal tracking across these sub-levels @Sommerfelt2024FUNCAP. This extended classification has implications for treatment monitoring: the ratchet model (Section @sec:ratchet-model) predicts that recovery time increases steeply through the "cliff" regime and plateaus at a high constant in the "floor" regime (Table @tab:recovery-regimes), meaning that transitions between adjacent extremely severe sub-levels are clinically hard to detect despite ongoing biological improvement.

*Key Features.*
Very severe ME/CFS is characterized by @NICE2021mecfs:

    - Complete confinement to bed, 24 hours per day
    - Dependence on others for all care needs
    - Inability to tolerate any sensory input (light, sound, touch, movement)
    - Profound cognitive impairment affecting communication
    - Feeding difficulties requiring liquid nutrition or tube feeding
    - Complete loss of independence and autonomy

*The Invisible Population.*
Very severe patients are almost entirely absent from research studies, clinical guidelines, and healthcare systems. They cannot:

    - Travel to research facilities
    - Tolerate standard medical examinations
    - Complete questionnaires or interviews
    - Advocate for themselves in healthcare settings
    - Participate in patient organizations or support groups

Their existence is known primarily through caregiver reports and memorial records. They suffer in silence, hidden from the medical establishment that should be serving them.

Emerging outreach-based research protocols are beginning to address this exclusion.
The ACHTSAM pilot study @Fricke2026achtsam represents the first systematic
investigation of diagnostic tolerability in severe and very severe ME/CFS
(Bell score $lt.eq$30), conducting all assessments—including ECG, heart rate
variability, pupillography, cognitive testing, endothelial function, and blood
sampling—at the patient's home. The study hypothesizes that fewer than 50%
of standard clinical assessments will be fully completable in this population
and that supine-position procedures will be substantially better tolerated than
standing tests. If validated, this framework could serve as a template for
inclusive clinical research that no longer excludes the most severely affected.

#hypothesis(title: [The Severity-Specific Floor Effect Paradox])[
FUNCAP's absence of floor effects at the severe end creates a paradox: as severely affected patients deteriorate further, their FUNCAP scores *continue declining*, which means the instrument detects worsening that other instruments miss—but this also means that FUNCAP-based severity classifications may disagree with established clinical classifications (Karnofsky, Bell scale) precisely in the range where clinical decisions are most critical (disability, care level, ventilation decisions). (Certainty: 0.55)

*Mechanistic Rationale.*
The ratchet model (Section @sec:ratchet-model) predicts that in the "floor regime" (B < 0.10), recovery time plateaus at a high constant. FUNCAP's sensitivity in this range means it can detect sub-Karnofsky-10 deterioration (e.g., ability to communicate, tolerate light, tolerate sound). But clinical systems calibrated to Karnofsky or SF-36 floors will classify all patients below Karnofsky-10 as equivalent, missing clinically meaningful distinctions that FUNCAP captures.

*Evidence Link.*
Jahanbani2024severity proposed 5 extremely severe sub-levels. Sommerfelt2023NorwaySevere documented 17% tube feeding, 43% swallowing difficulty, 60% sound intolerance in very severe Norwegian cohort. FUNCAP was explicitly designed to avoid floor effects in this range @Sommerfelt2024FUNCAP.

*Clinical Implications.*
This paradox has significant implications for:
- *Disability determination*: Patients at different FUNCAP sub-levels may qualify for different levels of support despite identical Karnofsky scores
- *Treatment monitoring*: FUNCAP can detect subclinical improvements in very severe patients that other instruments miss
- *Clinical trial endpoints*: Trials enrolling severe patients may detect treatment effects with FUNCAP that would be invisible to SF-36

*Testable Prediction.*
In severely affected patients (Bell score < 10 or equivalent), FUNCAP total score should show statistically significant variance (SD/mean > 0.15) while SF-36 physical function should be at floor (variance near zero). Patients reclassified by FUNCAP sub-levels should differ in care requirements (tube feeding, communication ability, visitor tolerance) independently of their Karnofsky/Bell classification.

*Limitations.*
The paradox is logically inevitable given FUNCAP's design properties. The clinical impact is the speculative element—whether the additional granularity translates into different clinical decisions or outcomes has not been tested.
]
