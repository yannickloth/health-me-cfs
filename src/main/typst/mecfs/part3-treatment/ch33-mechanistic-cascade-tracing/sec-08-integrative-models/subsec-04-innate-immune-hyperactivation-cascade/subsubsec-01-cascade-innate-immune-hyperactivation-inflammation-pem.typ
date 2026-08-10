#import "../../../../shared/environments.typ": *
#import "/src/main/typst/lib/clinical-caution.typ": clinical-caution

==== Cascade: Innate immune hyperactivation → systemic inflammation → fatigue/PEM

#clinical-caution()

*Cascade:*
- Infectious / microbial-antigen trigger → exaggerated innate immune response (ex-vivo stimulation, Che 2025 @che2025innate)
- Persistent TLR/NF-$kappa$B + NLRP3-inflammasome / complement activation (@hyp:tlr4-nfkb-pem-amplifier, @sec:innate-immunity)
- Systemic pro-inflammatory state (cytokines, lipid-linked inflammation, ECM/DAMP release) @che2025innate
- Downstream amplification: impaired TCA/beta-oxidation/urea-cycle energy production (@sec:multi-lock-trap), tryptophan→kynurenine diversion, redox imbalance
- Exercise precipitates exacerbation → fatigue + post-exertional malaise
- *Differential task:* distinguish systemic innate-immune-driven inflammation from metabolic energy-triage (@sec:triage-cascade) and from CNS-restricted neuroinflammation (@sec:microglial-cascade)

*Step U1:* Exaggerated innate immune response to microbial antigen
- *Mechanism:* ME/CFS leukocytes mount an exaggerated innate (TLR-driven) cytokine response to microbial stimulation that worsens after exercise and tracks symptom intensity; this sits upstream of — and may drive — the systemic inflammatory state documented across the Lipkin multi-site program @che2025innate,@Hornig2015. The compartment caveat applies: evidence is measured ex-vivo in blood cells and plasma, inferred to represent systemic tissue inflammation. (Evidence source: PBMC/plasma — Inference target: systemic inflammation. Link is indirect.)
- *Intercept:* Corticosteroids (prednisone; broad suppression of NF-$kappa$B-dependent cytokines) — suppresses the amplified response but is non-selective and has serious long-term risk in ME/CFS (@sec:medication-reference); NSAIDs/celecoxib (COX-2, partial NF-$kappa$B) — milder, symptomatic.
#finding(claim: [Amplified systemic innate-immune response is treatment-sensitive], explanation: [A partial response to a broad anti-inflammatory (corticosteroid or COX-2 inhibitor) — symptomatic relief without resolution — is consistent with an ongoing innate-immune-inflammatory driver but does NOT localize it: the same response would occur in metabolic-triage if inflammation is downstream (see Step U3). Used as a crude first probe only, given corticosteroids' risks.], certainty: [Low], level: [Hypothesis])
#finding(claim: [Innate-immune inflammation NOT the dominant driver], explanation: [If the amplified response is insensitive to broad anti-inflammatories, systemic-innate-immune-driven inflammation is unlikely to be the rate-limiting driver — weigh metabolic energy-triage (@sec:triage-cascade) or CNS neuroinflammation (@sec:microglial-cascade) instead.], certainty: [Low], level: [Hypothesis])

*Step U2:* Inflammasome / IL-1 axis (NLRP3, IL-1β)
- *Mechanism:* NLRP3-inflammasome assembly and downstream IL-1β drive sterile inflammation; complement activation is documented in ch08 (@sec:innate-immunity, @sec:chronic-activation). Interception at this node is more mechanism-specific than the broad anti-inflammatory step above.
- *Intercept:* Colchicine (microtubule/NLRP3-inflammasome) — rate-limiting on inflammasome assembly, but narrow GI window; Anakinra (IL-1 receptor antagonist) — post-receptor IL-1 blockade; Canakinumab (anti-IL-1β monoclonal) — selective IL-1β blockade; all cross-reference @sec:medication-reference.
#finding(claim: [NLRP3 inflammasome is the rate-limiting inflammatory node], explanation: [Colchicine improves symptoms → the inflammasome is a dominant driver. If colchicine GI ceiling prevents dosing, anakinra/canakinumab response isolates whether IL-1β specifically is the effector. Failure of all three weights against an inflammasome-centric inflammatory driver.], certainty: [Low], level: [Hypothesis])
#finding(claim: [Inflammation is steroid-sensitive but not inflammasome-driven], explanation: [Corticosteroid-sensitive but colchicine/anakinra/canakinumab null → the inflammation is cytokine-driven via a non-NLRP3, non-IL-1 path (e.g., TNF/NF-$kappa$B dominant). Do NOT escalate biologics without this data.], certainty: [Low], level: [Hypothesis])

*Step U3:* Downstream amplification (metabolic + CNS coupling)
- *Mechanism:* Innate-immune inflammation feeds the energy-crisis model (TCA/β-oxidation/urea-cycle impairment; tryptophan→kynurenine diversion from serotonin; redox/ECM imbalance) @che2025innate,@sec:multi-lock-trap, and engages CNS microglial activation (@sec:microglial-cascade). This step connects the peripheral trigger to the symptom generators — but it is modeled as consequence, not independent cause.
- *Intercept:* LDN (low-dose naltrexone; TLR4 antagonist, systemic and glial) @sec:medication-reference; Minocycline (microglial inhibitor, CNS-penetrant) @sec:medication-reference. These probe the degree to which the peripheral innate-immune state propagates to CNS neuroinflammation.
#finding(claim: [Systemic innate-immune state drives CNS neuroinflammation], explanation: [LDN produces benefit and minocycline augments it → peripheral immune activity propagates to CNS microglial activation, linking the systemic trigger to the neuroinflammatory cascade.], certainty: [Low], level: [Partial root cause — systemic-to-CNS coupling])
#finding(claim: [Systemic inflammation is downstream of a more upstream cause], explanation: [If LDN/minocycline are unhelpful or the fatigue is purely metabolic (energy-triage dominates), then inflammation is a marker of the energy crisis, not its driver — treat the metabolism and triage pattern, not the cytokines.], certainty: [Low], level: [Hypothesis])

*Consequence:* This cascade gives clinicians a triaged, drug-testable sequence to separate three overlapping drivers of fatigue/PEM — systemic innate-immune inflammation (broad anti-inflammatory → inflammasome/IL-1 → LDN/minocycline), metabolic energy-triage (@sec:triage-cascade), and CNS neuroinflammation (@sec:microglial-cascade). Differential drug response is a research/clinical-judgment tool here, NOT a validated diagnostic instrument (see the caution in @sec:pharmacodiagnostic-matrix); in the absence of a reliably stratifying inflammatory-marker panel it is one candidate way to separate these drivers, and none of these drugs should be deployed without the monitoring, interaction, and stopping guidance in @sec:medication-reference. Severity applicability: unknown — the Che 2025 study population severity distribution is not stated; drug tolerability is poorest in severe/very-severe patients (worst for colchicine GI ceiling, corticosteroids, and biologics), so cross-reference ch14a before any trial.

*Origin:* /integrate-topic innate-immunity-che2025 (scoped micro-add — cascade-routing of already-integrated Che 2025 evidence; cross-references existing content, does not duplicate it).
