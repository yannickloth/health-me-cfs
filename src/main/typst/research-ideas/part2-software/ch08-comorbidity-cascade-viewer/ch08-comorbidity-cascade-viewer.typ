#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Part II, Chapter 8: Comorbidity Cascade Viewer
// Implements: Ch14 (Comorbidity Cascade Map)
// =============================================================================

= Comorbidity Cascade Viewer
<sw:comorbidity-cascade-viewer>

== Purpose

An interactive visualization of the comorbidity acquisition network (Ch14). Displays a directed graph of ME/CFS comorbidities with transition probabilities: given diagnosis X, the probability of developing Y within Z years. Users explore acquisition pathways, test pathway hypotheses, and receive personalized comorbidity risk estimates.

== Users

- *Researchers.* Explore the comorbidity network to identify acquisition sequences, test pathway hypotheses (e.g., "does MCAS precede POTS more often than POTS precedes MCAS?"), and plan preventive intervention trials.
- *Physicians.* Enter a patient's current diagnoses and receive: which comorbidities they are at elevated risk for, in what time frame, with what probability, and what screening or preventive action is indicated.
- *Patients.* Patient-friendly risk report: "based on your profile, you have an elevated risk of developing POTS within the next 2 years. Here's what to watch for and what you can do."

== Core Data Model

=== Comorbidity

```
Comorbidity(
  id,
  name: text,                        // e.g., "POTS", "MCAS", "Fibromyalgia"
  category: enum{autonomic, immune, pain, structural, gastrointestinal, other},
  prevalence_in_mecfs: float,        // % of ME/CFS patients
  prevalence_in_general_pop: float,  // % of general population
  typical_onset_relative_to_mecfs: enum{before, concurrent, after},
  typical_lag_years: float | null,   // If after, median time to onset
)
```

=== Transition Edge

```
TransitionEdge(
  from_comorbidity_id,
  to_comorbidity_id,
  probability_within_2yr: float,     // P(to | from, Δt ≤ 2yr)
  probability_within_5yr: float,     // P(to | from, Δt ≤ 5yr)
  probability_within_10yr: float,    // P(to | from, Δt ≤ 10yr)
  hazard_ratio_vs_no_from: float,    // HR for developing 'to' given 'from' vs not having 'from'
  certainty: float,                  // 0-1 for the edge's reliability
  evidence_basis: [citation],
  hypothesized_pathway: enum{       // Which pathway (Ch14) explains this edge
    mast_cell_multi_system,
    autonomic_failure_multi_system,
    shared_autoimmune,
    structural_connective_tissue,
    immune_dysregulation_secondary,
    unknown,
  },
)
```

=== Patient Risk Profile

```
PatientRiskProfile(
  patient_id,
  current_diagnoses: [comorbidity_id],
  current_age: int,
  sex: enum{M, F},
  me_cfs_duration_years: float,
  me_cfs_severity: enum{mild, moderate, severe, very_severe},

  // Computed
  risks: [
    {
      comorbidity_id,
      probability_within_2yr: float,
      probability_within_5yr: float,
      probability_within_10yr: float,
      contributing_diagnoses: [comorbidity_id],  // Which current diagnoses drive this risk
      modifiable_risk_factors: [text],           // What could reduce risk
      screening_recommendation: text,            // What to monitor
      preventive_action: text,                   // What to do
    }
  ],
  pathway_assignment: {pathway, confidence}, // Dominant comorbidity pathway
)
```

== Interface Design

=== Network View (Researcher)

```
┌──────────────────────────────────────────────────────────────┐
│ Comorbidity Cascade Network                  [Pathway ▼: All] │
├──────────────────────────────────────────────────────────────┤
│                                                              │
│                         ┌──────┐                             │
│                    ┌───→│ POTS │────┐                        │
│                    │    └──┬───┘    │                        │
│                    │       │0.15    │0.12                    │
│                    │       ↓        ↓                        │
│  ┌──────┐     ┌────┴───┐ ┌──────┐ ┌──────────┐             │
│  │ hEDS │────→│ ME/CFS │→│ IBS  │→│Fibromyalg.│             │
│  └──────┘0.35 └───┬────┘ └──────┘ └──────────┘             │
│                    │0.20   0.08                             │
│                    ↓        ↓                               │
│               ┌────────┐ ┌──────────┐                       │
│               │  MCAS  │ │ Migraine │                       │
│               └───┬────┘ └──────────┘                       │
│                   │0.18                                     │
│                   ↓                                         │
│              ┌───────────────┐                              │
│              │Interstitial   │                              │
│              │  Cystitis     │                              │
│              └───────────────┘                              │
│                                                              │
│ Node size = prevalence   Edge thickness = transition prob    │
│ Edge color = pathway     Edge label = P(to | from, 5yr)     │
├──────────────────────────────────────────────────────────────┤
│ Selected Edge: hEDS → ME/CFS                                 │
│   P(ME/CFS | hEDS, 5yr) = 0.35 (HR = 2.8 vs no hEDS)       │
│   Pathway: Structural Connective Tissue (c:0.30)            │
│   Evidence: [Rowe2017hEDS] [Bets2020hypermobility]          │
│   [Show pathway details] [Show alternative pathways]         │
└──────────────────────────────────────────────────────────────┘
```

