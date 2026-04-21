#import "../../shared/environments.typ": *

== Differential Diagnosis
<sec:differential>

ME/CFS is a diagnosis of exclusion, requiring careful evaluation to rule out other conditions that can present with similar symptoms. This section addresses conditions that can mimic ME/CFS, distinguishing features, and the critical distinction between alternative diagnoses and comorbidities.

=== Conditions That Can Mimic ME/CFS

==== Endocrine Disorders

#requirement(title: [Must Rule Out Before Diagnosing ME/CFS])[

*Hypothyroidism:*

    - *Symptoms*: Fatigue, cognitive impairment (“brain fog”), cold intolerance, weight gain, constipation
    - *Distinguishing features*: Gradual onset, no post-exertional malaise, responds to thyroid replacement
    - *Testing*: TSH, free T4; if TSH elevated and free T4 low, hypothyroidism is confirmed
    - *Note*: Subclinical hypothyroidism (mildly elevated TSH with normal T4) is controversial; may contribute to fatigue but is insufficient to explain ME/CFS severity

*Addison Disease (Primary Adrenal Insufficiency):*

    - *Symptoms*: Profound fatigue, orthostatic hypotension, salt craving, hyperpigmentation
    - *Distinguishing features*: Progressive worsening, life-threatening if untreated, responds to cortisol replacement
    - *Testing*: Morning cortisol, ACTH stimulation test; electrolytes show hyponatremia and hyperkalemia

*Diabetes Mellitus:*

    - *Symptoms*: Fatigue, polyuria, polydipsia, weight loss
    - *Testing*: Fasting glucose, HbA1c

] <req:endocrine-exclusions>

==== Sleep Disorders

#warning-env(title: [Obstructive Sleep Apnea Can Fully Mimic ME/CFS])[

*Obstructive Sleep Apnea (OSA):*
OSA is a critical exclusion because it can produce a symptom profile nearly identical to ME/CFS:

    - *Symptoms*: Profound fatigue, unrefreshing sleep, cognitive impairment, morning headaches
    - *Distinguishing features*:
    
        - Snoring, witnessed apneas (ask bed partner)
        - Obesity (BMI \>30) is common but not required
        - *Critical*: OSA patients do NOT have post-exertional malaise with delayed onset
        - Improvement with CPAP treatment (if true OSA, dramatic improvement within weeks)
    
    - *Testing*: Polysomnography (sleep study); apnea-hypopnea index (AHI) $gt.eq 5$ events/hour is diagnostic
    - *Important*: OSA and ME/CFS can coexist; treating comorbid OSA improves but does not cure ME/CFS

*Upper Airway Resistance Syndrome (UARS):*

    - Milder form of sleep-disordered breathing
    - May have normal AHI but increased respiratory effort-related arousals (RERAs)
    - Presents with fatigue and unrefreshing sleep similar to ME/CFS

*Idiopathic Hypersomnia:*

    - Excessive daytime sleepiness despite adequate sleep duration
    - No post-exertional malaise
    - Multiple sleep latency test (MSLT) shows short sleep latency

] <warn:osa-mimic>

==== Autoimmune and Inflammatory Diseases

<obs:inflammatory-distinction>
The following autoimmune and inflammatory diseases share symptoms with ME/CFS but can be distinguished by specific biomarkers and clinical features.
*Systemic Lupus Erythematosus (SLE):*

    - *Symptoms*: Fatigue, arthralgia, cognitive impairment (“lupus fog”), photosensitivity
    - *Distinguishing features*: Malar rash, serositis (pleuritis, pericarditis), renal involvement
    - *Testing*: ANA positive (high titer, typically $gt.eq 1:160$), anti-dsDNA, anti-Sm antibodies; low complement (C3, C4); elevated ESR/CRP during flares
    - *Key distinction*: SLE has _elevated_ inflammatory markers; ME/CFS has _normal or low_ ESR/CRP

*Sjögren Syndrome:*

    - *Symptoms*: Fatigue, dry eyes (keratoconjunctivitis sicca), dry mouth (xerostomia)
    - *Distinguishing features*: Objective evidence of decreased tear/saliva production
    - *Testing*: Anti-Ro (SSA), anti-La (SSB) antibodies; Schirmer test, salivary flow rate

*Rheumatoid Arthritis:*

    - *Symptoms*: Fatigue, joint pain
    - *Distinguishing features*: Joint swelling, morning stiffness $>1$ hour, symmetric small joint involvement
    - *Testing*: Rheumatoid factor (RF), anti-CCP antibodies, elevated ESR/CRP

*Multiple Sclerosis (MS):*

    - *Symptoms*: Fatigue, cognitive impairment, sensory disturbances
    - *Distinguishing features*: Focal neurological deficits (optic neuritis, weakness, sensory loss), relapsing-remitting pattern
    - *Testing*: MRI brain and spine (demyelinating lesions disseminated in space and time), CSF oligoclonal bands

