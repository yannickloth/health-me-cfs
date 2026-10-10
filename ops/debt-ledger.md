# Debt Ledger — known-open findings

> Norm 4 (`.agents/context/healing-norms.md`): detect ≠ fixed. A known-open item
> cannot hide behind a green report. Any phase or session that says "all green"
> while rows are open here is making a false claim.
>
> Close condition must name the artifact that proves closure (test, script output,
> committed file). Retire rows with `retired: <date> <proof>`; never delete them.

| Opened | Item | Type | Blocking? | Close condition |
|--------|------|------|-----------|-----------------|
| 2026-10-10 | `honesty_lint.py` runs in warn mode; `--strict` promotion requires 2 cycles of measured false-positive rate | tool-maturity | no | 2 `/integrate-topic` cycles with adjudicated FP counts recorded in Phase 9 reports |
| 2026-10-10 | Fragment ledgers (`ops/research/fragments-*.md`) never exercised by a real integration cycle | pipeline-untested | no | First cycle with `fragments-*.md` + `fragment_drift.py` run in Phase 5a |
| 2026-10-10 | Access watchlist: Decode ME unverified (site unreachable from harness; user will use an AI-browser) | verification-gap | no | Watchlist row `verified:` date filled |
| 2026-10-10 | Access watchlist: aBTKi + INVEST rows probable seed errors — user to confirm source or retire | data-decision | no | User decision; rows confirmed or `retired:` |
| 2026-10-10 | W6 remainder: egress gate machinery (single outward door), canary proving hooks loaded, precompact handoff comparison; permissions.deny backstop done at config level but `permission-modes` plugin may bypass it in bypass modes — verify interaction | harness | no | Each implemented as plugin/config work; tracked in `ops/plans/polaris-adoption-plan.md` Catalog C |
| 2026-10-10 | `hypothesis-registry-additions-viral-clearance-2026-05-14.md`: 8 hypotheses genuinely unmerged from the registry (IDs absent, no topic equivalents) | data-hygiene | no | Format-aware merge into `hypothesis-registry.typ` with owner OK (content work, not mechanical) |
 | (closed 2026-10-10) | `ops/integration-guides/` fragment audit: six old fragments were closed by a prior audit; 6 `mcas-stack-ws*` files audited 2026-10-10 — all 88 keys + 88 appendix entries merged; files deleted | data-hygiene | — | DONE: see ops/README.md follow-up audit |
