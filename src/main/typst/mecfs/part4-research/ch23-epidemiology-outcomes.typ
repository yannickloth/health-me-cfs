#import "../shared/environments.typ": *

= Epidemiological and Outcomes Research
<ch:epidemiology-outcomes>

== Prevalence and Incidence Studies
<sec:prevalence-incidence>

Estimating ME/CFS prevalence is complicated by the absence of a diagnostic biomarker, the use of multiple case definitions of varying stringency, and the high rate of undiagnosed cases. Prevalence estimates vary by an order of magnitude depending on methodology and criteria applied.

=== Population-Based Estimates

The most cited prevalence estimates range from 0.1% to 0.9% of the general adult population:

    - *Fukuda (1994) criteria*: Broader definition; population-based studies using these criteria report prevalence of 0.2–0.4% (approximately 800,000–1,600,000 adults in the US)
    - *Canadian Consensus Criteria (2003)*: Stricter definition requiring PEM; prevalence approximately 0.1–0.2%
    - *Institute of Medicine (2015)*: Estimated 836,000–2,500,000 Americans affected, with 84–91% undiagnosed
    - *Community surveillance studies*: Jason et al.\ (1999) conducted door-to-door screening in Chicago, identifying a prevalence of 0.42% using the Fukuda criteria—substantially higher than clinic-based estimates, confirming widespread underdiagnosis

=== Geographic and Demographic Variation

Prevalence varies across populations, though much variation may reflect diagnostic practices rather than true disease frequency:

    - *Sex ratio*: Females outnumber males approximately 3–4:1 across most studies @jason2018prevalence @Lim2020prevalence. This ratio is consistent across cultures and diagnostic criteria, suggesting a biological basis (hormonal, immune, or genetic)
    - *Age distribution*: Earlier studies reported peak onset in the 30--49 age range, though ME/CFS occurs at all ages including children and adolescents. Pediatric prevalence is estimated at 0.1--0.5% @Lim2020prevalence. Recent evidence reveals that this apparently broad peak conceals a bimodal onset-age distribution with two peaks at approximately age 16 and age 37, confirmed across ten European countries ($n = 9{,}380$) and replicated in the DecodeME dataset ($n = 6{,}455$) @McGrath2026bimodalOnset @Bakken2014bimodalOnset (see Section @sec:bimodal-onset-age)
    - *Ethnic and socioeconomic factors*: Community-based studies (as opposed to clinic-based) show similar or higher prevalence in minority and lower-income populations @jason2018prevalence, contradicting the outdated characterization of ME/CFS as a disease of affluent white women. Underdiagnosis in minority populations likely reflects healthcare access disparities rather than lower disease incidence

=== Post-COVID Surge

The COVID-19 pandemic has significantly increased ME/CFS incidence. An estimated 51% of long COVID patients meeting PEM criteria satisfy ME/CFS diagnostic criteria @Komaroff2023. Given the hundreds of millions of SARS-CoV-2 infections worldwide, the projected increase in ME/CFS prevalence is substantial—potentially doubling or tripling the pre-pandemic patient population. This surge has accelerated research funding and clinical attention but has also strained the already limited specialist infrastructure.

*Population-level cognitive impact.* Beyond prevalence, the post-COVID surge carries significant cognitive morbidity. Hampshire et al. @Hampshire2024cognition assessed 112,964 participants from the UK REACT study and documented a graded dose–response relationship between COVID-19 severity and cognitive decline: mild resolved cases showed deficits equivalent to $tilde$3 IQ points, persistent symptoms (Long COVID) $tilde$6 IQ points, and ICU admission $tilde$9 IQ points, with reinfection adding $tilde$2 points per episode. Douaud et al. @Douaud2022brain demonstrated the structural neuroimaging correlate in UK Biobank longitudinal data ($n = 785$): grey matter loss in orbitofrontal and parahippocampal regions even after predominantly mild (96% non-hospitalized) infection. At population scale, even the modest 3-point deficit from mild COVID, applied across hundreds of millions of infections, represents a substantial shift in the cognitive capacity distribution—a public health dimension that extends well beyond the ME/CFS patient population but is particularly relevant to understanding the cognitive burden in post-COVID ME/CFS cases (see Chapter @ch:neurological, Section @subsec:cognitive-quantification).

*Vaccination as Prevention Strategy in Children and Adolescents*

#achievement(title: [Vaccination Substantially Reduces Long COVID Incidence in Children])[
A real-world effectiveness study across $>385{,}000$ children and adolescents in
13 US hospital systems @Wu2024LongCovidChildren found that BNT162b2 reduced
long COVID risk by 95.4% in adolescents during Delta and by 60–75% during Omicron.
Causal mediation analysis demonstrated that this protection operates primarily through
infection prevention rather than post-infection immune modification, confirming that
long COVID—and by extension post-COVID ME/CFS—arises as a direct consequence of
the acute infection process itself. The finding implies that modifying the post-infection
immune trajectory (e.g., with antivirals or immunomodulators after infection) faces a
fundamentally harder challenge than preventing the initiating event.
Study: (EHR cohort, $n>385{,}000$, EClinicalMedicine 2024, certainty: 0.80).
] <ach:wu2024-bnt162b2-long-covid>

== Risk Factor Studies
<sec:risk-factors-studies>

=== Genetic Risk Factors

Evidence supports a genetic contribution to ME/CFS susceptibility, though the genetic architecture remains poorly characterized:

    - *Family studies*: First-degree relatives of ME/CFS patients have a higher risk of developing the condition @Dibble2020genetics. Family clustering is consistently reported, though shared environmental exposures cannot be excluded
    - *Twin studies*: Monozygotic twins show higher concordance than dizygotic twins, with heritability estimates of 30–50% @Dibble2020genetics. This suggests a moderate genetic contribution with substantial environmental influence
    - *Genetic associations*: HLA alleles (particularly HLA-DRB1), cytokine gene polymorphisms, and immune-regulatory gene variants have been associated with ME/CFS in candidate gene studies, but none has been consistently replicated @Dibble2020genetics. Genome-wide association studies (DecodeME, UK ME/CFS Biobank) are ongoing and may identify robust common variants (Section @sec:omics-studies)

=== Environmental Risk Factors

Environmental triggers interact with genetic susceptibility to precipitate ME/CFS:

    - *Infectious triggers*: Viral infection is the most common precipitant, identified in 60–80% of cases. Epstein-Barr virus, enteroviruses, HHV-6, and SARS-CoV-2 are the most frequently implicated pathogens. The Dubbo Infection Outcomes Study documented ME/CFS-like illness in 11% of patients following acute EBV, Ross River virus, or _Coxiella burnetii_ infection, with severity of acute illness predicting chronic sequelae
    - *Toxic exposures*: Organophosphate pesticides, solvents, mold/mycotoxin exposure, and heavy metals have been reported as triggers in case series. Systematic epidemiological evidence is limited
    - *Physical trauma*: Surgery, childbirth, and physical injury occasionally precede ME/CFS onset, possibly through immune activation or HPA axis disruption
    - *Psychological stress*: Severe or prolonged stress is reported as a precipitant in some cases, though its role is controversial and must be distinguished from the psychogenic model that attributes ME/CFS to stress itself
    - *Vaccination*: Rare cases of ME/CFS onset following vaccination have been reported. Population-level studies do not show elevated risk, and the benefit of vaccination (particularly for infection prevention in existing ME/CFS patients) far outweighs any theoretical risk

