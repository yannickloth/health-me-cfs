> **Style rule:** All `.claude/` config files must use schematic, telegraphic style — tables/lists/symbols > prose, short phrases, filler words dropped. Goal: minimize context window consumption.

# CLAUDE.md

ME/CFS documentation — Typst PDF + Quarto HTML web generation, Nix-hermetic.

---

## Build

```bash
nix build              # → result/loth2026-mecfs.pdf
nix build .#web        # → result/ (HTML site)
nix build .#web-full   # → result/ (HTML + PDF)
nix flake check         # section-audit, qmd-label-audit, typst-source-audit, blog-audit
nix run .#clean         # .cache, .build, result, *.pdf in src/main/typst/
nix develop             # Dev shell (typst, quarto, jdk25)
```

Full build system + fix discipline: [`build-system.md`](build-system.md)

---

## Routing

| Concern | Reference |
|---------|-----------|
| Context & cost management | [`project-context/context-management.md`](project-context/context-management.md) |
| Scrape registry (MANDATORY) | `../registry/scrape-registry.md`; protocol: [`project-context/scrape-registry.md`](project-context/scrape-registry.md) |
| Skills index | [`project-context/skills-index.md`](project-context/skills-index.md) |
| Systems index (agents, formalization, literature, review) | [`project-context/systems-index.md`](project-context/systems-index.md) |

---

## Lazy-Loading

This file: routing and core behavior only. Full details on demand from `project-context/`.
