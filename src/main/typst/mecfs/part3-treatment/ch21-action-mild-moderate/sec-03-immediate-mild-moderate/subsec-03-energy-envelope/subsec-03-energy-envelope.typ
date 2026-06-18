#import "../../../../shared/environments.typ": *

=== Foundation: Energy Envelope Management
<sec:energy-envelope>

*Critical Importance*

Pacing is _more important_ for mild-moderate cases than for severe cases, paradoxically. Severe patients are forced to rest by their symptoms. Mild-moderate patients can push through, leading to progressive worsening and eventual severity. The post-exertional malaise mechanism (Section @sec:energy-consequences) proposes that repeated energy envelope violations may cause cumulative mitochondrial damage and progressive decline—a model supported by indirect evidence from patient outcomes and cell biology but not yet confirmed by controlled longitudinal studies.

#include "../../key-points/key-experimental-emergency-post-exertion-protocol-for-unavoidabl.typ"

*The Energy Envelope Concept*

    - *Available energy*: Fixed daily energy budget (lower than healthy individuals)
    - *Energy expenditure*: All activities (physical, cognitive, emotional) cost energy
    - *Energy envelope*: Staying within available energy prevents PEM and progression
    - *Exceeding envelope*: Triggers PEM, depletes reserves, leads to progressive decline

*Quantifying Your Envelope*

    - *Activity tracking* (2-week baseline):
    
        - Record all activities with duration and intensity
        - Rate symptoms at end of each day (0–10 scale)
        - Note PEM episodes (typically 24–72 hours post-exertion)
        - Identify threshold: Maximum activity level that does NOT trigger PEM
    

    - *Heart rate monitoring*:
    
        - Wear continuous HR monitor
        - Calculate anaerobic threshold (AT): $(220 - "age") times 0.60$ for mild cases
        - Optimal: Get CPET to measure actual AT
        - Stay below AT for all activities
    

    - *Symptom-based pacing*:
    
        - Stop activity BEFORE symptoms worsen
        - If mild increase in fatigue/pain/brain fog → rest immediately
        - Do not “push through”—this depletes reserves
    

*Conservative Baseline Establishment During Interventions*

#include "../../warnings/warn-graded-exercise-therapy-is-harmful.typ"

#include "../../warnings/warn-do-not-test-pem-during-early-intervention-phase.typ"

*50% Rule for Mild-Moderate Cases*

    - *Conservative estimate*: Do 50% of what you think you can do
    - Example: If you feel you can walk 30 minutes, walk 15 minutes
    - Example: If you feel you can work 8 hours, work 4 hours
    - *Rationale*: Most patients overestimate capacity; 50% rule provides safety margin
    - *Adjustment*: If no PEM after 2 weeks at 50%, increase to 60%; iterate until you find sustainable level

*Preventing Boom-Bust Cycles*

    - *Boom phase*: Feel better → do too much → crash
    - *Bust phase*: Severe PEM → bedbound → recover slowly → repeat
    - *Solution*: Consistent daily activity within envelope, even on “good days”
    - *Good days*: Do NOT increase activity; bank energy for inevitable bad days

==== Energy Triage: Cognitive Task Hierarchy-Aware Activity Planning
<subsubsec:cognitive-hierarchy-allocation>

The selective energy dysfunction hypothesis (Section @sec:selective-dysfunction) proposes that the CNS implements a hardwired energy allocation hierarchy under scarcity, with complex cognition (Tier 6) sacrificed first, while sensory and motor functions (Tier 2–3) are preserved longer.

#include "../../key-points/key-energy-triage-hierarchy-from-selective-dysfunction-framework.typ"

#include "../../recommendations/rec-cognitive-hierarchy-aware-task-allocation-strategy.typ"

==== Crash Severity Dose-Response: Why Large Violations Are Catastrophic
<subsubsec:crash-dose-response>

