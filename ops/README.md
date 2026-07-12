# ops/ pipeline artifacts — README

**Conventions:** see [`AGENTS.md`](AGENTS.md) for the authoritative directory map
and write rules. This README covers only history and open audits.

## History (2026-07-12 refactor)

The `/integrate-topic` pipeline's artifacts were split by change-driver and moved
out of the meaningless root-level `content-staging/` folder (retired) into `ops/`
subfolders + `tmp/`. The audit-class artifacts (synthesis/compat/coherence/synonym/
etc.) are one-shot reasoning that is dead once a cycle commits and passes review;
the pipeline now writes them to `tmp/` (disposable, gitignored) rather than
committing them. The prior 104 tracked audit files were removed in the refactor
(recoverable from git history if ever needed).

## OPEN AUDIT — un-merged bib/registry fragments in `ops/integration-guides/`

These fragment files were produced by past cycles and may or may not have been
merged into the real bib (`src/main/typst/mecfs/bib/*.bib`) or hypothesis
registry (`src/main/typst/mecfs/part4-research/hypothesis-registry.typ`).
**Action needed:** verify each entry is present in the real bib/registry; merge
any missing ones or delete the fragment if superseded.

- `appendix-h-annotated-bibliography-additions.typ`
- `bibtex-additions.bib`
- `COQ10_UBIQUINOL_BIBTEX_ADDITIONS.bib`
- `hypothesis-registry-additions-viral-clearance-2026-05-14.md`
- `kynurenine-excitotoxicity-bibtex-additions.bib`
- `new-refs-fourel-2026-05-27.bib`

Known partial status (from earlier spot-check): several keys in
`COQ10_UBIQUINOL_BIBTEX_ADDITIONS.bib` (e.g. `Tsai2022CoQ10MetaAnalysis`,
`Yuan2026CoQ10CFSMitochondria`) and `new-refs-fourel-2026-05-27.bib`
(`Nogalski2020`, `Wight2020`, `Liu2019`, `Camalxaman2013`, `Hasebe2006`,
`Goehring2017`) are NOT in the real bib — either intentionally unused or
un-merged. Needs a human/audit call per key.
