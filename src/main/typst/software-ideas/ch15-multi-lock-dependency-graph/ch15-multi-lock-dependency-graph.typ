#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Chapter 9: Multi-Lock Dependency Graph Viewer
// =============================================================================

= Multi-Lock Dependency Graph Viewer
<sw:multi-lock-dependency-graph>

#chapter-abstract[
Ch16 and Ch47 §4 discuss lock-removal sequence dependence: lock A must be removed before lock B because B is downstream of A. Turn this into an interactive directed graph. Each node is a mechanism lock. The patient's fingerprint highlights which locks are active. The tool computes the minimum set of lock removals to open all remaining locks — the optimal treatment sequence. Graph algorithms applied to pathophysiology.
]

== Motivation

The causal hierarchy (Ch16) and lock-removal sequence analysis (Ch47 §4) identify that some mechanism locks are prerequisites for others. For example: endothelial dysfunction cannot be fully resolved while GPCR autoantibodies are still present (the autoantibodies drive the endothelial damage). Mitochondrial support cannot be fully effective while NAD+ is depleted (NAD+ is a prerequisite cofactor for Complex I).

This creates a dependency graph: nodes are locks, edges are prerequisites ("you cannot fix B until you fix A"). The graph is not purely hierarchical — it contains cycles (feedback loops: A drives B, but B also reinforces A, creating a mutual lock). The optimal treatment sequence is the minimum set of lock removals that, accounting for these dependencies, opens a path to the healthy state.

The multi-lock dependency graph viewer makes this explicit. A physician or researcher selects which locks are active in their patient (from the mechanism fingerprint). The tool computes and visualizes the dependency structure, identifies the minimal lock-removal set, and recommends the treatment sequence.

== Core Functionality

=== Dependency Graph

Nodes: each of the ~20 mechanism locks identified in Ch16 and Ch47 §4:
- GPCR autoantibody production
- NAD+ depletion
- Microglial activation
- Endothelial dysfunction
- Epigenetic consolidation
- Mast cell activation
- Viral reactivation
- Small fiber neuropathy
- Glymphatic clearance failure
- Mitochondrial OXPHOS failure
- PDH/PDK block
- Oxidative stress
- HPA axis blunting
- Low T3 syndrome
- Cerebral hypoperfusion
- RAAS paradox / hypovolemia
- Gut dysbiosis
- Purinergic danger signaling
- Autophagy block
- T cell exhaustion

Edges: dependency relationships with direction and certainty.
- Example: "GPCR autoantibody → endothelial dysfunction" (causality: 0.35, from Ch16 cascade analysis)
- Example: "NAD+ depletion → mitochondrial OXPHOS failure" (causality: 0.40, from Ch6 + Ch17 analysis)
- Example: "Microglial activation ↔ glymphatic failure" (bidirectional, self-reinforcing, from Ch8)
- Example: "Epigenetic consolidation → treatment resistance" (no dependency direction — epigenetic consolidation does not _cause_ other locks, but prevents their resolution)

Each edge is weighted by:
- Causality certainty (0–1)
- Expected effect size (how much does resolving A help resolve B?)
- Evidence basis (which sections of the parent paper support this edge)

=== Patient State Overlay

The patient's mechanism fingerprint is overlaid on the graph. Active locks (fingerprint score > threshold) are highlighted in red. Inactive locks are gray. Partially active locks are yellow.

The graph now shows: of all the locks in the disease, which are currently active in this patient, and what depends on what.

=== Lock-Removal Sequence Computation

Given the active lock set S, compute the minimal lock-removal set R such that resolving all locks in R (given their dependencies) opens a path to the healthy state.

Algorithm:
1. Topologically sort the graph (respecting dependency directions). Nodes with no incoming edges from other active locks can be targeted independently.
2. Identify strongly connected components (SCCs — sets of locks that are mutually dependent via cycles). A lock in an SCC cannot be resolved alone; the entire SCC must be resolved simultaneously (or one lock in the SCC must be broken with sufficient force to break the cycle).
3. Compute the minimum feedback vertex set (MFVS — the smallest set of locks that, if resolved, breaks all cycles in the active graph). This is the core of the treatment strategy: target the cycle-breaking locks first.
4. From the remaining acyclic structure, compute the topological ordering — this is the treatment sequence.

