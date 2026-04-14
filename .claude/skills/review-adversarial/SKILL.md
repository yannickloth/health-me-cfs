---
name: review-adversarial
description: Run all adversarial persona reviewers sequentially on a file or glob scope. Each persona attacks the paper from a different hostile angle. Reports aggregate vulnerabilities at the end.
argument-hint: <file-path-or-glob>
---

# Adversarial Persona Review

Run all 6 adversarial personas sequentially on the specified scope. Each adopts a deliberately hostile but fair perspective to stress-test arguments, evidence, and framing.

## Arguments

- `$ARGUMENTS` — file path(s) or glob (e.g., `typst/contents/part2-pathophysiology/ch07-immune-dysfunction.typ` or `typst/**/*.typ`)

**Guard:** `$ARGUMENTS` empty/blank/literal → ask user for scope.
**Guard:** Glob resolves to zero files → report empty match; ask user to refine.

## Adversarial Personas

Run in order (cheapest/broadest → deepest):

| Step | Agent | Persona | Attacks |
|------|-------|---------|---------|
| 1 | `cynic-auditor` | Hostile Reviewer | Cherry-picking, motivated reasoning, advocacy-as-science, overconfidence |
| 2 | `sophist-auditor` | Logic Attacker | Non sequiturs, equivocation, false dichotomies, affirming consequent, unfalsifiability |
| 3 | `strawman-auditor` | Fairness Checker | Strawman arguments, missing steelman, omitted counterevidence, double standards |
| 4 | `reductionist-auditor` | Parsimony Enforcer | Unjustified integration, Occam's razor violations, complexity camouflage |
| 5 | `clinician-auditor` | Busy Doctor | Research-practice gap, impractical recommendations, missing decision support |
| 6 | `devil-advocate-auditor` | Counter-Argument Builder | Undefended claims, weakest links, alternative explanations, asymmetric scrutiny |

## Execution Protocol

1. **Resolve scope:** Expand glob, list files, count. Report to user.
2. **Per persona in order:**
   - Launch agent: "Review the following files from your adversarial perspective. Files: [list]. Report all findings in your standard output format. Do NOT edit any files."
   - Collect findings
   - Report: "Persona N complete: X findings"
3. **Aggregate report:**

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
  [Claims flagged by 3+ personas — paper's biggest vulnerabilities]

STRONGEST CLAIMS (survived all personas):
  [Claims no persona successfully attacked]

TOP VULNERABILITIES (by convergence):
  1. [claim/section] — flagged by: cynic, sophist, devil's advocate
     Attack summary: [one-line synthesis]
  2. ...

FULL DETAILS:
  [per-persona reports appended]

RECOMMENDED ACTIONS:
  1. Address cross-persona convergence points first
  2. Strengthen defense of claims attacked by devil's advocate
  3. Ensure fairness per strawman auditor findings
  4. Add clinical decision support per clinician findings
  5. Simplify per reductionist findings where possible
```

4. Write report → `$XDG_RUNTIME_DIR/review-adversarial-[timestamp].md`
5. Report location to user.

## Context Management

- 6 opus-level agents → launch each as subagent (own context)
- Keep only findings summary in main context, not raw output
- Context approaching 35% → generate continuation prompt with checkpoint reference

## Constraints

- All agents: **audit mode** (read-only, no edits)
- Findings reported, not fixed — user decides
- Do NOT invent findings — only report what agents detect
- Do NOT skip personas without reporting why
- Agent fails/times out → note it; continue
- Personas deliberately harsh — findings = "potential vulnerabilities", not "confirmed failures"
