#import "../shared/environments.typ": *

= Research Synthesis Tables
<app:research-synthesis>

== Major Studies Summary
<sec:major-studies-summary>

This section synthesizes key research findings integrated from literature reviews, including papers identified through systematic searches, community-reported studies, and recent publications (2019–2025).

=== Molecular and Cellular Mechanisms
<subsec:molecular-mechanisms-studies>



#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto),
    // TODO: fix columnsp{1.8cm}p{2.2cm}p{4cm}p{2.5cm}p{1.8cm}}
  
  [*Study*], [*Design*], [*Sample*], [*Key Findings*], [*Implications*], [*Certainty*],
  
  [Wang 2023 @wang2023wasf3], [Case-control; muscle biopsy], [n=14 ME/CFS, n=10 controls], [WASF3 protein elevated; inverse correlation with Complex IV (r=-0.55, p=0.005); shRNA knockdown restores function], [WASF3 is druggable target; mechanism is reversible], [MODERATE (pending replication)],
  
  [Lim 2020 @Lim2020], [2-day CPET; repeated measures], [n=51 ME/CFS, n=10 sedentary controls], [VO#sub[2]max reduced 25% on Day 2 in ME/CFS; controls unchanged; ventilatory threshold reduced], [Objective PEM biomarker; 24-72h delayed impairment], [HIGH (replicated)],
  
  [Syed 2025 @Syed2025], [Systematic review], [Multiple studies], [Mitochondrial dysfunction across oxidative phosphorylation, ATP synthesis, metabolomics], [Converging evidence for mitochondrial pathology], [MODERATE-HIGH (meta-analytic)],
  
  [Phair 2019 @phair2019ido], [Metabolomics modeling], [n=52 ME/CFS, n=45 controls], [IDO metabolic trap hypothesis; tryptophan-kynurenine pathway disruption], [Potential therapeutic target (IDO inhibitors)], [MODERATE (hypothesis; needs validation)],
  
  ),
  kind: table, supplement: [Table], caption: [Molecular Mechanism Studies in ME/CFS],
) <tab:molecular-studies>


=== Viral and Infectious Triggers
<subsec:viral-trigger-studies>



#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto),
    // TODO: fix columnsp{1.8cm}p{2.5cm}p{4cm}p{2cm}}
  
  [*Study*], [*Design*], [*Sample*], [*Key Findings*], [*Evidence Level*],
  
  [Hwang 2023 @hwang2023viral], [Systematic review + meta-analysis], [64 studies; n=4,971 ME/CFS, n=9,221 controls], [18 viral species assessed; strongest associations: Borna (OR$gt.eq$3.47), HHV-7 (OR\>2.0), parvovirus B19 (OR\>2.0), enterovirus (OR\>2.0), coxsackie B (OR\>2.0)], [HIGH (meta-analytic; replicated)],
  
  [Chia 2005 @Chia2005], [Observational; stomach biopsy], [n=165 ME/CFS patients], [Enterovirus detected in 82% of ME/CFS patients via stomach biopsy immunostaining; correlation with symptom severity], [MODERATE (specialized technique; replication needed)],
  
  [Gottschalk 2023 @Gottschalk2023], [Case series; observational], [n=42 Long COVID patients], [LDN (4.5mg) improved fatigue, brain fog, PEM in 78% of Long COVID patients within 2 months], [LOW-MODERATE (observational; no control group)],
  
  ),
  kind: table, supplement: [Table], caption: [Viral Association Studies],
) <tab:viral-studies>


=== Immune Dysfunction Studies
<subsec:immune-studies>



