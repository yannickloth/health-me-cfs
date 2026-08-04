---
name: review-latex
description: Use this skill to run autonomous adversarial review-fix-build loops on LaTeX files until convergence to zero findings or max 12 rounds. Use when reviewing .tex files for scientific rigor, citation accuracy, notation consistency, logical coherence, and build correctness.
---

# Autonomous LaTeX Review Convergence

Iterative adversarial review-fix-build loop on LaTeX files until convergence (zero findings) or max rounds.

For non-LaTeX files (Markdown, YAML, config) → use `/review-convergence` instead.

## Arguments

- `$ARGUMENTS` — file path(s) or glob (e.g., `contents/part2-pathophysiology/ch08-neurological.tex`, `contents/part2-pathophysiology/*.tex`)

**Guard:** `$ARGUMENTS` empty/blank/literal → ask user for scope; do not start without concrete path/glob.
**Guard:** Glob resolves to zero files → report empty match; ask user to refine; do not start with empty file set.

## Gotchas

- `nix build` must pass before proceeding to next round. Build failures count as findings in the current round — do not advance the round counter until the build passes.
- Do not add `\cite{}` keys without verifying the key exists in `references.bib`. Unsure about a citation → flag, don't add.
- Unsure about medical or scientific claim → flag for human review; do not change the claim itself.
- Convergence = 2 consecutive zero-finding rounds. A build failure or any correction resets the counter.

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

Every 3 rounds → write continuation checkpoint to `.agents/context/review-checkpoint-latex.md`:
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