Output: "Target lock set: {NAD+ depletion, GPCR autoantibodies}. Sequence: Begin NAD+ precursor supplementation immediately (no prerequisites). Once NAD+ is restored, mitochondrial OXPHOS can be addressed. Concurrently, initiate immunoadsorption for GPCR autoantibody removal — this is a cycle-breaking intervention that, if successful, will unlock endothelial dysfunction and cerebral hypoperfusion."

=== Visualization

The graph is rendered as a directed network with:
- Node size proportional to fingerprint dysregulation score
- Node color indicating lock category (trigger-capable = red, amplifier = orange, consequence = yellow, per Ch16)
- Edge thickness proportional to causality certainty
- Cycle highlighting: mutual feedback loops are shown as bold bidirectional edges
- Treatment sequence overlay: numbered annotations on nodes showing the recommended treatment order

=== What-If Simulation

"Continue" — the physician selects a lock and clicks "resolve." The tool propagates the resolution through the graph: downstream locks that depend on the resolved lock, and that have no other active dependencies, are automatically marked as "potentially resolvable." The remaining active locks are re-evaluated. The physician can iterate: resolve lock A → see that locks B, C, and D become addressable → resolve lock E (which was in an SCC with A and is now cycle-free).

This is not a simulation of physiology — it is a logical consequence of the dependency structure. If the dependency graph is correct, the lock-removal sequence is logically implied.

== Relationship to Existing Content

- Ch16 (Causal Hierarchy, parent paper): the lock taxonomy and classification
- Ch47 §4 (Lock-Removal Sequence Dependence, parent paper): the formal mathematical analysis of sequence dependence
- the Mechanism Fingerprint Platform spec (Mechanism Fingerprint Platform): the fingerprint that identifies active locks
- the Treatment Decision Tree (below) (Treatment Decision Tree): the treatment recommendations derived from the lock-removal sequence

== Technical Architecture

*Graph data.* Pre-computed as a directed graph with weighted edges. The graph is a static knowledge base, updated as mechanistic evidence evolves.

*Graph algorithms.* Standard implementations (topological sort via Kahn's algorithm, SCC detection via Tarjan's algorithm, MFVS via approximation heuristics — exact MFVS is NP-hard for general graphs). All computation is deterministic and runs in the browser.

*Visualization.* Force-directed or hierarchical layout (Cytoscape.js or D3-force). Interactive: click to inspect edges, drag to reposition, export to image.

== Limitations

#limitation[
*Graph incompleteness.* The dependency graph is a hypothesis, not an established fact. Most edges are inferred from mechanistic reasoning, not experimentally confirmed. Missing dependencies could change the computed sequence. The tool must communicate the graph's certainty alongside its recommendations.

*Quantitative uncertainty.* The graph captures dependencies qualitatively (A must precede B). It does not capture how much resolving A helps B — whether A is a 100% prerequisite or a 30% facilitator. Quantitative weighting would improve sequence optimization but requires data that does not exist.

*Patient heterogeneity.* The same lock may have different dependency relationships in different patients. For example, endothelial dysfunction may be driven by GPCR autoantibodies in patient A but by mast cell activation in patient B. The graph must account for multiple possible upstream causes and select the active one based on the patient's fingerprint.

*Treatment feasibility.* The computed lock-removal sequence may recommend interventions that are not available (e.g., targeted epigenetic reprogramming) or not tolerated. The tool must rank alternatives that approximate the optimal sequence.
]

== Consequence

#key-point[
The multi-lock dependency graph viewer applies graph theory to the causal hierarchy — transforming the narrative understanding of "these mechanisms interact" into a computable structure that generates treatment sequences. It answers the question that follows naturally from the causal hierarchy: "if there are 10 locks active in my patient, which ones do I target first, and in what order?" The answer is determined by the dependency structure — which the tool makes explicit, visual, and actionable.
]