#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto),
    // TODO: fix columnsp{2cm}p{2.2cm}p{4.2cm}p{2cm}}
  
  [*Study*], [*Design*], [*Sample*], [*Key Findings*], [*Certainty*],
  
  [Fluge 2019 @Fluge2019], [Phase III RCT (RituxME trial)], [n=152 ME/CFS], [Rituximab (B-cell depletion) showed NO benefit vs placebo; placebo response 35%, rituximab 26%], [HIGH (definitive negative result)],
  
  [Rekeland 2024 @Rekeland2024], [Long-term follow-up of RituxME], [Original n=152 cohort; 6-year follow-up], [No long-term benefit from rituximab confirmed; subset analysis revealed no responder subgroups], [HIGH (confirms Fluge 2019)],
  
  [Bulbule 2024 @Bulbule2024], [Systematic review], [Multiple NK cell studies], [Reduced NK cell cytotoxicity consistently reported across studies; correlation with symptom severity], [MODERATE-HIGH (consistent finding)],
  
  ),
  kind: table, supplement: [Table], caption: [Immune System Studies in ME/CFS],
) <tab:immune-studies>


== Biomarker Studies Summary
<sec:biomarker-studies-summary>



#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto),
    // TODO: fix columnsp{2cm}p{4cm}p{2.5cm}p{2cm}}
  
  [*Biomarker*], [*Measurement*], [*Finding*], [*Clinical Utility*], [*Validation Status*],
  
  [*2-Day CPET*], [VO#sub[2]max Day 1 vs Day 2], [25% reduction Day 2 in ME/CFS @Lim2020], [Objective PEM documentation; disability assessment], [VALIDATED (replicated)],
  
  [*WASF3 protein*], [Muscle biopsy immunoblot], [Elevated in ME/CFS; inverse correlation with Complex IV @wang2023wasf3], [Research tool; potential treatment target], [PRELIMINARY (n=14; needs replication)],
  
  [*NK cell cytotoxicity*], [Flow cytometry; cytotoxic assay], [Reduced across multiple studies @Bulbule2024], [Immune dysfunction marker], [MODERATE (consistent but variable)],
  
  [*Viral serology*], [PCR, immunostaining], [Enterovirus in 82% stomach biopsies @Chia2005; multiple viral associations @hwang2023viral], [Subset identification (viral-onset)], [MODERATE (specialized techniques)],
  
  [*Tryptophan-kynurenine*], [Plasma metabolomics], [IDO metabolic trap @phair2019ido], [Potential treatment stratification], [HYPOTHESIS (needs validation)],
  
  ),
  kind: table, supplement: [Table], caption: [Validated and Proposed Biomarkers for ME/CFS],
) <tab:biomarker-summary>


== Treatment Trials Summary
<sec:treatment-trials-summary>

=== Pharmacological Interventions
<subsec:pharmacological-trials>



#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto),
    // TODO: fix columnsp{1.8cm}p{2cm}p{4cm}p{2.2cm}p{1.5cm}}
  
  [*Intervention*], [*Study Type*], [*Sample*], [*Findings*], [*Recommendation*], [*Evidence*],
  
  [*Low-Dose Naltrexone (LDN)*], [Observational], [n=218 @Polo2019; n=42 Long COVID @Gottschalk2023], [73.9% positive response (ME/CFS); 78% improved (Long COVID); improved vigilance, alertness, physical/cognitive performance], [Consider trial; 3.0–4.5mg/day], [MODERATE (large observational; no RCT)],
  
  [*Rituximab (B-cell depletion)*], [Phase III RCT], [n=152 @Fluge2019; 6-year follow-up @Rekeland2024], [NO BENEFIT; placebo 35% response \> rituximab 26%; no long-term benefit], [DO NOT USE], [HIGH (definitive negative)],
  
  [*Graded Exercise Therapy (GET)*], [Multiple studies; patient surveys], [Patient harm reports; PACE trial discredited], [Causes deterioration in many patients; violates PEM physiology], [HARMFUL; contraindicated], [HIGH (consensus; patient evidence)],
  
  ),
  kind: table, supplement: [Table], caption: [Pharmacological Treatment Evidence in ME/CFS],
) <tab:pharmacological-treatments>


=== Patient-Reported Interventions
<subsec:patient-reported-interventions>

These interventions lack formal RCT validation but have plausible mechanisms and multiple independent patient reports. They require medical supervision and formal clinical trials.