Not all energy envelope violations are equally harmful. Emerging evidence and patient experience suggest a dose-response relationship between exertion magnitude and crash severity, with critical thresholds beyond which damage becomes irreversible.

*The Threshold Hypothesis.*

#include "../../hypotheses/hyp-crash-severity-dose-response.typ"

*Crash Severity Classification System.*

To operationalize crash prevention, we propose a four-tier severity classification:



#figure(
  table(
    columns: (auto, auto, auto, auto, auto),
  
  [*Tier*], [*Exertion Relative to Envelope*], [*Typical Recovery Time*], [*Predicted Long-Term Impact*],
  
  [*Minor*], [110–130% of safe capacity], [2–7 days], [Fully reversible; no permanent damage if infrequent ($<$1/month)],
  
  
  [*Moderate*], [150–180% of safe capacity], [1–4 weeks], [Reversible with aggressive rest; may slightly lower baseline if frequent ($>$2/month)],
  
  
  [*Severe*], [200–300% of safe capacity], [1–3 months], [Partially reversible; likely permanent 5–15% function loss; accelerates progression],
  
  
  [*Catastrophic*], [$>$300% of safe capacity], [3–12+ months, or never], [Irreversible; permanent 20–50% function loss; triggers Stage N$arrow.r$N+1 cycle entry],
  
  ),
  kind: table, supplement: [Table], caption: [Crash Severity Classification with Dose-Response Predictions],
) <tab:crash-severity-tiers>


{*Note*: Percentages are illustrative estimates based on patient reports and PEM mechanism; no controlled studies exist. “Safe capacity” = maximum activity level that does NOT trigger PEM. Example: If safe walking distance is 1000 steps/day, Minor = 1100–1300 steps, Moderate = 1500–1800 steps, Severe = 2000–3000 steps, Catastrophic = $>$3000 steps.}


*Evidence Supporting Dose-Response.*

While no formal studies have tested the crash severity dose-response hypothesis, multiple lines of evidence support it:

    - *Patient retrospective analysis*: Community surveys consistently identify specific “life-changing crashes” after which patients never returned to baseline
    
        - Common triggers: attempting to return to work full-time after diagnosis, major life events (weddings, moving house), exercise programs (GET, personal training)
        - Pattern: Massive exertion → severe crash → permanent 20–50% function loss
        - Contrast: Patients who avoid catastrophic crashes may slowly improve or stabilize; those with 1–2 catastrophic crashes often progress to severe disease
    

    - *Recovery kinetics*: Exponentially longer recovery from larger crashes suggests threshold crossing
    
        - Minor crash: 2–7 days (proportional to exertion)
        - Catastrophic crash: 6–12 months (disproportionate to exertion magnitude)
        - Non-linearity suggests biological threshold (ATP depletion, cell death) was crossed
    

    - *Two-day CPET as controlled crash*: Standardized exertion to ventilatory threshold
    
        - Day 2 testing triggers moderate-to-severe crash in most ME/CFS patients
        - Recovery time averages 13 days but ranges 7–60+ days @keller2024cpet
        - Patients with longer recovery ($>$30 days) may have crossed threshold into irreversible damage
    

    - *Mitochondrial damage-repair dynamics*: Basic biology supports threshold model
    
        - Mitochondrial biogenesis capacity: $tilde$10–15%/day of total mitochondrial mass
        - If $>$40–50% of mitochondria damaged simultaneously, replacement takes weeks; during this time, cells operate at massive ATP deficit
        - Prolonged severe ATP deficit may trigger cell death (particularly neurons, which cannot regenerate)
    

*Informal Patient Observation: “Crash Limit Rule.”*
Patient communities have reported an informal pattern suggesting cumulative worsening with repeated severe crashes, sometimes called the “crash limit rule.” No systematic study has quantified crash thresholds, and the specific numbers circulating in patient communities (e.g., 5 severe crashes, 2-week to 6-month recovery progression) have no empirical basis—they should not be treated as clinical cutoffs. The _qualitative_ pattern of progressively impaired recovery with repeated severe crashes is, however, consistent with the mitochondrial and epigenetic mechanisms described below.

