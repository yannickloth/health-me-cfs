# Full Document Review Workflow

Comprehensive review. Run phases in order (cheap→expensive).

## Phase 1: Mechanical (Haiku)

Run in parallel across all .tex files:
- `syntax-fixer` - all files
- `formatting-fixer` - all files
- `dictionary-manager` - LTeX warnings
- `nix build` - verify clean

## Phase 2: Content (Sonnet)

Per section:
- `content-reviewer` - consistency
- `style-naturalizer` - prose quality
- Language consistency check (AmE/BrE)

## Phase 3: Deep (Opus)

- `math-verifier` - each proof/derivation
- `logic-auditor` - full structure
- Abstract/intro/conclusion alignment

## Phase 4: Finalize

- Collect human review items
- Final `nix build`
- Generate report

## Cost Note

Phase 1 ~1x, Phase 2 ~10x, Phase 3 ~75x tokens. Fix earlier phases before expensive ones.