=== Demographic Risk Factors

Demographic factors associated with ME/CFS risk include:

    - *Sex*: Female predominance (3–4:1) is robust across studies @jason2018prevalence @Lim2020prevalence. Potential explanations include hormonal influences on immune function, higher autoimmune disease susceptibility in females, and possible diagnostic bias (males may be less likely to seek care or receive the diagnosis). Critically, ME/CFS onset and severity in women is modulated by reproductive life events: menarche, menstrual cycle phase, pregnancy, the postpartum period, and perimenopause each represent vulnerability windows for onset or relapse @Thomas2022sexDifferences. Reproductive hormones—particularly estrogen and progesterone—interact with the HPA axis, immune function, and autonomic regulation in ways that may explain this pattern. Women with ME/CFS also show distinctive gynecological histories: earlier menopause (mean age 37.6 vs.\ 48.6 years in controls), higher rates of excessive menstrual bleeding, pelvic pain, and hysterectomy @boneva2015menopause @boneva2011gynecological
    - *Age*: Bimodal onset-age distribution with peaks at approximately 16 and 37 years @McGrath2026bimodalOnset. Early onset is associated with higher severity (OR 2.15), greater infectious trigger rates (especially infectious mononucleosis), and more familial clustering (OR 1.43). Pediatric onset may carry distinct biological features rather than simply earlier presentation of the same disease @Rowe2019pediatric
    - *Socioeconomic status*: Community-based studies show no association with higher socioeconomic status. The historical perception of ME/CFS as a “yuppie flu” reflected clinic-based sampling bias (wealthier patients had better access to specialists who could diagnose the condition)

== Natural History Studies
<sec:natural-history>

Understanding the natural history of ME/CFS is critical for prognosis, treatment planning, and patient counseling. However, few long-term prospective studies exist, and most evidence comes from retrospective cohorts with significant loss to follow-up.

=== Recovery Rates

Recovery from ME/CFS is possible but uncommon:

    - *Full recovery*: Estimated at 5–10% across studies, though definitions of “recovery” vary. Strict criteria (return to pre-illness function) yield lower estimates than subjective improvement
    - *Significant improvement*: An additional 20–30% of patients report meaningful improvement over time, though most remain below pre-illness function
    - *Stable illness*: The majority of patients (40–60%) follow a fluctuating but relatively stable course, with periods of relative improvement and relapse
    - *Progressive decline*: An estimated 10–20% of patients experience progressive worsening, particularly those who experience repeated infections, undergo inappropriate exercise therapy, or lack adequate pacing support
    - *Pediatric prognosis*: Children and adolescents may have better prognosis than adults, with recovery rates estimated at 20–50% @Joyce1997prognosis @Rowe2019pediatric, though these estimates are based on limited follow-up periods

=== Predictors of Outcome

Factors associated with better or worse prognosis include:

    - *Better prognosis*: Younger age at onset, shorter illness duration at diagnosis, less severe initial presentation, identifiable infectious trigger, absence of psychiatric comorbidity, early adoption of pacing, and access to knowledgeable medical care
    - *Worse prognosis*: Older age at onset, longer duration before diagnosis, severe initial presentation, multiple comorbidities (POTS, MCAS, fibromyalgia), exposure to graded exercise therapy, repeated infections during illness, and delayed or absent diagnosis
    - *Illness duration*: Most recovery occurs within the first 2–5 years. Patients who remain ill beyond 5 years are unlikely to achieve full recovery, though improvement remains possible

== Quality of Life and Disability Studies
<sec:quality-of-life-studies>

ME/CFS produces one of the lowest quality-of-life scores of any chronic disease—a finding that is remarkably consistent across studies and measurement instruments.

=== SF-36 Findings

The Short Form 36 (SF-36) health survey is the most widely used quality-of-life instrument in ME/CFS research. ME/CFS patients consistently score lower than patients with congestive heart failure, type 2 diabetes, multiple sclerosis, end-stage renal disease, and most cancers on the physical function subscale. Typical SF-36 physical function scores in ME/CFS range from 20–35 (out of 100), compared to 50–70 for most other chronic diseases and 85–95 for healthy controls. Social function and role-physical subscales are similarly devastated.

#limitation(title: [Generic Quality-of-Life Instruments Have Limitations in ME/CFS])[
While SF-36 and other generic instruments (WHODAS 2.0, EQ-5D) provide valuable cross-disease comparability, they have significant limitations when applied to ME/CFS @Goxhaj2026OutcomeMeasures:
    - *PEM insensitivity*: These instruments do not capture the activity-limiting nature of post-exertional malaise. A patient may report "moderate limitation" on SF-36 physical function while experiencing severe post-exertional crashes that are not reflected in the score
    - *Ceiling effects in severe patients*: Severely and very severely affected patients (25% of the population) often score at the floor of SF-36 and similar instruments, making it impossible to track deterioration or improvement within this group
    - *Wrong question frame*: Generic instruments ask "can you do X?" rather than "what happens when you do X?" This misses the core ME/CFS reality: a patient may be physically capable of an activity, but performing it may preclude other activities or trigger a crash
    - *Lack of PEM-specific domains*: SF-36 has no domains for sensory sensitivity, cognitive fatigue, or post-exertional symptom exacerbation—the most debilitating aspects of ME/CFS
]

=== ME/CFS-Specific Functional Capacity Assessment

The development of ME/CFS-specific functional capacity instruments addresses the limitations of generic tools.

#achievement(title: [FUNCAP: ME/CFS-Specific Functional Capacity Measurement])[
The FUNCAP (Functional Capacity Assessment) questionnaire, developed by Sommerfelt et al.\ (2024), is the first ME/CFS-specific tool designed explicitly for PEM-affected patients @Sommerfelt2024FUNCAP. (Certainty: 0.70)

*Key Advantages Over Generic Instruments.*
- *Consequence-based questioning*: FUNCAP asks about the consequences of activities on other activities, directly capturing the energy budgeting reality of ME/CFS
- *No floor/ceiling effects*: Designed to discriminate across the full severity spectrum from mild to very severe, enabling tracking of changes in severe patients who score at the floor of SF-36
- *PEM-specific domains*: Assesses 8 domains relevant to ME/CFS: personal hygiene, walking/movement, being upright, home activities, communication, activities outside home, light/sound reactions, and concentration
- *Validated in large cohorts*: Norwegian ($n = 1{,}263$ ME/CFS) and international English ($n = 1{,}387$ ME/CFS) samples with good test-retest reliability
- *Free and accessible*: Available in 8 languages under Creative Commons Attribution (CC BY) license, enabling free use for clinical and research purposes

*Applications for Disability Assessment.*
FUNCAP provides objective, evidence-based documentation of functional impairment for insurance and social security determinations. Unlike generic instruments that may underestimate ME/CFS disability due to ceiling effects and PEM insensitivity, FUNCAP captures the full spectrum of functional limitations, including the delayed consequences of activities. This is particularly important for:
- *Disability insurance claims*: Evidence-based functional impairment documentation that can withstand insurer scrutiny
- *Social security determinations*: Objective severity classification across the full range from mild to very severe
- *Reasonable accommodation requests*: Specific functional limitations that can guide workplace or educational accommodations
- *Legal proceedings*: Credible, validated evidence of disability in discrimination or benefits cases

