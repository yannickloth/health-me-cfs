// =============================================================================
// Human–AI Collaborative Medical Documentation: Methodology, Agent Architecture,
// and Quality Assurance in a Large-Scale ME/CFS Reference Work
// =============================================================================

#set document(
  title: "Human–AI Collaborative Medical Documentation: Methodology, Agent Architecture, and Quality Assurance in a Large-Scale ME/CFS Reference Work",
  author: "Nicolas Dewaele",
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 3cm, right: 3cm),
  numbering: "1",
)

#set text(font: "Linux Libertine O", size: 11pt, lang: "en")
#set par(justify: true, leading: 0.65em)
#set heading(numbering: "1.1")

#show heading.where(level: 1): it => {
  v(1.2em)
  text(weight: "bold", size: 13pt, it)
  v(0.4em)
}

#show heading.where(level: 2): it => {
  v(0.8em)
  text(weight: "bold", size: 11pt, it)
  v(0.3em)
}

#show heading.where(level: 3): it => {
  v(0.6em)
  text(weight: "semibold", size: 11pt, style: "italic", it)
  v(0.2em)
}

// ── Title block ──────────────────────────────────────────────────────────────

#align(center)[
  #v(1cm)
  #text(size: 16pt, weight: "bold")[
    Human–AI Collaborative Medical Documentation:
    Methodology, Agent Architecture, and Quality Assurance\
    in a Large-Scale ME/CFS Reference Work
  ]
  #v(0.6cm)
  #text(size: 12pt)[Nicolas Dewaele]
  #v(0.2cm)
  #text(size: 10pt, style: "italic")[
    Independent researcher
  ]
  #v(0.3cm)
  #text(size: 9pt)[
    #datetime.today().display("[month repr:long] [day], [year]")
  ]
  #v(0.8cm)
]

// ── Abstract ─────────────────────────────────────────────────────────────────