#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto),
    // TODO: fix columnsp{2cm}p{3.5cm}p{3cm}p{2.5cm}}
  
  [*Intervention*], [*Reported Dose*], [*Reported Benefits*], [*Plausible Mechanism*], [*Research Status*],
  
  [*Nicotine (low-dose)*], [2–4mg/day (gum, patch)], [Rapid brain fog improvement (hours to days); multiple independent reports], [Alpha-7 nAChR modulation; anti-inflammatory; mitochondrial calcium regulation (ch19 @hyp:ach-mito)], [HYPOTHESIS-GENERATING; needs RCT; addiction risk],
  
  [*Methylene blue*], [1–5mg/day (very low dose)], [Smell restoration, brain fog reduction within 1 week], [Enhances electron transport; reduces oxidative stress; indirect benefit despite Complex IV dysfunction (ch19 @hyp:mb-mito-enhancement)], [HYPOTHESIS-GENERATING; dose-finding needed],
  
  [*Ketogenic diet*], [Strict keto], [Dramatic improvement in subset; "medication-free" in some cases], [Ketone bodies provide alternative fuel (acetyl-CoA) without glucose; reduces oxidative stress (ch19 @spec:patient-interventions)], [ANECDOTAL; subset-specific; needs stratified trial],
  
  [*Pyruvate (prophylactic)*], [1–2g pre-exertion], [Proposed to prevent PEM crashes], [Provides pyruvate directly for TCA cycle; skips glycolysis requirement; used by athletes (ch19 @spec:pyruvate-supplement)], [SPECULATIVE; testable in RCT],
  
  [*NAD+ precursors*], [NR 300–1000mg/day; NMN 250–500mg/day], [Proposed for post-exertional recovery], [Boosts lactate dehydrogenase; accelerates lactate clearance; improves mitochondrial NAD+/NADH ratio (ch19 @spec:nad-lactate)], [SPECULATIVE; mechanistically sound; testable],
  
  ),
  kind: table, supplement: [Table], caption: [Patient-Reported Interventions Requiring Clinical Validation],
) <tab:patient-interventions>


=== Comorbidity Management
<subsec:comorbidity-management-evidence>



#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto),
    // TODO: fix columnsp{2.5cm}p{4cm}p{3cm}}
  
  [*Condition*], [*Diagnostic Test*], [*Presentation Overlap*], [*Clinical Implication*],
  
  [*Sleep Apnea*], [Polysomnography (overnight sleep study)], [Fatigue, cognitive dysfunction, unrefreshing sleep; patient reports describe years of misdiagnosis], [CPAP treatment can resolve symptoms; should be standard workup],
  
  [*Lyme Disease (European species)*], [European Lyme serology panel], [Chronic fatigue, PEM-like symptoms; 10-year misdiagnosis reported], [Long-cycle antibiotics "significantly helpful"; requires regional-specific testing (ch19 @obs:lyme-mecfs-overlap)],
  
  [*Hypermobile EDS (hEDS)*], [Beighton score; clinical assessment], [Joint hypermobility, easy bruising, fatigue, POTS overlap; "100-fold underdiagnosed"], [Physical therapy adaptations; affects pacing strategies (ch19 §hyp:eds-mcas-mecfs)],
  
  [*Mast Cell Activation (MCAS)*], [Tryptase levels; clinical criteria], [Allergic symptoms, flushing, GI issues, fatigue], [H1/H2 blockers, mast cell stabilizers may help; potential mito-immune link (ch19 @hyp:mcas-mito-damage)],
  
  [*ADHD + hEDS overlap*], [Clinical assessment], [Shared genetic factors proposed; frequent co-occurrence], [May represent distinct phenotype requiring different management (ch19 §hyp:eds-mcas-mecfs)],
  
  ),
  kind: table, supplement: [Table], caption: [Comorbidities Frequently Misdiagnosed as ME/CFS],
) <tab:comorbidity-misdiagnosis>


== Pathophysiology Evidence Summary
<sec:pathophysiology-evidence-summary>

