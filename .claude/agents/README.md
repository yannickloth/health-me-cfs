# Subagent Definitions

Custom subagents for LaTeX document tasks. Each uses YAML frontmatter format per Claude Code spec.

## Lazy-Loading Principle

**Agent definitions are lazy-loaded on demand.** This directory contains individual agent files with full specifications. When you need an agent:

1. **Identify the task** → what needs to be done
2. **Search by keywords** → find matching agent by name/triggers
3. **Read agent file** → load full description and capabilities
4. **Delegate immediately** → spawn the agent

This minimizes base context cost while preserving complete agent documentation. No central registry means no desync—each agent file is authoritative.

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

**Quick lookup:** Find agent in `.claude/agents/{name}.md` for full specs.

### Router Agents

| Agent | Model | Use when... |
| --- | --- | --- |
| `sonnet-router` | Sonnet | Entry point for all requests; interprets intent, assesses risk, routes |
| `opus-router` | Opus | sonnet-router is uncertain about routing decision |

### Haiku (mechanical)

| Agent | Use when... |
| --- | --- |
| `haiku-general` | General tasks requiring speed over reasoning, no specialized agent exists |
| `syntax-fixer` | LaTeX build fails, errors, warnings, overfull boxes |
| `formatting-fixer` | Markdown syntax in .tex, inconsistent formatting |
| `dictionary-manager` | LTeX false positives, adding medical terms to dictionary |
| `file-splitter-executor` | Executing file split plan from analyzer |
| `tikz-validator` | TikZ diagrams have compilation errors, spacing issues |

### Sonnet (reasoning)

| Agent | Use when... |
| --- | --- |
| `sonnet-general` | General tasks requiring reasoning/judgment, no specialized agent exists |
| `content-reviewer` | Checking document consistency, completeness, coherence |
| `style-naturalizer` | Text sounds robotic, AI-like, excessive lists, unnatural |
| `literature-researcher` | Finding citations, medical research, verifying claims |
| `literature-manager` | Downloading papers, organizing Literature/, updating .bib |
| `chapter-integrator` | Integrating literature into text with proper citations |
| `scientific-insight-generator` | Generating insights from research, synthesizing evidence |
| `template-advisor` | Choosing LaTeX environments, theorem vs definition |
| `protocol-linker` | Linking protocols to underlying mechanisms |
| `file-splitter-analyzer` | Identifying files to split for context optimization |
| `tikz-illustrator` | Creating TikZ diagrams with spatial positioning |
| `formalization-advisor` | Deciding whether to formalize, choosing EPC/BPMN |
| `causal-model-builder` | Building causal models with proper notation |
| `epc-model-builder` | Creating EPC process diagrams |
| `quantitative-model-builder` | Building quantitative models with uncertainty |

### Opus (deep analysis)

| Agent | Use when... |
| --- | --- |
| `opus-general` | General tasks requiring deep reasoning beyond Sonnet, no specialized agent exists |
| `math-verifier` | Verifying proofs, derivations, calculations |
| `logic-auditor` | Detecting circular reasoning, completeness gaps |
| `scientific-rigor-auditor` | Checking scientific claims, evidence quality |

### Medical Agents (Sonnet)

| Agent | Use when... |
| --- | --- |
| `case-documenter` | Updating symptom logs, tracking case data, Appendix I |
| `medical-advisor` | Generating evidence-based recommendations (MD review needed) |
| `treatment-analyst` | Analyzing treatment trial outcomes, statistics |
| `crisis-manager` | Severe deterioration, crashes, emergency protocols |
| `pacing-coach` | Activity planning, preventing PEM, energy envelope |
| `data-validator` | Validating case data quality, checking errors |
| `hypothesis-generator` | Analyzing patterns, generating testable hypotheses |
| `research-monitor` | Monitoring new ME/CFS research, alerting |
| `benefit-navigator` | Disability documentation, benefit applications |
| `caregiver-coordinator` | Caregiver docs, support protocols |

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
