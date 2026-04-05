= Agent Architecture

== Overview

The agent system comprises approximately 90 specialised agents organised into a taxonomy of functional categories. Each agent is defined by a narrow, well-specified scope. This design reflects a core principle: a reviewer whose job is to check one thing does it reliably; a reviewer whose job is to check everything does nothing well.

Agents are routed via a lazy-loading mechanism: the main Claude session loads agent definitions on demand rather than holding all 90 specifications in context simultaneously. This approach manages the computational cost of maintaining the full agent vocabulary across the session.

Agent definitions specify the model tier used (Claude Haiku 4.5 for mechanical pattern-matching, Claude Sonnet 4.6 for reasoning and cross-referencing, Claude Opus 4.6 for deep logical and mathematical analysis), the tools available to the agent, and precise trigger criteria. Tool restriction is used to enforce scope: a read-only agent cannot accidentally modify files; an agent restricted to a single chapter cannot accidentally introduce cross-document inconsistencies.

== Agent Categories

=== Structural and Mechanical Agents

These agents operate on the document's typesetting and reference structure. They are assigned the Haiku model tier because their tasks reduce to pattern matching and do not require reasoning.

- *Build verification* (`test-runner`): Confirms clean Typst compilation with no errors or warnings.
- *Syntax fixers* (`typst-syntax-fixer`, `syntax-fixer`): Repair compilation errors introduced by editing.
- *Cross-reference checkers* (`typst-xref-checker`, `xref-checker`, `link-checker`): Verify that every `@label` and `\ref` resolves to a defined anchor.
- *Citation checkers* (`typst-citation-checker`, `bibliography-auditor`): Detect undefined citations, duplicate bibliography entries, missing required fields, and orphan references.
- *Document health monitor* (`document-health-monitor`): Tracks chapter lengths, citation density, presence of placeholder text, and structural balance across parts.
- *Production readiness* (`typst-production-readiness-checker`, `production-readiness-checker`): Scans for TODO markers, draft artifacts, and LaTeX remnants in Typst source.
- *File management* (`typst-file-splitter`, `file-splitter`): Analyses and splits oversized chapter files to maintain context efficiency across sessions.

=== Terminology and Style Agents

- *Terminology harmonizer* (`terminology-harmonizer`): Audits all source files for variant forms of key medical terms. ME/CFS has an unusually fraught terminology landscape—terms like "CFS," "CFIDS," "systemic exertion intolerance disease," and acronym variants like "OI" versus "orthostatic intolerance" require consistent handling.
- *Style naturalizer* (`style-naturalizer`): Detects and corrects AI-generated writing patterns—excessive lists, mechanical sentence structures, uniform confidence tone, and unnatural transitions. AI text is recognisable precisely because it lacks the idiosyncratic cadences of genuine human prose.
- *Style auditor* (`style-auditor`): Enforces vocabulary precision and writing style consistency across chapters.
- *Formatting fixer* (`typst-formatting-fixer`, `formatting-fixer`): Converts Markdown syntax accidentally introduced during editing into correct Typst markup.
- *Figure caption auditor* (`typst-figure-caption-auditor`, `figure-caption-auditor`): Ensures figure and table captions are standalone-readable and cross-referenced in text.
- *Notation consistency* (`typst-notation-consistency-checker`, `notation-consistency-checker`): Audits mathematical symbol usage for consistency across chapters.

=== Scientific Rigour Agents