=== Converging Evidence for Core Mechanisms
<subsec:core-mechanisms-evidence>



#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto),
    // TODO: fix columnsp{3.5cm}p{4cm}p{2cm}p{1.5cm}}
  
  [*Mechanism*], [*Supporting Evidence*], [*Key Studies/Findings*], [*Gaps*], [*Strength*],
  
  [*Mitochondrial dysfunction*], [ATP depletion, Complex IV deficits, delayed recovery], [WASF3 elevation @wang2023wasf3; 2-day CPET @Lim2020; systematic review @Syed2025], [Causation vs consequence; specific complex deficits vary], [HIGH],
  
  [*Post-exertional malaise (PEM)*], [Objective VO#sub[2]max reduction Day 2; 24–72h delay], [2-day CPET 25% reduction @Lim2020; patient "\<5 crash rule"], [Molecular trigger; why delayed; recovery kinetics], [HIGH],
  
  [*Viral triggers*], [Multiple viral associations; persistent infection], [Meta-analysis OR 2.0–3.47 @hwang2023viral; enterovirus 82% @Chia2005], [Why only subset; mechanism of chronicity; viral clearance failure], [MODERATE-HIGH],
  
  [*Immune dysfunction*], [NK cell reduction, cytokine dysregulation], [NK cytotoxicity reduced @Bulbule2024; rituximab failure @Fluge2019], [Primary vs secondary; T-cell role; autoimmunity], [MODERATE],
  
  [*Autonomic dysfunction (POTS, OI)*], [Orthostatic intolerance 70–90% prevalence], [Blood volume reduction; baroreceptor dysfunction], [Connection to mitochondria; causation], [HIGH],
  
  [*Neuroinflammation*], [Brain fog, cognitive impairment, hypoperfusion], [Patient reports; imaging studies], [Mechanisms; biomarkers; treatment targets], [MODERATE],
  
  [*ER stress-WASF3 pathway*], [Viral infection → ER stress → WASF3 upregulation → Complex IV damage], [Proposed pathway integrating viral triggers @hwang2023viral and WASF3 @wang2023wasf3 (ch19 @hyp:viral-er-wasf3)], [Validation needed; ER stress markers; intervention trials], [HYPOTHESIS],
  
  [*Metabolic trap (IDO pathway)*], [Tryptophan-kynurenine disruption], [Phair modeling @phair2019ido (ch06 @sec:metabolic-trap)], [Replication; causation; therapeutic validation], [HYPOTHESIS],
  
  ),
  kind: table, supplement: [Table], caption: [Evidence Strength for Proposed Pathophysiological Mechanisms],
) <tab:pathophysiology-evidence>


=== Patient-Derived Clinical Insights
<subsec:patient-clinical-insights>

Community-reported patterns from online forums, patient advocacy groups, and Hacker News discussions reveal clinical insights not yet validated in formal research but with high practical utility.



