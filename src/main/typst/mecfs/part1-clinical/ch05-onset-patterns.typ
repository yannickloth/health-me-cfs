#import "../shared/environments.typ": *

// Onset patterns content for Chapter 5
// This file is \input from ch05-disease-course.tex

The manner in which ME/CFS begins has both diagnostic and prognostic significance. Two primary onset patterns are recognized: acute (typically post-infectious) and gradual @Jason2019onset. Understanding these patterns helps clinicians recognize the disease earlier and may inform treatment approaches.

==== Post-Infectious Onset

Approximately 64% of ME/CFS cases begin with an acute infectious illness @Jason2019onset. The patient experiences what appears to be a typical viral infection—influenza, infectious mononucleosis, respiratory illness, or gastrointestinal infection—but fails to recover. Weeks pass, then months, and the expected return to health never comes.

*Common Triggering Infections.*
Documented infectious triggers include:

    - *Epstein-Barr virus (EBV)*: The most studied trigger, with 10–12% of infectious mononucleosis cases progressing to ME/CFS
    - *SARS-CoV-2*: COVID-19 has created a new wave of post-infectious ME/CFS (Long COVID with ME/CFS phenotype)
    - *Influenza*: Both seasonal and pandemic strains
    - *Enteroviruses*: Including coxsackieviruses and echoviruses
    - *Ross River virus*: Endemic trigger in Australia
    - *Q fever* (_Coxiella burnetii_): Bacterial trigger with well-documented post-infectious fatigue
    - *Giardiasis*: Parasitic infection linked to post-infectious ME/CFS in outbreak studies

*Vaccine-Related Complications as Potential Triggers.*

In rare cases, immunizations have been temporally associated with ME/CFS onset or significant symptom exacerbation. While post-infectious complications from vaccinations are extremely rare, susceptible individuals may experience:

    - *Autoimmune neurological reactions*: Case reports describe bilateral facial nerve paralysis, vision changes, or neuropathic symptoms developing days to weeks after vaccination
    - *Neuroendocrine disruption*: Including abnormal menstrual function or temperature dysregulation
    - *Small fiber neuropathy exacerbation*: Some patients with pre-existing neuropathic predisposition have reported symptom worsening post-vaccination
    - *Molecular mimicry hypotheses*: Spike protein epitopes may cross-react with neural tissue, particularly if the individual has pre-existing autoimmune features

*Clinical note*: These complications are reported anecdotally and have not been formally characterized in ME/CFS populations. The population attributable risk remains extremely small. This section is included to alert clinicians to the possibility that vaccine-temporal associations may represent a specific immunological subtype rather than universal vaccine danger. Patients with this history warrant investigation of autoimmune markers and underlying immune dysregulation (see Section @sec:exhausted-surveillance).

<obs:viral-meta>
A 2023 systematic review and meta-analysis of 64 studies (n=4,971 ME/CFS patients, n=9,221 controls) examining 18 viral species identified significant associations between ME/CFS and multiple viral infections @hwang2023viral. Five viruses demonstrated odds ratios exceeding 2.0: Borna disease virus (OR$gt.eq$3.47), HHV-7 (OR\>2.0), parvovirus B19 (OR\>2.0), enterovirus (OR\>2.0), and coxsackie B virus (OR\>2.0). However, high heterogeneity (\>50%) was observed for EBV and enterovirus associations, suggesting these viral triggers may apply to specific subgroups rather than uniformly across all ME/CFS cases.
#warning-env(title: [Association vs.\ Causation in Viral Triggers])[
While meta-analytic evidence demonstrates statistical associations between viral infections and ME/CFS onset @hwang2023viral, these data cannot establish causation. Viral reactivation may represent a consequence of immune dysfunction rather than the initiating cause. Additionally, detection bias may inflate associations, as ME/CFS patients typically undergo more extensive viral testing than matched controls. The observed heterogeneity across studies indicates that viral etiology likely applies to subsets of ME/CFS patients rather than representing a universal mechanism.
] <warn:viral-causation>

The NIH deep phenotyping study focused specifically on post-infectious ME/CFS, providing detailed characterization of this subgroup @walitt2024deep.

*Temporal Pattern.*
In acute post-infectious onset, the transition from acute infection to chronic illness is often abrupt. Patients can frequently identify the specific day or week when their illness began. The typical pattern:

    - Acute infectious illness with standard symptoms (fever, malaise, respiratory or gastrointestinal symptoms)
    - Expected recovery does not occur after 2–4 weeks
    - Persistent fatigue, cognitive impairment, and post-exertional malaise emerge
    - Full ME/CFS symptom complex develops over weeks to months
    - Stabilization at significantly reduced functional capacity

