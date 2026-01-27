# Agent Creation Guide

Guidelines for creating new agents that follow the lazy-loading principle.

## Core Principle

**Keep agent definitions decentralized and self-contained.** Each agent file is authoritative—no central registry to maintain or desync from.

## Creating a New Agent

### 1. File Naming and Location

- **File:** `.claude/agents/agent-name.md`
- **Name style:** kebab-case (e.g., `protocol-linker.md`, `case-documenter.md`)
- **Location:** Always in `.claude/agents/`

### 2. File Structure (YAML + Markdown)

```yaml
---
name: agent-name
description: When to use this agent (Claude reads this to decide delegation)
model: haiku|sonnet|opus
tools: Read, Edit, Bash, Grep, Glob, WebSearch, WebFetch
---

## Purpose

Clear one-sentence summary of what this agent does.

## Triggers

What user requests should trigger this agent? Use phrases like:
- Use when...
- Use proactively when...
- Delegate immediately if...

## Capabilities

List the specific tasks this agent handles.

## Constraints

What should this agent NOT do? What's out of scope?

## Tools

List the specific tools this agent has and why (if non-obvious).

## Instructions

Step-by-step guidance for the agent to follow.
```

### 3. Description Field (Critical for Delegation)

The `description` field is how Claude decides to delegate. Make it scannable and specific:

**Good:**
```yaml
description: Use when validating TikZ diagrams for compilation errors, spatial collisions, or overfull boxes
```

**Bad:**
```yaml
description: Works with diagrams
```

Include trigger phrases like "Use when" or "Delegate immediately if" so Claude can match against user intent.

### 4. Model Selection

| Model | Cost | Use For |
|-------|------|---------|
| **Haiku** | 1x | Pattern matching, mechanical transforms, simple tasks |
| **Sonnet** | ~10x | Moderate reasoning, cross-referencing, content review |
| **Opus** | ~75x | Deep reasoning, proofs, complex analysis, creative synthesis |

### 5. Minimal Base Context

Keep agent definitions lean:

- **Description:** 1 sentence (scannable)
- **Triggers:** List phrases that match user intent
- **Capabilities:** List specific tasks
- **Constraints:** What NOT to do
- **Instructions:** Actionable steps

**Don't include:**
- Full methodology (reference it in a separate file if needed)
- Examples (keep those minimal or reference them)
- Long background or history
- Detailed processes (keep instructions concise)

### 6. Register in README.md

Add the agent to `.claude/agents/README.md`:

1. **Quick Agent Index:** Add to appropriate category (Haiku/Sonnet/Opus, Document/Medical/Illustration, etc.)
2. **Triggers table:** One line: agent name → what triggers it
3. **That's it.** The full spec lives in the individual agent file.

### 7. Update CLAUDE.md (If Applicable)

If the agent is part of a major system (like subagents or medical agents):

1. **Add to quick index** in the relevant section (e.g., "Medical agents: `case-documenter`, `medical-advisor`, ...")
2. **Link to agent file** for full details
3. **Don't duplicate** the agent description—let the agent file be authoritative

### Example: New Agent

Creating `performance-analyzer.md` to analyze LaTeX build performance:

```yaml
---
name: performance-analyzer
description: Use when LaTeX builds are slow or generating overfull box warnings; analyzes compilation logs and suggests optimizations
model: sonnet
tools: Read, Bash, Grep
---

## Purpose

Diagnose and optimize slow LaTeX builds.

## Triggers

- "Why is the build so slow?"
- "The build is taking forever"
- "Optimize build performance"

## Capabilities

- Parse latexmk logs for bottlenecks
- Identify problematic packages or commands
- Suggest compilation optimizations
- Recommend structural improvements

## Constraints

- Does NOT modify files (read-only)
- Does NOT change build system configuration
- Does NOT install new packages

## Tools

- **Read:** Access .tex files and build logs
- **Bash:** Run timing commands
- **Grep:** Search logs for warnings/errors

## Instructions

1. Read the most recent latexmk log from `.`
2. Identify top 3 slowest operations
3. Map to source files (which .tex files are expensive?)
4. Suggest 2-3 concrete optimizations
5. Report findings with timing estimates
```

Then update `README.md`:

```markdown
### Sonnet (reasoning)
| Agent | Triggers |
|-------|----------|
| ... |
| `performance-analyzer` | LaTeX build is slow, optimize compilation |
```

## Lazy-Loading Benefits

1. **No desync:** Each agent file is definitive
2. **Minimal overhead:** Only load agents when needed
3. **Clear ownership:** Each file is self-contained
4. **Easy discovery:** Search by agent name/keywords
5. **Scalable:** Add new agents without updating central registry

## For Workflows

If you're creating a multi-agent workflow (e.g., `literature-integration-coordinator.md`):

1. **Keep workflow file as documentation** of the agent sequence and verification criteria
2. **Each agent still remains independent** with its own file
3. **Workflow file references agent names** but doesn't replicate their descriptions
4. **Lazy-load:** Full agent specs are in individual files; workflow shows orchestration

Example:

```markdown
# Literature Integration Coordinator

Workflow for finding, downloading, and integrating research papers.

## Phases

1. **Search** → `literature-researcher` finds papers
2. **Download** → `literature-manager` organizes PDFs
3. **Integrate** → `chapter-integrator` adds citations to chapters
4. **Analyze** → `scientific-insight-generator` finds novel insights
5. **Verify** → `syntax-fixer` checks build

See individual agent files for full specifications.
```

## Summary

- **One file per agent** in `.claude/agents/`
- **YAML frontmatter** with name, description, model, tools
- **Clear triggers** for delegation
- **Keep concise:** link to external docs if needed
- **Update README.md** (quick index + one-line trigger)
- **No central registry:** each file is authoritative