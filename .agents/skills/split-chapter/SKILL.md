---
name: split-chapter
description: Use this skill to split a monolithic Typst chapter or section file into the canonical content hierarchy. Use when a chapter file contains both prose and environment instances that should be extracted into typed subdirectory files. Runs content-splitter agent then verifies all post-conditions and build.
---

Split one chapter/section file into canonical structure. Iso-functional — rendered book unchanged.

## Gotchas

- `content-splitter` reads `.agents/context/content-structure-convention.md` for the canonical hierarchy — ensure this file exists and is current before splitting.
- Baseline citation count uses `grep -c "@[a-zA-Z]"` for Typst `@label` references. This pattern does NOT match markdown-style `<label>` references — adjust grep pattern if the project uses both.
- Build command must be resolved from `AGENTS.md` before running. If not found, ask user for the build command.
- After a successful split, the original monolithic file must be deleted. Skipping this creates duplicate definitions at build time.
- Agent invocations use the Task tool — not direct shell calls.

## Usage

```
/split-chapter <path-to-file>
```

## Steps

1. **Pre-flight** — confirm file exists and is tracked in git (recovery point)
   ```bash
   git status {file}
   ```

2. **Baseline** — record pre-split counts for post-condition verification
   ```bash
   grep -c "@[a-zA-Z]" {file}   # citations (Typst @label style)
   grep -c "<[a-zA-Z]" {file}   # labels (markdown-style, if used)
   grep -c "^#" {file}           # environment calls
   {build-command}    # resolve from AGENTS.md — must pass before split
   ```

3. **Split** — run `content-splitter` agent (Task tool) on the target file

4. **Audit** — run `structure-auditor` agent (Task tool) on the new chapter directory
   - Must report COMPLIANT before proceeding

5. **Build** — resolve command from `AGENTS.md` (see convention §Build Command), run it
   - Must pass with no new errors

6. **Remove old file** — delete the original monolithic file (backed by git)

## Verification Checklist

- [ ] Original file exists and is tracked in git (rollback anchor)
- [ ] Pre-split `nix build` passes (clean baseline)
- [ ] Citation counts preserved (pre-split vs post-split grep across all extracted files)
- [ ] Label counts preserved
- [ ] Environment call counts preserved
- [ ] `structure-auditor` reports COMPLIANT on new directory
- [ ] `nix build` passes after split with no new errors
- [ ] Original monolithic file deleted

## Report

```
split-chapter: PASS | FAIL
File: {original}
New dir: {chapter-dir}/
Environments extracted: {N}
Build: OK | FAILED
Audit: COMPLIANT | {N} violations
```

## Rollback

If any step fails:
```bash
git checkout -- {original-file}
rm -rf {new-chapter-dir}
```