*Pathophysiological Implications.*
Post-infectious onset suggests mechanisms involving:

    - Persistent viral reservoirs or reactivation of latent viruses
    - Post-infectious autoimmunity triggered by molecular mimicry
    - Chronic immune activation and inflammation
    - Disruption of the gut microbiome
    - Autonomic nervous system dysregulation

Brain imaging studies show distinct abnormalities in post-infectious ME/CFS compared to gradual-onset cases, supporting the notion that different onset patterns may involve different pathophysiological mechanisms.

*Prognosis.*
Some studies suggest that post-infectious onset may carry a better prognosis than gradual onset, particularly when the triggering infection can be identified and when illness duration is short before diagnosis. However, this finding is not consistent across all studies, and many post-infectious cases progress to severe, permanent disability.

==== Gradual Onset

Approximately 36% of ME/CFS cases (range 23–41% across studies) develop gradually without a clear infectious trigger @Jason2019onset. Symptoms accumulate over months to years, making it difficult to identify when the illness truly began.

*Progressive Symptom Accumulation.*
Gradual-onset ME/CFS typically follows a pattern of:

    - Increasing fatigue attributed to stress, overwork, or aging
    - Sleep disturbances that fail to respond to standard interventions
    - Cognitive difficulties (brain fog, concentration problems, word-finding difficulties)
    - Exercise intolerance that progressively worsens
    - Development of post-exertional malaise, often initially unrecognized
    - Eventual recognition that something is fundamentally wrong

The insidious nature of gradual onset often delays diagnosis, as patients and clinicians attribute symptoms to other causes. Mean diagnostic delay is longer in gradual-onset cases, which has prognostic significance (see Section @sec:prognosis).

*Risk Factors.*
Gradual onset has been associated with:

    - Prior history of multiple infections (cumulative immune burden)
    - Chronic stress or overwork
    - Other chronic illnesses
    - Higher rates of psychiatric comorbidity (though causation is unclear)
    - Possible environmental exposures

The association with psychiatric comorbidity is controversial. It may reflect true biological comorbidity, diagnostic confusion (ME/CFS misdiagnosed as depression), or shared underlying mechanisms affecting both mood and energy regulation.

*Diagnostic Challenges.*
Gradual onset creates particular diagnostic challenges:

    - No clear temporal marker for illness onset
    - Symptoms may be attributed to depression, anxiety, or somatization
    - Lack of infectious trigger makes the diagnosis seem less “legitimate”
    - Pre-illness functional level may be difficult to establish
    - Patients may have adapted to declining function without recognizing its significance

==== Retrospective Prodromal Recognition <sec:prodromal-recognition>

Many patients with gradual-onset ME/CFS can, after diagnosis, identify years of subclinical symptoms that were individually dismissed as benign or attributed to unrelated causes. These retrospective prodromal signs share a common thread: they reflect energy production insufficiency that is too mild to trigger medical alarm but too persistent to represent normal variation. The pattern applies to both children and adults, and typically spans 2--7 years before formal ME/CFS diagnosis @Wirth2026prodromalICD @Collin2018sleepCFS.

*Important caveat.* Prodromal signs apply specifically to the gradual-onset subtype. Approximately 50% of ME/CFS cases have true sudden onset (typically post-infectious) with no identifiable prodromal phase @Jason2015CFSvsME. Additionally, not every fatigued child or underperforming athlete has subclinical ME/CFS---the diagnostic error rate in pediatric fatigue referrals is approximately 40% @Geraghty2019diagnosticAccuracy. The patterns below should be interpreted as hypothesis-generating clinical observations, not diagnostic criteria.

*The Overtrained-But-Unfit Athlete.*
A child or young adult trains 15--20+ hours per week across multiple sports---sometimes more intensively during holidays---yet never achieves fitness proportional to their training volume. Peers with less training are fitter, faster, and recover more quickly. The individual is always tired, naps at every opportunity (car rides, between activities, weekends), and may be dismissed as "not trying hard enough" or told they have "growing pains." The adult equivalent is the person who exercises religiously for years but never improves, and is inexplicably exhausted after workouts that others find routine. The underlying mechanism is a lower ceiling of mitochondrial ATP production: the training load repeatedly hits a metabolic wall that others never reach, producing chronic energy deficit without the expected adaptation response.

*The Late-Game Fader.*
A child begins a sport or competition performing well---alert, coordinated, competitive---but as the game or practice session progresses, performance deteriorates. Concentration dissolves, mistakes accumulate, coordination degrades. Parents and coaches attribute this to inattention, lack of motivation, or poor competitive spirit. The pattern mimics ADHD inattentive type and may lead to evaluation for attention disorders. In reality, the brain cannot simultaneously sustain both motor demands and cognitive oversight when ATP availability is marginal. Cognitive energy depletion occurs before physical exhaustion becomes visible. The "deconcentration" is energy-driven, not motivation-driven, and worsens predictably with duration and intensity of exertion.

