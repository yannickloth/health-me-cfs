# Ch06 Exhaustive Literature Harvest — Continuation Prompt

Copy everything below the line and paste into a new session.

---

Continue ch06 exhaustive literature harvest with FULL `/integrate-topic` pipeline (all 8 phases per gap).

## Current State

### Build
- `typst compile` passes with zero errors, zero warnings
- Last verified: 2026-04-12 after commit c167b96

### Commits completed (chronological, all on main)
```
d65ebe1 feat(references): add 12 ANT autoantibody papers for G28
9752789 feat(ch06): integrate G28 ANT autoantibody evidence and correct AMA-M4 error
b5dbf46 feat(ch06): integrate G22 NAD+ metabolism evidence and correct depletion narrative
c838877 feat(ch06): integrate G23 EGRAC riboflavin evidence with converging 3-study synthesis
b789778 feat(ch06): integrate G9 combined cofactor measurement evidence
16b8e3e feat(ch06): integrate G7 PDK muscle-biopsy evidence with tissue-level support
eff3ca7 feat(ch06): integrate G17 KGDHC evidence with convergent metabolomic support
c8ba226 feat(ch06): integrate G16 aconitase evidence with three-way convergence
b939cc9 feat(ch06): integrate G34 NRF2 pathway and G39 PGC-1α biogenesis evidence
cc3d8d0 feat(ch06): integrate G32 creatine RCT evidence with muscle-vs-brain dissociation
60cf7f4 fix(ch06): address adversarial review findings across G34, G39, G32
a5725ae feat(ch06): Phase 3-4 brainstorm integration and Step B critical gap corrections
071be32 feat(ch06): integrate G15/G18 gap refinements and fix broken Naviaux2016 citation
c167b96 fix(ch06): address review-convergence Round 1 findings
```

### Step A — COMPLETED
Phases 3-4 done for all 10 initially-integrated gaps (G28, G22, G23, G9, G7, G17, G16, G34, G39, G32):
- Phase 3 brainstorms saved to `content-staging/brainstorm-G{N}-20260412.md` (10 files)
- Phase 4: 3 top ideas integrated as new environments:
  - `@spec:aconitase-ferroptosis-bridge` (Step 5, certainty 0.30)
  - `@spec:itaconate-nrf2-paradox` (Step 9, certainty 0.30)
  - `@oq:riboflavin-consumption-vs-supply` (Step 6)
- Phase 6 Round 1 done: 3 findings fixed (G27 priority contradiction, Reis2026 trial context, uncited lipid peroxidation stub)
- Phase 6 Round 2+ still needed to confirm convergence

### Step B — COMPLETED for P1 gaps with corrections needed
All critical gap corrections applied:
| Gap | What changed |
|-----|-------------|
| G1 | Gap table cites Brown2018AMPK (glucose uptake impaired, defect proximal to AMPK) |
| G2/G11 | Gap table cites Reuter2011 (acylcarnitine evidence for reduced CPT-I) |
| G3 | Updated from "not trialled" → in vitro positive + Long COVID RCT null + ME/CFS absent; priority downgraded 2→3 |
| G15 | Gap table notes Eckey 2025 PNAS patient survey |
| G18 | Gap table distinguishes ME/CFS (open) from Long COVID (Colosio 2023 data) |
| G24 | Bager 2021 IBD thiamine RCT + Eckey 2025 survey added to text and gap table |
| G27 | 3 negative replications added (Clague 1992, Hinds 1994, Swanink 1995); priority downgraded 1→2 |
| G36 | GPX4 entry updated: Shankar 2025 found it elevated 1.9× (not unmeasured) |
| G37 | Plasma F2-isoprostane data added (Kennedy 2005, Robinson 2010); body text rewritten with citations |
| G41 | Urolithin A corrected to phase 1-2; Hochecker 2025 LC3-II data added |

Gaps confirmed open with no text changes needed: G8, G13, G14

### What was NOT done for the above gaps (MUST be completed)
- **Phase 6 Round 2+**: Need at least one more clean round to confirm convergence. Run `/review-typst` on ch06-energy-metabolism.typ.
- **Remaining Phase 3-4 brainstorm ideas**: Only top 3 ideas were integrated. The 10 brainstorm files contain ~60 additional ideas across all categories. Some tier-2 ideas (G28 complement-on-mitochondria, G16 IRP1 moonlighting, G22 dual-compartment NAD+) merit integration as open-question environments in a future session.

### Search results available in content-staging/ (Phase 1 outputs)
```
content-staging/G22-NAD-tissue-search-results.md           (405 lines)
content-staging/G07-PDK-muscle-search-results.md           (468 lines)
content-staging/G09-combined-cofactor-search-results.md    (356 lines)
content-staging/G16-aconitase-search-results.md            (356 lines)
content-staging/G17-KGDHC-search-results.md                (356 lines)
content-staging/G01-G02-G03-G08-G11-batch-search.md        (batch, integrated)
content-staging/G13-G14-G15-G18-G24-G27-batch-search.md   (batch, integrated)
content-staging/G36-G37-G41-batch-search.md                (batch, integrated)
content-staging/brainstorm-G{28,22,23,9,7,17,16,34,39,32}-20260412.md  (10 Phase 3 outputs)
```

