#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Part II, Chapter 6: Adverse Drug Reaction Database
// Implements: Ch9 (Adverse Drug Reaction Atlas)
// =============================================================================

= Adverse Drug Reaction Database
<sw:adverse-reaction-database>

== Purpose

A structured, queryable database implementing the Adverse Drug Reaction Atlas (Ch9). For any medication, returns: the expected response, typical ME/CFS aberrant responses, the mechanistic implication of each aberrant response, the differential diagnosis (alternative interpretations), and the recommended clinical action. The database is the knowledge base; it can be queried standalone or integrated into the pharmacodiagnostic matrix (Ch1, Part II) and cascade tracing tool (Ch2, Part II).

== Users

- *Physicians.* Query: "Patient reported X reaction to drug Y — what does this mean?" The database returns mechanistic implications ranked by certainty.
- *Researchers.* Aggregate reaction patterns across patients to identify novel paradoxical reaction signatures and validate mechanistic hypotheses.
- *Patients.* Read-only view: understand why a medication caused a particular reaction in mechanistic terms.

== Core Data Model

=== Drug

```
Drug(
  id,
  name: text,
  class: text,                       // e.g., "Beta-blocker", "SSRI"
  primary_mechanism: text,           // Pharmacological mechanism
  typical_indication: text,
  typical_latency_to_effect: text,
  typical_half_life: text,
)
```

=== Normal Response

```
NormalResponse(
  drug_id,
  expected_effect: text,             // "Reduced heart rate, reduced anxiety"
  mechanism: text,                   // How the drug normally produces this effect
  population_prevalence: float | null,  // % of general population
  onset: text,                       // "30-60 minutes"
)
```

=== Aberrant Response

```
AberrantResponse(
  id,
  drug_id,
  response_description: text,        // "Stimulant caused extreme sedation"
  response_category: enum{
    direction_inverted,              // Opposite of expected
    hypersensitivity,                // Exaggerated expected
    multi_system_chain,              // Cascade across systems
    symptom_specific_dissociation,   // Some symptoms improve, others worsen
  },
  prevalence_in_me_cfs: text | null,  // "Reported by ~30% of patients (anecdotal)"
  certainty: float,                  // 0-1 for the prevalence estimate
)
```

=== Mechanistic Implication

```
MechanisticImplication(
  aberrant_response_id,
  implicated_mechanism_family: int,   // Family ID (1-20) from Ch17
  implicated_pathway: text,          // Specific pathway within the family
  reasoning: text,                   // Mechanistic rationale
  certainty: float,                  // 0-1
  supporting_evidence: [citation],
  alternative_explanations: [text],  // What else could cause this reaction?
)
```

=== Clinical Action

```
ClinicalAction(
  mechanistic_implication_id,
  recommended_action: text,          // "Order MCAS workup (tryptase, urinary N-methylhistamine)"
  diagnostic_tests: [text],          // Specific tests to order
  therapeutic_implication: text,     // "Avoid NSAIDs; consider mast cell stabilizers"
  urgency: enum{routine, semi_urgent, urgent},
)
```

=== Query Interface

The database supports complex queries:
- "For drug X, what aberrant reactions are documented?"
- "Which drugs are most likely to cause reaction pattern Y?"
- "Which mechanisms are most commonly associated with category Z reactions?"
- "Patient reacted to drug A and drug B with reactions RA and RB — what is the consistent mechanistic explanation?"

The last query type connects the adverse reaction database to the pharmacodiagnostic matrix: aberrant reactions are another form of drug response data that constrains hypotheses.

== Interface Design

```
┌──────────────────────────────────────────────────────────┐
│ Adverse Drug Reaction Database                           │
│                                                          │
│ Drug: [Methylphenidate ▼]    Category: [All ▼]           │
│                                                          │
├──────────────────────────────────────────────────────────┤
│ Methylphenidate (Ritalin) — Stimulant, NDRI              │
│ Normal response: Increased alertness, focus, energy       │
│                                                          │
│ Aberrant Responses Documented in ME/CFS:                  │
│                                                          │
│ ┌────────────────────────────────────────────────────┐   │
│ │ ◐ Direction-Inverted: Sedation / Fatigue           │   │
│ │ Prevalence: Frequently reported (anecdotal, c:0.15)│   │
│ │                                                    │   │
│ │ Implicated Mechanisms:                             │   │
│ │   CNS Energy Crisis (c:0.30): Stimulant increases  │   │
│ │     metabolic demand → depleted brain triggers     │   │
│ │     protective shutdown → sedation.                │   │
│ │                                                    │   │
│ │   Catecholamine Depletion (c:0.20): Stimulant      │   │
│ │     depletes already-low reserves → crash after     │   │
│ │     brief or no activation.                        │   │
│ │                                                    │   │
│ │   Safe Mode Enforcement (c:0.25): Increased demand │   │
│ │     interpreted as threat → program intensifies     │   │
│ │     suppression → fatigue/sedation.                │   │
│ │                                                    │   │
│ │ Clinical Action:                                   │   │
│ │   → Consider CNS energy crisis workup              │   │
│ │   → If modafinil also causes sedation: implicates  │   │
│ │     hypothalamic energy failure over catecholamine  │   │
│ │   → Avoid stimulants; address underlying energy    │   │
│ │     deficit directly (mitochondrial support,        │   │
│ │     anti-neuroinflammatory)                        │   │
│ │                                                    │   │
│ │ [Expand all] [Show evidence] [Cross-reference]      │   │
│ └────────────────────────────────────────────────────┘   │
│                                                          │
│ ┌────────────────────────────────────────────────────┐   │
│ │ ▲ Hypersensitivity: Jitteriness, palpitations      │   │
│ │ ...                                                │   │
│ └────────────────────────────────────────────────────┘   │
│                                                          │
│ [Search Another Drug] [Browse by Category] [Export]       │
└──────────────────────────────────────────────────────────┘
```

== Technical Architecture

*Knowledge base.* A structured document (YAML or JSON) defining the drug → aberrant response → mechanism → action taxonomy. Version-controlled with explicit provenance for each entry. Updated as new clinical reports and literature emerge.

*Query engine.* A simple search and filter interface over the structured data. For multi-drug query support ("patient reacted to A and B"), the engine performs a cross-reference: find mechanistic implications consistent with both reactions.

*Frontend.* Web application, responsive. Can be embedded as a module in the pharmacodiagnostic matrix app (Ch1, Part II) — the adverse reaction database provides the aberrant response data that the matrix uses for constraint propagation.

*Offline.* The knowledge base is a static file (< 2 MB). Full offline support.

== Relationship to Parent Paper

- Ch9 (Adverse Drug Reaction Atlas): the conceptual framework and content
- Ch30 §10 (Side Effects as Diagnostic Probes): the diagnostic logic applied to specific reactions
- Ch24 (Medications by System): the drug pharmacology reference
- Ch17 (Universal Mechanisms): the mechanism families that reactions implicate

== Development Effort

- Knowledge base curation: 40–60 hours (primary bottleneck; requires systematic literature review + clinician interviews)
- Query engine: 15–20 hours
- Frontend: 40–60 hours
- Total: ~95–140 hours for MVP