==== Hematologic Disorders

#requirement(title: [Anemia Workup])[
Hematologic disorders must be ruled out in the differential diagnosis of ME/CFS.
] <req:anemia-exclusion>

*Iron Deficiency Anemia:*

    - *Symptoms*: Fatigue, dyspnea on exertion, pica (ice chewing)
    - *Testing*: CBC shows microcytic anemia (low MCV); ferritin low (\<30 ng/mL)
    - *Note*: Iron deficiency _without anemia_ (normal hemoglobin, low ferritin) can cause fatigue and restless legs syndrome; should be treated but is insufficient to explain ME/CFS severity

*Vitamin B12 Deficiency:*

    - *Symptoms*: Fatigue, cognitive impairment, peripheral neuropathy, macrocytic anemia
    - *Testing*: B12 level \<200 pg/mL; methylmalonic acid (MMA) elevated if tissue deficiency

==== Functional Deficiency Below Diagnostic Thresholds
<sec:functional-deficiency>

Standard laboratory reference ranges are derived from population distributions, not functional outcome data. A value within the "normal" range may be insufficient for individual cellular function, particularly in chronic illness where compensatory mechanisms are impaired, acute-phase proteins mask deficiencies, and peripheral hormone conversion may be disrupted despite normal serum markers. Five domains are clinically relevant to ME/CFS evaluation.

#limitation(title: [Reference Ranges Encode Population Distributions, Not Functional Thresholds])[

The Joustra 2017 systematic review and meta-analysis (45 studies, n pooled) found no consistent differences in serum vitamin D, magnesium, B12, iron, zinc, or folate between ME/CFS/FMS patients and controls @Joustra2017. This finding is frequently cited as evidence against nutritional deficiency in ME/CFS. However, this conclusion is constrained by methodology: all included studies used standard serum assays — the same measures identified below as inadequate for detecting functional deficiency. A null result in the wrong assay does not rule out tissue-level depletion.

] <lim:joustra-serum-null>

===== Iron Deficiency Without Anemia (IDWA)

The WHO diagnostic threshold for iron deficiency is ferritin $<15$ µg/L. Clinical laboratory practice flags deficiency at $<12$–15 µg/L. However, RCT evidence demonstrates fatigue benefit at ferritin levels well above these cutoffs.

#clinical-finding(title: [Iron Supplementation Reduces Fatigue at Ferritin Up to 50 µg/L])[

Three independent bodies of evidence support a functional iron threshold substantially higher than WHO minimum:

- *Vaucher 2012 (CMAJ, n=198):* Multicentre RCT in nonanemic menstruating women with ferritin $<50$ µg/L. Iron supplementation reduced fatigue score 47.7% vs 28.8% placebo (p=0.02). Enrollment cutoff was $3times$ the WHO deficiency threshold @Vaucher2012.

- *Krayenbuehl 2011 (Blood, n=90):* Double-blind RCT, IV iron vs placebo, women with ferritin $≤50$ ng/mL and normal hemoglobin. In the subgroup with ferritin $≤15$ ng/mL, fatigue decreased 1.8 vs 0.4 points (p=0.005); 82% vs 47% reported improvement (p=0.03) @Krayenbuehl2011.

- *Yokoi 2017 (BJN, meta-analysis of 6 RCTs):* Iron supplementation significantly reduced fatigue in IDWA patients (effect size 0.33, p$lt$0.0001). Included studies used ferritin thresholds ranging from $<12$ to $<50$ µg/L, demonstrating no consensus on where "normal" ends functionally @Yokoi2017.

*Clinical threshold:* Al-Naseem 2021 (narrative review) identifies ferritin $<30$ µg/L as the threshold with high sensitivity/specificity for iron deficiency; in inflammatory states, the functional threshold rises to 100 µg/L (with transferrin saturation $<20$% as confirmatory marker) @AlNaseem2021.

*Certainty:* 0.70 (moderate-high; RCT evidence in non-ME/CFS populations; women only; effect size modest).

] <cf:idwa-fatigue>

#warning-env(title: [Ferritin "Normal" Does Not Rule Out Functional Iron Deficiency])[

A ferritin of 20–45 µg/L will be reported as "within normal range" by most clinical laboratories. In a patient with ME/CFS and unexplained fatigue, ferritin below 50 µg/L warrants clinical consideration for a trial of iron supplementation, particularly if transferrin saturation is $<20$%. In states of chronic inflammation (elevated CRP or ferritin $>100$ µg/L driven by acute-phase response), ferritin alone is unreliable and transferrin saturation becomes the primary indicator.

] <warn:idwa-threshold>

===== Magnesium — Serum vs Intracellular

#observation(title: [Serum Magnesium Is an Unreliable Marker of Body Stores])[

