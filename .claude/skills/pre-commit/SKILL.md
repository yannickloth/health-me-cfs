---
name: pre-commit
description: Quick validation before committing — build, syntax, formatting, broken refs. Haiku-only for speed.
---

Quick validation before commit. Haiku-only for speed.

## Steps

1. `nix build` — must pass
2. `typst-syntax-fixer` (haiku) — triage warnings on changed `.typ` files
3. `typst-formatting-fixer` (haiku) — check changed `.typ` files
4. Verify no broken `@label` or `@citation` references (`typst-xref-checker`, `typst-citation-checker`)

## Output

```
Pre-commit: PASS|FAIL
Build: OK|FAILED
Warnings: N
Formatting: OK|N issues
References: OK|N broken
```
