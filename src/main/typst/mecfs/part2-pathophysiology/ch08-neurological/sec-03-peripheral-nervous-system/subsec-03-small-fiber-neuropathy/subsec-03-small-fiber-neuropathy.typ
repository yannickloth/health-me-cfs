#import "../../../../shared/environments.typ": *

=== Small Fiber Neuropathy
<sec:sfn>

Small fiber neuropathy (SFN) affects thinly myelinated A-delta fibers and unmyelinated C fibers, which mediate pain, temperature, and autonomic functions. SFN has emerged as a significant finding in ME/CFS.

==== Skin Biopsy Findings

Punch skin biopsies with intraepidermal nerve fiber density (IENFD) measurement represent the gold standard for SFN diagnosis:

    - *Reduced IENFD*: Multiple studies report decreased nerve fiber density in ME/CFS patients @Oaklander2013sfn @Grayston2019sfn
    - *Correlation with symptoms*: Lower IENFD correlates with pain severity and autonomic dysfunction
    - *Distal predominance*: Typical length-dependent pattern with greater abnormalities in feet than thighs
    - *Prevalence*: Estimates range from 30--80% of ME/CFS patients meeting criteria for SFN, with the wide range reflecting variability in diagnostic methods (skin biopsy IENFD vs sudomotor testing), disease definition heterogeneity, and whether fibromyalgia-overlapping cohorts are included @Oaklander2022SFN @Grayston2019sfn. Oaklander et al. @Oaklander2013sfn found 41% of fibromyalgia patients (overlapping with ME/CFS) had reduced IENFD diagnostic for SFN. A meta-analysis by Grayston et al. @Grayston2019sfn reported 49% pooled prevalence (95% CI: 38-60%) of small fiber pathology in fibromyalgia across 8 studies

==== Autonomic Testing

Quantitative sudomotor axon reflex testing (QSART) and related methods assess small fiber autonomic function:

    - *Reduced sweat output*: Indicating sudomotor dysfunction
    - *Abnormal sweat gland innervation*: On skin biopsy analysis
    - *Correlation with orthostatic intolerance*: SFN may contribute to autonomic dysregulation

==== Pain Mechanisms

SFN may explain chronic pain in ME/CFS through:

    - *Neuropathic pain*: Burning, tingling, electric shock sensations
    - *Allodynia*: Pain from normally non-painful stimuli
    - *Hyperalgesia*: Exaggerated pain responses
    - *Central sensitization*: Peripheral nerve damage may trigger central pain amplification

==== Potential Causes of SFN in ME/CFS

    - Autoimmune mechanisms (ganglioside antibodies, sodium channel antibodies)
    - *IgG-mediated DRG targeting*: passive transfer experiments demonstrate that purified IgG from long COVID patients accumulates in lumbar DRG and sensitises nociceptive neurons @Mignolet2026passiveTransferLC @Goebel2021passiveTransferFM (see @sec:passive-transfer-igg)
    - Metabolic dysfunction (mitochondrial, oxidative stress)
    - Chronic inflammation
    - Microvascular abnormalities affecting nerve blood supply
    - Direct viral damage (in post-infectious cases)

==== Post-COVID SFN: ME/CFS Overlap and IVIG Response
<sec:sfn-postcovid>

McAlpine et al.\ (2024) conducted a retrospective case-control study of 16 patients with new-onset SFN following COVID-19, recruited from the Yale NeuroCOVID Clinic @McAlpine2024sfnCOVID. Key findings:

    - 92% of post-COVID SFN patients met the post-exertional malaise criterion for ME/CFS, suggesting post-COVID SFN is frequently a ME/CFS-overlapping phenotype rather than an isolated neuropathy
    - SFN was predominantly non-length-dependent---implying DRG-level rather than axon-length-dependent pathology, mechanistically consistent with IgG accumulation at DRG somata reported in passive transfer studies
    - Invasive cardiopulmonary exercise testing ($n=7$) confirmed neurovascular dysregulation consistent with autonomic small fiber involvement
    - IVIG response: 9/9 treated patients improved versus 3/7 untreated ($p=0.02$), supporting an autoimmune mechanism and suggesting the IgG-DRG axis may be therapeutically actionable in this subgroup

Study: (retrospective case-control, Class III evidence, $n=16$; Yale NeuroCOVID Clinic; certainty: 0.52, partially replicated).

#hypothesis(title: [IgG-Mediated Non-Length-Dependent SFN: DRG-Level Autoimmune Mechanism])[
The co-occurrence of non-length-dependent SFN, ME/CFS criteria fulfilment, and IVIG responsiveness in post-COVID patients is consistent with a DRG-level autoimmune mechanism in which circulating IgG binds sensory neuron somata, causing functional sensitisation and eventual fiber loss measurable by IENFD reduction. The passive transfer triad (Goebel 2021, Mignolet 2026, Chen 2026; @sec:passive-transfer-igg) provides direct experimental support for IgG accumulation at DRG in this disease context.

