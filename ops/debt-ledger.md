# Debt Ledger — known-open findings

> Norm 4 (`.agents/context/healing-norms.md`): detect ≠ fixed. A known-open item
> cannot hide behind a green report. Any phase or session that says "all green"
> while rows are open here is making a false claim.
>
> Close condition must name the artifact that proves closure (test, script output,
> committed file). Retire rows with `retired: <date> <proof>`; never delete them.

| Opened | Item | Type | Blocking? | Close condition |
|--------|------|------|-----------|-----------------|
| 2026-10-10 | `honesty_lint.py` runs in warn mode; `--strict` promotion requires 2 cycles of measured false-positive rate. Full-corpus baseline recorded 2026-10-11 (`ops/research/honesty-lint-baseline-20261011.md`): 318 findings / 3805 files; hot spots appendix-h (49), registry (21), ch24-hormetic (18) — many inside quoted limitation text (FP-prone class) | tool-maturity | no | 2 `/integrate-topic` cycles with adjudicated FP counts recorded in Phase 9 reports |
| 2026-10-11 | Fragment-ledger bootstrap: first live Stage-2 run on the 2026-10-08 adhd-dementia claims (`ops/research/fragments-adhd-dementia-energy-deficit-20261011.md`). Verified: BauerNegrini 4.60 + PRS 1.35 fragments clean; Tzeng/Dobrosavljevic/Levine SOURCE_MISSING (PDFs not held) — the registry claim's 2.8 range-end was flagged; RESOLVED same day — fetched Dobrosavljevic + Levine full-text XML (OA) + Tzeng abstract copy; verified headline HRs 2.77 (Israel, adj) / 2.92 (Sweden) / 4.01 (Taiwan, adj) / 4.60 (AoU) → claim "2.8–4.6" is a fair rounding, SUPPORTED; all 5 ledger rows verify clean. drift script now accepts PDF/XML/TXT source copies (html-entity-aware) | pipeline-untested | no | Row closes when a real `/integrate-topic` cycle produces its own fragment ledger in Phase 3 + Phase 5a run |
| 2026-10-10 | Fragment ledgers (`ops/research/fragments-*.md`) never exercised by a real integration cycle | pipeline-untested | no | First cycle with `fragments-*.md` + `fragment_drift.py` run in Phase 5a |
| 2026-10-10 | Access watchlist: Decode ME unverified (site unreachable from harness; user will use an AI-browser) | verification-gap | no | Watchlist row `verified:` date filled |
| (closed 2026-10-11) | aBTKi + INVEST watchlist rows: resolved by owner decision — KEPT with honest `NO EVIDENCE FOUND` status (not retired; existence was never established, only absence-by-search). Search provenance recorded in the rows (CT.gov + Europe PMC, 2026-10-10); rows stay as re-check hooks | data-decision | — | DONE unless a real source for either name surfaces → then verify live and promote |
| 2026-10-10 | W6 remainder: egress gate machinery (single outward door), canary proving hooks loaded, precompact handoff comparison; permissions.deny backstop done at config level but `permission-modes` plugin may bypass it in bypass modes — verify interaction | harness | no | Each implemented as plugin/config work; tracked in `ops/plans/polaris-adoption-plan.md` Catalog C |
| 2026-10-15 | `appendix-i-research-registry.typ` uses a **stale chapter-numbering scheme** throughout (systematic offset vs the current structure): e.g. `Ch. 12 (genetic and epigenetic factors)` → actual ch14; `Ch. 20 (biomarker research)` → actual ch36; `Ch. 25 (translational findings)` → actual ch43; `Ch. 7 (immune dysfunction)` → actual ch08; `Ch. 8 (neurological dysfunction)` → actual ch09; `Ch. 10 (cardiovascular)` → actual ch11; `Ch. 11 (gut microbiome)` → actual ch12; `Ch. 19 (integrative approaches)` → actual ch34; `Ch. 22 (mechanistic studies)` → actual ch38. Pre-existing (present on HEAD `c7831bd4`); surfaced during the episwitch update cycle's Phase 10 coherence audit. Not corrected there (system-wide, out of cycle scope) | stale-reference | no | A dedicated appendix-i chapter-number sweep maps every `Ch. N (<topic>)` to the live chapter number and `nix build` passes |
| 2026-10-15 | Glossary EN→DE/FR parity gap: 8 EN keys absent from `glossary-de.json` and `glossary-fr.json` — `AD(H)D`, `WM`, `working memory`, `actigraphy`, `delay aversion`, `state regulation`, `creatine`, `noradrenaline`. Pre-existing on HEAD `c7831bd4` (introduced by an ADHD-term cycle without mirroring); makes the `glossary-test` flake check fail (`glossary-parity.test.js`) on a clean checkout. NOT introduced by the episwitch update cycle, which mirrored its 3 new keys (JAK-STAT, CD20, EWAS) into all three files | data-hygiene | no | `node --test src/test/js/glossary-parity.test.js` → 0 failures |
| (closed 2026-10-10) | viral-clearance registry fragment: 8 hypotheses merged as retroactive registry section (strict format, real bib keys, chapter-refs to built labels; 4 non-built ch47 labels cited as prose); fragment deleted; nix build green | data-hygiene | — | DONE: registry section `= Entries added 2026-10-10: Viral Clearance Dynamics` |
 | (closed 2026-10-10) | `ops/integration-guides/` fragment audit: six old fragments were closed by a prior audit; 6 `mcas-stack-ws*` files audited 2026-10-10 — all 88 keys + 88 appendix entries merged; files deleted | data-hygiene | — | DONE: see ops/README.md follow-up audit |

## Open findings — cell-tissue-enrichment-li2023-atac (Phase 11 residuals, 2026-10-12)

Pre-existing / out-of-cycle items surfaced during the full Phase 11 adversarial loop (15 rounds × 6 personas) on the cell-tissue-enrichment-li2023-atac cycle. Not part of that cycle's content; recorded for future cycles.

| Item | File | Class |
|------|------|-------|
| Rare-variant→synaptic claim cited to @Birch2025rare (should be @Snyder2025rareBrain) | `ch14/.../subsec-18-.../achievements/ach-maccallini-meta-gwas-brain-first-genetic.typ` | citation-fidelity |
| eMSN "most specific hit" attributed to @Maccallini2026metaGWAS (bib places eMSN in unpublished HBA/Duncan analysis) | ch09 subsec-01 achievement; registry row 81 | citation-fidelity |
| Tryptophan/kynurenine flux figures 95% vs "up to 90%" vs 99% internally inconsistent | ch09 subsec-01 (`obs` tryptophan block) | numeric |
| Duplicate bib entries for Walitt 2024 (`walitt2024deep`, `Walitt2024NIH`) | bib/modeling.bib, bib/neuroinflammation.bib | bibliography |
| Aregawi group sizes n=16/34/40 vs correlation N 63/38 | ch09 subsec-01 | numeric |
| Buspirone characterised as dopamine-D2 blocker (it is a 5-HT1A partial agonist) | ch09 subsec-01 `obs:dopamine` | factual |
| Solriamfetol (dual DA/NE) cited as dopaminergic-specific support | ch09 `syn:vmat2-dopaminergic-convergence` | factual |