### New bibliography entries added this session (9 total)
- `Clague1992magnesiumCFS`, `Hinds1994magnesiumCFS`, `Swanink1995magnesiumCFS` — negative Mg replications
- `Bager2021thiamineIBD` — IBD thiamine RCT
- `Eckey2025PRO` — PNAS patient survey
- `Reis2023COVIDOUT` — COVID-OUT metformin prevention trial
- `Kennedy2005isoprostanes`, `Robinson2010isoprostanes` — F2-isoprostane studies
- `Hochecker2025mitophagy` — LC3-II in ME/CFS PBMCs

### New hypothesis registry entries added this session (3 total)
- Aconitase–Ferroptosis Iron Bridge (S, 0.30)
- Itaconate–NRF2 Paradox (S, 0.30)
- Riboflavin: Consumption vs Supply Problem (OQ)

### Files modified across all sessions
- `src/main/typst/mecfs/part2-pathophysiology/ch06-energy-metabolism.typ` — main chapter file
- `src/main/typst/mecfs/appendices/appendix-h-annotated-bibliography.typ` — annotated bibliography
- `src/main/typst/mecfs/references.bib` — bibliography database
- `src/main/typst/mecfs/shared/changelog.typ` — changelog
- `src/main/typst/mecfs/part4-research/hypothesis-registry.typ` — hypothesis registry (G28: 2 entries; session 11: 3 entries)

---

## WORK PLAN (in order)

### Step A.remaining — Complete Phase 6 convergence
Run `/review-typst` on ch06-energy-metabolism.typ. Need 2 consecutive clean rounds. Round 1 done (3 findings fixed).

### Step B.remaining — Integrate remaining P2 and P3 gaps (full 8-phase pipeline each)

#### Priority 2 gaps: G4, G10, G12, G19, G20, G21, G25, G26, G29, G31, G33, G35, G38, G40, G42
No batch search results exist for these — Phase 1 search needed for each.

#### Priority 3 gaps: G5, G6, G30, G43
Lowest priority; do after all P1 and P2 gaps.

### Step C — Additional Phase 3-4 brainstorm integrations
Tier-2 ideas from the 10 brainstorm files that merit integration:
- G28: Complement fixation on mitochondrial membranes (Novelty 5, Certainty 0.15)
- G16: IRP1 moonlighting switch — cytosolic aconitase as iron regulator (Novelty 4)
- G22: Dual-compartment NAD+ model (Novelty 5)
- G7: Brain-vs-muscle PDK tissue specificity (Novelty 5)
- G17: KGDHC as primary TCA bottleneck hypothesis (Novelty 5)
- G9: Riboflavin as cofactor hub — shared vulnerability (Novelty 4)
- G32: Astrocyte creatine sink hypothesis (Novelty 5)

### Step D — Post-harvest deliverables
After ALL 43 gaps are covered:
1. **Chemical reactions per step** — write out the success reaction and each failure-mode reaction for all 10 steps
2. **Therapeutic map per step** — table of medications/supplements targeting each failure mode at each step
3. **Yield accounting table** — running ATP tally showing cumulative yield loss under each failure scenario
4. **Cross-step interaction matrix** — which failures at step X exacerbate failures at step Y
5. **Biomarker accessibility column** — add to each gap table entry: how accessible is the measurement (blood draw / muscle biopsy / MRS / research-only)

---

## Key conventions
- Every changelog entry MUST include a "Motivated by:" line with `@CitationKey` references
- Every new hypothesis/speculation/open-question → update `hypothesis-registry.typ`
- Never present a mechanistic hypothesis as a clinical recommendation (Part III rule)
- Build verify with `typst compile src/main/typst/mecfs/loth2026-mecfs.typ tmp/test-build.pdf`
- Commit scope: only files changed in current session (user runs parallel sessions)
- Content-staging at project root (`content-staging/`), NOT `.claude/content-staging/`

## Known issues
- `syed2025nad_therapy` bib entry (cited in 5 .typ files) — DOI 10.1186/s12967-025-04876-5 does not resolve to the claimed paper. Paper not found in PubMed. Needs audit and likely removal with citation replacement.

## Work style
- Work autonomously. Each gap = own commit.
- Don't forget changelog with every integration.
- Run ALL 8 phases of `/integrate-topic` for every gap.
- Batch gaps where efficient (e.g., multiple P2/P3 gaps can share a brainstorm session if they're at the same step).
- Target 2-3 full-pipeline gaps per session before context handoff.
