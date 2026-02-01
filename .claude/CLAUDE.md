# CLAUDE.md

LaTeX-based ME/CFS documentation with automatic subagent delegation for quality assurance.

---

## Build

```bash
nix build              # → result/ms.pdf
nix run .#clean        # Clean artifacts
```

## Context and Cost Management

**Claude MUST proactively monitor token usage and optimize session costs.**

### Monitoring Requirements

**CRITICAL: Check EVERY `<system_warning>Token usage: X/200000` tag and calculate percentage.**

**MANDATORY: Start EVERY response with context status:**

```text
📊 Context: X.X% (XXX,XXX / 200,000 tokens)
```

**Always include this at the start of your response, before any other content.**

- Extract tokens from: `<system_warning>Token usage: 152000/200000; 48000 remaining</system_warning>`
- Calculate: `percentage = (tokens_used / 200000) * 100`
- Display at start of every response
- **When percentage exceeds 35%**, IMMEDIATELY evaluate cost trade-offs (note: compaction occurs at ~100k tokens, so 35% of 200k = 70% of effective limit):
  - **Compaction cost**: Processing current tokens + generating summary at 95% threshold
    (typically: `~current_tokens * 0.000015` for input + summary generation)
  - **Fresh start cost**: New session with system prompt + CLAUDE.md (cached) + continuation summary
    (typically: `~10000 tokens * 0.000003` cached rate + `~5000 continuation * 0.000015`)
- **Checking frequency**: Every response that includes tool use, and periodically in conversation

### Decision Logic

**If fresh start is cheaper** (typically when >35% is unique conversation history):

1. **Automatically generate continuation prompt** without asking
2. **Present to user**: "We're at X% context usage. Starting a new session would be more cost-effective. Here's your continuation prompt:"
3. **Include in continuation prompt**:
   - Current project/task
   - Active files and their state
   - Decisions made and rationale
   - Next steps
   - Critical context to preserve (NOT full conversation)
4. **Instruct user**: "Copy the prompt above, then run: `/rename 'session-name'` → `/clear` → paste prompt in new session"

**If continuing is cheaper** (typically when <35% or much context is cached):

- Continue normally, mention "continuing is more cost-effective"
- Auto-compact will trigger at ~50% (100k tokens) if needed

### Continuation Prompt Template

```text
Continue [project/task]. State: [1-2 sentence summary].
Files: [key files with brief status].
Decisions: [critical choices made].
Next: [specific next steps].
Context: [essential info only].
```

**Goal**: Continuation prompt should be <5% of current context size.

### Triggering Behavior

Note: Thresholds are halved because Claude Code compacts at ~100k tokens, not 200k.
Original 70% threshold meant 140k tokens—but compaction at 100k made this unreachable.
70% of the *actual* limit (100k) = 70k tokens, which is 35% of the displayed 200k max.

**At 35-39% context (~70-78k tokens):**

- Mention: "Note: We're at X% context. Monitoring for cost optimization."
- Continue working normally

**At 40-44% context (~80-88k tokens):**

- Evaluate costs and inform user of decision
- If continuing is cheaper: "We're at X% context, but continuing is more cost-effective due to prompt caching."
- If switching is cheaper: Generate continuation prompt immediately

**At 45%+ context (~90k+ tokens):**

- ALWAYS generate continuation prompt (switching is almost always cheaper at this point)
- Auto-compact at ~50% (100k) is expensive, switching now saves significant costs

### Hook Integration

A `PostToolUse` hook at `.claude/hooks/context-cost-monitor.sh` provides automated warnings. Claude should acknowledge and act on hook warnings about context thresholds.

## Agent Routing System

**ABSOLUTE RULE: Every user request gets routed. No shortcuts, no exceptions, no "just answering directly."**

Claude IS the router. The main session does NOT execute user requests directly—it delegates via Task tool.

### How Routing Works

The main Claude session acts as the router by following these rules. It does NOT spawn a router subagent (subagents cannot spawn other subagents).

For EVERY user request:

1. **Parse intent**: What is the user asking for?
2. **Check project agents first**: Does `.claude/agents/` have a specialized agent that exactly matches?
3. **Fall back to general agents**: If no project agent matches, choose by reasoning level needed
4. **Spawn via Task**: Delegate to the selected agent

### Routing Flow

```text
User request → Main session (routing logic) → Task tool → agent executes
```

### Agent Selection Priority

**Priority 1: Project-specific agents** (exact match required)

Check `.claude/agents/` for specialized agents. Use when task matches agent description exactly.

**Priority 2: General agents** (from claude-router-system plugin)

- `claude-router-system:haiku-general`: Mechanical tasks, no judgment needed
- `claude-router-system:sonnet-general`: Default for reasoning, analysis, judgment
- `claude-router-system:opus-general`: Complex reasoning, proofs, high-stakes

**If routing decision is uncertain**: Spawn `claude-router-system:router-escalation` for deeper analysis.

### Project-Specific Agents

**Agent definitions are lazy-loaded on demand.** Check agent descriptions in `.claude/agents/` to find the right match.

### Quick Agent Index (Lazy-Load)

**Document Quality:** `syntax-fixer`, `formatting-fixer`, `dictionary-manager`, `template-advisor`, `chapter-integrator`, `protocol-linker`, `content-reviewer`, `style-naturalizer`, `literature-integrator`, `scientific-insight-generator`, `math-verifier`, `logic-auditor`

