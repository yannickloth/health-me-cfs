---
name: pre-commit
description: Use this skill for quick pre-commit validation before committing — run build, syntax, formatting, and broken reference checks. Use before git commit to catch issues early.
---

Quick validation before commit. Haiku-only for speed.

## Gotchas

- `nix build` must pass before other checks — if it fails, skip remaining steps.
- Changed `.typ` files detection: `git diff --cached --name-only '*.typ'`. If no `.typ` files are staged, skip steps 2-4.
- Agent invocations use the Task tool — not direct shell calls.
- `typst-syntax-fixer`, `typst-formatting-fixer`, `typst-xref-checker`, `typst-citation-checker` are agents defined as project-level agents. If any agent file is missing from `.claude/agents/`, skip that step with a warning.

## Checklist

- [ ] 1. `nix build` — must pass. Re-run after each subsequent fix step.
- [ ] 2. `typst-syntax-fixer` (haiku, Task tool) — triage warnings on changed `.typ` files. Run → fix → re-validate.
- [ ] 3. `typst-formatting-fixer` (haiku, Task tool) — check changed `.typ` files. Run → fix → re-validate.
- [ ] 4. `typst-xref-checker` (Task tool) — verify no broken `@label` references. Fix → re-validate.
- [ ] 5. `typst-citation-checker` (Task tool) — verify no broken `@citation` references. Fix → re-validate.
- [ ] 6. Final `nix build` — must pass.

## Validation Loop

After each step:

1. Run agent via Task tool
2. If agent reports fixes applied → re-run `nix build`
3. If build fails → fix → re-run agent → re-run build
4. If agent reports clean → proceed to next step

## Output

```
Pre-commit: PASS|FAIL
Build: OK|FAILED
Warnings: N
Formatting: OK|N issues
References: OK|N broken
```