#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto),
    // TODO: fix columnsp{4.5cm}p{3.5cm}p{2.5cm}}
  
  [*Pattern/Rule*], [*Description*], [*Clinical Implication*], [*Validation Status*],
  
  [*"\<5 crashes per year" rule*], [Exceeding energy limits \>5 times/year causes irreversible worsening], [Strict pacing is non-negotiable; crashes have cumulative damage (ch14b @sec:energy-envelope)], [OBSERVATIONAL; matches 2-day CPET pathology],
  
  [*Caffeine sensitivity changes*], [Pre-illness caffeine tolerance reverses post-illness; caffeine worsens crashes in many patients], [Avoid caffeine or use minimally; may indicate adenosine receptor changes], [ANECDOTAL; widely reported],
  
  [*24–72 hour PEM delay*], [Symptom crash occurs 1–3 days post-exertion, not immediately], [Activity tracking must account for delayed consequences; "you won't know until Day 2"], [VALIDATED by 2-day CPET @Lim2020],
  
  [*Sleep apnea masquerading as ME/CFS*], [Years of ME/CFS diagnosis resolved with CPAP in subset], [Polysomnography should be standard workup (ch19 @obs:sleep-apnea-misdiagnosis)], [CASE REPORTS; diagnostic importance],
  
  [*EDS/MCAS overlap*], [High comorbidity; "100-fold underdiagnosed"; shared symptoms], [Screen for Beighton score, tryptase, allergic symptoms (ch19 §hyp:eds-mcas-mecfs)], [CLINICAL OBSERVATION; needs epidemiological study],
  
  [*Nicotine rapid effect*], [Brain fog improvement within hours to days at 2–4mg], [Suggests cholinergic or anti-inflammatory mechanism; testable in RCT (ch19 @hyp:ach-mito)], [ANECDOTAL; multiple independent reports],
  
  [*Ketogenic diet subset response*], [Dramatic improvement in some; no effect or worsening in others], [Heterogeneity suggests metabolic subtypes; stratified trial needed (ch19 @spec:patient-interventions)], [ANECDOTAL; subset-specific],
  
  [*GET causes harm*], [Patient deterioration; violates PEM physiology; PACE trial discredited], [Contraindicated; pacing is evidence-based alternative (ch14b @warn:get-harmful)], [VALIDATED; consensus],
  
  ),
  kind: table, supplement: [Table], caption: [Patient-Discovered Patterns and Clinical Rules],
) <tab:patient-insights>


=== Research Gaps and Controversies
<subsec:research-gaps>



#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto),
    // TODO: fix columnsp{5cm}p{5cm}}
  
  [*Gap*], [*Current Status*], [*Research Need*],
  
  [*Why viral infection triggers chronic disease in subset*], [Multiple viral associations proven @hwang2023viral; mechanism unknown], [Longitudinal studies post-viral infection; genetic susceptibility; immune response profiling],
  
  [*WASF3 mechanism and reversibility*], [WASF3 elevated; shRNA reversal shown @wang2023wasf3; n=14], [Replication in larger cohort; WASF3 inhibitor trials; longitudinal tracking],
  
  [*Why PEM is delayed 24–72 hours*], [Objective 2-day CPET shows delay @Lim2020; molecular trigger unknown], [Mitophagy markers; ATP kinetics; lactate clearance; serial muscle biopsies],
  
  [*Heterogeneity and subtypes*], [Clinical presentation varies; treatment responses differ], [Cluster analysis; biomarker-based stratification; metabolomics subtyping],
  
  [*Why B-cell depletion failed but LDN helps*], [Rituximab negative @Fluge2019; LDN observational positive @Polo2019], [T-cell vs B-cell role; LDN mechanism (opioid vs immune); RCT of LDN],
  
  [*Connection between mitochondria and immune dysfunction*], [Both systems affected; unclear if linked or parallel], [Mast cell-mitochondrial crosstalk; cytokine effects on oxidative phosphorylation],
  
  [*Reversibility and spontaneous remission*], [Rare spontaneous remission; WASF3 potentially reversible], [Remission biomarkers; reversibility mechanisms; intervention timing],
  
  ),
  kind: table, supplement: [Table], caption: [Major Research Gaps in ME/CFS],
) <tab:research-gaps>


=== Cross-Domain Medical Parallels
<subsec:cross-domain-evidence>

Table @tab:cross-domain-parallels summarizes validated interventions from other medical fields with phenomenological overlap to ME/CFS, as detailed in Chapter @ch:integrative-treatment Section @sec:cross-domain-parallels.



