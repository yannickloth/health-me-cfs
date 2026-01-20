# Pre-Commit Workflow

Quick validation before commit. Haiku-only for speed.

## Steps

1. `nix build` - must pass
2. `syntax-fixer` - triage warnings
3. `formatting-fixer` - check changed .tex files
4. Verify no broken `\ref{}` or `\cite{}`

## Output

```
Pre-commit: PASS|FAIL
Build: OK|FAILED
Warnings: N
Formatting: OK|N issues
References: OK|N broken
```