*Adoption in Clinical Trials.*
FUNCAP is increasingly adopted as an outcome measure in ME/CFS clinical trials. The LIFT (Life Improvement Trial) protocol (pyridostigmine + low-dose naltrexone for ME/CFS) uses FUNCAP-55 as its primary outcome @Meadows2025LIFTprotocol. A Lancet Infectious Diseases commentary highlighting poor outcome measure selection in Long COVID trials recommends FUNCAP as a functional capacity scale designed for PEM-affected patients, extending its relevance to post-COVID condition @Goxhaj2026OutcomeMeasures.
]

#limitation(title: [Functional Capacity Assessment: No Gold Standard for Disability Determination])[
No functional capacity assessment tool for ME/CFS has achieved universal acceptance as a gold standard for disability determination. While FUNCAP is the most ME/CFS-specific instrument available, its newness (published June 2024) and lack of independent validation mean that disability adjudicators may not yet recognize it. Insurance companies and social security systems often require use of established generic instruments (SF-36, WHODAS 2.0) even when these have known limitations for ME/CFS. Patients and clinicians advocating for disability benefits should provide both ME/CFS-specific (FUNCAP) and generic (SF-36) assessments, supplemented by objective physiological measures (actigraphy, cardiopulmonary exercise testing) and clinician documentation of functional limitations.
]

#hypothesis(title: [The FUNCAP Disability Package: Convergent Validation Strategy])[
A standardized disability assessment package combining FUNCAP-55 (patient-reported functional capacity), 2-day CPET (objective PEM severity), COMPASS-31 (autonomic burden), and actigraphy (7-day activity pattern) provides convergent validation that is harder for insurers/adjudicators to dismiss than any single instrument alone. (Certainty: 0.45)

*Rationale.*
No single tool is accepted as a gold standard for ME/CFS disability determination. The ratchet model (Section @sec:ratchet-model) shows that single timepoint assessments miss severity dynamics. A multi-modal package would provide convergent validity—evidence from multiple independent measurement modalities pointing to the same conclusion.

*Package Components.*
- *FUNCAP-55*: Patient-reported functional capacity across 8 domains, specifically designed for PEM-affected patients
- *2-day CPET*: Objective measure of PEM severity (VO#sub[2]max decline from Day 1 to Day 2)
- *COMPASS-31*: Autonomic symptom burden quantification (orthostatic intolerance, secretomotor, vasomotor, bladder, gastrointestinal, pupillomotor)
- *Actigraphy (7-day)*: Objective activity pattern quantification (total steps, activity fragmentation, sleep-wake patterns)

*Clinical Advantages.*
This composite package addresses all limitations of any single instrument:
- FUNCAP captures the patient-reported functional consequences that objective measures miss
- 2-day CPET provides objective biological evidence of PEM that subjective measures cannot
- COMPASS-31 quantifies autonomic burden, a major contributor to functional limitation
- Actigraphy provides objective evidence of daily activity patterns and energy expenditure

*Evidence Link.*
Each component is validated individually: FUNCAP @Sommerfelt2024FUNCAP, 2-day CPET @vanCampen2020severity, COMPASS-31 @Sheldon2013COMPASS, actigraphy @Jason2020economic. The combination is novel and requires standardization.

*Practical Implementation.*
The package can be administered over 2-3 weeks:
- Week 1: FUNCAP-55 and COMPASS-31 (single session, ~45 minutes)
- Week 2: 2-day CPET (requires two visits to testing center)
- Weeks 2-3: Actigraphy (wearable device, 7-day wear period)

*Limitations.*
The composite package requires more time and resources than any single instrument. Not all patients can tolerate 2-day CPET (severe patients may need modified protocols). Standardization across different clinics and testing centers has not been established. Cost may be a barrier for uninsured patients.
]

=== The Consequence Gap: A Novel PEM Biomarker

#speculation(title: [The Consequence Gap as a Quantitative PEM Biomarker])[
The discrepancy between a patient's FUNCAP domain score and their corresponding SF-36 subscale score is not measurement noise—it may be a quantitative proxy for PEM severity. (Certainty: 0.40)

*Conceptual Framework.*
SF-36 asks "Can you do X?" — a static capability question. FUNCAP asks "What happens when you do X?" — a dynamic consequence question. The difference between these two scores (SF-36 minus FUNCAP-equivalent) measures the *fraction of functional limitation attributable to PEM* rather than to baseline disability. A patient who can walk 200m (SF-36 captures this) but cannot do so without triggering 48h PEM crash (FUNCAP captures this) has a large consequence gap. This gap should correlate with biological PEM severity markers (2-day CPET decline, post-exercise immune gene expression, cytokine flares).

*Evidence Link.*
Sommerfelt2024FUNCAP explicitly designed consequence-based questioning to capture what SF-36 misses. The paper already documents that SF-36 fails to capture PEM-limiting effects. The 2-day CPET literature (Lim 2020, van Campen 2020) provides the biological PEM benchmark.

*Clinical Implications.*
If validated, the consequence gap would provide:
- A quantitative PEM severity metric that requires only patient-reported outcome data (no CPET needed)
- A way to distinguish patients whose functional limitation is primarily PEM-mediated vs.\ other mechanisms
- A more sensitive outcome measure for clinical trials targeting PEM specifically

*Testable Prediction.*
In a cohort of ME/CFS patients completing both SF-36 and FUNCAP, the consequence gap (difference between equivalent domains) should correlate with (a) Day 1-to-Day 2 VO#sub[2]max decline on 2-day CPET (r > 0.4), (b) post-exercise IL-6/TNF-alpha elevation at 24h, (c) patient-reported PEM severity on DSQ-PEM. If the gap does not correlate with objective PEM markers, it is noise, not signal.

*Limitations.*
The consequence gap as a derived metric is novel and untested. SF-36 and FUNCAP have different scoring systems and domain structures, requiring careful statistical mapping to make scores comparable. The prediction of correlation with biological PEM markers has not been tested.
]

=== Comparison to Other Chronic Diseases

The functional impairment of ME/CFS is frequently underestimated by clinicians unfamiliar with the disease:

    - *Functional capacity*: Severely affected ME/CFS patients (approximately 25% of the population @Pendergrast2020housebound) are housebound or bedbound, requiring assistance with basic activities of daily living. This level of disability is comparable to advanced multiple sclerosis or late-stage heart failure
    - *Cognitive impairment*: Processing speed, attention, and working memory deficits in ME/CFS are comparable to those seen in mild traumatic brain injury or early-stage dementia
    - *Pain burden*: Pain severity in ME/CFS is comparable to fibromyalgia and rheumatoid arthritis
    - *Overall quality of life*: Multiple studies using different instruments consistently rank ME/CFS among the most disabling chronic conditions, yet it receives a fraction of the research funding allocated to diseases with comparable burden

=== Economic Burden

The economic impact of ME/CFS is substantial and largely borne by patients and their families:

    - *Direct medical costs*: Estimated at \$9,000–14,000 per patient per year in the US, driven by specialist consultations, medications, and diagnostic testing @Jason2017housebound
    - *Lost productivity*: The dominant economic cost. With unemployment rates of 35–69% and reduced productivity among those who remain employed, annual US economic losses are estimated at \$17–24 billion @Jason2020economic
    - *Informal caregiving*: Family caregivers provide substantial unpaid care, with estimated value exceeding direct medical costs. Caregiver burden is associated with reduced caregiver quality of life, lost caregiver productivity, and increased caregiver healthcare utilization
    - *Cost-per-DALY*: ME/CFS ranks among the most cost-effective diseases to research given the large gap between disease burden and research investment

