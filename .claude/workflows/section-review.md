# Section Review Workflow

Full review pipeline for one section. Execute stages in order.

## Stages

1. **syntax-fixer** (haiku) - errors, warnings, boxes
2. **formatting-fixer** (haiku) - markdown→latex
3. **content-reviewer** (sonnet) - consistency, completeness
4. **style-naturalizer** (sonnet) - remove AI patterns
5. **math-verifier** (opus) - if section has proofs
6. **syntax-fixer** (haiku) - verify no regressions

## Invocation

```
"Review section 3 through the full pipeline"
```

## Output

```
Section Review: [name]
Stages: 6/6
Issues found: N, fixed: M
Human attention: K items
```
