---
name: commit
description: Stage and commit changes as multiple meaningful commits, grouped by logical scope — never bundles unrelated changes, never commits generated/intermediary files
---

Stage and commit working tree changes as logically grouped commits.

**Scope**: $ARGUMENTS (optional — topic/area/constraint hint, e.g. `typst diagrams`, `ch09 research-frontiers`. If omitted, analyze all changes.)

## Step 1 — Gather State (parallel)

1. `git status --short` — changed/untracked files
2. `git diff --stat` — modification overview
3. `git log --oneline -10` — recent commit style to match

## Step 2 — Filter: Never-Commit Files

Mark as **excluded** (do not stage):

**Always exclude:**
- `tmp/**` — project temp
- `result` / `result/**` — Nix build outputs
- `**/*.aux`, `**/*.log`, `**/*.toc`, `**/*.out`, `**/*.fls`, `**/*.fdb_latexmk`, `**/*.synctex.gz`, `**/*.bcf`, `**/*.blg`, `**/*.bbl`, `**/*.run.xml` — LaTeX artifacts
- `**/__pycache__/**`, `**/*.pyc` — Python cache
- Files already in `.gitignore`

**PDF rule — decide by provenance, not extension:**

| PDF kind | Action | Examples |
|----------|--------|----------|
| **Source copy** (a genuine copy of an external artifact we did NOT generate — must be retained) | **COMMIT** (default) | `Literature/**` cited papers, guidelines, downloaded references |
| **Published artifact / release trace** | **COMMIT** | `releases/`, `publications/`, `dist/`, explicitly versioned deliverables |
| **Generated** (produced by our build from source in-repo) | **EXCLUDE** | `result/loth2026-mecfs.pdf`, `src/**/*.pdf` build output, Typst/LaTeX compile output |

- Test: "Could we recreate this PDF byte-for-byte from source in this repo by running the build?" **Yes → generated → exclude. No → source/artifact → commit.**
- A source-copy PDF is **content**, not a build product — losing it loses irreplaceable cited material. Do NOT skip it.
- Only ask the user when provenance is genuinely unclear after applying the test; otherwise commit source copies without prompting.

## Step 3 — Group Into Logical Commits

Group remaining changes by **logical cohesion** (same thing / same fix / same concern).

**Grouping heuristics:**
- Same chapter/section → one commit per chapter/area
- Shared infrastructure (library, preamble, build config) → separate commit
- `.claude/` config/agents/skills → separate from content
- `meta/` planning files → separate commit
- Diagram-only changes → bundle with chapter or split if large
- Mechanical formatting/style fixes → separate from content

**Split when:** file group spans unrelated concerns | infrastructure mixed with content | $ARGUMENTS implies narrower scope

**Do not split mechanically** — 3 coherent commits > 15 micro-commits.

## Commit Quality Rules

- **Atomic**: every commit leaves repo buildable — no stranded half-changes
- **One logical change**: subject needs "and" → split
- **Separate concerns**: refactor/rename | behavior/content | formatting — each in own commit
- **Imperative mood only**: "add", "fix", "update", "remove" — never past tense
- **No fix-up commits for unpublished work**: ask user to amend/squash instead
- **No "and" rule**: can't describe without "and" → needs splitting

## Commit Type Prefixes (Conventional Commits)

Format: `<type>(<scope>): <subject>`

**Standard types:**

| Prefix | Use for |
|--------|---------|
| `feat` | New content, new feature, new file added with intent |
| `fix` | Correction of error, broken reference, wrong content |
| `refactor` | Restructuring without changing meaning or behavior |
| `style` | Pure formatting/whitespace, no logic change |
| `chore` | Maintenance: tooling, config, build, dependencies |
| `docs` | Documentation, README, planning files (`meta/`) |
| `ci` | CI/CD pipeline, Nix flake, build configuration |
| `revert` | Reverting a previous commit |

**Book-specific types (prefer over generic):**

| Prefix | Use for |
|--------|---------|
| `content` | Prose additions or edits to book chapters |
| `diagram` | Diagram-only changes (TikZ, CeTZ, Typst figures) |
| `config` | `.claude/` agents, skills, CLAUDE.md, settings |
| `exercise` | Exercise or solution additions/edits |

**Scope** (optional, recommended for localized changes):
- `feat(vol-1/ch09):` | `diagram(vol-1/ch02):` | `config(skills):` | `chore(lib):`
- Omit for cross-cutting / repo-wide changes

**Examples:**
```
content(vol-1/ch09): expand research-frontiers section
diagram(vol-1/ch04): replace text labels with CeTZ nodes
fix(vol-1/ch02): correct biconditional proof step
chore(build): update Nix flake inputs
config(skills): add /commit skill with plan-before-execute
refactor(lib): split monolithic book-template into modules
```

## Step 4 — Draft Commit Messages

Per group:
- **Subject** (≤72 chars): `<type>(<scope>): <imperative verb> <description>` — lowercase, no period
- **Body** (optional, non-obvious context only): 1–3 lines explaining *why*, not what
- End with: `Co-Authored-By: Claude Sonnet 4.6 <noreply@anthropic.com>`

## Step 5 — Execute

Per commit in order:
1. `git add <specific files>` — stage only this commit's files.
2. **Pre-commit staging check (MANDATORY — catches parallel-session contamination):** run `git diff --cached --name-only` and confirm the staged set contains ONLY this commit's intended files. `git commit` commits *everything staged*, not just what you just added — a parallel session may have left **foreign files pre-staged** (shown as `A `/`M ` in the first column of `git status --short`). Unstage any foreign file with `git restore --staged <file>` (index-only; NOT history rewriting, safe). Only proceed when `git diff --cached --name-only` == your intended file list exactly.
3. **Cohesion check (MANDATORY — staged files must belong together):** before committing, verify the staged set is one logical change, not a bundle.
   - Inspect content, not just names: `git diff --cached` (or `--stat` for large sets) to confirm each file's change serves the *same* concern.
   - IVP test: do all staged files share the same change driver? (same fix / same feature / same section / same infra concern). If a file would need to change for a *different* reason than the others, it does **not** belong in this commit.
   - "and" test: if the drafted subject needs "and" to describe the staged set → the set is not cohesive → split.
   - On failure: `git restore --staged <outlier>` to defer it to its own commit; re-run this check until the staged set is cohesive.
   - Only proceed when every staged file demonstrably belongs to this one logical change.
4. `git commit -m "$(cat <<'EOF' ... EOF)"` — commit with drafted message.
5. Verify with `git status` — nothing unexpected committed; foreign files still unstaged/untracked for their owning session.

After all commits: show `git log --oneline -N` (N = commits made).

## Step 6 — Report

- N commits created
- Files committed vs. excluded
- Files left unstaged (untracked or out-of-scope)