Only approximately 1% of total body magnesium circulates in serum; 99% is intracellular (53% bone, 27% muscle, 19% other tissues). Serum magnesium levels are tightly defended by renal excretion and remain within the reference range even when total body stores are substantially depleted. Workinger 2018 (narrative review) concludes that serum magnesium has "no reliable correlation with total body magnesium levels or concentrations in specific tissues" @Workinger2018.

Approximately 45% of Americans are magnesium-deficient by dietary intake standards despite many having serum levels within the reference range. RBC magnesium is a better proxy than serum magnesium but is not standardized across laboratories and remains imperfect.

*Clinical implication:* When evaluating fatigue, muscle cramps, or sleep disturbance in ME/CFS patients, a "normal" serum magnesium does not exclude intracellular depletion. RBC magnesium is the preferred test when magnesium status is clinically relevant @Workinger2018.

*Certainty:* 0.65 (narrative review; MDPI open-access journal; physiological principle is well-established).

] <obs:magnesium-serum-unreliable>

===== Vitamin B12 — Functional vs Serum Status

#speculation(title: [Functional B12 Deficiency May Occur with Normal Serum B12 in ME/CFS])[

Russell-Jones 2022 (observational study, n=350 CFS patients) reports that the majority showed markers of functional B12 deficiency — elevated methylmalonic acid (MMA) and abnormal urinary metabolites — despite normal to elevated serum B12. The proposed mechanism involves co-deficiency of riboflavin (B2), which is required for intracellular B12 utilization @RussellJones2022.

*Caution:* This study is published in a lower-tier open-access journal (not MEDLINE-indexed); methodology has not been independently replicated in a high-impact journal. The finding is biologically plausible and consistent with earlier work (Regland et al.) on B12 in CFS, but must be treated as hypothesis-generating only. MMA is available as a standard serum assay and can confirm functional B12 insufficiency when serum B12 is within range but tissue deficiency is suspected.

*Certainty:* 0.35 — flag as speculation; independent replication required before clinical reliance.

] <spec:b12-functional-deficiency>

===== Vitamin D — Bone Threshold vs Immune Threshold

#clinical-finding(title: [Standard Vitamin D "Sufficiency" (≥20 ng/mL) Is Below the Immune-Optimization Threshold])[

Most clinical laboratories define vitamin D sufficiency as $≥20$ ng/mL (50 nmol/L) — a threshold established for bone health. The Endocrine Society clinical practice guideline (Holick 2011) distinguishes this from the extraskeletal benefit threshold @Holick2011:

- *Bone health threshold:* $≥20$ ng/mL — basis for most lab reference ranges
- *Insufficiency zone:* 21–29 ng/mL (Endocrine Society classification)
- *Immune-optimization threshold:* 40–60 ng/mL — significant gene expression differences in immune response begin only above 30 ng/mL @Charoenngam2020

Active vitamin D (1,25-dihydroxyvitamin D) modulates T-cell and B-cell activity, cathelicidin production, and anti-inflammatory cytokine profiles. Individual variation in VDR gene expression means two patients with identical serum 25(OH)D may have substantially different cellular responses @Charoenngam2020.

*Clinical implication:* A result of 22–28 ng/mL will be flagged "normal" or at most "insufficient" by most laboratories, but is approximately half the immune-optimization target. In ME/CFS patients with immune dysregulation, targeting 40–60 ng/mL may be clinically relevant, though RCT evidence for immune endpoints in ME/CFS specifically is not yet available.

*Certainty:* 0.65 (Holick2011 is high-quality guideline; immune threshold is from observational/mechanistic data; VITAL trial showed less benefit than expected for some extraskeletal endpoints).

_Note: Holick 2011 has been partially superseded by the 2024 Endocrine Society guideline for some recommendations; the dual-threshold concept remains valid._

] <cf:vitamind-dual-threshold>

===== Thyroid — Tissue-Level Deficiency with Normal TSH

TSH-based thyroid screening classifies patients as euthyroid when TSH is within range. Two mechanisms can produce tissue-level thyroid deficiency invisible to TSH:

#hypothesis(title: [DIO2 Thr92Ala Polymorphism Impairs Intracellular T4→T3 Conversion Despite Normal TSH])[

Type II deiodinase (DIO2) converts T4 to active T3 intracellularly in the brain and pituitary. The rs225014 CC genotype of DIO2 (Thr92Ala substitution) is present in approximately 16% of the population and reduces enzyme efficiency. Panicker 2009 (JCEM, n=552 hypothyroid patients on T4 monotherapy) found that CC-genotype patients had measurably worse psychological wellbeing compared to TT-genotype (GHQ 14.1 vs 12.8, p=0.03) and greater improvement when switched to T4+T3 combination therapy (+2.3 GHQ points, p=0.03). Critically, TSH, T3, and T4 serum levels were statistically identical between genotype groups — the deficit was invisible to standard thyroid panel testing @Panicker2009.

*Relevance to ME/CFS:* A subset of ME/CFS patients with the DIO2 Thr92Ala variant may experience brain-level T3 deficiency despite normal TSH. This would explain fatigue, cognitive impairment, and cold intolerance that persists after standard hypothyroidism has been ruled out.

