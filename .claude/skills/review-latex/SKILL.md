---
name: review-latex
description: Autonomous adversarial LaTeX review-fix-build loop until convergence (zero findings) or max 12 rounds.
argument-hint: <file-path-or-glob>
---

# Autonomous LaTeX Review Convergence

Run iterative adversarial review rounds on LaTeX files until convergence (zero findings) or max rounds reached.

For non-LaTeX files (Markdown, YAML, config), use `/review-convergence` instead.

## Arguments

- `$ARGUMENTS` — file path(s) or glob pattern to review (e.g., `contents/part2-pathophysiology/ch08-neurological.tex` or `contents/part2-pathophysiology/*.tex`)

**Guard:** If `$ARGUMENTS` is empty, blank, or contains only the literal string `$ARGUMENTS`, ask the user for a scope before proceeding. Do not start the review loop without a concrete file path or glob pattern.

**Guard:** If the resolved glob matches zero files, report the empty match and ask the user to refine the scope. Do not start the review loop with an empty file set.

## Protocol

For each round (R1, R2, ...):

1. **REVIEW**: Read all files in scope. Perform adversarial audit for:
   - Scientific rigor: unsupported claims, missing citations, overclaimed certainty
   - Citation accuracy: verify every `\cite{}` key exists in `references.bib`
   - Notation consistency: terms, abbreviations, units used consistently
   - LaTeX correctness: broken refs, undefined commands, environment nesting
   - Logical coherence: contradictions, circular reasoning, non sequiturs
   - Factual accuracy: claims that conflict with cited sources

2. **FIX**: Apply all fixes.

3. **BUILD**: Run `nix build` and verify zero errors.

4. **REPORT**: Output structured summary:

   ```
   Round RN: X findings found, Y fixed, build: PASS/FAIL
   Categories: [rigor: A, citations: B, notation: C, latex: D, logic: E, factual: F]
   ```

5. **DECIDE**:
   - If build FAIL: fix build errors before counting the round as complete; do not advance. Build fixes count as additional findings in the current round's total
   - If findings > 0 AND round < 12: proceed to next round
   - If findings = 0: track a consecutive-clean counter (starts at 0, increments each round with 0 findings, resets to 0 on any round with findings > 0)
     - If consecutive-clean counter < 2: proceed to next round (confirmation pass)
     - If consecutive-clean counter ≥ 2: declare convergence and stop
   - **Convergence requires 2 consecutive rounds of 0 findings.** Any correction — however small — resets the counter and restarts the clean-pass requirement.
   - If round = 12 AND findings > 0: stop, report remaining findings for human review

## Checkpoint

After every 3 rounds, write a continuation checkpoint to `.claude/review-checkpoint-latex.md` with:

- Scope and current round number
- Cumulative findings by category
- Remaining known issues
- Exact next steps to resume

## Constraints

- Do NOT invent citations or factual claims
- Do NOT add content beyond what's needed to fix a finding
- Do NOT refactor code that isn't broken
- If unsure about a medical claim, flag it for human review rather than changing it
- Build must pass before proceeding to next round
