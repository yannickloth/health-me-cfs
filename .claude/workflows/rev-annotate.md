# Revision Annotation Workflow

Automate `\rev{N}` marker insertion and changelog updates for modified `.tex` files.

**Trigger phrases:**
- "annotate revisions since [ref]"
- "add rev markers since [commit/tag/date]"
- "mark changed paragraphs since [ref]"

## Phase 1 — Identify Changes

1. **Read version number:**
   ```bash
   grep 'newcommand{\\docversion}' revisions.tex
   ```
   Extract N (e.g., 6).

2. **List changed .tex files:**
   ```bash
   git diff --name-only <ref> -- 'contents/**/*.tex'
   ```
   If `<ref>` is a date, convert first: `git log --after="<date>" --format=%H | tail -1`

3. **Get changed line ranges per file** (compact, no content):
   ```bash
   git diff --unified=0 <ref> -- <file> | grep '^@@' | sed 's/.*+\([0-9,]*\).*/\1/'
   ```
   This outputs line ranges like `305,35` (start at line 305, 35 lines) for each hunk.
   Convert to ranges: line 305 to 305+35-1 = 339 → "305-339".

## Phase 2 — Apply Markers

4. **For each changed file**, spawn a `rev-marker` agent (haiku) with prompt:
   ```
   Apply \rev{N} markers to <file>.
   Changed line ranges (in current file): <ranges>.
   ```
   Agent type: `rev-marker` if available, otherwise `infolead-claude-subscription-router:haiku-general` with the rules from `.claude/agents/rev-marker.md` inlined in the prompt.

5. **Parallelism:** Spawn up to 3 agents at a time. Each agent has isolated context (~10-20KB).

6. **Main session does NOT read file contents** — agents handle that independently.

## Phase 3 — Verify

7. **Build check:**
   ```bash
   nix build
   ```
   Must pass. If it fails, spawn `syntax-fixer` agent on the error.

8. **Spot-check markers:**
   ```bash
   grep -n '\\rev{N}' <changed-files>
   ```
   Verify markers appear near the expected line ranges.

## Phase 4 — Changelog

Update `contents/shared/changelog.tex` with entries for the changes. This is a standard part of the workflow, not optional.

9. **Gather change summary** from Phase 1 data (which files changed, line counts) plus:
   ```bash
   git log --format="%s%n%b" <ref>..HEAD -- 'contents/**/*.tex'
   ```

10. **Append LaTeX entries** to the current version section in `contents/shared/changelog.tex`, following the existing format:
    ```latex
    \item \textbf{Chapter X --- Title}: What changed.
      \textit{Motivated by:} Why (new evidence / error correction / reviewer feedback).
    ```
    Group related changes by chapter. Write for document readers, not developers.

11. **Build again** after changelog changes:
    ```bash
    nix build
    ```

## Git Reference Formats

| User says | Git ref |
|-----------|---------|
| "since v5" | `v5..HEAD` (if tags exist) or commit hash of v5 |
| "since commit abc123" | `abc123..HEAD` |
| "since last 3 commits" | `HEAD~3..HEAD` |
| "since 2026-03-01" | Find commit: `git log --after="2026-03-01" --format=%H \| tail -1` |
| "since last release" | `git describe --tags --abbrev=0`..HEAD |

## Context Budget

- **Main session:** ~2-5KB per file (file name + line ranges only)
- **Per agent:** ~10-20KB (file content + rules)
- **Total:** Scales linearly with number of changed files, but each agent is isolated
- **Never accumulates:** Agent context is discarded after each file

## Idempotency

Running the workflow twice on the same range produces no changes the second time. The `rev-marker` agent checks for existing `\rev{N}` markers before inserting.