*Certainty:* 0.60 (JCEM, prospective, n=552; replication has been mixed; findings apply to hypothyroid patients on T4, not general or ME/CFS population).

*Falsifiability:* ME/CFS patients with DIO2 CC genotype should show disproportionate improvement on T4+T3 combination therapy compared to TT-genotype patients; absence of genotype-stratified response would disconfirm.

] <hyp:dio2-tissue-t3-deficiency>

#clinical-finding(title: [Low Free T3 and Elevated Reverse T3 in ME/CFS with Normal TSH])[

Ruiz-Núñez 2018 (Frontiers in Endocrinology, case-control, n=98 ME/CFS / 99 controls) found that ME/CFS patients showed lower FT3, total T3, and total T4 with elevated reverse T3 (rT3%), resembling a mild non-thyroidal illness syndrome (NTIS). FT3 was below the reference range in 16/98 ME/CFS patients vs 7/99 controls (OR 2.56, p=0.035). TSH was normal in all groups @RuizNunez2018.

Separately, Ott 2011 (Thyroid, prospective case-control, n=426 euthyroid women) demonstrated that histologically confirmed Hashimoto's thyroiditis substantially increased symptom burden — including chronic fatigue — independent of TSH. Anti-TPO antibody levels above 121 IU/mL were associated with significantly higher symptom counts (mean 6.7±2.5 vs 4.1±2.8, p$lt.eq$0.001) in patients with statistically identical TSH levels (1.7±1.3 vs 1.5±1.4 µU/mL) @Ott2011.

*Clinical implication:* Standard TSH-only thyroid screening misses two distinct mechanisms of fatigue: (1) impaired T4→T3 peripheral conversion (low FT3 / elevated rT3 pattern), and (2) autoimmune inflammation from Hashimoto's thyroiditis operating independently of thyroid hormone levels. FT3 and anti-TPO antibody testing should be considered in ME/CFS patients with persistent fatigue and a normal TSH, particularly when hypothyroid-like symptoms persist.

*Certainty for RuizNunez2018:* 0.55 (case-control; Frontiers journal; not replicated in large cohort). *Certainty for Ott2011:* 0.70 (prospective; histology-confirmed; Thyroid journal; small Hashimoto's subgroup n=28; women only).

] <cf:low-t3-hashimoto-normal-tsh>

#warning-env(title: [TSH Alone Is an Insufficient Thyroid Screen in ME/CFS])[

In a patient with ME/CFS and unexplained thyroid-like symptoms (fatigue, cognitive dysfunction, cold intolerance, weight changes), a normal TSH does not exclude:

    - Impaired T4→T3 conversion (check FT3, reverse T3)
    - Hashimoto's autoimmune inflammation (check anti-TPO antibodies)
    - DIO2 polymorphism-mediated tissue-level T3 deficiency (genotype testing available but not routine)

Anti-TPO positivity above 121 IU/mL in a symptomatic euthyroid patient warrants clinical attention even when TSH is normal @Ott2011.

] <warn:tsh-insufficient-screen>

==== Infectious Diseases

<obs:infection-distinction>
Distinguishing ME/CFS from active infections and post-infectious fatigue is essential for proper diagnosis and management.
*Chronic Active Infections (Must Rule Out):*

    - *HIV/AIDS*: Check HIV antibody/antigen test
    - *Hepatitis B/C*: Check HBsAg, anti-HCV
    - *Tuberculosis*: In endemic areas or high-risk patients, check tuberculin skin test or interferon-gamma release assay
    - *Lyme disease*: In endemic areas with appropriate exposure history, check Lyme serology (ELISA, Western blot)

*Post-Infectious Fatigue vs.\ ME/CFS:*
Many acute infections (influenza, mononucleosis, COVID-19) are followed by transient fatigue lasting weeks to months. Distinguish from ME/CFS by:

    - *Duration*: Post-infectious fatigue typically improves by 3–6 months; ME/CFS persists $>6$ months without improvement
    - *Post-exertional malaise*: True PEM with delayed onset and prolonged recovery is specific to ME/CFS
    - *Trajectory*: Post-infectious fatigue shows gradual improvement; ME/CFS shows plateau or worsening

This distinction is critical in the first 6 months post-infection, as aggressive pacing during this period may prevent transition to established ME/CFS.

==== Malignancy

#warning-env(title: [Occult Malignancy])[
Cancer-related fatigue can mimic ME/CFS, particularly in early stages without obvious tumor burden:

    - *Red flags*: Unintentional weight loss, night sweats, fever, lymphadenopathy, age \>50 with new-onset fatigue
    - *Screening*: Age-appropriate cancer screening (colonoscopy, mammography); if red flags present, consider CT chest/abdomen/pelvis
    - *Laboratory clues*: Anemia, elevated ESR, abnormal WBC count

] <warn:malignancy-screening>

