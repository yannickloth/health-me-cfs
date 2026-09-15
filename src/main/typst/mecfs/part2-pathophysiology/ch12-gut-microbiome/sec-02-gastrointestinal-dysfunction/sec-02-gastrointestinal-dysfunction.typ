#import "../../../shared/environments.typ": *

== Gastrointestinal Dysfunction
<sec:gi-dysfunction>

=== Irritable Bowel Syndrome Overlap

IBS and ME/CFS show profound overlap, complicating both diagnosis and treatment.

*Prevalence.*

    - *50–90% of ME/CFS patients* meet criteria for IBS (median 51%)
    - Cluster analysis: 59.6% of ME/CFS patients have “abdominal discomfort syndrome”
    - IBS patients have *5-fold higher odds* of having CFS compared to general population
    - IBS-Constipation (IBS-C) subtype shows higher ME/CFS association than IBS-Diarrhea

*Clinical Significance.*
ME/CFS patients with comorbid IBS demonstrate:

    - More severe fatigue
    - Poorer appetite
    - Increased abdominal pain
    - Greater overall symptom burden

=== Motility Disorders

==== Gastroparesis

Delayed gastric emptying is common in ME/CFS and contributes significantly to symptom burden.

<obs:gastroparesis-prevalence>
A 2023 gastric emptying scintigraphy study @GastricDysmotility2023 in ME/CFS patients (n=40) demonstrated:

    - *72% showed delayed liquid-phase emptying*
    - *38% showed delayed solid-phase emptying*
    - Degree of delay correlated significantly with symptom severity
    - Both liquid and solid delay increased with more severe ME/CFS
    - Lower proximal stomach accommodation after meals
    - Larger fasting antral area (suggesting visceral hypersensitivity)

Symptom profiles resembled functional dyspepsia, though autonomic dysfunction likely contributes (cross-sectional, n=40, Medium certainty).
*Autonomic Connection.*

Gastroparesis in ME/CFS is likely secondary to autonomic dysfunction:

    - Parasympathetic dysfunction associated with delayed gastric emptying
    - Vagal nerve impairment reduces gastric motility
    - Sympathetic hyperactivation may inhibit digestive function
    - Dysautonomia disrupts coordinated antral contractions

*Symptoms.*

    - Early satiety (75% of ME/CFS patients)
    - Postprandial fullness and bloating
    - Nausea (35%)
    - Abdominal pain (45%)
    - Vomiting (in severe cases)

==== Small Intestinal Bacterial Overgrowth (SIBO)
<sec:sibo>

SIBO occurs when excessive bacteria colonize the small intestine, which is normally relatively sterile. It is increasingly recognized as a major contributor to ME/CFS gastrointestinal symptoms.

<obs:sibo-prevalence>
A retrospective analysis of ME/CFS patients referred for breath testing found:

    - 479 patients referred; 367 completed hydrogen-methane breath tests
    - *48% SIBO-positive when excluding equivocal results* (152/316)
    - 41% SIBO-positive overall (including equivocal as negative)
    - 45% SIBO-negative
    - 14% equivocal
    - Predictive factors: older age, IBS diagnosis

This suggests a substantial proportion of ME/CFS patients have bacterial overgrowth, though the retrospective design and referral bias (patients referred for breath testing likely had more GI symptoms) limit generalizability (retrospective chart review; 479 referred, 367 with usable results, 316 conclusive; Medium certainty) @SIBOKarhu2023.
An earlier conference abstract @Pimentel2000SIBOcfs (Pimentel et al.\ 2000; n=31 CFS patients; Low certainty 0.25 --- conference abstract only, not peer-reviewed as full paper) reported 77% SIBO positivity by lactulose hydrogen breath test and a double-blind RCT of neomycin versus placebo. The study was underpowered and showed no significant difference between arms; breath test normalization correlated with symptom improvement in responders. This historically early finding is consistent with the direction of the Karhu 2023 data but should be interpreted with caution given study design limitations.

*Pathophysiology: Migrating Motor Complex Dysfunction.*

The migrating motor complex (MMC) is a cyclic pattern of electromechanical activity that “sweeps” bacteria from the small intestine to the colon during fasting.

    - MMC occurs every 90–120 minutes during fasting
    - Controlled by Interstitial Cells of Cajal linking smooth muscle to enteric nervous system
    - Studies suggest most patients with abnormal MMC develop duodenal bacterial overgrowth
    - MMC dysfunction allows bacteria to accumulate in small intestine

*Factors impairing MMC in ME/CFS:*

    - *Enteric nervous system dysfunction*: The small bowel MMC is driven autonomously by the enteric nervous system, not by the vagus nerve. Deloose et al. @Deloose2012MMCreview established that the vagus modulates gastric MMC phase III but does _not_ regulate small bowel MMC periodicity. Consequently, enteric neuropathy—rather than vagal dysfunction—is the primary autonomic mechanism for small bowel MMC failure. Motilin and ghrelin signaling disruption are additional pathways.
    - *Autonomic dysfunction (gastric phase)*: Vagal impairment reduces gastric MMC phase III amplitude and can delay gastroduodenal propagation, but this does not account for small bowel SIBO-predisposing MMC failure directly.
    - *Post-infectious autoimmunity*: Anti-CdtB and anti-vinculin antibodies (from prior gastroenteritis) damage Interstitial Cells of Cajal
    - *Chronic stress*: Sympathetic activation suppresses MMC
    - *Hypothyroidism*: Modulates enteric nervous system function
    - *Medications*: Opioids, anticholinergics impair motility