*Mechanistic Basis: Why Thresholds Exist.*

Four converging biological mechanisms explain why crash consequences become catastrophic beyond specific exertion thresholds:

    / *ATP Depletion Thresholds*: Normal cellular function requires ATP maintained at 50–80% of maximum capacity. Mild exertion depletes ATP to 40–50% (reversible in hours). At 30–50% depletion, AMPK stress pathways activate; at $>$50% depletion, mitochondrial permeability transition (mPT) occurs with irreversible damage; at $>$70% depletion, apoptotic signaling triggers cell death. In ME/CFS, impaired ATP production means even moderate exertion may cross the 50% threshold.

    / *Mitochondrial Turnover Limits*: Biogenesis operates at 10–15%/day under optimal conditions. If $<$30% of mitochondria are damaged, clearance occurs in 2–7 days. If 30–50% are damaged, recovery requires 3–5 weeks with prolonged severe ATP deficit. If $>$50% are damaged, regeneration capacity is overwhelmed, resulting in permanent mitochondrial density reduction.

    / *Inflammatory Cascade Intensity*: Post-exertional cytokine release follows dose-response kinetics. Mild exertion triggers 2–3-fold cytokine elevation, resolving in 2–3 days. Severe exertion may trigger $>$10-fold elevation, causing microglial priming (brain), endothelial dysfunction (blood vessels), and fibrotic signaling. Once primed, microglia remain hyperreactive for months to years.

    / *Epigenetic Locking*: Severe cellular stress triggers DNA methylation and histone modifications. Under normal stress, these reverse when stress resolves. Under extreme stress ($>$200% capacity), changes may lock: hypermethylation of biogenesis genes (PGC-1$alpha$, TFAM) permanently reduces mitochondrial regeneration capacity; inflammatory promoter modifications maintain chronic low-grade inflammation.

*Convergent threshold model*: Below capacity, cells cope and recover. At 130–150% capacity, one or two mechanisms trigger. At $>$200% capacity, all four mechanisms activate simultaneously, creating a cascade of irreversible damage: severe ATP depletion $arrow.r$ apoptosis $arrow.r$ DAMP release $arrow.r$ amplified inflammation $arrow.r$ damaged remaining mitochondria $arrow.r$ regeneration overwhelmed $arrow.r$ epigenetic locking. This explains the clinical observation that catastrophic crashes cause disproportionate, irreversible harm.

*Clinical Crash Prevention Strategy.*

The dose-response model generates specific clinical guidance:

#include "../../key-points/key-asymmetric-crash-prevention-severe-frequent.typ"

*Identifying Your Crash Threshold.*

Since individual capacity varies enormously (bedbound patients: 100 steps = catastrophic; mild patients: 5000 steps = moderate), each patient must identify their personal thresholds:

    - *Establish baseline safe capacity*: 2–4 weeks activity tracking; find maximum activity causing NO PEM
    - *Define crash tiers relative to baseline*:
    
        - Minor: 110–130% of baseline (e.g., 1100–1300 steps if baseline is 1000)
        - Moderate: 150–180% of baseline (1500–1800 steps)
        - Severe: 200–300% of baseline (2000–3000 steps)
        - Catastrophic: $>$300% of baseline ($>$3000 steps)
    
    - *Track crash history*: Note which activities triggered which tier crashes; identify patterns
    - *Adjust safety margin*: If even “safe” activities occasionally cause crashes, reduce baseline by 10–20%

*Emergency Crash Management Protocol.*

If a severe or catastrophic crash occurs despite prevention efforts:

#include "../../warnings/warn-severe-crash-medical-emergency.typ"

*Research Directions: Validating Dose-Response.*