==== Psychiatric Disorders

<obs:depression-distinction>

Major depression can cause fatigue and cognitive impairment, but several features distinguish it from ME/CFS:

*Post-Exertional Malaise (Pathognomonic for ME/CFS):*

    - *ME/CFS*: Physical or cognitive exertion triggers delayed (12–72 hours) symptom worsening lasting days to weeks
    - *Depression*: Activity may be difficult due to lack of motivation, but exertion does NOT trigger delayed physiological crashes
    - *Key question*: “If you push through and do an activity you enjoy, do you crash afterward?”
    
        - ME/CFS: Yes, even desired activities trigger PEM
        - Depression: Enjoyable activities may temporarily improve mood
    

*Anhedonia (Pathognomonic for Depression):*

    - *Depression*: Loss of interest or pleasure in previously enjoyed activities (anhedonia is a core feature)
    - *ME/CFS*: Patients _want_ to do activities but are physically unable; they retain interest but lack capacity

*Effort vs.\ Performance:*

    - *Depression*: Reduced effort (“I don't feel like doing this”), but if motivation can be mustered, performance is intact
    - *ME/CFS*: Normal or increased effort with reduced performance (“I'm trying as hard as I can but my body won't do it”)

*Objective Biomarkers:*

    - *Two-day CPET*: ME/CFS shows failure to reproduce VO#sub[2]max on Day 2; depression does not
    - *Orthostatic intolerance*: Objective POTS/NMH on testing supports ME/CFS
    - *Inflammatory markers*: Heng panel, cytokine signatures abnormal in ME/CFS

*Comorbid Depression in ME/CFS:*
Many ME/CFS patients develop *reactive depression* (consequence of severe disability, loss of career/social life). This is distinct from primary depression:

    - Reactive depression: Depression began _after_ ME/CFS onset; patient grieves loss of function
    - Primary depression: Depression preceded fatigue; fatigue is a symptom of depression

Treating comorbid depression in ME/CFS is appropriate and may improve quality of life, but antidepressants do not cure ME/CFS.
==== Eating Disorders and ME/CFS
<subsubsec:eating-disorders-differential>

Eating disorders represent one of the most consequential differential diagnostic challenges in ME/CFS, particularly in adolescents and young women. Misdiagnosis in either direction carries serious clinical risks: failing to recognize ME/CFS-driven eating difficulties leads to inappropriate psychiatric treatment and delayed nutritional support, while failing to recognize a genuine eating disorder in a patient with ME/CFS results in an untreated psychiatric condition. The two categories are not mutually exclusive—comorbidity occurs—but their management differs substantially.

*Eating Difficulties Are Common in ME/CFS.*
Approximately 10% of children and adolescents with ME/CFS experience significant eating difficulties, and over half experience nausea or abdominal pain @Harris2017eating. These difficulties are driven by organic illness mechanisms:

    - *Nausea and abdominal pain*: Upper abdominal pain and nausea significantly worsen at 1, 10, and 20 minutes after eating, consistent with visceral hypersensitivity and impaired gastric accommodation @Gijsbers2023gastric
    - *Profound fatigue*: Eating requires energy; in severe ME/CFS the effort of preparing and consuming food may exceed available energy reserves
    - *Eating as a PEM trigger*: Large meals, heavy or hard-to-digest foods, and even the upright posture required for eating can trigger post-exertional worsening via autonomic mechanisms
    - *Sensory changes*: Altered taste and smell perception, documented in ME/CFS and long COVID, reduce appetite and food palatability
    - *Sickness behavior anorexia*: Chronic elevation of pro-inflammatory cytokines (IL-1$beta$, IL-6, TNF-$alpha$, GDF-15) suppresses hypothalamic appetite circuits through well-characterized immune-to-brain signaling pathways (Chapter @ch:endocrine), producing involuntary appetite suppression without psychological control-seeking

These mechanisms create a self-reinforcing cycle: eating causes distress, so food is avoided, worsening fatigue and nutritional status, which further impairs the capacity to eat.

*Differential Diagnosis.*
The key distinction is between _organic food avoidance_ (driven by physical symptoms) and _psychologically motivated food restriction_ (driven by distorted body image or control seeking). Table @tab:ed-mecfs-differential summarizes the primary distinguishing features.



#figure(
  table(
    columns: (auto, auto, auto),
    // TODO: fix columns p{4.5cm} p{4.5cm}}
  
  [*Feature*], [*ME/CFS eating difficulties*], [*Primary eating disorder (AN/BN)*],
  
  [Motivation for restriction], [Physical inability: nausea, fatigue, pain, PEM], [Deliberate restriction; fear of weight gain; body image disturbance],
  
  [Attitude toward food], [Distress at inability to eat; wishes to eat normally], [Ambivalence, fear, or satisfaction in restriction],
  
  [Symptom sequence], [Eating difficulties follow ME/CFS onset and worsen with disease severity], [Eating disorder often antedates or precedes somatic complaints],
  
  [Activity level], [Profoundly reduced due to debility], [May be normal or elevated (compulsive exercise in AN)],
  
  [Weight loss attitude], [Patient alarmed and distressed; does not desire weight loss], [Weight loss may be goal-directed or regarded with ambivalence],
  
  [Response to nutrition], [Nutritional support generally accepted and welcomed], [May resist supplemental nutrition],
  
  [Body image], [Usually intact], [Typically distorted (perceives self as overweight despite low weight)],
  
  [PEM on eating], [Present: specific foods or large meals trigger delayed worsening], [Absent: eating may cause anxiety but not physiological crashes],
  
  [Orthostatic symptoms], [Typically present; worsen after meals], [Present only if severe malnutrition produces cardiovascular compromise],
  
  ),
  kind: table, supplement: [Table], caption: [Differential diagnosis: ME/CFS eating difficulties vs.\ primary eating disorders],
) <tab:ed-mecfs-differential>