#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto),
    // TODO: fix columnsp{2cm}p{3.5cm}p{3cm}p{2.5cm}}
  
  [*Source Field*], [*Shared Feature*], [*Intervention*], [*ME/CFS Application*], [*Implementation Status*],
  
  [*Sports Medicine*], [Muscle metabolic stress, lactate accumulation], [ORS, magnesium, Acetyl-L-carnitine, D-ribose], [Lactate clearance, ATP support, cramp reduction], [IMPLEMENTED; evidence-based],
  
  [*Altitude Medicine*], [Tissue hypoxia, exercise intolerance], [Iron optimization (ferritin \>100), acetazolamide, breathing techniques], [Oxygen delivery, cerebral function], [PARTIAL; iron standard; acetazolamide case reports],
  
  [*ICU Recovery (PICS)*], [Profound weakness, cognitive impairment, metabolic depletion], [Micronutrient repletion (B1, C, D, Mg, Zn, Se), NAC, high protein], [Metabolic support, oxidative stress, muscle preservation], [IMPLEMENTED; nutritional protocols],
  
  [*Space Medicine*], [Orthostatic intolerance, deconditioning, blood volume loss], [Compression garments, horizontal exercise, fluid/salt loading], [POTS management, reconditioning, blood volume expansion], [IMPLEMENTED; POTS protocols],
  
  [*Chronic Pain Medicine*], [Central sensitization, quality of life impairment], [LDN, gabapentinoids, acceptance strategies], [Pain reduction, central sensitization, pacing validation], [PARTIAL; LDN evidence moderate],
  
  [*Geriatric Frailty*], [Multi-system decline, weakness, falls risk], [Vitamin D optimization, protein supplementation, mobility aids without stigma], [Frailty prevention, function optimization, assistive devices], [IMPLEMENTED; acceptance of limitations],
  
  ),
  kind: table, supplement: [Table], caption: [Cross-Domain Medical Interventions Applicable to ME/CFS],
) <tab:cross-domain-parallels>


== Quick Reference: Evidence-Based Treatment Summary
<sec:evidence-based-summary>

Table @tab:treatment-quick-reference provides a rapid-access summary for clinicians and patients, organized by evidence strength and implementation tier.



#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto),
    // TODO: fix columnsp{2cm}p{2.5cm}p{3cm}p{2cm}p{1.5cm}}
  
  [*Intervention*], [*Typical Dose*], [*Evidence Level*], [*Primary Indication*], [*Cost/Month*], [*Tier*],
  
  table.cell(colspan: 6)[*TIER 1: Strong Evidence, Immediate Implementation*],
  
  [Pacing (energy envelope)], [Individualized], [HIGH (2-day CPET, consensus)], [PEM prevention; core intervention], [Free], [1],
  
  [Fluid/salt loading (POTS)], [2.5–3L, 6–10g Na/day], [HIGH (orthostatic physiology)], [Orthostatic intolerance, blood volume], [\$5], [1],
  
  [Compression stockings], [20–30 mmHg waist-high], [HIGH (POTS, space medicine)], [Orthostatic intolerance], [\$30–60 one-time], [1],
  
  [ORS (sports recovery)], [500mL 2–3$times$/day], [MODERATE (sports medicine)], [Lactate clearance, hydration], [\$5], [1],
  
  [Vitamin D], [4000–5000 IU/day], [MODERATE (ICU, geriatrics)], [Immune function, muscle], [\$5], [1],
  
  [Magnesium glycinate], [300–400mg/day], [MODERATE (ICU, sports)], [ATP synthesis, cramps], [\$10], [1],
  
  [B-complex (thiamine)], [B1 100–300mg; B-complex], [MODERATE (ICU critical care)], [Aerobic metabolism, neurological], [\$10], [1],
  
  table.cell(colspan: 6)[*TIER 2: Moderate Evidence, Consider Trial*],
  
  [CoQ10 + Acetyl-L-carnitine], [200mg CoQ10; 500–1000mg ALC], [MODERATE (mitochondrial support)], [ATP production, fat oxidation], [\$40–60], [2],
  
  [Iron optimization], [Target ferritin 100–200], [MODERATE (altitude medicine)], [Oxygen transport, dopamine synthesis], [\$10–15], [2],
  
  [NAC], [600mg 2$times$/day], [MODERATE (ICU, oxidative stress)], [Glutathione support, oxidative stress], [\$15–25], [2],
  
  [Vitamin C], [1000–2000mg/day divided], [MODERATE (ICU sepsis protocols)], [Antioxidant, immune support], [\$10], [2],
  
  [Zinc + selenium], [15–30mg Zn; 200$mu$g Se], [MODERATE (ICU)], [Immune function, antioxidant], [\$10], [2],
  
  [LDN], [3.0–4.5mg/day], [MODERATE (n=218 observational)], [Fatigue, brain fog, PEM], [\$20–40], [2],
  
  table.cell(colspan: 6)[*TIER 3: Emerging/Speculative, Needs Validation*],
  
  [Pyruvate (prophylactic)], [1–2g pre-exertion], [SPECULATIVE (mechanistic rationale)], [PEM prevention], [\$15–25], [3],
  
  [NAD+ precursors (NR/NMN)], [NR 300–1000mg; NMN 250–500mg/day], [SPECULATIVE (lactate clearance hypothesis)], [Post-exertional recovery], [\$40–60], [3],
  
  [Methylene blue], [1–5mg/day], [SPECULATIVE (patient reports)], [Brain fog, mitochondrial enhancement], [\$10–20], [3],
  
  [Acetazolamide], [125–250mg 2$times$/day], [SPECULATIVE (altitude medicine)], [Oxygenation, cognitive function], [Rx required], [3],
  
  [D-ribose], [5g 2–3$times$/day], [SPECULATIVE (sports medicine)], [ATP precursor], [\$25–40], [3],
  
  table.cell(colspan: 6)[*CONTRAINDICATED: Evidence of Harm*],
  
  [Graded Exercise Therapy (GET)], [N/A], [HIGH (patient harm, PACE discredited)], [HARMFUL; causes deterioration], [N/A], [—],
  
  [Rituximab (B-cell depletion)], [N/A], [HIGH (Phase III RCT negative)], [No benefit; placebo superior], [N/A], [—],
  
  ),
  kind: table, supplement: [Table], caption: [Evidence-Based Treatment Quick Reference],
) <tab:treatment-quick-reference>