To test the crash severity dose-response hypothesis:

    - *Retrospective cohort analysis*: Survey ME/CFS patients about lifetime crash history
    
        - Correlate number of severe/catastrophic crashes with current disease severity
        - Hypothesis: Patients with $gt.eq$3 catastrophic crashes are 5–10$times$ more likely to be severe/very severe
        - Confounders: Crash severity may correlate with baseline disease severity (sicker patients crash more easily)
    

    - *Prospective biomarker study*: Standardized exertion at multiple intensities
    
        - Mild exertion (50% AT), moderate (75% AT), maximal (100% AT, CPET)
        - Serial biomarkers: ATP/ADP, lactate, cytokines, oxidative stress markers at 0h, 6h, 24h, 48h, 72h post-exertion
        - Hypothesis: Biomarker perturbations are non-linear; doubling exertion intensity causes 5–10$times$ biomarker changes
        - Identify thresholds where reversible dysfunction becomes irreversible damage
    

    - *Natural history tracking with wearables*: 100+ ME/CFS patients wearing continuous activity monitors for 1–2 years
    
        - Correlate crash magnitude (actigraphy-derived) with recovery duration
        - Identify if specific crashes preceded permanent functional decline
        - Machine learning to predict “dangerous” activity patterns
    

    - *Intervention trial*: Emergency PEM Protocol vs placebo after standardized severe exertion
    
        - Outcome: Does aggressive post-exertion support reduce irreversible damage?
        - Measure function at 6 months post-crash; hypothesis: intervention prevents permanent worsening
    

#include "../../key-points/key-crash-prevention-as-disease-modifying-therapy.typ"

==== Advanced Pacing Approaches

Standard energy envelope management relies on subjective symptom monitoring and retrospective crash analysis. Two emerging approaches offer more objective, proactive guidance: HRV-guided activity management and periodized activity cycling adapted from sports medicine.

#include "../../protocols/proto-hrv-guided-activity-management.typ"

#include "../../protocols/proto-periodized-activity-cycling.typ"

==== Sports Medicine Deload Principles
<sec:sports-deload>

The periodized activity cycling protocol (Protocol @prot:periodized-activity) draws from sports medicine principles of structured recovery. Recent consensus work in athletic training provides more detailed guidance on deload implementation that may inform ME/CFS pacing strategies.

*Deload Definition and Rationale*

Bell et al. @Bell2023deload define deloading in athletic contexts as “a period of reduced training stress designed to mitigate physiological and psychological fatigue, promote recovery, and enhance preparedness for subsequent training” (n=34 expert coaches, Delphi consensus). In athletes, deloads prevent cumulative fatigue that would otherwise lead to overtraining syndrome. The parallel to ME/CFS: regular planned reductions in activity may prevent the accumulation of metabolic and immune stress that precipitates crashes.

*Evidence-Based Parameters from Athletic Training*

Sports science research establishes:

    - *Frequency*: Deloads every 4–6 weeks in athletic populations @Bell2023deload
    - *Duration*: Approximately 7 days (range: 3–14 days depending on individual response)
    - *Volume reduction*: 40–60% reduction in total activity through fewer “sets” (activity bouts), shorter duration, or reduced frequency
    - *Intensity*: May remain moderate while volume decreases, OR both reduced together
    - *Implementation*: Pre-planned (calendar-based) or autoregulatory (HRV/symptom-driven)

*Adaptation for ME/CFS: Critical Differences*

Direct application of athletic deload protocols to ME/CFS would be inappropriate. Key adaptations required:

    - *Baseline capacity*: Athletes start from high-normal fitness; ME/CFS patients from 10–20% of healthy capacity. Activity “volume” in ME/CFS refers to activities of daily living (cooking, hygiene, short walks), not structured training.

    - *Recovery timelines*: Athletes recover from deconditioning in weeks; ME/CFS recovery (if it occurs) requires months to years. Athletic 7-day deloads become 7–14 day deloads in ME/CFS.

    - *Progression philosophy*: Athletic training aims for continuous improvement; ME/CFS management prioritizes stability and preventing deterioration. Any capacity increases are secondary goals.

    - *Consequence of error*: Athletes who overtrain risk temporary performance setbacks; ME/CFS patients who exceed energy envelope risk prolonged relapse. The stakes are fundamentally different.

