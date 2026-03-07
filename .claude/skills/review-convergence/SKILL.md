---
name: review-convergence
description: Autonomous adversarial review-fix loop for any file type until convergence (zero findings) or max 12 rounds.
argument-hint: <file-path-or-glob>
---

# Autonomous Review Convergence

Run iterative adversarial review rounds on the specified scope until convergence (zero findings) or max rounds reached. Works with any file type.

For LaTeX-specific review (scientific rigor, citation checks, `nix build`), use `/review-latex` instead.

## Arguments

- `$ARGUMENTS` — file path(s) or glob pattern to review (e.g., `.claude/agents/*.md` or `.claude/CLAUDE.md`)

**Guard:** If `$ARGUMENTS` is empty, blank, or contains only the literal string `$ARGUMENTS`, ask the user for a scope before proceeding. Do not start the review loop without a concrete file path or glob pattern.

**Guard:** If the resolved glob matches zero files, report the empty match and ask the user to refine the scope. Do not start the review loop with an empty file set.

## Protocol

For each round (R1, R2, ...):

1. **REVIEW**: Read all files in scope. Perform adversarial audit for:
   - Internal consistency: no contradictions between files or within a file
   - Cross-file references: every referenced path, command, or agent exists
   - Completeness: no unhandled branches, missing instructions, or unstated assumptions
   - Logical coherence: no circular reasoning, non sequiturs, or ambiguous directives
   - Correctness: stated behaviors match actual implementations

2. **FIX**: Apply all fixes.

3. **REPORT**: Output structured summary:

   ```
   Round RN: X findings found, Y fixed
   Categories: [consistency: A, references: B, completeness: C, logic: D, correctness: E]
   ```

4. **DECIDE**:
   - If findings > 0 AND round < 12: proceed to next round
   - If findings = 0 AND previous round also had 0 findings: declare convergence and stop
   - If findings = 0 but previous round had > 0 findings: proceed to confirmation round
   - If round = 12 AND findings > 0: stop, report remaining findings for human review

## Checkpoint

After every 3 rounds, write a continuation checkpoint to `.claude/review-checkpoint-convergence.md` with:

- Scope and current round number
- Cumulative findings by category
- Remaining known issues
- Exact next steps to resume

## Constraints

- Do NOT invent content or factual claims
- Do NOT add content beyond what's needed to fix a finding
- Do NOT refactor code that isn't broken
- If unsure about a claim, flag it for human review rather than changing it