*The Always-Tired High Performer.*
Perhaps the most insidious pattern: a child or adult who performs well at school, participates in sports, maintains extracurricular activities---and appears completely healthy to the outside world---but is profoundly tired every single morning regardless of sleep duration. They nap at every opportunity, have no energy for socialising after structured activities, and function by burning through reserves that others hold in surplus. Nobody investigates because the performance metrics are adequate. Intelligence, drive, or compensatory strategies mask an energy deficit that only becomes visible when a threshold stressor (infection, growth spurt, exam period, life transition) collapses the fragile equilibrium. The adult version is the high-achiever who needs 10+ hours of sleep, cannot sustain social life alongside work, and has "no energy for hobbies."

*Unexplained Fine Tremor.*
Some young people present with a fine hand tremor---"shaky hands like old ladies"---for which no neurological cause is identified. The tremor is typically action-induced or postural, worsens with fatigue or exertion, and may fluctuate with activity level. It reflects energy insufficiency in motor control circuits: fine motor precision requires continuous rapid adjustments consuming ATP, and when mitochondrial output is marginal, precision degrades into visible tremor (see Chapter 3, Motor and Coordination Symptoms). Small fiber neuropathy---present in 53% of pediatric POTS/OI patients @Moak2024SFNpediatric---may contribute via proprioceptive dysfunction. The tremor is dismissed as "nervous" or constitutional but may represent subclinical autonomic and energetic dysfunction years before full syndrome emergence.

*Other Retrospective Signals.*
Additional signs that individually appear benign but collectively suggest subclinical energy insufficiency include:

    - *Cold extremities*: Always cold hands and feet, dismissed as "poor circulation" --- reflects sympathetic dysregulation with impaired peripheral vasoconstriction @Wyller2007thermoregCFS
    - *Orthostatic symptoms*: Dizziness on standing, lightheadedness after hot showers, dismissed as "growing too fast" or "runs in the family" --- represents subclinical orthostatic intolerance
    - *Unrefreshing sleep*: Sleeps adequate hours but never wakes refreshed; prospectively documented 4--7 years before ME/CFS onset @Collin2018sleepCFS. Notably, affected children sleep _less_ than peers, not more --- shorter duration, later bedtime, more nighttime awakenings
    - *Post-exertional cognitive fog*: Brain fog after sport or exams attributed to ADHD, laziness, or "just needs more sleep" --- actually post-exertional malaise affecting cognition before it manifests physically
    - *Exercise intolerance masked by persistence*: Participates in everything but pays a hidden price --- crashes at home, "weekend zombie," inexplicably ill on holidays when the body finally stops
    - *Frequent minor infections*: "Catches everything" --- immune system operating below effective surveillance threshold
    - *Excessive thirst and salt craving*: Early autonomic compensation for subclinical hypovolemia and RAAS dysfunction (see Chapter 10, RAAS Dysfunction)

#clinical-finding(title: [Documented Pre-Diagnostic Medical Utilization Window])[
German insurance claims data (N=36,332) demonstrate that children later diagnosed with ME/CFS had significantly elevated rates of fatigue (OR 2.19), pain disorders (OR 1.55), somatoform disorders (OR 1.32), and mild cognitive impairment (OR 2.93) up to five years before ME/CFS diagnosis @Wirth2026prodromalICD. Prospective birth cohort data (N=13,978) confirm that sleep disruption---shorter nighttime duration, difficulty falling asleep (OR 1.74), and more nighttime awakenings---precedes ME/CFS by 4--7 years @Collin2018sleepCFS. Each additional hour of sleep at age 9 reduced later chronic disabling fatigue odds by 39%. Premorbid stress is a true causal factor independent of genetics, with a 5.81-fold increase in chronic fatigue risk after controlling for shared genetic vulnerability in twin studies @Kato2006premorbid.
_Certainty: 0.60 (large N, prospective data available for sleep; ICD data is retrospective and cannot distinguish true prodrome from misdiagnosis). Not yet independently replicated as a unified prodromal syndrome._
] <cf:prodromal-window>

#speculation(title: [Retrospective Prodromal Syndrome as Subclinical Metabolic Reserve Depletion])[
*Certainty: 0.40.* The clinical vignettes above may represent a unified *retrospective prodromal syndrome* reflecting subclinical depletion of metabolic reserve---the same mechanism formalised in the Architecture C metabolic reserve hypothesis (@sec:architecture-c-metabolic-reserve). In this framework, constitutional factors (genetic mitochondrial efficiency, neurodevelopmental phenotype, connective tissue properties) set a lower ceiling for ATP production ($J_"production,max"$) from birth. The individual operates with reduced headroom ($R_"headroom"$) but compensates through intelligence, persistence, or lifestyle adaptation. Symptoms (tremor, fatigue, cold extremities, cognitive fade) represent moments when demand transiently exceeds this lower ceiling---too brief to trigger medical evaluation, too persistent to be normal. The eventual collapse into full ME/CFS occurs when an immune trigger (infection, vaccination reaction) or cumulative load permanently reduces production capacity below the minimum needed for daily function.

