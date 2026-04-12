# Brainstorm Integration — Continuation Prompt

Copy everything below the line and paste into a new session.

---

Run `/integrate-topic` pipeline (Phases 2-8 only — Phase 1 already done) to integrate the best ideas from ALL brainstorm files in `content-staging/`.

## Task

For each brainstorm file below, read it, select the top 2-3 ideas (Novelty ≥ 4 AND Feasibility ≥ 3, or ideas that connect multiple gaps), and integrate them into ch06 as appropriate environments (hypothesis, speculation, open-question). Skip ideas already integrated (marked below).

## Brainstorm Files and Status

### Ch06 gap brainstorms (from session 11, 2026-04-12)
All 10 files follow the same 6-category structure. Three ideas were already integrated in session 11:

| File | Already integrated | Top remaining Tier-2 ideas |
|------|--------------------|---------------------------|
| `brainstorm-G28-20260412.md` | None from this file | H1: Complement on mitochondrial membranes (N5,F3); H4: Exercise as autoimmune booster (N5,F3); H5: GTP depletion via ANT (N5,F2) |
| `brainstorm-G22-20260412.md` | None from this file | Dual-compartment NAD+ paradox (N5,F3); CD38-Senescence-NAD+ vicious cycle (N4); PARP Bomb model of PEM (N3) |
| `brainstorm-G23-20260412.md` | `@oq:riboflavin-consumption-vs-supply` | Microbiome-riboflavin axis (N3,F3); MTHFR-riboflavin interaction (N4,F4); Triple Activation Coefficient Panel (N4,F3) |
| `brainstorm-G9-20260412.md` | None from this file | Cofactor recycling failure / riboflavin hub (N4,F3); Graph-theoretic min-cut {FAD,CoQ10} (N4,F4); Cofactor fingerprint subtyping (N4,F3) |
| `brainstorm-G7-20260412.md` | None from this file | Brain-vs-muscle PDK tissue divergence (N5,F3); JNK chronification gut→muscle axis (N3,F4); PDC inhibition threshold ~40-50% (N4,F3) |
| `brainstorm-G17-20260412.md` | None from this file | Glutathionylation depletion spiral (N5,F3); KGDHC as primary TCA bottleneck (N4,F4); Cofactor multiplicative fragility 0.8^5=0.33 (N3,F5) |
| `brainstorm-G16-20260412.md` | `@spec:aconitase-ferroptosis-bridge` (includes IRP1) | Itaconate-aconitase double block (N4,F3); CNS transaconitate feedback (N4,F3) |
| `brainstorm-G34-20260412.md` | `@spec:itaconate-nrf2-paradox` (includes hormetic loop) | Viral NRF2 suppression as molecular "pin" (N4,F3); NRF2 metabolic roles beyond antioxidant (N3,F4) |
| `brainstorm-G39-20260412.md` | None from this file | Biogenesis trap / metabolic Sisyphus (N5,F3); G39=G22 (SIRT1 needs NAD+) (N4,F4); HFpEF/SGLT2 bridge (N4,F3) |
| `brainstorm-G32-20260412.md` | None from this file | Astrocyte creatine sink (N5,F3); Creatine-lactate seesaw (N4,F4); Cognitive PEM via PCr depletion (N4,F4) |

### Other brainstorm files (from prior sessions)
| File | Context |
|------|---------|
| `brainstorm-causal-hierarchy-extensions.md` | Cross-chapter causal model ideas |
| `brainstorm-neuroplasticity-integration-2026-03-27.md` | Neuroplasticity for ch08/ch09 |
| `brainstorm-ant-autoantibodies-2026-04-12.md` | Earlier G28 brainstorm (overlaps with brainstorm-G28-20260412.md) |
| `brainstorm-energy-cartography-2026-04-11.md` | Energy cartography for ch06 |
| `brainstorm-vns-fibre-selectivity-20260410.md` | VNS for ch14c/ch15 |

## Current State

### Build
- `typst compile` passes with zero errors, zero warnings
- Last verified: 2026-04-12 after commit c167b96

### Recent commits
```
0dc7ed1 docs(content-staging): add Phase 3 brainstorm outputs and update continuation prompt
c167b96 fix(ch06): address review-convergence Round 1 findings
071be32 feat(ch06): integrate G15/G18 gap refinements and fix broken Naviaux2016 citation
a5725ae feat(ch06): Phase 3-4 brainstorm integration and Step B critical gap corrections
```

### Files to modify
- `src/main/typst/mecfs/part2-pathophysiology/ch06-energy-metabolism.typ` — main chapter (2200+ lines)
- `src/main/typst/mecfs/references.bib` — bibliography
- `src/main/typst/mecfs/part4-research/hypothesis-registry.typ` — hypothesis registry
- `src/main/typst/mecfs/shared/changelog.typ` — changelog
- Other chapter files as needed for non-ch06 brainstorms

## Approach

### Batch by chapter target
1. **Ch06 batch** (10 gap brainstorms + energy-cartography): ~25-30 Tier-2 ideas to evaluate, expect ~10-15 to integrate
2. **Ch08/Ch09 batch** (neuroplasticity brainstorm): separate chapter targets
3. **Ch14c/Ch15 batch** (VNS brainstorm): separate chapter targets
4. **Cross-chapter** (causal hierarchy): touches multiple chapters

### Per idea
- Read the idea from the brainstorm file
- If it needs a literature anchor: quick web search or grep of existing references.bib
- If anchor exists: write the environment (hypothesis/speculation/open-question) into the target chapter
- Update hypothesis-registry.typ
- If no anchor: skip and note why

### After all ideas integrated
- Build verify
- Phase 6: `/review-convergence` then `/review-typst` on all modified files
- Phase 7: changelog
- Phase 8: commit

## Key conventions
- Every changelog entry MUST include a "Motivated by:" line with `@CitationKey` references
- Every new hypothesis/speculation/open-question → update `hypothesis-registry.typ`
- Never present a mechanistic hypothesis as a clinical recommendation (Part III rule)
- Build verify with `typst compile src/main/typst/mecfs/loth2026-mecfs.typ tmp/test-build.pdf`
- Commit scope: only files changed in current session
- Target 8-10 integrations per session before context handoff

## Known issues
- `syed2025nad_therapy` bib entry — DOI doesn't resolve. Needs audit.
- Parallel session has uncommitted changes to `ch06-energy-metabolism.tex` (LaTeX), `hypothesis-registry.typ`, `changelog.typ` — do NOT commit those.