*Usage Notes for Table @tab:treatment-quick-reference*.

    - *Tier 1*: Implement immediately based on strong physiological rationale or consensus; low cost, high safety
    - *Tier 2*: Consider trial for 3 months; monitor response; moderate evidence from observational studies or related conditions
    - *Tier 3*: Experimental; discuss risks/benefits; await formal trials; mechanistically plausible but unvalidated
    - *Start with Tier 1*, add Tier 2 interventions sequentially if no benefit after 3 months
    - *Monitor responses* with symptom diary, objective measures (heart rate, activity tolerance)
    - *Medical supervision required* for prescription medications, high-dose supplementation, or if multiple comorbidities present

== Selective Energy Dysfunction Hypothesis Research Materials
<sec:selective-dysfunction-materials>

The Selective Energy Dysfunction Hypothesis (see Chapter @ch:energy-metabolism Section @sec:selective-energy-dysfunction and Chapter @ch:proposed-studies Section @sec:selective-energy-dysfunction-study) has generated six research deliverables available in the project staging area (five completed, one planned). These materials are designed to facilitate hypothesis testing and clinical translation.

=== Patient Assessment Tools

*Hair and Nail Health Survey.*
A comprehensive 649-line survey instrument designed to test the prediction that autonomous peripheral processes (hair/nail growth) are preserved in ME/CFS while CNS-dependent processes are impaired. The survey includes:

    - Demographics and disease characteristics stratified by Bell Scale severity
    - Hair health assessment (growth rate, thickness, quality, loss patterns)
    - Nail health assessment (growth rate, quality, appearance)
    - Correlation tracking with disease activity changes
    - Confounder screening (nutrition, medications, hormones)

*Location:* `content-staging/survey-hair-nail-health.md`

*Target population:* 200 ME/CFS patients (50 each severity level) + 100 healthy controls + 100 disease controls

*Expected outcomes:* Hair/nail growth rates should be statistically equivalent to controls despite severe functional impairment, providing objective evidence for selective (not global) dysfunction.