=== Impact on Caregivers

The burden on caregivers—typically spouses, parents, or adult children—is severe and under-studied:

    - *Physical burden*: Assisting with personal care, household tasks, and medical management for patients who cannot perform these independently
    - *Psychological burden*: Witnessing a loved one's suffering and decline, managing their own grief and frustration, and coping with the social isolation that accompanies caregiving for a housebound patient
    - *Financial burden*: Loss of the patient's income, potential reduction in the caregiver's working hours, and out-of-pocket medical expenses not covered by insurance
    - *Social isolation*: Caregivers often become socially isolated alongside the patient, losing their own social connections and recreational activities
    - *Relationship strain*: The transformation from partner to caregiver fundamentally alters the relationship dynamic and can create resentment, guilt, and grief on both sides

== Mortality Studies
<sec:mortality>

Understanding mortality patterns in ME/CFS is essential for both clinical practice and actuarial assessment (life insurance underwriting). While early concerns suggested potentially elevated mortality, large population-based cohort studies have provided more nuanced evidence. This section synthesizes findings from registry studies, clinical cohorts, and memorial record analyses.

#limitation(title: [ME/CFS Mortality Data: Memorial Records vs.\ Registry Studies])[
Claims about ME/CFS mortality are subject to a fundamental evidence gap. Memorial record studies report dramatically reduced life expectancy (mean age at death 52–56 years), but these studies capture only deaths reported to patient organisations, inherently overrepresenting severe and fatal cases. Population-based registry studies (Roberts et al.\ 2016, Smith et al.\ 2006) find no elevated all-cause mortality. Neither design answers the critical question: does ME/CFS _cause_ premature death, or do premature deaths from other causes preferentially enter memorial records? Until prospective cohort studies with $gt.eq$20-year follow-up and severity stratification are conducted, the true mortality risk of ME/CFS cannot be reliably estimated.
]

=== All-Cause Mortality: Evidence from Population Cohorts
<subsec:all-cause-mortality>

==== Large Registry-Based Studies

The most rigorous evidence comes from population-based registry studies with appropriate comparison groups:

*Roberts et al.\ (2016) – England and Wales National Registry.*
This landmark study published in _The Lancet_ @Roberts2016 analyzed mortality in 2,147 ME/CFS patients identified through English and Welsh general practice registries, with 7-year follow-up (2007–2013). The study recorded 17 deaths during follow-up.

*Key findings:*

    - *All-cause mortality SMR: 1.14* (95% CI: 0.65–1.85, $p = 0.67$)
    - No statistically significant elevation in all-cause mortality
    - Cancer-specific SMR: 1.39 (95% CI: 0.60–2.73, $p = 0.45$) – not significant
    - *Suicide-specific SMR: 6.85* (95% CI: 2.22–15.98, $p = 0.002$) – _highly significant_

Notably, 5 of the 17 deaths were suicides, and 60% of suicide victims had no documented depression diagnosis. The authors interpreted this as suggesting that ME/CFS-specific factors (functional limitation, hopelessness about prognosis, dismissive medical encounters) may contribute to suicide risk independent of comorbid psychiatric conditions, though the small sample size (n=5 suicides) limits the strength of this inference.

*Smith et al.\ (2006) – US Multi-Center Cohort.*
A US study @Smith2006 followed 1,201 patients with chronic fatigue for up to 14 years, using National Death Index (NDI) linkage for mortality ascertainment.

*Key findings:*

    - *All-cause mortality: No elevation* above expected rates for age and sex
    - *Suicide rate: $>$8 times higher* than US general population
    - SMR for suicide particularly elevated in “chronic fatigue” not meeting full CFS criteria (SMR: 14.2) compared to CFS (SMR: 3.6)
    - The authors noted that the higher suicide rate in chronic fatigue (vs.\ CFS) patients may reflect the additional burden of lacking a recognized diagnosis

==== Conflicting Evidence: Memorial Record Studies

Studies based on memorial records and caregiver surveys have reported more concerning findings, but these suffer from significant selection bias toward severely ill and deceased patients:

*McManimen et al.\ (2016) – Caregiver Survey.*
Analysis of 56 deaths reported by caregivers @McManimen2016 found:

    - Mean age at death: *55.9 years* vs.\ 73.5 years in general population ($p < 0.0001$)
    - 48.2% of deceased were bedridden before death
    - Mean age at cardiovascular death: 58.8 years vs.\ 77.7 years ($p < 0.0001$)

*Critical limitation:* Memorial records inherently overrepresent severe cases and premature deaths (survivors do not appear in memorials). This creates profound selection bias.

  // TODO: needs #table() wrapper
[*Sirotiak, Amro (2025) – Updated Memorial Analysis.*],
The most recent memorial record analysis @Sirotiak2025 examined 505 deaths:

    - Mean age at death: *52.5 years* (SD = 16.7)
    - Most frequent causes: ME/CFS complications (28.3%), suicide (25.4%), cancer (23.0%), cardiovascular disease (14.2%)

While concerning, these findings must be interpreted cautiously given selection bias. The authors acknowledge that memorial records may capture “the tip of the iceberg” of severe, fatal cases rather than representing typical ME/CFS mortality patterns.

=== Cause-Specific Mortality
<subsec:cause-specific-mortality>

==== Suicide: The Most Robust Finding

Across _all_ study types—registry cohorts, clinical cohorts, and memorial records—suicide mortality is consistently and substantially elevated:



#figure(
  table(
    columns: (auto, auto, auto),
    // TODO: fix columns

    [*Study*], [*SMR or Rate Ratio*], [*Significance*],

    [Roberts et al.\ (2016)], [6.85], [$p = 0.002$],

    [Smith et al.\ (2006) – CFS], [3.6], [Significant],

    [Smith et al.\ (2006) – Chronic Fatigue], [14.2], [Highly significant],

    [Jason et al.\ (2006)], [2nd most common cause], [—],
  ),
  caption: [Suicide Mortality Across ME/CFS Studies],
) <tab:suicide-mortality>


*Suicidal Ideation Prevalence.*
Cross-sectional surveys reveal alarming rates of suicidal thoughts:

    - *39–57%* of moderately to severely ill ME/CFS patients report suicidal ideation @Chu2021suicide
    - Compare to *4%* in general US population
    - *7.1%* have suicidal ideation _without_ clinical depression @Brown2020

*Risk Factors for Suicide in ME/CFS.*
Research has identified ME/CFS-specific suicide risk factors distinct from typical psychiatric risk factors @Brown2020:

    - *Severe functional limitations* (strongest predictor)
    - Use of “CFS” diagnostic label (associated with stigma) – 2.81$times$ increased risk
    - Absence of comorbidities (paradoxically increases risk, possibly due to lack of medical legitimacy) – 3.48$times$ increased risk
    - Lack of social support and financial resources
    - Hopelessness about prognosis and treatment availability
    - Stigma and gaslighting from healthcare providers

Notably, 60% of ME/CFS patients who died by suicide in the Roberts cohort had _no documented depression diagnosis_, suggesting that ME/CFS-specific suffering—not psychiatric comorbidity—drives suicide risk.

==== Cardiovascular Mortality: Conflicting Evidence

