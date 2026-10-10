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

## RESOLVED 2026-08-29 — un-merged bib/registry fragments

Per-key audit of the six fragments in `ops/integration-guides/` completed.
Every `.bib` key was either already present in `src/main/typst/mecfs/bib/*.bib`
(or present under an alternate key for the same paper) or unused/un-cited, so
**no bib file required merging**. Five fragments were deleted; the hypothesis
registry fragment was kept (see below). Dispositions:

| Fragment | Per-key disposition | Outcome |
|----------|--------------------|---------|
| `bibtex-additions.bib` | all 8 already-present (autoimmunity.bib; `Stein2025immunoadsorption` present as `Stein2025ImmunoadsorptionPostCOVIDMECFS` vascular.bib) | deleted |
| `COQ10_UBIQUINOL_BIBTEX_ADDITIONS.bib` | 7 already-present (energy-metabolism.bib; `Tsai2022CoQ10MetaAnalysis` present as `Tsai2022CoQ10fatigue`); 4 unused-dropped (`Yuan2026CoQ10CFSMitochondria`, `Meckes2026PostViralInsomnia`, `Cai2025MitoQGWIMitochondria`, `Chen2025PostCOVIDMRSMitochondria`) | deleted |
| `kynurenine-excitotoxicity-bibtex-additions.bib` | all 9 already-present (neuroinflammation.bib / autoimmunity.bib) | deleted |
| `new-refs-fourel-2026-05-27.bib` | 1 already-present (`Lahaye2025` as `Lahaye2025centromere` general.bib); 8 unused-dropped (`Nogalski2019`, `Nogalski2020`, `Wight2020`, `Liu2019`, `Ding2025`, `Camalxaman2013`, `Hasebe2006`, `Goehring2017`) | deleted |
| `appendix-h-annotated-bibliography-additions.typ` | all 8 already-present in `appendix-h-annotated-bibliography.typ` (7 by key; `Stein2025immunoadsorption` + `Wallukat2021gpcr_mechanisms` by title/alternate key) | deleted |
| `hypothesis-registry-additions-viral-clearance-2026-05-14.md` | 8 MISSING from `hypothesis-registry.typ` (`hyp:critical-clearance-window`, `hyp:lymphocyte-reservoir`, `hyp:viral-immune-metabolic-cascade`, `hyp:long-covid-progression`, `hyp:early-prediction`, `hyp:reservoir-prediction`, `hyp:activation-exhaustion-transition`, `spec:temporal-lock-window`) — not merged (registry format strict); fragment kept with missing-id note prepended | kept |

No bib files were modified (all keys already-present or unused). No duplicate
bib keys introduced. The registry fragment remains for a format-aware merge.

### Follow-up audit (2026-10-10): `mcas-stack-ws1/2/3` fragments

Per-key audit of the 6 `mcas-stack-ws*` fragment files (88 unique bib keys +
88 appendix-h entries across 3 workstreams). Result: **fully merged**.

- 86/88 bib keys present in `bib/mast-cell.bib` (1 in `treatments.bib`).
  The 2 apparent misses resolve: `Schiweck2026POTSSystematic` = same paper
  already present as `Schiweck2026POTSTreatment` (identical title);
  `Zaitsu2007EstradiolMastCell` = case-variant of tracked
  `Zaitsu2007estradiolMastCell`. **No new keys needed merging.**
- 86/88 appendix-h entries verified by normalized title; the same 2 papers
  confirmed present (Schiwack POTS review: 2 title hits in the real appendix).
- **Disposition: all 6 files deleted** (git history preserves them).
- Still open → CLOSED 2026-10-10: the viral-clearance registry fragment was
  format-aware merged as `= Entries added 2026-10-10: Viral Clearance Dynamics
  (viral-clearance-dynamics -- retroactive registry completion)` in
  `hypothesis-registry.typ` (8 `#registry-entry` blocks, strict format, real bib
  keys, chapter-refs pointing at built labels; 4 ch47 labels referenced as prose
  because those files are not in the build). Fragment deleted. Build green.
