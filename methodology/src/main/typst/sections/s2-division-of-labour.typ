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