*Testable predictions:* (1) Pre-illness CPET data in athletes who later develop ME/CFS should show reduced VO#sub[2]max relative to training volume. (2) Siblings of ME/CFS patients (sharing genetic ceiling) should show measurable subclinical exercise intolerance on formal testing. (3) Retrospective analysis of school attendance records should show elevated minor illness absences 3--5 years before diagnosis. (4) Wearable data (HRV, sleep architecture) from the pre-illness period should show reduced autonomic reserve compared to matched controls.

*Falsification:* If prospective metabolic testing of at-risk individuals (e.g., children of ME/CFS parents) shows identical exercise capacity and autonomic function to controls until the moment of triggering infection, the subclinical prodromal model is not supported and sudden-onset remains the dominant paradigm.

*Not yet replicated.* No prospective study has tracked objective exercise capacity or metabolic markers in individuals before ME/CFS diagnosis. The retrospective ICD data @Wirth2026prodromalICD are the strongest available evidence for a measurable pre-diagnostic period but cannot distinguish prodrome from coincidental comorbidity.
] <spec:prodromal-syndrome>

#limitation(title: [Limitations of Retrospective Prodromal Pattern Recognition])[
Retrospective prodromal identification has inherent limitations:

    - *Recall bias*: After diagnosis, patients reconstruct a coherent narrative from fragmented memories, potentially imposing causal structure where coincidence exists
    - *Base rate problem*: Many healthy children are tired, have cold hands, or underperform in sports --- most do not develop ME/CFS. Without prospective data, the specificity of these signs is unknown
    - *Overdiagnosis risk*: 40% diagnostic error rate in pediatric fatigue referrals @Geraghty2019diagnosticAccuracy; 80% of adolescents identified as possible CFS cases recover by age 18
    - *Sudden-onset exclusion*: Approximately 50% of ME/CFS cases have abrupt post-infectious onset with no identifiable prodrome @Jason2015CFSvsME. Prodromal patterns apply only to the gradual-onset subtype
    - *Confirmation bias*: The Architecture C framework predicts prodromal signs _should_ exist, creating risk of circular reasoning if clinical observations are used both to generate and confirm the hypothesis
] <lim:prodromal-recognition>

#open-question(title: [Prospective Validation of ME/CFS Prodromal Signs])[
Can retrospective prodromal signs be validated prospectively? Key unresolved questions:

    - Do children of ME/CFS parents show measurable subclinical exercise intolerance, autonomic dysfunction, or sleep architecture abnormalities before any triggering event?
    - Can wearable devices (continuous HRV, actigraphy, sleep staging) identify the prodromal-to-disease transition in real time?
    - What is the sensitivity and specificity of individual prodromal signs (e.g., excessive napping, exercise intolerance disproportionate to training)? What combination maximises positive predictive value?
    - Is early intervention during the prodromal phase (pacing education, metabolic support, infection prevention) capable of preventing progression to full ME/CFS?
    - Do adult gradual-onset cases show the same prodromal patterns as pediatric cases, or are the clinical presentations age-specific?
] <oq:prodromal-validation>

*Prodromal Mechanistic Hypotheses.*
The prodromal vignettes above generate several testable mechanistic hypotheses about why subclinical symptoms emerge years before collapse.

#speculation(title: [Adaptation Debt — Training Without Supercompensation as Mitochondrial Biogenesis Failure])[
*Certainty: 0.40.* Normal exercise triggers PGC-1$alpha$-mediated mitochondrial biogenesis --- the supercompensation cycle that makes training produce fitness gains. In prodromal ME/CFS, this signalling cascade may be partially impaired through AMPK insensitivity, epigenetic silencing of PGC-1$alpha$ promoters, or constitutionally reduced biogenesis efficiency. Training volume accumulates metabolic stress without the expected adaptive response: the individual trains as hard as peers but the mitochondria do not multiply or improve. This is not deconditioning (they are training) --- it is failed adaptation, a distinct and testable phenomenon.

*Falsification:* Pre-illness muscle biopsies from athletes who later develop ME/CFS should show reduced PGC-1$alpha$ mRNA response to acute exercise challenge compared to matched training-volume controls. If adaptation markers are normal pre-illness, the failure is not constitutional but triggered.

*Not yet tested.* PGC-1$alpha$ reductions have been observed in ME/CFS muscle biopsies (Rutherford 2016) but not prospectively before diagnosis.
] <spec:adaptation-debt>