*Concerning Signals from Memorial Records.*
Memorial record studies suggest elevated cardiovascular mortality:

    - Mean age at cardiovascular death: 58.8 years vs.\ 77.7 years @McManimen2016
    - Cardiovascular disease: 14.2% of deaths in recent memorial analysis @Sirotiak2025
    - Heart failure identified as most common cause of death in Jason et al.\ (2006) @Jason2006

*Cardiovascular Disease Prevalence.*
Epidemiological surveys suggest elevated cardiovascular disease prevalence in ME/CFS:

    - Approximately *25%* of ME/CFS patients report history of heart disease or hypertension vs.\ approximately *5%* in the general population @Komaroff1991symptoms
    - A systematic review and meta-analysis estimated *51.4%* prevalence of any cardiac abnormalities @vanCampen2019cardiac
    - Analysis of 2021–2022 NHIS data reported aOR 3.26 (95% CI: 2.85–3.72, $p < 0.001$) for cardiovascular disease after adjusting for traditional risk factors @Denu2025cardiovascular

*Mechanism Uncertainty.*
Critically, cardiovascular dysfunction in ME/CFS does _not_ appear to follow typical atherosclerotic pathways. Instead, it is characterized by:

    - Reduced stroke volume and cardiac output
    - Impaired cerebral blood flow
    - Small heart size (“athlete's heart” in reverse)
    - These abnormalities are _not_ influenced by deconditioning

*Implication:* Standard cardiovascular risk models developed for atherosclerotic disease may not apply to ME/CFS. Whether this translates to elevated mortality risk remains unclear, and large registry studies have not confirmed elevated cardiovascular mortality.

==== Cancer Mortality: No Evidence of Elevation

Despite cancer appearing in memorial records (23.0% of deaths @Sirotiak2025), population-based studies find no significant elevation:

    - Roberts et al.: Cancer-specific SMR 1.39 (95% CI: 0.60–2.73, $p = 0.45$) @Roberts2016
    - Age at cancer death in memorial records not significantly different from general population

=== Actuarial and Insurance Industry Perspective
<subsec:actuarial-perspective>

==== Mortality Risk Assessment

The insurance industry has begun evaluating ME/CFS mortality risk. Gen Re, a major global reinsurer, published an analysis in 2023 @GenRe2023 concluding:

#quote[
“There seems to be no significant difference between all-cause mortality rates of ME/CFS patients and the general population.”
]

However, the report notes that patients with “very severe fatigue” may have elevated cardiovascular mortality, though evidence remains limited.

==== Disability vs.\ Mortality: The Primary Actuarial Concern

Critically, *disability—not mortality—represents the primary actuarial risk* in ME/CFS:

    - Recovery rates: $<$10%
    - Unemployment: 35–69%
    - Annual US economic costs: \$17–24 billion
    - Functional impairment drives actuarial risk more than mortality

This distinction matters: life insurance underwriters assess _mortality_ risk, while disability insurers assess _functional capacity_. ME/CFS poses greater risk to the latter.

=== Methodological Challenges and Evidence Quality
<subsec:mortality-methodology>

==== Why Study Results Differ

The stark discrepancy between registry studies (no elevated all-cause mortality) and memorial records (mean age at death 52–56 years) reflects methodological differences:

    - *Selection bias:* Memorial records capture only deaths, inherently overrepresenting severe and fatal cases. Registry studies capture all diagnosed patients regardless of outcome.

    - *Case definition:* Broader “chronic fatigue” definitions (Smith et al.) vs.\ strict ME/CFS criteria (Roberts et al.) vs.\ patient-identified cases (memorial records) represent different populations.

    - *Cohort source:* Clinical cohorts (treatment-seeking patients) vs.\ population-based registries (all diagnosed patients) vs.\ memorial nominations (deceased patients) have fundamentally different selection mechanisms.

    - *Follow-up duration:* Longer studies (Smith: 14 years) may capture delayed mortality effects better than shorter studies (Roberts: 7 years).

==== Highest-Quality Evidence

The most methodologically rigorous studies are:

    - *Roberts et al.\ (2016):* $n = 2{,}147$, 7-year follow-up, registry-based, appropriate comparison group @Roberts2016
    - *Smith et al.\ (2006):* $n = 1{,}201$, up to 14-year follow-up, clinic-based with NDI linkage @Smith2006

Both studies found _no elevation in all-cause mortality_ but _substantial elevation in suicide mortality_.

=== Summary: Evidence-Based Conclusions
<subsec:mortality-summary>

    - *All-cause mortality:* No consistent evidence of elevation in large, well-designed cohort studies with appropriate comparison groups. Memorial record studies showing early death are subject to severe selection bias.

    - *Suicide mortality:* _Consistently and substantially elevated_ (6–8$times$ general population) across all study types. This represents a legitimate and well-documented mortality risk.

    - *Cardiovascular mortality:* Conflicting evidence. Memorial records suggest elevation, but mechanism differs from atherosclerotic disease and large registry studies have not confirmed excess mortality. Requires further research.

    - *Cancer mortality:* No evidence of elevation in population-based studies.

    - *Life expectancy:* Cannot be reliably estimated due to methodological limitations. Best available evidence suggests normal life expectancy for all-cause mortality, with elevated suicide risk as the primary exception.

    - *Actuarial implications:* _Disability_ represents greater actuarial risk than _mortality_ in ME/CFS. Life insurance underwriters may focus on suicide risk (well-documented) but have weak evidence for blanket mortality risk assessment.

The robust evidence of elevated suicide mortality—particularly among patients without comorbid depression—highlights suicide prevention as a critical clinical priority in ME/CFS care. Risk factors include severe functional limitation, lack of social support, medical dismissal, and hopelessness about prognosis. Clinical interventions should address ME/CFS-specific suffering (energy limitations, loss of identity and purpose, medical gaslighting) rather than treating suicide risk as a purely psychiatric issue.
== Comorbidity Studies
<sec:comorbidity-studies>

ME/CFS rarely occurs in isolation. Comorbid conditions are the rule rather than the exception, and their recognition and treatment is a clinical priority (Section @sec:comorbidity-management).

=== Patterns of Comorbid Conditions

The most frequently co-occurring conditions form a recognizable cluster:

    - *Fibromyalgia*: 50–70% overlap. Shared features include widespread pain, fatigue, cognitive dysfunction, and sleep disturbance. Whether fibromyalgia and ME/CFS represent distinct entities or overlapping phenotypes of a common pathophysiology remains debated
    - *Postural orthostatic tachycardia syndrome (POTS)*: 50–70% prevalence in ME/CFS cohorts. POTS may develop concurrently with or subsequent to ME/CFS onset
    - *Mast cell activation syndrome (MCAS)*: Estimated 15–30% prevalence, likely underdiagnosed @Wirth2023. MCAS explains many of the “allergic” and inflammatory symptoms in ME/CFS
    - *Hypermobile Ehlers-Danlos syndrome (hEDS)*: Elevated co-occurrence, potentially reflecting shared connective tissue and autonomic dysfunction. The ME/CFS–POTS–hEDS–MCAS tetrad is increasingly recognized as a distinct clinical phenotype
    - *Irritable bowel syndrome (IBS)*: 50–60% prevalence. Reflects autonomic GI dysfunction and gut barrier impairment
    - *Migraine*: 30–50% prevalence, potentially related to neuroinflammation and autonomic dysfunction
    - *Endometriosis*: Women with endometriosis have 2.79-fold higher odds of developing ME/CFS (OR 2.79, 95% CI 2.00–3.89; pooled OR 2.52, 95% CI 2.45–2.60 across 13 studies, $n$ up to 134,805) @Compton2025endometriosis. ME/CFS prevalence in endometriosis patients is approximately 17%, and endometriosis prevalence in ME/CFS patients approximately 13%. Shared mechanisms are likely to include chronic immune activation, mast cell involvement, and neuroinflammatory features—both conditions involve dysregulated immune tolerance. Importantly, 54% of included studies relied on self-reported endometriosis, and prevalence heterogeneity is extreme ($I^2 > 98\%$), warranting caution in applying population estimates to individual patients
    - *Interstitial cystitis/painful bladder syndrome*: Elevated prevalence, part of the central sensitization spectrum