*ARFID and ME/CFS.*
Avoidant/Restrictive Food Intake Disorder (ARFID) is a DSM-5 diagnosis covering restricted food intake due to sensory aversion, fear of adverse consequences (choking, vomiting, allergic reaction), or low appetite—without the body image disturbance of anorexia nervosa @Fisher2014arfid. ME/CFS-driven food avoidance most closely resembles ARFID's “fear of adverse consequences” subtype, where eating is avoided because it reliably triggers nausea, pain, or PEM. Whether to assign an ARFID diagnosis to an ME/CFS patient with organically driven food restriction is a clinical judgment: the label may be useful for accessing nutritional support services, but risks overpathologizing a rational adaptive response to genuine physical consequences.

*Bulimia Nervosa and ME/CFS.*
Bulimia nervosa (BN) presents a distinct set of differential diagnostic challenges from anorexia nervosa. Unlike AN, BN patients are typically of normal or near-normal weight, making weight loss an unreliable distinguishing marker. The hallmark of BN is a cycle of binge eating followed by compensatory purging behaviors (self-induced vomiting, laxative misuse, or excessive exercise) @Mehler2015bulimia.

Several BN complications can produce a clinical picture superficially resembling ME/CFS autonomic features. Repeated purging causes dehydration and electrolyte depletion—particularly hypokalemia and metabolic alkalosis (pseudo-Bartter's syndrome)—which drive orthostatic tachycardia, fatigue, and exercise intolerance @Mehler2015bulimia. A clinician unfamiliar with both conditions may mistake purging-induced orthostatic tachycardia for POTS, or purging-induced fatigue and muscle weakness for ME/CFS. The crucial differentiating features are:

    - *Purging behavior*: In BN, vomiting is intentional and compensatory (following a binge); in ME/CFS, vomiting or nausea is involuntary, driven by autonomic dysfunction, postprandial hypoperfusion, or visceral hypersensitivity
    - *Electrolyte pattern*: BN produces a characteristic hypokalemia with metabolic alkalosis @Mehler2015bulimia; ME/CFS has no characteristic serum electrolyte disturbance
    - *Reversibility*: BN-induced orthostatic and autonomic symptoms resolve with cessation of purging and nutritional restoration; ME/CFS orthostatic symptoms are primary and persistent
    - *Body image disturbance*: Present in BN; absent in ME/CFS. Patients with ME/CFS typically wish to eat normally and are distressed by weight loss, not motivated by it
    - *PEM*: Absent in BN; the defining feature of ME/CFS. Exertional worsening is not a feature of purging-induced fatigue

The published literature on BN as a specific comorbidity in ME/CFS is sparse, and the true prevalence is unknown. When both diagnoses co-exist, purging must be addressed as an independent medical risk, since it can destabilize electrolytes and worsen autonomic dysfunction in a patient already prone to orthostatic intolerance.

*Comorbidity: When Both Diagnoses Co-Exist.*
Fisher et al.\ (2002) documented four adolescents with both CFS and an eating disorder (subtype unspecified); in all four cases the eating disorder preceded the CFS diagnosis @Fisher2002cfs-ed. This sequencing suggests that eating disorders may predispose to or unmask ME/CFS in susceptible individuals—or that it reflects diagnostic delay in ME/CFS recognition rather than causal precedence. Comorbid cases require management of both conditions simultaneously, which is particularly challenging because standard eating disorder treatments may be contraindicated in ME/CFS.

*Misdiagnosis and Its Consequences.*
Misdiagnosis of ME/CFS as an eating disorder is well-documented, particularly in adolescent girls with severe disease causing significant weight loss @Baxter2021malnutrition. The clinical consequences are serious:

    - Nutritional support is withheld or delayed under the assumption that the patient is refusing food voluntarily
    - Psychiatric interventions (behavioral activation, exposure therapy, refeeding under psychological pressure) are applied to what is an organic medical condition
    - In some cases, severely ill children have been misdiagnosed with _Pervasive Refusal Syndrome_ (PRS)—a rare condition involving total refusal of food, speech, and movement—because the medical team did not recognize severe ME/CFS. The key distinction: ME/CFS patients are _frustrated_ by their inability to function and strongly desire recovery; PRS is characterized by apathy and indifference to illness @Baxter2021malnutrition
    - Tube feeding—sometimes life-saving in very severe ME/CFS—has been withheld in cases where the treating team incorrectly attributed the patient's inability to eat to an eating disorder

#warning-env(title: [Do Not Withhold Nutritional Support Pending Psychiatric Diagnosis])[
In a patient with established or suspected ME/CFS who is losing weight or unable to maintain adequate intake, nutritional assessment and support should proceed on medical grounds regardless of whether an eating disorder is simultaneously suspected. The two assessments are not mutually exclusive, and delaying nutritional intervention while pursuing psychiatric workup risks life-threatening malnutrition @Baxter2021malnutrition. See Chapter @ch:urgent-action-severe for tube feeding indications.
] <warn:ed-nutritional-delay>

