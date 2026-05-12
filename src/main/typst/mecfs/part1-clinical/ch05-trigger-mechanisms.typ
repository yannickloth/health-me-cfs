#import "../shared/environments.typ": *

// Trigger mechanisms overview content for Chapter 5
// This file is \input from ch05-disease-course.tex
// Audience: patients and general clinical readers — accessible language
// Cross-references Ch.7 for technical mechanistic detail

The preceding sections document _which_ infections trigger ME/CFS. This section explains _how_: the biological steps by which an acute infection can set in motion a process that does not resolve when the infection itself clears. Understanding these steps helps patients make sense of their illness and explains why recovery does not simply follow pathogen clearance. For detailed pathophysiological mechanisms, see Section @sec:post-infectious-pathogenesis in Chapter @ch:immune-dysfunction.

=== The Core Problem: Failure to Resolve

In most infections, the immune system activates, eliminates or contains the pathogen, and then stands down. Inflammation resolves, tissues repair, and the person returns to health within weeks. In ME/CFS, this resolution step fails. The immune system remains in a state of ongoing activation long after the acute infection has passed @Rasa2018. The reasons for this failure differ across the major triggering pathogens, but they share a common endpoint: a chronic, self-sustaining pattern of immune and metabolic dysregulation.

#warning-env(title: [Individual Variation])[
The mechanisms described here apply at the population level to patients whose ME/CFS followed a specific trigger. Not every patient who develops post-infectious ME/CFS will have all the mechanisms described, and the relative importance of each mechanism varies between individuals. The same trigger can initiate different pathological pathways in different people, reflecting differences in genetics, immune phenotype, and the state of the immune system at the time of infection.
] <warn:trigger-variation>

=== Epstein-Barr Virus (EBV)

EBV is the most studied ME/CFS trigger, responsible for the infectious mononucleosis (“mono”) that precedes ME/CFS in a substantial proportion of post-infectious cases. EBV does not simply infect and clear: it permanently establishes itself inside B cells (a type of immune cell) and persists there for life @Rasa2018.

The path from acute EBV infection to ME/CFS likely involves two overlapping processes. First, the immune system's response to the virus can generate antibodies that cross-react with normal body tissues — a process called *molecular mimicry*. Structural similarities between EBV proteins and human proteins mean that some anti-EBV antibodies inadvertently target the patient's own cells, particularly receptors that regulate the autonomic nervous system @Pless2026ebv_demyelination. Second, EBV-infected B cells can cross the blood-brain barrier and contribute to low-level neuroinflammation, potentially producing symptoms of cognitive impairment and sensory sensitivity. The detailed immunological cascade — including how EBV drives autoantibody production and how LMP1-expressing B cells enter the central nervous system — is examined in Section @sec:herpesviruses and in the novel hypotheses presented in Section @sec:2026-autoimmune-hypotheses.

=== SARS-CoV-2 (COVID-19)

COVID-19 has created a large new cohort of post-infectious ME/CFS patients, providing an unprecedented opportunity to study the disease from a known, precisely dated onset. Several mechanisms appear to contribute to the transition from acute COVID-19 to chronic illness.

The most distinctive feature of SARS-CoV-2 compared to other ME/CFS triggers is *spike protein persistence*. Research using advanced imaging techniques has detected SARS-CoV-2 spike protein in skull, meninges, and brain tissue of COVID-19 patients long after the acute infection resolved, co-localised with activated immune cells @Rong2024spike. This persistent viral protein — even in the absence of replicating virus — appears to sustain local inflammation. In addition, SARS-CoV-2 infects and damages the endothelial cells lining blood vessels, impairing circulation and contributing to the formation of abnormal microclots that may restrict oxygen delivery to tissues @Nunes2022microclots. The combination of neuroinflammation from spike persistence and microvascular damage from endothelial injury may together account for the cognitive and energy-generation deficits that characterise post-COVID ME/CFS. Long COVID shares the same immune abnormalities as ME/CFS @PNAS2025MECFSLongCOVID, supporting the conclusion that both represent manifestations of the same post-infectious pathological process.

=== Human Herpesvirus 6 (HHV-6)

HHV-6 has two properties that make it a particularly disruptive ME/CFS trigger. First, it is *neurotropic* — it infects brain tissue directly, unlike most ME/CFS-associated viruses that primarily target peripheral immune cells @Rasa2018. Second, it has a documented ability to interfere with *mitochondrial function* in infected cells, disrupting the energy-production machinery at the cellular level. HHV-6 can also integrate its genetic material into chromosomes, creating a persistent reservoir that standard antiviral drugs cannot eliminate. Reactivation of this chromosomally integrated virus can occur during periods of immune stress, potentially driving repeated exacerbations in ME/CFS patients with HHV-6 as their primary trigger (see Section @sec:herpesviruses).

