---
name: review-typst
description: Perform iterative adversarial review rounds on the specified Typst files until convergence to zero findings
---

Perform iterative adversarial review rounds on the specified Typst files until convergence to zero findings.

**Scope**: $ARGUMENTS (file glob or section path, e.g., `src/main/typst/volume-2/part1/ch01/`, `src/main/typst/volume-3/`)

For each round (R1, R2, ...):

1. **REVIEW**: On the first round, read all files in scope. On subsequent rounds, review only the changes made in the previous round. Audit for:
   - Logical errors and reasoning gaps
   - Citation accuracy (verify keys exist in `src/main/latex/references.bib`)
   - Notation consistency (symbols match definitions)
   - Factual claims without supporting references
   - Typst correctness (undefined labels, broken cross-references, compilation errors)
   - Common Typst pitfalls (see `.claude/typst-migration-guide.md`)
   - LaTeX remnants (unconverted `\command{}` syntax)
   - Writing style (apply the checklist from `.claude/agents/style-auditor.md`): US English spelling, no AI-generated markers, vocabulary precision, appropriate tone
2. **LIST**: Report findings with severity (critical / major / minor)
3. **FIX**: Apply all fixes
4. **BUILD**: Run `typst compile` on the relevant volume's `main.typ` and verify zero errors
5. **REPORT**: "Round RN complete: X findings fixed, build status: PASS/FAIL"
6. **CHECKPOINT**: Every 3 rounds, write continuation state to `tmp/continue-review-typst.md` with: files reviewed, round number, outstanding findings, next steps
7. **REPEAT** from step 1 until TWO CONSECUTIVE rounds produce ZERO findings, or round 8 is reached

Rules:
- A single clean round is NOT sufficient to declare convergence — require two consecutive zero-finding rounds (the first clean pass may miss issues; the second confirms convergence)
- Never introduce citation keys without verifying they exist in `references.bib`
- Never introduce Typst functions without verifying they are defined in `src/main/typst/lib/`
- Check `.claude/typst-migration-guide.md` for known error classes before fixing
- Do not invent content — flag gaps for the author instead
- If a finding is ambiguous, flag it rather than silently "fixing" it
- Stop and report if build fails after fixes (do not accumulate breakage)