#speculation(title: [The Cognitive Energy Cliff — Discrete Phase Transition in Brain ATP Allocation])[
*Certainty: 0.35.* The late-game fader phenomenon suggests the brain does not degrade gracefully under ATP scarcity but exhibits a discrete switching event: when available ATP drops below a critical threshold, the brain abruptly deprioritises executive and attentional functions in favour of motor control and homeostasis. The cognitive fade should therefore be sudden (within minutes), not gradual, and correlate with measurable prefrontal hypoperfusion. This phase-transition model distinguishes energy-driven cognitive failure from ADHD-type inattention, which is constant rather than exertion-triggered.

*Falsification:* fNIRS monitoring during sustained cognitive-motor dual tasks should show an abrupt (not linear) decline in prefrontal oxyhaemoglobin in prodromal individuals after a characteristic duration. Controls should show linear decline without threshold behaviour. If decline is always linear, the phase-transition model is wrong and a linear fatigue model suffices.

*Not yet tested.* Prefrontal hypoperfusion is documented in established ME/CFS but threshold dynamics have not been studied.
] <spec:cognitive-cliff>

#hypothesis(title: [The Holiday Paradox — Delayed Crash as Sympathetic Withdrawal Syndrome])[
*Certainty: 0.55.* The "weekend zombie" and "inexplicably ill on holidays" pattern reflects sympathetic nervous system withdrawal. During high-demand periods, elevated catecholamines mask underlying energy deficit by maintaining cerebral perfusion, suppressing inflammation, and mobilising glucose. When demand drops, catecholamines fall, unmasking true baseline fatigue, deferred inflammatory responses, and orthostatic intolerance previously compensated by sympathetic tone @Wyller2007thermoregCFS. This is mechanistically identical to "let-down headaches" in migraineurs and post-exam illness in students, but in prodromal ME/CFS it is more severe because the compensatory sympathetic overdrive is greater @Kato2006premorbid.

*Falsification:* Salivary cortisol and urinary catecholamines measured across weekday-to-weekend transitions in prodromal individuals should show higher weekday catecholamines than controls, steeper weekend decline, and symptom severity on rest days correlating with magnitude of catecholamine drop. If catecholamine dynamics are identical to controls, the sympathetic compensation model is not supported.

*Not yet replicated.* Sympathetic overdrive is documented in adolescent ME/CFS at diagnosis but not prospectively in the prodromal phase.
] <hyp:holiday-paradox>

#hypothesis(title: [Puberty as a Reserve-Depleting Event — Explaining the Age 16 Onset Peak])[
*Certainty: 0.45.* Puberty is a sustained increase in baseline energy demand lasting 3--5 years: rapid skeletal growth, brain reorganisation, hormonal axis establishment, and immune system maturation. For individuals with already-reduced $J_"production,max"$ (neurodivergent, hEDS, iron-deficient), puberty may consume most remaining metabolic headroom, making any additional stressor during this window catastrophic. This explains the bimodal early onset peak at approximately age 16 (@sec:bimodal-onset-age): it coincides with peak pubertal energy demand plus EBV exposure timing. It also explains why girls are over-represented in early-onset ME/CFS --- menstruation adds iron loss as an additional metabolic reserve reducer, and female puberty involves greater fat redistribution and hormonal metabolic cost.

*Falsification:* ME/CFS onset risk should correlate with earlier menarche (longer overlap between pubertal demand and developing systems), rapid growth velocity, and puberty-onset iron deficiency. These are retrospectively testable in the ALSPAC birth cohort, which has pubertal timing variables and ME/CFS outcome data @Collin2018sleepCFS.

*Not yet tested.* The bimodal onset peak is established (@ach:bimodal-onset-peaks) but the pubertal energy demand explanation has not been directly tested.
] <hyp:puberty-reserve-depletion>

*Cross-Disease Prodromal Parallels.*
Three established conditions parallel the ME/CFS prodromal pattern and may share underlying mechanisms.

#speculation(title: [Overtraining Syndrome as Recoverable ME/CFS — Same Mechanism, Pre-Hysteresis])[
*Certainty: 0.50.* Overtraining syndrome (OTS) in athletes shares nearly all features of ME/CFS: profound fatigue, performance decline, sleep disruption, immune suppression, autonomic dysfunction, elevated resting heart rate, and reduced HRV. The critical difference: OTS is recoverable with rest. In the Architecture C framework, OTS occurs when demand chronically exceeds production capacity but the system has not crossed the hysteretic threshold --- no permanent feed-forward damage loop is established. OTS may thus represent prodromal ME/CFS that resolved because the athlete rested before the phase transition. Athletes who develop OTS but recover should be at elevated ME/CFS risk for subsequent triggers; athletes with persistent OTS (>6 months) should be re-evaluated for ME/CFS.

*Falsification:* Longitudinal follow-up of athletes with documented OTS episodes should show elevated ME/CFS incidence (>5$times$ population rate) over 10 years. If OTS history confers no excess risk, the shared-mechanism model is wrong.