- *Scientific rigor auditor* (`scientific-rigor-auditor`): Verifies that every substantive claim carries a citation, that `hypothesis` and `speculation` environments are correctly distinguished by certainty threshold, and that each hypothesis includes at least one falsifiable prediction. Powered by Opus for the depth of reasoning required.
- *Falsifiability auditor* (`falsifiability-auditor`): Focused specifically on the falsifiability requirement. A hypothesis that can only explain and never be disproven is reclassified as a speculation or flagged for removal.
- *Logic auditor* (`logic-auditor`): Detects circular reasoning, completeness gaps, and indirect arguments. Opus-tier.
- *Scope qualifier checker* (`scope-qualifier-checker`): Ensures that claims state their applicability scope—ME/CFS versus CFS, pediatric versus adult populations, severity tier. This is particularly important given the heterogeneity of the patient population.
- *Redundancy auditor* (`redundancy-auditor`): Flags arguments or conclusions that appear at multiple locations in the document without cross-referencing, which would otherwise give readers an inflated sense of evidential weight.
- *Definition auditor* (`definition-auditor`): Checks formal definition rigor, detects circularity in definitions, and verifies that all technical terms are defined before first use.

=== Domain-Specific Biology Agents

Eight specialised auditors cover the core biological domains of the document:

- *Pathway auditor* (`pathway-auditor`): Biological pathway accuracy—correct reaction intermediaries, current nomenclature, gene-versus-protein distinctions, supported directionality claims.
- *Immunology auditor* (`immunology-auditor`): Cell subset precision, cytokine context, immune assay limitations, conflation of acute versus chronic immune states.
- *Biochemistry auditor* (`biochemistry-auditor`): Pathway stoichiometry, redox chemistry specificity, mitochondrial precision, substrate/enzyme/cofactor role clarity.
- *Neurology auditor* (`neuro-auditor`): Brain region specificity, HPA axis nuance, autonomic testing methodology, blood–brain barrier considerations.
- *Microbiome auditor* (`microbiome-auditor`): Methodology distinction (16S rRNA amplicon sequencing versus shotgun metagenomics), correlation-versus-causation framing, strain-level precision in probiotic claims.
- *Biomarker auditor* (`biomarker-auditor`): Sensitivity and specificity reporting, reference ranges, pre-analytical variables, biomarker versus surrogate endpoint distinction.
- *Epidemiology auditor* (`epidemiology-auditor`): Case definition consistency, selection bias awareness, control adequacy, sex and gender stratification.
- *Comorbidity auditor* (`comorbidity-auditor`): Overlap condition delineation for hEDS, MCAS, POTS, fibromyalgia, and Long COVID—shared versus distinct mechanisms, exclusion criteria adherence.

Only domain auditors whose scope intersects the content under review are activated, determined by keyword matching against target files.

=== Safety and Patient Impact Agents <sec:safety>

Three safety agents run on every review pass, regardless of the content type being reviewed:

- *Safety auditor* (`safety-auditor`): Detects the most consequential error category in the document—mechanistic hypotheses incorrectly framed as clinical recommendations. A hypothesis explains why something might work; a recommendation says to do something. The distinction is not merely semantic: acting on a hypothesis as though it were an established recommendation can cause direct patient harm. This agent was created after an internal audit identified 31 such violations across treatment chapters.
- *Pharmacology auditor* (`pharmacology-auditor`): Verifies drug mechanism accuracy, identifies missing drug interactions, checks off-label use transparency, flags incomplete withdrawal risk documentation.
- *Patient safety auditor* (`patient-safety-auditor`): Specifically focused on the ME/CFS-specific safety risk of post-exertional malaise. Activity recommendations that would be harmless for healthy individuals can trigger crashes in ME/CFS patients lasting days to months. This agent also checks that severe and very severe presentations are adequately represented (most ME/CFS research focuses on ambulatory patients), and that psychological framing does not perpetuate outdated psychogenic models of the disease.

=== Adversarial Persona Agents

Beyond the domain auditors, six adversarial persona agents attack the document from deliberately hostile angles:

