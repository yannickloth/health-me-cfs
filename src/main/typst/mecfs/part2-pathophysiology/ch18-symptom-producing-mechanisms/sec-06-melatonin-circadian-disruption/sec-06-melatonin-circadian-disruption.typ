#import "../../../shared/environments.typ": *

== Melatonin Dysfunction and Circadian Disruption
<sec:ch15-melatonin>

Melatonin abnormalities in ME/CFS extend beyond simple sleep-onset dysregulation: altered peak timing, blunted amplitude, and disrupted interactions with the immune system contribute to the characteristic unrefreshing sleep and post-sleep symptom burden. This section covers melatonin's immunomodulatory functions, its anti-inflammatory and antioxidant roles, and how circadian misalignment creates a self-reinforcing cycle of poor sleep quality and immune dysregulation.

=== DLMO and Multi-System Circadian Decoupling

Healthy circadian function is characterized by tight coupling between dim-light melatonin onset (DLMO), core body temperature rhythm, and activity cycles. In ME/CFS this coupling is disrupted: while DLMO timing itself may not differ significantly from controls, the normal correlation between DLMO and temperature acrophase is absent in patients @williams2001circadian @McCarthy2022circadian. ME/CFS patients also lack the midday temperature rise observed in healthy individuals and exhibit an anomalous evening temperature drop, consistent with multi-system circadian decoupling rather than a simple phase delay @McCarthy2022circadian.

Melatonin amplitude abnormalities show a phenotypic split by age: adolescent CFS patients demonstrate significantly elevated nocturnal melatonin at midnight and into the early hours ($p\<0.001$ vs. controls) @Knook2000melatonin, while adult CFS patients with delayed circadian phase (DLMO $>$21:30h) report characteristic fatigue and sleep symptom patterns amenable to chronotherapy @vanHeukelom2006melatonin. This heterogeneity matters clinically: melatonin supplementation is not appropriate for patients already secreting supratherapeutic nocturnal levels @Knook2000melatonin.

Objectively measured sleep architecture in ME/CFS confirms the unrefreshing sleep phenotype: adults show increased sleep onset latency, increased wake after sleep onset, reduced sleep efficiency, decreased stage N2 sleep, paradoxically increased slow-wave sleep (N3), and longer REM latency in a meta-analysis of 24 studies ($n=801$ adults) @Mohamed2023sleep. The paradoxical N3 increase alongside subjective unrefreshing sleep suggests that circadian misalignment may disrupt the _quality_ and restorative function of slow-wave sleep without reducing its measured duration.

=== Melatonin–Immune Axis: NK Cells and Cytokine Rhythms

Melatonin functions as a circadian immunomodulator. Mechanistically, melatonin promotes NK cell maturation and activation via the JAK3/STAT5 signaling pathway, increasing T-bet expression and thereby enhancing NK cell proliferation, degranulation, and IFN-$gamma$ secretion @Liang2024NKcell. The circadian clock itself regulates rhythmic NK cell activity and cytokine release through clock genes including _Per2_, _Bmal1_, and ROR$alpha$ @scheiermann2018circadian.

#include "subsec-02-melatonin-immune-axis-nk-cells-and-cytok/speculations/spec-circadian-disruption-compounds-nk-hypofu.typ"

=== Therapeutic Melatonin: Low-Dose Chronobiotic Strategy

The pharmacology of melatonin as a chronobiotic is dose- and timing-dependent. Phase response curve studies establish that 0.5mg melatonin, taken 2–4h before DLMO, produces phase advances equivalent to those achieved with 3.0mg when each dose is given at its respective optimal time @Burgess2010melatonin. Low-dose melatonin is preferred in ME/CFS for several reasons: it avoids supraphysiological blood levels, does not suppress endogenous pineal secretion, and produces minimal sedation.

In CFS patients with objectively delayed DLMO ($>$21:30h), open-label melatonin (5mg, 5h before DLMO) for 3 months produced significant improvements in fatigue, concentration, motivation, and activity on the Checklist Individual Strength (CIS); fatigue normalized in 8 of 27 patients during treatment vs. 2 of 29 pre-treatment @vanHeukelom2006melatonin. The absence of a placebo control limits causal inference but provides directional evidence for DLMO-stratified treatment.