*Testable prediction:* Post-COVID ME/CFS patients with non-length-dependent SFN on skin biopsy should show reduced IENFD correlating with DRG-binding IgG titres. IVIG response should be greater in non-length-dependent versus length-dependent SFN subtypes.

*Treatment implication:* If this hypothesis is confirmed, IVIG and immunoadsorption would be the most mechanistically rational interventions for post-COVID ME/CFS patients with documented non-length-dependent SFN. Non-length-dependent pattern on skin biopsy may eventually serve as a stratification biomarker for autoimmune etiology and IVIG candidacy — pending prospective validation.

*Limitation:* McAlpine 2024 is retrospective ($n=16$, Class III). The specific DRG antigens targeted by IgG in post-COVID SFN are unknown. IVIG effect may reflect immune modulation rather than specific autoantibody removal. Independent replication needed.

Study: (mechanistic synthesis; McAlpine 2024 + passive transfer triad; certainty: 0.40, hypothesis plausible but DRG antigens uncharacterised).
] <hyp:drg-sfn-igg-mecfs>

#speculation(title: [ISR Activation in Dorsal Root Ganglia as a Mechanism for Small Fibre Neuropathy in ME/CFS])[
*Certainty: 0.30.*
Dorsal root ganglion (DRG) neurons are unmyelinated, highly metabolically active, and depend on intact mitochondrial function for their large cytoplasmic volume and long axonal projections. They are therefore disproportionately vulnerable to ISR-driven energy failure @CostaMattioli2020ISRReview. HHV-6 viral miRNA (miR-aU14) has been detected in dorsal root ganglia of ME/CFS post-mortem tissue @Kasimir2022HHV6Tissue, establishing viral neuroinvasion of this exact compartment. If HHV-6 reactivation in DRGs activates the ISR via miR-aU14--DRP1 fragmentation @Hennig2022HHV6miRNA, the resulting mitochondrial failure would preferentially manifest as sensory dysfunction in small fibres (A-delta and C fibres), producing the small fibre neuropathy documented in ~49% of ME/CFS patients.

This ISR-DRG mechanism would be parallel to, and potentially additive with, the IgG-mediated DRG targeting mechanism (@hyp:drg-sfn-igg-mecfs): viral ISR damage and IgG sensitisation could independently or cooperatively drive IENFD reduction and sensory symptoms. The ISR mechanism predicts that SFN severity would correlate with HHV-6 reactivation markers (miR-aU14 in plasma exosomes, anti-dUTPase IgG) rather than with serum IgG autoantibody titres.

*Testable prediction:* ME/CFS patients with SFN (reduced IENFD) will show higher HHV-6 dUTPase IgG titres and higher plasma miR-aU14 levels than ME/CFS patients without SFN. Skin biopsy from SFN-positive ME/CFS patients will show ATF4 immunoreactivity in surviving DRG-derived fibres. If HHV-6 markers do not correlate with SFN severity → ISR-DRG mechanism not supported.

*Limitation:* The post-mortem HHV-6 DRG finding is from n=3 ME/CFS patients @Kasimir2022HHV6Tissue. No study has measured ISR markers specifically in DRG neurons or DRG-innervated skin in ME/CFS. ATF4 IHC in skin biopsy is not a validated clinical method.
] <spec:isr-drg-sfn>

#open-question(title: [ISR in Brainstem Nuclei: A Source of Autonomic Dysfunction in ME/CFS?])[
HHV-6 reactivation has been confirmed in multiple brain regions in ME/CFS post-mortem tissue, including the choroid plexus, hippocampus, and amygdala @Kasimir2022HHV6Tissue. Brainstem nuclei involved in autonomic regulation --- notably the nucleus tractus solitarius (NTS) and dorsal motor nucleus of the vagus --- were not specifically examined in that study but are neurotropic targets of herpesviruses. If HHV-6 reactivation in brainstem nuclei activates ISR via miR-aU14--DRP1 @Hennig2022HHV6miRNA, local energy failure in autonomic regulatory circuits could produce the heart rate variability abnormalities, orthostatic intolerance, and autonomic dysregulation documented in ME/CFS without requiring peripheral nerve damage.

*Research question:* Does post-mortem brainstem tissue from ME/CFS patients show HHV-6 miR-aU14, ISR markers (phospho-eIF2α, ATF4), or mitochondrial fragmentation signatures in autonomic nuclei? Would HRV abnormalities correlate with brainstem rather than peripheral autonomic markers in living patients?
] <oq:isr-brainstem-autonomic>

