> **Style rule:** Telegraphic — tables/lists/symbols > prose.

# Context and Cost Management

MUST proactively monitor token usage and optimize session costs.

## Monitoring Requirements

CRITICAL: Check EVERY `<system_warning>Token usage: X/200000` tag and calculate percentage.

MANDATORY: Start EVERY response with context status (before any other content):

```text
📊 Context: X.X% (XXX,XXX / 200,000 tokens)
```

- Extract from: `<system_warning>Token usage: 152000/200000; 48000 remaining</system_warning>`
- Calculate: `percentage = (tokens_used / 200000) * 100`
- Check every response with tool use, and periodically
- >35% → IMMEDIATELY evaluate cost trade-offs (compaction at ~100k tokens; 35% of 200k = 70% of effective limit)

| Cost type | Formula |
|-----------|---------|
| Compaction | `~current_tokens * 0.000015` (input) + summary generation |
| Fresh start | `~10000 tokens * 0.000003` (cached) + `~5000 continuation * 0.000015` |

## Decision Logic

| Condition | Action |
|-----------|--------|
| Fresh start cheaper (typically >35% unique history) | Auto-generate continuation prompt; present to user; instruct: `/rename 'session-name'` → `/clear` → paste |
| Continuing cheaper (typically <35% or much cached) | Continue; mention "continuing is more cost-effective"; auto-compact triggers ~50% (100k) |

Continuation prompt must include: current project/task, active files + state, decisions + rationale, next steps, critical context (NOT full conversation).

## Continuation Prompt Template

```text
Continue [project/task]. State: [1-2 sentence summary].
Files: [key files with brief status].
Decisions: [critical choices made].
Next: [specific next steps].
Context: [essential info only].
```

Goal: continuation prompt <5% of current context size.

## Triggering Behavior

Thresholds halved: compaction at ~100k tokens (not 200k). 70% of actual limit (100k) = 70k tokens = 35% of displayed 200k max.

| Context % | Tokens | Action |
|-----------|--------|--------|
| 35–39% | ~70–78k | Mention monitoring; continue normally |
| 40–44% | ~80–88k | Evaluate costs; inform user; generate prompt if switching cheaper |
| ≥45% | ~90k+ | ALWAYS generate continuation prompt; switching almost always cheaper |

## Hook Integration

`PostToolUse` hook: `.claude/hooks/context-cost-monitor.sh` → automated threshold warnings. Acknowledge and act on hook warnings.