=== Patient Risk View

```
┌──────────────────────────────────────────────────────┐
│ Comorbidity Risk Report                              │
│ Patient: [Name]                  Date: 2026-07-23    │
├──────────────────────────────────────────────────────┤
│ Current Diagnoses: ME/CFS (7yr), POTS, MCAS          │
│ Dominant Pathway: Mast Cell → Multi-System (c:0.65)  │
│                                                      │
│ Elevated Risks:                                      │
│                                                      │
│ Irritable Bowel Syndrome (IBS)                       │
│   2-year risk: 24%   5-year risk: 38%                 │
│   Driven by: MCAS (mast cells in gut), POTS          │
│             (autonomic dysregulation of motility)      │
│   Screening: Annual GI symptom review                 │
│   Prevention: Mast cell stabilization, dietary        │
│              modification (low-histamine, low-FODMAP) │
│                                                      │
│ Interstitial Cystitis (IC)                           │
│   2-year risk: 12%   5-year risk: 22%                 │
│   Driven by: MCAS (bladder mast cell activation)      │
│   Screening: Urinary symptom questionnaire annually   │
│   Prevention: Mast cell stabilization (already        │
│              indicated for existing MCAS)              │
│                                                      │
│ Fibromyalgia (FM)                                    │
│   2-year risk: 8%    5-year risk: 18%                 │
│   Driven by: ME/CFS duration (central sensitization), │
│             POTS (chronic pain from hypoperfusion)     │
│   Screening: Widespread Pain Index annually           │
│   Prevention: Pain neuroscience education, graded     │
│              motor imagery (if tolerated)              │
│                                                      │
│ [View All Risks] [Download Report] [Update Profile]   │
└──────────────────────────────────────────────────────┘
```

=== Pathway Explorer

Toggle between the five hypothesized pathways (Ch14) to highlight the subset of edges attributed to each pathway. This reveals:
- Which pathway accounts for the most observed transitions
- Which transitions are unexplained by any hypothesized pathway (gaps requiring new pathway hypotheses)
- Which pathway a given patient's comorbidity sequence most closely follows

== Technical Architecture

*Network data.* The transition probabilities are estimated from patient registry data (SolveCFS, DecodeME) and published cohort studies. Each edge includes an evidence grade (direct observation from longitudinal cohort, cross-sectional estimate, or expert consensus).

*Graph rendering.* A force-directed or hierarchical layout engine (Cytoscape.js or D3-force). Nodes are positioned to minimize edge crossings while preserving approximate temporal ordering (earlier diagnoses on the left, later diagnoses on the right).

*Risk computation.* For a given patient's current diagnoses, the tool computes risk using a multi-state Markov model: the probability of transitioning to each unacquired comorbidity within time t, given the current diagnosis set. The model accounts for the non-independence of transitions (having both MCAS and POTS multiplies IBS risk more than the sum of their individual effects).

*Offline.* The network data and risk computation engine are static. Full offline support.

== Relationship to Parent Paper

- Ch14 (Comorbidity Cascade Map): the proposal and five hypothesized pathways
- Ch47 §9.5 (Comorbidity Acquisition as Attractor Migration): the formal model of comorbidity acquisition
- Ch3 (Additional Symptoms): the descriptive comorbidity prevalence data
- Ch7 (Immune Dysfunction): MCAS mechanism
- Ch10 (Cardiovascular): POTS mechanism

== Development Effort

- Network data compilation (transition probability estimation): 30–50 hours
- Markov risk model: 20–30 hours
- Graph rendering and interaction: 40–60 hours
- Frontend (risk report): 40–60 hours
- Total: ~130–200 hours for MVP