*Eating Disorder Treatments Contraindicated in ME/CFS.*
Standard evidence-based eating disorder treatments require significant modification when ME/CFS is present or suspected:

    - *Graded exposure to feared foods*: If food avoidance is driven by genuine physical consequences (nausea, PEM), exposure-based approaches are inappropriate and may worsen physical status
    - *Behavioral activation*: Increasing activity to stimulate appetite is contraindicated due to PEM risk
    - *Motivational enhancement*: Assuming restriction is volitional and targeting motivation to change is inappropriate if restriction is physically driven
    - *Appropriate modifications*: Psychological support for anxiety and mood _secondary_ to eating difficulties is appropriate; pacing of meal preparation; small frequent meals; addressing nausea through medical means (antiemetics, orthostatic management) before addressing psychological components

=== Comorbid Conditions vs.\ Alternative Diagnoses

<obs:mecfs-septad>
Several conditions frequently co-occur with ME/CFS at rates far exceeding chance, suggesting shared pathophysiology:

    - *ME/CFS* (Myalgic Encephalomyelitis/Chronic Fatigue Syndrome)
    - *Fibromyalgia*: Widespread pain with tender points (30–70% of ME/CFS patients)
    - *POTS* (Postural Orthostatic Tachycardia Syndrome): (70–90% of ME/CFS patients)
    - *MCAS* (Mast Cell Activation Syndrome): Histamine-mediated symptoms (estimates 10–50%)
    - *hEDS* (Hypermobile Ehlers-Danlos Syndrome): Joint hypermobility (higher in ME/CFS than general population)
    - *IBS* (Irritable Bowel Syndrome): Functional GI symptoms (30–50% of ME/CFS patients)
    - *IC* (Interstitial Cystitis): Bladder pain, urinary frequency

*Clinical Implication:*
These conditions are *comorbidities*, not alternative diagnoses. Their presence does NOT exclude ME/CFS. In fact, meeting criteria for multiple septad conditions strengthens the ME/CFS diagnosis and suggests common underlying mechanisms (autonomic dysfunction, small fiber neuropathy, immune activation).
=== When Comorbidities May Be Primary Drivers
<sec:comorbidity-primary>

While ME/CFS and its comorbidities typically coexist, in some patients a “comorbidity” may actually be the _primary driver_ of symptoms, with ME/CFS-like presentation being downstream consequence rather than the core disease.

<obs:comorbidity-primary>
Consider whether an apparent “comorbidity” might be the primary driver when:

*MCAS/Histamine Intolerance as Primary:*

    - Symptoms fluctuate dramatically with dietary triggers (high-histamine foods)
    - Marked improvement with H1/H2 blockade disproportionate to typical ME/CFS response
    - Intestinal symptoms preceded and dominate fatigue
    - Proposed cascade: MCAS $arrow.r$ intestinal barrier dysfunction $arrow.r$ amino acid malabsorption $arrow.r$ mitochondrial failure $arrow.r$ ME/CFS phenotype (see Section @sec:gut-metabolic-cascade)

*POTS as Primary:*

    - Fatigue and cognitive symptoms are primarily orthostatic (worse upright, better supine)
    - Dramatic improvement with POTS-specific treatment (compression, fluids, fludrocortisone, ivabradine)
    - Heart rate criteria met ($gt.eq$30 bpm increase within 10 minutes of standing)
    - Consider whether “ME/CFS” is actually deconditioning secondary to untreated POTS

*Chronic Viral Reactivation as Primary:*

    - Documented elevated EBV or HHV-6 titers (especially IgM or PCR positivity)
    - Symptom flares correlate with viral reactivation markers
    - Response to antiviral therapy (valacyclovir for EBV, valganciclovir for HHV-6/CMV)
    - Cimetidine trial produces dramatic improvement (suggests immune enhancement against herpesvirus)

