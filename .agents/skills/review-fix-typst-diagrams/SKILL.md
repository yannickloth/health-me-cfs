---
name: review-fix-typst-diagrams
description: Use this skill to iteratively review and fix Typst diagrams until convergence — review diagrams for overflow, overlap, contrast, arrows, and legends, fix issues, and re-review until zero critical or warning findings.
---

Iterative review-fix loop for Typst diagrams. Fix until critical + warning = 0.

**Scope**: $ARGUMENTS (glob or directory, e.g., `src/main/typst/volume-2/`, `src/main/typst/volume-2/part1/ch01/images/`)

## Gotchas

- INFO findings do **not** block convergence — only critical + warning must reach 0. Do not loop on INFO-only findings.
- Build verification uses the volume's `main.typ`, not individual diagram files — diagrams may compile in isolation but fail in context.
- `figures-wrapper` must have both a figure caption and a label — presence of the wrapper alone is insufficient.
- Arrow intersections with labels are **false positives** — only arrow-arrow or arrow-node intersections matter.
- When uncertain about overflow or spacing → flag as INFO for visual PDF inspection; do not guess.

## Process

Per round (R1, R2, ...):

1. **REVIEW** — Run `/review-typst-diagrams` checklist (`.opencode/agents/typst-diagram-checker.md`) on all files in scope (R1) | changed files only (R2+). Report only — no fixes yet.
2. **COUNT** — Tally: critical / warning / info.
3. **CONVERGE CHECK** — critical + warning = 0 → stop (INFO does not block convergence).
4. **FIX** — Apply fixes for all critical + warning findings.
5. **BUILD-VERIFY** — `typst compile` on volume's `main.typ`; verify zero errors. Build fails → fix build errors before continuing.
6. **REPORT** — "Round RN: X critical, Y warning, Z info. Fixed X+Y issues. Build: PASS/FAIL."
7. **CHECKPOINT** — Every 3 rounds → write `tmp/continue-review-typst-diagrams.md`: files reviewed, round number, outstanding findings, next steps.
8. **NARROW SCOPE** — Next round: restrict to files modified this round.
9. **REPEAT** from step 1. Stop when: round produces 0 critical + 0 warning | round 6 reached (report remaining as unresolved).

## Review Checklist Reference

Full checklist from `.opencode/agents/typst-diagram-checker.md`:
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

- Read `.opencode/agents/typst-diagram-checker.md` before first round
- INFO findings reported but do NOT block convergence
- Never skip build verification after fixes
- Fix introduces regression → prioritize regression in next round
- Uncertain about overflow → flag as INFO for visual PDF inspection
