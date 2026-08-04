> **Style rule:** All `.agents/context/` config files must use schematic, telegraphic style — tables/lists/symbols > prose, short phrases, filler words dropped. Goal: minimize context window consumption.

# AGENTS.md

ME/CFS documentation — Typst PDF + Quarto HTML web generation, Nix-hermetic.

---

## Response language

Write all prose replies in **ASD-STE100 Simplified Technical English**: active
voice, short sentences, one instruction per sentence, approved words only, no
synonyms, no slang or idioms. This applies to prose only — do not change code,
code comments, commit messages, file contents, or command output.

---

## Build

```bash
nix build              # → result/loth2026-mecfs.pdf
nix build .#web        # → result/ (HTML site)
nix build .#web-full   # → result/ (HTML + PDF)
nix flake check         # section-audit, qmd-label-audit, typst-source-audit, blog-audit
nix run .#clean         # .cache, .build, result, *.pdf in src/main/typst/
nix develop             # Dev shell (typst, quarto, jdk25; TYPST_PACKAGE_CACHE_PATH, TYPST_FONT_PATHS preset)
```

Full build system + fix discipline: [`.agents/context/build-system.md`](.agents/context/build-system.md)

---

## Routing

| Concern | Reference |
|---------|-----------|
| Global operating rules (git safety, never-fabricate, anti-sycophancy, tool discipline, IVP) | [`.agents/context/global-rules.md`](.agents/context/global-rules.md) |
| Context & cost management | [`.agents/context/context-management.md`](.agents/context/context-management.md) |
| Scrape registry (MANDATORY) | `../registry/scrape-registry.md`; protocol: [`.agents/context/scrape-registry.md`](.agents/context/scrape-registry.md) |
| Skills index | [`.agents/context/skills-index.md`](.agents/context/skills-index.md) |
| Systems index (agents, formalization, literature, review) | [`.agents/context/systems-index.md`](.agents/context/systems-index.md) |

---

## Lazy-Loading

This file: routing and core behavior only. Full details on demand from `.agents/context/`.
