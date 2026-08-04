---
name: full-document-review
description: Use this skill for comprehensive full-document review — mechanical checks first (cheap), then content review, then deep reasoning. Use when reviewing the entire document or a large portion. Run phases in order; fix earlier phases before expensive ones.
---

Comprehensive review. Run phases in order (cheap→expensive). Fix earlier phases before expensive ones.

## Gotchas

- **Phase 1 errors mask Phase 2+ issues**: Phase 2 content-reviewer may flag items that are actually syntax errors. Always re-run Phase 1 after Phase 2+ fixes before declaring clean.
- **Cost model is approximate**: actual token ratios depend on file count and complexity. Phase 2 and 3 costs scale with `.typ` file count and presence of math.
- **Phase 3 on large documents**: `logic-auditor` on the full structure may exceed context limits for large projects. When document has >20 `.typ` files, run per-part instead of full-tree.
- **Concurrent writes**: Phase 2 agents run per section — ensure no two agents modify the same file simultaneously.
- **Build after every phase**: a broken build after any phase blocks progress to the next.
- Agent invocations use the Task tool — not direct shell calls.

## Checklist

**Phase 1: Mechanical (Haiku) — parallel across all `.typ` files**
- [ ] Run `typst-syntax-fixer` on all files → fix → re-validate
- [ ] Run `typst-formatting-fixer` on all files → fix → re-validate
- [ ] Run `dictionary-manager` — LTeX warnings → fix → re-validate
- [ ] `nix build` — must pass clean
- [ ] If any fixes applied, re-run `typst-syntax-fixer` on changed files

**Phase 2: Content (Sonnet) — per section sequentially**
- [ ] `content-reviewer` — consistency, completeness (each section)
- [ ] `style-naturalizer` — prose quality (each section)
- [ ] Language consistency check (AmE/BrE) — grep for known divergence patterns
- [ ] `nix build` — must pass clean
- [ ] Re-run Phase 1 on modified files to catch regressions

**Phase 3: Deep (Opus) — only where applicable**
- [ ] `math-verifier` — each proof/derivation (search for math content first)
- [ ] `logic-auditor` — full structure (or per-part if >20 `.typ` files)
- [ ] Abstract/intro/conclusion alignment check
- [ ] `nix build` — must pass clean
- [ ] Re-run Phase 1 on modified files to catch regressions

**Phase 4: Finalize**
- [ ] Collect human review items from all phases
- [ ] Final `nix build`
- [ ] Generate consolidated report

## Validation Loop per Phase

```
Run agents → collect findings → apply fixes → nix build
  ├─ build fails → fix errors → re-run agents → nix build
  ├─ build passes → check for regressions → proceed
  └─ regressions found → fix → re-run nix build
```

## Cost Note

Phase 1 ~1×, Phase 2 ~10×, Phase 3 ~75× tokens (approximate; scales with file count and math density).
