= Workflow Orchestration

== Skills as Named Operations

Claude Code supports user-defined skills: named multi-step operations invoked as slash commands. Skills provide a stable interface for complex workflows—the author invokes `/review-biomedical ch07-immune-dysfunction.typ` without needing to specify the 11 agents that run, the order they run in, or the aggregation logic for their outputs.

The project defines the following skills:

- `/review-biomedical <scope>` — runs all 20 biomedical audit categories sequentially on a target file or glob
- `/review-adversarial <scope>` — runs all six adversarial persona agents and produces a cross-persona convergence report
- `/review-convergence <scope>` — the general-purpose convergence loop, repeating until two consecutive clean rounds are achieved or 12 rounds are exhausted
- `/review-typst <scope>` — section-level review: build → formatting → content → style → mathematics → build
- `/review-chapter <scope>` — full chapter review across all 20 audit categories
- `/review-illustrations <scope>` — diagram layout, scientific accuracy, visual rhetoric, and cross-figure consistency
- `/commit` — stages changed files, writes a semantically appropriate commit message focused on the motivation for the change, and creates the commit with proper attribution
- `/simplify` — reviews recently changed code or text for unnecessary complexity and proposes corrections

Skills are specified as Markdown files in `.claude/skills/`. Each skill file contains the full execution protocol, guard conditions (for example, what to do if the scope resolves to zero files), output format, and checkpointing behaviour for long-running operations. The skill file is the single source of truth for how the operation runs; the slash command is only the invocation surface.

This design reflects the same separation of interface from implementation that governs the rest of the system. The author does not need to remember the execution order of 11 agents to run a biomedical review; that order is specified once, in the skill file, and is independent of the author's working memory. Changing the order of agents within a review—for instance, running the safety auditor before the domain auditors rather than after—requires editing one file, not recalling and correcting a mental model.

== Workflow Composition

Complex operations compose simpler ones. The literature integration workflow chains: `literature-integrator` (search → evaluate → download → bibliography entry → integration guide) → `chapter-integrator` (edit chapter files to add citations and content) → `test-runner` (build verification to confirm no regressions). The formalization pipeline chains: `formalization-advisor` → `causal-model-builder` / `epc-model-builder` / `quantitative-model-builder` (parallel where applicable) → `model-integrator` → `model-auditor` → `uncertainty-analyst` → `evidence-mapper`.

These compositions are documented in workflow files loaded on demand from `.claude/workflows/`. The author triggers them with natural language—"find and integrate papers on mitochondrial dysfunction"—and the AI matches the phrase to the appropriate workflow and executes it. The natural language trigger is matched against the workflow catalogue at the start of each session; the matched workflow file is then read and its protocol executed step by step.

This approach separates the triggering vocabulary (which changes when the author's language for describing tasks changes) from the execution protocol (which changes when the workflow logic changes). Neither change driver affects the other.