*Craniocervical Instability (CCI) as Primary:*

    - Symptoms markedly position-dependent
    - Hypermobility (hEDS) with progressive neurological features
    - Suboccipital headaches, neck pain, visual disturbances
    - Upright MRI shows craniocervical abnormalities (see Section @sec:septad)

*Clinical Approach: Test the Primary Driver Hypothesis.*

When a comorbidity might be primary:

    - *Prioritize that condition's workup*: Comprehensive evaluation of the suspected primary driver
    - *Targeted treatment trial*: If the comorbidity is primary, treating it should produce disproportionate improvement
    - *Assess response*: Dramatic improvement ($>$50% symptom reduction) with targeted treatment suggests the “comorbidity” was actually the primary pathology
    - *Re-evaluate if partial response*: Partial improvement suggests the comorbidity contributes but is not the sole driver; ME/CFS diagnosis remains appropriate

#warning-env(title: [Avoid Premature Reclassification])[
Do NOT reclassify ME/CFS as “just POTS” or “just MCAS” without:

    - Demonstrating that treating the suspected primary condition produces substantial, sustained improvement
    - Confirming that post-exertional malaise resolves (not just fatigue)
    - Documenting functional recovery, not just symptom reduction

Many patients have true comorbid ME/CFS + POTS + MCAS where all contribute. Treating comorbidities improves but does not cure ME/CFS in most cases.
] <warn:reclassification>

*The Cascading Comorbidity Model.*

Rather than independent conditions, the septad conditions may cascade:

    - *hEDS* $arrow.r$ Vascular laxity $arrow.r$ *POTS*
    - *MCAS* $arrow.r$ Intestinal barrier dysfunction $arrow.r$ Malabsorption $arrow.r$ *Mitochondrial dysfunction*
    - *Dysautonomia* $arrow.r$ Vagal dysfunction $arrow.r$ *GI dysmotility* $arrow.r$ *SIBO*
    - *Chronic infection* $arrow.r$ Immune exhaustion $arrow.r$ *Autoimmunity*
    - *Small fiber neuropathy* $arrow.r$ Autonomic neuropathy $arrow.r$ *POTS*

This cascading model suggests that identifying and treating upstream conditions may interrupt downstream pathology. For detailed discussion of the “Septad” framework and its limitations, see Section @sec:septad.

=== Diagnostic Algorithm

<obs:diagnostic-algorithm>

    - *Step 1: Screen for post-exertional malaise*
    
        - If PEM absent → Consider alternative diagnosis (depression, deconditioning, other fatiguing condition)
        - If PEM present → Proceed to Step 2
    

    - *Step 2: Rule out exclusions via laboratory testing*
    
        - CBC, CMP, TSH/free T4, ESR/CRP, ANA, vitamin D, B12, sleep study
        - If positive finding that fully explains symptoms → Treat that condition
        - If tests normal or findings insufficient to explain severity → Proceed to Step 3
    

    - *Step 3: Assess duration and functional impact*
    
        - Duration $gt.eq 6$ months? (or $gt.eq 3$ months in severe pediatric cases)
        - Substantial functional impairment?
        - If yes to both → Proceed to Step 4
    

    - *Step 4: Apply diagnostic criteria*
    
        - Use Canadian Consensus, IOM, or ICC criteria
        - All require: PEM, unrefreshing sleep, multi-system symptoms
        - If criteria met → Diagnose ME/CFS
    

    - *Step 5: Assess for comorbidities*
    
        - Screen for septad conditions (fibromyalgia, POTS, MCAS, hEDS, IBS)
        - Document which conditions are present (multi-label classification)
        - These do not exclude ME/CFS; they inform treatment strategy
    

    - *Step 6: Biological phenotyping (if resources permit)*
    
        - Apply Tier 2 framework: assess autoimmune, mitochondrial, neuroinflammatory, dysautonomia, endothelial domains
        - Guide treatment stratification
    

    - *Step 7: Risk stratification*
    
        - Apply Tier 3 RED FLAG criteria
        - If $gt.eq 2$ RED FLAGS → Emergency intervention protocol
    

=== When to Reconsider the Diagnosis

#warning-env(title: [Red Flags Suggesting Alternative Diagnosis])[
ME/CFS diagnosis should be reconsidered if:

    - *New focal neurological signs*: Weakness, sensory loss, visual changes (suggests MS, tumor, stroke)
    - *Fever, night sweats, unintentional weight loss*: Suggests infection, malignancy, autoimmune disease
    - *Rapid progression over weeks*: ME/CFS typically progresses over months to years; rapid worsening suggests acute process
    - *Lack of PEM*: If re-evaluation reveals no true post-exertional malaise, reconsider alternative diagnoses
    - *Complete resolution with psychiatric treatment*: If depression treatment alone fully resolves “fatigue,” the diagnosis was likely primary depression, not ME/CFS

] <warn:reconsider-diagnosis>