=== Temporal Relationships

Comorbidities may precede, coincide with, or develop after ME/CFS onset:

    - *Pre-existing*: hEDS, MCAS, and migraine often predate ME/CFS onset, suggesting they may represent predisposing factors or shared vulnerability
    - *Concurrent onset*: POTS and fibromyalgia frequently develop alongside ME/CFS, often triggered by the same infectious event
    - *Secondary development*: IBS, depression, and anxiety typically develop after ME/CFS onset and may represent consequences of the disease or its associated physiological disruption
    - *Progressive accumulation*: Many patients report accumulating additional diagnoses over time, consistent with progressive multi-system dysfunction

=== Shared Mechanisms

The clustering of comorbidities in ME/CFS suggests shared underlying mechanisms rather than coincidental co-occurrence (see Chapter @ch:integrative-models for detailed models):

    - *Autonomic dysfunction*: A common denominator linking POTS, IBS, temperature dysregulation, and bladder dysfunction
    - *Central sensitization*: May underlie fibromyalgia, migraine, IBS, and interstitial cystitis
    - *Immune dysregulation*: Connects MCAS, autoimmune features, and chronic inflammation
    - *Connective tissue abnormality*: hEDS-associated tissue laxity may contribute to vascular compliance issues (POTS), visceral hypermobility (IBS), and joint instability
    - *Neuroinflammation*: May simultaneously produce cognitive dysfunction, pain, autonomic instability, and mood disturbance

== Reproductive Health and Pregnancy Outcomes
<sec:reproductive-health-pregnancy>

ME/CFS disproportionately affects women during their reproductive years, with a 3–4:1 female predominance @jason2018prevalence and modulation by reproductive life events @Thomas2022sexDifferences. Reproductive and gynecological health represents one of the most evidence-sparse areas in ME/CFS research, constituting a significant knowledge gap with direct clinical and patient-quality-of-life implications.

=== Gynecological History

Population-based case-control studies demonstrate that women with ME/CFS have markedly different gynecological histories from matched controls @boneva2011gynecological @boneva2015menopause:

    - *Early menopause*: Mean age at menopause 37.6 years in ME/CFS vs.\ 48.6 years in controls @boneva2015menopause. *Caveat:* 55% of ME/CFS cases in the same cohort underwent hysterectomy (vs.\ 19% of controls); the 37.6-year figure likely includes surgically-induced events, so the apparent 11-year disparity partly reflects higher hysterectomy rates rather than accelerated natural ovarian aging alone.
    - *Excessive menstrual bleeding*: 74% vs.\ 43% of controls @boneva2015menopause
    - *Hysterectomy*: 55% vs.\ 19% of controls @boneva2015menopause
    - *Pelvic pain*: 22% vs.\ 2% of controls @boneva2011gynecological
    - *Endometriosis*: 36% vs.\ 17% of controls @boneva2011gynecological

These patterns suggest that the same neuroendocrine and immune dysfunction driving ME/CFS also affects reproductive hormonal regulation. Alternatively, gynecological conditions may be independent co-occurring manifestations of a shared underlying vulnerability.

=== Pregnancy Outcomes

#limitation(title: [Pregnancy Outcomes in ME/CFS: Extremely Limited Evidence Base])[
Only one quantitative primary study has directly compared pregnancy outcomes before and after CFS onset in the same women @Schacterle2004pregnancy. No independent replication exists as of 2026. The systematic review of ME/CFS and pregnancy (16 studies, 4 quantitative) concluded that the evidence base is "highly limited and inconclusive" with no prospective controlled studies @Slack2023pregnancyReview. All findings below should be interpreted as hypothesis-generating signals, not established clinical facts.
]

The Schacterle & Komaroff (2004) retrospective questionnaire study ($n = 86$ women, 252 pregnancies) compared outcomes before vs.\ after CFS onset within the same women @Schacterle2004pregnancy:

    - *Spontaneous abortion rate*: 30% in post-onset pregnancies vs.\ 8% in pre-onset pregnancies (statistically significant)
    - *Offspring developmental delays or learning disabilities*: 21% vs.\ 8% in post-onset vs.\ pre-onset pregnancies
    - *Symptom change during pregnancy*: 41% no change, 30% *improved*, 29% worsened
    - Most maternal complications did not differ significantly

The within-person design (same women before and after CFS onset) partially controls for individual baseline risk, but cannot account for maternal age at conception, which is a known confound for both spontaneous abortion and offspring neurodevelopment.

#speculation(title: [Postpartum Immune Reconstitution as ME/CFS Onset and Relapse Trigger])[
Rapid postpartum withdrawal of progesterone and estrogen—hormones with immunomodulatory and autonomic effects—may trigger an immune reconstitution event that precipitates ME/CFS onset or exacerbates existing disease. (Certainty: 0.30)

*Rationale.* Pregnancy is characterized by progesterone-mediated immunosuppression that shifts the maternal immune system toward immune tolerance. Postpartum progesterone/estrogen collapse occurs within days of delivery. In women with pre-existing immune dysregulation or genetic susceptibility, this rapid hormonal shift may trigger a maladaptive immune reconstitution response analogous to the immune reconstitution inflammatory syndrome (IRIS) seen following antiretroviral therapy. A 2023 systematic review found that postpartum relapse at 3–6 months is a recognizable clinical pattern in ME/CFS @Slack2023pregnancyReview. Pregnancy is reported as a trigger for ME/CFS onset in 3–10% of cases @Thomas2022sexDifferences.

*Evidence Link.* The symptom improvement seen in 30% of ME/CFS patients during pregnancy @Schacterle2004pregnancy is consistent with progesterone-mediated immunosuppression providing temporary benefit; the return of symptoms or new-onset disease postpartum would then reflect the reversal of this effect. This mirrors the established observation that multiple sclerosis and rheumatoid arthritis often improve during pregnancy and flare postpartum.

*Testable Predictions.*
- Symptom improvement during pregnancy should correlate with progesterone levels
- Postpartum relapse timing should correlate with the rate of hormonal withdrawal
- Women carrying polymorphisms in progesterone receptor or immunomodulatory genes should show different pregnancy response patterns
- Progesterone supplementation during the postpartum period (if safe) should reduce relapse probability

*Limitations.* The proposed mechanism is entirely inferential—no studies have measured progesterone levels longitudinally in ME/CFS patients during and after pregnancy. The 30% improvement rate is from an unreplicated retrospective study. Cross-disease analogies (MS, RA) suggest the mechanism is plausible but do not confirm it in ME/CFS.
] <spec:postpartum-immune-reconstitution>

