---
name: section-review
description: Use this skill for a full review pipeline on one Typst section — syntax fixes, formatting normalization, content review, style naturalization, math verification, and final syntax check. Use when reviewing a single section or file.
---

Full review pipeline for one section. Execute stages in order.

**Scope**: $ARGUMENTS (file path or glob, e.g. `src/main/typst/mecfs/part2-pathophysiology/ch07-immune-dysfunction.typ`)

**Guard:** If `$ARGUMENTS` is empty, ask for a section path before proceeding.

## Gotchas

- **Cascade risk**: stage 3-5 fixes may reintroduce syntax/formatting issues → stage 6 exists to catch regressions.
- **Math-verifier cost**: only invoke if the section contains actual math (search for `$`, `\[`, `equation`, `cases`). Running it on prose-only sections wastes tokens.
- **Style-naturalizer vs content-reviewer ordering**: content-reviewer may flag style issues that style-naturalizer would fix → prefer completing all content fixes before style pass.
- **File modified since last stage**: if multiple stages modify the same file, check `git diff` between stages to ensure no fixes were lost.
- Agent invocations use the Task tool — not direct shell calls.

## Checklist

- [ ] 1. `typst-syntax-fixer` (haiku) — errors, warnings, environment boxes → validate with `nix build`
- [ ] 2. `typst-formatting-fixer` (haiku) — markdown→Typst remnants → validate with `nix build`
- [ ] 3. `content-reviewer` (sonnet) — consistency, completeness → validate with `nix build`
- [ ] 4. `style-naturalizer` (sonnet) — remove AI writing patterns → validate with `nix build`
- [ ] 5. `math-verifier` (opus) — only if section contains proofs or equations (search for `$`, `\[`, `equation`, `cases` first)
- [ ] 6. `typst-syntax-fixer` (haiku) — verify no regressions from stages 3-5 → final `nix build`
- [ ] 7. Collect human-flagged items from all stages

## Validation Loop per Stage

```
Run agent → check for fixes applied → nix build
  ├─ build passes → next stage
  └─ build fails → fix build error → re-run agent → nix build
```

## Output

```
Section Review: [name]
Stages: N/6
Issues found: N, fixed: M
Human attention: K items
```
