---
name: review-convergence
description: Autonomous adversarial review-fix loop for any file type until convergence (zero findings) or max 12 rounds.
argument-hint: <file-path-or-glob>
---

# Autonomous Review Convergence

Iterative adversarial review-fix loop until convergence (zero findings) or max rounds. Any file type.

For LaTeX-specific review (scientific rigor, citation checks, `nix build`) → use `/review-latex` instead.

## Arguments

- `$ARGUMENTS` — file path(s) or glob (e.g., `.claude/agents/*.md`, `.claude/CLAUDE.md`)

**Guard:** `$ARGUMENTS` empty/blank/literal → ask user for scope; do not start without concrete path/glob.
**Guard:** Glob resolves to zero files → report empty match; ask user to refine; do not start with empty file set.

## Protocol

Per round (R1, R2, ...):

1. **REVIEW** — Read all files in scope. Audit for:
   - Internal consistency: no contradictions within/between files
   - Cross-file references: every referenced path, command, agent exists
   - Completeness: no unhandled branches, missing instructions, unstated assumptions
   - Logical coherence: no circular reasoning, non sequiturs, ambiguous directives
   - Correctness: stated behaviors match actual implementations

2. **FIX** — Apply all fixes.

3. **REPORT:**
   ```
   Round RN: X findings found, Y fixed
   Categories: [consistency: A, references: B, completeness: C, logic: D, correctness: E]
   ```

4. **DECIDE:**
   - findings > 0 AND round < 12 → next round
   - findings = 0 → increment consecutive-clean counter (resets to 0 on any round with findings > 0)
     - counter < 2 → next round (confirmation pass)
     - counter ≥ 2 → declare convergence; stop
   - **Convergence = 2 consecutive rounds of 0 findings.** Any correction — however small — resets counter.
   - round = 12 AND findings > 0 → stop; report remaining findings for human review

## Checkpoint

Every 3 rounds → write continuation checkpoint to `.claude/review-checkpoint-convergence.md`:
- Scope + current round number
- Cumulative findings by category
- Remaining known issues
- Exact next steps to resume

## Constraints

- Do NOT invent content or factual claims
- Do NOT add content beyond what's needed to fix a finding
- Do NOT refactor code that isn't broken
- Unsure about a claim → flag for human review; do not change