*SIBO Subtypes.*

Different bacterial populations produce different gases, leading to distinct clinical presentations:



#figure(
  table(
    columns: (auto, auto, auto, auto),
    [*Subtype*], [*Gas Produced*], [*Predominant Symptoms*], [*Treatment Focus*],

    [Hydrogen-dominant], [H#sub[2]], [Diarrhea], [Rifaximin],

    [Methane (IMO)], [CH#sub[4]], [Constipation], [Rifaximin + neomycin],

    [Hydrogen sulfide (ISO)], [H#sub[2]S], [Diarrhea, gas, odor], [Bismuth, targeted antibiotics],
  ),
  caption: [SIBO Subtypes and Clinical Presentations],
) <tab:sibo-subtypes>


{IMO = Intestinal Methanogen Overgrowth; ISO = Intestinal Sulfide Overproduction.}


    - *Hydrogen-dominant*: Most common; E. coli, Klebsiella, other hydrogen producers
    - *Methane-dominant (IMO)*: Archaea (_Methanobrevibacter smithii_) convert H#sub[2] to CH#sub[4]; slows transit time, causes constipation
    - *Hydrogen sulfide (ISO)*: Sulfate-reducing bacteria; associated with diarrhea; NOT detected by standard H#sub[2]/CH#sub[4] tests (requires Trio-Smart 3-gas test)

===== Hydrogen Sulfide as a Gut-Derived Mitochondrial Toxin <sec:h2s-mitochondrial-toxin>

Hydrogen sulfide (H#sub[2]S) produced by intestinal sulfate-reducing bacteria (_Desulfovibrio_, _Bilophila wadsworthia_, _Fusobacterium_) directly inhibits mitochondrial Complex IV (cytochrome _c_ oxidase) by binding to its binuclear CuB/heme~a#sub[3] active site --- the same site targeted by cyanide @Nicholls2013sulfideCOX. The inhibition is biphasic and partially reversible, but at the micromolar concentrations produced by bacterial overgrowth, it chronically reduces ATP output without causing acute cell death.

#include "subsec-04-small-intestinal-bacterial-overgrowth-si/hypotheses/hyp-gut-derived-h-sub-2.typ"

#include "subsec-04-small-intestinal-bacterial-overgrowth-si/warnings/warn-sulfur-containing-supplement-caution.typ"

*Diagnosis: Breath Testing.*

Breath testing remains the primary non-invasive diagnostic method for SIBO.

*Protocol:*

    - Substrate: Glucose (50–75g) or lactulose (10g)
    - Measurements: Every 15 minutes for 120 minutes
    - End-expiratory breath samples analyzed for H#sub[2], CH#sub[4] (and H#sub[2]S if available)

*Interpretation:*

    - *Hydrogen*: Rise $gt.eq$20 ppm above baseline
    - *Methane*: $gt.eq$10 ppm at any point
    - *Hydrogen sulfide*: $gt.eq$3 ppm at any point (Trio-Smart criteria)

*Glucose vs Lactulose:*

    - Glucose absorbed in proximal small intestine (more specific for SIBO)
    - Lactulose reaches colon (may yield false positives)
    - Glucose preferred for diagnosis; lactulose may detect distal SIBO

#include "subsec-04-small-intestinal-bacterial-overgrowth-si/limitations/lim-breath-test-validity-esnm-anms-critical-.typ"

=== Digestive Function

Beyond motility, ME/CFS patients may have impaired digestive capacity:

    - *Pancreatic enzyme insufficiency*: Reduced lipase, protease, amylase secretion
    - *Bile acid malabsorption*: Impaired fat digestion; contributes to diarrhea
    - *Nutrient malabsorption*: Consequent to SIBO, intestinal permeability, and enzyme deficiency
    - *Hypochlorhydria*: Reduced gastric acid (sometimes from PPI overuse) predisposes to SIBO

*SIBO Subtype–Specific Nutritional Deficits.*

Wielgosz-Grochowska et al. @Wielgosz2024SIBOnutrition (n=67 newly diagnosed SIBO patients; observational, single-centre, Medium certainty 0.45; not ME/CFS-specific) found that deficiency burden varies significantly by SIBO subtype:

    - *H+/M+ mixed subtype* (51% of cohort): Lowest serum vitamin D, lowest serum ferritin — highest nutritional deficiency burden of all three subtypes; also had highest dietary fat intake
    - *M+ methane-dominant* (31%): Elevated folate (bacterial production), reduced fiber intake; >70% consumed excessive fat
    - *H+ hydrogen-dominant* (18%): Primarily reduced lactose tolerance
    - All subtypes: 87–97% were below the vitamin D adequate intake threshold

These findings suggest SIBO patients with mixed H+/M+ phenotype — likely the most severe subtype — should be evaluated for vitamin D deficiency and iron depletion as a standard part of workup. Given the 48% SIBO prevalence in ME/CFS patients (Karhu 2023 @SIBOKarhu2023), subtype-stratified nutritional assessment is clinically relevant.