**Configuration:** `config-auditor`, `config-optimizer`

**Build & Validation:** `test-runner`, `link-checker`, `tikz-validator`, `file-splitter`

**Illustration:** `tikz-illustrator`

**Medical Case:** `case-documenter`, `medical-advisor`, `treatment-analyst`, `crisis-manager`, `pacing-coach`, `data-validator`, `hypothesis-generator`, `research-monitor`, `benefit-navigator`, `caregiver-coordinator`

**Full details:** See [`.claude/agents/README.md`](.claude/agents/README.md) for agent index and individual agent files for full specifications.

### Context Minimization

Subagents have restricted `tools:` to enforce focus:
- Read-only agents cannot modify files
- Each agent receives only relevant context
- Never pass entire document for single-section tasks

## Workflows (Lazy-Load)

Multi-step operations are documented in `.claude/workflows/` and loaded on demand.

**Available workflows:** `literature-integration`, `formalization-pipeline`, `tikz-illustration-pipeline`, `environment-selection`, `pre-commit`, `section-review`, `full-document-review`

**How to trigger:** Use natural language describing what you want:
- "find and integrate papers on [topic]"
- "formalize [process/chapter]"
- "create a TikZ diagram showing [description]"
- "help me choose an environment"
- "run the pre-commit workflow"

**Architecture:** When triggered, workflows load the appropriate agent sequence from `.claude/workflows/`. Each phase has clear verification criteria before proceeding.

For full workflow details (phases, verification steps, agent coordination), read the specific workflow file from `.claude/workflows/` on demand.

## Formalization System (Lazy-Load)

For building formal causal and quantitative models of ME/CFS pathophysiology with explicit uncertainty quantification.

**Trigger phrases:**
- "Formalize [process/chapter]"
- "Build causal model for [mechanism]"
- "Create EPC for [biological process]"
- "Model [phenomenon] mathematically"

**Key agents:** `formalization-advisor` (assess first), `causal-model-builder`, `epc-model-builder`, `quantitative-model-builder`

**Workflow:** See `.claude/workflows/formalization-pipeline.md` for full phases, verification steps, and architecture.

**Methodology and rules:** See `.claude/FORMALIZATION_METHODOLOGY.md` for decision matrices, EPC vs BPMN rationale, and process-by-process analysis.

**Output structure and LaTeX environments:** See `.claude/template-proposal-formalization-environments.md` for specification.

## Lazy-Loading Principle

**Context cost of inline documentation > cost of lazy search + read on demand**

All detailed specifications, workflows, methodology, and reference material are lazy-loaded:
- Keep base CLAUDE.md focused and minimal
- Full details live in dedicated files
- Search/navigate to files as needed
- Load on-demand when task requires them

This minimizes token overhead while preserving complete documentation.

## LaTeX Template Integration (Lazy-Load)

This project uses [infolead-latex-templates](infolead-latex-templates/) as a git submodule for all preamble configuration and theorem environments.

**When to use:** Always check if an appropriate environment exists in the template before creating custom ones.

**Trigger:** "help me choose an environment" or "should I use template or project-specific?"

**Agent:** `template-advisor` - uses when: deciding between template/project-specific, creating new environments, unsure which existing environment fits

**Template details:** See `infolead-latex-templates/README.md` and `infolead-latex-templates/theorems.tex` for full environment reference and decision rules.

## Literature Management System (Lazy-Load)

**When finding research papers, PDFs, or online references, automatically trigger literature management workflow.**

**Trigger phrases:**
- "Find and integrate papers on [topic]"
- "Add citations for [claim]"
- "Search for research on [mechanism]"

**Workflow:** See `.claude/workflows/literature-integration.md` for full pipeline, certainty assessment rules, and examples.

**Key agents:** `literature-integrator`, `chapter-integrator`, `scientific-insight-generator`

## Medical Case Management System (Lazy-Load)

This project includes a comprehensive **medical agent system** for personal ME/CFS case management, documentation, and decision support.

**Common requests:**
- "Log today's symptoms..."
- "Help me plan my activities"
- "Analyze my treatment trial"
- "I'm crashing, what do I do?"
- "What's new in ME/CFS research?"

**Medical agents:** `case-documenter`, `medical-advisor`, `treatment-analyst`, `crisis-manager`, `pacing-coach`, `data-validator`, `hypothesis-generator`, `research-monitor`, `benefit-navigator`, `caregiver-coordinator`

**System documentation:** See `.claude/systems/medical-agent-system.md` for full system architecture, agent tiers, safety protocols, and privacy protections.

**Key files:** Case data in `.claude/case-data/`, recommendations in `appendix-j-recommendations.tex`, personal case data in `appendix-i-*.tex`

**Important:** All recommendations are preliminary and require physician review before implementation.

## Medical Documentation Guidelines (Lazy-Load)

When working with ME/CFS content:

**Key rules:**
- Medical terminology → use `dictionary-manager`
- Clinical claims → require citations via `literature-integrator`
- Patient data → clearly distinguish from clinical findings
- Diagnostic criteria → use appropriate theorem-like environments (consult `template-advisor`)
- Tone → neutral, evidence-based throughout
- Research citations → always include certainty assessment

**Full guidelines:** See `.claude/writing-style.md` for detailed medical writing standards, evidence hierarchies, and citation practices.