=== Mechanistic Speculations

#speculation(title: [Pregnancy as a Natural Subtype Stratifier in ME/CFS])[
The tripartite split in Schacterle & Komaroff 2004—30% improve, 29% worsen, 41% unchanged—could reflect three pathophysiological subtypes with opposite responses to the gestational hormonal environment. The proportions are, however, fully consistent with random noise at $n = 86$; the hypothesis requires prospective pre-stratification before this can be distinguished from chance. (Certainty: 0.35)

*Proposed Subtype-Response Mapping.*
- *Autoimmune-dominant subtype*: Women with autoantibodies (β2-adrenoceptor, M3-AChR) may improve during pregnancy due to progesterone-driven Th2 shift and elevated regulatory T cells suppressing autoantibody-mediated vasoconstriction
- *Dysautonomia-dominant subtype (POTS)*: Increased plasma volume during pregnancy (40–50% expansion) may stabilize orthostatic intolerance, producing improvement—the same mechanism used to manage POTS with volume expansion strategies
- *Metabolic/mitochondrial-dominant subtype*: The 15–25% increase in metabolic demand of pregnancy, combined with pre-existing mitochondrial insufficiency, may overwhelm energy reserves, producing worsening

*Evidence Link.* The tripartite split @Schacterle2004pregnancy; hormonal immunomodulation in pregnancy @Thomas2022sexDifferences; the POTS-blood-volume mechanism @Blitshteyn2026POTSmenopause; ME/CFS mitochondrial impairment literature.

*Testable Predictions.*
- Pre-pregnancy stratification by autoantibody panel, tilt-table response, and CPET workload threshold will predict pregnancy trajectory with concordance > 0.60
- Specifically: autoantibody-positive women will predominate among improvers; low-CPET-threshold women will predominate among worseners

If retrospectively validated, this would transform pregnancy into a practical phenotyping tool and potentially guide subtype-targeted therapies.

*Limitations.* The Schacterle 2004 sample is retrospective and unreplicated. All three proposed subtypes are inferred; no prospective study has stratified patients pre-pregnancy. Plasma volume expansion studies specific to ME/CFS in pregnancy do not exist.
] <spec:pregnancy-subtype-stratifier>

#speculation(title: [Postpartum Immune Reconstitution Inflammatory Syndrome (PRIS)])[
The 3–6 month postpartum relapse window observed in ME/CFS @Slack2023pregnancyReview may represent a specific syndrome analogous to HIV-IRIS: pathological immune reactivation against persistent viral reservoirs (EBV, HHV-6, parvovirus B19) when pregnancy-associated immune tolerance collapses. (Certainty: 0.35)

*Mechanism.* Pregnancy induces profound immune tolerance: elevated regulatory T cells, decreased NK cytotoxicity, IDO-mediated tryptophan catabolism in the placenta, and Th2 polarization. Within 3–6 months postpartum, this tolerance reverses as estrogen and progesterone fall. In women with latent viral reservoirs or prior immune priming (ME/CFS pathogenesis), the immune reconstitution may produce chronic inflammatory activation instead of returning to homeostasis—crystallizing into established or worsened ME/CFS.

*Evidence Link.* Postpartum relapse timing from @Slack2023pregnancyReview; immune reconstitution mechanism from HIV-IRIS literature (not ME/CFS specific); Thomas 2022 hormonal immune interactions @Thomas2022sexDifferences.

*Testable Predictions.*
- Women developing ME/CFS within 12 months postpartum will show higher EBV/HHV-6 viral loads in first-trimester banked samples than postpartum-healthy controls
- Steeper Treg decline between 3rd trimester and 3 months postpartum in women who develop postpartum ME/CFS

*Limitations.* No longitudinal immune-hormonal data in ME/CFS pregnancies exist. The IRIS analogy is mechanistically plausible but unverified in this context.
] <spec:pris-postpartum>

#speculation(title: [Allopregnanolone Withdrawal as Postpartum Crash Driver])[
Allopregnanolone—a progesterone metabolite and GABA-A positive allosteric modulator—reaches concentrations 10–100-fold above baseline during late pregnancy and collapses precipitously postpartum. In women with subclinical autonomic or sleep instability (as in ME/CFS), this neurosteroid withdrawal may directly amplify ME/CFS pathophysiology. (Certainty: 0.25)

*Mechanism.* Allopregnanolone maintains autonomic stability and reduces HPA reactivity via GABA-A potentiation. The brexanolone (synthetic allopregnanolone analog) mechanism in postpartum depression provides proof-of-concept that postpartum allopregnanolone withdrawal can drive neurological and affective dysfunction. ME/CFS features autonomic dysregulation, HPA axis abnormalities, and sleep disruption—all of which allopregnanolone suppresses in physiological doses.

*Evidence Link.* @Slack2023pregnancyReview (postpartum relapse); @Thomas2022sexDifferences (neuroendocrine modulation of ME/CFS); brexanolone-PPD literature.

*Testable Predictions.*
- Postpartum women developing ME/CFS will show a steeper allopregnanolone decline trajectory (3rd trimester to 6 weeks postpartum) than postpartum-healthy controls
- A graduated postpartum taper of micronized progesterone over 4–8 weeks will reduce ME/CFS incidence in high-risk women compared to abrupt cessation

*Limitations.* Hormonal interventions in the postpartum period have safety considerations, particularly regarding breastfeeding. No studies have measured allopregnanolone longitudinally in ME/CFS pregnancies.
] <spec:allopregnanolone-postpartum>

#speculation(title: [Endometriosis–ME/CFS Shared Mast Cell and Neuroinflammatory Axis])[
The OR 2.79 for endometriosis in ME/CFS @Compton2025endometriosis is too high to be coincidence or referral bias alone. Both conditions share mast cell hyperactivation, peripheral nerve sensitization, estrogen-driven inflammation, and microbiome dysbiosis. (Certainty: 0.35)

*Mechanism.* Endometriosis lesions produce IL-1β, TNF-α, and NGF—chronic low-grade systemic inflammation that may seed central sensitization. Conversely, ME/CFS-associated immune dysregulation may permit retrograde menstruation implants to escape immune clearance. MCAS co-occurs in both conditions and may represent the shared effector pathway (mast cell tryptase → mast cell-nerve interaction → central sensitization).

*Evidence Link.* @Compton2025endometriosis (meta-analysis OR 2.79); @boneva2011gynecological (gynecological history); MCAS–ME/CFS overlap literature.

*Testable Predictions.*
- ME/CFS patients with comorbid endometriosis will show higher serum tryptase, IL-1β, and NGF than ME/CFS-only patients matched for severity
- Laparoscopic excision of endometriotic lesions will reduce ME/CFS symptom severity by > 20% on a validated scale at 12 months in > 40% of dual-diagnosis patients

*Limitations.* No studies have compared immune profiles in ME/CFS patients stratified by endometriosis comorbidity. Surgical evidence does not yet exist.
] <spec:endometriosis-mast-cell>

#speculation(title: [Iron-Hepcidin Axis Linking Heavy Menses, Pregnancy, and ME/CFS Fatigue])[
The elevated rates of menorrhagia (74% vs.\ 43% controls) and hysterectomy (55% vs.\ 19% controls) in ME/CFS @boneva2015menopause imply a high chronic blood loss burden. Inflammation upregulates hepcidin, blocking iron absorption and creating functional iron deficiency despite potentially normal serum ferritin. This mechanism may explain a treatable contributor to fatigue in a subset of women with ME/CFS. (Certainty: 0.22)

