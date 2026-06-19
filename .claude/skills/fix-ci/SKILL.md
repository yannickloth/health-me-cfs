---
name: fix-ci
description: Fix Nix/Typst build failures — broken labels, duplicate bib keys, missing includes, duplicate definitions. Use when nix build or GitHub Actions fails.
---

Run `ci-build-fixer` agent. Haiku-only for speed.

## Steps

1. `nix build --print-build-logs 2>&1 | grep "error:"` → collect errors
2. Delegate to `ci-build-fixer` with the error log
3. `nix build` → must pass
4. `nix flake check` → must pass (or pre-existing failures only)

## Output

```
CI fix: PASS|FAIL
Errors found: N
Errors fixed: N
Build: OK|FAILED
Checks: OK|FAILED
```
