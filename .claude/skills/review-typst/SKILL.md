---
name: review-typst
description: Perform iterative adversarial review rounds on the specified Typst files until convergence to zero findings
---

Perform iterative adversarial review rounds on the specified Typst files until convergence to zero findings.

**Scope**: $ARGUMENTS (file glob or section path, e.g., `typst/contents/part2-pathophysiology/ch07-immune-dysfunction.typ`, `typst/contents/part1-clinical/`)

For each round (R1, R2, ...):

1. **REVIEW**: On the first round, read all files in scope. On subsequent rounds, review only the changes made in the previous round. Audit for:
   - Logical errors and reasoning gaps
   - Citation accuracy (verify keys exist in `references.bib`)
   - Notation consistency (symbols match definitions)
   - Factual claims without supporting references
   - Typst correctness (undefined labels, broken cross-references, compilation errors)
   - Common Typst pitfalls
   - LaTeX remnants (unconverted `\command{}` syntax)
   - Writing style (apply the checklist from `.claude/agents/style-auditor.md`): US English spelling, no AI-generated markers, vocabulary precision, appropriate tone
2. **LIST**: Report findings with severity (critical / major / minor)
3. **FIX**: Apply all fixes
4. **BUILD**: Run `typst compile typst/ms.typ` and verify zero errors
5. **REPORT**: "Round RN complete: X findings fixed, build status: PASS/FAIL"
6. **CHECKPOINT**: Every 3 rounds, write continuation state to `tmp/continue-review-typst.md` with: files reviewed, round number, outstanding findings, next steps
7. **REPEAT** from step 1 until TWO CONSECUTIVE rounds produce ZERO findings, or round 8 is reached

Rules:
- A single clean round is NOT sufficient to declare convergence — require two consecutive zero-finding rounds (the first clean pass may miss issues; the second confirms convergence)
- Never introduce citation keys without verifying they exist in `references.bib`
- Never introduce Typst functions without verifying they are defined in `typst/template.typ`
- Available environments from template.typ: `achievement`, `prediction`, `postdiction`, `warning-box`, `open-question`, `requirement-box`, `hypothesis-box`, `fhypothesis`, `axiom-box`, `assumption-box`, `consistency-check`, `recommendation`, `limitation`, `model-unique`, `protocol-box`, `clinical-finding`, `keypoint`, `practical-warning`, `continuation-box`, `speculation`, `chapter-abstract`, `roadmap`, `qa`
- Star (unnumbered) variants: `achievement-star`, `prediction-star`, `hypothesis-star`, `warning-star`, `open-question-star`, `axiom-star`, `assumption-star`, `limitation-star`, `fhypothesis-star`
- Do not invent content — flag gaps for the author instead
- If a finding is ambiguous, flag it rather than silently "fixing" it
- Stop and report if build fails after fixes (do not accumulate breakage)