=== Enteroviruses

Enteroviruses — including coxsackieviruses and echoviruses — are associated with ME/CFS both historically (epidemic outbreaks of what was then called “epidemic neuromyasthenia”) and through modern molecular studies. Their distinctive feature is *tissue reservoir persistence*: viral RNA has been detected in muscle biopsies and gastrointestinal tissue of ME/CFS patients years after the acute infection @Rasa2018. Unlike herpesviruses, enteroviruses do not establish conventional latency; instead, they appear to maintain a low-level, smouldering infection in tissue sanctuaries where the immune system cannot fully reach them. This persistent infection sustains immune activation without producing the acute symptoms of active viral illness, creating a situation where the patient has an ongoing immune burden that is invisible on standard clinical testing.

#limitation(title: [Trigger-Specific Mechanisms: Narrative Synthesis, Not Direct Evidence])[
The pathogen-specific mechanisms described above (EBV molecular mimicry, spike protein persistence, HHV-6 mitochondrial interference, enteroviral tissue reservoirs) are each supported by individual studies, but no study has demonstrated the complete causal chain from specific pathogen to specific ME/CFS mechanism to chronic disease maintenance in the same patients. The “common pathway” synthesis is the authors' interpretive framework; whether these diverse triggers genuinely converge on a single pathological state or produce distinct subtypes with overlapping symptoms remains an open question.
]

=== The Common Pathway: Vicious Cycles and Chronicity

Across all these triggers, a shared final pathway emerges: the acute infection initiates immune changes that, in susceptible individuals, do not self-terminate. Instead, they lock into self-reinforcing cycles. Immune cells remain activated and produce inflammatory signals; those signals impair energy metabolism; the impaired energy metabolism limits the immune system's ability to clear residual virus or resolve inflammation; and the residual viral activity or autoantibodies sustain the immune activation. Multiple interlocking cycles of this kind maintain the disease state indefinitely, even as the original triggering pathogen becomes undetectable @Rasa2018.

This explains a feature of ME/CFS that patients and their families often find bewildering: why does the illness persist when the infection is “gone”? The answer is that the pathological state has become self-sustaining. The trigger initiated the disease, but the trigger no longer _drives_ it. The integrated pathophysiological model — showing how immune dysfunction, metabolic failure, autonomic dysregulation, and potential autoimmunity lock together — is developed in detail in Section @sec:post-infectious-pathogenesis and in the multi-lock trap hypothesis (Section @sec:multi-lock-trap).

=== Biological Convergence Across Triggers

ME/CFS, whether triggered by EBV, enteroviruses, SARS-CoV-2, or other pathogens, follows a "terrain + trigger" model @Honore2026sharedMechanisms. Pre-existing vulnerability factors create a susceptible biological substrate:

- *Genetic predisposition*: Including HLA associations and other immune-related genetic variants
- *Hypermobility/EDS*: Connective tissue disorder may predispose to autonomic and immune dysregulation
- *Pre-existing dysbiosis*: Gut microbiome disruption may prime immune system for exaggerated responses
- *Chronic stress/trauma*: Psychological or physical trauma may alter HPA axis function
- *Latent MCAS*: Mast cell activation syndrome in subclinical state may lower threshold for symptom activation

An acute trigger—viral infection, surgery, physical trauma, or psychological trauma—then precipitates transition from vulnerability to chronic illness. The specific clinical expression—fibromyalgia, ME/CFS, or Long COVID—depends on the combination of pre-existing vulnerabilities and the nature of the trigger @Wong2021LongCOVIDMECFS.

*Neuroimaging Evidence: Limbic Hypoperfusion*

Li et al. (2021) used arterial spin labeling (ASL) MRI to demonstrate significantly reduced cerebral blood flow in limbic regions—anterior cingulate cortex, putamen, pallidum—in 31 ME/CFS patients compared to 48 healthy controls @Li2021limbicHypoperfusionMECFS. Hypoperfusion of the anterior cingulate cortex correlated with overall symptom severity scores. This finding provides a potential biomarker and reinforces the hypothesis of shared vascular mechanisms between post-infectious ME/CFS and Long COVID.

#hypothesis(title: [Terrain + Trigger Model for Post-Infectious ME/CFS])[
ME/CFS follows a "terrain + trigger" model where pre-existing vulnerability factors (genetic predisposition including HLA associations, hypermobility/EDS, pre-existing dysbiosis, chronic stress/trauma, latent MCAS) create a susceptible biological substrate. An acute trigger (viral infection, surgery, physical trauma, or psychological trauma) then precipitates transition from vulnerability to chronic illness. The specific clinical expression—fibromyalgia, ME/CFS, or Long COVID—depends on the combination of pre-existing vulnerabilities and the nature of the trigger. (Certainty: 0.60)
] <sec:terrain-trigger-model>
