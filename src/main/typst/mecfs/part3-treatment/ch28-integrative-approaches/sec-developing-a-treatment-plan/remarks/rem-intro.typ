#import "../../../../shared/environments.typ": *
#import "../../../../shared/tables.typ": booktabs-stroke, table-inset

Treatment planning in ME/CFS may differ fundamentally from other chronic conditions. The standard medical approach—try a treatment, observe the response, adjust—assumes that failed trials carry manageable costs. In ME/CFS, this assumption is potentially dangerous. Each treatment trial imposes metabolic demands on an already energy-depleted system, and failed trials can trigger post-exertional malaise severe enough to cause permanent functional decline (see Section @subsubsec:crash-dose-response on crash severity dose-response). For severe and very severe patients, there may be only a narrow margin for error before irreversible deterioration occurs.

This section provides a safety-first framework for treatment planning, integrating the energy cost of treatments themselves into the decision-making process.

=== The Imperative of Treatment Safety in ME/CFS
<subsec:treatment-safety-imperative>

#warning-env(title: [Treatment Trials as Energy Gambles])[
*Every medication or supplement trial in ME/CFS carries an energy cost independent of the treatment's intended effect.* Processing any exogenous substance requires ATP for hepatic metabolism (CYP450 system), renal clearance, protein binding, receptor adaptation, and immune surveillance. In a system with impaired mitochondrial ATP production—as demonstrated by two-day cardiopulmonary exercise testing (positive studies: @keller2024cpet @VanCampen2020SeverityCPET; contested by null replication @Mancini2026CPET, though both agree on elevated RPE and chronotropic incompetence), mitochondrial function assays @Myhill2009mitochondrial, and metabolomic profiling @Naviaux2017suramin @Fluge2016 — this processing overhead can itself trigger post-exertional malaise.

*The clinical consequence*: A treatment that is safe and well-tolerated in healthy individuals may provoke a crash in a severe ME/CFS patient—not because of pharmacological adverse effects, but because the body cannot afford the metabolic cost of processing the substance.

*Illustrative clinical observations*:

    - Standard-dose pyridostigmine (60 mg) causing severe prostration in a patient who later tolerated 20 mg (Section @sec:paradoxical-reactor)
    - IVIG infusions triggering prolonged crashes, consistent with the substantial immune activation and protein processing demands of large immunoglobulin infusions
    - Multiple supplement initiation simultaneously overwhelming hepatic processing capacity (see sequencing rationale in Section @subsec:prioritizing-interventions)

*Critical principle*: Treatment trials are not free. Each one consumes finite energy reserves. In severe patients, the number of tolerable failed trials may be very small before permanent deterioration occurs.
] <warn:treatment-energy-gamble>

=== Treatment Energy Categories
<subsec:energy-categories>

To guide treatment selection in energy-depleted patients, we classify all ME/CFS interventions by their net energy impact:

    / *Category A — Net energy providers:*: Treatments that directly supply ATP substrates, electron transport chain components, or essential cofactors for energy production. Net positive energy balance. These treatments give the body what it lacks. Category A does not mean risk-free—GI intolerance, allergic reactions, and supplement interactions remain possible—but the _energy_ cost is minimal to net positive. _Examples_: D-ribose, CoQ10, NADH/NAD#super[+] precursors, creatine, L-carnitine, magnesium, B vitamins, MCT oil.

    / *Category B — Energy-neutral:*: Treatments with minimal metabolic processing demands that neither provide nor consume significant ATP. Therapeutic effects operate through pathways that do not substantially burden energy metabolism. _Examples_: Most antihistamines, melatonin, PEA, LDN, Ginkgo biloba, probiotics.

    / *Category C — Energy-demanding:*: Treatments requiring significant ATP for hepatic CYP450 metabolism, renal clearance, immune activation, or protein processing. Net negative energy balance in depleted systems. The absolute magnitude of this metabolic cost has not been quantified in ME/CFS; however, the clinical observation that severely depleted patients crash from treatments well-tolerated by healthy individuals suggests the cost is meaningful relative to their reduced energy reserves. These treatments may be highly effective but impose a metabolic cost that must be budgeted. _Examples_: Valganciclovir, rituximab, IVIG, aripiprazole.

