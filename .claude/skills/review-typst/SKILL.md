---
name: review-typst
description: Perform iterative adversarial review rounds on the specified Typst files until convergence to zero findings
---

Iterative adversarial review-fix-build loop on Typst files until convergence (zero findings) or max rounds.

**Scope**: $ARGUMENTS (glob or path, e.g., `typst/contents/part2-pathophysiology/ch07-immune-dysfunction.typ`, `typst/contents/part1-clinical/`)

## Protocol

Per round (R1, R2, ...):

1. **REVIEW** — R1: read all files in scope. R2+: review only changes from previous round. Audit for:
   - Logical errors + reasoning gaps
   - Citation accuracy (keys exist in `references.bib`)
   - Notation consistency (symbols match definitions)
   - Factual claims without supporting references
   - Typst correctness (undefined labels, broken cross-references, compilation errors)
   - Common Typst pitfalls
   - LaTeX remnants (unconverted `\command{}` syntax)
   - Writing style (checklist from `.claude/agents/style-auditor.md`): US English, no AI markers, vocabulary precision, appropriate tone

2. **LIST** — Report findings with severity: critical / major / minor

3. **FIX** — Apply all fixes.

4. **BUILD** — `typst compile typst/ms.typ`; verify zero errors.

5. **REPORT** — "Round RN complete: X findings fixed, build: PASS/FAIL"

6. **CHECKPOINT** — Every 3 rounds → write `tmp/continue-review-typst.md`: files reviewed, round number, outstanding findings, next steps.

7. **REPEAT** from step 1 until two consecutive rounds produce zero findings | round 8 reached.

## Rules

- Convergence = **two consecutive zero-finding rounds** (first clean pass may miss issues; second confirms)
- Never introduce citation keys without verifying in `references.bib`
- Never introduce Typst functions without verifying in `typst/template.typ`
- Available environments from `template.typ`: `achievement`, `prediction`, `postdiction`, `warning-box`, `open-question`, `requirement-box`, `hypothesis-box`, `fhypothesis`, `axiom-box`, `assumption-box`, `consistency-check`, `recommendation`, `limitation`, `model-unique`, `protocol-box`, `clinical-finding`, `keypoint`, `practical-warning`, `continuation-box`, `speculation`, `chapter-abstract`, `roadmap`, `qa`
- Star (unnumbered) variants: `achievement-star`, `prediction-star`, `hypothesis-star`, `warning-star`, `open-question-star`, `axiom-star`, `assumption-star`, `limitation-star`, `fhypothesis-star`
- Do not invent content — flag gaps for author instead
- Ambiguous finding → flag; do not silently "fix"
- Build fails after fixes → stop + report; do not accumulate breakage