*Not yet tested.* Shared biomarker profiles between OTS and ME/CFS are documented but longitudinal conversion studies have not been performed.
] <spec:overtraining-recoverable-mecfs>

#speculation(title: [Relative Energy Deficiency in Sport (RED-S) as Gender-Specific Prodrome])[
*Certainty: 0.45.* RED-S (formerly "female athlete triad") describes chronic low energy availability causing menstrual dysfunction, bone loss, fatigue, impaired performance, recurrent injury, and immune suppression --- closely overlapping with ME/CFS prodromal signs. In the Architecture C framework, RED-S simultaneously reduces the ceiling (malnutrition damages mitochondria) while operating above it (training demands exceed available energy), manufacturing the exact conditions the hysteretic model predicts should trigger permanent decompensation. RED-S prevalence peaks in the 15--25 age window overlapping with the early ME/CFS onset peak, and its predominance in female athletes may partially explain ME/CFS sex ratios.

*Falsification:* Athletes with documented RED-S should have elevated ME/CFS incidence post-infection compared to energy-sufficient athletes. RED-S severity scores should correlate with ME/CFS risk dose-dependently. If RED-S athletes have normal ME/CFS risk, the energy availability mechanism is not sufficient.

*Not yet tested.* No longitudinal study has tracked ME/CFS outcomes in RED-S populations.
] <spec:reds-prodrome>

#speculation(title: [Burnout-to-ME/CFS Pipeline — Allostatic Overload as Adult Prodrome])[
*Certainty: 0.40.* The adult equivalent of the prodromal child athlete may be occupational burnout. Burnout produces exhaustion, cognitive impairment, immune dysregulation, sleep disruption, and autonomic dysfunction through years of demand exceeding recovery capacity, maintained by sympathetic overdrive. In the Architecture C framework, burnout progressively depletes metabolic reserves via sustained HPA axis activation and glucocorticoid-induced mitochondrial dysfunction. When a triggering event (infection, surgery, trauma) occurs during burnout, the already-depleted system crosses the decompensation threshold. This may explain the late-onset peak at approximately age 37 (@sec:bimodal-onset-age): peak career stress, burnout prevalence, and life-complexity coincide with beginning age-related mitochondrial decline @Kato2006premorbid.

*Falsification:* In a prospective burnout cohort (validated by Maslach Burnout Inventory), post-infection ME/CFS incidence should be >3$times$ population rate. PBMC spare respiratory capacity should be intermediate between healthy controls and established ME/CFS. If burnout confers no excess risk, allostatic overload is not sufficient.

*Not yet tested.* Kato 2006 demonstrates premorbid stress as a causal factor for chronic fatigue (OR 5.81 after genetic control) but burnout-to-ME/CFS conversion has not been directly studied.
] <spec:burnout-pipeline>

*Prodromal Intervention Concepts.*
If the prodromal phase is real and identifiable, early intervention becomes possible. The following speculations address what intervention might look like.

#speculation(title: [Training Ratio Protocol — Periodization for Energy-Limited Athletes])[
*Certainty: 0.55.* If the prodromal athlete has a lower mitochondrial ceiling, conventional training programmes will produce overtraining-like states. The solution is not to stop training (which removes the biogenesis stimulus) but to radically alter the training ratio: much more recovery per unit of stress. Specifically: intensity capped at 65% HR max (below the ceiling), volume ratio of 1:3 (one hour training requires three hours explicit rest, vs. 1:1 for peers), 2 days on / 1 day off periodization, HRV-gated sessions (wearable must confirm baseline recovery before next session), and zero exercise during any illness however mild. This maintains the AMPK activation signal for mitochondrial biogenesis while never exceeding the ATP production ceiling. See also periodization approaches in Chapter 14b.

*Falsification:* Prodromal athletes randomised to Training Ratio Protocol vs. conventional coaching for 12 months should show equivalent or better fitness gains (VO#sub[2]max), fewer illness episodes, and no crashes. If Protocol athletes show worse fitness, the ceiling model's prediction that sub-threshold training still produces adaptation is wrong.

*Not yet tested.* Pacing principles are applied in established ME/CFS; their application pre-diagnosis as a preventive strategy has not been studied.
] <spec:training-ratio-protocol>

#prediction(title: [Prodromal Recognition Education Reduces Diagnostic Delay])[
If the prodromal patterns described above are disseminated to coaches, school nurses, paediatricians, and parents via structured education (recognition of the overtrained-but-unfit pattern, the late-game fader as energy not ADHD, the always-tired high performer as metabolic not depression, the holiday crash pattern), then time-to-referral for ME/CFS should decrease by >12 months in intervention settings vs. control @Geraghty2019diagnosticAccuracy. Given current diagnostic delay of 4--8 years and 40% pediatric diagnostic error rate, even modest improvement in recognition could prevent years of inappropriate management and delayed intervention. This is the lowest-risk, highest-certainty intervention available --- pure information, no pharmacological risk.
] <pred:prodromal-education>

