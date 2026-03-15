---
name: commit
description: Stage and commit changes as multiple meaningful commits, grouped by logical scope — never bundles unrelated changes, never commits generated/intermediary files
---

Create well-structured git commits from the current working tree changes.

**Scope**: $ARGUMENTS (optional — topic, area, or constraint hint, e.g. `typst diagrams`, `ch09 research-frontiers`, `volume-1 config`. If omitted, analyze all changes.)

## Step 1 — Gather State

Run these in parallel:
1. `git status --short` — list all changed/untracked files
2. `git diff --stat` — overview of modifications
3. `git log --oneline -10` — recent commit style to match tone and granularity

## Step 2 — Filter: Exclude Files That Must Never Be Committed

Before any grouping, mark the following as **excluded** (do not stage, do not commit):

### Always exclude
- `tmp/**` — project temp directory
- `result` / `result/**` — Nix build outputs
- `**/*.pdf` — generated PDFs (see exception below)
- `**/*.aux`, `**/*.log`, `**/*.toc`, `**/*.out`, `**/*.fls`, `**/*.fdb_latexmk`, `**/*.synctex.gz`, `**/*.bcf`, `**/*.blg`, `**/*.bbl`, `**/*.run.xml` — LaTeX build artifacts
- `**/__pycache__/**`, `**/*.pyc` — Python cache
- Any file that git already ignores (check `.gitignore`)

### Exception — PDFs that ARE legitimate to commit
A PDF is legitimate to commit if it is a **published artifact kept as a release trace** — i.e., it lives under a path like `releases/`, `published/`, `dist/`, or is explicitly named as a versioned publication (e.g., `volume-1-v1.0.pdf`). When in doubt, **ask** rather than silently excluding.

## Step 3 — Group Into Logical Commits

Examine the remaining (non-excluded) changes and group them by **logical cohesion** — changes that belong together because they implement the same thing, fix the same issue, or touch the same concern.

**Grouping heuristics:**
- Changes to the same chapter or section → one commit per chapter/area of content change
- Changes to shared infrastructure (library, preamble, build config) → separate commit
- Changes to `.claude/` config/agents/skills → separate commit from content changes
- Changes to `meta/` planning files → separate commit
- Diagram-only changes for a chapter → can be bundled with the chapter or split if large
- Formatting/style fixes separate from content changes if they're clearly mechanical

**Split when:**
- A file group spans multiple unrelated concerns
- Infrastructure and content are mixed
- The $ARGUMENTS hint implies a narrower scope than all changes

**Do not split mechanically** — 3 small coherent commits is better than 15 micro-commits.

## Commit Quality Rules

Apply these before finalizing any group:

- **Atomic**: each commit must leave the repo in a buildable state — never strand a half-done change
- **One logical change**: if the subject line needs "and", consider splitting into two commits
- **Separate concerns**: refactoring/renaming in its own commit; behavior/content changes in another; pure formatting/whitespace changes in their own commit
- **Imperative mood only**: "add", "fix", "update", "remove" — never "added", "adding", "fixed", "fixes"
- **No fix-up commits for unpublished work**: if the previous commit needs correcting before pushing, note it and ask the user whether to amend/squash instead of creating a "fix previous" commit
- **No "and" rule**: if you cannot describe the commit without "and", it likely needs splitting

## Commit Type Prefixes (Conventional Commits)

Every subject line must start with a type prefix followed by an optional scope in parentheses:

```
<type>(<scope>): <subject>
```

### Standard types
| Prefix | Use for |
|--------|---------|
| `feat` | New content, new feature, new file added with intent |
| `fix` | Correction of an error, broken reference, wrong content |
| `refactor` | Restructuring without changing meaning or behavior |
| `style` | Pure formatting/whitespace changes, no logic change |
| `chore` | Maintenance: tooling, config, build, dependencies |
| `docs` | Documentation, README, planning files (`meta/`) |
| `ci` | CI/CD pipeline, Nix flake, build configuration |
| `revert` | Reverting a previous commit |

### Book-specific types (use instead of generic ones when applicable)
| Prefix | Use for |
|--------|---------|
| `content` | Prose additions or edits to book chapters |
| `diagram` | Diagram-only changes (TikZ, CeTZ, Typst figures) |
| `config` | `.claude/` agents, skills, CLAUDE.md, settings |
| `exercise` | Exercise or solution additions/edits |

### Scope (optional but recommended for clarity)
Use the volume/chapter as scope when the change is localized:
- `feat(vol-1/ch09):` — change in Volume 1, Chapter 9
- `diagram(vol-1/ch02):` — diagram change in Volume 1, Chapter 2
- `config(skills):` — change to Claude skills
- `chore(lib):` — change to shared Typst/LaTeX library

Omit scope when the change is cross-cutting or repo-wide.

### Examples
```
content(vol-1/ch09): expand research-frontiers section
diagram(vol-1/ch04): replace text labels with CeTZ nodes
fix(vol-1/ch02): correct biconditional proof step
chore(build): update Nix flake inputs
config(skills): add /commit skill with plan-before-execute
refactor(lib): split monolithic book-template into modules
```

## Step 4 — Draft Commit Messages

For each group, draft a commit message:
- **Subject line** (≤72 chars): `<type>(<scope>): <imperative verb> <description>` — lowercase, no period
- **Body** (optional, when context isn't obvious): 1–3 lines explaining *why*, not what
- End with: `Co-Authored-By: Claude Sonnet 4.6 <noreply@anthropic.com>`

## Step 5 — Execute

For each commit in order:
1. `git add <specific files>` — stage only the files for this commit
2. `git commit -m "$(cat <<'EOF' ... EOF)"` — commit with the drafted message
3. Verify with `git status` that nothing unexpected was staged

After all commits: show `git log --oneline -N` (where N = number of commits made) so the user can see the result.

## Step 6 — Report

Summarize:
- N commits created
- Files committed vs. excluded
- Any files left unstaged (untracked or modified but not in scope)
