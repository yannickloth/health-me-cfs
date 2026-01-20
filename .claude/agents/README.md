# Subagent Definitions

Custom subagents for LaTeX document tasks. Each uses YAML frontmatter format per Claude Code spec.

## Format

```yaml
---
name: agent-name
description: When to use this agent (Claude reads this to decide)
model: haiku|sonnet|opus
tools: Read, Edit, Bash, ...
---

System prompt / instructions for the agent...
```

## Model Tiers

| Model | Cost | Use For |
|-------|------|---------|
| Haiku | 1x | Pattern matching, mechanical transforms |
| Sonnet | ~10x | Moderate reasoning, cross-referencing |
| Opus | ~75x | Deep reasoning, proofs, logic |

## Available Agents

### Haiku (mechanical)
| Agent | Triggers |
|-------|----------|
| `syntax-fixer` | build errors, warnings, overfull boxes |
| `formatting-fixer` | markdown in tex, formatting issues |
| `dictionary-manager` | LTeX warnings, spelling false positives |

### Sonnet (reasoning)
| Agent | Triggers |
|-------|----------|
| `content-reviewer` | consistency, completeness, coherence |
| `style-naturalizer` | AI-sounding text, robotic prose |

### Opus (deep analysis)
| Agent | Triggers |
|-------|----------|
| `math-verifier` | proofs, derivations, calculations |
| `logic-auditor` | circular reasoning, completeness gaps |

## How Delegation Works

Claude automatically delegates based on the `description` field. Include trigger phrases like:
- "Use when..."
- "Use proactively when..."

Claude matches your request to agent descriptions and spawns the appropriate subagent.

## Context Minimization

Each agent has limited tools to enforce focus:
- Read-only agents can't accidentally modify files
- Agents only receive files relevant to their task
- Use `tools:` field to restrict capabilities