==== Two-Phase Onset Pattern

A third pattern has been identified in some patients: two-phase onset @Jason2019onset. This pattern involves:

    - Initial sharp deterioration (often post-infectious)
    - Partial improvement over months
    - Secondary deterioration to chronic ME/CFS

This pattern may represent failed recovery from post-infectious illness, with initial improvement reflecting resolution of acute infection while underlying ME/CFS pathophysiology continues to develop.

==== Multi-Hit Cascade Pattern
<sec:multi-hit-cascade>

Clinical observation suggests an additional onset variant: the *multi-hit cascade*, where ME/CFS develops through cumulative immune challenges over years rather than a single triggering event.

*Typical Multi-Hit Trajectory.*
The multi-hit pattern involves sequential stressors that progressively deplete compensatory reserves:

    - *Baseline vulnerability*: Pre-existing inflammatory condition (e.g., interstitial cystitis, MCAS, fibromyalgia) or constitutional immune phenotype
    - *Initial hit*: Significant infection during period of stress; patient “never fully recovers” but achieves marginal functionality
    - *Subsequent hits*: Additional immune challenges (viral infections, significant physiological stressors) cause further decompensation
    - *Apparent recoveries*: Periods of improved function that retrospectively appear as PEM cycles or enforced pacing, not true remission
    - *Final collapse*: A seemingly minor challenge (e.g., influenza, moderate activity) triggers complete decompensation after years of accumulated damage

*The False Recovery Pattern.*
A critical insight from multi-hit cases is that “better periods” between challenges may represent *precarious minimal functionality* rather than true recovery:

    - Patient operates within a severely reduced energy envelope
    - Any significant stressor reveals underlying dysfunction
    - Enforced rest (e.g., during lockdowns) produces improvement that disappears with return to normal activity
    - What patients retrospectively recognize as “ME/CFS in episodes” was actually PEM cycling
    - Each viral hit does not “cause ME/CFS again” but reveals and worsens dysfunction that was never resolved

#limitation(title: [Multi-Hit Cascade: Retrospective Pattern Recognition, Not Prospective Validation])[
The multi-hit cascade onset pattern described above is a clinical narrative constructed from retrospective patient histories, not a prospectively validated disease model. Limitations include:

    - Retrospective histories are subject to recall bias: patients reconstruct a coherent narrative from fragmented memories, potentially imposing causal structure where coincidence exists.
    - The “false recovery” concept is unfalsifiable as described—any improvement can be reinterpreted as “precarious minimal functionality” after subsequent worsening.
    - No biomarker data exist to distinguish true multi-hit cascades from patients with standard post-infectious onset who happen to have sequential infections.
    - The model cannot currently predict which patients in “marginal functionality” will decompensate versus stabilise.

]

#warning-env(title: [Distinguishing True Remission from Marginal Functionality])[
Clinicians and patients should distinguish between:

    - *True remission*: Return to pre-illness baseline; able to tolerate normal activity and minor infections without prolonged recovery
    - *Marginal functionality*: Able to perform limited activities through careful pacing; any additional stressor causes crash; “recovered” state requires continuous effort to maintain

The multi-hit pattern suggests that patients in marginal functionality states remain vulnerable to progressive decompensation with each additional immune challenge. This has implications for long-term prognosis and the importance of aggressive infection prevention, stress management, and pacing even during “good periods.”
] <warn:false-recovery>

*Research Implications.*
The multi-hit cascade pattern suggests that ME/CFS onset may involve:

    - Cumulative immune burden rather than single triggering event
    - Progressive exhaustion of compensatory mechanisms
    - Threshold effects where final collapse appears disproportionate to the triggering event
    - Potential for early intervention at any stage to prevent progression

This model aligns with the “exhausted immune surveillance” phenotype described in Section @sec:exhausted-surveillance, where laboratory findings reflect end-stage depletion of immune reserves after years of chronic stimulation.

==== Bimodal Onset Age Distribution <sec:bimodal-onset-age>

A striking epidemiological feature of ME/CFS, unique among diseases with bimodal onset, is the consistent observation of two distinct peaks in age at onset: approximately age 16 and age 37. This pattern was first identified in Norwegian population-based registry data using age at diagnosis @Bakken2014bimodalOnset and subsequently confirmed in European survey data using self-reported age at onset across ten countries ($n = 9{,}380$) @McGrath2026bimodalOnset. The finding was independently replicated in the UK DecodeME dataset ($n = 6{,}455$ with illness duration under ten years) @McGrath2026bimodalOnset.

