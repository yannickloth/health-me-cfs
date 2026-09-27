# Literature Summary: Exertional Muscle Soreness / Myalgia in ME/CFS — Mechanism vs DOMS + Management

**Topic slug:** exertional-muscle-soreness
**Date:** 2026-09-27
**Phase:** Phase 1 — Literature Search
**Papers included (new to bib):** 14
**Bib files:** `src/main/typst/mecfs/bib/exercise-pem.bib` (8 mechanism/DOMS), `src/main/typst/mecfs/bib/treatments.bib` (6 management)
**Driving source:** User phenotype — muscle-pain-dominant ME/CFS with no cognitive PEM; practical focus on muscle-soreness management.

---

## Scope

Two halves:

1. **(A) Mechanism** — what distinguishes ME/CFS post-exertional muscle pain from healthy DOMS: intramuscular acidosis (H+, not lactate), nociceptor ion channels (TRPV1, ASIC3, P2X), muscle microvascular ischemia/hypoperfusion, small-fiber neuropathy, central sensitization, muscle membrane/ion-channel dysfunction, oxidative stress, and the myth-correction that lactic acid does NOT cause DOMS. Includes healthy DOMS physiology (the false comparator).
2. **(B) Management** — what actually helps muscle soreness: DOMS-relevant levers (gentle/active recovery, heat, massage, NSAIDs, magnesium, antioxidant/tart-cherry, compression) plus ME/CFS-specific caution (pacing; why NSAIDs/overexertion may harm).

**Exclusions:** papers already in the corpus (reused by PMID, not duplicated); `Schmitt2024` (myotonic dystrophy, off-target); `Sarvaiya2016` Brain Res Bull (near-duplicate of `Sarvaiya2016TRPV1CFS`).

---

## Per-Paper Evidence Table

| # | Bib key (verified) | Raw cert | Population weight | Discounted | Design / n | Journal | Population |
|---|--------------------|----------|-------------------|------------|------------|---------|------------|
| 1 | `Armstrong1984DOMS` | 0.55 | 0.75 general | 0.41 | Narrative review | Med Sci Sports Exerc 1984 | Healthy (DOMS) |
| 2 | `Cheung2003DOMStreatment` | 0.60 | 0.75 general | 0.45 | Seminal review | Sports Med 2003 | Healthy/athletic |
| 3 | `Hotfiel2018DOMSpathogenesis` | 0.60 | 0.75 general | 0.45 | Consensus review | Sportverletz Sportschaden 2018 | Healthy/athletic |
| 4 | `Miles1994musclePain` | 0.55 | 0.75 general | 0.41 | Taxonomy review | J Sports Med Phys Fitness 1994 | General |
| 5 | `Ugawa2002ASICnociceptor` | 0.60 | 0.40 in vitro | 0.24 | Human DRG electrophysiology | J Clin Invest 2002 | In vitro human |
| 6 | `Chen2014ASIC3musclePain` | 0.55 | 0.50 animal | 0.28 | Mouse acid-hyperalgesia model | Mol Pain 2014 | Animal |
| 7 | `Lee2023MyalgiaOrigin` | 0.45 | 0.75 general | 0.34 | Review | Acta Neurol Taiwan 2023 | General/FM |
| 8 | `Goldenberg2025centralSensitization` | 0.50 | 0.80 FM/LC/ME | 0.40 | Narrative review | Expert Rev Neurother 2025 | FM + LC + ME/CFS |
| 9 | `Wiecha2025DOMSumbrella` | 0.65 | 0.75 general | 0.49 | Umbrella + map SR | Sports Med 2025 | Healthy (DOMS) |
| 10 | `Davis2020massageMeta` | 0.65 | 0.75 general | 0.49 | SR + meta-analysis | BMJ Open Sport Exerc Med 2020 | Healthy/athletic |
| 11 | `Wang2021heatColdDOMS` | 0.60 | 0.75 general | 0.45 | SR + meta-analysis (RCTs) | Phys Ther Sport 2021 | Healthy (DOMS) |
| 12 | `Tanabe2021supplementsDOMS` | 0.55 | 0.75 general | 0.41 | Review (supplements) | Nutrients 2022 | Healthy/athletic |
| 13 | `Reno2022magnesiumDOMS` | 0.55 | 0.75 general | 0.41 | RCT (n=22) | J Strength Cond Res 2022 | Healthy athletes |
| 14 | `Hill2017compression` | 0.55 | 0.75 general | 0.41 | RCT (n=45) | Int J Sports Physiol Perform 2017 | Healthy active |

