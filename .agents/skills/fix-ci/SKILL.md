---
name: fix-ci
description: Use this skill when nix build or GitHub Actions CI fails — fix Nix/Typst build errors including broken labels, duplicate bibliography keys, missing includes, and duplicate definitions. Use when CI is failing or build produces errors.
---

Run `ci-build-fixer` agent. Haiku-only for speed.

## Gotchas

- Novel error types may confuse `ci-build-fixer` — if agent returns no fixes, grep the error manually and retry with more context.
- `nix flake check` may have pre-existing failures unrelated to the current change. Capture the pre-fix `nix flake check` output and diff against post-fix to distinguish new failures from pre-existing ones.
- Some errors cascade — fix the first error in the build log, not the last. Build errors are printed in compilation order.
- Changed files may not be the cause — `nix build` can fail from upstream changes or dependency drift. Check `git log` for recent changes.
- Agent invocations use the Task tool — not direct shell calls.

## Checklist

- [ ] 1. Collect errors: `nix build --print-build-logs 2>&1 | grep "error:"` — save to temp file
- [ ] 2. Baseline flake check: `nix flake check 2>&1` → record pre-existing failures
- [ ] 3. Delegate to `ci-build-fixer` (Task tool) with the error log
- [ ] 4. Re-run `nix build` → must pass
- [ ] 5. `nix flake check` → diff against baseline; no new failures
- [ ] 6. If build still fails → grep errors, retry `ci-build-fixer` with expanded context (max 3 retries)

## Validation Loop

1. Collect errors → delegate to `ci-build-fixer`
2. Agent applies fixes → re-run `nix build`
3. If build fails → re-grep errors → re-delegate (max 3 rounds)
4. If 3 rounds pass with no progress → report stuck, output remaining errors for manual fix
5. Build passes → validate `nix flake check` diff

## Output

```
CI fix: PASS|FAIL
Errors found: N
Errors fixed: N
Build: OK|FAILED
Checks: OK|FAILED (N new failures)
```
