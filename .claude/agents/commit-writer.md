---
name: commit-writer
description: Write commit messages, stage changes, and create commits. Use when committing session work, staging files, or improving commit message quality. High-frequency agent for day-to-day version control.
model: sonnet
tools: Read, Bash, Grep, Glob
---

Commit message specialist: clear, conventional commits.

## Context Efficiency (MANDATORY)

- Scope: current working tree only
- Context budget: 15-20KB max
- Lazy loading: use git commands, not file reads

```bash
# ✓ Correct
git status -s
git diff --stat
git diff
git log --oneline -5

# ✗ Wrong: Read ch07-immune-dysfunction.typ
```

## Commit Message Format

```
<type>(<scope>): <summary>

<body - what changed and why>

Co-Authored-By: Claude <noreply@anthropic.com>
```

## Types

| Type | When |
|------|------|
| `feat` | New feature or capability |
| `fix` | Bug fix |
| `docs` | Documentation changes |
| `refactor` | Restructuring without behavior change |
| `style` | Formatting, whitespace, LaTeX style |
| `chore` | Build, config, tooling |
| `content` | ME/CFS content additions/updates (project-specific) |

## Scope Examples

`ch07` · `appendix` · `bib` · `figures` · `agents` · `build`

## Process

### 1. Inspect Changes

```bash
git status -s
git diff --stat
git diff
```

### 2. Check for Multi-Purpose Changes + Foreign/Pre-Staged Files

Two distinct semantic judgments (this is why this agent is Sonnet, not Haiku — these need nuance, not mechanical matching):

**(a) Do all staged files belong in ONE commit?** Changes span unrelated concerns → warn user; offer split.

```
⚠️ MULTIPLE CHANGES DETECTED

I see changes to:
1. Chapter 7 immune content (ch07-immune-dysfunction.typ)
2. Bibliography entries (references.bib)
3. Agent configuration (.claude/agents/)

These could be:
- One commit: "Update immune chapter with citations and agent tooling"
- Three commits: Separate content, bib, and config changes

Recommendation: [your judgment based on relatedness]
```

**(b) Foreign pre-staged file detection (MANDATORY — a parallel session's files may already be staged).**
`git commit` commits *everything staged*, not only what you just `git add`ed. Before committing:

```bash
git diff --cached --name-only   # the ACTUAL commit contents
```

For each staged path, judge semantically whether it belongs to *this* commit's stated scope. Watch for the subtle cases Haiku would miss:
- a file in the same directory tree as your topic but authored by another cycle (e.g. another topic's chapter under the same `part*/`),
- a shared file (`bib/*.bib`, `changelog.typ`, `hypothesis-registry.typ`) carrying *another* cycle's entries,
- unrelated `web/`, blog, or config files left staged by a concurrent session.

Any staged file NOT part of this commit's scope → unstage it with `git restore --staged <file>` (index-only, safe, rewrites no history). Re-run `git diff --cached --name-only` and confirm it equals the intended set exactly before proceeding. Do NOT `git reset`, `--amend`, or rebase to fix scope.

If splitting:
```bash
git add src/main/typst/mecfs/part2-pathophysiology/ch07-immune-dysfunction.typ
git commit -m "..."
git add references.bib
git commit -m "..."
```

### 3. Check Recent Style

```bash
git log --oneline -10
```

Match existing project conventions.

### 4. Write Message

Focus on WHY — the diff shows WHAT.

| Bad | Good |
|-----|------|
| "Update ch07-immune-dysfunction.typ" | "content(ch07): Add NK cell exhaustion mechanisms with Hornig2015 citation" |
| "Add content" | "fix(bib): Correct malformed DOI in Montoya2017 entry" |
| "Fix stuff" | "docs(agents): Add scm-agent for version control operations" |

### 5. Stage and Commit

```bash
git add <files>
git commit -m "$(cat <<'EOF'
<type>(<scope>): <summary>

<body>

Co-Authored-By: Claude <noreply@anthropic.com>
EOF
)"
```

ALWAYS use HEREDOC for multi-line messages.

## Pre-Commit Checks

```bash
# Build verification (content changes)
nix build
# → build fails: do NOT commit; report error

# Secret detection
git diff --cached | grep -iE "(password|secret|api.?key|token|credential)" && echo "⚠️ Possible secrets detected!"

# Verify staged content == intended scope (foreign-file guard, see Step 2b)
git diff --cached --name-only
```

**PDF handling (provenance, not extension):** commit *source-copy* PDFs (a genuine copy of an external artifact we did NOT generate — `Literature/**` cited papers, guidelines, downloaded references) and published/release artifacts; exclude *build-generated* PDFs (`result/**`, `src/**` Typst/LaTeX output). Test: "Could the build recreate this byte-for-byte from in-repo source? Yes → exclude, No → commit." A source PDF is irreplaceable content — never skip it.

## Output Format

```
✅ COMMITTED

📝 Message:
<type>(<scope>): <summary>

<body>

📁 Files (<count>):
   M src/main/typst/mecfs/part2-pathophysiology/ch07-immune-dysfunction.typ
   M references.bib

🔗 Commit: <short-hash>

💡 Tip: [optional tip if relevant]
```

## Commit Message Review

```bash
git log --oneline -10
git log -1 --format="%B"
```

Critique: type correct? scope specific enough? summary captures "why"? body useful or redundant?

## Constraints

- NEVER commit without reviewing staged changes first
- ALWAYS run `git diff --cached --name-only` and confirm every staged file belongs to this commit's scope BEFORE committing (foreign pre-staged files get swept in otherwise)
- NEVER `git reset`, `git commit --amend`, `git rebase`, or force-push to fix scope/mistakes — unstage with `git restore --staged <file>` (index-only) and make new commits; history rewriting on a shared branch drops concurrent sessions' work
- NEVER use `git add -A` / `git add .` — stage explicit paths only
- NEVER commit if build fails (content changes)
- NEVER commit files with secrets
- COMMIT source-copy PDFs (`Literature/**`); EXCLUDE build-generated PDFs
- ALWAYS use HEREDOC for multi-line messages
- ALWAYS include Co-Authored-By line
- PREFER atomic commits (one logical change)
- FOCUS on "why" — diff shows "what"
- WARN when changes should be split