In delayed sleep-wake phase disorder (DSWPD)—a condition overlapping with ME/CFS in a significant proportion of patients—an RCT ($n=40$) of 0.5mg melatonin combined with evening dim light and time-in-bed scheduling for 4 weeks demonstrated significant improvements in DLMO timing, sleep parameters, and fatigue @Swanson2024DLMO. Importantly, melatonin timing based on estimated DLMO (from actigraphy sleep-onset data) was as effective as timing based on formally measured DLMO, making this approach clinically practical where DLMO testing is unavailable.

<obs:ch15-melatonin-dosing>
Current evidence supports low-dose melatonin (0.5mg) taken 2–3h before the individual's estimated or measured DLMO for patients with objectively delayed circadian phase. Higher doses (3–5mg) may be appropriate when phase delay is severe, with timing adjusted accordingly. Melatonin supplementation should not be initiated in patients with elevated nocturnal melatonin or without evidence of phase delay, as benefit appears confined to the phase-delayed subgroup @vanHeukelom2006melatonin @Knook2000melatonin @williams2002therapy.
=== Light Therapy and Circadian Hygiene: Considerations in ME/CFS

Bright light therapy is the standard first-line treatment for delayed sleep-wake phase disorder, acting via direct SCN resetting. However, a controlled trial in unselected CFS patients found neither melatonin nor phototherapy produced symptomatic improvement @williams2002therapy, likely because most patients in that cohort were not stratified by circadian phenotype. The evidence from van Heukelom et al. @vanHeukelom2006melatonin and Swanson et al. @Swanson2024DLMO suggests that benefit is confined to those with objectively delayed phase.

Clinically, light therapy in ME/CFS requires additional caution beyond standard DSWPD protocols. Morning bright light exposure carries an orthostatic and energy cost that may precipitate or worsen post-exertional malaise in sensitive patients. Evening dim light (maintaining $<$10lux in the 2 hours before desired bedtime) and blue-light filtering are lower-risk components of circadian hygiene that can be combined with timed melatonin without the same exertion burden.

=== Melatonin as Antioxidant

Beyond its chronobiotic and immunomodulatory roles, melatonin functions as a mitochondria-targeted antioxidant: intramitochondrial concentrations exceed blood levels substantially, positioning it at the primary site of reactive oxygen species (ROS) production in the electron transport chain @Reiter2016antioxidant. Melatonin scavenges ROS and reactive nitrogen species (RNS) directly, stimulates superoxide dismutase, glutathione peroxidase, and catalase, and suppresses pro-oxidant enzymes. Its metabolites N#super[1]-acetyl-N#super[2]-formyl-5-methoxykynuramine (AFMK) and N-acetyl-5-methoxykynuramine (AMK) retain antioxidant activity, creating a cascade of protection @Reiter2016antioxidant. This antioxidant function is particularly relevant to the oxidative and nitrosative stress mechanisms discussed in Section @sec:ch15-oxidative-stress; circadian disruption reducing nocturnal melatonin may amplify the ROS burden in ME/CFS mitochondria.

=== Integrated Circadian Vicious Cycle

These mechanisms constitute a self-reinforcing cycle. Circadian disruption reduces nocturnal melatonin signaling, impairing NK cell activation and antiviral surveillance, promoting immune dysregulation and cytokine-driven symptom flares that are themselves chronodisruptive. Simultaneously, reduced melatonin permits greater mitochondrial oxidative stress during the night, contributing to cellular energy deficits and neuroinflammation. Poor sleep architecture—with preserved but non-restorative slow-wave sleep and prolonged REM latency @Mohamed2023sleep—fails to clear metabolic waste (see Section @sec:ch15-glymphatic), perpetuating cognitive symptoms and pain sensitization. This multi-system feedback dynamic aligns with the cross-modal decoupling framework (Section @sec:ch15-cross-modal-decoupling), where loss of phase synchrony between physiological rhythms is a validated disease predictor @Thapa2026sleepfm. The result is a chronobiological vicious cycle in which impaired melatonin function amplifies, and is amplified by, the immunological and bioenergetic pathology characteristic of ME/CFS @Anderson2020mitochondriaMECFS @McCarthy2022circadian.

