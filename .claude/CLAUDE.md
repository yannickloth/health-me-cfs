> **Style rule:** All `.claude/` config files must use schematic, telegraphic style — tables/lists/symbols > prose, short phrases, filler words dropped. Goal: minimize context window consumption.

# CLAUDE.md

ME/CFS documentation (Typst-based) with automatic subagent delegation for quality assurance.

---

## Build

```bash
nix build              # → result/ms.pdf
nix run .#clean        # Clean artifacts
```

---

## Lazy-Loading Principle

Inline documentation cost > lazy search + read on demand.

- This file: routing and core behavior only
- Full details: load from `.claude/project-context/` on demand

---

## Context and Cost Management

Full protocol: [`.claude/project-context/context-management.md`](.claude/project-context/context-management.md)

---

## Scrape Registry (MANDATORY)

Registry location: `registry/scrape-registry.md` — check before scraping any URL.

Full protocol: [`.claude/project-context/scrape-registry.md`](.claude/project-context/scrape-registry.md)

---

## Skills and Multi-Step Operations

Full index: [`.claude/project-context/skills-index.md`](.claude/project-context/skills-index.md)

---

## Systems Index (Lazy-Load)

Agents, formalization, literature, medical case management, review, quality — all lazy-load.

Full index: [`.claude/project-context/systems-index.md`](.claude/project-context/systems-index.md)
