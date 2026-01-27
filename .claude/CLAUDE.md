# CLAUDE.md

LaTeX-based ME/CFS documentation with automatic subagent delegation for quality assurance.

---

## ⚠️ MANDATORY: Active Agent Delegation

**Claude MUST interpret every user request and immediately delegate to the appropriate specialized agent.**

- **DO NOT** attempt tasks yourself when agents exist for them
- **DO NOT** "try first then delegate if it fails"
- **DO** actively parse user intent and map to agent capabilities
- **DO** spawn agents immediately when their expertise matches the request

This is not a suggestion - it is a core architectural requirement. The agent system provides specialized models, restricted toolsets, verification protocols, and context minimization. Bypassing agents reduces reliability and performance.

See [Active Request Interpretation](#critical-active-request-interpretation) below for detailed examples.

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
- **When percentage exceeds 70%**, IMMEDIATELY evaluate cost trade-offs:
  - **Compaction cost**: Processing current tokens + generating summary at 95% threshold
    (typically: `~current_tokens * 0.000015` for input + summary generation)
  - **Fresh start cost**: New session with system prompt + CLAUDE.md (cached) + continuation summary
    (typically: `~10000 tokens * 0.000003` cached rate + `~5000 continuation * 0.000015`)
- **Checking frequency**: Every response that includes tool use, and periodically in conversation

### Decision Logic

**If fresh start is cheaper** (typically when >70% is unique conversation history):

1. **Automatically generate continuation prompt** without asking
2. **Present to user**: "We're at X% context usage. Starting a new session would be more cost-effective. Here's your continuation prompt:"
3. **Include in continuation prompt**:
   - Current project/task
   - Active files and their state
   - Decisions made and rationale
   - Next steps
   - Critical context to preserve (NOT full conversation)
4. **Instruct user**: "Copy the prompt above, then run: `/rename 'session-name'` → `/clear` → paste prompt in new session"

**If continuing is cheaper** (typically when <70% or much context is cached):

- Continue normally, mention "continuing is more cost-effective"
- Auto-compact will trigger at 95% if needed

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

**At 70-79% context:**

- Mention: "Note: We're at X% context. Monitoring for cost optimization."
- Continue working normally

**At 80-89% context:**

- Evaluate costs and inform user of decision
- If continuing is cheaper: "We're at X% context, but continuing is more cost-effective due to prompt caching."
- If switching is cheaper: Generate continuation prompt immediately

**At 90%+ context:**

- ALWAYS generate continuation prompt (switching is almost always cheaper at this point)
- Auto-compact at 95% is expensive, switching now saves significant costs

### Hook Integration

A `PostToolUse` hook at `.claude/hooks/context-cost-monitor.sh` provides automated warnings. Claude should acknowledge and act on hook warnings about context thresholds.

## Subagent System

This project uses custom subagents in `.claude/agents/`. Claude automatically delegates tasks to the appropriate agent based on matching your request to agent descriptions.

**Agent definitions are lazy-loaded on demand.** Full descriptions, capabilities, and models are documented in individual agent files in `.claude/agents/`. When you need an agent:

1. **Parse user intent** → identify the task type
2. **Search agents/** → find matching agent by name/keywords
3. **Read agent file** → load full description and model
4. **Delegate immediately** → spawn the appropriate agent

This minimizes base context overhead while preserving full agent documentation for reference.

### Quick Agent Index (Lazy-Load)

**Document Quality:** `syntax-fixer`, `formatting-fixer`, `dictionary-manager`, `template-advisor`, `chapter-integrator`, `protocol-linker`, `content-reviewer`, `style-naturalizer`, `literature-researcher`, `literature-manager`, `scientific-insight-generator`, `math-verifier`, `logic-auditor`

**Illustration:** `tikz-illustrator`, `tikz-validator`

**Medical Case:** `case-documenter`, `medical-advisor`, `treatment-analyst`, `crisis-manager`, `pacing-coach`, `data-validator`, `hypothesis-generator`, `research-monitor`, `benefit-navigator`, `caregiver-coordinator`

**Full details:** See [`.claude/agents/README.md`](.claude/agents/README.md) for agent index with triggers and individual agent files (e.g., `syntax-fixer.md`) for full specifications.

### How It Works

1. You make a request (e.g., "fix the build errors")
2. Claude matches request to agent `description` fields
3. Claude spawns the matching subagent with appropriate model
4. Subagent executes with its restricted toolset
5. Results return to main conversation

### CRITICAL: Active Request Interpretation

**Claude MUST actively interpret and reformulate user requests to ensure proper agent delegation.**

This is not optional - it is a core requirement of the system:

1. **Parse user intent**: Understand what the user is actually asking for, not just the literal words
2. **Map to agent capabilities**: Identify which agent(s) can accomplish this task
3. **Delegate immediately**: Spawn the appropriate agent(s) WITHOUT attempting the task yourself first
4. **Never skip delegation**: Even if the task seems simple, if an agent exists for it, USE that agent

#### Examples of Required Interpretation

**User says:** "The build is broken"
**Claude interprets:** This requires fixing build errors → delegate to `syntax-fixer` agent immediately

**User says:** "Add some citations for this claim about NK cells"
**Claude interprets:** This requires finding research papers → delegate to `literature-researcher` agent immediately

**User says:** "This paragraph sounds robotic"
**Claude interprets:** This requires naturalizing AI-like text → delegate to `style-naturalizer` agent immediately

**User says:** "Should I use a theorem or definition here?"
**Claude interprets:** This requires choosing LaTeX environments → delegate to `template-advisor` agent immediately

**User says:** "Find papers on mitochondrial dysfunction"
**Claude interprets:** This requires the full literature pipeline → load and execute `literature-integration-coordinator` workflow immediately

#### Anti-Patterns (NEVER DO THIS)

❌ **User:** "Fix the build errors"
❌ **Claude:** "Let me try to fix this myself first..." *(attempts manual fixes)*

✅ **User:** "Fix the build errors"
✅ **Claude:** "I'll delegate this to the syntax-fixer agent." *(spawns syntax-fixer)*

---

❌ **User:** "This text needs better flow"
❌ **Claude:** "Let me edit it..." *(makes edits directly)*

✅ **User:** "This text needs better flow"
✅ **Claude:** "I'll use the style-naturalizer agent for this." *(spawns style-naturalizer)*

---

❌ **User:** "Find research on biomarkers"
❌ **Claude:** "Let me search..." *(uses Grep/WebSearch directly)*

✅ **User:** "Find research on biomarkers"
✅ **Claude:** "I'll execute the literature-integration-coordinator workflow." *(loads workflow and coordinates agents)*

#### Certainty Requirement

**You MUST delegate to agents when:**
- An agent exists that matches the task
- The task falls within an agent's described capabilities
- The task would benefit from the agent's specialized toolset or model

**Do NOT second-guess or attempt tasks yourself when agents are available.**

The agent system exists to provide:
- Specialized models (Haiku for speed, Opus for reasoning)
- Restricted toolsets (preventing scope creep)
- Verification protocols (ensuring work is complete)
- Context minimization (improving performance)

By attempting tasks yourself, you bypass these benefits and reduce reliability.

### Context Minimization

Subagents have restricted `tools:` to enforce focus:
- Read-only agents cannot modify files
- Each agent receives only relevant context
- Never pass entire document for single-section tasks

## Workflows (Lazy-Load)

Multi-step operations are documented in `.claude/workflows/` and loaded on demand.

**Available workflows:** `literature-integration-coordinator`, `literature-integration`, `formalization-pipeline`, `tikz-illustration-pipeline`, `environment-selection`, `pre-commit`, `section-review`, `full-document-review`

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

**Workflow:** See `.claude/workflows/literature-integration-coordinator.md` for full pipeline (search → download → organize → bibliography → integrate → verify).

**Integration requirements:** See `.claude/workflows/literature-integration.md` for certainty assessment rules, folder structure, integration checklist, and examples.

**Key agents:** `literature-researcher`, `literature-manager`, `chapter-integrator`, `scientific-insight-generator`

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
- Clinical claims → require citations via `literature-researcher` + `literature-manager`
- Patient data → clearly distinguish from clinical findings
- Diagnostic criteria → use appropriate theorem-like environments (consult `template-advisor`)
- Tone → neutral, evidence-based throughout
- Research citations → always include certainty assessment

**Full guidelines:** See `.claude/writing-style.md` for detailed medical writing standards, evidence hierarchies, and citation practices.
