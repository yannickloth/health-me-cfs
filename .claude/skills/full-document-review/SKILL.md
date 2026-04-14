---
name: full-document-review
description: Comprehensive full-document review — mechanical first (cheap), then content, then deep reasoning. Run phases in order; fix earlier phases before expensive ones.
---

Comprehensive review. Run phases in order (cheap→expensive). Fix earlier phases before expensive ones.

## Phase 1: Mechanical (Haiku) — run in parallel across all `.typ` files

- `typst-syntax-fixer` — all files
- `typst-formatting-fixer` — all files
- `dictionary-manager` — LTeX warnings
- `nix build` — verify clean

## Phase 2: Content (Sonnet) — per section

- `content-reviewer` — consistency
- `style-naturalizer` — prose quality
- Language consistency check (AmE/BrE)

## Phase 3: Deep (Opus)

- `math-verifier` — each proof/derivation
- `logic-auditor` — full structure
- Abstract/intro/conclusion alignment

## Phase 4: Finalize

- Collect human review items
- Final `nix build`
- Generate report

## Cost Note

Phase 1 ~1×, Phase 2 ~10×, Phase 3 ~75× tokens.