- *Cynic auditor* (`cynic-auditor`): Assumes motivated reasoning—looks for cherry-picking, advocacy disguised as science, and claims that are technically true but misleading.
- *Sophist auditor* (`sophist-auditor`): Attacks logical structure—non sequiturs, equivocation, false dichotomies, argument from authority, rhetorical tricks substituting for reasoning.
- *Strawman auditor* (`strawman-auditor`): Checks fairness—whether opposing viewpoints are represented accurately, whether the strongest counterarguments are engaged, whether dismissals are earned.
- *Reductionist auditor* (`reductionist-auditor`): Enforces parsimony—attacks multi-system integration claims that are asserted without rigorous justification, applies Occam's razor.
- *Clinician auditor* (`clinician-auditor`): Adopts the perspective of a busy practitioner—identifies where theoretical discussions fail to connect to actionable clinical practice.
- *Devil's advocate auditor* (`devil-advocate-auditor`): Constructs the strongest possible counter-argument to every major claim, identifying which claims can withstand serious opposition and which cannot.

These agents run in adversarial mode: they report findings, they do not fix them. The author decides which adversarial findings to address.

=== Formal Modeling Agents

Part V of the document presents formal models of ME/CFS pathophysiology. A dedicated sub-pipeline handles model construction and validation:

- *Formalization advisor* (`formalization-advisor`): Assesses whether a given biological process warrants formal modeling, and if so, which representation is appropriate (DAG, EPC, ODE, or a combination). This advisory role requires judgment about evidence density and clinical relevance that the author ultimately provides; the agent structures the assessment.
- *Causal model builder* (`causal-model-builder`): Constructs causal directed acyclic graphs with edge-level certainty annotations.
- *EPC model builder* (`epc-model-builder`): Builds event-driven process chains capturing temporal sequences, branching points, and feedback loops.
- *Quantitative model builder* (`quantitative-model-builder`): Constructs ordinary differential equation systems with parameters estimated from published data, explicitly flagging assumed parameters.
- *Model integrator* (`model-integrator`): Converts completed models into chapter content with cross-references to evidence appendices.
- *Model auditor* (`model-auditor`): Cross-validates consistency across the three representation layers—certainty values in the DAG must align with confidence levels in the EPC, which must align with parameter ranges in the ODE. Opus-tier.
- *Uncertainty analyst* (`uncertainty-analyst`): Propagates certainty through the model hierarchy and flags predictions that exceed the confidence warranted by available evidence.
- *Evidence mapper* (`evidence-mapper`): Maintains a reverse index from citations to the specific model components they support, ensuring that every model edge, event, and parameter is traceable to its evidential basis.

=== Literature Management Agents

- *Literature integrator* (`literature-integrator`): The full paper-to-document pipeline—searches PubMed and medical databases, evaluates source quality, downloads available PDFs, adds bibliography entries, creates structured summaries for the annotated bibliography, and produces integration guides for the chapter-integrator agent.
- *Chapter integrator* (`chapter-integrator`): Edits chapter files to add citations and insert content from integration guides.
- *Meta-analysis coordinator* (`meta-analysis-coordinator`): Synthesises findings across multiple papers on the same mechanism into structured evidence tables, resolving conflicting findings and identifying consensus versus contested claims.
- *Scientific insight generator* (`scientific-insight-generator`): Performs creative scientific analysis after paper integration to identify novel biological connections and treatment implications not explicitly stated in any single paper.
- *Protocol linker* (`protocol-linker`): Establishes bidirectional cross-references between pathophysiology chapters and treatment chapters.

=== Medical Case Management Agents

A dedicated tier of agents supports the medical case management function parallel to the reference work:

- *Case documenter* (`case-documenter`): Maintains structured symptom logs and longitudinal case documentation.
- *Medical advisor* (`medical-advisor`): Generates evidence-based recommendations, explicitly marked as preliminary and requiring physician review before implementation.
- *Treatment analyst* (`treatment-analyst`): Analyses outcomes of treatment trials using case data, calculating effect sizes and identifying responder patterns.
- *Crisis manager* (`crisis-manager`): Provides emergency protocols and documentation during severe symptom deterioration.
- *Pacing coach* (`pacing-coach`): Provides real-time guidance for staying within energy envelope and preventing post-exertional malaise.
- *Research monitor* (`research-monitor`): Monitors new ME/CFS publications and alerts when papers relevant to a specific clinical profile are published.