#block(
  stroke: 0.5pt + gray,
  radius: 4pt,
  inset: 14pt,
  width: 100%,
)[
  *Abstract.* We describe the methodology underlying a large-scale reference work on Myalgic Encephalomyelitis / Chronic Fatigue Syndrome (ME/CFS), produced through a systematic human–AI collaboration. The collaboration is conducted through Claude Code (Anthropic's agentic CLI), which serves as the execution environment for all writing, research, and review operations. The collaboration follows a strict division of labour: the AI system is the sole author of all text, while the human author provides domain framing, original ideas, guidance on scientific priorities, and critical oversight. Quality assurance is enforced through a multi-tier pipeline of approximately 90 specialised AI agents, organised into review categories covering structural integrity, terminology, scientific rigour, domain-specific biological accuracy, safety, and publication readiness. All review workflows operate under a convergence criterion: a section is only accepted after two consecutive review rounds produce zero findings. When convergence cannot be achieved within 12 rounds, remaining issues are escalated for human judgment. The human author's contribution is not primarily textual but interpretive: identifying where mechanistic hypotheses are incorrectly framed as clinical recommendations, deciding when a mathematical model is epistemically warranted versus premature, and supplying the cross-disciplinary integration that no single agent can perform. This paper documents the full architecture of the collaboration, the agent taxonomy, the review cycle semantics, and the epistemological roles of human and AI in a document that must meet scientific standards without the institutional scaffolding of a conventional research team.
]

#v(0.8cm)

*Keywords:* human–AI collaboration, medical documentation, ME/CFS, quality assurance, agent systems, epistemic classification, automated review, scientific writing

#pagebreak()

= Introduction

The production of a comprehensive medical reference work typically involves teams of clinicians, researchers, and scientific editors working over years with access to institutional review processes, subject-matter expertise, and peer critique. This work arises from a different starting point: a single independent author, without formal medical training, attempting to synthesize a rapidly expanding and often contradictory research literature on Myalgic Encephalomyelitis / Chronic Fatigue Syndrome.

ME/CFS presents a particular challenge for this kind of synthesis. The disease is severely underfunded relative to its prevalence and severity, producing a literature characterised by small sample sizes, limited independent replication, heterogeneous patient populations, and diagnostic criteria that have shifted across decades. At the same time, the stakes of accuracy are high: ME/CFS patients frequently encounter medical misinformation, and a reference document that misrepresents the evidence—whether by overstating certainty, confusing mechanistic hypotheses with clinical recommendations, or perpetuating outdated psychogenic models—risks direct patient harm.

This paper describes how these constraints shaped the methodology of the collaboration. The core approach is systematic human–AI collaboration: all text is written by an AI system operating under structured constraints, while the human author performs functions that AI cannot reliably perform—directing scope and priorities, providing original analytical ideas, making judgment calls about epistemic status, and applying deep familiarity with the disease to detect clinical inaccuracies. Quality assurance is achieved through a specialised agent architecture running iterative adversarial review cycles under formal convergence criteria.

The document produced by this methodology spans over 400 pages across five parts: clinical presentation, pathophysiology, treatment, research synthesis, and formal mathematical modeling of pathophysiological processes. The methodology described here has evolved alongside the document; this paper describes the system as it currently stands.

= Division of Labour

== The Human Author's Role

The human author does not write text. This is a deliberate design choice, not a limitation. The author's primary contributions fall into four categories.

*Framing and direction.* The author determines which topics are covered, at what depth, and in what order. These decisions are not arbitrary: they reflect the author's reading of what the field needs, what is most consequential for readers to understand, and what the research literature can actually support. For example, the decision to include a Part V on mathematical and computational modeling was not obvious; it reflected a specific judgment that the field's understanding of ME/CFS pathophysiology had matured enough in certain areas to warrant formal causal representation, while remaining too uncertain in others to justify quantitative models without explicit uncertainty propagation.

*Original ideas.* The author introduces conceptual framings, hypotheses, and integrative observations that do not originate in the AI's synthesis of existing literature. These include novel ways of connecting findings across chapters and formulations of research gaps. When these ideas are original to the author rather than derivable from the literature, they are flagged as such in the document.

*Critical oversight.* This is the most continuous function. The author reads all AI-generated content and applies active criticism: identifying where the AI has overstated certainty, conflated correlation with causation, lost ME/CFS-specific nuance when drawing on general medical knowledge, or—critically—presented a mechanistic hypothesis as though it were an established basis for clinical action. This last failure mode is particularly consequential and has generated a dedicated audit category (see @sec:safety).

*Interpretive judgment.* Some decisions cannot be automated. The question of whether a given process warrants a full DAG–EPC–ODE formal model, or only a qualitative causal description, requires assessing the density and quality of available evidence, the clinical relevance of quantitative precision, and the cost to the reader of a formal presentation that the evidence does not actually support. The author makes these decisions. The agent system implements them.

== The AI System's Role

The entire collaboration runs through Claude Code (Anthropic), an agentic command-line interface that provides a persistent interactive session between the human author and Claude models. Claude Code serves as the execution environment for all writing, research, literature retrieval, agent orchestration, and review operations. The author interacts with Claude Code directly; every instruction, correction, and judgment call is issued through this interface.

The primary writing model is Claude Sonnet 4.6. It writes all text in the document—chapter prose, environment contents (hypotheses, speculations, recommendations, warnings), figure captions, bibliography annotations, and appendix content—and orchestrates the specialised subagent pipeline. Sonnet 4.6 was chosen as the primary model because it provides the reasoning depth required for cross-domain synthesis and literature integration at a cost that makes sustained multi-hour sessions viable.

The AI system also operates as an agent orchestrator, coordinating a pipeline of approximately 90 specialised subagents. These agents do not write the document; they review, audit, and flag issues for correction. The distinction is important: writing is a generative act that requires authorial judgment; auditing is a critical act that can be specified precisely enough to automate.

The AI system is explicitly instructed never to invent factual content. When the author asks for a section to be written, the AI draws on retrieved literature, cited research, and the author's explicit guidance. Where a claim cannot be grounded in cited sources, it is flagged for the author's attention rather than asserted.

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

A separate tier of agents supports the personal medical case management function of the project—the document also serves as a living record of the author's own ME/CFS case:

- *Case documenter* (`case-documenter`): Maintains structured symptom logs and case documentation.
- *Medical advisor* (`medical-advisor`): Generates evidence-based recommendations, explicitly marked as preliminary and requiring physician review before implementation.
- *Treatment analyst* (`treatment-analyst`): Analyses outcomes of treatment trials using case data.
- *Crisis manager* (`crisis-manager`): Provides emergency protocols during severe symptom deterioration.
- *Pacing coach* (`pacing-coach`): Provides real-time guidance for staying within energy envelope and preventing PEM.
- *Research monitor* (`research-monitor`): Monitors new ME/CFS publications and flags papers relevant to the specific case profile.

== Model Tier Assignment

Claude Code supports routing individual agent invocations to different models within the Claude family. Agent model tier (Haiku, Sonnet, Opus) is assigned based on the reasoning demands of the task, not its perceived importance. The assignment follows a strict principle: _use the cheapest model that can perform the task reliably._ This matters because every session involves multiple concurrent agent activations, and model cost is approximately proportional to reasoning depth (Haiku $approx$ 1x, Sonnet $approx$ 10x, Opus $approx$ 75x).

*Claude Haiku 4.5* is used for pattern-matching tasks that have deterministic right answers: compilation errors, undefined cross-references, missing required bibliography fields, markdown-in-Typst detection, and medical terminology variant flagging. These tasks reduce to string matching and structural inspection; they do not require reasoning about meaning, and assigning a more expensive model would add cost without improving accuracy.

*Claude Sonnet 4.6* is used for tasks requiring moderate reasoning and cross-referencing: content consistency checking, citation integration, biological pathway accuracy within a single domain, drug interaction assessment, style naturalisation, and literature retrieval and summarisation. These tasks require reading for meaning and tracking dependencies across a chapter, but do not require the deep multi-step inferential chains that justify Opus. Sonnet 4.6 is also the primary model for the main interactive session—the model the human author converses with directly through Claude Code.

*Claude Opus 4.6* is used for tasks requiring deep logical reasoning: mathematical proof verification, circular reasoning detection in long argumentative chains, cross-validation of multi-layer formal models (DAG–EPC–ODE consistency), certainty propagation through model hierarchies, and scientific rigour auditing across full chapters. These tasks cannot be performed reliably at lower capability tiers because they require holding complex logical structures in working context and detecting subtle inferential errors that surface only under careful analysis.

= Review Cycle Semantics

== The Convergence Criterion

The quality guarantee of the document rests on a specific convergence criterion: *a section is only accepted after two consecutive review rounds produce zero findings.* This is not a pass/fail threshold—it is a stability criterion. A single clean round is insufficient because corrections can introduce new issues; two consecutive clean rounds provide confidence that the section is stable.

Formally, each review workflow maintains a consecutive-clean counter:

- *Increment:* The counter increments by one each round that produces zero findings.
- *Reset:* Any correction, however small, resets the counter to zero. The two-clean requirement then restarts.
- *Convergence:* The section is accepted when the consecutive-clean counter reaches two.
- *Escalation:* If the counter has not reached two after 12 rounds, remaining findings are escalated to the human author for judgment.

The 12-round maximum exists because some findings are genuinely unresolvable by the review agent without human interpretive input. This is not a failure condition; it is the system correctly routing a problem that requires human judgment.

== Review Workflows

Several distinct review workflows invoke the convergence criterion at different scopes:

*Section review* (`/review-typst`) applies a sequence of agents to a single section: build verification → formatting fixes → content consistency → style naturalisation → mathematical verification (when the section contains formal content) → build re-verification. The final build re-verification guards against regressions introduced by earlier corrections.

*Chapter review* (`/review-chapter`) runs all 20 audit categories sequentially on a single chapter, producing a consolidated findings report. The author uses this report to decide which findings to address and in which order.

*Biomedical review* (`/review-biomedical`) runs all domain-specific and safety auditors against a file or glob scope. Eight domain auditors, three safety auditors, and the falsifiability auditor operate as parallel independent passes; their findings are aggregated into a single report.

*Adversarial review* (`/review-adversarial`) runs all six adversarial persona agents sequentially. The aggregate report identifies cross-persona convergence points—claims attacked by three or more distinct personas—as the document's highest-priority vulnerabilities.

*Convergence loop* (`/review-convergence`) is the general-purpose implementation of the two-consecutive-clean criterion. It can be applied to any file or glob scope. This skill is the mechanisation of the convergence criterion described above.

== Checkpointing

Review workflows that span multiple rounds write continuation checkpoints every three rounds to a designated checkpoint file. Checkpoints record the current round number, cumulative findings by category, remaining known issues, and exact next steps for resumption. This allows long-running review sessions to survive context window limitations without losing state.

= Epistemic Infrastructure

The document's quality assurance is not only procedural—it is also structural. The document itself encodes its epistemic commitments in a system of named environments that reviewers can target precisely.

The environments, their meaning, and their certainty thresholds are:

- *Achievement:* A finding supported by strong evidence—replicated results from peer-reviewed studies with adequate sample sizes. The most reliable claim type.
- *Hypothesis:* An unproven conjecture with moderate plausibility (certainty $gt.eq 0.45$). Must include at least one falsifiable prediction, identified limitations, and citations.
- *Speculation:* A conjecture with lower plausibility (certainty $< 0.45$), often based on limited evidence, mechanistic reasoning, or extrapolation from related conditions.
- *Prediction:* A testable claim about future observations, providing a concrete path toward validation or falsification of a hypothesis.
- *Warning:* A critical caveat about risks, limitations, or potential misinterpretations.
- *Limitation:* An explicit epistemic boundary—what the available data cannot conclude.
- *Recommendation:* An evidence-based clinical or management suggestion, strictly distinguished from hypotheses. A recommendation says "consider doing this," grounded in clinical evidence. A hypothesis says "this might be true," grounded in mechanistic reasoning.

This classification system is enforced at two levels: by the scientific rigor auditor (which checks that environments are correctly assigned) and by the safety auditor (which specifically hunts for recommendations that should be hypotheses).

A cross-document hypothesis registry tracks every `hypothesis`, `speculation`, `prediction`, and `open_question` environment in the manuscript. When any such environment is added, modified, or removed in any chapter, the registry is updated. This prevents contradictions between chapters and provides a single reference point for the document's epistemic commitments.

= The Human Author's Indispensable Functions

The automated architecture described above is powerful but bounded. The human author performs functions that neither any individual agent nor the full agent ensemble can reliably perform.

== Epistemic Gradation

AI language models tend toward uniform confidence. When summarising a body of literature, the model is liable to present findings with similar rhetorical force regardless of whether they come from a well-powered replicated trial or a single-centre pilot study. The author's most pervasive function is to impose appropriate epistemic gradation: to identify which claims warrant high-certainty classification, which are preliminary, and which are speculative. This cannot be fully automated because it requires reasoning about study quality, replication status, and the reliability of the specific journal and research group—judgments that benefit from accumulated familiarity with the field.

== Cross-Domain Integration

The document spans immunology, metabolomics, neurology, cardiovascular physiology, microbiome science, and mathematical modeling. No single domain agent covers more than one of these areas. Cross-domain connections—recognising that a cardiovascular abnormality described in one chapter shares a mechanistic basis with an immune finding in another, or that a treatment protocol rests on a hypothesis that subsequent evidence in a later chapter has weakened—require maintaining a coherent mental model of the entire document. This is a function of sustained engagement that emerges from the author's continuous involvement over the course of writing; it is not reproducible by any bounded agent activation.

== Mathematical Modeling Decisions

The decision to formally model a biological process—rather than describe it qualitatively—is not a technical decision. It is an epistemological judgment: does the available evidence support a causal structure precise enough to be represented in a DAG? Does the mechanistic understanding of the process's dynamics warrant an ODE system, or would such a model impose a false precision that the evidence cannot sustain? The author makes these decisions. When the author directs the formalization pipeline to model a given process, the agents implement that direction; they do not initiate it.

This division is particularly consequential because premature mathematical formalization can be more misleading than no formalization at all. A model with assumed parameters presented without adequate uncertainty disclosure reads as quantitative certainty; the reader cannot easily see how much of the structure is borrowed from adjacent systems rather than directly estimated.

== Deep Familiarity as Validation

The author's deep familiarity with ME/CFS provides a form of validation unavailable to any review agent. When AI-generated text describes post-exertional malaise as "fatigue after exertion," the author can identify this as a clinical minimisation—PEM is a delayed, multi-system collapse involving neurological, immunological, and cardiovascular components, lasting days to months, fundamentally different from ordinary fatigue. When a treatment description implies that patients simply need better activity management, the author can identify the implicit normative frame that such framing carries and correct it. This familiarity provides a ground-truth check against the kind of confident clinical inaccuracy that a well-trained language model can produce when operating on general medical knowledge without ME/CFS-specific constraint.

== Active Criticism

The author's role is not passive approval of AI output. It is systematic adversarial engagement. Common failure modes that require correction include: overstatement of the certainty of preliminary findings; conflation of correlation and causation in observational studies; missing caveats about study design (healthy control selection, diagnostic criteria heterogeneity, selection bias); presentation of mechanistic hypotheses as established pathophysiology; and—most importantly—the treatment of research-stage ideas as if they were clinical practice.

This active critical function is what distinguishes the collaboration from a process in which the author merely prompts an AI and publishes the output. The author is not a passive recipient of AI-generated text; the author is the quality control mechanism.

= Limitations

== Automated Reviewer Limitations

The agent auditors operate on language model reasoning over text. They can detect structural issues—missing citations, environment misuse, terminology inconsistency, logical fallacies in stated form—with reasonable reliability. Their ability to assess the _correctness_ of biological claims is bounded by their training data. Novel findings from papers published after the knowledge cutoff, recently retracted papers, subtle methodological flaws in cited studies, and domain-specific expertise gaps all limit what automated auditing can catch. The review system complements but does not replace expert human review.

== Single-Author Limitation

Despite the multi-layered review process, this document is produced by a single non-physician author. There is no independent human peer review prior to distribution. The author has mitigated this through extensive self-review, adversarial automated auditing, and transparent epistemic classification, but single-author bias remains an inherent risk. The medical and scientific communities are invited to engage with this work critically.

== Evidence Base Constraints

ME/CFS research suffers from decades of underfunding. Even "high certainty" findings in ME/CFS may not meet the evidentiary standards typical of better-funded medical fields. The certainty classifications used in this document reflect these constraints honestly; readers should apply appropriate scepticism to all classifications, not just those explicitly marked as speculative.

== AI Author Limitations

Claude Sonnet 4.6, the AI system writing the document, has known failure modes beyond the absence of domain familiarity. It produces text with uniform confidence unless explicitly constrained. It can lose disease-specific context when drawing on general medical knowledge. It conflates correlation and causation. It presents mechanistic reasoning as established fact. The human author's critical function exists specifically to manage these failure modes; the documentation of this methodology is intended to make the management process transparent to the reader.

= Conclusion

The methodology described here represents an attempt to answer a specific question: can an independent author, without formal medical training and without a research team, produce a scientifically rigorous large-scale reference work, using AI as a writing and audit system while supplying the irreplaceable human functions of judgment, direction, and critical oversight?

The agent architecture described—approximately 90 specialised auditors, operating under convergence criteria that require two consecutive zero-finding review rounds before any section is accepted—is an attempt to substitute systematic process for institutional scaffolding. The convergence criterion is not a bureaucratic formality; it encodes the observation that corrections can introduce regressions, and that stability under repeated adversarial review is the closest available proxy for the independent human peer review that this work cannot access.

The human author's role is not to write but to judge: which topics matter, which claims are appropriately calibrated, which models are epistemologically justified, where the AI has produced text that is locally plausible but clinically wrong. These are not tasks that can be specified as agent prompts. They are the irreducible human contribution to a collaboration that produces text at machine speed but aspires to standards of accuracy that require human wisdom to enforce.

The result is a methodology for high-stakes human–AI collaborative writing that takes seriously both the capabilities and the limitations of both partners.

#v(1cm)
#line(length: 100%, stroke: 0.3pt)
#v(0.3cm)
#text(size: 9pt, style: "italic")[
  *Author note.* All text in the ME/CFS reference work described here was generated by Claude Sonnet 4.6 (Anthropic). This article describing the methodology was also generated by the same AI system, under the author's direction. The author's contributions—framing, direction, critical review, and all original analytical ideas—are described within the article itself.
]
