# CLAUDE.md

LaTeX document authoring with automatic subagent delegation.

## Build

```bash
nix build              # → result/ms.pdf
nix run .#clean        # Clean artifacts
```

## Subagent System

This project uses custom subagents in `.claude/agents/`. Claude automatically delegates tasks to the appropriate agent based on matching your request to agent descriptions.

### Available Subagents

| Agent | Model | Use When |
|-------|-------|----------|
| `syntax-fixer` | haiku | Build errors, warnings, overfull boxes |
| `formatting-fixer` | haiku | Markdown in .tex, formatting issues |
| `dictionary-manager` | haiku | LTeX warnings, spelling false positives |
| `content-reviewer` | sonnet | Checking consistency, completeness |
| `style-naturalizer` | sonnet | AI-sounding text needs humanizing |
| `math-verifier` | opus | Verifying proofs, derivations |
| `logic-auditor` | opus | Circular reasoning, completeness gaps |

### How It Works

1. You make a request (e.g., "fix the build errors")
2. Claude matches request to agent `description` fields
3. Claude spawns the matching subagent with appropriate model
4. Subagent executes with its restricted toolset
5. Results return to main conversation

### Context Minimization

Subagents have restricted `tools:` to enforce focus:
- Read-only agents cannot modify files
- Each agent receives only relevant context
- Never pass entire document for single-section tasks

## Workflows

For multi-step operations, see `.claude/workflows/`:
- `pre-commit.md` - Quick validation before commit
- `section-review.md` - Full review pipeline for one section
- `full-document-review.md` - Comprehensive document review

Trigger with: "run the pre-commit workflow" or "review section 3"

## Reference Files (load on demand)

| File | Load When |
|------|-----------|
| `writing-style.md` | Editing prose, naturalizing text |
| `build-system.md` | Build issues, deployment |
| `preamble-setup.md` | Preamble configuration |
| `latex-conventions.md` | Formatting questions |
| `systems/mcp-integration.md` | MCP/LSP setup |
