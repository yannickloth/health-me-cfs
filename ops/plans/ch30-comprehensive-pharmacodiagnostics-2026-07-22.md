# ch30 Comprehensive Pharmacodiagnostics Expansion Plan

**Status:** complete (all 4 phases)
**Date:** 2026-07-22
**Goal:** Every drug discussed as treatment in the paper gets a pharmacodiagnostic entry in ch30 covering: therapeutic response interpretation, side-effect interpretation, dose ceiling interpretation, and absence patterns.

## Done (commits: d991d621, e47d8a8e, a1c334d5, 54be300e, f59ab166, bb3fd0f7)

### Phase 1 — Side-effect patterns + synthesis table expanded (Priority 1 drugs)

All 20 Priority 1 drugs added to patterns (1–5) and synthesis table. Additional drugs added beyond plan scope.

**Side-effect diagnostic patterns (Patterns 1–5):**
- Pattern 1 (exaggerated): ketotifen
- Pattern 2 (paradoxical): IVIG, famotidine/cimetidine, IVIG-rituximab non-response
- Pattern 3 (off-target): duloxetine/amitriptyline, gabapentin/pregabalin
- Pattern 4 (tolerability ceiling): methylphenidate, amphetamines, modafinil, solriamfetol, pitolisant, valganciclovir, valacyclovir, DORA, trazodone, doxepin, melatonin
- Pattern 5 (absence): droxidopa, corticosteroids, CoQ10/carnitine/ribose, L-DOPA, selegiline, BC007/IA, DMF, aspirin/NSAIDs, minocycline/doxycycline

**Synthesis table:** Expanded from 11 to 39 rows. Now includes: methylphenidate, amphetamines, modafinil/armodafinil, solriamfetol, pitolisant, IVIG, rituximab, valacyclovir, valganciclovir, gabapentin/pregabalin, duloxetine, amitriptyline, ketotifen, famotidine/cimetidine, cromolyn, antihistamines (H1: expanded to cetirizine/fexofenadine/rupatadine), DORAs, trazodone, doxepin, melatonin, atomoxetine, droxidopa, L-DOPA/carbidopa, corticosteroids, CoQ10/carnitine/D-ribose, BC007/IA, DMF, aspirin/NSAIDs, minocycline/doxycycline.

### Phase 2 — Cross-section coverage (Pattern 6, Beyond Binary, Inverted U, DDI, Tracers)

- **Cross-Reference Matrix:** Expanded from 35 to 52 rows (+14 drugs: L-DOPA, modafinil, solriamfetol, amphetamines, gabapentinoids, duloxetine, amitriptyline, DORAs, trazodone, doxepin, melatonin, H2 blockers, cromolyn, NSAIDs/D-ribose/NAC)
- **Pattern 6 (Dissociation):** +7 entries (antihistamines, gabapentinoids, duloxetine, modafinil, DORAs, L-DOPA)
- **Beyond Binary (Magnitude):** +3 (doxepin, DORA, gabapentin)
- **Beyond Binary (Latency):** +4 (duloxetine, gabapentin, DORA)
- **Inverted U-Curve:** +4 (gabapentinoids, duloxetine, antihistamines, modafinil)
- **DDI (Ordering):** +2 (famotidine→ketotifen, pyridostigmine→midodrine)
- **DDI (Contraindicated):** +3 (gabapentinoid+DORA, H1+H1 stacking, H1+H2 sequential)

### Phase 3 — Acronyms + domain terms audit

- Abbreviations block: 52→97 entries
- Inline definitions: striatum, anhedonia, DAMP, P-gp, D2/D3, β2-AR/M2/M4/α1, NRF2, M1/M2/PPAR-α
- HCN channel: "cAMP-activated K+ channels"→"HCN cation channels" (factual correction)
- Syntax: `$50`→`\$50`, `<`→prose alternatives in content

## Phase 4 — Priority 2 drugs (commits f59ab166, bb3fd0f7)

These are drugs with narrower pharmacodynamic scope or supplements with minimal side effects, but still need entries in:
1. **Cross-Reference Matrix** (primary deliverable — most already in cascade sections as intercepts)
2. **Synthesis table** (if pharmacodynamically distinct)
3. **Pattern sections** (only if side effects are diagnostic)

### Drugs completed in Phase 4

