# Cline Rules - LaTeX Document Authoring

This project uses Claude Code subagent definitions in `.claude/agents/`. Cline doesn't support subagents natively, but you can follow the same patterns manually.

## Build
```bash
nix build              # → result/ms.pdf
nix run .#clean        # Clean artifacts
```

## Task → Model Mapping

When selecting a model/provider, use this guide:

### Fast/Cheap Model (Haiku-equivalent)
Use for mechanical tasks:
- Fix LaTeX syntax errors, warnings, overfull boxes
- Convert Markdown formatting to LaTeX
- Manage LTeX dictionary entries
- Check broken references

### Standard Model (Sonnet-equivalent)
Use for reasoning tasks:
- Review content consistency and completeness
- Transform AI-style prose to natural writing
- Advise on document structure and flow
- Check language consistency (AmE/BrE)

### Most Capable Model (Opus-equivalent)
Use for deep reasoning:
- Verify mathematical proofs and derivations
- Audit logical arguments for circular reasoning
- Check completeness of case analyses
- Verify abstract/conclusion alignment

## Agent Instructions

The `.claude/agents/` directory contains detailed instructions for each task type. When performing a task, read the relevant agent file for guidance:

| Task | Read |
|------|------|
| Build errors | `agents/syntax-fixer.md` |
| Formatting | `agents/formatting-fixer.md` |
| Spelling | `agents/dictionary-manager.md` |
| Content review | `agents/content-reviewer.md` |
| Style fixes | `agents/style-naturalizer.md` |
| Math verification | `agents/math-verifier.md` |
| Logic audit | `agents/logic-auditor.md` |

## Context Efficiency

- Load only files relevant to the current task
- For section review: load section + referenced definitions only
- Chunk documents at semantic boundaries (section/chapter/proof)

## Reference

- `writing-style.md` - Prose style guidelines
- `build-system.md` - Build details
- `workflows/` - Multi-step review processes
