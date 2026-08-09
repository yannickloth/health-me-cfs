# Integration Plan: Oxidative Stress Shared by ME/CFS and Long COVID

## Purpose

Track resolution of the tracked queue item "Shankar V (Stanford/Davis MM) 2025 PNAS — Oxidative stress is a shared characteristic of ME/CFS and Long COVID" (`/integrate-topic this`).

The paper was ALREADY integrated. This cycle reconciled misattributed duplicate bibliography/appendix entries and deepened one genuine gap (in-vitro vs clinical metformin reconciliation).

## Status

✅ done — reconciled duplicate entries; incremental deepening applied. Commit: see Phase 13.

## Findings

### Duplicate / misattributed entries (same DOI 10.1073/pnas.2426564122, PMID 40627396)

| Bib key | Location | Correct? | Action |
|---------|----------|----------|--------|
| `@Shankar2025oxidativestress` | `bib/energy-metabolism.bib` | ✅ correct (Shankar et al., full authorship) | Kept — canonical entry |
| `@oxidativestress2025` | `bib/pathophysiology-general.bib` | ❌ wrong — "Sasso, E.M. / Marshall-Gradisnik" | Removing (duplicate, misattributed) |
| `@PaulBhatt2025oxidative` | `bib/pathophysiology-general.bib` | ❌ wrong — "Paul, Bindu D. and Bhatt, Divya P." | Removing (duplicate, misattributed) |

Appendix-H duplicate entry "Sasso/Marshall-Gradisnik et al. 2025" (was line ~10821) removed; canonical correct entry retained at Shankar2025 heading.

Note: `@Paul2021redox` (Paul/Snyder, PNAS 2021, "Redox imbalance links COVID-19 and ME/CFS", DOI 10.1073/pnas.2024358118) is a LEGITIMATE distinct paper — retained and now cited in ch09.

### In-content citation repoints

- ch20 `subsec-universal-mechanisms`: `@oxidativestress2025` → `@Shankar2025oxidativestress` (×2)
- ch07 `subsec-14-immune-metabolic-crosstalk`: in-text "Paul and Bhatt" → "Shankar et al.", citation → `@Shankar2025oxidativestress`
- ch09 `subsec-04-meningitis-bbb`: `@PaulBhatt2025oxidative` → `@Paul2021redox` (better thematic fit: nitrosative/malondialdehyde markers, redox in ME/CFS+COVID)

### Deepening (Phase 3/5)

- ch33 sec-12 Metformin entry: added *Clinical caveat* reconciling the Shankar 2025 in-vitro T-cell hyperproliferation finding against clinical reality — REVIVE-TOGETHER Long COVID RCT halted metformin arm for futility (`@Reis2026fluvoxamine`), COVID-OUT supports only early-treatment prevention (`@Reis2023COVIDOUT`). Prevents overclaiming the in-vitro signal as clinically actionable in established fatigue.

## Integration decision

PROCEED (already integrated). Incremental: dedup + one clinical-caveat reconciliation. No new hypothesis environments warranted — oxidative-stress mechanism already covered across ch07, ch08, ch20, ch33 and appendix H.

## Build / checks

- `nix build` ✅ (result/loth2026-mecfs.pdf produced)
- `nix flake check` ✅ (section-audit, qmd-label-audit, typst-source-audit, blog-audit, glossary-test all passed)
