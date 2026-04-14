# Agent Creation Guide

Lazy-loading principle: each agent file is authoritative — no central registry to maintain or desync from.

## File Structure

**Location:** `.claude/agents/<agent-name>.md` (kebab-case)

```yaml
---
name: agent-name
description: When to use this agent (Claude reads this to decide delegation)
model: haiku|sonnet|opus
tools: Read, Edit, Bash, Grep, Glob, WebSearch, WebFetch
---

## Purpose
Clear one-sentence summary.

## Triggers
- Use when...
- Use proactively when...
- Delegate immediately if...

## Capabilities
List specific tasks.

## Constraints
What NOT to do; what's out of scope.

## Tools
List tools + why (if non-obvious).

## Instructions
Step-by-step actionable guidance.
```

## Description Field (Critical for Delegation)

Claude reads `description` to decide delegation — must be scannable and specific.

✅ `description: Use when validating TikZ diagrams for compilation errors, spatial collisions, or overfull boxes`
❌ `description: Works with diagrams`

Include "Use when" or "Delegate immediately if" to match user intent.

## Model Selection

| Model | Relative cost | Use for |
|-------|---------------|---------|
| Haiku | 1x | Pattern matching, mechanical transforms, simple tasks |
| Sonnet | ~10x | Moderate reasoning, cross-referencing, content review |
| Opus | ~75x | Deep reasoning, proofs, complex analysis, creative synthesis |

## Agent Definition: Keep Lean

Include: description (1 sentence) · triggers · capabilities · constraints · actionable instructions

Omit: full methodology (reference separate file) · long examples · background/history · detailed processes

## Registration

1. Add to `.claude/agents/README.md`: quick index category + one-line trigger entry
2. If part of major system: add to CLAUDE.md quick index, link to agent file, don't duplicate description

## Example: New Agent

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
- **Read:** Access .typ files and build logs
- **Bash:** Run timing commands
- **Grep:** Search logs for warnings/errors

## Instructions
1. Read most recent latexmk log
2. Identify top 3 slowest operations
3. Map to source files (which .typ files are expensive?)
4. Suggest 2-3 concrete optimizations
5. Report findings with timing estimates
```

README.md entry:
```markdown
| `performance-analyzer` | LaTeX build is slow, optimize compilation |
```

## For Workflows

Multi-agent workflow file: documents agent sequence + verification criteria. Each agent remains independent. Workflow references agent names; doesn't replicate descriptions.

```markdown
# Literature Integration Coordinator
## Phases
1. Search → `literature-researcher`
2. Download → `literature-manager`
3. Integrate → `chapter-integrator`
4. Analyze → `scientific-insight-generator`
5. Verify → `syntax-fixer`
See individual agent files for full specifications.
```

## Summary

- One file per agent in `.claude/agents/`
- YAML frontmatter: name, description, model, tools
- Clear triggers for delegation
- Keep concise; link to external docs if needed
- Update README.md (quick index + one-line trigger)
- No central registry — each file is authoritative