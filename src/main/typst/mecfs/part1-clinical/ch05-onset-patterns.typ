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

==== Clinical Significance of Onset Pattern

While onset pattern provides useful clinical information, it should not be overemphasized in individual patient management. Both post-infectious and gradual-onset patients develop the same symptom complex and require the same management approaches. The key clinical implications of onset pattern include:

    - *Diagnostic confidence*: Post-infectious onset with clear temporal association may increase diagnostic confidence
    - *Patient validation*: Understanding that infections can trigger chronic illness helps patients understand their condition
    - *Research stratification*: Onset pattern may be important for identifying disease subgroups in research
    - *Epidemiological monitoring*: Tracking post-infectious ME/CFS helps quantify the burden of infectious diseases

