# AGENTS.md — `ops/` directory conventions

Authoritative rules for where the `/integrate-topic` (and related) pipeline writes
its artifacts. Agents, skills, and sessions MUST follow these. This file is the
single source of truth; other docs reference it rather than restating it.

---

## What `ops/` is

`ops/` holds the research-pipeline's **coordination and provenance artifacts** —
the bookkeeping and "show your work" layer of `/integrate-topic`. It is NOT the
document. The document is `src/main/typst/mecfs/`. Nothing in `ops/` is read by
the build; nothing in the built document may reference `ops/` paths.

## Directory map — write artifacts to the RIGHT place by change-driver

| Path | Contents | Change-driver | Tracked in git |
|------|----------|---------------|----------------|
| `ops/plans/` | integration plans; `hypotheses-trees/` (subtrees + root index) | pipeline coordination / per-topic tracking | ✓ yes |
| `ops/queued-topics.md` | queued `/integrate-topic` cycles | queue persistence across context rotations | ✓ yes |
| `ops/research/` | literature summaries, search logs, research-gap agendas | Phase-1 reproducibility record | ✓ yes |
| `ops/brainstorms/` | brainstorm idea backlogs (`brainstorm-<slug>-<date>.md`) | future-cycle idea backlog | ✓ yes |
| `ops/integration-guides/` | Phase-5 integration guides; un-merged bib/registry fragments | within-cycle scaffolding cited by plans | ✓ yes |
| `tmp/` (NOT under ops/) | synthesis, compat-audit, coherence-audit, synonym-map, adversarial, falsifiability, quality, retro, continuation prompts | one-cycle disposable audit scratch | ✗ gitignored |

## Hard rules

1. **Kept artifacts → `ops/<subfolder>/`; disposable audit scratch → `tmp/`.**
   - `literature-*`, `search-log-*`, research agendas → `ops/research/`
   - `brainstorm-*` → `ops/brainstorms/`
   - integration guides, `*-bibtex-additions.bib`, `*-additions.typ`, registry fragments → `ops/integration-guides/`
   - `synthesis-*`, `compat-audit-*`, `coherence-audit-*`, `synonym-map-*`, `adversarial-*`, `falsifiability-*`, `quality-*`, `retro-*`, continuation prompts → `tmp/`

2. **Never resurrect `content-staging/`.** That folder was retired (2026-07-12). Do
   not create it or reference it.

3. **`tmp/` is disposable and gitignored.** Audit scratch written there must NOT be
   committed. Do not `git add` anything under `tmp/`. It is safe to delete at any time.

4. **The document must be self-contained.** Never write an `ops/…` or `tmp/…` path
   into `src/main/typst/mecfs/**` (chapters, appendices, changelog, registry). The
   published document may not point readers at pipeline working files.

5. **Certainty annotations live in `src/`, not here.** Agents auditing `certainty:`
   values (model-auditor, uncertainty-analyst) grep `src/main/typst/mecfs/`, not `ops/`.

6. **Commit scope.** When committing a `/integrate-topic` cycle, stage the tracked
   `ops/` artifacts for that topic by explicit path. Never `git add -A`. Never stage
   `tmp/`.

## Un-merged fragments — open audit

`ops/integration-guides/` currently holds bib/registry fragment files from past
cycles that may or may not have been merged into the real bib
(`src/main/typst/mecfs/bib/*.bib`) / registry
(`src/main/typst/mecfs/part4-research/hypothesis-registry.typ`). See `ops/README.md`
for the list and known-missing keys. These need a per-key merge-or-delete audit.
