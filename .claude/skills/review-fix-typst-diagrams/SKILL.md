---
name: review-fix-typst-diagrams
description: Iterative Typst diagram review-fix convergence loop — review diagrams, fix issues, re-review until zero critical/warning findings
---

Iterative review-fix loop for Typst diagrams. Fix until critical + warning = 0.

**Scope**: $ARGUMENTS (glob or directory, e.g., `src/main/typst/volume-2/`, `src/main/typst/volume-2/part1/ch01/images/`)

## Process

Per round (R1, R2, ...):

1. **REVIEW** — Run `/review-typst-diagrams` checklist (`.claude/agents/typst-diagram-checker.md`) on all files in scope (R1) | changed files only (R2+). Report only — no fixes yet.
2. **COUNT** — Tally: critical / warning / info.
3. **CONVERGE CHECK** — critical + warning = 0 → stop (INFO does not block convergence).
4. **FIX** — Apply fixes for all critical + warning findings.
5. **BUILD-VERIFY** — `typst compile` on volume's `main.typ`; verify zero errors. Build fails → fix build errors before continuing.
6. **REPORT** — "Round RN: X critical, Y warning, Z info. Fixed X+Y issues. Build: PASS/FAIL."
7. **CHECKPOINT** — Every 3 rounds → write `tmp/continue-review-typst-diagrams.md`: files reviewed, round number, outstanding findings, next steps.
8. **NARROW SCOPE** — Next round: restrict to files modified this round.
9. **REPEAT** from step 1. Stop when: round produces 0 critical + 0 warning | round 6 reached (report remaining as unresolved).

## Review Checklist Reference

Full checklist from `.claude/agents/typst-diagram-checker.md`:
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

- Read `.claude/agents/typst-diagram-checker.md` before first round
- INFO findings reported but do NOT block convergence
- Never skip build verification after fixes
- Fix introduces regression → prioritize regression in next round
- Uncertain about overflow → flag as INFO for visual PDF inspection