#include "../../warnings/warn-not-for-severe-or-very-severe-patients.typ"

*Who May Benefit: Selection Criteria*

Sports medicine-adapted pacing may be appropriate for:

    - Mild to moderate ME/CFS patients (ambulatory, able to perform some daily activities)
    - Stable baseline established over 4+ weeks (no recent crashes)
    - Previous athletic background (familiar with structured training concepts)
    - Comfort with quantitative tracking and data collection
    - Access to monitoring tools (smartphone, wearables, tracking apps)
    - Psychological readiness for disciplined, patient approach
    - Understanding that “progressive overload” is NOT “push through pain”

Contraindications:

    - Severe or very severe ME/CFS
    - Actively deteriorating or unstable condition
    - Recent major crash (within 3 months)
    - Tendency toward overachievement or ignoring warning signals
    - Psychological distress from metrics or self-monitoring

==== Objective Recovery Monitoring Beyond HRV

While HRV provides sophisticated autonomic assessment (Protocol @prot:hrv-guided-pacing), simpler metrics may complement or substitute when HRV monitoring is impractical.

*Resting Heart Rate (RHR) as Recovery Indicator*

Resting heart rate offers a zero-cost alternative to HRV for tracking recovery status:

#include "../../protocols/proto-resting-heart-rate-monitoring.typ"

*Combined Monitoring Strategy*

For maximal sensitivity, combine multiple metrics:

    - *Primary*: HRV (if available and validated device)
    - *Secondary*: Resting heart rate (accessible to all)
    - *Tertiary*: Subjective recovery scales (see below)
    - *Integration rule*: Use most conservative signal; if any metric indicates poor recovery, reduce activity regardless of other metrics

==== Subjective Recovery Scales

Systematic reviews of athletic monitoring demonstrate that subjective self-report measures often outperform objective physiological markers for detecting overtraining @Hooper2024subjective. Structured subjective scales may enhance ME/CFS self-monitoring.

*Recovery-Stress Assessment*

Validated tools from sports science include:

    - *Profile of Mood States (POMS)*: Tracks tension, depression, anger, fatigue, confusion, vigor
    - *Recovery-Stress Questionnaire for Athletes (RESTQ-Sport)*: 76-item assessment of recovery and stress states
    - *Daily Analyses of Life Demands (DALDA)*: Simple daily symptom checklist
    - *Acute Recovery and Stress Scale (ARSS)*: Recently validated brief scale for daily use

For ME/CFS, complex questionnaires may create excessive burden. A simplified approach:

#include "../../protocols/proto-daily-recovery-self-rating.typ"

==== Practical Implementation Framework

For patients considering sports medicine-adapted pacing, a phased implementation reduces risk:

*Phase 1: Baseline and Monitoring Setup (Weeks 1–4)*

    - Establish stable activity baseline (no increases; just observe current capacity)
    - Implement daily monitoring: RHR, subjective recovery rating, sleep quality
    - Optional: Add HRV if device available
    - Track PEM occurrences (frequency, severity, triggers)
    - Calculate personal baseline for all metrics
    - Goal: 4 weeks of stable data before any changes

*Phase 2: First Planned Deload (Week 5)*

    - Reduce activity to 50% of baseline week
    - Focus on rest, sleep extension (aim for 9–10 hours), gentle movement only
    - Continue all monitoring
    - Observe: Do recovery metrics improve during deload? By how much?
    - If no improvement or worsening: standard pacing may be more appropriate than periodization

