# ch30 Comprehensive Pharmacodiagnostics Expansion Plan

**Status:** phase-1-complete
**Date:** 2026-07-22
**Goal:** Every drug discussed as treatment in the paper gets a pharmacodiagnostic entry in ch30 covering: therapeutic response interpretation, side-effect interpretation, dose ceiling interpretation, and absence patterns.

## Done (commits: d991d621, e47d8a8e, a1c334d5, 54be300e)

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

## Remaining — Phase 4 drugs (Priority 2, ~55 drugs)

These are drugs with narrower pharmacodynamic scope or supplements with minimal side effects, but still need entries in:
1. **Cross-Reference Matrix** (primary deliverable — most already in cascade sections as intercepts)
2. **Synthesis table** (if pharmacodynamically distinct)
3. **Pattern sections** (only if side effects are diagnostic)

### Priority 2 drugs NOT yet in ch30

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

## Continuation Prompt

```
INSTRUCTIONS: Continue the ch30 pharmacodiagnostic expansion for the remaining Priority 2 drugs.
The file is /home/nicky/code/health-me-cfs/src/main/typst/mecfs/part3-treatment/ch30-mechanistic-cascade-tracing.typ.

CONTEXT: Phase 1-3 are complete. The following sections exist and need drug entries:
- Patterns 1-6 (side-effect diagnostic patterns)
- Synthesis table (Response + Reaction = Bidirectional Probe)
- Cross-Reference Matrix (Drug × Hypothesis × Diagnostic Inference)
- Beyond Binary / Inverted U / DDI / Drugs as Tracers (additional drug-specific examples)

TASK: For each of the following remaining drugs, add entries to the Cross-Reference Matrix and,
where pharmacodiagnostically meaningful, add entries to the appropriate Pattern section and
Synthesis table. Prioritize drugs with rich pharmacodynamic profiles.

REMAINING DRUGS TO INTEGRATE:

Group A — High pharmacodiagnostic value (add to all sections):
1. Low-dose IL-2 — Treg expansion probe. If IL-2 improves symptoms → Treg deficiency drives autoimmunity
   (autoimmune mechanism confirmed, Treg-targeted). If IL-2 causes flare → autoimmune disease activation
   (contraindicated in active autoimmunity). Pattern 2 (paradoxical flare) + Pattern 5 (null = Tregs not
   rate-limiting).
2. Rapamycin — mTORC1 inhibitor. If rapamycin improves → mTOR-driven metabolic pathology (consistent with
   WASF3/mitochondrial model). Side effects: immunosuppression, hyperlipidaemia, impaired wound healing.
   Pattern 4 (immunosuppression ceiling before metabolic benefit). Inverted U: low-dose mTORC1 partial
   inhibition vs high-dose mTORC2 + mTORC1 block (immunosuppression).
3. Fluvoxamine (low-dose, 25-50 mg) — σ1R agonist at low doses, SSRI at high doses. If low-dose fluvoxamine
   works but SSRIs don't → σ1R mechanism (ER stress, autophagy), not serotonin. Pattern 3 (off-target:
   GI distress from 5-HT3 activation). Distinguishes σ1 from 5-HT mechanism by dose.
4. Z-drugs (zolpidem, eszopiclone) — GABA-A α1 agonist. If zolpidem causes complex sleep behaviours
   (sleep-eating, sleep-driving) → GABA-A system hyper-responsive. Pattern 5 (absence: no amnesia at
   standard dose → GABA-A α1 desensitized). Pattern 2 (paradoxical excitation → GABA-glutamate imbalance).
5. Pregnenolone sulfate — TRPM3 positive allosteric modulator. If pregnenolone causes agitation/insomnia →
   TRPM3 is functional and hypersensitive (NMDA PAM + GABA-A NAM dual activation). Pattern 1 (exaggerated
   CNS excitation) + Pattern 5 (null = TRPM3 absent or already saturated).
6. Low-dose aspirin — COX-1 inhibition, antiplatelet. Pattern 2 (worsens MCAS → prostaglandin-mediated mast
   cell stabilization removed). Pattern 4 (bleeding ceiling). Mechanistic probe for PGD2-mediated MCAS.
7. Nattokinase/lumbrokinase — fibrinolytic, microclot degradation. If nattokinase improves → microclot
   pathology is rate-limiting for PEM/perfusion. Pattern 4 (bleeding ceiling — coagulopathy probe).
8. Levetiracetam — SV2A ligand, anti-kindling. If levetiracetam reduces PEM frequency → kindling/central
   sensitization drives PEM. Side effects: behavioural, sedation. Pattern 4 (psychiatric ceiling).

Group B — Medium value (add to Cross-Reference Matrix only):
9. Daratumumab — anti-CD38, plasma cell depletion. If daratumumab works where rituximab fails → AAb from
   long-lived CD38+ plasma cells. Same patterns as rituximab.
10. Ginkgo biloba — bleeding risk probe (platelet inhibition). Pattern 5 (no bleeding at high dose →
    platelet function intact).
11. Montelukast — leukotriene receptor antagonist. If montelukast improves where antihistamines fail →
    leukotrienes are the dominant MCAS mediator. Pattern 2 (psychiatric adverse effects — paradoxical
    reactor in CNS leukotriene pathways).
12. Metformin — AMPK activator. If metformin improves → AMPK pathway is rate-limiting for metabolic
    dysfunction. GI side effects ceiling. Pattern 4 + Pattern 5.
13. GLP-1 agonists (semaglutide) — if GLP-1 improves inflammation but causes unacceptable lean mass
    loss → anti-inflammatory mechanism confirmed but metabolic cost too high. Pattern 4.
14. DCA (dichloroacetate) — PDK inhibitor. If DCA improves but causes peripheral neuropathy → PDH
    block confirmed as rate-limiting, but chronic PDK inhibition is neurotoxic. Pattern 4.
15. Bromocriptine / Rotigotine — D2 agonists. Same pattern as pramipexole (Pattern 1 nausea/OH,
    Pattern 5 absence). Don't duplicate, cross-reference pramipexole entry.

Group C — Supplements with low diagnostic value (Cross-Reference Matrix only, minimal prose):
16. PEA, devil's claw, quercetin, ALA, NADH, NR/NMN, creatine, oxaloacetate, DHEA, DPP-4 inhibitors,
    ambrisentan, epoprostenol, berberine — one consolidated row each if not already present, noting
    that null response is non-informative (supplement-level interventions).

CONSTRAINTS:
- Maintain existing Typst syntax and style
- Match the existing prose density and mechanistic style
- Do NOT introduce new angle-bracket characters (< or >) in content — use prose alternatives
- Use \$ for literal dollar signs (Typst math mode delimiter)
- Every new drug must appear in: (1) Cross-Reference Matrix, (2) Synthesis table (if diagnostic SE exist),
  (3) Appropriate Pattern section (if diagnostic SE exist)
- Use existing citation patterns (@sec:, @spec:, @ach:)
- Build must pass (nix build)
- Commit when done

OUTPUT FORMAT:
1. Summary of drugs added and which sections each appears in
2. Build verification
3. Commit with message: content(ch30): integrate remaining Priority 2 drugs — IL-2, rapamycin, fluvoxamine,
   Z-drugs, pregnenolone, aspirin, nattokinase, levetiracetam, daratumumab, ginkgo, montelukast, metformin,
   GLP-1s, DCA, bromocriptine, rotigotine, plus supplement-group entries
```
