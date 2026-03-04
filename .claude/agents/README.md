# Project-Specific Agents

Specialized subagents for this LaTeX ME/CFS documentation project.

**Routing logic and general agents are defined globally in `~/.claude/CLAUDE.md`.** This directory contains only project-specific specialized agents.

## Lazy-Loading Principle

**Agent definitions are lazy-loaded on demand.** Each agent file contains full specifications. The router reads these to make routing decisions.

## Format

```yaml
---
name: agent-name
description: When to use this agent (router reads this to decide)
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

## Available Specialized Agents

**Quick lookup:** Find agent in `.claude/agents/{name}.md` for full specs.

### Haiku (mechanical)

| Agent | Use when... |
| --- | --- |
| `syntax-fixer` | LaTeX build fails, errors, warnings, overfull boxes |
| `formatting-fixer` | Markdown syntax in .tex, inconsistent formatting |
| `dictionary-manager` | LTeX false positives, adding medical terms to dictionary |
| `tikz-validator` | TikZ diagrams have compilation errors, spacing issues |
| `test-runner` | Running nix build, verifying compilation succeeds |
| `link-checker` | Validating \ref, \cite, \label references before build |
| `terminology-harmonizer` | Checking/normalizing medical term consistency across .tex files |
| `document-health-monitor` | Document metrics, finding stubs/placeholders, chapter balance |

### SCM/Git (Sonnet)

| Agent | Use when... |
| --- | --- |
| `commit-writer` | Writing commit messages, staging changes, creating commits |
| `changelog-generator` | Generating changelogs, release notes, summarizing history |
| `git-historian` | Querying history, blame, "what changed", content evolution |
| `release-manager` | Creating releases, tags, PRs, version management |

### Sonnet (reasoning)

| Agent | Use when... |
| --- | --- |
| `config-auditor` | Checking Claude config for conflicts, inconsistencies, undefined agents |
| `config-optimizer` | Optimizing agent definitions for context efficiency, creating new agents with best practices |
| `content-reviewer` | Checking document consistency, completeness, coherence |
| `style-naturalizer` | Text sounds robotic, AI-like, excessive lists, unnatural |
| `literature-integrator` | Full pipeline: finding, downloading, organizing papers, updating .bib |
| `chapter-integrator` | Integrating literature into text with proper citations |
| `scientific-insight-generator` | Generating insights from research, synthesizing evidence |
| `template-advisor` | Choosing LaTeX environments, theorem vs definition |
| `protocol-linker` | Linking protocols to underlying mechanisms |
| `file-splitter` | Analyzing and splitting large files for context optimization |
| `tikz-illustrator` | Creating TikZ diagrams with spatial positioning |
| `formalization-advisor` | Deciding whether to formalize, choosing EPC/BPMN |
| `causal-model-builder` | Building causal models with proper notation |
| `epc-model-builder` | Creating EPC process diagrams |
| `quantitative-model-builder` | Building quantitative models with uncertainty |
| `model-integrator` | Converting completed YAML/TikZ models into Part V chapter LaTeX |
| `meta-analysis-coordinator` | Synthesizing findings across multiple papers into evidence tables |
| `publication-preparer` | Checking publication-readiness: anonymization, metadata, checklist |
| `evidence-mapper` | Building citation→model-component reverse index for Part V |
| `research-gap-synthesizer` | Harvesting open_question/hypothesis/speculation into research agenda |

### Opus (deep analysis)

| Agent | Use when... |
| --- | --- |
| `math-verifier` | Verifying proofs, derivations, calculations |
| `logic-auditor` | Detecting circular reasoning, completeness gaps |
| `scientific-rigor-auditor` | Checking scientific claims, evidence quality |
| `model-auditor` | Cross-validating DAG ↔ EPC ↔ ODE consistency (formalization Stage 4) |
| `uncertainty-analyst` | Propagating certainty through model hierarchy, flagging overconfident claims |

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

## Routing Examples

**Example 1: Specialized agent exists**
- User: "The build is broken"
- Route to: `syntax-fixer` (haiku) — LaTeX build errors match this agent

**Example 2: Research task**
- User: "Add some citations for this claim about NK cells"
- Route to: `literature-integrator` (sonnet) — finding and integrating papers

**Example 3: Text quality**
- User: "This paragraph sounds robotic"
- Route to: `style-naturalizer` (sonnet) — AI-like text

**Example 4: General task, simple**
- User: "Rename all instances of `foo` to `bar` in file X"
- Route to: `haiku-general` — simple replacement, explicit file, low risk

**Example 5: General task, requires judgment**
- User: "Clean up the old files in this directory"
- Route to: `sonnet-general` — destructive, ambiguous ("old"?), no explicit paths → HIGH RISK

**Example 6: Complex reasoning**
- User: "Verify the proof in section 3.2 is correct"
- Route to: `opus-general` — mathematical verification needs deep reasoning

**Example 7: Workflow coordination**
- User: "Find papers on mitochondrial dysfunction"
- Route to: `literature-integrator` (handles full pipeline), then `chapter-integrator` for text edits

## Anti-Patterns (NEVER DO THIS)

**Anti-Pattern 1: Executing tasks without delegation**

❌ User: "Fix the build errors"
❌ Claude: "Let me try to fix this myself first..." *(attempts manual fixes)*
✅ Correct: Route through router → router spawns `syntax-fixer`

**Anti-Pattern 2: Skipping router for "obvious" tasks**

❌ User: "This text needs better flow"
❌ Claude: "I'll spawn style-naturalizer directly" *(bypasses router)*
✅ Correct: Route through router → router spawns `style-naturalizer`

**Anti-Pattern 3: Wrong model tier for destructive operations**

❌ User: "Delete the old implementation files"
❌ Router: "I'll use haiku-general for fast cleanup..."
✅ Correct: Destructive + ambiguous → `sonnet-general` for analysis first

**Anti-Pattern 4: Using expensive models for simple tasks**

❌ User: "Change 'colour' to 'color' throughout the file"
❌ Router: "This requires careful analysis..." → `opus-general`
✅ Correct: Simple find-replace, explicit file → `haiku-general`

**Anti-Pattern 5: Skipping specialized agents**

❌ User: "This text needs better flow"
❌ Router: Route to `sonnet-general`
✅ Correct: Text quality → `style-naturalizer` exists, use it
