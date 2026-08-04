# UX Requirements

> **Style rule:** All config files in this directory must use schematic, telegraphic style — tables/lists/symbols > prose, short phrases, filler words dropped. Goal: minimize context window consumption.

Task execution, output quality, and visibility requirements.

---

## Task Execution Visibility

Priority: user always knows what's happening.

### Output Visibility Rules

| Rule               | Detail                                                          |
|--------------------|-----------------------------------------------------------------|
| Real-time updates  | Always communicate what's happening — direct work or delegated  |
| Background tasks   | Monitor with `tail -f` on output file; show live progress       |
| Key milestones     | Report: "Now analyzing chapter 6...", "Found 3 candidates..."   |
| No fire-and-forget | Never start background work without monitoring                  |

### Execution Mode Selection

| Mode       | Use when                                                                              |
|------------|---------------------------------------------------------------------------------------|
| Background | True parallelism; long-running + user doing other things; user explicitly requests it |
| Foreground | Default; collaborative/exploratory work; judgment calls needed; user learning process |

**Key principle:** Visibility > execution mode. Background ≠ silent.

---

## Output Quality

Every task MUST produce usable output. Silent completion is unacceptable.

### Acceptable Output Formats

- Direct output in response
- File path to stored results
- Modified files (report which changed)
- Status/summary of completed action

### Unacceptable Patterns

- ✗ Completes with no indication of results
- ✗ Completes silently without reporting outcome
- ✗ Says "done" without showing what was done
- ✗ Produces output without reporting location

### Verification After Delegation

Check all three after using Task tool:

1. Output exists (agent returned results in some form)
2. Output is actionable (usable/understandable)
3. Output location is clear (file path provided if stored)

If delegated work returns no usable output, communicate:

```text
Warning: Delegated task completed but produced no usable output.
Expected: [what output should have been produced]
Actual: [what was returned]

Retrying with explicit output requirements.
```

### Self-Verification Checklist

- Results returned directly OR file path provided
- Completed actions reported
- Summary of findings/changes shown
- Never complete silently

---

## Response Quality Standards

### Completeness

- Answer the question asked
- Include relevant context; omit excess verbosity
- Provide actionable next steps when appropriate

### Clarity

- Direct language
- Structure for easy scanning (headers, lists)
- Highlight key information

### Honesty

- State confidence level when uncertain
- Acknowledge limitations
- No fabrication

---

## Error Handling UX

| Error type   | Response                                                                          |
|--------------|-----------------------------------------------------------------------------------|
| User-facing  | Clear explanation + remediation steps + retry/escalate option                     |
| Internal     | Log detail for debugging; simplified message to user; preserve context for retry  |