Most medications and supplements in Chapters @ch:medications-mechanisms and @ch:supplements include an Energy Profile paragraph specifying their category and mechanistic rationale.
Given that Category A treatments supply energy substrates while Category C treatments consume them, and that ME/CFS patients have impaired energy production, a logical sequencing principle emerges: *start with Category A (energy providers), stabilize, then cautiously introduce Category B (neutral), and reserve Category C (energy-demanding) for cases where phenotyping strongly predicts benefit* (see Section @sec:phenotyping-imperative for phenotyping protocols).

=== Baseline Assessment
<subsec:baseline-assessment>

Before initiating any treatment, establish:

    - *Functional status*: Bell Disability Scale score, hours upright, activity tolerance threshold
    - *Energy envelope*: Heart rate monitoring or subjective energy tracking to quantify available reserves (see Chapter @ch:lifestyle)
    - *Current medication inventory*: All active medications, supplements, and their energy categories—the total metabolic processing load matters
    - *Comorbidity mapping*: Identify Septad components (Section @sec:septad) and prioritize by symptom burden
    - *Phenotype identification*: Determine dominant subtype (immune-predominant, metabolic-predominant, neurological-predominant, autonomic-predominant) using tiered assessment (Section @sec:phenotyping-imperative)
    - *Treatment history*: Prior adverse reactions, paradoxical responses, pharmacogenomic data if available
    - *Severity classification*: Mild, moderate, severe, or very severe—this determines the safety margin for treatment trials

=== The Micro-Dosing Imperative
<subsec:microdosing>

#warning-env(title: [Never Start at Standard Doses in ME/CFS])[
ME/CFS patients—especially severe and very severe—must *never* be started on standard medication doses. The paradoxical reactor phenotype (Section @sec:paradoxical-reactor) affects a subset of patients—prevalence unknown, but frequently reported in clinical practice and patient communities—and even patients who are not paradoxical reactors have reduced metabolic processing capacity.

*Universal rule*: Start at 1/4 to 1/10 of the standard starting dose. Titrate upward at minimum 1–2 week intervals. Monitor daily for the first 2 weeks of any new treatment.
] <warn:never-standard-doses>



