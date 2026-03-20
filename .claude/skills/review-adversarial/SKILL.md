---
name: review-adversarial
description: Run all adversarial persona reviewers sequentially on a file or glob scope. Each persona attacks the paper from a different hostile angle. Reports aggregate vulnerabilities at the end.
argument-hint: <file-path-or-glob>
---

# Adversarial Persona Review

Run all adversarial reviewer personas on the specified scope, one at a time. Each persona adopts a deliberately hostile but fair perspective to stress-test the paper's arguments, evidence, and framing.

## Arguments

- `$ARGUMENTS` -- file path(s) or glob pattern to review (e.g., `typst/contents/part2-pathophysiology/ch07-immune-dysfunction.typ` or `typst/**/*.typ`)

**Guard:** If `$ARGUMENTS` is empty, blank, or contains only the literal string `$ARGUMENTS`, ask the user for a scope before proceeding.

**Guard:** If the resolved glob matches zero files, report the empty match and ask the user to refine the scope.

## Adversarial Personas

Run in order (cheapest/broadest first, deepest last):

| Step | Agent | Persona | Attacks |
|------|-------|---------|---------|
| 1 | `cynic-auditor` | The Hostile Reviewer | Cherry-picking, motivated reasoning, advocacy-as-science, overconfidence |
| 2 | `sophist-auditor` | The Logic Attacker | Non sequiturs, equivocation, false dichotomies, affirming the consequent, unfalsifiability |
| 3 | `strawman-auditor` | The Fairness Checker | Strawman arguments, missing steelman, omitted counterevidence, double standards |
| 4 | `reductionist-auditor` | The Parsimony Enforcer | Unjustified integration, Occam's razor violations, complexity camouflage |
| 5 | `clinician-auditor` | The Busy Doctor | Research-practice gap, impractical recommendations, missing decision support |
| 6 | `devil-advocate-auditor` | The Counter-Argument Builder | Undefended claims, weakest links, alternative explanations, asymmetric scrutiny |

## Execution Protocol

1. **Resolve scope:** Expand glob, list files, count. Report to user.
2. **For each persona in order:**
   a. Launch agent with prompt: "Review the following files from your adversarial perspective. Files: [list]. Report all findings in your standard output format. Do NOT edit any files."
   b. Collect findings
   c. Report progress: "Persona N complete: X findings"
3. **Aggregate report:** After all personas, compile:

```
====================================
ADVERSARIAL REVIEW REPORT
====================================

Scope: [files]
Date: [date]
Personas completed: [list]

FINDINGS BY PERSONA:
  1. Cynic (Hostile Reviewer):        N findings
  2. Sophist (Logic Attacker):        N findings
  3. Strawman (Fairness Checker):     N findings
  4. Reductionist (Parsimony):        N findings
  5. Clinician (Busy Doctor):         N findings
  6. Devil's Advocate (Counter-Args): N findings

CROSS-PERSONA CONVERGENCE:
  [List claims flagged by 3+ personas — these are the paper's biggest vulnerabilities]

STRONGEST CLAIMS (survived all personas):
  [List claims that no persona successfully attacked]

TOP VULNERABILITIES (by convergence):
  1. [claim/section] — flagged by: cynic, sophist, devil's advocate
     Attack summary: [one-line synthesis]
  2. ...

FULL DETAILS:
  [per-persona reports appended]

RECOMMENDED ACTIONS:
  1. Address cross-persona convergence points first (biggest vulnerabilities)
  2. Strengthen defense of claims attacked by devil's advocate
  3. Ensure fairness per strawman auditor findings
  4. Add clinical decision support per clinician findings
  5. Simplify per reductionist findings where possible
```

4. **Write report** to `$XDG_RUNTIME_DIR/review-adversarial-[timestamp].md`
5. **Report location** to user

## Context Management

This skill orchestrates 6 opus-level agents. To manage context:
- Launch each agent as a subagent (they have their own context)
- Keep only the findings summary in main context, not raw agent output
- If approaching 35% context, generate continuation prompt with checkpoint reference

## Constraints

- All agents run in **audit mode** (read-only, no edits)
- Findings are reported, not fixed — user decides what to address
- Do NOT invent findings — only report what agents detect
- Do NOT skip personas without reporting why
- If an agent fails or times out, note it and continue
- These personas are deliberately harsh — findings should be read as "potential vulnerabilities" not "confirmed failures"
