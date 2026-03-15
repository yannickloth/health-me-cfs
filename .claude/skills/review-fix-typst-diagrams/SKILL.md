---
name: review-fix-typst-diagrams
description: Iterative Typst diagram review-fix convergence loop — review diagrams, fix issues, re-review until zero critical/warning findings
---

Iterative review-fix convergence loop for Typst diagrams. Reviews layout issues, applies fixes, and re-reviews until zero critical + warning findings remain.

**Scope**: $ARGUMENTS (file glob or directory path, e.g., `src/main/typst/volume-2/`, `src/main/typst/volume-2/part1/ch01/images/`)

## Process

For each round (R1, R2, ...):

1. **REVIEW**: Run the `/review-typst-diagrams` checklist (from `.claude/agents/typst-diagram-checker.md`) on all files in scope (R1) or only changed files (R2+). Do NOT apply fixes in this step — report only.
2. **COUNT**: Tally findings by severity: critical, warning, info.
3. **CONVERGE CHECK**: If critical + warning = 0, stop — convergence reached. INFO findings do NOT block convergence.
4. **FIX**: Apply fixes for all critical and warning findings.
5. **BUILD-VERIFY**: Run `typst compile` on the volume's `main.typ` and verify zero errors. If build fails, fix build errors before continuing.
6. **REPORT**: "Round RN: X critical, Y warning, Z info. Fixed X+Y issues. Build: PASS/FAIL."
7. **CHECKPOINT**: Every 3 rounds, write continuation state to `tmp/continue-review-typst-diagrams.md` with: files reviewed, round number, outstanding findings, next steps.
8. **NARROW SCOPE**: For the next round, restrict scope to only the files modified in this round.
9. **REPEAT** from step 1. Stop when:
   - A round produces 0 critical + 0 warning findings, OR
   - Round 6 is reached (report remaining findings as unresolved)

## Review Checklist Reference

Use the full checklist from `.claude/agents/typst-diagram-checker.md`:
1. Horizontal overflow
2. Vertical overflow / page break issues
3. Internal overlaps (including elements touching)
4. Containment and centering
5. Scale and readability (including squeezed layouts)
6. Spacing and tightness (excessive whitespace, inconsistent padding)
7. Figure wrapper
8. Color contrast and readability (including B&W print safety)
9. Arrow and edge visibility
10. Legend placement and coverage

## Rules

- Read `.claude/agents/typst-diagram-checker.md` before the first round
- INFO findings are reported but do NOT block convergence
- Never skip build verification after fixes
- If a fix introduces a new issue, prioritize fixing the regression in the next round
- When uncertain whether something overflows, flag as INFO for visual PDF inspection
