---
name: review-latex
description: Autonomous adversarial LaTeX review-fix-build loop until convergence (zero findings) or max 12 rounds.
argument-hint: <file-path-or-glob>
---

# Autonomous LaTeX Review Convergence

Iterative adversarial review-fix-build loop on LaTeX files until convergence (zero findings) or max rounds.

For non-LaTeX files (Markdown, YAML, config) → use `/review-convergence` instead.

## Arguments

- `$ARGUMENTS` — file path(s) or glob (e.g., `contents/part2-pathophysiology/ch08-neurological.tex`, `contents/part2-pathophysiology/*.tex`)

**Guard:** `$ARGUMENTS` empty/blank/literal → ask user for scope; do not start without concrete path/glob.
**Guard:** Glob resolves to zero files → report empty match; ask user to refine; do not start with empty file set.

## Protocol

Per round (R1, R2, ...):

1. **REVIEW** — Read all files in scope. Audit for:
   - Scientific rigor: unsupported claims, missing citations, overclaimed certainty
   - Citation accuracy: every `\cite{}` key exists in `references.bib`
   - Notation consistency: terms, abbreviations, units used consistently
   - LaTeX correctness: broken refs, undefined commands, environment nesting
   - Logical coherence: contradictions, circular reasoning, non sequiturs
   - Factual accuracy: claims conflicting with cited sources

2. **FIX** — Apply all fixes.

3. **BUILD** — `nix build`; verify zero errors.

4. **REPORT:**
   ```
   Round RN: X findings found, Y fixed, build: PASS/FAIL
   Categories: [rigor: A, citations: B, notation: C, latex: D, logic: E, factual: F]
   ```

5. **DECIDE:**
   - build FAIL → fix build errors; do not advance round (build fixes count as findings in current round)
   - findings > 0 AND round < 12 → next round
   - findings = 0 → increment consecutive-clean counter (resets to 0 on any round with findings > 0)
     - counter < 2 → next round (confirmation pass)
     - counter ≥ 2 → declare convergence; stop
   - **Convergence = 2 consecutive rounds of 0 findings.** Any correction — however small — resets counter.
   - round = 12 AND findings > 0 → stop; report remaining findings for human review

## Checkpoint

Every 3 rounds → write continuation checkpoint to `.claude/review-checkpoint-latex.md`:
- Scope + current round number
- Cumulative findings by category
- Remaining known issues
- Exact next steps to resume

## Constraints

- Do NOT invent citations or factual claims
- Do NOT add content beyond what's needed to fix a finding
- Do NOT refactor code that isn't broken
- Unsure about medical claim → flag for human review; do not change
- Build must pass before proceeding to next round
