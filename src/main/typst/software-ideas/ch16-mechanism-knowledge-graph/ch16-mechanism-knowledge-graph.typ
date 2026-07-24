#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Chapter 13: Mechanism Knowledge Graph — Typst Source to Semantic Network
// =============================================================================

= Mechanism Knowledge Graph: Typst Source to Semantic Network
<sw:mechanism-kg>

#chapter-abstract[
Parse the entire Typst source tree of the parent paper, extract all defined terms, mechanism relationships, drug-mechanism links, and hypotheses, and generate an interactive knowledge graph. The paper deployed as a navigable semantic network rather than a linear document. A researcher clicks "kynurenine pathway" → sees all chapters, drugs, hypotheses, and citations.
]

== Motivation

The parent paper contains approximately 47 chapters, 20 mechanism families, ~120 glossary terms, hundreds of drug-mechanism links, and thousands of cross-references across a Typst source tree of thousands of files. Reading it linearly is the only way to consume it — and linear reading is the least efficient way to answer specific questions.

A knowledge graph makes the paper navigable in any direction:
- "Which drugs target the kynurenine pathway?" → follow drug → mechanism edges
- "Which hypotheses involve TRPM3 dysfunction?" → follow hypothesis → mechanism edges
- "What does Ch16 say about NAD+ depletion?" → follow chapter → topic edges with direct quote extraction
- "Which citations support the GPCR autoantibody cascade?" → follow hypothesis → citation edges
- "Show me everything related to mitochondrial function" → subgraph centered on Family 1 (Energy Metabolism)

This is not a summary — it is the paper's content, organized for query rather than reading.

== Core Functionality

=== Source Parsing

A Typst source parser extracts structured entities from the source tree:

- *Chapters and sections.* Headers, section numbers, chapter abstracts, and the chapter's file path
- *Labels.* All `#label` and `@label` references — these define the cross-reference graph
- *Environments.* Hypothesis, speculation, observation, achievement, limitation, proposal, open-question — each environment instance is an entity with a unique ID and structured content (title, body, certainty, citations)
- *Terms.* Glossary entries (Appendix A) and their definitions
- *Abbreviations.* Appendix B mappings
- *Citations.* Each `@citation` reference links a sentence or paragraph to a bibliography entry
- *Cross-references.* Each `@ch:...` or `@sec:...` reference is a directed edge from the referencing location to the referenced entity
- *Drug mentions.* Medication names (from Ch24 and Ch29) and their mechanism targets
- *Mechanism family mentions.* References to the 20 universal disease mechanism families (Ch17)

=== Entity Types and Edges

Node types: Chapter, Section, Hypothesis, Speculation, Observation, Achievement, Limitation, Proposal, OpenQuestion, Term, Drug, Citation, MechanismFamily, Figure, Table

Edge types: contains (Chapter → Section), defines (Chapter → Term), references (Section → Citation), targets (Drug → MechanismFamily), supports (Citation → Hypothesis), challenges (Limitation → Hypothesis), cross-references (Section → Section), partOf (Mechanism → MechanismFamily)

=== Query Interface

A search bar with auto-complete:
- Type "NAD" → suggestions: "NAD+ depletion (Mechanism Family 1)", "NAD+ precursors (Drug)", "NAD+ depletion spiral (Hypothesis H.XX)"
- Select an entity → the graph centers on it, showing all connected entities within N hops
- Filter by entity type: "show only hypotheses and their supporting citations"
- Filter by chapter: "show only what Ch30 says about this"
- Text search: "find all sentences containing 'daratumumab'"

=== Graph Navigation

The knowledge graph is displayed as an interactive network:
- Center node (the entity being examined)
- Connected nodes arranged radially, grouped by relationship type
- Click a connected node → it becomes the new center
- Expand/collapse groups (e.g., "show all 15 citations supporting this hypothesis")
- Highlight paths between two entities ("show me the connection chain from TRPM3 → cholinergic dysfunction")

=== Evidence Traceability

For any claim in the paper (hypothesis, observation, achievement), the knowledge graph shows the full evidence chain:
- The claim itself (e.g., Hypothesis H.XX)
- Supporting citations (with DOI links to the original papers)
- Contradicting limitations (if any)
- Related hypotheses (cross-references)
- The chapter context (where in the paper's narrative this claim appears)

This traceability is the knowledge graph's most powerful feature for researchers: they can audit any claim in the paper by following the citation chain without manually searching the bibliography.

== Relationship to Existing Content

The knowledge graph is the entire parent paper, deployed as software. It references no specific chapter — it references all of them. It is the meta-tool: a knowledge graph of the paper that can be used to navigate, query, audit, and extend the paper's content.

The companion documents (@sw:vdt-simulator through the Citizen Science N-of-1 Designer (below)) can use the knowledge graph as their evidence backend — when the virtual drug trial simulator recommends a drug, it links to the knowledge graph for the supporting citations.

== Technical Architecture

*Source parsing.* A Python or Rust parser that walks the Typst source tree, extracts structured entities via regex and AST analysis, and outputs a JSON-LD or RDF representation. The parser must handle Typst-specific syntax (labels, references, environments). Initial version parses a subset of the grammar sufficient for entity extraction; full AST parsing is ideal but not required for MVP.

*Graph database.* Neo4j or a simpler embedded graph (e.g., a JSON file with indexed adjacency lists for offline use). The graph is small (~10,000 nodes, ~50,000 edges) and can be served from a static file.

*Frontend.* Interactive graph visualization (Cytoscape.js or similar). Search with auto-complete. Text search with excerpt highlighting.

*Updates.* The knowledge graph is regenerated on each new version of the parent paper. The source parser runs and updates the graph automatically. The graph version is linked to the paper version.

== Limitations

#limitation[
*Parse fragility.* The Typst grammar is complex and evolving. The parser may break on new Typst syntax or unusual constructs. Manual annotation of some relationships (e.g., drug → mechanism links that are implicit in the text rather than explicitly tagged) may be necessary.

*Semantic ambiguity.* Not all relationships in the paper are explicit. "This drug targets mechanism X" may be stated in prose without a formal targets_mechanism_X label. The parser can extract explicit labels but will miss implicit relationships that a human reader would infer.

*Maintenance burden.* Each new version of the paper requires re-parsing and, potentially, manual correction of parse errors or newly introduced entity types.

*Performance.* The full knowledge graph rendered with all edges is visually overwhelming. The default view must be a focused subgraph; the full graph is available only for programmatic query.
]

== Consequence

#key-point[
The mechanism knowledge graph is the parent paper's content deployed as a queryable, navigable network. It serves researchers who need to trace evidence chains, drug-mechanism links, and hypothesis dependencies. It serves physicians who need rapid access to the paper's treatment recommendations without reading 47 chapters. And it serves as the evidence backend for every other software tool described in both companion documents — providing traceable, version-linked provenance for every recommendation or prediction those tools make.
]