#achievement(title: [Bimodal Onset Age Peaks Confirmed Across Multiple Datasets])[
Two onset age peaks are robustly established in ME/CFS. Using Hartigan's Dip Test, the bimodal pattern was highly significant for Norway and all other countries combined ($p lt 2 times 10^(-16)$) and for six of nine individual countries @McGrath2026bimodalOnset. Gaussian mixture modelling yielded consistent peak locations across countries: early peak at mean 16.0 years (SD 4.3) and late peak at mean 36.6 years (SD 10.5). The DecodeME replication produced slightly older estimates (early 18.8, late 40.1), likely reflecting the minimum participation age of 16 and approximated onset from duration bins. The original Norwegian registry study reported the same two-decade pattern at diagnosis level (peaks in age groups 10--19 and 30--39) @Bakken2014bimodalOnset.
_Certainty: 0.65 (large n, independent replication, but self-report data and cross-sectional design)._
] <ach:bimodal-onset-peaks>

*Differences Between Early and Late Onset.*

The two peaks are not merely statistical artefacts---they correspond to clinically meaningful differences in disease characteristics @McGrath2026bimodalOnset:

    - *Infectious triggers*: More common in early onset (57% vs.\ 47%, $p = 2.1 times 10^(-13)$), with infectious mononucleosis (glandular fever) particularly prominent (OR 2.32 for early onset, $p = 2.4 times 10^(-24)$ in DecodeME)
    - *Severity*: Early-onset cases are more than twice as likely to be severe or very severe (OR 2.15, $p lt 2 times 10^(-16)$), and this association is independent of illness duration
    - *Familial clustering*: First-degree relatives with ME/CFS are more common in the early peak (22.5% vs.\ 14.9%, OR 1.43, $p = 4.4 times 10^(-7)$), suggesting greater genetic or shared-environment contribution
    - *Gender ratio*: No significant difference between peaks (~80% female in both)

#clinical-finding(title: [Early-Onset ME/CFS Carries Higher Severity and Greater Familial Clustering])[
Early-onset ME/CFS (around age 16) is associated with higher severity (OR 2.15 for severe/very severe vs.\ moderate/mild) and greater familial aggregation (OR 1.43 for having an affected first-degree relative) compared to late-onset disease @McGrath2026bimodalOnset. The severity difference is independent of illness duration, arguing against a simple disease-accumulation explanation. Infectious mononucleosis is disproportionately associated with early onset (OR 2.32), consistent with prospective evidence that ~13% of adolescents develop CFS after IM @Katz2009IMadolescentCFS.
_Certainty: 0.60 (large survey data, replicated in DecodeME; self-report and cross-sectional)._
] <cf:bimodal-clinical-differences>

#limitation(title: [Bimodal Onset: Self-Report and Cross-Sectional Data])[
The bimodal onset evidence relies on self-reported age at onset from survey data @McGrath2026bimodalOnset. Recall bias may affect accuracy, though the consistency across ten countries and independent replication in DecodeME argue against systematic bias. The original Norwegian registry study used age at diagnosis rather than onset, and diagnostic delay (mean 3--5 years) shifts the apparent distribution toward older ages. All evidence is from European/Nordic populations; the pattern has not been tested in non-European cohorts. Cross-sectional design precludes causal inference about the associations between onset age, severity, and triggers.
] <lim:bimodal-onset>

*Research Implications of Bimodal Onset.*

The bimodal pattern has direct implications for ME/CFS research design:

    - *Stratification*: Future studies should stratify by onset age (early vs.\ late) to detect subgroup-specific biological mechanisms, as has been done successfully in vitiligo (see below)
    - *Genetic analysis*: The vitiligo precedent demonstrates that bimodal onset can reveal distinct genetic architectures---early-onset vitiligo has an MHC class II haplotype with OR > 8 @Jin2019vitiligoBimodal. No GWAS has yet stratified ME/CFS by onset age
    - *Mechanistic investigation*: The specific ages (~16 and ~37) may correspond to windows of biological vulnerability (pubertal immune changes, hormonal transitions, cumulative exposures)
    - *Infection prevention*: Vaccination against EBV and other common triggers could preferentially reduce the early-onset peak, as EBV vaccines are in development. Post-licensure surveillance should test whether the early peak (~16) flattens while the late peak (~37) remains unchanged---a differential pattern that would confirm EBV as the primary driver of early-onset disease

The cross-disease precedent is examined in Section @sec:bimodal-cross-disease.

==== Clinical Significance of Onset Pattern

While onset pattern provides useful clinical information, it should not be overemphasized in individual patient management. Both post-infectious and gradual-onset patients develop the same symptom complex and require the same management approaches. The key clinical implications of onset pattern include:

    - *Diagnostic confidence*: Post-infectious onset with clear temporal association may increase diagnostic confidence
    - *Patient validation*: Understanding that infections can trigger chronic illness helps patients understand their condition
    - *Research stratification*: Onset pattern may be important for identifying disease subgroups in research
    - *Epidemiological monitoring*: Tracking post-infectious ME/CFS helps quantify the burden of infectious diseases