*Phase 3: Return to Baseline (Weeks 6–7)*

    - Gradually return to pre-deload baseline activity level
    - Monitor for PEM or metric deterioration
    - If stable: baseline re-established
    - If unstable: remain at reduced level; reconsider approach

*Phase 4: Assessment and Decision (Week 8)*

    - Review 8-week data: trends in RHR, HRV, subjective ratings, PEM frequency
    - *If improving*: Consider continuing with 4–6 week cycles
    - *If stable*: Continue cycles with no progression attempts; cycles maintain stability
    - *If declining*: Return to standard flexible pacing; periodization may not suit individual physiology

*Long-Term Management*

    - Deload every 4–6 weeks (pre-planned) OR when metrics indicate (autoregulatory)
    - *Never attempt progression if unstable*
    - If stable for 3+ months: may consider ultra-conservative 5% activity increase; immediate rollback if any PEM
    - Reassess approach every 3–6 months; be willing to abandon if not beneficial

#include "../../recommendations/rec-physician-consultation.typ"

*Critical Distinction: This Is Not GET*

Sports medicine-adapted pacing shares superficial similarities with graded exercise therapy (GET) but differs fundamentally in philosophy and implementation:



#figure(
  table(
    columns: (auto, auto, auto, auto, auto),

    [*GET (Inappropriate for ME/CFS)*], [*Sports-Adapted Pacing*],

    [Assumes progressive increase indefinitely], [Includes mandatory regular deloads],

    [Treats PEM as psychological barrier to overcome], [Treats PEM as hard biological stop signal],

    [Fixed progression schedule regardless of symptoms], [Autoregulatory adjustment based on recovery metrics],

    [Aims to “decondition” from activity avoidance], [Respects energy envelope as physiological reality],

    [Based on deconditioning hypothesis], [Based on metabolic/immune recovery optimization],

    [Ignores autonomic dysfunction], [Incorporates HRV/RHR monitoring],

    [One-size-fits-all protocol], [Highly individualized to patient metrics],

    [Progression is primary goal], [Stability is primary goal; progression secondary if at all],
  ),
  caption: [Comparison of GET vs. Sports Medicine-Adapted Pacing],
) <tab:get-vs-sports-pacing>


The distinction is critical: GET has been shown to be harmful in significant subsets of ME/CFS patients @EatonFitch2019 @Wilshire2018 and is no longer recommended by CDC, NIH, or major ME/CFS specialist organizations @NICE2021mecfs. Sports-adapted pacing, by contrast, is explicitly designed around energy envelope theory and includes structured recovery phases. However, it remains an experimental approach without ME/CFS-specific validation and must be implemented with extreme caution.

*Evidence Status*

*Certainty Assessment:*

    - *Athletic deload protocols*: High-quality evidence in sports science
    - *OTS parallels to ME/CFS*: Medium-quality observational evidence; significant differences exist
    - *HRV and RHR monitoring*: High-quality in athletes; limited data in ME/CFS
    - *ME/CFS adaptation*: Low-quality; theoretical extrapolation only; no RCTs

#include "../../open-questions/oq-sports-adapted-pacing-unresolved-evidence-gaps.typ"

*Proposed Research:* Chapter @ch:proposed-studies includes a proposal for an RCT comparing sports medicine-adapted periodization to standard flexible pacing in mild-moderate ME/CFS (Section @sec:periodization-rct-proposal).

*Clinical Bottom Line*

Sports medicine-adapted pacing represents a *reasonable experimental approach* for carefully selected mild-moderate ME/CFS patients who:

    - Have stable baselines
    - Are comfortable with structured monitoring
    - Understand the distinction from GET
    - Accept the lack of ME/CFS-specific validation
    - Are willing to abandon the approach if unhelpful or harmful

It should be implemented conservatively, with close monitoring, and under physician guidance. Standard flexible pacing remains the evidence-based default for all patients, particularly those with severe disease, unstable courses, or discomfort with quantitative tracking.

