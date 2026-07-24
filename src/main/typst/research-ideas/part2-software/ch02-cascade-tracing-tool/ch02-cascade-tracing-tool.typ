#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Part II, Chapter 2: Interactive Cascade Tracing Tool
// Implements: Ch30 (Mechanistic Cascade Tracing)
// =============================================================================

= Interactive Cascade Tracing Tool
<sw:cascade-tracing-tool>

== Purpose

An interactive visualization of the mechanistic cascade tracing framework (Ch30). Users explore any hypothesis's cascade from trigger to terminal consequence, with each node annotated with: intercepting medications, expected clinical effects, and the differential diagnostic logic of response vs null response.

== Users

- *Researchers and clinicians.* Navigate the cascade interactively rather than linearly. Click a node to see which medications intercept there. Click a medication to see all nodes it intercepts. Toggle between "drug-indexed" and "hypothesis-indexed" views.
- *Patients (read-only).* Understand the mechanistic basis of their treatment — "this medication targets node N in the GPCR autoantibody cascade" — providing conceptual grounding for treatment decisions.

== Core Data Model

=== Cascade Node

```
CascadeNode(
  id,
  hypothesis_id,
  name: text,                     // e.g., "Microglial IL-1β Release"
  description: text,              // Mechanistic description
  certainty: float,
  evidence_basis: [citation],     // From parent paper
)
```

=== Cascade Edge

```
CascadeEdge(
  from_node_id,
  to_node_id,
  relationship: enum{causes, amplifies, inhibits},
  certainty: float,
  latency: text,                  // "hours to days"
)
```

=== Interception Point

```
InterceptionPoint(
  node_id,
  medication_id,
  mechanism: text,                // How the medication intercepts
  expected_effect_if_rate_limiting: text,
  expected_effect_if_not_rate_limiting: text,
  certainty: float,
)
```

=== Graph Structure

Each hypothesis (Ch30 §1–§8) is a directed acyclic graph (DAG) with:
- A root node (trigger)
- Intermediate nodes (cascade steps)
- Terminal nodes (symptoms)
- Annotations at each node (interception points, evidence)

Cross-hypothesis edges (Ch30 §9) connect nodes across hypotheses for convergence patterns.

== Interface Design

=== Primary View: Hypothesis Cascade

```
┌──────────────────────────────────────────────────────────────┐
│ Hypothesis: [GPCR Autoantibody ▼]    View: [Cascade] [Drug]  │
├──────────────────────────────────────────────────────────────┤
│                                                              │
│   Trigger                                                    │
│   ┌──────────┐                                               │
│   │ EBV      │──→ Molecular Mimicry ──→ Anti-β2AR Ab         │
│   │ Infection│      (c: 0.30)            (c: 0.40)           │
│   └──────────┘                          │                     │
│                                         ↓                    │
│                              ┌──────────────────┐            │
│                              │ Endothelial      │            │
│                              │ Dysfunction      │            │
│                              │ (c: 0.35)        │            │
│                              │                  │            │
│                              │ Intercepted by:  │            │
│                              │ • Bosentan (ET-R)│            │
│                              │ • L-arginine     │            │
│                              │ • Sildenafil     │            │
│                              └──────┬───────────┘            │
│                                     │                         │
│                          ┌──────────┼──────────┐             │
│                          ↓          ↓          ↓             │
│                     Tissue    Cerebral    Capillary           │
│                     Hypoxia   Hypoperf.   Rarefaction         │
│                     (c: 0.30) (c: 0.35)   (c: 0.20)         │
│                          │          │          │             │
│                          └──────────┼──────────┘             │
│                                     ↓                        │
│                              ┌──────────────┐                │
│                              │ Anaerobic    │                │
│                              │ Metabolic    │                │
│                              │ Shift        │                │
│                              │ → PEM        │                │
│                              └──────────────┘                │
│                                                              │
│ Legend: c = certainty  │  ▬ = established edge               │
│         ... = inferred  │  - - = speculative edge            │
├──────────────────────────────────────────────────────────────┤
│ Node Detail: Endothelial Dysfunction                         │
│   Drugs intercepting: Bosentan, L-arginine, Sildenafil,      │
│     Pentoxifylline, Pycnogenol                               │
│   If rate-limiting: Endothelial support → improved perfusion │
│                      → reduced lactate → PEM improvement     │
│   If NOT rate-limiting: Endothelial support → no effect      │
│     (bottleneck is upstream of endothelium)                  │
│                                                              │
│   Evidence: [vanNess2024cbf] [serum2022endothelial]          │
│   Certainty: 0.35                                            │
└──────────────────────────────────────────────────────────────┘
```

=== Drug-Indexed View

Toggle to see all cascade nodes intercepted by a chosen medication:

```
┌──────────────────────────────────────────────────────┐
│ Drug: [Low-Dose Naltrexone (LDN) ▼]                  │
├──────────────────────────────────────────────────────┤
│ Intercepts at:                                       │
│                                                      │
│ CNS Energy Crisis (H1):                              │
│   • Microglial TLR4 → ↓ TNF-α, ↓ IL-1β   (c: 0.30)  │
│   • Neuroinflammation → ↓ microglial priming (c: 0.25)│
│                                                      │
│ GPCR Autoantibody (H3):                              │
│   • Monocyte reprogramming → ↓ MIP-1δ      (c: 0.15) │
│                                                      │
│ Autonomic Hypotheses (H6):                           │
│   • Sympathetic overactivation → ↓ NE release (c: 0.20)│
│                                                      │
│ [Show all interception points]                       │
│ [Show expected response per hypothesis]              │
└──────────────────────────────────────────────────────┘
```

=== Differential Diagnostic Mode

The tool can also run the constraint propagation algorithm from the pharmacodiagnostic app (Ch1, Part II) but using cascade node-level resolution: "patient responded to drug A but not drug B → bottleneck is between node N and node M."

== Technical Architecture

*Data.* The cascade DAGs are defined in a structured format (JSON or YAML) that mirrors Ch30's section structure. Each section (sec-01 through sec-12) maps to a hypothesis graph. The data format supports bidirectional traversal: hypothesis → nodes → medications, and medication → nodes → hypotheses.

*Rendering.* A DAG layout engine (dagre.js or similar, compiled to WebAssembly) renders the cascade. Nodes are positioned vertically by cascade depth and horizontally by branching. The layout preserves the temporal flow (top → bottom = trigger → terminal consequence).

*Interactivity.* Click-to-expand nodes (show interception points, evidence, certainty). Hover for quick summary. Drag to reposition for presentation. Export to SVG/PDF for inclusion in clinical documentation or research papers.

*Offline.* The entire cascade database is a static asset (< 5 MB). No backend required.

== Relationship to Parent Paper

The cascade data is extracted directly from Ch30 (§1–12). Each section's structured content (trigger → step1 → step2 → ... → symptom) is parsed into the DAG format. The tool is the interactive deployment of Ch30 — the same information, but navigable in any direction, filterable by drug or hypothesis, and usable in clinical settings where reading a linear text chapter is impractical.

== Development Effort

- Data extraction and structuring: 30–50 hours (Ch30 is already well-structured; the main work is mapping the prose to the DAG format)
- Rendering engine: 40–60 hours
- UI and interaction: 40–60 hours
- Total: ~110–170 hours for MVP