**Certainty scale note:** raw certainty is an ordinal quality heuristic (±0.10), not clinical confidence. Discounted = raw × population weight, and drives the Phase-2 integration decision and environment-type selection. Population weights: ME/CFS 1.00, LC/post-viral 0.85, FM/POTS 0.80, general 0.75, animal 0.50, in vitro 0.40, in silico 0.30 (min 0.05).

---

## Synthesis by Claim

### Claim (a) — DOMS is peripheral microtrauma + inflammation, NOT lactate (the false comparator)
- `Armstrong1984DOMS`, `Cheung2003DOMStreatment`, `Hotfiel2018DOMSpathogenesis` converge: DOMS = eccentric/unfamiliar-load ultrastructural damage + local inflammatory response, peaking 24–72 h; lactic acid is cleared in ~1 h and is decoupled from soreness.
- `Miles1994musclePain` supplies the taxonomy: acute exercise pain (metabolite/acid-related) vs DOMS (structural/inflammatory) vs cramp.
- **Myth-correction anchor:** the lactate-does-not-cause-DOMS claim is well-established (Armstrong/Cheung/Hotfiel), and the corpus already holds the ME/CFS-side lactate/acidosis entries (`Lien2019lactate`, `Jones2012lactate`, `Brooks2018lactate`) plus the GPR81 signaling stream — so the "lactate is not the pain signal" correction can be stated while the H+ signal is carried separately.

### Claim (b) — H+ (acidosis), not lactate, drives the nociceptor signal
- `Ugawa2002ASICnociceptor`: ASICs are the dominant proton (H+) sensors on human nociceptors — the molecular basis for acidosis-induced muscle pain.
- `Chen2014ASIC3musclePain`: repeated muscle acidosis transitions acute → chronic hyperalgesia via ASIC3/TRPV1/NaV1.8 — the candidate mechanism for ME/CFS exertional myalgia becoming chronic.
- `Lee2023MyalgiaOrigin`: myalgia framed through muscle-nociceptor sensitization + acid-sensing signaling (the Chen-lab scaffold).
- **Indirect-link logic:** corpus `Wirth2021muscle` / `Wirth2024MicrovascularPostCOVIDMECFS` (muscle microvascular ischemia/hypoperfusion) predicts tissue acidosis; that H+ then gates ASIC3/TRPV1 (`Ugawa`/`Chen`/`Lee`); corpus `Light2009` (ASIC3/P2X4/P2X5 gene-expression rises post-exercise in CFS, not controls) is the ME/CFS-side empirical anchor. The chain: ischemia → H+ → ASIC3/TRPV1 nociceptor → chronic myalgia.

### Claim (c) — Central sensitization distinguishes ME/CFS myalgia from DOMS
- `Goldenberg2025centralSensitization`: central sensitization (nociplastic pain) is the unifying frame for long COVID + FM + ME/CFS. Combined with corpus `Nijs2021sensitization` and `Oosterwijck2017autonomicPEM` (exercise-induced analgesia failure), this is the central contribution that makes ME/CFS myalgia a distinct, centrally-amplified entity rather than self-limited peripheral DOMS.

### Claim (d) — Management: DOMS levers are modest; nothing is ME/CFS-validated
- `Wiecha2025DOMSumbrella` is the umbrella anchor; `Davis2020massageMeta` (massage small benefit), `Wang2021heatColdDOMS` (heat/cold reduce pain), `Tanabe2021supplementsDOMS` (tart cherry/antioxidant small-moderate), `Reno2022magnesiumDOMS` (magnesium attenuates soreness, equivocal performance), `Hill2017compression` (compression reduces soreness/CK).
- **All six are healthy/athletic populations.** No ME/CFS-cohort soreness-management trial exists. The transfer to ME/CFS is therefore hypothesis-level (discounted ≤0.49), and must be conditioned on pacing/PEM sensitivity (massage intensity, heat exposure, antioxidant timing).

---

## Contradictions Found

| Paper A claims | Paper B claims | Nature of tension |
|----------------|----------------|-------------------|
| Cheung2003 / Hotfiel2018: DOMS is a *peripheral*, self-limited microtrauma+inflammation phenomenon | Goldenberg2025 / corpus Nijs2021sensitization: ME/CFS myalgia is *central*/nociplastic and persistent | Peripheral vs central locus of muscle pain — the core reason ME/CFS myalgia must not be managed as if it were DOMS |
| Miles1994 / Armstrong1984: acute exercise pain is metabolite/acid-driven, resolving quickly | Chen2014: repeated acid exposure *primes* nociceptors toward chronic hyperalgesia | A transient acid signal vs an acid signal that, when repeated, becomes a chronic-pain driver — the mechanism by which ME/CFS exertional acidosis differs from healthy transient acidosis |
| Tanabe2021 / Reno2022: antioxidant/magnesium modestly reduce healthy DOMS | (corpus) Gerwyn2017muscleFatigue: ME/CFS muscle has a *distinct* oxidative/nitrosative + mitochondrial substrate | DOMS antioxidant benefit may not transfer because the ME/CFS redox substrate is different and maladaptive |

