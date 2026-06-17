#import "../../../../shared/environments.typ": *

=== Personalized Cycle Mapping: Precision Diagnostic Framework
<subsec:cycle-mapping>

The vicious cycle dynamics model (Chapter @ch:core-symptoms, @sec:pem, “Vicious Cycle Dynamics”) reveals that ME/CFS involves multiple reinforcing physiological cycles: mitochondrial, immune, autonomic, neuroinflammatory, and endocrine. However, not every patient has all five cycles active. *Identifying which specific cycles are operating in each individual enables precision-targeted treatment*, avoiding unnecessary interventions while ensuring all active pathology is addressed.

This diagnostic framework represents a paradigm shift from empirical “try everything” approaches to biomarker-guided personalized medicine.

==== The Five-Cycle Diagnostic Battery

*Cycle 1: Mitochondrial Dysfunction.*

*Diagnostic criteria*: Evidence of impaired ATP production, oxidative phosphorylation failure, or abnormal post-exertional metabolic response.

*Tier 1 Testing (Accessible)*:

    - *Two-day cardiopulmonary exercise test (2-day CPET)*: Gold standard
    
        - Day 2 VO#sub[2]max decline $>$5–10% = positive for mitochondrial cycle
        - Reduced ventilatory efficiency (VE/VCO#sub[2] slope increase Day 2)
        - See Chapter @ch:energy-metabolism for interpretation
        - Accessibility: Limited to specialized centers; cost \$1,500–3,000
    

    - *Lactate response to mild exertion*: Venous lactate before and 15–30 min after standardized activity (e.g., 6-minute walk, stationary bike at low resistance)
    
        - Lactate increase $\>$30% from baseline = glycolytic shift, suggests mitochondrial impairment
        - Accessibility: Any laboratory can measure lactate; cost \$20–50
    

    - *Actigraphy with recovery tracking*: 7–14 days continuous activity monitoring
    
        - Prolonged recovery periods ($>$24–48h) after modest activity
        - Boom-bust pattern (activity followed by crash)
        - Accessibility: Consumer-grade accelerometers (fitbit, etc.); cost \$50–150
    

*Tier 2 Testing (Research or Specialized Centers)*:

    - *Cellular ATP production*: Extracellular flux analysis (Seahorse assay) on PBMCs
    
        - Reduced maximal respiration, ATP-linked respiration
        - Research setting; not clinically available
    

    - *Muscle biopsy*: Mitochondrial enzyme activities, electron microscopy
    
        - Reserved for unclear cases; invasive
        - Cost \$2,000–5,000; limited insurance coverage
    

    - *Post-exertion metabolomics*: Plasma metabolites before and 24h after standardized exertion
    
        - NAD#super[+]/NADH ratio, acylcarnitines, TCA cycle intermediates
        - Research setting; cost \$500–2,000
    

*Clinical decision*: _If 2-day CPET shows Day 2 decline OR lactate increases post-exertion OR actigraphy shows prolonged recovery → Mitochondrial cycle ACTIVE → Target with CoQ10, NAD#super[+] precursors, mitochondrial support stack._

<obs:mito-support-stack>
Biomarker-driven supplementation targets documented ME/CFS metabolic deficits: reduced brain glutathione @Shungu2012glutathione, impaired ATP production @keller2024cpet, and TCA cycle dysfunction @Yamano2016tca_urea. The compounds described below address these specific deficits with differing evidence levels.
*N-Acetylcysteine (NAC) for Glutathione Repletion*

#include "../../achievements/ach-brain-glutathione-deficiency-in-mecfs.typ"

*Practical protocol*: N-acetylcysteine 600–1200 mg two to three times daily with meals (total 1800–3600 mg/day). NAC provides cysteine, the rate-limiting amino acid for glutathione synthesis, and crosses the blood-brain barrier to support in situ GSH production. Pilot data showed 1800 mg/day normalized cortical GSH and improved symptoms (p=0.006) @Shungu2016NACtrial. An NIH-funded RCT (NCT04542161, n=60) comparing doses (0/900/3600 mg/day) is expected to complete in 2026. Safety profile well-established (>30 years clinical use); common side effects include GI discomfort ($tilde$10%).

*D-Ribose for ATP Regeneration*

#include "../../speculations/spec-d-ribose-accelerates-atp-recovery.typ"

#include "../../warnings/warn-d-ribose-contraindication-diabetes-and-hypoglycemia.typ"

*L-Citrulline-Malate for TCA Cycle Support*

#include "../../speculations/spec-citrulline-malate-addresses-tcaurea-cycle-dysfunction.typ"

*Cycle 2: Immune Activation and Autoimmunity.*

*Diagnostic criteria*: Evidence of chronic immune activation, autoantibody production, or cytokine dysregulation.

*Tier 1 Testing (Accessible)*:

    - *GPCR autoantibodies*: $beta_2$-adrenergic, M3/M4 muscarinic receptors
    
        - CellTrend assay (Germany): Mail-order testing available
        - Elevated titers $\>95$th percentile = positive
        - Cost \$300–500; not covered by US insurance typically
        - _Critical biomarker_: Predicts response to immunoadsorption, daratumumab @Scheibenbogen2018immunoadsorption @Fluge2025daratumumab
    

    - *Natural killer (NK) cell function*: Cytotoxicity assay or NK cell count
    
        - Reduced NK function or low CD56+ cell count = immune dysfunction
        - Flow cytometry available at many labs; cost \$150–300
    

    - *Cytokine panel*: IL-6, IL-1$beta$, TNF-$alpha$, IL-10
    
        - Elevation indicates active inflammation
        - Accessibility: Some commercial labs (LabCorp, Quest); cost \$200–400
        - High variability; requires fasting sample, careful handling
    

    - *Standard autoimmune screening*: ANA, ENA panel, rheumatoid factor
    
        - Positive ANA or ENA may indicate overlap syndrome
        - Widely available; cost \$100–200
    

*Tier 2 Testing (Specialized)*:

    - *T cell and B cell subset analysis*: CD4/CD8 ratio, T cell exhaustion markers, B cell subsets
    
        - Flow cytometry; research or specialized immunology labs
        - Cost \$300–600
    

    - *Viral reactivation markers*: EBV EA IgG, VCA IgG, HHV-6 IgG, CMV IgG
    
        - Chronic reactivation may drive immune activation
        - Available at commercial labs; cost \$200–400
    

*Clinical decision*: _If GPCR autoantibodies elevated OR NK function low OR cytokines elevated → Immune cycle ACTIVE → Consider immunoadsorption, daratumumab (if accessible), or LDN + anti-inflammatory stack._

*Cycle 3: Autonomic Dysregulation.*

*Diagnostic criteria*: Evidence of orthostatic intolerance, impaired heart rate variability, or sympathetic-parasympathetic imbalance.

*Tier 1 Testing (Accessible)*:

    - *NASA 10-minute lean test*: Modified poor man's tilt table test
    
        - Measure HR and BP supine, then standing at 2, 5, 10 minutes
        - HR increase $\>$30 bpm or sustained increase $\>$120 bpm = POTS
        - BP drop $\>$20/10 mmHg = orthostatic hypotension
        - No cost; can be done at home or in any clinic
    

    - *Heart rate variability (HRV)*: Consumer-grade HRV monitor or smartphone app
    
        - Low HRV (particularly RMSSD $\<$20–30 ms) = reduced parasympathetic tone
        - Tracking daily HRV identifies autonomic stress
        - Cost \$0–150 (many free apps using phone camera)
    

    - *Symptom inventory*: Validated autonomic symptom scales (e.g., COMPASS-31)
    
        - Orthostatic lightheadedness, palpitations, GI dysmotility, temperature dysregulation
        - Free online questionnaires
    

*Tier 2 Testing (Specialized)*:

    - *Formal tilt table test*: 70-degree upright tilt for 10–45 minutes with continuous HR/BP monitoring
    
        - Gold standard for POTS and orthostatic hypotension diagnosis
        - Cardiology or autonomic specialty clinic; cost \$500–1,500
    

    - *Quantitative sudomotor axon reflex test (QSART)*: Measures small fiber autonomic function
    
        - Detects autonomic neuropathy
        - Specialized autonomic labs; cost \$500–1,000
    

    - *Catecholamine levels*: Plasma or 24-hour urine norepinephrine, epinephrine, dopamine
    
        - Low levels support central catecholamine deficiency @walitt2024deep
        - Available at commercial labs; cost \$150–300
    

*Clinical decision*: _If NASA lean test positive OR HRV chronically low OR catecholamines deficient → Autonomic cycle ACTIVE → Target with fludrocortisone, midodrine, compression, salt loading, L-tyrosine + BH4 cofactors._

*Cycle 4: Neuroinflammation and Central Sensitization.*

*Diagnostic criteria*: Evidence of neuroinflammation, microglial activation, or central pain/sensory amplification.

*Tier 1 Testing (Clinical Assessment)*:

    - *Quantitative sensory testing (QST)*: Pressure pain thresholds, temporal summation
    
        - Algometer to measure pressure pain threshold (PPT) at standardized sites
        - PPT $\<$4 kg/cm² = hyperalgesia, suggests central sensitization
        - Temporal summation testing: repeated stimuli produce increasing pain
        - Equipment cost \$200–500; can be done in any clinic
    

    - *Cognitive testing*: Neuropsychological battery or screening tools
    
        - Processing speed, working memory, sustained attention deficits
        - NIH Toolbox Cognition Battery (free online)
        - Formal neuropsych testing: \$1,500–3,000
    

    - *Symptom scales*: Central Sensitization Inventory (CSI), widespread pain index
    
        - CSI $\>$40 suggests central sensitization
        - Free online questionnaire
    

*Tier 2 Testing (Research/Specialized)*:

    - *Brain PET imaging*: Neuroinflammation markers (TSPO PET)
    
        - Shows microglial activation in ME/CFS @Nakatomi2014neuroinflammation
        - Research setting; cost \$3,000–5,000+
    

    - *Cerebrospinal fluid analysis*: Cytokines, chemokines, lactate
    
        - Invasive; reserved for research or ruling out other diagnoses
        - Cost \$500–1,500
    

*Clinical decision*: _If QST shows hyperalgesia OR CSI $\>$40 OR severe cognitive impairment → Neuroinflammatory cycle ACTIVE → Consider LDN, neuroinflammation-targeted supplements, avoid opioids (worsen central sensitization)._

*Cycle 5: Endocrine Dysregulation.*

*Diagnostic criteria*: Evidence of HPA axis dysfunction, sex hormone abnormalities, or thyroid dysregulation beyond primary disease.

*Tier 1 Testing (Widely Available)*:

    - *Cortisol rhythm*: 4-point salivary cortisol (morning, noon, evening, bedtime)
    
        - Flattened diurnal rhythm = HPA axis dysregulation
        - Low morning cortisol $\<$5–6 ng/mL may indicate adrenal insufficiency
        - Mail-order salivary testing; cost \$100–150
    

    - *Thyroid comprehensive panel*: TSH, free T4, free T3, reverse T3, TPO antibodies
    
        - ME/CFS patients may have normal TSH but low T3 or high rT3
        - Widely available; cost \$150–300
    

    - *Sex hormones*: Testosterone (men), estradiol and progesterone (women), DHEA-S (both)
    
        - Low testosterone in men common in ME/CFS
        - Estrogen dominance or low progesterone in women
        - Standard labs; cost \$100–200
    

*Tier 2 Testing (Specialized)*:

    - *ACTH stimulation test*: Measures adrenal reserve
    
        - Blunted response may indicate HPA axis dysfunction
        - Endocrinology clinic; cost \$300–500
    

    - *24-hour urine free cortisol*: Integrates cortisol production over day
    
        - More comprehensive than single-point measurements
        - Cost \$100–150
    

*Clinical decision*: _If cortisol rhythm flattened OR low morning cortisol OR thyroid imbalance despite normal TSH OR sex hormone deficiencies → Endocrine cycle ACTIVE → Optimize thyroid (consider T3), address sex hormones if deficient, consider hydrocortisone (5–15 mg daily) if severe HPA dysfunction._

==== Cycle Status Dashboard: Visual Treatment Prioritization

After completing the diagnostic battery, create a visual representation of which cycles are active. This guides treatment selection and monitoring.



#figure(
  table(
    columns: (auto, auto, auto, auto, auto),
    // TODO: fix columnsllll@}
  
  [*Cycle*], [*Status*], [*Key Biomarker(s)*], [*Treatment Priority*],
  
  [Mitochondrial], [Active], [2-day CPET: 18% VO#sub[2] decline], [*Priority 1*],
  
  [Immune], [Active], [GPCR Ab: $beta_2$-AR 95th %ile], [*Priority 1*],
  
  [Autonomic], [Borderline], [HR increase +28 bpm (lean test)], [Monitor],
  
  [Neuroinflammatory], [Inactive], [CSI: 32, QST: normal], [Not targeted],
  
  [Endocrine], [Borderline], [Flat cortisol rhythm], [*Priority 2*],
  
  ),
  kind: table, supplement: [Table], caption: [Example: Cycle Status Dashboard for Individual Patient],
) <tab:cycle-dashboard-example>


{*Interpretation*: This patient has active mitochondrial and immune cycles (Priority 1 targets), borderline autonomic and endocrine cycles (monitor, intervene if worsens), and inactive neuroinflammatory cycle (no specific treatment needed). Recommended protocol: Mitochondrial support stack (CoQ10, NAD#super[+] precursors) + immune intervention (consider immunoadsorption or daratumumab if accessible) + monitor autonomic symptoms.}


==== Treatment Prioritization Algorithm

    - *Identify active cycles*: Red status (clear biomarker abnormalities) = active
    - *Prioritize by severity and treatability*:
    
        - _Highest priority_: Immune cycle with elevated GPCR autoantibodies (specific targetable pathology; immunoadsorption or daratumumab may be disease-modifying)
        - _High priority_: Mitochondrial cycle with 2-day CPET failure (foundational dysfunction; supports all other systems)
        - _High priority_: Autonomic cycle with severe POTS (quality of life impact; relatively easy to treat)
        - _Medium priority_: Endocrine dysregulation (supportive; may improve energy and cognition)
        - _Lower priority_: Neuroinflammatory cycle (harder to target; overlaps with immune interventions)
    

    - *Staged intervention*:
    
        - Start with 1–2 highest-priority cycles
        - Assess response at 8–12 weeks
        - Add interventions for additional cycles if first targets tolerated
        - Re-assess cycle status at 6 months (some cycles may resolve when others are treated)
    

    - *Monitor for new cycle entry*:
    
        - Repeat diagnostic battery at 6–12 month intervals
        - Progressive disease may activate new cycles over time (sequential cycle entry model)
        - Early detection allows intervention before entrenchment
    

==== Cost-Benefit Analysis: Which Tests Provide Most Information Per Dollar?

For patients with limited financial resources, prioritize high-yield, low-cost tests:



#figure(
  table(
    columns: (auto, auto, auto, auto, auto),
    // TODO: fix columnsp{4cm}p{2.5cm}p{3cm}p{4cm}@}
  
  [*Test*], [*Approximate Cost*], [*Information Yield*], [*Cost-Effectiveness*],
  
  [NASA lean test], [\$0], [Autonomic cycle: definitive], [*Excellent*],
  
  [HRV monitoring (app)], [\$0–50], [Autonomic ongoing tracking], [*Excellent*],
  
  [Lactate post-exertion], [\$20–50], [Mitochondrial: suggestive], [*Very good*],
  
  [Salivary cortisol 4-point], [\$100–150], [Endocrine: HPA axis], [*Very good*],
  
  [GPCR autoantibodies], [\$300–500], [Immune: predictive for immunotherapy], [*Good* (if considering immunotherapy)],
  
  [NK cell count/function], [\$150–300], [Immune: general dysfunction], [*Moderate*],
  
  [2-day CPET], [\$1,500–3,000], [Mitochondrial: gold standard], [*Good* (if accessible)],
  
  [Cytokine panel], [\$200–400], [Immune: high variability], [*Moderate* (unreliable)],
  
  [Brain PET], [\$3,000–5,000+], [Neuroinflammation: research], [*Poor* (not actionable clinically)],
  
  ),
  kind: table, supplement: [Table], caption: [Cost-Effectiveness Ranking of Cycle Diagnostic Tests],
) <tab:cycle-test-cost-effectiveness>


*Recommended minimal battery* (total cost \$200–300):

    - NASA lean test + HRV app (autonomic): \$0–50
    - Lactate post-exertion (mitochondrial): \$20–50
    - Salivary cortisol rhythm (endocrine): \$100–150
    - Basic immune panel: CBC with differential, NK cell count (\$50–100)

This provides actionable information on 3–4 of the 5 cycles at minimal cost.

*Expanded battery for aggressive intervention* (total cost \$1,000–1,500):

    - Add GPCR autoantibodies (\$300–500) if considering immunotherapy
    - Add 2-day CPET (\$1,500–3,000) if accessible and critical for treatment decisions

==== Limitations and Caveats

    - *Biomarker variability*: Many measures (cytokines, HRV, cortisol) show day-to-day variation; single measurements may not reflect true status
    - *No validated cutoffs*: For most biomarkers in ME/CFS, we lack consensus diagnostic thresholds; interpretation requires clinical judgment
    - *Cycle interactions*: Treating one cycle may improve biomarkers in another (e.g., immune intervention may improve mitochondrial function); serial testing required
    - *Access barriers*: Advanced tests (2-day CPET, GPCR antibodies, PET imaging) are not widely available; many patients will rely on Tier 1 testing only
    - *Insurance coverage*: Most specialized ME/CFS testing is not covered by insurance; out-of-pocket costs are significant

#include "../../key-points/key-precision-medicine-in-practice.typ"