*PEM Self-Tracking Protocol.*
A patient-friendly protocol for tracking Post-Exertional Malaise patterns to test the prediction that PEM severity correlates with CNS involvement in the triggering activity. Features dual-mode design:

    - *Simple mode*: 3 data points (activity type, PEM occurrence, severity) for patients with severe brain fog
    - *Detailed mode*: Activity categorization by CNS involvement, PEM severity across 5 dimensions, timeline tracking

*Location:* `content-staging/protocol-pem-tracking.md`

*Key prediction:* Cognitive exertion (pure CNS) should cause more severe PEM than passive activities (minimal CNS demand).

*Data collection period:* 4–8 weeks for preliminary pattern identification

=== Existing Dataset Analysis

An inventory of 8 major ME/CFS datasets that could test hypothesis predictions without requiring new data collection:

    - *NIH Intramural Study (Walitt 2024)*: Deep phenotyping with brain imaging, autonomic testing, exercise physiology (n=17; highest priority for collaboration)
    - *2-Day CPET Databases*: Multiple studies testing demand-response failure (100s of patients; immediate meta-analysis possible)
    - *Van Campen Autonomic Studies*: CBF during orthostatic challenge (n=400+; replicates demand-response pattern)
    - *UK Biobank ME/CFS Cohort*: Large-scale genetic and activity data (n=1,600; established access process)

*Location:* `content-staging/existing-datasets-analysis.md`

*Contains:* Dataset inventory table, prediction-to-dataset mapping, feasibility assessment, contact information for data access

=== Proposed Research Studies

*Multi-Modal Hypothesis Testing Study.*
A comprehensive research proposal (integrated into Chapter @ch:proposed-studies) testing 5 core predictions with n=72 participants (36 ME/CFS + 36 controls) over 3 years. See Section @sec:selective-energy-dysfunction-study for full study protocol.

*Budget:* \$2.15M total

*Funding targets:* NIH R01, Solve M.E. Initiative, Open Medicine Foundation

*Full proposal location:* `content-staging/research-proposal-selective-dysfunction.md`

*Review Article Outline.*
A 9-section outline for a comprehensive review article presenting the Selective Energy Dysfunction Hypothesis to the ME/CFS research community. Target journals: _Frontiers in Neurology_, _Journal of Translational Medicine_.

*Location:* `content-staging/review-article-outline.md`

*Length:* 8,000–10,000 words with 7 figures, 7 tables, 150–200 references

*Key sections:* Evidence review (preserved vs. impaired processes), mechanistic models, testable predictions, clinical implications, research agenda

=== Treatment Translation

*Brain-Centric Treatment Protocol.*
*[PLANNED]* An evidence-based treatment protocol translating the Selective Energy Dysfunction Hypothesis into clinical practice. All recommendations are *PRELIMINARY* and require physician review before implementation.

*Location:* `content-staging/treatment-protocol-brain-centric.md` *(not yet created)*

*Core intervention categories:*

    - *Brain energy support*: MCT oil (MODERATE evidence), CoQ10/ubiquinol (MODERATE), creatine (MODERATE-emerging), D-ribose (WEAK)
    - *CNS demand reduction*: Heart rate-guided pacing, cognitive energy budgeting, sensory load reduction
    - *Pharmacological CNS bypass*: Midodrine (MODERATE), fludrocortisone (MODERATE), LDN (MODERATE), LDA (WEAK-theoretical)
    - *Clinical decision algorithm*: Foundation → first-line → second-line → third-line with clear response criteria

*Evidence grading:* Every intervention labeled as Strong/Moderate/Weak/Theoretical with supporting citations

*Safety:* Comprehensive drug interaction table, red flags, contraindications included

=== Research Community Access

All materials in `content-staging/` are available for:

    - Patient advocacy organizations (for survey distribution and protocol testing)
    - ME/CFS researchers (for collaboration on dataset analysis or study implementation)
    - Clinicians (for evidence-based protocol adaptation)
    - Medical students/trainees (for hypothesis-driven research education)

*Contact for collaboration.* [To be determined based on institutional affiliation]
