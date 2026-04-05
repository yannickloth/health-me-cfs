= Agent Design Principles

== The Independent Variation Principle

The agent taxonomy is structured according to the Independent Variation Principle (IVP): elements with different change drivers are separated into distinct units; elements with the same change driver are unified within a single unit.

Applied to agent design, this means: an agent whose audit scope can change independently of every other agent's scope is a separate agent. A terminology consistency auditor and a pharmacology auditor have entirely different change drivers—the first is updated when the document's vocabulary policy changes, the second when drug safety guidelines change. Merging them into a single "language and drug review" agent would couple two independent change streams, forcing unnecessary re-specification whenever either domain evolves.

The consequence of applying IVP consistently is a large number of narrow agents rather than a small number of broad ones. This is a deliberate trade-off: narrow agents are easier to specify precisely, fail in predictable ways, and can be updated independently without side effects. The cost is coordination overhead—orchestrating 90 agents is more complex than orchestrating 10. The collaboration accepts this cost because the alternative, broad agents, tends to produce underspecified, inconsistently applied auditing.

== Lazy Loading

All agent definitions are loaded on demand. The main Claude Code session holds only the agent index—names and one-line trigger descriptions—in context; full specifications are read from files when an agent is activated. This approach prevents the 90-plus agent specifications from consuming context budget in sessions that use only a handful of them.

The index is compact enough to keep in context throughout a session. Individual specifications—which can be hundreds of tokens each—are read only when their agent is invoked. A session focused on literature integration might activate four or five agents; a full biomedical review pass activates twelve simultaneously. In neither case does the full catalogue need to be resident in context.

This is a direct application of IVP to memory management: the agent index has one change driver (adding, removing, or renaming agents), while each agent specification has its own independent change driver (the scope of that agent). Keeping them separate allows the index to be stable and cheap while individual specifications evolve.

== Tool Restriction as Scope Enforcement

Each agent is given only the tools its task requires. Read-only agents—auditors, checkers—cannot write files, which means a misconfigured or misbehaving auditor cannot accidentally modify the document it is reviewing. Write-capable agents are restricted to the directories relevant to their task.

This is not primarily a security measure—it is a correctness measure. An agent that cannot write files cannot introduce changes; if it reports a finding, the change is applied deliberately, by an agent with write access, under the author's oversight. The separation between finding and fixing, enforced by tool restriction, is what allows adversarial auditors to run in aggressive mode without risk of cascading automatic modifications.

The tool restriction principle also clarifies agent design. When specifying a new agent, the first question is: what does this agent need to read? What does it need to write? The answer to the second question determines the agent's risk profile and how carefully it needs to be specified. A read-only auditor that produces a findings report can afford to be aggressive in what it flags; a write-capable agent that modifies chapter files must be specified with much greater precision.

== Model Tier Assignment

Claude Code supports routing individual agent invocations to different models within the Claude family. Agent model tier (Haiku, Sonnet, Opus) is assigned based on the reasoning demands of the task, not its perceived importance. The assignment follows a strict principle: _use the cheapest model that can perform the task reliably._ This matters because every session involves multiple concurrent agent activations, and model cost is approximately proportional to reasoning depth (Haiku $approx$ 1×, Sonnet $approx$ 10×, Opus $approx$ 75×).

*Claude Haiku 4.5* is used for pattern-matching tasks that have deterministic right answers: compilation errors, undefined cross-references, missing required bibliography fields, markdown-in-Typst detection, and medical terminology variant flagging. These tasks reduce to string matching and structural inspection; they do not require reasoning about meaning, and assigning a more expensive model would add cost without improving accuracy.

*Claude Sonnet 4.6* is used for tasks requiring moderate reasoning and cross-referencing: content consistency checking, citation integration, biological pathway accuracy within a single domain, drug interaction assessment, style naturalisation, and literature retrieval and summarisation. These tasks require reading for meaning and tracking dependencies across a chapter, but do not require the deep multi-step inferential chains that justify Opus. Sonnet 4.6 is also the primary model for the main interactive session—the model the human author converses with directly through Claude Code.

*Claude Opus 4.6* is used for tasks requiring deep logical reasoning: mathematical proof verification, circular reasoning detection in long argumentative chains, cross-validation of multi-layer formal models (DAG–EPC–ODE consistency), certainty propagation through model hierarchies, and scientific rigour auditing across full chapters. These tasks cannot be performed reliably at lower capability tiers because they require holding complex logical structures in working context and detecting subtle inferential errors that surface only under careful analysis.

== Parallelism and Independence

Where agents have non-overlapping file scopes, they are run concurrently. Domain auditors in the biomedical review phase—immunology, biochemistry, neurology, microbiome, and others—operate on the same files but do not modify them; they can run in parallel without risk of conflict. Claude Code's subagent system supports concurrent execution, and the orchestration layer exploits this for the expensive multi-domain review passes.

Sequential execution is preserved where ordering matters: build verification must precede content review (a file that does not compile cannot be reviewed meaningfully), and formatting fixes should precede style review (Markdown artifacts in Typst source create noise for the style naturalizer that would otherwise generate false positives). The execution order within workflows reflects these dependencies; where no dependency exists, parallel execution is the default.