#figure(
  table(
    columns: (auto, auto, auto, auto, auto),
    inset: table-inset,
    stroke: booktabs-stroke(21),

[*Treatment*], [*Standard dose*], [*ME/CFS start*], [*Energy cat.*], [*Crash risk*],

table.cell(colspan: 5)[_Immune-modulating_],

[LDN], [4.5 mg], [0.5 mg], [B], [Medium],

[IVIG], [Weight-based], [50% standard rate], [C], [High],

[Cimetidine], [400 mg BID], [200 mg daily], [B–C], [Low],

table.cell(colspan: 5)[_Antiviral_],

[Valacyclovir], [1000 mg BID], [500 mg daily], [B–C], [Medium],

[Valganciclovir], [900 mg BID], [450 mg daily], [C], [High],

table.cell(colspan: 5)[_Autonomic_],

[Pyridostigmine], [60 mg TID], [15–20 mg daily], [B], [Low],

[Fludrocortisone], [0.1 mg daily], [0.05 mg daily], [B–C], [Medium],

[Midodrine], [10 mg TID], [2.5 mg daily], [B–C], [Medium],

table.cell(colspan: 5)[_Neuroactive (incl. herbal)_],

[Aripiprazole], [10–30 mg], [0.5–1 mg], [C], [High],

[Trazodone], [50–100 mg], [12.5–25 mg], [B], [Low],

[Amitriptyline], [25–50 mg], [5 mg], [B], [Low],

[Ginkgo biloba], [120–240 mg], [40–60 mg], [B], [Very low],

table.cell(colspan: 5)[_Mitochondrial and metabolic support_],

[CoQ10 (ubiquinol)], [200–300 mg], [50–100 mg], [A], [Very low],

[D-Ribose], [15 g daily], [2.5 g daily], [A#super[†]], [Very low],

[NR/NMN], [300–500 mg], [100–150 mg], [A#super[†]], [Very low],

[L-Carnitine], [1500–3000 mg], [500 mg], [A], [Very low],

[NAC], [1200 mg daily], [300–600 mg daily], [A–B], [Very low],

[Magnesium], [400–600 mg], [100–200 mg], [A], [Very low],

  ),
  kind: table,
  supplement: [Table],
  caption: [Micro-dosing reference: ME/CFS starting doses versus standard doses],
) <tab:microdosing-reference>

Energy categories: A = net energy provider, B = energy-neutral, C = energy-demanding. #super[†]Category A assignment based on proposed energy-supportive mechanisms; clinical evidence in ME/CFS is preliminary.  

Crash risk reflects both energy cost _and_ pharmacological adverse effect potential—a Category B treatment can carry elevated crash risk if it has significant non-energy adverse effects (e.g., LDN carries Medium crash risk despite Category B energy status, due to psychiatric reaction risk in paradoxical reactors).  

Severe/very severe patients: use the lower end of ME/CFS starting doses.


*Energy profiles for action-plan medications.*
The following treatments appear in Table @tab:microdosing-reference but are covered in action-plan chapters (Chapters @ch:urgent-action-severe–@ch:action-mild-moderate) rather than in the mechanism-targeting chapters. Their energy profiles are summarized here for completeness.

    - *Trazodone* (Category B, Low crash risk): Serotonin antagonist and reuptake inhibitor (SARI) used for sleep. At ME/CFS micro-doses (12.5–25 mg), CYP3A4/CYP2D6-mediated first-pass metabolism is expected to be reduced at these doses (pharmacokinetic inference), placing the metabolic burden within the energy-neutral range.
    - *Amitriptyline* (Category B, Low crash risk): Tricyclic antidepressant used at sub-antidepressant doses (5 mg) for pain and sleep; also inhibits proinflammatory mast cell mediator release @Clemons2011, an additional therapeutic benefit that does not add to metabolic burden. CYP2D6/CYP2C19 metabolic burden is expected to be reduced at this dose in extensive metabolizers (pharmacokinetic inference); CYP2D6 poor metabolizers (approximately 5–10% of European-ancestry populations; standard pharmacology) may require further dose reduction. Anticholinergic side effects (dry mouth, constipation) are the primary concern at these doses, not energy cost.
    - *Fludrocortisone* (Category B–C, Medium crash risk): Synthetic mineralocorticoid used in orthostatic intolerance @Freitas2000Bisoprolol @Ojha2024pediatricPOTS; expected mechanism is plasma volume expansion via renal sodium retention (standard mineralocorticoid pharmacology). Energy cost is typically highest during the initial adaptation period (estimated first 2–4 weeks; pharmacodynamic inference), when electrolyte rebalancing (potassium monitoring is required; standard mineralocorticoid pharmacology) and cardiovascular volume adjustment are most active. Severe patients may not tolerate this period, requiring slower titration or alternative agents. At steady state, the ongoing mineralocorticoid effect is expected to impose minimal additional metabolic demand.
    - *Midodrine* (Category B–C, Medium crash risk): Alpha-1 agonist for orthostatic intolerance @Ojha2024pediatricPOTS. Energy cost is expected to arise primarily from sustained peripheral vasoconstriction and the associated cardiovascular compensation (pharmacodynamic inference). The resulting energy demand is expected to be modest but continuous; supine hypertension is a documented pharmacological risk requiring monitoring (standard pharmacology).

=== Crash-Risk Ranking and Decision Rules
<subsec:crash-risk>

The following ranking covers the principal ME/CFS treatments discussed in this document, including those beyond Table @tab:microdosing-reference: immunotherapies from Chapter @ch:medications-mechanisms (e.g., rituximab), emerging treatments from Chapter @ch:emerging-therapies (e.g., immunoadsorption), and supplements from Chapter @ch:supplements.

The ranking uses three tiers; Table @tab:microdosing-reference uses a finer four-level scale. The mapping: “Highest” corresponds to table “High” entries; “Moderate” to “Medium” entries; and “Low” encompasses both “Low” and “Very low” table entries. For treatments appearing in the table, the crash-risk column is the definitive tier assignment; for treatments not in the table, the ranking below assigns the tier directly. Energy category alone does not determine tier placement (e.g., cimetidine is Category B–C but Low crash risk due to its CYP inhibition properties, which are expected to reduce hepatic metabolic load in polypharmacy (pharmacokinetic inference)).

*Highest crash risk* (Category C, complex immune/metabolic effects):

    - *Rituximab*: Anti-CD20 monoclonal antibody; high metabolic burden from B-cell depletion and subsequent immune remodeling (mechanistic inference)
    - *IVIG*: Pooled immunoglobulin infusion; high metabolic burden from large protein load and immune modulation response (mechanistic inference)
    - *Valganciclovir*: Antiviral nucleoside analogue; high metabolic burden from bone marrow suppression and hepatic/renal clearance (established adverse effects; energy burden by mechanistic inference)
    - *Aripiprazole*: Atypical antipsychotic at micro-doses (0.5–1 mg, clinical outcomes reported in @Crosby2021LDA); high metabolic burden from CYP2D6/3A4 metabolism (standard pharmacology) and hypothesized dopaminergic activation sensitivity (proposed mechanism)
    - *Immunoadsorption*: Extracorporeal autoantibody removal; high metabolic burden from haemodynamic stress of apheresis and subsequent transient immune disruption (mechanistic inference)

*Moderate crash risk* (Category B–C, or Category B with paradoxical potential):

    - *LDN*: Proposed TLR4 antagonist and glial modulator (proposed mechanisms); minimal metabolic burden (moderate crash risk driven by psychiatric reaction potential in paradoxical reactors, not metabolic cost)
    - *Valacyclovir*: Antiviral prodrug; moderate metabolic burden from sustained hepatic and renal clearance (mechanistic inference)
    - *Fludrocortisone*: Synthetic mineralocorticoid for orthostatic intolerance; moderate metabolic burden from mineralocorticoid-mediated metabolic adaptation (pharmacodynamic inference)
    - *Midodrine*: Alpha-1 agonist for orthostatic intolerance; moderate metabolic burden from cardiovascular adaptation (pharmacodynamic inference)
    - *5-HTP*: Serotonin precursor; moderate metabolic burden from serotonergic effects (mechanistic inference), with possible mast cell activation in MCAS-susceptible patients (proposed mechanism)
    - *Pregnenolone*: Neurosteroid precursor; moderate metabolic burden from hepatic CYP-mediated steroidogenesis (mechanistic inference)

*Low crash risk* (predominantly Category A–B; includes higher-category exceptions with energy-sparing properties per mapping note above). Within this tier, “negligible” indicates no significant hepatic processing (e.g., direct cofactors, luminal-acting agents), while “minimal” indicates modest but documented enzymatic metabolism—whether CYP-mediated, hepatic conjugation, renal clearance, or systemic enzymatic processing (regardless of whether the substance is a pharmaceutical or supplement):

    - *Magnesium, electrolytes*: Essential ion cofactors (ATP synthase, membrane potential); negligible metabolic burden
    - *CoQ10*: Electron shuttle between ETC Complexes I/II and III; negligible metabolic burden
    - *NAD#super[+] precursors (NR/NMN)*: NAD#super[+] pool replenishment, supporting NADH generation via glycolytic and TCA-cycle dehydrogenase reactions (proposed mechanism for energy benefit); negligible metabolic burden
    - *NADH*: Direct electron donor to Complex I of the electron transport chain; negligible metabolic burden
    - *D-ribose*: ATP backbone sugar supporting purine nucleotide resynthesis (proposed mechanism); negligible metabolic burden
    - *L-carnitine*: Mitochondrial fatty acid transport cofactor (carnitine palmitoyltransferase system); negligible metabolic burden
    - *Creatine*: Phosphocreatine energy buffer for rapid ATP regeneration; negligible metabolic burden
    - *PQQ*: Proposed mitochondrial biogenesis activator (preclinical; clinical evidence lacking); negligible metabolic burden
    - *MCT oil*: Ketone precursor; absorbed via portal vein (bypassing lymphatic transport) and oxidized without carnitine-dependent mitochondrial entry (C8/C10 MCTs; C12 is partially CPT1-dependent); negligible metabolic burden
    - *NAC*: Glutathione precursor and direct thiol antioxidant (cysteine donor via deacetylation, primarily hepatic and cellular); minimal metabolic burden
    - *ALA*: Mitochondrial antioxidant and heavy metal chelator; minimal metabolic burden
    - *Omega-3 (EPA/DHA)*: Anti-inflammatory fatty acids; minimal metabolic burden
    - *Curcumin, quercetin*: Polyphenol anti-inflammatories; minimal metabolic burden
    - *B vitamins, vitamin D*: Essential metabolic cofactors; minimal metabolic burden
    - *Taurine, glycine, glutamine*: Amino acid supplements; negligible metabolic burden
    - *Zinc*: Essential trace element (direct cofactor); negligible metabolic burden
    - *Probiotics*: Gut microbiome modulation; negligible metabolic burden
    - *PEA*: Endocannabinoid-related lipid mediator (glial modulation via PPAR-$alpha$; proposed mechanism); minimal metabolic burden
    - *Melatonin*: Circadian rhythm regulator and antioxidant; minimal metabolic burden
    - *Resveratrol*: Polyphenol with proposed sirtuin-activating properties (preclinical; clinical relevance uncertain); minimal metabolic burden
    - *H1 antihistamines (cetirizine, loratadine, fexofenadine)*: Histamine receptor blockers for MCAS symptom management; minimal metabolic burden
    - *Cimetidine*: H2 antagonist with CYP inhibitory properties (in polypharmacy, may reduce total hepatic metabolic load of co-administered drugs; see Chapter @ch:medications-mechanisms); minimal metabolic burden
    - *Pyridostigmine*: Acetylcholinesterase inhibitor; minimal metabolic burden
    - *Trazodone*: SARI used for sleep at micro-doses (12.5–25 mg); minimal metabolic burden
    - *Amitriptyline*: Tricyclic at sub-antidepressant dose (5 mg) for pain and sleep; minimal metabolic burden
    - *Ginkgo biloba*: Mild vasodilator and antioxidant; minimal metabolic burden

#warning-env(title: [The Paradox of Effective Treatments])[
The treatments associated with the most pronounced reported responses in biomarker-defined subgroups (rituximab, immunoadsorption, valganciclovir; see Chapters @ch:medications-mechanisms and @ch:emerging-therapies) are also the most energy-demanding. For severe patients, this creates a fundamental dilemma: the interventions that could potentially restore function require an energy investment the patient may not be able to afford. This paradox is the strongest argument for *phenotype-guided treatment selection* (Section @sec:subtype-approaches)—reserving Category C treatments for patients whose biomarker profile predicts a high probability of response, rather than empirical trial-and-error.
]