*Mechanism.* Chronic inflammation elevates hepcidin (IL-6-driven liver production), which downregulates ferroportin on enterocytes and macrophages, reducing iron bioavailability. Mitochondrial enzymes requiring iron as cofactors (cytochrome c oxidase, aconitase) are impaired, reducing ATP production. This is compounded by the doubled iron demand of pregnancy. The pattern resembles "anemia of chronic disease" — normal or elevated ferritin with low functional iron availability.

*Evidence Link.* @boneva2015menopause (menorrhagia, hysterectomy); ME/CFS mitochondrial literature; hepcidin-inflammation literature.

*Testable Predictions.*
- ME/CFS women will show elevated hepcidin/ferritin ratios compared to healthy menstruating controls
- IV iron infusion will improve fatigue scores in ME/CFS women with elevated hepcidin more than in those with normal hepcidin (effect size difference > 0.4 SD)

*Limitations.* No studies have measured hepcidin specifically in ME/CFS. The mechanism is inferential from separate literatures.
] <spec:iron-hepcidin-mecfs>

#speculation(title: [Early Menopause as a Marker of Accelerated Ovarian Aging in ME/CFS])[
The 11-year acceleration in mean menopause age in ME/CFS (37.6 vs.\ 48.6 years) @boneva2015menopause parallels findings in autoimmune diseases (systemic lupus erythematosus, rheumatoid arthritis) and may reflect chronic immune-mediated follicular atresia or HPG axis suppression from chronic HPA dysregulation. Anti-Müllerian hormone (AMH) would provide a tractable early biomarker. (Certainty: 0.35)

*Mechanism.* Potential drivers include: (1) chronic inflammation accelerating follicular atresia via IL-1β/TNF-α-mediated apoptosis, (2) anti-ovarian autoantibodies (analogous to anti-ovarian autoimmunity in premature ovarian insufficiency), (3) mitochondrial dysfunction impairing oocyte ATP supply, (4) HPG axis suppression from chronic HPA axis dysregulation. Each mechanism is plausible in ME/CFS but untested.

*Evidence Link.* @boneva2015menopause; analogy to autoimmune premature ovarian insufficiency.

*Testable Predictions.*
- Age-matched ME/CFS women aged 25–40 will have AMH levels > 1 SD below healthy controls
- AMH will correlate negatively with disease duration (r < −0.30)

*Limitations.* The Boneva 2015 cohort was small ($n = 84$ cases). No direct measurement of ovarian reserve in ME/CFS exists.
] <spec:early-menopause-amh>

*Research Directions in Reproductive Pharmacology.*
Several drug repurposing and supplement strategies warrant investigation in reproductive-age women with ME/CFS:

    - *Estriol*: In multiple sclerosis, oral estriol 8 mg/day reduces relapse rates (parallel to the 30% pregnancy improvement in ME/CFS). If ME/CFS shares neuroinflammatory mechanisms with MS, estriol may benefit the autoimmune-subtype subgroup @Schacterle2004pregnancy. (Certainty: 0.12 — highly speculative; direct evidence absent)
    - *Hydroxychloroquine in endometriosis–ME/CFS overlap*: HCQ reduces type I interferon signaling, is safe in pregnancy, and benefits lupus. If endometriosis-comorbid ME/CFS has autoimmune-leaning pathology @Compton2025endometriosis, a subgroup-targeted trial is warranted. Certainty: 0.12
    - *DHEA supplementation*: HPA dysregulation in ME/CFS may produce relative DHEA-S deficiency. DHEA is a precursor to estrogens and androgens and supports immune function. Certainty: 0.20
    - *Cycle-phase titration of LDN*: Estrogen modulates μ-opioid receptor density; some patients report cycle-phase efficacy variation. A targeted dose adjustment (3 mg → 4.5 mg in luteal phase) is testable in a crossover design. Certainty: 0.15
    - *Choline + DHA supplementation in ME/CFS pregnancy*: Given the 21% offspring developmental delay signal @Schacterle2004pregnancy, optimizing one-carbon metabolism (choline) and fetal brain development (DHA) in ME/CFS pregnancies is mechanistically rational. Certainty: 0.18

All pharmacological ideas in this section are research-stage only. They constitute hypothetical treatment directions, not clinical recommendations. No prospective trial evidence in ME/CFS populations exists for any of these agents in a reproductive health context.

=== Offspring Outcomes

The finding of elevated offspring developmental delays (21% vs.\ 8%) in Schacterle 2004 has not been independently replicated @Schacterle2004pregnancy. If confirmed, the most parsimonious mechanism would involve maternal immune activation during pregnancy (elevated cytokine levels crossing the placental barrier) influencing fetal neurodevelopment—a model with supporting evidence from the autism research literature (prenatal maternal immune activation in rodent models). This remains hypothesis-generating only.

#open-question(title: [Does Maternal ME/CFS Causally Elevate Offspring Neurodevelopmental Risk?])[
If the Schacterle 2004 finding of elevated offspring developmental delays (21% vs.\ 8%) is replicated, does maternal ME/CFS causally affect fetal neurodevelopment? Potential mechanisms include: (1) maternal immune activation (elevated cytokines/complement crossing the placenta), (2) reduced placental perfusion due to autonomic cardiovascular dysfunction (reduced stroke volume), (3) medications taken for ME/CFS management during pregnancy. No causal inference is possible from a single unreplicated retrospective study. A prospective cohort study linking ME/CFS mothers to offspring developmental follow-up is needed to answer this question.
] <oq:offspring-neurodevelopment>

=== Symptom Variability Across the Menstrual Cycle

A consistent clinical observation, supported by multiple qualitative studies, is that ME/CFS symptoms fluctuate with the menstrual cycle @Pollack2023reproductiveHealth @Thomas2022sexDifferences. Most commonly reported is exacerbation during the premenstrual (late luteal, days 22–28) and menstrual phases—when estrogen and progesterone are at their lowest. Patient reports vary: some identify the entire post-ovulatory period as elevated-symptom; others specifically localize the worst days to the late luteal window. This heterogeneity suggests that individual sensitivity to the rate of progesterone withdrawal, rather than a uniform response to absolute hormone levels, drives cycle-phase variation. No controlled longitudinal study has systematically characterized cycle-phase symptom patterns with concurrent hormonal profiling and objective biomarker assessment.

=== Research Priorities

The reproductive health domain represents one of the most significant gaps in ME/CFS research. No prospective controlled study of ME/CFS pregnancy outcomes exists despite the condition having been recognized since the 1980s. Highest-priority research needs include:

    - *Prospective pregnancy cohort*: $n gt.eq 200$ women with ME/CFS followed from conception through 12 months postpartum, with matched controls, capturing spontaneous abortion, maternal severity changes, obstetric complications, and offspring outcomes
    - *Menstrual cycle symptom characterization*: 3-month daily diary study with concurrent hormonal profiling and objective activity monitoring (actigraphy), HRV, and biomarker assessment
    - *Endometriosis–ME/CFS mechanism study*: Immunophenotyping of the ME/CFS–endometriosis overlap population vs.\ ME/CFS without endometriosis to identify shared vs.\ distinct immune signatures

