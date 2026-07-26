#import "../../../../shared/environments.typ": *

=== Vaccination in ME/CFS: Efficacy and Safety
<sec:vaccination-mecfs>

Given the immune dysfunction documented in ME/CFS, a critical clinical question is whether patients mount adequate vaccine responses and whether vaccination is safe.

==== Vaccine Immunogenicity

The only study directly measuring vaccine immunogenicity in CFS patients found reassuring results: Prinsen et al.\ showed that CFS patients mounted antibody responses to influenza vaccination identical to healthy controls, with similar seroprotection rates across all three influenza strains @Prinsen2012vaccine. CFS patients actually showed increased cellular proliferation post-vaccination. The authors concluded that “standard seasonal influenza vaccination is thus justified and, when indicated, should be recommended for patients suffering from CFS.”

#limitation(title: [Single Study, Single Vaccine Type])[
The Prinsen et al.\ finding @Prinsen2012vaccine is the only published study of vaccine immunogenicity in ME/CFS. It assessed influenza vaccination only; responses to other vaccines (meningococcal, pneumococcal, COVID-19) remain unstudied. Given that ME/CFS immune dysfunction varies substantially across patients and that the Iu et al.\ CD8#super[+] T cell exhaustion findings @iu2024tcell_exhaustion postdate this study, vaccine responses in ME/CFS patients with documented severe immune dysfunction may differ from those with milder phenotypes.
]

==== Vaccine Safety: Infection vs.\ Antigen Exposure

Population-level data from Norway provide strong evidence distinguishing infection risk from vaccination risk:

    - *Meningococcal vaccine:* No association between meningococcal B vaccine and CFS in a case-control study (adjusted OR 1.06, CI 0.67–1.66) @Magnus2009meningococcal
    - *Pandemic influenza:* Actual influenza infection doubled ME/CFS risk (HR 2.04, CI 1.78–2.33), while the adjuvanted pandemic vaccine showed no increased risk (HR 0.97) @Magnus2015influenza

These findings provide strong population-level evidence that, at least for pandemic influenza, it is _infection_ rather than antigen exposure or adjuvant challenge that triggers ME/CFS. This has direct clinical implications: vaccination reduces infection risk without adding ME/CFS risk, making it a net protective intervention. The Magnus et al.\ influenza data @Magnus2015influenza are particularly powerful, as they tracked the entire Norwegian population from 2009 to 2012, providing statistical power unavailable to smaller studies.

#open-question(title: [Post-COVID Immune Damage and Vaccine Efficacy])[
COVID-19 causes persistent T cell exhaustion (elevated PD-1, TIM-3, CTLA-4) @Gil2023cd8 and complement consumption @Klein2024longcovid. However, studies tracking pre-existing vaccine antibodies have found that COVID-19 does _not_ cause measles-like immune amnesia @Klein2024longcovid. Whether the combination of pre-existing ME/CFS immune dysfunction with post-COVID immune damage compounds to reduce vaccine efficacy for _future_ vaccinations is unstudied and clinically relevant: if it does, ME/CFS patients with post-COVID worsening may require additional booster doses or antibody titre monitoring.
] <q:postcovid-vaccine-efficacy>

==== The Anellovirus Paradox: A Hidden Positive in Negative Viral Screening

Large-scale viral screening studies have consistently failed to find pathogenic viruses enriched in ME/CFS blood, saliva, or stool. However, one overlooked finding from Lipkin's multicenter virome study (391 ME/CFS patients, 292 controls) may contain a clue: anelloviruses---ubiquitous, normally harmless commensal viruses---were _significantly less prevalent_ in ME/CFS plasma (30.5% vs 54.1%, $p < 0.001$). The study authors hypothesized this may reflect a "hyperimmune state" in which the immune system is clearing these normally tolerated viruses more aggressively than in healthy individuals.

#speculation(title: [Constitutive Immune Activation Without Secretory Output])[

*Certainty: 0.20.* Based on a single observation from one study. Highly speculative but generates testable predictions.

The anellovirus depletion suggests ME/CFS immune cells may be constitutively activated at a low level---sufficient to clear harmless commensal viruses more aggressively, but below the threshold for producing detectable circulating cytokine elevations. This "idle engine at high RPM" model would explain:

    - *Normal cytokines:* The activation is intracellular (metabolic, calcium-dependent), not secretory
    - *Normal cell counts:* Cells are present, just burning energy on inappropriate low-level activation
    - *Reduced NK cytotoxicity:* Cells are already partially degranulated from chronic low-level activation and cannot mount acute responses to laboratory challenges
    - *Metabolic exhaustion:* Chronic low-level activation is a continuous energy drain, contributing to the bioenergetic crisis

This model predicts that ME/CFS immune cells should show elevated baseline metabolic activity (oxygen consumption, glucose uptake) compared to controls despite producing normal cytokine levels, and that their _stimulation response_ (fold-change upon challenge) will be blunted even though their _resting_ state appears overactive. The CureME biobank finding that ME/CFS showed reduced anellovirus but normal herpesvirus seroprevalence would be consistent: herpesvirus control requires adaptive immunity (which may be impaired), while anellovirus clearance relies on innate mechanisms that are constitutively overactive.

*Falsification:* ME/CFS immune cells show normal or reduced baseline metabolic activity (not elevated), and anellovirus depletion is not replicated in independent cohorts.
] <spec:anellovirus-hyperimmune>