=== Prioritizing Interventions
<subsec:prioritizing-interventions>

The following treatment introduction sequence is recommended for ME/CFS, particularly in moderate-to-severe patients, based on energy-cost principles (evidence-based guidelines for this sequencing are not yet available):

    - *Foundation first* (Weeks 1–4): Electrolytes, magnesium, sleep optimization (behavioral; no pharmacological energy category applies). Pharmacological items are all Category A or B. Address the most basic physiological deficits before anything else.
    - *Energy substrate support* (Weeks 5–8): CoQ10, B vitamins, then one additional mitochondrial support (D-ribose or NR/NMN). All Category A (D-ribose and NR/NMN carry the A#super[†] qualifier; see Table @tab:microdosing-reference footnote). The rationale is to build energy reserves before introducing treatments that consume energy (proposed sequencing principle).
    - *Symptomatic relief* (Weeks 9–12): Energy-neutral treatments targeting dominant symptoms—PEA for pain, melatonin for sleep, antihistamines for MCAS (all Low crash risk per ranking above). Minimal energy cost.
    - *Targeted interventions* (After stabilization): Treatments requiring subtype identification, spanning Category B through B–C depending on the agent. LDN for immune/neuroinflammatory subtype (Category B, but Moderate crash risk from paradoxical reactions). Pyridostigmine for autonomic subtype (Category B, Low crash risk). Antivirals for viral-immune subtype (Category B–C).
    - *High-cost interventions* (Only with phenotyping): Category C treatments (IVIG, valganciclovir, immunomodulators) only when biomarker evidence strongly predicts benefit and the patient has adequate energy reserves from Category A foundation.

See Section @sec:protocols in Chapter @ch:supplements for cost-stratified supplement protocols that align with this sequence.

=== When to Stop Trying
<subsec:when-to-stop>

=== Time-Dependent Reversibility Windows
<subsec:reversibility-windows>

*Certainty: 0.30.* The time-dependent reversibility model ($R(t) = R_0 e^(-lambda t)$) hypothesizes that intervention efficacy decays exponentially with disease duration. If validated, this would explain why early pediatric intervention preserves recovery potential that closes in chronic adult disease.

*Mechanistic basis:* Each crash and month of illness depletes finite biological reserves (Recovery Capital). As illness duration increases, both the capacity for improvement (R_0) and the rate of reversibility loss ($lambda$) may change. Early intervention catches reserves at higher levels, while later intervention faces progressively depleted recovery potential.

*Clinical implication:* Explains dramatic pediatric outcomes compared to adult outcomes. Suggests that ME/CFS may have critical windows where treatment can reverse pathology, but these windows close over time.

*Testable predictions:*
1. Treatment response magnitude will correlate negatively with disease duration (shorter duration = larger response).
2. Biomarker evidence of reversible pathology (e.g., neuroinflammation on TSPO PET) will be more common in early disease.
3. Pediatric patients treated within first 2 years will show better long-term outcomes than those treated later.

=== Methylphenidate Pacing Protocol
<subsec:methylphenidate-pacing>

For ME/CFS patients with comorbid ADHD, methylphenidate requires special pacing considerations due to its stimulant properties and metabolic effects.

*Energy category:* Methylphenidate is Category B–C (energy-demanding due to dopaminergic activation and hepatic metabolism). Not energy-neutral despite cognitive benefits.

*Pacing modifications:*
- Start at ultra-low doses (1–2.5 mg vs. standard 10–20 mg for ADHD)
- Use medication only during planned activity windows, never as "energy bridge" to push through fatigue
- Strict post-dose rest protocols (horizontal positioning, reduced sensory input)
- Monitor daily for delayed crashes (dopamine surge may mask fatigue, leading to overexertion)

*Risk considerations:*
- Methylphenidate may worsen orthostatic symptoms (POTS) in susceptible patients
- Stimulant properties may disrupt sleep architecture at therapeutic ADHD doses
- Risk of treatment-induced manic/hypomanic episodes in bipolar predisposition

*Alternative approaches:*
- Non-stimulant ADHD medications (atomoxetine) have lower metabolic burden
- Behavioral strategies modified for ME/CFS energy constraints
- Consider whether ADHD symptoms are primary ME/CFS manifestations rather than separate comorbidity

=== Iron Repletion for Neurodivergent Comorbidity
<subsec:iron-repletion-neurodivergent-approach>

See Chapter @ch:supplements, Section @subsec:iron-repletion-neurodivergent for complete protocol on iron bisglycinate supplementation, dosing, and monitoring protocols. This subsection notes the specific application for patients with comorbid neurodivergent conditions.

*Rationale:* Neurodivergent ME/CFS patients (ADHD, autism) may have iron deficiency contributing to both ME/CFS fatigue and neurodivergent symptoms. Iron status optimization addresses neurotransmitter synthesis deficits while supporting mitochondrial function.

*Clinical approach:*
- Screen for iron deficiency (ferritin < 100 ng/mL, transferrin saturation < 20%)
- Consider iron bisglycinate (better tolerability than ferrous sulfate)
- Monitor for iron overload with regular ferritin checks
- Combine with BH4 cofactors (riboflavin, vitamin C) when indicated


*Certainty: 0.30* (clinical reasoning based on crash dose-response data and paradoxical reactor observations; no RCTs on optimal trial limits)

For severe and very severe ME/CFS patients, the following decision rules may prevent treatment-induced deterioration:

*Stop-and-stabilize criteria* (thresholds are proposed clinical defaults, not evidence-based cut-offs; clinicians should adjust based on individual patient trajectory):

    - *After any treatment-induced crash*: Do not attempt another new treatment until baseline function is fully restored (minimum 4 weeks at pre-crash level)
    - *After two consecutive treatment-induced crashes*: Pause all treatment experimentation for minimum 3 months. Focus exclusively on pacing and Category A energy support. _Rationale_: Two consecutive crashes suggest either a pattern of global medication intolerance or inadequate recovery time between trials; continuing risks cumulative decline
    - *After three failed Category C trials*: Reassess the treatment approach entirely. The patient may be a global paradoxical reactor, and further empirical trials carry unacceptable risk. _Rationale_: Three Category C failures represent substantial cumulative energy expenditure with no return; if failures reflect a systemic intolerance pattern, each additional trial is unlikely to succeed and risks further cumulative harm
    - *If functional capacity has declined $>$20% since treatment trials began*: Immediate cessation of all experimentation. Stabilization and energy restoration take absolute priority. _Rationale_: A 20% decline is chosen as the threshold at which iatrogenic harm clearly outweighs any remaining potential benefit from empirical trials; this corresponds roughly to losing one severity tier (e.g., moderate to severe)

*Decision threshold*: For very severe (bedridden) patients, apply a more conservative standard—stop after _any single_ treatment-induced functional decline lasting more than 1 week. The margin for error in very severe disease is extremely narrow.
=== Medication-Induced Crash Recovery Protocol
<subsec:crash-recovery>

When a treatment trial triggers a crash:

*Step 1 — Immediate actions* (within hours):

    - Discontinue the offending treatment immediately
    - Do not attempt to “push through” in hopes the reaction will resolve
    - Implement strict activity restriction (reduce to 50% of pre-crash activity level)

*Step 2 — Energy support* (first 24–72 hours):

    - Maintain or increase Category A supplements (electrolytes, magnesium, CoQ10, D-ribose)
    - Consider the post-exertional emergency protocol (Section @subsec:pem-prevention) if crash is severe
    - Ensure adequate caloric intake—metabolic recovery requires fuel
    - Optimize sleep (this is when repair occurs)

*Step 3 — Monitoring and documentation*:

    - Track daily function using Bell Disability Scale or equivalent
    - Document: what was tried, at what dose, onset of symptoms, symptom pattern, recovery timeline
    - Note whether crash pattern resembles PEM (delayed 24–72 hours) or immediate adverse reaction (within hours)—these have different implications for future treatment attempts

*Step 4 — Recovery assessment*:

    - Return to pre-crash baseline must be confirmed before any new treatment trial
    - Minimum recovery period: 4 weeks at stable baseline function
    - If recovery is incomplete after 3 months, the treatment may have caused lasting damage—this changes the risk calculus for future trials (apply stricter stop criteria)

=== Tracking Progress
<subsec:tracking-progress>

Systematic treatment response tracking is essential for distinguishing signal from noise in ME/CFS:

*Minimum Data to Collect.*

    - Daily symptom severity (0–10 scale) for: fatigue, cognitive function, pain, sleep quality, orthostatic symptoms
    - Activity level (hours upright, steps if wearable available)
    - Heart rate data (resting HR, orthostatic HR change)
    - New treatment additions/changes with dates and doses
    - Crashes: triggers, severity, recovery duration

*Assessment Intervals.*

    - *Daily*: Symptom diary during first 2 weeks of any new treatment
    - *Weekly*: Summary assessment during titration periods
    - *Monthly*: Review of overall trajectory and treatment utility
    - *Quarterly*: Comprehensive reassessment—is the current regimen still justified?

*When to Consider a Treatment “Failed.”*
A treatment should be considered failed after:

    - 8–12 weeks at target dose with no detectable benefit
    - Any severe adverse reaction requiring discontinuation
    - Cost burden outweighing uncertain or minimal benefit
    - Functional decline that correlates temporally with treatment initiation
