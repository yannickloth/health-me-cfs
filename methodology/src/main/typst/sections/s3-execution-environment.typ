= Execution Environment

== Claude Code

Claude Code is Anthropic's agentic command-line interface—a persistent interactive terminal session between human and AI. The author issues all instructions, corrections, and judgments through this interface. Claude Code is the execution environment for all writing, research, literature retrieval, agent orchestration, and review operations. It is not a chat interface but a software development tool adapted for knowledge work: it can read and write files, run build commands, search codebases, spawn specialised subagents, and maintain state across a working session.

This distinction matters for understanding how the collaboration functions. A chat interface is stateless and symmetric: the human sends a message, the AI replies, nothing persists. Claude Code is stateful and asymmetric: the human author operates as a project director who issues instructions into a persistent session that retains awareness of the codebase, the current task, and the history of decisions made within the session. The AI can read any file in the repository, modify it, re-read it to verify changes, build the document, and report the outcome—all within a single compound instruction. This operational model is what makes a 90-agent review pipeline practical rather than a theoretical exercise.

== Model Selection

Claude Code routes each operation to one of three models from the Claude family, selected based on reasoning demands:

- *Claude Haiku 4.5* handles mechanical pattern-matching tasks with deterministic answers—compilation checks, reference validation, terminology flagging. The cost is approximately 1× the baseline rate.
- *Claude Sonnet 4.6* handles moderate reasoning, cross-referencing, literature synthesis, and domain-specific auditing. It is the primary interactive model for the main session. The cost is approximately 10× the baseline rate.
- *Claude Opus 4.6* handles deep logical reasoning, proof verification, multi-layer model consistency checking, and scientific rigour auditing across full chapters. The cost is approximately 75× the baseline rate.

The governing principle is to use the cheapest model that can perform the task reliably. This is not merely a cost preference—it shapes agent design. Tasks are specified to be as narrowly mechanical as possible, so that the cheapest appropriate model can be assigned. Where a task genuinely requires Opus-tier reasoning, the assignment is made deliberately, and the agent specification reflects why.

The consequence of this principle across a sustained project is significant. A full biomedical review pass activates eight domain auditors, three safety auditors, and a falsifiability auditor simultaneously. If each were assigned Sonnet, the cost is manageable; if any were unnecessarily assigned Opus, the cost of running that pass weekly over months compounds substantially. Systematic model tier assignment is a form of resource discipline.

== Context Management and Session Cost

Claude Code sessions have an effective context window of approximately 100,000 tokens before auto-compaction. The collaboration manages this actively rather than treating it as a background infrastructure concern.

The session monitors token consumption as a percentage of the nominal 200,000-token limit. When consumption approaches approximately 35% of that nominal limit—equivalent to roughly 70% of the effective pre-compaction limit—the system evaluates whether it is cheaper to continue the current session (benefiting from cached prompt tokens) or start a fresh session with a compact continuation prompt.

Auto-compaction at approximately 50% of the nominal limit (100,000 tokens) is expensive: it processes the full accumulated context into a summary, consuming significant compute at that moment and discarding the caching benefit of tokens that have already been paid for. Proactive session restarts before that threshold typically cost less, particularly when the session has accumulated substantial unique conversation history that will not benefit from prompt caching.

Continuation prompts are kept minimal—under 5% of the current context size—and contain only information that cannot be reconstructed from the codebase state: decisions made, next steps, and critical context not otherwise visible in the repository. The codebase itself is the persistent state; the continuation prompt bridges only the gap between what the codebase records and what the next session needs to know to proceed without confusion.

This active cost management is a practical requirement for a sustained multi-month writing project. Without it, session costs compound across thousands of agent activations. A project of this scale involves hundreds of sessions; the difference between managed and unmanaged context costs is not marginal.