Group A — High pharmacodiagnostic value (added to all sections):

| # | Drug | Already in cascade sections? | Pharmacodiagnostic value |
|---|---|---|---|
| 21 | Ivabradine | Yes (SA node, POTS) | Yes — bradycardia ceiling (Pattern 4, already in cross-ref matrix) |
| 22 | Droxidopa | Yes (NE synthesis) | Yes — presynaptic vs postsynaptic NE probe (Pattern 5, already done) |
| 25 | PEA | Yes (PPAR-α, microglial) | Low — mild GI, no distinctive SE pattern |
| 26 | Devil's claw | No | Low — herbal COX inhibitor, minimal diagnostic |
| 27 | Ginkgo biloba | No | Medium — bleeding risk = platelet function probe |
| 35 | Montelukast | Marginal | Medium — psychiatric effects = paradoxical reactor |
| 36 | Quercetin | Partial | Low |
| 37 | NAC | Yes (glutathione) | Low (but one of the most important supplements — need entry) |
| 38 | Creatine | Yes (ATP buffer) | Low |
| 39 | L-carnitine/ALCAR | Yes (FAO shuttle) | Yes — already done (grouped with CoQ10) |
| 40 | D-ribose | Marginal | Low — already done (grouped) |
| 41 | ALA | No | Low |
| 43 | NADH | Yes (ETC donor) | Low |
| 44 | NR/NMN | Yes (NAD+ precursors) | Low — already in cross-ref matrix |
| 45 | Amantadine | Yes (DA release) | Yes — already in cross-ref matrix |
| 47 | Fluvoxamine (low-dose σ1R) | No | Medium — σ1 agonism probe, distinct from SSRI |
| 48 | Metformin | Marginal | Medium — AMPK probe |
| 49 | Berberine | Marginal | Low — natural metformin analog, GI probe |
| 50 | Rapamycin | Yes (mTOR) | Yes — mTORC1 suppression, autophagy |
| 51 | BC007 | Yes (GPCR AAb) | Yes — already done |
| 52 | Daratumumab | Yes (plasma cell) | Yes — plasma cell depletion probe |
| 53 | IA (immunoadsorption) | Yes (AAb removal) | Yes — already done |
| 54 | L-DOPA/carbidopa | Yes (DA synthesis) | Yes — already done |
| 55 | Selegiline/Rasagiline | Yes (MAO-B) | Yes — already partially done |
| 56 | Doxycycline (subantimicrobial) | Yes (MMP-9) | Yes — already in cross-ref matrix |
| 57 | Minocycline | Yes (microglial) | Yes — already in cross-ref matrix |
| 58 | DMF | Yes (Nrf2) | Yes — already done |
| 59 | Low-dose IL-2 | No | Yes — Treg expansion probe |
| 60 | Z-drugs (zolpidem/eszopiclone) | No | Medium — GABA-A probe, complex sleep behaviours |
| 61 | Doxepin (low-dose) | No | Yes — already done |
| 62 | Levetiracetam | No | Medium — anti-kindling, SV2A probe |
| 63 | DHEA | No | Low — neurosteroid |
| 64 | Pregnenolone sulfate | Yes (TRPM3 gating) | Yes — already in cross-ref matrix (TRPM3 probe), side effects diagnostic |
| 65 | GLP-1 agonists | No | Medium — GI, lean mass loss as metabolic probe |
| 66 | DPP-4 inhibitors | No | Low |
| 67 | Oxaloacetate | No | Low |
| 68 | Nattokinase/lumbrokinase | Marginal | Medium — fibrinolytic, bleeding risk probe |
| 69 | Ambrisentan | No | Low |
| 70 | Epoprostenol | No | Low |
| 71 | DCA | Yes (PDK inhibitor) | Yes — peripheral neuropathy ceiling |
| 72 | Bromocriptine | No | Medium — D2 agonist, same pattern as pramipexole |
| 73 | Rotigotine | No | Medium — DA agonist patch, same pattern as pramipexole |
| 74 | Rasagiline | Yes (MAO-B) | Medium — same pattern as selegiline |
| 75 | Ambroxol | No | Medium — TRPV1 antagonist + mucolytic |

## Open — Future work

- Per-section acronym injection with cross-refs to relevant cascade sections
- Medication class annotations in `Intercept:` lines