---

## Null / Negative Findings

- **No ME/CFS-cohort mechanism study directly comparing ME/CFS post-exertional muscle pain vs healthy DOMS** was found (queries 1–4 all resolve to corpus reuse or non-ME/CFS exercise studies). This is the **key gap**.
- **No NSAID-ME/CFS safety/adverse-effect study** (Q17, 64 hits, all FM/irrelevant). NSAID caution must be inferred: NSAIDs blunt the inflammatory repair signal and carry renal/GI risk with no demonstrated soreness benefit, and ME/CFS management already emphasizes pacing over pharmacologic suppression.
- **No overexertion-muscle-damage-ME/CFS study** (Q18 = 0 hits). Harm inferred from two-day CPET, `Appelman2024MusclePEM`, and corpus PEM literature.
- `exercise-induced muscle damage markers ME/CFS` = 0 hits; `myalgia central versus peripheral sensitization` = 0 hits; the two `lactic acid DOMS myth` phrase queries = 0 hits (the myth-correction lives in the DOMS reviews, not in dedicated phrase-indexed papers).

---

## Cohort-Overlap / Redundancy Findings

| Item | Notes | Verdict |
|------|-------|---------|
| Chen CC lab (Taiwan) — ASIC/acid-sensing | `Ugawa2002`, `Chen2014`, `Lee2023` (plus dropped `Sun2016`) all descend from the same acid-sensing research programme | **Methodological dependency** — weight as one laboratory's acid-sensing programme; the foundational ASIC human finding (Ugawa) and the muscle-pain translation (Chen) are complementary but not independent. Flag for independent replication. |
| DOMS reviews | `Armstrong1984`, `Cheung2003`, `Hotfiel2018` converge on the same mechanism across 3 decades | Not cohort overlap; a *consensus* across eras — strengthens, not weakens, the DOMS baseline. |
| Sarvaiya2016 (Brain Res Bull) vs `Sarvaiya2016TRPV1CFS` | Same author/lab/year, overlapping rat-CFS TRPV1/vanilloid model | Rejected as near-duplicate; only `Sarvaiya2016TRPV1CFS` (corpus) is cited. |

---

## Bib Keys Produced (verified against `bib/*.bib` — ground truth)

```
Armstrong1984DOMS
Cheung2003DOMStreatment
Hotfiel2018DOMSpathogenesis
Miles1994musclePain
Ugawa2002ASICnociceptor
Chen2014ASIC3musclePain
Lee2023MyalgiaOrigin
Goldenberg2025centralSensitization
Wiecha2025DOMSumbrella
Davis2020massageMeta
Wang2021heatColdDOMS
Tanabe2021supplementsDOMS
Reno2022magnesiumDOMS
Hill2017compression
```

All 14 verified present exactly once in the split bib with `research_stream = {exertional-muscle-soreness}`. No key collisions. No duplicate DOI/PMID against the corpus.

---

## Phase 2 Handoff Notes

- Highest **discounted** certainties: `Wiecha2025DOMSumbrella` 0.49, `Davis2020massageMeta` 0.49, `Wang2021heatColdDOMS` 0.45, `Cheung2003DOMStreatment` 0.45, `Hotfiel2018DOMSpathogenesis` 0.45.
- **No ME/CFS-cohort paper was added** — every new paper is general/animal/in vitro or an overlap-condition review. The ME/CFS-side muscle-pain evidence lives in the existing corpus (`Gerwyn2017muscleFatigue`, `Vecchiet1996muscleCFS`, `Light2009`, `Wirth2021muscle`, `Wirth2024keyRole`, `Nijs2021sensitization`, `Sarvaiya2016TRPV1CFS`) and must be cited from there.
- **Key gap (report to user):** no direct ME/CFS-cohort mechanism study comparing post-exertional myalgia against healthy DOMS. The mechanism is assembled indirectly (ischemia→H+→ASIC3/TRPV1→chronic myalgia + central sensitization), not measured head-to-head.
- **Methodological dependency:** Ugawa2002/Chen2014/Lee2023 share the Chen CC acid-sensing programme.
- **Management caveat:** all soreness-management evidence is healthy-DOMS; transfer to ME/CFS is hypothesis-level and must carry pacing/PEM-sensitivity caveats. Recommend Phase 2 frame management as "DOMS-informed, ME/CFS-conditioned", never as equivalence.
