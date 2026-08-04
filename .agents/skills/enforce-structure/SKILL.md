---
name: enforce-structure
description: Use this skill to bring Typst content structure into compliance with the canonical hierarchy — audit and fix in a convergence loop until zero violations or max 10 rounds. Fixes aggregator purity, typed subdirectory placement, file naming, orphan files, and import chain violations.
---

Convergence loop: audit → fix → re-audit until COMPLIANT or max rounds reached.

## Gotchas

- `./split-chapter` produces a new directory — the old monolithic file must be removed after successful split. Failing to delete it creates duplicate definitions and build failures.
- `structure-auditor` reads `~/.claude/content-structure-convention.md` — ensure this file exists before running. If missing, the audit will fail or produce false negatives.
- Build command resolution from `AGENTS.md` requires a grep for "Build Command" — if the convention uses a different heading, resolution will fail silently. Verify by reading `AGENTS.md` convention directly.
- Import path computation for violations D/E: paths are relative to the chapter aggregator, not to `lib.typ`. Incorrect relative paths won't be caught until `nix build`.
- Max 10 rounds is a safety limit — if violations decrease each round but don't hit zero by round 10, consider that the last few may be false positives or require structural redesign.

## Usage

```
/enforce-structure <target-dir>
```

Target can be a chapter dir, part dir, or full `src/` tree.

## Steps

1. **Resolve build command** — read project CLAUDE.md (see convention §Build Command)

2. **Initial audit** — run `structure-auditor` on target
   - If COMPLIANT: done, report clean
   - If violations found: proceed to fix loop

3. **Fix loop** (max 10 rounds)

   For each round, group violations by type and fix:

   | Violation | Fix |
   |-----------|-----|
   | A — Aggregator purity | Run `/split-chapter` on the offending aggregator file |
   | B — Typed subdir placement | Move file to correct subdir; update `#include` in parent aggregator |
   | C — File naming | Rename file to `{prefix}-{slug}.typ`; update `#include` in parent |
   | D — Orphan file | Add `#include` in the correct parent aggregator at correct reading position |
   | E — Missing import | Add correct `#import` line (compute relative path to `lib.typ`) |
   | F — Duplicate label | Remove label from duplicate; keep in canonical location only |

   After each fix batch:
   - Run `{build-command}` — must stay green; halt if it breaks
   - Re-run `structure-auditor`
     - COMPLIANT → exit loop
     - Violations reduced → next round
     - Violations unchanged → halt, report stuck (manual review needed)

4. **Final build** — run `{build-command}`, must pass

5. **Report**

```
enforce-structure: COMPLIANT | STUCK | BUILD-FAILED

Target: {dir}
Rounds: {N}

Round 1: {N} violations → fixed {M}  (A:{a} B:{b} C:{c} D:{d} E:{e} F:{f})
Round 2: {N} violations → fixed {M}
...
Final:   0 violations  (COMPLIANT)

Build: OK | FAILED
```

## Stuck condition

If a round produces zero fixes but violations remain, report each stuck violation
with file, line, violation type, and reason. Do not loop further — manual review needed.

## Safety

- ✗ Never fix by deleting content — only by moving/restructuring
- ✗ Never declare a fix complete without re-running the build
- ✓ All 7 post-conditions from the convention apply to every fix operation
- ✓ `/split-chapter` already verifies its own post-conditions — trust its output
